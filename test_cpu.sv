`timescale 1ns / 1ps

`default_nettype none

// HALF_TMCLK corresponds to 100 MHz system clock
// TMBIT and CLK_PER_HALF_BIT corresponds to 9600 bps

module test_cpu
  #( parameter TMBIT = 400,
     parameter TMINTVL = TMBIT*5,
     parameter HALF_TMCLK = 5,
     parameter CLK_PER_HALF_BIT = 20)
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

   int 	       i;
   int 	       j;
   int        fd;
   int        ok;

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

   initial begin
	   fd=$fopen("/home/omochan/3A/cpujikken/core/binarycode/mandel_small.txt","r");
      $dumpfile("test_uart.vcd");
      $dumpvars(0);

      #1;

      rstn <= 0;
      clk <= 0;
      pin_send <= 1;
      start_bit <= 0;
      stop_bit <= 0;
      
      fork
	 genclk();
      join_none

      #HALF_TMCLK;
      #HALF_TMCLK;
      #HALF_TMCLK;

      rstn <= 1;

      #TMINTVL;
	  
	  begin:FILE_LOOP
		forever begin
			if($feof(fd) != 0) begin
			  $display("FILE End !!");
			  disable FILE_LOOP;
			end
			else begin
				ok = $fscanf(fd, "%b", txchar);
				if(ok != 1) begin
					$display("FILE END !!");
					disable FILE_LOOP;
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
	
	$fclose(fd);


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
	  
	#1000000000;

      $finish;
   end // initial begin

   always @(pin_send) begin
      pin_delay <= #TMDELAY pin_send;
   end
      
endmodule

`default_nettype wire
