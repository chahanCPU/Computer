min_caml_start:
	ori	$2, $zero, 1
	ori	$3, $zero, 0
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_array
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	ori	$3, $zero, 0
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$2, 0($sp)
	or	$2, $zero, $3
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_float_array
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	ori	$3, $zero, 60
	ori	$4, $zero, 0
	ori	$5, $zero, 0
	ori	$6, $zero, 0
	ori	$7, $zero, 0
	ori	$8, $zero, 0
	or	$9, $zero, $gp
	addi	$gp, $gp, 48
	sw	$2, 40($9)
	sw	$2, 36($9)
	sw	$2, 32($9)
	sw	$2, 28($9)
	sw	$8, 24($9)
	sw	$2, 20($9)
	sw	$2, 16($9)
	sw	$7, 12($9)
	sw	$6, 8($9)
	sw	$5, 4($9)
	sw	$4, 0($9)
	or	$2, $zero, $9
	or	$27, $zero, $3
	or	$3, $zero, $2
	or	$2, $zero, $27
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_array
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	ori	$3, $zero, 3
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$2, 4($sp)
	or	$2, $zero, $3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	ori	$3, $zero, 3
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$2, 8($sp)
	or	$2, $zero, $3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	ori	$3, $zero, 3
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$2, 12($sp)
	or	$2, $zero, $3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_float_array
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	ori	$3, $zero, 1
	lui	$at, 0x437f		# 255.000000の上位16bits
	lui	$0, 0x0		# 255.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$2, 16($sp)
	or	$2, $zero, $3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_float_array
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	ori	$3, $zero, 50
	ori	$4, $zero, 1
	ori	$5, $zero, -1
	sw	$2, 20($sp)
	sw	$3, 24($sp)
	or	$3, $zero, $5
	or	$2, $zero, $4
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_array
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	or	$3, $zero, $2
	lw	$2, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_array
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	ori	$3, $zero, 1
	ori	$4, $zero, 1
	lw	$5, 0($2)
	sw	$2, 28($sp)
	sw	$3, 32($sp)
	or	$3, $zero, $5
	or	$2, $zero, $4
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_create_array
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	or	$3, $zero, $2
	lw	$2, 32($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_create_array
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	ori	$3, $zero, 1
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$2, 36($sp)
	or	$2, $zero, $3
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_create_float_array
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	ori	$3, $zero, 1
	ori	$4, $zero, 0
	sw	$2, 40($sp)
	or	$2, $zero, $3
	or	$3, $zero, $4
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_create_array
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	ori	$3, $zero, 1
	lui	$at, 0x4e6e		# 1000000000.000000の上位16bits
	lui	$0, 0x6b28		# 1000000000.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$2, 44($sp)
	or	$2, $zero, $3
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_create_float_array
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	ori	$3, $zero, 3
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$2, 48($sp)
	or	$2, $zero, $3
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_create_float_array
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	ori	$3, $zero, 1
	ori	$4, $zero, 0
	sw	$2, 52($sp)
	or	$2, $zero, $3
	or	$3, $zero, $4
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_create_array
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	ori	$3, $zero, 3
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$2, 56($sp)
	or	$2, $zero, $3
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_create_float_array
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	ori	$3, $zero, 3
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$2, 60($sp)
	or	$2, $zero, $3
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_create_float_array
	addi	$sp, $sp, -72
	lw	$ra, 68($sp)
	ori	$3, $zero, 3
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$2, 64($sp)
	or	$2, $zero, $3
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_create_float_array
	addi	$sp, $sp, -72
	lw	$ra, 68($sp)
	ori	$3, $zero, 3
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$2, 68($sp)
	or	$2, $zero, $3
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_create_float_array
	addi	$sp, $sp, -80
	lw	$ra, 76($sp)
	ori	$3, $zero, 2
	ori	$4, $zero, 0
	sw	$2, 72($sp)
	or	$2, $zero, $3
	or	$3, $zero, $4
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	min_caml_create_array
	addi	$sp, $sp, -80
	lw	$ra, 76($sp)
	ori	$3, $zero, 2
	ori	$4, $zero, 0
	sw	$2, 76($sp)
	or	$2, $zero, $3
	or	$3, $zero, $4
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	min_caml_create_array
	addi	$sp, $sp, -88
	lw	$ra, 84($sp)
	ori	$3, $zero, 1
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$2, 80($sp)
	or	$2, $zero, $3
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	min_caml_create_float_array
	addi	$sp, $sp, -88
	lw	$ra, 84($sp)
	ori	$3, $zero, 3
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$2, 84($sp)
	or	$2, $zero, $3
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	min_caml_create_float_array
	addi	$sp, $sp, -96
	lw	$ra, 92($sp)
	ori	$3, $zero, 3
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$2, 88($sp)
	or	$2, $zero, $3
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	min_caml_create_float_array
	addi	$sp, $sp, -96
	lw	$ra, 92($sp)
	ori	$3, $zero, 3
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$2, 92($sp)
	or	$2, $zero, $3
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	min_caml_create_float_array
	addi	$sp, $sp, -104
	lw	$ra, 100($sp)
	ori	$3, $zero, 3
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$2, 96($sp)
	or	$2, $zero, $3
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	min_caml_create_float_array
	addi	$sp, $sp, -104
	lw	$ra, 100($sp)
	ori	$3, $zero, 3
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$2, 100($sp)
	or	$2, $zero, $3
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	min_caml_create_float_array
	addi	$sp, $sp, -112
	lw	$ra, 108($sp)
	ori	$3, $zero, 3
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$2, 104($sp)
	or	$2, $zero, $3
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	min_caml_create_float_array
	addi	$sp, $sp, -112
	lw	$ra, 108($sp)
	ori	$3, $zero, 0
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$2, 108($sp)
	or	$2, $zero, $3
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	min_caml_create_float_array
	addi	$sp, $sp, -120
	lw	$ra, 116($sp)
	or	$3, $zero, $2
	ori	$2, $zero, 0
	sw	$3, 112($sp)
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	min_caml_create_array
	addi	$sp, $sp, -120
	lw	$ra, 116($sp)
	ori	$3, $zero, 0
	or	$4, $zero, $gp
	addi	$gp, $gp, 8
	sw	$2, 4($4)
	lw	$2, 112($sp)
	sw	$2, 0($4)
	or	$2, $zero, $4
	or	$27, $zero, $3
	or	$3, $zero, $2
	or	$2, $zero, $27
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	min_caml_create_array
	addi	$sp, $sp, -120
	lw	$ra, 116($sp)
	or	$3, $zero, $2
	ori	$2, $zero, 5
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	min_caml_create_array
	addi	$sp, $sp, -120
	lw	$ra, 116($sp)
	ori	$3, $zero, 0
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$2, 116($sp)
	or	$2, $zero, $3
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	min_caml_create_float_array
	addi	$sp, $sp, -128
	lw	$ra, 124($sp)
	ori	$3, $zero, 3
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$2, 120($sp)
	or	$2, $zero, $3
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	min_caml_create_float_array
	addi	$sp, $sp, -128
	lw	$ra, 124($sp)
	ori	$3, $zero, 60
	lw	$4, 120($sp)
	sw	$2, 124($sp)
	or	$2, $zero, $3
	or	$3, $zero, $4
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	min_caml_create_array
	addi	$sp, $sp, -136
	lw	$ra, 132($sp)
	or	$3, $zero, $gp
	addi	$gp, $gp, 8
	sw	$2, 4($3)
	lw	$2, 124($sp)
	sw	$2, 0($3)
	or	$2, $zero, $3
	ori	$3, $zero, 0
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$2, 128($sp)
	or	$2, $zero, $3
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	min_caml_create_float_array
	addi	$sp, $sp, -136
	lw	$ra, 132($sp)
	or	$3, $zero, $2
	ori	$2, $zero, 0
	sw	$3, 132($sp)
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	min_caml_create_array
	addi	$sp, $sp, -144
	lw	$ra, 140($sp)
	or	$3, $zero, $gp
	addi	$gp, $gp, 8
	sw	$2, 4($3)
	lw	$2, 132($sp)
	sw	$2, 0($3)
	or	$2, $zero, $3
	ori	$3, $zero, 180
	ori	$4, $zero, 0
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	or	$5, $zero, $gp
	addi	$gp, $gp, 16
	sw.s	$f2, 8($5)
	sw	$2, 4($5)
	sw	$4, 0($5)
	or	$2, $zero, $5
	or	$27, $zero, $3
	or	$3, $zero, $2
	or	$2, $zero, $27
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	min_caml_create_array
	addi	$sp, $sp, -144
	lw	$ra, 140($sp)
	ori	$3, $zero, 1
	ori	$4, $zero, 0
	sw	$2, 136($sp)
	or	$2, $zero, $3
	or	$3, $zero, $4
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	min_caml_create_array
	addi	$sp, $sp, -144
	lw	$ra, 140($sp)
	or	$3, $zero, $gp
	addi	$gp, $gp, 24
	li	$4, read_screen_settings.2770
	sw	$4, 0($3)
	lw	$4, 12($sp)
	sw	$4, 20($3)
	lw	$5, 104($sp)
	sw	$5, 16($3)
	lw	$6, 100($sp)
	sw	$6, 12($3)
	lw	$7, 96($sp)
	sw	$7, 8($3)
	lw	$8, 8($sp)
	sw	$8, 4($3)
	or	$8, $zero, $gp
	addi	$gp, $gp, 16
	li	$9, read_light.2772
	sw	$9, 0($8)
	lw	$9, 16($sp)
	sw	$9, 8($8)
	lw	$10, 20($sp)
	sw	$10, 4($8)
	or	$11, $zero, $gp
	addi	$gp, $gp, 8
	li	$12, read_nth_object.2777
	sw	$12, 0($11)
	lw	$12, 4($sp)
	sw	$12, 4($11)
	or	$13, $zero, $gp
	addi	$gp, $gp, 16
	li	$14, read_object.2779
	sw	$14, 0($13)
	sw	$11, 8($13)
	lw	$11, 0($sp)
	sw	$11, 4($13)
	or	$14, $zero, $gp
	addi	$gp, $gp, 8
	li	$15, read_all_object.2781
	sw	$15, 0($14)
	sw	$13, 4($14)
	or	$13, $zero, $gp
	addi	$gp, $gp, 8
	li	$15, read_and_network.2787
	sw	$15, 0($13)
	lw	$15, 28($sp)
	sw	$15, 4($13)
	or	$16, $zero, $gp
	addi	$gp, $gp, 24
	li	$17, read_parameter.2789
	sw	$17, 0($16)
	sw	$3, 20($16)
	sw	$8, 16($16)
	sw	$13, 12($16)
	sw	$14, 8($16)
	lw	$3, 36($sp)
	sw	$3, 4($16)
	or	$8, $zero, $gp
	addi	$gp, $gp, 8
	li	$13, solver_rect_surface.2791
	sw	$13, 0($8)
	lw	$13, 40($sp)
	sw	$13, 4($8)
	or	$14, $zero, $gp
	addi	$gp, $gp, 8
	li	$17, solver_rect.2800
	sw	$17, 0($14)
	sw	$8, 4($14)
	or	$8, $zero, $gp
	addi	$gp, $gp, 8
	li	$17, solver_surface.2806
	sw	$17, 0($8)
	sw	$13, 4($8)
	or	$17, $zero, $gp
	addi	$gp, $gp, 8
	li	$18, solver_second.2825
	sw	$18, 0($17)
	sw	$13, 4($17)
	or	$18, $zero, $gp
	addi	$gp, $gp, 24
	li	$19, solver.2831
	sw	$19, 0($18)
	sw	$8, 16($18)
	sw	$17, 12($18)
	sw	$14, 8($18)
	sw	$12, 4($18)
	or	$8, $zero, $gp
	addi	$gp, $gp, 8
	li	$14, solver_rect_fast.2835
	sw	$14, 0($8)
	sw	$13, 4($8)
	or	$14, $zero, $gp
	addi	$gp, $gp, 8
	li	$17, solver_surface_fast.2842
	sw	$17, 0($14)
	sw	$13, 4($14)
	or	$17, $zero, $gp
	addi	$gp, $gp, 8
	li	$19, solver_second_fast.2848
	sw	$19, 0($17)
	sw	$13, 4($17)
	or	$19, $zero, $gp
	addi	$gp, $gp, 24
	li	$20, solver_fast.2854
	sw	$20, 0($19)
	sw	$14, 16($19)
	sw	$17, 12($19)
	sw	$8, 8($19)
	sw	$12, 4($19)
	or	$14, $zero, $gp
	addi	$gp, $gp, 8
	li	$17, solver_surface_fast2.2858
	sw	$17, 0($14)
	sw	$13, 4($14)
	or	$17, $zero, $gp
	addi	$gp, $gp, 8
	li	$20, solver_second_fast2.2865
	sw	$20, 0($17)
	sw	$13, 4($17)
	or	$20, $zero, $gp
	addi	$gp, $gp, 24
	li	$21, solver_fast2.2872
	sw	$21, 0($20)
	sw	$14, 16($20)
	sw	$17, 12($20)
	sw	$8, 8($20)
	sw	$12, 4($20)
	or	$8, $zero, $gp
	addi	$gp, $gp, 8
	li	$14, iter_setup_dirvec_constants.2884
	sw	$14, 0($8)
	sw	$12, 4($8)
	or	$14, $zero, $gp
	addi	$gp, $gp, 16
	li	$17, setup_dirvec_constants.2887
	sw	$17, 0($14)
	sw	$11, 8($14)
	sw	$8, 4($14)
	or	$8, $zero, $gp
	addi	$gp, $gp, 8
	li	$17, setup_startp_constants.2889
	sw	$17, 0($8)
	sw	$12, 4($8)
	or	$17, $zero, $gp
	addi	$gp, $gp, 16
	li	$21, setup_startp.2892
	sw	$21, 0($17)
	lw	$21, 92($sp)
	sw	$21, 12($17)
	sw	$8, 8($17)
	sw	$11, 4($17)
	or	$8, $zero, $gp
	addi	$gp, $gp, 8
	li	$22, check_all_inside.2914
	sw	$22, 0($8)
	sw	$12, 4($8)
	or	$22, $zero, $gp
	addi	$gp, $gp, 32
	li	$23, shadow_check_and_group.2920
	sw	$23, 0($22)
	sw	$19, 28($22)
	sw	$13, 24($22)
	sw	$12, 20($22)
	lw	$23, 128($sp)
	sw	$23, 16($22)
	sw	$9, 12($22)
	lw	$24, 52($sp)
	sw	$24, 8($22)
	sw	$8, 4($22)
	or	$25, $zero, $gp
	addi	$gp, $gp, 16
	li	$26, shadow_check_one_or_group.2923
	sw	$26, 0($25)
	sw	$22, 8($25)
	sw	$15, 4($25)
	or	$22, $zero, $gp
	addi	$gp, $gp, 24
	li	$26, shadow_check_one_or_matrix.2926
	sw	$26, 0($22)
	sw	$19, 20($22)
	sw	$13, 16($22)
	sw	$25, 12($22)
	sw	$23, 8($22)
	sw	$24, 4($22)
	or	$19, $zero, $gp
	addi	$gp, $gp, 40
	li	$25, solve_each_element.2929
	sw	$25, 0($19)
	lw	$25, 48($sp)
	sw	$25, 36($19)
	lw	$26, 88($sp)
	sw	$26, 32($19)
	sw	$13, 28($19)
	sw	$18, 24($19)
	sw	$12, 20($19)
	lw	$27, 44($sp)
	sw	$27, 16($19)
	sw	$24, 12($19)
	lw	$30, 56($sp)
	sw	$30, 8($19)
	sw	$8, 4($19)
	or	$23, $zero, $gp
	addi	$gp, $gp, 16
	sw	$16, 140($sp)
	li	$16, solve_one_or_network.2933
	sw	$16, 0($23)
	sw	$19, 8($23)
	sw	$15, 4($23)
	or	$16, $zero, $gp
	addi	$gp, $gp, 24
	li	$19, trace_or_matrix.2937
	sw	$19, 0($16)
	sw	$25, 20($16)
	sw	$26, 16($16)
	sw	$13, 12($16)
	sw	$18, 8($16)
	sw	$23, 4($16)
	or	$18, $zero, $gp
	addi	$gp, $gp, 16
	li	$19, judge_intersection.2941
	sw	$19, 0($18)
	sw	$16, 12($18)
	sw	$25, 8($18)
	sw	$3, 4($18)
	or	$16, $zero, $gp
	addi	$gp, $gp, 40
	li	$19, solve_each_element_fast.2943
	sw	$19, 0($16)
	sw	$25, 36($16)
	sw	$21, 32($16)
	sw	$20, 28($16)
	sw	$13, 24($16)
	sw	$12, 20($16)
	sw	$27, 16($16)
	sw	$24, 12($16)
	sw	$30, 8($16)
	sw	$8, 4($16)
	or	$8, $zero, $gp
	addi	$gp, $gp, 16
	li	$19, solve_one_or_network_fast.2947
	sw	$19, 0($8)
	sw	$16, 8($8)
	sw	$15, 4($8)
	or	$15, $zero, $gp
	addi	$gp, $gp, 24
	li	$16, trace_or_matrix_fast.2951
	sw	$16, 0($15)
	sw	$25, 16($15)
	sw	$20, 12($15)
	sw	$13, 8($15)
	sw	$8, 4($15)
	or	$8, $zero, $gp
	addi	$gp, $gp, 16
	li	$13, judge_intersection_fast.2955
	sw	$13, 0($8)
	sw	$15, 12($8)
	sw	$25, 8($8)
	sw	$3, 4($8)
	or	$13, $zero, $gp
	addi	$gp, $gp, 16
	li	$15, get_nvector_rect.2957
	sw	$15, 0($13)
	lw	$15, 60($sp)
	sw	$15, 8($13)
	sw	$27, 4($13)
	or	$16, $zero, $gp
	addi	$gp, $gp, 8
	li	$19, get_nvector_plane.2959
	sw	$19, 0($16)
	sw	$15, 4($16)
	or	$19, $zero, $gp
	addi	$gp, $gp, 16
	li	$20, get_nvector_second.2961
	sw	$20, 0($19)
	sw	$15, 8($19)
	sw	$24, 4($19)
	or	$20, $zero, $gp
	addi	$gp, $gp, 16
	li	$21, get_nvector.2963
	sw	$21, 0($20)
	sw	$19, 12($20)
	sw	$13, 8($20)
	sw	$16, 4($20)
	or	$13, $zero, $gp
	addi	$gp, $gp, 8
	li	$16, utexture.2966
	sw	$16, 0($13)
	lw	$16, 64($sp)
	sw	$16, 4($13)
	or	$19, $zero, $gp
	addi	$gp, $gp, 16
	li	$21, add_light.2969
	sw	$21, 0($19)
	sw	$16, 8($19)
	lw	$21, 72($sp)
	sw	$21, 4($19)
	or	$23, $zero, $gp
	addi	$gp, $gp, 40
	sw	$14, 144($sp)
	li	$14, trace_reflections.2973
	sw	$14, 0($23)
	sw	$22, 32($23)
	lw	$14, 136($sp)
	sw	$14, 28($23)
	sw	$3, 24($23)
	sw	$15, 20($23)
	sw	$8, 16($23)
	sw	$27, 12($23)
	sw	$30, 8($23)
	sw	$19, 4($23)
	or	$14, $zero, $gp
	addi	$gp, $gp, 88
	li	$11, trace_ray.2978
	sw	$11, 0($14)
	sw	$13, 80($14)
	sw	$23, 76($14)
	sw	$25, 72($14)
	sw	$16, 68($14)
	sw	$26, 64($14)
	sw	$22, 60($14)
	sw	$17, 56($14)
	sw	$21, 52($14)
	sw	$3, 48($14)
	sw	$12, 44($14)
	sw	$15, 40($14)
	sw	$2, 36($14)
	sw	$9, 32($14)
	sw	$18, 28($14)
	sw	$27, 24($14)
	sw	$24, 20($14)
	sw	$30, 16($14)
	sw	$20, 12($14)
	sw	$10, 8($14)
	sw	$19, 4($14)
	or	$10, $zero, $gp
	addi	$gp, $gp, 56
	li	$11, trace_diffuse_ray.2984
	sw	$11, 0($10)
	sw	$13, 48($10)
	sw	$16, 44($10)
	sw	$22, 40($10)
	sw	$3, 36($10)
	sw	$12, 32($10)
	sw	$15, 28($10)
	sw	$9, 24($10)
	sw	$8, 20($10)
	sw	$24, 16($10)
	sw	$30, 12($10)
	sw	$20, 8($10)
	lw	$3, 68($sp)
	sw	$3, 4($10)
	or	$8, $zero, $gp
	addi	$gp, $gp, 8
	li	$11, iter_trace_diffuse_rays.2987
	sw	$11, 0($8)
	sw	$10, 4($8)
	or	$10, $zero, $gp
	addi	$gp, $gp, 16
	li	$11, trace_diffuse_rays.2992
	sw	$11, 0($10)
	sw	$17, 8($10)
	sw	$8, 4($10)
	or	$8, $zero, $gp
	addi	$gp, $gp, 16
	li	$11, trace_diffuse_ray_80percent.2996
	sw	$11, 0($8)
	sw	$10, 8($8)
	lw	$11, 116($sp)
	sw	$11, 4($8)
	or	$13, $zero, $gp
	addi	$gp, $gp, 16
	li	$15, calc_diffuse_using_1point.3000
	sw	$15, 0($13)
	sw	$8, 12($13)
	sw	$21, 8($13)
	sw	$3, 4($13)
	or	$8, $zero, $gp
	addi	$gp, $gp, 16
	li	$15, calc_diffuse_using_5points.3003
	sw	$15, 0($8)
	sw	$21, 8($8)
	sw	$3, 4($8)
	or	$15, $zero, $gp
	addi	$gp, $gp, 8
	li	$16, do_without_neighbors.3009
	sw	$16, 0($15)
	sw	$13, 4($15)
	or	$13, $zero, $gp
	addi	$gp, $gp, 8
	li	$16, neighbors_exist.3012
	sw	$16, 0($13)
	lw	$16, 76($sp)
	sw	$16, 4($13)
	or	$17, $zero, $gp
	addi	$gp, $gp, 16
	li	$18, try_exploit_neighbors.3025
	sw	$18, 0($17)
	sw	$15, 8($17)
	sw	$8, 4($17)
	or	$8, $zero, $gp
	addi	$gp, $gp, 8
	li	$18, write_ppm_header.3032
	sw	$18, 0($8)
	sw	$16, 4($8)
	or	$18, $zero, $gp
	addi	$gp, $gp, 8
	li	$19, write_rgb.3036
	sw	$19, 0($18)
	sw	$21, 4($18)
	or	$19, $zero, $gp
	addi	$gp, $gp, 16
	li	$20, pretrace_diffuse_rays.3038
	sw	$20, 0($19)
	sw	$10, 12($19)
	sw	$11, 8($19)
	sw	$3, 4($19)
	or	$3, $zero, $gp
	addi	$gp, $gp, 40
	li	$10, pretrace_pixels.3041
	sw	$10, 0($3)
	sw	$4, 36($3)
	sw	$14, 32($3)
	sw	$26, 28($3)
	sw	$7, 24($3)
	lw	$4, 84($sp)
	sw	$4, 20($3)
	sw	$21, 16($3)
	lw	$7, 108($sp)
	sw	$7, 12($3)
	sw	$19, 8($3)
	lw	$7, 80($sp)
	sw	$7, 4($3)
	or	$10, $zero, $gp
	addi	$gp, $gp, 32
	li	$14, pretrace_line.3048
	sw	$14, 0($10)
	sw	$5, 24($10)
	sw	$6, 20($10)
	sw	$4, 16($10)
	sw	$3, 12($10)
	sw	$16, 8($10)
	sw	$7, 4($10)
	or	$3, $zero, $gp
	addi	$gp, $gp, 32
	li	$5, scan_pixel.3052
	sw	$5, 0($3)
	sw	$18, 24($3)
	sw	$17, 20($3)
	sw	$21, 16($3)
	sw	$13, 12($3)
	sw	$16, 8($3)
	sw	$15, 4($3)
	or	$5, $zero, $gp
	addi	$gp, $gp, 16
	li	$6, scan_line.3058
	sw	$6, 0($5)
	sw	$3, 12($5)
	sw	$10, 8($5)
	sw	$16, 4($5)
	or	$3, $zero, $gp
	addi	$gp, $gp, 8
	li	$6, create_pixelline.3071
	sw	$6, 0($3)
	sw	$16, 4($3)
	or	$6, $zero, $gp
	addi	$gp, $gp, 8
	li	$13, calc_dirvec.3078
	sw	$13, 0($6)
	sw	$11, 4($6)
	or	$13, $zero, $gp
	addi	$gp, $gp, 8
	li	$14, calc_dirvecs.3086
	sw	$14, 0($13)
	sw	$6, 4($13)
	or	$6, $zero, $gp
	addi	$gp, $gp, 8
	li	$14, calc_dirvec_rows.3091
	sw	$14, 0($6)
	sw	$13, 4($6)
	or	$13, $zero, $gp
	addi	$gp, $gp, 8
	li	$14, create_dirvec.3095
	sw	$14, 0($13)
	lw	$14, 0($sp)
	sw	$14, 4($13)
	or	$15, $zero, $gp
	addi	$gp, $gp, 8
	li	$17, create_dirvec_elements.3097
	sw	$17, 0($15)
	sw	$13, 4($15)
	or	$17, $zero, $gp
	addi	$gp, $gp, 16
	li	$18, create_dirvecs.3100
	sw	$18, 0($17)
	sw	$11, 12($17)
	sw	$15, 8($17)
	sw	$13, 4($17)
	or	$15, $zero, $gp
	addi	$gp, $gp, 8
	li	$18, init_dirvec_constants.3102
	sw	$18, 0($15)
	lw	$18, 144($sp)
	sw	$18, 4($15)
	or	$19, $zero, $gp
	addi	$gp, $gp, 16
	li	$20, init_vecset_constants.3105
	sw	$20, 0($19)
	sw	$15, 8($19)
	sw	$11, 4($19)
	or	$11, $zero, $gp
	addi	$gp, $gp, 16
	li	$15, init_dirvecs.3107
	sw	$15, 0($11)
	sw	$19, 12($11)
	sw	$17, 8($11)
	sw	$6, 4($11)
	or	$6, $zero, $gp
	addi	$gp, $gp, 16
	li	$15, add_reflection.3109
	sw	$15, 0($6)
	sw	$18, 12($6)
	lw	$15, 136($sp)
	sw	$15, 8($6)
	sw	$13, 4($6)
	or	$13, $zero, $gp
	addi	$gp, $gp, 16
	li	$15, setup_rect_reflection.3116
	sw	$15, 0($13)
	sw	$2, 12($13)
	sw	$9, 8($13)
	sw	$6, 4($13)
	or	$15, $zero, $gp
	addi	$gp, $gp, 16
	li	$17, setup_surface_reflection.3119
	sw	$17, 0($15)
	sw	$2, 12($15)
	sw	$9, 8($15)
	sw	$6, 4($15)
	or	$2, $zero, $gp
	addi	$gp, $gp, 16
	li	$6, setup_reflections.3122
	sw	$6, 0($2)
	sw	$15, 12($2)
	sw	$13, 8($2)
	sw	$12, 4($2)
	or	$30, $zero, $gp
	addi	$gp, $gp, 64
	li	$6, rt.3124
	sw	$6, 0($30)
	sw	$8, 56($30)
	sw	$2, 52($30)
	sw	$18, 48($30)
	sw	$4, 44($30)
	sw	$5, 40($30)
	lw	$2, 140($sp)
	sw	$2, 36($30)
	sw	$10, 32($30)
	sw	$14, 28($30)
	lw	$2, 128($sp)
	sw	$2, 24($30)
	sw	$9, 20($30)
	sw	$11, 16($30)
	sw	$16, 12($30)
	sw	$7, 8($30)
	sw	$3, 4($30)
	ori	$2, $zero, 4
	ori	$3, $zero, 4
	sw	$ra, 148($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 152
	li	$ra, tmp.8946
	jr	$27
tmp.8946:
	addi	$sp, $sp, -152
	lw	$ra, 148($sp)
	ori	$2, $zero, 0
	noop
fless.2575:
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f4, 4($zero)
	add.s	$f2, $f2, $f4
	c.le.s	$at, $f3, $f2
	blez	$at, bgtz_else.8947
	ori	$2, $zero, 0
	jr	$ra
bgtz_else.8947:
	ori	$2, $zero, 1
	jr	$ra
fispos.2578:
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	c.le.s	$at, $f2, $f3
	blez	$at, bgtz_else.8948
	ori	$2, $zero, 0
	jr	$ra
bgtz_else.8948:
	ori	$2, $zero, 1
	jr	$ra
fisneg.2580:
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	c.le.s	$at, $f3, $f2
	blez	$at, bgtz_else.8949
	ori	$2, $zero, 0
	jr	$ra
bgtz_else.8949:
	ori	$2, $zero, 1
	jr	$ra
fiszero.2582:
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	c.eq.s	$at, $f2, $f3
	blez	$at, bgtz_else.8950
	ori	$2, $zero, 1
	jr	$ra
bgtz_else.8950:
	ori	$2, $zero, 0
	jr	$ra
fhalf.2587:
	lui	$at, 0x3f00		# 0.500000の上位16bits
	lui	$0, 0x0		# 0.500000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	mul.s	$f2, $f2, $f3
	jr	$ra
fsqr.2589:
	mul.s	$f2, $f2, $f2
	jr	$ra
fabs.2591:
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	c.le.s	$at, $f3, $f2
	blez	$at, bgtz_else.8951
	jr	$ra
bgtz_else.8951:
	neg.s	$f2, $f2
	jr	$ra
fneg.2593:
	neg.s	$f2, $f2
	jr	$ra
floor.2595:
	sw.s	$f2, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_int_of_float
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_float_of_int
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	lw.s	$f4, 0($sp)
	c.le.s	$at, $f3, $f4
	blez	$at, bgtz_else.8952
	jr	$ra
bgtz_else.8952:
	c.eq.s	$at, $f4, $f2
	blez	$at, bgtz_else.8953
	add.s	$f2, $f0, $f4
	jr	$ra
bgtz_else.8953:
	lui	$at, 0x3f80		# 1.000000の上位16bits
	lui	$0, 0x0		# 1.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	sub.s	$f2, $f2, $f3
	jr	$ra
taylor_cos.2597:
	mul.s	$f2, $f2, $f2
	lui	$at, 0x3f80		# 1.000000の上位16bits
	lui	$0, 0x0		# 1.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	lui	$at, 0x3f00		# 0.500000の上位16bits
	lui	$0, 0x0		# 0.500000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f4, 4($zero)
	lui	$at, 0x3d2a		# 0.041664の上位16bits
	lui	$0, 0xa789		# 0.041664の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f5, 4($zero)
	lui	$at, 0x3ab3		# 0.001370の上位16bits
	lui	$0, 0x8106		# 0.001370の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f6, 4($zero)
	mul.s	$f6, $f2, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f5, $f2, $f5
	sub.s	$f4, $f4, $f5
	mul.s	$f2, $f2, $f4
	sub.s	$f2, $f3, $f2
	jr	$ra
taylor_sin.2599:
	mul.s	$f3, $f2, $f2
	lui	$at, 0x3f80		# 1.000000の上位16bits
	lui	$0, 0x0		# 1.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f4, 4($zero)
	lui	$at, 0x3e2a		# 0.166667の上位16bits
	lui	$0, 0xaaac		# 0.166667の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f5, 4($zero)
	lui	$at, 0x3c08		# 0.008333の上位16bits
	lui	$0, 0x8666		# 0.008333の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f6, 4($zero)
	lui	$at, 0x394d		# 0.000196の上位16bits
	lui	$0, 0x64b6		# 0.000196の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f7, 4($zero)
	mul.s	$f7, $f3, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f3, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f3, $f3, $f5
	sub.s	$f3, $f4, $f3
	mul.s	$f2, $f2, $f3
	jr	$ra
cos.2601:
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	c.le.s	$at, $f3, $f2
	blez	$at, bgtz_else.8954
	lui	$at, 0x40c9		# 6.283185の上位16bits
	lui	$0, 0xfdb		# 6.283185の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	c.le.s	$at, $f2, $f3
	blez	$at, bgtz_else.8955
	lui	$at, 0x4049		# 3.141593の上位16bits
	lui	$0, 0xfdb		# 3.141593の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	c.le.s	$at, $f3, $f2
	blez	$at, bgtz_else.8956
	lui	$at, 0x4049		# 3.141593の上位16bits
	lui	$0, 0xfdb		# 3.141593の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	sub.s	$f2, $f2, $f3
	lui	$at, 0x3fc9		# 1.570796の上位16bits
	lui	$0, 0xfdb		# 1.570796の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	c.le.s	$at, $f3, $f2
	blez	$at, bgtz_else.8957
	lui	$at, 0x4016		# 2.356194の上位16bits
	lui	$0, 0xcbe4		# 2.356194の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	c.le.s	$at, $f3, $f2
	blez	$at, bgtz_else.8958
	lui	$at, 0x4049		# 3.141593の上位16bits
	lui	$0, 0xfdb		# 3.141593の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	sub.s	$f2, $f3, $f2
	j	taylor_cos.2597
bgtz_else.8958:
	lui	$at, 0x3fc9		# 1.570796の上位16bits
	lui	$0, 0xfdb		# 1.570796の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	sub.s	$f2, $f2, $f3
	j	taylor_sin.2599
bgtz_else.8957:
	lui	$at, 0x3f49		# 0.785398の上位16bits
	lui	$0, 0xfdb		# 0.785398の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	c.le.s	$at, $f3, $f2
	blez	$at, bgtz_else.8959
	lui	$at, 0x3fc9		# 1.570796の上位16bits
	lui	$0, 0xfdb		# 1.570796の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	sub.s	$f2, $f3, $f2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	taylor_sin.2599
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	neg.s	$f2, $f2
	jr	$ra
bgtz_else.8959:
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	taylor_cos.2597
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	neg.s	$f2, $f2
	jr	$ra
bgtz_else.8956:
	lui	$at, 0x3fc9		# 1.570796の上位16bits
	lui	$0, 0xfdb		# 1.570796の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	c.le.s	$at, $f3, $f2
	blez	$at, bgtz_else.8960
	lui	$at, 0x4016		# 2.356194の上位16bits
	lui	$0, 0xcbe4		# 2.356194の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	c.le.s	$at, $f3, $f2
	blez	$at, bgtz_else.8961
	lui	$at, 0x4049		# 3.141593の上位16bits
	lui	$0, 0xfdb		# 3.141593の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	sub.s	$f2, $f3, $f2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	taylor_cos.2597
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	neg.s	$f2, $f2
	jr	$ra
bgtz_else.8961:
	lui	$at, 0x3fc9		# 1.570796の上位16bits
	lui	$0, 0xfdb		# 1.570796の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	sub.s	$f2, $f2, $f3
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	taylor_sin.2599
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	neg.s	$f2, $f2
	jr	$ra
bgtz_else.8960:
	lui	$at, 0x3f49		# 0.785398の上位16bits
	lui	$0, 0xfdb		# 0.785398の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	c.le.s	$at, $f3, $f2
	blez	$at, bgtz_else.8962
	lui	$at, 0x3fc9		# 1.570796の上位16bits
	lui	$0, 0xfdb		# 1.570796の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	sub.s	$f2, $f3, $f2
	j	taylor_sin.2599
bgtz_else.8962:
	j	taylor_cos.2597
bgtz_else.8955:
	lui	$at, 0x40c9		# 6.283185の上位16bits
	lui	$0, 0xfdb		# 6.283185の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	sub.s	$f2, $f2, $f3
	j	cos.2601
bgtz_else.8954:
	neg.s	$f2, $f2
	j	cos.2601
sin.2603:
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	c.le.s	$at, $f3, $f2
	blez	$at, bgtz_else.8963
	lui	$at, 0x40c9		# 6.283185の上位16bits
	lui	$0, 0xfdb		# 6.283185の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	c.le.s	$at, $f2, $f3
	blez	$at, bgtz_else.8964
	lui	$at, 0x4049		# 3.141593の上位16bits
	lui	$0, 0xfdb		# 3.141593の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	c.le.s	$at, $f3, $f2
	blez	$at, bgtz_else.8965
	lui	$at, 0x4049		# 3.141593の上位16bits
	lui	$0, 0xfdb		# 3.141593の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	sub.s	$f2, $f2, $f3
	lui	$at, 0x3fc9		# 1.570796の上位16bits
	lui	$0, 0xfdb		# 1.570796の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	c.le.s	$at, $f3, $f2
	blez	$at, bgtz_else.8966
	lui	$at, 0x4016		# 2.356194の上位16bits
	lui	$0, 0xcbe4		# 2.356194の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	c.le.s	$at, $f3, $f2
	blez	$at, bgtz_else.8967
	lui	$at, 0x4049		# 3.141593の上位16bits
	lui	$0, 0xfdb		# 3.141593の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	sub.s	$f2, $f3, $f2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	taylor_sin.2599
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	neg.s	$f2, $f2
	jr	$ra
bgtz_else.8967:
	lui	$at, 0x3fc9		# 1.570796の上位16bits
	lui	$0, 0xfdb		# 1.570796の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	sub.s	$f2, $f2, $f3
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	taylor_cos.2597
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	neg.s	$f2, $f2
	jr	$ra
bgtz_else.8966:
	lui	$at, 0x3f49		# 0.785398の上位16bits
	lui	$0, 0xfdb		# 0.785398の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	c.le.s	$at, $f3, $f2
	blez	$at, bgtz_else.8968
	lui	$at, 0x3fc9		# 1.570796の上位16bits
	lui	$0, 0xfdb		# 1.570796の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	sub.s	$f2, $f3, $f2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	taylor_cos.2597
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	neg.s	$f2, $f2
	jr	$ra
bgtz_else.8968:
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	taylor_sin.2599
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	neg.s	$f2, $f2
	jr	$ra
bgtz_else.8965:
	lui	$at, 0x3fc9		# 1.570796の上位16bits
	lui	$0, 0xfdb		# 1.570796の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	c.le.s	$at, $f3, $f2
	blez	$at, bgtz_else.8969
	lui	$at, 0x4016		# 2.356194の上位16bits
	lui	$0, 0xcbe4		# 2.356194の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	c.le.s	$at, $f3, $f2
	blez	$at, bgtz_else.8970
	lui	$at, 0x4049		# 3.141593の上位16bits
	lui	$0, 0xfdb		# 3.141593の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	sub.s	$f2, $f3, $f2
	j	taylor_sin.2599
bgtz_else.8970:
	lui	$at, 0x3fc9		# 1.570796の上位16bits
	lui	$0, 0xfdb		# 1.570796の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	sub.s	$f2, $f2, $f3
	j	taylor_cos.2597
bgtz_else.8969:
	lui	$at, 0x3f49		# 0.785398の上位16bits
	lui	$0, 0xfdb		# 0.785398の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	c.le.s	$at, $f3, $f2
	blez	$at, bgtz_else.8971
	lui	$at, 0x3fc9		# 1.570796の上位16bits
	lui	$0, 0xfdb		# 1.570796の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	sub.s	$f2, $f3, $f2
	j	taylor_cos.2597
bgtz_else.8971:
	j	taylor_sin.2599
bgtz_else.8964:
	lui	$at, 0x40c9		# 6.283185の上位16bits
	lui	$0, 0xfdb		# 6.283185の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	sub.s	$f2, $f2, $f3
	j	sin.2603
bgtz_else.8963:
	neg.s	$f2, $f2
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	sin.2603
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	neg.s	$f2, $f2
	jr	$ra
taylor_atan.2605:
	mul.s	$f3, $f2, $f2
	lui	$at, 0x3f80		# 1.000000の上位16bits
	lui	$0, 0x0		# 1.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f4, 4($zero)
	lui	$at, 0x3eaa		# 0.333333の上位16bits
	lui	$0, 0xaaaa		# 0.333333の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f5, 4($zero)
	lui	$at, 0x3e4c		# 0.200000の上位16bits
	lui	$0, 0xcccd		# 0.200000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f6, 4($zero)
	lui	$at, 0x3e12		# 0.142857の上位16bits
	lui	$0, 0x4925		# 0.142857の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f7, 4($zero)
	lui	$at, 0x3de3		# 0.111111の上位16bits
	lui	$0, 0x8e38		# 0.111111の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f8, 4($zero)
	lui	$at, 0x3db7		# 0.089764の上位16bits
	lui	$0, 0xd66e		# 0.089764の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f9, 4($zero)
	lui	$at, 0x3d75		# 0.060035の上位16bits
	lui	$0, 0xe7c5		# 0.060035の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f10, 4($zero)
	mul.s	$f10, $f10, $f3
	sub.s	$f9, $f9, $f10
	mul.s	$f9, $f3, $f9
	sub.s	$f8, $f8, $f9
	mul.s	$f8, $f3, $f8
	sub.s	$f7, $f7, $f8
	mul.s	$f7, $f3, $f7
	sub.s	$f6, $f6, $f7
	mul.s	$f6, $f3, $f6
	sub.s	$f5, $f5, $f6
	mul.s	$f3, $f3, $f5
	sub.s	$f3, $f4, $f3
	mul.s	$f2, $f2, $f3
	jr	$ra
atan.2607:
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	c.le.s	$at, $f3, $f2
	blez	$at, bgtz_else.8972
	lui	$at, 0x3ee0		# 0.437500の上位16bits
	lui	$0, 0x0		# 0.437500の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	c.le.s	$at, $f3, $f2
	blez	$at, bgtz_else.8973
	lui	$at, 0x4016		# 2.356194の上位16bits
	lui	$0, 0xcbe4		# 2.356194の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	c.le.s	$at, $f3, $f2
	blez	$at, bgtz_else.8974
	lui	$at, 0x3fc9		# 1.570796の上位16bits
	lui	$0, 0xfdb		# 1.570796の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	lui	$at, 0x3f80		# 1.000000の上位16bits
	lui	$0, 0x0		# 1.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f4, 4($zero)
	inv.s	$f1, $f2
	mul.s	$f2, $f4, $f1
	sw.s	$f3, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	taylor_atan.2605
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	lw.s	$f3, 0($sp)
	sub.s	$f2, $f3, $f2
	jr	$ra
bgtz_else.8974:
	lui	$at, 0x3f49		# 0.785398の上位16bits
	lui	$0, 0xfdb		# 0.785398の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	lui	$at, 0x3f80		# 1.000000の上位16bits
	lui	$0, 0x0		# 1.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f4, 4($zero)
	sub.s	$f4, $f2, $f4
	lui	$at, 0x3f80		# 1.000000の上位16bits
	lui	$0, 0x0		# 1.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f5, 4($zero)
	add.s	$f2, $f2, $f5
	inv.s	$f1, $f2
	mul.s	$f2, $f4, $f1
	sw.s	$f3, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	taylor_atan.2605
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw.s	$f3, 4($sp)
	add.s	$f2, $f3, $f2
	jr	$ra
bgtz_else.8973:
	j	taylor_atan.2605
bgtz_else.8972:
	neg.s	$f2, $f2
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	atan.2607
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	neg.s	$f2, $f2
	jr	$ra
xor.2640:
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.8975
	or	$2, $zero, $3
	jr	$ra
beq_else.8975:
	ori	$at, $zero, 0
	bne	$3, $at, beq_else.8976
	ori	$2, $zero, 1
	jr	$ra
beq_else.8976:
	ori	$2, $zero, 0
	jr	$ra
sgn.2643:
	sw.s	$f2, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	fiszero.2582
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.8977
	lw.s	$f2, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	fispos.2578
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.8978
	lui	$at, 0xbf80		# -1.000000の上位16bits
	lui	$0, 0x0		# -1.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	jr	$ra
beq_else.8978:
	lui	$at, 0x3f80		# 1.000000の上位16bits
	lui	$0, 0x0		# 1.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	jr	$ra
beq_else.8977:
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	jr	$ra
fneg_cond.2645:
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.8979
	j	fneg.2593
beq_else.8979:
	jr	$ra
add_mod5.2648:
	add	$2, $2, $3
	slti	$at, $2, 5
	bgtz	$at, blez_else.8980
	addi	$2, $2, -5
	jr	$ra
blez_else.8980:
	jr	$ra
vecset.2651:
	sw.s	$f2, 0($2)
	sw.s	$f3, 4($2)
	sw.s	$f4, 8($2)
	jr	$ra
vecfill.2656:
	sw.s	$f2, 0($2)
	sw.s	$f2, 4($2)
	sw.s	$f2, 8($2)
	jr	$ra
vecbzero.2659:
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	j	vecfill.2656
veccpy.2661:
	lw.s	$f2, 0($3)
	sw.s	$f2, 0($2)
	lw.s	$f2, 4($3)
	sw.s	$f2, 4($2)
	lw.s	$f2, 8($3)
	sw.s	$f2, 8($2)
	jr	$ra
vecunit_sgn.2669:
	lw.s	$f2, 0($2)
	sw	$3, 0($sp)
	sw	$2, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	fsqr.2589
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$2, 4($sp)
	lw.s	$f3, 4($2)
	sw.s	$f2, 8($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	fsqr.2589
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw.s	$f3, 8($sp)
	add.s	$f2, $f3, $f2
	lw	$2, 4($sp)
	lw.s	$f3, 8($2)
	sw.s	$f2, 12($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	fsqr.2589
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw.s	$f3, 12($sp)
	add.s	$f2, $f3, $f2
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_sqrt
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	sw.s	$f2, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	fiszero.2582
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.8984
	lw	$2, 0($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.8986
	lui	$at, 0x3f80		# 1.000000の上位16bits
	lui	$0, 0x0		# 1.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	lw.s	$f3, 16($sp)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	j	beq_cont.8987
beq_else.8986:
	lui	$at, 0xbf80		# -1.000000の上位16bits
	lui	$0, 0x0		# -1.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	lw.s	$f3, 16($sp)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
beq_cont.8987:
	j	beq_cont.8985
beq_else.8984:
	lui	$at, 0x3f80		# 1.000000の上位16bits
	lui	$0, 0x0		# 1.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
beq_cont.8985:
	lw	$2, 4($sp)
	lw.s	$f3, 0($2)
	mul.s	$f3, $f3, $f2
	sw.s	$f3, 0($2)
	lw.s	$f3, 4($2)
	mul.s	$f3, $f3, $f2
	sw.s	$f3, 4($2)
	lw.s	$f3, 8($2)
	mul.s	$f2, $f3, $f2
	sw.s	$f2, 8($2)
	jr	$ra
veciprod.2672:
	lw.s	$f2, 0($2)
	lw.s	$f3, 0($3)
	mul.s	$f2, $f2, $f3
	lw.s	$f3, 4($2)
	lw.s	$f4, 4($3)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	lw.s	$f3, 8($2)
	lw.s	$f4, 8($3)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	jr	$ra
veciprod2.2675:
	lw.s	$f5, 0($2)
	mul.s	$f2, $f5, $f2
	lw.s	$f5, 4($2)
	mul.s	$f3, $f5, $f3
	add.s	$f2, $f2, $f3
	lw.s	$f3, 8($2)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	jr	$ra
vecaccum.2680:
	lw.s	$f3, 0($2)
	lw.s	$f4, 0($3)
	mul.s	$f4, $f2, $f4
	add.s	$f3, $f3, $f4
	sw.s	$f3, 0($2)
	lw.s	$f3, 4($2)
	lw.s	$f4, 4($3)
	mul.s	$f4, $f2, $f4
	add.s	$f3, $f3, $f4
	sw.s	$f3, 4($2)
	lw.s	$f3, 8($2)
	lw.s	$f4, 8($3)
	mul.s	$f2, $f2, $f4
	add.s	$f2, $f3, $f2
	sw.s	$f2, 8($2)
	jr	$ra
vecadd.2684:
	lw.s	$f2, 0($2)
	lw.s	$f3, 0($3)
	add.s	$f2, $f2, $f3
	sw.s	$f2, 0($2)
	lw.s	$f2, 4($2)
	lw.s	$f3, 4($3)
	add.s	$f2, $f2, $f3
	sw.s	$f2, 4($2)
	lw.s	$f2, 8($2)
	lw.s	$f3, 8($3)
	add.s	$f2, $f2, $f3
	sw.s	$f2, 8($2)
	jr	$ra
vecscale.2690:
	lw.s	$f3, 0($2)
	mul.s	$f3, $f3, $f2
	sw.s	$f3, 0($2)
	lw.s	$f3, 4($2)
	mul.s	$f3, $f3, $f2
	sw.s	$f3, 4($2)
	lw.s	$f3, 8($2)
	mul.s	$f2, $f3, $f2
	sw.s	$f2, 8($2)
	jr	$ra
vecaccumv.2693:
	lw.s	$f2, 0($2)
	lw.s	$f3, 0($3)
	lw.s	$f4, 0($4)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	sw.s	$f2, 0($2)
	lw.s	$f2, 4($2)
	lw.s	$f3, 4($3)
	lw.s	$f4, 4($4)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	sw.s	$f2, 4($2)
	lw.s	$f2, 8($2)
	lw.s	$f3, 8($3)
	lw.s	$f4, 8($4)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	sw.s	$f2, 8($2)
	jr	$ra
o_texturetype.2697:
	lw	$2, 0($2)
	jr	$ra
o_form.2699:
	lw	$2, 4($2)
	jr	$ra
o_reflectiontype.2701:
	lw	$2, 8($2)
	jr	$ra
o_isinvert.2703:
	lw	$2, 24($2)
	jr	$ra
o_isrot.2705:
	lw	$2, 12($2)
	jr	$ra
o_param_a.2707:
	lw	$2, 16($2)
	lw.s	$f2, 0($2)
	jr	$ra
o_param_b.2709:
	lw	$2, 16($2)
	lw.s	$f2, 4($2)
	jr	$ra
o_param_c.2711:
	lw	$2, 16($2)
	lw.s	$f2, 8($2)
	jr	$ra
o_param_abc.2713:
	lw	$2, 16($2)
	jr	$ra
o_param_x.2715:
	lw	$2, 20($2)
	lw.s	$f2, 0($2)
	jr	$ra
o_param_y.2717:
	lw	$2, 20($2)
	lw.s	$f2, 4($2)
	jr	$ra
o_param_z.2719:
	lw	$2, 20($2)
	lw.s	$f2, 8($2)
	jr	$ra
o_diffuse.2721:
	lw	$2, 28($2)
	lw.s	$f2, 0($2)
	jr	$ra
o_hilight.2723:
	lw	$2, 28($2)
	lw.s	$f2, 4($2)
	jr	$ra
o_color_red.2725:
	lw	$2, 32($2)
	lw.s	$f2, 0($2)
	jr	$ra
o_color_green.2727:
	lw	$2, 32($2)
	lw.s	$f2, 4($2)
	jr	$ra
o_color_blue.2729:
	lw	$2, 32($2)
	lw.s	$f2, 8($2)
	jr	$ra
o_param_r1.2731:
	lw	$2, 36($2)
	lw.s	$f2, 0($2)
	jr	$ra
o_param_r2.2733:
	lw	$2, 36($2)
	lw.s	$f2, 4($2)
	jr	$ra
o_param_r3.2735:
	lw	$2, 36($2)
	lw.s	$f2, 8($2)
	jr	$ra
o_param_ctbl.2737:
	lw	$2, 40($2)
	jr	$ra
p_rgb.2739:
	lw	$2, 0($2)
	jr	$ra
p_intersection_points.2741:
	lw	$2, 4($2)
	jr	$ra
p_surface_ids.2743:
	lw	$2, 8($2)
	jr	$ra
p_calc_diffuse.2745:
	lw	$2, 12($2)
	jr	$ra
p_energy.2747:
	lw	$2, 16($2)
	jr	$ra
p_received_ray_20percent.2749:
	lw	$2, 20($2)
	jr	$ra
p_group_id.2751:
	lw	$2, 24($2)
	lw	$2, 0($2)
	jr	$ra
p_set_group_id.2753:
	lw	$2, 24($2)
	sw	$3, 0($2)
	jr	$ra
p_nvectors.2756:
	lw	$2, 28($2)
	jr	$ra
d_vec.2758:
	lw	$2, 0($2)
	jr	$ra
d_const.2760:
	lw	$2, 4($2)
	jr	$ra
r_surface_id.2762:
	lw	$2, 0($2)
	jr	$ra
r_dvec.2764:
	lw	$2, 4($2)
	jr	$ra
r_bright.2766:
	lw.s	$f2, 8($2)
	jr	$ra
rad.2768:
	lui	$at, 0x3c8e		# 0.017453の上位16bits
	lui	$0, 0xfa35		# 0.017453の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	mul.s	$f2, $f2, $f3
	jr	$ra
read_screen_settings.2770:
	lw	$2, 20($30)
	lw	$3, 16($30)
	lw	$4, 12($30)
	lw	$5, 8($30)
	lw	$6, 4($30)
	sw	$2, 0($sp)
	sw	$4, 4($sp)
	sw	$5, 8($sp)
	sw	$3, 12($sp)
	sw	$6, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_read_float
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$2, 16($sp)
	sw.s	$f2, 0($2)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_read_float
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$2, 16($sp)
	sw.s	$f2, 4($2)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_read_float
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$2, 16($sp)
	sw.s	$f2, 8($2)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_read_float
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	rad.2768
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	sw.s	$f2, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	cos.2601
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw.s	$f3, 20($sp)
	sw.s	$f2, 24($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	sin.2603
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	sw.s	$f2, 28($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_read_float
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	rad.2768
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	sw.s	$f2, 32($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	cos.2601
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw.s	$f3, 32($sp)
	sw.s	$f2, 36($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	sin.2603
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw.s	$f3, 24($sp)
	mul.s	$f4, $f3, $f2
	lui	$at, 0x4348		# 200.000000の上位16bits
	lui	$0, 0x0		# 200.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f5, 4($zero)
	mul.s	$f4, $f4, $f5
	lw	$2, 12($sp)
	sw.s	$f4, 0($2)
	lui	$at, 0xc348		# -200.000000の上位16bits
	lui	$0, 0x0		# -200.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f4, 4($zero)
	lw.s	$f5, 28($sp)
	mul.s	$f4, $f5, $f4
	sw.s	$f4, 4($2)
	lw.s	$f4, 36($sp)
	mul.s	$f6, $f3, $f4
	lui	$at, 0x4348		# 200.000000の上位16bits
	lui	$0, 0x0		# 200.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f7, 4($zero)
	mul.s	$f6, $f6, $f7
	sw.s	$f6, 8($2)
	lw	$3, 8($sp)
	sw.s	$f4, 0($3)
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f6, 4($zero)
	sw.s	$f6, 4($3)
	sw.s	$f2, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	fneg.2593
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw	$2, 8($sp)
	sw.s	$f2, 8($2)
	lw.s	$f2, 28($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	fneg.2593
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw.s	$f3, 40($sp)
	mul.s	$f2, $f2, $f3
	lw	$2, 4($sp)
	sw.s	$f2, 0($2)
	lw.s	$f2, 24($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	fneg.2593
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw	$2, 4($sp)
	sw.s	$f2, 4($2)
	lw.s	$f2, 28($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	fneg.2593
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw.s	$f3, 36($sp)
	mul.s	$f2, $f2, $f3
	lw	$2, 4($sp)
	sw.s	$f2, 8($2)
	lw	$2, 16($sp)
	lw.s	$f2, 0($2)
	lw	$3, 12($sp)
	lw.s	$f3, 0($3)
	sub.s	$f2, $f2, $f3
	lw	$4, 0($sp)
	sw.s	$f2, 0($4)
	lw.s	$f2, 4($2)
	lw.s	$f3, 4($3)
	sub.s	$f2, $f2, $f3
	sw.s	$f2, 4($4)
	lw.s	$f2, 8($2)
	lw.s	$f3, 8($3)
	sub.s	$f2, $f2, $f3
	sw.s	$f2, 8($4)
	jr	$ra
read_light.2772:
	lw	$2, 8($30)
	lw	$3, 4($30)
	sw	$3, 0($sp)
	sw	$2, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_read_int
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_read_float
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	rad.2768
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	sw.s	$f2, 8($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	sin.2603
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	fneg.2593
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$2, 4($sp)
	sw.s	$f2, 4($2)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_read_float
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	rad.2768
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw.s	$f3, 8($sp)
	sw.s	$f2, 12($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	cos.2601
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw.s	$f3, 12($sp)
	sw.s	$f2, 16($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	sin.2603
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw.s	$f3, 16($sp)
	mul.s	$f2, $f3, $f2
	lw	$2, 4($sp)
	sw.s	$f2, 0($2)
	lw.s	$f2, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	cos.2601
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw.s	$f3, 16($sp)
	mul.s	$f2, $f3, $f2
	lw	$2, 4($sp)
	sw.s	$f2, 8($2)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_read_float
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$2, 0($sp)
	sw.s	$f2, 0($2)
	jr	$ra
rotate_quadratic_matrix.2774:
	lw.s	$f2, 0($3)
	sw	$2, 0($sp)
	sw	$3, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	cos.2601
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$2, 4($sp)
	lw.s	$f3, 0($2)
	sw.s	$f2, 8($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	sin.2603
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$2, 4($sp)
	lw.s	$f3, 4($2)
	sw.s	$f2, 12($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	cos.2601
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$2, 4($sp)
	lw.s	$f3, 4($2)
	sw.s	$f2, 16($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	sin.2603
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$2, 4($sp)
	lw.s	$f3, 8($2)
	sw.s	$f2, 20($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	cos.2601
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw	$2, 4($sp)
	lw.s	$f3, 8($2)
	sw.s	$f2, 24($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	sin.2603
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw.s	$f3, 24($sp)
	lw.s	$f4, 16($sp)
	mul.s	$f5, $f4, $f3
	lw.s	$f6, 20($sp)
	lw.s	$f7, 12($sp)
	mul.s	$f8, $f7, $f6
	mul.s	$f8, $f8, $f3
	lw.s	$f9, 8($sp)
	mul.s	$f10, $f9, $f2
	sub.s	$f8, $f8, $f10
	mul.s	$f10, $f9, $f6
	mul.s	$f10, $f10, $f3
	mul.s	$f11, $f7, $f2
	add.s	$f10, $f10, $f11
	mul.s	$f11, $f4, $f2
	mul.s	$f12, $f7, $f6
	mul.s	$f12, $f12, $f2
	mul.s	$f13, $f9, $f3
	add.s	$f12, $f12, $f13
	mul.s	$f13, $f9, $f6
	mul.s	$f2, $f13, $f2
	mul.s	$f3, $f7, $f3
	sub.s	$f2, $f2, $f3
	sw.s	$f2, 28($sp)
	sw.s	$f10, 32($sp)
	sw.s	$f12, 36($sp)
	sw.s	$f8, 40($sp)
	sw.s	$f11, 44($sp)
	sw.s	$f5, 48($sp)
	add.s	$f2, $f0, $f6
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	fneg.2593
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	lw.s	$f3, 16($sp)
	lw.s	$f4, 12($sp)
	mul.s	$f4, $f4, $f3
	lw.s	$f5, 8($sp)
	mul.s	$f3, $f5, $f3
	lw	$2, 0($sp)
	lw.s	$f5, 0($2)
	lw.s	$f6, 4($2)
	lw.s	$f7, 8($2)
	lw.s	$f8, 48($sp)
	sw.s	$f3, 52($sp)
	sw.s	$f4, 56($sp)
	sw.s	$f7, 60($sp)
	sw.s	$f2, 64($sp)
	sw.s	$f6, 68($sp)
	sw.s	$f5, 72($sp)
	add.s	$f2, $f0, $f8
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	fsqr.2589
	addi	$sp, $sp, -80
	lw	$ra, 76($sp)
	lw.s	$f3, 72($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f4, 44($sp)
	sw.s	$f2, 76($sp)
	add.s	$f2, $f0, $f4
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	fsqr.2589
	addi	$sp, $sp, -88
	lw	$ra, 84($sp)
	lw.s	$f3, 68($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f4, 76($sp)
	add.s	$f2, $f4, $f2
	lw.s	$f4, 64($sp)
	sw.s	$f2, 80($sp)
	add.s	$f2, $f0, $f4
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	fsqr.2589
	addi	$sp, $sp, -88
	lw	$ra, 84($sp)
	lw.s	$f3, 60($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f4, 80($sp)
	add.s	$f2, $f4, $f2
	lw	$2, 0($sp)
	sw.s	$f2, 0($2)
	lw.s	$f2, 40($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	fsqr.2589
	addi	$sp, $sp, -88
	lw	$ra, 84($sp)
	lw.s	$f3, 72($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f4, 36($sp)
	sw.s	$f2, 84($sp)
	add.s	$f2, $f0, $f4
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	fsqr.2589
	addi	$sp, $sp, -96
	lw	$ra, 92($sp)
	lw.s	$f3, 68($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f4, 84($sp)
	add.s	$f2, $f4, $f2
	lw.s	$f4, 56($sp)
	sw.s	$f2, 88($sp)
	add.s	$f2, $f0, $f4
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	fsqr.2589
	addi	$sp, $sp, -96
	lw	$ra, 92($sp)
	lw.s	$f3, 60($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f4, 88($sp)
	add.s	$f2, $f4, $f2
	lw	$2, 0($sp)
	sw.s	$f2, 4($2)
	lw.s	$f2, 32($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	fsqr.2589
	addi	$sp, $sp, -96
	lw	$ra, 92($sp)
	lw.s	$f3, 72($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f4, 28($sp)
	sw.s	$f2, 92($sp)
	add.s	$f2, $f0, $f4
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	fsqr.2589
	addi	$sp, $sp, -104
	lw	$ra, 100($sp)
	lw.s	$f3, 68($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f4, 92($sp)
	add.s	$f2, $f4, $f2
	lw.s	$f4, 52($sp)
	sw.s	$f2, 96($sp)
	add.s	$f2, $f0, $f4
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	fsqr.2589
	addi	$sp, $sp, -104
	lw	$ra, 100($sp)
	lw.s	$f3, 60($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f4, 96($sp)
	add.s	$f2, $f4, $f2
	lw	$2, 0($sp)
	sw.s	$f2, 8($2)
	lui	$at, 0x4000		# 2.000000の上位16bits
	lui	$0, 0x0		# 2.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	lw.s	$f4, 40($sp)
	lw.s	$f5, 72($sp)
	mul.s	$f6, $f5, $f4
	lw.s	$f7, 32($sp)
	mul.s	$f6, $f6, $f7
	lw.s	$f8, 36($sp)
	lw.s	$f9, 68($sp)
	mul.s	$f10, $f9, $f8
	lw.s	$f11, 28($sp)
	mul.s	$f10, $f10, $f11
	add.s	$f6, $f6, $f10
	lw.s	$f10, 56($sp)
	mul.s	$f12, $f3, $f10
	lw.s	$f13, 52($sp)
	mul.s	$f12, $f12, $f13
	add.s	$f6, $f6, $f12
	mul.s	$f2, $f2, $f6
	lw	$2, 4($sp)
	sw.s	$f2, 0($2)
	lui	$at, 0x4000		# 2.000000の上位16bits
	lui	$0, 0x0		# 2.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	lw.s	$f6, 48($sp)
	mul.s	$f12, $f5, $f6
	mul.s	$f7, $f12, $f7
	lw.s	$f12, 44($sp)
	mul.s	$f14, $f9, $f12
	mul.s	$f11, $f14, $f11
	add.s	$f7, $f7, $f11
	lw.s	$f11, 64($sp)
	mul.s	$f14, $f3, $f11
	mul.s	$f13, $f14, $f13
	add.s	$f7, $f7, $f13
	mul.s	$f2, $f2, $f7
	sw.s	$f2, 4($2)
	lui	$at, 0x4000		# 2.000000の上位16bits
	lui	$0, 0x0		# 2.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	mul.s	$f5, $f5, $f6
	mul.s	$f4, $f5, $f4
	mul.s	$f5, $f9, $f12
	mul.s	$f5, $f5, $f8
	add.s	$f4, $f4, $f5
	mul.s	$f3, $f3, $f11
	mul.s	$f3, $f3, $f10
	add.s	$f3, $f4, $f3
	mul.s	$f2, $f2, $f3
	sw.s	$f2, 8($2)
	jr	$ra
read_nth_object.2777:
	lw	$3, 4($30)
	sw	$3, 0($sp)
	sw	$2, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_read_int
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	ori	$at, $zero, -1
	bne	$2, $at, beq_else.8997
	ori	$2, $zero, 0
	jr	$ra
beq_else.8997:
	sw	$2, 8($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_read_int
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	sw	$2, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_read_int
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	sw	$2, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_read_int
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	ori	$3, $zero, 3
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$2, 20($sp)
	or	$2, $zero, $3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_float_array
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	sw	$2, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_read_float
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw	$2, 24($sp)
	sw.s	$f2, 0($2)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_read_float
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw	$2, 24($sp)
	sw.s	$f2, 4($2)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_read_float
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw	$2, 24($sp)
	sw.s	$f2, 8($2)
	ori	$3, $zero, 3
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	or	$2, $zero, $3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_float_array
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	sw	$2, 28($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_read_float
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw	$2, 28($sp)
	sw.s	$f2, 0($2)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_read_float
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw	$2, 28($sp)
	sw.s	$f2, 4($2)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_read_float
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw	$2, 28($sp)
	sw.s	$f2, 8($2)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_read_float
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fisneg.2580
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	ori	$3, $zero, 2
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$2, 32($sp)
	or	$2, $zero, $3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	min_caml_create_float_array
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	sw	$2, 36($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_read_float
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw	$2, 36($sp)
	sw.s	$f2, 0($2)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_read_float
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw	$2, 36($sp)
	sw.s	$f2, 4($2)
	ori	$3, $zero, 3
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	or	$2, $zero, $3
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_create_float_array
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	sw	$2, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_read_float
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw	$2, 40($sp)
	sw.s	$f2, 0($2)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_read_float
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw	$2, 40($sp)
	sw.s	$f2, 4($2)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_read_float
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw	$2, 40($sp)
	sw.s	$f2, 8($2)
	ori	$3, $zero, 3
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	or	$2, $zero, $3
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_create_float_array
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw	$3, 20($sp)
	ori	$at, $zero, 0
	bne	$3, $at, beq_else.8998
	j	beq_cont.8999
beq_else.8998:
	sw	$2, 44($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_read_float
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	rad.2768
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	lw	$2, 44($sp)
	sw.s	$f2, 0($2)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_read_float
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	rad.2768
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	lw	$2, 44($sp)
	sw.s	$f2, 4($2)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_read_float
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	rad.2768
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	lw	$2, 44($sp)
	sw.s	$f2, 8($2)
beq_cont.8999:
	lw	$3, 12($sp)
	ori	$at, $zero, 2
	bne	$3, $at, beq_else.9000
	ori	$4, $zero, 1
	j	beq_cont.9001
beq_else.9000:
	lw	$4, 32($sp)
beq_cont.9001:
	ori	$5, $zero, 4
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$4, 48($sp)
	sw	$2, 44($sp)
	or	$2, $zero, $5
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	min_caml_create_float_array
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	or	$3, $zero, $gp
	addi	$gp, $gp, 48
	sw	$2, 40($3)
	lw	$2, 44($sp)
	sw	$2, 36($3)
	lw	$4, 40($sp)
	sw	$4, 32($3)
	lw	$4, 36($sp)
	sw	$4, 28($3)
	lw	$4, 48($sp)
	sw	$4, 24($3)
	lw	$4, 28($sp)
	sw	$4, 20($3)
	lw	$4, 24($sp)
	sw	$4, 16($3)
	lw	$5, 20($sp)
	sw	$5, 12($3)
	lw	$6, 16($sp)
	sw	$6, 8($3)
	lw	$6, 12($sp)
	sw	$6, 4($3)
	lw	$7, 8($sp)
	sw	$7, 0($3)
	lw	$7, 4($sp)
	sll	$7, $7, 2
	lw	$8, 0($sp)
	add	$at, $7, $8
	sw	$3, 0($at)
	ori	$at, $zero, 3
	bne	$6, $at, beq_else.9002
	lw.s	$f2, 0($4)
	sw.s	$f2, 52($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	fiszero.2582
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9004
	lw.s	$f2, 52($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	sgn.2643
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lw.s	$f3, 52($sp)
	sw.s	$f2, 56($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	fsqr.2589
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lw.s	$f3, 56($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	j	beq_cont.9005
beq_else.9004:
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
beq_cont.9005:
	lw	$2, 24($sp)
	sw.s	$f2, 0($2)
	lw.s	$f2, 4($2)
	sw.s	$f2, 60($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	fiszero.2582
	addi	$sp, $sp, -72
	lw	$ra, 68($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9006
	lw.s	$f2, 60($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	sgn.2643
	addi	$sp, $sp, -72
	lw	$ra, 68($sp)
	lw.s	$f3, 60($sp)
	sw.s	$f2, 64($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	fsqr.2589
	addi	$sp, $sp, -72
	lw	$ra, 68($sp)
	lw.s	$f3, 64($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	j	beq_cont.9007
beq_else.9006:
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
beq_cont.9007:
	lw	$2, 24($sp)
	sw.s	$f2, 4($2)
	lw.s	$f2, 8($2)
	sw.s	$f2, 68($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	fiszero.2582
	addi	$sp, $sp, -80
	lw	$ra, 76($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9008
	lw.s	$f2, 68($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	sgn.2643
	addi	$sp, $sp, -80
	lw	$ra, 76($sp)
	lw.s	$f3, 68($sp)
	sw.s	$f2, 72($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	fsqr.2589
	addi	$sp, $sp, -80
	lw	$ra, 76($sp)
	lw.s	$f3, 72($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	j	beq_cont.9009
beq_else.9008:
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
beq_cont.9009:
	lw	$2, 24($sp)
	sw.s	$f2, 8($2)
	j	beq_cont.9003
beq_else.9002:
	ori	$at, $zero, 2
	bne	$6, $at, beq_else.9010
	lw	$3, 32($sp)
	ori	$at, $zero, 0
	bne	$3, $at, beq_else.9012
	ori	$3, $zero, 1
	j	beq_cont.9013
beq_else.9012:
	ori	$3, $zero, 0
beq_cont.9013:
	or	$2, $zero, $4
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	vecunit_sgn.2669
	addi	$sp, $sp, -80
	lw	$ra, 76($sp)
	j	beq_cont.9011
beq_else.9010:
beq_cont.9011:
beq_cont.9003:
	lw	$2, 20($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9014
	j	beq_cont.9015
beq_else.9014:
	lw	$2, 24($sp)
	lw	$3, 44($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	rotate_quadratic_matrix.2774
	addi	$sp, $sp, -80
	lw	$ra, 76($sp)
beq_cont.9015:
	ori	$2, $zero, 1
	jr	$ra
read_object.2779:
	lw	$3, 8($30)
	lw	$4, 4($30)
	slti	$at, $2, 60
	bgtz	$at, blez_else.9016
	jr	$ra
blez_else.9016:
	sw	$30, 0($sp)
	sw	$4, 4($sp)
	sw	$2, 8($sp)
	or	$30, $zero, $3
	sw	$ra, 12($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 16
	li	$ra, tmp.9018
	jr	$27
tmp.9018:
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9019
	lw	$2, 4($sp)
	lw	$3, 8($sp)
	sw	$3, 0($2)
	jr	$ra
beq_else.9019:
	lw	$2, 8($sp)
	addi	$2, $2, 1
	lw	$30, 0($sp)
	lw	$27, 0($30)
	jr	$27
read_all_object.2781:
	lw	$30, 4($30)
	ori	$2, $zero, 0
	lw	$27, 0($30)
	jr	$27
read_net_item.2783:
	sw	$2, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_read_int
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	ori	$at, $zero, -1
	bne	$2, $at, beq_else.9021
	lw	$2, 0($sp)
	addi	$2, $2, 1
	ori	$3, $zero, -1
	j	min_caml_create_array
beq_else.9021:
	lw	$3, 0($sp)
	addi	$4, $3, 1
	sw	$2, 4($sp)
	or	$2, $zero, $4
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	read_net_item.2783
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$3, 0($sp)
	sll	$3, $3, 2
	lw	$4, 4($sp)
	add	$at, $3, $2
	sw	$4, 0($at)
	jr	$ra
read_or_network.2785:
	ori	$3, $zero, 0
	sw	$2, 0($sp)
	or	$2, $zero, $3
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	read_net_item.2783
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	or	$3, $zero, $2
	lw	$2, 0($3)
	ori	$at, $zero, -1
	bne	$2, $at, beq_else.9022
	lw	$2, 0($sp)
	addi	$2, $2, 1
	j	min_caml_create_array
beq_else.9022:
	lw	$2, 0($sp)
	addi	$4, $2, 1
	sw	$3, 4($sp)
	or	$2, $zero, $4
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	read_or_network.2785
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$3, 0($sp)
	sll	$3, $3, 2
	lw	$4, 4($sp)
	add	$at, $3, $2
	sw	$4, 0($at)
	jr	$ra
read_and_network.2787:
	lw	$3, 4($30)
	ori	$4, $zero, 0
	sw	$30, 0($sp)
	sw	$3, 4($sp)
	sw	$2, 8($sp)
	or	$2, $zero, $4
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	read_net_item.2783
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$3, 0($2)
	ori	$at, $zero, -1
	bne	$3, $at, beq_else.9023
	jr	$ra
beq_else.9023:
	lw	$3, 8($sp)
	sll	$4, $3, 2
	lw	$5, 4($sp)
	add	$at, $4, $5
	sw	$2, 0($at)
	addi	$2, $3, 1
	lw	$30, 0($sp)
	lw	$27, 0($30)
	jr	$27
read_parameter.2789:
	lw	$2, 20($30)
	lw	$3, 16($30)
	lw	$4, 12($30)
	lw	$5, 8($30)
	lw	$6, 4($30)
	sw	$6, 0($sp)
	sw	$4, 4($sp)
	sw	$5, 8($sp)
	sw	$3, 12($sp)
	or	$30, $zero, $2
	sw	$ra, 20($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 24
	li	$ra, tmp.9025
	jr	$27
tmp.9025:
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$30, 12($sp)
	sw	$ra, 20($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 24
	li	$ra, tmp.9026
	jr	$27
tmp.9026:
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$30, 8($sp)
	sw	$ra, 20($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 24
	li	$ra, tmp.9027
	jr	$27
tmp.9027:
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	ori	$2, $zero, 0
	lw	$30, 4($sp)
	sw	$ra, 20($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 24
	li	$ra, tmp.9028
	jr	$27
tmp.9028:
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	ori	$2, $zero, 0
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	read_or_network.2785
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$3, 0($sp)
	sw	$2, 0($3)
	jr	$ra
solver_rect_surface.2791:
	lw	$7, 4($30)
	sll	$8, $4, 2
	add	$at, $8, $3
	lw.s	$f5, 0($at)
	sw	$7, 0($sp)
	sw.s	$f4, 4($sp)
	sw	$6, 8($sp)
	sw.s	$f3, 12($sp)
	sw	$5, 16($sp)
	sw.s	$f2, 20($sp)
	sw	$3, 24($sp)
	sw	$4, 28($sp)
	sw	$2, 32($sp)
	add.s	$f2, $f0, $f5
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fiszero.2582
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9030
	lw	$2, 32($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_abc.2713
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw	$3, 32($sp)
	sw	$2, 36($sp)
	or	$2, $zero, $3
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_isinvert.2703
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw	$3, 28($sp)
	sll	$4, $3, 2
	lw	$5, 24($sp)
	add	$at, $4, $5
	lw.s	$f2, 0($at)
	sw	$2, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	fisneg.2580
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	or	$3, $zero, $2
	lw	$2, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	xor.2640
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw	$3, 28($sp)
	sll	$4, $3, 2
	lw	$5, 36($sp)
	add	$at, $4, $5
	lw.s	$f2, 0($at)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	fneg_cond.2645
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw.s	$f3, 20($sp)
	sub.s	$f2, $f2, $f3
	lw	$2, 28($sp)
	sll	$2, $2, 2
	lw	$3, 24($sp)
	add	$at, $2, $3
	lw.s	$f3, 0($at)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	lw	$2, 16($sp)
	sll	$4, $2, 2
	add	$at, $4, $3
	lw.s	$f3, 0($at)
	mul.s	$f3, $f2, $f3
	lw.s	$f4, 12($sp)
	add.s	$f3, $f3, $f4
	sw.s	$f2, 44($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	fabs.2591
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	lw	$2, 16($sp)
	sll	$2, $2, 2
	lw	$3, 36($sp)
	add	$at, $2, $3
	lw.s	$f3, 0($at)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	fless.2575
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9031
	ori	$2, $zero, 0
	jr	$ra
beq_else.9031:
	lw	$2, 8($sp)
	sll	$3, $2, 2
	lw	$4, 24($sp)
	add	$at, $3, $4
	lw.s	$f2, 0($at)
	lw.s	$f3, 44($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f4, 4($sp)
	add.s	$f2, $f2, $f4
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	fabs.2591
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	lw	$2, 8($sp)
	sll	$2, $2, 2
	lw	$3, 36($sp)
	add	$at, $2, $3
	lw.s	$f3, 0($at)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	fless.2575
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9032
	ori	$2, $zero, 0
	jr	$ra
beq_else.9032:
	lw	$2, 0($sp)
	lw.s	$f2, 44($sp)
	sw.s	$f2, 0($2)
	ori	$2, $zero, 1
	jr	$ra
beq_else.9030:
	ori	$2, $zero, 0
	jr	$ra
solver_rect.2800:
	lw	$30, 4($30)
	ori	$4, $zero, 0
	ori	$5, $zero, 1
	ori	$6, $zero, 2
	sw.s	$f2, 0($sp)
	sw.s	$f4, 4($sp)
	sw.s	$f3, 8($sp)
	sw	$3, 12($sp)
	sw	$2, 16($sp)
	sw	$30, 20($sp)
	sw	$ra, 28($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 32
	li	$ra, tmp.9033
	jr	$27
tmp.9033:
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9034
	ori	$4, $zero, 1
	ori	$5, $zero, 2
	ori	$6, $zero, 0
	lw.s	$f2, 8($sp)
	lw.s	$f3, 4($sp)
	lw.s	$f4, 0($sp)
	lw	$2, 16($sp)
	lw	$3, 12($sp)
	lw	$30, 20($sp)
	sw	$ra, 28($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 32
	li	$ra, tmp.9035
	jr	$27
tmp.9035:
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9036
	ori	$4, $zero, 2
	ori	$5, $zero, 0
	ori	$6, $zero, 1
	lw.s	$f2, 4($sp)
	lw.s	$f3, 0($sp)
	lw.s	$f4, 8($sp)
	lw	$2, 16($sp)
	lw	$3, 12($sp)
	lw	$30, 20($sp)
	sw	$ra, 28($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 32
	li	$ra, tmp.9037
	jr	$27
tmp.9037:
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9038
	ori	$2, $zero, 0
	jr	$ra
beq_else.9038:
	ori	$2, $zero, 3
	jr	$ra
beq_else.9036:
	ori	$2, $zero, 2
	jr	$ra
beq_else.9034:
	ori	$2, $zero, 1
	jr	$ra
solver_surface.2806:
	lw	$4, 4($30)
	sw	$4, 0($sp)
	sw.s	$f4, 4($sp)
	sw.s	$f3, 8($sp)
	sw.s	$f2, 12($sp)
	sw	$3, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_param_abc.2713
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	or	$3, $zero, $2
	lw	$2, 16($sp)
	sw	$3, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	veciprod.2672
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	sw.s	$f2, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	fispos.2578
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9039
	ori	$2, $zero, 0
	jr	$ra
beq_else.9039:
	lw.s	$f2, 12($sp)
	lw.s	$f3, 8($sp)
	lw.s	$f4, 4($sp)
	lw	$2, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	veciprod2.2675
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	fneg.2593
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw.s	$f3, 24($sp)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	lw	$2, 0($sp)
	sw.s	$f2, 0($2)
	ori	$2, $zero, 1
	jr	$ra
quadratic.2812:
	sw.s	$f2, 0($sp)
	sw.s	$f4, 4($sp)
	sw.s	$f3, 8($sp)
	sw	$2, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	fsqr.2589
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$2, 12($sp)
	sw.s	$f2, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_param_a.2707
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw.s	$f3, 16($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f3, 8($sp)
	sw.s	$f2, 20($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	fsqr.2589
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw	$2, 12($sp)
	sw.s	$f2, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	o_param_b.2709
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw.s	$f3, 24($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f3, 20($sp)
	add.s	$f2, $f3, $f2
	lw.s	$f3, 4($sp)
	sw.s	$f2, 28($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fsqr.2589
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw	$2, 12($sp)
	sw.s	$f2, 32($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_c.2711
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw.s	$f3, 32($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f3, 28($sp)
	add.s	$f2, $f3, $f2
	lw	$2, 12($sp)
	sw.s	$f2, 36($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_isrot.2705
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9040
	lw.s	$f2, 36($sp)
	jr	$ra
beq_else.9040:
	lw.s	$f2, 4($sp)
	lw.s	$f3, 8($sp)
	mul.s	$f4, $f3, $f2
	lw	$2, 12($sp)
	sw.s	$f4, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_param_r1.2731
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw.s	$f3, 40($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f3, 36($sp)
	add.s	$f2, $f3, $f2
	lw.s	$f3, 0($sp)
	lw.s	$f4, 4($sp)
	mul.s	$f4, $f4, $f3
	lw	$2, 12($sp)
	sw.s	$f2, 44($sp)
	sw.s	$f4, 48($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	o_param_r2.2733
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	lw.s	$f3, 48($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f3, 44($sp)
	add.s	$f2, $f3, $f2
	lw.s	$f3, 8($sp)
	lw.s	$f4, 0($sp)
	mul.s	$f3, $f4, $f3
	lw	$2, 12($sp)
	sw.s	$f2, 52($sp)
	sw.s	$f3, 56($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	o_param_r3.2735
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lw.s	$f3, 56($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f3, 52($sp)
	add.s	$f2, $f3, $f2
	jr	$ra
bilinear.2817:
	mul.s	$f8, $f2, $f5
	sw.s	$f5, 0($sp)
	sw.s	$f2, 4($sp)
	sw.s	$f7, 8($sp)
	sw.s	$f4, 12($sp)
	sw	$2, 16($sp)
	sw.s	$f6, 20($sp)
	sw.s	$f3, 24($sp)
	sw.s	$f8, 28($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_a.2707
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw.s	$f3, 28($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f3, 20($sp)
	lw.s	$f4, 24($sp)
	mul.s	$f5, $f4, $f3
	lw	$2, 16($sp)
	sw.s	$f2, 32($sp)
	sw.s	$f5, 36($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_param_b.2709
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw.s	$f3, 36($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f3, 32($sp)
	add.s	$f2, $f3, $f2
	lw.s	$f3, 8($sp)
	lw.s	$f4, 12($sp)
	mul.s	$f5, $f4, $f3
	lw	$2, 16($sp)
	sw.s	$f2, 40($sp)
	sw.s	$f5, 44($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	o_param_c.2711
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	lw.s	$f3, 44($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f3, 40($sp)
	add.s	$f2, $f3, $f2
	lw	$2, 16($sp)
	sw.s	$f2, 48($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	o_isrot.2705
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9041
	lw.s	$f2, 48($sp)
	jr	$ra
beq_else.9041:
	lw.s	$f2, 20($sp)
	lw.s	$f3, 12($sp)
	mul.s	$f4, $f3, $f2
	lw.s	$f5, 8($sp)
	lw.s	$f6, 24($sp)
	mul.s	$f7, $f6, $f5
	add.s	$f4, $f4, $f7
	lw	$2, 16($sp)
	sw.s	$f4, 52($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	o_param_r1.2731
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lw.s	$f3, 52($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f3, 8($sp)
	lw.s	$f4, 4($sp)
	mul.s	$f3, $f4, $f3
	lw.s	$f5, 0($sp)
	lw.s	$f6, 12($sp)
	mul.s	$f6, $f6, $f5
	add.s	$f3, $f3, $f6
	lw	$2, 16($sp)
	sw.s	$f2, 56($sp)
	sw.s	$f3, 60($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	o_param_r2.2733
	addi	$sp, $sp, -72
	lw	$ra, 68($sp)
	lw.s	$f3, 60($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f3, 56($sp)
	add.s	$f2, $f3, $f2
	lw.s	$f3, 20($sp)
	lw.s	$f4, 4($sp)
	mul.s	$f3, $f4, $f3
	lw.s	$f4, 0($sp)
	lw.s	$f5, 24($sp)
	mul.s	$f4, $f5, $f4
	add.s	$f3, $f3, $f4
	lw	$2, 16($sp)
	sw.s	$f2, 64($sp)
	sw.s	$f3, 68($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	o_param_r3.2735
	addi	$sp, $sp, -80
	lw	$ra, 76($sp)
	lw.s	$f3, 68($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f3, 64($sp)
	add.s	$f2, $f3, $f2
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	fhalf.2587
	addi	$sp, $sp, -80
	lw	$ra, 76($sp)
	lw.s	$f3, 48($sp)
	add.s	$f2, $f3, $f2
	jr	$ra
solver_second.2825:
	lw	$4, 4($30)
	lw.s	$f5, 0($3)
	lw.s	$f6, 4($3)
	lw.s	$f7, 8($3)
	sw	$4, 0($sp)
	sw.s	$f4, 4($sp)
	sw.s	$f3, 8($sp)
	sw.s	$f2, 12($sp)
	sw	$2, 16($sp)
	sw	$3, 20($sp)
	add.s	$f4, $f0, $f7
	add.s	$f3, $f0, $f6
	add.s	$f2, $f0, $f5
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	quadratic.2812
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	sw.s	$f2, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	fiszero.2582
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9042
	lw	$2, 20($sp)
	lw.s	$f2, 0($2)
	lw.s	$f3, 4($2)
	lw.s	$f4, 8($2)
	lw.s	$f5, 12($sp)
	lw.s	$f6, 8($sp)
	lw.s	$f7, 4($sp)
	lw	$2, 16($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	bilinear.2817
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw.s	$f3, 12($sp)
	lw.s	$f4, 8($sp)
	lw.s	$f5, 4($sp)
	lw	$2, 16($sp)
	sw.s	$f2, 28($sp)
	add.s	$f2, $f0, $f3
	add.s	$f3, $f0, $f4
	add.s	$f4, $f0, $f5
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	quadratic.2812
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw	$2, 16($sp)
	sw.s	$f2, 32($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_form.2699
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	ori	$at, $zero, 3
	bne	$2, $at, beq_else.9043
	lui	$at, 0x3f80		# 1.000000の上位16bits
	lui	$0, 0x0		# 1.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	lw.s	$f3, 32($sp)
	sub.s	$f2, $f3, $f2
	j	beq_cont.9044
beq_else.9043:
	lw.s	$f2, 32($sp)
beq_cont.9044:
	lw.s	$f3, 28($sp)
	sw.s	$f2, 36($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	fsqr.2589
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw.s	$f3, 36($sp)
	lw.s	$f4, 24($sp)
	mul.s	$f3, $f4, $f3
	sub.s	$f2, $f2, $f3
	sw.s	$f2, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	fispos.2578
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9045
	ori	$2, $zero, 0
	jr	$ra
beq_else.9045:
	lw.s	$f2, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_sqrt
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw	$2, 16($sp)
	sw.s	$f2, 44($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	o_isinvert.2703
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9046
	lw.s	$f2, 44($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	fneg.2593
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	j	beq_cont.9047
beq_else.9046:
	lw.s	$f2, 44($sp)
beq_cont.9047:
	lw.s	$f3, 28($sp)
	sub.s	$f2, $f2, $f3
	lw.s	$f3, 24($sp)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	lw	$2, 0($sp)
	sw.s	$f2, 0($2)
	ori	$2, $zero, 1
	jr	$ra
beq_else.9042:
	ori	$2, $zero, 0
	jr	$ra
solver.2831:
	lw	$5, 16($30)
	lw	$6, 12($30)
	lw	$7, 8($30)
	lw	$8, 4($30)
	sll	$2, $2, 2
	add	$at, $2, $8
	lw	$2, 0($at)
	lw.s	$f2, 0($4)
	sw	$6, 0($sp)
	sw	$5, 4($sp)
	sw	$3, 8($sp)
	sw	$7, 12($sp)
	sw	$2, 16($sp)
	sw	$4, 20($sp)
	sw.s	$f2, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	o_param_x.2715
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw.s	$f3, 24($sp)
	sub.s	$f2, $f3, $f2
	lw	$2, 20($sp)
	lw.s	$f3, 4($2)
	lw	$3, 16($sp)
	sw.s	$f2, 28($sp)
	sw.s	$f3, 32($sp)
	or	$2, $zero, $3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_y.2717
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw.s	$f3, 32($sp)
	sub.s	$f2, $f3, $f2
	lw	$2, 20($sp)
	lw.s	$f3, 8($2)
	lw	$2, 16($sp)
	sw.s	$f2, 36($sp)
	sw.s	$f3, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_param_z.2719
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw.s	$f3, 40($sp)
	sub.s	$f2, $f3, $f2
	lw	$2, 16($sp)
	sw.s	$f2, 44($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	o_form.2699
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	ori	$at, $zero, 1
	bne	$2, $at, beq_else.9048
	lw.s	$f2, 28($sp)
	lw.s	$f3, 36($sp)
	lw.s	$f4, 44($sp)
	lw	$2, 16($sp)
	lw	$3, 8($sp)
	lw	$30, 12($sp)
	lw	$27, 0($30)
	jr	$27
beq_else.9048:
	ori	$at, $zero, 2
	bne	$2, $at, beq_else.9049
	lw.s	$f2, 28($sp)
	lw.s	$f3, 36($sp)
	lw.s	$f4, 44($sp)
	lw	$2, 16($sp)
	lw	$3, 8($sp)
	lw	$30, 4($sp)
	lw	$27, 0($30)
	jr	$27
beq_else.9049:
	lw.s	$f2, 28($sp)
	lw.s	$f3, 36($sp)
	lw.s	$f4, 44($sp)
	lw	$2, 16($sp)
	lw	$3, 8($sp)
	lw	$30, 0($sp)
	lw	$27, 0($30)
	jr	$27
solver_rect_fast.2835:
	lw	$5, 4($30)
	lw.s	$f5, 0($4)
	sub.s	$f5, $f5, $f2
	lw.s	$f6, 4($4)
	mul.s	$f5, $f5, $f6
	lw.s	$f6, 4($3)
	mul.s	$f6, $f5, $f6
	add.s	$f6, $f6, $f3
	sw	$5, 0($sp)
	sw.s	$f2, 4($sp)
	sw.s	$f3, 8($sp)
	sw	$4, 12($sp)
	sw.s	$f4, 16($sp)
	sw.s	$f5, 20($sp)
	sw	$3, 24($sp)
	sw	$2, 28($sp)
	add.s	$f2, $f0, $f6
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fabs.2591
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw	$2, 28($sp)
	sw.s	$f2, 32($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_b.2709
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	add.s	$f3, $f0, $f2
	lw.s	$f2, 32($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fless.2575
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9050
	ori	$2, $zero, 0
	j	beq_cont.9051
beq_else.9050:
	lw	$2, 24($sp)
	lw.s	$f2, 8($2)
	lw.s	$f3, 20($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f4, 16($sp)
	add.s	$f2, $f2, $f4
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fabs.2591
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw	$2, 28($sp)
	sw.s	$f2, 36($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_param_c.2711
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	add.s	$f3, $f0, $f2
	lw.s	$f2, 36($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	fless.2575
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9052
	ori	$2, $zero, 0
	j	beq_cont.9053
beq_else.9052:
	lw	$2, 12($sp)
	lw.s	$f2, 4($2)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	fiszero.2582
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9054
	ori	$2, $zero, 1
	j	beq_cont.9055
beq_else.9054:
	ori	$2, $zero, 0
beq_cont.9055:
beq_cont.9053:
beq_cont.9051:
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9056
	lw	$2, 12($sp)
	lw.s	$f2, 8($2)
	lw.s	$f3, 8($sp)
	sub.s	$f2, $f2, $f3
	lw.s	$f4, 12($2)
	mul.s	$f2, $f2, $f4
	lw	$3, 24($sp)
	lw.s	$f4, 0($3)
	mul.s	$f4, $f2, $f4
	lw.s	$f5, 4($sp)
	add.s	$f4, $f4, $f5
	sw.s	$f2, 40($sp)
	add.s	$f2, $f0, $f4
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	fabs.2591
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw	$2, 28($sp)
	sw.s	$f2, 44($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	o_param_a.2707
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	add.s	$f3, $f0, $f2
	lw.s	$f2, 44($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	fless.2575
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9057
	ori	$2, $zero, 0
	j	beq_cont.9058
beq_else.9057:
	lw	$2, 24($sp)
	lw.s	$f2, 8($2)
	lw.s	$f3, 40($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f4, 16($sp)
	add.s	$f2, $f2, $f4
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	fabs.2591
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	lw	$2, 28($sp)
	sw.s	$f2, 48($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	o_param_c.2711
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	add.s	$f3, $f0, $f2
	lw.s	$f2, 48($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	fless.2575
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9059
	ori	$2, $zero, 0
	j	beq_cont.9060
beq_else.9059:
	lw	$2, 12($sp)
	lw.s	$f2, 12($2)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	fiszero.2582
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9061
	ori	$2, $zero, 1
	j	beq_cont.9062
beq_else.9061:
	ori	$2, $zero, 0
beq_cont.9062:
beq_cont.9060:
beq_cont.9058:
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9063
	lw	$2, 12($sp)
	lw.s	$f2, 16($2)
	lw.s	$f3, 16($sp)
	sub.s	$f2, $f2, $f3
	lw.s	$f3, 20($2)
	mul.s	$f2, $f2, $f3
	lw	$3, 24($sp)
	lw.s	$f3, 0($3)
	mul.s	$f3, $f2, $f3
	lw.s	$f4, 4($sp)
	add.s	$f3, $f3, $f4
	sw.s	$f2, 52($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	fabs.2591
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lw	$2, 28($sp)
	sw.s	$f2, 56($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	o_param_a.2707
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	add.s	$f3, $f0, $f2
	lw.s	$f2, 56($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	fless.2575
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9064
	ori	$2, $zero, 0
	j	beq_cont.9065
beq_else.9064:
	lw	$2, 24($sp)
	lw.s	$f2, 4($2)
	lw.s	$f3, 52($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f4, 8($sp)
	add.s	$f2, $f2, $f4
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	fabs.2591
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lw	$2, 28($sp)
	sw.s	$f2, 60($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	o_param_b.2709
	addi	$sp, $sp, -72
	lw	$ra, 68($sp)
	add.s	$f3, $f0, $f2
	lw.s	$f2, 60($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	fless.2575
	addi	$sp, $sp, -72
	lw	$ra, 68($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9066
	ori	$2, $zero, 0
	j	beq_cont.9067
beq_else.9066:
	lw	$2, 12($sp)
	lw.s	$f2, 20($2)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	fiszero.2582
	addi	$sp, $sp, -72
	lw	$ra, 68($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9068
	ori	$2, $zero, 1
	j	beq_cont.9069
beq_else.9068:
	ori	$2, $zero, 0
beq_cont.9069:
beq_cont.9067:
beq_cont.9065:
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9070
	ori	$2, $zero, 0
	jr	$ra
beq_else.9070:
	lw	$2, 0($sp)
	lw.s	$f2, 52($sp)
	sw.s	$f2, 0($2)
	ori	$2, $zero, 3
	jr	$ra
beq_else.9063:
	lw	$2, 0($sp)
	lw.s	$f2, 40($sp)
	sw.s	$f2, 0($2)
	ori	$2, $zero, 2
	jr	$ra
beq_else.9056:
	lw	$2, 0($sp)
	lw.s	$f2, 20($sp)
	sw.s	$f2, 0($2)
	ori	$2, $zero, 1
	jr	$ra
solver_surface_fast.2842:
	lw	$2, 4($30)
	lw.s	$f5, 0($3)
	sw	$2, 0($sp)
	sw.s	$f4, 4($sp)
	sw.s	$f3, 8($sp)
	sw.s	$f2, 12($sp)
	sw	$3, 16($sp)
	add.s	$f2, $f0, $f5
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	fisneg.2580
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9071
	ori	$2, $zero, 0
	jr	$ra
beq_else.9071:
	lw	$2, 16($sp)
	lw.s	$f2, 4($2)
	lw.s	$f3, 12($sp)
	mul.s	$f2, $f2, $f3
	lw.s	$f3, 8($2)
	lw.s	$f4, 8($sp)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	lw.s	$f3, 12($2)
	lw.s	$f4, 4($sp)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	lw	$2, 0($sp)
	sw.s	$f2, 0($2)
	ori	$2, $zero, 1
	jr	$ra
solver_second_fast.2848:
	lw	$4, 4($30)
	lw.s	$f5, 0($3)
	sw	$4, 0($sp)
	sw.s	$f5, 4($sp)
	sw	$2, 8($sp)
	sw.s	$f4, 12($sp)
	sw.s	$f3, 16($sp)
	sw.s	$f2, 20($sp)
	sw	$3, 24($sp)
	add.s	$f2, $f0, $f5
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	fiszero.2582
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9072
	lw	$2, 24($sp)
	lw.s	$f2, 4($2)
	lw.s	$f3, 20($sp)
	mul.s	$f2, $f2, $f3
	lw.s	$f4, 8($2)
	lw.s	$f5, 16($sp)
	mul.s	$f4, $f4, $f5
	add.s	$f2, $f2, $f4
	lw.s	$f4, 12($2)
	lw.s	$f6, 12($sp)
	mul.s	$f4, $f4, $f6
	add.s	$f2, $f2, $f4
	lw	$3, 8($sp)
	sw.s	$f2, 28($sp)
	or	$2, $zero, $3
	add.s	$f4, $f0, $f6
	add.s	$f2, $f0, $f3
	add.s	$f3, $f0, $f5
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	quadratic.2812
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw	$2, 8($sp)
	sw.s	$f2, 32($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_form.2699
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	ori	$at, $zero, 3
	bne	$2, $at, beq_else.9073
	lui	$at, 0x3f80		# 1.000000の上位16bits
	lui	$0, 0x0		# 1.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	lw.s	$f3, 32($sp)
	sub.s	$f2, $f3, $f2
	j	beq_cont.9074
beq_else.9073:
	lw.s	$f2, 32($sp)
beq_cont.9074:
	lw.s	$f3, 28($sp)
	sw.s	$f2, 36($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	fsqr.2589
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw.s	$f3, 36($sp)
	lw.s	$f4, 4($sp)
	mul.s	$f3, $f4, $f3
	sub.s	$f2, $f2, $f3
	sw.s	$f2, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	fispos.2578
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9075
	ori	$2, $zero, 0
	jr	$ra
beq_else.9075:
	lw	$2, 8($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_isinvert.2703
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9076
	lw.s	$f2, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_sqrt
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw.s	$f3, 28($sp)
	sub.s	$f2, $f3, $f2
	lw	$2, 24($sp)
	lw.s	$f3, 16($2)
	mul.s	$f2, $f2, $f3
	lw	$2, 0($sp)
	sw.s	$f2, 0($2)
	j	beq_cont.9077
beq_else.9076:
	lw.s	$f2, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_sqrt
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw.s	$f3, 28($sp)
	add.s	$f2, $f3, $f2
	lw	$2, 24($sp)
	lw.s	$f3, 16($2)
	mul.s	$f2, $f2, $f3
	lw	$2, 0($sp)
	sw.s	$f2, 0($2)
beq_cont.9077:
	ori	$2, $zero, 1
	jr	$ra
beq_else.9072:
	ori	$2, $zero, 0
	jr	$ra
solver_fast.2854:
	lw	$5, 16($30)
	lw	$6, 12($30)
	lw	$7, 8($30)
	lw	$8, 4($30)
	sll	$9, $2, 2
	add	$at, $9, $8
	lw	$8, 0($at)
	lw.s	$f2, 0($4)
	sw	$6, 0($sp)
	sw	$5, 4($sp)
	sw	$7, 8($sp)
	sw	$2, 12($sp)
	sw	$3, 16($sp)
	sw	$8, 20($sp)
	sw	$4, 24($sp)
	sw.s	$f2, 28($sp)
	or	$2, $zero, $8
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_x.2715
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw.s	$f3, 28($sp)
	sub.s	$f2, $f3, $f2
	lw	$2, 24($sp)
	lw.s	$f3, 4($2)
	lw	$3, 20($sp)
	sw.s	$f2, 32($sp)
	sw.s	$f3, 36($sp)
	or	$2, $zero, $3
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_param_y.2717
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw.s	$f3, 36($sp)
	sub.s	$f2, $f3, $f2
	lw	$2, 24($sp)
	lw.s	$f3, 8($2)
	lw	$2, 20($sp)
	sw.s	$f2, 40($sp)
	sw.s	$f3, 44($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	o_param_z.2719
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	lw.s	$f3, 44($sp)
	sub.s	$f2, $f3, $f2
	lw	$2, 16($sp)
	sw.s	$f2, 48($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	d_const.2760
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	lw	$3, 12($sp)
	sll	$3, $3, 2
	add	$at, $3, $2
	lw	$2, 0($at)
	lw	$3, 20($sp)
	sw	$2, 52($sp)
	or	$2, $zero, $3
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	o_form.2699
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	ori	$at, $zero, 1
	bne	$2, $at, beq_else.9078
	lw	$2, 16($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	d_vec.2758
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	or	$3, $zero, $2
	lw.s	$f2, 32($sp)
	lw.s	$f3, 40($sp)
	lw.s	$f4, 48($sp)
	lw	$2, 20($sp)
	lw	$4, 52($sp)
	lw	$30, 8($sp)
	lw	$27, 0($30)
	jr	$27
beq_else.9078:
	ori	$at, $zero, 2
	bne	$2, $at, beq_else.9079
	lw.s	$f2, 32($sp)
	lw.s	$f3, 40($sp)
	lw.s	$f4, 48($sp)
	lw	$2, 20($sp)
	lw	$3, 52($sp)
	lw	$30, 4($sp)
	lw	$27, 0($30)
	jr	$27
beq_else.9079:
	lw.s	$f2, 32($sp)
	lw.s	$f3, 40($sp)
	lw.s	$f4, 48($sp)
	lw	$2, 20($sp)
	lw	$3, 52($sp)
	lw	$30, 0($sp)
	lw	$27, 0($30)
	jr	$27
solver_surface_fast2.2858:
	lw	$2, 4($30)
	lw.s	$f2, 0($3)
	sw	$2, 0($sp)
	sw	$4, 4($sp)
	sw	$3, 8($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	fisneg.2580
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9080
	ori	$2, $zero, 0
	jr	$ra
beq_else.9080:
	lw	$2, 8($sp)
	lw.s	$f2, 0($2)
	lw	$2, 4($sp)
	lw.s	$f3, 12($2)
	mul.s	$f2, $f2, $f3
	lw	$2, 0($sp)
	sw.s	$f2, 0($2)
	ori	$2, $zero, 1
	jr	$ra
solver_second_fast2.2865:
	lw	$5, 4($30)
	lw.s	$f5, 0($3)
	sw	$5, 0($sp)
	sw	$2, 4($sp)
	sw.s	$f5, 8($sp)
	sw	$4, 12($sp)
	sw.s	$f4, 16($sp)
	sw.s	$f3, 20($sp)
	sw.s	$f2, 24($sp)
	sw	$3, 28($sp)
	add.s	$f2, $f0, $f5
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fiszero.2582
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9081
	lw	$2, 28($sp)
	lw.s	$f2, 4($2)
	lw.s	$f3, 24($sp)
	mul.s	$f2, $f2, $f3
	lw.s	$f3, 8($2)
	lw.s	$f4, 20($sp)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	lw.s	$f3, 12($2)
	lw.s	$f4, 16($sp)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	lw	$3, 12($sp)
	lw.s	$f3, 12($3)
	sw.s	$f2, 32($sp)
	sw.s	$f3, 36($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	fsqr.2589
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw.s	$f3, 36($sp)
	lw.s	$f4, 8($sp)
	mul.s	$f3, $f4, $f3
	sub.s	$f2, $f2, $f3
	sw.s	$f2, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	fispos.2578
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9082
	ori	$2, $zero, 0
	jr	$ra
beq_else.9082:
	lw	$2, 4($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_isinvert.2703
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9083
	lw.s	$f2, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_sqrt
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw.s	$f3, 32($sp)
	sub.s	$f2, $f3, $f2
	lw	$2, 28($sp)
	lw.s	$f3, 16($2)
	mul.s	$f2, $f2, $f3
	lw	$2, 0($sp)
	sw.s	$f2, 0($2)
	j	beq_cont.9084
beq_else.9083:
	lw.s	$f2, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	min_caml_sqrt
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw.s	$f3, 32($sp)
	add.s	$f2, $f3, $f2
	lw	$2, 28($sp)
	lw.s	$f3, 16($2)
	mul.s	$f2, $f2, $f3
	lw	$2, 0($sp)
	sw.s	$f2, 0($2)
beq_cont.9084:
	ori	$2, $zero, 1
	jr	$ra
beq_else.9081:
	ori	$2, $zero, 0
	jr	$ra
solver_fast2.2872:
	lw	$4, 16($30)
	lw	$5, 12($30)
	lw	$6, 8($30)
	lw	$7, 4($30)
	sll	$8, $2, 2
	add	$at, $8, $7
	lw	$7, 0($at)
	sw	$5, 0($sp)
	sw	$4, 4($sp)
	sw	$6, 8($sp)
	sw	$7, 12($sp)
	sw	$2, 16($sp)
	sw	$3, 20($sp)
	or	$2, $zero, $7
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	o_param_ctbl.2737
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw.s	$f2, 0($2)
	lw.s	$f3, 4($2)
	lw.s	$f4, 8($2)
	lw	$3, 20($sp)
	sw	$2, 24($sp)
	sw.s	$f4, 28($sp)
	sw.s	$f3, 32($sp)
	sw.s	$f2, 36($sp)
	or	$2, $zero, $3
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	d_const.2760
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw	$3, 16($sp)
	sll	$3, $3, 2
	add	$at, $3, $2
	lw	$2, 0($at)
	lw	$3, 12($sp)
	sw	$2, 40($sp)
	or	$2, $zero, $3
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_form.2699
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	ori	$at, $zero, 1
	bne	$2, $at, beq_else.9085
	lw	$2, 20($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	d_vec.2758
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	or	$3, $zero, $2
	lw.s	$f2, 36($sp)
	lw.s	$f3, 32($sp)
	lw.s	$f4, 28($sp)
	lw	$2, 12($sp)
	lw	$4, 40($sp)
	lw	$30, 8($sp)
	lw	$27, 0($30)
	jr	$27
beq_else.9085:
	ori	$at, $zero, 2
	bne	$2, $at, beq_else.9086
	lw.s	$f2, 36($sp)
	lw.s	$f3, 32($sp)
	lw.s	$f4, 28($sp)
	lw	$2, 12($sp)
	lw	$3, 40($sp)
	lw	$4, 24($sp)
	lw	$30, 4($sp)
	lw	$27, 0($30)
	jr	$27
beq_else.9086:
	lw.s	$f2, 36($sp)
	lw.s	$f3, 32($sp)
	lw.s	$f4, 28($sp)
	lw	$2, 12($sp)
	lw	$3, 40($sp)
	lw	$4, 24($sp)
	lw	$30, 0($sp)
	lw	$27, 0($30)
	jr	$27
setup_rect_table.2875:
	ori	$4, $zero, 6
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$3, 0($sp)
	sw	$2, 4($sp)
	or	$2, $zero, $4
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$3, 4($sp)
	lw.s	$f2, 0($3)
	sw	$2, 8($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	fiszero.2582
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9087
	lw	$2, 0($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	o_isinvert.2703
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$3, 4($sp)
	lw.s	$f2, 0($3)
	sw	$2, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	fisneg.2580
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	or	$3, $zero, $2
	lw	$2, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	xor.2640
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$3, 0($sp)
	sw	$2, 16($sp)
	or	$2, $zero, $3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_param_a.2707
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$2, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	fneg_cond.2645
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$2, 8($sp)
	sw.s	$f2, 0($2)
	lui	$at, 0x3f80		# 1.000000の上位16bits
	lui	$0, 0x0		# 1.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	lw	$3, 4($sp)
	lw.s	$f3, 0($3)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	sw.s	$f2, 4($2)
	j	beq_cont.9088
beq_else.9087:
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	lw	$2, 8($sp)
	sw.s	$f2, 4($2)
beq_cont.9088:
	lw	$3, 4($sp)
	lw.s	$f2, 4($3)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	fiszero.2582
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9089
	lw	$2, 0($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_isinvert.2703
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$3, 4($sp)
	lw.s	$f2, 4($3)
	sw	$2, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	fisneg.2580
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	or	$3, $zero, $2
	lw	$2, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	xor.2640
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw	$3, 0($sp)
	sw	$2, 24($sp)
	or	$2, $zero, $3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	o_param_b.2709
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw	$2, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	fneg_cond.2645
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw	$2, 8($sp)
	sw.s	$f2, 8($2)
	lui	$at, 0x3f80		# 1.000000の上位16bits
	lui	$0, 0x0		# 1.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	lw	$3, 4($sp)
	lw.s	$f3, 4($3)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	sw.s	$f2, 12($2)
	j	beq_cont.9090
beq_else.9089:
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	lw	$2, 8($sp)
	sw.s	$f2, 12($2)
beq_cont.9090:
	lw	$3, 4($sp)
	lw.s	$f2, 8($3)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	fiszero.2582
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9091
	lw	$2, 0($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	o_isinvert.2703
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw	$3, 4($sp)
	lw.s	$f2, 8($3)
	sw	$2, 28($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fisneg.2580
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	or	$3, $zero, $2
	lw	$2, 28($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	xor.2640
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw	$3, 0($sp)
	sw	$2, 32($sp)
	or	$2, $zero, $3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_c.2711
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw	$2, 32($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fneg_cond.2645
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw	$2, 8($sp)
	sw.s	$f2, 16($2)
	lui	$at, 0x3f80		# 1.000000の上位16bits
	lui	$0, 0x0		# 1.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	lw	$3, 4($sp)
	lw.s	$f3, 8($3)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	sw.s	$f2, 20($2)
	j	beq_cont.9092
beq_else.9091:
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	lw	$2, 8($sp)
	sw.s	$f2, 20($2)
beq_cont.9092:
	jr	$ra
setup_surface_table.2878:
	ori	$4, $zero, 4
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$3, 0($sp)
	sw	$2, 4($sp)
	or	$2, $zero, $4
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$3, 4($sp)
	lw.s	$f2, 0($3)
	lw	$4, 0($sp)
	sw	$2, 8($sp)
	sw.s	$f2, 12($sp)
	or	$2, $zero, $4
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_param_a.2707
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw.s	$f3, 12($sp)
	mul.s	$f2, $f3, $f2
	lw	$2, 4($sp)
	lw.s	$f3, 4($2)
	lw	$3, 0($sp)
	sw.s	$f2, 16($sp)
	sw.s	$f3, 20($sp)
	or	$2, $zero, $3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	o_param_b.2709
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw.s	$f3, 20($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f3, 16($sp)
	add.s	$f2, $f3, $f2
	lw	$2, 4($sp)
	lw.s	$f3, 8($2)
	lw	$2, 0($sp)
	sw.s	$f2, 24($sp)
	sw.s	$f3, 28($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_c.2711
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw.s	$f3, 28($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f3, 24($sp)
	add.s	$f2, $f3, $f2
	sw.s	$f2, 32($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fispos.2578
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9093
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	lw	$2, 8($sp)
	sw.s	$f2, 0($2)
	j	beq_cont.9094
beq_else.9093:
	lui	$at, 0xbf80		# -1.000000の上位16bits
	lui	$0, 0x0		# -1.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	lw.s	$f3, 32($sp)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	lw	$2, 8($sp)
	sw.s	$f2, 0($2)
	lw	$3, 0($sp)
	or	$2, $zero, $3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_a.2707
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw.s	$f3, 32($sp)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fneg.2593
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw	$2, 8($sp)
	sw.s	$f2, 4($2)
	lw	$3, 0($sp)
	or	$2, $zero, $3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_b.2709
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw.s	$f3, 32($sp)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fneg.2593
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw	$2, 8($sp)
	sw.s	$f2, 8($2)
	lw	$3, 0($sp)
	or	$2, $zero, $3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_c.2711
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw.s	$f3, 32($sp)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fneg.2593
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw	$2, 8($sp)
	sw.s	$f2, 12($2)
beq_cont.9094:
	jr	$ra
setup_second_table.2881:
	ori	$4, $zero, 5
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$3, 0($sp)
	sw	$2, 4($sp)
	or	$2, $zero, $4
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_float_array
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$3, 4($sp)
	lw.s	$f2, 0($3)
	lw.s	$f3, 4($3)
	lw.s	$f4, 8($3)
	lw	$4, 0($sp)
	sw	$2, 8($sp)
	or	$2, $zero, $4
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	quadratic.2812
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$2, 4($sp)
	lw.s	$f3, 0($2)
	lw	$3, 0($sp)
	sw.s	$f2, 12($sp)
	sw.s	$f3, 16($sp)
	or	$2, $zero, $3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_param_a.2707
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw.s	$f3, 16($sp)
	mul.s	$f2, $f3, $f2
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	fneg.2593
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$2, 4($sp)
	lw.s	$f3, 4($2)
	lw	$3, 0($sp)
	sw.s	$f2, 20($sp)
	sw.s	$f3, 24($sp)
	or	$2, $zero, $3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	o_param_b.2709
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw.s	$f3, 24($sp)
	mul.s	$f2, $f3, $f2
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	fneg.2593
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw	$2, 4($sp)
	lw.s	$f3, 8($2)
	lw	$3, 0($sp)
	sw.s	$f2, 28($sp)
	sw.s	$f3, 32($sp)
	or	$2, $zero, $3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_c.2711
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw.s	$f3, 32($sp)
	mul.s	$f2, $f3, $f2
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fneg.2593
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw	$2, 8($sp)
	lw.s	$f3, 12($sp)
	sw.s	$f3, 0($2)
	lw	$3, 0($sp)
	sw.s	$f2, 36($sp)
	or	$2, $zero, $3
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_isrot.2705
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9095
	lw	$2, 8($sp)
	lw.s	$f2, 20($sp)
	sw.s	$f2, 4($2)
	lw.s	$f2, 28($sp)
	sw.s	$f2, 8($2)
	lw.s	$f2, 36($sp)
	sw.s	$f2, 12($2)
	j	beq_cont.9096
beq_else.9095:
	lw	$2, 4($sp)
	lw.s	$f2, 8($2)
	lw	$3, 0($sp)
	sw.s	$f2, 40($sp)
	or	$2, $zero, $3
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_param_r2.2733
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw.s	$f3, 40($sp)
	mul.s	$f2, $f3, $f2
	lw	$2, 4($sp)
	lw.s	$f3, 4($2)
	lw	$3, 0($sp)
	sw.s	$f2, 44($sp)
	sw.s	$f3, 48($sp)
	or	$2, $zero, $3
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	o_param_r3.2735
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	lw.s	$f3, 48($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f3, 44($sp)
	add.s	$f2, $f3, $f2
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	fhalf.2587
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	lw.s	$f3, 20($sp)
	sub.s	$f2, $f3, $f2
	lw	$2, 8($sp)
	sw.s	$f2, 4($2)
	lw	$3, 4($sp)
	lw.s	$f2, 8($3)
	lw	$4, 0($sp)
	sw.s	$f2, 52($sp)
	or	$2, $zero, $4
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	o_param_r1.2731
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lw.s	$f3, 52($sp)
	mul.s	$f2, $f3, $f2
	lw	$2, 4($sp)
	lw.s	$f3, 0($2)
	lw	$3, 0($sp)
	sw.s	$f2, 56($sp)
	sw.s	$f3, 60($sp)
	or	$2, $zero, $3
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	o_param_r3.2735
	addi	$sp, $sp, -72
	lw	$ra, 68($sp)
	lw.s	$f3, 60($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f3, 56($sp)
	add.s	$f2, $f3, $f2
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	fhalf.2587
	addi	$sp, $sp, -72
	lw	$ra, 68($sp)
	lw.s	$f3, 28($sp)
	sub.s	$f2, $f3, $f2
	lw	$2, 8($sp)
	sw.s	$f2, 8($2)
	lw	$3, 4($sp)
	lw.s	$f2, 4($3)
	lw	$4, 0($sp)
	sw.s	$f2, 64($sp)
	or	$2, $zero, $4
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	o_param_r1.2731
	addi	$sp, $sp, -72
	lw	$ra, 68($sp)
	lw.s	$f3, 64($sp)
	mul.s	$f2, $f3, $f2
	lw	$2, 4($sp)
	lw.s	$f3, 0($2)
	lw	$2, 0($sp)
	sw.s	$f2, 68($sp)
	sw.s	$f3, 72($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	o_param_r2.2733
	addi	$sp, $sp, -80
	lw	$ra, 76($sp)
	lw.s	$f3, 72($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f3, 68($sp)
	add.s	$f2, $f3, $f2
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	fhalf.2587
	addi	$sp, $sp, -80
	lw	$ra, 76($sp)
	lw.s	$f3, 36($sp)
	sub.s	$f2, $f3, $f2
	lw	$2, 8($sp)
	sw.s	$f2, 12($2)
beq_cont.9096:
	lw.s	$f2, 12($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	fiszero.2582
	addi	$sp, $sp, -80
	lw	$ra, 76($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9097
	lui	$at, 0x3f80		# 1.000000の上位16bits
	lui	$0, 0x0		# 1.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	lw.s	$f3, 12($sp)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	lw	$2, 8($sp)
	sw.s	$f2, 16($2)
	j	beq_cont.9098
beq_else.9097:
beq_cont.9098:
	lw	$2, 8($sp)
	jr	$ra
iter_setup_dirvec_constants.2884:
	lw	$4, 4($30)
	slti	$at, $3, 0
	bgtz	$at, blez_else.9099
	sll	$5, $3, 2
	add	$at, $5, $4
	lw	$4, 0($at)
	sw	$30, 0($sp)
	sw	$3, 4($sp)
	sw	$4, 8($sp)
	sw	$2, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	d_const.2760
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$3, 12($sp)
	sw	$2, 16($sp)
	or	$2, $zero, $3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	d_vec.2758
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$3, 8($sp)
	sw	$2, 20($sp)
	or	$2, $zero, $3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	o_form.2699
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	ori	$at, $zero, 1
	bne	$2, $at, beq_else.9100
	lw	$2, 20($sp)
	lw	$3, 8($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	setup_rect_table.2875
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw	$3, 4($sp)
	sll	$4, $3, 2
	lw	$5, 16($sp)
	add	$at, $4, $5
	sw	$2, 0($at)
	j	beq_cont.9101
beq_else.9100:
	ori	$at, $zero, 2
	bne	$2, $at, beq_else.9102
	lw	$2, 20($sp)
	lw	$3, 8($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	setup_surface_table.2878
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw	$3, 4($sp)
	sll	$4, $3, 2
	lw	$5, 16($sp)
	add	$at, $4, $5
	sw	$2, 0($at)
	j	beq_cont.9103
beq_else.9102:
	lw	$2, 20($sp)
	lw	$3, 8($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	setup_second_table.2881
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw	$3, 4($sp)
	sll	$4, $3, 2
	lw	$5, 16($sp)
	add	$at, $4, $5
	sw	$2, 0($at)
beq_cont.9103:
beq_cont.9101:
	addi	$3, $3, -1
	lw	$2, 12($sp)
	lw	$30, 0($sp)
	lw	$27, 0($30)
	jr	$27
blez_else.9099:
	jr	$ra
setup_dirvec_constants.2887:
	lw	$3, 8($30)
	lw	$30, 4($30)
	lw	$3, 0($3)
	addi	$3, $3, -1
	lw	$27, 0($30)
	jr	$27
setup_startp_constants.2889:
	lw	$4, 4($30)
	slti	$at, $3, 0
	bgtz	$at, blez_else.9105
	sll	$5, $3, 2
	add	$at, $5, $4
	lw	$4, 0($at)
	sw	$30, 0($sp)
	sw	$3, 4($sp)
	sw	$2, 8($sp)
	sw	$4, 12($sp)
	or	$2, $zero, $4
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_param_ctbl.2737
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$3, 12($sp)
	sw	$2, 16($sp)
	or	$2, $zero, $3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_form.2699
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$3, 8($sp)
	lw.s	$f2, 0($3)
	lw	$4, 12($sp)
	sw	$2, 20($sp)
	sw.s	$f2, 24($sp)
	or	$2, $zero, $4
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	o_param_x.2715
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw.s	$f3, 24($sp)
	sub.s	$f2, $f3, $f2
	lw	$2, 16($sp)
	sw.s	$f2, 0($2)
	lw	$3, 8($sp)
	lw.s	$f2, 4($3)
	lw	$4, 12($sp)
	sw.s	$f2, 28($sp)
	or	$2, $zero, $4
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_y.2717
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw.s	$f3, 28($sp)
	sub.s	$f2, $f3, $f2
	lw	$2, 16($sp)
	sw.s	$f2, 4($2)
	lw	$3, 8($sp)
	lw.s	$f2, 8($3)
	lw	$4, 12($sp)
	sw.s	$f2, 32($sp)
	or	$2, $zero, $4
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_z.2719
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw.s	$f3, 32($sp)
	sub.s	$f2, $f3, $f2
	lw	$2, 16($sp)
	sw.s	$f2, 8($2)
	lw	$3, 20($sp)
	ori	$at, $zero, 2
	bne	$3, $at, beq_else.9106
	lw	$3, 12($sp)
	or	$2, $zero, $3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_abc.2713
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw	$3, 16($sp)
	lw.s	$f2, 0($3)
	lw.s	$f3, 4($3)
	lw.s	$f4, 8($3)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	veciprod2.2675
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw	$2, 16($sp)
	sw.s	$f2, 12($2)
	j	beq_cont.9107
beq_else.9106:
	slti	$at, $3, 3
	blez	$at, bgtz_else.9108
	j	bgtz_cont.9109
bgtz_else.9108:
	lw.s	$f2, 0($2)
	lw.s	$f3, 4($2)
	lw.s	$f4, 8($2)
	lw	$4, 12($sp)
	or	$2, $zero, $4
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	quadratic.2812
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw	$2, 20($sp)
	ori	$at, $zero, 3
	bne	$2, $at, beq_else.9110
	lui	$at, 0x3f80		# 1.000000の上位16bits
	lui	$0, 0x0		# 1.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	sub.s	$f2, $f2, $f3
	j	beq_cont.9111
beq_else.9110:
beq_cont.9111:
	lw	$2, 16($sp)
	sw.s	$f2, 12($2)
bgtz_cont.9109:
beq_cont.9107:
	lw	$2, 4($sp)
	addi	$3, $2, -1
	lw	$2, 8($sp)
	lw	$30, 0($sp)
	lw	$27, 0($30)
	jr	$27
blez_else.9105:
	jr	$ra
setup_startp.2892:
	lw	$3, 12($30)
	lw	$4, 8($30)
	lw	$5, 4($30)
	sw	$2, 0($sp)
	sw	$4, 4($sp)
	sw	$5, 8($sp)
	or	$27, $zero, $3
	or	$3, $zero, $2
	or	$2, $zero, $27
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	veccpy.2661
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$2, 8($sp)
	lw	$2, 0($2)
	addi	$3, $2, -1
	lw	$2, 0($sp)
	lw	$30, 4($sp)
	lw	$27, 0($30)
	jr	$27
is_rect_outside.2894:
	sw.s	$f4, 0($sp)
	sw.s	$f3, 4($sp)
	sw	$2, 8($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	fabs.2591
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$2, 8($sp)
	sw.s	$f2, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_param_a.2707
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	add.s	$f3, $f0, $f2
	lw.s	$f2, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	fless.2575
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9113
	ori	$2, $zero, 0
	j	beq_cont.9114
beq_else.9113:
	lw.s	$f2, 4($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	fabs.2591
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$2, 8($sp)
	sw.s	$f2, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_param_b.2709
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	add.s	$f3, $f0, $f2
	lw.s	$f2, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	fless.2575
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9115
	ori	$2, $zero, 0
	j	beq_cont.9116
beq_else.9115:
	lw.s	$f2, 0($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	fabs.2591
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$2, 8($sp)
	sw.s	$f2, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	o_param_c.2711
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	add.s	$f3, $f0, $f2
	lw.s	$f2, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	fless.2575
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
beq_cont.9116:
beq_cont.9114:
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9117
	lw	$2, 8($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	o_isinvert.2703
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9118
	ori	$2, $zero, 1
	jr	$ra
beq_else.9118:
	ori	$2, $zero, 0
	jr	$ra
beq_else.9117:
	lw	$2, 8($sp)
	j	o_isinvert.2703
is_plane_outside.2899:
	sw	$2, 0($sp)
	sw.s	$f4, 4($sp)
	sw.s	$f3, 8($sp)
	sw.s	$f2, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_param_abc.2713
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw.s	$f2, 12($sp)
	lw.s	$f3, 8($sp)
	lw.s	$f4, 4($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	veciprod2.2675
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$2, 0($sp)
	sw.s	$f2, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_isinvert.2703
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw.s	$f2, 16($sp)
	sw	$2, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	fisneg.2580
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	or	$3, $zero, $2
	lw	$2, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	xor.2640
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9119
	ori	$2, $zero, 1
	jr	$ra
beq_else.9119:
	ori	$2, $zero, 0
	jr	$ra
is_second_outside.2904:
	sw	$2, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	quadratic.2812
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	lw	$2, 0($sp)
	sw.s	$f2, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	o_form.2699
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	ori	$at, $zero, 3
	bne	$2, $at, beq_else.9120
	lui	$at, 0x3f80		# 1.000000の上位16bits
	lui	$0, 0x0		# 1.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	lw.s	$f3, 4($sp)
	sub.s	$f2, $f3, $f2
	j	beq_cont.9121
beq_else.9120:
	lw.s	$f2, 4($sp)
beq_cont.9121:
	lw	$2, 0($sp)
	sw.s	$f2, 8($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	o_isinvert.2703
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw.s	$f2, 8($sp)
	sw	$2, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	fisneg.2580
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	or	$3, $zero, $2
	lw	$2, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	xor.2640
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9122
	ori	$2, $zero, 1
	jr	$ra
beq_else.9122:
	ori	$2, $zero, 0
	jr	$ra
is_outside.2909:
	sw.s	$f4, 0($sp)
	sw.s	$f3, 4($sp)
	sw	$2, 8($sp)
	sw.s	$f2, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_param_x.2715
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw.s	$f3, 12($sp)
	sub.s	$f2, $f3, $f2
	lw	$2, 8($sp)
	sw.s	$f2, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_param_y.2717
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw.s	$f3, 4($sp)
	sub.s	$f2, $f3, $f2
	lw	$2, 8($sp)
	sw.s	$f2, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	o_param_z.2719
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw.s	$f3, 0($sp)
	sub.s	$f2, $f3, $f2
	lw	$2, 8($sp)
	sw.s	$f2, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	o_form.2699
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	ori	$at, $zero, 1
	bne	$2, $at, beq_else.9123
	lw.s	$f2, 16($sp)
	lw.s	$f3, 20($sp)
	lw.s	$f4, 24($sp)
	lw	$2, 8($sp)
	j	is_rect_outside.2894
beq_else.9123:
	ori	$at, $zero, 2
	bne	$2, $at, beq_else.9124
	lw.s	$f2, 16($sp)
	lw.s	$f3, 20($sp)
	lw.s	$f4, 24($sp)
	lw	$2, 8($sp)
	j	is_plane_outside.2899
beq_else.9124:
	lw.s	$f2, 16($sp)
	lw.s	$f3, 20($sp)
	lw.s	$f4, 24($sp)
	lw	$2, 8($sp)
	j	is_second_outside.2904
check_all_inside.2914:
	lw	$4, 4($30)
	sll	$5, $2, 2
	add	$at, $5, $3
	lw	$5, 0($at)
	ori	$at, $zero, -1
	bne	$5, $at, beq_else.9125
	ori	$2, $zero, 1
	jr	$ra
beq_else.9125:
	sll	$5, $5, 2
	add	$at, $5, $4
	lw	$4, 0($at)
	sw.s	$f4, 0($sp)
	sw.s	$f3, 4($sp)
	sw.s	$f2, 8($sp)
	sw	$3, 12($sp)
	sw	$30, 16($sp)
	sw	$2, 20($sp)
	or	$2, $zero, $4
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	is_outside.2909
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9126
	lw	$2, 20($sp)
	addi	$2, $2, 1
	lw.s	$f2, 8($sp)
	lw.s	$f3, 4($sp)
	lw.s	$f4, 0($sp)
	lw	$3, 12($sp)
	lw	$30, 16($sp)
	lw	$27, 0($30)
	jr	$27
beq_else.9126:
	ori	$2, $zero, 0
	jr	$ra
shadow_check_and_group.2920:
	lw	$4, 28($30)
	lw	$5, 24($30)
	lw	$6, 20($30)
	lw	$7, 16($30)
	lw	$8, 12($30)
	lw	$9, 8($30)
	lw	$10, 4($30)
	sll	$11, $2, 2
	add	$at, $11, $3
	lw	$11, 0($at)
	ori	$at, $zero, -1
	bne	$11, $at, beq_else.9127
	ori	$2, $zero, 0
	jr	$ra
beq_else.9127:
	sll	$11, $2, 2
	add	$at, $11, $3
	lw	$11, 0($at)
	sw	$10, 0($sp)
	sw	$9, 4($sp)
	sw	$8, 8($sp)
	sw	$3, 12($sp)
	sw	$30, 16($sp)
	sw	$2, 20($sp)
	sw	$6, 24($sp)
	sw	$11, 28($sp)
	sw	$5, 32($sp)
	or	$3, $zero, $7
	or	$2, $zero, $11
	or	$30, $zero, $4
	or	$4, $zero, $9
	sw	$ra, 36($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 40
	li	$ra, tmp.9128
	jr	$27
tmp.9128:
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw	$3, 32($sp)
	lw.s	$f2, 0($3)
	sw.s	$f2, 36($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9129
	ori	$2, $zero, 0
	j	beq_cont.9130
beq_else.9129:
	lui	$at, 0xbe4c		# -0.200000の上位16bits
	lui	$0, 0xcccd		# -0.200000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	fless.2575
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
beq_cont.9130:
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9131
	lw	$2, 28($sp)
	sll	$2, $2, 2
	lw	$3, 24($sp)
	add	$at, $2, $3
	lw	$2, 0($at)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_isinvert.2703
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9132
	ori	$2, $zero, 0
	jr	$ra
beq_else.9132:
	lw	$2, 20($sp)
	addi	$2, $2, 1
	lw	$3, 12($sp)
	lw	$30, 16($sp)
	lw	$27, 0($30)
	jr	$27
beq_else.9131:
	lui	$at, 0x3c23		# 0.010000の上位16bits
	lui	$0, 0xd70a		# 0.010000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	lw.s	$f3, 36($sp)
	add.s	$f2, $f3, $f2
	lw	$2, 8($sp)
	lw.s	$f3, 0($2)
	mul.s	$f3, $f3, $f2
	lw	$3, 4($sp)
	lw.s	$f4, 0($3)
	add.s	$f3, $f3, $f4
	lw.s	$f4, 4($2)
	mul.s	$f4, $f4, $f2
	lw.s	$f5, 4($3)
	add.s	$f4, $f4, $f5
	lw.s	$f5, 8($2)
	mul.s	$f2, $f5, $f2
	lw.s	$f5, 8($3)
	add.s	$f2, $f2, $f5
	ori	$2, $zero, 0
	lw	$3, 12($sp)
	lw	$30, 0($sp)
	add.s	$f31, $f0, $f4
	add.s	$f4, $f0, $f2
	add.s	$f2, $f0, $f3
	add.s	$f3, $f0, $f31
	sw	$ra, 44($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 48
	li	$ra, tmp.9133
	jr	$27
tmp.9133:
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9134
	lw	$2, 20($sp)
	addi	$2, $2, 1
	lw	$3, 12($sp)
	lw	$30, 16($sp)
	lw	$27, 0($30)
	jr	$27
beq_else.9134:
	ori	$2, $zero, 1
	jr	$ra
shadow_check_one_or_group.2923:
	lw	$4, 8($30)
	lw	$5, 4($30)
	sll	$6, $2, 2
	add	$at, $6, $3
	lw	$6, 0($at)
	ori	$at, $zero, -1
	bne	$6, $at, beq_else.9135
	ori	$2, $zero, 0
	jr	$ra
beq_else.9135:
	sll	$6, $6, 2
	add	$at, $6, $5
	lw	$5, 0($at)
	ori	$6, $zero, 0
	sw	$3, 0($sp)
	sw	$30, 4($sp)
	sw	$2, 8($sp)
	or	$3, $zero, $5
	or	$2, $zero, $6
	or	$30, $zero, $4
	sw	$ra, 12($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 16
	li	$ra, tmp.9136
	jr	$27
tmp.9136:
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9137
	lw	$2, 8($sp)
	addi	$2, $2, 1
	lw	$3, 0($sp)
	lw	$30, 4($sp)
	lw	$27, 0($30)
	jr	$27
beq_else.9137:
	ori	$2, $zero, 1
	jr	$ra
shadow_check_one_or_matrix.2926:
	lw	$4, 20($30)
	lw	$5, 16($30)
	lw	$6, 12($30)
	lw	$7, 8($30)
	lw	$8, 4($30)
	sll	$9, $2, 2
	add	$at, $9, $3
	lw	$9, 0($at)
	lw	$10, 0($9)
	ori	$at, $zero, -1
	bne	$10, $at, beq_else.9138
	ori	$2, $zero, 0
	jr	$ra
beq_else.9138:
	sw	$9, 0($sp)
	sw	$6, 4($sp)
	sw	$3, 8($sp)
	sw	$30, 12($sp)
	sw	$2, 16($sp)
	ori	$at, $zero, 99
	bne	$10, $at, beq_else.9139
	ori	$2, $zero, 1
	j	beq_cont.9140
beq_else.9139:
	sw	$5, 20($sp)
	or	$3, $zero, $7
	or	$2, $zero, $10
	or	$30, $zero, $4
	or	$4, $zero, $8
	sw	$ra, 28($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 32
	li	$ra, tmp.9141
	jr	$27
tmp.9141:
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9142
	ori	$2, $zero, 0
	j	beq_cont.9143
beq_else.9142:
	lw	$2, 20($sp)
	lw.s	$f2, 0($2)
	lui	$at, 0xbdcc		# -0.100000の上位16bits
	lui	$0, 0xcccd		# -0.100000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	fless.2575
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9144
	ori	$2, $zero, 0
	j	beq_cont.9145
beq_else.9144:
	ori	$2, $zero, 1
	lw	$3, 0($sp)
	lw	$30, 4($sp)
	sw	$ra, 28($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 32
	li	$ra, tmp.9146
	jr	$27
tmp.9146:
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9147
	ori	$2, $zero, 0
	j	beq_cont.9148
beq_else.9147:
	ori	$2, $zero, 1
beq_cont.9148:
beq_cont.9145:
beq_cont.9143:
beq_cont.9140:
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9149
	lw	$2, 16($sp)
	addi	$2, $2, 1
	lw	$3, 8($sp)
	lw	$30, 12($sp)
	lw	$27, 0($30)
	jr	$27
beq_else.9149:
	ori	$2, $zero, 1
	lw	$3, 0($sp)
	lw	$30, 4($sp)
	sw	$ra, 28($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 32
	li	$ra, tmp.9150
	jr	$27
tmp.9150:
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9151
	lw	$2, 16($sp)
	addi	$2, $2, 1
	lw	$3, 8($sp)
	lw	$30, 12($sp)
	lw	$27, 0($30)
	jr	$27
beq_else.9151:
	ori	$2, $zero, 1
	jr	$ra
solve_each_element.2929:
	lw	$5, 36($30)
	lw	$6, 32($30)
	lw	$7, 28($30)
	lw	$8, 24($30)
	lw	$9, 20($30)
	lw	$10, 16($30)
	lw	$11, 12($30)
	lw	$12, 8($30)
	lw	$13, 4($30)
	sll	$14, $2, 2
	add	$at, $14, $3
	lw	$14, 0($at)
	ori	$at, $zero, -1
	bne	$14, $at, beq_else.9152
	jr	$ra
beq_else.9152:
	sw	$10, 0($sp)
	sw	$12, 4($sp)
	sw	$11, 8($sp)
	sw	$13, 12($sp)
	sw	$6, 16($sp)
	sw	$5, 20($sp)
	sw	$7, 24($sp)
	sw	$4, 28($sp)
	sw	$3, 32($sp)
	sw	$30, 36($sp)
	sw	$2, 40($sp)
	sw	$9, 44($sp)
	sw	$14, 48($sp)
	or	$3, $zero, $4
	or	$2, $zero, $14
	or	$30, $zero, $8
	or	$4, $zero, $6
	sw	$ra, 52($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 56
	li	$ra, tmp.9154
	jr	$27
tmp.9154:
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9155
	lw	$2, 48($sp)
	sll	$2, $2, 2
	lw	$3, 44($sp)
	add	$at, $2, $3
	lw	$2, 0($at)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	o_isinvert.2703
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9156
	jr	$ra
beq_else.9156:
	lw	$2, 40($sp)
	addi	$2, $2, 1
	lw	$3, 32($sp)
	lw	$4, 28($sp)
	lw	$30, 36($sp)
	lw	$27, 0($30)
	jr	$27
beq_else.9155:
	lw	$3, 24($sp)
	lw.s	$f3, 0($3)
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$2, 52($sp)
	sw.s	$f3, 56($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	fless.2575
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9158
	j	beq_cont.9159
beq_else.9158:
	lw	$2, 20($sp)
	lw.s	$f3, 0($2)
	lw.s	$f2, 56($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	fless.2575
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9160
	j	beq_cont.9161
beq_else.9160:
	lui	$at, 0x3c23		# 0.010000の上位16bits
	lui	$0, 0xd70a		# 0.010000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	lw.s	$f3, 56($sp)
	add.s	$f2, $f3, $f2
	lw	$2, 28($sp)
	lw.s	$f3, 0($2)
	mul.s	$f3, $f3, $f2
	lw	$3, 16($sp)
	lw.s	$f4, 0($3)
	add.s	$f3, $f3, $f4
	lw.s	$f4, 4($2)
	mul.s	$f4, $f4, $f2
	lw.s	$f5, 4($3)
	add.s	$f4, $f4, $f5
	lw.s	$f5, 8($2)
	mul.s	$f5, $f5, $f2
	lw.s	$f6, 8($3)
	add.s	$f5, $f5, $f6
	ori	$3, $zero, 0
	lw	$4, 32($sp)
	lw	$30, 12($sp)
	sw.s	$f5, 60($sp)
	sw.s	$f4, 64($sp)
	sw.s	$f3, 68($sp)
	sw.s	$f2, 72($sp)
	or	$2, $zero, $3
	or	$3, $zero, $4
	add.s	$f2, $f0, $f3
	add.s	$f3, $f0, $f4
	add.s	$f4, $f0, $f5
	sw	$ra, 76($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 80
	li	$ra, tmp.9162
	jr	$27
tmp.9162:
	addi	$sp, $sp, -80
	lw	$ra, 76($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9163
	j	beq_cont.9164
beq_else.9163:
	lw	$2, 20($sp)
	lw.s	$f2, 72($sp)
	sw.s	$f2, 0($2)
	lw.s	$f2, 68($sp)
	lw.s	$f3, 64($sp)
	lw.s	$f4, 60($sp)
	lw	$2, 8($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	vecset.2651
	addi	$sp, $sp, -80
	lw	$ra, 76($sp)
	lw	$2, 4($sp)
	lw	$3, 48($sp)
	sw	$3, 0($2)
	lw	$2, 0($sp)
	lw	$3, 52($sp)
	sw	$3, 0($2)
beq_cont.9164:
beq_cont.9161:
beq_cont.9159:
	lw	$2, 40($sp)
	addi	$2, $2, 1
	lw	$3, 32($sp)
	lw	$4, 28($sp)
	lw	$30, 36($sp)
	lw	$27, 0($30)
	jr	$27
solve_one_or_network.2933:
	lw	$5, 8($30)
	lw	$6, 4($30)
	sll	$7, $2, 2
	add	$at, $7, $3
	lw	$7, 0($at)
	ori	$at, $zero, -1
	bne	$7, $at, beq_else.9165
	jr	$ra
beq_else.9165:
	sll	$7, $7, 2
	add	$at, $7, $6
	lw	$6, 0($at)
	ori	$7, $zero, 0
	sw	$4, 0($sp)
	sw	$3, 4($sp)
	sw	$30, 8($sp)
	sw	$2, 12($sp)
	or	$3, $zero, $6
	or	$2, $zero, $7
	or	$30, $zero, $5
	sw	$ra, 20($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 24
	li	$ra, tmp.9167
	jr	$27
tmp.9167:
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$2, 12($sp)
	addi	$2, $2, 1
	lw	$3, 4($sp)
	lw	$4, 0($sp)
	lw	$30, 8($sp)
	lw	$27, 0($30)
	jr	$27
trace_or_matrix.2937:
	lw	$5, 20($30)
	lw	$6, 16($30)
	lw	$7, 12($30)
	lw	$8, 8($30)
	lw	$9, 4($30)
	sll	$10, $2, 2
	add	$at, $10, $3
	lw	$10, 0($at)
	lw	$11, 0($10)
	ori	$at, $zero, -1
	bne	$11, $at, beq_else.9168
	jr	$ra
beq_else.9168:
	sw	$4, 0($sp)
	sw	$3, 4($sp)
	sw	$30, 8($sp)
	sw	$2, 12($sp)
	ori	$at, $zero, 99
	bne	$11, $at, beq_else.9170
	ori	$5, $zero, 1
	or	$3, $zero, $10
	or	$2, $zero, $5
	or	$30, $zero, $9
	sw	$ra, 20($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 24
	li	$ra, tmp.9172
	jr	$27
tmp.9172:
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	j	beq_cont.9171
beq_else.9170:
	sw	$10, 16($sp)
	sw	$9, 20($sp)
	sw	$5, 24($sp)
	sw	$7, 28($sp)
	or	$3, $zero, $4
	or	$2, $zero, $11
	or	$30, $zero, $8
	or	$4, $zero, $6
	sw	$ra, 36($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 40
	li	$ra, tmp.9173
	jr	$27
tmp.9173:
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9174
	j	beq_cont.9175
beq_else.9174:
	lw	$2, 28($sp)
	lw.s	$f2, 0($2)
	lw	$2, 24($sp)
	lw.s	$f3, 0($2)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fless.2575
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9176
	j	beq_cont.9177
beq_else.9176:
	ori	$2, $zero, 1
	lw	$3, 16($sp)
	lw	$4, 0($sp)
	lw	$30, 20($sp)
	sw	$ra, 36($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 40
	li	$ra, tmp.9178
	jr	$27
tmp.9178:
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
beq_cont.9177:
beq_cont.9175:
beq_cont.9171:
	lw	$2, 12($sp)
	addi	$2, $2, 1
	lw	$3, 4($sp)
	lw	$4, 0($sp)
	lw	$30, 8($sp)
	lw	$27, 0($30)
	jr	$27
judge_intersection.2941:
	lw	$3, 12($30)
	lw	$4, 8($30)
	lw	$5, 4($30)
	lui	$at, 0x4e6e		# 1000000000.000000の上位16bits
	lui	$0, 0x6b28		# 1000000000.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw.s	$f2, 0($4)
	ori	$6, $zero, 0
	lw	$5, 0($5)
	sw	$4, 0($sp)
	or	$4, $zero, $2
	or	$30, $zero, $3
	or	$3, $zero, $5
	or	$2, $zero, $6
	sw	$ra, 4($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 8
	li	$ra, tmp.9179
	jr	$27
tmp.9179:
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	lw	$2, 0($sp)
	lw.s	$f3, 0($2)
	lui	$at, 0xbdcc		# -0.100000の上位16bits
	lui	$0, 0xcccd		# -0.100000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw.s	$f3, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	fless.2575
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9180
	ori	$2, $zero, 0
	jr	$ra
beq_else.9180:
	lui	$at, 0x4cbe		# 100000000.000000の上位16bits
	lui	$0, 0xbc20		# 100000000.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	lw.s	$f2, 4($sp)
	j	fless.2575
solve_each_element_fast.2943:
	lw	$5, 36($30)
	lw	$6, 32($30)
	lw	$7, 28($30)
	lw	$8, 24($30)
	lw	$9, 20($30)
	lw	$10, 16($30)
	lw	$11, 12($30)
	lw	$12, 8($30)
	lw	$13, 4($30)
	sw	$10, 0($sp)
	sw	$12, 4($sp)
	sw	$11, 8($sp)
	sw	$13, 12($sp)
	sw	$6, 16($sp)
	sw	$5, 20($sp)
	sw	$8, 24($sp)
	sw	$30, 28($sp)
	sw	$9, 32($sp)
	sw	$4, 36($sp)
	sw	$7, 40($sp)
	sw	$3, 44($sp)
	sw	$2, 48($sp)
	or	$2, $zero, $4
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	d_vec.2758
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	lw	$3, 48($sp)
	sll	$4, $3, 2
	lw	$5, 44($sp)
	add	$at, $4, $5
	lw	$4, 0($at)
	ori	$at, $zero, -1
	bne	$4, $at, beq_else.9181
	jr	$ra
beq_else.9181:
	lw	$6, 36($sp)
	lw	$30, 40($sp)
	sw	$2, 52($sp)
	sw	$4, 56($sp)
	or	$3, $zero, $6
	or	$2, $zero, $4
	sw	$ra, 60($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 64
	li	$ra, tmp.9183
	jr	$27
tmp.9183:
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9184
	lw	$2, 56($sp)
	sll	$2, $2, 2
	lw	$3, 32($sp)
	add	$at, $2, $3
	lw	$2, 0($at)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	o_isinvert.2703
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9185
	jr	$ra
beq_else.9185:
	lw	$2, 48($sp)
	addi	$2, $2, 1
	lw	$3, 44($sp)
	lw	$4, 36($sp)
	lw	$30, 28($sp)
	lw	$27, 0($30)
	jr	$27
beq_else.9184:
	lw	$3, 24($sp)
	lw.s	$f3, 0($3)
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$2, 60($sp)
	sw.s	$f3, 64($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	fless.2575
	addi	$sp, $sp, -72
	lw	$ra, 68($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9187
	j	beq_cont.9188
beq_else.9187:
	lw	$2, 20($sp)
	lw.s	$f3, 0($2)
	lw.s	$f2, 64($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	fless.2575
	addi	$sp, $sp, -72
	lw	$ra, 68($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9189
	j	beq_cont.9190
beq_else.9189:
	lui	$at, 0x3c23		# 0.010000の上位16bits
	lui	$0, 0xd70a		# 0.010000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	lw.s	$f3, 64($sp)
	add.s	$f2, $f3, $f2
	lw	$2, 52($sp)
	lw.s	$f3, 0($2)
	mul.s	$f3, $f3, $f2
	lw	$3, 16($sp)
	lw.s	$f4, 0($3)
	add.s	$f3, $f3, $f4
	lw.s	$f4, 4($2)
	mul.s	$f4, $f4, $f2
	lw.s	$f5, 4($3)
	add.s	$f4, $f4, $f5
	lw.s	$f5, 8($2)
	mul.s	$f5, $f5, $f2
	lw.s	$f6, 8($3)
	add.s	$f5, $f5, $f6
	ori	$2, $zero, 0
	lw	$3, 44($sp)
	lw	$30, 12($sp)
	sw.s	$f5, 68($sp)
	sw.s	$f4, 72($sp)
	sw.s	$f3, 76($sp)
	sw.s	$f2, 80($sp)
	add.s	$f2, $f0, $f3
	add.s	$f3, $f0, $f4
	add.s	$f4, $f0, $f5
	sw	$ra, 84($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 88
	li	$ra, tmp.9191
	jr	$27
tmp.9191:
	addi	$sp, $sp, -88
	lw	$ra, 84($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9192
	j	beq_cont.9193
beq_else.9192:
	lw	$2, 20($sp)
	lw.s	$f2, 80($sp)
	sw.s	$f2, 0($2)
	lw.s	$f2, 76($sp)
	lw.s	$f3, 72($sp)
	lw.s	$f4, 68($sp)
	lw	$2, 8($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	vecset.2651
	addi	$sp, $sp, -88
	lw	$ra, 84($sp)
	lw	$2, 4($sp)
	lw	$3, 56($sp)
	sw	$3, 0($2)
	lw	$2, 0($sp)
	lw	$3, 60($sp)
	sw	$3, 0($2)
beq_cont.9193:
beq_cont.9190:
beq_cont.9188:
	lw	$2, 48($sp)
	addi	$2, $2, 1
	lw	$3, 44($sp)
	lw	$4, 36($sp)
	lw	$30, 28($sp)
	lw	$27, 0($30)
	jr	$27
solve_one_or_network_fast.2947:
	lw	$5, 8($30)
	lw	$6, 4($30)
	sll	$7, $2, 2
	add	$at, $7, $3
	lw	$7, 0($at)
	ori	$at, $zero, -1
	bne	$7, $at, beq_else.9194
	jr	$ra
beq_else.9194:
	sll	$7, $7, 2
	add	$at, $7, $6
	lw	$6, 0($at)
	ori	$7, $zero, 0
	sw	$4, 0($sp)
	sw	$3, 4($sp)
	sw	$30, 8($sp)
	sw	$2, 12($sp)
	or	$3, $zero, $6
	or	$2, $zero, $7
	or	$30, $zero, $5
	sw	$ra, 20($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 24
	li	$ra, tmp.9196
	jr	$27
tmp.9196:
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$2, 12($sp)
	addi	$2, $2, 1
	lw	$3, 4($sp)
	lw	$4, 0($sp)
	lw	$30, 8($sp)
	lw	$27, 0($30)
	jr	$27
trace_or_matrix_fast.2951:
	lw	$5, 16($30)
	lw	$6, 12($30)
	lw	$7, 8($30)
	lw	$8, 4($30)
	sll	$9, $2, 2
	add	$at, $9, $3
	lw	$9, 0($at)
	lw	$10, 0($9)
	ori	$at, $zero, -1
	bne	$10, $at, beq_else.9197
	jr	$ra
beq_else.9197:
	sw	$4, 0($sp)
	sw	$3, 4($sp)
	sw	$30, 8($sp)
	sw	$2, 12($sp)
	ori	$at, $zero, 99
	bne	$10, $at, beq_else.9199
	ori	$5, $zero, 1
	or	$3, $zero, $9
	or	$2, $zero, $5
	or	$30, $zero, $8
	sw	$ra, 20($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 24
	li	$ra, tmp.9201
	jr	$27
tmp.9201:
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	j	beq_cont.9200
beq_else.9199:
	sw	$9, 16($sp)
	sw	$8, 20($sp)
	sw	$5, 24($sp)
	sw	$7, 28($sp)
	or	$3, $zero, $4
	or	$2, $zero, $10
	or	$30, $zero, $6
	sw	$ra, 36($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 40
	li	$ra, tmp.9202
	jr	$27
tmp.9202:
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9203
	j	beq_cont.9204
beq_else.9203:
	lw	$2, 28($sp)
	lw.s	$f2, 0($2)
	lw	$2, 24($sp)
	lw.s	$f3, 0($2)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fless.2575
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9205
	j	beq_cont.9206
beq_else.9205:
	ori	$2, $zero, 1
	lw	$3, 16($sp)
	lw	$4, 0($sp)
	lw	$30, 20($sp)
	sw	$ra, 36($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 40
	li	$ra, tmp.9207
	jr	$27
tmp.9207:
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
beq_cont.9206:
beq_cont.9204:
beq_cont.9200:
	lw	$2, 12($sp)
	addi	$2, $2, 1
	lw	$3, 4($sp)
	lw	$4, 0($sp)
	lw	$30, 8($sp)
	lw	$27, 0($30)
	jr	$27
judge_intersection_fast.2955:
	lw	$3, 12($30)
	lw	$4, 8($30)
	lw	$5, 4($30)
	lui	$at, 0x4e6e		# 1000000000.000000の上位16bits
	lui	$0, 0x6b28		# 1000000000.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw.s	$f2, 0($4)
	ori	$6, $zero, 0
	lw	$5, 0($5)
	sw	$4, 0($sp)
	or	$4, $zero, $2
	or	$30, $zero, $3
	or	$3, $zero, $5
	or	$2, $zero, $6
	sw	$ra, 4($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 8
	li	$ra, tmp.9208
	jr	$27
tmp.9208:
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	lw	$2, 0($sp)
	lw.s	$f3, 0($2)
	lui	$at, 0xbdcc		# -0.100000の上位16bits
	lui	$0, 0xcccd		# -0.100000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw.s	$f3, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	fless.2575
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9209
	ori	$2, $zero, 0
	jr	$ra
beq_else.9209:
	lui	$at, 0x4cbe		# 100000000.000000の上位16bits
	lui	$0, 0xbc20		# 100000000.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	lw.s	$f2, 4($sp)
	j	fless.2575
get_nvector_rect.2957:
	lw	$3, 8($30)
	lw	$4, 4($30)
	lw	$4, 0($4)
	sw	$3, 0($sp)
	sw	$2, 4($sp)
	sw	$4, 8($sp)
	or	$2, $zero, $3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	vecbzero.2659
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$2, 8($sp)
	addi	$3, $2, -1
	addi	$2, $2, -1
	sll	$2, $2, 2
	lw	$4, 4($sp)
	add	$at, $2, $4
	lw.s	$f2, 0($at)
	sw	$3, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	sgn.2643
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	fneg.2593
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$2, 12($sp)
	sll	$2, $2, 2
	lw	$3, 0($sp)
	add	$at, $2, $3
	sw.s	$f2, 0($at)
	jr	$ra
get_nvector_plane.2959:
	lw	$3, 4($30)
	sw	$2, 0($sp)
	sw	$3, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	o_param_a.2707
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	fneg.2593
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$2, 4($sp)
	sw.s	$f2, 0($2)
	lw	$3, 0($sp)
	or	$2, $zero, $3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	o_param_b.2709
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	fneg.2593
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$2, 4($sp)
	sw.s	$f2, 4($2)
	lw	$3, 0($sp)
	or	$2, $zero, $3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	o_param_c.2711
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	fneg.2593
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$2, 4($sp)
	sw.s	$f2, 8($2)
	jr	$ra
get_nvector_second.2961:
	lw	$3, 8($30)
	lw	$4, 4($30)
	lw.s	$f2, 0($4)
	sw	$3, 0($sp)
	sw	$2, 4($sp)
	sw	$4, 8($sp)
	sw.s	$f2, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_param_x.2715
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw.s	$f3, 12($sp)
	sub.s	$f2, $f3, $f2
	lw	$2, 8($sp)
	lw.s	$f3, 4($2)
	lw	$3, 4($sp)
	sw.s	$f2, 16($sp)
	sw.s	$f3, 20($sp)
	or	$2, $zero, $3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	o_param_y.2717
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw.s	$f3, 20($sp)
	sub.s	$f2, $f3, $f2
	lw	$2, 8($sp)
	lw.s	$f3, 8($2)
	lw	$2, 4($sp)
	sw.s	$f2, 24($sp)
	sw.s	$f3, 28($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_z.2719
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw.s	$f3, 28($sp)
	sub.s	$f2, $f3, $f2
	lw	$2, 4($sp)
	sw.s	$f2, 32($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_a.2707
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw.s	$f3, 16($sp)
	mul.s	$f2, $f3, $f2
	lw	$2, 4($sp)
	sw.s	$f2, 36($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_param_b.2709
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw.s	$f3, 24($sp)
	mul.s	$f2, $f3, $f2
	lw	$2, 4($sp)
	sw.s	$f2, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_param_c.2711
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw.s	$f3, 32($sp)
	mul.s	$f2, $f3, $f2
	lw	$2, 4($sp)
	sw.s	$f2, 44($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	o_isrot.2705
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9212
	lw	$2, 0($sp)
	lw.s	$f2, 36($sp)
	sw.s	$f2, 0($2)
	lw.s	$f2, 40($sp)
	sw.s	$f2, 4($2)
	lw.s	$f2, 44($sp)
	sw.s	$f2, 8($2)
	j	beq_cont.9213
beq_else.9212:
	lw	$2, 4($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	o_param_r3.2735
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	lw.s	$f3, 24($sp)
	mul.s	$f2, $f3, $f2
	lw	$2, 4($sp)
	sw.s	$f2, 48($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	o_param_r2.2733
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	lw.s	$f3, 32($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f4, 48($sp)
	add.s	$f2, $f4, $f2
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	fhalf.2587
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	lw.s	$f3, 36($sp)
	add.s	$f2, $f3, $f2
	lw	$2, 0($sp)
	sw.s	$f2, 0($2)
	lw	$3, 4($sp)
	or	$2, $zero, $3
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	o_param_r3.2735
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	lw.s	$f3, 16($sp)
	mul.s	$f2, $f3, $f2
	lw	$2, 4($sp)
	sw.s	$f2, 52($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	o_param_r1.2731
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lw.s	$f3, 32($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f3, 52($sp)
	add.s	$f2, $f3, $f2
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	fhalf.2587
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lw.s	$f3, 40($sp)
	add.s	$f2, $f3, $f2
	lw	$2, 0($sp)
	sw.s	$f2, 4($2)
	lw	$3, 4($sp)
	or	$2, $zero, $3
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	o_param_r2.2733
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lw.s	$f3, 16($sp)
	mul.s	$f2, $f3, $f2
	lw	$2, 4($sp)
	sw.s	$f2, 56($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	o_param_r1.2731
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lw.s	$f3, 24($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f3, 56($sp)
	add.s	$f2, $f3, $f2
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	fhalf.2587
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lw.s	$f3, 44($sp)
	add.s	$f2, $f3, $f2
	lw	$2, 0($sp)
	sw.s	$f2, 8($2)
beq_cont.9213:
	lw	$3, 4($sp)
	or	$2, $zero, $3
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	o_isinvert.2703
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	or	$3, $zero, $2
	lw	$2, 0($sp)
	j	vecunit_sgn.2669
get_nvector.2963:
	lw	$4, 12($30)
	lw	$5, 8($30)
	lw	$6, 4($30)
	sw	$4, 0($sp)
	sw	$2, 4($sp)
	sw	$6, 8($sp)
	sw	$3, 12($sp)
	sw	$5, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_form.2699
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	ori	$at, $zero, 1
	bne	$2, $at, beq_else.9214
	lw	$2, 12($sp)
	lw	$30, 16($sp)
	lw	$27, 0($30)
	jr	$27
beq_else.9214:
	ori	$at, $zero, 2
	bne	$2, $at, beq_else.9215
	lw	$2, 4($sp)
	lw	$30, 8($sp)
	lw	$27, 0($30)
	jr	$27
beq_else.9215:
	lw	$2, 4($sp)
	lw	$30, 0($sp)
	lw	$27, 0($30)
	jr	$27
utexture.2966:
	lw	$4, 4($30)
	sw	$3, 0($sp)
	sw	$4, 4($sp)
	sw	$2, 8($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	o_texturetype.2697
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$3, 8($sp)
	sw	$2, 12($sp)
	or	$2, $zero, $3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_color_red.2725
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$2, 4($sp)
	sw.s	$f2, 0($2)
	lw	$3, 8($sp)
	or	$2, $zero, $3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_color_green.2727
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$2, 4($sp)
	sw.s	$f2, 4($2)
	lw	$3, 8($sp)
	or	$2, $zero, $3
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_color_blue.2729
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$2, 4($sp)
	sw.s	$f2, 8($2)
	lw	$3, 12($sp)
	ori	$at, $zero, 1
	bne	$3, $at, beq_else.9216
	lw	$3, 0($sp)
	lw.s	$f2, 0($3)
	lw	$4, 8($sp)
	sw.s	$f2, 16($sp)
	or	$2, $zero, $4
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_param_x.2715
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw.s	$f3, 16($sp)
	sub.s	$f2, $f3, $f2
	lui	$at, 0x3d4c		# 0.050000の上位16bits
	lui	$0, 0xcccd		# 0.050000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	mul.s	$f3, $f2, $f3
	sw.s	$f2, 20($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	floor.2595
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lui	$at, 0x41a0		# 20.000000の上位16bits
	lui	$0, 0x0		# 20.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	mul.s	$f2, $f2, $f3
	lw.s	$f3, 20($sp)
	sub.s	$f2, $f3, $f2
	lui	$at, 0x4120		# 10.000000の上位16bits
	lui	$0, 0x0		# 10.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	fless.2575
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw	$3, 0($sp)
	lw.s	$f2, 8($3)
	lw	$3, 8($sp)
	sw	$2, 24($sp)
	sw.s	$f2, 28($sp)
	or	$2, $zero, $3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_z.2719
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw.s	$f3, 28($sp)
	sub.s	$f2, $f3, $f2
	lui	$at, 0x3d4c		# 0.050000の上位16bits
	lui	$0, 0xcccd		# 0.050000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	mul.s	$f3, $f2, $f3
	sw.s	$f2, 32($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	floor.2595
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lui	$at, 0x41a0		# 20.000000の上位16bits
	lui	$0, 0x0		# 20.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	mul.s	$f2, $f2, $f3
	lw.s	$f3, 32($sp)
	sub.s	$f2, $f3, $f2
	lui	$at, 0x4120		# 10.000000の上位16bits
	lui	$0, 0x0		# 10.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fless.2575
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw	$3, 24($sp)
	ori	$at, $zero, 0
	bne	$3, $at, beq_else.9217
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9219
	lui	$at, 0x437f		# 255.000000の上位16bits
	lui	$0, 0x0		# 255.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	j	beq_cont.9220
beq_else.9219:
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
beq_cont.9220:
	j	beq_cont.9218
beq_else.9217:
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9221
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	j	beq_cont.9222
beq_else.9221:
	lui	$at, 0x437f		# 255.000000の上位16bits
	lui	$0, 0x0		# 255.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
beq_cont.9222:
beq_cont.9218:
	lw	$2, 4($sp)
	sw.s	$f2, 4($2)
	jr	$ra
beq_else.9216:
	ori	$at, $zero, 2
	bne	$3, $at, beq_else.9224
	lw	$3, 0($sp)
	lw.s	$f2, 4($3)
	lui	$at, 0x3e80		# 0.250000の上位16bits
	lui	$0, 0x0		# 0.250000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	mul.s	$f2, $f2, $f3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	sin.2603
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fsqr.2589
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lui	$at, 0x437f		# 255.000000の上位16bits
	lui	$0, 0x0		# 255.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	mul.s	$f3, $f3, $f2
	lw	$2, 4($sp)
	sw.s	$f3, 0($2)
	lui	$at, 0x437f		# 255.000000の上位16bits
	lui	$0, 0x0		# 255.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	lui	$at, 0x3f80		# 1.000000の上位16bits
	lui	$0, 0x0		# 1.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f4, 4($zero)
	sub.s	$f2, $f4, $f2
	mul.s	$f2, $f3, $f2
	sw.s	$f2, 4($2)
	jr	$ra
beq_else.9224:
	ori	$at, $zero, 3
	bne	$3, $at, beq_else.9226
	lw	$3, 0($sp)
	lw.s	$f2, 0($3)
	lw	$4, 8($sp)
	sw.s	$f2, 36($sp)
	or	$2, $zero, $4
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_param_x.2715
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw.s	$f3, 36($sp)
	sub.s	$f2, $f3, $f2
	lw	$2, 0($sp)
	lw.s	$f3, 8($2)
	lw	$2, 8($sp)
	sw.s	$f2, 40($sp)
	sw.s	$f3, 44($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	o_param_z.2719
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	lw.s	$f3, 44($sp)
	sub.s	$f2, $f3, $f2
	lw.s	$f3, 40($sp)
	sw.s	$f2, 48($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	fsqr.2589
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	lw.s	$f3, 48($sp)
	sw.s	$f2, 52($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	fsqr.2589
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lw.s	$f3, 52($sp)
	add.s	$f2, $f3, $f2
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_sqrt
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lui	$at, 0x4120		# 10.000000の上位16bits
	lui	$0, 0x0		# 10.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	sw.s	$f2, 56($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	floor.2595
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lw.s	$f3, 56($sp)
	sub.s	$f2, $f3, $f2
	lui	$at, 0x4049		# 3.141593の上位16bits
	lui	$0, 0xfdb		# 3.141593の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	mul.s	$f2, $f2, $f3
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	cos.2601
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	fsqr.2589
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lui	$at, 0x437f		# 255.000000の上位16bits
	lui	$0, 0x0		# 255.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	mul.s	$f3, $f2, $f3
	lw	$2, 4($sp)
	sw.s	$f3, 4($2)
	lui	$at, 0x3f80		# 1.000000の上位16bits
	lui	$0, 0x0		# 1.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	sub.s	$f2, $f3, $f2
	lui	$at, 0x437f		# 255.000000の上位16bits
	lui	$0, 0x0		# 255.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	mul.s	$f2, $f2, $f3
	sw.s	$f2, 8($2)
	jr	$ra
beq_else.9226:
	ori	$at, $zero, 4
	bne	$3, $at, beq_else.9228
	lw	$3, 0($sp)
	lw.s	$f2, 0($3)
	lw	$4, 8($sp)
	sw.s	$f2, 60($sp)
	or	$2, $zero, $4
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	o_param_x.2715
	addi	$sp, $sp, -72
	lw	$ra, 68($sp)
	lw.s	$f3, 60($sp)
	sub.s	$f2, $f3, $f2
	lw	$2, 8($sp)
	sw.s	$f2, 64($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	o_param_a.2707
	addi	$sp, $sp, -72
	lw	$ra, 68($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_sqrt
	addi	$sp, $sp, -72
	lw	$ra, 68($sp)
	lw.s	$f3, 64($sp)
	mul.s	$f2, $f3, $f2
	lw	$2, 0($sp)
	lw.s	$f3, 8($2)
	lw	$3, 8($sp)
	sw.s	$f2, 68($sp)
	sw.s	$f3, 72($sp)
	or	$2, $zero, $3
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	o_param_z.2719
	addi	$sp, $sp, -80
	lw	$ra, 76($sp)
	lw.s	$f3, 72($sp)
	sub.s	$f2, $f3, $f2
	lw	$2, 8($sp)
	sw.s	$f2, 76($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	o_param_c.2711
	addi	$sp, $sp, -88
	lw	$ra, 84($sp)
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	min_caml_sqrt
	addi	$sp, $sp, -88
	lw	$ra, 84($sp)
	lw.s	$f3, 76($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f3, 68($sp)
	sw.s	$f2, 80($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 84($sp)
	addi	$sp, $sp, 88
	jal	fsqr.2589
	addi	$sp, $sp, -88
	lw	$ra, 84($sp)
	lw.s	$f3, 80($sp)
	sw.s	$f2, 84($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	fsqr.2589
	addi	$sp, $sp, -96
	lw	$ra, 92($sp)
	lw.s	$f3, 84($sp)
	add.s	$f2, $f3, $f2
	lw.s	$f3, 68($sp)
	sw.s	$f2, 88($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	fabs.2591
	addi	$sp, $sp, -96
	lw	$ra, 92($sp)
	lui	$at, 0x38d1		# 0.000100の上位16bits
	lui	$0, 0xb717		# 0.000100の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	fless.2575
	addi	$sp, $sp, -96
	lw	$ra, 92($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9229
	lw.s	$f2, 68($sp)
	lw.s	$f3, 80($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	fabs.2591
	addi	$sp, $sp, -96
	lw	$ra, 92($sp)
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	atan.2607
	addi	$sp, $sp, -96
	lw	$ra, 92($sp)
	lui	$at, 0x41f0		# 30.000000の上位16bits
	lui	$0, 0x0		# 30.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	mul.s	$f2, $f2, $f3
	lui	$at, 0x4049		# 3.141593の上位16bits
	lui	$0, 0xfdb		# 3.141593の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	j	beq_cont.9230
beq_else.9229:
	lui	$at, 0x4170		# 15.000000の上位16bits
	lui	$0, 0x0		# 15.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
beq_cont.9230:
	sw.s	$f2, 92($sp)
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	floor.2595
	addi	$sp, $sp, -104
	lw	$ra, 100($sp)
	lw.s	$f3, 92($sp)
	sub.s	$f2, $f3, $f2
	lw	$2, 0($sp)
	lw.s	$f3, 4($2)
	lw	$2, 8($sp)
	sw.s	$f2, 96($sp)
	sw.s	$f3, 100($sp)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	o_param_y.2717
	addi	$sp, $sp, -112
	lw	$ra, 108($sp)
	lw.s	$f3, 100($sp)
	sub.s	$f2, $f3, $f2
	lw	$2, 8($sp)
	sw.s	$f2, 104($sp)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	o_param_b.2709
	addi	$sp, $sp, -112
	lw	$ra, 108($sp)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	min_caml_sqrt
	addi	$sp, $sp, -112
	lw	$ra, 108($sp)
	lw.s	$f3, 104($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f3, 88($sp)
	sw.s	$f2, 108($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	fabs.2591
	addi	$sp, $sp, -120
	lw	$ra, 116($sp)
	lui	$at, 0x38d1		# 0.000100の上位16bits
	lui	$0, 0xb717		# 0.000100の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	fless.2575
	addi	$sp, $sp, -120
	lw	$ra, 116($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9231
	lw.s	$f2, 88($sp)
	lw.s	$f3, 108($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	fabs.2591
	addi	$sp, $sp, -120
	lw	$ra, 116($sp)
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	atan.2607
	addi	$sp, $sp, -120
	lw	$ra, 116($sp)
	lui	$at, 0x41f0		# 30.000000の上位16bits
	lui	$0, 0x0		# 30.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	mul.s	$f2, $f2, $f3
	lui	$at, 0x4049		# 3.141593の上位16bits
	lui	$0, 0xfdb		# 3.141593の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	j	beq_cont.9232
beq_else.9231:
	lui	$at, 0x4170		# 15.000000の上位16bits
	lui	$0, 0x0		# 15.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
beq_cont.9232:
	sw.s	$f2, 112($sp)
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	floor.2595
	addi	$sp, $sp, -120
	lw	$ra, 116($sp)
	lw.s	$f3, 112($sp)
	sub.s	$f2, $f3, $f2
	lui	$at, 0x3e19		# 0.150000の上位16bits
	lui	$0, 0x999a		# 0.150000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	lui	$at, 0x3f00		# 0.500000の上位16bits
	lui	$0, 0x0		# 0.500000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f4, 4($zero)
	lw.s	$f5, 96($sp)
	sub.s	$f4, $f4, $f5
	sw.s	$f2, 116($sp)
	sw.s	$f3, 120($sp)
	add.s	$f2, $f0, $f4
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	fsqr.2589
	addi	$sp, $sp, -128
	lw	$ra, 124($sp)
	lw.s	$f3, 120($sp)
	sub.s	$f2, $f3, $f2
	lui	$at, 0x3f00		# 0.500000の上位16bits
	lui	$0, 0x0		# 0.500000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	lw.s	$f4, 116($sp)
	sub.s	$f3, $f3, $f4
	sw.s	$f2, 124($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	fsqr.2589
	addi	$sp, $sp, -136
	lw	$ra, 132($sp)
	lw.s	$f3, 124($sp)
	sub.s	$f2, $f3, $f2
	sw.s	$f2, 128($sp)
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	fisneg.2580
	addi	$sp, $sp, -136
	lw	$ra, 132($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9233
	lw.s	$f2, 128($sp)
	j	beq_cont.9234
beq_else.9233:
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
beq_cont.9234:
	lui	$at, 0x437f		# 255.000000の上位16bits
	lui	$0, 0x0		# 255.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	mul.s	$f2, $f3, $f2
	lui	$at, 0x3e99		# 0.300000の上位16bits
	lui	$0, 0x999a		# 0.300000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	lw	$2, 4($sp)
	sw.s	$f2, 8($2)
	jr	$ra
beq_else.9228:
	jr	$ra
add_light.2969:
	lw	$2, 8($30)
	lw	$3, 4($30)
	sw.s	$f4, 0($sp)
	sw.s	$f3, 4($sp)
	sw.s	$f2, 8($sp)
	sw	$2, 12($sp)
	sw	$3, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	fispos.2578
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9237
	j	beq_cont.9238
beq_else.9237:
	lw.s	$f2, 8($sp)
	lw	$2, 16($sp)
	lw	$3, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	vecaccum.2680
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
beq_cont.9238:
	lw.s	$f2, 4($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	fispos.2578
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9239
	jr	$ra
beq_else.9239:
	lw.s	$f2, 4($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	fsqr.2589
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	fsqr.2589
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw.s	$f3, 0($sp)
	mul.s	$f2, $f2, $f3
	lw	$2, 16($sp)
	lw.s	$f3, 0($2)
	add.s	$f3, $f3, $f2
	sw.s	$f3, 0($2)
	lw.s	$f3, 4($2)
	add.s	$f3, $f3, $f2
	sw.s	$f3, 4($2)
	lw.s	$f3, 8($2)
	add.s	$f2, $f3, $f2
	sw.s	$f2, 8($2)
	jr	$ra
trace_reflections.2973:
	lw	$4, 32($30)
	lw	$5, 28($30)
	lw	$6, 24($30)
	lw	$7, 20($30)
	lw	$8, 16($30)
	lw	$9, 12($30)
	lw	$10, 8($30)
	lw	$11, 4($30)
	slti	$at, $2, 0
	bgtz	$at, blez_else.9242
	sll	$12, $2, 2
	add	$at, $12, $5
	lw	$5, 0($at)
	sw	$30, 0($sp)
	sw	$2, 4($sp)
	sw.s	$f3, 8($sp)
	sw	$11, 12($sp)
	sw	$3, 16($sp)
	sw.s	$f2, 20($sp)
	sw	$7, 24($sp)
	sw	$4, 28($sp)
	sw	$6, 32($sp)
	sw	$5, 36($sp)
	sw	$9, 40($sp)
	sw	$10, 44($sp)
	sw	$8, 48($sp)
	or	$2, $zero, $5
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	r_dvec.2764
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	lw	$30, 48($sp)
	sw	$2, 52($sp)
	sw	$ra, 60($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 64
	li	$ra, tmp.9243
	jr	$27
tmp.9243:
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9244
	j	beq_cont.9245
beq_else.9244:
	lw	$2, 44($sp)
	lw	$3, 0($2)
	lw	$4, 0($2)
	add	$3, $3, $4
	lw	$4, 0($2)
	add	$3, $3, $4
	lw	$2, 0($2)
	add	$2, $3, $2
	lw	$3, 40($sp)
	lw	$3, 0($3)
	add	$2, $2, $3
	lw	$3, 36($sp)
	sw	$2, 56($sp)
	or	$2, $zero, $3
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	r_surface_id.2762
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lw	$3, 56($sp)
	bne	$3, $2, beq_else.9246
	ori	$2, $zero, 0
	lw	$3, 32($sp)
	lw	$3, 0($3)
	lw	$30, 28($sp)
	sw	$ra, 60($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 64
	li	$ra, tmp.9248
	jr	$27
tmp.9248:
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9249
	lw	$2, 52($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	d_vec.2758
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	or	$3, $zero, $2
	lw	$2, 24($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	veciprod.2672
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lw	$2, 36($sp)
	sw.s	$f2, 60($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	r_bright.2766
	addi	$sp, $sp, -72
	lw	$ra, 68($sp)
	lw.s	$f3, 20($sp)
	mul.s	$f4, $f2, $f3
	lw.s	$f5, 60($sp)
	mul.s	$f4, $f4, $f5
	lw	$2, 52($sp)
	sw.s	$f4, 64($sp)
	sw.s	$f2, 68($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	d_vec.2758
	addi	$sp, $sp, -80
	lw	$ra, 76($sp)
	or	$3, $zero, $2
	lw	$2, 16($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	veciprod.2672
	addi	$sp, $sp, -80
	lw	$ra, 76($sp)
	lw.s	$f3, 68($sp)
	mul.s	$f3, $f3, $f2
	lw.s	$f2, 64($sp)
	lw.s	$f4, 8($sp)
	lw	$30, 12($sp)
	sw	$ra, 76($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 80
	li	$ra, tmp.9251
	jr	$27
tmp.9251:
	addi	$sp, $sp, -80
	lw	$ra, 76($sp)
	j	beq_cont.9250
beq_else.9249:
beq_cont.9250:
	j	beq_cont.9247
beq_else.9246:
beq_cont.9247:
beq_cont.9245:
	lw	$2, 4($sp)
	addi	$2, $2, -1
	lw.s	$f2, 20($sp)
	lw.s	$f3, 8($sp)
	lw	$3, 16($sp)
	lw	$30, 0($sp)
	lw	$27, 0($30)
	jr	$27
blez_else.9242:
	jr	$ra
trace_ray.2978:
	lw	$5, 80($30)
	lw	$6, 76($30)
	lw	$7, 72($30)
	lw	$8, 68($30)
	lw	$9, 64($30)
	lw	$10, 60($30)
	lw	$11, 56($30)
	lw	$12, 52($30)
	lw	$13, 48($30)
	lw	$14, 44($30)
	lw	$15, 40($30)
	lw	$16, 36($30)
	lw	$17, 32($30)
	lw	$18, 28($30)
	lw	$19, 24($30)
	lw	$20, 20($30)
	lw	$21, 16($30)
	lw	$22, 12($30)
	lw	$23, 8($30)
	lw	$24, 4($30)
	slti	$at, $2, 5
	blez	$at, bgtz_else.9253
	sw	$30, 0($sp)
	sw.s	$f3, 4($sp)
	sw	$7, 8($sp)
	sw	$6, 12($sp)
	sw	$16, 16($sp)
	sw	$11, 20($sp)
	sw	$24, 24($sp)
	sw	$10, 28($sp)
	sw	$13, 32($sp)
	sw	$15, 36($sp)
	sw	$8, 40($sp)
	sw	$4, 44($sp)
	sw	$19, 48($sp)
	sw	$5, 52($sp)
	sw	$20, 56($sp)
	sw	$9, 60($sp)
	sw	$22, 64($sp)
	sw	$14, 68($sp)
	sw	$21, 72($sp)
	sw	$12, 76($sp)
	sw	$23, 80($sp)
	sw.s	$f2, 84($sp)
	sw	$17, 88($sp)
	sw	$2, 92($sp)
	sw	$3, 96($sp)
	sw	$18, 100($sp)
	or	$2, $zero, $4
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	p_surface_ids.2743
	addi	$sp, $sp, -112
	lw	$ra, 108($sp)
	lw	$3, 96($sp)
	lw	$30, 100($sp)
	sw	$2, 104($sp)
	or	$2, $zero, $3
	sw	$ra, 108($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 112
	li	$ra, tmp.9254
	jr	$27
tmp.9254:
	addi	$sp, $sp, -112
	lw	$ra, 108($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9255
	ori	$2, $zero, -1
	lw	$3, 92($sp)
	sll	$4, $3, 2
	lw	$5, 104($sp)
	add	$at, $4, $5
	sw	$2, 0($at)
	ori	$at, $zero, 0
	bne	$3, $at, beq_else.9256
	jr	$ra
beq_else.9256:
	lw	$2, 96($sp)
	lw	$3, 88($sp)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	veciprod.2672
	addi	$sp, $sp, -112
	lw	$ra, 108($sp)
	sw	$ra, 108($sp)
	addi	$sp, $sp, 112
	jal	fneg.2593
	addi	$sp, $sp, -112
	lw	$ra, 108($sp)
	sw.s	$f2, 108($sp)
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	fispos.2578
	addi	$sp, $sp, -120
	lw	$ra, 116($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9258
	jr	$ra
beq_else.9258:
	lw.s	$f2, 108($sp)
	sw	$ra, 116($sp)
	addi	$sp, $sp, 120
	jal	fsqr.2589
	addi	$sp, $sp, -120
	lw	$ra, 116($sp)
	lw.s	$f3, 108($sp)
	mul.s	$f2, $f2, $f3
	lw.s	$f3, 84($sp)
	mul.s	$f2, $f2, $f3
	lw	$2, 80($sp)
	lw.s	$f3, 0($2)
	mul.s	$f2, $f2, $f3
	lw	$2, 76($sp)
	lw.s	$f3, 0($2)
	add.s	$f3, $f3, $f2
	sw.s	$f3, 0($2)
	lw.s	$f3, 4($2)
	add.s	$f3, $f3, $f2
	sw.s	$f3, 4($2)
	lw.s	$f3, 8($2)
	add.s	$f2, $f3, $f2
	sw.s	$f2, 8($2)
	jr	$ra
beq_else.9255:
	lw	$2, 72($sp)
	lw	$2, 0($2)
	sll	$3, $2, 2
	lw	$4, 68($sp)
	add	$at, $3, $4
	lw	$3, 0($at)
	sw	$2, 112($sp)
	sw	$3, 116($sp)
	or	$2, $zero, $3
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	o_reflectiontype.2701
	addi	$sp, $sp, -128
	lw	$ra, 124($sp)
	lw	$3, 116($sp)
	sw	$2, 120($sp)
	or	$2, $zero, $3
	sw	$ra, 124($sp)
	addi	$sp, $sp, 128
	jal	o_diffuse.2721
	addi	$sp, $sp, -128
	lw	$ra, 124($sp)
	lw.s	$f3, 84($sp)
	mul.s	$f2, $f2, $f3
	lw	$2, 116($sp)
	lw	$3, 96($sp)
	lw	$30, 64($sp)
	sw.s	$f2, 124($sp)
	sw	$ra, 132($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 136
	li	$ra, tmp.9261
	jr	$27
tmp.9261:
	addi	$sp, $sp, -136
	lw	$ra, 132($sp)
	lw	$2, 60($sp)
	lw	$3, 56($sp)
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	veccpy.2661
	addi	$sp, $sp, -136
	lw	$ra, 132($sp)
	lw	$2, 116($sp)
	lw	$3, 56($sp)
	lw	$30, 52($sp)
	sw	$ra, 132($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 136
	li	$ra, tmp.9262
	jr	$27
tmp.9262:
	addi	$sp, $sp, -136
	lw	$ra, 132($sp)
	lw	$2, 112($sp)
	add	$3, $2, $2
	add	$3, $3, $2
	add	$2, $3, $2
	lw	$3, 48($sp)
	lw	$3, 0($3)
	add	$2, $2, $3
	lw	$3, 92($sp)
	sll	$4, $3, 2
	lw	$5, 104($sp)
	add	$at, $4, $5
	sw	$2, 0($at)
	lw	$2, 44($sp)
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	p_intersection_points.2741
	addi	$sp, $sp, -136
	lw	$ra, 132($sp)
	lw	$3, 92($sp)
	sll	$4, $3, 2
	add	$at, $4, $2
	lw	$2, 0($at)
	lw	$4, 56($sp)
	or	$3, $zero, $4
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	veccpy.2661
	addi	$sp, $sp, -136
	lw	$ra, 132($sp)
	lw	$2, 44($sp)
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	p_calc_diffuse.2745
	addi	$sp, $sp, -136
	lw	$ra, 132($sp)
	lw	$3, 116($sp)
	sw	$2, 128($sp)
	or	$2, $zero, $3
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	o_diffuse.2721
	addi	$sp, $sp, -136
	lw	$ra, 132($sp)
	lui	$at, 0x3f00		# 0.500000の上位16bits
	lui	$0, 0x0		# 0.500000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	fless.2575
	addi	$sp, $sp, -136
	lw	$ra, 132($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9263
	ori	$2, $zero, 1
	lw	$3, 92($sp)
	sll	$4, $3, 2
	lw	$5, 128($sp)
	add	$at, $4, $5
	sw	$2, 0($at)
	lw	$2, 44($sp)
	sw	$ra, 132($sp)
	addi	$sp, $sp, 136
	jal	p_energy.2747
	addi	$sp, $sp, -136
	lw	$ra, 132($sp)
	lw	$3, 92($sp)
	sll	$4, $3, 2
	add	$at, $4, $2
	lw	$4, 0($at)
	lw	$5, 40($sp)
	sw	$2, 132($sp)
	or	$3, $zero, $5
	or	$2, $zero, $4
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	veccpy.2661
	addi	$sp, $sp, -144
	lw	$ra, 140($sp)
	lw	$2, 92($sp)
	sll	$3, $2, 2
	lw	$4, 132($sp)
	add	$at, $3, $4
	lw	$3, 0($at)
	lui	$at, 0x3b80		# 0.003906の上位16bits
	lui	$0, 0x0		# 0.003906の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	lw.s	$f3, 124($sp)
	mul.s	$f2, $f2, $f3
	or	$2, $zero, $3
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	vecscale.2690
	addi	$sp, $sp, -144
	lw	$ra, 140($sp)
	lw	$2, 44($sp)
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	p_nvectors.2756
	addi	$sp, $sp, -144
	lw	$ra, 140($sp)
	lw	$3, 92($sp)
	sll	$4, $3, 2
	add	$at, $4, $2
	lw	$2, 0($at)
	lw	$4, 36($sp)
	or	$3, $zero, $4
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	veccpy.2661
	addi	$sp, $sp, -144
	lw	$ra, 140($sp)
	j	beq_cont.9264
beq_else.9263:
	ori	$2, $zero, 0
	lw	$3, 92($sp)
	sll	$4, $3, 2
	lw	$5, 128($sp)
	add	$at, $4, $5
	sw	$2, 0($at)
beq_cont.9264:
	lui	$at, 0xc000		# -2.000000の上位16bits
	lui	$0, 0x0		# -2.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	lw	$2, 96($sp)
	lw	$3, 36($sp)
	sw.s	$f2, 136($sp)
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	veciprod.2672
	addi	$sp, $sp, -144
	lw	$ra, 140($sp)
	lw.s	$f3, 136($sp)
	mul.s	$f2, $f3, $f2
	lw	$2, 96($sp)
	lw	$3, 36($sp)
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	vecaccum.2680
	addi	$sp, $sp, -144
	lw	$ra, 140($sp)
	lw	$2, 116($sp)
	sw	$ra, 140($sp)
	addi	$sp, $sp, 144
	jal	o_hilight.2723
	addi	$sp, $sp, -144
	lw	$ra, 140($sp)
	lw.s	$f3, 84($sp)
	mul.s	$f2, $f3, $f2
	ori	$2, $zero, 0
	lw	$3, 32($sp)
	lw	$3, 0($3)
	lw	$30, 28($sp)
	sw.s	$f2, 140($sp)
	sw	$ra, 148($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 152
	li	$ra, tmp.9265
	jr	$27
tmp.9265:
	addi	$sp, $sp, -152
	lw	$ra, 148($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9266
	lw	$2, 36($sp)
	lw	$3, 88($sp)
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	veciprod.2672
	addi	$sp, $sp, -152
	lw	$ra, 148($sp)
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	fneg.2593
	addi	$sp, $sp, -152
	lw	$ra, 148($sp)
	lw.s	$f3, 124($sp)
	mul.s	$f2, $f2, $f3
	lw	$2, 96($sp)
	lw	$3, 88($sp)
	sw.s	$f2, 144($sp)
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	veciprod.2672
	addi	$sp, $sp, -152
	lw	$ra, 148($sp)
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	fneg.2593
	addi	$sp, $sp, -152
	lw	$ra, 148($sp)
	add.s	$f3, $f0, $f2
	lw.s	$f2, 144($sp)
	lw.s	$f4, 140($sp)
	lw	$30, 24($sp)
	sw	$ra, 148($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 152
	li	$ra, tmp.9268
	jr	$27
tmp.9268:
	addi	$sp, $sp, -152
	lw	$ra, 148($sp)
	j	beq_cont.9267
beq_else.9266:
beq_cont.9267:
	lw	$2, 56($sp)
	lw	$30, 20($sp)
	sw	$ra, 148($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 152
	li	$ra, tmp.9269
	jr	$27
tmp.9269:
	addi	$sp, $sp, -152
	lw	$ra, 148($sp)
	lw	$2, 16($sp)
	lw	$2, 0($2)
	addi	$2, $2, -1
	lw.s	$f2, 124($sp)
	lw.s	$f3, 140($sp)
	lw	$3, 96($sp)
	lw	$30, 12($sp)
	sw	$ra, 148($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 152
	li	$ra, tmp.9270
	jr	$27
tmp.9270:
	addi	$sp, $sp, -152
	lw	$ra, 148($sp)
	lui	$at, 0x3dcc		# 0.100000の上位16bits
	lui	$0, 0xcccd		# 0.100000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	lw.s	$f3, 84($sp)
	sw	$ra, 148($sp)
	addi	$sp, $sp, 152
	jal	fless.2575
	addi	$sp, $sp, -152
	lw	$ra, 148($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9271
	jr	$ra
beq_else.9271:
	lw	$2, 92($sp)
	slti	$at, $2, 4
	bgtz	$at, blez_else.9273
	j	blez_cont.9274
blez_else.9273:
	addi	$3, $2, 1
	ori	$4, $zero, -1
	sll	$3, $3, 2
	lw	$5, 104($sp)
	add	$at, $3, $5
	sw	$4, 0($at)
blez_cont.9274:
	lw	$3, 120($sp)
	ori	$at, $zero, 2
	bne	$3, $at, beq_else.9275
	lui	$at, 0x3f80		# 1.000000の上位16bits
	lui	$0, 0x0		# 1.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	lw	$3, 116($sp)
	sw.s	$f2, 148($sp)
	or	$2, $zero, $3
	sw	$ra, 156($sp)
	addi	$sp, $sp, 160
	jal	o_diffuse.2721
	addi	$sp, $sp, -160
	lw	$ra, 156($sp)
	lw.s	$f3, 148($sp)
	sub.s	$f2, $f3, $f2
	lw.s	$f3, 84($sp)
	mul.s	$f2, $f3, $f2
	lw	$2, 92($sp)
	addi	$2, $2, 1
	lw	$3, 8($sp)
	lw.s	$f3, 0($3)
	lw.s	$f4, 4($sp)
	add.s	$f3, $f4, $f3
	lw	$3, 96($sp)
	lw	$4, 44($sp)
	lw	$30, 0($sp)
	lw	$27, 0($30)
	jr	$27
beq_else.9275:
	jr	$ra
bgtz_else.9253:
	jr	$ra
trace_diffuse_ray.2984:
	lw	$3, 48($30)
	lw	$4, 44($30)
	lw	$5, 40($30)
	lw	$6, 36($30)
	lw	$7, 32($30)
	lw	$8, 28($30)
	lw	$9, 24($30)
	lw	$10, 20($30)
	lw	$11, 16($30)
	lw	$12, 12($30)
	lw	$13, 8($30)
	lw	$14, 4($30)
	sw	$4, 0($sp)
	sw	$14, 4($sp)
	sw.s	$f2, 8($sp)
	sw	$9, 12($sp)
	sw	$8, 16($sp)
	sw	$5, 20($sp)
	sw	$6, 24($sp)
	sw	$11, 28($sp)
	sw	$3, 32($sp)
	sw	$13, 36($sp)
	sw	$2, 40($sp)
	sw	$7, 44($sp)
	sw	$12, 48($sp)
	or	$30, $zero, $10
	sw	$ra, 52($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 56
	li	$ra, tmp.9278
	jr	$27
tmp.9278:
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9279
	jr	$ra
beq_else.9279:
	lw	$2, 48($sp)
	lw	$2, 0($2)
	sll	$2, $2, 2
	lw	$3, 44($sp)
	add	$at, $2, $3
	lw	$2, 0($at)
	lw	$3, 40($sp)
	sw	$2, 52($sp)
	or	$2, $zero, $3
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	d_vec.2758
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	or	$3, $zero, $2
	lw	$2, 52($sp)
	lw	$30, 36($sp)
	sw	$ra, 60($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 64
	li	$ra, tmp.9281
	jr	$27
tmp.9281:
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lw	$2, 52($sp)
	lw	$3, 28($sp)
	lw	$30, 32($sp)
	sw	$ra, 60($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 64
	li	$ra, tmp.9282
	jr	$27
tmp.9282:
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	ori	$2, $zero, 0
	lw	$3, 24($sp)
	lw	$3, 0($3)
	lw	$30, 20($sp)
	sw	$ra, 60($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 64
	li	$ra, tmp.9283
	jr	$27
tmp.9283:
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9284
	lw	$2, 16($sp)
	lw	$3, 12($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	veciprod.2672
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	fneg.2593
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	sw.s	$f2, 56($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	fispos.2578
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9285
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	j	beq_cont.9286
beq_else.9285:
	lw.s	$f2, 56($sp)
beq_cont.9286:
	lw.s	$f3, 8($sp)
	mul.s	$f2, $f3, $f2
	lw	$2, 52($sp)
	sw.s	$f2, 60($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	o_diffuse.2721
	addi	$sp, $sp, -72
	lw	$ra, 68($sp)
	lw.s	$f3, 60($sp)
	mul.s	$f2, $f3, $f2
	lw	$2, 4($sp)
	lw	$3, 0($sp)
	j	vecaccum.2680
beq_else.9284:
	jr	$ra
iter_trace_diffuse_rays.2987:
	lw	$6, 4($30)
	slti	$at, $5, 0
	bgtz	$at, blez_else.9288
	sll	$7, $5, 2
	add	$at, $7, $2
	lw	$7, 0($at)
	sw	$4, 0($sp)
	sw	$30, 4($sp)
	sw	$6, 8($sp)
	sw	$2, 12($sp)
	sw	$5, 16($sp)
	sw	$3, 20($sp)
	or	$2, $zero, $7
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	d_vec.2758
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw	$3, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	veciprod.2672
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	sw.s	$f2, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	fisneg.2580
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9289
	lw	$2, 16($sp)
	sll	$3, $2, 2
	lw	$4, 12($sp)
	add	$at, $3, $4
	lw	$3, 0($at)
	lui	$at, 0x4316		# 150.000000の上位16bits
	lui	$0, 0x0		# 150.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	lw.s	$f3, 24($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	lw	$30, 8($sp)
	or	$2, $zero, $3
	sw	$ra, 28($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 32
	li	$ra, tmp.9291
	jr	$27
tmp.9291:
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	j	beq_cont.9290
beq_else.9289:
	lw	$2, 16($sp)
	addi	$3, $2, 1
	sll	$3, $3, 2
	lw	$4, 12($sp)
	add	$at, $3, $4
	lw	$3, 0($at)
	lui	$at, 0xc316		# -150.000000の上位16bits
	lui	$0, 0x0		# -150.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	lw.s	$f3, 24($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	lw	$30, 8($sp)
	or	$2, $zero, $3
	sw	$ra, 28($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 32
	li	$ra, tmp.9292
	jr	$27
tmp.9292:
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
beq_cont.9290:
	lw	$2, 16($sp)
	addi	$5, $2, -2
	lw	$2, 12($sp)
	lw	$3, 20($sp)
	lw	$4, 0($sp)
	lw	$30, 4($sp)
	lw	$27, 0($30)
	jr	$27
blez_else.9288:
	jr	$ra
trace_diffuse_rays.2992:
	lw	$5, 8($30)
	lw	$6, 4($30)
	sw	$4, 0($sp)
	sw	$3, 4($sp)
	sw	$2, 8($sp)
	sw	$6, 12($sp)
	or	$2, $zero, $4
	or	$30, $zero, $5
	sw	$ra, 20($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 24
	li	$ra, tmp.9294
	jr	$27
tmp.9294:
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	ori	$5, $zero, 118
	lw	$2, 8($sp)
	lw	$3, 4($sp)
	lw	$4, 0($sp)
	lw	$30, 12($sp)
	lw	$27, 0($30)
	jr	$27
trace_diffuse_ray_80percent.2996:
	lw	$5, 8($30)
	lw	$6, 4($30)
	sw	$4, 0($sp)
	sw	$3, 4($sp)
	sw	$5, 8($sp)
	sw	$6, 12($sp)
	sw	$2, 16($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9295
	j	beq_cont.9296
beq_else.9295:
	lw	$7, 0($6)
	or	$2, $zero, $7
	or	$30, $zero, $5
	sw	$ra, 20($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 24
	li	$ra, tmp.9297
	jr	$27
tmp.9297:
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
beq_cont.9296:
	lw	$2, 16($sp)
	ori	$at, $zero, 1
	bne	$2, $at, beq_else.9298
	j	beq_cont.9299
beq_else.9298:
	lw	$3, 12($sp)
	lw	$4, 4($3)
	lw	$5, 4($sp)
	lw	$6, 0($sp)
	lw	$30, 8($sp)
	or	$3, $zero, $5
	or	$2, $zero, $4
	or	$4, $zero, $6
	sw	$ra, 20($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 24
	li	$ra, tmp.9300
	jr	$27
tmp.9300:
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
beq_cont.9299:
	lw	$2, 16($sp)
	ori	$at, $zero, 2
	bne	$2, $at, beq_else.9301
	j	beq_cont.9302
beq_else.9301:
	lw	$3, 12($sp)
	lw	$4, 8($3)
	lw	$5, 4($sp)
	lw	$6, 0($sp)
	lw	$30, 8($sp)
	or	$3, $zero, $5
	or	$2, $zero, $4
	or	$4, $zero, $6
	sw	$ra, 20($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 24
	li	$ra, tmp.9303
	jr	$27
tmp.9303:
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
beq_cont.9302:
	lw	$2, 16($sp)
	ori	$at, $zero, 3
	bne	$2, $at, beq_else.9304
	j	beq_cont.9305
beq_else.9304:
	lw	$3, 12($sp)
	lw	$4, 12($3)
	lw	$5, 4($sp)
	lw	$6, 0($sp)
	lw	$30, 8($sp)
	or	$3, $zero, $5
	or	$2, $zero, $4
	or	$4, $zero, $6
	sw	$ra, 20($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 24
	li	$ra, tmp.9306
	jr	$27
tmp.9306:
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
beq_cont.9305:
	lw	$2, 16($sp)
	ori	$at, $zero, 4
	bne	$2, $at, beq_else.9307
	jr	$ra
beq_else.9307:
	lw	$2, 12($sp)
	lw	$2, 16($2)
	lw	$3, 4($sp)
	lw	$4, 0($sp)
	lw	$30, 8($sp)
	lw	$27, 0($30)
	jr	$27
calc_diffuse_using_1point.3000:
	lw	$4, 12($30)
	lw	$5, 8($30)
	lw	$6, 4($30)
	sw	$5, 0($sp)
	sw	$4, 4($sp)
	sw	$6, 8($sp)
	sw	$3, 12($sp)
	sw	$2, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	p_received_ray_20percent.2749
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$3, 16($sp)
	sw	$2, 20($sp)
	or	$2, $zero, $3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	p_nvectors.2756
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw	$3, 16($sp)
	sw	$2, 24($sp)
	or	$2, $zero, $3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	p_intersection_points.2741
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw	$3, 16($sp)
	sw	$2, 28($sp)
	or	$2, $zero, $3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	p_energy.2747
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw	$3, 12($sp)
	sll	$4, $3, 2
	lw	$5, 20($sp)
	add	$at, $4, $5
	lw	$4, 0($at)
	lw	$5, 8($sp)
	sw	$2, 32($sp)
	or	$3, $zero, $4
	or	$2, $zero, $5
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	veccpy.2661
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw	$2, 16($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	p_group_id.2751
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw	$3, 12($sp)
	sll	$4, $3, 2
	lw	$5, 24($sp)
	add	$at, $4, $5
	lw	$4, 0($at)
	sll	$5, $3, 2
	lw	$6, 28($sp)
	add	$at, $5, $6
	lw	$5, 0($at)
	lw	$30, 4($sp)
	or	$3, $zero, $4
	or	$4, $zero, $5
	sw	$ra, 36($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 40
	li	$ra, tmp.9309
	jr	$27
tmp.9309:
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw	$2, 12($sp)
	sll	$2, $2, 2
	lw	$3, 32($sp)
	add	$at, $2, $3
	lw	$3, 0($at)
	lw	$2, 0($sp)
	lw	$4, 8($sp)
	j	vecaccumv.2693
calc_diffuse_using_5points.3003:
	lw	$7, 8($30)
	lw	$8, 4($30)
	sll	$9, $2, 2
	add	$at, $9, $3
	lw	$3, 0($at)
	sw	$7, 0($sp)
	sw	$8, 4($sp)
	sw	$6, 8($sp)
	sw	$5, 12($sp)
	sw	$4, 16($sp)
	sw	$2, 20($sp)
	or	$2, $zero, $3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	p_received_ray_20percent.2749
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw	$3, 20($sp)
	addi	$4, $3, -1
	sll	$4, $4, 2
	lw	$5, 16($sp)
	add	$at, $4, $5
	lw	$4, 0($at)
	sw	$2, 24($sp)
	or	$2, $zero, $4
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	p_received_ray_20percent.2749
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw	$3, 20($sp)
	sll	$4, $3, 2
	lw	$5, 16($sp)
	add	$at, $4, $5
	lw	$4, 0($at)
	sw	$2, 28($sp)
	or	$2, $zero, $4
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	p_received_ray_20percent.2749
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw	$3, 20($sp)
	addi	$4, $3, 1
	sll	$4, $4, 2
	lw	$5, 16($sp)
	add	$at, $4, $5
	lw	$4, 0($at)
	sw	$2, 32($sp)
	or	$2, $zero, $4
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	p_received_ray_20percent.2749
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw	$3, 20($sp)
	sll	$4, $3, 2
	lw	$5, 12($sp)
	add	$at, $4, $5
	lw	$4, 0($at)
	sw	$2, 36($sp)
	or	$2, $zero, $4
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	p_received_ray_20percent.2749
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw	$3, 8($sp)
	sll	$4, $3, 2
	lw	$5, 24($sp)
	add	$at, $4, $5
	lw	$4, 0($at)
	lw	$5, 4($sp)
	sw	$2, 40($sp)
	or	$3, $zero, $4
	or	$2, $zero, $5
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	veccpy.2661
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw	$2, 8($sp)
	sll	$3, $2, 2
	lw	$4, 28($sp)
	add	$at, $3, $4
	lw	$3, 0($at)
	lw	$4, 4($sp)
	or	$2, $zero, $4
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	vecadd.2684
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw	$2, 8($sp)
	sll	$3, $2, 2
	lw	$4, 32($sp)
	add	$at, $3, $4
	lw	$3, 0($at)
	lw	$4, 4($sp)
	or	$2, $zero, $4
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	vecadd.2684
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw	$2, 8($sp)
	sll	$3, $2, 2
	lw	$4, 36($sp)
	add	$at, $3, $4
	lw	$3, 0($at)
	lw	$4, 4($sp)
	or	$2, $zero, $4
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	vecadd.2684
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw	$2, 8($sp)
	sll	$3, $2, 2
	lw	$4, 40($sp)
	add	$at, $3, $4
	lw	$3, 0($at)
	lw	$4, 4($sp)
	or	$2, $zero, $4
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	vecadd.2684
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw	$2, 20($sp)
	sll	$2, $2, 2
	lw	$3, 16($sp)
	add	$at, $2, $3
	lw	$2, 0($at)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	p_energy.2747
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw	$3, 8($sp)
	sll	$3, $3, 2
	add	$at, $3, $2
	lw	$3, 0($at)
	lw	$2, 0($sp)
	lw	$4, 4($sp)
	j	vecaccumv.2693
do_without_neighbors.3009:
	lw	$4, 4($30)
	slti	$at, $3, 5
	blez	$at, bgtz_else.9310
	sw	$30, 0($sp)
	sw	$4, 4($sp)
	sw	$2, 8($sp)
	sw	$3, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	p_surface_ids.2743
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$3, 12($sp)
	sll	$4, $3, 2
	add	$at, $4, $2
	lw	$2, 0($at)
	slti	$at, $2, 0
	bgtz	$at, blez_else.9311
	lw	$2, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	p_calc_diffuse.2745
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$3, 12($sp)
	sll	$4, $3, 2
	add	$at, $4, $2
	lw	$2, 0($at)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9312
	j	beq_cont.9313
beq_else.9312:
	lw	$2, 8($sp)
	lw	$30, 4($sp)
	sw	$ra, 20($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 24
	li	$ra, tmp.9314
	jr	$27
tmp.9314:
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
beq_cont.9313:
	lw	$2, 12($sp)
	addi	$3, $2, 1
	lw	$2, 8($sp)
	lw	$30, 0($sp)
	lw	$27, 0($30)
	jr	$27
blez_else.9311:
	jr	$ra
bgtz_else.9310:
	jr	$ra
neighbors_exist.3012:
	lw	$4, 4($30)
	lw	$5, 4($4)
	addi	$6, $3, 1
	addi	$at, $6, 1
	slt	$at, $5, $at
	blez	$at, bgtz_else.9317
	ori	$2, $zero, 0
	jr	$ra
bgtz_else.9317:
	slti	$at, $3, 1
	blez	$at, bgtz_else.9318
	ori	$2, $zero, 0
	jr	$ra
bgtz_else.9318:
	lw	$3, 0($4)
	addi	$4, $2, 1
	addi	$at, $4, 1
	slt	$at, $3, $at
	blez	$at, bgtz_else.9319
	ori	$2, $zero, 0
	jr	$ra
bgtz_else.9319:
	slti	$at, $2, 1
	blez	$at, bgtz_else.9320
	ori	$2, $zero, 0
	jr	$ra
bgtz_else.9320:
	ori	$2, $zero, 1
	jr	$ra
get_surface_id.3016:
	sw	$3, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	p_surface_ids.2743
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	lw	$3, 0($sp)
	sll	$3, $3, 2
	add	$at, $3, $2
	lw	$2, 0($at)
	jr	$ra
neighbors_are_available.3019:
	sll	$7, $2, 2
	add	$at, $7, $4
	lw	$7, 0($at)
	sw	$4, 0($sp)
	sw	$5, 4($sp)
	sw	$6, 8($sp)
	sw	$3, 12($sp)
	sw	$2, 16($sp)
	or	$3, $zero, $6
	or	$2, $zero, $7
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	get_surface_id.3016
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$3, 16($sp)
	sll	$4, $3, 2
	lw	$5, 12($sp)
	add	$at, $4, $5
	lw	$4, 0($at)
	lw	$5, 8($sp)
	sw	$2, 20($sp)
	or	$3, $zero, $5
	or	$2, $zero, $4
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	get_surface_id.3016
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw	$3, 20($sp)
	bne	$2, $3, beq_else.9321
	lw	$2, 16($sp)
	sll	$4, $2, 2
	lw	$5, 4($sp)
	add	$at, $4, $5
	lw	$4, 0($at)
	lw	$5, 8($sp)
	or	$3, $zero, $5
	or	$2, $zero, $4
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	get_surface_id.3016
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw	$3, 20($sp)
	bne	$2, $3, beq_else.9322
	lw	$2, 16($sp)
	addi	$4, $2, -1
	sll	$4, $4, 2
	lw	$5, 0($sp)
	add	$at, $4, $5
	lw	$4, 0($at)
	lw	$6, 8($sp)
	or	$3, $zero, $6
	or	$2, $zero, $4
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	get_surface_id.3016
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw	$3, 20($sp)
	bne	$2, $3, beq_else.9323
	lw	$2, 16($sp)
	addi	$2, $2, 1
	sll	$2, $2, 2
	lw	$4, 0($sp)
	add	$at, $2, $4
	lw	$2, 0($at)
	lw	$4, 8($sp)
	or	$3, $zero, $4
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	get_surface_id.3016
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw	$3, 20($sp)
	bne	$2, $3, beq_else.9324
	ori	$2, $zero, 1
	jr	$ra
beq_else.9324:
	ori	$2, $zero, 0
	jr	$ra
beq_else.9323:
	ori	$2, $zero, 0
	jr	$ra
beq_else.9322:
	ori	$2, $zero, 0
	jr	$ra
beq_else.9321:
	ori	$2, $zero, 0
	jr	$ra
try_exploit_neighbors.3025:
	lw	$8, 8($30)
	lw	$9, 4($30)
	sll	$10, $2, 2
	add	$at, $10, $5
	lw	$10, 0($at)
	slti	$at, $7, 5
	blez	$at, bgtz_else.9325
	sw	$3, 0($sp)
	sw	$30, 4($sp)
	sw	$9, 8($sp)
	sw	$10, 12($sp)
	sw	$8, 16($sp)
	sw	$7, 20($sp)
	sw	$6, 24($sp)
	sw	$5, 28($sp)
	sw	$4, 32($sp)
	sw	$2, 36($sp)
	or	$3, $zero, $7
	or	$2, $zero, $10
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	get_surface_id.3016
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	slti	$at, $2, 0
	bgtz	$at, blez_else.9326
	lw	$2, 36($sp)
	lw	$3, 32($sp)
	lw	$4, 28($sp)
	lw	$5, 24($sp)
	lw	$6, 20($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	neighbors_are_available.3019
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9327
	lw	$2, 36($sp)
	sll	$2, $2, 2
	lw	$3, 28($sp)
	add	$at, $2, $3
	lw	$2, 0($at)
	lw	$3, 20($sp)
	lw	$30, 16($sp)
	lw	$27, 0($30)
	jr	$27
beq_else.9327:
	lw	$2, 12($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	p_calc_diffuse.2745
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw	$6, 20($sp)
	sll	$3, $6, 2
	add	$at, $3, $2
	lw	$2, 0($at)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9328
	j	beq_cont.9329
beq_else.9328:
	lw	$2, 36($sp)
	lw	$3, 32($sp)
	lw	$4, 28($sp)
	lw	$5, 24($sp)
	lw	$30, 8($sp)
	sw	$ra, 44($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 48
	li	$ra, tmp.9330
	jr	$27
tmp.9330:
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
beq_cont.9329:
	lw	$2, 20($sp)
	addi	$7, $2, 1
	lw	$2, 36($sp)
	lw	$3, 0($sp)
	lw	$4, 32($sp)
	lw	$5, 28($sp)
	lw	$6, 24($sp)
	lw	$30, 4($sp)
	lw	$27, 0($30)
	jr	$27
blez_else.9326:
	jr	$ra
bgtz_else.9325:
	jr	$ra
write_ppm_header.3032:
	lw	$2, 4($30)
	ori	$3, $zero, 80
	sw	$2, 0($sp)
	or	$2, $zero, $3
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_char
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	ori	$2, $zero, 51
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_char
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	ori	$2, $zero, 10
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_char
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	lw	$2, 0($sp)
	lw	$3, 0($2)
	or	$2, $zero, $3
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_int
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	ori	$2, $zero, 32
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_char
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	lw	$2, 0($sp)
	lw	$2, 4($2)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_int
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	ori	$2, $zero, 32
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_char
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	ori	$2, $zero, 255
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_int
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	ori	$2, $zero, 10
	j	min_caml_print_char
write_rgb_element.3034:
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_int_of_float
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	slti	$at, $2, 256
	blez	$at, bgtz_else.9333
	slti	$at, $2, 0
	bgtz	$at, blez_else.9335
	j	blez_cont.9336
blez_else.9335:
	ori	$2, $zero, 0
blez_cont.9336:
	j	bgtz_cont.9334
bgtz_else.9333:
	ori	$2, $zero, 255
bgtz_cont.9334:
	j	min_caml_print_int
write_rgb.3036:
	lw	$2, 4($30)
	lw.s	$f2, 0($2)
	sw	$2, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	write_rgb_element.3034
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	ori	$2, $zero, 32
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_char
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	lw	$2, 0($sp)
	lw.s	$f2, 4($2)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	write_rgb_element.3034
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	ori	$2, $zero, 32
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_char
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	lw	$2, 0($sp)
	lw.s	$f2, 8($2)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	write_rgb_element.3034
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	ori	$2, $zero, 10
	j	min_caml_print_char
pretrace_diffuse_rays.3038:
	lw	$4, 12($30)
	lw	$5, 8($30)
	lw	$6, 4($30)
	slti	$at, $3, 5
	blez	$at, bgtz_else.9337
	sw	$30, 0($sp)
	sw	$4, 4($sp)
	sw	$5, 8($sp)
	sw	$6, 12($sp)
	sw	$3, 16($sp)
	sw	$2, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	get_surface_id.3016
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	slti	$at, $2, 0
	bgtz	$at, blez_else.9338
	lw	$2, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	p_calc_diffuse.2745
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw	$3, 16($sp)
	sll	$4, $3, 2
	add	$at, $4, $2
	lw	$2, 0($at)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9339
	j	beq_cont.9340
beq_else.9339:
	lw	$2, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	p_group_id.2751
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw	$3, 12($sp)
	sw	$2, 24($sp)
	or	$2, $zero, $3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	vecbzero.2659
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw	$2, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	p_nvectors.2756
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw	$3, 20($sp)
	sw	$2, 28($sp)
	or	$2, $zero, $3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	p_intersection_points.2741
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw	$3, 24($sp)
	sll	$3, $3, 2
	lw	$4, 8($sp)
	add	$at, $3, $4
	lw	$3, 0($at)
	lw	$4, 16($sp)
	sll	$5, $4, 2
	lw	$6, 28($sp)
	add	$at, $5, $6
	lw	$5, 0($at)
	sll	$6, $4, 2
	add	$at, $6, $2
	lw	$2, 0($at)
	lw	$30, 4($sp)
	or	$4, $zero, $2
	or	$2, $zero, $3
	or	$3, $zero, $5
	sw	$ra, 36($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 40
	li	$ra, tmp.9341
	jr	$27
tmp.9341:
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw	$2, 20($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	p_received_ray_20percent.2749
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw	$3, 16($sp)
	sll	$4, $3, 2
	add	$at, $4, $2
	lw	$2, 0($at)
	lw	$4, 12($sp)
	or	$3, $zero, $4
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	veccpy.2661
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
beq_cont.9340:
	lw	$2, 16($sp)
	addi	$3, $2, 1
	lw	$2, 20($sp)
	lw	$30, 0($sp)
	lw	$27, 0($30)
	jr	$27
blez_else.9338:
	jr	$ra
bgtz_else.9337:
	jr	$ra
pretrace_pixels.3041:
	lw	$5, 36($30)
	lw	$6, 32($30)
	lw	$7, 28($30)
	lw	$8, 24($30)
	lw	$9, 20($30)
	lw	$10, 16($30)
	lw	$11, 12($30)
	lw	$12, 8($30)
	lw	$13, 4($30)
	slti	$at, $3, 0
	bgtz	$at, blez_else.9344
	lw.s	$f5, 0($9)
	lw	$9, 0($13)
	sub	$9, $3, $9
	sw	$30, 0($sp)
	sw	$12, 4($sp)
	sw	$4, 8($sp)
	sw	$6, 12($sp)
	sw	$2, 16($sp)
	sw	$3, 20($sp)
	sw	$5, 24($sp)
	sw	$7, 28($sp)
	sw	$10, 32($sp)
	sw.s	$f4, 36($sp)
	sw.s	$f3, 40($sp)
	sw	$11, 44($sp)
	sw.s	$f2, 48($sp)
	sw	$8, 52($sp)
	sw.s	$f5, 56($sp)
	or	$2, $zero, $9
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_float_of_int
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lw.s	$f3, 56($sp)
	mul.s	$f2, $f3, $f2
	lw	$2, 52($sp)
	lw.s	$f3, 0($2)
	mul.s	$f3, $f2, $f3
	lw.s	$f4, 48($sp)
	add.s	$f3, $f3, $f4
	lw	$3, 44($sp)
	sw.s	$f3, 0($3)
	lw.s	$f3, 4($2)
	mul.s	$f3, $f2, $f3
	lw.s	$f5, 40($sp)
	add.s	$f3, $f3, $f5
	sw.s	$f3, 4($3)
	lw.s	$f3, 8($2)
	mul.s	$f2, $f2, $f3
	lw.s	$f3, 36($sp)
	add.s	$f2, $f2, $f3
	sw.s	$f2, 8($3)
	ori	$2, $zero, 0
	or	$27, $zero, $3
	or	$3, $zero, $2
	or	$2, $zero, $27
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	vecunit_sgn.2669
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lw	$2, 32($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	vecbzero.2659
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lw	$2, 28($sp)
	lw	$3, 24($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	veccpy.2661
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	ori	$2, $zero, 0
	lui	$at, 0x3f80		# 1.000000の上位16bits
	lui	$0, 0x0		# 1.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	lw	$3, 20($sp)
	sll	$4, $3, 2
	lw	$5, 16($sp)
	add	$at, $4, $5
	lw	$4, 0($at)
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	lw	$6, 44($sp)
	lw	$30, 12($sp)
	or	$3, $zero, $6
	sw	$ra, 60($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 64
	li	$ra, tmp.9345
	jr	$27
tmp.9345:
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lw	$2, 20($sp)
	sll	$3, $2, 2
	lw	$4, 16($sp)
	add	$at, $3, $4
	lw	$3, 0($at)
	or	$2, $zero, $3
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	p_rgb.2739
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lw	$3, 32($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	veccpy.2661
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lw	$2, 20($sp)
	sll	$3, $2, 2
	lw	$4, 16($sp)
	add	$at, $3, $4
	lw	$3, 0($at)
	lw	$5, 8($sp)
	or	$2, $zero, $3
	or	$3, $zero, $5
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	p_set_group_id.2753
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lw	$2, 20($sp)
	sll	$3, $2, 2
	lw	$4, 16($sp)
	add	$at, $3, $4
	lw	$3, 0($at)
	ori	$5, $zero, 0
	lw	$30, 4($sp)
	or	$2, $zero, $3
	or	$3, $zero, $5
	sw	$ra, 60($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 64
	li	$ra, tmp.9346
	jr	$27
tmp.9346:
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lw	$2, 20($sp)
	addi	$2, $2, -1
	ori	$3, $zero, 1
	lw	$4, 8($sp)
	sw	$2, 60($sp)
	or	$2, $zero, $4
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	add_mod5.2648
	addi	$sp, $sp, -72
	lw	$ra, 68($sp)
	or	$4, $zero, $2
	lw.s	$f2, 48($sp)
	lw.s	$f3, 40($sp)
	lw.s	$f4, 36($sp)
	lw	$2, 16($sp)
	lw	$3, 60($sp)
	lw	$30, 0($sp)
	lw	$27, 0($30)
	jr	$27
blez_else.9344:
	jr	$ra
pretrace_line.3048:
	lw	$5, 24($30)
	lw	$6, 20($30)
	lw	$7, 16($30)
	lw	$8, 12($30)
	lw	$9, 8($30)
	lw	$10, 4($30)
	lw.s	$f2, 0($7)
	lw	$7, 4($10)
	sub	$3, $3, $7
	sw	$4, 0($sp)
	sw	$2, 4($sp)
	sw	$8, 8($sp)
	sw	$9, 12($sp)
	sw	$5, 16($sp)
	sw	$6, 20($sp)
	sw.s	$f2, 24($sp)
	or	$2, $zero, $3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_float_of_int
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw.s	$f3, 24($sp)
	mul.s	$f2, $f3, $f2
	lw	$2, 20($sp)
	lw.s	$f3, 0($2)
	mul.s	$f3, $f2, $f3
	lw	$3, 16($sp)
	lw.s	$f4, 0($3)
	add.s	$f3, $f3, $f4
	lw.s	$f4, 4($2)
	mul.s	$f4, $f2, $f4
	lw.s	$f5, 4($3)
	add.s	$f4, $f4, $f5
	lw.s	$f5, 8($2)
	mul.s	$f2, $f2, $f5
	lw.s	$f5, 8($3)
	add.s	$f2, $f2, $f5
	lw	$2, 12($sp)
	lw	$2, 0($2)
	addi	$3, $2, -1
	lw	$2, 4($sp)
	lw	$4, 0($sp)
	lw	$30, 8($sp)
	add.s	$f31, $f0, $f4
	add.s	$f4, $f0, $f2
	add.s	$f2, $f0, $f3
	add.s	$f3, $f0, $f31
	lw	$27, 0($30)
	jr	$27
scan_pixel.3052:
	lw	$7, 24($30)
	lw	$8, 20($30)
	lw	$9, 16($30)
	lw	$10, 12($30)
	lw	$11, 8($30)
	lw	$12, 4($30)
	lw	$11, 0($11)
	addi	$at, $2, 1
	slt	$at, $11, $at
	blez	$at, bgtz_else.9348
	jr	$ra
bgtz_else.9348:
	sll	$11, $2, 2
	add	$at, $11, $5
	lw	$11, 0($at)
	sw	$30, 0($sp)
	sw	$7, 4($sp)
	sw	$4, 8($sp)
	sw	$8, 12($sp)
	sw	$12, 16($sp)
	sw	$5, 20($sp)
	sw	$6, 24($sp)
	sw	$3, 28($sp)
	sw	$2, 32($sp)
	sw	$10, 36($sp)
	sw	$9, 40($sp)
	or	$2, $zero, $11
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	p_rgb.2739
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	or	$3, $zero, $2
	lw	$2, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	veccpy.2661
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw	$2, 32($sp)
	lw	$3, 28($sp)
	lw	$4, 24($sp)
	lw	$30, 36($sp)
	sw	$ra, 44($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 48
	li	$ra, tmp.9350
	jr	$27
tmp.9350:
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9351
	lw	$2, 32($sp)
	sll	$3, $2, 2
	lw	$4, 20($sp)
	add	$at, $3, $4
	lw	$3, 0($at)
	ori	$5, $zero, 0
	lw	$30, 16($sp)
	or	$2, $zero, $3
	or	$3, $zero, $5
	sw	$ra, 44($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 48
	li	$ra, tmp.9353
	jr	$27
tmp.9353:
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	j	beq_cont.9352
beq_else.9351:
	ori	$7, $zero, 0
	lw	$2, 32($sp)
	lw	$3, 28($sp)
	lw	$4, 8($sp)
	lw	$5, 20($sp)
	lw	$6, 24($sp)
	lw	$30, 12($sp)
	sw	$ra, 44($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 48
	li	$ra, tmp.9354
	jr	$27
tmp.9354:
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
beq_cont.9352:
	lw	$30, 4($sp)
	sw	$ra, 44($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 48
	li	$ra, tmp.9355
	jr	$27
tmp.9355:
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw	$2, 32($sp)
	addi	$2, $2, 1
	lw	$3, 28($sp)
	lw	$4, 8($sp)
	lw	$5, 20($sp)
	lw	$6, 24($sp)
	lw	$30, 0($sp)
	lw	$27, 0($30)
	jr	$27
scan_line.3058:
	lw	$7, 12($30)
	lw	$8, 8($30)
	lw	$9, 4($30)
	lw	$10, 4($9)
	addi	$at, $2, 1
	slt	$at, $10, $at
	blez	$at, bgtz_else.9356
	jr	$ra
bgtz_else.9356:
	lw	$9, 4($9)
	addi	$9, $9, -1
	sw	$30, 0($sp)
	sw	$6, 4($sp)
	sw	$5, 8($sp)
	sw	$4, 12($sp)
	sw	$3, 16($sp)
	sw	$2, 20($sp)
	sw	$7, 24($sp)
	addi	$at, $2, 1
	slt	$at, $9, $at
	blez	$at, bgtz_else.9358
	j	bgtz_cont.9359
bgtz_else.9358:
	addi	$9, $2, 1
	or	$4, $zero, $6
	or	$3, $zero, $9
	or	$2, $zero, $5
	or	$30, $zero, $8
	sw	$ra, 28($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 32
	li	$ra, tmp.9360
	jr	$27
tmp.9360:
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
bgtz_cont.9359:
	ori	$2, $zero, 0
	lw	$3, 20($sp)
	lw	$4, 16($sp)
	lw	$5, 12($sp)
	lw	$6, 8($sp)
	lw	$30, 24($sp)
	sw	$ra, 28($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 32
	li	$ra, tmp.9361
	jr	$27
tmp.9361:
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw	$2, 20($sp)
	addi	$2, $2, 1
	ori	$3, $zero, 2
	lw	$4, 4($sp)
	sw	$2, 28($sp)
	or	$2, $zero, $4
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	add_mod5.2648
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	or	$6, $zero, $2
	lw	$2, 28($sp)
	lw	$3, 12($sp)
	lw	$4, 8($sp)
	lw	$5, 16($sp)
	lw	$30, 0($sp)
	lw	$27, 0($30)
	jr	$27
create_float5x3array.3064:
	ori	$2, $zero, 3
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_float_array
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	or	$3, $zero, $2
	ori	$2, $zero, 5
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_array
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	ori	$3, $zero, 3
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$2, 0($sp)
	or	$2, $zero, $3
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_float_array
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	lw	$3, 0($sp)
	sw	$2, 4($3)
	ori	$2, $zero, 3
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_float_array
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	lw	$3, 0($sp)
	sw	$2, 8($3)
	ori	$2, $zero, 3
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_float_array
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	lw	$3, 0($sp)
	sw	$2, 12($3)
	ori	$2, $zero, 3
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_float_array
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	lw	$3, 0($sp)
	sw	$2, 16($3)
	or	$2, $zero, $3
	jr	$ra
create_pixel.3066:
	ori	$2, $zero, 3
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_float_array
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	sw	$2, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	create_float5x3array.3064
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	ori	$3, $zero, 5
	ori	$4, $zero, 0
	sw	$2, 4($sp)
	or	$2, $zero, $3
	or	$3, $zero, $4
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_array
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	ori	$3, $zero, 5
	ori	$4, $zero, 0
	sw	$2, 8($sp)
	or	$2, $zero, $3
	or	$3, $zero, $4
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_array
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	sw	$2, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	create_float5x3array.3064
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	sw	$2, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	create_float5x3array.3064
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	ori	$3, $zero, 1
	ori	$4, $zero, 0
	sw	$2, 20($sp)
	or	$2, $zero, $3
	or	$3, $zero, $4
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_create_array
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	sw	$2, 24($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	create_float5x3array.3064
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	or	$3, $zero, $gp
	addi	$gp, $gp, 32
	sw	$2, 28($3)
	lw	$2, 24($sp)
	sw	$2, 24($3)
	lw	$2, 20($sp)
	sw	$2, 20($3)
	lw	$2, 16($sp)
	sw	$2, 16($3)
	lw	$2, 12($sp)
	sw	$2, 12($3)
	lw	$2, 8($sp)
	sw	$2, 8($3)
	lw	$2, 4($sp)
	sw	$2, 4($3)
	lw	$2, 0($sp)
	sw	$2, 0($3)
	or	$2, $zero, $3
	jr	$ra
init_line_elements.3068:
	slti	$at, $3, 0
	bgtz	$at, blez_else.9362
	sw	$2, 0($sp)
	sw	$3, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	create_pixel.3066
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$3, 4($sp)
	sll	$4, $3, 2
	lw	$5, 0($sp)
	add	$at, $4, $5
	sw	$2, 0($at)
	addi	$3, $3, -1
	or	$2, $zero, $5
	j	init_line_elements.3068
blez_else.9362:
	jr	$ra
create_pixelline.3071:
	lw	$2, 4($30)
	lw	$3, 0($2)
	sw	$2, 0($sp)
	sw	$3, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	create_pixel.3066
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	or	$3, $zero, $2
	lw	$2, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_array
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$3, 0($sp)
	lw	$3, 0($3)
	addi	$3, $3, -2
	j	init_line_elements.3068
tan.3073:
	sw.s	$f2, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	sin.2603
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	lw.s	$f3, 0($sp)
	sw.s	$f2, 4($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	cos.2601
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw.s	$f3, 4($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	jr	$ra
adjust_position.3075:
	mul.s	$f2, $f2, $f2
	lui	$at, 0x3dcc		# 0.100000の上位16bits
	lui	$0, 0xcccd		# 0.100000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f4, 4($zero)
	add.s	$f2, $f2, $f4
	sw.s	$f3, 0($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_sqrt
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	lui	$at, 0x3f80		# 1.000000の上位16bits
	lui	$0, 0x0		# 1.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	inv.s	$f1, $f2
	mul.s	$f3, $f3, $f1
	sw.s	$f2, 4($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	atan.2607
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw.s	$f3, 0($sp)
	mul.s	$f2, $f2, $f3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	tan.3073
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw.s	$f3, 4($sp)
	mul.s	$f2, $f2, $f3
	jr	$ra
calc_dirvec.3078:
	lw	$5, 4($30)
	slti	$at, $2, 5
	bgtz	$at, blez_else.9363
	sw	$4, 0($sp)
	sw	$5, 4($sp)
	sw	$3, 8($sp)
	sw.s	$f2, 12($sp)
	sw.s	$f3, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	fsqr.2589
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw.s	$f3, 16($sp)
	sw.s	$f2, 20($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	fsqr.2589
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw.s	$f3, 20($sp)
	add.s	$f2, $f3, $f2
	lui	$at, 0x3f80		# 1.000000の上位16bits
	lui	$0, 0x0		# 1.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	add.s	$f2, $f2, $f3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_sqrt
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw.s	$f3, 12($sp)
	inv.s	$f1, $f2
	mul.s	$f3, $f3, $f1
	lw.s	$f4, 16($sp)
	inv.s	$f1, $f2
	mul.s	$f4, $f4, $f1
	lui	$at, 0x3f80		# 1.000000の上位16bits
	lui	$0, 0x0		# 1.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f5, 4($zero)
	inv.s	$f1, $f2
	mul.s	$f2, $f5, $f1
	lw	$2, 8($sp)
	sll	$2, $2, 2
	lw	$3, 4($sp)
	add	$at, $2, $3
	lw	$2, 0($at)
	lw	$3, 0($sp)
	sll	$4, $3, 2
	add	$at, $4, $2
	lw	$4, 0($at)
	sw	$2, 24($sp)
	sw.s	$f2, 28($sp)
	sw.s	$f4, 32($sp)
	sw.s	$f3, 36($sp)
	or	$2, $zero, $4
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	d_vec.2758
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw.s	$f2, 36($sp)
	lw.s	$f3, 32($sp)
	lw.s	$f4, 28($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	vecset.2651
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw	$2, 0($sp)
	addi	$3, $2, 40
	sll	$3, $3, 2
	lw	$4, 24($sp)
	add	$at, $3, $4
	lw	$3, 0($at)
	or	$2, $zero, $3
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	d_vec.2758
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw.s	$f2, 32($sp)
	sw	$2, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	fneg.2593
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	add.s	$f4, $f0, $f2
	lw.s	$f2, 36($sp)
	lw.s	$f3, 28($sp)
	lw	$2, 40($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	vecset.2651
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw	$2, 0($sp)
	addi	$3, $2, 80
	sll	$3, $3, 2
	lw	$4, 24($sp)
	add	$at, $3, $4
	lw	$3, 0($at)
	or	$2, $zero, $3
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	d_vec.2758
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw.s	$f2, 36($sp)
	sw	$2, 44($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	fneg.2593
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	lw.s	$f3, 32($sp)
	sw.s	$f2, 48($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	fneg.2593
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	add.s	$f4, $f0, $f2
	lw.s	$f2, 28($sp)
	lw.s	$f3, 48($sp)
	lw	$2, 44($sp)
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	vecset.2651
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	lw	$2, 0($sp)
	addi	$3, $2, 1
	sll	$3, $3, 2
	lw	$4, 24($sp)
	add	$at, $3, $4
	lw	$3, 0($at)
	or	$2, $zero, $3
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	d_vec.2758
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	lw.s	$f2, 36($sp)
	sw	$2, 52($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	fneg.2593
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lw.s	$f3, 32($sp)
	sw.s	$f2, 56($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	fneg.2593
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lw.s	$f3, 28($sp)
	sw.s	$f2, 60($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	fneg.2593
	addi	$sp, $sp, -72
	lw	$ra, 68($sp)
	add.s	$f4, $f0, $f2
	lw.s	$f2, 56($sp)
	lw.s	$f3, 60($sp)
	lw	$2, 52($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	vecset.2651
	addi	$sp, $sp, -72
	lw	$ra, 68($sp)
	lw	$2, 0($sp)
	addi	$3, $2, 41
	sll	$3, $3, 2
	lw	$4, 24($sp)
	add	$at, $3, $4
	lw	$3, 0($at)
	or	$2, $zero, $3
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	d_vec.2758
	addi	$sp, $sp, -72
	lw	$ra, 68($sp)
	lw.s	$f2, 36($sp)
	sw	$2, 64($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	fneg.2593
	addi	$sp, $sp, -72
	lw	$ra, 68($sp)
	lw.s	$f3, 28($sp)
	sw.s	$f2, 68($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	fneg.2593
	addi	$sp, $sp, -80
	lw	$ra, 76($sp)
	add.s	$f3, $f0, $f2
	lw.s	$f2, 68($sp)
	lw.s	$f4, 32($sp)
	lw	$2, 64($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	vecset.2651
	addi	$sp, $sp, -80
	lw	$ra, 76($sp)
	lw	$2, 0($sp)
	addi	$2, $2, 81
	sll	$2, $2, 2
	lw	$3, 24($sp)
	add	$at, $2, $3
	lw	$2, 0($at)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	d_vec.2758
	addi	$sp, $sp, -80
	lw	$ra, 76($sp)
	lw.s	$f2, 28($sp)
	sw	$2, 72($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	fneg.2593
	addi	$sp, $sp, -80
	lw	$ra, 76($sp)
	lw.s	$f3, 36($sp)
	lw.s	$f4, 32($sp)
	lw	$2, 72($sp)
	j	vecset.2651
blez_else.9363:
	sw.s	$f4, 76($sp)
	sw	$4, 0($sp)
	sw	$3, 8($sp)
	sw	$30, 80($sp)
	sw.s	$f5, 84($sp)
	sw	$2, 88($sp)
	add.s	$f2, $f0, $f3
	add.s	$f3, $f0, $f4
	sw	$ra, 92($sp)
	addi	$sp, $sp, 96
	jal	adjust_position.3075
	addi	$sp, $sp, -96
	lw	$ra, 92($sp)
	lw	$2, 88($sp)
	addi	$2, $2, 1
	lw.s	$f3, 84($sp)
	sw.s	$f2, 92($sp)
	sw	$2, 96($sp)
	sw	$ra, 100($sp)
	addi	$sp, $sp, 104
	jal	adjust_position.3075
	addi	$sp, $sp, -104
	lw	$ra, 100($sp)
	add.s	$f3, $f0, $f2
	lw.s	$f2, 92($sp)
	lw.s	$f4, 76($sp)
	lw.s	$f5, 84($sp)
	lw	$2, 96($sp)
	lw	$3, 8($sp)
	lw	$4, 0($sp)
	lw	$30, 80($sp)
	lw	$27, 0($30)
	jr	$27
calc_dirvecs.3086:
	lw	$5, 4($30)
	slti	$at, $2, 0
	bgtz	$at, blez_else.9364
	sw	$30, 0($sp)
	sw	$2, 4($sp)
	sw.s	$f2, 8($sp)
	sw	$4, 12($sp)
	sw	$3, 16($sp)
	sw	$5, 20($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_float_of_int
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lui	$at, 0x3e4c		# 0.200000の上位16bits
	lui	$0, 0xcccd		# 0.200000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	mul.s	$f2, $f2, $f3
	lui	$at, 0x3f66		# 0.900000の上位16bits
	lui	$0, 0x6666		# 0.900000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	sub.s	$f4, $f2, $f3
	ori	$2, $zero, 0
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	lw.s	$f5, 8($sp)
	lw	$3, 16($sp)
	lw	$4, 12($sp)
	lw	$30, 20($sp)
	sw	$ra, 28($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 32
	li	$ra, tmp.9365
	jr	$27
tmp.9365:
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw	$2, 4($sp)
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	min_caml_float_of_int
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lui	$at, 0x3e4c		# 0.200000の上位16bits
	lui	$0, 0xcccd		# 0.200000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	mul.s	$f2, $f2, $f3
	lui	$at, 0x3dcc		# 0.100000の上位16bits
	lui	$0, 0xcccd		# 0.100000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	add.s	$f4, $f2, $f3
	ori	$2, $zero, 0
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	lw	$3, 12($sp)
	addi	$4, $3, 2
	lw.s	$f5, 8($sp)
	lw	$5, 16($sp)
	lw	$30, 20($sp)
	or	$3, $zero, $5
	sw	$ra, 28($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 32
	li	$ra, tmp.9366
	jr	$27
tmp.9366:
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw	$2, 4($sp)
	addi	$2, $2, -1
	ori	$3, $zero, 1
	lw	$4, 16($sp)
	sw	$2, 24($sp)
	or	$2, $zero, $4
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	add_mod5.2648
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	or	$3, $zero, $2
	lw.s	$f2, 8($sp)
	lw	$2, 24($sp)
	lw	$4, 12($sp)
	lw	$30, 0($sp)
	lw	$27, 0($30)
	jr	$27
blez_else.9364:
	jr	$ra
calc_dirvec_rows.3091:
	lw	$5, 4($30)
	slti	$at, $2, 0
	bgtz	$at, blez_else.9368
	sw	$30, 0($sp)
	sw	$2, 4($sp)
	sw	$4, 8($sp)
	sw	$3, 12($sp)
	sw	$5, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_float_of_int
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lui	$at, 0x3e4c		# 0.200000の上位16bits
	lui	$0, 0xcccd		# 0.200000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	mul.s	$f2, $f2, $f3
	lui	$at, 0x3f66		# 0.900000の上位16bits
	lui	$0, 0x6666		# 0.900000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	sub.s	$f2, $f2, $f3
	ori	$2, $zero, 4
	lw	$3, 12($sp)
	lw	$4, 8($sp)
	lw	$30, 16($sp)
	sw	$ra, 20($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 24
	li	$ra, tmp.9369
	jr	$27
tmp.9369:
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$2, 4($sp)
	addi	$2, $2, -1
	ori	$3, $zero, 2
	lw	$4, 12($sp)
	sw	$2, 20($sp)
	or	$2, $zero, $4
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	add_mod5.2648
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	or	$3, $zero, $2
	lw	$2, 8($sp)
	addi	$4, $2, 4
	lw	$2, 20($sp)
	lw	$30, 0($sp)
	lw	$27, 0($30)
	jr	$27
blez_else.9368:
	jr	$ra
create_dirvec.3095:
	lw	$2, 4($30)
	ori	$3, $zero, 3
	lui	$at, 0x0		# 0.000000の上位16bits
	lui	$0, 0x0		# 0.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$2, 0($sp)
	or	$2, $zero, $3
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_create_float_array
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	or	$3, $zero, $2
	lw	$2, 0($sp)
	lw	$2, 0($2)
	sw	$3, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_create_array
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	or	$3, $zero, $gp
	addi	$gp, $gp, 8
	sw	$2, 4($3)
	lw	$2, 4($sp)
	sw	$2, 0($3)
	or	$2, $zero, $3
	jr	$ra
create_dirvec_elements.3097:
	lw	$4, 4($30)
	slti	$at, $3, 0
	bgtz	$at, blez_else.9371
	sw	$30, 0($sp)
	sw	$2, 4($sp)
	sw	$3, 8($sp)
	or	$30, $zero, $4
	sw	$ra, 12($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 16
	li	$ra, tmp.9372
	jr	$27
tmp.9372:
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$3, 8($sp)
	sll	$4, $3, 2
	lw	$5, 4($sp)
	add	$at, $4, $5
	sw	$2, 0($at)
	addi	$3, $3, -1
	lw	$30, 0($sp)
	or	$2, $zero, $5
	lw	$27, 0($30)
	jr	$27
blez_else.9371:
	jr	$ra
create_dirvecs.3100:
	lw	$3, 12($30)
	lw	$4, 8($30)
	lw	$5, 4($30)
	slti	$at, $2, 0
	bgtz	$at, blez_else.9374
	ori	$6, $zero, 120
	sw	$30, 0($sp)
	sw	$4, 4($sp)
	sw	$3, 8($sp)
	sw	$2, 12($sp)
	sw	$6, 16($sp)
	or	$30, $zero, $5
	sw	$ra, 20($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 24
	li	$ra, tmp.9375
	jr	$27
tmp.9375:
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	or	$3, $zero, $2
	lw	$2, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	min_caml_create_array
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$3, 12($sp)
	sll	$4, $3, 2
	lw	$5, 8($sp)
	add	$at, $4, $5
	sw	$2, 0($at)
	sll	$2, $3, 2
	add	$at, $2, $5
	lw	$2, 0($at)
	ori	$4, $zero, 118
	lw	$30, 4($sp)
	or	$3, $zero, $4
	sw	$ra, 20($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 24
	li	$ra, tmp.9376
	jr	$27
tmp.9376:
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw	$2, 12($sp)
	addi	$2, $2, -1
	lw	$30, 0($sp)
	lw	$27, 0($30)
	jr	$27
blez_else.9374:
	jr	$ra
init_dirvec_constants.3102:
	lw	$4, 4($30)
	slti	$at, $3, 0
	bgtz	$at, blez_else.9378
	sll	$5, $3, 2
	add	$at, $5, $2
	lw	$5, 0($at)
	sw	$2, 0($sp)
	sw	$30, 4($sp)
	sw	$3, 8($sp)
	or	$2, $zero, $5
	or	$30, $zero, $4
	sw	$ra, 12($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 16
	li	$ra, tmp.9379
	jr	$27
tmp.9379:
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$2, 8($sp)
	addi	$3, $2, -1
	lw	$2, 0($sp)
	lw	$30, 4($sp)
	lw	$27, 0($30)
	jr	$27
blez_else.9378:
	jr	$ra
init_vecset_constants.3105:
	lw	$3, 8($30)
	lw	$4, 4($30)
	slti	$at, $2, 0
	bgtz	$at, blez_else.9381
	sll	$5, $2, 2
	add	$at, $5, $4
	lw	$4, 0($at)
	ori	$5, $zero, 119
	sw	$30, 0($sp)
	sw	$2, 4($sp)
	or	$2, $zero, $4
	or	$30, $zero, $3
	or	$3, $zero, $5
	sw	$ra, 12($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 16
	li	$ra, tmp.9382
	jr	$27
tmp.9382:
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$2, 4($sp)
	addi	$2, $2, -1
	lw	$30, 0($sp)
	lw	$27, 0($30)
	jr	$27
blez_else.9381:
	jr	$ra
init_dirvecs.3107:
	lw	$2, 12($30)
	lw	$3, 8($30)
	lw	$4, 4($30)
	ori	$5, $zero, 4
	sw	$2, 0($sp)
	sw	$4, 4($sp)
	or	$2, $zero, $5
	or	$30, $zero, $3
	sw	$ra, 12($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 16
	li	$ra, tmp.9384
	jr	$27
tmp.9384:
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	ori	$2, $zero, 9
	ori	$3, $zero, 0
	ori	$4, $zero, 0
	lw	$30, 4($sp)
	sw	$ra, 12($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 16
	li	$ra, tmp.9385
	jr	$27
tmp.9385:
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	ori	$2, $zero, 4
	lw	$30, 0($sp)
	lw	$27, 0($30)
	jr	$27
add_reflection.3109:
	lw	$4, 12($30)
	lw	$5, 8($30)
	lw	$30, 4($30)
	sw	$5, 0($sp)
	sw	$2, 4($sp)
	sw	$3, 8($sp)
	sw.s	$f2, 12($sp)
	sw	$4, 16($sp)
	sw.s	$f5, 20($sp)
	sw.s	$f4, 24($sp)
	sw.s	$f3, 28($sp)
	sw	$ra, 36($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 40
	li	$ra, tmp.9386
	jr	$27
tmp.9386:
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	sw	$2, 32($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	d_vec.2758
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw.s	$f2, 28($sp)
	lw.s	$f3, 24($sp)
	lw.s	$f4, 20($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	vecset.2651
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw	$2, 32($sp)
	lw	$30, 16($sp)
	sw	$ra, 36($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 40
	li	$ra, tmp.9387
	jr	$27
tmp.9387:
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	or	$2, $zero, $gp
	addi	$gp, $gp, 16
	lw.s	$f2, 12($sp)
	sw.s	$f2, 8($2)
	lw	$3, 32($sp)
	sw	$3, 4($2)
	lw	$3, 8($sp)
	sw	$3, 0($2)
	lw	$3, 4($sp)
	sll	$3, $3, 2
	lw	$4, 0($sp)
	add	$at, $3, $4
	sw	$2, 0($at)
	jr	$ra
setup_rect_reflection.3116:
	lw	$4, 12($30)
	lw	$5, 8($30)
	lw	$6, 4($30)
	add	$7, $2, $2
	add	$7, $7, $2
	add	$2, $7, $2
	lw	$7, 0($4)
	lui	$at, 0x3f80		# 1.000000の上位16bits
	lui	$0, 0x0		# 1.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$4, 0($sp)
	sw	$7, 4($sp)
	sw	$6, 8($sp)
	sw	$2, 12($sp)
	sw	$5, 16($sp)
	sw.s	$f2, 20($sp)
	or	$2, $zero, $3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	o_diffuse.2721
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw.s	$f3, 20($sp)
	sub.s	$f2, $f3, $f2
	lw	$2, 16($sp)
	lw.s	$f3, 0($2)
	sw.s	$f2, 24($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	fneg.2593
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw	$2, 16($sp)
	lw.s	$f3, 4($2)
	sw.s	$f2, 28($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fneg.2593
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lw	$2, 16($sp)
	lw.s	$f3, 8($2)
	sw.s	$f2, 32($sp)
	add.s	$f2, $f0, $f3
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	fneg.2593
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	add.s	$f5, $f0, $f2
	lw	$2, 12($sp)
	addi	$3, $2, 1
	lw	$4, 16($sp)
	lw.s	$f3, 0($4)
	lw.s	$f2, 24($sp)
	lw.s	$f4, 32($sp)
	lw	$5, 4($sp)
	lw	$30, 8($sp)
	sw.s	$f5, 36($sp)
	or	$2, $zero, $5
	sw	$ra, 44($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 48
	li	$ra, tmp.9389
	jr	$27
tmp.9389:
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw	$2, 4($sp)
	addi	$3, $2, 1
	lw	$4, 12($sp)
	addi	$5, $4, 2
	lw	$6, 16($sp)
	lw.s	$f4, 4($6)
	lw.s	$f2, 24($sp)
	lw.s	$f3, 28($sp)
	lw.s	$f5, 36($sp)
	lw	$30, 8($sp)
	or	$2, $zero, $3
	or	$3, $zero, $5
	sw	$ra, 44($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 48
	li	$ra, tmp.9390
	jr	$27
tmp.9390:
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw	$2, 4($sp)
	addi	$3, $2, 2
	lw	$4, 12($sp)
	addi	$4, $4, 3
	lw	$5, 16($sp)
	lw.s	$f5, 8($5)
	lw.s	$f2, 24($sp)
	lw.s	$f3, 28($sp)
	lw.s	$f4, 32($sp)
	lw	$30, 8($sp)
	or	$2, $zero, $3
	or	$3, $zero, $4
	sw	$ra, 44($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 48
	li	$ra, tmp.9391
	jr	$27
tmp.9391:
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw	$2, 4($sp)
	addi	$2, $2, 3
	lw	$3, 0($sp)
	sw	$2, 0($3)
	jr	$ra
setup_surface_reflection.3119:
	lw	$4, 12($30)
	lw	$5, 8($30)
	lw	$6, 4($30)
	add	$7, $2, $2
	add	$7, $7, $2
	add	$2, $7, $2
	addi	$2, $2, 1
	lw	$7, 0($4)
	lui	$at, 0x3f80		# 1.000000の上位16bits
	lui	$0, 0x0		# 1.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	sw	$4, 0($sp)
	sw	$2, 4($sp)
	sw	$7, 8($sp)
	sw	$6, 12($sp)
	sw	$5, 16($sp)
	sw	$3, 20($sp)
	sw.s	$f2, 24($sp)
	or	$2, $zero, $3
	sw	$ra, 28($sp)
	addi	$sp, $sp, 32
	jal	o_diffuse.2721
	addi	$sp, $sp, -32
	lw	$ra, 28($sp)
	lw.s	$f3, 24($sp)
	sub.s	$f2, $f3, $f2
	lw	$2, 20($sp)
	sw.s	$f2, 28($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	o_param_abc.2713
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	or	$3, $zero, $2
	lw	$2, 16($sp)
	sw	$ra, 36($sp)
	addi	$sp, $sp, 40
	jal	veciprod.2672
	addi	$sp, $sp, -40
	lw	$ra, 36($sp)
	lui	$at, 0x4000		# 2.000000の上位16bits
	lui	$0, 0x0		# 2.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	lw	$2, 20($sp)
	sw.s	$f2, 32($sp)
	sw.s	$f3, 36($sp)
	sw	$ra, 44($sp)
	addi	$sp, $sp, 48
	jal	o_param_a.2707
	addi	$sp, $sp, -48
	lw	$ra, 44($sp)
	lw.s	$f3, 36($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f3, 32($sp)
	mul.s	$f2, $f2, $f3
	lw	$2, 16($sp)
	lw.s	$f4, 0($2)
	sub.s	$f2, $f2, $f4
	lui	$at, 0x4000		# 2.000000の上位16bits
	lui	$0, 0x0		# 2.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f4, 4($zero)
	lw	$3, 20($sp)
	sw.s	$f2, 40($sp)
	sw.s	$f4, 44($sp)
	or	$2, $zero, $3
	sw	$ra, 52($sp)
	addi	$sp, $sp, 56
	jal	o_param_b.2709
	addi	$sp, $sp, -56
	lw	$ra, 52($sp)
	lw.s	$f3, 44($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f3, 32($sp)
	mul.s	$f2, $f2, $f3
	lw	$2, 16($sp)
	lw.s	$f4, 4($2)
	sub.s	$f2, $f2, $f4
	lui	$at, 0x4000		# 2.000000の上位16bits
	lui	$0, 0x0		# 2.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f4, 4($zero)
	lw	$3, 20($sp)
	sw.s	$f2, 48($sp)
	sw.s	$f4, 52($sp)
	or	$2, $zero, $3
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	o_param_c.2711
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lw.s	$f3, 52($sp)
	mul.s	$f2, $f3, $f2
	lw.s	$f3, 32($sp)
	mul.s	$f2, $f2, $f3
	lw	$2, 16($sp)
	lw.s	$f3, 8($2)
	sub.s	$f5, $f2, $f3
	lw.s	$f2, 28($sp)
	lw.s	$f3, 40($sp)
	lw.s	$f4, 48($sp)
	lw	$2, 8($sp)
	lw	$3, 4($sp)
	lw	$30, 12($sp)
	sw	$ra, 60($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 64
	li	$ra, tmp.9393
	jr	$27
tmp.9393:
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lw	$2, 8($sp)
	addi	$2, $2, 1
	lw	$3, 0($sp)
	sw	$2, 0($3)
	jr	$ra
setup_reflections.3122:
	lw	$3, 12($30)
	lw	$4, 8($30)
	lw	$5, 4($30)
	slti	$at, $2, 0
	bgtz	$at, blez_else.9395
	sll	$6, $2, 2
	add	$at, $6, $5
	lw	$5, 0($at)
	sw	$3, 0($sp)
	sw	$2, 4($sp)
	sw	$4, 8($sp)
	sw	$5, 12($sp)
	or	$2, $zero, $5
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_reflectiontype.2701
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	ori	$at, $zero, 2
	bne	$2, $at, beq_else.9396
	lw	$2, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_diffuse.2721
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lui	$at, 0x3f80		# 1.000000の上位16bits
	lui	$0, 0x0		# 1.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	fless.2575
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.9397
	jr	$ra
beq_else.9397:
	lw	$2, 12($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	o_form.2699
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	ori	$at, $zero, 1
	bne	$2, $at, beq_else.9399
	lw	$2, 4($sp)
	lw	$3, 12($sp)
	lw	$30, 8($sp)
	lw	$27, 0($30)
	jr	$27
beq_else.9399:
	ori	$at, $zero, 2
	bne	$2, $at, beq_else.9400
	lw	$2, 4($sp)
	lw	$3, 12($sp)
	lw	$30, 0($sp)
	lw	$27, 0($30)
	jr	$27
beq_else.9400:
	jr	$ra
beq_else.9396:
	jr	$ra
blez_else.9395:
	jr	$ra
rt.3124:
	lw	$4, 56($30)
	lw	$5, 52($30)
	lw	$6, 48($30)
	lw	$7, 44($30)
	lw	$8, 40($30)
	lw	$9, 36($30)
	lw	$10, 32($30)
	lw	$11, 28($30)
	lw	$12, 24($30)
	lw	$13, 20($30)
	lw	$14, 16($30)
	lw	$15, 12($30)
	lw	$16, 8($30)
	lw	$17, 4($30)
	sw	$2, 0($15)
	sw	$3, 4($15)
	sw	$8, 0($sp)
	sw	$10, 4($sp)
	sw	$5, 8($sp)
	sw	$11, 12($sp)
	sw	$6, 16($sp)
	sw	$13, 20($sp)
	sw	$12, 24($sp)
	sw	$14, 28($sp)
	sw	$4, 32($sp)
	sw	$9, 36($sp)
	sw	$17, 40($sp)
	sw	$7, 44($sp)
	sw	$2, 48($sp)
	sw	$3, 52($sp)
	sw	$16, 56($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_float_of_int
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lui	$at, 0x4000		# 2.000000の上位16bits
	lui	$0, 0x0		# 2.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_int_of_float
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lw	$3, 56($sp)
	sw	$2, 0($3)
	lw	$2, 52($sp)
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_float_of_int
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lui	$at, 0x4000		# 2.000000の上位16bits
	lui	$0, 0x0		# 2.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f3, 4($zero)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	sw	$ra, 60($sp)
	addi	$sp, $sp, 64
	jal	min_caml_int_of_float
	addi	$sp, $sp, -64
	lw	$ra, 60($sp)
	lw	$3, 56($sp)
	sw	$2, 4($3)
	lui	$at, 0x4300		# 128.000000の上位16bits
	lui	$0, 0x0		# 128.000000の下位16bits
	srl	$0, $0, 16
	or	$at, $at, $0
	lui	$0, 0x0
	sw	$at, 4($zero)
	lw.s	$f2, 4($zero)
	lw	$2, 48($sp)
	sw.s	$f2, 60($sp)
	sw	$ra, 68($sp)
	addi	$sp, $sp, 72
	jal	min_caml_float_of_int
	addi	$sp, $sp, -72
	lw	$ra, 68($sp)
	lw.s	$f3, 60($sp)
	inv.s	$f1, $f2
	mul.s	$f2, $f3, $f1
	lw	$2, 44($sp)
	sw.s	$f2, 0($2)
	lw	$30, 40($sp)
	sw	$ra, 68($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 72
	li	$ra, tmp.9404
	jr	$27
tmp.9404:
	addi	$sp, $sp, -72
	lw	$ra, 68($sp)
	lw	$30, 40($sp)
	sw	$2, 64($sp)
	sw	$ra, 68($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 72
	li	$ra, tmp.9405
	jr	$27
tmp.9405:
	addi	$sp, $sp, -72
	lw	$ra, 68($sp)
	lw	$30, 40($sp)
	sw	$2, 68($sp)
	sw	$ra, 76($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 80
	li	$ra, tmp.9406
	jr	$27
tmp.9406:
	addi	$sp, $sp, -80
	lw	$ra, 76($sp)
	lw	$30, 36($sp)
	sw	$2, 72($sp)
	sw	$ra, 76($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 80
	li	$ra, tmp.9407
	jr	$27
tmp.9407:
	addi	$sp, $sp, -80
	lw	$ra, 76($sp)
	lw	$30, 32($sp)
	sw	$ra, 76($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 80
	li	$ra, tmp.9408
	jr	$27
tmp.9408:
	addi	$sp, $sp, -80
	lw	$ra, 76($sp)
	lw	$30, 28($sp)
	sw	$ra, 76($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 80
	li	$ra, tmp.9409
	jr	$27
tmp.9409:
	addi	$sp, $sp, -80
	lw	$ra, 76($sp)
	lw	$2, 24($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	d_vec.2758
	addi	$sp, $sp, -80
	lw	$ra, 76($sp)
	lw	$3, 20($sp)
	sw	$ra, 76($sp)
	addi	$sp, $sp, 80
	jal	veccpy.2661
	addi	$sp, $sp, -80
	lw	$ra, 76($sp)
	lw	$2, 24($sp)
	lw	$30, 16($sp)
	sw	$ra, 76($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 80
	li	$ra, tmp.9410
	jr	$27
tmp.9410:
	addi	$sp, $sp, -80
	lw	$ra, 76($sp)
	lw	$2, 12($sp)
	lw	$2, 0($2)
	addi	$2, $2, -1
	lw	$30, 8($sp)
	sw	$ra, 76($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 80
	li	$ra, tmp.9411
	jr	$27
tmp.9411:
	addi	$sp, $sp, -80
	lw	$ra, 76($sp)
	ori	$3, $zero, 0
	ori	$4, $zero, 0
	lw	$2, 68($sp)
	lw	$30, 4($sp)
	sw	$ra, 76($sp)
	lw	$27, 0($30)
	addi	$sp, $sp, 80
	li	$ra, tmp.9412
	jr	$27
tmp.9412:
	addi	$sp, $sp, -80
	lw	$ra, 76($sp)
	ori	$2, $zero, 0
	ori	$6, $zero, 2
	lw	$3, 64($sp)
	lw	$4, 68($sp)
	lw	$5, 72($sp)
	lw	$30, 0($sp)
	lw	$27, 0($30)
	jr	$27
# 全部.mlにしたい。このためだけにスタックの確保・退避を行うのはコストが高い。
# asm.mlのexpに命令を追加して、インライン化・レジスタ割当ができるように。
# simulator: ラベルにコメントをつけると、だめっぽい？
# ライブラリ
min_caml_print_newline:
	ori	$2, $zero, 10		# LF
	out	$2
	jr	$ra
min_caml_print_int:
	slti	$at, $2, 0
	blez	$at, print_int_label0
	ori	$3, $zero, 45		# '-'
	out	$3
	sub	$2, $zero, $2
print_int_label0:
	or	$3, $zero, $2
	ori	$4, $zero, 1
	ori	$5, $zero, 10
print_int_label1:
	div	$3, $3, $5		# divu?
	mult	$4, $4, $5		# multu?
	slti	$at, $3, 1
	blez	$at, print_int_label1
print_int_label2:
	ori	$5, $zero, 10
	div	$4, $4, $5		# divu?
	div	$3, $2, $4		# divu?
	addi	$5, $3, 48
	out	$5
	slti	$at, $4, 2
	bgtz	$at, print_int_label3
	mult	$3, $3, $4		# multu?
	sub	$2, $2, $3
	j	print_int_label2
print_int_label3:
	jr	$ra
min_caml_print_byte:
	out	$2
	jr	$ra
# min_caml_prerr_int:		# 未実装
# min_caml_prerr_byte:		# 未実装
# min_caml_prerr_float:		# 未実装
min_caml_read_int:
	# ori	$at, $at, 0    # inは上位24ビットをゼロ埋め
	in	$2
	sll	$2, $2, 8
	in	$at
	or	$2, $2, $at
	sll	$2, $2, 8
	in	$at
	or	$2, $2, $at
	sll	$2, $2, 8
	in	$at
	or	$2, $2, $at
	jr	$ra
min_caml_read_float:
	# ori	$at, $at, 0    # inは上位24ビットをゼロ埋め
	in	$2
	sll	$2, $2, 8
	in	$at
	or	$2, $2, $at
	sll	$2, $2, 8
	in	$at
	or	$2, $2, $at
	sll	$2, $2, 8
	in	$at
	or	$2, $2, $at
	sw	$2, 16($sp)		# 16?
	lw.s	$f2, 16($sp)		# 16?
	jr	$ra
min_caml_create_array:
	or	$4, $zero, $2
	or	$2, $zero, $gp
create_array_loop:
	blez	$4, create_array_exit
	sw	$3, 0($gp)
	addi	$4, $4, -1
	addi	$gp, $gp, 4
	j	create_array_loop
create_array_exit:
	jr	$ra
min_caml_create_float_array:
	or	$3, $zero, $2
	or	$2, $zero, $gp
create_float_array_loop:
	blez	$3, create_float_array_exit
	sw.s	$f2, 0($gp)
	addi	$3, $3, -1
	addi	$gp, $gp, 4
	j	create_float_array_loop
create_float_array_exit:
	jr	$ra
# min_caml_abs_float:		# libmincaml.mlを参照
min_caml_sqrt:
	sqrt.s	$f2, $f2
	jr	$ra
# min_caml_floor:		# libmincaml.mlを参照
min_caml_int_of_float:
min_caml_truncate:
	ftoi	$2, $f2
	jr	$ra
min_caml_float_of_int:
	itof	$f2, $2
	jr	$ra
# min_caml_cos:		# libmincaml.mlを参照
# min_caml_sin:		# libmincaml.mlを参照
# min_caml_atan:		# libmincaml.mlを参照
min_caml_print_char:		# print_byte, raytracer専用?
	out	$2
	jr	$ra
