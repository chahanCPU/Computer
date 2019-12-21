`timescale 1ns / 1ps

`default_nettype none

// HALF_TMCLK corresponds to 100 MHz system clock
// TMBIT and CLK_PER_HALF_BIT corresponds to 9600 bps

module test_cpu
  #( parameter CLK_PER_HALF_BIT = 30,
	  parameter TMBIT = CLK_PER_HALF_BIT * 20,
     parameter TMINTVL = TMBIT*5,
     parameter HALF_TMCLK = 5)
   ();

   logic pin_send; // data to uart rx port

   // pin_recv and pin_delay should have a similar waveform.
   //
   logic pin_recv; // data from uart tx port
   logic pin_delay; // delayed waveform of pin_send

   logic clk;
   logic rstn;

   logic [7:0] txchar;
   logic       start_bit;
   logic       stop_bit;

   logic [7:0] rxchar;
   logic [7:0] filechar;
   logic [7:0] nexchar;
   logic ferr;
   logic rx_ready;


   int 	       i;
   int 	       j;
   int        fd;
   int        sld;
   int        gd;
   int        ok;
   int       outcount;
   int       is_eof;

   string      send_data = "The";

   parameter TMDELAY = TMBIT*(1+8+1);
   
   task genclk();
      begin
	 forever begin
	    #HALF_TMCLK;
	    clk = 1;
	    #HALF_TMCLK;
	    clk = 0;
	 end
      end
   endtask

   top #(CLK_PER_HALF_BIT) u1(pin_send,pin_recv,clk,rstn);
   uart_rx #(CLK_PER_HALF_BIT) rxut(rxchar, rx_ready, ferr, pin_recv, clk, rstn);

   initial begin
	   // fd=$fopen("/home/omochan/3A/cpujikken/core/code/sandbox/sandbox.s.bintext","r");
	   sld=$fopen("/home/omochan/3A/cpujikken/core/code/minrt/ball.sld.in","r");
	   gd=$fopen("/home/omochan/3A/cpujikken/core/code/minrt/minrt.s.ppm","r");
      $dumpfile("test_cpu.vcd");
      $dumpvars(0);

      #1;

      rstn <= 0;
      clk <= 0;
      pin_send <= 1;
      start_bit <= 0;
      stop_bit <= 0;
	  outcount <= 1;
	  is_eof <= 0;
      
      fork
	 genclk();
      join_none

      #HALF_TMCLK;
      #HALF_TMCLK;
      #HALF_TMCLK;

      rstn <= 1;

      #TMINTVL;
	  
	//   begin:FILE_LOOP
	// 	forever begin
	// 		if($feof(fd) != 0) begin
	// 		  $display("FILE End !!");
	// 		  disable FILE_LOOP;
	// 		end
	// 		else begin
	// 			ok = $fscanf(fd, "%b", txchar);
	// 			if(ok != 1) begin
	// 				$display("CODE FILE END !!");
	// 				disable FILE_LOOP;
	// 			end
	// 			pin_send = 0; // start bit
	// 			 start_bit = 1;
	//			
	// 			 #TMBIT;
	// 			 start_bit = 0;
	// 			 for (j=0; j<8; j++) begin
	// 				pin_send = txchar[j];
	// 				#TMBIT;
	// 			 end
	// 			 pin_send = 1; // stop bit
	// 			 stop_bit = 1;
	// 			 #TMBIT;
	// 			 stop_bit = 0;
	// 			 #TMINTVL;
	// 	 end
	// 	end
	// end
	
	txchar <= 8'b10101010;

	pin_send = 0;
	start_bit = 1;

	#TMBIT;

	for(j = 0; j < 8; j++) begin
		pin_send = txchar[j];
		#TMBIT;
	end
	pin_send = 1;
	stop_bit = 1;
	#TMBIT;
	stop_bit = 0;
	#TMINTVL;


	#1000000;
	begin:SLD_LOOP
		forever begin
			if($feof(sld) != 0) begin
			  $display("FILE End !!");
			  disable SLD_LOOP;
			end
			else begin
				ok = $fscanf(sld, "%h", txchar);
				if(ok != 1) begin
					$display("SLD FILE END !!");
					disable SLD_LOOP;
				end
				pin_send = 0; // start bit
				 start_bit = 1;
				
				 #TMBIT;
				 start_bit = 0;
				 for (j=0; j<8; j++) begin
					pin_send = txchar[j];
					#TMBIT;
				 end
				 pin_send = 1; // stop bit
				 stop_bit = 1;
				 #TMBIT;
				 stop_bit = 0;
				 #TMINTVL;
		 end
		end
	end


	// $fclose(fd);
	$fclose(sld);

	$fscanf(gd, "%c", filechar);

	$display("omo");

	for(i = 0; i < 1000000000; i++) begin
	   if (rx_ready) begin
		    if (is_eof == 0) begin
				if (filechar != rxchar) begin
					$display("%d: Not the same!!! ans:%h, real:%h", outcount, filechar, rxchar);
				end
				else begin
					$display("%d: Correct!!! ans:%h, real:%h", outcount, filechar, rxchar);
				end

				ok = $fscanf(gd, "%c", nexchar);

				if(ok != 1) begin
					$display("END OF ANSWER!!");
					is_eof <= 1;
				end
				outcount <= outcount + 1;
				filechar <= nexchar;
			end 
			else begin
				$display("TOO MANY OUTPUT!! real:%h", rxchar);
			end
			
			
	   end
	  #HALF_TMCLK;
	  #HALF_TMCLK;
	end

   $fclose(gd);
	


  //     for (i=0; i<send_data.len(); i++) begin
	 // txchar = send_data[i];
	 // pin_send = 0; // start bit
	 // start_bit = 1;
	 //
	 // #TMBIT;
	 // start_bit = 0;
	 // for (j=0; j<8; j++) begin
	 //    pin_send = txchar[j];
	 //    #TMBIT;
	 // end
	 // pin_send = 1; // stop bit
	 // stop_bit = 1;
	 // #TMBIT;
	 // stop_bit = 0;
	 // #TMINTVL;
  //     end // for (i=0; i<send_data.len(); i++)
	  

      $finish;
   end // initial begin

   always @(pin_send) begin
      pin_delay <= #TMDELAY pin_send;
   end

endmodule

`default_nettype wire
