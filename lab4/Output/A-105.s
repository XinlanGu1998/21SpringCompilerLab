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
	addi $sp, $sp, -4
	li $t0, 26878
	sw $t0, -8($fp)
	lw $ra, -4($fp)
	lw $v0, -8($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -840
	li $t0, 33867
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 44445
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 37959
	sw $t0, -32($fp)
label121:
	li $t0, 0
	sw $t0, -36($fp)
	lw $t0, -12($fp)
	sw $t0, -40($fp)
	lw $t1, -40($fp)
	li $t2, 0
	bne $t1, $t2, label125
	j label124
label124:
	li $t0, 1
	sw $t0, -36($fp)
label125:
	li $t0, 0
	sw $t0, -44($fp)
	li $t0, 43991
	sw $t0, -48($fp)
	li $t0, 0
	lw $t1, -48($fp)
	sub $t0, $t0, $t1
	sw $t0, -52($fp)
	lw $t1, -52($fp)
	li $t2, 0
	bne $t1, $t2, label127
	j label126
label126:
	li $t0, 1
	sw $t0, -44($fp)
label127:
	li $t0, 0
	lw $t1, -44($fp)
	sub $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -36($fp)
	lw $t1, -56($fp)
	sub $t0, $t0, $t1
	sw $t0, -60($fp)
	lw $t1, -60($fp)
	li $t2, 0
	bne $t1, $t2, label122
	j label123
label122:
	li $t0, 11058
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	li $t0, 23136
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	li $t0, 38081
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	li $t0, 64401
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	li $t0, 54903
	sw $t0, -116($fp)
	addi $t0, $fp, -64
	sw $t0, -120($fp)
	li $t0, 0
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -128($fp)
	lw $t0, -120($fp)
	lw $t1, -128($fp)
	add $t0, $t0, $t1
	sw $t0, -132($fp)
	lw $t0, -116($fp)
	lw $t1, -132($fp)
	sw $t0, 0($t1)
	lw $t0, -132($fp)
	lw $t1, 0($t0)
	sw $t1, -136($fp)
	lw $t0, -96($fp)
	sw $t0, -140($fp)
	li $t0, 1846
	sw $t0, -144($fp)
	li $t0, 0
	lw $t1, -144($fp)
	sub $t0, $t0, $t1
	sw $t0, -148($fp)
	lw $t0, -140($fp)
	lw $t1, -148($fp)
	add $t0, $t0, $t1
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -156($fp)
	lw $t1, -156($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label129
label128:
	li $t0, 9315
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	li $t0, 0
	sw $t0, -172($fp)
	lw $t0, -12($fp)
	sw $t0, -176($fp)
	li $t0, 0
	sw $t0, -180($fp)
	li $t0, 0
	sw $t0, -184($fp)
	li $t0, 0
	sw $t0, -188($fp)
	lw $t0, -24($fp)
	sw $t0, -192($fp)
	lw $t0, -96($fp)
	sw $t0, -196($fp)
	lw $t1, -192($fp)
	lw $t2, -196($fp)
	bge $t1, $t2, label137
	j label138
label137:
	li $t0, 1
	sw $t0, -188($fp)
label138:
	li $t0, 44688
	sw $t0, -200($fp)
	lw $t1, -188($fp)
	lw $t2, -200($fp)
	bne $t1, $t2, label135
	j label136
label135:
	li $t0, 1
	sw $t0, -184($fp)
label136:
	li $t0, 12651
	sw $t0, -204($fp)
	li $t0, 21163
	sw $t0, -208($fp)
	lw $t0, -204($fp)
	lw $t1, -208($fp)
	add $t0, $t0, $t1
	sw $t0, -212($fp)
	li $t0, 26720
	sw $t0, -216($fp)
	lw $t0, -212($fp)
	lw $t1, -216($fp)
	add $t0, $t0, $t1
	sw $t0, -220($fp)
	addi $t0, $fp, -64
	sw $t0, -224($fp)
	lw $t0, -96($fp)
	sw $t0, -228($fp)
	li $t0, 4
	lw $t1, -228($fp)
	mul $t0, $t0, $t1
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	lw $t1, -224($fp)
	add $t0, $t0, $t1
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	lw $t1, 0($t0)
	sw $t1, -240($fp)
	lw $t0, -84($fp)
	sw $t0, -244($fp)
	addi $sp, $sp, -4
	lw $t0, -184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -244($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -248($fp)
	addi $sp, $sp, 20
	lw $t1, -248($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label133
label133:
	li $t0, 1
	sw $t0, -180($fp)
label134:
	li $t0, 0
	sw $t0, -252($fp)
	lw $t0, -12($fp)
	sw $t0, -256($fp)
	lw $t1, -256($fp)
	li $t2, 0
	bne $t1, $t2, label140
	j label139
label139:
	li $t0, 1
	sw $t0, -252($fp)
label140:
	lw $t0, -180($fp)
	lw $t1, -252($fp)
	mul $t0, $t0, $t1
	sw $t0, -260($fp)
	lw $t1, -176($fp)
	lw $t2, -260($fp)
	ble $t1, $t2, label131
	j label132
label131:
	li $t0, 1
	sw $t0, -172($fp)
label132:
	li $t0, 0
	sw $t0, -264($fp)
	lw $t0, -24($fp)
	sw $t0, -268($fp)
	li $t0, 0
	sw $t0, -272($fp)
	lw $t0, -12($fp)
	sw $t0, -276($fp)
	lw $t1, -276($fp)
	li $t2, 0
	bne $t1, $t2, label145
	j label144
label144:
	li $t0, 1
	sw $t0, -272($fp)
label145:
	li $t0, 0
	lw $t1, -272($fp)
	sub $t0, $t0, $t1
	sw $t0, -280($fp)
	lw $t0, -268($fp)
	lw $t1, -280($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -284($fp)
	lw $t1, -284($fp)
	li $t2, 0
	bne $t1, $t2, label143
	j label142
label143:
	li $t0, 41371
	sw $t0, -288($fp)
	lw $t0, -164($fp)
	sw $t0, -292($fp)
	lw $t0, -288($fp)
	lw $t1, -292($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -296($fp)
	li $t0, 11479
	sw $t0, -300($fp)
	lw $t0, -296($fp)
	lw $t1, -300($fp)
	mul $t0, $t0, $t1
	sw $t0, -304($fp)
	li $t0, 11069
	sw $t0, -308($fp)
	lw $t0, -304($fp)
	lw $t1, -308($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -312($fp)
	lw $t1, -312($fp)
	li $t2, 0
	bne $t1, $t2, label141
	j label142
label141:
	li $t0, 1
	sw $t0, -264($fp)
label142:
label129:
	li $t0, 0
	sw $t0, -316($fp)
	addi $t0, $fp, -64
	sw $t0, -320($fp)
	li $t0, 0
	sw $t0, -324($fp)
	li $t0, 4
	lw $t1, -324($fp)
	mul $t0, $t0, $t1
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	lw $t1, -320($fp)
	add $t0, $t0, $t1
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	lw $t1, 0($t0)
	sw $t1, -336($fp)
	li $t0, 16688
	sw $t0, -340($fp)
	li $t0, 52349
	sw $t0, -344($fp)
	lw $t0, -340($fp)
	lw $t1, -344($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -348($fp)
	li $t0, 22621
	sw $t0, -352($fp)
	lw $t0, -348($fp)
	lw $t1, -352($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -356($fp)
	lw $t0, -336($fp)
	lw $t1, -356($fp)
	sub $t0, $t0, $t1
	sw $t0, -360($fp)
	lw $t1, -360($fp)
	li $t2, 0
	bne $t1, $t2, label148
	j label147
label148:
	li $t0, 0
	sw $t0, -364($fp)
	li $t0, 27977
	sw $t0, -368($fp)
	li $t0, 0
	lw $t1, -368($fp)
	sub $t0, $t0, $t1
	sw $t0, -372($fp)
	lw $t1, -372($fp)
	li $t2, 0
	bne $t1, $t2, label150
	j label149
label149:
	li $t0, 1
	sw $t0, -364($fp)
label150:
	lw $t0, -12($fp)
	sw $t0, -376($fp)
	li $t0, 33633
	sw $t0, -380($fp)
	lw $t0, -376($fp)
	lw $t1, -380($fp)
	sub $t0, $t0, $t1
	sw $t0, -384($fp)
	lw $t1, -364($fp)
	lw $t2, -384($fp)
	bne $t1, $t2, label146
	j label147
label146:
	li $t0, 1
	sw $t0, -316($fp)
label147:
	li $t0, 0
	sw $t0, -388($fp)
	li $t0, 0
	sw $t0, -392($fp)
	li $t0, 55131
	sw $t0, -396($fp)
	lw $t1, -396($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label153
label153:
	li $t0, 1
	sw $t0, -392($fp)
label154:
	li $t0, 15643
	sw $t0, -400($fp)
	lw $t1, -392($fp)
	lw $t2, -400($fp)
	beq $t1, $t2, label151
	j label152
label151:
	li $t0, 1
	sw $t0, -388($fp)
label152:
	li $t0, 50157
	sw $t0, -404($fp)
	li $t0, 0
	sw $t0, -408($fp)
	li $t0, 0
	sw $t0, -412($fp)
	li $t0, 0
	sw $t0, -416($fp)
	li $t0, 5304
	sw $t0, -420($fp)
	li $t0, 42521
	sw $t0, -424($fp)
	lw $t0, -96($fp)
	sw $t0, -428($fp)
	lw $t0, -424($fp)
	lw $t1, -428($fp)
	mul $t0, $t0, $t1
	sw $t0, -432($fp)
	lw $t1, -420($fp)
	lw $t2, -432($fp)
	ble $t1, $t2, label159
	j label160
label159:
	li $t0, 1
	sw $t0, -416($fp)
label160:
	addi $t0, $fp, -64
	sw $t0, -436($fp)
	lw $t0, -12($fp)
	sw $t0, -440($fp)
	li $t0, 4
	lw $t1, -440($fp)
	mul $t0, $t0, $t1
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	lw $t1, -436($fp)
	add $t0, $t0, $t1
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	lw $t1, 0($t0)
	sw $t1, -452($fp)
	lw $t1, -416($fp)
	lw $t2, -452($fp)
	bne $t1, $t2, label157
	j label158
label157:
	li $t0, 1
	sw $t0, -412($fp)
label158:
	li $t0, 18488
	sw $t0, -456($fp)
	li $t0, 0
	lw $t1, -456($fp)
	sub $t0, $t0, $t1
	sw $t0, -460($fp)
	li $t0, 49749
	sw $t0, -464($fp)
	lw $t0, -460($fp)
	lw $t1, -464($fp)
	add $t0, $t0, $t1
	sw $t0, -468($fp)
	li $t0, 14944
	sw $t0, -472($fp)
	lw $t0, -468($fp)
	lw $t1, -472($fp)
	add $t0, $t0, $t1
	sw $t0, -476($fp)
	lw $t1, -412($fp)
	lw $t2, -476($fp)
	bne $t1, $t2, label155
	j label156
label155:
	li $t0, 1
	sw $t0, -408($fp)
label156:
	li $t0, 62480
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	li $t0, 0
	sw $t0, -492($fp)
	li $t0, 60807
	sw $t0, -496($fp)
	li $t0, 38080
	sw $t0, -500($fp)
	lw $t0, -496($fp)
	lw $t1, -500($fp)
	add $t0, $t0, $t1
	sw $t0, -504($fp)
	li $t0, 35025
	sw $t0, -508($fp)
	li $t0, 59672
	sw $t0, -512($fp)
	lw $t0, -508($fp)
	lw $t1, -512($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -516($fp)
	lw $t0, -504($fp)
	lw $t1, -516($fp)
	add $t0, $t0, $t1
	sw $t0, -520($fp)
	addi $t0, $fp, -64
	sw $t0, -524($fp)
	lw $t0, -72($fp)
	sw $t0, -528($fp)
	li $t0, 4
	lw $t1, -528($fp)
	mul $t0, $t0, $t1
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	lw $t1, -524($fp)
	add $t0, $t0, $t1
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	lw $t1, 0($t0)
	sw $t1, -540($fp)
	lw $t0, -520($fp)
	lw $t1, -540($fp)
	add $t0, $t0, $t1
	sw $t0, -544($fp)
	lw $t1, -544($fp)
	li $t2, 0
	bne $t1, $t2, label163
	j label162
label163:
	li $t0, 0
	sw $t0, -548($fp)
	li $t0, 0
	sw $t0, -552($fp)
	li $t0, 27448
	sw $t0, -556($fp)
	lw $t0, -24($fp)
	sw $t0, -560($fp)
	lw $t1, -556($fp)
	lw $t2, -560($fp)
	bgt $t1, $t2, label166
	j label167
label166:
	li $t0, 1
	sw $t0, -552($fp)
label167:
	li $t0, 36871
	sw $t0, -564($fp)
	lw $t1, -552($fp)
	lw $t2, -564($fp)
	ble $t1, $t2, label164
	j label165
label164:
	li $t0, 1
	sw $t0, -548($fp)
label165:
	lw $t0, -84($fp)
	sw $t0, -568($fp)
	li $t0, 3452
	sw $t0, -572($fp)
	lw $t0, -568($fp)
	lw $t1, -572($fp)
	mul $t0, $t0, $t1
	sw $t0, -576($fp)
	lw $t1, -548($fp)
	lw $t2, -576($fp)
	blt $t1, $t2, label161
	j label162
label161:
	li $t0, 1
	sw $t0, -492($fp)
label162:
	li $t0, 0
	sw $t0, -580($fp)
	li $t0, 0
	sw $t0, -584($fp)
	li $t0, 40099
	sw $t0, -588($fp)
	lw $t1, -588($fp)
	li $t2, 0
	bne $t1, $t2, label171
	j label170
label170:
	li $t0, 1
	sw $t0, -584($fp)
label171:
	li $t0, 0
	lw $t1, -584($fp)
	sub $t0, $t0, $t1
	sw $t0, -592($fp)
	li $t0, 0
	sw $t0, -596($fp)
	li $t0, 19251
	sw $t0, -600($fp)
	li $t0, 33869
	sw $t0, -604($fp)
	lw $t0, -600($fp)
	lw $t1, -604($fp)
	mul $t0, $t0, $t1
	sw $t0, -608($fp)
	li $t0, 41651
	sw $t0, -612($fp)
	lw $t1, -608($fp)
	lw $t2, -612($fp)
	blt $t1, $t2, label172
	j label173
label172:
	li $t0, 1
	sw $t0, -596($fp)
label173:
	li $t0, 30172
	sw $t0, -616($fp)
	lw $t0, 12($fp)
	sw $t0, -620($fp)
	lw $t0, -616($fp)
	lw $t1, -620($fp)
	sub $t0, $t0, $t1
	sw $t0, -624($fp)
	lw $t0, -12($fp)
	sw $t0, -628($fp)
	lw $t0, 16($fp)
	sw $t0, -632($fp)
	lw $t0, -628($fp)
	lw $t1, -632($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -636($fp)
	li $t0, 58034
	sw $t0, -640($fp)
	lw $t0, -636($fp)
	lw $t1, -640($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -644($fp)
	lw $t0, -12($fp)
	sw $t0, -648($fp)
	addi $sp, $sp, -4
	lw $t0, -596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -648($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -652($fp)
	addi $sp, $sp, 20
	lw $t1, -592($fp)
	lw $t2, -652($fp)
	ble $t1, $t2, label168
	j label169
label168:
	li $t0, 1
	sw $t0, -580($fp)
label169:
	lw $t0, -580($fp)
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -656($fp)
	li $t0, 30321
	sw $t0, -660($fp)
	lw $t0, -12($fp)
	sw $t0, -664($fp)
	lw $t0, -660($fp)
	lw $t1, -664($fp)
	sub $t0, $t0, $t1
	sw $t0, -668($fp)
	lw $t0, -24($fp)
	sw $t0, -672($fp)
	lw $t0, -72($fp)
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -692($fp)
	li $t0, 0
	sw $t0, -696($fp)
	li $t0, 4
	lw $t1, -696($fp)
	mul $t0, $t0, $t1
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	lw $t1, -692($fp)
	add $t0, $t0, $t1
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	lw $t1, 0($t0)
	sw $t1, -708($fp)
	lw $t0, -708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -712($fp)
	li $t0, 63915
	sw $t0, -716($fp)
	lw $t1, -716($fp)
	li $t2, 0
	bne $t1, $t2, label174
	j label176
label176:
	addi $t0, $fp, -64
	sw $t0, -720($fp)
	lw $t0, -72($fp)
	sw $t0, -724($fp)
	li $t0, 4
	lw $t1, -724($fp)
	mul $t0, $t0, $t1
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	lw $t1, -720($fp)
	add $t0, $t0, $t1
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	lw $t1, 0($t0)
	sw $t1, -736($fp)
	li $t0, 7203
	sw $t0, -740($fp)
	lw $t0, -736($fp)
	lw $t1, -740($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -744($fp)
	li $t0, 47939
	sw $t0, -748($fp)
	lw $t0, -24($fp)
	sw $t0, -752($fp)
	lw $t0, -748($fp)
	lw $t1, -752($fp)
	mul $t0, $t0, $t1
	sw $t0, -756($fp)
	lw $t0, -744($fp)
	lw $t1, -756($fp)
	sub $t0, $t0, $t1
	sw $t0, -760($fp)
	lw $t1, -760($fp)
	li $t2, 0
	bne $t1, $t2, label174
	j label175
label174:
	li $t0, 1
	sw $t0, -712($fp)
label175:
	lw $ra, -4($fp)
	lw $v0, -712($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label121
label123:
	lw $t0, -12($fp)
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -772($fp)
	li $t0, 0
	sw $t0, -776($fp)
	li $t0, 0
	sw $t0, -780($fp)
	li $t0, 0
	sw $t0, -784($fp)
	li $t0, 0
	sw $t0, -788($fp)
	li $t0, 15068
	sw $t0, -792($fp)
	li $t0, 59552
	sw $t0, -796($fp)
	lw $t1, -792($fp)
	lw $t2, -796($fp)
	blt $t1, $t2, label185
	j label186
label185:
	li $t0, 1
	sw $t0, -788($fp)
label186:
	li $t0, 5024
	sw $t0, -800($fp)
	lw $t1, -788($fp)
	lw $t2, -800($fp)
	bge $t1, $t2, label183
	j label184
label183:
	li $t0, 1
	sw $t0, -784($fp)
label184:
	li $t0, 0
	sw $t0, -804($fp)
	li $t0, 43045
	sw $t0, -808($fp)
	li $t0, 0
	lw $t1, -808($fp)
	sub $t0, $t0, $t1
	sw $t0, -812($fp)
	lw $t0, -24($fp)
	sw $t0, -816($fp)
	lw $t1, -812($fp)
	lw $t2, -816($fp)
	bne $t1, $t2, label187
	j label188
label187:
	li $t0, 1
	sw $t0, -804($fp)
label188:
	addi $sp, $sp, -4
	lw $t0, -804($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -820($fp)
	addi $sp, $sp, 8
	lw $t1, -784($fp)
	lw $t2, -820($fp)
	blt $t1, $t2, label181
	j label182
label181:
	li $t0, 1
	sw $t0, -780($fp)
label182:
	lw $t0, 4($fp)
	sw $t0, -824($fp)
	li $t0, 0
	lw $t1, -824($fp)
	sub $t0, $t0, $t1
	sw $t0, -828($fp)
	li $t0, 0
	lw $t1, -828($fp)
	sub $t0, $t0, $t1
	sw $t0, -832($fp)
	lw $t1, -780($fp)
	lw $t2, -832($fp)
	bne $t1, $t2, label179
	j label180
label179:
	li $t0, 1
	sw $t0, -776($fp)
label180:
	lw $t0, 12($fp)
	sw $t0, -836($fp)
	lw $t0, 8($fp)
	sw $t0, -840($fp)
	lw $t0, -836($fp)
	lw $t1, -840($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -844($fp)
	lw $t1, -776($fp)
	lw $t2, -844($fp)
	beq $t1, $t2, label177
	j label178
label177:
	li $t0, 1
	sw $t0, -772($fp)
label178:
	lw $ra, -4($fp)
	lw $v0, -772($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1316
	li $t0, 27650
	sw $t0, -28($fp)
	addi $t0, $fp, -8
	sw $t0, -32($fp)
	li $t0, 0
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -40($fp)
	lw $t0, -32($fp)
	lw $t1, -40($fp)
	add $t0, $t0, $t1
	sw $t0, -44($fp)
	lw $t0, -28($fp)
	lw $t1, -44($fp)
	sw $t0, 0($t1)
	lw $t0, -44($fp)
	lw $t1, 0($t0)
	sw $t1, -48($fp)
	li $t0, 60155
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -60($fp)
	li $t0, 58688
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	li $t0, 12271
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	li $t0, 65459
	sw $t0, -88($fp)
	addi $t0, $fp, -20
	sw $t0, -92($fp)
	li $t0, 0
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -100($fp)
	lw $t0, -92($fp)
	lw $t1, -100($fp)
	add $t0, $t0, $t1
	sw $t0, -104($fp)
	lw $t0, -88($fp)
	lw $t1, -104($fp)
	sw $t0, 0($t1)
	lw $t0, -104($fp)
	lw $t1, 0($t0)
	sw $t1, -108($fp)
	li $t0, 35673
	sw $t0, -112($fp)
	addi $t0, $fp, -20
	sw $t0, -116($fp)
	li $t0, 1
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -124($fp)
	lw $t0, -116($fp)
	lw $t1, -124($fp)
	add $t0, $t0, $t1
	sw $t0, -128($fp)
	lw $t0, -112($fp)
	lw $t1, -128($fp)
	sw $t0, 0($t1)
	lw $t0, -128($fp)
	lw $t1, 0($t0)
	sw $t1, -132($fp)
	li $t0, 30760
	sw $t0, -136($fp)
	addi $t0, $fp, -20
	sw $t0, -140($fp)
	li $t0, 2
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -148($fp)
	lw $t0, -140($fp)
	lw $t1, -148($fp)
	add $t0, $t0, $t1
	sw $t0, -152($fp)
	lw $t0, -136($fp)
	lw $t1, -152($fp)
	sw $t0, 0($t1)
	lw $t0, -152($fp)
	lw $t1, 0($t0)
	sw $t1, -156($fp)
	li $t0, 49673
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	li $t0, 50617
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	li $t0, 27704
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	li $t0, 44944
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	li $t0, 23162
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	li $t0, 62729
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -228($fp)
	li $t0, 39081
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	li $t0, 50610
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	li $t0, 34064
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	li $t0, 42533
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	li $t0, 25173
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	li $t0, 26562
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
	li $t0, 7169
	sw $t0, -304($fp)
	addi $t0, $fp, -24
	sw $t0, -308($fp)
	li $t0, 0
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -316($fp)
	lw $t0, -308($fp)
	lw $t1, -316($fp)
	add $t0, $t0, $t1
	sw $t0, -320($fp)
	lw $t0, -304($fp)
	lw $t1, -320($fp)
	sw $t0, 0($t1)
	lw $t0, -320($fp)
	lw $t1, 0($t0)
	sw $t1, -324($fp)
label189:
	li $t0, 0
	sw $t0, -328($fp)
	li $t0, 44424
	sw $t0, -332($fp)
	lw $t1, -332($fp)
	li $t2, 0
	bne $t1, $t2, label193
	j label192
label192:
	li $t0, 1
	sw $t0, -328($fp)
label193:
	lw $t0, -296($fp)
	sw $t0, -336($fp)
	lw $t1, -328($fp)
	lw $t2, -336($fp)
	ble $t1, $t2, label190
	j label191
label190:
	lw $t0, -200($fp)
	sw $t0, -340($fp)
	li $t0, 0
	lw $t1, -340($fp)
	sub $t0, $t0, $t1
	sw $t0, -344($fp)
	li $t0, 0
	lw $t1, -344($fp)
	sub $t0, $t0, $t1
	sw $t0, -348($fp)
	addi $t0, $fp, -24
	sw $t0, -352($fp)
	li $t0, 0
	sw $t0, -356($fp)
	li $t0, 4
	lw $t1, -356($fp)
	mul $t0, $t0, $t1
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	lw $t1, -352($fp)
	add $t0, $t0, $t1
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	lw $t1, 0($t0)
	sw $t1, -368($fp)
	lw $t0, -348($fp)
	lw $t1, -368($fp)
	add $t0, $t0, $t1
	sw $t0, -372($fp)
	addi $t0, $fp, -8
	sw $t0, -376($fp)
	li $t0, 0
	sw $t0, -380($fp)
	lw $t0, -296($fp)
	sw $t0, -384($fp)
	lw $t1, -384($fp)
	li $t2, 0
	bne $t1, $t2, label197
	j label199
label199:
	li $t0, 9209
	sw $t0, -388($fp)
	lw $t1, -388($fp)
	li $t2, 0
	bne $t1, $t2, label197
	j label198
label197:
	li $t0, 1
	sw $t0, -380($fp)
label198:
	li $t0, 4
	lw $t1, -380($fp)
	mul $t0, $t0, $t1
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	lw $t1, -376($fp)
	add $t0, $t0, $t1
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	lw $t1, 0($t0)
	sw $t1, -400($fp)
	lw $t0, -372($fp)
	lw $t1, -400($fp)
	add $t0, $t0, $t1
	sw $t0, -404($fp)
	lw $t1, -404($fp)
	li $t2, 0
	bne $t1, $t2, label194
	j label195
label194:
	lw $t0, -236($fp)
	sw $t0, -408($fp)
	li $t0, 12153
	sw $t0, -412($fp)
	li $t0, 0
	sw $t0, -416($fp)
	addi $t0, $fp, -20
	sw $t0, -420($fp)
	lw $t0, -56($fp)
	sw $t0, -424($fp)
	li $t0, 4
	lw $t1, -424($fp)
	mul $t0, $t0, $t1
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	lw $t1, -420($fp)
	add $t0, $t0, $t1
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	lw $t1, 0($t0)
	sw $t1, -436($fp)
	li $t0, 51388
	sw $t0, -440($fp)
	lw $t1, -436($fp)
	lw $t2, -440($fp)
	beq $t1, $t2, label200
	j label201
label200:
	li $t0, 1
	sw $t0, -416($fp)
label201:
	li $t0, 0
	sw $t0, -444($fp)
	li $t0, 0
	sw $t0, -448($fp)
	lw $t0, -296($fp)
	sw $t0, -452($fp)
	lw $t1, -452($fp)
	li $t2, 0
	bne $t1, $t2, label205
	j label204
label204:
	li $t0, 1
	sw $t0, -448($fp)
label205:
	li $t0, 50039
	sw $t0, -456($fp)
	lw $t1, -448($fp)
	lw $t2, -456($fp)
	bgt $t1, $t2, label202
	j label203
label202:
	li $t0, 1
	sw $t0, -444($fp)
label203:
	lw $t0, 4($fp)
	sw $t0, -460($fp)
	li $t0, 0
	lw $t1, -460($fp)
	sub $t0, $t0, $t1
	sw $t0, -464($fp)
	li $t0, 0
	lw $t1, -464($fp)
	sub $t0, $t0, $t1
	sw $t0, -468($fp)
	li $t0, 0
	sw $t0, -472($fp)
	li $t0, 57148
	sw $t0, -476($fp)
	li $t0, 8343
	sw $t0, -480($fp)
	lw $t0, -476($fp)
	lw $t1, -480($fp)
	mul $t0, $t0, $t1
	sw $t0, -484($fp)
	lw $t0, -260($fp)
	sw $t0, -488($fp)
	lw $t1, -484($fp)
	lw $t2, -488($fp)
	bne $t1, $t2, label206
	j label207
label206:
	li $t0, 1
	sw $t0, -472($fp)
label207:
	li $t0, 0
	sw $t0, -492($fp)
	lw $t0, -284($fp)
	sw $t0, -496($fp)
	li $t0, 0
	lw $t1, -496($fp)
	sub $t0, $t0, $t1
	sw $t0, -500($fp)
	lw $t0, -248($fp)
	sw $t0, -504($fp)
	lw $t1, -500($fp)
	lw $t2, -504($fp)
	bne $t1, $t2, label208
	j label209
label208:
	li $t0, 1
	sw $t0, -492($fp)
label209:
	addi $sp, $sp, -4
	lw $t0, -444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -492($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -508($fp)
	addi $sp, $sp, 20
	li $t0, 62172
	sw $t0, -512($fp)
	lw $t0, -508($fp)
	lw $t1, -512($fp)
	sub $t0, $t0, $t1
	sw $t0, -516($fp)
	li $t0, 0
	sw $t0, -520($fp)
	li $t0, 0
	sw $t0, -524($fp)
	li $t0, 58811
	sw $t0, -528($fp)
	lw $t1, -528($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label212
label212:
	li $t0, 1
	sw $t0, -524($fp)
label213:
	li $t0, 56023
	sw $t0, -532($fp)
	lw $t1, -524($fp)
	lw $t2, -532($fp)
	blt $t1, $t2, label210
	j label211
label210:
	li $t0, 1
	sw $t0, -520($fp)
label211:
	addi $sp, $sp, -4
	lw $t0, -412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -520($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -536($fp)
	addi $sp, $sp, 20
	lw $t0, -408($fp)
	lw $t1, -536($fp)
	add $t0, $t0, $t1
	sw $t0, -540($fp)
	j label196
label195:
	lw $t0, -56($fp)
	sw $t0, -544($fp)
	li $t0, 56792
	sw $t0, -548($fp)
	lw $t0, -544($fp)
	lw $t1, -548($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -552($fp)
	lw $t0, 4($fp)
	sw $t0, -556($fp)
	lw $t0, -552($fp)
	lw $t1, -556($fp)
	add $t0, $t0, $t1
	sw $t0, -560($fp)
	lw $t0, -80($fp)
	sw $t0, -564($fp)
	lw $t0, -560($fp)
	lw $t1, -564($fp)
	add $t0, $t0, $t1
	sw $t0, -568($fp)
	li $t0, 44540
	sw $t0, -572($fp)
	li $t0, 0
	lw $t1, -572($fp)
	sub $t0, $t0, $t1
	sw $t0, -576($fp)
	li $t0, 0
	lw $t1, -576($fp)
	sub $t0, $t0, $t1
	sw $t0, -580($fp)
	lw $t0, -568($fp)
	lw $t1, -580($fp)
	sub $t0, $t0, $t1
	sw $t0, -584($fp)
	li $t0, 24425
	sw $t0, -588($fp)
	lw $t1, -584($fp)
	lw $t2, -588($fp)
	ble $t1, $t2, label214
	j label215
label214:
label217:
	addi $t0, $fp, -8
	sw $t0, -592($fp)
	lw $t0, 12($fp)
	sw $t0, -596($fp)
	li $t0, 4
	lw $t1, -596($fp)
	mul $t0, $t0, $t1
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	lw $t1, -592($fp)
	add $t0, $t0, $t1
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	lw $t1, 0($t0)
	sw $t1, -608($fp)
	lw $t1, -608($fp)
	li $t2, 0
	bne $t1, $t2, label218
	j label219
label218:
	li $t0, 0
	sw $t0, -612($fp)
	lw $t0, -164($fp)
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -620($fp)
	addi $sp, $sp, -4
	lw $t0, -620($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -624($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -624($fp)
	sub $t0, $t0, $t1
	sw $t0, -628($fp)
	lw $t1, -628($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label222
label222:
	li $t0, 56715
	sw $t0, -632($fp)
	li $t0, 0
	sw $t0, -636($fp)
	li $t0, 0
	sw $t0, -640($fp)
	li $t0, 65295
	sw $t0, -644($fp)
	lw $t0, -296($fp)
	sw $t0, -648($fp)
	lw $t1, -644($fp)
	lw $t2, -648($fp)
	ble $t1, $t2, label226
	j label227
label226:
	li $t0, 1
	sw $t0, -640($fp)
label227:
	lw $t0, -200($fp)
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -656($fp)
	li $t0, 0
	sw $t0, -660($fp)
	li $t0, 40852
	sw $t0, -664($fp)
	lw $t0, -224($fp)
	sw $t0, -668($fp)
	lw $t0, -664($fp)
	lw $t1, -668($fp)
	sub $t0, $t0, $t1
	sw $t0, -672($fp)
	lw $t1, -672($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label230
label230:
	lw $t0, -236($fp)
	sw $t0, -676($fp)
	lw $t1, -676($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label229
label228:
	li $t0, 1
	sw $t0, -660($fp)
label229:
	li $t0, 0
	sw $t0, -680($fp)
	lw $t0, -164($fp)
	sw $t0, -684($fp)
	lw $t0, -68($fp)
	sw $t0, -688($fp)
	lw $t0, -684($fp)
	lw $t1, -688($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -692($fp)
	lw $t0, -248($fp)
	sw $t0, -696($fp)
	lw $t0, -692($fp)
	lw $t1, -696($fp)
	add $t0, $t0, $t1
	sw $t0, -700($fp)
	addi $sp, $sp, -4
	lw $t0, -700($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -704($fp)
	addi $sp, $sp, 8
	lw $t0, -296($fp)
	sw $t0, -708($fp)
	lw $t1, -704($fp)
	lw $t2, -708($fp)
	bge $t1, $t2, label231
	j label232
label231:
	li $t0, 1
	sw $t0, -680($fp)
label232:
	addi $sp, $sp, -4
	lw $t0, -640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -680($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -712($fp)
	addi $sp, $sp, 20
	lw $t1, -712($fp)
	li $t2, 0
	bne $t1, $t2, label225
	j label224
label225:
	li $t0, 17353
	sw $t0, -716($fp)
	lw $t1, -716($fp)
	li $t2, 0
	bne $t1, $t2, label223
	j label224
label223:
	li $t0, 1
	sw $t0, -636($fp)
label224:
	lw $t0, -188($fp)
	sw $t0, -720($fp)
	addi $t0, $fp, -8
	sw $t0, -724($fp)
	li $t0, 0
	sw $t0, -728($fp)
	li $t0, 4
	lw $t1, -728($fp)
	mul $t0, $t0, $t1
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	lw $t1, -724($fp)
	add $t0, $t0, $t1
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	lw $t1, 0($t0)
	sw $t1, -740($fp)
	li $t0, 0
	sw $t0, -744($fp)
	lw $t0, -56($fp)
	sw $t0, -748($fp)
	lw $t0, 12($fp)
	sw $t0, -752($fp)
	lw $t0, -748($fp)
	lw $t1, -752($fp)
	add $t0, $t0, $t1
	sw $t0, -756($fp)
	lw $t0, 8($fp)
	sw $t0, -760($fp)
	lw $t1, -756($fp)
	lw $t2, -760($fp)
	blt $t1, $t2, label233
	j label234
label233:
	li $t0, 1
	sw $t0, -744($fp)
label234:
	addi $sp, $sp, -4
	lw $t0, -636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -744($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -764($fp)
	addi $sp, $sp, 20
	lw $t1, -632($fp)
	lw $t2, -764($fp)
	bne $t1, $t2, label220
	j label221
label220:
	li $t0, 1
	sw $t0, -612($fp)
label221:
	j label217
label219:
	j label216
label215:
	li $t0, 0
	sw $t0, -768($fp)
	addi $t0, $fp, -20
	sw $t0, -772($fp)
	lw $t0, 8($fp)
	sw $t0, -776($fp)
	li $t0, 4
	lw $t1, -776($fp)
	mul $t0, $t0, $t1
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	lw $t1, -772($fp)
	add $t0, $t0, $t1
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	lw $t1, 0($t0)
	sw $t1, -788($fp)
	li $t0, 0
	lw $t1, -788($fp)
	sub $t0, $t0, $t1
	sw $t0, -792($fp)
	li $t0, 0
	lw $t1, -792($fp)
	sub $t0, $t0, $t1
	sw $t0, -796($fp)
	lw $t1, -796($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label237
label237:
	lw $t0, -236($fp)
	sw $t0, -800($fp)
	lw $t0, -188($fp)
	sw $t0, -804($fp)
	lw $t0, -800($fp)
	lw $t1, -804($fp)
	mul $t0, $t0, $t1
	sw $t0, -808($fp)
	li $t0, 0
	lw $t1, -808($fp)
	sub $t0, $t0, $t1
	sw $t0, -812($fp)
	li $t0, 20261
	sw $t0, -816($fp)
	li $t0, 22921
	sw $t0, -820($fp)
	lw $t0, -816($fp)
	lw $t1, -820($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -824($fp)
	lw $t1, -812($fp)
	lw $t2, -824($fp)
	bne $t1, $t2, label235
	j label236
label235:
	li $t0, 1
	sw $t0, -768($fp)
label236:
	lw $ra, -4($fp)
	lw $v0, -768($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label216:
label196:
	j label189
label191:
	lw $t0, -68($fp)
	sw $t0, -828($fp)
	li $t0, 0
	lw $t1, -828($fp)
	sub $t0, $t0, $t1
	sw $t0, -832($fp)
	lw $t0, -80($fp)
	sw $t0, -836($fp)
	lw $t0, -272($fp)
	sw $t0, -840($fp)
	lw $t0, -212($fp)
	sw $t0, -844($fp)
	lw $t0, -840($fp)
	lw $t1, -844($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -848($fp)
	lw $t0, -80($fp)
	sw $t0, -852($fp)
	lw $t0, -848($fp)
	lw $t1, -852($fp)
	mul $t0, $t0, $t1
	sw $t0, -856($fp)
	li $t0, 14546
	sw $t0, -860($fp)
	lw $t0, -856($fp)
	lw $t1, -860($fp)
	mul $t0, $t0, $t1
	sw $t0, -864($fp)
	lw $t0, -836($fp)
	lw $t1, -864($fp)
	add $t0, $t0, $t1
	sw $t0, -868($fp)
	lw $t1, -868($fp)
	li $t2, 0
	bne $t1, $t2, label238
	j label239
label238:
	li $t0, 59342
	sw $t0, -872($fp)
	lw $t0, -248($fp)
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -880($fp)
	lw $t0, -56($fp)
	sw $t0, -884($fp)
	li $t0, 0
	sw $t0, -888($fp)
	li $t0, 33168
	sw $t0, -892($fp)
	li $t0, 9636
	sw $t0, -896($fp)
	lw $t1, -892($fp)
	lw $t2, -896($fp)
	beq $t1, $t2, label241
	j label242
label241:
	li $t0, 1
	sw $t0, -888($fp)
label242:
	li $t0, 7995
	sw $t0, -900($fp)
	li $t0, 48610
	sw $t0, -904($fp)
	lw $t0, -900($fp)
	lw $t1, -904($fp)
	sub $t0, $t0, $t1
	sw $t0, -908($fp)
	li $t0, 36339
	sw $t0, -912($fp)
	lw $t0, -908($fp)
	lw $t1, -912($fp)
	sub $t0, $t0, $t1
	sw $t0, -916($fp)
	addi $sp, $sp, -4
	lw $t0, -880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -916($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -920($fp)
	addi $sp, $sp, 20
	lw $t0, -872($fp)
	lw $t1, -920($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -924($fp)
	lw $ra, -4($fp)
	lw $v0, -924($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label240
label239:
	li $t0, 0
	sw $t0, -928($fp)
	li $t0, 0
	sw $t0, -932($fp)
	lw $t0, -56($fp)
	sw $t0, -936($fp)
	li $t0, 43508
	sw $t0, -940($fp)
	lw $t0, -936($fp)
	lw $t1, -940($fp)
	sub $t0, $t0, $t1
	sw $t0, -944($fp)
	lw $t0, -164($fp)
	sw $t0, -948($fp)
	lw $t1, -944($fp)
	lw $t2, -948($fp)
	bge $t1, $t2, label248
	j label249
label248:
	li $t0, 1
	sw $t0, -932($fp)
label249:
	addi $sp, $sp, -4
	lw $t0, -932($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -952($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -952($fp)
	sub $t0, $t0, $t1
	sw $t0, -956($fp)
	li $t0, 0
	sw $t0, -960($fp)
	li $t0, 12056
	sw $t0, -964($fp)
	lw $t1, -964($fp)
	li $t2, 0
	bne $t1, $t2, label251
	j label250
label250:
	li $t0, 1
	sw $t0, -960($fp)
label251:
	lw $t0, -176($fp)
	sw $t0, -968($fp)
	lw $t0, -960($fp)
	lw $t1, -968($fp)
	add $t0, $t0, $t1
	sw $t0, -972($fp)
	lw $t1, -956($fp)
	lw $t2, -972($fp)
	bne $t1, $t2, label246
	j label247
label246:
	li $t0, 1
	sw $t0, -928($fp)
label247:
	li $t0, 0
	sw $t0, -976($fp)
	li $t0, 4532
	sw $t0, -980($fp)
	li $t0, 26792
	sw $t0, -984($fp)
	li $t0, 21266
	sw $t0, -988($fp)
	lw $t0, -984($fp)
	lw $t1, -988($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -992($fp)
	lw $t1, -980($fp)
	lw $t2, -992($fp)
	blt $t1, $t2, label252
	j label253
label252:
	li $t0, 1
	sw $t0, -976($fp)
label253:
	lw $t1, -928($fp)
	lw $t2, -976($fp)
	beq $t1, $t2, label243
	j label244
label243:
	lw $t0, -296($fp)
	sw $t0, -996($fp)
	lw $ra, -4($fp)
	lw $v0, -996($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label245
label244:
	lw $t0, -56($fp)
	sw $t0, -1000($fp)
	addi $t0, $fp, -8
	sw $t0, -1004($fp)
	lw $t0, -248($fp)
	sw $t0, -1008($fp)
	li $t0, 4
	lw $t1, -1008($fp)
	mul $t0, $t0, $t1
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	lw $t1, -1004($fp)
	add $t0, $t0, $t1
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	lw $t1, 0($t0)
	sw $t1, -1020($fp)
	li $t0, 0
	lw $t1, -1020($fp)
	sub $t0, $t0, $t1
	sw $t0, -1024($fp)
	lw $t0, -1000($fp)
	lw $t1, -1024($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1028($fp)
	lw $t1, -1028($fp)
	li $t2, 0
	bne $t1, $t2, label254
	j label255
label254:
	addi $t0, $fp, -8
	sw $t0, -1032($fp)
	li $t0, 0
	sw $t0, -1036($fp)
	li $t0, 63344
	sw $t0, -1040($fp)
	lw $t0, -80($fp)
	sw $t0, -1044($fp)
	lw $t0, -1040($fp)
	lw $t1, -1044($fp)
	add $t0, $t0, $t1
	sw $t0, -1048($fp)
	lw $t0, -236($fp)
	sw $t0, -1052($fp)
	lw $t1, -1048($fp)
	lw $t2, -1052($fp)
	beq $t1, $t2, label257
	j label258
label257:
	li $t0, 1
	sw $t0, -1036($fp)
label258:
	li $t0, 4
	lw $t1, -1036($fp)
	mul $t0, $t0, $t1
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	lw $t1, -1032($fp)
	add $t0, $t0, $t1
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	lw $t1, 0($t0)
	sw $t1, -1064($fp)
	li $t0, 0
	lw $t1, -1064($fp)
	sub $t0, $t0, $t1
	sw $t0, -1068($fp)
	j label256
label255:
	li $t0, 0
	sw $t0, -1072($fp)
	li $t0, 17279
	sw $t0, -1076($fp)
	li $t0, 0
	lw $t1, -1076($fp)
	sub $t0, $t0, $t1
	sw $t0, -1080($fp)
	lw $t1, -1080($fp)
	li $t2, 0
	bne $t1, $t2, label259
	j label261
label261:
	lw $t0, 8($fp)
	sw $t0, -1084($fp)
	lw $t0, -236($fp)
	sw $t0, -1088($fp)
	lw $t0, -1084($fp)
	lw $t1, -1088($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1092($fp)
	lw $t1, -1092($fp)
	li $t2, 0
	bne $t1, $t2, label259
	j label260
label259:
	li $t0, 1
	sw $t0, -1072($fp)
label260:
	lw $t0, -1072($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -1096($fp)
label256:
label245:
label240:
	addi $t0, $fp, -8
	sw $t0, -1100($fp)
	li $t0, 0
	sw $t0, -1104($fp)
	li $t0, 4
	lw $t1, -1104($fp)
	mul $t0, $t0, $t1
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	lw $t1, -1100($fp)
	add $t0, $t0, $t1
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	lw $t1, 0($t0)
	sw $t1, -1116($fp)
	lw $t0, -1116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -56($fp)
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -68($fp)
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -80($fp)
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -1132($fp)
	li $t0, 0
	sw $t0, -1136($fp)
	li $t0, 4
	lw $t1, -1136($fp)
	mul $t0, $t0, $t1
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	lw $t1, -1132($fp)
	add $t0, $t0, $t1
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	lw $t1, 0($t0)
	sw $t1, -1148($fp)
	lw $t0, -1148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -1152($fp)
	li $t0, 1
	sw $t0, -1156($fp)
	li $t0, 4
	lw $t1, -1156($fp)
	mul $t0, $t0, $t1
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	lw $t1, -1152($fp)
	add $t0, $t0, $t1
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	lw $t1, 0($t0)
	sw $t1, -1168($fp)
	lw $t0, -1168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -1172($fp)
	li $t0, 2
	sw $t0, -1176($fp)
	li $t0, 4
	lw $t1, -1176($fp)
	mul $t0, $t0, $t1
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	lw $t1, -1172($fp)
	add $t0, $t0, $t1
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	lw $t1, 0($t0)
	sw $t1, -1188($fp)
	lw $t0, -1188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -164($fp)
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -176($fp)
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -188($fp)
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -200($fp)
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -212($fp)
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -224($fp)
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -236($fp)
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -248($fp)
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -260($fp)
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -272($fp)
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -284($fp)
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -296($fp)
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -1240($fp)
	li $t0, 0
	sw $t0, -1244($fp)
	li $t0, 4
	lw $t1, -1244($fp)
	mul $t0, $t0, $t1
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	lw $t1, -1240($fp)
	add $t0, $t0, $t1
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	lw $t1, 0($t0)
	sw $t1, -1256($fp)
	lw $t0, -1256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -1260($fp)
	lw $t0, -284($fp)
	sw $t0, -1264($fp)
	li $t0, 4
	lw $t1, -1264($fp)
	mul $t0, $t0, $t1
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	lw $t1, -1260($fp)
	add $t0, $t0, $t1
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	lw $t1, 0($t0)
	sw $t1, -1276($fp)
	li $t0, 0
	lw $t1, -1276($fp)
	sub $t0, $t0, $t1
	sw $t0, -1280($fp)
	addi $sp, $sp, -4
	lw $t0, -1280($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1284($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -1288($fp)
	li $t0, 0
	sw $t0, -1292($fp)
	li $t0, 4
	lw $t1, -1292($fp)
	mul $t0, $t0, $t1
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	lw $t1, -1288($fp)
	add $t0, $t0, $t1
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	lw $t1, 0($t0)
	sw $t1, -1304($fp)
	li $t0, 0
	lw $t1, -1304($fp)
	sub $t0, $t0, $t1
	sw $t0, -1308($fp)
	lw $t0, -1284($fp)
	lw $t1, -1308($fp)
	add $t0, $t0, $t1
	sw $t0, -1312($fp)
	li $t0, 1782
	sw $t0, -1316($fp)
	lw $t0, -1312($fp)
	lw $t1, -1316($fp)
	sub $t0, $t0, $t1
	sw $t0, -1320($fp)
	lw $ra, -4($fp)
	lw $v0, -1320($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -40
	li $t0, 0
	sw $t0, -8($fp)
	li $t0, 0
	sw $t0, -12($fp)
	lw $t0, 4($fp)
	sw $t0, -16($fp)
	li $t0, 9515
	sw $t0, -20($fp)
	lw $t1, -16($fp)
	lw $t2, -20($fp)
	bne $t1, $t2, label264
	j label265
label264:
	li $t0, 1
	sw $t0, -12($fp)
label265:
	lw $t0, 4($fp)
	sw $t0, -24($fp)
	li $t0, 57540
	sw $t0, -28($fp)
	lw $t0, -24($fp)
	lw $t1, -28($fp)
	mul $t0, $t0, $t1
	sw $t0, -32($fp)
	lw $t0, 8($fp)
	sw $t0, -36($fp)
	li $t0, 0
	lw $t1, -36($fp)
	sub $t0, $t0, $t1
	sw $t0, -40($fp)
	lw $t0, -32($fp)
	lw $t1, -40($fp)
	add $t0, $t0, $t1
	sw $t0, -44($fp)
	lw $t1, -12($fp)
	lw $t2, -44($fp)
	beq $t1, $t2, label262
	j label263
label262:
	li $t0, 1
	sw $t0, -8($fp)
label263:
	lw $ra, -4($fp)
	lw $v0, -8($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -92
	li $t0, 13936
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 771
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 0
	sw $t0, -32($fp)
	li $t0, 51222
	sw $t0, -36($fp)
	lw $t0, -24($fp)
	sw $t0, -40($fp)
	lw $t1, -36($fp)
	lw $t2, -40($fp)
	blt $t1, $t2, label266
	j label267
label266:
	li $t0, 1
	sw $t0, -32($fp)
label267:
	li $t0, 0
	sw $t0, -44($fp)
	li $t0, 57486
	sw $t0, -48($fp)
	lw $t1, -48($fp)
	li $t2, 0
	bne $t1, $t2, label268
	j label270
label270:
	lw $t0, -24($fp)
	sw $t0, -52($fp)
	lw $t1, -52($fp)
	li $t2, 0
	bne $t1, $t2, label268
	j label269
label268:
	li $t0, 1
	sw $t0, -44($fp)
label269:
	lw $t0, -24($fp)
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -60($fp)
	li $t0, 0
	sw $t0, -64($fp)
	li $t0, 36544
	sw $t0, -68($fp)
	lw $t0, -24($fp)
	sw $t0, -72($fp)
	lw $t0, -68($fp)
	lw $t1, -72($fp)
	mul $t0, $t0, $t1
	sw $t0, -76($fp)
	li $t0, 38361
	sw $t0, -80($fp)
	lw $t1, -76($fp)
	lw $t2, -80($fp)
	blt $t1, $t2, label271
	j label272
label271:
	li $t0, 1
	sw $t0, -64($fp)
label272:
	addi $sp, $sp, -4
	lw $t0, -32($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -44($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -60($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -64($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -84($fp)
	addi $sp, $sp, 20
	lw $t0, -12($fp)
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 28010
	sw $t0, -96($fp)
	lw $ra, -4($fp)
	lw $v0, -96($fp)
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
