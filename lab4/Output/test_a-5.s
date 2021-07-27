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
	addi $sp, $sp, -60
	li $t0, 1
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	li $t0, 1
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, -20($fp)
label1:
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, 4($fp)
	sw $t0, -28($fp)
	lw $t1, -24($fp)
	lw $t2, -28($fp)
	ble $t1, $t2, label2
	j label3
label2:
	lw $t0, -12($fp)
	sw $t0, -32($fp)
	lw $t0, -20($fp)
	sw $t0, -36($fp)
	lw $t0, -32($fp)
	lw $t1, -36($fp)
	mul $t0, $t0, $t1
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -44($fp)
	lw $t0, -20($fp)
	sw $t0, -48($fp)
	li $t0, 1
	sw $t0, -52($fp)
	lw $t0, -48($fp)
	lw $t1, -52($fp)
	add $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -60($fp)
	j label1
label3:
	lw $t0, -12($fp)
	sw $t0, -64($fp)
	lw $ra, -4($fp)
	lw $v0, -64($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
main:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -120
	li $t0, 0
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, -32($fp)
	li $t0, 5
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
label4:
	lw $t0, -32($fp)
	sw $t0, -44($fp)
	lw $t0, -40($fp)
	sw $t0, -48($fp)
	lw $t1, -44($fp)
	lw $t2, -48($fp)
	blt $t1, $t2, label5
	j label6
label5:
	lw $t0, -32($fp)
	sw $t0, -52($fp)
	li $t0, 2
	sw $t0, -56($fp)
	lw $t0, -52($fp)
	lw $t1, -56($fp)
	add $t0, $t0, $t1
	sw $t0, -60($fp)
	addi $t0, $fp, -24
	sw $t0, -64($fp)
	lw $t0, -32($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -72($fp)
	lw $t0, -64($fp)
	lw $t1, -72($fp)
	add $t0, $t0, $t1
	sw $t0, -76($fp)
	lw $t0, -60($fp)
	lw $t1, -76($fp)
	sw $t0, 0($t1)
	lw $t0, -76($fp)
	lw $t1, 0($t0)
	sw $t1, -80($fp)
	addi $t0, $fp, -24
	sw $t0, -84($fp)
	lw $t0, -32($fp)
	sw $t0, -88($fp)
	li $t0, 4
	lw $t1, -88($fp)
	mul $t0, $t0, $t1
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	lw $t1, -84($fp)
	add $t0, $t0, $t1
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	lw $t1, 0($t0)
	sw $t1, -100($fp)
	addi $sp, $sp, -4
	lw $t0, -100($fp)
	sw $t0, 0($sp)
	jal f1
	sw $v0, -104($fp)
	addi $sp, $sp, 8
	lw $t0, -104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -32($fp)
	sw $t0, -108($fp)
	li $t0, 1
	sw $t0, -112($fp)
	lw $t0, -108($fp)
	lw $t1, -112($fp)
	add $t0, $t0, $t1
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -120($fp)
	j label4
label6:
	li $t0, 0
	sw $t0, -124($fp)
	lw $ra, -4($fp)
	lw $v0, -124($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
