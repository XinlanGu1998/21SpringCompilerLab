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
	addi $sp, $sp, -376
	li $t0, 0
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, -32($fp)
	li $t0, 5
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	li $t0, 0
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
label1:
	lw $t0, -32($fp)
	sw $t0, -52($fp)
	li $t0, 5
	sw $t0, -56($fp)
	lw $t1, -52($fp)
	lw $t2, -56($fp)
	blt $t1, $t2, label2
	j label3
label2:
	jal read
	sw $v0, -60($fp)
	addi $sp, $sp, 4
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
	lw $t0, -32($fp)
	sw $t0, -84($fp)
	li $t0, 1
	sw $t0, -88($fp)
	lw $t0, -84($fp)
	lw $t1, -88($fp)
	add $t0, $t0, $t1
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -96($fp)
	j label1
label3:
	lw $t0, -40($fp)
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -104($fp)
label4:
	lw $t0, -32($fp)
	sw $t0, -108($fp)
	li $t0, 0
	sw $t0, -112($fp)
	lw $t1, -108($fp)
	lw $t2, -112($fp)
	bgt $t1, $t2, label5
	j label6
label5:
label7:
	lw $t0, -48($fp)
	sw $t0, -116($fp)
	lw $t0, -32($fp)
	sw $t0, -120($fp)
	li $t0, 1
	sw $t0, -124($fp)
	lw $t0, -120($fp)
	lw $t1, -124($fp)
	sub $t0, $t0, $t1
	sw $t0, -128($fp)
	lw $t1, -116($fp)
	lw $t2, -128($fp)
	blt $t1, $t2, label8
	j label9
label8:
	addi $t0, $fp, -24
	sw $t0, -132($fp)
	lw $t0, -48($fp)
	sw $t0, -136($fp)
	li $t0, 4
	lw $t1, -136($fp)
	mul $t0, $t0, $t1
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	lw $t1, -132($fp)
	add $t0, $t0, $t1
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	lw $t1, 0($t0)
	sw $t1, -148($fp)
	addi $t0, $fp, -24
	sw $t0, -152($fp)
	lw $t0, -48($fp)
	sw $t0, -156($fp)
	li $t0, 1
	sw $t0, -160($fp)
	lw $t0, -156($fp)
	lw $t1, -160($fp)
	add $t0, $t0, $t1
	sw $t0, -164($fp)
	li $t0, 4
	lw $t1, -164($fp)
	mul $t0, $t0, $t1
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	lw $t1, -152($fp)
	add $t0, $t0, $t1
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	lw $t1, 0($t0)
	sw $t1, -176($fp)
	lw $t1, -148($fp)
	lw $t2, -176($fp)
	bgt $t1, $t2, label10
	j label11
label10:
	addi $t0, $fp, -24
	sw $t0, -180($fp)
	lw $t0, -48($fp)
	sw $t0, -184($fp)
	li $t0, 4
	lw $t1, -184($fp)
	mul $t0, $t0, $t1
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	lw $t1, -180($fp)
	add $t0, $t0, $t1
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	lw $t1, 0($t0)
	sw $t1, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	addi $t0, $fp, -24
	sw $t0, -208($fp)
	lw $t0, -48($fp)
	sw $t0, -212($fp)
	li $t0, 1
	sw $t0, -216($fp)
	lw $t0, -212($fp)
	lw $t1, -216($fp)
	add $t0, $t0, $t1
	sw $t0, -220($fp)
	li $t0, 4
	lw $t1, -220($fp)
	mul $t0, $t0, $t1
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	lw $t1, -208($fp)
	add $t0, $t0, $t1
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	lw $t1, 0($t0)
	sw $t1, -232($fp)
	addi $t0, $fp, -24
	sw $t0, -236($fp)
	lw $t0, -48($fp)
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -244($fp)
	lw $t0, -236($fp)
	lw $t1, -244($fp)
	add $t0, $t0, $t1
	sw $t0, -248($fp)
	lw $t0, -232($fp)
	lw $t1, -248($fp)
	sw $t0, 0($t1)
	lw $t0, -248($fp)
	lw $t1, 0($t0)
	sw $t1, -252($fp)
	lw $t0, -200($fp)
	sw $t0, -256($fp)
	addi $t0, $fp, -24
	sw $t0, -260($fp)
	lw $t0, -48($fp)
	sw $t0, -264($fp)
	li $t0, 1
	sw $t0, -268($fp)
	lw $t0, -264($fp)
	lw $t1, -268($fp)
	add $t0, $t0, $t1
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -276($fp)
	lw $t0, -260($fp)
	lw $t1, -276($fp)
	add $t0, $t0, $t1
	sw $t0, -280($fp)
	lw $t0, -256($fp)
	lw $t1, -280($fp)
	sw $t0, 0($t1)
	lw $t0, -280($fp)
	lw $t1, 0($t0)
	sw $t1, -284($fp)
label11:
	lw $t0, -48($fp)
	sw $t0, -288($fp)
	li $t0, 1
	sw $t0, -292($fp)
	lw $t0, -288($fp)
	lw $t1, -292($fp)
	add $t0, $t0, $t1
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -300($fp)
	j label7
label9:
	li $t0, 0
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -308($fp)
	lw $t0, -32($fp)
	sw $t0, -312($fp)
	li $t0, 1
	sw $t0, -316($fp)
	lw $t0, -312($fp)
	lw $t1, -316($fp)
	sub $t0, $t0, $t1
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -324($fp)
	j label4
label6:
	li $t0, 0
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -332($fp)
label13:
	lw $t0, -32($fp)
	sw $t0, -336($fp)
	li $t0, 5
	sw $t0, -340($fp)
	lw $t1, -336($fp)
	lw $t2, -340($fp)
	blt $t1, $t2, label14
	j label15
label14:
	addi $t0, $fp, -24
	sw $t0, -344($fp)
	lw $t0, -32($fp)
	sw $t0, -348($fp)
	li $t0, 4
	lw $t1, -348($fp)
	mul $t0, $t0, $t1
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	lw $t1, -344($fp)
	add $t0, $t0, $t1
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	lw $t1, 0($t0)
	sw $t1, -360($fp)
	lw $t0, -360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -32($fp)
	sw $t0, -364($fp)
	li $t0, 1
	sw $t0, -368($fp)
	lw $t0, -364($fp)
	lw $t1, -368($fp)
	add $t0, $t0, $t1
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -376($fp)
	j label13
label15:
	li $t0, 0
	sw $t0, -380($fp)
	lw $ra, -4($fp)
	lw $v0, -380($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
