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
	addi $sp, $sp, -656
	li $t0, 5
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	li $t0, 4
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	li $t0, 3
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	li $t0, 0
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	li $t0, 0
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	li $t0, 0
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	li $t0, 0
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
label1:
	lw $t0, -276($fp)
	sw $t0, -304($fp)
	lw $t0, -252($fp)
	sw $t0, -308($fp)
	lw $t1, -304($fp)
	lw $t2, -308($fp)
	blt $t1, $t2, label2
	j label3
label2:
	li $t0, 0
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -316($fp)
label4:
	lw $t0, -284($fp)
	sw $t0, -320($fp)
	lw $t0, -260($fp)
	sw $t0, -324($fp)
	lw $t1, -320($fp)
	lw $t2, -324($fp)
	blt $t1, $t2, label5
	j label6
label5:
	li $t0, 0
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -332($fp)
label7:
	lw $t0, -292($fp)
	sw $t0, -336($fp)
	lw $t0, -268($fp)
	sw $t0, -340($fp)
	lw $t1, -336($fp)
	lw $t2, -340($fp)
	blt $t1, $t2, label8
	j label9
label8:
	lw $t0, -276($fp)
	sw $t0, -344($fp)
	li $t0, 1
	sw $t0, -348($fp)
	lw $t0, -344($fp)
	lw $t1, -348($fp)
	add $t0, $t0, $t1
	sw $t0, -352($fp)
	lw $t0, -284($fp)
	sw $t0, -356($fp)
	li $t0, 2
	sw $t0, -360($fp)
	lw $t0, -356($fp)
	lw $t1, -360($fp)
	add $t0, $t0, $t1
	sw $t0, -364($fp)
	lw $t0, -352($fp)
	lw $t1, -364($fp)
	mul $t0, $t0, $t1
	sw $t0, -368($fp)
	lw $t0, -292($fp)
	sw $t0, -372($fp)
	li $t0, 3
	sw $t0, -376($fp)
	lw $t0, -372($fp)
	lw $t1, -376($fp)
	add $t0, $t0, $t1
	sw $t0, -380($fp)
	lw $t0, -368($fp)
	lw $t1, -380($fp)
	mul $t0, $t0, $t1
	sw $t0, -384($fp)
	li $t0, 4
	sw $t0, -388($fp)
	lw $t0, -384($fp)
	lw $t1, -388($fp)
	add $t0, $t0, $t1
	sw $t0, -392($fp)
	addi $t0, $fp, -244
	sw $t0, -396($fp)
	lw $t0, -276($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	li $t1, 48
	mul $t0, $t0, $t1
	sw $t0, -404($fp)
	lw $t0, -396($fp)
	lw $t1, -404($fp)
	add $t0, $t0, $t1
	sw $t0, -408($fp)
	lw $t0, -284($fp)
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	li $t1, 12
	mul $t0, $t0, $t1
	sw $t0, -416($fp)
	lw $t0, -408($fp)
	lw $t1, -416($fp)
	add $t0, $t0, $t1
	sw $t0, -420($fp)
	lw $t0, -292($fp)
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -428($fp)
	lw $t0, -420($fp)
	lw $t1, -428($fp)
	add $t0, $t0, $t1
	sw $t0, -432($fp)
	lw $t0, -392($fp)
	lw $t1, -432($fp)
	sw $t0, 0($t1)
	lw $t0, -432($fp)
	lw $t1, 0($t0)
	sw $t1, -436($fp)
	lw $t0, -292($fp)
	sw $t0, -440($fp)
	li $t0, 1
	sw $t0, -444($fp)
	lw $t0, -440($fp)
	lw $t1, -444($fp)
	add $t0, $t0, $t1
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -452($fp)
	j label7
label9:
	lw $t0, -284($fp)
	sw $t0, -456($fp)
	li $t0, 1
	sw $t0, -460($fp)
	lw $t0, -456($fp)
	lw $t1, -460($fp)
	add $t0, $t0, $t1
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -468($fp)
	j label4
label6:
	lw $t0, -276($fp)
	sw $t0, -472($fp)
	li $t0, 1
	sw $t0, -476($fp)
	lw $t0, -472($fp)
	lw $t1, -476($fp)
	add $t0, $t0, $t1
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -484($fp)
	j label1
label3:
	li $t0, 0
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -492($fp)
	li $t0, 0
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -500($fp)
	li $t0, 0
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -508($fp)
label10:
	lw $t0, -276($fp)
	sw $t0, -512($fp)
	lw $t0, -252($fp)
	sw $t0, -516($fp)
	lw $t1, -512($fp)
	lw $t2, -516($fp)
	blt $t1, $t2, label11
	j label12
label11:
	li $t0, 0
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -524($fp)
label13:
	lw $t0, -284($fp)
	sw $t0, -528($fp)
	lw $t0, -260($fp)
	sw $t0, -532($fp)
	lw $t1, -528($fp)
	lw $t2, -532($fp)
	blt $t1, $t2, label14
	j label15
label14:
	li $t0, 0
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -540($fp)
label16:
	lw $t0, -292($fp)
	sw $t0, -544($fp)
	lw $t0, -268($fp)
	sw $t0, -548($fp)
	lw $t1, -544($fp)
	lw $t2, -548($fp)
	blt $t1, $t2, label17
	j label18
label17:
	addi $t0, $fp, -244
	sw $t0, -552($fp)
	lw $t0, -276($fp)
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	li $t1, 48
	mul $t0, $t0, $t1
	sw $t0, -560($fp)
	lw $t0, -552($fp)
	lw $t1, -560($fp)
	add $t0, $t0, $t1
	sw $t0, -564($fp)
	lw $t0, -284($fp)
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	li $t1, 12
	mul $t0, $t0, $t1
	sw $t0, -572($fp)
	lw $t0, -564($fp)
	lw $t1, -572($fp)
	add $t0, $t0, $t1
	sw $t0, -576($fp)
	lw $t0, -292($fp)
	sw $t0, -580($fp)
	li $t0, 4
	lw $t1, -580($fp)
	mul $t0, $t0, $t1
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	lw $t1, -576($fp)
	add $t0, $t0, $t1
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	lw $t1, 0($t0)
	sw $t1, -592($fp)
	lw $t0, -300($fp)
	sw $t0, -596($fp)
	lw $t0, -592($fp)
	lw $t1, -596($fp)
	add $t0, $t0, $t1
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -604($fp)
	lw $t0, -292($fp)
	sw $t0, -608($fp)
	li $t0, 1
	sw $t0, -612($fp)
	lw $t0, -608($fp)
	lw $t1, -612($fp)
	add $t0, $t0, $t1
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -620($fp)
	j label16
label18:
	lw $t0, -284($fp)
	sw $t0, -624($fp)
	li $t0, 1
	sw $t0, -628($fp)
	lw $t0, -624($fp)
	lw $t1, -628($fp)
	add $t0, $t0, $t1
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -636($fp)
	j label13
label15:
	lw $t0, -276($fp)
	sw $t0, -640($fp)
	li $t0, 1
	sw $t0, -644($fp)
	lw $t0, -640($fp)
	lw $t1, -644($fp)
	add $t0, $t0, $t1
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -652($fp)
	j label10
label12:
	lw $t0, -300($fp)
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -660($fp)
	lw $ra, -4($fp)
	lw $v0, -660($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
