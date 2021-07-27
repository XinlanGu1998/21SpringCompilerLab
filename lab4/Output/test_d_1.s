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
	addi $sp, $sp, -280
	lw $t0, 4($fp)
	sw $t0, -8($fp)
	li $t0, 345
	sw $t0, -12($fp)
	lw $t0, -8($fp)
	lw $t1, -12($fp)
	add $t0, $t0, $t1
	sw $t0, -16($fp)
	li $t0, 345
	sw $t0, -20($fp)
	lw $t0, -16($fp)
	lw $t1, -20($fp)
	sub $t0, $t0, $t1
	sw $t0, -24($fp)
	lw $t0, 4($fp)
	sw $t0, -28($fp)
	lw $t0, -92($fp)
	sw $t0, -32($fp)
	lw $t0, -28($fp)
	lw $t1, -32($fp)
	mul $t0, $t0, $t1
	sw $t0, -36($fp)
	lw $t0, -24($fp)
	lw $t1, -36($fp)
	add $t0, $t0, $t1
	sw $t0, -40($fp)
	lw $t0, 4($fp)
	sw $t0, -44($fp)
	lw $t0, -92($fp)
	sw $t0, -48($fp)
	lw $t0, -44($fp)
	lw $t1, -48($fp)
	mul $t0, $t0, $t1
	sw $t0, -52($fp)
	lw $t0, -40($fp)
	lw $t1, -52($fp)
	sub $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, 4($fp)
	sw $t0, -60($fp)
	lw $t0, 4($fp)
	sw $t0, -64($fp)
	lw $t0, -60($fp)
	lw $t1, -64($fp)
	mul $t0, $t0, $t1
	sw $t0, -68($fp)
	lw $t0, -56($fp)
	lw $t1, -68($fp)
	add $t0, $t0, $t1
	sw $t0, -72($fp)
	lw $t0, 4($fp)
	sw $t0, -76($fp)
	lw $t0, 4($fp)
	sw $t0, -80($fp)
	lw $t0, -76($fp)
	lw $t1, -80($fp)
	mul $t0, $t0, $t1
	sw $t0, -84($fp)
	lw $t0, -72($fp)
	lw $t1, -84($fp)
	sub $t0, $t0, $t1
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	lw $t0, -92($fp)
	sw $t0, -100($fp)
	li $t0, 2
	sw $t0, -104($fp)
	lw $t0, -100($fp)
	lw $t1, -104($fp)
	mul $t0, $t0, $t1
	sw $t0, -108($fp)
	lw $t0, -92($fp)
	sw $t0, -112($fp)
	li $t0, 3
	sw $t0, -116($fp)
	lw $t0, -112($fp)
	lw $t1, -116($fp)
	mul $t0, $t0, $t1
	sw $t0, -120($fp)
	lw $t0, -108($fp)
	lw $t1, -120($fp)
	sub $t0, $t0, $t1
	sw $t0, -124($fp)
	lw $t0, -92($fp)
	sw $t0, -128($fp)
	li $t0, 2
	sw $t0, -132($fp)
	lw $t0, -128($fp)
	lw $t1, -132($fp)
	mul $t0, $t0, $t1
	sw $t0, -136($fp)
	lw $t0, -124($fp)
	lw $t1, -136($fp)
	add $t0, $t0, $t1
	sw $t0, -140($fp)
	li $t0, 34
	sw $t0, -144($fp)
	li $t0, 2
	sw $t0, -148($fp)
	lw $t0, -144($fp)
	lw $t1, -148($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -152($fp)
	lw $t0, -140($fp)
	lw $t1, -152($fp)
	add $t0, $t0, $t1
	sw $t0, -156($fp)
	li $t0, 10
	sw $t0, -160($fp)
	li $t0, 3
	sw $t0, -164($fp)
	lw $t0, -160($fp)
	lw $t1, -164($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -168($fp)
	lw $t0, -156($fp)
	lw $t1, -168($fp)
	add $t0, $t0, $t1
	sw $t0, -172($fp)
	li $t0, 20
	sw $t0, -176($fp)
	li $t0, 1
	sw $t0, -180($fp)
	lw $t0, -176($fp)
	lw $t1, -180($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -184($fp)
	lw $t0, -172($fp)
	lw $t1, -184($fp)
	sub $t0, $t0, $t1
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -192($fp)
	li $t0, 7
	sw $t0, -196($fp)
	li $t0, 6
	sw $t0, -200($fp)
	lw $t0, -196($fp)
	lw $t1, -200($fp)
	add $t0, $t0, $t1
	sw $t0, -204($fp)
	li $t0, 11
	sw $t0, -208($fp)
	li $t0, 1
	sw $t0, -212($fp)
	lw $t0, -208($fp)
	lw $t1, -212($fp)
	mul $t0, $t0, $t1
	sw $t0, -216($fp)
	lw $t0, -204($fp)
	lw $t1, -216($fp)
	sub $t0, $t0, $t1
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -224($fp)
	lw $t0, 4($fp)
	sw $t0, -228($fp)
	li $t0, 4
	sw $t0, -232($fp)
	li $t0, 5
	sw $t0, -236($fp)
	lw $t0, -232($fp)
	lw $t1, -236($fp)
	mul $t0, $t0, $t1
	sw $t0, -240($fp)
	lw $t0, -228($fp)
	lw $t1, -240($fp)
	add $t0, $t0, $t1
	sw $t0, -244($fp)
	li $t0, 10
	sw $t0, -248($fp)
	li $t0, 2
	sw $t0, -252($fp)
	lw $t0, -248($fp)
	lw $t1, -252($fp)
	mul $t0, $t0, $t1
	sw $t0, -256($fp)
	lw $t0, -244($fp)
	lw $t1, -256($fp)
	sub $t0, $t0, $t1
	sw $t0, -260($fp)
	li $t0, 5
	sw $t0, -264($fp)
	li $t0, 6
	sw $t0, -268($fp)
	lw $t0, -264($fp)
	lw $t1, -268($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -272($fp)
	lw $t0, -260($fp)
	lw $t1, -272($fp)
	sub $t0, $t0, $t1
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -280($fp)
	lw $t0, -92($fp)
	sw $t0, -284($fp)
	lw $ra, -4($fp)
	lw $v0, -284($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
main:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -724
	li $t0, 7
	sw $t0, -8($fp)
	li $t0, 6
	sw $t0, -12($fp)
	lw $t0, -8($fp)
	lw $t1, -12($fp)
	add $t0, $t0, $t1
	sw $t0, -16($fp)
	li $t0, 11
	sw $t0, -20($fp)
	li $t0, 1
	sw $t0, -24($fp)
	lw $t0, -20($fp)
	lw $t1, -24($fp)
	mul $t0, $t0, $t1
	sw $t0, -28($fp)
	lw $t0, -16($fp)
	lw $t1, -28($fp)
	sub $t0, $t0, $t1
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	li $t0, 8
	sw $t0, -40($fp)
	li $t0, 4
	sw $t0, -44($fp)
	lw $t0, -40($fp)
	lw $t1, -44($fp)
	sub $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	li $t0, 4
	sw $t0, -56($fp)
	li $t0, 4
	sw $t0, -60($fp)
	lw $t0, -56($fp)
	lw $t1, -60($fp)
	add $t0, $t0, $t1
	sw $t0, -64($fp)
	li $t0, 5
	sw $t0, -68($fp)
	li $t0, 6
	sw $t0, -72($fp)
	lw $t0, -68($fp)
	lw $t1, -72($fp)
	mul $t0, $t0, $t1
	sw $t0, -76($fp)
	li $t0, 3
	sw $t0, -80($fp)
	lw $t0, -76($fp)
	lw $t1, -80($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -84($fp)
	lw $t0, -64($fp)
	lw $t1, -84($fp)
	add $t0, $t0, $t1
	sw $t0, -88($fp)
	li $t0, 4
	sw $t0, -92($fp)
	lw $t0, -88($fp)
	lw $t1, -92($fp)
	sub $t0, $t0, $t1
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	lw $t0, -36($fp)
	sw $t0, -104($fp)
	lw $t0, -52($fp)
	sw $t0, -108($fp)
	lw $t0, -104($fp)
	lw $t1, -108($fp)
	add $t0, $t0, $t1
	sw $t0, -112($fp)
	lw $t0, -100($fp)
	sw $t0, -116($fp)
	lw $t0, -112($fp)
	lw $t1, -116($fp)
	sub $t0, $t0, $t1
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	lw $t0, -36($fp)
	sw $t0, -128($fp)
	lw $t0, -52($fp)
	sw $t0, -132($fp)
	lw $t0, -128($fp)
	lw $t1, -132($fp)
	add $t0, $t0, $t1
	sw $t0, -136($fp)
	lw $t0, -100($fp)
	sw $t0, -140($fp)
	li $t0, 2
	sw $t0, -144($fp)
	lw $t0, -140($fp)
	lw $t1, -144($fp)
	mul $t0, $t0, $t1
	sw $t0, -148($fp)
	lw $t0, -136($fp)
	lw $t1, -148($fp)
	add $t0, $t0, $t1
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	lw $t0, -36($fp)
	sw $t0, -160($fp)
	lw $t0, -52($fp)
	sw $t0, -164($fp)
	lw $t0, -160($fp)
	lw $t1, -164($fp)
	add $t0, $t0, $t1
	sw $t0, -168($fp)
	lw $t0, -100($fp)
	sw $t0, -172($fp)
	lw $t0, -168($fp)
	lw $t1, -172($fp)
	add $t0, $t0, $t1
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	li $t0, 42
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	li $t0, 0
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	lw $t0, -36($fp)
	sw $t0, -200($fp)
	lw $t0, -52($fp)
	sw $t0, -204($fp)
	lw $t0, -200($fp)
	lw $t1, -204($fp)
	add $t0, $t0, $t1
	sw $t0, -208($fp)
	lw $t0, -100($fp)
	sw $t0, -212($fp)
	lw $t0, -208($fp)
	lw $t1, -212($fp)
	add $t0, $t0, $t1
	sw $t0, -216($fp)
	lw $t0, -124($fp)
	sw $t0, -220($fp)
	lw $t0, -216($fp)
	lw $t1, -220($fp)
	sub $t0, $t0, $t1
	sw $t0, -224($fp)
	lw $t0, -156($fp)
	sw $t0, -228($fp)
	lw $t0, -224($fp)
	lw $t1, -228($fp)
	sub $t0, $t0, $t1
	sw $t0, -232($fp)
	lw $t0, -180($fp)
	sw $t0, -236($fp)
	lw $t0, -232($fp)
	lw $t1, -236($fp)
	add $t0, $t0, $t1
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -244($fp)
label1:
	lw $t0, -52($fp)
	sw $t0, -248($fp)
	lw $t0, -36($fp)
	sw $t0, -252($fp)
	lw $t0, -248($fp)
	lw $t1, -252($fp)
	sub $t0, $t0, $t1
	sw $t0, -256($fp)
	lw $t0, -180($fp)
	sw $t0, -260($fp)
	lw $t1, -256($fp)
	lw $t2, -260($fp)
	blt $t1, $t2, label2
	j label3
label2:
	lw $t0, -188($fp)
	sw $t0, -264($fp)
	lw $t0, -196($fp)
	sw $t0, -268($fp)
	li $t0, 4
	sw $t0, -272($fp)
	lw $t0, -268($fp)
	lw $t1, -272($fp)
	mul $t0, $t0, $t1
	sw $t0, -276($fp)
	lw $t0, -264($fp)
	lw $t1, -276($fp)
	add $t0, $t0, $t1
	sw $t0, -280($fp)
	li $t0, 3
	sw $t0, -284($fp)
	lw $t0, -280($fp)
	lw $t1, -284($fp)
	add $t0, $t0, $t1
	sw $t0, -288($fp)
	li $t0, 4
	sw $t0, -292($fp)
	lw $t0, -288($fp)
	lw $t1, -292($fp)
	add $t0, $t0, $t1
	sw $t0, -296($fp)
	li $t0, 5
	sw $t0, -300($fp)
	lw $t0, -296($fp)
	lw $t1, -300($fp)
	add $t0, $t0, $t1
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -308($fp)
	lw $t0, -180($fp)
	sw $t0, -312($fp)
	lw $t0, -52($fp)
	sw $t0, -316($fp)
	addi $sp, $sp, -4
	lw $t0, -316($fp)
	sw $t0, 0($sp)
	jal f1
	sw $v0, -320($fp)
	addi $sp, $sp, 8
	lw $t0, -312($fp)
	lw $t1, -320($fp)
	sub $t0, $t0, $t1
	sw $t0, -324($fp)
	lw $t0, -36($fp)
	sw $t0, -328($fp)
	li $t0, 2
	sw $t0, -332($fp)
	lw $t0, -328($fp)
	lw $t1, -332($fp)
	mul $t0, $t0, $t1
	sw $t0, -336($fp)
	lw $t0, -324($fp)
	lw $t1, -336($fp)
	add $t0, $t0, $t1
	sw $t0, -340($fp)
	lw $t0, -100($fp)
	sw $t0, -344($fp)
	lw $t0, -124($fp)
	sw $t0, -348($fp)
	lw $t0, -344($fp)
	lw $t1, -348($fp)
	mul $t0, $t0, $t1
	sw $t0, -352($fp)
	lw $t0, -340($fp)
	lw $t1, -352($fp)
	add $t0, $t0, $t1
	sw $t0, -356($fp)
	lw $t0, -180($fp)
	sw $t0, -360($fp)
	lw $t0, -356($fp)
	lw $t1, -360($fp)
	sub $t0, $t0, $t1
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	lw $t0, -196($fp)
	sw $t0, -376($fp)
	li $t0, 1
	sw $t0, -380($fp)
	lw $t0, -376($fp)
	lw $t1, -380($fp)
	add $t0, $t0, $t1
	sw $t0, -384($fp)
	li $t0, 0
	sw $t0, -388($fp)
	lw $t0, -384($fp)
	lw $t1, -388($fp)
	add $t0, $t0, $t1
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -396($fp)
	lw $t0, -196($fp)
	sw $t0, -400($fp)
	li $t0, 3
	sw $t0, -404($fp)
	lw $t0, -400($fp)
	lw $t1, -404($fp)
	add $t0, $t0, $t1
	sw $t0, -408($fp)
	li $t0, 1
	sw $t0, -412($fp)
	lw $t0, -408($fp)
	lw $t1, -412($fp)
	add $t0, $t0, $t1
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -420($fp)
	lw $t0, -196($fp)
	sw $t0, -424($fp)
	li $t0, 2
	sw $t0, -428($fp)
	lw $t0, -424($fp)
	lw $t1, -428($fp)
	sub $t0, $t0, $t1
	sw $t0, -432($fp)
	li $t0, 2
	sw $t0, -436($fp)
	lw $t0, -432($fp)
	lw $t1, -436($fp)
	sub $t0, $t0, $t1
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -444($fp)
	lw $t0, -196($fp)
	sw $t0, -448($fp)
	lw $t0, -196($fp)
	sw $t0, -452($fp)
	li $t0, 3
	sw $t0, -456($fp)
	lw $t0, -452($fp)
	lw $t1, -456($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -460($fp)
	li $t0, 3
	sw $t0, -464($fp)
	lw $t0, -460($fp)
	lw $t1, -464($fp)
	mul $t0, $t0, $t1
	sw $t0, -468($fp)
	lw $t0, -448($fp)
	lw $t1, -468($fp)
	sub $t0, $t0, $t1
	sw $t0, -472($fp)
	lw $t0, -36($fp)
	sw $t0, -476($fp)
	lw $t0, -36($fp)
	sw $t0, -480($fp)
	addi $sp, $sp, -4
	lw $t0, -480($fp)
	sw $t0, 0($sp)
	jal f1
	sw $v0, -484($fp)
	addi $sp, $sp, 8
	lw $t0, -476($fp)
	lw $t1, -484($fp)
	sub $t0, $t0, $t1
	sw $t0, -488($fp)
	lw $t0, -52($fp)
	sw $t0, -492($fp)
	lw $t0, -488($fp)
	lw $t1, -492($fp)
	add $t0, $t0, $t1
	sw $t0, -496($fp)
	lw $t0, -52($fp)
	sw $t0, -500($fp)
	lw $t0, -496($fp)
	lw $t1, -500($fp)
	sub $t0, $t0, $t1
	sw $t0, -504($fp)
	lw $t0, -100($fp)
	sw $t0, -508($fp)
	lw $t0, -504($fp)
	lw $t1, -508($fp)
	add $t0, $t0, $t1
	sw $t0, -512($fp)
	lw $t0, -100($fp)
	sw $t0, -516($fp)
	lw $t0, -512($fp)
	lw $t1, -516($fp)
	sub $t0, $t0, $t1
	sw $t0, -520($fp)
	lw $t1, -472($fp)
	lw $t2, -520($fp)
	beq $t1, $t2, label4
	j label5
label4:
	lw $t0, -180($fp)
	sw $t0, -524($fp)
	li $t0, 1
	sw $t0, -528($fp)
	lw $t0, -524($fp)
	lw $t1, -528($fp)
	add $t0, $t0, $t1
	sw $t0, -532($fp)
	li $t0, 1
	sw $t0, -536($fp)
	lw $t0, -532($fp)
	lw $t1, -536($fp)
	add $t0, $t0, $t1
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -544($fp)
label5:
	lw $t0, -180($fp)
	sw $t0, -548($fp)
	li $t0, 2
	sw $t0, -552($fp)
	lw $t0, -548($fp)
	lw $t1, -552($fp)
	sub $t0, $t0, $t1
	sw $t0, -556($fp)
	li $t0, 1
	sw $t0, -560($fp)
	lw $t0, -556($fp)
	lw $t1, -560($fp)
	add $t0, $t0, $t1
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -568($fp)
	j label1
label3:
	lw $t0, -188($fp)
	sw $t0, -572($fp)
	li $t0, 2
	sw $t0, -576($fp)
	lw $t0, -572($fp)
	lw $t1, -576($fp)
	sub $t0, $t0, $t1
	sw $t0, -580($fp)
	li $t0, 3
	sw $t0, -584($fp)
	lw $t0, -580($fp)
	lw $t1, -584($fp)
	add $t0, $t0, $t1
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -596($fp)
	lw $t0, -592($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -188($fp)
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -608($fp)
label7:
	lw $t0, -188($fp)
	sw $t0, -612($fp)
	li $t0, 1200
	sw $t0, -616($fp)
	li $t0, 22
	sw $t0, -620($fp)
	lw $t0, -616($fp)
	lw $t1, -620($fp)
	add $t0, $t0, $t1
	sw $t0, -624($fp)
	lw $t1, -612($fp)
	lw $t2, -624($fp)
	bge $t1, $t2, label8
	j label9
label8:
	lw $t0, -188($fp)
	sw $t0, -628($fp)
	li $t0, 1024
	sw $t0, -632($fp)
	lw $t0, -628($fp)
	lw $t1, -632($fp)
	add $t0, $t0, $t1
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -640($fp)
	lw $t0, -188($fp)
	sw $t0, -644($fp)
	addi $sp, $sp, -4
	lw $t0, -644($fp)
	sw $t0, 0($sp)
	jal f1
	sw $v0, -648($fp)
	addi $sp, $sp, 8
	li $t0, 1
	sw $t0, -652($fp)
	lw $t0, -648($fp)
	lw $t1, -652($fp)
	sub $t0, $t0, $t1
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -660($fp)
	lw $t0, -188($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -668($fp)
	j label7
label9:
	lw $t0, -188($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -36($fp)
	sw $t0, -676($fp)
	lw $t0, -52($fp)
	sw $t0, -680($fp)
	lw $t0, -676($fp)
	lw $t1, -680($fp)
	add $t0, $t0, $t1
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -688($fp)
	lw $t0, -36($fp)
	sw $t0, -692($fp)
	lw $t0, -52($fp)
	sw $t0, -696($fp)
	lw $t0, -692($fp)
	lw $t1, -696($fp)
	add $t0, $t0, $t1
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -704($fp)
	lw $t0, -36($fp)
	sw $t0, -708($fp)
	lw $t0, -52($fp)
	sw $t0, -712($fp)
	lw $t0, -708($fp)
	lw $t1, -712($fp)
	add $t0, $t0, $t1
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -720($fp)
	lw $t0, -100($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -728($fp)
	lw $ra, -4($fp)
	lw $v0, -728($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
