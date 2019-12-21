min_caml_start:
	ori	$2, $zero, 10
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	fib.173
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_int
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	noop
fib.173:
	slti	$at, $2, 2
	blez	$at, bgtz_else.320
	ori	$2, $zero, 1
	jr	$ra
bgtz_else.320:
	addi	$3, $2, -1
	sw	$2, 0($sp)
	or	$2, $zero, $3
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	fib.173
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	lw	$3, 0($sp)
	addi	$3, $3, -2
	sw	$2, 4($sp)
	or	$2, $zero, $3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	fib.173
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$3, 4($sp)
	add	$2, $3, $2
	jr	$ra
