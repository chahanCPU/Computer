main: 
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $a0, $zero, 30
    jal fib
    or $a0, $zero, $v0
    out 0($a0)
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    jr $ra
fib: 
    addi $sp, $sp, -12
    sw $s0, 0($sp)
    sw $s1, 4($sp)
    sw $ra, 8($sp)
    slti $t0, $a0, 2
    beq $t0, $zero, tag
    addi $v0, $zero, 1
    j tag17
tag: 
    addi $s0, $a0, 0
    addi $a0, $a0, -1
    jal fib
    addi $s1, $v0, 0
    addi $a0, $s0, -2
    jal fib
    add $v0, $s1, $v0
tag17: 
    lw $s0, 0($sp)
    lw $s1, 4($sp)
    lw $ra, 8($sp)
    addi $sp, $sp, 12
    jr $ra
