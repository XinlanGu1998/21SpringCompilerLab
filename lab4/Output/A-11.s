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
	addi $sp, $sp, -468
	li $t0, 29757
	sw $t0, -28($fp)
	addi $t0, $fp, -24
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
	li $t0, 15697
	sw $t0, -52($fp)
	addi $t0, $fp, -24
	sw $t0, -56($fp)
	li $t0, 1
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -64($fp)
	lw $t0, -56($fp)
	lw $t1, -64($fp)
	add $t0, $t0, $t1
	sw $t0, -68($fp)
	lw $t0, -52($fp)
	lw $t1, -68($fp)
	sw $t0, 0($t1)
	lw $t0, -68($fp)
	lw $t1, 0($t0)
	sw $t1, -72($fp)
	li $t0, 25507
	sw $t0, -76($fp)
	addi $t0, $fp, -24
	sw $t0, -80($fp)
	li $t0, 2
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -88($fp)
	lw $t0, -80($fp)
	lw $t1, -88($fp)
	add $t0, $t0, $t1
	sw $t0, -92($fp)
	lw $t0, -76($fp)
	lw $t1, -92($fp)
	sw $t0, 0($t1)
	lw $t0, -92($fp)
	lw $t1, 0($t0)
	sw $t1, -96($fp)
	li $t0, 61383
	sw $t0, -100($fp)
	addi $t0, $fp, -24
	sw $t0, -104($fp)
	li $t0, 3
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -112($fp)
	lw $t0, -104($fp)
	lw $t1, -112($fp)
	add $t0, $t0, $t1
	sw $t0, -116($fp)
	lw $t0, -100($fp)
	lw $t1, -116($fp)
	sw $t0, 0($t1)
	lw $t0, -116($fp)
	lw $t1, 0($t0)
	sw $t1, -120($fp)
	li $t0, 56610
	sw $t0, -124($fp)
	addi $t0, $fp, -24
	sw $t0, -128($fp)
	li $t0, 4
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -136($fp)
	lw $t0, -128($fp)
	lw $t1, -136($fp)
	add $t0, $t0, $t1
	sw $t0, -140($fp)
	lw $t0, -124($fp)
	lw $t1, -140($fp)
	sw $t0, 0($t1)
	lw $t0, -140($fp)
	lw $t1, 0($t0)
	sw $t1, -144($fp)
	li $t0, 19360
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	li $t0, 58687
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	li $t0, 0
	sw $t0, -172($fp)
	addi $t0, $fp, -24
	sw $t0, -176($fp)
	li $t0, 0
	sw $t0, -180($fp)
	lw $t0, -152($fp)
	sw $t0, -184($fp)
	lw $t1, -184($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label127
label128:
	li $t0, 21963
	sw $t0, -188($fp)
	lw $t1, -188($fp)
	li $t2, 0
	bne $t1, $t2, label126
	j label127
label126:
	li $t0, 1
	sw $t0, -180($fp)
label127:
	li $t0, 4
	lw $t1, -180($fp)
	mul $t0, $t0, $t1
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	lw $t1, -176($fp)
	add $t0, $t0, $t1
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	lw $t1, 0($t0)
	sw $t1, -200($fp)
	li $t0, 0
	sw $t0, -204($fp)
	lw $t0, -164($fp)
	sw $t0, -208($fp)
	li $t0, 31923
	sw $t0, -212($fp)
	lw $t0, -208($fp)
	lw $t1, -212($fp)
	add $t0, $t0, $t1
	sw $t0, -216($fp)
	lw $t0, 8($fp)
	sw $t0, -220($fp)
	lw $t1, -216($fp)
	lw $t2, -220($fp)
	blt $t1, $t2, label129
	j label130
label129:
	li $t0, 1
	sw $t0, -204($fp)
label130:
	lw $t1, -200($fp)
	lw $t2, -204($fp)
	beq $t1, $t2, label124
	j label125
label124:
	li $t0, 1
	sw $t0, -172($fp)
label125:
	lw $t0, -152($fp)
	sw $t0, -224($fp)
	lw $t1, -172($fp)
	lw $t2, -224($fp)
	beq $t1, $t2, label121
	j label122
label121:
label131:
	li $t0, 0
	sw $t0, -228($fp)
	li $t0, 62379
	sw $t0, -232($fp)
	lw $t1, -232($fp)
	li $t2, 0
	bne $t1, $t2, label135
	j label134
label134:
	li $t0, 1
	sw $t0, -228($fp)
label135:
	li $t0, 0
	sw $t0, -236($fp)
	li $t0, 41139
	sw $t0, -240($fp)
	lw $t1, -240($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label136
label136:
	li $t0, 1
	sw $t0, -236($fp)
label137:
	lw $t0, -228($fp)
	lw $t1, -236($fp)
	sub $t0, $t0, $t1
	sw $t0, -244($fp)
	lw $t1, -244($fp)
	li $t2, 0
	bne $t1, $t2, label132
	j label133
label132:
	addi $t0, $fp, -24
	sw $t0, -248($fp)
	lw $t0, -152($fp)
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -256($fp)
	li $t0, 4
	lw $t1, -256($fp)
	mul $t0, $t0, $t1
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	lw $t1, -248($fp)
	add $t0, $t0, $t1
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	lw $t1, 0($t0)
	sw $t1, -268($fp)
	addi $t0, $fp, -24
	sw $t0, -272($fp)
	addi $t0, $fp, -24
	sw $t0, -276($fp)
	li $t0, 2
	sw $t0, -280($fp)
	li $t0, 4
	lw $t1, -280($fp)
	mul $t0, $t0, $t1
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	lw $t1, -276($fp)
	add $t0, $t0, $t1
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	lw $t1, 0($t0)
	sw $t1, -292($fp)
	li $t0, 4
	lw $t1, -292($fp)
	mul $t0, $t0, $t1
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	lw $t1, -272($fp)
	add $t0, $t0, $t1
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	lw $t1, 0($t0)
	sw $t1, -304($fp)
	lw $t0, -268($fp)
	lw $t1, -304($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -308($fp)
	lw $ra, -4($fp)
	lw $v0, -308($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label131
label133:
label122:
	addi $t0, $fp, -24
	sw $t0, -312($fp)
	li $t0, 0
	sw $t0, -316($fp)
	li $t0, 4
	lw $t1, -316($fp)
	mul $t0, $t0, $t1
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	lw $t1, -312($fp)
	add $t0, $t0, $t1
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	lw $t1, 0($t0)
	sw $t1, -328($fp)
	lw $t0, -328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -332($fp)
	li $t0, 1
	sw $t0, -336($fp)
	li $t0, 4
	lw $t1, -336($fp)
	mul $t0, $t0, $t1
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	lw $t1, -332($fp)
	add $t0, $t0, $t1
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	lw $t1, 0($t0)
	sw $t1, -348($fp)
	lw $t0, -348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -352($fp)
	li $t0, 2
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
	lw $t0, -368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -372($fp)
	li $t0, 3
	sw $t0, -376($fp)
	li $t0, 4
	lw $t1, -376($fp)
	mul $t0, $t0, $t1
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	lw $t1, -372($fp)
	add $t0, $t0, $t1
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	lw $t1, 0($t0)
	sw $t1, -388($fp)
	lw $t0, -388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -392($fp)
	li $t0, 4
	sw $t0, -396($fp)
	li $t0, 4
	lw $t1, -396($fp)
	mul $t0, $t0, $t1
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	lw $t1, -392($fp)
	add $t0, $t0, $t1
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	lw $t1, 0($t0)
	sw $t1, -408($fp)
	lw $t0, -408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -152($fp)
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -164($fp)
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -420($fp)
	addi $t0, $fp, -24
	sw $t0, -424($fp)
	lw $t0, 8($fp)
	sw $t0, -428($fp)
	li $t0, 4
	lw $t1, -428($fp)
	mul $t0, $t0, $t1
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	lw $t1, -424($fp)
	add $t0, $t0, $t1
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	lw $t1, 0($t0)
	sw $t1, -440($fp)
	lw $t1, -440($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label138
label138:
	li $t0, 1
	sw $t0, -420($fp)
label139:
	li $t0, 0
	sw $t0, -444($fp)
	li $t0, 35112
	sw $t0, -448($fp)
	lw $t1, -448($fp)
	li $t2, 0
	bne $t1, $t2, label141
	j label140
label140:
	li $t0, 1
	sw $t0, -444($fp)
label141:
	li $t0, 0
	lw $t1, -444($fp)
	sub $t0, $t0, $t1
	sw $t0, -452($fp)
	lw $t0, -420($fp)
	lw $t1, -452($fp)
	mul $t0, $t0, $t1
	sw $t0, -456($fp)
	li $t0, 31652
	sw $t0, -460($fp)
	li $t0, 0
	lw $t1, -460($fp)
	sub $t0, $t0, $t1
	sw $t0, -464($fp)
	li $t0, 0
	lw $t1, -464($fp)
	sub $t0, $t0, $t1
	sw $t0, -468($fp)
	lw $t0, -456($fp)
	lw $t1, -468($fp)
	add $t0, $t0, $t1
	sw $t0, -472($fp)
	lw $ra, -4($fp)
	lw $v0, -472($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -5928
	li $t0, 64344
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	li $t0, 41920
	sw $t0, -84($fp)
	addi $t0, $fp, -8
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
	li $t0, 58048
	sw $t0, -108($fp)
	addi $t0, $fp, -40
	sw $t0, -112($fp)
	li $t0, 0
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
	li $t0, 41114
	sw $t0, -132($fp)
	addi $t0, $fp, -40
	sw $t0, -136($fp)
	li $t0, 1
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
	li $t0, 13413
	sw $t0, -156($fp)
	addi $t0, $fp, -40
	sw $t0, -160($fp)
	li $t0, 2
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
	li $t0, 21038
	sw $t0, -180($fp)
	addi $t0, $fp, -40
	sw $t0, -184($fp)
	li $t0, 3
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
	li $t0, 28768
	sw $t0, -204($fp)
	addi $t0, $fp, -40
	sw $t0, -208($fp)
	li $t0, 4
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -216($fp)
	lw $t0, -208($fp)
	lw $t1, -216($fp)
	add $t0, $t0, $t1
	sw $t0, -220($fp)
	lw $t0, -204($fp)
	lw $t1, -220($fp)
	sw $t0, 0($t1)
	lw $t0, -220($fp)
	lw $t1, 0($t0)
	sw $t1, -224($fp)
	li $t0, 38850
	sw $t0, -228($fp)
	addi $t0, $fp, -40
	sw $t0, -232($fp)
	li $t0, 5
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
	li $t0, 30872
	sw $t0, -252($fp)
	addi $t0, $fp, -40
	sw $t0, -256($fp)
	li $t0, 6
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -264($fp)
	lw $t0, -256($fp)
	lw $t1, -264($fp)
	add $t0, $t0, $t1
	sw $t0, -268($fp)
	lw $t0, -252($fp)
	lw $t1, -268($fp)
	sw $t0, 0($t1)
	lw $t0, -268($fp)
	lw $t1, 0($t0)
	sw $t1, -272($fp)
	li $t0, 62778
	sw $t0, -276($fp)
	addi $t0, $fp, -40
	sw $t0, -280($fp)
	li $t0, 7
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -288($fp)
	lw $t0, -280($fp)
	lw $t1, -288($fp)
	add $t0, $t0, $t1
	sw $t0, -292($fp)
	lw $t0, -276($fp)
	lw $t1, -292($fp)
	sw $t0, 0($t1)
	lw $t0, -292($fp)
	lw $t1, 0($t0)
	sw $t1, -296($fp)
	li $t0, 63562
	sw $t0, -300($fp)
	addi $t0, $fp, -68
	sw $t0, -304($fp)
	li $t0, 0
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -312($fp)
	lw $t0, -304($fp)
	lw $t1, -312($fp)
	add $t0, $t0, $t1
	sw $t0, -316($fp)
	lw $t0, -300($fp)
	lw $t1, -316($fp)
	sw $t0, 0($t1)
	lw $t0, -316($fp)
	lw $t1, 0($t0)
	sw $t1, -320($fp)
	li $t0, 30414
	sw $t0, -324($fp)
	addi $t0, $fp, -68
	sw $t0, -328($fp)
	li $t0, 1
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -336($fp)
	lw $t0, -328($fp)
	lw $t1, -336($fp)
	add $t0, $t0, $t1
	sw $t0, -340($fp)
	lw $t0, -324($fp)
	lw $t1, -340($fp)
	sw $t0, 0($t1)
	lw $t0, -340($fp)
	lw $t1, 0($t0)
	sw $t1, -344($fp)
	li $t0, 26310
	sw $t0, -348($fp)
	addi $t0, $fp, -68
	sw $t0, -352($fp)
	li $t0, 2
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -360($fp)
	lw $t0, -352($fp)
	lw $t1, -360($fp)
	add $t0, $t0, $t1
	sw $t0, -364($fp)
	lw $t0, -348($fp)
	lw $t1, -364($fp)
	sw $t0, 0($t1)
	lw $t0, -364($fp)
	lw $t1, 0($t0)
	sw $t1, -368($fp)
	li $t0, 47123
	sw $t0, -372($fp)
	addi $t0, $fp, -68
	sw $t0, -376($fp)
	li $t0, 3
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -384($fp)
	lw $t0, -376($fp)
	lw $t1, -384($fp)
	add $t0, $t0, $t1
	sw $t0, -388($fp)
	lw $t0, -372($fp)
	lw $t1, -388($fp)
	sw $t0, 0($t1)
	lw $t0, -388($fp)
	lw $t1, 0($t0)
	sw $t1, -392($fp)
	li $t0, 64912
	sw $t0, -396($fp)
	addi $t0, $fp, -68
	sw $t0, -400($fp)
	li $t0, 4
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -408($fp)
	lw $t0, -400($fp)
	lw $t1, -408($fp)
	add $t0, $t0, $t1
	sw $t0, -412($fp)
	lw $t0, -396($fp)
	lw $t1, -412($fp)
	sw $t0, 0($t1)
	lw $t0, -412($fp)
	lw $t1, 0($t0)
	sw $t1, -416($fp)
	li $t0, 49614
	sw $t0, -420($fp)
	addi $t0, $fp, -68
	sw $t0, -424($fp)
	li $t0, 5
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -432($fp)
	lw $t0, -424($fp)
	lw $t1, -432($fp)
	add $t0, $t0, $t1
	sw $t0, -436($fp)
	lw $t0, -420($fp)
	lw $t1, -436($fp)
	sw $t0, 0($t1)
	lw $t0, -436($fp)
	lw $t1, 0($t0)
	sw $t1, -440($fp)
	li $t0, 11344
	sw $t0, -444($fp)
	addi $t0, $fp, -68
	sw $t0, -448($fp)
	li $t0, 6
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -456($fp)
	lw $t0, -448($fp)
	lw $t1, -456($fp)
	add $t0, $t0, $t1
	sw $t0, -460($fp)
	lw $t0, -444($fp)
	lw $t1, -460($fp)
	sw $t0, 0($t1)
	lw $t0, -460($fp)
	lw $t1, 0($t0)
	sw $t1, -464($fp)
	li $t0, 0
	sw $t0, -468($fp)
	li $t0, 15073
	sw $t0, -472($fp)
	lw $t1, -472($fp)
	li $t2, 0
	bne $t1, $t2, label143
	j label142
label142:
	li $t0, 1
	sw $t0, -468($fp)
label143:
	li $t0, 9585
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	li $t0, 7191
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	li $t0, 6147
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	li $t0, 28945
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	li $t0, 342
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	li $t0, 28110
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	li $t0, 60869
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -672($fp)
	li $t0, 62722
	sw $t0, -676($fp)
	addi $t0, $fp, -476
	sw $t0, -680($fp)
	li $t0, 0
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
	li $t0, 3713
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -708($fp)
	li $t0, 28531
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -720($fp)
	li $t0, 14520
	sw $t0, -724($fp)
	addi $t0, $fp, -496
	sw $t0, -728($fp)
	li $t0, 0
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
	li $t0, 38825
	sw $t0, -748($fp)
	addi $t0, $fp, -496
	sw $t0, -752($fp)
	li $t0, 1
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
	li $t0, 60183
	sw $t0, -772($fp)
	addi $t0, $fp, -496
	sw $t0, -776($fp)
	li $t0, 2
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
	li $t0, 13328
	sw $t0, -796($fp)
	addi $t0, $fp, -496
	sw $t0, -800($fp)
	li $t0, 3
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
	li $t0, 15209
	sw $t0, -820($fp)
	addi $t0, $fp, -496
	sw $t0, -824($fp)
	li $t0, 4
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
	li $t0, 52695
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -852($fp)
	li $t0, 54442
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -864($fp)
	li $t0, 28622
	sw $t0, -868($fp)
	addi $t0, $fp, -504
	sw $t0, -872($fp)
	li $t0, 0
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
	li $t0, 8198
	sw $t0, -892($fp)
	addi $t0, $fp, -504
	sw $t0, -896($fp)
	li $t0, 1
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
	li $t0, 17674
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -924($fp)
	li $t0, 1937
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -936($fp)
	li $t0, 39070
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -948($fp)
	li $t0, 14916
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	sw $t0, -960($fp)
	li $t0, 65499
	sw $t0, -964($fp)
	addi $t0, $fp, -528
	sw $t0, -968($fp)
	li $t0, 0
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
	li $t0, 3948
	sw $t0, -988($fp)
	addi $t0, $fp, -528
	sw $t0, -992($fp)
	li $t0, 1
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
	li $t0, 41226
	sw $t0, -1012($fp)
	addi $t0, $fp, -528
	sw $t0, -1016($fp)
	li $t0, 2
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
	li $t0, 47086
	sw $t0, -1036($fp)
	addi $t0, $fp, -528
	sw $t0, -1040($fp)
	li $t0, 3
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
	li $t0, 3324
	sw $t0, -1060($fp)
	addi $t0, $fp, -528
	sw $t0, -1064($fp)
	li $t0, 4
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
	li $t0, 25305
	sw $t0, -1084($fp)
	addi $t0, $fp, -528
	sw $t0, -1088($fp)
	li $t0, 5
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
	li $t0, 58430
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	sw $t0, -1116($fp)
	li $t0, 18397
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	sw $t0, -1128($fp)
	li $t0, 34890
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	sw $t0, -1140($fp)
	li $t0, 85
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	sw $t0, -1152($fp)
	li $t0, 24544
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	sw $t0, -1164($fp)
	li $t0, 63836
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	sw $t0, -1176($fp)
	li $t0, 428
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	sw $t0, -1188($fp)
	li $t0, 52654
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -1200($fp)
	li $t0, 59169
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	sw $t0, -1212($fp)
	li $t0, 63150
	sw $t0, -1216($fp)
	addi $t0, $fp, -552
	sw $t0, -1220($fp)
	li $t0, 0
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1228($fp)
	lw $t0, -1220($fp)
	lw $t1, -1228($fp)
	add $t0, $t0, $t1
	sw $t0, -1232($fp)
	lw $t0, -1216($fp)
	lw $t1, -1232($fp)
	sw $t0, 0($t1)
	lw $t0, -1232($fp)
	lw $t1, 0($t0)
	sw $t1, -1236($fp)
	li $t0, 56367
	sw $t0, -1240($fp)
	addi $t0, $fp, -552
	sw $t0, -1244($fp)
	li $t0, 1
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1252($fp)
	lw $t0, -1244($fp)
	lw $t1, -1252($fp)
	add $t0, $t0, $t1
	sw $t0, -1256($fp)
	lw $t0, -1240($fp)
	lw $t1, -1256($fp)
	sw $t0, 0($t1)
	lw $t0, -1256($fp)
	lw $t1, 0($t0)
	sw $t1, -1260($fp)
	li $t0, 22164
	sw $t0, -1264($fp)
	addi $t0, $fp, -552
	sw $t0, -1268($fp)
	li $t0, 2
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1276($fp)
	lw $t0, -1268($fp)
	lw $t1, -1276($fp)
	add $t0, $t0, $t1
	sw $t0, -1280($fp)
	lw $t0, -1264($fp)
	lw $t1, -1280($fp)
	sw $t0, 0($t1)
	lw $t0, -1280($fp)
	lw $t1, 0($t0)
	sw $t1, -1284($fp)
	li $t0, 12134
	sw $t0, -1288($fp)
	addi $t0, $fp, -552
	sw $t0, -1292($fp)
	li $t0, 3
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1300($fp)
	lw $t0, -1292($fp)
	lw $t1, -1300($fp)
	add $t0, $t0, $t1
	sw $t0, -1304($fp)
	lw $t0, -1288($fp)
	lw $t1, -1304($fp)
	sw $t0, 0($t1)
	lw $t0, -1304($fp)
	lw $t1, 0($t0)
	sw $t1, -1308($fp)
	li $t0, 29656
	sw $t0, -1312($fp)
	addi $t0, $fp, -552
	sw $t0, -1316($fp)
	li $t0, 4
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1324($fp)
	lw $t0, -1316($fp)
	lw $t1, -1324($fp)
	add $t0, $t0, $t1
	sw $t0, -1328($fp)
	lw $t0, -1312($fp)
	lw $t1, -1328($fp)
	sw $t0, 0($t1)
	lw $t0, -1328($fp)
	lw $t1, 0($t0)
	sw $t1, -1332($fp)
	li $t0, 16811
	sw $t0, -1336($fp)
	addi $t0, $fp, -552
	sw $t0, -1340($fp)
	li $t0, 5
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
	li $t0, 25462
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	sw $t0, -1368($fp)
	li $t0, 44865
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	sw $t0, -1380($fp)
	li $t0, 3971
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	sw $t0, -1392($fp)
	li $t0, 14368
	sw $t0, -1396($fp)
	addi $t0, $fp, -588
	sw $t0, -1400($fp)
	li $t0, 0
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
	li $t0, 7952
	sw $t0, -1420($fp)
	addi $t0, $fp, -588
	sw $t0, -1424($fp)
	li $t0, 1
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
	li $t0, 12169
	sw $t0, -1444($fp)
	addi $t0, $fp, -588
	sw $t0, -1448($fp)
	li $t0, 2
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
	li $t0, 32042
	sw $t0, -1468($fp)
	addi $t0, $fp, -588
	sw $t0, -1472($fp)
	li $t0, 3
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
	li $t0, 9889
	sw $t0, -1492($fp)
	addi $t0, $fp, -588
	sw $t0, -1496($fp)
	li $t0, 4
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1504($fp)
	lw $t0, -1496($fp)
	lw $t1, -1504($fp)
	add $t0, $t0, $t1
	sw $t0, -1508($fp)
	lw $t0, -1492($fp)
	lw $t1, -1508($fp)
	sw $t0, 0($t1)
	lw $t0, -1508($fp)
	lw $t1, 0($t0)
	sw $t1, -1512($fp)
	li $t0, 51239
	sw $t0, -1516($fp)
	addi $t0, $fp, -588
	sw $t0, -1520($fp)
	li $t0, 5
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1528($fp)
	lw $t0, -1520($fp)
	lw $t1, -1528($fp)
	add $t0, $t0, $t1
	sw $t0, -1532($fp)
	lw $t0, -1516($fp)
	lw $t1, -1532($fp)
	sw $t0, 0($t1)
	lw $t0, -1532($fp)
	lw $t1, 0($t0)
	sw $t1, -1536($fp)
	li $t0, 46958
	sw $t0, -1540($fp)
	addi $t0, $fp, -588
	sw $t0, -1544($fp)
	li $t0, 6
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1552($fp)
	lw $t0, -1544($fp)
	lw $t1, -1552($fp)
	add $t0, $t0, $t1
	sw $t0, -1556($fp)
	lw $t0, -1540($fp)
	lw $t1, -1556($fp)
	sw $t0, 0($t1)
	lw $t0, -1556($fp)
	lw $t1, 0($t0)
	sw $t1, -1560($fp)
	li $t0, 9852
	sw $t0, -1564($fp)
	addi $t0, $fp, -588
	sw $t0, -1568($fp)
	li $t0, 7
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1576($fp)
	lw $t0, -1568($fp)
	lw $t1, -1576($fp)
	add $t0, $t0, $t1
	sw $t0, -1580($fp)
	lw $t0, -1564($fp)
	lw $t1, -1580($fp)
	sw $t0, 0($t1)
	lw $t0, -1580($fp)
	lw $t1, 0($t0)
	sw $t1, -1584($fp)
	li $t0, 55187
	sw $t0, -1588($fp)
	addi $t0, $fp, -588
	sw $t0, -1592($fp)
	li $t0, 8
	sw $t0, -1596($fp)
	lw $t0, -1596($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1600($fp)
	lw $t0, -1592($fp)
	lw $t1, -1600($fp)
	add $t0, $t0, $t1
	sw $t0, -1604($fp)
	lw $t0, -1588($fp)
	lw $t1, -1604($fp)
	sw $t0, 0($t1)
	lw $t0, -1604($fp)
	lw $t1, 0($t0)
	sw $t1, -1608($fp)
	li $t0, 22648
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	sw $t0, -1620($fp)
	li $t0, 56938
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	sw $t0, -1676($fp)
	li $t0, 58512
	sw $t0, -1680($fp)
	addi $t0, $fp, -1636
	sw $t0, -1684($fp)
	li $t0, 0
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
	li $t0, 47953
	sw $t0, -1704($fp)
	addi $t0, $fp, -1636
	sw $t0, -1708($fp)
	li $t0, 1
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
	li $t0, 49832
	sw $t0, -1728($fp)
	addi $t0, $fp, -1636
	sw $t0, -1732($fp)
	li $t0, 2
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1740($fp)
	lw $t0, -1732($fp)
	lw $t1, -1740($fp)
	add $t0, $t0, $t1
	sw $t0, -1744($fp)
	lw $t0, -1728($fp)
	lw $t1, -1744($fp)
	sw $t0, 0($t1)
	lw $t0, -1744($fp)
	lw $t1, 0($t0)
	sw $t1, -1748($fp)
	li $t0, 11373
	sw $t0, -1752($fp)
	addi $t0, $fp, -1636
	sw $t0, -1756($fp)
	li $t0, 3
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1764($fp)
	lw $t0, -1756($fp)
	lw $t1, -1764($fp)
	add $t0, $t0, $t1
	sw $t0, -1768($fp)
	lw $t0, -1752($fp)
	lw $t1, -1768($fp)
	sw $t0, 0($t1)
	lw $t0, -1768($fp)
	lw $t1, 0($t0)
	sw $t1, -1772($fp)
	li $t0, 17308
	sw $t0, -1776($fp)
	addi $t0, $fp, -1664
	sw $t0, -1780($fp)
	li $t0, 0
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1788($fp)
	lw $t0, -1780($fp)
	lw $t1, -1788($fp)
	add $t0, $t0, $t1
	sw $t0, -1792($fp)
	lw $t0, -1776($fp)
	lw $t1, -1792($fp)
	sw $t0, 0($t1)
	lw $t0, -1792($fp)
	lw $t1, 0($t0)
	sw $t1, -1796($fp)
	li $t0, 49917
	sw $t0, -1800($fp)
	addi $t0, $fp, -1664
	sw $t0, -1804($fp)
	li $t0, 1
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1812($fp)
	lw $t0, -1804($fp)
	lw $t1, -1812($fp)
	add $t0, $t0, $t1
	sw $t0, -1816($fp)
	lw $t0, -1800($fp)
	lw $t1, -1816($fp)
	sw $t0, 0($t1)
	lw $t0, -1816($fp)
	lw $t1, 0($t0)
	sw $t1, -1820($fp)
	li $t0, 35918
	sw $t0, -1824($fp)
	addi $t0, $fp, -1664
	sw $t0, -1828($fp)
	li $t0, 2
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1836($fp)
	lw $t0, -1828($fp)
	lw $t1, -1836($fp)
	add $t0, $t0, $t1
	sw $t0, -1840($fp)
	lw $t0, -1824($fp)
	lw $t1, -1840($fp)
	sw $t0, 0($t1)
	lw $t0, -1840($fp)
	lw $t1, 0($t0)
	sw $t1, -1844($fp)
	li $t0, 15608
	sw $t0, -1848($fp)
	addi $t0, $fp, -1664
	sw $t0, -1852($fp)
	li $t0, 3
	sw $t0, -1856($fp)
	lw $t0, -1856($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1860($fp)
	lw $t0, -1852($fp)
	lw $t1, -1860($fp)
	add $t0, $t0, $t1
	sw $t0, -1864($fp)
	lw $t0, -1848($fp)
	lw $t1, -1864($fp)
	sw $t0, 0($t1)
	lw $t0, -1864($fp)
	lw $t1, 0($t0)
	sw $t1, -1868($fp)
	li $t0, 50345
	sw $t0, -1872($fp)
	addi $t0, $fp, -1664
	sw $t0, -1876($fp)
	li $t0, 4
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1884($fp)
	lw $t0, -1876($fp)
	lw $t1, -1884($fp)
	add $t0, $t0, $t1
	sw $t0, -1888($fp)
	lw $t0, -1872($fp)
	lw $t1, -1888($fp)
	sw $t0, 0($t1)
	lw $t0, -1888($fp)
	lw $t1, 0($t0)
	sw $t1, -1892($fp)
	li $t0, 23036
	sw $t0, -1896($fp)
	addi $t0, $fp, -1664
	sw $t0, -1900($fp)
	li $t0, 5
	sw $t0, -1904($fp)
	lw $t0, -1904($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1908($fp)
	lw $t0, -1900($fp)
	lw $t1, -1908($fp)
	add $t0, $t0, $t1
	sw $t0, -1912($fp)
	lw $t0, -1896($fp)
	lw $t1, -1912($fp)
	sw $t0, 0($t1)
	lw $t0, -1912($fp)
	lw $t1, 0($t0)
	sw $t1, -1916($fp)
	li $t0, 9241
	sw $t0, -1920($fp)
	addi $t0, $fp, -1664
	sw $t0, -1924($fp)
	li $t0, 6
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1932($fp)
	lw $t0, -1924($fp)
	lw $t1, -1932($fp)
	add $t0, $t0, $t1
	sw $t0, -1936($fp)
	lw $t0, -1920($fp)
	lw $t1, -1936($fp)
	sw $t0, 0($t1)
	lw $t0, -1936($fp)
	lw $t1, 0($t0)
	sw $t1, -1940($fp)
label144:
	lw $t0, -656($fp)
	sw $t0, -1944($fp)
	lw $t1, -1944($fp)
	li $t2, 0
	bne $t1, $t2, label145
	j label146
label145:
	li $t0, 47959
	sw $t0, -1948($fp)
	lw $ra, -4($fp)
	lw $v0, -1948($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label144
label146:
	addi $t0, $fp, -504
	sw $t0, -1952($fp)
	lw $t0, 12($fp)
	sw $t0, -1956($fp)
	li $t0, 4
	lw $t1, -1956($fp)
	mul $t0, $t0, $t1
	sw $t0, -1960($fp)
	lw $t0, -1960($fp)
	lw $t1, -1952($fp)
	add $t0, $t0, $t1
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	lw $t1, 0($t0)
	sw $t1, -1968($fp)
	addi $t0, $fp, -1664
	sw $t0, -1972($fp)
	lw $t0, -704($fp)
	sw $t0, -1976($fp)
	li $t0, 4
	lw $t1, -1976($fp)
	mul $t0, $t0, $t1
	sw $t0, -1980($fp)
	lw $t0, -1980($fp)
	lw $t1, -1972($fp)
	add $t0, $t0, $t1
	sw $t0, -1984($fp)
	lw $t0, -1984($fp)
	lw $t1, 0($t0)
	sw $t1, -1988($fp)
	lw $t0, -1968($fp)
	lw $t1, -1988($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1992($fp)
	lw $t1, -1992($fp)
	li $t2, 0
	bne $t1, $t2, label150
	j label148
label150:
	li $t0, 13868
	sw $t0, -1996($fp)
	lw $t1, -1996($fp)
	li $t2, 0
	bne $t1, $t2, label147
	j label148
label147:
	li $t0, 0
	sw $t0, -2000($fp)
	addi $t0, $fp, -1636
	sw $t0, -2004($fp)
	li $t0, 0
	sw $t0, -2008($fp)
	lw $t0, -920($fp)
	sw $t0, -2012($fp)
	li $t0, 31405
	sw $t0, -2016($fp)
	lw $t1, -2012($fp)
	lw $t2, -2016($fp)
	ble $t1, $t2, label153
	j label154
label153:
	li $t0, 1
	sw $t0, -2008($fp)
label154:
	li $t0, 4
	lw $t1, -2008($fp)
	mul $t0, $t0, $t1
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	lw $t1, -2004($fp)
	add $t0, $t0, $t1
	sw $t0, -2024($fp)
	lw $t0, -2024($fp)
	lw $t1, 0($t0)
	sw $t1, -2028($fp)
	lw $t0, -644($fp)
	sw $t0, -2032($fp)
	li $t0, 0
	lw $t1, -2032($fp)
	sub $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t0, -2028($fp)
	lw $t1, -2036($fp)
	add $t0, $t0, $t1
	sw $t0, -2040($fp)
	li $t0, 0
	sw $t0, -2044($fp)
	li $t0, 60093
	sw $t0, -2048($fp)
	lw $t0, -1112($fp)
	sw $t0, -2052($fp)
	lw $t0, -2048($fp)
	lw $t1, -2052($fp)
	add $t0, $t0, $t1
	sw $t0, -2056($fp)
	lw $t0, -932($fp)
	sw $t0, -2060($fp)
	lw $t1, -2056($fp)
	lw $t2, -2060($fp)
	bgt $t1, $t2, label155
	j label156
label155:
	li $t0, 1
	sw $t0, -2044($fp)
label156:
	lw $t0, -704($fp)
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -2068($fp)
	addi $sp, $sp, -4
	lw $t0, -2044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2068($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2072($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -2072($fp)
	sub $t0, $t0, $t1
	sw $t0, -2076($fp)
	lw $t0, -644($fp)
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	sw $t0, -2084($fp)
	addi $sp, $sp, -4
	lw $t0, -2076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2084($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2088($fp)
	addi $sp, $sp, 12
	lw $t0, -668($fp)
	sw $t0, -2092($fp)
	lw $t0, -2088($fp)
	lw $t1, -2092($fp)
	mul $t0, $t0, $t1
	sw $t0, -2096($fp)
	lw $t1, -2040($fp)
	lw $t2, -2096($fp)
	beq $t1, $t2, label151
	j label152
label151:
	li $t0, 1
	sw $t0, -2000($fp)
label152:
	lw $ra, -4($fp)
	lw $v0, -2000($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label149
label148:
	li $t0, 0
	sw $t0, -2100($fp)
	lw $t0, -656($fp)
	sw $t0, -2104($fp)
	lw $t0, -656($fp)
	sw $t0, -2108($fp)
	li $t0, 0
	lw $t1, -2108($fp)
	sub $t0, $t0, $t1
	sw $t0, -2112($fp)
	li $t0, 0
	lw $t1, -2112($fp)
	sub $t0, $t0, $t1
	sw $t0, -2116($fp)
	lw $t0, -2104($fp)
	lw $t1, -2116($fp)
	sub $t0, $t0, $t1
	sw $t0, -2120($fp)
	li $t0, 43524
	sw $t0, -2124($fp)
	li $t0, 0
	lw $t1, -2124($fp)
	sub $t0, $t0, $t1
	sw $t0, -2128($fp)
	lw $t1, -2120($fp)
	lw $t2, -2128($fp)
	bne $t1, $t2, label157
	j label158
label157:
	li $t0, 1
	sw $t0, -2100($fp)
label158:
	lw $ra, -4($fp)
	lw $v0, -2100($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label149:
	lw $t0, -1672($fp)
	sw $t0, -2132($fp)
	lw $t0, -2132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1636
	sw $t0, -2136($fp)
	li $t0, 0
	sw $t0, -2140($fp)
	li $t0, 4
	lw $t1, -2140($fp)
	mul $t0, $t0, $t1
	sw $t0, -2144($fp)
	lw $t0, -2144($fp)
	lw $t1, -2136($fp)
	add $t0, $t0, $t1
	sw $t0, -2148($fp)
	lw $t0, -2148($fp)
	lw $t1, 0($t0)
	sw $t1, -2152($fp)
	lw $t0, -2152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1636
	sw $t0, -2156($fp)
	li $t0, 1
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
	addi $t0, $fp, -1636
	sw $t0, -2176($fp)
	li $t0, 2
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
	addi $t0, $fp, -1636
	sw $t0, -2196($fp)
	li $t0, 3
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
	addi $t0, $fp, -1664
	sw $t0, -2216($fp)
	li $t0, 0
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
	addi $t0, $fp, -1664
	sw $t0, -2236($fp)
	li $t0, 1
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
	addi $t0, $fp, -1664
	sw $t0, -2256($fp)
	li $t0, 2
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
	addi $t0, $fp, -1664
	sw $t0, -2276($fp)
	li $t0, 3
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
	addi $t0, $fp, -1664
	sw $t0, -2296($fp)
	li $t0, 4
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
	addi $t0, $fp, -1664
	sw $t0, -2316($fp)
	li $t0, 5
	sw $t0, -2320($fp)
	li $t0, 4
	lw $t1, -2320($fp)
	mul $t0, $t0, $t1
	sw $t0, -2324($fp)
	lw $t0, -2324($fp)
	lw $t1, -2316($fp)
	add $t0, $t0, $t1
	sw $t0, -2328($fp)
	lw $t0, -2328($fp)
	lw $t1, 0($t0)
	sw $t1, -2332($fp)
	lw $t0, -2332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1664
	sw $t0, -2336($fp)
	li $t0, 6
	sw $t0, -2340($fp)
	li $t0, 4
	lw $t1, -2340($fp)
	mul $t0, $t0, $t1
	sw $t0, -2344($fp)
	lw $t0, -2344($fp)
	lw $t1, -2336($fp)
	add $t0, $t0, $t1
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	lw $t1, 0($t0)
	sw $t1, -2352($fp)
	lw $t0, -2352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2356($fp)
	li $t0, 48216
	sw $t0, -2360($fp)
	lw $t0, -2360($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -2364($fp)
	lw $t0, -944($fp)
	sw $t0, -2368($fp)
	lw $t0, -2368($fp)
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -2372($fp)
	addi $sp, $sp, -4
	lw $t0, -2364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2372($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2376($fp)
	addi $sp, $sp, 12
	li $t0, 20019
	sw $t0, -2380($fp)
	lw $t0, -656($fp)
	sw $t0, -2384($fp)
	lw $t0, -2380($fp)
	lw $t1, -2384($fp)
	mul $t0, $t0, $t1
	sw $t0, -2388($fp)
	lw $t0, -2376($fp)
	lw $t1, -2388($fp)
	add $t0, $t0, $t1
	sw $t0, -2392($fp)
	addi $t0, $fp, -476
	sw $t0, -2396($fp)
	lw $t0, -1616($fp)
	sw $t0, -2400($fp)
	li $t0, 4
	lw $t1, -2400($fp)
	mul $t0, $t0, $t1
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	lw $t1, -2396($fp)
	add $t0, $t0, $t1
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	lw $t1, 0($t0)
	sw $t1, -2412($fp)
	li $t0, 22854
	sw $t0, -2416($fp)
	lw $t0, -2412($fp)
	lw $t1, -2416($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2420($fp)
	li $t0, 52187
	sw $t0, -2424($fp)
	li $t0, 0
	lw $t1, -2424($fp)
	sub $t0, $t0, $t1
	sw $t0, -2428($fp)
	lw $t0, -2420($fp)
	lw $t1, -2428($fp)
	sub $t0, $t0, $t1
	sw $t0, -2432($fp)
	lw $t1, -2392($fp)
	lw $t2, -2432($fp)
	bne $t1, $t2, label159
	j label160
label159:
	li $t0, 1
	sw $t0, -2356($fp)
label160:
	lw $ra, -4($fp)
	lw $v0, -2356($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -476
	sw $t0, -2436($fp)
	li $t0, 0
	sw $t0, -2440($fp)
	li $t0, 4
	lw $t1, -2440($fp)
	mul $t0, $t0, $t1
	sw $t0, -2444($fp)
	lw $t0, -2444($fp)
	lw $t1, -2436($fp)
	add $t0, $t0, $t1
	sw $t0, -2448($fp)
	lw $t0, -2448($fp)
	lw $t1, 0($t0)
	sw $t1, -2452($fp)
	lw $t1, -2452($fp)
	li $t2, 0
	bne $t1, $t2, label164
	j label161
label164:
	li $t0, 0
	sw $t0, -2456($fp)
	li $t0, 893
	sw $t0, -2460($fp)
	lw $t0, -1672($fp)
	sw $t0, -2464($fp)
	lw $t0, -2460($fp)
	lw $t1, -2464($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2468($fp)
	lw $t0, -1148($fp)
	sw $t0, -2472($fp)
	lw $t1, -2468($fp)
	lw $t2, -2472($fp)
	ble $t1, $t2, label165
	j label166
label165:
	li $t0, 1
	sw $t0, -2456($fp)
label166:
	lw $t0, -1208($fp)
	sw $t0, -2476($fp)
	lw $t1, -2456($fp)
	lw $t2, -2476($fp)
	bgt $t1, $t2, label161
	j label162
label161:
	li $t0, 0
	sw $t0, -2480($fp)
	li $t0, 0
	sw $t0, -2484($fp)
	li $t0, 40695
	sw $t0, -2488($fp)
	lw $t1, -2488($fp)
	li $t2, 0
	bne $t1, $t2, label171
	j label170
label170:
	li $t0, 1
	sw $t0, -2484($fp)
label171:
	li $t0, 47852
	sw $t0, -2492($fp)
	lw $t0, -2484($fp)
	lw $t1, -2492($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2496($fp)
	li $t0, 0
	lw $t1, -2496($fp)
	sub $t0, $t0, $t1
	sw $t0, -2500($fp)
	lw $t0, -668($fp)
	sw $t0, -2504($fp)
	lw $t0, -1388($fp)
	sw $t0, -2508($fp)
	lw $t0, -2504($fp)
	lw $t1, -2508($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2512($fp)
	li $t0, 0
	lw $t1, -2512($fp)
	sub $t0, $t0, $t1
	sw $t0, -2516($fp)
	lw $t0, -2500($fp)
	lw $t1, -2516($fp)
	sub $t0, $t0, $t1
	sw $t0, -2520($fp)
	lw $t1, -2520($fp)
	li $t2, 0
	bne $t1, $t2, label167
	j label169
label169:
	li $t0, 50547
	sw $t0, -2524($fp)
	li $t0, 39711
	sw $t0, -2528($fp)
	lw $t0, -2524($fp)
	lw $t1, -2528($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2532($fp)
	li $t0, 0
	lw $t1, -2532($fp)
	sub $t0, $t0, $t1
	sw $t0, -2536($fp)
	li $t0, 4964
	sw $t0, -2540($fp)
	lw $t0, -2536($fp)
	lw $t1, -2540($fp)
	sub $t0, $t0, $t1
	sw $t0, -2544($fp)
	lw $t1, -2544($fp)
	li $t2, 0
	bne $t1, $t2, label167
	j label168
label167:
	li $t0, 1
	sw $t0, -2480($fp)
label168:
	lw $ra, -4($fp)
	lw $v0, -2480($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label163
label162:
	li $t0, 41949
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	sw $t0, -2552($fp)
	lw $t0, -2552($fp)
	sw $t0, -2556($fp)
	addi $t0, $fp, -68
	sw $t0, -2560($fp)
	li $t0, 0
	sw $t0, -2564($fp)
	lw $t0, -1148($fp)
	sw $t0, -2568($fp)
	lw $t1, -2568($fp)
	li $t2, 0
	bne $t1, $t2, label177
	j label175
label177:
	li $t0, 32687
	sw $t0, -2572($fp)
	lw $t1, -2572($fp)
	li $t2, 0
	bne $t1, $t2, label175
	j label176
label175:
	li $t0, 1
	sw $t0, -2564($fp)
label176:
	li $t0, 4
	lw $t1, -2564($fp)
	mul $t0, $t0, $t1
	sw $t0, -2576($fp)
	lw $t0, -2576($fp)
	lw $t1, -2560($fp)
	add $t0, $t0, $t1
	sw $t0, -2580($fp)
	lw $t0, -2580($fp)
	lw $t1, 0($t0)
	sw $t1, -2584($fp)
	li $t0, 0
	sw $t0, -2588($fp)
	li $t0, 52917
	sw $t0, -2592($fp)
	lw $t1, -2592($fp)
	li $t2, 0
	bne $t1, $t2, label178
	j label179
label178:
	li $t0, 1
	sw $t0, -2588($fp)
label179:
	li $t0, 0
	lw $t1, -2588($fp)
	sub $t0, $t0, $t1
	sw $t0, -2596($fp)
	lw $t0, -2584($fp)
	lw $t1, -2596($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2600($fp)
	lw $t1, -2600($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label173
label172:
	li $t0, 0
	sw $t0, -2604($fp)
	li $t0, 51347
	sw $t0, -2608($fp)
	li $t0, 0
	sw $t0, -2612($fp)
	li $t0, 43395
	sw $t0, -2616($fp)
	lw $t1, -2616($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label182
label182:
	li $t0, 1
	sw $t0, -2612($fp)
label183:
	li $t0, 0
	lw $t1, -2612($fp)
	sub $t0, $t0, $t1
	sw $t0, -2620($fp)
	li $t0, 0
	sw $t0, -2624($fp)
	li $t0, 0
	sw $t0, -2628($fp)
	lw $t0, -716($fp)
	sw $t0, -2632($fp)
	lw $t1, -2632($fp)
	li $t2, 0
	bne $t1, $t2, label187
	j label186
label186:
	li $t0, 1
	sw $t0, -2628($fp)
label187:
	lw $t0, -656($fp)
	sw $t0, -2636($fp)
	lw $t1, -2628($fp)
	lw $t2, -2636($fp)
	bge $t1, $t2, label184
	j label185
label184:
	li $t0, 1
	sw $t0, -2624($fp)
label185:
	li $t0, 29538
	sw $t0, -2640($fp)
	li $t0, 0
	lw $t1, -2640($fp)
	sub $t0, $t0, $t1
	sw $t0, -2644($fp)
	li $t0, 0
	lw $t1, -2644($fp)
	sub $t0, $t0, $t1
	sw $t0, -2648($fp)
	li $t0, 0
	sw $t0, -2652($fp)
	lw $t0, -1208($fp)
	sw $t0, -2656($fp)
	li $t0, 60972
	sw $t0, -2660($fp)
	lw $t0, -2656($fp)
	lw $t1, -2660($fp)
	sub $t0, $t0, $t1
	sw $t0, -2664($fp)
	lw $t1, -2664($fp)
	li $t2, 0
	bne $t1, $t2, label188
	j label190
label190:
	li $t0, 37479
	sw $t0, -2668($fp)
	lw $t1, -2668($fp)
	li $t2, 0
	bne $t1, $t2, label188
	j label189
label188:
	li $t0, 1
	sw $t0, -2652($fp)
label189:
	addi $sp, $sp, -4
	lw $t0, -2624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2652($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2672($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -2672($fp)
	sub $t0, $t0, $t1
	sw $t0, -2676($fp)
	addi $sp, $sp, -4
	lw $t0, -2608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2676($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2680($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -2684($fp)
	li $t0, 10626
	sw $t0, -2688($fp)
	li $t0, 14442
	sw $t0, -2692($fp)
	lw $t0, -2688($fp)
	lw $t1, -2692($fp)
	sub $t0, $t0, $t1
	sw $t0, -2696($fp)
	li $t0, 20297
	sw $t0, -2700($fp)
	lw $t1, -2696($fp)
	lw $t2, -2700($fp)
	ble $t1, $t2, label191
	j label192
label191:
	li $t0, 1
	sw $t0, -2684($fp)
label192:
	li $t0, 0
	sw $t0, -2704($fp)
	li $t0, 44060
	sw $t0, -2708($fp)
	lw $t0, -2708($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -2712($fp)
	lw $t0, -1364($fp)
	sw $t0, -2716($fp)
	lw $t0, -2716($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -2720($fp)
	li $t0, 0
	sw $t0, -2724($fp)
	li $t0, 26245
	sw $t0, -2728($fp)
	lw $t1, -2728($fp)
	li $t2, 0
	bne $t1, $t2, label196
	j label195
label195:
	li $t0, 1
	sw $t0, -2724($fp)
label196:
	lw $t0, -1112($fp)
	sw $t0, -2732($fp)
	lw $t0, -2724($fp)
	lw $t1, -2732($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2736($fp)
	addi $sp, $sp, -4
	lw $t0, -2712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2736($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2740($fp)
	addi $sp, $sp, 16
	li $t0, 4689
	sw $t0, -2744($fp)
	lw $t1, -2740($fp)
	lw $t2, -2744($fp)
	blt $t1, $t2, label193
	j label194
label193:
	li $t0, 1
	sw $t0, -2704($fp)
label194:
	addi $sp, $sp, -4
	lw $t0, -2680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2704($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2748($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -2752($fp)
	lw $t0, -920($fp)
	sw $t0, -2756($fp)
	li $t0, 0
	lw $t1, -2756($fp)
	sub $t0, $t0, $t1
	sw $t0, -2760($fp)
	lw $t1, -2760($fp)
	li $t2, 0
	bne $t1, $t2, label198
	j label197
label197:
	li $t0, 1
	sw $t0, -2752($fp)
label198:
	lw $t1, -2748($fp)
	lw $t2, -2752($fp)
	bne $t1, $t2, label180
	j label181
label180:
	li $t0, 1
	sw $t0, -2604($fp)
label181:
	j label174
label173:
	li $t0, 60943
	sw $t0, -2764($fp)
label174:
	li $t0, 37953
	sw $t0, -2800($fp)
	addi $t0, $fp, -2796
	sw $t0, -2804($fp)
	li $t0, 0
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
	li $t0, 29335
	sw $t0, -2824($fp)
	addi $t0, $fp, -2796
	sw $t0, -2828($fp)
	li $t0, 1
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
	li $t0, 43624
	sw $t0, -2848($fp)
	addi $t0, $fp, -2796
	sw $t0, -2852($fp)
	li $t0, 2
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
	li $t0, 57972
	sw $t0, -2872($fp)
	addi $t0, $fp, -2796
	sw $t0, -2876($fp)
	li $t0, 3
	sw $t0, -2880($fp)
	lw $t0, -2880($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2884($fp)
	lw $t0, -2876($fp)
	lw $t1, -2884($fp)
	add $t0, $t0, $t1
	sw $t0, -2888($fp)
	lw $t0, -2872($fp)
	lw $t1, -2888($fp)
	sw $t0, 0($t1)
	lw $t0, -2888($fp)
	lw $t1, 0($t0)
	sw $t1, -2892($fp)
	li $t0, 52189
	sw $t0, -2896($fp)
	addi $t0, $fp, -2796
	sw $t0, -2900($fp)
	li $t0, 4
	sw $t0, -2904($fp)
	lw $t0, -2904($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2908($fp)
	lw $t0, -2900($fp)
	lw $t1, -2908($fp)
	add $t0, $t0, $t1
	sw $t0, -2912($fp)
	lw $t0, -2896($fp)
	lw $t1, -2912($fp)
	sw $t0, 0($t1)
	lw $t0, -2912($fp)
	lw $t1, 0($t0)
	sw $t1, -2916($fp)
	li $t0, 30275
	sw $t0, -2920($fp)
	addi $t0, $fp, -2796
	sw $t0, -2924($fp)
	li $t0, 5
	sw $t0, -2928($fp)
	lw $t0, -2928($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2932($fp)
	lw $t0, -2924($fp)
	lw $t1, -2932($fp)
	add $t0, $t0, $t1
	sw $t0, -2936($fp)
	lw $t0, -2920($fp)
	lw $t1, -2936($fp)
	sw $t0, 0($t1)
	lw $t0, -2936($fp)
	lw $t1, 0($t0)
	sw $t1, -2940($fp)
	li $t0, 26824
	sw $t0, -2944($fp)
	addi $t0, $fp, -2796
	sw $t0, -2948($fp)
	li $t0, 6
	sw $t0, -2952($fp)
	lw $t0, -2952($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2956($fp)
	lw $t0, -2948($fp)
	lw $t1, -2956($fp)
	add $t0, $t0, $t1
	sw $t0, -2960($fp)
	lw $t0, -2944($fp)
	lw $t1, -2960($fp)
	sw $t0, 0($t1)
	lw $t0, -2960($fp)
	lw $t1, 0($t0)
	sw $t1, -2964($fp)
	li $t0, 17459
	sw $t0, -2968($fp)
	addi $t0, $fp, -2796
	sw $t0, -2972($fp)
	li $t0, 7
	sw $t0, -2976($fp)
	lw $t0, -2976($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2980($fp)
	lw $t0, -2972($fp)
	lw $t1, -2980($fp)
	add $t0, $t0, $t1
	sw $t0, -2984($fp)
	lw $t0, -2968($fp)
	lw $t1, -2984($fp)
	sw $t0, 0($t1)
	lw $t0, -2984($fp)
	lw $t1, 0($t0)
	sw $t1, -2988($fp)
	addi $t0, $fp, -1664
	sw $t0, -2992($fp)
	lw $t0, -920($fp)
	sw $t0, -2996($fp)
	li $t0, 4
	lw $t1, -2996($fp)
	mul $t0, $t0, $t1
	sw $t0, -3000($fp)
	lw $t0, -3000($fp)
	lw $t1, -2992($fp)
	add $t0, $t0, $t1
	sw $t0, -3004($fp)
	lw $t0, -3004($fp)
	lw $t1, 0($t0)
	sw $t1, -3008($fp)
	li $t0, 0
	sw $t0, -3012($fp)
	lw $t0, -848($fp)
	sw $t0, -3016($fp)
	lw $t1, -3016($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label199
label199:
	li $t0, 1
	sw $t0, -3012($fp)
label200:
	lw $t0, -3008($fp)
	lw $t1, -3012($fp)
	mul $t0, $t0, $t1
	sw $t0, -3020($fp)
	li $t0, 29096
	sw $t0, -3024($fp)
	li $t0, 27717
	sw $t0, -3028($fp)
	lw $t0, -3024($fp)
	lw $t1, -3028($fp)
	mul $t0, $t0, $t1
	sw $t0, -3032($fp)
	lw $t0, -3020($fp)
	lw $t1, -3032($fp)
	add $t0, $t0, $t1
	sw $t0, -3036($fp)
	li $t0, 10033
	sw $t0, -3040($fp)
	li $t0, 0
	sw $t0, -3044($fp)
	li $t0, 0
	sw $t0, -3048($fp)
	li $t0, 58154
	sw $t0, -3052($fp)
	lw $t0, -704($fp)
	sw $t0, -3056($fp)
	lw $t1, -3052($fp)
	lw $t2, -3056($fp)
	blt $t1, $t2, label203
	j label204
label203:
	li $t0, 1
	sw $t0, -3048($fp)
label204:
	li $t0, 13619
	sw $t0, -3060($fp)
	lw $t1, -3048($fp)
	lw $t2, -3060($fp)
	ble $t1, $t2, label201
	j label202
label201:
	li $t0, 1
	sw $t0, -3044($fp)
label202:
	addi $sp, $sp, -4
	lw $t0, -3040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3044($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3064($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -3068($fp)
	li $t0, 0
	sw $t0, -3072($fp)
	lw $t0, -1388($fp)
	sw $t0, -3076($fp)
	li $t0, 43165
	sw $t0, -3080($fp)
	lw $t1, -3076($fp)
	lw $t2, -3080($fp)
	ble $t1, $t2, label207
	j label208
label207:
	li $t0, 1
	sw $t0, -3072($fp)
label208:
	li $t0, 53330
	sw $t0, -3084($fp)
	lw $t1, -3072($fp)
	lw $t2, -3084($fp)
	beq $t1, $t2, label205
	j label206
label205:
	li $t0, 1
	sw $t0, -3068($fp)
label206:
	addi $t0, $fp, -2796
	sw $t0, -3088($fp)
	lw $t0, -596($fp)
	sw $t0, -3092($fp)
	li $t0, 4
	lw $t1, -3092($fp)
	mul $t0, $t0, $t1
	sw $t0, -3096($fp)
	lw $t0, -3096($fp)
	lw $t1, -3088($fp)
	add $t0, $t0, $t1
	sw $t0, -3100($fp)
	lw $t0, -3100($fp)
	lw $t1, 0($t0)
	sw $t1, -3104($fp)
	addi $sp, $sp, -4
	lw $t0, -3068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3104($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3108($fp)
	addi $sp, $sp, 12
	lw $t0, -3064($fp)
	lw $t1, -3108($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3112($fp)
	lw $t0, -3036($fp)
	lw $t1, -3112($fp)
	add $t0, $t0, $t1
	sw $t0, -3116($fp)
label209:
	addi $t0, $fp, -552
	sw $t0, -3120($fp)
	li $t0, 0
	sw $t0, -3124($fp)
	li $t0, 4
	lw $t1, -3124($fp)
	mul $t0, $t0, $t1
	sw $t0, -3128($fp)
	lw $t0, -3128($fp)
	lw $t1, -3120($fp)
	add $t0, $t0, $t1
	sw $t0, -3132($fp)
	lw $t0, -3132($fp)
	lw $t1, 0($t0)
	sw $t1, -3136($fp)
	addi $t0, $fp, -552
	sw $t0, -3140($fp)
	li $t0, 4
	sw $t0, -3144($fp)
	li $t0, 4
	lw $t1, -3144($fp)
	mul $t0, $t0, $t1
	sw $t0, -3148($fp)
	lw $t0, -3148($fp)
	lw $t1, -3140($fp)
	add $t0, $t0, $t1
	sw $t0, -3152($fp)
	lw $t0, -3152($fp)
	lw $t1, 0($t0)
	sw $t1, -3156($fp)
	lw $t0, -3136($fp)
	lw $t1, -3156($fp)
	sub $t0, $t0, $t1
	sw $t0, -3160($fp)
	lw $t0, -3160($fp)
	sw $t0, -2552($fp)
	lw $t0, -2552($fp)
	sw $t0, -3164($fp)
	lw $t1, -3164($fp)
	li $t2, 0
	bne $t1, $t2, label210
	j label211
label210:
	li $t0, 0
	sw $t0, -3168($fp)
	lw $t0, -656($fp)
	sw $t0, -3172($fp)
	li $t0, 45823
	sw $t0, -3176($fp)
	lw $t0, -3172($fp)
	lw $t1, -3176($fp)
	sub $t0, $t0, $t1
	sw $t0, -3180($fp)
	lw $t0, -1616($fp)
	sw $t0, -3184($fp)
	li $t0, 64542
	sw $t0, -3188($fp)
	lw $t0, -3184($fp)
	lw $t1, -3188($fp)
	mul $t0, $t0, $t1
	sw $t0, -3192($fp)
	lw $t1, -3180($fp)
	lw $t2, -3192($fp)
	bne $t1, $t2, label212
	j label213
label212:
	li $t0, 1
	sw $t0, -3168($fp)
label213:
	lw $t0, -3168($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -3196($fp)
	j label209
label211:
label163:
label214:
	li $t0, 7068
	sw $t0, -3200($fp)
	lw $t1, -3200($fp)
	li $t2, 0
	bne $t1, $t2, label215
	j label216
label215:
label217:
	addi $t0, $fp, -528
	sw $t0, -3204($fp)
	li $t0, 56450
	sw $t0, -3208($fp)
	li $t0, 13448
	sw $t0, -3212($fp)
	lw $t0, -3208($fp)
	lw $t1, -3212($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3216($fp)
	li $t0, 4
	lw $t1, -3216($fp)
	mul $t0, $t0, $t1
	sw $t0, -3220($fp)
	lw $t0, -3220($fp)
	lw $t1, -3204($fp)
	add $t0, $t0, $t1
	sw $t0, -3224($fp)
	lw $t0, -3224($fp)
	lw $t1, 0($t0)
	sw $t1, -3228($fp)
	li $t0, 0
	lw $t1, -3228($fp)
	sub $t0, $t0, $t1
	sw $t0, -3232($fp)
	lw $t1, -3232($fp)
	li $t2, 0
	bne $t1, $t2, label219
	j label218
label218:
	addi $t0, $fp, -476
	sw $t0, -3236($fp)
	li $t0, 0
	sw $t0, -3240($fp)
	li $t0, 0
	sw $t0, -3244($fp)
	lw $t0, -704($fp)
	sw $t0, -3248($fp)
	li $t0, 27365
	sw $t0, -3252($fp)
	lw $t1, -3248($fp)
	lw $t2, -3252($fp)
	ble $t1, $t2, label225
	j label226
label225:
	li $t0, 1
	sw $t0, -3244($fp)
label226:
	li $t0, 51886
	sw $t0, -3256($fp)
	lw $t1, -3244($fp)
	lw $t2, -3256($fp)
	beq $t1, $t2, label223
	j label224
label223:
	li $t0, 1
	sw $t0, -3240($fp)
label224:
	li $t0, 4
	lw $t1, -3240($fp)
	mul $t0, $t0, $t1
	sw $t0, -3260($fp)
	lw $t0, -3260($fp)
	lw $t1, -3236($fp)
	add $t0, $t0, $t1
	sw $t0, -3264($fp)
	lw $t0, -3264($fp)
	lw $t1, 0($t0)
	sw $t1, -3268($fp)
	lw $t1, -3268($fp)
	li $t2, 0
	bne $t1, $t2, label221
	j label220
label220:
	li $t0, 50927
	sw $t0, -3272($fp)
	lw $ra, -4($fp)
	lw $v0, -3272($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label222
label221:
	lw $t0, -1148($fp)
	sw $t0, -3276($fp)
label222:
	j label217
label219:
	j label214
label216:
	li $t0, 56904
	sw $t0, -3280($fp)
	li $t0, 29745
	sw $t0, -3364($fp)
	addi $t0, $fp, -3312
	sw $t0, -3368($fp)
	li $t0, 0
	sw $t0, -3372($fp)
	lw $t0, -3372($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3376($fp)
	lw $t0, -3368($fp)
	lw $t1, -3376($fp)
	add $t0, $t0, $t1
	sw $t0, -3380($fp)
	lw $t0, -3364($fp)
	lw $t1, -3380($fp)
	sw $t0, 0($t1)
	lw $t0, -3380($fp)
	lw $t1, 0($t0)
	sw $t1, -3384($fp)
	li $t0, 36738
	sw $t0, -3388($fp)
	addi $t0, $fp, -3312
	sw $t0, -3392($fp)
	li $t0, 1
	sw $t0, -3396($fp)
	lw $t0, -3396($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3400($fp)
	lw $t0, -3392($fp)
	lw $t1, -3400($fp)
	add $t0, $t0, $t1
	sw $t0, -3404($fp)
	lw $t0, -3388($fp)
	lw $t1, -3404($fp)
	sw $t0, 0($t1)
	lw $t0, -3404($fp)
	lw $t1, 0($t0)
	sw $t1, -3408($fp)
	li $t0, 52311
	sw $t0, -3412($fp)
	addi $t0, $fp, -3312
	sw $t0, -3416($fp)
	li $t0, 2
	sw $t0, -3420($fp)
	lw $t0, -3420($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3424($fp)
	lw $t0, -3416($fp)
	lw $t1, -3424($fp)
	add $t0, $t0, $t1
	sw $t0, -3428($fp)
	lw $t0, -3412($fp)
	lw $t1, -3428($fp)
	sw $t0, 0($t1)
	lw $t0, -3428($fp)
	lw $t1, 0($t0)
	sw $t1, -3432($fp)
	li $t0, 2162
	sw $t0, -3436($fp)
	addi $t0, $fp, -3312
	sw $t0, -3440($fp)
	li $t0, 3
	sw $t0, -3444($fp)
	lw $t0, -3444($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3448($fp)
	lw $t0, -3440($fp)
	lw $t1, -3448($fp)
	add $t0, $t0, $t1
	sw $t0, -3452($fp)
	lw $t0, -3436($fp)
	lw $t1, -3452($fp)
	sw $t0, 0($t1)
	lw $t0, -3452($fp)
	lw $t1, 0($t0)
	sw $t1, -3456($fp)
	li $t0, 538
	sw $t0, -3460($fp)
	addi $t0, $fp, -3312
	sw $t0, -3464($fp)
	li $t0, 4
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
	li $t0, 30399
	sw $t0, -3484($fp)
	addi $t0, $fp, -3312
	sw $t0, -3488($fp)
	li $t0, 5
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
	li $t0, 60135
	sw $t0, -3508($fp)
	addi $t0, $fp, -3312
	sw $t0, -3512($fp)
	li $t0, 6
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
	li $t0, 52727
	sw $t0, -3532($fp)
	addi $t0, $fp, -3312
	sw $t0, -3536($fp)
	li $t0, 7
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
	li $t0, 60675
	sw $t0, -3556($fp)
	lw $t0, -3556($fp)
	sw $t0, -3560($fp)
	lw $t0, -3560($fp)
	sw $t0, -3564($fp)
	li $t0, 21423
	sw $t0, -3568($fp)
	addi $t0, $fp, -3352
	sw $t0, -3572($fp)
	li $t0, 0
	sw $t0, -3576($fp)
	lw $t0, -3576($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3580($fp)
	lw $t0, -3572($fp)
	lw $t1, -3580($fp)
	add $t0, $t0, $t1
	sw $t0, -3584($fp)
	lw $t0, -3568($fp)
	lw $t1, -3584($fp)
	sw $t0, 0($t1)
	lw $t0, -3584($fp)
	lw $t1, 0($t0)
	sw $t1, -3588($fp)
	li $t0, 4651
	sw $t0, -3592($fp)
	addi $t0, $fp, -3352
	sw $t0, -3596($fp)
	li $t0, 1
	sw $t0, -3600($fp)
	lw $t0, -3600($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3604($fp)
	lw $t0, -3596($fp)
	lw $t1, -3604($fp)
	add $t0, $t0, $t1
	sw $t0, -3608($fp)
	lw $t0, -3592($fp)
	lw $t1, -3608($fp)
	sw $t0, 0($t1)
	lw $t0, -3608($fp)
	lw $t1, 0($t0)
	sw $t1, -3612($fp)
	li $t0, 24235
	sw $t0, -3616($fp)
	addi $t0, $fp, -3352
	sw $t0, -3620($fp)
	li $t0, 2
	sw $t0, -3624($fp)
	lw $t0, -3624($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3628($fp)
	lw $t0, -3620($fp)
	lw $t1, -3628($fp)
	add $t0, $t0, $t1
	sw $t0, -3632($fp)
	lw $t0, -3616($fp)
	lw $t1, -3632($fp)
	sw $t0, 0($t1)
	lw $t0, -3632($fp)
	lw $t1, 0($t0)
	sw $t1, -3636($fp)
	li $t0, 49140
	sw $t0, -3640($fp)
	addi $t0, $fp, -3352
	sw $t0, -3644($fp)
	li $t0, 3
	sw $t0, -3648($fp)
	lw $t0, -3648($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3652($fp)
	lw $t0, -3644($fp)
	lw $t1, -3652($fp)
	add $t0, $t0, $t1
	sw $t0, -3656($fp)
	lw $t0, -3640($fp)
	lw $t1, -3656($fp)
	sw $t0, 0($t1)
	lw $t0, -3656($fp)
	lw $t1, 0($t0)
	sw $t1, -3660($fp)
	li $t0, 62805
	sw $t0, -3664($fp)
	addi $t0, $fp, -3352
	sw $t0, -3668($fp)
	li $t0, 4
	sw $t0, -3672($fp)
	lw $t0, -3672($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3676($fp)
	lw $t0, -3668($fp)
	lw $t1, -3676($fp)
	add $t0, $t0, $t1
	sw $t0, -3680($fp)
	lw $t0, -3664($fp)
	lw $t1, -3680($fp)
	sw $t0, 0($t1)
	lw $t0, -3680($fp)
	lw $t1, 0($t0)
	sw $t1, -3684($fp)
	li $t0, 37854
	sw $t0, -3688($fp)
	addi $t0, $fp, -3352
	sw $t0, -3692($fp)
	li $t0, 5
	sw $t0, -3696($fp)
	lw $t0, -3696($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3700($fp)
	lw $t0, -3692($fp)
	lw $t1, -3700($fp)
	add $t0, $t0, $t1
	sw $t0, -3704($fp)
	lw $t0, -3688($fp)
	lw $t1, -3704($fp)
	sw $t0, 0($t1)
	lw $t0, -3704($fp)
	lw $t1, 0($t0)
	sw $t1, -3708($fp)
	li $t0, 59173
	sw $t0, -3712($fp)
	addi $t0, $fp, -3352
	sw $t0, -3716($fp)
	li $t0, 6
	sw $t0, -3720($fp)
	lw $t0, -3720($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3724($fp)
	lw $t0, -3716($fp)
	lw $t1, -3724($fp)
	add $t0, $t0, $t1
	sw $t0, -3728($fp)
	lw $t0, -3712($fp)
	lw $t1, -3728($fp)
	sw $t0, 0($t1)
	lw $t0, -3728($fp)
	lw $t1, 0($t0)
	sw $t1, -3732($fp)
	li $t0, 40435
	sw $t0, -3736($fp)
	addi $t0, $fp, -3352
	sw $t0, -3740($fp)
	li $t0, 7
	sw $t0, -3744($fp)
	lw $t0, -3744($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3748($fp)
	lw $t0, -3740($fp)
	lw $t1, -3748($fp)
	add $t0, $t0, $t1
	sw $t0, -3752($fp)
	lw $t0, -3736($fp)
	lw $t1, -3752($fp)
	sw $t0, 0($t1)
	lw $t0, -3752($fp)
	lw $t1, 0($t0)
	sw $t1, -3756($fp)
	li $t0, 25649
	sw $t0, -3760($fp)
	addi $t0, $fp, -3352
	sw $t0, -3764($fp)
	li $t0, 8
	sw $t0, -3768($fp)
	lw $t0, -3768($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3772($fp)
	lw $t0, -3764($fp)
	lw $t1, -3772($fp)
	add $t0, $t0, $t1
	sw $t0, -3776($fp)
	lw $t0, -3760($fp)
	lw $t1, -3776($fp)
	sw $t0, 0($t1)
	lw $t0, -3776($fp)
	lw $t1, 0($t0)
	sw $t1, -3780($fp)
	li $t0, 8634
	sw $t0, -3784($fp)
	addi $t0, $fp, -3352
	sw $t0, -3788($fp)
	li $t0, 9
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
	li $t0, 60013
	sw $t0, -3808($fp)
	lw $t0, -3808($fp)
	sw $t0, -3812($fp)
	lw $t0, -3812($fp)
	sw $t0, -3816($fp)
	li $t0, 46130
	sw $t0, -3820($fp)
	addi $t0, $fp, -3360
	sw $t0, -3824($fp)
	li $t0, 0
	sw $t0, -3828($fp)
	lw $t0, -3828($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3832($fp)
	lw $t0, -3824($fp)
	lw $t1, -3832($fp)
	add $t0, $t0, $t1
	sw $t0, -3836($fp)
	lw $t0, -3820($fp)
	lw $t1, -3836($fp)
	sw $t0, 0($t1)
	lw $t0, -3836($fp)
	lw $t1, 0($t0)
	sw $t1, -3840($fp)
	li $t0, 11013
	sw $t0, -3844($fp)
	addi $t0, $fp, -3360
	sw $t0, -3848($fp)
	li $t0, 1
	sw $t0, -3852($fp)
	lw $t0, -3852($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3856($fp)
	lw $t0, -3848($fp)
	lw $t1, -3856($fp)
	add $t0, $t0, $t1
	sw $t0, -3860($fp)
	lw $t0, -3844($fp)
	lw $t1, -3860($fp)
	sw $t0, 0($t1)
	lw $t0, -3860($fp)
	lw $t1, 0($t0)
	sw $t1, -3864($fp)
	li $t0, 0
	sw $t0, -3868($fp)
	li $t0, 0
	sw $t0, -3872($fp)
	addi $t0, $fp, -496
	sw $t0, -3876($fp)
	lw $t0, -76($fp)
	sw $t0, -3880($fp)
	li $t0, 4
	lw $t1, -3880($fp)
	mul $t0, $t0, $t1
	sw $t0, -3884($fp)
	lw $t0, -3884($fp)
	lw $t1, -3876($fp)
	add $t0, $t0, $t1
	sw $t0, -3888($fp)
	lw $t0, -3888($fp)
	lw $t1, 0($t0)
	sw $t1, -3892($fp)
	lw $t1, -3892($fp)
	li $t2, 0
	bne $t1, $t2, label230
	j label229
label229:
	li $t0, 1
	sw $t0, -3872($fp)
label230:
	li $t0, 0
	sw $t0, -3896($fp)
	addi $t0, $fp, -3352
	sw $t0, -3900($fp)
	lw $t0, -656($fp)
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
	lw $t1, -3916($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label231
label231:
	li $t0, 1
	sw $t0, -3896($fp)
label232:
	lw $t0, -3872($fp)
	lw $t1, -3896($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3920($fp)
	li $t0, 0
	lw $t1, -3920($fp)
	sub $t0, $t0, $t1
	sw $t0, -3924($fp)
	lw $t1, -3924($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label227
label227:
	li $t0, 1
	sw $t0, -3868($fp)
label228:
	li $t0, 0
	sw $t0, -3928($fp)
	addi $t0, $fp, -8
	sw $t0, -3932($fp)
	lw $t0, -620($fp)
	sw $t0, -3936($fp)
	li $t0, 40301
	sw $t0, -3940($fp)
	lw $t0, -3936($fp)
	lw $t1, -3940($fp)
	add $t0, $t0, $t1
	sw $t0, -3944($fp)
	li $t0, 4
	lw $t1, -3944($fp)
	mul $t0, $t0, $t1
	sw $t0, -3948($fp)
	lw $t0, -3948($fp)
	lw $t1, -3932($fp)
	add $t0, $t0, $t1
	sw $t0, -3952($fp)
	lw $t0, -3952($fp)
	lw $t1, 0($t0)
	sw $t1, -3956($fp)
	addi $t0, $fp, -3360
	sw $t0, -3960($fp)
	li $t0, 1
	sw $t0, -3964($fp)
	li $t0, 4
	lw $t1, -3964($fp)
	mul $t0, $t0, $t1
	sw $t0, -3968($fp)
	lw $t0, -3968($fp)
	lw $t1, -3960($fp)
	add $t0, $t0, $t1
	sw $t0, -3972($fp)
	lw $t0, -3972($fp)
	lw $t1, 0($t0)
	sw $t1, -3976($fp)
	lw $t0, -668($fp)
	sw $t0, -3980($fp)
	lw $t0, -3976($fp)
	lw $t1, -3980($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3984($fp)
	li $t0, 45136
	sw $t0, -3988($fp)
	lw $t0, -3812($fp)
	sw $t0, -3992($fp)
	lw $t0, -3988($fp)
	lw $t1, -3992($fp)
	mul $t0, $t0, $t1
	sw $t0, -3996($fp)
	addi $sp, $sp, -4
	lw $t0, -3984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3996($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4000($fp)
	addi $sp, $sp, 12
	lw $t0, -3956($fp)
	lw $t1, -4000($fp)
	add $t0, $t0, $t1
	sw $t0, -4004($fp)
	addi $t0, $fp, -476
	sw $t0, -4008($fp)
	lw $t0, -944($fp)
	sw $t0, -4012($fp)
	li $t0, 4
	lw $t1, -4012($fp)
	mul $t0, $t0, $t1
	sw $t0, -4016($fp)
	lw $t0, -4016($fp)
	lw $t1, -4008($fp)
	add $t0, $t0, $t1
	sw $t0, -4020($fp)
	lw $t0, -4020($fp)
	lw $t1, 0($t0)
	sw $t1, -4024($fp)
	addi $t0, $fp, -8
	sw $t0, -4028($fp)
	lw $t0, -76($fp)
	sw $t0, -4032($fp)
	li $t0, 4
	lw $t1, -4032($fp)
	mul $t0, $t0, $t1
	sw $t0, -4036($fp)
	lw $t0, -4036($fp)
	lw $t1, -4028($fp)
	add $t0, $t0, $t1
	sw $t0, -4040($fp)
	lw $t0, -4040($fp)
	lw $t1, 0($t0)
	sw $t1, -4044($fp)
	lw $t0, -4024($fp)
	lw $t1, -4044($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4048($fp)
	lw $t1, -4004($fp)
	lw $t2, -4048($fp)
	bgt $t1, $t2, label233
	j label234
label233:
	li $t0, 1
	sw $t0, -3928($fp)
label234:
	lw $t0, -704($fp)
	sw $t0, -4052($fp)
	li $t0, 0
	lw $t1, -4052($fp)
	sub $t0, $t0, $t1
	sw $t0, -4056($fp)
	addi $t0, $fp, -3312
	sw $t0, -4060($fp)
	addi $t0, $fp, -528
	sw $t0, -4064($fp)
	li $t0, 2
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
	li $t0, 4
	lw $t1, -4080($fp)
	mul $t0, $t0, $t1
	sw $t0, -4084($fp)
	lw $t0, -4084($fp)
	lw $t1, -4060($fp)
	add $t0, $t0, $t1
	sw $t0, -4088($fp)
	lw $t0, -4088($fp)
	lw $t1, 0($t0)
	sw $t1, -4092($fp)
	lw $t0, -4056($fp)
	lw $t1, -4092($fp)
	add $t0, $t0, $t1
	sw $t0, -4096($fp)
	addi $t0, $fp, -552
	sw $t0, -4100($fp)
	li $t0, 4
	sw $t0, -4104($fp)
	li $t0, 4
	lw $t1, -4104($fp)
	mul $t0, $t0, $t1
	sw $t0, -4108($fp)
	lw $t0, -4108($fp)
	lw $t1, -4100($fp)
	add $t0, $t0, $t1
	sw $t0, -4112($fp)
	lw $t0, -4112($fp)
	lw $t1, 0($t0)
	sw $t1, -4116($fp)
	li $t0, 36814
	sw $t0, -4120($fp)
	li $t0, 47310
	sw $t0, -4124($fp)
	lw $t0, -4120($fp)
	lw $t1, -4124($fp)
	mul $t0, $t0, $t1
	sw $t0, -4128($fp)
	lw $t0, -4116($fp)
	lw $t1, -4128($fp)
	sub $t0, $t0, $t1
	sw $t0, -4132($fp)
	lw $t0, -4132($fp)
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -4136($fp)
	addi $t0, $fp, -3312
	sw $t0, -4140($fp)
	lw $t0, -644($fp)
	sw $t0, -4144($fp)
	lw $t0, -4144($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -4148($fp)
	li $t0, 4
	lw $t1, -4148($fp)
	mul $t0, $t0, $t1
	sw $t0, -4152($fp)
	lw $t0, -4152($fp)
	lw $t1, -4140($fp)
	add $t0, $t0, $t1
	sw $t0, -4156($fp)
	lw $t0, -4156($fp)
	lw $t1, 0($t0)
	sw $t1, -4160($fp)
	li $t0, 0
	sw $t0, -4164($fp)
	li $t0, 0
	sw $t0, -4168($fp)
	li $t0, 0
	sw $t0, -4172($fp)
	lw $t0, -1616($fp)
	sw $t0, -4176($fp)
	lw $t0, 8($fp)
	sw $t0, -4180($fp)
	lw $t1, -4176($fp)
	lw $t2, -4180($fp)
	bgt $t1, $t2, label240
	j label241
label240:
	li $t0, 1
	sw $t0, -4172($fp)
label241:
	li $t0, 49473
	sw $t0, -4184($fp)
	lw $t1, -4172($fp)
	lw $t2, -4184($fp)
	beq $t1, $t2, label238
	j label239
label238:
	li $t0, 1
	sw $t0, -4168($fp)
label239:
	li $t0, 0
	sw $t0, -4188($fp)
	lw $t0, -1208($fp)
	sw $t0, -4192($fp)
	li $t0, 23590
	sw $t0, -4196($fp)
	lw $t0, -4192($fp)
	lw $t1, -4196($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4200($fp)
	lw $t1, -4200($fp)
	li $t2, 0
	bne $t1, $t2, label242
	j label244
label244:
	lw $t0, -1208($fp)
	sw $t0, -4204($fp)
	lw $t1, -4204($fp)
	li $t2, 0
	bne $t1, $t2, label242
	j label243
label242:
	li $t0, 1
	sw $t0, -4188($fp)
label243:
	addi $sp, $sp, -4
	lw $t0, -4168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4188($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4208($fp)
	addi $sp, $sp, 12
	lw $t1, -4208($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label237
label237:
	li $t0, 15717
	sw $t0, -4212($fp)
	lw $t1, -4212($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label236
label235:
	li $t0, 1
	sw $t0, -4164($fp)
label236:
	li $t0, 0
	sw $t0, -4216($fp)
	li $t0, 15179
	sw $t0, -4220($fp)
	lw $t1, -4220($fp)
	li $t2, 0
	bne $t1, $t2, label248
	j label246
label248:
	lw $t0, -704($fp)
	sw $t0, -4224($fp)
	lw $t1, -4224($fp)
	li $t2, 0
	bne $t1, $t2, label247
	j label246
label247:
	lw $t0, -3560($fp)
	sw $t0, -4228($fp)
	lw $t1, -4228($fp)
	li $t2, 0
	bne $t1, $t2, label245
	j label246
label245:
	li $t0, 1
	sw $t0, -4216($fp)
label246:
	addi $sp, $sp, -4
	lw $t0, -4164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4216($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4232($fp)
	addi $sp, $sp, 12
	lw $t0, -4160($fp)
	lw $t1, -4232($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4236($fp)
	li $t0, 0
	sw $t0, -4240($fp)
	lw $t0, -704($fp)
	sw $t0, -4244($fp)
	lw $t0, -1364($fp)
	sw $t0, -4248($fp)
	lw $t0, -4244($fp)
	lw $t1, -4248($fp)
	add $t0, $t0, $t1
	sw $t0, -4252($fp)
	li $t0, 44072
	sw $t0, -4256($fp)
	lw $t1, -4252($fp)
	lw $t2, -4256($fp)
	beq $t1, $t2, label249
	j label250
label249:
	li $t0, 1
	sw $t0, -4240($fp)
label250:
	li $t0, 53989
	sw $t0, -4260($fp)
	lw $t0, -644($fp)
	sw $t0, -4264($fp)
	lw $t0, -4260($fp)
	lw $t1, -4264($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4268($fp)
	lw $t0, -644($fp)
	sw $t0, -4272($fp)
	lw $t0, -4268($fp)
	lw $t1, -4272($fp)
	mul $t0, $t0, $t1
	sw $t0, -4276($fp)
	addi $sp, $sp, -4
	lw $t0, -4240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4276($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4280($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -4284($fp)
	addi $t0, $fp, -552
	sw $t0, -4288($fp)
	lw $t0, -632($fp)
	sw $t0, -4292($fp)
	li $t0, 4
	lw $t1, -4292($fp)
	mul $t0, $t0, $t1
	sw $t0, -4296($fp)
	lw $t0, -4296($fp)
	lw $t1, -4288($fp)
	add $t0, $t0, $t1
	sw $t0, -4300($fp)
	lw $t0, -4300($fp)
	lw $t1, 0($t0)
	sw $t1, -4304($fp)
	lw $t1, -4304($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label251
label251:
	li $t0, 1
	sw $t0, -4284($fp)
label252:
	lw $t0, -4280($fp)
	lw $t1, -4284($fp)
	mul $t0, $t0, $t1
	sw $t0, -4308($fp)
	li $t0, 0
	lw $t1, -4308($fp)
	sub $t0, $t0, $t1
	sw $t0, -4312($fp)
	addi $t0, $fp, -504
	sw $t0, -4316($fp)
	li $t0, 0
	sw $t0, -4320($fp)
	lw $t0, -76($fp)
	sw $t0, -4324($fp)
	lw $t1, -4324($fp)
	li $t2, 0
	bne $t1, $t2, label254
	j label253
label253:
	li $t0, 1
	sw $t0, -4320($fp)
label254:
	li $t0, 4
	lw $t1, -4320($fp)
	mul $t0, $t0, $t1
	sw $t0, -4328($fp)
	lw $t0, -4328($fp)
	lw $t1, -4316($fp)
	add $t0, $t0, $t1
	sw $t0, -4332($fp)
	lw $t0, -4332($fp)
	lw $t1, 0($t0)
	sw $t1, -4336($fp)
	li $t0, 0
	sw $t0, -4340($fp)
	lw $t0, 8($fp)
	sw $t0, -4344($fp)
	lw $t1, -4344($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label255
label255:
	li $t0, 1
	sw $t0, -4340($fp)
label256:
	lw $t0, -4336($fp)
	lw $t1, -4340($fp)
	mul $t0, $t0, $t1
	sw $t0, -4348($fp)
	lw $t0, 8($fp)
	sw $t0, -4352($fp)
	lw $t0, -4348($fp)
	lw $t1, -4352($fp)
	add $t0, $t0, $t1
	sw $t0, -4356($fp)
	li $t0, 2908
	sw $t0, -4368($fp)
	addi $t0, $fp, -4364
	sw $t0, -4372($fp)
	li $t0, 0
	sw $t0, -4376($fp)
	lw $t0, -4376($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4380($fp)
	lw $t0, -4372($fp)
	lw $t1, -4380($fp)
	add $t0, $t0, $t1
	sw $t0, -4384($fp)
	lw $t0, -4368($fp)
	lw $t1, -4384($fp)
	sw $t0, 0($t1)
	lw $t0, -4384($fp)
	lw $t1, 0($t0)
	sw $t1, -4388($fp)
	li $t0, 49128
	sw $t0, -4392($fp)
	addi $t0, $fp, -4364
	sw $t0, -4396($fp)
	li $t0, 1
	sw $t0, -4400($fp)
	lw $t0, -4400($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4404($fp)
	lw $t0, -4396($fp)
	lw $t1, -4404($fp)
	add $t0, $t0, $t1
	sw $t0, -4408($fp)
	lw $t0, -4392($fp)
	lw $t1, -4408($fp)
	sw $t0, 0($t1)
	lw $t0, -4408($fp)
	lw $t1, 0($t0)
	sw $t1, -4412($fp)
	li $t0, 65495
	sw $t0, -4416($fp)
	lw $t0, -4416($fp)
	sw $t0, -4420($fp)
	lw $t0, -4420($fp)
	sw $t0, -4424($fp)
	li $t0, 0
	sw $t0, -4428($fp)
	lw $t0, -1616($fp)
	sw $t0, -4432($fp)
	li $t0, 0
	lw $t1, -4432($fp)
	sub $t0, $t0, $t1
	sw $t0, -4436($fp)
	li $t0, 0
	lw $t1, -4436($fp)
	sub $t0, $t0, $t1
	sw $t0, -4440($fp)
	lw $t0, -4420($fp)
	sw $t0, -4444($fp)
	lw $t0, -1616($fp)
	sw $t0, -4448($fp)
	lw $t0, -4444($fp)
	lw $t1, -4448($fp)
	mul $t0, $t0, $t1
	sw $t0, -4452($fp)
	lw $t1, -4440($fp)
	lw $t2, -4452($fp)
	blt $t1, $t2, label257
	j label258
label257:
	li $t0, 1
	sw $t0, -4428($fp)
label258:
	lw $t0, -4428($fp)
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	sw $t0, -4456($fp)
	addi $t0, $fp, -4364
	sw $t0, -4460($fp)
	lw $t0, -1136($fp)
	sw $t0, -4464($fp)
	li $t0, 4
	lw $t1, -4464($fp)
	mul $t0, $t0, $t1
	sw $t0, -4468($fp)
	lw $t0, -4468($fp)
	lw $t1, -4460($fp)
	add $t0, $t0, $t1
	sw $t0, -4472($fp)
	lw $t0, -4472($fp)
	lw $t1, 0($t0)
	sw $t1, -4476($fp)
	li $t0, 7827
	sw $t0, -4480($fp)
	lw $t0, -4476($fp)
	lw $t1, -4480($fp)
	add $t0, $t0, $t1
	sw $t0, -4484($fp)
	li $t0, 7559
	sw $t0, -4488($fp)
	lw $t0, -4488($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -4492($fp)
	li $t0, 0
	sw $t0, -4496($fp)
	lw $t0, -76($fp)
	sw $t0, -4500($fp)
	li $t0, 0
	lw $t1, -4500($fp)
	sub $t0, $t0, $t1
	sw $t0, -4504($fp)
	lw $t0, -848($fp)
	sw $t0, -4508($fp)
	lw $t1, -4504($fp)
	lw $t2, -4508($fp)
	beq $t1, $t2, label259
	j label260
label259:
	li $t0, 1
	sw $t0, -4496($fp)
label260:
	addi $sp, $sp, -4
	lw $t0, -4484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4496($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4512($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -4512($fp)
	sub $t0, $t0, $t1
	sw $t0, -4516($fp)
	li $t0, 0
	sw $t0, -4520($fp)
	lw $t0, -1208($fp)
	sw $t0, -4524($fp)
	li $t0, 45682
	sw $t0, -4528($fp)
	lw $t0, -4524($fp)
	lw $t1, -4528($fp)
	mul $t0, $t0, $t1
	sw $t0, -4532($fp)
	lw $t0, -608($fp)
	sw $t0, -4536($fp)
	lw $t1, -4532($fp)
	lw $t2, -4536($fp)
	blt $t1, $t2, label261
	j label262
label261:
	li $t0, 1
	sw $t0, -4520($fp)
label262:
	li $t0, 4829
	sw $t0, -4540($fp)
	lw $t0, -4540($fp)
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -4544($fp)
	li $t0, 49099
	sw $t0, -4548($fp)
	addi $sp, $sp, -4
	lw $t0, -4520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4548($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4552($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -4556($fp)
	li $t0, 42737
	sw $t0, -4560($fp)
	lw $t0, -1616($fp)
	sw $t0, -4564($fp)
	li $t0, 45264
	sw $t0, -4568($fp)
	lw $t0, -4564($fp)
	lw $t1, -4568($fp)
	sub $t0, $t0, $t1
	sw $t0, -4572($fp)
	lw $t1, -4560($fp)
	lw $t2, -4572($fp)
	bge $t1, $t2, label263
	j label264
label263:
	li $t0, 1
	sw $t0, -4556($fp)
label264:
	lw $t0, -4556($fp)
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -4576($fp)
	lw $ra, -4($fp)
	lw $v0, -4576($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -4580($fp)
	addi $t0, $fp, -552
	sw $t0, -4584($fp)
	lw $t0, -656($fp)
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
	lw $t0, -716($fp)
	sw $t0, -4604($fp)
	lw $t0, -4600($fp)
	lw $t1, -4604($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4608($fp)
	lw $t1, -4608($fp)
	li $t2, 0
	bne $t1, $t2, label265
	j label268
label268:
	li $t0, 5795
	sw $t0, -4612($fp)
	lw $t0, -656($fp)
	sw $t0, -4616($fp)
	lw $t0, -4612($fp)
	lw $t1, -4616($fp)
	mul $t0, $t0, $t1
	sw $t0, -4620($fp)
	lw $t0, -76($fp)
	sw $t0, -4624($fp)
	lw $t1, -4620($fp)
	lw $t2, -4624($fp)
	beq $t1, $t2, label265
	j label267
label267:
	li $t0, 51371
	sw $t0, -4628($fp)
	li $t0, 0
	lw $t1, -4628($fp)
	sub $t0, $t0, $t1
	sw $t0, -4632($fp)
	li $t0, 39741
	sw $t0, -4636($fp)
	lw $t1, -4632($fp)
	lw $t2, -4636($fp)
	bgt $t1, $t2, label269
	j label266
label269:
	lw $t0, -632($fp)
	sw $t0, -4640($fp)
	lw $t0, -1124($fp)
	sw $t0, -4644($fp)
	lw $t1, -4640($fp)
	lw $t2, -4644($fp)
	beq $t1, $t2, label265
	j label266
label265:
	li $t0, 1
	sw $t0, -4580($fp)
label266:
	li $t0, 0
	sw $t0, -4648($fp)
	li $t0, 51925
	sw $t0, -4652($fp)
	li $t0, 1
	sw $t0, -4656($fp)
	lw $t0, -4652($fp)
	lw $t1, -4656($fp)
	mul $t0, $t0, $t1
	sw $t0, -4660($fp)
	li $t0, 0
	sw $t0, -4664($fp)
	lw $t0, -1160($fp)
	sw $t0, -4668($fp)
	lw $t1, -4668($fp)
	li $t2, 0
	bne $t1, $t2, label275
	j label276
label275:
	li $t0, 1
	sw $t0, -4664($fp)
label276:
	li $t0, 14506
	sw $t0, -4672($fp)
	lw $t0, -956($fp)
	sw $t0, -4676($fp)
	addi $sp, $sp, -4
	lw $t0, -4664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4676($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4680($fp)
	addi $sp, $sp, 16
	lw $t0, -4660($fp)
	lw $t1, -4680($fp)
	mul $t0, $t0, $t1
	sw $t0, -4684($fp)
	lw $t0, -1172($fp)
	sw $t0, -4688($fp)
	lw $t1, -4684($fp)
	lw $t2, -4688($fp)
	ble $t1, $t2, label273
	j label274
label273:
	li $t0, 1
	sw $t0, -4648($fp)
label274:
	lw $t0, -1112($fp)
	sw $t0, -4692($fp)
	lw $t1, -4648($fp)
	lw $t2, -4692($fp)
	bne $t1, $t2, label270
	j label271
label270:
	li $t0, 0
	sw $t0, -4696($fp)
	li $t0, 0
	sw $t0, -4700($fp)
	li $t0, 0
	sw $t0, -4704($fp)
	li $t0, 0
	sw $t0, -4708($fp)
	lw $t0, -1184($fp)
	sw $t0, -4712($fp)
	lw $t0, -1196($fp)
	sw $t0, -4716($fp)
	lw $t1, -4712($fp)
	lw $t2, -4716($fp)
	bge $t1, $t2, label286
	j label287
label286:
	li $t0, 1
	sw $t0, -4708($fp)
label287:
	li $t0, 31526
	sw $t0, -4720($fp)
	lw $t1, -4708($fp)
	lw $t2, -4720($fp)
	beq $t1, $t2, label284
	j label285
label284:
	li $t0, 1
	sw $t0, -4704($fp)
label285:
	li $t0, 0
	sw $t0, -4724($fp)
	li $t0, 14929
	sw $t0, -4728($fp)
	li $t0, 45721
	sw $t0, -4732($fp)
	lw $t1, -4728($fp)
	lw $t2, -4732($fp)
	ble $t1, $t2, label288
	j label289
label288:
	li $t0, 1
	sw $t0, -4724($fp)
label289:
	lw $t1, -4704($fp)
	lw $t2, -4724($fp)
	bne $t1, $t2, label282
	j label283
label282:
	li $t0, 1
	sw $t0, -4700($fp)
label283:
	lw $t0, -920($fp)
	sw $t0, -4736($fp)
	lw $t0, -1208($fp)
	sw $t0, -4740($fp)
	lw $t0, -4736($fp)
	lw $t1, -4740($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4744($fp)
	lw $t0, -1208($fp)
	sw $t0, -4748($fp)
	lw $t0, -4744($fp)
	lw $t1, -4748($fp)
	mul $t0, $t0, $t1
	sw $t0, -4752($fp)
	lw $t1, -4700($fp)
	lw $t2, -4752($fp)
	beq $t1, $t2, label280
	j label281
label280:
	li $t0, 1
	sw $t0, -4696($fp)
label281:
	li $t0, 0
	sw $t0, -4756($fp)
	li $t0, 24575
	sw $t0, -4760($fp)
	lw $t1, -4760($fp)
	li $t2, 0
	bne $t1, $t2, label291
	j label290
label290:
	li $t0, 1
	sw $t0, -4756($fp)
label291:
	lw $t1, -4696($fp)
	lw $t2, -4756($fp)
	beq $t1, $t2, label277
	j label278
label277:
label292:
	addi $t0, $fp, -476
	sw $t0, -4764($fp)
	lw $t0, 12($fp)
	sw $t0, -4768($fp)
	li $t0, 4
	lw $t1, -4768($fp)
	mul $t0, $t0, $t1
	sw $t0, -4772($fp)
	lw $t0, -4772($fp)
	lw $t1, -4764($fp)
	add $t0, $t0, $t1
	sw $t0, -4776($fp)
	lw $t0, -4776($fp)
	lw $t1, 0($t0)
	sw $t1, -4780($fp)
	li $t0, 60376
	sw $t0, -4784($fp)
	lw $t0, -76($fp)
	sw $t0, -4788($fp)
	lw $t0, -4784($fp)
	lw $t1, -4788($fp)
	mul $t0, $t0, $t1
	sw $t0, -4792($fp)
	lw $t0, -4780($fp)
	lw $t1, -4792($fp)
	sub $t0, $t0, $t1
	sw $t0, -4796($fp)
	lw $t0, -1172($fp)
	sw $t0, -4800($fp)
	lw $t0, -1376($fp)
	sw $t0, -4804($fp)
	lw $t0, -4800($fp)
	lw $t1, -4804($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4808($fp)
	lw $t0, -4796($fp)
	lw $t1, -4808($fp)
	add $t0, $t0, $t1
	sw $t0, -4812($fp)
	lw $t1, -4812($fp)
	li $t2, 0
	bne $t1, $t2, label293
	j label295
label295:
	li $t0, 0
	sw $t0, -4816($fp)
	lw $t0, -1388($fp)
	sw $t0, -4820($fp)
	lw $t1, -4820($fp)
	li $t2, 0
	bne $t1, $t2, label297
	j label298
label298:
	li $t0, 31654
	sw $t0, -4824($fp)
	lw $t1, -4824($fp)
	li $t2, 0
	bne $t1, $t2, label296
	j label297
label296:
	li $t0, 1
	sw $t0, -4816($fp)
label297:
	li $t0, 0
	sw $t0, -4828($fp)
	li $t0, 63286
	sw $t0, -4832($fp)
	li $t0, 3015
	sw $t0, -4836($fp)
	lw $t1, -4832($fp)
	lw $t2, -4836($fp)
	bge $t1, $t2, label299
	j label300
label299:
	li $t0, 1
	sw $t0, -4828($fp)
label300:
	addi $sp, $sp, -4
	lw $t0, -4816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4828($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4840($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -588
	sw $t0, -4844($fp)
	lw $t0, 8($fp)
	sw $t0, -4848($fp)
	li $t0, 4
	lw $t1, -4848($fp)
	mul $t0, $t0, $t1
	sw $t0, -4852($fp)
	lw $t0, -4852($fp)
	lw $t1, -4844($fp)
	add $t0, $t0, $t1
	sw $t0, -4856($fp)
	lw $t0, -4856($fp)
	lw $t1, 0($t0)
	sw $t1, -4860($fp)
	lw $t0, -4840($fp)
	lw $t1, -4860($fp)
	sub $t0, $t0, $t1
	sw $t0, -4864($fp)
	lw $t1, -4864($fp)
	li $t2, 0
	bne $t1, $t2, label293
	j label294
label293:
	li $t0, 45061
	sw $t0, -4892($fp)
	lw $t0, -4892($fp)
	sw $t0, -4896($fp)
	lw $t0, -4896($fp)
	sw $t0, -4900($fp)
	li $t0, 18194
	sw $t0, -4904($fp)
	addi $t0, $fp, -4888
	sw $t0, -4908($fp)
	li $t0, 0
	sw $t0, -4912($fp)
	lw $t0, -4912($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4916($fp)
	lw $t0, -4908($fp)
	lw $t1, -4916($fp)
	add $t0, $t0, $t1
	sw $t0, -4920($fp)
	lw $t0, -4904($fp)
	lw $t1, -4920($fp)
	sw $t0, 0($t1)
	lw $t0, -4920($fp)
	lw $t1, 0($t0)
	sw $t1, -4924($fp)
	li $t0, 55244
	sw $t0, -4928($fp)
	addi $t0, $fp, -4888
	sw $t0, -4932($fp)
	li $t0, 1
	sw $t0, -4936($fp)
	lw $t0, -4936($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4940($fp)
	lw $t0, -4932($fp)
	lw $t1, -4940($fp)
	add $t0, $t0, $t1
	sw $t0, -4944($fp)
	lw $t0, -4928($fp)
	lw $t1, -4944($fp)
	sw $t0, 0($t1)
	lw $t0, -4944($fp)
	lw $t1, 0($t0)
	sw $t1, -4948($fp)
	li $t0, 28998
	sw $t0, -4952($fp)
	addi $t0, $fp, -4888
	sw $t0, -4956($fp)
	li $t0, 2
	sw $t0, -4960($fp)
	lw $t0, -4960($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4964($fp)
	lw $t0, -4956($fp)
	lw $t1, -4964($fp)
	add $t0, $t0, $t1
	sw $t0, -4968($fp)
	lw $t0, -4952($fp)
	lw $t1, -4968($fp)
	sw $t0, 0($t1)
	lw $t0, -4968($fp)
	lw $t1, 0($t0)
	sw $t1, -4972($fp)
	li $t0, 33911
	sw $t0, -4976($fp)
	addi $t0, $fp, -4888
	sw $t0, -4980($fp)
	li $t0, 3
	sw $t0, -4984($fp)
	lw $t0, -4984($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4988($fp)
	lw $t0, -4980($fp)
	lw $t1, -4988($fp)
	add $t0, $t0, $t1
	sw $t0, -4992($fp)
	lw $t0, -4976($fp)
	lw $t1, -4992($fp)
	sw $t0, 0($t1)
	lw $t0, -4992($fp)
	lw $t1, 0($t0)
	sw $t1, -4996($fp)
	li $t0, 43698
	sw $t0, -5000($fp)
	addi $t0, $fp, -4888
	sw $t0, -5004($fp)
	li $t0, 4
	sw $t0, -5008($fp)
	lw $t0, -5008($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5012($fp)
	lw $t0, -5004($fp)
	lw $t1, -5012($fp)
	add $t0, $t0, $t1
	sw $t0, -5016($fp)
	lw $t0, -5000($fp)
	lw $t1, -5016($fp)
	sw $t0, 0($t1)
	lw $t0, -5016($fp)
	lw $t1, 0($t0)
	sw $t1, -5020($fp)
	li $t0, 7534
	sw $t0, -5024($fp)
	addi $t0, $fp, -4888
	sw $t0, -5028($fp)
	li $t0, 5
	sw $t0, -5032($fp)
	lw $t0, -5032($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5036($fp)
	lw $t0, -5028($fp)
	lw $t1, -5036($fp)
	add $t0, $t0, $t1
	sw $t0, -5040($fp)
	lw $t0, -5024($fp)
	lw $t1, -5040($fp)
	sw $t0, 0($t1)
	lw $t0, -5040($fp)
	lw $t1, 0($t0)
	sw $t1, -5044($fp)
label301:
	lw $t0, -716($fp)
	sw $t0, -5048($fp)
	lw $t0, -920($fp)
	sw $t0, -5052($fp)
	lw $t0, -5048($fp)
	lw $t1, -5052($fp)
	mul $t0, $t0, $t1
	sw $t0, -5056($fp)
	lw $t0, -76($fp)
	sw $t0, -5060($fp)
	lw $t0, -656($fp)
	sw $t0, -5064($fp)
	lw $t0, -5060($fp)
	lw $t1, -5064($fp)
	sub $t0, $t0, $t1
	sw $t0, -5068($fp)
	li $t0, 36820
	sw $t0, -5072($fp)
	lw $t0, -5072($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -5076($fp)
	addi $sp, $sp, -4
	lw $t0, -5068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5076($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5080($fp)
	addi $sp, $sp, 12
	lw $t0, -5056($fp)
	lw $t1, -5080($fp)
	mul $t0, $t0, $t1
	sw $t0, -5084($fp)
	li $t0, 0
	sw $t0, -5088($fp)
	addi $t0, $fp, -496
	sw $t0, -5092($fp)
	lw $t0, -76($fp)
	sw $t0, -5096($fp)
	li $t0, 4
	lw $t1, -5096($fp)
	mul $t0, $t0, $t1
	sw $t0, -5100($fp)
	lw $t0, -5100($fp)
	lw $t1, -5092($fp)
	add $t0, $t0, $t1
	sw $t0, -5104($fp)
	lw $t0, -5104($fp)
	lw $t1, 0($t0)
	sw $t1, -5108($fp)
	lw $t1, -5108($fp)
	li $t2, 0
	bne $t1, $t2, label305
	j label304
label304:
	li $t0, 1
	sw $t0, -5088($fp)
label305:
	li $t0, 0
	lw $t1, -5088($fp)
	sub $t0, $t0, $t1
	sw $t0, -5112($fp)
	lw $t0, -5084($fp)
	lw $t1, -5112($fp)
	mul $t0, $t0, $t1
	sw $t0, -5116($fp)
	lw $t1, -5116($fp)
	li $t2, 0
	bne $t1, $t2, label302
	j label303
label302:
	li $t0, 0
	sw $t0, -5120($fp)
	li $t0, 27290
	sw $t0, -5124($fp)
	lw $t1, -5124($fp)
	li $t2, 0
	bne $t1, $t2, label307
	j label306
label306:
	li $t0, 1
	sw $t0, -5120($fp)
label307:
	lw $ra, -4($fp)
	lw $v0, -5120($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label301
label303:
label308:
	li $t0, 7493
	sw $t0, -5128($fp)
	li $t0, 0
	lw $t1, -5128($fp)
	sub $t0, $t0, $t1
	sw $t0, -5132($fp)
	lw $t0, -5132($fp)
	sw $t0, -4896($fp)
	lw $t0, -4896($fp)
	sw $t0, -5136($fp)
	lw $t1, -5136($fp)
	li $t2, 0
	bne $t1, $t2, label309
	j label310
label309:
	li $t0, 0
	sw $t0, -5140($fp)
	lw $t0, -1616($fp)
	sw $t0, -5144($fp)
	lw $t0, -608($fp)
	sw $t0, -5148($fp)
	li $t0, 0
	lw $t1, -5148($fp)
	sub $t0, $t0, $t1
	sw $t0, -5152($fp)
	lw $t1, -5144($fp)
	lw $t2, -5152($fp)
	bne $t1, $t2, label311
	j label312
label311:
	li $t0, 1
	sw $t0, -5140($fp)
label312:
	j label308
label310:
	li $t0, 0
	sw $t0, -5156($fp)
	addi $t0, $fp, -4888
	sw $t0, -5160($fp)
	lw $t0, -1616($fp)
	sw $t0, -5164($fp)
	li $t0, 4
	lw $t1, -5164($fp)
	mul $t0, $t0, $t1
	sw $t0, -5168($fp)
	lw $t0, -5168($fp)
	lw $t1, -5160($fp)
	add $t0, $t0, $t1
	sw $t0, -5172($fp)
	lw $t0, -5172($fp)
	lw $t1, 0($t0)
	sw $t1, -5176($fp)
	li $t0, 0
	lw $t1, -5176($fp)
	sub $t0, $t0, $t1
	sw $t0, -5180($fp)
	lw $t1, -5180($fp)
	li $t2, 0
	bne $t1, $t2, label317
	j label316
label316:
	li $t0, 1
	sw $t0, -5156($fp)
label317:
	li $t0, 0
	sw $t0, -5184($fp)
	li $t0, 0
	sw $t0, -5188($fp)
	li $t0, 21059
	sw $t0, -5192($fp)
	lw $t1, -5192($fp)
	li $t2, 0
	bne $t1, $t2, label321
	j label320
label320:
	li $t0, 1
	sw $t0, -5188($fp)
label321:
	li $t0, 0
	lw $t1, -5188($fp)
	sub $t0, $t0, $t1
	sw $t0, -5196($fp)
	lw $t0, -76($fp)
	sw $t0, -5200($fp)
	li $t0, 28936
	sw $t0, -5204($fp)
	lw $t0, -5200($fp)
	lw $t1, -5204($fp)
	mul $t0, $t0, $t1
	sw $t0, -5208($fp)
	lw $t0, -1124($fp)
	sw $t0, -5212($fp)
	lw $t0, -5208($fp)
	lw $t1, -5212($fp)
	sub $t0, $t0, $t1
	sw $t0, -5216($fp)
	li $t0, 0
	sw $t0, -5220($fp)
	lw $t0, 8($fp)
	sw $t0, -5224($fp)
	li $t0, 15264
	sw $t0, -5228($fp)
	lw $t0, -5224($fp)
	lw $t1, -5228($fp)
	sub $t0, $t0, $t1
	sw $t0, -5232($fp)
	li $t0, 33793
	sw $t0, -5236($fp)
	lw $t1, -5232($fp)
	lw $t2, -5236($fp)
	beq $t1, $t2, label322
	j label323
label322:
	li $t0, 1
	sw $t0, -5220($fp)
label323:
	addi $sp, $sp, -4
	lw $t0, -5196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5220($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5240($fp)
	addi $sp, $sp, 16
	li $t0, 19629
	sw $t0, -5244($fp)
	lw $t1, -5240($fp)
	lw $t2, -5244($fp)
	beq $t1, $t2, label318
	j label319
label318:
	li $t0, 1
	sw $t0, -5184($fp)
label319:
	li $t0, 0
	sw $t0, -5248($fp)
	addi $t0, $fp, -528
	sw $t0, -5252($fp)
	lw $t0, -1112($fp)
	sw $t0, -5256($fp)
	li $t0, 4
	lw $t1, -5256($fp)
	mul $t0, $t0, $t1
	sw $t0, -5260($fp)
	lw $t0, -5260($fp)
	lw $t1, -5252($fp)
	add $t0, $t0, $t1
	sw $t0, -5264($fp)
	lw $t0, -5264($fp)
	lw $t1, 0($t0)
	sw $t1, -5268($fp)
	li $t0, 49208
	sw $t0, -5272($fp)
	lw $t1, -5268($fp)
	lw $t2, -5272($fp)
	beq $t1, $t2, label324
	j label325
label324:
	li $t0, 1
	sw $t0, -5248($fp)
label325:
	li $t0, 0
	sw $t0, -5276($fp)
	li $t0, 35118
	sw $t0, -5280($fp)
	lw $t0, -932($fp)
	sw $t0, -5284($fp)
	lw $t0, -5280($fp)
	lw $t1, -5284($fp)
	add $t0, $t0, $t1
	sw $t0, -5288($fp)
	lw $t1, -5288($fp)
	li $t2, 0
	bne $t1, $t2, label326
	j label328
label328:
	li $t0, 56592
	sw $t0, -5292($fp)
	lw $t1, -5292($fp)
	li $t2, 0
	bne $t1, $t2, label326
	j label327
label326:
	li $t0, 1
	sw $t0, -5276($fp)
label327:
	li $t0, 44379
	sw $t0, -5296($fp)
	lw $t0, -1148($fp)
	sw $t0, -5300($fp)
	lw $t0, -5296($fp)
	lw $t1, -5300($fp)
	mul $t0, $t0, $t1
	sw $t0, -5304($fp)
	li $t0, 0
	lw $t1, -5304($fp)
	sub $t0, $t0, $t1
	sw $t0, -5308($fp)
	addi $sp, $sp, -4
	lw $t0, -5276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5308($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5312($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -5248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5312($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5316($fp)
	addi $sp, $sp, 12
	lw $t0, -704($fp)
	sw $t0, -5320($fp)
	li $t0, 0
	lw $t1, -5320($fp)
	sub $t0, $t0, $t1
	sw $t0, -5324($fp)
	li $t0, 0
	lw $t1, -5324($fp)
	sub $t0, $t0, $t1
	sw $t0, -5328($fp)
	addi $sp, $sp, -4
	lw $t0, -5184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5328($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5332($fp)
	addi $sp, $sp, 16
	li $t0, 3142
	sw $t0, -5336($fp)
	lw $t0, -5332($fp)
	lw $t1, -5336($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5340($fp)
	lw $t0, -1136($fp)
	sw $t0, -5344($fp)
	lw $t0, -1136($fp)
	sw $t0, -5348($fp)
	lw $t0, -5344($fp)
	lw $t1, -5348($fp)
	mul $t0, $t0, $t1
	sw $t0, -5352($fp)
	lw $t0, -5340($fp)
	lw $t1, -5352($fp)
	sub $t0, $t0, $t1
	sw $t0, -5356($fp)
	lw $t1, -5156($fp)
	lw $t2, -5356($fp)
	bne $t1, $t2, label313
	j label314
label313:
	lw $t0, -656($fp)
	sw $t0, -5360($fp)
	li $t0, 7448
	sw $t0, -5364($fp)
	lw $t0, -5360($fp)
	lw $t1, -5364($fp)
	mul $t0, $t0, $t1
	sw $t0, -5368($fp)
	li $t0, 0
	sw $t0, -5372($fp)
	lw $t0, -1172($fp)
	sw $t0, -5376($fp)
	li $t0, 0
	lw $t1, -5376($fp)
	sub $t0, $t0, $t1
	sw $t0, -5380($fp)
	li $t0, 0
	lw $t1, -5380($fp)
	sub $t0, $t0, $t1
	sw $t0, -5384($fp)
	lw $t1, -5384($fp)
	li $t2, 0
	bne $t1, $t2, label330
	j label329
label329:
	li $t0, 1
	sw $t0, -5372($fp)
label330:
	lw $t0, -5368($fp)
	lw $t1, -5372($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5388($fp)
	lw $ra, -4($fp)
	lw $v0, -5388($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label314:
	j label292
label294:
	j label279
label278:
	li $t0, 0
	sw $t0, -5392($fp)
	li $t0, 16477
	sw $t0, -5396($fp)
	lw $t1, -5396($fp)
	li $t2, 0
	bne $t1, $t2, label331
	j label332
label331:
	li $t0, 1
	sw $t0, -5392($fp)
label332:
	li $t0, 0
	sw $t0, -5400($fp)
	li $t0, 38974
	sw $t0, -5404($fp)
	lw $t1, -5404($fp)
	li $t2, 0
	bne $t1, $t2, label334
	j label333
label333:
	li $t0, 1
	sw $t0, -5400($fp)
label334:
	li $t0, 0
	lw $t1, -5400($fp)
	sub $t0, $t0, $t1
	sw $t0, -5408($fp)
	li $t0, 17648
	sw $t0, -5412($fp)
	lw $t0, -5412($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -5416($fp)
	addi $sp, $sp, -4
	lw $t0, -5408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5416($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5420($fp)
	addi $sp, $sp, 12
	lw $t0, -5392($fp)
	lw $t1, -5420($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5424($fp)
	li $t0, 0
	lw $t1, -5424($fp)
	sub $t0, $t0, $t1
	sw $t0, -5428($fp)
	lw $ra, -4($fp)
	lw $v0, -5428($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label279:
	j label272
label271:
label335:
	li $t0, 0
	sw $t0, -5432($fp)
	lw $t0, -644($fp)
	sw $t0, -5436($fp)
	li $t0, 0
	lw $t1, -5436($fp)
	sub $t0, $t0, $t1
	sw $t0, -5440($fp)
	lw $t1, -5440($fp)
	li $t2, 0
	bne $t1, $t2, label339
	j label338
label338:
	li $t0, 1
	sw $t0, -5432($fp)
label339:
	li $t0, 0
	sw $t0, -5444($fp)
	li $t0, 31407
	sw $t0, -5448($fp)
	lw $t0, -860($fp)
	sw $t0, -5452($fp)
	li $t0, 63370
	sw $t0, -5456($fp)
	lw $t0, -5452($fp)
	lw $t1, -5456($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5460($fp)
	lw $t1, -5448($fp)
	lw $t2, -5460($fp)
	bgt $t1, $t2, label340
	j label341
label340:
	li $t0, 1
	sw $t0, -5444($fp)
label341:
	lw $t1, -5432($fp)
	lw $t2, -5444($fp)
	beq $t1, $t2, label336
	j label337
label336:
	lw $t0, -608($fp)
	sw $t0, -5464($fp)
	addi $t0, $fp, -504
	sw $t0, -5468($fp)
	li $t0, 1
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
	li $t0, 0
	lw $t1, -5484($fp)
	sub $t0, $t0, $t1
	sw $t0, -5488($fp)
	li $t0, 0
	sw $t0, -5492($fp)
	li $t0, 63549
	sw $t0, -5496($fp)
	li $t0, 26247
	sw $t0, -5500($fp)
	lw $t0, -5496($fp)
	lw $t1, -5500($fp)
	sub $t0, $t0, $t1
	sw $t0, -5504($fp)
	li $t0, 61120
	sw $t0, -5508($fp)
	lw $t1, -5504($fp)
	lw $t2, -5508($fp)
	bne $t1, $t2, label342
	j label343
label342:
	li $t0, 1
	sw $t0, -5492($fp)
label343:
	addi $sp, $sp, -4
	lw $t0, -5464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5492($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5512($fp)
	addi $sp, $sp, 16
	li $t0, 40645
	sw $t0, -5516($fp)
	lw $t0, -5512($fp)
	lw $t1, -5516($fp)
	sub $t0, $t0, $t1
	sw $t0, -5520($fp)
	lw $ra, -4($fp)
	lw $v0, -5520($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label335
label337:
label272:
	lw $t0, -76($fp)
	sw $t0, -5524($fp)
	lw $t0, -5524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -5528($fp)
	li $t0, 0
	sw $t0, -5532($fp)
	li $t0, 4
	lw $t1, -5532($fp)
	mul $t0, $t0, $t1
	sw $t0, -5536($fp)
	lw $t0, -5536($fp)
	lw $t1, -5528($fp)
	add $t0, $t0, $t1
	sw $t0, -5540($fp)
	lw $t0, -5540($fp)
	lw $t1, 0($t0)
	sw $t1, -5544($fp)
	lw $t0, -5544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -5548($fp)
	li $t0, 0
	sw $t0, -5552($fp)
	li $t0, 4
	lw $t1, -5552($fp)
	mul $t0, $t0, $t1
	sw $t0, -5556($fp)
	lw $t0, -5556($fp)
	lw $t1, -5548($fp)
	add $t0, $t0, $t1
	sw $t0, -5560($fp)
	lw $t0, -5560($fp)
	lw $t1, 0($t0)
	sw $t1, -5564($fp)
	lw $t0, -5564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -5568($fp)
	li $t0, 1
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
	lw $t0, -5584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -5588($fp)
	li $t0, 2
	sw $t0, -5592($fp)
	li $t0, 4
	lw $t1, -5592($fp)
	mul $t0, $t0, $t1
	sw $t0, -5596($fp)
	lw $t0, -5596($fp)
	lw $t1, -5588($fp)
	add $t0, $t0, $t1
	sw $t0, -5600($fp)
	lw $t0, -5600($fp)
	lw $t1, 0($t0)
	sw $t1, -5604($fp)
	lw $t0, -5604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
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
	lw $t0, -5624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -5628($fp)
	li $t0, 4
	sw $t0, -5632($fp)
	li $t0, 4
	lw $t1, -5632($fp)
	mul $t0, $t0, $t1
	sw $t0, -5636($fp)
	lw $t0, -5636($fp)
	lw $t1, -5628($fp)
	add $t0, $t0, $t1
	sw $t0, -5640($fp)
	lw $t0, -5640($fp)
	lw $t1, 0($t0)
	sw $t1, -5644($fp)
	lw $t0, -5644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -5648($fp)
	li $t0, 5
	sw $t0, -5652($fp)
	li $t0, 4
	lw $t1, -5652($fp)
	mul $t0, $t0, $t1
	sw $t0, -5656($fp)
	lw $t0, -5656($fp)
	lw $t1, -5648($fp)
	add $t0, $t0, $t1
	sw $t0, -5660($fp)
	lw $t0, -5660($fp)
	lw $t1, 0($t0)
	sw $t1, -5664($fp)
	lw $t0, -5664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -5668($fp)
	li $t0, 6
	sw $t0, -5672($fp)
	li $t0, 4
	lw $t1, -5672($fp)
	mul $t0, $t0, $t1
	sw $t0, -5676($fp)
	lw $t0, -5676($fp)
	lw $t1, -5668($fp)
	add $t0, $t0, $t1
	sw $t0, -5680($fp)
	lw $t0, -5680($fp)
	lw $t1, 0($t0)
	sw $t1, -5684($fp)
	lw $t0, -5684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -5688($fp)
	li $t0, 7
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
	lw $t0, -5704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -5708($fp)
	li $t0, 0
	sw $t0, -5712($fp)
	li $t0, 4
	lw $t1, -5712($fp)
	mul $t0, $t0, $t1
	sw $t0, -5716($fp)
	lw $t0, -5716($fp)
	lw $t1, -5708($fp)
	add $t0, $t0, $t1
	sw $t0, -5720($fp)
	lw $t0, -5720($fp)
	lw $t1, 0($t0)
	sw $t1, -5724($fp)
	lw $t0, -5724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -5728($fp)
	li $t0, 1
	sw $t0, -5732($fp)
	li $t0, 4
	lw $t1, -5732($fp)
	mul $t0, $t0, $t1
	sw $t0, -5736($fp)
	lw $t0, -5736($fp)
	lw $t1, -5728($fp)
	add $t0, $t0, $t1
	sw $t0, -5740($fp)
	lw $t0, -5740($fp)
	lw $t1, 0($t0)
	sw $t1, -5744($fp)
	lw $t0, -5744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -5748($fp)
	li $t0, 2
	sw $t0, -5752($fp)
	li $t0, 4
	lw $t1, -5752($fp)
	mul $t0, $t0, $t1
	sw $t0, -5756($fp)
	lw $t0, -5756($fp)
	lw $t1, -5748($fp)
	add $t0, $t0, $t1
	sw $t0, -5760($fp)
	lw $t0, -5760($fp)
	lw $t1, 0($t0)
	sw $t1, -5764($fp)
	lw $t0, -5764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -5768($fp)
	li $t0, 3
	sw $t0, -5772($fp)
	li $t0, 4
	lw $t1, -5772($fp)
	mul $t0, $t0, $t1
	sw $t0, -5776($fp)
	lw $t0, -5776($fp)
	lw $t1, -5768($fp)
	add $t0, $t0, $t1
	sw $t0, -5780($fp)
	lw $t0, -5780($fp)
	lw $t1, 0($t0)
	sw $t1, -5784($fp)
	lw $t0, -5784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -5788($fp)
	li $t0, 4
	sw $t0, -5792($fp)
	li $t0, 4
	lw $t1, -5792($fp)
	mul $t0, $t0, $t1
	sw $t0, -5796($fp)
	lw $t0, -5796($fp)
	lw $t1, -5788($fp)
	add $t0, $t0, $t1
	sw $t0, -5800($fp)
	lw $t0, -5800($fp)
	lw $t1, 0($t0)
	sw $t1, -5804($fp)
	lw $t0, -5804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -5808($fp)
	li $t0, 5
	sw $t0, -5812($fp)
	li $t0, 4
	lw $t1, -5812($fp)
	mul $t0, $t0, $t1
	sw $t0, -5816($fp)
	lw $t0, -5816($fp)
	lw $t1, -5808($fp)
	add $t0, $t0, $t1
	sw $t0, -5820($fp)
	lw $t0, -5820($fp)
	lw $t1, 0($t0)
	sw $t1, -5824($fp)
	lw $t0, -5824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -5828($fp)
	li $t0, 6
	sw $t0, -5832($fp)
	li $t0, 4
	lw $t1, -5832($fp)
	mul $t0, $t0, $t1
	sw $t0, -5836($fp)
	lw $t0, -5836($fp)
	lw $t1, -5828($fp)
	add $t0, $t0, $t1
	sw $t0, -5840($fp)
	lw $t0, -5840($fp)
	lw $t1, 0($t0)
	sw $t1, -5844($fp)
	lw $t0, -5844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -5848($fp)
	li $t0, 0
	sw $t0, -5852($fp)
	li $t0, 19223
	sw $t0, -5856($fp)
	li $t0, 47610
	sw $t0, -5860($fp)
	lw $t1, -5856($fp)
	lw $t2, -5860($fp)
	bge $t1, $t2, label344
	j label345
label344:
	li $t0, 1
	sw $t0, -5852($fp)
label345:
	li $t0, 4
	lw $t1, -5852($fp)
	mul $t0, $t0, $t1
	sw $t0, -5864($fp)
	lw $t0, -5864($fp)
	lw $t1, -5848($fp)
	add $t0, $t0, $t1
	sw $t0, -5868($fp)
	lw $t0, -5868($fp)
	lw $t1, 0($t0)
	sw $t1, -5872($fp)
	addi $t0, $fp, -40
	sw $t0, -5876($fp)
	li $t0, 7
	sw $t0, -5880($fp)
	li $t0, 4
	lw $t1, -5880($fp)
	mul $t0, $t0, $t1
	sw $t0, -5884($fp)
	lw $t0, -5884($fp)
	lw $t1, -5876($fp)
	add $t0, $t0, $t1
	sw $t0, -5888($fp)
	lw $t0, -5888($fp)
	lw $t1, 0($t0)
	sw $t1, -5892($fp)
	addi $t0, $fp, -68
	sw $t0, -5896($fp)
	li $t0, 0
	sw $t0, -5900($fp)
	li $t0, 25772
	sw $t0, -5904($fp)
	lw $t1, -5904($fp)
	li $t2, 0
	bne $t1, $t2, label348
	j label347
label348:
	lw $t0, -76($fp)
	sw $t0, -5908($fp)
	lw $t1, -5908($fp)
	li $t2, 0
	bne $t1, $t2, label346
	j label347
label346:
	li $t0, 1
	sw $t0, -5900($fp)
label347:
	li $t0, 4
	lw $t1, -5900($fp)
	mul $t0, $t0, $t1
	sw $t0, -5912($fp)
	lw $t0, -5912($fp)
	lw $t1, -5896($fp)
	add $t0, $t0, $t1
	sw $t0, -5916($fp)
	lw $t0, -5916($fp)
	lw $t1, 0($t0)
	sw $t1, -5920($fp)
	lw $t0, -5892($fp)
	lw $t1, -5920($fp)
	mul $t0, $t0, $t1
	sw $t0, -5924($fp)
	li $t0, 0
	lw $t1, -5924($fp)
	sub $t0, $t0, $t1
	sw $t0, -5928($fp)
	lw $t0, -5872($fp)
	lw $t1, -5928($fp)
	mul $t0, $t0, $t1
	sw $t0, -5932($fp)
	lw $ra, -4($fp)
	lw $v0, -5932($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -208
	li $t0, 11641
	sw $t0, -20($fp)
	addi $t0, $fp, -16
	sw $t0, -24($fp)
	li $t0, 0
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -32($fp)
	lw $t0, -24($fp)
	lw $t1, -32($fp)
	add $t0, $t0, $t1
	sw $t0, -36($fp)
	lw $t0, -20($fp)
	lw $t1, -36($fp)
	sw $t0, 0($t1)
	lw $t0, -36($fp)
	lw $t1, 0($t0)
	sw $t1, -40($fp)
	li $t0, 24419
	sw $t0, -44($fp)
	addi $t0, $fp, -16
	sw $t0, -48($fp)
	li $t0, 1
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -48($fp)
	lw $t1, -56($fp)
	add $t0, $t0, $t1
	sw $t0, -60($fp)
	lw $t0, -44($fp)
	lw $t1, -60($fp)
	sw $t0, 0($t1)
	lw $t0, -60($fp)
	lw $t1, 0($t0)
	sw $t1, -64($fp)
	li $t0, 53062
	sw $t0, -68($fp)
	addi $t0, $fp, -16
	sw $t0, -72($fp)
	li $t0, 2
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $t0, -72($fp)
	lw $t1, -80($fp)
	add $t0, $t0, $t1
	sw $t0, -84($fp)
	lw $t0, -68($fp)
	lw $t1, -84($fp)
	sw $t0, 0($t1)
	lw $t0, -84($fp)
	lw $t1, 0($t0)
	sw $t1, -88($fp)
	li $t0, 0
	sw $t0, -92($fp)
	lw $t0, 4($fp)
	sw $t0, -96($fp)
	li $t0, 0
	lw $t1, -96($fp)
	sub $t0, $t0, $t1
	sw $t0, -100($fp)
	lw $t1, -100($fp)
	li $t2, 0
	bne $t1, $t2, label349
	j label350
label349:
	li $t0, 1
	sw $t0, -92($fp)
label350:
	addi $t0, $fp, -16
	sw $t0, -104($fp)
	li $t0, 0
	sw $t0, -108($fp)
	li $t0, 4
	lw $t1, -108($fp)
	mul $t0, $t0, $t1
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	lw $t1, -104($fp)
	add $t0, $t0, $t1
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	lw $t1, 0($t0)
	sw $t1, -120($fp)
	lw $t0, -120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -124($fp)
	li $t0, 1
	sw $t0, -128($fp)
	li $t0, 4
	lw $t1, -128($fp)
	mul $t0, $t0, $t1
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	lw $t1, -124($fp)
	add $t0, $t0, $t1
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	lw $t1, 0($t0)
	sw $t1, -140($fp)
	lw $t0, -140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -144($fp)
	li $t0, 2
	sw $t0, -148($fp)
	li $t0, 4
	lw $t1, -148($fp)
	mul $t0, $t0, $t1
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	lw $t1, -144($fp)
	add $t0, $t0, $t1
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	lw $t1, 0($t0)
	sw $t1, -160($fp)
	lw $t0, -160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -164($fp)
	li $t0, 3262
	sw $t0, -168($fp)
	li $t0, 0
	sw $t0, -172($fp)
	lw $t0, 4($fp)
	sw $t0, -176($fp)
	lw $t1, -176($fp)
	li $t2, 0
	bne $t1, $t2, label355
	j label354
label354:
	li $t0, 1
	sw $t0, -172($fp)
label355:
	li $t0, 19134
	sw $t0, -180($fp)
	lw $t0, -172($fp)
	lw $t1, -180($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -184($fp)
	addi $t0, $fp, -16
	sw $t0, -188($fp)
	lw $t0, 4($fp)
	sw $t0, -192($fp)
	li $t0, 4
	lw $t1, -192($fp)
	mul $t0, $t0, $t1
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	lw $t1, -188($fp)
	add $t0, $t0, $t1
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	lw $t1, 0($t0)
	sw $t1, -204($fp)
	addi $sp, $sp, -4
	lw $t0, -168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -204($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -208($fp)
	addi $sp, $sp, 16
	lw $t1, -208($fp)
	li $t2, 0
	bne $t1, $t2, label351
	j label353
label353:
	lw $t0, 4($fp)
	sw $t0, -212($fp)
	lw $t1, -212($fp)
	li $t2, 0
	bne $t1, $t2, label351
	j label352
label351:
	li $t0, 1
	sw $t0, -164($fp)
label352:
	lw $ra, -4($fp)
	lw $v0, -164($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -72
	li $t0, 22644
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 10191
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	lw $t0, -12($fp)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -40($fp)
	lw $t0, -12($fp)
	sw $t0, -44($fp)
	lw $t0, -24($fp)
	sw $t0, -48($fp)
	lw $t0, -44($fp)
	lw $t1, -48($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -52($fp)
	lw $t1, -52($fp)
	li $t2, 0
	bne $t1, $t2, label356
	j label358
label358:
	li $t0, 52471
	sw $t0, -56($fp)
	li $t0, 37908
	sw $t0, -60($fp)
	lw $t0, -56($fp)
	lw $t1, -60($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -64($fp)
	lw $t0, -12($fp)
	sw $t0, -68($fp)
	li $t0, 43984
	sw $t0, -72($fp)
	lw $t0, -68($fp)
	lw $t1, -72($fp)
	mul $t0, $t0, $t1
	sw $t0, -76($fp)
	lw $t1, -64($fp)
	lw $t2, -76($fp)
	beq $t1, $t2, label356
	j label357
label356:
	li $t0, 1
	sw $t0, -40($fp)
label357:
	lw $ra, -4($fp)
	lw $v0, -40($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -7616
	li $t0, 15871
	sw $t0, -208($fp)
	addi $t0, $fp, -32
	sw $t0, -212($fp)
	li $t0, 0
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
	li $t0, 58967
	sw $t0, -232($fp)
	addi $t0, $fp, -32
	sw $t0, -236($fp)
	li $t0, 1
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
	li $t0, 63613
	sw $t0, -256($fp)
	addi $t0, $fp, -32
	sw $t0, -260($fp)
	li $t0, 2
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
	li $t0, 19013
	sw $t0, -280($fp)
	addi $t0, $fp, -32
	sw $t0, -284($fp)
	li $t0, 3
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
	li $t0, 880
	sw $t0, -304($fp)
	addi $t0, $fp, -32
	sw $t0, -308($fp)
	li $t0, 4
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
	li $t0, 14555
	sw $t0, -328($fp)
	addi $t0, $fp, -32
	sw $t0, -332($fp)
	li $t0, 5
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
	li $t0, 36662
	sw $t0, -352($fp)
	addi $t0, $fp, -32
	sw $t0, -356($fp)
	li $t0, 6
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
	li $t0, 39854
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	li $t0, 45962
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	li $t0, 34496
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	li $t0, 37868
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	li $t0, 6673
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	li $t0, 30080
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	li $t0, 38897
	sw $t0, -448($fp)
	addi $t0, $fp, -36
	sw $t0, -452($fp)
	li $t0, 0
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
	li $t0, 64574
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	li $t0, 5190
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	li $t0, 58120
	sw $t0, -496($fp)
	addi $t0, $fp, -40
	sw $t0, -500($fp)
	li $t0, 0
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
	li $t0, 46648
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	li $t0, 9297
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	li $t0, 45719
	sw $t0, -544($fp)
	addi $t0, $fp, -56
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
	li $t0, 6884
	sw $t0, -568($fp)
	addi $t0, $fp, -56
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
	li $t0, 20939
	sw $t0, -592($fp)
	addi $t0, $fp, -56
	sw $t0, -596($fp)
	li $t0, 2
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -604($fp)
	lw $t0, -596($fp)
	lw $t1, -604($fp)
	add $t0, $t0, $t1
	sw $t0, -608($fp)
	lw $t0, -592($fp)
	lw $t1, -608($fp)
	sw $t0, 0($t1)
	lw $t0, -608($fp)
	lw $t1, 0($t0)
	sw $t1, -612($fp)
	li $t0, 4602
	sw $t0, -616($fp)
	addi $t0, $fp, -56
	sw $t0, -620($fp)
	li $t0, 3
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
	li $t0, 59947
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	li $t0, 40073
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	li $t0, 7865
	sw $t0, -664($fp)
	addi $t0, $fp, -64
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
	li $t0, 17055
	sw $t0, -688($fp)
	addi $t0, $fp, -64
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
	li $t0, 50264
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -720($fp)
	li $t0, 60336
	sw $t0, -724($fp)
	addi $t0, $fp, -72
	sw $t0, -728($fp)
	li $t0, 0
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
	li $t0, 54964
	sw $t0, -748($fp)
	addi $t0, $fp, -72
	sw $t0, -752($fp)
	li $t0, 1
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
	li $t0, 28713
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -780($fp)
	li $t0, 10671
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	sw $t0, -792($fp)
	li $t0, 48395
	sw $t0, -796($fp)
	addi $t0, $fp, -104
	sw $t0, -800($fp)
	li $t0, 0
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
	li $t0, 26790
	sw $t0, -820($fp)
	addi $t0, $fp, -104
	sw $t0, -824($fp)
	li $t0, 1
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
	li $t0, 29685
	sw $t0, -844($fp)
	addi $t0, $fp, -104
	sw $t0, -848($fp)
	li $t0, 2
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
	li $t0, 49275
	sw $t0, -868($fp)
	addi $t0, $fp, -104
	sw $t0, -872($fp)
	li $t0, 3
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
	li $t0, 41345
	sw $t0, -892($fp)
	addi $t0, $fp, -104
	sw $t0, -896($fp)
	li $t0, 4
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
	li $t0, 811
	sw $t0, -916($fp)
	addi $t0, $fp, -104
	sw $t0, -920($fp)
	li $t0, 5
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
	li $t0, 23594
	sw $t0, -940($fp)
	addi $t0, $fp, -104
	sw $t0, -944($fp)
	li $t0, 6
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
	li $t0, 21771
	sw $t0, -964($fp)
	addi $t0, $fp, -104
	sw $t0, -968($fp)
	li $t0, 7
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
	li $t0, 35307
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	sw $t0, -996($fp)
	li $t0, 61462
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	sw $t0, -1008($fp)
	li $t0, 28444
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	sw $t0, -1020($fp)
	li $t0, 65387
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	sw $t0, -1032($fp)
	li $t0, 34823
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	sw $t0, -1044($fp)
	li $t0, 27483
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	sw $t0, -1056($fp)
	li $t0, 5041
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	sw $t0, -1068($fp)
	li $t0, 27407
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	sw $t0, -1080($fp)
	li $t0, 8595
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	sw $t0, -1092($fp)
	li $t0, 14339
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	sw $t0, -1104($fp)
	li $t0, 7591
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	sw $t0, -1116($fp)
	li $t0, 15480
	sw $t0, -1120($fp)
	addi $t0, $fp, -124
	sw $t0, -1124($fp)
	li $t0, 0
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
	li $t0, 35278
	sw $t0, -1144($fp)
	addi $t0, $fp, -124
	sw $t0, -1148($fp)
	li $t0, 1
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
	li $t0, 12193
	sw $t0, -1168($fp)
	addi $t0, $fp, -124
	sw $t0, -1172($fp)
	li $t0, 2
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
	li $t0, 9891
	sw $t0, -1192($fp)
	addi $t0, $fp, -124
	sw $t0, -1196($fp)
	li $t0, 3
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1204($fp)
	lw $t0, -1196($fp)
	lw $t1, -1204($fp)
	add $t0, $t0, $t1
	sw $t0, -1208($fp)
	lw $t0, -1192($fp)
	lw $t1, -1208($fp)
	sw $t0, 0($t1)
	lw $t0, -1208($fp)
	lw $t1, 0($t0)
	sw $t1, -1212($fp)
	li $t0, 9815
	sw $t0, -1216($fp)
	addi $t0, $fp, -124
	sw $t0, -1220($fp)
	li $t0, 4
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1228($fp)
	lw $t0, -1220($fp)
	lw $t1, -1228($fp)
	add $t0, $t0, $t1
	sw $t0, -1232($fp)
	lw $t0, -1216($fp)
	lw $t1, -1232($fp)
	sw $t0, 0($t1)
	lw $t0, -1232($fp)
	lw $t1, 0($t0)
	sw $t1, -1236($fp)
	li $t0, 20058
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	sw $t0, -1248($fp)
	li $t0, 26946
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	sw $t0, -1260($fp)
	li $t0, 60080
	sw $t0, -1264($fp)
	addi $t0, $fp, -148
	sw $t0, -1268($fp)
	li $t0, 0
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1276($fp)
	lw $t0, -1268($fp)
	lw $t1, -1276($fp)
	add $t0, $t0, $t1
	sw $t0, -1280($fp)
	lw $t0, -1264($fp)
	lw $t1, -1280($fp)
	sw $t0, 0($t1)
	lw $t0, -1280($fp)
	lw $t1, 0($t0)
	sw $t1, -1284($fp)
	li $t0, 14858
	sw $t0, -1288($fp)
	addi $t0, $fp, -148
	sw $t0, -1292($fp)
	li $t0, 1
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1300($fp)
	lw $t0, -1292($fp)
	lw $t1, -1300($fp)
	add $t0, $t0, $t1
	sw $t0, -1304($fp)
	lw $t0, -1288($fp)
	lw $t1, -1304($fp)
	sw $t0, 0($t1)
	lw $t0, -1304($fp)
	lw $t1, 0($t0)
	sw $t1, -1308($fp)
	li $t0, 16374
	sw $t0, -1312($fp)
	addi $t0, $fp, -148
	sw $t0, -1316($fp)
	li $t0, 2
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1324($fp)
	lw $t0, -1316($fp)
	lw $t1, -1324($fp)
	add $t0, $t0, $t1
	sw $t0, -1328($fp)
	lw $t0, -1312($fp)
	lw $t1, -1328($fp)
	sw $t0, 0($t1)
	lw $t0, -1328($fp)
	lw $t1, 0($t0)
	sw $t1, -1332($fp)
	li $t0, 23257
	sw $t0, -1336($fp)
	addi $t0, $fp, -148
	sw $t0, -1340($fp)
	li $t0, 3
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
	li $t0, 25530
	sw $t0, -1360($fp)
	addi $t0, $fp, -148
	sw $t0, -1364($fp)
	li $t0, 4
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
	li $t0, 64770
	sw $t0, -1384($fp)
	addi $t0, $fp, -148
	sw $t0, -1388($fp)
	li $t0, 5
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
	li $t0, 50047
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	sw $t0, -1416($fp)
	li $t0, 55215
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	sw $t0, -1428($fp)
	li $t0, 48509
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	sw $t0, -1440($fp)
	li $t0, 25857
	sw $t0, -1444($fp)
	addi $t0, $fp, -164
	sw $t0, -1448($fp)
	li $t0, 0
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
	li $t0, 56026
	sw $t0, -1468($fp)
	addi $t0, $fp, -164
	sw $t0, -1472($fp)
	li $t0, 1
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
	li $t0, 6567
	sw $t0, -1492($fp)
	addi $t0, $fp, -164
	sw $t0, -1496($fp)
	li $t0, 2
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1504($fp)
	lw $t0, -1496($fp)
	lw $t1, -1504($fp)
	add $t0, $t0, $t1
	sw $t0, -1508($fp)
	lw $t0, -1492($fp)
	lw $t1, -1508($fp)
	sw $t0, 0($t1)
	lw $t0, -1508($fp)
	lw $t1, 0($t0)
	sw $t1, -1512($fp)
	li $t0, 47628
	sw $t0, -1516($fp)
	addi $t0, $fp, -164
	sw $t0, -1520($fp)
	li $t0, 3
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1528($fp)
	lw $t0, -1520($fp)
	lw $t1, -1528($fp)
	add $t0, $t0, $t1
	sw $t0, -1532($fp)
	lw $t0, -1516($fp)
	lw $t1, -1532($fp)
	sw $t0, 0($t1)
	lw $t0, -1532($fp)
	lw $t1, 0($t0)
	sw $t1, -1536($fp)
	li $t0, 25797
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	sw $t0, -1548($fp)
	li $t0, 2493
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	sw $t0, -1560($fp)
	li $t0, 10537
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	sw $t0, -1572($fp)
	li $t0, 25648
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	sw $t0, -1584($fp)
	li $t0, 37316
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	sw $t0, -1596($fp)
	li $t0, 38020
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	sw $t0, -1608($fp)
	li $t0, 30690
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	sw $t0, -1620($fp)
	li $t0, 64724
	sw $t0, -1624($fp)
	lw $t0, -1624($fp)
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	sw $t0, -1632($fp)
	li $t0, 46615
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	sw $t0, -1644($fp)
	li $t0, 45029
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	sw $t0, -1656($fp)
	li $t0, 6779
	sw $t0, -1660($fp)
	lw $t0, -1660($fp)
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	sw $t0, -1668($fp)
	li $t0, 62095
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	sw $t0, -1680($fp)
	li $t0, 14771
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	sw $t0, -1692($fp)
	li $t0, 18972
	sw $t0, -1696($fp)
	addi $t0, $fp, -204
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
	li $t0, 6450
	sw $t0, -1720($fp)
	addi $t0, $fp, -204
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
	li $t0, 24586
	sw $t0, -1744($fp)
	addi $t0, $fp, -204
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
	li $t0, 39031
	sw $t0, -1768($fp)
	addi $t0, $fp, -204
	sw $t0, -1772($fp)
	li $t0, 3
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
	li $t0, 33397
	sw $t0, -1792($fp)
	addi $t0, $fp, -204
	sw $t0, -1796($fp)
	li $t0, 4
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
	li $t0, 19130
	sw $t0, -1816($fp)
	addi $t0, $fp, -204
	sw $t0, -1820($fp)
	li $t0, 5
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
	li $t0, 53889
	sw $t0, -1840($fp)
	addi $t0, $fp, -204
	sw $t0, -1844($fp)
	li $t0, 6
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
	li $t0, 49771
	sw $t0, -1864($fp)
	addi $t0, $fp, -204
	sw $t0, -1868($fp)
	li $t0, 7
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
	li $t0, 42387
	sw $t0, -1888($fp)
	addi $t0, $fp, -204
	sw $t0, -1892($fp)
	li $t0, 8
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
	li $t0, 13883
	sw $t0, -1912($fp)
	addi $t0, $fp, -204
	sw $t0, -1916($fp)
	li $t0, 9
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
	li $t0, 49005
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	sw $t0, -1944($fp)
	addi $t0, $fp, -204
	sw $t0, -1948($fp)
	addi $t0, $fp, -72
	sw $t0, -1952($fp)
	lw $t0, -1628($fp)
	sw $t0, -1956($fp)
	li $t0, 4
	lw $t1, -1956($fp)
	mul $t0, $t0, $t1
	sw $t0, -1960($fp)
	lw $t0, -1960($fp)
	lw $t1, -1952($fp)
	add $t0, $t0, $t1
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	lw $t1, 0($t0)
	sw $t1, -1968($fp)
	lw $t0, 12($fp)
	sw $t0, -1972($fp)
	lw $t0, -1968($fp)
	lw $t1, -1972($fp)
	add $t0, $t0, $t1
	sw $t0, -1976($fp)
	li $t0, 4
	lw $t1, -1976($fp)
	mul $t0, $t0, $t1
	sw $t0, -1980($fp)
	lw $t0, -1980($fp)
	lw $t1, -1948($fp)
	add $t0, $t0, $t1
	sw $t0, -1984($fp)
	lw $t0, -1984($fp)
	lw $t1, 0($t0)
	sw $t1, -1988($fp)
	li $t0, 0
	sw $t0, -1992($fp)
	jal f9
	sw $v0, -1996($fp)
	addi $sp, $sp, 4
	lw $t1, -1996($fp)
	li $t2, 0
	bne $t1, $t2, label363
	j label362
label362:
	li $t0, 1
	sw $t0, -1992($fp)
label363:
	lw $t0, -1988($fp)
	lw $t1, -1992($fp)
	mul $t0, $t0, $t1
	sw $t0, -2000($fp)
	lw $t1, -2000($fp)
	li $t2, 0
	bne $t1, $t2, label359
	j label360
label359:
	li $t0, 0
	sw $t0, -2004($fp)
	lw $t0, -1592($fp)
	sw $t0, -2008($fp)
	lw $t1, -2008($fp)
	li $t2, 0
	bne $t1, $t2, label369
	j label368
label369:
	lw $t0, -1628($fp)
	sw $t0, -2012($fp)
	lw $t1, -2012($fp)
	li $t2, 0
	bne $t1, $t2, label367
	j label368
label367:
	li $t0, 1
	sw $t0, -2004($fp)
label368:
	li $t0, 0
	sw $t0, -2016($fp)
	jal f9
	sw $v0, -2020($fp)
	addi $sp, $sp, 4
	lw $t1, -2020($fp)
	li $t2, 0
	bne $t1, $t2, label372
	j label371
label372:
	lw $t0, 8($fp)
	sw $t0, -2024($fp)
	lw $t1, -2024($fp)
	li $t2, 0
	bne $t1, $t2, label370
	j label371
label370:
	li $t0, 1
	sw $t0, -2016($fp)
label371:
	li $t0, 0
	sw $t0, -2028($fp)
	li $t0, 31979
	sw $t0, -2032($fp)
	lw $t1, -2032($fp)
	li $t2, 0
	bne $t1, $t2, label373
	j label374
label373:
	li $t0, 1
	sw $t0, -2028($fp)
label374:
	li $t0, 0
	sw $t0, -2036($fp)
	lw $t0, -1100($fp)
	sw $t0, -2040($fp)
	li $t0, 26899
	sw $t0, -2044($fp)
	lw $t1, -2040($fp)
	lw $t2, -2044($fp)
	bne $t1, $t2, label375
	j label377
label377:
	li $t0, 3562
	sw $t0, -2048($fp)
	lw $t1, -2048($fp)
	li $t2, 0
	bne $t1, $t2, label375
	j label376
label375:
	li $t0, 1
	sw $t0, -2036($fp)
label376:
	addi $sp, $sp, -4
	lw $t0, -2016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2036($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2052($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -2004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2052($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2056($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -32
	sw $t0, -2060($fp)
	lw $t0, -524($fp)
	sw $t0, -2064($fp)
	li $t0, 4
	lw $t1, -2064($fp)
	mul $t0, $t0, $t1
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	lw $t1, -2060($fp)
	add $t0, $t0, $t1
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	lw $t1, 0($t0)
	sw $t1, -2076($fp)
	lw $t0, -2056($fp)
	lw $t1, -2076($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2080($fp)
	lw $t0, -716($fp)
	sw $t0, -2084($fp)
	lw $t1, -2080($fp)
	lw $t2, -2084($fp)
	bge $t1, $t2, label364
	j label365
label364:
label378:
	lw $t0, -776($fp)
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -2092($fp)
	li $t0, 0
	sw $t0, -2096($fp)
	li $t0, 0
	sw $t0, -2100($fp)
	lw $t0, -476($fp)
	sw $t0, -2104($fp)
	li $t0, 34848
	sw $t0, -2108($fp)
	lw $t1, -2104($fp)
	lw $t2, -2108($fp)
	bgt $t1, $t2, label383
	j label384
label383:
	li $t0, 1
	sw $t0, -2100($fp)
label384:
	lw $t0, -392($fp)
	sw $t0, -2112($fp)
	lw $t1, -2100($fp)
	lw $t2, -2112($fp)
	beq $t1, $t2, label381
	j label382
label381:
	li $t0, 1
	sw $t0, -2096($fp)
label382:
	addi $t0, $fp, -36
	sw $t0, -2116($fp)
	lw $t0, -524($fp)
	sw $t0, -2120($fp)
	li $t0, 4
	lw $t1, -2120($fp)
	mul $t0, $t0, $t1
	sw $t0, -2124($fp)
	lw $t0, -2124($fp)
	lw $t1, -2116($fp)
	add $t0, $t0, $t1
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	lw $t1, 0($t0)
	sw $t1, -2132($fp)
	li $t0, 38546
	sw $t0, -2136($fp)
	lw $t0, -2132($fp)
	lw $t1, -2136($fp)
	add $t0, $t0, $t1
	sw $t0, -2140($fp)
	li $t0, 0
	sw $t0, -2144($fp)
	li $t0, 52756
	sw $t0, -2148($fp)
	li $t0, 59588
	sw $t0, -2152($fp)
	lw $t1, -2148($fp)
	lw $t2, -2152($fp)
	blt $t1, $t2, label385
	j label386
label385:
	li $t0, 1
	sw $t0, -2144($fp)
label386:
	addi $sp, $sp, -4
	lw $t0, -2092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2144($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2156($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -2160($fp)
	li $t0, 19849
	sw $t0, -2164($fp)
	lw $t1, -2164($fp)
	li $t2, 0
	bne $t1, $t2, label388
	j label387
label387:
	li $t0, 1
	sw $t0, -2160($fp)
label388:
	lw $t0, -2156($fp)
	lw $t1, -2160($fp)
	add $t0, $t0, $t1
	sw $t0, -2168($fp)
	lw $t1, -2168($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label380
label379:
	lw $t0, -1256($fp)
	sw $t0, -2172($fp)
	lw $t0, -1580($fp)
	sw $t0, -2176($fp)
	lw $t1, -2172($fp)
	lw $t2, -2176($fp)
	ble $t1, $t2, label389
	j label392
label392:
	li $t0, 41040
	sw $t0, -2180($fp)
	lw $t0, -416($fp)
	sw $t0, -2184($fp)
	lw $t0, -2180($fp)
	lw $t1, -2184($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2188($fp)
	li $t0, 45385
	sw $t0, -2192($fp)
	lw $t0, -2188($fp)
	lw $t1, -2192($fp)
	sub $t0, $t0, $t1
	sw $t0, -2196($fp)
	lw $t1, -2196($fp)
	li $t2, 0
	bne $t1, $t2, label393
	j label390
label393:
	lw $t0, -1244($fp)
	sw $t0, -2200($fp)
	li $t0, 45498
	sw $t0, -2204($fp)
	lw $t1, -2200($fp)
	lw $t2, -2204($fp)
	bne $t1, $t2, label389
	j label390
label389:
label394:
	li $t0, 0
	sw $t0, -2208($fp)
	li $t0, 37760
	sw $t0, -2212($fp)
	li $t0, 1959
	sw $t0, -2216($fp)
	lw $t0, -2212($fp)
	lw $t1, -2216($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2220($fp)
	lw $t1, -2220($fp)
	li $t2, 0
	bne $t1, $t2, label397
	j label399
label399:
	li $t0, 29502
	sw $t0, -2224($fp)
	lw $t1, -2224($fp)
	li $t2, 0
	bne $t1, $t2, label397
	j label398
label397:
	li $t0, 1
	sw $t0, -2208($fp)
label398:
	addi $t0, $fp, -104
	sw $t0, -2228($fp)
	li $t0, 4
	sw $t0, -2232($fp)
	li $t0, 4
	lw $t1, -2232($fp)
	mul $t0, $t0, $t1
	sw $t0, -2236($fp)
	lw $t0, -2236($fp)
	lw $t1, -2228($fp)
	add $t0, $t0, $t1
	sw $t0, -2240($fp)
	lw $t0, -2240($fp)
	lw $t1, 0($t0)
	sw $t1, -2244($fp)
	li $t0, 4916
	sw $t0, -2248($fp)
	lw $t0, -2244($fp)
	lw $t1, -2248($fp)
	mul $t0, $t0, $t1
	sw $t0, -2252($fp)
	lw $t0, -416($fp)
	sw $t0, -2256($fp)
	lw $t0, -2256($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -2260($fp)
	addi $sp, $sp, -4
	lw $t0, -2208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2260($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2264($fp)
	addi $sp, $sp, 16
	li $t0, 55681
	sw $t0, -2268($fp)
	li $t0, 0
	sw $t0, -2272($fp)
	li $t0, 0
	sw $t0, -2276($fp)
	lw $t0, -428($fp)
	sw $t0, -2280($fp)
	li $t0, 12008
	sw $t0, -2284($fp)
	lw $t1, -2280($fp)
	lw $t2, -2284($fp)
	bne $t1, $t2, label402
	j label403
label402:
	li $t0, 1
	sw $t0, -2276($fp)
label403:
	li $t0, 64485
	sw $t0, -2288($fp)
	lw $t1, -2276($fp)
	lw $t2, -2288($fp)
	beq $t1, $t2, label400
	j label401
label400:
	li $t0, 1
	sw $t0, -2272($fp)
label401:
	li $t0, 0
	sw $t0, -2292($fp)
	li $t0, 12820
	sw $t0, -2296($fp)
	li $t0, 17869
	sw $t0, -2300($fp)
	lw $t0, -2296($fp)
	lw $t1, -2300($fp)
	sub $t0, $t0, $t1
	sw $t0, -2304($fp)
	li $t0, 10652
	sw $t0, -2308($fp)
	lw $t1, -2304($fp)
	lw $t2, -2308($fp)
	bne $t1, $t2, label404
	j label405
label404:
	li $t0, 1
	sw $t0, -2292($fp)
label405:
	addi $sp, $sp, -4
	lw $t0, -2264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2292($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2312($fp)
	addi $sp, $sp, 20
	lw $t1, -2312($fp)
	li $t2, 0
	bne $t1, $t2, label396
	j label395
label395:
	li $t0, 11255
	sw $t0, -2316($fp)
	lw $t1, -2316($fp)
	li $t2, 0
	bne $t1, $t2, label406
	j label407
label406:
label409:
	jal f9
	sw $v0, -2320($fp)
	addi $sp, $sp, 4
	lw $t1, -2320($fp)
	li $t2, 0
	bne $t1, $t2, label410
	j label412
label412:
	li $t0, 35356
	sw $t0, -2324($fp)
	lw $t0, -1544($fp)
	sw $t0, -2328($fp)
	lw $t0, -2324($fp)
	lw $t1, -2328($fp)
	mul $t0, $t0, $t1
	sw $t0, -2332($fp)
	lw $t0, -1940($fp)
	sw $t0, -2336($fp)
	lw $t0, -2332($fp)
	lw $t1, -2336($fp)
	add $t0, $t0, $t1
	sw $t0, -2340($fp)
	li $t0, 48633
	sw $t0, -2344($fp)
	li $t0, 0
	lw $t1, -2344($fp)
	sub $t0, $t0, $t1
	sw $t0, -2348($fp)
	lw $t0, -2340($fp)
	lw $t1, -2348($fp)
	sub $t0, $t0, $t1
	sw $t0, -2352($fp)
	lw $t1, -2352($fp)
	li $t2, 0
	bne $t1, $t2, label410
	j label411
label410:
label413:
	li $t0, 65144
	sw $t0, -2356($fp)
	lw $t1, -2356($fp)
	li $t2, 0
	bne $t1, $t2, label414
	j label415
label414:
	li $t0, 0
	sw $t0, -2360($fp)
	lw $t0, 16($fp)
	sw $t0, -2364($fp)
	li $t0, 19591
	sw $t0, -2368($fp)
	lw $t0, -488($fp)
	sw $t0, -2372($fp)
	lw $t0, -2368($fp)
	lw $t1, -2372($fp)
	sub $t0, $t0, $t1
	sw $t0, -2376($fp)
	li $t0, 25484
	sw $t0, -2380($fp)
	li $t0, 13492
	sw $t0, -2384($fp)
	lw $t0, -2380($fp)
	lw $t1, -2384($fp)
	mul $t0, $t0, $t1
	sw $t0, -2388($fp)
	lw $t0, -2376($fp)
	lw $t1, -2388($fp)
	add $t0, $t0, $t1
	sw $t0, -2392($fp)
	lw $t1, -2364($fp)
	lw $t2, -2392($fp)
	ble $t1, $t2, label416
	j label417
label416:
	li $t0, 1
	sw $t0, -2360($fp)
label417:
	j label413
label415:
	j label409
label411:
	j label408
label407:
	lw $t0, -1664($fp)
	sw $t0, -2396($fp)
	li $t0, 0
	lw $t1, -2396($fp)
	sub $t0, $t0, $t1
	sw $t0, -2400($fp)
	li $t0, 0
	lw $t1, -2400($fp)
	sub $t0, $t0, $t1
	sw $t0, -2404($fp)
	li $t0, 0
	lw $t1, -2404($fp)
	sub $t0, $t0, $t1
	sw $t0, -2408($fp)
	lw $t1, -2408($fp)
	li $t2, 0
	bne $t1, $t2, label418
	j label419
label418:
	addi $t0, $fp, -124
	sw $t0, -2412($fp)
	li $t0, 0
	sw $t0, -2416($fp)
	lw $t0, -428($fp)
	sw $t0, -2420($fp)
	li $t0, 3061
	sw $t0, -2424($fp)
	lw $t1, -2420($fp)
	lw $t2, -2424($fp)
	ble $t1, $t2, label421
	j label422
label421:
	li $t0, 1
	sw $t0, -2416($fp)
label422:
	li $t0, 4
	lw $t1, -2416($fp)
	mul $t0, $t0, $t1
	sw $t0, -2428($fp)
	lw $t0, -2428($fp)
	lw $t1, -2412($fp)
	add $t0, $t0, $t1
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	lw $t1, 0($t0)
	sw $t1, -2436($fp)
	lw $t0, -2436($fp)
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	sw $t0, -2440($fp)
	li $t0, 0
	sw $t0, -2444($fp)
	addi $t0, $fp, -124
	sw $t0, -2448($fp)
	li $t0, 0
	sw $t0, -2452($fp)
	lw $t0, -1568($fp)
	sw $t0, -2456($fp)
	li $t0, 52383
	sw $t0, -2460($fp)
	lw $t0, -2456($fp)
	lw $t1, -2460($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2464($fp)
	lw $t1, -2464($fp)
	li $t2, 0
	bne $t1, $t2, label427
	j label426
label427:
	lw $t0, -428($fp)
	sw $t0, -2468($fp)
	lw $t1, -2468($fp)
	li $t2, 0
	bne $t1, $t2, label425
	j label426
label425:
	li $t0, 1
	sw $t0, -2452($fp)
label426:
	li $t0, 4
	lw $t1, -2452($fp)
	mul $t0, $t0, $t1
	sw $t0, -2472($fp)
	lw $t0, -2472($fp)
	lw $t1, -2448($fp)
	add $t0, $t0, $t1
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	lw $t1, 0($t0)
	sw $t1, -2480($fp)
	lw $t1, -2480($fp)
	li $t2, 0
	bne $t1, $t2, label424
	j label423
label423:
	li $t0, 1
	sw $t0, -2444($fp)
label424:
	j label420
label419:
	li $t0, 0
	sw $t0, -2484($fp)
	li $t0, 0
	sw $t0, -2488($fp)
	li $t0, 0
	sw $t0, -2492($fp)
	lw $t0, -1940($fp)
	sw $t0, -2496($fp)
	lw $t1, -2496($fp)
	li $t2, 0
	bne $t1, $t2, label433
	j label432
label432:
	li $t0, 1
	sw $t0, -2492($fp)
label433:
	lw $t0, -524($fp)
	sw $t0, -2500($fp)
	lw $t0, -2492($fp)
	lw $t1, -2500($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2504($fp)
	li $t0, 0
	sw $t0, -2508($fp)
	lw $t0, -1556($fp)
	sw $t0, -2512($fp)
	lw $t1, -2512($fp)
	li $t2, 0
	bne $t1, $t2, label435
	j label434
label434:
	li $t0, 1
	sw $t0, -2508($fp)
label435:
	lw $t0, -2504($fp)
	lw $t1, -2508($fp)
	mul $t0, $t0, $t1
	sw $t0, -2516($fp)
	addi $t0, $fp, -72
	sw $t0, -2520($fp)
	lw $t0, -380($fp)
	sw $t0, -2524($fp)
	li $t0, 4
	lw $t1, -2524($fp)
	mul $t0, $t0, $t1
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	lw $t1, -2520($fp)
	add $t0, $t0, $t1
	sw $t0, -2532($fp)
	lw $t0, -2532($fp)
	lw $t1, 0($t0)
	sw $t1, -2536($fp)
	li $t0, 17054
	sw $t0, -2540($fp)
	lw $t0, -2536($fp)
	lw $t1, -2540($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2544($fp)
	lw $t1, -2516($fp)
	lw $t2, -2544($fp)
	beq $t1, $t2, label430
	j label431
label430:
	li $t0, 1
	sw $t0, -2488($fp)
label431:
	lw $t0, -1424($fp)
	sw $t0, -2548($fp)
	lw $t1, -2488($fp)
	lw $t2, -2548($fp)
	bne $t1, $t2, label428
	j label429
label428:
	li $t0, 1
	sw $t0, -2484($fp)
label429:
label420:
label408:
	j label394
label396:
	j label391
label390:
	lw $t0, -1100($fp)
	sw $t0, -2552($fp)
	li $t0, 0
	lw $t1, -2552($fp)
	sub $t0, $t0, $t1
	sw $t0, -2556($fp)
label391:
	j label378
label380:
	j label366
label365:
	li $t0, 0
	sw $t0, -2560($fp)
	lw $t0, -1616($fp)
	sw $t0, -2564($fp)
	lw $t0, -776($fp)
	sw $t0, -2568($fp)
	lw $t1, -2564($fp)
	lw $t2, -2568($fp)
	bne $t1, $t2, label436
	j label437
label436:
	li $t0, 1
	sw $t0, -2560($fp)
label437:
	lw $t0, -2560($fp)
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	sw $t0, -2572($fp)
	lw $t0, -2572($fp)
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	sw $t0, -2576($fp)
	lw $ra, -4($fp)
	lw $v0, -2576($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label366:
	j label361
label360:
	li $t0, 0
	sw $t0, -2580($fp)
	li $t0, 49090
	sw $t0, -2584($fp)
	addi $t0, $fp, -148
	sw $t0, -2588($fp)
	lw $t0, -716($fp)
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
	lw $t0, -1424($fp)
	sw $t0, -2608($fp)
	lw $t0, -2604($fp)
	lw $t1, -2608($fp)
	sub $t0, $t0, $t1
	sw $t0, -2612($fp)
	li $t0, 0
	sw $t0, -2616($fp)
	lw $t0, -1112($fp)
	sw $t0, -2620($fp)
	li $t0, 0
	sw $t0, -2624($fp)
	lw $t0, -644($fp)
	sw $t0, -2628($fp)
	li $t0, 30956
	sw $t0, -2632($fp)
	lw $t0, -2628($fp)
	lw $t1, -2632($fp)
	sub $t0, $t0, $t1
	sw $t0, -2636($fp)
	lw $t0, 8($fp)
	sw $t0, -2640($fp)
	lw $t1, -2636($fp)
	lw $t2, -2640($fp)
	blt $t1, $t2, label444
	j label445
label444:
	li $t0, 1
	sw $t0, -2624($fp)
label445:
	lw $t0, -404($fp)
	sw $t0, -2644($fp)
	addi $t0, $fp, -72
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
	li $t0, 8916
	sw $t0, -2668($fp)
	lw $t0, -2664($fp)
	lw $t1, -2668($fp)
	mul $t0, $t0, $t1
	sw $t0, -2672($fp)
	addi $sp, $sp, -4
	lw $t0, -2624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2672($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2676($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -2680($fp)
	li $t0, 35040
	sw $t0, -2684($fp)
	lw $t1, -2684($fp)
	li $t2, 0
	bne $t1, $t2, label448
	j label447
label448:
	li $t0, 39603
	sw $t0, -2688($fp)
	lw $t1, -2688($fp)
	li $t2, 0
	bne $t1, $t2, label446
	j label447
label446:
	li $t0, 1
	sw $t0, -2680($fp)
label447:
	addi $sp, $sp, -4
	lw $t0, -2620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2680($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2692($fp)
	addi $sp, $sp, 16
	lw $t0, -1436($fp)
	sw $t0, -2696($fp)
	lw $t1, -2692($fp)
	lw $t2, -2696($fp)
	blt $t1, $t2, label442
	j label443
label442:
	li $t0, 1
	sw $t0, -2616($fp)
label443:
	addi $sp, $sp, -4
	lw $t0, -2584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2616($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2700($fp)
	addi $sp, $sp, 16
	lw $t1, -2700($fp)
	li $t2, 0
	bne $t1, $t2, label441
	j label440
label441:
	addi $t0, $fp, -56
	sw $t0, -2704($fp)
	lw $t0, -416($fp)
	sw $t0, -2708($fp)
	li $t0, 4
	lw $t1, -2708($fp)
	mul $t0, $t0, $t1
	sw $t0, -2712($fp)
	lw $t0, -2712($fp)
	lw $t1, -2704($fp)
	add $t0, $t0, $t1
	sw $t0, -2716($fp)
	lw $t0, -2716($fp)
	lw $t1, 0($t0)
	sw $t1, -2720($fp)
	li $t0, 61911
	sw $t0, -2724($fp)
	lw $t0, -2720($fp)
	lw $t1, -2724($fp)
	add $t0, $t0, $t1
	sw $t0, -2728($fp)
	li $t0, 0
	sw $t0, -2732($fp)
	lw $t0, -1004($fp)
	sw $t0, -2736($fp)
	li $t0, 54301
	sw $t0, -2740($fp)
	lw $t1, -2736($fp)
	lw $t2, -2740($fp)
	bne $t1, $t2, label449
	j label451
label451:
	li $t0, 10918
	sw $t0, -2744($fp)
	lw $t1, -2744($fp)
	li $t2, 0
	bne $t1, $t2, label449
	j label450
label449:
	li $t0, 1
	sw $t0, -2732($fp)
label450:
	lw $t0, -1940($fp)
	sw $t0, -2748($fp)
	addi $sp, $sp, -4
	lw $t0, -2728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2748($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2752($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -2752($fp)
	sub $t0, $t0, $t1
	sw $t0, -2756($fp)
	lw $t1, -2756($fp)
	li $t2, 0
	bne $t1, $t2, label438
	j label440
label440:
	li $t0, 0
	sw $t0, -2760($fp)
	lw $t0, -1412($fp)
	sw $t0, -2764($fp)
	lw $t1, -2764($fp)
	li $t2, 0
	bne $t1, $t2, label452
	j label453
label452:
	li $t0, 1
	sw $t0, -2760($fp)
label453:
	lw $t0, -440($fp)
	sw $t0, -2768($fp)
	lw $t0, -716($fp)
	sw $t0, -2772($fp)
	lw $t0, -2768($fp)
	lw $t1, -2772($fp)
	sub $t0, $t0, $t1
	sw $t0, -2776($fp)
	lw $t1, -2760($fp)
	lw $t2, -2776($fp)
	bge $t1, $t2, label438
	j label439
label438:
	li $t0, 1
	sw $t0, -2580($fp)
label439:
	lw $ra, -4($fp)
	lw $v0, -2580($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label361:
	addi $t0, $fp, -32
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
	lw $t0, -2796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -2800($fp)
	li $t0, 1
	sw $t0, -2804($fp)
	li $t0, 4
	lw $t1, -2804($fp)
	mul $t0, $t0, $t1
	sw $t0, -2808($fp)
	lw $t0, -2808($fp)
	lw $t1, -2800($fp)
	add $t0, $t0, $t1
	sw $t0, -2812($fp)
	lw $t0, -2812($fp)
	lw $t1, 0($t0)
	sw $t1, -2816($fp)
	lw $t0, -2816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -2820($fp)
	li $t0, 2
	sw $t0, -2824($fp)
	li $t0, 4
	lw $t1, -2824($fp)
	mul $t0, $t0, $t1
	sw $t0, -2828($fp)
	lw $t0, -2828($fp)
	lw $t1, -2820($fp)
	add $t0, $t0, $t1
	sw $t0, -2832($fp)
	lw $t0, -2832($fp)
	lw $t1, 0($t0)
	sw $t1, -2836($fp)
	lw $t0, -2836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -2840($fp)
	li $t0, 3
	sw $t0, -2844($fp)
	li $t0, 4
	lw $t1, -2844($fp)
	mul $t0, $t0, $t1
	sw $t0, -2848($fp)
	lw $t0, -2848($fp)
	lw $t1, -2840($fp)
	add $t0, $t0, $t1
	sw $t0, -2852($fp)
	lw $t0, -2852($fp)
	lw $t1, 0($t0)
	sw $t1, -2856($fp)
	lw $t0, -2856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -2860($fp)
	li $t0, 4
	sw $t0, -2864($fp)
	li $t0, 4
	lw $t1, -2864($fp)
	mul $t0, $t0, $t1
	sw $t0, -2868($fp)
	lw $t0, -2868($fp)
	lw $t1, -2860($fp)
	add $t0, $t0, $t1
	sw $t0, -2872($fp)
	lw $t0, -2872($fp)
	lw $t1, 0($t0)
	sw $t1, -2876($fp)
	lw $t0, -2876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -2880($fp)
	li $t0, 5
	sw $t0, -2884($fp)
	li $t0, 4
	lw $t1, -2884($fp)
	mul $t0, $t0, $t1
	sw $t0, -2888($fp)
	lw $t0, -2888($fp)
	lw $t1, -2880($fp)
	add $t0, $t0, $t1
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	lw $t1, 0($t0)
	sw $t1, -2896($fp)
	lw $t0, -2896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -2900($fp)
	li $t0, 6
	sw $t0, -2904($fp)
	li $t0, 4
	lw $t1, -2904($fp)
	mul $t0, $t0, $t1
	sw $t0, -2908($fp)
	lw $t0, -2908($fp)
	lw $t1, -2900($fp)
	add $t0, $t0, $t1
	sw $t0, -2912($fp)
	lw $t0, -2912($fp)
	lw $t1, 0($t0)
	sw $t1, -2916($fp)
	lw $t0, -2916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -380($fp)
	sw $t0, -2920($fp)
	lw $t0, -2920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -392($fp)
	sw $t0, -2924($fp)
	lw $t0, -2924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -404($fp)
	sw $t0, -2928($fp)
	lw $t0, -2928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -416($fp)
	sw $t0, -2932($fp)
	lw $t0, -2932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -428($fp)
	sw $t0, -2936($fp)
	lw $t0, -2936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -440($fp)
	sw $t0, -2940($fp)
	lw $t0, -2940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -2944($fp)
	li $t0, 0
	sw $t0, -2948($fp)
	li $t0, 4
	lw $t1, -2948($fp)
	mul $t0, $t0, $t1
	sw $t0, -2952($fp)
	lw $t0, -2952($fp)
	lw $t1, -2944($fp)
	add $t0, $t0, $t1
	sw $t0, -2956($fp)
	lw $t0, -2956($fp)
	lw $t1, 0($t0)
	sw $t1, -2960($fp)
	lw $t0, -2960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -476($fp)
	sw $t0, -2964($fp)
	lw $t0, -2964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -488($fp)
	sw $t0, -2968($fp)
	lw $t0, -2968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2972($fp)
	li $t0, 0
	sw $t0, -2976($fp)
	li $t0, 4
	lw $t1, -2976($fp)
	mul $t0, $t0, $t1
	sw $t0, -2980($fp)
	lw $t0, -2980($fp)
	lw $t1, -2972($fp)
	add $t0, $t0, $t1
	sw $t0, -2984($fp)
	lw $t0, -2984($fp)
	lw $t1, 0($t0)
	sw $t1, -2988($fp)
	lw $t0, -2988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -524($fp)
	sw $t0, -2992($fp)
	lw $t0, -2992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -536($fp)
	sw $t0, -2996($fp)
	lw $t0, -2996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -3000($fp)
	li $t0, 0
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
	lw $t0, -3016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -3020($fp)
	li $t0, 1
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
	lw $t0, -3036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -3040($fp)
	li $t0, 2
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
	lw $t0, -3056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -3060($fp)
	li $t0, 3
	sw $t0, -3064($fp)
	li $t0, 4
	lw $t1, -3064($fp)
	mul $t0, $t0, $t1
	sw $t0, -3068($fp)
	lw $t0, -3068($fp)
	lw $t1, -3060($fp)
	add $t0, $t0, $t1
	sw $t0, -3072($fp)
	lw $t0, -3072($fp)
	lw $t1, 0($t0)
	sw $t1, -3076($fp)
	lw $t0, -3076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -644($fp)
	sw $t0, -3080($fp)
	lw $t0, -3080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -656($fp)
	sw $t0, -3084($fp)
	lw $t0, -3084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -3088($fp)
	li $t0, 0
	sw $t0, -3092($fp)
	li $t0, 4
	lw $t1, -3092($fp)
	mul $t0, $t0, $t1
	sw $t0, -3096($fp)
	lw $t0, -3096($fp)
	lw $t1, -3088($fp)
	add $t0, $t0, $t1
	sw $t0, -3100($fp)
	lw $t0, -3100($fp)
	lw $t1, 0($t0)
	sw $t1, -3104($fp)
	lw $t0, -3104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -3108($fp)
	li $t0, 1
	sw $t0, -3112($fp)
	li $t0, 4
	lw $t1, -3112($fp)
	mul $t0, $t0, $t1
	sw $t0, -3116($fp)
	lw $t0, -3116($fp)
	lw $t1, -3108($fp)
	add $t0, $t0, $t1
	sw $t0, -3120($fp)
	lw $t0, -3120($fp)
	lw $t1, 0($t0)
	sw $t1, -3124($fp)
	lw $t0, -3124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -716($fp)
	sw $t0, -3128($fp)
	lw $t0, -3128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -3132($fp)
	li $t0, 0
	sw $t0, -3136($fp)
	li $t0, 4
	lw $t1, -3136($fp)
	mul $t0, $t0, $t1
	sw $t0, -3140($fp)
	lw $t0, -3140($fp)
	lw $t1, -3132($fp)
	add $t0, $t0, $t1
	sw $t0, -3144($fp)
	lw $t0, -3144($fp)
	lw $t1, 0($t0)
	sw $t1, -3148($fp)
	lw $t0, -3148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -3152($fp)
	li $t0, 1
	sw $t0, -3156($fp)
	li $t0, 4
	lw $t1, -3156($fp)
	mul $t0, $t0, $t1
	sw $t0, -3160($fp)
	lw $t0, -3160($fp)
	lw $t1, -3152($fp)
	add $t0, $t0, $t1
	sw $t0, -3164($fp)
	lw $t0, -3164($fp)
	lw $t1, 0($t0)
	sw $t1, -3168($fp)
	lw $t0, -3168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -776($fp)
	sw $t0, -3172($fp)
	lw $t0, -3172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -788($fp)
	sw $t0, -3176($fp)
	lw $t0, -3176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -3180($fp)
	li $t0, 0
	sw $t0, -3184($fp)
	li $t0, 4
	lw $t1, -3184($fp)
	mul $t0, $t0, $t1
	sw $t0, -3188($fp)
	lw $t0, -3188($fp)
	lw $t1, -3180($fp)
	add $t0, $t0, $t1
	sw $t0, -3192($fp)
	lw $t0, -3192($fp)
	lw $t1, 0($t0)
	sw $t1, -3196($fp)
	lw $t0, -3196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -3200($fp)
	li $t0, 1
	sw $t0, -3204($fp)
	li $t0, 4
	lw $t1, -3204($fp)
	mul $t0, $t0, $t1
	sw $t0, -3208($fp)
	lw $t0, -3208($fp)
	lw $t1, -3200($fp)
	add $t0, $t0, $t1
	sw $t0, -3212($fp)
	lw $t0, -3212($fp)
	lw $t1, 0($t0)
	sw $t1, -3216($fp)
	lw $t0, -3216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -3220($fp)
	li $t0, 2
	sw $t0, -3224($fp)
	li $t0, 4
	lw $t1, -3224($fp)
	mul $t0, $t0, $t1
	sw $t0, -3228($fp)
	lw $t0, -3228($fp)
	lw $t1, -3220($fp)
	add $t0, $t0, $t1
	sw $t0, -3232($fp)
	lw $t0, -3232($fp)
	lw $t1, 0($t0)
	sw $t1, -3236($fp)
	lw $t0, -3236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -3240($fp)
	li $t0, 3
	sw $t0, -3244($fp)
	li $t0, 4
	lw $t1, -3244($fp)
	mul $t0, $t0, $t1
	sw $t0, -3248($fp)
	lw $t0, -3248($fp)
	lw $t1, -3240($fp)
	add $t0, $t0, $t1
	sw $t0, -3252($fp)
	lw $t0, -3252($fp)
	lw $t1, 0($t0)
	sw $t1, -3256($fp)
	lw $t0, -3256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -3260($fp)
	li $t0, 4
	sw $t0, -3264($fp)
	li $t0, 4
	lw $t1, -3264($fp)
	mul $t0, $t0, $t1
	sw $t0, -3268($fp)
	lw $t0, -3268($fp)
	lw $t1, -3260($fp)
	add $t0, $t0, $t1
	sw $t0, -3272($fp)
	lw $t0, -3272($fp)
	lw $t1, 0($t0)
	sw $t1, -3276($fp)
	lw $t0, -3276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -3280($fp)
	li $t0, 5
	sw $t0, -3284($fp)
	li $t0, 4
	lw $t1, -3284($fp)
	mul $t0, $t0, $t1
	sw $t0, -3288($fp)
	lw $t0, -3288($fp)
	lw $t1, -3280($fp)
	add $t0, $t0, $t1
	sw $t0, -3292($fp)
	lw $t0, -3292($fp)
	lw $t1, 0($t0)
	sw $t1, -3296($fp)
	lw $t0, -3296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -3300($fp)
	li $t0, 6
	sw $t0, -3304($fp)
	li $t0, 4
	lw $t1, -3304($fp)
	mul $t0, $t0, $t1
	sw $t0, -3308($fp)
	lw $t0, -3308($fp)
	lw $t1, -3300($fp)
	add $t0, $t0, $t1
	sw $t0, -3312($fp)
	lw $t0, -3312($fp)
	lw $t1, 0($t0)
	sw $t1, -3316($fp)
	lw $t0, -3316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -3320($fp)
	li $t0, 7
	sw $t0, -3324($fp)
	li $t0, 4
	lw $t1, -3324($fp)
	mul $t0, $t0, $t1
	sw $t0, -3328($fp)
	lw $t0, -3328($fp)
	lw $t1, -3320($fp)
	add $t0, $t0, $t1
	sw $t0, -3332($fp)
	lw $t0, -3332($fp)
	lw $t1, 0($t0)
	sw $t1, -3336($fp)
	lw $t0, -3336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -992($fp)
	sw $t0, -3340($fp)
	lw $t0, -3340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1004($fp)
	sw $t0, -3344($fp)
	lw $t0, -3344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1016($fp)
	sw $t0, -3348($fp)
	lw $t0, -3348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1028($fp)
	sw $t0, -3352($fp)
	lw $t0, -3352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1040($fp)
	sw $t0, -3356($fp)
	lw $t0, -3356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1052($fp)
	sw $t0, -3360($fp)
	lw $t0, -3360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1064($fp)
	sw $t0, -3364($fp)
	lw $t0, -3364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1076($fp)
	sw $t0, -3368($fp)
	lw $t0, -3368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1088($fp)
	sw $t0, -3372($fp)
	lw $t0, -3372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1100($fp)
	sw $t0, -3376($fp)
	lw $t0, -3376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1112($fp)
	sw $t0, -3380($fp)
	lw $t0, -3380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -3384($fp)
	li $t0, 0
	sw $t0, -3388($fp)
	li $t0, 4
	lw $t1, -3388($fp)
	mul $t0, $t0, $t1
	sw $t0, -3392($fp)
	lw $t0, -3392($fp)
	lw $t1, -3384($fp)
	add $t0, $t0, $t1
	sw $t0, -3396($fp)
	lw $t0, -3396($fp)
	lw $t1, 0($t0)
	sw $t1, -3400($fp)
	lw $t0, -3400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -3404($fp)
	li $t0, 1
	sw $t0, -3408($fp)
	li $t0, 4
	lw $t1, -3408($fp)
	mul $t0, $t0, $t1
	sw $t0, -3412($fp)
	lw $t0, -3412($fp)
	lw $t1, -3404($fp)
	add $t0, $t0, $t1
	sw $t0, -3416($fp)
	lw $t0, -3416($fp)
	lw $t1, 0($t0)
	sw $t1, -3420($fp)
	lw $t0, -3420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -3424($fp)
	li $t0, 2
	sw $t0, -3428($fp)
	li $t0, 4
	lw $t1, -3428($fp)
	mul $t0, $t0, $t1
	sw $t0, -3432($fp)
	lw $t0, -3432($fp)
	lw $t1, -3424($fp)
	add $t0, $t0, $t1
	sw $t0, -3436($fp)
	lw $t0, -3436($fp)
	lw $t1, 0($t0)
	sw $t1, -3440($fp)
	lw $t0, -3440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -3444($fp)
	li $t0, 3
	sw $t0, -3448($fp)
	li $t0, 4
	lw $t1, -3448($fp)
	mul $t0, $t0, $t1
	sw $t0, -3452($fp)
	lw $t0, -3452($fp)
	lw $t1, -3444($fp)
	add $t0, $t0, $t1
	sw $t0, -3456($fp)
	lw $t0, -3456($fp)
	lw $t1, 0($t0)
	sw $t1, -3460($fp)
	lw $t0, -3460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -3464($fp)
	li $t0, 4
	sw $t0, -3468($fp)
	li $t0, 4
	lw $t1, -3468($fp)
	mul $t0, $t0, $t1
	sw $t0, -3472($fp)
	lw $t0, -3472($fp)
	lw $t1, -3464($fp)
	add $t0, $t0, $t1
	sw $t0, -3476($fp)
	lw $t0, -3476($fp)
	lw $t1, 0($t0)
	sw $t1, -3480($fp)
	lw $t0, -3480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1244($fp)
	sw $t0, -3484($fp)
	lw $t0, -3484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1256($fp)
	sw $t0, -3488($fp)
	lw $t0, -3488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -3492($fp)
	li $t0, 0
	sw $t0, -3496($fp)
	li $t0, 4
	lw $t1, -3496($fp)
	mul $t0, $t0, $t1
	sw $t0, -3500($fp)
	lw $t0, -3500($fp)
	lw $t1, -3492($fp)
	add $t0, $t0, $t1
	sw $t0, -3504($fp)
	lw $t0, -3504($fp)
	lw $t1, 0($t0)
	sw $t1, -3508($fp)
	lw $t0, -3508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -3512($fp)
	li $t0, 1
	sw $t0, -3516($fp)
	li $t0, 4
	lw $t1, -3516($fp)
	mul $t0, $t0, $t1
	sw $t0, -3520($fp)
	lw $t0, -3520($fp)
	lw $t1, -3512($fp)
	add $t0, $t0, $t1
	sw $t0, -3524($fp)
	lw $t0, -3524($fp)
	lw $t1, 0($t0)
	sw $t1, -3528($fp)
	lw $t0, -3528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -3532($fp)
	li $t0, 2
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
	addi $t0, $fp, -148
	sw $t0, -3552($fp)
	li $t0, 3
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
	addi $t0, $fp, -148
	sw $t0, -3572($fp)
	li $t0, 4
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
	addi $t0, $fp, -148
	sw $t0, -3592($fp)
	li $t0, 5
	sw $t0, -3596($fp)
	li $t0, 4
	lw $t1, -3596($fp)
	mul $t0, $t0, $t1
	sw $t0, -3600($fp)
	lw $t0, -3600($fp)
	lw $t1, -3592($fp)
	add $t0, $t0, $t1
	sw $t0, -3604($fp)
	lw $t0, -3604($fp)
	lw $t1, 0($t0)
	sw $t1, -3608($fp)
	lw $t0, -3608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1412($fp)
	sw $t0, -3612($fp)
	lw $t0, -3612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1424($fp)
	sw $t0, -3616($fp)
	lw $t0, -3616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1436($fp)
	sw $t0, -3620($fp)
	lw $t0, -3620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -3624($fp)
	li $t0, 0
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
	addi $t0, $fp, -164
	sw $t0, -3644($fp)
	li $t0, 1
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
	addi $t0, $fp, -164
	sw $t0, -3664($fp)
	li $t0, 2
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
	addi $t0, $fp, -164
	sw $t0, -3684($fp)
	li $t0, 3
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
	lw $t0, -1544($fp)
	sw $t0, -3704($fp)
	lw $t0, -3704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1556($fp)
	sw $t0, -3708($fp)
	lw $t0, -3708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1568($fp)
	sw $t0, -3712($fp)
	lw $t0, -3712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1580($fp)
	sw $t0, -3716($fp)
	lw $t0, -3716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1592($fp)
	sw $t0, -3720($fp)
	lw $t0, -3720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1604($fp)
	sw $t0, -3724($fp)
	lw $t0, -3724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1616($fp)
	sw $t0, -3728($fp)
	lw $t0, -3728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1628($fp)
	sw $t0, -3732($fp)
	lw $t0, -3732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1640($fp)
	sw $t0, -3736($fp)
	lw $t0, -3736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1652($fp)
	sw $t0, -3740($fp)
	lw $t0, -3740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1664($fp)
	sw $t0, -3744($fp)
	lw $t0, -3744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1676($fp)
	sw $t0, -3748($fp)
	lw $t0, -3748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1688($fp)
	sw $t0, -3752($fp)
	lw $t0, -3752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -204
	sw $t0, -3756($fp)
	li $t0, 0
	sw $t0, -3760($fp)
	li $t0, 4
	lw $t1, -3760($fp)
	mul $t0, $t0, $t1
	sw $t0, -3764($fp)
	lw $t0, -3764($fp)
	lw $t1, -3756($fp)
	add $t0, $t0, $t1
	sw $t0, -3768($fp)
	lw $t0, -3768($fp)
	lw $t1, 0($t0)
	sw $t1, -3772($fp)
	lw $t0, -3772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -204
	sw $t0, -3776($fp)
	li $t0, 1
	sw $t0, -3780($fp)
	li $t0, 4
	lw $t1, -3780($fp)
	mul $t0, $t0, $t1
	sw $t0, -3784($fp)
	lw $t0, -3784($fp)
	lw $t1, -3776($fp)
	add $t0, $t0, $t1
	sw $t0, -3788($fp)
	lw $t0, -3788($fp)
	lw $t1, 0($t0)
	sw $t1, -3792($fp)
	lw $t0, -3792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -204
	sw $t0, -3796($fp)
	li $t0, 2
	sw $t0, -3800($fp)
	li $t0, 4
	lw $t1, -3800($fp)
	mul $t0, $t0, $t1
	sw $t0, -3804($fp)
	lw $t0, -3804($fp)
	lw $t1, -3796($fp)
	add $t0, $t0, $t1
	sw $t0, -3808($fp)
	lw $t0, -3808($fp)
	lw $t1, 0($t0)
	sw $t1, -3812($fp)
	lw $t0, -3812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -204
	sw $t0, -3816($fp)
	li $t0, 3
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
	lw $t0, -3832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -204
	sw $t0, -3836($fp)
	li $t0, 4
	sw $t0, -3840($fp)
	li $t0, 4
	lw $t1, -3840($fp)
	mul $t0, $t0, $t1
	sw $t0, -3844($fp)
	lw $t0, -3844($fp)
	lw $t1, -3836($fp)
	add $t0, $t0, $t1
	sw $t0, -3848($fp)
	lw $t0, -3848($fp)
	lw $t1, 0($t0)
	sw $t1, -3852($fp)
	lw $t0, -3852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -204
	sw $t0, -3856($fp)
	li $t0, 5
	sw $t0, -3860($fp)
	li $t0, 4
	lw $t1, -3860($fp)
	mul $t0, $t0, $t1
	sw $t0, -3864($fp)
	lw $t0, -3864($fp)
	lw $t1, -3856($fp)
	add $t0, $t0, $t1
	sw $t0, -3868($fp)
	lw $t0, -3868($fp)
	lw $t1, 0($t0)
	sw $t1, -3872($fp)
	lw $t0, -3872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -204
	sw $t0, -3876($fp)
	li $t0, 6
	sw $t0, -3880($fp)
	li $t0, 4
	lw $t1, -3880($fp)
	mul $t0, $t0, $t1
	sw $t0, -3884($fp)
	lw $t0, -3884($fp)
	lw $t1, -3876($fp)
	add $t0, $t0, $t1
	sw $t0, -3888($fp)
	lw $t0, -3888($fp)
	lw $t1, 0($t0)
	sw $t1, -3892($fp)
	lw $t0, -3892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -204
	sw $t0, -3896($fp)
	li $t0, 7
	sw $t0, -3900($fp)
	li $t0, 4
	lw $t1, -3900($fp)
	mul $t0, $t0, $t1
	sw $t0, -3904($fp)
	lw $t0, -3904($fp)
	lw $t1, -3896($fp)
	add $t0, $t0, $t1
	sw $t0, -3908($fp)
	lw $t0, -3908($fp)
	lw $t1, 0($t0)
	sw $t1, -3912($fp)
	lw $t0, -3912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -204
	sw $t0, -3916($fp)
	li $t0, 8
	sw $t0, -3920($fp)
	li $t0, 4
	lw $t1, -3920($fp)
	mul $t0, $t0, $t1
	sw $t0, -3924($fp)
	lw $t0, -3924($fp)
	lw $t1, -3916($fp)
	add $t0, $t0, $t1
	sw $t0, -3928($fp)
	lw $t0, -3928($fp)
	lw $t1, 0($t0)
	sw $t1, -3932($fp)
	lw $t0, -3932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -204
	sw $t0, -3936($fp)
	li $t0, 9
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
	lw $t0, -1940($fp)
	sw $t0, -3956($fp)
	lw $t0, -3956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3960($fp)
	lw $t0, 8($fp)
	sw $t0, -3964($fp)
	li $t0, 5584
	sw $t0, -3968($fp)
	lw $t1, -3964($fp)
	lw $t2, -3968($fp)
	bne $t1, $t2, label454
	j label455
label454:
	li $t0, 1
	sw $t0, -3960($fp)
label455:
	addi $t0, $fp, -56
	sw $t0, -3972($fp)
	li $t0, 3
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
	li $t0, 0
	sw $t0, -3992($fp)
	jal f9
	sw $v0, -3996($fp)
	addi $sp, $sp, 4
	li $t0, 6635
	sw $t0, -4000($fp)
	lw $t1, -3996($fp)
	lw $t2, -4000($fp)
	beq $t1, $t2, label456
	j label457
label456:
	li $t0, 1
	sw $t0, -3992($fp)
label457:
	addi $sp, $sp, -4
	lw $t0, -3960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3992($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4004($fp)
	addi $sp, $sp, 16
	lw $ra, -4($fp)
	lw $v0, -4004($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -4008($fp)
	li $t0, 11715
	sw $t0, -4012($fp)
	lw $t1, -4012($fp)
	li $t2, 0
	bne $t1, $t2, label460
	j label459
label460:
	lw $t0, -1544($fp)
	sw $t0, -4016($fp)
	lw $t0, -656($fp)
	sw $t0, -4020($fp)
	lw $t0, -4016($fp)
	lw $t1, -4020($fp)
	mul $t0, $t0, $t1
	sw $t0, -4024($fp)
	li $t0, 0
	lw $t1, -4024($fp)
	sub $t0, $t0, $t1
	sw $t0, -4028($fp)
	li $t0, 0
	sw $t0, -4032($fp)
	li $t0, 1092
	sw $t0, -4036($fp)
	lw $t1, -4036($fp)
	li $t2, 0
	bne $t1, $t2, label462
	j label461
label461:
	li $t0, 1
	sw $t0, -4032($fp)
label462:
	li $t0, 16631
	sw $t0, -4040($fp)
	lw $t0, -4032($fp)
	lw $t1, -4040($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4044($fp)
	addi $t0, $fp, -64
	sw $t0, -4048($fp)
	lw $t0, -1100($fp)
	sw $t0, -4052($fp)
	li $t0, 4
	lw $t1, -4052($fp)
	mul $t0, $t0, $t1
	sw $t0, -4056($fp)
	lw $t0, -4056($fp)
	lw $t1, -4048($fp)
	add $t0, $t0, $t1
	sw $t0, -4060($fp)
	lw $t0, -4060($fp)
	lw $t1, 0($t0)
	sw $t1, -4064($fp)
	li $t0, 27171
	sw $t0, -4068($fp)
	addi $sp, $sp, -4
	lw $t0, -4044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4068($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4072($fp)
	addi $sp, $sp, 16
	lw $t1, -4028($fp)
	lw $t2, -4072($fp)
	blt $t1, $t2, label458
	j label459
label458:
	li $t0, 1
	sw $t0, -4008($fp)
label459:
label463:
	li $t0, 64931
	sw $t0, -4076($fp)
	lw $t0, -1544($fp)
	sw $t0, -4080($fp)
	lw $t0, -1016($fp)
	sw $t0, -4084($fp)
	lw $t0, -4080($fp)
	lw $t1, -4084($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4088($fp)
	li $t0, 0
	lw $t1, -4088($fp)
	sub $t0, $t0, $t1
	sw $t0, -4092($fp)
	li $t0, 0
	lw $t1, -4092($fp)
	sub $t0, $t0, $t1
	sw $t0, -4096($fp)
	lw $t0, -4076($fp)
	lw $t1, -4096($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4100($fp)
	li $t0, 0
	lw $t1, -4100($fp)
	sub $t0, $t0, $t1
	sw $t0, -4104($fp)
	lw $t1, -4104($fp)
	li $t2, 0
	bne $t1, $t2, label465
	j label464
label464:
	li $t0, 3051
	sw $t0, -4108($fp)
	lw $t0, -644($fp)
	sw $t0, -4112($fp)
	lw $t1, -4108($fp)
	lw $t2, -4112($fp)
	bge $t1, $t2, label466
	j label467
label466:
	li $t0, 0
	sw $t0, -4116($fp)
	li $t0, 29231
	sw $t0, -4120($fp)
	li $t0, 10258
	sw $t0, -4124($fp)
	lw $t0, -4120($fp)
	lw $t1, -4124($fp)
	add $t0, $t0, $t1
	sw $t0, -4128($fp)
	lw $t1, -4128($fp)
	li $t2, 0
	bne $t1, $t2, label473
	j label475
label475:
	lw $t0, -1568($fp)
	sw $t0, -4132($fp)
	lw $t1, -4132($fp)
	li $t2, 0
	bne $t1, $t2, label473
	j label474
label473:
	li $t0, 1
	sw $t0, -4116($fp)
label474:
	li $t0, 0
	sw $t0, -4136($fp)
	lw $t0, -644($fp)
	sw $t0, -4140($fp)
	lw $t0, -1568($fp)
	sw $t0, -4144($fp)
	lw $t0, -4140($fp)
	lw $t1, -4144($fp)
	add $t0, $t0, $t1
	sw $t0, -4148($fp)
	lw $t0, -644($fp)
	sw $t0, -4152($fp)
	lw $t1, -4148($fp)
	lw $t2, -4152($fp)
	bne $t1, $t2, label476
	j label477
label476:
	li $t0, 1
	sw $t0, -4136($fp)
label477:
	li $t0, 38407
	sw $t0, -4156($fp)
	lw $t0, -4156($fp)
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	sw $t0, -4160($fp)
	addi $sp, $sp, -4
	lw $t0, -4116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4160($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4164($fp)
	addi $sp, $sp, 16
	lw $t0, -1040($fp)
	sw $t0, -4168($fp)
	li $t0, 10650
	sw $t0, -4172($fp)
	lw $t0, -4168($fp)
	lw $t1, -4172($fp)
	sub $t0, $t0, $t1
	sw $t0, -4176($fp)
	li $t0, 0
	sw $t0, -4180($fp)
	li $t0, 0
	sw $t0, -4184($fp)
	lw $t0, -1028($fp)
	sw $t0, -4188($fp)
	lw $t1, -4188($fp)
	li $t2, 0
	bne $t1, $t2, label481
	j label480
label480:
	li $t0, 1
	sw $t0, -4184($fp)
label481:
	li $t0, 46134
	sw $t0, -4192($fp)
	lw $t1, -4184($fp)
	lw $t2, -4192($fp)
	bgt $t1, $t2, label478
	j label479
label478:
	li $t0, 1
	sw $t0, -4180($fp)
label479:
	addi $sp, $sp, -4
	lw $t0, -4164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4180($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4196($fp)
	addi $sp, $sp, 16
	li $t0, 57999
	sw $t0, -4200($fp)
	lw $t1, -4196($fp)
	lw $t2, -4200($fp)
	blt $t1, $t2, label469
	j label472
label472:
	addi $t0, $fp, -124
	sw $t0, -4204($fp)
	lw $t0, -1256($fp)
	sw $t0, -4208($fp)
	li $t0, 4
	lw $t1, -4208($fp)
	mul $t0, $t0, $t1
	sw $t0, -4212($fp)
	lw $t0, -4212($fp)
	lw $t1, -4204($fp)
	add $t0, $t0, $t1
	sw $t0, -4216($fp)
	lw $t0, -4216($fp)
	lw $t1, 0($t0)
	sw $t1, -4220($fp)
	li $t0, 0
	lw $t1, -4220($fp)
	sub $t0, $t0, $t1
	sw $t0, -4224($fp)
	lw $t1, -4224($fp)
	li $t2, 0
	bne $t1, $t2, label469
	j label470
label469:
	li $t0, 0
	sw $t0, -4228($fp)
	li $t0, 54715
	sw $t0, -4232($fp)
	li $t0, 0
	lw $t1, -4232($fp)
	sub $t0, $t0, $t1
	sw $t0, -4236($fp)
	li $t0, 0
	lw $t1, -4236($fp)
	sub $t0, $t0, $t1
	sw $t0, -4240($fp)
	jal f9
	sw $v0, -4244($fp)
	addi $sp, $sp, 4
	li $t0, 23750
	sw $t0, -4248($fp)
	lw $t0, -4244($fp)
	lw $t1, -4248($fp)
	mul $t0, $t0, $t1
	sw $t0, -4252($fp)
	lw $t1, -4240($fp)
	lw $t2, -4252($fp)
	ble $t1, $t2, label482
	j label483
label482:
	li $t0, 1
	sw $t0, -4228($fp)
label483:
	j label471
label470:
	addi $t0, $fp, -124
	sw $t0, -4256($fp)
	li $t0, 1
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
	lw $ra, -4($fp)
	lw $v0, -4272($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label471:
	j label468
label467:
	lw $t0, -1064($fp)
	sw $t0, -4276($fp)
	lw $t0, -1100($fp)
	sw $t0, -4280($fp)
	lw $t0, -4276($fp)
	lw $t1, -4280($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4284($fp)
	lw $t0, -416($fp)
	sw $t0, -4288($fp)
	lw $t0, -4284($fp)
	lw $t1, -4288($fp)
	add $t0, $t0, $t1
	sw $t0, -4292($fp)
	li $t0, 40805
	sw $t0, -4296($fp)
	lw $t0, -4292($fp)
	lw $t1, -4296($fp)
	sub $t0, $t0, $t1
	sw $t0, -4300($fp)
	li $t0, 30564
	sw $t0, -4304($fp)
	li $t0, 0
	lw $t1, -4304($fp)
	sub $t0, $t0, $t1
	sw $t0, -4308($fp)
	lw $t0, -4300($fp)
	lw $t1, -4308($fp)
	sub $t0, $t0, $t1
	sw $t0, -4312($fp)
	li $t0, 15630
	sw $t0, -4316($fp)
	lw $t0, -4312($fp)
	lw $t1, -4316($fp)
	add $t0, $t0, $t1
	sw $t0, -4320($fp)
	lw $ra, -4($fp)
	lw $v0, -4320($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label468:
	j label463
label465:
label484:
	lw $t0, -788($fp)
	sw $t0, -4324($fp)
	lw $t1, -4324($fp)
	li $t2, 0
	bne $t1, $t2, label485
	j label486
label485:
	li $t0, 0
	sw $t0, -4328($fp)
	addi $t0, $fp, -204
	sw $t0, -4332($fp)
	li $t0, 0
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
	li $t0, 0
	lw $t1, -4348($fp)
	sub $t0, $t0, $t1
	sw $t0, -4352($fp)
	lw $t1, -4352($fp)
	li $t2, 0
	bne $t1, $t2, label488
	j label487
label487:
	li $t0, 1
	sw $t0, -4328($fp)
label488:
	lw $ra, -4($fp)
	lw $v0, -4328($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label484
label486:
	li $t0, 0
	sw $t0, -4356($fp)
	lw $t0, -1604($fp)
	sw $t0, -4360($fp)
	lw $t1, -4360($fp)
	li $t2, 0
	bne $t1, $t2, label493
	j label492
label492:
	li $t0, 1
	sw $t0, -4356($fp)
label493:
	li $t0, 24546
	sw $t0, -4364($fp)
	lw $t0, -4356($fp)
	lw $t1, -4364($fp)
	add $t0, $t0, $t1
	sw $t0, -4368($fp)
	lw $t0, -1244($fp)
	sw $t0, -4372($fp)
	lw $t0, -1640($fp)
	sw $t0, -4376($fp)
	lw $t0, -4372($fp)
	lw $t1, -4376($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4380($fp)
	lw $t0, -1076($fp)
	sw $t0, -4384($fp)
	lw $t0, -788($fp)
	sw $t0, -4388($fp)
	lw $t0, -4384($fp)
	lw $t1, -4388($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4392($fp)
	lw $t0, -1088($fp)
	sw $t0, -4396($fp)
	lw $t0, -4392($fp)
	lw $t1, -4396($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4400($fp)
	addi $sp, $sp, -4
	lw $t0, -4368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4400($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4404($fp)
	addi $sp, $sp, 16
	lw $t0, -416($fp)
	sw $t0, -4408($fp)
	li $t0, 0
	lw $t1, -4408($fp)
	sub $t0, $t0, $t1
	sw $t0, -4412($fp)
	lw $t0, -4404($fp)
	lw $t1, -4412($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4416($fp)
	lw $t1, -4416($fp)
	li $t2, 0
	bne $t1, $t2, label489
	j label490
label489:
	li $t0, 17332
	sw $t0, -4420($fp)
	lw $t0, -4420($fp)
	sw $t0, -4424($fp)
	lw $t0, -4424($fp)
	sw $t0, -4428($fp)
	li $t0, 22169
	sw $t0, -4432($fp)
	lw $t0, -4432($fp)
	sw $t0, -4436($fp)
	lw $t0, -4436($fp)
	sw $t0, -4440($fp)
	li $t0, 13312
	sw $t0, -4444($fp)
	lw $t0, -4444($fp)
	sw $t0, -4448($fp)
	lw $t0, -4448($fp)
	sw $t0, -4452($fp)
	li $t0, 28251
	sw $t0, -4456($fp)
	lw $t0, -4456($fp)
	sw $t0, -4460($fp)
	lw $t0, -4460($fp)
	sw $t0, -4464($fp)
label494:
	li $t0, 19947
	sw $t0, -4468($fp)
	lw $t0, -416($fp)
	sw $t0, -4472($fp)
	lw $t0, -4468($fp)
	lw $t1, -4472($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4476($fp)
	lw $t0, -428($fp)
	sw $t0, -4480($fp)
	lw $t0, -4476($fp)
	lw $t1, -4480($fp)
	mul $t0, $t0, $t1
	sw $t0, -4484($fp)
	lw $t0, 4($fp)
	sw $t0, -4488($fp)
	li $t0, 0
	sw $t0, -4492($fp)
	li $t0, 18544
	sw $t0, -4496($fp)
	li $t0, 0
	lw $t1, -4496($fp)
	sub $t0, $t0, $t1
	sw $t0, -4500($fp)
	lw $t0, -644($fp)
	sw $t0, -4504($fp)
	lw $t1, -4500($fp)
	lw $t2, -4504($fp)
	bne $t1, $t2, label497
	j label498
label497:
	li $t0, 1
	sw $t0, -4492($fp)
label498:
	addi $sp, $sp, -4
	lw $t0, -4484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4492($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4508($fp)
	addi $sp, $sp, 16
	li $t0, 49821
	sw $t0, -4512($fp)
	jal f9
	sw $v0, -4516($fp)
	addi $sp, $sp, 4
	lw $t0, -4512($fp)
	lw $t1, -4516($fp)
	mul $t0, $t0, $t1
	sw $t0, -4520($fp)
	li $t0, 0
	lw $t1, -4520($fp)
	sub $t0, $t0, $t1
	sw $t0, -4524($fp)
	li $t0, 0
	lw $t1, -4524($fp)
	sub $t0, $t0, $t1
	sw $t0, -4528($fp)
	lw $t1, -4508($fp)
	lw $t2, -4528($fp)
	ble $t1, $t2, label495
	j label496
label495:
	li $t0, 26927
	sw $t0, -4532($fp)
	li $t0, 0
	lw $t1, -4532($fp)
	sub $t0, $t0, $t1
	sw $t0, -4536($fp)
	lw $t0, -416($fp)
	sw $t0, -4540($fp)
	li $t0, 25531
	sw $t0, -4544($fp)
	lw $t0, -4540($fp)
	lw $t1, -4544($fp)
	mul $t0, $t0, $t1
	sw $t0, -4548($fp)
	lw $t0, -1568($fp)
	sw $t0, -4552($fp)
	lw $t0, -4548($fp)
	lw $t1, -4552($fp)
	mul $t0, $t0, $t1
	sw $t0, -4556($fp)
	lw $t0, -4536($fp)
	lw $t1, -4556($fp)
	add $t0, $t0, $t1
	sw $t0, -4560($fp)
	lw $t1, -4560($fp)
	li $t2, 0
	bne $t1, $t2, label499
	j label502
label502:
	jal f9
	sw $v0, -4564($fp)
	addi $sp, $sp, 4
	lw $t1, -4564($fp)
	li $t2, 0
	bne $t1, $t2, label499
	j label500
label499:
label503:
	addi $t0, $fp, -148
	sw $t0, -4568($fp)
	li $t0, 0
	sw $t0, -4572($fp)
	lw $t0, -1604($fp)
	sw $t0, -4576($fp)
	lw $t1, -4576($fp)
	li $t2, 0
	bne $t1, $t2, label508
	j label507
label507:
	li $t0, 1
	sw $t0, -4572($fp)
label508:
	li $t0, 4
	lw $t1, -4572($fp)
	mul $t0, $t0, $t1
	sw $t0, -4580($fp)
	lw $t0, -4580($fp)
	lw $t1, -4568($fp)
	add $t0, $t0, $t1
	sw $t0, -4584($fp)
	lw $t0, -4584($fp)
	lw $t1, 0($t0)
	sw $t1, -4588($fp)
	li $t0, 61537
	sw $t0, -4592($fp)
	lw $t1, -4588($fp)
	lw $t2, -4592($fp)
	bne $t1, $t2, label506
	j label505
label506:
	addi $t0, $fp, -40
	sw $t0, -4596($fp)
	li $t0, 0
	sw $t0, -4600($fp)
	li $t0, 54098
	sw $t0, -4604($fp)
	lw $t0, -1664($fp)
	sw $t0, -4608($fp)
	lw $t1, -4604($fp)
	lw $t2, -4608($fp)
	bgt $t1, $t2, label509
	j label510
label509:
	li $t0, 1
	sw $t0, -4600($fp)
label510:
	li $t0, 4
	lw $t1, -4600($fp)
	mul $t0, $t0, $t1
	sw $t0, -4612($fp)
	lw $t0, -4612($fp)
	lw $t1, -4596($fp)
	add $t0, $t0, $t1
	sw $t0, -4616($fp)
	lw $t0, -4616($fp)
	lw $t1, 0($t0)
	sw $t1, -4620($fp)
	lw $t1, -4620($fp)
	li $t2, 0
	bne $t1, $t2, label504
	j label505
label504:
	li $t0, 0
	sw $t0, -4624($fp)
	lw $t0, -4448($fp)
	sw $t0, -4628($fp)
	lw $t1, -4628($fp)
	li $t2, 0
	bne $t1, $t2, label511
	j label513
label513:
	lw $t0, -1616($fp)
	sw $t0, -4632($fp)
	lw $t1, -4632($fp)
	li $t2, 0
	bne $t1, $t2, label511
	j label512
label511:
	li $t0, 1
	sw $t0, -4624($fp)
label512:
	j label503
label505:
	j label501
label500:
	addi $t0, $fp, -104
	sw $t0, -4636($fp)
	lw $t0, -1628($fp)
	sw $t0, -4640($fp)
	lw $t0, -4460($fp)
	sw $t0, -4644($fp)
	lw $t0, -4640($fp)
	lw $t1, -4644($fp)
	add $t0, $t0, $t1
	sw $t0, -4648($fp)
	li $t0, 4
	lw $t1, -4648($fp)
	mul $t0, $t0, $t1
	sw $t0, -4652($fp)
	lw $t0, -4652($fp)
	lw $t1, -4636($fp)
	add $t0, $t0, $t1
	sw $t0, -4656($fp)
	lw $t0, -4656($fp)
	lw $t1, 0($t0)
	sw $t1, -4660($fp)
	lw $t0, -4660($fp)
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	sw $t0, -4664($fp)
label501:
	j label494
label496:
	li $t0, 0
	sw $t0, -4668($fp)
	addi $t0, $fp, -164
	sw $t0, -4672($fp)
	lw $t0, -1568($fp)
	sw $t0, -4676($fp)
	li $t0, 0
	lw $t1, -4676($fp)
	sub $t0, $t0, $t1
	sw $t0, -4680($fp)
	li $t0, 4
	lw $t1, -4680($fp)
	mul $t0, $t0, $t1
	sw $t0, -4684($fp)
	lw $t0, -4684($fp)
	lw $t1, -4672($fp)
	add $t0, $t0, $t1
	sw $t0, -4688($fp)
	lw $t0, -4688($fp)
	lw $t1, 0($t0)
	sw $t1, -4692($fp)
	lw $t1, -4692($fp)
	li $t2, 0
	bne $t1, $t2, label516
	j label515
label516:
	li $t0, 0
	sw $t0, -4696($fp)
	li $t0, 26623
	sw $t0, -4700($fp)
	li $t0, 0
	lw $t1, -4700($fp)
	sub $t0, $t0, $t1
	sw $t0, -4704($fp)
	lw $t1, -4704($fp)
	li $t2, 0
	bne $t1, $t2, label518
	j label517
label517:
	li $t0, 1
	sw $t0, -4696($fp)
label518:
	addi $t0, $fp, -56
	sw $t0, -4708($fp)
	lw $t0, -1604($fp)
	sw $t0, -4712($fp)
	li $t0, 4
	lw $t1, -4712($fp)
	mul $t0, $t0, $t1
	sw $t0, -4716($fp)
	lw $t0, -4716($fp)
	lw $t1, -4708($fp)
	add $t0, $t0, $t1
	sw $t0, -4720($fp)
	lw $t0, -4720($fp)
	lw $t1, 0($t0)
	sw $t1, -4724($fp)
	lw $t0, -4696($fp)
	lw $t1, -4724($fp)
	sub $t0, $t0, $t1
	sw $t0, -4728($fp)
	lw $t1, -4728($fp)
	li $t2, 0
	bne $t1, $t2, label514
	j label515
label514:
	li $t0, 1
	sw $t0, -4668($fp)
label515:
	lw $t0, -1640($fp)
	sw $t0, -4732($fp)
	li $t0, 12632
	sw $t0, -4736($fp)
	lw $t0, -4424($fp)
	sw $t0, -4740($fp)
	lw $t0, -4740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4436($fp)
	sw $t0, -4744($fp)
	lw $t0, -4744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4448($fp)
	sw $t0, -4748($fp)
	lw $t0, -4748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4460($fp)
	sw $t0, -4752($fp)
	lw $t0, -4752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -4756($fp)
	li $t0, 53493
	sw $t0, -4760($fp)
	lw $t0, -1604($fp)
	sw $t0, -4764($fp)
	lw $t0, -4760($fp)
	lw $t1, -4764($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4768($fp)
	lw $t0, -4768($fp)
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	sw $t0, -4772($fp)
	li $t0, 4
	lw $t1, -4772($fp)
	mul $t0, $t0, $t1
	sw $t0, -4776($fp)
	lw $t0, -4776($fp)
	lw $t1, -4756($fp)
	add $t0, $t0, $t1
	sw $t0, -4780($fp)
	lw $t0, -4780($fp)
	lw $t1, 0($t0)
	sw $t1, -4784($fp)
	lw $ra, -4($fp)
	lw $v0, -4784($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -148
	sw $t0, -4788($fp)
	li $t0, 2
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
	li $t0, 64143
	sw $t0, -4808($fp)
	lw $t0, -4804($fp)
	lw $t1, -4808($fp)
	mul $t0, $t0, $t1
	sw $t0, -4812($fp)
	lw $t0, -4812($fp)
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	sw $t0, -4816($fp)
	lw $t1, -4816($fp)
	li $t2, 0
	bne $t1, $t2, label519
	j label520
label519:
	li $t0, 0
	sw $t0, -4820($fp)
	lw $t0, -1580($fp)
	sw $t0, -4824($fp)
	lw $t1, -4824($fp)
	li $t2, 0
	bne $t1, $t2, label522
	j label523
label522:
	li $t0, 1
	sw $t0, -4820($fp)
label523:
	li $t0, 0
	lw $t1, -4820($fp)
	sub $t0, $t0, $t1
	sw $t0, -4828($fp)
	li $t0, 0
	lw $t1, -4828($fp)
	sub $t0, $t0, $t1
	sw $t0, -4832($fp)
	li $t0, 0
	lw $t1, -4832($fp)
	sub $t0, $t0, $t1
	sw $t0, -4836($fp)
	lw $ra, -4($fp)
	lw $v0, -4836($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label521
label520:
	li $t0, 0
	sw $t0, -4840($fp)
	lw $t0, -1256($fp)
	sw $t0, -4844($fp)
	li $t0, 22462
	sw $t0, -4848($fp)
	lw $t0, -4844($fp)
	lw $t1, -4848($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4852($fp)
	li $t0, 8866
	sw $t0, -4856($fp)
	lw $t1, -4852($fp)
	lw $t2, -4856($fp)
	bgt $t1, $t2, label524
	j label525
label524:
	li $t0, 1
	sw $t0, -4840($fp)
label525:
label521:
	li $t0, 60545
	sw $t0, -4860($fp)
	lw $t0, -4860($fp)
	sw $t0, -4864($fp)
	lw $t0, -4864($fp)
	sw $t0, -4868($fp)
	addi $t0, $fp, -148
	sw $t0, -4872($fp)
	li $t0, 0
	sw $t0, -4876($fp)
	li $t0, 0
	sw $t0, -4880($fp)
	li $t0, 11641
	sw $t0, -4884($fp)
	lw $t1, -4884($fp)
	li $t2, 0
	bne $t1, $t2, label532
	j label531
label531:
	li $t0, 1
	sw $t0, -4880($fp)
label532:
	li $t0, 32616
	sw $t0, -4888($fp)
	lw $t1, -4880($fp)
	lw $t2, -4888($fp)
	beq $t1, $t2, label529
	j label530
label529:
	li $t0, 1
	sw $t0, -4876($fp)
label530:
	li $t0, 4
	lw $t1, -4876($fp)
	mul $t0, $t0, $t1
	sw $t0, -4892($fp)
	lw $t0, -4892($fp)
	lw $t1, -4872($fp)
	add $t0, $t0, $t1
	sw $t0, -4896($fp)
	lw $t0, -4896($fp)
	lw $t1, 0($t0)
	sw $t1, -4900($fp)
	lw $t1, -4900($fp)
	li $t2, 0
	bne $t1, $t2, label527
	j label526
label526:
	li $t0, 0
	sw $t0, -4904($fp)
	lw $t0, -1412($fp)
	sw $t0, -4908($fp)
	lw $t1, -4908($fp)
	li $t2, 0
	bne $t1, $t2, label537
	j label536
label536:
	li $t0, 1
	sw $t0, -4904($fp)
label537:
	lw $t0, -1424($fp)
	sw $t0, -4912($fp)
	lw $t0, -4904($fp)
	lw $t1, -4912($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4916($fp)
	li $t0, 56069
	sw $t0, -4920($fp)
	li $t0, 0
	lw $t1, -4920($fp)
	sub $t0, $t0, $t1
	sw $t0, -4924($fp)
	lw $t0, -4916($fp)
	lw $t1, -4924($fp)
	add $t0, $t0, $t1
	sw $t0, -4928($fp)
	lw $t0, -4928($fp)
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -4932($fp)
	lw $t1, -4932($fp)
	li $t2, 0
	bne $t1, $t2, label533
	j label534
label533:
	addi $t0, $fp, -164
	sw $t0, -4936($fp)
	lw $t0, -1628($fp)
	sw $t0, -4940($fp)
	li $t0, 4
	lw $t1, -4940($fp)
	mul $t0, $t0, $t1
	sw $t0, -4944($fp)
	lw $t0, -4944($fp)
	lw $t1, -4936($fp)
	add $t0, $t0, $t1
	sw $t0, -4948($fp)
	lw $t0, -4948($fp)
	lw $t1, 0($t0)
	sw $t1, -4952($fp)
	lw $t0, -524($fp)
	sw $t0, -4956($fp)
	lw $t0, -4864($fp)
	sw $t0, -4960($fp)
	lw $t0, -4956($fp)
	lw $t1, -4960($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4964($fp)
	lw $t0, -4952($fp)
	lw $t1, -4964($fp)
	add $t0, $t0, $t1
	sw $t0, -4968($fp)
	lw $t0, -4968($fp)
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -4972($fp)
	j label535
label534:
	li $t0, 0
	sw $t0, -4976($fp)
	addi $t0, $fp, -148
	sw $t0, -4980($fp)
	li $t0, 5
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
	jal f9
	sw $v0, -5000($fp)
	addi $sp, $sp, 4
	lw $t1, -4996($fp)
	lw $t2, -5000($fp)
	blt $t1, $t2, label538
	j label540
label540:
	lw $t0, -1676($fp)
	sw $t0, -5004($fp)
	lw $t1, -5004($fp)
	li $t2, 0
	bne $t1, $t2, label538
	j label539
label538:
	li $t0, 1
	sw $t0, -4976($fp)
label539:
label535:
	j label528
label527:
	li $t0, 0
	sw $t0, -5008($fp)
	addi $t0, $fp, -204
	sw $t0, -5012($fp)
	li $t0, 8
	sw $t0, -5016($fp)
	li $t0, 4
	lw $t1, -5016($fp)
	mul $t0, $t0, $t1
	sw $t0, -5020($fp)
	lw $t0, -5020($fp)
	lw $t1, -5012($fp)
	add $t0, $t0, $t1
	sw $t0, -5024($fp)
	lw $t0, -5024($fp)
	lw $t1, 0($t0)
	sw $t1, -5028($fp)
	li $t0, 0
	sw $t0, -5032($fp)
	lw $t0, -1436($fp)
	sw $t0, -5036($fp)
	lw $t0, -380($fp)
	sw $t0, -5040($fp)
	lw $t0, -5036($fp)
	lw $t1, -5040($fp)
	mul $t0, $t0, $t1
	sw $t0, -5044($fp)
	li $t0, 3298
	sw $t0, -5048($fp)
	lw $t1, -5044($fp)
	lw $t2, -5048($fp)
	ble $t1, $t2, label543
	j label544
label543:
	li $t0, 1
	sw $t0, -5032($fp)
label544:
	addi $sp, $sp, -4
	lw $t0, -5028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5032($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5052($fp)
	addi $sp, $sp, 12
	lw $t1, -5052($fp)
	li $t2, 0
	bne $t1, $t2, label542
	j label541
label541:
	li $t0, 1
	sw $t0, -5008($fp)
label542:
label528:
	li $t0, 27845
	sw $t0, -5056($fp)
	lw $t1, -5056($fp)
	li $t2, 0
	bne $t1, $t2, label545
	j label546
label545:
	addi $t0, $fp, -124
	sw $t0, -5060($fp)
	li $t0, 1
	sw $t0, -5064($fp)
	li $t0, 4
	lw $t1, -5064($fp)
	mul $t0, $t0, $t1
	sw $t0, -5068($fp)
	lw $t0, -5068($fp)
	lw $t1, -5060($fp)
	add $t0, $t0, $t1
	sw $t0, -5072($fp)
	lw $t0, -5072($fp)
	lw $t1, 0($t0)
	sw $t1, -5076($fp)
	li $t0, 0
	sw $t0, -5080($fp)
	addi $t0, $fp, -164
	sw $t0, -5084($fp)
	lw $t0, -4424($fp)
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
	lw $t1, -5100($fp)
	li $t2, 0
	bne $t1, $t2, label549
	j label548
label548:
	li $t0, 1
	sw $t0, -5080($fp)
label549:
	lw $t0, -5076($fp)
	lw $t1, -5080($fp)
	mul $t0, $t0, $t1
	sw $t0, -5104($fp)
	li $t0, 0
	sw $t0, -5108($fp)
	li $t0, 0
	sw $t0, -5112($fp)
	li $t0, 39845
	sw $t0, -5116($fp)
	li $t0, 34889
	sw $t0, -5120($fp)
	lw $t1, -5116($fp)
	lw $t2, -5120($fp)
	bne $t1, $t2, label552
	j label553
label552:
	li $t0, 1
	sw $t0, -5112($fp)
label553:
	lw $t0, -1628($fp)
	sw $t0, -5124($fp)
	lw $t1, -5112($fp)
	lw $t2, -5124($fp)
	bne $t1, $t2, label550
	j label551
label550:
	li $t0, 1
	sw $t0, -5108($fp)
label551:
	lw $t0, -1256($fp)
	sw $t0, -5128($fp)
	li $t0, 0
	sw $t0, -5132($fp)
	lw $t0, -4436($fp)
	sw $t0, -5136($fp)
	li $t0, 41157
	sw $t0, -5140($fp)
	lw $t0, -5136($fp)
	lw $t1, -5140($fp)
	mul $t0, $t0, $t1
	sw $t0, -5144($fp)
	lw $t0, -536($fp)
	sw $t0, -5148($fp)
	lw $t1, -5144($fp)
	lw $t2, -5148($fp)
	bne $t1, $t2, label554
	j label555
label554:
	li $t0, 1
	sw $t0, -5132($fp)
label555:
	addi $sp, $sp, -4
	lw $t0, -5108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5132($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5152($fp)
	addi $sp, $sp, 16
	lw $t0, -5104($fp)
	lw $t1, -5152($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5156($fp)
	j label547
label546:
	lw $t0, -4460($fp)
	sw $t0, -5160($fp)
label547:
	j label491
label490:
	li $t0, 0
	sw $t0, -5164($fp)
	li $t0, 0
	sw $t0, -5168($fp)
	li $t0, 61104
	sw $t0, -5172($fp)
	lw $t1, -5172($fp)
	li $t2, 0
	bne $t1, $t2, label562
	j label561
label561:
	li $t0, 1
	sw $t0, -5168($fp)
label562:
	li $t0, 0
	lw $t1, -5168($fp)
	sub $t0, $t0, $t1
	sw $t0, -5176($fp)
	lw $t0, -1544($fp)
	sw $t0, -5180($fp)
	lw $t0, -1556($fp)
	sw $t0, -5184($fp)
	lw $t0, -5180($fp)
	lw $t1, -5184($fp)
	sub $t0, $t0, $t1
	sw $t0, -5188($fp)
	li $t0, 24130
	sw $t0, -5192($fp)
	lw $t0, -5188($fp)
	lw $t1, -5192($fp)
	sub $t0, $t0, $t1
	sw $t0, -5196($fp)
	lw $t1, -5176($fp)
	lw $t2, -5196($fp)
	bge $t1, $t2, label559
	j label560
label559:
	li $t0, 1
	sw $t0, -5164($fp)
label560:
	addi $t0, $fp, -36
	sw $t0, -5200($fp)
	lw $t0, -1424($fp)
	sw $t0, -5204($fp)
	lw $t0, -5204($fp)
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	sw $t0, -5208($fp)
	li $t0, 4
	lw $t1, -5208($fp)
	mul $t0, $t0, $t1
	sw $t0, -5212($fp)
	lw $t0, -5212($fp)
	lw $t1, -5200($fp)
	add $t0, $t0, $t1
	sw $t0, -5216($fp)
	lw $t0, -5216($fp)
	lw $t1, 0($t0)
	sw $t1, -5220($fp)
	lw $t1, -5164($fp)
	lw $t2, -5220($fp)
	beq $t1, $t2, label556
	j label557
label556:
	li $t0, 61816
	sw $t0, -5240($fp)
	lw $t0, -5240($fp)
	sw $t0, -5244($fp)
	lw $t0, -5244($fp)
	sw $t0, -5248($fp)
	li $t0, 21099
	sw $t0, -5252($fp)
	lw $t0, -5252($fp)
	sw $t0, -5256($fp)
	lw $t0, -5256($fp)
	sw $t0, -5260($fp)
	li $t0, 20131
	sw $t0, -5264($fp)
	lw $t0, -5264($fp)
	sw $t0, -5268($fp)
	lw $t0, -5268($fp)
	sw $t0, -5272($fp)
	li $t0, 50379
	sw $t0, -5276($fp)
	lw $t0, -5276($fp)
	sw $t0, -5280($fp)
	lw $t0, -5280($fp)
	sw $t0, -5284($fp)
	li $t0, 47722
	sw $t0, -5288($fp)
	addi $t0, $fp, -5236
	sw $t0, -5292($fp)
	li $t0, 0
	sw $t0, -5296($fp)
	lw $t0, -5296($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5300($fp)
	lw $t0, -5292($fp)
	lw $t1, -5300($fp)
	add $t0, $t0, $t1
	sw $t0, -5304($fp)
	lw $t0, -5288($fp)
	lw $t1, -5304($fp)
	sw $t0, 0($t1)
	lw $t0, -5304($fp)
	lw $t1, 0($t0)
	sw $t1, -5308($fp)
	li $t0, 32764
	sw $t0, -5312($fp)
	addi $t0, $fp, -5236
	sw $t0, -5316($fp)
	li $t0, 1
	sw $t0, -5320($fp)
	lw $t0, -5320($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5324($fp)
	lw $t0, -5316($fp)
	lw $t1, -5324($fp)
	add $t0, $t0, $t1
	sw $t0, -5328($fp)
	lw $t0, -5312($fp)
	lw $t1, -5328($fp)
	sw $t0, 0($t1)
	lw $t0, -5328($fp)
	lw $t1, 0($t0)
	sw $t1, -5332($fp)
	li $t0, 38336
	sw $t0, -5336($fp)
	addi $t0, $fp, -5236
	sw $t0, -5340($fp)
	li $t0, 2
	sw $t0, -5344($fp)
	lw $t0, -5344($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5348($fp)
	lw $t0, -5340($fp)
	lw $t1, -5348($fp)
	add $t0, $t0, $t1
	sw $t0, -5352($fp)
	lw $t0, -5336($fp)
	lw $t1, -5352($fp)
	sw $t0, 0($t1)
	lw $t0, -5352($fp)
	lw $t1, 0($t0)
	sw $t1, -5356($fp)
	li $t0, 11861
	sw $t0, -5360($fp)
	addi $t0, $fp, -5236
	sw $t0, -5364($fp)
	li $t0, 3
	sw $t0, -5368($fp)
	lw $t0, -5368($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5372($fp)
	lw $t0, -5364($fp)
	lw $t1, -5372($fp)
	add $t0, $t0, $t1
	sw $t0, -5376($fp)
	lw $t0, -5360($fp)
	lw $t1, -5376($fp)
	sw $t0, 0($t1)
	lw $t0, -5376($fp)
	lw $t1, 0($t0)
	sw $t1, -5380($fp)
	li $t0, 25994
	sw $t0, -5384($fp)
	lw $t0, -5384($fp)
	sw $t0, -5388($fp)
	lw $t0, -5388($fp)
	sw $t0, -5392($fp)
	li $t0, 0
	sw $t0, -5396($fp)
	li $t0, 36944
	sw $t0, -5400($fp)
	lw $t0, -1256($fp)
	sw $t0, -5404($fp)
	lw $t0, -5400($fp)
	lw $t1, -5404($fp)
	mul $t0, $t0, $t1
	sw $t0, -5408($fp)
	lw $t0, -5388($fp)
	sw $t0, -5412($fp)
	li $t0, 14408
	sw $t0, -5416($fp)
	lw $t0, -5412($fp)
	lw $t1, -5416($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5420($fp)
	lw $t0, -5408($fp)
	lw $t1, -5420($fp)
	add $t0, $t0, $t1
	sw $t0, -5424($fp)
	li $t0, 48456
	sw $t0, -5428($fp)
	li $t0, 1
	sw $t0, -5432($fp)
	lw $t0, -5428($fp)
	lw $t1, -5432($fp)
	mul $t0, $t0, $t1
	sw $t0, -5436($fp)
	lw $t0, -788($fp)
	sw $t0, -5440($fp)
	lw $t0, -5436($fp)
	lw $t1, -5440($fp)
	add $t0, $t0, $t1
	sw $t0, -5444($fp)
	lw $t1, -5424($fp)
	lw $t2, -5444($fp)
	bgt $t1, $t2, label565
	j label564
label565:
	addi $t0, $fp, -104
	sw $t0, -5448($fp)
	li $t0, 0
	sw $t0, -5452($fp)
	li $t0, 9417
	sw $t0, -5456($fp)
	li $t0, 60097
	sw $t0, -5460($fp)
	lw $t1, -5456($fp)
	lw $t2, -5460($fp)
	bne $t1, $t2, label566
	j label567
label566:
	li $t0, 1
	sw $t0, -5452($fp)
label567:
	li $t0, 4
	lw $t1, -5452($fp)
	mul $t0, $t0, $t1
	sw $t0, -5464($fp)
	lw $t0, -5464($fp)
	lw $t1, -5448($fp)
	add $t0, $t0, $t1
	sw $t0, -5468($fp)
	lw $t0, -5468($fp)
	lw $t1, 0($t0)
	sw $t1, -5472($fp)
	lw $t1, -5472($fp)
	li $t2, 0
	bne $t1, $t2, label563
	j label564
label563:
	li $t0, 1
	sw $t0, -5396($fp)
label564:
	lw $t0, -476($fp)
	sw $t0, -5476($fp)
	li $t0, 0
	sw $t0, -5480($fp)
	addi $t0, $fp, -104
	sw $t0, -5484($fp)
	li $t0, 7
	sw $t0, -5488($fp)
	li $t0, 4
	lw $t1, -5488($fp)
	mul $t0, $t0, $t1
	sw $t0, -5492($fp)
	lw $t0, -5492($fp)
	lw $t1, -5484($fp)
	add $t0, $t0, $t1
	sw $t0, -5496($fp)
	lw $t0, -5496($fp)
	lw $t1, 0($t0)
	sw $t1, -5500($fp)
	lw $t1, -5500($fp)
	li $t2, 0
	bne $t1, $t2, label569
	j label568
label568:
	li $t0, 1
	sw $t0, -5480($fp)
label569:
	li $t0, 47765
	sw $t0, -5504($fp)
	lw $t0, -5480($fp)
	lw $t1, -5504($fp)
	sub $t0, $t0, $t1
	sw $t0, -5508($fp)
	addi $t0, $fp, -72
	sw $t0, -5512($fp)
	lw $t0, -1568($fp)
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
	addi $t0, $fp, -64
	sw $t0, -5532($fp)
	lw $t0, -1100($fp)
	sw $t0, -5536($fp)
	lw $t0, -1412($fp)
	sw $t0, -5540($fp)
	lw $t0, -5536($fp)
	lw $t1, -5540($fp)
	add $t0, $t0, $t1
	sw $t0, -5544($fp)
	li $t0, 4
	lw $t1, -5544($fp)
	mul $t0, $t0, $t1
	sw $t0, -5548($fp)
	lw $t0, -5548($fp)
	lw $t1, -5532($fp)
	add $t0, $t0, $t1
	sw $t0, -5552($fp)
	lw $t0, -5552($fp)
	lw $t1, 0($t0)
	sw $t1, -5556($fp)
	lw $t0, -5528($fp)
	lw $t1, -5556($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5560($fp)
	li $t0, 0
	lw $t1, -5560($fp)
	sub $t0, $t0, $t1
	sw $t0, -5564($fp)
	lw $t1, -5564($fp)
	li $t2, 0
	bne $t1, $t2, label571
	j label570
label570:
	li $t0, 0
	sw $t0, -5568($fp)
	lw $t0, -1568($fp)
	sw $t0, -5572($fp)
	lw $t1, -5572($fp)
	li $t2, 0
	bne $t1, $t2, label575
	j label574
label575:
	addi $t0, $fp, -40
	sw $t0, -5576($fp)
	li $t0, 0
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
	lw $t1, -5592($fp)
	li $t2, 0
	bne $t1, $t2, label574
	j label573
label573:
	li $t0, 1
	sw $t0, -5568($fp)
label574:
	j label572
label571:
	li $t0, 0
	sw $t0, -5596($fp)
	li $t0, 15224
	sw $t0, -5600($fp)
	li $t0, 13372
	sw $t0, -5604($fp)
	lw $t0, -5600($fp)
	lw $t1, -5604($fp)
	sub $t0, $t0, $t1
	sw $t0, -5608($fp)
	lw $t0, -5256($fp)
	sw $t0, -5612($fp)
	lw $t0, -5608($fp)
	lw $t1, -5612($fp)
	add $t0, $t0, $t1
	sw $t0, -5616($fp)
	li $t0, 15037
	sw $t0, -5620($fp)
	lw $t0, -5620($fp)
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	sw $t0, -5624($fp)
	li $t0, 0
	sw $t0, -5628($fp)
	li $t0, 0
	sw $t0, -5632($fp)
	li $t0, 51063
	sw $t0, -5636($fp)
	lw $t1, -5636($fp)
	li $t2, 0
	bne $t1, $t2, label585
	j label584
label585:
	lw $t0, -5244($fp)
	sw $t0, -5640($fp)
	lw $t1, -5640($fp)
	li $t2, 0
	bne $t1, $t2, label582
	j label584
label584:
	lw $t0, -524($fp)
	sw $t0, -5644($fp)
	lw $t1, -5644($fp)
	li $t2, 0
	bne $t1, $t2, label582
	j label583
label582:
	li $t0, 1
	sw $t0, -5632($fp)
label583:
	jal f9
	sw $v0, -5648($fp)
	addi $sp, $sp, 4
	lw $t0, -1544($fp)
	sw $t0, -5652($fp)
	lw $t0, -1652($fp)
	sw $t0, -5656($fp)
	lw $t0, -5652($fp)
	lw $t1, -5656($fp)
	add $t0, $t0, $t1
	sw $t0, -5660($fp)
	addi $sp, $sp, -4
	lw $t0, -5632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5660($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5664($fp)
	addi $sp, $sp, 16
	lw $t1, -5664($fp)
	li $t2, 0
	bne $t1, $t2, label579
	j label581
label581:
	lw $t0, -536($fp)
	sw $t0, -5668($fp)
	lw $t1, -5668($fp)
	li $t2, 0
	bne $t1, $t2, label579
	j label580
label579:
	li $t0, 1
	sw $t0, -5628($fp)
label580:
	addi $sp, $sp, -4
	lw $t0, -5616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5628($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5672($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -5672($fp)
	sub $t0, $t0, $t1
	sw $t0, -5676($fp)
	li $t0, 26631
	sw $t0, -5680($fp)
	lw $t1, -5676($fp)
	lw $t2, -5680($fp)
	bge $t1, $t2, label576
	j label578
label578:
	addi $t0, $fp, -56
	sw $t0, -5684($fp)
	li $t0, 1
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
	li $t0, 940
	sw $t0, -5704($fp)
	lw $t0, -5268($fp)
	sw $t0, -5708($fp)
	lw $t0, -5704($fp)
	lw $t1, -5708($fp)
	mul $t0, $t0, $t1
	sw $t0, -5712($fp)
	lw $t0, -5700($fp)
	lw $t1, -5712($fp)
	sub $t0, $t0, $t1
	sw $t0, -5716($fp)
	lw $t1, -5716($fp)
	li $t2, 0
	bne $t1, $t2, label576
	j label577
label576:
	li $t0, 1
	sw $t0, -5596($fp)
label577:
label572:
	addi $t0, $fp, -148
	sw $t0, -5720($fp)
	li $t0, 0
	sw $t0, -5724($fp)
	li $t0, 922
	sw $t0, -5728($fp)
	li $t0, 50097
	sw $t0, -5732($fp)
	lw $t0, -5728($fp)
	lw $t1, -5732($fp)
	sub $t0, $t0, $t1
	sw $t0, -5736($fp)
	li $t0, 25071
	sw $t0, -5740($fp)
	lw $t1, -5736($fp)
	lw $t2, -5740($fp)
	bgt $t1, $t2, label588
	j label587
label588:
	lw $t0, -644($fp)
	sw $t0, -5744($fp)
	li $t0, 62739
	sw $t0, -5748($fp)
	lw $t0, -5744($fp)
	lw $t1, -5748($fp)
	sub $t0, $t0, $t1
	sw $t0, -5752($fp)
	lw $t1, -5752($fp)
	li $t2, 0
	bne $t1, $t2, label586
	j label587
label586:
	li $t0, 1
	sw $t0, -5724($fp)
label587:
	li $t0, 4
	lw $t1, -5724($fp)
	mul $t0, $t0, $t1
	sw $t0, -5756($fp)
	lw $t0, -5756($fp)
	lw $t1, -5720($fp)
	add $t0, $t0, $t1
	sw $t0, -5760($fp)
	lw $t0, -5760($fp)
	lw $t1, 0($t0)
	sw $t1, -5764($fp)
	li $t0, 5660
	sw $t0, -5768($fp)
	lw $t1, -5768($fp)
	li $t2, 0
	bne $t1, $t2, label589
	j label590
label589:
	li $t0, 45202
	sw $t0, -5772($fp)
	li $t0, 1
	sw $t0, -5776($fp)
	lw $t0, -5772($fp)
	lw $t1, -5776($fp)
	mul $t0, $t0, $t1
	sw $t0, -5780($fp)
	li $t0, 0
	sw $t0, -5784($fp)
	addi $t0, $fp, -72
	sw $t0, -5788($fp)
	lw $t0, -5280($fp)
	sw $t0, -5792($fp)
	li $t0, 4
	lw $t1, -5792($fp)
	mul $t0, $t0, $t1
	sw $t0, -5796($fp)
	lw $t0, -5796($fp)
	lw $t1, -5788($fp)
	add $t0, $t0, $t1
	sw $t0, -5800($fp)
	lw $t0, -5800($fp)
	lw $t1, 0($t0)
	sw $t1, -5804($fp)
	lw $t1, -5804($fp)
	li $t2, 0
	bne $t1, $t2, label593
	j label592
label592:
	li $t0, 1
	sw $t0, -5784($fp)
label593:
	li $t0, 53383
	sw $t0, -5808($fp)
	lw $t0, -416($fp)
	sw $t0, -5812($fp)
	lw $t0, -644($fp)
	sw $t0, -5816($fp)
	lw $t0, -5812($fp)
	lw $t1, -5816($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5820($fp)
	lw $t0, -1100($fp)
	sw $t0, -5824($fp)
	lw $t0, -5820($fp)
	lw $t1, -5824($fp)
	mul $t0, $t0, $t1
	sw $t0, -5828($fp)
	addi $sp, $sp, -4
	lw $t0, -5784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5828($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5832($fp)
	addi $sp, $sp, 16
	lw $t0, -5780($fp)
	lw $t1, -5832($fp)
	add $t0, $t0, $t1
	sw $t0, -5836($fp)
	lw $t0, -5836($fp)
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	sw $t0, -5840($fp)
	j label591
label590:
	li $t0, 0
	sw $t0, -5844($fp)
	li $t0, 0
	sw $t0, -5848($fp)
	addi $t0, $fp, -5236
	sw $t0, -5852($fp)
	li $t0, 0
	sw $t0, -5856($fp)
	li $t0, 12430
	sw $t0, -5860($fp)
	lw $t1, -5860($fp)
	li $t2, 0
	bne $t1, $t2, label600
	j label599
label600:
	lw $t0, -1412($fp)
	sw $t0, -5864($fp)
	lw $t1, -5864($fp)
	li $t2, 0
	bne $t1, $t2, label598
	j label599
label598:
	li $t0, 1
	sw $t0, -5856($fp)
label599:
	li $t0, 4
	lw $t1, -5856($fp)
	mul $t0, $t0, $t1
	sw $t0, -5868($fp)
	lw $t0, -5868($fp)
	lw $t1, -5852($fp)
	add $t0, $t0, $t1
	sw $t0, -5872($fp)
	lw $t0, -5872($fp)
	lw $t1, 0($t0)
	sw $t1, -5876($fp)
	li $t0, 20382
	sw $t0, -5880($fp)
	lw $t0, -776($fp)
	sw $t0, -5884($fp)
	lw $t0, -5880($fp)
	lw $t1, -5884($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5888($fp)
	lw $t1, -5876($fp)
	lw $t2, -5888($fp)
	ble $t1, $t2, label596
	j label597
label596:
	li $t0, 1
	sw $t0, -5848($fp)
label597:
	lw $t0, -992($fp)
	sw $t0, -5892($fp)
	addi $t0, $fp, -164
	sw $t0, -5896($fp)
	li $t0, 1
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
	lw $t0, -5892($fp)
	lw $t1, -5912($fp)
	mul $t0, $t0, $t1
	sw $t0, -5916($fp)
	lw $t1, -5848($fp)
	lw $t2, -5916($fp)
	bge $t1, $t2, label594
	j label595
label594:
	li $t0, 1
	sw $t0, -5844($fp)
label595:
label591:
	j label558
label557:
	lw $t0, -644($fp)
	sw $t0, -5920($fp)
	lw $t0, -1256($fp)
	sw $t0, -5924($fp)
	lw $t0, -5920($fp)
	lw $t1, -5924($fp)
	mul $t0, $t0, $t1
	sw $t0, -5928($fp)
	lw $t1, -5928($fp)
	li $t2, 0
	bne $t1, $t2, label601
	j label602
label601:
	li $t0, 57326
	sw $t0, -5932($fp)
	li $t0, 14116
	sw $t0, -5936($fp)
	lw $t0, -5932($fp)
	lw $t1, -5936($fp)
	add $t0, $t0, $t1
	sw $t0, -5940($fp)
	lw $t0, -1640($fp)
	sw $t0, -5944($fp)
	lw $t0, -5940($fp)
	lw $t1, -5944($fp)
	sub $t0, $t0, $t1
	sw $t0, -5948($fp)
	li $t0, 21345
	sw $t0, -5952($fp)
	lw $t0, -5948($fp)
	lw $t1, -5952($fp)
	add $t0, $t0, $t1
	sw $t0, -5956($fp)
	lw $t0, -5956($fp)
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	sw $t0, -5960($fp)
	lw $t1, -5960($fp)
	li $t2, 0
	bne $t1, $t2, label604
	j label605
label604:
	li $t0, 0
	sw $t0, -5964($fp)
	jal f9
	sw $v0, -5968($fp)
	addi $sp, $sp, 4
	lw $t1, -5968($fp)
	li $t2, 0
	bne $t1, $t2, label611
	j label610
label610:
	li $t0, 1
	sw $t0, -5964($fp)
label611:
	li $t0, 0
	lw $t1, -5964($fp)
	sub $t0, $t0, $t1
	sw $t0, -5972($fp)
	lw $t1, -5972($fp)
	li $t2, 0
	bne $t1, $t2, label608
	j label607
label607:
	li $t0, 37600
	sw $t0, -5976($fp)
	lw $t0, -5976($fp)
	sw $t0, -5980($fp)
	lw $t0, -5980($fp)
	sw $t0, -5984($fp)
	li $t0, 0
	sw $t0, -5988($fp)
	jal f9
	sw $v0, -5992($fp)
	addi $sp, $sp, 4
	lw $t1, -5992($fp)
	li $t2, 0
	bne $t1, $t2, label613
	j label612
label612:
	li $t0, 1
	sw $t0, -5988($fp)
label613:
	lw $t0, -788($fp)
	sw $t0, -5996($fp)
	li $t0, 0
	sw $t0, -6000($fp)
	li $t0, 23534
	sw $t0, -6004($fp)
	lw $t0, -5980($fp)
	sw $t0, -6008($fp)
	li $t0, 0
	lw $t1, -6008($fp)
	sub $t0, $t0, $t1
	sw $t0, -6012($fp)
	lw $t1, -6004($fp)
	lw $t2, -6012($fp)
	beq $t1, $t2, label614
	j label615
label614:
	li $t0, 1
	sw $t0, -6000($fp)
label615:
	j label609
label608:
	li $t0, 0
	sw $t0, -6016($fp)
	lw $t0, -1424($fp)
	sw $t0, -6020($fp)
	jal f9
	sw $v0, -6024($fp)
	addi $sp, $sp, 4
	lw $t0, -1556($fp)
	sw $t0, -6028($fp)
	lw $t0, -6024($fp)
	lw $t1, -6028($fp)
	add $t0, $t0, $t1
	sw $t0, -6032($fp)
	li $t0, 15906
	sw $t0, -6036($fp)
	li $t0, 0
	lw $t1, -6036($fp)
	sub $t0, $t0, $t1
	sw $t0, -6040($fp)
	lw $t0, -6032($fp)
	lw $t1, -6040($fp)
	add $t0, $t0, $t1
	sw $t0, -6044($fp)
	lw $t1, -6020($fp)
	lw $t2, -6044($fp)
	bge $t1, $t2, label616
	j label617
label616:
	li $t0, 1
	sw $t0, -6016($fp)
label617:
label609:
	j label606
label605:
	li $t0, 50491
	sw $t0, -6048($fp)
	lw $t0, -6048($fp)
	sw $t0, -6052($fp)
	lw $t0, -6052($fp)
	sw $t0, -6056($fp)
	li $t0, 0
	sw $t0, -6060($fp)
	addi $t0, $fp, -56
	sw $t0, -6064($fp)
	lw $t0, -1412($fp)
	sw $t0, -6068($fp)
	li $t0, 4
	lw $t1, -6068($fp)
	mul $t0, $t0, $t1
	sw $t0, -6072($fp)
	lw $t0, -6072($fp)
	lw $t1, -6064($fp)
	add $t0, $t0, $t1
	sw $t0, -6076($fp)
	lw $t0, -6076($fp)
	lw $t1, 0($t0)
	sw $t1, -6080($fp)
	li $t0, 0
	lw $t1, -6080($fp)
	sub $t0, $t0, $t1
	sw $t0, -6084($fp)
	li $t0, 0
	lw $t1, -6084($fp)
	sub $t0, $t0, $t1
	sw $t0, -6088($fp)
	li $t0, 0
	sw $t0, -6092($fp)
	lw $t0, -380($fp)
	sw $t0, -6096($fp)
	lw $t1, -6096($fp)
	li $t2, 0
	bne $t1, $t2, label621
	j label620
label620:
	li $t0, 1
	sw $t0, -6092($fp)
label621:
	li $t0, 23485
	sw $t0, -6100($fp)
	lw $t0, -6092($fp)
	lw $t1, -6100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6104($fp)
	lw $t0, -6088($fp)
	lw $t1, -6104($fp)
	add $t0, $t0, $t1
	sw $t0, -6108($fp)
	li $t0, 63671
	sw $t0, -6112($fp)
	lw $t1, -6108($fp)
	lw $t2, -6112($fp)
	bne $t1, $t2, label618
	j label619
label618:
	li $t0, 1
	sw $t0, -6060($fp)
label619:
	li $t0, 0
	sw $t0, -6116($fp)
	li $t0, 5731
	sw $t0, -6120($fp)
	li $t0, 62571
	sw $t0, -6124($fp)
	li $t0, 47400
	sw $t0, -6128($fp)
	lw $t0, -6124($fp)
	lw $t1, -6128($fp)
	sub $t0, $t0, $t1
	sw $t0, -6132($fp)
	li $t0, 0
	sw $t0, -6136($fp)
	li $t0, 20768
	sw $t0, -6140($fp)
	lw $t1, -6140($fp)
	li $t2, 0
	bne $t1, $t2, label625
	j label628
label628:
	lw $t0, -992($fp)
	sw $t0, -6144($fp)
	lw $t1, -6144($fp)
	li $t2, 0
	bne $t1, $t2, label625
	j label627
label627:
	li $t0, 59758
	sw $t0, -6148($fp)
	lw $t1, -6148($fp)
	li $t2, 0
	bne $t1, $t2, label625
	j label626
label625:
	li $t0, 1
	sw $t0, -6136($fp)
label626:
	addi $t0, $fp, -104
	sw $t0, -6152($fp)
	li $t0, 6
	sw $t0, -6156($fp)
	li $t0, 4
	lw $t1, -6156($fp)
	mul $t0, $t0, $t1
	sw $t0, -6160($fp)
	lw $t0, -6160($fp)
	lw $t1, -6152($fp)
	add $t0, $t0, $t1
	sw $t0, -6164($fp)
	lw $t0, -6164($fp)
	lw $t1, 0($t0)
	sw $t1, -6168($fp)
	addi $sp, $sp, -4
	lw $t0, -6132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6168($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6172($fp)
	addi $sp, $sp, 16
	lw $t1, -6120($fp)
	lw $t2, -6172($fp)
	beq $t1, $t2, label624
	j label623
label624:
	addi $t0, $fp, -104
	sw $t0, -6176($fp)
	li $t0, 4
	sw $t0, -6180($fp)
	li $t0, 4
	lw $t1, -6180($fp)
	mul $t0, $t0, $t1
	sw $t0, -6184($fp)
	lw $t0, -6184($fp)
	lw $t1, -6176($fp)
	add $t0, $t0, $t1
	sw $t0, -6188($fp)
	lw $t0, -6188($fp)
	lw $t1, 0($t0)
	sw $t1, -6192($fp)
	lw $t0, -6052($fp)
	sw $t0, -6196($fp)
	lw $t0, -6192($fp)
	lw $t1, -6196($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6200($fp)
	li $t0, 48340
	sw $t0, -6204($fp)
	lw $t0, -6200($fp)
	lw $t1, -6204($fp)
	mul $t0, $t0, $t1
	sw $t0, -6208($fp)
	lw $t1, -6208($fp)
	li $t2, 0
	bne $t1, $t2, label622
	j label623
label622:
	li $t0, 1
	sw $t0, -6116($fp)
label623:
	addi $t0, $fp, -164
	sw $t0, -6212($fp)
	li $t0, 2
	sw $t0, -6216($fp)
	li $t0, 4
	lw $t1, -6216($fp)
	mul $t0, $t0, $t1
	sw $t0, -6220($fp)
	lw $t0, -6220($fp)
	lw $t1, -6212($fp)
	add $t0, $t0, $t1
	sw $t0, -6224($fp)
	lw $t0, -6224($fp)
	lw $t1, 0($t0)
	sw $t1, -6228($fp)
label606:
	j label603
label602:
	addi $t0, $fp, -124
	sw $t0, -6232($fp)
	li $t0, 2
	sw $t0, -6236($fp)
	li $t0, 4
	lw $t1, -6236($fp)
	mul $t0, $t0, $t1
	sw $t0, -6240($fp)
	lw $t0, -6240($fp)
	lw $t1, -6232($fp)
	add $t0, $t0, $t1
	sw $t0, -6244($fp)
	lw $t0, -6244($fp)
	lw $t1, 0($t0)
	sw $t1, -6248($fp)
	lw $t0, -788($fp)
	sw $t0, -6252($fp)
	li $t0, 65508
	sw $t0, -6256($fp)
	lw $t0, -6252($fp)
	lw $t1, -6256($fp)
	mul $t0, $t0, $t1
	sw $t0, -6260($fp)
	li $t0, 0
	sw $t0, -6264($fp)
	lw $t0, -1676($fp)
	sw $t0, -6268($fp)
	lw $t1, -6268($fp)
	li $t2, 0
	bne $t1, $t2, label630
	j label629
label629:
	li $t0, 1
	sw $t0, -6264($fp)
label630:
	lw $t0, -1664($fp)
	sw $t0, -6272($fp)
	lw $t0, -6264($fp)
	lw $t1, -6272($fp)
	mul $t0, $t0, $t1
	sw $t0, -6276($fp)
	addi $sp, $sp, -4
	lw $t0, -6260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6276($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6280($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -6284($fp)
	li $t0, 5963
	sw $t0, -6288($fp)
	lw $t0, -428($fp)
	sw $t0, -6292($fp)
	lw $t0, -6288($fp)
	lw $t1, -6292($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6296($fp)
	lw $t1, -6296($fp)
	li $t2, 0
	bne $t1, $t2, label631
	j label633
label633:
	li $t0, 29633
	sw $t0, -6300($fp)
	lw $t1, -6300($fp)
	li $t2, 0
	bne $t1, $t2, label631
	j label632
label631:
	li $t0, 1
	sw $t0, -6284($fp)
label632:
	li $t0, 0
	sw $t0, -6304($fp)
	li $t0, 41786
	sw $t0, -6308($fp)
	lw $t1, -6308($fp)
	li $t2, 0
	bne $t1, $t2, label635
	j label636
label636:
	li $t0, 53078
	sw $t0, -6312($fp)
	lw $t1, -6312($fp)
	li $t2, 0
	bne $t1, $t2, label634
	j label635
label634:
	li $t0, 1
	sw $t0, -6304($fp)
label635:
	addi $sp, $sp, -4
	lw $t0, -6280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6304($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6316($fp)
	addi $sp, $sp, 16
	lw $t0, -6248($fp)
	lw $t1, -6316($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6320($fp)
	li $t0, 0
	sw $t0, -6324($fp)
	lw $t0, -1664($fp)
	sw $t0, -6328($fp)
	li $t0, 0
	lw $t1, -6328($fp)
	sub $t0, $t0, $t1
	sw $t0, -6332($fp)
	lw $t1, -6332($fp)
	li $t2, 0
	bne $t1, $t2, label638
	j label637
label637:
	li $t0, 1
	sw $t0, -6324($fp)
label638:
	lw $t0, -6320($fp)
	lw $t1, -6324($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6336($fp)
	lw $t0, -1628($fp)
	sw $t0, -6340($fp)
	li $t0, 0
	lw $t1, -6340($fp)
	sub $t0, $t0, $t1
	sw $t0, -6344($fp)
	lw $t0, -6336($fp)
	lw $t1, -6344($fp)
	sub $t0, $t0, $t1
	sw $t0, -6348($fp)
	lw $ra, -4($fp)
	lw $v0, -6348($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label603:
label558:
label491:
	addi $t0, $fp, -32
	sw $t0, -6352($fp)
	li $t0, 0
	sw $t0, -6356($fp)
	li $t0, 4
	lw $t1, -6356($fp)
	mul $t0, $t0, $t1
	sw $t0, -6360($fp)
	lw $t0, -6360($fp)
	lw $t1, -6352($fp)
	add $t0, $t0, $t1
	sw $t0, -6364($fp)
	lw $t0, -6364($fp)
	lw $t1, 0($t0)
	sw $t1, -6368($fp)
	lw $t0, -6368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -6372($fp)
	li $t0, 1
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
	lw $t0, -6388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -6392($fp)
	li $t0, 2
	sw $t0, -6396($fp)
	li $t0, 4
	lw $t1, -6396($fp)
	mul $t0, $t0, $t1
	sw $t0, -6400($fp)
	lw $t0, -6400($fp)
	lw $t1, -6392($fp)
	add $t0, $t0, $t1
	sw $t0, -6404($fp)
	lw $t0, -6404($fp)
	lw $t1, 0($t0)
	sw $t1, -6408($fp)
	lw $t0, -6408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -6412($fp)
	li $t0, 3
	sw $t0, -6416($fp)
	li $t0, 4
	lw $t1, -6416($fp)
	mul $t0, $t0, $t1
	sw $t0, -6420($fp)
	lw $t0, -6420($fp)
	lw $t1, -6412($fp)
	add $t0, $t0, $t1
	sw $t0, -6424($fp)
	lw $t0, -6424($fp)
	lw $t1, 0($t0)
	sw $t1, -6428($fp)
	lw $t0, -6428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -6432($fp)
	li $t0, 4
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
	lw $t0, -6448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -6452($fp)
	li $t0, 5
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
	lw $t0, -6468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -6472($fp)
	li $t0, 6
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
	lw $t0, -6488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -380($fp)
	sw $t0, -6492($fp)
	lw $t0, -6492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -392($fp)
	sw $t0, -6496($fp)
	lw $t0, -6496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -404($fp)
	sw $t0, -6500($fp)
	lw $t0, -6500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -416($fp)
	sw $t0, -6504($fp)
	lw $t0, -6504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -428($fp)
	sw $t0, -6508($fp)
	lw $t0, -6508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -440($fp)
	sw $t0, -6512($fp)
	lw $t0, -6512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -6516($fp)
	li $t0, 0
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
	lw $t0, -476($fp)
	sw $t0, -6536($fp)
	lw $t0, -6536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -488($fp)
	sw $t0, -6540($fp)
	lw $t0, -6540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -6544($fp)
	li $t0, 0
	sw $t0, -6548($fp)
	li $t0, 4
	lw $t1, -6548($fp)
	mul $t0, $t0, $t1
	sw $t0, -6552($fp)
	lw $t0, -6552($fp)
	lw $t1, -6544($fp)
	add $t0, $t0, $t1
	sw $t0, -6556($fp)
	lw $t0, -6556($fp)
	lw $t1, 0($t0)
	sw $t1, -6560($fp)
	lw $t0, -6560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -524($fp)
	sw $t0, -6564($fp)
	lw $t0, -6564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -536($fp)
	sw $t0, -6568($fp)
	lw $t0, -6568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -6572($fp)
	li $t0, 0
	sw $t0, -6576($fp)
	li $t0, 4
	lw $t1, -6576($fp)
	mul $t0, $t0, $t1
	sw $t0, -6580($fp)
	lw $t0, -6580($fp)
	lw $t1, -6572($fp)
	add $t0, $t0, $t1
	sw $t0, -6584($fp)
	lw $t0, -6584($fp)
	lw $t1, 0($t0)
	sw $t1, -6588($fp)
	lw $t0, -6588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -6592($fp)
	li $t0, 1
	sw $t0, -6596($fp)
	li $t0, 4
	lw $t1, -6596($fp)
	mul $t0, $t0, $t1
	sw $t0, -6600($fp)
	lw $t0, -6600($fp)
	lw $t1, -6592($fp)
	add $t0, $t0, $t1
	sw $t0, -6604($fp)
	lw $t0, -6604($fp)
	lw $t1, 0($t0)
	sw $t1, -6608($fp)
	lw $t0, -6608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -6612($fp)
	li $t0, 2
	sw $t0, -6616($fp)
	li $t0, 4
	lw $t1, -6616($fp)
	mul $t0, $t0, $t1
	sw $t0, -6620($fp)
	lw $t0, -6620($fp)
	lw $t1, -6612($fp)
	add $t0, $t0, $t1
	sw $t0, -6624($fp)
	lw $t0, -6624($fp)
	lw $t1, 0($t0)
	sw $t1, -6628($fp)
	lw $t0, -6628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -6632($fp)
	li $t0, 3
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
	lw $t0, -6648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -644($fp)
	sw $t0, -6652($fp)
	lw $t0, -6652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -656($fp)
	sw $t0, -6656($fp)
	lw $t0, -6656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -6660($fp)
	li $t0, 0
	sw $t0, -6664($fp)
	li $t0, 4
	lw $t1, -6664($fp)
	mul $t0, $t0, $t1
	sw $t0, -6668($fp)
	lw $t0, -6668($fp)
	lw $t1, -6660($fp)
	add $t0, $t0, $t1
	sw $t0, -6672($fp)
	lw $t0, -6672($fp)
	lw $t1, 0($t0)
	sw $t1, -6676($fp)
	lw $t0, -6676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -6680($fp)
	li $t0, 1
	sw $t0, -6684($fp)
	li $t0, 4
	lw $t1, -6684($fp)
	mul $t0, $t0, $t1
	sw $t0, -6688($fp)
	lw $t0, -6688($fp)
	lw $t1, -6680($fp)
	add $t0, $t0, $t1
	sw $t0, -6692($fp)
	lw $t0, -6692($fp)
	lw $t1, 0($t0)
	sw $t1, -6696($fp)
	lw $t0, -6696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -716($fp)
	sw $t0, -6700($fp)
	lw $t0, -6700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -6704($fp)
	li $t0, 0
	sw $t0, -6708($fp)
	li $t0, 4
	lw $t1, -6708($fp)
	mul $t0, $t0, $t1
	sw $t0, -6712($fp)
	lw $t0, -6712($fp)
	lw $t1, -6704($fp)
	add $t0, $t0, $t1
	sw $t0, -6716($fp)
	lw $t0, -6716($fp)
	lw $t1, 0($t0)
	sw $t1, -6720($fp)
	lw $t0, -6720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -6724($fp)
	li $t0, 1
	sw $t0, -6728($fp)
	li $t0, 4
	lw $t1, -6728($fp)
	mul $t0, $t0, $t1
	sw $t0, -6732($fp)
	lw $t0, -6732($fp)
	lw $t1, -6724($fp)
	add $t0, $t0, $t1
	sw $t0, -6736($fp)
	lw $t0, -6736($fp)
	lw $t1, 0($t0)
	sw $t1, -6740($fp)
	lw $t0, -6740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -776($fp)
	sw $t0, -6744($fp)
	lw $t0, -6744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -788($fp)
	sw $t0, -6748($fp)
	lw $t0, -6748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -6752($fp)
	li $t0, 0
	sw $t0, -6756($fp)
	li $t0, 4
	lw $t1, -6756($fp)
	mul $t0, $t0, $t1
	sw $t0, -6760($fp)
	lw $t0, -6760($fp)
	lw $t1, -6752($fp)
	add $t0, $t0, $t1
	sw $t0, -6764($fp)
	lw $t0, -6764($fp)
	lw $t1, 0($t0)
	sw $t1, -6768($fp)
	lw $t0, -6768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -6772($fp)
	li $t0, 1
	sw $t0, -6776($fp)
	li $t0, 4
	lw $t1, -6776($fp)
	mul $t0, $t0, $t1
	sw $t0, -6780($fp)
	lw $t0, -6780($fp)
	lw $t1, -6772($fp)
	add $t0, $t0, $t1
	sw $t0, -6784($fp)
	lw $t0, -6784($fp)
	lw $t1, 0($t0)
	sw $t1, -6788($fp)
	lw $t0, -6788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -6792($fp)
	li $t0, 2
	sw $t0, -6796($fp)
	li $t0, 4
	lw $t1, -6796($fp)
	mul $t0, $t0, $t1
	sw $t0, -6800($fp)
	lw $t0, -6800($fp)
	lw $t1, -6792($fp)
	add $t0, $t0, $t1
	sw $t0, -6804($fp)
	lw $t0, -6804($fp)
	lw $t1, 0($t0)
	sw $t1, -6808($fp)
	lw $t0, -6808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -6812($fp)
	li $t0, 3
	sw $t0, -6816($fp)
	li $t0, 4
	lw $t1, -6816($fp)
	mul $t0, $t0, $t1
	sw $t0, -6820($fp)
	lw $t0, -6820($fp)
	lw $t1, -6812($fp)
	add $t0, $t0, $t1
	sw $t0, -6824($fp)
	lw $t0, -6824($fp)
	lw $t1, 0($t0)
	sw $t1, -6828($fp)
	lw $t0, -6828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -6832($fp)
	li $t0, 4
	sw $t0, -6836($fp)
	li $t0, 4
	lw $t1, -6836($fp)
	mul $t0, $t0, $t1
	sw $t0, -6840($fp)
	lw $t0, -6840($fp)
	lw $t1, -6832($fp)
	add $t0, $t0, $t1
	sw $t0, -6844($fp)
	lw $t0, -6844($fp)
	lw $t1, 0($t0)
	sw $t1, -6848($fp)
	lw $t0, -6848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -6852($fp)
	li $t0, 5
	sw $t0, -6856($fp)
	li $t0, 4
	lw $t1, -6856($fp)
	mul $t0, $t0, $t1
	sw $t0, -6860($fp)
	lw $t0, -6860($fp)
	lw $t1, -6852($fp)
	add $t0, $t0, $t1
	sw $t0, -6864($fp)
	lw $t0, -6864($fp)
	lw $t1, 0($t0)
	sw $t1, -6868($fp)
	lw $t0, -6868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -6872($fp)
	li $t0, 6
	sw $t0, -6876($fp)
	li $t0, 4
	lw $t1, -6876($fp)
	mul $t0, $t0, $t1
	sw $t0, -6880($fp)
	lw $t0, -6880($fp)
	lw $t1, -6872($fp)
	add $t0, $t0, $t1
	sw $t0, -6884($fp)
	lw $t0, -6884($fp)
	lw $t1, 0($t0)
	sw $t1, -6888($fp)
	lw $t0, -6888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -6892($fp)
	li $t0, 7
	sw $t0, -6896($fp)
	li $t0, 4
	lw $t1, -6896($fp)
	mul $t0, $t0, $t1
	sw $t0, -6900($fp)
	lw $t0, -6900($fp)
	lw $t1, -6892($fp)
	add $t0, $t0, $t1
	sw $t0, -6904($fp)
	lw $t0, -6904($fp)
	lw $t1, 0($t0)
	sw $t1, -6908($fp)
	lw $t0, -6908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -992($fp)
	sw $t0, -6912($fp)
	lw $t0, -6912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1004($fp)
	sw $t0, -6916($fp)
	lw $t0, -6916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1016($fp)
	sw $t0, -6920($fp)
	lw $t0, -6920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1028($fp)
	sw $t0, -6924($fp)
	lw $t0, -6924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1040($fp)
	sw $t0, -6928($fp)
	lw $t0, -6928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1052($fp)
	sw $t0, -6932($fp)
	lw $t0, -6932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1064($fp)
	sw $t0, -6936($fp)
	lw $t0, -6936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1076($fp)
	sw $t0, -6940($fp)
	lw $t0, -6940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1088($fp)
	sw $t0, -6944($fp)
	lw $t0, -6944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1100($fp)
	sw $t0, -6948($fp)
	lw $t0, -6948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1112($fp)
	sw $t0, -6952($fp)
	lw $t0, -6952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -6956($fp)
	li $t0, 0
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
	addi $t0, $fp, -124
	sw $t0, -6976($fp)
	li $t0, 1
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
	addi $t0, $fp, -124
	sw $t0, -6996($fp)
	li $t0, 2
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
	addi $t0, $fp, -124
	sw $t0, -7016($fp)
	li $t0, 3
	sw $t0, -7020($fp)
	li $t0, 4
	lw $t1, -7020($fp)
	mul $t0, $t0, $t1
	sw $t0, -7024($fp)
	lw $t0, -7024($fp)
	lw $t1, -7016($fp)
	add $t0, $t0, $t1
	sw $t0, -7028($fp)
	lw $t0, -7028($fp)
	lw $t1, 0($t0)
	sw $t1, -7032($fp)
	lw $t0, -7032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -7036($fp)
	li $t0, 4
	sw $t0, -7040($fp)
	li $t0, 4
	lw $t1, -7040($fp)
	mul $t0, $t0, $t1
	sw $t0, -7044($fp)
	lw $t0, -7044($fp)
	lw $t1, -7036($fp)
	add $t0, $t0, $t1
	sw $t0, -7048($fp)
	lw $t0, -7048($fp)
	lw $t1, 0($t0)
	sw $t1, -7052($fp)
	lw $t0, -7052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1244($fp)
	sw $t0, -7056($fp)
	lw $t0, -7056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1256($fp)
	sw $t0, -7060($fp)
	lw $t0, -7060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -7064($fp)
	li $t0, 0
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
	addi $t0, $fp, -148
	sw $t0, -7084($fp)
	li $t0, 1
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
	addi $t0, $fp, -148
	sw $t0, -7104($fp)
	li $t0, 2
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
	addi $t0, $fp, -148
	sw $t0, -7124($fp)
	li $t0, 3
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
	addi $t0, $fp, -148
	sw $t0, -7144($fp)
	li $t0, 4
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
	addi $t0, $fp, -148
	sw $t0, -7164($fp)
	li $t0, 5
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
	lw $t0, -1412($fp)
	sw $t0, -7184($fp)
	lw $t0, -7184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1424($fp)
	sw $t0, -7188($fp)
	lw $t0, -7188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1436($fp)
	sw $t0, -7192($fp)
	lw $t0, -7192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
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
	addi $t0, $fp, -164
	sw $t0, -7216($fp)
	li $t0, 1
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
	addi $t0, $fp, -164
	sw $t0, -7236($fp)
	li $t0, 2
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
	addi $t0, $fp, -164
	sw $t0, -7256($fp)
	li $t0, 3
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
	lw $t0, -1544($fp)
	sw $t0, -7276($fp)
	lw $t0, -7276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1556($fp)
	sw $t0, -7280($fp)
	lw $t0, -7280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1568($fp)
	sw $t0, -7284($fp)
	lw $t0, -7284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1580($fp)
	sw $t0, -7288($fp)
	lw $t0, -7288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1592($fp)
	sw $t0, -7292($fp)
	lw $t0, -7292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1604($fp)
	sw $t0, -7296($fp)
	lw $t0, -7296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1616($fp)
	sw $t0, -7300($fp)
	lw $t0, -7300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1628($fp)
	sw $t0, -7304($fp)
	lw $t0, -7304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1640($fp)
	sw $t0, -7308($fp)
	lw $t0, -7308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1652($fp)
	sw $t0, -7312($fp)
	lw $t0, -7312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1664($fp)
	sw $t0, -7316($fp)
	lw $t0, -7316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1676($fp)
	sw $t0, -7320($fp)
	lw $t0, -7320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1688($fp)
	sw $t0, -7324($fp)
	lw $t0, -7324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -204
	sw $t0, -7328($fp)
	li $t0, 0
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
	addi $t0, $fp, -204
	sw $t0, -7348($fp)
	li $t0, 1
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
	addi $t0, $fp, -204
	sw $t0, -7368($fp)
	li $t0, 2
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
	addi $t0, $fp, -204
	sw $t0, -7388($fp)
	li $t0, 3
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
	addi $t0, $fp, -204
	sw $t0, -7408($fp)
	li $t0, 4
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
	addi $t0, $fp, -204
	sw $t0, -7428($fp)
	li $t0, 5
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
	addi $t0, $fp, -204
	sw $t0, -7448($fp)
	li $t0, 6
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
	addi $t0, $fp, -204
	sw $t0, -7468($fp)
	li $t0, 7
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
	addi $t0, $fp, -204
	sw $t0, -7488($fp)
	li $t0, 8
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
	addi $t0, $fp, -204
	sw $t0, -7508($fp)
	li $t0, 9
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
	lw $t0, -1940($fp)
	sw $t0, -7528($fp)
	lw $t0, -7528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 43458
	sw $t0, -7532($fp)
	li $t0, 0
	sw $t0, -7536($fp)
	li $t0, 18136
	sw $t0, -7540($fp)
	lw $t0, -1412($fp)
	sw $t0, -7544($fp)
	lw $t0, -7540($fp)
	lw $t1, -7544($fp)
	sub $t0, $t0, $t1
	sw $t0, -7548($fp)
	lw $t1, -7548($fp)
	li $t2, 0
	bne $t1, $t2, label639
	j label641
label641:
	lw $t0, -1424($fp)
	sw $t0, -7552($fp)
	lw $t1, -7552($fp)
	li $t2, 0
	bne $t1, $t2, label639
	j label640
label639:
	li $t0, 1
	sw $t0, -7536($fp)
label640:
	li $t0, 0
	sw $t0, -7556($fp)
	li $t0, 0
	sw $t0, -7560($fp)
	lw $t0, -1676($fp)
	sw $t0, -7564($fp)
	lw $t0, -416($fp)
	sw $t0, -7568($fp)
	lw $t1, -7564($fp)
	lw $t2, -7568($fp)
	beq $t1, $t2, label644
	j label645
label644:
	li $t0, 1
	sw $t0, -7560($fp)
label645:
	lw $t0, -1688($fp)
	sw $t0, -7572($fp)
	lw $t1, -7560($fp)
	lw $t2, -7572($fp)
	bne $t1, $t2, label642
	j label643
label642:
	li $t0, 1
	sw $t0, -7556($fp)
label643:
	li $t0, 0
	sw $t0, -7576($fp)
	lw $t0, -644($fp)
	sw $t0, -7580($fp)
	li $t0, 29342
	sw $t0, -7584($fp)
	lw $t0, -7580($fp)
	lw $t1, -7584($fp)
	add $t0, $t0, $t1
	sw $t0, -7588($fp)
	lw $t1, -7588($fp)
	li $t2, 0
	bne $t1, $t2, label648
	j label647
label648:
	li $t0, 38397
	sw $t0, -7592($fp)
	lw $t1, -7592($fp)
	li $t2, 0
	bne $t1, $t2, label646
	j label647
label646:
	li $t0, 1
	sw $t0, -7576($fp)
label647:
	lw $t0, -416($fp)
	sw $t0, -7596($fp)
	addi $sp, $sp, -4
	lw $t0, -7556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7596($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7600($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -7604($fp)
	li $t0, 26345
	sw $t0, -7608($fp)
	lw $t1, -7608($fp)
	li $t2, 0
	bne $t1, $t2, label650
	j label649
label649:
	li $t0, 1
	sw $t0, -7604($fp)
label650:
	li $t0, 0
	lw $t1, -7604($fp)
	sub $t0, $t0, $t1
	sw $t0, -7612($fp)
	addi $sp, $sp, -4
	lw $t0, -7532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7612($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -7616($fp)
	addi $sp, $sp, 20
	lw $t0, -7616($fp)
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -7620($fp)
	lw $ra, -4($fp)
	lw $v0, -7620($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2856
	li $t0, 59742
	sw $t0, -16($fp)
	addi $t0, $fp, -12
	sw $t0, -20($fp)
	li $t0, 0
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -28($fp)
	lw $t0, -20($fp)
	lw $t1, -28($fp)
	add $t0, $t0, $t1
	sw $t0, -32($fp)
	lw $t0, -16($fp)
	lw $t1, -32($fp)
	sw $t0, 0($t1)
	lw $t0, -32($fp)
	lw $t1, 0($t0)
	sw $t1, -36($fp)
	li $t0, 55736
	sw $t0, -40($fp)
	addi $t0, $fp, -12
	sw $t0, -44($fp)
	li $t0, 1
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -52($fp)
	lw $t0, -44($fp)
	lw $t1, -52($fp)
	add $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -40($fp)
	lw $t1, -56($fp)
	sw $t0, 0($t1)
	lw $t0, -56($fp)
	lw $t1, 0($t0)
	sw $t1, -60($fp)
	li $t0, 1456
	sw $t0, -196($fp)
	addi $t0, $fp, -100
	sw $t0, -200($fp)
	li $t0, 0
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -208($fp)
	lw $t0, -200($fp)
	lw $t1, -208($fp)
	add $t0, $t0, $t1
	sw $t0, -212($fp)
	lw $t0, -196($fp)
	lw $t1, -212($fp)
	sw $t0, 0($t1)
	lw $t0, -212($fp)
	lw $t1, 0($t0)
	sw $t1, -216($fp)
	li $t0, 10112
	sw $t0, -220($fp)
	addi $t0, $fp, -100
	sw $t0, -224($fp)
	li $t0, 1
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -232($fp)
	lw $t0, -224($fp)
	lw $t1, -232($fp)
	add $t0, $t0, $t1
	sw $t0, -236($fp)
	lw $t0, -220($fp)
	lw $t1, -236($fp)
	sw $t0, 0($t1)
	lw $t0, -236($fp)
	lw $t1, 0($t0)
	sw $t1, -240($fp)
	li $t0, 40691
	sw $t0, -244($fp)
	addi $t0, $fp, -100
	sw $t0, -248($fp)
	li $t0, 2
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
	li $t0, 24941
	sw $t0, -268($fp)
	addi $t0, $fp, -100
	sw $t0, -272($fp)
	li $t0, 3
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
	li $t0, 8247
	sw $t0, -292($fp)
	addi $t0, $fp, -100
	sw $t0, -296($fp)
	li $t0, 4
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
	li $t0, 46422
	sw $t0, -316($fp)
	addi $t0, $fp, -100
	sw $t0, -320($fp)
	li $t0, 5
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
	li $t0, 3939
	sw $t0, -340($fp)
	addi $t0, $fp, -100
	sw $t0, -344($fp)
	li $t0, 6
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
	li $t0, 57446
	sw $t0, -364($fp)
	addi $t0, $fp, -100
	sw $t0, -368($fp)
	li $t0, 7
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
	li $t0, 1655
	sw $t0, -388($fp)
	addi $t0, $fp, -100
	sw $t0, -392($fp)
	li $t0, 8
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
	li $t0, 63697
	sw $t0, -412($fp)
	addi $t0, $fp, -100
	sw $t0, -416($fp)
	li $t0, 9
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
	li $t0, 54481
	sw $t0, -436($fp)
	addi $t0, $fp, -120
	sw $t0, -440($fp)
	li $t0, 0
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
	li $t0, 49055
	sw $t0, -460($fp)
	addi $t0, $fp, -120
	sw $t0, -464($fp)
	li $t0, 1
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
	li $t0, 23952
	sw $t0, -484($fp)
	addi $t0, $fp, -120
	sw $t0, -488($fp)
	li $t0, 2
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -496($fp)
	lw $t0, -488($fp)
	lw $t1, -496($fp)
	add $t0, $t0, $t1
	sw $t0, -500($fp)
	lw $t0, -484($fp)
	lw $t1, -500($fp)
	sw $t0, 0($t1)
	lw $t0, -500($fp)
	lw $t1, 0($t0)
	sw $t1, -504($fp)
	li $t0, 40509
	sw $t0, -508($fp)
	addi $t0, $fp, -120
	sw $t0, -512($fp)
	li $t0, 3
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -520($fp)
	lw $t0, -512($fp)
	lw $t1, -520($fp)
	add $t0, $t0, $t1
	sw $t0, -524($fp)
	lw $t0, -508($fp)
	lw $t1, -524($fp)
	sw $t0, 0($t1)
	lw $t0, -524($fp)
	lw $t1, 0($t0)
	sw $t1, -528($fp)
	li $t0, 31859
	sw $t0, -532($fp)
	addi $t0, $fp, -120
	sw $t0, -536($fp)
	li $t0, 4
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -544($fp)
	lw $t0, -536($fp)
	lw $t1, -544($fp)
	add $t0, $t0, $t1
	sw $t0, -548($fp)
	lw $t0, -532($fp)
	lw $t1, -548($fp)
	sw $t0, 0($t1)
	lw $t0, -548($fp)
	lw $t1, 0($t0)
	sw $t1, -552($fp)
	li $t0, 50666
	sw $t0, -556($fp)
	addi $t0, $fp, -152
	sw $t0, -560($fp)
	li $t0, 0
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -568($fp)
	lw $t0, -560($fp)
	lw $t1, -568($fp)
	add $t0, $t0, $t1
	sw $t0, -572($fp)
	lw $t0, -556($fp)
	lw $t1, -572($fp)
	sw $t0, 0($t1)
	lw $t0, -572($fp)
	lw $t1, 0($t0)
	sw $t1, -576($fp)
	li $t0, 11099
	sw $t0, -580($fp)
	addi $t0, $fp, -152
	sw $t0, -584($fp)
	li $t0, 1
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
	li $t0, 39735
	sw $t0, -604($fp)
	addi $t0, $fp, -152
	sw $t0, -608($fp)
	li $t0, 2
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
	li $t0, 9047
	sw $t0, -628($fp)
	addi $t0, $fp, -152
	sw $t0, -632($fp)
	li $t0, 3
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
	li $t0, 52886
	sw $t0, -652($fp)
	addi $t0, $fp, -152
	sw $t0, -656($fp)
	li $t0, 4
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
	li $t0, 27277
	sw $t0, -676($fp)
	addi $t0, $fp, -152
	sw $t0, -680($fp)
	li $t0, 5
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
	li $t0, 15010
	sw $t0, -700($fp)
	addi $t0, $fp, -152
	sw $t0, -704($fp)
	li $t0, 6
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
	li $t0, 16983
	sw $t0, -724($fp)
	addi $t0, $fp, -152
	sw $t0, -728($fp)
	li $t0, 7
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
	li $t0, 27249
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	sw $t0, -756($fp)
	li $t0, 41356
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -768($fp)
	li $t0, 46325
	sw $t0, -772($fp)
	addi $t0, $fp, -192
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
	li $t0, 111
	sw $t0, -796($fp)
	addi $t0, $fp, -192
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
	li $t0, 59492
	sw $t0, -820($fp)
	addi $t0, $fp, -192
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
	li $t0, 24248
	sw $t0, -844($fp)
	addi $t0, $fp, -192
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
	li $t0, 59853
	sw $t0, -868($fp)
	addi $t0, $fp, -192
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
	li $t0, 49692
	sw $t0, -892($fp)
	addi $t0, $fp, -192
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
	li $t0, 25704
	sw $t0, -916($fp)
	addi $t0, $fp, -192
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
	li $t0, 4430
	sw $t0, -940($fp)
	addi $t0, $fp, -192
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
	li $t0, 24848
	sw $t0, -964($fp)
	addi $t0, $fp, -192
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
	li $t0, 50646
	sw $t0, -988($fp)
	addi $t0, $fp, -192
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
	li $t0, 12677
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	sw $t0, -1020($fp)
	li $t0, 5734
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	sw $t0, -1032($fp)
	li $t0, 54585
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	sw $t0, -1044($fp)
	li $t0, 4587
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	sw $t0, -1056($fp)
	li $t0, 7389
	sw $t0, -1060($fp)
	lw $t0, -1028($fp)
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -1068($fp)
	li $t0, 52746
	sw $t0, -1072($fp)
	addi $sp, $sp, -4
	lw $t0, -1068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1072($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1076($fp)
	addi $sp, $sp, 12
	lw $t0, -1060($fp)
	lw $t1, -1076($fp)
	add $t0, $t0, $t1
	sw $t0, -1080($fp)
	li $t0, 59068
	sw $t0, -1124($fp)
	addi $t0, $fp, -1120
	sw $t0, -1128($fp)
	li $t0, 0
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
	li $t0, 56444
	sw $t0, -1148($fp)
	addi $t0, $fp, -1120
	sw $t0, -1152($fp)
	li $t0, 1
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1160($fp)
	lw $t0, -1152($fp)
	lw $t1, -1160($fp)
	add $t0, $t0, $t1
	sw $t0, -1164($fp)
	lw $t0, -1148($fp)
	lw $t1, -1164($fp)
	sw $t0, 0($t1)
	lw $t0, -1164($fp)
	lw $t1, 0($t0)
	sw $t1, -1168($fp)
	li $t0, 11162
	sw $t0, -1172($fp)
	addi $t0, $fp, -1120
	sw $t0, -1176($fp)
	li $t0, 2
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1184($fp)
	lw $t0, -1176($fp)
	lw $t1, -1184($fp)
	add $t0, $t0, $t1
	sw $t0, -1188($fp)
	lw $t0, -1172($fp)
	lw $t1, -1188($fp)
	sw $t0, 0($t1)
	lw $t0, -1188($fp)
	lw $t1, 0($t0)
	sw $t1, -1192($fp)
	li $t0, 34042
	sw $t0, -1196($fp)
	addi $t0, $fp, -1120
	sw $t0, -1200($fp)
	li $t0, 3
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
	li $t0, 22768
	sw $t0, -1220($fp)
	addi $t0, $fp, -1120
	sw $t0, -1224($fp)
	li $t0, 4
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
	li $t0, 61829
	sw $t0, -1244($fp)
	addi $t0, $fp, -1120
	sw $t0, -1248($fp)
	li $t0, 5
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1256($fp)
	lw $t0, -1248($fp)
	lw $t1, -1256($fp)
	add $t0, $t0, $t1
	sw $t0, -1260($fp)
	lw $t0, -1244($fp)
	lw $t1, -1260($fp)
	sw $t0, 0($t1)
	lw $t0, -1260($fp)
	lw $t1, 0($t0)
	sw $t1, -1264($fp)
	li $t0, 45141
	sw $t0, -1268($fp)
	addi $t0, $fp, -1120
	sw $t0, -1272($fp)
	li $t0, 6
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1280($fp)
	lw $t0, -1272($fp)
	lw $t1, -1280($fp)
	add $t0, $t0, $t1
	sw $t0, -1284($fp)
	lw $t0, -1268($fp)
	lw $t1, -1284($fp)
	sw $t0, 0($t1)
	lw $t0, -1284($fp)
	lw $t1, 0($t0)
	sw $t1, -1288($fp)
	li $t0, 62503
	sw $t0, -1292($fp)
	addi $t0, $fp, -1120
	sw $t0, -1296($fp)
	li $t0, 7
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
	li $t0, 5340
	sw $t0, -1316($fp)
	addi $t0, $fp, -1120
	sw $t0, -1320($fp)
	li $t0, 8
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
	li $t0, 32491
	sw $t0, -1340($fp)
	addi $t0, $fp, -1120
	sw $t0, -1344($fp)
	li $t0, 9
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
	li $t0, 0
	sw $t0, -1364($fp)
	li $t0, 24244
	sw $t0, -1368($fp)
	lw $t1, -1368($fp)
	li $t2, 0
	bne $t1, $t2, label651
	j label653
label653:
	lw $t0, 4($fp)
	sw $t0, -1372($fp)
	lw $t0, -1016($fp)
	sw $t0, -1376($fp)
	lw $t0, -1372($fp)
	lw $t1, -1376($fp)
	mul $t0, $t0, $t1
	sw $t0, -1380($fp)
	li $t0, 20351
	sw $t0, -1384($fp)
	lw $t0, -1380($fp)
	lw $t1, -1384($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1388($fp)
	addi $t0, $fp, -120
	sw $t0, -1392($fp)
	li $t0, 1
	sw $t0, -1396($fp)
	li $t0, 4
	lw $t1, -1396($fp)
	mul $t0, $t0, $t1
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	lw $t1, -1392($fp)
	add $t0, $t0, $t1
	sw $t0, -1404($fp)
	lw $t0, -1404($fp)
	lw $t1, 0($t0)
	sw $t1, -1408($fp)
	lw $t1, -1388($fp)
	lw $t2, -1408($fp)
	ble $t1, $t2, label651
	j label652
label651:
	li $t0, 1
	sw $t0, -1364($fp)
label652:
	li $t0, 0
	sw $t0, -1412($fp)
	li $t0, 0
	sw $t0, -1416($fp)
	addi $t0, $fp, -152
	sw $t0, -1420($fp)
	lw $t0, -764($fp)
	sw $t0, -1424($fp)
	li $t0, 0
	lw $t1, -1424($fp)
	sub $t0, $t0, $t1
	sw $t0, -1428($fp)
	li $t0, 4
	lw $t1, -1428($fp)
	mul $t0, $t0, $t1
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	lw $t1, -1420($fp)
	add $t0, $t0, $t1
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	lw $t1, 0($t0)
	sw $t1, -1440($fp)
	addi $t0, $fp, -152
	sw $t0, -1444($fp)
	lw $t0, -1040($fp)
	sw $t0, -1448($fp)
	li $t0, 4
	lw $t1, -1448($fp)
	mul $t0, $t0, $t1
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	lw $t1, -1444($fp)
	add $t0, $t0, $t1
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	lw $t1, 0($t0)
	sw $t1, -1460($fp)
	lw $t1, -1440($fp)
	lw $t2, -1460($fp)
	bne $t1, $t2, label656
	j label657
label656:
	li $t0, 1
	sw $t0, -1416($fp)
label657:
	addi $t0, $fp, -120
	sw $t0, -1464($fp)
	addi $t0, $fp, -12
	sw $t0, -1468($fp)
	li $t0, 0
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
	li $t0, 4
	lw $t1, -1484($fp)
	mul $t0, $t0, $t1
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	lw $t1, -1464($fp)
	add $t0, $t0, $t1
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	lw $t1, 0($t0)
	sw $t1, -1496($fp)
	lw $t1, -1416($fp)
	lw $t2, -1496($fp)
	beq $t1, $t2, label654
	j label655
label654:
	li $t0, 1
	sw $t0, -1412($fp)
label655:
	li $t0, 0
	sw $t0, -1500($fp)
	li $t0, 0
	sw $t0, -1504($fp)
	li $t0, 0
	sw $t0, -1508($fp)
	li $t0, 54512
	sw $t0, -1512($fp)
	li $t0, 45922
	sw $t0, -1516($fp)
	lw $t1, -1512($fp)
	lw $t2, -1516($fp)
	bge $t1, $t2, label663
	j label664
label663:
	li $t0, 1
	sw $t0, -1508($fp)
label664:
	li $t0, 39819
	sw $t0, -1520($fp)
	lw $t1, -1508($fp)
	lw $t2, -1520($fp)
	bne $t1, $t2, label661
	j label662
label661:
	li $t0, 1
	sw $t0, -1504($fp)
label662:
	li $t0, 0
	sw $t0, -1524($fp)
	li $t0, 0
	sw $t0, -1528($fp)
	lw $t0, 4($fp)
	sw $t0, -1532($fp)
	lw $t1, -1532($fp)
	li $t2, 0
	bne $t1, $t2, label668
	j label667
label667:
	li $t0, 1
	sw $t0, -1528($fp)
label668:
	li $t0, 55663
	sw $t0, -1536($fp)
	lw $t1, -1528($fp)
	lw $t2, -1536($fp)
	bgt $t1, $t2, label665
	j label666
label665:
	li $t0, 1
	sw $t0, -1524($fp)
label666:
	li $t0, 0
	sw $t0, -1540($fp)
	lw $t0, 12($fp)
	sw $t0, -1544($fp)
	lw $t0, -1028($fp)
	sw $t0, -1548($fp)
	lw $t0, -1544($fp)
	lw $t1, -1548($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1552($fp)
	li $t0, 51604
	sw $t0, -1556($fp)
	lw $t1, -1552($fp)
	lw $t2, -1556($fp)
	ble $t1, $t2, label669
	j label670
label669:
	li $t0, 1
	sw $t0, -1540($fp)
label670:
	addi $sp, $sp, -4
	lw $t0, -1504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1540($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1560($fp)
	addi $sp, $sp, 16
	lw $t1, -1560($fp)
	li $t2, 0
	bne $t1, $t2, label658
	j label660
label660:
	li $t0, 0
	sw $t0, -1564($fp)
	lw $t0, -1040($fp)
	sw $t0, -1568($fp)
	li $t0, 0
	lw $t1, -1568($fp)
	sub $t0, $t0, $t1
	sw $t0, -1572($fp)
	lw $t1, -1572($fp)
	li $t2, 0
	bne $t1, $t2, label672
	j label671
label671:
	li $t0, 1
	sw $t0, -1564($fp)
label672:
	addi $t0, $fp, -1120
	sw $t0, -1576($fp)
	li $t0, 2
	sw $t0, -1580($fp)
	li $t0, 4
	lw $t1, -1580($fp)
	mul $t0, $t0, $t1
	sw $t0, -1584($fp)
	lw $t0, -1584($fp)
	lw $t1, -1576($fp)
	add $t0, $t0, $t1
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	lw $t1, 0($t0)
	sw $t1, -1592($fp)
	lw $t1, -1564($fp)
	lw $t2, -1592($fp)
	bne $t1, $t2, label658
	j label659
label658:
	li $t0, 1
	sw $t0, -1500($fp)
label659:
label673:
	lw $t0, 12($fp)
	sw $t0, -1596($fp)
	lw $t0, -1596($fp)
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	sw $t0, -1600($fp)
	lw $t1, -1600($fp)
	li $t2, 0
	bne $t1, $t2, label674
	j label675
label674:
label676:
	addi $t0, $fp, -192
	sw $t0, -1604($fp)
	li $t0, 9
	sw $t0, -1608($fp)
	li $t0, 4
	lw $t1, -1608($fp)
	mul $t0, $t0, $t1
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	lw $t1, -1604($fp)
	add $t0, $t0, $t1
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	lw $t1, 0($t0)
	sw $t1, -1620($fp)
	li $t0, 0
	sw $t0, -1624($fp)
	li $t0, 3164
	sw $t0, -1628($fp)
	lw $t1, -1628($fp)
	li $t2, 0
	bne $t1, $t2, label683
	j label682
label683:
	li $t0, 52748
	sw $t0, -1632($fp)
	lw $t1, -1632($fp)
	li $t2, 0
	bne $t1, $t2, label680
	j label682
label682:
	lw $t0, 4($fp)
	sw $t0, -1636($fp)
	lw $t1, -1636($fp)
	li $t2, 0
	bne $t1, $t2, label680
	j label681
label680:
	li $t0, 1
	sw $t0, -1624($fp)
label681:
	li $t0, 0
	sw $t0, -1640($fp)
	li $t0, 0
	sw $t0, -1644($fp)
	li $t0, 12255
	sw $t0, -1648($fp)
	lw $t1, -1648($fp)
	li $t2, 0
	bne $t1, $t2, label689
	j label688
label689:
	lw $t0, 4($fp)
	sw $t0, -1652($fp)
	lw $t1, -1652($fp)
	li $t2, 0
	bne $t1, $t2, label686
	j label688
label688:
	li $t0, 41586
	sw $t0, -1656($fp)
	lw $t1, -1656($fp)
	li $t2, 0
	bne $t1, $t2, label686
	j label687
label686:
	li $t0, 1
	sw $t0, -1644($fp)
label687:
	li $t0, 0
	sw $t0, -1660($fp)
	addi $t0, $fp, -152
	sw $t0, -1664($fp)
	lw $t0, -764($fp)
	sw $t0, -1668($fp)
	li $t0, 4
	lw $t1, -1668($fp)
	mul $t0, $t0, $t1
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	lw $t1, -1664($fp)
	add $t0, $t0, $t1
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	lw $t1, 0($t0)
	sw $t1, -1680($fp)
	li $t0, 2081
	sw $t0, -1684($fp)
	lw $t1, -1680($fp)
	lw $t2, -1684($fp)
	bge $t1, $t2, label690
	j label691
label690:
	li $t0, 1
	sw $t0, -1660($fp)
label691:
	addi $t0, $fp, -120
	sw $t0, -1688($fp)
	lw $t0, 8($fp)
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
	li $t0, 54376
	sw $t0, -1708($fp)
	lw $t0, -1704($fp)
	lw $t1, -1708($fp)
	sub $t0, $t0, $t1
	sw $t0, -1712($fp)
	addi $sp, $sp, -4
	lw $t0, -1644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1712($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1716($fp)
	addi $sp, $sp, 16
	li $t0, 61149
	sw $t0, -1720($fp)
	lw $t1, -1716($fp)
	lw $t2, -1720($fp)
	bgt $t1, $t2, label684
	j label685
label684:
	li $t0, 1
	sw $t0, -1640($fp)
label685:
	lw $t0, 4($fp)
	sw $t0, -1724($fp)
	li $t0, 0
	sw $t0, -1728($fp)
	li $t0, 0
	sw $t0, -1732($fp)
	li $t0, 63029
	sw $t0, -1736($fp)
	li $t0, 4866
	sw $t0, -1740($fp)
	lw $t1, -1736($fp)
	lw $t2, -1740($fp)
	bgt $t1, $t2, label694
	j label695
label694:
	li $t0, 1
	sw $t0, -1732($fp)
label695:
	lw $t0, -1016($fp)
	sw $t0, -1744($fp)
	lw $t1, -1732($fp)
	lw $t2, -1744($fp)
	bne $t1, $t2, label692
	j label693
label692:
	li $t0, 1
	sw $t0, -1728($fp)
label693:
	addi $sp, $sp, -4
	lw $t0, -1624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1728($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1748($fp)
	addi $sp, $sp, 20
	lw $t0, -1620($fp)
	lw $t1, -1748($fp)
	mul $t0, $t0, $t1
	sw $t0, -1752($fp)
	lw $t1, -1752($fp)
	li $t2, 0
	bne $t1, $t2, label679
	j label678
label679:
	li $t0, 0
	sw $t0, -1756($fp)
	li $t0, 9261
	sw $t0, -1760($fp)
	li $t0, 0
	lw $t1, -1760($fp)
	sub $t0, $t0, $t1
	sw $t0, -1764($fp)
	lw $t1, -1764($fp)
	li $t2, 0
	bne $t1, $t2, label698
	j label697
label698:
	li $t0, 22899
	sw $t0, -1768($fp)
	lw $t1, -1768($fp)
	li $t2, 0
	bne $t1, $t2, label696
	j label697
label696:
	li $t0, 1
	sw $t0, -1756($fp)
label697:
	li $t0, 0
	sw $t0, -1772($fp)
	li $t0, 29655
	sw $t0, -1776($fp)
	lw $t1, -1776($fp)
	li $t2, 0
	bne $t1, $t2, label702
	j label701
label702:
	li $t0, 25932
	sw $t0, -1780($fp)
	lw $t1, -1780($fp)
	li $t2, 0
	bne $t1, $t2, label699
	j label701
label701:
	li $t0, 49041
	sw $t0, -1784($fp)
	lw $t1, -1784($fp)
	li $t2, 0
	bne $t1, $t2, label699
	j label700
label699:
	li $t0, 1
	sw $t0, -1772($fp)
label700:
	addi $sp, $sp, -4
	lw $t0, -1756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1772($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1788($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -1792($fp)
	li $t0, 54382
	sw $t0, -1796($fp)
	li $t0, 41752
	sw $t0, -1800($fp)
	lw $t1, -1796($fp)
	lw $t2, -1800($fp)
	bge $t1, $t2, label703
	j label704
label703:
	li $t0, 1
	sw $t0, -1792($fp)
label704:
	lw $t1, -1788($fp)
	lw $t2, -1792($fp)
	beq $t1, $t2, label677
	j label678
label677:
	addi $t0, $fp, -152
	sw $t0, -1804($fp)
	li $t0, 9197
	sw $t0, -1808($fp)
	li $t0, 25691
	sw $t0, -1812($fp)
	lw $t0, -1808($fp)
	lw $t1, -1812($fp)
	sub $t0, $t0, $t1
	sw $t0, -1816($fp)
	li $t0, 33100
	sw $t0, -1820($fp)
	lw $t0, -1816($fp)
	lw $t1, -1820($fp)
	sub $t0, $t0, $t1
	sw $t0, -1824($fp)
	li $t0, 47143
	sw $t0, -1828($fp)
	li $t0, 0
	sw $t0, -1832($fp)
	li $t0, 0
	sw $t0, -1836($fp)
	lw $t0, -1028($fp)
	sw $t0, -1840($fp)
	lw $t1, -1840($fp)
	li $t2, 0
	bne $t1, $t2, label712
	j label711
label711:
	li $t0, 1
	sw $t0, -1836($fp)
label712:
	li $t0, 0
	lw $t1, -1836($fp)
	sub $t0, $t0, $t1
	sw $t0, -1844($fp)
	jal f9
	sw $v0, -1848($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -1852($fp)
	addi $t0, $fp, -152
	sw $t0, -1856($fp)
	lw $t0, 4($fp)
	sw $t0, -1860($fp)
	li $t0, 4
	lw $t1, -1860($fp)
	mul $t0, $t0, $t1
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	lw $t1, -1856($fp)
	add $t0, $t0, $t1
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	lw $t1, 0($t0)
	sw $t1, -1872($fp)
	lw $t1, -1872($fp)
	li $t2, 0
	bne $t1, $t2, label714
	j label713
label713:
	li $t0, 1
	sw $t0, -1852($fp)
label714:
	addi $sp, $sp, -4
	lw $t0, -1844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1852($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1876($fp)
	addi $sp, $sp, 16
	lw $t1, -1876($fp)
	li $t2, 0
	bne $t1, $t2, label710
	j label709
label709:
	li $t0, 1
	sw $t0, -1832($fp)
label710:
	addi $sp, $sp, -4
	lw $t0, -1824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1832($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1880($fp)
	addi $sp, $sp, 16
	li $t0, 4
	lw $t1, -1880($fp)
	mul $t0, $t0, $t1
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	lw $t1, -1804($fp)
	add $t0, $t0, $t1
	sw $t0, -1888($fp)
	lw $t0, -1888($fp)
	lw $t1, 0($t0)
	sw $t1, -1892($fp)
	lw $t1, -1892($fp)
	li $t2, 0
	bne $t1, $t2, label708
	j label706
label708:
	li $t0, 5368
	sw $t0, -1896($fp)
	lw $t1, -1896($fp)
	li $t2, 0
	bne $t1, $t2, label705
	j label706
label705:
	li $t0, 55956
	sw $t0, -1900($fp)
	lw $t0, -1900($fp)
	sw $t0, -1904($fp)
	lw $t0, -1904($fp)
	sw $t0, -1908($fp)
	li $t0, 0
	sw $t0, -1912($fp)
	li $t0, 0
	sw $t0, -1916($fp)
	lw $t0, 8($fp)
	sw $t0, -1920($fp)
	li $t0, 0
	lw $t1, -1920($fp)
	sub $t0, $t0, $t1
	sw $t0, -1924($fp)
	lw $t1, -1924($fp)
	li $t2, 0
	bne $t1, $t2, label718
	j label719
label718:
	li $t0, 1
	sw $t0, -1916($fp)
label719:
	li $t0, 0
	sw $t0, -1928($fp)
	lw $t0, 12($fp)
	sw $t0, -1932($fp)
	lw $t1, -1932($fp)
	li $t2, 0
	bne $t1, $t2, label721
	j label720
label720:
	li $t0, 1
	sw $t0, -1928($fp)
label721:
	lw $t0, -1040($fp)
	sw $t0, -1936($fp)
	lw $t0, -1928($fp)
	lw $t1, -1936($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1940($fp)
	lw $t0, -1916($fp)
	lw $t1, -1940($fp)
	sub $t0, $t0, $t1
	sw $t0, -1944($fp)
	lw $t1, -1944($fp)
	li $t2, 0
	bne $t1, $t2, label717
	j label716
label717:
	lw $t0, -1052($fp)
	sw $t0, -1948($fp)
	lw $t0, 16($fp)
	sw $t0, -1952($fp)
	lw $t0, -1948($fp)
	lw $t1, -1952($fp)
	add $t0, $t0, $t1
	sw $t0, -1956($fp)
	li $t0, 0
	sw $t0, -1960($fp)
	lw $t0, -1904($fp)
	sw $t0, -1964($fp)
	li $t0, 19169
	sw $t0, -1968($fp)
	lw $t1, -1964($fp)
	lw $t2, -1968($fp)
	blt $t1, $t2, label722
	j label723
label722:
	li $t0, 1
	sw $t0, -1960($fp)
label723:
	lw $t1, -1956($fp)
	lw $t2, -1960($fp)
	bne $t1, $t2, label715
	j label716
label715:
	li $t0, 1
	sw $t0, -1912($fp)
label716:
	li $t0, 61031
	sw $t0, -1972($fp)
	j label707
label706:
	li $t0, 0
	sw $t0, -1976($fp)
	lw $t0, -1028($fp)
	sw $t0, -1980($fp)
	li $t0, 44932
	sw $t0, -1984($fp)
	lw $t0, -1980($fp)
	lw $t1, -1984($fp)
	mul $t0, $t0, $t1
	sw $t0, -1988($fp)
	lw $t0, -1028($fp)
	sw $t0, -1992($fp)
	lw $t0, -1988($fp)
	lw $t1, -1992($fp)
	mul $t0, $t0, $t1
	sw $t0, -1996($fp)
	li $t0, 59613
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	sw $t0, -2004($fp)
	li $t0, 35314
	sw $t0, -2008($fp)
	li $t0, 65091
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -2016($fp)
	addi $sp, $sp, -4
	lw $t0, -2004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2016($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2020($fp)
	addi $sp, $sp, 16
	lw $t0, -1996($fp)
	lw $t1, -2020($fp)
	add $t0, $t0, $t1
	sw $t0, -2024($fp)
	lw $t1, -2024($fp)
	li $t2, 0
	bne $t1, $t2, label724
	j label727
label727:
	lw $t0, -1040($fp)
	sw $t0, -2028($fp)
	lw $t0, -1040($fp)
	sw $t0, -2032($fp)
	lw $t0, -2028($fp)
	lw $t1, -2032($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2036($fp)
	lw $t1, -2036($fp)
	li $t2, 0
	bne $t1, $t2, label724
	j label726
label726:
	li $t0, 49907
	sw $t0, -2040($fp)
	li $t0, 34446
	sw $t0, -2044($fp)
	lw $t0, -2040($fp)
	lw $t1, -2044($fp)
	mul $t0, $t0, $t1
	sw $t0, -2048($fp)
	li $t0, 59404
	sw $t0, -2052($fp)
	lw $t0, -2048($fp)
	lw $t1, -2052($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2056($fp)
	addi $t0, $fp, -100
	sw $t0, -2060($fp)
	lw $t0, -752($fp)
	sw $t0, -2064($fp)
	li $t0, 4
	lw $t1, -2064($fp)
	mul $t0, $t0, $t1
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	lw $t1, -2060($fp)
	add $t0, $t0, $t1
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	lw $t1, 0($t0)
	sw $t1, -2076($fp)
	lw $t0, -2056($fp)
	lw $t1, -2076($fp)
	mul $t0, $t0, $t1
	sw $t0, -2080($fp)
	lw $t1, -2080($fp)
	li $t2, 0
	bne $t1, $t2, label724
	j label725
label724:
	li $t0, 1
	sw $t0, -1976($fp)
label725:
label707:
	j label676
label678:
	j label673
label675:
	addi $t0, $fp, -100
	sw $t0, -2084($fp)
	li $t0, 0
	sw $t0, -2088($fp)
	li $t0, 4
	lw $t1, -2088($fp)
	mul $t0, $t0, $t1
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	lw $t1, -2084($fp)
	add $t0, $t0, $t1
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	lw $t1, 0($t0)
	sw $t1, -2100($fp)
	lw $t0, -2100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -2104($fp)
	li $t0, 1
	sw $t0, -2108($fp)
	li $t0, 4
	lw $t1, -2108($fp)
	mul $t0, $t0, $t1
	sw $t0, -2112($fp)
	lw $t0, -2112($fp)
	lw $t1, -2104($fp)
	add $t0, $t0, $t1
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	lw $t1, 0($t0)
	sw $t1, -2120($fp)
	lw $t0, -2120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -2124($fp)
	li $t0, 2
	sw $t0, -2128($fp)
	li $t0, 4
	lw $t1, -2128($fp)
	mul $t0, $t0, $t1
	sw $t0, -2132($fp)
	lw $t0, -2132($fp)
	lw $t1, -2124($fp)
	add $t0, $t0, $t1
	sw $t0, -2136($fp)
	lw $t0, -2136($fp)
	lw $t1, 0($t0)
	sw $t1, -2140($fp)
	lw $t0, -2140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -2144($fp)
	li $t0, 3
	sw $t0, -2148($fp)
	li $t0, 4
	lw $t1, -2148($fp)
	mul $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	lw $t1, -2144($fp)
	add $t0, $t0, $t1
	sw $t0, -2156($fp)
	lw $t0, -2156($fp)
	lw $t1, 0($t0)
	sw $t1, -2160($fp)
	lw $t0, -2160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -2164($fp)
	li $t0, 4
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
	lw $t0, -2180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -2184($fp)
	li $t0, 5
	sw $t0, -2188($fp)
	li $t0, 4
	lw $t1, -2188($fp)
	mul $t0, $t0, $t1
	sw $t0, -2192($fp)
	lw $t0, -2192($fp)
	lw $t1, -2184($fp)
	add $t0, $t0, $t1
	sw $t0, -2196($fp)
	lw $t0, -2196($fp)
	lw $t1, 0($t0)
	sw $t1, -2200($fp)
	lw $t0, -2200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -2204($fp)
	li $t0, 6
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
	addi $t0, $fp, -100
	sw $t0, -2224($fp)
	li $t0, 7
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
	addi $t0, $fp, -100
	sw $t0, -2244($fp)
	li $t0, 8
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
	addi $t0, $fp, -100
	sw $t0, -2264($fp)
	li $t0, 9
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
	addi $t0, $fp, -120
	sw $t0, -2284($fp)
	li $t0, 0
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
	addi $t0, $fp, -120
	sw $t0, -2304($fp)
	li $t0, 1
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
	addi $t0, $fp, -120
	sw $t0, -2324($fp)
	li $t0, 2
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
	addi $t0, $fp, -120
	sw $t0, -2344($fp)
	li $t0, 3
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
	addi $t0, $fp, -120
	sw $t0, -2364($fp)
	li $t0, 4
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
	addi $t0, $fp, -152
	sw $t0, -2384($fp)
	li $t0, 0
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
	addi $t0, $fp, -152
	sw $t0, -2404($fp)
	li $t0, 1
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
	addi $t0, $fp, -152
	sw $t0, -2424($fp)
	li $t0, 2
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
	addi $t0, $fp, -152
	sw $t0, -2444($fp)
	li $t0, 3
	sw $t0, -2448($fp)
	li $t0, 4
	lw $t1, -2448($fp)
	mul $t0, $t0, $t1
	sw $t0, -2452($fp)
	lw $t0, -2452($fp)
	lw $t1, -2444($fp)
	add $t0, $t0, $t1
	sw $t0, -2456($fp)
	lw $t0, -2456($fp)
	lw $t1, 0($t0)
	sw $t1, -2460($fp)
	lw $t0, -2460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -2464($fp)
	li $t0, 4
	sw $t0, -2468($fp)
	li $t0, 4
	lw $t1, -2468($fp)
	mul $t0, $t0, $t1
	sw $t0, -2472($fp)
	lw $t0, -2472($fp)
	lw $t1, -2464($fp)
	add $t0, $t0, $t1
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	lw $t1, 0($t0)
	sw $t1, -2480($fp)
	lw $t0, -2480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -2484($fp)
	li $t0, 5
	sw $t0, -2488($fp)
	li $t0, 4
	lw $t1, -2488($fp)
	mul $t0, $t0, $t1
	sw $t0, -2492($fp)
	lw $t0, -2492($fp)
	lw $t1, -2484($fp)
	add $t0, $t0, $t1
	sw $t0, -2496($fp)
	lw $t0, -2496($fp)
	lw $t1, 0($t0)
	sw $t1, -2500($fp)
	lw $t0, -2500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -2504($fp)
	li $t0, 6
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
	lw $t0, -2520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -2524($fp)
	li $t0, 7
	sw $t0, -2528($fp)
	li $t0, 4
	lw $t1, -2528($fp)
	mul $t0, $t0, $t1
	sw $t0, -2532($fp)
	lw $t0, -2532($fp)
	lw $t1, -2524($fp)
	add $t0, $t0, $t1
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	lw $t1, 0($t0)
	sw $t1, -2540($fp)
	lw $t0, -2540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -752($fp)
	sw $t0, -2544($fp)
	lw $t0, -2544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -764($fp)
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -2552($fp)
	li $t0, 0
	sw $t0, -2556($fp)
	li $t0, 4
	lw $t1, -2556($fp)
	mul $t0, $t0, $t1
	sw $t0, -2560($fp)
	lw $t0, -2560($fp)
	lw $t1, -2552($fp)
	add $t0, $t0, $t1
	sw $t0, -2564($fp)
	lw $t0, -2564($fp)
	lw $t1, 0($t0)
	sw $t1, -2568($fp)
	lw $t0, -2568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -2572($fp)
	li $t0, 1
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
	addi $t0, $fp, -192
	sw $t0, -2592($fp)
	li $t0, 2
	sw $t0, -2596($fp)
	li $t0, 4
	lw $t1, -2596($fp)
	mul $t0, $t0, $t1
	sw $t0, -2600($fp)
	lw $t0, -2600($fp)
	lw $t1, -2592($fp)
	add $t0, $t0, $t1
	sw $t0, -2604($fp)
	lw $t0, -2604($fp)
	lw $t1, 0($t0)
	sw $t1, -2608($fp)
	lw $t0, -2608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -2612($fp)
	li $t0, 3
	sw $t0, -2616($fp)
	li $t0, 4
	lw $t1, -2616($fp)
	mul $t0, $t0, $t1
	sw $t0, -2620($fp)
	lw $t0, -2620($fp)
	lw $t1, -2612($fp)
	add $t0, $t0, $t1
	sw $t0, -2624($fp)
	lw $t0, -2624($fp)
	lw $t1, 0($t0)
	sw $t1, -2628($fp)
	lw $t0, -2628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -2632($fp)
	li $t0, 4
	sw $t0, -2636($fp)
	li $t0, 4
	lw $t1, -2636($fp)
	mul $t0, $t0, $t1
	sw $t0, -2640($fp)
	lw $t0, -2640($fp)
	lw $t1, -2632($fp)
	add $t0, $t0, $t1
	sw $t0, -2644($fp)
	lw $t0, -2644($fp)
	lw $t1, 0($t0)
	sw $t1, -2648($fp)
	lw $t0, -2648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -2652($fp)
	li $t0, 5
	sw $t0, -2656($fp)
	li $t0, 4
	lw $t1, -2656($fp)
	mul $t0, $t0, $t1
	sw $t0, -2660($fp)
	lw $t0, -2660($fp)
	lw $t1, -2652($fp)
	add $t0, $t0, $t1
	sw $t0, -2664($fp)
	lw $t0, -2664($fp)
	lw $t1, 0($t0)
	sw $t1, -2668($fp)
	lw $t0, -2668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -2672($fp)
	li $t0, 6
	sw $t0, -2676($fp)
	li $t0, 4
	lw $t1, -2676($fp)
	mul $t0, $t0, $t1
	sw $t0, -2680($fp)
	lw $t0, -2680($fp)
	lw $t1, -2672($fp)
	add $t0, $t0, $t1
	sw $t0, -2684($fp)
	lw $t0, -2684($fp)
	lw $t1, 0($t0)
	sw $t1, -2688($fp)
	lw $t0, -2688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -2692($fp)
	li $t0, 7
	sw $t0, -2696($fp)
	li $t0, 4
	lw $t1, -2696($fp)
	mul $t0, $t0, $t1
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	lw $t1, -2692($fp)
	add $t0, $t0, $t1
	sw $t0, -2704($fp)
	lw $t0, -2704($fp)
	lw $t1, 0($t0)
	sw $t1, -2708($fp)
	lw $t0, -2708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -2712($fp)
	li $t0, 8
	sw $t0, -2716($fp)
	li $t0, 4
	lw $t1, -2716($fp)
	mul $t0, $t0, $t1
	sw $t0, -2720($fp)
	lw $t0, -2720($fp)
	lw $t1, -2712($fp)
	add $t0, $t0, $t1
	sw $t0, -2724($fp)
	lw $t0, -2724($fp)
	lw $t1, 0($t0)
	sw $t1, -2728($fp)
	lw $t0, -2728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -2732($fp)
	li $t0, 9
	sw $t0, -2736($fp)
	li $t0, 4
	lw $t1, -2736($fp)
	mul $t0, $t0, $t1
	sw $t0, -2740($fp)
	lw $t0, -2740($fp)
	lw $t1, -2732($fp)
	add $t0, $t0, $t1
	sw $t0, -2744($fp)
	lw $t0, -2744($fp)
	lw $t1, 0($t0)
	sw $t1, -2748($fp)
	lw $t0, -2748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1016($fp)
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1028($fp)
	sw $t0, -2756($fp)
	lw $t0, -2756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1040($fp)
	sw $t0, -2760($fp)
	lw $t0, -2760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1052($fp)
	sw $t0, -2764($fp)
	lw $t0, -2764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2768($fp)
	jal f9
	sw $v0, -2772($fp)
	addi $sp, $sp, 4
	lw $t1, -2772($fp)
	li $t2, 0
	bne $t1, $t2, label728
	j label730
label730:
	lw $t0, -752($fp)
	sw $t0, -2776($fp)
	lw $t1, -2776($fp)
	li $t2, 0
	bne $t1, $t2, label729
	j label728
label728:
	li $t0, 1
	sw $t0, -2768($fp)
label729:
	lw $ra, -4($fp)
	lw $v0, -2768($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -12
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
	lw $t0, -2796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -2800($fp)
	li $t0, 1
	sw $t0, -2804($fp)
	li $t0, 4
	lw $t1, -2804($fp)
	mul $t0, $t0, $t1
	sw $t0, -2808($fp)
	lw $t0, -2808($fp)
	lw $t1, -2800($fp)
	add $t0, $t0, $t1
	sw $t0, -2812($fp)
	lw $t0, -2812($fp)
	lw $t1, 0($t0)
	sw $t1, -2816($fp)
	lw $t0, -2816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, 12($fp)
	sw $t0, -2820($fp)
	li $t0, 0
	sw $t0, -2824($fp)
	lw $t0, 8($fp)
	sw $t0, -2828($fp)
	lw $t1, -2828($fp)
	li $t2, 0
	bne $t1, $t2, label732
	j label731
label731:
	li $t0, 1
	sw $t0, -2824($fp)
label732:
	lw $t0, -2820($fp)
	lw $t1, -2824($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2832($fp)
	addi $t0, $fp, -12
	sw $t0, -2836($fp)
	li $t0, 0
	sw $t0, -2840($fp)
	li $t0, 4
	lw $t1, -2840($fp)
	mul $t0, $t0, $t1
	sw $t0, -2844($fp)
	lw $t0, -2844($fp)
	lw $t1, -2836($fp)
	add $t0, $t0, $t1
	sw $t0, -2848($fp)
	lw $t0, -2848($fp)
	lw $t1, 0($t0)
	sw $t1, -2852($fp)
	li $t0, 0
	lw $t1, -2852($fp)
	sub $t0, $t0, $t1
	sw $t0, -2856($fp)
	lw $t0, -2832($fp)
	lw $t1, -2856($fp)
	sub $t0, $t0, $t1
	sw $t0, -2860($fp)
	lw $ra, -4($fp)
	lw $v0, -2860($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1496
	li $t0, 48244
	sw $t0, -76($fp)
	addi $t0, $fp, -24
	sw $t0, -80($fp)
	li $t0, 0
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -88($fp)
	lw $t0, -80($fp)
	lw $t1, -88($fp)
	add $t0, $t0, $t1
	sw $t0, -92($fp)
	lw $t0, -76($fp)
	lw $t1, -92($fp)
	sw $t0, 0($t1)
	lw $t0, -92($fp)
	lw $t1, 0($t0)
	sw $t1, -96($fp)
	li $t0, 49481
	sw $t0, -100($fp)
	addi $t0, $fp, -24
	sw $t0, -104($fp)
	li $t0, 1
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -112($fp)
	lw $t0, -104($fp)
	lw $t1, -112($fp)
	add $t0, $t0, $t1
	sw $t0, -116($fp)
	lw $t0, -100($fp)
	lw $t1, -116($fp)
	sw $t0, 0($t1)
	lw $t0, -116($fp)
	lw $t1, 0($t0)
	sw $t1, -120($fp)
	li $t0, 51567
	sw $t0, -124($fp)
	addi $t0, $fp, -24
	sw $t0, -128($fp)
	li $t0, 2
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -136($fp)
	lw $t0, -128($fp)
	lw $t1, -136($fp)
	add $t0, $t0, $t1
	sw $t0, -140($fp)
	lw $t0, -124($fp)
	lw $t1, -140($fp)
	sw $t0, 0($t1)
	lw $t0, -140($fp)
	lw $t1, 0($t0)
	sw $t1, -144($fp)
	li $t0, 24294
	sw $t0, -148($fp)
	addi $t0, $fp, -24
	sw $t0, -152($fp)
	li $t0, 3
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -160($fp)
	lw $t0, -152($fp)
	lw $t1, -160($fp)
	add $t0, $t0, $t1
	sw $t0, -164($fp)
	lw $t0, -148($fp)
	lw $t1, -164($fp)
	sw $t0, 0($t1)
	lw $t0, -164($fp)
	lw $t1, 0($t0)
	sw $t1, -168($fp)
	li $t0, 45095
	sw $t0, -172($fp)
	addi $t0, $fp, -24
	sw $t0, -176($fp)
	li $t0, 4
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
	li $t0, 54731
	sw $t0, -196($fp)
	addi $t0, $fp, -44
	sw $t0, -200($fp)
	li $t0, 0
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -208($fp)
	lw $t0, -200($fp)
	lw $t1, -208($fp)
	add $t0, $t0, $t1
	sw $t0, -212($fp)
	lw $t0, -196($fp)
	lw $t1, -212($fp)
	sw $t0, 0($t1)
	lw $t0, -212($fp)
	lw $t1, 0($t0)
	sw $t1, -216($fp)
	li $t0, 11507
	sw $t0, -220($fp)
	addi $t0, $fp, -44
	sw $t0, -224($fp)
	li $t0, 1
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -232($fp)
	lw $t0, -224($fp)
	lw $t1, -232($fp)
	add $t0, $t0, $t1
	sw $t0, -236($fp)
	lw $t0, -220($fp)
	lw $t1, -236($fp)
	sw $t0, 0($t1)
	lw $t0, -236($fp)
	lw $t1, 0($t0)
	sw $t1, -240($fp)
	li $t0, 9214
	sw $t0, -244($fp)
	addi $t0, $fp, -44
	sw $t0, -248($fp)
	li $t0, 2
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
	li $t0, 15127
	sw $t0, -268($fp)
	addi $t0, $fp, -44
	sw $t0, -272($fp)
	li $t0, 3
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
	li $t0, 60548
	sw $t0, -292($fp)
	addi $t0, $fp, -44
	sw $t0, -296($fp)
	li $t0, 4
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
	li $t0, 18475
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	li $t0, 38026
	sw $t0, -328($fp)
	addi $t0, $fp, -72
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
	li $t0, 49394
	sw $t0, -352($fp)
	addi $t0, $fp, -72
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
	li $t0, 60228
	sw $t0, -376($fp)
	addi $t0, $fp, -72
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
	li $t0, 19633
	sw $t0, -400($fp)
	addi $t0, $fp, -72
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
	li $t0, 58591
	sw $t0, -424($fp)
	addi $t0, $fp, -72
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
	li $t0, 20383
	sw $t0, -448($fp)
	addi $t0, $fp, -72
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
	li $t0, 52734
	sw $t0, -472($fp)
	addi $t0, $fp, -72
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
	li $t0, 63959
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	li $t0, 10803
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	li $t0, 6367
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	li $t0, 59454
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	li $t0, 55736
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	li $t0, 0
	sw $t0, -556($fp)
	li $t0, 0
	sw $t0, -560($fp)
	li $t0, 0
	sw $t0, -564($fp)
	li $t0, 0
	sw $t0, -568($fp)
	addi $t0, $fp, -72
	sw $t0, -572($fp)
	lw $t0, -500($fp)
	sw $t0, -576($fp)
	li $t0, 4
	lw $t1, -576($fp)
	mul $t0, $t0, $t1
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	lw $t1, -572($fp)
	add $t0, $t0, $t1
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	lw $t1, 0($t0)
	sw $t1, -588($fp)
	lw $t0, 8($fp)
	sw $t0, -592($fp)
	lw $t1, -588($fp)
	lw $t2, -592($fp)
	blt $t1, $t2, label739
	j label740
label739:
	li $t0, 1
	sw $t0, -568($fp)
label740:
	li $t0, 0
	sw $t0, -596($fp)
	lw $t0, 12($fp)
	sw $t0, -600($fp)
	li $t0, 5922
	sw $t0, -604($fp)
	lw $t1, -600($fp)
	lw $t2, -604($fp)
	ble $t1, $t2, label741
	j label742
label741:
	li $t0, 1
	sw $t0, -596($fp)
label742:
	lw $t1, -568($fp)
	lw $t2, -596($fp)
	beq $t1, $t2, label737
	j label738
label737:
	li $t0, 1
	sw $t0, -564($fp)
label738:
	lw $t0, 8($fp)
	sw $t0, -608($fp)
	li $t0, 29233
	sw $t0, -612($fp)
	lw $t0, -608($fp)
	lw $t1, -612($fp)
	mul $t0, $t0, $t1
	sw $t0, -616($fp)
	lw $t1, -564($fp)
	lw $t2, -616($fp)
	bne $t1, $t2, label735
	j label736
label735:
	li $t0, 1
	sw $t0, -560($fp)
label736:
	li $t0, 49813
	sw $t0, -620($fp)
	li $t0, 0
	lw $t1, -620($fp)
	sub $t0, $t0, $t1
	sw $t0, -624($fp)
	li $t0, 0
	lw $t1, -624($fp)
	sub $t0, $t0, $t1
	sw $t0, -628($fp)
	li $t0, 0
	lw $t1, -628($fp)
	sub $t0, $t0, $t1
	sw $t0, -632($fp)
	lw $t1, -560($fp)
	lw $t2, -632($fp)
	bne $t1, $t2, label733
	j label734
label733:
	li $t0, 1
	sw $t0, -556($fp)
label734:
	li $t0, 0
	sw $t0, -636($fp)
	li $t0, 26390
	sw $t0, -640($fp)
	li $t0, 21639
	sw $t0, -644($fp)
	lw $t0, -640($fp)
	lw $t1, -644($fp)
	sub $t0, $t0, $t1
	sw $t0, -648($fp)
	lw $t0, -512($fp)
	sw $t0, -652($fp)
	addi $t0, $fp, -72
	sw $t0, -656($fp)
	lw $t0, -524($fp)
	sw $t0, -660($fp)
	li $t0, 4
	lw $t1, -660($fp)
	mul $t0, $t0, $t1
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	lw $t1, -656($fp)
	add $t0, $t0, $t1
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	lw $t1, 0($t0)
	sw $t1, -672($fp)
	addi $sp, $sp, -4
	lw $t0, -648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -672($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -676($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -24
	sw $t0, -680($fp)
	lw $t0, -512($fp)
	sw $t0, -684($fp)
	li $t0, 4
	lw $t1, -684($fp)
	mul $t0, $t0, $t1
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	lw $t1, -680($fp)
	add $t0, $t0, $t1
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	lw $t1, 0($t0)
	sw $t1, -696($fp)
	lw $t0, 8($fp)
	sw $t0, -700($fp)
	lw $t0, -696($fp)
	lw $t1, -700($fp)
	mul $t0, $t0, $t1
	sw $t0, -704($fp)
	li $t0, 0
	sw $t0, -708($fp)
	lw $t0, -512($fp)
	sw $t0, -712($fp)
	li $t0, 37693
	sw $t0, -716($fp)
	lw $t0, -712($fp)
	lw $t1, -716($fp)
	mul $t0, $t0, $t1
	sw $t0, -720($fp)
	li $t0, 37455
	sw $t0, -724($fp)
	lw $t0, -720($fp)
	lw $t1, -724($fp)
	add $t0, $t0, $t1
	sw $t0, -728($fp)
	li $t0, 43682
	sw $t0, -732($fp)
	li $t0, 0
	sw $t0, -736($fp)
	lw $t0, -524($fp)
	sw $t0, -740($fp)
	li $t0, 63679
	sw $t0, -744($fp)
	lw $t0, -740($fp)
	lw $t1, -744($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -748($fp)
	lw $t0, 8($fp)
	sw $t0, -752($fp)
	lw $t1, -748($fp)
	lw $t2, -752($fp)
	ble $t1, $t2, label747
	j label748
label747:
	li $t0, 1
	sw $t0, -736($fp)
label748:
	addi $sp, $sp, -4
	lw $t0, -728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -736($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -756($fp)
	addi $sp, $sp, 16
	lw $t0, 4($fp)
	sw $t0, -760($fp)
	lw $t1, -756($fp)
	lw $t2, -760($fp)
	beq $t1, $t2, label745
	j label746
label745:
	li $t0, 1
	sw $t0, -708($fp)
label746:
	li $t0, 0
	sw $t0, -764($fp)
	lw $t0, -536($fp)
	sw $t0, -768($fp)
	lw $t1, -768($fp)
	li $t2, 0
	bne $t1, $t2, label751
	j label750
label751:
	li $t0, 55829
	sw $t0, -772($fp)
	lw $t1, -772($fp)
	li $t2, 0
	bne $t1, $t2, label749
	j label750
label749:
	li $t0, 1
	sw $t0, -764($fp)
label750:
	addi $sp, $sp, -4
	lw $t0, -676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -764($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -776($fp)
	addi $sp, $sp, 20
	li $t0, 23486
	sw $t0, -780($fp)
	lw $t0, -776($fp)
	lw $t1, -780($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -784($fp)
	li $t0, 0
	lw $t1, -784($fp)
	sub $t0, $t0, $t1
	sw $t0, -788($fp)
	li $t0, 50685
	sw $t0, -792($fp)
	li $t0, 0
	lw $t1, -792($fp)
	sub $t0, $t0, $t1
	sw $t0, -796($fp)
	li $t0, 0
	lw $t1, -796($fp)
	sub $t0, $t0, $t1
	sw $t0, -800($fp)
	li $t0, 1198
	sw $t0, -804($fp)
	li $t0, 12682
	sw $t0, -808($fp)
	lw $t0, -804($fp)
	lw $t1, -808($fp)
	mul $t0, $t0, $t1
	sw $t0, -812($fp)
	lw $t0, -800($fp)
	lw $t1, -812($fp)
	add $t0, $t0, $t1
	sw $t0, -816($fp)
	lw $t1, -788($fp)
	lw $t2, -816($fp)
	ble $t1, $t2, label743
	j label744
label743:
	li $t0, 1
	sw $t0, -636($fp)
label744:
	li $t0, 0
	sw $t0, -820($fp)
	lw $t0, -320($fp)
	sw $t0, -824($fp)
	li $t0, 62192
	sw $t0, -828($fp)
	li $t0, 0
	sw $t0, -832($fp)
	li $t0, 57204
	sw $t0, -836($fp)
	li $t0, 28888
	sw $t0, -840($fp)
	lw $t1, -836($fp)
	lw $t2, -840($fp)
	bge $t1, $t2, label756
	j label755
label756:
	li $t0, 300
	sw $t0, -844($fp)
	lw $t1, -844($fp)
	li $t2, 0
	bne $t1, $t2, label754
	j label755
label754:
	li $t0, 1
	sw $t0, -832($fp)
label755:
	lw $t0, -512($fp)
	sw $t0, -848($fp)
	lw $t0, 8($fp)
	sw $t0, -852($fp)
	lw $t0, -848($fp)
	lw $t1, -852($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -856($fp)
	li $t0, 27809
	sw $t0, -860($fp)
	lw $t0, -856($fp)
	lw $t1, -860($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -864($fp)
	li $t0, 10412
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -872($fp)
	addi $sp, $sp, -4
	lw $t0, -832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -872($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -876($fp)
	addi $sp, $sp, 16
	lw $t0, -828($fp)
	lw $t1, -876($fp)
	mul $t0, $t0, $t1
	sw $t0, -880($fp)
	li $t0, 0
	lw $t1, -880($fp)
	sub $t0, $t0, $t1
	sw $t0, -884($fp)
	li $t0, 0
	lw $t1, -884($fp)
	sub $t0, $t0, $t1
	sw $t0, -888($fp)
	lw $t1, -824($fp)
	lw $t2, -888($fp)
	ble $t1, $t2, label752
	j label753
label752:
	li $t0, 1
	sw $t0, -820($fp)
label753:
	addi $t0, $fp, -72
	sw $t0, -892($fp)
	addi $t0, $fp, -24
	sw $t0, -896($fp)
	li $t0, 1
	sw $t0, -900($fp)
	li $t0, 4
	lw $t1, -900($fp)
	mul $t0, $t0, $t1
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	lw $t1, -896($fp)
	add $t0, $t0, $t1
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	lw $t1, 0($t0)
	sw $t1, -912($fp)
	li $t0, 4
	lw $t1, -912($fp)
	mul $t0, $t0, $t1
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	lw $t1, -892($fp)
	add $t0, $t0, $t1
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	lw $t1, 0($t0)
	sw $t1, -924($fp)
	li $t0, 0
	sw $t0, -928($fp)
	li $t0, 43963
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -936($fp)
	li $t0, 0
	sw $t0, -940($fp)
	lw $t0, -320($fp)
	sw $t0, -944($fp)
	li $t0, 0
	lw $t1, -944($fp)
	sub $t0, $t0, $t1
	sw $t0, -948($fp)
	li $t0, 34118
	sw $t0, -952($fp)
	lw $t1, -948($fp)
	lw $t2, -952($fp)
	beq $t1, $t2, label759
	j label760
label759:
	li $t0, 1
	sw $t0, -940($fp)
label760:
	jal f9
	sw $v0, -956($fp)
	addi $sp, $sp, 4
	li $t0, 19933
	sw $t0, -960($fp)
	addi $sp, $sp, -4
	lw $t0, -936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -960($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -964($fp)
	addi $sp, $sp, 20
	lw $t1, -964($fp)
	li $t2, 0
	bne $t1, $t2, label758
	j label757
label757:
	li $t0, 1
	sw $t0, -928($fp)
label758:
	lw $t0, -924($fp)
	lw $t1, -928($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -968($fp)
	addi $t0, $fp, -24
	sw $t0, -972($fp)
	li $t0, 0
	sw $t0, -976($fp)
	li $t0, 4
	lw $t1, -976($fp)
	mul $t0, $t0, $t1
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	lw $t1, -972($fp)
	add $t0, $t0, $t1
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	lw $t1, 0($t0)
	sw $t1, -988($fp)
	lw $t0, -988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -992($fp)
	li $t0, 1
	sw $t0, -996($fp)
	li $t0, 4
	lw $t1, -996($fp)
	mul $t0, $t0, $t1
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	lw $t1, -992($fp)
	add $t0, $t0, $t1
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	lw $t1, 0($t0)
	sw $t1, -1008($fp)
	lw $t0, -1008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -1012($fp)
	li $t0, 2
	sw $t0, -1016($fp)
	li $t0, 4
	lw $t1, -1016($fp)
	mul $t0, $t0, $t1
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	lw $t1, -1012($fp)
	add $t0, $t0, $t1
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	lw $t1, 0($t0)
	sw $t1, -1028($fp)
	lw $t0, -1028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -1032($fp)
	li $t0, 3
	sw $t0, -1036($fp)
	li $t0, 4
	lw $t1, -1036($fp)
	mul $t0, $t0, $t1
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	lw $t1, -1032($fp)
	add $t0, $t0, $t1
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	lw $t1, 0($t0)
	sw $t1, -1048($fp)
	lw $t0, -1048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -1052($fp)
	li $t0, 4
	sw $t0, -1056($fp)
	li $t0, 4
	lw $t1, -1056($fp)
	mul $t0, $t0, $t1
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	lw $t1, -1052($fp)
	add $t0, $t0, $t1
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	lw $t1, 0($t0)
	sw $t1, -1068($fp)
	lw $t0, -1068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1072($fp)
	li $t0, 0
	sw $t0, -1076($fp)
	li $t0, 4
	lw $t1, -1076($fp)
	mul $t0, $t0, $t1
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	lw $t1, -1072($fp)
	add $t0, $t0, $t1
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	lw $t1, 0($t0)
	sw $t1, -1088($fp)
	lw $t0, -1088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1092($fp)
	li $t0, 1
	sw $t0, -1096($fp)
	li $t0, 4
	lw $t1, -1096($fp)
	mul $t0, $t0, $t1
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	lw $t1, -1092($fp)
	add $t0, $t0, $t1
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	lw $t1, 0($t0)
	sw $t1, -1108($fp)
	lw $t0, -1108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1112($fp)
	li $t0, 2
	sw $t0, -1116($fp)
	li $t0, 4
	lw $t1, -1116($fp)
	mul $t0, $t0, $t1
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	lw $t1, -1112($fp)
	add $t0, $t0, $t1
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	lw $t1, 0($t0)
	sw $t1, -1128($fp)
	lw $t0, -1128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1132($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -1152($fp)
	li $t0, 4
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
	lw $t0, -320($fp)
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -1176($fp)
	li $t0, 0
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
	addi $t0, $fp, -72
	sw $t0, -1196($fp)
	li $t0, 1
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
	addi $t0, $fp, -72
	sw $t0, -1216($fp)
	li $t0, 2
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
	addi $t0, $fp, -72
	sw $t0, -1236($fp)
	li $t0, 3
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
	addi $t0, $fp, -72
	sw $t0, -1256($fp)
	li $t0, 4
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
	addi $t0, $fp, -72
	sw $t0, -1276($fp)
	li $t0, 5
	sw $t0, -1280($fp)
	li $t0, 4
	lw $t1, -1280($fp)
	mul $t0, $t0, $t1
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	lw $t1, -1276($fp)
	add $t0, $t0, $t1
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	lw $t1, 0($t0)
	sw $t1, -1292($fp)
	lw $t0, -1292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -1296($fp)
	li $t0, 6
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
	lw $t0, -500($fp)
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -512($fp)
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -524($fp)
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -536($fp)
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -548($fp)
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1336($fp)
	li $t0, 0
	sw $t0, -1340($fp)
	lw $t0, 4($fp)
	sw $t0, -1344($fp)
	lw $t1, -1344($fp)
	li $t2, 0
	bne $t1, $t2, label765
	j label764
label764:
	li $t0, 1
	sw $t0, -1340($fp)
label765:
	li $t0, 0
	lw $t1, -1340($fp)
	sub $t0, $t0, $t1
	sw $t0, -1348($fp)
	li $t0, 0
	sw $t0, -1352($fp)
	lw $t0, -524($fp)
	sw $t0, -1356($fp)
	lw $t1, -1356($fp)
	li $t2, 0
	bne $t1, $t2, label767
	j label768
label768:
	li $t0, 29244
	sw $t0, -1360($fp)
	lw $t1, -1360($fp)
	li $t2, 0
	bne $t1, $t2, label766
	j label767
label766:
	li $t0, 1
	sw $t0, -1352($fp)
label767:
	li $t0, 0
	sw $t0, -1364($fp)
	li $t0, 0
	sw $t0, -1368($fp)
	li $t0, 44967
	sw $t0, -1372($fp)
	li $t0, 19420
	sw $t0, -1376($fp)
	lw $t1, -1372($fp)
	lw $t2, -1376($fp)
	bgt $t1, $t2, label771
	j label772
label771:
	li $t0, 1
	sw $t0, -1368($fp)
label772:
	li $t0, 55693
	sw $t0, -1380($fp)
	lw $t1, -1368($fp)
	lw $t2, -1380($fp)
	beq $t1, $t2, label769
	j label770
label769:
	li $t0, 1
	sw $t0, -1364($fp)
label770:
	li $t0, 0
	sw $t0, -1384($fp)
	li $t0, 0
	sw $t0, -1388($fp)
	li $t0, 13498
	sw $t0, -1392($fp)
	lw $t0, -512($fp)
	sw $t0, -1396($fp)
	lw $t0, -1392($fp)
	lw $t1, -1396($fp)
	sub $t0, $t0, $t1
	sw $t0, -1400($fp)
	li $t0, 26460
	sw $t0, -1404($fp)
	lw $t1, -1400($fp)
	lw $t2, -1404($fp)
	beq $t1, $t2, label775
	j label776
label775:
	li $t0, 1
	sw $t0, -1388($fp)
label776:
	lw $t0, -524($fp)
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -1412($fp)
	li $t0, 54767
	sw $t0, -1416($fp)
	li $t0, 0
	lw $t1, -1416($fp)
	sub $t0, $t0, $t1
	sw $t0, -1420($fp)
	li $t0, 0
	lw $t1, -1420($fp)
	sub $t0, $t0, $t1
	sw $t0, -1424($fp)
	addi $sp, $sp, -4
	lw $t0, -1388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1424($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -1428($fp)
	addi $sp, $sp, 16
	lw $t1, -1428($fp)
	li $t2, 0
	bne $t1, $t2, label774
	j label773
label773:
	li $t0, 1
	sw $t0, -1384($fp)
label774:
	li $t0, 0
	sw $t0, -1432($fp)
	lw $t0, -524($fp)
	sw $t0, -1436($fp)
	li $t0, 0
	lw $t1, -1436($fp)
	sub $t0, $t0, $t1
	sw $t0, -1440($fp)
	lw $t1, -1440($fp)
	li $t2, 0
	bne $t1, $t2, label777
	j label779
label779:
	lw $t0, -524($fp)
	sw $t0, -1444($fp)
	lw $t1, -1444($fp)
	li $t2, 0
	bne $t1, $t2, label777
	j label778
label777:
	li $t0, 1
	sw $t0, -1432($fp)
label778:
	addi $sp, $sp, -4
	lw $t0, -1352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1432($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1448($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -1452($fp)
	lw $t0, -320($fp)
	sw $t0, -1456($fp)
	li $t0, 32542
	sw $t0, -1460($fp)
	lw $t1, -1456($fp)
	lw $t2, -1460($fp)
	bne $t1, $t2, label780
	j label781
label780:
	li $t0, 1
	sw $t0, -1452($fp)
label781:
	li $t0, 7131
	sw $t0, -1464($fp)
	addi $sp, $sp, -4
	lw $t0, -1348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1464($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1468($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -1468($fp)
	sub $t0, $t0, $t1
	sw $t0, -1472($fp)
	lw $t1, -1472($fp)
	li $t2, 0
	bne $t1, $t2, label761
	j label763
label763:
	addi $t0, $fp, -44
	sw $t0, -1476($fp)
	li $t0, 3
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
	li $t0, 7390
	sw $t0, -1496($fp)
	lw $t0, -1492($fp)
	lw $t1, -1496($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1500($fp)
	lw $t1, -1500($fp)
	li $t2, 0
	bne $t1, $t2, label761
	j label762
label761:
	li $t0, 1
	sw $t0, -1336($fp)
label762:
	lw $ra, -4($fp)
	lw $v0, -1336($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -7720
	li $t0, 47407
	sw $t0, -164($fp)
	addi $t0, $fp, -32
	sw $t0, -168($fp)
	li $t0, 0
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -176($fp)
	lw $t0, -168($fp)
	lw $t1, -176($fp)
	add $t0, $t0, $t1
	sw $t0, -180($fp)
	lw $t0, -164($fp)
	lw $t1, -180($fp)
	sw $t0, 0($t1)
	lw $t0, -180($fp)
	lw $t1, 0($t0)
	sw $t1, -184($fp)
	li $t0, 25755
	sw $t0, -188($fp)
	addi $t0, $fp, -32
	sw $t0, -192($fp)
	li $t0, 1
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -200($fp)
	lw $t0, -192($fp)
	lw $t1, -200($fp)
	add $t0, $t0, $t1
	sw $t0, -204($fp)
	lw $t0, -188($fp)
	lw $t1, -204($fp)
	sw $t0, 0($t1)
	lw $t0, -204($fp)
	lw $t1, 0($t0)
	sw $t1, -208($fp)
	li $t0, 33781
	sw $t0, -212($fp)
	addi $t0, $fp, -32
	sw $t0, -216($fp)
	li $t0, 2
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -224($fp)
	lw $t0, -216($fp)
	lw $t1, -224($fp)
	add $t0, $t0, $t1
	sw $t0, -228($fp)
	lw $t0, -212($fp)
	lw $t1, -228($fp)
	sw $t0, 0($t1)
	lw $t0, -228($fp)
	lw $t1, 0($t0)
	sw $t1, -232($fp)
	li $t0, 3510
	sw $t0, -236($fp)
	addi $t0, $fp, -32
	sw $t0, -240($fp)
	li $t0, 3
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -248($fp)
	lw $t0, -240($fp)
	lw $t1, -248($fp)
	add $t0, $t0, $t1
	sw $t0, -252($fp)
	lw $t0, -236($fp)
	lw $t1, -252($fp)
	sw $t0, 0($t1)
	lw $t0, -252($fp)
	lw $t1, 0($t0)
	sw $t1, -256($fp)
	li $t0, 49242
	sw $t0, -260($fp)
	addi $t0, $fp, -32
	sw $t0, -264($fp)
	li $t0, 4
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -272($fp)
	lw $t0, -264($fp)
	lw $t1, -272($fp)
	add $t0, $t0, $t1
	sw $t0, -276($fp)
	lw $t0, -260($fp)
	lw $t1, -276($fp)
	sw $t0, 0($t1)
	lw $t0, -276($fp)
	lw $t1, 0($t0)
	sw $t1, -280($fp)
	li $t0, 18930
	sw $t0, -284($fp)
	addi $t0, $fp, -32
	sw $t0, -288($fp)
	li $t0, 5
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
	li $t0, 4708
	sw $t0, -308($fp)
	addi $t0, $fp, -32
	sw $t0, -312($fp)
	li $t0, 6
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
	li $t0, 61924
	sw $t0, -332($fp)
	addi $t0, $fp, -52
	sw $t0, -336($fp)
	li $t0, 0
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -344($fp)
	lw $t0, -336($fp)
	lw $t1, -344($fp)
	add $t0, $t0, $t1
	sw $t0, -348($fp)
	lw $t0, -332($fp)
	lw $t1, -348($fp)
	sw $t0, 0($t1)
	lw $t0, -348($fp)
	lw $t1, 0($t0)
	sw $t1, -352($fp)
	li $t0, 15586
	sw $t0, -356($fp)
	addi $t0, $fp, -52
	sw $t0, -360($fp)
	li $t0, 1
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
	li $t0, 15120
	sw $t0, -380($fp)
	addi $t0, $fp, -52
	sw $t0, -384($fp)
	li $t0, 2
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
	li $t0, 24197
	sw $t0, -404($fp)
	addi $t0, $fp, -52
	sw $t0, -408($fp)
	li $t0, 3
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
	li $t0, 7254
	sw $t0, -428($fp)
	addi $t0, $fp, -52
	sw $t0, -432($fp)
	li $t0, 4
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
	li $t0, 44008
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	li $t0, 24497
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	li $t0, 48317
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	li $t0, 2052
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	li $t0, 44431
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	li $t0, 16900
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	li $t0, 46016
	sw $t0, -524($fp)
	addi $t0, $fp, -64
	sw $t0, -528($fp)
	li $t0, 0
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
	li $t0, 51562
	sw $t0, -548($fp)
	addi $t0, $fp, -64
	sw $t0, -552($fp)
	li $t0, 1
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
	li $t0, 49442
	sw $t0, -572($fp)
	addi $t0, $fp, -64
	sw $t0, -576($fp)
	li $t0, 2
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -584($fp)
	lw $t0, -576($fp)
	lw $t1, -584($fp)
	add $t0, $t0, $t1
	sw $t0, -588($fp)
	lw $t0, -572($fp)
	lw $t1, -588($fp)
	sw $t0, 0($t1)
	lw $t0, -588($fp)
	lw $t1, 0($t0)
	sw $t1, -592($fp)
	li $t0, 35247
	sw $t0, -596($fp)
	addi $t0, $fp, -84
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
	li $t0, 65061
	sw $t0, -620($fp)
	addi $t0, $fp, -84
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
	li $t0, 10366
	sw $t0, -644($fp)
	addi $t0, $fp, -84
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
	li $t0, 14678
	sw $t0, -668($fp)
	addi $t0, $fp, -84
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
	li $t0, 18945
	sw $t0, -692($fp)
	addi $t0, $fp, -84
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
	li $t0, 524
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -724($fp)
	li $t0, 43922
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -736($fp)
	li $t0, 28659
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	sw $t0, -748($fp)
	li $t0, 54360
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -760($fp)
	li $t0, 51313
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -772($fp)
	li $t0, 10530
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -784($fp)
	li $t0, 14580
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -796($fp)
	li $t0, 19558
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -808($fp)
	li $t0, 14040
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -820($fp)
	li $t0, 63822
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	sw $t0, -832($fp)
	li $t0, 38488
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	sw $t0, -844($fp)
	li $t0, 18748
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	sw $t0, -856($fp)
	li $t0, 60210
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	sw $t0, -868($fp)
	li $t0, 54074
	sw $t0, -872($fp)
	addi $t0, $fp, -96
	sw $t0, -876($fp)
	li $t0, 0
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
	li $t0, 33868
	sw $t0, -896($fp)
	addi $t0, $fp, -96
	sw $t0, -900($fp)
	li $t0, 1
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
	li $t0, 18871
	sw $t0, -920($fp)
	addi $t0, $fp, -96
	sw $t0, -924($fp)
	li $t0, 2
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -932($fp)
	lw $t0, -924($fp)
	lw $t1, -932($fp)
	add $t0, $t0, $t1
	sw $t0, -936($fp)
	lw $t0, -920($fp)
	lw $t1, -936($fp)
	sw $t0, 0($t1)
	lw $t0, -936($fp)
	lw $t1, 0($t0)
	sw $t1, -940($fp)
	li $t0, 61328
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	sw $t0, -952($fp)
	li $t0, 12341
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	sw $t0, -964($fp)
	li $t0, 43369
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	sw $t0, -976($fp)
	li $t0, 44110
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	sw $t0, -988($fp)
	li $t0, 14393
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	sw $t0, -1000($fp)
	li $t0, 22264
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	sw $t0, -1012($fp)
	li $t0, 61010
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	sw $t0, -1024($fp)
	li $t0, 60409
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	sw $t0, -1036($fp)
	li $t0, 8290
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	sw $t0, -1048($fp)
	li $t0, 44916
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	sw $t0, -1060($fp)
	li $t0, 30120
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	sw $t0, -1072($fp)
	li $t0, 7815
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	sw $t0, -1084($fp)
	li $t0, 55282
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	sw $t0, -1096($fp)
	li $t0, 44798
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	sw $t0, -1108($fp)
	li $t0, 26761
	sw $t0, -1112($fp)
	addi $t0, $fp, -128
	sw $t0, -1116($fp)
	li $t0, 0
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
	li $t0, 55806
	sw $t0, -1136($fp)
	addi $t0, $fp, -128
	sw $t0, -1140($fp)
	li $t0, 1
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1148($fp)
	lw $t0, -1140($fp)
	lw $t1, -1148($fp)
	add $t0, $t0, $t1
	sw $t0, -1152($fp)
	lw $t0, -1136($fp)
	lw $t1, -1152($fp)
	sw $t0, 0($t1)
	lw $t0, -1152($fp)
	lw $t1, 0($t0)
	sw $t1, -1156($fp)
	li $t0, 23185
	sw $t0, -1160($fp)
	addi $t0, $fp, -128
	sw $t0, -1164($fp)
	li $t0, 2
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1172($fp)
	lw $t0, -1164($fp)
	lw $t1, -1172($fp)
	add $t0, $t0, $t1
	sw $t0, -1176($fp)
	lw $t0, -1160($fp)
	lw $t1, -1176($fp)
	sw $t0, 0($t1)
	lw $t0, -1176($fp)
	lw $t1, 0($t0)
	sw $t1, -1180($fp)
	li $t0, 55420
	sw $t0, -1184($fp)
	addi $t0, $fp, -128
	sw $t0, -1188($fp)
	li $t0, 3
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1196($fp)
	lw $t0, -1188($fp)
	lw $t1, -1196($fp)
	add $t0, $t0, $t1
	sw $t0, -1200($fp)
	lw $t0, -1184($fp)
	lw $t1, -1200($fp)
	sw $t0, 0($t1)
	lw $t0, -1200($fp)
	lw $t1, 0($t0)
	sw $t1, -1204($fp)
	li $t0, 44631
	sw $t0, -1208($fp)
	addi $t0, $fp, -128
	sw $t0, -1212($fp)
	li $t0, 4
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1220($fp)
	lw $t0, -1212($fp)
	lw $t1, -1220($fp)
	add $t0, $t0, $t1
	sw $t0, -1224($fp)
	lw $t0, -1208($fp)
	lw $t1, -1224($fp)
	sw $t0, 0($t1)
	lw $t0, -1224($fp)
	lw $t1, 0($t0)
	sw $t1, -1228($fp)
	li $t0, 8962
	sw $t0, -1232($fp)
	addi $t0, $fp, -128
	sw $t0, -1236($fp)
	li $t0, 5
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1244($fp)
	lw $t0, -1236($fp)
	lw $t1, -1244($fp)
	add $t0, $t0, $t1
	sw $t0, -1248($fp)
	lw $t0, -1232($fp)
	lw $t1, -1248($fp)
	sw $t0, 0($t1)
	lw $t0, -1248($fp)
	lw $t1, 0($t0)
	sw $t1, -1252($fp)
	li $t0, 414
	sw $t0, -1256($fp)
	addi $t0, $fp, -128
	sw $t0, -1260($fp)
	li $t0, 6
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1268($fp)
	lw $t0, -1260($fp)
	lw $t1, -1268($fp)
	add $t0, $t0, $t1
	sw $t0, -1272($fp)
	lw $t0, -1256($fp)
	lw $t1, -1272($fp)
	sw $t0, 0($t1)
	lw $t0, -1272($fp)
	lw $t1, 0($t0)
	sw $t1, -1276($fp)
	li $t0, 59211
	sw $t0, -1280($fp)
	addi $t0, $fp, -128
	sw $t0, -1284($fp)
	li $t0, 7
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1292($fp)
	lw $t0, -1284($fp)
	lw $t1, -1292($fp)
	add $t0, $t0, $t1
	sw $t0, -1296($fp)
	lw $t0, -1280($fp)
	lw $t1, -1296($fp)
	sw $t0, 0($t1)
	lw $t0, -1296($fp)
	lw $t1, 0($t0)
	sw $t1, -1300($fp)
	li $t0, 28520
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	sw $t0, -1312($fp)
	li $t0, 14454
	sw $t0, -1316($fp)
	addi $t0, $fp, -160
	sw $t0, -1320($fp)
	li $t0, 0
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
	li $t0, 57497
	sw $t0, -1340($fp)
	addi $t0, $fp, -160
	sw $t0, -1344($fp)
	li $t0, 1
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
	li $t0, 1472
	sw $t0, -1364($fp)
	addi $t0, $fp, -160
	sw $t0, -1368($fp)
	li $t0, 2
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
	li $t0, 33202
	sw $t0, -1388($fp)
	addi $t0, $fp, -160
	sw $t0, -1392($fp)
	li $t0, 3
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
	li $t0, 52171
	sw $t0, -1412($fp)
	addi $t0, $fp, -160
	sw $t0, -1416($fp)
	li $t0, 4
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
	li $t0, 55546
	sw $t0, -1436($fp)
	addi $t0, $fp, -160
	sw $t0, -1440($fp)
	li $t0, 5
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1448($fp)
	lw $t0, -1440($fp)
	lw $t1, -1448($fp)
	add $t0, $t0, $t1
	sw $t0, -1452($fp)
	lw $t0, -1436($fp)
	lw $t1, -1452($fp)
	sw $t0, 0($t1)
	lw $t0, -1452($fp)
	lw $t1, 0($t0)
	sw $t1, -1456($fp)
	li $t0, 1534
	sw $t0, -1460($fp)
	addi $t0, $fp, -160
	sw $t0, -1464($fp)
	li $t0, 6
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1472($fp)
	lw $t0, -1464($fp)
	lw $t1, -1472($fp)
	add $t0, $t0, $t1
	sw $t0, -1476($fp)
	lw $t0, -1460($fp)
	lw $t1, -1476($fp)
	sw $t0, 0($t1)
	lw $t0, -1476($fp)
	lw $t1, 0($t0)
	sw $t1, -1480($fp)
	li $t0, 5506
	sw $t0, -1484($fp)
	addi $t0, $fp, -160
	sw $t0, -1488($fp)
	li $t0, 7
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1496($fp)
	lw $t0, -1488($fp)
	lw $t1, -1496($fp)
	add $t0, $t0, $t1
	sw $t0, -1500($fp)
	lw $t0, -1484($fp)
	lw $t1, -1500($fp)
	sw $t0, 0($t1)
	lw $t0, -1500($fp)
	lw $t1, 0($t0)
	sw $t1, -1504($fp)
	li $t0, 51338
	sw $t0, -1544($fp)
	addi $t0, $fp, -1536
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
	li $t0, 13875
	sw $t0, -1568($fp)
	addi $t0, $fp, -1536
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
	li $t0, 48875
	sw $t0, -1592($fp)
	addi $t0, $fp, -1536
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
	li $t0, 29912
	sw $t0, -1616($fp)
	addi $t0, $fp, -1536
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
	li $t0, 28269
	sw $t0, -1640($fp)
	addi $t0, $fp, -1536
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
	li $t0, 5603
	sw $t0, -1664($fp)
	addi $t0, $fp, -1536
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
	li $t0, 25386
	sw $t0, -1688($fp)
	addi $t0, $fp, -1536
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
	li $t0, 23142
	sw $t0, -1712($fp)
	addi $t0, $fp, -1536
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
	li $t0, 13894
	sw $t0, -1736($fp)
	addi $t0, $fp, -1540
	sw $t0, -1740($fp)
	li $t0, 0
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
	li $t0, 4766
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	sw $t0, -1768($fp)
	li $t0, 53263
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	sw $t0, -1780($fp)
	li $t0, 21709
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	sw $t0, -1792($fp)
	li $t0, 60049
	sw $t0, -1812($fp)
	addi $t0, $fp, -1808
	sw $t0, -1816($fp)
	li $t0, 0
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1824($fp)
	lw $t0, -1816($fp)
	lw $t1, -1824($fp)
	add $t0, $t0, $t1
	sw $t0, -1828($fp)
	lw $t0, -1812($fp)
	lw $t1, -1828($fp)
	sw $t0, 0($t1)
	lw $t0, -1828($fp)
	lw $t1, 0($t0)
	sw $t1, -1832($fp)
	li $t0, 32525
	sw $t0, -1836($fp)
	addi $t0, $fp, -1808
	sw $t0, -1840($fp)
	li $t0, 1
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1848($fp)
	lw $t0, -1840($fp)
	lw $t1, -1848($fp)
	add $t0, $t0, $t1
	sw $t0, -1852($fp)
	lw $t0, -1836($fp)
	lw $t1, -1852($fp)
	sw $t0, 0($t1)
	lw $t0, -1852($fp)
	lw $t1, 0($t0)
	sw $t1, -1856($fp)
	li $t0, 48470
	sw $t0, -1860($fp)
	addi $t0, $fp, -1808
	sw $t0, -1864($fp)
	li $t0, 2
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1872($fp)
	lw $t0, -1864($fp)
	lw $t1, -1872($fp)
	add $t0, $t0, $t1
	sw $t0, -1876($fp)
	lw $t0, -1860($fp)
	lw $t1, -1876($fp)
	sw $t0, 0($t1)
	lw $t0, -1876($fp)
	lw $t1, 0($t0)
	sw $t1, -1880($fp)
	li $t0, 50319
	sw $t0, -1884($fp)
	addi $t0, $fp, -1808
	sw $t0, -1888($fp)
	li $t0, 3
	sw $t0, -1892($fp)
	lw $t0, -1892($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1896($fp)
	lw $t0, -1888($fp)
	lw $t1, -1896($fp)
	add $t0, $t0, $t1
	sw $t0, -1900($fp)
	lw $t0, -1884($fp)
	lw $t1, -1900($fp)
	sw $t0, 0($t1)
	lw $t0, -1900($fp)
	lw $t1, 0($t0)
	sw $t1, -1904($fp)
	li $t0, 0
	sw $t0, -1908($fp)
	li $t0, 55710
	sw $t0, -1912($fp)
	addi $t0, $fp, -64
	sw $t0, -1916($fp)
	lw $t0, -828($fp)
	sw $t0, -1920($fp)
	li $t0, 4
	lw $t1, -1920($fp)
	mul $t0, $t0, $t1
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	lw $t1, -1916($fp)
	add $t0, $t0, $t1
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	lw $t1, 0($t0)
	sw $t1, -1932($fp)
	lw $t1, -1912($fp)
	lw $t2, -1932($fp)
	bge $t1, $t2, label784
	j label783
label784:
	addi $t0, $fp, -1808
	sw $t0, -1936($fp)
	lw $t0, -852($fp)
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
	lw $t1, -1952($fp)
	li $t2, 0
	bne $t1, $t2, label782
	j label783
label782:
	li $t0, 1
	sw $t0, -1908($fp)
label783:
	addi $t0, $fp, -32
	sw $t0, -1956($fp)
	li $t0, 0
	sw $t0, -1960($fp)
	lw $t0, -1044($fp)
	sw $t0, -1964($fp)
	li $t0, 38354
	sw $t0, -1968($fp)
	lw $t1, -1964($fp)
	lw $t2, -1968($fp)
	bne $t1, $t2, label785
	j label786
label785:
	li $t0, 1
	sw $t0, -1960($fp)
label786:
	li $t0, 4
	lw $t1, -1960($fp)
	mul $t0, $t0, $t1
	sw $t0, -1972($fp)
	lw $t0, -1972($fp)
	lw $t1, -1956($fp)
	add $t0, $t0, $t1
	sw $t0, -1976($fp)
	lw $t0, -1976($fp)
	lw $t1, 0($t0)
	sw $t1, -1980($fp)
	lw $ra, -4($fp)
	lw $v0, -1980($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -516($fp)
	sw $t0, -1984($fp)
	li $t0, 0
	lw $t1, -1984($fp)
	sub $t0, $t0, $t1
	sw $t0, -1988($fp)
	lw $t0, -480($fp)
	sw $t0, -1992($fp)
	li $t0, 29414
	sw $t0, -1996($fp)
	lw $t0, -1992($fp)
	lw $t1, -1996($fp)
	mul $t0, $t0, $t1
	sw $t0, -2000($fp)
	li $t0, 0
	lw $t1, -2000($fp)
	sub $t0, $t0, $t1
	sw $t0, -2004($fp)
	lw $t0, -1988($fp)
	lw $t1, -2004($fp)
	sub $t0, $t0, $t1
	sw $t0, -2008($fp)
	lw $t0, -1764($fp)
	sw $t0, -2012($fp)
	lw $t0, -2008($fp)
	lw $t1, -2012($fp)
	add $t0, $t0, $t1
	sw $t0, -2016($fp)
label787:
	li $t0, 0
	sw $t0, -2020($fp)
	li $t0, 64672
	sw $t0, -2024($fp)
	lw $t0, -948($fp)
	sw $t0, -2028($fp)
	lw $t0, -2024($fp)
	lw $t1, -2028($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2032($fp)
	li $t0, 38768
	sw $t0, -2036($fp)
	lw $t1, -2032($fp)
	lw $t2, -2036($fp)
	bgt $t1, $t2, label790
	j label791
label790:
	li $t0, 1
	sw $t0, -2020($fp)
label791:
	lw $t0, -1104($fp)
	sw $t0, -2040($fp)
	li $t0, 0
	lw $t1, -2040($fp)
	sub $t0, $t0, $t1
	sw $t0, -2044($fp)
	li $t0, 23089
	sw $t0, -2048($fp)
	li $t0, 0
	lw $t1, -2048($fp)
	sub $t0, $t0, $t1
	sw $t0, -2052($fp)
	lw $t0, -2044($fp)
	lw $t1, -2052($fp)
	add $t0, $t0, $t1
	sw $t0, -2056($fp)
	lw $t1, -2020($fp)
	lw $t2, -2056($fp)
	bne $t1, $t2, label788
	j label789
label788:
	addi $t0, $fp, -84
	sw $t0, -2060($fp)
	li $t0, 0
	sw $t0, -2064($fp)
	li $t0, 27656
	sw $t0, -2068($fp)
	li $t0, 53222
	sw $t0, -2072($fp)
	lw $t1, -2068($fp)
	lw $t2, -2072($fp)
	beq $t1, $t2, label795
	j label796
label795:
	li $t0, 1
	sw $t0, -2064($fp)
label796:
	li $t0, 4
	lw $t1, -2064($fp)
	mul $t0, $t0, $t1
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	lw $t1, -2060($fp)
	add $t0, $t0, $t1
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	lw $t1, 0($t0)
	sw $t1, -2084($fp)
	li $t0, 0
	lw $t1, -2084($fp)
	sub $t0, $t0, $t1
	sw $t0, -2088($fp)
	lw $t0, -1032($fp)
	sw $t0, -2092($fp)
	lw $t0, -1092($fp)
	sw $t0, -2096($fp)
	li $t0, 0
	lw $t1, -2096($fp)
	sub $t0, $t0, $t1
	sw $t0, -2100($fp)
	lw $t0, -2092($fp)
	lw $t1, -2100($fp)
	mul $t0, $t0, $t1
	sw $t0, -2104($fp)
	lw $t1, -2088($fp)
	lw $t2, -2104($fp)
	beq $t1, $t2, label792
	j label793
label792:
	li $t0, 0
	sw $t0, -2108($fp)
	lw $t0, -504($fp)
	sw $t0, -2112($fp)
	lw $t0, -1776($fp)
	sw $t0, -2116($fp)
	li $t0, 0
	lw $t1, -2116($fp)
	sub $t0, $t0, $t1
	sw $t0, -2120($fp)
	lw $t0, -2112($fp)
	lw $t1, -2120($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2124($fp)
	addi $t0, $fp, -64
	sw $t0, -2128($fp)
	li $t0, 0
	sw $t0, -2132($fp)
	li $t0, 15050
	sw $t0, -2136($fp)
	lw $t0, -456($fp)
	sw $t0, -2140($fp)
	lw $t1, -2136($fp)
	lw $t2, -2140($fp)
	blt $t1, $t2, label799
	j label800
label799:
	li $t0, 1
	sw $t0, -2132($fp)
label800:
	li $t0, 4
	lw $t1, -2132($fp)
	mul $t0, $t0, $t1
	sw $t0, -2144($fp)
	lw $t0, -2144($fp)
	lw $t1, -2128($fp)
	add $t0, $t0, $t1
	sw $t0, -2148($fp)
	lw $t0, -2148($fp)
	lw $t1, 0($t0)
	sw $t1, -2152($fp)
	lw $t1, -2124($fp)
	lw $t2, -2152($fp)
	beq $t1, $t2, label797
	j label798
label797:
	li $t0, 1
	sw $t0, -2108($fp)
label798:
	lw $ra, -4($fp)
	lw $v0, -2108($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label794
label793:
	li $t0, 29128
	sw $t0, -2156($fp)
	lw $t0, -2156($fp)
	sw $t0, -2160($fp)
	lw $t0, -2160($fp)
	sw $t0, -2164($fp)
	li $t0, 0
	sw $t0, -2168($fp)
	li $t0, 0
	sw $t0, -2172($fp)
	li $t0, 0
	sw $t0, -2176($fp)
	lw $t0, -1308($fp)
	sw $t0, -2180($fp)
	lw $t1, -2180($fp)
	li $t2, 0
	bne $t1, $t2, label806
	j label805
label805:
	li $t0, 1
	sw $t0, -2176($fp)
label806:
	li $t0, 0
	sw $t0, -2184($fp)
	li $t0, 20888
	sw $t0, -2188($fp)
	lw $t1, -2188($fp)
	li $t2, 0
	bne $t1, $t2, label808
	j label807
label807:
	li $t0, 1
	sw $t0, -2184($fp)
label808:
	lw $t1, -2176($fp)
	lw $t2, -2184($fp)
	bge $t1, $t2, label803
	j label804
label803:
	li $t0, 1
	sw $t0, -2172($fp)
label804:
	addi $t0, $fp, -64
	sw $t0, -2192($fp)
	lw $t0, -1104($fp)
	sw $t0, -2196($fp)
	li $t0, 4
	lw $t1, -2196($fp)
	mul $t0, $t0, $t1
	sw $t0, -2200($fp)
	lw $t0, -2200($fp)
	lw $t1, -2192($fp)
	add $t0, $t0, $t1
	sw $t0, -2204($fp)
	lw $t0, -2204($fp)
	lw $t1, 0($t0)
	sw $t1, -2208($fp)
	li $t0, 0
	lw $t1, -2208($fp)
	sub $t0, $t0, $t1
	sw $t0, -2212($fp)
	lw $t1, -2172($fp)
	lw $t2, -2212($fp)
	beq $t1, $t2, label801
	j label802
label801:
	li $t0, 1
	sw $t0, -2168($fp)
label802:
	addi $t0, $fp, -32
	sw $t0, -2216($fp)
	lw $t0, -2160($fp)
	sw $t0, -2220($fp)
	lw $t0, -852($fp)
	sw $t0, -2224($fp)
	lw $t0, -2220($fp)
	lw $t1, -2224($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2228($fp)
	li $t0, 4
	lw $t1, -2228($fp)
	mul $t0, $t0, $t1
	sw $t0, -2232($fp)
	lw $t0, -2232($fp)
	lw $t1, -2216($fp)
	add $t0, $t0, $t1
	sw $t0, -2236($fp)
	lw $t0, -2236($fp)
	lw $t1, 0($t0)
	sw $t1, -2240($fp)
	li $t0, 0
	lw $t1, -2240($fp)
	sub $t0, $t0, $t1
	sw $t0, -2244($fp)
	addi $t0, $fp, -1540
	sw $t0, -2248($fp)
	lw $t0, -492($fp)
	sw $t0, -2252($fp)
	li $t0, 4
	lw $t1, -2252($fp)
	mul $t0, $t0, $t1
	sw $t0, -2256($fp)
	lw $t0, -2256($fp)
	lw $t1, -2248($fp)
	add $t0, $t0, $t1
	sw $t0, -2260($fp)
	lw $t0, -2260($fp)
	lw $t1, 0($t0)
	sw $t1, -2264($fp)
	li $t0, 1685
	sw $t0, -2268($fp)
	li $t0, 0
	lw $t1, -2268($fp)
	sub $t0, $t0, $t1
	sw $t0, -2272($fp)
	lw $t0, -2264($fp)
	lw $t1, -2272($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2276($fp)
	li $t0, 0
	lw $t1, -2276($fp)
	sub $t0, $t0, $t1
	sw $t0, -2280($fp)
	lw $t0, -2244($fp)
	lw $t1, -2280($fp)
	add $t0, $t0, $t1
	sw $t0, -2284($fp)
	li $t0, 0
	sw $t0, -2288($fp)
	li $t0, 19138
	sw $t0, -2292($fp)
	li $t0, 22423
	sw $t0, -2296($fp)
	lw $t0, -468($fp)
	sw $t0, -2300($fp)
	lw $t0, -2296($fp)
	lw $t1, -2300($fp)
	mul $t0, $t0, $t1
	sw $t0, -2304($fp)
	li $t0, 0
	lw $t1, -2304($fp)
	sub $t0, $t0, $t1
	sw $t0, -2308($fp)
	lw $t0, -2292($fp)
	lw $t1, -2308($fp)
	add $t0, $t0, $t1
	sw $t0, -2312($fp)
	li $t0, 7192
	sw $t0, -2316($fp)
	lw $t0, -1308($fp)
	sw $t0, -2320($fp)
	addi $sp, $sp, -4
	lw $t0, -2320($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -2324($fp)
	addi $sp, $sp, 8
	lw $t0, -2316($fp)
	lw $t1, -2324($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2328($fp)
	lw $t1, -2312($fp)
	lw $t2, -2328($fp)
	ble $t1, $t2, label809
	j label810
label809:
	li $t0, 1
	sw $t0, -2288($fp)
label810:
label794:
	j label787
label789:
	addi $t0, $fp, -1536
	sw $t0, -2332($fp)
	li $t0, 0
	sw $t0, -2336($fp)
	li $t0, 4941
	sw $t0, -2340($fp)
	lw $t1, -2340($fp)
	li $t2, 0
	bne $t1, $t2, label816
	j label815
label816:
	li $t0, 36298
	sw $t0, -2344($fp)
	lw $t1, -2344($fp)
	li $t2, 0
	bne $t1, $t2, label814
	j label815
label814:
	li $t0, 1
	sw $t0, -2336($fp)
label815:
	lw $t0, -2336($fp)
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	sw $t0, -2348($fp)
	li $t0, 4
	lw $t1, -2348($fp)
	mul $t0, $t0, $t1
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	lw $t1, -2332($fp)
	add $t0, $t0, $t1
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	lw $t1, 0($t0)
	sw $t1, -2360($fp)
	lw $t1, -2360($fp)
	li $t2, 0
	bne $t1, $t2, label811
	j label812
label811:
	li $t0, 56067
	sw $t0, -2376($fp)
	addi $t0, $fp, -2372
	sw $t0, -2380($fp)
	li $t0, 0
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2388($fp)
	lw $t0, -2380($fp)
	lw $t1, -2388($fp)
	add $t0, $t0, $t1
	sw $t0, -2392($fp)
	lw $t0, -2376($fp)
	lw $t1, -2392($fp)
	sw $t0, 0($t1)
	lw $t0, -2392($fp)
	lw $t1, 0($t0)
	sw $t1, -2396($fp)
	li $t0, 34853
	sw $t0, -2400($fp)
	addi $t0, $fp, -2372
	sw $t0, -2404($fp)
	li $t0, 1
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2412($fp)
	lw $t0, -2404($fp)
	lw $t1, -2412($fp)
	add $t0, $t0, $t1
	sw $t0, -2416($fp)
	lw $t0, -2400($fp)
	lw $t1, -2416($fp)
	sw $t0, 0($t1)
	lw $t0, -2416($fp)
	lw $t1, 0($t0)
	sw $t1, -2420($fp)
	li $t0, 64567
	sw $t0, -2424($fp)
	addi $t0, $fp, -2372
	sw $t0, -2428($fp)
	li $t0, 2
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2436($fp)
	lw $t0, -2428($fp)
	lw $t1, -2436($fp)
	add $t0, $t0, $t1
	sw $t0, -2440($fp)
	lw $t0, -2424($fp)
	lw $t1, -2440($fp)
	sw $t0, 0($t1)
	lw $t0, -2440($fp)
	lw $t1, 0($t0)
	sw $t1, -2444($fp)
	li $t0, 0
	sw $t0, -2448($fp)
	li $t0, 0
	sw $t0, -2452($fp)
	li $t0, 0
	sw $t0, -2456($fp)
	li $t0, 61671
	sw $t0, -2460($fp)
	li $t0, 60240
	sw $t0, -2464($fp)
	lw $t1, -2460($fp)
	lw $t2, -2464($fp)
	bgt $t1, $t2, label824
	j label825
label824:
	li $t0, 1
	sw $t0, -2456($fp)
label825:
	li $t0, 22174
	sw $t0, -2468($fp)
	lw $t0, -1008($fp)
	sw $t0, -2472($fp)
	lw $t0, -2468($fp)
	lw $t1, -2472($fp)
	mul $t0, $t0, $t1
	sw $t0, -2476($fp)
	lw $t1, -2456($fp)
	lw $t2, -2476($fp)
	blt $t1, $t2, label822
	j label823
label822:
	li $t0, 1
	sw $t0, -2452($fp)
label823:
	lw $t0, -1080($fp)
	sw $t0, -2480($fp)
	li $t0, 0
	sw $t0, -2484($fp)
	jal f9
	sw $v0, -2488($fp)
	addi $sp, $sp, 4
	lw $t1, -2488($fp)
	li $t2, 0
	bne $t1, $t2, label827
	j label826
label826:
	li $t0, 1
	sw $t0, -2484($fp)
label827:
	addi $sp, $sp, -4
	lw $t0, -2480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2484($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2492($fp)
	addi $sp, $sp, 12
	lw $t1, -2452($fp)
	lw $t2, -2492($fp)
	ble $t1, $t2, label820
	j label821
label820:
	li $t0, 1
	sw $t0, -2448($fp)
label821:
	li $t0, 0
	sw $t0, -2496($fp)
	lw $t0, -492($fp)
	sw $t0, -2500($fp)
	li $t0, 42426
	sw $t0, -2504($fp)
	lw $t0, -2500($fp)
	lw $t1, -2504($fp)
	mul $t0, $t0, $t1
	sw $t0, -2508($fp)
	li $t0, 0
	lw $t1, -2508($fp)
	sub $t0, $t0, $t1
	sw $t0, -2512($fp)
	li $t0, 0
	sw $t0, -2516($fp)
	li $t0, 9901
	sw $t0, -2520($fp)
	li $t0, 31738
	sw $t0, -2524($fp)
	lw $t0, -2520($fp)
	lw $t1, -2524($fp)
	sub $t0, $t0, $t1
	sw $t0, -2528($fp)
	lw $t1, -2528($fp)
	li $t2, 0
	bne $t1, $t2, label832
	j label831
label832:
	li $t0, 59519
	sw $t0, -2532($fp)
	lw $t1, -2532($fp)
	li $t2, 0
	bne $t1, $t2, label830
	j label831
label830:
	li $t0, 1
	sw $t0, -2516($fp)
label831:
	li $t0, 0
	sw $t0, -2536($fp)
	li $t0, 0
	sw $t0, -2540($fp)
	li $t0, 10029
	sw $t0, -2544($fp)
	li $t0, 65006
	sw $t0, -2548($fp)
	lw $t1, -2544($fp)
	lw $t2, -2548($fp)
	blt $t1, $t2, label835
	j label836
label835:
	li $t0, 1
	sw $t0, -2540($fp)
label836:
	lw $t0, -492($fp)
	sw $t0, -2552($fp)
	lw $t1, -2540($fp)
	lw $t2, -2552($fp)
	beq $t1, $t2, label833
	j label834
label833:
	li $t0, 1
	sw $t0, -2536($fp)
label834:
	addi $sp, $sp, -4
	lw $t0, -2512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2536($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -2556($fp)
	addi $sp, $sp, 16
	lw $t1, -2556($fp)
	li $t2, 0
	bne $t1, $t2, label829
	j label828
label828:
	li $t0, 1
	sw $t0, -2496($fp)
label829:
	lw $t1, -2448($fp)
	lw $t2, -2496($fp)
	bne $t1, $t2, label817
	j label818
label817:
	li $t0, 0
	sw $t0, -2560($fp)
	lw $t0, -1092($fp)
	sw $t0, -2564($fp)
	lw $t1, -2564($fp)
	li $t2, 0
	bne $t1, $t2, label837
	j label839
label839:
	addi $t0, $fp, -1540
	sw $t0, -2568($fp)
	lw $t0, -804($fp)
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
	li $t0, 14673
	sw $t0, -2588($fp)
	lw $t0, -2584($fp)
	lw $t1, -2588($fp)
	add $t0, $t0, $t1
	sw $t0, -2592($fp)
	li $t0, 44303
	sw $t0, -2596($fp)
	li $t0, 0
	lw $t1, -2596($fp)
	sub $t0, $t0, $t1
	sw $t0, -2600($fp)
	lw $t0, -2592($fp)
	lw $t1, -2600($fp)
	add $t0, $t0, $t1
	sw $t0, -2604($fp)
	lw $t1, -2604($fp)
	li $t2, 0
	bne $t1, $t2, label837
	j label838
label837:
	li $t0, 1
	sw $t0, -2560($fp)
label838:
	lw $ra, -4($fp)
	lw $v0, -2560($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label819
label818:
	li $t0, 0
	sw $t0, -2608($fp)
	addi $t0, $fp, -2372
	sw $t0, -2612($fp)
	lw $t0, -1092($fp)
	sw $t0, -2616($fp)
	li $t0, 4
	lw $t1, -2616($fp)
	mul $t0, $t0, $t1
	sw $t0, -2620($fp)
	lw $t0, -2620($fp)
	lw $t1, -2612($fp)
	add $t0, $t0, $t1
	sw $t0, -2624($fp)
	lw $t0, -2624($fp)
	lw $t1, 0($t0)
	sw $t1, -2628($fp)
	lw $t1, -2628($fp)
	li $t2, 0
	bne $t1, $t2, label841
	j label840
label840:
	li $t0, 1
	sw $t0, -2608($fp)
label841:
	lw $ra, -4($fp)
	lw $v0, -2608($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label819:
label842:
	li $t0, 32601
	sw $t0, -2632($fp)
	lw $t1, -2632($fp)
	li $t2, 0
	bne $t1, $t2, label843
	j label844
label843:
	li $t0, 53027
	sw $t0, -2636($fp)
	lw $t0, -2636($fp)
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	sw $t0, -2640($fp)
	j label842
label844:
	j label813
label812:
label845:
	li $t0, 8181
	sw $t0, -2644($fp)
	li $t0, 0
	lw $t1, -2644($fp)
	sub $t0, $t0, $t1
	sw $t0, -2648($fp)
	addi $t0, $fp, -32
	sw $t0, -2652($fp)
	lw $t0, -1092($fp)
	sw $t0, -2656($fp)
	li $t0, 4
	lw $t1, -2656($fp)
	mul $t0, $t0, $t1
	sw $t0, -2660($fp)
	lw $t0, -2660($fp)
	lw $t1, -2652($fp)
	add $t0, $t0, $t1
	sw $t0, -2664($fp)
	lw $t0, -2664($fp)
	lw $t1, 0($t0)
	sw $t1, -2668($fp)
	addi $sp, $sp, -4
	lw $t0, -2648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2668($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2672($fp)
	addi $sp, $sp, 12
	lw $t1, -2672($fp)
	li $t2, 0
	bne $t1, $t2, label847
	j label846
label846:
	li $t0, 0
	sw $t0, -2676($fp)
	li $t0, 31737
	sw $t0, -2680($fp)
	lw $t1, -2680($fp)
	li $t2, 0
	bne $t1, $t2, label849
	j label848
label848:
	li $t0, 1
	sw $t0, -2676($fp)
label849:
	li $t0, 0
	sw $t0, -2684($fp)
	lw $t0, -1056($fp)
	sw $t0, -2688($fp)
	li $t0, 26260
	sw $t0, -2692($fp)
	lw $t0, -2688($fp)
	lw $t1, -2692($fp)
	mul $t0, $t0, $t1
	sw $t0, -2696($fp)
	li $t0, 0
	sw $t0, -2700($fp)
	li $t0, 31271
	sw $t0, -2704($fp)
	lw $t1, -2704($fp)
	li $t2, 0
	bne $t1, $t2, label854
	j label853
label853:
	li $t0, 1
	sw $t0, -2700($fp)
label854:
	lw $t1, -2696($fp)
	lw $t2, -2700($fp)
	bne $t1, $t2, label852
	j label851
label852:
	lw $t0, -984($fp)
	sw $t0, -2708($fp)
	lw $t1, -2708($fp)
	li $t2, 0
	bne $t1, $t2, label850
	j label851
label850:
	li $t0, 1
	sw $t0, -2684($fp)
label851:
	li $t0, 0
	sw $t0, -2712($fp)
	li $t0, 0
	sw $t0, -2716($fp)
	li $t0, 46321
	sw $t0, -2720($fp)
	lw $t0, -1020($fp)
	sw $t0, -2724($fp)
	lw $t1, -2720($fp)
	lw $t2, -2724($fp)
	bne $t1, $t2, label857
	j label858
label857:
	li $t0, 1
	sw $t0, -2716($fp)
label858:
	lw $t0, -1788($fp)
	sw $t0, -2728($fp)
	lw $t1, -2716($fp)
	lw $t2, -2728($fp)
	bne $t1, $t2, label855
	j label856
label855:
	li $t0, 1
	sw $t0, -2712($fp)
label856:
	addi $t0, $fp, -1536
	sw $t0, -2732($fp)
	lw $t0, -972($fp)
	sw $t0, -2736($fp)
	li $t0, 4
	lw $t1, -2736($fp)
	mul $t0, $t0, $t1
	sw $t0, -2740($fp)
	lw $t0, -2740($fp)
	lw $t1, -2732($fp)
	add $t0, $t0, $t1
	sw $t0, -2744($fp)
	lw $t0, -2744($fp)
	lw $t1, 0($t0)
	sw $t1, -2748($fp)
	li $t0, 0
	sw $t0, -2752($fp)
	li $t0, 59394
	sw $t0, -2756($fp)
	lw $t1, -2756($fp)
	li $t2, 0
	bne $t1, $t2, label860
	j label861
label861:
	li $t0, 13946
	sw $t0, -2760($fp)
	lw $t1, -2760($fp)
	li $t2, 0
	bne $t1, $t2, label859
	j label860
label859:
	li $t0, 1
	sw $t0, -2752($fp)
label860:
	addi $sp, $sp, -4
	lw $t0, -2712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2752($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2764($fp)
	addi $sp, $sp, 16
	lw $t0, -780($fp)
	sw $t0, -2768($fp)
	lw $t0, -2764($fp)
	lw $t1, -2768($fp)
	mul $t0, $t0, $t1
	sw $t0, -2772($fp)
	j label845
label847:
label813:
	li $t0, 22986
	sw $t0, -2776($fp)
	lw $t0, -768($fp)
	sw $t0, -2780($fp)
	lw $t0, -2776($fp)
	lw $t1, -2780($fp)
	mul $t0, $t0, $t1
	sw $t0, -2784($fp)
	li $t0, 0
	lw $t1, -2784($fp)
	sub $t0, $t0, $t1
	sw $t0, -2788($fp)
	lw $t1, -2788($fp)
	li $t2, 0
	bne $t1, $t2, label862
	j label863
label862:
	li $t0, 34835
	sw $t0, -2812($fp)
	addi $t0, $fp, -2808
	sw $t0, -2816($fp)
	li $t0, 0
	sw $t0, -2820($fp)
	lw $t0, -2820($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2824($fp)
	lw $t0, -2816($fp)
	lw $t1, -2824($fp)
	add $t0, $t0, $t1
	sw $t0, -2828($fp)
	lw $t0, -2812($fp)
	lw $t1, -2828($fp)
	sw $t0, 0($t1)
	lw $t0, -2828($fp)
	lw $t1, 0($t0)
	sw $t1, -2832($fp)
	li $t0, 48007
	sw $t0, -2836($fp)
	addi $t0, $fp, -2808
	sw $t0, -2840($fp)
	li $t0, 1
	sw $t0, -2844($fp)
	lw $t0, -2844($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2848($fp)
	lw $t0, -2840($fp)
	lw $t1, -2848($fp)
	add $t0, $t0, $t1
	sw $t0, -2852($fp)
	lw $t0, -2836($fp)
	lw $t1, -2852($fp)
	sw $t0, 0($t1)
	lw $t0, -2852($fp)
	lw $t1, 0($t0)
	sw $t1, -2856($fp)
	li $t0, 42125
	sw $t0, -2860($fp)
	addi $t0, $fp, -2808
	sw $t0, -2864($fp)
	li $t0, 2
	sw $t0, -2868($fp)
	lw $t0, -2868($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2872($fp)
	lw $t0, -2864($fp)
	lw $t1, -2872($fp)
	add $t0, $t0, $t1
	sw $t0, -2876($fp)
	lw $t0, -2860($fp)
	lw $t1, -2876($fp)
	sw $t0, 0($t1)
	lw $t0, -2876($fp)
	lw $t1, 0($t0)
	sw $t1, -2880($fp)
	li $t0, 57258
	sw $t0, -2884($fp)
	addi $t0, $fp, -2808
	sw $t0, -2888($fp)
	li $t0, 3
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
	li $t0, 55199
	sw $t0, -2908($fp)
	addi $t0, $fp, -2808
	sw $t0, -2912($fp)
	li $t0, 4
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
	li $t0, 47066
	sw $t0, -2932($fp)
	lw $t0, -2932($fp)
	sw $t0, -2936($fp)
	lw $t0, -2936($fp)
	sw $t0, -2940($fp)
	li $t0, 28020
	sw $t0, -2944($fp)
	lw $t0, -2944($fp)
	sw $t0, -2948($fp)
	lw $t0, -2948($fp)
	sw $t0, -2952($fp)
	li $t0, 0
	sw $t0, -2956($fp)
	li $t0, 0
	sw $t0, -2960($fp)
	addi $t0, $fp, -2808
	sw $t0, -2964($fp)
	lw $t0, -1044($fp)
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
	li $t0, 3546
	sw $t0, -2984($fp)
	lw $t0, -2980($fp)
	lw $t1, -2984($fp)
	sub $t0, $t0, $t1
	sw $t0, -2988($fp)
	li $t0, 0
	sw $t0, -2992($fp)
	li $t0, 22761
	sw $t0, -2996($fp)
	lw $t1, -2996($fp)
	li $t2, 0
	bne $t1, $t2, label872
	j label871
label872:
	lw $t0, -492($fp)
	sw $t0, -3000($fp)
	lw $t1, -3000($fp)
	li $t2, 0
	bne $t1, $t2, label869
	j label871
label871:
	li $t0, 28678
	sw $t0, -3004($fp)
	lw $t1, -3004($fp)
	li $t2, 0
	bne $t1, $t2, label869
	j label870
label869:
	li $t0, 1
	sw $t0, -2992($fp)
label870:
	li $t0, 0
	sw $t0, -3008($fp)
	lw $t0, -732($fp)
	sw $t0, -3012($fp)
	li $t0, 34820
	sw $t0, -3016($fp)
	lw $t0, -3012($fp)
	lw $t1, -3016($fp)
	mul $t0, $t0, $t1
	sw $t0, -3020($fp)
	li $t0, 46521
	sw $t0, -3024($fp)
	lw $t1, -3020($fp)
	lw $t2, -3024($fp)
	beq $t1, $t2, label873
	j label874
label873:
	li $t0, 1
	sw $t0, -3008($fp)
label874:
	lw $t0, -1080($fp)
	sw $t0, -3028($fp)
	li $t0, 0
	sw $t0, -3032($fp)
	li $t0, 20261
	sw $t0, -3036($fp)
	lw $t1, -3036($fp)
	li $t2, 0
	bne $t1, $t2, label875
	j label878
label878:
	li $t0, 57026
	sw $t0, -3040($fp)
	lw $t1, -3040($fp)
	li $t2, 0
	bne $t1, $t2, label875
	j label877
label877:
	lw $t0, -1068($fp)
	sw $t0, -3044($fp)
	lw $t1, -3044($fp)
	li $t2, 0
	bne $t1, $t2, label875
	j label876
label875:
	li $t0, 1
	sw $t0, -3032($fp)
label876:
	addi $sp, $sp, -4
	lw $t0, -2992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3032($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -3048($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -3052($fp)
	addi $t0, $fp, -160
	sw $t0, -3056($fp)
	li $t0, 2
	sw $t0, -3060($fp)
	li $t0, 4
	lw $t1, -3060($fp)
	mul $t0, $t0, $t1
	sw $t0, -3064($fp)
	lw $t0, -3064($fp)
	lw $t1, -3056($fp)
	add $t0, $t0, $t1
	sw $t0, -3068($fp)
	lw $t0, -3068($fp)
	lw $t1, 0($t0)
	sw $t1, -3072($fp)
	lw $t0, -2948($fp)
	sw $t0, -3076($fp)
	lw $t1, -3072($fp)
	lw $t2, -3076($fp)
	bne $t1, $t2, label879
	j label880
label879:
	li $t0, 1
	sw $t0, -3052($fp)
label880:
	addi $t0, $fp, -32
	sw $t0, -3080($fp)
	li $t0, 4
	sw $t0, -3084($fp)
	li $t0, 4
	lw $t1, -3084($fp)
	mul $t0, $t0, $t1
	sw $t0, -3088($fp)
	lw $t0, -3088($fp)
	lw $t1, -3080($fp)
	add $t0, $t0, $t1
	sw $t0, -3092($fp)
	lw $t0, -3092($fp)
	lw $t1, 0($t0)
	sw $t1, -3096($fp)
	li $t0, 0
	sw $t0, -3100($fp)
	li $t0, 59127
	sw $t0, -3104($fp)
	lw $t1, -3104($fp)
	li $t2, 0
	bne $t1, $t2, label884
	j label882
label884:
	li $t0, 18097
	sw $t0, -3108($fp)
	lw $t1, -3108($fp)
	li $t2, 0
	bne $t1, $t2, label883
	j label882
label883:
	li $t0, 4541
	sw $t0, -3112($fp)
	lw $t1, -3112($fp)
	li $t2, 0
	bne $t1, $t2, label881
	j label882
label881:
	li $t0, 1
	sw $t0, -3100($fp)
label882:
	addi $sp, $sp, -4
	lw $t0, -3052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3100($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3116($fp)
	addi $sp, $sp, 16
	li $t0, 10558
	sw $t0, -3120($fp)
	li $t0, 0
	lw $t1, -3120($fp)
	sub $t0, $t0, $t1
	sw $t0, -3124($fp)
	addi $sp, $sp, -4
	lw $t0, -3048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3124($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3128($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -84
	sw $t0, -3132($fp)
	lw $t0, -732($fp)
	sw $t0, -3136($fp)
	li $t0, 4
	lw $t1, -3136($fp)
	mul $t0, $t0, $t1
	sw $t0, -3140($fp)
	lw $t0, -3140($fp)
	lw $t1, -3132($fp)
	add $t0, $t0, $t1
	sw $t0, -3144($fp)
	lw $t0, -3144($fp)
	lw $t1, 0($t0)
	sw $t1, -3148($fp)
	li $t0, 0
	lw $t1, -3148($fp)
	sub $t0, $t0, $t1
	sw $t0, -3152($fp)
	li $t0, 0
	sw $t0, -3156($fp)
	li $t0, 0
	sw $t0, -3160($fp)
	li $t0, 49226
	sw $t0, -3164($fp)
	li $t0, 51894
	sw $t0, -3168($fp)
	lw $t1, -3164($fp)
	lw $t2, -3168($fp)
	bge $t1, $t2, label887
	j label888
label887:
	li $t0, 1
	sw $t0, -3160($fp)
label888:
	lw $t0, -2936($fp)
	sw $t0, -3172($fp)
	lw $t1, -3160($fp)
	lw $t2, -3172($fp)
	beq $t1, $t2, label885
	j label886
label885:
	li $t0, 1
	sw $t0, -3156($fp)
label886:
	li $t0, 0
	sw $t0, -3176($fp)
	li $t0, 27052
	sw $t0, -3180($fp)
	li $t0, 41865
	sw $t0, -3184($fp)
	lw $t1, -3180($fp)
	lw $t2, -3184($fp)
	blt $t1, $t2, label889
	j label891
label891:
	li $t0, 11087
	sw $t0, -3188($fp)
	lw $t1, -3188($fp)
	li $t2, 0
	bne $t1, $t2, label889
	j label890
label889:
	li $t0, 1
	sw $t0, -3176($fp)
label890:
	addi $sp, $sp, -4
	lw $t0, -3128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3176($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -3192($fp)
	addi $sp, $sp, 20
	li $t0, 60468
	sw $t0, -3196($fp)
	lw $t0, -3192($fp)
	lw $t1, -3196($fp)
	mul $t0, $t0, $t1
	sw $t0, -3200($fp)
	li $t0, 0
	sw $t0, -3204($fp)
	li $t0, 45730
	sw $t0, -3208($fp)
	lw $t0, -492($fp)
	sw $t0, -3212($fp)
	lw $t0, -3208($fp)
	lw $t1, -3212($fp)
	add $t0, $t0, $t1
	sw $t0, -3216($fp)
	li $t0, 16383
	sw $t0, -3220($fp)
	lw $t1, -3216($fp)
	lw $t2, -3220($fp)
	blt $t1, $t2, label892
	j label893
label892:
	li $t0, 1
	sw $t0, -3204($fp)
label893:
	addi $sp, $sp, -4
	lw $t0, -2988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3204($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3224($fp)
	addi $sp, $sp, 16
	lw $t1, -3224($fp)
	li $t2, 0
	bne $t1, $t2, label867
	j label868
label867:
	li $t0, 1
	sw $t0, -2960($fp)
label868:
	li $t0, 0
	sw $t0, -3228($fp)
	lw $t0, -1764($fp)
	sw $t0, -3232($fp)
	lw $t1, -3232($fp)
	li $t2, 0
	bne $t1, $t2, label895
	j label894
label894:
	li $t0, 1
	sw $t0, -3228($fp)
label895:
	li $t0, 0
	lw $t1, -3228($fp)
	sub $t0, $t0, $t1
	sw $t0, -3236($fp)
	lw $t0, -2960($fp)
	lw $t1, -3236($fp)
	add $t0, $t0, $t1
	sw $t0, -3240($fp)
	li $t0, 51664
	sw $t0, -3244($fp)
	li $t0, 0
	lw $t1, -3244($fp)
	sub $t0, $t0, $t1
	sw $t0, -3248($fp)
	li $t0, 0
	lw $t1, -3248($fp)
	sub $t0, $t0, $t1
	sw $t0, -3252($fp)
	li $t0, 0
	lw $t1, -3252($fp)
	sub $t0, $t0, $t1
	sw $t0, -3256($fp)
	lw $t1, -3240($fp)
	lw $t2, -3256($fp)
	beq $t1, $t2, label865
	j label866
label865:
	li $t0, 1
	sw $t0, -2956($fp)
label866:
	li $t0, 0
	sw $t0, -3260($fp)
	li $t0, 29767
	sw $t0, -3264($fp)
	lw $t1, -3264($fp)
	li $t2, 0
	bne $t1, $t2, label896
	j label898
label898:
	addi $t0, $fp, -2808
	sw $t0, -3268($fp)
	lw $t0, -1788($fp)
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
	li $t0, 0
	lw $t1, -3284($fp)
	sub $t0, $t0, $t1
	sw $t0, -3288($fp)
	lw $t1, -3288($fp)
	li $t2, 0
	bne $t1, $t2, label897
	j label896
label896:
	li $t0, 1
	sw $t0, -3260($fp)
label897:
	j label864
label863:
	li $t0, 0
	sw $t0, -3292($fp)
	lw $t0, -1020($fp)
	sw $t0, -3296($fp)
	li $t0, 51553
	sw $t0, -3300($fp)
	lw $t0, -3296($fp)
	lw $t1, -3300($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3304($fp)
	lw $t1, -3304($fp)
	li $t2, 0
	bne $t1, $t2, label901
	j label900
label901:
	lw $t0, -1092($fp)
	sw $t0, -3308($fp)
	lw $t1, -3308($fp)
	li $t2, 0
	bne $t1, $t2, label899
	j label900
label899:
	li $t0, 1
	sw $t0, -3292($fp)
label900:
	lw $ra, -4($fp)
	lw $v0, -3292($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label864:
	li $t0, 28253
	sw $t0, -3312($fp)
	li $t0, 0
	lw $t1, -3312($fp)
	sub $t0, $t0, $t1
	sw $t0, -3316($fp)
	li $t0, 0
	lw $t1, -3316($fp)
	sub $t0, $t0, $t1
	sw $t0, -3320($fp)
	li $t0, 0
	sw $t0, -3324($fp)
	lw $t0, -768($fp)
	sw $t0, -3328($fp)
	lw $t1, -3328($fp)
	li $t2, 0
	bne $t1, $t2, label903
	j label904
label904:
	li $t0, 49509
	sw $t0, -3332($fp)
	lw $t1, -3332($fp)
	li $t2, 0
	bne $t1, $t2, label902
	j label903
label902:
	li $t0, 1
	sw $t0, -3324($fp)
label903:
	addi $t0, $fp, -32
	sw $t0, -3336($fp)
	li $t0, 4
	sw $t0, -3340($fp)
	li $t0, 4
	lw $t1, -3340($fp)
	mul $t0, $t0, $t1
	sw $t0, -3344($fp)
	lw $t0, -3344($fp)
	lw $t1, -3336($fp)
	add $t0, $t0, $t1
	sw $t0, -3348($fp)
	lw $t0, -3348($fp)
	lw $t1, 0($t0)
	sw $t1, -3352($fp)
	li $t0, 9783
	sw $t0, -3356($fp)
	lw $t0, -3352($fp)
	lw $t1, -3356($fp)
	sub $t0, $t0, $t1
	sw $t0, -3360($fp)
	addi $sp, $sp, -4
	lw $t0, -3324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3360($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3364($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -3364($fp)
	sub $t0, $t0, $t1
	sw $t0, -3368($fp)
	lw $t0, -3320($fp)
	lw $t1, -3368($fp)
	sub $t0, $t0, $t1
	sw $t0, -3372($fp)
	lw $t0, -732($fp)
	sw $t0, -3376($fp)
	lw $t0, -852($fp)
	sw $t0, -3380($fp)
	li $t0, 0
	lw $t1, -3380($fp)
	sub $t0, $t0, $t1
	sw $t0, -3384($fp)
	li $t0, 21411
	sw $t0, -3388($fp)
	addi $sp, $sp, -4
	lw $t0, -3376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3388($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3392($fp)
	addi $sp, $sp, 16
	li $t0, 26167
	sw $t0, -3396($fp)
	lw $t0, -3396($fp)
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	sw $t0, -3400($fp)
	addi $t0, $fp, -52
	sw $t0, -3404($fp)
	lw $t0, -732($fp)
	sw $t0, -3408($fp)
	li $t0, 4
	lw $t1, -3408($fp)
	mul $t0, $t0, $t1
	sw $t0, -3412($fp)
	lw $t0, -3412($fp)
	lw $t1, -3404($fp)
	add $t0, $t0, $t1
	sw $t0, -3416($fp)
	lw $t0, -3416($fp)
	lw $t1, 0($t0)
	sw $t1, -3420($fp)
	addi $sp, $sp, -4
	lw $t0, -3400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3420($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3424($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -3428($fp)
	lw $t0, -1092($fp)
	sw $t0, -3432($fp)
	li $t0, 0
	lw $t1, -3432($fp)
	sub $t0, $t0, $t1
	sw $t0, -3436($fp)
	lw $t1, -3436($fp)
	li $t2, 0
	bne $t1, $t2, label906
	j label907
label907:
	lw $t0, -960($fp)
	sw $t0, -3440($fp)
	li $t0, 0
	lw $t1, -3440($fp)
	sub $t0, $t0, $t1
	sw $t0, -3444($fp)
	lw $t1, -3444($fp)
	li $t2, 0
	bne $t1, $t2, label905
	j label906
label905:
	li $t0, 1
	sw $t0, -3428($fp)
label906:
label908:
	jal f9
	sw $v0, -3448($fp)
	addi $sp, $sp, 4
	lw $t1, -3448($fp)
	li $t2, 0
	bne $t1, $t2, label909
	j label910
label909:
	li $t0, 0
	sw $t0, -3452($fp)
	addi $t0, $fp, -32
	sw $t0, -3456($fp)
	li $t0, 0
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
	lw $t0, -1008($fp)
	sw $t0, -3476($fp)
	li $t0, 0
	lw $t1, -3476($fp)
	sub $t0, $t0, $t1
	sw $t0, -3480($fp)
	li $t0, 0
	sw $t0, -3484($fp)
	li $t0, 0
	sw $t0, -3488($fp)
	li $t0, 49635
	sw $t0, -3492($fp)
	li $t0, 47812
	sw $t0, -3496($fp)
	lw $t1, -3492($fp)
	lw $t2, -3496($fp)
	bne $t1, $t2, label916
	j label917
label916:
	li $t0, 1
	sw $t0, -3488($fp)
label917:
	lw $t0, -1020($fp)
	sw $t0, -3500($fp)
	lw $t1, -3488($fp)
	lw $t2, -3500($fp)
	bne $t1, $t2, label914
	j label915
label914:
	li $t0, 1
	sw $t0, -3484($fp)
label915:
	addi $t0, $fp, -128
	sw $t0, -3504($fp)
	li $t0, 3
	sw $t0, -3508($fp)
	li $t0, 4
	lw $t1, -3508($fp)
	mul $t0, $t0, $t1
	sw $t0, -3512($fp)
	lw $t0, -3512($fp)
	lw $t1, -3504($fp)
	add $t0, $t0, $t1
	sw $t0, -3516($fp)
	lw $t0, -3516($fp)
	lw $t1, 0($t0)
	sw $t1, -3520($fp)
	addi $sp, $sp, -4
	lw $t0, -3480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3520($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3524($fp)
	addi $sp, $sp, 16
	lw $t0, -3472($fp)
	lw $t1, -3524($fp)
	add $t0, $t0, $t1
	sw $t0, -3528($fp)
	lw $t1, -3528($fp)
	li $t2, 0
	bne $t1, $t2, label911
	j label913
label913:
	addi $t0, $fp, -32
	sw $t0, -3532($fp)
	lw $t0, -504($fp)
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
	lw $t0, -768($fp)
	sw $t0, -3552($fp)
	lw $t1, -3548($fp)
	lw $t2, -3552($fp)
	beq $t1, $t2, label918
	j label912
label918:
	lw $t0, -996($fp)
	sw $t0, -3556($fp)
	li $t0, 53842
	sw $t0, -3560($fp)
	lw $t1, -3556($fp)
	lw $t2, -3560($fp)
	bge $t1, $t2, label911
	j label912
label911:
	li $t0, 1
	sw $t0, -3452($fp)
label912:
	lw $ra, -4($fp)
	lw $v0, -3452($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label908
label910:
label919:
	li $t0, 2196
	sw $t0, -3564($fp)
	li $t0, 0
	sw $t0, -3568($fp)
	li $t0, 52354
	sw $t0, -3572($fp)
	lw $t1, -3572($fp)
	li $t2, 0
	bne $t1, $t2, label923
	j label922
label922:
	li $t0, 1
	sw $t0, -3568($fp)
label923:
	lw $t0, -3564($fp)
	lw $t1, -3568($fp)
	add $t0, $t0, $t1
	sw $t0, -3576($fp)
	lw $t1, -3576($fp)
	li $t2, 0
	bne $t1, $t2, label920
	j label921
label920:
	li $t0, 0
	sw $t0, -3580($fp)
	li $t0, 24324
	sw $t0, -3584($fp)
	lw $t1, -3584($fp)
	li $t2, 0
	bne $t1, $t2, label924
	j label925
label924:
	li $t0, 1
	sw $t0, -3580($fp)
label925:
	j label919
label921:
	li $t0, 34966
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	sw $t0, -3684($fp)
	lw $t0, -3684($fp)
	sw $t0, -3688($fp)
	li $t0, 35662
	sw $t0, -3692($fp)
	addi $t0, $fp, -3616
	sw $t0, -3696($fp)
	li $t0, 0
	sw $t0, -3700($fp)
	lw $t0, -3700($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3704($fp)
	lw $t0, -3696($fp)
	lw $t1, -3704($fp)
	add $t0, $t0, $t1
	sw $t0, -3708($fp)
	lw $t0, -3692($fp)
	lw $t1, -3708($fp)
	sw $t0, 0($t1)
	lw $t0, -3708($fp)
	lw $t1, 0($t0)
	sw $t1, -3712($fp)
	li $t0, 27406
	sw $t0, -3716($fp)
	addi $t0, $fp, -3616
	sw $t0, -3720($fp)
	li $t0, 1
	sw $t0, -3724($fp)
	lw $t0, -3724($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3728($fp)
	lw $t0, -3720($fp)
	lw $t1, -3728($fp)
	add $t0, $t0, $t1
	sw $t0, -3732($fp)
	lw $t0, -3716($fp)
	lw $t1, -3732($fp)
	sw $t0, 0($t1)
	lw $t0, -3732($fp)
	lw $t1, 0($t0)
	sw $t1, -3736($fp)
	li $t0, 55227
	sw $t0, -3740($fp)
	addi $t0, $fp, -3616
	sw $t0, -3744($fp)
	li $t0, 2
	sw $t0, -3748($fp)
	lw $t0, -3748($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3752($fp)
	lw $t0, -3744($fp)
	lw $t1, -3752($fp)
	add $t0, $t0, $t1
	sw $t0, -3756($fp)
	lw $t0, -3740($fp)
	lw $t1, -3756($fp)
	sw $t0, 0($t1)
	lw $t0, -3756($fp)
	lw $t1, 0($t0)
	sw $t1, -3760($fp)
	li $t0, 27152
	sw $t0, -3764($fp)
	addi $t0, $fp, -3616
	sw $t0, -3768($fp)
	li $t0, 3
	sw $t0, -3772($fp)
	lw $t0, -3772($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3776($fp)
	lw $t0, -3768($fp)
	lw $t1, -3776($fp)
	add $t0, $t0, $t1
	sw $t0, -3780($fp)
	lw $t0, -3764($fp)
	lw $t1, -3780($fp)
	sw $t0, 0($t1)
	lw $t0, -3780($fp)
	lw $t1, 0($t0)
	sw $t1, -3784($fp)
	li $t0, 62226
	sw $t0, -3788($fp)
	addi $t0, $fp, -3616
	sw $t0, -3792($fp)
	li $t0, 4
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
	li $t0, 36213
	sw $t0, -3812($fp)
	addi $t0, $fp, -3616
	sw $t0, -3816($fp)
	li $t0, 5
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
	li $t0, 49913
	sw $t0, -3836($fp)
	addi $t0, $fp, -3616
	sw $t0, -3840($fp)
	li $t0, 6
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
	li $t0, 25368
	sw $t0, -3860($fp)
	addi $t0, $fp, -3616
	sw $t0, -3864($fp)
	li $t0, 7
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
	li $t0, 31145
	sw $t0, -3884($fp)
	addi $t0, $fp, -3636
	sw $t0, -3888($fp)
	li $t0, 0
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
	li $t0, 53460
	sw $t0, -3908($fp)
	addi $t0, $fp, -3636
	sw $t0, -3912($fp)
	li $t0, 1
	sw $t0, -3916($fp)
	lw $t0, -3916($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3920($fp)
	lw $t0, -3912($fp)
	lw $t1, -3920($fp)
	add $t0, $t0, $t1
	sw $t0, -3924($fp)
	lw $t0, -3908($fp)
	lw $t1, -3924($fp)
	sw $t0, 0($t1)
	lw $t0, -3924($fp)
	lw $t1, 0($t0)
	sw $t1, -3928($fp)
	li $t0, 11497
	sw $t0, -3932($fp)
	addi $t0, $fp, -3636
	sw $t0, -3936($fp)
	li $t0, 2
	sw $t0, -3940($fp)
	lw $t0, -3940($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3944($fp)
	lw $t0, -3936($fp)
	lw $t1, -3944($fp)
	add $t0, $t0, $t1
	sw $t0, -3948($fp)
	lw $t0, -3932($fp)
	lw $t1, -3948($fp)
	sw $t0, 0($t1)
	lw $t0, -3948($fp)
	lw $t1, 0($t0)
	sw $t1, -3952($fp)
	li $t0, 60912
	sw $t0, -3956($fp)
	addi $t0, $fp, -3636
	sw $t0, -3960($fp)
	li $t0, 3
	sw $t0, -3964($fp)
	lw $t0, -3964($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3968($fp)
	lw $t0, -3960($fp)
	lw $t1, -3968($fp)
	add $t0, $t0, $t1
	sw $t0, -3972($fp)
	lw $t0, -3956($fp)
	lw $t1, -3972($fp)
	sw $t0, 0($t1)
	lw $t0, -3972($fp)
	lw $t1, 0($t0)
	sw $t1, -3976($fp)
	li $t0, 39477
	sw $t0, -3980($fp)
	addi $t0, $fp, -3636
	sw $t0, -3984($fp)
	li $t0, 4
	sw $t0, -3988($fp)
	lw $t0, -3988($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3992($fp)
	lw $t0, -3984($fp)
	lw $t1, -3992($fp)
	add $t0, $t0, $t1
	sw $t0, -3996($fp)
	lw $t0, -3980($fp)
	lw $t1, -3996($fp)
	sw $t0, 0($t1)
	lw $t0, -3996($fp)
	lw $t1, 0($t0)
	sw $t1, -4000($fp)
	li $t0, 39750
	sw $t0, -4004($fp)
	lw $t0, -4004($fp)
	sw $t0, -4008($fp)
	lw $t0, -4008($fp)
	sw $t0, -4012($fp)
	li $t0, 16865
	sw $t0, -4016($fp)
	lw $t0, -4016($fp)
	sw $t0, -4020($fp)
	lw $t0, -4020($fp)
	sw $t0, -4024($fp)
	li $t0, 15158
	sw $t0, -4028($fp)
	addi $t0, $fp, -3676
	sw $t0, -4032($fp)
	li $t0, 0
	sw $t0, -4036($fp)
	lw $t0, -4036($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4040($fp)
	lw $t0, -4032($fp)
	lw $t1, -4040($fp)
	add $t0, $t0, $t1
	sw $t0, -4044($fp)
	lw $t0, -4028($fp)
	lw $t1, -4044($fp)
	sw $t0, 0($t1)
	lw $t0, -4044($fp)
	lw $t1, 0($t0)
	sw $t1, -4048($fp)
	li $t0, 49534
	sw $t0, -4052($fp)
	addi $t0, $fp, -3676
	sw $t0, -4056($fp)
	li $t0, 1
	sw $t0, -4060($fp)
	lw $t0, -4060($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4064($fp)
	lw $t0, -4056($fp)
	lw $t1, -4064($fp)
	add $t0, $t0, $t1
	sw $t0, -4068($fp)
	lw $t0, -4052($fp)
	lw $t1, -4068($fp)
	sw $t0, 0($t1)
	lw $t0, -4068($fp)
	lw $t1, 0($t0)
	sw $t1, -4072($fp)
	li $t0, 838
	sw $t0, -4076($fp)
	addi $t0, $fp, -3676
	sw $t0, -4080($fp)
	li $t0, 2
	sw $t0, -4084($fp)
	lw $t0, -4084($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4088($fp)
	lw $t0, -4080($fp)
	lw $t1, -4088($fp)
	add $t0, $t0, $t1
	sw $t0, -4092($fp)
	lw $t0, -4076($fp)
	lw $t1, -4092($fp)
	sw $t0, 0($t1)
	lw $t0, -4092($fp)
	lw $t1, 0($t0)
	sw $t1, -4096($fp)
	li $t0, 36569
	sw $t0, -4100($fp)
	addi $t0, $fp, -3676
	sw $t0, -4104($fp)
	li $t0, 3
	sw $t0, -4108($fp)
	lw $t0, -4108($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4112($fp)
	lw $t0, -4104($fp)
	lw $t1, -4112($fp)
	add $t0, $t0, $t1
	sw $t0, -4116($fp)
	lw $t0, -4100($fp)
	lw $t1, -4116($fp)
	sw $t0, 0($t1)
	lw $t0, -4116($fp)
	lw $t1, 0($t0)
	sw $t1, -4120($fp)
	li $t0, 10165
	sw $t0, -4124($fp)
	addi $t0, $fp, -3676
	sw $t0, -4128($fp)
	li $t0, 4
	sw $t0, -4132($fp)
	lw $t0, -4132($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4136($fp)
	lw $t0, -4128($fp)
	lw $t1, -4136($fp)
	add $t0, $t0, $t1
	sw $t0, -4140($fp)
	lw $t0, -4124($fp)
	lw $t1, -4140($fp)
	sw $t0, 0($t1)
	lw $t0, -4140($fp)
	lw $t1, 0($t0)
	sw $t1, -4144($fp)
	li $t0, 11864
	sw $t0, -4148($fp)
	addi $t0, $fp, -3676
	sw $t0, -4152($fp)
	li $t0, 5
	sw $t0, -4156($fp)
	lw $t0, -4156($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4160($fp)
	lw $t0, -4152($fp)
	lw $t1, -4160($fp)
	add $t0, $t0, $t1
	sw $t0, -4164($fp)
	lw $t0, -4148($fp)
	lw $t1, -4164($fp)
	sw $t0, 0($t1)
	lw $t0, -4164($fp)
	lw $t1, 0($t0)
	sw $t1, -4168($fp)
	li $t0, 34309
	sw $t0, -4172($fp)
	addi $t0, $fp, -3676
	sw $t0, -4176($fp)
	li $t0, 6
	sw $t0, -4180($fp)
	lw $t0, -4180($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4184($fp)
	lw $t0, -4176($fp)
	lw $t1, -4184($fp)
	add $t0, $t0, $t1
	sw $t0, -4188($fp)
	lw $t0, -4172($fp)
	lw $t1, -4188($fp)
	sw $t0, 0($t1)
	lw $t0, -4188($fp)
	lw $t1, 0($t0)
	sw $t1, -4192($fp)
	li $t0, 47419
	sw $t0, -4196($fp)
	addi $t0, $fp, -3676
	sw $t0, -4200($fp)
	li $t0, 7
	sw $t0, -4204($fp)
	lw $t0, -4204($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4208($fp)
	lw $t0, -4200($fp)
	lw $t1, -4208($fp)
	add $t0, $t0, $t1
	sw $t0, -4212($fp)
	lw $t0, -4196($fp)
	lw $t1, -4212($fp)
	sw $t0, 0($t1)
	lw $t0, -4212($fp)
	lw $t1, 0($t0)
	sw $t1, -4216($fp)
	li $t0, 6579
	sw $t0, -4220($fp)
	addi $t0, $fp, -3676
	sw $t0, -4224($fp)
	li $t0, 8
	sw $t0, -4228($fp)
	lw $t0, -4228($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4232($fp)
	lw $t0, -4224($fp)
	lw $t1, -4232($fp)
	add $t0, $t0, $t1
	sw $t0, -4236($fp)
	lw $t0, -4220($fp)
	lw $t1, -4236($fp)
	sw $t0, 0($t1)
	lw $t0, -4236($fp)
	lw $t1, 0($t0)
	sw $t1, -4240($fp)
	li $t0, 18408
	sw $t0, -4244($fp)
	addi $t0, $fp, -3676
	sw $t0, -4248($fp)
	li $t0, 9
	sw $t0, -4252($fp)
	lw $t0, -4252($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4256($fp)
	lw $t0, -4248($fp)
	lw $t1, -4256($fp)
	add $t0, $t0, $t1
	sw $t0, -4260($fp)
	lw $t0, -4244($fp)
	lw $t1, -4260($fp)
	sw $t0, 0($t1)
	lw $t0, -4260($fp)
	lw $t1, 0($t0)
	sw $t1, -4264($fp)
	li $t0, 29696
	sw $t0, -4268($fp)
	lw $t0, -4268($fp)
	sw $t0, -4272($fp)
	lw $t0, -4272($fp)
	sw $t0, -4276($fp)
	li $t0, 60422
	sw $t0, -4280($fp)
	lw $t0, -4280($fp)
	sw $t0, -4284($fp)
	lw $t0, -4284($fp)
	sw $t0, -4288($fp)
	addi $t0, $fp, -32
	sw $t0, -4292($fp)
	li $t0, 0
	sw $t0, -4296($fp)
	lw $t0, -768($fp)
	sw $t0, -4300($fp)
	lw $t1, -4300($fp)
	li $t2, 0
	bne $t1, $t2, label929
	j label931
label931:
	lw $t0, -864($fp)
	sw $t0, -4304($fp)
	lw $t1, -4304($fp)
	li $t2, 0
	bne $t1, $t2, label929
	j label930
label929:
	li $t0, 1
	sw $t0, -4296($fp)
label930:
	li $t0, 4
	lw $t1, -4296($fp)
	mul $t0, $t0, $t1
	sw $t0, -4308($fp)
	lw $t0, -4308($fp)
	lw $t1, -4292($fp)
	add $t0, $t0, $t1
	sw $t0, -4312($fp)
	lw $t0, -4312($fp)
	lw $t1, 0($t0)
	sw $t1, -4316($fp)
	li $t0, 0
	lw $t1, -4316($fp)
	sub $t0, $t0, $t1
	sw $t0, -4320($fp)
	li $t0, 0
	sw $t0, -4324($fp)
	li $t0, 20604
	sw $t0, -4328($fp)
	li $t0, 0
	sw $t0, -4332($fp)
	lw $t0, -840($fp)
	sw $t0, -4336($fp)
	lw $t1, -4336($fp)
	li $t2, 0
	bne $t1, $t2, label935
	j label934
label934:
	li $t0, 1
	sw $t0, -4332($fp)
label935:
	lw $t0, -4328($fp)
	lw $t1, -4332($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4340($fp)
	li $t0, 0
	lw $t1, -4340($fp)
	sub $t0, $t0, $t1
	sw $t0, -4344($fp)
	lw $t1, -4344($fp)
	li $t2, 0
	bne $t1, $t2, label933
	j label932
label932:
	li $t0, 1
	sw $t0, -4324($fp)
label933:
	lw $t0, -4320($fp)
	lw $t1, -4324($fp)
	add $t0, $t0, $t1
	sw $t0, -4348($fp)
	lw $t1, -4348($fp)
	li $t2, 0
	bne $t1, $t2, label926
	j label927
label926:
label936:
	li $t0, 0
	sw $t0, -4352($fp)
	li $t0, 0
	sw $t0, -4356($fp)
	li $t0, 16514
	sw $t0, -4360($fp)
	lw $t0, -1080($fp)
	sw $t0, -4364($fp)
	lw $t0, -4360($fp)
	lw $t1, -4364($fp)
	mul $t0, $t0, $t1
	sw $t0, -4368($fp)
	li $t0, 19210
	sw $t0, -4372($fp)
	lw $t1, -4368($fp)
	lw $t2, -4372($fp)
	bne $t1, $t2, label942
	j label943
label942:
	li $t0, 1
	sw $t0, -4356($fp)
label943:
	addi $sp, $sp, -4
	lw $t0, -4356($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -4376($fp)
	addi $sp, $sp, 8
	li $t0, 55570
	sw $t0, -4380($fp)
	lw $t0, -4376($fp)
	lw $t1, -4380($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4384($fp)
	lw $t1, -4384($fp)
	li $t2, 0
	bne $t1, $t2, label939
	j label941
label941:
	li $t0, 52176
	sw $t0, -4388($fp)
	lw $t0, -732($fp)
	sw $t0, -4392($fp)
	lw $t0, -4388($fp)
	lw $t1, -4392($fp)
	sub $t0, $t0, $t1
	sw $t0, -4396($fp)
	lw $t1, -4396($fp)
	li $t2, 0
	bne $t1, $t2, label939
	j label940
label939:
	li $t0, 1
	sw $t0, -4352($fp)
label940:
	lw $t0, -4352($fp)
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	sw $t0, -4400($fp)
	lw $t1, -4400($fp)
	li $t2, 0
	bne $t1, $t2, label937
	j label938
label937:
	li $t0, 46616
	sw $t0, -4404($fp)
	lw $t1, -4404($fp)
	li $t2, 0
	bne $t1, $t2, label944
	j label945
label944:
	li $t0, 0
	sw $t0, -4408($fp)
	lw $t0, -768($fp)
	sw $t0, -4412($fp)
	li $t0, 0
	lw $t1, -4412($fp)
	sub $t0, $t0, $t1
	sw $t0, -4416($fp)
	lw $t1, -4416($fp)
	li $t2, 0
	bne $t1, $t2, label947
	j label949
label949:
	addi $t0, $fp, -3616
	sw $t0, -4420($fp)
	lw $t0, -456($fp)
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
	lw $t0, -1044($fp)
	sw $t0, -4440($fp)
	lw $t0, -4440($fp)
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -4444($fp)
	li $t0, 0
	sw $t0, -4448($fp)
	lw $t0, -1080($fp)
	sw $t0, -4452($fp)
	li $t0, 13793
	sw $t0, -4456($fp)
	lw $t1, -4452($fp)
	lw $t2, -4456($fp)
	beq $t1, $t2, label952
	j label951
label952:
	li $t0, 43307
	sw $t0, -4460($fp)
	lw $t1, -4460($fp)
	li $t2, 0
	bne $t1, $t2, label950
	j label951
label950:
	li $t0, 1
	sw $t0, -4448($fp)
label951:
	li $t0, 0
	sw $t0, -4464($fp)
	lw $t0, -1092($fp)
	sw $t0, -4468($fp)
	lw $t0, -720($fp)
	sw $t0, -4472($fp)
	lw $t0, -4468($fp)
	lw $t1, -4472($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4476($fp)
	lw $t1, -4476($fp)
	li $t2, 0
	bne $t1, $t2, label953
	j label955
label955:
	li $t0, 45262
	sw $t0, -4480($fp)
	lw $t1, -4480($fp)
	li $t2, 0
	bne $t1, $t2, label953
	j label954
label953:
	li $t0, 1
	sw $t0, -4464($fp)
label954:
	addi $sp, $sp, -4
	lw $t0, -4444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4464($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4484($fp)
	addi $sp, $sp, 16
	lw $t1, -4436($fp)
	lw $t2, -4484($fp)
	blt $t1, $t2, label947
	j label948
label947:
	li $t0, 1
	sw $t0, -4408($fp)
label948:
	j label946
label945:
	li $t0, 0
	sw $t0, -4488($fp)
	addi $t0, $fp, -96
	sw $t0, -4492($fp)
	li $t0, 0
	sw $t0, -4496($fp)
	li $t0, 0
	sw $t0, -4500($fp)
	li $t0, 15939
	sw $t0, -4504($fp)
	lw $t0, -492($fp)
	sw $t0, -4508($fp)
	lw $t1, -4504($fp)
	lw $t2, -4508($fp)
	bgt $t1, $t2, label960
	j label961
label960:
	li $t0, 1
	sw $t0, -4500($fp)
label961:
	lw $t0, -768($fp)
	sw $t0, -4512($fp)
	lw $t1, -4500($fp)
	lw $t2, -4512($fp)
	bgt $t1, $t2, label958
	j label959
label958:
	li $t0, 1
	sw $t0, -4496($fp)
label959:
	li $t0, 4
	lw $t1, -4496($fp)
	mul $t0, $t0, $t1
	sw $t0, -4516($fp)
	lw $t0, -4516($fp)
	lw $t1, -4492($fp)
	add $t0, $t0, $t1
	sw $t0, -4520($fp)
	lw $t0, -4520($fp)
	lw $t1, 0($t0)
	sw $t1, -4524($fp)
	lw $t1, -4524($fp)
	li $t2, 0
	bne $t1, $t2, label957
	j label956
label956:
	li $t0, 1
	sw $t0, -4488($fp)
label957:
label946:
	j label936
label938:
	j label928
label927:
	li $t0, 0
	sw $t0, -4528($fp)
	li $t0, 0
	sw $t0, -4532($fp)
	lw $t0, -792($fp)
	sw $t0, -4536($fp)
	li $t0, 0
	lw $t1, -4536($fp)
	sub $t0, $t0, $t1
	sw $t0, -4540($fp)
	lw $t1, -4540($fp)
	li $t2, 0
	bne $t1, $t2, label965
	j label964
label964:
	li $t0, 1
	sw $t0, -4532($fp)
label965:
	addi $t0, $fp, -128
	sw $t0, -4544($fp)
	li $t0, 6
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
	li $t0, 0
	sw $t0, -4564($fp)
	li $t0, 3139
	sw $t0, -4568($fp)
	lw $t1, -4568($fp)
	li $t2, 0
	bne $t1, $t2, label967
	j label968
label968:
	lw $t0, -492($fp)
	sw $t0, -4572($fp)
	lw $t1, -4572($fp)
	li $t2, 0
	bne $t1, $t2, label966
	j label967
label966:
	li $t0, 1
	sw $t0, -4564($fp)
label967:
	lw $t0, -720($fp)
	sw $t0, -4576($fp)
	li $t0, 63706
	sw $t0, -4580($fp)
	lw $t0, -4576($fp)
	lw $t1, -4580($fp)
	add $t0, $t0, $t1
	sw $t0, -4584($fp)
	lw $t0, -948($fp)
	sw $t0, -4588($fp)
	lw $t0, -4584($fp)
	lw $t1, -4588($fp)
	add $t0, $t0, $t1
	sw $t0, -4592($fp)
	addi $sp, $sp, -4
	lw $t0, -4532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4592($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -4596($fp)
	addi $sp, $sp, 20
	lw $t1, -4596($fp)
	li $t2, 0
	bne $t1, $t2, label962
	j label963
label962:
	li $t0, 1
	sw $t0, -4528($fp)
label963:
	li $t0, 0
	lw $t1, -4528($fp)
	sub $t0, $t0, $t1
	sw $t0, -4600($fp)
	li $t0, 0
	sw $t0, -4604($fp)
	lw $t0, -516($fp)
	sw $t0, -4608($fp)
	lw $t1, -4608($fp)
	li $t2, 0
	bne $t1, $t2, label970
	j label969
label969:
	li $t0, 1
	sw $t0, -4604($fp)
label970:
	lw $t0, -4600($fp)
	lw $t1, -4604($fp)
	add $t0, $t0, $t1
	sw $t0, -4612($fp)
	lw $ra, -4($fp)
	lw $v0, -4612($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label928:
	li $t0, 14636
	sw $t0, -4616($fp)
	addi $t0, $fp, -3676
	sw $t0, -4620($fp)
	lw $t0, -468($fp)
	sw $t0, -4624($fp)
	li $t0, 4
	lw $t1, -4624($fp)
	mul $t0, $t0, $t1
	sw $t0, -4628($fp)
	lw $t0, -4628($fp)
	lw $t1, -4620($fp)
	add $t0, $t0, $t1
	sw $t0, -4632($fp)
	lw $t0, -4632($fp)
	lw $t1, 0($t0)
	sw $t1, -4636($fp)
	li $t0, 0
	lw $t1, -4636($fp)
	sub $t0, $t0, $t1
	sw $t0, -4640($fp)
	lw $t0, -4616($fp)
	lw $t1, -4640($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4644($fp)
	lw $t1, -4644($fp)
	li $t2, 0
	bne $t1, $t2, label971
	j label972
label971:
	li $t0, 0
	sw $t0, -4648($fp)
	li $t0, 42460
	sw $t0, -4652($fp)
	lw $t1, -4652($fp)
	li $t2, 0
	bne $t1, $t2, label975
	j label974
label974:
	li $t0, 1
	sw $t0, -4648($fp)
label975:
	jal f9
	sw $v0, -4656($fp)
	addi $sp, $sp, 4
	lw $t0, -4648($fp)
	lw $t1, -4656($fp)
	mul $t0, $t0, $t1
	sw $t0, -4660($fp)
	lw $ra, -4($fp)
	lw $v0, -4660($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label973
label972:
label976:
	li $t0, 0
	sw $t0, -4664($fp)
	li $t0, 0
	sw $t0, -4668($fp)
	lw $t0, -3684($fp)
	sw $t0, -4672($fp)
	lw $t0, -828($fp)
	sw $t0, -4676($fp)
	lw $t0, -4672($fp)
	lw $t1, -4676($fp)
	mul $t0, $t0, $t1
	sw $t0, -4680($fp)
	lw $t0, -504($fp)
	sw $t0, -4684($fp)
	lw $t0, -4680($fp)
	lw $t1, -4684($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4688($fp)
	lw $t0, -4008($fp)
	sw $t0, -4692($fp)
	lw $t1, -4688($fp)
	lw $t2, -4692($fp)
	bgt $t1, $t2, label981
	j label982
label981:
	li $t0, 1
	sw $t0, -4668($fp)
label982:
	li $t0, 0
	sw $t0, -4696($fp)
	li $t0, 25572
	sw $t0, -4700($fp)
	lw $t1, -4700($fp)
	li $t2, 0
	bne $t1, $t2, label984
	j label983
label983:
	li $t0, 1
	sw $t0, -4696($fp)
label984:
	lw $t1, -4668($fp)
	lw $t2, -4696($fp)
	blt $t1, $t2, label979
	j label980
label979:
	li $t0, 1
	sw $t0, -4664($fp)
label980:
	li $t0, 0
	sw $t0, -4704($fp)
	li $t0, 0
	sw $t0, -4708($fp)
	lw $t0, -1080($fp)
	sw $t0, -4712($fp)
	lw $t0, 4($fp)
	sw $t0, -4716($fp)
	lw $t1, -4712($fp)
	lw $t2, -4716($fp)
	blt $t1, $t2, label987
	j label988
label987:
	li $t0, 1
	sw $t0, -4708($fp)
label988:
	li $t0, 40730
	sw $t0, -4720($fp)
	lw $t1, -4708($fp)
	lw $t2, -4720($fp)
	ble $t1, $t2, label985
	j label986
label985:
	li $t0, 1
	sw $t0, -4704($fp)
label986:
	li $t0, 0
	sw $t0, -4724($fp)
	lw $t0, -4272($fp)
	sw $t0, -4728($fp)
	lw $t1, -4728($fp)
	li $t2, 0
	bne $t1, $t2, label992
	j label990
label992:
	li $t0, 54387
	sw $t0, -4732($fp)
	lw $t1, -4732($fp)
	li $t2, 0
	bne $t1, $t2, label991
	j label990
label991:
	li $t0, 59325
	sw $t0, -4736($fp)
	lw $t1, -4736($fp)
	li $t2, 0
	bne $t1, $t2, label989
	j label990
label989:
	li $t0, 1
	sw $t0, -4724($fp)
label990:
	li $t0, 0
	sw $t0, -4740($fp)
	lw $t0, -1104($fp)
	sw $t0, -4744($fp)
	lw $t0, -1080($fp)
	sw $t0, -4748($fp)
	lw $t0, -4744($fp)
	lw $t1, -4748($fp)
	sub $t0, $t0, $t1
	sw $t0, -4752($fp)
	lw $t0, -732($fp)
	sw $t0, -4756($fp)
	lw $t1, -4752($fp)
	lw $t2, -4756($fp)
	beq $t1, $t2, label993
	j label994
label993:
	li $t0, 1
	sw $t0, -4740($fp)
label994:
	addi $sp, $sp, -4
	lw $t0, -4704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4740($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4760($fp)
	addi $sp, $sp, 16
	lw $t1, -4664($fp)
	lw $t2, -4760($fp)
	beq $t1, $t2, label977
	j label978
label977:
	addi $t0, $fp, -128
	sw $t0, -4764($fp)
	lw $t0, -768($fp)
	sw $t0, -4768($fp)
	li $t0, 4
	lw $t1, -4768($fp)
	mul $t0, $t0, $t1
	sw $t0, -4772($fp)
	lw $t0, -4772($fp)
	lw $t1, -4764($fp)
	add $t0, $t0, $t1
	sw $t0, -4776($fp)
	lw $t0, -4776($fp)
	lw $t1, 0($t0)
	sw $t1, -4780($fp)
	li $t0, 38385
	sw $t0, -4784($fp)
	lw $t0, -852($fp)
	sw $t0, -4788($fp)
	li $t0, 0
	lw $t1, -4788($fp)
	sub $t0, $t0, $t1
	sw $t0, -4792($fp)
	lw $t0, -4784($fp)
	lw $t1, -4792($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4796($fp)
	li $t0, 0
	lw $t1, -4796($fp)
	sub $t0, $t0, $t1
	sw $t0, -4800($fp)
	lw $t0, -4780($fp)
	lw $t1, -4800($fp)
	add $t0, $t0, $t1
	sw $t0, -4804($fp)
	j label976
label978:
label973:
	lw $t0, -3684($fp)
	sw $t0, -4808($fp)
	lw $t0, -4808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3616
	sw $t0, -4812($fp)
	li $t0, 0
	sw $t0, -4816($fp)
	li $t0, 4
	lw $t1, -4816($fp)
	mul $t0, $t0, $t1
	sw $t0, -4820($fp)
	lw $t0, -4820($fp)
	lw $t1, -4812($fp)
	add $t0, $t0, $t1
	sw $t0, -4824($fp)
	lw $t0, -4824($fp)
	lw $t1, 0($t0)
	sw $t1, -4828($fp)
	lw $t0, -4828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3616
	sw $t0, -4832($fp)
	li $t0, 1
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
	lw $t0, -4848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3616
	sw $t0, -4852($fp)
	li $t0, 2
	sw $t0, -4856($fp)
	li $t0, 4
	lw $t1, -4856($fp)
	mul $t0, $t0, $t1
	sw $t0, -4860($fp)
	lw $t0, -4860($fp)
	lw $t1, -4852($fp)
	add $t0, $t0, $t1
	sw $t0, -4864($fp)
	lw $t0, -4864($fp)
	lw $t1, 0($t0)
	sw $t1, -4868($fp)
	lw $t0, -4868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3616
	sw $t0, -4872($fp)
	li $t0, 3
	sw $t0, -4876($fp)
	li $t0, 4
	lw $t1, -4876($fp)
	mul $t0, $t0, $t1
	sw $t0, -4880($fp)
	lw $t0, -4880($fp)
	lw $t1, -4872($fp)
	add $t0, $t0, $t1
	sw $t0, -4884($fp)
	lw $t0, -4884($fp)
	lw $t1, 0($t0)
	sw $t1, -4888($fp)
	lw $t0, -4888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3616
	sw $t0, -4892($fp)
	li $t0, 4
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
	lw $t0, -4908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3616
	sw $t0, -4912($fp)
	li $t0, 5
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
	lw $t0, -4928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3616
	sw $t0, -4932($fp)
	li $t0, 6
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
	lw $t0, -4948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3616
	sw $t0, -4952($fp)
	li $t0, 7
	sw $t0, -4956($fp)
	li $t0, 4
	lw $t1, -4956($fp)
	mul $t0, $t0, $t1
	sw $t0, -4960($fp)
	lw $t0, -4960($fp)
	lw $t1, -4952($fp)
	add $t0, $t0, $t1
	sw $t0, -4964($fp)
	lw $t0, -4964($fp)
	lw $t1, 0($t0)
	sw $t1, -4968($fp)
	lw $t0, -4968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3636
	sw $t0, -4972($fp)
	li $t0, 0
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
	lw $t0, -4988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3636
	sw $t0, -4992($fp)
	li $t0, 1
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
	lw $t0, -5008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3636
	sw $t0, -5012($fp)
	li $t0, 2
	sw $t0, -5016($fp)
	li $t0, 4
	lw $t1, -5016($fp)
	mul $t0, $t0, $t1
	sw $t0, -5020($fp)
	lw $t0, -5020($fp)
	lw $t1, -5012($fp)
	add $t0, $t0, $t1
	sw $t0, -5024($fp)
	lw $t0, -5024($fp)
	lw $t1, 0($t0)
	sw $t1, -5028($fp)
	lw $t0, -5028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3636
	sw $t0, -5032($fp)
	li $t0, 3
	sw $t0, -5036($fp)
	li $t0, 4
	lw $t1, -5036($fp)
	mul $t0, $t0, $t1
	sw $t0, -5040($fp)
	lw $t0, -5040($fp)
	lw $t1, -5032($fp)
	add $t0, $t0, $t1
	sw $t0, -5044($fp)
	lw $t0, -5044($fp)
	lw $t1, 0($t0)
	sw $t1, -5048($fp)
	lw $t0, -5048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3636
	sw $t0, -5052($fp)
	li $t0, 4
	sw $t0, -5056($fp)
	li $t0, 4
	lw $t1, -5056($fp)
	mul $t0, $t0, $t1
	sw $t0, -5060($fp)
	lw $t0, -5060($fp)
	lw $t1, -5052($fp)
	add $t0, $t0, $t1
	sw $t0, -5064($fp)
	lw $t0, -5064($fp)
	lw $t1, 0($t0)
	sw $t1, -5068($fp)
	lw $t0, -5068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4008($fp)
	sw $t0, -5072($fp)
	lw $t0, -5072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4020($fp)
	sw $t0, -5076($fp)
	lw $t0, -5076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3676
	sw $t0, -5080($fp)
	li $t0, 0
	sw $t0, -5084($fp)
	li $t0, 4
	lw $t1, -5084($fp)
	mul $t0, $t0, $t1
	sw $t0, -5088($fp)
	lw $t0, -5088($fp)
	lw $t1, -5080($fp)
	add $t0, $t0, $t1
	sw $t0, -5092($fp)
	lw $t0, -5092($fp)
	lw $t1, 0($t0)
	sw $t1, -5096($fp)
	lw $t0, -5096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3676
	sw $t0, -5100($fp)
	li $t0, 1
	sw $t0, -5104($fp)
	li $t0, 4
	lw $t1, -5104($fp)
	mul $t0, $t0, $t1
	sw $t0, -5108($fp)
	lw $t0, -5108($fp)
	lw $t1, -5100($fp)
	add $t0, $t0, $t1
	sw $t0, -5112($fp)
	lw $t0, -5112($fp)
	lw $t1, 0($t0)
	sw $t1, -5116($fp)
	lw $t0, -5116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3676
	sw $t0, -5120($fp)
	li $t0, 2
	sw $t0, -5124($fp)
	li $t0, 4
	lw $t1, -5124($fp)
	mul $t0, $t0, $t1
	sw $t0, -5128($fp)
	lw $t0, -5128($fp)
	lw $t1, -5120($fp)
	add $t0, $t0, $t1
	sw $t0, -5132($fp)
	lw $t0, -5132($fp)
	lw $t1, 0($t0)
	sw $t1, -5136($fp)
	lw $t0, -5136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3676
	sw $t0, -5140($fp)
	li $t0, 3
	sw $t0, -5144($fp)
	li $t0, 4
	lw $t1, -5144($fp)
	mul $t0, $t0, $t1
	sw $t0, -5148($fp)
	lw $t0, -5148($fp)
	lw $t1, -5140($fp)
	add $t0, $t0, $t1
	sw $t0, -5152($fp)
	lw $t0, -5152($fp)
	lw $t1, 0($t0)
	sw $t1, -5156($fp)
	lw $t0, -5156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3676
	sw $t0, -5160($fp)
	li $t0, 4
	sw $t0, -5164($fp)
	li $t0, 4
	lw $t1, -5164($fp)
	mul $t0, $t0, $t1
	sw $t0, -5168($fp)
	lw $t0, -5168($fp)
	lw $t1, -5160($fp)
	add $t0, $t0, $t1
	sw $t0, -5172($fp)
	lw $t0, -5172($fp)
	lw $t1, 0($t0)
	sw $t1, -5176($fp)
	lw $t0, -5176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3676
	sw $t0, -5180($fp)
	li $t0, 5
	sw $t0, -5184($fp)
	li $t0, 4
	lw $t1, -5184($fp)
	mul $t0, $t0, $t1
	sw $t0, -5188($fp)
	lw $t0, -5188($fp)
	lw $t1, -5180($fp)
	add $t0, $t0, $t1
	sw $t0, -5192($fp)
	lw $t0, -5192($fp)
	lw $t1, 0($t0)
	sw $t1, -5196($fp)
	lw $t0, -5196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3676
	sw $t0, -5200($fp)
	li $t0, 6
	sw $t0, -5204($fp)
	li $t0, 4
	lw $t1, -5204($fp)
	mul $t0, $t0, $t1
	sw $t0, -5208($fp)
	lw $t0, -5208($fp)
	lw $t1, -5200($fp)
	add $t0, $t0, $t1
	sw $t0, -5212($fp)
	lw $t0, -5212($fp)
	lw $t1, 0($t0)
	sw $t1, -5216($fp)
	lw $t0, -5216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3676
	sw $t0, -5220($fp)
	li $t0, 7
	sw $t0, -5224($fp)
	li $t0, 4
	lw $t1, -5224($fp)
	mul $t0, $t0, $t1
	sw $t0, -5228($fp)
	lw $t0, -5228($fp)
	lw $t1, -5220($fp)
	add $t0, $t0, $t1
	sw $t0, -5232($fp)
	lw $t0, -5232($fp)
	lw $t1, 0($t0)
	sw $t1, -5236($fp)
	lw $t0, -5236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3676
	sw $t0, -5240($fp)
	li $t0, 8
	sw $t0, -5244($fp)
	li $t0, 4
	lw $t1, -5244($fp)
	mul $t0, $t0, $t1
	sw $t0, -5248($fp)
	lw $t0, -5248($fp)
	lw $t1, -5240($fp)
	add $t0, $t0, $t1
	sw $t0, -5252($fp)
	lw $t0, -5252($fp)
	lw $t1, 0($t0)
	sw $t1, -5256($fp)
	lw $t0, -5256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3676
	sw $t0, -5260($fp)
	li $t0, 9
	sw $t0, -5264($fp)
	li $t0, 4
	lw $t1, -5264($fp)
	mul $t0, $t0, $t1
	sw $t0, -5268($fp)
	lw $t0, -5268($fp)
	lw $t1, -5260($fp)
	add $t0, $t0, $t1
	sw $t0, -5272($fp)
	lw $t0, -5272($fp)
	lw $t1, 0($t0)
	sw $t1, -5276($fp)
	lw $t0, -5276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4272($fp)
	sw $t0, -5280($fp)
	lw $t0, -5280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4284($fp)
	sw $t0, -5284($fp)
	lw $t0, -5284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -5288($fp)
	li $t0, 0
	sw $t0, -5292($fp)
	li $t0, 60163
	sw $t0, -5296($fp)
	lw $t0, -4284($fp)
	sw $t0, -5300($fp)
	lw $t1, -5296($fp)
	lw $t2, -5300($fp)
	beq $t1, $t2, label995
	j label996
label995:
	li $t0, 1
	sw $t0, -5292($fp)
label996:
	li $t0, 4
	lw $t1, -5292($fp)
	mul $t0, $t0, $t1
	sw $t0, -5304($fp)
	lw $t0, -5304($fp)
	lw $t1, -5288($fp)
	add $t0, $t0, $t1
	sw $t0, -5308($fp)
	lw $t0, -5308($fp)
	lw $t1, 0($t0)
	sw $t1, -5312($fp)
	li $t0, 11763
	sw $t0, -5316($fp)
	lw $t0, -5312($fp)
	lw $t1, -5316($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5320($fp)
	jal f9
	sw $v0, -5324($fp)
	addi $sp, $sp, 4
	lw $t0, -5320($fp)
	lw $t1, -5324($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5328($fp)
	lw $ra, -4($fp)
	lw $v0, -5328($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 48550
	sw $t0, -5332($fp)
	li $t0, 0
	sw $t0, -5336($fp)
	li $t0, 0
	sw $t0, -5340($fp)
	addi $t0, $fp, -84
	sw $t0, -5344($fp)
	li $t0, 0
	sw $t0, -5348($fp)
	li $t0, 4
	lw $t1, -5348($fp)
	mul $t0, $t0, $t1
	sw $t0, -5352($fp)
	lw $t0, -5352($fp)
	lw $t1, -5344($fp)
	add $t0, $t0, $t1
	sw $t0, -5356($fp)
	lw $t0, -5356($fp)
	lw $t1, 0($t0)
	sw $t1, -5360($fp)
	lw $t1, -5360($fp)
	li $t2, 0
	bne $t1, $t2, label999
	j label1001
label1001:
	li $t0, 7957
	sw $t0, -5364($fp)
	lw $t1, -5364($fp)
	li $t2, 0
	bne $t1, $t2, label999
	j label1000
label999:
	li $t0, 1
	sw $t0, -5340($fp)
label1000:
	li $t0, 30433
	sw $t0, -5368($fp)
	li $t0, 13071
	sw $t0, -5372($fp)
	lw $t0, -5368($fp)
	lw $t1, -5372($fp)
	mul $t0, $t0, $t1
	sw $t0, -5376($fp)
	li $t0, 0
	lw $t1, -5376($fp)
	sub $t0, $t0, $t1
	sw $t0, -5380($fp)
	li $t0, 6491
	sw $t0, -5384($fp)
	lw $t0, -4284($fp)
	sw $t0, -5388($fp)
	lw $t0, -5384($fp)
	lw $t1, -5388($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5392($fp)
	li $t0, 46072
	sw $t0, -5396($fp)
	lw $t0, -5392($fp)
	lw $t1, -5396($fp)
	sub $t0, $t0, $t1
	sw $t0, -5400($fp)
	lw $t0, -864($fp)
	sw $t0, -5404($fp)
	lw $t0, -5404($fp)
	sw $t0, -4020($fp)
	lw $t0, -4020($fp)
	sw $t0, -5408($fp)
	lw $t0, -1044($fp)
	sw $t0, -5412($fp)
	addi $sp, $sp, -4
	lw $t0, -5408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5412($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5416($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -5340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5416($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -5420($fp)
	addi $sp, $sp, 20
	lw $t1, -5420($fp)
	li $t2, 0
	bne $t1, $t2, label998
	j label997
label997:
	li $t0, 1
	sw $t0, -5336($fp)
label998:
	lw $t0, -5332($fp)
	lw $t1, -5336($fp)
	mul $t0, $t0, $t1
	sw $t0, -5424($fp)
	addi $t0, $fp, -3636
	sw $t0, -5428($fp)
	lw $t0, -1080($fp)
	sw $t0, -5432($fp)
	lw $t0, -5432($fp)
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	sw $t0, -5436($fp)
	li $t0, 4
	lw $t1, -5436($fp)
	mul $t0, $t0, $t1
	sw $t0, -5440($fp)
	lw $t0, -5440($fp)
	lw $t1, -5428($fp)
	add $t0, $t0, $t1
	sw $t0, -5444($fp)
	lw $t0, -5444($fp)
	lw $t1, 0($t0)
	sw $t1, -5448($fp)
	lw $t0, -5424($fp)
	lw $t1, -5448($fp)
	mul $t0, $t0, $t1
	sw $t0, -5452($fp)
	lw $t0, -1068($fp)
	sw $t0, -5456($fp)
	lw $t1, -5456($fp)
	li $t2, 0
	bne $t1, $t2, label1002
	j label1003
label1002:
	li $t0, 19549
	sw $t0, -5460($fp)
	lw $t0, -5460($fp)
	sw $t0, -5464($fp)
	lw $t0, -5464($fp)
	sw $t0, -5468($fp)
	li $t0, 11107
	sw $t0, -5472($fp)
	lw $t0, -5472($fp)
	sw $t0, -5476($fp)
	lw $t0, -5476($fp)
	sw $t0, -5480($fp)
	addi $t0, $fp, -160
	sw $t0, -5484($fp)
	li $t0, 0
	sw $t0, -5488($fp)
	lw $t0, -948($fp)
	sw $t0, -5492($fp)
	lw $t1, -5492($fp)
	li $t2, 0
	bne $t1, $t2, label1007
	j label1005
label1007:
	lw $t0, -732($fp)
	sw $t0, -5496($fp)
	lw $t1, -5496($fp)
	li $t2, 0
	bne $t1, $t2, label1005
	j label1006
label1005:
	li $t0, 1
	sw $t0, -5488($fp)
label1006:
	li $t0, 4
	lw $t1, -5488($fp)
	mul $t0, $t0, $t1
	sw $t0, -5500($fp)
	lw $t0, -5500($fp)
	lw $t1, -5484($fp)
	add $t0, $t0, $t1
	sw $t0, -5504($fp)
	lw $t0, -5504($fp)
	lw $t1, 0($t0)
	sw $t1, -5508($fp)
	li $t0, 27167
	sw $t0, -5512($fp)
	lw $t0, -5508($fp)
	lw $t1, -5512($fp)
	mul $t0, $t0, $t1
	sw $t0, -5516($fp)
	li $t0, 0
	sw $t0, -5520($fp)
	lw $t0, -5476($fp)
	sw $t0, -5524($fp)
	lw $t0, -5524($fp)
	sw $t0, -5464($fp)
	lw $t0, -5464($fp)
	sw $t0, -5528($fp)
	lw $t0, -1092($fp)
	sw $t0, -5532($fp)
	lw $t0, -5532($fp)
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -5536($fp)
	li $t0, 0
	sw $t0, -5540($fp)
	li $t0, 9584
	sw $t0, -5544($fp)
	lw $t0, -984($fp)
	sw $t0, -5548($fp)
	lw $t0, -5544($fp)
	lw $t1, -5548($fp)
	mul $t0, $t0, $t1
	sw $t0, -5552($fp)
	lw $t1, -5552($fp)
	li $t2, 0
	bne $t1, $t2, label1013
	j label1012
label1013:
	li $t0, 63284
	sw $t0, -5556($fp)
	lw $t1, -5556($fp)
	li $t2, 0
	bne $t1, $t2, label1011
	j label1012
label1011:
	li $t0, 1
	sw $t0, -5540($fp)
label1012:
	addi $sp, $sp, -4
	lw $t0, -5528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5540($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5560($fp)
	addi $sp, $sp, 16
	lw $t1, -5560($fp)
	li $t2, 0
	bne $t1, $t2, label1010
	j label1009
label1010:
	li $t0, 8247
	sw $t0, -5564($fp)
	li $t0, 54846
	sw $t0, -5568($fp)
	lw $t0, -5564($fp)
	lw $t1, -5568($fp)
	mul $t0, $t0, $t1
	sw $t0, -5572($fp)
	lw $t0, -1104($fp)
	sw $t0, -5576($fp)
	lw $t0, -5572($fp)
	lw $t1, -5576($fp)
	add $t0, $t0, $t1
	sw $t0, -5580($fp)
	lw $t1, -5580($fp)
	li $t2, 0
	bne $t1, $t2, label1008
	j label1009
label1008:
	li $t0, 1
	sw $t0, -5520($fp)
label1009:
	li $t0, 0
	sw $t0, -5584($fp)
	li $t0, 11541
	sw $t0, -5588($fp)
	li $t0, 0
	sw $t0, -5592($fp)
	li $t0, 0
	sw $t0, -5596($fp)
	addi $t0, $fp, -3636
	sw $t0, -5600($fp)
	li $t0, 0
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
	bne $t1, $t2, label1021
	j label1020
label1021:
	lw $t0, -744($fp)
	sw $t0, -5620($fp)
	lw $t1, -5620($fp)
	li $t2, 0
	bne $t1, $t2, label1019
	j label1020
label1019:
	li $t0, 1
	sw $t0, -5596($fp)
label1020:
	li $t0, 51554
	sw $t0, -5624($fp)
	lw $t0, -516($fp)
	sw $t0, -5628($fp)
	lw $t0, -5624($fp)
	lw $t1, -5628($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5632($fp)
	li $t0, 5249
	sw $t0, -5636($fp)
	lw $t0, -5632($fp)
	lw $t1, -5636($fp)
	add $t0, $t0, $t1
	sw $t0, -5640($fp)
	addi $sp, $sp, -4
	lw $t0, -5596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5640($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5644($fp)
	addi $sp, $sp, 12
	lw $t1, -5644($fp)
	li $t2, 0
	bne $t1, $t2, label1018
	j label1017
label1017:
	li $t0, 1
	sw $t0, -5592($fp)
label1018:
	lw $t0, -5588($fp)
	lw $t1, -5592($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5648($fp)
	lw $t1, -5648($fp)
	li $t2, 0
	bne $t1, $t2, label1014
	j label1016
label1016:
	li $t0, 52333
	sw $t0, -5652($fp)
	lw $t0, -1080($fp)
	sw $t0, -5656($fp)
	lw $t0, -5652($fp)
	lw $t1, -5656($fp)
	mul $t0, $t0, $t1
	sw $t0, -5660($fp)
	li $t0, 61342
	sw $t0, -5664($fp)
	lw $t1, -5660($fp)
	lw $t2, -5664($fp)
	bgt $t1, $t2, label1022
	j label1015
label1022:
	li $t0, 3794
	sw $t0, -5668($fp)
	lw $t1, -5668($fp)
	li $t2, 0
	bne $t1, $t2, label1014
	j label1015
label1014:
	li $t0, 1
	sw $t0, -5584($fp)
label1015:
	j label1004
label1003:
	li $t0, 0
	sw $t0, -5672($fp)
	li $t0, 29257
	sw $t0, -5676($fp)
	lw $t1, -5676($fp)
	li $t2, 0
	bne $t1, $t2, label1023
	j label1024
label1023:
	li $t0, 1
	sw $t0, -5672($fp)
label1024:
	lw $ra, -4($fp)
	lw $v0, -5672($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label1004:
label1025:
	addi $t0, $fp, -32
	sw $t0, -5680($fp)
	li $t0, 0
	sw $t0, -5684($fp)
	li $t0, 21378
	sw $t0, -5688($fp)
	li $t0, 58181
	sw $t0, -5692($fp)
	lw $t1, -5688($fp)
	lw $t2, -5692($fp)
	bne $t1, $t2, label1028
	j label1029
label1028:
	li $t0, 1
	sw $t0, -5684($fp)
label1029:
	li $t0, 4
	lw $t1, -5684($fp)
	mul $t0, $t0, $t1
	sw $t0, -5696($fp)
	lw $t0, -5696($fp)
	lw $t1, -5680($fp)
	add $t0, $t0, $t1
	sw $t0, -5700($fp)
	lw $t0, -5700($fp)
	lw $t1, 0($t0)
	sw $t1, -5704($fp)
	lw $t0, -5704($fp)
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -5708($fp)
	lw $t1, -5708($fp)
	li $t2, 0
	bne $t1, $t2, label1026
	j label1027
label1026:
	li $t0, 23046
	sw $t0, -5712($fp)
	lw $t0, -5712($fp)
	sw $t0, -5716($fp)
	lw $t0, -5716($fp)
	sw $t0, -5720($fp)
	li $t0, 62108
	sw $t0, -5724($fp)
	lw $t0, -5724($fp)
	sw $t0, -5728($fp)
	lw $t0, -5728($fp)
	sw $t0, -5732($fp)
	li $t0, 31030
	sw $t0, -5736($fp)
	lw $t0, -5736($fp)
	sw $t0, -5740($fp)
	lw $t0, -5740($fp)
	sw $t0, -5744($fp)
	li $t0, 17673
	sw $t0, -5748($fp)
	lw $t0, -5748($fp)
	sw $t0, -5752($fp)
	lw $t0, -5752($fp)
	sw $t0, -5756($fp)
	li $t0, 8335
	sw $t0, -5760($fp)
	lw $t0, -5760($fp)
	sw $t0, -5764($fp)
	lw $t0, -5764($fp)
	sw $t0, -5768($fp)
	li $t0, 14044
	sw $t0, -5772($fp)
	lw $t0, -5772($fp)
	sw $t0, -5776($fp)
	lw $t0, -5776($fp)
	sw $t0, -5780($fp)
	li $t0, 24165
	sw $t0, -5784($fp)
	lw $t0, -5784($fp)
	sw $t0, -5788($fp)
	lw $t0, -5788($fp)
	sw $t0, -5792($fp)
	li $t0, 54407
	sw $t0, -5796($fp)
	lw $t0, -5796($fp)
	sw $t0, -5800($fp)
	lw $t0, -5800($fp)
	sw $t0, -5804($fp)
	li $t0, 44478
	sw $t0, -5808($fp)
	lw $t0, -5808($fp)
	sw $t0, -5812($fp)
	lw $t0, -5812($fp)
	sw $t0, -5816($fp)
	li $t0, 37236
	sw $t0, -5820($fp)
	lw $t0, -5820($fp)
	sw $t0, -5824($fp)
	lw $t0, -5824($fp)
	sw $t0, -5828($fp)
	li $t0, 53352
	sw $t0, -5832($fp)
	lw $t0, -5832($fp)
	sw $t0, -5836($fp)
	lw $t0, -5836($fp)
	sw $t0, -5840($fp)
	li $t0, 0
	sw $t0, -5844($fp)
	jal f9
	sw $v0, -5848($fp)
	addi $sp, $sp, 4
	lw $t0, -768($fp)
	sw $t0, -5852($fp)
	lw $t0, -840($fp)
	sw $t0, -5856($fp)
	li $t0, 39071
	sw $t0, -5860($fp)
	lw $t0, -5856($fp)
	lw $t1, -5860($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5864($fp)
	li $t0, 45193
	sw $t0, -5868($fp)
	lw $t0, -5864($fp)
	lw $t1, -5868($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5872($fp)
	addi $sp, $sp, -4
	lw $t0, -5848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5872($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -5876($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -5876($fp)
	sub $t0, $t0, $t1
	sw $t0, -5880($fp)
	li $t0, 0
	lw $t1, -5880($fp)
	sub $t0, $t0, $t1
	sw $t0, -5884($fp)
	lw $t1, -5884($fp)
	li $t2, 0
	bne $t1, $t2, label1031
	j label1030
label1030:
	li $t0, 1
	sw $t0, -5844($fp)
label1031:
	lw $t0, -780($fp)
	sw $t0, -5888($fp)
	li $t0, 0
	lw $t1, -5888($fp)
	sub $t0, $t0, $t1
	sw $t0, -5892($fp)
	li $t0, 0
	sw $t0, -5896($fp)
	lw $t0, -1104($fp)
	sw $t0, -5900($fp)
	lw $t1, -5900($fp)
	li $t2, 0
	bne $t1, $t2, label1032
	j label1033
label1032:
	li $t0, 1
	sw $t0, -5896($fp)
label1033:
	lw $t0, -5892($fp)
	lw $t1, -5896($fp)
	sub $t0, $t0, $t1
	sw $t0, -5904($fp)
	li $t0, 0
	sw $t0, -5908($fp)
	jal f9
	sw $v0, -5912($fp)
	addi $sp, $sp, 4
	lw $t1, -5912($fp)
	li $t2, 0
	bne $t1, $t2, label1037
	j label1035
label1037:
	lw $t0, -720($fp)
	sw $t0, -5916($fp)
	lw $t1, -5916($fp)
	li $t2, 0
	bne $t1, $t2, label1036
	j label1035
label1036:
	li $t0, 0
	sw $t0, -5920($fp)
	lw $t0, -5752($fp)
	sw $t0, -5924($fp)
	addi $sp, $sp, -4
	lw $t0, -5924($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -5928($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5932($fp)
	li $t0, 0
	sw $t0, -5936($fp)
	lw $t0, -804($fp)
	sw $t0, -5940($fp)
	li $t0, 6824
	sw $t0, -5944($fp)
	lw $t1, -5940($fp)
	lw $t2, -5944($fp)
	blt $t1, $t2, label1042
	j label1043
label1042:
	li $t0, 1
	sw $t0, -5936($fp)
label1043:
	lw $t0, -1044($fp)
	sw $t0, -5948($fp)
	lw $t1, -5936($fp)
	lw $t2, -5948($fp)
	bgt $t1, $t2, label1040
	j label1041
label1040:
	li $t0, 1
	sw $t0, -5932($fp)
label1041:
	li $t0, 0
	sw $t0, -5952($fp)
	li $t0, 0
	sw $t0, -5956($fp)
	li $t0, 7366
	sw $t0, -5960($fp)
	lw $t1, -5960($fp)
	li $t2, 0
	bne $t1, $t2, label1047
	j label1046
label1046:
	li $t0, 1
	sw $t0, -5956($fp)
label1047:
	li $t0, 50179
	sw $t0, -5964($fp)
	lw $t1, -5956($fp)
	lw $t2, -5964($fp)
	bne $t1, $t2, label1044
	j label1045
label1044:
	li $t0, 1
	sw $t0, -5952($fp)
label1045:
	li $t0, 0
	sw $t0, -5968($fp)
	lw $t0, -792($fp)
	sw $t0, -5972($fp)
	lw $t0, -5812($fp)
	sw $t0, -5976($fp)
	lw $t0, -5972($fp)
	lw $t1, -5976($fp)
	sub $t0, $t0, $t1
	sw $t0, -5980($fp)
	lw $t0, -840($fp)
	sw $t0, -5984($fp)
	lw $t0, -5980($fp)
	lw $t1, -5984($fp)
	add $t0, $t0, $t1
	sw $t0, -5988($fp)
	addi $sp, $sp, -4
	lw $t0, -5988($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -5992($fp)
	addi $sp, $sp, 8
	lw $t1, -5992($fp)
	li $t2, 0
	bne $t1, $t2, label1050
	j label1049
label1050:
	lw $t0, -504($fp)
	sw $t0, -5996($fp)
	lw $t1, -5996($fp)
	li $t2, 0
	bne $t1, $t2, label1048
	j label1049
label1048:
	li $t0, 1
	sw $t0, -5968($fp)
label1049:
	addi $sp, $sp, -4
	lw $t0, -5928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5968($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -6000($fp)
	addi $sp, $sp, 20
	lw $t1, -6000($fp)
	li $t2, 0
	bne $t1, $t2, label1039
	j label1038
label1038:
	li $t0, 1
	sw $t0, -5920($fp)
label1039:
	lw $t0, -804($fp)
	sw $t0, -6004($fp)
	li $t0, 0
	lw $t1, -6004($fp)
	sub $t0, $t0, $t1
	sw $t0, -6008($fp)
	lw $t0, -5920($fp)
	lw $t1, -6008($fp)
	sub $t0, $t0, $t1
	sw $t0, -6012($fp)
	lw $t1, -6012($fp)
	li $t2, 0
	bne $t1, $t2, label1034
	j label1035
label1034:
	li $t0, 1
	sw $t0, -5908($fp)
label1035:
	li $t0, 1090
	sw $t0, -6016($fp)
	li $t0, 11509
	sw $t0, -6020($fp)
	lw $t0, -6016($fp)
	lw $t1, -6020($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6024($fp)
	lw $t0, -5836($fp)
	sw $t0, -6028($fp)
	lw $t0, -6024($fp)
	lw $t1, -6028($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6032($fp)
	li $t0, 0
	sw $t0, -6036($fp)
	li $t0, 6260
	sw $t0, -6040($fp)
	li $t0, 0
	lw $t1, -6040($fp)
	sub $t0, $t0, $t1
	sw $t0, -6044($fp)
	li $t0, 59468
	sw $t0, -6048($fp)
	lw $t1, -6044($fp)
	lw $t2, -6048($fp)
	bge $t1, $t2, label1051
	j label1052
label1051:
	li $t0, 1
	sw $t0, -6036($fp)
label1052:
	li $t0, 15071
	sw $t0, -6052($fp)
	lw $t0, -6052($fp)
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -6056($fp)
	li $t0, 0
	sw $t0, -6060($fp)
	li $t0, 16950
	sw $t0, -6064($fp)
	li $t0, 47927
	sw $t0, -6068($fp)
	lw $t1, -6064($fp)
	lw $t2, -6068($fp)
	ble $t1, $t2, label1053
	j label1055
label1055:
	lw $t0, -5824($fp)
	sw $t0, -6072($fp)
	lw $t1, -6072($fp)
	li $t2, 0
	bne $t1, $t2, label1053
	j label1054
label1053:
	li $t0, 1
	sw $t0, -6060($fp)
label1054:
	addi $sp, $sp, -4
	lw $t0, -6032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6060($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -6076($fp)
	addi $sp, $sp, 20
	lw $t0, -1104($fp)
	sw $t0, -6080($fp)
	lw $t0, -6080($fp)
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	sw $t0, -6084($fp)
	lw $t0, -840($fp)
	sw $t0, -6088($fp)
	lw $t0, -6088($fp)
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	sw $t0, -6092($fp)
	li $t0, 0
	sw $t0, -6096($fp)
	lw $t0, -732($fp)
	sw $t0, -6100($fp)
	lw $t1, -6100($fp)
	li $t2, 0
	bne $t1, $t2, label1058
	j label1057
label1058:
	lw $t0, -840($fp)
	sw $t0, -6104($fp)
	lw $t1, -6104($fp)
	li $t2, 0
	bne $t1, $t2, label1056
	j label1057
label1056:
	li $t0, 1
	sw $t0, -6096($fp)
label1057:
	addi $t0, $fp, -84
	sw $t0, -6108($fp)
	lw $t0, -1080($fp)
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
	li $t0, 0
	sw $t0, -6128($fp)
	lw $t0, -5776($fp)
	sw $t0, -6132($fp)
	lw $t0, -5788($fp)
	sw $t0, -6136($fp)
	lw $t0, -6132($fp)
	lw $t1, -6136($fp)
	sub $t0, $t0, $t1
	sw $t0, -6140($fp)
	lw $t0, -816($fp)
	sw $t0, -6144($fp)
	lw $t1, -6140($fp)
	lw $t2, -6144($fp)
	bgt $t1, $t2, label1059
	j label1060
label1059:
	li $t0, 1
	sw $t0, -6128($fp)
label1060:
	addi $sp, $sp, -4
	lw $t0, -6124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6128($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6148($fp)
	addi $sp, $sp, 12
	li $t0, 3643
	sw $t0, -6152($fp)
	lw $t0, -6148($fp)
	lw $t1, -6152($fp)
	sub $t0, $t0, $t1
	sw $t0, -6156($fp)
	addi $sp, $sp, -4
	lw $t0, -6084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6156($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -6160($fp)
	addi $sp, $sp, 20
	lw $t0, -5800($fp)
	sw $t0, -6164($fp)
	lw $t0, -6160($fp)
	lw $t1, -6164($fp)
	add $t0, $t0, $t1
	sw $t0, -6168($fp)
	lw $t0, -732($fp)
	sw $t0, -6172($fp)
	li $t0, 0
	lw $t1, -6172($fp)
	sub $t0, $t0, $t1
	sw $t0, -6176($fp)
	lw $t0, -6168($fp)
	lw $t1, -6176($fp)
	add $t0, $t0, $t1
	sw $t0, -6180($fp)
	addi $t0, $fp, -64
	sw $t0, -6184($fp)
	li $t0, 1
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
	lw $t0, -6180($fp)
	lw $t1, -6200($fp)
	sub $t0, $t0, $t1
	sw $t0, -6204($fp)
	lw $t0, -5716($fp)
	sw $t0, -6208($fp)
	lw $t0, -6208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5728($fp)
	sw $t0, -6212($fp)
	lw $t0, -6212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5740($fp)
	sw $t0, -6216($fp)
	lw $t0, -6216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5752($fp)
	sw $t0, -6220($fp)
	lw $t0, -6220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5764($fp)
	sw $t0, -6224($fp)
	lw $t0, -6224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6228($fp)
	lw $t0, -5716($fp)
	sw $t0, -6232($fp)
	li $t0, 0
	lw $t1, -6232($fp)
	sub $t0, $t0, $t1
	sw $t0, -6236($fp)
	li $t0, 0
	sw $t0, -6240($fp)
	lw $t0, -744($fp)
	sw $t0, -6244($fp)
	li $t0, 0
	lw $t1, -6244($fp)
	sub $t0, $t0, $t1
	sw $t0, -6248($fp)
	lw $t1, -6248($fp)
	li $t2, 0
	bne $t1, $t2, label1064
	j label1063
label1063:
	li $t0, 1
	sw $t0, -6240($fp)
label1064:
	li $t0, 0
	sw $t0, -6252($fp)
	li $t0, 27563
	sw $t0, -6256($fp)
	li $t0, 20827
	sw $t0, -6260($fp)
	lw $t1, -6256($fp)
	lw $t2, -6260($fp)
	ble $t1, $t2, label1065
	j label1067
label1067:
	lw $t0, -972($fp)
	sw $t0, -6264($fp)
	lw $t1, -6264($fp)
	li $t2, 0
	bne $t1, $t2, label1065
	j label1066
label1065:
	li $t0, 1
	sw $t0, -6252($fp)
label1066:
	li $t0, 59578
	sw $t0, -6268($fp)
	li $t0, 0
	lw $t1, -6268($fp)
	sub $t0, $t0, $t1
	sw $t0, -6272($fp)
	li $t0, 0
	lw $t1, -6272($fp)
	sub $t0, $t0, $t1
	sw $t0, -6276($fp)
	li $t0, 64985
	sw $t0, -6280($fp)
	lw $t0, -6280($fp)
	sw $t0, -5728($fp)
	lw $t0, -5728($fp)
	sw $t0, -6284($fp)
	addi $sp, $sp, -4
	lw $t0, -6240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6284($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -6288($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -6292($fp)
	lw $t0, -5740($fp)
	sw $t0, -6296($fp)
	lw $t1, -6296($fp)
	li $t2, 0
	bne $t1, $t2, label1069
	j label1068
label1068:
	li $t0, 1
	sw $t0, -6292($fp)
label1069:
	lw $t0, -6288($fp)
	lw $t1, -6292($fp)
	mul $t0, $t0, $t1
	sw $t0, -6300($fp)
	li $t0, 0
	lw $t1, -6300($fp)
	sub $t0, $t0, $t1
	sw $t0, -6304($fp)
	lw $t1, -6236($fp)
	lw $t2, -6304($fp)
	bne $t1, $t2, label1061
	j label1062
label1061:
	li $t0, 1
	sw $t0, -6228($fp)
label1062:
	lw $ra, -4($fp)
	lw $v0, -6228($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -6308($fp)
	addi $t0, $fp, -96
	sw $t0, -6312($fp)
	li $t0, 1
	sw $t0, -6316($fp)
	li $t0, 4
	lw $t1, -6316($fp)
	mul $t0, $t0, $t1
	sw $t0, -6320($fp)
	lw $t0, -6320($fp)
	lw $t1, -6312($fp)
	add $t0, $t0, $t1
	sw $t0, -6324($fp)
	lw $t0, -6324($fp)
	lw $t1, 0($t0)
	sw $t1, -6328($fp)
	li $t0, 17399
	sw $t0, -6332($fp)
	lw $t0, -6328($fp)
	lw $t1, -6332($fp)
	sub $t0, $t0, $t1
	sw $t0, -6336($fp)
	lw $t1, -6336($fp)
	li $t2, 0
	bne $t1, $t2, label1075
	j label1074
label1075:
	li $t0, 17718
	sw $t0, -6340($fp)
	li $t0, 0
	lw $t1, -6340($fp)
	sub $t0, $t0, $t1
	sw $t0, -6344($fp)
	lw $t1, -6344($fp)
	li $t2, 0
	bne $t1, $t2, label1073
	j label1074
label1073:
	li $t0, 1
	sw $t0, -6308($fp)
label1074:
	lw $t0, -6308($fp)
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -6348($fp)
	lw $t1, -6348($fp)
	li $t2, 0
	bne $t1, $t2, label1070
	j label1071
label1070:
	li $t0, 0
	sw $t0, -6352($fp)
	lw $t0, -948($fp)
	sw $t0, -6356($fp)
	lw $t1, -6356($fp)
	li $t2, 0
	bne $t1, $t2, label1077
	j label1076
label1076:
	li $t0, 1
	sw $t0, -6352($fp)
label1077:
	li $t0, 0
	lw $t1, -6352($fp)
	sub $t0, $t0, $t1
	sw $t0, -6360($fp)
	lw $t0, -5764($fp)
	sw $t0, -6364($fp)
	lw $t0, -6360($fp)
	lw $t1, -6364($fp)
	sub $t0, $t0, $t1
	sw $t0, -6368($fp)
	lw $ra, -4($fp)
	lw $v0, -6368($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1072
label1071:
	li $t0, 2746
	sw $t0, -6372($fp)
	lw $t0, -6372($fp)
	sw $t0, -6376($fp)
	lw $t0, -6376($fp)
	sw $t0, -6380($fp)
	li $t0, 25734
	sw $t0, -6384($fp)
	lw $t0, -6384($fp)
	sw $t0, -6388($fp)
	lw $t0, -6388($fp)
	sw $t0, -6392($fp)
	li $t0, 0
	sw $t0, -6396($fp)
	li $t0, 0
	sw $t0, -6400($fp)
	li $t0, 31763
	sw $t0, -6404($fp)
	lw $t0, -480($fp)
	sw $t0, -6408($fp)
	addi $sp, $sp, -4
	lw $t0, -6408($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -6412($fp)
	addi $sp, $sp, 8
	lw $t0, -6404($fp)
	lw $t1, -6412($fp)
	sub $t0, $t0, $t1
	sw $t0, -6416($fp)
	lw $t0, -864($fp)
	sw $t0, -6420($fp)
	li $t0, 26911
	sw $t0, -6424($fp)
	lw $t0, -6420($fp)
	lw $t1, -6424($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6428($fp)
	li $t0, 14606
	sw $t0, -6432($fp)
	lw $t0, -6428($fp)
	lw $t1, -6432($fp)
	add $t0, $t0, $t1
	sw $t0, -6436($fp)
	lw $t1, -6416($fp)
	lw $t2, -6436($fp)
	blt $t1, $t2, label1080
	j label1081
label1080:
	li $t0, 1
	sw $t0, -6400($fp)
label1081:
	li $t0, 0
	sw $t0, -6440($fp)
	li $t0, 10705
	sw $t0, -6444($fp)
	lw $t1, -6444($fp)
	li $t2, 0
	bne $t1, $t2, label1083
	j label1082
label1082:
	li $t0, 1
	sw $t0, -6440($fp)
label1083:
	lw $t1, -6400($fp)
	lw $t2, -6440($fp)
	bgt $t1, $t2, label1078
	j label1079
label1078:
	li $t0, 1
	sw $t0, -6396($fp)
label1079:
	li $t0, 0
	sw $t0, -6448($fp)
	lw $t0, -5752($fp)
	sw $t0, -6452($fp)
	lw $t1, -6452($fp)
	li $t2, 0
	bne $t1, $t2, label1085
	j label1084
label1084:
	li $t0, 1
	sw $t0, -6448($fp)
label1085:
	li $t0, 50628
	sw $t0, -6456($fp)
	lw $t0, -6456($fp)
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -6460($fp)
	li $t0, 34419
	sw $t0, -6464($fp)
	lw $t0, -6464($fp)
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	sw $t0, -6468($fp)
	li $t0, 0
	sw $t0, -6472($fp)
	lw $t0, -6376($fp)
	sw $t0, -6476($fp)
	lw $t1, -6476($fp)
	li $t2, 0
	bne $t1, $t2, label1087
	j label1086
label1086:
	li $t0, 1
	sw $t0, -6472($fp)
label1087:
	li $t0, 0
	sw $t0, -6480($fp)
	li $t0, 49776
	sw $t0, -6484($fp)
	li $t0, 43804
	sw $t0, -6488($fp)
	lw $t0, -6484($fp)
	lw $t1, -6488($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6492($fp)
	lw $t1, -6492($fp)
	li $t2, 0
	bne $t1, $t2, label1088
	j label1090
label1090:
	li $t0, 9788
	sw $t0, -6496($fp)
	lw $t1, -6496($fp)
	li $t2, 0
	bne $t1, $t2, label1088
	j label1089
label1088:
	li $t0, 1
	sw $t0, -6480($fp)
label1089:
	addi $sp, $sp, -4
	lw $t0, -6460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6480($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -6500($fp)
	addi $sp, $sp, 20
	lw $t0, -792($fp)
	sw $t0, -6504($fp)
	lw $t0, -6500($fp)
	lw $t1, -6504($fp)
	sub $t0, $t0, $t1
	sw $t0, -6508($fp)
	lw $t0, -792($fp)
	sw $t0, -6512($fp)
	lw $t0, -972($fp)
	sw $t0, -6516($fp)
	lw $t0, -6512($fp)
	lw $t1, -6516($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6520($fp)
	lw $t0, -5764($fp)
	sw $t0, -6524($fp)
	lw $t0, -6520($fp)
	lw $t1, -6524($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6528($fp)
	addi $t0, $fp, -52
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
	addi $sp, $sp, -4
	lw $t0, -6508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6548($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -6552($fp)
	addi $sp, $sp, 16
	lw $t0, -6448($fp)
	lw $t1, -6552($fp)
	sub $t0, $t0, $t1
	sw $t0, -6556($fp)
	li $t0, 0
	sw $t0, -6560($fp)
	lw $t0, -516($fp)
	sw $t0, -6564($fp)
	li $t0, 32998
	sw $t0, -6568($fp)
	li $t0, 0
	sw $t0, -6572($fp)
	li $t0, 16810
	sw $t0, -6576($fp)
	lw $t0, -852($fp)
	sw $t0, -6580($fp)
	lw $t0, -6576($fp)
	lw $t1, -6580($fp)
	sub $t0, $t0, $t1
	sw $t0, -6584($fp)
	li $t0, 164
	sw $t0, -6588($fp)
	lw $t1, -6584($fp)
	lw $t2, -6588($fp)
	bgt $t1, $t2, label1094
	j label1095
label1094:
	li $t0, 1
	sw $t0, -6572($fp)
label1095:
	li $t0, 0
	sw $t0, -6592($fp)
	lw $t0, -744($fp)
	sw $t0, -6596($fp)
	lw $t0, -1308($fp)
	sw $t0, -6600($fp)
	lw $t1, -6596($fp)
	lw $t2, -6600($fp)
	bge $t1, $t2, label1098
	j label1097
label1098:
	li $t0, 26738
	sw $t0, -6604($fp)
	lw $t1, -6604($fp)
	li $t2, 0
	bne $t1, $t2, label1096
	j label1097
label1096:
	li $t0, 1
	sw $t0, -6592($fp)
label1097:
	lw $t0, -504($fp)
	sw $t0, -6608($fp)
	lw $t0, -6608($fp)
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	sw $t0, -6612($fp)
	addi $sp, $sp, -4
	lw $t0, -6568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6612($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -6616($fp)
	addi $sp, $sp, 20
	lw $t0, -6564($fp)
	lw $t1, -6616($fp)
	mul $t0, $t0, $t1
	sw $t0, -6620($fp)
	lw $t1, -6620($fp)
	li $t2, 0
	bne $t1, $t2, label1091
	j label1093
label1093:
	lw $t0, -972($fp)
	sw $t0, -6624($fp)
	lw $t0, -6388($fp)
	sw $t0, -6628($fp)
	lw $t0, -6624($fp)
	lw $t1, -6628($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6632($fp)
	lw $t0, -1092($fp)
	sw $t0, -6636($fp)
	lw $t0, -6632($fp)
	lw $t1, -6636($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6640($fp)
	li $t0, 10742
	sw $t0, -6644($fp)
	lw $t1, -6640($fp)
	lw $t2, -6644($fp)
	bne $t1, $t2, label1091
	j label1092
label1091:
	li $t0, 1
	sw $t0, -6560($fp)
label1092:
	li $t0, 0
	sw $t0, -6648($fp)
	li $t0, 1254
	sw $t0, -6652($fp)
	lw $t1, -6652($fp)
	li $t2, 0
	bne $t1, $t2, label1100
	j label1099
label1099:
	li $t0, 1
	sw $t0, -6648($fp)
label1100:
	lw $t0, -984($fp)
	sw $t0, -6656($fp)
	lw $t0, -6648($fp)
	lw $t1, -6656($fp)
	add $t0, $t0, $t1
	sw $t0, -6660($fp)
	addi $sp, $sp, -4
	lw $t0, -6660($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -6664($fp)
	addi $sp, $sp, 8
label1072:
label1101:
	lw $t0, -864($fp)
	sw $t0, -6668($fp)
	li $t0, 0
	sw $t0, -6672($fp)
	li $t0, 44507
	sw $t0, -6676($fp)
	li $t0, 14386
	sw $t0, -6680($fp)
	lw $t0, -6676($fp)
	lw $t1, -6680($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6684($fp)
	li $t0, 57038
	sw $t0, -6688($fp)
	lw $t1, -6684($fp)
	lw $t2, -6688($fp)
	beq $t1, $t2, label1107
	j label1108
label1107:
	li $t0, 1
	sw $t0, -6672($fp)
label1108:
	li $t0, 0
	sw $t0, -6692($fp)
	lw $t0, -1308($fp)
	sw $t0, -6696($fp)
	lw $t1, -6696($fp)
	li $t2, 0
	bne $t1, $t2, label1110
	j label1111
label1111:
	lw $t0, -996($fp)
	sw $t0, -6700($fp)
	lw $t1, -6700($fp)
	li $t2, 0
	bne $t1, $t2, label1109
	j label1110
label1109:
	li $t0, 1
	sw $t0, -6692($fp)
label1110:
	addi $sp, $sp, -4
	lw $t0, -6668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6692($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -6704($fp)
	addi $sp, $sp, 16
	lw $t1, -6704($fp)
	li $t2, 0
	bne $t1, $t2, label1106
	j label1103
label1106:
	lw $t0, -804($fp)
	sw $t0, -6708($fp)
	lw $t0, -5740($fp)
	sw $t0, -6712($fp)
	lw $t1, -6708($fp)
	lw $t2, -6712($fp)
	beq $t1, $t2, label1105
	j label1103
label1105:
	lw $t0, -996($fp)
	sw $t0, -6716($fp)
	lw $t0, -1020($fp)
	sw $t0, -6720($fp)
	lw $t0, -6716($fp)
	lw $t1, -6720($fp)
	mul $t0, $t0, $t1
	sw $t0, -6724($fp)
	lw $t0, -1008($fp)
	sw $t0, -6728($fp)
	lw $t0, -6724($fp)
	lw $t1, -6728($fp)
	add $t0, $t0, $t1
	sw $t0, -6732($fp)
	lw $t1, -6732($fp)
	li $t2, 0
	bne $t1, $t2, label1104
	j label1103
label1104:
	lw $t0, -5764($fp)
	sw $t0, -6736($fp)
	lw $t1, -6736($fp)
	li $t2, 0
	bne $t1, $t2, label1102
	j label1103
label1102:
label1112:
	addi $t0, $fp, -84
	sw $t0, -6740($fp)
	li $t0, 3
	sw $t0, -6744($fp)
	li $t0, 4
	lw $t1, -6744($fp)
	mul $t0, $t0, $t1
	sw $t0, -6748($fp)
	lw $t0, -6748($fp)
	lw $t1, -6740($fp)
	add $t0, $t0, $t1
	sw $t0, -6752($fp)
	lw $t0, -6752($fp)
	lw $t1, 0($t0)
	sw $t1, -6756($fp)
	lw $t0, -6756($fp)
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	sw $t0, -6760($fp)
	lw $t0, -6760($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -6764($fp)
	lw $t1, -6764($fp)
	li $t2, 0
	bne $t1, $t2, label1113
	j label1114
label1113:
	li $t0, 51080
	sw $t0, -6768($fp)
	j label1112
label1114:
	j label1101
label1103:
	j label1025
label1027:
	li $t0, 4840
	sw $t0, -6772($fp)
	li $t0, 0
	lw $t1, -6772($fp)
	sub $t0, $t0, $t1
	sw $t0, -6776($fp)
	addi $t0, $fp, -32
	sw $t0, -6780($fp)
	li $t0, 0
	sw $t0, -6784($fp)
	li $t0, 4
	lw $t1, -6784($fp)
	mul $t0, $t0, $t1
	sw $t0, -6788($fp)
	lw $t0, -6788($fp)
	lw $t1, -6780($fp)
	add $t0, $t0, $t1
	sw $t0, -6792($fp)
	lw $t0, -6792($fp)
	lw $t1, 0($t0)
	sw $t1, -6796($fp)
	lw $t0, -6796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -6800($fp)
	li $t0, 1
	sw $t0, -6804($fp)
	li $t0, 4
	lw $t1, -6804($fp)
	mul $t0, $t0, $t1
	sw $t0, -6808($fp)
	lw $t0, -6808($fp)
	lw $t1, -6800($fp)
	add $t0, $t0, $t1
	sw $t0, -6812($fp)
	lw $t0, -6812($fp)
	lw $t1, 0($t0)
	sw $t1, -6816($fp)
	lw $t0, -6816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -6820($fp)
	li $t0, 2
	sw $t0, -6824($fp)
	li $t0, 4
	lw $t1, -6824($fp)
	mul $t0, $t0, $t1
	sw $t0, -6828($fp)
	lw $t0, -6828($fp)
	lw $t1, -6820($fp)
	add $t0, $t0, $t1
	sw $t0, -6832($fp)
	lw $t0, -6832($fp)
	lw $t1, 0($t0)
	sw $t1, -6836($fp)
	lw $t0, -6836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -6840($fp)
	li $t0, 3
	sw $t0, -6844($fp)
	li $t0, 4
	lw $t1, -6844($fp)
	mul $t0, $t0, $t1
	sw $t0, -6848($fp)
	lw $t0, -6848($fp)
	lw $t1, -6840($fp)
	add $t0, $t0, $t1
	sw $t0, -6852($fp)
	lw $t0, -6852($fp)
	lw $t1, 0($t0)
	sw $t1, -6856($fp)
	lw $t0, -6856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -6860($fp)
	li $t0, 4
	sw $t0, -6864($fp)
	li $t0, 4
	lw $t1, -6864($fp)
	mul $t0, $t0, $t1
	sw $t0, -6868($fp)
	lw $t0, -6868($fp)
	lw $t1, -6860($fp)
	add $t0, $t0, $t1
	sw $t0, -6872($fp)
	lw $t0, -6872($fp)
	lw $t1, 0($t0)
	sw $t1, -6876($fp)
	lw $t0, -6876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -6880($fp)
	li $t0, 5
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
	lw $t0, -6896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -6900($fp)
	li $t0, 6
	sw $t0, -6904($fp)
	li $t0, 4
	lw $t1, -6904($fp)
	mul $t0, $t0, $t1
	sw $t0, -6908($fp)
	lw $t0, -6908($fp)
	lw $t1, -6900($fp)
	add $t0, $t0, $t1
	sw $t0, -6912($fp)
	lw $t0, -6912($fp)
	lw $t1, 0($t0)
	sw $t1, -6916($fp)
	lw $t0, -6916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -6920($fp)
	li $t0, 0
	sw $t0, -6924($fp)
	li $t0, 4
	lw $t1, -6924($fp)
	mul $t0, $t0, $t1
	sw $t0, -6928($fp)
	lw $t0, -6928($fp)
	lw $t1, -6920($fp)
	add $t0, $t0, $t1
	sw $t0, -6932($fp)
	lw $t0, -6932($fp)
	lw $t1, 0($t0)
	sw $t1, -6936($fp)
	lw $t0, -6936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -6940($fp)
	li $t0, 1
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
	lw $t0, -6956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -6960($fp)
	li $t0, 2
	sw $t0, -6964($fp)
	li $t0, 4
	lw $t1, -6964($fp)
	mul $t0, $t0, $t1
	sw $t0, -6968($fp)
	lw $t0, -6968($fp)
	lw $t1, -6960($fp)
	add $t0, $t0, $t1
	sw $t0, -6972($fp)
	lw $t0, -6972($fp)
	lw $t1, 0($t0)
	sw $t1, -6976($fp)
	lw $t0, -6976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -6980($fp)
	li $t0, 3
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
	addi $t0, $fp, -52
	sw $t0, -7000($fp)
	li $t0, 4
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
	lw $t0, -456($fp)
	sw $t0, -7020($fp)
	lw $t0, -7020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -7024($fp)
	lw $t0, -7024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -7028($fp)
	lw $t0, -7028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -7032($fp)
	lw $t0, -7032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -7036($fp)
	lw $t0, -7036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -516($fp)
	sw $t0, -7040($fp)
	lw $t0, -7040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -7044($fp)
	li $t0, 0
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
	addi $t0, $fp, -64
	sw $t0, -7064($fp)
	li $t0, 1
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
	addi $t0, $fp, -64
	sw $t0, -7084($fp)
	li $t0, 2
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
	addi $t0, $fp, -84
	sw $t0, -7104($fp)
	li $t0, 0
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
	addi $t0, $fp, -84
	sw $t0, -7124($fp)
	li $t0, 1
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
	addi $t0, $fp, -84
	sw $t0, -7144($fp)
	li $t0, 2
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
	addi $t0, $fp, -84
	sw $t0, -7164($fp)
	li $t0, 3
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
	addi $t0, $fp, -84
	sw $t0, -7184($fp)
	li $t0, 4
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
	lw $t0, -720($fp)
	sw $t0, -7204($fp)
	lw $t0, -7204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -732($fp)
	sw $t0, -7208($fp)
	lw $t0, -7208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -744($fp)
	sw $t0, -7212($fp)
	lw $t0, -7212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -756($fp)
	sw $t0, -7216($fp)
	lw $t0, -7216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -768($fp)
	sw $t0, -7220($fp)
	lw $t0, -7220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -780($fp)
	sw $t0, -7224($fp)
	lw $t0, -7224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -792($fp)
	sw $t0, -7228($fp)
	lw $t0, -7228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -804($fp)
	sw $t0, -7232($fp)
	lw $t0, -7232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -816($fp)
	sw $t0, -7236($fp)
	lw $t0, -7236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -828($fp)
	sw $t0, -7240($fp)
	lw $t0, -7240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -840($fp)
	sw $t0, -7244($fp)
	lw $t0, -7244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -852($fp)
	sw $t0, -7248($fp)
	lw $t0, -7248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -864($fp)
	sw $t0, -7252($fp)
	lw $t0, -7252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -7256($fp)
	li $t0, 0
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
	addi $t0, $fp, -96
	sw $t0, -7276($fp)
	li $t0, 1
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
	addi $t0, $fp, -96
	sw $t0, -7296($fp)
	li $t0, 2
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
	lw $t0, -948($fp)
	sw $t0, -7316($fp)
	lw $t0, -7316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -960($fp)
	sw $t0, -7320($fp)
	lw $t0, -7320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -972($fp)
	sw $t0, -7324($fp)
	lw $t0, -7324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -984($fp)
	sw $t0, -7328($fp)
	lw $t0, -7328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -996($fp)
	sw $t0, -7332($fp)
	lw $t0, -7332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1008($fp)
	sw $t0, -7336($fp)
	lw $t0, -7336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1020($fp)
	sw $t0, -7340($fp)
	lw $t0, -7340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1032($fp)
	sw $t0, -7344($fp)
	lw $t0, -7344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1044($fp)
	sw $t0, -7348($fp)
	lw $t0, -7348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1056($fp)
	sw $t0, -7352($fp)
	lw $t0, -7352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1068($fp)
	sw $t0, -7356($fp)
	lw $t0, -7356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1080($fp)
	sw $t0, -7360($fp)
	lw $t0, -7360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1092($fp)
	sw $t0, -7364($fp)
	lw $t0, -7364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1104($fp)
	sw $t0, -7368($fp)
	lw $t0, -7368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -7372($fp)
	li $t0, 0
	sw $t0, -7376($fp)
	li $t0, 4
	lw $t1, -7376($fp)
	mul $t0, $t0, $t1
	sw $t0, -7380($fp)
	lw $t0, -7380($fp)
	lw $t1, -7372($fp)
	add $t0, $t0, $t1
	sw $t0, -7384($fp)
	lw $t0, -7384($fp)
	lw $t1, 0($t0)
	sw $t1, -7388($fp)
	lw $t0, -7388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -7392($fp)
	li $t0, 1
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
	addi $t0, $fp, -128
	sw $t0, -7412($fp)
	li $t0, 2
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
	addi $t0, $fp, -128
	sw $t0, -7432($fp)
	li $t0, 3
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
	addi $t0, $fp, -128
	sw $t0, -7452($fp)
	li $t0, 4
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
	addi $t0, $fp, -128
	sw $t0, -7472($fp)
	li $t0, 5
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
	addi $t0, $fp, -128
	sw $t0, -7492($fp)
	li $t0, 6
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
	addi $t0, $fp, -128
	sw $t0, -7512($fp)
	li $t0, 7
	sw $t0, -7516($fp)
	li $t0, 4
	lw $t1, -7516($fp)
	mul $t0, $t0, $t1
	sw $t0, -7520($fp)
	lw $t0, -7520($fp)
	lw $t1, -7512($fp)
	add $t0, $t0, $t1
	sw $t0, -7524($fp)
	lw $t0, -7524($fp)
	lw $t1, 0($t0)
	sw $t1, -7528($fp)
	lw $t0, -7528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1308($fp)
	sw $t0, -7532($fp)
	lw $t0, -7532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -7536($fp)
	li $t0, 0
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
	addi $t0, $fp, -160
	sw $t0, -7556($fp)
	li $t0, 1
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
	addi $t0, $fp, -160
	sw $t0, -7576($fp)
	li $t0, 2
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
	addi $t0, $fp, -160
	sw $t0, -7596($fp)
	li $t0, 3
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
	addi $t0, $fp, -160
	sw $t0, -7616($fp)
	li $t0, 4
	sw $t0, -7620($fp)
	li $t0, 4
	lw $t1, -7620($fp)
	mul $t0, $t0, $t1
	sw $t0, -7624($fp)
	lw $t0, -7624($fp)
	lw $t1, -7616($fp)
	add $t0, $t0, $t1
	sw $t0, -7628($fp)
	lw $t0, -7628($fp)
	lw $t1, 0($t0)
	sw $t1, -7632($fp)
	lw $t0, -7632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -7636($fp)
	li $t0, 5
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
	addi $t0, $fp, -160
	sw $t0, -7656($fp)
	li $t0, 6
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
	addi $t0, $fp, -160
	sw $t0, -7676($fp)
	li $t0, 7
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
	li $t0, 0
	sw $t0, -7696($fp)
	lw $t0, -1080($fp)
	sw $t0, -7700($fp)
	lw $t0, -1044($fp)
	sw $t0, -7704($fp)
	lw $t0, -7700($fp)
	lw $t1, -7704($fp)
	mul $t0, $t0, $t1
	sw $t0, -7708($fp)
	lw $t0, -1020($fp)
	sw $t0, -7712($fp)
	li $t0, 34663
	sw $t0, -7716($fp)
	lw $t0, -7712($fp)
	lw $t1, -7716($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7720($fp)
	lw $t1, -7708($fp)
	lw $t2, -7720($fp)
	ble $t1, $t2, label1115
	j label1116
label1115:
	li $t0, 1
	sw $t0, -7696($fp)
label1116:
	lw $t0, -7696($fp)
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -7724($fp)
	lw $ra, -4($fp)
	lw $v0, -7724($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f14:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2664
	li $t0, 37768
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	li $t0, 55449
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	li $t0, 52062
	sw $t0, -124($fp)
	addi $t0, $fp, -28
	sw $t0, -128($fp)
	li $t0, 0
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -136($fp)
	lw $t0, -128($fp)
	lw $t1, -136($fp)
	add $t0, $t0, $t1
	sw $t0, -140($fp)
	lw $t0, -124($fp)
	lw $t1, -140($fp)
	sw $t0, 0($t1)
	lw $t0, -140($fp)
	lw $t1, 0($t0)
	sw $t1, -144($fp)
	li $t0, 55487
	sw $t0, -148($fp)
	addi $t0, $fp, -28
	sw $t0, -152($fp)
	li $t0, 1
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -160($fp)
	lw $t0, -152($fp)
	lw $t1, -160($fp)
	add $t0, $t0, $t1
	sw $t0, -164($fp)
	lw $t0, -148($fp)
	lw $t1, -164($fp)
	sw $t0, 0($t1)
	lw $t0, -164($fp)
	lw $t1, 0($t0)
	sw $t1, -168($fp)
	li $t0, 58196
	sw $t0, -172($fp)
	addi $t0, $fp, -28
	sw $t0, -176($fp)
	li $t0, 2
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
	li $t0, 12261
	sw $t0, -196($fp)
	addi $t0, $fp, -28
	sw $t0, -200($fp)
	li $t0, 3
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -208($fp)
	lw $t0, -200($fp)
	lw $t1, -208($fp)
	add $t0, $t0, $t1
	sw $t0, -212($fp)
	lw $t0, -196($fp)
	lw $t1, -212($fp)
	sw $t0, 0($t1)
	lw $t0, -212($fp)
	lw $t1, 0($t0)
	sw $t1, -216($fp)
	li $t0, 21714
	sw $t0, -220($fp)
	addi $t0, $fp, -28
	sw $t0, -224($fp)
	li $t0, 4
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -232($fp)
	lw $t0, -224($fp)
	lw $t1, -232($fp)
	add $t0, $t0, $t1
	sw $t0, -236($fp)
	lw $t0, -220($fp)
	lw $t1, -236($fp)
	sw $t0, 0($t1)
	lw $t0, -236($fp)
	lw $t1, 0($t0)
	sw $t1, -240($fp)
	li $t0, 19571
	sw $t0, -244($fp)
	addi $t0, $fp, -28
	sw $t0, -248($fp)
	li $t0, 5
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
	li $t0, 26867
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	li $t0, 32419
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	li $t0, 18183
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
	li $t0, 29289
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -312($fp)
	li $t0, 16659
	sw $t0, -316($fp)
	addi $t0, $fp, -60
	sw $t0, -320($fp)
	li $t0, 0
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
	li $t0, 61987
	sw $t0, -340($fp)
	addi $t0, $fp, -60
	sw $t0, -344($fp)
	li $t0, 1
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
	li $t0, 39078
	sw $t0, -364($fp)
	addi $t0, $fp, -60
	sw $t0, -368($fp)
	li $t0, 2
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
	li $t0, 51079
	sw $t0, -388($fp)
	addi $t0, $fp, -60
	sw $t0, -392($fp)
	li $t0, 3
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
	li $t0, 47080
	sw $t0, -412($fp)
	addi $t0, $fp, -60
	sw $t0, -416($fp)
	li $t0, 4
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
	li $t0, 280
	sw $t0, -436($fp)
	addi $t0, $fp, -60
	sw $t0, -440($fp)
	li $t0, 5
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
	li $t0, 2353
	sw $t0, -460($fp)
	addi $t0, $fp, -60
	sw $t0, -464($fp)
	li $t0, 6
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
	li $t0, 47244
	sw $t0, -484($fp)
	addi $t0, $fp, -60
	sw $t0, -488($fp)
	li $t0, 7
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -496($fp)
	lw $t0, -488($fp)
	lw $t1, -496($fp)
	add $t0, $t0, $t1
	sw $t0, -500($fp)
	lw $t0, -484($fp)
	lw $t1, -500($fp)
	sw $t0, 0($t1)
	lw $t0, -500($fp)
	lw $t1, 0($t0)
	sw $t1, -504($fp)
	li $t0, 33279
	sw $t0, -508($fp)
	addi $t0, $fp, -96
	sw $t0, -512($fp)
	li $t0, 0
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -520($fp)
	lw $t0, -512($fp)
	lw $t1, -520($fp)
	add $t0, $t0, $t1
	sw $t0, -524($fp)
	lw $t0, -508($fp)
	lw $t1, -524($fp)
	sw $t0, 0($t1)
	lw $t0, -524($fp)
	lw $t1, 0($t0)
	sw $t1, -528($fp)
	li $t0, 13096
	sw $t0, -532($fp)
	addi $t0, $fp, -96
	sw $t0, -536($fp)
	li $t0, 1
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -544($fp)
	lw $t0, -536($fp)
	lw $t1, -544($fp)
	add $t0, $t0, $t1
	sw $t0, -548($fp)
	lw $t0, -532($fp)
	lw $t1, -548($fp)
	sw $t0, 0($t1)
	lw $t0, -548($fp)
	lw $t1, 0($t0)
	sw $t1, -552($fp)
	li $t0, 48498
	sw $t0, -556($fp)
	addi $t0, $fp, -96
	sw $t0, -560($fp)
	li $t0, 2
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -568($fp)
	lw $t0, -560($fp)
	lw $t1, -568($fp)
	add $t0, $t0, $t1
	sw $t0, -572($fp)
	lw $t0, -556($fp)
	lw $t1, -572($fp)
	sw $t0, 0($t1)
	lw $t0, -572($fp)
	lw $t1, 0($t0)
	sw $t1, -576($fp)
	li $t0, 12250
	sw $t0, -580($fp)
	addi $t0, $fp, -96
	sw $t0, -584($fp)
	li $t0, 3
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
	li $t0, 27482
	sw $t0, -604($fp)
	addi $t0, $fp, -96
	sw $t0, -608($fp)
	li $t0, 4
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
	li $t0, 40000
	sw $t0, -628($fp)
	addi $t0, $fp, -96
	sw $t0, -632($fp)
	li $t0, 5
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
	li $t0, 55064
	sw $t0, -652($fp)
	addi $t0, $fp, -96
	sw $t0, -656($fp)
	li $t0, 6
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
	li $t0, 41317
	sw $t0, -676($fp)
	addi $t0, $fp, -96
	sw $t0, -680($fp)
	li $t0, 7
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
	li $t0, 25544
	sw $t0, -700($fp)
	addi $t0, $fp, -96
	sw $t0, -704($fp)
	li $t0, 8
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
	li $t0, 0
	sw $t0, -724($fp)
	li $t0, 59904
	sw $t0, -728($fp)
	lw $t1, -728($fp)
	li $t2, 0
	bne $t1, $t2, label1118
	j label1117
label1117:
	li $t0, 1
	sw $t0, -724($fp)
label1118:
	li $t0, 0
	lw $t1, -724($fp)
	sub $t0, $t0, $t1
	sw $t0, -732($fp)
	lw $t0, -284($fp)
	sw $t0, -736($fp)
	li $t0, 0
	lw $t1, -736($fp)
	sub $t0, $t0, $t1
	sw $t0, -740($fp)
	lw $t0, -732($fp)
	lw $t1, -740($fp)
	add $t0, $t0, $t1
	sw $t0, -744($fp)
	lw $t0, -104($fp)
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -116($fp)
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -756($fp)
	li $t0, 0
	sw $t0, -760($fp)
	li $t0, 4
	lw $t1, -760($fp)
	mul $t0, $t0, $t1
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	lw $t1, -756($fp)
	add $t0, $t0, $t1
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	lw $t1, 0($t0)
	sw $t1, -772($fp)
	lw $t0, -772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -776($fp)
	li $t0, 1
	sw $t0, -780($fp)
	li $t0, 4
	lw $t1, -780($fp)
	mul $t0, $t0, $t1
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	lw $t1, -776($fp)
	add $t0, $t0, $t1
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	lw $t1, 0($t0)
	sw $t1, -792($fp)
	lw $t0, -792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -796($fp)
	li $t0, 2
	sw $t0, -800($fp)
	li $t0, 4
	lw $t1, -800($fp)
	mul $t0, $t0, $t1
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	lw $t1, -796($fp)
	add $t0, $t0, $t1
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	lw $t1, 0($t0)
	sw $t1, -812($fp)
	lw $t0, -812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -816($fp)
	li $t0, 3
	sw $t0, -820($fp)
	li $t0, 4
	lw $t1, -820($fp)
	mul $t0, $t0, $t1
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	lw $t1, -816($fp)
	add $t0, $t0, $t1
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	lw $t1, 0($t0)
	sw $t1, -832($fp)
	lw $t0, -832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -836($fp)
	li $t0, 4
	sw $t0, -840($fp)
	li $t0, 4
	lw $t1, -840($fp)
	mul $t0, $t0, $t1
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	lw $t1, -836($fp)
	add $t0, $t0, $t1
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	lw $t1, 0($t0)
	sw $t1, -852($fp)
	lw $t0, -852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -856($fp)
	li $t0, 5
	sw $t0, -860($fp)
	li $t0, 4
	lw $t1, -860($fp)
	mul $t0, $t0, $t1
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	lw $t1, -856($fp)
	add $t0, $t0, $t1
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	lw $t1, 0($t0)
	sw $t1, -872($fp)
	lw $t0, -872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -272($fp)
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -284($fp)
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -296($fp)
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -308($fp)
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -892($fp)
	li $t0, 0
	sw $t0, -896($fp)
	li $t0, 4
	lw $t1, -896($fp)
	mul $t0, $t0, $t1
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	lw $t1, -892($fp)
	add $t0, $t0, $t1
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	lw $t1, 0($t0)
	sw $t1, -908($fp)
	lw $t0, -908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -912($fp)
	li $t0, 1
	sw $t0, -916($fp)
	li $t0, 4
	lw $t1, -916($fp)
	mul $t0, $t0, $t1
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	lw $t1, -912($fp)
	add $t0, $t0, $t1
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	lw $t1, 0($t0)
	sw $t1, -928($fp)
	lw $t0, -928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -932($fp)
	li $t0, 2
	sw $t0, -936($fp)
	li $t0, 4
	lw $t1, -936($fp)
	mul $t0, $t0, $t1
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	lw $t1, -932($fp)
	add $t0, $t0, $t1
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	lw $t1, 0($t0)
	sw $t1, -948($fp)
	lw $t0, -948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -952($fp)
	li $t0, 3
	sw $t0, -956($fp)
	li $t0, 4
	lw $t1, -956($fp)
	mul $t0, $t0, $t1
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	lw $t1, -952($fp)
	add $t0, $t0, $t1
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	lw $t1, 0($t0)
	sw $t1, -968($fp)
	lw $t0, -968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -972($fp)
	li $t0, 4
	sw $t0, -976($fp)
	li $t0, 4
	lw $t1, -976($fp)
	mul $t0, $t0, $t1
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	lw $t1, -972($fp)
	add $t0, $t0, $t1
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	lw $t1, 0($t0)
	sw $t1, -988($fp)
	lw $t0, -988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -992($fp)
	li $t0, 5
	sw $t0, -996($fp)
	li $t0, 4
	lw $t1, -996($fp)
	mul $t0, $t0, $t1
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	lw $t1, -992($fp)
	add $t0, $t0, $t1
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	lw $t1, 0($t0)
	sw $t1, -1008($fp)
	lw $t0, -1008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1012($fp)
	li $t0, 6
	sw $t0, -1016($fp)
	li $t0, 4
	lw $t1, -1016($fp)
	mul $t0, $t0, $t1
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	lw $t1, -1012($fp)
	add $t0, $t0, $t1
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	lw $t1, 0($t0)
	sw $t1, -1028($fp)
	lw $t0, -1028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1032($fp)
	li $t0, 7
	sw $t0, -1036($fp)
	li $t0, 4
	lw $t1, -1036($fp)
	mul $t0, $t0, $t1
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	lw $t1, -1032($fp)
	add $t0, $t0, $t1
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	lw $t1, 0($t0)
	sw $t1, -1048($fp)
	lw $t0, -1048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -1052($fp)
	li $t0, 0
	sw $t0, -1056($fp)
	li $t0, 4
	lw $t1, -1056($fp)
	mul $t0, $t0, $t1
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	lw $t1, -1052($fp)
	add $t0, $t0, $t1
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	lw $t1, 0($t0)
	sw $t1, -1068($fp)
	lw $t0, -1068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -1072($fp)
	li $t0, 1
	sw $t0, -1076($fp)
	li $t0, 4
	lw $t1, -1076($fp)
	mul $t0, $t0, $t1
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	lw $t1, -1072($fp)
	add $t0, $t0, $t1
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	lw $t1, 0($t0)
	sw $t1, -1088($fp)
	lw $t0, -1088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -1092($fp)
	li $t0, 2
	sw $t0, -1096($fp)
	li $t0, 4
	lw $t1, -1096($fp)
	mul $t0, $t0, $t1
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	lw $t1, -1092($fp)
	add $t0, $t0, $t1
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	lw $t1, 0($t0)
	sw $t1, -1108($fp)
	lw $t0, -1108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -1112($fp)
	li $t0, 3
	sw $t0, -1116($fp)
	li $t0, 4
	lw $t1, -1116($fp)
	mul $t0, $t0, $t1
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	lw $t1, -1112($fp)
	add $t0, $t0, $t1
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	lw $t1, 0($t0)
	sw $t1, -1128($fp)
	lw $t0, -1128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -1132($fp)
	li $t0, 4
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
	addi $t0, $fp, -96
	sw $t0, -1152($fp)
	li $t0, 5
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
	addi $t0, $fp, -96
	sw $t0, -1172($fp)
	li $t0, 6
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
	addi $t0, $fp, -96
	sw $t0, -1192($fp)
	li $t0, 7
	sw $t0, -1196($fp)
	li $t0, 4
	lw $t1, -1196($fp)
	mul $t0, $t0, $t1
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	lw $t1, -1192($fp)
	add $t0, $t0, $t1
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	lw $t1, 0($t0)
	sw $t1, -1208($fp)
	lw $t0, -1208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -1212($fp)
	li $t0, 8
	sw $t0, -1216($fp)
	li $t0, 4
	lw $t1, -1216($fp)
	mul $t0, $t0, $t1
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	lw $t1, -1212($fp)
	add $t0, $t0, $t1
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	lw $t1, 0($t0)
	sw $t1, -1228($fp)
	lw $t0, -1228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1232($fp)
	lw $t0, -284($fp)
	sw $t0, -1236($fp)
	lw $t0, 4($fp)
	sw $t0, -1240($fp)
	li $t0, 0
	lw $t1, -1240($fp)
	sub $t0, $t0, $t1
	sw $t0, -1244($fp)
	li $t0, 0
	lw $t1, -1244($fp)
	sub $t0, $t0, $t1
	sw $t0, -1248($fp)
	addi $t0, $fp, -96
	sw $t0, -1252($fp)
	li $t0, 8
	sw $t0, -1256($fp)
	li $t0, 4
	lw $t1, -1256($fp)
	mul $t0, $t0, $t1
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	lw $t1, -1252($fp)
	add $t0, $t0, $t1
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	lw $t1, 0($t0)
	sw $t1, -1268($fp)
	lw $t0, -1248($fp)
	lw $t1, -1268($fp)
	add $t0, $t0, $t1
	sw $t0, -1272($fp)
	lw $t1, -1236($fp)
	lw $t2, -1272($fp)
	ble $t1, $t2, label1119
	j label1120
label1119:
	li $t0, 1
	sw $t0, -1232($fp)
label1120:
	lw $ra, -4($fp)
	lw $v0, -1232($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -104($fp)
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -116($fp)
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1284($fp)
	li $t0, 0
	sw $t0, -1288($fp)
	li $t0, 4
	lw $t1, -1288($fp)
	mul $t0, $t0, $t1
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	lw $t1, -1284($fp)
	add $t0, $t0, $t1
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	lw $t1, 0($t0)
	sw $t1, -1300($fp)
	lw $t0, -1300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1304($fp)
	li $t0, 1
	sw $t0, -1308($fp)
	li $t0, 4
	lw $t1, -1308($fp)
	mul $t0, $t0, $t1
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	lw $t1, -1304($fp)
	add $t0, $t0, $t1
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	lw $t1, 0($t0)
	sw $t1, -1320($fp)
	lw $t0, -1320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1324($fp)
	li $t0, 2
	sw $t0, -1328($fp)
	li $t0, 4
	lw $t1, -1328($fp)
	mul $t0, $t0, $t1
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	lw $t1, -1324($fp)
	add $t0, $t0, $t1
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	lw $t1, 0($t0)
	sw $t1, -1340($fp)
	lw $t0, -1340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1344($fp)
	li $t0, 3
	sw $t0, -1348($fp)
	li $t0, 4
	lw $t1, -1348($fp)
	mul $t0, $t0, $t1
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	lw $t1, -1344($fp)
	add $t0, $t0, $t1
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	lw $t1, 0($t0)
	sw $t1, -1360($fp)
	lw $t0, -1360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1364($fp)
	li $t0, 4
	sw $t0, -1368($fp)
	li $t0, 4
	lw $t1, -1368($fp)
	mul $t0, $t0, $t1
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	lw $t1, -1364($fp)
	add $t0, $t0, $t1
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	lw $t1, 0($t0)
	sw $t1, -1380($fp)
	lw $t0, -1380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1384($fp)
	li $t0, 5
	sw $t0, -1388($fp)
	li $t0, 4
	lw $t1, -1388($fp)
	mul $t0, $t0, $t1
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	lw $t1, -1384($fp)
	add $t0, $t0, $t1
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	lw $t1, 0($t0)
	sw $t1, -1400($fp)
	lw $t0, -1400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -272($fp)
	sw $t0, -1404($fp)
	lw $t0, -1404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -284($fp)
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -296($fp)
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -308($fp)
	sw $t0, -1416($fp)
	lw $t0, -1416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1420($fp)
	li $t0, 0
	sw $t0, -1424($fp)
	li $t0, 4
	lw $t1, -1424($fp)
	mul $t0, $t0, $t1
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	lw $t1, -1420($fp)
	add $t0, $t0, $t1
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	lw $t1, 0($t0)
	sw $t1, -1436($fp)
	lw $t0, -1436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1440($fp)
	li $t0, 1
	sw $t0, -1444($fp)
	li $t0, 4
	lw $t1, -1444($fp)
	mul $t0, $t0, $t1
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	lw $t1, -1440($fp)
	add $t0, $t0, $t1
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	lw $t1, 0($t0)
	sw $t1, -1456($fp)
	lw $t0, -1456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1460($fp)
	li $t0, 2
	sw $t0, -1464($fp)
	li $t0, 4
	lw $t1, -1464($fp)
	mul $t0, $t0, $t1
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	lw $t1, -1460($fp)
	add $t0, $t0, $t1
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	lw $t1, 0($t0)
	sw $t1, -1476($fp)
	lw $t0, -1476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1480($fp)
	li $t0, 3
	sw $t0, -1484($fp)
	li $t0, 4
	lw $t1, -1484($fp)
	mul $t0, $t0, $t1
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	lw $t1, -1480($fp)
	add $t0, $t0, $t1
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	lw $t1, 0($t0)
	sw $t1, -1496($fp)
	lw $t0, -1496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1500($fp)
	li $t0, 4
	sw $t0, -1504($fp)
	li $t0, 4
	lw $t1, -1504($fp)
	mul $t0, $t0, $t1
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	lw $t1, -1500($fp)
	add $t0, $t0, $t1
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	lw $t1, 0($t0)
	sw $t1, -1516($fp)
	lw $t0, -1516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1520($fp)
	li $t0, 5
	sw $t0, -1524($fp)
	li $t0, 4
	lw $t1, -1524($fp)
	mul $t0, $t0, $t1
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	lw $t1, -1520($fp)
	add $t0, $t0, $t1
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	lw $t1, 0($t0)
	sw $t1, -1536($fp)
	lw $t0, -1536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1540($fp)
	li $t0, 6
	sw $t0, -1544($fp)
	li $t0, 4
	lw $t1, -1544($fp)
	mul $t0, $t0, $t1
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	lw $t1, -1540($fp)
	add $t0, $t0, $t1
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	lw $t1, 0($t0)
	sw $t1, -1556($fp)
	lw $t0, -1556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1560($fp)
	li $t0, 7
	sw $t0, -1564($fp)
	li $t0, 4
	lw $t1, -1564($fp)
	mul $t0, $t0, $t1
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	lw $t1, -1560($fp)
	add $t0, $t0, $t1
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	lw $t1, 0($t0)
	sw $t1, -1576($fp)
	lw $t0, -1576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -1580($fp)
	li $t0, 0
	sw $t0, -1584($fp)
	li $t0, 4
	lw $t1, -1584($fp)
	mul $t0, $t0, $t1
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	lw $t1, -1580($fp)
	add $t0, $t0, $t1
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	lw $t1, 0($t0)
	sw $t1, -1596($fp)
	lw $t0, -1596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -1600($fp)
	li $t0, 1
	sw $t0, -1604($fp)
	li $t0, 4
	lw $t1, -1604($fp)
	mul $t0, $t0, $t1
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	lw $t1, -1600($fp)
	add $t0, $t0, $t1
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	lw $t1, 0($t0)
	sw $t1, -1616($fp)
	lw $t0, -1616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -1620($fp)
	li $t0, 2
	sw $t0, -1624($fp)
	li $t0, 4
	lw $t1, -1624($fp)
	mul $t0, $t0, $t1
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	lw $t1, -1620($fp)
	add $t0, $t0, $t1
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	lw $t1, 0($t0)
	sw $t1, -1636($fp)
	lw $t0, -1636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -1640($fp)
	li $t0, 3
	sw $t0, -1644($fp)
	li $t0, 4
	lw $t1, -1644($fp)
	mul $t0, $t0, $t1
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	lw $t1, -1640($fp)
	add $t0, $t0, $t1
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	lw $t1, 0($t0)
	sw $t1, -1656($fp)
	lw $t0, -1656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -1660($fp)
	li $t0, 4
	sw $t0, -1664($fp)
	li $t0, 4
	lw $t1, -1664($fp)
	mul $t0, $t0, $t1
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	lw $t1, -1660($fp)
	add $t0, $t0, $t1
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	lw $t1, 0($t0)
	sw $t1, -1676($fp)
	lw $t0, -1676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -1680($fp)
	li $t0, 5
	sw $t0, -1684($fp)
	li $t0, 4
	lw $t1, -1684($fp)
	mul $t0, $t0, $t1
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	lw $t1, -1680($fp)
	add $t0, $t0, $t1
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	lw $t1, 0($t0)
	sw $t1, -1696($fp)
	lw $t0, -1696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -1700($fp)
	li $t0, 6
	sw $t0, -1704($fp)
	li $t0, 4
	lw $t1, -1704($fp)
	mul $t0, $t0, $t1
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	lw $t1, -1700($fp)
	add $t0, $t0, $t1
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	lw $t1, 0($t0)
	sw $t1, -1716($fp)
	lw $t0, -1716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -1720($fp)
	li $t0, 7
	sw $t0, -1724($fp)
	li $t0, 4
	lw $t1, -1724($fp)
	mul $t0, $t0, $t1
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	lw $t1, -1720($fp)
	add $t0, $t0, $t1
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	lw $t1, 0($t0)
	sw $t1, -1736($fp)
	lw $t0, -1736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -1740($fp)
	li $t0, 8
	sw $t0, -1744($fp)
	li $t0, 4
	lw $t1, -1744($fp)
	mul $t0, $t0, $t1
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	lw $t1, -1740($fp)
	add $t0, $t0, $t1
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	lw $t1, 0($t0)
	sw $t1, -1756($fp)
	lw $t0, -1756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1760($fp)
	li $t0, 0
	sw $t0, -1764($fp)
	lw $t0, -296($fp)
	sw $t0, -1768($fp)
	lw $t1, -1768($fp)
	li $t2, 0
	bne $t1, $t2, label1124
	j label1123
label1123:
	li $t0, 1
	sw $t0, -1764($fp)
label1124:
	li $t0, 0
	lw $t1, -1764($fp)
	sub $t0, $t0, $t1
	sw $t0, -1772($fp)
	lw $t1, -1772($fp)
	li $t2, 0
	bne $t1, $t2, label1121
	j label1122
label1121:
	li $t0, 1
	sw $t0, -1760($fp)
label1122:
	addi $t0, $fp, -28
	sw $t0, -1776($fp)
	lw $t0, -308($fp)
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
	addi $t0, $fp, -28
	sw $t0, -1796($fp)
	li $t0, 1
	sw $t0, -1800($fp)
	li $t0, 4
	lw $t1, -1800($fp)
	mul $t0, $t0, $t1
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	lw $t1, -1796($fp)
	add $t0, $t0, $t1
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	lw $t1, 0($t0)
	sw $t1, -1812($fp)
	lw $t0, -1792($fp)
	lw $t1, -1812($fp)
	mul $t0, $t0, $t1
	sw $t0, -1816($fp)
	lw $t0, -1760($fp)
	lw $t1, -1816($fp)
	sub $t0, $t0, $t1
	sw $t0, -1820($fp)
	lw $ra, -4($fp)
	lw $v0, -1820($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -1824($fp)
	li $t0, 53264
	sw $t0, -1828($fp)
	li $t0, 0
	sw $t0, -1832($fp)
	lw $t0, -284($fp)
	sw $t0, -1836($fp)
	li $t0, 9442
	sw $t0, -1840($fp)
	lw $t0, -1836($fp)
	lw $t1, -1840($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1844($fp)
	li $t0, 62049
	sw $t0, -1848($fp)
	lw $t1, -1844($fp)
	lw $t2, -1848($fp)
	bge $t1, $t2, label1127
	j label1128
label1127:
	li $t0, 1
	sw $t0, -1832($fp)
label1128:
	li $t0, 0
	sw $t0, -1852($fp)
	addi $t0, $fp, -96
	sw $t0, -1856($fp)
	lw $t0, -296($fp)
	sw $t0, -1860($fp)
	li $t0, 4
	lw $t1, -1860($fp)
	mul $t0, $t0, $t1
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	lw $t1, -1856($fp)
	add $t0, $t0, $t1
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	lw $t1, 0($t0)
	sw $t1, -1872($fp)
	lw $t0, -116($fp)
	sw $t0, -1876($fp)
	lw $t1, -1872($fp)
	lw $t2, -1876($fp)
	bgt $t1, $t2, label1129
	j label1130
label1129:
	li $t0, 1
	sw $t0, -1852($fp)
label1130:
	addi $sp, $sp, -4
	lw $t0, -1832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1852($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1880($fp)
	addi $sp, $sp, 12
	lw $t0, -284($fp)
	sw $t0, -1884($fp)
	lw $t0, -1880($fp)
	lw $t1, -1884($fp)
	add $t0, $t0, $t1
	sw $t0, -1888($fp)
	li $t0, 9232
	sw $t0, -1892($fp)
	li $t0, 42478
	sw $t0, -1896($fp)
	lw $t0, -1896($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -1900($fp)
	lw $t0, -284($fp)
	sw $t0, -1904($fp)
	lw $t0, -1904($fp)
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -1908($fp)
	addi $sp, $sp, -4
	lw $t0, -1888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1908($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1912($fp)
	addi $sp, $sp, 20
	lw $t1, -1828($fp)
	lw $t2, -1912($fp)
	bge $t1, $t2, label1125
	j label1126
label1125:
	li $t0, 1
	sw $t0, -1824($fp)
label1126:
	li $t0, 0
	sw $t0, -1916($fp)
	li $t0, 36099
	sw $t0, -1920($fp)
	lw $t1, -1920($fp)
	li $t2, 0
	bne $t1, $t2, label1132
	j label1131
label1131:
	li $t0, 1
	sw $t0, -1916($fp)
label1132:
	addi $t0, $fp, -60
	sw $t0, -1924($fp)
	li $t0, 0
	sw $t0, -1928($fp)
	li $t0, 4
	lw $t1, -1928($fp)
	mul $t0, $t0, $t1
	sw $t0, -1932($fp)
	lw $t0, -1932($fp)
	lw $t1, -1924($fp)
	add $t0, $t0, $t1
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	lw $t1, 0($t0)
	sw $t1, -1940($fp)
	lw $t0, -1916($fp)
	lw $t1, -1940($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1944($fp)
	addi $t0, $fp, -96
	sw $t0, -1948($fp)
	li $t0, 0
	sw $t0, -1952($fp)
	lw $t0, -104($fp)
	sw $t0, -1956($fp)
	lw $t1, -1956($fp)
	li $t2, 0
	bne $t1, $t2, label1133
	j label1135
label1135:
	li $t0, 65388
	sw $t0, -1960($fp)
	lw $t1, -1960($fp)
	li $t2, 0
	bne $t1, $t2, label1133
	j label1134
label1133:
	li $t0, 1
	sw $t0, -1952($fp)
label1134:
	li $t0, 4
	lw $t1, -1952($fp)
	mul $t0, $t0, $t1
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	lw $t1, -1948($fp)
	add $t0, $t0, $t1
	sw $t0, -1968($fp)
	lw $t0, -1968($fp)
	lw $t1, 0($t0)
	sw $t1, -1972($fp)
	lw $t0, -1944($fp)
	lw $t1, -1972($fp)
	mul $t0, $t0, $t1
	sw $t0, -1976($fp)
label1136:
	li $t0, 46417
	sw $t0, -1980($fp)
	li $t0, 0
	sw $t0, -1984($fp)
	li $t0, 58228
	sw $t0, -1988($fp)
	li $t0, 0
	lw $t1, -1988($fp)
	sub $t0, $t0, $t1
	sw $t0, -1992($fp)
	li $t0, 0
	sw $t0, -1996($fp)
	li $t0, 44063
	sw $t0, -2000($fp)
	lw $t1, -2000($fp)
	li $t2, 0
	bne $t1, $t2, label1144
	j label1143
label1144:
	lw $t0, -272($fp)
	sw $t0, -2004($fp)
	lw $t1, -2004($fp)
	li $t2, 0
	bne $t1, $t2, label1142
	j label1143
label1142:
	li $t0, 1
	sw $t0, -1996($fp)
label1143:
	li $t0, 0
	sw $t0, -2008($fp)
	lw $t0, -296($fp)
	sw $t0, -2012($fp)
	lw $t1, -2012($fp)
	li $t2, 0
	bne $t1, $t2, label1147
	j label1145
label1147:
	li $t0, 38930
	sw $t0, -2016($fp)
	lw $t1, -2016($fp)
	li $t2, 0
	bne $t1, $t2, label1145
	j label1146
label1145:
	li $t0, 1
	sw $t0, -2008($fp)
label1146:
	addi $t0, $fp, -96
	sw $t0, -2020($fp)
	lw $t0, -116($fp)
	sw $t0, -2024($fp)
	li $t0, 4
	lw $t1, -2024($fp)
	mul $t0, $t0, $t1
	sw $t0, -2028($fp)
	lw $t0, -2028($fp)
	lw $t1, -2020($fp)
	add $t0, $t0, $t1
	sw $t0, -2032($fp)
	lw $t0, -2032($fp)
	lw $t1, 0($t0)
	sw $t1, -2036($fp)
	addi $sp, $sp, -4
	lw $t0, -1992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2036($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -2040($fp)
	addi $sp, $sp, 20
	lw $t1, -2040($fp)
	li $t2, 0
	bne $t1, $t2, label1141
	j label1140
label1141:
	li $t0, 39211
	sw $t0, -2044($fp)
	lw $t1, -2044($fp)
	li $t2, 0
	bne $t1, $t2, label1139
	j label1140
label1139:
	li $t0, 1
	sw $t0, -1984($fp)
label1140:
	li $t0, 11148
	sw $t0, -2048($fp)
	lw $t0, -2048($fp)
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -2052($fp)
	li $t0, 58520
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -2060($fp)
	addi $sp, $sp, -4
	lw $t0, -1980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2060($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -2064($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -2064($fp)
	sub $t0, $t0, $t1
	sw $t0, -2068($fp)
	li $t0, 0
	lw $t1, -2068($fp)
	sub $t0, $t0, $t1
	sw $t0, -2072($fp)
	lw $t1, -2072($fp)
	li $t2, 0
	bne $t1, $t2, label1137
	j label1138
label1137:
	li $t0, 39936
	sw $t0, -2076($fp)
	j label1136
label1138:
	lw $t0, -104($fp)
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -116($fp)
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -2088($fp)
	li $t0, 0
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
	addi $t0, $fp, -28
	sw $t0, -2108($fp)
	li $t0, 1
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
	addi $t0, $fp, -28
	sw $t0, -2128($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -2148($fp)
	li $t0, 3
	sw $t0, -2152($fp)
	li $t0, 4
	lw $t1, -2152($fp)
	mul $t0, $t0, $t1
	sw $t0, -2156($fp)
	lw $t0, -2156($fp)
	lw $t1, -2148($fp)
	add $t0, $t0, $t1
	sw $t0, -2160($fp)
	lw $t0, -2160($fp)
	lw $t1, 0($t0)
	sw $t1, -2164($fp)
	lw $t0, -2164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -2168($fp)
	li $t0, 4
	sw $t0, -2172($fp)
	li $t0, 4
	lw $t1, -2172($fp)
	mul $t0, $t0, $t1
	sw $t0, -2176($fp)
	lw $t0, -2176($fp)
	lw $t1, -2168($fp)
	add $t0, $t0, $t1
	sw $t0, -2180($fp)
	lw $t0, -2180($fp)
	lw $t1, 0($t0)
	sw $t1, -2184($fp)
	lw $t0, -2184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -2188($fp)
	li $t0, 5
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
	lw $t0, -2204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -272($fp)
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -284($fp)
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -296($fp)
	sw $t0, -2216($fp)
	lw $t0, -2216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -308($fp)
	sw $t0, -2220($fp)
	lw $t0, -2220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -2224($fp)
	li $t0, 0
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
	addi $t0, $fp, -60
	sw $t0, -2244($fp)
	li $t0, 1
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
	addi $t0, $fp, -60
	sw $t0, -2264($fp)
	li $t0, 2
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
	addi $t0, $fp, -60
	sw $t0, -2284($fp)
	li $t0, 3
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
	addi $t0, $fp, -60
	sw $t0, -2304($fp)
	li $t0, 4
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
	addi $t0, $fp, -60
	sw $t0, -2324($fp)
	li $t0, 5
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
	addi $t0, $fp, -60
	sw $t0, -2344($fp)
	li $t0, 6
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
	addi $t0, $fp, -60
	sw $t0, -2364($fp)
	li $t0, 7
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
	addi $t0, $fp, -96
	sw $t0, -2384($fp)
	li $t0, 0
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
	addi $t0, $fp, -96
	sw $t0, -2404($fp)
	li $t0, 1
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
	addi $t0, $fp, -96
	sw $t0, -2424($fp)
	li $t0, 2
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
	addi $t0, $fp, -96
	sw $t0, -2444($fp)
	li $t0, 3
	sw $t0, -2448($fp)
	li $t0, 4
	lw $t1, -2448($fp)
	mul $t0, $t0, $t1
	sw $t0, -2452($fp)
	lw $t0, -2452($fp)
	lw $t1, -2444($fp)
	add $t0, $t0, $t1
	sw $t0, -2456($fp)
	lw $t0, -2456($fp)
	lw $t1, 0($t0)
	sw $t1, -2460($fp)
	lw $t0, -2460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -2464($fp)
	li $t0, 4
	sw $t0, -2468($fp)
	li $t0, 4
	lw $t1, -2468($fp)
	mul $t0, $t0, $t1
	sw $t0, -2472($fp)
	lw $t0, -2472($fp)
	lw $t1, -2464($fp)
	add $t0, $t0, $t1
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	lw $t1, 0($t0)
	sw $t1, -2480($fp)
	lw $t0, -2480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -2484($fp)
	li $t0, 5
	sw $t0, -2488($fp)
	li $t0, 4
	lw $t1, -2488($fp)
	mul $t0, $t0, $t1
	sw $t0, -2492($fp)
	lw $t0, -2492($fp)
	lw $t1, -2484($fp)
	add $t0, $t0, $t1
	sw $t0, -2496($fp)
	lw $t0, -2496($fp)
	lw $t1, 0($t0)
	sw $t1, -2500($fp)
	lw $t0, -2500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -2504($fp)
	li $t0, 6
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
	lw $t0, -2520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -2524($fp)
	li $t0, 7
	sw $t0, -2528($fp)
	li $t0, 4
	lw $t1, -2528($fp)
	mul $t0, $t0, $t1
	sw $t0, -2532($fp)
	lw $t0, -2532($fp)
	lw $t1, -2524($fp)
	add $t0, $t0, $t1
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	lw $t1, 0($t0)
	sw $t1, -2540($fp)
	lw $t0, -2540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -2544($fp)
	li $t0, 8
	sw $t0, -2548($fp)
	li $t0, 4
	lw $t1, -2548($fp)
	mul $t0, $t0, $t1
	sw $t0, -2552($fp)
	lw $t0, -2552($fp)
	lw $t1, -2544($fp)
	add $t0, $t0, $t1
	sw $t0, -2556($fp)
	lw $t0, -2556($fp)
	lw $t1, 0($t0)
	sw $t1, -2560($fp)
	lw $t0, -2560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2564($fp)
	lw $t0, 4($fp)
	sw $t0, -2568($fp)
	li $t0, 59513
	sw $t0, -2572($fp)
	lw $t1, -2568($fp)
	lw $t2, -2572($fp)
	bge $t1, $t2, label1150
	j label1149
label1150:
	li $t0, 22898
	sw $t0, -2576($fp)
	lw $t1, -2576($fp)
	li $t2, 0
	bne $t1, $t2, label1148
	j label1149
label1148:
	li $t0, 1
	sw $t0, -2564($fp)
label1149:
	li $t0, 0
	sw $t0, -2580($fp)
	li $t0, 6954
	sw $t0, -2584($fp)
	li $t0, 0
	lw $t1, -2584($fp)
	sub $t0, $t0, $t1
	sw $t0, -2588($fp)
	lw $t1, -2588($fp)
	li $t2, 0
	bne $t1, $t2, label1153
	j label1152
label1153:
	lw $t0, -296($fp)
	sw $t0, -2592($fp)
	lw $t1, -2592($fp)
	li $t2, 0
	bne $t1, $t2, label1151
	j label1152
label1151:
	li $t0, 1
	sw $t0, -2580($fp)
label1152:
	addi $sp, $sp, -4
	lw $t0, -2564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2580($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -2596($fp)
	addi $sp, $sp, 12
	li $t0, 19204
	sw $t0, -2600($fp)
	li $t0, 21459
	sw $t0, -2604($fp)
	lw $t0, -2600($fp)
	lw $t1, -2604($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2608($fp)
	li $t0, 62898
	sw $t0, -2612($fp)
	lw $t0, -2608($fp)
	lw $t1, -2612($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2616($fp)
	lw $t0, -2596($fp)
	lw $t1, -2616($fp)
	sub $t0, $t0, $t1
	sw $t0, -2620($fp)
	addi $t0, $fp, -60
	sw $t0, -2624($fp)
	lw $t0, -308($fp)
	sw $t0, -2628($fp)
	li $t0, 4
	lw $t1, -2628($fp)
	mul $t0, $t0, $t1
	sw $t0, -2632($fp)
	lw $t0, -2632($fp)
	lw $t1, -2624($fp)
	add $t0, $t0, $t1
	sw $t0, -2636($fp)
	lw $t0, -2636($fp)
	lw $t1, 0($t0)
	sw $t1, -2640($fp)
	addi $t0, $fp, -96
	sw $t0, -2644($fp)
	li $t0, 8
	sw $t0, -2648($fp)
	li $t0, 4
	lw $t1, -2648($fp)
	mul $t0, $t0, $t1
	sw $t0, -2652($fp)
	lw $t0, -2652($fp)
	lw $t1, -2644($fp)
	add $t0, $t0, $t1
	sw $t0, -2656($fp)
	lw $t0, -2656($fp)
	lw $t1, 0($t0)
	sw $t1, -2660($fp)
	lw $t0, -2640($fp)
	lw $t1, -2660($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2664($fp)
	lw $t0, -2620($fp)
	lw $t1, -2664($fp)
	sub $t0, $t0, $t1
	sw $t0, -2668($fp)
	lw $ra, -4($fp)
	lw $v0, -2668($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f15:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -440
	li $t0, 22906
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, -20($fp)
	li $t0, 3101
	sw $t0, -24($fp)
	addi $t0, $fp, -8
	sw $t0, -28($fp)
	li $t0, 0
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -36($fp)
	lw $t0, -28($fp)
	lw $t1, -36($fp)
	add $t0, $t0, $t1
	sw $t0, -40($fp)
	lw $t0, -24($fp)
	lw $t1, -40($fp)
	sw $t0, 0($t1)
	lw $t0, -40($fp)
	lw $t1, 0($t0)
	sw $t1, -44($fp)
	li $t0, 7685
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	li $t0, 20683
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	addi $t0, $fp, -8
	sw $t0, -72($fp)
	li $t0, 0
	sw $t0, -76($fp)
	li $t0, 52919
	sw $t0, -80($fp)
	lw $t0, 4($fp)
	sw $t0, -84($fp)
	lw $t1, -80($fp)
	lw $t2, -84($fp)
	beq $t1, $t2, label1154
	j label1155
label1154:
	li $t0, 1
	sw $t0, -76($fp)
label1155:
	li $t0, 4
	lw $t1, -76($fp)
	mul $t0, $t0, $t1
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	lw $t1, -72($fp)
	add $t0, $t0, $t1
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	lw $t1, 0($t0)
	sw $t1, -96($fp)
	li $t0, 4656
	sw $t0, -100($fp)
	lw $t0, -96($fp)
	lw $t1, -100($fp)
	add $t0, $t0, $t1
	sw $t0, -104($fp)
	li $t0, 0
	sw $t0, -108($fp)
	li $t0, 0
	sw $t0, -112($fp)
	lw $t0, -16($fp)
	sw $t0, -116($fp)
	li $t0, 29861
	sw $t0, -120($fp)
	lw $t1, -116($fp)
	lw $t2, -120($fp)
	bgt $t1, $t2, label1161
	j label1162
label1161:
	li $t0, 1
	sw $t0, -112($fp)
label1162:
	li $t0, 13888
	sw $t0, -124($fp)
	lw $t1, -112($fp)
	lw $t2, -124($fp)
	bgt $t1, $t2, label1159
	j label1160
label1159:
	li $t0, 1
	sw $t0, -108($fp)
label1160:
	addi $t0, $fp, -8
	sw $t0, -128($fp)
	lw $t0, -52($fp)
	sw $t0, -132($fp)
	li $t0, 4
	lw $t1, -132($fp)
	mul $t0, $t0, $t1
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	lw $t1, -128($fp)
	add $t0, $t0, $t1
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	lw $t1, 0($t0)
	sw $t1, -144($fp)
	li $t0, 0
	lw $t1, -144($fp)
	sub $t0, $t0, $t1
	sw $t0, -148($fp)
	lw $t0, -52($fp)
	sw $t0, -152($fp)
	lw $t0, -52($fp)
	sw $t0, -156($fp)
	lw $t0, -152($fp)
	lw $t1, -156($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -160($fp)
	li $t0, 0
	lw $t1, -160($fp)
	sub $t0, $t0, $t1
	sw $t0, -164($fp)
	addi $sp, $sp, -4
	lw $t0, -164($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -168($fp)
	addi $sp, $sp, 8
	li $t0, 8411
	sw $t0, -172($fp)
	lw $t0, -168($fp)
	lw $t1, -172($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -176($fp)
	addi $sp, $sp, -4
	lw $t0, -108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -176($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -180($fp)
	addi $sp, $sp, 16
	lw $t0, 8($fp)
	sw $t0, -184($fp)
	li $t0, 0
	sw $t0, -188($fp)
	li $t0, 17853
	sw $t0, -192($fp)
	lw $t1, -192($fp)
	li $t2, 0
	bne $t1, $t2, label1164
	j label1163
label1163:
	li $t0, 1
	sw $t0, -188($fp)
label1164:
	lw $t0, -184($fp)
	lw $t1, -188($fp)
	sub $t0, $t0, $t1
	sw $t0, -196($fp)
	lw $t1, -180($fp)
	lw $t2, -196($fp)
	beq $t1, $t2, label1156
	j label1157
label1156:
	li $t0, 26374
	sw $t0, -200($fp)
	li $t0, 0
	lw $t1, -200($fp)
	sub $t0, $t0, $t1
	sw $t0, -204($fp)
	li $t0, 0
	sw $t0, -208($fp)
	addi $t0, $fp, -8
	sw $t0, -212($fp)
	li $t0, 0
	sw $t0, -216($fp)
	li $t0, 4
	lw $t1, -216($fp)
	mul $t0, $t0, $t1
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	lw $t1, -212($fp)
	add $t0, $t0, $t1
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	lw $t1, 0($t0)
	sw $t1, -228($fp)
	lw $t0, 8($fp)
	sw $t0, -232($fp)
	lw $t0, -228($fp)
	lw $t1, -232($fp)
	mul $t0, $t0, $t1
	sw $t0, -236($fp)
	li $t0, 0
	sw $t0, -240($fp)
	li $t0, 0
	sw $t0, -244($fp)
	li $t0, 49987
	sw $t0, -248($fp)
	lw $t1, -248($fp)
	li $t2, 0
	bne $t1, $t2, label1170
	j label1169
label1169:
	li $t0, 1
	sw $t0, -244($fp)
label1170:
	lw $t0, 4($fp)
	sw $t0, -252($fp)
	lw $t1, -244($fp)
	lw $t2, -252($fp)
	blt $t1, $t2, label1167
	j label1168
label1167:
	li $t0, 1
	sw $t0, -240($fp)
label1168:
	addi $sp, $sp, -4
	lw $t0, -236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -240($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -256($fp)
	addi $sp, $sp, 12
	lw $t1, -256($fp)
	li $t2, 0
	bne $t1, $t2, label1166
	j label1165
label1165:
	li $t0, 1
	sw $t0, -208($fp)
label1166:
	j label1158
label1157:
	lw $t0, 12($fp)
	sw $t0, -260($fp)
	lw $t0, -16($fp)
	sw $t0, -264($fp)
	lw $t0, -260($fp)
	lw $t1, -264($fp)
	add $t0, $t0, $t1
	sw $t0, -268($fp)
	li $t0, 49839
	sw $t0, -272($fp)
	lw $t0, -268($fp)
	lw $t1, -272($fp)
	add $t0, $t0, $t1
	sw $t0, -276($fp)
	jal f9
	sw $v0, -280($fp)
	addi $sp, $sp, 4
	lw $t0, -276($fp)
	lw $t1, -280($fp)
	add $t0, $t0, $t1
	sw $t0, -284($fp)
	addi $t0, $fp, -8
	sw $t0, -288($fp)
	li $t0, 0
	sw $t0, -292($fp)
	li $t0, 4
	lw $t1, -292($fp)
	mul $t0, $t0, $t1
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	lw $t1, -288($fp)
	add $t0, $t0, $t1
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	lw $t1, 0($t0)
	sw $t1, -304($fp)
	lw $t0, -284($fp)
	lw $t1, -304($fp)
	add $t0, $t0, $t1
	sw $t0, -308($fp)
	li $t0, 23234
	sw $t0, -312($fp)
	lw $t1, -308($fp)
	lw $t2, -312($fp)
	ble $t1, $t2, label1171
	j label1172
label1171:
	li $t0, 0
	sw $t0, -316($fp)
	lw $t0, -52($fp)
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -324($fp)
	li $t0, 0
	sw $t0, -328($fp)
	li $t0, 31226
	sw $t0, -332($fp)
	li $t0, 44911
	sw $t0, -336($fp)
	lw $t0, -332($fp)
	lw $t1, -336($fp)
	sub $t0, $t0, $t1
	sw $t0, -340($fp)
	lw $t0, -64($fp)
	sw $t0, -344($fp)
	lw $t1, -340($fp)
	lw $t2, -344($fp)
	bge $t1, $t2, label1176
	j label1177
label1176:
	li $t0, 1
	sw $t0, -328($fp)
label1177:
	addi $sp, $sp, -4
	lw $t0, -324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -328($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -348($fp)
	addi $sp, $sp, 12
	lw $t1, -348($fp)
	li $t2, 0
	bne $t1, $t2, label1175
	j label1174
label1174:
	li $t0, 1
	sw $t0, -316($fp)
label1175:
	j label1173
label1172:
	li $t0, 0
	sw $t0, -352($fp)
	li $t0, 62445
	sw $t0, -356($fp)
	lw $t1, -356($fp)
	li $t2, 0
	bne $t1, $t2, label1179
	j label1178
label1178:
	li $t0, 1
	sw $t0, -352($fp)
label1179:
	li $t0, 0
	lw $t1, -352($fp)
	sub $t0, $t0, $t1
	sw $t0, -360($fp)
	li $t0, 0
	lw $t1, -360($fp)
	sub $t0, $t0, $t1
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -368($fp)
label1173:
label1158:
	lw $t0, -16($fp)
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -376($fp)
	li $t0, 0
	sw $t0, -380($fp)
	li $t0, 4
	lw $t1, -380($fp)
	mul $t0, $t0, $t1
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	lw $t1, -376($fp)
	add $t0, $t0, $t1
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	lw $t1, 0($t0)
	sw $t1, -392($fp)
	lw $t0, -392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -52($fp)
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -64($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -404($fp)
	li $t0, 0
	sw $t0, -408($fp)
	li $t0, 0
	sw $t0, -412($fp)
	li $t0, 12107
	sw $t0, -416($fp)
	li $t0, 19311
	sw $t0, -420($fp)
	lw $t1, -416($fp)
	lw $t2, -420($fp)
	ble $t1, $t2, label1182
	j label1183
label1182:
	li $t0, 1
	sw $t0, -412($fp)
label1183:
	li $t0, 3863
	sw $t0, -424($fp)
	lw $t1, -412($fp)
	lw $t2, -424($fp)
	bgt $t1, $t2, label1180
	j label1181
label1180:
	li $t0, 1
	sw $t0, -408($fp)
label1181:
	li $t0, 4
	lw $t1, -408($fp)
	mul $t0, $t0, $t1
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	lw $t1, -404($fp)
	add $t0, $t0, $t1
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	lw $t1, 0($t0)
	sw $t1, -436($fp)
	li $t0, 6084
	sw $t0, -440($fp)
	lw $t0, -436($fp)
	lw $t1, -440($fp)
	mul $t0, $t0, $t1
	sw $t0, -444($fp)
	lw $ra, -4($fp)
	lw $v0, -444($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f16:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -68
	li $t0, 42209
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 23067
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 27543
	sw $t0, -32($fp)
	li $t0, 39571
	sw $t0, -36($fp)
	lw $t0, -32($fp)
	lw $t1, -36($fp)
	sub $t0, $t0, $t1
	sw $t0, -40($fp)
	lw $t0, -12($fp)
	sw $t0, -44($fp)
	lw $t0, -40($fp)
	lw $t1, -44($fp)
	sub $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -12($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -56($fp)
	addi $sp, $sp, -4
	lw $t0, -48($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -56($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -60($fp)
	addi $sp, $sp, 12
	lw $t0, -12($fp)
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 31800
	sw $t0, -72($fp)
	lw $ra, -4($fp)
	lw $v0, -72($fp)
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
	jal f16
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
