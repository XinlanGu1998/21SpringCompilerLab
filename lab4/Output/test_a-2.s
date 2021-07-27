.data
_prompt: .asciiz "Enter an integer:"
_ret: .asciiz "\n"
.globl main
.text
write:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	lw $a0, 4($fp)
	li $v0, 1
	syscall
	la $a0, _ret
	li $v0, 4
	syscall
	move $v0, $0
	lw $t0, 0($fp)
	move $sp, $fp
	move $fp, $t0
	jr $ra
read:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	la $a0, _prompt
	li $v0, 4
	syscall
	li $v0, 5
	syscall
	lw $t0, 0($fp)
	move $sp, $fp
	move $fp, $t0
	jr $ra
main:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -276
	jal read
	sw $v0, -8($fp)
	addi $sp, $sp, 4
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	jal read
	sw $v0, -20($fp)
	addi $sp, $sp, 4
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	lw $t0, -12($fp)
	sw $t0, -32($fp)
	lw $t0, -12($fp)
	sw $t0, -36($fp)
	li $t0, 100
	sw $t0, -40($fp)
	lw $t0, -36($fp)
	lw $t1, -40($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -44($fp)
	li $t0, 100
	sw $t0, -48($fp)
	lw $t0, -44($fp)
	lw $t1, -48($fp)
	mul $t0, $t0, $t1
	sw $t0, -52($fp)
	lw $t1, -32($fp)
	lw $t2, -52($fp)
	beq $t1, $t2, label1
	j label2
label1:
	lw $t0, -12($fp)
	sw $t0, -56($fp)
	lw $t0, -12($fp)
	sw $t0, -60($fp)
	li $t0, 400
	sw $t0, -64($fp)
	lw $t0, -60($fp)
	lw $t1, -64($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -68($fp)
	li $t0, 400
	sw $t0, -72($fp)
	lw $t0, -68($fp)
	lw $t1, -72($fp)
	mul $t0, $t0, $t1
	sw $t0, -76($fp)
	lw $t1, -56($fp)
	lw $t2, -76($fp)
	beq $t1, $t2, label4
	j label5
label4:
	lw $t0, -24($fp)
	sw $t0, -80($fp)
	li $t0, 2
	sw $t0, -84($fp)
	lw $t1, -80($fp)
	lw $t2, -84($fp)
	beq $t1, $t2, label7
	j label8
label7:
	li $t0, 29
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	j label9
label8:
	lw $t0, -24($fp)
	sw $t0, -92($fp)
	lw $t0, -24($fp)
	sw $t0, -96($fp)
	li $t0, 2
	sw $t0, -100($fp)
	lw $t0, -96($fp)
	lw $t1, -100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -104($fp)
	li $t0, 2
	sw $t0, -108($fp)
	lw $t0, -104($fp)
	lw $t1, -108($fp)
	mul $t0, $t0, $t1
	sw $t0, -112($fp)
	lw $t1, -92($fp)
	lw $t2, -112($fp)
	beq $t1, $t2, label10
	j label11
label10:
	li $t0, 30
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	j label12
label11:
	li $t0, 31
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
label12:
label9:
	j label6
label5:
	lw $t0, -24($fp)
	sw $t0, -124($fp)
	li $t0, 2
	sw $t0, -128($fp)
	lw $t1, -124($fp)
	lw $t2, -128($fp)
	beq $t1, $t2, label13
	j label14
label13:
	li $t0, 28
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	j label15
label14:
	lw $t0, -24($fp)
	sw $t0, -136($fp)
	lw $t0, -24($fp)
	sw $t0, -140($fp)
	li $t0, 2
	sw $t0, -144($fp)
	lw $t0, -140($fp)
	lw $t1, -144($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -148($fp)
	li $t0, 2
	sw $t0, -152($fp)
	lw $t0, -148($fp)
	lw $t1, -152($fp)
	mul $t0, $t0, $t1
	sw $t0, -156($fp)
	lw $t1, -136($fp)
	lw $t2, -156($fp)
	beq $t1, $t2, label16
	j label17
label16:
	li $t0, 30
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	j label18
label17:
	li $t0, 31
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
label18:
label15:
label6:
	j label3
label2:
	lw $t0, -12($fp)
	sw $t0, -168($fp)
	lw $t0, -12($fp)
	sw $t0, -172($fp)
	li $t0, 4
	sw $t0, -176($fp)
	lw $t0, -172($fp)
	lw $t1, -176($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -180($fp)
	li $t0, 4
	sw $t0, -184($fp)
	lw $t0, -180($fp)
	lw $t1, -184($fp)
	mul $t0, $t0, $t1
	sw $t0, -188($fp)
	lw $t1, -168($fp)
	lw $t2, -188($fp)
	beq $t1, $t2, label19
	j label20
label19:
	lw $t0, -24($fp)
	sw $t0, -192($fp)
	li $t0, 2
	sw $t0, -196($fp)
	lw $t1, -192($fp)
	lw $t2, -196($fp)
	beq $t1, $t2, label22
	j label23
label22:
	li $t0, 29
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	j label24
label23:
	lw $t0, -24($fp)
	sw $t0, -204($fp)
	lw $t0, -24($fp)
	sw $t0, -208($fp)
	li $t0, 2
	sw $t0, -212($fp)
	lw $t0, -208($fp)
	lw $t1, -212($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -216($fp)
	li $t0, 2
	sw $t0, -220($fp)
	lw $t0, -216($fp)
	lw $t1, -220($fp)
	mul $t0, $t0, $t1
	sw $t0, -224($fp)
	lw $t1, -204($fp)
	lw $t2, -224($fp)
	beq $t1, $t2, label25
	j label26
label25:
	li $t0, 30
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	j label27
label26:
	li $t0, 31
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
label27:
label24:
	j label21
label20:
	lw $t0, -24($fp)
	sw $t0, -236($fp)
	li $t0, 2
	sw $t0, -240($fp)
	lw $t1, -236($fp)
	lw $t2, -240($fp)
	beq $t1, $t2, label28
	j label29
label28:
	li $t0, 28
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	j label30
label29:
	lw $t0, -24($fp)
	sw $t0, -248($fp)
	lw $t0, -24($fp)
	sw $t0, -252($fp)
	li $t0, 2
	sw $t0, -256($fp)
	lw $t0, -252($fp)
	lw $t1, -256($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -260($fp)
	li $t0, 2
	sw $t0, -264($fp)
	lw $t0, -260($fp)
	lw $t1, -264($fp)
	mul $t0, $t0, $t1
	sw $t0, -268($fp)
	lw $t1, -248($fp)
	lw $t2, -268($fp)
	beq $t1, $t2, label31
	j label32
label31:
	li $t0, 30
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	j label33
label32:
	li $t0, 31
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
label33:
label30:
label21:
label3:
	li $t0, 0
	sw $t0, -280($fp)
	lw $ra, -4($fp)
	lw $v0, -280($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
