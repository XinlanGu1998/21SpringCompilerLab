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
	li $t0, 1
	sw $t0, -12($fp)
	lw $t1, -8($fp)
	lw $t2, -12($fp)
	beq $t1, $t2, label1
	j label2
label1:
	lw $t0, 8($fp)
	sw $t0, -16($fp)
	li $t0, 1000000
	sw $t0, -20($fp)
	lw $t0, -16($fp)
	lw $t1, -20($fp)
	mul $t0, $t0, $t1
	sw $t0, -24($fp)
	lw $t0, 16($fp)
	sw $t0, -28($fp)
	lw $t0, -24($fp)
	lw $t1, -28($fp)
	add $t0, $t0, $t1
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	j label3
label2:
	lw $t0, 12($fp)
	sw $t0, -36($fp)
	lw $t0, 16($fp)
	sw $t0, -40($fp)
	lw $t0, 8($fp)
	sw $t0, -44($fp)
	lw $t0, 4($fp)
	sw $t0, -48($fp)
	li $t0, 1
	sw $t0, -52($fp)
	lw $t0, -48($fp)
	lw $t1, -52($fp)
	sub $t0, $t0, $t1
	sw $t0, -56($fp)
	addi $sp, $sp, -4
	lw $t0, -36($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -40($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -44($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -56($fp)
	sw $t0, 0($sp)
	jal f1
	sw $v0, -60($fp)
	addi $sp, $sp, 20
	lw $t0, 8($fp)
	sw $t0, -64($fp)
	li $t0, 1000000
	sw $t0, -68($fp)
	lw $t0, -64($fp)
	lw $t1, -68($fp)
	mul $t0, $t0, $t1
	sw $t0, -72($fp)
	lw $t0, 16($fp)
	sw $t0, -76($fp)
	lw $t0, -72($fp)
	lw $t1, -76($fp)
	add $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, 16($fp)
	sw $t0, -84($fp)
	lw $t0, 8($fp)
	sw $t0, -88($fp)
	lw $t0, 12($fp)
	sw $t0, -92($fp)
	lw $t0, 4($fp)
	sw $t0, -96($fp)
	li $t0, 1
	sw $t0, -100($fp)
	lw $t0, -96($fp)
	lw $t1, -100($fp)
	sub $t0, $t0, $t1
	sw $t0, -104($fp)
	addi $sp, $sp, -4
	lw $t0, -84($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -88($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -92($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -104($fp)
	sw $t0, 0($sp)
	jal f1
	sw $v0, -108($fp)
	addi $sp, $sp, 20
label3:
	li $t0, 0
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
	addi $sp, $sp, -32
	li $t0, 3
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	li $t0, 3
	sw $t0, -16($fp)
	li $t0, 2
	sw $t0, -20($fp)
	li $t0, 1
	sw $t0, -24($fp)
	lw $t0, -12($fp)
	sw $t0, -28($fp)
	addi $sp, $sp, -4
	lw $t0, -16($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -24($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28($fp)
	sw $t0, 0($sp)
	jal f1
	sw $v0, -32($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -36($fp)
	lw $ra, -4($fp)
	lw $v0, -36($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
