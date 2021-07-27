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
	addi $sp, $sp, -56
	li $t0, 0
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
label1:
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	lw $t0, 8($fp)
	sw $t0, -20($fp)
	lw $t1, -16($fp)
	lw $t2, -20($fp)
	blt $t1, $t2, label2
	j label3
label2:
	lw $t0, 4($fp)
	sw $t0, -24($fp)
	lw $t0, -12($fp)
	sw $t0, -28($fp)
	li $t0, 4
	lw $t1, -28($fp)
	mul $t0, $t0, $t1
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	lw $t1, -24($fp)
	add $t0, $t0, $t1
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	lw $t1, 0($t0)
	sw $t1, -40($fp)
	lw $t0, -40($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12($fp)
	sw $t0, -44($fp)
	li $t0, 1
	sw $t0, -48($fp)
	lw $t0, -44($fp)
	lw $t1, -48($fp)
	add $t0, $t0, $t1
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -56($fp)
	j label1
label3:
	li $t0, 0
	sw $t0, -60($fp)
	lw $ra, -4($fp)
	lw $v0, -60($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f2:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -108
	li $t0, 0
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	li $t0, 0
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, -20($fp)
	li $t0, 3
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
label4:
	lw $t0, -20($fp)
	sw $t0, -32($fp)
	lw $t0, -28($fp)
	sw $t0, -36($fp)
	lw $t1, -32($fp)
	lw $t2, -36($fp)
	blt $t1, $t2, label5
	j label6
label5:
	lw $t0, -12($fp)
	sw $t0, -40($fp)
	lw $t0, 4($fp)
	sw $t0, -44($fp)
	lw $t0, -20($fp)
	sw $t0, -48($fp)
	li $t0, 4
	lw $t1, -48($fp)
	mul $t0, $t0, $t1
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	lw $t1, -44($fp)
	add $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	lw $t1, 0($t0)
	sw $t1, -60($fp)
	lw $t0, 8($fp)
	sw $t0, -64($fp)
	lw $t0, -20($fp)
	sw $t0, -68($fp)
	li $t0, 4
	lw $t1, -68($fp)
	mul $t0, $t0, $t1
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	lw $t1, -64($fp)
	add $t0, $t0, $t1
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	lw $t1, 0($t0)
	sw $t1, -80($fp)
	lw $t0, -60($fp)
	lw $t1, -80($fp)
	mul $t0, $t0, $t1
	sw $t0, -84($fp)
	lw $t0, -40($fp)
	lw $t1, -84($fp)
	add $t0, $t0, $t1
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -92($fp)
	lw $t0, -20($fp)
	sw $t0, -96($fp)
	li $t0, 1
	sw $t0, -100($fp)
	lw $t0, -96($fp)
	lw $t1, -100($fp)
	add $t0, $t0, $t1
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -108($fp)
	j label4
label6:
	lw $t0, -12($fp)
	sw $t0, -112($fp)
	lw $ra, -4($fp)
	lw $v0, -112($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
main:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -176
	li $t0, 0
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	li $t0, 3
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
label7:
	lw $t0, -36($fp)
	sw $t0, -48($fp)
	lw $t0, -44($fp)
	sw $t0, -52($fp)
	lw $t1, -48($fp)
	lw $t2, -52($fp)
	blt $t1, $t2, label8
	j label9
label8:
	lw $t0, -36($fp)
	sw $t0, -56($fp)
	lw $t0, -36($fp)
	sw $t0, -60($fp)
	lw $t0, -56($fp)
	lw $t1, -60($fp)
	mul $t0, $t0, $t1
	sw $t0, -64($fp)
	addi $t0, $fp, -16
	sw $t0, -68($fp)
	lw $t0, -36($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -76($fp)
	lw $t0, -68($fp)
	lw $t1, -76($fp)
	add $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $t0, -64($fp)
	lw $t1, -80($fp)
	sw $t0, 0($t1)
	lw $t0, -80($fp)
	lw $t1, 0($t0)
	sw $t1, -84($fp)
	li $t0, 2
	sw $t0, -88($fp)
	lw $t0, -36($fp)
	sw $t0, -92($fp)
	lw $t0, -88($fp)
	lw $t1, -92($fp)
	mul $t0, $t0, $t1
	sw $t0, -96($fp)
	li $t0, 1
	sw $t0, -100($fp)
	lw $t0, -96($fp)
	lw $t1, -100($fp)
	add $t0, $t0, $t1
	sw $t0, -104($fp)
	addi $t0, $fp, -28
	sw $t0, -108($fp)
	lw $t0, -36($fp)
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -116($fp)
	lw $t0, -108($fp)
	lw $t1, -116($fp)
	add $t0, $t0, $t1
	sw $t0, -120($fp)
	lw $t0, -104($fp)
	lw $t1, -120($fp)
	sw $t0, 0($t1)
	lw $t0, -120($fp)
	lw $t1, 0($t0)
	sw $t1, -124($fp)
	lw $t0, -36($fp)
	sw $t0, -128($fp)
	li $t0, 1
	sw $t0, -132($fp)
	lw $t0, -128($fp)
	lw $t1, -132($fp)
	add $t0, $t0, $t1
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -140($fp)
	j label7
label9:
	li $t0, 3
	sw $t0, -144($fp)
	addi $t0, $fp, -16
	sw $t0, -148($fp)
	addi $sp, $sp, -4
	lw $t0, -144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -148($fp)
	sw $t0, 0($sp)
	jal f1
	sw $v0, -152($fp)
	addi $sp, $sp, 12
	li $t0, 3
	sw $t0, -156($fp)
	addi $t0, $fp, -28
	sw $t0, -160($fp)
	addi $sp, $sp, -4
	lw $t0, -156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -160($fp)
	sw $t0, 0($sp)
	jal f1
	sw $v0, -164($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -28
	sw $t0, -168($fp)
	addi $t0, $fp, -16
	sw $t0, -172($fp)
	addi $sp, $sp, -4
	lw $t0, -168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -172($fp)
	sw $t0, 0($sp)
	jal f2
	sw $v0, -176($fp)
	addi $sp, $sp, 12
	lw $t0, -176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -180($fp)
	lw $ra, -4($fp)
	lw $v0, -180($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
