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
	addi $sp, $sp, -120
	li $t0, 0
	sw $t0, -8($fp)
	li $t0, 0
	sw $t0, -12($fp)
	li $t0, 0
	sw $t0, -16($fp)
	lw $t0, 4($fp)
	sw $t0, -20($fp)
	li $t0, 0
	sw $t0, -24($fp)
	lw $t1, -20($fp)
	lw $t2, -24($fp)
	bgt $t1, $t2, label11
	j label12
label11:
	li $t0, 1
	sw $t0, -16($fp)
label12:
	lw $t1, -16($fp)
	li $t2, 0
	bne $t1, $t2, label10
	j label8
label10:
	li $t0, 0
	sw $t0, -28($fp)
	lw $t0, 8($fp)
	sw $t0, -32($fp)
	li $t0, 0
	sw $t0, -36($fp)
	lw $t1, -32($fp)
	lw $t2, -36($fp)
	bgt $t1, $t2, label13
	j label14
label13:
	li $t0, 1
	sw $t0, -28($fp)
label14:
	lw $t1, -28($fp)
	li $t2, 0
	bne $t1, $t2, label9
	j label8
label9:
	li $t0, 0
	sw $t0, -40($fp)
	lw $t0, 4($fp)
	sw $t0, -44($fp)
	li $t0, 2147483647
	sw $t0, -48($fp)
	lw $t0, 8($fp)
	sw $t0, -52($fp)
	lw $t0, -48($fp)
	lw $t1, -52($fp)
	sub $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t1, -44($fp)
	lw $t2, -56($fp)
	bgt $t1, $t2, label15
	j label16
label15:
	li $t0, 1
	sw $t0, -40($fp)
label16:
	lw $t1, -40($fp)
	li $t2, 0
	bne $t1, $t2, label7
	j label8
label7:
	li $t0, 1
	sw $t0, -12($fp)
label8:
	lw $t1, -12($fp)
	li $t2, 0
	bne $t1, $t2, label4
	j label6
label6:
	li $t0, 0
	sw $t0, -60($fp)
	li $t0, 0
	sw $t0, -64($fp)
	lw $t0, 4($fp)
	sw $t0, -68($fp)
	li $t0, 0
	sw $t0, -72($fp)
	lw $t1, -68($fp)
	lw $t2, -72($fp)
	blt $t1, $t2, label21
	j label22
label21:
	li $t0, 1
	sw $t0, -64($fp)
label22:
	lw $t1, -64($fp)
	li $t2, 0
	bne $t1, $t2, label20
	j label18
label20:
	li $t0, 0
	sw $t0, -76($fp)
	lw $t0, 8($fp)
	sw $t0, -80($fp)
	li $t0, 0
	sw $t0, -84($fp)
	lw $t1, -80($fp)
	lw $t2, -84($fp)
	blt $t1, $t2, label23
	j label24
label23:
	li $t0, 1
	sw $t0, -76($fp)
label24:
	lw $t1, -76($fp)
	li $t2, 0
	bne $t1, $t2, label19
	j label18
label19:
	li $t0, 0
	sw $t0, -88($fp)
	lw $t0, 4($fp)
	sw $t0, -92($fp)
	li $t0, 2147483647
	sw $t0, -96($fp)
	li $t0, 0
	lw $t1, -96($fp)
	sub $t0, $t0, $t1
	sw $t0, -100($fp)
	lw $t0, 8($fp)
	sw $t0, -104($fp)
	lw $t0, -100($fp)
	lw $t1, -104($fp)
	sub $t0, $t0, $t1
	sw $t0, -108($fp)
	lw $t1, -92($fp)
	lw $t2, -108($fp)
	blt $t1, $t2, label25
	j label26
label25:
	li $t0, 1
	sw $t0, -88($fp)
label26:
	lw $t1, -88($fp)
	li $t2, 0
	bne $t1, $t2, label17
	j label18
label17:
	li $t0, 1
	sw $t0, -60($fp)
label18:
	lw $t1, -60($fp)
	li $t2, 0
	bne $t1, $t2, label4
	j label5
label4:
	li $t0, 1
	sw $t0, -8($fp)
label5:
	lw $t1, -8($fp)
	li $t2, 0
	bne $t1, $t2, label1
	j label2
label1:
	lw $t0, 4($fp)
	sw $t0, -112($fp)
	lw $ra, -4($fp)
	lw $v0, -112($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label2:
	lw $t0, 4($fp)
	sw $t0, -116($fp)
	lw $t0, 8($fp)
	sw $t0, -120($fp)
	lw $t0, -116($fp)
	lw $t1, -120($fp)
	add $t0, $t0, $t1
	sw $t0, -124($fp)
	lw $ra, -4($fp)
	lw $v0, -124($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f2:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -116
	li $t0, 0
	sw $t0, -8($fp)
	li $t0, 0
	sw $t0, -12($fp)
	lw $t0, 4($fp)
	sw $t0, -16($fp)
	li $t0, 0
	sw $t0, -20($fp)
	lw $t1, -16($fp)
	lw $t2, -20($fp)
	bgt $t1, $t2, label35
	j label36
label35:
	li $t0, 1
	sw $t0, -12($fp)
label36:
	lw $t1, -12($fp)
	li $t2, 0
	bne $t1, $t2, label34
	j label32
label34:
	li $t0, 0
	sw $t0, -24($fp)
	lw $t0, 8($fp)
	sw $t0, -28($fp)
	li $t0, 0
	sw $t0, -32($fp)
	lw $t1, -28($fp)
	lw $t2, -32($fp)
	blt $t1, $t2, label37
	j label38
label37:
	li $t0, 1
	sw $t0, -24($fp)
label38:
	lw $t1, -24($fp)
	li $t2, 0
	bne $t1, $t2, label33
	j label32
label33:
	li $t0, 0
	sw $t0, -36($fp)
	lw $t0, 4($fp)
	sw $t0, -40($fp)
	li $t0, 2147483647
	sw $t0, -44($fp)
	lw $t0, 8($fp)
	sw $t0, -48($fp)
	lw $t0, -44($fp)
	lw $t1, -48($fp)
	add $t0, $t0, $t1
	sw $t0, -52($fp)
	lw $t1, -40($fp)
	lw $t2, -52($fp)
	bgt $t1, $t2, label39
	j label40
label39:
	li $t0, 1
	sw $t0, -36($fp)
label40:
	lw $t1, -36($fp)
	li $t2, 0
	bne $t1, $t2, label31
	j label32
label31:
	li $t0, 1
	sw $t0, -8($fp)
label32:
	lw $t1, -8($fp)
	li $t2, 0
	bne $t1, $t2, label27
	j label30
label30:
	li $t0, 0
	sw $t0, -56($fp)
	li $t0, 0
	sw $t0, -60($fp)
	lw $t0, 4($fp)
	sw $t0, -64($fp)
	li $t0, 0
	sw $t0, -68($fp)
	lw $t1, -64($fp)
	lw $t2, -68($fp)
	blt $t1, $t2, label45
	j label46
label45:
	li $t0, 1
	sw $t0, -60($fp)
label46:
	lw $t1, -60($fp)
	li $t2, 0
	bne $t1, $t2, label44
	j label42
label44:
	li $t0, 0
	sw $t0, -72($fp)
	lw $t0, 8($fp)
	sw $t0, -76($fp)
	li $t0, 0
	sw $t0, -80($fp)
	lw $t1, -76($fp)
	lw $t2, -80($fp)
	bgt $t1, $t2, label47
	j label48
label47:
	li $t0, 1
	sw $t0, -72($fp)
label48:
	lw $t1, -72($fp)
	li $t2, 0
	bne $t1, $t2, label43
	j label42
label43:
	li $t0, 0
	sw $t0, -84($fp)
	lw $t0, 4($fp)
	sw $t0, -88($fp)
	li $t0, 2147483647
	sw $t0, -92($fp)
	li $t0, 0
	lw $t1, -92($fp)
	sub $t0, $t0, $t1
	sw $t0, -96($fp)
	lw $t0, 8($fp)
	sw $t0, -100($fp)
	lw $t0, -96($fp)
	lw $t1, -100($fp)
	add $t0, $t0, $t1
	sw $t0, -104($fp)
	lw $t1, -88($fp)
	lw $t2, -104($fp)
	blt $t1, $t2, label49
	j label50
label49:
	li $t0, 1
	sw $t0, -84($fp)
label50:
	lw $t1, -84($fp)
	li $t2, 0
	bne $t1, $t2, label41
	j label42
label41:
	li $t0, 1
	sw $t0, -56($fp)
label42:
	lw $t1, -56($fp)
	li $t2, 0
	bne $t1, $t2, label27
	j label28
label27:
	lw $t0, 4($fp)
	sw $t0, -108($fp)
	lw $ra, -4($fp)
	lw $v0, -108($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label28:
	lw $t0, 4($fp)
	sw $t0, -112($fp)
	lw $t0, 8($fp)
	sw $t0, -116($fp)
	lw $t0, -112($fp)
	lw $t1, -116($fp)
	sub $t0, $t0, $t1
	sw $t0, -120($fp)
	lw $ra, -4($fp)
	lw $v0, -120($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f3:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -232
	li $t0, 0
	sw $t0, -8($fp)
	li $t0, 0
	sw $t0, -12($fp)
	li $t0, 0
	sw $t0, -16($fp)
	lw $t0, 4($fp)
	sw $t0, -20($fp)
	li $t0, 0
	sw $t0, -24($fp)
	lw $t1, -20($fp)
	lw $t2, -24($fp)
	bgt $t1, $t2, label63
	j label64
label63:
	li $t0, 1
	sw $t0, -16($fp)
label64:
	lw $t1, -16($fp)
	li $t2, 0
	bne $t1, $t2, label62
	j label60
label62:
	li $t0, 0
	sw $t0, -28($fp)
	lw $t0, 8($fp)
	sw $t0, -32($fp)
	li $t0, 0
	sw $t0, -36($fp)
	lw $t1, -32($fp)
	lw $t2, -36($fp)
	bgt $t1, $t2, label65
	j label66
label65:
	li $t0, 1
	sw $t0, -28($fp)
label66:
	lw $t1, -28($fp)
	li $t2, 0
	bne $t1, $t2, label61
	j label60
label61:
	li $t0, 0
	sw $t0, -40($fp)
	lw $t0, 4($fp)
	sw $t0, -44($fp)
	li $t0, 2147483647
	sw $t0, -48($fp)
	lw $t0, 8($fp)
	sw $t0, -52($fp)
	lw $t0, -48($fp)
	lw $t1, -52($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -56($fp)
	lw $t1, -44($fp)
	lw $t2, -56($fp)
	bgt $t1, $t2, label67
	j label68
label67:
	li $t0, 1
	sw $t0, -40($fp)
label68:
	lw $t1, -40($fp)
	li $t2, 0
	bne $t1, $t2, label59
	j label60
label59:
	li $t0, 1
	sw $t0, -12($fp)
label60:
	lw $t1, -12($fp)
	li $t2, 0
	bne $t1, $t2, label54
	j label58
label58:
	li $t0, 0
	sw $t0, -60($fp)
	li $t0, 0
	sw $t0, -64($fp)
	lw $t0, 4($fp)
	sw $t0, -68($fp)
	li $t0, 0
	sw $t0, -72($fp)
	lw $t1, -68($fp)
	lw $t2, -72($fp)
	bgt $t1, $t2, label73
	j label74
label73:
	li $t0, 1
	sw $t0, -64($fp)
label74:
	lw $t1, -64($fp)
	li $t2, 0
	bne $t1, $t2, label72
	j label70
label72:
	li $t0, 0
	sw $t0, -76($fp)
	lw $t0, 8($fp)
	sw $t0, -80($fp)
	li $t0, 0
	sw $t0, -84($fp)
	lw $t1, -80($fp)
	lw $t2, -84($fp)
	ble $t1, $t2, label75
	j label76
label75:
	li $t0, 1
	sw $t0, -76($fp)
label76:
	lw $t1, -76($fp)
	li $t2, 0
	bne $t1, $t2, label71
	j label70
label71:
	li $t0, 0
	sw $t0, -88($fp)
	lw $t0, 8($fp)
	sw $t0, -92($fp)
	li $t0, 2147483647
	sw $t0, -96($fp)
	lw $t0, 4($fp)
	sw $t0, -100($fp)
	lw $t0, -96($fp)
	lw $t1, -100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -104($fp)
	li $t0, 0
	lw $t1, -104($fp)
	sub $t0, $t0, $t1
	sw $t0, -108($fp)
	lw $t1, -92($fp)
	lw $t2, -108($fp)
	blt $t1, $t2, label77
	j label78
label77:
	li $t0, 1
	sw $t0, -88($fp)
label78:
	lw $t1, -88($fp)
	li $t2, 0
	bne $t1, $t2, label69
	j label70
label69:
	li $t0, 1
	sw $t0, -60($fp)
label70:
	lw $t1, -60($fp)
	li $t2, 0
	bne $t1, $t2, label54
	j label57
label57:
	li $t0, 0
	sw $t0, -112($fp)
	li $t0, 0
	sw $t0, -116($fp)
	lw $t0, 4($fp)
	sw $t0, -120($fp)
	li $t0, 0
	sw $t0, -124($fp)
	lw $t1, -120($fp)
	lw $t2, -124($fp)
	ble $t1, $t2, label83
	j label84
label83:
	li $t0, 1
	sw $t0, -116($fp)
label84:
	lw $t1, -116($fp)
	li $t2, 0
	bne $t1, $t2, label82
	j label80
label82:
	li $t0, 0
	sw $t0, -128($fp)
	lw $t0, 8($fp)
	sw $t0, -132($fp)
	li $t0, 0
	sw $t0, -136($fp)
	lw $t1, -132($fp)
	lw $t2, -136($fp)
	bgt $t1, $t2, label85
	j label86
label85:
	li $t0, 1
	sw $t0, -128($fp)
label86:
	lw $t1, -128($fp)
	li $t2, 0
	bne $t1, $t2, label81
	j label80
label81:
	li $t0, 0
	sw $t0, -140($fp)
	lw $t0, 4($fp)
	sw $t0, -144($fp)
	li $t0, 2147483647
	sw $t0, -148($fp)
	lw $t0, 8($fp)
	sw $t0, -152($fp)
	lw $t0, -148($fp)
	lw $t1, -152($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -156($fp)
	li $t0, 0
	lw $t1, -156($fp)
	sub $t0, $t0, $t1
	sw $t0, -160($fp)
	lw $t1, -144($fp)
	lw $t2, -160($fp)
	blt $t1, $t2, label87
	j label88
label87:
	li $t0, 1
	sw $t0, -140($fp)
label88:
	lw $t1, -140($fp)
	li $t2, 0
	bne $t1, $t2, label79
	j label80
label79:
	li $t0, 1
	sw $t0, -112($fp)
label80:
	lw $t1, -112($fp)
	li $t2, 0
	bne $t1, $t2, label54
	j label56
label56:
	li $t0, 0
	sw $t0, -164($fp)
	li $t0, 0
	sw $t0, -168($fp)
	lw $t0, 4($fp)
	sw $t0, -172($fp)
	li $t0, 0
	sw $t0, -176($fp)
	lw $t1, -172($fp)
	lw $t2, -176($fp)
	ble $t1, $t2, label94
	j label95
label94:
	li $t0, 1
	sw $t0, -168($fp)
label95:
	lw $t1, -168($fp)
	li $t2, 0
	bne $t1, $t2, label93
	j label90
label93:
	li $t0, 0
	sw $t0, -180($fp)
	lw $t0, 8($fp)
	sw $t0, -184($fp)
	li $t0, 0
	sw $t0, -188($fp)
	lw $t1, -184($fp)
	lw $t2, -188($fp)
	ble $t1, $t2, label96
	j label97
label96:
	li $t0, 1
	sw $t0, -180($fp)
label97:
	lw $t1, -180($fp)
	li $t2, 0
	bne $t1, $t2, label92
	j label90
label92:
	li $t0, 0
	sw $t0, -192($fp)
	lw $t0, 4($fp)
	sw $t0, -196($fp)
	li $t0, 0
	sw $t0, -200($fp)
	lw $t1, -196($fp)
	lw $t2, -200($fp)
	bne $t1, $t2, label98
	j label99
label98:
	li $t0, 1
	sw $t0, -192($fp)
label99:
	lw $t1, -192($fp)
	li $t2, 0
	bne $t1, $t2, label91
	j label90
label91:
	li $t0, 0
	sw $t0, -204($fp)
	lw $t0, 8($fp)
	sw $t0, -208($fp)
	li $t0, 2147483647
	sw $t0, -212($fp)
	lw $t0, 4($fp)
	sw $t0, -216($fp)
	lw $t0, -212($fp)
	lw $t1, -216($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -220($fp)
	lw $t1, -208($fp)
	lw $t2, -220($fp)
	blt $t1, $t2, label100
	j label101
label100:
	li $t0, 1
	sw $t0, -204($fp)
label101:
	lw $t1, -204($fp)
	li $t2, 0
	bne $t1, $t2, label89
	j label90
label89:
	li $t0, 1
	sw $t0, -164($fp)
label90:
	lw $t1, -164($fp)
	li $t2, 0
	bne $t1, $t2, label54
	j label55
label54:
	li $t0, 1
	sw $t0, -8($fp)
label55:
	lw $t1, -8($fp)
	li $t2, 0
	bne $t1, $t2, label51
	j label52
label51:
	lw $t0, 4($fp)
	sw $t0, -224($fp)
	lw $ra, -4($fp)
	lw $v0, -224($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label52:
	lw $t0, 4($fp)
	sw $t0, -228($fp)
	lw $t0, 8($fp)
	sw $t0, -232($fp)
	lw $t0, -228($fp)
	lw $t1, -232($fp)
	mul $t0, $t0, $t1
	sw $t0, -236($fp)
	lw $ra, -4($fp)
	lw $v0, -236($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f4:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -68
	li $t0, 0
	sw $t0, -8($fp)
	li $t0, 0
	sw $t0, -12($fp)
	lw $t0, 8($fp)
	sw $t0, -16($fp)
	li $t0, 0
	sw $t0, -20($fp)
	lw $t1, -16($fp)
	lw $t2, -20($fp)
	beq $t1, $t2, label108
	j label109
label108:
	li $t0, 1
	sw $t0, -12($fp)
label109:
	lw $t1, -12($fp)
	li $t2, 0
	bne $t1, $t2, label105
	j label107
label107:
	li $t0, 0
	sw $t0, -24($fp)
	li $t0, 0
	sw $t0, -28($fp)
	lw $t0, 4($fp)
	sw $t0, -32($fp)
	li $t0, 2147483647
	sw $t0, -36($fp)
	li $t0, 0
	lw $t1, -36($fp)
	sub $t0, $t0, $t1
	sw $t0, -40($fp)
	lw $t1, -32($fp)
	lw $t2, -40($fp)
	beq $t1, $t2, label113
	j label114
label113:
	li $t0, 1
	sw $t0, -28($fp)
label114:
	lw $t1, -28($fp)
	li $t2, 0
	bne $t1, $t2, label112
	j label111
label112:
	li $t0, 0
	sw $t0, -44($fp)
	lw $t0, 8($fp)
	sw $t0, -48($fp)
	li $t0, 1
	sw $t0, -52($fp)
	li $t0, 0
	lw $t1, -52($fp)
	sub $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t1, -48($fp)
	lw $t2, -56($fp)
	beq $t1, $t2, label115
	j label116
label115:
	li $t0, 1
	sw $t0, -44($fp)
label116:
	lw $t1, -44($fp)
	li $t2, 0
	bne $t1, $t2, label110
	j label111
label110:
	li $t0, 1
	sw $t0, -24($fp)
label111:
	lw $t1, -24($fp)
	li $t2, 0
	bne $t1, $t2, label105
	j label106
label105:
	li $t0, 1
	sw $t0, -8($fp)
label106:
	lw $t1, -8($fp)
	li $t2, 0
	bne $t1, $t2, label102
	j label103
label102:
	lw $t0, 4($fp)
	sw $t0, -60($fp)
	lw $ra, -4($fp)
	lw $v0, -60($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label103:
	lw $t0, 4($fp)
	sw $t0, -64($fp)
	lw $t0, 8($fp)
	sw $t0, -68($fp)
	lw $t0, -64($fp)
	lw $t1, -68($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -72($fp)
	lw $ra, -4($fp)
	lw $v0, -72($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f5:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -24
	lw $t0, 4($fp)
	sw $t0, -8($fp)
	li $t0, 0
	sw $t0, -12($fp)
	lw $t1, -8($fp)
	lw $t2, -12($fp)
	blt $t1, $t2, label117
	j label120
label120:
	lw $t0, 4($fp)
	sw $t0, -16($fp)
	lw $t0, 8($fp)
	sw $t0, -20($fp)
	lw $t1, -16($fp)
	lw $t2, -20($fp)
	bge $t1, $t2, label117
	j label118
label117:
	li $t0, 0
	sw $t0, -24($fp)
	lw $ra, -4($fp)
	lw $v0, -24($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label118:
	lw $t0, 4($fp)
	sw $t0, -28($fp)
	lw $ra, -4($fp)
	lw $v0, -28($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f6:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -13960
	li $t0, 48878
	sw $t0, -328($fp)
	addi $t0, $fp, -40
	sw $t0, -332($fp)
	li $t0, 0
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -340($fp)
	lw $t0, -332($fp)
	lw $t1, -340($fp)
	add $t0, $t0, $t1
	sw $t0, -344($fp)
	lw $t0, -328($fp)
	lw $t1, -344($fp)
	sw $t0, 0($t1)
	lw $t0, -344($fp)
	lw $t1, 0($t0)
	sw $t1, -348($fp)
	li $t0, 63831
	sw $t0, -352($fp)
	addi $t0, $fp, -40
	sw $t0, -356($fp)
	li $t0, 1
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -364($fp)
	lw $t0, -356($fp)
	lw $t1, -364($fp)
	add $t0, $t0, $t1
	sw $t0, -368($fp)
	lw $t0, -352($fp)
	lw $t1, -368($fp)
	sw $t0, 0($t1)
	lw $t0, -368($fp)
	lw $t1, 0($t0)
	sw $t1, -372($fp)
	li $t0, 39291
	sw $t0, -376($fp)
	addi $t0, $fp, -40
	sw $t0, -380($fp)
	li $t0, 2
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -388($fp)
	lw $t0, -380($fp)
	lw $t1, -388($fp)
	add $t0, $t0, $t1
	sw $t0, -392($fp)
	lw $t0, -376($fp)
	lw $t1, -392($fp)
	sw $t0, 0($t1)
	lw $t0, -392($fp)
	lw $t1, 0($t0)
	sw $t1, -396($fp)
	li $t0, 47433
	sw $t0, -400($fp)
	addi $t0, $fp, -40
	sw $t0, -404($fp)
	li $t0, 3
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -412($fp)
	lw $t0, -404($fp)
	lw $t1, -412($fp)
	add $t0, $t0, $t1
	sw $t0, -416($fp)
	lw $t0, -400($fp)
	lw $t1, -416($fp)
	sw $t0, 0($t1)
	lw $t0, -416($fp)
	lw $t1, 0($t0)
	sw $t1, -420($fp)
	li $t0, 44949
	sw $t0, -424($fp)
	addi $t0, $fp, -40
	sw $t0, -428($fp)
	li $t0, 4
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -436($fp)
	lw $t0, -428($fp)
	lw $t1, -436($fp)
	add $t0, $t0, $t1
	sw $t0, -440($fp)
	lw $t0, -424($fp)
	lw $t1, -440($fp)
	sw $t0, 0($t1)
	lw $t0, -440($fp)
	lw $t1, 0($t0)
	sw $t1, -444($fp)
	li $t0, 3001
	sw $t0, -448($fp)
	addi $t0, $fp, -40
	sw $t0, -452($fp)
	li $t0, 5
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
	li $t0, 2819
	sw $t0, -472($fp)
	addi $t0, $fp, -40
	sw $t0, -476($fp)
	li $t0, 6
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -484($fp)
	lw $t0, -476($fp)
	lw $t1, -484($fp)
	add $t0, $t0, $t1
	sw $t0, -488($fp)
	lw $t0, -472($fp)
	lw $t1, -488($fp)
	sw $t0, 0($t1)
	lw $t0, -488($fp)
	lw $t1, 0($t0)
	sw $t1, -492($fp)
	li $t0, 29879
	sw $t0, -496($fp)
	addi $t0, $fp, -40
	sw $t0, -500($fp)
	li $t0, 7
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -508($fp)
	lw $t0, -500($fp)
	lw $t1, -508($fp)
	add $t0, $t0, $t1
	sw $t0, -512($fp)
	lw $t0, -496($fp)
	lw $t1, -512($fp)
	sw $t0, 0($t1)
	lw $t0, -512($fp)
	lw $t1, 0($t0)
	sw $t1, -516($fp)
	li $t0, 34768
	sw $t0, -520($fp)
	addi $t0, $fp, -40
	sw $t0, -524($fp)
	li $t0, 8
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -532($fp)
	lw $t0, -524($fp)
	lw $t1, -532($fp)
	add $t0, $t0, $t1
	sw $t0, -536($fp)
	lw $t0, -520($fp)
	lw $t1, -536($fp)
	sw $t0, 0($t1)
	lw $t0, -536($fp)
	lw $t1, 0($t0)
	sw $t1, -540($fp)
	li $t0, 62257
	sw $t0, -544($fp)
	addi $t0, $fp, -48
	sw $t0, -548($fp)
	li $t0, 0
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -556($fp)
	lw $t0, -548($fp)
	lw $t1, -556($fp)
	add $t0, $t0, $t1
	sw $t0, -560($fp)
	lw $t0, -544($fp)
	lw $t1, -560($fp)
	sw $t0, 0($t1)
	lw $t0, -560($fp)
	lw $t1, 0($t0)
	sw $t1, -564($fp)
	li $t0, 53942
	sw $t0, -568($fp)
	addi $t0, $fp, -48
	sw $t0, -572($fp)
	li $t0, 1
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -580($fp)
	lw $t0, -572($fp)
	lw $t1, -580($fp)
	add $t0, $t0, $t1
	sw $t0, -584($fp)
	lw $t0, -568($fp)
	lw $t1, -584($fp)
	sw $t0, 0($t1)
	lw $t0, -584($fp)
	lw $t1, 0($t0)
	sw $t1, -588($fp)
	li $t0, 63501
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	li $t0, 47634
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	li $t0, 4030
	sw $t0, -616($fp)
	addi $t0, $fp, -72
	sw $t0, -620($fp)
	li $t0, 0
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -628($fp)
	lw $t0, -620($fp)
	lw $t1, -628($fp)
	add $t0, $t0, $t1
	sw $t0, -632($fp)
	lw $t0, -616($fp)
	lw $t1, -632($fp)
	sw $t0, 0($t1)
	lw $t0, -632($fp)
	lw $t1, 0($t0)
	sw $t1, -636($fp)
	li $t0, 63646
	sw $t0, -640($fp)
	addi $t0, $fp, -72
	sw $t0, -644($fp)
	li $t0, 1
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -652($fp)
	lw $t0, -644($fp)
	lw $t1, -652($fp)
	add $t0, $t0, $t1
	sw $t0, -656($fp)
	lw $t0, -640($fp)
	lw $t1, -656($fp)
	sw $t0, 0($t1)
	lw $t0, -656($fp)
	lw $t1, 0($t0)
	sw $t1, -660($fp)
	li $t0, 57895
	sw $t0, -664($fp)
	addi $t0, $fp, -72
	sw $t0, -668($fp)
	li $t0, 2
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -676($fp)
	lw $t0, -668($fp)
	lw $t1, -676($fp)
	add $t0, $t0, $t1
	sw $t0, -680($fp)
	lw $t0, -664($fp)
	lw $t1, -680($fp)
	sw $t0, 0($t1)
	lw $t0, -680($fp)
	lw $t1, 0($t0)
	sw $t1, -684($fp)
	li $t0, 18847
	sw $t0, -688($fp)
	addi $t0, $fp, -72
	sw $t0, -692($fp)
	li $t0, 3
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -700($fp)
	lw $t0, -692($fp)
	lw $t1, -700($fp)
	add $t0, $t0, $t1
	sw $t0, -704($fp)
	lw $t0, -688($fp)
	lw $t1, -704($fp)
	sw $t0, 0($t1)
	lw $t0, -704($fp)
	lw $t1, 0($t0)
	sw $t1, -708($fp)
	li $t0, 20312
	sw $t0, -712($fp)
	addi $t0, $fp, -72
	sw $t0, -716($fp)
	li $t0, 4
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -724($fp)
	lw $t0, -716($fp)
	lw $t1, -724($fp)
	add $t0, $t0, $t1
	sw $t0, -728($fp)
	lw $t0, -712($fp)
	lw $t1, -728($fp)
	sw $t0, 0($t1)
	lw $t0, -728($fp)
	lw $t1, 0($t0)
	sw $t1, -732($fp)
	li $t0, 25989
	sw $t0, -736($fp)
	addi $t0, $fp, -72
	sw $t0, -740($fp)
	li $t0, 5
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -748($fp)
	lw $t0, -740($fp)
	lw $t1, -748($fp)
	add $t0, $t0, $t1
	sw $t0, -752($fp)
	lw $t0, -736($fp)
	lw $t1, -752($fp)
	sw $t0, 0($t1)
	lw $t0, -752($fp)
	lw $t1, 0($t0)
	sw $t1, -756($fp)
	li $t0, 41456
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -768($fp)
	li $t0, 54045
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -780($fp)
	li $t0, 4342
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	sw $t0, -792($fp)
	li $t0, 29896
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	sw $t0, -804($fp)
	li $t0, 24049
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	sw $t0, -816($fp)
	li $t0, 50484
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -828($fp)
	li $t0, 53781
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -840($fp)
	li $t0, 25401
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -852($fp)
	li $t0, 33640
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -864($fp)
	li $t0, 7905
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	sw $t0, -876($fp)
	li $t0, 28306
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	sw $t0, -888($fp)
	li $t0, 45059
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -900($fp)
	li $t0, 56784
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -912($fp)
	li $t0, 26601
	sw $t0, -916($fp)
	addi $t0, $fp, -84
	sw $t0, -920($fp)
	li $t0, 0
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -928($fp)
	lw $t0, -920($fp)
	lw $t1, -928($fp)
	add $t0, $t0, $t1
	sw $t0, -932($fp)
	lw $t0, -916($fp)
	lw $t1, -932($fp)
	sw $t0, 0($t1)
	lw $t0, -932($fp)
	lw $t1, 0($t0)
	sw $t1, -936($fp)
	li $t0, 18814
	sw $t0, -940($fp)
	addi $t0, $fp, -84
	sw $t0, -944($fp)
	li $t0, 1
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -952($fp)
	lw $t0, -944($fp)
	lw $t1, -952($fp)
	add $t0, $t0, $t1
	sw $t0, -956($fp)
	lw $t0, -940($fp)
	lw $t1, -956($fp)
	sw $t0, 0($t1)
	lw $t0, -956($fp)
	lw $t1, 0($t0)
	sw $t1, -960($fp)
	li $t0, 38681
	sw $t0, -964($fp)
	addi $t0, $fp, -84
	sw $t0, -968($fp)
	li $t0, 2
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -976($fp)
	lw $t0, -968($fp)
	lw $t1, -976($fp)
	add $t0, $t0, $t1
	sw $t0, -980($fp)
	lw $t0, -964($fp)
	lw $t1, -980($fp)
	sw $t0, 0($t1)
	lw $t0, -980($fp)
	lw $t1, 0($t0)
	sw $t1, -984($fp)
	li $t0, 6015
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	sw $t0, -996($fp)
	li $t0, 21816
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	sw $t0, -1008($fp)
	li $t0, 41500
	sw $t0, -1012($fp)
	addi $t0, $fp, -104
	sw $t0, -1016($fp)
	li $t0, 0
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1024($fp)
	lw $t0, -1016($fp)
	lw $t1, -1024($fp)
	add $t0, $t0, $t1
	sw $t0, -1028($fp)
	lw $t0, -1012($fp)
	lw $t1, -1028($fp)
	sw $t0, 0($t1)
	lw $t0, -1028($fp)
	lw $t1, 0($t0)
	sw $t1, -1032($fp)
	li $t0, 35894
	sw $t0, -1036($fp)
	addi $t0, $fp, -104
	sw $t0, -1040($fp)
	li $t0, 1
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1048($fp)
	lw $t0, -1040($fp)
	lw $t1, -1048($fp)
	add $t0, $t0, $t1
	sw $t0, -1052($fp)
	lw $t0, -1036($fp)
	lw $t1, -1052($fp)
	sw $t0, 0($t1)
	lw $t0, -1052($fp)
	lw $t1, 0($t0)
	sw $t1, -1056($fp)
	li $t0, 56584
	sw $t0, -1060($fp)
	addi $t0, $fp, -104
	sw $t0, -1064($fp)
	li $t0, 2
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1072($fp)
	lw $t0, -1064($fp)
	lw $t1, -1072($fp)
	add $t0, $t0, $t1
	sw $t0, -1076($fp)
	lw $t0, -1060($fp)
	lw $t1, -1076($fp)
	sw $t0, 0($t1)
	lw $t0, -1076($fp)
	lw $t1, 0($t0)
	sw $t1, -1080($fp)
	li $t0, 38221
	sw $t0, -1084($fp)
	addi $t0, $fp, -104
	sw $t0, -1088($fp)
	li $t0, 3
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1096($fp)
	lw $t0, -1088($fp)
	lw $t1, -1096($fp)
	add $t0, $t0, $t1
	sw $t0, -1100($fp)
	lw $t0, -1084($fp)
	lw $t1, -1100($fp)
	sw $t0, 0($t1)
	lw $t0, -1100($fp)
	lw $t1, 0($t0)
	sw $t1, -1104($fp)
	li $t0, 24300
	sw $t0, -1108($fp)
	addi $t0, $fp, -104
	sw $t0, -1112($fp)
	li $t0, 4
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1120($fp)
	lw $t0, -1112($fp)
	lw $t1, -1120($fp)
	add $t0, $t0, $t1
	sw $t0, -1124($fp)
	lw $t0, -1108($fp)
	lw $t1, -1124($fp)
	sw $t0, 0($t1)
	lw $t0, -1124($fp)
	lw $t1, 0($t0)
	sw $t1, -1128($fp)
	li $t0, 54549
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	sw $t0, -1140($fp)
	li $t0, 20319
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	sw $t0, -1152($fp)
	li $t0, 28330
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	sw $t0, -1164($fp)
	li $t0, 52659
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	sw $t0, -1176($fp)
	li $t0, 12679
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	sw $t0, -1188($fp)
	li $t0, 47178
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -1200($fp)
	li $t0, 7435
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	sw $t0, -1212($fp)
	li $t0, 38668
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	sw $t0, -1224($fp)
	li $t0, 23098
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	sw $t0, -1236($fp)
	li $t0, 61481
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	sw $t0, -1248($fp)
	li $t0, 43010
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	sw $t0, -1260($fp)
	li $t0, 52994
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	sw $t0, -1272($fp)
	li $t0, 19994
	sw $t0, -1276($fp)
	addi $t0, $fp, -140
	sw $t0, -1280($fp)
	li $t0, 0
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1288($fp)
	lw $t0, -1280($fp)
	lw $t1, -1288($fp)
	add $t0, $t0, $t1
	sw $t0, -1292($fp)
	lw $t0, -1276($fp)
	lw $t1, -1292($fp)
	sw $t0, 0($t1)
	lw $t0, -1292($fp)
	lw $t1, 0($t0)
	sw $t1, -1296($fp)
	li $t0, 27958
	sw $t0, -1300($fp)
	addi $t0, $fp, -140
	sw $t0, -1304($fp)
	li $t0, 1
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1312($fp)
	lw $t0, -1304($fp)
	lw $t1, -1312($fp)
	add $t0, $t0, $t1
	sw $t0, -1316($fp)
	lw $t0, -1300($fp)
	lw $t1, -1316($fp)
	sw $t0, 0($t1)
	lw $t0, -1316($fp)
	lw $t1, 0($t0)
	sw $t1, -1320($fp)
	li $t0, 41239
	sw $t0, -1324($fp)
	addi $t0, $fp, -140
	sw $t0, -1328($fp)
	li $t0, 2
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1336($fp)
	lw $t0, -1328($fp)
	lw $t1, -1336($fp)
	add $t0, $t0, $t1
	sw $t0, -1340($fp)
	lw $t0, -1324($fp)
	lw $t1, -1340($fp)
	sw $t0, 0($t1)
	lw $t0, -1340($fp)
	lw $t1, 0($t0)
	sw $t1, -1344($fp)
	li $t0, 45395
	sw $t0, -1348($fp)
	addi $t0, $fp, -140
	sw $t0, -1352($fp)
	li $t0, 3
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1360($fp)
	lw $t0, -1352($fp)
	lw $t1, -1360($fp)
	add $t0, $t0, $t1
	sw $t0, -1364($fp)
	lw $t0, -1348($fp)
	lw $t1, -1364($fp)
	sw $t0, 0($t1)
	lw $t0, -1364($fp)
	lw $t1, 0($t0)
	sw $t1, -1368($fp)
	li $t0, 61598
	sw $t0, -1372($fp)
	addi $t0, $fp, -140
	sw $t0, -1376($fp)
	li $t0, 4
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1384($fp)
	lw $t0, -1376($fp)
	lw $t1, -1384($fp)
	add $t0, $t0, $t1
	sw $t0, -1388($fp)
	lw $t0, -1372($fp)
	lw $t1, -1388($fp)
	sw $t0, 0($t1)
	lw $t0, -1388($fp)
	lw $t1, 0($t0)
	sw $t1, -1392($fp)
	li $t0, 49145
	sw $t0, -1396($fp)
	addi $t0, $fp, -140
	sw $t0, -1400($fp)
	li $t0, 5
	sw $t0, -1404($fp)
	lw $t0, -1404($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1408($fp)
	lw $t0, -1400($fp)
	lw $t1, -1408($fp)
	add $t0, $t0, $t1
	sw $t0, -1412($fp)
	lw $t0, -1396($fp)
	lw $t1, -1412($fp)
	sw $t0, 0($t1)
	lw $t0, -1412($fp)
	lw $t1, 0($t0)
	sw $t1, -1416($fp)
	li $t0, 8165
	sw $t0, -1420($fp)
	addi $t0, $fp, -140
	sw $t0, -1424($fp)
	li $t0, 6
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1432($fp)
	lw $t0, -1424($fp)
	lw $t1, -1432($fp)
	add $t0, $t0, $t1
	sw $t0, -1436($fp)
	lw $t0, -1420($fp)
	lw $t1, -1436($fp)
	sw $t0, 0($t1)
	lw $t0, -1436($fp)
	lw $t1, 0($t0)
	sw $t1, -1440($fp)
	li $t0, 41121
	sw $t0, -1444($fp)
	addi $t0, $fp, -140
	sw $t0, -1448($fp)
	li $t0, 7
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1456($fp)
	lw $t0, -1448($fp)
	lw $t1, -1456($fp)
	add $t0, $t0, $t1
	sw $t0, -1460($fp)
	lw $t0, -1444($fp)
	lw $t1, -1460($fp)
	sw $t0, 0($t1)
	lw $t0, -1460($fp)
	lw $t1, 0($t0)
	sw $t1, -1464($fp)
	li $t0, 40393
	sw $t0, -1468($fp)
	addi $t0, $fp, -140
	sw $t0, -1472($fp)
	li $t0, 8
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1480($fp)
	lw $t0, -1472($fp)
	lw $t1, -1480($fp)
	add $t0, $t0, $t1
	sw $t0, -1484($fp)
	lw $t0, -1468($fp)
	lw $t1, -1484($fp)
	sw $t0, 0($t1)
	lw $t0, -1484($fp)
	lw $t1, 0($t0)
	sw $t1, -1488($fp)
	li $t0, 34767
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	sw $t0, -1500($fp)
	li $t0, 59936
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	sw $t0, -1512($fp)
	li $t0, 13538
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	sw $t0, -1524($fp)
	li $t0, 40782
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	sw $t0, -1536($fp)
	li $t0, 16216
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	sw $t0, -1548($fp)
	li $t0, 55038
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	sw $t0, -1560($fp)
	li $t0, 11140
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	sw $t0, -1572($fp)
	li $t0, 7264
	sw $t0, -1576($fp)
	addi $t0, $fp, -176
	sw $t0, -1580($fp)
	li $t0, 0
	sw $t0, -1584($fp)
	lw $t0, -1584($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1588($fp)
	lw $t0, -1580($fp)
	lw $t1, -1588($fp)
	add $t0, $t0, $t1
	sw $t0, -1592($fp)
	lw $t0, -1576($fp)
	lw $t1, -1592($fp)
	sw $t0, 0($t1)
	lw $t0, -1592($fp)
	lw $t1, 0($t0)
	sw $t1, -1596($fp)
	li $t0, 27723
	sw $t0, -1600($fp)
	addi $t0, $fp, -176
	sw $t0, -1604($fp)
	li $t0, 1
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1612($fp)
	lw $t0, -1604($fp)
	lw $t1, -1612($fp)
	add $t0, $t0, $t1
	sw $t0, -1616($fp)
	lw $t0, -1600($fp)
	lw $t1, -1616($fp)
	sw $t0, 0($t1)
	lw $t0, -1616($fp)
	lw $t1, 0($t0)
	sw $t1, -1620($fp)
	li $t0, 35440
	sw $t0, -1624($fp)
	addi $t0, $fp, -176
	sw $t0, -1628($fp)
	li $t0, 2
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1636($fp)
	lw $t0, -1628($fp)
	lw $t1, -1636($fp)
	add $t0, $t0, $t1
	sw $t0, -1640($fp)
	lw $t0, -1624($fp)
	lw $t1, -1640($fp)
	sw $t0, 0($t1)
	lw $t0, -1640($fp)
	lw $t1, 0($t0)
	sw $t1, -1644($fp)
	li $t0, 61814
	sw $t0, -1648($fp)
	addi $t0, $fp, -176
	sw $t0, -1652($fp)
	li $t0, 3
	sw $t0, -1656($fp)
	lw $t0, -1656($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1660($fp)
	lw $t0, -1652($fp)
	lw $t1, -1660($fp)
	add $t0, $t0, $t1
	sw $t0, -1664($fp)
	lw $t0, -1648($fp)
	lw $t1, -1664($fp)
	sw $t0, 0($t1)
	lw $t0, -1664($fp)
	lw $t1, 0($t0)
	sw $t1, -1668($fp)
	li $t0, 48043
	sw $t0, -1672($fp)
	addi $t0, $fp, -176
	sw $t0, -1676($fp)
	li $t0, 4
	sw $t0, -1680($fp)
	lw $t0, -1680($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1684($fp)
	lw $t0, -1676($fp)
	lw $t1, -1684($fp)
	add $t0, $t0, $t1
	sw $t0, -1688($fp)
	lw $t0, -1672($fp)
	lw $t1, -1688($fp)
	sw $t0, 0($t1)
	lw $t0, -1688($fp)
	lw $t1, 0($t0)
	sw $t1, -1692($fp)
	li $t0, 63771
	sw $t0, -1696($fp)
	addi $t0, $fp, -176
	sw $t0, -1700($fp)
	li $t0, 5
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1708($fp)
	lw $t0, -1700($fp)
	lw $t1, -1708($fp)
	add $t0, $t0, $t1
	sw $t0, -1712($fp)
	lw $t0, -1696($fp)
	lw $t1, -1712($fp)
	sw $t0, 0($t1)
	lw $t0, -1712($fp)
	lw $t1, 0($t0)
	sw $t1, -1716($fp)
	li $t0, 48937
	sw $t0, -1720($fp)
	addi $t0, $fp, -176
	sw $t0, -1724($fp)
	li $t0, 6
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1732($fp)
	lw $t0, -1724($fp)
	lw $t1, -1732($fp)
	add $t0, $t0, $t1
	sw $t0, -1736($fp)
	lw $t0, -1720($fp)
	lw $t1, -1736($fp)
	sw $t0, 0($t1)
	lw $t0, -1736($fp)
	lw $t1, 0($t0)
	sw $t1, -1740($fp)
	li $t0, 60722
	sw $t0, -1744($fp)
	addi $t0, $fp, -176
	sw $t0, -1748($fp)
	li $t0, 7
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1756($fp)
	lw $t0, -1748($fp)
	lw $t1, -1756($fp)
	add $t0, $t0, $t1
	sw $t0, -1760($fp)
	lw $t0, -1744($fp)
	lw $t1, -1760($fp)
	sw $t0, 0($t1)
	lw $t0, -1760($fp)
	lw $t1, 0($t0)
	sw $t1, -1764($fp)
	li $t0, 45413
	sw $t0, -1768($fp)
	addi $t0, $fp, -176
	sw $t0, -1772($fp)
	li $t0, 8
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1780($fp)
	lw $t0, -1772($fp)
	lw $t1, -1780($fp)
	add $t0, $t0, $t1
	sw $t0, -1784($fp)
	lw $t0, -1768($fp)
	lw $t1, -1784($fp)
	sw $t0, 0($t1)
	lw $t0, -1784($fp)
	lw $t1, 0($t0)
	sw $t1, -1788($fp)
	li $t0, 56373
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	sw $t0, -1800($fp)
	li $t0, 33854
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	sw $t0, -1812($fp)
	li $t0, 2975
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	sw $t0, -1824($fp)
	li $t0, 52318
	sw $t0, -1828($fp)
	lw $t0, -1828($fp)
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	sw $t0, -1836($fp)
	li $t0, 11328
	sw $t0, -1840($fp)
	addi $t0, $fp, -188
	sw $t0, -1844($fp)
	li $t0, 0
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1852($fp)
	lw $t0, -1844($fp)
	lw $t1, -1852($fp)
	add $t0, $t0, $t1
	sw $t0, -1856($fp)
	lw $t0, -1840($fp)
	lw $t1, -1856($fp)
	sw $t0, 0($t1)
	lw $t0, -1856($fp)
	lw $t1, 0($t0)
	sw $t1, -1860($fp)
	li $t0, 55969
	sw $t0, -1864($fp)
	addi $t0, $fp, -188
	sw $t0, -1868($fp)
	li $t0, 1
	sw $t0, -1872($fp)
	lw $t0, -1872($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1876($fp)
	lw $t0, -1868($fp)
	lw $t1, -1876($fp)
	add $t0, $t0, $t1
	sw $t0, -1880($fp)
	lw $t0, -1864($fp)
	lw $t1, -1880($fp)
	sw $t0, 0($t1)
	lw $t0, -1880($fp)
	lw $t1, 0($t0)
	sw $t1, -1884($fp)
	li $t0, 6776
	sw $t0, -1888($fp)
	addi $t0, $fp, -188
	sw $t0, -1892($fp)
	li $t0, 2
	sw $t0, -1896($fp)
	lw $t0, -1896($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1900($fp)
	lw $t0, -1892($fp)
	lw $t1, -1900($fp)
	add $t0, $t0, $t1
	sw $t0, -1904($fp)
	lw $t0, -1888($fp)
	lw $t1, -1904($fp)
	sw $t0, 0($t1)
	lw $t0, -1904($fp)
	lw $t1, 0($t0)
	sw $t1, -1908($fp)
	li $t0, 39287
	sw $t0, -1912($fp)
	lw $t0, -1912($fp)
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	sw $t0, -1920($fp)
	li $t0, 31673
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	sw $t0, -1932($fp)
	li $t0, 52171
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	sw $t0, -1944($fp)
	li $t0, 35349
	sw $t0, -1948($fp)
	lw $t0, -1948($fp)
	sw $t0, -1952($fp)
	lw $t0, -1952($fp)
	sw $t0, -1956($fp)
	li $t0, 15282
	sw $t0, -1960($fp)
	lw $t0, -1960($fp)
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	sw $t0, -1968($fp)
	li $t0, 60337
	sw $t0, -1972($fp)
	lw $t0, -1972($fp)
	sw $t0, -1976($fp)
	lw $t0, -1976($fp)
	sw $t0, -1980($fp)
	li $t0, 10935
	sw $t0, -1984($fp)
	lw $t0, -1984($fp)
	sw $t0, -1988($fp)
	lw $t0, -1988($fp)
	sw $t0, -1992($fp)
	li $t0, 55675
	sw $t0, -1996($fp)
	lw $t0, -1996($fp)
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	sw $t0, -2004($fp)
	li $t0, 29568
	sw $t0, -2008($fp)
	addi $t0, $fp, -224
	sw $t0, -2012($fp)
	li $t0, 0
	sw $t0, -2016($fp)
	lw $t0, -2016($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2020($fp)
	lw $t0, -2012($fp)
	lw $t1, -2020($fp)
	add $t0, $t0, $t1
	sw $t0, -2024($fp)
	lw $t0, -2008($fp)
	lw $t1, -2024($fp)
	sw $t0, 0($t1)
	lw $t0, -2024($fp)
	lw $t1, 0($t0)
	sw $t1, -2028($fp)
	li $t0, 5335
	sw $t0, -2032($fp)
	addi $t0, $fp, -224
	sw $t0, -2036($fp)
	li $t0, 1
	sw $t0, -2040($fp)
	lw $t0, -2040($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2044($fp)
	lw $t0, -2036($fp)
	lw $t1, -2044($fp)
	add $t0, $t0, $t1
	sw $t0, -2048($fp)
	lw $t0, -2032($fp)
	lw $t1, -2048($fp)
	sw $t0, 0($t1)
	lw $t0, -2048($fp)
	lw $t1, 0($t0)
	sw $t1, -2052($fp)
	li $t0, 3677
	sw $t0, -2056($fp)
	addi $t0, $fp, -224
	sw $t0, -2060($fp)
	li $t0, 2
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2068($fp)
	lw $t0, -2060($fp)
	lw $t1, -2068($fp)
	add $t0, $t0, $t1
	sw $t0, -2072($fp)
	lw $t0, -2056($fp)
	lw $t1, -2072($fp)
	sw $t0, 0($t1)
	lw $t0, -2072($fp)
	lw $t1, 0($t0)
	sw $t1, -2076($fp)
	li $t0, 4814
	sw $t0, -2080($fp)
	addi $t0, $fp, -224
	sw $t0, -2084($fp)
	li $t0, 3
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2092($fp)
	lw $t0, -2084($fp)
	lw $t1, -2092($fp)
	add $t0, $t0, $t1
	sw $t0, -2096($fp)
	lw $t0, -2080($fp)
	lw $t1, -2096($fp)
	sw $t0, 0($t1)
	lw $t0, -2096($fp)
	lw $t1, 0($t0)
	sw $t1, -2100($fp)
	li $t0, 21551
	sw $t0, -2104($fp)
	addi $t0, $fp, -224
	sw $t0, -2108($fp)
	li $t0, 4
	sw $t0, -2112($fp)
	lw $t0, -2112($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2116($fp)
	lw $t0, -2108($fp)
	lw $t1, -2116($fp)
	add $t0, $t0, $t1
	sw $t0, -2120($fp)
	lw $t0, -2104($fp)
	lw $t1, -2120($fp)
	sw $t0, 0($t1)
	lw $t0, -2120($fp)
	lw $t1, 0($t0)
	sw $t1, -2124($fp)
	li $t0, 58715
	sw $t0, -2128($fp)
	addi $t0, $fp, -224
	sw $t0, -2132($fp)
	li $t0, 5
	sw $t0, -2136($fp)
	lw $t0, -2136($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2140($fp)
	lw $t0, -2132($fp)
	lw $t1, -2140($fp)
	add $t0, $t0, $t1
	sw $t0, -2144($fp)
	lw $t0, -2128($fp)
	lw $t1, -2144($fp)
	sw $t0, 0($t1)
	lw $t0, -2144($fp)
	lw $t1, 0($t0)
	sw $t1, -2148($fp)
	li $t0, 15954
	sw $t0, -2152($fp)
	addi $t0, $fp, -224
	sw $t0, -2156($fp)
	li $t0, 6
	sw $t0, -2160($fp)
	lw $t0, -2160($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2164($fp)
	lw $t0, -2156($fp)
	lw $t1, -2164($fp)
	add $t0, $t0, $t1
	sw $t0, -2168($fp)
	lw $t0, -2152($fp)
	lw $t1, -2168($fp)
	sw $t0, 0($t1)
	lw $t0, -2168($fp)
	lw $t1, 0($t0)
	sw $t1, -2172($fp)
	li $t0, 28815
	sw $t0, -2176($fp)
	addi $t0, $fp, -224
	sw $t0, -2180($fp)
	li $t0, 7
	sw $t0, -2184($fp)
	lw $t0, -2184($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2188($fp)
	lw $t0, -2180($fp)
	lw $t1, -2188($fp)
	add $t0, $t0, $t1
	sw $t0, -2192($fp)
	lw $t0, -2176($fp)
	lw $t1, -2192($fp)
	sw $t0, 0($t1)
	lw $t0, -2192($fp)
	lw $t1, 0($t0)
	sw $t1, -2196($fp)
	li $t0, 20902
	sw $t0, -2200($fp)
	addi $t0, $fp, -224
	sw $t0, -2204($fp)
	li $t0, 8
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2212($fp)
	lw $t0, -2204($fp)
	lw $t1, -2212($fp)
	add $t0, $t0, $t1
	sw $t0, -2216($fp)
	lw $t0, -2200($fp)
	lw $t1, -2216($fp)
	sw $t0, 0($t1)
	lw $t0, -2216($fp)
	lw $t1, 0($t0)
	sw $t1, -2220($fp)
	li $t0, 51394
	sw $t0, -2224($fp)
	lw $t0, -2224($fp)
	sw $t0, -2228($fp)
	lw $t0, -2228($fp)
	sw $t0, -2232($fp)
	li $t0, 25093
	sw $t0, -2236($fp)
	addi $t0, $fp, -252
	sw $t0, -2240($fp)
	li $t0, 0
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2248($fp)
	lw $t0, -2240($fp)
	lw $t1, -2248($fp)
	add $t0, $t0, $t1
	sw $t0, -2252($fp)
	lw $t0, -2236($fp)
	lw $t1, -2252($fp)
	sw $t0, 0($t1)
	lw $t0, -2252($fp)
	lw $t1, 0($t0)
	sw $t1, -2256($fp)
	li $t0, 3409
	sw $t0, -2260($fp)
	addi $t0, $fp, -252
	sw $t0, -2264($fp)
	li $t0, 1
	sw $t0, -2268($fp)
	lw $t0, -2268($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2272($fp)
	lw $t0, -2264($fp)
	lw $t1, -2272($fp)
	add $t0, $t0, $t1
	sw $t0, -2276($fp)
	lw $t0, -2260($fp)
	lw $t1, -2276($fp)
	sw $t0, 0($t1)
	lw $t0, -2276($fp)
	lw $t1, 0($t0)
	sw $t1, -2280($fp)
	li $t0, 49629
	sw $t0, -2284($fp)
	addi $t0, $fp, -252
	sw $t0, -2288($fp)
	li $t0, 2
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2296($fp)
	lw $t0, -2288($fp)
	lw $t1, -2296($fp)
	add $t0, $t0, $t1
	sw $t0, -2300($fp)
	lw $t0, -2284($fp)
	lw $t1, -2300($fp)
	sw $t0, 0($t1)
	lw $t0, -2300($fp)
	lw $t1, 0($t0)
	sw $t1, -2304($fp)
	li $t0, 8495
	sw $t0, -2308($fp)
	addi $t0, $fp, -252
	sw $t0, -2312($fp)
	li $t0, 3
	sw $t0, -2316($fp)
	lw $t0, -2316($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2320($fp)
	lw $t0, -2312($fp)
	lw $t1, -2320($fp)
	add $t0, $t0, $t1
	sw $t0, -2324($fp)
	lw $t0, -2308($fp)
	lw $t1, -2324($fp)
	sw $t0, 0($t1)
	lw $t0, -2324($fp)
	lw $t1, 0($t0)
	sw $t1, -2328($fp)
	li $t0, 64131
	sw $t0, -2332($fp)
	addi $t0, $fp, -252
	sw $t0, -2336($fp)
	li $t0, 4
	sw $t0, -2340($fp)
	lw $t0, -2340($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2344($fp)
	lw $t0, -2336($fp)
	lw $t1, -2344($fp)
	add $t0, $t0, $t1
	sw $t0, -2348($fp)
	lw $t0, -2332($fp)
	lw $t1, -2348($fp)
	sw $t0, 0($t1)
	lw $t0, -2348($fp)
	lw $t1, 0($t0)
	sw $t1, -2352($fp)
	li $t0, 29506
	sw $t0, -2356($fp)
	addi $t0, $fp, -252
	sw $t0, -2360($fp)
	li $t0, 5
	sw $t0, -2364($fp)
	lw $t0, -2364($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2368($fp)
	lw $t0, -2360($fp)
	lw $t1, -2368($fp)
	add $t0, $t0, $t1
	sw $t0, -2372($fp)
	lw $t0, -2356($fp)
	lw $t1, -2372($fp)
	sw $t0, 0($t1)
	lw $t0, -2372($fp)
	lw $t1, 0($t0)
	sw $t1, -2376($fp)
	li $t0, 64868
	sw $t0, -2380($fp)
	addi $t0, $fp, -252
	sw $t0, -2384($fp)
	li $t0, 6
	sw $t0, -2388($fp)
	lw $t0, -2388($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2392($fp)
	lw $t0, -2384($fp)
	lw $t1, -2392($fp)
	add $t0, $t0, $t1
	sw $t0, -2396($fp)
	lw $t0, -2380($fp)
	lw $t1, -2396($fp)
	sw $t0, 0($t1)
	lw $t0, -2396($fp)
	lw $t1, 0($t0)
	sw $t1, -2400($fp)
	li $t0, 32449
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	sw $t0, -2412($fp)
	li $t0, 32481
	sw $t0, -2416($fp)
	lw $t0, -2416($fp)
	sw $t0, -2420($fp)
	lw $t0, -2420($fp)
	sw $t0, -2424($fp)
	li $t0, 51650
	sw $t0, -2428($fp)
	lw $t0, -2428($fp)
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	sw $t0, -2436($fp)
	li $t0, 43778
	sw $t0, -2440($fp)
	lw $t0, -2440($fp)
	sw $t0, -2444($fp)
	lw $t0, -2444($fp)
	sw $t0, -2448($fp)
	li $t0, 22915
	sw $t0, -2452($fp)
	lw $t0, -2452($fp)
	sw $t0, -2456($fp)
	lw $t0, -2456($fp)
	sw $t0, -2460($fp)
	li $t0, 58426
	sw $t0, -2464($fp)
	lw $t0, -2464($fp)
	sw $t0, -2468($fp)
	lw $t0, -2468($fp)
	sw $t0, -2472($fp)
	li $t0, 17529
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	sw $t0, -2484($fp)
	li $t0, 54588
	sw $t0, -2488($fp)
	lw $t0, -2488($fp)
	sw $t0, -2492($fp)
	lw $t0, -2492($fp)
	sw $t0, -2496($fp)
	li $t0, 45061
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	sw $t0, -2504($fp)
	lw $t0, -2504($fp)
	sw $t0, -2508($fp)
	li $t0, 52878
	sw $t0, -2512($fp)
	lw $t0, -2512($fp)
	sw $t0, -2516($fp)
	lw $t0, -2516($fp)
	sw $t0, -2520($fp)
	li $t0, 4334
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	sw $t0, -2532($fp)
	li $t0, 39862
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	sw $t0, -2540($fp)
	lw $t0, -2540($fp)
	sw $t0, -2544($fp)
	li $t0, 63813
	sw $t0, -2548($fp)
	addi $t0, $fp, -256
	sw $t0, -2552($fp)
	li $t0, 0
	sw $t0, -2556($fp)
	lw $t0, -2556($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2560($fp)
	lw $t0, -2552($fp)
	lw $t1, -2560($fp)
	add $t0, $t0, $t1
	sw $t0, -2564($fp)
	lw $t0, -2548($fp)
	lw $t1, -2564($fp)
	sw $t0, 0($t1)
	lw $t0, -2564($fp)
	lw $t1, 0($t0)
	sw $t1, -2568($fp)
	li $t0, 60009
	sw $t0, -2572($fp)
	lw $t0, -2572($fp)
	sw $t0, -2576($fp)
	lw $t0, -2576($fp)
	sw $t0, -2580($fp)
	li $t0, 3894
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	sw $t0, -2588($fp)
	lw $t0, -2588($fp)
	sw $t0, -2592($fp)
	li $t0, 3612
	sw $t0, -2596($fp)
	lw $t0, -2596($fp)
	sw $t0, -2600($fp)
	lw $t0, -2600($fp)
	sw $t0, -2604($fp)
	li $t0, 63686
	sw $t0, -2608($fp)
	lw $t0, -2608($fp)
	sw $t0, -2612($fp)
	lw $t0, -2612($fp)
	sw $t0, -2616($fp)
	li $t0, 8708
	sw $t0, -2620($fp)
	addi $t0, $fp, -264
	sw $t0, -2624($fp)
	li $t0, 0
	sw $t0, -2628($fp)
	lw $t0, -2628($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2632($fp)
	lw $t0, -2624($fp)
	lw $t1, -2632($fp)
	add $t0, $t0, $t1
	sw $t0, -2636($fp)
	lw $t0, -2620($fp)
	lw $t1, -2636($fp)
	sw $t0, 0($t1)
	lw $t0, -2636($fp)
	lw $t1, 0($t0)
	sw $t1, -2640($fp)
	li $t0, 25163
	sw $t0, -2644($fp)
	addi $t0, $fp, -264
	sw $t0, -2648($fp)
	li $t0, 1
	sw $t0, -2652($fp)
	lw $t0, -2652($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2656($fp)
	lw $t0, -2648($fp)
	lw $t1, -2656($fp)
	add $t0, $t0, $t1
	sw $t0, -2660($fp)
	lw $t0, -2644($fp)
	lw $t1, -2660($fp)
	sw $t0, 0($t1)
	lw $t0, -2660($fp)
	lw $t1, 0($t0)
	sw $t1, -2664($fp)
	li $t0, 56865
	sw $t0, -2668($fp)
	lw $t0, -2668($fp)
	sw $t0, -2672($fp)
	lw $t0, -2672($fp)
	sw $t0, -2676($fp)
	li $t0, 24662
	sw $t0, -2680($fp)
	lw $t0, -2680($fp)
	sw $t0, -2684($fp)
	lw $t0, -2684($fp)
	sw $t0, -2688($fp)
	li $t0, 53979
	sw $t0, -2692($fp)
	lw $t0, -2692($fp)
	sw $t0, -2696($fp)
	lw $t0, -2696($fp)
	sw $t0, -2700($fp)
	li $t0, 12231
	sw $t0, -2704($fp)
	lw $t0, -2704($fp)
	sw $t0, -2708($fp)
	lw $t0, -2708($fp)
	sw $t0, -2712($fp)
	li $t0, 10521
	sw $t0, -2716($fp)
	lw $t0, -2716($fp)
	sw $t0, -2720($fp)
	lw $t0, -2720($fp)
	sw $t0, -2724($fp)
	li $t0, 13536
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	sw $t0, -2732($fp)
	lw $t0, -2732($fp)
	sw $t0, -2736($fp)
	li $t0, 15641
	sw $t0, -2740($fp)
	lw $t0, -2740($fp)
	sw $t0, -2744($fp)
	lw $t0, -2744($fp)
	sw $t0, -2748($fp)
	li $t0, 60150
	sw $t0, -2752($fp)
	addi $t0, $fp, -284
	sw $t0, -2756($fp)
	li $t0, 0
	sw $t0, -2760($fp)
	lw $t0, -2760($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2764($fp)
	lw $t0, -2756($fp)
	lw $t1, -2764($fp)
	add $t0, $t0, $t1
	sw $t0, -2768($fp)
	lw $t0, -2752($fp)
	lw $t1, -2768($fp)
	sw $t0, 0($t1)
	lw $t0, -2768($fp)
	lw $t1, 0($t0)
	sw $t1, -2772($fp)
	li $t0, 22031
	sw $t0, -2776($fp)
	addi $t0, $fp, -284
	sw $t0, -2780($fp)
	li $t0, 1
	sw $t0, -2784($fp)
	lw $t0, -2784($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2788($fp)
	lw $t0, -2780($fp)
	lw $t1, -2788($fp)
	add $t0, $t0, $t1
	sw $t0, -2792($fp)
	lw $t0, -2776($fp)
	lw $t1, -2792($fp)
	sw $t0, 0($t1)
	lw $t0, -2792($fp)
	lw $t1, 0($t0)
	sw $t1, -2796($fp)
	li $t0, 14236
	sw $t0, -2800($fp)
	addi $t0, $fp, -284
	sw $t0, -2804($fp)
	li $t0, 2
	sw $t0, -2808($fp)
	lw $t0, -2808($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2812($fp)
	lw $t0, -2804($fp)
	lw $t1, -2812($fp)
	add $t0, $t0, $t1
	sw $t0, -2816($fp)
	lw $t0, -2800($fp)
	lw $t1, -2816($fp)
	sw $t0, 0($t1)
	lw $t0, -2816($fp)
	lw $t1, 0($t0)
	sw $t1, -2820($fp)
	li $t0, 24121
	sw $t0, -2824($fp)
	addi $t0, $fp, -284
	sw $t0, -2828($fp)
	li $t0, 3
	sw $t0, -2832($fp)
	lw $t0, -2832($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2836($fp)
	lw $t0, -2828($fp)
	lw $t1, -2836($fp)
	add $t0, $t0, $t1
	sw $t0, -2840($fp)
	lw $t0, -2824($fp)
	lw $t1, -2840($fp)
	sw $t0, 0($t1)
	lw $t0, -2840($fp)
	lw $t1, 0($t0)
	sw $t1, -2844($fp)
	li $t0, 21363
	sw $t0, -2848($fp)
	addi $t0, $fp, -284
	sw $t0, -2852($fp)
	li $t0, 4
	sw $t0, -2856($fp)
	lw $t0, -2856($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2860($fp)
	lw $t0, -2852($fp)
	lw $t1, -2860($fp)
	add $t0, $t0, $t1
	sw $t0, -2864($fp)
	lw $t0, -2848($fp)
	lw $t1, -2864($fp)
	sw $t0, 0($t1)
	lw $t0, -2864($fp)
	lw $t1, 0($t0)
	sw $t1, -2868($fp)
	li $t0, 46686
	sw $t0, -2872($fp)
	lw $t0, -2872($fp)
	sw $t0, -2876($fp)
	lw $t0, -2876($fp)
	sw $t0, -2880($fp)
	li $t0, 56602
	sw $t0, -2884($fp)
	addi $t0, $fp, -324
	sw $t0, -2888($fp)
	li $t0, 0
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2896($fp)
	lw $t0, -2888($fp)
	lw $t1, -2896($fp)
	add $t0, $t0, $t1
	sw $t0, -2900($fp)
	lw $t0, -2884($fp)
	lw $t1, -2900($fp)
	sw $t0, 0($t1)
	lw $t0, -2900($fp)
	lw $t1, 0($t0)
	sw $t1, -2904($fp)
	li $t0, 7477
	sw $t0, -2908($fp)
	addi $t0, $fp, -324
	sw $t0, -2912($fp)
	li $t0, 1
	sw $t0, -2916($fp)
	lw $t0, -2916($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2920($fp)
	lw $t0, -2912($fp)
	lw $t1, -2920($fp)
	add $t0, $t0, $t1
	sw $t0, -2924($fp)
	lw $t0, -2908($fp)
	lw $t1, -2924($fp)
	sw $t0, 0($t1)
	lw $t0, -2924($fp)
	lw $t1, 0($t0)
	sw $t1, -2928($fp)
	li $t0, 24928
	sw $t0, -2932($fp)
	addi $t0, $fp, -324
	sw $t0, -2936($fp)
	li $t0, 2
	sw $t0, -2940($fp)
	lw $t0, -2940($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2944($fp)
	lw $t0, -2936($fp)
	lw $t1, -2944($fp)
	add $t0, $t0, $t1
	sw $t0, -2948($fp)
	lw $t0, -2932($fp)
	lw $t1, -2948($fp)
	sw $t0, 0($t1)
	lw $t0, -2948($fp)
	lw $t1, 0($t0)
	sw $t1, -2952($fp)
	li $t0, 13981
	sw $t0, -2956($fp)
	addi $t0, $fp, -324
	sw $t0, -2960($fp)
	li $t0, 3
	sw $t0, -2964($fp)
	lw $t0, -2964($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2968($fp)
	lw $t0, -2960($fp)
	lw $t1, -2968($fp)
	add $t0, $t0, $t1
	sw $t0, -2972($fp)
	lw $t0, -2956($fp)
	lw $t1, -2972($fp)
	sw $t0, 0($t1)
	lw $t0, -2972($fp)
	lw $t1, 0($t0)
	sw $t1, -2976($fp)
	li $t0, 367
	sw $t0, -2980($fp)
	addi $t0, $fp, -324
	sw $t0, -2984($fp)
	li $t0, 4
	sw $t0, -2988($fp)
	lw $t0, -2988($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2992($fp)
	lw $t0, -2984($fp)
	lw $t1, -2992($fp)
	add $t0, $t0, $t1
	sw $t0, -2996($fp)
	lw $t0, -2980($fp)
	lw $t1, -2996($fp)
	sw $t0, 0($t1)
	lw $t0, -2996($fp)
	lw $t1, 0($t0)
	sw $t1, -3000($fp)
	li $t0, 42457
	sw $t0, -3004($fp)
	addi $t0, $fp, -324
	sw $t0, -3008($fp)
	li $t0, 5
	sw $t0, -3012($fp)
	lw $t0, -3012($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3016($fp)
	lw $t0, -3008($fp)
	lw $t1, -3016($fp)
	add $t0, $t0, $t1
	sw $t0, -3020($fp)
	lw $t0, -3004($fp)
	lw $t1, -3020($fp)
	sw $t0, 0($t1)
	lw $t0, -3020($fp)
	lw $t1, 0($t0)
	sw $t1, -3024($fp)
	li $t0, 3033
	sw $t0, -3028($fp)
	addi $t0, $fp, -324
	sw $t0, -3032($fp)
	li $t0, 6
	sw $t0, -3036($fp)
	lw $t0, -3036($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3040($fp)
	lw $t0, -3032($fp)
	lw $t1, -3040($fp)
	add $t0, $t0, $t1
	sw $t0, -3044($fp)
	lw $t0, -3028($fp)
	lw $t1, -3044($fp)
	sw $t0, 0($t1)
	lw $t0, -3044($fp)
	lw $t1, 0($t0)
	sw $t1, -3048($fp)
	li $t0, 45429
	sw $t0, -3052($fp)
	addi $t0, $fp, -324
	sw $t0, -3056($fp)
	li $t0, 7
	sw $t0, -3060($fp)
	lw $t0, -3060($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3064($fp)
	lw $t0, -3056($fp)
	lw $t1, -3064($fp)
	add $t0, $t0, $t1
	sw $t0, -3068($fp)
	lw $t0, -3052($fp)
	lw $t1, -3068($fp)
	sw $t0, 0($t1)
	lw $t0, -3068($fp)
	lw $t1, 0($t0)
	sw $t1, -3072($fp)
	li $t0, 29799
	sw $t0, -3076($fp)
	addi $t0, $fp, -324
	sw $t0, -3080($fp)
	li $t0, 8
	sw $t0, -3084($fp)
	lw $t0, -3084($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3088($fp)
	lw $t0, -3080($fp)
	lw $t1, -3088($fp)
	add $t0, $t0, $t1
	sw $t0, -3092($fp)
	lw $t0, -3076($fp)
	lw $t1, -3092($fp)
	sw $t0, 0($t1)
	lw $t0, -3092($fp)
	lw $t1, 0($t0)
	sw $t1, -3096($fp)
	li $t0, 7367
	sw $t0, -3100($fp)
	addi $t0, $fp, -324
	sw $t0, -3104($fp)
	li $t0, 9
	sw $t0, -3108($fp)
	lw $t0, -3108($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3112($fp)
	lw $t0, -3104($fp)
	lw $t1, -3112($fp)
	add $t0, $t0, $t1
	sw $t0, -3116($fp)
	lw $t0, -3100($fp)
	lw $t1, -3116($fp)
	sw $t0, 0($t1)
	lw $t0, -3116($fp)
	lw $t1, 0($t0)
	sw $t1, -3120($fp)
	li $t0, 19755
	sw $t0, -3124($fp)
	lw $t0, -3124($fp)
	sw $t0, -3128($fp)
	lw $t0, -3128($fp)
	sw $t0, -3132($fp)
	li $t0, 28077
	sw $t0, -3136($fp)
	lw $t0, -3136($fp)
	sw $t0, -3140($fp)
	lw $t0, -3140($fp)
	sw $t0, -3144($fp)
	addi $t0, $fp, -40
	sw $t0, -3148($fp)
	li $t0, 0
	sw $t0, -3152($fp)
	li $t0, 4
	lw $t1, -3152($fp)
	mul $t0, $t0, $t1
	sw $t0, -3156($fp)
	lw $t0, -3156($fp)
	lw $t1, -3148($fp)
	add $t0, $t0, $t1
	sw $t0, -3160($fp)
	lw $t0, -3160($fp)
	lw $t1, 0($t0)
	sw $t1, -3164($fp)
	lw $t0, -3164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -3168($fp)
	li $t0, 1
	sw $t0, -3172($fp)
	li $t0, 4
	lw $t1, -3172($fp)
	mul $t0, $t0, $t1
	sw $t0, -3176($fp)
	lw $t0, -3176($fp)
	lw $t1, -3168($fp)
	add $t0, $t0, $t1
	sw $t0, -3180($fp)
	lw $t0, -3180($fp)
	lw $t1, 0($t0)
	sw $t1, -3184($fp)
	lw $t0, -3184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -3188($fp)
	li $t0, 2
	sw $t0, -3192($fp)
	li $t0, 4
	lw $t1, -3192($fp)
	mul $t0, $t0, $t1
	sw $t0, -3196($fp)
	lw $t0, -3196($fp)
	lw $t1, -3188($fp)
	add $t0, $t0, $t1
	sw $t0, -3200($fp)
	lw $t0, -3200($fp)
	lw $t1, 0($t0)
	sw $t1, -3204($fp)
	lw $t0, -3204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -3208($fp)
	li $t0, 3
	sw $t0, -3212($fp)
	li $t0, 4
	lw $t1, -3212($fp)
	mul $t0, $t0, $t1
	sw $t0, -3216($fp)
	lw $t0, -3216($fp)
	lw $t1, -3208($fp)
	add $t0, $t0, $t1
	sw $t0, -3220($fp)
	lw $t0, -3220($fp)
	lw $t1, 0($t0)
	sw $t1, -3224($fp)
	lw $t0, -3224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -3228($fp)
	li $t0, 4
	sw $t0, -3232($fp)
	li $t0, 4
	lw $t1, -3232($fp)
	mul $t0, $t0, $t1
	sw $t0, -3236($fp)
	lw $t0, -3236($fp)
	lw $t1, -3228($fp)
	add $t0, $t0, $t1
	sw $t0, -3240($fp)
	lw $t0, -3240($fp)
	lw $t1, 0($t0)
	sw $t1, -3244($fp)
	lw $t0, -3244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -3248($fp)
	li $t0, 5
	sw $t0, -3252($fp)
	li $t0, 4
	lw $t1, -3252($fp)
	mul $t0, $t0, $t1
	sw $t0, -3256($fp)
	lw $t0, -3256($fp)
	lw $t1, -3248($fp)
	add $t0, $t0, $t1
	sw $t0, -3260($fp)
	lw $t0, -3260($fp)
	lw $t1, 0($t0)
	sw $t1, -3264($fp)
	lw $t0, -3264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -3268($fp)
	li $t0, 6
	sw $t0, -3272($fp)
	li $t0, 4
	lw $t1, -3272($fp)
	mul $t0, $t0, $t1
	sw $t0, -3276($fp)
	lw $t0, -3276($fp)
	lw $t1, -3268($fp)
	add $t0, $t0, $t1
	sw $t0, -3280($fp)
	lw $t0, -3280($fp)
	lw $t1, 0($t0)
	sw $t1, -3284($fp)
	lw $t0, -3284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -3288($fp)
	li $t0, 7
	sw $t0, -3292($fp)
	li $t0, 4
	lw $t1, -3292($fp)
	mul $t0, $t0, $t1
	sw $t0, -3296($fp)
	lw $t0, -3296($fp)
	lw $t1, -3288($fp)
	add $t0, $t0, $t1
	sw $t0, -3300($fp)
	lw $t0, -3300($fp)
	lw $t1, 0($t0)
	sw $t1, -3304($fp)
	lw $t0, -3304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -3308($fp)
	li $t0, 8
	sw $t0, -3312($fp)
	li $t0, 4
	lw $t1, -3312($fp)
	mul $t0, $t0, $t1
	sw $t0, -3316($fp)
	lw $t0, -3316($fp)
	lw $t1, -3308($fp)
	add $t0, $t0, $t1
	sw $t0, -3320($fp)
	lw $t0, -3320($fp)
	lw $t1, 0($t0)
	sw $t1, -3324($fp)
	lw $t0, -3324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -3328($fp)
	li $t0, 0
	sw $t0, -3332($fp)
	li $t0, 4
	lw $t1, -3332($fp)
	mul $t0, $t0, $t1
	sw $t0, -3336($fp)
	lw $t0, -3336($fp)
	lw $t1, -3328($fp)
	add $t0, $t0, $t1
	sw $t0, -3340($fp)
	lw $t0, -3340($fp)
	lw $t1, 0($t0)
	sw $t1, -3344($fp)
	lw $t0, -3344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -3348($fp)
	li $t0, 1
	sw $t0, -3352($fp)
	li $t0, 4
	lw $t1, -3352($fp)
	mul $t0, $t0, $t1
	sw $t0, -3356($fp)
	lw $t0, -3356($fp)
	lw $t1, -3348($fp)
	add $t0, $t0, $t1
	sw $t0, -3360($fp)
	lw $t0, -3360($fp)
	lw $t1, 0($t0)
	sw $t1, -3364($fp)
	lw $t0, -3364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -596($fp)
	sw $t0, -3368($fp)
	lw $t0, -3368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -608($fp)
	sw $t0, -3372($fp)
	lw $t0, -3372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -3376($fp)
	li $t0, 0
	sw $t0, -3380($fp)
	li $t0, 4
	lw $t1, -3380($fp)
	mul $t0, $t0, $t1
	sw $t0, -3384($fp)
	lw $t0, -3384($fp)
	lw $t1, -3376($fp)
	add $t0, $t0, $t1
	sw $t0, -3388($fp)
	lw $t0, -3388($fp)
	lw $t1, 0($t0)
	sw $t1, -3392($fp)
	lw $t0, -3392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -3396($fp)
	li $t0, 1
	sw $t0, -3400($fp)
	li $t0, 4
	lw $t1, -3400($fp)
	mul $t0, $t0, $t1
	sw $t0, -3404($fp)
	lw $t0, -3404($fp)
	lw $t1, -3396($fp)
	add $t0, $t0, $t1
	sw $t0, -3408($fp)
	lw $t0, -3408($fp)
	lw $t1, 0($t0)
	sw $t1, -3412($fp)
	lw $t0, -3412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -3416($fp)
	li $t0, 2
	sw $t0, -3420($fp)
	li $t0, 4
	lw $t1, -3420($fp)
	mul $t0, $t0, $t1
	sw $t0, -3424($fp)
	lw $t0, -3424($fp)
	lw $t1, -3416($fp)
	add $t0, $t0, $t1
	sw $t0, -3428($fp)
	lw $t0, -3428($fp)
	lw $t1, 0($t0)
	sw $t1, -3432($fp)
	lw $t0, -3432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -3436($fp)
	li $t0, 3
	sw $t0, -3440($fp)
	li $t0, 4
	lw $t1, -3440($fp)
	mul $t0, $t0, $t1
	sw $t0, -3444($fp)
	lw $t0, -3444($fp)
	lw $t1, -3436($fp)
	add $t0, $t0, $t1
	sw $t0, -3448($fp)
	lw $t0, -3448($fp)
	lw $t1, 0($t0)
	sw $t1, -3452($fp)
	lw $t0, -3452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -3456($fp)
	li $t0, 4
	sw $t0, -3460($fp)
	li $t0, 4
	lw $t1, -3460($fp)
	mul $t0, $t0, $t1
	sw $t0, -3464($fp)
	lw $t0, -3464($fp)
	lw $t1, -3456($fp)
	add $t0, $t0, $t1
	sw $t0, -3468($fp)
	lw $t0, -3468($fp)
	lw $t1, 0($t0)
	sw $t1, -3472($fp)
	lw $t0, -3472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -3476($fp)
	li $t0, 5
	sw $t0, -3480($fp)
	li $t0, 4
	lw $t1, -3480($fp)
	mul $t0, $t0, $t1
	sw $t0, -3484($fp)
	lw $t0, -3484($fp)
	lw $t1, -3476($fp)
	add $t0, $t0, $t1
	sw $t0, -3488($fp)
	lw $t0, -3488($fp)
	lw $t1, 0($t0)
	sw $t1, -3492($fp)
	lw $t0, -3492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -764($fp)
	sw $t0, -3496($fp)
	lw $t0, -3496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -776($fp)
	sw $t0, -3500($fp)
	lw $t0, -3500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -788($fp)
	sw $t0, -3504($fp)
	lw $t0, -3504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -800($fp)
	sw $t0, -3508($fp)
	lw $t0, -3508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -812($fp)
	sw $t0, -3512($fp)
	lw $t0, -3512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -824($fp)
	sw $t0, -3516($fp)
	lw $t0, -3516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -836($fp)
	sw $t0, -3520($fp)
	lw $t0, -3520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -848($fp)
	sw $t0, -3524($fp)
	lw $t0, -3524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -860($fp)
	sw $t0, -3528($fp)
	lw $t0, -3528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -872($fp)
	sw $t0, -3532($fp)
	lw $t0, -3532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -884($fp)
	sw $t0, -3536($fp)
	lw $t0, -3536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -896($fp)
	sw $t0, -3540($fp)
	lw $t0, -3540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -908($fp)
	sw $t0, -3544($fp)
	lw $t0, -3544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -3548($fp)
	li $t0, 0
	sw $t0, -3552($fp)
	li $t0, 4
	lw $t1, -3552($fp)
	mul $t0, $t0, $t1
	sw $t0, -3556($fp)
	lw $t0, -3556($fp)
	lw $t1, -3548($fp)
	add $t0, $t0, $t1
	sw $t0, -3560($fp)
	lw $t0, -3560($fp)
	lw $t1, 0($t0)
	sw $t1, -3564($fp)
	lw $t0, -3564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -3568($fp)
	li $t0, 1
	sw $t0, -3572($fp)
	li $t0, 4
	lw $t1, -3572($fp)
	mul $t0, $t0, $t1
	sw $t0, -3576($fp)
	lw $t0, -3576($fp)
	lw $t1, -3568($fp)
	add $t0, $t0, $t1
	sw $t0, -3580($fp)
	lw $t0, -3580($fp)
	lw $t1, 0($t0)
	sw $t1, -3584($fp)
	lw $t0, -3584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -3588($fp)
	li $t0, 2
	sw $t0, -3592($fp)
	li $t0, 4
	lw $t1, -3592($fp)
	mul $t0, $t0, $t1
	sw $t0, -3596($fp)
	lw $t0, -3596($fp)
	lw $t1, -3588($fp)
	add $t0, $t0, $t1
	sw $t0, -3600($fp)
	lw $t0, -3600($fp)
	lw $t1, 0($t0)
	sw $t1, -3604($fp)
	lw $t0, -3604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -992($fp)
	sw $t0, -3608($fp)
	lw $t0, -3608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1004($fp)
	sw $t0, -3612($fp)
	lw $t0, -3612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -3616($fp)
	li $t0, 0
	sw $t0, -3620($fp)
	li $t0, 4
	lw $t1, -3620($fp)
	mul $t0, $t0, $t1
	sw $t0, -3624($fp)
	lw $t0, -3624($fp)
	lw $t1, -3616($fp)
	add $t0, $t0, $t1
	sw $t0, -3628($fp)
	lw $t0, -3628($fp)
	lw $t1, 0($t0)
	sw $t1, -3632($fp)
	lw $t0, -3632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -3636($fp)
	li $t0, 1
	sw $t0, -3640($fp)
	li $t0, 4
	lw $t1, -3640($fp)
	mul $t0, $t0, $t1
	sw $t0, -3644($fp)
	lw $t0, -3644($fp)
	lw $t1, -3636($fp)
	add $t0, $t0, $t1
	sw $t0, -3648($fp)
	lw $t0, -3648($fp)
	lw $t1, 0($t0)
	sw $t1, -3652($fp)
	lw $t0, -3652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -3656($fp)
	li $t0, 2
	sw $t0, -3660($fp)
	li $t0, 4
	lw $t1, -3660($fp)
	mul $t0, $t0, $t1
	sw $t0, -3664($fp)
	lw $t0, -3664($fp)
	lw $t1, -3656($fp)
	add $t0, $t0, $t1
	sw $t0, -3668($fp)
	lw $t0, -3668($fp)
	lw $t1, 0($t0)
	sw $t1, -3672($fp)
	lw $t0, -3672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -3676($fp)
	li $t0, 3
	sw $t0, -3680($fp)
	li $t0, 4
	lw $t1, -3680($fp)
	mul $t0, $t0, $t1
	sw $t0, -3684($fp)
	lw $t0, -3684($fp)
	lw $t1, -3676($fp)
	add $t0, $t0, $t1
	sw $t0, -3688($fp)
	lw $t0, -3688($fp)
	lw $t1, 0($t0)
	sw $t1, -3692($fp)
	lw $t0, -3692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -3696($fp)
	li $t0, 4
	sw $t0, -3700($fp)
	li $t0, 4
	lw $t1, -3700($fp)
	mul $t0, $t0, $t1
	sw $t0, -3704($fp)
	lw $t0, -3704($fp)
	lw $t1, -3696($fp)
	add $t0, $t0, $t1
	sw $t0, -3708($fp)
	lw $t0, -3708($fp)
	lw $t1, 0($t0)
	sw $t1, -3712($fp)
	lw $t0, -3712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1136($fp)
	sw $t0, -3716($fp)
	lw $t0, -3716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1148($fp)
	sw $t0, -3720($fp)
	lw $t0, -3720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1160($fp)
	sw $t0, -3724($fp)
	lw $t0, -3724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1172($fp)
	sw $t0, -3728($fp)
	lw $t0, -3728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1184($fp)
	sw $t0, -3732($fp)
	lw $t0, -3732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1196($fp)
	sw $t0, -3736($fp)
	lw $t0, -3736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1208($fp)
	sw $t0, -3740($fp)
	lw $t0, -3740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1220($fp)
	sw $t0, -3744($fp)
	lw $t0, -3744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1232($fp)
	sw $t0, -3748($fp)
	lw $t0, -3748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1244($fp)
	sw $t0, -3752($fp)
	lw $t0, -3752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1256($fp)
	sw $t0, -3756($fp)
	lw $t0, -3756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1268($fp)
	sw $t0, -3760($fp)
	lw $t0, -3760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -3764($fp)
	li $t0, 0
	sw $t0, -3768($fp)
	li $t0, 4
	lw $t1, -3768($fp)
	mul $t0, $t0, $t1
	sw $t0, -3772($fp)
	lw $t0, -3772($fp)
	lw $t1, -3764($fp)
	add $t0, $t0, $t1
	sw $t0, -3776($fp)
	lw $t0, -3776($fp)
	lw $t1, 0($t0)
	sw $t1, -3780($fp)
	lw $t0, -3780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -3784($fp)
	li $t0, 1
	sw $t0, -3788($fp)
	li $t0, 4
	lw $t1, -3788($fp)
	mul $t0, $t0, $t1
	sw $t0, -3792($fp)
	lw $t0, -3792($fp)
	lw $t1, -3784($fp)
	add $t0, $t0, $t1
	sw $t0, -3796($fp)
	lw $t0, -3796($fp)
	lw $t1, 0($t0)
	sw $t1, -3800($fp)
	lw $t0, -3800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -3804($fp)
	li $t0, 2
	sw $t0, -3808($fp)
	li $t0, 4
	lw $t1, -3808($fp)
	mul $t0, $t0, $t1
	sw $t0, -3812($fp)
	lw $t0, -3812($fp)
	lw $t1, -3804($fp)
	add $t0, $t0, $t1
	sw $t0, -3816($fp)
	lw $t0, -3816($fp)
	lw $t1, 0($t0)
	sw $t1, -3820($fp)
	lw $t0, -3820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -3824($fp)
	li $t0, 3
	sw $t0, -3828($fp)
	li $t0, 4
	lw $t1, -3828($fp)
	mul $t0, $t0, $t1
	sw $t0, -3832($fp)
	lw $t0, -3832($fp)
	lw $t1, -3824($fp)
	add $t0, $t0, $t1
	sw $t0, -3836($fp)
	lw $t0, -3836($fp)
	lw $t1, 0($t0)
	sw $t1, -3840($fp)
	lw $t0, -3840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -3844($fp)
	li $t0, 4
	sw $t0, -3848($fp)
	li $t0, 4
	lw $t1, -3848($fp)
	mul $t0, $t0, $t1
	sw $t0, -3852($fp)
	lw $t0, -3852($fp)
	lw $t1, -3844($fp)
	add $t0, $t0, $t1
	sw $t0, -3856($fp)
	lw $t0, -3856($fp)
	lw $t1, 0($t0)
	sw $t1, -3860($fp)
	lw $t0, -3860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -3864($fp)
	li $t0, 5
	sw $t0, -3868($fp)
	li $t0, 4
	lw $t1, -3868($fp)
	mul $t0, $t0, $t1
	sw $t0, -3872($fp)
	lw $t0, -3872($fp)
	lw $t1, -3864($fp)
	add $t0, $t0, $t1
	sw $t0, -3876($fp)
	lw $t0, -3876($fp)
	lw $t1, 0($t0)
	sw $t1, -3880($fp)
	lw $t0, -3880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -3884($fp)
	li $t0, 6
	sw $t0, -3888($fp)
	li $t0, 4
	lw $t1, -3888($fp)
	mul $t0, $t0, $t1
	sw $t0, -3892($fp)
	lw $t0, -3892($fp)
	lw $t1, -3884($fp)
	add $t0, $t0, $t1
	sw $t0, -3896($fp)
	lw $t0, -3896($fp)
	lw $t1, 0($t0)
	sw $t1, -3900($fp)
	lw $t0, -3900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -3904($fp)
	li $t0, 7
	sw $t0, -3908($fp)
	li $t0, 4
	lw $t1, -3908($fp)
	mul $t0, $t0, $t1
	sw $t0, -3912($fp)
	lw $t0, -3912($fp)
	lw $t1, -3904($fp)
	add $t0, $t0, $t1
	sw $t0, -3916($fp)
	lw $t0, -3916($fp)
	lw $t1, 0($t0)
	sw $t1, -3920($fp)
	lw $t0, -3920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -3924($fp)
	li $t0, 8
	sw $t0, -3928($fp)
	li $t0, 4
	lw $t1, -3928($fp)
	mul $t0, $t0, $t1
	sw $t0, -3932($fp)
	lw $t0, -3932($fp)
	lw $t1, -3924($fp)
	add $t0, $t0, $t1
	sw $t0, -3936($fp)
	lw $t0, -3936($fp)
	lw $t1, 0($t0)
	sw $t1, -3940($fp)
	lw $t0, -3940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1496($fp)
	sw $t0, -3944($fp)
	lw $t0, -3944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1508($fp)
	sw $t0, -3948($fp)
	lw $t0, -3948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1520($fp)
	sw $t0, -3952($fp)
	lw $t0, -3952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1532($fp)
	sw $t0, -3956($fp)
	lw $t0, -3956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1544($fp)
	sw $t0, -3960($fp)
	lw $t0, -3960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1556($fp)
	sw $t0, -3964($fp)
	lw $t0, -3964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1568($fp)
	sw $t0, -3968($fp)
	lw $t0, -3968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -3972($fp)
	li $t0, 0
	sw $t0, -3976($fp)
	li $t0, 4
	lw $t1, -3976($fp)
	mul $t0, $t0, $t1
	sw $t0, -3980($fp)
	lw $t0, -3980($fp)
	lw $t1, -3972($fp)
	add $t0, $t0, $t1
	sw $t0, -3984($fp)
	lw $t0, -3984($fp)
	lw $t1, 0($t0)
	sw $t1, -3988($fp)
	lw $t0, -3988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -3992($fp)
	li $t0, 1
	sw $t0, -3996($fp)
	li $t0, 4
	lw $t1, -3996($fp)
	mul $t0, $t0, $t1
	sw $t0, -4000($fp)
	lw $t0, -4000($fp)
	lw $t1, -3992($fp)
	add $t0, $t0, $t1
	sw $t0, -4004($fp)
	lw $t0, -4004($fp)
	lw $t1, 0($t0)
	sw $t1, -4008($fp)
	lw $t0, -4008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -4012($fp)
	li $t0, 2
	sw $t0, -4016($fp)
	li $t0, 4
	lw $t1, -4016($fp)
	mul $t0, $t0, $t1
	sw $t0, -4020($fp)
	lw $t0, -4020($fp)
	lw $t1, -4012($fp)
	add $t0, $t0, $t1
	sw $t0, -4024($fp)
	lw $t0, -4024($fp)
	lw $t1, 0($t0)
	sw $t1, -4028($fp)
	lw $t0, -4028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -4032($fp)
	li $t0, 3
	sw $t0, -4036($fp)
	li $t0, 4
	lw $t1, -4036($fp)
	mul $t0, $t0, $t1
	sw $t0, -4040($fp)
	lw $t0, -4040($fp)
	lw $t1, -4032($fp)
	add $t0, $t0, $t1
	sw $t0, -4044($fp)
	lw $t0, -4044($fp)
	lw $t1, 0($t0)
	sw $t1, -4048($fp)
	lw $t0, -4048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -4052($fp)
	li $t0, 4
	sw $t0, -4056($fp)
	li $t0, 4
	lw $t1, -4056($fp)
	mul $t0, $t0, $t1
	sw $t0, -4060($fp)
	lw $t0, -4060($fp)
	lw $t1, -4052($fp)
	add $t0, $t0, $t1
	sw $t0, -4064($fp)
	lw $t0, -4064($fp)
	lw $t1, 0($t0)
	sw $t1, -4068($fp)
	lw $t0, -4068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -4072($fp)
	li $t0, 5
	sw $t0, -4076($fp)
	li $t0, 4
	lw $t1, -4076($fp)
	mul $t0, $t0, $t1
	sw $t0, -4080($fp)
	lw $t0, -4080($fp)
	lw $t1, -4072($fp)
	add $t0, $t0, $t1
	sw $t0, -4084($fp)
	lw $t0, -4084($fp)
	lw $t1, 0($t0)
	sw $t1, -4088($fp)
	lw $t0, -4088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -4092($fp)
	li $t0, 6
	sw $t0, -4096($fp)
	li $t0, 4
	lw $t1, -4096($fp)
	mul $t0, $t0, $t1
	sw $t0, -4100($fp)
	lw $t0, -4100($fp)
	lw $t1, -4092($fp)
	add $t0, $t0, $t1
	sw $t0, -4104($fp)
	lw $t0, -4104($fp)
	lw $t1, 0($t0)
	sw $t1, -4108($fp)
	lw $t0, -4108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -4112($fp)
	li $t0, 7
	sw $t0, -4116($fp)
	li $t0, 4
	lw $t1, -4116($fp)
	mul $t0, $t0, $t1
	sw $t0, -4120($fp)
	lw $t0, -4120($fp)
	lw $t1, -4112($fp)
	add $t0, $t0, $t1
	sw $t0, -4124($fp)
	lw $t0, -4124($fp)
	lw $t1, 0($t0)
	sw $t1, -4128($fp)
	lw $t0, -4128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -4132($fp)
	li $t0, 8
	sw $t0, -4136($fp)
	li $t0, 4
	lw $t1, -4136($fp)
	mul $t0, $t0, $t1
	sw $t0, -4140($fp)
	lw $t0, -4140($fp)
	lw $t1, -4132($fp)
	add $t0, $t0, $t1
	sw $t0, -4144($fp)
	lw $t0, -4144($fp)
	lw $t1, 0($t0)
	sw $t1, -4148($fp)
	lw $t0, -4148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1796($fp)
	sw $t0, -4152($fp)
	lw $t0, -4152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1808($fp)
	sw $t0, -4156($fp)
	lw $t0, -4156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1820($fp)
	sw $t0, -4160($fp)
	lw $t0, -4160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1832($fp)
	sw $t0, -4164($fp)
	lw $t0, -4164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -4168($fp)
	li $t0, 0
	sw $t0, -4172($fp)
	li $t0, 4
	lw $t1, -4172($fp)
	mul $t0, $t0, $t1
	sw $t0, -4176($fp)
	lw $t0, -4176($fp)
	lw $t1, -4168($fp)
	add $t0, $t0, $t1
	sw $t0, -4180($fp)
	lw $t0, -4180($fp)
	lw $t1, 0($t0)
	sw $t1, -4184($fp)
	lw $t0, -4184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -4188($fp)
	li $t0, 1
	sw $t0, -4192($fp)
	li $t0, 4
	lw $t1, -4192($fp)
	mul $t0, $t0, $t1
	sw $t0, -4196($fp)
	lw $t0, -4196($fp)
	lw $t1, -4188($fp)
	add $t0, $t0, $t1
	sw $t0, -4200($fp)
	lw $t0, -4200($fp)
	lw $t1, 0($t0)
	sw $t1, -4204($fp)
	lw $t0, -4204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -4208($fp)
	li $t0, 2
	sw $t0, -4212($fp)
	li $t0, 4
	lw $t1, -4212($fp)
	mul $t0, $t0, $t1
	sw $t0, -4216($fp)
	lw $t0, -4216($fp)
	lw $t1, -4208($fp)
	add $t0, $t0, $t1
	sw $t0, -4220($fp)
	lw $t0, -4220($fp)
	lw $t1, 0($t0)
	sw $t1, -4224($fp)
	lw $t0, -4224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1916($fp)
	sw $t0, -4228($fp)
	lw $t0, -4228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1928($fp)
	sw $t0, -4232($fp)
	lw $t0, -4232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1940($fp)
	sw $t0, -4236($fp)
	lw $t0, -4236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1952($fp)
	sw $t0, -4240($fp)
	lw $t0, -4240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1964($fp)
	sw $t0, -4244($fp)
	lw $t0, -4244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1976($fp)
	sw $t0, -4248($fp)
	lw $t0, -4248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1988($fp)
	sw $t0, -4252($fp)
	lw $t0, -4252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2000($fp)
	sw $t0, -4256($fp)
	lw $t0, -4256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -4260($fp)
	li $t0, 0
	sw $t0, -4264($fp)
	li $t0, 4
	lw $t1, -4264($fp)
	mul $t0, $t0, $t1
	sw $t0, -4268($fp)
	lw $t0, -4268($fp)
	lw $t1, -4260($fp)
	add $t0, $t0, $t1
	sw $t0, -4272($fp)
	lw $t0, -4272($fp)
	lw $t1, 0($t0)
	sw $t1, -4276($fp)
	lw $t0, -4276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -4280($fp)
	li $t0, 1
	sw $t0, -4284($fp)
	li $t0, 4
	lw $t1, -4284($fp)
	mul $t0, $t0, $t1
	sw $t0, -4288($fp)
	lw $t0, -4288($fp)
	lw $t1, -4280($fp)
	add $t0, $t0, $t1
	sw $t0, -4292($fp)
	lw $t0, -4292($fp)
	lw $t1, 0($t0)
	sw $t1, -4296($fp)
	lw $t0, -4296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -4300($fp)
	li $t0, 2
	sw $t0, -4304($fp)
	li $t0, 4
	lw $t1, -4304($fp)
	mul $t0, $t0, $t1
	sw $t0, -4308($fp)
	lw $t0, -4308($fp)
	lw $t1, -4300($fp)
	add $t0, $t0, $t1
	sw $t0, -4312($fp)
	lw $t0, -4312($fp)
	lw $t1, 0($t0)
	sw $t1, -4316($fp)
	lw $t0, -4316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -4320($fp)
	li $t0, 3
	sw $t0, -4324($fp)
	li $t0, 4
	lw $t1, -4324($fp)
	mul $t0, $t0, $t1
	sw $t0, -4328($fp)
	lw $t0, -4328($fp)
	lw $t1, -4320($fp)
	add $t0, $t0, $t1
	sw $t0, -4332($fp)
	lw $t0, -4332($fp)
	lw $t1, 0($t0)
	sw $t1, -4336($fp)
	lw $t0, -4336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -4340($fp)
	li $t0, 4
	sw $t0, -4344($fp)
	li $t0, 4
	lw $t1, -4344($fp)
	mul $t0, $t0, $t1
	sw $t0, -4348($fp)
	lw $t0, -4348($fp)
	lw $t1, -4340($fp)
	add $t0, $t0, $t1
	sw $t0, -4352($fp)
	lw $t0, -4352($fp)
	lw $t1, 0($t0)
	sw $t1, -4356($fp)
	lw $t0, -4356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -4360($fp)
	li $t0, 5
	sw $t0, -4364($fp)
	li $t0, 4
	lw $t1, -4364($fp)
	mul $t0, $t0, $t1
	sw $t0, -4368($fp)
	lw $t0, -4368($fp)
	lw $t1, -4360($fp)
	add $t0, $t0, $t1
	sw $t0, -4372($fp)
	lw $t0, -4372($fp)
	lw $t1, 0($t0)
	sw $t1, -4376($fp)
	lw $t0, -4376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -4380($fp)
	li $t0, 6
	sw $t0, -4384($fp)
	li $t0, 4
	lw $t1, -4384($fp)
	mul $t0, $t0, $t1
	sw $t0, -4388($fp)
	lw $t0, -4388($fp)
	lw $t1, -4380($fp)
	add $t0, $t0, $t1
	sw $t0, -4392($fp)
	lw $t0, -4392($fp)
	lw $t1, 0($t0)
	sw $t1, -4396($fp)
	lw $t0, -4396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -4400($fp)
	li $t0, 7
	sw $t0, -4404($fp)
	li $t0, 4
	lw $t1, -4404($fp)
	mul $t0, $t0, $t1
	sw $t0, -4408($fp)
	lw $t0, -4408($fp)
	lw $t1, -4400($fp)
	add $t0, $t0, $t1
	sw $t0, -4412($fp)
	lw $t0, -4412($fp)
	lw $t1, 0($t0)
	sw $t1, -4416($fp)
	lw $t0, -4416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -4420($fp)
	li $t0, 8
	sw $t0, -4424($fp)
	li $t0, 4
	lw $t1, -4424($fp)
	mul $t0, $t0, $t1
	sw $t0, -4428($fp)
	lw $t0, -4428($fp)
	lw $t1, -4420($fp)
	add $t0, $t0, $t1
	sw $t0, -4432($fp)
	lw $t0, -4432($fp)
	lw $t1, 0($t0)
	sw $t1, -4436($fp)
	lw $t0, -4436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2228($fp)
	sw $t0, -4440($fp)
	lw $t0, -4440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -4444($fp)
	li $t0, 0
	sw $t0, -4448($fp)
	li $t0, 4
	lw $t1, -4448($fp)
	mul $t0, $t0, $t1
	sw $t0, -4452($fp)
	lw $t0, -4452($fp)
	lw $t1, -4444($fp)
	add $t0, $t0, $t1
	sw $t0, -4456($fp)
	lw $t0, -4456($fp)
	lw $t1, 0($t0)
	sw $t1, -4460($fp)
	lw $t0, -4460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -4464($fp)
	li $t0, 1
	sw $t0, -4468($fp)
	li $t0, 4
	lw $t1, -4468($fp)
	mul $t0, $t0, $t1
	sw $t0, -4472($fp)
	lw $t0, -4472($fp)
	lw $t1, -4464($fp)
	add $t0, $t0, $t1
	sw $t0, -4476($fp)
	lw $t0, -4476($fp)
	lw $t1, 0($t0)
	sw $t1, -4480($fp)
	lw $t0, -4480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -4484($fp)
	li $t0, 2
	sw $t0, -4488($fp)
	li $t0, 4
	lw $t1, -4488($fp)
	mul $t0, $t0, $t1
	sw $t0, -4492($fp)
	lw $t0, -4492($fp)
	lw $t1, -4484($fp)
	add $t0, $t0, $t1
	sw $t0, -4496($fp)
	lw $t0, -4496($fp)
	lw $t1, 0($t0)
	sw $t1, -4500($fp)
	lw $t0, -4500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -4504($fp)
	li $t0, 3
	sw $t0, -4508($fp)
	li $t0, 4
	lw $t1, -4508($fp)
	mul $t0, $t0, $t1
	sw $t0, -4512($fp)
	lw $t0, -4512($fp)
	lw $t1, -4504($fp)
	add $t0, $t0, $t1
	sw $t0, -4516($fp)
	lw $t0, -4516($fp)
	lw $t1, 0($t0)
	sw $t1, -4520($fp)
	lw $t0, -4520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -4524($fp)
	li $t0, 4
	sw $t0, -4528($fp)
	li $t0, 4
	lw $t1, -4528($fp)
	mul $t0, $t0, $t1
	sw $t0, -4532($fp)
	lw $t0, -4532($fp)
	lw $t1, -4524($fp)
	add $t0, $t0, $t1
	sw $t0, -4536($fp)
	lw $t0, -4536($fp)
	lw $t1, 0($t0)
	sw $t1, -4540($fp)
	lw $t0, -4540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -4544($fp)
	li $t0, 5
	sw $t0, -4548($fp)
	li $t0, 4
	lw $t1, -4548($fp)
	mul $t0, $t0, $t1
	sw $t0, -4552($fp)
	lw $t0, -4552($fp)
	lw $t1, -4544($fp)
	add $t0, $t0, $t1
	sw $t0, -4556($fp)
	lw $t0, -4556($fp)
	lw $t1, 0($t0)
	sw $t1, -4560($fp)
	lw $t0, -4560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -4564($fp)
	li $t0, 6
	sw $t0, -4568($fp)
	li $t0, 4
	lw $t1, -4568($fp)
	mul $t0, $t0, $t1
	sw $t0, -4572($fp)
	lw $t0, -4572($fp)
	lw $t1, -4564($fp)
	add $t0, $t0, $t1
	sw $t0, -4576($fp)
	lw $t0, -4576($fp)
	lw $t1, 0($t0)
	sw $t1, -4580($fp)
	lw $t0, -4580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2408($fp)
	sw $t0, -4584($fp)
	lw $t0, -4584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2420($fp)
	sw $t0, -4588($fp)
	lw $t0, -4588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2432($fp)
	sw $t0, -4592($fp)
	lw $t0, -4592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2444($fp)
	sw $t0, -4596($fp)
	lw $t0, -4596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2456($fp)
	sw $t0, -4600($fp)
	lw $t0, -4600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2468($fp)
	sw $t0, -4604($fp)
	lw $t0, -4604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2480($fp)
	sw $t0, -4608($fp)
	lw $t0, -4608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2492($fp)
	sw $t0, -4612($fp)
	lw $t0, -4612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2504($fp)
	sw $t0, -4616($fp)
	lw $t0, -4616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2516($fp)
	sw $t0, -4620($fp)
	lw $t0, -4620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2528($fp)
	sw $t0, -4624($fp)
	lw $t0, -4624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2540($fp)
	sw $t0, -4628($fp)
	lw $t0, -4628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -256
	sw $t0, -4632($fp)
	li $t0, 0
	sw $t0, -4636($fp)
	li $t0, 4
	lw $t1, -4636($fp)
	mul $t0, $t0, $t1
	sw $t0, -4640($fp)
	lw $t0, -4640($fp)
	lw $t1, -4632($fp)
	add $t0, $t0, $t1
	sw $t0, -4644($fp)
	lw $t0, -4644($fp)
	lw $t1, 0($t0)
	sw $t1, -4648($fp)
	lw $t0, -4648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2576($fp)
	sw $t0, -4652($fp)
	lw $t0, -4652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2588($fp)
	sw $t0, -4656($fp)
	lw $t0, -4656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2600($fp)
	sw $t0, -4660($fp)
	lw $t0, -4660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2612($fp)
	sw $t0, -4664($fp)
	lw $t0, -4664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -264
	sw $t0, -4668($fp)
	li $t0, 0
	sw $t0, -4672($fp)
	li $t0, 4
	lw $t1, -4672($fp)
	mul $t0, $t0, $t1
	sw $t0, -4676($fp)
	lw $t0, -4676($fp)
	lw $t1, -4668($fp)
	add $t0, $t0, $t1
	sw $t0, -4680($fp)
	lw $t0, -4680($fp)
	lw $t1, 0($t0)
	sw $t1, -4684($fp)
	lw $t0, -4684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -264
	sw $t0, -4688($fp)
	li $t0, 1
	sw $t0, -4692($fp)
	li $t0, 4
	lw $t1, -4692($fp)
	mul $t0, $t0, $t1
	sw $t0, -4696($fp)
	lw $t0, -4696($fp)
	lw $t1, -4688($fp)
	add $t0, $t0, $t1
	sw $t0, -4700($fp)
	lw $t0, -4700($fp)
	lw $t1, 0($t0)
	sw $t1, -4704($fp)
	lw $t0, -4704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2672($fp)
	sw $t0, -4708($fp)
	lw $t0, -4708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2684($fp)
	sw $t0, -4712($fp)
	lw $t0, -4712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2696($fp)
	sw $t0, -4716($fp)
	lw $t0, -4716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2708($fp)
	sw $t0, -4720($fp)
	lw $t0, -4720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2720($fp)
	sw $t0, -4724($fp)
	lw $t0, -4724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2732($fp)
	sw $t0, -4728($fp)
	lw $t0, -4728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2744($fp)
	sw $t0, -4732($fp)
	lw $t0, -4732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -284
	sw $t0, -4736($fp)
	li $t0, 0
	sw $t0, -4740($fp)
	li $t0, 4
	lw $t1, -4740($fp)
	mul $t0, $t0, $t1
	sw $t0, -4744($fp)
	lw $t0, -4744($fp)
	lw $t1, -4736($fp)
	add $t0, $t0, $t1
	sw $t0, -4748($fp)
	lw $t0, -4748($fp)
	lw $t1, 0($t0)
	sw $t1, -4752($fp)
	lw $t0, -4752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -284
	sw $t0, -4756($fp)
	li $t0, 1
	sw $t0, -4760($fp)
	li $t0, 4
	lw $t1, -4760($fp)
	mul $t0, $t0, $t1
	sw $t0, -4764($fp)
	lw $t0, -4764($fp)
	lw $t1, -4756($fp)
	add $t0, $t0, $t1
	sw $t0, -4768($fp)
	lw $t0, -4768($fp)
	lw $t1, 0($t0)
	sw $t1, -4772($fp)
	lw $t0, -4772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -284
	sw $t0, -4776($fp)
	li $t0, 2
	sw $t0, -4780($fp)
	li $t0, 4
	lw $t1, -4780($fp)
	mul $t0, $t0, $t1
	sw $t0, -4784($fp)
	lw $t0, -4784($fp)
	lw $t1, -4776($fp)
	add $t0, $t0, $t1
	sw $t0, -4788($fp)
	lw $t0, -4788($fp)
	lw $t1, 0($t0)
	sw $t1, -4792($fp)
	lw $t0, -4792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -284
	sw $t0, -4796($fp)
	li $t0, 3
	sw $t0, -4800($fp)
	li $t0, 4
	lw $t1, -4800($fp)
	mul $t0, $t0, $t1
	sw $t0, -4804($fp)
	lw $t0, -4804($fp)
	lw $t1, -4796($fp)
	add $t0, $t0, $t1
	sw $t0, -4808($fp)
	lw $t0, -4808($fp)
	lw $t1, 0($t0)
	sw $t1, -4812($fp)
	lw $t0, -4812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -284
	sw $t0, -4816($fp)
	li $t0, 4
	sw $t0, -4820($fp)
	li $t0, 4
	lw $t1, -4820($fp)
	mul $t0, $t0, $t1
	sw $t0, -4824($fp)
	lw $t0, -4824($fp)
	lw $t1, -4816($fp)
	add $t0, $t0, $t1
	sw $t0, -4828($fp)
	lw $t0, -4828($fp)
	lw $t1, 0($t0)
	sw $t1, -4832($fp)
	lw $t0, -4832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2876($fp)
	sw $t0, -4836($fp)
	lw $t0, -4836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -4840($fp)
	li $t0, 0
	sw $t0, -4844($fp)
	li $t0, 4
	lw $t1, -4844($fp)
	mul $t0, $t0, $t1
	sw $t0, -4848($fp)
	lw $t0, -4848($fp)
	lw $t1, -4840($fp)
	add $t0, $t0, $t1
	sw $t0, -4852($fp)
	lw $t0, -4852($fp)
	lw $t1, 0($t0)
	sw $t1, -4856($fp)
	lw $t0, -4856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -4860($fp)
	li $t0, 1
	sw $t0, -4864($fp)
	li $t0, 4
	lw $t1, -4864($fp)
	mul $t0, $t0, $t1
	sw $t0, -4868($fp)
	lw $t0, -4868($fp)
	lw $t1, -4860($fp)
	add $t0, $t0, $t1
	sw $t0, -4872($fp)
	lw $t0, -4872($fp)
	lw $t1, 0($t0)
	sw $t1, -4876($fp)
	lw $t0, -4876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -4880($fp)
	li $t0, 2
	sw $t0, -4884($fp)
	li $t0, 4
	lw $t1, -4884($fp)
	mul $t0, $t0, $t1
	sw $t0, -4888($fp)
	lw $t0, -4888($fp)
	lw $t1, -4880($fp)
	add $t0, $t0, $t1
	sw $t0, -4892($fp)
	lw $t0, -4892($fp)
	lw $t1, 0($t0)
	sw $t1, -4896($fp)
	lw $t0, -4896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -4900($fp)
	li $t0, 3
	sw $t0, -4904($fp)
	li $t0, 4
	lw $t1, -4904($fp)
	mul $t0, $t0, $t1
	sw $t0, -4908($fp)
	lw $t0, -4908($fp)
	lw $t1, -4900($fp)
	add $t0, $t0, $t1
	sw $t0, -4912($fp)
	lw $t0, -4912($fp)
	lw $t1, 0($t0)
	sw $t1, -4916($fp)
	lw $t0, -4916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -4920($fp)
	li $t0, 4
	sw $t0, -4924($fp)
	li $t0, 4
	lw $t1, -4924($fp)
	mul $t0, $t0, $t1
	sw $t0, -4928($fp)
	lw $t0, -4928($fp)
	lw $t1, -4920($fp)
	add $t0, $t0, $t1
	sw $t0, -4932($fp)
	lw $t0, -4932($fp)
	lw $t1, 0($t0)
	sw $t1, -4936($fp)
	lw $t0, -4936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -4940($fp)
	li $t0, 5
	sw $t0, -4944($fp)
	li $t0, 4
	lw $t1, -4944($fp)
	mul $t0, $t0, $t1
	sw $t0, -4948($fp)
	lw $t0, -4948($fp)
	lw $t1, -4940($fp)
	add $t0, $t0, $t1
	sw $t0, -4952($fp)
	lw $t0, -4952($fp)
	lw $t1, 0($t0)
	sw $t1, -4956($fp)
	lw $t0, -4956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -4960($fp)
	li $t0, 6
	sw $t0, -4964($fp)
	li $t0, 4
	lw $t1, -4964($fp)
	mul $t0, $t0, $t1
	sw $t0, -4968($fp)
	lw $t0, -4968($fp)
	lw $t1, -4960($fp)
	add $t0, $t0, $t1
	sw $t0, -4972($fp)
	lw $t0, -4972($fp)
	lw $t1, 0($t0)
	sw $t1, -4976($fp)
	lw $t0, -4976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -4980($fp)
	li $t0, 7
	sw $t0, -4984($fp)
	li $t0, 4
	lw $t1, -4984($fp)
	mul $t0, $t0, $t1
	sw $t0, -4988($fp)
	lw $t0, -4988($fp)
	lw $t1, -4980($fp)
	add $t0, $t0, $t1
	sw $t0, -4992($fp)
	lw $t0, -4992($fp)
	lw $t1, 0($t0)
	sw $t1, -4996($fp)
	lw $t0, -4996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -5000($fp)
	li $t0, 8
	sw $t0, -5004($fp)
	li $t0, 4
	lw $t1, -5004($fp)
	mul $t0, $t0, $t1
	sw $t0, -5008($fp)
	lw $t0, -5008($fp)
	lw $t1, -5000($fp)
	add $t0, $t0, $t1
	sw $t0, -5012($fp)
	lw $t0, -5012($fp)
	lw $t1, 0($t0)
	sw $t1, -5016($fp)
	lw $t0, -5016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -5020($fp)
	li $t0, 9
	sw $t0, -5024($fp)
	li $t0, 4
	lw $t1, -5024($fp)
	mul $t0, $t0, $t1
	sw $t0, -5028($fp)
	lw $t0, -5028($fp)
	lw $t1, -5020($fp)
	add $t0, $t0, $t1
	sw $t0, -5032($fp)
	lw $t0, -5032($fp)
	lw $t1, 0($t0)
	sw $t1, -5036($fp)
	lw $t0, -5036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3128($fp)
	sw $t0, -5040($fp)
	lw $t0, -5040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3140($fp)
	sw $t0, -5044($fp)
	lw $t0, -5044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 1840
	sw $t0, -5048($fp)
	lw $ra, -4($fp)
	lw $v0, -5048($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 23650
	sw $t0, -5088($fp)
	addi $t0, $fp, -5084
	sw $t0, -5092($fp)
	li $t0, 0
	sw $t0, -5096($fp)
	lw $t0, -5096($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5100($fp)
	lw $t0, -5092($fp)
	lw $t1, -5100($fp)
	add $t0, $t0, $t1
	sw $t0, -5104($fp)
	lw $t0, -5088($fp)
	lw $t1, -5104($fp)
	sw $t0, 0($t1)
	lw $t0, -5104($fp)
	lw $t1, 0($t0)
	sw $t1, -5108($fp)
	li $t0, 31689
	sw $t0, -5112($fp)
	addi $t0, $fp, -5084
	sw $t0, -5116($fp)
	li $t0, 1
	sw $t0, -5120($fp)
	lw $t0, -5120($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5124($fp)
	lw $t0, -5116($fp)
	lw $t1, -5124($fp)
	add $t0, $t0, $t1
	sw $t0, -5128($fp)
	lw $t0, -5112($fp)
	lw $t1, -5128($fp)
	sw $t0, 0($t1)
	lw $t0, -5128($fp)
	lw $t1, 0($t0)
	sw $t1, -5132($fp)
	li $t0, 65526
	sw $t0, -5136($fp)
	addi $t0, $fp, -5084
	sw $t0, -5140($fp)
	li $t0, 2
	sw $t0, -5144($fp)
	lw $t0, -5144($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5148($fp)
	lw $t0, -5140($fp)
	lw $t1, -5148($fp)
	add $t0, $t0, $t1
	sw $t0, -5152($fp)
	lw $t0, -5136($fp)
	lw $t1, -5152($fp)
	sw $t0, 0($t1)
	lw $t0, -5152($fp)
	lw $t1, 0($t0)
	sw $t1, -5156($fp)
	li $t0, 32358
	sw $t0, -5160($fp)
	addi $t0, $fp, -5084
	sw $t0, -5164($fp)
	li $t0, 3
	sw $t0, -5168($fp)
	lw $t0, -5168($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5172($fp)
	lw $t0, -5164($fp)
	lw $t1, -5172($fp)
	add $t0, $t0, $t1
	sw $t0, -5176($fp)
	lw $t0, -5160($fp)
	lw $t1, -5176($fp)
	sw $t0, 0($t1)
	lw $t0, -5176($fp)
	lw $t1, 0($t0)
	sw $t1, -5180($fp)
	li $t0, 56853
	sw $t0, -5184($fp)
	addi $t0, $fp, -5084
	sw $t0, -5188($fp)
	li $t0, 4
	sw $t0, -5192($fp)
	lw $t0, -5192($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5196($fp)
	lw $t0, -5188($fp)
	lw $t1, -5196($fp)
	add $t0, $t0, $t1
	sw $t0, -5200($fp)
	lw $t0, -5184($fp)
	lw $t1, -5200($fp)
	sw $t0, 0($t1)
	lw $t0, -5200($fp)
	lw $t1, 0($t0)
	sw $t1, -5204($fp)
	li $t0, 56855
	sw $t0, -5208($fp)
	addi $t0, $fp, -5084
	sw $t0, -5212($fp)
	li $t0, 5
	sw $t0, -5216($fp)
	lw $t0, -5216($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5220($fp)
	lw $t0, -5212($fp)
	lw $t1, -5220($fp)
	add $t0, $t0, $t1
	sw $t0, -5224($fp)
	lw $t0, -5208($fp)
	lw $t1, -5224($fp)
	sw $t0, 0($t1)
	lw $t0, -5224($fp)
	lw $t1, 0($t0)
	sw $t1, -5228($fp)
	li $t0, 57021
	sw $t0, -5232($fp)
	addi $t0, $fp, -5084
	sw $t0, -5236($fp)
	li $t0, 6
	sw $t0, -5240($fp)
	lw $t0, -5240($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5244($fp)
	lw $t0, -5236($fp)
	lw $t1, -5244($fp)
	add $t0, $t0, $t1
	sw $t0, -5248($fp)
	lw $t0, -5232($fp)
	lw $t1, -5248($fp)
	sw $t0, 0($t1)
	lw $t0, -5248($fp)
	lw $t1, 0($t0)
	sw $t1, -5252($fp)
	li $t0, 45296
	sw $t0, -5256($fp)
	addi $t0, $fp, -5084
	sw $t0, -5260($fp)
	li $t0, 7
	sw $t0, -5264($fp)
	lw $t0, -5264($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5268($fp)
	lw $t0, -5260($fp)
	lw $t1, -5268($fp)
	add $t0, $t0, $t1
	sw $t0, -5272($fp)
	lw $t0, -5256($fp)
	lw $t1, -5272($fp)
	sw $t0, 0($t1)
	lw $t0, -5272($fp)
	lw $t1, 0($t0)
	sw $t1, -5276($fp)
	li $t0, 3551
	sw $t0, -5280($fp)
	addi $t0, $fp, -5084
	sw $t0, -5284($fp)
	li $t0, 8
	sw $t0, -5288($fp)
	lw $t0, -5288($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5292($fp)
	lw $t0, -5284($fp)
	lw $t1, -5292($fp)
	add $t0, $t0, $t1
	sw $t0, -5296($fp)
	lw $t0, -5280($fp)
	lw $t1, -5296($fp)
	sw $t0, 0($t1)
	lw $t0, -5296($fp)
	lw $t1, 0($t0)
	sw $t1, -5300($fp)
	li $t0, 2006
	sw $t0, -5304($fp)
	lw $t0, -5304($fp)
	sw $t0, -5308($fp)
	lw $t0, -5308($fp)
	sw $t0, -5312($fp)
	addi $t0, $fp, -5084
	sw $t0, -5316($fp)
	li $t0, 0
	sw $t0, -5320($fp)
	li $t0, 4
	lw $t1, -5320($fp)
	mul $t0, $t0, $t1
	sw $t0, -5324($fp)
	lw $t0, -5324($fp)
	lw $t1, -5316($fp)
	add $t0, $t0, $t1
	sw $t0, -5328($fp)
	lw $t0, -5328($fp)
	lw $t1, 0($t0)
	sw $t1, -5332($fp)
	lw $t0, -5332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5084
	sw $t0, -5336($fp)
	li $t0, 1
	sw $t0, -5340($fp)
	li $t0, 4
	lw $t1, -5340($fp)
	mul $t0, $t0, $t1
	sw $t0, -5344($fp)
	lw $t0, -5344($fp)
	lw $t1, -5336($fp)
	add $t0, $t0, $t1
	sw $t0, -5348($fp)
	lw $t0, -5348($fp)
	lw $t1, 0($t0)
	sw $t1, -5352($fp)
	lw $t0, -5352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5084
	sw $t0, -5356($fp)
	li $t0, 2
	sw $t0, -5360($fp)
	li $t0, 4
	lw $t1, -5360($fp)
	mul $t0, $t0, $t1
	sw $t0, -5364($fp)
	lw $t0, -5364($fp)
	lw $t1, -5356($fp)
	add $t0, $t0, $t1
	sw $t0, -5368($fp)
	lw $t0, -5368($fp)
	lw $t1, 0($t0)
	sw $t1, -5372($fp)
	lw $t0, -5372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5084
	sw $t0, -5376($fp)
	li $t0, 3
	sw $t0, -5380($fp)
	li $t0, 4
	lw $t1, -5380($fp)
	mul $t0, $t0, $t1
	sw $t0, -5384($fp)
	lw $t0, -5384($fp)
	lw $t1, -5376($fp)
	add $t0, $t0, $t1
	sw $t0, -5388($fp)
	lw $t0, -5388($fp)
	lw $t1, 0($t0)
	sw $t1, -5392($fp)
	lw $t0, -5392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5084
	sw $t0, -5396($fp)
	li $t0, 4
	sw $t0, -5400($fp)
	li $t0, 4
	lw $t1, -5400($fp)
	mul $t0, $t0, $t1
	sw $t0, -5404($fp)
	lw $t0, -5404($fp)
	lw $t1, -5396($fp)
	add $t0, $t0, $t1
	sw $t0, -5408($fp)
	lw $t0, -5408($fp)
	lw $t1, 0($t0)
	sw $t1, -5412($fp)
	lw $t0, -5412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5084
	sw $t0, -5416($fp)
	li $t0, 5
	sw $t0, -5420($fp)
	li $t0, 4
	lw $t1, -5420($fp)
	mul $t0, $t0, $t1
	sw $t0, -5424($fp)
	lw $t0, -5424($fp)
	lw $t1, -5416($fp)
	add $t0, $t0, $t1
	sw $t0, -5428($fp)
	lw $t0, -5428($fp)
	lw $t1, 0($t0)
	sw $t1, -5432($fp)
	lw $t0, -5432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5084
	sw $t0, -5436($fp)
	li $t0, 6
	sw $t0, -5440($fp)
	li $t0, 4
	lw $t1, -5440($fp)
	mul $t0, $t0, $t1
	sw $t0, -5444($fp)
	lw $t0, -5444($fp)
	lw $t1, -5436($fp)
	add $t0, $t0, $t1
	sw $t0, -5448($fp)
	lw $t0, -5448($fp)
	lw $t1, 0($t0)
	sw $t1, -5452($fp)
	lw $t0, -5452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5084
	sw $t0, -5456($fp)
	li $t0, 7
	sw $t0, -5460($fp)
	li $t0, 4
	lw $t1, -5460($fp)
	mul $t0, $t0, $t1
	sw $t0, -5464($fp)
	lw $t0, -5464($fp)
	lw $t1, -5456($fp)
	add $t0, $t0, $t1
	sw $t0, -5468($fp)
	lw $t0, -5468($fp)
	lw $t1, 0($t0)
	sw $t1, -5472($fp)
	lw $t0, -5472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5084
	sw $t0, -5476($fp)
	li $t0, 8
	sw $t0, -5480($fp)
	li $t0, 4
	lw $t1, -5480($fp)
	mul $t0, $t0, $t1
	sw $t0, -5484($fp)
	lw $t0, -5484($fp)
	lw $t1, -5476($fp)
	add $t0, $t0, $t1
	sw $t0, -5488($fp)
	lw $t0, -5488($fp)
	lw $t1, 0($t0)
	sw $t1, -5492($fp)
	lw $t0, -5492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5308($fp)
	sw $t0, -5496($fp)
	lw $t0, -5496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5084
	sw $t0, -5500($fp)
	lw $t0, -1988($fp)
	sw $t0, -5504($fp)
	li $t0, 0
	lw $t1, -5504($fp)
	sub $t0, $t0, $t1
	sw $t0, -5508($fp)
	li $t0, 0
	lw $t1, -5508($fp)
	sub $t0, $t0, $t1
	sw $t0, -5512($fp)
	li $t0, 4
	lw $t1, -5512($fp)
	mul $t0, $t0, $t1
	sw $t0, -5516($fp)
	lw $t0, -5516($fp)
	lw $t1, -5500($fp)
	add $t0, $t0, $t1
	sw $t0, -5520($fp)
	lw $t0, -5520($fp)
	lw $t1, 0($t0)
	sw $t1, -5524($fp)
	lw $t0, -1532($fp)
	sw $t0, -5528($fp)
	lw $t0, -5524($fp)
	lw $t1, -5528($fp)
	add $t0, $t0, $t1
	sw $t0, -5532($fp)
	lw $ra, -4($fp)
	lw $v0, -5532($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -5084
	sw $t0, -5536($fp)
	li $t0, 0
	sw $t0, -5540($fp)
	li $t0, 4
	lw $t1, -5540($fp)
	mul $t0, $t0, $t1
	sw $t0, -5544($fp)
	lw $t0, -5544($fp)
	lw $t1, -5536($fp)
	add $t0, $t0, $t1
	sw $t0, -5548($fp)
	lw $t0, -5548($fp)
	lw $t1, 0($t0)
	sw $t1, -5552($fp)
	lw $t0, -5552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5084
	sw $t0, -5556($fp)
	li $t0, 1
	sw $t0, -5560($fp)
	li $t0, 4
	lw $t1, -5560($fp)
	mul $t0, $t0, $t1
	sw $t0, -5564($fp)
	lw $t0, -5564($fp)
	lw $t1, -5556($fp)
	add $t0, $t0, $t1
	sw $t0, -5568($fp)
	lw $t0, -5568($fp)
	lw $t1, 0($t0)
	sw $t1, -5572($fp)
	lw $t0, -5572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5084
	sw $t0, -5576($fp)
	li $t0, 2
	sw $t0, -5580($fp)
	li $t0, 4
	lw $t1, -5580($fp)
	mul $t0, $t0, $t1
	sw $t0, -5584($fp)
	lw $t0, -5584($fp)
	lw $t1, -5576($fp)
	add $t0, $t0, $t1
	sw $t0, -5588($fp)
	lw $t0, -5588($fp)
	lw $t1, 0($t0)
	sw $t1, -5592($fp)
	lw $t0, -5592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5084
	sw $t0, -5596($fp)
	li $t0, 3
	sw $t0, -5600($fp)
	li $t0, 4
	lw $t1, -5600($fp)
	mul $t0, $t0, $t1
	sw $t0, -5604($fp)
	lw $t0, -5604($fp)
	lw $t1, -5596($fp)
	add $t0, $t0, $t1
	sw $t0, -5608($fp)
	lw $t0, -5608($fp)
	lw $t1, 0($t0)
	sw $t1, -5612($fp)
	lw $t0, -5612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5084
	sw $t0, -5616($fp)
	li $t0, 4
	sw $t0, -5620($fp)
	li $t0, 4
	lw $t1, -5620($fp)
	mul $t0, $t0, $t1
	sw $t0, -5624($fp)
	lw $t0, -5624($fp)
	lw $t1, -5616($fp)
	add $t0, $t0, $t1
	sw $t0, -5628($fp)
	lw $t0, -5628($fp)
	lw $t1, 0($t0)
	sw $t1, -5632($fp)
	lw $t0, -5632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5084
	sw $t0, -5636($fp)
	li $t0, 5
	sw $t0, -5640($fp)
	li $t0, 4
	lw $t1, -5640($fp)
	mul $t0, $t0, $t1
	sw $t0, -5644($fp)
	lw $t0, -5644($fp)
	lw $t1, -5636($fp)
	add $t0, $t0, $t1
	sw $t0, -5648($fp)
	lw $t0, -5648($fp)
	lw $t1, 0($t0)
	sw $t1, -5652($fp)
	lw $t0, -5652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5084
	sw $t0, -5656($fp)
	li $t0, 6
	sw $t0, -5660($fp)
	li $t0, 4
	lw $t1, -5660($fp)
	mul $t0, $t0, $t1
	sw $t0, -5664($fp)
	lw $t0, -5664($fp)
	lw $t1, -5656($fp)
	add $t0, $t0, $t1
	sw $t0, -5668($fp)
	lw $t0, -5668($fp)
	lw $t1, 0($t0)
	sw $t1, -5672($fp)
	lw $t0, -5672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5084
	sw $t0, -5676($fp)
	li $t0, 7
	sw $t0, -5680($fp)
	li $t0, 4
	lw $t1, -5680($fp)
	mul $t0, $t0, $t1
	sw $t0, -5684($fp)
	lw $t0, -5684($fp)
	lw $t1, -5676($fp)
	add $t0, $t0, $t1
	sw $t0, -5688($fp)
	lw $t0, -5688($fp)
	lw $t1, 0($t0)
	sw $t1, -5692($fp)
	lw $t0, -5692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5084
	sw $t0, -5696($fp)
	li $t0, 8
	sw $t0, -5700($fp)
	li $t0, 4
	lw $t1, -5700($fp)
	mul $t0, $t0, $t1
	sw $t0, -5704($fp)
	lw $t0, -5704($fp)
	lw $t1, -5696($fp)
	add $t0, $t0, $t1
	sw $t0, -5708($fp)
	lw $t0, -5708($fp)
	lw $t1, 0($t0)
	sw $t1, -5712($fp)
	lw $t0, -5712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5308($fp)
	sw $t0, -5716($fp)
	lw $t0, -5716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5720($fp)
	addi $t0, $fp, -84
	sw $t0, -5724($fp)
	lw $t0, -608($fp)
	sw $t0, -5728($fp)
	li $t0, 4
	lw $t1, -5728($fp)
	mul $t0, $t0, $t1
	sw $t0, -5732($fp)
	lw $t0, -5732($fp)
	lw $t1, -5724($fp)
	add $t0, $t0, $t1
	sw $t0, -5736($fp)
	lw $t0, -5736($fp)
	lw $t1, 0($t0)
	sw $t1, -5740($fp)
	lw $t1, -5740($fp)
	li $t2, 0
	bne $t1, $t2, label121
	j label123
label123:
	lw $t0, -1556($fp)
	sw $t0, -5744($fp)
	lw $t0, -2420($fp)
	sw $t0, -5748($fp)
	lw $t0, -5744($fp)
	lw $t1, -5748($fp)
	mul $t0, $t0, $t1
	sw $t0, -5752($fp)
	lw $t1, -5752($fp)
	li $t2, 0
	bne $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -5720($fp)
label122:
	lw $t0, -5720($fp)
	sw $t0, -5308($fp)
	lw $t0, -5308($fp)
	sw $t0, -5756($fp)
	lw $ra, -4($fp)
	lw $v0, -5756($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -5084
	sw $t0, -5760($fp)
	li $t0, 0
	sw $t0, -5764($fp)
	li $t0, 4
	lw $t1, -5764($fp)
	mul $t0, $t0, $t1
	sw $t0, -5768($fp)
	lw $t0, -5768($fp)
	lw $t1, -5760($fp)
	add $t0, $t0, $t1
	sw $t0, -5772($fp)
	lw $t0, -5772($fp)
	lw $t1, 0($t0)
	sw $t1, -5776($fp)
	lw $t0, -5776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5084
	sw $t0, -5780($fp)
	li $t0, 1
	sw $t0, -5784($fp)
	li $t0, 4
	lw $t1, -5784($fp)
	mul $t0, $t0, $t1
	sw $t0, -5788($fp)
	lw $t0, -5788($fp)
	lw $t1, -5780($fp)
	add $t0, $t0, $t1
	sw $t0, -5792($fp)
	lw $t0, -5792($fp)
	lw $t1, 0($t0)
	sw $t1, -5796($fp)
	lw $t0, -5796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5084
	sw $t0, -5800($fp)
	li $t0, 2
	sw $t0, -5804($fp)
	li $t0, 4
	lw $t1, -5804($fp)
	mul $t0, $t0, $t1
	sw $t0, -5808($fp)
	lw $t0, -5808($fp)
	lw $t1, -5800($fp)
	add $t0, $t0, $t1
	sw $t0, -5812($fp)
	lw $t0, -5812($fp)
	lw $t1, 0($t0)
	sw $t1, -5816($fp)
	lw $t0, -5816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5084
	sw $t0, -5820($fp)
	li $t0, 3
	sw $t0, -5824($fp)
	li $t0, 4
	lw $t1, -5824($fp)
	mul $t0, $t0, $t1
	sw $t0, -5828($fp)
	lw $t0, -5828($fp)
	lw $t1, -5820($fp)
	add $t0, $t0, $t1
	sw $t0, -5832($fp)
	lw $t0, -5832($fp)
	lw $t1, 0($t0)
	sw $t1, -5836($fp)
	lw $t0, -5836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5084
	sw $t0, -5840($fp)
	li $t0, 4
	sw $t0, -5844($fp)
	li $t0, 4
	lw $t1, -5844($fp)
	mul $t0, $t0, $t1
	sw $t0, -5848($fp)
	lw $t0, -5848($fp)
	lw $t1, -5840($fp)
	add $t0, $t0, $t1
	sw $t0, -5852($fp)
	lw $t0, -5852($fp)
	lw $t1, 0($t0)
	sw $t1, -5856($fp)
	lw $t0, -5856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5084
	sw $t0, -5860($fp)
	li $t0, 5
	sw $t0, -5864($fp)
	li $t0, 4
	lw $t1, -5864($fp)
	mul $t0, $t0, $t1
	sw $t0, -5868($fp)
	lw $t0, -5868($fp)
	lw $t1, -5860($fp)
	add $t0, $t0, $t1
	sw $t0, -5872($fp)
	lw $t0, -5872($fp)
	lw $t1, 0($t0)
	sw $t1, -5876($fp)
	lw $t0, -5876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5084
	sw $t0, -5880($fp)
	li $t0, 6
	sw $t0, -5884($fp)
	li $t0, 4
	lw $t1, -5884($fp)
	mul $t0, $t0, $t1
	sw $t0, -5888($fp)
	lw $t0, -5888($fp)
	lw $t1, -5880($fp)
	add $t0, $t0, $t1
	sw $t0, -5892($fp)
	lw $t0, -5892($fp)
	lw $t1, 0($t0)
	sw $t1, -5896($fp)
	lw $t0, -5896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5084
	sw $t0, -5900($fp)
	li $t0, 7
	sw $t0, -5904($fp)
	li $t0, 4
	lw $t1, -5904($fp)
	mul $t0, $t0, $t1
	sw $t0, -5908($fp)
	lw $t0, -5908($fp)
	lw $t1, -5900($fp)
	add $t0, $t0, $t1
	sw $t0, -5912($fp)
	lw $t0, -5912($fp)
	lw $t1, 0($t0)
	sw $t1, -5916($fp)
	lw $t0, -5916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5084
	sw $t0, -5920($fp)
	li $t0, 8
	sw $t0, -5924($fp)
	li $t0, 4
	lw $t1, -5924($fp)
	mul $t0, $t0, $t1
	sw $t0, -5928($fp)
	lw $t0, -5928($fp)
	lw $t1, -5920($fp)
	add $t0, $t0, $t1
	sw $t0, -5932($fp)
	lw $t0, -5932($fp)
	lw $t1, 0($t0)
	sw $t1, -5936($fp)
	lw $t0, -5936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5308($fp)
	sw $t0, -5940($fp)
	lw $t0, -5940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5944($fp)
	li $t0, 62156
	sw $t0, -5948($fp)
	li $t0, 19192
	sw $t0, -5952($fp)
	lw $t0, -1532($fp)
	sw $t0, -5956($fp)
	li $t0, 0
	lw $t1, -5956($fp)
	sub $t0, $t0, $t1
	sw $t0, -5960($fp)
	li $t0, 58832
	sw $t0, -5964($fp)
	lw $t0, -5960($fp)
	lw $t1, -5964($fp)
	add $t0, $t0, $t1
	sw $t0, -5968($fp)
	lw $t0, -776($fp)
	sw $t0, -5972($fp)
	lw $t0, -5972($fp)
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	sw $t0, -5976($fp)
	addi $sp, $sp, -4
	lw $t0, -5948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5976($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5980($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -5980($fp)
	sub $t0, $t0, $t1
	sw $t0, -5984($fp)
	addi $t0, $fp, -176
	sw $t0, -5988($fp)
	lw $t0, -1796($fp)
	sw $t0, -5992($fp)
	li $t0, 4
	lw $t1, -5992($fp)
	mul $t0, $t0, $t1
	sw $t0, -5996($fp)
	lw $t0, -5996($fp)
	lw $t1, -5988($fp)
	add $t0, $t0, $t1
	sw $t0, -6000($fp)
	lw $t0, -6000($fp)
	lw $t1, 0($t0)
	sw $t1, -6004($fp)
	lw $t0, -5984($fp)
	lw $t1, -6004($fp)
	add $t0, $t0, $t1
	sw $t0, -6008($fp)
	lw $t1, -6008($fp)
	li $t2, 0
	bne $t1, $t2, label124
	j label126
label126:
	li $t0, 15328
	sw $t0, -6012($fp)
	li $t0, 0
	sw $t0, -6016($fp)
	li $t0, 33428
	sw $t0, -6020($fp)
	li $t0, 20741
	sw $t0, -6024($fp)
	lw $t1, -6020($fp)
	lw $t2, -6024($fp)
	blt $t1, $t2, label127
	j label128
label127:
	li $t0, 1
	sw $t0, -6016($fp)
label128:
	lw $t1, -6012($fp)
	lw $t2, -6016($fp)
	bne $t1, $t2, label124
	j label125
label124:
	li $t0, 1
	sw $t0, -5944($fp)
label125:
	lw $ra, -4($fp)
	lw $v0, -5944($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -5084
	sw $t0, -6028($fp)
	li $t0, 0
	sw $t0, -6032($fp)
	li $t0, 4
	lw $t1, -6032($fp)
	mul $t0, $t0, $t1
	sw $t0, -6036($fp)
	lw $t0, -6036($fp)
	lw $t1, -6028($fp)
	add $t0, $t0, $t1
	sw $t0, -6040($fp)
	lw $t0, -6040($fp)
	lw $t1, 0($t0)
	sw $t1, -6044($fp)
	lw $t0, -6044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5084
	sw $t0, -6048($fp)
	li $t0, 1
	sw $t0, -6052($fp)
	li $t0, 4
	lw $t1, -6052($fp)
	mul $t0, $t0, $t1
	sw $t0, -6056($fp)
	lw $t0, -6056($fp)
	lw $t1, -6048($fp)
	add $t0, $t0, $t1
	sw $t0, -6060($fp)
	lw $t0, -6060($fp)
	lw $t1, 0($t0)
	sw $t1, -6064($fp)
	lw $t0, -6064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5084
	sw $t0, -6068($fp)
	li $t0, 2
	sw $t0, -6072($fp)
	li $t0, 4
	lw $t1, -6072($fp)
	mul $t0, $t0, $t1
	sw $t0, -6076($fp)
	lw $t0, -6076($fp)
	lw $t1, -6068($fp)
	add $t0, $t0, $t1
	sw $t0, -6080($fp)
	lw $t0, -6080($fp)
	lw $t1, 0($t0)
	sw $t1, -6084($fp)
	lw $t0, -6084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5084
	sw $t0, -6088($fp)
	li $t0, 3
	sw $t0, -6092($fp)
	li $t0, 4
	lw $t1, -6092($fp)
	mul $t0, $t0, $t1
	sw $t0, -6096($fp)
	lw $t0, -6096($fp)
	lw $t1, -6088($fp)
	add $t0, $t0, $t1
	sw $t0, -6100($fp)
	lw $t0, -6100($fp)
	lw $t1, 0($t0)
	sw $t1, -6104($fp)
	lw $t0, -6104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5084
	sw $t0, -6108($fp)
	li $t0, 4
	sw $t0, -6112($fp)
	li $t0, 4
	lw $t1, -6112($fp)
	mul $t0, $t0, $t1
	sw $t0, -6116($fp)
	lw $t0, -6116($fp)
	lw $t1, -6108($fp)
	add $t0, $t0, $t1
	sw $t0, -6120($fp)
	lw $t0, -6120($fp)
	lw $t1, 0($t0)
	sw $t1, -6124($fp)
	lw $t0, -6124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5084
	sw $t0, -6128($fp)
	li $t0, 5
	sw $t0, -6132($fp)
	li $t0, 4
	lw $t1, -6132($fp)
	mul $t0, $t0, $t1
	sw $t0, -6136($fp)
	lw $t0, -6136($fp)
	lw $t1, -6128($fp)
	add $t0, $t0, $t1
	sw $t0, -6140($fp)
	lw $t0, -6140($fp)
	lw $t1, 0($t0)
	sw $t1, -6144($fp)
	lw $t0, -6144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5084
	sw $t0, -6148($fp)
	li $t0, 6
	sw $t0, -6152($fp)
	li $t0, 4
	lw $t1, -6152($fp)
	mul $t0, $t0, $t1
	sw $t0, -6156($fp)
	lw $t0, -6156($fp)
	lw $t1, -6148($fp)
	add $t0, $t0, $t1
	sw $t0, -6160($fp)
	lw $t0, -6160($fp)
	lw $t1, 0($t0)
	sw $t1, -6164($fp)
	lw $t0, -6164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5084
	sw $t0, -6168($fp)
	li $t0, 7
	sw $t0, -6172($fp)
	li $t0, 4
	lw $t1, -6172($fp)
	mul $t0, $t0, $t1
	sw $t0, -6176($fp)
	lw $t0, -6176($fp)
	lw $t1, -6168($fp)
	add $t0, $t0, $t1
	sw $t0, -6180($fp)
	lw $t0, -6180($fp)
	lw $t1, 0($t0)
	sw $t1, -6184($fp)
	lw $t0, -6184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5084
	sw $t0, -6188($fp)
	li $t0, 8
	sw $t0, -6192($fp)
	li $t0, 4
	lw $t1, -6192($fp)
	mul $t0, $t0, $t1
	sw $t0, -6196($fp)
	lw $t0, -6196($fp)
	lw $t1, -6188($fp)
	add $t0, $t0, $t1
	sw $t0, -6200($fp)
	lw $t0, -6200($fp)
	lw $t1, 0($t0)
	sw $t1, -6204($fp)
	lw $t0, -6204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5308($fp)
	sw $t0, -6208($fp)
	lw $t0, -6208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6212($fp)
	li $t0, 0
	sw $t0, -6216($fp)
	addi $t0, $fp, -224
	sw $t0, -6220($fp)
	li $t0, 7
	sw $t0, -6224($fp)
	li $t0, 4
	lw $t1, -6224($fp)
	mul $t0, $t0, $t1
	sw $t0, -6228($fp)
	lw $t0, -6228($fp)
	lw $t1, -6220($fp)
	add $t0, $t0, $t1
	sw $t0, -6232($fp)
	lw $t0, -6232($fp)
	lw $t1, 0($t0)
	sw $t1, -6236($fp)
	lw $t1, -6236($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label133
label133:
	li $t0, 1
	sw $t0, -6216($fp)
label134:
	li $t0, 0
	sw $t0, -6240($fp)
	li $t0, 11808
	sw $t0, -6244($fp)
	lw $t1, -6244($fp)
	li $t2, 0
	bne $t1, $t2, label136
	j label135
label135:
	li $t0, 1
	sw $t0, -6240($fp)
label136:
	lw $t0, -6216($fp)
	lw $t1, -6240($fp)
	add $t0, $t0, $t1
	sw $t0, -6248($fp)
	lw $t1, -6248($fp)
	li $t2, 0
	bne $t1, $t2, label129
	j label132
label132:
	li $t0, 44169
	sw $t0, -6252($fp)
	lw $t0, -1520($fp)
	sw $t0, -6256($fp)
	lw $t0, -6252($fp)
	lw $t1, -6256($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6260($fp)
	li $t0, 39506
	sw $t0, -6264($fp)
	lw $t0, -6260($fp)
	lw $t1, -6264($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6268($fp)
	lw $t1, -6268($fp)
	li $t2, 0
	bne $t1, $t2, label129
	j label131
label131:
	li $t0, 25789
	sw $t0, -6272($fp)
	li $t0, 0
	lw $t1, -6272($fp)
	sub $t0, $t0, $t1
	sw $t0, -6276($fp)
	lw $t1, -6276($fp)
	li $t2, 0
	bne $t1, $t2, label129
	j label130
label129:
	li $t0, 1
	sw $t0, -6212($fp)
label130:
	lw $ra, -4($fp)
	lw $v0, -6212($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -6280($fp)
	lw $t0, -1820($fp)
	sw $t0, -6284($fp)
	li $t0, 16427
	sw $t0, -6288($fp)
	lw $t0, -6284($fp)
	lw $t1, -6288($fp)
	sub $t0, $t0, $t1
	sw $t0, -6292($fp)
	lw $t1, -6292($fp)
	li $t2, 0
	bne $t1, $t2, label142
	j label141
label142:
	lw $t0, -1232($fp)
	sw $t0, -6296($fp)
	lw $t1, -6296($fp)
	li $t2, 0
	bne $t1, $t2, label140
	j label141
label140:
	li $t0, 1
	sw $t0, -6280($fp)
label141:
	li $t0, 0
	sw $t0, -6300($fp)
	lw $t0, -1220($fp)
	sw $t0, -6304($fp)
	lw $t1, -6304($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label143
label143:
	li $t0, 1
	sw $t0, -6300($fp)
label144:
	lw $t0, -1808($fp)
	sw $t0, -6308($fp)
	lw $t0, -6300($fp)
	lw $t1, -6308($fp)
	sub $t0, $t0, $t1
	sw $t0, -6312($fp)
	li $t0, 0
	sw $t0, -6316($fp)
	lw $t0, -2228($fp)
	sw $t0, -6320($fp)
	lw $t1, -6320($fp)
	li $t2, 0
	bne $t1, $t2, label146
	j label145
label145:
	li $t0, 1
	sw $t0, -6316($fp)
label146:
	li $t0, 44536
	sw $t0, -6324($fp)
	addi $sp, $sp, -4
	lw $t0, -6280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6324($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6328($fp)
	addi $sp, $sp, 20
	lw $t1, -6328($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label138
label137:
label147:
	li $t0, 0
	sw $t0, -6332($fp)
	li $t0, 0
	sw $t0, -6336($fp)
	lw $t0, -1832($fp)
	sw $t0, -6340($fp)
	lw $t1, -6340($fp)
	li $t2, 0
	bne $t1, $t2, label152
	j label153
label152:
	li $t0, 1
	sw $t0, -6336($fp)
label153:
	addi $t0, $fp, -72
	sw $t0, -6344($fp)
	li $t0, 5
	sw $t0, -6348($fp)
	li $t0, 4
	lw $t1, -6348($fp)
	mul $t0, $t0, $t1
	sw $t0, -6352($fp)
	lw $t0, -6352($fp)
	lw $t1, -6344($fp)
	add $t0, $t0, $t1
	sw $t0, -6356($fp)
	lw $t0, -6356($fp)
	lw $t1, 0($t0)
	sw $t1, -6360($fp)
	lw $t1, -6336($fp)
	lw $t2, -6360($fp)
	bgt $t1, $t2, label150
	j label151
label150:
	li $t0, 1
	sw $t0, -6332($fp)
label151:
	lw $t0, -6332($fp)
	sw $t0, -2612($fp)
	lw $t0, -2612($fp)
	sw $t0, -6364($fp)
	lw $t1, -6364($fp)
	li $t2, 0
	bne $t1, $t2, label148
	j label149
label148:
	addi $t0, $fp, -140
	sw $t0, -6368($fp)
	lw $t0, -1268($fp)
	sw $t0, -6372($fp)
	li $t0, 4
	lw $t1, -6372($fp)
	mul $t0, $t0, $t1
	sw $t0, -6376($fp)
	lw $t0, -6376($fp)
	lw $t1, -6368($fp)
	add $t0, $t0, $t1
	sw $t0, -6380($fp)
	lw $t0, -6380($fp)
	lw $t1, 0($t0)
	sw $t1, -6384($fp)
	li $t0, 46227
	sw $t0, -6388($fp)
	li $t0, 36190
	sw $t0, -6392($fp)
	lw $t0, -6388($fp)
	lw $t1, -6392($fp)
	mul $t0, $t0, $t1
	sw $t0, -6396($fp)
	lw $t1, -6384($fp)
	lw $t2, -6396($fp)
	bne $t1, $t2, label158
	j label155
label158:
	lw $t0, -1520($fp)
	sw $t0, -6400($fp)
	li $t0, 0
	lw $t1, -6400($fp)
	sub $t0, $t0, $t1
	sw $t0, -6404($fp)
	li $t0, 0
	lw $t1, -6404($fp)
	sub $t0, $t0, $t1
	sw $t0, -6408($fp)
	lw $t1, -6408($fp)
	li $t2, 0
	bne $t1, $t2, label157
	j label155
label157:
	li $t0, 0
	sw $t0, -6412($fp)
	lw $t0, -1220($fp)
	sw $t0, -6416($fp)
	lw $t1, -6416($fp)
	li $t2, 0
	bne $t1, $t2, label160
	j label159
label159:
	li $t0, 1
	sw $t0, -6412($fp)
label160:
	lw $t0, -2588($fp)
	sw $t0, -6420($fp)
	lw $t0, -1160($fp)
	sw $t0, -6424($fp)
	lw $t0, -6420($fp)
	lw $t1, -6424($fp)
	mul $t0, $t0, $t1
	sw $t0, -6428($fp)
	lw $t1, -6412($fp)
	lw $t2, -6428($fp)
	bge $t1, $t2, label154
	j label155
label154:
	addi $t0, $fp, -176
	sw $t0, -6432($fp)
	li $t0, 2
	sw $t0, -6436($fp)
	li $t0, 4
	lw $t1, -6436($fp)
	mul $t0, $t0, $t1
	sw $t0, -6440($fp)
	lw $t0, -6440($fp)
	lw $t1, -6432($fp)
	add $t0, $t0, $t1
	sw $t0, -6444($fp)
	lw $t0, -6444($fp)
	lw $t1, 0($t0)
	sw $t1, -6448($fp)
	addi $t0, $fp, -104
	sw $t0, -6452($fp)
	lw $t0, -992($fp)
	sw $t0, -6456($fp)
	li $t0, 4
	lw $t1, -6456($fp)
	mul $t0, $t0, $t1
	sw $t0, -6460($fp)
	lw $t0, -6460($fp)
	lw $t1, -6452($fp)
	add $t0, $t0, $t1
	sw $t0, -6464($fp)
	lw $t0, -6464($fp)
	lw $t1, 0($t0)
	sw $t1, -6468($fp)
	li $t0, 0
	sw $t0, -6472($fp)
	li $t0, 44185
	sw $t0, -6476($fp)
	li $t0, 8768
	sw $t0, -6480($fp)
	lw $t0, -6476($fp)
	lw $t1, -6480($fp)
	mul $t0, $t0, $t1
	sw $t0, -6484($fp)
	lw $t1, -6484($fp)
	li $t2, 0
	bne $t1, $t2, label164
	j label166
label166:
	lw $t0, -1964($fp)
	sw $t0, -6488($fp)
	lw $t1, -6488($fp)
	li $t2, 0
	bne $t1, $t2, label164
	j label165
label164:
	li $t0, 1
	sw $t0, -6472($fp)
label165:
	li $t0, 0
	sw $t0, -6492($fp)
	lw $t0, -992($fp)
	sw $t0, -6496($fp)
	lw $t0, -1940($fp)
	sw $t0, -6500($fp)
	lw $t0, -6500($fp)
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	sw $t0, -6504($fp)
	li $t0, 0
	sw $t0, -6508($fp)
	lw $t0, -2528($fp)
	sw $t0, -6512($fp)
	lw $t1, -6512($fp)
	li $t2, 0
	bne $t1, $t2, label171
	j label170
label170:
	li $t0, 1
	sw $t0, -6508($fp)
label171:
	lw $t0, -1916($fp)
	sw $t0, -6516($fp)
	lw $t0, -6508($fp)
	lw $t1, -6516($fp)
	mul $t0, $t0, $t1
	sw $t0, -6520($fp)
	addi $t0, $fp, -188
	sw $t0, -6524($fp)
	lw $t0, -1520($fp)
	sw $t0, -6528($fp)
	li $t0, 4
	lw $t1, -6528($fp)
	mul $t0, $t0, $t1
	sw $t0, -6532($fp)
	lw $t0, -6532($fp)
	lw $t1, -6524($fp)
	add $t0, $t0, $t1
	sw $t0, -6536($fp)
	lw $t0, -6536($fp)
	lw $t1, 0($t0)
	sw $t1, -6540($fp)
	addi $sp, $sp, -4
	lw $t0, -6496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6540($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6544($fp)
	addi $sp, $sp, 20
	lw $t1, -6544($fp)
	li $t2, 0
	bne $t1, $t2, label167
	j label169
label169:
	lw $t0, -1952($fp)
	sw $t0, -6548($fp)
	lw $t1, -6548($fp)
	li $t2, 0
	bne $t1, $t2, label167
	j label168
label167:
	li $t0, 1
	sw $t0, -6492($fp)
label168:
	addi $sp, $sp, -4
	lw $t0, -6448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6492($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6552($fp)
	addi $sp, $sp, 20
	lw $t1, -6552($fp)
	li $t2, 0
	bne $t1, $t2, label162
	j label161
label161:
	li $t0, 40457
	sw $t0, -6660($fp)
	lw $t0, -6660($fp)
	sw $t0, -6664($fp)
	lw $t0, -6664($fp)
	sw $t0, -6668($fp)
	li $t0, 38021
	sw $t0, -6672($fp)
	addi $t0, $fp, -6580
	sw $t0, -6676($fp)
	li $t0, 0
	sw $t0, -6680($fp)
	lw $t0, -6680($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6684($fp)
	lw $t0, -6676($fp)
	lw $t1, -6684($fp)
	add $t0, $t0, $t1
	sw $t0, -6688($fp)
	lw $t0, -6672($fp)
	lw $t1, -6688($fp)
	sw $t0, 0($t1)
	lw $t0, -6688($fp)
	lw $t1, 0($t0)
	sw $t1, -6692($fp)
	li $t0, 34657
	sw $t0, -6696($fp)
	addi $t0, $fp, -6580
	sw $t0, -6700($fp)
	li $t0, 1
	sw $t0, -6704($fp)
	lw $t0, -6704($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6708($fp)
	lw $t0, -6700($fp)
	lw $t1, -6708($fp)
	add $t0, $t0, $t1
	sw $t0, -6712($fp)
	lw $t0, -6696($fp)
	lw $t1, -6712($fp)
	sw $t0, 0($t1)
	lw $t0, -6712($fp)
	lw $t1, 0($t0)
	sw $t1, -6716($fp)
	li $t0, 31774
	sw $t0, -6720($fp)
	addi $t0, $fp, -6580
	sw $t0, -6724($fp)
	li $t0, 2
	sw $t0, -6728($fp)
	lw $t0, -6728($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6732($fp)
	lw $t0, -6724($fp)
	lw $t1, -6732($fp)
	add $t0, $t0, $t1
	sw $t0, -6736($fp)
	lw $t0, -6720($fp)
	lw $t1, -6736($fp)
	sw $t0, 0($t1)
	lw $t0, -6736($fp)
	lw $t1, 0($t0)
	sw $t1, -6740($fp)
	li $t0, 29341
	sw $t0, -6744($fp)
	addi $t0, $fp, -6580
	sw $t0, -6748($fp)
	li $t0, 3
	sw $t0, -6752($fp)
	lw $t0, -6752($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6756($fp)
	lw $t0, -6748($fp)
	lw $t1, -6756($fp)
	add $t0, $t0, $t1
	sw $t0, -6760($fp)
	lw $t0, -6744($fp)
	lw $t1, -6760($fp)
	sw $t0, 0($t1)
	lw $t0, -6760($fp)
	lw $t1, 0($t0)
	sw $t1, -6764($fp)
	li $t0, 26142
	sw $t0, -6768($fp)
	addi $t0, $fp, -6580
	sw $t0, -6772($fp)
	li $t0, 4
	sw $t0, -6776($fp)
	lw $t0, -6776($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6780($fp)
	lw $t0, -6772($fp)
	lw $t1, -6780($fp)
	add $t0, $t0, $t1
	sw $t0, -6784($fp)
	lw $t0, -6768($fp)
	lw $t1, -6784($fp)
	sw $t0, 0($t1)
	lw $t0, -6784($fp)
	lw $t1, 0($t0)
	sw $t1, -6788($fp)
	li $t0, 11534
	sw $t0, -6792($fp)
	addi $t0, $fp, -6580
	sw $t0, -6796($fp)
	li $t0, 5
	sw $t0, -6800($fp)
	lw $t0, -6800($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6804($fp)
	lw $t0, -6796($fp)
	lw $t1, -6804($fp)
	add $t0, $t0, $t1
	sw $t0, -6808($fp)
	lw $t0, -6792($fp)
	lw $t1, -6808($fp)
	sw $t0, 0($t1)
	lw $t0, -6808($fp)
	lw $t1, 0($t0)
	sw $t1, -6812($fp)
	li $t0, 32892
	sw $t0, -6816($fp)
	addi $t0, $fp, -6580
	sw $t0, -6820($fp)
	li $t0, 6
	sw $t0, -6824($fp)
	lw $t0, -6824($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6828($fp)
	lw $t0, -6820($fp)
	lw $t1, -6828($fp)
	add $t0, $t0, $t1
	sw $t0, -6832($fp)
	lw $t0, -6816($fp)
	lw $t1, -6832($fp)
	sw $t0, 0($t1)
	lw $t0, -6832($fp)
	lw $t1, 0($t0)
	sw $t1, -6836($fp)
	li $t0, 28148
	sw $t0, -6840($fp)
	addi $t0, $fp, -6616
	sw $t0, -6844($fp)
	li $t0, 0
	sw $t0, -6848($fp)
	lw $t0, -6848($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6852($fp)
	lw $t0, -6844($fp)
	lw $t1, -6852($fp)
	add $t0, $t0, $t1
	sw $t0, -6856($fp)
	lw $t0, -6840($fp)
	lw $t1, -6856($fp)
	sw $t0, 0($t1)
	lw $t0, -6856($fp)
	lw $t1, 0($t0)
	sw $t1, -6860($fp)
	li $t0, 4831
	sw $t0, -6864($fp)
	addi $t0, $fp, -6616
	sw $t0, -6868($fp)
	li $t0, 1
	sw $t0, -6872($fp)
	lw $t0, -6872($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6876($fp)
	lw $t0, -6868($fp)
	lw $t1, -6876($fp)
	add $t0, $t0, $t1
	sw $t0, -6880($fp)
	lw $t0, -6864($fp)
	lw $t1, -6880($fp)
	sw $t0, 0($t1)
	lw $t0, -6880($fp)
	lw $t1, 0($t0)
	sw $t1, -6884($fp)
	li $t0, 52084
	sw $t0, -6888($fp)
	addi $t0, $fp, -6616
	sw $t0, -6892($fp)
	li $t0, 2
	sw $t0, -6896($fp)
	lw $t0, -6896($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6900($fp)
	lw $t0, -6892($fp)
	lw $t1, -6900($fp)
	add $t0, $t0, $t1
	sw $t0, -6904($fp)
	lw $t0, -6888($fp)
	lw $t1, -6904($fp)
	sw $t0, 0($t1)
	lw $t0, -6904($fp)
	lw $t1, 0($t0)
	sw $t1, -6908($fp)
	li $t0, 24769
	sw $t0, -6912($fp)
	addi $t0, $fp, -6616
	sw $t0, -6916($fp)
	li $t0, 3
	sw $t0, -6920($fp)
	lw $t0, -6920($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6924($fp)
	lw $t0, -6916($fp)
	lw $t1, -6924($fp)
	add $t0, $t0, $t1
	sw $t0, -6928($fp)
	lw $t0, -6912($fp)
	lw $t1, -6928($fp)
	sw $t0, 0($t1)
	lw $t0, -6928($fp)
	lw $t1, 0($t0)
	sw $t1, -6932($fp)
	li $t0, 20159
	sw $t0, -6936($fp)
	addi $t0, $fp, -6616
	sw $t0, -6940($fp)
	li $t0, 4
	sw $t0, -6944($fp)
	lw $t0, -6944($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6948($fp)
	lw $t0, -6940($fp)
	lw $t1, -6948($fp)
	add $t0, $t0, $t1
	sw $t0, -6952($fp)
	lw $t0, -6936($fp)
	lw $t1, -6952($fp)
	sw $t0, 0($t1)
	lw $t0, -6952($fp)
	lw $t1, 0($t0)
	sw $t1, -6956($fp)
	li $t0, 19976
	sw $t0, -6960($fp)
	addi $t0, $fp, -6616
	sw $t0, -6964($fp)
	li $t0, 5
	sw $t0, -6968($fp)
	lw $t0, -6968($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6972($fp)
	lw $t0, -6964($fp)
	lw $t1, -6972($fp)
	add $t0, $t0, $t1
	sw $t0, -6976($fp)
	lw $t0, -6960($fp)
	lw $t1, -6976($fp)
	sw $t0, 0($t1)
	lw $t0, -6976($fp)
	lw $t1, 0($t0)
	sw $t1, -6980($fp)
	li $t0, 45510
	sw $t0, -6984($fp)
	addi $t0, $fp, -6616
	sw $t0, -6988($fp)
	li $t0, 6
	sw $t0, -6992($fp)
	lw $t0, -6992($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6996($fp)
	lw $t0, -6988($fp)
	lw $t1, -6996($fp)
	add $t0, $t0, $t1
	sw $t0, -7000($fp)
	lw $t0, -6984($fp)
	lw $t1, -7000($fp)
	sw $t0, 0($t1)
	lw $t0, -7000($fp)
	lw $t1, 0($t0)
	sw $t1, -7004($fp)
	li $t0, 56850
	sw $t0, -7008($fp)
	addi $t0, $fp, -6616
	sw $t0, -7012($fp)
	li $t0, 7
	sw $t0, -7016($fp)
	lw $t0, -7016($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7020($fp)
	lw $t0, -7012($fp)
	lw $t1, -7020($fp)
	add $t0, $t0, $t1
	sw $t0, -7024($fp)
	lw $t0, -7008($fp)
	lw $t1, -7024($fp)
	sw $t0, 0($t1)
	lw $t0, -7024($fp)
	lw $t1, 0($t0)
	sw $t1, -7028($fp)
	li $t0, 34555
	sw $t0, -7032($fp)
	addi $t0, $fp, -6616
	sw $t0, -7036($fp)
	li $t0, 8
	sw $t0, -7040($fp)
	lw $t0, -7040($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7044($fp)
	lw $t0, -7036($fp)
	lw $t1, -7044($fp)
	add $t0, $t0, $t1
	sw $t0, -7048($fp)
	lw $t0, -7032($fp)
	lw $t1, -7048($fp)
	sw $t0, 0($t1)
	lw $t0, -7048($fp)
	lw $t1, 0($t0)
	sw $t1, -7052($fp)
	li $t0, 57318
	sw $t0, -7056($fp)
	lw $t0, -7056($fp)
	sw $t0, -7060($fp)
	lw $t0, -7060($fp)
	sw $t0, -7064($fp)
	li $t0, 35483
	sw $t0, -7068($fp)
	lw $t0, -7068($fp)
	sw $t0, -7072($fp)
	lw $t0, -7072($fp)
	sw $t0, -7076($fp)
	li $t0, 8525
	sw $t0, -7080($fp)
	lw $t0, -7080($fp)
	sw $t0, -7084($fp)
	lw $t0, -7084($fp)
	sw $t0, -7088($fp)
	li $t0, 17572
	sw $t0, -7092($fp)
	lw $t0, -7092($fp)
	sw $t0, -7096($fp)
	lw $t0, -7096($fp)
	sw $t0, -7100($fp)
	li $t0, 14484
	sw $t0, -7104($fp)
	lw $t0, -7104($fp)
	sw $t0, -7108($fp)
	lw $t0, -7108($fp)
	sw $t0, -7112($fp)
	li $t0, 24953
	sw $t0, -7116($fp)
	lw $t0, -7116($fp)
	sw $t0, -7120($fp)
	lw $t0, -7120($fp)
	sw $t0, -7124($fp)
	li $t0, 46395
	sw $t0, -7128($fp)
	lw $t0, -7128($fp)
	sw $t0, -7132($fp)
	lw $t0, -7132($fp)
	sw $t0, -7136($fp)
	li $t0, 38913
	sw $t0, -7140($fp)
	lw $t0, -7140($fp)
	sw $t0, -7144($fp)
	lw $t0, -7144($fp)
	sw $t0, -7148($fp)
	li $t0, 5644
	sw $t0, -7152($fp)
	lw $t0, -7152($fp)
	sw $t0, -7156($fp)
	lw $t0, -7156($fp)
	sw $t0, -7160($fp)
	li $t0, 17049
	sw $t0, -7164($fp)
	lw $t0, -7164($fp)
	sw $t0, -7168($fp)
	lw $t0, -7168($fp)
	sw $t0, -7172($fp)
	li $t0, 17562
	sw $t0, -7176($fp)
	addi $t0, $fp, -6656
	sw $t0, -7180($fp)
	li $t0, 0
	sw $t0, -7184($fp)
	lw $t0, -7184($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7188($fp)
	lw $t0, -7180($fp)
	lw $t1, -7188($fp)
	add $t0, $t0, $t1
	sw $t0, -7192($fp)
	lw $t0, -7176($fp)
	lw $t1, -7192($fp)
	sw $t0, 0($t1)
	lw $t0, -7192($fp)
	lw $t1, 0($t0)
	sw $t1, -7196($fp)
	li $t0, 14412
	sw $t0, -7200($fp)
	addi $t0, $fp, -6656
	sw $t0, -7204($fp)
	li $t0, 1
	sw $t0, -7208($fp)
	lw $t0, -7208($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7212($fp)
	lw $t0, -7204($fp)
	lw $t1, -7212($fp)
	add $t0, $t0, $t1
	sw $t0, -7216($fp)
	lw $t0, -7200($fp)
	lw $t1, -7216($fp)
	sw $t0, 0($t1)
	lw $t0, -7216($fp)
	lw $t1, 0($t0)
	sw $t1, -7220($fp)
	li $t0, 55080
	sw $t0, -7224($fp)
	addi $t0, $fp, -6656
	sw $t0, -7228($fp)
	li $t0, 2
	sw $t0, -7232($fp)
	lw $t0, -7232($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7236($fp)
	lw $t0, -7228($fp)
	lw $t1, -7236($fp)
	add $t0, $t0, $t1
	sw $t0, -7240($fp)
	lw $t0, -7224($fp)
	lw $t1, -7240($fp)
	sw $t0, 0($t1)
	lw $t0, -7240($fp)
	lw $t1, 0($t0)
	sw $t1, -7244($fp)
	li $t0, 19861
	sw $t0, -7248($fp)
	addi $t0, $fp, -6656
	sw $t0, -7252($fp)
	li $t0, 3
	sw $t0, -7256($fp)
	lw $t0, -7256($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7260($fp)
	lw $t0, -7252($fp)
	lw $t1, -7260($fp)
	add $t0, $t0, $t1
	sw $t0, -7264($fp)
	lw $t0, -7248($fp)
	lw $t1, -7264($fp)
	sw $t0, 0($t1)
	lw $t0, -7264($fp)
	lw $t1, 0($t0)
	sw $t1, -7268($fp)
	li $t0, 54869
	sw $t0, -7272($fp)
	addi $t0, $fp, -6656
	sw $t0, -7276($fp)
	li $t0, 4
	sw $t0, -7280($fp)
	lw $t0, -7280($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7284($fp)
	lw $t0, -7276($fp)
	lw $t1, -7284($fp)
	add $t0, $t0, $t1
	sw $t0, -7288($fp)
	lw $t0, -7272($fp)
	lw $t1, -7288($fp)
	sw $t0, 0($t1)
	lw $t0, -7288($fp)
	lw $t1, 0($t0)
	sw $t1, -7292($fp)
	li $t0, 27566
	sw $t0, -7296($fp)
	addi $t0, $fp, -6656
	sw $t0, -7300($fp)
	li $t0, 5
	sw $t0, -7304($fp)
	lw $t0, -7304($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7308($fp)
	lw $t0, -7300($fp)
	lw $t1, -7308($fp)
	add $t0, $t0, $t1
	sw $t0, -7312($fp)
	lw $t0, -7296($fp)
	lw $t1, -7312($fp)
	sw $t0, 0($t1)
	lw $t0, -7312($fp)
	lw $t1, 0($t0)
	sw $t1, -7316($fp)
	li $t0, 54519
	sw $t0, -7320($fp)
	addi $t0, $fp, -6656
	sw $t0, -7324($fp)
	li $t0, 6
	sw $t0, -7328($fp)
	lw $t0, -7328($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7332($fp)
	lw $t0, -7324($fp)
	lw $t1, -7332($fp)
	add $t0, $t0, $t1
	sw $t0, -7336($fp)
	lw $t0, -7320($fp)
	lw $t1, -7336($fp)
	sw $t0, 0($t1)
	lw $t0, -7336($fp)
	lw $t1, 0($t0)
	sw $t1, -7340($fp)
	li $t0, 21108
	sw $t0, -7344($fp)
	addi $t0, $fp, -6656
	sw $t0, -7348($fp)
	li $t0, 7
	sw $t0, -7352($fp)
	lw $t0, -7352($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7356($fp)
	lw $t0, -7348($fp)
	lw $t1, -7356($fp)
	add $t0, $t0, $t1
	sw $t0, -7360($fp)
	lw $t0, -7344($fp)
	lw $t1, -7360($fp)
	sw $t0, 0($t1)
	lw $t0, -7360($fp)
	lw $t1, 0($t0)
	sw $t1, -7364($fp)
	li $t0, 56907
	sw $t0, -7368($fp)
	addi $t0, $fp, -6656
	sw $t0, -7372($fp)
	li $t0, 8
	sw $t0, -7376($fp)
	lw $t0, -7376($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7380($fp)
	lw $t0, -7372($fp)
	lw $t1, -7380($fp)
	add $t0, $t0, $t1
	sw $t0, -7384($fp)
	lw $t0, -7368($fp)
	lw $t1, -7384($fp)
	sw $t0, 0($t1)
	lw $t0, -7384($fp)
	lw $t1, 0($t0)
	sw $t1, -7388($fp)
	li $t0, 15125
	sw $t0, -7392($fp)
	addi $t0, $fp, -6656
	sw $t0, -7396($fp)
	li $t0, 9
	sw $t0, -7400($fp)
	lw $t0, -7400($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7404($fp)
	lw $t0, -7396($fp)
	lw $t1, -7404($fp)
	add $t0, $t0, $t1
	sw $t0, -7408($fp)
	lw $t0, -7392($fp)
	lw $t1, -7408($fp)
	sw $t0, 0($t1)
	lw $t0, -7408($fp)
	lw $t1, 0($t0)
	sw $t1, -7412($fp)
	li $t0, 0
	sw $t0, -7416($fp)
	li $t0, 0
	sw $t0, -7420($fp)
	lw $t0, -1136($fp)
	sw $t0, -7424($fp)
	li $t0, 10811
	sw $t0, -7428($fp)
	lw $t0, -7424($fp)
	lw $t1, -7428($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7432($fp)
	li $t0, 2507
	sw $t0, -7436($fp)
	lw $t1, -7432($fp)
	lw $t2, -7436($fp)
	ble $t1, $t2, label177
	j label178
label177:
	li $t0, 1
	sw $t0, -7420($fp)
label178:
	lw $t0, -776($fp)
	sw $t0, -7440($fp)
	li $t0, 37473
	sw $t0, -7444($fp)
	lw $t0, -7440($fp)
	lw $t1, -7444($fp)
	mul $t0, $t0, $t1
	sw $t0, -7448($fp)
	li $t0, 0
	sw $t0, -7452($fp)
	lw $t0, -7168($fp)
	sw $t0, -7456($fp)
	lw $t0, -2000($fp)
	sw $t0, -7460($fp)
	lw $t1, -7456($fp)
	lw $t2, -7460($fp)
	bge $t1, $t2, label179
	j label180
label179:
	li $t0, 1
	sw $t0, -7452($fp)
label180:
	li $t0, 0
	sw $t0, -7464($fp)
	lw $t0, -1988($fp)
	sw $t0, -7468($fp)
	lw $t1, -7468($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label182
label183:
	lw $t0, -812($fp)
	sw $t0, -7472($fp)
	lw $t1, -7472($fp)
	li $t2, 0
	bne $t1, $t2, label181
	j label182
label181:
	li $t0, 1
	sw $t0, -7464($fp)
label182:
	li $t0, 43274
	sw $t0, -7476($fp)
	li $t0, 0
	lw $t1, -7476($fp)
	sub $t0, $t0, $t1
	sw $t0, -7480($fp)
	lw $t0, -7072($fp)
	sw $t0, -7484($fp)
	lw $t0, -7480($fp)
	lw $t1, -7484($fp)
	add $t0, $t0, $t1
	sw $t0, -7488($fp)
	li $t0, 0
	sw $t0, -7492($fp)
	lw $t0, -6664($fp)
	sw $t0, -7496($fp)
	lw $t1, -7496($fp)
	li $t2, 0
	bne $t1, $t2, label184
	j label186
label186:
	li $t0, 24263
	sw $t0, -7500($fp)
	lw $t1, -7500($fp)
	li $t2, 0
	bne $t1, $t2, label184
	j label185
label184:
	li $t0, 1
	sw $t0, -7492($fp)
label185:
	addi $sp, $sp, -4
	lw $t0, -7452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7492($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7504($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -7508($fp)
	li $t0, 32642
	sw $t0, -7512($fp)
	lw $t0, -1976($fp)
	sw $t0, -7516($fp)
	lw $t1, -7512($fp)
	lw $t2, -7516($fp)
	bne $t1, $t2, label187
	j label188
label187:
	li $t0, 1
	sw $t0, -7508($fp)
label188:
	addi $sp, $sp, -4
	lw $t0, -7420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7508($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7520($fp)
	addi $sp, $sp, 20
	lw $t1, -7520($fp)
	li $t2, 0
	bne $t1, $t2, label176
	j label175
label175:
	li $t0, 1
	sw $t0, -7416($fp)
label176:
	li $t0, 57632
	sw $t0, -7524($fp)
	lw $t0, -7416($fp)
	lw $t1, -7524($fp)
	mul $t0, $t0, $t1
	sw $t0, -7528($fp)
	li $t0, 0
	sw $t0, -7532($fp)
	addi $t0, $fp, -84
	sw $t0, -7536($fp)
	lw $t0, -2504($fp)
	sw $t0, -7540($fp)
	li $t0, 4
	lw $t1, -7540($fp)
	mul $t0, $t0, $t1
	sw $t0, -7544($fp)
	lw $t0, -7544($fp)
	lw $t1, -7536($fp)
	add $t0, $t0, $t1
	sw $t0, -7548($fp)
	lw $t0, -7548($fp)
	lw $t1, 0($t0)
	sw $t1, -7552($fp)
	lw $t1, -7552($fp)
	li $t2, 0
	bne $t1, $t2, label190
	j label189
label189:
	li $t0, 1
	sw $t0, -7532($fp)
label190:
	lw $t1, -7528($fp)
	lw $t2, -7532($fp)
	bne $t1, $t2, label172
	j label173
label172:
	li $t0, 30787
	sw $t0, -7556($fp)
	lw $t0, -7556($fp)
	sw $t0, -7560($fp)
	lw $t0, -7560($fp)
	sw $t0, -7564($fp)
	li $t0, 48017
	sw $t0, -7568($fp)
	lw $t0, -7568($fp)
	sw $t0, -7572($fp)
	lw $t0, -7572($fp)
	sw $t0, -7576($fp)
	addi $t0, $fp, -6656
	sw $t0, -7580($fp)
	lw $t0, -7144($fp)
	sw $t0, -7584($fp)
	li $t0, 4
	lw $t1, -7584($fp)
	mul $t0, $t0, $t1
	sw $t0, -7588($fp)
	lw $t0, -7588($fp)
	lw $t1, -7580($fp)
	add $t0, $t0, $t1
	sw $t0, -7592($fp)
	lw $t0, -7592($fp)
	lw $t1, 0($t0)
	sw $t1, -7596($fp)
	addi $t0, $fp, -284
	sw $t0, -7600($fp)
	li $t0, 2
	sw $t0, -7604($fp)
	li $t0, 4
	lw $t1, -7604($fp)
	mul $t0, $t0, $t1
	sw $t0, -7608($fp)
	lw $t0, -7608($fp)
	lw $t1, -7600($fp)
	add $t0, $t0, $t1
	sw $t0, -7612($fp)
	lw $t0, -7612($fp)
	lw $t1, 0($t0)
	sw $t1, -7616($fp)
	lw $t0, -7596($fp)
	lw $t1, -7616($fp)
	mul $t0, $t0, $t1
	sw $t0, -7620($fp)
	li $t0, 0
	sw $t0, -7624($fp)
	lw $t0, -1556($fp)
	sw $t0, -7628($fp)
	li $t0, 33285
	sw $t0, -7632($fp)
	lw $t0, -7628($fp)
	lw $t1, -7632($fp)
	add $t0, $t0, $t1
	sw $t0, -7636($fp)
	lw $t0, -7572($fp)
	sw $t0, -7640($fp)
	lw $t1, -7636($fp)
	lw $t2, -7640($fp)
	ble $t1, $t2, label191
	j label192
label191:
	li $t0, 1
	sw $t0, -7624($fp)
label192:
	li $t0, 0
	sw $t0, -7644($fp)
	lw $t0, -1964($fp)
	sw $t0, -7648($fp)
	lw $t0, -1940($fp)
	sw $t0, -7652($fp)
	lw $t0, -7648($fp)
	lw $t1, -7652($fp)
	add $t0, $t0, $t1
	sw $t0, -7656($fp)
	li $t0, 33378
	sw $t0, -7660($fp)
	lw $t1, -7656($fp)
	lw $t2, -7660($fp)
	blt $t1, $t2, label193
	j label194
label193:
	li $t0, 1
	sw $t0, -7644($fp)
label194:
	li $t0, 8332
	sw $t0, -7664($fp)
	lw $t0, -2492($fp)
	sw $t0, -7668($fp)
	lw $t0, -7664($fp)
	lw $t1, -7668($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7672($fp)
	li $t0, 57372
	sw $t0, -7676($fp)
	lw $t0, -7672($fp)
	lw $t1, -7676($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7680($fp)
	li $t0, 0
	sw $t0, -7684($fp)
	li $t0, 39800
	sw $t0, -7688($fp)
	lw $t1, -7688($fp)
	li $t2, 0
	bne $t1, $t2, label196
	j label195
label195:
	li $t0, 1
	sw $t0, -7684($fp)
label196:
	li $t0, 18894
	sw $t0, -7692($fp)
	lw $t0, -7684($fp)
	lw $t1, -7692($fp)
	sub $t0, $t0, $t1
	sw $t0, -7696($fp)
	addi $sp, $sp, -4
	lw $t0, -7624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7696($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7700($fp)
	addi $sp, $sp, 20
	lw $t0, -7620($fp)
	lw $t1, -7700($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7704($fp)
	li $t0, 0
	sw $t0, -7708($fp)
	li $t0, 38231
	sw $t0, -7712($fp)
	lw $t1, -7712($fp)
	li $t2, 0
	bne $t1, $t2, label198
	j label197
label197:
	li $t0, 1
	sw $t0, -7708($fp)
label198:
	li $t0, 0
	lw $t1, -7708($fp)
	sub $t0, $t0, $t1
	sw $t0, -7716($fp)
	lw $t0, -7704($fp)
	lw $t1, -7716($fp)
	sub $t0, $t0, $t1
	sw $t0, -7720($fp)
label199:
	li $t0, 0
	sw $t0, -7724($fp)
	li $t0, 38929
	sw $t0, -7728($fp)
	li $t0, 0
	lw $t1, -7728($fp)
	sub $t0, $t0, $t1
	sw $t0, -7732($fp)
	lw $t1, -7732($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label202
label202:
	li $t0, 1
	sw $t0, -7724($fp)
label203:
	addi $t0, $fp, -84
	sw $t0, -7736($fp)
	lw $t0, -992($fp)
	sw $t0, -7740($fp)
	li $t0, 4
	lw $t1, -7740($fp)
	mul $t0, $t0, $t1
	sw $t0, -7744($fp)
	lw $t0, -7744($fp)
	lw $t1, -7736($fp)
	add $t0, $t0, $t1
	sw $t0, -7748($fp)
	lw $t0, -7748($fp)
	lw $t1, 0($t0)
	sw $t1, -7752($fp)
	li $t0, 6756
	sw $t0, -7756($fp)
	lw $t0, -7752($fp)
	lw $t1, -7756($fp)
	sub $t0, $t0, $t1
	sw $t0, -7760($fp)
	addi $t0, $fp, -48
	sw $t0, -7764($fp)
	lw $t0, -872($fp)
	sw $t0, -7768($fp)
	li $t0, 4
	lw $t1, -7768($fp)
	mul $t0, $t0, $t1
	sw $t0, -7772($fp)
	lw $t0, -7772($fp)
	lw $t1, -7764($fp)
	add $t0, $t0, $t1
	sw $t0, -7776($fp)
	lw $t0, -7776($fp)
	lw $t1, 0($t0)
	sw $t1, -7780($fp)
	li $t0, 0
	lw $t1, -7780($fp)
	sub $t0, $t0, $t1
	sw $t0, -7784($fp)
	lw $t0, -2228($fp)
	sw $t0, -7788($fp)
	lw $t0, -7788($fp)
	sw $t0, -2672($fp)
	lw $t0, -2672($fp)
	sw $t0, -7792($fp)
	addi $sp, $sp, -4
	lw $t0, -7724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7792($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7796($fp)
	addi $sp, $sp, 20
	lw $t1, -7796($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label201
label200:
	li $t0, 0
	sw $t0, -7800($fp)
	li $t0, 0
	sw $t0, -7804($fp)
	li $t0, 0
	sw $t0, -7808($fp)
	li $t0, 44180
	sw $t0, -7812($fp)
	lw $t0, -1244($fp)
	sw $t0, -7816($fp)
	lw $t1, -7812($fp)
	lw $t2, -7816($fp)
	bne $t1, $t2, label208
	j label209
label208:
	li $t0, 1
	sw $t0, -7808($fp)
label209:
	li $t0, 42674
	sw $t0, -7820($fp)
	lw $t1, -7808($fp)
	lw $t2, -7820($fp)
	beq $t1, $t2, label206
	j label207
label206:
	li $t0, 1
	sw $t0, -7804($fp)
label207:
	li $t0, 0
	sw $t0, -7824($fp)
	lw $t0, -812($fp)
	sw $t0, -7828($fp)
	lw $t0, -7560($fp)
	sw $t0, -7832($fp)
	lw $t1, -7828($fp)
	lw $t2, -7832($fp)
	bne $t1, $t2, label212
	j label211
label212:
	li $t0, 44825
	sw $t0, -7836($fp)
	lw $t1, -7836($fp)
	li $t2, 0
	bne $t1, $t2, label210
	j label211
label210:
	li $t0, 1
	sw $t0, -7824($fp)
label211:
	addi $t0, $fp, -224
	sw $t0, -7840($fp)
	lw $t0, -2492($fp)
	sw $t0, -7844($fp)
	li $t0, 4
	lw $t1, -7844($fp)
	mul $t0, $t0, $t1
	sw $t0, -7848($fp)
	lw $t0, -7848($fp)
	lw $t1, -7840($fp)
	add $t0, $t0, $t1
	sw $t0, -7852($fp)
	lw $t0, -7852($fp)
	lw $t1, 0($t0)
	sw $t1, -7856($fp)
	li $t0, 0
	sw $t0, -7860($fp)
	li $t0, 55280
	sw $t0, -7864($fp)
	li $t0, 24318
	sw $t0, -7868($fp)
	lw $t0, -7864($fp)
	lw $t1, -7868($fp)
	add $t0, $t0, $t1
	sw $t0, -7872($fp)
	li $t0, 53341
	sw $t0, -7876($fp)
	lw $t1, -7872($fp)
	lw $t2, -7876($fp)
	blt $t1, $t2, label213
	j label214
label213:
	li $t0, 1
	sw $t0, -7860($fp)
label214:
	addi $sp, $sp, -4
	lw $t0, -7804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7860($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7880($fp)
	addi $sp, $sp, 20
	li $t0, 6855
	sw $t0, -7884($fp)
	lw $t1, -7880($fp)
	lw $t2, -7884($fp)
	ble $t1, $t2, label204
	j label205
label204:
	li $t0, 1
	sw $t0, -7800($fp)
label205:
	lw $t0, -7800($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -7888($fp)
	j label199
label201:
	j label174
label173:
	li $t0, 0
	sw $t0, -7892($fp)
	lw $t0, -848($fp)
	sw $t0, -7896($fp)
	lw $t1, -7896($fp)
	li $t2, 0
	bne $t1, $t2, label215
	j label218
label218:
	li $t0, 63782
	sw $t0, -7900($fp)
	lw $t1, -7900($fp)
	li $t2, 0
	bne $t1, $t2, label215
	j label217
label217:
	lw $t0, -1220($fp)
	sw $t0, -7904($fp)
	lw $t1, -7904($fp)
	li $t2, 0
	bne $t1, $t2, label215
	j label216
label215:
	li $t0, 1
	sw $t0, -7892($fp)
label216:
	lw $t0, -7156($fp)
	sw $t0, -7908($fp)
	lw $t0, -1232($fp)
	sw $t0, -7912($fp)
	lw $t0, -7908($fp)
	lw $t1, -7912($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7916($fp)
	lw $t0, -884($fp)
	sw $t0, -7920($fp)
	lw $t0, -7920($fp)
	sw $t0, -7144($fp)
	lw $t0, -7144($fp)
	sw $t0, -7924($fp)
	lw $t0, -7132($fp)
	sw $t0, -7928($fp)
	li $t0, 33163
	sw $t0, -7932($fp)
	lw $t0, -7928($fp)
	lw $t1, -7932($fp)
	mul $t0, $t0, $t1
	sw $t0, -7936($fp)
	addi $sp, $sp, -4
	lw $t0, -7892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7936($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7940($fp)
	addi $sp, $sp, 20
	lw $t0, -1232($fp)
	sw $t0, -7944($fp)
	li $t0, 0
	lw $t1, -7944($fp)
	sub $t0, $t0, $t1
	sw $t0, -7948($fp)
	lw $t0, -7940($fp)
	lw $t1, -7948($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7952($fp)
	li $t0, 0
	lw $t1, -7952($fp)
	sub $t0, $t0, $t1
	sw $t0, -7956($fp)
	lw $t0, -7956($fp)
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	sw $t0, -7960($fp)
label174:
	li $t0, 63762
	sw $t0, -7964($fp)
	lw $t0, -7964($fp)
	sw $t0, -7968($fp)
	lw $t0, -7968($fp)
	sw $t0, -7972($fp)
	li $t0, 48288
	sw $t0, -7976($fp)
	lw $t0, -7976($fp)
	sw $t0, -7980($fp)
	lw $t0, -7980($fp)
	sw $t0, -7984($fp)
	li $t0, 30889
	sw $t0, -7988($fp)
	lw $t0, -7988($fp)
	sw $t0, -7992($fp)
	lw $t0, -7992($fp)
	sw $t0, -7996($fp)
	li $t0, 22489
	sw $t0, -8000($fp)
	lw $t0, -8000($fp)
	sw $t0, -8004($fp)
	lw $t0, -8004($fp)
	sw $t0, -8008($fp)
	li $t0, 26026
	sw $t0, -8012($fp)
	lw $t0, -8012($fp)
	sw $t0, -8016($fp)
	lw $t0, -8016($fp)
	sw $t0, -8020($fp)
	li $t0, 2826
	sw $t0, -8024($fp)
	lw $t0, -8024($fp)
	sw $t0, -8028($fp)
	lw $t0, -8028($fp)
	sw $t0, -8032($fp)
	li $t0, 28533
	sw $t0, -8036($fp)
	li $t0, 33300
	sw $t0, -8040($fp)
	lw $t0, -8040($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -8044($fp)
	li $t0, 0
	sw $t0, -8048($fp)
	lw $t0, -7980($fp)
	sw $t0, -8052($fp)
	lw $t1, -8052($fp)
	li $t2, 0
	bne $t1, $t2, label224
	j label223
label224:
	lw $t0, -2432($fp)
	sw $t0, -8056($fp)
	lw $t1, -8056($fp)
	li $t2, 0
	bne $t1, $t2, label222
	j label223
label222:
	li $t0, 1
	sw $t0, -8048($fp)
label223:
	lw $t0, -1256($fp)
	sw $t0, -8060($fp)
	lw $t0, -8060($fp)
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	sw $t0, -8064($fp)
	addi $sp, $sp, -4
	lw $t0, -8036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8064($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8068($fp)
	addi $sp, $sp, 20
	lw $t0, -608($fp)
	sw $t0, -8072($fp)
	lw $t0, -8068($fp)
	lw $t1, -8072($fp)
	mul $t0, $t0, $t1
	sw $t0, -8076($fp)
	lw $t1, -8076($fp)
	li $t2, 0
	bne $t1, $t2, label219
	j label220
label219:
	li $t0, 0
	sw $t0, -8080($fp)
	lw $t0, -2000($fp)
	sw $t0, -8084($fp)
	lw $t1, -8084($fp)
	li $t2, 0
	bne $t1, $t2, label225
	j label227
label227:
	li $t0, 60459
	sw $t0, -8088($fp)
	lw $t0, -872($fp)
	sw $t0, -8092($fp)
	lw $t0, -1268($fp)
	sw $t0, -8096($fp)
	lw $t0, -8092($fp)
	lw $t1, -8096($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8100($fp)
	lw $t0, -8088($fp)
	lw $t1, -8100($fp)
	add $t0, $t0, $t1
	sw $t0, -8104($fp)
	lw $t1, -8104($fp)
	li $t2, 0
	bne $t1, $t2, label225
	j label226
label225:
	li $t0, 1
	sw $t0, -8080($fp)
label226:
	j label221
label220:
	li $t0, 0
	sw $t0, -8108($fp)
	addi $t0, $fp, -140
	sw $t0, -8112($fp)
	lw $t0, -7992($fp)
	sw $t0, -8116($fp)
	lw $t0, -8116($fp)
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	sw $t0, -8120($fp)
	li $t0, 4
	lw $t1, -8120($fp)
	mul $t0, $t0, $t1
	sw $t0, -8124($fp)
	lw $t0, -8124($fp)
	lw $t1, -8112($fp)
	add $t0, $t0, $t1
	sw $t0, -8128($fp)
	lw $t0, -8128($fp)
	lw $t1, 0($t0)
	sw $t1, -8132($fp)
	li $t0, 0
	sw $t0, -8136($fp)
	addi $t0, $fp, -84
	sw $t0, -8140($fp)
	li $t0, 0
	sw $t0, -8144($fp)
	li $t0, 4
	lw $t1, -8144($fp)
	mul $t0, $t0, $t1
	sw $t0, -8148($fp)
	lw $t0, -8148($fp)
	lw $t1, -8140($fp)
	add $t0, $t0, $t1
	sw $t0, -8152($fp)
	lw $t0, -8152($fp)
	lw $t1, 0($t0)
	sw $t1, -8156($fp)
	lw $t1, -8156($fp)
	li $t2, 0
	bne $t1, $t2, label231
	j label230
label230:
	li $t0, 1
	sw $t0, -8136($fp)
label231:
	lw $t0, -1556($fp)
	sw $t0, -8160($fp)
	lw $t0, -8136($fp)
	lw $t1, -8160($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8164($fp)
	lw $t1, -8132($fp)
	lw $t2, -8164($fp)
	blt $t1, $t2, label228
	j label229
label228:
	li $t0, 1
	sw $t0, -8108($fp)
label229:
label221:
	lw $t0, -7968($fp)
	sw $t0, -8168($fp)
	lw $t0, -8168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7980($fp)
	sw $t0, -8172($fp)
	lw $t0, -8172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7992($fp)
	sw $t0, -8176($fp)
	lw $t0, -8176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8004($fp)
	sw $t0, -8180($fp)
	lw $t0, -8180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8016($fp)
	sw $t0, -8184($fp)
	lw $t0, -8184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8028($fp)
	sw $t0, -8188($fp)
	lw $t0, -8188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -8192($fp)
	li $t0, 0
	sw $t0, -8196($fp)
	li $t0, 6690
	sw $t0, -8200($fp)
	lw $t0, -8200($fp)
	sw $t0, -2588($fp)
	lw $t0, -2588($fp)
	sw $t0, -8204($fp)
	li $t0, 0
	sw $t0, -8208($fp)
	lw $t0, -8004($fp)
	sw $t0, -8212($fp)
	lw $t1, -8212($fp)
	li $t2, 0
	bne $t1, $t2, label238
	j label237
label238:
	lw $t0, -8016($fp)
	sw $t0, -8216($fp)
	lw $t1, -8216($fp)
	li $t2, 0
	bne $t1, $t2, label236
	j label237
label236:
	li $t0, 1
	sw $t0, -8208($fp)
label237:
	li $t0, 0
	sw $t0, -8220($fp)
	li $t0, 62764
	sw $t0, -8224($fp)
	lw $t1, -8224($fp)
	li $t2, 0
	bne $t1, $t2, label239
	j label242
label242:
	lw $t0, -1220($fp)
	sw $t0, -8228($fp)
	lw $t1, -8228($fp)
	li $t2, 0
	bne $t1, $t2, label239
	j label241
label241:
	lw $t0, -2432($fp)
	sw $t0, -8232($fp)
	lw $t1, -8232($fp)
	li $t2, 0
	bne $t1, $t2, label239
	j label240
label239:
	li $t0, 1
	sw $t0, -8220($fp)
label240:
	li $t0, 50815
	sw $t0, -8236($fp)
	lw $t0, -8236($fp)
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	sw $t0, -8240($fp)
	li $t0, 0
	sw $t0, -8244($fp)
	lw $t0, -1532($fp)
	sw $t0, -8248($fp)
	lw $t0, -800($fp)
	sw $t0, -8252($fp)
	lw $t1, -8248($fp)
	lw $t2, -8252($fp)
	beq $t1, $t2, label245
	j label244
label245:
	lw $t0, -7120($fp)
	sw $t0, -8256($fp)
	lw $t1, -8256($fp)
	li $t2, 0
	bne $t1, $t2, label243
	j label244
label243:
	li $t0, 1
	sw $t0, -8244($fp)
label244:
	li $t0, 63894
	sw $t0, -8260($fp)
	li $t0, 0
	sw $t0, -8264($fp)
	lw $t0, -1508($fp)
	sw $t0, -8268($fp)
	li $t0, 43870
	sw $t0, -8272($fp)
	lw $t1, -8268($fp)
	lw $t2, -8272($fp)
	beq $t1, $t2, label246
	j label248
label248:
	lw $t0, -1520($fp)
	sw $t0, -8276($fp)
	lw $t1, -8276($fp)
	li $t2, 0
	bne $t1, $t2, label246
	j label247
label246:
	li $t0, 1
	sw $t0, -8264($fp)
label247:
	addi $sp, $sp, -4
	lw $t0, -8240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8264($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8280($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -8280($fp)
	sub $t0, $t0, $t1
	sw $t0, -8284($fp)
	addi $sp, $sp, -4
	lw $t0, -8204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8284($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8288($fp)
	addi $sp, $sp, 20
	lw $t1, -8288($fp)
	li $t2, 0
	bne $t1, $t2, label234
	j label235
label234:
	li $t0, 1
	sw $t0, -8196($fp)
label235:
	li $t0, 0
	sw $t0, -8292($fp)
	li $t0, 42651
	sw $t0, -8296($fp)
	lw $t0, -1520($fp)
	sw $t0, -8300($fp)
	lw $t0, -8296($fp)
	lw $t1, -8300($fp)
	sub $t0, $t0, $t1
	sw $t0, -8304($fp)
	lw $t0, -1220($fp)
	sw $t0, -8308($fp)
	lw $t0, -8304($fp)
	lw $t1, -8308($fp)
	add $t0, $t0, $t1
	sw $t0, -8312($fp)
	lw $t0, -1136($fp)
	sw $t0, -8316($fp)
	li $t0, 11949
	sw $t0, -8320($fp)
	lw $t0, -8316($fp)
	lw $t1, -8320($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8324($fp)
	lw $t0, -1160($fp)
	sw $t0, -8328($fp)
	lw $t0, -8324($fp)
	lw $t1, -8328($fp)
	sub $t0, $t0, $t1
	sw $t0, -8332($fp)
	addi $t0, $fp, -104
	sw $t0, -8336($fp)
	lw $t0, -7968($fp)
	sw $t0, -8340($fp)
	li $t0, 4
	lw $t1, -8340($fp)
	mul $t0, $t0, $t1
	sw $t0, -8344($fp)
	lw $t0, -8344($fp)
	lw $t1, -8336($fp)
	add $t0, $t0, $t1
	sw $t0, -8348($fp)
	lw $t0, -8348($fp)
	lw $t1, 0($t0)
	sw $t1, -8352($fp)
	li $t0, 7447
	sw $t0, -8356($fp)
	lw $t0, -8356($fp)
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	sw $t0, -8360($fp)
	li $t0, 56241
	sw $t0, -8364($fp)
	li $t0, 0
	sw $t0, -8368($fp)
	lw $t0, -1172($fp)
	sw $t0, -8372($fp)
	li $t0, 54996
	sw $t0, -8376($fp)
	lw $t0, -8372($fp)
	lw $t1, -8376($fp)
	add $t0, $t0, $t1
	sw $t0, -8380($fp)
	lw $t0, -2456($fp)
	sw $t0, -8384($fp)
	lw $t0, -8380($fp)
	lw $t1, -8384($fp)
	add $t0, $t0, $t1
	sw $t0, -8388($fp)
	li $t0, 0
	sw $t0, -8392($fp)
	li $t0, 56770
	sw $t0, -8396($fp)
	li $t0, 7952
	sw $t0, -8400($fp)
	lw $t0, -8396($fp)
	lw $t1, -8400($fp)
	add $t0, $t0, $t1
	sw $t0, -8404($fp)
	lw $t1, -8404($fp)
	li $t2, 0
	bne $t1, $t2, label255
	j label254
label255:
	li $t0, 42094
	sw $t0, -8408($fp)
	lw $t1, -8408($fp)
	li $t2, 0
	bne $t1, $t2, label253
	j label254
label253:
	li $t0, 1
	sw $t0, -8392($fp)
label254:
	li $t0, 0
	sw $t0, -8412($fp)
	li $t0, 43847
	sw $t0, -8416($fp)
	li $t0, 0
	lw $t1, -8416($fp)
	sub $t0, $t0, $t1
	sw $t0, -8420($fp)
	lw $t1, -8420($fp)
	li $t2, 0
	bne $t1, $t2, label258
	j label257
label258:
	lw $t0, -2420($fp)
	sw $t0, -8424($fp)
	lw $t1, -8424($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label257
label256:
	li $t0, 1
	sw $t0, -8412($fp)
label257:
	li $t0, 0
	sw $t0, -8428($fp)
	lw $t0, -6664($fp)
	sw $t0, -8432($fp)
	li $t0, 40325
	sw $t0, -8436($fp)
	lw $t0, -8432($fp)
	lw $t1, -8436($fp)
	sub $t0, $t0, $t1
	sw $t0, -8440($fp)
	lw $t0, -2600($fp)
	sw $t0, -8444($fp)
	lw $t1, -8440($fp)
	lw $t2, -8444($fp)
	beq $t1, $t2, label259
	j label260
label259:
	li $t0, 1
	sw $t0, -8428($fp)
label260:
	addi $sp, $sp, -4
	lw $t0, -8388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8428($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8448($fp)
	addi $sp, $sp, 20
	lw $t1, -8448($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label251
label251:
	li $t0, 1
	sw $t0, -8368($fp)
label252:
	addi $t0, $fp, -284
	sw $t0, -8452($fp)
	lw $t0, -2516($fp)
	sw $t0, -8456($fp)
	li $t0, 4
	lw $t1, -8456($fp)
	mul $t0, $t0, $t1
	sw $t0, -8460($fp)
	lw $t0, -8460($fp)
	lw $t1, -8452($fp)
	add $t0, $t0, $t1
	sw $t0, -8464($fp)
	lw $t0, -8464($fp)
	lw $t1, 0($t0)
	sw $t1, -8468($fp)
	addi $sp, $sp, -4
	lw $t0, -8360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8468($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8472($fp)
	addi $sp, $sp, 20
	lw $t0, -7144($fp)
	sw $t0, -8476($fp)
	li $t0, 1173
	sw $t0, -8480($fp)
	lw $t0, -8476($fp)
	lw $t1, -8480($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8484($fp)
	li $t0, 49915
	sw $t0, -8488($fp)
	lw $t0, -8484($fp)
	lw $t1, -8488($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8492($fp)
	li $t0, 0
	sw $t0, -8496($fp)
	li $t0, 5090
	sw $t0, -8500($fp)
	lw $t0, -1520($fp)
	sw $t0, -8504($fp)
	lw $t0, -8500($fp)
	lw $t1, -8504($fp)
	mul $t0, $t0, $t1
	sw $t0, -8508($fp)
	li $t0, 61681
	sw $t0, -8512($fp)
	lw $t1, -8508($fp)
	lw $t2, -8512($fp)
	bne $t1, $t2, label261
	j label262
label261:
	li $t0, 1
	sw $t0, -8496($fp)
label262:
	li $t0, 0
	sw $t0, -8516($fp)
	lw $t0, 8($fp)
	sw $t0, -8520($fp)
	li $t0, 0
	sw $t0, -8524($fp)
	li $t0, 0
	sw $t0, -8528($fp)
	lw $t0, -1520($fp)
	sw $t0, -8532($fp)
	li $t0, 37363
	sw $t0, -8536($fp)
	lw $t1, -8532($fp)
	lw $t2, -8536($fp)
	beq $t1, $t2, label268
	j label269
label268:
	li $t0, 1
	sw $t0, -8528($fp)
label269:
	lw $t0, -788($fp)
	sw $t0, -8540($fp)
	lw $t1, -8528($fp)
	lw $t2, -8540($fp)
	bne $t1, $t2, label266
	j label267
label266:
	li $t0, 1
	sw $t0, -8524($fp)
label267:
	lw $t0, -8028($fp)
	sw $t0, -8544($fp)
	li $t0, 39975
	sw $t0, -8548($fp)
	lw $t0, -8544($fp)
	lw $t1, -8548($fp)
	sub $t0, $t0, $t1
	sw $t0, -8552($fp)
	li $t0, 15346
	sw $t0, -8556($fp)
	lw $t0, -8552($fp)
	lw $t1, -8556($fp)
	add $t0, $t0, $t1
	sw $t0, -8560($fp)
	li $t0, 0
	sw $t0, -8564($fp)
	lw $t0, -2576($fp)
	sw $t0, -8568($fp)
	lw $t1, -8568($fp)
	li $t2, 0
	bne $t1, $t2, label271
	j label270
label270:
	li $t0, 1
	sw $t0, -8564($fp)
label271:
	addi $sp, $sp, -4
	lw $t0, -8520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8564($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8572($fp)
	addi $sp, $sp, 20
	lw $t1, -8572($fp)
	li $t2, 0
	bne $t1, $t2, label265
	j label264
label265:
	li $t0, 13368
	sw $t0, -8576($fp)
	lw $t1, -8576($fp)
	li $t2, 0
	bne $t1, $t2, label263
	j label264
label263:
	li $t0, 1
	sw $t0, -8516($fp)
label264:
	li $t0, 30607
	sw $t0, -8580($fp)
	addi $sp, $sp, -4
	lw $t0, -8492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8580($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8584($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -8332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8584($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8588($fp)
	addi $sp, $sp, 20
	lw $t1, -8312($fp)
	lw $t2, -8588($fp)
	bgt $t1, $t2, label249
	j label250
label249:
	li $t0, 1
	sw $t0, -8292($fp)
label250:
	lw $t1, -8196($fp)
	lw $t2, -8292($fp)
	beq $t1, $t2, label232
	j label233
label232:
	li $t0, 1
	sw $t0, -8192($fp)
label233:
	lw $ra, -4($fp)
	lw $v0, -8192($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 16731
	sw $t0, -8592($fp)
	li $t0, 10273
	sw $t0, -8596($fp)
	lw $t0, -8592($fp)
	lw $t1, -8596($fp)
	mul $t0, $t0, $t1
	sw $t0, -8600($fp)
	lw $t0, -2516($fp)
	sw $t0, -8604($fp)
	addi $t0, $fp, -6580
	sw $t0, -8608($fp)
	li $t0, 5
	sw $t0, -8612($fp)
	li $t0, 4
	lw $t1, -8612($fp)
	mul $t0, $t0, $t1
	sw $t0, -8616($fp)
	lw $t0, -8616($fp)
	lw $t1, -8608($fp)
	add $t0, $t0, $t1
	sw $t0, -8620($fp)
	lw $t0, -8620($fp)
	lw $t1, 0($t0)
	sw $t1, -8624($fp)
	lw $t0, -8604($fp)
	lw $t1, -8624($fp)
	mul $t0, $t0, $t1
	sw $t0, -8628($fp)
	addi $t0, $fp, -6616
	sw $t0, -8632($fp)
	lw $t0, -2600($fp)
	sw $t0, -8636($fp)
	li $t0, 4
	lw $t1, -8636($fp)
	mul $t0, $t0, $t1
	sw $t0, -8640($fp)
	lw $t0, -8640($fp)
	lw $t1, -8632($fp)
	add $t0, $t0, $t1
	sw $t0, -8644($fp)
	lw $t0, -8644($fp)
	lw $t1, 0($t0)
	sw $t1, -8648($fp)
	li $t0, 0
	lw $t1, -8648($fp)
	sub $t0, $t0, $t1
	sw $t0, -8652($fp)
	lw $t0, -8628($fp)
	lw $t1, -8652($fp)
	add $t0, $t0, $t1
	sw $t0, -8656($fp)
	li $t0, 0
	sw $t0, -8660($fp)
	li $t0, 0
	sw $t0, -8664($fp)
	addi $t0, $fp, -40
	sw $t0, -8668($fp)
	li $t0, 2
	sw $t0, -8672($fp)
	li $t0, 4
	lw $t1, -8672($fp)
	mul $t0, $t0, $t1
	sw $t0, -8676($fp)
	lw $t0, -8676($fp)
	lw $t1, -8668($fp)
	add $t0, $t0, $t1
	sw $t0, -8680($fp)
	lw $t0, -8680($fp)
	lw $t1, 0($t0)
	sw $t1, -8684($fp)
	lw $t1, -8684($fp)
	li $t2, 0
	bne $t1, $t2, label279
	j label278
label279:
	lw $t0, -7156($fp)
	sw $t0, -8688($fp)
	lw $t1, -8688($fp)
	li $t2, 0
	bne $t1, $t2, label277
	j label278
label277:
	li $t0, 1
	sw $t0, -8664($fp)
label278:
	li $t0, 43801
	sw $t0, -8692($fp)
	li $t0, 1
	sw $t0, -8696($fp)
	lw $t0, -8692($fp)
	lw $t1, -8696($fp)
	mul $t0, $t0, $t1
	sw $t0, -8700($fp)
	li $t0, 0
	lw $t1, -8700($fp)
	sub $t0, $t0, $t1
	sw $t0, -8704($fp)
	lw $t0, -1148($fp)
	sw $t0, -8708($fp)
	li $t0, 0
	lw $t1, -8708($fp)
	sub $t0, $t0, $t1
	sw $t0, -8712($fp)
	li $t0, 0
	sw $t0, -8716($fp)
	addi $t0, $fp, -6616
	sw $t0, -8720($fp)
	lw $t0, -992($fp)
	sw $t0, -8724($fp)
	li $t0, 4
	lw $t1, -8724($fp)
	mul $t0, $t0, $t1
	sw $t0, -8728($fp)
	lw $t0, -8728($fp)
	lw $t1, -8720($fp)
	add $t0, $t0, $t1
	sw $t0, -8732($fp)
	lw $t0, -8732($fp)
	lw $t1, 0($t0)
	sw $t1, -8736($fp)
	li $t0, 5196
	sw $t0, -8740($fp)
	lw $t1, -8736($fp)
	lw $t2, -8740($fp)
	bgt $t1, $t2, label280
	j label281
label280:
	li $t0, 1
	sw $t0, -8716($fp)
label281:
	addi $sp, $sp, -4
	lw $t0, -8664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8716($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8744($fp)
	addi $sp, $sp, 20
	lw $t1, -8744($fp)
	li $t2, 0
	bne $t1, $t2, label275
	j label276
label275:
	li $t0, 1
	sw $t0, -8660($fp)
label276:
	lw $t1, -8656($fp)
	lw $t2, -8660($fp)
	ble $t1, $t2, label272
	j label273
label272:
	li $t0, 0
	sw $t0, -8748($fp)
	li $t0, 41559
	sw $t0, -8752($fp)
	li $t0, 46295
	sw $t0, -8756($fp)
	lw $t0, -8752($fp)
	lw $t1, -8756($fp)
	mul $t0, $t0, $t1
	sw $t0, -8760($fp)
	lw $t0, -2420($fp)
	sw $t0, -8764($fp)
	lw $t0, -8760($fp)
	lw $t1, -8764($fp)
	sub $t0, $t0, $t1
	sw $t0, -8768($fp)
	lw $t1, -8768($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label283
label284:
	li $t0, 48849
	sw $t0, -8772($fp)
	li $t0, 18674
	sw $t0, -8776($fp)
	lw $t0, -8772($fp)
	lw $t1, -8776($fp)
	mul $t0, $t0, $t1
	sw $t0, -8780($fp)
	lw $t1, -8780($fp)
	li $t2, 0
	bne $t1, $t2, label282
	j label283
label282:
	li $t0, 1
	sw $t0, -8748($fp)
label283:
	lw $t0, -8748($fp)
	sw $t0, -2876($fp)
	lw $t0, -2876($fp)
	sw $t0, -8784($fp)
label273:
	lw $t0, -6664($fp)
	sw $t0, -8788($fp)
	lw $t0, -8788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6580
	sw $t0, -8792($fp)
	li $t0, 0
	sw $t0, -8796($fp)
	li $t0, 4
	lw $t1, -8796($fp)
	mul $t0, $t0, $t1
	sw $t0, -8800($fp)
	lw $t0, -8800($fp)
	lw $t1, -8792($fp)
	add $t0, $t0, $t1
	sw $t0, -8804($fp)
	lw $t0, -8804($fp)
	lw $t1, 0($t0)
	sw $t1, -8808($fp)
	lw $t0, -8808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6580
	sw $t0, -8812($fp)
	li $t0, 1
	sw $t0, -8816($fp)
	li $t0, 4
	lw $t1, -8816($fp)
	mul $t0, $t0, $t1
	sw $t0, -8820($fp)
	lw $t0, -8820($fp)
	lw $t1, -8812($fp)
	add $t0, $t0, $t1
	sw $t0, -8824($fp)
	lw $t0, -8824($fp)
	lw $t1, 0($t0)
	sw $t1, -8828($fp)
	lw $t0, -8828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6580
	sw $t0, -8832($fp)
	li $t0, 2
	sw $t0, -8836($fp)
	li $t0, 4
	lw $t1, -8836($fp)
	mul $t0, $t0, $t1
	sw $t0, -8840($fp)
	lw $t0, -8840($fp)
	lw $t1, -8832($fp)
	add $t0, $t0, $t1
	sw $t0, -8844($fp)
	lw $t0, -8844($fp)
	lw $t1, 0($t0)
	sw $t1, -8848($fp)
	lw $t0, -8848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6580
	sw $t0, -8852($fp)
	li $t0, 3
	sw $t0, -8856($fp)
	li $t0, 4
	lw $t1, -8856($fp)
	mul $t0, $t0, $t1
	sw $t0, -8860($fp)
	lw $t0, -8860($fp)
	lw $t1, -8852($fp)
	add $t0, $t0, $t1
	sw $t0, -8864($fp)
	lw $t0, -8864($fp)
	lw $t1, 0($t0)
	sw $t1, -8868($fp)
	lw $t0, -8868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6580
	sw $t0, -8872($fp)
	li $t0, 4
	sw $t0, -8876($fp)
	li $t0, 4
	lw $t1, -8876($fp)
	mul $t0, $t0, $t1
	sw $t0, -8880($fp)
	lw $t0, -8880($fp)
	lw $t1, -8872($fp)
	add $t0, $t0, $t1
	sw $t0, -8884($fp)
	lw $t0, -8884($fp)
	lw $t1, 0($t0)
	sw $t1, -8888($fp)
	lw $t0, -8888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6580
	sw $t0, -8892($fp)
	li $t0, 5
	sw $t0, -8896($fp)
	li $t0, 4
	lw $t1, -8896($fp)
	mul $t0, $t0, $t1
	sw $t0, -8900($fp)
	lw $t0, -8900($fp)
	lw $t1, -8892($fp)
	add $t0, $t0, $t1
	sw $t0, -8904($fp)
	lw $t0, -8904($fp)
	lw $t1, 0($t0)
	sw $t1, -8908($fp)
	lw $t0, -8908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6580
	sw $t0, -8912($fp)
	li $t0, 6
	sw $t0, -8916($fp)
	li $t0, 4
	lw $t1, -8916($fp)
	mul $t0, $t0, $t1
	sw $t0, -8920($fp)
	lw $t0, -8920($fp)
	lw $t1, -8912($fp)
	add $t0, $t0, $t1
	sw $t0, -8924($fp)
	lw $t0, -8924($fp)
	lw $t1, 0($t0)
	sw $t1, -8928($fp)
	lw $t0, -8928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6616
	sw $t0, -8932($fp)
	li $t0, 0
	sw $t0, -8936($fp)
	li $t0, 4
	lw $t1, -8936($fp)
	mul $t0, $t0, $t1
	sw $t0, -8940($fp)
	lw $t0, -8940($fp)
	lw $t1, -8932($fp)
	add $t0, $t0, $t1
	sw $t0, -8944($fp)
	lw $t0, -8944($fp)
	lw $t1, 0($t0)
	sw $t1, -8948($fp)
	lw $t0, -8948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6616
	sw $t0, -8952($fp)
	li $t0, 1
	sw $t0, -8956($fp)
	li $t0, 4
	lw $t1, -8956($fp)
	mul $t0, $t0, $t1
	sw $t0, -8960($fp)
	lw $t0, -8960($fp)
	lw $t1, -8952($fp)
	add $t0, $t0, $t1
	sw $t0, -8964($fp)
	lw $t0, -8964($fp)
	lw $t1, 0($t0)
	sw $t1, -8968($fp)
	lw $t0, -8968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6616
	sw $t0, -8972($fp)
	li $t0, 2
	sw $t0, -8976($fp)
	li $t0, 4
	lw $t1, -8976($fp)
	mul $t0, $t0, $t1
	sw $t0, -8980($fp)
	lw $t0, -8980($fp)
	lw $t1, -8972($fp)
	add $t0, $t0, $t1
	sw $t0, -8984($fp)
	lw $t0, -8984($fp)
	lw $t1, 0($t0)
	sw $t1, -8988($fp)
	lw $t0, -8988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6616
	sw $t0, -8992($fp)
	li $t0, 3
	sw $t0, -8996($fp)
	li $t0, 4
	lw $t1, -8996($fp)
	mul $t0, $t0, $t1
	sw $t0, -9000($fp)
	lw $t0, -9000($fp)
	lw $t1, -8992($fp)
	add $t0, $t0, $t1
	sw $t0, -9004($fp)
	lw $t0, -9004($fp)
	lw $t1, 0($t0)
	sw $t1, -9008($fp)
	lw $t0, -9008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6616
	sw $t0, -9012($fp)
	li $t0, 4
	sw $t0, -9016($fp)
	li $t0, 4
	lw $t1, -9016($fp)
	mul $t0, $t0, $t1
	sw $t0, -9020($fp)
	lw $t0, -9020($fp)
	lw $t1, -9012($fp)
	add $t0, $t0, $t1
	sw $t0, -9024($fp)
	lw $t0, -9024($fp)
	lw $t1, 0($t0)
	sw $t1, -9028($fp)
	lw $t0, -9028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6616
	sw $t0, -9032($fp)
	li $t0, 5
	sw $t0, -9036($fp)
	li $t0, 4
	lw $t1, -9036($fp)
	mul $t0, $t0, $t1
	sw $t0, -9040($fp)
	lw $t0, -9040($fp)
	lw $t1, -9032($fp)
	add $t0, $t0, $t1
	sw $t0, -9044($fp)
	lw $t0, -9044($fp)
	lw $t1, 0($t0)
	sw $t1, -9048($fp)
	lw $t0, -9048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6616
	sw $t0, -9052($fp)
	li $t0, 6
	sw $t0, -9056($fp)
	li $t0, 4
	lw $t1, -9056($fp)
	mul $t0, $t0, $t1
	sw $t0, -9060($fp)
	lw $t0, -9060($fp)
	lw $t1, -9052($fp)
	add $t0, $t0, $t1
	sw $t0, -9064($fp)
	lw $t0, -9064($fp)
	lw $t1, 0($t0)
	sw $t1, -9068($fp)
	lw $t0, -9068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6616
	sw $t0, -9072($fp)
	li $t0, 7
	sw $t0, -9076($fp)
	li $t0, 4
	lw $t1, -9076($fp)
	mul $t0, $t0, $t1
	sw $t0, -9080($fp)
	lw $t0, -9080($fp)
	lw $t1, -9072($fp)
	add $t0, $t0, $t1
	sw $t0, -9084($fp)
	lw $t0, -9084($fp)
	lw $t1, 0($t0)
	sw $t1, -9088($fp)
	lw $t0, -9088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6616
	sw $t0, -9092($fp)
	li $t0, 8
	sw $t0, -9096($fp)
	li $t0, 4
	lw $t1, -9096($fp)
	mul $t0, $t0, $t1
	sw $t0, -9100($fp)
	lw $t0, -9100($fp)
	lw $t1, -9092($fp)
	add $t0, $t0, $t1
	sw $t0, -9104($fp)
	lw $t0, -9104($fp)
	lw $t1, 0($t0)
	sw $t1, -9108($fp)
	lw $t0, -9108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7060($fp)
	sw $t0, -9112($fp)
	lw $t0, -9112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7072($fp)
	sw $t0, -9116($fp)
	lw $t0, -9116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7084($fp)
	sw $t0, -9120($fp)
	lw $t0, -9120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7096($fp)
	sw $t0, -9124($fp)
	lw $t0, -9124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7108($fp)
	sw $t0, -9128($fp)
	lw $t0, -9128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7120($fp)
	sw $t0, -9132($fp)
	lw $t0, -9132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7132($fp)
	sw $t0, -9136($fp)
	lw $t0, -9136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7144($fp)
	sw $t0, -9140($fp)
	lw $t0, -9140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7156($fp)
	sw $t0, -9144($fp)
	lw $t0, -9144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7168($fp)
	sw $t0, -9148($fp)
	lw $t0, -9148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6656
	sw $t0, -9152($fp)
	li $t0, 0
	sw $t0, -9156($fp)
	li $t0, 4
	lw $t1, -9156($fp)
	mul $t0, $t0, $t1
	sw $t0, -9160($fp)
	lw $t0, -9160($fp)
	lw $t1, -9152($fp)
	add $t0, $t0, $t1
	sw $t0, -9164($fp)
	lw $t0, -9164($fp)
	lw $t1, 0($t0)
	sw $t1, -9168($fp)
	lw $t0, -9168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6656
	sw $t0, -9172($fp)
	li $t0, 1
	sw $t0, -9176($fp)
	li $t0, 4
	lw $t1, -9176($fp)
	mul $t0, $t0, $t1
	sw $t0, -9180($fp)
	lw $t0, -9180($fp)
	lw $t1, -9172($fp)
	add $t0, $t0, $t1
	sw $t0, -9184($fp)
	lw $t0, -9184($fp)
	lw $t1, 0($t0)
	sw $t1, -9188($fp)
	lw $t0, -9188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6656
	sw $t0, -9192($fp)
	li $t0, 2
	sw $t0, -9196($fp)
	li $t0, 4
	lw $t1, -9196($fp)
	mul $t0, $t0, $t1
	sw $t0, -9200($fp)
	lw $t0, -9200($fp)
	lw $t1, -9192($fp)
	add $t0, $t0, $t1
	sw $t0, -9204($fp)
	lw $t0, -9204($fp)
	lw $t1, 0($t0)
	sw $t1, -9208($fp)
	lw $t0, -9208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6656
	sw $t0, -9212($fp)
	li $t0, 3
	sw $t0, -9216($fp)
	li $t0, 4
	lw $t1, -9216($fp)
	mul $t0, $t0, $t1
	sw $t0, -9220($fp)
	lw $t0, -9220($fp)
	lw $t1, -9212($fp)
	add $t0, $t0, $t1
	sw $t0, -9224($fp)
	lw $t0, -9224($fp)
	lw $t1, 0($t0)
	sw $t1, -9228($fp)
	lw $t0, -9228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6656
	sw $t0, -9232($fp)
	li $t0, 4
	sw $t0, -9236($fp)
	li $t0, 4
	lw $t1, -9236($fp)
	mul $t0, $t0, $t1
	sw $t0, -9240($fp)
	lw $t0, -9240($fp)
	lw $t1, -9232($fp)
	add $t0, $t0, $t1
	sw $t0, -9244($fp)
	lw $t0, -9244($fp)
	lw $t1, 0($t0)
	sw $t1, -9248($fp)
	lw $t0, -9248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6656
	sw $t0, -9252($fp)
	li $t0, 5
	sw $t0, -9256($fp)
	li $t0, 4
	lw $t1, -9256($fp)
	mul $t0, $t0, $t1
	sw $t0, -9260($fp)
	lw $t0, -9260($fp)
	lw $t1, -9252($fp)
	add $t0, $t0, $t1
	sw $t0, -9264($fp)
	lw $t0, -9264($fp)
	lw $t1, 0($t0)
	sw $t1, -9268($fp)
	lw $t0, -9268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6656
	sw $t0, -9272($fp)
	li $t0, 6
	sw $t0, -9276($fp)
	li $t0, 4
	lw $t1, -9276($fp)
	mul $t0, $t0, $t1
	sw $t0, -9280($fp)
	lw $t0, -9280($fp)
	lw $t1, -9272($fp)
	add $t0, $t0, $t1
	sw $t0, -9284($fp)
	lw $t0, -9284($fp)
	lw $t1, 0($t0)
	sw $t1, -9288($fp)
	lw $t0, -9288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6656
	sw $t0, -9292($fp)
	li $t0, 7
	sw $t0, -9296($fp)
	li $t0, 4
	lw $t1, -9296($fp)
	mul $t0, $t0, $t1
	sw $t0, -9300($fp)
	lw $t0, -9300($fp)
	lw $t1, -9292($fp)
	add $t0, $t0, $t1
	sw $t0, -9304($fp)
	lw $t0, -9304($fp)
	lw $t1, 0($t0)
	sw $t1, -9308($fp)
	lw $t0, -9308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6656
	sw $t0, -9312($fp)
	li $t0, 8
	sw $t0, -9316($fp)
	li $t0, 4
	lw $t1, -9316($fp)
	mul $t0, $t0, $t1
	sw $t0, -9320($fp)
	lw $t0, -9320($fp)
	lw $t1, -9312($fp)
	add $t0, $t0, $t1
	sw $t0, -9324($fp)
	lw $t0, -9324($fp)
	lw $t1, 0($t0)
	sw $t1, -9328($fp)
	lw $t0, -9328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6656
	sw $t0, -9332($fp)
	li $t0, 9
	sw $t0, -9336($fp)
	li $t0, 4
	lw $t1, -9336($fp)
	mul $t0, $t0, $t1
	sw $t0, -9340($fp)
	lw $t0, -9340($fp)
	lw $t1, -9332($fp)
	add $t0, $t0, $t1
	sw $t0, -9344($fp)
	lw $t0, -9344($fp)
	lw $t1, 0($t0)
	sw $t1, -9348($fp)
	lw $t0, -9348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -9352($fp)
	li $t0, 0
	sw $t0, -9356($fp)
	addi $t0, $fp, -6656
	sw $t0, -9360($fp)
	lw $t0, -7060($fp)
	sw $t0, -9364($fp)
	lw $t0, -7072($fp)
	sw $t0, -9368($fp)
	lw $t0, -9364($fp)
	lw $t1, -9368($fp)
	add $t0, $t0, $t1
	sw $t0, -9372($fp)
	li $t0, 4
	lw $t1, -9372($fp)
	mul $t0, $t0, $t1
	sw $t0, -9376($fp)
	lw $t0, -9376($fp)
	lw $t1, -9360($fp)
	add $t0, $t0, $t1
	sw $t0, -9380($fp)
	lw $t0, -9380($fp)
	lw $t1, 0($t0)
	sw $t1, -9384($fp)
	li $t0, 11366
	sw $t0, -9388($fp)
	lw $t1, -9384($fp)
	lw $t2, -9388($fp)
	blt $t1, $t2, label287
	j label288
label287:
	li $t0, 1
	sw $t0, -9356($fp)
label288:
	li $t0, 0
	sw $t0, -9392($fp)
	li $t0, 0
	sw $t0, -9396($fp)
	li $t0, 0
	sw $t0, -9400($fp)
	lw $t0, -812($fp)
	sw $t0, -9404($fp)
	lw $t1, -9404($fp)
	li $t2, 0
	bne $t1, $t2, label295
	j label296
label296:
	lw $t0, -1916($fp)
	sw $t0, -9408($fp)
	lw $t1, -9408($fp)
	li $t2, 0
	bne $t1, $t2, label294
	j label295
label294:
	li $t0, 1
	sw $t0, -9400($fp)
label295:
	li $t0, 0
	sw $t0, -9412($fp)
	li $t0, 0
	sw $t0, -9416($fp)
	li $t0, 14724
	sw $t0, -9420($fp)
	li $t0, 27616
	sw $t0, -9424($fp)
	lw $t1, -9420($fp)
	lw $t2, -9424($fp)
	blt $t1, $t2, label299
	j label300
label299:
	li $t0, 1
	sw $t0, -9416($fp)
label300:
	li $t0, 58234
	sw $t0, -9428($fp)
	lw $t1, -9416($fp)
	lw $t2, -9428($fp)
	bge $t1, $t2, label297
	j label298
label297:
	li $t0, 1
	sw $t0, -9412($fp)
label298:
	li $t0, 0
	sw $t0, -9432($fp)
	li $t0, 19664
	sw $t0, -9436($fp)
	li $t0, 16140
	sw $t0, -9440($fp)
	lw $t0, -9436($fp)
	lw $t1, -9440($fp)
	mul $t0, $t0, $t1
	sw $t0, -9444($fp)
	lw $t1, -9444($fp)
	li $t2, 0
	bne $t1, $t2, label303
	j label302
label303:
	lw $t0, -764($fp)
	sw $t0, -9448($fp)
	lw $t1, -9448($fp)
	li $t2, 0
	bne $t1, $t2, label301
	j label302
label301:
	li $t0, 1
	sw $t0, -9432($fp)
label302:
	li $t0, 0
	sw $t0, -9452($fp)
	li $t0, 37829
	sw $t0, -9456($fp)
	lw $t1, -9456($fp)
	li $t2, 0
	bne $t1, $t2, label307
	j label306
label307:
	lw $t0, -7120($fp)
	sw $t0, -9460($fp)
	lw $t1, -9460($fp)
	li $t2, 0
	bne $t1, $t2, label304
	j label306
label306:
	li $t0, 23490
	sw $t0, -9464($fp)
	lw $t1, -9464($fp)
	li $t2, 0
	bne $t1, $t2, label304
	j label305
label304:
	li $t0, 1
	sw $t0, -9452($fp)
label305:
	addi $sp, $sp, -4
	lw $t0, -9400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9452($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9468($fp)
	addi $sp, $sp, 20
	lw $t1, -9468($fp)
	li $t2, 0
	bne $t1, $t2, label291
	j label293
label293:
	lw $t0, -1172($fp)
	sw $t0, -9472($fp)
	lw $t1, -9472($fp)
	li $t2, 0
	bne $t1, $t2, label291
	j label292
label291:
	li $t0, 1
	sw $t0, -9396($fp)
label292:
	li $t0, 44874
	sw $t0, -9476($fp)
	li $t0, 0
	sw $t0, -9480($fp)
	li $t0, 0
	sw $t0, -9484($fp)
	li $t0, 48729
	sw $t0, -9488($fp)
	lw $t1, -9488($fp)
	li $t2, 0
	bne $t1, $t2, label310
	j label313
label313:
	li $t0, 36656
	sw $t0, -9492($fp)
	lw $t1, -9492($fp)
	li $t2, 0
	bne $t1, $t2, label310
	j label312
label312:
	li $t0, 39110
	sw $t0, -9496($fp)
	lw $t1, -9496($fp)
	li $t2, 0
	bne $t1, $t2, label310
	j label311
label310:
	li $t0, 1
	sw $t0, -9484($fp)
label311:
	li $t0, 0
	sw $t0, -9500($fp)
	lw $t0, -1196($fp)
	sw $t0, -9504($fp)
	li $t0, 34020
	sw $t0, -9508($fp)
	lw $t1, -9504($fp)
	lw $t2, -9508($fp)
	bge $t1, $t2, label314
	j label316
label316:
	lw $t0, -2516($fp)
	sw $t0, -9512($fp)
	lw $t1, -9512($fp)
	li $t2, 0
	bne $t1, $t2, label314
	j label315
label314:
	li $t0, 1
	sw $t0, -9500($fp)
label315:
	lw $t0, -1184($fp)
	sw $t0, -9516($fp)
	lw $t0, -9516($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -9520($fp)
	lw $t0, -2492($fp)
	sw $t0, -9524($fp)
	lw $t0, -1520($fp)
	sw $t0, -9528($fp)
	lw $t0, -9524($fp)
	lw $t1, -9528($fp)
	mul $t0, $t0, $t1
	sw $t0, -9532($fp)
	li $t0, 0
	sw $t0, -9536($fp)
	lw $t0, -7096($fp)
	sw $t0, -9540($fp)
	lw $t1, -9540($fp)
	li $t2, 0
	bne $t1, $t2, label319
	j label317
label319:
	lw $t0, -7108($fp)
	sw $t0, -9544($fp)
	lw $t1, -9544($fp)
	li $t2, 0
	bne $t1, $t2, label317
	j label318
label317:
	li $t0, 1
	sw $t0, -9536($fp)
label318:
	li $t0, 23288
	sw $t0, -9548($fp)
	lw $t0, -1172($fp)
	sw $t0, -9552($fp)
	lw $t0, -9548($fp)
	lw $t1, -9552($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9556($fp)
	li $t0, 0
	lw $t1, -9556($fp)
	sub $t0, $t0, $t1
	sw $t0, -9560($fp)
	addi $sp, $sp, -4
	lw $t0, -9520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9560($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9564($fp)
	addi $sp, $sp, 20
	lw $t0, -7084($fp)
	sw $t0, -9568($fp)
	lw $t0, -9568($fp)
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	sw $t0, -9572($fp)
	addi $sp, $sp, -4
	lw $t0, -9484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9572($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9576($fp)
	addi $sp, $sp, 20
	lw $t1, -9576($fp)
	li $t2, 0
	bne $t1, $t2, label309
	j label308
label308:
	li $t0, 1
	sw $t0, -9480($fp)
label309:
	lw $t0, -992($fp)
	sw $t0, -9580($fp)
	lw $t0, -9580($fp)
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	sw $t0, -9584($fp)
	addi $sp, $sp, -4
	lw $t0, -9396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9584($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9588($fp)
	addi $sp, $sp, 20
	lw $t1, -9588($fp)
	li $t2, 0
	bne $t1, $t2, label290
	j label289
label289:
	li $t0, 1
	sw $t0, -9392($fp)
label290:
	lw $t1, -9356($fp)
	lw $t2, -9392($fp)
	bge $t1, $t2, label285
	j label286
label285:
	li $t0, 1
	sw $t0, -9352($fp)
label286:
	lw $ra, -4($fp)
	lw $v0, -9352($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label163
label162:
	lw $t0, -1256($fp)
	sw $t0, -9592($fp)
	li $t0, 4185
	sw $t0, -9596($fp)
	lw $t0, -9592($fp)
	lw $t1, -9596($fp)
	mul $t0, $t0, $t1
	sw $t0, -9600($fp)
	lw $t0, 4($fp)
	sw $t0, -9604($fp)
	lw $t0, -1232($fp)
	sw $t0, -9608($fp)
	lw $t0, -9604($fp)
	lw $t1, -9608($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9612($fp)
	lw $t0, -2696($fp)
	sw $t0, -9616($fp)
	li $t0, 16134
	sw $t0, -9620($fp)
	lw $t0, -9616($fp)
	lw $t1, -9620($fp)
	add $t0, $t0, $t1
	sw $t0, -9624($fp)
	lw $t0, -1208($fp)
	sw $t0, -9628($fp)
	lw $t0, -9624($fp)
	lw $t1, -9628($fp)
	add $t0, $t0, $t1
	sw $t0, -9632($fp)
	li $t0, 0
	sw $t0, -9636($fp)
	lw $t0, -2528($fp)
	sw $t0, -9640($fp)
	li $t0, 18321
	sw $t0, -9644($fp)
	lw $t1, -9640($fp)
	lw $t2, -9644($fp)
	beq $t1, $t2, label325
	j label327
label327:
	li $t0, 145
	sw $t0, -9648($fp)
	lw $t1, -9648($fp)
	li $t2, 0
	bne $t1, $t2, label325
	j label326
label325:
	li $t0, 1
	sw $t0, -9636($fp)
label326:
	addi $t0, $fp, -84
	sw $t0, -9652($fp)
	lw $t0, -2600($fp)
	sw $t0, -9656($fp)
	li $t0, 4
	lw $t1, -9656($fp)
	mul $t0, $t0, $t1
	sw $t0, -9660($fp)
	lw $t0, -9660($fp)
	lw $t1, -9652($fp)
	add $t0, $t0, $t1
	sw $t0, -9664($fp)
	lw $t0, -9664($fp)
	lw $t1, 0($t0)
	sw $t1, -9668($fp)
	lw $t0, -764($fp)
	sw $t0, -9672($fp)
	lw $t0, -9668($fp)
	lw $t1, -9672($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9676($fp)
	addi $sp, $sp, -4
	lw $t0, -9612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9676($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9680($fp)
	addi $sp, $sp, 20
	lw $t0, -9600($fp)
	lw $t1, -9680($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9684($fp)
	lw $t1, -9684($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label324
label324:
	li $t0, 35053
	sw $t0, -9688($fp)
	lw $t0, -1556($fp)
	sw $t0, -9692($fp)
	lw $t0, -9688($fp)
	lw $t1, -9692($fp)
	add $t0, $t0, $t1
	sw $t0, -9696($fp)
	li $t0, 10419
	sw $t0, -9700($fp)
	lw $t1, -9696($fp)
	lw $t2, -9700($fp)
	beq $t1, $t2, label320
	j label323
label323:
	li $t0, 0
	sw $t0, -9704($fp)
	addi $t0, $fp, -84
	sw $t0, -9708($fp)
	li $t0, 1
	sw $t0, -9712($fp)
	li $t0, 4
	lw $t1, -9712($fp)
	mul $t0, $t0, $t1
	sw $t0, -9716($fp)
	lw $t0, -9716($fp)
	lw $t1, -9708($fp)
	add $t0, $t0, $t1
	sw $t0, -9720($fp)
	lw $t0, -9720($fp)
	lw $t1, 0($t0)
	sw $t1, -9724($fp)
	lw $t1, -9724($fp)
	li $t2, 0
	bne $t1, $t2, label329
	j label328
label328:
	li $t0, 1
	sw $t0, -9704($fp)
label329:
	addi $t0, $fp, -40
	sw $t0, -9728($fp)
	lw $t0, -992($fp)
	sw $t0, -9732($fp)
	li $t0, 4
	lw $t1, -9732($fp)
	mul $t0, $t0, $t1
	sw $t0, -9736($fp)
	lw $t0, -9736($fp)
	lw $t1, -9728($fp)
	add $t0, $t0, $t1
	sw $t0, -9740($fp)
	lw $t0, -9740($fp)
	lw $t1, 0($t0)
	sw $t1, -9744($fp)
	lw $t1, -9704($fp)
	lw $t2, -9744($fp)
	blt $t1, $t2, label320
	j label321
label320:
	addi $t0, $fp, -176
	sw $t0, -9748($fp)
	li $t0, 0
	sw $t0, -9752($fp)
	lw $t0, 8($fp)
	sw $t0, -9756($fp)
	lw $t0, -836($fp)
	sw $t0, -9760($fp)
	lw $t1, -9756($fp)
	lw $t2, -9760($fp)
	bgt $t1, $t2, label333
	j label334
label333:
	li $t0, 1
	sw $t0, -9752($fp)
label334:
	li $t0, 4
	lw $t1, -9752($fp)
	mul $t0, $t0, $t1
	sw $t0, -9764($fp)
	lw $t0, -9764($fp)
	lw $t1, -9748($fp)
	add $t0, $t0, $t1
	sw $t0, -9768($fp)
	lw $t0, -9768($fp)
	lw $t1, 0($t0)
	sw $t1, -9772($fp)
	li $t0, 0
	lw $t1, -9772($fp)
	sub $t0, $t0, $t1
	sw $t0, -9776($fp)
	li $t0, 0
	sw $t0, -9780($fp)
	addi $t0, $fp, -48
	sw $t0, -9784($fp)
	lw $t0, -2588($fp)
	sw $t0, -9788($fp)
	li $t0, 4
	lw $t1, -9788($fp)
	mul $t0, $t0, $t1
	sw $t0, -9792($fp)
	lw $t0, -9792($fp)
	lw $t1, -9784($fp)
	add $t0, $t0, $t1
	sw $t0, -9796($fp)
	lw $t0, -9796($fp)
	lw $t1, 0($t0)
	sw $t1, -9800($fp)
	li $t0, 5526
	sw $t0, -9804($fp)
	lw $t1, -9800($fp)
	lw $t2, -9804($fp)
	bne $t1, $t2, label335
	j label336
label335:
	li $t0, 1
	sw $t0, -9780($fp)
label336:
	lw $t0, -2696($fp)
	sw $t0, -9808($fp)
	lw $t0, -992($fp)
	sw $t0, -9812($fp)
	lw $t0, -9808($fp)
	lw $t1, -9812($fp)
	mul $t0, $t0, $t1
	sw $t0, -9816($fp)
	li $t0, 39649
	sw $t0, -9820($fp)
	lw $t0, -9816($fp)
	lw $t1, -9820($fp)
	sub $t0, $t0, $t1
	sw $t0, -9824($fp)
	li $t0, 0
	sw $t0, -9828($fp)
	li $t0, 15615
	sw $t0, -9832($fp)
	lw $t0, 12($fp)
	sw $t0, -9836($fp)
	lw $t0, -9832($fp)
	lw $t1, -9836($fp)
	add $t0, $t0, $t1
	sw $t0, -9840($fp)
	lw $t1, -9840($fp)
	li $t2, 0
	bne $t1, $t2, label337
	j label339
label339:
	lw $t0, -2576($fp)
	sw $t0, -9844($fp)
	lw $t1, -9844($fp)
	li $t2, 0
	bne $t1, $t2, label337
	j label338
label337:
	li $t0, 1
	sw $t0, -9828($fp)
label338:
	addi $t0, $fp, -224
	sw $t0, -9848($fp)
	lw $t0, -1820($fp)
	sw $t0, -9852($fp)
	li $t0, 4
	lw $t1, -9852($fp)
	mul $t0, $t0, $t1
	sw $t0, -9856($fp)
	lw $t0, -9856($fp)
	lw $t1, -9848($fp)
	add $t0, $t0, $t1
	sw $t0, -9860($fp)
	lw $t0, -9860($fp)
	lw $t1, 0($t0)
	sw $t1, -9864($fp)
	li $t0, 0
	lw $t1, -9864($fp)
	sub $t0, $t0, $t1
	sw $t0, -9868($fp)
	addi $sp, $sp, -4
	lw $t0, -9780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9868($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9872($fp)
	addi $sp, $sp, 20
	lw $t0, -9776($fp)
	lw $t1, -9872($fp)
	sub $t0, $t0, $t1
	sw $t0, -9876($fp)
	lw $t1, -9876($fp)
	li $t2, 0
	bne $t1, $t2, label330
	j label331
label330:
	li $t0, 64682
	sw $t0, -9880($fp)
	lw $t0, -9880($fp)
	sw $t0, -9884($fp)
	lw $t0, -9884($fp)
	sw $t0, -9888($fp)
	li $t0, 16272
	sw $t0, -9892($fp)
	lw $t0, -9892($fp)
	sw $t0, -9896($fp)
	lw $t0, -9896($fp)
	sw $t0, -9900($fp)
	li $t0, 47085
	sw $t0, -9904($fp)
	lw $t0, -9904($fp)
	sw $t0, -9908($fp)
	lw $t0, -9908($fp)
	sw $t0, -9912($fp)
label340:
	li $t0, 0
	sw $t0, -9916($fp)
	li $t0, 0
	sw $t0, -9920($fp)
	li $t0, 40000
	sw $t0, -9924($fp)
	lw $t1, -9924($fp)
	li $t2, 0
	bne $t1, $t2, label348
	j label347
label347:
	li $t0, 1
	sw $t0, -9920($fp)
label348:
	li $t0, 59529
	sw $t0, -9928($fp)
	lw $t1, -9920($fp)
	lw $t2, -9928($fp)
	bgt $t1, $t2, label345
	j label346
label345:
	li $t0, 1
	sw $t0, -9916($fp)
label346:
	li $t0, 0
	sw $t0, -9932($fp)
	li $t0, 0
	sw $t0, -9936($fp)
	li $t0, 22873
	sw $t0, -9940($fp)
	li $t0, 34243
	sw $t0, -9944($fp)
	lw $t1, -9940($fp)
	lw $t2, -9944($fp)
	bge $t1, $t2, label351
	j label352
label351:
	li $t0, 1
	sw $t0, -9936($fp)
label352:
	li $t0, 223
	sw $t0, -9948($fp)
	li $t0, 56807
	sw $t0, -9952($fp)
	lw $t0, -9948($fp)
	lw $t1, -9952($fp)
	add $t0, $t0, $t1
	sw $t0, -9956($fp)
	lw $t0, -2600($fp)
	sw $t0, -9960($fp)
	lw $t0, -9956($fp)
	lw $t1, -9960($fp)
	add $t0, $t0, $t1
	sw $t0, -9964($fp)
	li $t0, 0
	sw $t0, -9968($fp)
	lw $t0, -1544($fp)
	sw $t0, -9972($fp)
	lw $t1, -9972($fp)
	li $t2, 0
	bne $t1, $t2, label354
	j label353
label353:
	li $t0, 1
	sw $t0, -9968($fp)
label354:
	li $t0, 65121
	sw $t0, -9976($fp)
	lw $t0, -9968($fp)
	lw $t1, -9976($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9980($fp)
	li $t0, 0
	sw $t0, -9984($fp)
	lw $t0, -596($fp)
	sw $t0, -9988($fp)
	lw $t1, -9988($fp)
	li $t2, 0
	bne $t1, $t2, label356
	j label357
label357:
	lw $t0, -608($fp)
	sw $t0, -9992($fp)
	lw $t1, -9992($fp)
	li $t2, 0
	bne $t1, $t2, label355
	j label356
label355:
	li $t0, 1
	sw $t0, -9984($fp)
label356:
	addi $sp, $sp, -4
	lw $t0, -9936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9984($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9996($fp)
	addi $sp, $sp, 20
	lw $t1, -9996($fp)
	li $t2, 0
	bne $t1, $t2, label350
	j label349
label349:
	li $t0, 1
	sw $t0, -9932($fp)
label350:
	li $t0, 0
	sw $t0, -10000($fp)
	lw $t0, 16($fp)
	sw $t0, -10004($fp)
	lw $t1, -10004($fp)
	li $t2, 0
	bne $t1, $t2, label361
	j label359
label361:
	li $t0, 45441
	sw $t0, -10008($fp)
	lw $t1, -10008($fp)
	li $t2, 0
	bne $t1, $t2, label360
	j label359
label360:
	lw $t0, -2876($fp)
	sw $t0, -10012($fp)
	lw $t1, -10012($fp)
	li $t2, 0
	bne $t1, $t2, label358
	j label359
label358:
	li $t0, 1
	sw $t0, -10000($fp)
label359:
	lw $t0, -1988($fp)
	sw $t0, -10016($fp)
	addi $sp, $sp, -4
	lw $t0, -9916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10016($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10020($fp)
	addi $sp, $sp, 20
	lw $t1, -10020($fp)
	li $t2, 0
	bne $t1, $t2, label342
	j label344
label344:
	li $t0, 0
	sw $t0, -10024($fp)
	lw $t0, -1184($fp)
	sw $t0, -10028($fp)
	lw $t1, -10028($fp)
	li $t2, 0
	bne $t1, $t2, label363
	j label362
label362:
	li $t0, 1
	sw $t0, -10024($fp)
label363:
	li $t0, 7817
	sw $t0, -10032($fp)
	lw $t0, -10024($fp)
	lw $t1, -10032($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10036($fp)
	lw $t1, -10036($fp)
	li $t2, 0
	bne $t1, $t2, label343
	j label342
label343:
	li $t0, 19338
	sw $t0, -10040($fp)
	addi $t0, $fp, -256
	sw $t0, -10044($fp)
	lw $t0, -9884($fp)
	sw $t0, -10048($fp)
	li $t0, 4
	lw $t1, -10048($fp)
	mul $t0, $t0, $t1
	sw $t0, -10052($fp)
	lw $t0, -10052($fp)
	lw $t1, -10044($fp)
	add $t0, $t0, $t1
	sw $t0, -10056($fp)
	lw $t0, -10056($fp)
	lw $t1, 0($t0)
	sw $t1, -10060($fp)
	lw $t1, -10040($fp)
	lw $t2, -10060($fp)
	ble $t1, $t2, label341
	j label342
label341:
label364:
	addi $t0, $fp, -72
	sw $t0, -10064($fp)
	lw $t0, -1796($fp)
	sw $t0, -10068($fp)
	li $t0, 19404
	sw $t0, -10072($fp)
	lw $t0, -10068($fp)
	lw $t1, -10072($fp)
	mul $t0, $t0, $t1
	sw $t0, -10076($fp)
	lw $t0, -812($fp)
	sw $t0, -10080($fp)
	lw $t0, -10076($fp)
	lw $t1, -10080($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10084($fp)
	li $t0, 0
	sw $t0, -10088($fp)
	li $t0, 50217
	sw $t0, -10092($fp)
	lw $t0, -992($fp)
	sw $t0, -10096($fp)
	lw $t0, -10092($fp)
	lw $t1, -10096($fp)
	mul $t0, $t0, $t1
	sw $t0, -10100($fp)
	lw $t1, -10100($fp)
	li $t2, 0
	bne $t1, $t2, label367
	j label369
label369:
	lw $t0, -800($fp)
	sw $t0, -10104($fp)
	lw $t1, -10104($fp)
	li $t2, 0
	bne $t1, $t2, label367
	j label368
label367:
	li $t0, 1
	sw $t0, -10088($fp)
label368:
	li $t0, 0
	sw $t0, -10108($fp)
	lw $t0, -1520($fp)
	sw $t0, -10112($fp)
	lw $t0, -9896($fp)
	sw $t0, -10116($fp)
	lw $t0, -10112($fp)
	lw $t1, -10116($fp)
	add $t0, $t0, $t1
	sw $t0, -10120($fp)
	lw $t0, -788($fp)
	sw $t0, -10124($fp)
	lw $t1, -10120($fp)
	lw $t2, -10124($fp)
	bne $t1, $t2, label370
	j label371
label370:
	li $t0, 1
	sw $t0, -10108($fp)
label371:
	li $t0, 0
	sw $t0, -10128($fp)
	li $t0, 1083
	sw $t0, -10132($fp)
	lw $t0, -776($fp)
	sw $t0, -10136($fp)
	lw $t0, -10132($fp)
	lw $t1, -10136($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10140($fp)
	li $t0, 0
	sw $t0, -10144($fp)
	li $t0, 47962
	sw $t0, -10148($fp)
	li $t0, 46032
	sw $t0, -10152($fp)
	lw $t1, -10148($fp)
	lw $t2, -10152($fp)
	bne $t1, $t2, label374
	j label375
label374:
	li $t0, 1
	sw $t0, -10144($fp)
label375:
	li $t0, 39002
	sw $t0, -10156($fp)
	lw $t0, -10156($fp)
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -10160($fp)
	addi $t0, $fp, -84
	sw $t0, -10164($fp)
	li $t0, 0
	sw $t0, -10168($fp)
	li $t0, 4
	lw $t1, -10168($fp)
	mul $t0, $t0, $t1
	sw $t0, -10172($fp)
	lw $t0, -10172($fp)
	lw $t1, -10164($fp)
	add $t0, $t0, $t1
	sw $t0, -10176($fp)
	lw $t0, -10176($fp)
	lw $t1, 0($t0)
	sw $t1, -10180($fp)
	addi $sp, $sp, -4
	lw $t0, -10140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10180($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10184($fp)
	addi $sp, $sp, 20
	li $t0, 40661
	sw $t0, -10188($fp)
	lw $t1, -10184($fp)
	lw $t2, -10188($fp)
	bne $t1, $t2, label372
	j label373
label372:
	li $t0, 1
	sw $t0, -10128($fp)
label373:
	addi $sp, $sp, -4
	lw $t0, -10084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10128($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10192($fp)
	addi $sp, $sp, 20
	lw $t0, -2516($fp)
	sw $t0, -10196($fp)
	lw $t0, -10192($fp)
	lw $t1, -10196($fp)
	sub $t0, $t0, $t1
	sw $t0, -10200($fp)
	li $t0, 40806
	sw $t0, -10204($fp)
	lw $t0, -2696($fp)
	sw $t0, -10208($fp)
	lw $t0, -10204($fp)
	lw $t1, -10208($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10212($fp)
	lw $t0, -10200($fp)
	lw $t1, -10212($fp)
	add $t0, $t0, $t1
	sw $t0, -10216($fp)
	li $t0, 4
	lw $t1, -10216($fp)
	mul $t0, $t0, $t1
	sw $t0, -10220($fp)
	lw $t0, -10220($fp)
	lw $t1, -10064($fp)
	add $t0, $t0, $t1
	sw $t0, -10224($fp)
	lw $t0, -10224($fp)
	lw $t1, 0($t0)
	sw $t1, -10228($fp)
	lw $t1, -10228($fp)
	li $t2, 0
	bne $t1, $t2, label365
	j label366
label365:
	lw $t0, -824($fp)
	sw $t0, -10232($fp)
	lw $t0, -10232($fp)
	sw $t0, -9908($fp)
	lw $t0, -9908($fp)
	sw $t0, -10236($fp)
	li $t0, 815
	sw $t0, -10240($fp)
	li $t0, 0
	lw $t1, -10240($fp)
	sub $t0, $t0, $t1
	sw $t0, -10244($fp)
	li $t0, 0
	sw $t0, -10248($fp)
	lw $t0, -1808($fp)
	sw $t0, -10252($fp)
	lw $t1, -10252($fp)
	li $t2, 0
	bne $t1, $t2, label377
	j label376
label376:
	li $t0, 1
	sw $t0, -10248($fp)
label377:
	li $t0, 0
	lw $t1, -10248($fp)
	sub $t0, $t0, $t1
	sw $t0, -10256($fp)
	lw $t0, -2468($fp)
	sw $t0, -10260($fp)
	lw $t0, -10260($fp)
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -10264($fp)
	addi $sp, $sp, -4
	lw $t0, -10236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10264($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10268($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -10268($fp)
	sub $t0, $t0, $t1
	sw $t0, -10272($fp)
	j label364
label366:
	j label340
label342:
	li $t0, 0
	sw $t0, -10276($fp)
	lw $t0, -2540($fp)
	sw $t0, -10280($fp)
	li $t0, 0
	lw $t1, -10280($fp)
	sub $t0, $t0, $t1
	sw $t0, -10284($fp)
	lw $t1, -10284($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label381
label381:
	li $t0, 1
	sw $t0, -10276($fp)
label382:
	li $t0, 0
	lw $t1, -10276($fp)
	sub $t0, $t0, $t1
	sw $t0, -10288($fp)
	li $t0, 0
	lw $t1, -10288($fp)
	sub $t0, $t0, $t1
	sw $t0, -10292($fp)
	li $t0, 54457
	sw $t0, -10296($fp)
	li $t0, 0
	lw $t1, -10296($fp)
	sub $t0, $t0, $t1
	sw $t0, -10300($fp)
	lw $t1, -10292($fp)
	lw $t2, -10300($fp)
	bne $t1, $t2, label378
	j label379
label378:
	li $t0, 0
	sw $t0, -10304($fp)
	lw $t0, -1232($fp)
	sw $t0, -10308($fp)
	lw $t1, -10308($fp)
	li $t2, 0
	bne $t1, $t2, label383
	j label384
label383:
	li $t0, 1
	sw $t0, -10304($fp)
label384:
label379:
	li $t0, 0
	sw $t0, -10312($fp)
	li $t0, 0
	sw $t0, -10316($fp)
	li $t0, 0
	sw $t0, -10320($fp)
	li $t0, 51225
	sw $t0, -10324($fp)
	li $t0, 62199
	sw $t0, -10328($fp)
	lw $t0, -10324($fp)
	lw $t1, -10328($fp)
	add $t0, $t0, $t1
	sw $t0, -10332($fp)
	lw $t0, -2876($fp)
	sw $t0, -10336($fp)
	lw $t0, -10332($fp)
	lw $t1, -10336($fp)
	add $t0, $t0, $t1
	sw $t0, -10340($fp)
	addi $t0, $fp, -252
	sw $t0, -10344($fp)
	li $t0, 4
	sw $t0, -10348($fp)
	li $t0, 4
	lw $t1, -10348($fp)
	mul $t0, $t0, $t1
	sw $t0, -10352($fp)
	lw $t0, -10352($fp)
	lw $t1, -10344($fp)
	add $t0, $t0, $t1
	sw $t0, -10356($fp)
	lw $t0, -10356($fp)
	lw $t1, 0($t0)
	sw $t1, -10360($fp)
	lw $t1, -10340($fp)
	lw $t2, -10360($fp)
	bge $t1, $t2, label389
	j label390
label389:
	li $t0, 1
	sw $t0, -10320($fp)
label390:
	li $t0, 0
	sw $t0, -10364($fp)
	li $t0, 36312
	sw $t0, -10368($fp)
	lw $t1, -10368($fp)
	li $t2, 0
	bne $t1, $t2, label391
	j label392
label391:
	li $t0, 1
	sw $t0, -10364($fp)
label392:
	lw $t1, -10320($fp)
	lw $t2, -10364($fp)
	ble $t1, $t2, label387
	j label388
label387:
	li $t0, 1
	sw $t0, -10316($fp)
label388:
	lw $t0, -2600($fp)
	sw $t0, -10372($fp)
	lw $t1, -10316($fp)
	lw $t2, -10372($fp)
	bge $t1, $t2, label385
	j label386
label385:
	li $t0, 1
	sw $t0, -10312($fp)
label386:
	j label332
label331:
label393:
	lw $t0, -836($fp)
	sw $t0, -10376($fp)
	lw $t1, -10376($fp)
	li $t2, 0
	bne $t1, $t2, label396
	j label394
label396:
	lw $t0, -848($fp)
	sw $t0, -10380($fp)
	lw $t0, -2420($fp)
	sw $t0, -10384($fp)
	lw $t0, -10380($fp)
	lw $t1, -10384($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10388($fp)
	li $t0, 0
	lw $t1, -10388($fp)
	sub $t0, $t0, $t1
	sw $t0, -10392($fp)
	lw $t0, -764($fp)
	sw $t0, -10396($fp)
	lw $t0, -10396($fp)
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	sw $t0, -10400($fp)
	li $t0, 0
	sw $t0, -10404($fp)
	li $t0, 0
	sw $t0, -10408($fp)
	lw $t0, -2600($fp)
	sw $t0, -10412($fp)
	lw $t0, -884($fp)
	sw $t0, -10416($fp)
	lw $t1, -10412($fp)
	lw $t2, -10416($fp)
	ble $t1, $t2, label399
	j label400
label399:
	li $t0, 1
	sw $t0, -10408($fp)
label400:
	lw $t0, -1568($fp)
	sw $t0, -10420($fp)
	lw $t1, -10408($fp)
	lw $t2, -10420($fp)
	bgt $t1, $t2, label397
	j label398
label397:
	li $t0, 1
	sw $t0, -10404($fp)
label398:
	lw $t0, -776($fp)
	sw $t0, -10424($fp)
	lw $t0, -872($fp)
	sw $t0, -10428($fp)
	lw $t0, -10424($fp)
	lw $t1, -10428($fp)
	mul $t0, $t0, $t1
	sw $t0, -10432($fp)
	lw $t0, -1208($fp)
	sw $t0, -10436($fp)
	lw $t0, -10432($fp)
	lw $t1, -10436($fp)
	mul $t0, $t0, $t1
	sw $t0, -10440($fp)
	li $t0, 0
	sw $t0, -10444($fp)
	addi $t0, $fp, -256
	sw $t0, -10448($fp)
	lw $t0, -860($fp)
	sw $t0, -10452($fp)
	li $t0, 4
	lw $t1, -10452($fp)
	mul $t0, $t0, $t1
	sw $t0, -10456($fp)
	lw $t0, -10456($fp)
	lw $t1, -10448($fp)
	add $t0, $t0, $t1
	sw $t0, -10460($fp)
	lw $t0, -10460($fp)
	lw $t1, 0($t0)
	sw $t1, -10464($fp)
	li $t0, 9229
	sw $t0, -10468($fp)
	lw $t1, -10464($fp)
	lw $t2, -10468($fp)
	ble $t1, $t2, label401
	j label402
label401:
	li $t0, 1
	sw $t0, -10444($fp)
label402:
	addi $sp, $sp, -4
	lw $t0, -10400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10444($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10472($fp)
	addi $sp, $sp, 20
	lw $t0, -10392($fp)
	lw $t1, -10472($fp)
	sub $t0, $t0, $t1
	sw $t0, -10476($fp)
	lw $t1, -10476($fp)
	li $t2, 0
	bne $t1, $t2, label394
	j label395
label394:
	li $t0, 0
	sw $t0, -10480($fp)
	lw $t0, 8($fp)
	sw $t0, -10484($fp)
	li $t0, 0
	lw $t1, -10484($fp)
	sub $t0, $t0, $t1
	sw $t0, -10488($fp)
	lw $t1, -10488($fp)
	li $t2, 0
	bne $t1, $t2, label405
	j label404
label405:
	lw $t0, -896($fp)
	sw $t0, -10492($fp)
	li $t0, 451
	sw $t0, -10496($fp)
	li $t0, 0
	lw $t1, -10496($fp)
	sub $t0, $t0, $t1
	sw $t0, -10500($fp)
	lw $t1, -10492($fp)
	lw $t2, -10500($fp)
	bge $t1, $t2, label403
	j label404
label403:
	li $t0, 1
	sw $t0, -10480($fp)
label404:
	j label393
label395:
label332:
	j label322
label321:
	addi $t0, $fp, -84
	sw $t0, -10504($fp)
	lw $t0, -1544($fp)
	sw $t0, -10508($fp)
	li $t0, 4
	lw $t1, -10508($fp)
	mul $t0, $t0, $t1
	sw $t0, -10512($fp)
	lw $t0, -10512($fp)
	lw $t1, -10504($fp)
	add $t0, $t0, $t1
	sw $t0, -10516($fp)
	lw $t0, -10516($fp)
	lw $t1, 0($t0)
	sw $t1, -10520($fp)
	li $t0, 0
	sw $t0, -10524($fp)
	lw $t0, -836($fp)
	sw $t0, -10528($fp)
	lw $t1, -10528($fp)
	li $t2, 0
	bne $t1, $t2, label411
	j label409
label411:
	lw $t0, -908($fp)
	sw $t0, -10532($fp)
	lw $t1, -10532($fp)
	li $t2, 0
	bne $t1, $t2, label409
	j label410
label409:
	li $t0, 1
	sw $t0, -10524($fp)
label410:
	li $t0, 0
	sw $t0, -10536($fp)
	lw $t0, -1808($fp)
	sw $t0, -10540($fp)
	lw $t0, -824($fp)
	sw $t0, -10544($fp)
	lw $t0, -10540($fp)
	lw $t1, -10544($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10548($fp)
	lw $t0, -2492($fp)
	sw $t0, -10552($fp)
	lw $t1, -10548($fp)
	lw $t2, -10552($fp)
	bne $t1, $t2, label412
	j label413
label412:
	li $t0, 1
	sw $t0, -10536($fp)
label413:
	li $t0, 0
	sw $t0, -10556($fp)
	lw $t0, -776($fp)
	sw $t0, -10560($fp)
	lw $t1, -10560($fp)
	li $t2, 0
	bne $t1, $t2, label415
	j label414
label414:
	li $t0, 1
	sw $t0, -10556($fp)
label415:
	li $t0, 0
	lw $t1, -10556($fp)
	sub $t0, $t0, $t1
	sw $t0, -10564($fp)
	addi $sp, $sp, -4
	lw $t0, -10520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10564($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10568($fp)
	addi $sp, $sp, 20
	lw $t1, -10568($fp)
	li $t2, 0
	bne $t1, $t2, label406
	j label407
label406:
	li $t0, 52584
	sw $t0, -10572($fp)
	lw $t0, -1004($fp)
	sw $t0, -10576($fp)
	lw $t0, -10572($fp)
	lw $t1, -10576($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10580($fp)
	addi $t0, $fp, -84
	sw $t0, -10584($fp)
	lw $t0, -2408($fp)
	sw $t0, -10588($fp)
	li $t0, 4
	lw $t1, -10588($fp)
	mul $t0, $t0, $t1
	sw $t0, -10592($fp)
	lw $t0, -10592($fp)
	lw $t1, -10584($fp)
	add $t0, $t0, $t1
	sw $t0, -10596($fp)
	lw $t0, -10596($fp)
	lw $t1, 0($t0)
	sw $t1, -10600($fp)
	lw $t0, -10580($fp)
	lw $t1, -10600($fp)
	mul $t0, $t0, $t1
	sw $t0, -10604($fp)
	lw $t0, -10604($fp)
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	sw $t0, -10608($fp)
	lw $ra, -4($fp)
	lw $v0, -10608($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label408
label407:
	li $t0, 0
	sw $t0, -10612($fp)
	li $t0, 0
	sw $t0, -10616($fp)
	addi $t0, $fp, -252
	sw $t0, -10620($fp)
	lw $t0, -2408($fp)
	sw $t0, -10624($fp)
	li $t0, 4
	lw $t1, -10624($fp)
	mul $t0, $t0, $t1
	sw $t0, -10628($fp)
	lw $t0, -10628($fp)
	lw $t1, -10620($fp)
	add $t0, $t0, $t1
	sw $t0, -10632($fp)
	lw $t0, -10632($fp)
	lw $t1, 0($t0)
	sw $t1, -10636($fp)
	lw $t0, -824($fp)
	sw $t0, -10640($fp)
	lw $t0, -10636($fp)
	lw $t1, -10640($fp)
	add $t0, $t0, $t1
	sw $t0, -10644($fp)
	lw $t0, -2876($fp)
	sw $t0, -10648($fp)
	lw $t0, -10648($fp)
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	sw $t0, -10652($fp)
	li $t0, 0
	sw $t0, -10656($fp)
	lw $t0, -992($fp)
	sw $t0, -10660($fp)
	lw $t1, -10660($fp)
	li $t2, 0
	bne $t1, $t2, label423
	j label422
label423:
	lw $t0, -2228($fp)
	sw $t0, -10664($fp)
	lw $t1, -10664($fp)
	li $t2, 0
	bne $t1, $t2, label420
	j label422
label422:
	li $t0, 52169
	sw $t0, -10668($fp)
	lw $t1, -10668($fp)
	li $t2, 0
	bne $t1, $t2, label420
	j label421
label420:
	li $t0, 1
	sw $t0, -10656($fp)
label421:
	li $t0, 0
	sw $t0, -10672($fp)
	li $t0, 56314
	sw $t0, -10676($fp)
	lw $t0, -1796($fp)
	sw $t0, -10680($fp)
	lw $t0, -10676($fp)
	lw $t1, -10680($fp)
	mul $t0, $t0, $t1
	sw $t0, -10684($fp)
	li $t0, 45892
	sw $t0, -10688($fp)
	lw $t1, -10684($fp)
	lw $t2, -10688($fp)
	bne $t1, $t2, label424
	j label425
label424:
	li $t0, 1
	sw $t0, -10672($fp)
label425:
	addi $sp, $sp, -4
	lw $t0, -10644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10672($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10692($fp)
	addi $sp, $sp, 20
	lw $t1, -10692($fp)
	li $t2, 0
	bne $t1, $t2, label419
	j label418
label418:
	li $t0, 1
	sw $t0, -10616($fp)
label419:
	lw $t0, -2420($fp)
	sw $t0, -10696($fp)
	li $t0, 0
	lw $t1, -10696($fp)
	sub $t0, $t0, $t1
	sw $t0, -10700($fp)
	lw $t0, -10616($fp)
	lw $t1, -10700($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10704($fp)
	addi $t0, $fp, -264
	sw $t0, -10708($fp)
	li $t0, 1
	sw $t0, -10712($fp)
	li $t0, 4
	lw $t1, -10712($fp)
	mul $t0, $t0, $t1
	sw $t0, -10716($fp)
	lw $t0, -10716($fp)
	lw $t1, -10708($fp)
	add $t0, $t0, $t1
	sw $t0, -10720($fp)
	lw $t0, -10720($fp)
	lw $t1, 0($t0)
	sw $t1, -10724($fp)
	li $t0, 0
	lw $t1, -10724($fp)
	sub $t0, $t0, $t1
	sw $t0, -10728($fp)
	lw $t0, -10704($fp)
	lw $t1, -10728($fp)
	sub $t0, $t0, $t1
	sw $t0, -10732($fp)
	li $t0, 0
	sw $t0, -10736($fp)
	li $t0, 0
	sw $t0, -10740($fp)
	lw $t0, -2408($fp)
	sw $t0, -10744($fp)
	lw $t1, -10744($fp)
	li $t2, 0
	bne $t1, $t2, label429
	j label428
label428:
	li $t0, 1
	sw $t0, -10740($fp)
label429:
	lw $t0, -764($fp)
	sw $t0, -10748($fp)
	lw $t0, -10740($fp)
	lw $t1, -10748($fp)
	mul $t0, $t0, $t1
	sw $t0, -10752($fp)
	li $t0, 9506
	sw $t0, -10756($fp)
	lw $t0, -2432($fp)
	sw $t0, -10760($fp)
	lw $t0, -10756($fp)
	lw $t1, -10760($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10764($fp)
	lw $t1, -10752($fp)
	lw $t2, -10764($fp)
	ble $t1, $t2, label426
	j label427
label426:
	li $t0, 1
	sw $t0, -10736($fp)
label427:
	lw $t1, -10732($fp)
	lw $t2, -10736($fp)
	bne $t1, $t2, label416
	j label417
label416:
	li $t0, 1
	sw $t0, -10612($fp)
label417:
label408:
label322:
label163:
	j label156
label155:
	lw $t0, -2228($fp)
	sw $t0, -10768($fp)
	li $t0, 0
	sw $t0, -10772($fp)
	lw $t0, -1508($fp)
	sw $t0, -10776($fp)
	lw $t1, -10776($fp)
	li $t2, 0
	bne $t1, $t2, label436
	j label435
label436:
	li $t0, 4432
	sw $t0, -10780($fp)
	lw $t1, -10780($fp)
	li $t2, 0
	bne $t1, $t2, label433
	j label435
label435:
	lw $t0, -2480($fp)
	sw $t0, -10784($fp)
	lw $t1, -10784($fp)
	li $t2, 0
	bne $t1, $t2, label433
	j label434
label433:
	li $t0, 1
	sw $t0, -10772($fp)
label434:
	li $t0, 0
	sw $t0, -10788($fp)
	li $t0, 35321
	sw $t0, -10792($fp)
	li $t0, 64369
	sw $t0, -10796($fp)
	lw $t0, -10792($fp)
	lw $t1, -10796($fp)
	sub $t0, $t0, $t1
	sw $t0, -10800($fp)
	lw $t1, -10800($fp)
	li $t2, 0
	bne $t1, $t2, label437
	j label439
label439:
	lw $t0, -1808($fp)
	sw $t0, -10804($fp)
	lw $t1, -10804($fp)
	li $t2, 0
	bne $t1, $t2, label437
	j label438
label437:
	li $t0, 1
	sw $t0, -10788($fp)
label438:
	lw $t0, -764($fp)
	sw $t0, -10808($fp)
	li $t0, 0
	sw $t0, -10812($fp)
	li $t0, 3499
	sw $t0, -10816($fp)
	li $t0, 33062
	sw $t0, -10820($fp)
	lw $t0, -10816($fp)
	lw $t1, -10820($fp)
	sub $t0, $t0, $t1
	sw $t0, -10824($fp)
	li $t0, 30965
	sw $t0, -10828($fp)
	lw $t0, -10824($fp)
	lw $t1, -10828($fp)
	sub $t0, $t0, $t1
	sw $t0, -10832($fp)
	lw $t0, -836($fp)
	sw $t0, -10836($fp)
	lw $t0, -10836($fp)
	sw $t0, -2456($fp)
	lw $t0, -2456($fp)
	sw $t0, -10840($fp)
	li $t0, 0
	sw $t0, -10844($fp)
	lw $t0, -776($fp)
	sw $t0, -10848($fp)
	lw $t0, -2444($fp)
	sw $t0, -10852($fp)
	lw $t1, -10848($fp)
	lw $t2, -10852($fp)
	bge $t1, $t2, label444
	j label443
label444:
	li $t0, 11627
	sw $t0, -10856($fp)
	lw $t1, -10856($fp)
	li $t2, 0
	bne $t1, $t2, label442
	j label443
label442:
	li $t0, 1
	sw $t0, -10844($fp)
label443:
	li $t0, 0
	sw $t0, -10860($fp)
	lw $t0, -1940($fp)
	sw $t0, -10864($fp)
	lw $t1, -10864($fp)
	li $t2, 0
	bne $t1, $t2, label446
	j label445
label445:
	li $t0, 1
	sw $t0, -10860($fp)
label446:
	li $t0, 25244
	sw $t0, -10868($fp)
	lw $t0, -10860($fp)
	lw $t1, -10868($fp)
	mul $t0, $t0, $t1
	sw $t0, -10872($fp)
	addi $sp, $sp, -4
	lw $t0, -10832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10872($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10876($fp)
	addi $sp, $sp, 20
	lw $t0, -2468($fp)
	sw $t0, -10880($fp)
	lw $t1, -10876($fp)
	lw $t2, -10880($fp)
	blt $t1, $t2, label440
	j label441
label440:
	li $t0, 1
	sw $t0, -10812($fp)
label441:
	addi $sp, $sp, -4
	lw $t0, -10772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10812($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10884($fp)
	addi $sp, $sp, 20
	lw $t0, -10768($fp)
	lw $t1, -10884($fp)
	mul $t0, $t0, $t1
	sw $t0, -10888($fp)
	li $t0, 0
	lw $t1, -10888($fp)
	sub $t0, $t0, $t1
	sw $t0, -10892($fp)
	lw $t1, -10892($fp)
	li $t2, 0
	bne $t1, $t2, label430
	j label431
label430:
label447:
	li $t0, 17748
	sw $t0, -10896($fp)
	lw $t1, -10896($fp)
	li $t2, 0
	bne $t1, $t2, label452
	j label448
label452:
	li $t0, 44865
	sw $t0, -10900($fp)
	lw $t0, -2600($fp)
	sw $t0, -10904($fp)
	lw $t1, -10900($fp)
	lw $t2, -10904($fp)
	beq $t1, $t2, label448
	j label451
label451:
	lw $t0, -3140($fp)
	sw $t0, -10908($fp)
	li $t0, 5515
	sw $t0, -10912($fp)
	lw $t0, -10908($fp)
	lw $t1, -10912($fp)
	mul $t0, $t0, $t1
	sw $t0, -10916($fp)
	li $t0, 0
	lw $t1, -10916($fp)
	sub $t0, $t0, $t1
	sw $t0, -10920($fp)
	lw $t1, -10920($fp)
	li $t2, 0
	bne $t1, $t2, label448
	j label450
label450:
	li $t0, 0
	sw $t0, -10924($fp)
	lw $t0, -2492($fp)
	sw $t0, -10928($fp)
	li $t0, 0
	lw $t1, -10928($fp)
	sub $t0, $t0, $t1
	sw $t0, -10932($fp)
	li $t0, 27025
	sw $t0, -10936($fp)
	lw $t1, -10932($fp)
	lw $t2, -10936($fp)
	bgt $t1, $t2, label453
	j label454
label453:
	li $t0, 1
	sw $t0, -10924($fp)
label454:
	li $t0, 0
	sw $t0, -10940($fp)
	lw $t0, -1160($fp)
	sw $t0, -10944($fp)
	lw $t1, -10944($fp)
	li $t2, 0
	bne $t1, $t2, label457
	j label455
label457:
	li $t0, 19369
	sw $t0, -10948($fp)
	lw $t1, -10948($fp)
	li $t2, 0
	bne $t1, $t2, label455
	j label456
label455:
	li $t0, 1
	sw $t0, -10940($fp)
label456:
	li $t0, 13841
	sw $t0, -10952($fp)
	lw $t0, -812($fp)
	sw $t0, -10956($fp)
	lw $t0, -10952($fp)
	lw $t1, -10956($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10960($fp)
	lw $t0, -992($fp)
	sw $t0, -10964($fp)
	li $t0, 30362
	sw $t0, -10968($fp)
	lw $t0, -10964($fp)
	lw $t1, -10968($fp)
	mul $t0, $t0, $t1
	sw $t0, -10972($fp)
	lw $t0, -812($fp)
	sw $t0, -10976($fp)
	lw $t0, -10972($fp)
	lw $t1, -10976($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10980($fp)
	addi $sp, $sp, -4
	lw $t0, -10924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10980($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10984($fp)
	addi $sp, $sp, 20
	li $t0, 33679
	sw $t0, -10988($fp)
	li $t0, 0
	sw $t0, -10992($fp)
	addi $t0, $fp, -176
	sw $t0, -10996($fp)
	li $t0, 3
	sw $t0, -11000($fp)
	li $t0, 4
	lw $t1, -11000($fp)
	mul $t0, $t0, $t1
	sw $t0, -11004($fp)
	lw $t0, -11004($fp)
	lw $t1, -10996($fp)
	add $t0, $t0, $t1
	sw $t0, -11008($fp)
	lw $t0, -11008($fp)
	lw $t1, 0($t0)
	sw $t1, -11012($fp)
	lw $t1, -11012($fp)
	li $t2, 0
	bne $t1, $t2, label459
	j label458
label458:
	li $t0, 1
	sw $t0, -10992($fp)
label459:
	li $t0, 0
	sw $t0, -11016($fp)
	lw $t0, -1508($fp)
	sw $t0, -11020($fp)
	li $t0, 58409
	sw $t0, -11024($fp)
	lw $t1, -11020($fp)
	lw $t2, -11024($fp)
	bgt $t1, $t2, label460
	j label461
label460:
	li $t0, 1
	sw $t0, -11016($fp)
label461:
	addi $sp, $sp, -4
	lw $t0, -10984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11016($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11028($fp)
	addi $sp, $sp, 20
	li $t0, 17544
	sw $t0, -11032($fp)
	lw $t0, -2744($fp)
	sw $t0, -11036($fp)
	lw $t0, -11032($fp)
	lw $t1, -11036($fp)
	mul $t0, $t0, $t1
	sw $t0, -11040($fp)
	lw $t1, -11028($fp)
	lw $t2, -11040($fp)
	blt $t1, $t2, label448
	j label449
label448:
	li $t0, 20674
	sw $t0, -11044($fp)
	lw $t0, -2492($fp)
	sw $t0, -11048($fp)
	lw $t0, -11044($fp)
	lw $t1, -11048($fp)
	sub $t0, $t0, $t1
	sw $t0, -11052($fp)
	lw $t0, -1808($fp)
	sw $t0, -11056($fp)
	lw $t0, -11052($fp)
	lw $t1, -11056($fp)
	add $t0, $t0, $t1
	sw $t0, -11060($fp)
	lw $t0, -2504($fp)
	sw $t0, -11064($fp)
	lw $t0, -11060($fp)
	lw $t1, -11064($fp)
	sub $t0, $t0, $t1
	sw $t0, -11068($fp)
	li $t0, 63338
	sw $t0, -11072($fp)
	li $t0, 26774
	sw $t0, -11076($fp)
	lw $t0, -11072($fp)
	lw $t1, -11076($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11080($fp)
	li $t0, 21125
	sw $t0, -11084($fp)
	lw $t0, -11080($fp)
	lw $t1, -11084($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11088($fp)
	lw $t1, -11068($fp)
	lw $t2, -11088($fp)
	bgt $t1, $t2, label462
	j label465
label465:
	addi $t0, $fp, -84
	sw $t0, -11092($fp)
	li $t0, 2
	sw $t0, -11096($fp)
	li $t0, 4
	lw $t1, -11096($fp)
	mul $t0, $t0, $t1
	sw $t0, -11100($fp)
	lw $t0, -11100($fp)
	lw $t1, -11092($fp)
	add $t0, $t0, $t1
	sw $t0, -11104($fp)
	lw $t0, -11104($fp)
	lw $t1, 0($t0)
	sw $t1, -11108($fp)
	lw $t0, -872($fp)
	sw $t0, -11112($fp)
	li $t0, 0
	lw $t1, -11112($fp)
	sub $t0, $t0, $t1
	sw $t0, -11116($fp)
	lw $t0, -11108($fp)
	lw $t1, -11116($fp)
	mul $t0, $t0, $t1
	sw $t0, -11120($fp)
	lw $t1, -11120($fp)
	li $t2, 0
	bne $t1, $t2, label462
	j label463
label462:
	lw $t0, -2516($fp)
	sw $t0, -11124($fp)
	j label464
label463:
	li $t0, 1481
	sw $t0, -11128($fp)
	lw $t0, -11128($fp)
	sw $t0, -11132($fp)
	lw $t0, -11132($fp)
	sw $t0, -11136($fp)
	li $t0, 37020
	sw $t0, -11140($fp)
	addi $t0, $fp, -256
	sw $t0, -11144($fp)
	li $t0, 0
	sw $t0, -11148($fp)
	li $t0, 4
	lw $t1, -11148($fp)
	mul $t0, $t0, $t1
	sw $t0, -11152($fp)
	lw $t0, -11152($fp)
	lw $t1, -11144($fp)
	add $t0, $t0, $t1
	sw $t0, -11156($fp)
	lw $t0, -11156($fp)
	lw $t1, 0($t0)
	sw $t1, -11160($fp)
	lw $t0, -2528($fp)
	sw $t0, -11164($fp)
	lw $t0, -1208($fp)
	sw $t0, -11168($fp)
	lw $t0, -1556($fp)
	sw $t0, -11172($fp)
	lw $t0, -11168($fp)
	lw $t1, -11172($fp)
	mul $t0, $t0, $t1
	sw $t0, -11176($fp)
	li $t0, 0
	lw $t1, -11176($fp)
	sub $t0, $t0, $t1
	sw $t0, -11180($fp)
	lw $t0, -11164($fp)
	lw $t1, -11180($fp)
	add $t0, $t0, $t1
	sw $t0, -11184($fp)
	li $t0, 46526
	sw $t0, -11188($fp)
	lw $t0, -11184($fp)
	lw $t1, -11188($fp)
	add $t0, $t0, $t1
	sw $t0, -11192($fp)
	addi $t0, $fp, -104
	sw $t0, -11196($fp)
	lw $t0, -2540($fp)
	sw $t0, -11200($fp)
	lw $t0, -800($fp)
	sw $t0, -11204($fp)
	lw $t0, -11200($fp)
	lw $t1, -11204($fp)
	mul $t0, $t0, $t1
	sw $t0, -11208($fp)
	li $t0, 33798
	sw $t0, -11212($fp)
	lw $t0, -11208($fp)
	lw $t1, -11212($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11216($fp)
	li $t0, 4
	lw $t1, -11216($fp)
	mul $t0, $t0, $t1
	sw $t0, -11220($fp)
	lw $t0, -11220($fp)
	lw $t1, -11196($fp)
	add $t0, $t0, $t1
	sw $t0, -11224($fp)
	lw $t0, -11224($fp)
	lw $t1, 0($t0)
	sw $t1, -11228($fp)
	li $t0, 0
	sw $t0, -11232($fp)
	li $t0, 20132
	sw $t0, -11236($fp)
	lw $t1, -11236($fp)
	li $t2, 0
	bne $t1, $t2, label467
	j label466
label466:
	li $t0, 1
	sw $t0, -11232($fp)
label467:
	li $t0, 0
	sw $t0, -11240($fp)
	li $t0, 158
	sw $t0, -11244($fp)
	lw $t0, -11244($fp)
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -11248($fp)
	li $t0, 19811
	sw $t0, -11252($fp)
	lw $t0, -11252($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -11256($fp)
	li $t0, 0
	sw $t0, -11260($fp)
	lw $t0, -1976($fp)
	sw $t0, -11264($fp)
	li $t0, 1324
	sw $t0, -11268($fp)
	lw $t1, -11264($fp)
	lw $t2, -11268($fp)
	beq $t1, $t2, label470
	j label472
label472:
	li $t0, 15700
	sw $t0, -11272($fp)
	lw $t1, -11272($fp)
	li $t2, 0
	bne $t1, $t2, label470
	j label471
label470:
	li $t0, 1
	sw $t0, -11260($fp)
label471:
	li $t0, 0
	sw $t0, -11276($fp)
	addi $t0, $fp, -256
	sw $t0, -11280($fp)
	lw $t0, -11132($fp)
	sw $t0, -11284($fp)
	li $t0, 4
	lw $t1, -11284($fp)
	mul $t0, $t0, $t1
	sw $t0, -11288($fp)
	lw $t0, -11288($fp)
	lw $t1, -11280($fp)
	add $t0, $t0, $t1
	sw $t0, -11292($fp)
	lw $t0, -11292($fp)
	lw $t1, 0($t0)
	sw $t1, -11296($fp)
	lw $t1, -11296($fp)
	li $t2, 0
	bne $t1, $t2, label475
	j label474
label475:
	li $t0, 50026
	sw $t0, -11300($fp)
	lw $t1, -11300($fp)
	li $t2, 0
	bne $t1, $t2, label473
	j label474
label473:
	li $t0, 1
	sw $t0, -11276($fp)
label474:
	addi $sp, $sp, -4
	lw $t0, -11248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11276($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11304($fp)
	addi $sp, $sp, 20
	lw $t0, -1808($fp)
	sw $t0, -11308($fp)
	lw $t1, -11304($fp)
	lw $t2, -11308($fp)
	bgt $t1, $t2, label468
	j label469
label468:
	li $t0, 1
	sw $t0, -11240($fp)
label469:
	li $t0, 50271
	sw $t0, -11312($fp)
	addi $t0, $fp, -84
	sw $t0, -11316($fp)
	lw $t0, -824($fp)
	sw $t0, -11320($fp)
	li $t0, 4
	lw $t1, -11320($fp)
	mul $t0, $t0, $t1
	sw $t0, -11324($fp)
	lw $t0, -11324($fp)
	lw $t1, -11316($fp)
	add $t0, $t0, $t1
	sw $t0, -11328($fp)
	lw $t0, -11328($fp)
	lw $t1, 0($t0)
	sw $t1, -11332($fp)
	addi $sp, $sp, -4
	lw $t0, -11232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11332($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11336($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -11340($fp)
	lw $t0, -2420($fp)
	sw $t0, -11344($fp)
	lw $t1, -11344($fp)
	li $t2, 0
	bne $t1, $t2, label477
	j label476
label476:
	li $t0, 1
	sw $t0, -11340($fp)
label477:
	lw $t0, -11336($fp)
	lw $t1, -11340($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11348($fp)
	li $t0, 0
	lw $t1, -11348($fp)
	sub $t0, $t0, $t1
	sw $t0, -11352($fp)
	lw $t0, -11228($fp)
	lw $t1, -11352($fp)
	sub $t0, $t0, $t1
	sw $t0, -11356($fp)
label464:
	j label447
label449:
	j label432
label431:
label478:
	lw $t0, -2528($fp)
	sw $t0, -11360($fp)
	lw $t1, -11360($fp)
	li $t2, 0
	bne $t1, $t2, label479
	j label480
label479:
	lw $t0, -2576($fp)
	sw $t0, -11364($fp)
	li $t0, 0
	lw $t1, -11364($fp)
	sub $t0, $t0, $t1
	sw $t0, -11368($fp)
	li $t0, 30432
	sw $t0, -11372($fp)
	lw $t0, -11368($fp)
	lw $t1, -11372($fp)
	sub $t0, $t0, $t1
	sw $t0, -11376($fp)
	li $t0, 25647
	sw $t0, -11380($fp)
	li $t0, 0
	lw $t1, -11380($fp)
	sub $t0, $t0, $t1
	sw $t0, -11384($fp)
	li $t0, 45023
	sw $t0, -11388($fp)
	li $t0, 37559
	sw $t0, -11392($fp)
	lw $t0, -11392($fp)
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	sw $t0, -11396($fp)
	addi $sp, $sp, -4
	lw $t0, -11376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11396($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11400($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -11404($fp)
	li $t0, 0
	sw $t0, -11408($fp)
	lw $t0, -2228($fp)
	sw $t0, -11412($fp)
	lw $t0, -2876($fp)
	sw $t0, -11416($fp)
	lw $t0, -11412($fp)
	lw $t1, -11416($fp)
	add $t0, $t0, $t1
	sw $t0, -11420($fp)
	lw $t1, -11420($fp)
	li $t2, 0
	bne $t1, $t2, label483
	j label485
label485:
	lw $t0, -1940($fp)
	sw $t0, -11424($fp)
	lw $t1, -11424($fp)
	li $t2, 0
	bne $t1, $t2, label483
	j label484
label483:
	li $t0, 1
	sw $t0, -11408($fp)
label484:
	li $t0, 50567
	sw $t0, -11428($fp)
	lw $t0, -11428($fp)
	sw $t0, -2696($fp)
	lw $t0, -2696($fp)
	sw $t0, -11432($fp)
	lw $t0, -1172($fp)
	sw $t0, -11436($fp)
	lw $t0, -11436($fp)
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	sw $t0, -11440($fp)
	li $t0, 9034
	sw $t0, -11444($fp)
	lw $t0, -1220($fp)
	sw $t0, -11448($fp)
	lw $t0, -11444($fp)
	lw $t1, -11448($fp)
	mul $t0, $t0, $t1
	sw $t0, -11452($fp)
	addi $sp, $sp, -4
	lw $t0, -11408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11452($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11456($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -11460($fp)
	li $t0, 0
	sw $t0, -11464($fp)
	li $t0, 0
	sw $t0, -11468($fp)
	lw $t0, -1136($fp)
	sw $t0, -11472($fp)
	lw $t0, -1256($fp)
	sw $t0, -11476($fp)
	lw $t1, -11472($fp)
	lw $t2, -11476($fp)
	bgt $t1, $t2, label490
	j label491
label490:
	li $t0, 1
	sw $t0, -11468($fp)
label491:
	li $t0, 38619
	sw $t0, -11480($fp)
	lw $t1, -11468($fp)
	lw $t2, -11480($fp)
	beq $t1, $t2, label488
	j label489
label488:
	li $t0, 1
	sw $t0, -11464($fp)
label489:
	li $t0, 16416
	sw $t0, -11484($fp)
	lw $t0, -11484($fp)
	sw $t0, -2612($fp)
	lw $t0, -2612($fp)
	sw $t0, -11488($fp)
	li $t0, 0
	sw $t0, -11492($fp)
	addi $t0, $fp, -224
	sw $t0, -11496($fp)
	li $t0, 7
	sw $t0, -11500($fp)
	li $t0, 4
	lw $t1, -11500($fp)
	mul $t0, $t0, $t1
	sw $t0, -11504($fp)
	lw $t0, -11504($fp)
	lw $t1, -11496($fp)
	add $t0, $t0, $t1
	sw $t0, -11508($fp)
	lw $t0, -11508($fp)
	lw $t1, 0($t0)
	sw $t1, -11512($fp)
	li $t0, 885
	sw $t0, -11516($fp)
	lw $t1, -11512($fp)
	lw $t2, -11516($fp)
	bgt $t1, $t2, label492
	j label493
label492:
	li $t0, 1
	sw $t0, -11492($fp)
label493:
	li $t0, 0
	sw $t0, -11520($fp)
	li $t0, 64112
	sw $t0, -11524($fp)
	lw $t1, -11524($fp)
	li $t2, 0
	bne $t1, $t2, label495
	j label494
label494:
	li $t0, 1
	sw $t0, -11520($fp)
label495:
	li $t0, 39396
	sw $t0, -11528($fp)
	lw $t0, -11520($fp)
	lw $t1, -11528($fp)
	mul $t0, $t0, $t1
	sw $t0, -11532($fp)
	addi $sp, $sp, -4
	lw $t0, -11464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11532($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11536($fp)
	addi $sp, $sp, 20
	lw $t1, -11536($fp)
	li $t2, 0
	bne $t1, $t2, label487
	j label486
label486:
	li $t0, 1
	sw $t0, -11460($fp)
label487:
	lw $t1, -11456($fp)
	lw $t2, -11460($fp)
	ble $t1, $t2, label481
	j label482
label481:
	li $t0, 1
	sw $t0, -11404($fp)
label482:
	li $t0, 0
	sw $t0, -11540($fp)
	lw $t0, -992($fp)
	sw $t0, -11544($fp)
	lw $t1, -11544($fp)
	li $t2, 0
	bne $t1, $t2, label496
	j label498
label498:
	li $t0, 0
	sw $t0, -11548($fp)
	li $t0, 64223
	sw $t0, -11552($fp)
	lw $t1, -11552($fp)
	li $t2, 0
	bne $t1, $t2, label500
	j label499
label499:
	li $t0, 1
	sw $t0, -11548($fp)
label500:
	lw $t0, -2588($fp)
	sw $t0, -11556($fp)
	lw $t0, -11548($fp)
	lw $t1, -11556($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11560($fp)
	addi $t0, $fp, -84
	sw $t0, -11564($fp)
	lw $t0, -2456($fp)
	sw $t0, -11568($fp)
	li $t0, 4
	lw $t1, -11568($fp)
	mul $t0, $t0, $t1
	sw $t0, -11572($fp)
	lw $t0, -11572($fp)
	lw $t1, -11564($fp)
	add $t0, $t0, $t1
	sw $t0, -11576($fp)
	lw $t0, -11576($fp)
	lw $t1, 0($t0)
	sw $t1, -11580($fp)
	lw $t1, -11560($fp)
	lw $t2, -11580($fp)
	bgt $t1, $t2, label496
	j label497
label496:
	li $t0, 1
	sw $t0, -11540($fp)
label497:
	lw $t0, -2408($fp)
	sw $t0, -11584($fp)
	lw $t0, -2600($fp)
	sw $t0, -11588($fp)
	j label478
label480:
label432:
label156:
	j label147
label149:
	j label139
label138:
label501:
	li $t0, 0
	sw $t0, -11592($fp)
	addi $t0, $fp, -104
	sw $t0, -11596($fp)
	li $t0, 0
	sw $t0, -11600($fp)
	lw $t0, -2612($fp)
	sw $t0, -11604($fp)
	lw $t1, -11604($fp)
	li $t2, 0
	bne $t1, $t2, label506
	j label508
label508:
	lw $t0, -1520($fp)
	sw $t0, -11608($fp)
	lw $t1, -11608($fp)
	li $t2, 0
	bne $t1, $t2, label506
	j label507
label506:
	li $t0, 1
	sw $t0, -11600($fp)
label507:
	li $t0, 4
	lw $t1, -11600($fp)
	mul $t0, $t0, $t1
	sw $t0, -11612($fp)
	lw $t0, -11612($fp)
	lw $t1, -11596($fp)
	add $t0, $t0, $t1
	sw $t0, -11616($fp)
	lw $t0, -11616($fp)
	lw $t1, 0($t0)
	sw $t1, -11620($fp)
	li $t0, 43190
	sw $t0, -11624($fp)
	li $t0, 59744
	sw $t0, -11628($fp)
	lw $t0, -11624($fp)
	lw $t1, -11628($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11632($fp)
	lw $t1, -11620($fp)
	lw $t2, -11632($fp)
	beq $t1, $t2, label504
	j label505
label504:
	li $t0, 1
	sw $t0, -11592($fp)
label505:
	li $t0, 0
	sw $t0, -11636($fp)
	li $t0, 3761
	sw $t0, -11640($fp)
	lw $t1, -11640($fp)
	li $t2, 0
	bne $t1, $t2, label510
	j label509
label509:
	li $t0, 1
	sw $t0, -11636($fp)
label510:
	li $t0, 0
	sw $t0, -11644($fp)
	lw $t0, -2684($fp)
	sw $t0, -11648($fp)
	li $t0, 61225
	sw $t0, -11652($fp)
	lw $t1, -11648($fp)
	lw $t2, -11652($fp)
	bge $t1, $t2, label511
	j label513
label513:
	li $t0, 20558
	sw $t0, -11656($fp)
	lw $t1, -11656($fp)
	li $t2, 0
	bne $t1, $t2, label511
	j label512
label511:
	li $t0, 1
	sw $t0, -11644($fp)
label512:
	li $t0, 0
	sw $t0, -11660($fp)
	addi $t0, $fp, -264
	sw $t0, -11664($fp)
	lw $t0, -1796($fp)
	sw $t0, -11668($fp)
	li $t0, 4
	lw $t1, -11668($fp)
	mul $t0, $t0, $t1
	sw $t0, -11672($fp)
	lw $t0, -11672($fp)
	lw $t1, -11664($fp)
	add $t0, $t0, $t1
	sw $t0, -11676($fp)
	lw $t0, -11676($fp)
	lw $t1, 0($t0)
	sw $t1, -11680($fp)
	lw $t0, -2672($fp)
	sw $t0, -11684($fp)
	lw $t1, -11680($fp)
	lw $t2, -11684($fp)
	beq $t1, $t2, label514
	j label515
label514:
	li $t0, 1
	sw $t0, -11660($fp)
label515:
	li $t0, 0
	sw $t0, -11688($fp)
	lw $t0, -2720($fp)
	sw $t0, -11692($fp)
	li $t0, 49074
	sw $t0, -11696($fp)
	lw $t0, -11692($fp)
	lw $t1, -11696($fp)
	sub $t0, $t0, $t1
	sw $t0, -11700($fp)
	li $t0, 60743
	sw $t0, -11704($fp)
	lw $t1, -11700($fp)
	lw $t2, -11704($fp)
	bgt $t1, $t2, label516
	j label517
label516:
	li $t0, 1
	sw $t0, -11688($fp)
label517:
	addi $sp, $sp, -4
	lw $t0, -11636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11688($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11708($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -11708($fp)
	sub $t0, $t0, $t1
	sw $t0, -11712($fp)
	li $t0, 0
	lw $t1, -11712($fp)
	sub $t0, $t0, $t1
	sw $t0, -11716($fp)
	lw $t1, -11592($fp)
	lw $t2, -11716($fp)
	beq $t1, $t2, label502
	j label503
label502:
	li $t0, 0
	sw $t0, -11720($fp)
	lw $t0, -1244($fp)
	sw $t0, -11724($fp)
	lw $t1, -11724($fp)
	li $t2, 0
	bne $t1, $t2, label522
	j label521
label521:
	li $t0, 1
	sw $t0, -11720($fp)
label522:
	li $t0, 0
	sw $t0, -11728($fp)
	li $t0, 34333
	sw $t0, -11732($fp)
	lw $t1, -11732($fp)
	li $t2, 0
	bne $t1, $t2, label524
	j label523
label523:
	li $t0, 1
	sw $t0, -11728($fp)
label524:
	lw $t0, -11720($fp)
	lw $t1, -11728($fp)
	mul $t0, $t0, $t1
	sw $t0, -11736($fp)
	lw $t0, -11736($fp)
	sw $t0, -2696($fp)
	lw $t0, -2696($fp)
	sw $t0, -11740($fp)
	lw $t1, -11740($fp)
	li $t2, 0
	bne $t1, $t2, label518
	j label519
label518:
	li $t0, 0
	sw $t0, -11744($fp)
	lw $t0, -2708($fp)
	sw $t0, -11748($fp)
	li $t0, 0
	lw $t1, -11748($fp)
	sub $t0, $t0, $t1
	sw $t0, -11752($fp)
	li $t0, 0
	sw $t0, -11756($fp)
	li $t0, 51574
	sw $t0, -11760($fp)
	lw $t0, -2732($fp)
	sw $t0, -11764($fp)
	lw $t0, -11760($fp)
	lw $t1, -11764($fp)
	mul $t0, $t0, $t1
	sw $t0, -11768($fp)
	lw $t1, -11768($fp)
	li $t2, 0
	bne $t1, $t2, label527
	j label529
label529:
	lw $t0, -2696($fp)
	sw $t0, -11772($fp)
	lw $t1, -11772($fp)
	li $t2, 0
	bne $t1, $t2, label527
	j label528
label527:
	li $t0, 1
	sw $t0, -11756($fp)
label528:
	lw $t0, -2720($fp)
	sw $t0, -11776($fp)
	li $t0, 19068
	sw $t0, -11780($fp)
	lw $t0, -11780($fp)
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	sw $t0, -11784($fp)
	li $t0, 0
	sw $t0, -11788($fp)
	li $t0, 1548
	sw $t0, -11792($fp)
	li $t0, 37559
	sw $t0, -11796($fp)
	lw $t0, -11792($fp)
	lw $t1, -11796($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11800($fp)
	lw $t0, -1964($fp)
	sw $t0, -11804($fp)
	lw $t1, -11800($fp)
	lw $t2, -11804($fp)
	ble $t1, $t2, label530
	j label531
label530:
	li $t0, 1
	sw $t0, -11788($fp)
label531:
	addi $sp, $sp, -4
	lw $t0, -11756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11788($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11808($fp)
	addi $sp, $sp, 20
	lw $t1, -11752($fp)
	lw $t2, -11808($fp)
	bne $t1, $t2, label525
	j label526
label525:
	li $t0, 1
	sw $t0, -11744($fp)
label526:
	j label520
label519:
	lw $t0, -2504($fp)
	sw $t0, -11812($fp)
label520:
	j label501
label503:
label139:
	addi $t0, $fp, -188
	sw $t0, -11816($fp)
	li $t0, 38884
	sw $t0, -11820($fp)
	li $t0, 34768
	sw $t0, -11824($fp)
	lw $t0, -11820($fp)
	lw $t1, -11824($fp)
	mul $t0, $t0, $t1
	sw $t0, -11828($fp)
	lw $t0, 8($fp)
	sw $t0, -11832($fp)
	lw $t0, -11828($fp)
	lw $t1, -11832($fp)
	mul $t0, $t0, $t1
	sw $t0, -11836($fp)
	li $t0, 4
	lw $t1, -11836($fp)
	mul $t0, $t0, $t1
	sw $t0, -11840($fp)
	lw $t0, -11840($fp)
	lw $t1, -11816($fp)
	add $t0, $t0, $t1
	sw $t0, -11844($fp)
	lw $t0, -11844($fp)
	lw $t1, 0($t0)
	sw $t1, -11848($fp)
	lw $t1, -11848($fp)
	li $t2, 0
	bne $t1, $t2, label533
	j label532
label532:
	lw $t0, -2744($fp)
	sw $t0, -11852($fp)
	li $t0, 0
	lw $t1, -11852($fp)
	sub $t0, $t0, $t1
	sw $t0, -11856($fp)
	li $t0, 0
	lw $t1, -11856($fp)
	sub $t0, $t0, $t1
	sw $t0, -11860($fp)
	lw $t0, -11860($fp)
	sw $t0, -3128($fp)
	lw $t0, -3128($fp)
	sw $t0, -11864($fp)
label533:
label535:
	addi $t0, $fp, -284
	sw $t0, -11868($fp)
	lw $t0, -884($fp)
	sw $t0, -11872($fp)
	lw $t0, -11872($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -11876($fp)
	li $t0, 4
	lw $t1, -11876($fp)
	mul $t0, $t0, $t1
	sw $t0, -11880($fp)
	lw $t0, -11880($fp)
	lw $t1, -11868($fp)
	add $t0, $t0, $t1
	sw $t0, -11884($fp)
	lw $t0, -11884($fp)
	lw $t1, 0($t0)
	sw $t1, -11888($fp)
	lw $t0, -2576($fp)
	sw $t0, -11892($fp)
	li $t0, 0
	sw $t0, -11896($fp)
	lw $t0, -2432($fp)
	sw $t0, -11900($fp)
	lw $t1, -11900($fp)
	li $t2, 0
	bne $t1, $t2, label538
	j label541
label541:
	lw $t0, -1964($fp)
	sw $t0, -11904($fp)
	lw $t1, -11904($fp)
	li $t2, 0
	bne $t1, $t2, label538
	j label540
label540:
	li $t0, 18529
	sw $t0, -11908($fp)
	lw $t1, -11908($fp)
	li $t2, 0
	bne $t1, $t2, label538
	j label539
label538:
	li $t0, 1
	sw $t0, -11896($fp)
label539:
	li $t0, 0
	sw $t0, -11912($fp)
	lw $t0, -2528($fp)
	sw $t0, -11916($fp)
	lw $t0, -1196($fp)
	sw $t0, -11920($fp)
	lw $t0, -11916($fp)
	lw $t1, -11920($fp)
	add $t0, $t0, $t1
	sw $t0, -11924($fp)
	lw $t1, -11924($fp)
	li $t2, 0
	bne $t1, $t2, label544
	j label543
label544:
	li $t0, 43409
	sw $t0, -11928($fp)
	lw $t1, -11928($fp)
	li $t2, 0
	bne $t1, $t2, label542
	j label543
label542:
	li $t0, 1
	sw $t0, -11912($fp)
label543:
	li $t0, 0
	sw $t0, -11932($fp)
	li $t0, 0
	sw $t0, -11936($fp)
	lw $t0, -1148($fp)
	sw $t0, -11940($fp)
	li $t0, 54901
	sw $t0, -11944($fp)
	lw $t1, -11940($fp)
	lw $t2, -11944($fp)
	beq $t1, $t2, label547
	j label548
label547:
	li $t0, 1
	sw $t0, -11936($fp)
label548:
	lw $t0, -2876($fp)
	sw $t0, -11948($fp)
	lw $t1, -11936($fp)
	lw $t2, -11948($fp)
	bne $t1, $t2, label545
	j label546
label545:
	li $t0, 1
	sw $t0, -11932($fp)
label546:
	li $t0, 0
	sw $t0, -11952($fp)
	li $t0, 5850
	sw $t0, -11956($fp)
	li $t0, 39042
	sw $t0, -11960($fp)
	lw $t1, -11956($fp)
	lw $t2, -11960($fp)
	blt $t1, $t2, label549
	j label550
label549:
	li $t0, 1
	sw $t0, -11952($fp)
label550:
	addi $sp, $sp, -4
	lw $t0, -11896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11952($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11964($fp)
	addi $sp, $sp, 20
	lw $t0, -11892($fp)
	lw $t1, -11964($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11968($fp)
	lw $t1, -11888($fp)
	lw $t2, -11968($fp)
	beq $t1, $t2, label536
	j label537
label536:
	li $t0, 0
	sw $t0, -11972($fp)
	li $t0, 0
	sw $t0, -11976($fp)
	li $t0, 15012
	sw $t0, -11980($fp)
	lw $t1, -11980($fp)
	li $t2, 0
	bne $t1, $t2, label554
	j label553
label553:
	li $t0, 1
	sw $t0, -11976($fp)
label554:
	li $t0, 0
	sw $t0, -11984($fp)
	addi $t0, $fp, -324
	sw $t0, -11988($fp)
	lw $t0, -992($fp)
	sw $t0, -11992($fp)
	li $t0, 4
	lw $t1, -11992($fp)
	mul $t0, $t0, $t1
	sw $t0, -11996($fp)
	lw $t0, -11996($fp)
	lw $t1, -11988($fp)
	add $t0, $t0, $t1
	sw $t0, -12000($fp)
	lw $t0, -12000($fp)
	lw $t1, 0($t0)
	sw $t1, -12004($fp)
	lw $t1, -12004($fp)
	li $t2, 0
	bne $t1, $t2, label556
	j label555
label555:
	li $t0, 1
	sw $t0, -11984($fp)
label556:
	lw $t1, -11976($fp)
	lw $t2, -11984($fp)
	bgt $t1, $t2, label551
	j label552
label551:
	li $t0, 1
	sw $t0, -11972($fp)
label552:
	lw $ra, -4($fp)
	lw $v0, -11972($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label535
label537:
	addi $t0, $fp, -40
	sw $t0, -12008($fp)
	li $t0, 0
	sw $t0, -12012($fp)
	li $t0, 4
	lw $t1, -12012($fp)
	mul $t0, $t0, $t1
	sw $t0, -12016($fp)
	lw $t0, -12016($fp)
	lw $t1, -12008($fp)
	add $t0, $t0, $t1
	sw $t0, -12020($fp)
	lw $t0, -12020($fp)
	lw $t1, 0($t0)
	sw $t1, -12024($fp)
	lw $t0, -12024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -12028($fp)
	li $t0, 1
	sw $t0, -12032($fp)
	li $t0, 4
	lw $t1, -12032($fp)
	mul $t0, $t0, $t1
	sw $t0, -12036($fp)
	lw $t0, -12036($fp)
	lw $t1, -12028($fp)
	add $t0, $t0, $t1
	sw $t0, -12040($fp)
	lw $t0, -12040($fp)
	lw $t1, 0($t0)
	sw $t1, -12044($fp)
	lw $t0, -12044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -12048($fp)
	li $t0, 2
	sw $t0, -12052($fp)
	li $t0, 4
	lw $t1, -12052($fp)
	mul $t0, $t0, $t1
	sw $t0, -12056($fp)
	lw $t0, -12056($fp)
	lw $t1, -12048($fp)
	add $t0, $t0, $t1
	sw $t0, -12060($fp)
	lw $t0, -12060($fp)
	lw $t1, 0($t0)
	sw $t1, -12064($fp)
	lw $t0, -12064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -12068($fp)
	li $t0, 3
	sw $t0, -12072($fp)
	li $t0, 4
	lw $t1, -12072($fp)
	mul $t0, $t0, $t1
	sw $t0, -12076($fp)
	lw $t0, -12076($fp)
	lw $t1, -12068($fp)
	add $t0, $t0, $t1
	sw $t0, -12080($fp)
	lw $t0, -12080($fp)
	lw $t1, 0($t0)
	sw $t1, -12084($fp)
	lw $t0, -12084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -12088($fp)
	li $t0, 4
	sw $t0, -12092($fp)
	li $t0, 4
	lw $t1, -12092($fp)
	mul $t0, $t0, $t1
	sw $t0, -12096($fp)
	lw $t0, -12096($fp)
	lw $t1, -12088($fp)
	add $t0, $t0, $t1
	sw $t0, -12100($fp)
	lw $t0, -12100($fp)
	lw $t1, 0($t0)
	sw $t1, -12104($fp)
	lw $t0, -12104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -12108($fp)
	li $t0, 5
	sw $t0, -12112($fp)
	li $t0, 4
	lw $t1, -12112($fp)
	mul $t0, $t0, $t1
	sw $t0, -12116($fp)
	lw $t0, -12116($fp)
	lw $t1, -12108($fp)
	add $t0, $t0, $t1
	sw $t0, -12120($fp)
	lw $t0, -12120($fp)
	lw $t1, 0($t0)
	sw $t1, -12124($fp)
	lw $t0, -12124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -12128($fp)
	li $t0, 6
	sw $t0, -12132($fp)
	li $t0, 4
	lw $t1, -12132($fp)
	mul $t0, $t0, $t1
	sw $t0, -12136($fp)
	lw $t0, -12136($fp)
	lw $t1, -12128($fp)
	add $t0, $t0, $t1
	sw $t0, -12140($fp)
	lw $t0, -12140($fp)
	lw $t1, 0($t0)
	sw $t1, -12144($fp)
	lw $t0, -12144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -12148($fp)
	li $t0, 7
	sw $t0, -12152($fp)
	li $t0, 4
	lw $t1, -12152($fp)
	mul $t0, $t0, $t1
	sw $t0, -12156($fp)
	lw $t0, -12156($fp)
	lw $t1, -12148($fp)
	add $t0, $t0, $t1
	sw $t0, -12160($fp)
	lw $t0, -12160($fp)
	lw $t1, 0($t0)
	sw $t1, -12164($fp)
	lw $t0, -12164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -12168($fp)
	li $t0, 8
	sw $t0, -12172($fp)
	li $t0, 4
	lw $t1, -12172($fp)
	mul $t0, $t0, $t1
	sw $t0, -12176($fp)
	lw $t0, -12176($fp)
	lw $t1, -12168($fp)
	add $t0, $t0, $t1
	sw $t0, -12180($fp)
	lw $t0, -12180($fp)
	lw $t1, 0($t0)
	sw $t1, -12184($fp)
	lw $t0, -12184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -12188($fp)
	li $t0, 0
	sw $t0, -12192($fp)
	li $t0, 4
	lw $t1, -12192($fp)
	mul $t0, $t0, $t1
	sw $t0, -12196($fp)
	lw $t0, -12196($fp)
	lw $t1, -12188($fp)
	add $t0, $t0, $t1
	sw $t0, -12200($fp)
	lw $t0, -12200($fp)
	lw $t1, 0($t0)
	sw $t1, -12204($fp)
	lw $t0, -12204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -12208($fp)
	li $t0, 1
	sw $t0, -12212($fp)
	li $t0, 4
	lw $t1, -12212($fp)
	mul $t0, $t0, $t1
	sw $t0, -12216($fp)
	lw $t0, -12216($fp)
	lw $t1, -12208($fp)
	add $t0, $t0, $t1
	sw $t0, -12220($fp)
	lw $t0, -12220($fp)
	lw $t1, 0($t0)
	sw $t1, -12224($fp)
	lw $t0, -12224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -596($fp)
	sw $t0, -12228($fp)
	lw $t0, -12228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -608($fp)
	sw $t0, -12232($fp)
	lw $t0, -12232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -12236($fp)
	li $t0, 0
	sw $t0, -12240($fp)
	li $t0, 4
	lw $t1, -12240($fp)
	mul $t0, $t0, $t1
	sw $t0, -12244($fp)
	lw $t0, -12244($fp)
	lw $t1, -12236($fp)
	add $t0, $t0, $t1
	sw $t0, -12248($fp)
	lw $t0, -12248($fp)
	lw $t1, 0($t0)
	sw $t1, -12252($fp)
	lw $t0, -12252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -12256($fp)
	li $t0, 1
	sw $t0, -12260($fp)
	li $t0, 4
	lw $t1, -12260($fp)
	mul $t0, $t0, $t1
	sw $t0, -12264($fp)
	lw $t0, -12264($fp)
	lw $t1, -12256($fp)
	add $t0, $t0, $t1
	sw $t0, -12268($fp)
	lw $t0, -12268($fp)
	lw $t1, 0($t0)
	sw $t1, -12272($fp)
	lw $t0, -12272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -12276($fp)
	li $t0, 2
	sw $t0, -12280($fp)
	li $t0, 4
	lw $t1, -12280($fp)
	mul $t0, $t0, $t1
	sw $t0, -12284($fp)
	lw $t0, -12284($fp)
	lw $t1, -12276($fp)
	add $t0, $t0, $t1
	sw $t0, -12288($fp)
	lw $t0, -12288($fp)
	lw $t1, 0($t0)
	sw $t1, -12292($fp)
	lw $t0, -12292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -12296($fp)
	li $t0, 3
	sw $t0, -12300($fp)
	li $t0, 4
	lw $t1, -12300($fp)
	mul $t0, $t0, $t1
	sw $t0, -12304($fp)
	lw $t0, -12304($fp)
	lw $t1, -12296($fp)
	add $t0, $t0, $t1
	sw $t0, -12308($fp)
	lw $t0, -12308($fp)
	lw $t1, 0($t0)
	sw $t1, -12312($fp)
	lw $t0, -12312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -12316($fp)
	li $t0, 4
	sw $t0, -12320($fp)
	li $t0, 4
	lw $t1, -12320($fp)
	mul $t0, $t0, $t1
	sw $t0, -12324($fp)
	lw $t0, -12324($fp)
	lw $t1, -12316($fp)
	add $t0, $t0, $t1
	sw $t0, -12328($fp)
	lw $t0, -12328($fp)
	lw $t1, 0($t0)
	sw $t1, -12332($fp)
	lw $t0, -12332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -12336($fp)
	li $t0, 5
	sw $t0, -12340($fp)
	li $t0, 4
	lw $t1, -12340($fp)
	mul $t0, $t0, $t1
	sw $t0, -12344($fp)
	lw $t0, -12344($fp)
	lw $t1, -12336($fp)
	add $t0, $t0, $t1
	sw $t0, -12348($fp)
	lw $t0, -12348($fp)
	lw $t1, 0($t0)
	sw $t1, -12352($fp)
	lw $t0, -12352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -764($fp)
	sw $t0, -12356($fp)
	lw $t0, -12356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -776($fp)
	sw $t0, -12360($fp)
	lw $t0, -12360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -788($fp)
	sw $t0, -12364($fp)
	lw $t0, -12364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -800($fp)
	sw $t0, -12368($fp)
	lw $t0, -12368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -812($fp)
	sw $t0, -12372($fp)
	lw $t0, -12372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -824($fp)
	sw $t0, -12376($fp)
	lw $t0, -12376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -836($fp)
	sw $t0, -12380($fp)
	lw $t0, -12380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -848($fp)
	sw $t0, -12384($fp)
	lw $t0, -12384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -860($fp)
	sw $t0, -12388($fp)
	lw $t0, -12388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -872($fp)
	sw $t0, -12392($fp)
	lw $t0, -12392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -884($fp)
	sw $t0, -12396($fp)
	lw $t0, -12396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -896($fp)
	sw $t0, -12400($fp)
	lw $t0, -12400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -908($fp)
	sw $t0, -12404($fp)
	lw $t0, -12404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -12408($fp)
	li $t0, 0
	sw $t0, -12412($fp)
	li $t0, 4
	lw $t1, -12412($fp)
	mul $t0, $t0, $t1
	sw $t0, -12416($fp)
	lw $t0, -12416($fp)
	lw $t1, -12408($fp)
	add $t0, $t0, $t1
	sw $t0, -12420($fp)
	lw $t0, -12420($fp)
	lw $t1, 0($t0)
	sw $t1, -12424($fp)
	lw $t0, -12424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -12428($fp)
	li $t0, 1
	sw $t0, -12432($fp)
	li $t0, 4
	lw $t1, -12432($fp)
	mul $t0, $t0, $t1
	sw $t0, -12436($fp)
	lw $t0, -12436($fp)
	lw $t1, -12428($fp)
	add $t0, $t0, $t1
	sw $t0, -12440($fp)
	lw $t0, -12440($fp)
	lw $t1, 0($t0)
	sw $t1, -12444($fp)
	lw $t0, -12444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -12448($fp)
	li $t0, 2
	sw $t0, -12452($fp)
	li $t0, 4
	lw $t1, -12452($fp)
	mul $t0, $t0, $t1
	sw $t0, -12456($fp)
	lw $t0, -12456($fp)
	lw $t1, -12448($fp)
	add $t0, $t0, $t1
	sw $t0, -12460($fp)
	lw $t0, -12460($fp)
	lw $t1, 0($t0)
	sw $t1, -12464($fp)
	lw $t0, -12464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -992($fp)
	sw $t0, -12468($fp)
	lw $t0, -12468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1004($fp)
	sw $t0, -12472($fp)
	lw $t0, -12472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -12476($fp)
	li $t0, 0
	sw $t0, -12480($fp)
	li $t0, 4
	lw $t1, -12480($fp)
	mul $t0, $t0, $t1
	sw $t0, -12484($fp)
	lw $t0, -12484($fp)
	lw $t1, -12476($fp)
	add $t0, $t0, $t1
	sw $t0, -12488($fp)
	lw $t0, -12488($fp)
	lw $t1, 0($t0)
	sw $t1, -12492($fp)
	lw $t0, -12492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -12496($fp)
	li $t0, 1
	sw $t0, -12500($fp)
	li $t0, 4
	lw $t1, -12500($fp)
	mul $t0, $t0, $t1
	sw $t0, -12504($fp)
	lw $t0, -12504($fp)
	lw $t1, -12496($fp)
	add $t0, $t0, $t1
	sw $t0, -12508($fp)
	lw $t0, -12508($fp)
	lw $t1, 0($t0)
	sw $t1, -12512($fp)
	lw $t0, -12512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -12516($fp)
	li $t0, 2
	sw $t0, -12520($fp)
	li $t0, 4
	lw $t1, -12520($fp)
	mul $t0, $t0, $t1
	sw $t0, -12524($fp)
	lw $t0, -12524($fp)
	lw $t1, -12516($fp)
	add $t0, $t0, $t1
	sw $t0, -12528($fp)
	lw $t0, -12528($fp)
	lw $t1, 0($t0)
	sw $t1, -12532($fp)
	lw $t0, -12532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -12536($fp)
	li $t0, 3
	sw $t0, -12540($fp)
	li $t0, 4
	lw $t1, -12540($fp)
	mul $t0, $t0, $t1
	sw $t0, -12544($fp)
	lw $t0, -12544($fp)
	lw $t1, -12536($fp)
	add $t0, $t0, $t1
	sw $t0, -12548($fp)
	lw $t0, -12548($fp)
	lw $t1, 0($t0)
	sw $t1, -12552($fp)
	lw $t0, -12552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -12556($fp)
	li $t0, 4
	sw $t0, -12560($fp)
	li $t0, 4
	lw $t1, -12560($fp)
	mul $t0, $t0, $t1
	sw $t0, -12564($fp)
	lw $t0, -12564($fp)
	lw $t1, -12556($fp)
	add $t0, $t0, $t1
	sw $t0, -12568($fp)
	lw $t0, -12568($fp)
	lw $t1, 0($t0)
	sw $t1, -12572($fp)
	lw $t0, -12572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1136($fp)
	sw $t0, -12576($fp)
	lw $t0, -12576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1148($fp)
	sw $t0, -12580($fp)
	lw $t0, -12580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1160($fp)
	sw $t0, -12584($fp)
	lw $t0, -12584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1172($fp)
	sw $t0, -12588($fp)
	lw $t0, -12588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1184($fp)
	sw $t0, -12592($fp)
	lw $t0, -12592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1196($fp)
	sw $t0, -12596($fp)
	lw $t0, -12596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1208($fp)
	sw $t0, -12600($fp)
	lw $t0, -12600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1220($fp)
	sw $t0, -12604($fp)
	lw $t0, -12604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1232($fp)
	sw $t0, -12608($fp)
	lw $t0, -12608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1244($fp)
	sw $t0, -12612($fp)
	lw $t0, -12612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1256($fp)
	sw $t0, -12616($fp)
	lw $t0, -12616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1268($fp)
	sw $t0, -12620($fp)
	lw $t0, -12620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -12624($fp)
	li $t0, 0
	sw $t0, -12628($fp)
	li $t0, 4
	lw $t1, -12628($fp)
	mul $t0, $t0, $t1
	sw $t0, -12632($fp)
	lw $t0, -12632($fp)
	lw $t1, -12624($fp)
	add $t0, $t0, $t1
	sw $t0, -12636($fp)
	lw $t0, -12636($fp)
	lw $t1, 0($t0)
	sw $t1, -12640($fp)
	lw $t0, -12640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -12644($fp)
	li $t0, 1
	sw $t0, -12648($fp)
	li $t0, 4
	lw $t1, -12648($fp)
	mul $t0, $t0, $t1
	sw $t0, -12652($fp)
	lw $t0, -12652($fp)
	lw $t1, -12644($fp)
	add $t0, $t0, $t1
	sw $t0, -12656($fp)
	lw $t0, -12656($fp)
	lw $t1, 0($t0)
	sw $t1, -12660($fp)
	lw $t0, -12660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -12664($fp)
	li $t0, 2
	sw $t0, -12668($fp)
	li $t0, 4
	lw $t1, -12668($fp)
	mul $t0, $t0, $t1
	sw $t0, -12672($fp)
	lw $t0, -12672($fp)
	lw $t1, -12664($fp)
	add $t0, $t0, $t1
	sw $t0, -12676($fp)
	lw $t0, -12676($fp)
	lw $t1, 0($t0)
	sw $t1, -12680($fp)
	lw $t0, -12680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -12684($fp)
	li $t0, 3
	sw $t0, -12688($fp)
	li $t0, 4
	lw $t1, -12688($fp)
	mul $t0, $t0, $t1
	sw $t0, -12692($fp)
	lw $t0, -12692($fp)
	lw $t1, -12684($fp)
	add $t0, $t0, $t1
	sw $t0, -12696($fp)
	lw $t0, -12696($fp)
	lw $t1, 0($t0)
	sw $t1, -12700($fp)
	lw $t0, -12700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -12704($fp)
	li $t0, 4
	sw $t0, -12708($fp)
	li $t0, 4
	lw $t1, -12708($fp)
	mul $t0, $t0, $t1
	sw $t0, -12712($fp)
	lw $t0, -12712($fp)
	lw $t1, -12704($fp)
	add $t0, $t0, $t1
	sw $t0, -12716($fp)
	lw $t0, -12716($fp)
	lw $t1, 0($t0)
	sw $t1, -12720($fp)
	lw $t0, -12720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -12724($fp)
	li $t0, 5
	sw $t0, -12728($fp)
	li $t0, 4
	lw $t1, -12728($fp)
	mul $t0, $t0, $t1
	sw $t0, -12732($fp)
	lw $t0, -12732($fp)
	lw $t1, -12724($fp)
	add $t0, $t0, $t1
	sw $t0, -12736($fp)
	lw $t0, -12736($fp)
	lw $t1, 0($t0)
	sw $t1, -12740($fp)
	lw $t0, -12740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -12744($fp)
	li $t0, 6
	sw $t0, -12748($fp)
	li $t0, 4
	lw $t1, -12748($fp)
	mul $t0, $t0, $t1
	sw $t0, -12752($fp)
	lw $t0, -12752($fp)
	lw $t1, -12744($fp)
	add $t0, $t0, $t1
	sw $t0, -12756($fp)
	lw $t0, -12756($fp)
	lw $t1, 0($t0)
	sw $t1, -12760($fp)
	lw $t0, -12760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -12764($fp)
	li $t0, 7
	sw $t0, -12768($fp)
	li $t0, 4
	lw $t1, -12768($fp)
	mul $t0, $t0, $t1
	sw $t0, -12772($fp)
	lw $t0, -12772($fp)
	lw $t1, -12764($fp)
	add $t0, $t0, $t1
	sw $t0, -12776($fp)
	lw $t0, -12776($fp)
	lw $t1, 0($t0)
	sw $t1, -12780($fp)
	lw $t0, -12780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -12784($fp)
	li $t0, 8
	sw $t0, -12788($fp)
	li $t0, 4
	lw $t1, -12788($fp)
	mul $t0, $t0, $t1
	sw $t0, -12792($fp)
	lw $t0, -12792($fp)
	lw $t1, -12784($fp)
	add $t0, $t0, $t1
	sw $t0, -12796($fp)
	lw $t0, -12796($fp)
	lw $t1, 0($t0)
	sw $t1, -12800($fp)
	lw $t0, -12800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1496($fp)
	sw $t0, -12804($fp)
	lw $t0, -12804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1508($fp)
	sw $t0, -12808($fp)
	lw $t0, -12808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1520($fp)
	sw $t0, -12812($fp)
	lw $t0, -12812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1532($fp)
	sw $t0, -12816($fp)
	lw $t0, -12816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1544($fp)
	sw $t0, -12820($fp)
	lw $t0, -12820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1556($fp)
	sw $t0, -12824($fp)
	lw $t0, -12824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1568($fp)
	sw $t0, -12828($fp)
	lw $t0, -12828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -12832($fp)
	li $t0, 0
	sw $t0, -12836($fp)
	li $t0, 4
	lw $t1, -12836($fp)
	mul $t0, $t0, $t1
	sw $t0, -12840($fp)
	lw $t0, -12840($fp)
	lw $t1, -12832($fp)
	add $t0, $t0, $t1
	sw $t0, -12844($fp)
	lw $t0, -12844($fp)
	lw $t1, 0($t0)
	sw $t1, -12848($fp)
	lw $t0, -12848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -12852($fp)
	li $t0, 1
	sw $t0, -12856($fp)
	li $t0, 4
	lw $t1, -12856($fp)
	mul $t0, $t0, $t1
	sw $t0, -12860($fp)
	lw $t0, -12860($fp)
	lw $t1, -12852($fp)
	add $t0, $t0, $t1
	sw $t0, -12864($fp)
	lw $t0, -12864($fp)
	lw $t1, 0($t0)
	sw $t1, -12868($fp)
	lw $t0, -12868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -12872($fp)
	li $t0, 2
	sw $t0, -12876($fp)
	li $t0, 4
	lw $t1, -12876($fp)
	mul $t0, $t0, $t1
	sw $t0, -12880($fp)
	lw $t0, -12880($fp)
	lw $t1, -12872($fp)
	add $t0, $t0, $t1
	sw $t0, -12884($fp)
	lw $t0, -12884($fp)
	lw $t1, 0($t0)
	sw $t1, -12888($fp)
	lw $t0, -12888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -12892($fp)
	li $t0, 3
	sw $t0, -12896($fp)
	li $t0, 4
	lw $t1, -12896($fp)
	mul $t0, $t0, $t1
	sw $t0, -12900($fp)
	lw $t0, -12900($fp)
	lw $t1, -12892($fp)
	add $t0, $t0, $t1
	sw $t0, -12904($fp)
	lw $t0, -12904($fp)
	lw $t1, 0($t0)
	sw $t1, -12908($fp)
	lw $t0, -12908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -12912($fp)
	li $t0, 4
	sw $t0, -12916($fp)
	li $t0, 4
	lw $t1, -12916($fp)
	mul $t0, $t0, $t1
	sw $t0, -12920($fp)
	lw $t0, -12920($fp)
	lw $t1, -12912($fp)
	add $t0, $t0, $t1
	sw $t0, -12924($fp)
	lw $t0, -12924($fp)
	lw $t1, 0($t0)
	sw $t1, -12928($fp)
	lw $t0, -12928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -12932($fp)
	li $t0, 5
	sw $t0, -12936($fp)
	li $t0, 4
	lw $t1, -12936($fp)
	mul $t0, $t0, $t1
	sw $t0, -12940($fp)
	lw $t0, -12940($fp)
	lw $t1, -12932($fp)
	add $t0, $t0, $t1
	sw $t0, -12944($fp)
	lw $t0, -12944($fp)
	lw $t1, 0($t0)
	sw $t1, -12948($fp)
	lw $t0, -12948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -12952($fp)
	li $t0, 6
	sw $t0, -12956($fp)
	li $t0, 4
	lw $t1, -12956($fp)
	mul $t0, $t0, $t1
	sw $t0, -12960($fp)
	lw $t0, -12960($fp)
	lw $t1, -12952($fp)
	add $t0, $t0, $t1
	sw $t0, -12964($fp)
	lw $t0, -12964($fp)
	lw $t1, 0($t0)
	sw $t1, -12968($fp)
	lw $t0, -12968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -12972($fp)
	li $t0, 7
	sw $t0, -12976($fp)
	li $t0, 4
	lw $t1, -12976($fp)
	mul $t0, $t0, $t1
	sw $t0, -12980($fp)
	lw $t0, -12980($fp)
	lw $t1, -12972($fp)
	add $t0, $t0, $t1
	sw $t0, -12984($fp)
	lw $t0, -12984($fp)
	lw $t1, 0($t0)
	sw $t1, -12988($fp)
	lw $t0, -12988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -12992($fp)
	li $t0, 8
	sw $t0, -12996($fp)
	li $t0, 4
	lw $t1, -12996($fp)
	mul $t0, $t0, $t1
	sw $t0, -13000($fp)
	lw $t0, -13000($fp)
	lw $t1, -12992($fp)
	add $t0, $t0, $t1
	sw $t0, -13004($fp)
	lw $t0, -13004($fp)
	lw $t1, 0($t0)
	sw $t1, -13008($fp)
	lw $t0, -13008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1796($fp)
	sw $t0, -13012($fp)
	lw $t0, -13012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1808($fp)
	sw $t0, -13016($fp)
	lw $t0, -13016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1820($fp)
	sw $t0, -13020($fp)
	lw $t0, -13020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1832($fp)
	sw $t0, -13024($fp)
	lw $t0, -13024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -13028($fp)
	li $t0, 0
	sw $t0, -13032($fp)
	li $t0, 4
	lw $t1, -13032($fp)
	mul $t0, $t0, $t1
	sw $t0, -13036($fp)
	lw $t0, -13036($fp)
	lw $t1, -13028($fp)
	add $t0, $t0, $t1
	sw $t0, -13040($fp)
	lw $t0, -13040($fp)
	lw $t1, 0($t0)
	sw $t1, -13044($fp)
	lw $t0, -13044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -13048($fp)
	li $t0, 1
	sw $t0, -13052($fp)
	li $t0, 4
	lw $t1, -13052($fp)
	mul $t0, $t0, $t1
	sw $t0, -13056($fp)
	lw $t0, -13056($fp)
	lw $t1, -13048($fp)
	add $t0, $t0, $t1
	sw $t0, -13060($fp)
	lw $t0, -13060($fp)
	lw $t1, 0($t0)
	sw $t1, -13064($fp)
	lw $t0, -13064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -13068($fp)
	li $t0, 2
	sw $t0, -13072($fp)
	li $t0, 4
	lw $t1, -13072($fp)
	mul $t0, $t0, $t1
	sw $t0, -13076($fp)
	lw $t0, -13076($fp)
	lw $t1, -13068($fp)
	add $t0, $t0, $t1
	sw $t0, -13080($fp)
	lw $t0, -13080($fp)
	lw $t1, 0($t0)
	sw $t1, -13084($fp)
	lw $t0, -13084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1916($fp)
	sw $t0, -13088($fp)
	lw $t0, -13088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1928($fp)
	sw $t0, -13092($fp)
	lw $t0, -13092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1940($fp)
	sw $t0, -13096($fp)
	lw $t0, -13096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1952($fp)
	sw $t0, -13100($fp)
	lw $t0, -13100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1964($fp)
	sw $t0, -13104($fp)
	lw $t0, -13104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1976($fp)
	sw $t0, -13108($fp)
	lw $t0, -13108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1988($fp)
	sw $t0, -13112($fp)
	lw $t0, -13112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2000($fp)
	sw $t0, -13116($fp)
	lw $t0, -13116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -13120($fp)
	li $t0, 0
	sw $t0, -13124($fp)
	li $t0, 4
	lw $t1, -13124($fp)
	mul $t0, $t0, $t1
	sw $t0, -13128($fp)
	lw $t0, -13128($fp)
	lw $t1, -13120($fp)
	add $t0, $t0, $t1
	sw $t0, -13132($fp)
	lw $t0, -13132($fp)
	lw $t1, 0($t0)
	sw $t1, -13136($fp)
	lw $t0, -13136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -13140($fp)
	li $t0, 1
	sw $t0, -13144($fp)
	li $t0, 4
	lw $t1, -13144($fp)
	mul $t0, $t0, $t1
	sw $t0, -13148($fp)
	lw $t0, -13148($fp)
	lw $t1, -13140($fp)
	add $t0, $t0, $t1
	sw $t0, -13152($fp)
	lw $t0, -13152($fp)
	lw $t1, 0($t0)
	sw $t1, -13156($fp)
	lw $t0, -13156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -13160($fp)
	li $t0, 2
	sw $t0, -13164($fp)
	li $t0, 4
	lw $t1, -13164($fp)
	mul $t0, $t0, $t1
	sw $t0, -13168($fp)
	lw $t0, -13168($fp)
	lw $t1, -13160($fp)
	add $t0, $t0, $t1
	sw $t0, -13172($fp)
	lw $t0, -13172($fp)
	lw $t1, 0($t0)
	sw $t1, -13176($fp)
	lw $t0, -13176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -13180($fp)
	li $t0, 3
	sw $t0, -13184($fp)
	li $t0, 4
	lw $t1, -13184($fp)
	mul $t0, $t0, $t1
	sw $t0, -13188($fp)
	lw $t0, -13188($fp)
	lw $t1, -13180($fp)
	add $t0, $t0, $t1
	sw $t0, -13192($fp)
	lw $t0, -13192($fp)
	lw $t1, 0($t0)
	sw $t1, -13196($fp)
	lw $t0, -13196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -13200($fp)
	li $t0, 4
	sw $t0, -13204($fp)
	li $t0, 4
	lw $t1, -13204($fp)
	mul $t0, $t0, $t1
	sw $t0, -13208($fp)
	lw $t0, -13208($fp)
	lw $t1, -13200($fp)
	add $t0, $t0, $t1
	sw $t0, -13212($fp)
	lw $t0, -13212($fp)
	lw $t1, 0($t0)
	sw $t1, -13216($fp)
	lw $t0, -13216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -13220($fp)
	li $t0, 5
	sw $t0, -13224($fp)
	li $t0, 4
	lw $t1, -13224($fp)
	mul $t0, $t0, $t1
	sw $t0, -13228($fp)
	lw $t0, -13228($fp)
	lw $t1, -13220($fp)
	add $t0, $t0, $t1
	sw $t0, -13232($fp)
	lw $t0, -13232($fp)
	lw $t1, 0($t0)
	sw $t1, -13236($fp)
	lw $t0, -13236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -13240($fp)
	li $t0, 6
	sw $t0, -13244($fp)
	li $t0, 4
	lw $t1, -13244($fp)
	mul $t0, $t0, $t1
	sw $t0, -13248($fp)
	lw $t0, -13248($fp)
	lw $t1, -13240($fp)
	add $t0, $t0, $t1
	sw $t0, -13252($fp)
	lw $t0, -13252($fp)
	lw $t1, 0($t0)
	sw $t1, -13256($fp)
	lw $t0, -13256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -13260($fp)
	li $t0, 7
	sw $t0, -13264($fp)
	li $t0, 4
	lw $t1, -13264($fp)
	mul $t0, $t0, $t1
	sw $t0, -13268($fp)
	lw $t0, -13268($fp)
	lw $t1, -13260($fp)
	add $t0, $t0, $t1
	sw $t0, -13272($fp)
	lw $t0, -13272($fp)
	lw $t1, 0($t0)
	sw $t1, -13276($fp)
	lw $t0, -13276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -13280($fp)
	li $t0, 8
	sw $t0, -13284($fp)
	li $t0, 4
	lw $t1, -13284($fp)
	mul $t0, $t0, $t1
	sw $t0, -13288($fp)
	lw $t0, -13288($fp)
	lw $t1, -13280($fp)
	add $t0, $t0, $t1
	sw $t0, -13292($fp)
	lw $t0, -13292($fp)
	lw $t1, 0($t0)
	sw $t1, -13296($fp)
	lw $t0, -13296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2228($fp)
	sw $t0, -13300($fp)
	lw $t0, -13300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -13304($fp)
	li $t0, 0
	sw $t0, -13308($fp)
	li $t0, 4
	lw $t1, -13308($fp)
	mul $t0, $t0, $t1
	sw $t0, -13312($fp)
	lw $t0, -13312($fp)
	lw $t1, -13304($fp)
	add $t0, $t0, $t1
	sw $t0, -13316($fp)
	lw $t0, -13316($fp)
	lw $t1, 0($t0)
	sw $t1, -13320($fp)
	lw $t0, -13320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -13324($fp)
	li $t0, 1
	sw $t0, -13328($fp)
	li $t0, 4
	lw $t1, -13328($fp)
	mul $t0, $t0, $t1
	sw $t0, -13332($fp)
	lw $t0, -13332($fp)
	lw $t1, -13324($fp)
	add $t0, $t0, $t1
	sw $t0, -13336($fp)
	lw $t0, -13336($fp)
	lw $t1, 0($t0)
	sw $t1, -13340($fp)
	lw $t0, -13340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -13344($fp)
	li $t0, 2
	sw $t0, -13348($fp)
	li $t0, 4
	lw $t1, -13348($fp)
	mul $t0, $t0, $t1
	sw $t0, -13352($fp)
	lw $t0, -13352($fp)
	lw $t1, -13344($fp)
	add $t0, $t0, $t1
	sw $t0, -13356($fp)
	lw $t0, -13356($fp)
	lw $t1, 0($t0)
	sw $t1, -13360($fp)
	lw $t0, -13360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -13364($fp)
	li $t0, 3
	sw $t0, -13368($fp)
	li $t0, 4
	lw $t1, -13368($fp)
	mul $t0, $t0, $t1
	sw $t0, -13372($fp)
	lw $t0, -13372($fp)
	lw $t1, -13364($fp)
	add $t0, $t0, $t1
	sw $t0, -13376($fp)
	lw $t0, -13376($fp)
	lw $t1, 0($t0)
	sw $t1, -13380($fp)
	lw $t0, -13380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -13384($fp)
	li $t0, 4
	sw $t0, -13388($fp)
	li $t0, 4
	lw $t1, -13388($fp)
	mul $t0, $t0, $t1
	sw $t0, -13392($fp)
	lw $t0, -13392($fp)
	lw $t1, -13384($fp)
	add $t0, $t0, $t1
	sw $t0, -13396($fp)
	lw $t0, -13396($fp)
	lw $t1, 0($t0)
	sw $t1, -13400($fp)
	lw $t0, -13400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -13404($fp)
	li $t0, 5
	sw $t0, -13408($fp)
	li $t0, 4
	lw $t1, -13408($fp)
	mul $t0, $t0, $t1
	sw $t0, -13412($fp)
	lw $t0, -13412($fp)
	lw $t1, -13404($fp)
	add $t0, $t0, $t1
	sw $t0, -13416($fp)
	lw $t0, -13416($fp)
	lw $t1, 0($t0)
	sw $t1, -13420($fp)
	lw $t0, -13420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -13424($fp)
	li $t0, 6
	sw $t0, -13428($fp)
	li $t0, 4
	lw $t1, -13428($fp)
	mul $t0, $t0, $t1
	sw $t0, -13432($fp)
	lw $t0, -13432($fp)
	lw $t1, -13424($fp)
	add $t0, $t0, $t1
	sw $t0, -13436($fp)
	lw $t0, -13436($fp)
	lw $t1, 0($t0)
	sw $t1, -13440($fp)
	lw $t0, -13440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2408($fp)
	sw $t0, -13444($fp)
	lw $t0, -13444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2420($fp)
	sw $t0, -13448($fp)
	lw $t0, -13448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2432($fp)
	sw $t0, -13452($fp)
	lw $t0, -13452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2444($fp)
	sw $t0, -13456($fp)
	lw $t0, -13456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2456($fp)
	sw $t0, -13460($fp)
	lw $t0, -13460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2468($fp)
	sw $t0, -13464($fp)
	lw $t0, -13464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2480($fp)
	sw $t0, -13468($fp)
	lw $t0, -13468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2492($fp)
	sw $t0, -13472($fp)
	lw $t0, -13472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2504($fp)
	sw $t0, -13476($fp)
	lw $t0, -13476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2516($fp)
	sw $t0, -13480($fp)
	lw $t0, -13480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2528($fp)
	sw $t0, -13484($fp)
	lw $t0, -13484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2540($fp)
	sw $t0, -13488($fp)
	lw $t0, -13488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -256
	sw $t0, -13492($fp)
	li $t0, 0
	sw $t0, -13496($fp)
	li $t0, 4
	lw $t1, -13496($fp)
	mul $t0, $t0, $t1
	sw $t0, -13500($fp)
	lw $t0, -13500($fp)
	lw $t1, -13492($fp)
	add $t0, $t0, $t1
	sw $t0, -13504($fp)
	lw $t0, -13504($fp)
	lw $t1, 0($t0)
	sw $t1, -13508($fp)
	lw $t0, -13508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2576($fp)
	sw $t0, -13512($fp)
	lw $t0, -13512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2588($fp)
	sw $t0, -13516($fp)
	lw $t0, -13516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2600($fp)
	sw $t0, -13520($fp)
	lw $t0, -13520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2612($fp)
	sw $t0, -13524($fp)
	lw $t0, -13524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -264
	sw $t0, -13528($fp)
	li $t0, 0
	sw $t0, -13532($fp)
	li $t0, 4
	lw $t1, -13532($fp)
	mul $t0, $t0, $t1
	sw $t0, -13536($fp)
	lw $t0, -13536($fp)
	lw $t1, -13528($fp)
	add $t0, $t0, $t1
	sw $t0, -13540($fp)
	lw $t0, -13540($fp)
	lw $t1, 0($t0)
	sw $t1, -13544($fp)
	lw $t0, -13544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -264
	sw $t0, -13548($fp)
	li $t0, 1
	sw $t0, -13552($fp)
	li $t0, 4
	lw $t1, -13552($fp)
	mul $t0, $t0, $t1
	sw $t0, -13556($fp)
	lw $t0, -13556($fp)
	lw $t1, -13548($fp)
	add $t0, $t0, $t1
	sw $t0, -13560($fp)
	lw $t0, -13560($fp)
	lw $t1, 0($t0)
	sw $t1, -13564($fp)
	lw $t0, -13564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2672($fp)
	sw $t0, -13568($fp)
	lw $t0, -13568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2684($fp)
	sw $t0, -13572($fp)
	lw $t0, -13572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2696($fp)
	sw $t0, -13576($fp)
	lw $t0, -13576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2708($fp)
	sw $t0, -13580($fp)
	lw $t0, -13580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2720($fp)
	sw $t0, -13584($fp)
	lw $t0, -13584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2732($fp)
	sw $t0, -13588($fp)
	lw $t0, -13588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2744($fp)
	sw $t0, -13592($fp)
	lw $t0, -13592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -284
	sw $t0, -13596($fp)
	li $t0, 0
	sw $t0, -13600($fp)
	li $t0, 4
	lw $t1, -13600($fp)
	mul $t0, $t0, $t1
	sw $t0, -13604($fp)
	lw $t0, -13604($fp)
	lw $t1, -13596($fp)
	add $t0, $t0, $t1
	sw $t0, -13608($fp)
	lw $t0, -13608($fp)
	lw $t1, 0($t0)
	sw $t1, -13612($fp)
	lw $t0, -13612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -284
	sw $t0, -13616($fp)
	li $t0, 1
	sw $t0, -13620($fp)
	li $t0, 4
	lw $t1, -13620($fp)
	mul $t0, $t0, $t1
	sw $t0, -13624($fp)
	lw $t0, -13624($fp)
	lw $t1, -13616($fp)
	add $t0, $t0, $t1
	sw $t0, -13628($fp)
	lw $t0, -13628($fp)
	lw $t1, 0($t0)
	sw $t1, -13632($fp)
	lw $t0, -13632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -284
	sw $t0, -13636($fp)
	li $t0, 2
	sw $t0, -13640($fp)
	li $t0, 4
	lw $t1, -13640($fp)
	mul $t0, $t0, $t1
	sw $t0, -13644($fp)
	lw $t0, -13644($fp)
	lw $t1, -13636($fp)
	add $t0, $t0, $t1
	sw $t0, -13648($fp)
	lw $t0, -13648($fp)
	lw $t1, 0($t0)
	sw $t1, -13652($fp)
	lw $t0, -13652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -284
	sw $t0, -13656($fp)
	li $t0, 3
	sw $t0, -13660($fp)
	li $t0, 4
	lw $t1, -13660($fp)
	mul $t0, $t0, $t1
	sw $t0, -13664($fp)
	lw $t0, -13664($fp)
	lw $t1, -13656($fp)
	add $t0, $t0, $t1
	sw $t0, -13668($fp)
	lw $t0, -13668($fp)
	lw $t1, 0($t0)
	sw $t1, -13672($fp)
	lw $t0, -13672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -284
	sw $t0, -13676($fp)
	li $t0, 4
	sw $t0, -13680($fp)
	li $t0, 4
	lw $t1, -13680($fp)
	mul $t0, $t0, $t1
	sw $t0, -13684($fp)
	lw $t0, -13684($fp)
	lw $t1, -13676($fp)
	add $t0, $t0, $t1
	sw $t0, -13688($fp)
	lw $t0, -13688($fp)
	lw $t1, 0($t0)
	sw $t1, -13692($fp)
	lw $t0, -13692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2876($fp)
	sw $t0, -13696($fp)
	lw $t0, -13696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -13700($fp)
	li $t0, 0
	sw $t0, -13704($fp)
	li $t0, 4
	lw $t1, -13704($fp)
	mul $t0, $t0, $t1
	sw $t0, -13708($fp)
	lw $t0, -13708($fp)
	lw $t1, -13700($fp)
	add $t0, $t0, $t1
	sw $t0, -13712($fp)
	lw $t0, -13712($fp)
	lw $t1, 0($t0)
	sw $t1, -13716($fp)
	lw $t0, -13716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -13720($fp)
	li $t0, 1
	sw $t0, -13724($fp)
	li $t0, 4
	lw $t1, -13724($fp)
	mul $t0, $t0, $t1
	sw $t0, -13728($fp)
	lw $t0, -13728($fp)
	lw $t1, -13720($fp)
	add $t0, $t0, $t1
	sw $t0, -13732($fp)
	lw $t0, -13732($fp)
	lw $t1, 0($t0)
	sw $t1, -13736($fp)
	lw $t0, -13736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -13740($fp)
	li $t0, 2
	sw $t0, -13744($fp)
	li $t0, 4
	lw $t1, -13744($fp)
	mul $t0, $t0, $t1
	sw $t0, -13748($fp)
	lw $t0, -13748($fp)
	lw $t1, -13740($fp)
	add $t0, $t0, $t1
	sw $t0, -13752($fp)
	lw $t0, -13752($fp)
	lw $t1, 0($t0)
	sw $t1, -13756($fp)
	lw $t0, -13756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -13760($fp)
	li $t0, 3
	sw $t0, -13764($fp)
	li $t0, 4
	lw $t1, -13764($fp)
	mul $t0, $t0, $t1
	sw $t0, -13768($fp)
	lw $t0, -13768($fp)
	lw $t1, -13760($fp)
	add $t0, $t0, $t1
	sw $t0, -13772($fp)
	lw $t0, -13772($fp)
	lw $t1, 0($t0)
	sw $t1, -13776($fp)
	lw $t0, -13776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -13780($fp)
	li $t0, 4
	sw $t0, -13784($fp)
	li $t0, 4
	lw $t1, -13784($fp)
	mul $t0, $t0, $t1
	sw $t0, -13788($fp)
	lw $t0, -13788($fp)
	lw $t1, -13780($fp)
	add $t0, $t0, $t1
	sw $t0, -13792($fp)
	lw $t0, -13792($fp)
	lw $t1, 0($t0)
	sw $t1, -13796($fp)
	lw $t0, -13796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -13800($fp)
	li $t0, 5
	sw $t0, -13804($fp)
	li $t0, 4
	lw $t1, -13804($fp)
	mul $t0, $t0, $t1
	sw $t0, -13808($fp)
	lw $t0, -13808($fp)
	lw $t1, -13800($fp)
	add $t0, $t0, $t1
	sw $t0, -13812($fp)
	lw $t0, -13812($fp)
	lw $t1, 0($t0)
	sw $t1, -13816($fp)
	lw $t0, -13816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -13820($fp)
	li $t0, 6
	sw $t0, -13824($fp)
	li $t0, 4
	lw $t1, -13824($fp)
	mul $t0, $t0, $t1
	sw $t0, -13828($fp)
	lw $t0, -13828($fp)
	lw $t1, -13820($fp)
	add $t0, $t0, $t1
	sw $t0, -13832($fp)
	lw $t0, -13832($fp)
	lw $t1, 0($t0)
	sw $t1, -13836($fp)
	lw $t0, -13836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -13840($fp)
	li $t0, 7
	sw $t0, -13844($fp)
	li $t0, 4
	lw $t1, -13844($fp)
	mul $t0, $t0, $t1
	sw $t0, -13848($fp)
	lw $t0, -13848($fp)
	lw $t1, -13840($fp)
	add $t0, $t0, $t1
	sw $t0, -13852($fp)
	lw $t0, -13852($fp)
	lw $t1, 0($t0)
	sw $t1, -13856($fp)
	lw $t0, -13856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -13860($fp)
	li $t0, 8
	sw $t0, -13864($fp)
	li $t0, 4
	lw $t1, -13864($fp)
	mul $t0, $t0, $t1
	sw $t0, -13868($fp)
	lw $t0, -13868($fp)
	lw $t1, -13860($fp)
	add $t0, $t0, $t1
	sw $t0, -13872($fp)
	lw $t0, -13872($fp)
	lw $t1, 0($t0)
	sw $t1, -13876($fp)
	lw $t0, -13876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -13880($fp)
	li $t0, 9
	sw $t0, -13884($fp)
	li $t0, 4
	lw $t1, -13884($fp)
	mul $t0, $t0, $t1
	sw $t0, -13888($fp)
	lw $t0, -13888($fp)
	lw $t1, -13880($fp)
	add $t0, $t0, $t1
	sw $t0, -13892($fp)
	lw $t0, -13892($fp)
	lw $t1, 0($t0)
	sw $t1, -13896($fp)
	lw $t0, -13896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3128($fp)
	sw $t0, -13900($fp)
	lw $t0, -13900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3140($fp)
	sw $t0, -13904($fp)
	lw $t0, -13904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -13908($fp)
	li $t0, 8306
	sw $t0, -13912($fp)
	lw $t0, -2480($fp)
	sw $t0, -13916($fp)
	lw $t0, -13916($fp)
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	sw $t0, -13920($fp)
	lw $t0, -3140($fp)
	sw $t0, -13924($fp)
	lw $t0, -2516($fp)
	sw $t0, -13928($fp)
	lw $t0, -13924($fp)
	lw $t1, -13928($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13932($fp)
	li $t0, 0
	lw $t1, -13932($fp)
	sub $t0, $t0, $t1
	sw $t0, -13936($fp)
	li $t0, 0
	sw $t0, -13940($fp)
	lw $t0, -2492($fp)
	sw $t0, -13944($fp)
	li $t0, 43
	sw $t0, -13948($fp)
	lw $t1, -13944($fp)
	lw $t2, -13948($fp)
	bge $t1, $t2, label559
	j label561
label561:
	lw $t0, -2600($fp)
	sw $t0, -13952($fp)
	lw $t1, -13952($fp)
	li $t2, 0
	bne $t1, $t2, label559
	j label560
label559:
	li $t0, 1
	sw $t0, -13940($fp)
label560:
	li $t0, 27563
	sw $t0, -13956($fp)
	lw $t0, -13956($fp)
	sw $t0, -3128($fp)
	lw $t0, -3128($fp)
	sw $t0, -13960($fp)
	addi $sp, $sp, -4
	lw $t0, -13920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13960($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13964($fp)
	addi $sp, $sp, 20
	lw $t1, -13912($fp)
	lw $t2, -13964($fp)
	bgt $t1, $t2, label557
	j label558
label557:
	li $t0, 1
	sw $t0, -13908($fp)
label558:
	lw $ra, -4($fp)
	lw $v0, -13908($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -9204
	li $t0, 6882
	sw $t0, -84($fp)
	addi $t0, $fp, -12
	sw $t0, -88($fp)
	li $t0, 0
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -96($fp)
	lw $t0, -88($fp)
	lw $t1, -96($fp)
	add $t0, $t0, $t1
	sw $t0, -100($fp)
	lw $t0, -84($fp)
	lw $t1, -100($fp)
	sw $t0, 0($t1)
	lw $t0, -100($fp)
	lw $t1, 0($t0)
	sw $t1, -104($fp)
	li $t0, 1423
	sw $t0, -108($fp)
	addi $t0, $fp, -12
	sw $t0, -112($fp)
	li $t0, 1
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -120($fp)
	lw $t0, -112($fp)
	lw $t1, -120($fp)
	add $t0, $t0, $t1
	sw $t0, -124($fp)
	lw $t0, -108($fp)
	lw $t1, -124($fp)
	sw $t0, 0($t1)
	lw $t0, -124($fp)
	lw $t1, 0($t0)
	sw $t1, -128($fp)
	li $t0, 64451
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -140($fp)
	li $t0, 24827
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	li $t0, 2309
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	li $t0, 15332
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	li $t0, 63446
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	li $t0, 996
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	li $t0, 58522
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	li $t0, 57654
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	li $t0, 50070
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	li $t0, 53729
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	li $t0, 53343
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	li $t0, 5092
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	li $t0, 57490
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	li $t0, 22140
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	li $t0, 6641
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	li $t0, 29514
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	li $t0, 41208
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	li $t0, 58215
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -344($fp)
	li $t0, 2862
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	li $t0, 10440
	sw $t0, -360($fp)
	addi $t0, $fp, -24
	sw $t0, -364($fp)
	li $t0, 0
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -372($fp)
	lw $t0, -364($fp)
	lw $t1, -372($fp)
	add $t0, $t0, $t1
	sw $t0, -376($fp)
	lw $t0, -360($fp)
	lw $t1, -376($fp)
	sw $t0, 0($t1)
	lw $t0, -376($fp)
	lw $t1, 0($t0)
	sw $t1, -380($fp)
	li $t0, 64065
	sw $t0, -384($fp)
	addi $t0, $fp, -24
	sw $t0, -388($fp)
	li $t0, 1
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -396($fp)
	lw $t0, -388($fp)
	lw $t1, -396($fp)
	add $t0, $t0, $t1
	sw $t0, -400($fp)
	lw $t0, -384($fp)
	lw $t1, -400($fp)
	sw $t0, 0($t1)
	lw $t0, -400($fp)
	lw $t1, 0($t0)
	sw $t1, -404($fp)
	li $t0, 41904
	sw $t0, -408($fp)
	addi $t0, $fp, -24
	sw $t0, -412($fp)
	li $t0, 2
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -420($fp)
	lw $t0, -412($fp)
	lw $t1, -420($fp)
	add $t0, $t0, $t1
	sw $t0, -424($fp)
	lw $t0, -408($fp)
	lw $t1, -424($fp)
	sw $t0, 0($t1)
	lw $t0, -424($fp)
	lw $t1, 0($t0)
	sw $t1, -428($fp)
	li $t0, 65341
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	li $t0, 41939
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	li $t0, 60433
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	li $t0, 14818
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	li $t0, 50245
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	li $t0, 22461
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	li $t0, 14861
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	li $t0, 57127
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	li $t0, 23884
	sw $t0, -528($fp)
	addi $t0, $fp, -32
	sw $t0, -532($fp)
	li $t0, 0
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -540($fp)
	lw $t0, -532($fp)
	lw $t1, -540($fp)
	add $t0, $t0, $t1
	sw $t0, -544($fp)
	lw $t0, -528($fp)
	lw $t1, -544($fp)
	sw $t0, 0($t1)
	lw $t0, -544($fp)
	lw $t1, 0($t0)
	sw $t1, -548($fp)
	li $t0, 13777
	sw $t0, -552($fp)
	addi $t0, $fp, -32
	sw $t0, -556($fp)
	li $t0, 1
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -564($fp)
	lw $t0, -556($fp)
	lw $t1, -564($fp)
	add $t0, $t0, $t1
	sw $t0, -568($fp)
	lw $t0, -552($fp)
	lw $t1, -568($fp)
	sw $t0, 0($t1)
	lw $t0, -568($fp)
	lw $t1, 0($t0)
	sw $t1, -572($fp)
	li $t0, 16418
	sw $t0, -576($fp)
	addi $t0, $fp, -68
	sw $t0, -580($fp)
	li $t0, 0
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -588($fp)
	lw $t0, -580($fp)
	lw $t1, -588($fp)
	add $t0, $t0, $t1
	sw $t0, -592($fp)
	lw $t0, -576($fp)
	lw $t1, -592($fp)
	sw $t0, 0($t1)
	lw $t0, -592($fp)
	lw $t1, 0($t0)
	sw $t1, -596($fp)
	li $t0, 26193
	sw $t0, -600($fp)
	addi $t0, $fp, -68
	sw $t0, -604($fp)
	li $t0, 1
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -612($fp)
	lw $t0, -604($fp)
	lw $t1, -612($fp)
	add $t0, $t0, $t1
	sw $t0, -616($fp)
	lw $t0, -600($fp)
	lw $t1, -616($fp)
	sw $t0, 0($t1)
	lw $t0, -616($fp)
	lw $t1, 0($t0)
	sw $t1, -620($fp)
	li $t0, 29109
	sw $t0, -624($fp)
	addi $t0, $fp, -68
	sw $t0, -628($fp)
	li $t0, 2
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -636($fp)
	lw $t0, -628($fp)
	lw $t1, -636($fp)
	add $t0, $t0, $t1
	sw $t0, -640($fp)
	lw $t0, -624($fp)
	lw $t1, -640($fp)
	sw $t0, 0($t1)
	lw $t0, -640($fp)
	lw $t1, 0($t0)
	sw $t1, -644($fp)
	li $t0, 14328
	sw $t0, -648($fp)
	addi $t0, $fp, -68
	sw $t0, -652($fp)
	li $t0, 3
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -660($fp)
	lw $t0, -652($fp)
	lw $t1, -660($fp)
	add $t0, $t0, $t1
	sw $t0, -664($fp)
	lw $t0, -648($fp)
	lw $t1, -664($fp)
	sw $t0, 0($t1)
	lw $t0, -664($fp)
	lw $t1, 0($t0)
	sw $t1, -668($fp)
	li $t0, 27190
	sw $t0, -672($fp)
	addi $t0, $fp, -68
	sw $t0, -676($fp)
	li $t0, 4
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -684($fp)
	lw $t0, -676($fp)
	lw $t1, -684($fp)
	add $t0, $t0, $t1
	sw $t0, -688($fp)
	lw $t0, -672($fp)
	lw $t1, -688($fp)
	sw $t0, 0($t1)
	lw $t0, -688($fp)
	lw $t1, 0($t0)
	sw $t1, -692($fp)
	li $t0, 22095
	sw $t0, -696($fp)
	addi $t0, $fp, -68
	sw $t0, -700($fp)
	li $t0, 5
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -708($fp)
	lw $t0, -700($fp)
	lw $t1, -708($fp)
	add $t0, $t0, $t1
	sw $t0, -712($fp)
	lw $t0, -696($fp)
	lw $t1, -712($fp)
	sw $t0, 0($t1)
	lw $t0, -712($fp)
	lw $t1, 0($t0)
	sw $t1, -716($fp)
	li $t0, 6446
	sw $t0, -720($fp)
	addi $t0, $fp, -68
	sw $t0, -724($fp)
	li $t0, 6
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -732($fp)
	lw $t0, -724($fp)
	lw $t1, -732($fp)
	add $t0, $t0, $t1
	sw $t0, -736($fp)
	lw $t0, -720($fp)
	lw $t1, -736($fp)
	sw $t0, 0($t1)
	lw $t0, -736($fp)
	lw $t1, 0($t0)
	sw $t1, -740($fp)
	li $t0, 11724
	sw $t0, -744($fp)
	addi $t0, $fp, -68
	sw $t0, -748($fp)
	li $t0, 7
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -756($fp)
	lw $t0, -748($fp)
	lw $t1, -756($fp)
	add $t0, $t0, $t1
	sw $t0, -760($fp)
	lw $t0, -744($fp)
	lw $t1, -760($fp)
	sw $t0, 0($t1)
	lw $t0, -760($fp)
	lw $t1, 0($t0)
	sw $t1, -764($fp)
	li $t0, 10289
	sw $t0, -768($fp)
	addi $t0, $fp, -68
	sw $t0, -772($fp)
	li $t0, 8
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -780($fp)
	lw $t0, -772($fp)
	lw $t1, -780($fp)
	add $t0, $t0, $t1
	sw $t0, -784($fp)
	lw $t0, -768($fp)
	lw $t1, -784($fp)
	sw $t0, 0($t1)
	lw $t0, -784($fp)
	lw $t1, 0($t0)
	sw $t1, -788($fp)
	li $t0, 59789
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	sw $t0, -800($fp)
	li $t0, 16817
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, -812($fp)
	li $t0, 2243
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -824($fp)
	li $t0, 16393
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -836($fp)
	li $t0, 23458
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -848($fp)
	li $t0, 31757
	sw $t0, -852($fp)
	addi $t0, $fp, -80
	sw $t0, -856($fp)
	li $t0, 0
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -864($fp)
	lw $t0, -856($fp)
	lw $t1, -864($fp)
	add $t0, $t0, $t1
	sw $t0, -868($fp)
	lw $t0, -852($fp)
	lw $t1, -868($fp)
	sw $t0, 0($t1)
	lw $t0, -868($fp)
	lw $t1, 0($t0)
	sw $t1, -872($fp)
	li $t0, 57601
	sw $t0, -876($fp)
	addi $t0, $fp, -80
	sw $t0, -880($fp)
	li $t0, 1
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -888($fp)
	lw $t0, -880($fp)
	lw $t1, -888($fp)
	add $t0, $t0, $t1
	sw $t0, -892($fp)
	lw $t0, -876($fp)
	lw $t1, -892($fp)
	sw $t0, 0($t1)
	lw $t0, -892($fp)
	lw $t1, 0($t0)
	sw $t1, -896($fp)
	li $t0, 16137
	sw $t0, -900($fp)
	addi $t0, $fp, -80
	sw $t0, -904($fp)
	li $t0, 2
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -912($fp)
	lw $t0, -904($fp)
	lw $t1, -912($fp)
	add $t0, $t0, $t1
	sw $t0, -916($fp)
	lw $t0, -900($fp)
	lw $t1, -916($fp)
	sw $t0, 0($t1)
	lw $t0, -916($fp)
	lw $t1, 0($t0)
	sw $t1, -920($fp)
	li $t0, 34619
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -932($fp)
	li $t0, 2505
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	sw $t0, -944($fp)
	li $t0, 14667
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	sw $t0, -956($fp)
	li $t0, 10987
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	sw $t0, -968($fp)
	li $t0, 2311
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	sw $t0, -980($fp)
	li $t0, 56606
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	sw $t0, -992($fp)
	li $t0, 5885
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	sw $t0, -1004($fp)
	li $t0, 17129
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	sw $t0, -1016($fp)
	li $t0, 41315
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -1028($fp)
	li $t0, 28346
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	sw $t0, -1040($fp)
	li $t0, 31990
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -1052($fp)
	li $t0, 32906
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	sw $t0, -1064($fp)
	li $t0, 52230
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	sw $t0, -1076($fp)
	li $t0, 45767
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, -1088($fp)
	li $t0, 49324
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	sw $t0, -1100($fp)
	li $t0, 12888
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	sw $t0, -1112($fp)
	li $t0, 9340
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	sw $t0, -1124($fp)
	li $t0, 63652
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	sw $t0, -1136($fp)
	li $t0, 40078
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	sw $t0, -1148($fp)
	li $t0, 31436
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	sw $t0, -1160($fp)
	li $t0, 4562
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	sw $t0, -1172($fp)
	li $t0, 51802
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	sw $t0, -1184($fp)
	li $t0, 41725
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	sw $t0, -1196($fp)
	addi $t0, $fp, -12
	sw $t0, -1200($fp)
	li $t0, 0
	sw $t0, -1204($fp)
	li $t0, 4
	lw $t1, -1204($fp)
	mul $t0, $t0, $t1
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	lw $t1, -1200($fp)
	add $t0, $t0, $t1
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	lw $t1, 0($t0)
	sw $t1, -1216($fp)
	lw $t0, -1216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -1220($fp)
	li $t0, 1
	sw $t0, -1224($fp)
	li $t0, 4
	lw $t1, -1224($fp)
	mul $t0, $t0, $t1
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	lw $t1, -1220($fp)
	add $t0, $t0, $t1
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	lw $t1, 0($t0)
	sw $t1, -1236($fp)
	lw $t0, -1236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -136($fp)
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -148($fp)
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -160($fp)
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -172($fp)
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -184($fp)
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -196($fp)
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -208($fp)
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -220($fp)
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -232($fp)
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -244($fp)
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -256($fp)
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -268($fp)
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -280($fp)
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -292($fp)
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -304($fp)
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -316($fp)
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -328($fp)
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -340($fp)
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -352($fp)
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -1316($fp)
	li $t0, 0
	sw $t0, -1320($fp)
	li $t0, 4
	lw $t1, -1320($fp)
	mul $t0, $t0, $t1
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	lw $t1, -1316($fp)
	add $t0, $t0, $t1
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	lw $t1, 0($t0)
	sw $t1, -1332($fp)
	lw $t0, -1332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -1336($fp)
	li $t0, 1
	sw $t0, -1340($fp)
	li $t0, 4
	lw $t1, -1340($fp)
	mul $t0, $t0, $t1
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	lw $t1, -1336($fp)
	add $t0, $t0, $t1
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	lw $t1, 0($t0)
	sw $t1, -1352($fp)
	lw $t0, -1352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -1356($fp)
	li $t0, 2
	sw $t0, -1360($fp)
	li $t0, 4
	lw $t1, -1360($fp)
	mul $t0, $t0, $t1
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	lw $t1, -1356($fp)
	add $t0, $t0, $t1
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	lw $t1, 0($t0)
	sw $t1, -1372($fp)
	lw $t0, -1372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -436($fp)
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -448($fp)
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -460($fp)
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -472($fp)
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -484($fp)
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -496($fp)
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -508($fp)
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -520($fp)
	sw $t0, -1404($fp)
	lw $t0, -1404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1408($fp)
	li $t0, 0
	sw $t0, -1412($fp)
	li $t0, 4
	lw $t1, -1412($fp)
	mul $t0, $t0, $t1
	sw $t0, -1416($fp)
	lw $t0, -1416($fp)
	lw $t1, -1408($fp)
	add $t0, $t0, $t1
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	lw $t1, 0($t0)
	sw $t1, -1424($fp)
	lw $t0, -1424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1428($fp)
	li $t0, 1
	sw $t0, -1432($fp)
	li $t0, 4
	lw $t1, -1432($fp)
	mul $t0, $t0, $t1
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	lw $t1, -1428($fp)
	add $t0, $t0, $t1
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	lw $t1, 0($t0)
	sw $t1, -1444($fp)
	lw $t0, -1444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1448($fp)
	li $t0, 0
	sw $t0, -1452($fp)
	li $t0, 4
	lw $t1, -1452($fp)
	mul $t0, $t0, $t1
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	lw $t1, -1448($fp)
	add $t0, $t0, $t1
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	lw $t1, 0($t0)
	sw $t1, -1464($fp)
	lw $t0, -1464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1468($fp)
	li $t0, 1
	sw $t0, -1472($fp)
	li $t0, 4
	lw $t1, -1472($fp)
	mul $t0, $t0, $t1
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	lw $t1, -1468($fp)
	add $t0, $t0, $t1
	sw $t0, -1480($fp)
	lw $t0, -1480($fp)
	lw $t1, 0($t0)
	sw $t1, -1484($fp)
	lw $t0, -1484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1488($fp)
	li $t0, 2
	sw $t0, -1492($fp)
	li $t0, 4
	lw $t1, -1492($fp)
	mul $t0, $t0, $t1
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	lw $t1, -1488($fp)
	add $t0, $t0, $t1
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	lw $t1, 0($t0)
	sw $t1, -1504($fp)
	lw $t0, -1504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1508($fp)
	li $t0, 3
	sw $t0, -1512($fp)
	li $t0, 4
	lw $t1, -1512($fp)
	mul $t0, $t0, $t1
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	lw $t1, -1508($fp)
	add $t0, $t0, $t1
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	lw $t1, 0($t0)
	sw $t1, -1524($fp)
	lw $t0, -1524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1528($fp)
	li $t0, 4
	sw $t0, -1532($fp)
	li $t0, 4
	lw $t1, -1532($fp)
	mul $t0, $t0, $t1
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	lw $t1, -1528($fp)
	add $t0, $t0, $t1
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	lw $t1, 0($t0)
	sw $t1, -1544($fp)
	lw $t0, -1544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1548($fp)
	li $t0, 5
	sw $t0, -1552($fp)
	li $t0, 4
	lw $t1, -1552($fp)
	mul $t0, $t0, $t1
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	lw $t1, -1548($fp)
	add $t0, $t0, $t1
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	lw $t1, 0($t0)
	sw $t1, -1564($fp)
	lw $t0, -1564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1568($fp)
	li $t0, 6
	sw $t0, -1572($fp)
	li $t0, 4
	lw $t1, -1572($fp)
	mul $t0, $t0, $t1
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	lw $t1, -1568($fp)
	add $t0, $t0, $t1
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	lw $t1, 0($t0)
	sw $t1, -1584($fp)
	lw $t0, -1584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1588($fp)
	li $t0, 7
	sw $t0, -1592($fp)
	li $t0, 4
	lw $t1, -1592($fp)
	mul $t0, $t0, $t1
	sw $t0, -1596($fp)
	lw $t0, -1596($fp)
	lw $t1, -1588($fp)
	add $t0, $t0, $t1
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	lw $t1, 0($t0)
	sw $t1, -1604($fp)
	lw $t0, -1604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1608($fp)
	li $t0, 8
	sw $t0, -1612($fp)
	li $t0, 4
	lw $t1, -1612($fp)
	mul $t0, $t0, $t1
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	lw $t1, -1608($fp)
	add $t0, $t0, $t1
	sw $t0, -1620($fp)
	lw $t0, -1620($fp)
	lw $t1, 0($t0)
	sw $t1, -1624($fp)
	lw $t0, -1624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -796($fp)
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -808($fp)
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -820($fp)
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -832($fp)
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -844($fp)
	sw $t0, -1644($fp)
	lw $t0, -1644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1648($fp)
	li $t0, 0
	sw $t0, -1652($fp)
	li $t0, 4
	lw $t1, -1652($fp)
	mul $t0, $t0, $t1
	sw $t0, -1656($fp)
	lw $t0, -1656($fp)
	lw $t1, -1648($fp)
	add $t0, $t0, $t1
	sw $t0, -1660($fp)
	lw $t0, -1660($fp)
	lw $t1, 0($t0)
	sw $t1, -1664($fp)
	lw $t0, -1664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1668($fp)
	li $t0, 1
	sw $t0, -1672($fp)
	li $t0, 4
	lw $t1, -1672($fp)
	mul $t0, $t0, $t1
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	lw $t1, -1668($fp)
	add $t0, $t0, $t1
	sw $t0, -1680($fp)
	lw $t0, -1680($fp)
	lw $t1, 0($t0)
	sw $t1, -1684($fp)
	lw $t0, -1684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1688($fp)
	li $t0, 2
	sw $t0, -1692($fp)
	li $t0, 4
	lw $t1, -1692($fp)
	mul $t0, $t0, $t1
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	lw $t1, -1688($fp)
	add $t0, $t0, $t1
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	lw $t1, 0($t0)
	sw $t1, -1704($fp)
	lw $t0, -1704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -928($fp)
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -940($fp)
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -952($fp)
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -964($fp)
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -976($fp)
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -988($fp)
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1000($fp)
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1012($fp)
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1024($fp)
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1036($fp)
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1048($fp)
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1060($fp)
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1072($fp)
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1084($fp)
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1096($fp)
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1108($fp)
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1120($fp)
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1132($fp)
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1144($fp)
	sw $t0, -1780($fp)
	lw $t0, -1780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1156($fp)
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1168($fp)
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1180($fp)
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1192($fp)
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 64351
	sw $t0, -1800($fp)
	lw $ra, -4($fp)
	lw $v0, -1800($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -68
	sw $t0, -1804($fp)
	li $t0, 0
	sw $t0, -1808($fp)
	li $t0, 3083
	sw $t0, -1812($fp)
	lw $t1, -1812($fp)
	li $t2, 0
	bne $t1, $t2, label566
	j label568
label568:
	lw $t0, -256($fp)
	sw $t0, -1816($fp)
	lw $t1, -1816($fp)
	li $t2, 0
	bne $t1, $t2, label566
	j label567
label566:
	li $t0, 1
	sw $t0, -1808($fp)
label567:
	li $t0, 4
	lw $t1, -1808($fp)
	mul $t0, $t0, $t1
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	lw $t1, -1804($fp)
	add $t0, $t0, $t1
	sw $t0, -1824($fp)
	lw $t0, -1824($fp)
	lw $t1, 0($t0)
	sw $t1, -1828($fp)
	li $t0, 43968
	sw $t0, -1832($fp)
	lw $t0, -1828($fp)
	lw $t1, -1832($fp)
	mul $t0, $t0, $t1
	sw $t0, -1836($fp)
	lw $t1, -1836($fp)
	li $t2, 0
	bne $t1, $t2, label562
	j label565
label565:
	li $t0, 0
	sw $t0, -1840($fp)
	lw $t0, -436($fp)
	sw $t0, -1844($fp)
	lw $t0, -520($fp)
	sw $t0, -1848($fp)
	lw $t0, -1844($fp)
	lw $t1, -1848($fp)
	add $t0, $t0, $t1
	sw $t0, -1852($fp)
	lw $t0, -316($fp)
	sw $t0, -1856($fp)
	lw $t1, -1852($fp)
	lw $t2, -1856($fp)
	beq $t1, $t2, label569
	j label570
label569:
	li $t0, 1
	sw $t0, -1840($fp)
label570:
	li $t0, 15208
	sw $t0, -1860($fp)
	li $t0, 26541
	sw $t0, -1864($fp)
	lw $t0, -1860($fp)
	lw $t1, -1864($fp)
	sub $t0, $t0, $t1
	sw $t0, -1868($fp)
	lw $t1, -1840($fp)
	lw $t2, -1868($fp)
	bne $t1, $t2, label562
	j label563
label562:
label571:
	addi $t0, $fp, -68
	sw $t0, -1872($fp)
	li $t0, 0
	sw $t0, -1876($fp)
	li $t0, 10190
	sw $t0, -1880($fp)
	lw $t1, -1880($fp)
	li $t2, 0
	bne $t1, $t2, label575
	j label574
label574:
	li $t0, 1
	sw $t0, -1876($fp)
label575:
	li $t0, 4
	lw $t1, -1876($fp)
	mul $t0, $t0, $t1
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	lw $t1, -1872($fp)
	add $t0, $t0, $t1
	sw $t0, -1888($fp)
	lw $t0, -1888($fp)
	lw $t1, 0($t0)
	sw $t1, -1892($fp)
	addi $t0, $fp, -32
	sw $t0, -1896($fp)
	li $t0, 0
	sw $t0, -1900($fp)
	lw $t0, -184($fp)
	sw $t0, -1904($fp)
	lw $t1, -1904($fp)
	li $t2, 0
	bne $t1, $t2, label578
	j label577
label578:
	li $t0, 7273
	sw $t0, -1908($fp)
	lw $t1, -1908($fp)
	li $t2, 0
	bne $t1, $t2, label576
	j label577
label576:
	li $t0, 1
	sw $t0, -1900($fp)
label577:
	li $t0, 4
	lw $t1, -1900($fp)
	mul $t0, $t0, $t1
	sw $t0, -1912($fp)
	lw $t0, -1912($fp)
	lw $t1, -1896($fp)
	add $t0, $t0, $t1
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	lw $t1, 0($t0)
	sw $t1, -1920($fp)
	lw $t0, -1892($fp)
	lw $t1, -1920($fp)
	sub $t0, $t0, $t1
	sw $t0, -1924($fp)
	lw $t1, -1924($fp)
	li $t2, 0
	bne $t1, $t2, label572
	j label573
label572:
	li $t0, 0
	sw $t0, -1928($fp)
	li $t0, 0
	sw $t0, -1932($fp)
	lw $t0, -268($fp)
	sw $t0, -1936($fp)
	lw $t1, -1936($fp)
	li $t2, 0
	bne $t1, $t2, label585
	j label584
label584:
	li $t0, 1
	sw $t0, -1932($fp)
label585:
	li $t0, 57346
	sw $t0, -1940($fp)
	lw $t1, -1932($fp)
	lw $t2, -1940($fp)
	bgt $t1, $t2, label582
	j label583
label582:
	li $t0, 1
	sw $t0, -1928($fp)
label583:
	li $t0, 0
	sw $t0, -1944($fp)
	lw $t0, -352($fp)
	sw $t0, -1948($fp)
	lw $t1, -1948($fp)
	li $t2, 0
	bne $t1, $t2, label586
	j label589
label589:
	li $t0, 9778
	sw $t0, -1952($fp)
	lw $t1, -1952($fp)
	li $t2, 0
	bne $t1, $t2, label586
	j label588
label588:
	lw $t0, -232($fp)
	sw $t0, -1956($fp)
	lw $t1, -1956($fp)
	li $t2, 0
	bne $t1, $t2, label586
	j label587
label586:
	li $t0, 1
	sw $t0, -1944($fp)
label587:
	li $t0, 0
	sw $t0, -1960($fp)
	lw $t0, -1024($fp)
	sw $t0, -1964($fp)
	li $t0, 0
	lw $t1, -1964($fp)
	sub $t0, $t0, $t1
	sw $t0, -1968($fp)
	lw $t1, -1968($fp)
	li $t2, 0
	bne $t1, $t2, label591
	j label590
label590:
	li $t0, 1
	sw $t0, -1960($fp)
label591:
	li $t0, 42679
	sw $t0, -1972($fp)
	li $t0, 44809
	sw $t0, -1976($fp)
	lw $t0, -1972($fp)
	lw $t1, -1976($fp)
	mul $t0, $t0, $t1
	sw $t0, -1980($fp)
	lw $t0, -232($fp)
	sw $t0, -1984($fp)
	lw $t0, -1980($fp)
	lw $t1, -1984($fp)
	mul $t0, $t0, $t1
	sw $t0, -1988($fp)
	addi $sp, $sp, -4
	lw $t0, -1928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1988($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1992($fp)
	addi $sp, $sp, 20
	lw $t1, -1992($fp)
	li $t2, 0
	bne $t1, $t2, label579
	j label580
label579:
	addi $t0, $fp, -24
	sw $t0, -1996($fp)
	li $t0, 0
	sw $t0, -2000($fp)
	li $t0, 55797
	sw $t0, -2004($fp)
	lw $t0, -928($fp)
	sw $t0, -2008($fp)
	lw $t1, -2004($fp)
	lw $t2, -2008($fp)
	bne $t1, $t2, label592
	j label593
label592:
	li $t0, 1
	sw $t0, -2000($fp)
label593:
	li $t0, 4
	lw $t1, -2000($fp)
	mul $t0, $t0, $t1
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	lw $t1, -1996($fp)
	add $t0, $t0, $t1
	sw $t0, -2016($fp)
	lw $t0, -2016($fp)
	lw $t1, 0($t0)
	sw $t1, -2020($fp)
	lw $t0, -2020($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -2024($fp)
	j label581
label580:
	li $t0, 0
	sw $t0, -2028($fp)
	li $t0, 0
	sw $t0, -2032($fp)
	lw $t0, -796($fp)
	sw $t0, -2036($fp)
	li $t0, 24195
	sw $t0, -2040($fp)
	lw $t0, -2036($fp)
	lw $t1, -2040($fp)
	sub $t0, $t0, $t1
	sw $t0, -2044($fp)
	lw $t0, -508($fp)
	sw $t0, -2048($fp)
	lw $t1, -2044($fp)
	lw $t2, -2048($fp)
	blt $t1, $t2, label596
	j label597
label596:
	li $t0, 1
	sw $t0, -2032($fp)
label597:
	addi $t0, $fp, -80
	sw $t0, -2052($fp)
	li $t0, 0
	sw $t0, -2056($fp)
	li $t0, 4
	lw $t1, -2056($fp)
	mul $t0, $t0, $t1
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	lw $t1, -2052($fp)
	add $t0, $t0, $t1
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	lw $t1, 0($t0)
	sw $t1, -2068($fp)
	li $t0, 12089
	sw $t0, -2072($fp)
	lw $t0, -244($fp)
	sw $t0, -2076($fp)
	lw $t0, -2072($fp)
	lw $t1, -2076($fp)
	add $t0, $t0, $t1
	sw $t0, -2080($fp)
	li $t0, 48416
	sw $t0, -2084($fp)
	lw $t0, -2080($fp)
	lw $t1, -2084($fp)
	sub $t0, $t0, $t1
	sw $t0, -2088($fp)
	addi $sp, $sp, -4
	lw $t0, -2032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2088($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2092($fp)
	addi $sp, $sp, 16
	li $t0, 57101
	sw $t0, -2096($fp)
	li $t0, 0
	lw $t1, -2096($fp)
	sub $t0, $t0, $t1
	sw $t0, -2100($fp)
	lw $t0, -1048($fp)
	sw $t0, -2104($fp)
	lw $t0, -2100($fp)
	lw $t1, -2104($fp)
	add $t0, $t0, $t1
	sw $t0, -2108($fp)
	lw $t0, -496($fp)
	sw $t0, -2112($fp)
	lw $t0, -2112($fp)
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	sw $t0, -2116($fp)
	lw $t0, -976($fp)
	sw $t0, -2120($fp)
	li $t0, 0
	sw $t0, -2124($fp)
	lw $t0, -520($fp)
	sw $t0, -2128($fp)
	lw $t1, -2128($fp)
	li $t2, 0
	bne $t1, $t2, label601
	j label599
label601:
	lw $t0, -448($fp)
	sw $t0, -2132($fp)
	lw $t1, -2132($fp)
	li $t2, 0
	bne $t1, $t2, label600
	j label599
label600:
	lw $t0, -1012($fp)
	sw $t0, -2136($fp)
	lw $t1, -2136($fp)
	li $t2, 0
	bne $t1, $t2, label598
	j label599
label598:
	li $t0, 1
	sw $t0, -2124($fp)
label599:
	li $t0, 0
	sw $t0, -2140($fp)
	lw $t0, -952($fp)
	sw $t0, -2144($fp)
	li $t0, 61209
	sw $t0, -2148($fp)
	lw $t1, -2144($fp)
	lw $t2, -2148($fp)
	beq $t1, $t2, label604
	j label603
label604:
	lw $t0, -172($fp)
	sw $t0, -2152($fp)
	lw $t1, -2152($fp)
	li $t2, 0
	bne $t1, $t2, label602
	j label603
label602:
	li $t0, 1
	sw $t0, -2140($fp)
label603:
	li $t0, 0
	sw $t0, -2156($fp)
	lw $t0, -964($fp)
	sw $t0, -2160($fp)
	li $t0, 24492
	sw $t0, -2164($fp)
	lw $t0, -2160($fp)
	lw $t1, -2164($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2168($fp)
	lw $t0, -928($fp)
	sw $t0, -2172($fp)
	lw $t1, -2168($fp)
	lw $t2, -2172($fp)
	bne $t1, $t2, label605
	j label606
label605:
	li $t0, 1
	sw $t0, -2156($fp)
label606:
	li $t0, 0
	sw $t0, -2176($fp)
	lw $t0, -484($fp)
	sw $t0, -2180($fp)
	lw $t1, -2180($fp)
	li $t2, 0
	bne $t1, $t2, label609
	j label607
label609:
	lw $t0, -460($fp)
	sw $t0, -2184($fp)
	lw $t1, -2184($fp)
	li $t2, 0
	bne $t1, $t2, label607
	j label608
label607:
	li $t0, 1
	sw $t0, -2176($fp)
label608:
	addi $sp, $sp, -4
	lw $t0, -2124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2176($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2188($fp)
	addi $sp, $sp, 20
	lw $t0, -292($fp)
	sw $t0, -2192($fp)
	lw $t0, -2188($fp)
	lw $t1, -2192($fp)
	add $t0, $t0, $t1
	sw $t0, -2196($fp)
	addi $sp, $sp, -4
	lw $t0, -2108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2196($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2200($fp)
	addi $sp, $sp, 20
	lw $t1, -2092($fp)
	lw $t2, -2200($fp)
	bgt $t1, $t2, label594
	j label595
label594:
	li $t0, 1
	sw $t0, -2028($fp)
label595:
label581:
	j label571
label573:
	j label564
label563:
	li $t0, 11186
	sw $t0, -2228($fp)
	lw $t0, -2228($fp)
	sw $t0, -2232($fp)
	lw $t0, -2232($fp)
	sw $t0, -2236($fp)
	li $t0, 41440
	sw $t0, -2240($fp)
	lw $t0, -2240($fp)
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	sw $t0, -2248($fp)
	li $t0, 40889
	sw $t0, -2252($fp)
	lw $t0, -2252($fp)
	sw $t0, -2256($fp)
	lw $t0, -2256($fp)
	sw $t0, -2260($fp)
	li $t0, 24074
	sw $t0, -2264($fp)
	lw $t0, -2264($fp)
	sw $t0, -2268($fp)
	lw $t0, -2268($fp)
	sw $t0, -2272($fp)
	li $t0, 50781
	sw $t0, -2276($fp)
	lw $t0, -2276($fp)
	sw $t0, -2280($fp)
	lw $t0, -2280($fp)
	sw $t0, -2284($fp)
	li $t0, 39005
	sw $t0, -2288($fp)
	addi $t0, $fp, -2224
	sw $t0, -2292($fp)
	li $t0, 0
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2300($fp)
	lw $t0, -2292($fp)
	lw $t1, -2300($fp)
	add $t0, $t0, $t1
	sw $t0, -2304($fp)
	lw $t0, -2288($fp)
	lw $t1, -2304($fp)
	sw $t0, 0($t1)
	lw $t0, -2304($fp)
	lw $t1, 0($t0)
	sw $t1, -2308($fp)
	li $t0, 64152
	sw $t0, -2312($fp)
	addi $t0, $fp, -2224
	sw $t0, -2316($fp)
	li $t0, 1
	sw $t0, -2320($fp)
	lw $t0, -2320($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2324($fp)
	lw $t0, -2316($fp)
	lw $t1, -2324($fp)
	add $t0, $t0, $t1
	sw $t0, -2328($fp)
	lw $t0, -2312($fp)
	lw $t1, -2328($fp)
	sw $t0, 0($t1)
	lw $t0, -2328($fp)
	lw $t1, 0($t0)
	sw $t1, -2332($fp)
	li $t0, 16681
	sw $t0, -2336($fp)
	addi $t0, $fp, -2224
	sw $t0, -2340($fp)
	li $t0, 2
	sw $t0, -2344($fp)
	lw $t0, -2344($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2348($fp)
	lw $t0, -2340($fp)
	lw $t1, -2348($fp)
	add $t0, $t0, $t1
	sw $t0, -2352($fp)
	lw $t0, -2336($fp)
	lw $t1, -2352($fp)
	sw $t0, 0($t1)
	lw $t0, -2352($fp)
	lw $t1, 0($t0)
	sw $t1, -2356($fp)
	li $t0, 43567
	sw $t0, -2360($fp)
	addi $t0, $fp, -2224
	sw $t0, -2364($fp)
	li $t0, 3
	sw $t0, -2368($fp)
	lw $t0, -2368($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2372($fp)
	lw $t0, -2364($fp)
	lw $t1, -2372($fp)
	add $t0, $t0, $t1
	sw $t0, -2376($fp)
	lw $t0, -2360($fp)
	lw $t1, -2376($fp)
	sw $t0, 0($t1)
	lw $t0, -2376($fp)
	lw $t1, 0($t0)
	sw $t1, -2380($fp)
	li $t0, 50419
	sw $t0, -2384($fp)
	addi $t0, $fp, -2224
	sw $t0, -2388($fp)
	li $t0, 4
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2396($fp)
	lw $t0, -2388($fp)
	lw $t1, -2396($fp)
	add $t0, $t0, $t1
	sw $t0, -2400($fp)
	lw $t0, -2384($fp)
	lw $t1, -2400($fp)
	sw $t0, 0($t1)
	lw $t0, -2400($fp)
	lw $t1, 0($t0)
	sw $t1, -2404($fp)
	li $t0, 58406
	sw $t0, -2408($fp)
	addi $t0, $fp, -2224
	sw $t0, -2412($fp)
	li $t0, 5
	sw $t0, -2416($fp)
	lw $t0, -2416($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2420($fp)
	lw $t0, -2412($fp)
	lw $t1, -2420($fp)
	add $t0, $t0, $t1
	sw $t0, -2424($fp)
	lw $t0, -2408($fp)
	lw $t1, -2424($fp)
	sw $t0, 0($t1)
	lw $t0, -2424($fp)
	lw $t1, 0($t0)
	sw $t1, -2428($fp)
	li $t0, 42382
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	sw $t0, -2436($fp)
	lw $t0, -2436($fp)
	sw $t0, -2440($fp)
	li $t0, 0
	sw $t0, -2444($fp)
	li $t0, 53502
	sw $t0, -2448($fp)
	addi $t0, $fp, -24
	sw $t0, -2452($fp)
	lw $t0, -952($fp)
	sw $t0, -2456($fp)
	li $t0, 4
	lw $t1, -2456($fp)
	mul $t0, $t0, $t1
	sw $t0, -2460($fp)
	lw $t0, -2460($fp)
	lw $t1, -2452($fp)
	add $t0, $t0, $t1
	sw $t0, -2464($fp)
	lw $t0, -2464($fp)
	lw $t1, 0($t0)
	sw $t1, -2468($fp)
	lw $t0, -2244($fp)
	sw $t0, -2472($fp)
	lw $t0, -2468($fp)
	lw $t1, -2472($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2476($fp)
	li $t0, 0
	sw $t0, -2480($fp)
	li $t0, 0
	sw $t0, -2484($fp)
	lw $t0, -820($fp)
	sw $t0, -2488($fp)
	lw $t0, -1096($fp)
	sw $t0, -2492($fp)
	lw $t0, -2488($fp)
	lw $t1, -2492($fp)
	mul $t0, $t0, $t1
	sw $t0, -2496($fp)
	lw $t0, -472($fp)
	sw $t0, -2500($fp)
	lw $t1, -2496($fp)
	lw $t2, -2500($fp)
	bne $t1, $t2, label615
	j label616
label615:
	li $t0, 1
	sw $t0, -2484($fp)
label616:
	addi $t0, $fp, -12
	sw $t0, -2504($fp)
	lw $t0, -1108($fp)
	sw $t0, -2508($fp)
	li $t0, 4
	lw $t1, -2508($fp)
	mul $t0, $t0, $t1
	sw $t0, -2512($fp)
	lw $t0, -2512($fp)
	lw $t1, -2504($fp)
	add $t0, $t0, $t1
	sw $t0, -2516($fp)
	lw $t0, -2516($fp)
	lw $t1, 0($t0)
	sw $t1, -2520($fp)
	li $t0, 0
	lw $t1, -2520($fp)
	sub $t0, $t0, $t1
	sw $t0, -2524($fp)
	li $t0, 0
	sw $t0, -2528($fp)
	lw $t0, -844($fp)
	sw $t0, -2532($fp)
	lw $t0, -460($fp)
	sw $t0, -2536($fp)
	lw $t0, -2532($fp)
	lw $t1, -2536($fp)
	mul $t0, $t0, $t1
	sw $t0, -2540($fp)
	lw $t1, -2540($fp)
	li $t2, 0
	bne $t1, $t2, label619
	j label618
label619:
	lw $t0, -1120($fp)
	sw $t0, -2544($fp)
	lw $t1, -2544($fp)
	li $t2, 0
	bne $t1, $t2, label617
	j label618
label617:
	li $t0, 1
	sw $t0, -2528($fp)
label618:
	addi $sp, $sp, -4
	lw $t0, -2484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2528($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2548($fp)
	addi $sp, $sp, 16
	lw $t1, -2548($fp)
	li $t2, 0
	bne $t1, $t2, label614
	j label613
label614:
	lw $t0, -2436($fp)
	sw $t0, -2552($fp)
	lw $t1, -2552($fp)
	li $t2, 0
	bne $t1, $t2, label612
	j label613
label612:
	li $t0, 1
	sw $t0, -2480($fp)
label613:
	lw $t0, -2280($fp)
	sw $t0, -2556($fp)
	lw $t0, -988($fp)
	sw $t0, -2560($fp)
	li $t0, 0
	lw $t1, -2560($fp)
	sub $t0, $t0, $t1
	sw $t0, -2564($fp)
	li $t0, 0
	sw $t0, -2568($fp)
	li $t0, 36838
	sw $t0, -2572($fp)
	lw $t1, -2572($fp)
	li $t2, 0
	bne $t1, $t2, label622
	j label621
label622:
	li $t0, 57590
	sw $t0, -2576($fp)
	lw $t1, -2576($fp)
	li $t2, 0
	bne $t1, $t2, label620
	j label621
label620:
	li $t0, 1
	sw $t0, -2568($fp)
label621:
	addi $sp, $sp, -4
	lw $t0, -2480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2568($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2580($fp)
	addi $sp, $sp, 20
	lw $t0, -2476($fp)
	lw $t1, -2580($fp)
	sub $t0, $t0, $t1
	sw $t0, -2584($fp)
	lw $t1, -2448($fp)
	lw $t2, -2584($fp)
	bne $t1, $t2, label610
	j label611
label610:
	li $t0, 1
	sw $t0, -2444($fp)
label611:
	li $t0, 0
	sw $t0, -2588($fp)
	lw $t0, -1000($fp)
	sw $t0, -2592($fp)
	lw $t0, -2244($fp)
	sw $t0, -2596($fp)
	lw $t0, -2592($fp)
	lw $t1, -2596($fp)
	mul $t0, $t0, $t1
	sw $t0, -2600($fp)
	addi $t0, $fp, -80
	sw $t0, -2604($fp)
	li $t0, 2
	sw $t0, -2608($fp)
	li $t0, 4
	lw $t1, -2608($fp)
	mul $t0, $t0, $t1
	sw $t0, -2612($fp)
	lw $t0, -2612($fp)
	lw $t1, -2604($fp)
	add $t0, $t0, $t1
	sw $t0, -2616($fp)
	lw $t0, -2616($fp)
	lw $t1, 0($t0)
	sw $t1, -2620($fp)
	lw $t0, -2600($fp)
	lw $t1, -2620($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2624($fp)
	li $t0, 0
	sw $t0, -2628($fp)
	lw $t0, -1000($fp)
	sw $t0, -2632($fp)
	lw $t0, -280($fp)
	sw $t0, -2636($fp)
	lw $t0, -2632($fp)
	lw $t1, -2636($fp)
	add $t0, $t0, $t1
	sw $t0, -2640($fp)
	li $t0, 64863
	sw $t0, -2644($fp)
	lw $t0, -928($fp)
	sw $t0, -2648($fp)
	lw $t0, -2644($fp)
	lw $t1, -2648($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2652($fp)
	lw $t1, -2640($fp)
	lw $t2, -2652($fp)
	bgt $t1, $t2, label625
	j label626
label625:
	li $t0, 1
	sw $t0, -2628($fp)
label626:
	lw $t1, -2624($fp)
	lw $t2, -2628($fp)
	bne $t1, $t2, label623
	j label624
label623:
	li $t0, 1
	sw $t0, -2588($fp)
label624:
	li $t0, 0
	sw $t0, -2656($fp)
	li $t0, 0
	sw $t0, -2660($fp)
	lw $t0, -1072($fp)
	sw $t0, -2664($fp)
	li $t0, 48997
	sw $t0, -2668($fp)
	li $t0, 16563
	sw $t0, -2672($fp)
	lw $t0, -2668($fp)
	lw $t1, -2672($fp)
	mul $t0, $t0, $t1
	sw $t0, -2676($fp)
	li $t0, 1
	sw $t0, -2680($fp)
	lw $t0, -2676($fp)
	lw $t1, -2680($fp)
	mul $t0, $t0, $t1
	sw $t0, -2684($fp)
	li $t0, 0
	sw $t0, -2688($fp)
	li $t0, 9105
	sw $t0, -2692($fp)
	lw $t0, -1036($fp)
	sw $t0, -2696($fp)
	lw $t1, -2692($fp)
	lw $t2, -2696($fp)
	bge $t1, $t2, label631
	j label632
label631:
	li $t0, 1
	sw $t0, -2688($fp)
label632:
	li $t0, 0
	sw $t0, -2700($fp)
	li $t0, 0
	sw $t0, -2704($fp)
	li $t0, 57187
	sw $t0, -2708($fp)
	lw $t1, -2708($fp)
	li $t2, 0
	bne $t1, $t2, label636
	j label635
label635:
	li $t0, 1
	sw $t0, -2704($fp)
label636:
	li $t0, 26302
	sw $t0, -2712($fp)
	lw $t1, -2704($fp)
	lw $t2, -2712($fp)
	bne $t1, $t2, label633
	j label634
label633:
	li $t0, 1
	sw $t0, -2700($fp)
label634:
	lw $t0, -160($fp)
	sw $t0, -2716($fp)
	lw $t0, -2716($fp)
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -2720($fp)
	addi $sp, $sp, -4
	lw $t0, -2684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2720($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2724($fp)
	addi $sp, $sp, 20
	lw $t1, -2664($fp)
	lw $t2, -2724($fp)
	bge $t1, $t2, label629
	j label630
label629:
	li $t0, 1
	sw $t0, -2660($fp)
label630:
	li $t0, 0
	sw $t0, -2728($fp)
	li $t0, 0
	sw $t0, -2732($fp)
	li $t0, 31877
	sw $t0, -2736($fp)
	li $t0, 12709
	sw $t0, -2740($fp)
	lw $t1, -2736($fp)
	lw $t2, -2740($fp)
	ble $t1, $t2, label639
	j label640
label639:
	li $t0, 1
	sw $t0, -2732($fp)
label640:
	lw $t0, -940($fp)
	sw $t0, -2744($fp)
	lw $t1, -2732($fp)
	lw $t2, -2744($fp)
	bge $t1, $t2, label637
	j label638
label637:
	li $t0, 1
	sw $t0, -2728($fp)
label638:
	lw $t1, -2660($fp)
	lw $t2, -2728($fp)
	beq $t1, $t2, label627
	j label628
label627:
	li $t0, 1
	sw $t0, -2656($fp)
label628:
	li $t0, 0
	sw $t0, -2748($fp)
	lw $t0, -1024($fp)
	sw $t0, -2752($fp)
	lw $t1, -2752($fp)
	li $t2, 0
	bne $t1, $t2, label642
	j label641
label641:
	li $t0, 1
	sw $t0, -2748($fp)
label642:
	addi $t0, $fp, -24
	sw $t0, -2756($fp)
	li $t0, 50413
	sw $t0, -2760($fp)
	li $t0, 56072
	sw $t0, -2764($fp)
	lw $t0, -2760($fp)
	lw $t1, -2764($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2768($fp)
	lw $t0, -520($fp)
	sw $t0, -2772($fp)
	lw $t0, -2768($fp)
	lw $t1, -2772($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2776($fp)
	li $t0, 4
	lw $t1, -2776($fp)
	mul $t0, $t0, $t1
	sw $t0, -2780($fp)
	lw $t0, -2780($fp)
	lw $t1, -2756($fp)
	add $t0, $t0, $t1
	sw $t0, -2784($fp)
	lw $t0, -2784($fp)
	lw $t1, 0($t0)
	sw $t1, -2788($fp)
	li $t0, 0
	lw $t1, -2788($fp)
	sub $t0, $t0, $t1
	sw $t0, -2792($fp)
	lw $t1, -2792($fp)
	li $t2, 0
	bne $t1, $t2, label643
	j label644
label643:
	li $t0, 0
	sw $t0, -2796($fp)
	lw $t0, -520($fp)
	sw $t0, -2800($fp)
	lw $t1, -2800($fp)
	li $t2, 0
	bne $t1, $t2, label647
	j label646
label646:
	li $t0, 1
	sw $t0, -2796($fp)
label647:
label644:
label648:
	li $t0, 47637
	sw $t0, -2804($fp)
	lw $t0, -2804($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -2808($fp)
	li $t0, 0
	sw $t0, -2812($fp)
	lw $t0, -1012($fp)
	sw $t0, -2816($fp)
	li $t0, 0
	lw $t1, -2816($fp)
	sub $t0, $t0, $t1
	sw $t0, -2820($fp)
	lw $t1, -2820($fp)
	li $t2, 0
	bne $t1, $t2, label652
	j label651
label651:
	li $t0, 1
	sw $t0, -2812($fp)
label652:
	li $t0, 0
	sw $t0, -2824($fp)
	li $t0, 37201
	sw $t0, -2828($fp)
	lw $t0, -1024($fp)
	sw $t0, -2832($fp)
	lw $t0, -2828($fp)
	lw $t1, -2832($fp)
	sub $t0, $t0, $t1
	sw $t0, -2836($fp)
	lw $t1, -2836($fp)
	li $t2, 0
	bne $t1, $t2, label653
	j label655
label655:
	li $t0, 46086
	sw $t0, -2840($fp)
	lw $t1, -2840($fp)
	li $t2, 0
	bne $t1, $t2, label653
	j label654
label653:
	li $t0, 1
	sw $t0, -2824($fp)
label654:
	addi $t0, $fp, -2224
	sw $t0, -2844($fp)
	lw $t0, -2268($fp)
	sw $t0, -2848($fp)
	li $t0, 4
	lw $t1, -2848($fp)
	mul $t0, $t0, $t1
	sw $t0, -2852($fp)
	lw $t0, -2852($fp)
	lw $t1, -2844($fp)
	add $t0, $t0, $t1
	sw $t0, -2856($fp)
	lw $t0, -2856($fp)
	lw $t1, 0($t0)
	sw $t1, -2860($fp)
	li $t0, 0
	lw $t1, -2860($fp)
	sub $t0, $t0, $t1
	sw $t0, -2864($fp)
	addi $sp, $sp, -4
	lw $t0, -2808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2864($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2868($fp)
	addi $sp, $sp, 20
	lw $t1, -2868($fp)
	li $t2, 0
	bne $t1, $t2, label650
	j label649
label649:
label656:
	li $t0, 0
	sw $t0, -2872($fp)
	li $t0, 6926
	sw $t0, -2876($fp)
	li $t0, 0
	lw $t1, -2876($fp)
	sub $t0, $t0, $t1
	sw $t0, -2880($fp)
	li $t0, 7236
	sw $t0, -2884($fp)
	lw $t1, -2880($fp)
	lw $t2, -2884($fp)
	beq $t1, $t2, label659
	j label660
label659:
	li $t0, 1
	sw $t0, -2872($fp)
label660:
	li $t0, 0
	sw $t0, -2888($fp)
	li $t0, 0
	sw $t0, -2892($fp)
	li $t0, 21991
	sw $t0, -2896($fp)
	li $t0, 22990
	sw $t0, -2900($fp)
	lw $t0, -2896($fp)
	lw $t1, -2900($fp)
	sub $t0, $t0, $t1
	sw $t0, -2904($fp)
	lw $t0, -280($fp)
	sw $t0, -2908($fp)
	lw $t1, -2904($fp)
	lw $t2, -2908($fp)
	blt $t1, $t2, label663
	j label664
label663:
	li $t0, 1
	sw $t0, -2892($fp)
label664:
	li $t0, 0
	sw $t0, -2912($fp)
	li $t0, 0
	sw $t0, -2916($fp)
	lw $t0, -940($fp)
	sw $t0, -2920($fp)
	lw $t0, -472($fp)
	sw $t0, -2924($fp)
	lw $t1, -2920($fp)
	lw $t2, -2924($fp)
	bgt $t1, $t2, label667
	j label668
label667:
	li $t0, 1
	sw $t0, -2916($fp)
label668:
	lw $t0, -196($fp)
	sw $t0, -2928($fp)
	lw $t1, -2916($fp)
	lw $t2, -2928($fp)
	bge $t1, $t2, label665
	j label666
label665:
	li $t0, 1
	sw $t0, -2912($fp)
label666:
	li $t0, 0
	sw $t0, -2932($fp)
	li $t0, 0
	sw $t0, -2936($fp)
	lw $t0, -136($fp)
	sw $t0, -2940($fp)
	lw $t1, -2940($fp)
	li $t2, 0
	bne $t1, $t2, label672
	j label671
label671:
	li $t0, 1
	sw $t0, -2936($fp)
label672:
	li $t0, 48387
	sw $t0, -2944($fp)
	lw $t1, -2936($fp)
	lw $t2, -2944($fp)
	bne $t1, $t2, label669
	j label670
label669:
	li $t0, 1
	sw $t0, -2932($fp)
label670:
	addi $t0, $fp, -80
	sw $t0, -2948($fp)
	lw $t0, -1168($fp)
	sw $t0, -2952($fp)
	li $t0, 4
	lw $t1, -2952($fp)
	mul $t0, $t0, $t1
	sw $t0, -2956($fp)
	lw $t0, -2956($fp)
	lw $t1, -2948($fp)
	add $t0, $t0, $t1
	sw $t0, -2960($fp)
	lw $t0, -2960($fp)
	lw $t1, 0($t0)
	sw $t1, -2964($fp)
	addi $sp, $sp, -4
	lw $t0, -2892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2964($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2968($fp)
	addi $sp, $sp, 20
	lw $t1, -2968($fp)
	li $t2, 0
	bne $t1, $t2, label662
	j label661
label661:
	li $t0, 1
	sw $t0, -2888($fp)
label662:
	lw $t0, 8($fp)
	sw $t0, -2972($fp)
	addi $sp, $sp, -4
	lw $t0, -2872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2972($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2976($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -2980($fp)
	lw $t0, -2256($fp)
	sw $t0, -2984($fp)
	lw $t1, -2984($fp)
	li $t2, 0
	bne $t1, $t2, label675
	j label673
label675:
	li $t0, 35118
	sw $t0, -2988($fp)
	lw $t1, -2988($fp)
	li $t2, 0
	bne $t1, $t2, label673
	j label674
label673:
	li $t0, 1
	sw $t0, -2980($fp)
label674:
	li $t0, 0
	sw $t0, -2992($fp)
	li $t0, 0
	sw $t0, -2996($fp)
	lw $t0, -1156($fp)
	sw $t0, -3000($fp)
	li $t0, 8926
	sw $t0, -3004($fp)
	lw $t1, -3000($fp)
	lw $t2, -3004($fp)
	bgt $t1, $t2, label678
	j label679
label678:
	li $t0, 1
	sw $t0, -2996($fp)
label679:
	li $t0, 58436
	sw $t0, -3008($fp)
	lw $t1, -2996($fp)
	lw $t2, -3008($fp)
	bgt $t1, $t2, label676
	j label677
label676:
	li $t0, 1
	sw $t0, -2992($fp)
label677:
	lw $t0, -844($fp)
	sw $t0, -3012($fp)
	li $t0, 53625
	sw $t0, -3016($fp)
	lw $t0, -3012($fp)
	lw $t1, -3016($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3020($fp)
	lw $t0, -1180($fp)
	sw $t0, -3024($fp)
	lw $t0, -3020($fp)
	lw $t1, -3024($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3028($fp)
	li $t0, 0
	sw $t0, -3032($fp)
	li $t0, 0
	sw $t0, -3036($fp)
	lw $t0, -1084($fp)
	sw $t0, -3040($fp)
	lw $t1, -3040($fp)
	li $t2, 0
	bne $t1, $t2, label683
	j label682
label682:
	li $t0, 1
	sw $t0, -3036($fp)
label683:
	li $t0, 0
	lw $t1, -3036($fp)
	sub $t0, $t0, $t1
	sw $t0, -3044($fp)
	li $t0, 0
	sw $t0, -3048($fp)
	li $t0, 0
	sw $t0, -3052($fp)
	li $t0, 43928
	sw $t0, -3056($fp)
	lw $t1, -3056($fp)
	li $t2, 0
	bne $t1, $t2, label687
	j label686
label686:
	li $t0, 1
	sw $t0, -3052($fp)
label687:
	lw $t0, -940($fp)
	sw $t0, -3060($fp)
	lw $t1, -3052($fp)
	lw $t2, -3060($fp)
	bne $t1, $t2, label684
	j label685
label684:
	li $t0, 1
	sw $t0, -3048($fp)
label685:
	lw $t0, -520($fp)
	sw $t0, -3064($fp)
	li $t0, 16872
	sw $t0, -3068($fp)
	lw $t0, -3068($fp)
	sw $t0, -2232($fp)
	lw $t0, -2232($fp)
	sw $t0, -3072($fp)
	addi $sp, $sp, -4
	lw $t0, -3048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3072($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3076($fp)
	addi $sp, $sp, 16
	li $t0, 16787
	sw $t0, -3080($fp)
	li $t0, 0
	sw $t0, -3084($fp)
	li $t0, 0
	sw $t0, -3088($fp)
	lw $t0, -1084($fp)
	sw $t0, -3092($fp)
	lw $t0, -796($fp)
	sw $t0, -3096($fp)
	lw $t1, -3092($fp)
	lw $t2, -3096($fp)
	beq $t1, $t2, label690
	j label692
label692:
	lw $t0, -208($fp)
	sw $t0, -3100($fp)
	lw $t1, -3100($fp)
	li $t2, 0
	bne $t1, $t2, label690
	j label691
label690:
	li $t0, 1
	sw $t0, -3088($fp)
label691:
	li $t0, 40026
	sw $t0, -3104($fp)
	li $t0, 1
	sw $t0, -3108($fp)
	lw $t0, -3104($fp)
	lw $t1, -3108($fp)
	mul $t0, $t0, $t1
	sw $t0, -3112($fp)
	li $t0, 0
	lw $t1, -3112($fp)
	sub $t0, $t0, $t1
	sw $t0, -3116($fp)
	li $t0, 0
	sw $t0, -3120($fp)
	li $t0, 5542
	sw $t0, -3124($fp)
	li $t0, 23917
	sw $t0, -3128($fp)
	lw $t0, -3124($fp)
	lw $t1, -3128($fp)
	mul $t0, $t0, $t1
	sw $t0, -3132($fp)
	lw $t0, -1000($fp)
	sw $t0, -3136($fp)
	lw $t1, -3132($fp)
	lw $t2, -3136($fp)
	beq $t1, $t2, label693
	j label694
label693:
	li $t0, 1
	sw $t0, -3120($fp)
label694:
	addi $sp, $sp, -4
	lw $t0, -3088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3120($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3140($fp)
	addi $sp, $sp, 16
	lw $t1, -3140($fp)
	li $t2, 0
	bne $t1, $t2, label689
	j label688
label688:
	li $t0, 1
	sw $t0, -3084($fp)
label689:
	addi $sp, $sp, -4
	lw $t0, -3044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3084($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3144($fp)
	addi $sp, $sp, 20
	lw $t0, -1048($fp)
	sw $t0, -3148($fp)
	lw $t1, -3144($fp)
	lw $t2, -3148($fp)
	ble $t1, $t2, label680
	j label681
label680:
	li $t0, 1
	sw $t0, -3032($fp)
label681:
	li $t0, 0
	sw $t0, -3152($fp)
	li $t0, 61995
	sw $t0, -3156($fp)
	lw $t1, -3156($fp)
	li $t2, 0
	bne $t1, $t2, label696
	j label695
label695:
	li $t0, 1
	sw $t0, -3152($fp)
label696:
	lw $t0, -208($fp)
	sw $t0, -3160($fp)
	lw $t0, -3152($fp)
	lw $t1, -3160($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3164($fp)
	addi $sp, $sp, -4
	lw $t0, -2992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3164($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3168($fp)
	addi $sp, $sp, 20
	lw $t0, -340($fp)
	sw $t0, -3172($fp)
	lw $t0, -3172($fp)
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, -3176($fp)
	addi $sp, $sp, -4
	lw $t0, -2980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3176($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3180($fp)
	addi $sp, $sp, 16
	lw $t0, -2976($fp)
	lw $t1, -3180($fp)
	mul $t0, $t0, $t1
	sw $t0, -3184($fp)
	lw $t1, -3184($fp)
	li $t2, 0
	bne $t1, $t2, label657
	j label658
label657:
	li $t0, 8253
	sw $t0, -3188($fp)
	lw $t0, -3188($fp)
	sw $t0, -3192($fp)
	lw $t0, -3192($fp)
	sw $t0, -3196($fp)
	addi $t0, $fp, -24
	sw $t0, -3200($fp)
	lw $t0, -1060($fp)
	sw $t0, -3204($fp)
	li $t0, 0
	lw $t1, -3204($fp)
	sub $t0, $t0, $t1
	sw $t0, -3208($fp)
	li $t0, 50087
	sw $t0, -3212($fp)
	lw $t0, -3208($fp)
	lw $t1, -3212($fp)
	sub $t0, $t0, $t1
	sw $t0, -3216($fp)
	li $t0, 4
	lw $t1, -3216($fp)
	mul $t0, $t0, $t1
	sw $t0, -3220($fp)
	lw $t0, -3220($fp)
	lw $t1, -3200($fp)
	add $t0, $t0, $t1
	sw $t0, -3224($fp)
	lw $t0, -3224($fp)
	lw $t1, 0($t0)
	sw $t1, -3228($fp)
	li $t0, 0
	sw $t0, -3232($fp)
	lw $t0, -1120($fp)
	sw $t0, -3236($fp)
	lw $t1, -3236($fp)
	li $t2, 0
	bne $t1, $t2, label698
	j label697
label697:
	li $t0, 1
	sw $t0, -3232($fp)
label698:
	lw $t0, -3228($fp)
	lw $t1, -3232($fp)
	sub $t0, $t0, $t1
	sw $t0, -3240($fp)
	li $t0, 0
	sw $t0, -3244($fp)
	li $t0, 61420
	sw $t0, -3248($fp)
	lw $t1, -3248($fp)
	li $t2, 0
	bne $t1, $t2, label699
	j label700
label699:
	li $t0, 1
	sw $t0, -3244($fp)
label700:
	li $t0, 0
	sw $t0, -3252($fp)
	li $t0, 0
	sw $t0, -3256($fp)
	lw $t0, -208($fp)
	sw $t0, -3260($fp)
	li $t0, 12447
	sw $t0, -3264($fp)
	lw $t1, -3260($fp)
	lw $t2, -3264($fp)
	beq $t1, $t2, label703
	j label704
label703:
	li $t0, 1
	sw $t0, -3256($fp)
label704:
	lw $t0, -3192($fp)
	sw $t0, -3268($fp)
	lw $t1, -3256($fp)
	lw $t2, -3268($fp)
	bne $t1, $t2, label701
	j label702
label701:
	li $t0, 1
	sw $t0, -3252($fp)
label702:
	li $t0, 33548
	sw $t0, -3272($fp)
	lw $t0, -3272($fp)
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	sw $t0, -3276($fp)
	lw $t0, -484($fp)
	sw $t0, -3280($fp)
	lw $t0, -3280($fp)
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -3284($fp)
	li $t0, 0
	sw $t0, -3288($fp)
	lw $t0, -928($fp)
	sw $t0, -3292($fp)
	lw $t1, -3292($fp)
	li $t2, 0
	bne $t1, $t2, label706
	j label705
label705:
	li $t0, 1
	sw $t0, -3288($fp)
label706:
	li $t0, 17358
	sw $t0, -3296($fp)
	lw $t0, -3288($fp)
	lw $t1, -3296($fp)
	add $t0, $t0, $t1
	sw $t0, -3300($fp)
	addi $sp, $sp, -4
	lw $t0, -3252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3300($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3304($fp)
	addi $sp, $sp, 20
	lw $t0, -3244($fp)
	lw $t1, -3304($fp)
	sub $t0, $t0, $t1
	sw $t0, -3308($fp)
	li $t0, 38553
	sw $t0, -3312($fp)
	li $t0, 55961
	sw $t0, -3316($fp)
	li $t0, 0
	lw $t1, -3316($fp)
	sub $t0, $t0, $t1
	sw $t0, -3320($fp)
	li $t0, 0
	sw $t0, -3324($fp)
	lw $t0, -964($fp)
	sw $t0, -3328($fp)
	lw $t1, -3328($fp)
	li $t2, 0
	bne $t1, $t2, label707
	j label710
label710:
	li $t0, 25156
	sw $t0, -3332($fp)
	lw $t1, -3332($fp)
	li $t2, 0
	bne $t1, $t2, label707
	j label709
label709:
	li $t0, 23431
	sw $t0, -3336($fp)
	lw $t1, -3336($fp)
	li $t2, 0
	bne $t1, $t2, label707
	j label708
label707:
	li $t0, 1
	sw $t0, -3324($fp)
label708:
	li $t0, 65425
	sw $t0, -3340($fp)
	li $t0, 0
	lw $t1, -3340($fp)
	sub $t0, $t0, $t1
	sw $t0, -3344($fp)
	addi $sp, $sp, -4
	lw $t0, -3320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3344($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3348($fp)
	addi $sp, $sp, 16
	j label656
label658:
	j label648
label650:
label564:
	li $t0, 62357
	sw $t0, -3436($fp)
	lw $t0, -3436($fp)
	sw $t0, -3440($fp)
	lw $t0, -3440($fp)
	sw $t0, -3444($fp)
	li $t0, 3981
	sw $t0, -3448($fp)
	lw $t0, -3448($fp)
	sw $t0, -3452($fp)
	lw $t0, -3452($fp)
	sw $t0, -3456($fp)
	li $t0, 38062
	sw $t0, -3460($fp)
	lw $t0, -3460($fp)
	sw $t0, -3464($fp)
	lw $t0, -3464($fp)
	sw $t0, -3468($fp)
	li $t0, 45208
	sw $t0, -3472($fp)
	lw $t0, -3472($fp)
	sw $t0, -3476($fp)
	lw $t0, -3476($fp)
	sw $t0, -3480($fp)
	li $t0, 25972
	sw $t0, -3484($fp)
	addi $t0, $fp, -3352
	sw $t0, -3488($fp)
	li $t0, 0
	sw $t0, -3492($fp)
	lw $t0, -3492($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3496($fp)
	lw $t0, -3488($fp)
	lw $t1, -3496($fp)
	add $t0, $t0, $t1
	sw $t0, -3500($fp)
	lw $t0, -3484($fp)
	lw $t1, -3500($fp)
	sw $t0, 0($t1)
	lw $t0, -3500($fp)
	lw $t1, 0($t0)
	sw $t1, -3504($fp)
	li $t0, 61052
	sw $t0, -3508($fp)
	addi $t0, $fp, -3376
	sw $t0, -3512($fp)
	li $t0, 0
	sw $t0, -3516($fp)
	lw $t0, -3516($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3520($fp)
	lw $t0, -3512($fp)
	lw $t1, -3520($fp)
	add $t0, $t0, $t1
	sw $t0, -3524($fp)
	lw $t0, -3508($fp)
	lw $t1, -3524($fp)
	sw $t0, 0($t1)
	lw $t0, -3524($fp)
	lw $t1, 0($t0)
	sw $t1, -3528($fp)
	li $t0, 52134
	sw $t0, -3532($fp)
	addi $t0, $fp, -3376
	sw $t0, -3536($fp)
	li $t0, 1
	sw $t0, -3540($fp)
	lw $t0, -3540($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3544($fp)
	lw $t0, -3536($fp)
	lw $t1, -3544($fp)
	add $t0, $t0, $t1
	sw $t0, -3548($fp)
	lw $t0, -3532($fp)
	lw $t1, -3548($fp)
	sw $t0, 0($t1)
	lw $t0, -3548($fp)
	lw $t1, 0($t0)
	sw $t1, -3552($fp)
	li $t0, 33208
	sw $t0, -3556($fp)
	addi $t0, $fp, -3376
	sw $t0, -3560($fp)
	li $t0, 2
	sw $t0, -3564($fp)
	lw $t0, -3564($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3568($fp)
	lw $t0, -3560($fp)
	lw $t1, -3568($fp)
	add $t0, $t0, $t1
	sw $t0, -3572($fp)
	lw $t0, -3556($fp)
	lw $t1, -3572($fp)
	sw $t0, 0($t1)
	lw $t0, -3572($fp)
	lw $t1, 0($t0)
	sw $t1, -3576($fp)
	li $t0, 57511
	sw $t0, -3580($fp)
	addi $t0, $fp, -3376
	sw $t0, -3584($fp)
	li $t0, 3
	sw $t0, -3588($fp)
	lw $t0, -3588($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3592($fp)
	lw $t0, -3584($fp)
	lw $t1, -3592($fp)
	add $t0, $t0, $t1
	sw $t0, -3596($fp)
	lw $t0, -3580($fp)
	lw $t1, -3596($fp)
	sw $t0, 0($t1)
	lw $t0, -3596($fp)
	lw $t1, 0($t0)
	sw $t1, -3600($fp)
	li $t0, 57677
	sw $t0, -3604($fp)
	addi $t0, $fp, -3376
	sw $t0, -3608($fp)
	li $t0, 4
	sw $t0, -3612($fp)
	lw $t0, -3612($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3616($fp)
	lw $t0, -3608($fp)
	lw $t1, -3616($fp)
	add $t0, $t0, $t1
	sw $t0, -3620($fp)
	lw $t0, -3604($fp)
	lw $t1, -3620($fp)
	sw $t0, 0($t1)
	lw $t0, -3620($fp)
	lw $t1, 0($t0)
	sw $t1, -3624($fp)
	li $t0, 57125
	sw $t0, -3628($fp)
	addi $t0, $fp, -3376
	sw $t0, -3632($fp)
	li $t0, 5
	sw $t0, -3636($fp)
	lw $t0, -3636($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3640($fp)
	lw $t0, -3632($fp)
	lw $t1, -3640($fp)
	add $t0, $t0, $t1
	sw $t0, -3644($fp)
	lw $t0, -3628($fp)
	lw $t1, -3644($fp)
	sw $t0, 0($t1)
	lw $t0, -3644($fp)
	lw $t1, 0($t0)
	sw $t1, -3648($fp)
	li $t0, 32001
	sw $t0, -3652($fp)
	lw $t0, -3652($fp)
	sw $t0, -3656($fp)
	lw $t0, -3656($fp)
	sw $t0, -3660($fp)
	li $t0, 48102
	sw $t0, -3664($fp)
	lw $t0, -3664($fp)
	sw $t0, -3668($fp)
	lw $t0, -3668($fp)
	sw $t0, -3672($fp)
	li $t0, 8376
	sw $t0, -3676($fp)
	addi $t0, $fp, -3392
	sw $t0, -3680($fp)
	li $t0, 0
	sw $t0, -3684($fp)
	lw $t0, -3684($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3688($fp)
	lw $t0, -3680($fp)
	lw $t1, -3688($fp)
	add $t0, $t0, $t1
	sw $t0, -3692($fp)
	lw $t0, -3676($fp)
	lw $t1, -3692($fp)
	sw $t0, 0($t1)
	lw $t0, -3692($fp)
	lw $t1, 0($t0)
	sw $t1, -3696($fp)
	li $t0, 48873
	sw $t0, -3700($fp)
	addi $t0, $fp, -3392
	sw $t0, -3704($fp)
	li $t0, 1
	sw $t0, -3708($fp)
	lw $t0, -3708($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3712($fp)
	lw $t0, -3704($fp)
	lw $t1, -3712($fp)
	add $t0, $t0, $t1
	sw $t0, -3716($fp)
	lw $t0, -3700($fp)
	lw $t1, -3716($fp)
	sw $t0, 0($t1)
	lw $t0, -3716($fp)
	lw $t1, 0($t0)
	sw $t1, -3720($fp)
	li $t0, 26494
	sw $t0, -3724($fp)
	addi $t0, $fp, -3392
	sw $t0, -3728($fp)
	li $t0, 2
	sw $t0, -3732($fp)
	lw $t0, -3732($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3736($fp)
	lw $t0, -3728($fp)
	lw $t1, -3736($fp)
	add $t0, $t0, $t1
	sw $t0, -3740($fp)
	lw $t0, -3724($fp)
	lw $t1, -3740($fp)
	sw $t0, 0($t1)
	lw $t0, -3740($fp)
	lw $t1, 0($t0)
	sw $t1, -3744($fp)
	li $t0, 62002
	sw $t0, -3748($fp)
	addi $t0, $fp, -3392
	sw $t0, -3752($fp)
	li $t0, 3
	sw $t0, -3756($fp)
	lw $t0, -3756($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3760($fp)
	lw $t0, -3752($fp)
	lw $t1, -3760($fp)
	add $t0, $t0, $t1
	sw $t0, -3764($fp)
	lw $t0, -3748($fp)
	lw $t1, -3764($fp)
	sw $t0, 0($t1)
	lw $t0, -3764($fp)
	lw $t1, 0($t0)
	sw $t1, -3768($fp)
	li $t0, 57799
	sw $t0, -3772($fp)
	lw $t0, -3772($fp)
	sw $t0, -3776($fp)
	lw $t0, -3776($fp)
	sw $t0, -3780($fp)
	li $t0, 19394
	sw $t0, -3784($fp)
	addi $t0, $fp, -3432
	sw $t0, -3788($fp)
	li $t0, 0
	sw $t0, -3792($fp)
	lw $t0, -3792($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3796($fp)
	lw $t0, -3788($fp)
	lw $t1, -3796($fp)
	add $t0, $t0, $t1
	sw $t0, -3800($fp)
	lw $t0, -3784($fp)
	lw $t1, -3800($fp)
	sw $t0, 0($t1)
	lw $t0, -3800($fp)
	lw $t1, 0($t0)
	sw $t1, -3804($fp)
	li $t0, 31584
	sw $t0, -3808($fp)
	addi $t0, $fp, -3432
	sw $t0, -3812($fp)
	li $t0, 1
	sw $t0, -3816($fp)
	lw $t0, -3816($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3820($fp)
	lw $t0, -3812($fp)
	lw $t1, -3820($fp)
	add $t0, $t0, $t1
	sw $t0, -3824($fp)
	lw $t0, -3808($fp)
	lw $t1, -3824($fp)
	sw $t0, 0($t1)
	lw $t0, -3824($fp)
	lw $t1, 0($t0)
	sw $t1, -3828($fp)
	li $t0, 516
	sw $t0, -3832($fp)
	addi $t0, $fp, -3432
	sw $t0, -3836($fp)
	li $t0, 2
	sw $t0, -3840($fp)
	lw $t0, -3840($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3844($fp)
	lw $t0, -3836($fp)
	lw $t1, -3844($fp)
	add $t0, $t0, $t1
	sw $t0, -3848($fp)
	lw $t0, -3832($fp)
	lw $t1, -3848($fp)
	sw $t0, 0($t1)
	lw $t0, -3848($fp)
	lw $t1, 0($t0)
	sw $t1, -3852($fp)
	li $t0, 3945
	sw $t0, -3856($fp)
	addi $t0, $fp, -3432
	sw $t0, -3860($fp)
	li $t0, 3
	sw $t0, -3864($fp)
	lw $t0, -3864($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3868($fp)
	lw $t0, -3860($fp)
	lw $t1, -3868($fp)
	add $t0, $t0, $t1
	sw $t0, -3872($fp)
	lw $t0, -3856($fp)
	lw $t1, -3872($fp)
	sw $t0, 0($t1)
	lw $t0, -3872($fp)
	lw $t1, 0($t0)
	sw $t1, -3876($fp)
	li $t0, 27468
	sw $t0, -3880($fp)
	addi $t0, $fp, -3432
	sw $t0, -3884($fp)
	li $t0, 4
	sw $t0, -3888($fp)
	lw $t0, -3888($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3892($fp)
	lw $t0, -3884($fp)
	lw $t1, -3892($fp)
	add $t0, $t0, $t1
	sw $t0, -3896($fp)
	lw $t0, -3880($fp)
	lw $t1, -3896($fp)
	sw $t0, 0($t1)
	lw $t0, -3896($fp)
	lw $t1, 0($t0)
	sw $t1, -3900($fp)
	li $t0, 17874
	sw $t0, -3904($fp)
	addi $t0, $fp, -3432
	sw $t0, -3908($fp)
	li $t0, 5
	sw $t0, -3912($fp)
	lw $t0, -3912($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3916($fp)
	lw $t0, -3908($fp)
	lw $t1, -3916($fp)
	add $t0, $t0, $t1
	sw $t0, -3920($fp)
	lw $t0, -3904($fp)
	lw $t1, -3920($fp)
	sw $t0, 0($t1)
	lw $t0, -3920($fp)
	lw $t1, 0($t0)
	sw $t1, -3924($fp)
	li $t0, 37493
	sw $t0, -3928($fp)
	addi $t0, $fp, -3432
	sw $t0, -3932($fp)
	li $t0, 6
	sw $t0, -3936($fp)
	lw $t0, -3936($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3940($fp)
	lw $t0, -3932($fp)
	lw $t1, -3940($fp)
	add $t0, $t0, $t1
	sw $t0, -3944($fp)
	lw $t0, -3928($fp)
	lw $t1, -3944($fp)
	sw $t0, 0($t1)
	lw $t0, -3944($fp)
	lw $t1, 0($t0)
	sw $t1, -3948($fp)
	li $t0, 39915
	sw $t0, -3952($fp)
	addi $t0, $fp, -3432
	sw $t0, -3956($fp)
	li $t0, 7
	sw $t0, -3960($fp)
	lw $t0, -3960($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3964($fp)
	lw $t0, -3956($fp)
	lw $t1, -3964($fp)
	add $t0, $t0, $t1
	sw $t0, -3968($fp)
	lw $t0, -3952($fp)
	lw $t1, -3968($fp)
	sw $t0, 0($t1)
	lw $t0, -3968($fp)
	lw $t1, 0($t0)
	sw $t1, -3972($fp)
	li $t0, 56428
	sw $t0, -3976($fp)
	addi $t0, $fp, -3432
	sw $t0, -3980($fp)
	li $t0, 8
	sw $t0, -3984($fp)
	lw $t0, -3984($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3988($fp)
	lw $t0, -3980($fp)
	lw $t1, -3988($fp)
	add $t0, $t0, $t1
	sw $t0, -3992($fp)
	lw $t0, -3976($fp)
	lw $t1, -3992($fp)
	sw $t0, 0($t1)
	lw $t0, -3992($fp)
	lw $t1, 0($t0)
	sw $t1, -3996($fp)
	li $t0, 37382
	sw $t0, -4000($fp)
	addi $t0, $fp, -3432
	sw $t0, -4004($fp)
	li $t0, 9
	sw $t0, -4008($fp)
	lw $t0, -4008($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4012($fp)
	lw $t0, -4004($fp)
	lw $t1, -4012($fp)
	add $t0, $t0, $t1
	sw $t0, -4016($fp)
	lw $t0, -4000($fp)
	lw $t1, -4016($fp)
	sw $t0, 0($t1)
	lw $t0, -4016($fp)
	lw $t1, 0($t0)
	sw $t1, -4020($fp)
	li $t0, 65071
	sw $t0, -4024($fp)
	lw $t0, -4024($fp)
	sw $t0, -4028($fp)
	lw $t0, -4028($fp)
	sw $t0, -4032($fp)
	li $t0, 14323
	sw $t0, -4104($fp)
	lw $t0, -4104($fp)
	sw $t0, -4108($fp)
	lw $t0, -4108($fp)
	sw $t0, -4112($fp)
	li $t0, 27807
	sw $t0, -4116($fp)
	lw $t0, -4116($fp)
	sw $t0, -4120($fp)
	lw $t0, -4120($fp)
	sw $t0, -4124($fp)
	li $t0, 61892
	sw $t0, -4128($fp)
	lw $t0, -4128($fp)
	sw $t0, -4132($fp)
	lw $t0, -4132($fp)
	sw $t0, -4136($fp)
	li $t0, 18304
	sw $t0, -4140($fp)
	lw $t0, -4140($fp)
	sw $t0, -4144($fp)
	lw $t0, -4144($fp)
	sw $t0, -4148($fp)
	li $t0, 333
	sw $t0, -4152($fp)
	addi $t0, $fp, -4064
	sw $t0, -4156($fp)
	li $t0, 0
	sw $t0, -4160($fp)
	lw $t0, -4160($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4164($fp)
	lw $t0, -4156($fp)
	lw $t1, -4164($fp)
	add $t0, $t0, $t1
	sw $t0, -4168($fp)
	lw $t0, -4152($fp)
	lw $t1, -4168($fp)
	sw $t0, 0($t1)
	lw $t0, -4168($fp)
	lw $t1, 0($t0)
	sw $t1, -4172($fp)
	li $t0, 41564
	sw $t0, -4176($fp)
	addi $t0, $fp, -4064
	sw $t0, -4180($fp)
	li $t0, 1
	sw $t0, -4184($fp)
	lw $t0, -4184($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4188($fp)
	lw $t0, -4180($fp)
	lw $t1, -4188($fp)
	add $t0, $t0, $t1
	sw $t0, -4192($fp)
	lw $t0, -4176($fp)
	lw $t1, -4192($fp)
	sw $t0, 0($t1)
	lw $t0, -4192($fp)
	lw $t1, 0($t0)
	sw $t1, -4196($fp)
	li $t0, 44277
	sw $t0, -4200($fp)
	addi $t0, $fp, -4064
	sw $t0, -4204($fp)
	li $t0, 2
	sw $t0, -4208($fp)
	lw $t0, -4208($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4212($fp)
	lw $t0, -4204($fp)
	lw $t1, -4212($fp)
	add $t0, $t0, $t1
	sw $t0, -4216($fp)
	lw $t0, -4200($fp)
	lw $t1, -4216($fp)
	sw $t0, 0($t1)
	lw $t0, -4216($fp)
	lw $t1, 0($t0)
	sw $t1, -4220($fp)
	li $t0, 61385
	sw $t0, -4224($fp)
	addi $t0, $fp, -4064
	sw $t0, -4228($fp)
	li $t0, 3
	sw $t0, -4232($fp)
	lw $t0, -4232($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4236($fp)
	lw $t0, -4228($fp)
	lw $t1, -4236($fp)
	add $t0, $t0, $t1
	sw $t0, -4240($fp)
	lw $t0, -4224($fp)
	lw $t1, -4240($fp)
	sw $t0, 0($t1)
	lw $t0, -4240($fp)
	lw $t1, 0($t0)
	sw $t1, -4244($fp)
	li $t0, 28163
	sw $t0, -4248($fp)
	addi $t0, $fp, -4064
	sw $t0, -4252($fp)
	li $t0, 4
	sw $t0, -4256($fp)
	lw $t0, -4256($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4260($fp)
	lw $t0, -4252($fp)
	lw $t1, -4260($fp)
	add $t0, $t0, $t1
	sw $t0, -4264($fp)
	lw $t0, -4248($fp)
	lw $t1, -4264($fp)
	sw $t0, 0($t1)
	lw $t0, -4264($fp)
	lw $t1, 0($t0)
	sw $t1, -4268($fp)
	li $t0, 11949
	sw $t0, -4272($fp)
	addi $t0, $fp, -4064
	sw $t0, -4276($fp)
	li $t0, 5
	sw $t0, -4280($fp)
	lw $t0, -4280($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4284($fp)
	lw $t0, -4276($fp)
	lw $t1, -4284($fp)
	add $t0, $t0, $t1
	sw $t0, -4288($fp)
	lw $t0, -4272($fp)
	lw $t1, -4288($fp)
	sw $t0, 0($t1)
	lw $t0, -4288($fp)
	lw $t1, 0($t0)
	sw $t1, -4292($fp)
	li $t0, 53360
	sw $t0, -4296($fp)
	addi $t0, $fp, -4064
	sw $t0, -4300($fp)
	li $t0, 6
	sw $t0, -4304($fp)
	lw $t0, -4304($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4308($fp)
	lw $t0, -4300($fp)
	lw $t1, -4308($fp)
	add $t0, $t0, $t1
	sw $t0, -4312($fp)
	lw $t0, -4296($fp)
	lw $t1, -4312($fp)
	sw $t0, 0($t1)
	lw $t0, -4312($fp)
	lw $t1, 0($t0)
	sw $t1, -4316($fp)
	li $t0, 20304
	sw $t0, -4320($fp)
	addi $t0, $fp, -4064
	sw $t0, -4324($fp)
	li $t0, 7
	sw $t0, -4328($fp)
	lw $t0, -4328($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4332($fp)
	lw $t0, -4324($fp)
	lw $t1, -4332($fp)
	add $t0, $t0, $t1
	sw $t0, -4336($fp)
	lw $t0, -4320($fp)
	lw $t1, -4336($fp)
	sw $t0, 0($t1)
	lw $t0, -4336($fp)
	lw $t1, 0($t0)
	sw $t1, -4340($fp)
	li $t0, 3539
	sw $t0, -4344($fp)
	lw $t0, -4344($fp)
	sw $t0, -4348($fp)
	lw $t0, -4348($fp)
	sw $t0, -4352($fp)
	li $t0, 19825
	sw $t0, -4356($fp)
	lw $t0, -4356($fp)
	sw $t0, -4360($fp)
	lw $t0, -4360($fp)
	sw $t0, -4364($fp)
	li $t0, 2870
	sw $t0, -4368($fp)
	lw $t0, -4368($fp)
	sw $t0, -4372($fp)
	lw $t0, -4372($fp)
	sw $t0, -4376($fp)
	li $t0, 11915
	sw $t0, -4380($fp)
	lw $t0, -4380($fp)
	sw $t0, -4384($fp)
	lw $t0, -4384($fp)
	sw $t0, -4388($fp)
	li $t0, 3162
	sw $t0, -4392($fp)
	lw $t0, -4392($fp)
	sw $t0, -4396($fp)
	lw $t0, -4396($fp)
	sw $t0, -4400($fp)
	li $t0, 29365
	sw $t0, -4404($fp)
	addi $t0, $fp, -4100
	sw $t0, -4408($fp)
	li $t0, 0
	sw $t0, -4412($fp)
	lw $t0, -4412($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4416($fp)
	lw $t0, -4408($fp)
	lw $t1, -4416($fp)
	add $t0, $t0, $t1
	sw $t0, -4420($fp)
	lw $t0, -4404($fp)
	lw $t1, -4420($fp)
	sw $t0, 0($t1)
	lw $t0, -4420($fp)
	lw $t1, 0($t0)
	sw $t1, -4424($fp)
	li $t0, 8381
	sw $t0, -4428($fp)
	addi $t0, $fp, -4100
	sw $t0, -4432($fp)
	li $t0, 1
	sw $t0, -4436($fp)
	lw $t0, -4436($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4440($fp)
	lw $t0, -4432($fp)
	lw $t1, -4440($fp)
	add $t0, $t0, $t1
	sw $t0, -4444($fp)
	lw $t0, -4428($fp)
	lw $t1, -4444($fp)
	sw $t0, 0($t1)
	lw $t0, -4444($fp)
	lw $t1, 0($t0)
	sw $t1, -4448($fp)
	li $t0, 60961
	sw $t0, -4452($fp)
	addi $t0, $fp, -4100
	sw $t0, -4456($fp)
	li $t0, 2
	sw $t0, -4460($fp)
	lw $t0, -4460($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4464($fp)
	lw $t0, -4456($fp)
	lw $t1, -4464($fp)
	add $t0, $t0, $t1
	sw $t0, -4468($fp)
	lw $t0, -4452($fp)
	lw $t1, -4468($fp)
	sw $t0, 0($t1)
	lw $t0, -4468($fp)
	lw $t1, 0($t0)
	sw $t1, -4472($fp)
	li $t0, 48759
	sw $t0, -4476($fp)
	addi $t0, $fp, -4100
	sw $t0, -4480($fp)
	li $t0, 3
	sw $t0, -4484($fp)
	lw $t0, -4484($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4488($fp)
	lw $t0, -4480($fp)
	lw $t1, -4488($fp)
	add $t0, $t0, $t1
	sw $t0, -4492($fp)
	lw $t0, -4476($fp)
	lw $t1, -4492($fp)
	sw $t0, 0($t1)
	lw $t0, -4492($fp)
	lw $t1, 0($t0)
	sw $t1, -4496($fp)
	li $t0, 39965
	sw $t0, -4500($fp)
	addi $t0, $fp, -4100
	sw $t0, -4504($fp)
	li $t0, 4
	sw $t0, -4508($fp)
	lw $t0, -4508($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4512($fp)
	lw $t0, -4504($fp)
	lw $t1, -4512($fp)
	add $t0, $t0, $t1
	sw $t0, -4516($fp)
	lw $t0, -4500($fp)
	lw $t1, -4516($fp)
	sw $t0, 0($t1)
	lw $t0, -4516($fp)
	lw $t1, 0($t0)
	sw $t1, -4520($fp)
	li $t0, 61477
	sw $t0, -4524($fp)
	addi $t0, $fp, -4100
	sw $t0, -4528($fp)
	li $t0, 5
	sw $t0, -4532($fp)
	lw $t0, -4532($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4536($fp)
	lw $t0, -4528($fp)
	lw $t1, -4536($fp)
	add $t0, $t0, $t1
	sw $t0, -4540($fp)
	lw $t0, -4524($fp)
	lw $t1, -4540($fp)
	sw $t0, 0($t1)
	lw $t0, -4540($fp)
	lw $t1, 0($t0)
	sw $t1, -4544($fp)
	li $t0, 52705
	sw $t0, -4548($fp)
	addi $t0, $fp, -4100
	sw $t0, -4552($fp)
	li $t0, 6
	sw $t0, -4556($fp)
	lw $t0, -4556($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4560($fp)
	lw $t0, -4552($fp)
	lw $t1, -4560($fp)
	add $t0, $t0, $t1
	sw $t0, -4564($fp)
	lw $t0, -4548($fp)
	lw $t1, -4564($fp)
	sw $t0, 0($t1)
	lw $t0, -4564($fp)
	lw $t1, 0($t0)
	sw $t1, -4568($fp)
	li $t0, 1897
	sw $t0, -4572($fp)
	addi $t0, $fp, -4100
	sw $t0, -4576($fp)
	li $t0, 7
	sw $t0, -4580($fp)
	lw $t0, -4580($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4584($fp)
	lw $t0, -4576($fp)
	lw $t1, -4584($fp)
	add $t0, $t0, $t1
	sw $t0, -4588($fp)
	lw $t0, -4572($fp)
	lw $t1, -4588($fp)
	sw $t0, 0($t1)
	lw $t0, -4588($fp)
	lw $t1, 0($t0)
	sw $t1, -4592($fp)
	li $t0, 13816
	sw $t0, -4596($fp)
	addi $t0, $fp, -4100
	sw $t0, -4600($fp)
	li $t0, 8
	sw $t0, -4604($fp)
	lw $t0, -4604($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4608($fp)
	lw $t0, -4600($fp)
	lw $t1, -4608($fp)
	add $t0, $t0, $t1
	sw $t0, -4612($fp)
	lw $t0, -4596($fp)
	lw $t1, -4612($fp)
	sw $t0, 0($t1)
	lw $t0, -4612($fp)
	lw $t1, 0($t0)
	sw $t1, -4616($fp)
	li $t0, 24662
	sw $t0, -4620($fp)
	lw $t0, -4620($fp)
	sw $t0, -4624($fp)
	lw $t0, -4624($fp)
	sw $t0, -4628($fp)
	li $t0, 41812
	sw $t0, -4632($fp)
	lw $t0, -4632($fp)
	sw $t0, -4636($fp)
	lw $t0, -4636($fp)
	sw $t0, -4640($fp)
	addi $t0, $fp, -4064
	sw $t0, -4644($fp)
	li $t0, 5
	sw $t0, -4648($fp)
	li $t0, 4
	lw $t1, -4648($fp)
	mul $t0, $t0, $t1
	sw $t0, -4652($fp)
	lw $t0, -4652($fp)
	lw $t1, -4644($fp)
	add $t0, $t0, $t1
	sw $t0, -4656($fp)
	lw $t0, -4656($fp)
	lw $t1, 0($t0)
	sw $t1, -4660($fp)
	lw $t0, -964($fp)
	sw $t0, -4664($fp)
	lw $t0, -3464($fp)
	sw $t0, -4668($fp)
	lw $t0, -4664($fp)
	lw $t1, -4668($fp)
	sub $t0, $t0, $t1
	sw $t0, -4672($fp)
	lw $t1, -4660($fp)
	lw $t2, -4672($fp)
	beq $t1, $t2, label711
	j label715
label715:
	li $t0, 0
	sw $t0, -4676($fp)
	lw $t0, -436($fp)
	sw $t0, -4680($fp)
	lw $t1, -4680($fp)
	li $t2, 0
	bne $t1, $t2, label717
	j label716
label716:
	li $t0, 1
	sw $t0, -4676($fp)
label717:
	li $t0, 41347
	sw $t0, -4684($fp)
	lw $t0, -4676($fp)
	lw $t1, -4684($fp)
	mul $t0, $t0, $t1
	sw $t0, -4688($fp)
	lw $t1, -4688($fp)
	li $t2, 0
	bne $t1, $t2, label711
	j label714
label714:
	addi $t0, $fp, -24
	sw $t0, -4692($fp)
	lw $t0, -4396($fp)
	sw $t0, -4696($fp)
	li $t0, 0
	lw $t1, -4696($fp)
	sub $t0, $t0, $t1
	sw $t0, -4700($fp)
	li $t0, 4
	lw $t1, -4700($fp)
	mul $t0, $t0, $t1
	sw $t0, -4704($fp)
	lw $t0, -4704($fp)
	lw $t1, -4692($fp)
	add $t0, $t0, $t1
	sw $t0, -4708($fp)
	lw $t0, -4708($fp)
	lw $t1, 0($t0)
	sw $t1, -4712($fp)
	lw $t1, -4712($fp)
	li $t2, 0
	bne $t1, $t2, label711
	j label712
label711:
label718:
	li $t0, 0
	sw $t0, -4716($fp)
	li $t0, 31312
	sw $t0, -4720($fp)
	lw $t0, -1024($fp)
	sw $t0, -4724($fp)
	lw $t1, -4720($fp)
	lw $t2, -4724($fp)
	bge $t1, $t2, label723
	j label722
label723:
	lw $t0, -304($fp)
	sw $t0, -4728($fp)
	lw $t1, -4728($fp)
	li $t2, 0
	bne $t1, $t2, label721
	j label722
label721:
	li $t0, 1
	sw $t0, -4716($fp)
label722:
	lw $t0, -328($fp)
	sw $t0, -4732($fp)
	li $t0, 43480
	sw $t0, -4736($fp)
	lw $t0, -4732($fp)
	lw $t1, -4736($fp)
	add $t0, $t0, $t1
	sw $t0, -4740($fp)
	li $t0, 0
	sw $t0, -4744($fp)
	li $t0, 0
	sw $t0, -4748($fp)
	lw $t0, -340($fp)
	sw $t0, -4752($fp)
	lw $t1, -4752($fp)
	li $t2, 0
	bne $t1, $t2, label729
	j label727
label729:
	li $t0, 28149
	sw $t0, -4756($fp)
	lw $t1, -4756($fp)
	li $t2, 0
	bne $t1, $t2, label728
	j label727
label728:
	lw $t0, -4624($fp)
	sw $t0, -4760($fp)
	lw $t1, -4760($fp)
	li $t2, 0
	bne $t1, $t2, label726
	j label727
label726:
	li $t0, 1
	sw $t0, -4748($fp)
label727:
	lw $t0, -808($fp)
	sw $t0, -4764($fp)
	li $t0, 0
	sw $t0, -4768($fp)
	lw $t0, -472($fp)
	sw $t0, -4772($fp)
	lw $t1, -4772($fp)
	li $t2, 0
	bne $t1, $t2, label731
	j label730
label730:
	li $t0, 1
	sw $t0, -4768($fp)
label731:
	lw $t0, -1000($fp)
	sw $t0, -4776($fp)
	lw $t0, -4768($fp)
	lw $t1, -4776($fp)
	mul $t0, $t0, $t1
	sw $t0, -4780($fp)
	addi $sp, $sp, -4
	lw $t0, -4748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4780($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4784($fp)
	addi $sp, $sp, 16
	li $t0, 65069
	sw $t0, -4788($fp)
	lw $t1, -4784($fp)
	lw $t2, -4788($fp)
	bne $t1, $t2, label724
	j label725
label724:
	li $t0, 1
	sw $t0, -4744($fp)
label725:
	li $t0, 0
	sw $t0, -4792($fp)
	lw $t0, -1060($fp)
	sw $t0, -4796($fp)
	li $t0, 31565
	sw $t0, -4800($fp)
	lw $t1, -4796($fp)
	lw $t2, -4800($fp)
	bge $t1, $t2, label734
	j label733
label734:
	lw $t0, -316($fp)
	sw $t0, -4804($fp)
	lw $t1, -4804($fp)
	li $t2, 0
	bne $t1, $t2, label732
	j label733
label732:
	li $t0, 1
	sw $t0, -4792($fp)
label733:
	li $t0, 0
	sw $t0, -4808($fp)
	li $t0, 0
	sw $t0, -4812($fp)
	addi $t0, $fp, -80
	sw $t0, -4816($fp)
	li $t0, 2
	sw $t0, -4820($fp)
	li $t0, 4
	lw $t1, -4820($fp)
	mul $t0, $t0, $t1
	sw $t0, -4824($fp)
	lw $t0, -4824($fp)
	lw $t1, -4816($fp)
	add $t0, $t0, $t1
	sw $t0, -4828($fp)
	lw $t0, -4828($fp)
	lw $t1, 0($t0)
	sw $t1, -4832($fp)
	lw $t1, -4832($fp)
	li $t2, 0
	bne $t1, $t2, label737
	j label739
label739:
	li $t0, 8324
	sw $t0, -4836($fp)
	lw $t1, -4836($fp)
	li $t2, 0
	bne $t1, $t2, label737
	j label738
label737:
	li $t0, 1
	sw $t0, -4812($fp)
label738:
	li $t0, 0
	sw $t0, -4840($fp)
	li $t0, 0
	sw $t0, -4844($fp)
	li $t0, 16076
	sw $t0, -4848($fp)
	lw $t0, -280($fp)
	sw $t0, -4852($fp)
	lw $t1, -4848($fp)
	lw $t2, -4852($fp)
	blt $t1, $t2, label742
	j label743
label742:
	li $t0, 1
	sw $t0, -4844($fp)
label743:
	li $t0, 20499
	sw $t0, -4856($fp)
	lw $t1, -4844($fp)
	lw $t2, -4856($fp)
	beq $t1, $t2, label740
	j label741
label740:
	li $t0, 1
	sw $t0, -4840($fp)
label741:
	li $t0, 0
	sw $t0, -4860($fp)
	lw $t0, -4396($fp)
	sw $t0, -4864($fp)
	lw $t0, -1012($fp)
	sw $t0, -4868($fp)
	lw $t1, -4864($fp)
	lw $t2, -4868($fp)
	bne $t1, $t2, label746
	j label745
label746:
	lw $t0, -1048($fp)
	sw $t0, -4872($fp)
	lw $t1, -4872($fp)
	li $t2, 0
	bne $t1, $t2, label744
	j label745
label744:
	li $t0, 1
	sw $t0, -4860($fp)
label745:
	addi $sp, $sp, -4
	lw $t0, -4812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4860($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4876($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -4880($fp)
	li $t0, 24650
	sw $t0, -4884($fp)
	li $t0, 13732
	sw $t0, -4888($fp)
	lw $t0, -4884($fp)
	lw $t1, -4888($fp)
	add $t0, $t0, $t1
	sw $t0, -4892($fp)
	lw $t0, -4132($fp)
	sw $t0, -4896($fp)
	lw $t1, -4892($fp)
	lw $t2, -4896($fp)
	bge $t1, $t2, label747
	j label748
label747:
	li $t0, 1
	sw $t0, -4880($fp)
label748:
	li $t0, 37335
	sw $t0, -4900($fp)
	lw $t0, -832($fp)
	sw $t0, -4904($fp)
	lw $t0, -4900($fp)
	lw $t1, -4904($fp)
	add $t0, $t0, $t1
	sw $t0, -4908($fp)
	lw $t0, -796($fp)
	sw $t0, -4912($fp)
	lw $t0, -4908($fp)
	lw $t1, -4912($fp)
	add $t0, $t0, $t1
	sw $t0, -4916($fp)
	lw $t0, -4636($fp)
	sw $t0, -4920($fp)
	lw $t0, -4920($fp)
	sw $t0, -4372($fp)
	lw $t0, -4372($fp)
	sw $t0, -4924($fp)
	addi $sp, $sp, -4
	lw $t0, -4876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4924($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4928($fp)
	addi $sp, $sp, 20
	li $t0, 62199
	sw $t0, -4932($fp)
	lw $t0, -4928($fp)
	lw $t1, -4932($fp)
	add $t0, $t0, $t1
	sw $t0, -4936($fp)
	li $t0, 37703
	sw $t0, -4940($fp)
	lw $t0, -4940($fp)
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	sw $t0, -4944($fp)
	li $t0, 0
	sw $t0, -4948($fp)
	lw $t0, -460($fp)
	sw $t0, -4952($fp)
	li $t0, 24316
	sw $t0, -4956($fp)
	lw $t0, -4952($fp)
	lw $t1, -4956($fp)
	sub $t0, $t0, $t1
	sw $t0, -4960($fp)
	lw $t0, -1168($fp)
	sw $t0, -4964($fp)
	lw $t1, -4960($fp)
	lw $t2, -4964($fp)
	bne $t1, $t2, label749
	j label750
label749:
	li $t0, 1
	sw $t0, -4948($fp)
label750:
	addi $sp, $sp, -4
	lw $t0, -4936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4948($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4968($fp)
	addi $sp, $sp, 16
	lw $t1, -4968($fp)
	li $t2, 0
	bne $t1, $t2, label736
	j label735
label735:
	li $t0, 1
	sw $t0, -4808($fp)
label736:
	li $t0, 19031
	sw $t0, -4972($fp)
	lw $t0, -4972($fp)
	sw $t0, -3668($fp)
	lw $t0, -3668($fp)
	sw $t0, -4976($fp)
	addi $sp, $sp, -4
	lw $t0, -4744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4976($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4980($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -4980($fp)
	sub $t0, $t0, $t1
	sw $t0, -4984($fp)
	addi $sp, $sp, -4
	lw $t0, -4716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4984($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4988($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -4992($fp)
	lw $t0, -3476($fp)
	sw $t0, -4996($fp)
	lw $t0, -232($fp)
	sw $t0, -5000($fp)
	lw $t1, -4996($fp)
	lw $t2, -5000($fp)
	bne $t1, $t2, label751
	j label753
label753:
	lw $t0, -940($fp)
	sw $t0, -5004($fp)
	lw $t1, -5004($fp)
	li $t2, 0
	bne $t1, $t2, label751
	j label752
label751:
	li $t0, 1
	sw $t0, -4992($fp)
label752:
	lw $t0, 12($fp)
	sw $t0, -5008($fp)
	li $t0, 51862
	sw $t0, -5012($fp)
	lw $t0, -5008($fp)
	lw $t1, -5012($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5016($fp)
	li $t0, 0
	lw $t1, -5016($fp)
	sub $t0, $t0, $t1
	sw $t0, -5020($fp)
	li $t0, 28898
	sw $t0, -5024($fp)
	addi $sp, $sp, -4
	lw $t0, -4992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5024($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5028($fp)
	addi $sp, $sp, 16
	lw $t0, -3452($fp)
	sw $t0, -5032($fp)
	lw $t0, -5028($fp)
	lw $t1, -5032($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5036($fp)
	lw $t1, -4988($fp)
	lw $t2, -5036($fp)
	beq $t1, $t2, label719
	j label720
label719:
	li $t0, 26737
	sw $t0, -5040($fp)
	addi $t0, $fp, -80
	sw $t0, -5044($fp)
	li $t0, 2
	sw $t0, -5048($fp)
	li $t0, 4
	lw $t1, -5048($fp)
	mul $t0, $t0, $t1
	sw $t0, -5052($fp)
	lw $t0, -5052($fp)
	lw $t1, -5044($fp)
	add $t0, $t0, $t1
	sw $t0, -5056($fp)
	lw $t0, -5056($fp)
	lw $t1, 0($t0)
	sw $t1, -5060($fp)
	li $t0, 0
	lw $t1, -5060($fp)
	sub $t0, $t0, $t1
	sw $t0, -5064($fp)
	lw $t0, 4($fp)
	sw $t0, -5068($fp)
	li $t0, 22679
	sw $t0, -5072($fp)
	lw $t0, -5068($fp)
	lw $t1, -5072($fp)
	mul $t0, $t0, $t1
	sw $t0, -5076($fp)
	lw $t0, -5064($fp)
	lw $t1, -5076($fp)
	sub $t0, $t0, $t1
	sw $t0, -5080($fp)
	lw $t1, -5040($fp)
	lw $t2, -5080($fp)
	bgt $t1, $t2, label754
	j label755
label754:
	li $t0, 0
	sw $t0, -5084($fp)
	li $t0, 64827
	sw $t0, -5088($fp)
	lw $t1, -5088($fp)
	li $t2, 0
	bne $t1, $t2, label757
	j label759
label759:
	li $t0, 0
	sw $t0, -5092($fp)
	lw $t0, -304($fp)
	sw $t0, -5096($fp)
	lw $t0, -3440($fp)
	sw $t0, -5100($fp)
	lw $t1, -5096($fp)
	lw $t2, -5100($fp)
	ble $t1, $t2, label763
	j label762
label763:
	li $t0, 44779
	sw $t0, -5104($fp)
	lw $t1, -5104($fp)
	li $t2, 0
	bne $t1, $t2, label761
	j label762
label761:
	li $t0, 1
	sw $t0, -5092($fp)
label762:
	li $t0, 0
	sw $t0, -5108($fp)
	lw $t0, -4384($fp)
	sw $t0, -5112($fp)
	li $t0, 60234
	sw $t0, -5116($fp)
	lw $t1, -5112($fp)
	lw $t2, -5116($fp)
	bge $t1, $t2, label764
	j label766
label766:
	lw $t0, -172($fp)
	sw $t0, -5120($fp)
	lw $t1, -5120($fp)
	li $t2, 0
	bne $t1, $t2, label764
	j label765
label764:
	li $t0, 1
	sw $t0, -5108($fp)
label765:
	li $t0, 0
	sw $t0, -5124($fp)
	li $t0, 0
	sw $t0, -5128($fp)
	li $t0, 41203
	sw $t0, -5132($fp)
	li $t0, 20462
	sw $t0, -5136($fp)
	lw $t0, -5132($fp)
	lw $t1, -5136($fp)
	mul $t0, $t0, $t1
	sw $t0, -5140($fp)
	lw $t1, -5140($fp)
	li $t2, 0
	bne $t1, $t2, label769
	j label771
label771:
	li $t0, 45813
	sw $t0, -5144($fp)
	lw $t1, -5144($fp)
	li $t2, 0
	bne $t1, $t2, label769
	j label770
label769:
	li $t0, 1
	sw $t0, -5128($fp)
label770:
	lw $t0, -4384($fp)
	sw $t0, -5148($fp)
	li $t0, 4465
	sw $t0, -5152($fp)
	lw $t0, -136($fp)
	sw $t0, -5156($fp)
	lw $t0, -5152($fp)
	lw $t1, -5156($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5160($fp)
	li $t0, 0
	sw $t0, -5164($fp)
	li $t0, 36495
	sw $t0, -5168($fp)
	li $t0, 0
	lw $t1, -5168($fp)
	sub $t0, $t0, $t1
	sw $t0, -5172($fp)
	li $t0, 23953
	sw $t0, -5176($fp)
	lw $t1, -5172($fp)
	lw $t2, -5176($fp)
	ble $t1, $t2, label772
	j label773
label772:
	li $t0, 1
	sw $t0, -5164($fp)
label773:
	addi $sp, $sp, -4
	lw $t0, -5128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5164($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5180($fp)
	addi $sp, $sp, 20
	lw $t0, -4120($fp)
	sw $t0, -5184($fp)
	lw $t1, -5180($fp)
	lw $t2, -5184($fp)
	blt $t1, $t2, label767
	j label768
label767:
	li $t0, 1
	sw $t0, -5124($fp)
label768:
	li $t0, 28189
	sw $t0, -5188($fp)
	addi $sp, $sp, -4
	lw $t0, -5092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5188($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5192($fp)
	addi $sp, $sp, 20
	lw $t1, -5192($fp)
	li $t2, 0
	bne $t1, $t2, label760
	j label758
label760:
	lw $t0, -3476($fp)
	sw $t0, -5196($fp)
	li $t0, 17980
	sw $t0, -5200($fp)
	lw $t1, -5196($fp)
	lw $t2, -5200($fp)
	beq $t1, $t2, label757
	j label758
label757:
	li $t0, 1
	sw $t0, -5084($fp)
label758:
	j label756
label755:
	lw $t0, -1012($fp)
	sw $t0, -5204($fp)
	lw $t0, -5204($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -5208($fp)
	li $t0, 48110
	sw $t0, -5212($fp)
	lw $t0, -340($fp)
	sw $t0, -5216($fp)
	lw $t0, -5212($fp)
	lw $t1, -5216($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5220($fp)
	li $t0, 0
	lw $t1, -5220($fp)
	sub $t0, $t0, $t1
	sw $t0, -5224($fp)
	lw $t0, -172($fp)
	sw $t0, -5228($fp)
	lw $t0, -808($fp)
	sw $t0, -5232($fp)
	lw $t0, -5228($fp)
	lw $t1, -5232($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5236($fp)
	lw $t0, -508($fp)
	sw $t0, -5240($fp)
	lw $t0, -5236($fp)
	lw $t1, -5240($fp)
	mul $t0, $t0, $t1
	sw $t0, -5244($fp)
	li $t0, 0
	sw $t0, -5248($fp)
	lw $t0, -4348($fp)
	sw $t0, -5252($fp)
	li $t0, 0
	lw $t1, -5252($fp)
	sub $t0, $t0, $t1
	sw $t0, -5256($fp)
	lw $t1, -5256($fp)
	li $t2, 0
	bne $t1, $t2, label775
	j label774
label774:
	li $t0, 1
	sw $t0, -5248($fp)
label775:
	addi $sp, $sp, -4
	lw $t0, -5224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5248($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5260($fp)
	addi $sp, $sp, 16
	li $t0, 3893
	sw $t0, -5264($fp)
	lw $t0, -4360($fp)
	sw $t0, -5268($fp)
	lw $t0, -5264($fp)
	lw $t1, -5268($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5272($fp)
	li $t0, 31712
	sw $t0, -5276($fp)
	lw $t0, -5272($fp)
	lw $t1, -5276($fp)
	add $t0, $t0, $t1
	sw $t0, -5280($fp)
	li $t0, 32033
	sw $t0, -5284($fp)
	addi $sp, $sp, -4
	lw $t0, -5208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5284($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5288($fp)
	addi $sp, $sp, 20
	li $t0, 24392
	sw $t0, -5292($fp)
	lw $t0, -5288($fp)
	lw $t1, -5292($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5296($fp)
	li $t0, 10601
	sw $t0, -5300($fp)
	lw $t0, -5296($fp)
	lw $t1, -5300($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5304($fp)
label756:
	j label718
label720:
	j label713
label712:
	li $t0, 32716
	sw $t0, -5308($fp)
	lw $t0, -5308($fp)
	sw $t0, -5312($fp)
	lw $t0, -5312($fp)
	sw $t0, -5316($fp)
	li $t0, 4734
	sw $t0, -5320($fp)
	lw $t0, -5320($fp)
	sw $t0, -5324($fp)
	lw $t0, -5324($fp)
	sw $t0, -5328($fp)
	li $t0, 0
	sw $t0, -5332($fp)
	li $t0, 0
	sw $t0, -5336($fp)
	li $t0, 60866
	sw $t0, -5340($fp)
	lw $t1, -5340($fp)
	li $t2, 0
	bne $t1, $t2, label783
	j label782
label783:
	li $t0, 4268
	sw $t0, -5344($fp)
	lw $t1, -5344($fp)
	li $t2, 0
	bne $t1, $t2, label780
	j label782
label782:
	lw $t0, -1156($fp)
	sw $t0, -5348($fp)
	lw $t1, -5348($fp)
	li $t2, 0
	bne $t1, $t2, label780
	j label781
label780:
	li $t0, 1
	sw $t0, -5336($fp)
label781:
	lw $t0, -1072($fp)
	sw $t0, -5352($fp)
	lw $t0, -5352($fp)
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, -5356($fp)
	li $t0, 0
	sw $t0, -5360($fp)
	li $t0, 0
	sw $t0, -5364($fp)
	lw $t0, -5312($fp)
	sw $t0, -5368($fp)
	lw $t1, -5368($fp)
	li $t2, 0
	bne $t1, $t2, label787
	j label786
label786:
	li $t0, 1
	sw $t0, -5364($fp)
label787:
	li $t0, 42165
	sw $t0, -5372($fp)
	lw $t1, -5364($fp)
	lw $t2, -5372($fp)
	beq $t1, $t2, label784
	j label785
label784:
	li $t0, 1
	sw $t0, -5360($fp)
label785:
	addi $sp, $sp, -4
	lw $t0, -5336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5360($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5376($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -5376($fp)
	sub $t0, $t0, $t1
	sw $t0, -5380($fp)
	lw $t1, -5380($fp)
	li $t2, 0
	bne $t1, $t2, label779
	j label777
label779:
	lw $t0, -5324($fp)
	sw $t0, -5384($fp)
	li $t0, 0
	lw $t1, -5384($fp)
	sub $t0, $t0, $t1
	sw $t0, -5388($fp)
	li $t0, 20109
	sw $t0, -5392($fp)
	lw $t1, -5388($fp)
	lw $t2, -5392($fp)
	ble $t1, $t2, label778
	j label777
label778:
	li $t0, 26642
	sw $t0, -5396($fp)
	lw $t1, -5396($fp)
	li $t2, 0
	bne $t1, $t2, label776
	j label777
label776:
	li $t0, 1
	sw $t0, -5332($fp)
label777:
label713:
	li $t0, 0
	sw $t0, -5400($fp)
	addi $t0, $fp, -3376
	sw $t0, -5404($fp)
	li $t0, 1
	sw $t0, -5408($fp)
	li $t0, 4
	lw $t1, -5408($fp)
	mul $t0, $t0, $t1
	sw $t0, -5412($fp)
	lw $t0, -5412($fp)
	lw $t1, -5404($fp)
	add $t0, $t0, $t1
	sw $t0, -5416($fp)
	lw $t0, -5416($fp)
	lw $t1, 0($t0)
	sw $t1, -5420($fp)
	li $t0, 0
	lw $t1, -5420($fp)
	sub $t0, $t0, $t1
	sw $t0, -5424($fp)
	lw $t0, -1048($fp)
	sw $t0, -5428($fp)
	li $t0, 53379
	sw $t0, -5432($fp)
	lw $t0, -5428($fp)
	lw $t1, -5432($fp)
	mul $t0, $t0, $t1
	sw $t0, -5436($fp)
	lw $t1, -5424($fp)
	lw $t2, -5436($fp)
	bgt $t1, $t2, label791
	j label792
label791:
	li $t0, 1
	sw $t0, -5400($fp)
label792:
	lw $t0, -172($fp)
	sw $t0, -5440($fp)
	li $t0, 60916
	sw $t0, -5444($fp)
	lw $t0, -5440($fp)
	lw $t1, -5444($fp)
	add $t0, $t0, $t1
	sw $t0, -5448($fp)
	li $t0, 0
	sw $t0, -5452($fp)
	li $t0, 32727
	sw $t0, -5456($fp)
	li $t0, 10522
	sw $t0, -5460($fp)
	lw $t0, -5456($fp)
	lw $t1, -5460($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5464($fp)
	lw $t1, -5464($fp)
	li $t2, 0
	bne $t1, $t2, label795
	j label794
label795:
	li $t0, 44579
	sw $t0, -5468($fp)
	lw $t1, -5468($fp)
	li $t2, 0
	bne $t1, $t2, label793
	j label794
label793:
	li $t0, 1
	sw $t0, -5452($fp)
label794:
	li $t0, 0
	sw $t0, -5472($fp)
	lw $t0, -4132($fp)
	sw $t0, -5476($fp)
	li $t0, 45288
	sw $t0, -5480($fp)
	lw $t1, -5476($fp)
	lw $t2, -5480($fp)
	blt $t1, $t2, label796
	j label797
label796:
	li $t0, 1
	sw $t0, -5472($fp)
label797:
	addi $sp, $sp, -4
	lw $t0, -5448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5472($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5484($fp)
	addi $sp, $sp, 16
	lw $t1, -5400($fp)
	lw $t2, -5484($fp)
	blt $t1, $t2, label788
	j label789
label788:
	addi $t0, $fp, -24
	sw $t0, -5488($fp)
	li $t0, 0
	sw $t0, -5492($fp)
	li $t0, 4
	lw $t1, -5492($fp)
	mul $t0, $t0, $t1
	sw $t0, -5496($fp)
	lw $t0, -5496($fp)
	lw $t1, -5488($fp)
	add $t0, $t0, $t1
	sw $t0, -5500($fp)
	lw $t0, -5500($fp)
	lw $t1, 0($t0)
	sw $t1, -5504($fp)
	li $t0, 0
	sw $t0, -5508($fp)
	addi $t0, $fp, -4100
	sw $t0, -5512($fp)
	li $t0, 8
	sw $t0, -5516($fp)
	li $t0, 4
	lw $t1, -5516($fp)
	mul $t0, $t0, $t1
	sw $t0, -5520($fp)
	lw $t0, -5520($fp)
	lw $t1, -5512($fp)
	add $t0, $t0, $t1
	sw $t0, -5524($fp)
	lw $t0, -5524($fp)
	lw $t1, 0($t0)
	sw $t1, -5528($fp)
	lw $t1, -5528($fp)
	li $t2, 0
	bne $t1, $t2, label804
	j label803
label803:
	li $t0, 1
	sw $t0, -5508($fp)
label804:
	li $t0, 0
	sw $t0, -5532($fp)
	li $t0, 0
	sw $t0, -5536($fp)
	li $t0, 29815
	sw $t0, -5540($fp)
	li $t0, 31990
	sw $t0, -5544($fp)
	lw $t1, -5540($fp)
	lw $t2, -5544($fp)
	beq $t1, $t2, label807
	j label808
label807:
	li $t0, 1
	sw $t0, -5536($fp)
label808:
	li $t0, 30988
	sw $t0, -5548($fp)
	lw $t1, -5536($fp)
	lw $t2, -5548($fp)
	bne $t1, $t2, label805
	j label806
label805:
	li $t0, 1
	sw $t0, -5532($fp)
label806:
	li $t0, 0
	sw $t0, -5552($fp)
	li $t0, 49416
	sw $t0, -5556($fp)
	lw $t1, -5556($fp)
	li $t2, 0
	bne $t1, $t2, label809
	j label812
label812:
	lw $t0, -1156($fp)
	sw $t0, -5560($fp)
	lw $t1, -5560($fp)
	li $t2, 0
	bne $t1, $t2, label809
	j label811
label811:
	li $t0, 6595
	sw $t0, -5564($fp)
	lw $t1, -5564($fp)
	li $t2, 0
	bne $t1, $t2, label809
	j label810
label809:
	li $t0, 1
	sw $t0, -5552($fp)
label810:
	addi $t0, $fp, -3376
	sw $t0, -5568($fp)
	li $t0, 0
	sw $t0, -5572($fp)
	li $t0, 4
	lw $t1, -5572($fp)
	mul $t0, $t0, $t1
	sw $t0, -5576($fp)
	lw $t0, -5576($fp)
	lw $t1, -5568($fp)
	add $t0, $t0, $t1
	sw $t0, -5580($fp)
	lw $t0, -5580($fp)
	lw $t1, 0($t0)
	sw $t1, -5584($fp)
	li $t0, 63639
	sw $t0, -5588($fp)
	lw $t0, -5584($fp)
	lw $t1, -5588($fp)
	add $t0, $t0, $t1
	sw $t0, -5592($fp)
	addi $sp, $sp, -4
	lw $t0, -5532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5592($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5596($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -5600($fp)
	li $t0, 23459
	sw $t0, -5604($fp)
	lw $t0, -5604($fp)
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -5608($fp)
	li $t0, 22684
	sw $t0, -5612($fp)
	li $t0, 65381
	sw $t0, -5616($fp)
	addi $sp, $sp, -4
	lw $t0, -5608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5616($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5620($fp)
	addi $sp, $sp, 16
	lw $t1, -5620($fp)
	li $t2, 0
	bne $t1, $t2, label815
	j label814
label815:
	li $t0, 45658
	sw $t0, -5624($fp)
	lw $t1, -5624($fp)
	li $t2, 0
	bne $t1, $t2, label813
	j label814
label813:
	li $t0, 1
	sw $t0, -5600($fp)
label814:
	li $t0, 0
	sw $t0, -5628($fp)
	addi $t0, $fp, -4100
	sw $t0, -5632($fp)
	lw $t0, -940($fp)
	sw $t0, -5636($fp)
	li $t0, 4
	lw $t1, -5636($fp)
	mul $t0, $t0, $t1
	sw $t0, -5640($fp)
	lw $t0, -5640($fp)
	lw $t1, -5632($fp)
	add $t0, $t0, $t1
	sw $t0, -5644($fp)
	lw $t0, -5644($fp)
	lw $t1, 0($t0)
	sw $t1, -5648($fp)
	lw $t0, -280($fp)
	sw $t0, -5652($fp)
	lw $t1, -5648($fp)
	lw $t2, -5652($fp)
	beq $t1, $t2, label816
	j label817
label816:
	li $t0, 1
	sw $t0, -5628($fp)
label817:
	addi $sp, $sp, -4
	lw $t0, -5508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5628($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5656($fp)
	addi $sp, $sp, 20
	lw $t1, -5504($fp)
	lw $t2, -5656($fp)
	beq $t1, $t2, label798
	j label802
label802:
	lw $t0, -220($fp)
	sw $t0, -5660($fp)
	lw $t0, -520($fp)
	sw $t0, -5664($fp)
	lw $t0, -5660($fp)
	lw $t1, -5664($fp)
	sub $t0, $t0, $t1
	sw $t0, -5668($fp)
	li $t0, 63704
	sw $t0, -5672($fp)
	lw $t1, -5668($fp)
	lw $t2, -5672($fp)
	beq $t1, $t2, label798
	j label801
label801:
	li $t0, 0
	sw $t0, -5676($fp)
	li $t0, 42621
	sw $t0, -5680($fp)
	lw $t1, -5680($fp)
	li $t2, 0
	bne $t1, $t2, label819
	j label818
label818:
	li $t0, 1
	sw $t0, -5676($fp)
label819:
	li $t0, 19219
	sw $t0, -5684($fp)
	lw $t0, -5676($fp)
	lw $t1, -5684($fp)
	sub $t0, $t0, $t1
	sw $t0, -5688($fp)
	li $t0, 59034
	sw $t0, -5692($fp)
	li $t0, 46889
	sw $t0, -5696($fp)
	lw $t0, -5692($fp)
	lw $t1, -5696($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5700($fp)
	lw $t1, -5688($fp)
	lw $t2, -5700($fp)
	bge $t1, $t2, label798
	j label799
label798:
	addi $t0, $fp, -3376
	sw $t0, -5704($fp)
	li $t0, 0
	sw $t0, -5708($fp)
	addi $t0, $fp, -80
	sw $t0, -5712($fp)
	lw $t0, -3464($fp)
	sw $t0, -5716($fp)
	li $t0, 4
	lw $t1, -5716($fp)
	mul $t0, $t0, $t1
	sw $t0, -5720($fp)
	lw $t0, -5720($fp)
	lw $t1, -5712($fp)
	add $t0, $t0, $t1
	sw $t0, -5724($fp)
	lw $t0, -5724($fp)
	lw $t1, 0($t0)
	sw $t1, -5728($fp)
	li $t0, 0
	sw $t0, -5732($fp)
	li $t0, 39328
	sw $t0, -5736($fp)
	li $t0, 20140
	sw $t0, -5740($fp)
	lw $t1, -5736($fp)
	lw $t2, -5740($fp)
	beq $t1, $t2, label822
	j label824
label824:
	li $t0, 14520
	sw $t0, -5744($fp)
	lw $t1, -5744($fp)
	li $t2, 0
	bne $t1, $t2, label822
	j label823
label822:
	li $t0, 1
	sw $t0, -5732($fp)
label823:
	lw $t0, -1072($fp)
	sw $t0, -5748($fp)
	li $t0, 0
	sw $t0, -5752($fp)
	lw $t0, -340($fp)
	sw $t0, -5756($fp)
	lw $t1, -5756($fp)
	li $t2, 0
	bne $t1, $t2, label826
	j label825
label825:
	li $t0, 1
	sw $t0, -5752($fp)
label826:
	li $t0, 0
	lw $t1, -5752($fp)
	sub $t0, $t0, $t1
	sw $t0, -5760($fp)
	addi $sp, $sp, -4
	lw $t0, -5732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5760($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5764($fp)
	addi $sp, $sp, 16
	lw $t1, -5728($fp)
	lw $t2, -5764($fp)
	bgt $t1, $t2, label820
	j label821
label820:
	li $t0, 1
	sw $t0, -5708($fp)
label821:
	li $t0, 4
	lw $t1, -5708($fp)
	mul $t0, $t0, $t1
	sw $t0, -5768($fp)
	lw $t0, -5768($fp)
	lw $t1, -5704($fp)
	add $t0, $t0, $t1
	sw $t0, -5772($fp)
	lw $t0, -5772($fp)
	lw $t1, 0($t0)
	sw $t1, -5776($fp)
	j label800
label799:
	lw $t0, -1156($fp)
	sw $t0, -5780($fp)
	addi $t0, $fp, -3392
	sw $t0, -5784($fp)
	li $t0, 45764
	sw $t0, -5788($fp)
	lw $t0, -1048($fp)
	sw $t0, -5792($fp)
	lw $t0, -5788($fp)
	lw $t1, -5792($fp)
	sub $t0, $t0, $t1
	sw $t0, -5796($fp)
	li $t0, 4
	lw $t1, -5796($fp)
	mul $t0, $t0, $t1
	sw $t0, -5800($fp)
	lw $t0, -5800($fp)
	lw $t1, -5784($fp)
	add $t0, $t0, $t1
	sw $t0, -5804($fp)
	lw $t0, -5804($fp)
	lw $t1, 0($t0)
	sw $t1, -5808($fp)
	lw $t0, -5780($fp)
	lw $t1, -5808($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5812($fp)
label800:
	j label790
label789:
	lw $t0, -3440($fp)
	sw $t0, -5816($fp)
	lw $t1, -5816($fp)
	li $t2, 0
	bne $t1, $t2, label827
	j label828
label827:
	li $t0, 0
	sw $t0, -5820($fp)
	lw $t0, -4144($fp)
	sw $t0, -5824($fp)
	lw $t0, -520($fp)
	sw $t0, -5828($fp)
	lw $t0, -5824($fp)
	lw $t1, -5828($fp)
	mul $t0, $t0, $t1
	sw $t0, -5832($fp)
	li $t0, 0
	sw $t0, -5836($fp)
	li $t0, 0
	sw $t0, -5840($fp)
	li $t0, 0
	sw $t0, -5844($fp)
	li $t0, 41849
	sw $t0, -5848($fp)
	li $t0, 8180
	sw $t0, -5852($fp)
	lw $t1, -5848($fp)
	lw $t2, -5852($fp)
	blt $t1, $t2, label837
	j label838
label837:
	li $t0, 1
	sw $t0, -5844($fp)
label838:
	lw $t0, -1048($fp)
	sw $t0, -5856($fp)
	lw $t1, -5844($fp)
	lw $t2, -5856($fp)
	bgt $t1, $t2, label835
	j label836
label835:
	li $t0, 1
	sw $t0, -5840($fp)
label836:
	li $t0, 8335
	sw $t0, -5860($fp)
	li $t0, 65524
	sw $t0, -5864($fp)
	lw $t0, -5860($fp)
	lw $t1, -5864($fp)
	mul $t0, $t0, $t1
	sw $t0, -5868($fp)
	li $t0, 0
	sw $t0, -5872($fp)
	li $t0, 0
	sw $t0, -5876($fp)
	li $t0, 12955
	sw $t0, -5880($fp)
	li $t0, 18506
	sw $t0, -5884($fp)
	lw $t1, -5880($fp)
	lw $t2, -5884($fp)
	bne $t1, $t2, label841
	j label842
label841:
	li $t0, 1
	sw $t0, -5876($fp)
label842:
	li $t0, 38852
	sw $t0, -5888($fp)
	lw $t1, -5876($fp)
	lw $t2, -5888($fp)
	bne $t1, $t2, label839
	j label840
label839:
	li $t0, 1
	sw $t0, -5872($fp)
label840:
	addi $sp, $sp, -4
	lw $t0, -5840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5872($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5892($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -24
	sw $t0, -5896($fp)
	lw $t0, -4396($fp)
	sw $t0, -5900($fp)
	li $t0, 4
	lw $t1, -5900($fp)
	mul $t0, $t0, $t1
	sw $t0, -5904($fp)
	lw $t0, -5904($fp)
	lw $t1, -5896($fp)
	add $t0, $t0, $t1
	sw $t0, -5908($fp)
	lw $t0, -5908($fp)
	lw $t1, 0($t0)
	sw $t1, -5912($fp)
	lw $t0, -184($fp)
	sw $t0, -5916($fp)
	lw $t0, -5912($fp)
	lw $t1, -5916($fp)
	add $t0, $t0, $t1
	sw $t0, -5920($fp)
	li $t0, 0
	sw $t0, -5924($fp)
	lw $t0, -4348($fp)
	sw $t0, -5928($fp)
	li $t0, 7984
	sw $t0, -5932($fp)
	lw $t0, -5928($fp)
	lw $t1, -5932($fp)
	add $t0, $t0, $t1
	sw $t0, -5936($fp)
	lw $t1, -5936($fp)
	li $t2, 0
	bne $t1, $t2, label845
	j label844
label845:
	li $t0, 59808
	sw $t0, -5940($fp)
	lw $t1, -5940($fp)
	li $t2, 0
	bne $t1, $t2, label843
	j label844
label843:
	li $t0, 1
	sw $t0, -5924($fp)
label844:
	addi $sp, $sp, -4
	lw $t0, -5892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5924($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5944($fp)
	addi $sp, $sp, 16
	lw $t1, -5944($fp)
	li $t2, 0
	bne $t1, $t2, label834
	j label833
label833:
	li $t0, 1
	sw $t0, -5836($fp)
label834:
	lw $t0, -5832($fp)
	lw $t1, -5836($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5948($fp)
	lw $t1, -5948($fp)
	li $t2, 0
	bne $t1, $t2, label830
	j label832
label832:
	addi $t0, $fp, -80
	sw $t0, -5952($fp)
	li $t0, 0
	sw $t0, -5956($fp)
	lw $t0, -184($fp)
	sw $t0, -5960($fp)
	lw $t1, -5960($fp)
	li $t2, 0
	bne $t1, $t2, label848
	j label847
label848:
	li $t0, 22672
	sw $t0, -5964($fp)
	lw $t1, -5964($fp)
	li $t2, 0
	bne $t1, $t2, label846
	j label847
label846:
	li $t0, 1
	sw $t0, -5956($fp)
label847:
	li $t0, 4
	lw $t1, -5956($fp)
	mul $t0, $t0, $t1
	sw $t0, -5968($fp)
	lw $t0, -5968($fp)
	lw $t1, -5952($fp)
	add $t0, $t0, $t1
	sw $t0, -5972($fp)
	lw $t0, -5972($fp)
	lw $t1, 0($t0)
	sw $t1, -5976($fp)
	lw $t1, -5976($fp)
	li $t2, 0
	bne $t1, $t2, label830
	j label831
label830:
	li $t0, 1
	sw $t0, -5820($fp)
label831:
	j label829
label828:
	li $t0, 0
	sw $t0, -5980($fp)
	lw $t0, -436($fp)
	sw $t0, -5984($fp)
	li $t0, 0
	sw $t0, -5988($fp)
	li $t0, 0
	sw $t0, -5992($fp)
	li $t0, 40055
	sw $t0, -5996($fp)
	lw $t0, -3776($fp)
	sw $t0, -6000($fp)
	lw $t1, -5996($fp)
	lw $t2, -6000($fp)
	ble $t1, $t2, label853
	j label854
label853:
	li $t0, 1
	sw $t0, -5992($fp)
label854:
	lw $t0, -988($fp)
	sw $t0, -6004($fp)
	lw $t1, -5992($fp)
	lw $t2, -6004($fp)
	beq $t1, $t2, label851
	j label852
label851:
	li $t0, 1
	sw $t0, -5988($fp)
label852:
	addi $t0, $fp, -80
	sw $t0, -6008($fp)
	li $t0, 0
	sw $t0, -6012($fp)
	li $t0, 4
	lw $t1, -6012($fp)
	mul $t0, $t0, $t1
	sw $t0, -6016($fp)
	lw $t0, -6016($fp)
	lw $t1, -6008($fp)
	add $t0, $t0, $t1
	sw $t0, -6020($fp)
	lw $t0, -6020($fp)
	lw $t1, 0($t0)
	sw $t1, -6024($fp)
	addi $sp, $sp, -4
	lw $t0, -5984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6024($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6028($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -12
	sw $t0, -6032($fp)
	li $t0, 2475
	sw $t0, -6036($fp)
	lw $t0, -4108($fp)
	sw $t0, -6040($fp)
	lw $t0, -6036($fp)
	lw $t1, -6040($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6044($fp)
	li $t0, 4
	lw $t1, -6044($fp)
	mul $t0, $t0, $t1
	sw $t0, -6048($fp)
	lw $t0, -6048($fp)
	lw $t1, -6032($fp)
	add $t0, $t0, $t1
	sw $t0, -6052($fp)
	lw $t0, -6052($fp)
	lw $t1, 0($t0)
	sw $t1, -6056($fp)
	lw $t1, -6028($fp)
	lw $t2, -6056($fp)
	blt $t1, $t2, label849
	j label850
label849:
	li $t0, 1
	sw $t0, -5980($fp)
label850:
label829:
label790:
label855:
	li $t0, 0
	sw $t0, -6060($fp)
	lw $t0, -796($fp)
	sw $t0, -6064($fp)
	lw $t1, -6064($fp)
	li $t2, 0
	bne $t1, $t2, label860
	j label859
label859:
	li $t0, 1
	sw $t0, -6060($fp)
label860:
	lw $t0, -244($fp)
	sw $t0, -6068($fp)
	li $t0, 0
	sw $t0, -6072($fp)
	li $t0, 0
	sw $t0, -6076($fp)
	lw $t0, -1000($fp)
	sw $t0, -6080($fp)
	li $t0, 9070
	sw $t0, -6084($fp)
	lw $t1, -6080($fp)
	lw $t2, -6084($fp)
	bge $t1, $t2, label863
	j label864
label863:
	li $t0, 1
	sw $t0, -6076($fp)
label864:
	li $t0, 16221
	sw $t0, -6088($fp)
	lw $t1, -6076($fp)
	lw $t2, -6088($fp)
	bge $t1, $t2, label861
	j label862
label861:
	li $t0, 1
	sw $t0, -6072($fp)
label862:
	li $t0, 0
	sw $t0, -6092($fp)
	li $t0, 0
	sw $t0, -6096($fp)
	lw $t0, -4396($fp)
	sw $t0, -6100($fp)
	li $t0, 51942
	sw $t0, -6104($fp)
	lw $t1, -6100($fp)
	lw $t2, -6104($fp)
	ble $t1, $t2, label867
	j label868
label867:
	li $t0, 1
	sw $t0, -6096($fp)
label868:
	li $t0, 23935
	sw $t0, -6108($fp)
	lw $t1, -6096($fp)
	lw $t2, -6108($fp)
	blt $t1, $t2, label865
	j label866
label865:
	li $t0, 1
	sw $t0, -6092($fp)
label866:
	addi $sp, $sp, -4
	lw $t0, -6060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6092($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6112($fp)
	addi $sp, $sp, 20
	lw $t0, -1096($fp)
	sw $t0, -6116($fp)
	lw $t0, -6112($fp)
	lw $t1, -6116($fp)
	mul $t0, $t0, $t1
	sw $t0, -6120($fp)
	addi $t0, $fp, -80
	sw $t0, -6124($fp)
	lw $t0, -1012($fp)
	sw $t0, -6128($fp)
	li $t0, 4
	lw $t1, -6128($fp)
	mul $t0, $t0, $t1
	sw $t0, -6132($fp)
	lw $t0, -6132($fp)
	lw $t1, -6124($fp)
	add $t0, $t0, $t1
	sw $t0, -6136($fp)
	lw $t0, -6136($fp)
	lw $t1, 0($t0)
	sw $t1, -6140($fp)
	lw $t0, -6120($fp)
	lw $t1, -6140($fp)
	mul $t0, $t0, $t1
	sw $t0, -6144($fp)
	li $t0, 0
	sw $t0, -6148($fp)
	li $t0, 12547
	sw $t0, -6152($fp)
	li $t0, 25990
	sw $t0, -6156($fp)
	lw $t0, -6152($fp)
	lw $t1, -6156($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6160($fp)
	lw $t0, -964($fp)
	sw $t0, -6164($fp)
	lw $t0, -6160($fp)
	lw $t1, -6164($fp)
	add $t0, $t0, $t1
	sw $t0, -6168($fp)
	li $t0, 31725
	sw $t0, -6172($fp)
	li $t0, 31194
	sw $t0, -6176($fp)
	li $t0, 52198
	sw $t0, -6180($fp)
	lw $t0, -6176($fp)
	lw $t1, -6180($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6184($fp)
	li $t0, 0
	lw $t1, -6184($fp)
	sub $t0, $t0, $t1
	sw $t0, -6188($fp)
	addi $sp, $sp, -4
	lw $t0, -6168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6188($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6192($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -6196($fp)
	li $t0, 54108
	sw $t0, -6200($fp)
	li $t0, 32979
	sw $t0, -6204($fp)
	lw $t0, -6200($fp)
	lw $t1, -6204($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6208($fp)
	li $t0, 38227
	sw $t0, -6212($fp)
	lw $t1, -6208($fp)
	lw $t2, -6212($fp)
	bgt $t1, $t2, label871
	j label872
label871:
	li $t0, 1
	sw $t0, -6196($fp)
label872:
	li $t0, 0
	sw $t0, -6216($fp)
	li $t0, 40058
	sw $t0, -6220($fp)
	lw $t1, -6220($fp)
	li $t2, 0
	bne $t1, $t2, label874
	j label873
label873:
	li $t0, 1
	sw $t0, -6216($fp)
label874:
	addi $sp, $sp, -4
	lw $t0, -6192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6216($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6224($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -6228($fp)
	li $t0, 55925
	sw $t0, -6232($fp)
	lw $t1, -6232($fp)
	li $t2, 0
	bne $t1, $t2, label876
	j label875
label875:
	li $t0, 1
	sw $t0, -6228($fp)
label876:
	lw $t0, -3464($fp)
	sw $t0, -6236($fp)
	lw $t0, -6228($fp)
	lw $t1, -6236($fp)
	add $t0, $t0, $t1
	sw $t0, -6240($fp)
	li $t0, 0
	sw $t0, -6244($fp)
	lw $t0, -820($fp)
	sw $t0, -6248($fp)
	lw $t1, -6248($fp)
	li $t2, 0
	bne $t1, $t2, label880
	j label879
label880:
	lw $t0, 8($fp)
	sw $t0, -6252($fp)
	lw $t1, -6252($fp)
	li $t2, 0
	bne $t1, $t2, label877
	j label879
label879:
	lw $t0, -1048($fp)
	sw $t0, -6256($fp)
	lw $t1, -6256($fp)
	li $t2, 0
	bne $t1, $t2, label877
	j label878
label877:
	li $t0, 1
	sw $t0, -6244($fp)
label878:
	addi $sp, $sp, -4
	lw $t0, -6224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6244($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6260($fp)
	addi $sp, $sp, 16
	lw $t1, -6260($fp)
	li $t2, 0
	bne $t1, $t2, label870
	j label869
label869:
	li $t0, 1
	sw $t0, -6148($fp)
label870:
	lw $t0, -6144($fp)
	lw $t1, -6148($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6264($fp)
	lw $t1, -6264($fp)
	li $t2, 0
	bne $t1, $t2, label858
	j label857
label858:
	lw $t0, -1036($fp)
	sw $t0, -6268($fp)
	lw $t1, -6268($fp)
	li $t2, 0
	bne $t1, $t2, label856
	j label857
label856:
	li $t0, 0
	sw $t0, -6272($fp)
	lw $t0, -172($fp)
	sw $t0, -6276($fp)
	lw $t0, -1072($fp)
	sw $t0, -6280($fp)
	lw $t0, -6276($fp)
	lw $t1, -6280($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6284($fp)
	lw $t0, -1120($fp)
	sw $t0, -6288($fp)
	lw $t1, -6284($fp)
	lw $t2, -6288($fp)
	beq $t1, $t2, label884
	j label885
label884:
	li $t0, 1
	sw $t0, -6272($fp)
label885:
	li $t0, 0
	sw $t0, -6292($fp)
	lw $t0, -808($fp)
	sw $t0, -6296($fp)
	lw $t1, -6296($fp)
	li $t2, 0
	bne $t1, $t2, label886
	j label889
label889:
	lw $t0, -1132($fp)
	sw $t0, -6300($fp)
	lw $t1, -6300($fp)
	li $t2, 0
	bne $t1, $t2, label886
	j label888
label888:
	lw $t0, -1084($fp)
	sw $t0, -6304($fp)
	lw $t1, -6304($fp)
	li $t2, 0
	bne $t1, $t2, label886
	j label887
label886:
	li $t0, 1
	sw $t0, -6292($fp)
label887:
	addi $t0, $fp, -24
	sw $t0, -6308($fp)
	lw $t0, -1156($fp)
	sw $t0, -6312($fp)
	li $t0, 4
	lw $t1, -6312($fp)
	mul $t0, $t0, $t1
	sw $t0, -6316($fp)
	lw $t0, -6316($fp)
	lw $t1, -6308($fp)
	add $t0, $t0, $t1
	sw $t0, -6320($fp)
	lw $t0, -6320($fp)
	lw $t1, 0($t0)
	sw $t1, -6324($fp)
	addi $sp, $sp, -4
	lw $t0, -6272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6324($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6328($fp)
	addi $sp, $sp, 16
	lw $t0, -952($fp)
	sw $t0, -6332($fp)
	lw $t1, -6328($fp)
	lw $t2, -6332($fp)
	ble $t1, $t2, label881
	j label882
label881:
	li $t0, 0
	sw $t0, -6336($fp)
	li $t0, 51866
	sw $t0, -6340($fp)
	li $t0, 0
	sw $t0, -6344($fp)
	lw $t0, -292($fp)
	sw $t0, -6348($fp)
	lw $t0, -3776($fp)
	sw $t0, -6352($fp)
	lw $t1, -6348($fp)
	lw $t2, -6352($fp)
	beq $t1, $t2, label892
	j label894
label894:
	lw $t0, -1060($fp)
	sw $t0, -6356($fp)
	lw $t1, -6356($fp)
	li $t2, 0
	bne $t1, $t2, label892
	j label893
label892:
	li $t0, 1
	sw $t0, -6344($fp)
label893:
	lw $t0, -4384($fp)
	sw $t0, -6360($fp)
	li $t0, 27067
	sw $t0, -6364($fp)
	addi $t0, $fp, -32
	sw $t0, -6368($fp)
	lw $t0, -952($fp)
	sw $t0, -6372($fp)
	li $t0, 4
	lw $t1, -6372($fp)
	mul $t0, $t0, $t1
	sw $t0, -6376($fp)
	lw $t0, -6376($fp)
	lw $t1, -6368($fp)
	add $t0, $t0, $t1
	sw $t0, -6380($fp)
	lw $t0, -6380($fp)
	lw $t1, 0($t0)
	sw $t1, -6384($fp)
	lw $t0, -940($fp)
	sw $t0, -6388($fp)
	lw $t0, -6388($fp)
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	sw $t0, -6392($fp)
	addi $sp, $sp, -4
	lw $t0, -6364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6392($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6396($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -6344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6396($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6400($fp)
	addi $sp, $sp, 16
	lw $t0, -6340($fp)
	lw $t1, -6400($fp)
	mul $t0, $t0, $t1
	sw $t0, -6404($fp)
	addi $t0, $fp, -3376
	sw $t0, -6408($fp)
	lw $t0, -3452($fp)
	sw $t0, -6412($fp)
	li $t0, 4
	lw $t1, -6412($fp)
	mul $t0, $t0, $t1
	sw $t0, -6416($fp)
	lw $t0, -6416($fp)
	lw $t1, -6408($fp)
	add $t0, $t0, $t1
	sw $t0, -6420($fp)
	lw $t0, -6420($fp)
	lw $t1, 0($t0)
	sw $t1, -6424($fp)
	li $t0, 6218
	sw $t0, -6428($fp)
	lw $t0, -844($fp)
	sw $t0, -6432($fp)
	lw $t0, -6428($fp)
	lw $t1, -6432($fp)
	mul $t0, $t0, $t1
	sw $t0, -6436($fp)
	lw $t0, -6424($fp)
	lw $t1, -6436($fp)
	sub $t0, $t0, $t1
	sw $t0, -6440($fp)
	lw $t1, -6404($fp)
	lw $t2, -6440($fp)
	ble $t1, $t2, label890
	j label891
label890:
	li $t0, 1
	sw $t0, -6336($fp)
label891:
	lw $ra, -4($fp)
	lw $v0, -6336($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label883
label882:
	li $t0, 0
	sw $t0, -6444($fp)
	lw $t0, -808($fp)
	sw $t0, -6448($fp)
	li $t0, 59850
	sw $t0, -6452($fp)
	li $t0, 0
	lw $t1, -6452($fp)
	sub $t0, $t0, $t1
	sw $t0, -6456($fp)
	lw $t1, -6448($fp)
	lw $t2, -6456($fp)
	ble $t1, $t2, label895
	j label896
label895:
	li $t0, 1
	sw $t0, -6444($fp)
label896:
label883:
	j label855
label857:
	lw $t0, -3440($fp)
	sw $t0, -6460($fp)
	lw $t0, -6460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3452($fp)
	sw $t0, -6464($fp)
	lw $t0, -6464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3464($fp)
	sw $t0, -6468($fp)
	lw $t0, -6468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3476($fp)
	sw $t0, -6472($fp)
	lw $t0, -6472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3352
	sw $t0, -6476($fp)
	li $t0, 0
	sw $t0, -6480($fp)
	li $t0, 4
	lw $t1, -6480($fp)
	mul $t0, $t0, $t1
	sw $t0, -6484($fp)
	lw $t0, -6484($fp)
	lw $t1, -6476($fp)
	add $t0, $t0, $t1
	sw $t0, -6488($fp)
	lw $t0, -6488($fp)
	lw $t1, 0($t0)
	sw $t1, -6492($fp)
	lw $t0, -6492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3376
	sw $t0, -6496($fp)
	li $t0, 0
	sw $t0, -6500($fp)
	li $t0, 4
	lw $t1, -6500($fp)
	mul $t0, $t0, $t1
	sw $t0, -6504($fp)
	lw $t0, -6504($fp)
	lw $t1, -6496($fp)
	add $t0, $t0, $t1
	sw $t0, -6508($fp)
	lw $t0, -6508($fp)
	lw $t1, 0($t0)
	sw $t1, -6512($fp)
	lw $t0, -6512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3376
	sw $t0, -6516($fp)
	li $t0, 1
	sw $t0, -6520($fp)
	li $t0, 4
	lw $t1, -6520($fp)
	mul $t0, $t0, $t1
	sw $t0, -6524($fp)
	lw $t0, -6524($fp)
	lw $t1, -6516($fp)
	add $t0, $t0, $t1
	sw $t0, -6528($fp)
	lw $t0, -6528($fp)
	lw $t1, 0($t0)
	sw $t1, -6532($fp)
	lw $t0, -6532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3376
	sw $t0, -6536($fp)
	li $t0, 2
	sw $t0, -6540($fp)
	li $t0, 4
	lw $t1, -6540($fp)
	mul $t0, $t0, $t1
	sw $t0, -6544($fp)
	lw $t0, -6544($fp)
	lw $t1, -6536($fp)
	add $t0, $t0, $t1
	sw $t0, -6548($fp)
	lw $t0, -6548($fp)
	lw $t1, 0($t0)
	sw $t1, -6552($fp)
	lw $t0, -6552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3376
	sw $t0, -6556($fp)
	li $t0, 3
	sw $t0, -6560($fp)
	li $t0, 4
	lw $t1, -6560($fp)
	mul $t0, $t0, $t1
	sw $t0, -6564($fp)
	lw $t0, -6564($fp)
	lw $t1, -6556($fp)
	add $t0, $t0, $t1
	sw $t0, -6568($fp)
	lw $t0, -6568($fp)
	lw $t1, 0($t0)
	sw $t1, -6572($fp)
	lw $t0, -6572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3376
	sw $t0, -6576($fp)
	li $t0, 4
	sw $t0, -6580($fp)
	li $t0, 4
	lw $t1, -6580($fp)
	mul $t0, $t0, $t1
	sw $t0, -6584($fp)
	lw $t0, -6584($fp)
	lw $t1, -6576($fp)
	add $t0, $t0, $t1
	sw $t0, -6588($fp)
	lw $t0, -6588($fp)
	lw $t1, 0($t0)
	sw $t1, -6592($fp)
	lw $t0, -6592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3376
	sw $t0, -6596($fp)
	li $t0, 5
	sw $t0, -6600($fp)
	li $t0, 4
	lw $t1, -6600($fp)
	mul $t0, $t0, $t1
	sw $t0, -6604($fp)
	lw $t0, -6604($fp)
	lw $t1, -6596($fp)
	add $t0, $t0, $t1
	sw $t0, -6608($fp)
	lw $t0, -6608($fp)
	lw $t1, 0($t0)
	sw $t1, -6612($fp)
	lw $t0, -6612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3656($fp)
	sw $t0, -6616($fp)
	lw $t0, -6616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3668($fp)
	sw $t0, -6620($fp)
	lw $t0, -6620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3392
	sw $t0, -6624($fp)
	li $t0, 0
	sw $t0, -6628($fp)
	li $t0, 4
	lw $t1, -6628($fp)
	mul $t0, $t0, $t1
	sw $t0, -6632($fp)
	lw $t0, -6632($fp)
	lw $t1, -6624($fp)
	add $t0, $t0, $t1
	sw $t0, -6636($fp)
	lw $t0, -6636($fp)
	lw $t1, 0($t0)
	sw $t1, -6640($fp)
	lw $t0, -6640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3392
	sw $t0, -6644($fp)
	li $t0, 1
	sw $t0, -6648($fp)
	li $t0, 4
	lw $t1, -6648($fp)
	mul $t0, $t0, $t1
	sw $t0, -6652($fp)
	lw $t0, -6652($fp)
	lw $t1, -6644($fp)
	add $t0, $t0, $t1
	sw $t0, -6656($fp)
	lw $t0, -6656($fp)
	lw $t1, 0($t0)
	sw $t1, -6660($fp)
	lw $t0, -6660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3392
	sw $t0, -6664($fp)
	li $t0, 2
	sw $t0, -6668($fp)
	li $t0, 4
	lw $t1, -6668($fp)
	mul $t0, $t0, $t1
	sw $t0, -6672($fp)
	lw $t0, -6672($fp)
	lw $t1, -6664($fp)
	add $t0, $t0, $t1
	sw $t0, -6676($fp)
	lw $t0, -6676($fp)
	lw $t1, 0($t0)
	sw $t1, -6680($fp)
	lw $t0, -6680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3392
	sw $t0, -6684($fp)
	li $t0, 3
	sw $t0, -6688($fp)
	li $t0, 4
	lw $t1, -6688($fp)
	mul $t0, $t0, $t1
	sw $t0, -6692($fp)
	lw $t0, -6692($fp)
	lw $t1, -6684($fp)
	add $t0, $t0, $t1
	sw $t0, -6696($fp)
	lw $t0, -6696($fp)
	lw $t1, 0($t0)
	sw $t1, -6700($fp)
	lw $t0, -6700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3776($fp)
	sw $t0, -6704($fp)
	lw $t0, -6704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3432
	sw $t0, -6708($fp)
	li $t0, 0
	sw $t0, -6712($fp)
	li $t0, 4
	lw $t1, -6712($fp)
	mul $t0, $t0, $t1
	sw $t0, -6716($fp)
	lw $t0, -6716($fp)
	lw $t1, -6708($fp)
	add $t0, $t0, $t1
	sw $t0, -6720($fp)
	lw $t0, -6720($fp)
	lw $t1, 0($t0)
	sw $t1, -6724($fp)
	lw $t0, -6724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3432
	sw $t0, -6728($fp)
	li $t0, 1
	sw $t0, -6732($fp)
	li $t0, 4
	lw $t1, -6732($fp)
	mul $t0, $t0, $t1
	sw $t0, -6736($fp)
	lw $t0, -6736($fp)
	lw $t1, -6728($fp)
	add $t0, $t0, $t1
	sw $t0, -6740($fp)
	lw $t0, -6740($fp)
	lw $t1, 0($t0)
	sw $t1, -6744($fp)
	lw $t0, -6744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3432
	sw $t0, -6748($fp)
	li $t0, 2
	sw $t0, -6752($fp)
	li $t0, 4
	lw $t1, -6752($fp)
	mul $t0, $t0, $t1
	sw $t0, -6756($fp)
	lw $t0, -6756($fp)
	lw $t1, -6748($fp)
	add $t0, $t0, $t1
	sw $t0, -6760($fp)
	lw $t0, -6760($fp)
	lw $t1, 0($t0)
	sw $t1, -6764($fp)
	lw $t0, -6764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3432
	sw $t0, -6768($fp)
	li $t0, 3
	sw $t0, -6772($fp)
	li $t0, 4
	lw $t1, -6772($fp)
	mul $t0, $t0, $t1
	sw $t0, -6776($fp)
	lw $t0, -6776($fp)
	lw $t1, -6768($fp)
	add $t0, $t0, $t1
	sw $t0, -6780($fp)
	lw $t0, -6780($fp)
	lw $t1, 0($t0)
	sw $t1, -6784($fp)
	lw $t0, -6784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3432
	sw $t0, -6788($fp)
	li $t0, 4
	sw $t0, -6792($fp)
	li $t0, 4
	lw $t1, -6792($fp)
	mul $t0, $t0, $t1
	sw $t0, -6796($fp)
	lw $t0, -6796($fp)
	lw $t1, -6788($fp)
	add $t0, $t0, $t1
	sw $t0, -6800($fp)
	lw $t0, -6800($fp)
	lw $t1, 0($t0)
	sw $t1, -6804($fp)
	lw $t0, -6804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3432
	sw $t0, -6808($fp)
	li $t0, 5
	sw $t0, -6812($fp)
	li $t0, 4
	lw $t1, -6812($fp)
	mul $t0, $t0, $t1
	sw $t0, -6816($fp)
	lw $t0, -6816($fp)
	lw $t1, -6808($fp)
	add $t0, $t0, $t1
	sw $t0, -6820($fp)
	lw $t0, -6820($fp)
	lw $t1, 0($t0)
	sw $t1, -6824($fp)
	lw $t0, -6824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3432
	sw $t0, -6828($fp)
	li $t0, 6
	sw $t0, -6832($fp)
	li $t0, 4
	lw $t1, -6832($fp)
	mul $t0, $t0, $t1
	sw $t0, -6836($fp)
	lw $t0, -6836($fp)
	lw $t1, -6828($fp)
	add $t0, $t0, $t1
	sw $t0, -6840($fp)
	lw $t0, -6840($fp)
	lw $t1, 0($t0)
	sw $t1, -6844($fp)
	lw $t0, -6844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3432
	sw $t0, -6848($fp)
	li $t0, 7
	sw $t0, -6852($fp)
	li $t0, 4
	lw $t1, -6852($fp)
	mul $t0, $t0, $t1
	sw $t0, -6856($fp)
	lw $t0, -6856($fp)
	lw $t1, -6848($fp)
	add $t0, $t0, $t1
	sw $t0, -6860($fp)
	lw $t0, -6860($fp)
	lw $t1, 0($t0)
	sw $t1, -6864($fp)
	lw $t0, -6864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3432
	sw $t0, -6868($fp)
	li $t0, 8
	sw $t0, -6872($fp)
	li $t0, 4
	lw $t1, -6872($fp)
	mul $t0, $t0, $t1
	sw $t0, -6876($fp)
	lw $t0, -6876($fp)
	lw $t1, -6868($fp)
	add $t0, $t0, $t1
	sw $t0, -6880($fp)
	lw $t0, -6880($fp)
	lw $t1, 0($t0)
	sw $t1, -6884($fp)
	lw $t0, -6884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3432
	sw $t0, -6888($fp)
	li $t0, 9
	sw $t0, -6892($fp)
	li $t0, 4
	lw $t1, -6892($fp)
	mul $t0, $t0, $t1
	sw $t0, -6896($fp)
	lw $t0, -6896($fp)
	lw $t1, -6888($fp)
	add $t0, $t0, $t1
	sw $t0, -6900($fp)
	lw $t0, -6900($fp)
	lw $t1, 0($t0)
	sw $t1, -6904($fp)
	lw $t0, -6904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4028($fp)
	sw $t0, -6908($fp)
	lw $t0, -6908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6912($fp)
	li $t0, 0
	sw $t0, -6916($fp)
	li $t0, 0
	sw $t0, -6920($fp)
	lw $t0, -280($fp)
	sw $t0, -6924($fp)
	li $t0, 21340
	sw $t0, -6928($fp)
	lw $t1, -6924($fp)
	lw $t2, -6928($fp)
	bge $t1, $t2, label903
	j label904
label903:
	li $t0, 1
	sw $t0, -6920($fp)
label904:
	li $t0, 19173
	sw $t0, -6932($fp)
	lw $t1, -6920($fp)
	lw $t2, -6932($fp)
	bgt $t1, $t2, label901
	j label902
label901:
	li $t0, 1
	sw $t0, -6916($fp)
label902:
	lw $t0, -1036($fp)
	sw $t0, -6936($fp)
	lw $t1, -6916($fp)
	lw $t2, -6936($fp)
	bgt $t1, $t2, label900
	j label899
label900:
	lw $t0, -484($fp)
	sw $t0, -6940($fp)
	li $t0, 12820
	sw $t0, -6944($fp)
	lw $t0, -6940($fp)
	lw $t1, -6944($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6948($fp)
	li $t0, 60192
	sw $t0, -6952($fp)
	lw $t0, -6948($fp)
	lw $t1, -6952($fp)
	sub $t0, $t0, $t1
	sw $t0, -6956($fp)
	lw $t1, -6956($fp)
	li $t2, 0
	bne $t1, $t2, label897
	j label899
label899:
	li $t0, 27508
	sw $t0, -6960($fp)
	li $t0, 0
	sw $t0, -6964($fp)
	lw $t0, -820($fp)
	sw $t0, -6968($fp)
	li $t0, 0
	sw $t0, -6972($fp)
	li $t0, 38752
	sw $t0, -6976($fp)
	lw $t1, -6976($fp)
	li $t2, 0
	bne $t1, $t2, label910
	j label909
label910:
	lw $t0, -472($fp)
	sw $t0, -6980($fp)
	lw $t1, -6980($fp)
	li $t2, 0
	bne $t1, $t2, label908
	j label909
label908:
	li $t0, 1
	sw $t0, -6972($fp)
label909:
	li $t0, 0
	sw $t0, -6984($fp)
	li $t0, 23992
	sw $t0, -6988($fp)
	lw $t1, -6988($fp)
	li $t2, 0
	bne $t1, $t2, label914
	j label913
label914:
	lw $t0, -3668($fp)
	sw $t0, -6992($fp)
	lw $t1, -6992($fp)
	li $t2, 0
	bne $t1, $t2, label911
	j label913
label913:
	li $t0, 10000
	sw $t0, -6996($fp)
	lw $t1, -6996($fp)
	li $t2, 0
	bne $t1, $t2, label911
	j label912
label911:
	li $t0, 1
	sw $t0, -6984($fp)
label912:
	addi $sp, $sp, -4
	lw $t0, -6968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6984($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7000($fp)
	addi $sp, $sp, 16
	lw $t1, -7000($fp)
	li $t2, 0
	bne $t1, $t2, label905
	j label907
label907:
	li $t0, 10398
	sw $t0, -7004($fp)
	lw $t1, -7004($fp)
	li $t2, 0
	bne $t1, $t2, label905
	j label906
label905:
	li $t0, 1
	sw $t0, -6964($fp)
label906:
	li $t0, 0
	sw $t0, -7008($fp)
	addi $t0, $fp, -12
	sw $t0, -7012($fp)
	li $t0, 1
	sw $t0, -7016($fp)
	li $t0, 4
	lw $t1, -7016($fp)
	mul $t0, $t0, $t1
	sw $t0, -7020($fp)
	lw $t0, -7020($fp)
	lw $t1, -7012($fp)
	add $t0, $t0, $t1
	sw $t0, -7024($fp)
	lw $t0, -7024($fp)
	lw $t1, 0($t0)
	sw $t1, -7028($fp)
	lw $t1, -7028($fp)
	li $t2, 0
	bne $t1, $t2, label915
	j label917
label917:
	li $t0, 36277
	sw $t0, -7032($fp)
	lw $t1, -7032($fp)
	li $t2, 0
	bne $t1, $t2, label915
	j label916
label915:
	li $t0, 1
	sw $t0, -7008($fp)
label916:
	li $t0, 0
	sw $t0, -7036($fp)
	lw $t0, -3464($fp)
	sw $t0, -7040($fp)
	lw $t1, -7040($fp)
	li $t2, 0
	bne $t1, $t2, label920
	j label919
label920:
	lw $t0, -3656($fp)
	sw $t0, -7044($fp)
	lw $t1, -7044($fp)
	li $t2, 0
	bne $t1, $t2, label918
	j label919
label918:
	li $t0, 1
	sw $t0, -7036($fp)
label919:
	li $t0, 0
	sw $t0, -7048($fp)
	li $t0, 12808
	sw $t0, -7052($fp)
	li $t0, 0
	lw $t1, -7052($fp)
	sub $t0, $t0, $t1
	sw $t0, -7056($fp)
	li $t0, 36505
	sw $t0, -7060($fp)
	lw $t1, -7056($fp)
	lw $t2, -7060($fp)
	blt $t1, $t2, label921
	j label922
label921:
	li $t0, 1
	sw $t0, -7048($fp)
label922:
	addi $sp, $sp, -4
	lw $t0, -6964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7048($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7064($fp)
	addi $sp, $sp, 20
	lw $t0, -6960($fp)
	lw $t1, -7064($fp)
	add $t0, $t0, $t1
	sw $t0, -7068($fp)
	lw $t1, -7068($fp)
	li $t2, 0
	bne $t1, $t2, label897
	j label898
label897:
	li $t0, 1
	sw $t0, -6912($fp)
label898:
	lw $ra, -4($fp)
	lw $v0, -6912($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -7072($fp)
	lw $t0, -1012($fp)
	sw $t0, -7076($fp)
	lw $t1, -7076($fp)
	li $t2, 0
	bne $t1, $t2, label923
	j label924
label923:
	li $t0, 1
	sw $t0, -7072($fp)
label924:
	li $t0, 47823
	sw $t0, -7080($fp)
	li $t0, 0
	sw $t0, -7084($fp)
	lw $t0, -316($fp)
	sw $t0, -7088($fp)
	lw $t1, -7088($fp)
	li $t2, 0
	bne $t1, $t2, label925
	j label926
label925:
	li $t0, 1
	sw $t0, -7084($fp)
label926:
	li $t0, 0
	sw $t0, -7092($fp)
	li $t0, 0
	sw $t0, -7096($fp)
	li $t0, 33935
	sw $t0, -7100($fp)
	lw $t1, -7100($fp)
	li $t2, 0
	bne $t1, $t2, label930
	j label929
label929:
	li $t0, 1
	sw $t0, -7096($fp)
label930:
	lw $t0, -4028($fp)
	sw $t0, -7104($fp)
	lw $t1, -7096($fp)
	lw $t2, -7104($fp)
	beq $t1, $t2, label927
	j label928
label927:
	li $t0, 1
	sw $t0, -7092($fp)
label928:
	addi $sp, $sp, -4
	lw $t0, -7072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7092($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7108($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -3392
	sw $t0, -7112($fp)
	li $t0, 0
	sw $t0, -7116($fp)
	li $t0, 4
	lw $t1, -7116($fp)
	mul $t0, $t0, $t1
	sw $t0, -7120($fp)
	lw $t0, -7120($fp)
	lw $t1, -7112($fp)
	add $t0, $t0, $t1
	sw $t0, -7124($fp)
	lw $t0, -7124($fp)
	lw $t1, 0($t0)
	sw $t1, -7128($fp)
	lw $t0, -7108($fp)
	lw $t1, -7128($fp)
	mul $t0, $t0, $t1
	sw $t0, -7132($fp)
	li $t0, 0
	lw $t1, -7132($fp)
	sub $t0, $t0, $t1
	sw $t0, -7136($fp)
	li $t0, 22345
	sw $t0, -7140($fp)
	lw $t0, -7136($fp)
	lw $t1, -7140($fp)
	sub $t0, $t0, $t1
	sw $t0, -7144($fp)
	addi $t0, $fp, -80
	sw $t0, -7148($fp)
	lw $t0, -3452($fp)
	sw $t0, -7152($fp)
	li $t0, 4
	lw $t1, -7152($fp)
	mul $t0, $t0, $t1
	sw $t0, -7156($fp)
	lw $t0, -7156($fp)
	lw $t1, -7148($fp)
	add $t0, $t0, $t1
	sw $t0, -7160($fp)
	lw $t0, -7160($fp)
	lw $t1, 0($t0)
	sw $t1, -7164($fp)
	li $t0, 0
	lw $t1, -7164($fp)
	sub $t0, $t0, $t1
	sw $t0, -7168($fp)
	lw $t0, -7144($fp)
	lw $t1, -7168($fp)
	add $t0, $t0, $t1
	sw $t0, -7172($fp)
	lw $ra, -4($fp)
	lw $v0, -7172($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -988($fp)
	sw $t0, -7176($fp)
	lw $t0, -3440($fp)
	sw $t0, -7180($fp)
	lw $t0, -7180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3452($fp)
	sw $t0, -7184($fp)
	lw $t0, -7184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3464($fp)
	sw $t0, -7188($fp)
	lw $t0, -7188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3476($fp)
	sw $t0, -7192($fp)
	lw $t0, -7192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3352
	sw $t0, -7196($fp)
	li $t0, 0
	sw $t0, -7200($fp)
	li $t0, 4
	lw $t1, -7200($fp)
	mul $t0, $t0, $t1
	sw $t0, -7204($fp)
	lw $t0, -7204($fp)
	lw $t1, -7196($fp)
	add $t0, $t0, $t1
	sw $t0, -7208($fp)
	lw $t0, -7208($fp)
	lw $t1, 0($t0)
	sw $t1, -7212($fp)
	lw $t0, -7212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3376
	sw $t0, -7216($fp)
	li $t0, 0
	sw $t0, -7220($fp)
	li $t0, 4
	lw $t1, -7220($fp)
	mul $t0, $t0, $t1
	sw $t0, -7224($fp)
	lw $t0, -7224($fp)
	lw $t1, -7216($fp)
	add $t0, $t0, $t1
	sw $t0, -7228($fp)
	lw $t0, -7228($fp)
	lw $t1, 0($t0)
	sw $t1, -7232($fp)
	lw $t0, -7232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3376
	sw $t0, -7236($fp)
	li $t0, 1
	sw $t0, -7240($fp)
	li $t0, 4
	lw $t1, -7240($fp)
	mul $t0, $t0, $t1
	sw $t0, -7244($fp)
	lw $t0, -7244($fp)
	lw $t1, -7236($fp)
	add $t0, $t0, $t1
	sw $t0, -7248($fp)
	lw $t0, -7248($fp)
	lw $t1, 0($t0)
	sw $t1, -7252($fp)
	lw $t0, -7252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3376
	sw $t0, -7256($fp)
	li $t0, 2
	sw $t0, -7260($fp)
	li $t0, 4
	lw $t1, -7260($fp)
	mul $t0, $t0, $t1
	sw $t0, -7264($fp)
	lw $t0, -7264($fp)
	lw $t1, -7256($fp)
	add $t0, $t0, $t1
	sw $t0, -7268($fp)
	lw $t0, -7268($fp)
	lw $t1, 0($t0)
	sw $t1, -7272($fp)
	lw $t0, -7272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3376
	sw $t0, -7276($fp)
	li $t0, 3
	sw $t0, -7280($fp)
	li $t0, 4
	lw $t1, -7280($fp)
	mul $t0, $t0, $t1
	sw $t0, -7284($fp)
	lw $t0, -7284($fp)
	lw $t1, -7276($fp)
	add $t0, $t0, $t1
	sw $t0, -7288($fp)
	lw $t0, -7288($fp)
	lw $t1, 0($t0)
	sw $t1, -7292($fp)
	lw $t0, -7292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3376
	sw $t0, -7296($fp)
	li $t0, 4
	sw $t0, -7300($fp)
	li $t0, 4
	lw $t1, -7300($fp)
	mul $t0, $t0, $t1
	sw $t0, -7304($fp)
	lw $t0, -7304($fp)
	lw $t1, -7296($fp)
	add $t0, $t0, $t1
	sw $t0, -7308($fp)
	lw $t0, -7308($fp)
	lw $t1, 0($t0)
	sw $t1, -7312($fp)
	lw $t0, -7312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3376
	sw $t0, -7316($fp)
	li $t0, 5
	sw $t0, -7320($fp)
	li $t0, 4
	lw $t1, -7320($fp)
	mul $t0, $t0, $t1
	sw $t0, -7324($fp)
	lw $t0, -7324($fp)
	lw $t1, -7316($fp)
	add $t0, $t0, $t1
	sw $t0, -7328($fp)
	lw $t0, -7328($fp)
	lw $t1, 0($t0)
	sw $t1, -7332($fp)
	lw $t0, -7332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3656($fp)
	sw $t0, -7336($fp)
	lw $t0, -7336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3668($fp)
	sw $t0, -7340($fp)
	lw $t0, -7340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3392
	sw $t0, -7344($fp)
	li $t0, 0
	sw $t0, -7348($fp)
	li $t0, 4
	lw $t1, -7348($fp)
	mul $t0, $t0, $t1
	sw $t0, -7352($fp)
	lw $t0, -7352($fp)
	lw $t1, -7344($fp)
	add $t0, $t0, $t1
	sw $t0, -7356($fp)
	lw $t0, -7356($fp)
	lw $t1, 0($t0)
	sw $t1, -7360($fp)
	lw $t0, -7360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3392
	sw $t0, -7364($fp)
	li $t0, 1
	sw $t0, -7368($fp)
	li $t0, 4
	lw $t1, -7368($fp)
	mul $t0, $t0, $t1
	sw $t0, -7372($fp)
	lw $t0, -7372($fp)
	lw $t1, -7364($fp)
	add $t0, $t0, $t1
	sw $t0, -7376($fp)
	lw $t0, -7376($fp)
	lw $t1, 0($t0)
	sw $t1, -7380($fp)
	lw $t0, -7380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3392
	sw $t0, -7384($fp)
	li $t0, 2
	sw $t0, -7388($fp)
	li $t0, 4
	lw $t1, -7388($fp)
	mul $t0, $t0, $t1
	sw $t0, -7392($fp)
	lw $t0, -7392($fp)
	lw $t1, -7384($fp)
	add $t0, $t0, $t1
	sw $t0, -7396($fp)
	lw $t0, -7396($fp)
	lw $t1, 0($t0)
	sw $t1, -7400($fp)
	lw $t0, -7400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3392
	sw $t0, -7404($fp)
	li $t0, 3
	sw $t0, -7408($fp)
	li $t0, 4
	lw $t1, -7408($fp)
	mul $t0, $t0, $t1
	sw $t0, -7412($fp)
	lw $t0, -7412($fp)
	lw $t1, -7404($fp)
	add $t0, $t0, $t1
	sw $t0, -7416($fp)
	lw $t0, -7416($fp)
	lw $t1, 0($t0)
	sw $t1, -7420($fp)
	lw $t0, -7420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3776($fp)
	sw $t0, -7424($fp)
	lw $t0, -7424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3432
	sw $t0, -7428($fp)
	li $t0, 0
	sw $t0, -7432($fp)
	li $t0, 4
	lw $t1, -7432($fp)
	mul $t0, $t0, $t1
	sw $t0, -7436($fp)
	lw $t0, -7436($fp)
	lw $t1, -7428($fp)
	add $t0, $t0, $t1
	sw $t0, -7440($fp)
	lw $t0, -7440($fp)
	lw $t1, 0($t0)
	sw $t1, -7444($fp)
	lw $t0, -7444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3432
	sw $t0, -7448($fp)
	li $t0, 1
	sw $t0, -7452($fp)
	li $t0, 4
	lw $t1, -7452($fp)
	mul $t0, $t0, $t1
	sw $t0, -7456($fp)
	lw $t0, -7456($fp)
	lw $t1, -7448($fp)
	add $t0, $t0, $t1
	sw $t0, -7460($fp)
	lw $t0, -7460($fp)
	lw $t1, 0($t0)
	sw $t1, -7464($fp)
	lw $t0, -7464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3432
	sw $t0, -7468($fp)
	li $t0, 2
	sw $t0, -7472($fp)
	li $t0, 4
	lw $t1, -7472($fp)
	mul $t0, $t0, $t1
	sw $t0, -7476($fp)
	lw $t0, -7476($fp)
	lw $t1, -7468($fp)
	add $t0, $t0, $t1
	sw $t0, -7480($fp)
	lw $t0, -7480($fp)
	lw $t1, 0($t0)
	sw $t1, -7484($fp)
	lw $t0, -7484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3432
	sw $t0, -7488($fp)
	li $t0, 3
	sw $t0, -7492($fp)
	li $t0, 4
	lw $t1, -7492($fp)
	mul $t0, $t0, $t1
	sw $t0, -7496($fp)
	lw $t0, -7496($fp)
	lw $t1, -7488($fp)
	add $t0, $t0, $t1
	sw $t0, -7500($fp)
	lw $t0, -7500($fp)
	lw $t1, 0($t0)
	sw $t1, -7504($fp)
	lw $t0, -7504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3432
	sw $t0, -7508($fp)
	li $t0, 4
	sw $t0, -7512($fp)
	li $t0, 4
	lw $t1, -7512($fp)
	mul $t0, $t0, $t1
	sw $t0, -7516($fp)
	lw $t0, -7516($fp)
	lw $t1, -7508($fp)
	add $t0, $t0, $t1
	sw $t0, -7520($fp)
	lw $t0, -7520($fp)
	lw $t1, 0($t0)
	sw $t1, -7524($fp)
	lw $t0, -7524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3432
	sw $t0, -7528($fp)
	li $t0, 5
	sw $t0, -7532($fp)
	li $t0, 4
	lw $t1, -7532($fp)
	mul $t0, $t0, $t1
	sw $t0, -7536($fp)
	lw $t0, -7536($fp)
	lw $t1, -7528($fp)
	add $t0, $t0, $t1
	sw $t0, -7540($fp)
	lw $t0, -7540($fp)
	lw $t1, 0($t0)
	sw $t1, -7544($fp)
	lw $t0, -7544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3432
	sw $t0, -7548($fp)
	li $t0, 6
	sw $t0, -7552($fp)
	li $t0, 4
	lw $t1, -7552($fp)
	mul $t0, $t0, $t1
	sw $t0, -7556($fp)
	lw $t0, -7556($fp)
	lw $t1, -7548($fp)
	add $t0, $t0, $t1
	sw $t0, -7560($fp)
	lw $t0, -7560($fp)
	lw $t1, 0($t0)
	sw $t1, -7564($fp)
	lw $t0, -7564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3432
	sw $t0, -7568($fp)
	li $t0, 7
	sw $t0, -7572($fp)
	li $t0, 4
	lw $t1, -7572($fp)
	mul $t0, $t0, $t1
	sw $t0, -7576($fp)
	lw $t0, -7576($fp)
	lw $t1, -7568($fp)
	add $t0, $t0, $t1
	sw $t0, -7580($fp)
	lw $t0, -7580($fp)
	lw $t1, 0($t0)
	sw $t1, -7584($fp)
	lw $t0, -7584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3432
	sw $t0, -7588($fp)
	li $t0, 8
	sw $t0, -7592($fp)
	li $t0, 4
	lw $t1, -7592($fp)
	mul $t0, $t0, $t1
	sw $t0, -7596($fp)
	lw $t0, -7596($fp)
	lw $t1, -7588($fp)
	add $t0, $t0, $t1
	sw $t0, -7600($fp)
	lw $t0, -7600($fp)
	lw $t1, 0($t0)
	sw $t1, -7604($fp)
	lw $t0, -7604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3432
	sw $t0, -7608($fp)
	li $t0, 9
	sw $t0, -7612($fp)
	li $t0, 4
	lw $t1, -7612($fp)
	mul $t0, $t0, $t1
	sw $t0, -7616($fp)
	lw $t0, -7616($fp)
	lw $t1, -7608($fp)
	add $t0, $t0, $t1
	sw $t0, -7620($fp)
	lw $t0, -7620($fp)
	lw $t1, 0($t0)
	sw $t1, -7624($fp)
	lw $t0, -7624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4028($fp)
	sw $t0, -7628($fp)
	lw $t0, -7628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 15192
	sw $t0, -7632($fp)
	li $t0, 0
	lw $t1, -7632($fp)
	sub $t0, $t0, $t1
	sw $t0, -7636($fp)
	li $t0, 26762
	sw $t0, -7640($fp)
	li $t0, 0
	lw $t1, -7640($fp)
	sub $t0, $t0, $t1
	sw $t0, -7644($fp)
	li $t0, 43965
	sw $t0, -7648($fp)
	li $t0, 0
	lw $t1, -7648($fp)
	sub $t0, $t0, $t1
	sw $t0, -7652($fp)
	li $t0, 0
	sw $t0, -7656($fp)
	li $t0, 60572
	sw $t0, -7660($fp)
	lw $t1, -7660($fp)
	li $t2, 0
	bne $t1, $t2, label934
	j label932
label934:
	lw $t0, 12($fp)
	sw $t0, -7664($fp)
	lw $t1, -7664($fp)
	li $t2, 0
	bne $t1, $t2, label933
	j label932
label933:
	li $t0, 46386
	sw $t0, -7668($fp)
	lw $t1, -7668($fp)
	li $t2, 0
	bne $t1, $t2, label931
	j label932
label931:
	li $t0, 1
	sw $t0, -7656($fp)
label932:
	li $t0, 57303
	sw $t0, -7672($fp)
	lw $t0, -7672($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -7676($fp)
	addi $sp, $sp, -4
	lw $t0, -7644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7676($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7680($fp)
	addi $sp, $sp, 20
	lw $t0, -7636($fp)
	lw $t1, -7680($fp)
	add $t0, $t0, $t1
	sw $t0, -7684($fp)
	lw $t0, -1120($fp)
	sw $t0, -7688($fp)
	lw $t0, -160($fp)
	sw $t0, -7692($fp)
	lw $t0, -7688($fp)
	lw $t1, -7692($fp)
	mul $t0, $t0, $t1
	sw $t0, -7696($fp)
	lw $t0, -3476($fp)
	sw $t0, -7700($fp)
	lw $t0, -7696($fp)
	lw $t1, -7700($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7704($fp)
	li $t0, 0
	sw $t0, -7708($fp)
	li $t0, 58933
	sw $t0, -7712($fp)
	lw $t1, -7712($fp)
	li $t2, 0
	bne $t1, $t2, label936
	j label935
label935:
	li $t0, 1
	sw $t0, -7708($fp)
label936:
	lw $t0, -7704($fp)
	lw $t1, -7708($fp)
	mul $t0, $t0, $t1
	sw $t0, -7716($fp)
	lw $t0, -7684($fp)
	lw $t1, -7716($fp)
	add $t0, $t0, $t1
	sw $t0, -7720($fp)
	lw $ra, -4($fp)
	lw $v0, -7720($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label937:
	addi $t0, $fp, -3352
	sw $t0, -7724($fp)
	li $t0, 0
	sw $t0, -7728($fp)
	li $t0, 4419
	sw $t0, -7732($fp)
	lw $t0, -196($fp)
	sw $t0, -7736($fp)
	lw $t1, -7732($fp)
	lw $t2, -7736($fp)
	beq $t1, $t2, label940
	j label941
label940:
	li $t0, 1
	sw $t0, -7728($fp)
label941:
	li $t0, 4
	lw $t1, -7728($fp)
	mul $t0, $t0, $t1
	sw $t0, -7740($fp)
	lw $t0, -7740($fp)
	lw $t1, -7724($fp)
	add $t0, $t0, $t1
	sw $t0, -7744($fp)
	lw $t0, -7744($fp)
	lw $t1, 0($t0)
	sw $t1, -7748($fp)
	li $t0, 0
	sw $t0, -7752($fp)
	addi $t0, $fp, -3432
	sw $t0, -7756($fp)
	li $t0, 9
	sw $t0, -7760($fp)
	li $t0, 4
	lw $t1, -7760($fp)
	mul $t0, $t0, $t1
	sw $t0, -7764($fp)
	lw $t0, -7764($fp)
	lw $t1, -7756($fp)
	add $t0, $t0, $t1
	sw $t0, -7768($fp)
	lw $t0, -7768($fp)
	lw $t1, 0($t0)
	sw $t1, -7772($fp)
	lw $t1, -7772($fp)
	li $t2, 0
	bne $t1, $t2, label943
	j label942
label942:
	li $t0, 1
	sw $t0, -7752($fp)
label943:
	lw $t0, -7748($fp)
	lw $t1, -7752($fp)
	add $t0, $t0, $t1
	sw $t0, -7776($fp)
	li $t0, 36461
	sw $t0, -7780($fp)
	lw $t0, -7780($fp)
	sw $t0, -3440($fp)
	lw $t0, -3440($fp)
	sw $t0, -7784($fp)
	li $t0, 0
	sw $t0, -7788($fp)
	li $t0, 41805
	sw $t0, -7792($fp)
	li $t0, 29811
	sw $t0, -7796($fp)
	lw $t0, -7792($fp)
	lw $t1, -7796($fp)
	sub $t0, $t0, $t1
	sw $t0, -7800($fp)
	lw $t1, -7800($fp)
	li $t2, 0
	bne $t1, $t2, label944
	j label946
label946:
	li $t0, 20226
	sw $t0, -7804($fp)
	lw $t1, -7804($fp)
	li $t2, 0
	bne $t1, $t2, label944
	j label945
label944:
	li $t0, 1
	sw $t0, -7788($fp)
label945:
	lw $t0, -1084($fp)
	sw $t0, -7808($fp)
	li $t0, 10638
	sw $t0, -7812($fp)
	lw $t0, -7808($fp)
	lw $t1, -7812($fp)
	mul $t0, $t0, $t1
	sw $t0, -7816($fp)
	li $t0, 7406
	sw $t0, -7820($fp)
	lw $t0, -7816($fp)
	lw $t1, -7820($fp)
	mul $t0, $t0, $t1
	sw $t0, -7824($fp)
	addi $sp, $sp, -4
	lw $t0, -7784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7824($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7828($fp)
	addi $sp, $sp, 16
	li $t0, 57320
	sw $t0, -7832($fp)
	li $t0, 0
	lw $t1, -7832($fp)
	sub $t0, $t0, $t1
	sw $t0, -7836($fp)
	lw $t0, -7828($fp)
	lw $t1, -7836($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7840($fp)
	lw $t0, -7776($fp)
	lw $t1, -7840($fp)
	sub $t0, $t0, $t1
	sw $t0, -7844($fp)
	lw $t1, -7844($fp)
	li $t2, 0
	bne $t1, $t2, label938
	j label939
label938:
	li $t0, 33035
	sw $t0, -7848($fp)
	lw $t0, -7848($fp)
	sw $t0, -7852($fp)
	lw $t0, -7852($fp)
	sw $t0, -7856($fp)
	li $t0, 7430
	sw $t0, -7860($fp)
	lw $t0, -7860($fp)
	sw $t0, -7864($fp)
	lw $t0, -7864($fp)
	sw $t0, -7868($fp)
	li $t0, 27473
	sw $t0, -7872($fp)
	lw $t0, -7872($fp)
	sw $t0, -7876($fp)
	lw $t0, -7876($fp)
	sw $t0, -7880($fp)
	li $t0, 2980
	sw $t0, -7884($fp)
	lw $t0, -7852($fp)
	sw $t0, -7888($fp)
	lw $t0, -7888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7864($fp)
	sw $t0, -7892($fp)
	lw $t0, -7892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7876($fp)
	sw $t0, -7896($fp)
	lw $t0, -7896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -7900($fp)
	lw $t0, -148($fp)
	sw $t0, -7904($fp)
	addi $t0, $fp, -24
	sw $t0, -7908($fp)
	li $t0, 0
	sw $t0, -7912($fp)
	li $t0, 4
	lw $t1, -7912($fp)
	mul $t0, $t0, $t1
	sw $t0, -7916($fp)
	lw $t0, -7916($fp)
	lw $t1, -7908($fp)
	add $t0, $t0, $t1
	sw $t0, -7920($fp)
	lw $t0, -7920($fp)
	lw $t1, 0($t0)
	sw $t1, -7924($fp)
	li $t0, 0
	lw $t1, -7924($fp)
	sub $t0, $t0, $t1
	sw $t0, -7928($fp)
	lw $t1, -7904($fp)
	lw $t2, -7928($fp)
	beq $t1, $t2, label947
	j label949
label949:
	addi $t0, $fp, -3376
	sw $t0, -7932($fp)
	lw $t0, -7864($fp)
	sw $t0, -7936($fp)
	li $t0, 4
	lw $t1, -7936($fp)
	mul $t0, $t0, $t1
	sw $t0, -7940($fp)
	lw $t0, -7940($fp)
	lw $t1, -7932($fp)
	add $t0, $t0, $t1
	sw $t0, -7944($fp)
	lw $t0, -7944($fp)
	lw $t1, 0($t0)
	sw $t1, -7948($fp)
	li $t0, 0
	lw $t1, -7948($fp)
	sub $t0, $t0, $t1
	sw $t0, -7952($fp)
	lw $t1, -7952($fp)
	li $t2, 0
	bne $t1, $t2, label947
	j label948
label947:
	li $t0, 1
	sw $t0, -7900($fp)
label948:
	lw $ra, -4($fp)
	lw $v0, -7900($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label950:
	li $t0, 0
	sw $t0, -7956($fp)
	li $t0, 12980
	sw $t0, -7960($fp)
	lw $t1, -7960($fp)
	li $t2, 0
	bne $t1, $t2, label954
	j label953
label953:
	li $t0, 1
	sw $t0, -7956($fp)
label954:
	addi $t0, $fp, -3376
	sw $t0, -7964($fp)
	li $t0, 0
	sw $t0, -7968($fp)
	lw $t0, -160($fp)
	sw $t0, -7972($fp)
	li $t0, 16924
	sw $t0, -7976($fp)
	lw $t1, -7972($fp)
	lw $t2, -7976($fp)
	bne $t1, $t2, label955
	j label956
label955:
	li $t0, 1
	sw $t0, -7968($fp)
label956:
	li $t0, 4
	lw $t1, -7968($fp)
	mul $t0, $t0, $t1
	sw $t0, -7980($fp)
	lw $t0, -7980($fp)
	lw $t1, -7964($fp)
	add $t0, $t0, $t1
	sw $t0, -7984($fp)
	lw $t0, -7984($fp)
	lw $t1, 0($t0)
	sw $t1, -7988($fp)
	lw $t0, -7956($fp)
	lw $t1, -7988($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7992($fp)
	lw $t1, -7992($fp)
	li $t2, 0
	bne $t1, $t2, label951
	j label952
label951:
	li $t0, 0
	sw $t0, -7996($fp)
	li $t0, 61863
	sw $t0, -8000($fp)
	lw $t1, -8000($fp)
	li $t2, 0
	bne $t1, $t2, label958
	j label957
label957:
	li $t0, 1
	sw $t0, -7996($fp)
label958:
	li $t0, 0
	sw $t0, -8004($fp)
	li $t0, 0
	sw $t0, -8008($fp)
	lw $t0, -7876($fp)
	sw $t0, -8012($fp)
	lw $t1, -8012($fp)
	li $t2, 0
	bne $t1, $t2, label964
	j label963
label964:
	lw $t0, -1120($fp)
	sw $t0, -8016($fp)
	lw $t1, -8016($fp)
	li $t2, 0
	bne $t1, $t2, label961
	j label963
label963:
	li $t0, 64747
	sw $t0, -8020($fp)
	lw $t1, -8020($fp)
	li $t2, 0
	bne $t1, $t2, label961
	j label962
label961:
	li $t0, 1
	sw $t0, -8008($fp)
label962:
	li $t0, 0
	sw $t0, -8024($fp)
	lw $t0, -280($fp)
	sw $t0, -8028($fp)
	lw $t0, -1108($fp)
	sw $t0, -8032($fp)
	lw $t0, -8028($fp)
	lw $t1, -8032($fp)
	add $t0, $t0, $t1
	sw $t0, -8036($fp)
	lw $t0, -3776($fp)
	sw $t0, -8040($fp)
	lw $t1, -8036($fp)
	lw $t2, -8040($fp)
	beq $t1, $t2, label965
	j label966
label965:
	li $t0, 1
	sw $t0, -8024($fp)
label966:
	li $t0, 0
	sw $t0, -8044($fp)
	addi $t0, $fp, -3392
	sw $t0, -8048($fp)
	lw $t0, -256($fp)
	sw $t0, -8052($fp)
	li $t0, 4
	lw $t1, -8052($fp)
	mul $t0, $t0, $t1
	sw $t0, -8056($fp)
	lw $t0, -8056($fp)
	lw $t1, -8048($fp)
	add $t0, $t0, $t1
	sw $t0, -8060($fp)
	lw $t0, -8060($fp)
	lw $t1, 0($t0)
	sw $t1, -8064($fp)
	lw $t1, -8064($fp)
	li $t2, 0
	bne $t1, $t2, label967
	j label969
label969:
	li $t0, 46915
	sw $t0, -8068($fp)
	lw $t1, -8068($fp)
	li $t2, 0
	bne $t1, $t2, label967
	j label968
label967:
	li $t0, 1
	sw $t0, -8044($fp)
label968:
	li $t0, 0
	sw $t0, -8072($fp)
	lw $t0, -7852($fp)
	sw $t0, -8076($fp)
	lw $t1, -8076($fp)
	li $t2, 0
	bne $t1, $t2, label971
	j label970
label970:
	li $t0, 1
	sw $t0, -8072($fp)
label971:
	addi $sp, $sp, -4
	lw $t0, -8008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8072($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8080($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -8080($fp)
	sub $t0, $t0, $t1
	sw $t0, -8084($fp)
	lw $t1, -8084($fp)
	li $t2, 0
	bne $t1, $t2, label960
	j label959
label959:
	li $t0, 1
	sw $t0, -8004($fp)
label960:
	lw $t0, -7996($fp)
	lw $t1, -8004($fp)
	sub $t0, $t0, $t1
	sw $t0, -8088($fp)
	j label950
label952:
	lw $t0, -7852($fp)
	sw $t0, -8092($fp)
	lw $t0, -8092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7864($fp)
	sw $t0, -8096($fp)
	lw $t0, -8096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7876($fp)
	sw $t0, -8100($fp)
	lw $t0, -8100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -8104($fp)
	li $t0, 0
	sw $t0, -8108($fp)
	lw $t0, -340($fp)
	sw $t0, -8112($fp)
	li $t0, 38138
	sw $t0, -8116($fp)
	lw $t0, -8112($fp)
	lw $t1, -8116($fp)
	add $t0, $t0, $t1
	sw $t0, -8120($fp)
	li $t0, 63006
	sw $t0, -8124($fp)
	lw $t1, -8120($fp)
	lw $t2, -8124($fp)
	ble $t1, $t2, label975
	j label976
label975:
	li $t0, 1
	sw $t0, -8108($fp)
label976:
	li $t0, 0
	sw $t0, -8128($fp)
	li $t0, 21556
	sw $t0, -8132($fp)
	lw $t0, -4028($fp)
	sw $t0, -8136($fp)
	lw $t1, -8132($fp)
	lw $t2, -8136($fp)
	bgt $t1, $t2, label977
	j label978
label977:
	li $t0, 1
	sw $t0, -8128($fp)
label978:
	li $t0, 0
	sw $t0, -8140($fp)
	li $t0, 22946
	sw $t0, -8144($fp)
	lw $t0, -1072($fp)
	sw $t0, -8148($fp)
	lw $t1, -8144($fp)
	lw $t2, -8148($fp)
	bgt $t1, $t2, label981
	j label980
label981:
	li $t0, 5703
	sw $t0, -8152($fp)
	lw $t1, -8152($fp)
	li $t2, 0
	bne $t1, $t2, label979
	j label980
label979:
	li $t0, 1
	sw $t0, -8140($fp)
label980:
	addi $t0, $fp, -3432
	sw $t0, -8156($fp)
	lw $t0, -964($fp)
	sw $t0, -8160($fp)
	li $t0, 4
	lw $t1, -8160($fp)
	mul $t0, $t0, $t1
	sw $t0, -8164($fp)
	lw $t0, -8164($fp)
	lw $t1, -8156($fp)
	add $t0, $t0, $t1
	sw $t0, -8168($fp)
	lw $t0, -8168($fp)
	lw $t1, 0($t0)
	sw $t1, -8172($fp)
	addi $sp, $sp, -4
	lw $t0, -8108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8172($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8176($fp)
	addi $sp, $sp, 20
	lw $t1, -8176($fp)
	li $t2, 0
	bne $t1, $t2, label974
	j label973
label974:
	li $t0, 0
	sw $t0, -8180($fp)
	li $t0, 0
	sw $t0, -8184($fp)
	li $t0, 16593
	sw $t0, -8188($fp)
	li $t0, 18988
	sw $t0, -8192($fp)
	lw $t1, -8188($fp)
	lw $t2, -8192($fp)
	bge $t1, $t2, label984
	j label985
label984:
	li $t0, 1
	sw $t0, -8184($fp)
label985:
	li $t0, 41435
	sw $t0, -8196($fp)
	lw $t1, -8184($fp)
	lw $t2, -8196($fp)
	ble $t1, $t2, label982
	j label983
label982:
	li $t0, 1
	sw $t0, -8180($fp)
label983:
	lw $t0, -1084($fp)
	sw $t0, -8200($fp)
	li $t0, 43355
	sw $t0, -8204($fp)
	lw $t0, -8200($fp)
	lw $t1, -8204($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8208($fp)
	lw $t1, -8180($fp)
	lw $t2, -8208($fp)
	blt $t1, $t2, label972
	j label973
label972:
	li $t0, 1
	sw $t0, -8104($fp)
label973:
	lw $ra, -4($fp)
	lw $v0, -8104($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label937
label939:
	li $t0, 0
	sw $t0, -8212($fp)
	lw $t0, -316($fp)
	sw $t0, -8216($fp)
	lw $t1, -8216($fp)
	li $t2, 0
	bne $t1, $t2, label989
	j label987
label989:
	lw $t0, -304($fp)
	sw $t0, -8220($fp)
	lw $t1, -8220($fp)
	li $t2, 0
	bne $t1, $t2, label988
	j label987
label988:
	lw $t0, -520($fp)
	sw $t0, -8224($fp)
	lw $t1, -8224($fp)
	li $t2, 0
	bne $t1, $t2, label986
	j label987
label986:
	li $t0, 1
	sw $t0, -8212($fp)
label987:
	li $t0, 0
	sw $t0, -8228($fp)
	li $t0, 53011
	sw $t0, -8232($fp)
	li $t0, 51578
	sw $t0, -8236($fp)
	lw $t0, -1156($fp)
	sw $t0, -8240($fp)
	lw $t0, -8236($fp)
	lw $t1, -8240($fp)
	sub $t0, $t0, $t1
	sw $t0, -8244($fp)
	li $t0, 0
	sw $t0, -8248($fp)
	lw $t0, -1000($fp)
	sw $t0, -8252($fp)
	lw $t1, -8252($fp)
	li $t2, 0
	bne $t1, $t2, label993
	j label995
label995:
	lw $t0, -1048($fp)
	sw $t0, -8256($fp)
	lw $t1, -8256($fp)
	li $t2, 0
	bne $t1, $t2, label993
	j label994
label993:
	li $t0, 1
	sw $t0, -8248($fp)
label994:
	addi $sp, $sp, -4
	lw $t0, -8232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8248($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8260($fp)
	addi $sp, $sp, 16
	lw $t1, -8260($fp)
	li $t2, 0
	bne $t1, $t2, label992
	j label991
label992:
	li $t0, 40025
	sw $t0, -8264($fp)
	lw $t1, -8264($fp)
	li $t2, 0
	bne $t1, $t2, label990
	j label991
label990:
	li $t0, 1
	sw $t0, -8228($fp)
label991:
	li $t0, 0
	sw $t0, -8268($fp)
	li $t0, 0
	sw $t0, -8272($fp)
	li $t0, 18543
	sw $t0, -8276($fp)
	li $t0, 45581
	sw $t0, -8280($fp)
	lw $t1, -8276($fp)
	lw $t2, -8280($fp)
	bgt $t1, $t2, label998
	j label999
label998:
	li $t0, 1
	sw $t0, -8272($fp)
label999:
	li $t0, 12552
	sw $t0, -8284($fp)
	lw $t1, -8272($fp)
	lw $t2, -8284($fp)
	bge $t1, $t2, label996
	j label997
label996:
	li $t0, 1
	sw $t0, -8268($fp)
label997:
	addi $sp, $sp, -4
	lw $t0, -8212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8268($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8288($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -8292($fp)
	lw $t0, -292($fp)
	sw $t0, -8296($fp)
	lw $t1, -8296($fp)
	li $t2, 0
	bne $t1, $t2, label1000
	j label1003
label1003:
	lw $t0, -1144($fp)
	sw $t0, -8300($fp)
	lw $t1, -8300($fp)
	li $t2, 0
	bne $t1, $t2, label1000
	j label1002
label1002:
	li $t0, 20768
	sw $t0, -8304($fp)
	lw $t1, -8304($fp)
	li $t2, 0
	bne $t1, $t2, label1000
	j label1001
label1000:
	li $t0, 1
	sw $t0, -8292($fp)
label1001:
	li $t0, 0
	sw $t0, -8308($fp)
	li $t0, 9120
	sw $t0, -8312($fp)
	lw $t1, -8312($fp)
	li $t2, 0
	bne $t1, $t2, label1005
	j label1004
label1004:
	li $t0, 1
	sw $t0, -8308($fp)
label1005:
	li $t0, 56492
	sw $t0, -8316($fp)
	li $t0, 63853
	sw $t0, -8320($fp)
	lw $t0, -8316($fp)
	lw $t1, -8320($fp)
	sub $t0, $t0, $t1
	sw $t0, -8324($fp)
	li $t0, 0
	sw $t0, -8328($fp)
	li $t0, 56447
	sw $t0, -8332($fp)
	lw $t1, -8332($fp)
	li $t2, 0
	bne $t1, $t2, label1007
	j label1006
label1006:
	li $t0, 1
	sw $t0, -8328($fp)
label1007:
	li $t0, 32851
	sw $t0, -8336($fp)
	lw $t0, -8328($fp)
	lw $t1, -8336($fp)
	add $t0, $t0, $t1
	sw $t0, -8340($fp)
	li $t0, 0
	sw $t0, -8344($fp)
	li $t0, 12386
	sw $t0, -8348($fp)
	li $t0, 0
	lw $t1, -8348($fp)
	sub $t0, $t0, $t1
	sw $t0, -8352($fp)
	lw $t1, -8352($fp)
	li $t2, 0
	bne $t1, $t2, label1010
	j label1009
label1010:
	li $t0, 45854
	sw $t0, -8356($fp)
	lw $t1, -8356($fp)
	li $t2, 0
	bne $t1, $t2, label1008
	j label1009
label1008:
	li $t0, 1
	sw $t0, -8344($fp)
label1009:
	lw $t0, -1084($fp)
	sw $t0, -8360($fp)
	lw $t0, -8360($fp)
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	sw $t0, -8364($fp)
	addi $sp, $sp, -4
	lw $t0, -8324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8364($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8368($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -8288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8368($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8372($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -8372($fp)
	sub $t0, $t0, $t1
	sw $t0, -8376($fp)
	addi $t0, $fp, -24
	sw $t0, -8380($fp)
	li $t0, 0
	sw $t0, -8384($fp)
	li $t0, 4
	lw $t1, -8384($fp)
	mul $t0, $t0, $t1
	sw $t0, -8388($fp)
	lw $t0, -8388($fp)
	lw $t1, -8380($fp)
	add $t0, $t0, $t1
	sw $t0, -8392($fp)
	lw $t0, -8392($fp)
	lw $t1, 0($t0)
	sw $t1, -8396($fp)
	li $t0, 0
	sw $t0, -8400($fp)
	lw $t0, -340($fp)
	sw $t0, -8404($fp)
	lw $t0, -1180($fp)
	sw $t0, -8408($fp)
	lw $t1, -8404($fp)
	lw $t2, -8408($fp)
	ble $t1, $t2, label1013
	j label1012
label1013:
	lw $t0, -328($fp)
	sw $t0, -8412($fp)
	lw $t1, -8412($fp)
	li $t2, 0
	bne $t1, $t2, label1011
	j label1012
label1011:
	li $t0, 1
	sw $t0, -8400($fp)
label1012:
	li $t0, 0
	sw $t0, -8416($fp)
	li $t0, 54558
	sw $t0, -8420($fp)
	lw $t1, -8420($fp)
	li $t2, 0
	bne $t1, $t2, label1015
	j label1014
label1014:
	li $t0, 1
	sw $t0, -8416($fp)
label1015:
	lw $t0, -1168($fp)
	sw $t0, -8424($fp)
	lw $t0, -8416($fp)
	lw $t1, -8424($fp)
	mul $t0, $t0, $t1
	sw $t0, -8428($fp)
	lw $t0, -472($fp)
	sw $t0, -8432($fp)
	li $t0, 0
	lw $t1, -8432($fp)
	sub $t0, $t0, $t1
	sw $t0, -8436($fp)
	li $t0, 0
	lw $t1, -8436($fp)
	sub $t0, $t0, $t1
	sw $t0, -8440($fp)
	addi $sp, $sp, -4
	lw $t0, -8396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8440($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8444($fp)
	addi $sp, $sp, 20
	lw $t0, -8376($fp)
	lw $t1, -8444($fp)
	sub $t0, $t0, $t1
	sw $t0, -8448($fp)
	li $t0, 2002
	sw $t0, -8452($fp)
	lw $t0, -220($fp)
	sw $t0, -8456($fp)
	lw $t0, -8452($fp)
	lw $t1, -8456($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8460($fp)
	lw $t0, -8448($fp)
	lw $t1, -8460($fp)
	sub $t0, $t0, $t1
	sw $t0, -8464($fp)
	li $t0, 0
	sw $t0, -8468($fp)
	li $t0, 0
	sw $t0, -8472($fp)
	li $t0, 0
	sw $t0, -8476($fp)
	li $t0, 0
	sw $t0, -8480($fp)
	lw $t0, -832($fp)
	sw $t0, -8484($fp)
	li $t0, 3338
	sw $t0, -8488($fp)
	lw $t1, -8484($fp)
	lw $t2, -8488($fp)
	bne $t1, $t2, label1022
	j label1023
label1022:
	li $t0, 1
	sw $t0, -8480($fp)
label1023:
	li $t0, 17830
	sw $t0, -8492($fp)
	lw $t1, -8480($fp)
	lw $t2, -8492($fp)
	beq $t1, $t2, label1020
	j label1021
label1020:
	li $t0, 1
	sw $t0, -8476($fp)
label1021:
	li $t0, 47317
	sw $t0, -8496($fp)
	li $t0, 45227
	sw $t0, -8500($fp)
	lw $t0, -8496($fp)
	lw $t1, -8500($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8504($fp)
	li $t0, 54620
	sw $t0, -8508($fp)
	lw $t0, -8504($fp)
	lw $t1, -8508($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8512($fp)
	li $t0, 0
	sw $t0, -8516($fp)
	li $t0, 0
	sw $t0, -8520($fp)
	lw $t0, -1192($fp)
	sw $t0, -8524($fp)
	lw $t1, -8524($fp)
	li $t2, 0
	bne $t1, $t2, label1027
	j label1026
label1026:
	li $t0, 1
	sw $t0, -8520($fp)
label1027:
	li $t0, 48917
	sw $t0, -8528($fp)
	lw $t0, -8528($fp)
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	sw $t0, -8532($fp)
	li $t0, 48106
	sw $t0, -8536($fp)
	lw $t0, -964($fp)
	sw $t0, -8540($fp)
	lw $t0, -8536($fp)
	lw $t1, -8540($fp)
	sub $t0, $t0, $t1
	sw $t0, -8544($fp)
	li $t0, 22281
	sw $t0, -8548($fp)
	lw $t0, -8544($fp)
	lw $t1, -8548($fp)
	sub $t0, $t0, $t1
	sw $t0, -8552($fp)
	addi $sp, $sp, -4
	lw $t0, -8520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8552($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8556($fp)
	addi $sp, $sp, 16
	lw $t1, -8556($fp)
	li $t2, 0
	bne $t1, $t2, label1025
	j label1024
label1024:
	li $t0, 1
	sw $t0, -8516($fp)
label1025:
	addi $sp, $sp, -4
	lw $t0, -8476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8516($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8560($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -8564($fp)
	lw $t0, -1060($fp)
	sw $t0, -8568($fp)
	li $t0, 52090
	sw $t0, -8572($fp)
	lw $t0, -8568($fp)
	lw $t1, -8572($fp)
	sub $t0, $t0, $t1
	sw $t0, -8576($fp)
	li $t0, 19931
	sw $t0, -8580($fp)
	lw $t1, -8576($fp)
	lw $t2, -8580($fp)
	bgt $t1, $t2, label1028
	j label1029
label1028:
	li $t0, 1
	sw $t0, -8564($fp)
label1029:
	lw $t1, -8560($fp)
	lw $t2, -8564($fp)
	beq $t1, $t2, label1018
	j label1019
label1018:
	li $t0, 1
	sw $t0, -8472($fp)
label1019:
	li $t0, 36818
	sw $t0, -8584($fp)
	lw $t1, -8472($fp)
	lw $t2, -8584($fp)
	beq $t1, $t2, label1016
	j label1017
label1016:
	li $t0, 1
	sw $t0, -8468($fp)
label1017:
	addi $t0, $fp, -12
	sw $t0, -8588($fp)
	li $t0, 0
	sw $t0, -8592($fp)
	li $t0, 4
	lw $t1, -8592($fp)
	mul $t0, $t0, $t1
	sw $t0, -8596($fp)
	lw $t0, -8596($fp)
	lw $t1, -8588($fp)
	add $t0, $t0, $t1
	sw $t0, -8600($fp)
	lw $t0, -8600($fp)
	lw $t1, 0($t0)
	sw $t1, -8604($fp)
	lw $t0, -8604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -8608($fp)
	li $t0, 1
	sw $t0, -8612($fp)
	li $t0, 4
	lw $t1, -8612($fp)
	mul $t0, $t0, $t1
	sw $t0, -8616($fp)
	lw $t0, -8616($fp)
	lw $t1, -8608($fp)
	add $t0, $t0, $t1
	sw $t0, -8620($fp)
	lw $t0, -8620($fp)
	lw $t1, 0($t0)
	sw $t1, -8624($fp)
	lw $t0, -8624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -136($fp)
	sw $t0, -8628($fp)
	lw $t0, -8628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -148($fp)
	sw $t0, -8632($fp)
	lw $t0, -8632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -160($fp)
	sw $t0, -8636($fp)
	lw $t0, -8636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -172($fp)
	sw $t0, -8640($fp)
	lw $t0, -8640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -184($fp)
	sw $t0, -8644($fp)
	lw $t0, -8644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -196($fp)
	sw $t0, -8648($fp)
	lw $t0, -8648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -208($fp)
	sw $t0, -8652($fp)
	lw $t0, -8652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -220($fp)
	sw $t0, -8656($fp)
	lw $t0, -8656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -232($fp)
	sw $t0, -8660($fp)
	lw $t0, -8660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -244($fp)
	sw $t0, -8664($fp)
	lw $t0, -8664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -256($fp)
	sw $t0, -8668($fp)
	lw $t0, -8668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -268($fp)
	sw $t0, -8672($fp)
	lw $t0, -8672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -280($fp)
	sw $t0, -8676($fp)
	lw $t0, -8676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -292($fp)
	sw $t0, -8680($fp)
	lw $t0, -8680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -304($fp)
	sw $t0, -8684($fp)
	lw $t0, -8684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -316($fp)
	sw $t0, -8688($fp)
	lw $t0, -8688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -328($fp)
	sw $t0, -8692($fp)
	lw $t0, -8692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -340($fp)
	sw $t0, -8696($fp)
	lw $t0, -8696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -352($fp)
	sw $t0, -8700($fp)
	lw $t0, -8700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -8704($fp)
	li $t0, 0
	sw $t0, -8708($fp)
	li $t0, 4
	lw $t1, -8708($fp)
	mul $t0, $t0, $t1
	sw $t0, -8712($fp)
	lw $t0, -8712($fp)
	lw $t1, -8704($fp)
	add $t0, $t0, $t1
	sw $t0, -8716($fp)
	lw $t0, -8716($fp)
	lw $t1, 0($t0)
	sw $t1, -8720($fp)
	lw $t0, -8720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -8724($fp)
	li $t0, 1
	sw $t0, -8728($fp)
	li $t0, 4
	lw $t1, -8728($fp)
	mul $t0, $t0, $t1
	sw $t0, -8732($fp)
	lw $t0, -8732($fp)
	lw $t1, -8724($fp)
	add $t0, $t0, $t1
	sw $t0, -8736($fp)
	lw $t0, -8736($fp)
	lw $t1, 0($t0)
	sw $t1, -8740($fp)
	lw $t0, -8740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -8744($fp)
	li $t0, 2
	sw $t0, -8748($fp)
	li $t0, 4
	lw $t1, -8748($fp)
	mul $t0, $t0, $t1
	sw $t0, -8752($fp)
	lw $t0, -8752($fp)
	lw $t1, -8744($fp)
	add $t0, $t0, $t1
	sw $t0, -8756($fp)
	lw $t0, -8756($fp)
	lw $t1, 0($t0)
	sw $t1, -8760($fp)
	lw $t0, -8760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -436($fp)
	sw $t0, -8764($fp)
	lw $t0, -8764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -448($fp)
	sw $t0, -8768($fp)
	lw $t0, -8768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -460($fp)
	sw $t0, -8772($fp)
	lw $t0, -8772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -472($fp)
	sw $t0, -8776($fp)
	lw $t0, -8776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -484($fp)
	sw $t0, -8780($fp)
	lw $t0, -8780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -496($fp)
	sw $t0, -8784($fp)
	lw $t0, -8784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -508($fp)
	sw $t0, -8788($fp)
	lw $t0, -8788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -520($fp)
	sw $t0, -8792($fp)
	lw $t0, -8792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -8796($fp)
	li $t0, 0
	sw $t0, -8800($fp)
	li $t0, 4
	lw $t1, -8800($fp)
	mul $t0, $t0, $t1
	sw $t0, -8804($fp)
	lw $t0, -8804($fp)
	lw $t1, -8796($fp)
	add $t0, $t0, $t1
	sw $t0, -8808($fp)
	lw $t0, -8808($fp)
	lw $t1, 0($t0)
	sw $t1, -8812($fp)
	lw $t0, -8812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -8816($fp)
	li $t0, 1
	sw $t0, -8820($fp)
	li $t0, 4
	lw $t1, -8820($fp)
	mul $t0, $t0, $t1
	sw $t0, -8824($fp)
	lw $t0, -8824($fp)
	lw $t1, -8816($fp)
	add $t0, $t0, $t1
	sw $t0, -8828($fp)
	lw $t0, -8828($fp)
	lw $t1, 0($t0)
	sw $t1, -8832($fp)
	lw $t0, -8832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -8836($fp)
	li $t0, 0
	sw $t0, -8840($fp)
	li $t0, 4
	lw $t1, -8840($fp)
	mul $t0, $t0, $t1
	sw $t0, -8844($fp)
	lw $t0, -8844($fp)
	lw $t1, -8836($fp)
	add $t0, $t0, $t1
	sw $t0, -8848($fp)
	lw $t0, -8848($fp)
	lw $t1, 0($t0)
	sw $t1, -8852($fp)
	lw $t0, -8852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -8856($fp)
	li $t0, 1
	sw $t0, -8860($fp)
	li $t0, 4
	lw $t1, -8860($fp)
	mul $t0, $t0, $t1
	sw $t0, -8864($fp)
	lw $t0, -8864($fp)
	lw $t1, -8856($fp)
	add $t0, $t0, $t1
	sw $t0, -8868($fp)
	lw $t0, -8868($fp)
	lw $t1, 0($t0)
	sw $t1, -8872($fp)
	lw $t0, -8872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -8876($fp)
	li $t0, 2
	sw $t0, -8880($fp)
	li $t0, 4
	lw $t1, -8880($fp)
	mul $t0, $t0, $t1
	sw $t0, -8884($fp)
	lw $t0, -8884($fp)
	lw $t1, -8876($fp)
	add $t0, $t0, $t1
	sw $t0, -8888($fp)
	lw $t0, -8888($fp)
	lw $t1, 0($t0)
	sw $t1, -8892($fp)
	lw $t0, -8892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -8896($fp)
	li $t0, 3
	sw $t0, -8900($fp)
	li $t0, 4
	lw $t1, -8900($fp)
	mul $t0, $t0, $t1
	sw $t0, -8904($fp)
	lw $t0, -8904($fp)
	lw $t1, -8896($fp)
	add $t0, $t0, $t1
	sw $t0, -8908($fp)
	lw $t0, -8908($fp)
	lw $t1, 0($t0)
	sw $t1, -8912($fp)
	lw $t0, -8912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -8916($fp)
	li $t0, 4
	sw $t0, -8920($fp)
	li $t0, 4
	lw $t1, -8920($fp)
	mul $t0, $t0, $t1
	sw $t0, -8924($fp)
	lw $t0, -8924($fp)
	lw $t1, -8916($fp)
	add $t0, $t0, $t1
	sw $t0, -8928($fp)
	lw $t0, -8928($fp)
	lw $t1, 0($t0)
	sw $t1, -8932($fp)
	lw $t0, -8932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -8936($fp)
	li $t0, 5
	sw $t0, -8940($fp)
	li $t0, 4
	lw $t1, -8940($fp)
	mul $t0, $t0, $t1
	sw $t0, -8944($fp)
	lw $t0, -8944($fp)
	lw $t1, -8936($fp)
	add $t0, $t0, $t1
	sw $t0, -8948($fp)
	lw $t0, -8948($fp)
	lw $t1, 0($t0)
	sw $t1, -8952($fp)
	lw $t0, -8952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -8956($fp)
	li $t0, 6
	sw $t0, -8960($fp)
	li $t0, 4
	lw $t1, -8960($fp)
	mul $t0, $t0, $t1
	sw $t0, -8964($fp)
	lw $t0, -8964($fp)
	lw $t1, -8956($fp)
	add $t0, $t0, $t1
	sw $t0, -8968($fp)
	lw $t0, -8968($fp)
	lw $t1, 0($t0)
	sw $t1, -8972($fp)
	lw $t0, -8972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -8976($fp)
	li $t0, 7
	sw $t0, -8980($fp)
	li $t0, 4
	lw $t1, -8980($fp)
	mul $t0, $t0, $t1
	sw $t0, -8984($fp)
	lw $t0, -8984($fp)
	lw $t1, -8976($fp)
	add $t0, $t0, $t1
	sw $t0, -8988($fp)
	lw $t0, -8988($fp)
	lw $t1, 0($t0)
	sw $t1, -8992($fp)
	lw $t0, -8992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -8996($fp)
	li $t0, 8
	sw $t0, -9000($fp)
	li $t0, 4
	lw $t1, -9000($fp)
	mul $t0, $t0, $t1
	sw $t0, -9004($fp)
	lw $t0, -9004($fp)
	lw $t1, -8996($fp)
	add $t0, $t0, $t1
	sw $t0, -9008($fp)
	lw $t0, -9008($fp)
	lw $t1, 0($t0)
	sw $t1, -9012($fp)
	lw $t0, -9012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -796($fp)
	sw $t0, -9016($fp)
	lw $t0, -9016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -808($fp)
	sw $t0, -9020($fp)
	lw $t0, -9020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -820($fp)
	sw $t0, -9024($fp)
	lw $t0, -9024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -832($fp)
	sw $t0, -9028($fp)
	lw $t0, -9028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -844($fp)
	sw $t0, -9032($fp)
	lw $t0, -9032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -9036($fp)
	li $t0, 0
	sw $t0, -9040($fp)
	li $t0, 4
	lw $t1, -9040($fp)
	mul $t0, $t0, $t1
	sw $t0, -9044($fp)
	lw $t0, -9044($fp)
	lw $t1, -9036($fp)
	add $t0, $t0, $t1
	sw $t0, -9048($fp)
	lw $t0, -9048($fp)
	lw $t1, 0($t0)
	sw $t1, -9052($fp)
	lw $t0, -9052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -9056($fp)
	li $t0, 1
	sw $t0, -9060($fp)
	li $t0, 4
	lw $t1, -9060($fp)
	mul $t0, $t0, $t1
	sw $t0, -9064($fp)
	lw $t0, -9064($fp)
	lw $t1, -9056($fp)
	add $t0, $t0, $t1
	sw $t0, -9068($fp)
	lw $t0, -9068($fp)
	lw $t1, 0($t0)
	sw $t1, -9072($fp)
	lw $t0, -9072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -9076($fp)
	li $t0, 2
	sw $t0, -9080($fp)
	li $t0, 4
	lw $t1, -9080($fp)
	mul $t0, $t0, $t1
	sw $t0, -9084($fp)
	lw $t0, -9084($fp)
	lw $t1, -9076($fp)
	add $t0, $t0, $t1
	sw $t0, -9088($fp)
	lw $t0, -9088($fp)
	lw $t1, 0($t0)
	sw $t1, -9092($fp)
	lw $t0, -9092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -928($fp)
	sw $t0, -9096($fp)
	lw $t0, -9096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -940($fp)
	sw $t0, -9100($fp)
	lw $t0, -9100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -952($fp)
	sw $t0, -9104($fp)
	lw $t0, -9104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -964($fp)
	sw $t0, -9108($fp)
	lw $t0, -9108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -976($fp)
	sw $t0, -9112($fp)
	lw $t0, -9112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -988($fp)
	sw $t0, -9116($fp)
	lw $t0, -9116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1000($fp)
	sw $t0, -9120($fp)
	lw $t0, -9120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1012($fp)
	sw $t0, -9124($fp)
	lw $t0, -9124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1024($fp)
	sw $t0, -9128($fp)
	lw $t0, -9128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1036($fp)
	sw $t0, -9132($fp)
	lw $t0, -9132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1048($fp)
	sw $t0, -9136($fp)
	lw $t0, -9136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1060($fp)
	sw $t0, -9140($fp)
	lw $t0, -9140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1072($fp)
	sw $t0, -9144($fp)
	lw $t0, -9144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1084($fp)
	sw $t0, -9148($fp)
	lw $t0, -9148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1096($fp)
	sw $t0, -9152($fp)
	lw $t0, -9152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1108($fp)
	sw $t0, -9156($fp)
	lw $t0, -9156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1120($fp)
	sw $t0, -9160($fp)
	lw $t0, -9160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1132($fp)
	sw $t0, -9164($fp)
	lw $t0, -9164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1144($fp)
	sw $t0, -9168($fp)
	lw $t0, -9168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1156($fp)
	sw $t0, -9172($fp)
	lw $t0, -9172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1168($fp)
	sw $t0, -9176($fp)
	lw $t0, -9176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1180($fp)
	sw $t0, -9180($fp)
	lw $t0, -9180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1192($fp)
	sw $t0, -9184($fp)
	lw $t0, -9184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -9188($fp)
	lw $t0, -148($fp)
	sw $t0, -9192($fp)
	lw $t1, -9192($fp)
	li $t2, 0
	bne $t1, $t2, label1030
	j label1031
label1030:
	li $t0, 1
	sw $t0, -9188($fp)
label1031:
	li $t0, 0
	lw $t1, -9188($fp)
	sub $t0, $t0, $t1
	sw $t0, -9196($fp)
	li $t0, 0
	lw $t1, -9196($fp)
	sub $t0, $t0, $t1
	sw $t0, -9200($fp)
	li $t0, 27989
	sw $t0, -9204($fp)
	lw $t0, -9200($fp)
	lw $t1, -9204($fp)
	add $t0, $t0, $t1
	sw $t0, -9208($fp)
	lw $ra, -4($fp)
	lw $v0, -9208($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -32
	li $t0, 63286
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	lw $t0, -12($fp)
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -24($fp)
	lw $t0, -12($fp)
	sw $t0, -28($fp)
	lw $t1, -28($fp)
	li $t2, 0
	bne $t1, $t2, label1033
	j label1032
label1032:
	li $t0, 1
	sw $t0, -24($fp)
label1033:
	lw $t0, -12($fp)
	sw $t0, -32($fp)
	lw $t0, -24($fp)
	lw $t1, -32($fp)
	sub $t0, $t0, $t1
	sw $t0, -36($fp)
	lw $ra, -4($fp)
	lw $v0, -36($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -8092
	li $t0, 49204
	sw $t0, -224($fp)
	addi $t0, $fp, -32
	sw $t0, -228($fp)
	li $t0, 0
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -236($fp)
	lw $t0, -228($fp)
	lw $t1, -236($fp)
	add $t0, $t0, $t1
	sw $t0, -240($fp)
	lw $t0, -224($fp)
	lw $t1, -240($fp)
	sw $t0, 0($t1)
	lw $t0, -240($fp)
	lw $t1, 0($t0)
	sw $t1, -244($fp)
	li $t0, 8308
	sw $t0, -248($fp)
	addi $t0, $fp, -32
	sw $t0, -252($fp)
	li $t0, 1
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -260($fp)
	lw $t0, -252($fp)
	lw $t1, -260($fp)
	add $t0, $t0, $t1
	sw $t0, -264($fp)
	lw $t0, -248($fp)
	lw $t1, -264($fp)
	sw $t0, 0($t1)
	lw $t0, -264($fp)
	lw $t1, 0($t0)
	sw $t1, -268($fp)
	li $t0, 54197
	sw $t0, -272($fp)
	addi $t0, $fp, -32
	sw $t0, -276($fp)
	li $t0, 2
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -284($fp)
	lw $t0, -276($fp)
	lw $t1, -284($fp)
	add $t0, $t0, $t1
	sw $t0, -288($fp)
	lw $t0, -272($fp)
	lw $t1, -288($fp)
	sw $t0, 0($t1)
	lw $t0, -288($fp)
	lw $t1, 0($t0)
	sw $t1, -292($fp)
	li $t0, 16519
	sw $t0, -296($fp)
	addi $t0, $fp, -32
	sw $t0, -300($fp)
	li $t0, 3
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -308($fp)
	lw $t0, -300($fp)
	lw $t1, -308($fp)
	add $t0, $t0, $t1
	sw $t0, -312($fp)
	lw $t0, -296($fp)
	lw $t1, -312($fp)
	sw $t0, 0($t1)
	lw $t0, -312($fp)
	lw $t1, 0($t0)
	sw $t1, -316($fp)
	li $t0, 64800
	sw $t0, -320($fp)
	addi $t0, $fp, -32
	sw $t0, -324($fp)
	li $t0, 4
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -332($fp)
	lw $t0, -324($fp)
	lw $t1, -332($fp)
	add $t0, $t0, $t1
	sw $t0, -336($fp)
	lw $t0, -320($fp)
	lw $t1, -336($fp)
	sw $t0, 0($t1)
	lw $t0, -336($fp)
	lw $t1, 0($t0)
	sw $t1, -340($fp)
	li $t0, 52514
	sw $t0, -344($fp)
	addi $t0, $fp, -32
	sw $t0, -348($fp)
	li $t0, 5
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -356($fp)
	lw $t0, -348($fp)
	lw $t1, -356($fp)
	add $t0, $t0, $t1
	sw $t0, -360($fp)
	lw $t0, -344($fp)
	lw $t1, -360($fp)
	sw $t0, 0($t1)
	lw $t0, -360($fp)
	lw $t1, 0($t0)
	sw $t1, -364($fp)
	li $t0, 25639
	sw $t0, -368($fp)
	addi $t0, $fp, -32
	sw $t0, -372($fp)
	li $t0, 6
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -380($fp)
	lw $t0, -372($fp)
	lw $t1, -380($fp)
	add $t0, $t0, $t1
	sw $t0, -384($fp)
	lw $t0, -368($fp)
	lw $t1, -384($fp)
	sw $t0, 0($t1)
	lw $t0, -384($fp)
	lw $t1, 0($t0)
	sw $t1, -388($fp)
	li $t0, 20032
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -400($fp)
	li $t0, 5521
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -412($fp)
	li $t0, 5684
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -424($fp)
	li $t0, 32584
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	li $t0, 57100
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	li $t0, 58695
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	li $t0, 7073
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	li $t0, 46122
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	li $t0, 24342
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	li $t0, 33027
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	li $t0, 48125
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	li $t0, 6912
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	li $t0, 55308
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	li $t0, 31506
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -556($fp)
	li $t0, 54230
	sw $t0, -560($fp)
	addi $t0, $fp, -68
	sw $t0, -564($fp)
	li $t0, 0
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -572($fp)
	lw $t0, -564($fp)
	lw $t1, -572($fp)
	add $t0, $t0, $t1
	sw $t0, -576($fp)
	lw $t0, -560($fp)
	lw $t1, -576($fp)
	sw $t0, 0($t1)
	lw $t0, -576($fp)
	lw $t1, 0($t0)
	sw $t1, -580($fp)
	li $t0, 35000
	sw $t0, -584($fp)
	addi $t0, $fp, -68
	sw $t0, -588($fp)
	li $t0, 1
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -596($fp)
	lw $t0, -588($fp)
	lw $t1, -596($fp)
	add $t0, $t0, $t1
	sw $t0, -600($fp)
	lw $t0, -584($fp)
	lw $t1, -600($fp)
	sw $t0, 0($t1)
	lw $t0, -600($fp)
	lw $t1, 0($t0)
	sw $t1, -604($fp)
	li $t0, 20591
	sw $t0, -608($fp)
	addi $t0, $fp, -68
	sw $t0, -612($fp)
	li $t0, 2
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -620($fp)
	lw $t0, -612($fp)
	lw $t1, -620($fp)
	add $t0, $t0, $t1
	sw $t0, -624($fp)
	lw $t0, -608($fp)
	lw $t1, -624($fp)
	sw $t0, 0($t1)
	lw $t0, -624($fp)
	lw $t1, 0($t0)
	sw $t1, -628($fp)
	li $t0, 57568
	sw $t0, -632($fp)
	addi $t0, $fp, -68
	sw $t0, -636($fp)
	li $t0, 3
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -644($fp)
	lw $t0, -636($fp)
	lw $t1, -644($fp)
	add $t0, $t0, $t1
	sw $t0, -648($fp)
	lw $t0, -632($fp)
	lw $t1, -648($fp)
	sw $t0, 0($t1)
	lw $t0, -648($fp)
	lw $t1, 0($t0)
	sw $t1, -652($fp)
	li $t0, 52830
	sw $t0, -656($fp)
	addi $t0, $fp, -68
	sw $t0, -660($fp)
	li $t0, 4
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -668($fp)
	lw $t0, -660($fp)
	lw $t1, -668($fp)
	add $t0, $t0, $t1
	sw $t0, -672($fp)
	lw $t0, -656($fp)
	lw $t1, -672($fp)
	sw $t0, 0($t1)
	lw $t0, -672($fp)
	lw $t1, 0($t0)
	sw $t1, -676($fp)
	li $t0, 7145
	sw $t0, -680($fp)
	addi $t0, $fp, -68
	sw $t0, -684($fp)
	li $t0, 5
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -692($fp)
	lw $t0, -684($fp)
	lw $t1, -692($fp)
	add $t0, $t0, $t1
	sw $t0, -696($fp)
	lw $t0, -680($fp)
	lw $t1, -696($fp)
	sw $t0, 0($t1)
	lw $t0, -696($fp)
	lw $t1, 0($t0)
	sw $t1, -700($fp)
	li $t0, 11963
	sw $t0, -704($fp)
	addi $t0, $fp, -68
	sw $t0, -708($fp)
	li $t0, 6
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -716($fp)
	lw $t0, -708($fp)
	lw $t1, -716($fp)
	add $t0, $t0, $t1
	sw $t0, -720($fp)
	lw $t0, -704($fp)
	lw $t1, -720($fp)
	sw $t0, 0($t1)
	lw $t0, -720($fp)
	lw $t1, 0($t0)
	sw $t1, -724($fp)
	li $t0, 24112
	sw $t0, -728($fp)
	addi $t0, $fp, -68
	sw $t0, -732($fp)
	li $t0, 7
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -740($fp)
	lw $t0, -732($fp)
	lw $t1, -740($fp)
	add $t0, $t0, $t1
	sw $t0, -744($fp)
	lw $t0, -728($fp)
	lw $t1, -744($fp)
	sw $t0, 0($t1)
	lw $t0, -744($fp)
	lw $t1, 0($t0)
	sw $t1, -748($fp)
	li $t0, 35135
	sw $t0, -752($fp)
	addi $t0, $fp, -68
	sw $t0, -756($fp)
	li $t0, 8
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -764($fp)
	lw $t0, -756($fp)
	lw $t1, -764($fp)
	add $t0, $t0, $t1
	sw $t0, -768($fp)
	lw $t0, -752($fp)
	lw $t1, -768($fp)
	sw $t0, 0($t1)
	lw $t0, -768($fp)
	lw $t1, 0($t0)
	sw $t1, -772($fp)
	li $t0, 9713
	sw $t0, -776($fp)
	addi $t0, $fp, -92
	sw $t0, -780($fp)
	li $t0, 0
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -788($fp)
	lw $t0, -780($fp)
	lw $t1, -788($fp)
	add $t0, $t0, $t1
	sw $t0, -792($fp)
	lw $t0, -776($fp)
	lw $t1, -792($fp)
	sw $t0, 0($t1)
	lw $t0, -792($fp)
	lw $t1, 0($t0)
	sw $t1, -796($fp)
	li $t0, 7781
	sw $t0, -800($fp)
	addi $t0, $fp, -92
	sw $t0, -804($fp)
	li $t0, 1
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -812($fp)
	lw $t0, -804($fp)
	lw $t1, -812($fp)
	add $t0, $t0, $t1
	sw $t0, -816($fp)
	lw $t0, -800($fp)
	lw $t1, -816($fp)
	sw $t0, 0($t1)
	lw $t0, -816($fp)
	lw $t1, 0($t0)
	sw $t1, -820($fp)
	li $t0, 43443
	sw $t0, -824($fp)
	addi $t0, $fp, -92
	sw $t0, -828($fp)
	li $t0, 2
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -836($fp)
	lw $t0, -828($fp)
	lw $t1, -836($fp)
	add $t0, $t0, $t1
	sw $t0, -840($fp)
	lw $t0, -824($fp)
	lw $t1, -840($fp)
	sw $t0, 0($t1)
	lw $t0, -840($fp)
	lw $t1, 0($t0)
	sw $t1, -844($fp)
	li $t0, 63910
	sw $t0, -848($fp)
	addi $t0, $fp, -92
	sw $t0, -852($fp)
	li $t0, 3
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -860($fp)
	lw $t0, -852($fp)
	lw $t1, -860($fp)
	add $t0, $t0, $t1
	sw $t0, -864($fp)
	lw $t0, -848($fp)
	lw $t1, -864($fp)
	sw $t0, 0($t1)
	lw $t0, -864($fp)
	lw $t1, 0($t0)
	sw $t1, -868($fp)
	li $t0, 24300
	sw $t0, -872($fp)
	addi $t0, $fp, -92
	sw $t0, -876($fp)
	li $t0, 4
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -884($fp)
	lw $t0, -876($fp)
	lw $t1, -884($fp)
	add $t0, $t0, $t1
	sw $t0, -888($fp)
	lw $t0, -872($fp)
	lw $t1, -888($fp)
	sw $t0, 0($t1)
	lw $t0, -888($fp)
	lw $t1, 0($t0)
	sw $t1, -892($fp)
	li $t0, 42707
	sw $t0, -896($fp)
	addi $t0, $fp, -92
	sw $t0, -900($fp)
	li $t0, 5
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -908($fp)
	lw $t0, -900($fp)
	lw $t1, -908($fp)
	add $t0, $t0, $t1
	sw $t0, -912($fp)
	lw $t0, -896($fp)
	lw $t1, -912($fp)
	sw $t0, 0($t1)
	lw $t0, -912($fp)
	lw $t1, 0($t0)
	sw $t1, -916($fp)
	li $t0, 50888
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	sw $t0, -928($fp)
	li $t0, 49940
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	sw $t0, -940($fp)
	li $t0, 62740
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	sw $t0, -952($fp)
	li $t0, 56409
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	sw $t0, -964($fp)
	li $t0, 55624
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	sw $t0, -976($fp)
	li $t0, 29788
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	sw $t0, -988($fp)
	li $t0, 47973
	sw $t0, -992($fp)
	addi $t0, $fp, -116
	sw $t0, -996($fp)
	li $t0, 0
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1004($fp)
	lw $t0, -996($fp)
	lw $t1, -1004($fp)
	add $t0, $t0, $t1
	sw $t0, -1008($fp)
	lw $t0, -992($fp)
	lw $t1, -1008($fp)
	sw $t0, 0($t1)
	lw $t0, -1008($fp)
	lw $t1, 0($t0)
	sw $t1, -1012($fp)
	li $t0, 48784
	sw $t0, -1016($fp)
	addi $t0, $fp, -116
	sw $t0, -1020($fp)
	li $t0, 1
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1028($fp)
	lw $t0, -1020($fp)
	lw $t1, -1028($fp)
	add $t0, $t0, $t1
	sw $t0, -1032($fp)
	lw $t0, -1016($fp)
	lw $t1, -1032($fp)
	sw $t0, 0($t1)
	lw $t0, -1032($fp)
	lw $t1, 0($t0)
	sw $t1, -1036($fp)
	li $t0, 36862
	sw $t0, -1040($fp)
	addi $t0, $fp, -116
	sw $t0, -1044($fp)
	li $t0, 2
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1052($fp)
	lw $t0, -1044($fp)
	lw $t1, -1052($fp)
	add $t0, $t0, $t1
	sw $t0, -1056($fp)
	lw $t0, -1040($fp)
	lw $t1, -1056($fp)
	sw $t0, 0($t1)
	lw $t0, -1056($fp)
	lw $t1, 0($t0)
	sw $t1, -1060($fp)
	li $t0, 28560
	sw $t0, -1064($fp)
	addi $t0, $fp, -116
	sw $t0, -1068($fp)
	li $t0, 3
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1076($fp)
	lw $t0, -1068($fp)
	lw $t1, -1076($fp)
	add $t0, $t0, $t1
	sw $t0, -1080($fp)
	lw $t0, -1064($fp)
	lw $t1, -1080($fp)
	sw $t0, 0($t1)
	lw $t0, -1080($fp)
	lw $t1, 0($t0)
	sw $t1, -1084($fp)
	li $t0, 7590
	sw $t0, -1088($fp)
	addi $t0, $fp, -116
	sw $t0, -1092($fp)
	li $t0, 4
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1100($fp)
	lw $t0, -1092($fp)
	lw $t1, -1100($fp)
	add $t0, $t0, $t1
	sw $t0, -1104($fp)
	lw $t0, -1088($fp)
	lw $t1, -1104($fp)
	sw $t0, 0($t1)
	lw $t0, -1104($fp)
	lw $t1, 0($t0)
	sw $t1, -1108($fp)
	li $t0, 4353
	sw $t0, -1112($fp)
	addi $t0, $fp, -116
	sw $t0, -1116($fp)
	li $t0, 5
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1124($fp)
	lw $t0, -1116($fp)
	lw $t1, -1124($fp)
	add $t0, $t0, $t1
	sw $t0, -1128($fp)
	lw $t0, -1112($fp)
	lw $t1, -1128($fp)
	sw $t0, 0($t1)
	lw $t0, -1128($fp)
	lw $t1, 0($t0)
	sw $t1, -1132($fp)
	li $t0, 11149
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	sw $t0, -1144($fp)
	li $t0, 14502
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	sw $t0, -1156($fp)
	li $t0, 59662
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	sw $t0, -1168($fp)
	li $t0, 42655
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	sw $t0, -1180($fp)
	li $t0, 3196
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	sw $t0, -1192($fp)
	li $t0, 29126
	sw $t0, -1196($fp)
	addi $t0, $fp, -124
	sw $t0, -1200($fp)
	li $t0, 0
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1208($fp)
	lw $t0, -1200($fp)
	lw $t1, -1208($fp)
	add $t0, $t0, $t1
	sw $t0, -1212($fp)
	lw $t0, -1196($fp)
	lw $t1, -1212($fp)
	sw $t0, 0($t1)
	lw $t0, -1212($fp)
	lw $t1, 0($t0)
	sw $t1, -1216($fp)
	li $t0, 63246
	sw $t0, -1220($fp)
	addi $t0, $fp, -124
	sw $t0, -1224($fp)
	li $t0, 1
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1232($fp)
	lw $t0, -1224($fp)
	lw $t1, -1232($fp)
	add $t0, $t0, $t1
	sw $t0, -1236($fp)
	lw $t0, -1220($fp)
	lw $t1, -1236($fp)
	sw $t0, 0($t1)
	lw $t0, -1236($fp)
	lw $t1, 0($t0)
	sw $t1, -1240($fp)
	li $t0, 60764
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	sw $t0, -1252($fp)
	li $t0, 16420
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	sw $t0, -1264($fp)
	li $t0, 4856
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -1276($fp)
	li $t0, 7191
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1288($fp)
	li $t0, 40532
	sw $t0, -1292($fp)
	addi $t0, $fp, -148
	sw $t0, -1296($fp)
	li $t0, 0
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1304($fp)
	lw $t0, -1296($fp)
	lw $t1, -1304($fp)
	add $t0, $t0, $t1
	sw $t0, -1308($fp)
	lw $t0, -1292($fp)
	lw $t1, -1308($fp)
	sw $t0, 0($t1)
	lw $t0, -1308($fp)
	lw $t1, 0($t0)
	sw $t1, -1312($fp)
	li $t0, 39991
	sw $t0, -1316($fp)
	addi $t0, $fp, -148
	sw $t0, -1320($fp)
	li $t0, 1
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1328($fp)
	lw $t0, -1320($fp)
	lw $t1, -1328($fp)
	add $t0, $t0, $t1
	sw $t0, -1332($fp)
	lw $t0, -1316($fp)
	lw $t1, -1332($fp)
	sw $t0, 0($t1)
	lw $t0, -1332($fp)
	lw $t1, 0($t0)
	sw $t1, -1336($fp)
	li $t0, 16904
	sw $t0, -1340($fp)
	addi $t0, $fp, -148
	sw $t0, -1344($fp)
	li $t0, 2
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1352($fp)
	lw $t0, -1344($fp)
	lw $t1, -1352($fp)
	add $t0, $t0, $t1
	sw $t0, -1356($fp)
	lw $t0, -1340($fp)
	lw $t1, -1356($fp)
	sw $t0, 0($t1)
	lw $t0, -1356($fp)
	lw $t1, 0($t0)
	sw $t1, -1360($fp)
	li $t0, 48313
	sw $t0, -1364($fp)
	addi $t0, $fp, -148
	sw $t0, -1368($fp)
	li $t0, 3
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1376($fp)
	lw $t0, -1368($fp)
	lw $t1, -1376($fp)
	add $t0, $t0, $t1
	sw $t0, -1380($fp)
	lw $t0, -1364($fp)
	lw $t1, -1380($fp)
	sw $t0, 0($t1)
	lw $t0, -1380($fp)
	lw $t1, 0($t0)
	sw $t1, -1384($fp)
	li $t0, 17898
	sw $t0, -1388($fp)
	addi $t0, $fp, -148
	sw $t0, -1392($fp)
	li $t0, 4
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1400($fp)
	lw $t0, -1392($fp)
	lw $t1, -1400($fp)
	add $t0, $t0, $t1
	sw $t0, -1404($fp)
	lw $t0, -1388($fp)
	lw $t1, -1404($fp)
	sw $t0, 0($t1)
	lw $t0, -1404($fp)
	lw $t1, 0($t0)
	sw $t1, -1408($fp)
	li $t0, 15278
	sw $t0, -1412($fp)
	addi $t0, $fp, -148
	sw $t0, -1416($fp)
	li $t0, 5
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1424($fp)
	lw $t0, -1416($fp)
	lw $t1, -1424($fp)
	add $t0, $t0, $t1
	sw $t0, -1428($fp)
	lw $t0, -1412($fp)
	lw $t1, -1428($fp)
	sw $t0, 0($t1)
	lw $t0, -1428($fp)
	lw $t1, 0($t0)
	sw $t1, -1432($fp)
	li $t0, 7078
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	sw $t0, -1444($fp)
	li $t0, 60605
	sw $t0, -1448($fp)
	addi $t0, $fp, -184
	sw $t0, -1452($fp)
	li $t0, 0
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1460($fp)
	lw $t0, -1452($fp)
	lw $t1, -1460($fp)
	add $t0, $t0, $t1
	sw $t0, -1464($fp)
	lw $t0, -1448($fp)
	lw $t1, -1464($fp)
	sw $t0, 0($t1)
	lw $t0, -1464($fp)
	lw $t1, 0($t0)
	sw $t1, -1468($fp)
	li $t0, 630
	sw $t0, -1472($fp)
	addi $t0, $fp, -184
	sw $t0, -1476($fp)
	li $t0, 1
	sw $t0, -1480($fp)
	lw $t0, -1480($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1484($fp)
	lw $t0, -1476($fp)
	lw $t1, -1484($fp)
	add $t0, $t0, $t1
	sw $t0, -1488($fp)
	lw $t0, -1472($fp)
	lw $t1, -1488($fp)
	sw $t0, 0($t1)
	lw $t0, -1488($fp)
	lw $t1, 0($t0)
	sw $t1, -1492($fp)
	li $t0, 57018
	sw $t0, -1496($fp)
	addi $t0, $fp, -184
	sw $t0, -1500($fp)
	li $t0, 2
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1508($fp)
	lw $t0, -1500($fp)
	lw $t1, -1508($fp)
	add $t0, $t0, $t1
	sw $t0, -1512($fp)
	lw $t0, -1496($fp)
	lw $t1, -1512($fp)
	sw $t0, 0($t1)
	lw $t0, -1512($fp)
	lw $t1, 0($t0)
	sw $t1, -1516($fp)
	li $t0, 57809
	sw $t0, -1520($fp)
	addi $t0, $fp, -184
	sw $t0, -1524($fp)
	li $t0, 3
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1532($fp)
	lw $t0, -1524($fp)
	lw $t1, -1532($fp)
	add $t0, $t0, $t1
	sw $t0, -1536($fp)
	lw $t0, -1520($fp)
	lw $t1, -1536($fp)
	sw $t0, 0($t1)
	lw $t0, -1536($fp)
	lw $t1, 0($t0)
	sw $t1, -1540($fp)
	li $t0, 57040
	sw $t0, -1544($fp)
	addi $t0, $fp, -184
	sw $t0, -1548($fp)
	li $t0, 4
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1556($fp)
	lw $t0, -1548($fp)
	lw $t1, -1556($fp)
	add $t0, $t0, $t1
	sw $t0, -1560($fp)
	lw $t0, -1544($fp)
	lw $t1, -1560($fp)
	sw $t0, 0($t1)
	lw $t0, -1560($fp)
	lw $t1, 0($t0)
	sw $t1, -1564($fp)
	li $t0, 47106
	sw $t0, -1568($fp)
	addi $t0, $fp, -184
	sw $t0, -1572($fp)
	li $t0, 5
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1580($fp)
	lw $t0, -1572($fp)
	lw $t1, -1580($fp)
	add $t0, $t0, $t1
	sw $t0, -1584($fp)
	lw $t0, -1568($fp)
	lw $t1, -1584($fp)
	sw $t0, 0($t1)
	lw $t0, -1584($fp)
	lw $t1, 0($t0)
	sw $t1, -1588($fp)
	li $t0, 22062
	sw $t0, -1592($fp)
	addi $t0, $fp, -184
	sw $t0, -1596($fp)
	li $t0, 6
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1604($fp)
	lw $t0, -1596($fp)
	lw $t1, -1604($fp)
	add $t0, $t0, $t1
	sw $t0, -1608($fp)
	lw $t0, -1592($fp)
	lw $t1, -1608($fp)
	sw $t0, 0($t1)
	lw $t0, -1608($fp)
	lw $t1, 0($t0)
	sw $t1, -1612($fp)
	li $t0, 39477
	sw $t0, -1616($fp)
	addi $t0, $fp, -184
	sw $t0, -1620($fp)
	li $t0, 7
	sw $t0, -1624($fp)
	lw $t0, -1624($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1628($fp)
	lw $t0, -1620($fp)
	lw $t1, -1628($fp)
	add $t0, $t0, $t1
	sw $t0, -1632($fp)
	lw $t0, -1616($fp)
	lw $t1, -1632($fp)
	sw $t0, 0($t1)
	lw $t0, -1632($fp)
	lw $t1, 0($t0)
	sw $t1, -1636($fp)
	li $t0, 30354
	sw $t0, -1640($fp)
	addi $t0, $fp, -184
	sw $t0, -1644($fp)
	li $t0, 8
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1652($fp)
	lw $t0, -1644($fp)
	lw $t1, -1652($fp)
	add $t0, $t0, $t1
	sw $t0, -1656($fp)
	lw $t0, -1640($fp)
	lw $t1, -1656($fp)
	sw $t0, 0($t1)
	lw $t0, -1656($fp)
	lw $t1, 0($t0)
	sw $t1, -1660($fp)
	li $t0, 58924
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	sw $t0, -1672($fp)
	li $t0, 2501
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	sw $t0, -1680($fp)
	lw $t0, -1680($fp)
	sw $t0, -1684($fp)
	li $t0, 37944
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	sw $t0, -1696($fp)
	li $t0, 63277
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	sw $t0, -1708($fp)
	li $t0, 13650
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	sw $t0, -1720($fp)
	li $t0, 52447
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	sw $t0, -1732($fp)
	li $t0, 57403
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	sw $t0, -1744($fp)
	li $t0, 56306
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	sw $t0, -1756($fp)
	li $t0, 55643
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	sw $t0, -1768($fp)
	li $t0, 20993
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	sw $t0, -1780($fp)
	li $t0, 54016
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	sw $t0, -1792($fp)
	li $t0, 50872
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	sw $t0, -1800($fp)
	lw $t0, -1800($fp)
	sw $t0, -1804($fp)
	li $t0, 37413
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	sw $t0, -1812($fp)
	lw $t0, -1812($fp)
	sw $t0, -1816($fp)
	li $t0, 58872
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	sw $t0, -1824($fp)
	lw $t0, -1824($fp)
	sw $t0, -1828($fp)
	li $t0, 58063
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	sw $t0, -1840($fp)
	li $t0, 12410
	sw $t0, -1844($fp)
	addi $t0, $fp, -220
	sw $t0, -1848($fp)
	li $t0, 0
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1856($fp)
	lw $t0, -1848($fp)
	lw $t1, -1856($fp)
	add $t0, $t0, $t1
	sw $t0, -1860($fp)
	lw $t0, -1844($fp)
	lw $t1, -1860($fp)
	sw $t0, 0($t1)
	lw $t0, -1860($fp)
	lw $t1, 0($t0)
	sw $t1, -1864($fp)
	li $t0, 33327
	sw $t0, -1868($fp)
	addi $t0, $fp, -220
	sw $t0, -1872($fp)
	li $t0, 1
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1880($fp)
	lw $t0, -1872($fp)
	lw $t1, -1880($fp)
	add $t0, $t0, $t1
	sw $t0, -1884($fp)
	lw $t0, -1868($fp)
	lw $t1, -1884($fp)
	sw $t0, 0($t1)
	lw $t0, -1884($fp)
	lw $t1, 0($t0)
	sw $t1, -1888($fp)
	li $t0, 9432
	sw $t0, -1892($fp)
	addi $t0, $fp, -220
	sw $t0, -1896($fp)
	li $t0, 2
	sw $t0, -1900($fp)
	lw $t0, -1900($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1904($fp)
	lw $t0, -1896($fp)
	lw $t1, -1904($fp)
	add $t0, $t0, $t1
	sw $t0, -1908($fp)
	lw $t0, -1892($fp)
	lw $t1, -1908($fp)
	sw $t0, 0($t1)
	lw $t0, -1908($fp)
	lw $t1, 0($t0)
	sw $t1, -1912($fp)
	li $t0, 60723
	sw $t0, -1916($fp)
	addi $t0, $fp, -220
	sw $t0, -1920($fp)
	li $t0, 3
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1928($fp)
	lw $t0, -1920($fp)
	lw $t1, -1928($fp)
	add $t0, $t0, $t1
	sw $t0, -1932($fp)
	lw $t0, -1916($fp)
	lw $t1, -1932($fp)
	sw $t0, 0($t1)
	lw $t0, -1932($fp)
	lw $t1, 0($t0)
	sw $t1, -1936($fp)
	li $t0, 51225
	sw $t0, -1940($fp)
	addi $t0, $fp, -220
	sw $t0, -1944($fp)
	li $t0, 4
	sw $t0, -1948($fp)
	lw $t0, -1948($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1952($fp)
	lw $t0, -1944($fp)
	lw $t1, -1952($fp)
	add $t0, $t0, $t1
	sw $t0, -1956($fp)
	lw $t0, -1940($fp)
	lw $t1, -1956($fp)
	sw $t0, 0($t1)
	lw $t0, -1956($fp)
	lw $t1, 0($t0)
	sw $t1, -1960($fp)
	li $t0, 24710
	sw $t0, -1964($fp)
	addi $t0, $fp, -220
	sw $t0, -1968($fp)
	li $t0, 5
	sw $t0, -1972($fp)
	lw $t0, -1972($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1976($fp)
	lw $t0, -1968($fp)
	lw $t1, -1976($fp)
	add $t0, $t0, $t1
	sw $t0, -1980($fp)
	lw $t0, -1964($fp)
	lw $t1, -1980($fp)
	sw $t0, 0($t1)
	lw $t0, -1980($fp)
	lw $t1, 0($t0)
	sw $t1, -1984($fp)
	li $t0, 2265
	sw $t0, -1988($fp)
	addi $t0, $fp, -220
	sw $t0, -1992($fp)
	li $t0, 6
	sw $t0, -1996($fp)
	lw $t0, -1996($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2000($fp)
	lw $t0, -1992($fp)
	lw $t1, -2000($fp)
	add $t0, $t0, $t1
	sw $t0, -2004($fp)
	lw $t0, -1988($fp)
	lw $t1, -2004($fp)
	sw $t0, 0($t1)
	lw $t0, -2004($fp)
	lw $t1, 0($t0)
	sw $t1, -2008($fp)
	li $t0, 46295
	sw $t0, -2012($fp)
	addi $t0, $fp, -220
	sw $t0, -2016($fp)
	li $t0, 7
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2024($fp)
	lw $t0, -2016($fp)
	lw $t1, -2024($fp)
	add $t0, $t0, $t1
	sw $t0, -2028($fp)
	lw $t0, -2012($fp)
	lw $t1, -2028($fp)
	sw $t0, 0($t1)
	lw $t0, -2028($fp)
	lw $t1, 0($t0)
	sw $t1, -2032($fp)
	li $t0, 25341
	sw $t0, -2036($fp)
	addi $t0, $fp, -220
	sw $t0, -2040($fp)
	li $t0, 8
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2048($fp)
	lw $t0, -2040($fp)
	lw $t1, -2048($fp)
	add $t0, $t0, $t1
	sw $t0, -2052($fp)
	lw $t0, -2036($fp)
	lw $t1, -2052($fp)
	sw $t0, 0($t1)
	lw $t0, -2052($fp)
	lw $t1, 0($t0)
	sw $t1, -2056($fp)
	li $t0, 59283
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	sw $t0, -2068($fp)
	li $t0, 38568
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	sw $t0, -2080($fp)
	li $t0, 0
	sw $t0, -2084($fp)
	li $t0, 16845
	sw $t0, -2088($fp)
	addi $t0, $fp, -92
	sw $t0, -2092($fp)
	li $t0, 0
	sw $t0, -2096($fp)
	li $t0, 40854
	sw $t0, -2100($fp)
	lw $t1, -2100($fp)
	li $t2, 0
	bne $t1, $t2, label1037
	j label1036
label1036:
	li $t0, 1
	sw $t0, -2096($fp)
label1037:
	li $t0, 4
	lw $t1, -2096($fp)
	mul $t0, $t0, $t1
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	lw $t1, -2092($fp)
	add $t0, $t0, $t1
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	lw $t1, 0($t0)
	sw $t1, -2112($fp)
	lw $t1, -2088($fp)
	lw $t2, -2112($fp)
	bgt $t1, $t2, label1034
	j label1035
label1034:
	li $t0, 1
	sw $t0, -2084($fp)
label1035:
	lw $ra, -4($fp)
	lw $v0, -2084($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -2116($fp)
	li $t0, 60630
	sw $t0, -2120($fp)
	lw $t1, -2120($fp)
	li $t2, 0
	bne $t1, $t2, label1040
	j label1038
label1040:
	li $t0, 56322
	sw $t0, -2124($fp)
	li $t0, 5672
	sw $t0, -2128($fp)
	lw $t0, -2124($fp)
	lw $t1, -2128($fp)
	mul $t0, $t0, $t1
	sw $t0, -2132($fp)
	li $t0, 54018
	sw $t0, -2136($fp)
	lw $t0, -2132($fp)
	lw $t1, -2136($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2140($fp)
	li $t0, 58824
	sw $t0, -2144($fp)
	lw $t0, -2140($fp)
	lw $t1, -2144($fp)
	mul $t0, $t0, $t1
	sw $t0, -2148($fp)
	lw $t1, -2148($fp)
	li $t2, 0
	bne $t1, $t2, label1038
	j label1039
label1038:
	li $t0, 1
	sw $t0, -2116($fp)
label1039:
	lw $ra, -4($fp)
	lw $v0, -2116($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 43617
	sw $t0, -2152($fp)
	lw $ra, -4($fp)
	lw $v0, -2152($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label1041:
	li $t0, 0
	sw $t0, -2156($fp)
	li $t0, 0
	sw $t0, -2160($fp)
	addi $t0, $fp, -68
	sw $t0, -2164($fp)
	li $t0, 2
	sw $t0, -2168($fp)
	li $t0, 4
	lw $t1, -2168($fp)
	mul $t0, $t0, $t1
	sw $t0, -2172($fp)
	lw $t0, -2172($fp)
	lw $t1, -2164($fp)
	add $t0, $t0, $t1
	sw $t0, -2176($fp)
	lw $t0, -2176($fp)
	lw $t1, 0($t0)
	sw $t1, -2180($fp)
	lw $t0, -1836($fp)
	sw $t0, -2184($fp)
	lw $t1, -2180($fp)
	lw $t2, -2184($fp)
	bge $t1, $t2, label1046
	j label1047
label1046:
	li $t0, 1
	sw $t0, -2160($fp)
label1047:
	addi $t0, $fp, -124
	sw $t0, -2188($fp)
	lw $t0, -1800($fp)
	sw $t0, -2192($fp)
	li $t0, 4
	lw $t1, -2192($fp)
	mul $t0, $t0, $t1
	sw $t0, -2196($fp)
	lw $t0, -2196($fp)
	lw $t1, -2188($fp)
	add $t0, $t0, $t1
	sw $t0, -2200($fp)
	lw $t0, -2200($fp)
	lw $t1, 0($t0)
	sw $t1, -2204($fp)
	lw $t1, -2160($fp)
	lw $t2, -2204($fp)
	blt $t1, $t2, label1044
	j label1045
label1044:
	li $t0, 1
	sw $t0, -2156($fp)
label1045:
	li $t0, 0
	sw $t0, -2208($fp)
	li $t0, 30528
	sw $t0, -2212($fp)
	lw $t1, -2212($fp)
	li $t2, 0
	bne $t1, $t2, label1049
	j label1048
label1048:
	li $t0, 1
	sw $t0, -2208($fp)
label1049:
	li $t0, 0
	sw $t0, -2216($fp)
	lw $t0, -924($fp)
	sw $t0, -2220($fp)
	lw $t1, -2220($fp)
	li $t2, 0
	bne $t1, $t2, label1051
	j label1050
label1050:
	li $t0, 1
	sw $t0, -2216($fp)
label1051:
	lw $t0, -2208($fp)
	lw $t1, -2216($fp)
	mul $t0, $t0, $t1
	sw $t0, -2224($fp)
	li $t0, 0
	lw $t1, -2224($fp)
	sub $t0, $t0, $t1
	sw $t0, -2228($fp)
	lw $t1, -2156($fp)
	lw $t2, -2228($fp)
	bge $t1, $t2, label1042
	j label1043
label1042:
	addi $t0, $fp, -68
	sw $t0, -2232($fp)
	lw $t0, -1692($fp)
	sw $t0, -2236($fp)
	lw $t0, -2236($fp)
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	sw $t0, -2240($fp)
	li $t0, 4
	lw $t1, -2240($fp)
	mul $t0, $t0, $t1
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	lw $t1, -2232($fp)
	add $t0, $t0, $t1
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	lw $t1, 0($t0)
	sw $t1, -2252($fp)
	lw $t1, -2252($fp)
	li $t2, 0
	bne $t1, $t2, label1052
	j label1053
label1052:
	li $t0, 0
	sw $t0, -2256($fp)
	lw $t0, -528($fp)
	sw $t0, -2260($fp)
	lw $t1, -2260($fp)
	li $t2, 0
	bne $t1, $t2, label1055
	j label1056
label1055:
	li $t0, 1
	sw $t0, -2256($fp)
label1056:
	li $t0, 43627
	sw $t0, -2264($fp)
	lw $t0, -2256($fp)
	lw $t1, -2264($fp)
	mul $t0, $t0, $t1
	sw $t0, -2268($fp)
	lw $t0, -1164($fp)
	sw $t0, -2272($fp)
	lw $t0, -2272($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -2276($fp)
	li $t0, 63244
	sw $t0, -2280($fp)
	lw $t0, -2280($fp)
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	sw $t0, -2284($fp)
	li $t0, 0
	sw $t0, -2288($fp)
	addi $t0, $fp, -124
	sw $t0, -2292($fp)
	lw $t0, -420($fp)
	sw $t0, -2296($fp)
	li $t0, 4
	lw $t1, -2296($fp)
	mul $t0, $t0, $t1
	sw $t0, -2300($fp)
	lw $t0, -2300($fp)
	lw $t1, -2292($fp)
	add $t0, $t0, $t1
	sw $t0, -2304($fp)
	lw $t0, -2304($fp)
	lw $t1, 0($t0)
	sw $t1, -2308($fp)
	lw $t1, -2308($fp)
	li $t2, 0
	bne $t1, $t2, label1058
	j label1057
label1057:
	li $t0, 1
	sw $t0, -2288($fp)
label1058:
	addi $sp, $sp, -4
	lw $t0, -2276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2288($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2312($fp)
	addi $sp, $sp, 16
	lw $t0, -2268($fp)
	lw $t1, -2312($fp)
	sub $t0, $t0, $t1
	sw $t0, -2316($fp)
	j label1054
label1053:
	li $t0, 0
	sw $t0, -2320($fp)
	li $t0, 20635
	sw $t0, -2324($fp)
	lw $t0, -1800($fp)
	sw $t0, -2328($fp)
	li $t0, 44837
	sw $t0, -2332($fp)
	lw $t0, -2328($fp)
	lw $t1, -2332($fp)
	sub $t0, $t0, $t1
	sw $t0, -2336($fp)
	li $t0, 0
	sw $t0, -2340($fp)
	li $t0, 0
	sw $t0, -2344($fp)
	lw $t0, -1440($fp)
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	sw $t0, -2352($fp)
	li $t0, 0
	sw $t0, -2356($fp)
	li $t0, 46361
	sw $t0, -2360($fp)
	lw $t1, -2360($fp)
	li $t2, 0
	bne $t1, $t2, label1066
	j label1065
label1065:
	li $t0, 1
	sw $t0, -2356($fp)
label1066:
	li $t0, 0
	sw $t0, -2364($fp)
	lw $t0, 12($fp)
	sw $t0, -2368($fp)
	lw $t0, -2368($fp)
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	sw $t0, -2372($fp)
	li $t0, 0
	sw $t0, -2376($fp)
	li $t0, 0
	sw $t0, -2380($fp)
	li $t0, 32641
	sw $t0, -2384($fp)
	lw $t1, -2384($fp)
	li $t2, 0
	bne $t1, $t2, label1072
	j label1071
label1071:
	li $t0, 1
	sw $t0, -2380($fp)
label1072:
	lw $t0, -984($fp)
	sw $t0, -2388($fp)
	lw $t1, -2380($fp)
	lw $t2, -2388($fp)
	beq $t1, $t2, label1069
	j label1070
label1069:
	li $t0, 1
	sw $t0, -2376($fp)
label1070:
	lw $t0, -1728($fp)
	sw $t0, -2392($fp)
	li $t0, 64078
	sw $t0, -2396($fp)
	lw $t0, -2392($fp)
	lw $t1, -2396($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2400($fp)
	addi $sp, $sp, -4
	lw $t0, -2372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2400($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2404($fp)
	addi $sp, $sp, 16
	lw $t1, -2404($fp)
	li $t2, 0
	bne $t1, $t2, label1068
	j label1067
label1067:
	li $t0, 1
	sw $t0, -2364($fp)
label1068:
	li $t0, 0
	sw $t0, -2408($fp)
	li $t0, 0
	sw $t0, -2412($fp)
	lw $t0, -1152($fp)
	sw $t0, -2416($fp)
	li $t0, 7931
	sw $t0, -2420($fp)
	lw $t1, -2416($fp)
	lw $t2, -2420($fp)
	beq $t1, $t2, label1075
	j label1076
label1075:
	li $t0, 1
	sw $t0, -2412($fp)
label1076:
	li $t0, 44096
	sw $t0, -2424($fp)
	lw $t1, -2412($fp)
	lw $t2, -2424($fp)
	beq $t1, $t2, label1073
	j label1074
label1073:
	li $t0, 1
	sw $t0, -2408($fp)
label1074:
	addi $t0, $fp, -148
	sw $t0, -2428($fp)
	li $t0, 3
	sw $t0, -2432($fp)
	li $t0, 4
	lw $t1, -2432($fp)
	mul $t0, $t0, $t1
	sw $t0, -2436($fp)
	lw $t0, -2436($fp)
	lw $t1, -2428($fp)
	add $t0, $t0, $t1
	sw $t0, -2440($fp)
	lw $t0, -2440($fp)
	lw $t1, 0($t0)
	sw $t1, -2444($fp)
	addi $sp, $sp, -4
	lw $t0, -2352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2444($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2448($fp)
	addi $sp, $sp, 24
	lw $t0, -480($fp)
	sw $t0, -2452($fp)
	lw $t1, -2448($fp)
	lw $t2, -2452($fp)
	blt $t1, $t2, label1063
	j label1064
label1063:
	li $t0, 1
	sw $t0, -2344($fp)
label1064:
	lw $t0, -1716($fp)
	sw $t0, -2456($fp)
	li $t0, 64035
	sw $t0, -2460($fp)
	lw $t0, -2456($fp)
	lw $t1, -2460($fp)
	add $t0, $t0, $t1
	sw $t0, -2464($fp)
	li $t0, 0
	sw $t0, -2468($fp)
	li $t0, 45061
	sw $t0, -2472($fp)
	lw $t1, -2472($fp)
	li $t2, 0
	bne $t1, $t2, label1079
	j label1078
label1079:
	lw $t0, -408($fp)
	sw $t0, -2476($fp)
	lw $t1, -2476($fp)
	li $t2, 0
	bne $t1, $t2, label1077
	j label1078
label1077:
	li $t0, 1
	sw $t0, -2468($fp)
label1078:
	li $t0, 0
	sw $t0, -2480($fp)
	lw $t0, -960($fp)
	sw $t0, -2484($fp)
	lw $t1, -2484($fp)
	li $t2, 0
	bne $t1, $t2, label1083
	j label1081
label1083:
	li $t0, 5971
	sw $t0, -2488($fp)
	lw $t1, -2488($fp)
	li $t2, 0
	bne $t1, $t2, label1082
	j label1081
label1082:
	li $t0, 36498
	sw $t0, -2492($fp)
	lw $t1, -2492($fp)
	li $t2, 0
	bne $t1, $t2, label1080
	j label1081
label1080:
	li $t0, 1
	sw $t0, -2480($fp)
label1081:
	li $t0, 0
	sw $t0, -2496($fp)
	li $t0, 0
	sw $t0, -2500($fp)
	lw $t0, -480($fp)
	sw $t0, -2504($fp)
	lw $t1, -2504($fp)
	li $t2, 0
	bne $t1, $t2, label1087
	j label1086
label1086:
	li $t0, 1
	sw $t0, -2500($fp)
label1087:
	lw $t0, -432($fp)
	sw $t0, -2508($fp)
	lw $t1, -2500($fp)
	lw $t2, -2508($fp)
	bgt $t1, $t2, label1084
	j label1085
label1084:
	li $t0, 1
	sw $t0, -2496($fp)
label1085:
	addi $sp, $sp, -4
	lw $t0, -2344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2496($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2512($fp)
	addi $sp, $sp, 24
	lw $t0, -420($fp)
	sw $t0, -2516($fp)
	lw $t1, -2512($fp)
	lw $t2, -2516($fp)
	bgt $t1, $t2, label1061
	j label1062
label1061:
	li $t0, 1
	sw $t0, -2340($fp)
label1062:
	li $t0, 51725
	sw $t0, -2520($fp)
	lw $t0, -1248($fp)
	sw $t0, -2524($fp)
	lw $t0, -2520($fp)
	lw $t1, -2524($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2528($fp)
	lw $t0, -1164($fp)
	sw $t0, -2532($fp)
	lw $t0, -2528($fp)
	lw $t1, -2532($fp)
	sub $t0, $t0, $t1
	sw $t0, -2536($fp)
	li $t0, 64621
	sw $t0, -2540($fp)
	lw $t0, -1812($fp)
	sw $t0, -2544($fp)
	addi $sp, $sp, -4
	lw $t0, -2336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2544($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2548($fp)
	addi $sp, $sp, 24
	lw $t0, -948($fp)
	sw $t0, -2552($fp)
	li $t0, 0
	lw $t1, -2552($fp)
	sub $t0, $t0, $t1
	sw $t0, -2556($fp)
	lw $t0, -2548($fp)
	lw $t1, -2556($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2560($fp)
	lw $t1, -2324($fp)
	lw $t2, -2560($fp)
	beq $t1, $t2, label1059
	j label1060
label1059:
	li $t0, 1
	sw $t0, -2320($fp)
label1060:
label1054:
	j label1041
label1043:
label1088:
	li $t0, 0
	sw $t0, -2564($fp)
	addi $t0, $fp, -68
	sw $t0, -2568($fp)
	lw $t0, -456($fp)
	sw $t0, -2572($fp)
	li $t0, 4
	lw $t1, -2572($fp)
	mul $t0, $t0, $t1
	sw $t0, -2576($fp)
	lw $t0, -2576($fp)
	lw $t1, -2568($fp)
	add $t0, $t0, $t1
	sw $t0, -2580($fp)
	lw $t0, -2580($fp)
	lw $t1, 0($t0)
	sw $t1, -2584($fp)
	lw $t1, -2584($fp)
	li $t2, 0
	bne $t1, $t2, label1092
	j label1091
label1091:
	li $t0, 1
	sw $t0, -2564($fp)
label1092:
	li $t0, 0
	sw $t0, -2588($fp)
	lw $t0, 8($fp)
	sw $t0, -2592($fp)
	li $t0, 0
	lw $t1, -2592($fp)
	sub $t0, $t0, $t1
	sw $t0, -2596($fp)
	li $t0, 40109
	sw $t0, -2600($fp)
	lw $t0, -2600($fp)
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	sw $t0, -2604($fp)
	lw $t0, -1248($fp)
	sw $t0, -2608($fp)
	lw $t0, -2608($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -2612($fp)
	li $t0, 0
	sw $t0, -2616($fp)
	lw $t0, -420($fp)
	sw $t0, -2620($fp)
	li $t0, 0
	lw $t1, -2620($fp)
	sub $t0, $t0, $t1
	sw $t0, -2624($fp)
	lw $t0, 8($fp)
	sw $t0, -2628($fp)
	lw $t1, -2624($fp)
	lw $t2, -2628($fp)
	bne $t1, $t2, label1095
	j label1096
label1095:
	li $t0, 1
	sw $t0, -2616($fp)
label1096:
	li $t0, 0
	sw $t0, -2632($fp)
	li $t0, 57982
	sw $t0, -2636($fp)
	lw $t0, -1668($fp)
	sw $t0, -2640($fp)
	lw $t1, -2636($fp)
	lw $t2, -2640($fp)
	blt $t1, $t2, label1099
	j label1098
label1099:
	lw $t0, -1248($fp)
	sw $t0, -2644($fp)
	lw $t1, -2644($fp)
	li $t2, 0
	bne $t1, $t2, label1097
	j label1098
label1097:
	li $t0, 1
	sw $t0, -2632($fp)
label1098:
	addi $sp, $sp, -4
	lw $t0, -2596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2632($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2648($fp)
	addi $sp, $sp, 24
	lw $t1, -2648($fp)
	li $t2, 0
	bne $t1, $t2, label1094
	j label1093
label1093:
	li $t0, 1
	sw $t0, -2588($fp)
label1094:
	lw $t0, -2564($fp)
	lw $t1, -2588($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2652($fp)
	li $t0, 0
	lw $t1, -2652($fp)
	sub $t0, $t0, $t1
	sw $t0, -2656($fp)
	li $t0, 0
	lw $t1, -2656($fp)
	sub $t0, $t0, $t1
	sw $t0, -2660($fp)
	lw $t1, -2660($fp)
	li $t2, 0
	bne $t1, $t2, label1089
	j label1090
label1089:
	li $t0, 17870
	sw $t0, -2664($fp)
	lw $t0, -2664($fp)
	sw $t0, -2668($fp)
	lw $t0, -2668($fp)
	sw $t0, -2672($fp)
	li $t0, 9291
	sw $t0, -2676($fp)
	lw $t0, -2676($fp)
	sw $t0, -2680($fp)
	lw $t0, -2680($fp)
	sw $t0, -2684($fp)
	li $t0, 15427
	sw $t0, -2688($fp)
	lw $t0, -2688($fp)
	sw $t0, -2692($fp)
	lw $t0, -2692($fp)
	sw $t0, -2696($fp)
	li $t0, 12964
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	sw $t0, -2704($fp)
	lw $t0, -2704($fp)
	sw $t0, -2708($fp)
	li $t0, 78
	sw $t0, -2712($fp)
	lw $t0, -2712($fp)
	sw $t0, -2716($fp)
	lw $t0, -2716($fp)
	sw $t0, -2720($fp)
	li $t0, 21099
	sw $t0, -2724($fp)
	lw $t0, -2724($fp)
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	sw $t0, -2732($fp)
	li $t0, 1447
	sw $t0, -2736($fp)
	lw $t0, -2736($fp)
	sw $t0, -2740($fp)
	lw $t0, -2740($fp)
	sw $t0, -2744($fp)
	li $t0, 58902
	sw $t0, -2748($fp)
	lw $t0, -2748($fp)
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	sw $t0, -2756($fp)
	li $t0, 64716
	sw $t0, -2760($fp)
	lw $t0, -2760($fp)
	sw $t0, -2764($fp)
	lw $t0, -2764($fp)
	sw $t0, -2768($fp)
label1100:
	lw $t0, -960($fp)
	sw $t0, -2772($fp)
	li $t0, 53207
	sw $t0, -2776($fp)
	addi $t0, $fp, -68
	sw $t0, -2780($fp)
	li $t0, 0
	sw $t0, -2784($fp)
	li $t0, 4
	lw $t1, -2784($fp)
	mul $t0, $t0, $t1
	sw $t0, -2788($fp)
	lw $t0, -2788($fp)
	lw $t1, -2780($fp)
	add $t0, $t0, $t1
	sw $t0, -2792($fp)
	lw $t0, -2792($fp)
	lw $t1, 0($t0)
	sw $t1, -2796($fp)
	lw $t0, -2776($fp)
	lw $t1, -2796($fp)
	sub $t0, $t0, $t1
	sw $t0, -2800($fp)
	lw $t1, -2772($fp)
	lw $t2, -2800($fp)
	beq $t1, $t2, label1101
	j label1102
label1101:
label1103:
	addi $t0, $fp, -184
	sw $t0, -2804($fp)
	li $t0, 0
	sw $t0, -2808($fp)
	li $t0, 31298
	sw $t0, -2812($fp)
	lw $t1, -2812($fp)
	li $t2, 0
	bne $t1, $t2, label1108
	j label1106
label1108:
	lw $t0, -1812($fp)
	sw $t0, -2816($fp)
	lw $t0, -492($fp)
	sw $t0, -2820($fp)
	lw $t1, -2816($fp)
	lw $t2, -2820($fp)
	beq $t1, $t2, label1106
	j label1107
label1106:
	li $t0, 1
	sw $t0, -2808($fp)
label1107:
	li $t0, 4
	lw $t1, -2808($fp)
	mul $t0, $t0, $t1
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	lw $t1, -2804($fp)
	add $t0, $t0, $t1
	sw $t0, -2828($fp)
	lw $t0, -2828($fp)
	lw $t1, 0($t0)
	sw $t1, -2832($fp)
	lw $t1, -2832($fp)
	li $t2, 0
	bne $t1, $t2, label1104
	j label1105
label1104:
	lw $t0, -1776($fp)
	sw $t0, -2836($fp)
	li $t0, 0
	sw $t0, -2840($fp)
	li $t0, 63549
	sw $t0, -2844($fp)
	lw $t1, -2844($fp)
	li $t2, 0
	bne $t1, $t2, label1111
	j label1110
label1111:
	lw $t0, -1260($fp)
	sw $t0, -2848($fp)
	li $t0, 0
	sw $t0, -2852($fp)
	li $t0, 50344
	sw $t0, -2856($fp)
	lw $t1, -2856($fp)
	li $t2, 0
	bne $t1, $t2, label1113
	j label1112
label1112:
	li $t0, 1
	sw $t0, -2852($fp)
label1113:
	lw $t0, -2848($fp)
	lw $t1, -2852($fp)
	sub $t0, $t0, $t1
	sw $t0, -2860($fp)
	lw $t1, -2860($fp)
	li $t2, 0
	bne $t1, $t2, label1109
	j label1110
label1109:
	li $t0, 1
	sw $t0, -2840($fp)
label1110:
	j label1103
label1105:
	j label1100
label1102:
	lw $t0, -2716($fp)
	sw $t0, -2864($fp)
	lw $t0, -2864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2728($fp)
	sw $t0, -2868($fp)
	lw $t0, -2868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2740($fp)
	sw $t0, -2872($fp)
	lw $t0, -2872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2752($fp)
	sw $t0, -2876($fp)
	lw $t0, -2876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2764($fp)
	sw $t0, -2880($fp)
	lw $t0, -2880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2884($fp)
	lw $t0, -960($fp)
	sw $t0, -2888($fp)
	jal f8
	sw $v0, -2892($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -220
	sw $t0, -2896($fp)
	li $t0, 8
	sw $t0, -2900($fp)
	li $t0, 4
	lw $t1, -2900($fp)
	mul $t0, $t0, $t1
	sw $t0, -2904($fp)
	lw $t0, -2904($fp)
	lw $t1, -2896($fp)
	add $t0, $t0, $t1
	sw $t0, -2908($fp)
	lw $t0, -2908($fp)
	lw $t1, 0($t0)
	sw $t1, -2912($fp)
	lw $t0, -1836($fp)
	sw $t0, -2916($fp)
	lw $t0, -2912($fp)
	lw $t1, -2916($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2920($fp)
	li $t0, 0
	sw $t0, -2924($fp)
	addi $t0, $fp, -124
	sw $t0, -2928($fp)
	li $t0, 1
	sw $t0, -2932($fp)
	li $t0, 4
	lw $t1, -2932($fp)
	mul $t0, $t0, $t1
	sw $t0, -2936($fp)
	lw $t0, -2936($fp)
	lw $t1, -2928($fp)
	add $t0, $t0, $t1
	sw $t0, -2940($fp)
	lw $t0, -2940($fp)
	lw $t1, 0($t0)
	sw $t1, -2944($fp)
	lw $t0, -2740($fp)
	sw $t0, -2948($fp)
	lw $t1, -2944($fp)
	lw $t2, -2948($fp)
	beq $t1, $t2, label1116
	j label1117
label1116:
	li $t0, 1
	sw $t0, -2924($fp)
label1117:
	li $t0, 0
	sw $t0, -2952($fp)
	li $t0, 9640
	sw $t0, -2956($fp)
	lw $t1, -2956($fp)
	li $t2, 0
	bne $t1, $t2, label1118
	j label1120
label1120:
	li $t0, 19960
	sw $t0, -2960($fp)
	lw $t1, -2960($fp)
	li $t2, 0
	bne $t1, $t2, label1118
	j label1119
label1118:
	li $t0, 1
	sw $t0, -2952($fp)
label1119:
	lw $t0, -2752($fp)
	sw $t0, -2964($fp)
	lw $t0, -2964($fp)
	sw $t0, -1824($fp)
	lw $t0, -1824($fp)
	sw $t0, -2968($fp)
	lw $t0, -1728($fp)
	sw $t0, -2972($fp)
	lw $t0, -2972($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -2976($fp)
	li $t0, 0
	sw $t0, -2980($fp)
	li $t0, 40659
	sw $t0, -2984($fp)
	lw $t0, -2984($fp)
	sw $t0, -2680($fp)
	lw $t0, -2680($fp)
	sw $t0, -2988($fp)
	li $t0, 0
	sw $t0, -2992($fp)
	li $t0, 28814
	sw $t0, -2996($fp)
	lw $t0, -1812($fp)
	sw $t0, -3000($fp)
	lw $t0, -2996($fp)
	lw $t1, -3000($fp)
	mul $t0, $t0, $t1
	sw $t0, -3004($fp)
	lw $t0, -1704($fp)
	sw $t0, -3008($fp)
	lw $t1, -3004($fp)
	lw $t2, -3008($fp)
	blt $t1, $t2, label1123
	j label1124
label1123:
	li $t0, 1
	sw $t0, -2992($fp)
label1124:
	li $t0, 0
	sw $t0, -3012($fp)
	lw $t0, -2716($fp)
	sw $t0, -3016($fp)
	li $t0, 62745
	sw $t0, -3020($fp)
	lw $t0, -3016($fp)
	lw $t1, -3020($fp)
	sub $t0, $t0, $t1
	sw $t0, -3024($fp)
	lw $t1, -3024($fp)
	li $t2, 0
	bne $t1, $t2, label1125
	j label1127
label1127:
	lw $t0, -516($fp)
	sw $t0, -3028($fp)
	lw $t1, -3028($fp)
	li $t2, 0
	bne $t1, $t2, label1125
	j label1126
label1125:
	li $t0, 1
	sw $t0, -3012($fp)
label1126:
	li $t0, 50254
	sw $t0, -3032($fp)
	lw $t0, -1260($fp)
	sw $t0, -3036($fp)
	lw $t0, -3032($fp)
	lw $t1, -3036($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3040($fp)
	li $t0, 42116
	sw $t0, -3044($fp)
	lw $t0, -3040($fp)
	lw $t1, -3044($fp)
	add $t0, $t0, $t1
	sw $t0, -3048($fp)
	li $t0, 54814
	sw $t0, -3052($fp)
	lw $t0, -3052($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -3056($fp)
	addi $sp, $sp, -4
	lw $t0, -2988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3056($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3060($fp)
	addi $sp, $sp, 24
	li $t0, 29851
	sw $t0, -3064($fp)
	lw $t1, -3060($fp)
	lw $t2, -3064($fp)
	beq $t1, $t2, label1121
	j label1122
label1121:
	li $t0, 1
	sw $t0, -2980($fp)
label1122:
	li $t0, 0
	sw $t0, -3068($fp)
	lw $t0, -1716($fp)
	sw $t0, -3072($fp)
	li $t0, 29263
	sw $t0, -3076($fp)
	lw $t0, -3072($fp)
	lw $t1, -3076($fp)
	sub $t0, $t0, $t1
	sw $t0, -3080($fp)
	lw $t0, -1788($fp)
	sw $t0, -3084($fp)
	lw $t1, -3080($fp)
	lw $t2, -3084($fp)
	bne $t1, $t2, label1128
	j label1129
label1128:
	li $t0, 1
	sw $t0, -3068($fp)
label1129:
	addi $sp, $sp, -4
	lw $t0, -2976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3068($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3088($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -3092($fp)
	lw $t0, -1284($fp)
	sw $t0, -3096($fp)
	lw $t0, -2668($fp)
	sw $t0, -3100($fp)
	lw $t1, -3096($fp)
	lw $t2, -3100($fp)
	blt $t1, $t2, label1132
	j label1131
label1132:
	li $t0, 1346
	sw $t0, -3104($fp)
	lw $t1, -3104($fp)
	li $t2, 0
	bne $t1, $t2, label1130
	j label1131
label1130:
	li $t0, 1
	sw $t0, -3092($fp)
label1131:
	li $t0, 0
	sw $t0, -3108($fp)
	li $t0, 30383
	sw $t0, -3112($fp)
	li $t0, 49738
	sw $t0, -3116($fp)
	lw $t0, -3112($fp)
	lw $t1, -3116($fp)
	mul $t0, $t0, $t1
	sw $t0, -3120($fp)
	li $t0, 56315
	sw $t0, -3124($fp)
	lw $t1, -3120($fp)
	lw $t2, -3124($fp)
	bgt $t1, $t2, label1133
	j label1134
label1133:
	li $t0, 1
	sw $t0, -3108($fp)
label1134:
	addi $sp, $sp, -4
	lw $t0, -2952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3108($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3128($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -3132($fp)
	lw $t0, -1248($fp)
	sw $t0, -3136($fp)
	lw $t0, -2728($fp)
	sw $t0, -3140($fp)
	lw $t1, -3136($fp)
	lw $t2, -3140($fp)
	bgt $t1, $t2, label1135
	j label1136
label1135:
	li $t0, 1
	sw $t0, -3132($fp)
label1136:
	addi $sp, $sp, -4
	lw $t0, -2920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3132($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3144($fp)
	addi $sp, $sp, 20
	lw $t0, -2892($fp)
	lw $t1, -3144($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3148($fp)
	lw $t1, -2888($fp)
	lw $t2, -3148($fp)
	bge $t1, $t2, label1114
	j label1115
label1114:
	li $t0, 1
	sw $t0, -2884($fp)
label1115:
	lw $ra, -4($fp)
	lw $v0, -2884($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -3152($fp)
	li $t0, 65176
	sw $t0, -3156($fp)
	jal f8
	sw $v0, -3160($fp)
	addi $sp, $sp, 4
	lw $t0, -1716($fp)
	sw $t0, -3164($fp)
	lw $t0, -1440($fp)
	sw $t0, -3168($fp)
	lw $t0, -3164($fp)
	lw $t1, -3168($fp)
	add $t0, $t0, $t1
	sw $t0, -3172($fp)
	lw $t0, -492($fp)
	sw $t0, -3176($fp)
	lw $t0, -3172($fp)
	lw $t1, -3176($fp)
	sub $t0, $t0, $t1
	sw $t0, -3180($fp)
	li $t0, 50795
	sw $t0, -3184($fp)
	lw $t0, -3184($fp)
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	sw $t0, -3188($fp)
	addi $sp, $sp, -4
	lw $t0, -3160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3188($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3192($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -3192($fp)
	sub $t0, $t0, $t1
	sw $t0, -3196($fp)
	lw $t0, -3156($fp)
	lw $t1, -3196($fp)
	mul $t0, $t0, $t1
	sw $t0, -3200($fp)
	addi $t0, $fp, -92
	sw $t0, -3204($fp)
	li $t0, 0
	sw $t0, -3208($fp)
	li $t0, 31667
	sw $t0, -3212($fp)
	li $t0, 20739
	sw $t0, -3216($fp)
	lw $t1, -3212($fp)
	lw $t2, -3216($fp)
	bgt $t1, $t2, label1139
	j label1140
label1139:
	li $t0, 1
	sw $t0, -3208($fp)
label1140:
	li $t0, 4
	lw $t1, -3208($fp)
	mul $t0, $t0, $t1
	sw $t0, -3220($fp)
	lw $t0, -3220($fp)
	lw $t1, -3204($fp)
	add $t0, $t0, $t1
	sw $t0, -3224($fp)
	lw $t0, -3224($fp)
	lw $t1, 0($t0)
	sw $t1, -3228($fp)
	lw $t1, -3200($fp)
	lw $t2, -3228($fp)
	bge $t1, $t2, label1137
	j label1138
label1137:
	li $t0, 1
	sw $t0, -3152($fp)
label1138:
label1141:
	li $t0, 0
	sw $t0, -3232($fp)
	jal f8
	sw $v0, -3236($fp)
	addi $sp, $sp, 4
	lw $t1, -3236($fp)
	li $t2, 0
	bne $t1, $t2, label1145
	j label1144
label1144:
	li $t0, 1
	sw $t0, -3232($fp)
label1145:
	li $t0, 52242
	sw $t0, -3240($fp)
	lw $t0, -2764($fp)
	sw $t0, -3244($fp)
	lw $t0, -3240($fp)
	lw $t1, -3244($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3248($fp)
	lw $t0, -3232($fp)
	lw $t1, -3248($fp)
	add $t0, $t0, $t1
	sw $t0, -3252($fp)
	li $t0, 0
	sw $t0, -3256($fp)
	li $t0, 39913
	sw $t0, -3260($fp)
	li $t0, 25337
	sw $t0, -3264($fp)
	lw $t0, -3260($fp)
	lw $t1, -3264($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3268($fp)
	lw $t1, -3268($fp)
	li $t2, 0
	bne $t1, $t2, label1146
	j label1148
label1148:
	li $t0, 49628
	sw $t0, -3272($fp)
	lw $t1, -3272($fp)
	li $t2, 0
	bne $t1, $t2, label1146
	j label1147
label1146:
	li $t0, 1
	sw $t0, -3256($fp)
label1147:
	li $t0, 0
	sw $t0, -3276($fp)
	li $t0, 19920
	sw $t0, -3280($fp)
	lw $t1, -3280($fp)
	li $t2, 0
	bne $t1, $t2, label1150
	j label1149
label1149:
	li $t0, 1
	sw $t0, -3276($fp)
label1150:
	li $t0, 0
	sw $t0, -3284($fp)
	lw $t0, 8($fp)
	sw $t0, -3288($fp)
	lw $t0, -408($fp)
	sw $t0, -3292($fp)
	lw $t1, -3288($fp)
	lw $t2, -3292($fp)
	blt $t1, $t2, label1151
	j label1152
label1151:
	li $t0, 1
	sw $t0, -3284($fp)
label1152:
	li $t0, 0
	sw $t0, -3296($fp)
	lw $t0, -1788($fp)
	sw $t0, -3300($fp)
	lw $t0, -2728($fp)
	sw $t0, -3304($fp)
	lw $t1, -3300($fp)
	lw $t2, -3304($fp)
	bne $t1, $t2, label1153
	j label1155
label1155:
	lw $t0, -1260($fp)
	sw $t0, -3308($fp)
	lw $t1, -3308($fp)
	li $t2, 0
	bne $t1, $t2, label1153
	j label1154
label1153:
	li $t0, 1
	sw $t0, -3296($fp)
label1154:
	li $t0, 25033
	sw $t0, -3312($fp)
	lw $t0, -2752($fp)
	sw $t0, -3316($fp)
	lw $t0, -3312($fp)
	lw $t1, -3316($fp)
	add $t0, $t0, $t1
	sw $t0, -3320($fp)
	addi $sp, $sp, -4
	lw $t0, -3256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3320($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3324($fp)
	addi $sp, $sp, 24
	li $t0, 5675
	sw $t0, -3328($fp)
	lw $t0, -3324($fp)
	lw $t1, -3328($fp)
	mul $t0, $t0, $t1
	sw $t0, -3332($fp)
	lw $t0, -3252($fp)
	lw $t1, -3332($fp)
	add $t0, $t0, $t1
	sw $t0, -3336($fp)
	li $t0, 23350
	sw $t0, -3340($fp)
	li $t0, 34436
	sw $t0, -3344($fp)
	lw $t0, -3340($fp)
	lw $t1, -3344($fp)
	mul $t0, $t0, $t1
	sw $t0, -3348($fp)
	li $t0, 0
	lw $t1, -3348($fp)
	sub $t0, $t0, $t1
	sw $t0, -3352($fp)
	li $t0, 0
	lw $t1, -3352($fp)
	sub $t0, $t0, $t1
	sw $t0, -3356($fp)
	lw $t1, -3336($fp)
	lw $t2, -3356($fp)
	bge $t1, $t2, label1142
	j label1143
label1142:
	li $t0, 36059
	sw $t0, -3360($fp)
	lw $t0, -3360($fp)
	sw $t0, -3364($fp)
	lw $t0, -3364($fp)
	sw $t0, -3368($fp)
	li $t0, 7552
	sw $t0, -3372($fp)
	lw $t0, -3372($fp)
	sw $t0, -3376($fp)
	lw $t0, -3376($fp)
	sw $t0, -3380($fp)
	li $t0, 25216
	sw $t0, -3384($fp)
	lw $t0, -3384($fp)
	sw $t0, -3388($fp)
	lw $t0, -3388($fp)
	sw $t0, -3392($fp)
	lw $t0, -3364($fp)
	sw $t0, -3396($fp)
	li $t0, 0
	sw $t0, -3400($fp)
	li $t0, 0
	sw $t0, -3404($fp)
	lw $t0, -432($fp)
	sw $t0, -3408($fp)
	lw $t1, -3408($fp)
	li $t2, 0
	bne $t1, $t2, label1159
	j label1158
label1158:
	li $t0, 1
	sw $t0, -3404($fp)
label1159:
	lw $t0, -1788($fp)
	sw $t0, -3412($fp)
	lw $t0, -3404($fp)
	lw $t1, -3412($fp)
	add $t0, $t0, $t1
	sw $t0, -3416($fp)
	lw $t0, -420($fp)
	sw $t0, -3420($fp)
	lw $t0, -3420($fp)
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	sw $t0, -3424($fp)
	li $t0, 36816
	sw $t0, -3428($fp)
	lw $t0, -3428($fp)
	sw $t0, -3376($fp)
	lw $t0, -3376($fp)
	sw $t0, -3432($fp)
	lw $t0, -1140($fp)
	sw $t0, -3436($fp)
	li $t0, 37405
	sw $t0, -3440($fp)
	lw $t0, -3436($fp)
	lw $t1, -3440($fp)
	mul $t0, $t0, $t1
	sw $t0, -3444($fp)
	lw $t0, -3388($fp)
	sw $t0, -3448($fp)
	lw $t0, -3444($fp)
	lw $t1, -3448($fp)
	add $t0, $t0, $t1
	sw $t0, -3452($fp)
	addi $sp, $sp, -4
	lw $t0, -3416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3452($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3456($fp)
	addi $sp, $sp, 20
	lw $t1, -3456($fp)
	li $t2, 0
	bne $t1, $t2, label1157
	j label1156
label1156:
	li $t0, 1
	sw $t0, -3400($fp)
label1157:
	li $t0, 11704
	sw $t0, -3460($fp)
	lw $t0, -3460($fp)
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	sw $t0, -3464($fp)
	li $t0, 13396
	sw $t0, -3468($fp)
	li $t0, 0
	lw $t1, -3468($fp)
	sub $t0, $t0, $t1
	sw $t0, -3472($fp)
	lw $t0, 16($fp)
	sw $t0, -3476($fp)
	lw $t0, -3472($fp)
	lw $t1, -3476($fp)
	sub $t0, $t0, $t1
	sw $t0, -3480($fp)
	li $t0, 0
	sw $t0, -3484($fp)
	lw $t0, -492($fp)
	sw $t0, -3488($fp)
	li $t0, 14494
	sw $t0, -3492($fp)
	lw $t0, -3488($fp)
	lw $t1, -3492($fp)
	add $t0, $t0, $t1
	sw $t0, -3496($fp)
	li $t0, 22123
	sw $t0, -3500($fp)
	lw $t1, -3496($fp)
	lw $t2, -3500($fp)
	bne $t1, $t2, label1160
	j label1161
label1160:
	li $t0, 1
	sw $t0, -3484($fp)
label1161:
	lw $t0, -480($fp)
	sw $t0, -3504($fp)
	lw $t0, -3504($fp)
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	sw $t0, -3508($fp)
	addi $sp, $sp, -4
	lw $t0, -3464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3508($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3512($fp)
	addi $sp, $sp, 20
	lw $t0, -3400($fp)
	lw $t1, -3512($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3516($fp)
	li $t0, 0
	sw $t0, -3520($fp)
	addi $t0, $fp, -68
	sw $t0, -3524($fp)
	li $t0, 50938
	sw $t0, -3528($fp)
	li $t0, 54055
	sw $t0, -3532($fp)
	lw $t0, -3528($fp)
	lw $t1, -3532($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3536($fp)
	li $t0, 4
	lw $t1, -3536($fp)
	mul $t0, $t0, $t1
	sw $t0, -3540($fp)
	lw $t0, -3540($fp)
	lw $t1, -3524($fp)
	add $t0, $t0, $t1
	sw $t0, -3544($fp)
	lw $t0, -3544($fp)
	lw $t1, 0($t0)
	sw $t1, -3548($fp)
	lw $t1, -3548($fp)
	li $t2, 0
	bne $t1, $t2, label1162
	j label1163
label1162:
	li $t0, 1
	sw $t0, -3520($fp)
label1163:
	j label1141
label1143:
label1164:
	li $t0, 41555
	sw $t0, -3552($fp)
	lw $t1, -3552($fp)
	li $t2, 0
	bne $t1, $t2, label1166
	j label1165
label1165:
	addi $t0, $fp, -68
	sw $t0, -3556($fp)
	li $t0, 0
	sw $t0, -3560($fp)
	li $t0, 60578
	sw $t0, -3564($fp)
	lw $t1, -3564($fp)
	li $t2, 0
	bne $t1, $t2, label1168
	j label1167
label1167:
	li $t0, 1
	sw $t0, -3560($fp)
label1168:
	li $t0, 8480
	sw $t0, -3568($fp)
	lw $t0, -3560($fp)
	lw $t1, -3568($fp)
	mul $t0, $t0, $t1
	sw $t0, -3572($fp)
	jal f8
	sw $v0, -3576($fp)
	addi $sp, $sp, 4
	lw $t0, -3572($fp)
	lw $t1, -3576($fp)
	add $t0, $t0, $t1
	sw $t0, -3580($fp)
	li $t0, 4
	lw $t1, -3580($fp)
	mul $t0, $t0, $t1
	sw $t0, -3584($fp)
	lw $t0, -3584($fp)
	lw $t1, -3556($fp)
	add $t0, $t0, $t1
	sw $t0, -3588($fp)
	lw $t0, -3588($fp)
	lw $t1, 0($t0)
	sw $t1, -3592($fp)
	j label1164
label1166:
	lw $t0, -2668($fp)
	sw $t0, -3596($fp)
	lw $t0, -3596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2680($fp)
	sw $t0, -3600($fp)
	lw $t0, -3600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2692($fp)
	sw $t0, -3604($fp)
	lw $t0, -3604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2704($fp)
	sw $t0, -3608($fp)
	lw $t0, -3608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3612($fp)
	lw $t0, -972($fp)
	sw $t0, -3616($fp)
	li $t0, 63852
	sw $t0, -3620($fp)
	lw $t0, -3616($fp)
	lw $t1, -3620($fp)
	add $t0, $t0, $t1
	sw $t0, -3624($fp)
	lw $t1, -3624($fp)
	li $t2, 0
	bne $t1, $t2, label1173
	j label1172
label1173:
	li $t0, 44791
	sw $t0, -3628($fp)
	li $t0, 46310
	sw $t0, -3632($fp)
	lw $t1, -3628($fp)
	lw $t2, -3632($fp)
	bgt $t1, $t2, label1169
	j label1172
label1172:
	lw $t0, -492($fp)
	sw $t0, -3636($fp)
	lw $t0, 20($fp)
	sw $t0, -3640($fp)
	lw $t0, -3636($fp)
	lw $t1, -3640($fp)
	mul $t0, $t0, $t1
	sw $t0, -3644($fp)
	lw $t1, -3644($fp)
	li $t2, 0
	bne $t1, $t2, label1169
	j label1171
label1171:
	lw $t0, -516($fp)
	sw $t0, -3648($fp)
	lw $t0, -3648($fp)
	sw $t0, -2668($fp)
	lw $t0, -2668($fp)
	sw $t0, -3652($fp)
	li $t0, 44431
	sw $t0, -3656($fp)
	lw $t0, -1728($fp)
	sw $t0, -3660($fp)
	lw $t0, -3656($fp)
	lw $t1, -3660($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3664($fp)
	lw $t0, -2704($fp)
	sw $t0, -3668($fp)
	lw $t0, -3668($fp)
	sw $t0, -2692($fp)
	lw $t0, -2692($fp)
	sw $t0, -3672($fp)
	li $t0, 0
	sw $t0, -3676($fp)
	li $t0, 29905
	sw $t0, -3680($fp)
	li $t0, 0
	lw $t1, -3680($fp)
	sub $t0, $t0, $t1
	sw $t0, -3684($fp)
	lw $t0, -420($fp)
	sw $t0, -3688($fp)
	lw $t1, -3684($fp)
	lw $t2, -3688($fp)
	ble $t1, $t2, label1174
	j label1175
label1174:
	li $t0, 1
	sw $t0, -3676($fp)
label1175:
	lw $t0, 20($fp)
	sw $t0, -3692($fp)
	lw $t0, -1272($fp)
	sw $t0, -3696($fp)
	lw $t0, -3692($fp)
	lw $t1, -3696($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3700($fp)
	lw $t0, -504($fp)
	sw $t0, -3704($fp)
	lw $t0, -3700($fp)
	lw $t1, -3704($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3708($fp)
	addi $sp, $sp, -4
	lw $t0, -3652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3708($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3712($fp)
	addi $sp, $sp, 24
	lw $t1, -3712($fp)
	li $t2, 0
	bne $t1, $t2, label1169
	j label1170
label1169:
	li $t0, 1
	sw $t0, -3612($fp)
label1170:
	lw $ra, -4($fp)
	lw $v0, -3612($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 31569
	sw $t0, -3740($fp)
	lw $t0, -3740($fp)
	sw $t0, -3744($fp)
	lw $t0, -3744($fp)
	sw $t0, -3748($fp)
	li $t0, 61572
	sw $t0, -3752($fp)
	addi $t0, $fp, -3716
	sw $t0, -3756($fp)
	li $t0, 0
	sw $t0, -3760($fp)
	lw $t0, -3760($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3764($fp)
	lw $t0, -3756($fp)
	lw $t1, -3764($fp)
	add $t0, $t0, $t1
	sw $t0, -3768($fp)
	lw $t0, -3752($fp)
	lw $t1, -3768($fp)
	sw $t0, 0($t1)
	lw $t0, -3768($fp)
	lw $t1, 0($t0)
	sw $t1, -3772($fp)
	li $t0, 65170
	sw $t0, -3776($fp)
	lw $t0, -3776($fp)
	sw $t0, -3780($fp)
	lw $t0, -3780($fp)
	sw $t0, -3784($fp)
	li $t0, 18275
	sw $t0, -3788($fp)
	addi $t0, $fp, -3736
	sw $t0, -3792($fp)
	li $t0, 0
	sw $t0, -3796($fp)
	lw $t0, -3796($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3800($fp)
	lw $t0, -3792($fp)
	lw $t1, -3800($fp)
	add $t0, $t0, $t1
	sw $t0, -3804($fp)
	lw $t0, -3788($fp)
	lw $t1, -3804($fp)
	sw $t0, 0($t1)
	lw $t0, -3804($fp)
	lw $t1, 0($t0)
	sw $t1, -3808($fp)
	li $t0, 21069
	sw $t0, -3812($fp)
	addi $t0, $fp, -3736
	sw $t0, -3816($fp)
	li $t0, 1
	sw $t0, -3820($fp)
	lw $t0, -3820($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3824($fp)
	lw $t0, -3816($fp)
	lw $t1, -3824($fp)
	add $t0, $t0, $t1
	sw $t0, -3828($fp)
	lw $t0, -3812($fp)
	lw $t1, -3828($fp)
	sw $t0, 0($t1)
	lw $t0, -3828($fp)
	lw $t1, 0($t0)
	sw $t1, -3832($fp)
	li $t0, 19554
	sw $t0, -3836($fp)
	addi $t0, $fp, -3736
	sw $t0, -3840($fp)
	li $t0, 2
	sw $t0, -3844($fp)
	lw $t0, -3844($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3848($fp)
	lw $t0, -3840($fp)
	lw $t1, -3848($fp)
	add $t0, $t0, $t1
	sw $t0, -3852($fp)
	lw $t0, -3836($fp)
	lw $t1, -3852($fp)
	sw $t0, 0($t1)
	lw $t0, -3852($fp)
	lw $t1, 0($t0)
	sw $t1, -3856($fp)
	li $t0, 58188
	sw $t0, -3860($fp)
	addi $t0, $fp, -3736
	sw $t0, -3864($fp)
	li $t0, 3
	sw $t0, -3868($fp)
	lw $t0, -3868($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3872($fp)
	lw $t0, -3864($fp)
	lw $t1, -3872($fp)
	add $t0, $t0, $t1
	sw $t0, -3876($fp)
	lw $t0, -3860($fp)
	lw $t1, -3876($fp)
	sw $t0, 0($t1)
	lw $t0, -3876($fp)
	lw $t1, 0($t0)
	sw $t1, -3880($fp)
	li $t0, 46407
	sw $t0, -3884($fp)
	addi $t0, $fp, -3736
	sw $t0, -3888($fp)
	li $t0, 4
	sw $t0, -3892($fp)
	lw $t0, -3892($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3896($fp)
	lw $t0, -3888($fp)
	lw $t1, -3896($fp)
	add $t0, $t0, $t1
	sw $t0, -3900($fp)
	lw $t0, -3884($fp)
	lw $t1, -3900($fp)
	sw $t0, 0($t1)
	lw $t0, -3900($fp)
	lw $t1, 0($t0)
	sw $t1, -3904($fp)
	lw $t0, -3744($fp)
	sw $t0, -3908($fp)
	lw $t0, -3908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3716
	sw $t0, -3912($fp)
	li $t0, 0
	sw $t0, -3916($fp)
	li $t0, 4
	lw $t1, -3916($fp)
	mul $t0, $t0, $t1
	sw $t0, -3920($fp)
	lw $t0, -3920($fp)
	lw $t1, -3912($fp)
	add $t0, $t0, $t1
	sw $t0, -3924($fp)
	lw $t0, -3924($fp)
	lw $t1, 0($t0)
	sw $t1, -3928($fp)
	lw $t0, -3928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3780($fp)
	sw $t0, -3932($fp)
	lw $t0, -3932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3736
	sw $t0, -3936($fp)
	li $t0, 0
	sw $t0, -3940($fp)
	li $t0, 4
	lw $t1, -3940($fp)
	mul $t0, $t0, $t1
	sw $t0, -3944($fp)
	lw $t0, -3944($fp)
	lw $t1, -3936($fp)
	add $t0, $t0, $t1
	sw $t0, -3948($fp)
	lw $t0, -3948($fp)
	lw $t1, 0($t0)
	sw $t1, -3952($fp)
	lw $t0, -3952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3736
	sw $t0, -3956($fp)
	li $t0, 1
	sw $t0, -3960($fp)
	li $t0, 4
	lw $t1, -3960($fp)
	mul $t0, $t0, $t1
	sw $t0, -3964($fp)
	lw $t0, -3964($fp)
	lw $t1, -3956($fp)
	add $t0, $t0, $t1
	sw $t0, -3968($fp)
	lw $t0, -3968($fp)
	lw $t1, 0($t0)
	sw $t1, -3972($fp)
	lw $t0, -3972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3736
	sw $t0, -3976($fp)
	li $t0, 2
	sw $t0, -3980($fp)
	li $t0, 4
	lw $t1, -3980($fp)
	mul $t0, $t0, $t1
	sw $t0, -3984($fp)
	lw $t0, -3984($fp)
	lw $t1, -3976($fp)
	add $t0, $t0, $t1
	sw $t0, -3988($fp)
	lw $t0, -3988($fp)
	lw $t1, 0($t0)
	sw $t1, -3992($fp)
	lw $t0, -3992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3736
	sw $t0, -3996($fp)
	li $t0, 3
	sw $t0, -4000($fp)
	li $t0, 4
	lw $t1, -4000($fp)
	mul $t0, $t0, $t1
	sw $t0, -4004($fp)
	lw $t0, -4004($fp)
	lw $t1, -3996($fp)
	add $t0, $t0, $t1
	sw $t0, -4008($fp)
	lw $t0, -4008($fp)
	lw $t1, 0($t0)
	sw $t1, -4012($fp)
	lw $t0, -4012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3736
	sw $t0, -4016($fp)
	li $t0, 4
	sw $t0, -4020($fp)
	li $t0, 4
	lw $t1, -4020($fp)
	mul $t0, $t0, $t1
	sw $t0, -4024($fp)
	lw $t0, -4024($fp)
	lw $t1, -4016($fp)
	add $t0, $t0, $t1
	sw $t0, -4028($fp)
	lw $t0, -4028($fp)
	lw $t1, 0($t0)
	sw $t1, -4032($fp)
	lw $t0, -4032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4036($fp)
	jal f8
	sw $v0, -4040($fp)
	addi $sp, $sp, 4
	lw $t1, -4040($fp)
	li $t2, 0
	bne $t1, $t2, label1178
	j label1177
label1178:
	li $t0, 3647
	sw $t0, -4044($fp)
	li $t0, 0
	lw $t1, -4044($fp)
	sub $t0, $t0, $t1
	sw $t0, -4048($fp)
	li $t0, 63864
	sw $t0, -4052($fp)
	lw $t0, -4048($fp)
	lw $t1, -4052($fp)
	sub $t0, $t0, $t1
	sw $t0, -4056($fp)
	li $t0, 4221
	sw $t0, -4060($fp)
	li $t0, 38083
	sw $t0, -4064($fp)
	lw $t0, -4060($fp)
	lw $t1, -4064($fp)
	mul $t0, $t0, $t1
	sw $t0, -4068($fp)
	lw $t0, -4056($fp)
	lw $t1, -4068($fp)
	sub $t0, $t0, $t1
	sw $t0, -4072($fp)
	lw $t1, -4072($fp)
	li $t2, 0
	bne $t1, $t2, label1176
	j label1177
label1176:
	li $t0, 1
	sw $t0, -4036($fp)
label1177:
	lw $ra, -4($fp)
	lw $v0, -4036($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -3744($fp)
	sw $t0, -4076($fp)
	lw $t0, -4076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3716
	sw $t0, -4080($fp)
	li $t0, 0
	sw $t0, -4084($fp)
	li $t0, 4
	lw $t1, -4084($fp)
	mul $t0, $t0, $t1
	sw $t0, -4088($fp)
	lw $t0, -4088($fp)
	lw $t1, -4080($fp)
	add $t0, $t0, $t1
	sw $t0, -4092($fp)
	lw $t0, -4092($fp)
	lw $t1, 0($t0)
	sw $t1, -4096($fp)
	lw $t0, -4096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3780($fp)
	sw $t0, -4100($fp)
	lw $t0, -4100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3736
	sw $t0, -4104($fp)
	li $t0, 0
	sw $t0, -4108($fp)
	li $t0, 4
	lw $t1, -4108($fp)
	mul $t0, $t0, $t1
	sw $t0, -4112($fp)
	lw $t0, -4112($fp)
	lw $t1, -4104($fp)
	add $t0, $t0, $t1
	sw $t0, -4116($fp)
	lw $t0, -4116($fp)
	lw $t1, 0($t0)
	sw $t1, -4120($fp)
	lw $t0, -4120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3736
	sw $t0, -4124($fp)
	li $t0, 1
	sw $t0, -4128($fp)
	li $t0, 4
	lw $t1, -4128($fp)
	mul $t0, $t0, $t1
	sw $t0, -4132($fp)
	lw $t0, -4132($fp)
	lw $t1, -4124($fp)
	add $t0, $t0, $t1
	sw $t0, -4136($fp)
	lw $t0, -4136($fp)
	lw $t1, 0($t0)
	sw $t1, -4140($fp)
	lw $t0, -4140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3736
	sw $t0, -4144($fp)
	li $t0, 2
	sw $t0, -4148($fp)
	li $t0, 4
	lw $t1, -4148($fp)
	mul $t0, $t0, $t1
	sw $t0, -4152($fp)
	lw $t0, -4152($fp)
	lw $t1, -4144($fp)
	add $t0, $t0, $t1
	sw $t0, -4156($fp)
	lw $t0, -4156($fp)
	lw $t1, 0($t0)
	sw $t1, -4160($fp)
	lw $t0, -4160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3736
	sw $t0, -4164($fp)
	li $t0, 3
	sw $t0, -4168($fp)
	li $t0, 4
	lw $t1, -4168($fp)
	mul $t0, $t0, $t1
	sw $t0, -4172($fp)
	lw $t0, -4172($fp)
	lw $t1, -4164($fp)
	add $t0, $t0, $t1
	sw $t0, -4176($fp)
	lw $t0, -4176($fp)
	lw $t1, 0($t0)
	sw $t1, -4180($fp)
	lw $t0, -4180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3736
	sw $t0, -4184($fp)
	li $t0, 4
	sw $t0, -4188($fp)
	li $t0, 4
	lw $t1, -4188($fp)
	mul $t0, $t0, $t1
	sw $t0, -4192($fp)
	lw $t0, -4192($fp)
	lw $t1, -4184($fp)
	add $t0, $t0, $t1
	sw $t0, -4196($fp)
	lw $t0, -4196($fp)
	lw $t1, 0($t0)
	sw $t1, -4200($fp)
	lw $t0, -4200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4204($fp)
	li $t0, 0
	sw $t0, -4208($fp)
	li $t0, 0
	sw $t0, -4212($fp)
	jal f8
	sw $v0, -4216($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -4220($fp)
	addi $t0, $fp, -32
	sw $t0, -4224($fp)
	li $t0, 4
	sw $t0, -4228($fp)
	li $t0, 4
	lw $t1, -4228($fp)
	mul $t0, $t0, $t1
	sw $t0, -4232($fp)
	lw $t0, -4232($fp)
	lw $t1, -4224($fp)
	add $t0, $t0, $t1
	sw $t0, -4236($fp)
	lw $t0, -4236($fp)
	lw $t1, 0($t0)
	sw $t1, -4240($fp)
	lw $t1, -4240($fp)
	li $t2, 0
	bne $t1, $t2, label1186
	j label1185
label1185:
	li $t0, 1
	sw $t0, -4220($fp)
label1186:
	li $t0, 0
	sw $t0, -4244($fp)
	lw $t0, -3780($fp)
	sw $t0, -4248($fp)
	lw $t1, -4248($fp)
	li $t2, 0
	bne $t1, $t2, label1188
	j label1189
label1189:
	lw $t0, -924($fp)
	sw $t0, -4252($fp)
	lw $t1, -4252($fp)
	li $t2, 0
	bne $t1, $t2, label1187
	j label1188
label1187:
	li $t0, 1
	sw $t0, -4244($fp)
label1188:
	li $t0, 0
	sw $t0, -4256($fp)
	lw $t0, -516($fp)
	sw $t0, -4260($fp)
	li $t0, 11774
	sw $t0, -4264($fp)
	lw $t0, -4260($fp)
	lw $t1, -4264($fp)
	mul $t0, $t0, $t1
	sw $t0, -4268($fp)
	lw $t1, -4268($fp)
	li $t2, 0
	bne $t1, $t2, label1190
	j label1192
label1192:
	li $t0, 63299
	sw $t0, -4272($fp)
	lw $t1, -4272($fp)
	li $t2, 0
	bne $t1, $t2, label1190
	j label1191
label1190:
	li $t0, 1
	sw $t0, -4256($fp)
label1191:
	li $t0, 34387
	sw $t0, -4276($fp)
	addi $sp, $sp, -4
	lw $t0, -4216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4276($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4280($fp)
	addi $sp, $sp, 24
	lw $t1, -4280($fp)
	li $t2, 0
	bne $t1, $t2, label1184
	j label1183
label1183:
	li $t0, 1
	sw $t0, -4212($fp)
label1184:
	addi $t0, $fp, -3716
	sw $t0, -4284($fp)
	lw $t0, -1188($fp)
	sw $t0, -4288($fp)
	li $t0, 4
	lw $t1, -4288($fp)
	mul $t0, $t0, $t1
	sw $t0, -4292($fp)
	lw $t0, -4292($fp)
	lw $t1, -4284($fp)
	add $t0, $t0, $t1
	sw $t0, -4296($fp)
	lw $t0, -4296($fp)
	lw $t1, 0($t0)
	sw $t1, -4300($fp)
	lw $t1, -4212($fp)
	lw $t2, -4300($fp)
	bgt $t1, $t2, label1181
	j label1182
label1181:
	li $t0, 1
	sw $t0, -4208($fp)
label1182:
	lw $t0, -504($fp)
	sw $t0, -4304($fp)
	li $t0, 0
	lw $t1, -4304($fp)
	sub $t0, $t0, $t1
	sw $t0, -4308($fp)
	lw $t1, -4208($fp)
	lw $t2, -4308($fp)
	bge $t1, $t2, label1179
	j label1180
label1179:
	li $t0, 1
	sw $t0, -4204($fp)
label1180:
	lw $ra, -4($fp)
	lw $v0, -4204($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 12258
	sw $t0, -4312($fp)
	li $t0, 0
	sw $t0, -4316($fp)
	lw $t0, -1272($fp)
	sw $t0, -4320($fp)
	li $t0, 61986
	sw $t0, -4324($fp)
	lw $t0, -4320($fp)
	lw $t1, -4324($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4328($fp)
	li $t0, 23962
	sw $t0, -4332($fp)
	lw $t1, -4328($fp)
	lw $t2, -4332($fp)
	bgt $t1, $t2, label1196
	j label1197
label1196:
	li $t0, 1
	sw $t0, -4316($fp)
label1197:
	li $t0, 0
	sw $t0, -4336($fp)
	lw $t0, -1260($fp)
	sw $t0, -4340($fp)
	lw $t0, -1680($fp)
	sw $t0, -4344($fp)
	lw $t1, -4340($fp)
	lw $t2, -4344($fp)
	beq $t1, $t2, label1198
	j label1199
label1198:
	li $t0, 1
	sw $t0, -4336($fp)
label1199:
	li $t0, 0
	sw $t0, -4348($fp)
	li $t0, 28379
	sw $t0, -4352($fp)
	lw $t0, -3744($fp)
	sw $t0, -4356($fp)
	lw $t0, -4352($fp)
	lw $t1, -4356($fp)
	add $t0, $t0, $t1
	sw $t0, -4360($fp)
	lw $t1, -4360($fp)
	li $t2, 0
	bne $t1, $t2, label1202
	j label1201
label1202:
	lw $t0, -552($fp)
	sw $t0, -4364($fp)
	lw $t1, -4364($fp)
	li $t2, 0
	bne $t1, $t2, label1200
	j label1201
label1200:
	li $t0, 1
	sw $t0, -4348($fp)
label1201:
	addi $sp, $sp, -4
	lw $t0, -4316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4348($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4368($fp)
	addi $sp, $sp, 16
	lw $t0, -4312($fp)
	lw $t1, -4368($fp)
	sub $t0, $t0, $t1
	sw $t0, -4372($fp)
	li $t0, 0
	sw $t0, -4376($fp)
	addi $t0, $fp, -148
	sw $t0, -4380($fp)
	lw $t0, -1248($fp)
	sw $t0, -4384($fp)
	li $t0, 4
	lw $t1, -4384($fp)
	mul $t0, $t0, $t1
	sw $t0, -4388($fp)
	lw $t0, -4388($fp)
	lw $t1, -4380($fp)
	add $t0, $t0, $t1
	sw $t0, -4392($fp)
	lw $t0, -4392($fp)
	lw $t1, 0($t0)
	sw $t1, -4396($fp)
	lw $t1, -4396($fp)
	li $t2, 0
	bne $t1, $t2, label1204
	j label1203
label1203:
	li $t0, 1
	sw $t0, -4376($fp)
label1204:
	lw $t0, -4372($fp)
	lw $t1, -4376($fp)
	add $t0, $t0, $t1
	sw $t0, -4400($fp)
	li $t0, 13781
	sw $t0, -4404($fp)
	lw $t0, -2680($fp)
	sw $t0, -4408($fp)
	li $t0, 0
	lw $t1, -4408($fp)
	sub $t0, $t0, $t1
	sw $t0, -4412($fp)
	lw $t0, -4404($fp)
	lw $t1, -4412($fp)
	add $t0, $t0, $t1
	sw $t0, -4416($fp)
	lw $t1, -4400($fp)
	lw $t2, -4416($fp)
	bge $t1, $t2, label1193
	j label1194
label1193:
label1205:
	lw $t0, -468($fp)
	sw $t0, -4420($fp)
	lw $t0, -1692($fp)
	sw $t0, -4424($fp)
	lw $t0, -4420($fp)
	lw $t1, -4424($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4428($fp)
	li $t0, 50506
	sw $t0, -4432($fp)
	li $t0, 0
	lw $t1, -4432($fp)
	sub $t0, $t0, $t1
	sw $t0, -4436($fp)
	li $t0, 0
	lw $t1, -4436($fp)
	sub $t0, $t0, $t1
	sw $t0, -4440($fp)
	lw $t0, -4428($fp)
	lw $t1, -4440($fp)
	sub $t0, $t0, $t1
	sw $t0, -4444($fp)
	li $t0, 65517
	sw $t0, -4448($fp)
	lw $t0, -4444($fp)
	lw $t1, -4448($fp)
	add $t0, $t0, $t1
	sw $t0, -4452($fp)
	lw $t1, -4452($fp)
	li $t2, 0
	bne $t1, $t2, label1206
	j label1207
label1206:
	addi $t0, $fp, -220
	sw $t0, -4456($fp)
	li $t0, 0
	sw $t0, -4460($fp)
	lw $t0, -444($fp)
	sw $t0, -4464($fp)
	li $t0, 0
	lw $t1, -4464($fp)
	sub $t0, $t0, $t1
	sw $t0, -4468($fp)
	lw $t1, -4468($fp)
	li $t2, 0
	bne $t1, $t2, label1209
	j label1210
label1210:
	lw $t0, -1248($fp)
	sw $t0, -4472($fp)
	lw $t0, -1188($fp)
	sw $t0, -4476($fp)
	lw $t0, -4472($fp)
	lw $t1, -4476($fp)
	sub $t0, $t0, $t1
	sw $t0, -4480($fp)
	lw $t1, -4480($fp)
	li $t2, 0
	bne $t1, $t2, label1208
	j label1209
label1208:
	li $t0, 1
	sw $t0, -4460($fp)
label1209:
	li $t0, 4
	lw $t1, -4460($fp)
	mul $t0, $t0, $t1
	sw $t0, -4484($fp)
	lw $t0, -4484($fp)
	lw $t1, -4456($fp)
	add $t0, $t0, $t1
	sw $t0, -4488($fp)
	lw $t0, -4488($fp)
	lw $t1, 0($t0)
	sw $t1, -4492($fp)
	j label1205
label1207:
	j label1195
label1194:
	addi $t0, $fp, -124
	sw $t0, -4496($fp)
	li $t0, 0
	sw $t0, -4500($fp)
	li $t0, 4
	lw $t1, -4500($fp)
	mul $t0, $t0, $t1
	sw $t0, -4504($fp)
	lw $t0, -4504($fp)
	lw $t1, -4496($fp)
	add $t0, $t0, $t1
	sw $t0, -4508($fp)
	lw $t0, -4508($fp)
	lw $t1, 0($t0)
	sw $t1, -4512($fp)
	lw $t0, -1248($fp)
	sw $t0, -4516($fp)
	li $t0, 63833
	sw $t0, -4520($fp)
	lw $t0, -4516($fp)
	lw $t1, -4520($fp)
	add $t0, $t0, $t1
	sw $t0, -4524($fp)
	li $t0, 0
	sw $t0, -4528($fp)
	lw $t0, -1716($fp)
	sw $t0, -4532($fp)
	li $t0, 8823
	sw $t0, -4536($fp)
	lw $t0, -4532($fp)
	lw $t1, -4536($fp)
	mul $t0, $t0, $t1
	sw $t0, -4540($fp)
	lw $t1, -4540($fp)
	li $t2, 0
	bne $t1, $t2, label1213
	j label1212
label1213:
	li $t0, 58986
	sw $t0, -4544($fp)
	lw $t1, -4544($fp)
	li $t2, 0
	bne $t1, $t2, label1211
	j label1212
label1211:
	li $t0, 1
	sw $t0, -4528($fp)
label1212:
	addi $sp, $sp, -4
	lw $t0, -4512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4528($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4548($fp)
	addi $sp, $sp, 16
	jal f8
	sw $v0, -4552($fp)
	addi $sp, $sp, 4
	lw $t0, -4548($fp)
	lw $t1, -4552($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4556($fp)
	li $t0, 28203
	sw $t0, -4560($fp)
	lw $t0, -4556($fp)
	lw $t1, -4560($fp)
	mul $t0, $t0, $t1
	sw $t0, -4564($fp)
	lw $ra, -4($fp)
	lw $v0, -4564($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label1195:
	li $t0, 32509
	sw $t0, -4568($fp)
	lw $t0, -4568($fp)
	sw $t0, -4572($fp)
	lw $t0, -4572($fp)
	sw $t0, -4576($fp)
label1214:
	lw $t0, -4572($fp)
	sw $t0, -4580($fp)
	lw $t1, -4580($fp)
	li $t2, 0
	bne $t1, $t2, label1215
	j label1216
label1215:
	lw $t0, -960($fp)
	sw $t0, -4584($fp)
	j label1214
label1216:
	lw $t0, -3744($fp)
	sw $t0, -4588($fp)
	lw $t0, -4588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3716
	sw $t0, -4592($fp)
	li $t0, 0
	sw $t0, -4596($fp)
	li $t0, 4
	lw $t1, -4596($fp)
	mul $t0, $t0, $t1
	sw $t0, -4600($fp)
	lw $t0, -4600($fp)
	lw $t1, -4592($fp)
	add $t0, $t0, $t1
	sw $t0, -4604($fp)
	lw $t0, -4604($fp)
	lw $t1, 0($t0)
	sw $t1, -4608($fp)
	lw $t0, -4608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3780($fp)
	sw $t0, -4612($fp)
	lw $t0, -4612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3736
	sw $t0, -4616($fp)
	li $t0, 0
	sw $t0, -4620($fp)
	li $t0, 4
	lw $t1, -4620($fp)
	mul $t0, $t0, $t1
	sw $t0, -4624($fp)
	lw $t0, -4624($fp)
	lw $t1, -4616($fp)
	add $t0, $t0, $t1
	sw $t0, -4628($fp)
	lw $t0, -4628($fp)
	lw $t1, 0($t0)
	sw $t1, -4632($fp)
	lw $t0, -4632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3736
	sw $t0, -4636($fp)
	li $t0, 1
	sw $t0, -4640($fp)
	li $t0, 4
	lw $t1, -4640($fp)
	mul $t0, $t0, $t1
	sw $t0, -4644($fp)
	lw $t0, -4644($fp)
	lw $t1, -4636($fp)
	add $t0, $t0, $t1
	sw $t0, -4648($fp)
	lw $t0, -4648($fp)
	lw $t1, 0($t0)
	sw $t1, -4652($fp)
	lw $t0, -4652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3736
	sw $t0, -4656($fp)
	li $t0, 2
	sw $t0, -4660($fp)
	li $t0, 4
	lw $t1, -4660($fp)
	mul $t0, $t0, $t1
	sw $t0, -4664($fp)
	lw $t0, -4664($fp)
	lw $t1, -4656($fp)
	add $t0, $t0, $t1
	sw $t0, -4668($fp)
	lw $t0, -4668($fp)
	lw $t1, 0($t0)
	sw $t1, -4672($fp)
	lw $t0, -4672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3736
	sw $t0, -4676($fp)
	li $t0, 3
	sw $t0, -4680($fp)
	li $t0, 4
	lw $t1, -4680($fp)
	mul $t0, $t0, $t1
	sw $t0, -4684($fp)
	lw $t0, -4684($fp)
	lw $t1, -4676($fp)
	add $t0, $t0, $t1
	sw $t0, -4688($fp)
	lw $t0, -4688($fp)
	lw $t1, 0($t0)
	sw $t1, -4692($fp)
	lw $t0, -4692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3736
	sw $t0, -4696($fp)
	li $t0, 4
	sw $t0, -4700($fp)
	li $t0, 4
	lw $t1, -4700($fp)
	mul $t0, $t0, $t1
	sw $t0, -4704($fp)
	lw $t0, -4704($fp)
	lw $t1, -4696($fp)
	add $t0, $t0, $t1
	sw $t0, -4708($fp)
	lw $t0, -4708($fp)
	lw $t1, 0($t0)
	sw $t1, -4712($fp)
	lw $t0, -4712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4716($fp)
	li $t0, 0
	sw $t0, -4720($fp)
	lw $t0, 20($fp)
	sw $t0, -4724($fp)
	addi $t0, $fp, -148
	sw $t0, -4728($fp)
	lw $t0, -1188($fp)
	sw $t0, -4732($fp)
	li $t0, 4
	lw $t1, -4732($fp)
	mul $t0, $t0, $t1
	sw $t0, -4736($fp)
	lw $t0, -4736($fp)
	lw $t1, -4728($fp)
	add $t0, $t0, $t1
	sw $t0, -4740($fp)
	lw $t0, -4740($fp)
	lw $t1, 0($t0)
	sw $t1, -4744($fp)
	lw $t1, -4724($fp)
	lw $t2, -4744($fp)
	blt $t1, $t2, label1219
	j label1220
label1219:
	li $t0, 1
	sw $t0, -4720($fp)
label1220:
	addi $t0, $fp, -3736
	sw $t0, -4748($fp)
	li $t0, 0
	sw $t0, -4752($fp)
	lw $t0, -1788($fp)
	sw $t0, -4756($fp)
	lw $t0, -1248($fp)
	sw $t0, -4760($fp)
	lw $t1, -4756($fp)
	lw $t2, -4760($fp)
	beq $t1, $t2, label1221
	j label1222
label1221:
	li $t0, 1
	sw $t0, -4752($fp)
label1222:
	li $t0, 4
	lw $t1, -4752($fp)
	mul $t0, $t0, $t1
	sw $t0, -4764($fp)
	lw $t0, -4764($fp)
	lw $t1, -4748($fp)
	add $t0, $t0, $t1
	sw $t0, -4768($fp)
	lw $t0, -4768($fp)
	lw $t1, 0($t0)
	sw $t1, -4772($fp)
	lw $t1, -4720($fp)
	lw $t2, -4772($fp)
	beq $t1, $t2, label1217
	j label1218
label1217:
	li $t0, 1
	sw $t0, -4716($fp)
label1218:
	lw $ra, -4($fp)
	lw $v0, -4716($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 5794
	sw $t0, -4776($fp)
	lw $t0, -936($fp)
	sw $t0, -4780($fp)
	li $t0, 0
	lw $t1, -4780($fp)
	sub $t0, $t0, $t1
	sw $t0, -4784($fp)
	lw $t0, -4776($fp)
	lw $t1, -4784($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4788($fp)
	j label1088
label1090:
	li $t0, 0
	sw $t0, -4792($fp)
	li $t0, 24239
	sw $t0, -4796($fp)
	li $t0, 32144
	sw $t0, -4800($fp)
	lw $t0, -4796($fp)
	lw $t1, -4800($fp)
	mul $t0, $t0, $t1
	sw $t0, -4804($fp)
	li $t0, 24069
	sw $t0, -4808($fp)
	lw $t0, -4804($fp)
	lw $t1, -4808($fp)
	add $t0, $t0, $t1
	sw $t0, -4812($fp)
	lw $t1, -4812($fp)
	li $t2, 0
	bne $t1, $t2, label1228
	j label1227
label1228:
	li $t0, 45309
	sw $t0, -4816($fp)
	lw $t0, -492($fp)
	sw $t0, -4820($fp)
	lw $t0, -4816($fp)
	lw $t1, -4820($fp)
	add $t0, $t0, $t1
	sw $t0, -4824($fp)
	lw $t1, -4824($fp)
	li $t2, 0
	bne $t1, $t2, label1226
	j label1227
label1226:
	li $t0, 1
	sw $t0, -4792($fp)
label1227:
	lw $t0, -4792($fp)
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -4828($fp)
	lw $t1, -4828($fp)
	li $t2, 0
	bne $t1, $t2, label1223
	j label1224
label1223:
	li $t0, 51698
	sw $t0, -4832($fp)
	lw $t0, -4832($fp)
	sw $t0, -4836($fp)
	lw $t0, -4836($fp)
	sw $t0, -4840($fp)
	addi $t0, $fp, -32
	sw $t0, -4844($fp)
	li $t0, 0
	sw $t0, -4848($fp)
	li $t0, 0
	sw $t0, -4852($fp)
	li $t0, 16722
	sw $t0, -4856($fp)
	lw $t0, -2064($fp)
	sw $t0, -4860($fp)
	lw $t1, -4856($fp)
	lw $t2, -4860($fp)
	bge $t1, $t2, label1231
	j label1232
label1231:
	li $t0, 1
	sw $t0, -4852($fp)
label1232:
	li $t0, 0
	sw $t0, -4864($fp)
	li $t0, 26180
	sw $t0, -4868($fp)
	lw $t1, -4868($fp)
	li $t2, 0
	bne $t1, $t2, label1234
	j label1233
label1233:
	li $t0, 1
	sw $t0, -4864($fp)
label1234:
	lw $t1, -4852($fp)
	lw $t2, -4864($fp)
	blt $t1, $t2, label1229
	j label1230
label1229:
	li $t0, 1
	sw $t0, -4848($fp)
label1230:
	li $t0, 4
	lw $t1, -4848($fp)
	mul $t0, $t0, $t1
	sw $t0, -4872($fp)
	lw $t0, -4872($fp)
	lw $t1, -4844($fp)
	add $t0, $t0, $t1
	sw $t0, -4876($fp)
	lw $t0, -4876($fp)
	lw $t1, 0($t0)
	sw $t1, -4880($fp)
	li $t0, 55345
	sw $t0, -4884($fp)
	lw $t0, -4884($fp)
	sw $t0, -4888($fp)
	lw $t0, -4888($fp)
	sw $t0, -4892($fp)
	li $t0, 15050
	sw $t0, -4896($fp)
	lw $t0, -4896($fp)
	sw $t0, -4900($fp)
	lw $t0, -4900($fp)
	sw $t0, -4904($fp)
	li $t0, 30401
	sw $t0, -4908($fp)
	lw $t0, -4908($fp)
	sw $t0, -4912($fp)
	lw $t0, -4912($fp)
	sw $t0, -4916($fp)
	li $t0, 0
	sw $t0, -4920($fp)
	li $t0, 0
	sw $t0, -4924($fp)
	lw $t0, -4888($fp)
	sw $t0, -4928($fp)
	li $t0, 27893
	sw $t0, -4932($fp)
	lw $t1, -4928($fp)
	lw $t2, -4932($fp)
	bge $t1, $t2, label1240
	j label1241
label1240:
	li $t0, 1
	sw $t0, -4924($fp)
label1241:
	li $t0, 49437
	sw $t0, -4936($fp)
	lw $t1, -4924($fp)
	lw $t2, -4936($fp)
	bne $t1, $t2, label1239
	j label1238
label1239:
	li $t0, 42175
	sw $t0, -4940($fp)
	lw $t1, -4940($fp)
	li $t2, 0
	bne $t1, $t2, label1235
	j label1238
label1238:
	li $t0, 0
	sw $t0, -4944($fp)
	lw $t0, -1248($fp)
	sw $t0, -4948($fp)
	li $t0, 25656
	sw $t0, -4952($fp)
	lw $t1, -4948($fp)
	lw $t2, -4952($fp)
	ble $t1, $t2, label1242
	j label1243
label1242:
	li $t0, 1
	sw $t0, -4944($fp)
label1243:
	li $t0, 55693
	sw $t0, -4956($fp)
	lw $t1, -4944($fp)
	lw $t2, -4956($fp)
	bne $t1, $t2, label1235
	j label1237
label1237:
	lw $t0, -1788($fp)
	sw $t0, -4960($fp)
	li $t0, 25229
	sw $t0, -4964($fp)
	lw $t1, -4960($fp)
	lw $t2, -4964($fp)
	beq $t1, $t2, label1245
	j label1236
label1245:
	li $t0, 37914
	sw $t0, -4968($fp)
	lw $t1, -4968($fp)
	li $t2, 0
	bne $t1, $t2, label1244
	j label1236
label1244:
	lw $t0, -924($fp)
	sw $t0, -4972($fp)
	li $t0, 18536
	sw $t0, -4976($fp)
	lw $t0, -4972($fp)
	lw $t1, -4976($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4980($fp)
	lw $t1, -4980($fp)
	li $t2, 0
	bne $t1, $t2, label1235
	j label1236
label1235:
	li $t0, 1
	sw $t0, -4920($fp)
label1236:
	li $t0, 0
	sw $t0, -4984($fp)
	addi $t0, $fp, -68
	sw $t0, -4988($fp)
	li $t0, 1
	sw $t0, -4992($fp)
	li $t0, 4
	lw $t1, -4992($fp)
	mul $t0, $t0, $t1
	sw $t0, -4996($fp)
	lw $t0, -4996($fp)
	lw $t1, -4988($fp)
	add $t0, $t0, $t1
	sw $t0, -5000($fp)
	lw $t0, -5000($fp)
	lw $t1, 0($t0)
	sw $t1, -5004($fp)
	lw $t0, -1440($fp)
	sw $t0, -5008($fp)
	lw $t0, -5004($fp)
	lw $t1, -5008($fp)
	mul $t0, $t0, $t1
	sw $t0, -5012($fp)
	lw $t0, -444($fp)
	sw $t0, -5016($fp)
	li $t0, 0
	lw $t1, -5016($fp)
	sub $t0, $t0, $t1
	sw $t0, -5020($fp)
	lw $t0, -5012($fp)
	lw $t1, -5020($fp)
	mul $t0, $t0, $t1
	sw $t0, -5024($fp)
	addi $t0, $fp, -124
	sw $t0, -5028($fp)
	li $t0, 0
	sw $t0, -5032($fp)
	li $t0, 4
	lw $t1, -5032($fp)
	mul $t0, $t0, $t1
	sw $t0, -5036($fp)
	lw $t0, -5036($fp)
	lw $t1, -5028($fp)
	add $t0, $t0, $t1
	sw $t0, -5040($fp)
	lw $t0, -5040($fp)
	lw $t1, 0($t0)
	sw $t1, -5044($fp)
	lw $t0, -5024($fp)
	lw $t1, -5044($fp)
	sub $t0, $t0, $t1
	sw $t0, -5048($fp)
	li $t0, 61857
	sw $t0, -5052($fp)
	lw $t1, -5048($fp)
	lw $t2, -5052($fp)
	blt $t1, $t2, label1246
	j label1247
label1246:
	li $t0, 1
	sw $t0, -4984($fp)
label1247:
	li $t0, 41141
	sw $t0, -5056($fp)
	lw $t0, -5056($fp)
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	sw $t0, -5060($fp)
	li $t0, 0
	sw $t0, -5064($fp)
	jal f8
	sw $v0, -5068($fp)
	addi $sp, $sp, 4
	lw $t0, -4900($fp)
	sw $t0, -5072($fp)
	lw $t1, -5068($fp)
	lw $t2, -5072($fp)
	beq $t1, $t2, label1248
	j label1249
label1248:
	li $t0, 1
	sw $t0, -5064($fp)
label1249:
	lw $t0, -1764($fp)
	sw $t0, -5076($fp)
	lw $t0, -5076($fp)
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	sw $t0, -5080($fp)
	addi $sp, $sp, -4
	lw $t0, -5060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5080($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5084($fp)
	addi $sp, $sp, 16
	lw $t0, -5084($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -5088($fp)
	li $t0, 0
	sw $t0, -5092($fp)
	li $t0, 100
	sw $t0, -5096($fp)
	lw $t1, -5096($fp)
	li $t2, 0
	bne $t1, $t2, label1251
	j label1250
label1250:
	li $t0, 1
	sw $t0, -5092($fp)
label1251:
	li $t0, 0
	lw $t1, -5092($fp)
	sub $t0, $t0, $t1
	sw $t0, -5100($fp)
	li $t0, 60155
	sw $t0, -5104($fp)
	lw $t0, -4912($fp)
	sw $t0, -5108($fp)
	lw $t0, -1800($fp)
	sw $t0, -5112($fp)
	addi $sp, $sp, -4
	lw $t0, -5104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5112($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5116($fp)
	addi $sp, $sp, 16
	lw $t0, -5100($fp)
	lw $t1, -5116($fp)
	add $t0, $t0, $t1
	sw $t0, -5120($fp)
	li $t0, 0
	sw $t0, -5124($fp)
	li $t0, 0
	sw $t0, -5128($fp)
	lw $t0, -4836($fp)
	sw $t0, -5132($fp)
	lw $t0, -1716($fp)
	sw $t0, -5136($fp)
	lw $t0, -5132($fp)
	lw $t1, -5136($fp)
	add $t0, $t0, $t1
	sw $t0, -5140($fp)
	li $t0, 0
	sw $t0, -5144($fp)
	li $t0, 29220
	sw $t0, -5148($fp)
	lw $t1, -5148($fp)
	li $t2, 0
	bne $t1, $t2, label1257
	j label1256
label1256:
	li $t0, 1
	sw $t0, -5144($fp)
label1257:
	li $t0, 0
	lw $t1, -5144($fp)
	sub $t0, $t0, $t1
	sw $t0, -5152($fp)
	lw $t1, -5140($fp)
	lw $t2, -5152($fp)
	bne $t1, $t2, label1254
	j label1255
label1254:
	li $t0, 1
	sw $t0, -5128($fp)
label1255:
	li $t0, 39860
	sw $t0, -5156($fp)
	jal f8
	sw $v0, -5160($fp)
	addi $sp, $sp, 4
	lw $t0, -5156($fp)
	lw $t1, -5160($fp)
	mul $t0, $t0, $t1
	sw $t0, -5164($fp)
	lw $t1, -5128($fp)
	lw $t2, -5164($fp)
	bne $t1, $t2, label1252
	j label1253
label1252:
	li $t0, 1
	sw $t0, -5124($fp)
label1253:
	lw $t0, 4($fp)
	sw $t0, -5168($fp)
	li $t0, 0
	sw $t0, -5172($fp)
	li $t0, 0
	sw $t0, -5176($fp)
	lw $t0, 20($fp)
	sw $t0, -5180($fp)
	lw $t1, -5180($fp)
	li $t2, 0
	bne $t1, $t2, label1267
	j label1266
label1267:
	li $t0, 45654
	sw $t0, -5184($fp)
	lw $t1, -5184($fp)
	li $t2, 0
	bne $t1, $t2, label1264
	j label1266
label1266:
	li $t0, 47061
	sw $t0, -5188($fp)
	lw $t1, -5188($fp)
	li $t2, 0
	bne $t1, $t2, label1264
	j label1265
label1264:
	li $t0, 1
	sw $t0, -5176($fp)
label1265:
	lw $t0, -1788($fp)
	sw $t0, -5192($fp)
	li $t0, 0
	sw $t0, -5196($fp)
	li $t0, 61729
	sw $t0, -5200($fp)
	lw $t0, -420($fp)
	sw $t0, -5204($fp)
	lw $t0, -5200($fp)
	lw $t1, -5204($fp)
	sub $t0, $t0, $t1
	sw $t0, -5208($fp)
	lw $t1, -5208($fp)
	li $t2, 0
	bne $t1, $t2, label1270
	j label1269
label1270:
	lw $t0, -972($fp)
	sw $t0, -5212($fp)
	lw $t1, -5212($fp)
	li $t2, 0
	bne $t1, $t2, label1268
	j label1269
label1268:
	li $t0, 1
	sw $t0, -5196($fp)
label1269:
	li $t0, 22822
	sw $t0, -5216($fp)
	addi $sp, $sp, -4
	lw $t0, -5176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5216($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5220($fp)
	addi $sp, $sp, 20
	lw $t0, -528($fp)
	sw $t0, -5224($fp)
	lw $t0, -5220($fp)
	lw $t1, -5224($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5228($fp)
	lw $t1, -5228($fp)
	li $t2, 0
	bne $t1, $t2, label1263
	j label1262
label1263:
	lw $t0, -960($fp)
	sw $t0, -5232($fp)
	li $t0, 0
	lw $t1, -5232($fp)
	sub $t0, $t0, $t1
	sw $t0, -5236($fp)
	lw $t1, -5236($fp)
	li $t2, 0
	bne $t1, $t2, label1261
	j label1262
label1261:
	li $t0, 1
	sw $t0, -5172($fp)
label1262:
	lw $t0, -5172($fp)
	sw $t0, -4836($fp)
	lw $t0, -4836($fp)
	sw $t0, -5240($fp)
	lw $t1, -5240($fp)
	li $t2, 0
	bne $t1, $t2, label1258
	j label1259
label1258:
label1271:
	addi $t0, $fp, -116
	sw $t0, -5244($fp)
	lw $t0, -1284($fp)
	sw $t0, -5248($fp)
	li $t0, 4
	lw $t1, -5248($fp)
	mul $t0, $t0, $t1
	sw $t0, -5252($fp)
	lw $t0, -5252($fp)
	lw $t1, -5244($fp)
	add $t0, $t0, $t1
	sw $t0, -5256($fp)
	lw $t0, -5256($fp)
	lw $t1, 0($t0)
	sw $t1, -5260($fp)
	lw $t1, -5260($fp)
	li $t2, 0
	bne $t1, $t2, label1272
	j label1273
label1272:
	li $t0, 0
	sw $t0, -5264($fp)
	li $t0, 28337
	sw $t0, -5268($fp)
	lw $t1, -5268($fp)
	li $t2, 0
	bne $t1, $t2, label1274
	j label1275
label1274:
	li $t0, 1
	sw $t0, -5264($fp)
label1275:
	lw $t0, -5264($fp)
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	sw $t0, -5272($fp)
	lw $ra, -4($fp)
	lw $v0, -5272($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1271
label1273:
	j label1260
label1259:
	li $t0, 4188
	sw $t0, -5276($fp)
	addi $t0, $fp, -68
	sw $t0, -5280($fp)
	li $t0, 5
	sw $t0, -5284($fp)
	li $t0, 4
	lw $t1, -5284($fp)
	mul $t0, $t0, $t1
	sw $t0, -5288($fp)
	lw $t0, -5288($fp)
	lw $t1, -5280($fp)
	add $t0, $t0, $t1
	sw $t0, -5292($fp)
	lw $t0, -5292($fp)
	lw $t1, 0($t0)
	sw $t1, -5296($fp)
	li $t0, 0
	lw $t1, -5296($fp)
	sub $t0, $t0, $t1
	sw $t0, -5300($fp)
	lw $t0, -5276($fp)
	lw $t1, -5300($fp)
	add $t0, $t0, $t1
	sw $t0, -5304($fp)
	li $t0, 0
	sw $t0, -5308($fp)
	lw $t0, -948($fp)
	sw $t0, -5312($fp)
	li $t0, 0
	sw $t0, -5316($fp)
	lw $t0, -396($fp)
	sw $t0, -5320($fp)
	li $t0, 0
	lw $t1, -5320($fp)
	sub $t0, $t0, $t1
	sw $t0, -5324($fp)
	li $t0, 20910
	sw $t0, -5328($fp)
	lw $t1, -5324($fp)
	lw $t2, -5328($fp)
	blt $t1, $t2, label1278
	j label1279
label1278:
	li $t0, 1
	sw $t0, -5316($fp)
label1279:
	lw $t0, -1248($fp)
	sw $t0, -5332($fp)
	li $t0, 0
	lw $t1, -5332($fp)
	sub $t0, $t0, $t1
	sw $t0, -5336($fp)
	lw $t0, -1788($fp)
	sw $t0, -5340($fp)
	lw $t0, -5336($fp)
	lw $t1, -5340($fp)
	add $t0, $t0, $t1
	sw $t0, -5344($fp)
	jal f8
	sw $v0, -5348($fp)
	addi $sp, $sp, 4
	addi $sp, $sp, -4
	lw $t0, -5316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5348($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5352($fp)
	addi $sp, $sp, 16
	lw $t0, -468($fp)
	sw $t0, -5356($fp)
	lw $t0, -5352($fp)
	lw $t1, -5356($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5360($fp)
	lw $t0, -5312($fp)
	lw $t1, -5360($fp)
	add $t0, $t0, $t1
	sw $t0, -5364($fp)
	li $t0, 53014
	sw $t0, -5368($fp)
	lw $t1, -5364($fp)
	lw $t2, -5368($fp)
	blt $t1, $t2, label1276
	j label1277
label1276:
	li $t0, 1
	sw $t0, -5308($fp)
label1277:
label1260:
	li $t0, 0
	sw $t0, -5372($fp)
	li $t0, 0
	sw $t0, -5376($fp)
	li $t0, 0
	sw $t0, -5380($fp)
	li $t0, 4309
	sw $t0, -5384($fp)
	lw $t0, -1740($fp)
	sw $t0, -5388($fp)
	li $t0, 35960
	sw $t0, -5392($fp)
	lw $t0, -5388($fp)
	lw $t1, -5392($fp)
	mul $t0, $t0, $t1
	sw $t0, -5396($fp)
	lw $t1, -5384($fp)
	lw $t2, -5396($fp)
	bge $t1, $t2, label1284
	j label1285
label1284:
	li $t0, 1
	sw $t0, -5380($fp)
label1285:
	addi $t0, $fp, -68
	sw $t0, -5400($fp)
	lw $t0, -420($fp)
	sw $t0, -5404($fp)
	li $t0, 4
	lw $t1, -5404($fp)
	mul $t0, $t0, $t1
	sw $t0, -5408($fp)
	lw $t0, -5408($fp)
	lw $t1, -5400($fp)
	add $t0, $t0, $t1
	sw $t0, -5412($fp)
	lw $t0, -5412($fp)
	lw $t1, 0($t0)
	sw $t1, -5416($fp)
	lw $t1, -5380($fp)
	lw $t2, -5416($fp)
	blt $t1, $t2, label1282
	j label1283
label1282:
	li $t0, 1
	sw $t0, -5376($fp)
label1283:
	lw $t0, -1152($fp)
	sw $t0, -5420($fp)
	li $t0, 17880
	sw $t0, -5424($fp)
	lw $t0, -5420($fp)
	lw $t1, -5424($fp)
	mul $t0, $t0, $t1
	sw $t0, -5428($fp)
	lw $t1, -5376($fp)
	lw $t2, -5428($fp)
	beq $t1, $t2, label1280
	j label1281
label1280:
	li $t0, 1
	sw $t0, -5372($fp)
label1281:
	lw $t0, -504($fp)
	sw $t0, -5432($fp)
	addi $t0, $fp, -184
	sw $t0, -5436($fp)
	lw $t0, 20($fp)
	sw $t0, -5440($fp)
	li $t0, 4
	lw $t1, -5440($fp)
	mul $t0, $t0, $t1
	sw $t0, -5444($fp)
	lw $t0, -5444($fp)
	lw $t1, -5436($fp)
	add $t0, $t0, $t1
	sw $t0, -5448($fp)
	lw $t0, -5448($fp)
	lw $t1, 0($t0)
	sw $t1, -5452($fp)
	li $t0, 0
	lw $t1, -5452($fp)
	sub $t0, $t0, $t1
	sw $t0, -5456($fp)
	lw $t0, -5432($fp)
	lw $t1, -5456($fp)
	add $t0, $t0, $t1
	sw $t0, -5460($fp)
	j label1225
label1224:
label1286:
	li $t0, 0
	sw $t0, -5464($fp)
	addi $t0, $fp, -32
	sw $t0, -5468($fp)
	li $t0, 3
	sw $t0, -5472($fp)
	li $t0, 4
	lw $t1, -5472($fp)
	mul $t0, $t0, $t1
	sw $t0, -5476($fp)
	lw $t0, -5476($fp)
	lw $t1, -5468($fp)
	add $t0, $t0, $t1
	sw $t0, -5480($fp)
	lw $t0, -5480($fp)
	lw $t1, 0($t0)
	sw $t1, -5484($fp)
	li $t0, 60055
	sw $t0, -5488($fp)
	lw $t0, -5484($fp)
	lw $t1, -5488($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5492($fp)
	lw $t0, -1680($fp)
	sw $t0, -5496($fp)
	li $t0, 57859
	sw $t0, -5500($fp)
	lw $t0, -5496($fp)
	lw $t1, -5500($fp)
	add $t0, $t0, $t1
	sw $t0, -5504($fp)
	lw $t1, -5492($fp)
	lw $t2, -5504($fp)
	blt $t1, $t2, label1289
	j label1290
label1289:
	li $t0, 1
	sw $t0, -5464($fp)
label1290:
	lw $t0, -5464($fp)
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	sw $t0, -5508($fp)
	lw $t1, -5508($fp)
	li $t2, 0
	bne $t1, $t2, label1287
	j label1288
label1287:
	li $t0, 10018
	sw $t0, -5512($fp)
	lw $ra, -4($fp)
	lw $v0, -5512($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1286
label1288:
label1225:
	li $t0, 19749
	sw $t0, -5516($fp)
	lw $t0, -5516($fp)
	sw $t0, -5520($fp)
	lw $t0, -5520($fp)
	sw $t0, -5524($fp)
	lw $t0, -5520($fp)
	sw $t0, -5528($fp)
	lw $t0, -5528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1692($fp)
	sw $t0, -5532($fp)
	li $t0, 0
	sw $t0, -5536($fp)
	li $t0, 17518
	sw $t0, -5540($fp)
	li $t0, 0
	sw $t0, -5544($fp)
	lw $t0, -1704($fp)
	sw $t0, -5548($fp)
	li $t0, 36478
	sw $t0, -5552($fp)
	lw $t1, -5548($fp)
	lw $t2, -5552($fp)
	beq $t1, $t2, label1296
	j label1295
label1296:
	li $t0, 48179
	sw $t0, -5556($fp)
	lw $t1, -5556($fp)
	li $t2, 0
	bne $t1, $t2, label1294
	j label1295
label1294:
	li $t0, 1
	sw $t0, -5544($fp)
label1295:
	li $t0, 48079
	sw $t0, -5560($fp)
	lw $t0, -1188($fp)
	sw $t0, -5564($fp)
	lw $t0, -5560($fp)
	lw $t1, -5564($fp)
	sub $t0, $t0, $t1
	sw $t0, -5568($fp)
	li $t0, 22899
	sw $t0, -5572($fp)
	lw $t0, -5568($fp)
	lw $t1, -5572($fp)
	sub $t0, $t0, $t1
	sw $t0, -5576($fp)
	li $t0, 0
	sw $t0, -5580($fp)
	lw $t0, -1788($fp)
	sw $t0, -5584($fp)
	li $t0, 26578
	sw $t0, -5588($fp)
	lw $t0, -5584($fp)
	lw $t1, -5588($fp)
	add $t0, $t0, $t1
	sw $t0, -5592($fp)
	lw $t1, -5592($fp)
	li $t2, 0
	bne $t1, $t2, label1299
	j label1298
label1299:
	li $t0, 60872
	sw $t0, -5596($fp)
	lw $t1, -5596($fp)
	li $t2, 0
	bne $t1, $t2, label1297
	j label1298
label1297:
	li $t0, 1
	sw $t0, -5580($fp)
label1298:
	lw $t0, -1788($fp)
	sw $t0, -5600($fp)
	lw $t0, -5600($fp)
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	sw $t0, -5604($fp)
	addi $sp, $sp, -4
	lw $t0, -5540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5604($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5608($fp)
	addi $sp, $sp, 24
	lw $t1, -5608($fp)
	li $t2, 0
	bne $t1, $t2, label1291
	j label1293
label1293:
	lw $t0, -1716($fp)
	sw $t0, -5612($fp)
	lw $t1, -5612($fp)
	li $t2, 0
	bne $t1, $t2, label1291
	j label1292
label1291:
	li $t0, 1
	sw $t0, -5536($fp)
label1292:
	li $t0, 0
	sw $t0, -5616($fp)
	li $t0, 41429
	sw $t0, -5620($fp)
	lw $t1, -5620($fp)
	li $t2, 0
	bne $t1, $t2, label1302
	j label1301
label1302:
	lw $t0, -1728($fp)
	sw $t0, -5624($fp)
	lw $t1, -5624($fp)
	li $t2, 0
	bne $t1, $t2, label1300
	j label1301
label1300:
	li $t0, 1
	sw $t0, -5616($fp)
label1301:
	li $t0, 0
	sw $t0, -5628($fp)
	lw $t0, -5520($fp)
	sw $t0, -5632($fp)
	lw $t1, -5632($fp)
	li $t2, 0
	bne $t1, $t2, label1304
	j label1303
label1303:
	li $t0, 1
	sw $t0, -5628($fp)
label1304:
	li $t0, 28554
	sw $t0, -5636($fp)
	lw $t0, -5628($fp)
	lw $t1, -5636($fp)
	mul $t0, $t0, $t1
	sw $t0, -5640($fp)
	li $t0, 30237
	sw $t0, -5644($fp)
	addi $sp, $sp, -4
	lw $t0, -5536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5644($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5648($fp)
	addi $sp, $sp, 20
	lw $t0, -5532($fp)
	lw $t1, -5648($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5652($fp)
	lw $t0, -1788($fp)
	sw $t0, -5656($fp)
	li $t0, 0
	lw $t1, -5656($fp)
	sub $t0, $t0, $t1
	sw $t0, -5660($fp)
	lw $t0, -5652($fp)
	lw $t1, -5660($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5664($fp)
	lw $ra, -4($fp)
	lw $v0, -5664($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 2622
	sw $t0, -5668($fp)
	lw $t0, -5668($fp)
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	sw $t0, -5672($fp)
	li $t0, 0
	sw $t0, -5676($fp)
	li $t0, 61891
	sw $t0, -5680($fp)
	lw $t0, -972($fp)
	sw $t0, -5684($fp)
	lw $t1, -5680($fp)
	lw $t2, -5684($fp)
	bge $t1, $t2, label1305
	j label1306
label1305:
	li $t0, 1
	sw $t0, -5676($fp)
label1306:
	li $t0, 40340
	sw $t0, -5688($fp)
	lw $t0, -5688($fp)
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -5692($fp)
	li $t0, 0
	sw $t0, -5696($fp)
	li $t0, 22503
	sw $t0, -5700($fp)
	lw $t1, -5700($fp)
	li $t2, 0
	bne $t1, $t2, label1310
	j label1308
label1310:
	lw $t0, -492($fp)
	sw $t0, -5704($fp)
	lw $t1, -5704($fp)
	li $t2, 0
	bne $t1, $t2, label1309
	j label1308
label1309:
	lw $t0, -504($fp)
	sw $t0, -5708($fp)
	lw $t1, -5708($fp)
	li $t2, 0
	bne $t1, $t2, label1307
	j label1308
label1307:
	li $t0, 1
	sw $t0, -5696($fp)
label1308:
	li $t0, 0
	sw $t0, -5712($fp)
	li $t0, 162
	sw $t0, -5716($fp)
	li $t0, 0
	lw $t1, -5716($fp)
	sub $t0, $t0, $t1
	sw $t0, -5720($fp)
	lw $t1, -5720($fp)
	li $t2, 0
	bne $t1, $t2, label1312
	j label1311
label1311:
	li $t0, 1
	sw $t0, -5712($fp)
label1312:
	addi $sp, $sp, -4
	lw $t0, -5672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5712($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5724($fp)
	addi $sp, $sp, 24
	li $t0, 21866
	sw $t0, -5728($fp)
	lw $t0, -5728($fp)
	sw $t0, -5732($fp)
	lw $t0, -5732($fp)
	sw $t0, -5736($fp)
	li $t0, 24693
	sw $t0, -5740($fp)
	lw $t0, -5740($fp)
	sw $t0, -5744($fp)
	lw $t0, -5744($fp)
	sw $t0, -5748($fp)
	li $t0, 6810
	sw $t0, -5752($fp)
	lw $t0, -5752($fp)
	sw $t0, -5756($fp)
	lw $t0, -5756($fp)
	sw $t0, -5760($fp)
	li $t0, 48700
	sw $t0, -5764($fp)
	lw $t0, -5764($fp)
	sw $t0, -5768($fp)
	lw $t0, -5768($fp)
	sw $t0, -5772($fp)
	li $t0, 39193
	sw $t0, -5776($fp)
	lw $t0, -5776($fp)
	sw $t0, -5780($fp)
	lw $t0, -5780($fp)
	sw $t0, -5784($fp)
	li $t0, 27720
	sw $t0, -5788($fp)
	lw $t0, -5788($fp)
	sw $t0, -5792($fp)
	lw $t0, -5792($fp)
	sw $t0, -5796($fp)
	li $t0, 36179
	sw $t0, -5800($fp)
	lw $t0, -5800($fp)
	sw $t0, -5804($fp)
	lw $t0, -5804($fp)
	sw $t0, -5808($fp)
	li $t0, 43502
	sw $t0, -5812($fp)
	lw $t0, -5812($fp)
	sw $t0, -5816($fp)
	lw $t0, -5816($fp)
	sw $t0, -5820($fp)
	li $t0, 63680
	sw $t0, -5824($fp)
	lw $t0, -5824($fp)
	sw $t0, -5828($fp)
	lw $t0, -5828($fp)
	sw $t0, -5832($fp)
	li $t0, 2492
	sw $t0, -5836($fp)
	lw $t0, 8($fp)
	sw $t0, -5840($fp)
	lw $t0, -5840($fp)
	sw $t0, -5744($fp)
	lw $t0, -5744($fp)
	sw $t0, -5844($fp)
	li $t0, 0
	sw $t0, -5848($fp)
	li $t0, 48578
	sw $t0, -5852($fp)
	lw $t0, -1788($fp)
	sw $t0, -5856($fp)
	lw $t1, -5852($fp)
	lw $t2, -5856($fp)
	beq $t1, $t2, label1317
	j label1318
label1317:
	li $t0, 1
	sw $t0, -5848($fp)
label1318:
	li $t0, 18005
	sw $t0, -5860($fp)
	addi $sp, $sp, -4
	lw $t0, -5836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5860($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5864($fp)
	addi $sp, $sp, 20
	li $t0, 10169
	sw $t0, -5868($fp)
	li $t0, 54059
	sw $t0, -5872($fp)
	addi $sp, $sp, -4
	lw $t0, -5864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5872($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5876($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -5880($fp)
	li $t0, 28023
	sw $t0, -5884($fp)
	lw $t1, -5884($fp)
	li $t2, 0
	bne $t1, $t2, label1320
	j label1319
label1319:
	li $t0, 1
	sw $t0, -5880($fp)
label1320:
	lw $t0, -5756($fp)
	sw $t0, -5888($fp)
	lw $t0, -5880($fp)
	lw $t1, -5888($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5892($fp)
	lw $t1, -5876($fp)
	lw $t2, -5892($fp)
	blt $t1, $t2, label1313
	j label1316
label1316:
	lw $t0, 20($fp)
	sw $t0, -5896($fp)
	lw $t0, -5896($fp)
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	sw $t0, -5900($fp)
	li $t0, 0
	sw $t0, -5904($fp)
	li $t0, 0
	sw $t0, -5908($fp)
	lw $t0, -1272($fp)
	sw $t0, -5912($fp)
	lw $t1, -5912($fp)
	li $t2, 0
	bne $t1, $t2, label1324
	j label1323
label1323:
	li $t0, 1
	sw $t0, -5908($fp)
label1324:
	li $t0, 44220
	sw $t0, -5916($fp)
	lw $t1, -5908($fp)
	lw $t2, -5916($fp)
	beq $t1, $t2, label1321
	j label1322
label1321:
	li $t0, 1
	sw $t0, -5904($fp)
label1322:
	li $t0, 0
	sw $t0, -5920($fp)
	lw $t0, -1752($fp)
	sw $t0, -5924($fp)
	lw $t0, -5768($fp)
	sw $t0, -5928($fp)
	lw $t1, -5924($fp)
	lw $t2, -5928($fp)
	beq $t1, $t2, label1325
	j label1326
label1325:
	li $t0, 1
	sw $t0, -5920($fp)
label1326:
	li $t0, 0
	sw $t0, -5932($fp)
	lw $t0, -1740($fp)
	sw $t0, -5936($fp)
	lw $t1, -5936($fp)
	li $t2, 0
	bne $t1, $t2, label1327
	j label1329
label1329:
	li $t0, 56577
	sw $t0, -5940($fp)
	lw $t1, -5940($fp)
	li $t2, 0
	bne $t1, $t2, label1327
	j label1328
label1327:
	li $t0, 1
	sw $t0, -5932($fp)
label1328:
	li $t0, 0
	sw $t0, -5944($fp)
	li $t0, 32729
	sw $t0, -5948($fp)
	lw $t0, -492($fp)
	sw $t0, -5952($fp)
	lw $t1, -5948($fp)
	lw $t2, -5952($fp)
	bge $t1, $t2, label1330
	j label1331
label1330:
	li $t0, 1
	sw $t0, -5944($fp)
label1331:
	li $t0, 2791
	sw $t0, -5956($fp)
	li $t0, 0
	lw $t1, -5956($fp)
	sub $t0, $t0, $t1
	sw $t0, -5960($fp)
	addi $sp, $sp, -4
	lw $t0, -5920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5960($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5964($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -5900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5964($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5968($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -5968($fp)
	sub $t0, $t0, $t1
	sw $t0, -5972($fp)
	li $t0, 0
	sw $t0, -5976($fp)
	li $t0, 59307
	sw $t0, -5980($fp)
	lw $t1, -5980($fp)
	li $t2, 0
	bne $t1, $t2, label1333
	j label1332
label1332:
	li $t0, 1
	sw $t0, -5976($fp)
label1333:
	lw $t0, -5972($fp)
	lw $t1, -5976($fp)
	add $t0, $t0, $t1
	sw $t0, -5984($fp)
	lw $t1, -5984($fp)
	li $t2, 0
	bne $t1, $t2, label1313
	j label1314
label1313:
	li $t0, 0
	sw $t0, -5988($fp)
	addi $t0, $fp, -68
	sw $t0, -5992($fp)
	lw $t0, -1248($fp)
	sw $t0, -5996($fp)
	li $t0, 4
	lw $t1, -5996($fp)
	mul $t0, $t0, $t1
	sw $t0, -6000($fp)
	lw $t0, -6000($fp)
	lw $t1, -5992($fp)
	add $t0, $t0, $t1
	sw $t0, -6004($fp)
	lw $t0, -6004($fp)
	lw $t1, 0($t0)
	sw $t1, -6008($fp)
	lw $t1, -6008($fp)
	li $t2, 0
	bne $t1, $t2, label1336
	j label1335
label1336:
	lw $t0, -1788($fp)
	sw $t0, -6012($fp)
	lw $t1, -6012($fp)
	li $t2, 0
	bne $t1, $t2, label1334
	j label1335
label1334:
	li $t0, 1
	sw $t0, -5988($fp)
label1335:
	li $t0, 0
	sw $t0, -6016($fp)
	lw $t0, -1776($fp)
	sw $t0, -6020($fp)
	li $t0, 0
	lw $t1, -6020($fp)
	sub $t0, $t0, $t1
	sw $t0, -6024($fp)
	li $t0, 30860
	sw $t0, -6028($fp)
	lw $t1, -6024($fp)
	lw $t2, -6028($fp)
	bge $t1, $t2, label1337
	j label1338
label1337:
	li $t0, 1
	sw $t0, -6016($fp)
label1338:
	li $t0, 0
	sw $t0, -6032($fp)
	lw $t0, -5792($fp)
	sw $t0, -6036($fp)
	lw $t0, -1800($fp)
	sw $t0, -6040($fp)
	lw $t1, -6036($fp)
	lw $t2, -6040($fp)
	ble $t1, $t2, label1339
	j label1340
label1339:
	li $t0, 1
	sw $t0, -6032($fp)
label1340:
	li $t0, 34532
	sw $t0, -6044($fp)
	lw $t0, -6044($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -6048($fp)
	li $t0, 0
	sw $t0, -6052($fp)
	lw $t0, -1764($fp)
	sw $t0, -6056($fp)
	li $t0, 8994
	sw $t0, -6060($fp)
	lw $t1, -6056($fp)
	lw $t2, -6060($fp)
	bge $t1, $t2, label1343
	j label1342
label1343:
	li $t0, 19373
	sw $t0, -6064($fp)
	lw $t1, -6064($fp)
	li $t2, 0
	bne $t1, $t2, label1341
	j label1342
label1341:
	li $t0, 1
	sw $t0, -6052($fp)
label1342:
	li $t0, 0
	sw $t0, -6068($fp)
	li $t0, 0
	sw $t0, -6072($fp)
	li $t0, 0
	sw $t0, -6076($fp)
	li $t0, 34189
	sw $t0, -6080($fp)
	li $t0, 23018
	sw $t0, -6084($fp)
	lw $t1, -6080($fp)
	lw $t2, -6084($fp)
	bne $t1, $t2, label1349
	j label1350
label1349:
	li $t0, 1
	sw $t0, -6076($fp)
label1350:
	lw $t0, -5780($fp)
	sw $t0, -6088($fp)
	lw $t1, -6076($fp)
	lw $t2, -6088($fp)
	bne $t1, $t2, label1347
	j label1348
label1347:
	li $t0, 1
	sw $t0, -6072($fp)
label1348:
	li $t0, 0
	sw $t0, -6092($fp)
	lw $t0, 4($fp)
	sw $t0, -6096($fp)
	lw $t0, -1188($fp)
	sw $t0, -6100($fp)
	lw $t0, -6096($fp)
	lw $t1, -6100($fp)
	sub $t0, $t0, $t1
	sw $t0, -6104($fp)
	li $t0, 9406
	sw $t0, -6108($fp)
	lw $t1, -6104($fp)
	lw $t2, -6108($fp)
	beq $t1, $t2, label1351
	j label1352
label1351:
	li $t0, 1
	sw $t0, -6092($fp)
label1352:
	li $t0, 22856
	sw $t0, -6112($fp)
	addi $sp, $sp, -4
	lw $t0, -6072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6112($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6116($fp)
	addi $sp, $sp, 16
	lw $t1, -6116($fp)
	li $t2, 0
	bne $t1, $t2, label1344
	j label1346
label1346:
	li $t0, 31910
	sw $t0, -6120($fp)
	lw $t1, -6120($fp)
	li $t2, 0
	bne $t1, $t2, label1344
	j label1345
label1344:
	li $t0, 1
	sw $t0, -6068($fp)
label1345:
	addi $sp, $sp, -4
	lw $t0, -6016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6068($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -6124($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -6128($fp)
	li $t0, 51914
	sw $t0, -6132($fp)
	li $t0, 26763
	sw $t0, -6136($fp)
	lw $t0, -6132($fp)
	lw $t1, -6136($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6140($fp)
	lw $t1, -6140($fp)
	li $t2, 0
	bne $t1, $t2, label1355
	j label1354
label1355:
	li $t0, 16671
	sw $t0, -6144($fp)
	lw $t1, -6144($fp)
	li $t2, 0
	bne $t1, $t2, label1353
	j label1354
label1353:
	li $t0, 1
	sw $t0, -6128($fp)
label1354:
	addi $sp, $sp, -4
	lw $t0, -5988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6128($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6148($fp)
	addi $sp, $sp, 16
	lw $ra, -4($fp)
	lw $v0, -6148($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1315
label1314:
	li $t0, 0
	sw $t0, -6152($fp)
	li $t0, 17723
	sw $t0, -6156($fp)
	li $t0, 3526
	sw $t0, -6160($fp)
	lw $t1, -6156($fp)
	lw $t2, -6160($fp)
	beq $t1, $t2, label1358
	j label1357
label1358:
	li $t0, 50203
	sw $t0, -6164($fp)
	lw $t1, -6164($fp)
	li $t2, 0
	bne $t1, $t2, label1356
	j label1357
label1356:
	li $t0, 1
	sw $t0, -6152($fp)
label1357:
	li $t0, 0
	sw $t0, -6168($fp)
	li $t0, 14024
	sw $t0, -6172($fp)
	lw $t1, -6172($fp)
	li $t2, 0
	bne $t1, $t2, label1361
	j label1359
label1361:
	lw $t0, 20($fp)
	sw $t0, -6176($fp)
	lw $t1, -6176($fp)
	li $t2, 0
	bne $t1, $t2, label1359
	j label1360
label1359:
	li $t0, 1
	sw $t0, -6168($fp)
label1360:
	li $t0, 0
	sw $t0, -6180($fp)
	li $t0, 41342
	sw $t0, -6184($fp)
	lw $t0, -5804($fp)
	sw $t0, -6188($fp)
	lw $t0, -6184($fp)
	lw $t1, -6188($fp)
	mul $t0, $t0, $t1
	sw $t0, -6192($fp)
	lw $t1, -6192($fp)
	li $t2, 0
	bne $t1, $t2, label1364
	j label1363
label1364:
	lw $t0, -552($fp)
	sw $t0, -6196($fp)
	lw $t1, -6196($fp)
	li $t2, 0
	bne $t1, $t2, label1362
	j label1363
label1362:
	li $t0, 1
	sw $t0, -6180($fp)
label1363:
	li $t0, 44066
	sw $t0, -6200($fp)
	addi $sp, $sp, -4
	lw $t0, -6152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6200($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6204($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -68
	sw $t0, -6208($fp)
	li $t0, 6
	sw $t0, -6212($fp)
	li $t0, 4
	lw $t1, -6212($fp)
	mul $t0, $t0, $t1
	sw $t0, -6216($fp)
	lw $t0, -6216($fp)
	lw $t1, -6208($fp)
	add $t0, $t0, $t1
	sw $t0, -6220($fp)
	lw $t0, -6220($fp)
	lw $t1, 0($t0)
	sw $t1, -6224($fp)
	lw $t0, -6204($fp)
	lw $t1, -6224($fp)
	add $t0, $t0, $t1
	sw $t0, -6228($fp)
	li $t0, 0
	sw $t0, -6232($fp)
	lw $t0, -1812($fp)
	sw $t0, -6236($fp)
	lw $t0, -1824($fp)
	sw $t0, -6240($fp)
	lw $t0, -6236($fp)
	lw $t1, -6240($fp)
	add $t0, $t0, $t1
	sw $t0, -6244($fp)
	li $t0, 8351
	sw $t0, -6248($fp)
	lw $t1, -6244($fp)
	lw $t2, -6248($fp)
	blt $t1, $t2, label1365
	j label1366
label1365:
	li $t0, 1
	sw $t0, -6232($fp)
label1366:
	jal f8
	sw $v0, -6252($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -116
	sw $t0, -6256($fp)
	li $t0, 5
	sw $t0, -6260($fp)
	li $t0, 4
	lw $t1, -6260($fp)
	mul $t0, $t0, $t1
	sw $t0, -6264($fp)
	lw $t0, -6264($fp)
	lw $t1, -6256($fp)
	add $t0, $t0, $t1
	sw $t0, -6268($fp)
	lw $t0, -6268($fp)
	lw $t1, 0($t0)
	sw $t1, -6272($fp)
	li $t0, 21769
	sw $t0, -6276($fp)
	lw $t0, -6272($fp)
	lw $t1, -6276($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6280($fp)
	jal f8
	sw $v0, -6284($fp)
	addi $sp, $sp, 4
	lw $t0, -1800($fp)
	sw $t0, -6288($fp)
	lw $t0, -6284($fp)
	lw $t1, -6288($fp)
	add $t0, $t0, $t1
	sw $t0, -6292($fp)
	lw $t0, -5756($fp)
	sw $t0, -6296($fp)
	li $t0, 0
	lw $t1, -6296($fp)
	sub $t0, $t0, $t1
	sw $t0, -6300($fp)
	lw $t0, -5816($fp)
	sw $t0, -6304($fp)
	lw $t0, -924($fp)
	sw $t0, -6308($fp)
	addi $sp, $sp, -4
	lw $t0, -6300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6308($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6312($fp)
	addi $sp, $sp, 16
	li $t0, 38726
	sw $t0, -6316($fp)
	lw $t0, -6312($fp)
	lw $t1, -6316($fp)
	sub $t0, $t0, $t1
	sw $t0, -6320($fp)
	addi $sp, $sp, -4
	lw $t0, -6232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6320($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -6324($fp)
	addi $sp, $sp, 24
	lw $t0, -6228($fp)
	lw $t1, -6324($fp)
	sub $t0, $t0, $t1
	sw $t0, -6328($fp)
	lw $ra, -4($fp)
	lw $v0, -6328($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label1315:
	li $t0, 47698
	sw $t0, -6332($fp)
	lw $t0, -6332($fp)
	sw $t0, -6336($fp)
	lw $t0, -6336($fp)
	sw $t0, -6340($fp)
	li $t0, 24560
	sw $t0, -6344($fp)
	lw $t0, -6344($fp)
	sw $t0, -6348($fp)
	lw $t0, -6348($fp)
	sw $t0, -6352($fp)
	li $t0, 41080
	sw $t0, -6356($fp)
	lw $t0, -6356($fp)
	sw $t0, -6360($fp)
	lw $t0, -6360($fp)
	sw $t0, -6364($fp)
	li $t0, 0
	sw $t0, -6368($fp)
	li $t0, 0
	sw $t0, -6372($fp)
	lw $t0, -6336($fp)
	sw $t0, -6376($fp)
	lw $t0, -1668($fp)
	sw $t0, -6380($fp)
	lw $t1, -6376($fp)
	lw $t2, -6380($fp)
	beq $t1, $t2, label1370
	j label1371
label1370:
	li $t0, 1
	sw $t0, -6372($fp)
label1371:
	lw $t0, -492($fp)
	sw $t0, -6384($fp)
	lw $t1, -6372($fp)
	lw $t2, -6384($fp)
	bne $t1, $t2, label1369
	j label1368
label1369:
	li $t0, 38739
	sw $t0, -6388($fp)
	lw $t0, -972($fp)
	sw $t0, -6392($fp)
	lw $t1, -6388($fp)
	lw $t2, -6392($fp)
	bge $t1, $t2, label1367
	j label1368
label1367:
	li $t0, 1
	sw $t0, -6368($fp)
label1368:
	lw $t0, -6368($fp)
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	sw $t0, -6396($fp)
	lw $t0, -1728($fp)
	sw $t0, -6400($fp)
	li $t0, 0
	lw $t1, -6400($fp)
	sub $t0, $t0, $t1
	sw $t0, -6404($fp)
	li $t0, 0
	sw $t0, -6408($fp)
	li $t0, 0
	sw $t0, -6412($fp)
	li $t0, 30008
	sw $t0, -6416($fp)
	lw $t0, -948($fp)
	sw $t0, -6420($fp)
	lw $t1, -6416($fp)
	lw $t2, -6420($fp)
	beq $t1, $t2, label1377
	j label1376
label1377:
	lw $t0, -492($fp)
	sw $t0, -6424($fp)
	lw $t1, -6424($fp)
	li $t2, 0
	bne $t1, $t2, label1375
	j label1376
label1375:
	li $t0, 1
	sw $t0, -6412($fp)
label1376:
	li $t0, 0
	sw $t0, -6428($fp)
	li $t0, 34852
	sw $t0, -6432($fp)
	lw $t1, -6432($fp)
	li $t2, 0
	bne $t1, $t2, label1380
	j label1379
label1380:
	li $t0, 25117
	sw $t0, -6436($fp)
	lw $t1, -6436($fp)
	li $t2, 0
	bne $t1, $t2, label1378
	j label1379
label1378:
	li $t0, 1
	sw $t0, -6428($fp)
label1379:
	lw $t0, -972($fp)
	sw $t0, -6440($fp)
	li $t0, 0
	lw $t1, -6440($fp)
	sub $t0, $t0, $t1
	sw $t0, -6444($fp)
	li $t0, 0
	lw $t1, -6444($fp)
	sub $t0, $t0, $t1
	sw $t0, -6448($fp)
	li $t0, 0
	sw $t0, -6452($fp)
	lw $t0, -1260($fp)
	sw $t0, -6456($fp)
	lw $t1, -6456($fp)
	li $t2, 0
	bne $t1, $t2, label1384
	j label1382
label1384:
	li $t0, 3245
	sw $t0, -6460($fp)
	lw $t1, -6460($fp)
	li $t2, 0
	bne $t1, $t2, label1383
	j label1382
label1383:
	lw $t0, -6348($fp)
	sw $t0, -6464($fp)
	lw $t1, -6464($fp)
	li $t2, 0
	bne $t1, $t2, label1381
	j label1382
label1381:
	li $t0, 1
	sw $t0, -6452($fp)
label1382:
	addi $sp, $sp, -4
	lw $t0, -6412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6452($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6468($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -148
	sw $t0, -6472($fp)
	li $t0, 3
	sw $t0, -6476($fp)
	li $t0, 4
	lw $t1, -6476($fp)
	mul $t0, $t0, $t1
	sw $t0, -6480($fp)
	lw $t0, -6480($fp)
	lw $t1, -6472($fp)
	add $t0, $t0, $t1
	sw $t0, -6484($fp)
	lw $t0, -6484($fp)
	lw $t1, 0($t0)
	sw $t1, -6488($fp)
	lw $t0, -6468($fp)
	lw $t1, -6488($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6492($fp)
	addi $t0, $fp, -32
	sw $t0, -6496($fp)
	li $t0, 2
	sw $t0, -6500($fp)
	li $t0, 4
	lw $t1, -6500($fp)
	mul $t0, $t0, $t1
	sw $t0, -6504($fp)
	lw $t0, -6504($fp)
	lw $t1, -6496($fp)
	add $t0, $t0, $t1
	sw $t0, -6508($fp)
	lw $t0, -6508($fp)
	lw $t1, 0($t0)
	sw $t1, -6512($fp)
	lw $t0, -6360($fp)
	sw $t0, -6516($fp)
	lw $t0, -6512($fp)
	lw $t1, -6516($fp)
	add $t0, $t0, $t1
	sw $t0, -6520($fp)
	lw $t1, -6492($fp)
	lw $t2, -6520($fp)
	blt $t1, $t2, label1372
	j label1374
label1374:
	lw $t0, -1800($fp)
	sw $t0, -6524($fp)
	lw $t1, -6524($fp)
	li $t2, 0
	bne $t1, $t2, label1385
	j label1373
label1385:
	li $t0, 5455
	sw $t0, -6528($fp)
	li $t0, 5789
	sw $t0, -6532($fp)
	lw $t0, -6528($fp)
	lw $t1, -6532($fp)
	sub $t0, $t0, $t1
	sw $t0, -6536($fp)
	lw $t1, -6536($fp)
	li $t2, 0
	bne $t1, $t2, label1372
	j label1373
label1372:
	li $t0, 1
	sw $t0, -6408($fp)
label1373:
	lw $t0, -396($fp)
	sw $t0, -6540($fp)
	li $t0, 0
	lw $t1, -6540($fp)
	sub $t0, $t0, $t1
	sw $t0, -6544($fp)
	lw $t0, -6544($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -6548($fp)
	li $t0, 0
	sw $t0, -6552($fp)
	li $t0, 29170
	sw $t0, -6556($fp)
	lw $t1, -6556($fp)
	li $t2, 0
	bne $t1, $t2, label1386
	j label1388
label1388:
	lw $t0, -960($fp)
	sw $t0, -6560($fp)
	lw $t0, -5828($fp)
	sw $t0, -6564($fp)
	lw $t0, -6564($fp)
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -6568($fp)
	li $t0, 0
	sw $t0, -6572($fp)
	li $t0, 0
	sw $t0, -6576($fp)
	li $t0, 24829
	sw $t0, -6580($fp)
	li $t0, 40321
	sw $t0, -6584($fp)
	lw $t1, -6580($fp)
	lw $t2, -6584($fp)
	ble $t1, $t2, label1391
	j label1392
label1391:
	li $t0, 1
	sw $t0, -6576($fp)
label1392:
	li $t0, 60030
	sw $t0, -6588($fp)
	lw $t1, -6576($fp)
	lw $t2, -6588($fp)
	bne $t1, $t2, label1389
	j label1390
label1389:
	li $t0, 1
	sw $t0, -6572($fp)
label1390:
	li $t0, 0
	sw $t0, -6592($fp)
	lw $t0, -444($fp)
	sw $t0, -6596($fp)
	lw $t1, -6596($fp)
	li $t2, 0
	bne $t1, $t2, label1393
	j label1395
label1395:
	lw $t0, -1140($fp)
	sw $t0, -6600($fp)
	lw $t1, -6600($fp)
	li $t2, 0
	bne $t1, $t2, label1393
	j label1394
label1393:
	li $t0, 1
	sw $t0, -6592($fp)
label1394:
	addi $sp, $sp, -4
	lw $t0, -6568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6592($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6604($fp)
	addi $sp, $sp, 16
	lw $t0, -6560($fp)
	lw $t1, -6604($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6608($fp)
	lw $t1, -6608($fp)
	li $t2, 0
	bne $t1, $t2, label1386
	j label1387
label1386:
	li $t0, 1
	sw $t0, -6552($fp)
label1387:
	li $t0, 3359
	sw $t0, -6612($fp)
	lw $t0, -6612($fp)
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -6616($fp)
	li $t0, 0
	sw $t0, -6620($fp)
	li $t0, 0
	sw $t0, -6624($fp)
	lw $t0, -1836($fp)
	sw $t0, -6628($fp)
	lw $t1, -6628($fp)
	li $t2, 0
	bne $t1, $t2, label1400
	j label1399
label1399:
	li $t0, 1
	sw $t0, -6624($fp)
label1400:
	addi $t0, $fp, -148
	sw $t0, -6632($fp)
	lw $t0, -972($fp)
	sw $t0, -6636($fp)
	li $t0, 4
	lw $t1, -6636($fp)
	mul $t0, $t0, $t1
	sw $t0, -6640($fp)
	lw $t0, -6640($fp)
	lw $t1, -6632($fp)
	add $t0, $t0, $t1
	sw $t0, -6644($fp)
	lw $t0, -6644($fp)
	lw $t1, 0($t0)
	sw $t1, -6648($fp)
	lw $t0, -6624($fp)
	lw $t1, -6648($fp)
	sub $t0, $t0, $t1
	sw $t0, -6652($fp)
	lw $t0, -5732($fp)
	sw $t0, -6656($fp)
	li $t0, 16773
	sw $t0, -6660($fp)
	lw $t0, -6656($fp)
	lw $t1, -6660($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6664($fp)
	li $t0, 21323
	sw $t0, -6668($fp)
	lw $t0, -6664($fp)
	lw $t1, -6668($fp)
	mul $t0, $t0, $t1
	sw $t0, -6672($fp)
	li $t0, 0
	sw $t0, -6676($fp)
	lw $t0, -1284($fp)
	sw $t0, -6680($fp)
	li $t0, 0
	lw $t1, -6680($fp)
	sub $t0, $t0, $t1
	sw $t0, -6684($fp)
	lw $t1, -6684($fp)
	li $t2, 0
	bne $t1, $t2, label1401
	j label1403
label1403:
	li $t0, 58722
	sw $t0, -6688($fp)
	lw $t1, -6688($fp)
	li $t2, 0
	bne $t1, $t2, label1401
	j label1402
label1401:
	li $t0, 1
	sw $t0, -6676($fp)
label1402:
	li $t0, 19653
	sw $t0, -6692($fp)
	li $t0, 21083
	sw $t0, -6696($fp)
	li $t0, 16127
	sw $t0, -6700($fp)
	lw $t0, -1788($fp)
	sw $t0, -6704($fp)
	lw $t0, -6700($fp)
	lw $t1, -6704($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6708($fp)
	li $t0, 8519
	sw $t0, -6712($fp)
	lw $t0, -6708($fp)
	lw $t1, -6712($fp)
	sub $t0, $t0, $t1
	sw $t0, -6716($fp)
	addi $sp, $sp, -4
	lw $t0, -6672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6716($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -6720($fp)
	addi $sp, $sp, 24
	lw $t1, -6652($fp)
	lw $t2, -6720($fp)
	beq $t1, $t2, label1396
	j label1398
label1398:
	li $t0, 0
	sw $t0, -6724($fp)
	addi $t0, $fp, -220
	sw $t0, -6728($fp)
	lw $t0, -1188($fp)
	sw $t0, -6732($fp)
	li $t0, 4
	lw $t1, -6732($fp)
	mul $t0, $t0, $t1
	sw $t0, -6736($fp)
	lw $t0, -6736($fp)
	lw $t1, -6728($fp)
	add $t0, $t0, $t1
	sw $t0, -6740($fp)
	lw $t0, -6740($fp)
	lw $t1, 0($t0)
	sw $t1, -6744($fp)
	lw $t1, -6744($fp)
	li $t2, 0
	bne $t1, $t2, label1405
	j label1404
label1404:
	li $t0, 1
	sw $t0, -6724($fp)
label1405:
	lw $t0, -2064($fp)
	sw $t0, -6748($fp)
	lw $t0, -6724($fp)
	lw $t1, -6748($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6752($fp)
	lw $t1, -6752($fp)
	li $t2, 0
	bne $t1, $t2, label1396
	j label1397
label1396:
	li $t0, 1
	sw $t0, -6620($fp)
label1397:
	li $t0, 0
	sw $t0, -6756($fp)
	li $t0, 0
	sw $t0, -6760($fp)
	li $t0, 53682
	sw $t0, -6764($fp)
	li $t0, 30983
	sw $t0, -6768($fp)
	lw $t1, -6764($fp)
	lw $t2, -6768($fp)
	blt $t1, $t2, label1408
	j label1409
label1408:
	li $t0, 1
	sw $t0, -6760($fp)
label1409:
	li $t0, 0
	sw $t0, -6772($fp)
	lw $t0, -2076($fp)
	sw $t0, -6776($fp)
	lw $t0, -1836($fp)
	sw $t0, -6780($fp)
	lw $t1, -6776($fp)
	lw $t2, -6780($fp)
	ble $t1, $t2, label1412
	j label1411
label1412:
	li $t0, 40998
	sw $t0, -6784($fp)
	lw $t1, -6784($fp)
	li $t2, 0
	bne $t1, $t2, label1410
	j label1411
label1410:
	li $t0, 1
	sw $t0, -6772($fp)
label1411:
	li $t0, 22632
	sw $t0, -6788($fp)
	lw $t0, -972($fp)
	sw $t0, -6792($fp)
	lw $t0, -6792($fp)
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	sw $t0, -6796($fp)
	li $t0, 31913
	sw $t0, -6800($fp)
	lw $t0, -6800($fp)
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	sw $t0, -6804($fp)
	addi $sp, $sp, -4
	lw $t0, -6760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6804($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -6808($fp)
	addi $sp, $sp, 24
	li $t0, 23160
	sw $t0, -6812($fp)
	li $t0, 0
	sw $t0, -6816($fp)
	lw $t0, -1440($fp)
	sw $t0, -6820($fp)
	lw $t1, -6820($fp)
	li $t2, 0
	bne $t1, $t2, label1414
	j label1413
label1413:
	li $t0, 1
	sw $t0, -6816($fp)
label1414:
	lw $t0, -6812($fp)
	lw $t1, -6816($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6824($fp)
	lw $t1, -6808($fp)
	lw $t2, -6824($fp)
	beq $t1, $t2, label1406
	j label1407
label1406:
	li $t0, 1
	sw $t0, -6756($fp)
label1407:
	addi $t0, $fp, -32
	sw $t0, -6828($fp)
	li $t0, 0
	sw $t0, -6832($fp)
	li $t0, 4
	lw $t1, -6832($fp)
	mul $t0, $t0, $t1
	sw $t0, -6836($fp)
	lw $t0, -6836($fp)
	lw $t1, -6828($fp)
	add $t0, $t0, $t1
	sw $t0, -6840($fp)
	lw $t0, -6840($fp)
	lw $t1, 0($t0)
	sw $t1, -6844($fp)
	lw $t0, -6844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -6848($fp)
	li $t0, 1
	sw $t0, -6852($fp)
	li $t0, 4
	lw $t1, -6852($fp)
	mul $t0, $t0, $t1
	sw $t0, -6856($fp)
	lw $t0, -6856($fp)
	lw $t1, -6848($fp)
	add $t0, $t0, $t1
	sw $t0, -6860($fp)
	lw $t0, -6860($fp)
	lw $t1, 0($t0)
	sw $t1, -6864($fp)
	lw $t0, -6864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -6868($fp)
	li $t0, 2
	sw $t0, -6872($fp)
	li $t0, 4
	lw $t1, -6872($fp)
	mul $t0, $t0, $t1
	sw $t0, -6876($fp)
	lw $t0, -6876($fp)
	lw $t1, -6868($fp)
	add $t0, $t0, $t1
	sw $t0, -6880($fp)
	lw $t0, -6880($fp)
	lw $t1, 0($t0)
	sw $t1, -6884($fp)
	lw $t0, -6884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -6888($fp)
	li $t0, 3
	sw $t0, -6892($fp)
	li $t0, 4
	lw $t1, -6892($fp)
	mul $t0, $t0, $t1
	sw $t0, -6896($fp)
	lw $t0, -6896($fp)
	lw $t1, -6888($fp)
	add $t0, $t0, $t1
	sw $t0, -6900($fp)
	lw $t0, -6900($fp)
	lw $t1, 0($t0)
	sw $t1, -6904($fp)
	lw $t0, -6904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -6908($fp)
	li $t0, 4
	sw $t0, -6912($fp)
	li $t0, 4
	lw $t1, -6912($fp)
	mul $t0, $t0, $t1
	sw $t0, -6916($fp)
	lw $t0, -6916($fp)
	lw $t1, -6908($fp)
	add $t0, $t0, $t1
	sw $t0, -6920($fp)
	lw $t0, -6920($fp)
	lw $t1, 0($t0)
	sw $t1, -6924($fp)
	lw $t0, -6924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -6928($fp)
	li $t0, 5
	sw $t0, -6932($fp)
	li $t0, 4
	lw $t1, -6932($fp)
	mul $t0, $t0, $t1
	sw $t0, -6936($fp)
	lw $t0, -6936($fp)
	lw $t1, -6928($fp)
	add $t0, $t0, $t1
	sw $t0, -6940($fp)
	lw $t0, -6940($fp)
	lw $t1, 0($t0)
	sw $t1, -6944($fp)
	lw $t0, -6944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -6948($fp)
	li $t0, 6
	sw $t0, -6952($fp)
	li $t0, 4
	lw $t1, -6952($fp)
	mul $t0, $t0, $t1
	sw $t0, -6956($fp)
	lw $t0, -6956($fp)
	lw $t1, -6948($fp)
	add $t0, $t0, $t1
	sw $t0, -6960($fp)
	lw $t0, -6960($fp)
	lw $t1, 0($t0)
	sw $t1, -6964($fp)
	lw $t0, -6964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -396($fp)
	sw $t0, -6968($fp)
	lw $t0, -6968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -408($fp)
	sw $t0, -6972($fp)
	lw $t0, -6972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -420($fp)
	sw $t0, -6976($fp)
	lw $t0, -6976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -432($fp)
	sw $t0, -6980($fp)
	lw $t0, -6980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -444($fp)
	sw $t0, -6984($fp)
	lw $t0, -6984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -456($fp)
	sw $t0, -6988($fp)
	lw $t0, -6988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -6992($fp)
	lw $t0, -6992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -6996($fp)
	lw $t0, -6996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -7000($fp)
	lw $t0, -7000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -7004($fp)
	lw $t0, -7004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -516($fp)
	sw $t0, -7008($fp)
	lw $t0, -7008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -7012($fp)
	lw $t0, -7012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -540($fp)
	sw $t0, -7016($fp)
	lw $t0, -7016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -552($fp)
	sw $t0, -7020($fp)
	lw $t0, -7020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -7024($fp)
	li $t0, 0
	sw $t0, -7028($fp)
	li $t0, 4
	lw $t1, -7028($fp)
	mul $t0, $t0, $t1
	sw $t0, -7032($fp)
	lw $t0, -7032($fp)
	lw $t1, -7024($fp)
	add $t0, $t0, $t1
	sw $t0, -7036($fp)
	lw $t0, -7036($fp)
	lw $t1, 0($t0)
	sw $t1, -7040($fp)
	lw $t0, -7040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -7044($fp)
	li $t0, 1
	sw $t0, -7048($fp)
	li $t0, 4
	lw $t1, -7048($fp)
	mul $t0, $t0, $t1
	sw $t0, -7052($fp)
	lw $t0, -7052($fp)
	lw $t1, -7044($fp)
	add $t0, $t0, $t1
	sw $t0, -7056($fp)
	lw $t0, -7056($fp)
	lw $t1, 0($t0)
	sw $t1, -7060($fp)
	lw $t0, -7060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -7064($fp)
	li $t0, 2
	sw $t0, -7068($fp)
	li $t0, 4
	lw $t1, -7068($fp)
	mul $t0, $t0, $t1
	sw $t0, -7072($fp)
	lw $t0, -7072($fp)
	lw $t1, -7064($fp)
	add $t0, $t0, $t1
	sw $t0, -7076($fp)
	lw $t0, -7076($fp)
	lw $t1, 0($t0)
	sw $t1, -7080($fp)
	lw $t0, -7080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -7084($fp)
	li $t0, 3
	sw $t0, -7088($fp)
	li $t0, 4
	lw $t1, -7088($fp)
	mul $t0, $t0, $t1
	sw $t0, -7092($fp)
	lw $t0, -7092($fp)
	lw $t1, -7084($fp)
	add $t0, $t0, $t1
	sw $t0, -7096($fp)
	lw $t0, -7096($fp)
	lw $t1, 0($t0)
	sw $t1, -7100($fp)
	lw $t0, -7100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -7104($fp)
	li $t0, 4
	sw $t0, -7108($fp)
	li $t0, 4
	lw $t1, -7108($fp)
	mul $t0, $t0, $t1
	sw $t0, -7112($fp)
	lw $t0, -7112($fp)
	lw $t1, -7104($fp)
	add $t0, $t0, $t1
	sw $t0, -7116($fp)
	lw $t0, -7116($fp)
	lw $t1, 0($t0)
	sw $t1, -7120($fp)
	lw $t0, -7120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -7124($fp)
	li $t0, 5
	sw $t0, -7128($fp)
	li $t0, 4
	lw $t1, -7128($fp)
	mul $t0, $t0, $t1
	sw $t0, -7132($fp)
	lw $t0, -7132($fp)
	lw $t1, -7124($fp)
	add $t0, $t0, $t1
	sw $t0, -7136($fp)
	lw $t0, -7136($fp)
	lw $t1, 0($t0)
	sw $t1, -7140($fp)
	lw $t0, -7140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -7144($fp)
	li $t0, 6
	sw $t0, -7148($fp)
	li $t0, 4
	lw $t1, -7148($fp)
	mul $t0, $t0, $t1
	sw $t0, -7152($fp)
	lw $t0, -7152($fp)
	lw $t1, -7144($fp)
	add $t0, $t0, $t1
	sw $t0, -7156($fp)
	lw $t0, -7156($fp)
	lw $t1, 0($t0)
	sw $t1, -7160($fp)
	lw $t0, -7160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -7164($fp)
	li $t0, 7
	sw $t0, -7168($fp)
	li $t0, 4
	lw $t1, -7168($fp)
	mul $t0, $t0, $t1
	sw $t0, -7172($fp)
	lw $t0, -7172($fp)
	lw $t1, -7164($fp)
	add $t0, $t0, $t1
	sw $t0, -7176($fp)
	lw $t0, -7176($fp)
	lw $t1, 0($t0)
	sw $t1, -7180($fp)
	lw $t0, -7180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -7184($fp)
	li $t0, 8
	sw $t0, -7188($fp)
	li $t0, 4
	lw $t1, -7188($fp)
	mul $t0, $t0, $t1
	sw $t0, -7192($fp)
	lw $t0, -7192($fp)
	lw $t1, -7184($fp)
	add $t0, $t0, $t1
	sw $t0, -7196($fp)
	lw $t0, -7196($fp)
	lw $t1, 0($t0)
	sw $t1, -7200($fp)
	lw $t0, -7200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -7204($fp)
	li $t0, 0
	sw $t0, -7208($fp)
	li $t0, 4
	lw $t1, -7208($fp)
	mul $t0, $t0, $t1
	sw $t0, -7212($fp)
	lw $t0, -7212($fp)
	lw $t1, -7204($fp)
	add $t0, $t0, $t1
	sw $t0, -7216($fp)
	lw $t0, -7216($fp)
	lw $t1, 0($t0)
	sw $t1, -7220($fp)
	lw $t0, -7220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -7224($fp)
	li $t0, 1
	sw $t0, -7228($fp)
	li $t0, 4
	lw $t1, -7228($fp)
	mul $t0, $t0, $t1
	sw $t0, -7232($fp)
	lw $t0, -7232($fp)
	lw $t1, -7224($fp)
	add $t0, $t0, $t1
	sw $t0, -7236($fp)
	lw $t0, -7236($fp)
	lw $t1, 0($t0)
	sw $t1, -7240($fp)
	lw $t0, -7240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -7244($fp)
	li $t0, 2
	sw $t0, -7248($fp)
	li $t0, 4
	lw $t1, -7248($fp)
	mul $t0, $t0, $t1
	sw $t0, -7252($fp)
	lw $t0, -7252($fp)
	lw $t1, -7244($fp)
	add $t0, $t0, $t1
	sw $t0, -7256($fp)
	lw $t0, -7256($fp)
	lw $t1, 0($t0)
	sw $t1, -7260($fp)
	lw $t0, -7260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -7264($fp)
	li $t0, 3
	sw $t0, -7268($fp)
	li $t0, 4
	lw $t1, -7268($fp)
	mul $t0, $t0, $t1
	sw $t0, -7272($fp)
	lw $t0, -7272($fp)
	lw $t1, -7264($fp)
	add $t0, $t0, $t1
	sw $t0, -7276($fp)
	lw $t0, -7276($fp)
	lw $t1, 0($t0)
	sw $t1, -7280($fp)
	lw $t0, -7280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -7284($fp)
	li $t0, 4
	sw $t0, -7288($fp)
	li $t0, 4
	lw $t1, -7288($fp)
	mul $t0, $t0, $t1
	sw $t0, -7292($fp)
	lw $t0, -7292($fp)
	lw $t1, -7284($fp)
	add $t0, $t0, $t1
	sw $t0, -7296($fp)
	lw $t0, -7296($fp)
	lw $t1, 0($t0)
	sw $t1, -7300($fp)
	lw $t0, -7300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -7304($fp)
	li $t0, 5
	sw $t0, -7308($fp)
	li $t0, 4
	lw $t1, -7308($fp)
	mul $t0, $t0, $t1
	sw $t0, -7312($fp)
	lw $t0, -7312($fp)
	lw $t1, -7304($fp)
	add $t0, $t0, $t1
	sw $t0, -7316($fp)
	lw $t0, -7316($fp)
	lw $t1, 0($t0)
	sw $t1, -7320($fp)
	lw $t0, -7320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -924($fp)
	sw $t0, -7324($fp)
	lw $t0, -7324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -936($fp)
	sw $t0, -7328($fp)
	lw $t0, -7328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -948($fp)
	sw $t0, -7332($fp)
	lw $t0, -7332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -960($fp)
	sw $t0, -7336($fp)
	lw $t0, -7336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -972($fp)
	sw $t0, -7340($fp)
	lw $t0, -7340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -984($fp)
	sw $t0, -7344($fp)
	lw $t0, -7344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -7348($fp)
	li $t0, 0
	sw $t0, -7352($fp)
	li $t0, 4
	lw $t1, -7352($fp)
	mul $t0, $t0, $t1
	sw $t0, -7356($fp)
	lw $t0, -7356($fp)
	lw $t1, -7348($fp)
	add $t0, $t0, $t1
	sw $t0, -7360($fp)
	lw $t0, -7360($fp)
	lw $t1, 0($t0)
	sw $t1, -7364($fp)
	lw $t0, -7364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -7368($fp)
	li $t0, 1
	sw $t0, -7372($fp)
	li $t0, 4
	lw $t1, -7372($fp)
	mul $t0, $t0, $t1
	sw $t0, -7376($fp)
	lw $t0, -7376($fp)
	lw $t1, -7368($fp)
	add $t0, $t0, $t1
	sw $t0, -7380($fp)
	lw $t0, -7380($fp)
	lw $t1, 0($t0)
	sw $t1, -7384($fp)
	lw $t0, -7384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -7388($fp)
	li $t0, 2
	sw $t0, -7392($fp)
	li $t0, 4
	lw $t1, -7392($fp)
	mul $t0, $t0, $t1
	sw $t0, -7396($fp)
	lw $t0, -7396($fp)
	lw $t1, -7388($fp)
	add $t0, $t0, $t1
	sw $t0, -7400($fp)
	lw $t0, -7400($fp)
	lw $t1, 0($t0)
	sw $t1, -7404($fp)
	lw $t0, -7404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -7408($fp)
	li $t0, 3
	sw $t0, -7412($fp)
	li $t0, 4
	lw $t1, -7412($fp)
	mul $t0, $t0, $t1
	sw $t0, -7416($fp)
	lw $t0, -7416($fp)
	lw $t1, -7408($fp)
	add $t0, $t0, $t1
	sw $t0, -7420($fp)
	lw $t0, -7420($fp)
	lw $t1, 0($t0)
	sw $t1, -7424($fp)
	lw $t0, -7424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -7428($fp)
	li $t0, 4
	sw $t0, -7432($fp)
	li $t0, 4
	lw $t1, -7432($fp)
	mul $t0, $t0, $t1
	sw $t0, -7436($fp)
	lw $t0, -7436($fp)
	lw $t1, -7428($fp)
	add $t0, $t0, $t1
	sw $t0, -7440($fp)
	lw $t0, -7440($fp)
	lw $t1, 0($t0)
	sw $t1, -7444($fp)
	lw $t0, -7444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -7448($fp)
	li $t0, 5
	sw $t0, -7452($fp)
	li $t0, 4
	lw $t1, -7452($fp)
	mul $t0, $t0, $t1
	sw $t0, -7456($fp)
	lw $t0, -7456($fp)
	lw $t1, -7448($fp)
	add $t0, $t0, $t1
	sw $t0, -7460($fp)
	lw $t0, -7460($fp)
	lw $t1, 0($t0)
	sw $t1, -7464($fp)
	lw $t0, -7464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1140($fp)
	sw $t0, -7468($fp)
	lw $t0, -7468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1152($fp)
	sw $t0, -7472($fp)
	lw $t0, -7472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1164($fp)
	sw $t0, -7476($fp)
	lw $t0, -7476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1176($fp)
	sw $t0, -7480($fp)
	lw $t0, -7480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1188($fp)
	sw $t0, -7484($fp)
	lw $t0, -7484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -7488($fp)
	li $t0, 0
	sw $t0, -7492($fp)
	li $t0, 4
	lw $t1, -7492($fp)
	mul $t0, $t0, $t1
	sw $t0, -7496($fp)
	lw $t0, -7496($fp)
	lw $t1, -7488($fp)
	add $t0, $t0, $t1
	sw $t0, -7500($fp)
	lw $t0, -7500($fp)
	lw $t1, 0($t0)
	sw $t1, -7504($fp)
	lw $t0, -7504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -7508($fp)
	li $t0, 1
	sw $t0, -7512($fp)
	li $t0, 4
	lw $t1, -7512($fp)
	mul $t0, $t0, $t1
	sw $t0, -7516($fp)
	lw $t0, -7516($fp)
	lw $t1, -7508($fp)
	add $t0, $t0, $t1
	sw $t0, -7520($fp)
	lw $t0, -7520($fp)
	lw $t1, 0($t0)
	sw $t1, -7524($fp)
	lw $t0, -7524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1248($fp)
	sw $t0, -7528($fp)
	lw $t0, -7528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1260($fp)
	sw $t0, -7532($fp)
	lw $t0, -7532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1272($fp)
	sw $t0, -7536($fp)
	lw $t0, -7536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1284($fp)
	sw $t0, -7540($fp)
	lw $t0, -7540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -7544($fp)
	li $t0, 0
	sw $t0, -7548($fp)
	li $t0, 4
	lw $t1, -7548($fp)
	mul $t0, $t0, $t1
	sw $t0, -7552($fp)
	lw $t0, -7552($fp)
	lw $t1, -7544($fp)
	add $t0, $t0, $t1
	sw $t0, -7556($fp)
	lw $t0, -7556($fp)
	lw $t1, 0($t0)
	sw $t1, -7560($fp)
	lw $t0, -7560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -7564($fp)
	li $t0, 1
	sw $t0, -7568($fp)
	li $t0, 4
	lw $t1, -7568($fp)
	mul $t0, $t0, $t1
	sw $t0, -7572($fp)
	lw $t0, -7572($fp)
	lw $t1, -7564($fp)
	add $t0, $t0, $t1
	sw $t0, -7576($fp)
	lw $t0, -7576($fp)
	lw $t1, 0($t0)
	sw $t1, -7580($fp)
	lw $t0, -7580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -7584($fp)
	li $t0, 2
	sw $t0, -7588($fp)
	li $t0, 4
	lw $t1, -7588($fp)
	mul $t0, $t0, $t1
	sw $t0, -7592($fp)
	lw $t0, -7592($fp)
	lw $t1, -7584($fp)
	add $t0, $t0, $t1
	sw $t0, -7596($fp)
	lw $t0, -7596($fp)
	lw $t1, 0($t0)
	sw $t1, -7600($fp)
	lw $t0, -7600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -7604($fp)
	li $t0, 3
	sw $t0, -7608($fp)
	li $t0, 4
	lw $t1, -7608($fp)
	mul $t0, $t0, $t1
	sw $t0, -7612($fp)
	lw $t0, -7612($fp)
	lw $t1, -7604($fp)
	add $t0, $t0, $t1
	sw $t0, -7616($fp)
	lw $t0, -7616($fp)
	lw $t1, 0($t0)
	sw $t1, -7620($fp)
	lw $t0, -7620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -7624($fp)
	li $t0, 4
	sw $t0, -7628($fp)
	li $t0, 4
	lw $t1, -7628($fp)
	mul $t0, $t0, $t1
	sw $t0, -7632($fp)
	lw $t0, -7632($fp)
	lw $t1, -7624($fp)
	add $t0, $t0, $t1
	sw $t0, -7636($fp)
	lw $t0, -7636($fp)
	lw $t1, 0($t0)
	sw $t1, -7640($fp)
	lw $t0, -7640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -7644($fp)
	li $t0, 5
	sw $t0, -7648($fp)
	li $t0, 4
	lw $t1, -7648($fp)
	mul $t0, $t0, $t1
	sw $t0, -7652($fp)
	lw $t0, -7652($fp)
	lw $t1, -7644($fp)
	add $t0, $t0, $t1
	sw $t0, -7656($fp)
	lw $t0, -7656($fp)
	lw $t1, 0($t0)
	sw $t1, -7660($fp)
	lw $t0, -7660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1440($fp)
	sw $t0, -7664($fp)
	lw $t0, -7664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -184
	sw $t0, -7668($fp)
	li $t0, 0
	sw $t0, -7672($fp)
	li $t0, 4
	lw $t1, -7672($fp)
	mul $t0, $t0, $t1
	sw $t0, -7676($fp)
	lw $t0, -7676($fp)
	lw $t1, -7668($fp)
	add $t0, $t0, $t1
	sw $t0, -7680($fp)
	lw $t0, -7680($fp)
	lw $t1, 0($t0)
	sw $t1, -7684($fp)
	lw $t0, -7684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -184
	sw $t0, -7688($fp)
	li $t0, 1
	sw $t0, -7692($fp)
	li $t0, 4
	lw $t1, -7692($fp)
	mul $t0, $t0, $t1
	sw $t0, -7696($fp)
	lw $t0, -7696($fp)
	lw $t1, -7688($fp)
	add $t0, $t0, $t1
	sw $t0, -7700($fp)
	lw $t0, -7700($fp)
	lw $t1, 0($t0)
	sw $t1, -7704($fp)
	lw $t0, -7704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -184
	sw $t0, -7708($fp)
	li $t0, 2
	sw $t0, -7712($fp)
	li $t0, 4
	lw $t1, -7712($fp)
	mul $t0, $t0, $t1
	sw $t0, -7716($fp)
	lw $t0, -7716($fp)
	lw $t1, -7708($fp)
	add $t0, $t0, $t1
	sw $t0, -7720($fp)
	lw $t0, -7720($fp)
	lw $t1, 0($t0)
	sw $t1, -7724($fp)
	lw $t0, -7724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -184
	sw $t0, -7728($fp)
	li $t0, 3
	sw $t0, -7732($fp)
	li $t0, 4
	lw $t1, -7732($fp)
	mul $t0, $t0, $t1
	sw $t0, -7736($fp)
	lw $t0, -7736($fp)
	lw $t1, -7728($fp)
	add $t0, $t0, $t1
	sw $t0, -7740($fp)
	lw $t0, -7740($fp)
	lw $t1, 0($t0)
	sw $t1, -7744($fp)
	lw $t0, -7744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -184
	sw $t0, -7748($fp)
	li $t0, 4
	sw $t0, -7752($fp)
	li $t0, 4
	lw $t1, -7752($fp)
	mul $t0, $t0, $t1
	sw $t0, -7756($fp)
	lw $t0, -7756($fp)
	lw $t1, -7748($fp)
	add $t0, $t0, $t1
	sw $t0, -7760($fp)
	lw $t0, -7760($fp)
	lw $t1, 0($t0)
	sw $t1, -7764($fp)
	lw $t0, -7764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -184
	sw $t0, -7768($fp)
	li $t0, 5
	sw $t0, -7772($fp)
	li $t0, 4
	lw $t1, -7772($fp)
	mul $t0, $t0, $t1
	sw $t0, -7776($fp)
	lw $t0, -7776($fp)
	lw $t1, -7768($fp)
	add $t0, $t0, $t1
	sw $t0, -7780($fp)
	lw $t0, -7780($fp)
	lw $t1, 0($t0)
	sw $t1, -7784($fp)
	lw $t0, -7784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -184
	sw $t0, -7788($fp)
	li $t0, 6
	sw $t0, -7792($fp)
	li $t0, 4
	lw $t1, -7792($fp)
	mul $t0, $t0, $t1
	sw $t0, -7796($fp)
	lw $t0, -7796($fp)
	lw $t1, -7788($fp)
	add $t0, $t0, $t1
	sw $t0, -7800($fp)
	lw $t0, -7800($fp)
	lw $t1, 0($t0)
	sw $t1, -7804($fp)
	lw $t0, -7804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -184
	sw $t0, -7808($fp)
	li $t0, 7
	sw $t0, -7812($fp)
	li $t0, 4
	lw $t1, -7812($fp)
	mul $t0, $t0, $t1
	sw $t0, -7816($fp)
	lw $t0, -7816($fp)
	lw $t1, -7808($fp)
	add $t0, $t0, $t1
	sw $t0, -7820($fp)
	lw $t0, -7820($fp)
	lw $t1, 0($t0)
	sw $t1, -7824($fp)
	lw $t0, -7824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -184
	sw $t0, -7828($fp)
	li $t0, 8
	sw $t0, -7832($fp)
	li $t0, 4
	lw $t1, -7832($fp)
	mul $t0, $t0, $t1
	sw $t0, -7836($fp)
	lw $t0, -7836($fp)
	lw $t1, -7828($fp)
	add $t0, $t0, $t1
	sw $t0, -7840($fp)
	lw $t0, -7840($fp)
	lw $t1, 0($t0)
	sw $t1, -7844($fp)
	lw $t0, -7844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1668($fp)
	sw $t0, -7848($fp)
	lw $t0, -7848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1680($fp)
	sw $t0, -7852($fp)
	lw $t0, -7852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1692($fp)
	sw $t0, -7856($fp)
	lw $t0, -7856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1704($fp)
	sw $t0, -7860($fp)
	lw $t0, -7860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1716($fp)
	sw $t0, -7864($fp)
	lw $t0, -7864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1728($fp)
	sw $t0, -7868($fp)
	lw $t0, -7868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1740($fp)
	sw $t0, -7872($fp)
	lw $t0, -7872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1752($fp)
	sw $t0, -7876($fp)
	lw $t0, -7876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1764($fp)
	sw $t0, -7880($fp)
	lw $t0, -7880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1776($fp)
	sw $t0, -7884($fp)
	lw $t0, -7884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1788($fp)
	sw $t0, -7888($fp)
	lw $t0, -7888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1800($fp)
	sw $t0, -7892($fp)
	lw $t0, -7892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1812($fp)
	sw $t0, -7896($fp)
	lw $t0, -7896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1824($fp)
	sw $t0, -7900($fp)
	lw $t0, -7900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1836($fp)
	sw $t0, -7904($fp)
	lw $t0, -7904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -7908($fp)
	li $t0, 0
	sw $t0, -7912($fp)
	li $t0, 4
	lw $t1, -7912($fp)
	mul $t0, $t0, $t1
	sw $t0, -7916($fp)
	lw $t0, -7916($fp)
	lw $t1, -7908($fp)
	add $t0, $t0, $t1
	sw $t0, -7920($fp)
	lw $t0, -7920($fp)
	lw $t1, 0($t0)
	sw $t1, -7924($fp)
	lw $t0, -7924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -7928($fp)
	li $t0, 1
	sw $t0, -7932($fp)
	li $t0, 4
	lw $t1, -7932($fp)
	mul $t0, $t0, $t1
	sw $t0, -7936($fp)
	lw $t0, -7936($fp)
	lw $t1, -7928($fp)
	add $t0, $t0, $t1
	sw $t0, -7940($fp)
	lw $t0, -7940($fp)
	lw $t1, 0($t0)
	sw $t1, -7944($fp)
	lw $t0, -7944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -7948($fp)
	li $t0, 2
	sw $t0, -7952($fp)
	li $t0, 4
	lw $t1, -7952($fp)
	mul $t0, $t0, $t1
	sw $t0, -7956($fp)
	lw $t0, -7956($fp)
	lw $t1, -7948($fp)
	add $t0, $t0, $t1
	sw $t0, -7960($fp)
	lw $t0, -7960($fp)
	lw $t1, 0($t0)
	sw $t1, -7964($fp)
	lw $t0, -7964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -7968($fp)
	li $t0, 3
	sw $t0, -7972($fp)
	li $t0, 4
	lw $t1, -7972($fp)
	mul $t0, $t0, $t1
	sw $t0, -7976($fp)
	lw $t0, -7976($fp)
	lw $t1, -7968($fp)
	add $t0, $t0, $t1
	sw $t0, -7980($fp)
	lw $t0, -7980($fp)
	lw $t1, 0($t0)
	sw $t1, -7984($fp)
	lw $t0, -7984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -7988($fp)
	li $t0, 4
	sw $t0, -7992($fp)
	li $t0, 4
	lw $t1, -7992($fp)
	mul $t0, $t0, $t1
	sw $t0, -7996($fp)
	lw $t0, -7996($fp)
	lw $t1, -7988($fp)
	add $t0, $t0, $t1
	sw $t0, -8000($fp)
	lw $t0, -8000($fp)
	lw $t1, 0($t0)
	sw $t1, -8004($fp)
	lw $t0, -8004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -8008($fp)
	li $t0, 5
	sw $t0, -8012($fp)
	li $t0, 4
	lw $t1, -8012($fp)
	mul $t0, $t0, $t1
	sw $t0, -8016($fp)
	lw $t0, -8016($fp)
	lw $t1, -8008($fp)
	add $t0, $t0, $t1
	sw $t0, -8020($fp)
	lw $t0, -8020($fp)
	lw $t1, 0($t0)
	sw $t1, -8024($fp)
	lw $t0, -8024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -8028($fp)
	li $t0, 6
	sw $t0, -8032($fp)
	li $t0, 4
	lw $t1, -8032($fp)
	mul $t0, $t0, $t1
	sw $t0, -8036($fp)
	lw $t0, -8036($fp)
	lw $t1, -8028($fp)
	add $t0, $t0, $t1
	sw $t0, -8040($fp)
	lw $t0, -8040($fp)
	lw $t1, 0($t0)
	sw $t1, -8044($fp)
	lw $t0, -8044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -8048($fp)
	li $t0, 7
	sw $t0, -8052($fp)
	li $t0, 4
	lw $t1, -8052($fp)
	mul $t0, $t0, $t1
	sw $t0, -8056($fp)
	lw $t0, -8056($fp)
	lw $t1, -8048($fp)
	add $t0, $t0, $t1
	sw $t0, -8060($fp)
	lw $t0, -8060($fp)
	lw $t1, 0($t0)
	sw $t1, -8064($fp)
	lw $t0, -8064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -8068($fp)
	li $t0, 8
	sw $t0, -8072($fp)
	li $t0, 4
	lw $t1, -8072($fp)
	mul $t0, $t0, $t1
	sw $t0, -8076($fp)
	lw $t0, -8076($fp)
	lw $t1, -8068($fp)
	add $t0, $t0, $t1
	sw $t0, -8080($fp)
	lw $t0, -8080($fp)
	lw $t1, 0($t0)
	sw $t1, -8084($fp)
	lw $t0, -8084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2064($fp)
	sw $t0, -8088($fp)
	lw $t0, -8088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2076($fp)
	sw $t0, -8092($fp)
	lw $t0, -8092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	jal f8
	sw $v0, -8096($fp)
	addi $sp, $sp, 4
	lw $ra, -4($fp)
	lw $v0, -8096($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -52
	li $t0, 12706
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 0
	sw $t0, -20($fp)
	lw $t0, -12($fp)
	sw $t0, -24($fp)
	lw $t1, -24($fp)
	li $t2, 0
	bne $t1, $t2, label1415
	j label1417
label1417:
	lw $t0, -12($fp)
	sw $t0, -28($fp)
	lw $t1, -28($fp)
	li $t2, 0
	bne $t1, $t2, label1415
	j label1416
label1415:
	li $t0, 1
	sw $t0, -20($fp)
label1416:
	li $t0, 0
	sw $t0, -32($fp)
	li $t0, 61899
	sw $t0, -36($fp)
	li $t0, 15951
	sw $t0, -40($fp)
	lw $t1, -36($fp)
	lw $t2, -40($fp)
	bge $t1, $t2, label1418
	j label1419
label1418:
	li $t0, 1
	sw $t0, -32($fp)
label1419:
	li $t0, 6527
	sw $t0, -44($fp)
	addi $sp, $sp, -4
	lw $t0, -20($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -44($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -48($fp)
	addi $sp, $sp, 16
	lw $t0, -12($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 41379
	sw $t0, -56($fp)
	lw $ra, -4($fp)
	lw $v0, -56($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
main:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -8
	jal f10
	sw $v0, -8($fp)
	addi $sp, $sp, 4
	lw $t0, -8($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -12($fp)
	lw $ra, -4($fp)
	lw $v0, -12($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
