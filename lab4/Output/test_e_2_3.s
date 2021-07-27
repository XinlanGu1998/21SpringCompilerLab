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
	addi $sp, $sp, -320
	li $t0, 0
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	li $t0, 0
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
label1:
	lw $t0, -76($fp)
	sw $t0, -88($fp)
	li $t0, 4
	sw $t0, -92($fp)
	lw $t1, -88($fp)
	lw $t2, -92($fp)
	blt $t1, $t2, label2
	j label3
label2:
	li $t0, 0
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -100($fp)
label4:
	lw $t0, -84($fp)
	sw $t0, -104($fp)
	li $t0, 4
	sw $t0, -108($fp)
	lw $t1, -104($fp)
	lw $t2, -108($fp)
	blt $t1, $t2, label5
	j label6
label5:
	lw $t0, 4($fp)
	sw $t0, -112($fp)
	lw $t0, -76($fp)
	sw $t0, -116($fp)
	li $t0, 4
	sw $t0, -120($fp)
	lw $t0, -116($fp)
	lw $t1, -120($fp)
	mul $t0, $t0, $t1
	sw $t0, -124($fp)
	lw $t0, -84($fp)
	sw $t0, -128($fp)
	lw $t0, -124($fp)
	lw $t1, -128($fp)
	add $t0, $t0, $t1
	sw $t0, -132($fp)
	li $t0, 4
	lw $t1, -132($fp)
	mul $t0, $t0, $t1
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	lw $t1, -112($fp)
	add $t0, $t0, $t1
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	lw $t1, 0($t0)
	sw $t1, -144($fp)
	addi $t0, $fp, -68
	sw $t0, -148($fp)
	lw $t0, -76($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	li $t1, 16
	mul $t0, $t0, $t1
	sw $t0, -156($fp)
	lw $t0, -148($fp)
	lw $t1, -156($fp)
	add $t0, $t0, $t1
	sw $t0, -160($fp)
	lw $t0, -84($fp)
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -168($fp)
	lw $t0, -160($fp)
	lw $t1, -168($fp)
	add $t0, $t0, $t1
	sw $t0, -172($fp)
	lw $t0, -144($fp)
	lw $t1, -172($fp)
	sw $t0, 0($t1)
	lw $t0, -172($fp)
	lw $t1, 0($t0)
	sw $t1, -176($fp)
	lw $t0, -84($fp)
	sw $t0, -180($fp)
	li $t0, 1
	sw $t0, -184($fp)
	lw $t0, -180($fp)
	lw $t1, -184($fp)
	add $t0, $t0, $t1
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -192($fp)
	j label4
label6:
	lw $t0, -76($fp)
	sw $t0, -196($fp)
	li $t0, 1
	sw $t0, -200($fp)
	lw $t0, -196($fp)
	lw $t1, -200($fp)
	add $t0, $t0, $t1
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -208($fp)
	j label1
label3:
	li $t0, 0
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -216($fp)
	li $t0, 0
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -224($fp)
label7:
	lw $t0, -76($fp)
	sw $t0, -228($fp)
	li $t0, 4
	sw $t0, -232($fp)
	lw $t1, -228($fp)
	lw $t2, -232($fp)
	blt $t1, $t2, label8
	j label9
label8:
	li $t0, 0
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -240($fp)
label10:
	lw $t0, -84($fp)
	sw $t0, -244($fp)
	li $t0, 4
	sw $t0, -248($fp)
	lw $t1, -244($fp)
	lw $t2, -248($fp)
	blt $t1, $t2, label11
	j label12
label11:
	addi $t0, $fp, -68
	sw $t0, -252($fp)
	lw $t0, -76($fp)
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	li $t1, 16
	mul $t0, $t0, $t1
	sw $t0, -260($fp)
	lw $t0, -252($fp)
	lw $t1, -260($fp)
	add $t0, $t0, $t1
	sw $t0, -264($fp)
	lw $t0, -84($fp)
	sw $t0, -268($fp)
	li $t0, 4
	lw $t1, -268($fp)
	mul $t0, $t0, $t1
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	lw $t1, -264($fp)
	add $t0, $t0, $t1
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	lw $t1, 0($t0)
	sw $t1, -280($fp)
	li $t0, 1
	sw $t0, -284($fp)
	lw $t1, -280($fp)
	lw $t2, -284($fp)
	beq $t1, $t2, label13
	j label14
label13:
	lw $t0, -84($fp)
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
label14:
	lw $t0, -84($fp)
	sw $t0, -292($fp)
	li $t0, 1
	sw $t0, -296($fp)
	lw $t0, -292($fp)
	lw $t1, -296($fp)
	add $t0, $t0, $t1
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -304($fp)
	j label10
label12:
	lw $t0, -76($fp)
	sw $t0, -308($fp)
	li $t0, 1
	sw $t0, -312($fp)
	lw $t0, -308($fp)
	lw $t1, -312($fp)
	add $t0, $t0, $t1
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -320($fp)
	j label7
label9:
	li $t0, 0
	sw $t0, -324($fp)
	lw $ra, -4($fp)
	lw $v0, -324($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f2:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -468
	li $t0, 0
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
label16:
	lw $t0, -12($fp)
	sw $t0, -20($fp)
	li $t0, 4
	sw $t0, -24($fp)
	lw $t1, -20($fp)
	lw $t2, -24($fp)
	blt $t1, $t2, label17
	j label18
label17:
	lw $t0, 8($fp)
	sw $t0, -28($fp)
	lw $t0, -12($fp)
	sw $t0, -32($fp)
	li $t0, 4
	lw $t1, -32($fp)
	mul $t0, $t0, $t1
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	lw $t1, -28($fp)
	add $t0, $t0, $t1
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	lw $t1, 0($t0)
	sw $t1, -44($fp)
	lw $t1, -44($fp)
	li $t2, 0
	bne $t1, $t2, label23
	j label20
label23:
	lw $t0, 12($fp)
	sw $t0, -48($fp)
	lw $t0, 20($fp)
	sw $t0, -52($fp)
	lw $t0, -12($fp)
	sw $t0, -56($fp)
	lw $t0, -52($fp)
	lw $t1, -56($fp)
	add $t0, $t0, $t1
	sw $t0, -60($fp)
	li $t0, 4
	lw $t1, -60($fp)
	mul $t0, $t0, $t1
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	lw $t1, -48($fp)
	add $t0, $t0, $t1
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	lw $t1, 0($t0)
	sw $t1, -72($fp)
	lw $t1, -72($fp)
	li $t2, 0
	bne $t1, $t2, label22
	j label20
label22:
	lw $t0, 16($fp)
	sw $t0, -76($fp)
	lw $t0, 20($fp)
	sw $t0, -80($fp)
	lw $t0, -12($fp)
	sw $t0, -84($fp)
	lw $t0, -80($fp)
	lw $t1, -84($fp)
	sub $t0, $t0, $t1
	sw $t0, -88($fp)
	li $t0, 3
	sw $t0, -92($fp)
	lw $t0, -88($fp)
	lw $t1, -92($fp)
	add $t0, $t0, $t1
	sw $t0, -96($fp)
	li $t0, 4
	lw $t1, -96($fp)
	mul $t0, $t0, $t1
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	lw $t1, -76($fp)
	add $t0, $t0, $t1
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	lw $t1, 0($t0)
	sw $t1, -108($fp)
	lw $t1, -108($fp)
	li $t2, 0
	bne $t1, $t2, label19
	j label20
label19:
	li $t0, 1
	sw $t0, -112($fp)
	lw $t0, 4($fp)
	sw $t0, -116($fp)
	lw $t0, 20($fp)
	sw $t0, -120($fp)
	li $t0, 4
	sw $t0, -124($fp)
	lw $t0, -120($fp)
	lw $t1, -124($fp)
	mul $t0, $t0, $t1
	sw $t0, -128($fp)
	lw $t0, -12($fp)
	sw $t0, -132($fp)
	lw $t0, -128($fp)
	lw $t1, -132($fp)
	add $t0, $t0, $t1
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -140($fp)
	lw $t0, -116($fp)
	lw $t1, -140($fp)
	add $t0, $t0, $t1
	sw $t0, -144($fp)
	lw $t0, -112($fp)
	lw $t1, -144($fp)
	sw $t0, 0($t1)
	lw $t0, -144($fp)
	lw $t1, 0($t0)
	sw $t1, -148($fp)
	li $t0, 0
	sw $t0, -152($fp)
	lw $t0, 8($fp)
	sw $t0, -156($fp)
	lw $t0, -12($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -164($fp)
	lw $t0, -156($fp)
	lw $t1, -164($fp)
	add $t0, $t0, $t1
	sw $t0, -168($fp)
	lw $t0, -152($fp)
	lw $t1, -168($fp)
	sw $t0, 0($t1)
	lw $t0, -168($fp)
	lw $t1, 0($t0)
	sw $t1, -172($fp)
	li $t0, 0
	sw $t0, -176($fp)
	lw $t0, 12($fp)
	sw $t0, -180($fp)
	lw $t0, 20($fp)
	sw $t0, -184($fp)
	lw $t0, -12($fp)
	sw $t0, -188($fp)
	lw $t0, -184($fp)
	lw $t1, -188($fp)
	add $t0, $t0, $t1
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -196($fp)
	lw $t0, -180($fp)
	lw $t1, -196($fp)
	add $t0, $t0, $t1
	sw $t0, -200($fp)
	lw $t0, -176($fp)
	lw $t1, -200($fp)
	sw $t0, 0($t1)
	lw $t0, -200($fp)
	lw $t1, 0($t0)
	sw $t1, -204($fp)
	li $t0, 0
	sw $t0, -208($fp)
	lw $t0, 16($fp)
	sw $t0, -212($fp)
	lw $t0, 20($fp)
	sw $t0, -216($fp)
	lw $t0, -12($fp)
	sw $t0, -220($fp)
	lw $t0, -216($fp)
	lw $t1, -220($fp)
	sub $t0, $t0, $t1
	sw $t0, -224($fp)
	li $t0, 3
	sw $t0, -228($fp)
	lw $t0, -224($fp)
	lw $t1, -228($fp)
	add $t0, $t0, $t1
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -236($fp)
	lw $t0, -212($fp)
	lw $t1, -236($fp)
	add $t0, $t0, $t1
	sw $t0, -240($fp)
	lw $t0, -208($fp)
	lw $t1, -240($fp)
	sw $t0, 0($t1)
	lw $t0, -240($fp)
	lw $t1, 0($t0)
	sw $t1, -244($fp)
	lw $t0, 20($fp)
	sw $t0, -248($fp)
	li $t0, 3
	sw $t0, -252($fp)
	lw $t1, -248($fp)
	lw $t2, -252($fp)
	beq $t1, $t2, label24
	j label25
label24:
	lw $t0, 24($fp)
	sw $t0, -256($fp)
	li $t0, 1
	sw $t0, -260($fp)
	lw $t0, -256($fp)
	lw $t1, -260($fp)
	add $t0, $t0, $t1
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, 24($fp)
	lw $t0, 24($fp)
	sw $t0, -268($fp)
	lw $t0, 4($fp)
	sw $t0, -272($fp)
	addi $sp, $sp, -4
	lw $t0, -272($fp)
	sw $t0, 0($sp)
	jal f1
	sw $v0, -276($fp)
	addi $sp, $sp, 8
	j label26
label25:
	lw $t0, 24($fp)
	sw $t0, -280($fp)
	lw $t0, 20($fp)
	sw $t0, -284($fp)
	li $t0, 1
	sw $t0, -288($fp)
	lw $t0, -284($fp)
	lw $t1, -288($fp)
	add $t0, $t0, $t1
	sw $t0, -292($fp)
	lw $t0, 16($fp)
	sw $t0, -296($fp)
	lw $t0, 12($fp)
	sw $t0, -300($fp)
	lw $t0, 8($fp)
	sw $t0, -304($fp)
	lw $t0, 4($fp)
	sw $t0, -308($fp)
	addi $sp, $sp, -4
	lw $t0, -280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -308($fp)
	sw $t0, 0($sp)
	jal f2
	sw $v0, -312($fp)
	addi $sp, $sp, 28
	lw $t0, -312($fp)
	sw $t0, 24($fp)
	lw $t0, 24($fp)
	sw $t0, -316($fp)
label26:
	li $t0, 0
	sw $t0, -320($fp)
	lw $t0, 4($fp)
	sw $t0, -324($fp)
	lw $t0, 20($fp)
	sw $t0, -328($fp)
	li $t0, 4
	sw $t0, -332($fp)
	lw $t0, -328($fp)
	lw $t1, -332($fp)
	mul $t0, $t0, $t1
	sw $t0, -336($fp)
	lw $t0, -12($fp)
	sw $t0, -340($fp)
	lw $t0, -336($fp)
	lw $t1, -340($fp)
	add $t0, $t0, $t1
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -348($fp)
	lw $t0, -324($fp)
	lw $t1, -348($fp)
	add $t0, $t0, $t1
	sw $t0, -352($fp)
	lw $t0, -320($fp)
	lw $t1, -352($fp)
	sw $t0, 0($t1)
	lw $t0, -352($fp)
	lw $t1, 0($t0)
	sw $t1, -356($fp)
	li $t0, 1
	sw $t0, -360($fp)
	lw $t0, 12($fp)
	sw $t0, -364($fp)
	lw $t0, 20($fp)
	sw $t0, -368($fp)
	lw $t0, -12($fp)
	sw $t0, -372($fp)
	lw $t0, -368($fp)
	lw $t1, -372($fp)
	add $t0, $t0, $t1
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -380($fp)
	lw $t0, -364($fp)
	lw $t1, -380($fp)
	add $t0, $t0, $t1
	sw $t0, -384($fp)
	lw $t0, -360($fp)
	lw $t1, -384($fp)
	sw $t0, 0($t1)
	lw $t0, -384($fp)
	lw $t1, 0($t0)
	sw $t1, -388($fp)
	li $t0, 1
	sw $t0, -392($fp)
	lw $t0, 16($fp)
	sw $t0, -396($fp)
	lw $t0, 20($fp)
	sw $t0, -400($fp)
	lw $t0, -12($fp)
	sw $t0, -404($fp)
	lw $t0, -400($fp)
	lw $t1, -404($fp)
	sub $t0, $t0, $t1
	sw $t0, -408($fp)
	li $t0, 3
	sw $t0, -412($fp)
	lw $t0, -408($fp)
	lw $t1, -412($fp)
	add $t0, $t0, $t1
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -420($fp)
	lw $t0, -396($fp)
	lw $t1, -420($fp)
	add $t0, $t0, $t1
	sw $t0, -424($fp)
	lw $t0, -392($fp)
	lw $t1, -424($fp)
	sw $t0, 0($t1)
	lw $t0, -424($fp)
	lw $t1, 0($t0)
	sw $t1, -428($fp)
	li $t0, 1
	sw $t0, -432($fp)
	lw $t0, 8($fp)
	sw $t0, -436($fp)
	lw $t0, -12($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -444($fp)
	lw $t0, -436($fp)
	lw $t1, -444($fp)
	add $t0, $t0, $t1
	sw $t0, -448($fp)
	lw $t0, -432($fp)
	lw $t1, -448($fp)
	sw $t0, 0($t1)
	lw $t0, -448($fp)
	lw $t1, 0($t0)
	sw $t1, -452($fp)
label20:
	lw $t0, -12($fp)
	sw $t0, -456($fp)
	li $t0, 1
	sw $t0, -460($fp)
	lw $t0, -456($fp)
	lw $t1, -460($fp)
	add $t0, $t0, $t1
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -468($fp)
	j label16
label18:
	lw $t0, 24($fp)
	sw $t0, -472($fp)
	lw $ra, -4($fp)
	lw $v0, -472($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
main:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -380
	li $t0, 0
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	li $t0, 0
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
label27:
	lw $t0, -156($fp)
	sw $t0, -164($fp)
	li $t0, 16
	sw $t0, -168($fp)
	lw $t1, -164($fp)
	lw $t2, -168($fp)
	blt $t1, $t2, label28
	j label29
label28:
	li $t0, 0
	sw $t0, -172($fp)
	addi $t0, $fp, -68
	sw $t0, -176($fp)
	lw $t0, -156($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -184($fp)
	lw $t0, -176($fp)
	lw $t1, -184($fp)
	add $t0, $t0, $t1
	sw $t0, -188($fp)
	lw $t0, -172($fp)
	lw $t1, -188($fp)
	sw $t0, 0($t1)
	lw $t0, -188($fp)
	lw $t1, 0($t0)
	sw $t1, -192($fp)
	lw $t0, -156($fp)
	sw $t0, -196($fp)
	li $t0, 1
	sw $t0, -200($fp)
	lw $t0, -196($fp)
	lw $t1, -200($fp)
	add $t0, $t0, $t1
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -208($fp)
	j label27
label29:
	li $t0, 0
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -216($fp)
label30:
	lw $t0, -156($fp)
	sw $t0, -220($fp)
	li $t0, 4
	sw $t0, -224($fp)
	lw $t1, -220($fp)
	lw $t2, -224($fp)
	blt $t1, $t2, label31
	j label32
label31:
	li $t0, 1
	sw $t0, -228($fp)
	addi $t0, $fp, -84
	sw $t0, -232($fp)
	lw $t0, -156($fp)
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -240($fp)
	lw $t0, -232($fp)
	lw $t1, -240($fp)
	add $t0, $t0, $t1
	sw $t0, -244($fp)
	lw $t0, -228($fp)
	lw $t1, -244($fp)
	sw $t0, 0($t1)
	lw $t0, -244($fp)
	lw $t1, 0($t0)
	sw $t1, -248($fp)
	lw $t0, -156($fp)
	sw $t0, -252($fp)
	li $t0, 1
	sw $t0, -256($fp)
	lw $t0, -252($fp)
	lw $t1, -256($fp)
	add $t0, $t0, $t1
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -264($fp)
	j label30
label32:
	li $t0, 0
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -272($fp)
label33:
	lw $t0, -156($fp)
	sw $t0, -276($fp)
	li $t0, 7
	sw $t0, -280($fp)
	lw $t1, -276($fp)
	lw $t2, -280($fp)
	blt $t1, $t2, label34
	j label35
label34:
	li $t0, 1
	sw $t0, -284($fp)
	addi $t0, $fp, -112
	sw $t0, -288($fp)
	lw $t0, -156($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -296($fp)
	lw $t0, -288($fp)
	lw $t1, -296($fp)
	add $t0, $t0, $t1
	sw $t0, -300($fp)
	lw $t0, -284($fp)
	lw $t1, -300($fp)
	sw $t0, 0($t1)
	lw $t0, -300($fp)
	lw $t1, 0($t0)
	sw $t1, -304($fp)
	li $t0, 1
	sw $t0, -308($fp)
	addi $t0, $fp, -140
	sw $t0, -312($fp)
	lw $t0, -156($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -320($fp)
	lw $t0, -312($fp)
	lw $t1, -320($fp)
	add $t0, $t0, $t1
	sw $t0, -324($fp)
	lw $t0, -308($fp)
	lw $t1, -324($fp)
	sw $t0, 0($t1)
	lw $t0, -324($fp)
	lw $t1, 0($t0)
	sw $t1, -328($fp)
	lw $t0, -156($fp)
	sw $t0, -332($fp)
	li $t0, 1
	sw $t0, -336($fp)
	lw $t0, -332($fp)
	lw $t1, -336($fp)
	add $t0, $t0, $t1
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -344($fp)
	j label33
label35:
	lw $t0, -148($fp)
	sw $t0, -348($fp)
	li $t0, 0
	sw $t0, -352($fp)
	addi $t0, $fp, -140
	sw $t0, -356($fp)
	addi $t0, $fp, -112
	sw $t0, -360($fp)
	addi $t0, $fp, -84
	sw $t0, -364($fp)
	addi $t0, $fp, -68
	sw $t0, -368($fp)
	addi $sp, $sp, -4
	lw $t0, -348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -368($fp)
	sw $t0, 0($sp)
	jal f2
	sw $v0, -372($fp)
	addi $sp, $sp, 28
	lw $t0, -372($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -376($fp)
	lw $t0, -148($fp)
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -384($fp)
	lw $ra, -4($fp)
	lw $v0, -384($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
