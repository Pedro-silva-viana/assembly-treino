.data
	num1: .word 32
	num2: .word 5
.text
	main:
	li $v0,5
	syscall
	move $t2,$v0
	li $t3,31
	li $t0,0
	li $s0,0
	li $s1,0
	loop_start:
	add $s0,$s0,1
	srlv $a0,$t2,$t3
	andi $a0, $a0, 1
	sub $t3,$t3,1
	addi $t0, $t0, 1
	beq $s1, 0, if
	continue:
	li $v0,1
	syscall
        lw $t1, num1
        beq $t0, $t1, loop_end
        beq $s0,4,space 
        j loop_start

    loop_end:
    li $v0,10
    syscall
	space:
	li $v0, 11
	li $a0, 32
	li $s0, 0
	syscall
	j loop_start
	if:
	beq $a0, 0, loop_start
	li $s1, 1
	j continue