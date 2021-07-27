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
	addi $sp, $sp, -668
	li $t0, 1
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -412($fp)
	li $t0, 0
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	li $t0, 0
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	li $t0, 0
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
label1:
	lw $t0, -412($fp)
	sw $t0, -440($fp)
	lw $t0, 4($fp)
	sw $t0, -444($fp)
	lw $t1, -440($fp)
	lw $t2, -444($fp)
	ble $t1, $t2, label2
	j label3
label2:
	li $t0, 1
	sw $t0, -448($fp)
	addi $t0, $fp, -404
	sw $t0, -452($fp)
	lw $t0, -412($fp)
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -460($fp)
	lw $t0, -452($fp)
	lw $t1, -460($fp)
	add $t0, $t0, $t1
	sw $t0, -464($fp)
	lw $t0, -448($fp)
	lw $t1, -464($fp)
	sw $t0, 0($t1)
	lw $t0, -464($fp)
	lw $t1, 0($t0)
	sw $t1, -468($fp)
	lw $t0, -412($fp)
	sw $t0, -472($fp)
	li $t0, 1
	sw $t0, -476($fp)
	lw $t0, -472($fp)
	lw $t1, -476($fp)
	add $t0, $t0, $t1
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -484($fp)
	j label1
label3:
	li $t0, 1
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -492($fp)
label4:
	lw $t0, -412($fp)
	sw $t0, -496($fp)
	lw $t0, 4($fp)
	sw $t0, -500($fp)
	lw $t1, -496($fp)
	lw $t2, -500($fp)
	ble $t1, $t2, label5
	j label6
label5:
	addi $t0, $fp, -404
	sw $t0, -504($fp)
	lw $t0, -412($fp)
	sw $t0, -508($fp)
	li $t0, 4
	lw $t1, -508($fp)
	mul $t0, $t0, $t1
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	lw $t1, -504($fp)
	add $t0, $t0, $t1
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	lw $t1, 0($t0)
	sw $t1, -520($fp)
	li $t0, 1
	sw $t0, -524($fp)
	lw $t1, -520($fp)
	lw $t2, -524($fp)
	beq $t1, $t2, label7
	j label8
label7:
	lw $t0, -420($fp)
	sw $t0, -528($fp)
	addi $t0, $fp, -404
	sw $t0, -532($fp)
	lw $t0, -412($fp)
	sw $t0, -536($fp)
	li $t0, 4
	lw $t1, -536($fp)
	mul $t0, $t0, $t1
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	lw $t1, -532($fp)
	add $t0, $t0, $t1
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	lw $t1, 0($t0)
	sw $t1, -548($fp)
	lw $t0, -528($fp)
	lw $t1, -548($fp)
	add $t0, $t0, $t1
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -556($fp)
	lw $t0, -420($fp)
	sw $t0, -560($fp)
	lw $t0, 8($fp)
	sw $t0, -564($fp)
	lw $t1, -560($fp)
	lw $t2, -564($fp)
	beq $t1, $t2, label10
	j label11
label10:
	lw $t0, -412($fp)
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -576($fp)
	li $t0, 0
	sw $t0, -580($fp)
	addi $t0, $fp, -404
	sw $t0, -584($fp)
	lw $t0, -412($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -592($fp)
	lw $t0, -584($fp)
	lw $t1, -592($fp)
	add $t0, $t0, $t1
	sw $t0, -596($fp)
	lw $t0, -580($fp)
	lw $t1, -596($fp)
	sw $t0, 0($t1)
	lw $t0, -596($fp)
	lw $t1, 0($t0)
	sw $t1, -600($fp)
	lw $t0, -428($fp)
	sw $t0, -604($fp)
	li $t0, 1
	sw $t0, -608($fp)
	lw $t0, -604($fp)
	lw $t1, -608($fp)
	add $t0, $t0, $t1
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -616($fp)
label11:
	lw $t0, -428($fp)
	sw $t0, -620($fp)
	lw $t0, 4($fp)
	sw $t0, -624($fp)
	lw $t1, -620($fp)
	lw $t2, -624($fp)
	beq $t1, $t2, label13
	j label14
label13:
	lw $t0, -412($fp)
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -632($fp)
	li $t0, 0
	sw $t0, -636($fp)
	lw $ra, -4($fp)
	lw $v0, -636($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label14:
label8:
	lw $t0, -412($fp)
	sw $t0, -640($fp)
	lw $t0, 4($fp)
	sw $t0, -644($fp)
	lw $t1, -640($fp)
	lw $t2, -644($fp)
	beq $t1, $t2, label16
	j label17
label16:
	li $t0, 0
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -652($fp)
label17:
	lw $t0, -412($fp)
	sw $t0, -656($fp)
	li $t0, 1
	sw $t0, -660($fp)
	lw $t0, -656($fp)
	lw $t1, -660($fp)
	add $t0, $t0, $t1
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -668($fp)
	j label4
label6:
	li $t0, 0
	sw $t0, -672($fp)
	lw $ra, -4($fp)
	lw $v0, -672($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
main:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -40
	jal read
	sw $v0, -8($fp)
	addi $sp, $sp, 4
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	jal read
	sw $v0, -20($fp)
	addi $sp, $sp, 4
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	lw $t0, -24($fp)
	sw $t0, -32($fp)
	lw $t0, -12($fp)
	sw $t0, -36($fp)
	addi $sp, $sp, -4
	lw $t0, -32($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -36($fp)
	sw $t0, 0($sp)
	jal f1
	sw $v0, -40($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -44($fp)
	lw $ra, -4($fp)
	lw $v0, -44($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
