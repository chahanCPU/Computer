min_caml_start:
	ori	$2, $zero, 9
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	fib.10
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_int
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	noop
fib.10:
	slti	$at, $2, 2
	blez	$at, bgtz_else.24
	ori	$2, $zero, 1
	jr	$ra
bgtz_else.24:
	addi	$3, $2, -1
	sw	$2, 0($sp)
	or	$2, $zero, $3
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	fib.10
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	lw	$3, 0($sp)
	addi	$3, $3, -2
	sw	$2, 4($sp)
	or	$2, $zero, $3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	fib.10
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$3, 4($sp)
	add	$2, $3, $2
	jr	$ra
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
