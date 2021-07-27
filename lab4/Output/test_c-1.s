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
f1:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -44
	lw $t0, 4($fp)
	sw $t0, -8($fp)
	lw $t0, 4($fp)
	sw $t0, -12($fp)
	lw $t0, 8($fp)
	sw $t0, -16($fp)
	lw $t0, -12($fp)
	lw $t1, -16($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -20($fp)
	lw $t0, 8($fp)
	sw $t0, -24($fp)
	lw $t0, -20($fp)
	lw $t1, -24($fp)
	mul $t0, $t0, $t1
	sw $t0, -28($fp)
	lw $t0, -8($fp)
	lw $t1, -28($fp)
	sub $t0, $t0, $t1
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	lw $t0, -36($fp)
	sw $t0, -48($fp)
	lw $ra, -4($fp)
	lw $v0, -48($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f2:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -140
	li $t0, 1
	sw $t0, -8($fp)
	lw $t0, 8($fp)
	sw $t0, -12($fp)
	lw $t0, -8($fp)
	lw $t1, -12($fp)
	add $t0, $t0, $t1
	sw $t0, -16($fp)
	lw $t0, 8($fp)
	sw $t0, -20($fp)
	lw $t0, -16($fp)
	lw $t1, -20($fp)
	sub $t0, $t0, $t1
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
label1:
	lw $t0, 8($fp)
	sw $t0, -32($fp)
	lw $t0, -28($fp)
	sw $t0, -36($fp)
	lw $t0, -28($fp)
	sw $t0, -40($fp)
	lw $t0, -36($fp)
	lw $t1, -40($fp)
	sub $t0, $t0, $t1
	sw $t0, -44($fp)
	li $t0, 90
	sw $t0, -48($fp)
	lw $t0, -44($fp)
	lw $t1, -48($fp)
	add $t0, $t0, $t1
	sw $t0, -52($fp)
	li $t0, 89
	sw $t0, -56($fp)
	lw $t0, -52($fp)
	lw $t1, -56($fp)
	sub $t0, $t0, $t1
	sw $t0, -60($fp)
	li $t0, 1
	sw $t0, -64($fp)
	lw $t0, -60($fp)
	lw $t1, -64($fp)
	add $t0, $t0, $t1
	sw $t0, -68($fp)
	li $t0, 2
	sw $t0, -72($fp)
	lw $t0, -68($fp)
	lw $t1, -72($fp)
	sub $t0, $t0, $t1
	sw $t0, -76($fp)
	lw $t1, -32($fp)
	lw $t2, -76($fp)
	bgt $t1, $t2, label2
	j label3
label2:
	lw $t0, -28($fp)
	sw $t0, -80($fp)
	lw $t0, 4($fp)
	sw $t0, -84($fp)
	lw $t0, -80($fp)
	lw $t1, -84($fp)
	mul $t0, $t0, $t1
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, -92($fp)
	li $t0, 2
	sw $t0, -96($fp)
	li $t0, 1
	sw $t0, -100($fp)
	lw $t0, -96($fp)
	lw $t1, -100($fp)
	mul $t0, $t0, $t1
	sw $t0, -104($fp)
	lw $t0, 8($fp)
	sw $t0, -108($fp)
	lw $t0, -104($fp)
	lw $t1, -108($fp)
	mul $t0, $t0, $t1
	sw $t0, -112($fp)
	li $t0, 1
	sw $t0, -116($fp)
	lw $t0, 8($fp)
	sw $t0, -120($fp)
	lw $t0, -116($fp)
	lw $t1, -120($fp)
	mul $t0, $t0, $t1
	sw $t0, -124($fp)
	lw $t0, -112($fp)
	lw $t1, -124($fp)
	sub $t0, $t0, $t1
	sw $t0, -128($fp)
	li $t0, 1
	sw $t0, -132($fp)
	lw $t0, -128($fp)
	lw $t1, -132($fp)
	sub $t0, $t0, $t1
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -140($fp)
	j label1
label3:
	lw $t0, -28($fp)
	sw $t0, -144($fp)
	lw $ra, -4($fp)
	lw $v0, -144($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f3:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -100
	li $t0, 0
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, 4($fp)
	sw $t0, -16($fp)
	li $t0, 0
	sw $t0, -20($fp)
	lw $t1, -16($fp)
	lw $t2, -20($fp)
	blt $t1, $t2, label4
	j label5
label4:
	li $t0, 1
	sw $t0, -24($fp)
	li $t0, 0
	lw $t1, -24($fp)
	sub $t0, $t0, $t1
	sw $t0, -28($fp)
	lw $ra, -4($fp)
	lw $v0, -28($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label5:
label7:
	lw $t0, 4($fp)
	sw $t0, -32($fp)
	li $t0, 0
	sw $t0, -36($fp)
	lw $t1, -32($fp)
	lw $t2, -36($fp)
	bgt $t1, $t2, label8
	j label9
label8:
	lw $t0, 4($fp)
	sw $t0, -40($fp)
	li $t0, 10
	sw $t0, -44($fp)
	lw $t0, -40($fp)
	lw $t1, -44($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -48($fp)
	lw $t0, -48($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -52($fp)
	lw $t0, -12($fp)
	sw $t0, -56($fp)
	li $t0, 2
	sw $t0, -60($fp)
	lw $t0, -56($fp)
	lw $t1, -60($fp)
	add $t0, $t0, $t1
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -68($fp)
	lw $t0, -12($fp)
	sw $t0, -72($fp)
	li $t0, 2
	sw $t0, -76($fp)
	lw $t0, -72($fp)
	lw $t1, -76($fp)
	add $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -84($fp)
	lw $t0, -12($fp)
	sw $t0, -88($fp)
	li $t0, 3
	sw $t0, -92($fp)
	lw $t0, -88($fp)
	lw $t1, -92($fp)
	sub $t0, $t0, $t1
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -100($fp)
	j label7
label9:
	lw $t0, -12($fp)
	sw $t0, -104($fp)
	lw $ra, -4($fp)
	lw $v0, -104($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f4:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -136
	li $t0, 1
	sw $t0, -8($fp)
	lw $t0, 4($fp)
	sw $t0, -12($fp)
	lw $t0, -8($fp)
	lw $t1, -12($fp)
	add $t0, $t0, $t1
	sw $t0, -16($fp)
	li $t0, 1
	sw $t0, -20($fp)
	lw $t0, -16($fp)
	lw $t1, -20($fp)
	sub $t0, $t0, $t1
	sw $t0, -24($fp)
	addi $sp, $sp, -4
	lw $t0, -24($fp)
	sw $t0, 0($sp)
	jal f3
	sw $v0, -28($fp)
	addi $sp, $sp, 8
	lw $t0, -28($fp)
	sw $t0, -32($fp)
	li $t0, 0
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	lw $t0, 4($fp)
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
label10:
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	li $t0, 0
	sw $t0, -56($fp)
	lw $t1, -52($fp)
	lw $t2, -56($fp)
	bgt $t1, $t2, label11
	j label12
label11:
	li $t0, 10
	sw $t0, -60($fp)
	lw $t0, -48($fp)
	sw $t0, -64($fp)
	addi $sp, $sp, -4
	lw $t0, -60($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -64($fp)
	sw $t0, 0($sp)
	jal f1
	sw $v0, -68($fp)
	addi $sp, $sp, 12
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	lw $t0, -48($fp)
	sw $t0, -80($fp)
	lw $t0, -72($fp)
	sw $t0, -84($fp)
	lw $t0, -80($fp)
	lw $t1, -84($fp)
	sub $t0, $t0, $t1
	sw $t0, -88($fp)
	li $t0, 10
	sw $t0, -92($fp)
	lw $t0, -88($fp)
	lw $t1, -92($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -100($fp)
	lw $t0, -40($fp)
	sw $t0, -104($fp)
	lw $t0, -32($fp)
	sw $t0, -108($fp)
	lw $t0, -72($fp)
	sw $t0, -112($fp)
	addi $sp, $sp, -4
	lw $t0, -108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -112($fp)
	sw $t0, 0($sp)
	jal f2
	sw $v0, -116($fp)
	addi $sp, $sp, 12
	lw $t0, -104($fp)
	lw $t1, -116($fp)
	add $t0, $t0, $t1
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -124($fp)
	j label10
label12:
	lw $t0, -40($fp)
	sw $t0, -128($fp)
	lw $t0, 4($fp)
	sw $t0, -132($fp)
	lw $t1, -128($fp)
	lw $t2, -132($fp)
	beq $t1, $t2, label13
	j label14
label13:
	li $t0, 1
	sw $t0, -136($fp)
	lw $ra, -4($fp)
	lw $v0, -136($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label15
label14:
	li $t0, 0
	sw $t0, -140($fp)
	lw $ra, -4($fp)
	lw $v0, -140($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label15:
main:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -80
	li $t0, 0
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	li $t0, 300
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, -20($fp)
label16:
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	li $t0, 500
	sw $t0, -28($fp)
	lw $t1, -24($fp)
	lw $t2, -28($fp)
	blt $t1, $t2, label17
	j label18
label17:
	lw $t0, -20($fp)
	sw $t0, -32($fp)
	addi $sp, $sp, -4
	lw $t0, -32($fp)
	sw $t0, 0($sp)
	jal f4
	sw $v0, -36($fp)
	addi $sp, $sp, 8
	li $t0, 1
	sw $t0, -40($fp)
	lw $t1, -36($fp)
	lw $t2, -40($fp)
	beq $t1, $t2, label19
	j label20
label19:
	lw $t0, -20($fp)
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12($fp)
	sw $t0, -48($fp)
	li $t0, 1
	sw $t0, -52($fp)
	lw $t0, -48($fp)
	lw $t1, -52($fp)
	add $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -60($fp)
label20:
	lw $t0, -20($fp)
	sw $t0, -64($fp)
	li $t0, 1
	sw $t0, -68($fp)
	lw $t0, -64($fp)
	lw $t1, -68($fp)
	add $t0, $t0, $t1
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -76($fp)
	j label16
label18:
	lw $t0, -12($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12($fp)
	sw $t0, -84($fp)
	lw $ra, -4($fp)
	lw $v0, -84($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
