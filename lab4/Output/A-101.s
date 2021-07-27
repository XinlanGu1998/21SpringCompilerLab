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
	addi $sp, $sp, -9504
	li $t0, 9807
	sw $t0, -192($fp)
	addi $t0, $fp, -32
	sw $t0, -196($fp)
	li $t0, 0
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -204($fp)
	lw $t0, -196($fp)
	lw $t1, -204($fp)
	add $t0, $t0, $t1
	sw $t0, -208($fp)
	lw $t0, -192($fp)
	lw $t1, -208($fp)
	sw $t0, 0($t1)
	lw $t0, -208($fp)
	lw $t1, 0($t0)
	sw $t1, -212($fp)
	li $t0, 7474
	sw $t0, -216($fp)
	addi $t0, $fp, -32
	sw $t0, -220($fp)
	li $t0, 1
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -228($fp)
	lw $t0, -220($fp)
	lw $t1, -228($fp)
	add $t0, $t0, $t1
	sw $t0, -232($fp)
	lw $t0, -216($fp)
	lw $t1, -232($fp)
	sw $t0, 0($t1)
	lw $t0, -232($fp)
	lw $t1, 0($t0)
	sw $t1, -236($fp)
	li $t0, 28097
	sw $t0, -240($fp)
	addi $t0, $fp, -32
	sw $t0, -244($fp)
	li $t0, 2
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -252($fp)
	lw $t0, -244($fp)
	lw $t1, -252($fp)
	add $t0, $t0, $t1
	sw $t0, -256($fp)
	lw $t0, -240($fp)
	lw $t1, -256($fp)
	sw $t0, 0($t1)
	lw $t0, -256($fp)
	lw $t1, 0($t0)
	sw $t1, -260($fp)
	li $t0, 13480
	sw $t0, -264($fp)
	addi $t0, $fp, -32
	sw $t0, -268($fp)
	li $t0, 3
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -276($fp)
	lw $t0, -268($fp)
	lw $t1, -276($fp)
	add $t0, $t0, $t1
	sw $t0, -280($fp)
	lw $t0, -264($fp)
	lw $t1, -280($fp)
	sw $t0, 0($t1)
	lw $t0, -280($fp)
	lw $t1, 0($t0)
	sw $t1, -284($fp)
	li $t0, 35238
	sw $t0, -288($fp)
	addi $t0, $fp, -32
	sw $t0, -292($fp)
	li $t0, 4
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -300($fp)
	lw $t0, -292($fp)
	lw $t1, -300($fp)
	add $t0, $t0, $t1
	sw $t0, -304($fp)
	lw $t0, -288($fp)
	lw $t1, -304($fp)
	sw $t0, 0($t1)
	lw $t0, -304($fp)
	lw $t1, 0($t0)
	sw $t1, -308($fp)
	li $t0, 49664
	sw $t0, -312($fp)
	addi $t0, $fp, -32
	sw $t0, -316($fp)
	li $t0, 5
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -324($fp)
	lw $t0, -316($fp)
	lw $t1, -324($fp)
	add $t0, $t0, $t1
	sw $t0, -328($fp)
	lw $t0, -312($fp)
	lw $t1, -328($fp)
	sw $t0, 0($t1)
	lw $t0, -328($fp)
	lw $t1, 0($t0)
	sw $t1, -332($fp)
	li $t0, 37849
	sw $t0, -336($fp)
	addi $t0, $fp, -32
	sw $t0, -340($fp)
	li $t0, 6
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -348($fp)
	lw $t0, -340($fp)
	lw $t1, -348($fp)
	add $t0, $t0, $t1
	sw $t0, -352($fp)
	lw $t0, -336($fp)
	lw $t1, -352($fp)
	sw $t0, 0($t1)
	lw $t0, -352($fp)
	lw $t1, 0($t0)
	sw $t1, -356($fp)
	li $t0, 45197
	sw $t0, -360($fp)
	addi $t0, $fp, -68
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
	li $t0, 46487
	sw $t0, -384($fp)
	addi $t0, $fp, -68
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
	li $t0, 23139
	sw $t0, -408($fp)
	addi $t0, $fp, -68
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
	li $t0, 54288
	sw $t0, -432($fp)
	addi $t0, $fp, -68
	sw $t0, -436($fp)
	li $t0, 3
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
	li $t0, 14414
	sw $t0, -456($fp)
	addi $t0, $fp, -68
	sw $t0, -460($fp)
	li $t0, 4
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -468($fp)
	lw $t0, -460($fp)
	lw $t1, -468($fp)
	add $t0, $t0, $t1
	sw $t0, -472($fp)
	lw $t0, -456($fp)
	lw $t1, -472($fp)
	sw $t0, 0($t1)
	lw $t0, -472($fp)
	lw $t1, 0($t0)
	sw $t1, -476($fp)
	li $t0, 50353
	sw $t0, -480($fp)
	addi $t0, $fp, -68
	sw $t0, -484($fp)
	li $t0, 5
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -492($fp)
	lw $t0, -484($fp)
	lw $t1, -492($fp)
	add $t0, $t0, $t1
	sw $t0, -496($fp)
	lw $t0, -480($fp)
	lw $t1, -496($fp)
	sw $t0, 0($t1)
	lw $t0, -496($fp)
	lw $t1, 0($t0)
	sw $t1, -500($fp)
	li $t0, 39844
	sw $t0, -504($fp)
	addi $t0, $fp, -68
	sw $t0, -508($fp)
	li $t0, 6
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -516($fp)
	lw $t0, -508($fp)
	lw $t1, -516($fp)
	add $t0, $t0, $t1
	sw $t0, -520($fp)
	lw $t0, -504($fp)
	lw $t1, -520($fp)
	sw $t0, 0($t1)
	lw $t0, -520($fp)
	lw $t1, 0($t0)
	sw $t1, -524($fp)
	li $t0, 5707
	sw $t0, -528($fp)
	addi $t0, $fp, -68
	sw $t0, -532($fp)
	li $t0, 7
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
	li $t0, 32780
	sw $t0, -552($fp)
	addi $t0, $fp, -68
	sw $t0, -556($fp)
	li $t0, 8
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
	li $t0, 48147
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	li $t0, 32246
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -596($fp)
	li $t0, 10445
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -608($fp)
	li $t0, 22219
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	sw $t0, -620($fp)
	li $t0, 61240
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -632($fp)
	li $t0, 64426
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	li $t0, 3326
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -656($fp)
	li $t0, 63291
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -668($fp)
	li $t0, 3125
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	li $t0, 54821
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -692($fp)
	li $t0, 32071
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	li $t0, 63300
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	li $t0, 59528
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -728($fp)
	li $t0, 2954
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -740($fp)
	li $t0, 5979
	sw $t0, -744($fp)
	addi $t0, $fp, -108
	sw $t0, -748($fp)
	li $t0, 0
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
	li $t0, 3799
	sw $t0, -768($fp)
	addi $t0, $fp, -108
	sw $t0, -772($fp)
	li $t0, 1
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
	li $t0, 10428
	sw $t0, -792($fp)
	addi $t0, $fp, -108
	sw $t0, -796($fp)
	li $t0, 2
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -804($fp)
	lw $t0, -796($fp)
	lw $t1, -804($fp)
	add $t0, $t0, $t1
	sw $t0, -808($fp)
	lw $t0, -792($fp)
	lw $t1, -808($fp)
	sw $t0, 0($t1)
	lw $t0, -808($fp)
	lw $t1, 0($t0)
	sw $t1, -812($fp)
	li $t0, 34076
	sw $t0, -816($fp)
	addi $t0, $fp, -108
	sw $t0, -820($fp)
	li $t0, 3
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -828($fp)
	lw $t0, -820($fp)
	lw $t1, -828($fp)
	add $t0, $t0, $t1
	sw $t0, -832($fp)
	lw $t0, -816($fp)
	lw $t1, -832($fp)
	sw $t0, 0($t1)
	lw $t0, -832($fp)
	lw $t1, 0($t0)
	sw $t1, -836($fp)
	li $t0, 17279
	sw $t0, -840($fp)
	addi $t0, $fp, -108
	sw $t0, -844($fp)
	li $t0, 4
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -852($fp)
	lw $t0, -844($fp)
	lw $t1, -852($fp)
	add $t0, $t0, $t1
	sw $t0, -856($fp)
	lw $t0, -840($fp)
	lw $t1, -856($fp)
	sw $t0, 0($t1)
	lw $t0, -856($fp)
	lw $t1, 0($t0)
	sw $t1, -860($fp)
	li $t0, 45666
	sw $t0, -864($fp)
	addi $t0, $fp, -108
	sw $t0, -868($fp)
	li $t0, 5
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -876($fp)
	lw $t0, -868($fp)
	lw $t1, -876($fp)
	add $t0, $t0, $t1
	sw $t0, -880($fp)
	lw $t0, -864($fp)
	lw $t1, -880($fp)
	sw $t0, 0($t1)
	lw $t0, -880($fp)
	lw $t1, 0($t0)
	sw $t1, -884($fp)
	li $t0, 18205
	sw $t0, -888($fp)
	addi $t0, $fp, -108
	sw $t0, -892($fp)
	li $t0, 6
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -900($fp)
	lw $t0, -892($fp)
	lw $t1, -900($fp)
	add $t0, $t0, $t1
	sw $t0, -904($fp)
	lw $t0, -888($fp)
	lw $t1, -904($fp)
	sw $t0, 0($t1)
	lw $t0, -904($fp)
	lw $t1, 0($t0)
	sw $t1, -908($fp)
	li $t0, 55129
	sw $t0, -912($fp)
	addi $t0, $fp, -108
	sw $t0, -916($fp)
	li $t0, 7
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -924($fp)
	lw $t0, -916($fp)
	lw $t1, -924($fp)
	add $t0, $t0, $t1
	sw $t0, -928($fp)
	lw $t0, -912($fp)
	lw $t1, -928($fp)
	sw $t0, 0($t1)
	lw $t0, -928($fp)
	lw $t1, 0($t0)
	sw $t1, -932($fp)
	li $t0, 25328
	sw $t0, -936($fp)
	addi $t0, $fp, -108
	sw $t0, -940($fp)
	li $t0, 8
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -948($fp)
	lw $t0, -940($fp)
	lw $t1, -948($fp)
	add $t0, $t0, $t1
	sw $t0, -952($fp)
	lw $t0, -936($fp)
	lw $t1, -952($fp)
	sw $t0, 0($t1)
	lw $t0, -952($fp)
	lw $t1, 0($t0)
	sw $t1, -956($fp)
	li $t0, 64692
	sw $t0, -960($fp)
	addi $t0, $fp, -108
	sw $t0, -964($fp)
	li $t0, 9
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -972($fp)
	lw $t0, -964($fp)
	lw $t1, -972($fp)
	add $t0, $t0, $t1
	sw $t0, -976($fp)
	lw $t0, -960($fp)
	lw $t1, -976($fp)
	sw $t0, 0($t1)
	lw $t0, -976($fp)
	lw $t1, 0($t0)
	sw $t1, -980($fp)
	li $t0, 12732
	sw $t0, -984($fp)
	addi $t0, $fp, -116
	sw $t0, -988($fp)
	li $t0, 0
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -996($fp)
	lw $t0, -988($fp)
	lw $t1, -996($fp)
	add $t0, $t0, $t1
	sw $t0, -1000($fp)
	lw $t0, -984($fp)
	lw $t1, -1000($fp)
	sw $t0, 0($t1)
	lw $t0, -1000($fp)
	lw $t1, 0($t0)
	sw $t1, -1004($fp)
	li $t0, 14080
	sw $t0, -1008($fp)
	addi $t0, $fp, -116
	sw $t0, -1012($fp)
	li $t0, 1
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1020($fp)
	lw $t0, -1012($fp)
	lw $t1, -1020($fp)
	add $t0, $t0, $t1
	sw $t0, -1024($fp)
	lw $t0, -1008($fp)
	lw $t1, -1024($fp)
	sw $t0, 0($t1)
	lw $t0, -1024($fp)
	lw $t1, 0($t0)
	sw $t1, -1028($fp)
	li $t0, 13570
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	sw $t0, -1040($fp)
	li $t0, 63085
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -1052($fp)
	li $t0, 53925
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	sw $t0, -1064($fp)
	li $t0, 19278
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	sw $t0, -1076($fp)
	li $t0, 30330
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, -1088($fp)
	li $t0, 36536
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	sw $t0, -1100($fp)
	li $t0, 51524
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	sw $t0, -1112($fp)
	li $t0, 40775
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	sw $t0, -1124($fp)
	li $t0, 58755
	sw $t0, -1128($fp)
	addi $t0, $fp, -132
	sw $t0, -1132($fp)
	li $t0, 0
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1140($fp)
	lw $t0, -1132($fp)
	lw $t1, -1140($fp)
	add $t0, $t0, $t1
	sw $t0, -1144($fp)
	lw $t0, -1128($fp)
	lw $t1, -1144($fp)
	sw $t0, 0($t1)
	lw $t0, -1144($fp)
	lw $t1, 0($t0)
	sw $t1, -1148($fp)
	li $t0, 47229
	sw $t0, -1152($fp)
	addi $t0, $fp, -132
	sw $t0, -1156($fp)
	li $t0, 1
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1164($fp)
	lw $t0, -1156($fp)
	lw $t1, -1164($fp)
	add $t0, $t0, $t1
	sw $t0, -1168($fp)
	lw $t0, -1152($fp)
	lw $t1, -1168($fp)
	sw $t0, 0($t1)
	lw $t0, -1168($fp)
	lw $t1, 0($t0)
	sw $t1, -1172($fp)
	li $t0, 39665
	sw $t0, -1176($fp)
	addi $t0, $fp, -132
	sw $t0, -1180($fp)
	li $t0, 2
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1188($fp)
	lw $t0, -1180($fp)
	lw $t1, -1188($fp)
	add $t0, $t0, $t1
	sw $t0, -1192($fp)
	lw $t0, -1176($fp)
	lw $t1, -1192($fp)
	sw $t0, 0($t1)
	lw $t0, -1192($fp)
	lw $t1, 0($t0)
	sw $t1, -1196($fp)
	li $t0, 62082
	sw $t0, -1200($fp)
	addi $t0, $fp, -132
	sw $t0, -1204($fp)
	li $t0, 3
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1212($fp)
	lw $t0, -1204($fp)
	lw $t1, -1212($fp)
	add $t0, $t0, $t1
	sw $t0, -1216($fp)
	lw $t0, -1200($fp)
	lw $t1, -1216($fp)
	sw $t0, 0($t1)
	lw $t0, -1216($fp)
	lw $t1, 0($t0)
	sw $t1, -1220($fp)
	li $t0, 44984
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	sw $t0, -1232($fp)
	li $t0, 42790
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	sw $t0, -1244($fp)
	li $t0, 51367
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	sw $t0, -1256($fp)
	li $t0, 11519
	sw $t0, -1260($fp)
	addi $t0, $fp, -152
	sw $t0, -1264($fp)
	li $t0, 0
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1272($fp)
	lw $t0, -1264($fp)
	lw $t1, -1272($fp)
	add $t0, $t0, $t1
	sw $t0, -1276($fp)
	lw $t0, -1260($fp)
	lw $t1, -1276($fp)
	sw $t0, 0($t1)
	lw $t0, -1276($fp)
	lw $t1, 0($t0)
	sw $t1, -1280($fp)
	li $t0, 40554
	sw $t0, -1284($fp)
	addi $t0, $fp, -152
	sw $t0, -1288($fp)
	li $t0, 1
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1296($fp)
	lw $t0, -1288($fp)
	lw $t1, -1296($fp)
	add $t0, $t0, $t1
	sw $t0, -1300($fp)
	lw $t0, -1284($fp)
	lw $t1, -1300($fp)
	sw $t0, 0($t1)
	lw $t0, -1300($fp)
	lw $t1, 0($t0)
	sw $t1, -1304($fp)
	li $t0, 45359
	sw $t0, -1308($fp)
	addi $t0, $fp, -152
	sw $t0, -1312($fp)
	li $t0, 2
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1320($fp)
	lw $t0, -1312($fp)
	lw $t1, -1320($fp)
	add $t0, $t0, $t1
	sw $t0, -1324($fp)
	lw $t0, -1308($fp)
	lw $t1, -1324($fp)
	sw $t0, 0($t1)
	lw $t0, -1324($fp)
	lw $t1, 0($t0)
	sw $t1, -1328($fp)
	li $t0, 14473
	sw $t0, -1332($fp)
	addi $t0, $fp, -152
	sw $t0, -1336($fp)
	li $t0, 3
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1344($fp)
	lw $t0, -1336($fp)
	lw $t1, -1344($fp)
	add $t0, $t0, $t1
	sw $t0, -1348($fp)
	lw $t0, -1332($fp)
	lw $t1, -1348($fp)
	sw $t0, 0($t1)
	lw $t0, -1348($fp)
	lw $t1, 0($t0)
	sw $t1, -1352($fp)
	li $t0, 46534
	sw $t0, -1356($fp)
	addi $t0, $fp, -152
	sw $t0, -1360($fp)
	li $t0, 4
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1368($fp)
	lw $t0, -1360($fp)
	lw $t1, -1368($fp)
	add $t0, $t0, $t1
	sw $t0, -1372($fp)
	lw $t0, -1356($fp)
	lw $t1, -1372($fp)
	sw $t0, 0($t1)
	lw $t0, -1372($fp)
	lw $t1, 0($t0)
	sw $t1, -1376($fp)
	li $t0, 49158
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	sw $t0, -1388($fp)
	li $t0, 24902
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	sw $t0, -1400($fp)
	li $t0, 15074
	sw $t0, -1404($fp)
	lw $t0, -1404($fp)
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	sw $t0, -1412($fp)
	li $t0, 901
	sw $t0, -1416($fp)
	lw $t0, -1416($fp)
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	sw $t0, -1424($fp)
	li $t0, 5032
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	sw $t0, -1436($fp)
	li $t0, 33279
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	sw $t0, -1448($fp)
	li $t0, 56030
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	sw $t0, -1460($fp)
	li $t0, 30360
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	sw $t0, -1472($fp)
	li $t0, 32435
	sw $t0, -1476($fp)
	addi $t0, $fp, -172
	sw $t0, -1480($fp)
	li $t0, 0
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1488($fp)
	lw $t0, -1480($fp)
	lw $t1, -1488($fp)
	add $t0, $t0, $t1
	sw $t0, -1492($fp)
	lw $t0, -1476($fp)
	lw $t1, -1492($fp)
	sw $t0, 0($t1)
	lw $t0, -1492($fp)
	lw $t1, 0($t0)
	sw $t1, -1496($fp)
	li $t0, 3226
	sw $t0, -1500($fp)
	addi $t0, $fp, -172
	sw $t0, -1504($fp)
	li $t0, 1
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1512($fp)
	lw $t0, -1504($fp)
	lw $t1, -1512($fp)
	add $t0, $t0, $t1
	sw $t0, -1516($fp)
	lw $t0, -1500($fp)
	lw $t1, -1516($fp)
	sw $t0, 0($t1)
	lw $t0, -1516($fp)
	lw $t1, 0($t0)
	sw $t1, -1520($fp)
	li $t0, 44441
	sw $t0, -1524($fp)
	addi $t0, $fp, -172
	sw $t0, -1528($fp)
	li $t0, 2
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1536($fp)
	lw $t0, -1528($fp)
	lw $t1, -1536($fp)
	add $t0, $t0, $t1
	sw $t0, -1540($fp)
	lw $t0, -1524($fp)
	lw $t1, -1540($fp)
	sw $t0, 0($t1)
	lw $t0, -1540($fp)
	lw $t1, 0($t0)
	sw $t1, -1544($fp)
	li $t0, 46006
	sw $t0, -1548($fp)
	addi $t0, $fp, -172
	sw $t0, -1552($fp)
	li $t0, 3
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1560($fp)
	lw $t0, -1552($fp)
	lw $t1, -1560($fp)
	add $t0, $t0, $t1
	sw $t0, -1564($fp)
	lw $t0, -1548($fp)
	lw $t1, -1564($fp)
	sw $t0, 0($t1)
	lw $t0, -1564($fp)
	lw $t1, 0($t0)
	sw $t1, -1568($fp)
	li $t0, 776
	sw $t0, -1572($fp)
	addi $t0, $fp, -172
	sw $t0, -1576($fp)
	li $t0, 4
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1584($fp)
	lw $t0, -1576($fp)
	lw $t1, -1584($fp)
	add $t0, $t0, $t1
	sw $t0, -1588($fp)
	lw $t0, -1572($fp)
	lw $t1, -1588($fp)
	sw $t0, 0($t1)
	lw $t0, -1588($fp)
	lw $t1, 0($t0)
	sw $t1, -1592($fp)
	li $t0, 32830
	sw $t0, -1596($fp)
	lw $t0, -1596($fp)
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	sw $t0, -1604($fp)
	li $t0, 65284
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	sw $t0, -1616($fp)
	li $t0, 31106
	sw $t0, -1620($fp)
	lw $t0, -1620($fp)
	sw $t0, -1624($fp)
	lw $t0, -1624($fp)
	sw $t0, -1628($fp)
	li $t0, 3830
	sw $t0, -1632($fp)
	addi $t0, $fp, -188
	sw $t0, -1636($fp)
	li $t0, 0
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1644($fp)
	lw $t0, -1636($fp)
	lw $t1, -1644($fp)
	add $t0, $t0, $t1
	sw $t0, -1648($fp)
	lw $t0, -1632($fp)
	lw $t1, -1648($fp)
	sw $t0, 0($t1)
	lw $t0, -1648($fp)
	lw $t1, 0($t0)
	sw $t1, -1652($fp)
	li $t0, 51272
	sw $t0, -1656($fp)
	addi $t0, $fp, -188
	sw $t0, -1660($fp)
	li $t0, 1
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1668($fp)
	lw $t0, -1660($fp)
	lw $t1, -1668($fp)
	add $t0, $t0, $t1
	sw $t0, -1672($fp)
	lw $t0, -1656($fp)
	lw $t1, -1672($fp)
	sw $t0, 0($t1)
	lw $t0, -1672($fp)
	lw $t1, 0($t0)
	sw $t1, -1676($fp)
	li $t0, 6345
	sw $t0, -1680($fp)
	addi $t0, $fp, -188
	sw $t0, -1684($fp)
	li $t0, 2
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1692($fp)
	lw $t0, -1684($fp)
	lw $t1, -1692($fp)
	add $t0, $t0, $t1
	sw $t0, -1696($fp)
	lw $t0, -1680($fp)
	lw $t1, -1696($fp)
	sw $t0, 0($t1)
	lw $t0, -1696($fp)
	lw $t1, 0($t0)
	sw $t1, -1700($fp)
	li $t0, 62585
	sw $t0, -1704($fp)
	addi $t0, $fp, -188
	sw $t0, -1708($fp)
	li $t0, 3
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1716($fp)
	lw $t0, -1708($fp)
	lw $t1, -1716($fp)
	add $t0, $t0, $t1
	sw $t0, -1720($fp)
	lw $t0, -1704($fp)
	lw $t1, -1720($fp)
	sw $t0, 0($t1)
	lw $t0, -1720($fp)
	lw $t1, 0($t0)
	sw $t1, -1724($fp)
	li $t0, 32965
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	sw $t0, -1736($fp)
	li $t0, 46010
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	sw $t0, -1748($fp)
	li $t0, 0
	sw $t0, -1752($fp)
	addi $t0, $fp, -132
	sw $t0, -1756($fp)
	lw $t0, -604($fp)
	sw $t0, -1760($fp)
	li $t0, 4
	lw $t1, -1760($fp)
	mul $t0, $t0, $t1
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	lw $t1, -1756($fp)
	add $t0, $t0, $t1
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	lw $t1, 0($t0)
	sw $t1, -1772($fp)
	addi $t0, $fp, -152
	sw $t0, -1776($fp)
	lw $t0, -724($fp)
	sw $t0, -1780($fp)
	li $t0, 4
	lw $t1, -1780($fp)
	mul $t0, $t0, $t1
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	lw $t1, -1776($fp)
	add $t0, $t0, $t1
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	lw $t1, 0($t0)
	sw $t1, -1792($fp)
	lw $t0, -1772($fp)
	lw $t1, -1792($fp)
	mul $t0, $t0, $t1
	sw $t0, -1796($fp)
	li $t0, 59131
	sw $t0, -1800($fp)
	lw $t0, -1084($fp)
	sw $t0, -1804($fp)
	lw $t0, -1800($fp)
	lw $t1, -1804($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1808($fp)
	lw $t0, -1048($fp)
	sw $t0, -1812($fp)
	lw $t0, -1808($fp)
	lw $t1, -1812($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1816($fp)
	lw $t0, -1796($fp)
	lw $t1, -1816($fp)
	add $t0, $t0, $t1
	sw $t0, -1820($fp)
	lw $t0, 12($fp)
	sw $t0, -1824($fp)
	lw $t1, -1820($fp)
	lw $t2, -1824($fp)
	bne $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -1752($fp)
label122:
	lw $ra, -4($fp)
	lw $v0, -1752($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -32
	sw $t0, -1828($fp)
	li $t0, 0
	sw $t0, -1832($fp)
	li $t0, 4
	lw $t1, -1832($fp)
	mul $t0, $t0, $t1
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	lw $t1, -1828($fp)
	add $t0, $t0, $t1
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	lw $t1, 0($t0)
	sw $t1, -1844($fp)
	lw $t0, -1844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1848($fp)
	li $t0, 1
	sw $t0, -1852($fp)
	li $t0, 4
	lw $t1, -1852($fp)
	mul $t0, $t0, $t1
	sw $t0, -1856($fp)
	lw $t0, -1856($fp)
	lw $t1, -1848($fp)
	add $t0, $t0, $t1
	sw $t0, -1860($fp)
	lw $t0, -1860($fp)
	lw $t1, 0($t0)
	sw $t1, -1864($fp)
	lw $t0, -1864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1868($fp)
	li $t0, 2
	sw $t0, -1872($fp)
	li $t0, 4
	lw $t1, -1872($fp)
	mul $t0, $t0, $t1
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	lw $t1, -1868($fp)
	add $t0, $t0, $t1
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	lw $t1, 0($t0)
	sw $t1, -1884($fp)
	lw $t0, -1884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1888($fp)
	li $t0, 3
	sw $t0, -1892($fp)
	li $t0, 4
	lw $t1, -1892($fp)
	mul $t0, $t0, $t1
	sw $t0, -1896($fp)
	lw $t0, -1896($fp)
	lw $t1, -1888($fp)
	add $t0, $t0, $t1
	sw $t0, -1900($fp)
	lw $t0, -1900($fp)
	lw $t1, 0($t0)
	sw $t1, -1904($fp)
	lw $t0, -1904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1908($fp)
	li $t0, 4
	sw $t0, -1912($fp)
	li $t0, 4
	lw $t1, -1912($fp)
	mul $t0, $t0, $t1
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	lw $t1, -1908($fp)
	add $t0, $t0, $t1
	sw $t0, -1920($fp)
	lw $t0, -1920($fp)
	lw $t1, 0($t0)
	sw $t1, -1924($fp)
	lw $t0, -1924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1928($fp)
	li $t0, 5
	sw $t0, -1932($fp)
	li $t0, 4
	lw $t1, -1932($fp)
	mul $t0, $t0, $t1
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	lw $t1, -1928($fp)
	add $t0, $t0, $t1
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	lw $t1, 0($t0)
	sw $t1, -1944($fp)
	lw $t0, -1944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1948($fp)
	li $t0, 6
	sw $t0, -1952($fp)
	li $t0, 4
	lw $t1, -1952($fp)
	mul $t0, $t0, $t1
	sw $t0, -1956($fp)
	lw $t0, -1956($fp)
	lw $t1, -1948($fp)
	add $t0, $t0, $t1
	sw $t0, -1960($fp)
	lw $t0, -1960($fp)
	lw $t1, 0($t0)
	sw $t1, -1964($fp)
	lw $t0, -1964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1968($fp)
	li $t0, 0
	sw $t0, -1972($fp)
	li $t0, 4
	lw $t1, -1972($fp)
	mul $t0, $t0, $t1
	sw $t0, -1976($fp)
	lw $t0, -1976($fp)
	lw $t1, -1968($fp)
	add $t0, $t0, $t1
	sw $t0, -1980($fp)
	lw $t0, -1980($fp)
	lw $t1, 0($t0)
	sw $t1, -1984($fp)
	lw $t0, -1984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1988($fp)
	li $t0, 1
	sw $t0, -1992($fp)
	li $t0, 4
	lw $t1, -1992($fp)
	mul $t0, $t0, $t1
	sw $t0, -1996($fp)
	lw $t0, -1996($fp)
	lw $t1, -1988($fp)
	add $t0, $t0, $t1
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	lw $t1, 0($t0)
	sw $t1, -2004($fp)
	lw $t0, -2004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -2008($fp)
	li $t0, 2
	sw $t0, -2012($fp)
	li $t0, 4
	lw $t1, -2012($fp)
	mul $t0, $t0, $t1
	sw $t0, -2016($fp)
	lw $t0, -2016($fp)
	lw $t1, -2008($fp)
	add $t0, $t0, $t1
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	lw $t1, 0($t0)
	sw $t1, -2024($fp)
	lw $t0, -2024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -2028($fp)
	li $t0, 3
	sw $t0, -2032($fp)
	li $t0, 4
	lw $t1, -2032($fp)
	mul $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	lw $t1, -2028($fp)
	add $t0, $t0, $t1
	sw $t0, -2040($fp)
	lw $t0, -2040($fp)
	lw $t1, 0($t0)
	sw $t1, -2044($fp)
	lw $t0, -2044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -2048($fp)
	li $t0, 4
	sw $t0, -2052($fp)
	li $t0, 4
	lw $t1, -2052($fp)
	mul $t0, $t0, $t1
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	lw $t1, -2048($fp)
	add $t0, $t0, $t1
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	lw $t1, 0($t0)
	sw $t1, -2064($fp)
	lw $t0, -2064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -2068($fp)
	li $t0, 5
	sw $t0, -2072($fp)
	li $t0, 4
	lw $t1, -2072($fp)
	mul $t0, $t0, $t1
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	lw $t1, -2068($fp)
	add $t0, $t0, $t1
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	lw $t1, 0($t0)
	sw $t1, -2084($fp)
	lw $t0, -2084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -2088($fp)
	li $t0, 6
	sw $t0, -2092($fp)
	li $t0, 4
	lw $t1, -2092($fp)
	mul $t0, $t0, $t1
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	lw $t1, -2088($fp)
	add $t0, $t0, $t1
	sw $t0, -2100($fp)
	lw $t0, -2100($fp)
	lw $t1, 0($t0)
	sw $t1, -2104($fp)
	lw $t0, -2104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -2108($fp)
	li $t0, 7
	sw $t0, -2112($fp)
	li $t0, 4
	lw $t1, -2112($fp)
	mul $t0, $t0, $t1
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	lw $t1, -2108($fp)
	add $t0, $t0, $t1
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	lw $t1, 0($t0)
	sw $t1, -2124($fp)
	lw $t0, -2124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -2128($fp)
	li $t0, 8
	sw $t0, -2132($fp)
	li $t0, 4
	lw $t1, -2132($fp)
	mul $t0, $t0, $t1
	sw $t0, -2136($fp)
	lw $t0, -2136($fp)
	lw $t1, -2128($fp)
	add $t0, $t0, $t1
	sw $t0, -2140($fp)
	lw $t0, -2140($fp)
	lw $t1, 0($t0)
	sw $t1, -2144($fp)
	lw $t0, -2144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -580($fp)
	sw $t0, -2148($fp)
	lw $t0, -2148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -592($fp)
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -604($fp)
	sw $t0, -2156($fp)
	lw $t0, -2156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -616($fp)
	sw $t0, -2160($fp)
	lw $t0, -2160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -628($fp)
	sw $t0, -2164($fp)
	lw $t0, -2164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -640($fp)
	sw $t0, -2168($fp)
	lw $t0, -2168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -652($fp)
	sw $t0, -2172($fp)
	lw $t0, -2172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -664($fp)
	sw $t0, -2176($fp)
	lw $t0, -2176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -676($fp)
	sw $t0, -2180($fp)
	lw $t0, -2180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -688($fp)
	sw $t0, -2184($fp)
	lw $t0, -2184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -700($fp)
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -712($fp)
	sw $t0, -2192($fp)
	lw $t0, -2192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -724($fp)
	sw $t0, -2196($fp)
	lw $t0, -2196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -736($fp)
	sw $t0, -2200($fp)
	lw $t0, -2200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -2204($fp)
	li $t0, 0
	sw $t0, -2208($fp)
	li $t0, 4
	lw $t1, -2208($fp)
	mul $t0, $t0, $t1
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	lw $t1, -2204($fp)
	add $t0, $t0, $t1
	sw $t0, -2216($fp)
	lw $t0, -2216($fp)
	lw $t1, 0($t0)
	sw $t1, -2220($fp)
	lw $t0, -2220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -2224($fp)
	li $t0, 1
	sw $t0, -2228($fp)
	li $t0, 4
	lw $t1, -2228($fp)
	mul $t0, $t0, $t1
	sw $t0, -2232($fp)
	lw $t0, -2232($fp)
	lw $t1, -2224($fp)
	add $t0, $t0, $t1
	sw $t0, -2236($fp)
	lw $t0, -2236($fp)
	lw $t1, 0($t0)
	sw $t1, -2240($fp)
	lw $t0, -2240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -2244($fp)
	li $t0, 2
	sw $t0, -2248($fp)
	li $t0, 4
	lw $t1, -2248($fp)
	mul $t0, $t0, $t1
	sw $t0, -2252($fp)
	lw $t0, -2252($fp)
	lw $t1, -2244($fp)
	add $t0, $t0, $t1
	sw $t0, -2256($fp)
	lw $t0, -2256($fp)
	lw $t1, 0($t0)
	sw $t1, -2260($fp)
	lw $t0, -2260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -2264($fp)
	li $t0, 3
	sw $t0, -2268($fp)
	li $t0, 4
	lw $t1, -2268($fp)
	mul $t0, $t0, $t1
	sw $t0, -2272($fp)
	lw $t0, -2272($fp)
	lw $t1, -2264($fp)
	add $t0, $t0, $t1
	sw $t0, -2276($fp)
	lw $t0, -2276($fp)
	lw $t1, 0($t0)
	sw $t1, -2280($fp)
	lw $t0, -2280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -2284($fp)
	li $t0, 4
	sw $t0, -2288($fp)
	li $t0, 4
	lw $t1, -2288($fp)
	mul $t0, $t0, $t1
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	lw $t1, -2284($fp)
	add $t0, $t0, $t1
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	lw $t1, 0($t0)
	sw $t1, -2300($fp)
	lw $t0, -2300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -2304($fp)
	li $t0, 5
	sw $t0, -2308($fp)
	li $t0, 4
	lw $t1, -2308($fp)
	mul $t0, $t0, $t1
	sw $t0, -2312($fp)
	lw $t0, -2312($fp)
	lw $t1, -2304($fp)
	add $t0, $t0, $t1
	sw $t0, -2316($fp)
	lw $t0, -2316($fp)
	lw $t1, 0($t0)
	sw $t1, -2320($fp)
	lw $t0, -2320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -2324($fp)
	li $t0, 6
	sw $t0, -2328($fp)
	li $t0, 4
	lw $t1, -2328($fp)
	mul $t0, $t0, $t1
	sw $t0, -2332($fp)
	lw $t0, -2332($fp)
	lw $t1, -2324($fp)
	add $t0, $t0, $t1
	sw $t0, -2336($fp)
	lw $t0, -2336($fp)
	lw $t1, 0($t0)
	sw $t1, -2340($fp)
	lw $t0, -2340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -2344($fp)
	li $t0, 7
	sw $t0, -2348($fp)
	li $t0, 4
	lw $t1, -2348($fp)
	mul $t0, $t0, $t1
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	lw $t1, -2344($fp)
	add $t0, $t0, $t1
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	lw $t1, 0($t0)
	sw $t1, -2360($fp)
	lw $t0, -2360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -2364($fp)
	li $t0, 8
	sw $t0, -2368($fp)
	li $t0, 4
	lw $t1, -2368($fp)
	mul $t0, $t0, $t1
	sw $t0, -2372($fp)
	lw $t0, -2372($fp)
	lw $t1, -2364($fp)
	add $t0, $t0, $t1
	sw $t0, -2376($fp)
	lw $t0, -2376($fp)
	lw $t1, 0($t0)
	sw $t1, -2380($fp)
	lw $t0, -2380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -2384($fp)
	li $t0, 9
	sw $t0, -2388($fp)
	li $t0, 4
	lw $t1, -2388($fp)
	mul $t0, $t0, $t1
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	lw $t1, -2384($fp)
	add $t0, $t0, $t1
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	lw $t1, 0($t0)
	sw $t1, -2400($fp)
	lw $t0, -2400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -2404($fp)
	li $t0, 0
	sw $t0, -2408($fp)
	li $t0, 4
	lw $t1, -2408($fp)
	mul $t0, $t0, $t1
	sw $t0, -2412($fp)
	lw $t0, -2412($fp)
	lw $t1, -2404($fp)
	add $t0, $t0, $t1
	sw $t0, -2416($fp)
	lw $t0, -2416($fp)
	lw $t1, 0($t0)
	sw $t1, -2420($fp)
	lw $t0, -2420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -2424($fp)
	li $t0, 1
	sw $t0, -2428($fp)
	li $t0, 4
	lw $t1, -2428($fp)
	mul $t0, $t0, $t1
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	lw $t1, -2424($fp)
	add $t0, $t0, $t1
	sw $t0, -2436($fp)
	lw $t0, -2436($fp)
	lw $t1, 0($t0)
	sw $t1, -2440($fp)
	lw $t0, -2440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1036($fp)
	sw $t0, -2444($fp)
	lw $t0, -2444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1048($fp)
	sw $t0, -2448($fp)
	lw $t0, -2448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1060($fp)
	sw $t0, -2452($fp)
	lw $t0, -2452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1072($fp)
	sw $t0, -2456($fp)
	lw $t0, -2456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1084($fp)
	sw $t0, -2460($fp)
	lw $t0, -2460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1096($fp)
	sw $t0, -2464($fp)
	lw $t0, -2464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1108($fp)
	sw $t0, -2468($fp)
	lw $t0, -2468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1120($fp)
	sw $t0, -2472($fp)
	lw $t0, -2472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -2476($fp)
	li $t0, 0
	sw $t0, -2480($fp)
	li $t0, 4
	lw $t1, -2480($fp)
	mul $t0, $t0, $t1
	sw $t0, -2484($fp)
	lw $t0, -2484($fp)
	lw $t1, -2476($fp)
	add $t0, $t0, $t1
	sw $t0, -2488($fp)
	lw $t0, -2488($fp)
	lw $t1, 0($t0)
	sw $t1, -2492($fp)
	lw $t0, -2492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -2496($fp)
	li $t0, 1
	sw $t0, -2500($fp)
	li $t0, 4
	lw $t1, -2500($fp)
	mul $t0, $t0, $t1
	sw $t0, -2504($fp)
	lw $t0, -2504($fp)
	lw $t1, -2496($fp)
	add $t0, $t0, $t1
	sw $t0, -2508($fp)
	lw $t0, -2508($fp)
	lw $t1, 0($t0)
	sw $t1, -2512($fp)
	lw $t0, -2512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -2516($fp)
	li $t0, 2
	sw $t0, -2520($fp)
	li $t0, 4
	lw $t1, -2520($fp)
	mul $t0, $t0, $t1
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	lw $t1, -2516($fp)
	add $t0, $t0, $t1
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	lw $t1, 0($t0)
	sw $t1, -2532($fp)
	lw $t0, -2532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -2536($fp)
	li $t0, 3
	sw $t0, -2540($fp)
	li $t0, 4
	lw $t1, -2540($fp)
	mul $t0, $t0, $t1
	sw $t0, -2544($fp)
	lw $t0, -2544($fp)
	lw $t1, -2536($fp)
	add $t0, $t0, $t1
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	lw $t1, 0($t0)
	sw $t1, -2552($fp)
	lw $t0, -2552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1228($fp)
	sw $t0, -2556($fp)
	lw $t0, -2556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1240($fp)
	sw $t0, -2560($fp)
	lw $t0, -2560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1252($fp)
	sw $t0, -2564($fp)
	lw $t0, -2564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -2568($fp)
	li $t0, 0
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
	lw $t0, -2584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -2588($fp)
	li $t0, 1
	sw $t0, -2592($fp)
	li $t0, 4
	lw $t1, -2592($fp)
	mul $t0, $t0, $t1
	sw $t0, -2596($fp)
	lw $t0, -2596($fp)
	lw $t1, -2588($fp)
	add $t0, $t0, $t1
	sw $t0, -2600($fp)
	lw $t0, -2600($fp)
	lw $t1, 0($t0)
	sw $t1, -2604($fp)
	lw $t0, -2604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -2608($fp)
	li $t0, 2
	sw $t0, -2612($fp)
	li $t0, 4
	lw $t1, -2612($fp)
	mul $t0, $t0, $t1
	sw $t0, -2616($fp)
	lw $t0, -2616($fp)
	lw $t1, -2608($fp)
	add $t0, $t0, $t1
	sw $t0, -2620($fp)
	lw $t0, -2620($fp)
	lw $t1, 0($t0)
	sw $t1, -2624($fp)
	lw $t0, -2624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -2628($fp)
	li $t0, 3
	sw $t0, -2632($fp)
	li $t0, 4
	lw $t1, -2632($fp)
	mul $t0, $t0, $t1
	sw $t0, -2636($fp)
	lw $t0, -2636($fp)
	lw $t1, -2628($fp)
	add $t0, $t0, $t1
	sw $t0, -2640($fp)
	lw $t0, -2640($fp)
	lw $t1, 0($t0)
	sw $t1, -2644($fp)
	lw $t0, -2644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -2648($fp)
	li $t0, 4
	sw $t0, -2652($fp)
	li $t0, 4
	lw $t1, -2652($fp)
	mul $t0, $t0, $t1
	sw $t0, -2656($fp)
	lw $t0, -2656($fp)
	lw $t1, -2648($fp)
	add $t0, $t0, $t1
	sw $t0, -2660($fp)
	lw $t0, -2660($fp)
	lw $t1, 0($t0)
	sw $t1, -2664($fp)
	lw $t0, -2664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1384($fp)
	sw $t0, -2668($fp)
	lw $t0, -2668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1396($fp)
	sw $t0, -2672($fp)
	lw $t0, -2672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1408($fp)
	sw $t0, -2676($fp)
	lw $t0, -2676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1420($fp)
	sw $t0, -2680($fp)
	lw $t0, -2680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1432($fp)
	sw $t0, -2684($fp)
	lw $t0, -2684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1444($fp)
	sw $t0, -2688($fp)
	lw $t0, -2688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1456($fp)
	sw $t0, -2692($fp)
	lw $t0, -2692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1468($fp)
	sw $t0, -2696($fp)
	lw $t0, -2696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -2700($fp)
	li $t0, 0
	sw $t0, -2704($fp)
	li $t0, 4
	lw $t1, -2704($fp)
	mul $t0, $t0, $t1
	sw $t0, -2708($fp)
	lw $t0, -2708($fp)
	lw $t1, -2700($fp)
	add $t0, $t0, $t1
	sw $t0, -2712($fp)
	lw $t0, -2712($fp)
	lw $t1, 0($t0)
	sw $t1, -2716($fp)
	lw $t0, -2716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -2720($fp)
	li $t0, 1
	sw $t0, -2724($fp)
	li $t0, 4
	lw $t1, -2724($fp)
	mul $t0, $t0, $t1
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	lw $t1, -2720($fp)
	add $t0, $t0, $t1
	sw $t0, -2732($fp)
	lw $t0, -2732($fp)
	lw $t1, 0($t0)
	sw $t1, -2736($fp)
	lw $t0, -2736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -2740($fp)
	li $t0, 2
	sw $t0, -2744($fp)
	li $t0, 4
	lw $t1, -2744($fp)
	mul $t0, $t0, $t1
	sw $t0, -2748($fp)
	lw $t0, -2748($fp)
	lw $t1, -2740($fp)
	add $t0, $t0, $t1
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	lw $t1, 0($t0)
	sw $t1, -2756($fp)
	lw $t0, -2756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -2760($fp)
	li $t0, 3
	sw $t0, -2764($fp)
	li $t0, 4
	lw $t1, -2764($fp)
	mul $t0, $t0, $t1
	sw $t0, -2768($fp)
	lw $t0, -2768($fp)
	lw $t1, -2760($fp)
	add $t0, $t0, $t1
	sw $t0, -2772($fp)
	lw $t0, -2772($fp)
	lw $t1, 0($t0)
	sw $t1, -2776($fp)
	lw $t0, -2776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -2780($fp)
	li $t0, 4
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
	lw $t0, -2796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1600($fp)
	sw $t0, -2800($fp)
	lw $t0, -2800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1612($fp)
	sw $t0, -2804($fp)
	lw $t0, -2804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1624($fp)
	sw $t0, -2808($fp)
	lw $t0, -2808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -2812($fp)
	li $t0, 0
	sw $t0, -2816($fp)
	li $t0, 4
	lw $t1, -2816($fp)
	mul $t0, $t0, $t1
	sw $t0, -2820($fp)
	lw $t0, -2820($fp)
	lw $t1, -2812($fp)
	add $t0, $t0, $t1
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	lw $t1, 0($t0)
	sw $t1, -2828($fp)
	lw $t0, -2828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -2832($fp)
	li $t0, 1
	sw $t0, -2836($fp)
	li $t0, 4
	lw $t1, -2836($fp)
	mul $t0, $t0, $t1
	sw $t0, -2840($fp)
	lw $t0, -2840($fp)
	lw $t1, -2832($fp)
	add $t0, $t0, $t1
	sw $t0, -2844($fp)
	lw $t0, -2844($fp)
	lw $t1, 0($t0)
	sw $t1, -2848($fp)
	lw $t0, -2848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -2852($fp)
	li $t0, 2
	sw $t0, -2856($fp)
	li $t0, 4
	lw $t1, -2856($fp)
	mul $t0, $t0, $t1
	sw $t0, -2860($fp)
	lw $t0, -2860($fp)
	lw $t1, -2852($fp)
	add $t0, $t0, $t1
	sw $t0, -2864($fp)
	lw $t0, -2864($fp)
	lw $t1, 0($t0)
	sw $t1, -2868($fp)
	lw $t0, -2868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -2872($fp)
	li $t0, 3
	sw $t0, -2876($fp)
	li $t0, 4
	lw $t1, -2876($fp)
	mul $t0, $t0, $t1
	sw $t0, -2880($fp)
	lw $t0, -2880($fp)
	lw $t1, -2872($fp)
	add $t0, $t0, $t1
	sw $t0, -2884($fp)
	lw $t0, -2884($fp)
	lw $t1, 0($t0)
	sw $t1, -2888($fp)
	lw $t0, -2888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1732($fp)
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1744($fp)
	sw $t0, -2896($fp)
	lw $t0, -2896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 12414
	sw $t0, -2900($fp)
	li $t0, 0
	lw $t1, -2900($fp)
	sub $t0, $t0, $t1
	sw $t0, -2904($fp)
	lw $ra, -4($fp)
	lw $v0, -2904($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 23264
	sw $t0, -2908($fp)
	lw $t1, -2908($fp)
	li $t2, 0
	bne $t1, $t2, label126
	j label124
label126:
	li $t0, 0
	sw $t0, -2912($fp)
	li $t0, 44962
	sw $t0, -2916($fp)
	li $t0, 0
	lw $t1, -2916($fp)
	sub $t0, $t0, $t1
	sw $t0, -2920($fp)
	lw $t1, -2920($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label127
label127:
	li $t0, 1
	sw $t0, -2912($fp)
label128:
	lw $t0, -1036($fp)
	sw $t0, -2924($fp)
	lw $t1, -2912($fp)
	lw $t2, -2924($fp)
	beq $t1, $t2, label123
	j label124
label123:
	li $t0, 23933
	sw $t0, -3076($fp)
	addi $t0, $fp, -2948
	sw $t0, -3080($fp)
	li $t0, 0
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
	li $t0, 63818
	sw $t0, -3100($fp)
	addi $t0, $fp, -2948
	sw $t0, -3104($fp)
	li $t0, 1
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
	li $t0, 24785
	sw $t0, -3124($fp)
	addi $t0, $fp, -2948
	sw $t0, -3128($fp)
	li $t0, 2
	sw $t0, -3132($fp)
	lw $t0, -3132($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3136($fp)
	lw $t0, -3128($fp)
	lw $t1, -3136($fp)
	add $t0, $t0, $t1
	sw $t0, -3140($fp)
	lw $t0, -3124($fp)
	lw $t1, -3140($fp)
	sw $t0, 0($t1)
	lw $t0, -3140($fp)
	lw $t1, 0($t0)
	sw $t1, -3144($fp)
	li $t0, 38407
	sw $t0, -3148($fp)
	addi $t0, $fp, -2948
	sw $t0, -3152($fp)
	li $t0, 3
	sw $t0, -3156($fp)
	lw $t0, -3156($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3160($fp)
	lw $t0, -3152($fp)
	lw $t1, -3160($fp)
	add $t0, $t0, $t1
	sw $t0, -3164($fp)
	lw $t0, -3148($fp)
	lw $t1, -3164($fp)
	sw $t0, 0($t1)
	lw $t0, -3164($fp)
	lw $t1, 0($t0)
	sw $t1, -3168($fp)
	li $t0, 44816
	sw $t0, -3172($fp)
	addi $t0, $fp, -2948
	sw $t0, -3176($fp)
	li $t0, 4
	sw $t0, -3180($fp)
	lw $t0, -3180($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3184($fp)
	lw $t0, -3176($fp)
	lw $t1, -3184($fp)
	add $t0, $t0, $t1
	sw $t0, -3188($fp)
	lw $t0, -3172($fp)
	lw $t1, -3188($fp)
	sw $t0, 0($t1)
	lw $t0, -3188($fp)
	lw $t1, 0($t0)
	sw $t1, -3192($fp)
	li $t0, 8407
	sw $t0, -3196($fp)
	addi $t0, $fp, -2948
	sw $t0, -3200($fp)
	li $t0, 5
	sw $t0, -3204($fp)
	lw $t0, -3204($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3208($fp)
	lw $t0, -3200($fp)
	lw $t1, -3208($fp)
	add $t0, $t0, $t1
	sw $t0, -3212($fp)
	lw $t0, -3196($fp)
	lw $t1, -3212($fp)
	sw $t0, 0($t1)
	lw $t0, -3212($fp)
	lw $t1, 0($t0)
	sw $t1, -3216($fp)
	li $t0, 63309
	sw $t0, -3220($fp)
	lw $t0, -3220($fp)
	sw $t0, -3224($fp)
	lw $t0, -3224($fp)
	sw $t0, -3228($fp)
	li $t0, 59891
	sw $t0, -3232($fp)
	lw $t0, -3232($fp)
	sw $t0, -3236($fp)
	lw $t0, -3236($fp)
	sw $t0, -3240($fp)
	li $t0, 9309
	sw $t0, -3244($fp)
	lw $t0, -3244($fp)
	sw $t0, -3248($fp)
	lw $t0, -3248($fp)
	sw $t0, -3252($fp)
	li $t0, 2805
	sw $t0, -3256($fp)
	lw $t0, -3256($fp)
	sw $t0, -3260($fp)
	lw $t0, -3260($fp)
	sw $t0, -3264($fp)
	li $t0, 27634
	sw $t0, -3268($fp)
	lw $t0, -3268($fp)
	sw $t0, -3272($fp)
	lw $t0, -3272($fp)
	sw $t0, -3276($fp)
	li $t0, 65339
	sw $t0, -3280($fp)
	lw $t0, -3280($fp)
	sw $t0, -3284($fp)
	lw $t0, -3284($fp)
	sw $t0, -3288($fp)
	li $t0, 33166
	sw $t0, -3292($fp)
	lw $t0, -3292($fp)
	sw $t0, -3296($fp)
	lw $t0, -3296($fp)
	sw $t0, -3300($fp)
	li $t0, 60070
	sw $t0, -3304($fp)
	lw $t0, -3304($fp)
	sw $t0, -3308($fp)
	lw $t0, -3308($fp)
	sw $t0, -3312($fp)
	li $t0, 3030
	sw $t0, -3316($fp)
	lw $t0, -3316($fp)
	sw $t0, -3320($fp)
	lw $t0, -3320($fp)
	sw $t0, -3324($fp)
	li $t0, 12071
	sw $t0, -3328($fp)
	lw $t0, -3328($fp)
	sw $t0, -3332($fp)
	lw $t0, -3332($fp)
	sw $t0, -3336($fp)
	li $t0, 40540
	sw $t0, -3340($fp)
	lw $t0, -3340($fp)
	sw $t0, -3344($fp)
	lw $t0, -3344($fp)
	sw $t0, -3348($fp)
	li $t0, 3806
	sw $t0, -3352($fp)
	addi $t0, $fp, -2956
	sw $t0, -3356($fp)
	li $t0, 0
	sw $t0, -3360($fp)
	lw $t0, -3360($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3364($fp)
	lw $t0, -3356($fp)
	lw $t1, -3364($fp)
	add $t0, $t0, $t1
	sw $t0, -3368($fp)
	lw $t0, -3352($fp)
	lw $t1, -3368($fp)
	sw $t0, 0($t1)
	lw $t0, -3368($fp)
	lw $t1, 0($t0)
	sw $t1, -3372($fp)
	li $t0, 44901
	sw $t0, -3376($fp)
	addi $t0, $fp, -2956
	sw $t0, -3380($fp)
	li $t0, 1
	sw $t0, -3384($fp)
	lw $t0, -3384($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3388($fp)
	lw $t0, -3380($fp)
	lw $t1, -3388($fp)
	add $t0, $t0, $t1
	sw $t0, -3392($fp)
	lw $t0, -3376($fp)
	lw $t1, -3392($fp)
	sw $t0, 0($t1)
	lw $t0, -3392($fp)
	lw $t1, 0($t0)
	sw $t1, -3396($fp)
	li $t0, 40288
	sw $t0, -3400($fp)
	lw $t0, -3400($fp)
	sw $t0, -3404($fp)
	lw $t0, -3404($fp)
	sw $t0, -3408($fp)
	li $t0, 34912
	sw $t0, -3412($fp)
	lw $t0, -3412($fp)
	sw $t0, -3416($fp)
	lw $t0, -3416($fp)
	sw $t0, -3420($fp)
	li $t0, 48731
	sw $t0, -3424($fp)
	lw $t0, -3424($fp)
	sw $t0, -3428($fp)
	lw $t0, -3428($fp)
	sw $t0, -3432($fp)
	li $t0, 26024
	sw $t0, -3436($fp)
	lw $t0, -3436($fp)
	sw $t0, -3440($fp)
	lw $t0, -3440($fp)
	sw $t0, -3444($fp)
	li $t0, 41257
	sw $t0, -3448($fp)
	lw $t0, -3448($fp)
	sw $t0, -3452($fp)
	lw $t0, -3452($fp)
	sw $t0, -3456($fp)
	li $t0, 45780
	sw $t0, -3460($fp)
	addi $t0, $fp, -2964
	sw $t0, -3464($fp)
	li $t0, 0
	sw $t0, -3468($fp)
	lw $t0, -3468($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3472($fp)
	lw $t0, -3464($fp)
	lw $t1, -3472($fp)
	add $t0, $t0, $t1
	sw $t0, -3476($fp)
	lw $t0, -3460($fp)
	lw $t1, -3476($fp)
	sw $t0, 0($t1)
	lw $t0, -3476($fp)
	lw $t1, 0($t0)
	sw $t1, -3480($fp)
	li $t0, 58990
	sw $t0, -3484($fp)
	addi $t0, $fp, -2964
	sw $t0, -3488($fp)
	li $t0, 1
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
	li $t0, 21731
	sw $t0, -3508($fp)
	addi $t0, $fp, -2992
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
	li $t0, 39376
	sw $t0, -3532($fp)
	addi $t0, $fp, -2992
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
	li $t0, 5868
	sw $t0, -3556($fp)
	addi $t0, $fp, -2992
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
	li $t0, 44995
	sw $t0, -3580($fp)
	addi $t0, $fp, -2992
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
	li $t0, 18802
	sw $t0, -3604($fp)
	addi $t0, $fp, -2992
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
	li $t0, 29801
	sw $t0, -3628($fp)
	addi $t0, $fp, -2992
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
	li $t0, 43277
	sw $t0, -3652($fp)
	addi $t0, $fp, -2992
	sw $t0, -3656($fp)
	li $t0, 6
	sw $t0, -3660($fp)
	lw $t0, -3660($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3664($fp)
	lw $t0, -3656($fp)
	lw $t1, -3664($fp)
	add $t0, $t0, $t1
	sw $t0, -3668($fp)
	lw $t0, -3652($fp)
	lw $t1, -3668($fp)
	sw $t0, 0($t1)
	lw $t0, -3668($fp)
	lw $t1, 0($t0)
	sw $t1, -3672($fp)
	li $t0, 43588
	sw $t0, -3676($fp)
	lw $t0, -3676($fp)
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	sw $t0, -3684($fp)
	li $t0, 2672
	sw $t0, -3688($fp)
	lw $t0, -3688($fp)
	sw $t0, -3692($fp)
	lw $t0, -3692($fp)
	sw $t0, -3696($fp)
	li $t0, 22558
	sw $t0, -3700($fp)
	lw $t0, -3700($fp)
	sw $t0, -3704($fp)
	lw $t0, -3704($fp)
	sw $t0, -3708($fp)
	li $t0, 51995
	sw $t0, -3712($fp)
	lw $t0, -3712($fp)
	sw $t0, -3716($fp)
	lw $t0, -3716($fp)
	sw $t0, -3720($fp)
	li $t0, 445
	sw $t0, -3724($fp)
	addi $t0, $fp, -3000
	sw $t0, -3728($fp)
	li $t0, 0
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
	li $t0, 16913
	sw $t0, -3748($fp)
	addi $t0, $fp, -3000
	sw $t0, -3752($fp)
	li $t0, 1
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
	li $t0, 61304
	sw $t0, -3772($fp)
	lw $t0, -3772($fp)
	sw $t0, -3776($fp)
	lw $t0, -3776($fp)
	sw $t0, -3780($fp)
	li $t0, 3251
	sw $t0, -3784($fp)
	addi $t0, $fp, -3024
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
	li $t0, 44547
	sw $t0, -3808($fp)
	addi $t0, $fp, -3024
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
	li $t0, 61108
	sw $t0, -3832($fp)
	addi $t0, $fp, -3024
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
	li $t0, 36417
	sw $t0, -3856($fp)
	addi $t0, $fp, -3024
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
	li $t0, 39081
	sw $t0, -3880($fp)
	addi $t0, $fp, -3024
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
	li $t0, 64138
	sw $t0, -3904($fp)
	addi $t0, $fp, -3024
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
	li $t0, 48488
	sw $t0, -3928($fp)
	lw $t0, -3928($fp)
	sw $t0, -3932($fp)
	lw $t0, -3932($fp)
	sw $t0, -3936($fp)
	li $t0, 14085
	sw $t0, -3940($fp)
	lw $t0, -3940($fp)
	sw $t0, -3944($fp)
	lw $t0, -3944($fp)
	sw $t0, -3948($fp)
	li $t0, 2408
	sw $t0, -3952($fp)
	addi $t0, $fp, -3048
	sw $t0, -3956($fp)
	li $t0, 0
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
	li $t0, 27853
	sw $t0, -3976($fp)
	addi $t0, $fp, -3048
	sw $t0, -3980($fp)
	li $t0, 1
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
	li $t0, 54373
	sw $t0, -4000($fp)
	addi $t0, $fp, -3048
	sw $t0, -4004($fp)
	li $t0, 2
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
	li $t0, 37320
	sw $t0, -4024($fp)
	addi $t0, $fp, -3048
	sw $t0, -4028($fp)
	li $t0, 3
	sw $t0, -4032($fp)
	lw $t0, -4032($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4036($fp)
	lw $t0, -4028($fp)
	lw $t1, -4036($fp)
	add $t0, $t0, $t1
	sw $t0, -4040($fp)
	lw $t0, -4024($fp)
	lw $t1, -4040($fp)
	sw $t0, 0($t1)
	lw $t0, -4040($fp)
	lw $t1, 0($t0)
	sw $t1, -4044($fp)
	li $t0, 11048
	sw $t0, -4048($fp)
	addi $t0, $fp, -3048
	sw $t0, -4052($fp)
	li $t0, 4
	sw $t0, -4056($fp)
	lw $t0, -4056($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4060($fp)
	lw $t0, -4052($fp)
	lw $t1, -4060($fp)
	add $t0, $t0, $t1
	sw $t0, -4064($fp)
	lw $t0, -4048($fp)
	lw $t1, -4064($fp)
	sw $t0, 0($t1)
	lw $t0, -4064($fp)
	lw $t1, 0($t0)
	sw $t1, -4068($fp)
	li $t0, 14862
	sw $t0, -4072($fp)
	addi $t0, $fp, -3048
	sw $t0, -4076($fp)
	li $t0, 5
	sw $t0, -4080($fp)
	lw $t0, -4080($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4084($fp)
	lw $t0, -4076($fp)
	lw $t1, -4084($fp)
	add $t0, $t0, $t1
	sw $t0, -4088($fp)
	lw $t0, -4072($fp)
	lw $t1, -4088($fp)
	sw $t0, 0($t1)
	lw $t0, -4088($fp)
	lw $t1, 0($t0)
	sw $t1, -4092($fp)
	li $t0, 13041
	sw $t0, -4096($fp)
	lw $t0, -4096($fp)
	sw $t0, -4100($fp)
	lw $t0, -4100($fp)
	sw $t0, -4104($fp)
	li $t0, 56828
	sw $t0, -4108($fp)
	lw $t0, -4108($fp)
	sw $t0, -4112($fp)
	lw $t0, -4112($fp)
	sw $t0, -4116($fp)
	li $t0, 8316
	sw $t0, -4120($fp)
	lw $t0, -4120($fp)
	sw $t0, -4124($fp)
	lw $t0, -4124($fp)
	sw $t0, -4128($fp)
	li $t0, 34772
	sw $t0, -4132($fp)
	addi $t0, $fp, -3072
	sw $t0, -4136($fp)
	li $t0, 0
	sw $t0, -4140($fp)
	lw $t0, -4140($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4144($fp)
	lw $t0, -4136($fp)
	lw $t1, -4144($fp)
	add $t0, $t0, $t1
	sw $t0, -4148($fp)
	lw $t0, -4132($fp)
	lw $t1, -4148($fp)
	sw $t0, 0($t1)
	lw $t0, -4148($fp)
	lw $t1, 0($t0)
	sw $t1, -4152($fp)
	li $t0, 30668
	sw $t0, -4156($fp)
	addi $t0, $fp, -3072
	sw $t0, -4160($fp)
	li $t0, 1
	sw $t0, -4164($fp)
	lw $t0, -4164($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4168($fp)
	lw $t0, -4160($fp)
	lw $t1, -4168($fp)
	add $t0, $t0, $t1
	sw $t0, -4172($fp)
	lw $t0, -4156($fp)
	lw $t1, -4172($fp)
	sw $t0, 0($t1)
	lw $t0, -4172($fp)
	lw $t1, 0($t0)
	sw $t1, -4176($fp)
	li $t0, 14184
	sw $t0, -4180($fp)
	addi $t0, $fp, -3072
	sw $t0, -4184($fp)
	li $t0, 2
	sw $t0, -4188($fp)
	lw $t0, -4188($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4192($fp)
	lw $t0, -4184($fp)
	lw $t1, -4192($fp)
	add $t0, $t0, $t1
	sw $t0, -4196($fp)
	lw $t0, -4180($fp)
	lw $t1, -4196($fp)
	sw $t0, 0($t1)
	lw $t0, -4196($fp)
	lw $t1, 0($t0)
	sw $t1, -4200($fp)
	li $t0, 14231
	sw $t0, -4204($fp)
	addi $t0, $fp, -3072
	sw $t0, -4208($fp)
	li $t0, 3
	sw $t0, -4212($fp)
	lw $t0, -4212($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4216($fp)
	lw $t0, -4208($fp)
	lw $t1, -4216($fp)
	add $t0, $t0, $t1
	sw $t0, -4220($fp)
	lw $t0, -4204($fp)
	lw $t1, -4220($fp)
	sw $t0, 0($t1)
	lw $t0, -4220($fp)
	lw $t1, 0($t0)
	sw $t1, -4224($fp)
	li $t0, 49471
	sw $t0, -4228($fp)
	addi $t0, $fp, -3072
	sw $t0, -4232($fp)
	li $t0, 4
	sw $t0, -4236($fp)
	lw $t0, -4236($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4240($fp)
	lw $t0, -4232($fp)
	lw $t1, -4240($fp)
	add $t0, $t0, $t1
	sw $t0, -4244($fp)
	lw $t0, -4228($fp)
	lw $t1, -4244($fp)
	sw $t0, 0($t1)
	lw $t0, -4244($fp)
	lw $t1, 0($t0)
	sw $t1, -4248($fp)
	li $t0, 43985
	sw $t0, -4252($fp)
	addi $t0, $fp, -3072
	sw $t0, -4256($fp)
	li $t0, 5
	sw $t0, -4260($fp)
	lw $t0, -4260($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4264($fp)
	lw $t0, -4256($fp)
	lw $t1, -4264($fp)
	add $t0, $t0, $t1
	sw $t0, -4268($fp)
	lw $t0, -4252($fp)
	lw $t1, -4268($fp)
	sw $t0, 0($t1)
	lw $t0, -4268($fp)
	lw $t1, 0($t0)
	sw $t1, -4272($fp)
label129:
	li $t0, 0
	sw $t0, -4276($fp)
	lw $t0, -724($fp)
	sw $t0, -4280($fp)
	li $t0, 0
	sw $t0, -4284($fp)
	li $t0, 46658
	sw $t0, -4288($fp)
	lw $t0, -3932($fp)
	sw $t0, -4292($fp)
	lw $t0, -4288($fp)
	lw $t1, -4292($fp)
	sub $t0, $t0, $t1
	sw $t0, -4296($fp)
	lw $t1, -4296($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label136
label136:
	li $t0, 14530
	sw $t0, -4300($fp)
	lw $t1, -4300($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label135
label134:
	li $t0, 1
	sw $t0, -4284($fp)
label135:
	lw $t0, -3236($fp)
	sw $t0, -4304($fp)
	lw $t0, -4304($fp)
	sw $t0, -3332($fp)
	lw $t0, -3332($fp)
	sw $t0, -4308($fp)
	li $t0, 0
	sw $t0, -4312($fp)
	li $t0, 57508
	sw $t0, -4316($fp)
	lw $t1, -4316($fp)
	li $t2, 0
	bne $t1, $t2, label140
	j label138
label140:
	lw $t0, -664($fp)
	sw $t0, -4320($fp)
	lw $t1, -4320($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label138
label139:
	li $t0, 27523
	sw $t0, -4324($fp)
	lw $t1, -4324($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label138
label137:
	li $t0, 1
	sw $t0, -4312($fp)
label138:
	addi $sp, $sp, -4
	lw $t0, -4280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4312($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4328($fp)
	addi $sp, $sp, 20
	lw $t1, -4328($fp)
	li $t2, 0
	bne $t1, $t2, label133
	j label132
label132:
	li $t0, 1
	sw $t0, -4276($fp)
label133:
	li $t0, 0
	lw $t1, -4276($fp)
	sub $t0, $t0, $t1
	sw $t0, -4332($fp)
	li $t0, 49536
	sw $t0, -4336($fp)
	lw $t0, -1744($fp)
	sw $t0, -4340($fp)
	lw $t0, -4336($fp)
	lw $t1, -4340($fp)
	sub $t0, $t0, $t1
	sw $t0, -4344($fp)
	li $t0, 3925
	sw $t0, -4348($fp)
	lw $t0, -4344($fp)
	lw $t1, -4348($fp)
	sub $t0, $t0, $t1
	sw $t0, -4352($fp)
	lw $t0, -700($fp)
	sw $t0, -4356($fp)
	lw $t0, -3404($fp)
	sw $t0, -4360($fp)
	lw $t0, -4356($fp)
	lw $t1, -4360($fp)
	mul $t0, $t0, $t1
	sw $t0, -4364($fp)
	lw $t0, -1096($fp)
	sw $t0, -4368($fp)
	lw $t0, -4364($fp)
	lw $t1, -4368($fp)
	add $t0, $t0, $t1
	sw $t0, -4372($fp)
	li $t0, 0
	sw $t0, -4376($fp)
	lw $t0, -1420($fp)
	sw $t0, -4380($fp)
	li $t0, 5323
	sw $t0, -4384($fp)
	lw $t0, -4380($fp)
	lw $t1, -4384($fp)
	add $t0, $t0, $t1
	sw $t0, -4388($fp)
	li $t0, 21235
	sw $t0, -4392($fp)
	lw $t1, -4388($fp)
	lw $t2, -4392($fp)
	ble $t1, $t2, label141
	j label142
label141:
	li $t0, 1
	sw $t0, -4376($fp)
label142:
	lw $t0, -712($fp)
	sw $t0, -4396($fp)
	lw $t0, -3944($fp)
	sw $t0, -4400($fp)
	lw $t0, -4396($fp)
	lw $t1, -4400($fp)
	add $t0, $t0, $t1
	sw $t0, -4404($fp)
	li $t0, 0
	sw $t0, -4408($fp)
	lw $t0, -652($fp)
	sw $t0, -4412($fp)
	li $t0, 50354
	sw $t0, -4416($fp)
	lw $t0, -4412($fp)
	lw $t1, -4416($fp)
	add $t0, $t0, $t1
	sw $t0, -4420($fp)
	li $t0, 10455
	sw $t0, -4424($fp)
	lw $t1, -4420($fp)
	lw $t2, -4424($fp)
	bge $t1, $t2, label143
	j label144
label143:
	li $t0, 1
	sw $t0, -4408($fp)
label144:
	addi $t0, $fp, -32
	sw $t0, -4428($fp)
	lw $t0, -1396($fp)
	sw $t0, -4432($fp)
	li $t0, 4
	lw $t1, -4432($fp)
	mul $t0, $t0, $t1
	sw $t0, -4436($fp)
	lw $t0, -4436($fp)
	lw $t1, -4428($fp)
	add $t0, $t0, $t1
	sw $t0, -4440($fp)
	lw $t0, -4440($fp)
	lw $t1, 0($t0)
	sw $t1, -4444($fp)
	li $t0, 0
	sw $t0, -4448($fp)
	addi $t0, $fp, -68
	sw $t0, -4452($fp)
	lw $t0, -1072($fp)
	sw $t0, -4456($fp)
	li $t0, 4
	lw $t1, -4456($fp)
	mul $t0, $t0, $t1
	sw $t0, -4460($fp)
	lw $t0, -4460($fp)
	lw $t1, -4452($fp)
	add $t0, $t0, $t1
	sw $t0, -4464($fp)
	lw $t0, -4464($fp)
	lw $t1, 0($t0)
	sw $t1, -4468($fp)
	li $t0, 9751
	sw $t0, -4472($fp)
	lw $t1, -4468($fp)
	lw $t2, -4472($fp)
	blt $t1, $t2, label145
	j label146
label145:
	li $t0, 1
	sw $t0, -4448($fp)
label146:
	li $t0, 31443
	sw $t0, -4476($fp)
	addi $sp, $sp, -4
	lw $t0, -4408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4476($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4480($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -4484($fp)
	li $t0, 47103
	sw $t0, -4488($fp)
	li $t0, 0
	lw $t1, -4488($fp)
	sub $t0, $t0, $t1
	sw $t0, -4492($fp)
	lw $t1, -4492($fp)
	li $t2, 0
	bne $t1, $t2, label148
	j label147
label147:
	li $t0, 1
	sw $t0, -4484($fp)
label148:
	addi $sp, $sp, -4
	lw $t0, -4376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4484($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4496($fp)
	addi $sp, $sp, 20
	lw $t0, -1108($fp)
	sw $t0, -4500($fp)
	lw $t0, -1096($fp)
	sw $t0, -4504($fp)
	lw $t0, -4504($fp)
	sw $t0, -3704($fp)
	lw $t0, -3704($fp)
	sw $t0, -4508($fp)
	li $t0, 0
	sw $t0, -4512($fp)
	lw $t0, 4($fp)
	sw $t0, -4516($fp)
	lw $t1, -4516($fp)
	li $t2, 0
	bne $t1, $t2, label150
	j label149
label149:
	li $t0, 1
	sw $t0, -4512($fp)
label150:
	lw $t0, -3776($fp)
	sw $t0, -4520($fp)
	lw $t0, -4512($fp)
	lw $t1, -4520($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4524($fp)
	li $t0, 13982
	sw $t0, -4528($fp)
	addi $sp, $sp, -4
	lw $t0, -4500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4528($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4532($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -4352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4532($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4536($fp)
	addi $sp, $sp, 20
	li $t0, 4187
	sw $t0, -4540($fp)
	lw $t0, -4536($fp)
	lw $t1, -4540($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4544($fp)
	li $t0, 0
	lw $t1, -4544($fp)
	sub $t0, $t0, $t1
	sw $t0, -4548($fp)
	lw $t0, -4332($fp)
	lw $t1, -4548($fp)
	add $t0, $t0, $t1
	sw $t0, -4552($fp)
	lw $t1, -4552($fp)
	li $t2, 0
	bne $t1, $t2, label130
	j label131
label130:
	li $t0, 63622
	sw $t0, -4560($fp)
	lw $t0, -4560($fp)
	sw $t0, -4564($fp)
	lw $t0, -4564($fp)
	sw $t0, -4568($fp)
	li $t0, 6333
	sw $t0, -4572($fp)
	lw $t0, -4572($fp)
	sw $t0, -4576($fp)
	lw $t0, -4576($fp)
	sw $t0, -4580($fp)
	li $t0, 32040
	sw $t0, -4584($fp)
	lw $t0, -4584($fp)
	sw $t0, -4588($fp)
	lw $t0, -4588($fp)
	sw $t0, -4592($fp)
	li $t0, 52459
	sw $t0, -4596($fp)
	lw $t0, -4596($fp)
	sw $t0, -4600($fp)
	lw $t0, -4600($fp)
	sw $t0, -4604($fp)
	li $t0, 43653
	sw $t0, -4608($fp)
	lw $t0, -4608($fp)
	sw $t0, -4612($fp)
	lw $t0, -4612($fp)
	sw $t0, -4616($fp)
	li $t0, 43088
	sw $t0, -4620($fp)
	addi $t0, $fp, -4556
	sw $t0, -4624($fp)
	li $t0, 0
	sw $t0, -4628($fp)
	lw $t0, -4628($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4632($fp)
	lw $t0, -4624($fp)
	lw $t1, -4632($fp)
	add $t0, $t0, $t1
	sw $t0, -4636($fp)
	lw $t0, -4620($fp)
	lw $t1, -4636($fp)
	sw $t0, 0($t1)
	lw $t0, -4636($fp)
	lw $t1, 0($t0)
	sw $t1, -4640($fp)
	li $t0, 1785
	sw $t0, -4652($fp)
	addi $t0, $fp, -4648
	sw $t0, -4656($fp)
	li $t0, 0
	sw $t0, -4660($fp)
	lw $t0, -4660($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4664($fp)
	lw $t0, -4656($fp)
	lw $t1, -4664($fp)
	add $t0, $t0, $t1
	sw $t0, -4668($fp)
	lw $t0, -4652($fp)
	lw $t1, -4668($fp)
	sw $t0, 0($t1)
	lw $t0, -4668($fp)
	lw $t1, 0($t0)
	sw $t1, -4672($fp)
	li $t0, 56694
	sw $t0, -4676($fp)
	addi $t0, $fp, -4648
	sw $t0, -4680($fp)
	li $t0, 1
	sw $t0, -4684($fp)
	lw $t0, -4684($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4688($fp)
	lw $t0, -4680($fp)
	lw $t1, -4688($fp)
	add $t0, $t0, $t1
	sw $t0, -4692($fp)
	lw $t0, -4676($fp)
	lw $t1, -4692($fp)
	sw $t0, 0($t1)
	lw $t0, -4692($fp)
	lw $t1, 0($t0)
	sw $t1, -4696($fp)
	li $t0, 34381
	sw $t0, -4700($fp)
	lw $t0, -4700($fp)
	sw $t0, -4704($fp)
	lw $t0, -4704($fp)
	sw $t0, -4708($fp)
	li $t0, 10101
	sw $t0, -4712($fp)
	lw $t0, -4712($fp)
	sw $t0, -4716($fp)
	lw $t0, -4716($fp)
	sw $t0, -4720($fp)
	li $t0, 25930
	sw $t0, -4724($fp)
	lw $t0, -4724($fp)
	sw $t0, -4728($fp)
	lw $t0, -4728($fp)
	sw $t0, -4732($fp)
	li $t0, 65049
	sw $t0, -4736($fp)
	lw $t0, -4736($fp)
	sw $t0, -4740($fp)
	lw $t0, -4740($fp)
	sw $t0, -4744($fp)
	li $t0, 0
	sw $t0, -4748($fp)
	lw $t0, -3224($fp)
	sw $t0, -4752($fp)
	li $t0, 0
	sw $t0, -4756($fp)
	lw $t0, -3308($fp)
	sw $t0, -4760($fp)
	lw $t0, -4760($fp)
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	sw $t0, -4764($fp)
	li $t0, 41202
	sw $t0, -4768($fp)
	li $t0, 5113
	sw $t0, -4772($fp)
	lw $t0, -4768($fp)
	lw $t1, -4772($fp)
	mul $t0, $t0, $t1
	sw $t0, -4776($fp)
	li $t0, 1
	sw $t0, -4780($fp)
	lw $t0, -4776($fp)
	lw $t1, -4780($fp)
	mul $t0, $t0, $t1
	sw $t0, -4784($fp)
	addi $t0, $fp, -172
	sw $t0, -4788($fp)
	lw $t0, -724($fp)
	sw $t0, -4792($fp)
	li $t0, 4
	lw $t1, -4792($fp)
	mul $t0, $t0, $t1
	sw $t0, -4796($fp)
	lw $t0, -4796($fp)
	lw $t1, -4788($fp)
	add $t0, $t0, $t1
	sw $t0, -4800($fp)
	lw $t0, -4800($fp)
	lw $t1, 0($t0)
	sw $t1, -4804($fp)
	li $t0, 43953
	sw $t0, -4808($fp)
	lw $t0, -4804($fp)
	lw $t1, -4808($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4812($fp)
	lw $t0, -3932($fp)
	sw $t0, -4816($fp)
	addi $sp, $sp, -4
	lw $t0, -4764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4816($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4820($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -4824($fp)
	li $t0, 37014
	sw $t0, -4828($fp)
	li $t0, 7027
	sw $t0, -4832($fp)
	lw $t0, -4828($fp)
	lw $t1, -4832($fp)
	mul $t0, $t0, $t1
	sw $t0, -4836($fp)
	lw $t0, -3716($fp)
	sw $t0, -4840($fp)
	lw $t1, -4836($fp)
	lw $t2, -4840($fp)
	ble $t1, $t2, label158
	j label159
label158:
	li $t0, 1
	sw $t0, -4824($fp)
label159:
	li $t0, 0
	sw $t0, -4844($fp)
	li $t0, 0
	sw $t0, -4848($fp)
	lw $t0, -1624($fp)
	sw $t0, -4852($fp)
	lw $t0, -3308($fp)
	sw $t0, -4856($fp)
	lw $t1, -4852($fp)
	lw $t2, -4856($fp)
	bgt $t1, $t2, label162
	j label163
label162:
	li $t0, 1
	sw $t0, -4848($fp)
label163:
	lw $t0, -1096($fp)
	sw $t0, -4860($fp)
	lw $t1, -4848($fp)
	lw $t2, -4860($fp)
	bne $t1, $t2, label160
	j label161
label160:
	li $t0, 1
	sw $t0, -4844($fp)
label161:
	li $t0, 23026
	sw $t0, -4864($fp)
	li $t0, 40028
	sw $t0, -4868($fp)
	lw $t0, -4864($fp)
	lw $t1, -4868($fp)
	mul $t0, $t0, $t1
	sw $t0, -4872($fp)
	li $t0, 0
	lw $t1, -4872($fp)
	sub $t0, $t0, $t1
	sw $t0, -4876($fp)
	addi $sp, $sp, -4
	lw $t0, -4820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4876($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4880($fp)
	addi $sp, $sp, 20
	li $t0, 7706
	sw $t0, -4884($fp)
	lw $t0, -4880($fp)
	lw $t1, -4884($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4888($fp)
	addi $t0, $fp, -152
	sw $t0, -4892($fp)
	li $t0, 2
	sw $t0, -4896($fp)
	li $t0, 4
	lw $t1, -4896($fp)
	mul $t0, $t0, $t1
	sw $t0, -4900($fp)
	lw $t0, -4900($fp)
	lw $t1, -4892($fp)
	add $t0, $t0, $t1
	sw $t0, -4904($fp)
	lw $t0, -4904($fp)
	lw $t1, 0($t0)
	sw $t1, -4908($fp)
	addi $t0, $fp, -116
	sw $t0, -4912($fp)
	lw $t0, -712($fp)
	sw $t0, -4916($fp)
	li $t0, 4
	lw $t1, -4916($fp)
	mul $t0, $t0, $t1
	sw $t0, -4920($fp)
	lw $t0, -4920($fp)
	lw $t1, -4912($fp)
	add $t0, $t0, $t1
	sw $t0, -4924($fp)
	lw $t0, -4924($fp)
	lw $t1, 0($t0)
	sw $t1, -4928($fp)
	lw $t0, -724($fp)
	sw $t0, -4932($fp)
	lw $t0, -4928($fp)
	lw $t1, -4932($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4936($fp)
	li $t0, 0
	sw $t0, -4940($fp)
	li $t0, 0
	sw $t0, -4944($fp)
	li $t0, 49393
	sw $t0, -4948($fp)
	lw $t1, -4948($fp)
	li $t2, 0
	bne $t1, $t2, label169
	j label167
label169:
	li $t0, 46664
	sw $t0, -4952($fp)
	lw $t1, -4952($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label167
label168:
	li $t0, 24954
	sw $t0, -4956($fp)
	lw $t1, -4956($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label167
label166:
	li $t0, 1
	sw $t0, -4944($fp)
label167:
	li $t0, 10971
	sw $t0, -4960($fp)
	lw $t0, -604($fp)
	sw $t0, -4964($fp)
	lw $t0, -4960($fp)
	lw $t1, -4964($fp)
	mul $t0, $t0, $t1
	sw $t0, -4968($fp)
	addi $t0, $fp, -108
	sw $t0, -4972($fp)
	lw $t0, -3332($fp)
	sw $t0, -4976($fp)
	li $t0, 4
	lw $t1, -4976($fp)
	mul $t0, $t0, $t1
	sw $t0, -4980($fp)
	lw $t0, -4980($fp)
	lw $t1, -4972($fp)
	add $t0, $t0, $t1
	sw $t0, -4984($fp)
	lw $t0, -4984($fp)
	lw $t1, 0($t0)
	sw $t1, -4988($fp)
	addi $t0, $fp, -116
	sw $t0, -4992($fp)
	lw $t0, -3344($fp)
	sw $t0, -4996($fp)
	li $t0, 4
	lw $t1, -4996($fp)
	mul $t0, $t0, $t1
	sw $t0, -5000($fp)
	lw $t0, -5000($fp)
	lw $t1, -4992($fp)
	add $t0, $t0, $t1
	sw $t0, -5004($fp)
	lw $t0, -5004($fp)
	lw $t1, 0($t0)
	sw $t1, -5008($fp)
	addi $sp, $sp, -4
	lw $t0, -4944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5008($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5012($fp)
	addi $sp, $sp, 20
	li $t0, 30960
	sw $t0, -5016($fp)
	lw $t1, -5012($fp)
	lw $t2, -5016($fp)
	bne $t1, $t2, label164
	j label165
label164:
	li $t0, 1
	sw $t0, -4940($fp)
label165:
	li $t0, 32133
	sw $t0, -5020($fp)
	lw $t0, -3704($fp)
	sw $t0, -5024($fp)
	lw $t0, -5020($fp)
	lw $t1, -5024($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5028($fp)
	lw $t0, -688($fp)
	sw $t0, -5032($fp)
	lw $t0, -5028($fp)
	lw $t1, -5032($fp)
	add $t0, $t0, $t1
	sw $t0, -5036($fp)
	li $t0, 0
	sw $t0, -5040($fp)
	li $t0, 0
	sw $t0, -5044($fp)
	lw $t0, -1384($fp)
	sw $t0, -5048($fp)
	lw $t1, -5048($fp)
	li $t2, 0
	bne $t1, $t2, label173
	j label172
label172:
	li $t0, 1
	sw $t0, -5044($fp)
label173:
	li $t0, 2735
	sw $t0, -5052($fp)
	lw $t1, -5044($fp)
	lw $t2, -5052($fp)
	bge $t1, $t2, label170
	j label171
label170:
	li $t0, 1
	sw $t0, -5040($fp)
label171:
	li $t0, 0
	sw $t0, -5056($fp)
	li $t0, 0
	sw $t0, -5060($fp)
	li $t0, 40161
	sw $t0, -5064($fp)
	li $t0, 48984
	sw $t0, -5068($fp)
	lw $t1, -5064($fp)
	lw $t2, -5068($fp)
	bne $t1, $t2, label176
	j label177
label176:
	li $t0, 1
	sw $t0, -5060($fp)
label177:
	lw $t0, -1072($fp)
	sw $t0, -5072($fp)
	lw $t1, -5060($fp)
	lw $t2, -5072($fp)
	bne $t1, $t2, label174
	j label175
label174:
	li $t0, 1
	sw $t0, -5056($fp)
label175:
	addi $sp, $sp, -4
	lw $t0, -4940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5056($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5076($fp)
	addi $sp, $sp, 20
	li $t0, 12571
	sw $t0, -5080($fp)
	lw $t0, -5076($fp)
	lw $t1, -5080($fp)
	mul $t0, $t0, $t1
	sw $t0, -5084($fp)
	addi $sp, $sp, -4
	lw $t0, -4888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5084($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5088($fp)
	addi $sp, $sp, 20
	lw $t0, -1384($fp)
	sw $t0, -5092($fp)
	lw $t1, -5088($fp)
	lw $t2, -5092($fp)
	bgt $t1, $t2, label156
	j label157
label156:
	li $t0, 1
	sw $t0, -4756($fp)
label157:
	lw $t0, -1228($fp)
	sw $t0, -5096($fp)
	li $t0, 24285
	sw $t0, -5100($fp)
	li $t0, 0
	lw $t1, -5100($fp)
	sub $t0, $t0, $t1
	sw $t0, -5104($fp)
	addi $sp, $sp, -4
	lw $t0, -4752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5104($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5108($fp)
	addi $sp, $sp, 20
	lw $t1, -5108($fp)
	li $t2, 0
	bne $t1, $t2, label155
	j label154
label154:
	li $t0, 1
	sw $t0, -4748($fp)
label155:
	lw $t0, -1384($fp)
	sw $t0, -5112($fp)
	lw $t0, -4748($fp)
	lw $t1, -5112($fp)
	sub $t0, $t0, $t1
	sw $t0, -5116($fp)
	lw $t1, -5116($fp)
	li $t2, 0
	bne $t1, $t2, label151
	j label152
label151:
	addi $t0, $fp, -108
	sw $t0, -5120($fp)
	lw $t0, -1060($fp)
	sw $t0, -5124($fp)
	lw $t0, -5124($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -5128($fp)
	li $t0, 4
	lw $t1, -5128($fp)
	mul $t0, $t0, $t1
	sw $t0, -5132($fp)
	lw $t0, -5132($fp)
	lw $t1, -5120($fp)
	add $t0, $t0, $t1
	sw $t0, -5136($fp)
	lw $t0, -5136($fp)
	lw $t1, 0($t0)
	sw $t1, -5140($fp)
	lw $t0, -1036($fp)
	sw $t0, -5144($fp)
	li $t0, 19561
	sw $t0, -5148($fp)
	lw $t0, -5144($fp)
	lw $t1, -5148($fp)
	sub $t0, $t0, $t1
	sw $t0, -5152($fp)
	li $t0, 19640
	sw $t0, -5156($fp)
	lw $t0, -5152($fp)
	lw $t1, -5156($fp)
	sub $t0, $t0, $t1
	sw $t0, -5160($fp)
	addi $t0, $fp, -3000
	sw $t0, -5164($fp)
	li $t0, 0
	sw $t0, -5168($fp)
	li $t0, 4
	lw $t1, -5168($fp)
	mul $t0, $t0, $t1
	sw $t0, -5172($fp)
	lw $t0, -5172($fp)
	lw $t1, -5164($fp)
	add $t0, $t0, $t1
	sw $t0, -5176($fp)
	lw $t0, -5176($fp)
	lw $t1, 0($t0)
	sw $t1, -5180($fp)
	li $t0, 0
	sw $t0, -5184($fp)
	lw $t0, -1384($fp)
	sw $t0, -5188($fp)
	li $t0, 57572
	sw $t0, -5192($fp)
	lw $t1, -5188($fp)
	lw $t2, -5192($fp)
	bgt $t1, $t2, label178
	j label180
label180:
	li $t0, 28403
	sw $t0, -5196($fp)
	lw $t1, -5196($fp)
	li $t2, 0
	bne $t1, $t2, label178
	j label179
label178:
	li $t0, 1
	sw $t0, -5184($fp)
label179:
	lw $t0, 4($fp)
	sw $t0, -5200($fp)
	lw $t0, -5200($fp)
	sw $t0, -3344($fp)
	lw $t0, -3344($fp)
	sw $t0, -5204($fp)
	addi $sp, $sp, -4
	lw $t0, -5160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5204($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5208($fp)
	addi $sp, $sp, 20
	li $t0, 45492
	sw $t0, -5212($fp)
	lw $t0, -5208($fp)
	lw $t1, -5212($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5216($fp)
	lw $t0, -5140($fp)
	lw $t1, -5216($fp)
	sub $t0, $t0, $t1
	sw $t0, -5220($fp)
	j label153
label152:
	li $t0, 0
	sw $t0, -5224($fp)
	lw $t0, -1612($fp)
	sw $t0, -5228($fp)
	lw $t0, -1600($fp)
	sw $t0, -5232($fp)
	lw $t0, -5228($fp)
	lw $t1, -5232($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5236($fp)
	li $t0, 0
	sw $t0, -5240($fp)
	li $t0, 19153
	sw $t0, -5244($fp)
	lw $t1, -5244($fp)
	li $t2, 0
	bne $t1, $t2, label186
	j label185
label185:
	li $t0, 1
	sw $t0, -5240($fp)
label186:
	lw $t0, -5236($fp)
	lw $t1, -5240($fp)
	add $t0, $t0, $t1
	sw $t0, -5248($fp)
	lw $t1, -5248($fp)
	li $t2, 0
	bne $t1, $t2, label181
	j label184
label184:
	li $t0, 28209
	sw $t0, -5252($fp)
	lw $t0, -1228($fp)
	sw $t0, -5256($fp)
	lw $t0, -5252($fp)
	lw $t1, -5256($fp)
	add $t0, $t0, $t1
	sw $t0, -5260($fp)
	li $t0, 20116
	sw $t0, -5264($fp)
	lw $t0, -5260($fp)
	lw $t1, -5264($fp)
	sub $t0, $t0, $t1
	sw $t0, -5268($fp)
	lw $t1, -5268($fp)
	li $t2, 0
	bne $t1, $t2, label181
	j label183
label183:
	lw $t0, -3716($fp)
	sw $t0, -5272($fp)
	li $t0, 0
	sw $t0, -5276($fp)
	li $t0, 2602
	sw $t0, -5280($fp)
	lw $t1, -5280($fp)
	li $t2, 0
	bne $t1, $t2, label188
	j label187
label187:
	li $t0, 1
	sw $t0, -5276($fp)
label188:
	lw $t0, -5272($fp)
	lw $t1, -5276($fp)
	mul $t0, $t0, $t1
	sw $t0, -5284($fp)
	lw $t1, -5284($fp)
	li $t2, 0
	bne $t1, $t2, label181
	j label182
label181:
	li $t0, 1
	sw $t0, -5224($fp)
label182:
label153:
label189:
	li $t0, 30944
	sw $t0, -5288($fp)
	lw $t0, -604($fp)
	sw $t0, -5292($fp)
	lw $t0, -5292($fp)
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, -5296($fp)
	lw $t0, -3680($fp)
	sw $t0, -5300($fp)
	lw $t0, -4728($fp)
	sw $t0, -5304($fp)
	lw $t0, -5300($fp)
	lw $t1, -5304($fp)
	sub $t0, $t0, $t1
	sw $t0, -5308($fp)
	li $t0, 33019
	sw $t0, -5312($fp)
	lw $t0, -5308($fp)
	lw $t1, -5312($fp)
	add $t0, $t0, $t1
	sw $t0, -5316($fp)
	li $t0, 0
	sw $t0, -5320($fp)
	li $t0, 0
	sw $t0, -5324($fp)
	lw $t0, -604($fp)
	sw $t0, -5328($fp)
	lw $t1, -5328($fp)
	li $t2, 0
	bne $t1, $t2, label197
	j label196
label196:
	li $t0, 1
	sw $t0, -5324($fp)
label197:
	li $t0, 47724
	sw $t0, -5332($fp)
	lw $t0, -5324($fp)
	lw $t1, -5332($fp)
	add $t0, $t0, $t1
	sw $t0, -5336($fp)
	li $t0, 0
	sw $t0, -5340($fp)
	li $t0, 0
	sw $t0, -5344($fp)
	lw $t0, -4716($fp)
	sw $t0, -5348($fp)
	li $t0, 3439
	sw $t0, -5352($fp)
	lw $t1, -5348($fp)
	lw $t2, -5352($fp)
	ble $t1, $t2, label200
	j label201
label200:
	li $t0, 1
	sw $t0, -5344($fp)
label201:
	lw $t0, -3308($fp)
	sw $t0, -5356($fp)
	lw $t1, -5344($fp)
	lw $t2, -5356($fp)
	beq $t1, $t2, label198
	j label199
label198:
	li $t0, 1
	sw $t0, -5340($fp)
label199:
	li $t0, 0
	sw $t0, -5360($fp)
	li $t0, 7696
	sw $t0, -5364($fp)
	li $t0, 61540
	sw $t0, -5368($fp)
	lw $t1, -5364($fp)
	lw $t2, -5368($fp)
	bne $t1, $t2, label202
	j label203
label202:
	li $t0, 1
	sw $t0, -5360($fp)
label203:
	lw $t0, -724($fp)
	sw $t0, -5372($fp)
	li $t0, 0
	sw $t0, -5376($fp)
	addi $t0, $fp, -4556
	sw $t0, -5380($fp)
	li $t0, 0
	sw $t0, -5384($fp)
	li $t0, 4
	lw $t1, -5384($fp)
	mul $t0, $t0, $t1
	sw $t0, -5388($fp)
	lw $t0, -5388($fp)
	lw $t1, -5380($fp)
	add $t0, $t0, $t1
	sw $t0, -5392($fp)
	lw $t0, -5392($fp)
	lw $t1, 0($t0)
	sw $t1, -5396($fp)
	lw $t1, -5396($fp)
	li $t2, 0
	bne $t1, $t2, label205
	j label204
label204:
	li $t0, 1
	sw $t0, -5376($fp)
label205:
	lw $t0, -3308($fp)
	sw $t0, -5400($fp)
	addi $sp, $sp, -4
	lw $t0, -5360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5400($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5404($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -5408($fp)
	li $t0, 0
	sw $t0, -5412($fp)
	lw $t0, -4704($fp)
	sw $t0, -5416($fp)
	li $t0, 33377
	sw $t0, -5420($fp)
	lw $t1, -5416($fp)
	lw $t2, -5420($fp)
	beq $t1, $t2, label208
	j label209
label208:
	li $t0, 1
	sw $t0, -5412($fp)
label209:
	li $t0, 38527
	sw $t0, -5424($fp)
	lw $t1, -5412($fp)
	lw $t2, -5424($fp)
	bne $t1, $t2, label206
	j label207
label206:
	li $t0, 1
	sw $t0, -5408($fp)
label207:
	addi $sp, $sp, -4
	lw $t0, -5336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5408($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5428($fp)
	addi $sp, $sp, 20
	lw $t0, -3320($fp)
	sw $t0, -5432($fp)
	li $t0, 52249
	sw $t0, -5436($fp)
	li $t0, 13573
	sw $t0, -5440($fp)
	lw $t0, -5436($fp)
	lw $t1, -5440($fp)
	mul $t0, $t0, $t1
	sw $t0, -5444($fp)
	li $t0, 14801
	sw $t0, -5448($fp)
	lw $t0, -5444($fp)
	lw $t1, -5448($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5452($fp)
	li $t0, 0
	sw $t0, -5456($fp)
	lw $t0, -652($fp)
	sw $t0, -5460($fp)
	lw $t1, -5460($fp)
	li $t2, 0
	bne $t1, $t2, label210
	j label212
label212:
	lw $t0, -1384($fp)
	sw $t0, -5464($fp)
	lw $t1, -5464($fp)
	li $t2, 0
	bne $t1, $t2, label210
	j label211
label210:
	li $t0, 1
	sw $t0, -5456($fp)
label211:
	addi $sp, $sp, -4
	lw $t0, -5428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5456($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5468($fp)
	addi $sp, $sp, 20
	lw $t1, -5468($fp)
	li $t2, 0
	bne $t1, $t2, label195
	j label194
label195:
	lw $t0, -1072($fp)
	sw $t0, -5472($fp)
	lw $t1, -5472($fp)
	li $t2, 0
	bne $t1, $t2, label193
	j label194
label193:
	li $t0, 1
	sw $t0, -5320($fp)
label194:
	addi $t0, $fp, -172
	sw $t0, -5476($fp)
	lw $t0, -4740($fp)
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
	addi $sp, $sp, -4
	lw $t0, -5296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5492($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5496($fp)
	addi $sp, $sp, 20
	lw $t1, -5288($fp)
	lw $t2, -5496($fp)
	beq $t1, $t2, label192
	j label191
label192:
	addi $t0, $fp, -4648
	sw $t0, -5500($fp)
	li $t0, 1
	sw $t0, -5504($fp)
	li $t0, 4
	lw $t1, -5504($fp)
	mul $t0, $t0, $t1
	sw $t0, -5508($fp)
	lw $t0, -5508($fp)
	lw $t1, -5500($fp)
	add $t0, $t0, $t1
	sw $t0, -5512($fp)
	lw $t0, -5512($fp)
	lw $t1, 0($t0)
	sw $t1, -5516($fp)
	lw $t1, -5516($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label190
label190:
	li $t0, 0
	sw $t0, -5520($fp)
	li $t0, 15579
	sw $t0, -5524($fp)
	lw $t0, -1396($fp)
	sw $t0, -5528($fp)
	lw $t1, -5524($fp)
	lw $t2, -5528($fp)
	beq $t1, $t2, label213
	j label215
label215:
	li $t0, 10891
	sw $t0, -5532($fp)
	lw $t1, -5532($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label214
label213:
	li $t0, 1
	sw $t0, -5520($fp)
label214:
	li $t0, 8685
	sw $t0, -5536($fp)
	li $t0, 0
	sw $t0, -5540($fp)
	lw $t0, -3932($fp)
	sw $t0, -5544($fp)
	lw $t0, -1384($fp)
	sw $t0, -5548($fp)
	lw $t0, -5544($fp)
	lw $t1, -5548($fp)
	add $t0, $t0, $t1
	sw $t0, -5552($fp)
	lw $t0, -1072($fp)
	sw $t0, -5556($fp)
	lw $t1, -5552($fp)
	lw $t2, -5556($fp)
	beq $t1, $t2, label216
	j label217
label216:
	li $t0, 1
	sw $t0, -5540($fp)
label217:
	li $t0, 0
	sw $t0, -5560($fp)
	li $t0, 0
	sw $t0, -5564($fp)
	lw $t0, 4($fp)
	sw $t0, -5568($fp)
	lw $t1, -5568($fp)
	li $t2, 0
	bne $t1, $t2, label221
	j label220
label220:
	li $t0, 1
	sw $t0, -5564($fp)
label221:
	lw $t0, -1120($fp)
	sw $t0, -5572($fp)
	lw $t1, -5564($fp)
	lw $t2, -5572($fp)
	bne $t1, $t2, label218
	j label219
label218:
	li $t0, 1
	sw $t0, -5560($fp)
label219:
	addi $sp, $sp, -4
	lw $t0, -5520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5560($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5576($fp)
	addi $sp, $sp, 20
	j label189
label191:
	li $t0, 0
	sw $t0, -5580($fp)
	li $t0, 0
	sw $t0, -5584($fp)
	li $t0, 16391
	sw $t0, -5588($fp)
	li $t0, 7616
	sw $t0, -5592($fp)
	li $t0, 0
	lw $t1, -5592($fp)
	sub $t0, $t0, $t1
	sw $t0, -5596($fp)
	lw $t0, -5588($fp)
	lw $t1, -5596($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5600($fp)
	li $t0, 0
	lw $t1, -5600($fp)
	sub $t0, $t0, $t1
	sw $t0, -5604($fp)
	lw $t1, -5604($fp)
	li $t2, 0
	bne $t1, $t2, label226
	j label225
label225:
	li $t0, 1
	sw $t0, -5584($fp)
label226:
	addi $t0, $fp, -3072
	sw $t0, -5608($fp)
	lw $t0, -1084($fp)
	sw $t0, -5612($fp)
	li $t0, 4
	lw $t1, -5612($fp)
	mul $t0, $t0, $t1
	sw $t0, -5616($fp)
	lw $t0, -5616($fp)
	lw $t1, -5608($fp)
	add $t0, $t0, $t1
	sw $t0, -5620($fp)
	lw $t0, -5620($fp)
	lw $t1, 0($t0)
	sw $t1, -5624($fp)
	lw $t0, -5584($fp)
	lw $t1, -5624($fp)
	sub $t0, $t0, $t1
	sw $t0, -5628($fp)
	lw $t1, -5628($fp)
	li $t2, 0
	bne $t1, $t2, label224
	j label223
label224:
	addi $t0, $fp, -152
	sw $t0, -5632($fp)
	lw $t0, -1060($fp)
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
	lw $t1, -5648($fp)
	li $t2, 0
	bne $t1, $t2, label223
	j label222
label222:
	li $t0, 1
	sw $t0, -5580($fp)
label223:
label227:
	li $t0, 5361
	sw $t0, -5652($fp)
	li $t0, 0
	sw $t0, -5656($fp)
	li $t0, 0
	sw $t0, -5660($fp)
	lw $t0, -4564($fp)
	sw $t0, -5664($fp)
	lw $t0, -1624($fp)
	sw $t0, -5668($fp)
	lw $t1, -5664($fp)
	lw $t2, -5668($fp)
	bne $t1, $t2, label233
	j label234
label233:
	li $t0, 1
	sw $t0, -5660($fp)
label234:
	li $t0, 21290
	sw $t0, -5672($fp)
	lw $t1, -5660($fp)
	lw $t2, -5672($fp)
	bne $t1, $t2, label231
	j label232
label231:
	li $t0, 1
	sw $t0, -5656($fp)
label232:
	li $t0, 0
	sw $t0, -5676($fp)
	li $t0, 0
	sw $t0, -5680($fp)
	li $t0, 1650
	sw $t0, -5684($fp)
	li $t0, 1438
	sw $t0, -5688($fp)
	lw $t1, -5684($fp)
	lw $t2, -5688($fp)
	beq $t1, $t2, label237
	j label238
label237:
	li $t0, 1
	sw $t0, -5680($fp)
label238:
	li $t0, 58855
	sw $t0, -5692($fp)
	lw $t1, -5680($fp)
	lw $t2, -5692($fp)
	beq $t1, $t2, label235
	j label236
label235:
	li $t0, 1
	sw $t0, -5676($fp)
label236:
	lw $t0, -652($fp)
	sw $t0, -5696($fp)
	lw $t0, -3224($fp)
	sw $t0, -5700($fp)
	lw $t0, -5696($fp)
	lw $t1, -5700($fp)
	add $t0, $t0, $t1
	sw $t0, -5704($fp)
	li $t0, 39294
	sw $t0, -5708($fp)
	lw $t0, -5704($fp)
	lw $t1, -5708($fp)
	sub $t0, $t0, $t1
	sw $t0, -5712($fp)
	addi $sp, $sp, -4
	lw $t0, -5652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5712($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5716($fp)
	addi $sp, $sp, 20
	lw $t1, -5716($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label230
label230:
	li $t0, 38810
	sw $t0, -5720($fp)
	lw $t1, -5720($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label229
label228:
	li $t0, 0
	sw $t0, -5724($fp)
	li $t0, 43046
	sw $t0, -5728($fp)
	li $t0, 0
	lw $t1, -5728($fp)
	sub $t0, $t0, $t1
	sw $t0, -5732($fp)
	li $t0, 64514
	sw $t0, -5736($fp)
	lw $t1, -5732($fp)
	lw $t2, -5736($fp)
	bgt $t1, $t2, label242
	j label243
label242:
	li $t0, 1
	sw $t0, -5724($fp)
label243:
	li $t0, 0
	sw $t0, -5740($fp)
	li $t0, 58926
	sw $t0, -5744($fp)
	lw $t0, -1228($fp)
	sw $t0, -5748($fp)
	lw $t0, -5744($fp)
	lw $t1, -5748($fp)
	mul $t0, $t0, $t1
	sw $t0, -5752($fp)
	lw $t0, -4588($fp)
	sw $t0, -5756($fp)
	lw $t1, -5752($fp)
	lw $t2, -5756($fp)
	bgt $t1, $t2, label244
	j label245
label244:
	li $t0, 1
	sw $t0, -5740($fp)
label245:
	li $t0, 0
	sw $t0, -5760($fp)
	lw $t0, -736($fp)
	sw $t0, -5764($fp)
	li $t0, 33570
	sw $t0, -5768($fp)
	lw $t0, -5764($fp)
	lw $t1, -5768($fp)
	mul $t0, $t0, $t1
	sw $t0, -5772($fp)
	lw $t0, -1072($fp)
	sw $t0, -5776($fp)
	lw $t1, -5772($fp)
	lw $t2, -5776($fp)
	blt $t1, $t2, label246
	j label247
label246:
	li $t0, 1
	sw $t0, -5760($fp)
label247:
	li $t0, 40444
	sw $t0, -5780($fp)
	lw $t0, -5780($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -5784($fp)
	addi $sp, $sp, -4
	lw $t0, -5724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5784($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5788($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -5788($fp)
	sub $t0, $t0, $t1
	sw $t0, -5792($fp)
	lw $t1, -5792($fp)
	li $t2, 0
	bne $t1, $t2, label239
	j label240
label239:
label248:
	addi $t0, $fp, -4556
	sw $t0, -5796($fp)
	li $t0, 0
	sw $t0, -5800($fp)
	li $t0, 45640
	sw $t0, -5804($fp)
	lw $t1, -5804($fp)
	li $t2, 0
	bne $t1, $t2, label253
	j label252
label253:
	lw $t0, -1084($fp)
	sw $t0, -5808($fp)
	lw $t1, -5808($fp)
	li $t2, 0
	bne $t1, $t2, label251
	j label252
label251:
	li $t0, 1
	sw $t0, -5800($fp)
label252:
	li $t0, 4
	lw $t1, -5800($fp)
	mul $t0, $t0, $t1
	sw $t0, -5812($fp)
	lw $t0, -5812($fp)
	lw $t1, -5796($fp)
	add $t0, $t0, $t1
	sw $t0, -5816($fp)
	lw $t0, -5816($fp)
	lw $t1, 0($t0)
	sw $t1, -5820($fp)
	li $t0, 56619
	sw $t0, -5824($fp)
	lw $t0, -5820($fp)
	lw $t1, -5824($fp)
	mul $t0, $t0, $t1
	sw $t0, -5828($fp)
	addi $t0, $fp, -3072
	sw $t0, -5832($fp)
	li $t0, 0
	sw $t0, -5836($fp)
	lw $t0, -4576($fp)
	sw $t0, -5840($fp)
	lw $t0, -1048($fp)
	sw $t0, -5844($fp)
	lw $t1, -5840($fp)
	lw $t2, -5844($fp)
	ble $t1, $t2, label254
	j label255
label254:
	li $t0, 1
	sw $t0, -5836($fp)
label255:
	li $t0, 4
	lw $t1, -5836($fp)
	mul $t0, $t0, $t1
	sw $t0, -5848($fp)
	lw $t0, -5848($fp)
	lw $t1, -5832($fp)
	add $t0, $t0, $t1
	sw $t0, -5852($fp)
	lw $t0, -5852($fp)
	lw $t1, 0($t0)
	sw $t1, -5856($fp)
	lw $t0, -5828($fp)
	lw $t1, -5856($fp)
	mul $t0, $t0, $t1
	sw $t0, -5860($fp)
	lw $t1, -5860($fp)
	li $t2, 0
	bne $t1, $t2, label249
	j label250
label249:
	lw $t0, -1420($fp)
	sw $t0, -5864($fp)
	li $t0, 13482
	sw $t0, -5868($fp)
	lw $t0, -5864($fp)
	lw $t1, -5868($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5872($fp)
	lw $t0, -4612($fp)
	sw $t0, -5876($fp)
	li $t0, 0
	lw $t1, -5876($fp)
	sub $t0, $t0, $t1
	sw $t0, -5880($fp)
	li $t0, 59541
	sw $t0, -5884($fp)
	li $t0, 59430
	sw $t0, -5888($fp)
	lw $t0, -5884($fp)
	lw $t1, -5888($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5892($fp)
	li $t0, 37307
	sw $t0, -5896($fp)
	lw $t0, -5892($fp)
	lw $t1, -5896($fp)
	sub $t0, $t0, $t1
	sw $t0, -5900($fp)
	li $t0, 0
	sw $t0, -5904($fp)
	lw $t0, -4600($fp)
	sw $t0, -5908($fp)
	lw $t1, -5908($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label259
label259:
	lw $t0, 4($fp)
	sw $t0, -5912($fp)
	lw $t1, -5912($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label258
label258:
	li $t0, 29611
	sw $t0, -5916($fp)
	lw $t1, -5916($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label257
label256:
	li $t0, 1
	sw $t0, -5904($fp)
label257:
	lw $t0, -1072($fp)
	sw $t0, -5920($fp)
	lw $t0, -628($fp)
	sw $t0, -5924($fp)
	lw $t0, -5920($fp)
	lw $t1, -5924($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5928($fp)
	lw $t0, -1396($fp)
	sw $t0, -5932($fp)
	lw $t0, -5928($fp)
	lw $t1, -5932($fp)
	add $t0, $t0, $t1
	sw $t0, -5936($fp)
	addi $sp, $sp, -4
	lw $t0, -5880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5936($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5940($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -5940($fp)
	sub $t0, $t0, $t1
	sw $t0, -5944($fp)
	lw $t0, -5872($fp)
	lw $t1, -5944($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5948($fp)
	j label248
label250:
	j label241
label240:
	li $t0, 0
	sw $t0, -5952($fp)
	addi $t0, $fp, -172
	sw $t0, -5956($fp)
	li $t0, 0
	sw $t0, -5960($fp)
	li $t0, 55545
	sw $t0, -5964($fp)
	lw $t1, -5964($fp)
	li $t2, 0
	bne $t1, $t2, label263
	j label262
label262:
	li $t0, 1
	sw $t0, -5960($fp)
label263:
	li $t0, 4
	lw $t1, -5960($fp)
	mul $t0, $t0, $t1
	sw $t0, -5968($fp)
	lw $t0, -5968($fp)
	lw $t1, -5956($fp)
	add $t0, $t0, $t1
	sw $t0, -5972($fp)
	lw $t0, -5972($fp)
	lw $t1, 0($t0)
	sw $t1, -5976($fp)
	lw $t1, -5976($fp)
	li $t2, 0
	bne $t1, $t2, label261
	j label260
label260:
	li $t0, 1
	sw $t0, -5952($fp)
label261:
label241:
	j label227
label229:
label264:
	li $t0, 0
	sw $t0, -5980($fp)
	lw $t0, -3404($fp)
	sw $t0, -5984($fp)
	lw $t1, -5984($fp)
	li $t2, 0
	bne $t1, $t2, label269
	j label268
label268:
	li $t0, 1
	sw $t0, -5980($fp)
label269:
	li $t0, 62870
	sw $t0, -5988($fp)
	lw $t0, -5980($fp)
	lw $t1, -5988($fp)
	add $t0, $t0, $t1
	sw $t0, -5992($fp)
	li $t0, 19496
	sw $t0, -5996($fp)
	lw $t0, -5992($fp)
	lw $t1, -5996($fp)
	sub $t0, $t0, $t1
	sw $t0, -6000($fp)
	li $t0, 23028
	sw $t0, -6004($fp)
	li $t0, 0
	lw $t1, -6004($fp)
	sub $t0, $t0, $t1
	sw $t0, -6008($fp)
	li $t0, 7800
	sw $t0, -6012($fp)
	lw $t0, -6008($fp)
	lw $t1, -6012($fp)
	sub $t0, $t0, $t1
	sw $t0, -6016($fp)
	lw $t1, -6000($fp)
	lw $t2, -6016($fp)
	bgt $t1, $t2, label267
	j label266
label267:
	li $t0, 45637
	sw $t0, -6020($fp)
	li $t0, 0
	sw $t0, -6024($fp)
	li $t0, 31713
	sw $t0, -6028($fp)
	lw $t1, -6028($fp)
	li $t2, 0
	bne $t1, $t2, label271
	j label270
label270:
	li $t0, 1
	sw $t0, -6024($fp)
label271:
	lw $t0, -6020($fp)
	lw $t1, -6024($fp)
	mul $t0, $t0, $t1
	sw $t0, -6032($fp)
	lw $t1, -6032($fp)
	li $t2, 0
	bne $t1, $t2, label265
	j label266
label265:
	li $t0, 23380
	sw $t0, -6036($fp)
	lw $t0, -6036($fp)
	sw $t0, -6040($fp)
	lw $t0, -6040($fp)
	sw $t0, -6044($fp)
	li $t0, 0
	sw $t0, -6048($fp)
	lw $t0, -6040($fp)
	sw $t0, -6052($fp)
	li $t0, 30996
	sw $t0, -6056($fp)
	li $t0, 48105
	sw $t0, -6060($fp)
	lw $t0, -6060($fp)
	sw $t0, -3776($fp)
	lw $t0, -3776($fp)
	sw $t0, -6064($fp)
	li $t0, 0
	sw $t0, -6068($fp)
	lw $t0, -1240($fp)
	sw $t0, -6072($fp)
	lw $t0, -700($fp)
	sw $t0, -6076($fp)
	lw $t1, -6072($fp)
	lw $t2, -6076($fp)
	ble $t1, $t2, label274
	j label276
label276:
	li $t0, 56529
	sw $t0, -6080($fp)
	lw $t1, -6080($fp)
	li $t2, 0
	bne $t1, $t2, label274
	j label275
label274:
	li $t0, 1
	sw $t0, -6068($fp)
label275:
	addi $sp, $sp, -4
	lw $t0, -6052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6068($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6084($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -6084($fp)
	sub $t0, $t0, $t1
	sw $t0, -6088($fp)
	addi $t0, $fp, -172
	sw $t0, -6092($fp)
	lw $t0, 16($fp)
	sw $t0, -6096($fp)
	li $t0, 4
	lw $t1, -6096($fp)
	mul $t0, $t0, $t1
	sw $t0, -6100($fp)
	lw $t0, -6100($fp)
	lw $t1, -6092($fp)
	add $t0, $t0, $t1
	sw $t0, -6104($fp)
	lw $t0, -6104($fp)
	lw $t1, 0($t0)
	sw $t1, -6108($fp)
	li $t0, 32434
	sw $t0, -6112($fp)
	lw $t0, -6108($fp)
	lw $t1, -6112($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6116($fp)
	li $t0, 0
	sw $t0, -6120($fp)
	li $t0, 30287
	sw $t0, -6124($fp)
	lw $t1, -6124($fp)
	li $t2, 0
	bne $t1, $t2, label278
	j label279
label279:
	li $t0, 49755
	sw $t0, -6128($fp)
	lw $t1, -6128($fp)
	li $t2, 0
	bne $t1, $t2, label277
	j label278
label277:
	li $t0, 1
	sw $t0, -6120($fp)
label278:
	li $t0, 0
	sw $t0, -6132($fp)
	addi $t0, $fp, -3024
	sw $t0, -6136($fp)
	lw $t0, -1468($fp)
	sw $t0, -6140($fp)
	li $t0, 4
	lw $t1, -6140($fp)
	mul $t0, $t0, $t1
	sw $t0, -6144($fp)
	lw $t0, -6144($fp)
	lw $t1, -6136($fp)
	add $t0, $t0, $t1
	sw $t0, -6148($fp)
	lw $t0, -6148($fp)
	lw $t1, 0($t0)
	sw $t1, -6152($fp)
	lw $t0, -3932($fp)
	sw $t0, -6156($fp)
	lw $t1, -6152($fp)
	lw $t2, -6156($fp)
	bne $t1, $t2, label280
	j label281
label280:
	li $t0, 1
	sw $t0, -6132($fp)
label281:
	li $t0, 0
	sw $t0, -6160($fp)
	lw $t0, -1384($fp)
	sw $t0, -6164($fp)
	lw $t1, -6164($fp)
	li $t2, 0
	bne $t1, $t2, label283
	j label284
label284:
	lw $t0, -1228($fp)
	sw $t0, -6168($fp)
	lw $t1, -6168($fp)
	li $t2, 0
	bne $t1, $t2, label282
	j label283
label282:
	li $t0, 1
	sw $t0, -6160($fp)
label283:
	addi $sp, $sp, -4
	lw $t0, -6116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6160($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6172($fp)
	addi $sp, $sp, 20
	lw $t1, -6088($fp)
	lw $t2, -6172($fp)
	beq $t1, $t2, label272
	j label273
label272:
	li $t0, 1
	sw $t0, -6048($fp)
label273:
	li $t0, 23607
	sw $t0, -6176($fp)
	j label264
label266:
	j label129
label131:
label285:
	li $t0, 5510
	sw $t0, -6180($fp)
	li $t0, 0
	lw $t1, -6180($fp)
	sub $t0, $t0, $t1
	sw $t0, -6184($fp)
	lw $t0, -1228($fp)
	sw $t0, -6188($fp)
	li $t0, 0
	lw $t1, -6188($fp)
	sub $t0, $t0, $t1
	sw $t0, -6192($fp)
	li $t0, 0
	lw $t1, -6192($fp)
	sub $t0, $t0, $t1
	sw $t0, -6196($fp)
	lw $t1, -6184($fp)
	lw $t2, -6196($fp)
	blt $t1, $t2, label286
	j label288
label288:
	lw $t0, -3308($fp)
	sw $t0, -6200($fp)
	li $t0, 0
	sw $t0, -6204($fp)
	addi $t0, $fp, -32
	sw $t0, -6208($fp)
	lw $t0, -1396($fp)
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
	lw $t0, -1456($fp)
	sw $t0, -6228($fp)
	lw $t1, -6224($fp)
	lw $t2, -6228($fp)
	beq $t1, $t2, label289
	j label290
label289:
	li $t0, 1
	sw $t0, -6204($fp)
label290:
	lw $t0, -3260($fp)
	sw $t0, -6232($fp)
	lw $t0, -652($fp)
	sw $t0, -6236($fp)
	lw $t0, -6232($fp)
	lw $t1, -6236($fp)
	mul $t0, $t0, $t1
	sw $t0, -6240($fp)
	li $t0, 62417
	sw $t0, -6244($fp)
	lw $t0, -6240($fp)
	lw $t1, -6244($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6248($fp)
	li $t0, 37795
	sw $t0, -6252($fp)
	addi $sp, $sp, -4
	lw $t0, -6200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6252($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6256($fp)
	addi $sp, $sp, 20
	lw $t0, -1072($fp)
	sw $t0, -6260($fp)
	lw $t0, 12($fp)
	sw $t0, -6264($fp)
	lw $t0, -6260($fp)
	lw $t1, -6264($fp)
	add $t0, $t0, $t1
	sw $t0, -6268($fp)
	lw $t1, -6256($fp)
	lw $t2, -6268($fp)
	bne $t1, $t2, label286
	j label287
label286:
label291:
	li $t0, 0
	sw $t0, -6272($fp)
	lw $t0, -1036($fp)
	sw $t0, -6276($fp)
	lw $t1, -6276($fp)
	li $t2, 0
	bne $t1, $t2, label296
	j label294
label296:
	lw $t0, -3224($fp)
	sw $t0, -6280($fp)
	lw $t1, -6280($fp)
	li $t2, 0
	bne $t1, $t2, label294
	j label295
label294:
	li $t0, 1
	sw $t0, -6272($fp)
label295:
	li $t0, 0
	sw $t0, -6284($fp)
	lw $t0, -688($fp)
	sw $t0, -6288($fp)
	li $t0, 0
	lw $t1, -6288($fp)
	sub $t0, $t0, $t1
	sw $t0, -6292($fp)
	lw $t1, -6292($fp)
	li $t2, 0
	bne $t1, $t2, label298
	j label297
label297:
	li $t0, 1
	sw $t0, -6284($fp)
label298:
	addi $t0, $fp, -3000
	sw $t0, -6296($fp)
	lw $t0, -3944($fp)
	sw $t0, -6300($fp)
	li $t0, 4
	lw $t1, -6300($fp)
	mul $t0, $t0, $t1
	sw $t0, -6304($fp)
	lw $t0, -6304($fp)
	lw $t1, -6296($fp)
	add $t0, $t0, $t1
	sw $t0, -6308($fp)
	lw $t0, -6308($fp)
	lw $t1, 0($t0)
	sw $t1, -6312($fp)
	li $t0, 0
	sw $t0, -6316($fp)
	li $t0, 0
	sw $t0, -6320($fp)
	li $t0, 45954
	sw $t0, -6324($fp)
	lw $t1, -6324($fp)
	li $t2, 0
	bne $t1, $t2, label302
	j label301
label301:
	li $t0, 1
	sw $t0, -6320($fp)
label302:
	li $t0, 5830
	sw $t0, -6328($fp)
	lw $t1, -6320($fp)
	lw $t2, -6328($fp)
	beq $t1, $t2, label299
	j label300
label299:
	li $t0, 1
	sw $t0, -6316($fp)
label300:
	addi $sp, $sp, -4
	lw $t0, -6272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6316($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6332($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -6336($fp)
	lw $t0, 16($fp)
	sw $t0, -6340($fp)
	lw $t1, -6340($fp)
	li $t2, 0
	bne $t1, $t2, label304
	j label303
label303:
	li $t0, 1
	sw $t0, -6336($fp)
label304:
	li $t0, 2602
	sw $t0, -6344($fp)
	lw $t0, -6336($fp)
	lw $t1, -6344($fp)
	sub $t0, $t0, $t1
	sw $t0, -6348($fp)
	li $t0, 0
	sw $t0, -6352($fp)
	lw $t0, 4($fp)
	sw $t0, -6356($fp)
	li $t0, 43288
	sw $t0, -6360($fp)
	lw $t0, -6356($fp)
	lw $t1, -6360($fp)
	add $t0, $t0, $t1
	sw $t0, -6364($fp)
	li $t0, 15930
	sw $t0, -6368($fp)
	lw $t1, -6364($fp)
	lw $t2, -6368($fp)
	ble $t1, $t2, label305
	j label306
label305:
	li $t0, 1
	sw $t0, -6352($fp)
label306:
	li $t0, 0
	sw $t0, -6372($fp)
	li $t0, 12593
	sw $t0, -6376($fp)
	lw $t1, -6376($fp)
	li $t2, 0
	bne $t1, $t2, label308
	j label309
label309:
	lw $t0, -1096($fp)
	sw $t0, -6380($fp)
	lw $t1, -6380($fp)
	li $t2, 0
	bne $t1, $t2, label307
	j label308
label307:
	li $t0, 1
	sw $t0, -6372($fp)
label308:
	li $t0, 0
	sw $t0, -6384($fp)
	lw $t0, -1060($fp)
	sw $t0, -6388($fp)
	lw $t0, -1120($fp)
	sw $t0, -6392($fp)
	lw $t0, -6388($fp)
	lw $t1, -6392($fp)
	mul $t0, $t0, $t1
	sw $t0, -6396($fp)
	lw $t1, -6396($fp)
	li $t2, 0
	bne $t1, $t2, label310
	j label312
label312:
	li $t0, 44158
	sw $t0, -6400($fp)
	lw $t1, -6400($fp)
	li $t2, 0
	bne $t1, $t2, label310
	j label311
label310:
	li $t0, 1
	sw $t0, -6384($fp)
label311:
	addi $sp, $sp, -4
	lw $t0, -6348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6384($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6404($fp)
	addi $sp, $sp, 20
	li $t0, 40622
	sw $t0, -6408($fp)
	lw $t0, -6404($fp)
	lw $t1, -6408($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6412($fp)
	addi $t0, $fp, -32
	sw $t0, -6416($fp)
	li $t0, 1
	sw $t0, -6420($fp)
	li $t0, 4
	lw $t1, -6420($fp)
	mul $t0, $t0, $t1
	sw $t0, -6424($fp)
	lw $t0, -6424($fp)
	lw $t1, -6416($fp)
	add $t0, $t0, $t1
	sw $t0, -6428($fp)
	lw $t0, -6428($fp)
	lw $t1, 0($t0)
	sw $t1, -6432($fp)
	li $t0, 0
	sw $t0, -6436($fp)
	li $t0, 35912
	sw $t0, -6440($fp)
	lw $t1, -6440($fp)
	li $t2, 0
	bne $t1, $t2, label314
	j label313
label313:
	li $t0, 1
	sw $t0, -6436($fp)
label314:
	li $t0, 14547
	sw $t0, -6444($fp)
	lw $t0, -6436($fp)
	lw $t1, -6444($fp)
	sub $t0, $t0, $t1
	sw $t0, -6448($fp)
	li $t0, 0
	sw $t0, -6452($fp)
	addi $t0, $fp, -2956
	sw $t0, -6456($fp)
	li $t0, 0
	sw $t0, -6460($fp)
	li $t0, 4
	lw $t1, -6460($fp)
	mul $t0, $t0, $t1
	sw $t0, -6464($fp)
	lw $t0, -6464($fp)
	lw $t1, -6456($fp)
	add $t0, $t0, $t1
	sw $t0, -6468($fp)
	lw $t0, -6468($fp)
	lw $t1, 0($t0)
	sw $t1, -6472($fp)
	lw $t1, -6472($fp)
	li $t2, 0
	bne $t1, $t2, label317
	j label316
label317:
	li $t0, 4808
	sw $t0, -6476($fp)
	lw $t1, -6476($fp)
	li $t2, 0
	bne $t1, $t2, label315
	j label316
label315:
	li $t0, 1
	sw $t0, -6452($fp)
label316:
	addi $sp, $sp, -4
	lw $t0, -6412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6452($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6480($fp)
	addi $sp, $sp, 20
	lw $t1, -6332($fp)
	lw $t2, -6480($fp)
	blt $t1, $t2, label292
	j label293
label292:
	li $t0, 0
	sw $t0, -6484($fp)
	li $t0, 0
	sw $t0, -6488($fp)
	li $t0, 36808
	sw $t0, -6492($fp)
	lw $t0, -1384($fp)
	sw $t0, -6496($fp)
	lw $t0, -6492($fp)
	lw $t1, -6496($fp)
	add $t0, $t0, $t1
	sw $t0, -6500($fp)
	li $t0, 24133
	sw $t0, -6504($fp)
	lw $t1, -6500($fp)
	lw $t2, -6504($fp)
	bge $t1, $t2, label325
	j label326
label325:
	li $t0, 1
	sw $t0, -6488($fp)
label326:
	li $t0, 0
	sw $t0, -6508($fp)
	li $t0, 39913
	sw $t0, -6512($fp)
	lw $t1, -6512($fp)
	li $t2, 0
	bne $t1, $t2, label327
	j label330
label330:
	li $t0, 37262
	sw $t0, -6516($fp)
	lw $t1, -6516($fp)
	li $t2, 0
	bne $t1, $t2, label327
	j label329
label329:
	lw $t0, -3320($fp)
	sw $t0, -6520($fp)
	lw $t1, -6520($fp)
	li $t2, 0
	bne $t1, $t2, label327
	j label328
label327:
	li $t0, 1
	sw $t0, -6508($fp)
label328:
	li $t0, 0
	sw $t0, -6524($fp)
	li $t0, 0
	sw $t0, -6528($fp)
	lw $t0, -3248($fp)
	sw $t0, -6532($fp)
	li $t0, 6520
	sw $t0, -6536($fp)
	lw $t0, -6532($fp)
	lw $t1, -6536($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6540($fp)
	lw $t1, -6540($fp)
	li $t2, 0
	bne $t1, $t2, label333
	j label335
label335:
	lw $t0, -3932($fp)
	sw $t0, -6544($fp)
	lw $t1, -6544($fp)
	li $t2, 0
	bne $t1, $t2, label333
	j label334
label333:
	li $t0, 1
	sw $t0, -6528($fp)
label334:
	li $t0, 0
	sw $t0, -6548($fp)
	lw $t0, -1744($fp)
	sw $t0, -6552($fp)
	li $t0, 0
	lw $t1, -6552($fp)
	sub $t0, $t0, $t1
	sw $t0, -6556($fp)
	lw $t1, -6556($fp)
	li $t2, 0
	bne $t1, $t2, label338
	j label337
label338:
	li $t0, 6266
	sw $t0, -6560($fp)
	lw $t1, -6560($fp)
	li $t2, 0
	bne $t1, $t2, label336
	j label337
label336:
	li $t0, 1
	sw $t0, -6548($fp)
label337:
	li $t0, 0
	sw $t0, -6564($fp)
	lw $t0, -4124($fp)
	sw $t0, -6568($fp)
	lw $t0, -1600($fp)
	sw $t0, -6572($fp)
	lw $t0, -6568($fp)
	lw $t1, -6572($fp)
	sub $t0, $t0, $t1
	sw $t0, -6576($fp)
	lw $t0, 4($fp)
	sw $t0, -6580($fp)
	lw $t1, -6576($fp)
	lw $t2, -6580($fp)
	blt $t1, $t2, label339
	j label340
label339:
	li $t0, 1
	sw $t0, -6564($fp)
label340:
	li $t0, 0
	sw $t0, -6584($fp)
	lw $t0, -3680($fp)
	sw $t0, -6588($fp)
	lw $t0, -4100($fp)
	sw $t0, -6592($fp)
	lw $t1, -6588($fp)
	lw $t2, -6592($fp)
	blt $t1, $t2, label343
	j label342
label343:
	lw $t0, -4112($fp)
	sw $t0, -6596($fp)
	lw $t1, -6596($fp)
	li $t2, 0
	bne $t1, $t2, label341
	j label342
label341:
	li $t0, 1
	sw $t0, -6584($fp)
label342:
	addi $sp, $sp, -4
	lw $t0, -6528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6584($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6600($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -6604($fp)
	lw $t0, -3296($fp)
	sw $t0, -6608($fp)
	lw $t0, -1420($fp)
	sw $t0, -6612($fp)
	lw $t1, -6608($fp)
	lw $t2, -6612($fp)
	ble $t1, $t2, label344
	j label345
label344:
	li $t0, 1
	sw $t0, -6604($fp)
label345:
	li $t0, 0
	sw $t0, -6616($fp)
	li $t0, 0
	sw $t0, -6620($fp)
	lw $t0, -1228($fp)
	sw $t0, -6624($fp)
	li $t0, 57344
	sw $t0, -6628($fp)
	lw $t1, -6624($fp)
	lw $t2, -6628($fp)
	beq $t1, $t2, label348
	j label349
label348:
	li $t0, 1
	sw $t0, -6620($fp)
label349:
	lw $t0, -724($fp)
	sw $t0, -6632($fp)
	lw $t1, -6620($fp)
	lw $t2, -6632($fp)
	beq $t1, $t2, label346
	j label347
label346:
	li $t0, 1
	sw $t0, -6616($fp)
label347:
	li $t0, 0
	sw $t0, -6636($fp)
	lw $t0, -724($fp)
	sw $t0, -6640($fp)
	li $t0, 15527
	sw $t0, -6644($fp)
	lw $t1, -6640($fp)
	lw $t2, -6644($fp)
	bne $t1, $t2, label352
	j label351
label352:
	lw $t0, -1084($fp)
	sw $t0, -6648($fp)
	lw $t1, -6648($fp)
	li $t2, 0
	bne $t1, $t2, label350
	j label351
label350:
	li $t0, 1
	sw $t0, -6636($fp)
label351:
	addi $t0, $fp, -152
	sw $t0, -6652($fp)
	lw $t0, -3692($fp)
	sw $t0, -6656($fp)
	li $t0, 4
	lw $t1, -6656($fp)
	mul $t0, $t0, $t1
	sw $t0, -6660($fp)
	lw $t0, -6660($fp)
	lw $t1, -6652($fp)
	add $t0, $t0, $t1
	sw $t0, -6664($fp)
	lw $t0, -6664($fp)
	lw $t1, 0($t0)
	sw $t1, -6668($fp)
	lw $t0, -3272($fp)
	sw $t0, -6672($fp)
	lw $t0, -6668($fp)
	lw $t1, -6672($fp)
	add $t0, $t0, $t1
	sw $t0, -6676($fp)
	li $t0, 0
	sw $t0, -6680($fp)
	li $t0, 48422
	sw $t0, -6684($fp)
	lw $t1, -6684($fp)
	li $t2, 0
	bne $t1, $t2, label356
	j label355
label356:
	lw $t0, -640($fp)
	sw $t0, -6688($fp)
	lw $t1, -6688($fp)
	li $t2, 0
	bne $t1, $t2, label353
	j label355
label355:
	lw $t0, -1744($fp)
	sw $t0, -6692($fp)
	lw $t1, -6692($fp)
	li $t2, 0
	bne $t1, $t2, label353
	j label354
label353:
	li $t0, 1
	sw $t0, -6680($fp)
label354:
	addi $sp, $sp, -4
	lw $t0, -6616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6680($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6696($fp)
	addi $sp, $sp, 20
	lw $t0, -3284($fp)
	sw $t0, -6700($fp)
	lw $t0, -6696($fp)
	lw $t1, -6700($fp)
	mul $t0, $t0, $t1
	sw $t0, -6704($fp)
	lw $t0, -3680($fp)
	sw $t0, -6708($fp)
	lw $t0, -1252($fp)
	sw $t0, -6712($fp)
	lw $t0, -6708($fp)
	lw $t1, -6712($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6716($fp)
	li $t0, 25631
	sw $t0, -6720($fp)
	lw $t0, -6716($fp)
	lw $t1, -6720($fp)
	add $t0, $t0, $t1
	sw $t0, -6724($fp)
	addi $sp, $sp, -4
	lw $t0, -6600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6724($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6728($fp)
	addi $sp, $sp, 20
	lw $t0, 12($fp)
	sw $t0, -6732($fp)
	lw $t1, -6728($fp)
	lw $t2, -6732($fp)
	beq $t1, $t2, label331
	j label332
label331:
	li $t0, 1
	sw $t0, -6524($fp)
label332:
	li $t0, 35426
	sw $t0, -6736($fp)
	addi $sp, $sp, -4
	lw $t0, -6488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6736($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6740($fp)
	addi $sp, $sp, 20
	lw $t1, -6740($fp)
	li $t2, 0
	bne $t1, $t2, label324
	j label323
label323:
	li $t0, 1
	sw $t0, -6484($fp)
label324:
	lw $t0, -3260($fp)
	sw $t0, -6744($fp)
	lw $t0, -1252($fp)
	sw $t0, -6748($fp)
	lw $t0, -6744($fp)
	lw $t1, -6748($fp)
	add $t0, $t0, $t1
	sw $t0, -6752($fp)
	lw $t1, -6484($fp)
	lw $t2, -6752($fp)
	bge $t1, $t2, label322
	j label319
label322:
	addi $t0, $fp, -2964
	sw $t0, -6756($fp)
	lw $t0, -1384($fp)
	sw $t0, -6760($fp)
	li $t0, 4
	lw $t1, -6760($fp)
	mul $t0, $t0, $t1
	sw $t0, -6764($fp)
	lw $t0, -6764($fp)
	lw $t1, -6756($fp)
	add $t0, $t0, $t1
	sw $t0, -6768($fp)
	lw $t0, -6768($fp)
	lw $t1, 0($t0)
	sw $t1, -6772($fp)
	li $t0, 0
	sw $t0, -6776($fp)
	lw $t0, -3452($fp)
	sw $t0, -6780($fp)
	li $t0, 0
	sw $t0, -6784($fp)
	li $t0, 57296
	sw $t0, -6788($fp)
	lw $t1, -6788($fp)
	li $t2, 0
	bne $t1, $t2, label360
	j label361
label361:
	li $t0, 10061
	sw $t0, -6792($fp)
	lw $t1, -6792($fp)
	li $t2, 0
	bne $t1, $t2, label359
	j label360
label359:
	li $t0, 1
	sw $t0, -6784($fp)
label360:
	addi $t0, $fp, -3072
	sw $t0, -6796($fp)
	lw $t0, 4($fp)
	sw $t0, -6800($fp)
	li $t0, 4
	lw $t1, -6800($fp)
	mul $t0, $t0, $t1
	sw $t0, -6804($fp)
	lw $t0, -6804($fp)
	lw $t1, -6796($fp)
	add $t0, $t0, $t1
	sw $t0, -6808($fp)
	lw $t0, -6808($fp)
	lw $t1, 0($t0)
	sw $t1, -6812($fp)
	li $t0, 0
	sw $t0, -6816($fp)
	lw $t0, -3440($fp)
	sw $t0, -6820($fp)
	li $t0, 0
	lw $t1, -6820($fp)
	sub $t0, $t0, $t1
	sw $t0, -6824($fp)
	lw $t1, -6824($fp)
	li $t2, 0
	bne $t1, $t2, label363
	j label362
label362:
	li $t0, 1
	sw $t0, -6816($fp)
label363:
	addi $sp, $sp, -4
	lw $t0, -6780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6816($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6828($fp)
	addi $sp, $sp, 20
	li $t0, 47786
	sw $t0, -6832($fp)
	lw $t1, -6828($fp)
	lw $t2, -6832($fp)
	beq $t1, $t2, label357
	j label358
label357:
	li $t0, 1
	sw $t0, -6776($fp)
label358:
	li $t0, 41956
	sw $t0, -6836($fp)
	li $t0, 0
	lw $t1, -6836($fp)
	sub $t0, $t0, $t1
	sw $t0, -6840($fp)
	li $t0, 0
	lw $t1, -6840($fp)
	sub $t0, $t0, $t1
	sw $t0, -6844($fp)
	addi $t0, $fp, -3024
	sw $t0, -6848($fp)
	li $t0, 5
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
	li $t0, 29643
	sw $t0, -6868($fp)
	lw $t0, -6864($fp)
	lw $t1, -6868($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6872($fp)
	addi $sp, $sp, -4
	lw $t0, -6772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6872($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6876($fp)
	addi $sp, $sp, 20
	lw $t1, -6876($fp)
	li $t2, 0
	bne $t1, $t2, label321
	j label319
label321:
	addi $t0, $fp, -2992
	sw $t0, -6880($fp)
	lw $t0, -1468($fp)
	sw $t0, -6884($fp)
	li $t0, 4
	lw $t1, -6884($fp)
	mul $t0, $t0, $t1
	sw $t0, -6888($fp)
	lw $t0, -6888($fp)
	lw $t1, -6880($fp)
	add $t0, $t0, $t1
	sw $t0, -6892($fp)
	lw $t0, -6892($fp)
	lw $t1, 0($t0)
	sw $t1, -6896($fp)
	lw $t0, -1612($fp)
	sw $t0, -6900($fp)
	lw $t0, -6896($fp)
	lw $t1, -6900($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6904($fp)
	li $t0, 47568
	sw $t0, -6908($fp)
	lw $t0, -6904($fp)
	lw $t1, -6908($fp)
	sub $t0, $t0, $t1
	sw $t0, -6912($fp)
	lw $t1, -6912($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label319
label318:
label364:
	li $t0, 0
	sw $t0, -6916($fp)
	li $t0, 33525
	sw $t0, -6920($fp)
	li $t0, 52594
	sw $t0, -6924($fp)
	lw $t1, -6920($fp)
	lw $t2, -6924($fp)
	bgt $t1, $t2, label367
	j label369
label369:
	lw $t0, -3332($fp)
	sw $t0, -6928($fp)
	lw $t1, -6928($fp)
	li $t2, 0
	bne $t1, $t2, label368
	j label367
label367:
	li $t0, 1
	sw $t0, -6916($fp)
label368:
	lw $t0, -6916($fp)
	sw $t0, -3716($fp)
	lw $t0, -3716($fp)
	sw $t0, -6932($fp)
	lw $t1, -6932($fp)
	li $t2, 0
	bne $t1, $t2, label365
	j label366
label365:
	addi $t0, $fp, -2956
	sw $t0, -6936($fp)
	addi $t0, $fp, -3048
	sw $t0, -6940($fp)
	lw $t0, -1228($fp)
	sw $t0, -6944($fp)
	li $t0, 4
	lw $t1, -6944($fp)
	mul $t0, $t0, $t1
	sw $t0, -6948($fp)
	lw $t0, -6948($fp)
	lw $t1, -6940($fp)
	add $t0, $t0, $t1
	sw $t0, -6952($fp)
	lw $t0, -6952($fp)
	lw $t1, 0($t0)
	sw $t1, -6956($fp)
	li $t0, 17944
	sw $t0, -6960($fp)
	lw $t0, -6956($fp)
	lw $t1, -6960($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6964($fp)
	li $t0, 4
	lw $t1, -6964($fp)
	mul $t0, $t0, $t1
	sw $t0, -6968($fp)
	lw $t0, -6968($fp)
	lw $t1, -6936($fp)
	add $t0, $t0, $t1
	sw $t0, -6972($fp)
	lw $t0, -6972($fp)
	lw $t1, 0($t0)
	sw $t1, -6976($fp)
	lw $t0, -1252($fp)
	sw $t0, -6980($fp)
	lw $t0, -6976($fp)
	lw $t1, -6980($fp)
	mul $t0, $t0, $t1
	sw $t0, -6984($fp)
	lw $ra, -4($fp)
	lw $v0, -6984($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label364
label366:
	j label320
label319:
	li $t0, 0
	sw $t0, -6988($fp)
	li $t0, 0
	sw $t0, -6992($fp)
	li $t0, 26695
	sw $t0, -6996($fp)
	lw $t0, -1240($fp)
	sw $t0, -7000($fp)
	lw $t0, -6996($fp)
	lw $t1, -7000($fp)
	sub $t0, $t0, $t1
	sw $t0, -7004($fp)
	li $t0, 18239
	sw $t0, -7008($fp)
	lw $t1, -7004($fp)
	lw $t2, -7008($fp)
	bge $t1, $t2, label373
	j label374
label373:
	li $t0, 1
	sw $t0, -6992($fp)
label374:
	lw $t0, -1732($fp)
	sw $t0, -7012($fp)
	lw $t0, -1036($fp)
	sw $t0, -7016($fp)
	li $t0, 1802
	sw $t0, -7020($fp)
	lw $t0, -7016($fp)
	lw $t1, -7020($fp)
	mul $t0, $t0, $t1
	sw $t0, -7024($fp)
	li $t0, 48072
	sw $t0, -7028($fp)
	li $t0, 5646
	sw $t0, -7032($fp)
	lw $t0, -7028($fp)
	lw $t1, -7032($fp)
	sub $t0, $t0, $t1
	sw $t0, -7036($fp)
	addi $sp, $sp, -4
	lw $t0, -6992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7036($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7040($fp)
	addi $sp, $sp, 20
	lw $t1, -7040($fp)
	li $t2, 0
	bne $t1, $t2, label370
	j label372
label372:
	lw $t0, -3416($fp)
	sw $t0, -7044($fp)
	lw $t0, -592($fp)
	sw $t0, -7048($fp)
	lw $t0, -1456($fp)
	sw $t0, -7052($fp)
	lw $t0, -7048($fp)
	lw $t1, -7052($fp)
	add $t0, $t0, $t1
	sw $t0, -7056($fp)
	lw $t1, -7044($fp)
	lw $t2, -7056($fp)
	beq $t1, $t2, label370
	j label371
label370:
	li $t0, 1
	sw $t0, -6988($fp)
label371:
	lw $ra, -4($fp)
	lw $v0, -6988($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label320:
	j label291
label293:
	j label285
label287:
label375:
	addi $t0, $fp, -32
	sw $t0, -7060($fp)
	li $t0, 0
	sw $t0, -7064($fp)
	li $t0, 45090
	sw $t0, -7068($fp)
	lw $t1, -7068($fp)
	li $t2, 0
	bne $t1, $t2, label380
	j label379
label380:
	lw $t0, -1072($fp)
	sw $t0, -7072($fp)
	lw $t1, -7072($fp)
	li $t2, 0
	bne $t1, $t2, label378
	j label379
label378:
	li $t0, 1
	sw $t0, -7064($fp)
label379:
	li $t0, 4
	lw $t1, -7064($fp)
	mul $t0, $t0, $t1
	sw $t0, -7076($fp)
	lw $t0, -7076($fp)
	lw $t1, -7060($fp)
	add $t0, $t0, $t1
	sw $t0, -7080($fp)
	lw $t0, -7080($fp)
	lw $t1, 0($t0)
	sw $t1, -7084($fp)
	lw $t0, -7084($fp)
	sw $t0, -3332($fp)
	lw $t0, -3332($fp)
	sw $t0, -7088($fp)
	lw $t1, -7088($fp)
	li $t2, 0
	bne $t1, $t2, label376
	j label377
label376:
	li $t0, 0
	sw $t0, -7092($fp)
	lw $t0, -1108($fp)
	sw $t0, -7096($fp)
	lw $t1, -7096($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label384
label384:
	li $t0, 1
	sw $t0, -7092($fp)
label385:
	li $t0, 0
	lw $t1, -7092($fp)
	sub $t0, $t0, $t1
	sw $t0, -7100($fp)
	lw $t0, -1036($fp)
	sw $t0, -7104($fp)
	li $t0, 0
	lw $t1, -7104($fp)
	sub $t0, $t0, $t1
	sw $t0, -7108($fp)
	lw $t0, -640($fp)
	sw $t0, -7112($fp)
	lw $t0, -7108($fp)
	lw $t1, -7112($fp)
	sub $t0, $t0, $t1
	sw $t0, -7116($fp)
	li $t0, 0
	sw $t0, -7120($fp)
	lw $t0, -604($fp)
	sw $t0, -7124($fp)
	lw $t1, -7124($fp)
	li $t2, 0
	bne $t1, $t2, label387
	j label386
label386:
	li $t0, 1
	sw $t0, -7120($fp)
label387:
	lw $t0, -7116($fp)
	lw $t1, -7120($fp)
	add $t0, $t0, $t1
	sw $t0, -7128($fp)
	lw $t1, -7100($fp)
	lw $t2, -7128($fp)
	blt $t1, $t2, label381
	j label382
label381:
	addi $t0, $fp, -2964
	sw $t0, -7132($fp)
	lw $t0, -1744($fp)
	sw $t0, -7136($fp)
	li $t0, 4
	lw $t1, -7136($fp)
	mul $t0, $t0, $t1
	sw $t0, -7140($fp)
	lw $t0, -7140($fp)
	lw $t1, -7132($fp)
	add $t0, $t0, $t1
	sw $t0, -7144($fp)
	lw $t0, -7144($fp)
	lw $t1, 0($t0)
	sw $t1, -7148($fp)
	li $t0, 0
	sw $t0, -7152($fp)
	li $t0, 42625
	sw $t0, -7156($fp)
	lw $t1, -7156($fp)
	li $t2, 0
	bne $t1, $t2, label389
	j label388
label388:
	li $t0, 1
	sw $t0, -7152($fp)
label389:
	addi $t0, $fp, -2948
	sw $t0, -7160($fp)
	li $t0, 2
	sw $t0, -7164($fp)
	li $t0, 4
	lw $t1, -7164($fp)
	mul $t0, $t0, $t1
	sw $t0, -7168($fp)
	lw $t0, -7168($fp)
	lw $t1, -7160($fp)
	add $t0, $t0, $t1
	sw $t0, -7172($fp)
	lw $t0, -7172($fp)
	lw $t1, 0($t0)
	sw $t1, -7176($fp)
	lw $t0, -7152($fp)
	lw $t1, -7176($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7180($fp)
	lw $t0, -7148($fp)
	lw $t1, -7180($fp)
	sub $t0, $t0, $t1
	sw $t0, -7184($fp)
	j label383
label382:
label390:
	li $t0, 0
	sw $t0, -7188($fp)
	li $t0, 899
	sw $t0, -7192($fp)
	lw $t0, -1240($fp)
	sw $t0, -7196($fp)
	lw $t0, -7192($fp)
	lw $t1, -7196($fp)
	add $t0, $t0, $t1
	sw $t0, -7200($fp)
	lw $t1, -7200($fp)
	li $t2, 0
	bne $t1, $t2, label395
	j label394
label395:
	li $t0, 27172
	sw $t0, -7204($fp)
	lw $t1, -7204($fp)
	li $t2, 0
	bne $t1, $t2, label393
	j label394
label393:
	li $t0, 1
	sw $t0, -7188($fp)
label394:
	li $t0, 0
	sw $t0, -7208($fp)
	li $t0, 50752
	sw $t0, -7212($fp)
	li $t0, 714
	sw $t0, -7216($fp)
	lw $t0, -7212($fp)
	lw $t1, -7216($fp)
	add $t0, $t0, $t1
	sw $t0, -7220($fp)
	lw $t0, -3440($fp)
	sw $t0, -7224($fp)
	lw $t1, -7220($fp)
	lw $t2, -7224($fp)
	bne $t1, $t2, label396
	j label397
label396:
	li $t0, 1
	sw $t0, -7208($fp)
label397:
	li $t0, 0
	sw $t0, -7228($fp)
	li $t0, 46591
	sw $t0, -7232($fp)
	li $t0, 5835
	sw $t0, -7236($fp)
	lw $t1, -7232($fp)
	lw $t2, -7236($fp)
	ble $t1, $t2, label400
	j label399
label400:
	li $t0, 36792
	sw $t0, -7240($fp)
	lw $t1, -7240($fp)
	li $t2, 0
	bne $t1, $t2, label398
	j label399
label398:
	li $t0, 1
	sw $t0, -7228($fp)
label399:
	li $t0, 0
	sw $t0, -7244($fp)
	lw $t0, -3320($fp)
	sw $t0, -7248($fp)
	li $t0, 0
	lw $t1, -7248($fp)
	sub $t0, $t0, $t1
	sw $t0, -7252($fp)
	li $t0, 12659
	sw $t0, -7256($fp)
	lw $t1, -7252($fp)
	lw $t2, -7256($fp)
	bge $t1, $t2, label401
	j label402
label401:
	li $t0, 1
	sw $t0, -7244($fp)
label402:
	li $t0, 34563
	sw $t0, -7260($fp)
	lw $t0, -7260($fp)
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	sw $t0, -7264($fp)
	li $t0, 0
	sw $t0, -7268($fp)
	lw $t0, -736($fp)
	sw $t0, -7272($fp)
	lw $t1, -7272($fp)
	li $t2, 0
	bne $t1, $t2, label404
	j label403
label403:
	li $t0, 1
	sw $t0, -7268($fp)
label404:
	lw $t0, -3704($fp)
	sw $t0, -7276($fp)
	lw $t0, -7268($fp)
	lw $t1, -7276($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7280($fp)
	li $t0, 0
	sw $t0, -7284($fp)
	addi $t0, $fp, -172
	sw $t0, -7288($fp)
	li $t0, 2
	sw $t0, -7292($fp)
	li $t0, 4
	lw $t1, -7292($fp)
	mul $t0, $t0, $t1
	sw $t0, -7296($fp)
	lw $t0, -7296($fp)
	lw $t1, -7288($fp)
	add $t0, $t0, $t1
	sw $t0, -7300($fp)
	lw $t0, -7300($fp)
	lw $t1, 0($t0)
	sw $t1, -7304($fp)
	lw $t1, -7304($fp)
	li $t2, 0
	bne $t1, $t2, label406
	j label405
label405:
	li $t0, 1
	sw $t0, -7284($fp)
label406:
	li $t0, 0
	sw $t0, -7308($fp)
	li $t0, 28042
	sw $t0, -7312($fp)
	lw $t1, -7312($fp)
	li $t2, 0
	bne $t1, $t2, label409
	j label407
label409:
	lw $t0, -652($fp)
	sw $t0, -7316($fp)
	lw $t1, -7316($fp)
	li $t2, 0
	bne $t1, $t2, label407
	j label408
label407:
	li $t0, 1
	sw $t0, -7308($fp)
label408:
	addi $sp, $sp, -4
	lw $t0, -7264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7308($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7320($fp)
	addi $sp, $sp, 20
	li $t0, 3062
	sw $t0, -7324($fp)
	addi $sp, $sp, -4
	lw $t0, -7228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7324($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7328($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -7332($fp)
	li $t0, 0
	sw $t0, -7336($fp)
	li $t0, 12515
	sw $t0, -7340($fp)
	li $t0, 46473
	sw $t0, -7344($fp)
	lw $t1, -7340($fp)
	lw $t2, -7344($fp)
	bne $t1, $t2, label412
	j label413
label412:
	li $t0, 1
	sw $t0, -7336($fp)
label413:
	lw $t0, -3692($fp)
	sw $t0, -7348($fp)
	lw $t1, -7336($fp)
	lw $t2, -7348($fp)
	beq $t1, $t2, label410
	j label411
label410:
	li $t0, 1
	sw $t0, -7332($fp)
label411:
	addi $sp, $sp, -4
	lw $t0, -7188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7332($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7352($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -7356($fp)
	li $t0, 0
	sw $t0, -7360($fp)
	li $t0, 62016
	sw $t0, -7364($fp)
	lw $t1, -7364($fp)
	li $t2, 0
	bne $t1, $t2, label417
	j label416
label416:
	li $t0, 1
	sw $t0, -7360($fp)
label417:
	li $t0, 57987
	sw $t0, -7368($fp)
	lw $t1, -7360($fp)
	lw $t2, -7368($fp)
	bge $t1, $t2, label414
	j label415
label414:
	li $t0, 1
	sw $t0, -7356($fp)
label415:
	li $t0, 0
	sw $t0, -7372($fp)
	li $t0, 0
	sw $t0, -7376($fp)
	li $t0, 40043
	sw $t0, -7380($fp)
	li $t0, 44485
	sw $t0, -7384($fp)
	lw $t1, -7380($fp)
	lw $t2, -7384($fp)
	blt $t1, $t2, label420
	j label421
label420:
	li $t0, 1
	sw $t0, -7376($fp)
label421:
	lw $t0, -1468($fp)
	sw $t0, -7388($fp)
	lw $t1, -7376($fp)
	lw $t2, -7388($fp)
	bne $t1, $t2, label418
	j label419
label418:
	li $t0, 1
	sw $t0, -7372($fp)
label419:
	li $t0, 0
	sw $t0, -7392($fp)
	li $t0, 9422
	sw $t0, -7396($fp)
	lw $t0, -3344($fp)
	sw $t0, -7400($fp)
	lw $t0, -7396($fp)
	lw $t1, -7400($fp)
	mul $t0, $t0, $t1
	sw $t0, -7404($fp)
	lw $t1, -7404($fp)
	li $t2, 0
	bne $t1, $t2, label424
	j label423
label424:
	lw $t0, -3428($fp)
	sw $t0, -7408($fp)
	lw $t1, -7408($fp)
	li $t2, 0
	bne $t1, $t2, label422
	j label423
label422:
	li $t0, 1
	sw $t0, -7392($fp)
label423:
	li $t0, 0
	sw $t0, -7412($fp)
	lw $t0, -640($fp)
	sw $t0, -7416($fp)
	li $t0, 58010
	sw $t0, -7420($fp)
	lw $t1, -7416($fp)
	lw $t2, -7420($fp)
	blt $t1, $t2, label425
	j label427
label427:
	li $t0, 10960
	sw $t0, -7424($fp)
	lw $t1, -7424($fp)
	li $t2, 0
	bne $t1, $t2, label425
	j label426
label425:
	li $t0, 1
	sw $t0, -7412($fp)
label426:
	addi $sp, $sp, -4
	lw $t0, -7356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7412($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7428($fp)
	addi $sp, $sp, 20
	lw $t0, -7352($fp)
	lw $t1, -7428($fp)
	sub $t0, $t0, $t1
	sw $t0, -7432($fp)
	lw $t1, -7432($fp)
	li $t2, 0
	bne $t1, $t2, label391
	j label392
label391:
	addi $t0, $fp, -68
	sw $t0, -7436($fp)
	li $t0, 0
	sw $t0, -7440($fp)
	li $t0, 27021
	sw $t0, -7444($fp)
	lw $t1, -7444($fp)
	li $t2, 0
	bne $t1, $t2, label430
	j label428
label430:
	lw $t0, -1108($fp)
	sw $t0, -7448($fp)
	lw $t1, -7448($fp)
	li $t2, 0
	bne $t1, $t2, label429
	j label428
label428:
	li $t0, 1
	sw $t0, -7440($fp)
label429:
	li $t0, 4
	lw $t1, -7440($fp)
	mul $t0, $t0, $t1
	sw $t0, -7452($fp)
	lw $t0, -7452($fp)
	lw $t1, -7436($fp)
	add $t0, $t0, $t1
	sw $t0, -7456($fp)
	lw $t0, -7456($fp)
	lw $t1, 0($t0)
	sw $t1, -7460($fp)
	lw $ra, -4($fp)
	lw $v0, -7460($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label390
label392:
label383:
	j label375
label377:
	j label125
label124:
	li $t0, 2127
	sw $t0, -7464($fp)
	li $t0, 59789
	sw $t0, -7468($fp)
	lw $t0, -7464($fp)
	lw $t1, -7468($fp)
	sub $t0, $t0, $t1
	sw $t0, -7472($fp)
	lw $t1, -7472($fp)
	li $t2, 0
	bne $t1, $t2, label431
	j label432
label431:
	li $t0, 53716
	sw $t0, -7476($fp)
	lw $ra, -4($fp)
	lw $v0, -7476($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label433
label432:
label434:
	li $t0, 0
	sw $t0, -7480($fp)
	li $t0, 0
	sw $t0, -7484($fp)
	li $t0, 59519
	sw $t0, -7488($fp)
	li $t0, 43320
	sw $t0, -7492($fp)
	lw $t0, -7488($fp)
	lw $t1, -7492($fp)
	add $t0, $t0, $t1
	sw $t0, -7496($fp)
	li $t0, 22145
	sw $t0, -7500($fp)
	lw $t1, -7496($fp)
	lw $t2, -7500($fp)
	ble $t1, $t2, label439
	j label440
label439:
	li $t0, 1
	sw $t0, -7484($fp)
label440:
	li $t0, 30805
	sw $t0, -7504($fp)
	li $t0, 41208
	sw $t0, -7508($fp)
	lw $t0, -7504($fp)
	lw $t1, -7508($fp)
	add $t0, $t0, $t1
	sw $t0, -7512($fp)
	li $t0, 0
	sw $t0, -7516($fp)
	li $t0, 0
	sw $t0, -7520($fp)
	li $t0, 39343
	sw $t0, -7524($fp)
	lw $t1, -7524($fp)
	li $t2, 0
	bne $t1, $t2, label444
	j label443
label443:
	li $t0, 1
	sw $t0, -7520($fp)
label444:
	lw $t0, 16($fp)
	sw $t0, -7528($fp)
	lw $t1, -7520($fp)
	lw $t2, -7528($fp)
	bne $t1, $t2, label441
	j label442
label441:
	li $t0, 1
	sw $t0, -7516($fp)
label442:
	li $t0, 0
	sw $t0, -7532($fp)
	li $t0, 20366
	sw $t0, -7536($fp)
	lw $t1, -7536($fp)
	li $t2, 0
	bne $t1, $t2, label446
	j label445
label445:
	li $t0, 1
	sw $t0, -7532($fp)
label446:
	addi $sp, $sp, -4
	lw $t0, -7484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7532($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7540($fp)
	addi $sp, $sp, 20
	lw $t1, -7540($fp)
	li $t2, 0
	bne $t1, $t2, label438
	j label437
label437:
	li $t0, 1
	sw $t0, -7480($fp)
label438:
	li $t0, 0
	sw $t0, -7544($fp)
	li $t0, 62582
	sw $t0, -7548($fp)
	lw $t1, -7548($fp)
	li $t2, 0
	bne $t1, $t2, label448
	j label447
label447:
	li $t0, 1
	sw $t0, -7544($fp)
label448:
	lw $t0, -7480($fp)
	lw $t1, -7544($fp)
	add $t0, $t0, $t1
	sw $t0, -7552($fp)
	lw $t1, -7552($fp)
	li $t2, 0
	bne $t1, $t2, label435
	j label436
label435:
	li $t0, 5827
	sw $t0, -7556($fp)
	lw $ra, -4($fp)
	lw $v0, -7556($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label434
label436:
label433:
label125:
	li $t0, 0
	sw $t0, -7560($fp)
	li $t0, 0
	sw $t0, -7564($fp)
	li $t0, 60427
	sw $t0, -7568($fp)
	lw $t1, -7568($fp)
	li $t2, 0
	bne $t1, $t2, label453
	j label452
label452:
	li $t0, 1
	sw $t0, -7564($fp)
label453:
	addi $t0, $fp, -132
	sw $t0, -7572($fp)
	lw $t0, -1744($fp)
	sw $t0, -7576($fp)
	li $t0, 4
	lw $t1, -7576($fp)
	mul $t0, $t0, $t1
	sw $t0, -7580($fp)
	lw $t0, -7580($fp)
	lw $t1, -7572($fp)
	add $t0, $t0, $t1
	sw $t0, -7584($fp)
	lw $t0, -7584($fp)
	lw $t1, 0($t0)
	sw $t1, -7588($fp)
	li $t0, 24804
	sw $t0, -7592($fp)
	lw $t0, -7588($fp)
	lw $t1, -7592($fp)
	add $t0, $t0, $t1
	sw $t0, -7596($fp)
	li $t0, 0
	sw $t0, -7600($fp)
	lw $t0, -1108($fp)
	sw $t0, -7604($fp)
	lw $t0, -1120($fp)
	sw $t0, -7608($fp)
	lw $t1, -7604($fp)
	lw $t2, -7608($fp)
	blt $t1, $t2, label456
	j label455
label456:
	lw $t0, 4($fp)
	sw $t0, -7612($fp)
	lw $t1, -7612($fp)
	li $t2, 0
	bne $t1, $t2, label454
	j label455
label454:
	li $t0, 1
	sw $t0, -7600($fp)
label455:
	li $t0, 0
	sw $t0, -7616($fp)
	li $t0, 0
	sw $t0, -7620($fp)
	lw $t0, -676($fp)
	sw $t0, -7624($fp)
	li $t0, 28473
	sw $t0, -7628($fp)
	lw $t1, -7624($fp)
	lw $t2, -7628($fp)
	bge $t1, $t2, label459
	j label461
label461:
	lw $t0, -1444($fp)
	sw $t0, -7632($fp)
	lw $t1, -7632($fp)
	li $t2, 0
	bne $t1, $t2, label459
	j label460
label459:
	li $t0, 1
	sw $t0, -7620($fp)
label460:
	li $t0, 0
	sw $t0, -7636($fp)
	addi $t0, $fp, -108
	sw $t0, -7640($fp)
	li $t0, 9
	sw $t0, -7644($fp)
	li $t0, 4
	lw $t1, -7644($fp)
	mul $t0, $t0, $t1
	sw $t0, -7648($fp)
	lw $t0, -7648($fp)
	lw $t1, -7640($fp)
	add $t0, $t0, $t1
	sw $t0, -7652($fp)
	lw $t0, -7652($fp)
	lw $t1, 0($t0)
	sw $t1, -7656($fp)
	li $t0, 39623
	sw $t0, -7660($fp)
	lw $t0, -7656($fp)
	lw $t1, -7660($fp)
	mul $t0, $t0, $t1
	sw $t0, -7664($fp)
	addi $t0, $fp, -116
	sw $t0, -7668($fp)
	li $t0, 1
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
	lw $t0, -1420($fp)
	sw $t0, -7688($fp)
	li $t0, 58942
	sw $t0, -7692($fp)
	lw $t0, -7688($fp)
	lw $t1, -7692($fp)
	mul $t0, $t0, $t1
	sw $t0, -7696($fp)
	li $t0, 26032
	sw $t0, -7700($fp)
	lw $t0, -7696($fp)
	lw $t1, -7700($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7704($fp)
	lw $t0, -1408($fp)
	sw $t0, -7708($fp)
	li $t0, 0
	lw $t1, -7708($fp)
	sub $t0, $t0, $t1
	sw $t0, -7712($fp)
	li $t0, 0
	sw $t0, -7716($fp)
	li $t0, 0
	sw $t0, -7720($fp)
	lw $t0, -652($fp)
	sw $t0, -7724($fp)
	li $t0, 33952
	sw $t0, -7728($fp)
	lw $t1, -7724($fp)
	lw $t2, -7728($fp)
	bne $t1, $t2, label470
	j label469
label470:
	lw $t0, -1384($fp)
	sw $t0, -7732($fp)
	lw $t1, -7732($fp)
	li $t2, 0
	bne $t1, $t2, label468
	j label469
label468:
	li $t0, 1
	sw $t0, -7720($fp)
label469:
	li $t0, 3887
	sw $t0, -7736($fp)
	addi $t0, $fp, -68
	sw $t0, -7740($fp)
	lw $t0, -1072($fp)
	sw $t0, -7744($fp)
	li $t0, 4
	lw $t1, -7744($fp)
	mul $t0, $t0, $t1
	sw $t0, -7748($fp)
	lw $t0, -7748($fp)
	lw $t1, -7740($fp)
	add $t0, $t0, $t1
	sw $t0, -7752($fp)
	lw $t0, -7752($fp)
	lw $t1, 0($t0)
	sw $t1, -7756($fp)
	li $t0, 0
	sw $t0, -7760($fp)
	li $t0, 39969
	sw $t0, -7764($fp)
	li $t0, 15621
	sw $t0, -7768($fp)
	lw $t0, -7764($fp)
	lw $t1, -7768($fp)
	add $t0, $t0, $t1
	sw $t0, -7772($fp)
	lw $t1, -7772($fp)
	li $t2, 0
	bne $t1, $t2, label473
	j label472
label473:
	lw $t0, -1396($fp)
	sw $t0, -7776($fp)
	lw $t1, -7776($fp)
	li $t2, 0
	bne $t1, $t2, label471
	j label472
label471:
	li $t0, 1
	sw $t0, -7760($fp)
label472:
	li $t0, 0
	sw $t0, -7780($fp)
	li $t0, 50352
	sw $t0, -7784($fp)
	li $t0, 28214
	sw $t0, -7788($fp)
	lw $t0, -7784($fp)
	lw $t1, -7788($fp)
	sub $t0, $t0, $t1
	sw $t0, -7792($fp)
	lw $t1, -7792($fp)
	li $t2, 0
	bne $t1, $t2, label476
	j label475
label476:
	lw $t0, -1624($fp)
	sw $t0, -7796($fp)
	lw $t1, -7796($fp)
	li $t2, 0
	bne $t1, $t2, label474
	j label475
label474:
	li $t0, 1
	sw $t0, -7780($fp)
label475:
	addi $sp, $sp, -4
	lw $t0, -7736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7780($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7800($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -7804($fp)
	lw $t0, -616($fp)
	sw $t0, -7808($fp)
	li $t0, 625
	sw $t0, -7812($fp)
	lw $t0, -7808($fp)
	lw $t1, -7812($fp)
	sub $t0, $t0, $t1
	sw $t0, -7816($fp)
	lw $t0, -628($fp)
	sw $t0, -7820($fp)
	lw $t1, -7816($fp)
	lw $t2, -7820($fp)
	bgt $t1, $t2, label477
	j label478
label477:
	li $t0, 1
	sw $t0, -7804($fp)
label478:
	li $t0, 0
	sw $t0, -7824($fp)
	li $t0, 62171
	sw $t0, -7828($fp)
	lw $t1, -7828($fp)
	li $t2, 0
	bne $t1, $t2, label480
	j label479
label479:
	li $t0, 1
	sw $t0, -7824($fp)
label480:
	li $t0, 7848
	sw $t0, -7832($fp)
	lw $t0, -7824($fp)
	lw $t1, -7832($fp)
	sub $t0, $t0, $t1
	sw $t0, -7836($fp)
	li $t0, 0
	sw $t0, -7840($fp)
	li $t0, 0
	sw $t0, -7844($fp)
	li $t0, 13920
	sw $t0, -7848($fp)
	li $t0, 35150
	sw $t0, -7852($fp)
	lw $t0, -7848($fp)
	lw $t1, -7852($fp)
	mul $t0, $t0, $t1
	sw $t0, -7856($fp)
	li $t0, 5721
	sw $t0, -7860($fp)
	lw $t1, -7856($fp)
	lw $t2, -7860($fp)
	ble $t1, $t2, label483
	j label484
label483:
	li $t0, 1
	sw $t0, -7844($fp)
label484:
	li $t0, 0
	sw $t0, -7864($fp)
	lw $t0, -1384($fp)
	sw $t0, -7868($fp)
	lw $t1, -7868($fp)
	li $t2, 0
	bne $t1, $t2, label486
	j label485
label485:
	li $t0, 1
	sw $t0, -7864($fp)
label486:
	lw $t0, 4($fp)
	sw $t0, -7872($fp)
	lw $t0, -7864($fp)
	lw $t1, -7872($fp)
	sub $t0, $t0, $t1
	sw $t0, -7876($fp)
	li $t0, 0
	sw $t0, -7880($fp)
	lw $t0, -1600($fp)
	sw $t0, -7884($fp)
	lw $t1, -7884($fp)
	li $t2, 0
	bne $t1, $t2, label490
	j label488
label490:
	lw $t0, -1732($fp)
	sw $t0, -7888($fp)
	lw $t1, -7888($fp)
	li $t2, 0
	bne $t1, $t2, label489
	j label488
label489:
	li $t0, 9240
	sw $t0, -7892($fp)
	lw $t1, -7892($fp)
	li $t2, 0
	bne $t1, $t2, label487
	j label488
label487:
	li $t0, 1
	sw $t0, -7880($fp)
label488:
	li $t0, 0
	sw $t0, -7896($fp)
	lw $t0, -1228($fp)
	sw $t0, -7900($fp)
	lw $t1, -7900($fp)
	li $t2, 0
	bne $t1, $t2, label492
	j label491
label491:
	li $t0, 1
	sw $t0, -7896($fp)
label492:
	lw $t0, -592($fp)
	sw $t0, -7904($fp)
	lw $t0, -7896($fp)
	lw $t1, -7904($fp)
	mul $t0, $t0, $t1
	sw $t0, -7908($fp)
	addi $sp, $sp, -4
	lw $t0, -7844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7908($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7912($fp)
	addi $sp, $sp, 20
	li $t0, 6372
	sw $t0, -7916($fp)
	lw $t1, -7912($fp)
	lw $t2, -7916($fp)
	blt $t1, $t2, label481
	j label482
label481:
	li $t0, 1
	sw $t0, -7840($fp)
label482:
	lw $t0, -712($fp)
	sw $t0, -7920($fp)
	li $t0, 39413
	sw $t0, -7924($fp)
	lw $t0, -7920($fp)
	lw $t1, -7924($fp)
	mul $t0, $t0, $t1
	sw $t0, -7928($fp)
	li $t0, 56201
	sw $t0, -7932($fp)
	lw $t0, -7928($fp)
	lw $t1, -7932($fp)
	mul $t0, $t0, $t1
	sw $t0, -7936($fp)
	addi $sp, $sp, -4
	lw $t0, -7804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7936($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7940($fp)
	addi $sp, $sp, 20
	lw $t0, -640($fp)
	sw $t0, -7944($fp)
	lw $t0, -7940($fp)
	lw $t1, -7944($fp)
	add $t0, $t0, $t1
	sw $t0, -7948($fp)
	li $t0, 65354
	sw $t0, -7952($fp)
	lw $t0, -7952($fp)
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -7956($fp)
	addi $sp, $sp, -4
	lw $t0, -7720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7956($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7960($fp)
	addi $sp, $sp, 20
	lw $t1, -7960($fp)
	li $t2, 0
	bne $t1, $t2, label467
	j label466
label467:
	lw $t0, -1096($fp)
	sw $t0, -7964($fp)
	lw $t1, -7964($fp)
	li $t2, 0
	bne $t1, $t2, label465
	j label466
label465:
	li $t0, 1
	sw $t0, -7716($fp)
label466:
	li $t0, 0
	sw $t0, -7968($fp)
	li $t0, 45241
	sw $t0, -7972($fp)
	li $t0, 0
	lw $t1, -7972($fp)
	sub $t0, $t0, $t1
	sw $t0, -7976($fp)
	lw $t0, 4($fp)
	sw $t0, -7980($fp)
	lw $t1, -7976($fp)
	lw $t2, -7980($fp)
	bne $t1, $t2, label493
	j label494
label493:
	li $t0, 1
	sw $t0, -7968($fp)
label494:
	addi $sp, $sp, -4
	lw $t0, -7704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7968($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7984($fp)
	addi $sp, $sp, 20
	li $t0, 46939
	sw $t0, -7988($fp)
	lw $t0, -7988($fp)
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -7992($fp)
	addi $sp, $sp, -4
	lw $t0, -7664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7992($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7996($fp)
	addi $sp, $sp, 20
	lw $t1, -7996($fp)
	li $t2, 0
	bne $t1, $t2, label462
	j label464
label464:
	lw $t0, -1432($fp)
	sw $t0, -8000($fp)
	lw $t1, -8000($fp)
	li $t2, 0
	bne $t1, $t2, label462
	j label463
label462:
	li $t0, 1
	sw $t0, -7636($fp)
label463:
	li $t0, 38182
	sw $t0, -8004($fp)
	lw $t0, -1096($fp)
	sw $t0, -8008($fp)
	lw $t0, -8004($fp)
	lw $t1, -8008($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8012($fp)
	li $t0, 0
	sw $t0, -8016($fp)
	li $t0, 52966
	sw $t0, -8020($fp)
	lw $t1, -8020($fp)
	li $t2, 0
	bne $t1, $t2, label495
	j label498
label498:
	li $t0, 46225
	sw $t0, -8024($fp)
	lw $t1, -8024($fp)
	li $t2, 0
	bne $t1, $t2, label495
	j label497
label497:
	li $t0, 44342
	sw $t0, -8028($fp)
	lw $t1, -8028($fp)
	li $t2, 0
	bne $t1, $t2, label495
	j label496
label495:
	li $t0, 1
	sw $t0, -8016($fp)
label496:
	addi $sp, $sp, -4
	lw $t0, -7620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8016($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8032($fp)
	addi $sp, $sp, 20
	lw $t0, -1456($fp)
	sw $t0, -8036($fp)
	lw $t1, -8032($fp)
	lw $t2, -8036($fp)
	ble $t1, $t2, label457
	j label458
label457:
	li $t0, 1
	sw $t0, -7616($fp)
label458:
	li $t0, 0
	sw $t0, -8040($fp)
	li $t0, 6375
	sw $t0, -8044($fp)
	lw $t1, -8044($fp)
	li $t2, 0
	bne $t1, $t2, label502
	j label501
label502:
	li $t0, 40390
	sw $t0, -8048($fp)
	lw $t1, -8048($fp)
	li $t2, 0
	bne $t1, $t2, label499
	j label501
label501:
	li $t0, 7550
	sw $t0, -8052($fp)
	lw $t1, -8052($fp)
	li $t2, 0
	bne $t1, $t2, label499
	j label500
label499:
	li $t0, 1
	sw $t0, -8040($fp)
label500:
	addi $sp, $sp, -4
	lw $t0, -7596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8040($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8056($fp)
	addi $sp, $sp, 20
	lw $t0, -1468($fp)
	sw $t0, -8060($fp)
	lw $t0, -8056($fp)
	lw $t1, -8060($fp)
	add $t0, $t0, $t1
	sw $t0, -8064($fp)
	lw $t1, -7564($fp)
	lw $t2, -8064($fp)
	bgt $t1, $t2, label451
	j label450
label451:
	li $t0, 20312
	sw $t0, -8068($fp)
	li $t0, 7279
	sw $t0, -8072($fp)
	lw $t0, -8068($fp)
	lw $t1, -8072($fp)
	add $t0, $t0, $t1
	sw $t0, -8076($fp)
	li $t0, 0
	sw $t0, -8080($fp)
	li $t0, 62986
	sw $t0, -8084($fp)
	lw $t1, -8084($fp)
	li $t2, 0
	bne $t1, $t2, label504
	j label503
label503:
	li $t0, 1
	sw $t0, -8080($fp)
label504:
	lw $t1, -8076($fp)
	lw $t2, -8080($fp)
	bne $t1, $t2, label449
	j label450
label449:
	li $t0, 1
	sw $t0, -7560($fp)
label450:
	addi $t0, $fp, -32
	sw $t0, -8088($fp)
	li $t0, 5
	sw $t0, -8092($fp)
	li $t0, 4
	lw $t1, -8092($fp)
	mul $t0, $t0, $t1
	sw $t0, -8096($fp)
	lw $t0, -8096($fp)
	lw $t1, -8088($fp)
	add $t0, $t0, $t1
	sw $t0, -8100($fp)
	lw $t0, -8100($fp)
	lw $t1, 0($t0)
	sw $t1, -8104($fp)
label505:
	li $t0, 62805
	sw $t0, -8108($fp)
	lw $t1, -8108($fp)
	li $t2, 0
	bne $t1, $t2, label506
	j label507
label506:
label508:
	addi $t0, $fp, -172
	sw $t0, -8112($fp)
	li $t0, 41128
	sw $t0, -8116($fp)
	lw $t0, -1228($fp)
	sw $t0, -8120($fp)
	lw $t0, -8116($fp)
	lw $t1, -8120($fp)
	add $t0, $t0, $t1
	sw $t0, -8124($fp)
	lw $t0, -592($fp)
	sw $t0, -8128($fp)
	lw $t0, -8124($fp)
	lw $t1, -8128($fp)
	add $t0, $t0, $t1
	sw $t0, -8132($fp)
	li $t0, 4
	lw $t1, -8132($fp)
	mul $t0, $t0, $t1
	sw $t0, -8136($fp)
	lw $t0, -8136($fp)
	lw $t1, -8112($fp)
	add $t0, $t0, $t1
	sw $t0, -8140($fp)
	lw $t0, -8140($fp)
	lw $t1, 0($t0)
	sw $t1, -8144($fp)
	li $t0, 0
	lw $t1, -8144($fp)
	sub $t0, $t0, $t1
	sw $t0, -8148($fp)
	lw $t1, -8148($fp)
	li $t2, 0
	bne $t1, $t2, label509
	j label510
label509:
label511:
	li $t0, 0
	sw $t0, -8152($fp)
	li $t0, 55049
	sw $t0, -8156($fp)
	lw $t0, -8156($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -8160($fp)
	li $t0, 0
	sw $t0, -8164($fp)
	li $t0, 0
	sw $t0, -8168($fp)
	lw $t0, -664($fp)
	sw $t0, -8172($fp)
	lw $t0, -676($fp)
	sw $t0, -8176($fp)
	lw $t1, -8172($fp)
	lw $t2, -8176($fp)
	ble $t1, $t2, label518
	j label519
label518:
	li $t0, 1
	sw $t0, -8168($fp)
label519:
	lw $t0, -676($fp)
	sw $t0, -8180($fp)
	lw $t1, -8168($fp)
	lw $t2, -8180($fp)
	beq $t1, $t2, label516
	j label517
label516:
	li $t0, 1
	sw $t0, -8164($fp)
label517:
	lw $t0, -1252($fp)
	sw $t0, -8184($fp)
	li $t0, 6509
	sw $t0, -8188($fp)
	lw $t0, -8184($fp)
	lw $t1, -8188($fp)
	mul $t0, $t0, $t1
	sw $t0, -8192($fp)
	li $t0, 43185
	sw $t0, -8196($fp)
	lw $t0, -1240($fp)
	sw $t0, -8200($fp)
	lw $t0, -8196($fp)
	lw $t1, -8200($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8204($fp)
	addi $sp, $sp, -4
	lw $t0, -8160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8204($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8208($fp)
	addi $sp, $sp, 20
	lw $t1, -8208($fp)
	li $t2, 0
	bne $t1, $t2, label515
	j label514
label514:
	li $t0, 1
	sw $t0, -8152($fp)
label515:
	li $t0, 0
	sw $t0, -8212($fp)
	li $t0, 12799
	sw $t0, -8216($fp)
	lw $t1, -8216($fp)
	li $t2, 0
	bne $t1, $t2, label521
	j label520
label520:
	li $t0, 1
	sw $t0, -8212($fp)
label521:
	li $t0, 0
	lw $t1, -8212($fp)
	sub $t0, $t0, $t1
	sw $t0, -8220($fp)
	lw $t0, -8152($fp)
	lw $t1, -8220($fp)
	sub $t0, $t0, $t1
	sw $t0, -8224($fp)
	li $t0, 0
	sw $t0, -8228($fp)
	lw $t0, -724($fp)
	sw $t0, -8232($fp)
	lw $t0, -1396($fp)
	sw $t0, -8236($fp)
	lw $t0, -8232($fp)
	lw $t1, -8236($fp)
	mul $t0, $t0, $t1
	sw $t0, -8240($fp)
	li $t0, 0
	lw $t1, -8240($fp)
	sub $t0, $t0, $t1
	sw $t0, -8244($fp)
	lw $t1, -8244($fp)
	li $t2, 0
	bne $t1, $t2, label523
	j label522
label522:
	li $t0, 1
	sw $t0, -8228($fp)
label523:
	lw $t1, -8224($fp)
	lw $t2, -8228($fp)
	bne $t1, $t2, label512
	j label513
label512:
	li $t0, 0
	sw $t0, -8248($fp)
	addi $t0, $fp, -172
	sw $t0, -8252($fp)
	li $t0, 4
	sw $t0, -8256($fp)
	li $t0, 4
	lw $t1, -8256($fp)
	mul $t0, $t0, $t1
	sw $t0, -8260($fp)
	lw $t0, -8260($fp)
	lw $t1, -8252($fp)
	add $t0, $t0, $t1
	sw $t0, -8264($fp)
	lw $t0, -8264($fp)
	lw $t1, 0($t0)
	sw $t1, -8268($fp)
	li $t0, 0
	sw $t0, -8272($fp)
	li $t0, 36479
	sw $t0, -8276($fp)
	lw $t1, -8276($fp)
	li $t2, 0
	bne $t1, $t2, label528
	j label527
label528:
	li $t0, 9872
	sw $t0, -8280($fp)
	lw $t1, -8280($fp)
	li $t2, 0
	bne $t1, $t2, label526
	j label527
label526:
	li $t0, 1
	sw $t0, -8272($fp)
label527:
	li $t0, 0
	sw $t0, -8284($fp)
	addi $t0, $fp, -188
	sw $t0, -8288($fp)
	lw $t0, -1624($fp)
	sw $t0, -8292($fp)
	li $t0, 4
	lw $t1, -8292($fp)
	mul $t0, $t0, $t1
	sw $t0, -8296($fp)
	lw $t0, -8296($fp)
	lw $t1, -8288($fp)
	add $t0, $t0, $t1
	sw $t0, -8300($fp)
	lw $t0, -8300($fp)
	lw $t1, 0($t0)
	sw $t1, -8304($fp)
	lw $t1, -8304($fp)
	li $t2, 0
	bne $t1, $t2, label531
	j label530
label531:
	li $t0, 48293
	sw $t0, -8308($fp)
	lw $t1, -8308($fp)
	li $t2, 0
	bne $t1, $t2, label529
	j label530
label529:
	li $t0, 1
	sw $t0, -8284($fp)
label530:
	li $t0, 0
	sw $t0, -8312($fp)
	lw $t0, -1468($fp)
	sw $t0, -8316($fp)
	lw $t0, -1624($fp)
	sw $t0, -8320($fp)
	lw $t1, -8316($fp)
	lw $t2, -8320($fp)
	bne $t1, $t2, label532
	j label534
label534:
	li $t0, 59787
	sw $t0, -8324($fp)
	lw $t1, -8324($fp)
	li $t2, 0
	bne $t1, $t2, label532
	j label533
label532:
	li $t0, 1
	sw $t0, -8312($fp)
label533:
	lw $t0, -1420($fp)
	sw $t0, -8328($fp)
	lw $t0, -8328($fp)
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	sw $t0, -8332($fp)
	li $t0, 0
	sw $t0, -8336($fp)
	li $t0, 20078
	sw $t0, -8340($fp)
	lw $t0, -1060($fp)
	sw $t0, -8344($fp)
	lw $t0, -8340($fp)
	lw $t1, -8344($fp)
	add $t0, $t0, $t1
	sw $t0, -8348($fp)
	lw $t1, -8348($fp)
	li $t2, 0
	bne $t1, $t2, label537
	j label536
label537:
	li $t0, 62046
	sw $t0, -8352($fp)
	lw $t1, -8352($fp)
	li $t2, 0
	bne $t1, $t2, label535
	j label536
label535:
	li $t0, 1
	sw $t0, -8336($fp)
label536:
	addi $sp, $sp, -4
	lw $t0, -8284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8336($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8356($fp)
	addi $sp, $sp, 20
	lw $t0, -1060($fp)
	sw $t0, -8360($fp)
	lw $t0, -8360($fp)
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, -8364($fp)
	li $t0, 0
	sw $t0, -8368($fp)
	lw $t0, -652($fp)
	sw $t0, -8372($fp)
	lw $t0, -700($fp)
	sw $t0, -8376($fp)
	lw $t0, -8372($fp)
	lw $t1, -8376($fp)
	sub $t0, $t0, $t1
	sw $t0, -8380($fp)
	li $t0, 9435
	sw $t0, -8384($fp)
	lw $t1, -8380($fp)
	lw $t2, -8384($fp)
	beq $t1, $t2, label538
	j label539
label538:
	li $t0, 1
	sw $t0, -8368($fp)
label539:
	addi $sp, $sp, -4
	lw $t0, -8272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8368($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8388($fp)
	addi $sp, $sp, 20
	lw $t0, -8268($fp)
	lw $t1, -8388($fp)
	add $t0, $t0, $t1
	sw $t0, -8392($fp)
	li $t0, 52180
	sw $t0, -8396($fp)
	lw $t1, -8392($fp)
	lw $t2, -8396($fp)
	beq $t1, $t2, label524
	j label525
label524:
	li $t0, 1
	sw $t0, -8248($fp)
label525:
	j label511
label513:
	j label508
label510:
	j label505
label507:
	addi $t0, $fp, -32
	sw $t0, -8400($fp)
	li $t0, 0
	sw $t0, -8404($fp)
	li $t0, 4
	lw $t1, -8404($fp)
	mul $t0, $t0, $t1
	sw $t0, -8408($fp)
	lw $t0, -8408($fp)
	lw $t1, -8400($fp)
	add $t0, $t0, $t1
	sw $t0, -8412($fp)
	lw $t0, -8412($fp)
	lw $t1, 0($t0)
	sw $t1, -8416($fp)
	lw $t0, -8416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -8420($fp)
	li $t0, 1
	sw $t0, -8424($fp)
	li $t0, 4
	lw $t1, -8424($fp)
	mul $t0, $t0, $t1
	sw $t0, -8428($fp)
	lw $t0, -8428($fp)
	lw $t1, -8420($fp)
	add $t0, $t0, $t1
	sw $t0, -8432($fp)
	lw $t0, -8432($fp)
	lw $t1, 0($t0)
	sw $t1, -8436($fp)
	lw $t0, -8436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -8440($fp)
	li $t0, 2
	sw $t0, -8444($fp)
	li $t0, 4
	lw $t1, -8444($fp)
	mul $t0, $t0, $t1
	sw $t0, -8448($fp)
	lw $t0, -8448($fp)
	lw $t1, -8440($fp)
	add $t0, $t0, $t1
	sw $t0, -8452($fp)
	lw $t0, -8452($fp)
	lw $t1, 0($t0)
	sw $t1, -8456($fp)
	lw $t0, -8456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -8460($fp)
	li $t0, 3
	sw $t0, -8464($fp)
	li $t0, 4
	lw $t1, -8464($fp)
	mul $t0, $t0, $t1
	sw $t0, -8468($fp)
	lw $t0, -8468($fp)
	lw $t1, -8460($fp)
	add $t0, $t0, $t1
	sw $t0, -8472($fp)
	lw $t0, -8472($fp)
	lw $t1, 0($t0)
	sw $t1, -8476($fp)
	lw $t0, -8476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -8480($fp)
	li $t0, 4
	sw $t0, -8484($fp)
	li $t0, 4
	lw $t1, -8484($fp)
	mul $t0, $t0, $t1
	sw $t0, -8488($fp)
	lw $t0, -8488($fp)
	lw $t1, -8480($fp)
	add $t0, $t0, $t1
	sw $t0, -8492($fp)
	lw $t0, -8492($fp)
	lw $t1, 0($t0)
	sw $t1, -8496($fp)
	lw $t0, -8496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -8500($fp)
	li $t0, 5
	sw $t0, -8504($fp)
	li $t0, 4
	lw $t1, -8504($fp)
	mul $t0, $t0, $t1
	sw $t0, -8508($fp)
	lw $t0, -8508($fp)
	lw $t1, -8500($fp)
	add $t0, $t0, $t1
	sw $t0, -8512($fp)
	lw $t0, -8512($fp)
	lw $t1, 0($t0)
	sw $t1, -8516($fp)
	lw $t0, -8516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -8520($fp)
	li $t0, 6
	sw $t0, -8524($fp)
	li $t0, 4
	lw $t1, -8524($fp)
	mul $t0, $t0, $t1
	sw $t0, -8528($fp)
	lw $t0, -8528($fp)
	lw $t1, -8520($fp)
	add $t0, $t0, $t1
	sw $t0, -8532($fp)
	lw $t0, -8532($fp)
	lw $t1, 0($t0)
	sw $t1, -8536($fp)
	lw $t0, -8536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -8540($fp)
	li $t0, 0
	sw $t0, -8544($fp)
	li $t0, 4
	lw $t1, -8544($fp)
	mul $t0, $t0, $t1
	sw $t0, -8548($fp)
	lw $t0, -8548($fp)
	lw $t1, -8540($fp)
	add $t0, $t0, $t1
	sw $t0, -8552($fp)
	lw $t0, -8552($fp)
	lw $t1, 0($t0)
	sw $t1, -8556($fp)
	lw $t0, -8556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -8560($fp)
	li $t0, 1
	sw $t0, -8564($fp)
	li $t0, 4
	lw $t1, -8564($fp)
	mul $t0, $t0, $t1
	sw $t0, -8568($fp)
	lw $t0, -8568($fp)
	lw $t1, -8560($fp)
	add $t0, $t0, $t1
	sw $t0, -8572($fp)
	lw $t0, -8572($fp)
	lw $t1, 0($t0)
	sw $t1, -8576($fp)
	lw $t0, -8576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -8580($fp)
	li $t0, 2
	sw $t0, -8584($fp)
	li $t0, 4
	lw $t1, -8584($fp)
	mul $t0, $t0, $t1
	sw $t0, -8588($fp)
	lw $t0, -8588($fp)
	lw $t1, -8580($fp)
	add $t0, $t0, $t1
	sw $t0, -8592($fp)
	lw $t0, -8592($fp)
	lw $t1, 0($t0)
	sw $t1, -8596($fp)
	lw $t0, -8596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -8600($fp)
	li $t0, 3
	sw $t0, -8604($fp)
	li $t0, 4
	lw $t1, -8604($fp)
	mul $t0, $t0, $t1
	sw $t0, -8608($fp)
	lw $t0, -8608($fp)
	lw $t1, -8600($fp)
	add $t0, $t0, $t1
	sw $t0, -8612($fp)
	lw $t0, -8612($fp)
	lw $t1, 0($t0)
	sw $t1, -8616($fp)
	lw $t0, -8616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -8620($fp)
	li $t0, 4
	sw $t0, -8624($fp)
	li $t0, 4
	lw $t1, -8624($fp)
	mul $t0, $t0, $t1
	sw $t0, -8628($fp)
	lw $t0, -8628($fp)
	lw $t1, -8620($fp)
	add $t0, $t0, $t1
	sw $t0, -8632($fp)
	lw $t0, -8632($fp)
	lw $t1, 0($t0)
	sw $t1, -8636($fp)
	lw $t0, -8636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -8640($fp)
	li $t0, 5
	sw $t0, -8644($fp)
	li $t0, 4
	lw $t1, -8644($fp)
	mul $t0, $t0, $t1
	sw $t0, -8648($fp)
	lw $t0, -8648($fp)
	lw $t1, -8640($fp)
	add $t0, $t0, $t1
	sw $t0, -8652($fp)
	lw $t0, -8652($fp)
	lw $t1, 0($t0)
	sw $t1, -8656($fp)
	lw $t0, -8656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -8660($fp)
	li $t0, 6
	sw $t0, -8664($fp)
	li $t0, 4
	lw $t1, -8664($fp)
	mul $t0, $t0, $t1
	sw $t0, -8668($fp)
	lw $t0, -8668($fp)
	lw $t1, -8660($fp)
	add $t0, $t0, $t1
	sw $t0, -8672($fp)
	lw $t0, -8672($fp)
	lw $t1, 0($t0)
	sw $t1, -8676($fp)
	lw $t0, -8676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -8680($fp)
	li $t0, 7
	sw $t0, -8684($fp)
	li $t0, 4
	lw $t1, -8684($fp)
	mul $t0, $t0, $t1
	sw $t0, -8688($fp)
	lw $t0, -8688($fp)
	lw $t1, -8680($fp)
	add $t0, $t0, $t1
	sw $t0, -8692($fp)
	lw $t0, -8692($fp)
	lw $t1, 0($t0)
	sw $t1, -8696($fp)
	lw $t0, -8696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -8700($fp)
	li $t0, 8
	sw $t0, -8704($fp)
	li $t0, 4
	lw $t1, -8704($fp)
	mul $t0, $t0, $t1
	sw $t0, -8708($fp)
	lw $t0, -8708($fp)
	lw $t1, -8700($fp)
	add $t0, $t0, $t1
	sw $t0, -8712($fp)
	lw $t0, -8712($fp)
	lw $t1, 0($t0)
	sw $t1, -8716($fp)
	lw $t0, -8716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -580($fp)
	sw $t0, -8720($fp)
	lw $t0, -8720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -592($fp)
	sw $t0, -8724($fp)
	lw $t0, -8724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -604($fp)
	sw $t0, -8728($fp)
	lw $t0, -8728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -616($fp)
	sw $t0, -8732($fp)
	lw $t0, -8732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -628($fp)
	sw $t0, -8736($fp)
	lw $t0, -8736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -640($fp)
	sw $t0, -8740($fp)
	lw $t0, -8740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -652($fp)
	sw $t0, -8744($fp)
	lw $t0, -8744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -664($fp)
	sw $t0, -8748($fp)
	lw $t0, -8748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -676($fp)
	sw $t0, -8752($fp)
	lw $t0, -8752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -688($fp)
	sw $t0, -8756($fp)
	lw $t0, -8756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -700($fp)
	sw $t0, -8760($fp)
	lw $t0, -8760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -712($fp)
	sw $t0, -8764($fp)
	lw $t0, -8764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -724($fp)
	sw $t0, -8768($fp)
	lw $t0, -8768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -736($fp)
	sw $t0, -8772($fp)
	lw $t0, -8772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -8776($fp)
	li $t0, 0
	sw $t0, -8780($fp)
	li $t0, 4
	lw $t1, -8780($fp)
	mul $t0, $t0, $t1
	sw $t0, -8784($fp)
	lw $t0, -8784($fp)
	lw $t1, -8776($fp)
	add $t0, $t0, $t1
	sw $t0, -8788($fp)
	lw $t0, -8788($fp)
	lw $t1, 0($t0)
	sw $t1, -8792($fp)
	lw $t0, -8792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -8796($fp)
	li $t0, 1
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
	addi $t0, $fp, -108
	sw $t0, -8816($fp)
	li $t0, 2
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
	addi $t0, $fp, -108
	sw $t0, -8836($fp)
	li $t0, 3
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
	addi $t0, $fp, -108
	sw $t0, -8856($fp)
	li $t0, 4
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
	addi $t0, $fp, -108
	sw $t0, -8876($fp)
	li $t0, 5
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
	addi $t0, $fp, -108
	sw $t0, -8896($fp)
	li $t0, 6
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
	addi $t0, $fp, -108
	sw $t0, -8916($fp)
	li $t0, 7
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
	addi $t0, $fp, -108
	sw $t0, -8936($fp)
	li $t0, 8
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
	addi $t0, $fp, -108
	sw $t0, -8956($fp)
	li $t0, 9
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
	addi $t0, $fp, -116
	sw $t0, -8976($fp)
	li $t0, 0
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
	addi $t0, $fp, -116
	sw $t0, -8996($fp)
	li $t0, 1
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
	lw $t0, -1036($fp)
	sw $t0, -9016($fp)
	lw $t0, -9016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1048($fp)
	sw $t0, -9020($fp)
	lw $t0, -9020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1060($fp)
	sw $t0, -9024($fp)
	lw $t0, -9024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1072($fp)
	sw $t0, -9028($fp)
	lw $t0, -9028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1084($fp)
	sw $t0, -9032($fp)
	lw $t0, -9032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1096($fp)
	sw $t0, -9036($fp)
	lw $t0, -9036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1108($fp)
	sw $t0, -9040($fp)
	lw $t0, -9040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1120($fp)
	sw $t0, -9044($fp)
	lw $t0, -9044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -9048($fp)
	li $t0, 0
	sw $t0, -9052($fp)
	li $t0, 4
	lw $t1, -9052($fp)
	mul $t0, $t0, $t1
	sw $t0, -9056($fp)
	lw $t0, -9056($fp)
	lw $t1, -9048($fp)
	add $t0, $t0, $t1
	sw $t0, -9060($fp)
	lw $t0, -9060($fp)
	lw $t1, 0($t0)
	sw $t1, -9064($fp)
	lw $t0, -9064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -9068($fp)
	li $t0, 1
	sw $t0, -9072($fp)
	li $t0, 4
	lw $t1, -9072($fp)
	mul $t0, $t0, $t1
	sw $t0, -9076($fp)
	lw $t0, -9076($fp)
	lw $t1, -9068($fp)
	add $t0, $t0, $t1
	sw $t0, -9080($fp)
	lw $t0, -9080($fp)
	lw $t1, 0($t0)
	sw $t1, -9084($fp)
	lw $t0, -9084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -9088($fp)
	li $t0, 2
	sw $t0, -9092($fp)
	li $t0, 4
	lw $t1, -9092($fp)
	mul $t0, $t0, $t1
	sw $t0, -9096($fp)
	lw $t0, -9096($fp)
	lw $t1, -9088($fp)
	add $t0, $t0, $t1
	sw $t0, -9100($fp)
	lw $t0, -9100($fp)
	lw $t1, 0($t0)
	sw $t1, -9104($fp)
	lw $t0, -9104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -9108($fp)
	li $t0, 3
	sw $t0, -9112($fp)
	li $t0, 4
	lw $t1, -9112($fp)
	mul $t0, $t0, $t1
	sw $t0, -9116($fp)
	lw $t0, -9116($fp)
	lw $t1, -9108($fp)
	add $t0, $t0, $t1
	sw $t0, -9120($fp)
	lw $t0, -9120($fp)
	lw $t1, 0($t0)
	sw $t1, -9124($fp)
	lw $t0, -9124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1228($fp)
	sw $t0, -9128($fp)
	lw $t0, -9128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1240($fp)
	sw $t0, -9132($fp)
	lw $t0, -9132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1252($fp)
	sw $t0, -9136($fp)
	lw $t0, -9136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -9140($fp)
	li $t0, 0
	sw $t0, -9144($fp)
	li $t0, 4
	lw $t1, -9144($fp)
	mul $t0, $t0, $t1
	sw $t0, -9148($fp)
	lw $t0, -9148($fp)
	lw $t1, -9140($fp)
	add $t0, $t0, $t1
	sw $t0, -9152($fp)
	lw $t0, -9152($fp)
	lw $t1, 0($t0)
	sw $t1, -9156($fp)
	lw $t0, -9156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -9160($fp)
	li $t0, 1
	sw $t0, -9164($fp)
	li $t0, 4
	lw $t1, -9164($fp)
	mul $t0, $t0, $t1
	sw $t0, -9168($fp)
	lw $t0, -9168($fp)
	lw $t1, -9160($fp)
	add $t0, $t0, $t1
	sw $t0, -9172($fp)
	lw $t0, -9172($fp)
	lw $t1, 0($t0)
	sw $t1, -9176($fp)
	lw $t0, -9176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -9180($fp)
	li $t0, 2
	sw $t0, -9184($fp)
	li $t0, 4
	lw $t1, -9184($fp)
	mul $t0, $t0, $t1
	sw $t0, -9188($fp)
	lw $t0, -9188($fp)
	lw $t1, -9180($fp)
	add $t0, $t0, $t1
	sw $t0, -9192($fp)
	lw $t0, -9192($fp)
	lw $t1, 0($t0)
	sw $t1, -9196($fp)
	lw $t0, -9196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -9200($fp)
	li $t0, 3
	sw $t0, -9204($fp)
	li $t0, 4
	lw $t1, -9204($fp)
	mul $t0, $t0, $t1
	sw $t0, -9208($fp)
	lw $t0, -9208($fp)
	lw $t1, -9200($fp)
	add $t0, $t0, $t1
	sw $t0, -9212($fp)
	lw $t0, -9212($fp)
	lw $t1, 0($t0)
	sw $t1, -9216($fp)
	lw $t0, -9216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -9220($fp)
	li $t0, 4
	sw $t0, -9224($fp)
	li $t0, 4
	lw $t1, -9224($fp)
	mul $t0, $t0, $t1
	sw $t0, -9228($fp)
	lw $t0, -9228($fp)
	lw $t1, -9220($fp)
	add $t0, $t0, $t1
	sw $t0, -9232($fp)
	lw $t0, -9232($fp)
	lw $t1, 0($t0)
	sw $t1, -9236($fp)
	lw $t0, -9236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1384($fp)
	sw $t0, -9240($fp)
	lw $t0, -9240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1396($fp)
	sw $t0, -9244($fp)
	lw $t0, -9244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1408($fp)
	sw $t0, -9248($fp)
	lw $t0, -9248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1420($fp)
	sw $t0, -9252($fp)
	lw $t0, -9252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1432($fp)
	sw $t0, -9256($fp)
	lw $t0, -9256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1444($fp)
	sw $t0, -9260($fp)
	lw $t0, -9260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1456($fp)
	sw $t0, -9264($fp)
	lw $t0, -9264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1468($fp)
	sw $t0, -9268($fp)
	lw $t0, -9268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -9272($fp)
	li $t0, 0
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
	addi $t0, $fp, -172
	sw $t0, -9292($fp)
	li $t0, 1
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
	addi $t0, $fp, -172
	sw $t0, -9312($fp)
	li $t0, 2
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
	addi $t0, $fp, -172
	sw $t0, -9332($fp)
	li $t0, 3
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
	addi $t0, $fp, -172
	sw $t0, -9352($fp)
	li $t0, 4
	sw $t0, -9356($fp)
	li $t0, 4
	lw $t1, -9356($fp)
	mul $t0, $t0, $t1
	sw $t0, -9360($fp)
	lw $t0, -9360($fp)
	lw $t1, -9352($fp)
	add $t0, $t0, $t1
	sw $t0, -9364($fp)
	lw $t0, -9364($fp)
	lw $t1, 0($t0)
	sw $t1, -9368($fp)
	lw $t0, -9368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1600($fp)
	sw $t0, -9372($fp)
	lw $t0, -9372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1612($fp)
	sw $t0, -9376($fp)
	lw $t0, -9376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1624($fp)
	sw $t0, -9380($fp)
	lw $t0, -9380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -9384($fp)
	li $t0, 0
	sw $t0, -9388($fp)
	li $t0, 4
	lw $t1, -9388($fp)
	mul $t0, $t0, $t1
	sw $t0, -9392($fp)
	lw $t0, -9392($fp)
	lw $t1, -9384($fp)
	add $t0, $t0, $t1
	sw $t0, -9396($fp)
	lw $t0, -9396($fp)
	lw $t1, 0($t0)
	sw $t1, -9400($fp)
	lw $t0, -9400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -9404($fp)
	li $t0, 1
	sw $t0, -9408($fp)
	li $t0, 4
	lw $t1, -9408($fp)
	mul $t0, $t0, $t1
	sw $t0, -9412($fp)
	lw $t0, -9412($fp)
	lw $t1, -9404($fp)
	add $t0, $t0, $t1
	sw $t0, -9416($fp)
	lw $t0, -9416($fp)
	lw $t1, 0($t0)
	sw $t1, -9420($fp)
	lw $t0, -9420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -9424($fp)
	li $t0, 2
	sw $t0, -9428($fp)
	li $t0, 4
	lw $t1, -9428($fp)
	mul $t0, $t0, $t1
	sw $t0, -9432($fp)
	lw $t0, -9432($fp)
	lw $t1, -9424($fp)
	add $t0, $t0, $t1
	sw $t0, -9436($fp)
	lw $t0, -9436($fp)
	lw $t1, 0($t0)
	sw $t1, -9440($fp)
	lw $t0, -9440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -9444($fp)
	li $t0, 3
	sw $t0, -9448($fp)
	li $t0, 4
	lw $t1, -9448($fp)
	mul $t0, $t0, $t1
	sw $t0, -9452($fp)
	lw $t0, -9452($fp)
	lw $t1, -9444($fp)
	add $t0, $t0, $t1
	sw $t0, -9456($fp)
	lw $t0, -9456($fp)
	lw $t1, 0($t0)
	sw $t1, -9460($fp)
	lw $t0, -9460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1732($fp)
	sw $t0, -9464($fp)
	lw $t0, -9464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1744($fp)
	sw $t0, -9468($fp)
	lw $t0, -9468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -9472($fp)
	li $t0, 4896
	sw $t0, -9476($fp)
	li $t0, 3278
	sw $t0, -9480($fp)
	li $t0, 12676
	sw $t0, -9484($fp)
	lw $t0, -9480($fp)
	lw $t1, -9484($fp)
	sub $t0, $t0, $t1
	sw $t0, -9488($fp)
	lw $t0, -1456($fp)
	sw $t0, -9492($fp)
	lw $t0, -9488($fp)
	lw $t1, -9492($fp)
	sub $t0, $t0, $t1
	sw $t0, -9496($fp)
	li $t0, 35894
	sw $t0, -9500($fp)
	li $t0, 0
	lw $t1, -9500($fp)
	sub $t0, $t0, $t1
	sw $t0, -9504($fp)
	lw $t0, -9496($fp)
	lw $t1, -9504($fp)
	add $t0, $t0, $t1
	sw $t0, -9508($fp)
	lw $t1, -9476($fp)
	lw $t2, -9508($fp)
	beq $t1, $t2, label540
	j label541
label540:
	li $t0, 1
	sw $t0, -9472($fp)
label541:
	lw $ra, -4($fp)
	lw $v0, -9472($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -5988
	li $t0, 2511
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	li $t0, 33600
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	li $t0, 7732
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	li $t0, 42134
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	li $t0, 62073
	sw $t0, -152($fp)
	addi $t0, $fp, -36
	sw $t0, -156($fp)
	li $t0, 0
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
	li $t0, 32536
	sw $t0, -176($fp)
	addi $t0, $fp, -36
	sw $t0, -180($fp)
	li $t0, 1
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -188($fp)
	lw $t0, -180($fp)
	lw $t1, -188($fp)
	add $t0, $t0, $t1
	sw $t0, -192($fp)
	lw $t0, -176($fp)
	lw $t1, -192($fp)
	sw $t0, 0($t1)
	lw $t0, -192($fp)
	lw $t1, 0($t0)
	sw $t1, -196($fp)
	li $t0, 62446
	sw $t0, -200($fp)
	addi $t0, $fp, -36
	sw $t0, -204($fp)
	li $t0, 2
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -212($fp)
	lw $t0, -204($fp)
	lw $t1, -212($fp)
	add $t0, $t0, $t1
	sw $t0, -216($fp)
	lw $t0, -200($fp)
	lw $t1, -216($fp)
	sw $t0, 0($t1)
	lw $t0, -216($fp)
	lw $t1, 0($t0)
	sw $t1, -220($fp)
	li $t0, 3817
	sw $t0, -224($fp)
	addi $t0, $fp, -36
	sw $t0, -228($fp)
	li $t0, 3
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
	li $t0, 29986
	sw $t0, -248($fp)
	addi $t0, $fp, -36
	sw $t0, -252($fp)
	li $t0, 4
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
	li $t0, 64161
	sw $t0, -272($fp)
	addi $t0, $fp, -36
	sw $t0, -276($fp)
	li $t0, 5
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
	li $t0, 56337
	sw $t0, -296($fp)
	addi $t0, $fp, -36
	sw $t0, -300($fp)
	li $t0, 6
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
	li $t0, 27255
	sw $t0, -320($fp)
	addi $t0, $fp, -36
	sw $t0, -324($fp)
	li $t0, 7
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
	li $t0, 39754
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -352($fp)
	li $t0, 33987
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	li $t0, 33765
	sw $t0, -368($fp)
	addi $t0, $fp, -64
	sw $t0, -372($fp)
	li $t0, 0
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
	li $t0, 29267
	sw $t0, -392($fp)
	addi $t0, $fp, -64
	sw $t0, -396($fp)
	li $t0, 1
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -404($fp)
	lw $t0, -396($fp)
	lw $t1, -404($fp)
	add $t0, $t0, $t1
	sw $t0, -408($fp)
	lw $t0, -392($fp)
	lw $t1, -408($fp)
	sw $t0, 0($t1)
	lw $t0, -408($fp)
	lw $t1, 0($t0)
	sw $t1, -412($fp)
	li $t0, 46786
	sw $t0, -416($fp)
	addi $t0, $fp, -64
	sw $t0, -420($fp)
	li $t0, 2
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -428($fp)
	lw $t0, -420($fp)
	lw $t1, -428($fp)
	add $t0, $t0, $t1
	sw $t0, -432($fp)
	lw $t0, -416($fp)
	lw $t1, -432($fp)
	sw $t0, 0($t1)
	lw $t0, -432($fp)
	lw $t1, 0($t0)
	sw $t1, -436($fp)
	li $t0, 45995
	sw $t0, -440($fp)
	addi $t0, $fp, -64
	sw $t0, -444($fp)
	li $t0, 3
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -452($fp)
	lw $t0, -444($fp)
	lw $t1, -452($fp)
	add $t0, $t0, $t1
	sw $t0, -456($fp)
	lw $t0, -440($fp)
	lw $t1, -456($fp)
	sw $t0, 0($t1)
	lw $t0, -456($fp)
	lw $t1, 0($t0)
	sw $t1, -460($fp)
	li $t0, 25152
	sw $t0, -464($fp)
	addi $t0, $fp, -64
	sw $t0, -468($fp)
	li $t0, 4
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -476($fp)
	lw $t0, -468($fp)
	lw $t1, -476($fp)
	add $t0, $t0, $t1
	sw $t0, -480($fp)
	lw $t0, -464($fp)
	lw $t1, -480($fp)
	sw $t0, 0($t1)
	lw $t0, -480($fp)
	lw $t1, 0($t0)
	sw $t1, -484($fp)
	li $t0, 56221
	sw $t0, -488($fp)
	addi $t0, $fp, -64
	sw $t0, -492($fp)
	li $t0, 5
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -500($fp)
	lw $t0, -492($fp)
	lw $t1, -500($fp)
	add $t0, $t0, $t1
	sw $t0, -504($fp)
	lw $t0, -488($fp)
	lw $t1, -504($fp)
	sw $t0, 0($t1)
	lw $t0, -504($fp)
	lw $t1, 0($t0)
	sw $t1, -508($fp)
	li $t0, 538
	sw $t0, -512($fp)
	addi $t0, $fp, -64
	sw $t0, -516($fp)
	li $t0, 6
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -524($fp)
	lw $t0, -516($fp)
	lw $t1, -524($fp)
	add $t0, $t0, $t1
	sw $t0, -528($fp)
	lw $t0, -512($fp)
	lw $t1, -528($fp)
	sw $t0, 0($t1)
	lw $t0, -528($fp)
	lw $t1, 0($t0)
	sw $t1, -532($fp)
	li $t0, 21662
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	li $t0, 50472
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -556($fp)
	li $t0, 48831
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -568($fp)
	li $t0, 58142
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -580($fp)
	li $t0, 60345
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	li $t0, 35475
	sw $t0, -596($fp)
	addi $t0, $fp, -100
	sw $t0, -600($fp)
	li $t0, 0
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -608($fp)
	lw $t0, -600($fp)
	lw $t1, -608($fp)
	add $t0, $t0, $t1
	sw $t0, -612($fp)
	lw $t0, -596($fp)
	lw $t1, -612($fp)
	sw $t0, 0($t1)
	lw $t0, -612($fp)
	lw $t1, 0($t0)
	sw $t1, -616($fp)
	li $t0, 63038
	sw $t0, -620($fp)
	addi $t0, $fp, -100
	sw $t0, -624($fp)
	li $t0, 1
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -632($fp)
	lw $t0, -624($fp)
	lw $t1, -632($fp)
	add $t0, $t0, $t1
	sw $t0, -636($fp)
	lw $t0, -620($fp)
	lw $t1, -636($fp)
	sw $t0, 0($t1)
	lw $t0, -636($fp)
	lw $t1, 0($t0)
	sw $t1, -640($fp)
	li $t0, 63623
	sw $t0, -644($fp)
	addi $t0, $fp, -100
	sw $t0, -648($fp)
	li $t0, 2
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -656($fp)
	lw $t0, -648($fp)
	lw $t1, -656($fp)
	add $t0, $t0, $t1
	sw $t0, -660($fp)
	lw $t0, -644($fp)
	lw $t1, -660($fp)
	sw $t0, 0($t1)
	lw $t0, -660($fp)
	lw $t1, 0($t0)
	sw $t1, -664($fp)
	li $t0, 48151
	sw $t0, -668($fp)
	addi $t0, $fp, -100
	sw $t0, -672($fp)
	li $t0, 3
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -680($fp)
	lw $t0, -672($fp)
	lw $t1, -680($fp)
	add $t0, $t0, $t1
	sw $t0, -684($fp)
	lw $t0, -668($fp)
	lw $t1, -684($fp)
	sw $t0, 0($t1)
	lw $t0, -684($fp)
	lw $t1, 0($t0)
	sw $t1, -688($fp)
	li $t0, 33396
	sw $t0, -692($fp)
	addi $t0, $fp, -100
	sw $t0, -696($fp)
	li $t0, 4
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -704($fp)
	lw $t0, -696($fp)
	lw $t1, -704($fp)
	add $t0, $t0, $t1
	sw $t0, -708($fp)
	lw $t0, -692($fp)
	lw $t1, -708($fp)
	sw $t0, 0($t1)
	lw $t0, -708($fp)
	lw $t1, 0($t0)
	sw $t1, -712($fp)
	li $t0, 599
	sw $t0, -716($fp)
	addi $t0, $fp, -100
	sw $t0, -720($fp)
	li $t0, 5
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -728($fp)
	lw $t0, -720($fp)
	lw $t1, -728($fp)
	add $t0, $t0, $t1
	sw $t0, -732($fp)
	lw $t0, -716($fp)
	lw $t1, -732($fp)
	sw $t0, 0($t1)
	lw $t0, -732($fp)
	lw $t1, 0($t0)
	sw $t1, -736($fp)
	li $t0, 16215
	sw $t0, -740($fp)
	addi $t0, $fp, -100
	sw $t0, -744($fp)
	li $t0, 6
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -752($fp)
	lw $t0, -744($fp)
	lw $t1, -752($fp)
	add $t0, $t0, $t1
	sw $t0, -756($fp)
	lw $t0, -740($fp)
	lw $t1, -756($fp)
	sw $t0, 0($t1)
	lw $t0, -756($fp)
	lw $t1, 0($t0)
	sw $t1, -760($fp)
	li $t0, 41128
	sw $t0, -764($fp)
	addi $t0, $fp, -100
	sw $t0, -768($fp)
	li $t0, 7
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -776($fp)
	lw $t0, -768($fp)
	lw $t1, -776($fp)
	add $t0, $t0, $t1
	sw $t0, -780($fp)
	lw $t0, -764($fp)
	lw $t1, -780($fp)
	sw $t0, 0($t1)
	lw $t0, -780($fp)
	lw $t1, 0($t0)
	sw $t1, -784($fp)
	li $t0, 42733
	sw $t0, -788($fp)
	addi $t0, $fp, -100
	sw $t0, -792($fp)
	li $t0, 8
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -800($fp)
	lw $t0, -792($fp)
	lw $t1, -800($fp)
	add $t0, $t0, $t1
	sw $t0, -804($fp)
	lw $t0, -788($fp)
	lw $t1, -804($fp)
	sw $t0, 0($t1)
	lw $t0, -804($fp)
	lw $t1, 0($t0)
	sw $t1, -808($fp)
	li $t0, 12753
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -820($fp)
	li $t0, 0
	sw $t0, -824($fp)
	li $t0, 39644
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -832($fp)
	li $t0, 0
	sw $t0, -836($fp)
	li $t0, 8128
	sw $t0, -840($fp)
	lw $t1, -840($fp)
	li $t2, 0
	bne $t1, $t2, label545
	j label544
label544:
	li $t0, 1
	sw $t0, -836($fp)
label545:
	addi $sp, $sp, -4
	lw $t0, -832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -836($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -844($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -848($fp)
	li $t0, 0
	sw $t0, -852($fp)
	li $t0, 41358
	sw $t0, -856($fp)
	lw $t1, -856($fp)
	li $t2, 0
	bne $t1, $t2, label549
	j label548
label548:
	li $t0, 1
	sw $t0, -852($fp)
label549:
	li $t0, 33599
	sw $t0, -860($fp)
	lw $t1, -852($fp)
	lw $t2, -860($fp)
	bgt $t1, $t2, label546
	j label547
label546:
	li $t0, 1
	sw $t0, -848($fp)
label547:
	li $t0, 0
	sw $t0, -864($fp)
	li $t0, 65370
	sw $t0, -868($fp)
	lw $t1, -868($fp)
	li $t2, 0
	bne $t1, $t2, label553
	j label552
label553:
	lw $t0, -348($fp)
	sw $t0, -872($fp)
	lw $t1, -872($fp)
	li $t2, 0
	bne $t1, $t2, label550
	j label552
label552:
	li $t0, 12487
	sw $t0, -876($fp)
	lw $t1, -876($fp)
	li $t2, 0
	bne $t1, $t2, label550
	j label551
label550:
	li $t0, 1
	sw $t0, -864($fp)
label551:
	li $t0, 0
	sw $t0, -880($fp)
	li $t0, 38269
	sw $t0, -884($fp)
	li $t0, 7371
	sw $t0, -888($fp)
	lw $t0, -884($fp)
	lw $t1, -888($fp)
	add $t0, $t0, $t1
	sw $t0, -892($fp)
	lw $t1, -892($fp)
	li $t2, 0
	bne $t1, $t2, label556
	j label555
label556:
	lw $t0, -360($fp)
	sw $t0, -896($fp)
	lw $t1, -896($fp)
	li $t2, 0
	bne $t1, $t2, label554
	j label555
label554:
	li $t0, 1
	sw $t0, -880($fp)
label555:
	li $t0, 16570
	sw $t0, -900($fp)
	li $t0, 38115
	sw $t0, -904($fp)
	lw $t0, -900($fp)
	lw $t1, -904($fp)
	mul $t0, $t0, $t1
	sw $t0, -908($fp)
	li $t0, 0
	lw $t1, -908($fp)
	sub $t0, $t0, $t1
	sw $t0, -912($fp)
	addi $sp, $sp, -4
	lw $t0, -848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -912($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -916($fp)
	addi $sp, $sp, 20
	lw $t0, -844($fp)
	lw $t1, -916($fp)
	sub $t0, $t0, $t1
	sw $t0, -920($fp)
	addi $t0, $fp, -64
	sw $t0, -924($fp)
	li $t0, 0
	sw $t0, -928($fp)
	lw $t0, -540($fp)
	sw $t0, -932($fp)
	li $t0, 41754
	sw $t0, -936($fp)
	lw $t1, -932($fp)
	lw $t2, -936($fp)
	bge $t1, $t2, label557
	j label558
label557:
	li $t0, 1
	sw $t0, -928($fp)
label558:
	li $t0, 4
	lw $t1, -928($fp)
	mul $t0, $t0, $t1
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	lw $t1, -924($fp)
	add $t0, $t0, $t1
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	lw $t1, 0($t0)
	sw $t1, -948($fp)
	lw $t1, -920($fp)
	lw $t2, -948($fp)
	ble $t1, $t2, label542
	j label543
label542:
	li $t0, 1
	sw $t0, -824($fp)
label543:
	lw $t0, -108($fp)
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -968($fp)
	li $t0, 0
	sw $t0, -972($fp)
	li $t0, 4
	lw $t1, -972($fp)
	mul $t0, $t0, $t1
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	lw $t1, -968($fp)
	add $t0, $t0, $t1
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	lw $t1, 0($t0)
	sw $t1, -984($fp)
	lw $t0, -984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -988($fp)
	li $t0, 1
	sw $t0, -992($fp)
	li $t0, 4
	lw $t1, -992($fp)
	mul $t0, $t0, $t1
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	lw $t1, -988($fp)
	add $t0, $t0, $t1
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	lw $t1, 0($t0)
	sw $t1, -1004($fp)
	lw $t0, -1004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1008($fp)
	li $t0, 2
	sw $t0, -1012($fp)
	li $t0, 4
	lw $t1, -1012($fp)
	mul $t0, $t0, $t1
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	lw $t1, -1008($fp)
	add $t0, $t0, $t1
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	lw $t1, 0($t0)
	sw $t1, -1024($fp)
	lw $t0, -1024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1028($fp)
	li $t0, 3
	sw $t0, -1032($fp)
	li $t0, 4
	lw $t1, -1032($fp)
	mul $t0, $t0, $t1
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	lw $t1, -1028($fp)
	add $t0, $t0, $t1
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	lw $t1, 0($t0)
	sw $t1, -1044($fp)
	lw $t0, -1044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1048($fp)
	li $t0, 4
	sw $t0, -1052($fp)
	li $t0, 4
	lw $t1, -1052($fp)
	mul $t0, $t0, $t1
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	lw $t1, -1048($fp)
	add $t0, $t0, $t1
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	lw $t1, 0($t0)
	sw $t1, -1064($fp)
	lw $t0, -1064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1068($fp)
	li $t0, 5
	sw $t0, -1072($fp)
	li $t0, 4
	lw $t1, -1072($fp)
	mul $t0, $t0, $t1
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	lw $t1, -1068($fp)
	add $t0, $t0, $t1
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	lw $t1, 0($t0)
	sw $t1, -1084($fp)
	lw $t0, -1084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1088($fp)
	li $t0, 6
	sw $t0, -1092($fp)
	li $t0, 4
	lw $t1, -1092($fp)
	mul $t0, $t0, $t1
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	lw $t1, -1088($fp)
	add $t0, $t0, $t1
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	lw $t1, 0($t0)
	sw $t1, -1104($fp)
	lw $t0, -1104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1108($fp)
	li $t0, 7
	sw $t0, -1112($fp)
	li $t0, 4
	lw $t1, -1112($fp)
	mul $t0, $t0, $t1
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	lw $t1, -1108($fp)
	add $t0, $t0, $t1
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	lw $t1, 0($t0)
	sw $t1, -1124($fp)
	lw $t0, -1124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -348($fp)
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -360($fp)
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1136($fp)
	li $t0, 0
	sw $t0, -1140($fp)
	li $t0, 4
	lw $t1, -1140($fp)
	mul $t0, $t0, $t1
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	lw $t1, -1136($fp)
	add $t0, $t0, $t1
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	lw $t1, 0($t0)
	sw $t1, -1152($fp)
	lw $t0, -1152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1156($fp)
	li $t0, 1
	sw $t0, -1160($fp)
	li $t0, 4
	lw $t1, -1160($fp)
	mul $t0, $t0, $t1
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	lw $t1, -1156($fp)
	add $t0, $t0, $t1
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	lw $t1, 0($t0)
	sw $t1, -1172($fp)
	lw $t0, -1172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1176($fp)
	li $t0, 2
	sw $t0, -1180($fp)
	li $t0, 4
	lw $t1, -1180($fp)
	mul $t0, $t0, $t1
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	lw $t1, -1176($fp)
	add $t0, $t0, $t1
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	lw $t1, 0($t0)
	sw $t1, -1192($fp)
	lw $t0, -1192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1196($fp)
	li $t0, 3
	sw $t0, -1200($fp)
	li $t0, 4
	lw $t1, -1200($fp)
	mul $t0, $t0, $t1
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	lw $t1, -1196($fp)
	add $t0, $t0, $t1
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	lw $t1, 0($t0)
	sw $t1, -1212($fp)
	lw $t0, -1212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1216($fp)
	li $t0, 4
	sw $t0, -1220($fp)
	li $t0, 4
	lw $t1, -1220($fp)
	mul $t0, $t0, $t1
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	lw $t1, -1216($fp)
	add $t0, $t0, $t1
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	lw $t1, 0($t0)
	sw $t1, -1232($fp)
	lw $t0, -1232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1236($fp)
	li $t0, 5
	sw $t0, -1240($fp)
	li $t0, 4
	lw $t1, -1240($fp)
	mul $t0, $t0, $t1
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	lw $t1, -1236($fp)
	add $t0, $t0, $t1
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	lw $t1, 0($t0)
	sw $t1, -1252($fp)
	lw $t0, -1252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1256($fp)
	li $t0, 6
	sw $t0, -1260($fp)
	li $t0, 4
	lw $t1, -1260($fp)
	mul $t0, $t0, $t1
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	lw $t1, -1256($fp)
	add $t0, $t0, $t1
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	lw $t1, 0($t0)
	sw $t1, -1272($fp)
	lw $t0, -1272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -540($fp)
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -552($fp)
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -564($fp)
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -576($fp)
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -588($fp)
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -1296($fp)
	li $t0, 0
	sw $t0, -1300($fp)
	li $t0, 4
	lw $t1, -1300($fp)
	mul $t0, $t0, $t1
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	lw $t1, -1296($fp)
	add $t0, $t0, $t1
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	lw $t1, 0($t0)
	sw $t1, -1312($fp)
	lw $t0, -1312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -1316($fp)
	li $t0, 1
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
	addi $t0, $fp, -100
	sw $t0, -1336($fp)
	li $t0, 2
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
	addi $t0, $fp, -100
	sw $t0, -1356($fp)
	li $t0, 3
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
	addi $t0, $fp, -100
	sw $t0, -1376($fp)
	li $t0, 4
	sw $t0, -1380($fp)
	li $t0, 4
	lw $t1, -1380($fp)
	mul $t0, $t0, $t1
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	lw $t1, -1376($fp)
	add $t0, $t0, $t1
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	lw $t1, 0($t0)
	sw $t1, -1392($fp)
	lw $t0, -1392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -1396($fp)
	li $t0, 5
	sw $t0, -1400($fp)
	li $t0, 4
	lw $t1, -1400($fp)
	mul $t0, $t0, $t1
	sw $t0, -1404($fp)
	lw $t0, -1404($fp)
	lw $t1, -1396($fp)
	add $t0, $t0, $t1
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	lw $t1, 0($t0)
	sw $t1, -1412($fp)
	lw $t0, -1412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -1416($fp)
	li $t0, 6
	sw $t0, -1420($fp)
	li $t0, 4
	lw $t1, -1420($fp)
	mul $t0, $t0, $t1
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	lw $t1, -1416($fp)
	add $t0, $t0, $t1
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	lw $t1, 0($t0)
	sw $t1, -1432($fp)
	lw $t0, -1432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -1436($fp)
	li $t0, 7
	sw $t0, -1440($fp)
	li $t0, 4
	lw $t1, -1440($fp)
	mul $t0, $t0, $t1
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	lw $t1, -1436($fp)
	add $t0, $t0, $t1
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	lw $t1, 0($t0)
	sw $t1, -1452($fp)
	lw $t0, -1452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -1456($fp)
	li $t0, 8
	sw $t0, -1460($fp)
	li $t0, 4
	lw $t1, -1460($fp)
	mul $t0, $t0, $t1
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	lw $t1, -1456($fp)
	add $t0, $t0, $t1
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	lw $t1, 0($t0)
	sw $t1, -1472($fp)
	lw $t0, -1472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -816($fp)
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1480($fp)
	li $t0, 22609
	sw $t0, -1484($fp)
	lw $t1, -1484($fp)
	li $t2, 0
	bne $t1, $t2, label561
	j label560
label561:
	lw $t0, -564($fp)
	sw $t0, -1488($fp)
	lw $t1, -1488($fp)
	li $t2, 0
	bne $t1, $t2, label559
	j label560
label559:
	li $t0, 1
	sw $t0, -1480($fp)
label560:
	lw $t0, -1480($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -1496($fp)
	lw $ra, -4($fp)
	lw $v0, -1496($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -100
	sw $t0, -1500($fp)
	li $t0, 0
	sw $t0, -1504($fp)
	lw $t0, -144($fp)
	sw $t0, -1508($fp)
	lw $t1, -1508($fp)
	li $t2, 0
	bne $t1, $t2, label566
	j label565
label565:
	li $t0, 1
	sw $t0, -1504($fp)
label566:
	li $t0, 0
	lw $t1, -1504($fp)
	sub $t0, $t0, $t1
	sw $t0, -1512($fp)
	li $t0, 4
	lw $t1, -1512($fp)
	mul $t0, $t0, $t1
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	lw $t1, -1500($fp)
	add $t0, $t0, $t1
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	lw $t1, 0($t0)
	sw $t1, -1524($fp)
	li $t0, 0
	sw $t0, -1528($fp)
	li $t0, 14059
	sw $t0, -1532($fp)
	lw $t1, -1532($fp)
	li $t2, 0
	bne $t1, $t2, label568
	j label567
label567:
	li $t0, 1
	sw $t0, -1528($fp)
label568:
	lw $t0, -1524($fp)
	lw $t1, -1528($fp)
	add $t0, $t0, $t1
	sw $t0, -1536($fp)
	lw $t1, -1536($fp)
	li $t2, 0
	bne $t1, $t2, label562
	j label563
label562:
	li $t0, 0
	sw $t0, -1540($fp)
	li $t0, 0
	sw $t0, -1544($fp)
	li $t0, 0
	sw $t0, -1548($fp)
	li $t0, 1370
	sw $t0, -1552($fp)
	lw $t1, -1552($fp)
	li $t2, 0
	bne $t1, $t2, label575
	j label574
label574:
	li $t0, 1
	sw $t0, -1548($fp)
label575:
	li $t0, 0
	lw $t1, -1548($fp)
	sub $t0, $t0, $t1
	sw $t0, -1556($fp)
	lw $t0, -120($fp)
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -1564($fp)
	li $t0, 0
	sw $t0, -1568($fp)
	lw $t0, -132($fp)
	sw $t0, -1572($fp)
	lw $t1, -1572($fp)
	li $t2, 0
	bne $t1, $t2, label576
	j label577
label576:
	li $t0, 1
	sw $t0, -1568($fp)
label577:
	addi $sp, $sp, -4
	lw $t0, -1564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1568($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1576($fp)
	addi $sp, $sp, 12
	lw $t1, -1556($fp)
	lw $t2, -1576($fp)
	ble $t1, $t2, label572
	j label573
label572:
	li $t0, 1
	sw $t0, -1544($fp)
label573:
	li $t0, 0
	sw $t0, -1580($fp)
	li $t0, 63767
	sw $t0, -1584($fp)
	lw $t0, -576($fp)
	sw $t0, -1588($fp)
	lw $t1, -1584($fp)
	lw $t2, -1588($fp)
	beq $t1, $t2, label580
	j label579
label580:
	lw $t0, -108($fp)
	sw $t0, -1592($fp)
	lw $t1, -1592($fp)
	li $t2, 0
	bne $t1, $t2, label578
	j label579
label578:
	li $t0, 1
	sw $t0, -1580($fp)
label579:
	li $t0, 0
	sw $t0, -1596($fp)
	li $t0, 13294
	sw $t0, -1600($fp)
	lw $t1, -1600($fp)
	li $t2, 0
	bne $t1, $t2, label584
	j label582
label584:
	li $t0, 14597
	sw $t0, -1604($fp)
	lw $t1, -1604($fp)
	li $t2, 0
	bne $t1, $t2, label583
	j label582
label583:
	li $t0, 23033
	sw $t0, -1608($fp)
	lw $t1, -1608($fp)
	li $t2, 0
	bne $t1, $t2, label581
	j label582
label581:
	li $t0, 1
	sw $t0, -1596($fp)
label582:
	li $t0, 0
	sw $t0, -1612($fp)
	addi $t0, $fp, -36
	sw $t0, -1616($fp)
	lw $t0, -564($fp)
	sw $t0, -1620($fp)
	li $t0, 4
	lw $t1, -1620($fp)
	mul $t0, $t0, $t1
	sw $t0, -1624($fp)
	lw $t0, -1624($fp)
	lw $t1, -1616($fp)
	add $t0, $t0, $t1
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	lw $t1, 0($t0)
	sw $t1, -1632($fp)
	lw $t0, -816($fp)
	sw $t0, -1636($fp)
	lw $t1, -1632($fp)
	lw $t2, -1636($fp)
	ble $t1, $t2, label585
	j label586
label585:
	li $t0, 1
	sw $t0, -1612($fp)
label586:
	li $t0, 0
	sw $t0, -1640($fp)
	lw $t0, -132($fp)
	sw $t0, -1644($fp)
	lw $t1, -1644($fp)
	li $t2, 0
	bne $t1, $t2, label588
	j label587
label587:
	li $t0, 1
	sw $t0, -1640($fp)
label588:
	addi $sp, $sp, -4
	lw $t0, -1580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1640($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1648($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -1648($fp)
	sub $t0, $t0, $t1
	sw $t0, -1652($fp)
	lw $t1, -1544($fp)
	lw $t2, -1652($fp)
	bne $t1, $t2, label571
	j label570
label571:
	li $t0, 63428
	sw $t0, -1656($fp)
	lw $t0, -144($fp)
	sw $t0, -1660($fp)
	lw $t0, -1656($fp)
	lw $t1, -1660($fp)
	mul $t0, $t0, $t1
	sw $t0, -1664($fp)
	li $t0, 0
	lw $t1, -1664($fp)
	sub $t0, $t0, $t1
	sw $t0, -1668($fp)
	lw $t0, -348($fp)
	sw $t0, -1672($fp)
	li $t0, 15639
	sw $t0, -1676($fp)
	lw $t0, -1672($fp)
	lw $t1, -1676($fp)
	mul $t0, $t0, $t1
	sw $t0, -1680($fp)
	lw $t1, -1668($fp)
	lw $t2, -1680($fp)
	blt $t1, $t2, label569
	j label570
label569:
	li $t0, 1
	sw $t0, -1540($fp)
label570:
	lw $ra, -4($fp)
	lw $v0, -1540($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label564
label563:
	li $t0, 58576
	sw $t0, -1780($fp)
	lw $t0, -1780($fp)
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	sw $t0, -1788($fp)
	li $t0, 33367
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	sw $t0, -1800($fp)
	li $t0, 13141
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	sw $t0, -1812($fp)
	li $t0, 56663
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	sw $t0, -1824($fp)
	li $t0, 15982
	sw $t0, -1828($fp)
	lw $t0, -1828($fp)
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	sw $t0, -1836($fp)
	li $t0, 46537
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	sw $t0, -1848($fp)
	li $t0, 57262
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	sw $t0, -1856($fp)
	lw $t0, -1856($fp)
	sw $t0, -1860($fp)
	li $t0, 32198
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	sw $t0, -1872($fp)
	li $t0, 22130
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	sw $t0, -1884($fp)
	li $t0, 34460
	sw $t0, -1888($fp)
	addi $t0, $fp, -1716
	sw $t0, -1892($fp)
	li $t0, 0
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
	li $t0, 44951
	sw $t0, -1912($fp)
	addi $t0, $fp, -1716
	sw $t0, -1916($fp)
	li $t0, 1
	sw $t0, -1920($fp)
	lw $t0, -1920($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1924($fp)
	lw $t0, -1916($fp)
	lw $t1, -1924($fp)
	add $t0, $t0, $t1
	sw $t0, -1928($fp)
	lw $t0, -1912($fp)
	lw $t1, -1928($fp)
	sw $t0, 0($t1)
	lw $t0, -1928($fp)
	lw $t1, 0($t0)
	sw $t1, -1932($fp)
	li $t0, 30258
	sw $t0, -1936($fp)
	addi $t0, $fp, -1716
	sw $t0, -1940($fp)
	li $t0, 2
	sw $t0, -1944($fp)
	lw $t0, -1944($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1948($fp)
	lw $t0, -1940($fp)
	lw $t1, -1948($fp)
	add $t0, $t0, $t1
	sw $t0, -1952($fp)
	lw $t0, -1936($fp)
	lw $t1, -1952($fp)
	sw $t0, 0($t1)
	lw $t0, -1952($fp)
	lw $t1, 0($t0)
	sw $t1, -1956($fp)
	li $t0, 8568
	sw $t0, -1960($fp)
	addi $t0, $fp, -1716
	sw $t0, -1964($fp)
	li $t0, 3
	sw $t0, -1968($fp)
	lw $t0, -1968($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1972($fp)
	lw $t0, -1964($fp)
	lw $t1, -1972($fp)
	add $t0, $t0, $t1
	sw $t0, -1976($fp)
	lw $t0, -1960($fp)
	lw $t1, -1976($fp)
	sw $t0, 0($t1)
	lw $t0, -1976($fp)
	lw $t1, 0($t0)
	sw $t1, -1980($fp)
	li $t0, 61521
	sw $t0, -1984($fp)
	addi $t0, $fp, -1716
	sw $t0, -1988($fp)
	li $t0, 4
	sw $t0, -1992($fp)
	lw $t0, -1992($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1996($fp)
	lw $t0, -1988($fp)
	lw $t1, -1996($fp)
	add $t0, $t0, $t1
	sw $t0, -2000($fp)
	lw $t0, -1984($fp)
	lw $t1, -2000($fp)
	sw $t0, 0($t1)
	lw $t0, -2000($fp)
	lw $t1, 0($t0)
	sw $t1, -2004($fp)
	li $t0, 2837
	sw $t0, -2008($fp)
	addi $t0, $fp, -1716
	sw $t0, -2012($fp)
	li $t0, 5
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
	li $t0, 46837
	sw $t0, -2032($fp)
	addi $t0, $fp, -1716
	sw $t0, -2036($fp)
	li $t0, 6
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
	li $t0, 3356
	sw $t0, -2056($fp)
	addi $t0, $fp, -1716
	sw $t0, -2060($fp)
	li $t0, 7
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
	li $t0, 2672
	sw $t0, -2080($fp)
	addi $t0, $fp, -1716
	sw $t0, -2084($fp)
	li $t0, 8
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
	li $t0, 59325
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	sw $t0, -2112($fp)
	li $t0, 44715
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	sw $t0, -2124($fp)
	li $t0, 36271
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	sw $t0, -2132($fp)
	lw $t0, -2132($fp)
	sw $t0, -2136($fp)
	li $t0, 35543
	sw $t0, -2140($fp)
	lw $t0, -2140($fp)
	sw $t0, -2144($fp)
	lw $t0, -2144($fp)
	sw $t0, -2148($fp)
	li $t0, 1788
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	sw $t0, -2156($fp)
	lw $t0, -2156($fp)
	sw $t0, -2160($fp)
	li $t0, 50330
	sw $t0, -2164($fp)
	lw $t0, -2164($fp)
	sw $t0, -2168($fp)
	lw $t0, -2168($fp)
	sw $t0, -2172($fp)
	li $t0, 36914
	sw $t0, -2176($fp)
	addi $t0, $fp, -1744
	sw $t0, -2180($fp)
	li $t0, 0
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
	li $t0, 15082
	sw $t0, -2200($fp)
	addi $t0, $fp, -1744
	sw $t0, -2204($fp)
	li $t0, 1
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
	li $t0, 64927
	sw $t0, -2224($fp)
	addi $t0, $fp, -1744
	sw $t0, -2228($fp)
	li $t0, 2
	sw $t0, -2232($fp)
	lw $t0, -2232($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2236($fp)
	lw $t0, -2228($fp)
	lw $t1, -2236($fp)
	add $t0, $t0, $t1
	sw $t0, -2240($fp)
	lw $t0, -2224($fp)
	lw $t1, -2240($fp)
	sw $t0, 0($t1)
	lw $t0, -2240($fp)
	lw $t1, 0($t0)
	sw $t1, -2244($fp)
	li $t0, 59947
	sw $t0, -2248($fp)
	addi $t0, $fp, -1744
	sw $t0, -2252($fp)
	li $t0, 3
	sw $t0, -2256($fp)
	lw $t0, -2256($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2260($fp)
	lw $t0, -2252($fp)
	lw $t1, -2260($fp)
	add $t0, $t0, $t1
	sw $t0, -2264($fp)
	lw $t0, -2248($fp)
	lw $t1, -2264($fp)
	sw $t0, 0($t1)
	lw $t0, -2264($fp)
	lw $t1, 0($t0)
	sw $t1, -2268($fp)
	li $t0, 13313
	sw $t0, -2272($fp)
	addi $t0, $fp, -1744
	sw $t0, -2276($fp)
	li $t0, 4
	sw $t0, -2280($fp)
	lw $t0, -2280($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2284($fp)
	lw $t0, -2276($fp)
	lw $t1, -2284($fp)
	add $t0, $t0, $t1
	sw $t0, -2288($fp)
	lw $t0, -2272($fp)
	lw $t1, -2288($fp)
	sw $t0, 0($t1)
	lw $t0, -2288($fp)
	lw $t1, 0($t0)
	sw $t1, -2292($fp)
	li $t0, 62819
	sw $t0, -2296($fp)
	addi $t0, $fp, -1744
	sw $t0, -2300($fp)
	li $t0, 5
	sw $t0, -2304($fp)
	lw $t0, -2304($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2308($fp)
	lw $t0, -2300($fp)
	lw $t1, -2308($fp)
	add $t0, $t0, $t1
	sw $t0, -2312($fp)
	lw $t0, -2296($fp)
	lw $t1, -2312($fp)
	sw $t0, 0($t1)
	lw $t0, -2312($fp)
	lw $t1, 0($t0)
	sw $t1, -2316($fp)
	li $t0, 10050
	sw $t0, -2320($fp)
	addi $t0, $fp, -1744
	sw $t0, -2324($fp)
	li $t0, 6
	sw $t0, -2328($fp)
	lw $t0, -2328($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2332($fp)
	lw $t0, -2324($fp)
	lw $t1, -2332($fp)
	add $t0, $t0, $t1
	sw $t0, -2336($fp)
	lw $t0, -2320($fp)
	lw $t1, -2336($fp)
	sw $t0, 0($t1)
	lw $t0, -2336($fp)
	lw $t1, 0($t0)
	sw $t1, -2340($fp)
	li $t0, 6353
	sw $t0, -2344($fp)
	lw $t0, -2344($fp)
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	sw $t0, -2352($fp)
	li $t0, 30650
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	sw $t0, -2360($fp)
	lw $t0, -2360($fp)
	sw $t0, -2364($fp)
	li $t0, 23191
	sw $t0, -2368($fp)
	lw $t0, -2368($fp)
	sw $t0, -2372($fp)
	lw $t0, -2372($fp)
	sw $t0, -2376($fp)
	li $t0, 63017
	sw $t0, -2380($fp)
	lw $t0, -2380($fp)
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	sw $t0, -2388($fp)
	li $t0, 46633
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	sw $t0, -2400($fp)
	li $t0, 4192
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	sw $t0, -2412($fp)
	li $t0, 54743
	sw $t0, -2416($fp)
	lw $t0, -2416($fp)
	sw $t0, -2420($fp)
	lw $t0, -2420($fp)
	sw $t0, -2424($fp)
	li $t0, 13295
	sw $t0, -2428($fp)
	lw $t0, -2428($fp)
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	sw $t0, -2436($fp)
	li $t0, 26322
	sw $t0, -2440($fp)
	lw $t0, -2440($fp)
	sw $t0, -2444($fp)
	lw $t0, -2444($fp)
	sw $t0, -2448($fp)
	li $t0, 23667
	sw $t0, -2452($fp)
	lw $t0, -2452($fp)
	sw $t0, -2456($fp)
	lw $t0, -2456($fp)
	sw $t0, -2460($fp)
	li $t0, 58246
	sw $t0, -2464($fp)
	lw $t0, -2464($fp)
	sw $t0, -2468($fp)
	lw $t0, -2468($fp)
	sw $t0, -2472($fp)
	li $t0, 56581
	sw $t0, -2476($fp)
	addi $t0, $fp, -1776
	sw $t0, -2480($fp)
	li $t0, 0
	sw $t0, -2484($fp)
	lw $t0, -2484($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2488($fp)
	lw $t0, -2480($fp)
	lw $t1, -2488($fp)
	add $t0, $t0, $t1
	sw $t0, -2492($fp)
	lw $t0, -2476($fp)
	lw $t1, -2492($fp)
	sw $t0, 0($t1)
	lw $t0, -2492($fp)
	lw $t1, 0($t0)
	sw $t1, -2496($fp)
	li $t0, 32235
	sw $t0, -2500($fp)
	addi $t0, $fp, -1776
	sw $t0, -2504($fp)
	li $t0, 1
	sw $t0, -2508($fp)
	lw $t0, -2508($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2512($fp)
	lw $t0, -2504($fp)
	lw $t1, -2512($fp)
	add $t0, $t0, $t1
	sw $t0, -2516($fp)
	lw $t0, -2500($fp)
	lw $t1, -2516($fp)
	sw $t0, 0($t1)
	lw $t0, -2516($fp)
	lw $t1, 0($t0)
	sw $t1, -2520($fp)
	li $t0, 54231
	sw $t0, -2524($fp)
	addi $t0, $fp, -1776
	sw $t0, -2528($fp)
	li $t0, 2
	sw $t0, -2532($fp)
	lw $t0, -2532($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2536($fp)
	lw $t0, -2528($fp)
	lw $t1, -2536($fp)
	add $t0, $t0, $t1
	sw $t0, -2540($fp)
	lw $t0, -2524($fp)
	lw $t1, -2540($fp)
	sw $t0, 0($t1)
	lw $t0, -2540($fp)
	lw $t1, 0($t0)
	sw $t1, -2544($fp)
	li $t0, 59418
	sw $t0, -2548($fp)
	addi $t0, $fp, -1776
	sw $t0, -2552($fp)
	li $t0, 3
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
	li $t0, 13537
	sw $t0, -2572($fp)
	addi $t0, $fp, -1776
	sw $t0, -2576($fp)
	li $t0, 4
	sw $t0, -2580($fp)
	lw $t0, -2580($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2584($fp)
	lw $t0, -2576($fp)
	lw $t1, -2584($fp)
	add $t0, $t0, $t1
	sw $t0, -2588($fp)
	lw $t0, -2572($fp)
	lw $t1, -2588($fp)
	sw $t0, 0($t1)
	lw $t0, -2588($fp)
	lw $t1, 0($t0)
	sw $t1, -2592($fp)
	li $t0, 57587
	sw $t0, -2596($fp)
	addi $t0, $fp, -1776
	sw $t0, -2600($fp)
	li $t0, 5
	sw $t0, -2604($fp)
	lw $t0, -2604($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2608($fp)
	lw $t0, -2600($fp)
	lw $t1, -2608($fp)
	add $t0, $t0, $t1
	sw $t0, -2612($fp)
	lw $t0, -2596($fp)
	lw $t1, -2612($fp)
	sw $t0, 0($t1)
	lw $t0, -2612($fp)
	lw $t1, 0($t0)
	sw $t1, -2616($fp)
	li $t0, 62090
	sw $t0, -2620($fp)
	addi $t0, $fp, -1776
	sw $t0, -2624($fp)
	li $t0, 6
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
	li $t0, 7326
	sw $t0, -2644($fp)
	addi $t0, $fp, -1776
	sw $t0, -2648($fp)
	li $t0, 7
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
	li $t0, 36766
	sw $t0, -2668($fp)
	lw $t0, -2668($fp)
	sw $t0, -2672($fp)
	lw $t0, -2672($fp)
	sw $t0, -2676($fp)
	li $t0, 32826
	sw $t0, -2680($fp)
	lw $t0, -2680($fp)
	sw $t0, -2684($fp)
	lw $t0, -2684($fp)
	sw $t0, -2688($fp)
	li $t0, 42869
	sw $t0, -2692($fp)
	lw $t0, -2692($fp)
	sw $t0, -2696($fp)
	lw $t0, -2696($fp)
	sw $t0, -2700($fp)
	li $t0, 38554
	sw $t0, -2704($fp)
	lw $t0, -2704($fp)
	sw $t0, -2708($fp)
	lw $t0, -2708($fp)
	sw $t0, -2712($fp)
	li $t0, 17620
	sw $t0, -2716($fp)
	lw $t0, -2716($fp)
	sw $t0, -2720($fp)
	lw $t0, -2720($fp)
	sw $t0, -2724($fp)
	li $t0, 14247
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	sw $t0, -2732($fp)
	lw $t0, -2732($fp)
	sw $t0, -2736($fp)
	li $t0, 53637
	sw $t0, -2740($fp)
	lw $t0, -2740($fp)
	sw $t0, -2744($fp)
	lw $t0, -2744($fp)
	sw $t0, -2748($fp)
	li $t0, 17012
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	sw $t0, -2756($fp)
	lw $t0, -2756($fp)
	sw $t0, -2760($fp)
	li $t0, 8658
	sw $t0, -2764($fp)
	lw $t0, -2764($fp)
	sw $t0, -2768($fp)
	lw $t0, -2768($fp)
	sw $t0, -2772($fp)
	li $t0, 1414
	sw $t0, -2776($fp)
	lw $t0, -2776($fp)
	sw $t0, -2780($fp)
	lw $t0, -2780($fp)
	sw $t0, -2784($fp)
	li $t0, 0
	sw $t0, -2788($fp)
	li $t0, 0
	sw $t0, -2792($fp)
	lw $t0, -1808($fp)
	sw $t0, -2796($fp)
	li $t0, 14295
	sw $t0, -2800($fp)
	lw $t0, -2796($fp)
	lw $t1, -2800($fp)
	sub $t0, $t0, $t1
	sw $t0, -2804($fp)
	lw $t0, -2672($fp)
	sw $t0, -2808($fp)
	lw $t1, -2804($fp)
	lw $t2, -2808($fp)
	bge $t1, $t2, label591
	j label592
label591:
	li $t0, 1
	sw $t0, -2792($fp)
label592:
	lw $t0, -2420($fp)
	sw $t0, -2812($fp)
	lw $t0, -2812($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -2816($fp)
	addi $sp, $sp, -4
	lw $t0, -2792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2816($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2820($fp)
	addi $sp, $sp, 12
	lw $t0, -2744($fp)
	sw $t0, -2824($fp)
	li $t0, 18708
	sw $t0, -2828($fp)
	lw $t0, -2824($fp)
	lw $t1, -2828($fp)
	mul $t0, $t0, $t1
	sw $t0, -2832($fp)
	li $t0, 7768
	sw $t0, -2836($fp)
	lw $t0, -2832($fp)
	lw $t1, -2836($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2840($fp)
	lw $t0, -2820($fp)
	lw $t1, -2840($fp)
	add $t0, $t0, $t1
	sw $t0, -2844($fp)
	lw $t0, -588($fp)
	sw $t0, -2848($fp)
	lw $t1, -2844($fp)
	lw $t2, -2848($fp)
	ble $t1, $t2, label589
	j label590
label589:
	li $t0, 1
	sw $t0, -2788($fp)
label590:
	addi $t0, $fp, -1776
	sw $t0, -2852($fp)
	lw $t0, -816($fp)
	sw $t0, -2856($fp)
	li $t0, 4
	lw $t1, -2856($fp)
	mul $t0, $t0, $t1
	sw $t0, -2860($fp)
	lw $t0, -2860($fp)
	lw $t1, -2852($fp)
	add $t0, $t0, $t1
	sw $t0, -2864($fp)
	lw $t0, -2864($fp)
	lw $t1, 0($t0)
	sw $t1, -2868($fp)
	lw $t1, -2868($fp)
	li $t2, 0
	bne $t1, $t2, label593
	j label594
label593:
	lw $t0, -2420($fp)
	sw $t0, -2872($fp)
	li $t0, 0
	sw $t0, -2876($fp)
	lw $t0, -2780($fp)
	sw $t0, -2880($fp)
	li $t0, 44946
	sw $t0, -2884($fp)
	lw $t0, -2880($fp)
	lw $t1, -2884($fp)
	mul $t0, $t0, $t1
	sw $t0, -2888($fp)
	lw $t1, -2888($fp)
	li $t2, 0
	bne $t1, $t2, label598
	j label597
label598:
	lw $t0, -1844($fp)
	sw $t0, -2892($fp)
	lw $t1, -2892($fp)
	li $t2, 0
	bne $t1, $t2, label596
	j label597
label596:
	li $t0, 1
	sw $t0, -2876($fp)
label597:
	lw $t0, -1844($fp)
	sw $t0, -2896($fp)
	lw $t0, -2896($fp)
	sw $t0, -2684($fp)
	lw $t0, -2684($fp)
	sw $t0, -2900($fp)
	li $t0, 0
	sw $t0, -2904($fp)
	lw $t0, -2108($fp)
	sw $t0, -2908($fp)
	lw $t0, -2408($fp)
	sw $t0, -2912($fp)
	lw $t1, -2908($fp)
	lw $t2, -2912($fp)
	beq $t1, $t2, label601
	j label600
label601:
	lw $t0, -2768($fp)
	sw $t0, -2916($fp)
	lw $t1, -2916($fp)
	li $t2, 0
	bne $t1, $t2, label599
	j label600
label599:
	li $t0, 1
	sw $t0, -2904($fp)
label600:
	addi $sp, $sp, -4
	lw $t0, -2872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2904($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2920($fp)
	addi $sp, $sp, 20
	lw $t0, -2384($fp)
	sw $t0, -2924($fp)
	lw $t0, -2920($fp)
	lw $t1, -2924($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2928($fp)
	li $t0, 0
	lw $t1, -2928($fp)
	sub $t0, $t0, $t1
	sw $t0, -2932($fp)
	j label595
label594:
	li $t0, 0
	sw $t0, -2936($fp)
	lw $t0, -1784($fp)
	sw $t0, -2940($fp)
	lw $t1, -2940($fp)
	li $t2, 0
	bne $t1, $t2, label602
	j label604
label604:
	li $t0, 41899
	sw $t0, -2944($fp)
	lw $t1, -2944($fp)
	li $t2, 0
	bne $t1, $t2, label603
	j label602
label602:
	li $t0, 1
	sw $t0, -2936($fp)
label603:
label595:
	addi $t0, $fp, -1776
	sw $t0, -2948($fp)
	li $t0, 3
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
	lw $t0, -588($fp)
	sw $t0, -2968($fp)
	lw $t1, -2964($fp)
	lw $t2, -2968($fp)
	bgt $t1, $t2, label605
	j label606
label605:
	li $t0, 0
	sw $t0, -2972($fp)
	addi $t0, $fp, -1776
	sw $t0, -2976($fp)
	lw $t0, -2756($fp)
	sw $t0, -2980($fp)
	li $t0, 46092
	sw $t0, -2984($fp)
	lw $t0, -2980($fp)
	lw $t1, -2984($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2988($fp)
	li $t0, 59992
	sw $t0, -2992($fp)
	lw $t0, -2988($fp)
	lw $t1, -2992($fp)
	mul $t0, $t0, $t1
	sw $t0, -2996($fp)
	li $t0, 4
	lw $t1, -2996($fp)
	mul $t0, $t0, $t1
	sw $t0, -3000($fp)
	lw $t0, -3000($fp)
	lw $t1, -2976($fp)
	add $t0, $t0, $t1
	sw $t0, -3004($fp)
	lw $t0, -3004($fp)
	lw $t1, 0($t0)
	sw $t1, -3008($fp)
	lw $t1, -3008($fp)
	li $t2, 0
	bne $t1, $t2, label608
	j label610
label610:
	lw $t0, -2720($fp)
	sw $t0, -3012($fp)
	li $t0, 39338
	sw $t0, -3016($fp)
	lw $t0, -3012($fp)
	lw $t1, -3016($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3020($fp)
	lw $t0, -2348($fp)
	sw $t0, -3024($fp)
	lw $t0, -3020($fp)
	lw $t1, -3024($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3028($fp)
	li $t0, 6878
	sw $t0, -3032($fp)
	lw $t1, -3028($fp)
	lw $t2, -3032($fp)
	blt $t1, $t2, label608
	j label609
label608:
	li $t0, 1
	sw $t0, -2972($fp)
label609:
	j label607
label606:
	addi $t0, $fp, -100
	sw $t0, -3036($fp)
	lw $t0, -108($fp)
	sw $t0, -3040($fp)
	li $t0, 4
	lw $t1, -3040($fp)
	mul $t0, $t0, $t1
	sw $t0, -3044($fp)
	lw $t0, -3044($fp)
	lw $t1, -3036($fp)
	add $t0, $t0, $t1
	sw $t0, -3048($fp)
	lw $t0, -3048($fp)
	lw $t1, 0($t0)
	sw $t1, -3052($fp)
	li $t0, 0
	lw $t1, -3052($fp)
	sub $t0, $t0, $t1
	sw $t0, -3056($fp)
label607:
	li $t0, 18124
	sw $t0, -3060($fp)
	lw $t0, -2468($fp)
	sw $t0, -3064($fp)
	lw $t0, -3060($fp)
	lw $t1, -3064($fp)
	mul $t0, $t0, $t1
	sw $t0, -3068($fp)
	lw $t0, -2408($fp)
	sw $t0, -3072($fp)
	lw $t0, -3068($fp)
	lw $t1, -3072($fp)
	sub $t0, $t0, $t1
	sw $t0, -3076($fp)
	lw $t0, -1820($fp)
	sw $t0, -3080($fp)
	lw $t0, -3080($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -3084($fp)
	addi $sp, $sp, -4
	lw $t0, -3076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3084($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3088($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -1776
	sw $t0, -3092($fp)
	li $t0, 3
	sw $t0, -3096($fp)
	li $t0, 4
	lw $t1, -3096($fp)
	mul $t0, $t0, $t1
	sw $t0, -3100($fp)
	lw $t0, -3100($fp)
	lw $t1, -3092($fp)
	add $t0, $t0, $t1
	sw $t0, -3104($fp)
	lw $t0, -3104($fp)
	lw $t1, 0($t0)
	sw $t1, -3108($fp)
	lw $t0, -3088($fp)
	lw $t1, -3108($fp)
	sub $t0, $t0, $t1
	sw $t0, -3112($fp)
	lw $t1, -3112($fp)
	li $t2, 0
	bne $t1, $t2, label614
	j label612
label614:
	li $t0, 50359
	sw $t0, -3116($fp)
	lw $t0, -2396($fp)
	sw $t0, -3120($fp)
	lw $t0, -3116($fp)
	lw $t1, -3120($fp)
	mul $t0, $t0, $t1
	sw $t0, -3124($fp)
	li $t0, 0
	sw $t0, -3128($fp)
	lw $t0, -2696($fp)
	sw $t0, -3132($fp)
	lw $t1, -3132($fp)
	li $t2, 0
	bne $t1, $t2, label616
	j label615
label615:
	li $t0, 1
	sw $t0, -3128($fp)
label616:
	lw $t0, -3124($fp)
	lw $t1, -3128($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3136($fp)
	lw $t1, -3136($fp)
	li $t2, 0
	bne $t1, $t2, label611
	j label612
label611:
	li $t0, 0
	sw $t0, -3140($fp)
	lw $t0, -2108($fp)
	sw $t0, -3144($fp)
	lw $t1, -3144($fp)
	li $t2, 0
	bne $t1, $t2, label617
	j label619
label619:
	lw $t0, -348($fp)
	sw $t0, -3148($fp)
	lw $t1, -3148($fp)
	li $t2, 0
	bne $t1, $t2, label617
	j label618
label617:
	li $t0, 1
	sw $t0, -3140($fp)
label618:
	lw $t0, -3140($fp)
	sw $t0, -2708($fp)
	lw $t0, -2708($fp)
	sw $t0, -3152($fp)
	lw $t0, -3152($fp)
	sw $t0, -2144($fp)
	lw $t0, -2144($fp)
	sw $t0, -3156($fp)
	j label613
label612:
	li $t0, 0
	sw $t0, -3160($fp)
	li $t0, 0
	sw $t0, -3164($fp)
	lw $t0, -2420($fp)
	sw $t0, -3168($fp)
	li $t0, 0
	lw $t1, -3168($fp)
	sub $t0, $t0, $t1
	sw $t0, -3172($fp)
	lw $t1, -3172($fp)
	li $t2, 0
	bne $t1, $t2, label623
	j label622
label622:
	li $t0, 1
	sw $t0, -3164($fp)
label623:
	li $t0, 0
	lw $t1, -3164($fp)
	sub $t0, $t0, $t1
	sw $t0, -3176($fp)
	li $t0, 0
	sw $t0, -3180($fp)
	li $t0, 0
	sw $t0, -3184($fp)
	li $t0, 5686
	sw $t0, -3188($fp)
	lw $t1, -3188($fp)
	li $t2, 0
	bne $t1, $t2, label626
	j label627
label626:
	li $t0, 1
	sw $t0, -3184($fp)
label627:
	li $t0, 0
	sw $t0, -3192($fp)
	li $t0, 12794
	sw $t0, -3196($fp)
	li $t0, 53896
	sw $t0, -3200($fp)
	lw $t0, -3196($fp)
	lw $t1, -3200($fp)
	mul $t0, $t0, $t1
	sw $t0, -3204($fp)
	lw $t1, -3204($fp)
	li $t2, 0
	bne $t1, $t2, label630
	j label629
label630:
	lw $t0, -1784($fp)
	sw $t0, -3208($fp)
	lw $t1, -3208($fp)
	li $t2, 0
	bne $t1, $t2, label628
	j label629
label628:
	li $t0, 1
	sw $t0, -3192($fp)
label629:
	addi $sp, $sp, -4
	lw $t0, -3184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3192($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3212($fp)
	addi $sp, $sp, 12
	lw $t1, -3212($fp)
	li $t2, 0
	bne $t1, $t2, label625
	j label624
label624:
	li $t0, 1
	sw $t0, -3180($fp)
label625:
	lw $t0, -552($fp)
	sw $t0, -3216($fp)
	li $t0, 63896
	sw $t0, -3220($fp)
	lw $t0, -3216($fp)
	lw $t1, -3220($fp)
	add $t0, $t0, $t1
	sw $t0, -3224($fp)
	lw $t0, -1796($fp)
	sw $t0, -3228($fp)
	lw $t0, -3224($fp)
	lw $t1, -3228($fp)
	add $t0, $t0, $t1
	sw $t0, -3232($fp)
	li $t0, 0
	sw $t0, -3236($fp)
	li $t0, 0
	sw $t0, -3240($fp)
	li $t0, 20743
	sw $t0, -3244($fp)
	li $t0, 57342
	sw $t0, -3248($fp)
	lw $t1, -3244($fp)
	lw $t2, -3248($fp)
	bgt $t1, $t2, label633
	j label634
label633:
	li $t0, 1
	sw $t0, -3240($fp)
label634:
	lw $t0, -2732($fp)
	sw $t0, -3252($fp)
	lw $t1, -3240($fp)
	lw $t2, -3252($fp)
	ble $t1, $t2, label631
	j label632
label631:
	li $t0, 1
	sw $t0, -3236($fp)
label632:
	addi $t0, $fp, -64
	sw $t0, -3256($fp)
	lw $t0, -2456($fp)
	sw $t0, -3260($fp)
	li $t0, 4
	lw $t1, -3260($fp)
	mul $t0, $t0, $t1
	sw $t0, -3264($fp)
	lw $t0, -3264($fp)
	lw $t1, -3256($fp)
	add $t0, $t0, $t1
	sw $t0, -3268($fp)
	lw $t0, -3268($fp)
	lw $t1, 0($t0)
	sw $t1, -3272($fp)
	addi $sp, $sp, -4
	lw $t0, -3180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3272($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3276($fp)
	addi $sp, $sp, 20
	lw $t0, -3176($fp)
	lw $t1, -3276($fp)
	sub $t0, $t0, $t1
	sw $t0, -3280($fp)
	lw $t0, -360($fp)
	sw $t0, -3284($fp)
	addi $t0, $fp, -1776
	sw $t0, -3288($fp)
	lw $t0, -2384($fp)
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
	lw $t0, -3284($fp)
	lw $t1, -3304($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3308($fp)
	lw $t1, -3280($fp)
	lw $t2, -3308($fp)
	bne $t1, $t2, label620
	j label621
label620:
	li $t0, 1
	sw $t0, -3160($fp)
label621:
label613:
	addi $t0, $fp, -1744
	sw $t0, -3312($fp)
	li $t0, 49561
	sw $t0, -3316($fp)
	lw $t0, -588($fp)
	sw $t0, -3320($fp)
	lw $t0, -3316($fp)
	lw $t1, -3320($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3324($fp)
	li $t0, 4
	lw $t1, -3324($fp)
	mul $t0, $t0, $t1
	sw $t0, -3328($fp)
	lw $t0, -3328($fp)
	lw $t1, -3312($fp)
	add $t0, $t0, $t1
	sw $t0, -3332($fp)
	lw $t0, -3332($fp)
	lw $t1, 0($t0)
	sw $t1, -3336($fp)
	addi $t0, $fp, -1744
	sw $t0, -3340($fp)
	lw $t0, -576($fp)
	sw $t0, -3344($fp)
	li $t0, 0
	lw $t1, -3344($fp)
	sub $t0, $t0, $t1
	sw $t0, -3348($fp)
	li $t0, 4
	lw $t1, -3348($fp)
	mul $t0, $t0, $t1
	sw $t0, -3352($fp)
	lw $t0, -3352($fp)
	lw $t1, -3340($fp)
	add $t0, $t0, $t1
	sw $t0, -3356($fp)
	lw $t0, -3356($fp)
	lw $t1, 0($t0)
	sw $t1, -3360($fp)
	lw $t0, -3336($fp)
	lw $t1, -3360($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3364($fp)
	li $t0, 0
	lw $t1, -3364($fp)
	sub $t0, $t0, $t1
	sw $t0, -3368($fp)
	li $t0, 21186
	sw $t0, -3372($fp)
	li $t0, 0
	sw $t0, -3376($fp)
	lw $t0, -2396($fp)
	sw $t0, -3380($fp)
	lw $t1, -3380($fp)
	li $t2, 0
	bne $t1, $t2, label639
	j label638
label638:
	li $t0, 1
	sw $t0, -3376($fp)
label639:
	lw $t0, -3372($fp)
	lw $t1, -3376($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3384($fp)
	lw $t1, -3384($fp)
	li $t2, 0
	bne $t1, $t2, label635
	j label636
label635:
	li $t0, 48556
	sw $t0, -3396($fp)
	addi $t0, $fp, -3392
	sw $t0, -3400($fp)
	li $t0, 0
	sw $t0, -3404($fp)
	lw $t0, -3404($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3408($fp)
	lw $t0, -3400($fp)
	lw $t1, -3408($fp)
	add $t0, $t0, $t1
	sw $t0, -3412($fp)
	lw $t0, -3396($fp)
	lw $t1, -3412($fp)
	sw $t0, 0($t1)
	lw $t0, -3412($fp)
	lw $t1, 0($t0)
	sw $t1, -3416($fp)
	li $t0, 22579
	sw $t0, -3420($fp)
	addi $t0, $fp, -3392
	sw $t0, -3424($fp)
	li $t0, 1
	sw $t0, -3428($fp)
	lw $t0, -3428($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3432($fp)
	lw $t0, -3424($fp)
	lw $t1, -3432($fp)
	add $t0, $t0, $t1
	sw $t0, -3436($fp)
	lw $t0, -3420($fp)
	lw $t1, -3436($fp)
	sw $t0, 0($t1)
	lw $t0, -3436($fp)
	lw $t1, 0($t0)
	sw $t1, -3440($fp)
	li $t0, 38807
	sw $t0, -3444($fp)
	addi $t0, $fp, -1776
	sw $t0, -3448($fp)
	li $t0, 0
	sw $t0, -3452($fp)
	lw $t0, -144($fp)
	sw $t0, -3456($fp)
	lw $t1, -3456($fp)
	li $t2, 0
	bne $t1, $t2, label644
	j label646
label646:
	li $t0, 62803
	sw $t0, -3460($fp)
	lw $t1, -3460($fp)
	li $t2, 0
	bne $t1, $t2, label644
	j label645
label644:
	li $t0, 1
	sw $t0, -3452($fp)
label645:
	li $t0, 4
	lw $t1, -3452($fp)
	mul $t0, $t0, $t1
	sw $t0, -3464($fp)
	lw $t0, -3464($fp)
	lw $t1, -3448($fp)
	add $t0, $t0, $t1
	sw $t0, -3468($fp)
	lw $t0, -3468($fp)
	lw $t1, 0($t0)
	sw $t1, -3472($fp)
	addi $t0, $fp, -3392
	sw $t0, -3476($fp)
	lw $t0, -552($fp)
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
	li $t0, 10680
	sw $t0, -3496($fp)
	lw $t0, -3492($fp)
	lw $t1, -3496($fp)
	add $t0, $t0, $t1
	sw $t0, -3500($fp)
	lw $t1, -3472($fp)
	lw $t2, -3500($fp)
	bge $t1, $t2, label640
	j label643
label643:
	li $t0, 55819
	sw $t0, -3504($fp)
	li $t0, 0
	lw $t1, -3504($fp)
	sub $t0, $t0, $t1
	sw $t0, -3508($fp)
	lw $t1, -3508($fp)
	li $t2, 0
	bne $t1, $t2, label640
	j label641
label640:
	li $t0, 5926
	sw $t0, -3512($fp)
	lw $t0, -3512($fp)
	sw $t0, -3516($fp)
	lw $t0, -3516($fp)
	sw $t0, -3520($fp)
	li $t0, 0
	sw $t0, -3524($fp)
	addi $t0, $fp, -3392
	sw $t0, -3528($fp)
	lw $t0, -1784($fp)
	sw $t0, -3532($fp)
	lw $t0, -2408($fp)
	sw $t0, -3536($fp)
	lw $t0, -3532($fp)
	lw $t1, -3536($fp)
	add $t0, $t0, $t1
	sw $t0, -3540($fp)
	li $t0, 4
	lw $t1, -3540($fp)
	mul $t0, $t0, $t1
	sw $t0, -3544($fp)
	lw $t0, -3544($fp)
	lw $t1, -3528($fp)
	add $t0, $t0, $t1
	sw $t0, -3548($fp)
	lw $t0, -3548($fp)
	lw $t1, 0($t0)
	sw $t1, -3552($fp)
	li $t0, 0
	sw $t0, -3556($fp)
	li $t0, 19863
	sw $t0, -3560($fp)
	li $t0, 49524
	sw $t0, -3564($fp)
	lw $t0, -3560($fp)
	lw $t1, -3564($fp)
	mul $t0, $t0, $t1
	sw $t0, -3568($fp)
	li $t0, 0
	sw $t0, -3572($fp)
	lw $t0, -576($fp)
	sw $t0, -3576($fp)
	lw $t0, -2456($fp)
	sw $t0, -3580($fp)
	lw $t1, -3576($fp)
	lw $t2, -3580($fp)
	bge $t1, $t2, label651
	j label653
label653:
	lw $t0, -540($fp)
	sw $t0, -3584($fp)
	lw $t1, -3584($fp)
	li $t2, 0
	bne $t1, $t2, label651
	j label652
label651:
	li $t0, 1
	sw $t0, -3572($fp)
label652:
	addi $sp, $sp, -4
	lw $t0, -3568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3572($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3588($fp)
	addi $sp, $sp, 12
	lw $t0, -564($fp)
	sw $t0, -3592($fp)
	lw $t0, -3588($fp)
	lw $t1, -3592($fp)
	mul $t0, $t0, $t1
	sw $t0, -3596($fp)
	li $t0, 24634
	sw $t0, -3600($fp)
	li $t0, 0
	sw $t0, -3604($fp)
	li $t0, 4578
	sw $t0, -3608($fp)
	lw $t0, -3516($fp)
	sw $t0, -3612($fp)
	lw $t1, -3608($fp)
	lw $t2, -3612($fp)
	beq $t1, $t2, label654
	j label656
label656:
	lw $t0, -2132($fp)
	sw $t0, -3616($fp)
	lw $t1, -3616($fp)
	li $t2, 0
	bne $t1, $t2, label654
	j label655
label654:
	li $t0, 1
	sw $t0, -3604($fp)
label655:
	li $t0, 12095
	sw $t0, -3620($fp)
	lw $t0, -3620($fp)
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	sw $t0, -3624($fp)
	addi $sp, $sp, -4
	lw $t0, -3596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3624($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3628($fp)
	addi $sp, $sp, 20
	lw $t1, -3628($fp)
	li $t2, 0
	bne $t1, $t2, label650
	j label649
label649:
	li $t0, 1
	sw $t0, -3556($fp)
label650:
	lw $t0, -3552($fp)
	lw $t1, -3556($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3632($fp)
	li $t0, 998
	sw $t0, -3636($fp)
	lw $t0, -348($fp)
	sw $t0, -3640($fp)
	lw $t0, -3636($fp)
	lw $t1, -3640($fp)
	mul $t0, $t0, $t1
	sw $t0, -3644($fp)
	li $t0, 25112
	sw $t0, -3648($fp)
	lw $t0, -3644($fp)
	lw $t1, -3648($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3652($fp)
	addi $t0, $fp, -100
	sw $t0, -3656($fp)
	li $t0, 7
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
	lw $t0, -3652($fp)
	lw $t1, -3672($fp)
	add $t0, $t0, $t1
	sw $t0, -3676($fp)
	lw $t1, -3632($fp)
	lw $t2, -3676($fp)
	bgt $t1, $t2, label647
	j label648
label647:
	li $t0, 1
	sw $t0, -3524($fp)
label648:
	addi $t0, $fp, -1776
	sw $t0, -3680($fp)
	li $t0, 0
	sw $t0, -3684($fp)
	li $t0, 19568
	sw $t0, -3688($fp)
	lw $t1, -3688($fp)
	li $t2, 0
	bne $t1, $t2, label659
	j label658
label659:
	lw $t0, -2432($fp)
	sw $t0, -3692($fp)
	lw $t1, -3692($fp)
	li $t2, 0
	bne $t1, $t2, label657
	j label658
label657:
	li $t0, 1
	sw $t0, -3684($fp)
label658:
	li $t0, 4
	lw $t1, -3684($fp)
	mul $t0, $t0, $t1
	sw $t0, -3696($fp)
	lw $t0, -3696($fp)
	lw $t1, -3680($fp)
	add $t0, $t0, $t1
	sw $t0, -3700($fp)
	lw $t0, -3700($fp)
	lw $t1, 0($t0)
	sw $t1, -3704($fp)
	lw $t0, -3704($fp)
	sw $t0, -2468($fp)
	lw $t0, -2468($fp)
	sw $t0, -3708($fp)
	j label642
label641:
	addi $t0, $fp, -36
	sw $t0, -3712($fp)
	li $t0, 0
	sw $t0, -3716($fp)
	li $t0, 4
	lw $t1, -3716($fp)
	mul $t0, $t0, $t1
	sw $t0, -3720($fp)
	lw $t0, -3720($fp)
	lw $t1, -3712($fp)
	add $t0, $t0, $t1
	sw $t0, -3724($fp)
	lw $t0, -3724($fp)
	lw $t1, 0($t0)
	sw $t1, -3728($fp)
	lw $t0, -588($fp)
	sw $t0, -3732($fp)
	li $t0, 37692
	sw $t0, -3736($fp)
	lw $t0, -3732($fp)
	lw $t1, -3736($fp)
	mul $t0, $t0, $t1
	sw $t0, -3740($fp)
	lw $t0, -3728($fp)
	lw $t1, -3740($fp)
	sub $t0, $t0, $t1
	sw $t0, -3744($fp)
	lw $t0, -3744($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -3748($fp)
	lw $ra, -4($fp)
	lw $v0, -3748($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label642:
	j label637
label636:
	lw $t0, -1832($fp)
	sw $t0, -3752($fp)
	lw $t0, -2420($fp)
	sw $t0, -3756($fp)
	lw $t0, -540($fp)
	sw $t0, -3760($fp)
	lw $t0, -3756($fp)
	lw $t1, -3760($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3764($fp)
	addi $t0, $fp, -1776
	sw $t0, -3768($fp)
	lw $t0, -2360($fp)
	sw $t0, -3772($fp)
	li $t0, 4
	lw $t1, -3772($fp)
	mul $t0, $t0, $t1
	sw $t0, -3776($fp)
	lw $t0, -3776($fp)
	lw $t1, -3768($fp)
	add $t0, $t0, $t1
	sw $t0, -3780($fp)
	lw $t0, -3780($fp)
	lw $t1, 0($t0)
	sw $t1, -3784($fp)
	li $t0, 0
	sw $t0, -3788($fp)
	li $t0, 0
	sw $t0, -3792($fp)
	li $t0, 0
	sw $t0, -3796($fp)
	lw $t0, -1784($fp)
	sw $t0, -3800($fp)
	lw $t0, -2120($fp)
	sw $t0, -3804($fp)
	lw $t1, -3800($fp)
	lw $t2, -3804($fp)
	bgt $t1, $t2, label664
	j label665
label664:
	li $t0, 1
	sw $t0, -3796($fp)
label665:
	li $t0, 8395
	sw $t0, -3808($fp)
	lw $t1, -3796($fp)
	lw $t2, -3808($fp)
	beq $t1, $t2, label662
	j label663
label662:
	li $t0, 1
	sw $t0, -3792($fp)
label663:
	li $t0, 0
	sw $t0, -3812($fp)
	addi $t0, $fp, -1716
	sw $t0, -3816($fp)
	li $t0, 5
	sw $t0, -3820($fp)
	li $t0, 4
	lw $t1, -3820($fp)
	mul $t0, $t0, $t1
	sw $t0, -3824($fp)
	lw $t0, -3824($fp)
	lw $t1, -3816($fp)
	add $t0, $t0, $t1
	sw $t0, -3828($fp)
	lw $t0, -3828($fp)
	lw $t1, 0($t0)
	sw $t1, -3832($fp)
	li $t0, 64767
	sw $t0, -3836($fp)
	lw $t1, -3832($fp)
	lw $t2, -3836($fp)
	blt $t1, $t2, label666
	j label667
label666:
	li $t0, 1
	sw $t0, -3812($fp)
label667:
	addi $t0, $fp, -1776
	sw $t0, -3840($fp)
	li $t0, 5
	sw $t0, -3844($fp)
	li $t0, 4
	lw $t1, -3844($fp)
	mul $t0, $t0, $t1
	sw $t0, -3848($fp)
	lw $t0, -3848($fp)
	lw $t1, -3840($fp)
	add $t0, $t0, $t1
	sw $t0, -3852($fp)
	lw $t0, -3852($fp)
	lw $t1, 0($t0)
	sw $t1, -3856($fp)
	lw $t0, -2144($fp)
	sw $t0, -3860($fp)
	lw $t0, -3856($fp)
	lw $t1, -3860($fp)
	sub $t0, $t0, $t1
	sw $t0, -3864($fp)
	addi $t0, $fp, -1716
	sw $t0, -3868($fp)
	lw $t0, -2144($fp)
	sw $t0, -3872($fp)
	li $t0, 4
	lw $t1, -3872($fp)
	mul $t0, $t0, $t1
	sw $t0, -3876($fp)
	lw $t0, -3876($fp)
	lw $t1, -3868($fp)
	add $t0, $t0, $t1
	sw $t0, -3880($fp)
	lw $t0, -3880($fp)
	lw $t1, 0($t0)
	sw $t1, -3884($fp)
	lw $t0, -132($fp)
	sw $t0, -3888($fp)
	lw $t0, -3888($fp)
	sw $t0, -2168($fp)
	lw $t0, -2168($fp)
	sw $t0, -3892($fp)
	addi $sp, $sp, -4
	lw $t0, -3812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3892($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3896($fp)
	addi $sp, $sp, 20
	lw $t0, -564($fp)
	sw $t0, -3900($fp)
	lw $t0, -3896($fp)
	lw $t1, -3900($fp)
	mul $t0, $t0, $t1
	sw $t0, -3904($fp)
	addi $t0, $fp, -1776
	sw $t0, -3908($fp)
	lw $t0, -360($fp)
	sw $t0, -3912($fp)
	li $t0, 4
	lw $t1, -3912($fp)
	mul $t0, $t0, $t1
	sw $t0, -3916($fp)
	lw $t0, -3916($fp)
	lw $t1, -3908($fp)
	add $t0, $t0, $t1
	sw $t0, -3920($fp)
	lw $t0, -3920($fp)
	lw $t1, 0($t0)
	sw $t1, -3924($fp)
	li $t0, 0
	sw $t0, -3928($fp)
	li $t0, 0
	sw $t0, -3932($fp)
	lw $t0, -2456($fp)
	sw $t0, -3936($fp)
	li $t0, 38409
	sw $t0, -3940($fp)
	lw $t1, -3936($fp)
	lw $t2, -3940($fp)
	bgt $t1, $t2, label670
	j label671
label670:
	li $t0, 1
	sw $t0, -3932($fp)
label671:
	lw $t0, -2108($fp)
	sw $t0, -3944($fp)
	lw $t1, -3932($fp)
	lw $t2, -3944($fp)
	blt $t1, $t2, label668
	j label669
label668:
	li $t0, 1
	sw $t0, -3928($fp)
label669:
	addi $sp, $sp, -4
	lw $t0, -3792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3928($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3948($fp)
	addi $sp, $sp, 20
	lw $t1, -3948($fp)
	li $t2, 0
	bne $t1, $t2, label661
	j label660
label660:
	li $t0, 1
	sw $t0, -3788($fp)
label661:
	addi $sp, $sp, -4
	lw $t0, -3784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3788($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3952($fp)
	addi $sp, $sp, 12
	lw $t0, 4($fp)
	sw $t0, -3956($fp)
	li $t0, 5366
	sw $t0, -3960($fp)
	lw $t0, -3956($fp)
	lw $t1, -3960($fp)
	add $t0, $t0, $t1
	sw $t0, -3964($fp)
	li $t0, 0
	sw $t0, -3968($fp)
	li $t0, 0
	sw $t0, -3972($fp)
	li $t0, 21377
	sw $t0, -3976($fp)
	lw $t0, -2420($fp)
	sw $t0, -3980($fp)
	lw $t1, -3976($fp)
	lw $t2, -3980($fp)
	bge $t1, $t2, label674
	j label676
label676:
	li $t0, 37411
	sw $t0, -3984($fp)
	lw $t1, -3984($fp)
	li $t2, 0
	bne $t1, $t2, label674
	j label675
label674:
	li $t0, 1
	sw $t0, -3972($fp)
label675:
	li $t0, 0
	sw $t0, -3988($fp)
	li $t0, 16799
	sw $t0, -3992($fp)
	li $t0, 12776
	sw $t0, -3996($fp)
	lw $t0, -3992($fp)
	lw $t1, -3996($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4000($fp)
	li $t0, 13263
	sw $t0, -4004($fp)
	lw $t0, -4000($fp)
	lw $t1, -4004($fp)
	sub $t0, $t0, $t1
	sw $t0, -4008($fp)
	li $t0, 0
	sw $t0, -4012($fp)
	li $t0, 0
	sw $t0, -4016($fp)
	li $t0, 6850
	sw $t0, -4020($fp)
	lw $t1, -4020($fp)
	li $t2, 0
	bne $t1, $t2, label683
	j label682
label682:
	li $t0, 1
	sw $t0, -4016($fp)
label683:
	li $t0, 1168
	sw $t0, -4024($fp)
	lw $t1, -4016($fp)
	lw $t2, -4024($fp)
	blt $t1, $t2, label680
	j label681
label680:
	li $t0, 1
	sw $t0, -4012($fp)
label681:
	addi $sp, $sp, -4
	lw $t0, -4008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4012($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4028($fp)
	addi $sp, $sp, 12
	lw $t1, -4028($fp)
	li $t2, 0
	bne $t1, $t2, label679
	j label678
label679:
	lw $t0, -2420($fp)
	sw $t0, -4032($fp)
	lw $t1, -4032($fp)
	li $t2, 0
	bne $t1, $t2, label677
	j label678
label677:
	li $t0, 1
	sw $t0, -3988($fp)
label678:
	li $t0, 0
	sw $t0, -4036($fp)
	li $t0, 26516
	sw $t0, -4040($fp)
	lw $t1, -4040($fp)
	li $t2, 0
	bne $t1, $t2, label685
	j label684
label684:
	li $t0, 1
	sw $t0, -4036($fp)
label685:
	lw $t0, -1880($fp)
	sw $t0, -4044($fp)
	lw $t0, -4036($fp)
	lw $t1, -4044($fp)
	mul $t0, $t0, $t1
	sw $t0, -4048($fp)
	lw $t0, -540($fp)
	sw $t0, -4052($fp)
	lw $t0, -4052($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -4056($fp)
	li $t0, 56023
	sw $t0, -4060($fp)
	lw $t0, -4060($fp)
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	sw $t0, -4064($fp)
	li $t0, 53245
	sw $t0, -4068($fp)
	lw $t0, -4068($fp)
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -4072($fp)
	li $t0, 0
	sw $t0, -4076($fp)
	li $t0, 0
	sw $t0, -4080($fp)
	lw $t0, -2108($fp)
	sw $t0, -4084($fp)
	li $t0, 26563
	sw $t0, -4088($fp)
	lw $t1, -4084($fp)
	lw $t2, -4088($fp)
	bgt $t1, $t2, label688
	j label689
label688:
	li $t0, 1
	sw $t0, -4080($fp)
label689:
	li $t0, 33444
	sw $t0, -4092($fp)
	lw $t1, -4080($fp)
	lw $t2, -4092($fp)
	bge $t1, $t2, label686
	j label687
label686:
	li $t0, 1
	sw $t0, -4076($fp)
label687:
	li $t0, 32058
	sw $t0, -4096($fp)
	li $t0, 0
	sw $t0, -4100($fp)
	lw $t0, 8($fp)
	sw $t0, -4104($fp)
	lw $t0, -2156($fp)
	sw $t0, -4108($fp)
	lw $t0, -4104($fp)
	lw $t1, -4108($fp)
	sub $t0, $t0, $t1
	sw $t0, -4112($fp)
	li $t0, 49419
	sw $t0, -4116($fp)
	lw $t1, -4112($fp)
	lw $t2, -4116($fp)
	bgt $t1, $t2, label690
	j label691
label690:
	li $t0, 1
	sw $t0, -4100($fp)
label691:
	addi $sp, $sp, -4
	lw $t0, -4072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4100($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4120($fp)
	addi $sp, $sp, 20
	li $t0, 9583
	sw $t0, -4124($fp)
	lw $t0, -4120($fp)
	lw $t1, -4124($fp)
	sub $t0, $t0, $t1
	sw $t0, -4128($fp)
	li $t0, 0
	sw $t0, -4132($fp)
	lw $t0, -1856($fp)
	sw $t0, -4136($fp)
	lw $t1, -4136($fp)
	li $t2, 0
	bne $t1, $t2, label695
	j label693
label695:
	lw $t0, -348($fp)
	sw $t0, -4140($fp)
	lw $t1, -4140($fp)
	li $t2, 0
	bne $t1, $t2, label694
	j label693
label694:
	li $t0, 20876
	sw $t0, -4144($fp)
	lw $t1, -4144($fp)
	li $t2, 0
	bne $t1, $t2, label692
	j label693
label692:
	li $t0, 1
	sw $t0, -4132($fp)
label693:
	addi $sp, $sp, -4
	lw $t0, -4128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4132($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4148($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -4048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4148($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4152($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -4152($fp)
	sub $t0, $t0, $t1
	sw $t0, -4156($fp)
	lw $t0, -132($fp)
	sw $t0, -4160($fp)
	addi $sp, $sp, -4
	lw $t0, -3972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4160($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4164($fp)
	addi $sp, $sp, 20
	li $t0, 33126
	sw $t0, -4168($fp)
	lw $t1, -4164($fp)
	lw $t2, -4168($fp)
	beq $t1, $t2, label672
	j label673
label672:
	li $t0, 1
	sw $t0, -3968($fp)
label673:
	li $t0, 0
	sw $t0, -4172($fp)
	lw $t0, -1868($fp)
	sw $t0, -4176($fp)
	lw $t1, -4176($fp)
	li $t2, 0
	bne $t1, $t2, label699
	j label698
label699:
	lw $t0, -1820($fp)
	sw $t0, -4180($fp)
	lw $t1, -4180($fp)
	li $t2, 0
	bne $t1, $t2, label696
	j label698
label698:
	lw $t0, -2420($fp)
	sw $t0, -4184($fp)
	lw $t1, -4184($fp)
	li $t2, 0
	bne $t1, $t2, label696
	j label697
label696:
	li $t0, 1
	sw $t0, -4172($fp)
label697:
	lw $t0, -2444($fp)
	sw $t0, -4188($fp)
	li $t0, 36624
	sw $t0, -4192($fp)
	li $t0, 43698
	sw $t0, -4196($fp)
	lw $t0, -4192($fp)
	lw $t1, -4196($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4200($fp)
	li $t0, 22516
	sw $t0, -4204($fp)
	li $t0, 0
	lw $t1, -4204($fp)
	sub $t0, $t0, $t1
	sw $t0, -4208($fp)
	li $t0, 51892
	sw $t0, -4212($fp)
	lw $t0, -4212($fp)
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	sw $t0, -4216($fp)
	li $t0, 0
	sw $t0, -4220($fp)
	lw $t0, -2408($fp)
	sw $t0, -4224($fp)
	lw $t1, -4224($fp)
	li $t2, 0
	bne $t1, $t2, label701
	j label700
label700:
	li $t0, 1
	sw $t0, -4220($fp)
label701:
	lw $t0, -576($fp)
	sw $t0, -4228($fp)
	lw $t0, -4220($fp)
	lw $t1, -4228($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4232($fp)
	addi $sp, $sp, -4
	lw $t0, -4200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4232($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4236($fp)
	addi $sp, $sp, 20
	li $t0, 15881
	sw $t0, -4240($fp)
	li $t0, 0
	lw $t1, -4240($fp)
	sub $t0, $t0, $t1
	sw $t0, -4244($fp)
	li $t0, 0
	lw $t1, -4244($fp)
	sub $t0, $t0, $t1
	sw $t0, -4248($fp)
	addi $sp, $sp, -4
	lw $t0, -4172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4248($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4252($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -4252($fp)
	sub $t0, $t0, $t1
	sw $t0, -4256($fp)
	addi $sp, $sp, -4
	lw $t0, -3952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4256($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4260($fp)
	addi $sp, $sp, 20
	lw $t0, -3764($fp)
	lw $t1, -4260($fp)
	mul $t0, $t0, $t1
	sw $t0, -4264($fp)
	li $t0, 0
	lw $t1, -4264($fp)
	sub $t0, $t0, $t1
	sw $t0, -4268($fp)
	lw $t0, -3752($fp)
	lw $t1, -4268($fp)
	sub $t0, $t0, $t1
	sw $t0, -4272($fp)
	lw $ra, -4($fp)
	lw $v0, -4272($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label637:
	lw $t0, -1784($fp)
	sw $t0, -4276($fp)
	lw $t0, -4276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1796($fp)
	sw $t0, -4280($fp)
	lw $t0, -4280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1808($fp)
	sw $t0, -4284($fp)
	lw $t0, -4284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1820($fp)
	sw $t0, -4288($fp)
	lw $t0, -4288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1832($fp)
	sw $t0, -4292($fp)
	lw $t0, -4292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1844($fp)
	sw $t0, -4296($fp)
	lw $t0, -4296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1856($fp)
	sw $t0, -4300($fp)
	lw $t0, -4300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1868($fp)
	sw $t0, -4304($fp)
	lw $t0, -4304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1880($fp)
	sw $t0, -4308($fp)
	lw $t0, -4308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1716
	sw $t0, -4312($fp)
	li $t0, 0
	sw $t0, -4316($fp)
	li $t0, 4
	lw $t1, -4316($fp)
	mul $t0, $t0, $t1
	sw $t0, -4320($fp)
	lw $t0, -4320($fp)
	lw $t1, -4312($fp)
	add $t0, $t0, $t1
	sw $t0, -4324($fp)
	lw $t0, -4324($fp)
	lw $t1, 0($t0)
	sw $t1, -4328($fp)
	lw $t0, -4328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1716
	sw $t0, -4332($fp)
	li $t0, 1
	sw $t0, -4336($fp)
	li $t0, 4
	lw $t1, -4336($fp)
	mul $t0, $t0, $t1
	sw $t0, -4340($fp)
	lw $t0, -4340($fp)
	lw $t1, -4332($fp)
	add $t0, $t0, $t1
	sw $t0, -4344($fp)
	lw $t0, -4344($fp)
	lw $t1, 0($t0)
	sw $t1, -4348($fp)
	lw $t0, -4348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1716
	sw $t0, -4352($fp)
	li $t0, 2
	sw $t0, -4356($fp)
	li $t0, 4
	lw $t1, -4356($fp)
	mul $t0, $t0, $t1
	sw $t0, -4360($fp)
	lw $t0, -4360($fp)
	lw $t1, -4352($fp)
	add $t0, $t0, $t1
	sw $t0, -4364($fp)
	lw $t0, -4364($fp)
	lw $t1, 0($t0)
	sw $t1, -4368($fp)
	lw $t0, -4368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1716
	sw $t0, -4372($fp)
	li $t0, 3
	sw $t0, -4376($fp)
	li $t0, 4
	lw $t1, -4376($fp)
	mul $t0, $t0, $t1
	sw $t0, -4380($fp)
	lw $t0, -4380($fp)
	lw $t1, -4372($fp)
	add $t0, $t0, $t1
	sw $t0, -4384($fp)
	lw $t0, -4384($fp)
	lw $t1, 0($t0)
	sw $t1, -4388($fp)
	lw $t0, -4388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1716
	sw $t0, -4392($fp)
	li $t0, 4
	sw $t0, -4396($fp)
	li $t0, 4
	lw $t1, -4396($fp)
	mul $t0, $t0, $t1
	sw $t0, -4400($fp)
	lw $t0, -4400($fp)
	lw $t1, -4392($fp)
	add $t0, $t0, $t1
	sw $t0, -4404($fp)
	lw $t0, -4404($fp)
	lw $t1, 0($t0)
	sw $t1, -4408($fp)
	lw $t0, -4408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1716
	sw $t0, -4412($fp)
	li $t0, 5
	sw $t0, -4416($fp)
	li $t0, 4
	lw $t1, -4416($fp)
	mul $t0, $t0, $t1
	sw $t0, -4420($fp)
	lw $t0, -4420($fp)
	lw $t1, -4412($fp)
	add $t0, $t0, $t1
	sw $t0, -4424($fp)
	lw $t0, -4424($fp)
	lw $t1, 0($t0)
	sw $t1, -4428($fp)
	lw $t0, -4428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1716
	sw $t0, -4432($fp)
	li $t0, 6
	sw $t0, -4436($fp)
	li $t0, 4
	lw $t1, -4436($fp)
	mul $t0, $t0, $t1
	sw $t0, -4440($fp)
	lw $t0, -4440($fp)
	lw $t1, -4432($fp)
	add $t0, $t0, $t1
	sw $t0, -4444($fp)
	lw $t0, -4444($fp)
	lw $t1, 0($t0)
	sw $t1, -4448($fp)
	lw $t0, -4448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1716
	sw $t0, -4452($fp)
	li $t0, 7
	sw $t0, -4456($fp)
	li $t0, 4
	lw $t1, -4456($fp)
	mul $t0, $t0, $t1
	sw $t0, -4460($fp)
	lw $t0, -4460($fp)
	lw $t1, -4452($fp)
	add $t0, $t0, $t1
	sw $t0, -4464($fp)
	lw $t0, -4464($fp)
	lw $t1, 0($t0)
	sw $t1, -4468($fp)
	lw $t0, -4468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1716
	sw $t0, -4472($fp)
	li $t0, 8
	sw $t0, -4476($fp)
	li $t0, 4
	lw $t1, -4476($fp)
	mul $t0, $t0, $t1
	sw $t0, -4480($fp)
	lw $t0, -4480($fp)
	lw $t1, -4472($fp)
	add $t0, $t0, $t1
	sw $t0, -4484($fp)
	lw $t0, -4484($fp)
	lw $t1, 0($t0)
	sw $t1, -4488($fp)
	lw $t0, -4488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2108($fp)
	sw $t0, -4492($fp)
	lw $t0, -4492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2120($fp)
	sw $t0, -4496($fp)
	lw $t0, -4496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2132($fp)
	sw $t0, -4500($fp)
	lw $t0, -4500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2144($fp)
	sw $t0, -4504($fp)
	lw $t0, -4504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2156($fp)
	sw $t0, -4508($fp)
	lw $t0, -4508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2168($fp)
	sw $t0, -4512($fp)
	lw $t0, -4512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1744
	sw $t0, -4516($fp)
	li $t0, 0
	sw $t0, -4520($fp)
	li $t0, 4
	lw $t1, -4520($fp)
	mul $t0, $t0, $t1
	sw $t0, -4524($fp)
	lw $t0, -4524($fp)
	lw $t1, -4516($fp)
	add $t0, $t0, $t1
	sw $t0, -4528($fp)
	lw $t0, -4528($fp)
	lw $t1, 0($t0)
	sw $t1, -4532($fp)
	lw $t0, -4532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1744
	sw $t0, -4536($fp)
	li $t0, 1
	sw $t0, -4540($fp)
	li $t0, 4
	lw $t1, -4540($fp)
	mul $t0, $t0, $t1
	sw $t0, -4544($fp)
	lw $t0, -4544($fp)
	lw $t1, -4536($fp)
	add $t0, $t0, $t1
	sw $t0, -4548($fp)
	lw $t0, -4548($fp)
	lw $t1, 0($t0)
	sw $t1, -4552($fp)
	lw $t0, -4552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1744
	sw $t0, -4556($fp)
	li $t0, 2
	sw $t0, -4560($fp)
	li $t0, 4
	lw $t1, -4560($fp)
	mul $t0, $t0, $t1
	sw $t0, -4564($fp)
	lw $t0, -4564($fp)
	lw $t1, -4556($fp)
	add $t0, $t0, $t1
	sw $t0, -4568($fp)
	lw $t0, -4568($fp)
	lw $t1, 0($t0)
	sw $t1, -4572($fp)
	lw $t0, -4572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1744
	sw $t0, -4576($fp)
	li $t0, 3
	sw $t0, -4580($fp)
	li $t0, 4
	lw $t1, -4580($fp)
	mul $t0, $t0, $t1
	sw $t0, -4584($fp)
	lw $t0, -4584($fp)
	lw $t1, -4576($fp)
	add $t0, $t0, $t1
	sw $t0, -4588($fp)
	lw $t0, -4588($fp)
	lw $t1, 0($t0)
	sw $t1, -4592($fp)
	lw $t0, -4592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1744
	sw $t0, -4596($fp)
	li $t0, 4
	sw $t0, -4600($fp)
	li $t0, 4
	lw $t1, -4600($fp)
	mul $t0, $t0, $t1
	sw $t0, -4604($fp)
	lw $t0, -4604($fp)
	lw $t1, -4596($fp)
	add $t0, $t0, $t1
	sw $t0, -4608($fp)
	lw $t0, -4608($fp)
	lw $t1, 0($t0)
	sw $t1, -4612($fp)
	lw $t0, -4612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1744
	sw $t0, -4616($fp)
	li $t0, 5
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
	addi $t0, $fp, -1744
	sw $t0, -4636($fp)
	li $t0, 6
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
	lw $t0, -2348($fp)
	sw $t0, -4656($fp)
	lw $t0, -4656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2360($fp)
	sw $t0, -4660($fp)
	lw $t0, -4660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2372($fp)
	sw $t0, -4664($fp)
	lw $t0, -4664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2384($fp)
	sw $t0, -4668($fp)
	lw $t0, -4668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2396($fp)
	sw $t0, -4672($fp)
	lw $t0, -4672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2408($fp)
	sw $t0, -4676($fp)
	lw $t0, -4676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2420($fp)
	sw $t0, -4680($fp)
	lw $t0, -4680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2432($fp)
	sw $t0, -4684($fp)
	lw $t0, -4684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2444($fp)
	sw $t0, -4688($fp)
	lw $t0, -4688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2456($fp)
	sw $t0, -4692($fp)
	lw $t0, -4692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2468($fp)
	sw $t0, -4696($fp)
	lw $t0, -4696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1776
	sw $t0, -4700($fp)
	li $t0, 0
	sw $t0, -4704($fp)
	li $t0, 4
	lw $t1, -4704($fp)
	mul $t0, $t0, $t1
	sw $t0, -4708($fp)
	lw $t0, -4708($fp)
	lw $t1, -4700($fp)
	add $t0, $t0, $t1
	sw $t0, -4712($fp)
	lw $t0, -4712($fp)
	lw $t1, 0($t0)
	sw $t1, -4716($fp)
	lw $t0, -4716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1776
	sw $t0, -4720($fp)
	li $t0, 1
	sw $t0, -4724($fp)
	li $t0, 4
	lw $t1, -4724($fp)
	mul $t0, $t0, $t1
	sw $t0, -4728($fp)
	lw $t0, -4728($fp)
	lw $t1, -4720($fp)
	add $t0, $t0, $t1
	sw $t0, -4732($fp)
	lw $t0, -4732($fp)
	lw $t1, 0($t0)
	sw $t1, -4736($fp)
	lw $t0, -4736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1776
	sw $t0, -4740($fp)
	li $t0, 2
	sw $t0, -4744($fp)
	li $t0, 4
	lw $t1, -4744($fp)
	mul $t0, $t0, $t1
	sw $t0, -4748($fp)
	lw $t0, -4748($fp)
	lw $t1, -4740($fp)
	add $t0, $t0, $t1
	sw $t0, -4752($fp)
	lw $t0, -4752($fp)
	lw $t1, 0($t0)
	sw $t1, -4756($fp)
	lw $t0, -4756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1776
	sw $t0, -4760($fp)
	li $t0, 3
	sw $t0, -4764($fp)
	li $t0, 4
	lw $t1, -4764($fp)
	mul $t0, $t0, $t1
	sw $t0, -4768($fp)
	lw $t0, -4768($fp)
	lw $t1, -4760($fp)
	add $t0, $t0, $t1
	sw $t0, -4772($fp)
	lw $t0, -4772($fp)
	lw $t1, 0($t0)
	sw $t1, -4776($fp)
	lw $t0, -4776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1776
	sw $t0, -4780($fp)
	li $t0, 4
	sw $t0, -4784($fp)
	li $t0, 4
	lw $t1, -4784($fp)
	mul $t0, $t0, $t1
	sw $t0, -4788($fp)
	lw $t0, -4788($fp)
	lw $t1, -4780($fp)
	add $t0, $t0, $t1
	sw $t0, -4792($fp)
	lw $t0, -4792($fp)
	lw $t1, 0($t0)
	sw $t1, -4796($fp)
	lw $t0, -4796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1776
	sw $t0, -4800($fp)
	li $t0, 5
	sw $t0, -4804($fp)
	li $t0, 4
	lw $t1, -4804($fp)
	mul $t0, $t0, $t1
	sw $t0, -4808($fp)
	lw $t0, -4808($fp)
	lw $t1, -4800($fp)
	add $t0, $t0, $t1
	sw $t0, -4812($fp)
	lw $t0, -4812($fp)
	lw $t1, 0($t0)
	sw $t1, -4816($fp)
	lw $t0, -4816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1776
	sw $t0, -4820($fp)
	li $t0, 6
	sw $t0, -4824($fp)
	li $t0, 4
	lw $t1, -4824($fp)
	mul $t0, $t0, $t1
	sw $t0, -4828($fp)
	lw $t0, -4828($fp)
	lw $t1, -4820($fp)
	add $t0, $t0, $t1
	sw $t0, -4832($fp)
	lw $t0, -4832($fp)
	lw $t1, 0($t0)
	sw $t1, -4836($fp)
	lw $t0, -4836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1776
	sw $t0, -4840($fp)
	li $t0, 7
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
	li $t0, 0
	sw $t0, -4860($fp)
	lw $t0, -1796($fp)
	sw $t0, -4864($fp)
	lw $t1, -4864($fp)
	li $t2, 0
	bne $t1, $t2, label703
	j label702
label702:
	li $t0, 1
	sw $t0, -4860($fp)
label703:
	lw $t0, -4860($fp)
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	sw $t0, -4868($fp)
	lw $ra, -4($fp)
	lw $v0, -4868($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 49963
	sw $t0, -4872($fp)
	lw $t0, -4872($fp)
	sw $t0, -4876($fp)
	lw $t0, -4876($fp)
	sw $t0, -4880($fp)
	li $t0, 15112
	sw $t0, -4884($fp)
	lw $t0, -4884($fp)
	sw $t0, -4888($fp)
	lw $t0, -4888($fp)
	sw $t0, -4892($fp)
	li $t0, 60287
	sw $t0, -4896($fp)
	lw $t0, -4896($fp)
	sw $t0, -4900($fp)
	lw $t0, -4900($fp)
	sw $t0, -4904($fp)
	li $t0, 0
	sw $t0, -4908($fp)
	li $t0, 0
	sw $t0, -4912($fp)
	lw $t0, -360($fp)
	sw $t0, -4916($fp)
	lw $t0, -2132($fp)
	sw $t0, -4920($fp)
	lw $t0, -4916($fp)
	lw $t1, -4920($fp)
	add $t0, $t0, $t1
	sw $t0, -4924($fp)
	lw $t0, -4888($fp)
	sw $t0, -4928($fp)
	lw $t1, -4924($fp)
	lw $t2, -4928($fp)
	ble $t1, $t2, label706
	j label707
label706:
	li $t0, 1
	sw $t0, -4912($fp)
label707:
	lw $t0, -4900($fp)
	sw $t0, -4932($fp)
	li $t0, 6943
	sw $t0, -4936($fp)
	lw $t0, -4932($fp)
	lw $t1, -4936($fp)
	mul $t0, $t0, $t1
	sw $t0, -4940($fp)
	lw $t1, -4912($fp)
	lw $t2, -4940($fp)
	bgt $t1, $t2, label704
	j label705
label704:
	li $t0, 1
	sw $t0, -4908($fp)
label705:
	lw $t0, -4908($fp)
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -4944($fp)
	lw $t0, -4876($fp)
	sw $t0, -4948($fp)
	lw $t0, -4948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4952($fp)
	li $t0, 51737
	sw $t0, -4956($fp)
	lw $t0, -4876($fp)
	sw $t0, -4960($fp)
	lw $t1, -4956($fp)
	lw $t2, -4960($fp)
	bne $t1, $t2, label710
	j label709
label710:
	li $t0, 0
	sw $t0, -4964($fp)
	li $t0, 38449
	sw $t0, -4968($fp)
	lw $t1, -4968($fp)
	li $t2, 0
	bne $t1, $t2, label712
	j label711
label711:
	li $t0, 1
	sw $t0, -4964($fp)
label712:
	lw $t0, -2384($fp)
	sw $t0, -4972($fp)
	lw $t1, -4964($fp)
	lw $t2, -4972($fp)
	bgt $t1, $t2, label708
	j label709
label708:
	li $t0, 1
	sw $t0, -4952($fp)
label709:
	lw $ra, -4($fp)
	lw $v0, -4952($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -4976($fp)
	li $t0, 27819
	sw $t0, -4980($fp)
	li $t0, 0
	sw $t0, -4984($fp)
	li $t0, 0
	sw $t0, -4988($fp)
	li $t0, 35620
	sw $t0, -4992($fp)
	li $t0, 0
	lw $t1, -4992($fp)
	sub $t0, $t0, $t1
	sw $t0, -4996($fp)
	lw $t0, -360($fp)
	sw $t0, -5000($fp)
	lw $t1, -4996($fp)
	lw $t2, -5000($fp)
	bge $t1, $t2, label717
	j label718
label717:
	li $t0, 1
	sw $t0, -4988($fp)
label718:
	li $t0, 4972
	sw $t0, -5004($fp)
	lw $t0, -2420($fp)
	sw $t0, -5008($fp)
	lw $t0, -5004($fp)
	lw $t1, -5008($fp)
	mul $t0, $t0, $t1
	sw $t0, -5012($fp)
	lw $t1, -4988($fp)
	lw $t2, -5012($fp)
	bgt $t1, $t2, label715
	j label716
label715:
	li $t0, 1
	sw $t0, -4984($fp)
label716:
	lw $t1, -4980($fp)
	lw $t2, -4984($fp)
	bne $t1, $t2, label713
	j label714
label713:
	li $t0, 1
	sw $t0, -4976($fp)
label714:
	lw $t0, -4876($fp)
	sw $t0, -5016($fp)
	lw $t0, -5016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5020($fp)
	addi $t0, $fp, -1716
	sw $t0, -5024($fp)
	addi $t0, $fp, -1716
	sw $t0, -5028($fp)
	lw $t0, -1868($fp)
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
	li $t0, 4
	lw $t1, -5044($fp)
	mul $t0, $t0, $t1
	sw $t0, -5048($fp)
	lw $t0, -5048($fp)
	lw $t1, -5024($fp)
	add $t0, $t0, $t1
	sw $t0, -5052($fp)
	lw $t0, -5052($fp)
	lw $t1, 0($t0)
	sw $t1, -5056($fp)
	li $t0, 0
	sw $t0, -5060($fp)
	lw $t0, -576($fp)
	sw $t0, -5064($fp)
	lw $t1, -5064($fp)
	li $t2, 0
	bne $t1, $t2, label721
	j label722
label721:
	li $t0, 1
	sw $t0, -5060($fp)
label722:
	lw $t0, -5056($fp)
	lw $t1, -5060($fp)
	sub $t0, $t0, $t1
	sw $t0, -5068($fp)
	li $t0, 0
	sw $t0, -5072($fp)
	li $t0, 54382
	sw $t0, -5076($fp)
	lw $t1, -5076($fp)
	li $t2, 0
	bne $t1, $t2, label723
	j label724
label723:
	li $t0, 1
	sw $t0, -5072($fp)
label724:
	lw $t1, -5068($fp)
	lw $t2, -5072($fp)
	ble $t1, $t2, label719
	j label720
label719:
	li $t0, 1
	sw $t0, -5020($fp)
label720:
	lw $ra, -4($fp)
	lw $v0, -5020($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -4876($fp)
	sw $t0, -5080($fp)
	lw $t0, -5080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -564($fp)
	sw $t0, -5084($fp)
	lw $ra, -4($fp)
	lw $v0, -5084($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label725:
	lw $t0, -552($fp)
	sw $t0, -5088($fp)
	lw $t0, -144($fp)
	sw $t0, -5092($fp)
	lw $t0, -5092($fp)
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	sw $t0, -5096($fp)
	li $t0, 0
	sw $t0, -5100($fp)
	lw $t0, -1832($fp)
	sw $t0, -5104($fp)
	lw $t0, -1784($fp)
	sw $t0, -5108($fp)
	lw $t1, -5104($fp)
	lw $t2, -5108($fp)
	beq $t1, $t2, label730
	j label729
label730:
	lw $t0, -360($fp)
	sw $t0, -5112($fp)
	lw $t1, -5112($fp)
	li $t2, 0
	bne $t1, $t2, label728
	j label729
label728:
	li $t0, 1
	sw $t0, -5100($fp)
label729:
	addi $sp, $sp, -4
	lw $t0, -5096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5100($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5116($fp)
	addi $sp, $sp, 12
	lw $t0, -5088($fp)
	lw $t1, -5116($fp)
	mul $t0, $t0, $t1
	sw $t0, -5120($fp)
	lw $t0, -2396($fp)
	sw $t0, -5124($fp)
	lw $t1, -5120($fp)
	lw $t2, -5124($fp)
	blt $t1, $t2, label726
	j label727
label726:
	addi $t0, $fp, -1716
	sw $t0, -5128($fp)
	li $t0, 0
	sw $t0, -5132($fp)
	lw $t0, -564($fp)
	sw $t0, -5136($fp)
	li $t0, 3528
	sw $t0, -5140($fp)
	lw $t1, -5136($fp)
	lw $t2, -5140($fp)
	bne $t1, $t2, label734
	j label735
label734:
	li $t0, 1
	sw $t0, -5132($fp)
label735:
	lw $t0, -5132($fp)
	sw $t0, -2372($fp)
	lw $t0, -2372($fp)
	sw $t0, -5144($fp)
	li $t0, 4
	lw $t1, -5144($fp)
	mul $t0, $t0, $t1
	sw $t0, -5148($fp)
	lw $t0, -5148($fp)
	lw $t1, -5128($fp)
	add $t0, $t0, $t1
	sw $t0, -5152($fp)
	lw $t0, -5152($fp)
	lw $t1, 0($t0)
	sw $t1, -5156($fp)
	lw $t1, -5156($fp)
	li $t2, 0
	bne $t1, $t2, label731
	j label732
label731:
	li $t0, 0
	sw $t0, -5160($fp)
	addi $t0, $fp, -1716
	sw $t0, -5164($fp)
	li $t0, 8
	sw $t0, -5168($fp)
	li $t0, 4
	lw $t1, -5168($fp)
	mul $t0, $t0, $t1
	sw $t0, -5172($fp)
	lw $t0, -5172($fp)
	lw $t1, -5164($fp)
	add $t0, $t0, $t1
	sw $t0, -5176($fp)
	lw $t0, -5176($fp)
	lw $t1, 0($t0)
	sw $t1, -5180($fp)
	li $t0, 0
	lw $t1, -5180($fp)
	sub $t0, $t0, $t1
	sw $t0, -5184($fp)
	addi $t0, $fp, -1776
	sw $t0, -5188($fp)
	lw $t0, -360($fp)
	sw $t0, -5192($fp)
	li $t0, 4
	lw $t1, -5192($fp)
	mul $t0, $t0, $t1
	sw $t0, -5196($fp)
	lw $t0, -5196($fp)
	lw $t1, -5188($fp)
	add $t0, $t0, $t1
	sw $t0, -5200($fp)
	lw $t0, -5200($fp)
	lw $t1, 0($t0)
	sw $t1, -5204($fp)
	lw $t0, -5184($fp)
	lw $t1, -5204($fp)
	add $t0, $t0, $t1
	sw $t0, -5208($fp)
	li $t0, 0
	sw $t0, -5212($fp)
	lw $t0, -360($fp)
	sw $t0, -5216($fp)
	lw $t1, -5216($fp)
	li $t2, 0
	bne $t1, $t2, label739
	j label738
label738:
	li $t0, 1
	sw $t0, -5212($fp)
label739:
	li $t0, 59551
	sw $t0, -5220($fp)
	lw $t0, -5212($fp)
	lw $t1, -5220($fp)
	add $t0, $t0, $t1
	sw $t0, -5224($fp)
	addi $t0, $fp, -1776
	sw $t0, -5228($fp)
	li $t0, 0
	sw $t0, -5232($fp)
	li $t0, 4
	lw $t1, -5232($fp)
	mul $t0, $t0, $t1
	sw $t0, -5236($fp)
	lw $t0, -5236($fp)
	lw $t1, -5228($fp)
	add $t0, $t0, $t1
	sw $t0, -5240($fp)
	lw $t0, -5240($fp)
	lw $t1, 0($t0)
	sw $t1, -5244($fp)
	lw $t0, -5224($fp)
	lw $t1, -5244($fp)
	sub $t0, $t0, $t1
	sw $t0, -5248($fp)
	lw $t1, -5208($fp)
	lw $t2, -5248($fp)
	beq $t1, $t2, label736
	j label737
label736:
	li $t0, 1
	sw $t0, -5160($fp)
label737:
	lw $ra, -4($fp)
	lw $v0, -5160($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label733
label732:
	li $t0, 0
	sw $t0, -5252($fp)
	lw $t0, -132($fp)
	sw $t0, -5256($fp)
	li $t0, 28340
	sw $t0, -5260($fp)
	lw $t0, -5260($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -5264($fp)
	addi $t0, $fp, -64
	sw $t0, -5268($fp)
	lw $t0, -1844($fp)
	sw $t0, -5272($fp)
	li $t0, 4
	lw $t1, -5272($fp)
	mul $t0, $t0, $t1
	sw $t0, -5276($fp)
	lw $t0, -5276($fp)
	lw $t1, -5268($fp)
	add $t0, $t0, $t1
	sw $t0, -5280($fp)
	lw $t0, -5280($fp)
	lw $t1, 0($t0)
	sw $t1, -5284($fp)
	lw $t0, -132($fp)
	sw $t0, -5288($fp)
	li $t0, 0
	lw $t1, -5288($fp)
	sub $t0, $t0, $t1
	sw $t0, -5292($fp)
	li $t0, 0
	lw $t1, -5292($fp)
	sub $t0, $t0, $t1
	sw $t0, -5296($fp)
	li $t0, 0
	sw $t0, -5300($fp)
	li $t0, 0
	sw $t0, -5304($fp)
	li $t0, 41572
	sw $t0, -5308($fp)
	li $t0, 62739
	sw $t0, -5312($fp)
	lw $t1, -5308($fp)
	lw $t2, -5312($fp)
	bne $t1, $t2, label744
	j label745
label744:
	li $t0, 1
	sw $t0, -5304($fp)
label745:
	lw $t0, -2168($fp)
	sw $t0, -5316($fp)
	lw $t1, -5304($fp)
	lw $t2, -5316($fp)
	bne $t1, $t2, label742
	j label743
label742:
	li $t0, 1
	sw $t0, -5300($fp)
label743:
	li $t0, 0
	sw $t0, -5320($fp)
	li $t0, 57373
	sw $t0, -5324($fp)
	li $t0, 55467
	sw $t0, -5328($fp)
	lw $t0, -5324($fp)
	lw $t1, -5328($fp)
	add $t0, $t0, $t1
	sw $t0, -5332($fp)
	lw $t1, -5332($fp)
	li $t2, 0
	bne $t1, $t2, label746
	j label748
label748:
	lw $t0, -2396($fp)
	sw $t0, -5336($fp)
	lw $t1, -5336($fp)
	li $t2, 0
	bne $t1, $t2, label746
	j label747
label746:
	li $t0, 1
	sw $t0, -5320($fp)
label747:
	addi $t0, $fp, -1776
	sw $t0, -5340($fp)
	li $t0, 6
	sw $t0, -5344($fp)
	li $t0, 4
	lw $t1, -5344($fp)
	mul $t0, $t0, $t1
	sw $t0, -5348($fp)
	lw $t0, -5348($fp)
	lw $t1, -5340($fp)
	add $t0, $t0, $t1
	sw $t0, -5352($fp)
	lw $t0, -5352($fp)
	lw $t1, 0($t0)
	sw $t1, -5356($fp)
	addi $t0, $fp, -1744
	sw $t0, -5360($fp)
	li $t0, 2
	sw $t0, -5364($fp)
	li $t0, 4
	lw $t1, -5364($fp)
	mul $t0, $t0, $t1
	sw $t0, -5368($fp)
	lw $t0, -5368($fp)
	lw $t1, -5360($fp)
	add $t0, $t0, $t1
	sw $t0, -5372($fp)
	lw $t0, -5372($fp)
	lw $t1, 0($t0)
	sw $t1, -5376($fp)
	addi $sp, $sp, -4
	lw $t0, -5300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5376($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5380($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -5380($fp)
	sub $t0, $t0, $t1
	sw $t0, -5384($fp)
	addi $sp, $sp, -4
	lw $t0, -5264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5384($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5388($fp)
	addi $sp, $sp, 20
	lw $t0, -5256($fp)
	lw $t1, -5388($fp)
	mul $t0, $t0, $t1
	sw $t0, -5392($fp)
	li $t0, 34274
	sw $t0, -5396($fp)
	lw $t0, -5392($fp)
	lw $t1, -5396($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5400($fp)
	addi $t0, $fp, -1716
	sw $t0, -5404($fp)
	li $t0, 3
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
	addi $t0, $fp, -1744
	sw $t0, -5424($fp)
	lw $t0, -816($fp)
	sw $t0, -5428($fp)
	li $t0, 4
	lw $t1, -5428($fp)
	mul $t0, $t0, $t1
	sw $t0, -5432($fp)
	lw $t0, -5432($fp)
	lw $t1, -5424($fp)
	add $t0, $t0, $t1
	sw $t0, -5436($fp)
	lw $t0, -5436($fp)
	lw $t1, 0($t0)
	sw $t1, -5440($fp)
	lw $t0, -5420($fp)
	lw $t1, -5440($fp)
	mul $t0, $t0, $t1
	sw $t0, -5444($fp)
	lw $t1, -5400($fp)
	lw $t2, -5444($fp)
	beq $t1, $t2, label740
	j label741
label740:
	li $t0, 1
	sw $t0, -5252($fp)
label741:
	li $t0, 46545
	sw $t0, -5448($fp)
	li $t0, 0
	lw $t1, -5448($fp)
	sub $t0, $t0, $t1
	sw $t0, -5452($fp)
	lw $t0, -5452($fp)
	sw $t0, -2420($fp)
	lw $t0, -2420($fp)
	sw $t0, -5456($fp)
label733:
	j label725
label727:
label564:
	lw $t0, -108($fp)
	sw $t0, -5460($fp)
	lw $t0, -5460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -5464($fp)
	lw $t0, -5464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -5468($fp)
	lw $t0, -5468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -5472($fp)
	lw $t0, -5472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -5476($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -5496($fp)
	li $t0, 1
	sw $t0, -5500($fp)
	li $t0, 4
	lw $t1, -5500($fp)
	mul $t0, $t0, $t1
	sw $t0, -5504($fp)
	lw $t0, -5504($fp)
	lw $t1, -5496($fp)
	add $t0, $t0, $t1
	sw $t0, -5508($fp)
	lw $t0, -5508($fp)
	lw $t1, 0($t0)
	sw $t1, -5512($fp)
	lw $t0, -5512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -5516($fp)
	li $t0, 2
	sw $t0, -5520($fp)
	li $t0, 4
	lw $t1, -5520($fp)
	mul $t0, $t0, $t1
	sw $t0, -5524($fp)
	lw $t0, -5524($fp)
	lw $t1, -5516($fp)
	add $t0, $t0, $t1
	sw $t0, -5528($fp)
	lw $t0, -5528($fp)
	lw $t1, 0($t0)
	sw $t1, -5532($fp)
	lw $t0, -5532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -5536($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -5556($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -5576($fp)
	li $t0, 5
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
	addi $t0, $fp, -36
	sw $t0, -5596($fp)
	li $t0, 6
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
	addi $t0, $fp, -36
	sw $t0, -5616($fp)
	li $t0, 7
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
	lw $t0, -348($fp)
	sw $t0, -5636($fp)
	lw $t0, -5636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -360($fp)
	sw $t0, -5640($fp)
	lw $t0, -5640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -5644($fp)
	li $t0, 0
	sw $t0, -5648($fp)
	li $t0, 4
	lw $t1, -5648($fp)
	mul $t0, $t0, $t1
	sw $t0, -5652($fp)
	lw $t0, -5652($fp)
	lw $t1, -5644($fp)
	add $t0, $t0, $t1
	sw $t0, -5656($fp)
	lw $t0, -5656($fp)
	lw $t1, 0($t0)
	sw $t1, -5660($fp)
	lw $t0, -5660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -5664($fp)
	li $t0, 1
	sw $t0, -5668($fp)
	li $t0, 4
	lw $t1, -5668($fp)
	mul $t0, $t0, $t1
	sw $t0, -5672($fp)
	lw $t0, -5672($fp)
	lw $t1, -5664($fp)
	add $t0, $t0, $t1
	sw $t0, -5676($fp)
	lw $t0, -5676($fp)
	lw $t1, 0($t0)
	sw $t1, -5680($fp)
	lw $t0, -5680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -5684($fp)
	li $t0, 2
	sw $t0, -5688($fp)
	li $t0, 4
	lw $t1, -5688($fp)
	mul $t0, $t0, $t1
	sw $t0, -5692($fp)
	lw $t0, -5692($fp)
	lw $t1, -5684($fp)
	add $t0, $t0, $t1
	sw $t0, -5696($fp)
	lw $t0, -5696($fp)
	lw $t1, 0($t0)
	sw $t1, -5700($fp)
	lw $t0, -5700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -5704($fp)
	li $t0, 3
	sw $t0, -5708($fp)
	li $t0, 4
	lw $t1, -5708($fp)
	mul $t0, $t0, $t1
	sw $t0, -5712($fp)
	lw $t0, -5712($fp)
	lw $t1, -5704($fp)
	add $t0, $t0, $t1
	sw $t0, -5716($fp)
	lw $t0, -5716($fp)
	lw $t1, 0($t0)
	sw $t1, -5720($fp)
	lw $t0, -5720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -5724($fp)
	li $t0, 4
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
	lw $t0, -5740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -5744($fp)
	li $t0, 5
	sw $t0, -5748($fp)
	li $t0, 4
	lw $t1, -5748($fp)
	mul $t0, $t0, $t1
	sw $t0, -5752($fp)
	lw $t0, -5752($fp)
	lw $t1, -5744($fp)
	add $t0, $t0, $t1
	sw $t0, -5756($fp)
	lw $t0, -5756($fp)
	lw $t1, 0($t0)
	sw $t1, -5760($fp)
	lw $t0, -5760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -5764($fp)
	li $t0, 6
	sw $t0, -5768($fp)
	li $t0, 4
	lw $t1, -5768($fp)
	mul $t0, $t0, $t1
	sw $t0, -5772($fp)
	lw $t0, -5772($fp)
	lw $t1, -5764($fp)
	add $t0, $t0, $t1
	sw $t0, -5776($fp)
	lw $t0, -5776($fp)
	lw $t1, 0($t0)
	sw $t1, -5780($fp)
	lw $t0, -5780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -540($fp)
	sw $t0, -5784($fp)
	lw $t0, -5784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -552($fp)
	sw $t0, -5788($fp)
	lw $t0, -5788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -564($fp)
	sw $t0, -5792($fp)
	lw $t0, -5792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -576($fp)
	sw $t0, -5796($fp)
	lw $t0, -5796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -588($fp)
	sw $t0, -5800($fp)
	lw $t0, -5800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -5804($fp)
	li $t0, 0
	sw $t0, -5808($fp)
	li $t0, 4
	lw $t1, -5808($fp)
	mul $t0, $t0, $t1
	sw $t0, -5812($fp)
	lw $t0, -5812($fp)
	lw $t1, -5804($fp)
	add $t0, $t0, $t1
	sw $t0, -5816($fp)
	lw $t0, -5816($fp)
	lw $t1, 0($t0)
	sw $t1, -5820($fp)
	lw $t0, -5820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -5824($fp)
	li $t0, 1
	sw $t0, -5828($fp)
	li $t0, 4
	lw $t1, -5828($fp)
	mul $t0, $t0, $t1
	sw $t0, -5832($fp)
	lw $t0, -5832($fp)
	lw $t1, -5824($fp)
	add $t0, $t0, $t1
	sw $t0, -5836($fp)
	lw $t0, -5836($fp)
	lw $t1, 0($t0)
	sw $t1, -5840($fp)
	lw $t0, -5840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -5844($fp)
	li $t0, 2
	sw $t0, -5848($fp)
	li $t0, 4
	lw $t1, -5848($fp)
	mul $t0, $t0, $t1
	sw $t0, -5852($fp)
	lw $t0, -5852($fp)
	lw $t1, -5844($fp)
	add $t0, $t0, $t1
	sw $t0, -5856($fp)
	lw $t0, -5856($fp)
	lw $t1, 0($t0)
	sw $t1, -5860($fp)
	lw $t0, -5860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -5864($fp)
	li $t0, 3
	sw $t0, -5868($fp)
	li $t0, 4
	lw $t1, -5868($fp)
	mul $t0, $t0, $t1
	sw $t0, -5872($fp)
	lw $t0, -5872($fp)
	lw $t1, -5864($fp)
	add $t0, $t0, $t1
	sw $t0, -5876($fp)
	lw $t0, -5876($fp)
	lw $t1, 0($t0)
	sw $t1, -5880($fp)
	lw $t0, -5880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -5884($fp)
	li $t0, 4
	sw $t0, -5888($fp)
	li $t0, 4
	lw $t1, -5888($fp)
	mul $t0, $t0, $t1
	sw $t0, -5892($fp)
	lw $t0, -5892($fp)
	lw $t1, -5884($fp)
	add $t0, $t0, $t1
	sw $t0, -5896($fp)
	lw $t0, -5896($fp)
	lw $t1, 0($t0)
	sw $t1, -5900($fp)
	lw $t0, -5900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -5904($fp)
	li $t0, 5
	sw $t0, -5908($fp)
	li $t0, 4
	lw $t1, -5908($fp)
	mul $t0, $t0, $t1
	sw $t0, -5912($fp)
	lw $t0, -5912($fp)
	lw $t1, -5904($fp)
	add $t0, $t0, $t1
	sw $t0, -5916($fp)
	lw $t0, -5916($fp)
	lw $t1, 0($t0)
	sw $t1, -5920($fp)
	lw $t0, -5920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -5924($fp)
	li $t0, 6
	sw $t0, -5928($fp)
	li $t0, 4
	lw $t1, -5928($fp)
	mul $t0, $t0, $t1
	sw $t0, -5932($fp)
	lw $t0, -5932($fp)
	lw $t1, -5924($fp)
	add $t0, $t0, $t1
	sw $t0, -5936($fp)
	lw $t0, -5936($fp)
	lw $t1, 0($t0)
	sw $t1, -5940($fp)
	lw $t0, -5940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -5944($fp)
	li $t0, 7
	sw $t0, -5948($fp)
	li $t0, 4
	lw $t1, -5948($fp)
	mul $t0, $t0, $t1
	sw $t0, -5952($fp)
	lw $t0, -5952($fp)
	lw $t1, -5944($fp)
	add $t0, $t0, $t1
	sw $t0, -5956($fp)
	lw $t0, -5956($fp)
	lw $t1, 0($t0)
	sw $t1, -5960($fp)
	lw $t0, -5960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -5964($fp)
	li $t0, 8
	sw $t0, -5968($fp)
	li $t0, 4
	lw $t1, -5968($fp)
	mul $t0, $t0, $t1
	sw $t0, -5972($fp)
	lw $t0, -5972($fp)
	lw $t1, -5964($fp)
	add $t0, $t0, $t1
	sw $t0, -5976($fp)
	lw $t0, -5976($fp)
	lw $t1, 0($t0)
	sw $t1, -5980($fp)
	lw $t0, -5980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -816($fp)
	sw $t0, -5984($fp)
	lw $t0, -5984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5988($fp)
	li $t0, 11832
	sw $t0, -5992($fp)
	lw $t1, -5992($fp)
	li $t2, 0
	bne $t1, $t2, label750
	j label749
label749:
	li $t0, 1
	sw $t0, -5988($fp)
label750:
	lw $ra, -4($fp)
	lw $v0, -5988($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -8668
	li $t0, 56699
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	li $t0, 30972
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	li $t0, 26944
	sw $t0, -152($fp)
	addi $t0, $fp, -36
	sw $t0, -156($fp)
	li $t0, 0
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
	li $t0, 51450
	sw $t0, -176($fp)
	addi $t0, $fp, -36
	sw $t0, -180($fp)
	li $t0, 1
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -188($fp)
	lw $t0, -180($fp)
	lw $t1, -188($fp)
	add $t0, $t0, $t1
	sw $t0, -192($fp)
	lw $t0, -176($fp)
	lw $t1, -192($fp)
	sw $t0, 0($t1)
	lw $t0, -192($fp)
	lw $t1, 0($t0)
	sw $t1, -196($fp)
	li $t0, 37915
	sw $t0, -200($fp)
	addi $t0, $fp, -36
	sw $t0, -204($fp)
	li $t0, 2
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -212($fp)
	lw $t0, -204($fp)
	lw $t1, -212($fp)
	add $t0, $t0, $t1
	sw $t0, -216($fp)
	lw $t0, -200($fp)
	lw $t1, -216($fp)
	sw $t0, 0($t1)
	lw $t0, -216($fp)
	lw $t1, 0($t0)
	sw $t1, -220($fp)
	li $t0, 13145
	sw $t0, -224($fp)
	addi $t0, $fp, -36
	sw $t0, -228($fp)
	li $t0, 3
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
	li $t0, 24364
	sw $t0, -248($fp)
	addi $t0, $fp, -36
	sw $t0, -252($fp)
	li $t0, 4
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
	li $t0, 198
	sw $t0, -272($fp)
	addi $t0, $fp, -36
	sw $t0, -276($fp)
	li $t0, 5
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
	li $t0, 48765
	sw $t0, -296($fp)
	addi $t0, $fp, -36
	sw $t0, -300($fp)
	li $t0, 6
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
	li $t0, 29336
	sw $t0, -320($fp)
	addi $t0, $fp, -36
	sw $t0, -324($fp)
	li $t0, 7
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
	li $t0, 54581
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -352($fp)
	li $t0, 52293
	sw $t0, -356($fp)
	addi $t0, $fp, -72
	sw $t0, -360($fp)
	li $t0, 0
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -368($fp)
	lw $t0, -360($fp)
	lw $t1, -368($fp)
	add $t0, $t0, $t1
	sw $t0, -372($fp)
	lw $t0, -356($fp)
	lw $t1, -372($fp)
	sw $t0, 0($t1)
	lw $t0, -372($fp)
	lw $t1, 0($t0)
	sw $t1, -376($fp)
	li $t0, 22017
	sw $t0, -380($fp)
	addi $t0, $fp, -72
	sw $t0, -384($fp)
	li $t0, 1
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -392($fp)
	lw $t0, -384($fp)
	lw $t1, -392($fp)
	add $t0, $t0, $t1
	sw $t0, -396($fp)
	lw $t0, -380($fp)
	lw $t1, -396($fp)
	sw $t0, 0($t1)
	lw $t0, -396($fp)
	lw $t1, 0($t0)
	sw $t1, -400($fp)
	li $t0, 53010
	sw $t0, -404($fp)
	addi $t0, $fp, -72
	sw $t0, -408($fp)
	li $t0, 2
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -416($fp)
	lw $t0, -408($fp)
	lw $t1, -416($fp)
	add $t0, $t0, $t1
	sw $t0, -420($fp)
	lw $t0, -404($fp)
	lw $t1, -420($fp)
	sw $t0, 0($t1)
	lw $t0, -420($fp)
	lw $t1, 0($t0)
	sw $t1, -424($fp)
	li $t0, 46309
	sw $t0, -428($fp)
	addi $t0, $fp, -72
	sw $t0, -432($fp)
	li $t0, 3
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -440($fp)
	lw $t0, -432($fp)
	lw $t1, -440($fp)
	add $t0, $t0, $t1
	sw $t0, -444($fp)
	lw $t0, -428($fp)
	lw $t1, -444($fp)
	sw $t0, 0($t1)
	lw $t0, -444($fp)
	lw $t1, 0($t0)
	sw $t1, -448($fp)
	li $t0, 41214
	sw $t0, -452($fp)
	addi $t0, $fp, -72
	sw $t0, -456($fp)
	li $t0, 4
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -464($fp)
	lw $t0, -456($fp)
	lw $t1, -464($fp)
	add $t0, $t0, $t1
	sw $t0, -468($fp)
	lw $t0, -452($fp)
	lw $t1, -468($fp)
	sw $t0, 0($t1)
	lw $t0, -468($fp)
	lw $t1, 0($t0)
	sw $t1, -472($fp)
	li $t0, 58290
	sw $t0, -476($fp)
	addi $t0, $fp, -72
	sw $t0, -480($fp)
	li $t0, 5
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -488($fp)
	lw $t0, -480($fp)
	lw $t1, -488($fp)
	add $t0, $t0, $t1
	sw $t0, -492($fp)
	lw $t0, -476($fp)
	lw $t1, -492($fp)
	sw $t0, 0($t1)
	lw $t0, -492($fp)
	lw $t1, 0($t0)
	sw $t1, -496($fp)
	li $t0, 41492
	sw $t0, -500($fp)
	addi $t0, $fp, -72
	sw $t0, -504($fp)
	li $t0, 6
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -512($fp)
	lw $t0, -504($fp)
	lw $t1, -512($fp)
	add $t0, $t0, $t1
	sw $t0, -516($fp)
	lw $t0, -500($fp)
	lw $t1, -516($fp)
	sw $t0, 0($t1)
	lw $t0, -516($fp)
	lw $t1, 0($t0)
	sw $t1, -520($fp)
	li $t0, 11674
	sw $t0, -524($fp)
	addi $t0, $fp, -72
	sw $t0, -528($fp)
	li $t0, 7
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -536($fp)
	lw $t0, -528($fp)
	lw $t1, -536($fp)
	add $t0, $t0, $t1
	sw $t0, -540($fp)
	lw $t0, -524($fp)
	lw $t1, -540($fp)
	sw $t0, 0($t1)
	lw $t0, -540($fp)
	lw $t1, 0($t0)
	sw $t1, -544($fp)
	li $t0, 10811
	sw $t0, -548($fp)
	addi $t0, $fp, -72
	sw $t0, -552($fp)
	li $t0, 8
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -560($fp)
	lw $t0, -552($fp)
	lw $t1, -560($fp)
	add $t0, $t0, $t1
	sw $t0, -564($fp)
	lw $t0, -548($fp)
	lw $t1, -564($fp)
	sw $t0, 0($t1)
	lw $t0, -564($fp)
	lw $t1, 0($t0)
	sw $t1, -568($fp)
	li $t0, 49939
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -580($fp)
	li $t0, 3511
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	li $t0, 742
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -604($fp)
	li $t0, 25975
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -616($fp)
	li $t0, 715
	sw $t0, -620($fp)
	addi $t0, $fp, -80
	sw $t0, -624($fp)
	li $t0, 0
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -632($fp)
	lw $t0, -624($fp)
	lw $t1, -632($fp)
	add $t0, $t0, $t1
	sw $t0, -636($fp)
	lw $t0, -620($fp)
	lw $t1, -636($fp)
	sw $t0, 0($t1)
	lw $t0, -636($fp)
	lw $t1, 0($t0)
	sw $t1, -640($fp)
	li $t0, 29083
	sw $t0, -644($fp)
	addi $t0, $fp, -80
	sw $t0, -648($fp)
	li $t0, 1
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -656($fp)
	lw $t0, -648($fp)
	lw $t1, -656($fp)
	add $t0, $t0, $t1
	sw $t0, -660($fp)
	lw $t0, -644($fp)
	lw $t1, -660($fp)
	sw $t0, 0($t1)
	lw $t0, -660($fp)
	lw $t1, 0($t0)
	sw $t1, -664($fp)
	li $t0, 60250
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	li $t0, 13316
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	li $t0, 11850
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
	li $t0, 41259
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	li $t0, 25148
	sw $t0, -716($fp)
	addi $t0, $fp, -84
	sw $t0, -720($fp)
	li $t0, 0
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -728($fp)
	lw $t0, -720($fp)
	lw $t1, -728($fp)
	add $t0, $t0, $t1
	sw $t0, -732($fp)
	lw $t0, -716($fp)
	lw $t1, -732($fp)
	sw $t0, 0($t1)
	lw $t0, -732($fp)
	lw $t1, 0($t0)
	sw $t1, -736($fp)
	li $t0, 3013
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	sw $t0, -748($fp)
	li $t0, 6695
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -760($fp)
	li $t0, 52092
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -772($fp)
	li $t0, 54464
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -784($fp)
	li $t0, 44610
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -796($fp)
	li $t0, 65238
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -808($fp)
	li $t0, 13292
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -820($fp)
	li $t0, 44808
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	sw $t0, -832($fp)
	li $t0, 48467
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	sw $t0, -844($fp)
	li $t0, 42628
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	sw $t0, -856($fp)
	li $t0, 33853
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	sw $t0, -868($fp)
	li $t0, 35225
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	sw $t0, -880($fp)
	li $t0, 64645
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	sw $t0, -892($fp)
	li $t0, 21328
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	sw $t0, -904($fp)
	li $t0, 15998
	sw $t0, -908($fp)
	addi $t0, $fp, -124
	sw $t0, -912($fp)
	li $t0, 0
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -920($fp)
	lw $t0, -912($fp)
	lw $t1, -920($fp)
	add $t0, $t0, $t1
	sw $t0, -924($fp)
	lw $t0, -908($fp)
	lw $t1, -924($fp)
	sw $t0, 0($t1)
	lw $t0, -924($fp)
	lw $t1, 0($t0)
	sw $t1, -928($fp)
	li $t0, 40323
	sw $t0, -932($fp)
	addi $t0, $fp, -124
	sw $t0, -936($fp)
	li $t0, 1
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -944($fp)
	lw $t0, -936($fp)
	lw $t1, -944($fp)
	add $t0, $t0, $t1
	sw $t0, -948($fp)
	lw $t0, -932($fp)
	lw $t1, -948($fp)
	sw $t0, 0($t1)
	lw $t0, -948($fp)
	lw $t1, 0($t0)
	sw $t1, -952($fp)
	li $t0, 14082
	sw $t0, -956($fp)
	addi $t0, $fp, -124
	sw $t0, -960($fp)
	li $t0, 2
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -968($fp)
	lw $t0, -960($fp)
	lw $t1, -968($fp)
	add $t0, $t0, $t1
	sw $t0, -972($fp)
	lw $t0, -956($fp)
	lw $t1, -972($fp)
	sw $t0, 0($t1)
	lw $t0, -972($fp)
	lw $t1, 0($t0)
	sw $t1, -976($fp)
	li $t0, 57490
	sw $t0, -980($fp)
	addi $t0, $fp, -124
	sw $t0, -984($fp)
	li $t0, 3
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -992($fp)
	lw $t0, -984($fp)
	lw $t1, -992($fp)
	add $t0, $t0, $t1
	sw $t0, -996($fp)
	lw $t0, -980($fp)
	lw $t1, -996($fp)
	sw $t0, 0($t1)
	lw $t0, -996($fp)
	lw $t1, 0($t0)
	sw $t1, -1000($fp)
	li $t0, 51997
	sw $t0, -1004($fp)
	addi $t0, $fp, -124
	sw $t0, -1008($fp)
	li $t0, 4
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1016($fp)
	lw $t0, -1008($fp)
	lw $t1, -1016($fp)
	add $t0, $t0, $t1
	sw $t0, -1020($fp)
	lw $t0, -1004($fp)
	lw $t1, -1020($fp)
	sw $t0, 0($t1)
	lw $t0, -1020($fp)
	lw $t1, 0($t0)
	sw $t1, -1024($fp)
	li $t0, 24893
	sw $t0, -1028($fp)
	addi $t0, $fp, -124
	sw $t0, -1032($fp)
	li $t0, 5
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1040($fp)
	lw $t0, -1032($fp)
	lw $t1, -1040($fp)
	add $t0, $t0, $t1
	sw $t0, -1044($fp)
	lw $t0, -1028($fp)
	lw $t1, -1044($fp)
	sw $t0, 0($t1)
	lw $t0, -1044($fp)
	lw $t1, 0($t0)
	sw $t1, -1048($fp)
	li $t0, 41893
	sw $t0, -1052($fp)
	addi $t0, $fp, -124
	sw $t0, -1056($fp)
	li $t0, 6
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1064($fp)
	lw $t0, -1056($fp)
	lw $t1, -1064($fp)
	add $t0, $t0, $t1
	sw $t0, -1068($fp)
	lw $t0, -1052($fp)
	lw $t1, -1068($fp)
	sw $t0, 0($t1)
	lw $t0, -1068($fp)
	lw $t1, 0($t0)
	sw $t1, -1072($fp)
	li $t0, 55508
	sw $t0, -1076($fp)
	addi $t0, $fp, -124
	sw $t0, -1080($fp)
	li $t0, 7
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1088($fp)
	lw $t0, -1080($fp)
	lw $t1, -1088($fp)
	add $t0, $t0, $t1
	sw $t0, -1092($fp)
	lw $t0, -1076($fp)
	lw $t1, -1092($fp)
	sw $t0, 0($t1)
	lw $t0, -1092($fp)
	lw $t1, 0($t0)
	sw $t1, -1096($fp)
	li $t0, 25636
	sw $t0, -1100($fp)
	addi $t0, $fp, -124
	sw $t0, -1104($fp)
	li $t0, 8
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1112($fp)
	lw $t0, -1104($fp)
	lw $t1, -1112($fp)
	add $t0, $t0, $t1
	sw $t0, -1116($fp)
	lw $t0, -1100($fp)
	lw $t1, -1116($fp)
	sw $t0, 0($t1)
	lw $t0, -1116($fp)
	lw $t1, 0($t0)
	sw $t1, -1120($fp)
	li $t0, 2333
	sw $t0, -1124($fp)
	addi $t0, $fp, -124
	sw $t0, -1128($fp)
	li $t0, 9
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1136($fp)
	lw $t0, -1128($fp)
	lw $t1, -1136($fp)
	add $t0, $t0, $t1
	sw $t0, -1140($fp)
	lw $t0, -1124($fp)
	lw $t1, -1140($fp)
	sw $t0, 0($t1)
	lw $t0, -1140($fp)
	lw $t1, 0($t0)
	sw $t1, -1144($fp)
	li $t0, 56223
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	sw $t0, -1156($fp)
	li $t0, 54719
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	sw $t0, -1168($fp)
	li $t0, 62583
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	sw $t0, -1180($fp)
	li $t0, 4003
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	sw $t0, -1192($fp)
	li $t0, 1033
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	sw $t0, -1204($fp)
	li $t0, 38306
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	sw $t0, -1216($fp)
	li $t0, 29151
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	sw $t0, -1228($fp)
	li $t0, 4047
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	sw $t0, -1240($fp)
	lw $t0, -1236($fp)
	sw $t0, -1244($fp)
	li $t0, 0
	sw $t0, -1248($fp)
	li $t0, 0
	sw $t0, -1252($fp)
	li $t0, 45001
	sw $t0, -1256($fp)
	lw $t1, -1256($fp)
	li $t2, 0
	bne $t1, $t2, label754
	j label753
label753:
	li $t0, 1
	sw $t0, -1252($fp)
label754:
	li $t0, 0
	lw $t1, -1252($fp)
	sub $t0, $t0, $t1
	sw $t0, -1260($fp)
	lw $t1, -1260($fp)
	li $t2, 0
	bne $t1, $t2, label752
	j label751
label751:
	li $t0, 1
	sw $t0, -1248($fp)
label752:
	lw $t0, -1244($fp)
	lw $t1, -1248($fp)
	mul $t0, $t0, $t1
	sw $t0, -1264($fp)
	li $t0, 15708
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -1276($fp)
	li $t0, 58511
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1288($fp)
	li $t0, 0
	sw $t0, -1292($fp)
	lw $t0, -1212($fp)
	sw $t0, -1296($fp)
	li $t0, 0
	lw $t1, -1296($fp)
	sub $t0, $t0, $t1
	sw $t0, -1300($fp)
	lw $t1, -1300($fp)
	li $t2, 0
	bne $t1, $t2, label757
	j label756
label757:
	lw $t0, -828($fp)
	sw $t0, -1304($fp)
	lw $t1, -1304($fp)
	li $t2, 0
	bne $t1, $t2, label755
	j label756
label755:
	li $t0, 1
	sw $t0, -1292($fp)
label756:
	lw $ra, -4($fp)
	lw $v0, -1292($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 15410
	sw $t0, -1308($fp)
	li $t0, 0
	sw $t0, -1312($fp)
	lw $t0, -864($fp)
	sw $t0, -1316($fp)
	lw $t0, -864($fp)
	sw $t0, -1320($fp)
	lw $t0, -1316($fp)
	lw $t1, -1320($fp)
	mul $t0, $t0, $t1
	sw $t0, -1324($fp)
	lw $t1, -1324($fp)
	li $t2, 0
	bne $t1, $t2, label761
	j label763
label763:
	li $t0, 24075
	sw $t0, -1328($fp)
	lw $t1, -1328($fp)
	li $t2, 0
	bne $t1, $t2, label761
	j label762
label761:
	li $t0, 1
	sw $t0, -1312($fp)
label762:
	addi $sp, $sp, -4
	lw $t0, -1308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1312($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1332($fp)
	addi $sp, $sp, 12
	lw $t0, -588($fp)
	sw $t0, -1336($fp)
	addi $t0, $fp, -84
	sw $t0, -1340($fp)
	lw $t0, -708($fp)
	sw $t0, -1344($fp)
	li $t0, 4
	lw $t1, -1344($fp)
	mul $t0, $t0, $t1
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	lw $t1, -1340($fp)
	add $t0, $t0, $t1
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	lw $t1, 0($t0)
	sw $t1, -1356($fp)
	lw $t0, -1336($fp)
	lw $t1, -1356($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1360($fp)
	li $t0, 0
	lw $t1, -1360($fp)
	sub $t0, $t0, $t1
	sw $t0, -1364($fp)
	lw $t0, -1332($fp)
	lw $t1, -1364($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1368($fp)
	li $t0, 0
	lw $t1, -1368($fp)
	sub $t0, $t0, $t1
	sw $t0, -1372($fp)
	addi $t0, $fp, -72
	sw $t0, -1376($fp)
	li $t0, 7
	sw $t0, -1380($fp)
	li $t0, 4
	lw $t1, -1380($fp)
	mul $t0, $t0, $t1
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	lw $t1, -1376($fp)
	add $t0, $t0, $t1
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	lw $t1, 0($t0)
	sw $t1, -1392($fp)
	li $t0, 0
	sw $t0, -1396($fp)
	li $t0, 63877
	sw $t0, -1400($fp)
	lw $t1, -1400($fp)
	li $t2, 0
	bne $t1, $t2, label765
	j label764
label764:
	li $t0, 1
	sw $t0, -1396($fp)
label765:
	lw $t0, -1392($fp)
	lw $t1, -1396($fp)
	sub $t0, $t0, $t1
	sw $t0, -1404($fp)
	lw $t1, -1372($fp)
	lw $t2, -1404($fp)
	ble $t1, $t2, label758
	j label759
label758:
	lw $t0, -684($fp)
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -1416($fp)
	j label760
label759:
label766:
	li $t0, 0
	sw $t0, -1420($fp)
	addi $t0, $fp, -36
	sw $t0, -1424($fp)
	li $t0, 1
	sw $t0, -1428($fp)
	li $t0, 4
	lw $t1, -1428($fp)
	mul $t0, $t0, $t1
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	lw $t1, -1424($fp)
	add $t0, $t0, $t1
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	lw $t1, 0($t0)
	sw $t1, -1440($fp)
	lw $t1, -1440($fp)
	li $t2, 0
	bne $t1, $t2, label770
	j label769
label769:
	li $t0, 1
	sw $t0, -1420($fp)
label770:
	lw $t0, -1420($fp)
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -1444($fp)
	lw $t1, -1444($fp)
	li $t2, 0
	bne $t1, $t2, label767
	j label768
label767:
	li $t0, 0
	sw $t0, -1448($fp)
	li $t0, 33566
	sw $t0, -1452($fp)
	li $t0, 0
	sw $t0, -1456($fp)
	lw $t0, -768($fp)
	sw $t0, -1460($fp)
	li $t0, 0
	lw $t1, -1460($fp)
	sub $t0, $t0, $t1
	sw $t0, -1464($fp)
	lw $t1, -1464($fp)
	li $t2, 0
	bne $t1, $t2, label774
	j label773
label773:
	li $t0, 1
	sw $t0, -1456($fp)
label774:
	lw $t0, -1452($fp)
	lw $t1, -1456($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1468($fp)
	li $t0, 48004
	sw $t0, -1472($fp)
	addi $t0, $fp, -72
	sw $t0, -1476($fp)
	lw $t0, -1224($fp)
	sw $t0, -1480($fp)
	li $t0, 4
	lw $t1, -1480($fp)
	mul $t0, $t0, $t1
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	lw $t1, -1476($fp)
	add $t0, $t0, $t1
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	lw $t1, 0($t0)
	sw $t1, -1492($fp)
	lw $t0, -1472($fp)
	lw $t1, -1492($fp)
	sub $t0, $t0, $t1
	sw $t0, -1496($fp)
	lw $t1, -1468($fp)
	lw $t2, -1496($fp)
	ble $t1, $t2, label771
	j label772
label771:
	li $t0, 1
	sw $t0, -1448($fp)
label772:
	j label766
label768:
label760:
	lw $t0, -1272($fp)
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1284($fp)
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 58529
	sw $t0, -1508($fp)
	lw $ra, -4($fp)
	lw $v0, -1508($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, 4($fp)
	sw $t0, -1512($fp)
	li $t0, 49564
	sw $t0, -1516($fp)
	lw $t0, -1512($fp)
	lw $t1, -1516($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1520($fp)
	addi $t0, $fp, -72
	sw $t0, -1524($fp)
	li $t0, 0
	sw $t0, -1528($fp)
	li $t0, 22791
	sw $t0, -1532($fp)
	lw $t1, -1532($fp)
	li $t2, 0
	bne $t1, $t2, label777
	j label776
label777:
	lw $t0, -588($fp)
	sw $t0, -1536($fp)
	lw $t1, -1536($fp)
	li $t2, 0
	bne $t1, $t2, label775
	j label776
label775:
	li $t0, 1
	sw $t0, -1528($fp)
label776:
	li $t0, 4
	lw $t1, -1528($fp)
	mul $t0, $t0, $t1
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	lw $t1, -1524($fp)
	add $t0, $t0, $t1
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	lw $t1, 0($t0)
	sw $t1, -1548($fp)
	lw $t0, -1520($fp)
	lw $t1, -1548($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1552($fp)
label778:
	li $t0, 0
	sw $t0, -1556($fp)
	li $t0, 55448
	sw $t0, -1560($fp)
	li $t0, 46788
	sw $t0, -1564($fp)
	lw $t1, -1560($fp)
	lw $t2, -1564($fp)
	blt $t1, $t2, label781
	j label783
label783:
	lw $t0, -1152($fp)
	sw $t0, -1568($fp)
	lw $t1, -1568($fp)
	li $t2, 0
	bne $t1, $t2, label781
	j label782
label781:
	li $t0, 1
	sw $t0, -1556($fp)
label782:
	li $t0, 0
	sw $t0, -1572($fp)
	li $t0, 0
	sw $t0, -1576($fp)
	li $t0, 0
	sw $t0, -1580($fp)
	li $t0, 20209
	sw $t0, -1584($fp)
	lw $t1, -1584($fp)
	li $t2, 0
	bne $t1, $t2, label789
	j label788
label788:
	li $t0, 1
	sw $t0, -1580($fp)
label789:
	lw $t0, -708($fp)
	sw $t0, -1588($fp)
	lw $t1, -1580($fp)
	lw $t2, -1588($fp)
	bge $t1, $t2, label786
	j label787
label786:
	li $t0, 1
	sw $t0, -1576($fp)
label787:
	li $t0, 0
	sw $t0, -1592($fp)
	li $t0, 57605
	sw $t0, -1596($fp)
	li $t0, 0
	lw $t1, -1596($fp)
	sub $t0, $t0, $t1
	sw $t0, -1600($fp)
	lw $t1, -1600($fp)
	li $t2, 0
	bne $t1, $t2, label792
	j label791
label792:
	lw $t0, -1272($fp)
	sw $t0, -1604($fp)
	lw $t1, -1604($fp)
	li $t2, 0
	bne $t1, $t2, label790
	j label791
label790:
	li $t0, 1
	sw $t0, -1592($fp)
label791:
	li $t0, 0
	sw $t0, -1608($fp)
	li $t0, 0
	sw $t0, -1612($fp)
	lw $t0, -876($fp)
	sw $t0, -1616($fp)
	lw $t1, -1616($fp)
	li $t2, 0
	bne $t1, $t2, label797
	j label796
label796:
	li $t0, 1
	sw $t0, -1612($fp)
label797:
	lw $t0, -1200($fp)
	sw $t0, -1620($fp)
	lw $t0, -1612($fp)
	lw $t1, -1620($fp)
	mul $t0, $t0, $t1
	sw $t0, -1624($fp)
	li $t0, 0
	sw $t0, -1628($fp)
	li $t0, 31969
	sw $t0, -1632($fp)
	lw $t0, -876($fp)
	sw $t0, -1636($fp)
	lw $t0, -1632($fp)
	lw $t1, -1636($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1640($fp)
	lw $t1, -1640($fp)
	li $t2, 0
	bne $t1, $t2, label800
	j label799
label800:
	li $t0, 17876
	sw $t0, -1644($fp)
	lw $t1, -1644($fp)
	li $t2, 0
	bne $t1, $t2, label798
	j label799
label798:
	li $t0, 1
	sw $t0, -1628($fp)
label799:
	addi $sp, $sp, -4
	lw $t0, -1624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1628($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1648($fp)
	addi $sp, $sp, 12
	lw $t1, -1648($fp)
	li $t2, 0
	bne $t1, $t2, label795
	j label794
label795:
	li $t0, 64760
	sw $t0, -1652($fp)
	lw $t1, -1652($fp)
	li $t2, 0
	bne $t1, $t2, label793
	j label794
label793:
	li $t0, 1
	sw $t0, -1608($fp)
label794:
	li $t0, 0
	sw $t0, -1656($fp)
	lw $t0, -1284($fp)
	sw $t0, -1660($fp)
	lw $t1, -1660($fp)
	li $t2, 0
	bne $t1, $t2, label804
	j label802
label804:
	lw $t0, -744($fp)
	sw $t0, -1664($fp)
	lw $t1, -1664($fp)
	li $t2, 0
	bne $t1, $t2, label803
	j label802
label803:
	li $t0, 9252
	sw $t0, -1668($fp)
	lw $t1, -1668($fp)
	li $t2, 0
	bne $t1, $t2, label801
	j label802
label801:
	li $t0, 1
	sw $t0, -1656($fp)
label802:
	addi $sp, $sp, -4
	lw $t0, -1576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1656($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1672($fp)
	addi $sp, $sp, 20
	lw $t0, -780($fp)
	sw $t0, -1676($fp)
	lw $t1, -1672($fp)
	lw $t2, -1676($fp)
	ble $t1, $t2, label784
	j label785
label784:
	li $t0, 1
	sw $t0, -1572($fp)
label785:
	li $t0, 41519
	sw $t0, -1680($fp)
	lw $t0, -1680($fp)
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	sw $t0, -1684($fp)
	li $t0, 0
	sw $t0, -1688($fp)
	lw $t0, -612($fp)
	sw $t0, -1692($fp)
	li $t0, 0
	lw $t1, -1692($fp)
	sub $t0, $t0, $t1
	sw $t0, -1696($fp)
	lw $t1, -1696($fp)
	li $t2, 0
	bne $t1, $t2, label805
	j label807
label807:
	li $t0, 7075
	sw $t0, -1700($fp)
	lw $t1, -1700($fp)
	li $t2, 0
	bne $t1, $t2, label805
	j label806
label805:
	li $t0, 1
	sw $t0, -1688($fp)
label806:
	lw $t0, -864($fp)
	sw $t0, -1704($fp)
	addi $sp, $sp, -4
	lw $t0, -1688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1704($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1708($fp)
	addi $sp, $sp, 12
	lw $t0, -852($fp)
	sw $t0, -1712($fp)
	lw $t0, -1708($fp)
	lw $t1, -1712($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1716($fp)
	addi $sp, $sp, -4
	lw $t0, -1684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1716($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1720($fp)
	addi $sp, $sp, 12
	lw $t0, -1188($fp)
	sw $t0, -1724($fp)
	lw $t0, -1720($fp)
	lw $t1, -1724($fp)
	sub $t0, $t0, $t1
	sw $t0, -1728($fp)
	lw $t0, -672($fp)
	sw $t0, -1732($fp)
	addi $sp, $sp, -4
	lw $t0, -1556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1732($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1736($fp)
	addi $sp, $sp, 20
	lw $t1, -1736($fp)
	li $t2, 0
	bne $t1, $t2, label779
	j label780
label779:
	li $t0, 0
	sw $t0, -1740($fp)
	addi $t0, $fp, -84
	sw $t0, -1744($fp)
	lw $t0, -588($fp)
	sw $t0, -1748($fp)
	li $t0, 4
	lw $t1, -1748($fp)
	mul $t0, $t0, $t1
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	lw $t1, -1744($fp)
	add $t0, $t0, $t1
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	lw $t1, 0($t0)
	sw $t1, -1760($fp)
	lw $t0, -132($fp)
	sw $t0, -1764($fp)
	li $t0, 0
	lw $t1, -1764($fp)
	sub $t0, $t0, $t1
	sw $t0, -1768($fp)
	lw $t1, -1760($fp)
	lw $t2, -1768($fp)
	blt $t1, $t2, label811
	j label812
label811:
	li $t0, 1
	sw $t0, -1740($fp)
label812:
	lw $t0, -1740($fp)
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	sw $t0, -1772($fp)
	lw $t1, -1772($fp)
	li $t2, 0
	bne $t1, $t2, label808
	j label809
label808:
	li $t0, 0
	sw $t0, -1776($fp)
	li $t0, 0
	sw $t0, -1780($fp)
	li $t0, 17256
	sw $t0, -1784($fp)
	li $t0, 59451
	sw $t0, -1788($fp)
	lw $t0, -1784($fp)
	lw $t1, -1788($fp)
	mul $t0, $t0, $t1
	sw $t0, -1792($fp)
	lw $t0, -588($fp)
	sw $t0, -1796($fp)
	lw $t1, -1792($fp)
	lw $t2, -1796($fp)
	ble $t1, $t2, label815
	j label816
label815:
	li $t0, 1
	sw $t0, -1780($fp)
label816:
	li $t0, 47821
	sw $t0, -1800($fp)
	li $t0, 55562
	sw $t0, -1804($fp)
	lw $t0, -1800($fp)
	lw $t1, -1804($fp)
	sub $t0, $t0, $t1
	sw $t0, -1808($fp)
	lw $t1, -1780($fp)
	lw $t2, -1808($fp)
	bne $t1, $t2, label813
	j label814
label813:
	li $t0, 1
	sw $t0, -1776($fp)
label814:
	lw $t0, -1776($fp)
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	sw $t0, -1812($fp)
	lw $ra, -4($fp)
	lw $v0, -1812($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label810
label809:
	addi $t0, $fp, -80
	sw $t0, -1816($fp)
	li $t0, 0
	sw $t0, -1820($fp)
	lw $t0, -888($fp)
	sw $t0, -1824($fp)
	li $t0, 0
	lw $t1, -1824($fp)
	sub $t0, $t0, $t1
	sw $t0, -1828($fp)
	lw $t1, -1828($fp)
	li $t2, 0
	bne $t1, $t2, label819
	j label818
label819:
	lw $t0, -876($fp)
	sw $t0, -1832($fp)
	lw $t1, -1832($fp)
	li $t2, 0
	bne $t1, $t2, label817
	j label818
label817:
	li $t0, 1
	sw $t0, -1820($fp)
label818:
	li $t0, 4
	lw $t1, -1820($fp)
	mul $t0, $t0, $t1
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	lw $t1, -1816($fp)
	add $t0, $t0, $t1
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	lw $t1, 0($t0)
	sw $t1, -1844($fp)
	li $t0, 51869
	sw $t0, -1848($fp)
	lw $t0, -1844($fp)
	lw $t1, -1848($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1852($fp)
label810:
	j label778
label780:
	li $t0, 0
	sw $t0, -1856($fp)
	lw $t0, -672($fp)
	sw $t0, -1860($fp)
	li $t0, 0
	sw $t0, -1864($fp)
	lw $t0, -864($fp)
	sw $t0, -1868($fp)
	lw $t1, -1868($fp)
	li $t2, 0
	bne $t1, $t2, label823
	j label824
label823:
	li $t0, 1
	sw $t0, -1864($fp)
label824:
	lw $t1, -1860($fp)
	lw $t2, -1864($fp)
	bgt $t1, $t2, label820
	j label822
label822:
	li $t0, 35027
	sw $t0, -1872($fp)
	lw $t1, -1872($fp)
	li $t2, 0
	bne $t1, $t2, label825
	j label821
label825:
	lw $t0, -600($fp)
	sw $t0, -1876($fp)
	lw $t1, -1876($fp)
	li $t2, 0
	bne $t1, $t2, label821
	j label820
label820:
	li $t0, 1
	sw $t0, -1856($fp)
label821:
	addi $t0, $fp, -72
	sw $t0, -1880($fp)
	li $t0, 0
	sw $t0, -1884($fp)
	addi $t0, $fp, -124
	sw $t0, -1888($fp)
	li $t0, 9
	sw $t0, -1892($fp)
	li $t0, 4
	lw $t1, -1892($fp)
	mul $t0, $t0, $t1
	sw $t0, -1896($fp)
	lw $t0, -1896($fp)
	lw $t1, -1888($fp)
	add $t0, $t0, $t1
	sw $t0, -1900($fp)
	lw $t0, -1900($fp)
	lw $t1, 0($t0)
	sw $t1, -1904($fp)
	lw $t1, -1904($fp)
	li $t2, 0
	bne $t1, $t2, label829
	j label831
label831:
	li $t0, 59102
	sw $t0, -1908($fp)
	li $t0, 54185
	sw $t0, -1912($fp)
	lw $t0, -1908($fp)
	lw $t1, -1912($fp)
	add $t0, $t0, $t1
	sw $t0, -1916($fp)
	lw $t1, -1916($fp)
	li $t2, 0
	bne $t1, $t2, label829
	j label830
label829:
	li $t0, 1
	sw $t0, -1884($fp)
label830:
	li $t0, 4
	lw $t1, -1884($fp)
	mul $t0, $t0, $t1
	sw $t0, -1920($fp)
	lw $t0, -1920($fp)
	lw $t1, -1880($fp)
	add $t0, $t0, $t1
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	lw $t1, 0($t0)
	sw $t1, -1928($fp)
	lw $t1, -1928($fp)
	li $t2, 0
	bne $t1, $t2, label826
	j label827
label826:
	li $t0, 51110
	sw $t0, -1932($fp)
	addi $t0, $fp, -72
	sw $t0, -1936($fp)
	li $t0, 0
	sw $t0, -1940($fp)
	li $t0, 4
	lw $t1, -1940($fp)
	mul $t0, $t0, $t1
	sw $t0, -1944($fp)
	lw $t0, -1944($fp)
	lw $t1, -1936($fp)
	add $t0, $t0, $t1
	sw $t0, -1948($fp)
	lw $t0, -1948($fp)
	lw $t1, 0($t0)
	sw $t1, -1952($fp)
	li $t0, 34469
	sw $t0, -1956($fp)
	lw $t0, -1956($fp)
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	sw $t0, -1960($fp)
	li $t0, 0
	sw $t0, -1964($fp)
	lw $t0, -1188($fp)
	sw $t0, -1968($fp)
	lw $t1, -1968($fp)
	li $t2, 0
	bne $t1, $t2, label833
	j label832
label832:
	li $t0, 1
	sw $t0, -1964($fp)
label833:
	li $t0, 52526
	sw $t0, -1972($fp)
	addi $sp, $sp, -4
	lw $t0, -1964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1972($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1976($fp)
	addi $sp, $sp, 12
	li $t0, 62450
	sw $t0, -1980($fp)
	lw $t0, -1980($fp)
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -1984($fp)
	addi $sp, $sp, -4
	lw $t0, -1952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1984($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1988($fp)
	addi $sp, $sp, 20
	lw $t0, -1932($fp)
	lw $t1, -1988($fp)
	add $t0, $t0, $t1
	sw $t0, -1992($fp)
	lw $ra, -4($fp)
	lw $v0, -1992($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label828
label827:
	li $t0, 0
	sw $t0, -1996($fp)
	li $t0, 0
	sw $t0, -2000($fp)
	li $t0, 0
	sw $t0, -2004($fp)
	addi $t0, $fp, -80
	sw $t0, -2008($fp)
	lw $t0, -1176($fp)
	sw $t0, -2012($fp)
	li $t0, 4
	lw $t1, -2012($fp)
	mul $t0, $t0, $t1
	sw $t0, -2016($fp)
	lw $t0, -2016($fp)
	lw $t1, -2008($fp)
	add $t0, $t0, $t1
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	lw $t1, 0($t0)
	sw $t1, -2024($fp)
	lw $t0, 8($fp)
	sw $t0, -2028($fp)
	lw $t0, -2024($fp)
	lw $t1, -2028($fp)
	sub $t0, $t0, $t1
	sw $t0, -2032($fp)
	lw $t0, -756($fp)
	sw $t0, -2036($fp)
	li $t0, 16937
	sw $t0, -2040($fp)
	lw $t0, -2036($fp)
	lw $t1, -2040($fp)
	mul $t0, $t0, $t1
	sw $t0, -2044($fp)
	lw $t1, -2032($fp)
	lw $t2, -2044($fp)
	beq $t1, $t2, label838
	j label839
label838:
	li $t0, 1
	sw $t0, -2004($fp)
label839:
	li $t0, 0
	sw $t0, -2048($fp)
	li $t0, 27108
	sw $t0, -2052($fp)
	lw $t1, -2052($fp)
	li $t2, 0
	bne $t1, $t2, label842
	j label841
label842:
	lw $t0, -144($fp)
	sw $t0, -2056($fp)
	lw $t1, -2056($fp)
	li $t2, 0
	bne $t1, $t2, label840
	j label841
label840:
	li $t0, 1
	sw $t0, -2048($fp)
label841:
	lw $t0, -792($fp)
	sw $t0, -2060($fp)
	addi $sp, $sp, -4
	lw $t0, -2048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2060($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2064($fp)
	addi $sp, $sp, 12
	lw $t1, -2004($fp)
	lw $t2, -2064($fp)
	bne $t1, $t2, label836
	j label837
label836:
	li $t0, 1
	sw $t0, -2000($fp)
label837:
	addi $t0, $fp, -72
	sw $t0, -2068($fp)
	li $t0, 0
	sw $t0, -2072($fp)
	li $t0, 34183
	sw $t0, -2076($fp)
	li $t0, 46104
	sw $t0, -2080($fp)
	lw $t0, -2076($fp)
	lw $t1, -2080($fp)
	add $t0, $t0, $t1
	sw $t0, -2084($fp)
	li $t0, 48980
	sw $t0, -2088($fp)
	lw $t1, -2084($fp)
	lw $t2, -2088($fp)
	beq $t1, $t2, label843
	j label844
label843:
	li $t0, 1
	sw $t0, -2072($fp)
label844:
	li $t0, 0
	sw $t0, -2092($fp)
	lw $t0, -900($fp)
	sw $t0, -2096($fp)
	lw $t1, -2096($fp)
	li $t2, 0
	bne $t1, $t2, label848
	j label846
label848:
	li $t0, 4585
	sw $t0, -2100($fp)
	lw $t1, -2100($fp)
	li $t2, 0
	bne $t1, $t2, label847
	j label846
label847:
	li $t0, 39728
	sw $t0, -2104($fp)
	lw $t1, -2104($fp)
	li $t2, 0
	bne $t1, $t2, label845
	j label846
label845:
	li $t0, 1
	sw $t0, -2092($fp)
label846:
	addi $sp, $sp, -4
	lw $t0, -2072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2092($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2108($fp)
	addi $sp, $sp, 12
	li $t0, 4
	lw $t1, -2108($fp)
	mul $t0, $t0, $t1
	sw $t0, -2112($fp)
	lw $t0, -2112($fp)
	lw $t1, -2068($fp)
	add $t0, $t0, $t1
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	lw $t1, 0($t0)
	sw $t1, -2120($fp)
	lw $t1, -2000($fp)
	lw $t2, -2120($fp)
	beq $t1, $t2, label834
	j label835
label834:
	li $t0, 1
	sw $t0, -1996($fp)
label835:
label828:
	lw $t0, -1176($fp)
	sw $t0, -2124($fp)
	lw $t0, -684($fp)
	sw $t0, -2128($fp)
	lw $t0, -2124($fp)
	lw $t1, -2128($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2132($fp)
	li $t0, 0
	sw $t0, -2136($fp)
	lw $t0, -1224($fp)
	sw $t0, -2140($fp)
	lw $t1, -2140($fp)
	li $t2, 0
	bne $t1, $t2, label850
	j label849
label849:
	li $t0, 1
	sw $t0, -2136($fp)
label850:
	lw $t0, -2132($fp)
	lw $t1, -2136($fp)
	sub $t0, $t0, $t1
	sw $t0, -2144($fp)
	lw $t0, -132($fp)
	sw $t0, -2148($fp)
	lw $t0, -2148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -2156($fp)
	li $t0, 0
	sw $t0, -2160($fp)
	li $t0, 4
	lw $t1, -2160($fp)
	mul $t0, $t0, $t1
	sw $t0, -2164($fp)
	lw $t0, -2164($fp)
	lw $t1, -2156($fp)
	add $t0, $t0, $t1
	sw $t0, -2168($fp)
	lw $t0, -2168($fp)
	lw $t1, 0($t0)
	sw $t1, -2172($fp)
	lw $t0, -2172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -2176($fp)
	li $t0, 1
	sw $t0, -2180($fp)
	li $t0, 4
	lw $t1, -2180($fp)
	mul $t0, $t0, $t1
	sw $t0, -2184($fp)
	lw $t0, -2184($fp)
	lw $t1, -2176($fp)
	add $t0, $t0, $t1
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	lw $t1, 0($t0)
	sw $t1, -2192($fp)
	lw $t0, -2192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -2196($fp)
	li $t0, 2
	sw $t0, -2200($fp)
	li $t0, 4
	lw $t1, -2200($fp)
	mul $t0, $t0, $t1
	sw $t0, -2204($fp)
	lw $t0, -2204($fp)
	lw $t1, -2196($fp)
	add $t0, $t0, $t1
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	lw $t1, 0($t0)
	sw $t1, -2212($fp)
	lw $t0, -2212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -2216($fp)
	li $t0, 3
	sw $t0, -2220($fp)
	li $t0, 4
	lw $t1, -2220($fp)
	mul $t0, $t0, $t1
	sw $t0, -2224($fp)
	lw $t0, -2224($fp)
	lw $t1, -2216($fp)
	add $t0, $t0, $t1
	sw $t0, -2228($fp)
	lw $t0, -2228($fp)
	lw $t1, 0($t0)
	sw $t1, -2232($fp)
	lw $t0, -2232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -2236($fp)
	li $t0, 4
	sw $t0, -2240($fp)
	li $t0, 4
	lw $t1, -2240($fp)
	mul $t0, $t0, $t1
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	lw $t1, -2236($fp)
	add $t0, $t0, $t1
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	lw $t1, 0($t0)
	sw $t1, -2252($fp)
	lw $t0, -2252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -2256($fp)
	li $t0, 5
	sw $t0, -2260($fp)
	li $t0, 4
	lw $t1, -2260($fp)
	mul $t0, $t0, $t1
	sw $t0, -2264($fp)
	lw $t0, -2264($fp)
	lw $t1, -2256($fp)
	add $t0, $t0, $t1
	sw $t0, -2268($fp)
	lw $t0, -2268($fp)
	lw $t1, 0($t0)
	sw $t1, -2272($fp)
	lw $t0, -2272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -2276($fp)
	li $t0, 6
	sw $t0, -2280($fp)
	li $t0, 4
	lw $t1, -2280($fp)
	mul $t0, $t0, $t1
	sw $t0, -2284($fp)
	lw $t0, -2284($fp)
	lw $t1, -2276($fp)
	add $t0, $t0, $t1
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	lw $t1, 0($t0)
	sw $t1, -2292($fp)
	lw $t0, -2292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -2296($fp)
	li $t0, 7
	sw $t0, -2300($fp)
	li $t0, 4
	lw $t1, -2300($fp)
	mul $t0, $t0, $t1
	sw $t0, -2304($fp)
	lw $t0, -2304($fp)
	lw $t1, -2296($fp)
	add $t0, $t0, $t1
	sw $t0, -2308($fp)
	lw $t0, -2308($fp)
	lw $t1, 0($t0)
	sw $t1, -2312($fp)
	lw $t0, -2312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -348($fp)
	sw $t0, -2316($fp)
	lw $t0, -2316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -2320($fp)
	li $t0, 0
	sw $t0, -2324($fp)
	li $t0, 4
	lw $t1, -2324($fp)
	mul $t0, $t0, $t1
	sw $t0, -2328($fp)
	lw $t0, -2328($fp)
	lw $t1, -2320($fp)
	add $t0, $t0, $t1
	sw $t0, -2332($fp)
	lw $t0, -2332($fp)
	lw $t1, 0($t0)
	sw $t1, -2336($fp)
	lw $t0, -2336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -2340($fp)
	li $t0, 1
	sw $t0, -2344($fp)
	li $t0, 4
	lw $t1, -2344($fp)
	mul $t0, $t0, $t1
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	lw $t1, -2340($fp)
	add $t0, $t0, $t1
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	lw $t1, 0($t0)
	sw $t1, -2356($fp)
	lw $t0, -2356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -2360($fp)
	li $t0, 2
	sw $t0, -2364($fp)
	li $t0, 4
	lw $t1, -2364($fp)
	mul $t0, $t0, $t1
	sw $t0, -2368($fp)
	lw $t0, -2368($fp)
	lw $t1, -2360($fp)
	add $t0, $t0, $t1
	sw $t0, -2372($fp)
	lw $t0, -2372($fp)
	lw $t1, 0($t0)
	sw $t1, -2376($fp)
	lw $t0, -2376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -2380($fp)
	li $t0, 3
	sw $t0, -2384($fp)
	li $t0, 4
	lw $t1, -2384($fp)
	mul $t0, $t0, $t1
	sw $t0, -2388($fp)
	lw $t0, -2388($fp)
	lw $t1, -2380($fp)
	add $t0, $t0, $t1
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	lw $t1, 0($t0)
	sw $t1, -2396($fp)
	lw $t0, -2396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -2400($fp)
	li $t0, 4
	sw $t0, -2404($fp)
	li $t0, 4
	lw $t1, -2404($fp)
	mul $t0, $t0, $t1
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	lw $t1, -2400($fp)
	add $t0, $t0, $t1
	sw $t0, -2412($fp)
	lw $t0, -2412($fp)
	lw $t1, 0($t0)
	sw $t1, -2416($fp)
	lw $t0, -2416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -2420($fp)
	li $t0, 5
	sw $t0, -2424($fp)
	li $t0, 4
	lw $t1, -2424($fp)
	mul $t0, $t0, $t1
	sw $t0, -2428($fp)
	lw $t0, -2428($fp)
	lw $t1, -2420($fp)
	add $t0, $t0, $t1
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	lw $t1, 0($t0)
	sw $t1, -2436($fp)
	lw $t0, -2436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -2440($fp)
	li $t0, 6
	sw $t0, -2444($fp)
	li $t0, 4
	lw $t1, -2444($fp)
	mul $t0, $t0, $t1
	sw $t0, -2448($fp)
	lw $t0, -2448($fp)
	lw $t1, -2440($fp)
	add $t0, $t0, $t1
	sw $t0, -2452($fp)
	lw $t0, -2452($fp)
	lw $t1, 0($t0)
	sw $t1, -2456($fp)
	lw $t0, -2456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -2460($fp)
	li $t0, 7
	sw $t0, -2464($fp)
	li $t0, 4
	lw $t1, -2464($fp)
	mul $t0, $t0, $t1
	sw $t0, -2468($fp)
	lw $t0, -2468($fp)
	lw $t1, -2460($fp)
	add $t0, $t0, $t1
	sw $t0, -2472($fp)
	lw $t0, -2472($fp)
	lw $t1, 0($t0)
	sw $t1, -2476($fp)
	lw $t0, -2476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -2480($fp)
	li $t0, 8
	sw $t0, -2484($fp)
	li $t0, 4
	lw $t1, -2484($fp)
	mul $t0, $t0, $t1
	sw $t0, -2488($fp)
	lw $t0, -2488($fp)
	lw $t1, -2480($fp)
	add $t0, $t0, $t1
	sw $t0, -2492($fp)
	lw $t0, -2492($fp)
	lw $t1, 0($t0)
	sw $t1, -2496($fp)
	lw $t0, -2496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -576($fp)
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -588($fp)
	sw $t0, -2504($fp)
	lw $t0, -2504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -600($fp)
	sw $t0, -2508($fp)
	lw $t0, -2508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -612($fp)
	sw $t0, -2512($fp)
	lw $t0, -2512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2516($fp)
	li $t0, 0
	sw $t0, -2520($fp)
	li $t0, 4
	lw $t1, -2520($fp)
	mul $t0, $t0, $t1
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	lw $t1, -2516($fp)
	add $t0, $t0, $t1
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	lw $t1, 0($t0)
	sw $t1, -2532($fp)
	lw $t0, -2532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2536($fp)
	li $t0, 1
	sw $t0, -2540($fp)
	li $t0, 4
	lw $t1, -2540($fp)
	mul $t0, $t0, $t1
	sw $t0, -2544($fp)
	lw $t0, -2544($fp)
	lw $t1, -2536($fp)
	add $t0, $t0, $t1
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	lw $t1, 0($t0)
	sw $t1, -2552($fp)
	lw $t0, -2552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -672($fp)
	sw $t0, -2556($fp)
	lw $t0, -2556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -684($fp)
	sw $t0, -2560($fp)
	lw $t0, -2560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -696($fp)
	sw $t0, -2564($fp)
	lw $t0, -2564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -708($fp)
	sw $t0, -2568($fp)
	lw $t0, -2568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -2572($fp)
	li $t0, 0
	sw $t0, -2576($fp)
	li $t0, 4
	lw $t1, -2576($fp)
	mul $t0, $t0, $t1
	sw $t0, -2580($fp)
	lw $t0, -2580($fp)
	lw $t1, -2572($fp)
	add $t0, $t0, $t1
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	lw $t1, 0($t0)
	sw $t1, -2588($fp)
	lw $t0, -2588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -744($fp)
	sw $t0, -2592($fp)
	lw $t0, -2592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -756($fp)
	sw $t0, -2596($fp)
	lw $t0, -2596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -768($fp)
	sw $t0, -2600($fp)
	lw $t0, -2600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -780($fp)
	sw $t0, -2604($fp)
	lw $t0, -2604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -792($fp)
	sw $t0, -2608($fp)
	lw $t0, -2608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -804($fp)
	sw $t0, -2612($fp)
	lw $t0, -2612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -816($fp)
	sw $t0, -2616($fp)
	lw $t0, -2616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -828($fp)
	sw $t0, -2620($fp)
	lw $t0, -2620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -840($fp)
	sw $t0, -2624($fp)
	lw $t0, -2624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -852($fp)
	sw $t0, -2628($fp)
	lw $t0, -2628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -864($fp)
	sw $t0, -2632($fp)
	lw $t0, -2632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -876($fp)
	sw $t0, -2636($fp)
	lw $t0, -2636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -888($fp)
	sw $t0, -2640($fp)
	lw $t0, -2640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -900($fp)
	sw $t0, -2644($fp)
	lw $t0, -2644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -2648($fp)
	li $t0, 0
	sw $t0, -2652($fp)
	li $t0, 4
	lw $t1, -2652($fp)
	mul $t0, $t0, $t1
	sw $t0, -2656($fp)
	lw $t0, -2656($fp)
	lw $t1, -2648($fp)
	add $t0, $t0, $t1
	sw $t0, -2660($fp)
	lw $t0, -2660($fp)
	lw $t1, 0($t0)
	sw $t1, -2664($fp)
	lw $t0, -2664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -2668($fp)
	li $t0, 1
	sw $t0, -2672($fp)
	li $t0, 4
	lw $t1, -2672($fp)
	mul $t0, $t0, $t1
	sw $t0, -2676($fp)
	lw $t0, -2676($fp)
	lw $t1, -2668($fp)
	add $t0, $t0, $t1
	sw $t0, -2680($fp)
	lw $t0, -2680($fp)
	lw $t1, 0($t0)
	sw $t1, -2684($fp)
	lw $t0, -2684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -2688($fp)
	li $t0, 2
	sw $t0, -2692($fp)
	li $t0, 4
	lw $t1, -2692($fp)
	mul $t0, $t0, $t1
	sw $t0, -2696($fp)
	lw $t0, -2696($fp)
	lw $t1, -2688($fp)
	add $t0, $t0, $t1
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	lw $t1, 0($t0)
	sw $t1, -2704($fp)
	lw $t0, -2704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -2708($fp)
	li $t0, 3
	sw $t0, -2712($fp)
	li $t0, 4
	lw $t1, -2712($fp)
	mul $t0, $t0, $t1
	sw $t0, -2716($fp)
	lw $t0, -2716($fp)
	lw $t1, -2708($fp)
	add $t0, $t0, $t1
	sw $t0, -2720($fp)
	lw $t0, -2720($fp)
	lw $t1, 0($t0)
	sw $t1, -2724($fp)
	lw $t0, -2724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -2728($fp)
	li $t0, 4
	sw $t0, -2732($fp)
	li $t0, 4
	lw $t1, -2732($fp)
	mul $t0, $t0, $t1
	sw $t0, -2736($fp)
	lw $t0, -2736($fp)
	lw $t1, -2728($fp)
	add $t0, $t0, $t1
	sw $t0, -2740($fp)
	lw $t0, -2740($fp)
	lw $t1, 0($t0)
	sw $t1, -2744($fp)
	lw $t0, -2744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -2748($fp)
	li $t0, 5
	sw $t0, -2752($fp)
	li $t0, 4
	lw $t1, -2752($fp)
	mul $t0, $t0, $t1
	sw $t0, -2756($fp)
	lw $t0, -2756($fp)
	lw $t1, -2748($fp)
	add $t0, $t0, $t1
	sw $t0, -2760($fp)
	lw $t0, -2760($fp)
	lw $t1, 0($t0)
	sw $t1, -2764($fp)
	lw $t0, -2764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -2768($fp)
	li $t0, 6
	sw $t0, -2772($fp)
	li $t0, 4
	lw $t1, -2772($fp)
	mul $t0, $t0, $t1
	sw $t0, -2776($fp)
	lw $t0, -2776($fp)
	lw $t1, -2768($fp)
	add $t0, $t0, $t1
	sw $t0, -2780($fp)
	lw $t0, -2780($fp)
	lw $t1, 0($t0)
	sw $t1, -2784($fp)
	lw $t0, -2784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -2788($fp)
	li $t0, 7
	sw $t0, -2792($fp)
	li $t0, 4
	lw $t1, -2792($fp)
	mul $t0, $t0, $t1
	sw $t0, -2796($fp)
	lw $t0, -2796($fp)
	lw $t1, -2788($fp)
	add $t0, $t0, $t1
	sw $t0, -2800($fp)
	lw $t0, -2800($fp)
	lw $t1, 0($t0)
	sw $t1, -2804($fp)
	lw $t0, -2804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -2808($fp)
	li $t0, 8
	sw $t0, -2812($fp)
	li $t0, 4
	lw $t1, -2812($fp)
	mul $t0, $t0, $t1
	sw $t0, -2816($fp)
	lw $t0, -2816($fp)
	lw $t1, -2808($fp)
	add $t0, $t0, $t1
	sw $t0, -2820($fp)
	lw $t0, -2820($fp)
	lw $t1, 0($t0)
	sw $t1, -2824($fp)
	lw $t0, -2824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -2828($fp)
	li $t0, 9
	sw $t0, -2832($fp)
	li $t0, 4
	lw $t1, -2832($fp)
	mul $t0, $t0, $t1
	sw $t0, -2836($fp)
	lw $t0, -2836($fp)
	lw $t1, -2828($fp)
	add $t0, $t0, $t1
	sw $t0, -2840($fp)
	lw $t0, -2840($fp)
	lw $t1, 0($t0)
	sw $t1, -2844($fp)
	lw $t0, -2844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1152($fp)
	sw $t0, -2848($fp)
	lw $t0, -2848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1164($fp)
	sw $t0, -2852($fp)
	lw $t0, -2852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1176($fp)
	sw $t0, -2856($fp)
	lw $t0, -2856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1188($fp)
	sw $t0, -2860($fp)
	lw $t0, -2860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1200($fp)
	sw $t0, -2864($fp)
	lw $t0, -2864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1212($fp)
	sw $t0, -2868($fp)
	lw $t0, -2868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1224($fp)
	sw $t0, -2872($fp)
	lw $t0, -2872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2876($fp)
	lw $t0, -828($fp)
	sw $t0, -2880($fp)
	li $t0, 63982
	sw $t0, -2884($fp)
	lw $t0, -2880($fp)
	lw $t1, -2884($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2888($fp)
	li $t0, 48205
	sw $t0, -2892($fp)
	li $t0, 58221
	sw $t0, -2896($fp)
	lw $t0, -2892($fp)
	lw $t1, -2896($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2900($fp)
	li $t0, 18654
	sw $t0, -2904($fp)
	lw $t0, -2900($fp)
	lw $t1, -2904($fp)
	mul $t0, $t0, $t1
	sw $t0, -2908($fp)
	lw $t1, -2888($fp)
	lw $t2, -2908($fp)
	bge $t1, $t2, label851
	j label852
label851:
	li $t0, 1
	sw $t0, -2876($fp)
label852:
	lw $ra, -4($fp)
	lw $v0, -2876($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 38117
	sw $t0, -3072($fp)
	addi $t0, $fp, -2948
	sw $t0, -3076($fp)
	li $t0, 0
	sw $t0, -3080($fp)
	lw $t0, -3080($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3084($fp)
	lw $t0, -3076($fp)
	lw $t1, -3084($fp)
	add $t0, $t0, $t1
	sw $t0, -3088($fp)
	lw $t0, -3072($fp)
	lw $t1, -3088($fp)
	sw $t0, 0($t1)
	lw $t0, -3088($fp)
	lw $t1, 0($t0)
	sw $t1, -3092($fp)
	li $t0, 39473
	sw $t0, -3096($fp)
	addi $t0, $fp, -2948
	sw $t0, -3100($fp)
	li $t0, 1
	sw $t0, -3104($fp)
	lw $t0, -3104($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3108($fp)
	lw $t0, -3100($fp)
	lw $t1, -3108($fp)
	add $t0, $t0, $t1
	sw $t0, -3112($fp)
	lw $t0, -3096($fp)
	lw $t1, -3112($fp)
	sw $t0, 0($t1)
	lw $t0, -3112($fp)
	lw $t1, 0($t0)
	sw $t1, -3116($fp)
	li $t0, 35911
	sw $t0, -3120($fp)
	addi $t0, $fp, -2948
	sw $t0, -3124($fp)
	li $t0, 2
	sw $t0, -3128($fp)
	lw $t0, -3128($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3132($fp)
	lw $t0, -3124($fp)
	lw $t1, -3132($fp)
	add $t0, $t0, $t1
	sw $t0, -3136($fp)
	lw $t0, -3120($fp)
	lw $t1, -3136($fp)
	sw $t0, 0($t1)
	lw $t0, -3136($fp)
	lw $t1, 0($t0)
	sw $t1, -3140($fp)
	li $t0, 32032
	sw $t0, -3144($fp)
	addi $t0, $fp, -2948
	sw $t0, -3148($fp)
	li $t0, 3
	sw $t0, -3152($fp)
	lw $t0, -3152($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3156($fp)
	lw $t0, -3148($fp)
	lw $t1, -3156($fp)
	add $t0, $t0, $t1
	sw $t0, -3160($fp)
	lw $t0, -3144($fp)
	lw $t1, -3160($fp)
	sw $t0, 0($t1)
	lw $t0, -3160($fp)
	lw $t1, 0($t0)
	sw $t1, -3164($fp)
	li $t0, 21759
	sw $t0, -3168($fp)
	addi $t0, $fp, -2948
	sw $t0, -3172($fp)
	li $t0, 4
	sw $t0, -3176($fp)
	lw $t0, -3176($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3180($fp)
	lw $t0, -3172($fp)
	lw $t1, -3180($fp)
	add $t0, $t0, $t1
	sw $t0, -3184($fp)
	lw $t0, -3168($fp)
	lw $t1, -3184($fp)
	sw $t0, 0($t1)
	lw $t0, -3184($fp)
	lw $t1, 0($t0)
	sw $t1, -3188($fp)
	li $t0, 25937
	sw $t0, -3192($fp)
	addi $t0, $fp, -2948
	sw $t0, -3196($fp)
	li $t0, 5
	sw $t0, -3200($fp)
	lw $t0, -3200($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3204($fp)
	lw $t0, -3196($fp)
	lw $t1, -3204($fp)
	add $t0, $t0, $t1
	sw $t0, -3208($fp)
	lw $t0, -3192($fp)
	lw $t1, -3208($fp)
	sw $t0, 0($t1)
	lw $t0, -3208($fp)
	lw $t1, 0($t0)
	sw $t1, -3212($fp)
	li $t0, 55099
	sw $t0, -3216($fp)
	addi $t0, $fp, -2948
	sw $t0, -3220($fp)
	li $t0, 6
	sw $t0, -3224($fp)
	lw $t0, -3224($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3228($fp)
	lw $t0, -3220($fp)
	lw $t1, -3228($fp)
	add $t0, $t0, $t1
	sw $t0, -3232($fp)
	lw $t0, -3216($fp)
	lw $t1, -3232($fp)
	sw $t0, 0($t1)
	lw $t0, -3232($fp)
	lw $t1, 0($t0)
	sw $t1, -3236($fp)
	li $t0, 8091
	sw $t0, -3240($fp)
	addi $t0, $fp, -2948
	sw $t0, -3244($fp)
	li $t0, 7
	sw $t0, -3248($fp)
	lw $t0, -3248($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3252($fp)
	lw $t0, -3244($fp)
	lw $t1, -3252($fp)
	add $t0, $t0, $t1
	sw $t0, -3256($fp)
	lw $t0, -3240($fp)
	lw $t1, -3256($fp)
	sw $t0, 0($t1)
	lw $t0, -3256($fp)
	lw $t1, 0($t0)
	sw $t1, -3260($fp)
	li $t0, 60965
	sw $t0, -3264($fp)
	addi $t0, $fp, -2948
	sw $t0, -3268($fp)
	li $t0, 8
	sw $t0, -3272($fp)
	lw $t0, -3272($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3276($fp)
	lw $t0, -3268($fp)
	lw $t1, -3276($fp)
	add $t0, $t0, $t1
	sw $t0, -3280($fp)
	lw $t0, -3264($fp)
	lw $t1, -3280($fp)
	sw $t0, 0($t1)
	lw $t0, -3280($fp)
	lw $t1, 0($t0)
	sw $t1, -3284($fp)
	li $t0, 28338
	sw $t0, -3288($fp)
	addi $t0, $fp, -2948
	sw $t0, -3292($fp)
	li $t0, 9
	sw $t0, -3296($fp)
	lw $t0, -3296($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3300($fp)
	lw $t0, -3292($fp)
	lw $t1, -3300($fp)
	add $t0, $t0, $t1
	sw $t0, -3304($fp)
	lw $t0, -3288($fp)
	lw $t1, -3304($fp)
	sw $t0, 0($t1)
	lw $t0, -3304($fp)
	lw $t1, 0($t0)
	sw $t1, -3308($fp)
	li $t0, 52935
	sw $t0, -3312($fp)
	addi $t0, $fp, -2980
	sw $t0, -3316($fp)
	li $t0, 0
	sw $t0, -3320($fp)
	lw $t0, -3320($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3324($fp)
	lw $t0, -3316($fp)
	lw $t1, -3324($fp)
	add $t0, $t0, $t1
	sw $t0, -3328($fp)
	lw $t0, -3312($fp)
	lw $t1, -3328($fp)
	sw $t0, 0($t1)
	lw $t0, -3328($fp)
	lw $t1, 0($t0)
	sw $t1, -3332($fp)
	li $t0, 54531
	sw $t0, -3336($fp)
	addi $t0, $fp, -2980
	sw $t0, -3340($fp)
	li $t0, 1
	sw $t0, -3344($fp)
	lw $t0, -3344($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3348($fp)
	lw $t0, -3340($fp)
	lw $t1, -3348($fp)
	add $t0, $t0, $t1
	sw $t0, -3352($fp)
	lw $t0, -3336($fp)
	lw $t1, -3352($fp)
	sw $t0, 0($t1)
	lw $t0, -3352($fp)
	lw $t1, 0($t0)
	sw $t1, -3356($fp)
	li $t0, 16987
	sw $t0, -3360($fp)
	addi $t0, $fp, -2980
	sw $t0, -3364($fp)
	li $t0, 2
	sw $t0, -3368($fp)
	lw $t0, -3368($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3372($fp)
	lw $t0, -3364($fp)
	lw $t1, -3372($fp)
	add $t0, $t0, $t1
	sw $t0, -3376($fp)
	lw $t0, -3360($fp)
	lw $t1, -3376($fp)
	sw $t0, 0($t1)
	lw $t0, -3376($fp)
	lw $t1, 0($t0)
	sw $t1, -3380($fp)
	li $t0, 38509
	sw $t0, -3384($fp)
	addi $t0, $fp, -2980
	sw $t0, -3388($fp)
	li $t0, 3
	sw $t0, -3392($fp)
	lw $t0, -3392($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3396($fp)
	lw $t0, -3388($fp)
	lw $t1, -3396($fp)
	add $t0, $t0, $t1
	sw $t0, -3400($fp)
	lw $t0, -3384($fp)
	lw $t1, -3400($fp)
	sw $t0, 0($t1)
	lw $t0, -3400($fp)
	lw $t1, 0($t0)
	sw $t1, -3404($fp)
	li $t0, 51445
	sw $t0, -3408($fp)
	addi $t0, $fp, -2980
	sw $t0, -3412($fp)
	li $t0, 4
	sw $t0, -3416($fp)
	lw $t0, -3416($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3420($fp)
	lw $t0, -3412($fp)
	lw $t1, -3420($fp)
	add $t0, $t0, $t1
	sw $t0, -3424($fp)
	lw $t0, -3408($fp)
	lw $t1, -3424($fp)
	sw $t0, 0($t1)
	lw $t0, -3424($fp)
	lw $t1, 0($t0)
	sw $t1, -3428($fp)
	li $t0, 3978
	sw $t0, -3432($fp)
	addi $t0, $fp, -2980
	sw $t0, -3436($fp)
	li $t0, 5
	sw $t0, -3440($fp)
	lw $t0, -3440($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3444($fp)
	lw $t0, -3436($fp)
	lw $t1, -3444($fp)
	add $t0, $t0, $t1
	sw $t0, -3448($fp)
	lw $t0, -3432($fp)
	lw $t1, -3448($fp)
	sw $t0, 0($t1)
	lw $t0, -3448($fp)
	lw $t1, 0($t0)
	sw $t1, -3452($fp)
	li $t0, 7443
	sw $t0, -3456($fp)
	addi $t0, $fp, -2980
	sw $t0, -3460($fp)
	li $t0, 6
	sw $t0, -3464($fp)
	lw $t0, -3464($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3468($fp)
	lw $t0, -3460($fp)
	lw $t1, -3468($fp)
	add $t0, $t0, $t1
	sw $t0, -3472($fp)
	lw $t0, -3456($fp)
	lw $t1, -3472($fp)
	sw $t0, 0($t1)
	lw $t0, -3472($fp)
	lw $t1, 0($t0)
	sw $t1, -3476($fp)
	li $t0, 20024
	sw $t0, -3480($fp)
	addi $t0, $fp, -2980
	sw $t0, -3484($fp)
	li $t0, 7
	sw $t0, -3488($fp)
	lw $t0, -3488($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3492($fp)
	lw $t0, -3484($fp)
	lw $t1, -3492($fp)
	add $t0, $t0, $t1
	sw $t0, -3496($fp)
	lw $t0, -3480($fp)
	lw $t1, -3496($fp)
	sw $t0, 0($t1)
	lw $t0, -3496($fp)
	lw $t1, 0($t0)
	sw $t1, -3500($fp)
	li $t0, 24535
	sw $t0, -3504($fp)
	lw $t0, -3504($fp)
	sw $t0, -3508($fp)
	lw $t0, -3508($fp)
	sw $t0, -3512($fp)
	li $t0, 24380
	sw $t0, -3516($fp)
	lw $t0, -3516($fp)
	sw $t0, -3520($fp)
	lw $t0, -3520($fp)
	sw $t0, -3524($fp)
	li $t0, 47132
	sw $t0, -3528($fp)
	lw $t0, -3528($fp)
	sw $t0, -3532($fp)
	lw $t0, -3532($fp)
	sw $t0, -3536($fp)
	li $t0, 29120
	sw $t0, -3540($fp)
	lw $t0, -3540($fp)
	sw $t0, -3544($fp)
	lw $t0, -3544($fp)
	sw $t0, -3548($fp)
	li $t0, 64109
	sw $t0, -3552($fp)
	lw $t0, -3552($fp)
	sw $t0, -3556($fp)
	lw $t0, -3556($fp)
	sw $t0, -3560($fp)
	li $t0, 15780
	sw $t0, -3564($fp)
	lw $t0, -3564($fp)
	sw $t0, -3568($fp)
	lw $t0, -3568($fp)
	sw $t0, -3572($fp)
	li $t0, 9689
	sw $t0, -3576($fp)
	addi $t0, $fp, -3020
	sw $t0, -3580($fp)
	li $t0, 0
	sw $t0, -3584($fp)
	lw $t0, -3584($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3588($fp)
	lw $t0, -3580($fp)
	lw $t1, -3588($fp)
	add $t0, $t0, $t1
	sw $t0, -3592($fp)
	lw $t0, -3576($fp)
	lw $t1, -3592($fp)
	sw $t0, 0($t1)
	lw $t0, -3592($fp)
	lw $t1, 0($t0)
	sw $t1, -3596($fp)
	li $t0, 47553
	sw $t0, -3600($fp)
	addi $t0, $fp, -3020
	sw $t0, -3604($fp)
	li $t0, 1
	sw $t0, -3608($fp)
	lw $t0, -3608($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3612($fp)
	lw $t0, -3604($fp)
	lw $t1, -3612($fp)
	add $t0, $t0, $t1
	sw $t0, -3616($fp)
	lw $t0, -3600($fp)
	lw $t1, -3616($fp)
	sw $t0, 0($t1)
	lw $t0, -3616($fp)
	lw $t1, 0($t0)
	sw $t1, -3620($fp)
	li $t0, 16396
	sw $t0, -3624($fp)
	addi $t0, $fp, -3020
	sw $t0, -3628($fp)
	li $t0, 2
	sw $t0, -3632($fp)
	lw $t0, -3632($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3636($fp)
	lw $t0, -3628($fp)
	lw $t1, -3636($fp)
	add $t0, $t0, $t1
	sw $t0, -3640($fp)
	lw $t0, -3624($fp)
	lw $t1, -3640($fp)
	sw $t0, 0($t1)
	lw $t0, -3640($fp)
	lw $t1, 0($t0)
	sw $t1, -3644($fp)
	li $t0, 8134
	sw $t0, -3648($fp)
	addi $t0, $fp, -3020
	sw $t0, -3652($fp)
	li $t0, 3
	sw $t0, -3656($fp)
	lw $t0, -3656($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3660($fp)
	lw $t0, -3652($fp)
	lw $t1, -3660($fp)
	add $t0, $t0, $t1
	sw $t0, -3664($fp)
	lw $t0, -3648($fp)
	lw $t1, -3664($fp)
	sw $t0, 0($t1)
	lw $t0, -3664($fp)
	lw $t1, 0($t0)
	sw $t1, -3668($fp)
	li $t0, 30222
	sw $t0, -3672($fp)
	addi $t0, $fp, -3020
	sw $t0, -3676($fp)
	li $t0, 4
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3684($fp)
	lw $t0, -3676($fp)
	lw $t1, -3684($fp)
	add $t0, $t0, $t1
	sw $t0, -3688($fp)
	lw $t0, -3672($fp)
	lw $t1, -3688($fp)
	sw $t0, 0($t1)
	lw $t0, -3688($fp)
	lw $t1, 0($t0)
	sw $t1, -3692($fp)
	li $t0, 9082
	sw $t0, -3696($fp)
	addi $t0, $fp, -3020
	sw $t0, -3700($fp)
	li $t0, 5
	sw $t0, -3704($fp)
	lw $t0, -3704($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3708($fp)
	lw $t0, -3700($fp)
	lw $t1, -3708($fp)
	add $t0, $t0, $t1
	sw $t0, -3712($fp)
	lw $t0, -3696($fp)
	lw $t1, -3712($fp)
	sw $t0, 0($t1)
	lw $t0, -3712($fp)
	lw $t1, 0($t0)
	sw $t1, -3716($fp)
	li $t0, 26788
	sw $t0, -3720($fp)
	addi $t0, $fp, -3020
	sw $t0, -3724($fp)
	li $t0, 6
	sw $t0, -3728($fp)
	lw $t0, -3728($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3732($fp)
	lw $t0, -3724($fp)
	lw $t1, -3732($fp)
	add $t0, $t0, $t1
	sw $t0, -3736($fp)
	lw $t0, -3720($fp)
	lw $t1, -3736($fp)
	sw $t0, 0($t1)
	lw $t0, -3736($fp)
	lw $t1, 0($t0)
	sw $t1, -3740($fp)
	li $t0, 2803
	sw $t0, -3744($fp)
	addi $t0, $fp, -3020
	sw $t0, -3748($fp)
	li $t0, 7
	sw $t0, -3752($fp)
	lw $t0, -3752($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3756($fp)
	lw $t0, -3748($fp)
	lw $t1, -3756($fp)
	add $t0, $t0, $t1
	sw $t0, -3760($fp)
	lw $t0, -3744($fp)
	lw $t1, -3760($fp)
	sw $t0, 0($t1)
	lw $t0, -3760($fp)
	lw $t1, 0($t0)
	sw $t1, -3764($fp)
	li $t0, 48555
	sw $t0, -3768($fp)
	addi $t0, $fp, -3020
	sw $t0, -3772($fp)
	li $t0, 8
	sw $t0, -3776($fp)
	lw $t0, -3776($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3780($fp)
	lw $t0, -3772($fp)
	lw $t1, -3780($fp)
	add $t0, $t0, $t1
	sw $t0, -3784($fp)
	lw $t0, -3768($fp)
	lw $t1, -3784($fp)
	sw $t0, 0($t1)
	lw $t0, -3784($fp)
	lw $t1, 0($t0)
	sw $t1, -3788($fp)
	li $t0, 62699
	sw $t0, -3792($fp)
	addi $t0, $fp, -3020
	sw $t0, -3796($fp)
	li $t0, 9
	sw $t0, -3800($fp)
	lw $t0, -3800($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3804($fp)
	lw $t0, -3796($fp)
	lw $t1, -3804($fp)
	add $t0, $t0, $t1
	sw $t0, -3808($fp)
	lw $t0, -3792($fp)
	lw $t1, -3808($fp)
	sw $t0, 0($t1)
	lw $t0, -3808($fp)
	lw $t1, 0($t0)
	sw $t1, -3812($fp)
	li $t0, 34836
	sw $t0, -3816($fp)
	lw $t0, -3816($fp)
	sw $t0, -3820($fp)
	lw $t0, -3820($fp)
	sw $t0, -3824($fp)
	li $t0, 4778
	sw $t0, -3828($fp)
	lw $t0, -3828($fp)
	sw $t0, -3832($fp)
	lw $t0, -3832($fp)
	sw $t0, -3836($fp)
	li $t0, 23101
	sw $t0, -3840($fp)
	lw $t0, -3840($fp)
	sw $t0, -3844($fp)
	lw $t0, -3844($fp)
	sw $t0, -3848($fp)
	li $t0, 24399
	sw $t0, -3852($fp)
	lw $t0, -3852($fp)
	sw $t0, -3856($fp)
	lw $t0, -3856($fp)
	sw $t0, -3860($fp)
	li $t0, 12870
	sw $t0, -3864($fp)
	lw $t0, -3864($fp)
	sw $t0, -3868($fp)
	lw $t0, -3868($fp)
	sw $t0, -3872($fp)
	li $t0, 18530
	sw $t0, -3876($fp)
	lw $t0, -3876($fp)
	sw $t0, -3880($fp)
	lw $t0, -3880($fp)
	sw $t0, -3884($fp)
	li $t0, 52738
	sw $t0, -3888($fp)
	addi $t0, $fp, -3044
	sw $t0, -3892($fp)
	li $t0, 0
	sw $t0, -3896($fp)
	lw $t0, -3896($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3900($fp)
	lw $t0, -3892($fp)
	lw $t1, -3900($fp)
	add $t0, $t0, $t1
	sw $t0, -3904($fp)
	lw $t0, -3888($fp)
	lw $t1, -3904($fp)
	sw $t0, 0($t1)
	lw $t0, -3904($fp)
	lw $t1, 0($t0)
	sw $t1, -3908($fp)
	li $t0, 269
	sw $t0, -3912($fp)
	addi $t0, $fp, -3044
	sw $t0, -3916($fp)
	li $t0, 1
	sw $t0, -3920($fp)
	lw $t0, -3920($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3924($fp)
	lw $t0, -3916($fp)
	lw $t1, -3924($fp)
	add $t0, $t0, $t1
	sw $t0, -3928($fp)
	lw $t0, -3912($fp)
	lw $t1, -3928($fp)
	sw $t0, 0($t1)
	lw $t0, -3928($fp)
	lw $t1, 0($t0)
	sw $t1, -3932($fp)
	li $t0, 7525
	sw $t0, -3936($fp)
	addi $t0, $fp, -3044
	sw $t0, -3940($fp)
	li $t0, 2
	sw $t0, -3944($fp)
	lw $t0, -3944($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3948($fp)
	lw $t0, -3940($fp)
	lw $t1, -3948($fp)
	add $t0, $t0, $t1
	sw $t0, -3952($fp)
	lw $t0, -3936($fp)
	lw $t1, -3952($fp)
	sw $t0, 0($t1)
	lw $t0, -3952($fp)
	lw $t1, 0($t0)
	sw $t1, -3956($fp)
	li $t0, 4189
	sw $t0, -3960($fp)
	addi $t0, $fp, -3044
	sw $t0, -3964($fp)
	li $t0, 3
	sw $t0, -3968($fp)
	lw $t0, -3968($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3972($fp)
	lw $t0, -3964($fp)
	lw $t1, -3972($fp)
	add $t0, $t0, $t1
	sw $t0, -3976($fp)
	lw $t0, -3960($fp)
	lw $t1, -3976($fp)
	sw $t0, 0($t1)
	lw $t0, -3976($fp)
	lw $t1, 0($t0)
	sw $t1, -3980($fp)
	li $t0, 38778
	sw $t0, -3984($fp)
	addi $t0, $fp, -3044
	sw $t0, -3988($fp)
	li $t0, 4
	sw $t0, -3992($fp)
	lw $t0, -3992($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3996($fp)
	lw $t0, -3988($fp)
	lw $t1, -3996($fp)
	add $t0, $t0, $t1
	sw $t0, -4000($fp)
	lw $t0, -3984($fp)
	lw $t1, -4000($fp)
	sw $t0, 0($t1)
	lw $t0, -4000($fp)
	lw $t1, 0($t0)
	sw $t1, -4004($fp)
	li $t0, 58971
	sw $t0, -4008($fp)
	addi $t0, $fp, -3044
	sw $t0, -4012($fp)
	li $t0, 5
	sw $t0, -4016($fp)
	lw $t0, -4016($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4020($fp)
	lw $t0, -4012($fp)
	lw $t1, -4020($fp)
	add $t0, $t0, $t1
	sw $t0, -4024($fp)
	lw $t0, -4008($fp)
	lw $t1, -4024($fp)
	sw $t0, 0($t1)
	lw $t0, -4024($fp)
	lw $t1, 0($t0)
	sw $t1, -4028($fp)
	li $t0, 8167
	sw $t0, -4032($fp)
	lw $t0, -4032($fp)
	sw $t0, -4036($fp)
	lw $t0, -4036($fp)
	sw $t0, -4040($fp)
	li $t0, 46221
	sw $t0, -4044($fp)
	lw $t0, -4044($fp)
	sw $t0, -4048($fp)
	lw $t0, -4048($fp)
	sw $t0, -4052($fp)
	li $t0, 13459
	sw $t0, -4056($fp)
	addi $t0, $fp, -3068
	sw $t0, -4060($fp)
	li $t0, 0
	sw $t0, -4064($fp)
	lw $t0, -4064($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4068($fp)
	lw $t0, -4060($fp)
	lw $t1, -4068($fp)
	add $t0, $t0, $t1
	sw $t0, -4072($fp)
	lw $t0, -4056($fp)
	lw $t1, -4072($fp)
	sw $t0, 0($t1)
	lw $t0, -4072($fp)
	lw $t1, 0($t0)
	sw $t1, -4076($fp)
	li $t0, 32702
	sw $t0, -4080($fp)
	addi $t0, $fp, -3068
	sw $t0, -4084($fp)
	li $t0, 1
	sw $t0, -4088($fp)
	lw $t0, -4088($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4092($fp)
	lw $t0, -4084($fp)
	lw $t1, -4092($fp)
	add $t0, $t0, $t1
	sw $t0, -4096($fp)
	lw $t0, -4080($fp)
	lw $t1, -4096($fp)
	sw $t0, 0($t1)
	lw $t0, -4096($fp)
	lw $t1, 0($t0)
	sw $t1, -4100($fp)
	li $t0, 5066
	sw $t0, -4104($fp)
	addi $t0, $fp, -3068
	sw $t0, -4108($fp)
	li $t0, 2
	sw $t0, -4112($fp)
	lw $t0, -4112($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4116($fp)
	lw $t0, -4108($fp)
	lw $t1, -4116($fp)
	add $t0, $t0, $t1
	sw $t0, -4120($fp)
	lw $t0, -4104($fp)
	lw $t1, -4120($fp)
	sw $t0, 0($t1)
	lw $t0, -4120($fp)
	lw $t1, 0($t0)
	sw $t1, -4124($fp)
	li $t0, 60592
	sw $t0, -4128($fp)
	addi $t0, $fp, -3068
	sw $t0, -4132($fp)
	li $t0, 3
	sw $t0, -4136($fp)
	lw $t0, -4136($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4140($fp)
	lw $t0, -4132($fp)
	lw $t1, -4140($fp)
	add $t0, $t0, $t1
	sw $t0, -4144($fp)
	lw $t0, -4128($fp)
	lw $t1, -4144($fp)
	sw $t0, 0($t1)
	lw $t0, -4144($fp)
	lw $t1, 0($t0)
	sw $t1, -4148($fp)
	li $t0, 61823
	sw $t0, -4152($fp)
	addi $t0, $fp, -3068
	sw $t0, -4156($fp)
	li $t0, 4
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
	li $t0, 3639
	sw $t0, -4176($fp)
	addi $t0, $fp, -3068
	sw $t0, -4180($fp)
	li $t0, 5
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
	li $t0, 10836
	sw $t0, -4200($fp)
	lw $t0, -4200($fp)
	sw $t0, -4204($fp)
	lw $t0, -4204($fp)
	sw $t0, -4208($fp)
	li $t0, 5976
	sw $t0, -4212($fp)
	lw $t0, -4212($fp)
	sw $t0, -4216($fp)
	lw $t0, -4216($fp)
	sw $t0, -4220($fp)
	li $t0, 51192
	sw $t0, -4268($fp)
	addi $t0, $fp, -4236
	sw $t0, -4272($fp)
	li $t0, 0
	sw $t0, -4276($fp)
	lw $t0, -4276($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4280($fp)
	lw $t0, -4272($fp)
	lw $t1, -4280($fp)
	add $t0, $t0, $t1
	sw $t0, -4284($fp)
	lw $t0, -4268($fp)
	lw $t1, -4284($fp)
	sw $t0, 0($t1)
	lw $t0, -4284($fp)
	lw $t1, 0($t0)
	sw $t1, -4288($fp)
	li $t0, 27232
	sw $t0, -4292($fp)
	addi $t0, $fp, -4236
	sw $t0, -4296($fp)
	li $t0, 1
	sw $t0, -4300($fp)
	lw $t0, -4300($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4304($fp)
	lw $t0, -4296($fp)
	lw $t1, -4304($fp)
	add $t0, $t0, $t1
	sw $t0, -4308($fp)
	lw $t0, -4292($fp)
	lw $t1, -4308($fp)
	sw $t0, 0($t1)
	lw $t0, -4308($fp)
	lw $t1, 0($t0)
	sw $t1, -4312($fp)
	li $t0, 14110
	sw $t0, -4316($fp)
	addi $t0, $fp, -4236
	sw $t0, -4320($fp)
	li $t0, 2
	sw $t0, -4324($fp)
	lw $t0, -4324($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4328($fp)
	lw $t0, -4320($fp)
	lw $t1, -4328($fp)
	add $t0, $t0, $t1
	sw $t0, -4332($fp)
	lw $t0, -4316($fp)
	lw $t1, -4332($fp)
	sw $t0, 0($t1)
	lw $t0, -4332($fp)
	lw $t1, 0($t0)
	sw $t1, -4336($fp)
	li $t0, 15879
	sw $t0, -4340($fp)
	addi $t0, $fp, -4236
	sw $t0, -4344($fp)
	li $t0, 3
	sw $t0, -4348($fp)
	lw $t0, -4348($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4352($fp)
	lw $t0, -4344($fp)
	lw $t1, -4352($fp)
	add $t0, $t0, $t1
	sw $t0, -4356($fp)
	lw $t0, -4340($fp)
	lw $t1, -4356($fp)
	sw $t0, 0($t1)
	lw $t0, -4356($fp)
	lw $t1, 0($t0)
	sw $t1, -4360($fp)
	li $t0, 36314
	sw $t0, -4364($fp)
	lw $t0, -4364($fp)
	sw $t0, -4368($fp)
	lw $t0, -4368($fp)
	sw $t0, -4372($fp)
	li $t0, 40898
	sw $t0, -4376($fp)
	lw $t0, -4376($fp)
	sw $t0, -4380($fp)
	lw $t0, -4380($fp)
	sw $t0, -4384($fp)
	li $t0, 18682
	sw $t0, -4388($fp)
	addi $t0, $fp, -4264
	sw $t0, -4392($fp)
	li $t0, 0
	sw $t0, -4396($fp)
	lw $t0, -4396($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4400($fp)
	lw $t0, -4392($fp)
	lw $t1, -4400($fp)
	add $t0, $t0, $t1
	sw $t0, -4404($fp)
	lw $t0, -4388($fp)
	lw $t1, -4404($fp)
	sw $t0, 0($t1)
	lw $t0, -4404($fp)
	lw $t1, 0($t0)
	sw $t1, -4408($fp)
	li $t0, 19334
	sw $t0, -4412($fp)
	addi $t0, $fp, -4264
	sw $t0, -4416($fp)
	li $t0, 1
	sw $t0, -4420($fp)
	lw $t0, -4420($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4424($fp)
	lw $t0, -4416($fp)
	lw $t1, -4424($fp)
	add $t0, $t0, $t1
	sw $t0, -4428($fp)
	lw $t0, -4412($fp)
	lw $t1, -4428($fp)
	sw $t0, 0($t1)
	lw $t0, -4428($fp)
	lw $t1, 0($t0)
	sw $t1, -4432($fp)
	li $t0, 38062
	sw $t0, -4436($fp)
	addi $t0, $fp, -4264
	sw $t0, -4440($fp)
	li $t0, 2
	sw $t0, -4444($fp)
	lw $t0, -4444($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4448($fp)
	lw $t0, -4440($fp)
	lw $t1, -4448($fp)
	add $t0, $t0, $t1
	sw $t0, -4452($fp)
	lw $t0, -4436($fp)
	lw $t1, -4452($fp)
	sw $t0, 0($t1)
	lw $t0, -4452($fp)
	lw $t1, 0($t0)
	sw $t1, -4456($fp)
	li $t0, 53518
	sw $t0, -4460($fp)
	addi $t0, $fp, -4264
	sw $t0, -4464($fp)
	li $t0, 3
	sw $t0, -4468($fp)
	lw $t0, -4468($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4472($fp)
	lw $t0, -4464($fp)
	lw $t1, -4472($fp)
	add $t0, $t0, $t1
	sw $t0, -4476($fp)
	lw $t0, -4460($fp)
	lw $t1, -4476($fp)
	sw $t0, 0($t1)
	lw $t0, -4476($fp)
	lw $t1, 0($t0)
	sw $t1, -4480($fp)
	li $t0, 24112
	sw $t0, -4484($fp)
	addi $t0, $fp, -4264
	sw $t0, -4488($fp)
	li $t0, 4
	sw $t0, -4492($fp)
	lw $t0, -4492($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4496($fp)
	lw $t0, -4488($fp)
	lw $t1, -4496($fp)
	add $t0, $t0, $t1
	sw $t0, -4500($fp)
	lw $t0, -4484($fp)
	lw $t1, -4500($fp)
	sw $t0, 0($t1)
	lw $t0, -4500($fp)
	lw $t1, 0($t0)
	sw $t1, -4504($fp)
	li $t0, 61163
	sw $t0, -4508($fp)
	addi $t0, $fp, -4264
	sw $t0, -4512($fp)
	li $t0, 5
	sw $t0, -4516($fp)
	lw $t0, -4516($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4520($fp)
	lw $t0, -4512($fp)
	lw $t1, -4520($fp)
	add $t0, $t0, $t1
	sw $t0, -4524($fp)
	lw $t0, -4508($fp)
	lw $t1, -4524($fp)
	sw $t0, 0($t1)
	lw $t0, -4524($fp)
	lw $t1, 0($t0)
	sw $t1, -4528($fp)
	li $t0, 12382
	sw $t0, -4532($fp)
	addi $t0, $fp, -4264
	sw $t0, -4536($fp)
	li $t0, 6
	sw $t0, -4540($fp)
	lw $t0, -4540($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4544($fp)
	lw $t0, -4536($fp)
	lw $t1, -4544($fp)
	add $t0, $t0, $t1
	sw $t0, -4548($fp)
	lw $t0, -4532($fp)
	lw $t1, -4548($fp)
	sw $t0, 0($t1)
	lw $t0, -4548($fp)
	lw $t1, 0($t0)
	sw $t1, -4552($fp)
	li $t0, 36982
	sw $t0, -4556($fp)
	lw $t0, -4556($fp)
	sw $t0, -4560($fp)
	lw $t0, -4560($fp)
	sw $t0, -4564($fp)
	li $t0, 14157
	sw $t0, -4568($fp)
	lw $t0, -4568($fp)
	sw $t0, -4572($fp)
	lw $t0, -4572($fp)
	sw $t0, -4576($fp)
	li $t0, 65120
	sw $t0, -4580($fp)
	lw $t0, -4580($fp)
	sw $t0, -4584($fp)
	lw $t0, -4584($fp)
	sw $t0, -4588($fp)
label853:
	li $t0, 0
	sw $t0, -4592($fp)
	lw $t0, -4216($fp)
	sw $t0, -4596($fp)
	li $t0, 37251
	sw $t0, -4600($fp)
	lw $t0, -4596($fp)
	lw $t1, -4600($fp)
	sub $t0, $t0, $t1
	sw $t0, -4604($fp)
	li $t0, 21682
	sw $t0, -4608($fp)
	lw $t0, -4604($fp)
	lw $t1, -4608($fp)
	sub $t0, $t0, $t1
	sw $t0, -4612($fp)
	li $t0, 3773
	sw $t0, -4616($fp)
	lw $t0, -576($fp)
	sw $t0, -4620($fp)
	lw $t0, -4616($fp)
	lw $t1, -4620($fp)
	add $t0, $t0, $t1
	sw $t0, -4624($fp)
	lw $t1, -4612($fp)
	lw $t2, -4624($fp)
	bne $t1, $t2, label857
	j label858
label857:
	li $t0, 1
	sw $t0, -4592($fp)
label858:
	li $t0, 10494
	sw $t0, -4628($fp)
	lw $t1, -4592($fp)
	lw $t2, -4628($fp)
	beq $t1, $t2, label854
	j label856
label856:
	li $t0, 0
	sw $t0, -4632($fp)
	li $t0, 15117
	sw $t0, -4636($fp)
	lw $t1, -4636($fp)
	li $t2, 0
	bne $t1, $t2, label860
	j label859
label859:
	li $t0, 1
	sw $t0, -4632($fp)
label860:
	li $t0, 11941
	sw $t0, -4640($fp)
	lw $t0, -3544($fp)
	sw $t0, -4644($fp)
	lw $t0, -4640($fp)
	lw $t1, -4644($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4648($fp)
	lw $t1, -4632($fp)
	lw $t2, -4648($fp)
	blt $t1, $t2, label854
	j label855
label854:
	li $t0, 0
	sw $t0, -4652($fp)
	lw $t0, -852($fp)
	sw $t0, -4656($fp)
	lw $t0, -132($fp)
	sw $t0, -4660($fp)
	li $t0, 0
	lw $t1, -4660($fp)
	sub $t0, $t0, $t1
	sw $t0, -4664($fp)
	lw $t0, -4656($fp)
	lw $t1, -4664($fp)
	add $t0, $t0, $t1
	sw $t0, -4668($fp)
	lw $t1, -4668($fp)
	li $t2, 0
	bne $t1, $t2, label864
	j label862
label864:
	li $t0, 0
	sw $t0, -4672($fp)
	li $t0, 36379
	sw $t0, -4676($fp)
	lw $t0, -744($fp)
	sw $t0, -4680($fp)
	lw $t0, -4676($fp)
	lw $t1, -4680($fp)
	mul $t0, $t0, $t1
	sw $t0, -4684($fp)
	lw $t1, -4684($fp)
	li $t2, 0
	bne $t1, $t2, label865
	j label867
label867:
	li $t0, 20102
	sw $t0, -4688($fp)
	lw $t1, -4688($fp)
	li $t2, 0
	bne $t1, $t2, label865
	j label866
label865:
	li $t0, 1
	sw $t0, -4672($fp)
label866:
	li $t0, 0
	sw $t0, -4692($fp)
	lw $t0, -3556($fp)
	sw $t0, -4696($fp)
	lw $t1, -4696($fp)
	li $t2, 0
	bne $t1, $t2, label869
	j label868
label868:
	li $t0, 1
	sw $t0, -4692($fp)
label869:
	lw $t0, -4560($fp)
	sw $t0, -4700($fp)
	lw $t0, -4692($fp)
	lw $t1, -4700($fp)
	sub $t0, $t0, $t1
	sw $t0, -4704($fp)
	li $t0, 0
	sw $t0, -4708($fp)
	lw $t0, -600($fp)
	sw $t0, -4712($fp)
	lw $t0, -4380($fp)
	sw $t0, -4716($fp)
	lw $t0, -4712($fp)
	lw $t1, -4716($fp)
	mul $t0, $t0, $t1
	sw $t0, -4720($fp)
	li $t0, 32480
	sw $t0, -4724($fp)
	lw $t1, -4720($fp)
	lw $t2, -4724($fp)
	beq $t1, $t2, label870
	j label871
label870:
	li $t0, 1
	sw $t0, -4708($fp)
label871:
	lw $t0, -876($fp)
	sw $t0, -4728($fp)
	li $t0, 1420
	sw $t0, -4732($fp)
	lw $t0, -4728($fp)
	lw $t1, -4732($fp)
	add $t0, $t0, $t1
	sw $t0, -4736($fp)
	lw $t0, -1212($fp)
	sw $t0, -4740($fp)
	lw $t0, -4736($fp)
	lw $t1, -4740($fp)
	add $t0, $t0, $t1
	sw $t0, -4744($fp)
	li $t0, 61016
	sw $t0, -4748($fp)
	li $t0, 0
	sw $t0, -4752($fp)
	li $t0, 51077
	sw $t0, -4756($fp)
	lw $t1, -4756($fp)
	li $t2, 0
	bne $t1, $t2, label875
	j label873
label875:
	lw $t0, -840($fp)
	sw $t0, -4760($fp)
	lw $t1, -4760($fp)
	li $t2, 0
	bne $t1, $t2, label874
	j label873
label874:
	li $t0, 61701
	sw $t0, -4764($fp)
	lw $t1, -4764($fp)
	li $t2, 0
	bne $t1, $t2, label872
	j label873
label872:
	li $t0, 1
	sw $t0, -4752($fp)
label873:
	li $t0, 0
	sw $t0, -4768($fp)
	addi $t0, $fp, -80
	sw $t0, -4772($fp)
	li $t0, 0
	sw $t0, -4776($fp)
	li $t0, 4
	lw $t1, -4776($fp)
	mul $t0, $t0, $t1
	sw $t0, -4780($fp)
	lw $t0, -4780($fp)
	lw $t1, -4772($fp)
	add $t0, $t0, $t1
	sw $t0, -4784($fp)
	lw $t0, -4784($fp)
	lw $t1, 0($t0)
	sw $t1, -4788($fp)
	lw $t1, -4788($fp)
	li $t2, 0
	bne $t1, $t2, label877
	j label876
label876:
	li $t0, 1
	sw $t0, -4768($fp)
label877:
	li $t0, 0
	sw $t0, -4792($fp)
	lw $t0, -3820($fp)
	sw $t0, -4796($fp)
	li $t0, 0
	lw $t1, -4796($fp)
	sub $t0, $t0, $t1
	sw $t0, -4800($fp)
	lw $t0, -144($fp)
	sw $t0, -4804($fp)
	lw $t1, -4800($fp)
	lw $t2, -4804($fp)
	bge $t1, $t2, label878
	j label879
label878:
	li $t0, 1
	sw $t0, -4792($fp)
label879:
	lw $t0, -768($fp)
	sw $t0, -4808($fp)
	lw $t0, -348($fp)
	sw $t0, -4812($fp)
	lw $t0, -4808($fp)
	lw $t1, -4812($fp)
	add $t0, $t0, $t1
	sw $t0, -4816($fp)
	addi $sp, $sp, -4
	lw $t0, -4752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4816($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4820($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -4708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4820($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4824($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -4828($fp)
	addi $t0, $fp, -2948
	sw $t0, -4832($fp)
	lw $t0, -876($fp)
	sw $t0, -4836($fp)
	li $t0, 4
	lw $t1, -4836($fp)
	mul $t0, $t0, $t1
	sw $t0, -4840($fp)
	lw $t0, -4840($fp)
	lw $t1, -4832($fp)
	add $t0, $t0, $t1
	sw $t0, -4844($fp)
	lw $t0, -4844($fp)
	lw $t1, 0($t0)
	sw $t1, -4848($fp)
	li $t0, 65420
	sw $t0, -4852($fp)
	lw $t1, -4848($fp)
	lw $t2, -4852($fp)
	beq $t1, $t2, label880
	j label881
label880:
	li $t0, 1
	sw $t0, -4828($fp)
label881:
	li $t0, 0
	sw $t0, -4856($fp)
	lw $t0, -588($fp)
	sw $t0, -4860($fp)
	li $t0, 40930
	sw $t0, -4864($fp)
	lw $t1, -4860($fp)
	lw $t2, -4864($fp)
	bne $t1, $t2, label884
	j label883
label884:
	lw $t0, -1212($fp)
	sw $t0, -4868($fp)
	lw $t1, -4868($fp)
	li $t2, 0
	bne $t1, $t2, label882
	j label883
label882:
	li $t0, 1
	sw $t0, -4856($fp)
label883:
	addi $sp, $sp, -4
	lw $t0, -4828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4856($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4872($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -4672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4872($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4876($fp)
	addi $sp, $sp, 20
	li $t0, 23633
	sw $t0, -4880($fp)
	addi $sp, $sp, -4
	lw $t0, -4876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4880($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4884($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -4884($fp)
	sub $t0, $t0, $t1
	sw $t0, -4888($fp)
	li $t0, 61781
	sw $t0, -4892($fp)
	lw $t0, -852($fp)
	sw $t0, -4896($fp)
	lw $t0, -4892($fp)
	lw $t1, -4896($fp)
	mul $t0, $t0, $t1
	sw $t0, -4900($fp)
	lw $t0, -864($fp)
	sw $t0, -4904($fp)
	lw $t0, -4900($fp)
	lw $t1, -4904($fp)
	mul $t0, $t0, $t1
	sw $t0, -4908($fp)
	li $t0, 44643
	sw $t0, -4912($fp)
	li $t0, 56715
	sw $t0, -4916($fp)
	lw $t0, -4584($fp)
	sw $t0, -4920($fp)
	lw $t0, -4916($fp)
	lw $t1, -4920($fp)
	add $t0, $t0, $t1
	sw $t0, -4924($fp)
	li $t0, 28577
	sw $t0, -4928($fp)
	lw $t0, -4924($fp)
	lw $t1, -4928($fp)
	add $t0, $t0, $t1
	sw $t0, -4932($fp)
	addi $sp, $sp, -4
	lw $t0, -4888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4932($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4936($fp)
	addi $sp, $sp, 20
	lw $t1, -4936($fp)
	li $t2, 0
	bne $t1, $t2, label863
	j label862
label863:
	addi $t0, $fp, -4264
	sw $t0, -4940($fp)
	li $t0, 6
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
	lw $t1, -4956($fp)
	li $t2, 0
	bne $t1, $t2, label861
	j label862
label861:
	li $t0, 1
	sw $t0, -4652($fp)
label862:
	j label853
label855:
	li $t0, 0
	sw $t0, -4960($fp)
	lw $t0, 8($fp)
	sw $t0, -4964($fp)
	lw $t0, -876($fp)
	sw $t0, -4968($fp)
	lw $t0, -900($fp)
	sw $t0, -4972($fp)
	lw $t0, -4968($fp)
	lw $t1, -4972($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4976($fp)
	lw $t1, -4964($fp)
	lw $t2, -4976($fp)
	bne $t1, $t2, label887
	j label886
label887:
	li $t0, 8085
	sw $t0, -4980($fp)
	lw $t1, -4980($fp)
	li $t2, 0
	bne $t1, $t2, label885
	j label886
label885:
	li $t0, 1
	sw $t0, -4960($fp)
label886:
	li $t0, 10390
	sw $t0, -4984($fp)
	li $t0, 4532
	sw $t0, -4988($fp)
	lw $t0, -4984($fp)
	lw $t1, -4988($fp)
	mul $t0, $t0, $t1
	sw $t0, -4992($fp)
	lw $t0, -348($fp)
	sw $t0, -4996($fp)
	lw $t0, -4992($fp)
	lw $t1, -4996($fp)
	mul $t0, $t0, $t1
	sw $t0, -5000($fp)
	li $t0, 20467
	sw $t0, -5004($fp)
	lw $t0, -5000($fp)
	lw $t1, -5004($fp)
	mul $t0, $t0, $t1
	sw $t0, -5008($fp)
	li $t0, 0
	sw $t0, -5012($fp)
	addi $t0, $fp, -4236
	sw $t0, -5016($fp)
	lw $t0, -3868($fp)
	sw $t0, -5020($fp)
	li $t0, 4
	lw $t1, -5020($fp)
	mul $t0, $t0, $t1
	sw $t0, -5024($fp)
	lw $t0, -5024($fp)
	lw $t1, -5016($fp)
	add $t0, $t0, $t1
	sw $t0, -5028($fp)
	lw $t0, -5028($fp)
	lw $t1, 0($t0)
	sw $t1, -5032($fp)
	lw $t1, -5032($fp)
	li $t2, 0
	bne $t1, $t2, label892
	j label891
label891:
	li $t0, 1
	sw $t0, -5012($fp)
label892:
	lw $t0, -5008($fp)
	lw $t1, -5012($fp)
	sub $t0, $t0, $t1
	sw $t0, -5036($fp)
	addi $t0, $fp, -36
	sw $t0, -5040($fp)
	li $t0, 1
	sw $t0, -5044($fp)
	li $t0, 4
	lw $t1, -5044($fp)
	mul $t0, $t0, $t1
	sw $t0, -5048($fp)
	lw $t0, -5048($fp)
	lw $t1, -5040($fp)
	add $t0, $t0, $t1
	sw $t0, -5052($fp)
	lw $t0, -5052($fp)
	lw $t1, 0($t0)
	sw $t1, -5056($fp)
	lw $t0, -5036($fp)
	lw $t1, -5056($fp)
	add $t0, $t0, $t1
	sw $t0, -5060($fp)
	lw $t1, -5060($fp)
	li $t2, 0
	bne $t1, $t2, label888
	j label889
label888:
	li $t0, 0
	sw $t0, -5064($fp)
	li $t0, 0
	sw $t0, -5068($fp)
	addi $t0, $fp, -124
	sw $t0, -5072($fp)
	li $t0, 4
	sw $t0, -5076($fp)
	li $t0, 4
	lw $t1, -5076($fp)
	mul $t0, $t0, $t1
	sw $t0, -5080($fp)
	lw $t0, -5080($fp)
	lw $t1, -5072($fp)
	add $t0, $t0, $t1
	sw $t0, -5084($fp)
	lw $t0, -5084($fp)
	lw $t1, 0($t0)
	sw $t1, -5088($fp)
	lw $t0, -684($fp)
	sw $t0, -5092($fp)
	lw $t1, -5088($fp)
	lw $t2, -5092($fp)
	ble $t1, $t2, label895
	j label896
label895:
	li $t0, 1
	sw $t0, -5068($fp)
label896:
	li $t0, 0
	sw $t0, -5096($fp)
	li $t0, 55489
	sw $t0, -5100($fp)
	li $t0, 35765
	sw $t0, -5104($fp)
	lw $t0, -5100($fp)
	lw $t1, -5104($fp)
	add $t0, $t0, $t1
	sw $t0, -5108($fp)
	li $t0, 20762
	sw $t0, -5112($fp)
	lw $t1, -5108($fp)
	lw $t2, -5112($fp)
	bne $t1, $t2, label897
	j label898
label897:
	li $t0, 1
	sw $t0, -5096($fp)
label898:
	lw $t0, -3544($fp)
	sw $t0, -5116($fp)
	li $t0, 29582
	sw $t0, -5120($fp)
	lw $t0, -5116($fp)
	lw $t1, -5120($fp)
	mul $t0, $t0, $t1
	sw $t0, -5124($fp)
	li $t0, 0
	sw $t0, -5128($fp)
	li $t0, 23824
	sw $t0, -5132($fp)
	lw $t1, -5132($fp)
	li $t2, 0
	bne $t1, $t2, label900
	j label899
label899:
	li $t0, 1
	sw $t0, -5128($fp)
label900:
	li $t0, 0
	lw $t1, -5128($fp)
	sub $t0, $t0, $t1
	sw $t0, -5136($fp)
	li $t0, 0
	sw $t0, -5140($fp)
	lw $t0, -828($fp)
	sw $t0, -5144($fp)
	li $t0, 40371
	sw $t0, -5148($fp)
	lw $t0, -5144($fp)
	lw $t1, -5148($fp)
	sub $t0, $t0, $t1
	sw $t0, -5152($fp)
	lw $t1, -5152($fp)
	li $t2, 0
	bne $t1, $t2, label903
	j label902
label903:
	lw $t0, -696($fp)
	sw $t0, -5156($fp)
	lw $t1, -5156($fp)
	li $t2, 0
	bne $t1, $t2, label901
	j label902
label901:
	li $t0, 1
	sw $t0, -5140($fp)
label902:
	addi $sp, $sp, -4
	lw $t0, -5096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5140($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5160($fp)
	addi $sp, $sp, 20
	lw $t1, -5068($fp)
	lw $t2, -5160($fp)
	beq $t1, $t2, label893
	j label894
label893:
	li $t0, 1
	sw $t0, -5064($fp)
label894:
	lw $t0, -5064($fp)
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	sw $t0, -5164($fp)
	j label890
label889:
	li $t0, 0
	sw $t0, -5168($fp)
	li $t0, 0
	sw $t0, -5172($fp)
	li $t0, 0
	sw $t0, -5176($fp)
	lw $t0, -576($fp)
	sw $t0, -5180($fp)
	li $t0, 0
	lw $t1, -5180($fp)
	sub $t0, $t0, $t1
	sw $t0, -5184($fp)
	lw $t1, -5184($fp)
	li $t2, 0
	bne $t1, $t2, label910
	j label909
label909:
	li $t0, 1
	sw $t0, -5176($fp)
label910:
	addi $t0, $fp, -2980
	sw $t0, -5188($fp)
	li $t0, 1
	sw $t0, -5192($fp)
	li $t0, 4
	lw $t1, -5192($fp)
	mul $t0, $t0, $t1
	sw $t0, -5196($fp)
	lw $t0, -5196($fp)
	lw $t1, -5188($fp)
	add $t0, $t0, $t1
	sw $t0, -5200($fp)
	lw $t0, -5200($fp)
	lw $t1, 0($t0)
	sw $t1, -5204($fp)
	lw $t1, -5176($fp)
	lw $t2, -5204($fp)
	bgt $t1, $t2, label907
	j label908
label907:
	li $t0, 1
	sw $t0, -5172($fp)
label908:
	li $t0, 0
	sw $t0, -5208($fp)
	addi $t0, $fp, -80
	sw $t0, -5212($fp)
	li $t0, 1
	sw $t0, -5216($fp)
	li $t0, 4
	lw $t1, -5216($fp)
	mul $t0, $t0, $t1
	sw $t0, -5220($fp)
	lw $t0, -5220($fp)
	lw $t1, -5212($fp)
	add $t0, $t0, $t1
	sw $t0, -5224($fp)
	lw $t0, -5224($fp)
	lw $t1, 0($t0)
	sw $t1, -5228($fp)
	li $t0, 0
	sw $t0, -5232($fp)
	lw $t0, -3856($fp)
	sw $t0, -5236($fp)
	li $t0, 7261
	sw $t0, -5240($fp)
	lw $t1, -5236($fp)
	lw $t2, -5240($fp)
	blt $t1, $t2, label913
	j label915
label915:
	li $t0, 32654
	sw $t0, -5244($fp)
	lw $t1, -5244($fp)
	li $t2, 0
	bne $t1, $t2, label913
	j label914
label913:
	li $t0, 1
	sw $t0, -5232($fp)
label914:
	li $t0, 0
	sw $t0, -5248($fp)
	li $t0, 0
	sw $t0, -5252($fp)
	li $t0, 37174
	sw $t0, -5256($fp)
	lw $t0, -1212($fp)
	sw $t0, -5260($fp)
	lw $t1, -5256($fp)
	lw $t2, -5260($fp)
	beq $t1, $t2, label918
	j label919
label918:
	li $t0, 1
	sw $t0, -5252($fp)
label919:
	li $t0, 2433
	sw $t0, -5264($fp)
	lw $t1, -5252($fp)
	lw $t2, -5264($fp)
	bne $t1, $t2, label916
	j label917
label916:
	li $t0, 1
	sw $t0, -5248($fp)
label917:
	li $t0, 0
	sw $t0, -5268($fp)
	li $t0, 0
	sw $t0, -5272($fp)
	li $t0, 55803
	sw $t0, -5276($fp)
	li $t0, 16892
	sw $t0, -5280($fp)
	lw $t1, -5276($fp)
	lw $t2, -5280($fp)
	bne $t1, $t2, label922
	j label923
label922:
	li $t0, 1
	sw $t0, -5272($fp)
label923:
	li $t0, 11096
	sw $t0, -5284($fp)
	lw $t1, -5272($fp)
	lw $t2, -5284($fp)
	bne $t1, $t2, label920
	j label921
label920:
	li $t0, 1
	sw $t0, -5268($fp)
label921:
	lw $t0, -864($fp)
	sw $t0, -5288($fp)
	li $t0, 17007
	sw $t0, -5292($fp)
	lw $t0, -5288($fp)
	lw $t1, -5292($fp)
	mul $t0, $t0, $t1
	sw $t0, -5296($fp)
	li $t0, 42163
	sw $t0, -5300($fp)
	lw $t0, -5296($fp)
	lw $t1, -5300($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5304($fp)
	addi $sp, $sp, -4
	lw $t0, -5268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5304($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5308($fp)
	addi $sp, $sp, 12
	lw $t0, -4572($fp)
	sw $t0, -5312($fp)
	lw $t0, -5308($fp)
	lw $t1, -5312($fp)
	mul $t0, $t0, $t1
	sw $t0, -5316($fp)
	addi $sp, $sp, -4
	lw $t0, -5228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5316($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5320($fp)
	addi $sp, $sp, 20
	li $t0, 3497
	sw $t0, -5324($fp)
	lw $t1, -5320($fp)
	lw $t2, -5324($fp)
	bge $t1, $t2, label911
	j label912
label911:
	li $t0, 1
	sw $t0, -5208($fp)
label912:
	lw $t1, -5172($fp)
	lw $t2, -5208($fp)
	bne $t1, $t2, label904
	j label906
label906:
	li $t0, 0
	sw $t0, -5328($fp)
	li $t0, 23955
	sw $t0, -5332($fp)
	lw $t1, -5332($fp)
	li $t2, 0
	bne $t1, $t2, label926
	j label925
label925:
	li $t0, 1
	sw $t0, -5328($fp)
label926:
	lw $t0, -4560($fp)
	sw $t0, -5336($fp)
	lw $t0, -5328($fp)
	lw $t1, -5336($fp)
	add $t0, $t0, $t1
	sw $t0, -5340($fp)
	lw $t1, -5340($fp)
	li $t2, 0
	bne $t1, $t2, label924
	j label905
label924:
	li $t0, 26019
	sw $t0, -5344($fp)
	li $t0, 0
	lw $t1, -5344($fp)
	sub $t0, $t0, $t1
	sw $t0, -5348($fp)
	lw $t1, -5348($fp)
	li $t2, 0
	bne $t1, $t2, label904
	j label905
label904:
	li $t0, 1
	sw $t0, -5168($fp)
label905:
label890:
	addi $t0, $fp, -4236
	sw $t0, -5352($fp)
	li $t0, 0
	sw $t0, -5356($fp)
	li $t0, 4
	lw $t1, -5356($fp)
	mul $t0, $t0, $t1
	sw $t0, -5360($fp)
	lw $t0, -5360($fp)
	lw $t1, -5352($fp)
	add $t0, $t0, $t1
	sw $t0, -5364($fp)
	lw $t0, -5364($fp)
	lw $t1, 0($t0)
	sw $t1, -5368($fp)
	lw $t0, -5368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4236
	sw $t0, -5372($fp)
	li $t0, 1
	sw $t0, -5376($fp)
	li $t0, 4
	lw $t1, -5376($fp)
	mul $t0, $t0, $t1
	sw $t0, -5380($fp)
	lw $t0, -5380($fp)
	lw $t1, -5372($fp)
	add $t0, $t0, $t1
	sw $t0, -5384($fp)
	lw $t0, -5384($fp)
	lw $t1, 0($t0)
	sw $t1, -5388($fp)
	lw $t0, -5388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4236
	sw $t0, -5392($fp)
	li $t0, 2
	sw $t0, -5396($fp)
	li $t0, 4
	lw $t1, -5396($fp)
	mul $t0, $t0, $t1
	sw $t0, -5400($fp)
	lw $t0, -5400($fp)
	lw $t1, -5392($fp)
	add $t0, $t0, $t1
	sw $t0, -5404($fp)
	lw $t0, -5404($fp)
	lw $t1, 0($t0)
	sw $t1, -5408($fp)
	lw $t0, -5408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4236
	sw $t0, -5412($fp)
	li $t0, 3
	sw $t0, -5416($fp)
	li $t0, 4
	lw $t1, -5416($fp)
	mul $t0, $t0, $t1
	sw $t0, -5420($fp)
	lw $t0, -5420($fp)
	lw $t1, -5412($fp)
	add $t0, $t0, $t1
	sw $t0, -5424($fp)
	lw $t0, -5424($fp)
	lw $t1, 0($t0)
	sw $t1, -5428($fp)
	lw $t0, -5428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4368($fp)
	sw $t0, -5432($fp)
	lw $t0, -5432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4380($fp)
	sw $t0, -5436($fp)
	lw $t0, -5436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4264
	sw $t0, -5440($fp)
	li $t0, 0
	sw $t0, -5444($fp)
	li $t0, 4
	lw $t1, -5444($fp)
	mul $t0, $t0, $t1
	sw $t0, -5448($fp)
	lw $t0, -5448($fp)
	lw $t1, -5440($fp)
	add $t0, $t0, $t1
	sw $t0, -5452($fp)
	lw $t0, -5452($fp)
	lw $t1, 0($t0)
	sw $t1, -5456($fp)
	lw $t0, -5456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4264
	sw $t0, -5460($fp)
	li $t0, 1
	sw $t0, -5464($fp)
	li $t0, 4
	lw $t1, -5464($fp)
	mul $t0, $t0, $t1
	sw $t0, -5468($fp)
	lw $t0, -5468($fp)
	lw $t1, -5460($fp)
	add $t0, $t0, $t1
	sw $t0, -5472($fp)
	lw $t0, -5472($fp)
	lw $t1, 0($t0)
	sw $t1, -5476($fp)
	lw $t0, -5476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4264
	sw $t0, -5480($fp)
	li $t0, 2
	sw $t0, -5484($fp)
	li $t0, 4
	lw $t1, -5484($fp)
	mul $t0, $t0, $t1
	sw $t0, -5488($fp)
	lw $t0, -5488($fp)
	lw $t1, -5480($fp)
	add $t0, $t0, $t1
	sw $t0, -5492($fp)
	lw $t0, -5492($fp)
	lw $t1, 0($t0)
	sw $t1, -5496($fp)
	lw $t0, -5496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4264
	sw $t0, -5500($fp)
	li $t0, 3
	sw $t0, -5504($fp)
	li $t0, 4
	lw $t1, -5504($fp)
	mul $t0, $t0, $t1
	sw $t0, -5508($fp)
	lw $t0, -5508($fp)
	lw $t1, -5500($fp)
	add $t0, $t0, $t1
	sw $t0, -5512($fp)
	lw $t0, -5512($fp)
	lw $t1, 0($t0)
	sw $t1, -5516($fp)
	lw $t0, -5516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4264
	sw $t0, -5520($fp)
	li $t0, 4
	sw $t0, -5524($fp)
	li $t0, 4
	lw $t1, -5524($fp)
	mul $t0, $t0, $t1
	sw $t0, -5528($fp)
	lw $t0, -5528($fp)
	lw $t1, -5520($fp)
	add $t0, $t0, $t1
	sw $t0, -5532($fp)
	lw $t0, -5532($fp)
	lw $t1, 0($t0)
	sw $t1, -5536($fp)
	lw $t0, -5536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4264
	sw $t0, -5540($fp)
	li $t0, 5
	sw $t0, -5544($fp)
	li $t0, 4
	lw $t1, -5544($fp)
	mul $t0, $t0, $t1
	sw $t0, -5548($fp)
	lw $t0, -5548($fp)
	lw $t1, -5540($fp)
	add $t0, $t0, $t1
	sw $t0, -5552($fp)
	lw $t0, -5552($fp)
	lw $t1, 0($t0)
	sw $t1, -5556($fp)
	lw $t0, -5556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4264
	sw $t0, -5560($fp)
	li $t0, 6
	sw $t0, -5564($fp)
	li $t0, 4
	lw $t1, -5564($fp)
	mul $t0, $t0, $t1
	sw $t0, -5568($fp)
	lw $t0, -5568($fp)
	lw $t1, -5560($fp)
	add $t0, $t0, $t1
	sw $t0, -5572($fp)
	lw $t0, -5572($fp)
	lw $t1, 0($t0)
	sw $t1, -5576($fp)
	lw $t0, -5576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4560($fp)
	sw $t0, -5580($fp)
	lw $t0, -5580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4572($fp)
	sw $t0, -5584($fp)
	lw $t0, -5584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4584($fp)
	sw $t0, -5588($fp)
	lw $t0, -5588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5592($fp)
	li $t0, 12402
	sw $t0, -5596($fp)
	lw $t1, -5596($fp)
	li $t2, 0
	bne $t1, $t2, label927
	j label929
label929:
	addi $t0, $fp, -4236
	sw $t0, -5600($fp)
	li $t0, 2
	sw $t0, -5604($fp)
	li $t0, 4
	lw $t1, -5604($fp)
	mul $t0, $t0, $t1
	sw $t0, -5608($fp)
	lw $t0, -5608($fp)
	lw $t1, -5600($fp)
	add $t0, $t0, $t1
	sw $t0, -5612($fp)
	lw $t0, -5612($fp)
	lw $t1, 0($t0)
	sw $t1, -5616($fp)
	lw $t1, -5616($fp)
	li $t2, 0
	bne $t1, $t2, label927
	j label928
label927:
	li $t0, 1
	sw $t0, -5592($fp)
label928:
	lw $ra, -4($fp)
	lw $v0, -5592($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 52507
	sw $t0, -5620($fp)
	lw $t0, -5620($fp)
	sw $t0, -5624($fp)
	lw $t0, -5624($fp)
	sw $t0, -5628($fp)
	li $t0, 18247
	sw $t0, -5632($fp)
	lw $t0, -5632($fp)
	sw $t0, -5636($fp)
	lw $t0, -5636($fp)
	sw $t0, -5640($fp)
	li $t0, 35623
	sw $t0, -5644($fp)
	lw $t0, -5644($fp)
	sw $t0, -5648($fp)
	lw $t0, -5648($fp)
	sw $t0, -5652($fp)
	lw $t0, -5624($fp)
	sw $t0, -5656($fp)
	lw $t0, -5656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5636($fp)
	sw $t0, -5660($fp)
	lw $t0, -5660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5648($fp)
	sw $t0, -5664($fp)
	lw $t0, -5664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5668($fp)
	lw $t0, -1188($fp)
	sw $t0, -5672($fp)
	addi $t0, $fp, -84
	sw $t0, -5676($fp)
	lw $t0, -3856($fp)
	sw $t0, -5680($fp)
	li $t0, 0
	lw $t1, -5680($fp)
	sub $t0, $t0, $t1
	sw $t0, -5684($fp)
	li $t0, 4
	lw $t1, -5684($fp)
	mul $t0, $t0, $t1
	sw $t0, -5688($fp)
	lw $t0, -5688($fp)
	lw $t1, -5676($fp)
	add $t0, $t0, $t1
	sw $t0, -5692($fp)
	lw $t0, -5692($fp)
	lw $t1, 0($t0)
	sw $t1, -5696($fp)
	lw $t1, -5672($fp)
	lw $t2, -5696($fp)
	ble $t1, $t2, label930
	j label931
label930:
	li $t0, 1
	sw $t0, -5668($fp)
label931:
	lw $ra, -4($fp)
	lw $v0, -5668($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label932:
	addi $t0, $fp, -2948
	sw $t0, -5700($fp)
	li $t0, 0
	sw $t0, -5704($fp)
	lw $t0, -900($fp)
	sw $t0, -5708($fp)
	lw $t1, -5708($fp)
	li $t2, 0
	bne $t1, $t2, label935
	j label936
label935:
	li $t0, 1
	sw $t0, -5704($fp)
label936:
	li $t0, 4
	lw $t1, -5704($fp)
	mul $t0, $t0, $t1
	sw $t0, -5712($fp)
	lw $t0, -5712($fp)
	lw $t1, -5700($fp)
	add $t0, $t0, $t1
	sw $t0, -5716($fp)
	lw $t0, -5716($fp)
	lw $t1, 0($t0)
	sw $t1, -5720($fp)
	addi $t0, $fp, -72
	sw $t0, -5724($fp)
	li $t0, 5
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
	lw $t0, -3868($fp)
	sw $t0, -5744($fp)
	li $t0, 0
	lw $t1, -5744($fp)
	sub $t0, $t0, $t1
	sw $t0, -5748($fp)
	lw $t0, -5740($fp)
	lw $t1, -5748($fp)
	mul $t0, $t0, $t1
	sw $t0, -5752($fp)
	lw $t1, -5720($fp)
	lw $t2, -5752($fp)
	bge $t1, $t2, label933
	j label934
label933:
label937:
	addi $t0, $fp, -124
	sw $t0, -5756($fp)
	lw $t0, -348($fp)
	sw $t0, -5760($fp)
	li $t0, 0
	lw $t1, -5760($fp)
	sub $t0, $t0, $t1
	sw $t0, -5764($fp)
	li $t0, 4
	lw $t1, -5764($fp)
	mul $t0, $t0, $t1
	sw $t0, -5768($fp)
	lw $t0, -5768($fp)
	lw $t1, -5756($fp)
	add $t0, $t0, $t1
	sw $t0, -5772($fp)
	lw $t0, -5772($fp)
	lw $t1, 0($t0)
	sw $t1, -5776($fp)
	li $t0, 0
	lw $t1, -5776($fp)
	sub $t0, $t0, $t1
	sw $t0, -5780($fp)
	li $t0, 0
	sw $t0, -5784($fp)
	lw $t0, -5636($fp)
	sw $t0, -5788($fp)
	lw $t0, -1164($fp)
	sw $t0, -5792($fp)
	lw $t0, -5792($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -5796($fp)
	addi $sp, $sp, -4
	lw $t0, -5788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5796($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5800($fp)
	addi $sp, $sp, 12
	li $t0, 15949
	sw $t0, -5804($fp)
	lw $t1, -5800($fp)
	lw $t2, -5804($fp)
	bgt $t1, $t2, label940
	j label941
label940:
	li $t0, 1
	sw $t0, -5784($fp)
label941:
	li $t0, 0
	sw $t0, -5808($fp)
	li $t0, 22144
	sw $t0, -5812($fp)
	li $t0, 0
	lw $t1, -5812($fp)
	sub $t0, $t0, $t1
	sw $t0, -5816($fp)
	li $t0, 18942
	sw $t0, -5820($fp)
	lw $t1, -5816($fp)
	lw $t2, -5820($fp)
	bgt $t1, $t2, label942
	j label943
label942:
	li $t0, 1
	sw $t0, -5808($fp)
label943:
	addi $t0, $fp, -80
	sw $t0, -5824($fp)
	li $t0, 0
	sw $t0, -5828($fp)
	li $t0, 4
	lw $t1, -5828($fp)
	mul $t0, $t0, $t1
	sw $t0, -5832($fp)
	lw $t0, -5832($fp)
	lw $t1, -5824($fp)
	add $t0, $t0, $t1
	sw $t0, -5836($fp)
	lw $t0, -5836($fp)
	lw $t1, 0($t0)
	sw $t1, -5840($fp)
	addi $sp, $sp, -4
	lw $t0, -5808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5840($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5844($fp)
	addi $sp, $sp, 12
	lw $t0, -768($fp)
	sw $t0, -5848($fp)
	lw $t0, -5844($fp)
	lw $t1, -5848($fp)
	mul $t0, $t0, $t1
	sw $t0, -5852($fp)
	lw $t0, -3868($fp)
	sw $t0, -5856($fp)
	li $t0, 30847
	sw $t0, -5860($fp)
	lw $t0, -5856($fp)
	lw $t1, -5860($fp)
	sub $t0, $t0, $t1
	sw $t0, -5864($fp)
	li $t0, 1382
	sw $t0, -5868($fp)
	lw $t0, -5864($fp)
	lw $t1, -5868($fp)
	add $t0, $t0, $t1
	sw $t0, -5872($fp)
	li $t0, 0
	sw $t0, -5876($fp)
	lw $t0, -5624($fp)
	sw $t0, -5880($fp)
	li $t0, 10459
	sw $t0, -5884($fp)
	lw $t1, -5880($fp)
	lw $t2, -5884($fp)
	bgt $t1, $t2, label946
	j label945
label946:
	lw $t0, -1152($fp)
	sw $t0, -5888($fp)
	lw $t1, -5888($fp)
	li $t2, 0
	bne $t1, $t2, label944
	j label945
label944:
	li $t0, 1
	sw $t0, -5876($fp)
label945:
	addi $sp, $sp, -4
	lw $t0, -5784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5876($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5892($fp)
	addi $sp, $sp, 20
	lw $t0, -3880($fp)
	sw $t0, -5896($fp)
	lw $t0, -5892($fp)
	lw $t1, -5896($fp)
	mul $t0, $t0, $t1
	sw $t0, -5900($fp)
	lw $t0, -888($fp)
	sw $t0, -5904($fp)
	li $t0, 0
	lw $t1, -5904($fp)
	sub $t0, $t0, $t1
	sw $t0, -5908($fp)
	lw $t0, -5900($fp)
	lw $t1, -5908($fp)
	mul $t0, $t0, $t1
	sw $t0, -5912($fp)
	lw $t1, -5780($fp)
	lw $t2, -5912($fp)
	ble $t1, $t2, label938
	j label939
label938:
	li $t0, 0
	sw $t0, -5916($fp)
	li $t0, 39151
	sw $t0, -5920($fp)
	li $t0, 0
	sw $t0, -5924($fp)
	li $t0, 0
	sw $t0, -5928($fp)
	li $t0, 61105
	sw $t0, -5932($fp)
	lw $t0, -5648($fp)
	sw $t0, -5936($fp)
	lw $t1, -5932($fp)
	lw $t2, -5936($fp)
	beq $t1, $t2, label951
	j label952
label951:
	li $t0, 1
	sw $t0, -5928($fp)
label952:
	li $t0, 0
	sw $t0, -5940($fp)
	addi $t0, $fp, -3044
	sw $t0, -5944($fp)
	lw $t0, -1176($fp)
	sw $t0, -5948($fp)
	li $t0, 4
	lw $t1, -5948($fp)
	mul $t0, $t0, $t1
	sw $t0, -5952($fp)
	lw $t0, -5952($fp)
	lw $t1, -5944($fp)
	add $t0, $t0, $t1
	sw $t0, -5956($fp)
	lw $t0, -5956($fp)
	lw $t1, 0($t0)
	sw $t1, -5960($fp)
	lw $t1, -5960($fp)
	li $t2, 0
	bne $t1, $t2, label955
	j label954
label955:
	lw $t0, -3820($fp)
	sw $t0, -5964($fp)
	lw $t1, -5964($fp)
	li $t2, 0
	bne $t1, $t2, label953
	j label954
label953:
	li $t0, 1
	sw $t0, -5940($fp)
label954:
	addi $sp, $sp, -4
	lw $t0, -5928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5940($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5968($fp)
	addi $sp, $sp, 12
	lw $t1, -5968($fp)
	li $t2, 0
	bne $t1, $t2, label950
	j label949
label949:
	li $t0, 1
	sw $t0, -5924($fp)
label950:
	lw $t0, -5920($fp)
	lw $t1, -5924($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5972($fp)
	li $t0, 0
	sw $t0, -5976($fp)
	lw $t0, -4036($fp)
	sw $t0, -5980($fp)
	lw $t1, -5980($fp)
	li $t2, 0
	bne $t1, $t2, label956
	j label957
label956:
	li $t0, 1
	sw $t0, -5976($fp)
label957:
	li $t0, 0
	lw $t1, -5976($fp)
	sub $t0, $t0, $t1
	sw $t0, -5984($fp)
	lw $t1, -5972($fp)
	lw $t2, -5984($fp)
	bgt $t1, $t2, label947
	j label948
label947:
	li $t0, 1
	sw $t0, -5916($fp)
label948:
	j label937
label939:
	j label932
label934:
	lw $t0, -5624($fp)
	sw $t0, -5988($fp)
	lw $t0, -5988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5636($fp)
	sw $t0, -5992($fp)
	lw $t0, -5992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5648($fp)
	sw $t0, -5996($fp)
	lw $t0, -5996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6000($fp)
	li $t0, 0
	sw $t0, -6004($fp)
	li $t0, 6217
	sw $t0, -6008($fp)
	lw $t1, -6008($fp)
	li $t2, 0
	bne $t1, $t2, label961
	j label960
label960:
	li $t0, 1
	sw $t0, -6004($fp)
label961:
	li $t0, 43391
	sw $t0, -6012($fp)
	li $t0, 58476
	sw $t0, -6016($fp)
	lw $t0, -6012($fp)
	lw $t1, -6016($fp)
	sub $t0, $t0, $t1
	sw $t0, -6020($fp)
	li $t0, 0
	sw $t0, -6024($fp)
	li $t0, 0
	sw $t0, -6028($fp)
	lw $t0, -1188($fp)
	sw $t0, -6032($fp)
	li $t0, 56043
	sw $t0, -6036($fp)
	lw $t1, -6032($fp)
	lw $t2, -6036($fp)
	bge $t1, $t2, label964
	j label965
label964:
	li $t0, 1
	sw $t0, -6028($fp)
label965:
	li $t0, 6665
	sw $t0, -6040($fp)
	lw $t1, -6028($fp)
	lw $t2, -6040($fp)
	beq $t1, $t2, label962
	j label963
label962:
	li $t0, 1
	sw $t0, -6024($fp)
label963:
	addi $sp, $sp, -4
	lw $t0, -6020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6024($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6044($fp)
	addi $sp, $sp, 12
	lw $t1, -6004($fp)
	lw $t2, -6044($fp)
	ble $t1, $t2, label958
	j label959
label958:
	li $t0, 1
	sw $t0, -6000($fp)
label959:
	lw $ra, -4($fp)
	lw $v0, -6000($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label966:
	addi $t0, $fp, -80
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
	lw $t0, -4048($fp)
	sw $t0, -6068($fp)
	li $t0, 0
	lw $t1, -6068($fp)
	sub $t0, $t0, $t1
	sw $t0, -6072($fp)
	lw $t0, -6064($fp)
	lw $t1, -6072($fp)
	sub $t0, $t0, $t1
	sw $t0, -6076($fp)
	addi $t0, $fp, -3068
	sw $t0, -6080($fp)
	lw $t0, -1200($fp)
	sw $t0, -6084($fp)
	li $t0, 4
	lw $t1, -6084($fp)
	mul $t0, $t0, $t1
	sw $t0, -6088($fp)
	lw $t0, -6088($fp)
	lw $t1, -6080($fp)
	add $t0, $t0, $t1
	sw $t0, -6092($fp)
	lw $t0, -6092($fp)
	lw $t1, 0($t0)
	sw $t1, -6096($fp)
	lw $t0, -4204($fp)
	sw $t0, -6100($fp)
	lw $t0, -6096($fp)
	lw $t1, -6100($fp)
	add $t0, $t0, $t1
	sw $t0, -6104($fp)
	lw $t1, -6076($fp)
	lw $t2, -6104($fp)
	bgt $t1, $t2, label969
	j label968
label969:
	li $t0, 62329
	sw $t0, -6108($fp)
	li $t0, 1
	sw $t0, -6112($fp)
	lw $t0, -6108($fp)
	lw $t1, -6112($fp)
	mul $t0, $t0, $t1
	sw $t0, -6116($fp)
	li $t0, 14007
	sw $t0, -6120($fp)
	lw $t0, -6116($fp)
	lw $t1, -6120($fp)
	mul $t0, $t0, $t1
	sw $t0, -6124($fp)
	lw $t1, -6124($fp)
	li $t2, 0
	bne $t1, $t2, label967
	j label968
label967:
	li $t0, 0
	sw $t0, -6128($fp)
	li $t0, 0
	sw $t0, -6132($fp)
	li $t0, 0
	sw $t0, -6136($fp)
	lw $t0, -672($fp)
	sw $t0, -6140($fp)
	li $t0, 0
	lw $t1, -6140($fp)
	sub $t0, $t0, $t1
	sw $t0, -6144($fp)
	lw $t0, -684($fp)
	sw $t0, -6148($fp)
	lw $t1, -6144($fp)
	lw $t2, -6148($fp)
	beq $t1, $t2, label977
	j label978
label977:
	li $t0, 1
	sw $t0, -6136($fp)
label978:
	lw $t0, -3544($fp)
	sw $t0, -6152($fp)
	li $t0, 0
	lw $t1, -6152($fp)
	sub $t0, $t0, $t1
	sw $t0, -6156($fp)
	li $t0, 0
	sw $t0, -6160($fp)
	li $t0, 14151
	sw $t0, -6164($fp)
	li $t0, 26409
	sw $t0, -6168($fp)
	lw $t0, -6164($fp)
	lw $t1, -6168($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6172($fp)
	lw $t0, -1176($fp)
	sw $t0, -6176($fp)
	lw $t0, -6172($fp)
	lw $t1, -6176($fp)
	add $t0, $t0, $t1
	sw $t0, -6180($fp)
	addi $t0, $fp, -80
	sw $t0, -6184($fp)
	lw $t0, -576($fp)
	sw $t0, -6188($fp)
	li $t0, 4
	lw $t1, -6188($fp)
	mul $t0, $t0, $t1
	sw $t0, -6192($fp)
	lw $t0, -6192($fp)
	lw $t1, -6184($fp)
	add $t0, $t0, $t1
	sw $t0, -6196($fp)
	lw $t0, -6196($fp)
	lw $t1, 0($t0)
	sw $t1, -6200($fp)
	addi $sp, $sp, -4
	lw $t0, -6180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6200($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6204($fp)
	addi $sp, $sp, 12
	lw $t0, -1152($fp)
	sw $t0, -6208($fp)
	lw $t1, -6204($fp)
	lw $t2, -6208($fp)
	ble $t1, $t2, label979
	j label980
label979:
	li $t0, 1
	sw $t0, -6160($fp)
label980:
	li $t0, 0
	sw $t0, -6212($fp)
	li $t0, 20749
	sw $t0, -6216($fp)
	lw $t0, -612($fp)
	sw $t0, -6220($fp)
	lw $t1, -6216($fp)
	lw $t2, -6220($fp)
	bgt $t1, $t2, label981
	j label983
label983:
	lw $t0, -756($fp)
	sw $t0, -6224($fp)
	lw $t1, -6224($fp)
	li $t2, 0
	bne $t1, $t2, label981
	j label982
label981:
	li $t0, 1
	sw $t0, -6212($fp)
label982:
	addi $sp, $sp, -4
	lw $t0, -6136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6212($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6228($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -6228($fp)
	sub $t0, $t0, $t1
	sw $t0, -6232($fp)
	addi $t0, $fp, -80
	sw $t0, -6236($fp)
	li $t0, 1
	sw $t0, -6240($fp)
	li $t0, 4
	lw $t1, -6240($fp)
	mul $t0, $t0, $t1
	sw $t0, -6244($fp)
	lw $t0, -6244($fp)
	lw $t1, -6236($fp)
	add $t0, $t0, $t1
	sw $t0, -6248($fp)
	lw $t0, -6248($fp)
	lw $t1, 0($t0)
	sw $t1, -6252($fp)
	lw $t1, -6232($fp)
	lw $t2, -6252($fp)
	ble $t1, $t2, label975
	j label976
label975:
	li $t0, 1
	sw $t0, -6132($fp)
label976:
	addi $t0, $fp, -3068
	sw $t0, -6256($fp)
	lw $t0, -1176($fp)
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
	li $t0, 43344
	sw $t0, -6276($fp)
	lw $t0, -6272($fp)
	lw $t1, -6276($fp)
	add $t0, $t0, $t1
	sw $t0, -6280($fp)
	lw $t1, -6132($fp)
	lw $t2, -6280($fp)
	ble $t1, $t2, label973
	j label974
label973:
	li $t0, 1
	sw $t0, -6128($fp)
label974:
	li $t0, 13171
	sw $t0, -6284($fp)
	lw $t0, -6284($fp)
	sw $t0, -3556($fp)
	lw $t0, -3556($fp)
	sw $t0, -6288($fp)
	li $t0, 0
	sw $t0, -6292($fp)
	li $t0, 41990
	sw $t0, -6296($fp)
	lw $t0, 8($fp)
	sw $t0, -6300($fp)
	lw $t0, -6296($fp)
	lw $t1, -6300($fp)
	mul $t0, $t0, $t1
	sw $t0, -6304($fp)
	lw $t1, -6304($fp)
	li $t2, 0
	bne $t1, $t2, label984
	j label986
label986:
	li $t0, 24302
	sw $t0, -6308($fp)
	lw $t1, -6308($fp)
	li $t2, 0
	bne $t1, $t2, label984
	j label985
label984:
	li $t0, 1
	sw $t0, -6292($fp)
label985:
	addi $sp, $sp, -4
	lw $t0, -6288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6292($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6312($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -6316($fp)
	li $t0, 0
	sw $t0, -6320($fp)
	lw $t0, -3832($fp)
	sw $t0, -6324($fp)
	lw $t0, -708($fp)
	sw $t0, -6328($fp)
	lw $t1, -6324($fp)
	lw $t2, -6328($fp)
	blt $t1, $t2, label989
	j label990
label989:
	li $t0, 1
	sw $t0, -6320($fp)
label990:
	li $t0, 12094
	sw $t0, -6332($fp)
	lw $t1, -6320($fp)
	lw $t2, -6332($fp)
	bgt $t1, $t2, label987
	j label988
label987:
	li $t0, 1
	sw $t0, -6316($fp)
label988:
	li $t0, 40608
	sw $t0, -6336($fp)
	lw $t0, -612($fp)
	sw $t0, -6340($fp)
	lw $t0, -6336($fp)
	lw $t1, -6340($fp)
	mul $t0, $t0, $t1
	sw $t0, -6344($fp)
	li $t0, 0
	sw $t0, -6348($fp)
	li $t0, 46783
	sw $t0, -6352($fp)
	lw $t0, -696($fp)
	sw $t0, -6356($fp)
	lw $t0, -6352($fp)
	lw $t1, -6356($fp)
	mul $t0, $t0, $t1
	sw $t0, -6360($fp)
	lw $t0, -4036($fp)
	sw $t0, -6364($fp)
	lw $t1, -6360($fp)
	lw $t2, -6364($fp)
	bne $t1, $t2, label991
	j label992
label991:
	li $t0, 1
	sw $t0, -6348($fp)
label992:
	li $t0, 0
	sw $t0, -6368($fp)
	addi $t0, $fp, -36
	sw $t0, -6372($fp)
	lw $t0, -1212($fp)
	sw $t0, -6376($fp)
	li $t0, 4
	lw $t1, -6376($fp)
	mul $t0, $t0, $t1
	sw $t0, -6380($fp)
	lw $t0, -6380($fp)
	lw $t1, -6372($fp)
	add $t0, $t0, $t1
	sw $t0, -6384($fp)
	lw $t0, -6384($fp)
	lw $t1, 0($t0)
	sw $t1, -6388($fp)
	li $t0, 13431
	sw $t0, -6392($fp)
	lw $t1, -6388($fp)
	lw $t2, -6392($fp)
	bne $t1, $t2, label993
	j label994
label993:
	li $t0, 1
	sw $t0, -6368($fp)
label994:
	li $t0, 0
	sw $t0, -6396($fp)
	li $t0, 39761
	sw $t0, -6400($fp)
	lw $t0, -348($fp)
	sw $t0, -6404($fp)
	lw $t0, -6400($fp)
	lw $t1, -6404($fp)
	mul $t0, $t0, $t1
	sw $t0, -6408($fp)
	li $t0, 3272
	sw $t0, -6412($fp)
	lw $t1, -6408($fp)
	lw $t2, -6412($fp)
	bne $t1, $t2, label995
	j label996
label995:
	li $t0, 1
	sw $t0, -6396($fp)
label996:
	addi $sp, $sp, -4
	lw $t0, -6344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6396($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6416($fp)
	addi $sp, $sp, 20
	li $t0, 23890
	sw $t0, -6420($fp)
	lw $t0, -6416($fp)
	lw $t1, -6420($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6424($fp)
	li $t0, 0
	sw $t0, -6428($fp)
	li $t0, 0
	sw $t0, -6432($fp)
	lw $t0, -3856($fp)
	sw $t0, -6436($fp)
	lw $t1, -6436($fp)
	li $t2, 0
	bne $t1, $t2, label1002
	j label1000
label1002:
	lw $t0, -864($fp)
	sw $t0, -6440($fp)
	lw $t1, -6440($fp)
	li $t2, 0
	bne $t1, $t2, label1000
	j label1001
label1000:
	li $t0, 1
	sw $t0, -6432($fp)
label1001:
	li $t0, 0
	sw $t0, -6444($fp)
	addi $t0, $fp, -3044
	sw $t0, -6448($fp)
	lw $t0, -3508($fp)
	sw $t0, -6452($fp)
	li $t0, 4
	lw $t1, -6452($fp)
	mul $t0, $t0, $t1
	sw $t0, -6456($fp)
	lw $t0, -6456($fp)
	lw $t1, -6448($fp)
	add $t0, $t0, $t1
	sw $t0, -6460($fp)
	lw $t0, -6460($fp)
	lw $t1, 0($t0)
	sw $t1, -6464($fp)
	lw $t1, -6464($fp)
	li $t2, 0
	bne $t1, $t2, label1004
	j label1003
label1003:
	li $t0, 1
	sw $t0, -6444($fp)
label1004:
	addi $sp, $sp, -4
	lw $t0, -6432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6444($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6468($fp)
	addi $sp, $sp, 12
	lw $t1, -6468($fp)
	li $t2, 0
	bne $t1, $t2, label999
	j label998
label999:
	lw $t0, -3880($fp)
	sw $t0, -6472($fp)
	lw $t1, -6472($fp)
	li $t2, 0
	bne $t1, $t2, label997
	j label998
label997:
	li $t0, 1
	sw $t0, -6428($fp)
label998:
	addi $sp, $sp, -4
	lw $t0, -6312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6428($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6476($fp)
	addi $sp, $sp, 20
	lw $t0, -3520($fp)
	sw $t0, -6480($fp)
	lw $t0, -6476($fp)
	lw $t1, -6480($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6484($fp)
	lw $t0, -1212($fp)
	sw $t0, -6488($fp)
	lw $t0, -6484($fp)
	lw $t1, -6488($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6492($fp)
	lw $t1, -6128($fp)
	lw $t2, -6492($fp)
	ble $t1, $t2, label970
	j label971
label970:
	li $t0, 0
	sw $t0, -6496($fp)
	li $t0, 0
	sw $t0, -6500($fp)
	li $t0, 29120
	sw $t0, -6504($fp)
	li $t0, 37749
	sw $t0, -6508($fp)
	lw $t1, -6504($fp)
	lw $t2, -6508($fp)
	bgt $t1, $t2, label1007
	j label1008
label1007:
	li $t0, 1
	sw $t0, -6500($fp)
label1008:
	li $t0, 38813
	sw $t0, -6512($fp)
	lw $t1, -6500($fp)
	lw $t2, -6512($fp)
	bgt $t1, $t2, label1005
	j label1006
label1005:
	li $t0, 1
	sw $t0, -6496($fp)
label1006:
	lw $t0, -588($fp)
	sw $t0, -6516($fp)
	li $t0, 43244
	sw $t0, -6520($fp)
	lw $t0, -6516($fp)
	lw $t1, -6520($fp)
	mul $t0, $t0, $t1
	sw $t0, -6524($fp)
	lw $t0, -708($fp)
	sw $t0, -6528($fp)
	lw $t0, -6524($fp)
	lw $t1, -6528($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6532($fp)
	li $t0, 64134
	sw $t0, -6536($fp)
	lw $t0, -6536($fp)
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	sw $t0, -6540($fp)
	addi $sp, $sp, -4
	lw $t0, -6532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6540($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6544($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -6496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6544($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6548($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -84
	sw $t0, -6552($fp)
	li $t0, 0
	sw $t0, -6556($fp)
	li $t0, 4
	lw $t1, -6556($fp)
	mul $t0, $t0, $t1
	sw $t0, -6560($fp)
	lw $t0, -6560($fp)
	lw $t1, -6552($fp)
	add $t0, $t0, $t1
	sw $t0, -6564($fp)
	lw $t0, -6564($fp)
	lw $t1, 0($t0)
	sw $t1, -6568($fp)
	lw $t0, -6548($fp)
	lw $t1, -6568($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6572($fp)
	li $t0, 0
	sw $t0, -6576($fp)
	li $t0, 23702
	sw $t0, -6580($fp)
	lw $t1, -6580($fp)
	li $t2, 0
	bne $t1, $t2, label1010
	j label1009
label1009:
	li $t0, 1
	sw $t0, -6576($fp)
label1010:
	lw $t0, -780($fp)
	sw $t0, -6584($fp)
	lw $t0, -6576($fp)
	lw $t1, -6584($fp)
	mul $t0, $t0, $t1
	sw $t0, -6588($fp)
	lw $t0, -3544($fp)
	sw $t0, -6592($fp)
	lw $t0, -6592($fp)
	sw $t0, -3532($fp)
	lw $t0, -3532($fp)
	sw $t0, -6596($fp)
	li $t0, 0
	sw $t0, -6600($fp)
	li $t0, 0
	sw $t0, -6604($fp)
	li $t0, 13192
	sw $t0, -6608($fp)
	li $t0, 21197
	sw $t0, -6612($fp)
	lw $t1, -6608($fp)
	lw $t2, -6612($fp)
	bgt $t1, $t2, label1013
	j label1014
label1013:
	li $t0, 1
	sw $t0, -6604($fp)
label1014:
	li $t0, 59405
	sw $t0, -6616($fp)
	lw $t1, -6604($fp)
	lw $t2, -6616($fp)
	bge $t1, $t2, label1011
	j label1012
label1011:
	li $t0, 1
	sw $t0, -6600($fp)
label1012:
	li $t0, 45478
	sw $t0, -6620($fp)
	lw $t0, -792($fp)
	sw $t0, -6624($fp)
	lw $t0, -6620($fp)
	lw $t1, -6624($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6628($fp)
	lw $t0, -1176($fp)
	sw $t0, -6632($fp)
	lw $t0, -6628($fp)
	lw $t1, -6632($fp)
	sub $t0, $t0, $t1
	sw $t0, -6636($fp)
	addi $sp, $sp, -4
	lw $t0, -6588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6636($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6640($fp)
	addi $sp, $sp, 20
	lw $t0, -6572($fp)
	lw $t1, -6640($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6644($fp)
	li $t0, 0
	lw $t1, -6644($fp)
	sub $t0, $t0, $t1
	sw $t0, -6648($fp)
	j label972
label971:
	li $t0, 17991
	sw $t0, -6652($fp)
label972:
	j label966
label968:
	addi $t0, $fp, -2948
	sw $t0, -6656($fp)
	li $t0, 0
	sw $t0, -6660($fp)
	li $t0, 4
	lw $t1, -6660($fp)
	mul $t0, $t0, $t1
	sw $t0, -6664($fp)
	lw $t0, -6664($fp)
	lw $t1, -6656($fp)
	add $t0, $t0, $t1
	sw $t0, -6668($fp)
	lw $t0, -6668($fp)
	lw $t1, 0($t0)
	sw $t1, -6672($fp)
	lw $t0, -6672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2948
	sw $t0, -6676($fp)
	li $t0, 1
	sw $t0, -6680($fp)
	li $t0, 4
	lw $t1, -6680($fp)
	mul $t0, $t0, $t1
	sw $t0, -6684($fp)
	lw $t0, -6684($fp)
	lw $t1, -6676($fp)
	add $t0, $t0, $t1
	sw $t0, -6688($fp)
	lw $t0, -6688($fp)
	lw $t1, 0($t0)
	sw $t1, -6692($fp)
	lw $t0, -6692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2948
	sw $t0, -6696($fp)
	li $t0, 2
	sw $t0, -6700($fp)
	li $t0, 4
	lw $t1, -6700($fp)
	mul $t0, $t0, $t1
	sw $t0, -6704($fp)
	lw $t0, -6704($fp)
	lw $t1, -6696($fp)
	add $t0, $t0, $t1
	sw $t0, -6708($fp)
	lw $t0, -6708($fp)
	lw $t1, 0($t0)
	sw $t1, -6712($fp)
	lw $t0, -6712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2948
	sw $t0, -6716($fp)
	li $t0, 3
	sw $t0, -6720($fp)
	li $t0, 4
	lw $t1, -6720($fp)
	mul $t0, $t0, $t1
	sw $t0, -6724($fp)
	lw $t0, -6724($fp)
	lw $t1, -6716($fp)
	add $t0, $t0, $t1
	sw $t0, -6728($fp)
	lw $t0, -6728($fp)
	lw $t1, 0($t0)
	sw $t1, -6732($fp)
	lw $t0, -6732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2948
	sw $t0, -6736($fp)
	li $t0, 4
	sw $t0, -6740($fp)
	li $t0, 4
	lw $t1, -6740($fp)
	mul $t0, $t0, $t1
	sw $t0, -6744($fp)
	lw $t0, -6744($fp)
	lw $t1, -6736($fp)
	add $t0, $t0, $t1
	sw $t0, -6748($fp)
	lw $t0, -6748($fp)
	lw $t1, 0($t0)
	sw $t1, -6752($fp)
	lw $t0, -6752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2948
	sw $t0, -6756($fp)
	li $t0, 5
	sw $t0, -6760($fp)
	li $t0, 4
	lw $t1, -6760($fp)
	mul $t0, $t0, $t1
	sw $t0, -6764($fp)
	lw $t0, -6764($fp)
	lw $t1, -6756($fp)
	add $t0, $t0, $t1
	sw $t0, -6768($fp)
	lw $t0, -6768($fp)
	lw $t1, 0($t0)
	sw $t1, -6772($fp)
	lw $t0, -6772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2948
	sw $t0, -6776($fp)
	li $t0, 6
	sw $t0, -6780($fp)
	li $t0, 4
	lw $t1, -6780($fp)
	mul $t0, $t0, $t1
	sw $t0, -6784($fp)
	lw $t0, -6784($fp)
	lw $t1, -6776($fp)
	add $t0, $t0, $t1
	sw $t0, -6788($fp)
	lw $t0, -6788($fp)
	lw $t1, 0($t0)
	sw $t1, -6792($fp)
	lw $t0, -6792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2948
	sw $t0, -6796($fp)
	li $t0, 7
	sw $t0, -6800($fp)
	li $t0, 4
	lw $t1, -6800($fp)
	mul $t0, $t0, $t1
	sw $t0, -6804($fp)
	lw $t0, -6804($fp)
	lw $t1, -6796($fp)
	add $t0, $t0, $t1
	sw $t0, -6808($fp)
	lw $t0, -6808($fp)
	lw $t1, 0($t0)
	sw $t1, -6812($fp)
	lw $t0, -6812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2948
	sw $t0, -6816($fp)
	li $t0, 8
	sw $t0, -6820($fp)
	li $t0, 4
	lw $t1, -6820($fp)
	mul $t0, $t0, $t1
	sw $t0, -6824($fp)
	lw $t0, -6824($fp)
	lw $t1, -6816($fp)
	add $t0, $t0, $t1
	sw $t0, -6828($fp)
	lw $t0, -6828($fp)
	lw $t1, 0($t0)
	sw $t1, -6832($fp)
	lw $t0, -6832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2948
	sw $t0, -6836($fp)
	li $t0, 9
	sw $t0, -6840($fp)
	li $t0, 4
	lw $t1, -6840($fp)
	mul $t0, $t0, $t1
	sw $t0, -6844($fp)
	lw $t0, -6844($fp)
	lw $t1, -6836($fp)
	add $t0, $t0, $t1
	sw $t0, -6848($fp)
	lw $t0, -6848($fp)
	lw $t1, 0($t0)
	sw $t1, -6852($fp)
	lw $t0, -6852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2980
	sw $t0, -6856($fp)
	li $t0, 0
	sw $t0, -6860($fp)
	li $t0, 4
	lw $t1, -6860($fp)
	mul $t0, $t0, $t1
	sw $t0, -6864($fp)
	lw $t0, -6864($fp)
	lw $t1, -6856($fp)
	add $t0, $t0, $t1
	sw $t0, -6868($fp)
	lw $t0, -6868($fp)
	lw $t1, 0($t0)
	sw $t1, -6872($fp)
	lw $t0, -6872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2980
	sw $t0, -6876($fp)
	li $t0, 1
	sw $t0, -6880($fp)
	li $t0, 4
	lw $t1, -6880($fp)
	mul $t0, $t0, $t1
	sw $t0, -6884($fp)
	lw $t0, -6884($fp)
	lw $t1, -6876($fp)
	add $t0, $t0, $t1
	sw $t0, -6888($fp)
	lw $t0, -6888($fp)
	lw $t1, 0($t0)
	sw $t1, -6892($fp)
	lw $t0, -6892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2980
	sw $t0, -6896($fp)
	li $t0, 2
	sw $t0, -6900($fp)
	li $t0, 4
	lw $t1, -6900($fp)
	mul $t0, $t0, $t1
	sw $t0, -6904($fp)
	lw $t0, -6904($fp)
	lw $t1, -6896($fp)
	add $t0, $t0, $t1
	sw $t0, -6908($fp)
	lw $t0, -6908($fp)
	lw $t1, 0($t0)
	sw $t1, -6912($fp)
	lw $t0, -6912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2980
	sw $t0, -6916($fp)
	li $t0, 3
	sw $t0, -6920($fp)
	li $t0, 4
	lw $t1, -6920($fp)
	mul $t0, $t0, $t1
	sw $t0, -6924($fp)
	lw $t0, -6924($fp)
	lw $t1, -6916($fp)
	add $t0, $t0, $t1
	sw $t0, -6928($fp)
	lw $t0, -6928($fp)
	lw $t1, 0($t0)
	sw $t1, -6932($fp)
	lw $t0, -6932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2980
	sw $t0, -6936($fp)
	li $t0, 4
	sw $t0, -6940($fp)
	li $t0, 4
	lw $t1, -6940($fp)
	mul $t0, $t0, $t1
	sw $t0, -6944($fp)
	lw $t0, -6944($fp)
	lw $t1, -6936($fp)
	add $t0, $t0, $t1
	sw $t0, -6948($fp)
	lw $t0, -6948($fp)
	lw $t1, 0($t0)
	sw $t1, -6952($fp)
	lw $t0, -6952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2980
	sw $t0, -6956($fp)
	li $t0, 5
	sw $t0, -6960($fp)
	li $t0, 4
	lw $t1, -6960($fp)
	mul $t0, $t0, $t1
	sw $t0, -6964($fp)
	lw $t0, -6964($fp)
	lw $t1, -6956($fp)
	add $t0, $t0, $t1
	sw $t0, -6968($fp)
	lw $t0, -6968($fp)
	lw $t1, 0($t0)
	sw $t1, -6972($fp)
	lw $t0, -6972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2980
	sw $t0, -6976($fp)
	li $t0, 6
	sw $t0, -6980($fp)
	li $t0, 4
	lw $t1, -6980($fp)
	mul $t0, $t0, $t1
	sw $t0, -6984($fp)
	lw $t0, -6984($fp)
	lw $t1, -6976($fp)
	add $t0, $t0, $t1
	sw $t0, -6988($fp)
	lw $t0, -6988($fp)
	lw $t1, 0($t0)
	sw $t1, -6992($fp)
	lw $t0, -6992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2980
	sw $t0, -6996($fp)
	li $t0, 7
	sw $t0, -7000($fp)
	li $t0, 4
	lw $t1, -7000($fp)
	mul $t0, $t0, $t1
	sw $t0, -7004($fp)
	lw $t0, -7004($fp)
	lw $t1, -6996($fp)
	add $t0, $t0, $t1
	sw $t0, -7008($fp)
	lw $t0, -7008($fp)
	lw $t1, 0($t0)
	sw $t1, -7012($fp)
	lw $t0, -7012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3508($fp)
	sw $t0, -7016($fp)
	lw $t0, -7016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3520($fp)
	sw $t0, -7020($fp)
	lw $t0, -7020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3532($fp)
	sw $t0, -7024($fp)
	lw $t0, -7024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3544($fp)
	sw $t0, -7028($fp)
	lw $t0, -7028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3556($fp)
	sw $t0, -7032($fp)
	lw $t0, -7032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3568($fp)
	sw $t0, -7036($fp)
	lw $t0, -7036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3020
	sw $t0, -7040($fp)
	li $t0, 0
	sw $t0, -7044($fp)
	li $t0, 4
	lw $t1, -7044($fp)
	mul $t0, $t0, $t1
	sw $t0, -7048($fp)
	lw $t0, -7048($fp)
	lw $t1, -7040($fp)
	add $t0, $t0, $t1
	sw $t0, -7052($fp)
	lw $t0, -7052($fp)
	lw $t1, 0($t0)
	sw $t1, -7056($fp)
	lw $t0, -7056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3020
	sw $t0, -7060($fp)
	li $t0, 1
	sw $t0, -7064($fp)
	li $t0, 4
	lw $t1, -7064($fp)
	mul $t0, $t0, $t1
	sw $t0, -7068($fp)
	lw $t0, -7068($fp)
	lw $t1, -7060($fp)
	add $t0, $t0, $t1
	sw $t0, -7072($fp)
	lw $t0, -7072($fp)
	lw $t1, 0($t0)
	sw $t1, -7076($fp)
	lw $t0, -7076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3020
	sw $t0, -7080($fp)
	li $t0, 2
	sw $t0, -7084($fp)
	li $t0, 4
	lw $t1, -7084($fp)
	mul $t0, $t0, $t1
	sw $t0, -7088($fp)
	lw $t0, -7088($fp)
	lw $t1, -7080($fp)
	add $t0, $t0, $t1
	sw $t0, -7092($fp)
	lw $t0, -7092($fp)
	lw $t1, 0($t0)
	sw $t1, -7096($fp)
	lw $t0, -7096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3020
	sw $t0, -7100($fp)
	li $t0, 3
	sw $t0, -7104($fp)
	li $t0, 4
	lw $t1, -7104($fp)
	mul $t0, $t0, $t1
	sw $t0, -7108($fp)
	lw $t0, -7108($fp)
	lw $t1, -7100($fp)
	add $t0, $t0, $t1
	sw $t0, -7112($fp)
	lw $t0, -7112($fp)
	lw $t1, 0($t0)
	sw $t1, -7116($fp)
	lw $t0, -7116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3020
	sw $t0, -7120($fp)
	li $t0, 4
	sw $t0, -7124($fp)
	li $t0, 4
	lw $t1, -7124($fp)
	mul $t0, $t0, $t1
	sw $t0, -7128($fp)
	lw $t0, -7128($fp)
	lw $t1, -7120($fp)
	add $t0, $t0, $t1
	sw $t0, -7132($fp)
	lw $t0, -7132($fp)
	lw $t1, 0($t0)
	sw $t1, -7136($fp)
	lw $t0, -7136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3020
	sw $t0, -7140($fp)
	li $t0, 5
	sw $t0, -7144($fp)
	li $t0, 4
	lw $t1, -7144($fp)
	mul $t0, $t0, $t1
	sw $t0, -7148($fp)
	lw $t0, -7148($fp)
	lw $t1, -7140($fp)
	add $t0, $t0, $t1
	sw $t0, -7152($fp)
	lw $t0, -7152($fp)
	lw $t1, 0($t0)
	sw $t1, -7156($fp)
	lw $t0, -7156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3020
	sw $t0, -7160($fp)
	li $t0, 6
	sw $t0, -7164($fp)
	li $t0, 4
	lw $t1, -7164($fp)
	mul $t0, $t0, $t1
	sw $t0, -7168($fp)
	lw $t0, -7168($fp)
	lw $t1, -7160($fp)
	add $t0, $t0, $t1
	sw $t0, -7172($fp)
	lw $t0, -7172($fp)
	lw $t1, 0($t0)
	sw $t1, -7176($fp)
	lw $t0, -7176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3020
	sw $t0, -7180($fp)
	li $t0, 7
	sw $t0, -7184($fp)
	li $t0, 4
	lw $t1, -7184($fp)
	mul $t0, $t0, $t1
	sw $t0, -7188($fp)
	lw $t0, -7188($fp)
	lw $t1, -7180($fp)
	add $t0, $t0, $t1
	sw $t0, -7192($fp)
	lw $t0, -7192($fp)
	lw $t1, 0($t0)
	sw $t1, -7196($fp)
	lw $t0, -7196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3020
	sw $t0, -7200($fp)
	li $t0, 8
	sw $t0, -7204($fp)
	li $t0, 4
	lw $t1, -7204($fp)
	mul $t0, $t0, $t1
	sw $t0, -7208($fp)
	lw $t0, -7208($fp)
	lw $t1, -7200($fp)
	add $t0, $t0, $t1
	sw $t0, -7212($fp)
	lw $t0, -7212($fp)
	lw $t1, 0($t0)
	sw $t1, -7216($fp)
	lw $t0, -7216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3020
	sw $t0, -7220($fp)
	li $t0, 9
	sw $t0, -7224($fp)
	li $t0, 4
	lw $t1, -7224($fp)
	mul $t0, $t0, $t1
	sw $t0, -7228($fp)
	lw $t0, -7228($fp)
	lw $t1, -7220($fp)
	add $t0, $t0, $t1
	sw $t0, -7232($fp)
	lw $t0, -7232($fp)
	lw $t1, 0($t0)
	sw $t1, -7236($fp)
	lw $t0, -7236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3820($fp)
	sw $t0, -7240($fp)
	lw $t0, -7240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3832($fp)
	sw $t0, -7244($fp)
	lw $t0, -7244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3844($fp)
	sw $t0, -7248($fp)
	lw $t0, -7248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3856($fp)
	sw $t0, -7252($fp)
	lw $t0, -7252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3868($fp)
	sw $t0, -7256($fp)
	lw $t0, -7256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3880($fp)
	sw $t0, -7260($fp)
	lw $t0, -7260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3044
	sw $t0, -7264($fp)
	li $t0, 0
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
	addi $t0, $fp, -3044
	sw $t0, -7284($fp)
	li $t0, 1
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
	addi $t0, $fp, -3044
	sw $t0, -7304($fp)
	li $t0, 2
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
	addi $t0, $fp, -3044
	sw $t0, -7324($fp)
	li $t0, 3
	sw $t0, -7328($fp)
	li $t0, 4
	lw $t1, -7328($fp)
	mul $t0, $t0, $t1
	sw $t0, -7332($fp)
	lw $t0, -7332($fp)
	lw $t1, -7324($fp)
	add $t0, $t0, $t1
	sw $t0, -7336($fp)
	lw $t0, -7336($fp)
	lw $t1, 0($t0)
	sw $t1, -7340($fp)
	lw $t0, -7340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3044
	sw $t0, -7344($fp)
	li $t0, 4
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
	addi $t0, $fp, -3044
	sw $t0, -7364($fp)
	li $t0, 5
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
	lw $t0, -4036($fp)
	sw $t0, -7384($fp)
	lw $t0, -7384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4048($fp)
	sw $t0, -7388($fp)
	lw $t0, -7388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3068
	sw $t0, -7392($fp)
	li $t0, 0
	sw $t0, -7396($fp)
	li $t0, 4
	lw $t1, -7396($fp)
	mul $t0, $t0, $t1
	sw $t0, -7400($fp)
	lw $t0, -7400($fp)
	lw $t1, -7392($fp)
	add $t0, $t0, $t1
	sw $t0, -7404($fp)
	lw $t0, -7404($fp)
	lw $t1, 0($t0)
	sw $t1, -7408($fp)
	lw $t0, -7408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3068
	sw $t0, -7412($fp)
	li $t0, 1
	sw $t0, -7416($fp)
	li $t0, 4
	lw $t1, -7416($fp)
	mul $t0, $t0, $t1
	sw $t0, -7420($fp)
	lw $t0, -7420($fp)
	lw $t1, -7412($fp)
	add $t0, $t0, $t1
	sw $t0, -7424($fp)
	lw $t0, -7424($fp)
	lw $t1, 0($t0)
	sw $t1, -7428($fp)
	lw $t0, -7428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3068
	sw $t0, -7432($fp)
	li $t0, 2
	sw $t0, -7436($fp)
	li $t0, 4
	lw $t1, -7436($fp)
	mul $t0, $t0, $t1
	sw $t0, -7440($fp)
	lw $t0, -7440($fp)
	lw $t1, -7432($fp)
	add $t0, $t0, $t1
	sw $t0, -7444($fp)
	lw $t0, -7444($fp)
	lw $t1, 0($t0)
	sw $t1, -7448($fp)
	lw $t0, -7448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3068
	sw $t0, -7452($fp)
	li $t0, 3
	sw $t0, -7456($fp)
	li $t0, 4
	lw $t1, -7456($fp)
	mul $t0, $t0, $t1
	sw $t0, -7460($fp)
	lw $t0, -7460($fp)
	lw $t1, -7452($fp)
	add $t0, $t0, $t1
	sw $t0, -7464($fp)
	lw $t0, -7464($fp)
	lw $t1, 0($t0)
	sw $t1, -7468($fp)
	lw $t0, -7468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3068
	sw $t0, -7472($fp)
	li $t0, 4
	sw $t0, -7476($fp)
	li $t0, 4
	lw $t1, -7476($fp)
	mul $t0, $t0, $t1
	sw $t0, -7480($fp)
	lw $t0, -7480($fp)
	lw $t1, -7472($fp)
	add $t0, $t0, $t1
	sw $t0, -7484($fp)
	lw $t0, -7484($fp)
	lw $t1, 0($t0)
	sw $t1, -7488($fp)
	lw $t0, -7488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3068
	sw $t0, -7492($fp)
	li $t0, 5
	sw $t0, -7496($fp)
	li $t0, 4
	lw $t1, -7496($fp)
	mul $t0, $t0, $t1
	sw $t0, -7500($fp)
	lw $t0, -7500($fp)
	lw $t1, -7492($fp)
	add $t0, $t0, $t1
	sw $t0, -7504($fp)
	lw $t0, -7504($fp)
	lw $t1, 0($t0)
	sw $t1, -7508($fp)
	lw $t0, -7508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4204($fp)
	sw $t0, -7512($fp)
	lw $t0, -7512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4216($fp)
	sw $t0, -7516($fp)
	lw $t0, -7516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -7520($fp)
	li $t0, 0
	sw $t0, -7524($fp)
	lw $t0, -3556($fp)
	sw $t0, -7528($fp)
	li $t0, 0
	lw $t1, -7528($fp)
	sub $t0, $t0, $t1
	sw $t0, -7532($fp)
	lw $t1, -7532($fp)
	li $t2, 0
	bne $t1, $t2, label1016
	j label1015
label1015:
	li $t0, 1
	sw $t0, -7524($fp)
label1016:
	li $t0, 4
	lw $t1, -7524($fp)
	mul $t0, $t0, $t1
	sw $t0, -7536($fp)
	lw $t0, -7536($fp)
	lw $t1, -7520($fp)
	add $t0, $t0, $t1
	sw $t0, -7540($fp)
	lw $t0, -7540($fp)
	lw $t1, 0($t0)
	sw $t1, -7544($fp)
	addi $t0, $fp, -36
	sw $t0, -7548($fp)
	lw $t0, -576($fp)
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
	li $t0, 0
	lw $t1, -7564($fp)
	sub $t0, $t0, $t1
	sw $t0, -7568($fp)
	lw $t0, -7544($fp)
	lw $t1, -7568($fp)
	sub $t0, $t0, $t1
	sw $t0, -7572($fp)
	lw $ra, -4($fp)
	lw $v0, -7572($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -576($fp)
	sw $t0, -7576($fp)
	lw $t1, -7576($fp)
	li $t2, 0
	bne $t1, $t2, label1017
	j label1018
label1017:
	li $t0, 0
	sw $t0, -7580($fp)
	li $t0, 0
	sw $t0, -7584($fp)
	addi $t0, $fp, -2948
	sw $t0, -7588($fp)
	li $t0, 47537
	sw $t0, -7592($fp)
	lw $t0, -864($fp)
	sw $t0, -7596($fp)
	lw $t0, -7592($fp)
	lw $t1, -7596($fp)
	add $t0, $t0, $t1
	sw $t0, -7600($fp)
	li $t0, 4
	lw $t1, -7600($fp)
	mul $t0, $t0, $t1
	sw $t0, -7604($fp)
	lw $t0, -7604($fp)
	lw $t1, -7588($fp)
	add $t0, $t0, $t1
	sw $t0, -7608($fp)
	lw $t0, -7608($fp)
	lw $t1, 0($t0)
	sw $t1, -7612($fp)
	li $t0, 0
	sw $t0, -7616($fp)
	li $t0, 0
	sw $t0, -7620($fp)
	lw $t0, -3568($fp)
	sw $t0, -7624($fp)
	lw $t0, -792($fp)
	sw $t0, -7628($fp)
	lw $t0, -7624($fp)
	lw $t1, -7628($fp)
	add $t0, $t0, $t1
	sw $t0, -7632($fp)
	li $t0, 25993
	sw $t0, -7636($fp)
	lw $t1, -7632($fp)
	lw $t2, -7636($fp)
	bge $t1, $t2, label1027
	j label1028
label1027:
	li $t0, 1
	sw $t0, -7620($fp)
label1028:
	li $t0, 0
	sw $t0, -7640($fp)
	li $t0, 38740
	sw $t0, -7644($fp)
	lw $t1, -7644($fp)
	li $t2, 0
	bne $t1, $t2, label1029
	j label1032
label1032:
	li $t0, 61688
	sw $t0, -7648($fp)
	lw $t1, -7648($fp)
	li $t2, 0
	bne $t1, $t2, label1029
	j label1031
label1031:
	li $t0, 64118
	sw $t0, -7652($fp)
	lw $t1, -7652($fp)
	li $t2, 0
	bne $t1, $t2, label1029
	j label1030
label1029:
	li $t0, 1
	sw $t0, -7640($fp)
label1030:
	addi $sp, $sp, -4
	lw $t0, -7620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7640($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7656($fp)
	addi $sp, $sp, 12
	lw $t1, -7656($fp)
	li $t2, 0
	bne $t1, $t2, label1024
	j label1026
label1026:
	li $t0, 46714
	sw $t0, -7660($fp)
	lw $t1, -7660($fp)
	li $t2, 0
	bne $t1, $t2, label1024
	j label1025
label1024:
	li $t0, 1
	sw $t0, -7616($fp)
label1025:
	li $t0, 0
	sw $t0, -7664($fp)
	lw $t0, -876($fp)
	sw $t0, -7668($fp)
	lw $t0, -876($fp)
	sw $t0, -7672($fp)
	lw $t1, -7668($fp)
	lw $t2, -7672($fp)
	bne $t1, $t2, label1035
	j label1034
label1035:
	li $t0, 37709
	sw $t0, -7676($fp)
	lw $t1, -7676($fp)
	li $t2, 0
	bne $t1, $t2, label1033
	j label1034
label1033:
	li $t0, 1
	sw $t0, -7664($fp)
label1034:
	addi $sp, $sp, -4
	lw $t0, -7616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7664($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7680($fp)
	addi $sp, $sp, 12
	lw $t1, -7612($fp)
	lw $t2, -7680($fp)
	beq $t1, $t2, label1022
	j label1023
label1022:
	li $t0, 1
	sw $t0, -7584($fp)
label1023:
	li $t0, 41926
	sw $t0, -7684($fp)
	li $t0, 218
	sw $t0, -7688($fp)
	lw $t0, -7684($fp)
	lw $t1, -7688($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7692($fp)
	li $t0, 55359
	sw $t0, -7696($fp)
	lw $t0, -7692($fp)
	lw $t1, -7696($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7700($fp)
	lw $t1, -7584($fp)
	lw $t2, -7700($fp)
	bne $t1, $t2, label1020
	j label1021
label1020:
	li $t0, 1
	sw $t0, -7580($fp)
label1021:
	j label1019
label1018:
label1036:
	addi $t0, $fp, -2980
	sw $t0, -7704($fp)
	li $t0, 2
	sw $t0, -7708($fp)
	li $t0, 4
	lw $t1, -7708($fp)
	mul $t0, $t0, $t1
	sw $t0, -7712($fp)
	lw $t0, -7712($fp)
	lw $t1, -7704($fp)
	add $t0, $t0, $t1
	sw $t0, -7716($fp)
	lw $t0, -7716($fp)
	lw $t1, 0($t0)
	sw $t1, -7720($fp)
	lw $t1, -7720($fp)
	li $t2, 0
	bne $t1, $t2, label1037
	j label1039
label1039:
	li $t0, 0
	sw $t0, -7724($fp)
	li $t0, 13712
	sw $t0, -7728($fp)
	li $t0, 0
	lw $t1, -7728($fp)
	sub $t0, $t0, $t1
	sw $t0, -7732($fp)
	lw $t1, -7732($fp)
	li $t2, 0
	bne $t1, $t2, label1041
	j label1040
label1040:
	li $t0, 1
	sw $t0, -7724($fp)
label1041:
	lw $t0, -876($fp)
	sw $t0, -7736($fp)
	lw $t0, -7724($fp)
	lw $t1, -7736($fp)
	add $t0, $t0, $t1
	sw $t0, -7740($fp)
	lw $t1, -7740($fp)
	li $t2, 0
	bne $t1, $t2, label1037
	j label1038
label1037:
label1042:
	li $t0, 59096
	sw $t0, -7744($fp)
	lw $t1, -7744($fp)
	li $t2, 0
	bne $t1, $t2, label1043
	j label1044
label1043:
	li $t0, 1512
	sw $t0, -7748($fp)
	j label1042
label1044:
	j label1036
label1038:
label1019:
	li $t0, 0
	sw $t0, -7752($fp)
	li $t0, 0
	sw $t0, -7756($fp)
	lw $t0, -4036($fp)
	sw $t0, -7760($fp)
	lw $t1, -7760($fp)
	li $t2, 0
	bne $t1, $t2, label1052
	j label1051
label1051:
	li $t0, 1
	sw $t0, -7756($fp)
label1052:
	li $t0, 38015
	sw $t0, -7764($fp)
	lw $t0, -7756($fp)
	lw $t1, -7764($fp)
	add $t0, $t0, $t1
	sw $t0, -7768($fp)
	lw $t1, -7768($fp)
	li $t2, 0
	bne $t1, $t2, label1050
	j label1049
label1050:
	addi $t0, $fp, -3020
	sw $t0, -7772($fp)
	lw $t0, -1212($fp)
	sw $t0, -7776($fp)
	li $t0, 4
	lw $t1, -7776($fp)
	mul $t0, $t0, $t1
	sw $t0, -7780($fp)
	lw $t0, -7780($fp)
	lw $t1, -7772($fp)
	add $t0, $t0, $t1
	sw $t0, -7784($fp)
	lw $t0, -7784($fp)
	lw $t1, 0($t0)
	sw $t1, -7788($fp)
	lw $t1, -7788($fp)
	li $t2, 0
	bne $t1, $t2, label1048
	j label1049
label1048:
	li $t0, 1
	sw $t0, -7752($fp)
label1049:
	lw $t0, -7752($fp)
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -7792($fp)
	lw $t1, -7792($fp)
	li $t2, 0
	bne $t1, $t2, label1045
	j label1046
label1045:
	lw $t0, -828($fp)
	sw $t0, -7796($fp)
	lw $t0, -4216($fp)
	sw $t0, -7800($fp)
	lw $t0, -7800($fp)
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -7804($fp)
	addi $sp, $sp, -4
	lw $t0, -7796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7804($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7808($fp)
	addi $sp, $sp, 12
	lw $t0, -7808($fp)
	sw $t0, -3820($fp)
	lw $t0, -3820($fp)
	sw $t0, -7812($fp)
	lw $ra, -4($fp)
	lw $v0, -7812($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1047
label1046:
	li $t0, 110
	sw $t0, -7816($fp)
	li $t0, 15723
	sw $t0, -7820($fp)
	lw $t0, -7816($fp)
	lw $t1, -7820($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7824($fp)
	lw $t0, -852($fp)
	sw $t0, -7828($fp)
	lw $t0, -7824($fp)
	lw $t1, -7828($fp)
	mul $t0, $t0, $t1
	sw $t0, -7832($fp)
	li $t0, 0
	sw $t0, -7836($fp)
	li $t0, 6731
	sw $t0, -7840($fp)
	lw $t1, -7840($fp)
	li $t2, 0
	bne $t1, $t2, label1053
	j label1056
label1056:
	lw $t0, -3844($fp)
	sw $t0, -7844($fp)
	lw $t1, -7844($fp)
	li $t2, 0
	bne $t1, $t2, label1053
	j label1055
label1055:
	lw $t0, -840($fp)
	sw $t0, -7848($fp)
	lw $t1, -7848($fp)
	li $t2, 0
	bne $t1, $t2, label1053
	j label1054
label1053:
	li $t0, 1
	sw $t0, -7836($fp)
label1054:
	addi $sp, $sp, -4
	lw $t0, -7832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7836($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7852($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -7852($fp)
	sub $t0, $t0, $t1
	sw $t0, -7856($fp)
	li $t0, 0
	sw $t0, -7860($fp)
	li $t0, 0
	sw $t0, -7864($fp)
	lw $t0, -4036($fp)
	sw $t0, -7868($fp)
	lw $t0, -864($fp)
	sw $t0, -7872($fp)
	lw $t1, -7868($fp)
	lw $t2, -7872($fp)
	bge $t1, $t2, label1059
	j label1060
label1059:
	li $t0, 1
	sw $t0, -7864($fp)
label1060:
	lw $t0, -4216($fp)
	sw $t0, -7876($fp)
	lw $t1, -7864($fp)
	lw $t2, -7876($fp)
	ble $t1, $t2, label1057
	j label1058
label1057:
	li $t0, 1
	sw $t0, -7860($fp)
label1058:
	addi $sp, $sp, -4
	lw $t0, -7856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7860($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7880($fp)
	addi $sp, $sp, 12
	lw $t0, -7880($fp)
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	sw $t0, -7884($fp)
	lw $t0, -7884($fp)
	sw $t0, -3832($fp)
	lw $t0, -3832($fp)
	sw $t0, -7888($fp)
label1047:
	lw $t0, -576($fp)
	sw $t0, -7892($fp)
	li $t0, 35852
	sw $t0, -7896($fp)
	lw $t0, -7892($fp)
	lw $t1, -7896($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7900($fp)
	lw $t0, -576($fp)
	sw $t0, -7904($fp)
	lw $t0, -7900($fp)
	lw $t1, -7904($fp)
	add $t0, $t0, $t1
	sw $t0, -7908($fp)
	addi $t0, $fp, -80
	sw $t0, -7912($fp)
	lw $t0, -348($fp)
	sw $t0, -7916($fp)
	li $t0, 4
	lw $t1, -7916($fp)
	mul $t0, $t0, $t1
	sw $t0, -7920($fp)
	lw $t0, -7920($fp)
	lw $t1, -7912($fp)
	add $t0, $t0, $t1
	sw $t0, -7924($fp)
	lw $t0, -7924($fp)
	lw $t1, 0($t0)
	sw $t1, -7928($fp)
	lw $t0, -7908($fp)
	lw $t1, -7928($fp)
	sub $t0, $t0, $t1
	sw $t0, -7932($fp)
	lw $t0, -7932($fp)
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -7936($fp)
	lw $t0, -132($fp)
	sw $t0, -7940($fp)
	lw $t0, -7940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -7944($fp)
	lw $t0, -7944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -7948($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -7968($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -7988($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -8008($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -8028($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -8048($fp)
	li $t0, 5
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
	addi $t0, $fp, -36
	sw $t0, -8068($fp)
	li $t0, 6
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
	addi $t0, $fp, -36
	sw $t0, -8088($fp)
	li $t0, 7
	sw $t0, -8092($fp)
	li $t0, 4
	lw $t1, -8092($fp)
	mul $t0, $t0, $t1
	sw $t0, -8096($fp)
	lw $t0, -8096($fp)
	lw $t1, -8088($fp)
	add $t0, $t0, $t1
	sw $t0, -8100($fp)
	lw $t0, -8100($fp)
	lw $t1, 0($t0)
	sw $t1, -8104($fp)
	lw $t0, -8104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -348($fp)
	sw $t0, -8108($fp)
	lw $t0, -8108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -8112($fp)
	li $t0, 0
	sw $t0, -8116($fp)
	li $t0, 4
	lw $t1, -8116($fp)
	mul $t0, $t0, $t1
	sw $t0, -8120($fp)
	lw $t0, -8120($fp)
	lw $t1, -8112($fp)
	add $t0, $t0, $t1
	sw $t0, -8124($fp)
	lw $t0, -8124($fp)
	lw $t1, 0($t0)
	sw $t1, -8128($fp)
	lw $t0, -8128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -8132($fp)
	li $t0, 1
	sw $t0, -8136($fp)
	li $t0, 4
	lw $t1, -8136($fp)
	mul $t0, $t0, $t1
	sw $t0, -8140($fp)
	lw $t0, -8140($fp)
	lw $t1, -8132($fp)
	add $t0, $t0, $t1
	sw $t0, -8144($fp)
	lw $t0, -8144($fp)
	lw $t1, 0($t0)
	sw $t1, -8148($fp)
	lw $t0, -8148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -8152($fp)
	li $t0, 2
	sw $t0, -8156($fp)
	li $t0, 4
	lw $t1, -8156($fp)
	mul $t0, $t0, $t1
	sw $t0, -8160($fp)
	lw $t0, -8160($fp)
	lw $t1, -8152($fp)
	add $t0, $t0, $t1
	sw $t0, -8164($fp)
	lw $t0, -8164($fp)
	lw $t1, 0($t0)
	sw $t1, -8168($fp)
	lw $t0, -8168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -8172($fp)
	li $t0, 3
	sw $t0, -8176($fp)
	li $t0, 4
	lw $t1, -8176($fp)
	mul $t0, $t0, $t1
	sw $t0, -8180($fp)
	lw $t0, -8180($fp)
	lw $t1, -8172($fp)
	add $t0, $t0, $t1
	sw $t0, -8184($fp)
	lw $t0, -8184($fp)
	lw $t1, 0($t0)
	sw $t1, -8188($fp)
	lw $t0, -8188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -8192($fp)
	li $t0, 4
	sw $t0, -8196($fp)
	li $t0, 4
	lw $t1, -8196($fp)
	mul $t0, $t0, $t1
	sw $t0, -8200($fp)
	lw $t0, -8200($fp)
	lw $t1, -8192($fp)
	add $t0, $t0, $t1
	sw $t0, -8204($fp)
	lw $t0, -8204($fp)
	lw $t1, 0($t0)
	sw $t1, -8208($fp)
	lw $t0, -8208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -8212($fp)
	li $t0, 5
	sw $t0, -8216($fp)
	li $t0, 4
	lw $t1, -8216($fp)
	mul $t0, $t0, $t1
	sw $t0, -8220($fp)
	lw $t0, -8220($fp)
	lw $t1, -8212($fp)
	add $t0, $t0, $t1
	sw $t0, -8224($fp)
	lw $t0, -8224($fp)
	lw $t1, 0($t0)
	sw $t1, -8228($fp)
	lw $t0, -8228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -8232($fp)
	li $t0, 6
	sw $t0, -8236($fp)
	li $t0, 4
	lw $t1, -8236($fp)
	mul $t0, $t0, $t1
	sw $t0, -8240($fp)
	lw $t0, -8240($fp)
	lw $t1, -8232($fp)
	add $t0, $t0, $t1
	sw $t0, -8244($fp)
	lw $t0, -8244($fp)
	lw $t1, 0($t0)
	sw $t1, -8248($fp)
	lw $t0, -8248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -8252($fp)
	li $t0, 7
	sw $t0, -8256($fp)
	li $t0, 4
	lw $t1, -8256($fp)
	mul $t0, $t0, $t1
	sw $t0, -8260($fp)
	lw $t0, -8260($fp)
	lw $t1, -8252($fp)
	add $t0, $t0, $t1
	sw $t0, -8264($fp)
	lw $t0, -8264($fp)
	lw $t1, 0($t0)
	sw $t1, -8268($fp)
	lw $t0, -8268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -8272($fp)
	li $t0, 8
	sw $t0, -8276($fp)
	li $t0, 4
	lw $t1, -8276($fp)
	mul $t0, $t0, $t1
	sw $t0, -8280($fp)
	lw $t0, -8280($fp)
	lw $t1, -8272($fp)
	add $t0, $t0, $t1
	sw $t0, -8284($fp)
	lw $t0, -8284($fp)
	lw $t1, 0($t0)
	sw $t1, -8288($fp)
	lw $t0, -8288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -576($fp)
	sw $t0, -8292($fp)
	lw $t0, -8292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -588($fp)
	sw $t0, -8296($fp)
	lw $t0, -8296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -600($fp)
	sw $t0, -8300($fp)
	lw $t0, -8300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -612($fp)
	sw $t0, -8304($fp)
	lw $t0, -8304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -8308($fp)
	li $t0, 0
	sw $t0, -8312($fp)
	li $t0, 4
	lw $t1, -8312($fp)
	mul $t0, $t0, $t1
	sw $t0, -8316($fp)
	lw $t0, -8316($fp)
	lw $t1, -8308($fp)
	add $t0, $t0, $t1
	sw $t0, -8320($fp)
	lw $t0, -8320($fp)
	lw $t1, 0($t0)
	sw $t1, -8324($fp)
	lw $t0, -8324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -8328($fp)
	li $t0, 1
	sw $t0, -8332($fp)
	li $t0, 4
	lw $t1, -8332($fp)
	mul $t0, $t0, $t1
	sw $t0, -8336($fp)
	lw $t0, -8336($fp)
	lw $t1, -8328($fp)
	add $t0, $t0, $t1
	sw $t0, -8340($fp)
	lw $t0, -8340($fp)
	lw $t1, 0($t0)
	sw $t1, -8344($fp)
	lw $t0, -8344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -672($fp)
	sw $t0, -8348($fp)
	lw $t0, -8348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -684($fp)
	sw $t0, -8352($fp)
	lw $t0, -8352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -696($fp)
	sw $t0, -8356($fp)
	lw $t0, -8356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -708($fp)
	sw $t0, -8360($fp)
	lw $t0, -8360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -8364($fp)
	li $t0, 0
	sw $t0, -8368($fp)
	li $t0, 4
	lw $t1, -8368($fp)
	mul $t0, $t0, $t1
	sw $t0, -8372($fp)
	lw $t0, -8372($fp)
	lw $t1, -8364($fp)
	add $t0, $t0, $t1
	sw $t0, -8376($fp)
	lw $t0, -8376($fp)
	lw $t1, 0($t0)
	sw $t1, -8380($fp)
	lw $t0, -8380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -744($fp)
	sw $t0, -8384($fp)
	lw $t0, -8384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -756($fp)
	sw $t0, -8388($fp)
	lw $t0, -8388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -768($fp)
	sw $t0, -8392($fp)
	lw $t0, -8392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -780($fp)
	sw $t0, -8396($fp)
	lw $t0, -8396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -792($fp)
	sw $t0, -8400($fp)
	lw $t0, -8400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -804($fp)
	sw $t0, -8404($fp)
	lw $t0, -8404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -816($fp)
	sw $t0, -8408($fp)
	lw $t0, -8408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -828($fp)
	sw $t0, -8412($fp)
	lw $t0, -8412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -840($fp)
	sw $t0, -8416($fp)
	lw $t0, -8416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -852($fp)
	sw $t0, -8420($fp)
	lw $t0, -8420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -864($fp)
	sw $t0, -8424($fp)
	lw $t0, -8424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -876($fp)
	sw $t0, -8428($fp)
	lw $t0, -8428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -888($fp)
	sw $t0, -8432($fp)
	lw $t0, -8432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -900($fp)
	sw $t0, -8436($fp)
	lw $t0, -8436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -8440($fp)
	li $t0, 0
	sw $t0, -8444($fp)
	li $t0, 4
	lw $t1, -8444($fp)
	mul $t0, $t0, $t1
	sw $t0, -8448($fp)
	lw $t0, -8448($fp)
	lw $t1, -8440($fp)
	add $t0, $t0, $t1
	sw $t0, -8452($fp)
	lw $t0, -8452($fp)
	lw $t1, 0($t0)
	sw $t1, -8456($fp)
	lw $t0, -8456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -8460($fp)
	li $t0, 1
	sw $t0, -8464($fp)
	li $t0, 4
	lw $t1, -8464($fp)
	mul $t0, $t0, $t1
	sw $t0, -8468($fp)
	lw $t0, -8468($fp)
	lw $t1, -8460($fp)
	add $t0, $t0, $t1
	sw $t0, -8472($fp)
	lw $t0, -8472($fp)
	lw $t1, 0($t0)
	sw $t1, -8476($fp)
	lw $t0, -8476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -8480($fp)
	li $t0, 2
	sw $t0, -8484($fp)
	li $t0, 4
	lw $t1, -8484($fp)
	mul $t0, $t0, $t1
	sw $t0, -8488($fp)
	lw $t0, -8488($fp)
	lw $t1, -8480($fp)
	add $t0, $t0, $t1
	sw $t0, -8492($fp)
	lw $t0, -8492($fp)
	lw $t1, 0($t0)
	sw $t1, -8496($fp)
	lw $t0, -8496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -8500($fp)
	li $t0, 3
	sw $t0, -8504($fp)
	li $t0, 4
	lw $t1, -8504($fp)
	mul $t0, $t0, $t1
	sw $t0, -8508($fp)
	lw $t0, -8508($fp)
	lw $t1, -8500($fp)
	add $t0, $t0, $t1
	sw $t0, -8512($fp)
	lw $t0, -8512($fp)
	lw $t1, 0($t0)
	sw $t1, -8516($fp)
	lw $t0, -8516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -8520($fp)
	li $t0, 4
	sw $t0, -8524($fp)
	li $t0, 4
	lw $t1, -8524($fp)
	mul $t0, $t0, $t1
	sw $t0, -8528($fp)
	lw $t0, -8528($fp)
	lw $t1, -8520($fp)
	add $t0, $t0, $t1
	sw $t0, -8532($fp)
	lw $t0, -8532($fp)
	lw $t1, 0($t0)
	sw $t1, -8536($fp)
	lw $t0, -8536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -8540($fp)
	li $t0, 5
	sw $t0, -8544($fp)
	li $t0, 4
	lw $t1, -8544($fp)
	mul $t0, $t0, $t1
	sw $t0, -8548($fp)
	lw $t0, -8548($fp)
	lw $t1, -8540($fp)
	add $t0, $t0, $t1
	sw $t0, -8552($fp)
	lw $t0, -8552($fp)
	lw $t1, 0($t0)
	sw $t1, -8556($fp)
	lw $t0, -8556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -8560($fp)
	li $t0, 6
	sw $t0, -8564($fp)
	li $t0, 4
	lw $t1, -8564($fp)
	mul $t0, $t0, $t1
	sw $t0, -8568($fp)
	lw $t0, -8568($fp)
	lw $t1, -8560($fp)
	add $t0, $t0, $t1
	sw $t0, -8572($fp)
	lw $t0, -8572($fp)
	lw $t1, 0($t0)
	sw $t1, -8576($fp)
	lw $t0, -8576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -8580($fp)
	li $t0, 7
	sw $t0, -8584($fp)
	li $t0, 4
	lw $t1, -8584($fp)
	mul $t0, $t0, $t1
	sw $t0, -8588($fp)
	lw $t0, -8588($fp)
	lw $t1, -8580($fp)
	add $t0, $t0, $t1
	sw $t0, -8592($fp)
	lw $t0, -8592($fp)
	lw $t1, 0($t0)
	sw $t1, -8596($fp)
	lw $t0, -8596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -8600($fp)
	li $t0, 8
	sw $t0, -8604($fp)
	li $t0, 4
	lw $t1, -8604($fp)
	mul $t0, $t0, $t1
	sw $t0, -8608($fp)
	lw $t0, -8608($fp)
	lw $t1, -8600($fp)
	add $t0, $t0, $t1
	sw $t0, -8612($fp)
	lw $t0, -8612($fp)
	lw $t1, 0($t0)
	sw $t1, -8616($fp)
	lw $t0, -8616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -8620($fp)
	li $t0, 9
	sw $t0, -8624($fp)
	li $t0, 4
	lw $t1, -8624($fp)
	mul $t0, $t0, $t1
	sw $t0, -8628($fp)
	lw $t0, -8628($fp)
	lw $t1, -8620($fp)
	add $t0, $t0, $t1
	sw $t0, -8632($fp)
	lw $t0, -8632($fp)
	lw $t1, 0($t0)
	sw $t1, -8636($fp)
	lw $t0, -8636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1152($fp)
	sw $t0, -8640($fp)
	lw $t0, -8640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1164($fp)
	sw $t0, -8644($fp)
	lw $t0, -8644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1176($fp)
	sw $t0, -8648($fp)
	lw $t0, -8648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1188($fp)
	sw $t0, -8652($fp)
	lw $t0, -8652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1200($fp)
	sw $t0, -8656($fp)
	lw $t0, -8656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1212($fp)
	sw $t0, -8660($fp)
	lw $t0, -8660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1224($fp)
	sw $t0, -8664($fp)
	lw $t0, -8664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 37860
	sw $t0, -8668($fp)
	li $t0, 0
	lw $t1, -8668($fp)
	sub $t0, $t0, $t1
	sw $t0, -8672($fp)
	lw $ra, -4($fp)
	lw $v0, -8672($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -88
	li $t0, 54537
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 5653
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	lw $t0, -12($fp)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -36($fp)
	li $t0, 0
	sw $t0, -40($fp)
	li $t0, 34479
	sw $t0, -44($fp)
	lw $t0, -12($fp)
	sw $t0, -48($fp)
	lw $t1, -44($fp)
	lw $t2, -48($fp)
	bge $t1, $t2, label1063
	j label1062
label1063:
	li $t0, 18846
	sw $t0, -52($fp)
	lw $t1, -52($fp)
	li $t2, 0
	bne $t1, $t2, label1061
	j label1062
label1061:
	li $t0, 1
	sw $t0, -40($fp)
label1062:
	lw $t0, -12($fp)
	sw $t0, -56($fp)
	li $t0, 581
	sw $t0, -60($fp)
	lw $t0, -56($fp)
	lw $t1, -60($fp)
	add $t0, $t0, $t1
	sw $t0, -64($fp)
	lw $t0, -12($fp)
	sw $t0, -68($fp)
	lw $t0, -64($fp)
	lw $t1, -68($fp)
	add $t0, $t0, $t1
	sw $t0, -72($fp)
	addi $sp, $sp, -4
	lw $t0, -40($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -72($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -76($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -36($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -76($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -80($fp)
	addi $sp, $sp, 12
	lw $t0, -12($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 21778
	sw $t0, -92($fp)
	lw $ra, -4($fp)
	lw $v0, -92($fp)
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
	jal f9
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
