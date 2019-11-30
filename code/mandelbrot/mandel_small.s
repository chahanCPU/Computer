min_caml_start:
	ori	$2, $zero, 0
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	yloop.42
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	noop
dbl.40:
	add.s	$f2, $f2, $f2
	jr	$ra
iloop.58:
	ori	$at, $zero, 0
	bne	$2, $at, beq_else.116
	ori	$2, $zero, 1
	j	min_caml_print_int
beq_else.116:
	sub.s	$f4, $f4, $f5
	add.s	$f4, $f4, $f6
	sw.s	$f6, 0($sp)
	sw	$2, 4($sp)
	sw.s	$f4, 8($sp)
	sw.s	$f7, 12($sp)
	sw.s	$f3, 16($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	dbl.40
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lw.s	$f3, 16($sp)
	mul.s	$f2, $f2, $f3
	lw.s	$f7, 12($sp)
	add.s	$f3, $f2, $f7
	lw.s	$f2, 8($sp)
	mul.s	$f4, $f2, $f2
	mul.s	$f5, $f3, $f3
	add.s	$f6, $f4, $f5
	lui	$at, 0x4080		# 4.000000の上位16bits
	sw	$at, 16($sp)
	lw.s	$f8, 16($sp)
	c.le.s	$at, $f6, $f8
	blez	$at, bgtz_else.117
	lw	$2, 4($sp)
	addi	$2, $2, -1
	lw.s	$f6, 0($sp)
	j	iloop.58
bgtz_else.117:
	ori	$2, $zero, 0
	j	min_caml_print_int
xloop.46:
	slti	$at, $2, 10
	bgtz	$at, blez_else.118
	jr	$ra
blez_else.118:
	sw	$2, 0($sp)
	sw	$3, 4($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_float_of_int
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	dbl.40
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lui	$at, 0x4120		# 10.000000の上位16bits
	sw	$at, 16($sp)
	lw.s	$f3, 16($sp)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	lui	$at, 0x3fc0		# 1.500000の上位16bits
	sw	$at, 16($sp)
	lw.s	$f3, 16($sp)
	sub.s	$f2, $f2, $f3
	lw	$2, 4($sp)
	sw.s	$f2, 8($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_float_of_int
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	dbl.40
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lui	$at, 0x4120		# 10.000000の上位16bits
	sw	$at, 16($sp)
	lw.s	$f3, 16($sp)
	inv.s	$f1, $f3
	mul.s	$f2, $f2, $f1
	lui	$at, 0x3f80		# 1.000000の上位16bits
	sw	$at, 16($sp)
	lw.s	$f3, 16($sp)
	sub.s	$f7, $f2, $f3
	ori	$2, $zero, 1000
	lui	$at, 0x0		# 0.000000の上位16bits
	sw	$at, 16($sp)
	lw.s	$f2, 16($sp)
	lui	$at, 0x0		# 0.000000の上位16bits
	sw	$at, 16($sp)
	lw.s	$f3, 16($sp)
	lui	$at, 0x0		# 0.000000の上位16bits
	sw	$at, 16($sp)
	lw.s	$f4, 16($sp)
	lui	$at, 0x0		# 0.000000の上位16bits
	sw	$at, 16($sp)
	lw.s	$f5, 16($sp)
	lw.s	$f6, 8($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	iloop.58
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$2, 0($sp)
	addi	$2, $2, 1
	lw	$3, 4($sp)
	j	xloop.46
yloop.42:
	slti	$at, $2, 10
	bgtz	$at, blez_else.120
	jr	$ra
blez_else.120:
	ori	$3, $zero, 0
	sw	$2, 0($sp)
	or	$27, $zero, $3
	or	$3, $zero, $2
	or	$2, $zero, $27
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	xloop.46
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_newline
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	lw	$2, 0($sp)
	addi	$2, $2, 1
	j	yloop.42
min_caml_print_int:
	slti	$at, $2, 0
	blez	$at, min_caml_print_int_label0
	ori	$3, $zero, 45		# '-'
	out	$3
	sub	$2, $zero, $2
min_caml_print_int_label0:
	or	$3, $zero, $2
	ori	$4, $zero, 1
	ori	$5, $zero, 10
min_caml_print_int_label1:
	div	$3, $3, $5
	mult	$4, $4, $5
	slti	$at, $3, 1
	blez	$at, min_caml_print_int_label1
min_caml_print_int_label2:
	ori	$5, $zero, 10
	div	$4, $4, $5
	div	$3, $2, $4
	addi	$5, $3, 48
	out	$5
	slti	$at, $4, 2
	bgtz	$at, min_caml_print_int_label3
	mult	$3, $3, $4
	sub	$2, $2, $3
	j	min_caml_print_int_label2
min_caml_print_int_label3:
	jr	$ra
min_caml_print_newline:
	ori	$2, $zero, 10
	out	$2
	jr	$ra
min_caml_float_of_int:
	itof	$f2, $2
	jr	$ra
