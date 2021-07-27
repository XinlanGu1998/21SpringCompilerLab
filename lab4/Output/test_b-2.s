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
	addi $sp, $sp, -108
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
label1:
	lw $t0, -36($fp)
	sw $t0, -44($fp)
	li $t0, 0
	sw $t0, -48($fp)
	lw $t1, -44($fp)
	lw $t2, -48($fp)
	bne $t1, $t2, label2
	j label3
label2:
	lw $t0, 8($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -56($fp)
	lw $t0, -36($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -64($fp)
	lw $t0, 4($fp)
	sw $t0, -68($fp)
	lw $t0, 4($fp)
	sw $t0, -72($fp)
	lw $t0, 8($fp)
	sw $t0, -76($fp)
	lw $t0, -72($fp)
	lw $t1, -76($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -80($fp)
	lw $t0, 8($fp)
	sw $t0, -84($fp)
	lw $t0, -80($fp)
	lw $t1, -84($fp)
	mul $t0, $t0, $t1
	sw $t0, -88($fp)
	lw $t0, -68($fp)
	lw $t1, -88($fp)
	sub $t0, $t0, $t1
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -96($fp)
	j label1
label3:
	lw $t0, 8($fp)
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	lw $t0, -104($fp)
	sw $t0, -112($fp)
	lw $ra, -4($fp)
	lw $v0, -112($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f2:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -128
	li $t0, 0
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, 4($fp)
	sw $t0, -16($fp)
	lw $t0, 8($fp)
	sw $t0, -20($fp)
	lw $t1, -16($fp)
	lw $t2, -20($fp)
	bgt $t1, $t2, label4
	j label5
label4:
	lw $t0, 4($fp)
	sw $t0, -24($fp)
	lw $t0, 4($fp)
	sw $t0, -28($fp)
	lw $t0, 8($fp)
	sw $t0, -32($fp)
	lw $t0, -28($fp)
	lw $t1, -32($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -36($fp)
	lw $t0, 8($fp)
	sw $t0, -40($fp)
	lw $t0, -36($fp)
	lw $t1, -40($fp)
	mul $t0, $t0, $t1
	sw $t0, -44($fp)
	lw $t0, -24($fp)
	lw $t1, -44($fp)
	sub $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -52($fp)
	lw $t0, -12($fp)
	sw $t0, -56($fp)
	li $t0, 0
	sw $t0, -60($fp)
	lw $t1, -56($fp)
	lw $t2, -60($fp)
	beq $t1, $t2, label7
	j label8
label7:
	lw $t0, 8($fp)
	sw $t0, -64($fp)
	lw $ra, -4($fp)
	lw $v0, -64($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label9
label8:
	lw $t0, -12($fp)
	sw $t0, -68($fp)
	lw $t0, 8($fp)
	sw $t0, -72($fp)
	addi $sp, $sp, -4
	lw $t0, -68($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -72($fp)
	sw $t0, 0($sp)
	jal f2
	sw $v0, -76($fp)
	addi $sp, $sp, 12
	lw $ra, -4($fp)
	lw $v0, -76($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label9:
	j label6
label5:
	lw $t0, 8($fp)
	sw $t0, -80($fp)
	lw $t0, 8($fp)
	sw $t0, -84($fp)
	lw $t0, 4($fp)
	sw $t0, -88($fp)
	lw $t0, -84($fp)
	lw $t1, -88($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -92($fp)
	lw $t0, 4($fp)
	sw $t0, -96($fp)
	lw $t0, -92($fp)
	lw $t1, -96($fp)
	mul $t0, $t0, $t1
	sw $t0, -100($fp)
	lw $t0, -80($fp)
	lw $t1, -100($fp)
	sub $t0, $t0, $t1
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -108($fp)
	lw $t0, -12($fp)
	sw $t0, -112($fp)
	li $t0, 0
	sw $t0, -116($fp)
	lw $t1, -112($fp)
	lw $t2, -116($fp)
	beq $t1, $t2, label10
	j label11
label10:
	lw $t0, 4($fp)
	sw $t0, -120($fp)
	lw $ra, -4($fp)
	lw $v0, -120($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label12
label11:
	lw $t0, -12($fp)
	sw $t0, -124($fp)
	lw $t0, 4($fp)
	sw $t0, -128($fp)
	addi $sp, $sp, -4
	lw $t0, -124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -128($fp)
	sw $t0, 0($sp)
	jal f2
	sw $v0, -132($fp)
	addi $sp, $sp, 12
	lw $ra, -4($fp)
	lw $v0, -132($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label12:
label6:
main:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -44
	jal read
	sw $v0, -8($fp)
	addi $sp, $sp, 4
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	jal read
	sw $v0, -16($fp)
	addi $sp, $sp, 4
	lw $t0, -16($fp)
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -12($fp)
	sw $t0, -28($fp)
	addi $sp, $sp, -4
	lw $t0, -24($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28($fp)
	sw $t0, 0($sp)
	jal f1
	sw $v0, -32($fp)
	addi $sp, $sp, 12
	lw $t0, -32($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -20($fp)
	sw $t0, -36($fp)
	lw $t0, -12($fp)
	sw $t0, -40($fp)
	addi $sp, $sp, -4
	lw $t0, -36($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -40($fp)
	sw $t0, 0($sp)
	jal f2
	sw $v0, -44($fp)
	addi $sp, $sp, 12
	lw $t0, -44($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -48($fp)
	lw $ra, -4($fp)
	lw $v0, -48($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
