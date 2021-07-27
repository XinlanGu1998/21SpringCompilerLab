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
	addi $sp, $sp, -8480
	li $t0, 28824
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	li $t0, 21483
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	li $t0, 17784
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
	li $t0, 32928
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -312($fp)
	li $t0, 4326
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	li $t0, 27667
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -336($fp)
	li $t0, 32796
	sw $t0, -340($fp)
	addi $t0, $fp, -12
	sw $t0, -344($fp)
	li $t0, 0
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -352($fp)
	lw $t0, -344($fp)
	lw $t1, -352($fp)
	add $t0, $t0, $t1
	sw $t0, -356($fp)
	lw $t0, -340($fp)
	lw $t1, -356($fp)
	sw $t0, 0($t1)
	lw $t0, -356($fp)
	lw $t1, 0($t0)
	sw $t1, -360($fp)
	li $t0, 42872
	sw $t0, -364($fp)
	addi $t0, $fp, -12
	sw $t0, -368($fp)
	li $t0, 1
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -376($fp)
	lw $t0, -368($fp)
	lw $t1, -376($fp)
	add $t0, $t0, $t1
	sw $t0, -380($fp)
	lw $t0, -364($fp)
	lw $t1, -380($fp)
	sw $t0, 0($t1)
	lw $t0, -380($fp)
	lw $t1, 0($t0)
	sw $t1, -384($fp)
	li $t0, 47886
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	li $t0, 61903
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	li $t0, 46382
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	li $t0, 21741
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	li $t0, 42062
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	li $t0, 9672
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	li $t0, 28624
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	li $t0, 21393
	sw $t0, -472($fp)
	addi $t0, $fp, -20
	sw $t0, -476($fp)
	li $t0, 0
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
	li $t0, 40902
	sw $t0, -496($fp)
	addi $t0, $fp, -20
	sw $t0, -500($fp)
	li $t0, 1
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
	li $t0, 48674
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	li $t0, 53399
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	li $t0, 50421
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	li $t0, 21669
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	li $t0, 47781
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	li $t0, 46201
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	li $t0, 11113
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	li $t0, 1783
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	li $t0, 29110
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	li $t0, 61144
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	li $t0, 53818
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	li $t0, 18631
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	li $t0, 36087
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -672($fp)
	li $t0, 57066
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, -684($fp)
	li $t0, 47455
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	sw $t0, -696($fp)
	li $t0, 57571
	sw $t0, -700($fp)
	addi $t0, $fp, -28
	sw $t0, -704($fp)
	li $t0, 0
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -712($fp)
	lw $t0, -704($fp)
	lw $t1, -712($fp)
	add $t0, $t0, $t1
	sw $t0, -716($fp)
	lw $t0, -700($fp)
	lw $t1, -716($fp)
	sw $t0, 0($t1)
	lw $t0, -716($fp)
	lw $t1, 0($t0)
	sw $t1, -720($fp)
	li $t0, 9314
	sw $t0, -724($fp)
	addi $t0, $fp, -28
	sw $t0, -728($fp)
	li $t0, 1
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -736($fp)
	lw $t0, -728($fp)
	lw $t1, -736($fp)
	add $t0, $t0, $t1
	sw $t0, -740($fp)
	lw $t0, -724($fp)
	lw $t1, -740($fp)
	sw $t0, 0($t1)
	lw $t0, -740($fp)
	lw $t1, 0($t0)
	sw $t1, -744($fp)
	li $t0, 14848
	sw $t0, -748($fp)
	addi $t0, $fp, -68
	sw $t0, -752($fp)
	li $t0, 0
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -760($fp)
	lw $t0, -752($fp)
	lw $t1, -760($fp)
	add $t0, $t0, $t1
	sw $t0, -764($fp)
	lw $t0, -748($fp)
	lw $t1, -764($fp)
	sw $t0, 0($t1)
	lw $t0, -764($fp)
	lw $t1, 0($t0)
	sw $t1, -768($fp)
	li $t0, 61897
	sw $t0, -772($fp)
	addi $t0, $fp, -68
	sw $t0, -776($fp)
	li $t0, 1
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -784($fp)
	lw $t0, -776($fp)
	lw $t1, -784($fp)
	add $t0, $t0, $t1
	sw $t0, -788($fp)
	lw $t0, -772($fp)
	lw $t1, -788($fp)
	sw $t0, 0($t1)
	lw $t0, -788($fp)
	lw $t1, 0($t0)
	sw $t1, -792($fp)
	li $t0, 36981
	sw $t0, -796($fp)
	addi $t0, $fp, -68
	sw $t0, -800($fp)
	li $t0, 2
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -808($fp)
	lw $t0, -800($fp)
	lw $t1, -808($fp)
	add $t0, $t0, $t1
	sw $t0, -812($fp)
	lw $t0, -796($fp)
	lw $t1, -812($fp)
	sw $t0, 0($t1)
	lw $t0, -812($fp)
	lw $t1, 0($t0)
	sw $t1, -816($fp)
	li $t0, 47644
	sw $t0, -820($fp)
	addi $t0, $fp, -68
	sw $t0, -824($fp)
	li $t0, 3
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -832($fp)
	lw $t0, -824($fp)
	lw $t1, -832($fp)
	add $t0, $t0, $t1
	sw $t0, -836($fp)
	lw $t0, -820($fp)
	lw $t1, -836($fp)
	sw $t0, 0($t1)
	lw $t0, -836($fp)
	lw $t1, 0($t0)
	sw $t1, -840($fp)
	li $t0, 39234
	sw $t0, -844($fp)
	addi $t0, $fp, -68
	sw $t0, -848($fp)
	li $t0, 4
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -856($fp)
	lw $t0, -848($fp)
	lw $t1, -856($fp)
	add $t0, $t0, $t1
	sw $t0, -860($fp)
	lw $t0, -844($fp)
	lw $t1, -860($fp)
	sw $t0, 0($t1)
	lw $t0, -860($fp)
	lw $t1, 0($t0)
	sw $t1, -864($fp)
	li $t0, 19331
	sw $t0, -868($fp)
	addi $t0, $fp, -68
	sw $t0, -872($fp)
	li $t0, 5
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -880($fp)
	lw $t0, -872($fp)
	lw $t1, -880($fp)
	add $t0, $t0, $t1
	sw $t0, -884($fp)
	lw $t0, -868($fp)
	lw $t1, -884($fp)
	sw $t0, 0($t1)
	lw $t0, -884($fp)
	lw $t1, 0($t0)
	sw $t1, -888($fp)
	li $t0, 44011
	sw $t0, -892($fp)
	addi $t0, $fp, -68
	sw $t0, -896($fp)
	li $t0, 6
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -904($fp)
	lw $t0, -896($fp)
	lw $t1, -904($fp)
	add $t0, $t0, $t1
	sw $t0, -908($fp)
	lw $t0, -892($fp)
	lw $t1, -908($fp)
	sw $t0, 0($t1)
	lw $t0, -908($fp)
	lw $t1, 0($t0)
	sw $t1, -912($fp)
	li $t0, 20080
	sw $t0, -916($fp)
	addi $t0, $fp, -68
	sw $t0, -920($fp)
	li $t0, 7
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
	li $t0, 41072
	sw $t0, -940($fp)
	addi $t0, $fp, -68
	sw $t0, -944($fp)
	li $t0, 8
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
	li $t0, 20537
	sw $t0, -964($fp)
	addi $t0, $fp, -68
	sw $t0, -968($fp)
	li $t0, 9
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
	li $t0, 29752
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	sw $t0, -996($fp)
	li $t0, 4160
	sw $t0, -1000($fp)
	addi $t0, $fp, -72
	sw $t0, -1004($fp)
	li $t0, 0
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1012($fp)
	lw $t0, -1004($fp)
	lw $t1, -1012($fp)
	add $t0, $t0, $t1
	sw $t0, -1016($fp)
	lw $t0, -1000($fp)
	lw $t1, -1016($fp)
	sw $t0, 0($t1)
	lw $t0, -1016($fp)
	lw $t1, 0($t0)
	sw $t1, -1020($fp)
	li $t0, 41930
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	sw $t0, -1032($fp)
	li $t0, 5118
	sw $t0, -1036($fp)
	addi $t0, $fp, -112
	sw $t0, -1040($fp)
	li $t0, 0
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
	li $t0, 52834
	sw $t0, -1060($fp)
	addi $t0, $fp, -112
	sw $t0, -1064($fp)
	li $t0, 1
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
	li $t0, 29793
	sw $t0, -1084($fp)
	addi $t0, $fp, -112
	sw $t0, -1088($fp)
	li $t0, 2
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
	li $t0, 55539
	sw $t0, -1108($fp)
	addi $t0, $fp, -112
	sw $t0, -1112($fp)
	li $t0, 3
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
	li $t0, 8968
	sw $t0, -1132($fp)
	addi $t0, $fp, -112
	sw $t0, -1136($fp)
	li $t0, 4
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1144($fp)
	lw $t0, -1136($fp)
	lw $t1, -1144($fp)
	add $t0, $t0, $t1
	sw $t0, -1148($fp)
	lw $t0, -1132($fp)
	lw $t1, -1148($fp)
	sw $t0, 0($t1)
	lw $t0, -1148($fp)
	lw $t1, 0($t0)
	sw $t1, -1152($fp)
	li $t0, 12039
	sw $t0, -1156($fp)
	addi $t0, $fp, -112
	sw $t0, -1160($fp)
	li $t0, 5
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1168($fp)
	lw $t0, -1160($fp)
	lw $t1, -1168($fp)
	add $t0, $t0, $t1
	sw $t0, -1172($fp)
	lw $t0, -1156($fp)
	lw $t1, -1172($fp)
	sw $t0, 0($t1)
	lw $t0, -1172($fp)
	lw $t1, 0($t0)
	sw $t1, -1176($fp)
	li $t0, 36204
	sw $t0, -1180($fp)
	addi $t0, $fp, -112
	sw $t0, -1184($fp)
	li $t0, 6
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1192($fp)
	lw $t0, -1184($fp)
	lw $t1, -1192($fp)
	add $t0, $t0, $t1
	sw $t0, -1196($fp)
	lw $t0, -1180($fp)
	lw $t1, -1196($fp)
	sw $t0, 0($t1)
	lw $t0, -1196($fp)
	lw $t1, 0($t0)
	sw $t1, -1200($fp)
	li $t0, 20081
	sw $t0, -1204($fp)
	addi $t0, $fp, -112
	sw $t0, -1208($fp)
	li $t0, 7
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1216($fp)
	lw $t0, -1208($fp)
	lw $t1, -1216($fp)
	add $t0, $t0, $t1
	sw $t0, -1220($fp)
	lw $t0, -1204($fp)
	lw $t1, -1220($fp)
	sw $t0, 0($t1)
	lw $t0, -1220($fp)
	lw $t1, 0($t0)
	sw $t1, -1224($fp)
	li $t0, 13822
	sw $t0, -1228($fp)
	addi $t0, $fp, -112
	sw $t0, -1232($fp)
	li $t0, 8
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1240($fp)
	lw $t0, -1232($fp)
	lw $t1, -1240($fp)
	add $t0, $t0, $t1
	sw $t0, -1244($fp)
	lw $t0, -1228($fp)
	lw $t1, -1244($fp)
	sw $t0, 0($t1)
	lw $t0, -1244($fp)
	lw $t1, 0($t0)
	sw $t1, -1248($fp)
	li $t0, 65315
	sw $t0, -1252($fp)
	addi $t0, $fp, -112
	sw $t0, -1256($fp)
	li $t0, 9
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1264($fp)
	lw $t0, -1256($fp)
	lw $t1, -1264($fp)
	add $t0, $t0, $t1
	sw $t0, -1268($fp)
	lw $t0, -1252($fp)
	lw $t1, -1268($fp)
	sw $t0, 0($t1)
	lw $t0, -1268($fp)
	lw $t1, 0($t0)
	sw $t1, -1272($fp)
	li $t0, 15689
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -1284($fp)
	li $t0, 2104
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	sw $t0, -1296($fp)
	li $t0, 18410
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	sw $t0, -1308($fp)
	li $t0, 51776
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	sw $t0, -1320($fp)
	li $t0, 59170
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	sw $t0, -1332($fp)
	li $t0, 329
	sw $t0, -1336($fp)
	addi $t0, $fp, -140
	sw $t0, -1340($fp)
	li $t0, 0
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1348($fp)
	lw $t0, -1340($fp)
	lw $t1, -1348($fp)
	add $t0, $t0, $t1
	sw $t0, -1352($fp)
	lw $t0, -1336($fp)
	lw $t1, -1352($fp)
	sw $t0, 0($t1)
	lw $t0, -1352($fp)
	lw $t1, 0($t0)
	sw $t1, -1356($fp)
	li $t0, 43811
	sw $t0, -1360($fp)
	addi $t0, $fp, -140
	sw $t0, -1364($fp)
	li $t0, 1
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1372($fp)
	lw $t0, -1364($fp)
	lw $t1, -1372($fp)
	add $t0, $t0, $t1
	sw $t0, -1376($fp)
	lw $t0, -1360($fp)
	lw $t1, -1376($fp)
	sw $t0, 0($t1)
	lw $t0, -1376($fp)
	lw $t1, 0($t0)
	sw $t1, -1380($fp)
	li $t0, 2948
	sw $t0, -1384($fp)
	addi $t0, $fp, -140
	sw $t0, -1388($fp)
	li $t0, 2
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1396($fp)
	lw $t0, -1388($fp)
	lw $t1, -1396($fp)
	add $t0, $t0, $t1
	sw $t0, -1400($fp)
	lw $t0, -1384($fp)
	lw $t1, -1400($fp)
	sw $t0, 0($t1)
	lw $t0, -1400($fp)
	lw $t1, 0($t0)
	sw $t1, -1404($fp)
	li $t0, 15177
	sw $t0, -1408($fp)
	addi $t0, $fp, -140
	sw $t0, -1412($fp)
	li $t0, 3
	sw $t0, -1416($fp)
	lw $t0, -1416($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1420($fp)
	lw $t0, -1412($fp)
	lw $t1, -1420($fp)
	add $t0, $t0, $t1
	sw $t0, -1424($fp)
	lw $t0, -1408($fp)
	lw $t1, -1424($fp)
	sw $t0, 0($t1)
	lw $t0, -1424($fp)
	lw $t1, 0($t0)
	sw $t1, -1428($fp)
	li $t0, 40173
	sw $t0, -1432($fp)
	addi $t0, $fp, -140
	sw $t0, -1436($fp)
	li $t0, 4
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1444($fp)
	lw $t0, -1436($fp)
	lw $t1, -1444($fp)
	add $t0, $t0, $t1
	sw $t0, -1448($fp)
	lw $t0, -1432($fp)
	lw $t1, -1448($fp)
	sw $t0, 0($t1)
	lw $t0, -1448($fp)
	lw $t1, 0($t0)
	sw $t1, -1452($fp)
	li $t0, 39929
	sw $t0, -1456($fp)
	addi $t0, $fp, -140
	sw $t0, -1460($fp)
	li $t0, 5
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1468($fp)
	lw $t0, -1460($fp)
	lw $t1, -1468($fp)
	add $t0, $t0, $t1
	sw $t0, -1472($fp)
	lw $t0, -1456($fp)
	lw $t1, -1472($fp)
	sw $t0, 0($t1)
	lw $t0, -1472($fp)
	lw $t1, 0($t0)
	sw $t1, -1476($fp)
	li $t0, 62821
	sw $t0, -1480($fp)
	addi $t0, $fp, -140
	sw $t0, -1484($fp)
	li $t0, 6
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1492($fp)
	lw $t0, -1484($fp)
	lw $t1, -1492($fp)
	add $t0, $t0, $t1
	sw $t0, -1496($fp)
	lw $t0, -1480($fp)
	lw $t1, -1496($fp)
	sw $t0, 0($t1)
	lw $t0, -1496($fp)
	lw $t1, 0($t0)
	sw $t1, -1500($fp)
	li $t0, 13871
	sw $t0, -1504($fp)
	addi $t0, $fp, -168
	sw $t0, -1508($fp)
	li $t0, 0
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1516($fp)
	lw $t0, -1508($fp)
	lw $t1, -1516($fp)
	add $t0, $t0, $t1
	sw $t0, -1520($fp)
	lw $t0, -1504($fp)
	lw $t1, -1520($fp)
	sw $t0, 0($t1)
	lw $t0, -1520($fp)
	lw $t1, 0($t0)
	sw $t1, -1524($fp)
	li $t0, 59260
	sw $t0, -1528($fp)
	addi $t0, $fp, -168
	sw $t0, -1532($fp)
	li $t0, 1
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1540($fp)
	lw $t0, -1532($fp)
	lw $t1, -1540($fp)
	add $t0, $t0, $t1
	sw $t0, -1544($fp)
	lw $t0, -1528($fp)
	lw $t1, -1544($fp)
	sw $t0, 0($t1)
	lw $t0, -1544($fp)
	lw $t1, 0($t0)
	sw $t1, -1548($fp)
	li $t0, 41296
	sw $t0, -1552($fp)
	addi $t0, $fp, -168
	sw $t0, -1556($fp)
	li $t0, 2
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1564($fp)
	lw $t0, -1556($fp)
	lw $t1, -1564($fp)
	add $t0, $t0, $t1
	sw $t0, -1568($fp)
	lw $t0, -1552($fp)
	lw $t1, -1568($fp)
	sw $t0, 0($t1)
	lw $t0, -1568($fp)
	lw $t1, 0($t0)
	sw $t1, -1572($fp)
	li $t0, 33951
	sw $t0, -1576($fp)
	addi $t0, $fp, -168
	sw $t0, -1580($fp)
	li $t0, 3
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
	li $t0, 34797
	sw $t0, -1600($fp)
	addi $t0, $fp, -168
	sw $t0, -1604($fp)
	li $t0, 4
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
	li $t0, 61834
	sw $t0, -1624($fp)
	addi $t0, $fp, -168
	sw $t0, -1628($fp)
	li $t0, 5
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
	li $t0, 63703
	sw $t0, -1648($fp)
	addi $t0, $fp, -168
	sw $t0, -1652($fp)
	li $t0, 6
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
	li $t0, 38957
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	sw $t0, -1680($fp)
	li $t0, 38228
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	sw $t0, -1692($fp)
	li $t0, 3286
	sw $t0, -1696($fp)
	addi $t0, $fp, -180
	sw $t0, -1700($fp)
	li $t0, 0
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
	li $t0, 26256
	sw $t0, -1720($fp)
	addi $t0, $fp, -180
	sw $t0, -1724($fp)
	li $t0, 1
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
	li $t0, 2486
	sw $t0, -1744($fp)
	addi $t0, $fp, -180
	sw $t0, -1748($fp)
	li $t0, 2
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
	li $t0, 58825
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	sw $t0, -1776($fp)
	li $t0, 35224
	sw $t0, -1780($fp)
	lw $t0, -1780($fp)
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	sw $t0, -1788($fp)
	li $t0, 14525
	sw $t0, -1792($fp)
	addi $t0, $fp, -220
	sw $t0, -1796($fp)
	li $t0, 0
	sw $t0, -1800($fp)
	lw $t0, -1800($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1804($fp)
	lw $t0, -1796($fp)
	lw $t1, -1804($fp)
	add $t0, $t0, $t1
	sw $t0, -1808($fp)
	lw $t0, -1792($fp)
	lw $t1, -1808($fp)
	sw $t0, 0($t1)
	lw $t0, -1808($fp)
	lw $t1, 0($t0)
	sw $t1, -1812($fp)
	li $t0, 29494
	sw $t0, -1816($fp)
	addi $t0, $fp, -220
	sw $t0, -1820($fp)
	li $t0, 1
	sw $t0, -1824($fp)
	lw $t0, -1824($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1828($fp)
	lw $t0, -1820($fp)
	lw $t1, -1828($fp)
	add $t0, $t0, $t1
	sw $t0, -1832($fp)
	lw $t0, -1816($fp)
	lw $t1, -1832($fp)
	sw $t0, 0($t1)
	lw $t0, -1832($fp)
	lw $t1, 0($t0)
	sw $t1, -1836($fp)
	li $t0, 55305
	sw $t0, -1840($fp)
	addi $t0, $fp, -220
	sw $t0, -1844($fp)
	li $t0, 2
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
	li $t0, 28347
	sw $t0, -1864($fp)
	addi $t0, $fp, -220
	sw $t0, -1868($fp)
	li $t0, 3
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
	li $t0, 29273
	sw $t0, -1888($fp)
	addi $t0, $fp, -220
	sw $t0, -1892($fp)
	li $t0, 4
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
	li $t0, 5458
	sw $t0, -1912($fp)
	addi $t0, $fp, -220
	sw $t0, -1916($fp)
	li $t0, 5
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
	li $t0, 30452
	sw $t0, -1936($fp)
	addi $t0, $fp, -220
	sw $t0, -1940($fp)
	li $t0, 6
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
	li $t0, 47683
	sw $t0, -1960($fp)
	addi $t0, $fp, -220
	sw $t0, -1964($fp)
	li $t0, 7
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
	li $t0, 57234
	sw $t0, -1984($fp)
	addi $t0, $fp, -220
	sw $t0, -1988($fp)
	li $t0, 8
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
	li $t0, 24086
	sw $t0, -2008($fp)
	addi $t0, $fp, -220
	sw $t0, -2012($fp)
	li $t0, 9
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
	li $t0, 48012
	sw $t0, -2032($fp)
	lw $t0, -2032($fp)
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	sw $t0, -2040($fp)
	li $t0, 35510
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	sw $t0, -2048($fp)
	lw $t0, -2048($fp)
	sw $t0, -2052($fp)
	li $t0, 27035
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	sw $t0, -2064($fp)
	li $t0, 63190
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	sw $t0, -2076($fp)
	li $t0, 10147
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	sw $t0, -2088($fp)
	li $t0, 1428
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	sw $t0, -2100($fp)
	li $t0, 60475
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	sw $t0, -2112($fp)
	li $t0, 24018
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	sw $t0, -2124($fp)
	li $t0, 60689
	sw $t0, -2128($fp)
	addi $t0, $fp, -224
	sw $t0, -2132($fp)
	li $t0, 0
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
	li $t0, 36236
	sw $t0, -2152($fp)
	addi $t0, $fp, -252
	sw $t0, -2156($fp)
	li $t0, 0
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
	li $t0, 57969
	sw $t0, -2176($fp)
	addi $t0, $fp, -252
	sw $t0, -2180($fp)
	li $t0, 1
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
	li $t0, 29950
	sw $t0, -2200($fp)
	addi $t0, $fp, -252
	sw $t0, -2204($fp)
	li $t0, 2
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
	li $t0, 32534
	sw $t0, -2224($fp)
	addi $t0, $fp, -252
	sw $t0, -2228($fp)
	li $t0, 3
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
	li $t0, 56136
	sw $t0, -2248($fp)
	addi $t0, $fp, -252
	sw $t0, -2252($fp)
	li $t0, 4
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
	li $t0, 3371
	sw $t0, -2272($fp)
	addi $t0, $fp, -252
	sw $t0, -2276($fp)
	li $t0, 5
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
	li $t0, 5226
	sw $t0, -2296($fp)
	addi $t0, $fp, -252
	sw $t0, -2300($fp)
	li $t0, 6
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
	li $t0, 59422
	sw $t0, -2320($fp)
	addi $t0, $fp, -264
	sw $t0, -2324($fp)
	li $t0, 0
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
	li $t0, 29627
	sw $t0, -2344($fp)
	addi $t0, $fp, -264
	sw $t0, -2348($fp)
	li $t0, 1
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2356($fp)
	lw $t0, -2348($fp)
	lw $t1, -2356($fp)
	add $t0, $t0, $t1
	sw $t0, -2360($fp)
	lw $t0, -2344($fp)
	lw $t1, -2360($fp)
	sw $t0, 0($t1)
	lw $t0, -2360($fp)
	lw $t1, 0($t0)
	sw $t1, -2364($fp)
	li $t0, 7712
	sw $t0, -2368($fp)
	addi $t0, $fp, -264
	sw $t0, -2372($fp)
	li $t0, 2
	sw $t0, -2376($fp)
	lw $t0, -2376($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2380($fp)
	lw $t0, -2372($fp)
	lw $t1, -2380($fp)
	add $t0, $t0, $t1
	sw $t0, -2384($fp)
	lw $t0, -2368($fp)
	lw $t1, -2384($fp)
	sw $t0, 0($t1)
	lw $t0, -2384($fp)
	lw $t1, 0($t0)
	sw $t1, -2388($fp)
	li $t0, 52712
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	sw $t0, -2400($fp)
	li $t0, 64851
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	sw $t0, -2412($fp)
	li $t0, 22237
	sw $t0, -2416($fp)
	li $t0, 0
	lw $t1, -2416($fp)
	sub $t0, $t0, $t1
	sw $t0, -2420($fp)
	lw $t1, -2420($fp)
	li $t2, 0
	bne $t1, $t2, label122
	j label121
label121:
	li $t0, 0
	sw $t0, -2424($fp)
	lw $t0, -284($fp)
	sw $t0, -2428($fp)
	lw $t0, -1328($fp)
	sw $t0, -2432($fp)
	lw $t0, -2428($fp)
	lw $t1, -2432($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2436($fp)
	lw $t0, -632($fp)
	sw $t0, -2440($fp)
	lw $t1, -2436($fp)
	lw $t2, -2440($fp)
	bge $t1, $t2, label127
	j label128
label127:
	li $t0, 1
	sw $t0, -2424($fp)
label128:
	li $t0, 0
	sw $t0, -2444($fp)
	li $t0, 60078
	sw $t0, -2448($fp)
	lw $t0, -524($fp)
	sw $t0, -2452($fp)
	lw $t0, -2448($fp)
	lw $t1, -2452($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2456($fp)
	lw $t1, -2456($fp)
	li $t2, 0
	bne $t1, $t2, label131
	j label130
label131:
	lw $t0, -2048($fp)
	sw $t0, -2460($fp)
	lw $t1, -2460($fp)
	li $t2, 0
	bne $t1, $t2, label129
	j label130
label129:
	li $t0, 1
	sw $t0, -2444($fp)
label130:
	lw $t0, -1316($fp)
	sw $t0, -2464($fp)
	lw $t0, -2464($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -2468($fp)
	li $t0, 0
	sw $t0, -2472($fp)
	lw $t0, -2060($fp)
	sw $t0, -2476($fp)
	li $t0, 50585
	sw $t0, -2480($fp)
	lw $t0, -2476($fp)
	lw $t1, -2480($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2484($fp)
	lw $t1, -2484($fp)
	li $t2, 0
	bne $t1, $t2, label132
	j label134
label134:
	li $t0, 45943
	sw $t0, -2488($fp)
	lw $t1, -2488($fp)
	li $t2, 0
	bne $t1, $t2, label132
	j label133
label132:
	li $t0, 1
	sw $t0, -2472($fp)
label133:
	li $t0, 0
	sw $t0, -2492($fp)
	lw $t0, -560($fp)
	sw $t0, -2496($fp)
	li $t0, 16670
	sw $t0, -2500($fp)
	lw $t0, -2496($fp)
	lw $t1, -2500($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2504($fp)
	li $t0, 54620
	sw $t0, -2508($fp)
	lw $t1, -2504($fp)
	lw $t2, -2508($fp)
	ble $t1, $t2, label135
	j label136
label135:
	li $t0, 1
	sw $t0, -2492($fp)
label136:
	addi $sp, $sp, -4
	lw $t0, -2468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2492($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2512($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -2424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2512($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2516($fp)
	addi $sp, $sp, 16
	lw $t1, -2516($fp)
	li $t2, 0
	bne $t1, $t2, label124
	j label125
label124:
	li $t0, 15501
	sw $t0, -2520($fp)
	li $t0, 0
	sw $t0, -2524($fp)
	li $t0, 10566
	sw $t0, -2528($fp)
	li $t0, 0
	lw $t1, -2528($fp)
	sub $t0, $t0, $t1
	sw $t0, -2532($fp)
	lw $t1, -2532($fp)
	li $t2, 0
	bne $t1, $t2, label142
	j label141
label142:
	lw $t0, -680($fp)
	sw $t0, -2536($fp)
	lw $t1, -2536($fp)
	li $t2, 0
	bne $t1, $t2, label140
	j label141
label140:
	li $t0, 1
	sw $t0, -2524($fp)
label141:
	li $t0, 0
	sw $t0, -2540($fp)
	lw $t0, -1328($fp)
	sw $t0, -2544($fp)
	lw $t1, -2544($fp)
	li $t2, 0
	bne $t1, $t2, label143
	j label144
label143:
	li $t0, 1
	sw $t0, -2540($fp)
label144:
	li $t0, 39587
	sw $t0, -2548($fp)
	lw $t0, -392($fp)
	sw $t0, -2552($fp)
	lw $t0, -2548($fp)
	lw $t1, -2552($fp)
	mul $t0, $t0, $t1
	sw $t0, -2556($fp)
	li $t0, 0
	lw $t1, -2556($fp)
	sub $t0, $t0, $t1
	sw $t0, -2560($fp)
	addi $sp, $sp, -4
	lw $t0, -2524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2560($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2564($fp)
	addi $sp, $sp, 16
	li $t0, 21751
	sw $t0, -2568($fp)
	lw $t0, -2564($fp)
	lw $t1, -2568($fp)
	sub $t0, $t0, $t1
	sw $t0, -2572($fp)
	addi $t0, $fp, -252
	sw $t0, -2576($fp)
	lw $t0, -320($fp)
	sw $t0, -2580($fp)
	li $t0, 4
	lw $t1, -2580($fp)
	mul $t0, $t0, $t1
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	lw $t1, -2576($fp)
	add $t0, $t0, $t1
	sw $t0, -2588($fp)
	lw $t0, -2588($fp)
	lw $t1, 0($t0)
	sw $t1, -2592($fp)
	li $t0, 51777
	sw $t0, -2596($fp)
	lw $t0, -2592($fp)
	lw $t1, -2596($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2600($fp)
	li $t0, 0
	sw $t0, -2604($fp)
	li $t0, 28090
	sw $t0, -2608($fp)
	li $t0, 0
	lw $t1, -2608($fp)
	sub $t0, $t0, $t1
	sw $t0, -2612($fp)
	lw $t1, -2612($fp)
	li $t2, 0
	bne $t1, $t2, label147
	j label146
label147:
	lw $t0, -2096($fp)
	sw $t0, -2616($fp)
	lw $t1, -2616($fp)
	li $t2, 0
	bne $t1, $t2, label145
	j label146
label145:
	li $t0, 1
	sw $t0, -2604($fp)
label146:
	addi $sp, $sp, -4
	lw $t0, -2572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2604($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2620($fp)
	addi $sp, $sp, 16
	lw $t0, -2520($fp)
	lw $t1, -2620($fp)
	mul $t0, $t0, $t1
	sw $t0, -2624($fp)
	lw $t1, -2624($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label138
label137:
	addi $t0, $fp, -28
	sw $t0, -2628($fp)
	li $t0, 0
	sw $t0, -2632($fp)
	lw $t0, -1688($fp)
	sw $t0, -2636($fp)
	lw $t1, -2636($fp)
	li $t2, 0
	bne $t1, $t2, label152
	j label154
label154:
	li $t0, 1086
	sw $t0, -2640($fp)
	lw $t1, -2640($fp)
	li $t2, 0
	bne $t1, $t2, label152
	j label153
label152:
	li $t0, 1
	sw $t0, -2632($fp)
label153:
	li $t0, 4
	lw $t1, -2632($fp)
	mul $t0, $t0, $t1
	sw $t0, -2644($fp)
	lw $t0, -2644($fp)
	lw $t1, -2628($fp)
	add $t0, $t0, $t1
	sw $t0, -2648($fp)
	lw $t0, -2648($fp)
	lw $t1, 0($t0)
	sw $t1, -2652($fp)
	li $t0, 0
	sw $t0, -2656($fp)
	addi $t0, $fp, -180
	sw $t0, -2660($fp)
	lw $t0, -536($fp)
	sw $t0, -2664($fp)
	li $t0, 4
	lw $t1, -2664($fp)
	mul $t0, $t0, $t1
	sw $t0, -2668($fp)
	lw $t0, -2668($fp)
	lw $t1, -2660($fp)
	add $t0, $t0, $t1
	sw $t0, -2672($fp)
	lw $t0, -2672($fp)
	lw $t1, 0($t0)
	sw $t1, -2676($fp)
	lw $t1, -2676($fp)
	li $t2, 0
	bne $t1, $t2, label157
	j label156
label157:
	li $t0, 31898
	sw $t0, -2680($fp)
	lw $t1, -2680($fp)
	li $t2, 0
	bne $t1, $t2, label155
	j label156
label155:
	li $t0, 1
	sw $t0, -2656($fp)
label156:
	lw $t0, -452($fp)
	sw $t0, -2684($fp)
	li $t0, 0
	lw $t1, -2684($fp)
	sub $t0, $t0, $t1
	sw $t0, -2688($fp)
	li $t0, 0
	sw $t0, -2692($fp)
	lw $t0, -1292($fp)
	sw $t0, -2696($fp)
	lw $t1, -2696($fp)
	li $t2, 0
	bne $t1, $t2, label160
	j label158
label160:
	li $t0, 8220
	sw $t0, -2700($fp)
	lw $t1, -2700($fp)
	li $t2, 0
	bne $t1, $t2, label158
	j label159
label158:
	li $t0, 1
	sw $t0, -2692($fp)
label159:
	addi $sp, $sp, -4
	lw $t0, -2656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2692($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2704($fp)
	addi $sp, $sp, 16
	lw $t1, -2652($fp)
	lw $t2, -2704($fp)
	bge $t1, $t2, label151
	j label149
label151:
	addi $t0, $fp, -140
	sw $t0, -2708($fp)
	li $t0, 0
	sw $t0, -2712($fp)
	li $t0, 2515
	sw $t0, -2716($fp)
	li $t0, 3160
	sw $t0, -2720($fp)
	lw $t1, -2716($fp)
	lw $t2, -2720($fp)
	bne $t1, $t2, label161
	j label162
label161:
	li $t0, 1
	sw $t0, -2712($fp)
label162:
	li $t0, 4
	lw $t1, -2712($fp)
	mul $t0, $t0, $t1
	sw $t0, -2724($fp)
	lw $t0, -2724($fp)
	lw $t1, -2708($fp)
	add $t0, $t0, $t1
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	lw $t1, 0($t0)
	sw $t1, -2732($fp)
	lw $t1, -2732($fp)
	li $t2, 0
	bne $t1, $t2, label148
	j label149
label148:
	li $t0, 55916
	sw $t0, -2736($fp)
	lw $t0, -2736($fp)
	sw $t0, -2740($fp)
	lw $t0, -2740($fp)
	sw $t0, -2744($fp)
	li $t0, 63204
	sw $t0, -2748($fp)
	lw $t0, -2748($fp)
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	sw $t0, -2756($fp)
	addi $t0, $fp, -140
	sw $t0, -2760($fp)
	li $t0, 0
	sw $t0, -2764($fp)
	lw $t0, -296($fp)
	sw $t0, -2768($fp)
	lw $t0, -668($fp)
	sw $t0, -2772($fp)
	lw $t0, -2768($fp)
	lw $t1, -2772($fp)
	mul $t0, $t0, $t1
	sw $t0, -2776($fp)
	li $t0, 39396
	sw $t0, -2780($fp)
	lw $t0, -2776($fp)
	lw $t1, -2780($fp)
	add $t0, $t0, $t1
	sw $t0, -2784($fp)
	li $t0, 0
	sw $t0, -2788($fp)
	li $t0, 48349
	sw $t0, -2792($fp)
	lw $t1, -2792($fp)
	li $t2, 0
	bne $t1, $t2, label169
	j label168
label168:
	li $t0, 1
	sw $t0, -2788($fp)
label169:
	lw $t1, -2784($fp)
	lw $t2, -2788($fp)
	bge $t1, $t2, label166
	j label167
label166:
	li $t0, 1
	sw $t0, -2764($fp)
label167:
	li $t0, 4
	lw $t1, -2764($fp)
	mul $t0, $t0, $t1
	sw $t0, -2796($fp)
	lw $t0, -2796($fp)
	lw $t1, -2760($fp)
	add $t0, $t0, $t1
	sw $t0, -2800($fp)
	lw $t0, -2800($fp)
	lw $t1, 0($t0)
	sw $t1, -2804($fp)
	lw $t1, -2804($fp)
	li $t2, 0
	bne $t1, $t2, label163
	j label164
label163:
	li $t0, 0
	sw $t0, -2808($fp)
	li $t0, 0
	sw $t0, -2812($fp)
	li $t0, 27618
	sw $t0, -2816($fp)
	li $t0, 0
	lw $t1, -2816($fp)
	sub $t0, $t0, $t1
	sw $t0, -2820($fp)
	li $t0, 0
	sw $t0, -2824($fp)
	li $t0, 6394
	sw $t0, -2828($fp)
	lw $t1, -2828($fp)
	li $t2, 0
	bne $t1, $t2, label175
	j label174
label174:
	li $t0, 1
	sw $t0, -2824($fp)
label175:
	li $t0, 38949
	sw $t0, -2832($fp)
	lw $t0, -2824($fp)
	lw $t1, -2832($fp)
	add $t0, $t0, $t1
	sw $t0, -2836($fp)
	lw $t1, -2820($fp)
	lw $t2, -2836($fp)
	bge $t1, $t2, label172
	j label173
label172:
	li $t0, 1
	sw $t0, -2812($fp)
label173:
	addi $t0, $fp, -72
	sw $t0, -2840($fp)
	li $t0, 0
	sw $t0, -2844($fp)
	lw $t0, -692($fp)
	sw $t0, -2848($fp)
	lw $t1, -2848($fp)
	li $t2, 0
	bne $t1, $t2, label178
	j label177
label178:
	li $t0, 30989
	sw $t0, -2852($fp)
	lw $t1, -2852($fp)
	li $t2, 0
	bne $t1, $t2, label176
	j label177
label176:
	li $t0, 1
	sw $t0, -2844($fp)
label177:
	li $t0, 4
	lw $t1, -2844($fp)
	mul $t0, $t0, $t1
	sw $t0, -2856($fp)
	lw $t0, -2856($fp)
	lw $t1, -2840($fp)
	add $t0, $t0, $t1
	sw $t0, -2860($fp)
	lw $t0, -2860($fp)
	lw $t1, 0($t0)
	sw $t1, -2864($fp)
	lw $t1, -2812($fp)
	lw $t2, -2864($fp)
	blt $t1, $t2, label170
	j label171
label170:
	li $t0, 1
	sw $t0, -2808($fp)
label171:
	lw $ra, -4($fp)
	lw $v0, -2808($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 11620
	sw $t0, -2868($fp)
	lw $t0, -2868($fp)
	sw $t0, -2872($fp)
	lw $t0, -2872($fp)
	sw $t0, -2876($fp)
	li $t0, 0
	sw $t0, -2880($fp)
	addi $t0, $fp, -180
	sw $t0, -2884($fp)
	li $t0, 0
	sw $t0, -2888($fp)
	li $t0, 0
	sw $t0, -2892($fp)
	li $t0, 32836
	sw $t0, -2896($fp)
	li $t0, 60617
	sw $t0, -2900($fp)
	lw $t1, -2896($fp)
	lw $t2, -2900($fp)
	ble $t1, $t2, label183
	j label184
label183:
	li $t0, 1
	sw $t0, -2892($fp)
label184:
	li $t0, 19333
	sw $t0, -2904($fp)
	lw $t1, -2892($fp)
	lw $t2, -2904($fp)
	bne $t1, $t2, label181
	j label182
label181:
	li $t0, 1
	sw $t0, -2888($fp)
label182:
	li $t0, 4
	lw $t1, -2888($fp)
	mul $t0, $t0, $t1
	sw $t0, -2908($fp)
	lw $t0, -2908($fp)
	lw $t1, -2884($fp)
	add $t0, $t0, $t1
	sw $t0, -2912($fp)
	lw $t0, -2912($fp)
	lw $t1, 0($t0)
	sw $t1, -2916($fp)
	lw $t1, -2916($fp)
	li $t2, 0
	bne $t1, $t2, label180
	j label179
label179:
	li $t0, 1
	sw $t0, -2880($fp)
label180:
	li $t0, 0
	sw $t0, -2920($fp)
	li $t0, 0
	sw $t0, -2924($fp)
	li $t0, 0
	sw $t0, -2928($fp)
	lw $t0, -668($fp)
	sw $t0, -2932($fp)
	lw $t1, -2932($fp)
	li $t2, 0
	bne $t1, $t2, label190
	j label189
label189:
	li $t0, 1
	sw $t0, -2928($fp)
label190:
	li $t0, 0
	lw $t1, -2928($fp)
	sub $t0, $t0, $t1
	sw $t0, -2936($fp)
	lw $t1, -2936($fp)
	li $t2, 0
	bne $t1, $t2, label188
	j label187
label187:
	li $t0, 1
	sw $t0, -2924($fp)
label188:
	li $t0, 0
	lw $t1, -2924($fp)
	sub $t0, $t0, $t1
	sw $t0, -2940($fp)
	li $t0, 0
	sw $t0, -2944($fp)
	lw $t0, -1280($fp)
	sw $t0, -2948($fp)
	lw $t1, -2948($fp)
	li $t2, 0
	bne $t1, $t2, label192
	j label191
label191:
	li $t0, 1
	sw $t0, -2944($fp)
label192:
	lw $t0, -464($fp)
	sw $t0, -2952($fp)
	lw $t0, -2944($fp)
	lw $t1, -2952($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2956($fp)
	lw $t0, -2084($fp)
	sw $t0, -2960($fp)
	lw $t0, -2120($fp)
	sw $t0, -2964($fp)
	lw $t0, -2960($fp)
	lw $t1, -2964($fp)
	sub $t0, $t0, $t1
	sw $t0, -2968($fp)
	lw $t0, 4($fp)
	sw $t0, -2972($fp)
	lw $t0, -464($fp)
	sw $t0, -2976($fp)
	lw $t0, -2972($fp)
	lw $t1, -2976($fp)
	mul $t0, $t0, $t1
	sw $t0, -2980($fp)
	lw $t0, -416($fp)
	sw $t0, -2984($fp)
	lw $t0, -2980($fp)
	lw $t1, -2984($fp)
	add $t0, $t0, $t1
	sw $t0, -2988($fp)
	addi $sp, $sp, -4
	lw $t0, -2956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2988($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2992($fp)
	addi $sp, $sp, 16
	lw $t1, -2940($fp)
	lw $t2, -2992($fp)
	bge $t1, $t2, label185
	j label186
label185:
	li $t0, 1
	sw $t0, -2920($fp)
label186:
	li $t0, 0
	sw $t0, -2996($fp)
	lw $t0, -452($fp)
	sw $t0, -3000($fp)
	li $t0, 20012
	sw $t0, -3004($fp)
	lw $t0, -3000($fp)
	lw $t1, -3004($fp)
	mul $t0, $t0, $t1
	sw $t0, -3008($fp)
	li $t0, 59932
	sw $t0, -3012($fp)
	lw $t0, -3008($fp)
	lw $t1, -3012($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3016($fp)
	addi $t0, $fp, -168
	sw $t0, -3020($fp)
	lw $t0, -2872($fp)
	sw $t0, -3024($fp)
	li $t0, 4
	lw $t1, -3024($fp)
	mul $t0, $t0, $t1
	sw $t0, -3028($fp)
	lw $t0, -3028($fp)
	lw $t1, -3020($fp)
	add $t0, $t0, $t1
	sw $t0, -3032($fp)
	lw $t0, -3032($fp)
	lw $t1, 0($t0)
	sw $t1, -3036($fp)
	lw $t0, -3016($fp)
	lw $t1, -3036($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3040($fp)
	li $t0, 0
	sw $t0, -3044($fp)
	lw $t0, -692($fp)
	sw $t0, -3048($fp)
	lw $t1, -3048($fp)
	li $t2, 0
	bne $t1, $t2, label196
	j label195
label195:
	li $t0, 1
	sw $t0, -3044($fp)
label196:
	li $t0, 0
	lw $t1, -3044($fp)
	sub $t0, $t0, $t1
	sw $t0, -3052($fp)
	lw $t0, -3040($fp)
	lw $t1, -3052($fp)
	sub $t0, $t0, $t1
	sw $t0, -3056($fp)
	li $t0, 41570
	sw $t0, -3060($fp)
	lw $t1, -3056($fp)
	lw $t2, -3060($fp)
	blt $t1, $t2, label193
	j label194
label193:
	li $t0, 1
	sw $t0, -2996($fp)
label194:
	li $t0, 0
	sw $t0, -3064($fp)
	li $t0, 0
	sw $t0, -3068($fp)
	li $t0, 49017
	sw $t0, -3072($fp)
	lw $t0, -1328($fp)
	sw $t0, -3076($fp)
	lw $t0, -3072($fp)
	lw $t1, -3076($fp)
	add $t0, $t0, $t1
	sw $t0, -3080($fp)
	lw $t1, -3080($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label202
label202:
	li $t0, 26619
	sw $t0, -3084($fp)
	lw $t1, -3084($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label201
label200:
	li $t0, 1
	sw $t0, -3068($fp)
label201:
	lw $t0, 12($fp)
	sw $t0, -3088($fp)
	li $t0, 36682
	sw $t0, -3092($fp)
	li $t0, 0
	lw $t1, -3092($fp)
	sub $t0, $t0, $t1
	sw $t0, -3096($fp)
	addi $sp, $sp, -4
	lw $t0, -3068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3096($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3100($fp)
	addi $sp, $sp, 16
	lw $t1, -3100($fp)
	li $t2, 0
	bne $t1, $t2, label199
	j label198
label199:
	li $t0, 17089
	sw $t0, -3104($fp)
	li $t0, 43559
	sw $t0, -3108($fp)
	li $t0, 42120
	sw $t0, -3112($fp)
	lw $t0, -3108($fp)
	lw $t1, -3112($fp)
	mul $t0, $t0, $t1
	sw $t0, -3116($fp)
	lw $t0, -3104($fp)
	lw $t1, -3116($fp)
	sub $t0, $t0, $t1
	sw $t0, -3120($fp)
	lw $t1, -3120($fp)
	li $t2, 0
	bne $t1, $t2, label197
	j label198
label197:
	li $t0, 1
	sw $t0, -3064($fp)
label198:
	j label165
label164:
label203:
	lw $t0, 12($fp)
	sw $t0, -3124($fp)
	lw $t1, -3124($fp)
	li $t2, 0
	bne $t1, $t2, label204
	j label205
label204:
	lw $t0, -1328($fp)
	sw $t0, -3128($fp)
	lw $t0, -3128($fp)
	sw $t0, -2740($fp)
	lw $t0, -2740($fp)
	sw $t0, -3132($fp)
	li $t0, 0
	sw $t0, -3136($fp)
	li $t0, 63966
	sw $t0, -3140($fp)
	lw $t1, -3140($fp)
	li $t2, 0
	bne $t1, $t2, label207
	j label206
label206:
	li $t0, 1
	sw $t0, -3136($fp)
label207:
	li $t0, 0
	sw $t0, -3144($fp)
	lw $t0, -644($fp)
	sw $t0, -3148($fp)
	lw $t1, -3148($fp)
	li $t2, 0
	bne $t1, $t2, label208
	j label211
label211:
	li $t0, 17258
	sw $t0, -3152($fp)
	lw $t1, -3152($fp)
	li $t2, 0
	bne $t1, $t2, label208
	j label210
label210:
	lw $t0, -1304($fp)
	sw $t0, -3156($fp)
	lw $t1, -3156($fp)
	li $t2, 0
	bne $t1, $t2, label208
	j label209
label208:
	li $t0, 1
	sw $t0, -3144($fp)
label209:
	li $t0, 0
	sw $t0, -3160($fp)
	li $t0, 29800
	sw $t0, -3164($fp)
	li $t0, 16172
	sw $t0, -3168($fp)
	lw $t0, -3164($fp)
	lw $t1, -3168($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3172($fp)
	li $t0, 55745
	sw $t0, -3176($fp)
	lw $t0, -3172($fp)
	lw $t1, -3176($fp)
	add $t0, $t0, $t1
	sw $t0, -3180($fp)
	li $t0, 0
	sw $t0, -3184($fp)
	lw $t0, -692($fp)
	sw $t0, -3188($fp)
	lw $t0, -392($fp)
	sw $t0, -3192($fp)
	lw $t0, -3188($fp)
	lw $t1, -3192($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3196($fp)
	lw $t0, -464($fp)
	sw $t0, -3200($fp)
	lw $t1, -3196($fp)
	lw $t2, -3200($fp)
	bge $t1, $t2, label215
	j label216
label215:
	li $t0, 1
	sw $t0, -3184($fp)
label216:
	li $t0, 0
	sw $t0, -3204($fp)
	lw $t0, 12($fp)
	sw $t0, -3208($fp)
	lw $t0, -464($fp)
	sw $t0, -3212($fp)
	lw $t0, -3208($fp)
	lw $t1, -3212($fp)
	mul $t0, $t0, $t1
	sw $t0, -3216($fp)
	lw $t0, -1328($fp)
	sw $t0, -3220($fp)
	lw $t1, -3216($fp)
	lw $t2, -3220($fp)
	bge $t1, $t2, label217
	j label218
label217:
	li $t0, 1
	sw $t0, -3204($fp)
label218:
	addi $sp, $sp, -4
	lw $t0, -3180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3204($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3224($fp)
	addi $sp, $sp, 16
	lw $t1, -3224($fp)
	li $t2, 0
	bne $t1, $t2, label214
	j label213
label214:
	li $t0, 51551
	sw $t0, -3228($fp)
	lw $t1, -3228($fp)
	li $t2, 0
	bne $t1, $t2, label212
	j label213
label212:
	li $t0, 1
	sw $t0, -3160($fp)
label213:
	li $t0, 0
	sw $t0, -3232($fp)
	li $t0, 0
	sw $t0, -3236($fp)
	li $t0, 45179
	sw $t0, -3240($fp)
	lw $t0, -668($fp)
	sw $t0, -3244($fp)
	lw $t1, -3240($fp)
	lw $t2, -3244($fp)
	ble $t1, $t2, label221
	j label222
label221:
	li $t0, 1
	sw $t0, -3236($fp)
label222:
	lw $t0, -464($fp)
	sw $t0, -3248($fp)
	lw $t1, -3236($fp)
	lw $t2, -3248($fp)
	bgt $t1, $t2, label219
	j label220
label219:
	li $t0, 1
	sw $t0, -3232($fp)
label220:
	addi $sp, $sp, -4
	lw $t0, -3144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3232($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3252($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -3132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3252($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3256($fp)
	addi $sp, $sp, 16
	j label203
label205:
label165:
	li $t0, 0
	sw $t0, -3260($fp)
	addi $t0, $fp, -20
	sw $t0, -3264($fp)
	li $t0, 0
	sw $t0, -3268($fp)
	lw $t0, -2752($fp)
	sw $t0, -3272($fp)
	li $t0, 17913
	sw $t0, -3276($fp)
	lw $t1, -3272($fp)
	lw $t2, -3276($fp)
	bne $t1, $t2, label227
	j label226
label227:
	lw $t0, -1328($fp)
	sw $t0, -3280($fp)
	lw $t1, -3280($fp)
	li $t2, 0
	bne $t1, $t2, label225
	j label226
label225:
	li $t0, 1
	sw $t0, -3268($fp)
label226:
	li $t0, 4
	lw $t1, -3268($fp)
	mul $t0, $t0, $t1
	sw $t0, -3284($fp)
	lw $t0, -3284($fp)
	lw $t1, -3264($fp)
	add $t0, $t0, $t1
	sw $t0, -3288($fp)
	lw $t0, -3288($fp)
	lw $t1, 0($t0)
	sw $t1, -3292($fp)
	lw $t1, -3292($fp)
	li $t2, 0
	bne $t1, $t2, label224
	j label223
label223:
	li $t0, 1
	sw $t0, -3260($fp)
label224:
	li $t0, 19773
	sw $t0, -3328($fp)
	lw $t0, -3328($fp)
	sw $t0, -3332($fp)
	lw $t0, -3332($fp)
	sw $t0, -3336($fp)
	li $t0, 1590
	sw $t0, -3340($fp)
	lw $t0, -3340($fp)
	sw $t0, -3344($fp)
	lw $t0, -3344($fp)
	sw $t0, -3348($fp)
	li $t0, 8293
	sw $t0, -3352($fp)
	lw $t0, -3352($fp)
	sw $t0, -3356($fp)
	lw $t0, -3356($fp)
	sw $t0, -3360($fp)
	li $t0, 17441
	sw $t0, -3364($fp)
	lw $t0, -3364($fp)
	sw $t0, -3368($fp)
	lw $t0, -3368($fp)
	sw $t0, -3372($fp)
	li $t0, 40986
	sw $t0, -3376($fp)
	addi $t0, $fp, -3324
	sw $t0, -3380($fp)
	li $t0, 0
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
	li $t0, 56642
	sw $t0, -3400($fp)
	addi $t0, $fp, -3324
	sw $t0, -3404($fp)
	li $t0, 1
	sw $t0, -3408($fp)
	lw $t0, -3408($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3412($fp)
	lw $t0, -3404($fp)
	lw $t1, -3412($fp)
	add $t0, $t0, $t1
	sw $t0, -3416($fp)
	lw $t0, -3400($fp)
	lw $t1, -3416($fp)
	sw $t0, 0($t1)
	lw $t0, -3416($fp)
	lw $t1, 0($t0)
	sw $t1, -3420($fp)
	li $t0, 45059
	sw $t0, -3424($fp)
	addi $t0, $fp, -3324
	sw $t0, -3428($fp)
	li $t0, 2
	sw $t0, -3432($fp)
	lw $t0, -3432($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3436($fp)
	lw $t0, -3428($fp)
	lw $t1, -3436($fp)
	add $t0, $t0, $t1
	sw $t0, -3440($fp)
	lw $t0, -3424($fp)
	lw $t1, -3440($fp)
	sw $t0, 0($t1)
	lw $t0, -3440($fp)
	lw $t1, 0($t0)
	sw $t1, -3444($fp)
	li $t0, 47380
	sw $t0, -3448($fp)
	addi $t0, $fp, -3324
	sw $t0, -3452($fp)
	li $t0, 3
	sw $t0, -3456($fp)
	lw $t0, -3456($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3460($fp)
	lw $t0, -3452($fp)
	lw $t1, -3460($fp)
	add $t0, $t0, $t1
	sw $t0, -3464($fp)
	lw $t0, -3448($fp)
	lw $t1, -3464($fp)
	sw $t0, 0($t1)
	lw $t0, -3464($fp)
	lw $t1, 0($t0)
	sw $t1, -3468($fp)
	li $t0, 30056
	sw $t0, -3472($fp)
	addi $t0, $fp, -3324
	sw $t0, -3476($fp)
	li $t0, 4
	sw $t0, -3480($fp)
	lw $t0, -3480($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3484($fp)
	lw $t0, -3476($fp)
	lw $t1, -3484($fp)
	add $t0, $t0, $t1
	sw $t0, -3488($fp)
	lw $t0, -3472($fp)
	lw $t1, -3488($fp)
	sw $t0, 0($t1)
	lw $t0, -3488($fp)
	lw $t1, 0($t0)
	sw $t1, -3492($fp)
	li $t0, 10513
	sw $t0, -3496($fp)
	addi $t0, $fp, -3324
	sw $t0, -3500($fp)
	li $t0, 5
	sw $t0, -3504($fp)
	lw $t0, -3504($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3508($fp)
	lw $t0, -3500($fp)
	lw $t1, -3508($fp)
	add $t0, $t0, $t1
	sw $t0, -3512($fp)
	lw $t0, -3496($fp)
	lw $t1, -3512($fp)
	sw $t0, 0($t1)
	lw $t0, -3512($fp)
	lw $t1, 0($t0)
	sw $t1, -3516($fp)
	li $t0, 59000
	sw $t0, -3520($fp)
	addi $t0, $fp, -3324
	sw $t0, -3524($fp)
	li $t0, 6
	sw $t0, -3528($fp)
	lw $t0, -3528($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3532($fp)
	lw $t0, -3524($fp)
	lw $t1, -3532($fp)
	add $t0, $t0, $t1
	sw $t0, -3536($fp)
	lw $t0, -3520($fp)
	lw $t1, -3536($fp)
	sw $t0, 0($t1)
	lw $t0, -3536($fp)
	lw $t1, 0($t0)
	sw $t1, -3540($fp)
	li $t0, 62892
	sw $t0, -3544($fp)
	addi $t0, $fp, -3324
	sw $t0, -3548($fp)
	li $t0, 7
	sw $t0, -3552($fp)
	lw $t0, -3552($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3556($fp)
	lw $t0, -3548($fp)
	lw $t1, -3556($fp)
	add $t0, $t0, $t1
	sw $t0, -3560($fp)
	lw $t0, -3544($fp)
	lw $t1, -3560($fp)
	sw $t0, 0($t1)
	lw $t0, -3560($fp)
	lw $t1, 0($t0)
	sw $t1, -3564($fp)
	li $t0, 5594
	sw $t0, -3568($fp)
	lw $t0, -3568($fp)
	sw $t0, -3572($fp)
	lw $t0, -3572($fp)
	sw $t0, -3576($fp)
	lw $t0, -3332($fp)
	sw $t0, -3580($fp)
	lw $t0, -3580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3344($fp)
	sw $t0, -3584($fp)
	lw $t0, -3584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3356($fp)
	sw $t0, -3588($fp)
	lw $t0, -3588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3368($fp)
	sw $t0, -3592($fp)
	lw $t0, -3592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3324
	sw $t0, -3596($fp)
	li $t0, 0
	sw $t0, -3600($fp)
	li $t0, 4
	lw $t1, -3600($fp)
	mul $t0, $t0, $t1
	sw $t0, -3604($fp)
	lw $t0, -3604($fp)
	lw $t1, -3596($fp)
	add $t0, $t0, $t1
	sw $t0, -3608($fp)
	lw $t0, -3608($fp)
	lw $t1, 0($t0)
	sw $t1, -3612($fp)
	lw $t0, -3612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3324
	sw $t0, -3616($fp)
	li $t0, 1
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
	addi $t0, $fp, -3324
	sw $t0, -3636($fp)
	li $t0, 2
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
	addi $t0, $fp, -3324
	sw $t0, -3656($fp)
	li $t0, 3
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
	addi $t0, $fp, -3324
	sw $t0, -3676($fp)
	li $t0, 4
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
	addi $t0, $fp, -3324
	sw $t0, -3696($fp)
	li $t0, 5
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
	addi $t0, $fp, -3324
	sw $t0, -3716($fp)
	li $t0, 6
	sw $t0, -3720($fp)
	li $t0, 4
	lw $t1, -3720($fp)
	mul $t0, $t0, $t1
	sw $t0, -3724($fp)
	lw $t0, -3724($fp)
	lw $t1, -3716($fp)
	add $t0, $t0, $t1
	sw $t0, -3728($fp)
	lw $t0, -3728($fp)
	lw $t1, 0($t0)
	sw $t1, -3732($fp)
	lw $t0, -3732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3324
	sw $t0, -3736($fp)
	li $t0, 7
	sw $t0, -3740($fp)
	li $t0, 4
	lw $t1, -3740($fp)
	mul $t0, $t0, $t1
	sw $t0, -3744($fp)
	lw $t0, -3744($fp)
	lw $t1, -3736($fp)
	add $t0, $t0, $t1
	sw $t0, -3748($fp)
	lw $t0, -3748($fp)
	lw $t1, 0($t0)
	sw $t1, -3752($fp)
	lw $t0, -3752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3572($fp)
	sw $t0, -3756($fp)
	lw $t0, -3756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3760($fp)
	lw $t0, -692($fp)
	sw $t0, -3764($fp)
	li $t0, 0
	lw $t1, -3764($fp)
	sub $t0, $t0, $t1
	sw $t0, -3768($fp)
	lw $t1, -3768($fp)
	li $t2, 0
	bne $t1, $t2, label229
	j label228
label228:
	li $t0, 1
	sw $t0, -3760($fp)
label229:
	li $t0, 0
	lw $t1, -3760($fp)
	sub $t0, $t0, $t1
	sw $t0, -3772($fp)
	lw $ra, -4($fp)
	lw $v0, -3772($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -2396($fp)
	sw $t0, -3776($fp)
	li $t0, 65526
	sw $t0, -3780($fp)
	lw $t0, -3780($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -3784($fp)
	li $t0, 0
	sw $t0, -3788($fp)
	li $t0, 12797
	sw $t0, -3792($fp)
	li $t0, 17368
	sw $t0, -3796($fp)
	lw $t1, -3792($fp)
	lw $t2, -3796($fp)
	ble $t1, $t2, label230
	j label231
label230:
	li $t0, 1
	sw $t0, -3788($fp)
label231:
	addi $sp, $sp, -4
	lw $t0, -3776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3788($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3800($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -3324
	sw $t0, -3804($fp)
	lw $t0, -320($fp)
	sw $t0, -3808($fp)
	lw $t0, -3808($fp)
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	sw $t0, -3812($fp)
	li $t0, 4
	lw $t1, -3812($fp)
	mul $t0, $t0, $t1
	sw $t0, -3816($fp)
	lw $t0, -3816($fp)
	lw $t1, -3804($fp)
	add $t0, $t0, $t1
	sw $t0, -3820($fp)
	lw $t0, -3820($fp)
	lw $t1, 0($t0)
	sw $t1, -3824($fp)
	lw $t1, -3824($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label233
label235:
	li $t0, 54368
	sw $t0, -3828($fp)
	lw $t1, -3828($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label233
label232:
	li $t0, 0
	sw $t0, -3832($fp)
	lw $t0, -2036($fp)
	sw $t0, -3836($fp)
	li $t0, 54050
	sw $t0, -3840($fp)
	lw $t0, -3836($fp)
	lw $t1, -3840($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3844($fp)
	lw $t0, -332($fp)
	sw $t0, -3848($fp)
	lw $t0, -3844($fp)
	lw $t1, -3848($fp)
	add $t0, $t0, $t1
	sw $t0, -3852($fp)
	li $t0, 0
	sw $t0, -3856($fp)
	li $t0, 49007
	sw $t0, -3860($fp)
	lw $t0, -3572($fp)
	sw $t0, -3864($fp)
	lw $t1, -3860($fp)
	lw $t2, -3864($fp)
	bge $t1, $t2, label240
	j label241
label240:
	li $t0, 1
	sw $t0, -3856($fp)
label241:
	lw $t1, -3852($fp)
	lw $t2, -3856($fp)
	bne $t1, $t2, label239
	j label237
label239:
	addi $t0, $fp, -220
	sw $t0, -3868($fp)
	lw $t0, -3332($fp)
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
	lw $t1, -3884($fp)
	li $t2, 0
	bne $t1, $t2, label238
	j label237
label238:
	li $t0, 15451
	sw $t0, -3888($fp)
	addi $t0, $fp, -224
	sw $t0, -3892($fp)
	lw $t0, -560($fp)
	sw $t0, -3896($fp)
	li $t0, 4
	lw $t1, -3896($fp)
	mul $t0, $t0, $t1
	sw $t0, -3900($fp)
	lw $t0, -3900($fp)
	lw $t1, -3892($fp)
	add $t0, $t0, $t1
	sw $t0, -3904($fp)
	lw $t0, -3904($fp)
	lw $t1, 0($t0)
	sw $t1, -3908($fp)
	lw $t0, -3888($fp)
	lw $t1, -3908($fp)
	mul $t0, $t0, $t1
	sw $t0, -3912($fp)
	lw $t1, -3912($fp)
	li $t2, 0
	bne $t1, $t2, label236
	j label237
label236:
	li $t0, 1
	sw $t0, -3832($fp)
label237:
	j label234
label233:
	li $t0, 0
	sw $t0, -3916($fp)
	li $t0, 0
	sw $t0, -3920($fp)
	li $t0, 50782
	sw $t0, -3924($fp)
	li $t0, 56831
	sw $t0, -3928($fp)
	lw $t1, -3924($fp)
	lw $t2, -3928($fp)
	beq $t1, $t2, label244
	j label246
label246:
	li $t0, 8208
	sw $t0, -3932($fp)
	lw $t1, -3932($fp)
	li $t2, 0
	bne $t1, $t2, label244
	j label245
label244:
	li $t0, 1
	sw $t0, -3920($fp)
label245:
	li $t0, 57572
	sw $t0, -3936($fp)
	lw $t0, -2048($fp)
	sw $t0, -3940($fp)
	lw $t0, -3936($fp)
	lw $t1, -3940($fp)
	mul $t0, $t0, $t1
	sw $t0, -3944($fp)
	li $t0, 0
	sw $t0, -3948($fp)
	li $t0, 5603
	sw $t0, -3952($fp)
	lw $t0, -3344($fp)
	sw $t0, -3956($fp)
	lw $t1, -3952($fp)
	lw $t2, -3956($fp)
	ble $t1, $t2, label247
	j label249
label249:
	li $t0, 27031
	sw $t0, -3960($fp)
	lw $t1, -3960($fp)
	li $t2, 0
	bne $t1, $t2, label247
	j label248
label247:
	li $t0, 1
	sw $t0, -3948($fp)
label248:
	addi $sp, $sp, -4
	lw $t0, -3920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3948($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3964($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -3964($fp)
	sub $t0, $t0, $t1
	sw $t0, -3968($fp)
	li $t0, 40991
	sw $t0, -3972($fp)
	lw $t0, -1328($fp)
	sw $t0, -3976($fp)
	lw $t0, -3972($fp)
	lw $t1, -3976($fp)
	mul $t0, $t0, $t1
	sw $t0, -3980($fp)
	lw $t1, -3968($fp)
	lw $t2, -3980($fp)
	bne $t1, $t2, label242
	j label243
label242:
	li $t0, 1
	sw $t0, -3916($fp)
label243:
	lw $t0, -3916($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -3984($fp)
label234:
label250:
	li $t0, 0
	sw $t0, -3988($fp)
	li $t0, 0
	sw $t0, -3992($fp)
	li $t0, 60760
	sw $t0, -3996($fp)
	lw $t1, -3996($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label255
label255:
	li $t0, 1
	sw $t0, -3992($fp)
label256:
	li $t0, 45240
	sw $t0, -4000($fp)
	lw $t1, -3992($fp)
	lw $t2, -4000($fp)
	ble $t1, $t2, label253
	j label254
label253:
	li $t0, 1
	sw $t0, -3988($fp)
label254:
	li $t0, 39421
	sw $t0, -4004($fp)
	li $t0, 0
	sw $t0, -4008($fp)
	li $t0, 42847
	sw $t0, -4012($fp)
	lw $t1, -4012($fp)
	li $t2, 0
	bne $t1, $t2, label258
	j label259
label259:
	li $t0, 25466
	sw $t0, -4016($fp)
	lw $t1, -4016($fp)
	li $t2, 0
	bne $t1, $t2, label257
	j label258
label257:
	li $t0, 1
	sw $t0, -4008($fp)
label258:
	addi $sp, $sp, -4
	lw $t0, -3988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4008($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4020($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -4024($fp)
	li $t0, 0
	sw $t0, -4028($fp)
	lw $t0, -464($fp)
	sw $t0, -4032($fp)
	lw $t0, 4($fp)
	sw $t0, -4036($fp)
	lw $t1, -4032($fp)
	lw $t2, -4036($fp)
	bge $t1, $t2, label262
	j label263
label262:
	li $t0, 1
	sw $t0, -4028($fp)
label263:
	li $t0, 62681
	sw $t0, -4040($fp)
	lw $t1, -4028($fp)
	lw $t2, -4040($fp)
	bne $t1, $t2, label260
	j label261
label260:
	li $t0, 1
	sw $t0, -4024($fp)
label261:
	li $t0, 41011
	sw $t0, -4044($fp)
	li $t0, 3518
	sw $t0, -4048($fp)
	lw $t0, -4044($fp)
	lw $t1, -4048($fp)
	mul $t0, $t0, $t1
	sw $t0, -4052($fp)
	li $t0, 0
	lw $t1, -4052($fp)
	sub $t0, $t0, $t1
	sw $t0, -4056($fp)
	lw $t0, -3356($fp)
	sw $t0, -4060($fp)
	lw $t0, -4060($fp)
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	sw $t0, -4064($fp)
	addi $sp, $sp, -4
	lw $t0, -4024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4064($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4068($fp)
	addi $sp, $sp, 16
	lw $t0, -4020($fp)
	lw $t1, -4068($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4072($fp)
	li $t0, 16461
	sw $t0, -4076($fp)
	li $t0, 60160
	sw $t0, -4080($fp)
	lw $t0, -4076($fp)
	lw $t1, -4080($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4084($fp)
	lw $t0, -2072($fp)
	sw $t0, -4088($fp)
	lw $t0, -332($fp)
	sw $t0, -4092($fp)
	lw $t0, -4088($fp)
	lw $t1, -4092($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4096($fp)
	lw $t0, -4084($fp)
	lw $t1, -4096($fp)
	add $t0, $t0, $t1
	sw $t0, -4100($fp)
	lw $t1, -4072($fp)
	lw $t2, -4100($fp)
	ble $t1, $t2, label251
	j label252
label251:
	li $t0, 42205
	sw $t0, -4104($fp)
	li $t0, 0
	lw $t1, -4104($fp)
	sub $t0, $t0, $t1
	sw $t0, -4108($fp)
	lw $t0, -4108($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -4112($fp)
	j label250
label252:
	li $t0, 52718
	sw $t0, -4116($fp)
	li $t0, 57306
	sw $t0, -4120($fp)
	lw $t0, -4116($fp)
	lw $t1, -4120($fp)
	add $t0, $t0, $t1
	sw $t0, -4124($fp)
	li $t0, 0
	sw $t0, -4128($fp)
	li $t0, 63841
	sw $t0, -4132($fp)
	li $t0, 0
	lw $t1, -4132($fp)
	sub $t0, $t0, $t1
	sw $t0, -4136($fp)
	li $t0, 24680
	sw $t0, -4140($fp)
	lw $t1, -4136($fp)
	lw $t2, -4140($fp)
	bne $t1, $t2, label267
	j label268
label267:
	li $t0, 1
	sw $t0, -4128($fp)
label268:
	li $t0, 0
	sw $t0, -4144($fp)
	li $t0, 0
	sw $t0, -4148($fp)
	lw $t0, 12($fp)
	sw $t0, -4152($fp)
	lw $t0, -440($fp)
	sw $t0, -4156($fp)
	lw $t1, -4152($fp)
	lw $t2, -4156($fp)
	beq $t1, $t2, label271
	j label272
label271:
	li $t0, 1
	sw $t0, -4148($fp)
label272:
	lw $t0, -320($fp)
	sw $t0, -4160($fp)
	lw $t1, -4148($fp)
	lw $t2, -4160($fp)
	bne $t1, $t2, label269
	j label270
label269:
	li $t0, 1
	sw $t0, -4144($fp)
label270:
	addi $sp, $sp, -4
	lw $t0, -4124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4144($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4164($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -180
	sw $t0, -4168($fp)
	li $t0, 1
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
	li $t0, 0
	sw $t0, -4188($fp)
	lw $t0, -3368($fp)
	sw $t0, -4192($fp)
	li $t0, 0
	lw $t1, -4192($fp)
	sub $t0, $t0, $t1
	sw $t0, -4196($fp)
	li $t0, 33521
	sw $t0, -4200($fp)
	lw $t1, -4196($fp)
	lw $t2, -4200($fp)
	bne $t1, $t2, label273
	j label274
label273:
	li $t0, 1
	sw $t0, -4188($fp)
label274:
	li $t0, 8851
	sw $t0, -4204($fp)
	lw $t0, -284($fp)
	sw $t0, -4208($fp)
	lw $t0, -4204($fp)
	lw $t1, -4208($fp)
	add $t0, $t0, $t1
	sw $t0, -4212($fp)
	li $t0, 0
	sw $t0, -4216($fp)
	li $t0, 58935
	sw $t0, -4220($fp)
	lw $t0, -3332($fp)
	sw $t0, -4224($fp)
	lw $t0, -4220($fp)
	lw $t1, -4224($fp)
	add $t0, $t0, $t1
	sw $t0, -4228($fp)
	li $t0, 27918
	sw $t0, -4232($fp)
	lw $t0, -4228($fp)
	lw $t1, -4232($fp)
	sub $t0, $t0, $t1
	sw $t0, -4236($fp)
	li $t0, 0
	sw $t0, -4240($fp)
	lw $t0, -596($fp)
	sw $t0, -4244($fp)
	li $t0, 39404
	sw $t0, -4248($fp)
	lw $t0, -4244($fp)
	lw $t1, -4248($fp)
	add $t0, $t0, $t1
	sw $t0, -4252($fp)
	li $t0, 58302
	sw $t0, -4256($fp)
	lw $t1, -4252($fp)
	lw $t2, -4256($fp)
	bgt $t1, $t2, label277
	j label278
label277:
	li $t0, 1
	sw $t0, -4240($fp)
label278:
	li $t0, 4567
	sw $t0, -4260($fp)
	lw $t0, -4260($fp)
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	sw $t0, -4264($fp)
	addi $sp, $sp, -4
	lw $t0, -4236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4264($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4268($fp)
	addi $sp, $sp, 16
	li $t0, 41774
	sw $t0, -4272($fp)
	lw $t1, -4268($fp)
	lw $t2, -4272($fp)
	ble $t1, $t2, label275
	j label276
label275:
	li $t0, 1
	sw $t0, -4216($fp)
label276:
	addi $sp, $sp, -4
	lw $t0, -4188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4216($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4276($fp)
	addi $sp, $sp, 16
	lw $t0, -4184($fp)
	lw $t1, -4276($fp)
	mul $t0, $t0, $t1
	sw $t0, -4280($fp)
	lw $t1, -4164($fp)
	lw $t2, -4280($fp)
	beq $t1, $t2, label264
	j label265
label264:
	lw $t0, -2060($fp)
	sw $t0, -4284($fp)
	li $t0, 0
	lw $t1, -4284($fp)
	sub $t0, $t0, $t1
	sw $t0, -4288($fp)
	li $t0, 0
	lw $t1, -4288($fp)
	sub $t0, $t0, $t1
	sw $t0, -4292($fp)
	j label266
label265:
	li $t0, 0
	sw $t0, -4296($fp)
	li $t0, 0
	sw $t0, -4300($fp)
	lw $t0, -1784($fp)
	sw $t0, -4304($fp)
	lw $t1, -4304($fp)
	li $t2, 0
	bne $t1, $t2, label282
	j label281
label281:
	li $t0, 1
	sw $t0, -4300($fp)
label282:
	li $t0, 0
	sw $t0, -4308($fp)
	lw $t0, -392($fp)
	sw $t0, -4312($fp)
	lw $t1, -4312($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label283
label283:
	li $t0, 1
	sw $t0, -4308($fp)
label284:
	lw $t0, -4300($fp)
	lw $t1, -4308($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4316($fp)
	li $t0, 0
	sw $t0, -4320($fp)
	lw $t0, 4($fp)
	sw $t0, -4324($fp)
	lw $t1, -4324($fp)
	li $t2, 0
	bne $t1, $t2, label286
	j label285
label285:
	li $t0, 1
	sw $t0, -4320($fp)
label286:
	li $t0, 0
	sw $t0, -4328($fp)
	lw $t0, -1688($fp)
	sw $t0, -4332($fp)
	lw $t1, -4332($fp)
	li $t2, 0
	bne $t1, $t2, label288
	j label287
label287:
	li $t0, 1
	sw $t0, -4328($fp)
label288:
	lw $t0, -4320($fp)
	lw $t1, -4328($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4336($fp)
	li $t0, 0
	lw $t1, -4336($fp)
	sub $t0, $t0, $t1
	sw $t0, -4340($fp)
	lw $t1, -4316($fp)
	lw $t2, -4340($fp)
	bne $t1, $t2, label279
	j label280
label279:
	li $t0, 1
	sw $t0, -4296($fp)
label280:
label266:
	li $t0, 3269
	sw $t0, -4376($fp)
	addi $t0, $fp, -4372
	sw $t0, -4380($fp)
	li $t0, 0
	sw $t0, -4384($fp)
	lw $t0, -4384($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4388($fp)
	lw $t0, -4380($fp)
	lw $t1, -4388($fp)
	add $t0, $t0, $t1
	sw $t0, -4392($fp)
	lw $t0, -4376($fp)
	lw $t1, -4392($fp)
	sw $t0, 0($t1)
	lw $t0, -4392($fp)
	lw $t1, 0($t0)
	sw $t1, -4396($fp)
	li $t0, 887
	sw $t0, -4400($fp)
	addi $t0, $fp, -4372
	sw $t0, -4404($fp)
	li $t0, 1
	sw $t0, -4408($fp)
	lw $t0, -4408($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4412($fp)
	lw $t0, -4404($fp)
	lw $t1, -4412($fp)
	add $t0, $t0, $t1
	sw $t0, -4416($fp)
	lw $t0, -4400($fp)
	lw $t1, -4416($fp)
	sw $t0, 0($t1)
	lw $t0, -4416($fp)
	lw $t1, 0($t0)
	sw $t1, -4420($fp)
	li $t0, 18767
	sw $t0, -4424($fp)
	addi $t0, $fp, -4372
	sw $t0, -4428($fp)
	li $t0, 2
	sw $t0, -4432($fp)
	lw $t0, -4432($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4436($fp)
	lw $t0, -4428($fp)
	lw $t1, -4436($fp)
	add $t0, $t0, $t1
	sw $t0, -4440($fp)
	lw $t0, -4424($fp)
	lw $t1, -4440($fp)
	sw $t0, 0($t1)
	lw $t0, -4440($fp)
	lw $t1, 0($t0)
	sw $t1, -4444($fp)
	li $t0, 60100
	sw $t0, -4448($fp)
	addi $t0, $fp, -4372
	sw $t0, -4452($fp)
	li $t0, 3
	sw $t0, -4456($fp)
	lw $t0, -4456($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4460($fp)
	lw $t0, -4452($fp)
	lw $t1, -4460($fp)
	add $t0, $t0, $t1
	sw $t0, -4464($fp)
	lw $t0, -4448($fp)
	lw $t1, -4464($fp)
	sw $t0, 0($t1)
	lw $t0, -4464($fp)
	lw $t1, 0($t0)
	sw $t1, -4468($fp)
	li $t0, 9095
	sw $t0, -4472($fp)
	addi $t0, $fp, -4372
	sw $t0, -4476($fp)
	li $t0, 4
	sw $t0, -4480($fp)
	lw $t0, -4480($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4484($fp)
	lw $t0, -4476($fp)
	lw $t1, -4484($fp)
	add $t0, $t0, $t1
	sw $t0, -4488($fp)
	lw $t0, -4472($fp)
	lw $t1, -4488($fp)
	sw $t0, 0($t1)
	lw $t0, -4488($fp)
	lw $t1, 0($t0)
	sw $t1, -4492($fp)
	li $t0, 59759
	sw $t0, -4496($fp)
	addi $t0, $fp, -4372
	sw $t0, -4500($fp)
	li $t0, 5
	sw $t0, -4504($fp)
	lw $t0, -4504($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4508($fp)
	lw $t0, -4500($fp)
	lw $t1, -4508($fp)
	add $t0, $t0, $t1
	sw $t0, -4512($fp)
	lw $t0, -4496($fp)
	lw $t1, -4512($fp)
	sw $t0, 0($t1)
	lw $t0, -4512($fp)
	lw $t1, 0($t0)
	sw $t1, -4516($fp)
	li $t0, 37411
	sw $t0, -4520($fp)
	addi $t0, $fp, -4372
	sw $t0, -4524($fp)
	li $t0, 6
	sw $t0, -4528($fp)
	lw $t0, -4528($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4532($fp)
	lw $t0, -4524($fp)
	lw $t1, -4532($fp)
	add $t0, $t0, $t1
	sw $t0, -4536($fp)
	lw $t0, -4520($fp)
	lw $t1, -4536($fp)
	sw $t0, 0($t1)
	lw $t0, -4536($fp)
	lw $t1, 0($t0)
	sw $t1, -4540($fp)
	li $t0, 34561
	sw $t0, -4544($fp)
	addi $t0, $fp, -4372
	sw $t0, -4548($fp)
	li $t0, 7
	sw $t0, -4552($fp)
	lw $t0, -4552($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4556($fp)
	lw $t0, -4548($fp)
	lw $t1, -4556($fp)
	add $t0, $t0, $t1
	sw $t0, -4560($fp)
	lw $t0, -4544($fp)
	lw $t1, -4560($fp)
	sw $t0, 0($t1)
	lw $t0, -4560($fp)
	lw $t1, 0($t0)
	sw $t1, -4564($fp)
	li $t0, 0
	sw $t0, -4568($fp)
	addi $t0, $fp, -224
	sw $t0, -4572($fp)
	li $t0, 33644
	sw $t0, -4576($fp)
	li $t0, 32636
	sw $t0, -4580($fp)
	lw $t0, -4576($fp)
	lw $t1, -4580($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4584($fp)
	lw $t0, -620($fp)
	sw $t0, -4588($fp)
	lw $t0, -4584($fp)
	lw $t1, -4588($fp)
	sub $t0, $t0, $t1
	sw $t0, -4592($fp)
	li $t0, 4
	lw $t1, -4592($fp)
	mul $t0, $t0, $t1
	sw $t0, -4596($fp)
	lw $t0, -4596($fp)
	lw $t1, -4572($fp)
	add $t0, $t0, $t1
	sw $t0, -4600($fp)
	lw $t0, -4600($fp)
	lw $t1, 0($t0)
	sw $t1, -4604($fp)
	addi $t0, $fp, -4372
	sw $t0, -4608($fp)
	lw $t0, 8($fp)
	sw $t0, -4612($fp)
	li $t0, 14265
	sw $t0, -4616($fp)
	lw $t0, -4612($fp)
	lw $t1, -4616($fp)
	add $t0, $t0, $t1
	sw $t0, -4620($fp)
	li $t0, 4
	lw $t1, -4620($fp)
	mul $t0, $t0, $t1
	sw $t0, -4624($fp)
	lw $t0, -4624($fp)
	lw $t1, -4608($fp)
	add $t0, $t0, $t1
	sw $t0, -4628($fp)
	lw $t0, -4628($fp)
	lw $t1, 0($t0)
	sw $t1, -4632($fp)
	lw $t1, -4604($fp)
	lw $t2, -4632($fp)
	blt $t1, $t2, label289
	j label290
label289:
	li $t0, 1
	sw $t0, -4568($fp)
label290:
	j label150
label149:
label291:
	li $t0, 9120
	sw $t0, -4636($fp)
	addi $t0, $fp, -12
	sw $t0, -4640($fp)
	lw $t0, -308($fp)
	sw $t0, -4644($fp)
	li $t0, 4
	lw $t1, -4644($fp)
	mul $t0, $t0, $t1
	sw $t0, -4648($fp)
	lw $t0, -4648($fp)
	lw $t1, -4640($fp)
	add $t0, $t0, $t1
	sw $t0, -4652($fp)
	lw $t0, -4652($fp)
	lw $t1, 0($t0)
	sw $t1, -4656($fp)
	li $t0, 0
	lw $t1, -4656($fp)
	sub $t0, $t0, $t1
	sw $t0, -4660($fp)
	li $t0, 0
	lw $t1, -4660($fp)
	sub $t0, $t0, $t1
	sw $t0, -4664($fp)
	lw $t1, -4636($fp)
	lw $t2, -4664($fp)
	bgt $t1, $t2, label292
	j label293
label292:
	li $t0, 36154
	sw $t0, -4668($fp)
	li $t0, 11411
	sw $t0, -4672($fp)
	li $t0, 25581
	sw $t0, -4676($fp)
	lw $t0, -4672($fp)
	lw $t1, -4676($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4680($fp)
	li $t0, 30778
	sw $t0, -4684($fp)
	lw $t0, -4680($fp)
	lw $t1, -4684($fp)
	mul $t0, $t0, $t1
	sw $t0, -4688($fp)
	lw $t0, -4668($fp)
	lw $t1, -4688($fp)
	sub $t0, $t0, $t1
	sw $t0, -4692($fp)
	lw $ra, -4($fp)
	lw $v0, -4692($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label291
label293:
label150:
	j label139
label138:
	lw $t0, -2072($fp)
	sw $t0, -4696($fp)
	lw $ra, -4($fp)
	lw $v0, -4696($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label139:
	j label126
label125:
label294:
	lw $t0, -1688($fp)
	sw $t0, -4700($fp)
	li $t0, 0
	lw $t1, -4700($fp)
	sub $t0, $t0, $t1
	sw $t0, -4704($fp)
	li $t0, 53616
	sw $t0, -4708($fp)
	li $t0, 23887
	sw $t0, -4712($fp)
	lw $t0, -4708($fp)
	lw $t1, -4712($fp)
	mul $t0, $t0, $t1
	sw $t0, -4716($fp)
	lw $t1, -4704($fp)
	lw $t2, -4716($fp)
	bge $t1, $t2, label295
	j label298
label298:
	addi $t0, $fp, -20
	sw $t0, -4720($fp)
	li $t0, 0
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
	li $t0, 0
	lw $t1, -4736($fp)
	sub $t0, $t0, $t1
	sw $t0, -4740($fp)
	lw $t1, -4740($fp)
	li $t2, 0
	bne $t1, $t2, label295
	j label297
label297:
	li $t0, 15657
	sw $t0, -4744($fp)
	li $t0, 11959
	sw $t0, -4748($fp)
	lw $t0, -4744($fp)
	lw $t1, -4748($fp)
	mul $t0, $t0, $t1
	sw $t0, -4752($fp)
	li $t0, 0
	lw $t1, -4752($fp)
	sub $t0, $t0, $t1
	sw $t0, -4756($fp)
	lw $t0, 12($fp)
	sw $t0, -4760($fp)
	lw $t0, -272($fp)
	sw $t0, -4764($fp)
	lw $t0, -4760($fp)
	lw $t1, -4764($fp)
	add $t0, $t0, $t1
	sw $t0, -4768($fp)
	lw $t1, -4756($fp)
	lw $t2, -4768($fp)
	beq $t1, $t2, label295
	j label296
label295:
label299:
	li $t0, 32457
	sw $t0, -4772($fp)
	lw $t0, -1028($fp)
	sw $t0, -4776($fp)
	lw $t0, -4772($fp)
	lw $t1, -4776($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4780($fp)
	li $t0, 60258
	sw $t0, -4784($fp)
	lw $t0, -4780($fp)
	lw $t1, -4784($fp)
	mul $t0, $t0, $t1
	sw $t0, -4788($fp)
	lw $t0, -2408($fp)
	sw $t0, -4792($fp)
	li $t0, 0
	sw $t0, -4796($fp)
	lw $t0, -1688($fp)
	sw $t0, -4800($fp)
	li $t0, 0
	lw $t1, -4800($fp)
	sub $t0, $t0, $t1
	sw $t0, -4804($fp)
	li $t0, 0
	lw $t1, -4804($fp)
	sub $t0, $t0, $t1
	sw $t0, -4808($fp)
	li $t0, 0
	sw $t0, -4812($fp)
	li $t0, 23362
	sw $t0, -4816($fp)
	li $t0, 499
	sw $t0, -4820($fp)
	lw $t1, -4816($fp)
	lw $t2, -4820($fp)
	beq $t1, $t2, label308
	j label307
label308:
	li $t0, 412
	sw $t0, -4824($fp)
	lw $t1, -4824($fp)
	li $t2, 0
	bne $t1, $t2, label306
	j label307
label306:
	li $t0, 1
	sw $t0, -4812($fp)
label307:
	lw $t0, -2072($fp)
	sw $t0, -4828($fp)
	lw $t0, -4828($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -4832($fp)
	addi $sp, $sp, -4
	lw $t0, -4808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4832($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4836($fp)
	addi $sp, $sp, 16
	li $t0, 22475
	sw $t0, -4840($fp)
	li $t0, 47268
	sw $t0, -4844($fp)
	lw $t0, -4840($fp)
	lw $t1, -4844($fp)
	add $t0, $t0, $t1
	sw $t0, -4848($fp)
	li $t0, 5847
	sw $t0, -4852($fp)
	lw $t0, -4848($fp)
	lw $t1, -4852($fp)
	sub $t0, $t0, $t1
	sw $t0, -4856($fp)
	li $t0, 0
	sw $t0, -4860($fp)
	lw $t0, -1292($fp)
	sw $t0, -4864($fp)
	lw $t1, -4864($fp)
	li $t2, 0
	bne $t1, $t2, label312
	j label311
label312:
	lw $t0, -692($fp)
	sw $t0, -4868($fp)
	lw $t1, -4868($fp)
	li $t2, 0
	bne $t1, $t2, label309
	j label311
label311:
	lw $t0, -308($fp)
	sw $t0, -4872($fp)
	lw $t1, -4872($fp)
	li $t2, 0
	bne $t1, $t2, label309
	j label310
label309:
	li $t0, 1
	sw $t0, -4860($fp)
label310:
	addi $sp, $sp, -4
	lw $t0, -4836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4860($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4876($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -4880($fp)
	li $t0, 2578
	sw $t0, -4884($fp)
	li $t0, 0
	lw $t1, -4884($fp)
	sub $t0, $t0, $t1
	sw $t0, -4888($fp)
	lw $t1, -4888($fp)
	li $t2, 0
	bne $t1, $t2, label315
	j label314
label315:
	lw $t0, -1772($fp)
	sw $t0, -4892($fp)
	lw $t1, -4892($fp)
	li $t2, 0
	bne $t1, $t2, label313
	j label314
label313:
	li $t0, 1
	sw $t0, -4880($fp)
label314:
	li $t0, 0
	sw $t0, -4896($fp)
	li $t0, 0
	sw $t0, -4900($fp)
	li $t0, 13746
	sw $t0, -4904($fp)
	lw $t1, -4904($fp)
	li $t2, 0
	bne $t1, $t2, label319
	j label318
label318:
	li $t0, 1
	sw $t0, -4900($fp)
label319:
	lw $t0, -1328($fp)
	sw $t0, -4908($fp)
	lw $t1, -4900($fp)
	lw $t2, -4908($fp)
	bgt $t1, $t2, label316
	j label317
label316:
	li $t0, 1
	sw $t0, -4896($fp)
label317:
	addi $sp, $sp, -4
	lw $t0, -4876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4896($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4912($fp)
	addi $sp, $sp, 16
	lw $t0, -1328($fp)
	sw $t0, -4916($fp)
	lw $t0, -4912($fp)
	lw $t1, -4916($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4920($fp)
	li $t0, 13624
	sw $t0, -4924($fp)
	lw $t0, -4924($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -4928($fp)
	addi $t0, $fp, -112
	sw $t0, -4932($fp)
	li $t0, 8
	sw $t0, -4936($fp)
	li $t0, 4
	lw $t1, -4936($fp)
	mul $t0, $t0, $t1
	sw $t0, -4940($fp)
	lw $t0, -4940($fp)
	lw $t1, -4932($fp)
	add $t0, $t0, $t1
	sw $t0, -4944($fp)
	lw $t0, -4944($fp)
	lw $t1, 0($t0)
	sw $t1, -4948($fp)
	li $t0, 0
	lw $t1, -4948($fp)
	sub $t0, $t0, $t1
	sw $t0, -4952($fp)
	li $t0, 0
	sw $t0, -4956($fp)
	li $t0, 20224
	sw $t0, -4960($fp)
	lw $t1, -4960($fp)
	li $t2, 0
	bne $t1, $t2, label321
	j label320
label320:
	li $t0, 1
	sw $t0, -4956($fp)
label321:
	li $t0, 33574
	sw $t0, -4964($fp)
	lw $t0, -4964($fp)
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	sw $t0, -4968($fp)
	addi $sp, $sp, -4
	lw $t0, -4952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4968($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4972($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -4920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4972($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4976($fp)
	addi $sp, $sp, 16
	lw $t1, -4976($fp)
	li $t2, 0
	bne $t1, $t2, label303
	j label305
label305:
	lw $t0, -2396($fp)
	sw $t0, -4980($fp)
	lw $t1, -4980($fp)
	li $t2, 0
	bne $t1, $t2, label303
	j label304
label303:
	li $t0, 1
	sw $t0, -4796($fp)
label304:
	addi $sp, $sp, -4
	lw $t0, -4788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4796($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4984($fp)
	addi $sp, $sp, 16
	lw $t1, -4984($fp)
	li $t2, 0
	bne $t1, $t2, label301
	j label302
label302:
	lw $t0, -2084($fp)
	sw $t0, -4988($fp)
	addi $t0, $fp, -12
	sw $t0, -4992($fp)
	lw $t0, -1304($fp)
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
	li $t0, 0
	sw $t0, -5012($fp)
	li $t0, 1482
	sw $t0, -5016($fp)
	lw $t0, -644($fp)
	sw $t0, -5020($fp)
	lw $t1, -5016($fp)
	lw $t2, -5020($fp)
	bgt $t1, $t2, label322
	j label323
label322:
	li $t0, 1
	sw $t0, -5012($fp)
label323:
	lw $t0, -644($fp)
	sw $t0, -5024($fp)
	lw $t0, -5024($fp)
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -5028($fp)
	li $t0, 37823
	sw $t0, -5032($fp)
	lw $t0, -1784($fp)
	sw $t0, -5036($fp)
	lw $t0, -5032($fp)
	lw $t1, -5036($fp)
	sub $t0, $t0, $t1
	sw $t0, -5040($fp)
	addi $sp, $sp, -4
	lw $t0, -5012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5040($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5044($fp)
	addi $sp, $sp, 16
	lw $t0, -668($fp)
	sw $t0, -5048($fp)
	addi $sp, $sp, -4
	lw $t0, -5008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5048($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5052($fp)
	addi $sp, $sp, 16
	lw $t1, -4988($fp)
	lw $t2, -5052($fp)
	bgt $t1, $t2, label300
	j label301
label300:
	addi $t0, $fp, -112
	sw $t0, -5056($fp)
	li $t0, 0
	sw $t0, -5060($fp)
	lw $t0, -596($fp)
	sw $t0, -5064($fp)
	lw $t0, -1316($fp)
	sw $t0, -5068($fp)
	lw $t1, -5064($fp)
	lw $t2, -5068($fp)
	ble $t1, $t2, label327
	j label328
label327:
	li $t0, 1
	sw $t0, -5060($fp)
label328:
	li $t0, 4
	lw $t1, -5060($fp)
	mul $t0, $t0, $t1
	sw $t0, -5072($fp)
	lw $t0, -5072($fp)
	lw $t1, -5056($fp)
	add $t0, $t0, $t1
	sw $t0, -5076($fp)
	lw $t0, -5076($fp)
	lw $t1, 0($t0)
	sw $t1, -5080($fp)
	addi $t0, $fp, -68
	sw $t0, -5084($fp)
	lw $t0, -2060($fp)
	sw $t0, -5088($fp)
	li $t0, 4
	lw $t1, -5088($fp)
	mul $t0, $t0, $t1
	sw $t0, -5092($fp)
	lw $t0, -5092($fp)
	lw $t1, -5084($fp)
	add $t0, $t0, $t1
	sw $t0, -5096($fp)
	lw $t0, -5096($fp)
	lw $t1, 0($t0)
	sw $t1, -5100($fp)
	lw $t0, -5080($fp)
	lw $t1, -5100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5104($fp)
	li $t0, 0
	lw $t1, -5104($fp)
	sub $t0, $t0, $t1
	sw $t0, -5108($fp)
	lw $t1, -5108($fp)
	li $t2, 0
	bne $t1, $t2, label324
	j label325
label324:
	li $t0, 28367
	sw $t0, -5112($fp)
	lw $t0, -5112($fp)
	sw $t0, -5116($fp)
	lw $t0, -5116($fp)
	sw $t0, -5120($fp)
	li $t0, 4923
	sw $t0, -5124($fp)
	lw $t0, -5124($fp)
	sw $t0, -5128($fp)
	lw $t0, -5128($fp)
	sw $t0, -5132($fp)
	li $t0, 15748
	sw $t0, -5136($fp)
	lw $t0, -5136($fp)
	sw $t0, -5140($fp)
	lw $t0, -5140($fp)
	sw $t0, -5144($fp)
	li $t0, 37487
	sw $t0, -5172($fp)
	addi $t0, $fp, -5168
	sw $t0, -5176($fp)
	li $t0, 0
	sw $t0, -5180($fp)
	lw $t0, -5180($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5184($fp)
	lw $t0, -5176($fp)
	lw $t1, -5184($fp)
	add $t0, $t0, $t1
	sw $t0, -5188($fp)
	lw $t0, -5172($fp)
	lw $t1, -5188($fp)
	sw $t0, 0($t1)
	lw $t0, -5188($fp)
	lw $t1, 0($t0)
	sw $t1, -5192($fp)
	li $t0, 41077
	sw $t0, -5196($fp)
	addi $t0, $fp, -5168
	sw $t0, -5200($fp)
	li $t0, 1
	sw $t0, -5204($fp)
	lw $t0, -5204($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5208($fp)
	lw $t0, -5200($fp)
	lw $t1, -5208($fp)
	add $t0, $t0, $t1
	sw $t0, -5212($fp)
	lw $t0, -5196($fp)
	lw $t1, -5212($fp)
	sw $t0, 0($t1)
	lw $t0, -5212($fp)
	lw $t1, 0($t0)
	sw $t1, -5216($fp)
	li $t0, 27159
	sw $t0, -5220($fp)
	addi $t0, $fp, -5168
	sw $t0, -5224($fp)
	li $t0, 2
	sw $t0, -5228($fp)
	lw $t0, -5228($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5232($fp)
	lw $t0, -5224($fp)
	lw $t1, -5232($fp)
	add $t0, $t0, $t1
	sw $t0, -5236($fp)
	lw $t0, -5220($fp)
	lw $t1, -5236($fp)
	sw $t0, 0($t1)
	lw $t0, -5236($fp)
	lw $t1, 0($t0)
	sw $t1, -5240($fp)
	li $t0, 63068
	sw $t0, -5244($fp)
	addi $t0, $fp, -5168
	sw $t0, -5248($fp)
	li $t0, 3
	sw $t0, -5252($fp)
	lw $t0, -5252($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5256($fp)
	lw $t0, -5248($fp)
	lw $t1, -5256($fp)
	add $t0, $t0, $t1
	sw $t0, -5260($fp)
	lw $t0, -5244($fp)
	lw $t1, -5260($fp)
	sw $t0, 0($t1)
	lw $t0, -5260($fp)
	lw $t1, 0($t0)
	sw $t1, -5264($fp)
	li $t0, 6320
	sw $t0, -5268($fp)
	addi $t0, $fp, -5168
	sw $t0, -5272($fp)
	li $t0, 4
	sw $t0, -5276($fp)
	lw $t0, -5276($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5280($fp)
	lw $t0, -5272($fp)
	lw $t1, -5280($fp)
	add $t0, $t0, $t1
	sw $t0, -5284($fp)
	lw $t0, -5268($fp)
	lw $t1, -5284($fp)
	sw $t0, 0($t1)
	lw $t0, -5284($fp)
	lw $t1, 0($t0)
	sw $t1, -5288($fp)
	li $t0, 15239
	sw $t0, -5292($fp)
	addi $t0, $fp, -5168
	sw $t0, -5296($fp)
	li $t0, 5
	sw $t0, -5300($fp)
	lw $t0, -5300($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5304($fp)
	lw $t0, -5296($fp)
	lw $t1, -5304($fp)
	add $t0, $t0, $t1
	sw $t0, -5308($fp)
	lw $t0, -5292($fp)
	lw $t1, -5308($fp)
	sw $t0, 0($t1)
	lw $t0, -5308($fp)
	lw $t1, 0($t0)
	sw $t1, -5312($fp)
	li $t0, 0
	sw $t0, -5316($fp)
	lw $t0, -308($fp)
	sw $t0, -5320($fp)
	lw $t1, -5320($fp)
	li $t2, 0
	bne $t1, $t2, label329
	j label332
label332:
	li $t0, 21419
	sw $t0, -5324($fp)
	li $t0, 61779
	sw $t0, -5328($fp)
	lw $t0, -5324($fp)
	lw $t1, -5328($fp)
	add $t0, $t0, $t1
	sw $t0, -5332($fp)
	lw $t0, 8($fp)
	sw $t0, -5336($fp)
	lw $t1, -5332($fp)
	lw $t2, -5336($fp)
	blt $t1, $t2, label329
	j label331
label331:
	addi $t0, $fp, -72
	sw $t0, -5340($fp)
	li $t0, 0
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
	li $t0, 0
	lw $t1, -5356($fp)
	sub $t0, $t0, $t1
	sw $t0, -5360($fp)
	lw $t1, -5360($fp)
	li $t2, 0
	bne $t1, $t2, label329
	j label330
label329:
	li $t0, 1
	sw $t0, -5316($fp)
label330:
	addi $t0, $fp, -12
	sw $t0, -5364($fp)
	li $t0, 8202
	sw $t0, -5368($fp)
	lw $t0, -5140($fp)
	sw $t0, -5372($fp)
	lw $t0, -5368($fp)
	lw $t1, -5372($fp)
	mul $t0, $t0, $t1
	sw $t0, -5376($fp)
	lw $t0, -5376($fp)
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -5380($fp)
	li $t0, 4
	lw $t1, -5380($fp)
	mul $t0, $t0, $t1
	sw $t0, -5384($fp)
	lw $t0, -5384($fp)
	lw $t1, -5364($fp)
	add $t0, $t0, $t1
	sw $t0, -5388($fp)
	lw $t0, -5388($fp)
	lw $t1, 0($t0)
	sw $t1, -5392($fp)
	li $t0, 0
	sw $t0, -5396($fp)
	addi $t0, $fp, -5168
	sw $t0, -5400($fp)
	li $t0, 5
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
	li $t0, 0
	sw $t0, -5420($fp)
	lw $t0, -308($fp)
	sw $t0, -5424($fp)
	lw $t1, -5424($fp)
	li $t2, 0
	bne $t1, $t2, label336
	j label335
label335:
	li $t0, 1
	sw $t0, -5420($fp)
label336:
	li $t0, 0
	lw $t1, -5420($fp)
	sub $t0, $t0, $t1
	sw $t0, -5428($fp)
	lw $t0, -5416($fp)
	lw $t1, -5428($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5432($fp)
	li $t0, 0
	lw $t1, -5432($fp)
	sub $t0, $t0, $t1
	sw $t0, -5436($fp)
	addi $t0, $fp, -28
	sw $t0, -5440($fp)
	addi $t0, $fp, -68
	sw $t0, -5444($fp)
	li $t0, 5
	sw $t0, -5448($fp)
	li $t0, 4
	lw $t1, -5448($fp)
	mul $t0, $t0, $t1
	sw $t0, -5452($fp)
	lw $t0, -5452($fp)
	lw $t1, -5444($fp)
	add $t0, $t0, $t1
	sw $t0, -5456($fp)
	lw $t0, -5456($fp)
	lw $t1, 0($t0)
	sw $t1, -5460($fp)
	li $t0, 4
	lw $t1, -5460($fp)
	mul $t0, $t0, $t1
	sw $t0, -5464($fp)
	lw $t0, -5464($fp)
	lw $t1, -5440($fp)
	add $t0, $t0, $t1
	sw $t0, -5468($fp)
	lw $t0, -5468($fp)
	lw $t1, 0($t0)
	sw $t1, -5472($fp)
	lw $t1, -5436($fp)
	lw $t2, -5472($fp)
	bgt $t1, $t2, label333
	j label334
label333:
	li $t0, 1
	sw $t0, -5396($fp)
label334:
label337:
	li $t0, 5389
	sw $t0, -5476($fp)
	lw $t0, -656($fp)
	sw $t0, -5480($fp)
	lw $t0, -5476($fp)
	lw $t1, -5480($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5484($fp)
	lw $t0, -2072($fp)
	sw $t0, -5488($fp)
	lw $t0, -5484($fp)
	lw $t1, -5488($fp)
	mul $t0, $t0, $t1
	sw $t0, -5492($fp)
	li $t0, 0
	lw $t1, -5492($fp)
	sub $t0, $t0, $t1
	sw $t0, -5496($fp)
	lw $t0, -5496($fp)
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	sw $t0, -5500($fp)
	lw $t1, -5500($fp)
	li $t2, 0
	bne $t1, $t2, label338
	j label339
label338:
	addi $t0, $fp, -264
	sw $t0, -5504($fp)
	li $t0, 0
	sw $t0, -5508($fp)
	li $t0, 7777
	sw $t0, -5512($fp)
	li $t0, 52994
	sw $t0, -5516($fp)
	lw $t0, -5512($fp)
	lw $t1, -5516($fp)
	mul $t0, $t0, $t1
	sw $t0, -5520($fp)
	lw $t1, -5520($fp)
	li $t2, 0
	bne $t1, $t2, label342
	j label341
label342:
	li $t0, 27864
	sw $t0, -5524($fp)
	lw $t1, -5524($fp)
	li $t2, 0
	bne $t1, $t2, label340
	j label341
label340:
	li $t0, 1
	sw $t0, -5508($fp)
label341:
	li $t0, 4
	lw $t1, -5508($fp)
	mul $t0, $t0, $t1
	sw $t0, -5528($fp)
	lw $t0, -5528($fp)
	lw $t1, -5504($fp)
	add $t0, $t0, $t1
	sw $t0, -5532($fp)
	lw $t0, -5532($fp)
	lw $t1, 0($t0)
	sw $t1, -5536($fp)
	li $t0, 0
	sw $t0, -5540($fp)
	li $t0, 55544
	sw $t0, -5544($fp)
	li $t0, 51226
	sw $t0, -5548($fp)
	lw $t0, -5548($fp)
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	sw $t0, -5552($fp)
	li $t0, 0
	sw $t0, -5556($fp)
	li $t0, 55045
	sw $t0, -5560($fp)
	li $t0, 1
	sw $t0, -5564($fp)
	lw $t0, -5560($fp)
	lw $t1, -5564($fp)
	mul $t0, $t0, $t1
	sw $t0, -5568($fp)
	lw $t0, -5140($fp)
	sw $t0, -5572($fp)
	lw $t1, -5568($fp)
	lw $t2, -5572($fp)
	ble $t1, $t2, label345
	j label346
label345:
	li $t0, 1
	sw $t0, -5556($fp)
label346:
	addi $sp, $sp, -4
	lw $t0, -5544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5556($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5576($fp)
	addi $sp, $sp, 16
	lw $t1, -5576($fp)
	li $t2, 0
	bne $t1, $t2, label344
	j label343
label343:
	li $t0, 1
	sw $t0, -5540($fp)
label344:
	li $t0, 0
	lw $t1, -5540($fp)
	sub $t0, $t0, $t1
	sw $t0, -5580($fp)
	lw $t0, -5536($fp)
	lw $t1, -5580($fp)
	mul $t0, $t0, $t1
	sw $t0, -5584($fp)
	lw $ra, -4($fp)
	lw $v0, -5584($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label337
label339:
	lw $t0, -5116($fp)
	sw $t0, -5588($fp)
	lw $t0, -5588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5128($fp)
	sw $t0, -5592($fp)
	lw $t0, -5592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5140($fp)
	sw $t0, -5596($fp)
	lw $t0, -5596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5600($fp)
	li $t0, 0
	sw $t0, -5604($fp)
	addi $t0, $fp, -168
	sw $t0, -5608($fp)
	li $t0, 3
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
	lw $t0, -1280($fp)
	sw $t0, -5628($fp)
	addi $t0, $fp, -264
	sw $t0, -5632($fp)
	li $t0, 2
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
	addi $sp, $sp, -4
	lw $t0, -5624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5648($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5652($fp)
	addi $sp, $sp, 16
	lw $t1, -5652($fp)
	li $t2, 0
	bne $t1, $t2, label351
	j label350
label351:
	li $t0, 13098
	sw $t0, -5656($fp)
	lw $t1, -5656($fp)
	li $t2, 0
	bne $t1, $t2, label349
	j label350
label349:
	li $t0, 1
	sw $t0, -5604($fp)
label350:
	lw $t0, -5116($fp)
	sw $t0, -5660($fp)
	li $t0, 59253
	sw $t0, -5664($fp)
	addi $sp, $sp, -4
	lw $t0, -5604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5664($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5668($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -5668($fp)
	sub $t0, $t0, $t1
	sw $t0, -5672($fp)
	li $t0, 0
	lw $t1, -5672($fp)
	sub $t0, $t0, $t1
	sw $t0, -5676($fp)
	lw $t0, -992($fp)
	sw $t0, -5680($fp)
	lw $t0, -5680($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -5684($fp)
	addi $t0, $fp, -264
	sw $t0, -5688($fp)
	li $t0, 0
	sw $t0, -5692($fp)
	li $t0, 4
	lw $t1, -5692($fp)
	mul $t0, $t0, $t1
	sw $t0, -5696($fp)
	lw $t0, -5696($fp)
	lw $t1, -5688($fp)
	add $t0, $t0, $t1
	sw $t0, -5700($fp)
	lw $t0, -5700($fp)
	lw $t1, 0($t0)
	sw $t1, -5704($fp)
	lw $t0, -1304($fp)
	sw $t0, -5708($fp)
	lw $t0, -5708($fp)
	sw $t0, -5128($fp)
	lw $t0, -5128($fp)
	sw $t0, -5712($fp)
	addi $sp, $sp, -4
	lw $t0, -5684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5712($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5716($fp)
	addi $sp, $sp, 16
	lw $t1, -5676($fp)
	lw $t2, -5716($fp)
	blt $t1, $t2, label347
	j label348
label347:
	li $t0, 1
	sw $t0, -5600($fp)
label348:
	lw $ra, -4($fp)
	lw $v0, -5600($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -5116($fp)
	sw $t0, -5720($fp)
	lw $t0, -5720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5128($fp)
	sw $t0, -5724($fp)
	lw $t0, -5724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5140($fp)
	sw $t0, -5728($fp)
	lw $t0, -5728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5732($fp)
	li $t0, 0
	sw $t0, -5736($fp)
	lw $t0, -2072($fp)
	sw $t0, -5740($fp)
	li $t0, 50585
	sw $t0, -5744($fp)
	lw $t1, -5740($fp)
	lw $t2, -5744($fp)
	bge $t1, $t2, label357
	j label358
label357:
	li $t0, 1
	sw $t0, -5736($fp)
label358:
	lw $t0, 8($fp)
	sw $t0, -5748($fp)
	lw $t1, -5736($fp)
	lw $t2, -5748($fp)
	bge $t1, $t2, label352
	j label356
label356:
	lw $t0, -524($fp)
	sw $t0, -5752($fp)
	li $t0, 0
	lw $t1, -5752($fp)
	sub $t0, $t0, $t1
	sw $t0, -5756($fp)
	lw $t1, -5756($fp)
	li $t2, 0
	bne $t1, $t2, label352
	j label355
label355:
	li $t0, 12006
	sw $t0, -5760($fp)
	lw $t1, -5760($fp)
	li $t2, 0
	bne $t1, $t2, label352
	j label354
label354:
	addi $t0, $fp, -252
	sw $t0, -5764($fp)
	lw $t0, -692($fp)
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
	li $t0, 0
	sw $t0, -5784($fp)
	li $t0, 62536
	sw $t0, -5788($fp)
	lw $t1, -5788($fp)
	li $t2, 0
	bne $t1, $t2, label360
	j label359
label359:
	li $t0, 1
	sw $t0, -5784($fp)
label360:
	lw $t1, -5780($fp)
	lw $t2, -5784($fp)
	beq $t1, $t2, label352
	j label353
label352:
	li $t0, 1
	sw $t0, -5732($fp)
label353:
	lw $ra, -4($fp)
	lw $v0, -5732($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label361:
	li $t0, 48117
	sw $t0, -5792($fp)
	addi $t0, $fp, -180
	sw $t0, -5796($fp)
	lw $t0, -1688($fp)
	sw $t0, -5800($fp)
	li $t0, 2740
	sw $t0, -5804($fp)
	lw $t0, -5800($fp)
	lw $t1, -5804($fp)
	add $t0, $t0, $t1
	sw $t0, -5808($fp)
	li $t0, 0
	sw $t0, -5812($fp)
	li $t0, 14569
	sw $t0, -5816($fp)
	lw $t0, -5816($fp)
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	sw $t0, -5820($fp)
	addi $t0, $fp, -220
	sw $t0, -5824($fp)
	lw $t0, -584($fp)
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
	li $t0, 0
	sw $t0, -5844($fp)
	li $t0, 18326
	sw $t0, -5848($fp)
	li $t0, 12239
	sw $t0, -5852($fp)
	lw $t0, -5848($fp)
	lw $t1, -5852($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5856($fp)
	li $t0, 4001
	sw $t0, -5860($fp)
	lw $t1, -5856($fp)
	lw $t2, -5860($fp)
	beq $t1, $t2, label366
	j label367
label366:
	li $t0, 1
	sw $t0, -5844($fp)
label367:
	addi $sp, $sp, -4
	lw $t0, -5820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5844($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5864($fp)
	addi $sp, $sp, 16
	lw $t1, -5864($fp)
	li $t2, 0
	bne $t1, $t2, label365
	j label364
label364:
	li $t0, 1
	sw $t0, -5812($fp)
label365:
	li $t0, 0
	sw $t0, -5868($fp)
	li $t0, 0
	sw $t0, -5872($fp)
	lw $t0, -2072($fp)
	sw $t0, -5876($fp)
	lw $t1, -5876($fp)
	li $t2, 0
	bne $t1, $t2, label371
	j label370
label370:
	li $t0, 1
	sw $t0, -5872($fp)
label371:
	lw $t0, -1304($fp)
	sw $t0, -5880($fp)
	lw $t1, -5872($fp)
	lw $t2, -5880($fp)
	bne $t1, $t2, label368
	j label369
label368:
	li $t0, 1
	sw $t0, -5868($fp)
label369:
	addi $sp, $sp, -4
	lw $t0, -5808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5868($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5884($fp)
	addi $sp, $sp, 16
	li $t0, 4
	lw $t1, -5884($fp)
	mul $t0, $t0, $t1
	sw $t0, -5888($fp)
	lw $t0, -5888($fp)
	lw $t1, -5796($fp)
	add $t0, $t0, $t1
	sw $t0, -5892($fp)
	lw $t0, -5892($fp)
	lw $t1, 0($t0)
	sw $t1, -5896($fp)
	lw $t1, -5792($fp)
	lw $t2, -5896($fp)
	beq $t1, $t2, label362
	j label363
label362:
	li $t0, 41077
	sw $t0, -5900($fp)
	lw $t0, -5900($fp)
	sw $t0, -5904($fp)
	lw $t0, -5904($fp)
	sw $t0, -5908($fp)
	lw $t0, -416($fp)
	sw $t0, -5912($fp)
	li $t0, 0
	sw $t0, -5916($fp)
	li $t0, 0
	sw $t0, -5920($fp)
	li $t0, 22771
	sw $t0, -5924($fp)
	li $t0, 26815
	sw $t0, -5928($fp)
	lw $t0, -5924($fp)
	lw $t1, -5928($fp)
	add $t0, $t0, $t1
	sw $t0, -5932($fp)
	lw $t0, -2396($fp)
	sw $t0, -5936($fp)
	lw $t1, -5932($fp)
	lw $t2, -5936($fp)
	bgt $t1, $t2, label374
	j label375
label374:
	li $t0, 1
	sw $t0, -5920($fp)
label375:
	lw $t0, -464($fp)
	sw $t0, -5940($fp)
	lw $t0, -5940($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -5944($fp)
	li $t0, 0
	sw $t0, -5948($fp)
	lw $t0, -5140($fp)
	sw $t0, -5952($fp)
	lw $t1, -5952($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label378
label379:
	li $t0, 4096
	sw $t0, -5956($fp)
	lw $t1, -5956($fp)
	li $t2, 0
	bne $t1, $t2, label376
	j label378
label378:
	li $t0, 51712
	sw $t0, -5960($fp)
	lw $t1, -5960($fp)
	li $t2, 0
	bne $t1, $t2, label376
	j label377
label376:
	li $t0, 1
	sw $t0, -5948($fp)
label377:
	li $t0, 57994
	sw $t0, -5964($fp)
	lw $t0, -1772($fp)
	sw $t0, -5968($fp)
	lw $t0, -5964($fp)
	lw $t1, -5968($fp)
	sub $t0, $t0, $t1
	sw $t0, -5972($fp)
	li $t0, 51785
	sw $t0, -5976($fp)
	lw $t0, -5972($fp)
	lw $t1, -5976($fp)
	add $t0, $t0, $t1
	sw $t0, -5980($fp)
	li $t0, 0
	sw $t0, -5984($fp)
	addi $t0, $fp, -12
	sw $t0, -5988($fp)
	lw $t0, -332($fp)
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
	li $t0, 14088
	sw $t0, -6008($fp)
	lw $t0, -6004($fp)
	lw $t1, -6008($fp)
	sub $t0, $t0, $t1
	sw $t0, -6012($fp)
	li $t0, 0
	sw $t0, -6016($fp)
	li $t0, 559
	sw $t0, -6020($fp)
	li $t0, 64689
	sw $t0, -6024($fp)
	lw $t0, -6024($fp)
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	sw $t0, -6028($fp)
	lw $t0, -2060($fp)
	sw $t0, -6032($fp)
	lw $t0, -6032($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -6036($fp)
	addi $sp, $sp, -4
	lw $t0, -6020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6036($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6040($fp)
	addi $sp, $sp, 16
	lw $t0, -1280($fp)
	sw $t0, -6044($fp)
	lw $t1, -6040($fp)
	lw $t2, -6044($fp)
	blt $t1, $t2, label382
	j label383
label382:
	li $t0, 1
	sw $t0, -6016($fp)
label383:
	li $t0, 0
	sw $t0, -6048($fp)
	addi $t0, $fp, -224
	sw $t0, -6052($fp)
	li $t0, 0
	sw $t0, -6056($fp)
	li $t0, 4
	lw $t1, -6056($fp)
	mul $t0, $t0, $t1
	sw $t0, -6060($fp)
	lw $t0, -6060($fp)
	lw $t1, -6052($fp)
	add $t0, $t0, $t1
	sw $t0, -6064($fp)
	lw $t0, -6064($fp)
	lw $t1, 0($t0)
	sw $t1, -6068($fp)
	li $t0, 24579
	sw $t0, -6072($fp)
	lw $t1, -6068($fp)
	lw $t2, -6072($fp)
	bgt $t1, $t2, label384
	j label385
label384:
	li $t0, 1
	sw $t0, -6048($fp)
label385:
	li $t0, 0
	sw $t0, -6076($fp)
	lw $t0, -644($fp)
	sw $t0, -6080($fp)
	lw $t1, -6080($fp)
	li $t2, 0
	bne $t1, $t2, label387
	j label386
label386:
	li $t0, 1
	sw $t0, -6076($fp)
label387:
	li $t0, 0
	lw $t1, -6076($fp)
	sub $t0, $t0, $t1
	sw $t0, -6084($fp)
	li $t0, 16802
	sw $t0, -6088($fp)
	lw $t0, -6088($fp)
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -6092($fp)
	addi $sp, $sp, -4
	lw $t0, -6048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6092($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6096($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -6012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6096($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6100($fp)
	addi $sp, $sp, 16
	lw $t1, -6100($fp)
	li $t2, 0
	bne $t1, $t2, label381
	j label380
label380:
	li $t0, 1
	sw $t0, -5984($fp)
label381:
	li $t0, 0
	sw $t0, -6104($fp)
	lw $t0, -5904($fp)
	sw $t0, -6108($fp)
	li $t0, 0
	lw $t1, -6108($fp)
	sub $t0, $t0, $t1
	sw $t0, -6112($fp)
	lw $t1, -6112($fp)
	li $t2, 0
	bne $t1, $t2, label390
	j label389
label390:
	li $t0, 32842
	sw $t0, -6116($fp)
	lw $t1, -6116($fp)
	li $t2, 0
	bne $t1, $t2, label388
	j label389
label388:
	li $t0, 1
	sw $t0, -6104($fp)
label389:
	addi $sp, $sp, -4
	lw $t0, -5980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6104($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6120($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -5944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6120($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6124($fp)
	addi $sp, $sp, 16
	lw $t1, -5920($fp)
	lw $t2, -6124($fp)
	bge $t1, $t2, label372
	j label373
label372:
	li $t0, 1
	sw $t0, -5916($fp)
label373:
	lw $t0, -5916($fp)
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	sw $t0, -6128($fp)
	j label361
label363:
	j label326
label325:
	li $t0, 0
	sw $t0, -6132($fp)
	li $t0, 56404
	sw $t0, -6136($fp)
	li $t0, 0
	lw $t1, -6136($fp)
	sub $t0, $t0, $t1
	sw $t0, -6140($fp)
	li $t0, 35092
	sw $t0, -6144($fp)
	lw $t1, -6140($fp)
	lw $t2, -6144($fp)
	bne $t1, $t2, label394
	j label395
label394:
	li $t0, 1
	sw $t0, -6132($fp)
label395:
	li $t0, 52510
	sw $t0, -6148($fp)
	li $t0, 651
	sw $t0, -6152($fp)
	lw $t0, -6148($fp)
	lw $t1, -6152($fp)
	sub $t0, $t0, $t1
	sw $t0, -6156($fp)
	lw $t0, -524($fp)
	sw $t0, -6160($fp)
	lw $t0, -6156($fp)
	lw $t1, -6160($fp)
	add $t0, $t0, $t1
	sw $t0, -6164($fp)
	li $t0, 59403
	sw $t0, -6168($fp)
	lw $t0, -6168($fp)
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -6172($fp)
	li $t0, 0
	sw $t0, -6176($fp)
	lw $t0, -2072($fp)
	sw $t0, -6180($fp)
	lw $t1, -6180($fp)
	li $t2, 0
	bne $t1, $t2, label397
	j label398
label398:
	li $t0, 54181
	sw $t0, -6184($fp)
	lw $t1, -6184($fp)
	li $t2, 0
	bne $t1, $t2, label396
	j label397
label396:
	li $t0, 1
	sw $t0, -6176($fp)
label397:
	addi $sp, $sp, -4
	lw $t0, -6164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6176($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6188($fp)
	addi $sp, $sp, 16
	li $t0, 24026
	sw $t0, -6192($fp)
	li $t0, 1925
	sw $t0, -6196($fp)
	lw $t0, -6192($fp)
	lw $t1, -6196($fp)
	sub $t0, $t0, $t1
	sw $t0, -6200($fp)
	lw $t0, -2396($fp)
	sw $t0, -6204($fp)
	lw $t0, -6200($fp)
	lw $t1, -6204($fp)
	add $t0, $t0, $t1
	sw $t0, -6208($fp)
	li $t0, 0
	sw $t0, -6212($fp)
	lw $t0, -2120($fp)
	sw $t0, -6216($fp)
	lw $t1, -6216($fp)
	li $t2, 0
	bne $t1, $t2, label402
	j label401
label402:
	li $t0, 54363
	sw $t0, -6220($fp)
	lw $t1, -6220($fp)
	li $t2, 0
	bne $t1, $t2, label399
	j label401
label401:
	li $t0, 17717
	sw $t0, -6224($fp)
	lw $t1, -6224($fp)
	li $t2, 0
	bne $t1, $t2, label399
	j label400
label399:
	li $t0, 1
	sw $t0, -6212($fp)
label400:
	addi $sp, $sp, -4
	lw $t0, -6188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6212($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6228($fp)
	addi $sp, $sp, 16
	li $t0, 4396
	sw $t0, -6232($fp)
	addi $sp, $sp, -4
	lw $t0, -6132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6232($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6236($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -112
	sw $t0, -6240($fp)
	lw $t0, -464($fp)
	sw $t0, -6244($fp)
	li $t0, 4
	lw $t1, -6244($fp)
	mul $t0, $t0, $t1
	sw $t0, -6248($fp)
	lw $t0, -6248($fp)
	lw $t1, -6240($fp)
	add $t0, $t0, $t1
	sw $t0, -6252($fp)
	lw $t0, -6252($fp)
	lw $t1, 0($t0)
	sw $t1, -6256($fp)
	lw $t0, -668($fp)
	sw $t0, -6260($fp)
	lw $t0, -6256($fp)
	lw $t1, -6260($fp)
	mul $t0, $t0, $t1
	sw $t0, -6264($fp)
	li $t0, 0
	sw $t0, -6268($fp)
	lw $t0, -296($fp)
	sw $t0, -6272($fp)
	lw $t1, -6272($fp)
	li $t2, 0
	bne $t1, $t2, label404
	j label403
label403:
	li $t0, 1
	sw $t0, -6268($fp)
label404:
	lw $t0, -6264($fp)
	lw $t1, -6268($fp)
	mul $t0, $t0, $t1
	sw $t0, -6276($fp)
	lw $t1, -6236($fp)
	lw $t2, -6276($fp)
	blt $t1, $t2, label391
	j label392
label391:
	li $t0, 0
	sw $t0, -6280($fp)
	li $t0, 0
	sw $t0, -6284($fp)
	li $t0, 18977
	sw $t0, -6288($fp)
	lw $t1, -6288($fp)
	li $t2, 0
	bne $t1, $t2, label408
	j label407
label407:
	li $t0, 1
	sw $t0, -6284($fp)
label408:
	lw $t0, -1304($fp)
	sw $t0, -6292($fp)
	lw $t0, -6284($fp)
	lw $t1, -6292($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6296($fp)
	lw $t0, -2084($fp)
	sw $t0, -6300($fp)
	lw $t0, -6296($fp)
	lw $t1, -6300($fp)
	mul $t0, $t0, $t1
	sw $t0, -6304($fp)
	lw $t0, -992($fp)
	sw $t0, -6308($fp)
	lw $t0, -6304($fp)
	lw $t1, -6308($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6312($fp)
	li $t0, 0
	sw $t0, -6316($fp)
	lw $t0, -548($fp)
	sw $t0, -6320($fp)
	li $t0, 3107
	sw $t0, -6324($fp)
	lw $t0, -6320($fp)
	lw $t1, -6324($fp)
	mul $t0, $t0, $t1
	sw $t0, -6328($fp)
	lw $t0, -572($fp)
	sw $t0, -6332($fp)
	lw $t0, -6328($fp)
	lw $t1, -6332($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6336($fp)
	li $t0, 39093
	sw $t0, -6340($fp)
	lw $t1, -6336($fp)
	lw $t2, -6340($fp)
	blt $t1, $t2, label409
	j label410
label409:
	li $t0, 1
	sw $t0, -6316($fp)
label410:
	lw $t1, -6312($fp)
	lw $t2, -6316($fp)
	beq $t1, $t2, label405
	j label406
label405:
	li $t0, 1
	sw $t0, -6280($fp)
label406:
	lw $ra, -4($fp)
	lw $v0, -6280($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label393
label392:
	li $t0, 33546
	sw $t0, -6364($fp)
	lw $t0, -6364($fp)
	sw $t0, -6368($fp)
	lw $t0, -6368($fp)
	sw $t0, -6372($fp)
	li $t0, 5848
	sw $t0, -6376($fp)
	lw $t0, -6376($fp)
	sw $t0, -6380($fp)
	lw $t0, -6380($fp)
	sw $t0, -6384($fp)
	li $t0, 14634
	sw $t0, -6388($fp)
	addi $t0, $fp, -6360
	sw $t0, -6392($fp)
	li $t0, 0
	sw $t0, -6396($fp)
	lw $t0, -6396($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6400($fp)
	lw $t0, -6392($fp)
	lw $t1, -6400($fp)
	add $t0, $t0, $t1
	sw $t0, -6404($fp)
	lw $t0, -6388($fp)
	lw $t1, -6404($fp)
	sw $t0, 0($t1)
	lw $t0, -6404($fp)
	lw $t1, 0($t0)
	sw $t1, -6408($fp)
	li $t0, 56318
	sw $t0, -6412($fp)
	addi $t0, $fp, -6360
	sw $t0, -6416($fp)
	li $t0, 1
	sw $t0, -6420($fp)
	lw $t0, -6420($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6424($fp)
	lw $t0, -6416($fp)
	lw $t1, -6424($fp)
	add $t0, $t0, $t1
	sw $t0, -6428($fp)
	lw $t0, -6412($fp)
	lw $t1, -6428($fp)
	sw $t0, 0($t1)
	lw $t0, -6428($fp)
	lw $t1, 0($t0)
	sw $t1, -6432($fp)
	li $t0, 32663
	sw $t0, -6436($fp)
	addi $t0, $fp, -6360
	sw $t0, -6440($fp)
	li $t0, 2
	sw $t0, -6444($fp)
	lw $t0, -6444($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6448($fp)
	lw $t0, -6440($fp)
	lw $t1, -6448($fp)
	add $t0, $t0, $t1
	sw $t0, -6452($fp)
	lw $t0, -6436($fp)
	lw $t1, -6452($fp)
	sw $t0, 0($t1)
	lw $t0, -6452($fp)
	lw $t1, 0($t0)
	sw $t1, -6456($fp)
	li $t0, 47477
	sw $t0, -6460($fp)
	addi $t0, $fp, -6360
	sw $t0, -6464($fp)
	li $t0, 3
	sw $t0, -6468($fp)
	lw $t0, -6468($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6472($fp)
	lw $t0, -6464($fp)
	lw $t1, -6472($fp)
	add $t0, $t0, $t1
	sw $t0, -6476($fp)
	lw $t0, -6460($fp)
	lw $t1, -6476($fp)
	sw $t0, 0($t1)
	lw $t0, -6476($fp)
	lw $t1, 0($t0)
	sw $t1, -6480($fp)
	li $t0, 7584
	sw $t0, -6484($fp)
	addi $t0, $fp, -6360
	sw $t0, -6488($fp)
	li $t0, 4
	sw $t0, -6492($fp)
	lw $t0, -6492($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6496($fp)
	lw $t0, -6488($fp)
	lw $t1, -6496($fp)
	add $t0, $t0, $t1
	sw $t0, -6500($fp)
	lw $t0, -6484($fp)
	lw $t1, -6500($fp)
	sw $t0, 0($t1)
	lw $t0, -6500($fp)
	lw $t1, 0($t0)
	sw $t1, -6504($fp)
	li $t0, 0
	sw $t0, -6508($fp)
	lw $t0, -620($fp)
	sw $t0, -6512($fp)
	lw $t0, -392($fp)
	sw $t0, -6516($fp)
	lw $t0, -6512($fp)
	lw $t1, -6516($fp)
	mul $t0, $t0, $t1
	sw $t0, -6520($fp)
	lw $t0, -620($fp)
	sw $t0, -6524($fp)
	lw $t0, -6520($fp)
	lw $t1, -6524($fp)
	add $t0, $t0, $t1
	sw $t0, -6528($fp)
	addi $t0, $fp, -264
	sw $t0, -6532($fp)
	li $t0, 1
	sw $t0, -6536($fp)
	li $t0, 4
	lw $t1, -6536($fp)
	mul $t0, $t0, $t1
	sw $t0, -6540($fp)
	lw $t0, -6540($fp)
	lw $t1, -6532($fp)
	add $t0, $t0, $t1
	sw $t0, -6544($fp)
	lw $t0, -6544($fp)
	lw $t1, 0($t0)
	sw $t1, -6548($fp)
	lw $t1, -6528($fp)
	lw $t2, -6548($fp)
	ble $t1, $t2, label411
	j label414
label414:
	lw $t0, -6368($fp)
	sw $t0, -6552($fp)
	li $t0, 32163
	sw $t0, -6556($fp)
	lw $t1, -6552($fp)
	lw $t2, -6556($fp)
	bne $t1, $t2, label415
	j label413
label415:
	lw $t0, -404($fp)
	sw $t0, -6560($fp)
	lw $t1, -6560($fp)
	li $t2, 0
	bne $t1, $t2, label411
	j label413
label413:
	lw $t0, -6380($fp)
	sw $t0, -6564($fp)
	lw $t1, -6564($fp)
	li $t2, 0
	bne $t1, $t2, label412
	j label411
label411:
	li $t0, 1
	sw $t0, -6508($fp)
label412:
	addi $t0, $fp, -112
	sw $t0, -6568($fp)
	lw $t0, -308($fp)
	sw $t0, -6572($fp)
	li $t0, 4
	lw $t1, -6572($fp)
	mul $t0, $t0, $t1
	sw $t0, -6576($fp)
	lw $t0, -6576($fp)
	lw $t1, -6568($fp)
	add $t0, $t0, $t1
	sw $t0, -6580($fp)
	lw $t0, -6580($fp)
	lw $t1, 0($t0)
	sw $t1, -6584($fp)
	addi $t0, $fp, -140
	sw $t0, -6588($fp)
	li $t0, 6
	sw $t0, -6592($fp)
	li $t0, 4
	lw $t1, -6592($fp)
	mul $t0, $t0, $t1
	sw $t0, -6596($fp)
	lw $t0, -6596($fp)
	lw $t1, -6588($fp)
	add $t0, $t0, $t1
	sw $t0, -6600($fp)
	lw $t0, -6600($fp)
	lw $t1, 0($t0)
	sw $t1, -6604($fp)
	lw $t0, -656($fp)
	sw $t0, -6608($fp)
	lw $t0, -6604($fp)
	lw $t1, -6608($fp)
	mul $t0, $t0, $t1
	sw $t0, -6612($fp)
	lw $t0, -6584($fp)
	lw $t1, -6612($fp)
	sub $t0, $t0, $t1
	sw $t0, -6616($fp)
	li $t0, 0
	sw $t0, -6620($fp)
	lw $t0, -644($fp)
	sw $t0, -6624($fp)
	lw $t1, -6624($fp)
	li $t2, 0
	bne $t1, $t2, label417
	j label416
label416:
	li $t0, 1
	sw $t0, -6620($fp)
label417:
	li $t0, 0
	sw $t0, -6628($fp)
	lw $t0, 8($fp)
	sw $t0, -6632($fp)
	li $t0, 0
	lw $t1, -6632($fp)
	sub $t0, $t0, $t1
	sw $t0, -6636($fp)
	li $t0, 0
	lw $t1, -6636($fp)
	sub $t0, $t0, $t1
	sw $t0, -6640($fp)
	li $t0, 0
	lw $t1, -6640($fp)
	sub $t0, $t0, $t1
	sw $t0, -6644($fp)
	addi $t0, $fp, -6360
	sw $t0, -6648($fp)
	lw $t0, -1292($fp)
	sw $t0, -6652($fp)
	li $t0, 4
	lw $t1, -6652($fp)
	mul $t0, $t0, $t1
	sw $t0, -6656($fp)
	lw $t0, -6656($fp)
	lw $t1, -6648($fp)
	add $t0, $t0, $t1
	sw $t0, -6660($fp)
	lw $t0, -6660($fp)
	lw $t1, 0($t0)
	sw $t1, -6664($fp)
	li $t0, 0
	lw $t1, -6664($fp)
	sub $t0, $t0, $t1
	sw $t0, -6668($fp)
	lw $t0, -6644($fp)
	lw $t1, -6668($fp)
	sub $t0, $t0, $t1
	sw $t0, -6672($fp)
	lw $t1, -6672($fp)
	li $t2, 0
	bne $t1, $t2, label418
	j label420
label420:
	addi $t0, $fp, -20
	sw $t0, -6676($fp)
	lw $t0, 8($fp)
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
	li $t0, 46251
	sw $t0, -6696($fp)
	lw $t0, -6692($fp)
	lw $t1, -6696($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6700($fp)
	lw $t0, -548($fp)
	sw $t0, -6704($fp)
	lw $t0, -620($fp)
	sw $t0, -6708($fp)
	lw $t0, -536($fp)
	sw $t0, -6712($fp)
	lw $t0, -6708($fp)
	lw $t1, -6712($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6716($fp)
	lw $t0, -1328($fp)
	sw $t0, -6720($fp)
	lw $t0, -6716($fp)
	lw $t1, -6720($fp)
	sub $t0, $t0, $t1
	sw $t0, -6724($fp)
	addi $sp, $sp, -4
	lw $t0, -6700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6724($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6728($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -6728($fp)
	sub $t0, $t0, $t1
	sw $t0, -6732($fp)
	lw $t1, -6732($fp)
	li $t2, 0
	bne $t1, $t2, label419
	j label418
label418:
	li $t0, 1
	sw $t0, -6628($fp)
label419:
	li $t0, 0
	sw $t0, -6736($fp)
	lw $t0, -620($fp)
	sw $t0, -6740($fp)
	lw $t1, -6740($fp)
	li $t2, 0
	bne $t1, $t2, label422
	j label421
label421:
	li $t0, 1
	sw $t0, -6736($fp)
label422:
label393:
label326:
	j label299
label301:
	j label294
label296:
label126:
	j label123
label122:
	addi $t0, $fp, -220
	sw $t0, -6744($fp)
	li $t0, 1
	sw $t0, -6748($fp)
	li $t0, 4
	lw $t1, -6748($fp)
	mul $t0, $t0, $t1
	sw $t0, -6752($fp)
	lw $t0, -6752($fp)
	lw $t1, -6744($fp)
	add $t0, $t0, $t1
	sw $t0, -6756($fp)
	lw $t0, -6756($fp)
	lw $t1, 0($t0)
	sw $t1, -6760($fp)
	li $t0, 0
	lw $t1, -6760($fp)
	sub $t0, $t0, $t1
	sw $t0, -6764($fp)
	lw $t1, -6764($fp)
	li $t2, 0
	bne $t1, $t2, label423
	j label424
label423:
label426:
	li $t0, 0
	sw $t0, -6768($fp)
	lw $t0, -416($fp)
	sw $t0, -6772($fp)
	lw $t0, -1328($fp)
	sw $t0, -6776($fp)
	lw $t1, -6772($fp)
	lw $t2, -6776($fp)
	bgt $t1, $t2, label429
	j label431
label431:
	lw $t0, -2072($fp)
	sw $t0, -6780($fp)
	lw $t1, -6780($fp)
	li $t2, 0
	bne $t1, $t2, label429
	j label430
label429:
	li $t0, 1
	sw $t0, -6768($fp)
label430:
	lw $t0, -1676($fp)
	sw $t0, -6784($fp)
	li $t0, 0
	sw $t0, -6788($fp)
	li $t0, 22146
	sw $t0, -6792($fp)
	li $t0, 11378
	sw $t0, -6796($fp)
	lw $t1, -6792($fp)
	lw $t2, -6796($fp)
	bge $t1, $t2, label432
	j label433
label432:
	li $t0, 1
	sw $t0, -6788($fp)
label433:
	addi $sp, $sp, -4
	lw $t0, -6768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6788($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6800($fp)
	addi $sp, $sp, 16
	lw $t0, -428($fp)
	sw $t0, -6804($fp)
	lw $t0, -6800($fp)
	lw $t1, -6804($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6808($fp)
	li $t0, 0
	sw $t0, -6812($fp)
	li $t0, 39175
	sw $t0, -6816($fp)
	lw $t1, -6816($fp)
	li $t2, 0
	bne $t1, $t2, label435
	j label434
label434:
	li $t0, 1
	sw $t0, -6812($fp)
label435:
	lw $t0, -6808($fp)
	lw $t1, -6812($fp)
	mul $t0, $t0, $t1
	sw $t0, -6820($fp)
	addi $t0, $fp, -20
	sw $t0, -6824($fp)
	li $t0, 0
	sw $t0, -6828($fp)
	li $t0, 4
	lw $t1, -6828($fp)
	mul $t0, $t0, $t1
	sw $t0, -6832($fp)
	lw $t0, -6832($fp)
	lw $t1, -6824($fp)
	add $t0, $t0, $t1
	sw $t0, -6836($fp)
	lw $t0, -6836($fp)
	lw $t1, 0($t0)
	sw $t1, -6840($fp)
	lw $t0, -2036($fp)
	sw $t0, -6844($fp)
	lw $t0, -6844($fp)
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	sw $t0, -6848($fp)
	li $t0, 0
	sw $t0, -6852($fp)
	li $t0, 39863
	sw $t0, -6856($fp)
	lw $t0, -272($fp)
	sw $t0, -6860($fp)
	lw $t1, -6856($fp)
	lw $t2, -6860($fp)
	bne $t1, $t2, label436
	j label438
label438:
	li $t0, 35404
	sw $t0, -6864($fp)
	lw $t1, -6864($fp)
	li $t2, 0
	bne $t1, $t2, label436
	j label437
label436:
	li $t0, 1
	sw $t0, -6852($fp)
label437:
	addi $sp, $sp, -4
	lw $t0, -6840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6852($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6868($fp)
	addi $sp, $sp, 16
	lw $t0, -6820($fp)
	lw $t1, -6868($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6872($fp)
	li $t0, 0
	sw $t0, -6876($fp)
	lw $t0, -548($fp)
	sw $t0, -6880($fp)
	li $t0, 29160
	sw $t0, -6884($fp)
	lw $t1, -6880($fp)
	lw $t2, -6884($fp)
	bge $t1, $t2, label441
	j label440
label441:
	li $t0, 20139
	sw $t0, -6888($fp)
	lw $t1, -6888($fp)
	li $t2, 0
	bne $t1, $t2, label439
	j label440
label439:
	li $t0, 1
	sw $t0, -6876($fp)
label440:
	li $t0, 28075
	sw $t0, -6892($fp)
	lw $t0, -2096($fp)
	sw $t0, -6896($fp)
	lw $t0, -6892($fp)
	lw $t1, -6896($fp)
	mul $t0, $t0, $t1
	sw $t0, -6900($fp)
	lw $t0, -2084($fp)
	sw $t0, -6904($fp)
	lw $t0, -6900($fp)
	lw $t1, -6904($fp)
	mul $t0, $t0, $t1
	sw $t0, -6908($fp)
	li $t0, 29271
	sw $t0, -6912($fp)
	lw $t0, -2072($fp)
	sw $t0, -6916($fp)
	lw $t0, -6912($fp)
	lw $t1, -6916($fp)
	mul $t0, $t0, $t1
	sw $t0, -6920($fp)
	addi $sp, $sp, -4
	lw $t0, -6876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6920($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6924($fp)
	addi $sp, $sp, 16
	lw $t0, -6872($fp)
	lw $t1, -6924($fp)
	sub $t0, $t0, $t1
	sw $t0, -6928($fp)
	lw $t1, -6928($fp)
	li $t2, 0
	bne $t1, $t2, label427
	j label428
label427:
	li $t0, 0
	sw $t0, -6932($fp)
	lw $t0, -584($fp)
	sw $t0, -6936($fp)
	lw $t0, -1304($fp)
	sw $t0, -6940($fp)
	lw $t0, -6936($fp)
	lw $t1, -6940($fp)
	sub $t0, $t0, $t1
	sw $t0, -6944($fp)
	lw $t1, -6944($fp)
	li $t2, 0
	bne $t1, $t2, label444
	j label443
label444:
	lw $t0, -428($fp)
	sw $t0, -6948($fp)
	lw $t1, -6948($fp)
	li $t2, 0
	bne $t1, $t2, label442
	j label443
label442:
	li $t0, 1
	sw $t0, -6932($fp)
label443:
	lw $ra, -4($fp)
	lw $v0, -6932($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label426
label428:
	j label425
label424:
	lw $t0, -392($fp)
	sw $t0, -6952($fp)
	lw $ra, -4($fp)
	lw $v0, -6952($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label425:
label123:
	lw $t0, -272($fp)
	sw $t0, -6956($fp)
	lw $t0, -6956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -284($fp)
	sw $t0, -6960($fp)
	lw $t0, -6960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -296($fp)
	sw $t0, -6964($fp)
	lw $t0, -6964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -308($fp)
	sw $t0, -6968($fp)
	lw $t0, -6968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -320($fp)
	sw $t0, -6972($fp)
	lw $t0, -6972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -332($fp)
	sw $t0, -6976($fp)
	lw $t0, -6976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -6980($fp)
	li $t0, 0
	sw $t0, -6984($fp)
	li $t0, 4
	lw $t1, -6984($fp)
	mul $t0, $t0, $t1
	sw $t0, -6988($fp)
	lw $t0, -6988($fp)
	lw $t1, -6980($fp)
	add $t0, $t0, $t1
	sw $t0, -6992($fp)
	lw $t0, -6992($fp)
	lw $t1, 0($t0)
	sw $t1, -6996($fp)
	lw $t0, -6996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -7000($fp)
	li $t0, 1
	sw $t0, -7004($fp)
	li $t0, 4
	lw $t1, -7004($fp)
	mul $t0, $t0, $t1
	sw $t0, -7008($fp)
	lw $t0, -7008($fp)
	lw $t1, -7000($fp)
	add $t0, $t0, $t1
	sw $t0, -7012($fp)
	lw $t0, -7012($fp)
	lw $t1, 0($t0)
	sw $t1, -7016($fp)
	lw $t0, -7016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -392($fp)
	sw $t0, -7020($fp)
	lw $t0, -7020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -404($fp)
	sw $t0, -7024($fp)
	lw $t0, -7024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -416($fp)
	sw $t0, -7028($fp)
	lw $t0, -7028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -428($fp)
	sw $t0, -7032($fp)
	lw $t0, -7032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -440($fp)
	sw $t0, -7036($fp)
	lw $t0, -7036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -452($fp)
	sw $t0, -7040($fp)
	lw $t0, -7040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -464($fp)
	sw $t0, -7044($fp)
	lw $t0, -7044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -7048($fp)
	li $t0, 0
	sw $t0, -7052($fp)
	li $t0, 4
	lw $t1, -7052($fp)
	mul $t0, $t0, $t1
	sw $t0, -7056($fp)
	lw $t0, -7056($fp)
	lw $t1, -7048($fp)
	add $t0, $t0, $t1
	sw $t0, -7060($fp)
	lw $t0, -7060($fp)
	lw $t1, 0($t0)
	sw $t1, -7064($fp)
	lw $t0, -7064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -7068($fp)
	li $t0, 1
	sw $t0, -7072($fp)
	li $t0, 4
	lw $t1, -7072($fp)
	mul $t0, $t0, $t1
	sw $t0, -7076($fp)
	lw $t0, -7076($fp)
	lw $t1, -7068($fp)
	add $t0, $t0, $t1
	sw $t0, -7080($fp)
	lw $t0, -7080($fp)
	lw $t1, 0($t0)
	sw $t1, -7084($fp)
	lw $t0, -7084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -524($fp)
	sw $t0, -7088($fp)
	lw $t0, -7088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -536($fp)
	sw $t0, -7092($fp)
	lw $t0, -7092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -548($fp)
	sw $t0, -7096($fp)
	lw $t0, -7096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -7100($fp)
	lw $t0, -7100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	sw $t0, -7104($fp)
	lw $t0, -7104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -584($fp)
	sw $t0, -7108($fp)
	lw $t0, -7108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -596($fp)
	sw $t0, -7112($fp)
	lw $t0, -7112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -608($fp)
	sw $t0, -7116($fp)
	lw $t0, -7116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -620($fp)
	sw $t0, -7120($fp)
	lw $t0, -7120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -632($fp)
	sw $t0, -7124($fp)
	lw $t0, -7124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -644($fp)
	sw $t0, -7128($fp)
	lw $t0, -7128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -656($fp)
	sw $t0, -7132($fp)
	lw $t0, -7132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -668($fp)
	sw $t0, -7136($fp)
	lw $t0, -7136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -680($fp)
	sw $t0, -7140($fp)
	lw $t0, -7140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -692($fp)
	sw $t0, -7144($fp)
	lw $t0, -7144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -7148($fp)
	li $t0, 0
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
	lw $t0, -7164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -7168($fp)
	li $t0, 1
	sw $t0, -7172($fp)
	li $t0, 4
	lw $t1, -7172($fp)
	mul $t0, $t0, $t1
	sw $t0, -7176($fp)
	lw $t0, -7176($fp)
	lw $t1, -7168($fp)
	add $t0, $t0, $t1
	sw $t0, -7180($fp)
	lw $t0, -7180($fp)
	lw $t1, 0($t0)
	sw $t1, -7184($fp)
	lw $t0, -7184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -7188($fp)
	li $t0, 0
	sw $t0, -7192($fp)
	li $t0, 4
	lw $t1, -7192($fp)
	mul $t0, $t0, $t1
	sw $t0, -7196($fp)
	lw $t0, -7196($fp)
	lw $t1, -7188($fp)
	add $t0, $t0, $t1
	sw $t0, -7200($fp)
	lw $t0, -7200($fp)
	lw $t1, 0($t0)
	sw $t1, -7204($fp)
	lw $t0, -7204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -7208($fp)
	li $t0, 1
	sw $t0, -7212($fp)
	li $t0, 4
	lw $t1, -7212($fp)
	mul $t0, $t0, $t1
	sw $t0, -7216($fp)
	lw $t0, -7216($fp)
	lw $t1, -7208($fp)
	add $t0, $t0, $t1
	sw $t0, -7220($fp)
	lw $t0, -7220($fp)
	lw $t1, 0($t0)
	sw $t1, -7224($fp)
	lw $t0, -7224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -7228($fp)
	li $t0, 2
	sw $t0, -7232($fp)
	li $t0, 4
	lw $t1, -7232($fp)
	mul $t0, $t0, $t1
	sw $t0, -7236($fp)
	lw $t0, -7236($fp)
	lw $t1, -7228($fp)
	add $t0, $t0, $t1
	sw $t0, -7240($fp)
	lw $t0, -7240($fp)
	lw $t1, 0($t0)
	sw $t1, -7244($fp)
	lw $t0, -7244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -7248($fp)
	li $t0, 3
	sw $t0, -7252($fp)
	li $t0, 4
	lw $t1, -7252($fp)
	mul $t0, $t0, $t1
	sw $t0, -7256($fp)
	lw $t0, -7256($fp)
	lw $t1, -7248($fp)
	add $t0, $t0, $t1
	sw $t0, -7260($fp)
	lw $t0, -7260($fp)
	lw $t1, 0($t0)
	sw $t1, -7264($fp)
	lw $t0, -7264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -7268($fp)
	li $t0, 4
	sw $t0, -7272($fp)
	li $t0, 4
	lw $t1, -7272($fp)
	mul $t0, $t0, $t1
	sw $t0, -7276($fp)
	lw $t0, -7276($fp)
	lw $t1, -7268($fp)
	add $t0, $t0, $t1
	sw $t0, -7280($fp)
	lw $t0, -7280($fp)
	lw $t1, 0($t0)
	sw $t1, -7284($fp)
	lw $t0, -7284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -7288($fp)
	li $t0, 5
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
	lw $t0, -7304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -7308($fp)
	li $t0, 6
	sw $t0, -7312($fp)
	li $t0, 4
	lw $t1, -7312($fp)
	mul $t0, $t0, $t1
	sw $t0, -7316($fp)
	lw $t0, -7316($fp)
	lw $t1, -7308($fp)
	add $t0, $t0, $t1
	sw $t0, -7320($fp)
	lw $t0, -7320($fp)
	lw $t1, 0($t0)
	sw $t1, -7324($fp)
	lw $t0, -7324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -7328($fp)
	li $t0, 7
	sw $t0, -7332($fp)
	li $t0, 4
	lw $t1, -7332($fp)
	mul $t0, $t0, $t1
	sw $t0, -7336($fp)
	lw $t0, -7336($fp)
	lw $t1, -7328($fp)
	add $t0, $t0, $t1
	sw $t0, -7340($fp)
	lw $t0, -7340($fp)
	lw $t1, 0($t0)
	sw $t1, -7344($fp)
	lw $t0, -7344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -7348($fp)
	li $t0, 8
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
	addi $t0, $fp, -68
	sw $t0, -7368($fp)
	li $t0, 9
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
	lw $t0, -992($fp)
	sw $t0, -7388($fp)
	lw $t0, -7388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
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
	lw $t0, -1028($fp)
	sw $t0, -7412($fp)
	lw $t0, -7412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -7416($fp)
	li $t0, 0
	sw $t0, -7420($fp)
	li $t0, 4
	lw $t1, -7420($fp)
	mul $t0, $t0, $t1
	sw $t0, -7424($fp)
	lw $t0, -7424($fp)
	lw $t1, -7416($fp)
	add $t0, $t0, $t1
	sw $t0, -7428($fp)
	lw $t0, -7428($fp)
	lw $t1, 0($t0)
	sw $t1, -7432($fp)
	lw $t0, -7432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -7436($fp)
	li $t0, 1
	sw $t0, -7440($fp)
	li $t0, 4
	lw $t1, -7440($fp)
	mul $t0, $t0, $t1
	sw $t0, -7444($fp)
	lw $t0, -7444($fp)
	lw $t1, -7436($fp)
	add $t0, $t0, $t1
	sw $t0, -7448($fp)
	lw $t0, -7448($fp)
	lw $t1, 0($t0)
	sw $t1, -7452($fp)
	lw $t0, -7452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -7456($fp)
	li $t0, 2
	sw $t0, -7460($fp)
	li $t0, 4
	lw $t1, -7460($fp)
	mul $t0, $t0, $t1
	sw $t0, -7464($fp)
	lw $t0, -7464($fp)
	lw $t1, -7456($fp)
	add $t0, $t0, $t1
	sw $t0, -7468($fp)
	lw $t0, -7468($fp)
	lw $t1, 0($t0)
	sw $t1, -7472($fp)
	lw $t0, -7472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -7476($fp)
	li $t0, 3
	sw $t0, -7480($fp)
	li $t0, 4
	lw $t1, -7480($fp)
	mul $t0, $t0, $t1
	sw $t0, -7484($fp)
	lw $t0, -7484($fp)
	lw $t1, -7476($fp)
	add $t0, $t0, $t1
	sw $t0, -7488($fp)
	lw $t0, -7488($fp)
	lw $t1, 0($t0)
	sw $t1, -7492($fp)
	lw $t0, -7492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -7496($fp)
	li $t0, 4
	sw $t0, -7500($fp)
	li $t0, 4
	lw $t1, -7500($fp)
	mul $t0, $t0, $t1
	sw $t0, -7504($fp)
	lw $t0, -7504($fp)
	lw $t1, -7496($fp)
	add $t0, $t0, $t1
	sw $t0, -7508($fp)
	lw $t0, -7508($fp)
	lw $t1, 0($t0)
	sw $t1, -7512($fp)
	lw $t0, -7512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -7516($fp)
	li $t0, 5
	sw $t0, -7520($fp)
	li $t0, 4
	lw $t1, -7520($fp)
	mul $t0, $t0, $t1
	sw $t0, -7524($fp)
	lw $t0, -7524($fp)
	lw $t1, -7516($fp)
	add $t0, $t0, $t1
	sw $t0, -7528($fp)
	lw $t0, -7528($fp)
	lw $t1, 0($t0)
	sw $t1, -7532($fp)
	lw $t0, -7532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -7536($fp)
	li $t0, 6
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
	lw $t0, -7552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -7556($fp)
	li $t0, 7
	sw $t0, -7560($fp)
	li $t0, 4
	lw $t1, -7560($fp)
	mul $t0, $t0, $t1
	sw $t0, -7564($fp)
	lw $t0, -7564($fp)
	lw $t1, -7556($fp)
	add $t0, $t0, $t1
	sw $t0, -7568($fp)
	lw $t0, -7568($fp)
	lw $t1, 0($t0)
	sw $t1, -7572($fp)
	lw $t0, -7572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -7576($fp)
	li $t0, 8
	sw $t0, -7580($fp)
	li $t0, 4
	lw $t1, -7580($fp)
	mul $t0, $t0, $t1
	sw $t0, -7584($fp)
	lw $t0, -7584($fp)
	lw $t1, -7576($fp)
	add $t0, $t0, $t1
	sw $t0, -7588($fp)
	lw $t0, -7588($fp)
	lw $t1, 0($t0)
	sw $t1, -7592($fp)
	lw $t0, -7592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -7596($fp)
	li $t0, 9
	sw $t0, -7600($fp)
	li $t0, 4
	lw $t1, -7600($fp)
	mul $t0, $t0, $t1
	sw $t0, -7604($fp)
	lw $t0, -7604($fp)
	lw $t1, -7596($fp)
	add $t0, $t0, $t1
	sw $t0, -7608($fp)
	lw $t0, -7608($fp)
	lw $t1, 0($t0)
	sw $t1, -7612($fp)
	lw $t0, -7612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1280($fp)
	sw $t0, -7616($fp)
	lw $t0, -7616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1292($fp)
	sw $t0, -7620($fp)
	lw $t0, -7620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1304($fp)
	sw $t0, -7624($fp)
	lw $t0, -7624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1316($fp)
	sw $t0, -7628($fp)
	lw $t0, -7628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1328($fp)
	sw $t0, -7632($fp)
	lw $t0, -7632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -7636($fp)
	li $t0, 0
	sw $t0, -7640($fp)
	li $t0, 4
	lw $t1, -7640($fp)
	mul $t0, $t0, $t1
	sw $t0, -7644($fp)
	lw $t0, -7644($fp)
	lw $t1, -7636($fp)
	add $t0, $t0, $t1
	sw $t0, -7648($fp)
	lw $t0, -7648($fp)
	lw $t1, 0($t0)
	sw $t1, -7652($fp)
	lw $t0, -7652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -7656($fp)
	li $t0, 1
	sw $t0, -7660($fp)
	li $t0, 4
	lw $t1, -7660($fp)
	mul $t0, $t0, $t1
	sw $t0, -7664($fp)
	lw $t0, -7664($fp)
	lw $t1, -7656($fp)
	add $t0, $t0, $t1
	sw $t0, -7668($fp)
	lw $t0, -7668($fp)
	lw $t1, 0($t0)
	sw $t1, -7672($fp)
	lw $t0, -7672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -7676($fp)
	li $t0, 2
	sw $t0, -7680($fp)
	li $t0, 4
	lw $t1, -7680($fp)
	mul $t0, $t0, $t1
	sw $t0, -7684($fp)
	lw $t0, -7684($fp)
	lw $t1, -7676($fp)
	add $t0, $t0, $t1
	sw $t0, -7688($fp)
	lw $t0, -7688($fp)
	lw $t1, 0($t0)
	sw $t1, -7692($fp)
	lw $t0, -7692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -7696($fp)
	li $t0, 3
	sw $t0, -7700($fp)
	li $t0, 4
	lw $t1, -7700($fp)
	mul $t0, $t0, $t1
	sw $t0, -7704($fp)
	lw $t0, -7704($fp)
	lw $t1, -7696($fp)
	add $t0, $t0, $t1
	sw $t0, -7708($fp)
	lw $t0, -7708($fp)
	lw $t1, 0($t0)
	sw $t1, -7712($fp)
	lw $t0, -7712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -7716($fp)
	li $t0, 4
	sw $t0, -7720($fp)
	li $t0, 4
	lw $t1, -7720($fp)
	mul $t0, $t0, $t1
	sw $t0, -7724($fp)
	lw $t0, -7724($fp)
	lw $t1, -7716($fp)
	add $t0, $t0, $t1
	sw $t0, -7728($fp)
	lw $t0, -7728($fp)
	lw $t1, 0($t0)
	sw $t1, -7732($fp)
	lw $t0, -7732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -7736($fp)
	li $t0, 5
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
	lw $t0, -7752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -7756($fp)
	li $t0, 6
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
	lw $t0, -7772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -7776($fp)
	li $t0, 0
	sw $t0, -7780($fp)
	li $t0, 4
	lw $t1, -7780($fp)
	mul $t0, $t0, $t1
	sw $t0, -7784($fp)
	lw $t0, -7784($fp)
	lw $t1, -7776($fp)
	add $t0, $t0, $t1
	sw $t0, -7788($fp)
	lw $t0, -7788($fp)
	lw $t1, 0($t0)
	sw $t1, -7792($fp)
	lw $t0, -7792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -7796($fp)
	li $t0, 1
	sw $t0, -7800($fp)
	li $t0, 4
	lw $t1, -7800($fp)
	mul $t0, $t0, $t1
	sw $t0, -7804($fp)
	lw $t0, -7804($fp)
	lw $t1, -7796($fp)
	add $t0, $t0, $t1
	sw $t0, -7808($fp)
	lw $t0, -7808($fp)
	lw $t1, 0($t0)
	sw $t1, -7812($fp)
	lw $t0, -7812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -7816($fp)
	li $t0, 2
	sw $t0, -7820($fp)
	li $t0, 4
	lw $t1, -7820($fp)
	mul $t0, $t0, $t1
	sw $t0, -7824($fp)
	lw $t0, -7824($fp)
	lw $t1, -7816($fp)
	add $t0, $t0, $t1
	sw $t0, -7828($fp)
	lw $t0, -7828($fp)
	lw $t1, 0($t0)
	sw $t1, -7832($fp)
	lw $t0, -7832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -7836($fp)
	li $t0, 3
	sw $t0, -7840($fp)
	li $t0, 4
	lw $t1, -7840($fp)
	mul $t0, $t0, $t1
	sw $t0, -7844($fp)
	lw $t0, -7844($fp)
	lw $t1, -7836($fp)
	add $t0, $t0, $t1
	sw $t0, -7848($fp)
	lw $t0, -7848($fp)
	lw $t1, 0($t0)
	sw $t1, -7852($fp)
	lw $t0, -7852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -7856($fp)
	li $t0, 4
	sw $t0, -7860($fp)
	li $t0, 4
	lw $t1, -7860($fp)
	mul $t0, $t0, $t1
	sw $t0, -7864($fp)
	lw $t0, -7864($fp)
	lw $t1, -7856($fp)
	add $t0, $t0, $t1
	sw $t0, -7868($fp)
	lw $t0, -7868($fp)
	lw $t1, 0($t0)
	sw $t1, -7872($fp)
	lw $t0, -7872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -7876($fp)
	li $t0, 5
	sw $t0, -7880($fp)
	li $t0, 4
	lw $t1, -7880($fp)
	mul $t0, $t0, $t1
	sw $t0, -7884($fp)
	lw $t0, -7884($fp)
	lw $t1, -7876($fp)
	add $t0, $t0, $t1
	sw $t0, -7888($fp)
	lw $t0, -7888($fp)
	lw $t1, 0($t0)
	sw $t1, -7892($fp)
	lw $t0, -7892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -7896($fp)
	li $t0, 6
	sw $t0, -7900($fp)
	li $t0, 4
	lw $t1, -7900($fp)
	mul $t0, $t0, $t1
	sw $t0, -7904($fp)
	lw $t0, -7904($fp)
	lw $t1, -7896($fp)
	add $t0, $t0, $t1
	sw $t0, -7908($fp)
	lw $t0, -7908($fp)
	lw $t1, 0($t0)
	sw $t1, -7912($fp)
	lw $t0, -7912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1676($fp)
	sw $t0, -7916($fp)
	lw $t0, -7916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1688($fp)
	sw $t0, -7920($fp)
	lw $t0, -7920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -7924($fp)
	li $t0, 0
	sw $t0, -7928($fp)
	li $t0, 4
	lw $t1, -7928($fp)
	mul $t0, $t0, $t1
	sw $t0, -7932($fp)
	lw $t0, -7932($fp)
	lw $t1, -7924($fp)
	add $t0, $t0, $t1
	sw $t0, -7936($fp)
	lw $t0, -7936($fp)
	lw $t1, 0($t0)
	sw $t1, -7940($fp)
	lw $t0, -7940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -7944($fp)
	li $t0, 1
	sw $t0, -7948($fp)
	li $t0, 4
	lw $t1, -7948($fp)
	mul $t0, $t0, $t1
	sw $t0, -7952($fp)
	lw $t0, -7952($fp)
	lw $t1, -7944($fp)
	add $t0, $t0, $t1
	sw $t0, -7956($fp)
	lw $t0, -7956($fp)
	lw $t1, 0($t0)
	sw $t1, -7960($fp)
	lw $t0, -7960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -7964($fp)
	li $t0, 2
	sw $t0, -7968($fp)
	li $t0, 4
	lw $t1, -7968($fp)
	mul $t0, $t0, $t1
	sw $t0, -7972($fp)
	lw $t0, -7972($fp)
	lw $t1, -7964($fp)
	add $t0, $t0, $t1
	sw $t0, -7976($fp)
	lw $t0, -7976($fp)
	lw $t1, 0($t0)
	sw $t1, -7980($fp)
	lw $t0, -7980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1772($fp)
	sw $t0, -7984($fp)
	lw $t0, -7984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1784($fp)
	sw $t0, -7988($fp)
	lw $t0, -7988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -7992($fp)
	li $t0, 0
	sw $t0, -7996($fp)
	li $t0, 4
	lw $t1, -7996($fp)
	mul $t0, $t0, $t1
	sw $t0, -8000($fp)
	lw $t0, -8000($fp)
	lw $t1, -7992($fp)
	add $t0, $t0, $t1
	sw $t0, -8004($fp)
	lw $t0, -8004($fp)
	lw $t1, 0($t0)
	sw $t1, -8008($fp)
	lw $t0, -8008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -8012($fp)
	li $t0, 1
	sw $t0, -8016($fp)
	li $t0, 4
	lw $t1, -8016($fp)
	mul $t0, $t0, $t1
	sw $t0, -8020($fp)
	lw $t0, -8020($fp)
	lw $t1, -8012($fp)
	add $t0, $t0, $t1
	sw $t0, -8024($fp)
	lw $t0, -8024($fp)
	lw $t1, 0($t0)
	sw $t1, -8028($fp)
	lw $t0, -8028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -8032($fp)
	li $t0, 2
	sw $t0, -8036($fp)
	li $t0, 4
	lw $t1, -8036($fp)
	mul $t0, $t0, $t1
	sw $t0, -8040($fp)
	lw $t0, -8040($fp)
	lw $t1, -8032($fp)
	add $t0, $t0, $t1
	sw $t0, -8044($fp)
	lw $t0, -8044($fp)
	lw $t1, 0($t0)
	sw $t1, -8048($fp)
	lw $t0, -8048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -8052($fp)
	li $t0, 3
	sw $t0, -8056($fp)
	li $t0, 4
	lw $t1, -8056($fp)
	mul $t0, $t0, $t1
	sw $t0, -8060($fp)
	lw $t0, -8060($fp)
	lw $t1, -8052($fp)
	add $t0, $t0, $t1
	sw $t0, -8064($fp)
	lw $t0, -8064($fp)
	lw $t1, 0($t0)
	sw $t1, -8068($fp)
	lw $t0, -8068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -8072($fp)
	li $t0, 4
	sw $t0, -8076($fp)
	li $t0, 4
	lw $t1, -8076($fp)
	mul $t0, $t0, $t1
	sw $t0, -8080($fp)
	lw $t0, -8080($fp)
	lw $t1, -8072($fp)
	add $t0, $t0, $t1
	sw $t0, -8084($fp)
	lw $t0, -8084($fp)
	lw $t1, 0($t0)
	sw $t1, -8088($fp)
	lw $t0, -8088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -8092($fp)
	li $t0, 5
	sw $t0, -8096($fp)
	li $t0, 4
	lw $t1, -8096($fp)
	mul $t0, $t0, $t1
	sw $t0, -8100($fp)
	lw $t0, -8100($fp)
	lw $t1, -8092($fp)
	add $t0, $t0, $t1
	sw $t0, -8104($fp)
	lw $t0, -8104($fp)
	lw $t1, 0($t0)
	sw $t1, -8108($fp)
	lw $t0, -8108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -8112($fp)
	li $t0, 6
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
	addi $t0, $fp, -220
	sw $t0, -8132($fp)
	li $t0, 7
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
	addi $t0, $fp, -220
	sw $t0, -8152($fp)
	li $t0, 8
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
	addi $t0, $fp, -220
	sw $t0, -8172($fp)
	li $t0, 9
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
	lw $t0, -2036($fp)
	sw $t0, -8192($fp)
	lw $t0, -8192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2048($fp)
	sw $t0, -8196($fp)
	lw $t0, -8196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2060($fp)
	sw $t0, -8200($fp)
	lw $t0, -8200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2072($fp)
	sw $t0, -8204($fp)
	lw $t0, -8204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2084($fp)
	sw $t0, -8208($fp)
	lw $t0, -8208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2096($fp)
	sw $t0, -8212($fp)
	lw $t0, -8212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2108($fp)
	sw $t0, -8216($fp)
	lw $t0, -8216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2120($fp)
	sw $t0, -8220($fp)
	lw $t0, -8220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -8224($fp)
	li $t0, 0
	sw $t0, -8228($fp)
	li $t0, 4
	lw $t1, -8228($fp)
	mul $t0, $t0, $t1
	sw $t0, -8232($fp)
	lw $t0, -8232($fp)
	lw $t1, -8224($fp)
	add $t0, $t0, $t1
	sw $t0, -8236($fp)
	lw $t0, -8236($fp)
	lw $t1, 0($t0)
	sw $t1, -8240($fp)
	lw $t0, -8240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -8244($fp)
	li $t0, 0
	sw $t0, -8248($fp)
	li $t0, 4
	lw $t1, -8248($fp)
	mul $t0, $t0, $t1
	sw $t0, -8252($fp)
	lw $t0, -8252($fp)
	lw $t1, -8244($fp)
	add $t0, $t0, $t1
	sw $t0, -8256($fp)
	lw $t0, -8256($fp)
	lw $t1, 0($t0)
	sw $t1, -8260($fp)
	lw $t0, -8260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -8264($fp)
	li $t0, 1
	sw $t0, -8268($fp)
	li $t0, 4
	lw $t1, -8268($fp)
	mul $t0, $t0, $t1
	sw $t0, -8272($fp)
	lw $t0, -8272($fp)
	lw $t1, -8264($fp)
	add $t0, $t0, $t1
	sw $t0, -8276($fp)
	lw $t0, -8276($fp)
	lw $t1, 0($t0)
	sw $t1, -8280($fp)
	lw $t0, -8280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -8284($fp)
	li $t0, 2
	sw $t0, -8288($fp)
	li $t0, 4
	lw $t1, -8288($fp)
	mul $t0, $t0, $t1
	sw $t0, -8292($fp)
	lw $t0, -8292($fp)
	lw $t1, -8284($fp)
	add $t0, $t0, $t1
	sw $t0, -8296($fp)
	lw $t0, -8296($fp)
	lw $t1, 0($t0)
	sw $t1, -8300($fp)
	lw $t0, -8300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -8304($fp)
	li $t0, 3
	sw $t0, -8308($fp)
	li $t0, 4
	lw $t1, -8308($fp)
	mul $t0, $t0, $t1
	sw $t0, -8312($fp)
	lw $t0, -8312($fp)
	lw $t1, -8304($fp)
	add $t0, $t0, $t1
	sw $t0, -8316($fp)
	lw $t0, -8316($fp)
	lw $t1, 0($t0)
	sw $t1, -8320($fp)
	lw $t0, -8320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -8324($fp)
	li $t0, 4
	sw $t0, -8328($fp)
	li $t0, 4
	lw $t1, -8328($fp)
	mul $t0, $t0, $t1
	sw $t0, -8332($fp)
	lw $t0, -8332($fp)
	lw $t1, -8324($fp)
	add $t0, $t0, $t1
	sw $t0, -8336($fp)
	lw $t0, -8336($fp)
	lw $t1, 0($t0)
	sw $t1, -8340($fp)
	lw $t0, -8340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -8344($fp)
	li $t0, 5
	sw $t0, -8348($fp)
	li $t0, 4
	lw $t1, -8348($fp)
	mul $t0, $t0, $t1
	sw $t0, -8352($fp)
	lw $t0, -8352($fp)
	lw $t1, -8344($fp)
	add $t0, $t0, $t1
	sw $t0, -8356($fp)
	lw $t0, -8356($fp)
	lw $t1, 0($t0)
	sw $t1, -8360($fp)
	lw $t0, -8360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -8364($fp)
	li $t0, 6
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
	addi $t0, $fp, -264
	sw $t0, -8384($fp)
	li $t0, 0
	sw $t0, -8388($fp)
	li $t0, 4
	lw $t1, -8388($fp)
	mul $t0, $t0, $t1
	sw $t0, -8392($fp)
	lw $t0, -8392($fp)
	lw $t1, -8384($fp)
	add $t0, $t0, $t1
	sw $t0, -8396($fp)
	lw $t0, -8396($fp)
	lw $t1, 0($t0)
	sw $t1, -8400($fp)
	lw $t0, -8400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -264
	sw $t0, -8404($fp)
	li $t0, 1
	sw $t0, -8408($fp)
	li $t0, 4
	lw $t1, -8408($fp)
	mul $t0, $t0, $t1
	sw $t0, -8412($fp)
	lw $t0, -8412($fp)
	lw $t1, -8404($fp)
	add $t0, $t0, $t1
	sw $t0, -8416($fp)
	lw $t0, -8416($fp)
	lw $t1, 0($t0)
	sw $t1, -8420($fp)
	lw $t0, -8420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -264
	sw $t0, -8424($fp)
	li $t0, 2
	sw $t0, -8428($fp)
	li $t0, 4
	lw $t1, -8428($fp)
	mul $t0, $t0, $t1
	sw $t0, -8432($fp)
	lw $t0, -8432($fp)
	lw $t1, -8424($fp)
	add $t0, $t0, $t1
	sw $t0, -8436($fp)
	lw $t0, -8436($fp)
	lw $t1, 0($t0)
	sw $t1, -8440($fp)
	lw $t0, -8440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2396($fp)
	sw $t0, -8444($fp)
	lw $t0, -8444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2408($fp)
	sw $t0, -8448($fp)
	lw $t0, -8448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2060($fp)
	sw $t0, -8452($fp)
	addi $t0, $fp, -140
	sw $t0, -8456($fp)
	lw $t0, -440($fp)
	sw $t0, -8460($fp)
	li $t0, 63167
	sw $t0, -8464($fp)
	lw $t0, -8460($fp)
	lw $t1, -8464($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8468($fp)
	li $t0, 4
	lw $t1, -8468($fp)
	mul $t0, $t0, $t1
	sw $t0, -8472($fp)
	lw $t0, -8472($fp)
	lw $t1, -8456($fp)
	add $t0, $t0, $t1
	sw $t0, -8476($fp)
	lw $t0, -8476($fp)
	lw $t1, 0($t0)
	sw $t1, -8480($fp)
	lw $t0, -8452($fp)
	lw $t1, -8480($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8484($fp)
	lw $ra, -4($fp)
	lw $v0, -8484($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -12
	li $t0, 48137
	sw $t0, -8($fp)
	li $t0, 0
	lw $t1, -8($fp)
	sub $t0, $t0, $t1
	sw $t0, -12($fp)
	li $t0, 0
	lw $t1, -12($fp)
	sub $t0, $t0, $t1
	sw $t0, -16($fp)
	lw $ra, -4($fp)
	lw $v0, -16($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1408
	li $t0, 23247
	sw $t0, -64($fp)
	addi $t0, $fp, -36
	sw $t0, -68($fp)
	li $t0, 0
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -76($fp)
	lw $t0, -68($fp)
	lw $t1, -76($fp)
	add $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $t0, -64($fp)
	lw $t1, -80($fp)
	sw $t0, 0($t1)
	lw $t0, -80($fp)
	lw $t1, 0($t0)
	sw $t1, -84($fp)
	li $t0, 36724
	sw $t0, -88($fp)
	addi $t0, $fp, -36
	sw $t0, -92($fp)
	li $t0, 1
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
	li $t0, 16148
	sw $t0, -112($fp)
	addi $t0, $fp, -36
	sw $t0, -116($fp)
	li $t0, 2
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
	li $t0, 29095
	sw $t0, -136($fp)
	addi $t0, $fp, -36
	sw $t0, -140($fp)
	li $t0, 3
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
	li $t0, 51358
	sw $t0, -160($fp)
	addi $t0, $fp, -36
	sw $t0, -164($fp)
	li $t0, 4
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -172($fp)
	lw $t0, -164($fp)
	lw $t1, -172($fp)
	add $t0, $t0, $t1
	sw $t0, -176($fp)
	lw $t0, -160($fp)
	lw $t1, -176($fp)
	sw $t0, 0($t1)
	lw $t0, -176($fp)
	lw $t1, 0($t0)
	sw $t1, -180($fp)
	li $t0, 6930
	sw $t0, -184($fp)
	addi $t0, $fp, -36
	sw $t0, -188($fp)
	li $t0, 5
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -196($fp)
	lw $t0, -188($fp)
	lw $t1, -196($fp)
	add $t0, $t0, $t1
	sw $t0, -200($fp)
	lw $t0, -184($fp)
	lw $t1, -200($fp)
	sw $t0, 0($t1)
	lw $t0, -200($fp)
	lw $t1, 0($t0)
	sw $t1, -204($fp)
	li $t0, 61758
	sw $t0, -208($fp)
	addi $t0, $fp, -36
	sw $t0, -212($fp)
	li $t0, 6
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -220($fp)
	lw $t0, -212($fp)
	lw $t1, -220($fp)
	add $t0, $t0, $t1
	sw $t0, -224($fp)
	lw $t0, -208($fp)
	lw $t1, -224($fp)
	sw $t0, 0($t1)
	lw $t0, -224($fp)
	lw $t1, 0($t0)
	sw $t1, -228($fp)
	li $t0, 33299
	sw $t0, -232($fp)
	addi $t0, $fp, -36
	sw $t0, -236($fp)
	li $t0, 7
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
	li $t0, 14514
	sw $t0, -256($fp)
	addi $t0, $fp, -48
	sw $t0, -260($fp)
	li $t0, 0
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -268($fp)
	lw $t0, -260($fp)
	lw $t1, -268($fp)
	add $t0, $t0, $t1
	sw $t0, -272($fp)
	lw $t0, -256($fp)
	lw $t1, -272($fp)
	sw $t0, 0($t1)
	lw $t0, -272($fp)
	lw $t1, 0($t0)
	sw $t1, -276($fp)
	li $t0, 40581
	sw $t0, -280($fp)
	addi $t0, $fp, -48
	sw $t0, -284($fp)
	li $t0, 1
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -292($fp)
	lw $t0, -284($fp)
	lw $t1, -292($fp)
	add $t0, $t0, $t1
	sw $t0, -296($fp)
	lw $t0, -280($fp)
	lw $t1, -296($fp)
	sw $t0, 0($t1)
	lw $t0, -296($fp)
	lw $t1, 0($t0)
	sw $t1, -300($fp)
	li $t0, 53472
	sw $t0, -304($fp)
	addi $t0, $fp, -48
	sw $t0, -308($fp)
	li $t0, 2
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
	li $t0, 46677
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -336($fp)
	li $t0, 18556
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -348($fp)
	li $t0, 8668
	sw $t0, -352($fp)
	addi $t0, $fp, -60
	sw $t0, -356($fp)
	li $t0, 0
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
	li $t0, 27392
	sw $t0, -376($fp)
	addi $t0, $fp, -60
	sw $t0, -380($fp)
	li $t0, 1
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
	li $t0, 54526
	sw $t0, -400($fp)
	addi $t0, $fp, -60
	sw $t0, -404($fp)
	li $t0, 2
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
	li $t0, 15649
	sw $t0, -424($fp)
	li $t0, 0
	lw $t1, -424($fp)
	sub $t0, $t0, $t1
	sw $t0, -428($fp)
	li $t0, 0
	lw $t1, -428($fp)
	sub $t0, $t0, $t1
	sw $t0, -432($fp)
	lw $t1, -432($fp)
	li $t2, 0
	bne $t1, $t2, label445
	j label446
label445:
	li $t0, 12203
	sw $t0, -436($fp)
	j label447
label446:
	li $t0, 0
	sw $t0, -440($fp)
	lw $t0, -344($fp)
	sw $t0, -444($fp)
	li $t0, 11136
	sw $t0, -448($fp)
	lw $t0, -444($fp)
	lw $t1, -448($fp)
	mul $t0, $t0, $t1
	sw $t0, -452($fp)
	li $t0, 27027
	sw $t0, -456($fp)
	lw $t1, -452($fp)
	lw $t2, -456($fp)
	beq $t1, $t2, label448
	j label449
label448:
	li $t0, 1
	sw $t0, -440($fp)
label449:
	lw $ra, -4($fp)
	lw $v0, -440($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label447:
	addi $t0, $fp, -36
	sw $t0, -460($fp)
	li $t0, 0
	sw $t0, -464($fp)
	li $t0, 4
	lw $t1, -464($fp)
	mul $t0, $t0, $t1
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	lw $t1, -460($fp)
	add $t0, $t0, $t1
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	lw $t1, 0($t0)
	sw $t1, -476($fp)
	lw $t0, -476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -480($fp)
	li $t0, 1
	sw $t0, -484($fp)
	li $t0, 4
	lw $t1, -484($fp)
	mul $t0, $t0, $t1
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	lw $t1, -480($fp)
	add $t0, $t0, $t1
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	lw $t1, 0($t0)
	sw $t1, -496($fp)
	lw $t0, -496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -500($fp)
	li $t0, 2
	sw $t0, -504($fp)
	li $t0, 4
	lw $t1, -504($fp)
	mul $t0, $t0, $t1
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	lw $t1, -500($fp)
	add $t0, $t0, $t1
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	lw $t1, 0($t0)
	sw $t1, -516($fp)
	lw $t0, -516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -520($fp)
	li $t0, 3
	sw $t0, -524($fp)
	li $t0, 4
	lw $t1, -524($fp)
	mul $t0, $t0, $t1
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	lw $t1, -520($fp)
	add $t0, $t0, $t1
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	lw $t1, 0($t0)
	sw $t1, -536($fp)
	lw $t0, -536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -540($fp)
	li $t0, 4
	sw $t0, -544($fp)
	li $t0, 4
	lw $t1, -544($fp)
	mul $t0, $t0, $t1
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	lw $t1, -540($fp)
	add $t0, $t0, $t1
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	lw $t1, 0($t0)
	sw $t1, -556($fp)
	lw $t0, -556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -560($fp)
	li $t0, 5
	sw $t0, -564($fp)
	li $t0, 4
	lw $t1, -564($fp)
	mul $t0, $t0, $t1
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	lw $t1, -560($fp)
	add $t0, $t0, $t1
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	lw $t1, 0($t0)
	sw $t1, -576($fp)
	lw $t0, -576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -580($fp)
	li $t0, 6
	sw $t0, -584($fp)
	li $t0, 4
	lw $t1, -584($fp)
	mul $t0, $t0, $t1
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	lw $t1, -580($fp)
	add $t0, $t0, $t1
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	lw $t1, 0($t0)
	sw $t1, -596($fp)
	lw $t0, -596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -600($fp)
	li $t0, 7
	sw $t0, -604($fp)
	li $t0, 4
	lw $t1, -604($fp)
	mul $t0, $t0, $t1
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	lw $t1, -600($fp)
	add $t0, $t0, $t1
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	lw $t1, 0($t0)
	sw $t1, -616($fp)
	lw $t0, -616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -620($fp)
	li $t0, 0
	sw $t0, -624($fp)
	li $t0, 4
	lw $t1, -624($fp)
	mul $t0, $t0, $t1
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	lw $t1, -620($fp)
	add $t0, $t0, $t1
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	lw $t1, 0($t0)
	sw $t1, -636($fp)
	lw $t0, -636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -640($fp)
	li $t0, 1
	sw $t0, -644($fp)
	li $t0, 4
	lw $t1, -644($fp)
	mul $t0, $t0, $t1
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	lw $t1, -640($fp)
	add $t0, $t0, $t1
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	lw $t1, 0($t0)
	sw $t1, -656($fp)
	lw $t0, -656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -660($fp)
	li $t0, 2
	sw $t0, -664($fp)
	li $t0, 4
	lw $t1, -664($fp)
	mul $t0, $t0, $t1
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	lw $t1, -660($fp)
	add $t0, $t0, $t1
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	lw $t1, 0($t0)
	sw $t1, -676($fp)
	lw $t0, -676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -332($fp)
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -344($fp)
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -688($fp)
	li $t0, 0
	sw $t0, -692($fp)
	li $t0, 4
	lw $t1, -692($fp)
	mul $t0, $t0, $t1
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	lw $t1, -688($fp)
	add $t0, $t0, $t1
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	lw $t1, 0($t0)
	sw $t1, -704($fp)
	lw $t0, -704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -708($fp)
	li $t0, 1
	sw $t0, -712($fp)
	li $t0, 4
	lw $t1, -712($fp)
	mul $t0, $t0, $t1
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	lw $t1, -708($fp)
	add $t0, $t0, $t1
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	lw $t1, 0($t0)
	sw $t1, -724($fp)
	lw $t0, -724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -728($fp)
	li $t0, 2
	sw $t0, -732($fp)
	li $t0, 4
	lw $t1, -732($fp)
	mul $t0, $t0, $t1
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	lw $t1, -728($fp)
	add $t0, $t0, $t1
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	lw $t1, 0($t0)
	sw $t1, -744($fp)
	lw $t0, -744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -748($fp)
	li $t0, 0
	sw $t0, -752($fp)
	lw $t0, 8($fp)
	sw $t0, -756($fp)
	lw $t1, -756($fp)
	li $t2, 0
	bne $t1, $t2, label450
	j label453
label453:
	lw $t0, -332($fp)
	sw $t0, -760($fp)
	lw $t1, -760($fp)
	li $t2, 0
	bne $t1, $t2, label450
	j label452
label452:
	li $t0, 51378
	sw $t0, -764($fp)
	lw $t1, -764($fp)
	li $t2, 0
	bne $t1, $t2, label450
	j label451
label450:
	li $t0, 1
	sw $t0, -752($fp)
label451:
	li $t0, 4
	lw $t1, -752($fp)
	mul $t0, $t0, $t1
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	lw $t1, -748($fp)
	add $t0, $t0, $t1
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	lw $t1, 0($t0)
	sw $t1, -776($fp)
	li $t0, 0
	lw $t1, -776($fp)
	sub $t0, $t0, $t1
	sw $t0, -780($fp)
	lw $ra, -4($fp)
	lw $v0, -780($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -36
	sw $t0, -784($fp)
	li $t0, 7
	sw $t0, -788($fp)
	li $t0, 4
	lw $t1, -788($fp)
	mul $t0, $t0, $t1
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	lw $t1, -784($fp)
	add $t0, $t0, $t1
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	lw $t1, 0($t0)
	sw $t1, -800($fp)
	li $t0, 0
	sw $t0, -804($fp)
	li $t0, 26943
	sw $t0, -808($fp)
	lw $t1, -808($fp)
	li $t2, 0
	bne $t1, $t2, label458
	j label457
label457:
	li $t0, 1
	sw $t0, -804($fp)
label458:
	lw $t0, -800($fp)
	lw $t1, -804($fp)
	mul $t0, $t0, $t1
	sw $t0, -812($fp)
	lw $t1, -812($fp)
	li $t2, 0
	bne $t1, $t2, label454
	j label455
label454:
label459:
	addi $t0, $fp, -36
	sw $t0, -816($fp)
	addi $t0, $fp, -60
	sw $t0, -820($fp)
	lw $t0, 8($fp)
	sw $t0, -824($fp)
	li $t0, 4
	lw $t1, -824($fp)
	mul $t0, $t0, $t1
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	lw $t1, -820($fp)
	add $t0, $t0, $t1
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	lw $t1, 0($t0)
	sw $t1, -836($fp)
	lw $t0, 8($fp)
	sw $t0, -840($fp)
	lw $t0, -836($fp)
	lw $t1, -840($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -844($fp)
	li $t0, 4
	lw $t1, -844($fp)
	mul $t0, $t0, $t1
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	lw $t1, -816($fp)
	add $t0, $t0, $t1
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	lw $t1, 0($t0)
	sw $t1, -856($fp)
	li $t0, 0
	lw $t1, -856($fp)
	sub $t0, $t0, $t1
	sw $t0, -860($fp)
	lw $t1, -860($fp)
	li $t2, 0
	bne $t1, $t2, label460
	j label461
label460:
	li $t0, 13972
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	sw $t0, -872($fp)
label462:
	li $t0, 26167
	sw $t0, -876($fp)
	li $t0, 0
	lw $t1, -876($fp)
	sub $t0, $t0, $t1
	sw $t0, -880($fp)
	lw $t1, -880($fp)
	li $t2, 0
	bne $t1, $t2, label463
	j label464
label463:
	li $t0, 55018
	sw $t0, -884($fp)
	li $t0, 0
	sw $t0, -888($fp)
	li $t0, 46306
	sw $t0, -892($fp)
	lw $t0, 8($fp)
	sw $t0, -896($fp)
	lw $t0, -892($fp)
	lw $t1, -896($fp)
	sub $t0, $t0, $t1
	sw $t0, -900($fp)
	li $t0, 52649
	sw $t0, -904($fp)
	lw $t1, -900($fp)
	lw $t2, -904($fp)
	blt $t1, $t2, label465
	j label466
label465:
	li $t0, 1
	sw $t0, -888($fp)
label466:
	li $t0, 43132
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -912($fp)
	addi $sp, $sp, -4
	lw $t0, -888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -912($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -916($fp)
	addi $sp, $sp, 12
	lw $t0, -884($fp)
	lw $t1, -916($fp)
	sub $t0, $t0, $t1
	sw $t0, -920($fp)
	lw $ra, -4($fp)
	lw $v0, -920($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label462
label464:
	lw $t0, -868($fp)
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -928($fp)
	li $t0, 25733
	sw $t0, -932($fp)
	li $t0, 0
	lw $t1, -932($fp)
	sub $t0, $t0, $t1
	sw $t0, -936($fp)
	li $t0, 33112
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	sw $t0, -944($fp)
	li $t0, 0
	sw $t0, -948($fp)
	li $t0, 23837
	sw $t0, -952($fp)
	li $t0, 0
	lw $t1, -952($fp)
	sub $t0, $t0, $t1
	sw $t0, -956($fp)
	lw $t1, -956($fp)
	li $t2, 0
	bne $t1, $t2, label470
	j label472
label472:
	li $t0, 41881
	sw $t0, -960($fp)
	lw $t1, -960($fp)
	li $t2, 0
	bne $t1, $t2, label470
	j label471
label470:
	li $t0, 1
	sw $t0, -948($fp)
label471:
	li $t0, 4017
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -968($fp)
	addi $sp, $sp, -4
	lw $t0, -944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -968($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -972($fp)
	addi $sp, $sp, 16
	lw $t1, -936($fp)
	lw $t2, -972($fp)
	blt $t1, $t2, label469
	j label468
label469:
	addi $t0, $fp, -36
	sw $t0, -976($fp)
	lw $t0, 4($fp)
	sw $t0, -980($fp)
	li $t0, 4
	lw $t1, -980($fp)
	mul $t0, $t0, $t1
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	lw $t1, -976($fp)
	add $t0, $t0, $t1
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	lw $t1, 0($t0)
	sw $t1, -992($fp)
	addi $t0, $fp, -36
	sw $t0, -996($fp)
	li $t0, 3
	sw $t0, -1000($fp)
	li $t0, 4
	lw $t1, -1000($fp)
	mul $t0, $t0, $t1
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	lw $t1, -996($fp)
	add $t0, $t0, $t1
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	lw $t1, 0($t0)
	sw $t1, -1012($fp)
	li $t0, 29335
	sw $t0, -1016($fp)
	lw $t0, -1012($fp)
	lw $t1, -1016($fp)
	add $t0, $t0, $t1
	sw $t0, -1020($fp)
	addi $sp, $sp, -4
	lw $t0, -992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1020($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1024($fp)
	addi $sp, $sp, 12
	lw $t1, -1024($fp)
	li $t2, 0
	bne $t1, $t2, label467
	j label468
label467:
	li $t0, 1
	sw $t0, -928($fp)
label468:
	lw $ra, -4($fp)
	lw $v0, -928($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label473:
	li $t0, 0
	sw $t0, -1028($fp)
	li $t0, 0
	sw $t0, -1032($fp)
	lw $t0, 4($fp)
	sw $t0, -1036($fp)
	li $t0, 42959
	sw $t0, -1040($fp)
	lw $t1, -1036($fp)
	lw $t2, -1040($fp)
	ble $t1, $t2, label478
	j label479
label478:
	li $t0, 1
	sw $t0, -1032($fp)
label479:
	li $t0, 63325
	sw $t0, -1044($fp)
	lw $t1, -1032($fp)
	lw $t2, -1044($fp)
	beq $t1, $t2, label476
	j label477
label476:
	li $t0, 1
	sw $t0, -1028($fp)
label477:
	addi $sp, $sp, -4
	lw $t0, -1028($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1048($fp)
	addi $sp, $sp, 8
	lw $t1, -1048($fp)
	li $t2, 0
	bne $t1, $t2, label474
	j label475
label474:
	li $t0, 4380
	sw $t0, -1052($fp)
	li $t0, 30895
	sw $t0, -1056($fp)
	lw $t0, -1052($fp)
	lw $t1, -1056($fp)
	sub $t0, $t0, $t1
	sw $t0, -1060($fp)
	lw $t0, 4($fp)
	sw $t0, -1064($fp)
	lw $t0, -1060($fp)
	lw $t1, -1064($fp)
	sub $t0, $t0, $t1
	sw $t0, -1068($fp)
	lw $t0, 8($fp)
	sw $t0, -1072($fp)
	li $t0, 44466
	sw $t0, -1076($fp)
	lw $t0, -1072($fp)
	lw $t1, -1076($fp)
	mul $t0, $t0, $t1
	sw $t0, -1080($fp)
	lw $t0, -1068($fp)
	lw $t1, -1080($fp)
	add $t0, $t0, $t1
	sw $t0, -1084($fp)
	addi $t0, $fp, -60
	sw $t0, -1088($fp)
	lw $t0, 4($fp)
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
	lw $t0, -1084($fp)
	lw $t1, -1104($fp)
	sub $t0, $t0, $t1
	sw $t0, -1108($fp)
	li $t0, 22936
	sw $t0, -1112($fp)
	lw $t0, -1108($fp)
	lw $t1, -1112($fp)
	add $t0, $t0, $t1
	sw $t0, -1116($fp)
	j label473
label475:
	j label459
label461:
label455:
	addi $t0, $fp, -36
	sw $t0, -1120($fp)
	li $t0, 0
	sw $t0, -1124($fp)
	li $t0, 4
	lw $t1, -1124($fp)
	mul $t0, $t0, $t1
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	lw $t1, -1120($fp)
	add $t0, $t0, $t1
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	lw $t1, 0($t0)
	sw $t1, -1136($fp)
	lw $t0, -1136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1140($fp)
	li $t0, 1
	sw $t0, -1144($fp)
	li $t0, 4
	lw $t1, -1144($fp)
	mul $t0, $t0, $t1
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	lw $t1, -1140($fp)
	add $t0, $t0, $t1
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	lw $t1, 0($t0)
	sw $t1, -1156($fp)
	lw $t0, -1156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1160($fp)
	li $t0, 2
	sw $t0, -1164($fp)
	li $t0, 4
	lw $t1, -1164($fp)
	mul $t0, $t0, $t1
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	lw $t1, -1160($fp)
	add $t0, $t0, $t1
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	lw $t1, 0($t0)
	sw $t1, -1176($fp)
	lw $t0, -1176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1180($fp)
	li $t0, 3
	sw $t0, -1184($fp)
	li $t0, 4
	lw $t1, -1184($fp)
	mul $t0, $t0, $t1
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	lw $t1, -1180($fp)
	add $t0, $t0, $t1
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	lw $t1, 0($t0)
	sw $t1, -1196($fp)
	lw $t0, -1196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1200($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -1220($fp)
	li $t0, 5
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
	addi $t0, $fp, -36
	sw $t0, -1240($fp)
	li $t0, 6
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
	addi $t0, $fp, -36
	sw $t0, -1260($fp)
	li $t0, 7
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
	lw $t0, -1276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -1280($fp)
	li $t0, 0
	sw $t0, -1284($fp)
	li $t0, 4
	lw $t1, -1284($fp)
	mul $t0, $t0, $t1
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	lw $t1, -1280($fp)
	add $t0, $t0, $t1
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	lw $t1, 0($t0)
	sw $t1, -1296($fp)
	lw $t0, -1296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -1300($fp)
	li $t0, 1
	sw $t0, -1304($fp)
	li $t0, 4
	lw $t1, -1304($fp)
	mul $t0, $t0, $t1
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	lw $t1, -1300($fp)
	add $t0, $t0, $t1
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	lw $t1, 0($t0)
	sw $t1, -1316($fp)
	lw $t0, -1316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -1320($fp)
	li $t0, 2
	sw $t0, -1324($fp)
	li $t0, 4
	lw $t1, -1324($fp)
	mul $t0, $t0, $t1
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	lw $t1, -1320($fp)
	add $t0, $t0, $t1
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	lw $t1, 0($t0)
	sw $t1, -1336($fp)
	lw $t0, -1336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -332($fp)
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -344($fp)
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1348($fp)
	li $t0, 0
	sw $t0, -1352($fp)
	li $t0, 4
	lw $t1, -1352($fp)
	mul $t0, $t0, $t1
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	lw $t1, -1348($fp)
	add $t0, $t0, $t1
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	lw $t1, 0($t0)
	sw $t1, -1364($fp)
	lw $t0, -1364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1368($fp)
	li $t0, 1
	sw $t0, -1372($fp)
	li $t0, 4
	lw $t1, -1372($fp)
	mul $t0, $t0, $t1
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	lw $t1, -1368($fp)
	add $t0, $t0, $t1
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	lw $t1, 0($t0)
	sw $t1, -1384($fp)
	lw $t0, -1384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1388($fp)
	li $t0, 2
	sw $t0, -1392($fp)
	li $t0, 4
	lw $t1, -1392($fp)
	mul $t0, $t0, $t1
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	lw $t1, -1388($fp)
	add $t0, $t0, $t1
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	lw $t1, 0($t0)
	sw $t1, -1404($fp)
	lw $t0, -1404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, 4($fp)
	sw $t0, -1408($fp)
	li $t0, 0
	lw $t1, -1408($fp)
	sub $t0, $t0, $t1
	sw $t0, -1412($fp)
	lw $ra, -4($fp)
	lw $v0, -1412($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -384
	li $t0, 39563
	sw $t0, -36($fp)
	addi $t0, $fp, -32
	sw $t0, -40($fp)
	li $t0, 0
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -40($fp)
	lw $t1, -48($fp)
	add $t0, $t0, $t1
	sw $t0, -52($fp)
	lw $t0, -36($fp)
	lw $t1, -52($fp)
	sw $t0, 0($t1)
	lw $t0, -52($fp)
	lw $t1, 0($t0)
	sw $t1, -56($fp)
	li $t0, 6322
	sw $t0, -60($fp)
	addi $t0, $fp, -32
	sw $t0, -64($fp)
	li $t0, 1
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
	li $t0, 11927
	sw $t0, -84($fp)
	addi $t0, $fp, -32
	sw $t0, -88($fp)
	li $t0, 2
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
	li $t0, 55212
	sw $t0, -108($fp)
	addi $t0, $fp, -32
	sw $t0, -112($fp)
	li $t0, 3
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
	li $t0, 18526
	sw $t0, -132($fp)
	addi $t0, $fp, -32
	sw $t0, -136($fp)
	li $t0, 4
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -144($fp)
	lw $t0, -136($fp)
	lw $t1, -144($fp)
	add $t0, $t0, $t1
	sw $t0, -148($fp)
	lw $t0, -132($fp)
	lw $t1, -148($fp)
	sw $t0, 0($t1)
	lw $t0, -148($fp)
	lw $t1, 0($t0)
	sw $t1, -152($fp)
	li $t0, 23063
	sw $t0, -156($fp)
	addi $t0, $fp, -32
	sw $t0, -160($fp)
	li $t0, 5
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -168($fp)
	lw $t0, -160($fp)
	lw $t1, -168($fp)
	add $t0, $t0, $t1
	sw $t0, -172($fp)
	lw $t0, -156($fp)
	lw $t1, -172($fp)
	sw $t0, 0($t1)
	lw $t0, -172($fp)
	lw $t1, 0($t0)
	sw $t1, -176($fp)
	li $t0, 16704
	sw $t0, -180($fp)
	addi $t0, $fp, -32
	sw $t0, -184($fp)
	li $t0, 6
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -192($fp)
	lw $t0, -184($fp)
	lw $t1, -192($fp)
	add $t0, $t0, $t1
	sw $t0, -196($fp)
	lw $t0, -180($fp)
	lw $t1, -196($fp)
	sw $t0, 0($t1)
	lw $t0, -196($fp)
	lw $t1, 0($t0)
	sw $t1, -200($fp)
	addi $t0, $fp, -32
	sw $t0, -204($fp)
	li $t0, 0
	sw $t0, -208($fp)
	li $t0, 4
	lw $t1, -208($fp)
	mul $t0, $t0, $t1
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	lw $t1, -204($fp)
	add $t0, $t0, $t1
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	lw $t1, 0($t0)
	sw $t1, -220($fp)
	lw $t0, -220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -224($fp)
	li $t0, 1
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
	lw $t0, -240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -244($fp)
	li $t0, 2
	sw $t0, -248($fp)
	li $t0, 4
	lw $t1, -248($fp)
	mul $t0, $t0, $t1
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	lw $t1, -244($fp)
	add $t0, $t0, $t1
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	lw $t1, 0($t0)
	sw $t1, -260($fp)
	lw $t0, -260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -264($fp)
	li $t0, 3
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
	lw $t0, -280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -284($fp)
	li $t0, 4
	sw $t0, -288($fp)
	li $t0, 4
	lw $t1, -288($fp)
	mul $t0, $t0, $t1
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	lw $t1, -284($fp)
	add $t0, $t0, $t1
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	lw $t1, 0($t0)
	sw $t1, -300($fp)
	lw $t0, -300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -304($fp)
	li $t0, 5
	sw $t0, -308($fp)
	li $t0, 4
	lw $t1, -308($fp)
	mul $t0, $t0, $t1
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	lw $t1, -304($fp)
	add $t0, $t0, $t1
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	lw $t1, 0($t0)
	sw $t1, -320($fp)
	lw $t0, -320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -324($fp)
	li $t0, 6
	sw $t0, -328($fp)
	li $t0, 4
	lw $t1, -328($fp)
	mul $t0, $t0, $t1
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	lw $t1, -324($fp)
	add $t0, $t0, $t1
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	lw $t1, 0($t0)
	sw $t1, -340($fp)
	lw $t0, -340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -344($fp)
	lw $t0, 4($fp)
	sw $t0, -348($fp)
	lw $t1, -348($fp)
	li $t2, 0
	bne $t1, $t2, label480
	j label482
label482:
	addi $t0, $fp, -32
	sw $t0, -352($fp)
	lw $t0, 4($fp)
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
	li $t0, 4368
	sw $t0, -372($fp)
	lw $t0, -368($fp)
	lw $t1, -372($fp)
	mul $t0, $t0, $t1
	sw $t0, -376($fp)
	li $t0, 0
	sw $t0, -380($fp)
	lw $t0, 4($fp)
	sw $t0, -384($fp)
	lw $t1, -384($fp)
	li $t2, 0
	bne $t1, $t2, label484
	j label483
label483:
	li $t0, 1
	sw $t0, -380($fp)
label484:
	lw $t0, -376($fp)
	lw $t1, -380($fp)
	mul $t0, $t0, $t1
	sw $t0, -388($fp)
	lw $t1, -388($fp)
	li $t2, 0
	bne $t1, $t2, label480
	j label481
label480:
	li $t0, 1
	sw $t0, -344($fp)
label481:
	lw $ra, -4($fp)
	lw $v0, -344($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -3888
	li $t0, 8527
	sw $t0, -112($fp)
	addi $t0, $fp, -36
	sw $t0, -116($fp)
	li $t0, 0
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
	li $t0, 13599
	sw $t0, -136($fp)
	addi $t0, $fp, -36
	sw $t0, -140($fp)
	li $t0, 1
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
	li $t0, 31311
	sw $t0, -160($fp)
	addi $t0, $fp, -36
	sw $t0, -164($fp)
	li $t0, 2
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -172($fp)
	lw $t0, -164($fp)
	lw $t1, -172($fp)
	add $t0, $t0, $t1
	sw $t0, -176($fp)
	lw $t0, -160($fp)
	lw $t1, -176($fp)
	sw $t0, 0($t1)
	lw $t0, -176($fp)
	lw $t1, 0($t0)
	sw $t1, -180($fp)
	li $t0, 22499
	sw $t0, -184($fp)
	addi $t0, $fp, -36
	sw $t0, -188($fp)
	li $t0, 3
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -196($fp)
	lw $t0, -188($fp)
	lw $t1, -196($fp)
	add $t0, $t0, $t1
	sw $t0, -200($fp)
	lw $t0, -184($fp)
	lw $t1, -200($fp)
	sw $t0, 0($t1)
	lw $t0, -200($fp)
	lw $t1, 0($t0)
	sw $t1, -204($fp)
	li $t0, 39766
	sw $t0, -208($fp)
	addi $t0, $fp, -36
	sw $t0, -212($fp)
	li $t0, 4
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -220($fp)
	lw $t0, -212($fp)
	lw $t1, -220($fp)
	add $t0, $t0, $t1
	sw $t0, -224($fp)
	lw $t0, -208($fp)
	lw $t1, -224($fp)
	sw $t0, 0($t1)
	lw $t0, -224($fp)
	lw $t1, 0($t0)
	sw $t1, -228($fp)
	li $t0, 20793
	sw $t0, -232($fp)
	addi $t0, $fp, -36
	sw $t0, -236($fp)
	li $t0, 5
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
	li $t0, 95
	sw $t0, -256($fp)
	addi $t0, $fp, -36
	sw $t0, -260($fp)
	li $t0, 6
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -268($fp)
	lw $t0, -260($fp)
	lw $t1, -268($fp)
	add $t0, $t0, $t1
	sw $t0, -272($fp)
	lw $t0, -256($fp)
	lw $t1, -272($fp)
	sw $t0, 0($t1)
	lw $t0, -272($fp)
	lw $t1, 0($t0)
	sw $t1, -276($fp)
	li $t0, 20537
	sw $t0, -280($fp)
	addi $t0, $fp, -36
	sw $t0, -284($fp)
	li $t0, 7
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -292($fp)
	lw $t0, -284($fp)
	lw $t1, -292($fp)
	add $t0, $t0, $t1
	sw $t0, -296($fp)
	lw $t0, -280($fp)
	lw $t1, -296($fp)
	sw $t0, 0($t1)
	lw $t0, -296($fp)
	lw $t1, 0($t0)
	sw $t1, -300($fp)
	li $t0, 7906
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -312($fp)
	li $t0, 25828
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	li $t0, 24554
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -336($fp)
	li $t0, 31743
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -348($fp)
	li $t0, 2174
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	li $t0, 57667
	sw $t0, -364($fp)
	addi $t0, $fp, -44
	sw $t0, -368($fp)
	li $t0, 0
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -376($fp)
	lw $t0, -368($fp)
	lw $t1, -376($fp)
	add $t0, $t0, $t1
	sw $t0, -380($fp)
	lw $t0, -364($fp)
	lw $t1, -380($fp)
	sw $t0, 0($t1)
	lw $t0, -380($fp)
	lw $t1, 0($t0)
	sw $t1, -384($fp)
	li $t0, 41403
	sw $t0, -388($fp)
	addi $t0, $fp, -44
	sw $t0, -392($fp)
	li $t0, 1
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -400($fp)
	lw $t0, -392($fp)
	lw $t1, -400($fp)
	add $t0, $t0, $t1
	sw $t0, -404($fp)
	lw $t0, -388($fp)
	lw $t1, -404($fp)
	sw $t0, 0($t1)
	lw $t0, -404($fp)
	lw $t1, 0($t0)
	sw $t1, -408($fp)
	li $t0, 50985
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	li $t0, 21466
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	li $t0, 18826
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	li $t0, 48775
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	li $t0, 25846
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	li $t0, 49721
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	li $t0, 27705
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	li $t0, 48782
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	li $t0, 23748
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	li $t0, 34028
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	li $t0, 60709
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	li $t0, 13424
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	li $t0, 52554
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	li $t0, 18237
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	li $t0, 30128
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	li $t0, 56922
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	li $t0, 26764
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	li $t0, 43728
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	li $t0, 22698
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	li $t0, 49263
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	li $t0, 17958
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	li $t0, 43491
	sw $t0, -664($fp)
	addi $t0, $fp, -56
	sw $t0, -668($fp)
	li $t0, 0
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
	li $t0, 49358
	sw $t0, -688($fp)
	addi $t0, $fp, -56
	sw $t0, -692($fp)
	li $t0, 1
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
	li $t0, 38495
	sw $t0, -712($fp)
	addi $t0, $fp, -56
	sw $t0, -716($fp)
	li $t0, 2
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
	li $t0, 51398
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	sw $t0, -744($fp)
	li $t0, 9650
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	sw $t0, -756($fp)
	li $t0, 63050
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -768($fp)
	li $t0, 17605
	sw $t0, -772($fp)
	addi $t0, $fp, -96
	sw $t0, -776($fp)
	li $t0, 0
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -784($fp)
	lw $t0, -776($fp)
	lw $t1, -784($fp)
	add $t0, $t0, $t1
	sw $t0, -788($fp)
	lw $t0, -772($fp)
	lw $t1, -788($fp)
	sw $t0, 0($t1)
	lw $t0, -788($fp)
	lw $t1, 0($t0)
	sw $t1, -792($fp)
	li $t0, 11824
	sw $t0, -796($fp)
	addi $t0, $fp, -96
	sw $t0, -800($fp)
	li $t0, 1
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -808($fp)
	lw $t0, -800($fp)
	lw $t1, -808($fp)
	add $t0, $t0, $t1
	sw $t0, -812($fp)
	lw $t0, -796($fp)
	lw $t1, -812($fp)
	sw $t0, 0($t1)
	lw $t0, -812($fp)
	lw $t1, 0($t0)
	sw $t1, -816($fp)
	li $t0, 55181
	sw $t0, -820($fp)
	addi $t0, $fp, -96
	sw $t0, -824($fp)
	li $t0, 2
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -832($fp)
	lw $t0, -824($fp)
	lw $t1, -832($fp)
	add $t0, $t0, $t1
	sw $t0, -836($fp)
	lw $t0, -820($fp)
	lw $t1, -836($fp)
	sw $t0, 0($t1)
	lw $t0, -836($fp)
	lw $t1, 0($t0)
	sw $t1, -840($fp)
	li $t0, 59008
	sw $t0, -844($fp)
	addi $t0, $fp, -96
	sw $t0, -848($fp)
	li $t0, 3
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -856($fp)
	lw $t0, -848($fp)
	lw $t1, -856($fp)
	add $t0, $t0, $t1
	sw $t0, -860($fp)
	lw $t0, -844($fp)
	lw $t1, -860($fp)
	sw $t0, 0($t1)
	lw $t0, -860($fp)
	lw $t1, 0($t0)
	sw $t1, -864($fp)
	li $t0, 62810
	sw $t0, -868($fp)
	addi $t0, $fp, -96
	sw $t0, -872($fp)
	li $t0, 4
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -880($fp)
	lw $t0, -872($fp)
	lw $t1, -880($fp)
	add $t0, $t0, $t1
	sw $t0, -884($fp)
	lw $t0, -868($fp)
	lw $t1, -884($fp)
	sw $t0, 0($t1)
	lw $t0, -884($fp)
	lw $t1, 0($t0)
	sw $t1, -888($fp)
	li $t0, 11111
	sw $t0, -892($fp)
	addi $t0, $fp, -96
	sw $t0, -896($fp)
	li $t0, 5
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -904($fp)
	lw $t0, -896($fp)
	lw $t1, -904($fp)
	add $t0, $t0, $t1
	sw $t0, -908($fp)
	lw $t0, -892($fp)
	lw $t1, -908($fp)
	sw $t0, 0($t1)
	lw $t0, -908($fp)
	lw $t1, 0($t0)
	sw $t1, -912($fp)
	li $t0, 12298
	sw $t0, -916($fp)
	addi $t0, $fp, -96
	sw $t0, -920($fp)
	li $t0, 6
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
	li $t0, 46049
	sw $t0, -940($fp)
	addi $t0, $fp, -96
	sw $t0, -944($fp)
	li $t0, 7
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
	li $t0, 36957
	sw $t0, -964($fp)
	addi $t0, $fp, -96
	sw $t0, -968($fp)
	li $t0, 8
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
	li $t0, 62019
	sw $t0, -988($fp)
	addi $t0, $fp, -96
	sw $t0, -992($fp)
	li $t0, 9
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1000($fp)
	lw $t0, -992($fp)
	lw $t1, -1000($fp)
	add $t0, $t0, $t1
	sw $t0, -1004($fp)
	lw $t0, -988($fp)
	lw $t1, -1004($fp)
	sw $t0, 0($t1)
	lw $t0, -1004($fp)
	lw $t1, 0($t0)
	sw $t1, -1008($fp)
	li $t0, 8218
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	sw $t0, -1020($fp)
	li $t0, 20203
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	sw $t0, -1032($fp)
	li $t0, 20231
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	sw $t0, -1044($fp)
	li $t0, 42246
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	sw $t0, -1056($fp)
	li $t0, 15377
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	sw $t0, -1068($fp)
	li $t0, 33656
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	sw $t0, -1080($fp)
	li $t0, 29264
	sw $t0, -1084($fp)
	addi $t0, $fp, -108
	sw $t0, -1088($fp)
	li $t0, 0
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
	li $t0, 33614
	sw $t0, -1108($fp)
	addi $t0, $fp, -108
	sw $t0, -1112($fp)
	li $t0, 1
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
	li $t0, 63784
	sw $t0, -1132($fp)
	addi $t0, $fp, -108
	sw $t0, -1136($fp)
	li $t0, 2
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1144($fp)
	lw $t0, -1136($fp)
	lw $t1, -1144($fp)
	add $t0, $t0, $t1
	sw $t0, -1148($fp)
	lw $t0, -1132($fp)
	lw $t1, -1148($fp)
	sw $t0, 0($t1)
	lw $t0, -1148($fp)
	lw $t1, 0($t0)
	sw $t1, -1152($fp)
label485:
	li $t0, 0
	sw $t0, -1156($fp)
	li $t0, 7166
	sw $t0, -1160($fp)
	lw $t1, -1160($fp)
	li $t2, 0
	bne $t1, $t2, label489
	j label488
label488:
	li $t0, 1
	sw $t0, -1156($fp)
label489:
	addi $sp, $sp, -4
	lw $t0, -1156($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1164($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1168($fp)
	li $t0, 1
	sw $t0, -1172($fp)
	li $t0, 4
	lw $t1, -1172($fp)
	mul $t0, $t0, $t1
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	lw $t1, -1168($fp)
	add $t0, $t0, $t1
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	lw $t1, 0($t0)
	sw $t1, -1184($fp)
	li $t0, 32894
	sw $t0, -1188($fp)
	lw $t0, -1184($fp)
	lw $t1, -1188($fp)
	add $t0, $t0, $t1
	sw $t0, -1192($fp)
	li $t0, 0
	sw $t0, -1196($fp)
	li $t0, 0
	sw $t0, -1200($fp)
	li $t0, 43349
	sw $t0, -1204($fp)
	li $t0, 44105
	sw $t0, -1208($fp)
	lw $t1, -1204($fp)
	lw $t2, -1208($fp)
	bne $t1, $t2, label492
	j label493
label492:
	li $t0, 1
	sw $t0, -1200($fp)
label493:
	li $t0, 59935
	sw $t0, -1212($fp)
	lw $t1, -1200($fp)
	lw $t2, -1212($fp)
	bne $t1, $t2, label490
	j label491
label490:
	li $t0, 1
	sw $t0, -1196($fp)
label491:
	addi $sp, $sp, -4
	lw $t0, -1192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1196($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1216($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -1164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1216($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1220($fp)
	addi $sp, $sp, 12
	li $t0, 41976
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -1228($fp)
	addi $t0, $fp, -36
	sw $t0, -1232($fp)
	li $t0, 2
	sw $t0, -1236($fp)
	li $t0, 4
	lw $t1, -1236($fp)
	mul $t0, $t0, $t1
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	lw $t1, -1232($fp)
	add $t0, $t0, $t1
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	lw $t1, 0($t0)
	sw $t1, -1248($fp)
	lw $t0, -1028($fp)
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -1256($fp)
	li $t0, 0
	sw $t0, -1260($fp)
	lw $t0, -332($fp)
	sw $t0, -1264($fp)
	lw $t1, -1264($fp)
	li $t2, 0
	bne $t1, $t2, label494
	j label495
label494:
	li $t0, 1
	sw $t0, -1260($fp)
label495:
	addi $sp, $sp, -4
	lw $t0, -1220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1260($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1268($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -1268($fp)
	sub $t0, $t0, $t1
	sw $t0, -1272($fp)
	lw $t1, -1272($fp)
	li $t2, 0
	bne $t1, $t2, label486
	j label487
label486:
	li $t0, 0
	sw $t0, -1276($fp)
	li $t0, 0
	sw $t0, -1280($fp)
	li $t0, 0
	sw $t0, -1284($fp)
	lw $t0, 4($fp)
	sw $t0, -1288($fp)
	lw $t0, -476($fp)
	sw $t0, -1292($fp)
	lw $t1, -1288($fp)
	lw $t2, -1292($fp)
	blt $t1, $t2, label504
	j label505
label504:
	li $t0, 1
	sw $t0, -1284($fp)
label505:
	lw $t0, -572($fp)
	sw $t0, -1296($fp)
	lw $t1, -1284($fp)
	lw $t2, -1296($fp)
	beq $t1, $t2, label502
	j label503
label502:
	li $t0, 1
	sw $t0, -1280($fp)
label503:
	addi $sp, $sp, -4
	lw $t0, -1280($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1300($fp)
	addi $sp, $sp, 8
	li $t0, 24772
	sw $t0, -1304($fp)
	lw $t1, -1300($fp)
	lw $t2, -1304($fp)
	blt $t1, $t2, label500
	j label501
label500:
	li $t0, 1
	sw $t0, -1276($fp)
label501:
	li $t0, 0
	sw $t0, -1308($fp)
	li $t0, 0
	sw $t0, -1312($fp)
	lw $t0, 20($fp)
	sw $t0, -1316($fp)
	li $t0, 30408
	sw $t0, -1320($fp)
	lw $t1, -1316($fp)
	lw $t2, -1320($fp)
	bgt $t1, $t2, label511
	j label510
label511:
	lw $t0, -1040($fp)
	sw $t0, -1324($fp)
	lw $t1, -1324($fp)
	li $t2, 0
	bne $t1, $t2, label509
	j label510
label509:
	li $t0, 1
	sw $t0, -1312($fp)
label510:
	li $t0, 37577
	sw $t0, -1328($fp)
	li $t0, 0
	lw $t1, -1328($fp)
	sub $t0, $t0, $t1
	sw $t0, -1332($fp)
	li $t0, 0
	sw $t0, -1336($fp)
	lw $t0, -344($fp)
	sw $t0, -1340($fp)
	lw $t1, -1340($fp)
	li $t2, 0
	bne $t1, $t2, label514
	j label512
label514:
	lw $t0, -548($fp)
	sw $t0, -1344($fp)
	lw $t1, -1344($fp)
	li $t2, 0
	bne $t1, $t2, label512
	j label513
label512:
	li $t0, 1
	sw $t0, -1336($fp)
label513:
	addi $sp, $sp, -4
	lw $t0, -1312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1336($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1348($fp)
	addi $sp, $sp, 16
	lw $t1, -1348($fp)
	li $t2, 0
	bne $t1, $t2, label506
	j label508
label508:
	lw $t0, -536($fp)
	sw $t0, -1352($fp)
	lw $t1, -1352($fp)
	li $t2, 0
	bne $t1, $t2, label506
	j label507
label506:
	li $t0, 1
	sw $t0, -1308($fp)
label507:
	addi $sp, $sp, -4
	lw $t0, -1276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1308($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1356($fp)
	addi $sp, $sp, 12
	li $t0, 49402
	sw $t0, -1360($fp)
	lw $t0, -1356($fp)
	lw $t1, -1360($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1364($fp)
	li $t0, 20053
	sw $t0, -1368($fp)
	li $t0, 18244
	sw $t0, -1372($fp)
	lw $t0, -1368($fp)
	lw $t1, -1372($fp)
	add $t0, $t0, $t1
	sw $t0, -1376($fp)
	lw $t0, -512($fp)
	sw $t0, -1380($fp)
	lw $t0, -1376($fp)
	lw $t1, -1380($fp)
	sub $t0, $t0, $t1
	sw $t0, -1384($fp)
	lw $t1, -1364($fp)
	lw $t2, -1384($fp)
	bne $t1, $t2, label496
	j label499
label499:
	li $t0, 0
	sw $t0, -1388($fp)
	li $t0, 46676
	sw $t0, -1392($fp)
	lw $t1, -1392($fp)
	li $t2, 0
	bne $t1, $t2, label516
	j label517
label517:
	li $t0, 31164
	sw $t0, -1396($fp)
	lw $t1, -1396($fp)
	li $t2, 0
	bne $t1, $t2, label515
	j label516
label515:
	li $t0, 1
	sw $t0, -1388($fp)
label516:
	addi $sp, $sp, -4
	lw $t0, -1388($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1400($fp)
	addi $sp, $sp, 8
	li $t0, 30543
	sw $t0, -1404($fp)
	lw $t0, -1400($fp)
	lw $t1, -1404($fp)
	mul $t0, $t0, $t1
	sw $t0, -1408($fp)
	lw $t1, -1408($fp)
	li $t2, 0
	bne $t1, $t2, label496
	j label497
label496:
	addi $t0, $fp, -56
	sw $t0, -1412($fp)
	lw $t0, -560($fp)
	sw $t0, -1416($fp)
	li $t0, 4
	lw $t1, -1416($fp)
	mul $t0, $t0, $t1
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	lw $t1, -1412($fp)
	add $t0, $t0, $t1
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	lw $t1, 0($t0)
	sw $t1, -1428($fp)
	li $t0, 0
	lw $t1, -1428($fp)
	sub $t0, $t0, $t1
	sw $t0, -1432($fp)
	lw $t0, -764($fp)
	sw $t0, -1436($fp)
	lw $t0, 4($fp)
	sw $t0, -1440($fp)
	lw $t0, -1436($fp)
	lw $t1, -1440($fp)
	sub $t0, $t0, $t1
	sw $t0, -1444($fp)
	lw $t0, -500($fp)
	sw $t0, -1448($fp)
	lw $t0, -1444($fp)
	lw $t1, -1448($fp)
	sub $t0, $t0, $t1
	sw $t0, -1452($fp)
	addi $t0, $fp, -44
	sw $t0, -1456($fp)
	lw $t0, -488($fp)
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
	addi $sp, $sp, -4
	lw $t0, -1432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1472($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1476($fp)
	addi $sp, $sp, 16
	lw $t1, -1476($fp)
	li $t2, 0
	bne $t1, $t2, label518
	j label519
label518:
	addi $t0, $fp, -36
	sw $t0, -1480($fp)
	li $t0, 0
	sw $t0, -1484($fp)
	addi $t0, $fp, -56
	sw $t0, -1488($fp)
	li $t0, 0
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
	lw $t1, -1504($fp)
	li $t2, 0
	bne $t1, $t2, label524
	j label526
label526:
	lw $t0, -416($fp)
	sw $t0, -1508($fp)
	lw $t1, -1508($fp)
	li $t2, 0
	bne $t1, $t2, label524
	j label525
label524:
	li $t0, 1
	sw $t0, -1484($fp)
label525:
	li $t0, 4
	lw $t1, -1484($fp)
	mul $t0, $t0, $t1
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	lw $t1, -1480($fp)
	add $t0, $t0, $t1
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	lw $t1, 0($t0)
	sw $t1, -1520($fp)
	lw $t1, -1520($fp)
	li $t2, 0
	bne $t1, $t2, label522
	j label521
label521:
	li $t0, 0
	sw $t0, -1524($fp)
	lw $t0, -596($fp)
	sw $t0, -1528($fp)
	lw $t1, -1528($fp)
	li $t2, 0
	bne $t1, $t2, label527
	j label528
label527:
	li $t0, 1
	sw $t0, -1524($fp)
label528:
	j label523
label522:
	li $t0, 0
	sw $t0, -1532($fp)
	lw $t0, 8($fp)
	sw $t0, -1536($fp)
	lw $t1, -1536($fp)
	li $t2, 0
	bne $t1, $t2, label530
	j label529
label529:
	li $t0, 1
	sw $t0, -1532($fp)
label530:
	lw $t0, -476($fp)
	sw $t0, -1540($fp)
	lw $t0, -1532($fp)
	lw $t1, -1540($fp)
	add $t0, $t0, $t1
	sw $t0, -1544($fp)
label523:
	j label520
label519:
	addi $t0, $fp, -56
	sw $t0, -1548($fp)
	li $t0, 0
	sw $t0, -1552($fp)
	li $t0, 27026
	sw $t0, -1556($fp)
	lw $t1, -1556($fp)
	li $t2, 0
	bne $t1, $t2, label535
	j label534
label534:
	li $t0, 1
	sw $t0, -1552($fp)
label535:
	li $t0, 4
	lw $t1, -1552($fp)
	mul $t0, $t0, $t1
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	lw $t1, -1548($fp)
	add $t0, $t0, $t1
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	lw $t1, 0($t0)
	sw $t1, -1568($fp)
	lw $t0, -308($fp)
	sw $t0, -1572($fp)
	li $t0, 0
	lw $t1, -1572($fp)
	sub $t0, $t0, $t1
	sw $t0, -1576($fp)
	li $t0, 0
	lw $t1, -1576($fp)
	sub $t0, $t0, $t1
	sw $t0, -1580($fp)
	lw $t0, -1568($fp)
	lw $t1, -1580($fp)
	mul $t0, $t0, $t1
	sw $t0, -1584($fp)
	lw $t1, -1584($fp)
	li $t2, 0
	bne $t1, $t2, label531
	j label532
label531:
	li $t0, 0
	sw $t0, -1588($fp)
	li $t0, 35407
	sw $t0, -1592($fp)
	li $t0, 0
	lw $t1, -1592($fp)
	sub $t0, $t0, $t1
	sw $t0, -1596($fp)
	lw $t1, -1596($fp)
	li $t2, 0
	bne $t1, $t2, label536
	j label538
label538:
	lw $t0, -476($fp)
	sw $t0, -1600($fp)
	li $t0, 22789
	sw $t0, -1604($fp)
	lw $t0, -1600($fp)
	lw $t1, -1604($fp)
	sub $t0, $t0, $t1
	sw $t0, -1608($fp)
	lw $t0, -488($fp)
	sw $t0, -1612($fp)
	lw $t0, -1608($fp)
	lw $t1, -1612($fp)
	sub $t0, $t0, $t1
	sw $t0, -1616($fp)
	lw $t0, -740($fp)
	sw $t0, -1620($fp)
	li $t0, 47258
	sw $t0, -1624($fp)
	lw $t0, -1620($fp)
	lw $t1, -1624($fp)
	mul $t0, $t0, $t1
	sw $t0, -1628($fp)
	lw $t1, -1616($fp)
	lw $t2, -1628($fp)
	blt $t1, $t2, label536
	j label537
label536:
	li $t0, 1
	sw $t0, -1588($fp)
label537:
	j label533
label532:
	li $t0, 0
	sw $t0, -1632($fp)
	addi $t0, $fp, -36
	sw $t0, -1636($fp)
	lw $t0, -584($fp)
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -1644($fp)
	li $t0, 4
	lw $t1, -1644($fp)
	mul $t0, $t0, $t1
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	lw $t1, -1636($fp)
	add $t0, $t0, $t1
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	lw $t1, 0($t0)
	sw $t1, -1656($fp)
	lw $t1, -1656($fp)
	li $t2, 0
	bne $t1, $t2, label540
	j label541
label541:
	li $t0, 0
	sw $t0, -1660($fp)
	lw $t0, -356($fp)
	sw $t0, -1664($fp)
	lw $t0, -356($fp)
	sw $t0, -1668($fp)
	lw $t0, -1664($fp)
	lw $t1, -1668($fp)
	mul $t0, $t0, $t1
	sw $t0, -1672($fp)
	lw $t0, -416($fp)
	sw $t0, -1676($fp)
	lw $t1, -1672($fp)
	lw $t2, -1676($fp)
	bne $t1, $t2, label542
	j label543
label542:
	li $t0, 1
	sw $t0, -1660($fp)
label543:
	lw $t0, -464($fp)
	sw $t0, -1680($fp)
	lw $t0, -752($fp)
	sw $t0, -1684($fp)
	li $t0, 45191
	sw $t0, -1688($fp)
	lw $t0, -1684($fp)
	lw $t1, -1688($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1692($fp)
	lw $t0, -1076($fp)
	sw $t0, -1696($fp)
	lw $t0, -1692($fp)
	lw $t1, -1696($fp)
	add $t0, $t0, $t1
	sw $t0, -1700($fp)
	li $t0, 0
	sw $t0, -1704($fp)
	li $t0, 39846
	sw $t0, -1708($fp)
	lw $t1, -1708($fp)
	li $t2, 0
	bne $t1, $t2, label544
	j label546
label546:
	lw $t0, -596($fp)
	sw $t0, -1712($fp)
	lw $t1, -1712($fp)
	li $t2, 0
	bne $t1, $t2, label544
	j label545
label544:
	li $t0, 1
	sw $t0, -1704($fp)
label545:
	lw $t0, -356($fp)
	sw $t0, -1716($fp)
	lw $t0, -632($fp)
	sw $t0, -1720($fp)
	lw $t0, -1716($fp)
	lw $t1, -1720($fp)
	mul $t0, $t0, $t1
	sw $t0, -1724($fp)
	li $t0, 55603
	sw $t0, -1728($fp)
	lw $t0, -1724($fp)
	lw $t1, -1728($fp)
	add $t0, $t0, $t1
	sw $t0, -1732($fp)
	lw $t0, -488($fp)
	sw $t0, -1736($fp)
	li $t0, 0
	sw $t0, -1740($fp)
	addi $t0, $fp, -36
	sw $t0, -1744($fp)
	lw $t0, -488($fp)
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
	lw $t1, -1760($fp)
	li $t2, 0
	bne $t1, $t2, label547
	j label549
label549:
	li $t0, 1086
	sw $t0, -1764($fp)
	lw $t1, -1764($fp)
	li $t2, 0
	bne $t1, $t2, label547
	j label548
label547:
	li $t0, 1
	sw $t0, -1740($fp)
label548:
	addi $sp, $sp, -4
	lw $t0, -1700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1740($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1768($fp)
	addi $sp, $sp, 24
	li $t0, 50002
	sw $t0, -1772($fp)
	lw $t0, -1768($fp)
	lw $t1, -1772($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1776($fp)
	li $t0, 0
	sw $t0, -1780($fp)
	addi $t0, $fp, -108
	sw $t0, -1784($fp)
	lw $t0, -1076($fp)
	sw $t0, -1788($fp)
	li $t0, 4
	lw $t1, -1788($fp)
	mul $t0, $t0, $t1
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	lw $t1, -1784($fp)
	add $t0, $t0, $t1
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	lw $t1, 0($t0)
	sw $t1, -1800($fp)
	lw $t1, -1800($fp)
	li $t2, 0
	bne $t1, $t2, label550
	j label552
label552:
	lw $t0, -620($fp)
	sw $t0, -1804($fp)
	lw $t1, -1804($fp)
	li $t2, 0
	bne $t1, $t2, label550
	j label551
label550:
	li $t0, 1
	sw $t0, -1780($fp)
label551:
	addi $sp, $sp, -4
	lw $t0, -1776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1780($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1808($fp)
	addi $sp, $sp, 12
	li $t0, 61151
	sw $t0, -1812($fp)
	lw $t0, -1808($fp)
	lw $t1, -1812($fp)
	add $t0, $t0, $t1
	sw $t0, -1816($fp)
	addi $sp, $sp, -4
	lw $t0, -1660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1816($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1820($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -44
	sw $t0, -1824($fp)
	li $t0, 0
	sw $t0, -1828($fp)
	li $t0, 4
	lw $t1, -1828($fp)
	mul $t0, $t0, $t1
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	lw $t1, -1824($fp)
	add $t0, $t0, $t1
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	lw $t1, 0($t0)
	sw $t1, -1840($fp)
	li $t0, 62033
	sw $t0, -1844($fp)
	lw $t0, -1840($fp)
	lw $t1, -1844($fp)
	add $t0, $t0, $t1
	sw $t0, -1848($fp)
	li $t0, 15378
	sw $t0, -1852($fp)
	li $t0, 41382
	sw $t0, -1856($fp)
	lw $t0, -1852($fp)
	lw $t1, -1856($fp)
	mul $t0, $t0, $t1
	sw $t0, -1860($fp)
	lw $t0, -428($fp)
	sw $t0, -1864($fp)
	lw $t0, -1860($fp)
	lw $t1, -1864($fp)
	mul $t0, $t0, $t1
	sw $t0, -1868($fp)
	li $t0, 0
	sw $t0, -1872($fp)
	li $t0, 0
	sw $t0, -1876($fp)
	li $t0, 12118
	sw $t0, -1880($fp)
	li $t0, 38166
	sw $t0, -1884($fp)
	lw $t1, -1880($fp)
	lw $t2, -1884($fp)
	bgt $t1, $t2, label555
	j label556
label555:
	li $t0, 1
	sw $t0, -1876($fp)
label556:
	lw $t0, -1028($fp)
	sw $t0, -1888($fp)
	lw $t1, -1876($fp)
	lw $t2, -1888($fp)
	ble $t1, $t2, label553
	j label554
label553:
	li $t0, 1
	sw $t0, -1872($fp)
label554:
	addi $t0, $fp, -56
	sw $t0, -1892($fp)
	lw $t0, -500($fp)
	sw $t0, -1896($fp)
	li $t0, 4
	lw $t1, -1896($fp)
	mul $t0, $t0, $t1
	sw $t0, -1900($fp)
	lw $t0, -1900($fp)
	lw $t1, -1892($fp)
	add $t0, $t0, $t1
	sw $t0, -1904($fp)
	lw $t0, -1904($fp)
	lw $t1, 0($t0)
	sw $t1, -1908($fp)
	lw $t0, -1028($fp)
	sw $t0, -1912($fp)
	lw $t0, -1908($fp)
	lw $t1, -1912($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1916($fp)
	addi $sp, $sp, -4
	lw $t0, -1820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1916($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1920($fp)
	addi $sp, $sp, 24
	lw $t1, -1920($fp)
	li $t2, 0
	bne $t1, $t2, label539
	j label540
label539:
	li $t0, 1
	sw $t0, -1632($fp)
label540:
label533:
label520:
	j label498
label497:
	li $t0, 7582
	sw $t0, -1924($fp)
	li $t0, 0
	sw $t0, -1928($fp)
	li $t0, 17360
	sw $t0, -1932($fp)
	lw $t0, 4($fp)
	sw $t0, -1936($fp)
	lw $t0, -1932($fp)
	lw $t1, -1936($fp)
	sub $t0, $t0, $t1
	sw $t0, -1940($fp)
	lw $t0, -356($fp)
	sw $t0, -1944($fp)
	lw $t1, -1940($fp)
	lw $t2, -1944($fp)
	beq $t1, $t2, label560
	j label561
label560:
	li $t0, 1
	sw $t0, -1928($fp)
label561:
	addi $sp, $sp, -4
	lw $t0, -1928($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1948($fp)
	addi $sp, $sp, 8
	lw $t0, -1924($fp)
	lw $t1, -1948($fp)
	mul $t0, $t0, $t1
	sw $t0, -1952($fp)
	lw $t1, -1952($fp)
	li $t2, 0
	bne $t1, $t2, label557
	j label558
label557:
	li $t0, 0
	sw $t0, -1956($fp)
	li $t0, 45159
	sw $t0, -1960($fp)
	li $t0, 0
	lw $t1, -1960($fp)
	sub $t0, $t0, $t1
	sw $t0, -1964($fp)
	lw $t1, -1964($fp)
	li $t2, 0
	bne $t1, $t2, label566
	j label568
label568:
	lw $t0, -752($fp)
	sw $t0, -1968($fp)
	lw $t1, -1968($fp)
	li $t2, 0
	bne $t1, $t2, label566
	j label567
label566:
	li $t0, 1
	sw $t0, -1956($fp)
label567:
	lw $t0, -644($fp)
	sw $t0, -1972($fp)
	li $t0, 0
	lw $t1, -1972($fp)
	sub $t0, $t0, $t1
	sw $t0, -1976($fp)
	addi $sp, $sp, -4
	lw $t0, -1956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1976($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1980($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -1980($fp)
	sub $t0, $t0, $t1
	sw $t0, -1984($fp)
	li $t0, 0
	sw $t0, -1988($fp)
	li $t0, 2781
	sw $t0, -1992($fp)
	lw $t0, -476($fp)
	sw $t0, -1996($fp)
	lw $t1, -1992($fp)
	lw $t2, -1996($fp)
	beq $t1, $t2, label569
	j label570
label569:
	li $t0, 1
	sw $t0, -1988($fp)
label570:
	addi $sp, $sp, -4
	lw $t0, -1984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1988($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2000($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -2004($fp)
	addi $t0, $fp, -96
	sw $t0, -2008($fp)
	lw $t0, -584($fp)
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
	lw $t1, -2024($fp)
	li $t2, 0
	bne $t1, $t2, label572
	j label571
label571:
	li $t0, 1
	sw $t0, -2004($fp)
label572:
	lw $t0, -2000($fp)
	lw $t1, -2004($fp)
	mul $t0, $t0, $t1
	sw $t0, -2028($fp)
	lw $t1, -2028($fp)
	li $t2, 0
	bne $t1, $t2, label562
	j label565
label565:
	li $t0, 47769
	sw $t0, -2032($fp)
	li $t0, 27553
	sw $t0, -2036($fp)
	lw $t0, -2032($fp)
	lw $t1, -2036($fp)
	mul $t0, $t0, $t1
	sw $t0, -2040($fp)
	lw $t0, -596($fp)
	sw $t0, -2044($fp)
	lw $t0, -2040($fp)
	lw $t1, -2044($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2048($fp)
	lw $t1, -2048($fp)
	li $t2, 0
	bne $t1, $t2, label562
	j label563
label562:
	lw $t0, -464($fp)
	sw $t0, -2052($fp)
	j label564
label563:
	addi $t0, $fp, -44
	sw $t0, -2056($fp)
	li $t0, 0
	sw $t0, -2060($fp)
	li $t0, 29025
	sw $t0, -2064($fp)
	lw $t1, -2064($fp)
	li $t2, 0
	bne $t1, $t2, label573
	j label575
label575:
	lw $t0, -572($fp)
	sw $t0, -2068($fp)
	lw $t1, -2068($fp)
	li $t2, 0
	bne $t1, $t2, label573
	j label574
label573:
	li $t0, 1
	sw $t0, -2060($fp)
label574:
	li $t0, 4
	lw $t1, -2060($fp)
	mul $t0, $t0, $t1
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	lw $t1, -2056($fp)
	add $t0, $t0, $t1
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	lw $t1, 0($t0)
	sw $t1, -2080($fp)
	li $t0, 2286
	sw $t0, -2084($fp)
	lw $t0, -2080($fp)
	lw $t1, -2084($fp)
	add $t0, $t0, $t1
	sw $t0, -2088($fp)
	lw $t0, -428($fp)
	sw $t0, -2092($fp)
	lw $t0, -2088($fp)
	lw $t1, -2092($fp)
	add $t0, $t0, $t1
	sw $t0, -2096($fp)
label564:
	j label559
label558:
	li $t0, 0
	sw $t0, -2100($fp)
	li $t0, 45798
	sw $t0, -2104($fp)
	li $t0, 0
	lw $t1, -2104($fp)
	sub $t0, $t0, $t1
	sw $t0, -2108($fp)
	li $t0, 10165
	sw $t0, -2112($fp)
	lw $t0, -2108($fp)
	lw $t1, -2112($fp)
	sub $t0, $t0, $t1
	sw $t0, -2116($fp)
	addi $t0, $fp, -96
	sw $t0, -2120($fp)
	lw $t0, -644($fp)
	sw $t0, -2124($fp)
	li $t0, 4
	lw $t1, -2124($fp)
	mul $t0, $t0, $t1
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	lw $t1, -2120($fp)
	add $t0, $t0, $t1
	sw $t0, -2132($fp)
	lw $t0, -2132($fp)
	lw $t1, 0($t0)
	sw $t1, -2136($fp)
	lw $t1, -2116($fp)
	lw $t2, -2136($fp)
	ble $t1, $t2, label579
	j label578
label579:
	lw $t0, -608($fp)
	sw $t0, -2140($fp)
	lw $t0, 8($fp)
	sw $t0, -2144($fp)
	lw $t0, -2140($fp)
	lw $t1, -2144($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2148($fp)
	lw $t0, -332($fp)
	sw $t0, -2152($fp)
	lw $t1, -2148($fp)
	lw $t2, -2152($fp)
	beq $t1, $t2, label576
	j label578
label578:
	li $t0, 33451
	sw $t0, -2156($fp)
	lw $t0, -656($fp)
	sw $t0, -2160($fp)
	lw $t0, -2160($fp)
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -2164($fp)
	li $t0, 0
	sw $t0, -2168($fp)
	li $t0, 7226
	sw $t0, -2172($fp)
	li $t0, 0
	lw $t1, -2172($fp)
	sub $t0, $t0, $t1
	sw $t0, -2176($fp)
	lw $t1, -2176($fp)
	li $t2, 0
	bne $t1, $t2, label580
	j label582
label582:
	li $t0, 58825
	sw $t0, -2180($fp)
	lw $t1, -2180($fp)
	li $t2, 0
	bne $t1, $t2, label580
	j label581
label580:
	li $t0, 1
	sw $t0, -2168($fp)
label581:
	li $t0, 0
	sw $t0, -2184($fp)
	li $t0, 0
	sw $t0, -2188($fp)
	li $t0, 36036
	sw $t0, -2192($fp)
	lw $t1, -2192($fp)
	li $t2, 0
	bne $t1, $t2, label586
	j label588
label588:
	li $t0, 37831
	sw $t0, -2196($fp)
	lw $t1, -2196($fp)
	li $t2, 0
	bne $t1, $t2, label586
	j label587
label586:
	li $t0, 1
	sw $t0, -2188($fp)
label587:
	li $t0, 0
	sw $t0, -2200($fp)
	li $t0, 37354
	sw $t0, -2204($fp)
	lw $t1, -2204($fp)
	li $t2, 0
	bne $t1, $t2, label590
	j label589
label589:
	li $t0, 1
	sw $t0, -2200($fp)
label590:
	lw $t0, -1064($fp)
	sw $t0, -2208($fp)
	lw $t0, -2200($fp)
	lw $t1, -2208($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2212($fp)
	addi $sp, $sp, -4
	lw $t0, -2188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2212($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2216($fp)
	addi $sp, $sp, 12
	lw $t1, -2216($fp)
	li $t2, 0
	bne $t1, $t2, label585
	j label584
label585:
	lw $t0, 16($fp)
	sw $t0, -2220($fp)
	lw $t1, -2220($fp)
	li $t2, 0
	bne $t1, $t2, label583
	j label584
label583:
	li $t0, 1
	sw $t0, -2184($fp)
label584:
	li $t0, 0
	sw $t0, -2224($fp)
	lw $t0, -320($fp)
	sw $t0, -2228($fp)
	li $t0, 0
	lw $t1, -2228($fp)
	sub $t0, $t0, $t1
	sw $t0, -2232($fp)
	li $t0, 10805
	sw $t0, -2236($fp)
	lw $t1, -2232($fp)
	lw $t2, -2236($fp)
	bne $t1, $t2, label591
	j label592
label591:
	li $t0, 1
	sw $t0, -2224($fp)
label592:
	addi $sp, $sp, -4
	lw $t0, -2168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2224($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2240($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -2164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2240($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2244($fp)
	addi $sp, $sp, 12
	lw $t0, -2156($fp)
	lw $t1, -2244($fp)
	sub $t0, $t0, $t1
	sw $t0, -2248($fp)
	lw $t1, -2248($fp)
	li $t2, 0
	bne $t1, $t2, label576
	j label577
label576:
	li $t0, 1
	sw $t0, -2100($fp)
label577:
label559:
label498:
	j label485
label487:
	li $t0, 19553
	sw $t0, -2252($fp)
	lw $t1, -2252($fp)
	li $t2, 0
	bne $t1, $t2, label593
	j label594
label593:
label596:
	lw $t0, -500($fp)
	sw $t0, -2256($fp)
	lw $t1, -2256($fp)
	li $t2, 0
	bne $t1, $t2, label597
	j label598
label597:
	li $t0, 0
	sw $t0, -2260($fp)
	li $t0, 0
	sw $t0, -2264($fp)
	lw $t0, -500($fp)
	sw $t0, -2268($fp)
	lw $t1, -2268($fp)
	li $t2, 0
	bne $t1, $t2, label605
	j label604
label605:
	lw $t0, -1016($fp)
	sw $t0, -2272($fp)
	lw $t1, -2272($fp)
	li $t2, 0
	bne $t1, $t2, label602
	j label604
label604:
	li $t0, 31534
	sw $t0, -2276($fp)
	lw $t1, -2276($fp)
	li $t2, 0
	bne $t1, $t2, label602
	j label603
label602:
	li $t0, 1
	sw $t0, -2264($fp)
label603:
	li $t0, 0
	sw $t0, -2280($fp)
	lw $t0, -452($fp)
	sw $t0, -2284($fp)
	lw $t1, -2284($fp)
	li $t2, 0
	bne $t1, $t2, label606
	j label609
label609:
	li $t0, 38785
	sw $t0, -2288($fp)
	lw $t1, -2288($fp)
	li $t2, 0
	bne $t1, $t2, label606
	j label608
label608:
	li $t0, 38625
	sw $t0, -2292($fp)
	lw $t1, -2292($fp)
	li $t2, 0
	bne $t1, $t2, label606
	j label607
label606:
	li $t0, 1
	sw $t0, -2280($fp)
label607:
	li $t0, 0
	sw $t0, -2296($fp)
	li $t0, 0
	sw $t0, -2300($fp)
	li $t0, 48558
	sw $t0, -2304($fp)
	lw $t1, -2304($fp)
	li $t2, 0
	bne $t1, $t2, label614
	j label612
label614:
	lw $t0, -596($fp)
	sw $t0, -2308($fp)
	lw $t1, -2308($fp)
	li $t2, 0
	bne $t1, $t2, label612
	j label613
label612:
	li $t0, 1
	sw $t0, -2300($fp)
label613:
	li $t0, 0
	sw $t0, -2312($fp)
	lw $t0, -332($fp)
	sw $t0, -2316($fp)
	lw $t1, -2316($fp)
	li $t2, 0
	bne $t1, $t2, label617
	j label616
label617:
	lw $t0, -1052($fp)
	sw $t0, -2320($fp)
	lw $t1, -2320($fp)
	li $t2, 0
	bne $t1, $t2, label615
	j label616
label615:
	li $t0, 1
	sw $t0, -2312($fp)
label616:
	li $t0, 0
	sw $t0, -2324($fp)
	lw $t0, -752($fp)
	sw $t0, -2328($fp)
	lw $t0, -524($fp)
	sw $t0, -2332($fp)
	lw $t0, -2328($fp)
	lw $t1, -2332($fp)
	mul $t0, $t0, $t1
	sw $t0, -2336($fp)
	lw $t0, -308($fp)
	sw $t0, -2340($fp)
	lw $t1, -2336($fp)
	lw $t2, -2340($fp)
	beq $t1, $t2, label618
	j label619
label618:
	li $t0, 1
	sw $t0, -2324($fp)
label619:
	addi $t0, $fp, -56
	sw $t0, -2344($fp)
	lw $t0, -608($fp)
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
	li $t0, 0
	lw $t1, -2360($fp)
	sub $t0, $t0, $t1
	sw $t0, -2364($fp)
	li $t0, 0
	sw $t0, -2368($fp)
	li $t0, 60726
	sw $t0, -2372($fp)
	lw $t0, 16($fp)
	sw $t0, -2376($fp)
	lw $t1, -2372($fp)
	lw $t2, -2376($fp)
	bgt $t1, $t2, label620
	j label622
label622:
	li $t0, 37699
	sw $t0, -2380($fp)
	lw $t1, -2380($fp)
	li $t2, 0
	bne $t1, $t2, label620
	j label621
label620:
	li $t0, 1
	sw $t0, -2368($fp)
label621:
	addi $sp, $sp, -4
	lw $t0, -2300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2368($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2384($fp)
	addi $sp, $sp, 24
	li $t0, 57224
	sw $t0, -2388($fp)
	lw $t1, -2384($fp)
	lw $t2, -2388($fp)
	bgt $t1, $t2, label610
	j label611
label610:
	li $t0, 1
	sw $t0, -2296($fp)
label611:
	addi $sp, $sp, -4
	lw $t0, -2264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2296($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2392($fp)
	addi $sp, $sp, 16
	li $t0, 18440
	sw $t0, -2396($fp)
	lw $t0, -2392($fp)
	lw $t1, -2396($fp)
	add $t0, $t0, $t1
	sw $t0, -2400($fp)
	addi $t0, $fp, -36
	sw $t0, -2404($fp)
	lw $t0, -356($fp)
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
	li $t0, 34931
	sw $t0, -2424($fp)
	lw $t0, -2420($fp)
	lw $t1, -2424($fp)
	sub $t0, $t0, $t1
	sw $t0, -2428($fp)
	addi $sp, $sp, -4
	lw $t0, -2428($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2432($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2436($fp)
	li $t0, 31455
	sw $t0, -2440($fp)
	li $t0, 0
	lw $t1, -2440($fp)
	sub $t0, $t0, $t1
	sw $t0, -2444($fp)
	lw $t0, -764($fp)
	sw $t0, -2448($fp)
	lw $t1, -2444($fp)
	lw $t2, -2448($fp)
	beq $t1, $t2, label623
	j label624
label623:
	li $t0, 1
	sw $t0, -2436($fp)
label624:
	addi $sp, $sp, -4
	lw $t0, -2400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2436($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2452($fp)
	addi $sp, $sp, 16
	li $t0, 19344
	sw $t0, -2456($fp)
	addi $sp, $sp, -4
	lw $t0, -2452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2456($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2460($fp)
	addi $sp, $sp, 12
	lw $t0, -500($fp)
	sw $t0, -2464($fp)
	li $t0, 23091
	sw $t0, -2468($fp)
	lw $t0, -2464($fp)
	lw $t1, -2468($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2472($fp)
	lw $t1, -2460($fp)
	lw $t2, -2472($fp)
	bne $t1, $t2, label601
	j label600
label601:
	li $t0, 0
	sw $t0, -2476($fp)
	li $t0, 22684
	sw $t0, -2480($fp)
	li $t0, 57484
	sw $t0, -2484($fp)
	lw $t1, -2480($fp)
	lw $t2, -2484($fp)
	beq $t1, $t2, label627
	j label626
label627:
	li $t0, 34671
	sw $t0, -2488($fp)
	lw $t1, -2488($fp)
	li $t2, 0
	bne $t1, $t2, label625
	j label626
label625:
	li $t0, 1
	sw $t0, -2476($fp)
label626:
	li $t0, 0
	sw $t0, -2492($fp)
	li $t0, 5646
	sw $t0, -2496($fp)
	lw $t0, -476($fp)
	sw $t0, -2500($fp)
	lw $t1, -2496($fp)
	lw $t2, -2500($fp)
	beq $t1, $t2, label628
	j label630
label630:
	lw $t0, -344($fp)
	sw $t0, -2504($fp)
	lw $t1, -2504($fp)
	li $t2, 0
	bne $t1, $t2, label628
	j label629
label628:
	li $t0, 1
	sw $t0, -2492($fp)
label629:
	li $t0, 0
	sw $t0, -2508($fp)
	lw $t0, 16($fp)
	sw $t0, -2512($fp)
	li $t0, 40451
	sw $t0, -2516($fp)
	lw $t0, -2512($fp)
	lw $t1, -2516($fp)
	sub $t0, $t0, $t1
	sw $t0, -2520($fp)
	li $t0, 29931
	sw $t0, -2524($fp)
	lw $t1, -2520($fp)
	lw $t2, -2524($fp)
	bne $t1, $t2, label631
	j label632
label631:
	li $t0, 1
	sw $t0, -2508($fp)
label632:
	li $t0, 0
	sw $t0, -2528($fp)
	li $t0, 26022
	sw $t0, -2532($fp)
	lw $t1, -2532($fp)
	li $t2, 0
	bne $t1, $t2, label636
	j label635
label636:
	lw $t0, -488($fp)
	sw $t0, -2536($fp)
	lw $t1, -2536($fp)
	li $t2, 0
	bne $t1, $t2, label633
	j label635
label635:
	lw $t0, -656($fp)
	sw $t0, -2540($fp)
	lw $t1, -2540($fp)
	li $t2, 0
	bne $t1, $t2, label633
	j label634
label633:
	li $t0, 1
	sw $t0, -2528($fp)
label634:
	lw $t0, -344($fp)
	sw $t0, -2544($fp)
	li $t0, 27149
	sw $t0, -2548($fp)
	lw $t0, -2544($fp)
	lw $t1, -2548($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2552($fp)
	addi $sp, $sp, -4
	lw $t0, -2476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2552($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2556($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -2556($fp)
	sub $t0, $t0, $t1
	sw $t0, -2560($fp)
	lw $t1, -2560($fp)
	li $t2, 0
	bne $t1, $t2, label599
	j label600
label599:
	li $t0, 1
	sw $t0, -2260($fp)
label600:
	j label596
label598:
	j label595
label594:
	li $t0, 24971
	sw $t0, -2564($fp)
	li $t0, 0
	lw $t1, -2564($fp)
	sub $t0, $t0, $t1
	sw $t0, -2568($fp)
	li $t0, 43225
	sw $t0, -2572($fp)
	li $t0, 22212
	sw $t0, -2576($fp)
	lw $t0, 20($fp)
	sw $t0, -2580($fp)
	lw $t0, -2576($fp)
	lw $t1, -2580($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2584($fp)
	li $t0, 40400
	sw $t0, -2588($fp)
	lw $t0, -2584($fp)
	lw $t1, -2588($fp)
	add $t0, $t0, $t1
	sw $t0, -2592($fp)
	li $t0, 0
	sw $t0, -2596($fp)
	li $t0, 0
	sw $t0, -2600($fp)
	li $t0, 28922
	sw $t0, -2604($fp)
	lw $t1, -2604($fp)
	li $t2, 0
	bne $t1, $t2, label642
	j label641
label642:
	li $t0, 20847
	sw $t0, -2608($fp)
	lw $t1, -2608($fp)
	li $t2, 0
	bne $t1, $t2, label639
	j label641
label641:
	lw $t0, -476($fp)
	sw $t0, -2612($fp)
	lw $t1, -2612($fp)
	li $t2, 0
	bne $t1, $t2, label639
	j label640
label639:
	li $t0, 1
	sw $t0, -2600($fp)
label640:
	li $t0, 0
	sw $t0, -2616($fp)
	li $t0, 0
	sw $t0, -2620($fp)
	li $t0, 48551
	sw $t0, -2624($fp)
	lw $t0, -440($fp)
	sw $t0, -2628($fp)
	lw $t1, -2624($fp)
	lw $t2, -2628($fp)
	ble $t1, $t2, label645
	j label646
label645:
	li $t0, 1
	sw $t0, -2620($fp)
label646:
	li $t0, 16655
	sw $t0, -2632($fp)
	lw $t1, -2620($fp)
	lw $t2, -2632($fp)
	blt $t1, $t2, label643
	j label644
label643:
	li $t0, 1
	sw $t0, -2616($fp)
label644:
	li $t0, 58422
	sw $t0, -2636($fp)
	lw $t0, -2636($fp)
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -2640($fp)
	addi $sp, $sp, -4
	lw $t0, -2600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2640($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2644($fp)
	addi $sp, $sp, 16
	li $t0, 23881
	sw $t0, -2648($fp)
	lw $t1, -2644($fp)
	lw $t2, -2648($fp)
	blt $t1, $t2, label637
	j label638
label637:
	li $t0, 1
	sw $t0, -2596($fp)
label638:
	lw $t0, -620($fp)
	sw $t0, -2652($fp)
	lw $t0, -2652($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -2656($fp)
	addi $sp, $sp, -4
	lw $t0, -2592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2656($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2660($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -36
	sw $t0, -2664($fp)
	li $t0, 5
	sw $t0, -2668($fp)
	li $t0, 4
	lw $t1, -2668($fp)
	mul $t0, $t0, $t1
	sw $t0, -2672($fp)
	lw $t0, -2672($fp)
	lw $t1, -2664($fp)
	add $t0, $t0, $t1
	sw $t0, -2676($fp)
	lw $t0, -2676($fp)
	lw $t1, 0($t0)
	sw $t1, -2680($fp)
	addi $sp, $sp, -4
	lw $t0, -2572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2680($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2684($fp)
	addi $sp, $sp, 16
	lw $t0, -2568($fp)
	lw $t1, -2684($fp)
	add $t0, $t0, $t1
	sw $t0, -2688($fp)
	lw $ra, -4($fp)
	lw $v0, -2688($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label595:
	li $t0, 53667
	sw $t0, -2692($fp)
	lw $t0, -2692($fp)
	sw $t0, -2696($fp)
	lw $t0, -2696($fp)
	sw $t0, -2700($fp)
	li $t0, 9796
	sw $t0, -2704($fp)
	lw $t0, -2704($fp)
	sw $t0, -2708($fp)
	lw $t0, -2708($fp)
	sw $t0, -2712($fp)
	li $t0, 38416
	sw $t0, -2716($fp)
	lw $t0, -2716($fp)
	sw $t0, -2720($fp)
	lw $t0, -2720($fp)
	sw $t0, -2724($fp)
	addi $t0, $fp, -36
	sw $t0, -2728($fp)
	li $t0, 0
	sw $t0, -2732($fp)
	li $t0, 25831
	sw $t0, -2736($fp)
	lw $t1, -2736($fp)
	li $t2, 0
	bne $t1, $t2, label648
	j label647
label647:
	li $t0, 1
	sw $t0, -2732($fp)
label648:
	li $t0, 4
	lw $t1, -2732($fp)
	mul $t0, $t0, $t1
	sw $t0, -2740($fp)
	lw $t0, -2740($fp)
	lw $t1, -2728($fp)
	add $t0, $t0, $t1
	sw $t0, -2744($fp)
	lw $t0, -2744($fp)
	lw $t1, 0($t0)
	sw $t1, -2748($fp)
	li $t0, 0
	sw $t0, -2752($fp)
	lw $t0, -548($fp)
	sw $t0, -2756($fp)
	li $t0, 0
	lw $t1, -2756($fp)
	sub $t0, $t0, $t1
	sw $t0, -2760($fp)
	lw $t1, -2760($fp)
	li $t2, 0
	bne $t1, $t2, label649
	j label651
label651:
	li $t0, 58354
	sw $t0, -2764($fp)
	lw $t1, -2764($fp)
	li $t2, 0
	bne $t1, $t2, label649
	j label650
label649:
	li $t0, 1
	sw $t0, -2752($fp)
label650:
	li $t0, 0
	sw $t0, -2768($fp)
	lw $t0, -596($fp)
	sw $t0, -2772($fp)
	lw $t1, -2772($fp)
	li $t2, 0
	bne $t1, $t2, label653
	j label652
label652:
	li $t0, 1
	sw $t0, -2768($fp)
label653:
	li $t0, 0
	lw $t1, -2768($fp)
	sub $t0, $t0, $t1
	sw $t0, -2776($fp)
	addi $sp, $sp, -4
	lw $t0, -2752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2776($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2780($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -2780($fp)
	sub $t0, $t0, $t1
	sw $t0, -2784($fp)
	lw $t0, -2748($fp)
	lw $t1, -2784($fp)
	add $t0, $t0, $t1
	sw $t0, -2788($fp)
	li $t0, 0
	sw $t0, -2792($fp)
	addi $t0, $fp, -56
	sw $t0, -2796($fp)
	lw $t0, -476($fp)
	sw $t0, -2800($fp)
	li $t0, 4
	lw $t1, -2800($fp)
	mul $t0, $t0, $t1
	sw $t0, -2804($fp)
	lw $t0, -2804($fp)
	lw $t1, -2796($fp)
	add $t0, $t0, $t1
	sw $t0, -2808($fp)
	lw $t0, -2808($fp)
	lw $t1, 0($t0)
	sw $t1, -2812($fp)
	lw $t0, -2720($fp)
	sw $t0, -2816($fp)
	lw $t0, -2812($fp)
	lw $t1, -2816($fp)
	sub $t0, $t0, $t1
	sw $t0, -2820($fp)
	li $t0, 30104
	sw $t0, -2824($fp)
	lw $t1, -2820($fp)
	lw $t2, -2824($fp)
	ble $t1, $t2, label654
	j label655
label654:
	li $t0, 1
	sw $t0, -2792($fp)
label655:
	lw $t0, -2792($fp)
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -2828($fp)
	addi $t0, $fp, -56
	sw $t0, -2832($fp)
	li $t0, 0
	sw $t0, -2836($fp)
	lw $t0, 20($fp)
	sw $t0, -2840($fp)
	lw $t1, -2840($fp)
	li $t2, 0
	bne $t1, $t2, label662
	j label661
label662:
	lw $t0, -452($fp)
	sw $t0, -2844($fp)
	lw $t1, -2844($fp)
	li $t2, 0
	bne $t1, $t2, label659
	j label661
label661:
	li $t0, 61638
	sw $t0, -2848($fp)
	li $t0, 0
	lw $t1, -2848($fp)
	sub $t0, $t0, $t1
	sw $t0, -2852($fp)
	li $t0, 0
	lw $t1, -2852($fp)
	sub $t0, $t0, $t1
	sw $t0, -2856($fp)
	addi $sp, $sp, -4
	lw $t0, -2856($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2860($fp)
	addi $sp, $sp, 8
	lw $t0, -608($fp)
	sw $t0, -2864($fp)
	lw $t0, -2860($fp)
	lw $t1, -2864($fp)
	add $t0, $t0, $t1
	sw $t0, -2868($fp)
	lw $t0, -332($fp)
	sw $t0, -2872($fp)
	li $t0, 0
	sw $t0, -2876($fp)
	lw $t0, -740($fp)
	sw $t0, -2880($fp)
	li $t0, 0
	lw $t1, -2880($fp)
	sub $t0, $t0, $t1
	sw $t0, -2884($fp)
	li $t0, 31443
	sw $t0, -2888($fp)
	lw $t1, -2884($fp)
	lw $t2, -2888($fp)
	beq $t1, $t2, label663
	j label664
label663:
	li $t0, 1
	sw $t0, -2876($fp)
label664:
	li $t0, 0
	sw $t0, -2892($fp)
	lw $t0, -452($fp)
	sw $t0, -2896($fp)
	li $t0, 64616
	sw $t0, -2900($fp)
	lw $t1, -2896($fp)
	lw $t2, -2900($fp)
	bgt $t1, $t2, label665
	j label666
label665:
	li $t0, 1
	sw $t0, -2892($fp)
label666:
	li $t0, 0
	sw $t0, -2904($fp)
	lw $t0, -332($fp)
	sw $t0, -2908($fp)
	lw $t1, -2908($fp)
	li $t2, 0
	bne $t1, $t2, label668
	j label667
label667:
	li $t0, 1
	sw $t0, -2904($fp)
label668:
	lw $t0, 16($fp)
	sw $t0, -2912($fp)
	lw $t0, -2904($fp)
	lw $t1, -2912($fp)
	sub $t0, $t0, $t1
	sw $t0, -2916($fp)
	addi $sp, $sp, -4
	lw $t0, -2868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2916($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2920($fp)
	addi $sp, $sp, 24
	lw $t1, -2920($fp)
	li $t2, 0
	bne $t1, $t2, label659
	j label660
label659:
	li $t0, 1
	sw $t0, -2836($fp)
label660:
	li $t0, 4
	lw $t1, -2836($fp)
	mul $t0, $t0, $t1
	sw $t0, -2924($fp)
	lw $t0, -2924($fp)
	lw $t1, -2832($fp)
	add $t0, $t0, $t1
	sw $t0, -2928($fp)
	lw $t0, -2928($fp)
	lw $t1, 0($t0)
	sw $t1, -2932($fp)
	lw $t1, -2932($fp)
	li $t2, 0
	bne $t1, $t2, label656
	j label657
label656:
	lw $t0, -2696($fp)
	sw $t0, -2936($fp)
	li $t0, 17521
	sw $t0, -2940($fp)
	lw $t1, -2936($fp)
	lw $t2, -2940($fp)
	ble $t1, $t2, label669
	j label670
label669:
	li $t0, 54534
	sw $t0, -2944($fp)
	li $t0, 23252
	sw $t0, -2948($fp)
	lw $t0, -596($fp)
	sw $t0, -2952($fp)
	lw $t0, -2948($fp)
	lw $t1, -2952($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2956($fp)
	lw $t0, -2944($fp)
	lw $t1, -2956($fp)
	sub $t0, $t0, $t1
	sw $t0, -2960($fp)
	lw $t0, -2960($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -2964($fp)
	j label671
label670:
	addi $t0, $fp, -56
	sw $t0, -2968($fp)
	li $t0, 0
	sw $t0, -2972($fp)
	li $t0, 43543
	sw $t0, -2976($fp)
	li $t0, 29449
	sw $t0, -2980($fp)
	lw $t1, -2976($fp)
	lw $t2, -2980($fp)
	blt $t1, $t2, label672
	j label673
label672:
	li $t0, 1
	sw $t0, -2972($fp)
label673:
	li $t0, 4
	lw $t1, -2972($fp)
	mul $t0, $t0, $t1
	sw $t0, -2984($fp)
	lw $t0, -2984($fp)
	lw $t1, -2968($fp)
	add $t0, $t0, $t1
	sw $t0, -2988($fp)
	lw $t0, -2988($fp)
	lw $t1, 0($t0)
	sw $t1, -2992($fp)
	li $t0, 53183
	sw $t0, -2996($fp)
	li $t0, 0
	lw $t1, -2996($fp)
	sub $t0, $t0, $t1
	sw $t0, -3000($fp)
	li $t0, 0
	lw $t1, -3000($fp)
	sub $t0, $t0, $t1
	sw $t0, -3004($fp)
	lw $t0, -2992($fp)
	lw $t1, -3004($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3008($fp)
	li $t0, 49189
	sw $t0, -3012($fp)
	li $t0, 0
	sw $t0, -3016($fp)
	lw $t0, -500($fp)
	sw $t0, -3020($fp)
	lw $t1, -3020($fp)
	li $t2, 0
	bne $t1, $t2, label675
	j label674
label674:
	li $t0, 1
	sw $t0, -3016($fp)
label675:
	lw $t0, -3012($fp)
	lw $t1, -3016($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3024($fp)
	li $t0, 0
	lw $t1, -3024($fp)
	sub $t0, $t0, $t1
	sw $t0, -3028($fp)
	lw $t0, -3008($fp)
	lw $t1, -3028($fp)
	add $t0, $t0, $t1
	sw $t0, -3032($fp)
label671:
	j label658
label657:
	li $t0, 0
	sw $t0, -3036($fp)
	addi $t0, $fp, -96
	sw $t0, -3040($fp)
	lw $t0, -2708($fp)
	sw $t0, -3044($fp)
	li $t0, 4
	lw $t1, -3044($fp)
	mul $t0, $t0, $t1
	sw $t0, -3048($fp)
	lw $t0, -3048($fp)
	lw $t1, -3040($fp)
	add $t0, $t0, $t1
	sw $t0, -3052($fp)
	lw $t0, -3052($fp)
	lw $t1, 0($t0)
	sw $t1, -3056($fp)
	li $t0, 52134
	sw $t0, -3060($fp)
	lw $t0, -3056($fp)
	lw $t1, -3060($fp)
	mul $t0, $t0, $t1
	sw $t0, -3064($fp)
	lw $t0, 12($fp)
	sw $t0, -3068($fp)
	li $t0, 45131
	sw $t0, -3072($fp)
	lw $t0, -3068($fp)
	lw $t1, -3072($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3076($fp)
	lw $t0, -3064($fp)
	lw $t1, -3076($fp)
	add $t0, $t0, $t1
	sw $t0, -3080($fp)
	lw $t1, -3080($fp)
	li $t2, 0
	bne $t1, $t2, label676
	j label679
label679:
	li $t0, 18325
	sw $t0, -3084($fp)
	lw $t1, -3084($fp)
	li $t2, 0
	bne $t1, $t2, label676
	j label678
label678:
	li $t0, 11569
	sw $t0, -3088($fp)
	li $t0, 0
	lw $t1, -3088($fp)
	sub $t0, $t0, $t1
	sw $t0, -3092($fp)
	lw $t1, -3092($fp)
	li $t2, 0
	bne $t1, $t2, label677
	j label680
label680:
	li $t0, 17342
	sw $t0, -3096($fp)
	lw $t0, -572($fp)
	sw $t0, -3100($fp)
	lw $t0, -3096($fp)
	lw $t1, -3100($fp)
	mul $t0, $t0, $t1
	sw $t0, -3104($fp)
	lw $t1, -3104($fp)
	li $t2, 0
	bne $t1, $t2, label676
	j label677
label676:
	li $t0, 1
	sw $t0, -3036($fp)
label677:
label658:
	lw $t0, -1040($fp)
	sw $t0, -3108($fp)
	li $t0, 63162
	sw $t0, -3112($fp)
	lw $t0, -1040($fp)
	sw $t0, -3116($fp)
	lw $t0, -3112($fp)
	lw $t1, -3116($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3120($fp)
	lw $t0, -3108($fp)
	lw $t1, -3120($fp)
	add $t0, $t0, $t1
	sw $t0, -3124($fp)
	li $t0, 4455
	sw $t0, -3128($fp)
	li $t0, 357
	sw $t0, -3132($fp)
	lw $t0, -3128($fp)
	lw $t1, -3132($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3136($fp)
	lw $t0, -3124($fp)
	lw $t1, -3136($fp)
	add $t0, $t0, $t1
	sw $t0, -3140($fp)
	lw $t1, -3140($fp)
	li $t2, 0
	bne $t1, $t2, label684
	j label682
label684:
	addi $t0, $fp, -44
	sw $t0, -3144($fp)
	li $t0, 0
	sw $t0, -3148($fp)
	li $t0, 14281
	sw $t0, -3152($fp)
	li $t0, 33377
	sw $t0, -3156($fp)
	lw $t1, -3152($fp)
	lw $t2, -3156($fp)
	bge $t1, $t2, label685
	j label686
label685:
	li $t0, 1
	sw $t0, -3148($fp)
label686:
	li $t0, 4
	lw $t1, -3148($fp)
	mul $t0, $t0, $t1
	sw $t0, -3160($fp)
	lw $t0, -3160($fp)
	lw $t1, -3144($fp)
	add $t0, $t0, $t1
	sw $t0, -3164($fp)
	lw $t0, -3164($fp)
	lw $t1, 0($t0)
	sw $t1, -3168($fp)
	lw $t1, -3168($fp)
	li $t2, 0
	bne $t1, $t2, label681
	j label682
label681:
label687:
	li $t0, 21204
	sw $t0, -3172($fp)
	lw $t0, -548($fp)
	sw $t0, -3176($fp)
	lw $t0, -3172($fp)
	lw $t1, -3176($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3180($fp)
	lw $t1, -3180($fp)
	li $t2, 0
	bne $t1, $t2, label688
	j label689
label688:
	addi $t0, $fp, -96
	sw $t0, -3184($fp)
	addi $t0, $fp, -36
	sw $t0, -3188($fp)
	li $t0, 0
	sw $t0, -3192($fp)
	lw $t0, -440($fp)
	sw $t0, -3196($fp)
	lw $t1, -3196($fp)
	li $t2, 0
	bne $t1, $t2, label690
	j label692
label692:
	li $t0, 38163
	sw $t0, -3200($fp)
	lw $t1, -3200($fp)
	li $t2, 0
	bne $t1, $t2, label690
	j label691
label690:
	li $t0, 1
	sw $t0, -3192($fp)
label691:
	li $t0, 4
	lw $t1, -3192($fp)
	mul $t0, $t0, $t1
	sw $t0, -3204($fp)
	lw $t0, -3204($fp)
	lw $t1, -3188($fp)
	add $t0, $t0, $t1
	sw $t0, -3208($fp)
	lw $t0, -3208($fp)
	lw $t1, 0($t0)
	sw $t1, -3212($fp)
	li $t0, 4
	lw $t1, -3212($fp)
	mul $t0, $t0, $t1
	sw $t0, -3216($fp)
	lw $t0, -3216($fp)
	lw $t1, -3184($fp)
	add $t0, $t0, $t1
	sw $t0, -3220($fp)
	lw $t0, -3220($fp)
	lw $t1, 0($t0)
	sw $t1, -3224($fp)
	j label687
label689:
label682:
	addi $t0, $fp, -36
	sw $t0, -3228($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -3248($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -3268($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -3288($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -3308($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -3328($fp)
	li $t0, 5
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
	addi $t0, $fp, -36
	sw $t0, -3348($fp)
	li $t0, 6
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
	addi $t0, $fp, -36
	sw $t0, -3368($fp)
	li $t0, 7
	sw $t0, -3372($fp)
	li $t0, 4
	lw $t1, -3372($fp)
	mul $t0, $t0, $t1
	sw $t0, -3376($fp)
	lw $t0, -3376($fp)
	lw $t1, -3368($fp)
	add $t0, $t0, $t1
	sw $t0, -3380($fp)
	lw $t0, -3380($fp)
	lw $t1, 0($t0)
	sw $t1, -3384($fp)
	lw $t0, -3384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -308($fp)
	sw $t0, -3388($fp)
	lw $t0, -3388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -320($fp)
	sw $t0, -3392($fp)
	lw $t0, -3392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -332($fp)
	sw $t0, -3396($fp)
	lw $t0, -3396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -344($fp)
	sw $t0, -3400($fp)
	lw $t0, -3400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -356($fp)
	sw $t0, -3404($fp)
	lw $t0, -3404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3408($fp)
	li $t0, 0
	sw $t0, -3412($fp)
	li $t0, 4
	lw $t1, -3412($fp)
	mul $t0, $t0, $t1
	sw $t0, -3416($fp)
	lw $t0, -3416($fp)
	lw $t1, -3408($fp)
	add $t0, $t0, $t1
	sw $t0, -3420($fp)
	lw $t0, -3420($fp)
	lw $t1, 0($t0)
	sw $t1, -3424($fp)
	lw $t0, -3424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3428($fp)
	li $t0, 1
	sw $t0, -3432($fp)
	li $t0, 4
	lw $t1, -3432($fp)
	mul $t0, $t0, $t1
	sw $t0, -3436($fp)
	lw $t0, -3436($fp)
	lw $t1, -3428($fp)
	add $t0, $t0, $t1
	sw $t0, -3440($fp)
	lw $t0, -3440($fp)
	lw $t1, 0($t0)
	sw $t1, -3444($fp)
	lw $t0, -3444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -416($fp)
	sw $t0, -3448($fp)
	lw $t0, -3448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -428($fp)
	sw $t0, -3452($fp)
	lw $t0, -3452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -440($fp)
	sw $t0, -3456($fp)
	lw $t0, -3456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -452($fp)
	sw $t0, -3460($fp)
	lw $t0, -3460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -464($fp)
	sw $t0, -3464($fp)
	lw $t0, -3464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -476($fp)
	sw $t0, -3468($fp)
	lw $t0, -3468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -488($fp)
	sw $t0, -3472($fp)
	lw $t0, -3472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -500($fp)
	sw $t0, -3476($fp)
	lw $t0, -3476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -512($fp)
	sw $t0, -3480($fp)
	lw $t0, -3480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -524($fp)
	sw $t0, -3484($fp)
	lw $t0, -3484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -536($fp)
	sw $t0, -3488($fp)
	lw $t0, -3488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -548($fp)
	sw $t0, -3492($fp)
	lw $t0, -3492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -3496($fp)
	lw $t0, -3496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	sw $t0, -3500($fp)
	lw $t0, -3500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -584($fp)
	sw $t0, -3504($fp)
	lw $t0, -3504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -596($fp)
	sw $t0, -3508($fp)
	lw $t0, -3508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -608($fp)
	sw $t0, -3512($fp)
	lw $t0, -3512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -620($fp)
	sw $t0, -3516($fp)
	lw $t0, -3516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -632($fp)
	sw $t0, -3520($fp)
	lw $t0, -3520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -644($fp)
	sw $t0, -3524($fp)
	lw $t0, -3524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -656($fp)
	sw $t0, -3528($fp)
	lw $t0, -3528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -3532($fp)
	li $t0, 0
	sw $t0, -3536($fp)
	li $t0, 4
	lw $t1, -3536($fp)
	mul $t0, $t0, $t1
	sw $t0, -3540($fp)
	lw $t0, -3540($fp)
	lw $t1, -3532($fp)
	add $t0, $t0, $t1
	sw $t0, -3544($fp)
	lw $t0, -3544($fp)
	lw $t1, 0($t0)
	sw $t1, -3548($fp)
	lw $t0, -3548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -3552($fp)
	li $t0, 1
	sw $t0, -3556($fp)
	li $t0, 4
	lw $t1, -3556($fp)
	mul $t0, $t0, $t1
	sw $t0, -3560($fp)
	lw $t0, -3560($fp)
	lw $t1, -3552($fp)
	add $t0, $t0, $t1
	sw $t0, -3564($fp)
	lw $t0, -3564($fp)
	lw $t1, 0($t0)
	sw $t1, -3568($fp)
	lw $t0, -3568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -3572($fp)
	li $t0, 2
	sw $t0, -3576($fp)
	li $t0, 4
	lw $t1, -3576($fp)
	mul $t0, $t0, $t1
	sw $t0, -3580($fp)
	lw $t0, -3580($fp)
	lw $t1, -3572($fp)
	add $t0, $t0, $t1
	sw $t0, -3584($fp)
	lw $t0, -3584($fp)
	lw $t1, 0($t0)
	sw $t1, -3588($fp)
	lw $t0, -3588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -740($fp)
	sw $t0, -3592($fp)
	lw $t0, -3592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -752($fp)
	sw $t0, -3596($fp)
	lw $t0, -3596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -764($fp)
	sw $t0, -3600($fp)
	lw $t0, -3600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -3604($fp)
	li $t0, 0
	sw $t0, -3608($fp)
	li $t0, 4
	lw $t1, -3608($fp)
	mul $t0, $t0, $t1
	sw $t0, -3612($fp)
	lw $t0, -3612($fp)
	lw $t1, -3604($fp)
	add $t0, $t0, $t1
	sw $t0, -3616($fp)
	lw $t0, -3616($fp)
	lw $t1, 0($t0)
	sw $t1, -3620($fp)
	lw $t0, -3620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -3624($fp)
	li $t0, 1
	sw $t0, -3628($fp)
	li $t0, 4
	lw $t1, -3628($fp)
	mul $t0, $t0, $t1
	sw $t0, -3632($fp)
	lw $t0, -3632($fp)
	lw $t1, -3624($fp)
	add $t0, $t0, $t1
	sw $t0, -3636($fp)
	lw $t0, -3636($fp)
	lw $t1, 0($t0)
	sw $t1, -3640($fp)
	lw $t0, -3640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -3644($fp)
	li $t0, 2
	sw $t0, -3648($fp)
	li $t0, 4
	lw $t1, -3648($fp)
	mul $t0, $t0, $t1
	sw $t0, -3652($fp)
	lw $t0, -3652($fp)
	lw $t1, -3644($fp)
	add $t0, $t0, $t1
	sw $t0, -3656($fp)
	lw $t0, -3656($fp)
	lw $t1, 0($t0)
	sw $t1, -3660($fp)
	lw $t0, -3660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -3664($fp)
	li $t0, 3
	sw $t0, -3668($fp)
	li $t0, 4
	lw $t1, -3668($fp)
	mul $t0, $t0, $t1
	sw $t0, -3672($fp)
	lw $t0, -3672($fp)
	lw $t1, -3664($fp)
	add $t0, $t0, $t1
	sw $t0, -3676($fp)
	lw $t0, -3676($fp)
	lw $t1, 0($t0)
	sw $t1, -3680($fp)
	lw $t0, -3680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -3684($fp)
	li $t0, 4
	sw $t0, -3688($fp)
	li $t0, 4
	lw $t1, -3688($fp)
	mul $t0, $t0, $t1
	sw $t0, -3692($fp)
	lw $t0, -3692($fp)
	lw $t1, -3684($fp)
	add $t0, $t0, $t1
	sw $t0, -3696($fp)
	lw $t0, -3696($fp)
	lw $t1, 0($t0)
	sw $t1, -3700($fp)
	lw $t0, -3700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -3704($fp)
	li $t0, 5
	sw $t0, -3708($fp)
	li $t0, 4
	lw $t1, -3708($fp)
	mul $t0, $t0, $t1
	sw $t0, -3712($fp)
	lw $t0, -3712($fp)
	lw $t1, -3704($fp)
	add $t0, $t0, $t1
	sw $t0, -3716($fp)
	lw $t0, -3716($fp)
	lw $t1, 0($t0)
	sw $t1, -3720($fp)
	lw $t0, -3720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -3724($fp)
	li $t0, 6
	sw $t0, -3728($fp)
	li $t0, 4
	lw $t1, -3728($fp)
	mul $t0, $t0, $t1
	sw $t0, -3732($fp)
	lw $t0, -3732($fp)
	lw $t1, -3724($fp)
	add $t0, $t0, $t1
	sw $t0, -3736($fp)
	lw $t0, -3736($fp)
	lw $t1, 0($t0)
	sw $t1, -3740($fp)
	lw $t0, -3740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -3744($fp)
	li $t0, 7
	sw $t0, -3748($fp)
	li $t0, 4
	lw $t1, -3748($fp)
	mul $t0, $t0, $t1
	sw $t0, -3752($fp)
	lw $t0, -3752($fp)
	lw $t1, -3744($fp)
	add $t0, $t0, $t1
	sw $t0, -3756($fp)
	lw $t0, -3756($fp)
	lw $t1, 0($t0)
	sw $t1, -3760($fp)
	lw $t0, -3760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -3764($fp)
	li $t0, 8
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
	addi $t0, $fp, -96
	sw $t0, -3784($fp)
	li $t0, 9
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
	lw $t0, -1016($fp)
	sw $t0, -3804($fp)
	lw $t0, -3804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1028($fp)
	sw $t0, -3808($fp)
	lw $t0, -3808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1040($fp)
	sw $t0, -3812($fp)
	lw $t0, -3812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1052($fp)
	sw $t0, -3816($fp)
	lw $t0, -3816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1064($fp)
	sw $t0, -3820($fp)
	lw $t0, -3820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1076($fp)
	sw $t0, -3824($fp)
	lw $t0, -3824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -3828($fp)
	li $t0, 0
	sw $t0, -3832($fp)
	li $t0, 4
	lw $t1, -3832($fp)
	mul $t0, $t0, $t1
	sw $t0, -3836($fp)
	lw $t0, -3836($fp)
	lw $t1, -3828($fp)
	add $t0, $t0, $t1
	sw $t0, -3840($fp)
	lw $t0, -3840($fp)
	lw $t1, 0($t0)
	sw $t1, -3844($fp)
	lw $t0, -3844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -3848($fp)
	li $t0, 1
	sw $t0, -3852($fp)
	li $t0, 4
	lw $t1, -3852($fp)
	mul $t0, $t0, $t1
	sw $t0, -3856($fp)
	lw $t0, -3856($fp)
	lw $t1, -3848($fp)
	add $t0, $t0, $t1
	sw $t0, -3860($fp)
	lw $t0, -3860($fp)
	lw $t1, 0($t0)
	sw $t1, -3864($fp)
	lw $t0, -3864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -3868($fp)
	li $t0, 2
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
	lw $t0, -3884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3888($fp)
	lw $t0, -596($fp)
	sw $t0, -3892($fp)
	lw $t1, -3892($fp)
	li $t2, 0
	bne $t1, $t2, label694
	j label693
label693:
	li $t0, 1
	sw $t0, -3888($fp)
label694:
	lw $ra, -4($fp)
	lw $v0, -3888($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4672
	li $t0, 55589
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	li $t0, 61605
	sw $t0, -160($fp)
	addi $t0, $fp, -16
	sw $t0, -164($fp)
	li $t0, 0
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -172($fp)
	lw $t0, -164($fp)
	lw $t1, -172($fp)
	add $t0, $t0, $t1
	sw $t0, -176($fp)
	lw $t0, -160($fp)
	lw $t1, -176($fp)
	sw $t0, 0($t1)
	lw $t0, -176($fp)
	lw $t1, 0($t0)
	sw $t1, -180($fp)
	li $t0, 15852
	sw $t0, -184($fp)
	addi $t0, $fp, -16
	sw $t0, -188($fp)
	li $t0, 1
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -196($fp)
	lw $t0, -188($fp)
	lw $t1, -196($fp)
	add $t0, $t0, $t1
	sw $t0, -200($fp)
	lw $t0, -184($fp)
	lw $t1, -200($fp)
	sw $t0, 0($t1)
	lw $t0, -200($fp)
	lw $t1, 0($t0)
	sw $t1, -204($fp)
	li $t0, 43721
	sw $t0, -208($fp)
	addi $t0, $fp, -16
	sw $t0, -212($fp)
	li $t0, 2
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -220($fp)
	lw $t0, -212($fp)
	lw $t1, -220($fp)
	add $t0, $t0, $t1
	sw $t0, -224($fp)
	lw $t0, -208($fp)
	lw $t1, -224($fp)
	sw $t0, 0($t1)
	lw $t0, -224($fp)
	lw $t1, 0($t0)
	sw $t1, -228($fp)
	li $t0, 5865
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	li $t0, 54268
	sw $t0, -244($fp)
	addi $t0, $fp, -56
	sw $t0, -248($fp)
	li $t0, 0
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -256($fp)
	lw $t0, -248($fp)
	lw $t1, -256($fp)
	add $t0, $t0, $t1
	sw $t0, -260($fp)
	lw $t0, -244($fp)
	lw $t1, -260($fp)
	sw $t0, 0($t1)
	lw $t0, -260($fp)
	lw $t1, 0($t0)
	sw $t1, -264($fp)
	li $t0, 4016
	sw $t0, -268($fp)
	addi $t0, $fp, -56
	sw $t0, -272($fp)
	li $t0, 1
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -280($fp)
	lw $t0, -272($fp)
	lw $t1, -280($fp)
	add $t0, $t0, $t1
	sw $t0, -284($fp)
	lw $t0, -268($fp)
	lw $t1, -284($fp)
	sw $t0, 0($t1)
	lw $t0, -284($fp)
	lw $t1, 0($t0)
	sw $t1, -288($fp)
	li $t0, 64219
	sw $t0, -292($fp)
	addi $t0, $fp, -56
	sw $t0, -296($fp)
	li $t0, 2
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -304($fp)
	lw $t0, -296($fp)
	lw $t1, -304($fp)
	add $t0, $t0, $t1
	sw $t0, -308($fp)
	lw $t0, -292($fp)
	lw $t1, -308($fp)
	sw $t0, 0($t1)
	lw $t0, -308($fp)
	lw $t1, 0($t0)
	sw $t1, -312($fp)
	li $t0, 18836
	sw $t0, -316($fp)
	addi $t0, $fp, -56
	sw $t0, -320($fp)
	li $t0, 3
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -328($fp)
	lw $t0, -320($fp)
	lw $t1, -328($fp)
	add $t0, $t0, $t1
	sw $t0, -332($fp)
	lw $t0, -316($fp)
	lw $t1, -332($fp)
	sw $t0, 0($t1)
	lw $t0, -332($fp)
	lw $t1, 0($t0)
	sw $t1, -336($fp)
	li $t0, 3096
	sw $t0, -340($fp)
	addi $t0, $fp, -56
	sw $t0, -344($fp)
	li $t0, 4
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -352($fp)
	lw $t0, -344($fp)
	lw $t1, -352($fp)
	add $t0, $t0, $t1
	sw $t0, -356($fp)
	lw $t0, -340($fp)
	lw $t1, -356($fp)
	sw $t0, 0($t1)
	lw $t0, -356($fp)
	lw $t1, 0($t0)
	sw $t1, -360($fp)
	li $t0, 30126
	sw $t0, -364($fp)
	addi $t0, $fp, -56
	sw $t0, -368($fp)
	li $t0, 5
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -376($fp)
	lw $t0, -368($fp)
	lw $t1, -376($fp)
	add $t0, $t0, $t1
	sw $t0, -380($fp)
	lw $t0, -364($fp)
	lw $t1, -380($fp)
	sw $t0, 0($t1)
	lw $t0, -380($fp)
	lw $t1, 0($t0)
	sw $t1, -384($fp)
	li $t0, 14939
	sw $t0, -388($fp)
	addi $t0, $fp, -56
	sw $t0, -392($fp)
	li $t0, 6
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -400($fp)
	lw $t0, -392($fp)
	lw $t1, -400($fp)
	add $t0, $t0, $t1
	sw $t0, -404($fp)
	lw $t0, -388($fp)
	lw $t1, -404($fp)
	sw $t0, 0($t1)
	lw $t0, -404($fp)
	lw $t1, 0($t0)
	sw $t1, -408($fp)
	li $t0, 20617
	sw $t0, -412($fp)
	addi $t0, $fp, -56
	sw $t0, -416($fp)
	li $t0, 7
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -424($fp)
	lw $t0, -416($fp)
	lw $t1, -424($fp)
	add $t0, $t0, $t1
	sw $t0, -428($fp)
	lw $t0, -412($fp)
	lw $t1, -428($fp)
	sw $t0, 0($t1)
	lw $t0, -428($fp)
	lw $t1, 0($t0)
	sw $t1, -432($fp)
	li $t0, 19124
	sw $t0, -436($fp)
	addi $t0, $fp, -56
	sw $t0, -440($fp)
	li $t0, 8
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -448($fp)
	lw $t0, -440($fp)
	lw $t1, -448($fp)
	add $t0, $t0, $t1
	sw $t0, -452($fp)
	lw $t0, -436($fp)
	lw $t1, -452($fp)
	sw $t0, 0($t1)
	lw $t0, -452($fp)
	lw $t1, 0($t0)
	sw $t1, -456($fp)
	li $t0, 38191
	sw $t0, -460($fp)
	addi $t0, $fp, -56
	sw $t0, -464($fp)
	li $t0, 9
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -472($fp)
	lw $t0, -464($fp)
	lw $t1, -472($fp)
	add $t0, $t0, $t1
	sw $t0, -476($fp)
	lw $t0, -460($fp)
	lw $t1, -476($fp)
	sw $t0, 0($t1)
	lw $t0, -476($fp)
	lw $t1, 0($t0)
	sw $t1, -480($fp)
	li $t0, 64161
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	li $t0, 48573
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	li $t0, 25838
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	li $t0, 47814
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	li $t0, 35171
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	li $t0, 5433
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	li $t0, 603
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	li $t0, 46740
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	li $t0, 22775
	sw $t0, -580($fp)
	addi $t0, $fp, -92
	sw $t0, -584($fp)
	li $t0, 0
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
	li $t0, 63765
	sw $t0, -604($fp)
	addi $t0, $fp, -92
	sw $t0, -608($fp)
	li $t0, 1
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -616($fp)
	lw $t0, -608($fp)
	lw $t1, -616($fp)
	add $t0, $t0, $t1
	sw $t0, -620($fp)
	lw $t0, -604($fp)
	lw $t1, -620($fp)
	sw $t0, 0($t1)
	lw $t0, -620($fp)
	lw $t1, 0($t0)
	sw $t1, -624($fp)
	li $t0, 51195
	sw $t0, -628($fp)
	addi $t0, $fp, -92
	sw $t0, -632($fp)
	li $t0, 2
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -640($fp)
	lw $t0, -632($fp)
	lw $t1, -640($fp)
	add $t0, $t0, $t1
	sw $t0, -644($fp)
	lw $t0, -628($fp)
	lw $t1, -644($fp)
	sw $t0, 0($t1)
	lw $t0, -644($fp)
	lw $t1, 0($t0)
	sw $t1, -648($fp)
	li $t0, 23133
	sw $t0, -652($fp)
	addi $t0, $fp, -92
	sw $t0, -656($fp)
	li $t0, 3
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -664($fp)
	lw $t0, -656($fp)
	lw $t1, -664($fp)
	add $t0, $t0, $t1
	sw $t0, -668($fp)
	lw $t0, -652($fp)
	lw $t1, -668($fp)
	sw $t0, 0($t1)
	lw $t0, -668($fp)
	lw $t1, 0($t0)
	sw $t1, -672($fp)
	li $t0, 12511
	sw $t0, -676($fp)
	addi $t0, $fp, -92
	sw $t0, -680($fp)
	li $t0, 4
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -688($fp)
	lw $t0, -680($fp)
	lw $t1, -688($fp)
	add $t0, $t0, $t1
	sw $t0, -692($fp)
	lw $t0, -676($fp)
	lw $t1, -692($fp)
	sw $t0, 0($t1)
	lw $t0, -692($fp)
	lw $t1, 0($t0)
	sw $t1, -696($fp)
	li $t0, 19037
	sw $t0, -700($fp)
	addi $t0, $fp, -92
	sw $t0, -704($fp)
	li $t0, 5
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -712($fp)
	lw $t0, -704($fp)
	lw $t1, -712($fp)
	add $t0, $t0, $t1
	sw $t0, -716($fp)
	lw $t0, -700($fp)
	lw $t1, -716($fp)
	sw $t0, 0($t1)
	lw $t0, -716($fp)
	lw $t1, 0($t0)
	sw $t1, -720($fp)
	li $t0, 44337
	sw $t0, -724($fp)
	addi $t0, $fp, -92
	sw $t0, -728($fp)
	li $t0, 6
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -736($fp)
	lw $t0, -728($fp)
	lw $t1, -736($fp)
	add $t0, $t0, $t1
	sw $t0, -740($fp)
	lw $t0, -724($fp)
	lw $t1, -740($fp)
	sw $t0, 0($t1)
	lw $t0, -740($fp)
	lw $t1, 0($t0)
	sw $t1, -744($fp)
	li $t0, 50674
	sw $t0, -748($fp)
	addi $t0, $fp, -92
	sw $t0, -752($fp)
	li $t0, 7
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -760($fp)
	lw $t0, -752($fp)
	lw $t1, -760($fp)
	add $t0, $t0, $t1
	sw $t0, -764($fp)
	lw $t0, -748($fp)
	lw $t1, -764($fp)
	sw $t0, 0($t1)
	lw $t0, -764($fp)
	lw $t1, 0($t0)
	sw $t1, -768($fp)
	li $t0, 9090
	sw $t0, -772($fp)
	addi $t0, $fp, -92
	sw $t0, -776($fp)
	li $t0, 8
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -784($fp)
	lw $t0, -776($fp)
	lw $t1, -784($fp)
	add $t0, $t0, $t1
	sw $t0, -788($fp)
	lw $t0, -772($fp)
	lw $t1, -788($fp)
	sw $t0, 0($t1)
	lw $t0, -788($fp)
	lw $t1, 0($t0)
	sw $t1, -792($fp)
	li $t0, 40406
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	sw $t0, -804($fp)
	li $t0, 990
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	sw $t0, -816($fp)
	li $t0, 52811
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -828($fp)
	li $t0, 46271
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -840($fp)
	li $t0, 55259
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -852($fp)
	li $t0, 56827
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -864($fp)
	li $t0, 44954
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	sw $t0, -876($fp)
	li $t0, 8559
	sw $t0, -880($fp)
	addi $t0, $fp, -116
	sw $t0, -884($fp)
	li $t0, 0
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -892($fp)
	lw $t0, -884($fp)
	lw $t1, -892($fp)
	add $t0, $t0, $t1
	sw $t0, -896($fp)
	lw $t0, -880($fp)
	lw $t1, -896($fp)
	sw $t0, 0($t1)
	lw $t0, -896($fp)
	lw $t1, 0($t0)
	sw $t1, -900($fp)
	li $t0, 59924
	sw $t0, -904($fp)
	addi $t0, $fp, -116
	sw $t0, -908($fp)
	li $t0, 1
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -916($fp)
	lw $t0, -908($fp)
	lw $t1, -916($fp)
	add $t0, $t0, $t1
	sw $t0, -920($fp)
	lw $t0, -904($fp)
	lw $t1, -920($fp)
	sw $t0, 0($t1)
	lw $t0, -920($fp)
	lw $t1, 0($t0)
	sw $t1, -924($fp)
	li $t0, 9544
	sw $t0, -928($fp)
	addi $t0, $fp, -116
	sw $t0, -932($fp)
	li $t0, 2
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -940($fp)
	lw $t0, -932($fp)
	lw $t1, -940($fp)
	add $t0, $t0, $t1
	sw $t0, -944($fp)
	lw $t0, -928($fp)
	lw $t1, -944($fp)
	sw $t0, 0($t1)
	lw $t0, -944($fp)
	lw $t1, 0($t0)
	sw $t1, -948($fp)
	li $t0, 23498
	sw $t0, -952($fp)
	addi $t0, $fp, -116
	sw $t0, -956($fp)
	li $t0, 3
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -964($fp)
	lw $t0, -956($fp)
	lw $t1, -964($fp)
	add $t0, $t0, $t1
	sw $t0, -968($fp)
	lw $t0, -952($fp)
	lw $t1, -968($fp)
	sw $t0, 0($t1)
	lw $t0, -968($fp)
	lw $t1, 0($t0)
	sw $t1, -972($fp)
	li $t0, 15005
	sw $t0, -976($fp)
	addi $t0, $fp, -116
	sw $t0, -980($fp)
	li $t0, 4
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -988($fp)
	lw $t0, -980($fp)
	lw $t1, -988($fp)
	add $t0, $t0, $t1
	sw $t0, -992($fp)
	lw $t0, -976($fp)
	lw $t1, -992($fp)
	sw $t0, 0($t1)
	lw $t0, -992($fp)
	lw $t1, 0($t0)
	sw $t1, -996($fp)
	li $t0, 28668
	sw $t0, -1000($fp)
	addi $t0, $fp, -116
	sw $t0, -1004($fp)
	li $t0, 5
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1012($fp)
	lw $t0, -1004($fp)
	lw $t1, -1012($fp)
	add $t0, $t0, $t1
	sw $t0, -1016($fp)
	lw $t0, -1000($fp)
	lw $t1, -1016($fp)
	sw $t0, 0($t1)
	lw $t0, -1016($fp)
	lw $t1, 0($t0)
	sw $t1, -1020($fp)
	li $t0, 61689
	sw $t0, -1024($fp)
	addi $t0, $fp, -144
	sw $t0, -1028($fp)
	li $t0, 0
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1036($fp)
	lw $t0, -1028($fp)
	lw $t1, -1036($fp)
	add $t0, $t0, $t1
	sw $t0, -1040($fp)
	lw $t0, -1024($fp)
	lw $t1, -1040($fp)
	sw $t0, 0($t1)
	lw $t0, -1040($fp)
	lw $t1, 0($t0)
	sw $t1, -1044($fp)
	li $t0, 13630
	sw $t0, -1048($fp)
	addi $t0, $fp, -144
	sw $t0, -1052($fp)
	li $t0, 1
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1060($fp)
	lw $t0, -1052($fp)
	lw $t1, -1060($fp)
	add $t0, $t0, $t1
	sw $t0, -1064($fp)
	lw $t0, -1048($fp)
	lw $t1, -1064($fp)
	sw $t0, 0($t1)
	lw $t0, -1064($fp)
	lw $t1, 0($t0)
	sw $t1, -1068($fp)
	li $t0, 11706
	sw $t0, -1072($fp)
	addi $t0, $fp, -144
	sw $t0, -1076($fp)
	li $t0, 2
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1084($fp)
	lw $t0, -1076($fp)
	lw $t1, -1084($fp)
	add $t0, $t0, $t1
	sw $t0, -1088($fp)
	lw $t0, -1072($fp)
	lw $t1, -1088($fp)
	sw $t0, 0($t1)
	lw $t0, -1088($fp)
	lw $t1, 0($t0)
	sw $t1, -1092($fp)
	li $t0, 21991
	sw $t0, -1096($fp)
	addi $t0, $fp, -144
	sw $t0, -1100($fp)
	li $t0, 3
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1108($fp)
	lw $t0, -1100($fp)
	lw $t1, -1108($fp)
	add $t0, $t0, $t1
	sw $t0, -1112($fp)
	lw $t0, -1096($fp)
	lw $t1, -1112($fp)
	sw $t0, 0($t1)
	lw $t0, -1112($fp)
	lw $t1, 0($t0)
	sw $t1, -1116($fp)
	li $t0, 61445
	sw $t0, -1120($fp)
	addi $t0, $fp, -144
	sw $t0, -1124($fp)
	li $t0, 4
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1132($fp)
	lw $t0, -1124($fp)
	lw $t1, -1132($fp)
	add $t0, $t0, $t1
	sw $t0, -1136($fp)
	lw $t0, -1120($fp)
	lw $t1, -1136($fp)
	sw $t0, 0($t1)
	lw $t0, -1136($fp)
	lw $t1, 0($t0)
	sw $t1, -1140($fp)
	li $t0, 46877
	sw $t0, -1144($fp)
	addi $t0, $fp, -144
	sw $t0, -1148($fp)
	li $t0, 5
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1156($fp)
	lw $t0, -1148($fp)
	lw $t1, -1156($fp)
	add $t0, $t0, $t1
	sw $t0, -1160($fp)
	lw $t0, -1144($fp)
	lw $t1, -1160($fp)
	sw $t0, 0($t1)
	lw $t0, -1160($fp)
	lw $t1, 0($t0)
	sw $t1, -1164($fp)
	li $t0, 27425
	sw $t0, -1168($fp)
	addi $t0, $fp, -144
	sw $t0, -1172($fp)
	li $t0, 6
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1180($fp)
	lw $t0, -1172($fp)
	lw $t1, -1180($fp)
	add $t0, $t0, $t1
	sw $t0, -1184($fp)
	lw $t0, -1168($fp)
	lw $t1, -1184($fp)
	sw $t0, 0($t1)
	lw $t0, -1184($fp)
	lw $t1, 0($t0)
	sw $t1, -1188($fp)
	li $t0, 62048
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -1200($fp)
	li $t0, 28082
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1288($fp)
	li $t0, 50200
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	sw $t0, -1300($fp)
	li $t0, 60278
	sw $t0, -1304($fp)
	addi $t0, $fp, -1240
	sw $t0, -1308($fp)
	li $t0, 0
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1316($fp)
	lw $t0, -1308($fp)
	lw $t1, -1316($fp)
	add $t0, $t0, $t1
	sw $t0, -1320($fp)
	lw $t0, -1304($fp)
	lw $t1, -1320($fp)
	sw $t0, 0($t1)
	lw $t0, -1320($fp)
	lw $t1, 0($t0)
	sw $t1, -1324($fp)
	li $t0, 13741
	sw $t0, -1328($fp)
	addi $t0, $fp, -1240
	sw $t0, -1332($fp)
	li $t0, 1
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1340($fp)
	lw $t0, -1332($fp)
	lw $t1, -1340($fp)
	add $t0, $t0, $t1
	sw $t0, -1344($fp)
	lw $t0, -1328($fp)
	lw $t1, -1344($fp)
	sw $t0, 0($t1)
	lw $t0, -1344($fp)
	lw $t1, 0($t0)
	sw $t1, -1348($fp)
	li $t0, 7797
	sw $t0, -1352($fp)
	addi $t0, $fp, -1240
	sw $t0, -1356($fp)
	li $t0, 2
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1364($fp)
	lw $t0, -1356($fp)
	lw $t1, -1364($fp)
	add $t0, $t0, $t1
	sw $t0, -1368($fp)
	lw $t0, -1352($fp)
	lw $t1, -1368($fp)
	sw $t0, 0($t1)
	lw $t0, -1368($fp)
	lw $t1, 0($t0)
	sw $t1, -1372($fp)
	li $t0, 7253
	sw $t0, -1376($fp)
	addi $t0, $fp, -1240
	sw $t0, -1380($fp)
	li $t0, 3
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1388($fp)
	lw $t0, -1380($fp)
	lw $t1, -1388($fp)
	add $t0, $t0, $t1
	sw $t0, -1392($fp)
	lw $t0, -1376($fp)
	lw $t1, -1392($fp)
	sw $t0, 0($t1)
	lw $t0, -1392($fp)
	lw $t1, 0($t0)
	sw $t1, -1396($fp)
	li $t0, 32778
	sw $t0, -1400($fp)
	addi $t0, $fp, -1240
	sw $t0, -1404($fp)
	li $t0, 4
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1412($fp)
	lw $t0, -1404($fp)
	lw $t1, -1412($fp)
	add $t0, $t0, $t1
	sw $t0, -1416($fp)
	lw $t0, -1400($fp)
	lw $t1, -1416($fp)
	sw $t0, 0($t1)
	lw $t0, -1416($fp)
	lw $t1, 0($t0)
	sw $t1, -1420($fp)
	li $t0, 52135
	sw $t0, -1424($fp)
	addi $t0, $fp, -1240
	sw $t0, -1428($fp)
	li $t0, 5
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1436($fp)
	lw $t0, -1428($fp)
	lw $t1, -1436($fp)
	add $t0, $t0, $t1
	sw $t0, -1440($fp)
	lw $t0, -1424($fp)
	lw $t1, -1440($fp)
	sw $t0, 0($t1)
	lw $t0, -1440($fp)
	lw $t1, 0($t0)
	sw $t1, -1444($fp)
	li $t0, 57927
	sw $t0, -1448($fp)
	addi $t0, $fp, -1240
	sw $t0, -1452($fp)
	li $t0, 6
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
	li $t0, 41869
	sw $t0, -1472($fp)
	addi $t0, $fp, -1240
	sw $t0, -1476($fp)
	li $t0, 7
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
	li $t0, 27005
	sw $t0, -1496($fp)
	addi $t0, $fp, -1240
	sw $t0, -1500($fp)
	li $t0, 8
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
	li $t0, 58917
	sw $t0, -1520($fp)
	addi $t0, $fp, -1240
	sw $t0, -1524($fp)
	li $t0, 9
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
	li $t0, 29144
	sw $t0, -1544($fp)
	addi $t0, $fp, -1276
	sw $t0, -1548($fp)
	li $t0, 0
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
	li $t0, 7741
	sw $t0, -1568($fp)
	addi $t0, $fp, -1276
	sw $t0, -1572($fp)
	li $t0, 1
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
	li $t0, 48640
	sw $t0, -1592($fp)
	addi $t0, $fp, -1276
	sw $t0, -1596($fp)
	li $t0, 2
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
	li $t0, 20436
	sw $t0, -1616($fp)
	addi $t0, $fp, -1276
	sw $t0, -1620($fp)
	li $t0, 3
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
	li $t0, 52695
	sw $t0, -1640($fp)
	addi $t0, $fp, -1276
	sw $t0, -1644($fp)
	li $t0, 4
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
	li $t0, 57200
	sw $t0, -1664($fp)
	addi $t0, $fp, -1276
	sw $t0, -1668($fp)
	li $t0, 5
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1676($fp)
	lw $t0, -1668($fp)
	lw $t1, -1676($fp)
	add $t0, $t0, $t1
	sw $t0, -1680($fp)
	lw $t0, -1664($fp)
	lw $t1, -1680($fp)
	sw $t0, 0($t1)
	lw $t0, -1680($fp)
	lw $t1, 0($t0)
	sw $t1, -1684($fp)
	li $t0, 14824
	sw $t0, -1688($fp)
	addi $t0, $fp, -1276
	sw $t0, -1692($fp)
	li $t0, 6
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1700($fp)
	lw $t0, -1692($fp)
	lw $t1, -1700($fp)
	add $t0, $t0, $t1
	sw $t0, -1704($fp)
	lw $t0, -1688($fp)
	lw $t1, -1704($fp)
	sw $t0, 0($t1)
	lw $t0, -1704($fp)
	lw $t1, 0($t0)
	sw $t1, -1708($fp)
	li $t0, 62240
	sw $t0, -1712($fp)
	addi $t0, $fp, -1276
	sw $t0, -1716($fp)
	li $t0, 7
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1724($fp)
	lw $t0, -1716($fp)
	lw $t1, -1724($fp)
	add $t0, $t0, $t1
	sw $t0, -1728($fp)
	lw $t0, -1712($fp)
	lw $t1, -1728($fp)
	sw $t0, 0($t1)
	lw $t0, -1728($fp)
	lw $t1, 0($t0)
	sw $t1, -1732($fp)
	li $t0, 15162
	sw $t0, -1736($fp)
	addi $t0, $fp, -1276
	sw $t0, -1740($fp)
	li $t0, 8
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1748($fp)
	lw $t0, -1740($fp)
	lw $t1, -1748($fp)
	add $t0, $t0, $t1
	sw $t0, -1752($fp)
	lw $t0, -1736($fp)
	lw $t1, -1752($fp)
	sw $t0, 0($t1)
	lw $t0, -1752($fp)
	lw $t1, 0($t0)
	sw $t1, -1756($fp)
	lw $t0, -536($fp)
	sw $t0, -1760($fp)
	lw $t0, 4($fp)
	sw $t0, -1764($fp)
	lw $t0, -1760($fp)
	lw $t1, -1764($fp)
	mul $t0, $t0, $t1
	sw $t0, -1768($fp)
	li $t0, 25372
	sw $t0, -1772($fp)
	lw $t0, -1768($fp)
	lw $t1, -1772($fp)
	sub $t0, $t0, $t1
	sw $t0, -1776($fp)
	li $t0, 0
	sw $t0, -1780($fp)
	li $t0, 0
	sw $t0, -1784($fp)
	lw $t0, -872($fp)
	sw $t0, -1788($fp)
	lw $t1, -1788($fp)
	li $t2, 0
	bne $t1, $t2, label701
	j label700
label700:
	li $t0, 1
	sw $t0, -1784($fp)
label701:
	li $t0, 29829
	sw $t0, -1792($fp)
	lw $t1, -1784($fp)
	lw $t2, -1792($fp)
	blt $t1, $t2, label698
	j label699
label698:
	li $t0, 1
	sw $t0, -1780($fp)
label699:
	addi $sp, $sp, -4
	lw $t0, -1776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1780($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1796($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -1800($fp)
	lw $t0, -1284($fp)
	sw $t0, -1804($fp)
	li $t0, 0
	lw $t1, -1804($fp)
	sub $t0, $t0, $t1
	sw $t0, -1808($fp)
	lw $t1, -1808($fp)
	li $t2, 0
	bne $t1, $t2, label703
	j label702
label702:
	li $t0, 1
	sw $t0, -1800($fp)
label703:
	lw $t0, -1796($fp)
	lw $t1, -1800($fp)
	mul $t0, $t0, $t1
	sw $t0, -1812($fp)
	li $t0, 0
	sw $t0, -1816($fp)
	lw $t0, -848($fp)
	sw $t0, -1820($fp)
	lw $t0, -860($fp)
	sw $t0, -1824($fp)
	lw $t0, -1820($fp)
	lw $t1, -1824($fp)
	mul $t0, $t0, $t1
	sw $t0, -1828($fp)
	li $t0, 11316
	sw $t0, -1832($fp)
	lw $t1, -1828($fp)
	lw $t2, -1832($fp)
	bne $t1, $t2, label704
	j label705
label704:
	li $t0, 1
	sw $t0, -1816($fp)
label705:
	addi $sp, $sp, -4
	lw $t0, -1816($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1836($fp)
	addi $sp, $sp, 8
	lw $t1, -1812($fp)
	lw $t2, -1836($fp)
	beq $t1, $t2, label695
	j label696
label695:
	li $t0, 0
	sw $t0, -1840($fp)
	li $t0, 43460
	sw $t0, -1844($fp)
	addi $t0, $fp, -1276
	sw $t0, -1848($fp)
	li $t0, 7
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
	lw $t0, -812($fp)
	sw $t0, -1868($fp)
	li $t0, 0
	sw $t0, -1872($fp)
	li $t0, 37078
	sw $t0, -1876($fp)
	lw $t1, -1876($fp)
	li $t2, 0
	bne $t1, $t2, label710
	j label709
label710:
	lw $t0, -572($fp)
	sw $t0, -1880($fp)
	lw $t1, -1880($fp)
	li $t2, 0
	bne $t1, $t2, label708
	j label709
label708:
	li $t0, 1
	sw $t0, -1872($fp)
label709:
	addi $sp, $sp, -4
	lw $t0, -1864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1872($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1884($fp)
	addi $sp, $sp, 16
	lw $t1, -1844($fp)
	lw $t2, -1884($fp)
	beq $t1, $t2, label706
	j label707
label706:
	li $t0, 1
	sw $t0, -1840($fp)
label707:
	j label697
label696:
	lw $t0, -812($fp)
	sw $t0, -1888($fp)
	li $t0, 18420
	sw $t0, -1892($fp)
	lw $t1, -1888($fp)
	lw $t2, -1892($fp)
	bgt $t1, $t2, label714
	j label712
label714:
	li $t0, 0
	sw $t0, -1896($fp)
	li $t0, 60732
	sw $t0, -1900($fp)
	lw $t0, -512($fp)
	sw $t0, -1904($fp)
	lw $t1, -1900($fp)
	lw $t2, -1904($fp)
	beq $t1, $t2, label715
	j label716
label715:
	li $t0, 1
	sw $t0, -1896($fp)
label716:
	li $t0, 0
	sw $t0, -1908($fp)
	lw $t0, -812($fp)
	sw $t0, -1912($fp)
	lw $t1, -1912($fp)
	li $t2, 0
	bne $t1, $t2, label718
	j label717
label717:
	li $t0, 1
	sw $t0, -1908($fp)
label718:
	lw $t1, -1896($fp)
	lw $t2, -1908($fp)
	beq $t1, $t2, label711
	j label712
label711:
	li $t0, 35881
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	sw $t0, -1920($fp)
	lw $t0, -1920($fp)
	sw $t0, -1924($fp)
	li $t0, 46502
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	sw $t0, -1932($fp)
	lw $t0, -1932($fp)
	sw $t0, -1936($fp)
	li $t0, 0
	sw $t0, -1940($fp)
	li $t0, 0
	sw $t0, -1944($fp)
	li $t0, 53194
	sw $t0, -1948($fp)
	lw $t1, -1948($fp)
	li $t2, 0
	bne $t1, $t2, label722
	j label721
label721:
	li $t0, 1
	sw $t0, -1944($fp)
label722:
	lw $t0, -1196($fp)
	sw $t0, -1952($fp)
	lw $t1, -1944($fp)
	lw $t2, -1952($fp)
	blt $t1, $t2, label719
	j label720
label719:
	li $t0, 1
	sw $t0, -1940($fp)
label720:
	lw $t0, -872($fp)
	sw $t0, -1956($fp)
	li $t0, 60243
	sw $t0, -1960($fp)
	lw $t0, -1956($fp)
	lw $t1, -1960($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1964($fp)
	lw $t0, -1920($fp)
	sw $t0, -1968($fp)
	lw $t0, -1964($fp)
	lw $t1, -1968($fp)
	mul $t0, $t0, $t1
	sw $t0, -1972($fp)
	li $t0, 0
	sw $t0, -1976($fp)
	lw $t0, -860($fp)
	sw $t0, -1980($fp)
	lw $t0, -824($fp)
	sw $t0, -1984($fp)
	lw $t0, -1980($fp)
	lw $t1, -1984($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1988($fp)
	li $t0, 30623
	sw $t0, -1992($fp)
	lw $t1, -1988($fp)
	lw $t2, -1992($fp)
	bne $t1, $t2, label723
	j label724
label723:
	li $t0, 1
	sw $t0, -1976($fp)
label724:
	li $t0, 0
	sw $t0, -1996($fp)
	li $t0, 0
	sw $t0, -2000($fp)
	lw $t0, -860($fp)
	sw $t0, -2004($fp)
	lw $t1, -2004($fp)
	li $t2, 0
	bne $t1, $t2, label728
	j label727
label727:
	li $t0, 1
	sw $t0, -2000($fp)
label728:
	lw $t0, -860($fp)
	sw $t0, -2008($fp)
	lw $t1, -2000($fp)
	lw $t2, -2008($fp)
	ble $t1, $t2, label725
	j label726
label725:
	li $t0, 1
	sw $t0, -1996($fp)
label726:
	li $t0, 45397
	sw $t0, -2012($fp)
	lw $t0, -1932($fp)
	sw $t0, -2016($fp)
	lw $t0, -2012($fp)
	lw $t1, -2016($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2020($fp)
	addi $sp, $sp, -4
	lw $t0, -1940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2020($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2024($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -1240
	sw $t0, -2028($fp)
	li $t0, 5
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
	lw $t0, -2024($fp)
	lw $t1, -2044($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2048($fp)
	li $t0, 0
	sw $t0, -2052($fp)
	li $t0, 30267
	sw $t0, -2056($fp)
	lw $t0, -512($fp)
	sw $t0, -2060($fp)
	lw $t0, -2056($fp)
	lw $t1, -2060($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2064($fp)
	li $t0, 3819
	sw $t0, -2068($fp)
	lw $t0, -2064($fp)
	lw $t1, -2068($fp)
	mul $t0, $t0, $t1
	sw $t0, -2072($fp)
	li $t0, 1263
	sw $t0, -2076($fp)
	lw $t0, -2072($fp)
	lw $t1, -2076($fp)
	mul $t0, $t0, $t1
	sw $t0, -2080($fp)
	li $t0, 23649
	sw $t0, -2084($fp)
	lw $t1, -2080($fp)
	lw $t2, -2084($fp)
	beq $t1, $t2, label729
	j label731
label731:
	lw $t0, -1196($fp)
	sw $t0, -2088($fp)
	lw $t1, -2088($fp)
	li $t2, 0
	bne $t1, $t2, label729
	j label730
label729:
	li $t0, 1
	sw $t0, -2052($fp)
label730:
	li $t0, 0
	sw $t0, -2092($fp)
	li $t0, 32963
	sw $t0, -2096($fp)
	li $t0, 9004
	sw $t0, -2100($fp)
	li $t0, 6753
	sw $t0, -2104($fp)
	lw $t0, -2100($fp)
	lw $t1, -2104($fp)
	sub $t0, $t0, $t1
	sw $t0, -2108($fp)
	addi $t0, $fp, -56
	sw $t0, -2112($fp)
	li $t0, 9
	sw $t0, -2116($fp)
	li $t0, 4
	lw $t1, -2116($fp)
	mul $t0, $t0, $t1
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	lw $t1, -2112($fp)
	add $t0, $t0, $t1
	sw $t0, -2124($fp)
	lw $t0, -2124($fp)
	lw $t1, 0($t0)
	sw $t1, -2128($fp)
	lw $t0, -2108($fp)
	lw $t1, -2128($fp)
	sub $t0, $t0, $t1
	sw $t0, -2132($fp)
	lw $t1, -2096($fp)
	lw $t2, -2132($fp)
	bge $t1, $t2, label732
	j label733
label732:
	li $t0, 1
	sw $t0, -2092($fp)
label733:
	li $t0, 0
	sw $t0, -2136($fp)
	li $t0, 0
	sw $t0, -2140($fp)
	li $t0, 0
	sw $t0, -2144($fp)
	li $t0, 63953
	sw $t0, -2148($fp)
	li $t0, 2687
	sw $t0, -2152($fp)
	lw $t0, -2148($fp)
	lw $t1, -2152($fp)
	sub $t0, $t0, $t1
	sw $t0, -2156($fp)
	li $t0, 58403
	sw $t0, -2160($fp)
	lw $t0, -872($fp)
	sw $t0, -2164($fp)
	lw $t0, -2160($fp)
	lw $t1, -2164($fp)
	sub $t0, $t0, $t1
	sw $t0, -2168($fp)
	lw $t1, -2156($fp)
	lw $t2, -2168($fp)
	bgt $t1, $t2, label738
	j label739
label738:
	li $t0, 1
	sw $t0, -2144($fp)
label739:
	li $t0, 13580
	sw $t0, -2172($fp)
	lw $t0, -1920($fp)
	sw $t0, -2176($fp)
	lw $t0, -2172($fp)
	lw $t1, -2176($fp)
	add $t0, $t0, $t1
	sw $t0, -2180($fp)
	lw $t1, -2144($fp)
	lw $t2, -2180($fp)
	ble $t1, $t2, label736
	j label737
label736:
	li $t0, 1
	sw $t0, -2140($fp)
label737:
	lw $t0, -560($fp)
	sw $t0, -2184($fp)
	lw $t1, -2140($fp)
	lw $t2, -2184($fp)
	bge $t1, $t2, label734
	j label735
label734:
	li $t0, 1
	sw $t0, -2136($fp)
label735:
	j label713
label712:
	addi $t0, $fp, -92
	sw $t0, -2188($fp)
	li $t0, 32517
	sw $t0, -2192($fp)
	addi $t0, $fp, -1240
	sw $t0, -2196($fp)
	li $t0, 6
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
	lw $t0, -2192($fp)
	lw $t1, -2212($fp)
	sub $t0, $t0, $t1
	sw $t0, -2216($fp)
	li $t0, 4
	lw $t1, -2216($fp)
	mul $t0, $t0, $t1
	sw $t0, -2220($fp)
	lw $t0, -2220($fp)
	lw $t1, -2188($fp)
	add $t0, $t0, $t1
	sw $t0, -2224($fp)
	lw $t0, -2224($fp)
	lw $t1, 0($t0)
	sw $t1, -2228($fp)
	lw $t1, -2228($fp)
	li $t2, 0
	bne $t1, $t2, label740
	j label741
label740:
	li $t0, 10441
	sw $t0, -2232($fp)
	lw $t0, -2232($fp)
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	sw $t0, -2236($fp)
	li $t0, 0
	sw $t0, -2240($fp)
	li $t0, 55318
	sw $t0, -2244($fp)
	lw $t1, -2244($fp)
	li $t2, 0
	bne $t1, $t2, label744
	j label743
label743:
	li $t0, 1
	sw $t0, -2240($fp)
label744:
	j label742
label741:
	addi $t0, $fp, -56
	sw $t0, -2248($fp)
	addi $t0, $fp, -92
	sw $t0, -2252($fp)
	addi $t0, $fp, -1240
	sw $t0, -2256($fp)
	lw $t0, -1296($fp)
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
	li $t0, 4
	lw $t1, -2272($fp)
	mul $t0, $t0, $t1
	sw $t0, -2276($fp)
	lw $t0, -2276($fp)
	lw $t1, -2252($fp)
	add $t0, $t0, $t1
	sw $t0, -2280($fp)
	lw $t0, -2280($fp)
	lw $t1, 0($t0)
	sw $t1, -2284($fp)
	li $t0, 4
	lw $t1, -2284($fp)
	mul $t0, $t0, $t1
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	lw $t1, -2248($fp)
	add $t0, $t0, $t1
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	lw $t1, 0($t0)
	sw $t1, -2296($fp)
label742:
label713:
label697:
	li $t0, 0
	sw $t0, -2300($fp)
	lw $t0, -824($fp)
	sw $t0, -2304($fp)
	lw $t1, -2304($fp)
	li $t2, 0
	bne $t1, $t2, label747
	j label746
label747:
	lw $t0, -548($fp)
	sw $t0, -2308($fp)
	lw $t1, -2308($fp)
	li $t2, 0
	bne $t1, $t2, label745
	j label746
label745:
	li $t0, 1
	sw $t0, -2300($fp)
label746:
	lw $t0, -2300($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -2312($fp)
	lw $t0, -2312($fp)
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -2316($fp)
	li $t0, 0
	sw $t0, -2320($fp)
	li $t0, 0
	sw $t0, -2324($fp)
	li $t0, 0
	sw $t0, -2328($fp)
	li $t0, 0
	sw $t0, -2332($fp)
	lw $t0, -524($fp)
	sw $t0, -2336($fp)
	lw $t1, -2336($fp)
	li $t2, 0
	bne $t1, $t2, label754
	j label755
label754:
	li $t0, 1
	sw $t0, -2332($fp)
label755:
	li $t0, 0
	sw $t0, -2340($fp)
	li $t0, 58203
	sw $t0, -2344($fp)
	li $t0, 49810
	sw $t0, -2348($fp)
	lw $t1, -2344($fp)
	lw $t2, -2348($fp)
	bgt $t1, $t2, label756
	j label757
label756:
	li $t0, 1
	sw $t0, -2340($fp)
label757:
	lw $t1, -2332($fp)
	lw $t2, -2340($fp)
	bne $t1, $t2, label752
	j label753
label752:
	li $t0, 1
	sw $t0, -2328($fp)
label753:
	li $t0, 0
	sw $t0, -2352($fp)
	addi $t0, $fp, -144
	sw $t0, -2356($fp)
	li $t0, 0
	sw $t0, -2360($fp)
	li $t0, 4
	lw $t1, -2360($fp)
	mul $t0, $t0, $t1
	sw $t0, -2364($fp)
	lw $t0, -2364($fp)
	lw $t1, -2356($fp)
	add $t0, $t0, $t1
	sw $t0, -2368($fp)
	lw $t0, -2368($fp)
	lw $t1, 0($t0)
	sw $t1, -2372($fp)
	lw $t1, -2372($fp)
	li $t2, 0
	bne $t1, $t2, label759
	j label758
label758:
	li $t0, 1
	sw $t0, -2352($fp)
label759:
	lw $t1, -2328($fp)
	lw $t2, -2352($fp)
	beq $t1, $t2, label750
	j label751
label750:
	li $t0, 1
	sw $t0, -2324($fp)
label751:
	li $t0, 0
	sw $t0, -2376($fp)
	lw $t0, -872($fp)
	sw $t0, -2380($fp)
	lw $t1, -2380($fp)
	li $t2, 0
	bne $t1, $t2, label761
	j label760
label760:
	li $t0, 1
	sw $t0, -2376($fp)
label761:
	lw $t1, -2324($fp)
	lw $t2, -2376($fp)
	beq $t1, $t2, label748
	j label749
label748:
	li $t0, 1
	sw $t0, -2320($fp)
label749:
	lw $ra, -4($fp)
	lw $v0, -2320($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -2384($fp)
	li $t0, 20155
	sw $t0, -2388($fp)
	lw $t1, -2388($fp)
	li $t2, 0
	bne $t1, $t2, label763
	j label762
label762:
	li $t0, 1
	sw $t0, -2384($fp)
label763:
	li $t0, 0
	sw $t0, -2392($fp)
	lw $t0, 4($fp)
	sw $t0, -2396($fp)
	li $t0, 0
	sw $t0, -2400($fp)
	li $t0, 20919
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -2408($fp)
	li $t0, 0
	sw $t0, -2412($fp)
	lw $t0, -872($fp)
	sw $t0, -2416($fp)
	lw $t0, -860($fp)
	sw $t0, -2420($fp)
	lw $t0, -2416($fp)
	lw $t1, -2420($fp)
	add $t0, $t0, $t1
	sw $t0, -2424($fp)
	lw $t1, -2424($fp)
	li $t2, 0
	bne $t1, $t2, label768
	j label770
label770:
	li $t0, 49412
	sw $t0, -2428($fp)
	lw $t1, -2428($fp)
	li $t2, 0
	bne $t1, $t2, label768
	j label769
label768:
	li $t0, 1
	sw $t0, -2412($fp)
label769:
	addi $sp, $sp, -4
	lw $t0, -2412($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -2432($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2436($fp)
	li $t0, 50779
	sw $t0, -2440($fp)
	addi $sp, $sp, -4
	lw $t0, -2440($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -2444($fp)
	addi $sp, $sp, 8
	lw $t1, -2444($fp)
	li $t2, 0
	bne $t1, $t2, label773
	j label772
label773:
	lw $t0, -524($fp)
	sw $t0, -2448($fp)
	lw $t1, -2448($fp)
	li $t2, 0
	bne $t1, $t2, label771
	j label772
label771:
	li $t0, 1
	sw $t0, -2436($fp)
label772:
	addi $sp, $sp, -4
	lw $t0, -2408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2436($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2452($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -2456($fp)
	lw $t0, -560($fp)
	sw $t0, -2460($fp)
	li $t0, 54704
	sw $t0, -2464($fp)
	lw $t0, -2460($fp)
	lw $t1, -2464($fp)
	sub $t0, $t0, $t1
	sw $t0, -2468($fp)
	li $t0, 33261
	sw $t0, -2472($fp)
	lw $t1, -2468($fp)
	lw $t2, -2472($fp)
	ble $t1, $t2, label774
	j label775
label774:
	li $t0, 1
	sw $t0, -2456($fp)
label775:
	lw $t0, -800($fp)
	sw $t0, -2476($fp)
	addi $sp, $sp, -4
	lw $t0, -2452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2476($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2480($fp)
	addi $sp, $sp, 16
	lw $t1, -2480($fp)
	li $t2, 0
	bne $t1, $t2, label767
	j label766
label766:
	li $t0, 1
	sw $t0, -2400($fp)
label767:
	lw $t0, -2396($fp)
	lw $t1, -2400($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2484($fp)
	li $t0, 0
	lw $t1, -2484($fp)
	sub $t0, $t0, $t1
	sw $t0, -2488($fp)
	li $t0, 0
	sw $t0, -2492($fp)
	lw $t0, -848($fp)
	sw $t0, -2496($fp)
	li $t0, 0
	lw $t1, -2496($fp)
	sub $t0, $t0, $t1
	sw $t0, -2500($fp)
	lw $t1, -2500($fp)
	li $t2, 0
	bne $t1, $t2, label777
	j label776
label776:
	li $t0, 1
	sw $t0, -2492($fp)
label777:
	lw $t1, -2488($fp)
	lw $t2, -2492($fp)
	ble $t1, $t2, label764
	j label765
label764:
	li $t0, 1
	sw $t0, -2392($fp)
label765:
	li $t0, 23119
	sw $t0, -2504($fp)
	li $t0, 11362
	sw $t0, -2508($fp)
	lw $t0, -2504($fp)
	lw $t1, -2508($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2512($fp)
	li $t0, 60713
	sw $t0, -2516($fp)
	lw $t0, -236($fp)
	sw $t0, -2520($fp)
	lw $t0, -2516($fp)
	lw $t1, -2520($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2524($fp)
	lw $t0, -536($fp)
	sw $t0, -2528($fp)
	lw $t0, -2524($fp)
	lw $t1, -2528($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2532($fp)
	lw $t0, -2512($fp)
	lw $t1, -2532($fp)
	sub $t0, $t0, $t1
	sw $t0, -2536($fp)
	lw $t0, -812($fp)
	sw $t0, -2540($fp)
	lw $t1, -2536($fp)
	lw $t2, -2540($fp)
	beq $t1, $t2, label778
	j label779
label778:
	li $t0, 0
	sw $t0, -2544($fp)
	li $t0, 0
	sw $t0, -2548($fp)
	lw $t0, -860($fp)
	sw $t0, -2552($fp)
	lw $t1, -2552($fp)
	li $t2, 0
	bne $t1, $t2, label786
	j label785
label785:
	li $t0, 1
	sw $t0, -2548($fp)
label786:
	li $t0, 0
	sw $t0, -2556($fp)
	li $t0, 53387
	sw $t0, -2560($fp)
	lw $t1, -2560($fp)
	li $t2, 0
	bne $t1, $t2, label788
	j label787
label787:
	li $t0, 1
	sw $t0, -2556($fp)
label788:
	lw $t0, -2548($fp)
	lw $t1, -2556($fp)
	mul $t0, $t0, $t1
	sw $t0, -2564($fp)
	lw $t1, -2564($fp)
	li $t2, 0
	bne $t1, $t2, label784
	j label782
label784:
	li $t0, 0
	sw $t0, -2568($fp)
	li $t0, 15181
	sw $t0, -2572($fp)
	lw $t1, -2572($fp)
	li $t2, 0
	bne $t1, $t2, label790
	j label789
label789:
	li $t0, 1
	sw $t0, -2568($fp)
label790:
	li $t0, 61976
	sw $t0, -2576($fp)
	lw $t0, -2568($fp)
	lw $t1, -2576($fp)
	sub $t0, $t0, $t1
	sw $t0, -2580($fp)
	lw $t1, -2580($fp)
	li $t2, 0
	bne $t1, $t2, label783
	j label782
label783:
	addi $t0, $fp, -92
	sw $t0, -2584($fp)
	li $t0, 0
	sw $t0, -2588($fp)
	li $t0, 4
	lw $t1, -2588($fp)
	mul $t0, $t0, $t1
	sw $t0, -2592($fp)
	lw $t0, -2592($fp)
	lw $t1, -2584($fp)
	add $t0, $t0, $t1
	sw $t0, -2596($fp)
	lw $t0, -2596($fp)
	lw $t1, 0($t0)
	sw $t1, -2600($fp)
	li $t0, 0
	lw $t1, -2600($fp)
	sub $t0, $t0, $t1
	sw $t0, -2604($fp)
	lw $t1, -2604($fp)
	li $t2, 0
	bne $t1, $t2, label781
	j label782
label781:
	li $t0, 1
	sw $t0, -2544($fp)
label782:
	lw $ra, -4($fp)
	lw $v0, -2544($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label780
label779:
	li $t0, 38695
	sw $t0, -2608($fp)
	li $t0, 60011
	sw $t0, -2612($fp)
	lw $t0, -2608($fp)
	lw $t1, -2612($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2616($fp)
	li $t0, 0
	sw $t0, -2620($fp)
	li $t0, 1607
	sw $t0, -2624($fp)
	lw $t0, -872($fp)
	sw $t0, -2628($fp)
	lw $t0, -2624($fp)
	lw $t1, -2628($fp)
	mul $t0, $t0, $t1
	sw $t0, -2632($fp)
	li $t0, 16671
	sw $t0, -2636($fp)
	lw $t1, -2632($fp)
	lw $t2, -2636($fp)
	bge $t1, $t2, label795
	j label796
label795:
	li $t0, 1
	sw $t0, -2620($fp)
label796:
	li $t0, 0
	sw $t0, -2640($fp)
	li $t0, 18253
	sw $t0, -2644($fp)
	li $t0, 36008
	sw $t0, -2648($fp)
	lw $t0, -2644($fp)
	lw $t1, -2648($fp)
	mul $t0, $t0, $t1
	sw $t0, -2652($fp)
	lw $t1, -2652($fp)
	li $t2, 0
	bne $t1, $t2, label797
	j label799
label799:
	lw $t0, -512($fp)
	sw $t0, -2656($fp)
	lw $t1, -2656($fp)
	li $t2, 0
	bne $t1, $t2, label797
	j label798
label797:
	li $t0, 1
	sw $t0, -2640($fp)
label798:
	addi $sp, $sp, -4
	lw $t0, -2616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2640($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2660($fp)
	addi $sp, $sp, 16
	li $t0, 30251
	sw $t0, -2664($fp)
	lw $t0, -2660($fp)
	lw $t1, -2664($fp)
	sub $t0, $t0, $t1
	sw $t0, -2668($fp)
	li $t0, 0
	sw $t0, -2672($fp)
	lw $t0, -236($fp)
	sw $t0, -2676($fp)
	lw $t1, -2676($fp)
	li $t2, 0
	bne $t1, $t2, label802
	j label800
label802:
	lw $t0, -560($fp)
	sw $t0, -2680($fp)
	lw $t1, -2680($fp)
	li $t2, 0
	bne $t1, $t2, label800
	j label801
label800:
	li $t0, 1
	sw $t0, -2672($fp)
label801:
	li $t0, 0
	sw $t0, -2684($fp)
	li $t0, 0
	sw $t0, -2688($fp)
	lw $t0, -836($fp)
	sw $t0, -2692($fp)
	lw $t1, -2692($fp)
	li $t2, 0
	bne $t1, $t2, label806
	j label805
label805:
	li $t0, 1
	sw $t0, -2688($fp)
label806:
	li $t0, 5444
	sw $t0, -2696($fp)
	lw $t1, -2688($fp)
	lw $t2, -2696($fp)
	ble $t1, $t2, label803
	j label804
label803:
	li $t0, 1
	sw $t0, -2684($fp)
label804:
	addi $sp, $sp, -4
	lw $t0, -2668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2684($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2700($fp)
	addi $sp, $sp, 16
	lw $t0, -236($fp)
	sw $t0, -2704($fp)
	li $t0, 0
	lw $t1, -2704($fp)
	sub $t0, $t0, $t1
	sw $t0, -2708($fp)
	lw $t0, -512($fp)
	sw $t0, -2712($fp)
	li $t0, 5676
	sw $t0, -2716($fp)
	lw $t0, -2712($fp)
	lw $t1, -2716($fp)
	add $t0, $t0, $t1
	sw $t0, -2720($fp)
	addi $t0, $fp, -56
	sw $t0, -2724($fp)
	lw $t0, -860($fp)
	sw $t0, -2728($fp)
	li $t0, 4
	lw $t1, -2728($fp)
	mul $t0, $t0, $t1
	sw $t0, -2732($fp)
	lw $t0, -2732($fp)
	lw $t1, -2724($fp)
	add $t0, $t0, $t1
	sw $t0, -2736($fp)
	lw $t0, -2736($fp)
	lw $t1, 0($t0)
	sw $t1, -2740($fp)
	addi $sp, $sp, -4
	lw $t0, -2708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2740($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2744($fp)
	addi $sp, $sp, 16
	lw $t0, -2700($fp)
	lw $t1, -2744($fp)
	add $t0, $t0, $t1
	sw $t0, -2748($fp)
	addi $t0, $fp, -116
	sw $t0, -2752($fp)
	li $t0, 3
	sw $t0, -2756($fp)
	li $t0, 4
	lw $t1, -2756($fp)
	mul $t0, $t0, $t1
	sw $t0, -2760($fp)
	lw $t0, -2760($fp)
	lw $t1, -2752($fp)
	add $t0, $t0, $t1
	sw $t0, -2764($fp)
	lw $t0, -2764($fp)
	lw $t1, 0($t0)
	sw $t1, -2768($fp)
	li $t0, 0
	lw $t1, -2768($fp)
	sub $t0, $t0, $t1
	sw $t0, -2772($fp)
	lw $t1, -2748($fp)
	lw $t2, -2772($fp)
	bne $t1, $t2, label791
	j label794
label794:
	li $t0, 16117
	sw $t0, -2776($fp)
	li $t0, 2497
	sw $t0, -2780($fp)
	lw $t0, -2776($fp)
	lw $t1, -2780($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2784($fp)
	li $t0, 0
	lw $t1, -2784($fp)
	sub $t0, $t0, $t1
	sw $t0, -2788($fp)
	li $t0, 47814
	sw $t0, -2792($fp)
	lw $t0, -836($fp)
	sw $t0, -2796($fp)
	lw $t0, -2792($fp)
	lw $t1, -2796($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2800($fp)
	addi $sp, $sp, -4
	lw $t0, -2800($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -2804($fp)
	addi $sp, $sp, 8
	lw $t1, -2788($fp)
	lw $t2, -2804($fp)
	beq $t1, $t2, label791
	j label792
label791:
	li $t0, 0
	sw $t0, -2808($fp)
	addi $t0, $fp, -16
	sw $t0, -2812($fp)
	addi $t0, $fp, -144
	sw $t0, -2816($fp)
	li $t0, 5
	sw $t0, -2820($fp)
	li $t0, 4
	lw $t1, -2820($fp)
	mul $t0, $t0, $t1
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	lw $t1, -2816($fp)
	add $t0, $t0, $t1
	sw $t0, -2828($fp)
	lw $t0, -2828($fp)
	lw $t1, 0($t0)
	sw $t1, -2832($fp)
	li $t0, 4
	lw $t1, -2832($fp)
	mul $t0, $t0, $t1
	sw $t0, -2836($fp)
	lw $t0, -2836($fp)
	lw $t1, -2812($fp)
	add $t0, $t0, $t1
	sw $t0, -2840($fp)
	lw $t0, -2840($fp)
	lw $t1, 0($t0)
	sw $t1, -2844($fp)
	lw $t1, -2844($fp)
	li $t2, 0
	bne $t1, $t2, label808
	j label807
label807:
	li $t0, 1
	sw $t0, -2808($fp)
label808:
	addi $t0, $fp, -56
	sw $t0, -2848($fp)
	li $t0, 7
	sw $t0, -2852($fp)
	li $t0, 4
	lw $t1, -2852($fp)
	mul $t0, $t0, $t1
	sw $t0, -2856($fp)
	lw $t0, -2856($fp)
	lw $t1, -2848($fp)
	add $t0, $t0, $t1
	sw $t0, -2860($fp)
	lw $t0, -2860($fp)
	lw $t1, 0($t0)
	sw $t1, -2864($fp)
	li $t0, 0
	lw $t1, -2864($fp)
	sub $t0, $t0, $t1
	sw $t0, -2868($fp)
	li $t0, 0
	lw $t1, -2868($fp)
	sub $t0, $t0, $t1
	sw $t0, -2872($fp)
	lw $t0, -2808($fp)
	lw $t1, -2872($fp)
	sub $t0, $t0, $t1
	sw $t0, -2876($fp)
	j label793
label792:
label809:
	li $t0, 0
	sw $t0, -2880($fp)
	li $t0, 65404
	sw $t0, -2884($fp)
	lw $t0, -536($fp)
	sw $t0, -2888($fp)
	lw $t0, -512($fp)
	sw $t0, -2892($fp)
	lw $t0, -2888($fp)
	lw $t1, -2892($fp)
	add $t0, $t0, $t1
	sw $t0, -2896($fp)
	lw $t0, -836($fp)
	sw $t0, -2900($fp)
	lw $t0, -2896($fp)
	lw $t1, -2900($fp)
	sub $t0, $t0, $t1
	sw $t0, -2904($fp)
	lw $t1, -2884($fp)
	lw $t2, -2904($fp)
	ble $t1, $t2, label812
	j label813
label812:
	li $t0, 1
	sw $t0, -2880($fp)
label813:
	lw $t0, -488($fp)
	sw $t0, -2908($fp)
	li $t0, 3403
	sw $t0, -2912($fp)
	lw $t0, -2908($fp)
	lw $t1, -2912($fp)
	mul $t0, $t0, $t1
	sw $t0, -2916($fp)
	lw $t0, -548($fp)
	sw $t0, -2920($fp)
	lw $t0, -2916($fp)
	lw $t1, -2920($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2924($fp)
	lw $t1, -2880($fp)
	lw $t2, -2924($fp)
	beq $t1, $t2, label810
	j label811
label810:
	li $t0, 0
	sw $t0, -2928($fp)
	li $t0, 0
	sw $t0, -2932($fp)
	li $t0, 0
	sw $t0, -2936($fp)
	lw $t0, -812($fp)
	sw $t0, -2940($fp)
	li $t0, 5790
	sw $t0, -2944($fp)
	lw $t0, -2940($fp)
	lw $t1, -2944($fp)
	add $t0, $t0, $t1
	sw $t0, -2948($fp)
	lw $t0, -848($fp)
	sw $t0, -2952($fp)
	li $t0, 0
	lw $t1, -2952($fp)
	sub $t0, $t0, $t1
	sw $t0, -2956($fp)
	lw $t1, -2948($fp)
	lw $t2, -2956($fp)
	bne $t1, $t2, label818
	j label819
label818:
	li $t0, 1
	sw $t0, -2936($fp)
label819:
	li $t0, 0
	sw $t0, -2960($fp)
	addi $t0, $fp, -116
	sw $t0, -2964($fp)
	li $t0, 4
	sw $t0, -2968($fp)
	li $t0, 4
	lw $t1, -2968($fp)
	mul $t0, $t0, $t1
	sw $t0, -2972($fp)
	lw $t0, -2972($fp)
	lw $t1, -2964($fp)
	add $t0, $t0, $t1
	sw $t0, -2976($fp)
	lw $t0, -2976($fp)
	lw $t1, 0($t0)
	sw $t1, -2980($fp)
	lw $t1, -2980($fp)
	li $t2, 0
	bne $t1, $t2, label822
	j label821
label822:
	lw $t0, -488($fp)
	sw $t0, -2984($fp)
	lw $t1, -2984($fp)
	li $t2, 0
	bne $t1, $t2, label820
	j label821
label820:
	li $t0, 1
	sw $t0, -2960($fp)
label821:
	li $t0, 0
	sw $t0, -2988($fp)
	lw $t0, -812($fp)
	sw $t0, -2992($fp)
	lw $t1, -2992($fp)
	li $t2, 0
	bne $t1, $t2, label825
	j label824
label825:
	lw $t0, -488($fp)
	sw $t0, -2996($fp)
	lw $t1, -2996($fp)
	li $t2, 0
	bne $t1, $t2, label823
	j label824
label823:
	li $t0, 1
	sw $t0, -2988($fp)
label824:
	addi $t0, $fp, -16
	sw $t0, -3000($fp)
	lw $t0, -524($fp)
	sw $t0, -3004($fp)
	li $t0, 4
	lw $t1, -3004($fp)
	mul $t0, $t0, $t1
	sw $t0, -3008($fp)
	lw $t0, -3008($fp)
	lw $t1, -3000($fp)
	add $t0, $t0, $t1
	sw $t0, -3012($fp)
	lw $t0, -3012($fp)
	lw $t1, 0($t0)
	sw $t1, -3016($fp)
	li $t0, 0
	lw $t1, -3016($fp)
	sub $t0, $t0, $t1
	sw $t0, -3020($fp)
	li $t0, 24323
	sw $t0, -3024($fp)
	lw $t0, -3024($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -3028($fp)
	li $t0, 49280
	sw $t0, -3032($fp)
	addi $sp, $sp, -4
	lw $t0, -2960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3032($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3036($fp)
	addi $sp, $sp, 24
	lw $t1, -2936($fp)
	lw $t2, -3036($fp)
	beq $t1, $t2, label816
	j label817
label816:
	li $t0, 1
	sw $t0, -2932($fp)
label817:
	li $t0, 0
	sw $t0, -3040($fp)
	li $t0, 19500
	sw $t0, -3044($fp)
	lw $t1, -3044($fp)
	li $t2, 0
	bne $t1, $t2, label826
	j label827
label826:
	li $t0, 1
	sw $t0, -3040($fp)
label827:
	li $t0, 0
	sw $t0, -3048($fp)
	lw $t0, -860($fp)
	sw $t0, -3052($fp)
	lw $t1, -3052($fp)
	li $t2, 0
	bne $t1, $t2, label829
	j label828
label828:
	li $t0, 1
	sw $t0, -3048($fp)
label829:
	lw $t0, -3040($fp)
	lw $t1, -3048($fp)
	add $t0, $t0, $t1
	sw $t0, -3056($fp)
	lw $t1, -2932($fp)
	lw $t2, -3056($fp)
	beq $t1, $t2, label814
	j label815
label814:
	li $t0, 1
	sw $t0, -2928($fp)
label815:
	lw $ra, -4($fp)
	lw $v0, -2928($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label809
label811:
label793:
label780:
	lw $t0, -152($fp)
	sw $t0, -3060($fp)
	lw $t0, -3060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -3064($fp)
	li $t0, 0
	sw $t0, -3068($fp)
	li $t0, 4
	lw $t1, -3068($fp)
	mul $t0, $t0, $t1
	sw $t0, -3072($fp)
	lw $t0, -3072($fp)
	lw $t1, -3064($fp)
	add $t0, $t0, $t1
	sw $t0, -3076($fp)
	lw $t0, -3076($fp)
	lw $t1, 0($t0)
	sw $t1, -3080($fp)
	lw $t0, -3080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -3084($fp)
	li $t0, 1
	sw $t0, -3088($fp)
	li $t0, 4
	lw $t1, -3088($fp)
	mul $t0, $t0, $t1
	sw $t0, -3092($fp)
	lw $t0, -3092($fp)
	lw $t1, -3084($fp)
	add $t0, $t0, $t1
	sw $t0, -3096($fp)
	lw $t0, -3096($fp)
	lw $t1, 0($t0)
	sw $t1, -3100($fp)
	lw $t0, -3100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -3104($fp)
	li $t0, 2
	sw $t0, -3108($fp)
	li $t0, 4
	lw $t1, -3108($fp)
	mul $t0, $t0, $t1
	sw $t0, -3112($fp)
	lw $t0, -3112($fp)
	lw $t1, -3104($fp)
	add $t0, $t0, $t1
	sw $t0, -3116($fp)
	lw $t0, -3116($fp)
	lw $t1, 0($t0)
	sw $t1, -3120($fp)
	lw $t0, -3120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -236($fp)
	sw $t0, -3124($fp)
	lw $t0, -3124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -3128($fp)
	li $t0, 0
	sw $t0, -3132($fp)
	li $t0, 4
	lw $t1, -3132($fp)
	mul $t0, $t0, $t1
	sw $t0, -3136($fp)
	lw $t0, -3136($fp)
	lw $t1, -3128($fp)
	add $t0, $t0, $t1
	sw $t0, -3140($fp)
	lw $t0, -3140($fp)
	lw $t1, 0($t0)
	sw $t1, -3144($fp)
	lw $t0, -3144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -3148($fp)
	li $t0, 1
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
	addi $t0, $fp, -56
	sw $t0, -3168($fp)
	li $t0, 2
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
	addi $t0, $fp, -56
	sw $t0, -3188($fp)
	li $t0, 3
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
	addi $t0, $fp, -56
	sw $t0, -3208($fp)
	li $t0, 4
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
	addi $t0, $fp, -56
	sw $t0, -3228($fp)
	li $t0, 5
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
	addi $t0, $fp, -56
	sw $t0, -3248($fp)
	li $t0, 6
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
	addi $t0, $fp, -56
	sw $t0, -3268($fp)
	li $t0, 7
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
	addi $t0, $fp, -56
	sw $t0, -3288($fp)
	li $t0, 8
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
	addi $t0, $fp, -56
	sw $t0, -3308($fp)
	li $t0, 9
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
	lw $t0, -488($fp)
	sw $t0, -3328($fp)
	lw $t0, -3328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -500($fp)
	sw $t0, -3332($fp)
	lw $t0, -3332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -512($fp)
	sw $t0, -3336($fp)
	lw $t0, -3336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -524($fp)
	sw $t0, -3340($fp)
	lw $t0, -3340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -536($fp)
	sw $t0, -3344($fp)
	lw $t0, -3344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -548($fp)
	sw $t0, -3348($fp)
	lw $t0, -3348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -3352($fp)
	lw $t0, -3352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	sw $t0, -3356($fp)
	lw $t0, -3356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -3360($fp)
	li $t0, 0
	sw $t0, -3364($fp)
	li $t0, 4
	lw $t1, -3364($fp)
	mul $t0, $t0, $t1
	sw $t0, -3368($fp)
	lw $t0, -3368($fp)
	lw $t1, -3360($fp)
	add $t0, $t0, $t1
	sw $t0, -3372($fp)
	lw $t0, -3372($fp)
	lw $t1, 0($t0)
	sw $t1, -3376($fp)
	lw $t0, -3376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -3380($fp)
	li $t0, 1
	sw $t0, -3384($fp)
	li $t0, 4
	lw $t1, -3384($fp)
	mul $t0, $t0, $t1
	sw $t0, -3388($fp)
	lw $t0, -3388($fp)
	lw $t1, -3380($fp)
	add $t0, $t0, $t1
	sw $t0, -3392($fp)
	lw $t0, -3392($fp)
	lw $t1, 0($t0)
	sw $t1, -3396($fp)
	lw $t0, -3396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -3400($fp)
	li $t0, 2
	sw $t0, -3404($fp)
	li $t0, 4
	lw $t1, -3404($fp)
	mul $t0, $t0, $t1
	sw $t0, -3408($fp)
	lw $t0, -3408($fp)
	lw $t1, -3400($fp)
	add $t0, $t0, $t1
	sw $t0, -3412($fp)
	lw $t0, -3412($fp)
	lw $t1, 0($t0)
	sw $t1, -3416($fp)
	lw $t0, -3416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -3420($fp)
	li $t0, 3
	sw $t0, -3424($fp)
	li $t0, 4
	lw $t1, -3424($fp)
	mul $t0, $t0, $t1
	sw $t0, -3428($fp)
	lw $t0, -3428($fp)
	lw $t1, -3420($fp)
	add $t0, $t0, $t1
	sw $t0, -3432($fp)
	lw $t0, -3432($fp)
	lw $t1, 0($t0)
	sw $t1, -3436($fp)
	lw $t0, -3436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -3440($fp)
	li $t0, 4
	sw $t0, -3444($fp)
	li $t0, 4
	lw $t1, -3444($fp)
	mul $t0, $t0, $t1
	sw $t0, -3448($fp)
	lw $t0, -3448($fp)
	lw $t1, -3440($fp)
	add $t0, $t0, $t1
	sw $t0, -3452($fp)
	lw $t0, -3452($fp)
	lw $t1, 0($t0)
	sw $t1, -3456($fp)
	lw $t0, -3456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -3460($fp)
	li $t0, 5
	sw $t0, -3464($fp)
	li $t0, 4
	lw $t1, -3464($fp)
	mul $t0, $t0, $t1
	sw $t0, -3468($fp)
	lw $t0, -3468($fp)
	lw $t1, -3460($fp)
	add $t0, $t0, $t1
	sw $t0, -3472($fp)
	lw $t0, -3472($fp)
	lw $t1, 0($t0)
	sw $t1, -3476($fp)
	lw $t0, -3476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -3480($fp)
	li $t0, 6
	sw $t0, -3484($fp)
	li $t0, 4
	lw $t1, -3484($fp)
	mul $t0, $t0, $t1
	sw $t0, -3488($fp)
	lw $t0, -3488($fp)
	lw $t1, -3480($fp)
	add $t0, $t0, $t1
	sw $t0, -3492($fp)
	lw $t0, -3492($fp)
	lw $t1, 0($t0)
	sw $t1, -3496($fp)
	lw $t0, -3496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -3500($fp)
	li $t0, 7
	sw $t0, -3504($fp)
	li $t0, 4
	lw $t1, -3504($fp)
	mul $t0, $t0, $t1
	sw $t0, -3508($fp)
	lw $t0, -3508($fp)
	lw $t1, -3500($fp)
	add $t0, $t0, $t1
	sw $t0, -3512($fp)
	lw $t0, -3512($fp)
	lw $t1, 0($t0)
	sw $t1, -3516($fp)
	lw $t0, -3516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -3520($fp)
	li $t0, 8
	sw $t0, -3524($fp)
	li $t0, 4
	lw $t1, -3524($fp)
	mul $t0, $t0, $t1
	sw $t0, -3528($fp)
	lw $t0, -3528($fp)
	lw $t1, -3520($fp)
	add $t0, $t0, $t1
	sw $t0, -3532($fp)
	lw $t0, -3532($fp)
	lw $t1, 0($t0)
	sw $t1, -3536($fp)
	lw $t0, -3536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -800($fp)
	sw $t0, -3540($fp)
	lw $t0, -3540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -812($fp)
	sw $t0, -3544($fp)
	lw $t0, -3544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -824($fp)
	sw $t0, -3548($fp)
	lw $t0, -3548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -836($fp)
	sw $t0, -3552($fp)
	lw $t0, -3552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -848($fp)
	sw $t0, -3556($fp)
	lw $t0, -3556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -860($fp)
	sw $t0, -3560($fp)
	lw $t0, -3560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -872($fp)
	sw $t0, -3564($fp)
	lw $t0, -3564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -3568($fp)
	li $t0, 0
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
	addi $t0, $fp, -116
	sw $t0, -3588($fp)
	li $t0, 1
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
	addi $t0, $fp, -116
	sw $t0, -3608($fp)
	li $t0, 2
	sw $t0, -3612($fp)
	li $t0, 4
	lw $t1, -3612($fp)
	mul $t0, $t0, $t1
	sw $t0, -3616($fp)
	lw $t0, -3616($fp)
	lw $t1, -3608($fp)
	add $t0, $t0, $t1
	sw $t0, -3620($fp)
	lw $t0, -3620($fp)
	lw $t1, 0($t0)
	sw $t1, -3624($fp)
	lw $t0, -3624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -3628($fp)
	li $t0, 3
	sw $t0, -3632($fp)
	li $t0, 4
	lw $t1, -3632($fp)
	mul $t0, $t0, $t1
	sw $t0, -3636($fp)
	lw $t0, -3636($fp)
	lw $t1, -3628($fp)
	add $t0, $t0, $t1
	sw $t0, -3640($fp)
	lw $t0, -3640($fp)
	lw $t1, 0($t0)
	sw $t1, -3644($fp)
	lw $t0, -3644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -3648($fp)
	li $t0, 4
	sw $t0, -3652($fp)
	li $t0, 4
	lw $t1, -3652($fp)
	mul $t0, $t0, $t1
	sw $t0, -3656($fp)
	lw $t0, -3656($fp)
	lw $t1, -3648($fp)
	add $t0, $t0, $t1
	sw $t0, -3660($fp)
	lw $t0, -3660($fp)
	lw $t1, 0($t0)
	sw $t1, -3664($fp)
	lw $t0, -3664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -3668($fp)
	li $t0, 5
	sw $t0, -3672($fp)
	li $t0, 4
	lw $t1, -3672($fp)
	mul $t0, $t0, $t1
	sw $t0, -3676($fp)
	lw $t0, -3676($fp)
	lw $t1, -3668($fp)
	add $t0, $t0, $t1
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	lw $t1, 0($t0)
	sw $t1, -3684($fp)
	lw $t0, -3684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -3688($fp)
	li $t0, 0
	sw $t0, -3692($fp)
	li $t0, 4
	lw $t1, -3692($fp)
	mul $t0, $t0, $t1
	sw $t0, -3696($fp)
	lw $t0, -3696($fp)
	lw $t1, -3688($fp)
	add $t0, $t0, $t1
	sw $t0, -3700($fp)
	lw $t0, -3700($fp)
	lw $t1, 0($t0)
	sw $t1, -3704($fp)
	lw $t0, -3704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -3708($fp)
	li $t0, 1
	sw $t0, -3712($fp)
	li $t0, 4
	lw $t1, -3712($fp)
	mul $t0, $t0, $t1
	sw $t0, -3716($fp)
	lw $t0, -3716($fp)
	lw $t1, -3708($fp)
	add $t0, $t0, $t1
	sw $t0, -3720($fp)
	lw $t0, -3720($fp)
	lw $t1, 0($t0)
	sw $t1, -3724($fp)
	lw $t0, -3724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -3728($fp)
	li $t0, 2
	sw $t0, -3732($fp)
	li $t0, 4
	lw $t1, -3732($fp)
	mul $t0, $t0, $t1
	sw $t0, -3736($fp)
	lw $t0, -3736($fp)
	lw $t1, -3728($fp)
	add $t0, $t0, $t1
	sw $t0, -3740($fp)
	lw $t0, -3740($fp)
	lw $t1, 0($t0)
	sw $t1, -3744($fp)
	lw $t0, -3744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -3748($fp)
	li $t0, 3
	sw $t0, -3752($fp)
	li $t0, 4
	lw $t1, -3752($fp)
	mul $t0, $t0, $t1
	sw $t0, -3756($fp)
	lw $t0, -3756($fp)
	lw $t1, -3748($fp)
	add $t0, $t0, $t1
	sw $t0, -3760($fp)
	lw $t0, -3760($fp)
	lw $t1, 0($t0)
	sw $t1, -3764($fp)
	lw $t0, -3764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -3768($fp)
	li $t0, 4
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
	lw $t0, -3784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -3788($fp)
	li $t0, 5
	sw $t0, -3792($fp)
	li $t0, 4
	lw $t1, -3792($fp)
	mul $t0, $t0, $t1
	sw $t0, -3796($fp)
	lw $t0, -3796($fp)
	lw $t1, -3788($fp)
	add $t0, $t0, $t1
	sw $t0, -3800($fp)
	lw $t0, -3800($fp)
	lw $t1, 0($t0)
	sw $t1, -3804($fp)
	lw $t0, -3804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -3808($fp)
	li $t0, 6
	sw $t0, -3812($fp)
	li $t0, 4
	lw $t1, -3812($fp)
	mul $t0, $t0, $t1
	sw $t0, -3816($fp)
	lw $t0, -3816($fp)
	lw $t1, -3808($fp)
	add $t0, $t0, $t1
	sw $t0, -3820($fp)
	lw $t0, -3820($fp)
	lw $t1, 0($t0)
	sw $t1, -3824($fp)
	lw $t0, -3824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1196($fp)
	sw $t0, -3828($fp)
	lw $t0, -3828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3832($fp)
	lw $t0, -500($fp)
	sw $t0, -3836($fp)
	lw $t0, -836($fp)
	sw $t0, -3840($fp)
	li $t0, 16760
	sw $t0, -3844($fp)
	lw $t0, -3840($fp)
	lw $t1, -3844($fp)
	mul $t0, $t0, $t1
	sw $t0, -3848($fp)
	lw $t1, -3836($fp)
	lw $t2, -3848($fp)
	bne $t1, $t2, label830
	j label831
label830:
	li $t0, 1
	sw $t0, -3832($fp)
label831:
	lw $t0, -3832($fp)
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -3852($fp)
	lw $ra, -4($fp)
	lw $v0, -3852($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label832:
	li $t0, 10287
	sw $t0, -3856($fp)
	li $t0, 0
	lw $t1, -3856($fp)
	sub $t0, $t0, $t1
	sw $t0, -3860($fp)
	lw $t1, -3860($fp)
	li $t2, 0
	bne $t1, $t2, label833
	j label834
label833:
	li $t0, 0
	sw $t0, -3864($fp)
	lw $t0, -488($fp)
	sw $t0, -3868($fp)
	lw $t0, -152($fp)
	sw $t0, -3872($fp)
	lw $t1, -3868($fp)
	lw $t2, -3872($fp)
	ble $t1, $t2, label835
	j label836
label835:
	li $t0, 1
	sw $t0, -3864($fp)
label836:
	lw $ra, -4($fp)
	lw $v0, -3864($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label832
label834:
	lw $t0, -152($fp)
	sw $t0, -3876($fp)
	lw $t0, -3876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -3880($fp)
	li $t0, 0
	sw $t0, -3884($fp)
	li $t0, 4
	lw $t1, -3884($fp)
	mul $t0, $t0, $t1
	sw $t0, -3888($fp)
	lw $t0, -3888($fp)
	lw $t1, -3880($fp)
	add $t0, $t0, $t1
	sw $t0, -3892($fp)
	lw $t0, -3892($fp)
	lw $t1, 0($t0)
	sw $t1, -3896($fp)
	lw $t0, -3896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -3900($fp)
	li $t0, 1
	sw $t0, -3904($fp)
	li $t0, 4
	lw $t1, -3904($fp)
	mul $t0, $t0, $t1
	sw $t0, -3908($fp)
	lw $t0, -3908($fp)
	lw $t1, -3900($fp)
	add $t0, $t0, $t1
	sw $t0, -3912($fp)
	lw $t0, -3912($fp)
	lw $t1, 0($t0)
	sw $t1, -3916($fp)
	lw $t0, -3916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -3920($fp)
	li $t0, 2
	sw $t0, -3924($fp)
	li $t0, 4
	lw $t1, -3924($fp)
	mul $t0, $t0, $t1
	sw $t0, -3928($fp)
	lw $t0, -3928($fp)
	lw $t1, -3920($fp)
	add $t0, $t0, $t1
	sw $t0, -3932($fp)
	lw $t0, -3932($fp)
	lw $t1, 0($t0)
	sw $t1, -3936($fp)
	lw $t0, -3936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -236($fp)
	sw $t0, -3940($fp)
	lw $t0, -3940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -3944($fp)
	li $t0, 0
	sw $t0, -3948($fp)
	li $t0, 4
	lw $t1, -3948($fp)
	mul $t0, $t0, $t1
	sw $t0, -3952($fp)
	lw $t0, -3952($fp)
	lw $t1, -3944($fp)
	add $t0, $t0, $t1
	sw $t0, -3956($fp)
	lw $t0, -3956($fp)
	lw $t1, 0($t0)
	sw $t1, -3960($fp)
	lw $t0, -3960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -3964($fp)
	li $t0, 1
	sw $t0, -3968($fp)
	li $t0, 4
	lw $t1, -3968($fp)
	mul $t0, $t0, $t1
	sw $t0, -3972($fp)
	lw $t0, -3972($fp)
	lw $t1, -3964($fp)
	add $t0, $t0, $t1
	sw $t0, -3976($fp)
	lw $t0, -3976($fp)
	lw $t1, 0($t0)
	sw $t1, -3980($fp)
	lw $t0, -3980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -3984($fp)
	li $t0, 2
	sw $t0, -3988($fp)
	li $t0, 4
	lw $t1, -3988($fp)
	mul $t0, $t0, $t1
	sw $t0, -3992($fp)
	lw $t0, -3992($fp)
	lw $t1, -3984($fp)
	add $t0, $t0, $t1
	sw $t0, -3996($fp)
	lw $t0, -3996($fp)
	lw $t1, 0($t0)
	sw $t1, -4000($fp)
	lw $t0, -4000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -4004($fp)
	li $t0, 3
	sw $t0, -4008($fp)
	li $t0, 4
	lw $t1, -4008($fp)
	mul $t0, $t0, $t1
	sw $t0, -4012($fp)
	lw $t0, -4012($fp)
	lw $t1, -4004($fp)
	add $t0, $t0, $t1
	sw $t0, -4016($fp)
	lw $t0, -4016($fp)
	lw $t1, 0($t0)
	sw $t1, -4020($fp)
	lw $t0, -4020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -4024($fp)
	li $t0, 4
	sw $t0, -4028($fp)
	li $t0, 4
	lw $t1, -4028($fp)
	mul $t0, $t0, $t1
	sw $t0, -4032($fp)
	lw $t0, -4032($fp)
	lw $t1, -4024($fp)
	add $t0, $t0, $t1
	sw $t0, -4036($fp)
	lw $t0, -4036($fp)
	lw $t1, 0($t0)
	sw $t1, -4040($fp)
	lw $t0, -4040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -4044($fp)
	li $t0, 5
	sw $t0, -4048($fp)
	li $t0, 4
	lw $t1, -4048($fp)
	mul $t0, $t0, $t1
	sw $t0, -4052($fp)
	lw $t0, -4052($fp)
	lw $t1, -4044($fp)
	add $t0, $t0, $t1
	sw $t0, -4056($fp)
	lw $t0, -4056($fp)
	lw $t1, 0($t0)
	sw $t1, -4060($fp)
	lw $t0, -4060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -4064($fp)
	li $t0, 6
	sw $t0, -4068($fp)
	li $t0, 4
	lw $t1, -4068($fp)
	mul $t0, $t0, $t1
	sw $t0, -4072($fp)
	lw $t0, -4072($fp)
	lw $t1, -4064($fp)
	add $t0, $t0, $t1
	sw $t0, -4076($fp)
	lw $t0, -4076($fp)
	lw $t1, 0($t0)
	sw $t1, -4080($fp)
	lw $t0, -4080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -4084($fp)
	li $t0, 7
	sw $t0, -4088($fp)
	li $t0, 4
	lw $t1, -4088($fp)
	mul $t0, $t0, $t1
	sw $t0, -4092($fp)
	lw $t0, -4092($fp)
	lw $t1, -4084($fp)
	add $t0, $t0, $t1
	sw $t0, -4096($fp)
	lw $t0, -4096($fp)
	lw $t1, 0($t0)
	sw $t1, -4100($fp)
	lw $t0, -4100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -4104($fp)
	li $t0, 8
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
	addi $t0, $fp, -56
	sw $t0, -4124($fp)
	li $t0, 9
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
	lw $t0, -488($fp)
	sw $t0, -4144($fp)
	lw $t0, -4144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -500($fp)
	sw $t0, -4148($fp)
	lw $t0, -4148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -512($fp)
	sw $t0, -4152($fp)
	lw $t0, -4152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -524($fp)
	sw $t0, -4156($fp)
	lw $t0, -4156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -536($fp)
	sw $t0, -4160($fp)
	lw $t0, -4160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -548($fp)
	sw $t0, -4164($fp)
	lw $t0, -4164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -4168($fp)
	lw $t0, -4168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	sw $t0, -4172($fp)
	lw $t0, -4172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -4176($fp)
	li $t0, 0
	sw $t0, -4180($fp)
	li $t0, 4
	lw $t1, -4180($fp)
	mul $t0, $t0, $t1
	sw $t0, -4184($fp)
	lw $t0, -4184($fp)
	lw $t1, -4176($fp)
	add $t0, $t0, $t1
	sw $t0, -4188($fp)
	lw $t0, -4188($fp)
	lw $t1, 0($t0)
	sw $t1, -4192($fp)
	lw $t0, -4192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -4196($fp)
	li $t0, 1
	sw $t0, -4200($fp)
	li $t0, 4
	lw $t1, -4200($fp)
	mul $t0, $t0, $t1
	sw $t0, -4204($fp)
	lw $t0, -4204($fp)
	lw $t1, -4196($fp)
	add $t0, $t0, $t1
	sw $t0, -4208($fp)
	lw $t0, -4208($fp)
	lw $t1, 0($t0)
	sw $t1, -4212($fp)
	lw $t0, -4212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -4216($fp)
	li $t0, 2
	sw $t0, -4220($fp)
	li $t0, 4
	lw $t1, -4220($fp)
	mul $t0, $t0, $t1
	sw $t0, -4224($fp)
	lw $t0, -4224($fp)
	lw $t1, -4216($fp)
	add $t0, $t0, $t1
	sw $t0, -4228($fp)
	lw $t0, -4228($fp)
	lw $t1, 0($t0)
	sw $t1, -4232($fp)
	lw $t0, -4232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -4236($fp)
	li $t0, 3
	sw $t0, -4240($fp)
	li $t0, 4
	lw $t1, -4240($fp)
	mul $t0, $t0, $t1
	sw $t0, -4244($fp)
	lw $t0, -4244($fp)
	lw $t1, -4236($fp)
	add $t0, $t0, $t1
	sw $t0, -4248($fp)
	lw $t0, -4248($fp)
	lw $t1, 0($t0)
	sw $t1, -4252($fp)
	lw $t0, -4252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -4256($fp)
	li $t0, 4
	sw $t0, -4260($fp)
	li $t0, 4
	lw $t1, -4260($fp)
	mul $t0, $t0, $t1
	sw $t0, -4264($fp)
	lw $t0, -4264($fp)
	lw $t1, -4256($fp)
	add $t0, $t0, $t1
	sw $t0, -4268($fp)
	lw $t0, -4268($fp)
	lw $t1, 0($t0)
	sw $t1, -4272($fp)
	lw $t0, -4272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -4276($fp)
	li $t0, 5
	sw $t0, -4280($fp)
	li $t0, 4
	lw $t1, -4280($fp)
	mul $t0, $t0, $t1
	sw $t0, -4284($fp)
	lw $t0, -4284($fp)
	lw $t1, -4276($fp)
	add $t0, $t0, $t1
	sw $t0, -4288($fp)
	lw $t0, -4288($fp)
	lw $t1, 0($t0)
	sw $t1, -4292($fp)
	lw $t0, -4292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -4296($fp)
	li $t0, 6
	sw $t0, -4300($fp)
	li $t0, 4
	lw $t1, -4300($fp)
	mul $t0, $t0, $t1
	sw $t0, -4304($fp)
	lw $t0, -4304($fp)
	lw $t1, -4296($fp)
	add $t0, $t0, $t1
	sw $t0, -4308($fp)
	lw $t0, -4308($fp)
	lw $t1, 0($t0)
	sw $t1, -4312($fp)
	lw $t0, -4312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -4316($fp)
	li $t0, 7
	sw $t0, -4320($fp)
	li $t0, 4
	lw $t1, -4320($fp)
	mul $t0, $t0, $t1
	sw $t0, -4324($fp)
	lw $t0, -4324($fp)
	lw $t1, -4316($fp)
	add $t0, $t0, $t1
	sw $t0, -4328($fp)
	lw $t0, -4328($fp)
	lw $t1, 0($t0)
	sw $t1, -4332($fp)
	lw $t0, -4332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -4336($fp)
	li $t0, 8
	sw $t0, -4340($fp)
	li $t0, 4
	lw $t1, -4340($fp)
	mul $t0, $t0, $t1
	sw $t0, -4344($fp)
	lw $t0, -4344($fp)
	lw $t1, -4336($fp)
	add $t0, $t0, $t1
	sw $t0, -4348($fp)
	lw $t0, -4348($fp)
	lw $t1, 0($t0)
	sw $t1, -4352($fp)
	lw $t0, -4352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -800($fp)
	sw $t0, -4356($fp)
	lw $t0, -4356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -812($fp)
	sw $t0, -4360($fp)
	lw $t0, -4360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -824($fp)
	sw $t0, -4364($fp)
	lw $t0, -4364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -836($fp)
	sw $t0, -4368($fp)
	lw $t0, -4368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -848($fp)
	sw $t0, -4372($fp)
	lw $t0, -4372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -860($fp)
	sw $t0, -4376($fp)
	lw $t0, -4376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -872($fp)
	sw $t0, -4380($fp)
	lw $t0, -4380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -4384($fp)
	li $t0, 0
	sw $t0, -4388($fp)
	li $t0, 4
	lw $t1, -4388($fp)
	mul $t0, $t0, $t1
	sw $t0, -4392($fp)
	lw $t0, -4392($fp)
	lw $t1, -4384($fp)
	add $t0, $t0, $t1
	sw $t0, -4396($fp)
	lw $t0, -4396($fp)
	lw $t1, 0($t0)
	sw $t1, -4400($fp)
	lw $t0, -4400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -4404($fp)
	li $t0, 1
	sw $t0, -4408($fp)
	li $t0, 4
	lw $t1, -4408($fp)
	mul $t0, $t0, $t1
	sw $t0, -4412($fp)
	lw $t0, -4412($fp)
	lw $t1, -4404($fp)
	add $t0, $t0, $t1
	sw $t0, -4416($fp)
	lw $t0, -4416($fp)
	lw $t1, 0($t0)
	sw $t1, -4420($fp)
	lw $t0, -4420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -4424($fp)
	li $t0, 2
	sw $t0, -4428($fp)
	li $t0, 4
	lw $t1, -4428($fp)
	mul $t0, $t0, $t1
	sw $t0, -4432($fp)
	lw $t0, -4432($fp)
	lw $t1, -4424($fp)
	add $t0, $t0, $t1
	sw $t0, -4436($fp)
	lw $t0, -4436($fp)
	lw $t1, 0($t0)
	sw $t1, -4440($fp)
	lw $t0, -4440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -4444($fp)
	li $t0, 3
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
	addi $t0, $fp, -116
	sw $t0, -4464($fp)
	li $t0, 4
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
	addi $t0, $fp, -116
	sw $t0, -4484($fp)
	li $t0, 5
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
	addi $t0, $fp, -144
	sw $t0, -4504($fp)
	li $t0, 0
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
	addi $t0, $fp, -144
	sw $t0, -4524($fp)
	li $t0, 1
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
	addi $t0, $fp, -144
	sw $t0, -4544($fp)
	li $t0, 2
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
	addi $t0, $fp, -144
	sw $t0, -4564($fp)
	li $t0, 3
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
	addi $t0, $fp, -144
	sw $t0, -4584($fp)
	li $t0, 4
	sw $t0, -4588($fp)
	li $t0, 4
	lw $t1, -4588($fp)
	mul $t0, $t0, $t1
	sw $t0, -4592($fp)
	lw $t0, -4592($fp)
	lw $t1, -4584($fp)
	add $t0, $t0, $t1
	sw $t0, -4596($fp)
	lw $t0, -4596($fp)
	lw $t1, 0($t0)
	sw $t1, -4600($fp)
	lw $t0, -4600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -4604($fp)
	li $t0, 5
	sw $t0, -4608($fp)
	li $t0, 4
	lw $t1, -4608($fp)
	mul $t0, $t0, $t1
	sw $t0, -4612($fp)
	lw $t0, -4612($fp)
	lw $t1, -4604($fp)
	add $t0, $t0, $t1
	sw $t0, -4616($fp)
	lw $t0, -4616($fp)
	lw $t1, 0($t0)
	sw $t1, -4620($fp)
	lw $t0, -4620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -4624($fp)
	li $t0, 6
	sw $t0, -4628($fp)
	li $t0, 4
	lw $t1, -4628($fp)
	mul $t0, $t0, $t1
	sw $t0, -4632($fp)
	lw $t0, -4632($fp)
	lw $t1, -4624($fp)
	add $t0, $t0, $t1
	sw $t0, -4636($fp)
	lw $t0, -4636($fp)
	lw $t1, 0($t0)
	sw $t1, -4640($fp)
	lw $t0, -4640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1196($fp)
	sw $t0, -4644($fp)
	lw $t0, -4644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4648($fp)
	li $t0, 15940
	sw $t0, -4652($fp)
	li $t0, 0
	lw $t1, -4652($fp)
	sub $t0, $t0, $t1
	sw $t0, -4656($fp)
	li $t0, 0
	sw $t0, -4660($fp)
	li $t0, 28260
	sw $t0, -4664($fp)
	lw $t0, -572($fp)
	sw $t0, -4668($fp)
	lw $t1, -4664($fp)
	lw $t2, -4668($fp)
	ble $t1, $t2, label841
	j label840
label841:
	li $t0, 58432
	sw $t0, -4672($fp)
	lw $t1, -4672($fp)
	li $t2, 0
	bne $t1, $t2, label839
	j label840
label839:
	li $t0, 1
	sw $t0, -4660($fp)
label840:
	addi $sp, $sp, -4
	lw $t0, -4660($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -4676($fp)
	addi $sp, $sp, 8
	lw $t1, -4656($fp)
	lw $t2, -4676($fp)
	beq $t1, $t2, label837
	j label838
label837:
	li $t0, 1
	sw $t0, -4648($fp)
label838:
	lw $ra, -4($fp)
	lw $v0, -4648($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -60
	li $t0, 21384
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 0
	sw $t0, -20($fp)
	li $t0, 28904
	sw $t0, -24($fp)
	lw $t1, -24($fp)
	li $t2, 0
	bne $t1, $t2, label845
	j label844
label845:
	li $t0, 22991
	sw $t0, -28($fp)
	lw $t1, -28($fp)
	li $t2, 0
	bne $t1, $t2, label842
	j label844
label844:
	li $t0, 63185
	sw $t0, -32($fp)
	lw $t1, -32($fp)
	li $t2, 0
	bne $t1, $t2, label842
	j label843
label842:
	li $t0, 1
	sw $t0, -20($fp)
label843:
	lw $t0, -12($fp)
	sw $t0, -36($fp)
	li $t0, 0
	sw $t0, -40($fp)
	li $t0, 0
	sw $t0, -44($fp)
	lw $t0, -12($fp)
	sw $t0, -48($fp)
	lw $t1, -48($fp)
	li $t2, 0
	bne $t1, $t2, label849
	j label848
label848:
	li $t0, 1
	sw $t0, -44($fp)
label849:
	li $t0, 46514
	sw $t0, -52($fp)
	lw $t1, -44($fp)
	lw $t2, -52($fp)
	blt $t1, $t2, label846
	j label847
label846:
	li $t0, 1
	sw $t0, -40($fp)
label847:
	addi $sp, $sp, -4
	lw $t0, -20($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -36($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -40($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -56($fp)
	addi $sp, $sp, 16
	lw $t0, -12($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 2063
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
	addi $sp, $sp, -8
	jal f12
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
