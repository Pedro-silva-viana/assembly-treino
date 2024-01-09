.data
	num1: .word 96
	num2: .word 24
        resultado: .word 0
.text
	main:
	lw $t1,num1
	lw $t2,num2
	li $v0,11
	sub $t0,$t1,$t2
	move $a0,$t0
        syscall
        li $t2,5
        add $a0,$t1,$t2
        syscall
        li $t2,12
        add $a0,$t1,$t2
        syscall
        syscall
        li $t2,15
        add $a0,$t1,$t2
        syscall
        li $t2,64
        sub $a0,$t1,$t2
        syscall
        li $t2,9
        sub $a0,$t1,$t2
        syscall
        li $t2,15
        add $a0,$t1,$t2
        syscall
        li $t2,18
        add $a0,$t1,$t2
        syscall
        li $t2,12
        add $a0,$t1,$t2
        syscall
        li $t2,4
        add $a0,$t1,$t2
        syscall
        li $v0,10
        syscall
        