min_caml_start:
	!ori	$2, $zero, 7
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	add.176
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_print_int
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	noop
add.176:
	slti	$at, $2, 3
	blez	$at, bgtz_else.327
	ori	$2, $zero, 1
	jr	$ra
bgtz_else.327:
	addi	$3, $2, -1
	sw	$2, 0($sp)
	or	$2, $zero, $3
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	add.176
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	lw	$3, 0($sp)
	addi	$3, $3, -2
	sw	$2, 4($sp)
	or	$2, $zero, $3
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	add.176
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$3, 4($sp)
	add	$2, $3, $2
	sw	$2, 8($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	min_caml_read_int
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lw	$3, 8($sp)
	add	$2, $3, $2
	jr	$ra
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
