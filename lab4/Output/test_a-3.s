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
	addi $sp, $sp, -152
	li $t0, 30
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	li $t0, 0
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, -20($fp)
	li $t0, 1
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 1
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
label1:
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	lw $t0, -12($fp)
	sw $t0, -44($fp)
	lw $t1, -40($fp)
	lw $t2, -44($fp)
	ble $t1, $t2, label2
	j label3
label2:
label4:
	lw $t0, -28($fp)
	sw $t0, -48($fp)
	lw $t0, -36($fp)
	sw $t0, -52($fp)
	lw $t1, -48($fp)
	lw $t2, -52($fp)
	ble $t1, $t2, label5
	j label6
label5:
	lw $t0, -36($fp)
	sw $t0, -56($fp)
	lw $t0, -36($fp)
	sw $t0, -60($fp)
	lw $t0, -28($fp)
	sw $t0, -64($fp)
	lw $t0, -60($fp)
	lw $t1, -64($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -68($fp)
	lw $t0, -28($fp)
	sw $t0, -72($fp)
	lw $t0, -68($fp)
	lw $t1, -72($fp)
	mul $t0, $t0, $t1
	sw $t0, -76($fp)
	lw $t1, -56($fp)
	lw $t2, -76($fp)
	beq $t1, $t2, label7
	j label8
label7:
	lw $t0, -20($fp)
	sw $t0, -80($fp)
	li $t0, 1
	sw $t0, -84($fp)
	lw $t0, -80($fp)
	lw $t1, -84($fp)
	add $t0, $t0, $t1
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -92($fp)
label8:
	lw $t0, -28($fp)
	sw $t0, -96($fp)
	li $t0, 1
	sw $t0, -100($fp)
	lw $t0, -96($fp)
	lw $t1, -100($fp)
	add $t0, $t0, $t1
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, -108($fp)
	j label4
label6:
	lw $t0, -20($fp)
	sw $t0, -112($fp)
	li $t0, 2
	sw $t0, -116($fp)
	lw $t1, -112($fp)
	lw $t2, -116($fp)
	beq $t1, $t2, label10
	j label11
label10:
	lw $t0, -36($fp)
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
label11:
	li $t0, 1
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, -128($fp)
	li $t0, 0
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -136($fp)
	lw $t0, -36($fp)
	sw $t0, -140($fp)
	li $t0, 1
	sw $t0, -144($fp)
	lw $t0, -140($fp)
	lw $t1, -144($fp)
	add $t0, $t0, $t1
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -152($fp)
	j label1
label3:
	li $t0, 0
	sw $t0, -156($fp)
	lw $ra, -4($fp)
	lw $v0, -156($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
