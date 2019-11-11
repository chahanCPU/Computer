main:
	addi $1, $0, 10
	addi $2, $0, 20
	itof $1, $1
	itof $2, $2
	ADD.S $3, $1, $2
	ftoi $3, $3
	out $3
