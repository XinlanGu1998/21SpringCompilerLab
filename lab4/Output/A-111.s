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
	addi $sp, $sp, -1392
	li $t0, 58195
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
	li $t0, 21416
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
	li $t0, 45518
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	li $t0, 2189
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	li $t0, 14088
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	li $t0, 27038
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	addi $t0, $fp, -12
	sw $t0, -112($fp)
	li $t0, 0
	sw $t0, -116($fp)
	li $t0, 4
	lw $t1, -116($fp)
	mul $t0, $t0, $t1
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	lw $t1, -112($fp)
	add $t0, $t0, $t1
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	lw $t1, 0($t0)
	sw $t1, -128($fp)
	lw $t0, -128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -132($fp)
	li $t0, 1
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
	lw $t0, -148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -68($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -80($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -92($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -104($fp)
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -92($fp)
	sw $t0, -168($fp)
	lw $ra, -4($fp)
	lw $v0, -168($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label121:
	li $t0, 0
	sw $t0, -172($fp)
	jal f6
	sw $v0, -176($fp)
	addi $sp, $sp, 4
	lw $t1, -176($fp)
	li $t2, 0
	bne $t1, $t2, label124
	j label125
label124:
	li $t0, 1
	sw $t0, -172($fp)
label125:
	jal f6
	sw $v0, -180($fp)
	addi $sp, $sp, 4
	lw $t1, -172($fp)
	lw $t2, -180($fp)
	bne $t1, $t2, label122
	j label123
label122:
	li $t0, 64527
	sw $t0, -248($fp)
	addi $t0, $fp, -220
	sw $t0, -252($fp)
	li $t0, 0
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
	li $t0, 8547
	sw $t0, -272($fp)
	addi $t0, $fp, -220
	sw $t0, -276($fp)
	li $t0, 1
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
	li $t0, 29620
	sw $t0, -296($fp)
	addi $t0, $fp, -220
	sw $t0, -300($fp)
	li $t0, 2
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
	li $t0, 7693
	sw $t0, -320($fp)
	addi $t0, $fp, -220
	sw $t0, -324($fp)
	li $t0, 3
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
	li $t0, 19652
	sw $t0, -344($fp)
	addi $t0, $fp, -220
	sw $t0, -348($fp)
	li $t0, 4
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
	li $t0, 41540
	sw $t0, -368($fp)
	addi $t0, $fp, -220
	sw $t0, -372($fp)
	li $t0, 5
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
	li $t0, 42232
	sw $t0, -392($fp)
	addi $t0, $fp, -220
	sw $t0, -396($fp)
	li $t0, 6
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
	li $t0, 29195
	sw $t0, -416($fp)
	addi $t0, $fp, -220
	sw $t0, -420($fp)
	li $t0, 7
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
	li $t0, 34490
	sw $t0, -440($fp)
	addi $t0, $fp, -220
	sw $t0, -444($fp)
	li $t0, 8
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
	li $t0, 56173
	sw $t0, -464($fp)
	addi $t0, $fp, -220
	sw $t0, -468($fp)
	li $t0, 9
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
	li $t0, 23706
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	li $t0, 54144
	sw $t0, -500($fp)
	addi $t0, $fp, -244
	sw $t0, -504($fp)
	li $t0, 0
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
	li $t0, 52598
	sw $t0, -524($fp)
	addi $t0, $fp, -244
	sw $t0, -528($fp)
	li $t0, 1
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
	li $t0, 24874
	sw $t0, -548($fp)
	addi $t0, $fp, -244
	sw $t0, -552($fp)
	li $t0, 2
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
	li $t0, 32756
	sw $t0, -572($fp)
	addi $t0, $fp, -244
	sw $t0, -576($fp)
	li $t0, 3
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
	li $t0, 42418
	sw $t0, -596($fp)
	addi $t0, $fp, -244
	sw $t0, -600($fp)
	li $t0, 4
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
	li $t0, 62816
	sw $t0, -620($fp)
	addi $t0, $fp, -244
	sw $t0, -624($fp)
	li $t0, 5
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
	li $t0, 58218
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	addi $t0, $fp, -220
	sw $t0, -656($fp)
	li $t0, 0
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
	lw $t0, -672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -676($fp)
	li $t0, 1
	sw $t0, -680($fp)
	li $t0, 4
	lw $t1, -680($fp)
	mul $t0, $t0, $t1
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	lw $t1, -676($fp)
	add $t0, $t0, $t1
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	lw $t1, 0($t0)
	sw $t1, -692($fp)
	lw $t0, -692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -696($fp)
	li $t0, 2
	sw $t0, -700($fp)
	li $t0, 4
	lw $t1, -700($fp)
	mul $t0, $t0, $t1
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	lw $t1, -696($fp)
	add $t0, $t0, $t1
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	lw $t1, 0($t0)
	sw $t1, -712($fp)
	lw $t0, -712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -716($fp)
	li $t0, 3
	sw $t0, -720($fp)
	li $t0, 4
	lw $t1, -720($fp)
	mul $t0, $t0, $t1
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	lw $t1, -716($fp)
	add $t0, $t0, $t1
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	lw $t1, 0($t0)
	sw $t1, -732($fp)
	lw $t0, -732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -736($fp)
	li $t0, 4
	sw $t0, -740($fp)
	li $t0, 4
	lw $t1, -740($fp)
	mul $t0, $t0, $t1
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	lw $t1, -736($fp)
	add $t0, $t0, $t1
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	lw $t1, 0($t0)
	sw $t1, -752($fp)
	lw $t0, -752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -756($fp)
	li $t0, 5
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
	addi $t0, $fp, -220
	sw $t0, -776($fp)
	li $t0, 6
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
	addi $t0, $fp, -220
	sw $t0, -796($fp)
	li $t0, 7
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
	addi $t0, $fp, -220
	sw $t0, -816($fp)
	li $t0, 8
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
	addi $t0, $fp, -220
	sw $t0, -836($fp)
	li $t0, 9
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
	lw $t0, -492($fp)
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -244
	sw $t0, -860($fp)
	li $t0, 0
	sw $t0, -864($fp)
	li $t0, 4
	lw $t1, -864($fp)
	mul $t0, $t0, $t1
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	lw $t1, -860($fp)
	add $t0, $t0, $t1
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	lw $t1, 0($t0)
	sw $t1, -876($fp)
	lw $t0, -876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -244
	sw $t0, -880($fp)
	li $t0, 1
	sw $t0, -884($fp)
	li $t0, 4
	lw $t1, -884($fp)
	mul $t0, $t0, $t1
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	lw $t1, -880($fp)
	add $t0, $t0, $t1
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	lw $t1, 0($t0)
	sw $t1, -896($fp)
	lw $t0, -896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -244
	sw $t0, -900($fp)
	li $t0, 2
	sw $t0, -904($fp)
	li $t0, 4
	lw $t1, -904($fp)
	mul $t0, $t0, $t1
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	lw $t1, -900($fp)
	add $t0, $t0, $t1
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	lw $t1, 0($t0)
	sw $t1, -916($fp)
	lw $t0, -916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -244
	sw $t0, -920($fp)
	li $t0, 3
	sw $t0, -924($fp)
	li $t0, 4
	lw $t1, -924($fp)
	mul $t0, $t0, $t1
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	lw $t1, -920($fp)
	add $t0, $t0, $t1
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	lw $t1, 0($t0)
	sw $t1, -936($fp)
	lw $t0, -936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -244
	sw $t0, -940($fp)
	li $t0, 4
	sw $t0, -944($fp)
	li $t0, 4
	lw $t1, -944($fp)
	mul $t0, $t0, $t1
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	lw $t1, -940($fp)
	add $t0, $t0, $t1
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	lw $t1, 0($t0)
	sw $t1, -956($fp)
	lw $t0, -956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -244
	sw $t0, -960($fp)
	li $t0, 5
	sw $t0, -964($fp)
	li $t0, 4
	lw $t1, -964($fp)
	mul $t0, $t0, $t1
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	lw $t1, -960($fp)
	add $t0, $t0, $t1
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	lw $t1, 0($t0)
	sw $t1, -976($fp)
	lw $t0, -976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -984($fp)
	addi $t0, $fp, -12
	sw $t0, -988($fp)
	li $t0, 0
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
	addi $t0, $fp, -220
	sw $t0, -1008($fp)
	li $t0, 4
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
	lw $t0, -1004($fp)
	lw $t1, -1024($fp)
	mul $t0, $t0, $t1
	sw $t0, -1028($fp)
	lw $t0, -80($fp)
	sw $t0, -1032($fp)
	lw $t0, -92($fp)
	sw $t0, -1036($fp)
	lw $t0, -1032($fp)
	lw $t1, -1036($fp)
	mul $t0, $t0, $t1
	sw $t0, -1040($fp)
	li $t0, 0
	sw $t0, -1044($fp)
	li $t0, 34568
	sw $t0, -1048($fp)
	lw $t1, -1048($fp)
	li $t2, 0
	bne $t1, $t2, label129
	j label128
label128:
	li $t0, 1
	sw $t0, -1044($fp)
label129:
	lw $t0, -1040($fp)
	lw $t1, -1044($fp)
	mul $t0, $t0, $t1
	sw $t0, -1052($fp)
	lw $t1, -1028($fp)
	lw $t2, -1052($fp)
	bne $t1, $t2, label126
	j label127
label126:
	li $t0, 1
	sw $t0, -984($fp)
label127:
	lw $ra, -4($fp)
	lw $v0, -984($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 46925
	sw $t0, -1056($fp)
	li $t0, 0
	sw $t0, -1060($fp)
	li $t0, 48301
	sw $t0, -1064($fp)
	li $t0, 0
	lw $t1, -1064($fp)
	sub $t0, $t0, $t1
	sw $t0, -1068($fp)
	lw $t1, -1068($fp)
	li $t2, 0
	bne $t1, $t2, label135
	j label134
label134:
	li $t0, 1
	sw $t0, -1060($fp)
label135:
	lw $t0, -1056($fp)
	lw $t1, -1060($fp)
	mul $t0, $t0, $t1
	sw $t0, -1072($fp)
	li $t0, 0
	lw $t1, -1072($fp)
	sub $t0, $t0, $t1
	sw $t0, -1076($fp)
	lw $t1, -1076($fp)
	li $t2, 0
	bne $t1, $t2, label130
	j label133
label133:
	addi $t0, $fp, -244
	sw $t0, -1080($fp)
	lw $t0, -80($fp)
	sw $t0, -1084($fp)
	li $t0, 4
	lw $t1, -1084($fp)
	mul $t0, $t0, $t1
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	lw $t1, -1080($fp)
	add $t0, $t0, $t1
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	lw $t1, 0($t0)
	sw $t1, -1096($fp)
	li $t0, 0
	lw $t1, -1096($fp)
	sub $t0, $t0, $t1
	sw $t0, -1100($fp)
	lw $t0, -648($fp)
	sw $t0, -1104($fp)
	lw $t0, -1100($fp)
	lw $t1, -1104($fp)
	add $t0, $t0, $t1
	sw $t0, -1108($fp)
	lw $t1, -1108($fp)
	li $t2, 0
	bne $t1, $t2, label130
	j label131
label130:
	jal f6
	sw $v0, -1112($fp)
	addi $sp, $sp, 4
	lw $t0, -1112($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -1116($fp)
	lw $t1, -1116($fp)
	li $t2, 0
	bne $t1, $t2, label136
	j label137
label136:
	li $t0, 0
	sw $t0, -1120($fp)
	lw $t0, -92($fp)
	sw $t0, -1124($fp)
	lw $t0, -492($fp)
	sw $t0, -1128($fp)
	lw $t0, -1124($fp)
	lw $t1, -1128($fp)
	mul $t0, $t0, $t1
	sw $t0, -1132($fp)
	jal f6
	sw $v0, -1136($fp)
	addi $sp, $sp, 4
	lw $t1, -1132($fp)
	lw $t2, -1136($fp)
	bgt $t1, $t2, label139
	j label140
label139:
	li $t0, 1
	sw $t0, -1120($fp)
label140:
	j label138
label137:
	addi $t0, $fp, -12
	sw $t0, -1140($fp)
	li $t0, 0
	sw $t0, -1144($fp)
	lw $t0, -68($fp)
	sw $t0, -1148($fp)
	lw $t1, -1148($fp)
	li $t2, 0
	bne $t1, $t2, label143
	j label142
label143:
	lw $t0, -68($fp)
	sw $t0, -1152($fp)
	lw $t1, -1152($fp)
	li $t2, 0
	bne $t1, $t2, label141
	j label142
label141:
	li $t0, 1
	sw $t0, -1144($fp)
label142:
	li $t0, 4
	lw $t1, -1144($fp)
	mul $t0, $t0, $t1
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	lw $t1, -1140($fp)
	add $t0, $t0, $t1
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	lw $t1, 0($t0)
	sw $t1, -1164($fp)
	li $t0, 0
	lw $t1, -1164($fp)
	sub $t0, $t0, $t1
	sw $t0, -1168($fp)
	addi $t0, $fp, -12
	sw $t0, -1172($fp)
	li $t0, 27227
	sw $t0, -1176($fp)
	lw $t0, -92($fp)
	sw $t0, -1180($fp)
	lw $t0, -1176($fp)
	lw $t1, -1180($fp)
	add $t0, $t0, $t1
	sw $t0, -1184($fp)
	li $t0, 4
	lw $t1, -1184($fp)
	mul $t0, $t0, $t1
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	lw $t1, -1172($fp)
	add $t0, $t0, $t1
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	lw $t1, 0($t0)
	sw $t1, -1196($fp)
	lw $t0, -1168($fp)
	lw $t1, -1196($fp)
	add $t0, $t0, $t1
	sw $t0, -1200($fp)
	li $t0, 0
	sw $t0, -1204($fp)
	jal f6
	sw $v0, -1208($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -1208($fp)
	sub $t0, $t0, $t1
	sw $t0, -1212($fp)
	lw $t1, -1212($fp)
	li $t2, 0
	bne $t1, $t2, label146
	j label145
label146:
	jal f6
	sw $v0, -1216($fp)
	addi $sp, $sp, 4
	lw $t1, -1216($fp)
	li $t2, 0
	bne $t1, $t2, label145
	j label144
label144:
	li $t0, 1
	sw $t0, -1204($fp)
label145:
label138:
	j label132
label131:
	li $t0, 0
	sw $t0, -1220($fp)
	addi $t0, $fp, -244
	sw $t0, -1224($fp)
	lw $t0, -648($fp)
	sw $t0, -1228($fp)
	li $t0, 4
	lw $t1, -1228($fp)
	mul $t0, $t0, $t1
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	lw $t1, -1224($fp)
	add $t0, $t0, $t1
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	lw $t1, 0($t0)
	sw $t1, -1240($fp)
	li $t0, 28285
	sw $t0, -1244($fp)
	lw $t0, -1240($fp)
	lw $t1, -1244($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1248($fp)
	li $t0, 0
	lw $t1, -1248($fp)
	sub $t0, $t0, $t1
	sw $t0, -1252($fp)
	li $t0, 0
	lw $t1, -1252($fp)
	sub $t0, $t0, $t1
	sw $t0, -1256($fp)
	lw $t1, -1256($fp)
	li $t2, 0
	bne $t1, $t2, label149
	j label148
label149:
	li $t0, 0
	sw $t0, -1260($fp)
	li $t0, 29417
	sw $t0, -1264($fp)
	lw $t1, -1264($fp)
	li $t2, 0
	bne $t1, $t2, label151
	j label150
label150:
	li $t0, 1
	sw $t0, -1260($fp)
label151:
	lw $t0, -80($fp)
	sw $t0, -1268($fp)
	lw $t0, -1260($fp)
	lw $t1, -1268($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1272($fp)
	lw $t0, -80($fp)
	sw $t0, -1276($fp)
	li $t0, 0
	lw $t1, -1276($fp)
	sub $t0, $t0, $t1
	sw $t0, -1280($fp)
	lw $t0, -1272($fp)
	lw $t1, -1280($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1284($fp)
	lw $t1, -1284($fp)
	li $t2, 0
	bne $t1, $t2, label147
	j label148
label147:
	li $t0, 1
	sw $t0, -1220($fp)
label148:
	lw $ra, -4($fp)
	lw $v0, -1220($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label132:
	j label121
label123:
	li $t0, 0
	sw $t0, -1288($fp)
	lw $t0, -92($fp)
	sw $t0, -1292($fp)
	lw $t1, -1292($fp)
	li $t2, 0
	bne $t1, $t2, label153
	j label152
label152:
	li $t0, 1
	sw $t0, -1288($fp)
label153:
	li $t0, 16893
	sw $t0, -1296($fp)
	lw $t0, -1288($fp)
	lw $t1, -1296($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1300($fp)
	lw $t0, -80($fp)
	sw $t0, -1304($fp)
	lw $t0, -1300($fp)
	lw $t1, -1304($fp)
	add $t0, $t0, $t1
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -1312($fp)
	addi $t0, $fp, -12
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
	addi $t0, $fp, -12
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
	lw $t0, -68($fp)
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -80($fp)
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -92($fp)
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -104($fp)
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -1372($fp)
	jal f6
	sw $v0, -1376($fp)
	addi $sp, $sp, 4
	li $t0, 4
	lw $t1, -1376($fp)
	mul $t0, $t0, $t1
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	lw $t1, -1372($fp)
	add $t0, $t0, $t1
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	lw $t1, 0($t0)
	sw $t1, -1388($fp)
	lw $t0, -68($fp)
	sw $t0, -1392($fp)
	lw $t0, -1388($fp)
	lw $t1, -1392($fp)
	sub $t0, $t0, $t1
	sw $t0, -1396($fp)
	lw $ra, -4($fp)
	lw $v0, -1396($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -208
	li $t0, 55322
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	li $t0, 28408
	sw $t0, -28($fp)
	addi $t0, $fp, -12
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
	li $t0, 25441
	sw $t0, -52($fp)
	addi $t0, $fp, -12
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
	li $t0, 19406
	sw $t0, -76($fp)
	lw $t0, -20($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -84($fp)
	li $t0, 0
	sw $t0, -88($fp)
	li $t0, 4
	lw $t1, -88($fp)
	mul $t0, $t0, $t1
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	lw $t1, -84($fp)
	add $t0, $t0, $t1
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	lw $t1, 0($t0)
	sw $t1, -100($fp)
	lw $t0, -100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -104($fp)
	li $t0, 1
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
	li $t0, 36101
	sw $t0, -124($fp)
	lw $ra, -4($fp)
	lw $v0, -124($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -128($fp)
	jal f6
	sw $v0, -132($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -132($fp)
	sub $t0, $t0, $t1
	sw $t0, -136($fp)
	lw $t0, -20($fp)
	sw $t0, -140($fp)
	lw $t1, -136($fp)
	lw $t2, -140($fp)
	bne $t1, $t2, label154
	j label155
label154:
	li $t0, 1
	sw $t0, -128($fp)
label155:
	lw $t0, -20($fp)
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -148($fp)
	li $t0, 0
	sw $t0, -152($fp)
	li $t0, 4
	lw $t1, -152($fp)
	mul $t0, $t0, $t1
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	lw $t1, -148($fp)
	add $t0, $t0, $t1
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	lw $t1, 0($t0)
	sw $t1, -164($fp)
	lw $t0, -164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -168($fp)
	li $t0, 1
	sw $t0, -172($fp)
	li $t0, 4
	lw $t1, -172($fp)
	mul $t0, $t0, $t1
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	lw $t1, -168($fp)
	add $t0, $t0, $t1
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	lw $t1, 0($t0)
	sw $t1, -184($fp)
	lw $t0, -184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -188($fp)
	lw $t0, 8($fp)
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
	lw $t0, -204($fp)
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -212($fp)
	lw $ra, -4($fp)
	lw $v0, -212($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1864
	li $t0, 45093
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	li $t0, 60946
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	li $t0, 12797
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -60($fp)
	li $t0, 8752
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	li $t0, 29901
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	li $t0, 3435
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	li $t0, 32459
	sw $t0, -100($fp)
	addi $t0, $fp, -24
	sw $t0, -104($fp)
	li $t0, 0
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
	li $t0, 18509
	sw $t0, -124($fp)
	addi $t0, $fp, -24
	sw $t0, -128($fp)
	li $t0, 1
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
	li $t0, 56033
	sw $t0, -148($fp)
	addi $t0, $fp, -24
	sw $t0, -152($fp)
	li $t0, 2
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
	li $t0, 57333
	sw $t0, -172($fp)
	addi $t0, $fp, -24
	sw $t0, -176($fp)
	li $t0, 3
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
	li $t0, 51265
	sw $t0, -196($fp)
	addi $t0, $fp, -24
	sw $t0, -200($fp)
	li $t0, 4
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
label156:
	jal f6
	sw $v0, -220($fp)
	addi $sp, $sp, 4
	lw $t1, -220($fp)
	li $t2, 0
	bne $t1, $t2, label157
	j label158
label157:
	lw $t0, -44($fp)
	sw $t0, -224($fp)
	lw $t1, -224($fp)
	li $t2, 0
	bne $t1, $t2, label159
	j label160
label159:
label162:
	li $t0, 0
	sw $t0, -228($fp)
	lw $t0, -80($fp)
	sw $t0, -232($fp)
	lw $t0, -80($fp)
	sw $t0, -236($fp)
	lw $t0, -80($fp)
	sw $t0, -240($fp)
	lw $t0, -236($fp)
	lw $t1, -240($fp)
	add $t0, $t0, $t1
	sw $t0, -244($fp)
	lw $t1, -232($fp)
	lw $t2, -244($fp)
	bge $t1, $t2, label166
	j label167
label166:
	li $t0, 1
	sw $t0, -228($fp)
label167:
	li $t0, 32915
	sw $t0, -248($fp)
	lw $t1, -228($fp)
	lw $t2, -248($fp)
	bgt $t1, $t2, label163
	j label165
label165:
	lw $t0, -80($fp)
	sw $t0, -252($fp)
	li $t0, 0
	lw $t1, -252($fp)
	sub $t0, $t0, $t1
	sw $t0, -256($fp)
	li $t0, 0
	lw $t1, -256($fp)
	sub $t0, $t0, $t1
	sw $t0, -260($fp)
	li $t0, 54614
	sw $t0, -264($fp)
	lw $t0, -32($fp)
	sw $t0, -268($fp)
	lw $t0, -264($fp)
	lw $t1, -268($fp)
	mul $t0, $t0, $t1
	sw $t0, -272($fp)
	lw $t1, -260($fp)
	lw $t2, -272($fp)
	bgt $t1, $t2, label163
	j label164
label163:
	li $t0, 0
	sw $t0, -276($fp)
	li $t0, 59114
	sw $t0, -280($fp)
	li $t0, 50746
	sw $t0, -284($fp)
	lw $t1, -280($fp)
	lw $t2, -284($fp)
	bge $t1, $t2, label171
	j label172
label171:
	li $t0, 1
	sw $t0, -276($fp)
label172:
	li $t0, 0
	sw $t0, -288($fp)
	addi $t0, $fp, -24
	sw $t0, -292($fp)
	li $t0, 2
	sw $t0, -296($fp)
	li $t0, 4
	lw $t1, -296($fp)
	mul $t0, $t0, $t1
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	lw $t1, -292($fp)
	add $t0, $t0, $t1
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	lw $t1, 0($t0)
	sw $t1, -308($fp)
	lw $t0, -56($fp)
	sw $t0, -312($fp)
	lw $t1, -308($fp)
	lw $t2, -312($fp)
	beq $t1, $t2, label173
	j label174
label173:
	li $t0, 1
	sw $t0, -288($fp)
label174:
	addi $sp, $sp, -4
	lw $t0, -276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -288($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -316($fp)
	addi $sp, $sp, 12
	li $t0, 4951
	sw $t0, -320($fp)
	lw $t0, -316($fp)
	lw $t1, -320($fp)
	add $t0, $t0, $t1
	sw $t0, -324($fp)
	li $t0, 28147
	sw $t0, -328($fp)
	li $t0, 32135
	sw $t0, -332($fp)
	lw $t0, -328($fp)
	lw $t1, -332($fp)
	mul $t0, $t0, $t1
	sw $t0, -336($fp)
	lw $t0, -80($fp)
	sw $t0, -340($fp)
	li $t0, 0
	lw $t1, -340($fp)
	sub $t0, $t0, $t1
	sw $t0, -344($fp)
	lw $t0, -336($fp)
	lw $t1, -344($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -348($fp)
	lw $t1, -324($fp)
	lw $t2, -348($fp)
	bne $t1, $t2, label168
	j label169
label168:
	li $t0, 53253
	sw $t0, -388($fp)
	addi $t0, $fp, -384
	sw $t0, -392($fp)
	li $t0, 0
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
	li $t0, 55374
	sw $t0, -412($fp)
	addi $t0, $fp, -384
	sw $t0, -416($fp)
	li $t0, 1
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
	li $t0, 34941
	sw $t0, -436($fp)
	addi $t0, $fp, -384
	sw $t0, -440($fp)
	li $t0, 2
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
	li $t0, 16001
	sw $t0, -460($fp)
	addi $t0, $fp, -384
	sw $t0, -464($fp)
	li $t0, 3
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
	li $t0, 19255
	sw $t0, -484($fp)
	addi $t0, $fp, -384
	sw $t0, -488($fp)
	li $t0, 4
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
	li $t0, 51834
	sw $t0, -508($fp)
	addi $t0, $fp, -384
	sw $t0, -512($fp)
	li $t0, 5
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
	li $t0, 5787
	sw $t0, -532($fp)
	addi $t0, $fp, -384
	sw $t0, -536($fp)
	li $t0, 6
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
	li $t0, 47663
	sw $t0, -556($fp)
	addi $t0, $fp, -384
	sw $t0, -560($fp)
	li $t0, 7
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
	li $t0, 11739
	sw $t0, -580($fp)
	addi $t0, $fp, -384
	sw $t0, -584($fp)
	li $t0, 8
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
	li $t0, 0
	sw $t0, -604($fp)
	addi $t0, $fp, -384
	sw $t0, -608($fp)
	lw $t0, -32($fp)
	sw $t0, -612($fp)
	li $t0, 4
	lw $t1, -612($fp)
	mul $t0, $t0, $t1
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	lw $t1, -608($fp)
	add $t0, $t0, $t1
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	lw $t1, 0($t0)
	sw $t1, -624($fp)
	lw $t0, -68($fp)
	sw $t0, -628($fp)
	lw $t0, -624($fp)
	lw $t1, -628($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -632($fp)
	lw $t1, -632($fp)
	li $t2, 0
	bne $t1, $t2, label179
	j label177
label179:
	li $t0, 25193
	sw $t0, -636($fp)
	li $t0, 18229
	sw $t0, -640($fp)
	lw $t1, -636($fp)
	lw $t2, -640($fp)
	bne $t1, $t2, label178
	j label177
label178:
	lw $t0, -56($fp)
	sw $t0, -644($fp)
	lw $t1, -644($fp)
	li $t2, 0
	bne $t1, $t2, label175
	j label177
label177:
	li $t0, 56833
	sw $t0, -648($fp)
	li $t0, 0
	lw $t1, -648($fp)
	sub $t0, $t0, $t1
	sw $t0, -652($fp)
	lw $t1, -652($fp)
	li $t2, 0
	bne $t1, $t2, label176
	j label175
label175:
	li $t0, 1
	sw $t0, -604($fp)
label176:
	j label170
label169:
	li $t0, 0
	sw $t0, -656($fp)
	addi $t0, $fp, -24
	sw $t0, -660($fp)
	li $t0, 0
	sw $t0, -664($fp)
	li $t0, 20603
	sw $t0, -668($fp)
	lw $t0, -92($fp)
	sw $t0, -672($fp)
	lw $t0, -668($fp)
	lw $t1, -672($fp)
	mul $t0, $t0, $t1
	sw $t0, -676($fp)
	lw $t1, -676($fp)
	li $t2, 0
	bne $t1, $t2, label184
	j label183
label184:
	li $t0, 31026
	sw $t0, -680($fp)
	lw $t1, -680($fp)
	li $t2, 0
	bne $t1, $t2, label182
	j label183
label182:
	li $t0, 1
	sw $t0, -664($fp)
label183:
	li $t0, 4
	lw $t1, -664($fp)
	mul $t0, $t0, $t1
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	lw $t1, -660($fp)
	add $t0, $t0, $t1
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	lw $t1, 0($t0)
	sw $t1, -692($fp)
	li $t0, 0
	sw $t0, -696($fp)
	li $t0, 49
	sw $t0, -700($fp)
	lw $t1, -700($fp)
	li $t2, 0
	bne $t1, $t2, label186
	j label185
label185:
	li $t0, 1
	sw $t0, -696($fp)
label186:
	li $t0, 0
	lw $t1, -696($fp)
	sub $t0, $t0, $t1
	sw $t0, -704($fp)
	li $t0, 0
	lw $t1, -704($fp)
	sub $t0, $t0, $t1
	sw $t0, -708($fp)
	lw $t1, -692($fp)
	lw $t2, -708($fp)
	bne $t1, $t2, label180
	j label181
label180:
	li $t0, 1
	sw $t0, -656($fp)
label181:
label170:
	j label162
label164:
	j label161
label160:
	addi $t0, $fp, -24
	sw $t0, -712($fp)
	li $t0, 0
	sw $t0, -716($fp)
	li $t0, 50504
	sw $t0, -720($fp)
	lw $t0, -56($fp)
	sw $t0, -724($fp)
	lw $t0, -720($fp)
	lw $t1, -724($fp)
	sub $t0, $t0, $t1
	sw $t0, -728($fp)
	lw $t1, -728($fp)
	li $t2, 0
	bne $t1, $t2, label189
	j label188
label189:
	lw $t0, -80($fp)
	sw $t0, -732($fp)
	lw $t1, -732($fp)
	li $t2, 0
	bne $t1, $t2, label187
	j label188
label187:
	li $t0, 1
	sw $t0, -716($fp)
label188:
	li $t0, 4
	lw $t1, -716($fp)
	mul $t0, $t0, $t1
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	lw $t1, -712($fp)
	add $t0, $t0, $t1
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	lw $t1, 0($t0)
	sw $t1, -744($fp)
label161:
	j label156
label158:
	li $t0, 34461
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	sw $t0, -788($fp)
	li $t0, 32508
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	sw $t0, -800($fp)
	li $t0, 3478
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, -812($fp)
	li $t0, 24958
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -824($fp)
	li $t0, 24306
	sw $t0, -828($fp)
	addi $t0, $fp, -776
	sw $t0, -832($fp)
	li $t0, 0
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -840($fp)
	lw $t0, -832($fp)
	lw $t1, -840($fp)
	add $t0, $t0, $t1
	sw $t0, -844($fp)
	lw $t0, -828($fp)
	lw $t1, -844($fp)
	sw $t0, 0($t1)
	lw $t0, -844($fp)
	lw $t1, 0($t0)
	sw $t1, -848($fp)
	li $t0, 54743
	sw $t0, -852($fp)
	addi $t0, $fp, -776
	sw $t0, -856($fp)
	li $t0, 1
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
	li $t0, 57874
	sw $t0, -876($fp)
	addi $t0, $fp, -776
	sw $t0, -880($fp)
	li $t0, 2
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
	li $t0, 13384
	sw $t0, -900($fp)
	addi $t0, $fp, -776
	sw $t0, -904($fp)
	li $t0, 3
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
	li $t0, 33155
	sw $t0, -924($fp)
	addi $t0, $fp, -776
	sw $t0, -928($fp)
	li $t0, 4
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -936($fp)
	lw $t0, -928($fp)
	lw $t1, -936($fp)
	add $t0, $t0, $t1
	sw $t0, -940($fp)
	lw $t0, -924($fp)
	lw $t1, -940($fp)
	sw $t0, 0($t1)
	lw $t0, -940($fp)
	lw $t1, 0($t0)
	sw $t1, -944($fp)
	li $t0, 931
	sw $t0, -948($fp)
	addi $t0, $fp, -776
	sw $t0, -952($fp)
	li $t0, 5
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -960($fp)
	lw $t0, -952($fp)
	lw $t1, -960($fp)
	add $t0, $t0, $t1
	sw $t0, -964($fp)
	lw $t0, -948($fp)
	lw $t1, -964($fp)
	sw $t0, 0($t1)
	lw $t0, -964($fp)
	lw $t1, 0($t0)
	sw $t1, -968($fp)
	li $t0, 6962
	sw $t0, -972($fp)
	addi $t0, $fp, -776
	sw $t0, -976($fp)
	li $t0, 6
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -984($fp)
	lw $t0, -976($fp)
	lw $t1, -984($fp)
	add $t0, $t0, $t1
	sw $t0, -988($fp)
	lw $t0, -972($fp)
	lw $t1, -988($fp)
	sw $t0, 0($t1)
	lw $t0, -988($fp)
	lw $t1, 0($t0)
	sw $t1, -992($fp)
	li $t0, 18365
	sw $t0, -996($fp)
	addi $t0, $fp, -776
	sw $t0, -1000($fp)
	li $t0, 7
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1008($fp)
	lw $t0, -1000($fp)
	lw $t1, -1008($fp)
	add $t0, $t0, $t1
	sw $t0, -1012($fp)
	lw $t0, -996($fp)
	lw $t1, -1012($fp)
	sw $t0, 0($t1)
	lw $t0, -1012($fp)
	lw $t1, 0($t0)
	sw $t1, -1016($fp)
label190:
	li $t0, 0
	sw $t0, -1020($fp)
	li $t0, 5883
	sw $t0, -1024($fp)
	lw $t0, -808($fp)
	sw $t0, -1028($fp)
	lw $t0, -80($fp)
	sw $t0, -1032($fp)
	lw $t0, -1028($fp)
	lw $t1, -1032($fp)
	add $t0, $t0, $t1
	sw $t0, -1036($fp)
	lw $t1, -1024($fp)
	lw $t2, -1036($fp)
	blt $t1, $t2, label193
	j label194
label193:
	li $t0, 1
	sw $t0, -1020($fp)
label194:
	lw $t0, -1020($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -1040($fp)
	lw $t1, -1040($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label192
label191:
	li $t0, 35109
	sw $t0, -1044($fp)
	li $t0, 50501
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	sw $t0, -1052($fp)
	addi $sp, $sp, -4
	lw $t0, -1052($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1056($fp)
	addi $sp, $sp, 8
	lw $t0, -1044($fp)
	lw $t1, -1056($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1060($fp)
	li $t0, 0
	sw $t0, -1064($fp)
	li $t0, 0
	sw $t0, -1068($fp)
	lw $t0, 4($fp)
	sw $t0, -1072($fp)
	lw $t0, -56($fp)
	sw $t0, -1076($fp)
	lw $t1, -1072($fp)
	lw $t2, -1076($fp)
	bne $t1, $t2, label200
	j label201
label200:
	li $t0, 1
	sw $t0, -1068($fp)
label201:
	li $t0, 9601
	sw $t0, -1080($fp)
	lw $t1, -1068($fp)
	lw $t2, -1080($fp)
	bne $t1, $t2, label198
	j label199
label198:
	li $t0, 1
	sw $t0, -1064($fp)
label199:
	li $t0, 0
	sw $t0, -1084($fp)
	addi $t0, $fp, -24
	sw $t0, -1088($fp)
	li $t0, 4
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
	lw $t1, -1104($fp)
	li $t2, 0
	bne $t1, $t2, label202
	j label204
label204:
	li $t0, 19906
	sw $t0, -1108($fp)
	lw $t1, -1108($fp)
	li $t2, 0
	bne $t1, $t2, label202
	j label203
label202:
	li $t0, 1
	sw $t0, -1084($fp)
label203:
	addi $sp, $sp, -4
	lw $t0, -1064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1084($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1112($fp)
	addi $sp, $sp, 12
	li $t0, 44203
	sw $t0, -1116($fp)
	li $t0, 0
	lw $t1, -1116($fp)
	sub $t0, $t0, $t1
	sw $t0, -1120($fp)
	lw $t0, -1112($fp)
	lw $t1, -1120($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1124($fp)
	lw $t0, -1060($fp)
	lw $t1, -1124($fp)
	add $t0, $t0, $t1
	sw $t0, -1128($fp)
	lw $t1, -1128($fp)
	li $t2, 0
	bne $t1, $t2, label195
	j label196
label195:
	li $t0, 0
	sw $t0, -1132($fp)
	addi $t0, $fp, -24
	sw $t0, -1136($fp)
	li $t0, 0
	sw $t0, -1140($fp)
	li $t0, 0
	sw $t0, -1144($fp)
	lw $t0, -796($fp)
	sw $t0, -1148($fp)
	li $t0, 26331
	sw $t0, -1152($fp)
	lw $t1, -1148($fp)
	lw $t2, -1152($fp)
	bne $t1, $t2, label209
	j label210
label209:
	li $t0, 1
	sw $t0, -1144($fp)
label210:
	li $t0, 17944
	sw $t0, -1156($fp)
	lw $t1, -1144($fp)
	lw $t2, -1156($fp)
	beq $t1, $t2, label207
	j label208
label207:
	li $t0, 1
	sw $t0, -1140($fp)
label208:
	addi $t0, $fp, -24
	sw $t0, -1160($fp)
	li $t0, 0
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
	addi $sp, $sp, -4
	lw $t0, -1140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1176($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1180($fp)
	addi $sp, $sp, 12
	li $t0, 4
	lw $t1, -1180($fp)
	mul $t0, $t0, $t1
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	lw $t1, -1136($fp)
	add $t0, $t0, $t1
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	lw $t1, 0($t0)
	sw $t1, -1192($fp)
	li $t0, 0
	lw $t1, -1192($fp)
	sub $t0, $t0, $t1
	sw $t0, -1196($fp)
	lw $t1, -1196($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label205
label205:
	li $t0, 1
	sw $t0, -1132($fp)
label206:
	j label197
label196:
	addi $t0, $fp, -776
	sw $t0, -1200($fp)
	li $t0, 0
	sw $t0, -1204($fp)
	lw $t0, -784($fp)
	sw $t0, -1208($fp)
	lw $t0, -92($fp)
	sw $t0, -1212($fp)
	lw $t1, -1208($fp)
	lw $t2, -1212($fp)
	bge $t1, $t2, label214
	j label215
label214:
	li $t0, 1
	sw $t0, -1204($fp)
label215:
	li $t0, 4
	lw $t1, -1204($fp)
	mul $t0, $t0, $t1
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	lw $t1, -1200($fp)
	add $t0, $t0, $t1
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	lw $t1, 0($t0)
	sw $t1, -1224($fp)
	li $t0, 40581
	sw $t0, -1228($fp)
	lw $t0, -80($fp)
	sw $t0, -1232($fp)
	lw $t0, -1228($fp)
	lw $t1, -1232($fp)
	mul $t0, $t0, $t1
	sw $t0, -1236($fp)
	lw $t0, -1224($fp)
	lw $t1, -1236($fp)
	add $t0, $t0, $t1
	sw $t0, -1240($fp)
	li $t0, 44560
	sw $t0, -1244($fp)
	li $t0, 0
	lw $t1, -1244($fp)
	sub $t0, $t0, $t1
	sw $t0, -1248($fp)
	lw $t0, -1240($fp)
	lw $t1, -1248($fp)
	sub $t0, $t0, $t1
	sw $t0, -1252($fp)
	lw $t1, -1252($fp)
	li $t2, 0
	bne $t1, $t2, label211
	j label212
label211:
	li $t0, 9241
	sw $t0, -1268($fp)
	addi $t0, $fp, -1264
	sw $t0, -1272($fp)
	li $t0, 0
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
	li $t0, 61184
	sw $t0, -1292($fp)
	addi $t0, $fp, -1264
	sw $t0, -1296($fp)
	li $t0, 1
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
	li $t0, 10050
	sw $t0, -1316($fp)
	addi $t0, $fp, -1264
	sw $t0, -1320($fp)
	li $t0, 2
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
	addi $t0, $fp, -1264
	sw $t0, -1340($fp)
	li $t0, 0
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
	lw $t0, -1356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1264
	sw $t0, -1360($fp)
	li $t0, 1
	sw $t0, -1364($fp)
	li $t0, 4
	lw $t1, -1364($fp)
	mul $t0, $t0, $t1
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	lw $t1, -1360($fp)
	add $t0, $t0, $t1
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	lw $t1, 0($t0)
	sw $t1, -1376($fp)
	lw $t0, -1376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1264
	sw $t0, -1380($fp)
	li $t0, 2
	sw $t0, -1384($fp)
	li $t0, 4
	lw $t1, -1384($fp)
	mul $t0, $t0, $t1
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	lw $t1, -1380($fp)
	add $t0, $t0, $t1
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	lw $t1, 0($t0)
	sw $t1, -1396($fp)
	lw $t0, -1396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1264
	sw $t0, -1400($fp)
	lw $t0, -796($fp)
	sw $t0, -1404($fp)
	li $t0, 4
	lw $t1, -1404($fp)
	mul $t0, $t0, $t1
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	lw $t1, -1400($fp)
	add $t0, $t0, $t1
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	lw $t1, 0($t0)
	sw $t1, -1416($fp)
	lw $ra, -4($fp)
	lw $v0, -1416($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label213
label212:
	li $t0, 0
	sw $t0, -1420($fp)
	lw $t0, 4($fp)
	sw $t0, -1424($fp)
	lw $t1, -1424($fp)
	li $t2, 0
	bne $t1, $t2, label217
	j label216
label216:
	li $t0, 1
	sw $t0, -1420($fp)
label217:
	lw $ra, -4($fp)
	lw $v0, -1420($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label213:
label197:
	j label190
label192:
	li $t0, 0
	sw $t0, -1428($fp)
	lw $t0, -68($fp)
	sw $t0, -1432($fp)
	lw $t1, -1432($fp)
	li $t2, 0
	bne $t1, $t2, label219
	j label218
label218:
	li $t0, 1
	sw $t0, -1428($fp)
label219:
	lw $t0, -784($fp)
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -796($fp)
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -808($fp)
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -820($fp)
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -776
	sw $t0, -1452($fp)
	li $t0, 0
	sw $t0, -1456($fp)
	li $t0, 4
	lw $t1, -1456($fp)
	mul $t0, $t0, $t1
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	lw $t1, -1452($fp)
	add $t0, $t0, $t1
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	lw $t1, 0($t0)
	sw $t1, -1468($fp)
	lw $t0, -1468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -776
	sw $t0, -1472($fp)
	li $t0, 1
	sw $t0, -1476($fp)
	li $t0, 4
	lw $t1, -1476($fp)
	mul $t0, $t0, $t1
	sw $t0, -1480($fp)
	lw $t0, -1480($fp)
	lw $t1, -1472($fp)
	add $t0, $t0, $t1
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	lw $t1, 0($t0)
	sw $t1, -1488($fp)
	lw $t0, -1488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -776
	sw $t0, -1492($fp)
	li $t0, 2
	sw $t0, -1496($fp)
	li $t0, 4
	lw $t1, -1496($fp)
	mul $t0, $t0, $t1
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	lw $t1, -1492($fp)
	add $t0, $t0, $t1
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	lw $t1, 0($t0)
	sw $t1, -1508($fp)
	lw $t0, -1508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -776
	sw $t0, -1512($fp)
	li $t0, 3
	sw $t0, -1516($fp)
	li $t0, 4
	lw $t1, -1516($fp)
	mul $t0, $t0, $t1
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	lw $t1, -1512($fp)
	add $t0, $t0, $t1
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	lw $t1, 0($t0)
	sw $t1, -1528($fp)
	lw $t0, -1528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -776
	sw $t0, -1532($fp)
	li $t0, 4
	sw $t0, -1536($fp)
	li $t0, 4
	lw $t1, -1536($fp)
	mul $t0, $t0, $t1
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	lw $t1, -1532($fp)
	add $t0, $t0, $t1
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	lw $t1, 0($t0)
	sw $t1, -1548($fp)
	lw $t0, -1548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -776
	sw $t0, -1552($fp)
	li $t0, 5
	sw $t0, -1556($fp)
	li $t0, 4
	lw $t1, -1556($fp)
	mul $t0, $t0, $t1
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	lw $t1, -1552($fp)
	add $t0, $t0, $t1
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	lw $t1, 0($t0)
	sw $t1, -1568($fp)
	lw $t0, -1568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -776
	sw $t0, -1572($fp)
	li $t0, 6
	sw $t0, -1576($fp)
	li $t0, 4
	lw $t1, -1576($fp)
	mul $t0, $t0, $t1
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	lw $t1, -1572($fp)
	add $t0, $t0, $t1
	sw $t0, -1584($fp)
	lw $t0, -1584($fp)
	lw $t1, 0($t0)
	sw $t1, -1588($fp)
	lw $t0, -1588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -776
	sw $t0, -1592($fp)
	li $t0, 7
	sw $t0, -1596($fp)
	li $t0, 4
	lw $t1, -1596($fp)
	mul $t0, $t0, $t1
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	lw $t1, -1592($fp)
	add $t0, $t0, $t1
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	lw $t1, 0($t0)
	sw $t1, -1608($fp)
	lw $t0, -1608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1612($fp)
	li $t0, 0
	sw $t0, -1616($fp)
	lw $t0, -80($fp)
	sw $t0, -1620($fp)
	lw $t0, -80($fp)
	sw $t0, -1624($fp)
	lw $t1, -1620($fp)
	lw $t2, -1624($fp)
	beq $t1, $t2, label222
	j label223
label222:
	li $t0, 1
	sw $t0, -1616($fp)
label223:
	lw $t0, -820($fp)
	sw $t0, -1628($fp)
	lw $t1, -1616($fp)
	lw $t2, -1628($fp)
	bne $t1, $t2, label220
	j label221
label220:
	li $t0, 1
	sw $t0, -1612($fp)
label221:
	addi $sp, $sp, -4
	lw $t0, -1612($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1632($fp)
	addi $sp, $sp, 8
	li $t0, 9290
	sw $t0, -1636($fp)
	lw $t0, -1632($fp)
	lw $t1, -1636($fp)
	mul $t0, $t0, $t1
	sw $t0, -1640($fp)
	li $t0, 0
	sw $t0, -1644($fp)
	addi $t0, $fp, -24
	sw $t0, -1648($fp)
	lw $t0, -32($fp)
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
	lw $t1, -1664($fp)
	li $t2, 0
	bne $t1, $t2, label225
	j label224
label224:
	li $t0, 1
	sw $t0, -1644($fp)
label225:
	li $t0, 0
	lw $t1, -1644($fp)
	sub $t0, $t0, $t1
	sw $t0, -1668($fp)
	lw $t0, -1640($fp)
	lw $t1, -1668($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1672($fp)
	lw $ra, -4($fp)
	lw $v0, -1672($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -1676($fp)
	li $t0, 0
	sw $t0, -1680($fp)
	jal f6
	sw $v0, -1684($fp)
	addi $sp, $sp, 4
	li $t0, 46153
	sw $t0, -1688($fp)
	li $t0, 0
	lw $t1, -1688($fp)
	sub $t0, $t0, $t1
	sw $t0, -1692($fp)
	lw $t0, -1684($fp)
	lw $t1, -1692($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1696($fp)
	li $t0, 44512
	sw $t0, -1700($fp)
	lw $t1, -1696($fp)
	lw $t2, -1700($fp)
	bge $t1, $t2, label228
	j label229
label228:
	li $t0, 1
	sw $t0, -1680($fp)
label229:
	li $t0, 41799
	sw $t0, -1704($fp)
	lw $t1, -1680($fp)
	lw $t2, -1704($fp)
	ble $t1, $t2, label226
	j label227
label226:
	li $t0, 1
	sw $t0, -1676($fp)
label227:
	lw $t0, -32($fp)
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -44($fp)
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -56($fp)
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -68($fp)
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -80($fp)
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -92($fp)
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -1732($fp)
	li $t0, 0
	sw $t0, -1736($fp)
	li $t0, 4
	lw $t1, -1736($fp)
	mul $t0, $t0, $t1
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	lw $t1, -1732($fp)
	add $t0, $t0, $t1
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	lw $t1, 0($t0)
	sw $t1, -1748($fp)
	lw $t0, -1748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -1752($fp)
	li $t0, 1
	sw $t0, -1756($fp)
	li $t0, 4
	lw $t1, -1756($fp)
	mul $t0, $t0, $t1
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	lw $t1, -1752($fp)
	add $t0, $t0, $t1
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	lw $t1, 0($t0)
	sw $t1, -1768($fp)
	lw $t0, -1768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -1772($fp)
	li $t0, 2
	sw $t0, -1776($fp)
	li $t0, 4
	lw $t1, -1776($fp)
	mul $t0, $t0, $t1
	sw $t0, -1780($fp)
	lw $t0, -1780($fp)
	lw $t1, -1772($fp)
	add $t0, $t0, $t1
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	lw $t1, 0($t0)
	sw $t1, -1788($fp)
	lw $t0, -1788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -1792($fp)
	li $t0, 3
	sw $t0, -1796($fp)
	li $t0, 4
	lw $t1, -1796($fp)
	mul $t0, $t0, $t1
	sw $t0, -1800($fp)
	lw $t0, -1800($fp)
	lw $t1, -1792($fp)
	add $t0, $t0, $t1
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	lw $t1, 0($t0)
	sw $t1, -1808($fp)
	lw $t0, -1808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -1812($fp)
	li $t0, 4
	sw $t0, -1816($fp)
	li $t0, 4
	lw $t1, -1816($fp)
	mul $t0, $t0, $t1
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	lw $t1, -1812($fp)
	add $t0, $t0, $t1
	sw $t0, -1824($fp)
	lw $t0, -1824($fp)
	lw $t1, 0($t0)
	sw $t1, -1828($fp)
	lw $t0, -1828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1832($fp)
	li $t0, 49631
	sw $t0, -1836($fp)
	lw $t0, -92($fp)
	sw $t0, -1840($fp)
	li $t0, 3934
	sw $t0, -1844($fp)
	lw $t0, -1840($fp)
	lw $t1, -1844($fp)
	add $t0, $t0, $t1
	sw $t0, -1848($fp)
	lw $t0, -92($fp)
	sw $t0, -1852($fp)
	lw $t0, -1848($fp)
	lw $t1, -1852($fp)
	sub $t0, $t0, $t1
	sw $t0, -1856($fp)
	li $t0, 0
	sw $t0, -1860($fp)
	li $t0, 569
	sw $t0, -1864($fp)
	lw $t1, -1864($fp)
	li $t2, 0
	bne $t1, $t2, label233
	j label232
label232:
	li $t0, 1
	sw $t0, -1860($fp)
label233:
	lw $t0, -1856($fp)
	lw $t1, -1860($fp)
	sub $t0, $t0, $t1
	sw $t0, -1868($fp)
	lw $t1, -1836($fp)
	lw $t2, -1868($fp)
	beq $t1, $t2, label230
	j label231
label230:
	li $t0, 1
	sw $t0, -1832($fp)
label231:
	lw $ra, -4($fp)
	lw $v0, -1832($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -8440
	li $t0, 38838
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	li $t0, 61808
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	li $t0, 13953
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	li $t0, 6457
	sw $t0, -208($fp)
	addi $t0, $fp, -28
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
	li $t0, 62740
	sw $t0, -232($fp)
	addi $t0, $fp, -28
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
	li $t0, 20915
	sw $t0, -256($fp)
	addi $t0, $fp, -28
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
	li $t0, 24823
	sw $t0, -280($fp)
	addi $t0, $fp, -28
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
	li $t0, 3087
	sw $t0, -304($fp)
	addi $t0, $fp, -28
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
	li $t0, 56025
	sw $t0, -328($fp)
	addi $t0, $fp, -28
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
	li $t0, 9788
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	li $t0, 62223
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	li $t0, 15437
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	li $t0, 29694
	sw $t0, -388($fp)
	addi $t0, $fp, -48
	sw $t0, -392($fp)
	li $t0, 0
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
	li $t0, 6288
	sw $t0, -412($fp)
	addi $t0, $fp, -48
	sw $t0, -416($fp)
	li $t0, 1
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
	li $t0, 59640
	sw $t0, -436($fp)
	addi $t0, $fp, -48
	sw $t0, -440($fp)
	li $t0, 2
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
	li $t0, 35898
	sw $t0, -460($fp)
	addi $t0, $fp, -48
	sw $t0, -464($fp)
	li $t0, 3
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
	li $t0, 21676
	sw $t0, -484($fp)
	addi $t0, $fp, -48
	sw $t0, -488($fp)
	li $t0, 4
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
	li $t0, 20435
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	li $t0, 53842
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	li $t0, 62257
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	li $t0, 64995
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	li $t0, 63083
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	li $t0, 57905
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	li $t0, 9510
	sw $t0, -580($fp)
	addi $t0, $fp, -80
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
	li $t0, 6838
	sw $t0, -604($fp)
	addi $t0, $fp, -80
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
	li $t0, 38522
	sw $t0, -628($fp)
	addi $t0, $fp, -80
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
	li $t0, 54022
	sw $t0, -652($fp)
	addi $t0, $fp, -80
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
	li $t0, 48637
	sw $t0, -676($fp)
	addi $t0, $fp, -80
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
	li $t0, 22617
	sw $t0, -700($fp)
	addi $t0, $fp, -80
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
	li $t0, 57956
	sw $t0, -724($fp)
	addi $t0, $fp, -80
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
	li $t0, 49206
	sw $t0, -748($fp)
	addi $t0, $fp, -80
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
	li $t0, 61456
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -780($fp)
	li $t0, 54229
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	sw $t0, -792($fp)
	li $t0, 63159
	sw $t0, -796($fp)
	addi $t0, $fp, -108
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
	li $t0, 2377
	sw $t0, -820($fp)
	addi $t0, $fp, -108
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
	li $t0, 51433
	sw $t0, -844($fp)
	addi $t0, $fp, -108
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
	li $t0, 18538
	sw $t0, -868($fp)
	addi $t0, $fp, -108
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
	li $t0, 27200
	sw $t0, -892($fp)
	addi $t0, $fp, -108
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
	li $t0, 54520
	sw $t0, -916($fp)
	addi $t0, $fp, -108
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
	li $t0, 9027
	sw $t0, -940($fp)
	addi $t0, $fp, -108
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
	li $t0, 36988
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	sw $t0, -972($fp)
	li $t0, 51207
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	sw $t0, -984($fp)
	li $t0, 24464
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	sw $t0, -996($fp)
	li $t0, 1146
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	sw $t0, -1008($fp)
	li $t0, 57495
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	sw $t0, -1020($fp)
	li $t0, 18569
	sw $t0, -1024($fp)
	addi $t0, $fp, -136
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
	li $t0, 37045
	sw $t0, -1048($fp)
	addi $t0, $fp, -136
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
	li $t0, 13635
	sw $t0, -1072($fp)
	addi $t0, $fp, -136
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
	li $t0, 39004
	sw $t0, -1096($fp)
	addi $t0, $fp, -136
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
	li $t0, 25351
	sw $t0, -1120($fp)
	addi $t0, $fp, -136
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
	li $t0, 10356
	sw $t0, -1144($fp)
	addi $t0, $fp, -136
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
	li $t0, 38464
	sw $t0, -1168($fp)
	addi $t0, $fp, -136
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
	li $t0, 22899
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -1200($fp)
	li $t0, 2725
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	sw $t0, -1212($fp)
	li $t0, 47974
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	sw $t0, -1224($fp)
	li $t0, 29737
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	sw $t0, -1236($fp)
	li $t0, 41248
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	sw $t0, -1248($fp)
	li $t0, 36460
	sw $t0, -1252($fp)
	addi $t0, $fp, -168
	sw $t0, -1256($fp)
	li $t0, 0
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
	li $t0, 12838
	sw $t0, -1276($fp)
	addi $t0, $fp, -168
	sw $t0, -1280($fp)
	li $t0, 1
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
	li $t0, 63865
	sw $t0, -1300($fp)
	addi $t0, $fp, -168
	sw $t0, -1304($fp)
	li $t0, 2
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
	li $t0, 28880
	sw $t0, -1324($fp)
	addi $t0, $fp, -168
	sw $t0, -1328($fp)
	li $t0, 3
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
	li $t0, 62044
	sw $t0, -1348($fp)
	addi $t0, $fp, -168
	sw $t0, -1352($fp)
	li $t0, 4
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
	li $t0, 59785
	sw $t0, -1372($fp)
	addi $t0, $fp, -168
	sw $t0, -1376($fp)
	li $t0, 5
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
	li $t0, 17573
	sw $t0, -1396($fp)
	addi $t0, $fp, -168
	sw $t0, -1400($fp)
	li $t0, 6
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
	li $t0, 59667
	sw $t0, -1420($fp)
	addi $t0, $fp, -168
	sw $t0, -1424($fp)
	li $t0, 7
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
	li $t0, 62163
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	sw $t0, -1452($fp)
	li $t0, 3470
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	sw $t0, -1464($fp)
	li $t0, 12669
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	sw $t0, -1476($fp)
	li $t0, 23827
	sw $t0, -1480($fp)
	lw $t0, -1480($fp)
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	sw $t0, -1488($fp)
	li $t0, 57990
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	sw $t0, -1500($fp)
	lw $t0, -176($fp)
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -188($fp)
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -200($fp)
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1516($fp)
	li $t0, 0
	sw $t0, -1520($fp)
	li $t0, 4
	lw $t1, -1520($fp)
	mul $t0, $t0, $t1
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	lw $t1, -1516($fp)
	add $t0, $t0, $t1
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	lw $t1, 0($t0)
	sw $t1, -1532($fp)
	lw $t0, -1532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1536($fp)
	li $t0, 1
	sw $t0, -1540($fp)
	li $t0, 4
	lw $t1, -1540($fp)
	mul $t0, $t0, $t1
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	lw $t1, -1536($fp)
	add $t0, $t0, $t1
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	lw $t1, 0($t0)
	sw $t1, -1552($fp)
	lw $t0, -1552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1556($fp)
	li $t0, 2
	sw $t0, -1560($fp)
	li $t0, 4
	lw $t1, -1560($fp)
	mul $t0, $t0, $t1
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	lw $t1, -1556($fp)
	add $t0, $t0, $t1
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	lw $t1, 0($t0)
	sw $t1, -1572($fp)
	lw $t0, -1572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1576($fp)
	li $t0, 3
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
	lw $t0, -1592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1596($fp)
	li $t0, 4
	sw $t0, -1600($fp)
	li $t0, 4
	lw $t1, -1600($fp)
	mul $t0, $t0, $t1
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	lw $t1, -1596($fp)
	add $t0, $t0, $t1
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	lw $t1, 0($t0)
	sw $t1, -1612($fp)
	lw $t0, -1612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1616($fp)
	li $t0, 5
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
	lw $t0, -1632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -356($fp)
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -368($fp)
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -380($fp)
	sw $t0, -1644($fp)
	lw $t0, -1644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
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
	addi $t0, $fp, -48
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
	addi $t0, $fp, -48
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
	addi $t0, $fp, -48
	sw $t0, -1708($fp)
	li $t0, 3
	sw $t0, -1712($fp)
	li $t0, 4
	lw $t1, -1712($fp)
	mul $t0, $t0, $t1
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	lw $t1, -1708($fp)
	add $t0, $t0, $t1
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	lw $t1, 0($t0)
	sw $t1, -1724($fp)
	lw $t0, -1724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -1728($fp)
	li $t0, 4
	sw $t0, -1732($fp)
	li $t0, 4
	lw $t1, -1732($fp)
	mul $t0, $t0, $t1
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	lw $t1, -1728($fp)
	add $t0, $t0, $t1
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	lw $t1, 0($t0)
	sw $t1, -1744($fp)
	lw $t0, -1744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -512($fp)
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -524($fp)
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -536($fp)
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -548($fp)
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1772($fp)
	li $t0, 0
	sw $t0, -1776($fp)
	li $t0, 4
	lw $t1, -1776($fp)
	mul $t0, $t0, $t1
	sw $t0, -1780($fp)
	lw $t0, -1780($fp)
	lw $t1, -1772($fp)
	add $t0, $t0, $t1
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	lw $t1, 0($t0)
	sw $t1, -1788($fp)
	lw $t0, -1788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1792($fp)
	li $t0, 1
	sw $t0, -1796($fp)
	li $t0, 4
	lw $t1, -1796($fp)
	mul $t0, $t0, $t1
	sw $t0, -1800($fp)
	lw $t0, -1800($fp)
	lw $t1, -1792($fp)
	add $t0, $t0, $t1
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	lw $t1, 0($t0)
	sw $t1, -1808($fp)
	lw $t0, -1808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1812($fp)
	li $t0, 2
	sw $t0, -1816($fp)
	li $t0, 4
	lw $t1, -1816($fp)
	mul $t0, $t0, $t1
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	lw $t1, -1812($fp)
	add $t0, $t0, $t1
	sw $t0, -1824($fp)
	lw $t0, -1824($fp)
	lw $t1, 0($t0)
	sw $t1, -1828($fp)
	lw $t0, -1828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1832($fp)
	li $t0, 3
	sw $t0, -1836($fp)
	li $t0, 4
	lw $t1, -1836($fp)
	mul $t0, $t0, $t1
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	lw $t1, -1832($fp)
	add $t0, $t0, $t1
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	lw $t1, 0($t0)
	sw $t1, -1848($fp)
	lw $t0, -1848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1852($fp)
	li $t0, 4
	sw $t0, -1856($fp)
	li $t0, 4
	lw $t1, -1856($fp)
	mul $t0, $t0, $t1
	sw $t0, -1860($fp)
	lw $t0, -1860($fp)
	lw $t1, -1852($fp)
	add $t0, $t0, $t1
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	lw $t1, 0($t0)
	sw $t1, -1868($fp)
	lw $t0, -1868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1872($fp)
	li $t0, 5
	sw $t0, -1876($fp)
	li $t0, 4
	lw $t1, -1876($fp)
	mul $t0, $t0, $t1
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	lw $t1, -1872($fp)
	add $t0, $t0, $t1
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	lw $t1, 0($t0)
	sw $t1, -1888($fp)
	lw $t0, -1888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1892($fp)
	li $t0, 6
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
	lw $t0, -1908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1912($fp)
	li $t0, 7
	sw $t0, -1916($fp)
	li $t0, 4
	lw $t1, -1916($fp)
	mul $t0, $t0, $t1
	sw $t0, -1920($fp)
	lw $t0, -1920($fp)
	lw $t1, -1912($fp)
	add $t0, $t0, $t1
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	lw $t1, 0($t0)
	sw $t1, -1928($fp)
	lw $t0, -1928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -776($fp)
	sw $t0, -1932($fp)
	lw $t0, -1932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -788($fp)
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -1940($fp)
	li $t0, 0
	sw $t0, -1944($fp)
	li $t0, 4
	lw $t1, -1944($fp)
	mul $t0, $t0, $t1
	sw $t0, -1948($fp)
	lw $t0, -1948($fp)
	lw $t1, -1940($fp)
	add $t0, $t0, $t1
	sw $t0, -1952($fp)
	lw $t0, -1952($fp)
	lw $t1, 0($t0)
	sw $t1, -1956($fp)
	lw $t0, -1956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -1960($fp)
	li $t0, 1
	sw $t0, -1964($fp)
	li $t0, 4
	lw $t1, -1964($fp)
	mul $t0, $t0, $t1
	sw $t0, -1968($fp)
	lw $t0, -1968($fp)
	lw $t1, -1960($fp)
	add $t0, $t0, $t1
	sw $t0, -1972($fp)
	lw $t0, -1972($fp)
	lw $t1, 0($t0)
	sw $t1, -1976($fp)
	lw $t0, -1976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -1980($fp)
	li $t0, 2
	sw $t0, -1984($fp)
	li $t0, 4
	lw $t1, -1984($fp)
	mul $t0, $t0, $t1
	sw $t0, -1988($fp)
	lw $t0, -1988($fp)
	lw $t1, -1980($fp)
	add $t0, $t0, $t1
	sw $t0, -1992($fp)
	lw $t0, -1992($fp)
	lw $t1, 0($t0)
	sw $t1, -1996($fp)
	lw $t0, -1996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -2000($fp)
	li $t0, 3
	sw $t0, -2004($fp)
	li $t0, 4
	lw $t1, -2004($fp)
	mul $t0, $t0, $t1
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	lw $t1, -2000($fp)
	add $t0, $t0, $t1
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	lw $t1, 0($t0)
	sw $t1, -2016($fp)
	lw $t0, -2016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -2020($fp)
	li $t0, 4
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
	lw $t0, -2036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -2040($fp)
	li $t0, 5
	sw $t0, -2044($fp)
	li $t0, 4
	lw $t1, -2044($fp)
	mul $t0, $t0, $t1
	sw $t0, -2048($fp)
	lw $t0, -2048($fp)
	lw $t1, -2040($fp)
	add $t0, $t0, $t1
	sw $t0, -2052($fp)
	lw $t0, -2052($fp)
	lw $t1, 0($t0)
	sw $t1, -2056($fp)
	lw $t0, -2056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -2060($fp)
	li $t0, 6
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
	lw $t0, -2076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -968($fp)
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -980($fp)
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -992($fp)
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1004($fp)
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1016($fp)
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -2100($fp)
	li $t0, 0
	sw $t0, -2104($fp)
	li $t0, 4
	lw $t1, -2104($fp)
	mul $t0, $t0, $t1
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	lw $t1, -2100($fp)
	add $t0, $t0, $t1
	sw $t0, -2112($fp)
	lw $t0, -2112($fp)
	lw $t1, 0($t0)
	sw $t1, -2116($fp)
	lw $t0, -2116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -2120($fp)
	li $t0, 1
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
	lw $t0, -2136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -2140($fp)
	li $t0, 2
	sw $t0, -2144($fp)
	li $t0, 4
	lw $t1, -2144($fp)
	mul $t0, $t0, $t1
	sw $t0, -2148($fp)
	lw $t0, -2148($fp)
	lw $t1, -2140($fp)
	add $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	lw $t1, 0($t0)
	sw $t1, -2156($fp)
	lw $t0, -2156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -2160($fp)
	li $t0, 3
	sw $t0, -2164($fp)
	li $t0, 4
	lw $t1, -2164($fp)
	mul $t0, $t0, $t1
	sw $t0, -2168($fp)
	lw $t0, -2168($fp)
	lw $t1, -2160($fp)
	add $t0, $t0, $t1
	sw $t0, -2172($fp)
	lw $t0, -2172($fp)
	lw $t1, 0($t0)
	sw $t1, -2176($fp)
	lw $t0, -2176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -2180($fp)
	li $t0, 4
	sw $t0, -2184($fp)
	li $t0, 4
	lw $t1, -2184($fp)
	mul $t0, $t0, $t1
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	lw $t1, -2180($fp)
	add $t0, $t0, $t1
	sw $t0, -2192($fp)
	lw $t0, -2192($fp)
	lw $t1, 0($t0)
	sw $t1, -2196($fp)
	lw $t0, -2196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -2200($fp)
	li $t0, 5
	sw $t0, -2204($fp)
	li $t0, 4
	lw $t1, -2204($fp)
	mul $t0, $t0, $t1
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	lw $t1, -2200($fp)
	add $t0, $t0, $t1
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	lw $t1, 0($t0)
	sw $t1, -2216($fp)
	lw $t0, -2216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -2220($fp)
	li $t0, 6
	sw $t0, -2224($fp)
	li $t0, 4
	lw $t1, -2224($fp)
	mul $t0, $t0, $t1
	sw $t0, -2228($fp)
	lw $t0, -2228($fp)
	lw $t1, -2220($fp)
	add $t0, $t0, $t1
	sw $t0, -2232($fp)
	lw $t0, -2232($fp)
	lw $t1, 0($t0)
	sw $t1, -2236($fp)
	lw $t0, -2236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1196($fp)
	sw $t0, -2240($fp)
	lw $t0, -2240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1208($fp)
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1220($fp)
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1232($fp)
	sw $t0, -2252($fp)
	lw $t0, -2252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1244($fp)
	sw $t0, -2256($fp)
	lw $t0, -2256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -2260($fp)
	li $t0, 0
	sw $t0, -2264($fp)
	li $t0, 4
	lw $t1, -2264($fp)
	mul $t0, $t0, $t1
	sw $t0, -2268($fp)
	lw $t0, -2268($fp)
	lw $t1, -2260($fp)
	add $t0, $t0, $t1
	sw $t0, -2272($fp)
	lw $t0, -2272($fp)
	lw $t1, 0($t0)
	sw $t1, -2276($fp)
	lw $t0, -2276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -2280($fp)
	li $t0, 1
	sw $t0, -2284($fp)
	li $t0, 4
	lw $t1, -2284($fp)
	mul $t0, $t0, $t1
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	lw $t1, -2280($fp)
	add $t0, $t0, $t1
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	lw $t1, 0($t0)
	sw $t1, -2296($fp)
	lw $t0, -2296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -2300($fp)
	li $t0, 2
	sw $t0, -2304($fp)
	li $t0, 4
	lw $t1, -2304($fp)
	mul $t0, $t0, $t1
	sw $t0, -2308($fp)
	lw $t0, -2308($fp)
	lw $t1, -2300($fp)
	add $t0, $t0, $t1
	sw $t0, -2312($fp)
	lw $t0, -2312($fp)
	lw $t1, 0($t0)
	sw $t1, -2316($fp)
	lw $t0, -2316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -2320($fp)
	li $t0, 3
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
	addi $t0, $fp, -168
	sw $t0, -2340($fp)
	li $t0, 4
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
	addi $t0, $fp, -168
	sw $t0, -2360($fp)
	li $t0, 5
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
	addi $t0, $fp, -168
	sw $t0, -2380($fp)
	li $t0, 6
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
	addi $t0, $fp, -168
	sw $t0, -2400($fp)
	li $t0, 7
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
	lw $t0, -1448($fp)
	sw $t0, -2420($fp)
	lw $t0, -2420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1460($fp)
	sw $t0, -2424($fp)
	lw $t0, -2424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1472($fp)
	sw $t0, -2428($fp)
	lw $t0, -2428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1484($fp)
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1496($fp)
	sw $t0, -2436($fp)
	lw $t0, -2436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2440($fp)
	li $t0, 0
	sw $t0, -2444($fp)
	li $t0, 21697
	sw $t0, -2448($fp)
	lw $t0, -1496($fp)
	sw $t0, -2452($fp)
	lw $t0, -2448($fp)
	lw $t1, -2452($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2456($fp)
	lw $t0, -512($fp)
	sw $t0, -2460($fp)
	lw $t1, -2456($fp)
	lw $t2, -2460($fp)
	bne $t1, $t2, label236
	j label237
label236:
	li $t0, 1
	sw $t0, -2444($fp)
label237:
	lw $t0, -176($fp)
	sw $t0, -2464($fp)
	li $t0, 0
	lw $t1, -2464($fp)
	sub $t0, $t0, $t1
	sw $t0, -2468($fp)
	addi $sp, $sp, -4
	lw $t0, -2444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2468($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2472($fp)
	addi $sp, $sp, 12
	lw $t1, -2472($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label234
label234:
	li $t0, 1
	sw $t0, -2440($fp)
label235:
	lw $ra, -4($fp)
	lw $v0, -2440($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -2476($fp)
	li $t0, 60816
	sw $t0, -2480($fp)
	lw $t1, -2480($fp)
	li $t2, 0
	bne $t1, $t2, label243
	j label242
label243:
	li $t0, 43661
	sw $t0, -2484($fp)
	lw $t1, -2484($fp)
	li $t2, 0
	bne $t1, $t2, label241
	j label242
label241:
	li $t0, 1
	sw $t0, -2476($fp)
label242:
	lw $t0, -2476($fp)
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -2488($fp)
	lw $t0, -2488($fp)
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	sw $t0, -2492($fp)
	lw $t1, -2492($fp)
	li $t2, 0
	bne $t1, $t2, label238
	j label239
label238:
	lw $t0, -548($fp)
	sw $t0, -2496($fp)
	li $t0, 0
	sw $t0, -2500($fp)
	lw $t0, -788($fp)
	sw $t0, -2504($fp)
	lw $t1, -2504($fp)
	li $t2, 0
	bne $t1, $t2, label248
	j label247
label247:
	li $t0, 1
	sw $t0, -2500($fp)
label248:
	li $t0, 0
	lw $t1, -2500($fp)
	sub $t0, $t0, $t1
	sw $t0, -2508($fp)
	lw $t0, -2496($fp)
	lw $t1, -2508($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2512($fp)
	lw $t1, -2512($fp)
	li $t2, 0
	bne $t1, $t2, label244
	j label245
label244:
label249:
	lw $t0, -368($fp)
	sw $t0, -2516($fp)
	li $t0, 0
	lw $t1, -2516($fp)
	sub $t0, $t0, $t1
	sw $t0, -2520($fp)
	lw $t1, -2520($fp)
	li $t2, 0
	bne $t1, $t2, label251
	j label250
label250:
label252:
	li $t0, 46161
	sw $t0, -2524($fp)
	li $t0, 0
	lw $t1, -2524($fp)
	sub $t0, $t0, $t1
	sw $t0, -2528($fp)
	li $t0, 0
	lw $t1, -2528($fp)
	sub $t0, $t0, $t1
	sw $t0, -2532($fp)
	li $t0, 0
	lw $t1, -2532($fp)
	sub $t0, $t0, $t1
	sw $t0, -2536($fp)
	li $t0, 0
	sw $t0, -2540($fp)
	jal f6
	sw $v0, -2544($fp)
	addi $sp, $sp, 4
	lw $t1, -2544($fp)
	li $t2, 0
	bne $t1, $t2, label255
	j label256
label255:
	li $t0, 1
	sw $t0, -2540($fp)
label256:
	lw $t0, -2536($fp)
	lw $t1, -2540($fp)
	add $t0, $t0, $t1
	sw $t0, -2548($fp)
	lw $t1, -2548($fp)
	li $t2, 0
	bne $t1, $t2, label253
	j label254
label253:
	li $t0, 61962
	sw $t0, -2564($fp)
	addi $t0, $fp, -2560
	sw $t0, -2568($fp)
	li $t0, 0
	sw $t0, -2572($fp)
	lw $t0, -2572($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2576($fp)
	lw $t0, -2568($fp)
	lw $t1, -2576($fp)
	add $t0, $t0, $t1
	sw $t0, -2580($fp)
	lw $t0, -2564($fp)
	lw $t1, -2580($fp)
	sw $t0, 0($t1)
	lw $t0, -2580($fp)
	lw $t1, 0($t0)
	sw $t1, -2584($fp)
	li $t0, 35620
	sw $t0, -2588($fp)
	addi $t0, $fp, -2560
	sw $t0, -2592($fp)
	li $t0, 1
	sw $t0, -2596($fp)
	lw $t0, -2596($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2600($fp)
	lw $t0, -2592($fp)
	lw $t1, -2600($fp)
	add $t0, $t0, $t1
	sw $t0, -2604($fp)
	lw $t0, -2588($fp)
	lw $t1, -2604($fp)
	sw $t0, 0($t1)
	lw $t0, -2604($fp)
	lw $t1, 0($t0)
	sw $t1, -2608($fp)
	li $t0, 64730
	sw $t0, -2612($fp)
	addi $t0, $fp, -2560
	sw $t0, -2616($fp)
	li $t0, 2
	sw $t0, -2620($fp)
	lw $t0, -2620($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2624($fp)
	lw $t0, -2616($fp)
	lw $t1, -2624($fp)
	add $t0, $t0, $t1
	sw $t0, -2628($fp)
	lw $t0, -2612($fp)
	lw $t1, -2628($fp)
	sw $t0, 0($t1)
	lw $t0, -2628($fp)
	lw $t1, 0($t0)
	sw $t1, -2632($fp)
	li $t0, 33471
	sw $t0, -2636($fp)
	li $t0, 0
	sw $t0, -2640($fp)
	li $t0, 49255
	sw $t0, -2644($fp)
	lw $t1, -2644($fp)
	li $t2, 0
	bne $t1, $t2, label259
	j label257
label259:
	lw $t0, -524($fp)
	sw $t0, -2648($fp)
	lw $t1, -2648($fp)
	li $t2, 0
	bne $t1, $t2, label257
	j label258
label257:
	li $t0, 1
	sw $t0, -2640($fp)
label258:
	li $t0, 0
	sw $t0, -2652($fp)
	li $t0, 58823
	sw $t0, -2656($fp)
	li $t0, 0
	sw $t0, -2660($fp)
	lw $t0, -980($fp)
	sw $t0, -2664($fp)
	lw $t0, -1496($fp)
	sw $t0, -2668($fp)
	lw $t1, -2664($fp)
	lw $t2, -2668($fp)
	beq $t1, $t2, label264
	j label263
label264:
	lw $t0, 16($fp)
	sw $t0, -2672($fp)
	lw $t1, -2672($fp)
	li $t2, 0
	bne $t1, $t2, label262
	j label263
label262:
	li $t0, 1
	sw $t0, -2660($fp)
label263:
	li $t0, 0
	sw $t0, -2676($fp)
	addi $t0, $fp, -2560
	sw $t0, -2680($fp)
	lw $t0, -788($fp)
	sw $t0, -2684($fp)
	li $t0, 4
	lw $t1, -2684($fp)
	mul $t0, $t0, $t1
	sw $t0, -2688($fp)
	lw $t0, -2688($fp)
	lw $t1, -2680($fp)
	add $t0, $t0, $t1
	sw $t0, -2692($fp)
	lw $t0, -2692($fp)
	lw $t1, 0($t0)
	sw $t1, -2696($fp)
	lw $t0, -1460($fp)
	sw $t0, -2700($fp)
	lw $t1, -2696($fp)
	lw $t2, -2700($fp)
	bge $t1, $t2, label265
	j label266
label265:
	li $t0, 1
	sw $t0, -2676($fp)
label266:
	li $t0, 0
	sw $t0, -2704($fp)
	lw $t0, -572($fp)
	sw $t0, -2708($fp)
	lw $t1, -2708($fp)
	li $t2, 0
	bne $t1, $t2, label269
	j label268
label269:
	lw $t0, -980($fp)
	sw $t0, -2712($fp)
	lw $t1, -2712($fp)
	li $t2, 0
	bne $t1, $t2, label267
	j label268
label267:
	li $t0, 1
	sw $t0, -2704($fp)
label268:
	li $t0, 0
	sw $t0, -2716($fp)
	li $t0, 38199
	sw $t0, -2720($fp)
	lw $t1, -2720($fp)
	li $t2, 0
	bne $t1, $t2, label272
	j label271
label272:
	lw $t0, -512($fp)
	sw $t0, -2724($fp)
	lw $t1, -2724($fp)
	li $t2, 0
	bne $t1, $t2, label270
	j label271
label270:
	li $t0, 1
	sw $t0, -2716($fp)
label271:
	addi $sp, $sp, -4
	lw $t0, -2656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2716($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2728($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -2732($fp)
	li $t0, 0
	sw $t0, -2736($fp)
	lw $t0, -980($fp)
	sw $t0, -2740($fp)
	lw $t0, -992($fp)
	sw $t0, -2744($fp)
	lw $t1, -2740($fp)
	lw $t2, -2744($fp)
	beq $t1, $t2, label275
	j label276
label275:
	li $t0, 1
	sw $t0, -2736($fp)
label276:
	lw $t0, -1208($fp)
	sw $t0, -2748($fp)
	lw $t1, -2736($fp)
	lw $t2, -2748($fp)
	beq $t1, $t2, label273
	j label274
label273:
	li $t0, 1
	sw $t0, -2732($fp)
label274:
	addi $sp, $sp, -4
	lw $t0, -2732($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2752($fp)
	addi $sp, $sp, 8
	lw $t1, -2728($fp)
	lw $t2, -2752($fp)
	bne $t1, $t2, label260
	j label261
label260:
	li $t0, 1
	sw $t0, -2652($fp)
label261:
	lw $t0, -2652($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -2756($fp)
	li $t0, 0
	sw $t0, -2760($fp)
	addi $t0, $fp, -136
	sw $t0, -2764($fp)
	li $t0, 0
	sw $t0, -2768($fp)
	li $t0, 0
	sw $t0, -2772($fp)
	lw $t0, -356($fp)
	sw $t0, -2776($fp)
	lw $t0, -776($fp)
	sw $t0, -2780($fp)
	lw $t1, -2776($fp)
	lw $t2, -2780($fp)
	ble $t1, $t2, label281
	j label282
label281:
	li $t0, 1
	sw $t0, -2772($fp)
label282:
	lw $t0, -980($fp)
	sw $t0, -2784($fp)
	lw $t1, -2772($fp)
	lw $t2, -2784($fp)
	beq $t1, $t2, label279
	j label280
label279:
	li $t0, 1
	sw $t0, -2768($fp)
label280:
	li $t0, 4
	lw $t1, -2768($fp)
	mul $t0, $t0, $t1
	sw $t0, -2788($fp)
	lw $t0, -2788($fp)
	lw $t1, -2764($fp)
	add $t0, $t0, $t1
	sw $t0, -2792($fp)
	lw $t0, -2792($fp)
	lw $t1, 0($t0)
	sw $t1, -2796($fp)
	li $t0, 59611
	sw $t0, -2800($fp)
	lw $t1, -2796($fp)
	lw $t2, -2800($fp)
	blt $t1, $t2, label277
	j label278
label277:
	li $t0, 1
	sw $t0, -2760($fp)
label278:
	j label252
label254:
	li $t0, 0
	sw $t0, -2804($fp)
	lw $t0, -548($fp)
	sw $t0, -2808($fp)
	lw $t0, -1460($fp)
	sw $t0, -2812($fp)
	lw $t0, -2808($fp)
	lw $t1, -2812($fp)
	mul $t0, $t0, $t1
	sw $t0, -2816($fp)
	lw $t0, -200($fp)
	sw $t0, -2820($fp)
	lw $t0, -2816($fp)
	lw $t1, -2820($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2824($fp)
	li $t0, 0
	sw $t0, -2828($fp)
	li $t0, 38049
	sw $t0, -2832($fp)
	li $t0, 30025
	sw $t0, -2836($fp)
	lw $t1, -2832($fp)
	lw $t2, -2836($fp)
	bgt $t1, $t2, label285
	j label286
label285:
	li $t0, 1
	sw $t0, -2828($fp)
label286:
	li $t0, 0
	sw $t0, -2840($fp)
	li $t0, 0
	sw $t0, -2844($fp)
	lw $t0, -356($fp)
	sw $t0, -2848($fp)
	li $t0, 59101
	sw $t0, -2852($fp)
	lw $t1, -2848($fp)
	lw $t2, -2852($fp)
	blt $t1, $t2, label289
	j label290
label289:
	li $t0, 1
	sw $t0, -2844($fp)
label290:
	li $t0, 45923
	sw $t0, -2856($fp)
	lw $t1, -2844($fp)
	lw $t2, -2856($fp)
	bge $t1, $t2, label287
	j label288
label287:
	li $t0, 1
	sw $t0, -2840($fp)
label288:
	li $t0, 0
	sw $t0, -2860($fp)
	li $t0, 0
	sw $t0, -2864($fp)
	li $t0, 11127
	sw $t0, -2868($fp)
	li $t0, 16186
	sw $t0, -2872($fp)
	lw $t1, -2868($fp)
	lw $t2, -2872($fp)
	ble $t1, $t2, label293
	j label294
label293:
	li $t0, 1
	sw $t0, -2864($fp)
label294:
	li $t0, 62337
	sw $t0, -2876($fp)
	lw $t1, -2864($fp)
	lw $t2, -2876($fp)
	bne $t1, $t2, label291
	j label292
label291:
	li $t0, 1
	sw $t0, -2860($fp)
label292:
	addi $t0, $fp, -136
	sw $t0, -2880($fp)
	lw $t0, -1472($fp)
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
	addi $sp, $sp, -4
	lw $t0, -2824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2896($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2900($fp)
	addi $sp, $sp, 24
	jal f6
	sw $v0, -2904($fp)
	addi $sp, $sp, 4
	lw $t1, -2900($fp)
	lw $t2, -2904($fp)
	bne $t1, $t2, label283
	j label284
label283:
	li $t0, 1
	sw $t0, -2804($fp)
label284:
	j label249
label251:
	j label246
label245:
label295:
	li $t0, 0
	sw $t0, -2908($fp)
	lw $t0, -1244($fp)
	sw $t0, -2912($fp)
	lw $t1, -2912($fp)
	li $t2, 0
	bne $t1, $t2, label299
	j label300
label300:
	li $t0, 58761
	sw $t0, -2916($fp)
	lw $t1, -2916($fp)
	li $t2, 0
	bne $t1, $t2, label298
	j label299
label298:
	li $t0, 1
	sw $t0, -2908($fp)
label299:
	addi $sp, $sp, -4
	lw $t0, -2908($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2920($fp)
	addi $sp, $sp, 8
	li $t0, 36378
	sw $t0, -2924($fp)
	li $t0, 0
	lw $t1, -2924($fp)
	sub $t0, $t0, $t1
	sw $t0, -2928($fp)
	lw $t0, -2920($fp)
	lw $t1, -2928($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2932($fp)
	lw $t1, -2932($fp)
	li $t2, 0
	bne $t1, $t2, label296
	j label297
label296:
	li $t0, 58905
	sw $t0, -2948($fp)
	addi $t0, $fp, -2944
	sw $t0, -2952($fp)
	li $t0, 0
	sw $t0, -2956($fp)
	lw $t0, -2956($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2960($fp)
	lw $t0, -2952($fp)
	lw $t1, -2960($fp)
	add $t0, $t0, $t1
	sw $t0, -2964($fp)
	lw $t0, -2948($fp)
	lw $t1, -2964($fp)
	sw $t0, 0($t1)
	lw $t0, -2964($fp)
	lw $t1, 0($t0)
	sw $t1, -2968($fp)
	li $t0, 55269
	sw $t0, -2972($fp)
	addi $t0, $fp, -2944
	sw $t0, -2976($fp)
	li $t0, 1
	sw $t0, -2980($fp)
	lw $t0, -2980($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2984($fp)
	lw $t0, -2976($fp)
	lw $t1, -2984($fp)
	add $t0, $t0, $t1
	sw $t0, -2988($fp)
	lw $t0, -2972($fp)
	lw $t1, -2988($fp)
	sw $t0, 0($t1)
	lw $t0, -2988($fp)
	lw $t1, 0($t0)
	sw $t1, -2992($fp)
	li $t0, 30628
	sw $t0, -2996($fp)
	addi $t0, $fp, -2944
	sw $t0, -3000($fp)
	li $t0, 2
	sw $t0, -3004($fp)
	lw $t0, -3004($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3008($fp)
	lw $t0, -3000($fp)
	lw $t1, -3008($fp)
	add $t0, $t0, $t1
	sw $t0, -3012($fp)
	lw $t0, -2996($fp)
	lw $t1, -3012($fp)
	sw $t0, 0($t1)
	lw $t0, -3012($fp)
	lw $t1, 0($t0)
	sw $t1, -3016($fp)
	li $t0, 10943
	sw $t0, -3020($fp)
	lw $t0, -3020($fp)
	sw $t0, -3024($fp)
	lw $t0, -3024($fp)
	sw $t0, -3028($fp)
	li $t0, 49400
	sw $t0, -3032($fp)
	lw $t0, -3032($fp)
	sw $t0, -3036($fp)
	lw $t0, -3036($fp)
	sw $t0, -3040($fp)
	li $t0, 0
	sw $t0, -3044($fp)
	lw $t0, -1004($fp)
	sw $t0, -3048($fp)
	lw $t0, -536($fp)
	sw $t0, -3052($fp)
	lw $t1, -3048($fp)
	lw $t2, -3052($fp)
	bgt $t1, $t2, label301
	j label302
label301:
	li $t0, 1
	sw $t0, -3044($fp)
label302:
	lw $t0, -3044($fp)
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	sw $t0, -3056($fp)
	lw $t0, -3056($fp)
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	sw $t0, -3060($fp)
	addi $t0, $fp, -48
	sw $t0, -3064($fp)
	lw $t0, -3024($fp)
	sw $t0, -3068($fp)
	li $t0, 0
	lw $t1, -3068($fp)
	sub $t0, $t0, $t1
	sw $t0, -3072($fp)
	lw $t0, -3072($fp)
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -3076($fp)
	li $t0, 4
	lw $t1, -3076($fp)
	mul $t0, $t0, $t1
	sw $t0, -3080($fp)
	lw $t0, -3080($fp)
	lw $t1, -3064($fp)
	add $t0, $t0, $t1
	sw $t0, -3084($fp)
	lw $t0, -3084($fp)
	lw $t1, 0($t0)
	sw $t1, -3088($fp)
	addi $t0, $fp, -2944
	sw $t0, -3092($fp)
	li $t0, 0
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
	lw $t0, -3108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2944
	sw $t0, -3112($fp)
	li $t0, 1
	sw $t0, -3116($fp)
	li $t0, 4
	lw $t1, -3116($fp)
	mul $t0, $t0, $t1
	sw $t0, -3120($fp)
	lw $t0, -3120($fp)
	lw $t1, -3112($fp)
	add $t0, $t0, $t1
	sw $t0, -3124($fp)
	lw $t0, -3124($fp)
	lw $t1, 0($t0)
	sw $t1, -3128($fp)
	lw $t0, -3128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2944
	sw $t0, -3132($fp)
	li $t0, 2
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
	lw $t0, -3024($fp)
	sw $t0, -3152($fp)
	lw $t0, -3152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3036($fp)
	sw $t0, -3156($fp)
	lw $t0, -3156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3160($fp)
	addi $t0, $fp, -168
	sw $t0, -3164($fp)
	li $t0, 5
	sw $t0, -3168($fp)
	li $t0, 4
	lw $t1, -3168($fp)
	mul $t0, $t0, $t1
	sw $t0, -3172($fp)
	lw $t0, -3172($fp)
	lw $t1, -3164($fp)
	add $t0, $t0, $t1
	sw $t0, -3176($fp)
	lw $t0, -3176($fp)
	lw $t1, 0($t0)
	sw $t1, -3180($fp)
	li $t0, 62069
	sw $t0, -3184($fp)
	lw $t0, -3180($fp)
	lw $t1, -3184($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3188($fp)
	addi $t0, $fp, -28
	sw $t0, -3192($fp)
	lw $t0, -1208($fp)
	sw $t0, -3196($fp)
	li $t0, 4
	lw $t1, -3196($fp)
	mul $t0, $t0, $t1
	sw $t0, -3200($fp)
	lw $t0, -3200($fp)
	lw $t1, -3192($fp)
	add $t0, $t0, $t1
	sw $t0, -3204($fp)
	lw $t0, -3204($fp)
	lw $t1, 0($t0)
	sw $t1, -3208($fp)
	lw $t0, -3188($fp)
	lw $t1, -3208($fp)
	mul $t0, $t0, $t1
	sw $t0, -3212($fp)
	li $t0, 51082
	sw $t0, -3216($fp)
	lw $t0, -3212($fp)
	lw $t1, -3216($fp)
	mul $t0, $t0, $t1
	sw $t0, -3220($fp)
	lw $t1, -3220($fp)
	li $t2, 0
	bne $t1, $t2, label305
	j label304
label305:
	li $t0, 6868
	sw $t0, -3224($fp)
	li $t0, 0
	lw $t1, -3224($fp)
	sub $t0, $t0, $t1
	sw $t0, -3228($fp)
	lw $t1, -3228($fp)
	li $t2, 0
	bne $t1, $t2, label303
	j label304
label303:
	li $t0, 1
	sw $t0, -3160($fp)
label304:
	lw $ra, -4($fp)
	lw $v0, -3160($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -3232($fp)
	lw $t0, -1220($fp)
	sw $t0, -3236($fp)
	li $t0, 0
	lw $t1, -3236($fp)
	sub $t0, $t0, $t1
	sw $t0, -3240($fp)
	lw $t1, -3240($fp)
	li $t2, 0
	bne $t1, $t2, label310
	j label309
label309:
	li $t0, 1
	sw $t0, -3232($fp)
label310:
	li $t0, 0
	lw $t1, -3232($fp)
	sub $t0, $t0, $t1
	sw $t0, -3244($fp)
	lw $t1, -3244($fp)
	li $t2, 0
	bne $t1, $t2, label306
	j label307
label306:
	lw $t0, -560($fp)
	sw $t0, -3248($fp)
	lw $t0, -3248($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -3252($fp)
	lw $t0, 8($fp)
	sw $t0, -3256($fp)
	lw $t0, -512($fp)
	sw $t0, -3260($fp)
	lw $t0, -3256($fp)
	lw $t1, -3260($fp)
	sub $t0, $t0, $t1
	sw $t0, -3264($fp)
	addi $sp, $sp, -4
	lw $t0, -3252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3264($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3268($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -3268($fp)
	sub $t0, $t0, $t1
	sw $t0, -3272($fp)
	lw $ra, -4($fp)
	lw $v0, -3272($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label308
label307:
	li $t0, 0
	sw $t0, -3276($fp)
	addi $t0, $fp, -108
	sw $t0, -3280($fp)
	li $t0, 2
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
	addi $t0, $fp, -48
	sw $t0, -3300($fp)
	li $t0, 4
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
	lw $t0, -3296($fp)
	lw $t1, -3316($fp)
	mul $t0, $t0, $t1
	sw $t0, -3320($fp)
	lw $t0, 12($fp)
	sw $t0, -3324($fp)
	lw $t0, -3320($fp)
	lw $t1, -3324($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3328($fp)
	li $t0, 0
	lw $t1, -3328($fp)
	sub $t0, $t0, $t1
	sw $t0, -3332($fp)
	addi $t0, $fp, -28
	sw $t0, -3336($fp)
	li $t0, 0
	sw $t0, -3340($fp)
	lw $t0, 12($fp)
	sw $t0, -3344($fp)
	lw $t1, -3344($fp)
	li $t2, 0
	bne $t1, $t2, label313
	j label315
label315:
	li $t0, 42789
	sw $t0, -3348($fp)
	lw $t1, -3348($fp)
	li $t2, 0
	bne $t1, $t2, label313
	j label314
label313:
	li $t0, 1
	sw $t0, -3340($fp)
label314:
	li $t0, 4
	lw $t1, -3340($fp)
	mul $t0, $t0, $t1
	sw $t0, -3352($fp)
	lw $t0, -3352($fp)
	lw $t1, -3336($fp)
	add $t0, $t0, $t1
	sw $t0, -3356($fp)
	lw $t0, -3356($fp)
	lw $t1, 0($t0)
	sw $t1, -3360($fp)
	lw $t1, -3332($fp)
	lw $t2, -3360($fp)
	beq $t1, $t2, label311
	j label312
label311:
	li $t0, 1
	sw $t0, -3276($fp)
label312:
label308:
	addi $t0, $fp, -2944
	sw $t0, -3364($fp)
	li $t0, 0
	sw $t0, -3368($fp)
	li $t0, 4
	lw $t1, -3368($fp)
	mul $t0, $t0, $t1
	sw $t0, -3372($fp)
	lw $t0, -3372($fp)
	lw $t1, -3364($fp)
	add $t0, $t0, $t1
	sw $t0, -3376($fp)
	lw $t0, -3376($fp)
	lw $t1, 0($t0)
	sw $t1, -3380($fp)
	lw $t0, -3380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2944
	sw $t0, -3384($fp)
	li $t0, 1
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
	addi $t0, $fp, -2944
	sw $t0, -3404($fp)
	li $t0, 2
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
	lw $t0, -3024($fp)
	sw $t0, -3424($fp)
	lw $t0, -3424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3036($fp)
	sw $t0, -3428($fp)
	lw $t0, -3428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3432($fp)
	li $t0, 0
	sw $t0, -3436($fp)
	li $t0, 0
	sw $t0, -3440($fp)
	addi $t0, $fp, -2944
	sw $t0, -3444($fp)
	lw $t0, -776($fp)
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
	lw $t1, -3460($fp)
	li $t2, 0
	bne $t1, $t2, label321
	j label320
label320:
	li $t0, 1
	sw $t0, -3440($fp)
label321:
	li $t0, 0
	sw $t0, -3464($fp)
	lw $t0, -1244($fp)
	sw $t0, -3468($fp)
	li $t0, 0
	lw $t1, -3468($fp)
	sub $t0, $t0, $t1
	sw $t0, -3472($fp)
	lw $t1, -3472($fp)
	li $t2, 0
	bne $t1, $t2, label323
	j label322
label322:
	li $t0, 1
	sw $t0, -3464($fp)
label323:
	lw $t1, -3440($fp)
	lw $t2, -3464($fp)
	beq $t1, $t2, label318
	j label319
label318:
	li $t0, 1
	sw $t0, -3436($fp)
label319:
	addi $t0, $fp, -168
	sw $t0, -3476($fp)
	li $t0, 63586
	sw $t0, -3480($fp)
	li $t0, 10724
	sw $t0, -3484($fp)
	lw $t0, -3480($fp)
	lw $t1, -3484($fp)
	add $t0, $t0, $t1
	sw $t0, -3488($fp)
	lw $t0, -1004($fp)
	sw $t0, -3492($fp)
	lw $t0, -3488($fp)
	lw $t1, -3492($fp)
	sub $t0, $t0, $t1
	sw $t0, -3496($fp)
	addi $t0, $fp, -2944
	sw $t0, -3500($fp)
	lw $t0, -3036($fp)
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
	li $t0, 20614
	sw $t0, -3520($fp)
	lw $t0, -3516($fp)
	lw $t1, -3520($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3524($fp)
	addi $sp, $sp, -4
	lw $t0, -3496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3524($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3528($fp)
	addi $sp, $sp, 12
	li $t0, 4
	lw $t1, -3528($fp)
	mul $t0, $t0, $t1
	sw $t0, -3532($fp)
	lw $t0, -3532($fp)
	lw $t1, -3476($fp)
	add $t0, $t0, $t1
	sw $t0, -3536($fp)
	lw $t0, -3536($fp)
	lw $t1, 0($t0)
	sw $t1, -3540($fp)
	lw $t1, -3436($fp)
	lw $t2, -3540($fp)
	bne $t1, $t2, label316
	j label317
label316:
	li $t0, 1
	sw $t0, -3432($fp)
label317:
	lw $ra, -4($fp)
	lw $v0, -3432($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label295
label297:
label246:
label239:
	lw $t0, -176($fp)
	sw $t0, -3544($fp)
	lw $t0, -3544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -188($fp)
	sw $t0, -3548($fp)
	lw $t0, -3548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -200($fp)
	sw $t0, -3552($fp)
	lw $t0, -3552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -3556($fp)
	li $t0, 0
	sw $t0, -3560($fp)
	li $t0, 4
	lw $t1, -3560($fp)
	mul $t0, $t0, $t1
	sw $t0, -3564($fp)
	lw $t0, -3564($fp)
	lw $t1, -3556($fp)
	add $t0, $t0, $t1
	sw $t0, -3568($fp)
	lw $t0, -3568($fp)
	lw $t1, 0($t0)
	sw $t1, -3572($fp)
	lw $t0, -3572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -3576($fp)
	li $t0, 1
	sw $t0, -3580($fp)
	li $t0, 4
	lw $t1, -3580($fp)
	mul $t0, $t0, $t1
	sw $t0, -3584($fp)
	lw $t0, -3584($fp)
	lw $t1, -3576($fp)
	add $t0, $t0, $t1
	sw $t0, -3588($fp)
	lw $t0, -3588($fp)
	lw $t1, 0($t0)
	sw $t1, -3592($fp)
	lw $t0, -3592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -3596($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -3616($fp)
	li $t0, 3
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
	addi $t0, $fp, -28
	sw $t0, -3636($fp)
	li $t0, 4
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
	addi $t0, $fp, -28
	sw $t0, -3656($fp)
	li $t0, 5
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
	lw $t0, -356($fp)
	sw $t0, -3676($fp)
	lw $t0, -3676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -368($fp)
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -380($fp)
	sw $t0, -3684($fp)
	lw $t0, -3684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
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
	addi $t0, $fp, -48
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
	addi $t0, $fp, -48
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
	addi $t0, $fp, -48
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
	addi $t0, $fp, -48
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
	lw $t0, -512($fp)
	sw $t0, -3788($fp)
	lw $t0, -3788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -524($fp)
	sw $t0, -3792($fp)
	lw $t0, -3792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -536($fp)
	sw $t0, -3796($fp)
	lw $t0, -3796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -548($fp)
	sw $t0, -3800($fp)
	lw $t0, -3800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -3804($fp)
	lw $t0, -3804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	sw $t0, -3808($fp)
	lw $t0, -3808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3812($fp)
	li $t0, 0
	sw $t0, -3816($fp)
	li $t0, 4
	lw $t1, -3816($fp)
	mul $t0, $t0, $t1
	sw $t0, -3820($fp)
	lw $t0, -3820($fp)
	lw $t1, -3812($fp)
	add $t0, $t0, $t1
	sw $t0, -3824($fp)
	lw $t0, -3824($fp)
	lw $t1, 0($t0)
	sw $t1, -3828($fp)
	lw $t0, -3828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3832($fp)
	li $t0, 1
	sw $t0, -3836($fp)
	li $t0, 4
	lw $t1, -3836($fp)
	mul $t0, $t0, $t1
	sw $t0, -3840($fp)
	lw $t0, -3840($fp)
	lw $t1, -3832($fp)
	add $t0, $t0, $t1
	sw $t0, -3844($fp)
	lw $t0, -3844($fp)
	lw $t1, 0($t0)
	sw $t1, -3848($fp)
	lw $t0, -3848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3852($fp)
	li $t0, 2
	sw $t0, -3856($fp)
	li $t0, 4
	lw $t1, -3856($fp)
	mul $t0, $t0, $t1
	sw $t0, -3860($fp)
	lw $t0, -3860($fp)
	lw $t1, -3852($fp)
	add $t0, $t0, $t1
	sw $t0, -3864($fp)
	lw $t0, -3864($fp)
	lw $t1, 0($t0)
	sw $t1, -3868($fp)
	lw $t0, -3868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3872($fp)
	li $t0, 3
	sw $t0, -3876($fp)
	li $t0, 4
	lw $t1, -3876($fp)
	mul $t0, $t0, $t1
	sw $t0, -3880($fp)
	lw $t0, -3880($fp)
	lw $t1, -3872($fp)
	add $t0, $t0, $t1
	sw $t0, -3884($fp)
	lw $t0, -3884($fp)
	lw $t1, 0($t0)
	sw $t1, -3888($fp)
	lw $t0, -3888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3892($fp)
	li $t0, 4
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
	lw $t0, -3908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3912($fp)
	li $t0, 5
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
	addi $t0, $fp, -80
	sw $t0, -3932($fp)
	li $t0, 6
	sw $t0, -3936($fp)
	li $t0, 4
	lw $t1, -3936($fp)
	mul $t0, $t0, $t1
	sw $t0, -3940($fp)
	lw $t0, -3940($fp)
	lw $t1, -3932($fp)
	add $t0, $t0, $t1
	sw $t0, -3944($fp)
	lw $t0, -3944($fp)
	lw $t1, 0($t0)
	sw $t1, -3948($fp)
	lw $t0, -3948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3952($fp)
	li $t0, 7
	sw $t0, -3956($fp)
	li $t0, 4
	lw $t1, -3956($fp)
	mul $t0, $t0, $t1
	sw $t0, -3960($fp)
	lw $t0, -3960($fp)
	lw $t1, -3952($fp)
	add $t0, $t0, $t1
	sw $t0, -3964($fp)
	lw $t0, -3964($fp)
	lw $t1, 0($t0)
	sw $t1, -3968($fp)
	lw $t0, -3968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -776($fp)
	sw $t0, -3972($fp)
	lw $t0, -3972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -788($fp)
	sw $t0, -3976($fp)
	lw $t0, -3976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -3980($fp)
	li $t0, 0
	sw $t0, -3984($fp)
	li $t0, 4
	lw $t1, -3984($fp)
	mul $t0, $t0, $t1
	sw $t0, -3988($fp)
	lw $t0, -3988($fp)
	lw $t1, -3980($fp)
	add $t0, $t0, $t1
	sw $t0, -3992($fp)
	lw $t0, -3992($fp)
	lw $t1, 0($t0)
	sw $t1, -3996($fp)
	lw $t0, -3996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -4000($fp)
	li $t0, 1
	sw $t0, -4004($fp)
	li $t0, 4
	lw $t1, -4004($fp)
	mul $t0, $t0, $t1
	sw $t0, -4008($fp)
	lw $t0, -4008($fp)
	lw $t1, -4000($fp)
	add $t0, $t0, $t1
	sw $t0, -4012($fp)
	lw $t0, -4012($fp)
	lw $t1, 0($t0)
	sw $t1, -4016($fp)
	lw $t0, -4016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -4020($fp)
	li $t0, 2
	sw $t0, -4024($fp)
	li $t0, 4
	lw $t1, -4024($fp)
	mul $t0, $t0, $t1
	sw $t0, -4028($fp)
	lw $t0, -4028($fp)
	lw $t1, -4020($fp)
	add $t0, $t0, $t1
	sw $t0, -4032($fp)
	lw $t0, -4032($fp)
	lw $t1, 0($t0)
	sw $t1, -4036($fp)
	lw $t0, -4036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -4040($fp)
	li $t0, 3
	sw $t0, -4044($fp)
	li $t0, 4
	lw $t1, -4044($fp)
	mul $t0, $t0, $t1
	sw $t0, -4048($fp)
	lw $t0, -4048($fp)
	lw $t1, -4040($fp)
	add $t0, $t0, $t1
	sw $t0, -4052($fp)
	lw $t0, -4052($fp)
	lw $t1, 0($t0)
	sw $t1, -4056($fp)
	lw $t0, -4056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -4060($fp)
	li $t0, 4
	sw $t0, -4064($fp)
	li $t0, 4
	lw $t1, -4064($fp)
	mul $t0, $t0, $t1
	sw $t0, -4068($fp)
	lw $t0, -4068($fp)
	lw $t1, -4060($fp)
	add $t0, $t0, $t1
	sw $t0, -4072($fp)
	lw $t0, -4072($fp)
	lw $t1, 0($t0)
	sw $t1, -4076($fp)
	lw $t0, -4076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -4080($fp)
	li $t0, 5
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
	addi $t0, $fp, -108
	sw $t0, -4100($fp)
	li $t0, 6
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
	lw $t0, -4116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -968($fp)
	sw $t0, -4120($fp)
	lw $t0, -4120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -980($fp)
	sw $t0, -4124($fp)
	lw $t0, -4124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -992($fp)
	sw $t0, -4128($fp)
	lw $t0, -4128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1004($fp)
	sw $t0, -4132($fp)
	lw $t0, -4132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1016($fp)
	sw $t0, -4136($fp)
	lw $t0, -4136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -4140($fp)
	li $t0, 0
	sw $t0, -4144($fp)
	li $t0, 4
	lw $t1, -4144($fp)
	mul $t0, $t0, $t1
	sw $t0, -4148($fp)
	lw $t0, -4148($fp)
	lw $t1, -4140($fp)
	add $t0, $t0, $t1
	sw $t0, -4152($fp)
	lw $t0, -4152($fp)
	lw $t1, 0($t0)
	sw $t1, -4156($fp)
	lw $t0, -4156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -4160($fp)
	li $t0, 1
	sw $t0, -4164($fp)
	li $t0, 4
	lw $t1, -4164($fp)
	mul $t0, $t0, $t1
	sw $t0, -4168($fp)
	lw $t0, -4168($fp)
	lw $t1, -4160($fp)
	add $t0, $t0, $t1
	sw $t0, -4172($fp)
	lw $t0, -4172($fp)
	lw $t1, 0($t0)
	sw $t1, -4176($fp)
	lw $t0, -4176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -4180($fp)
	li $t0, 2
	sw $t0, -4184($fp)
	li $t0, 4
	lw $t1, -4184($fp)
	mul $t0, $t0, $t1
	sw $t0, -4188($fp)
	lw $t0, -4188($fp)
	lw $t1, -4180($fp)
	add $t0, $t0, $t1
	sw $t0, -4192($fp)
	lw $t0, -4192($fp)
	lw $t1, 0($t0)
	sw $t1, -4196($fp)
	lw $t0, -4196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -4200($fp)
	li $t0, 3
	sw $t0, -4204($fp)
	li $t0, 4
	lw $t1, -4204($fp)
	mul $t0, $t0, $t1
	sw $t0, -4208($fp)
	lw $t0, -4208($fp)
	lw $t1, -4200($fp)
	add $t0, $t0, $t1
	sw $t0, -4212($fp)
	lw $t0, -4212($fp)
	lw $t1, 0($t0)
	sw $t1, -4216($fp)
	lw $t0, -4216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -4220($fp)
	li $t0, 4
	sw $t0, -4224($fp)
	li $t0, 4
	lw $t1, -4224($fp)
	mul $t0, $t0, $t1
	sw $t0, -4228($fp)
	lw $t0, -4228($fp)
	lw $t1, -4220($fp)
	add $t0, $t0, $t1
	sw $t0, -4232($fp)
	lw $t0, -4232($fp)
	lw $t1, 0($t0)
	sw $t1, -4236($fp)
	lw $t0, -4236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -4240($fp)
	li $t0, 5
	sw $t0, -4244($fp)
	li $t0, 4
	lw $t1, -4244($fp)
	mul $t0, $t0, $t1
	sw $t0, -4248($fp)
	lw $t0, -4248($fp)
	lw $t1, -4240($fp)
	add $t0, $t0, $t1
	sw $t0, -4252($fp)
	lw $t0, -4252($fp)
	lw $t1, 0($t0)
	sw $t1, -4256($fp)
	lw $t0, -4256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -4260($fp)
	li $t0, 6
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
	lw $t0, -1196($fp)
	sw $t0, -4280($fp)
	lw $t0, -4280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1208($fp)
	sw $t0, -4284($fp)
	lw $t0, -4284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1220($fp)
	sw $t0, -4288($fp)
	lw $t0, -4288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1232($fp)
	sw $t0, -4292($fp)
	lw $t0, -4292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1244($fp)
	sw $t0, -4296($fp)
	lw $t0, -4296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -4300($fp)
	li $t0, 0
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
	addi $t0, $fp, -168
	sw $t0, -4320($fp)
	li $t0, 1
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
	addi $t0, $fp, -168
	sw $t0, -4340($fp)
	li $t0, 2
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
	addi $t0, $fp, -168
	sw $t0, -4360($fp)
	li $t0, 3
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
	addi $t0, $fp, -168
	sw $t0, -4380($fp)
	li $t0, 4
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
	addi $t0, $fp, -168
	sw $t0, -4400($fp)
	li $t0, 5
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
	addi $t0, $fp, -168
	sw $t0, -4420($fp)
	li $t0, 6
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
	addi $t0, $fp, -168
	sw $t0, -4440($fp)
	li $t0, 7
	sw $t0, -4444($fp)
	li $t0, 4
	lw $t1, -4444($fp)
	mul $t0, $t0, $t1
	sw $t0, -4448($fp)
	lw $t0, -4448($fp)
	lw $t1, -4440($fp)
	add $t0, $t0, $t1
	sw $t0, -4452($fp)
	lw $t0, -4452($fp)
	lw $t1, 0($t0)
	sw $t1, -4456($fp)
	lw $t0, -4456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1448($fp)
	sw $t0, -4460($fp)
	lw $t0, -4460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1460($fp)
	sw $t0, -4464($fp)
	lw $t0, -4464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1472($fp)
	sw $t0, -4468($fp)
	lw $t0, -4468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1484($fp)
	sw $t0, -4472($fp)
	lw $t0, -4472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1496($fp)
	sw $t0, -4476($fp)
	lw $t0, -4476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4480($fp)
	addi $t0, $fp, -48
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
	lw $t1, -4500($fp)
	li $t2, 0
	bne $t1, $t2, label325
	j label324
label324:
	li $t0, 1
	sw $t0, -4480($fp)
label325:
	lw $ra, -4($fp)
	lw $v0, -4480($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -176($fp)
	sw $t0, -4504($fp)
	lw $t0, -4504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -188($fp)
	sw $t0, -4508($fp)
	lw $t0, -4508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -200($fp)
	sw $t0, -4512($fp)
	lw $t0, -4512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	lw $t0, -356($fp)
	sw $t0, -4636($fp)
	lw $t0, -4636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -368($fp)
	sw $t0, -4640($fp)
	lw $t0, -4640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -380($fp)
	sw $t0, -4644($fp)
	lw $t0, -4644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -4648($fp)
	li $t0, 0
	sw $t0, -4652($fp)
	li $t0, 4
	lw $t1, -4652($fp)
	mul $t0, $t0, $t1
	sw $t0, -4656($fp)
	lw $t0, -4656($fp)
	lw $t1, -4648($fp)
	add $t0, $t0, $t1
	sw $t0, -4660($fp)
	lw $t0, -4660($fp)
	lw $t1, 0($t0)
	sw $t1, -4664($fp)
	lw $t0, -4664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -4668($fp)
	li $t0, 1
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
	addi $t0, $fp, -48
	sw $t0, -4688($fp)
	li $t0, 2
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
	addi $t0, $fp, -48
	sw $t0, -4708($fp)
	li $t0, 3
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
	lw $t0, -4724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -4728($fp)
	li $t0, 4
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
	lw $t0, -4744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -512($fp)
	sw $t0, -4748($fp)
	lw $t0, -4748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -524($fp)
	sw $t0, -4752($fp)
	lw $t0, -4752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -536($fp)
	sw $t0, -4756($fp)
	lw $t0, -4756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -548($fp)
	sw $t0, -4760($fp)
	lw $t0, -4760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -4764($fp)
	lw $t0, -4764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	sw $t0, -4768($fp)
	lw $t0, -4768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
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
	lw $t0, -4788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -4792($fp)
	li $t0, 1
	sw $t0, -4796($fp)
	li $t0, 4
	lw $t1, -4796($fp)
	mul $t0, $t0, $t1
	sw $t0, -4800($fp)
	lw $t0, -4800($fp)
	lw $t1, -4792($fp)
	add $t0, $t0, $t1
	sw $t0, -4804($fp)
	lw $t0, -4804($fp)
	lw $t1, 0($t0)
	sw $t1, -4808($fp)
	lw $t0, -4808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -4812($fp)
	li $t0, 2
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
	addi $t0, $fp, -80
	sw $t0, -4832($fp)
	li $t0, 3
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
	addi $t0, $fp, -80
	sw $t0, -4852($fp)
	li $t0, 4
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
	addi $t0, $fp, -80
	sw $t0, -4872($fp)
	li $t0, 5
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
	addi $t0, $fp, -80
	sw $t0, -4892($fp)
	li $t0, 6
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
	addi $t0, $fp, -80
	sw $t0, -4912($fp)
	li $t0, 7
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
	lw $t0, -776($fp)
	sw $t0, -4932($fp)
	lw $t0, -4932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -788($fp)
	sw $t0, -4936($fp)
	lw $t0, -4936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -4940($fp)
	li $t0, 0
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
	addi $t0, $fp, -108
	sw $t0, -4960($fp)
	li $t0, 1
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
	addi $t0, $fp, -108
	sw $t0, -4980($fp)
	li $t0, 2
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
	addi $t0, $fp, -108
	sw $t0, -5000($fp)
	li $t0, 3
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
	addi $t0, $fp, -108
	sw $t0, -5020($fp)
	li $t0, 4
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
	addi $t0, $fp, -108
	sw $t0, -5040($fp)
	li $t0, 5
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
	lw $t0, -5056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -5060($fp)
	li $t0, 6
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
	lw $t0, -5076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -968($fp)
	sw $t0, -5080($fp)
	lw $t0, -5080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -980($fp)
	sw $t0, -5084($fp)
	lw $t0, -5084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -992($fp)
	sw $t0, -5088($fp)
	lw $t0, -5088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1004($fp)
	sw $t0, -5092($fp)
	lw $t0, -5092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1016($fp)
	sw $t0, -5096($fp)
	lw $t0, -5096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -5100($fp)
	li $t0, 0
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
	addi $t0, $fp, -136
	sw $t0, -5120($fp)
	li $t0, 1
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
	addi $t0, $fp, -136
	sw $t0, -5140($fp)
	li $t0, 2
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
	addi $t0, $fp, -136
	sw $t0, -5160($fp)
	li $t0, 3
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
	addi $t0, $fp, -136
	sw $t0, -5180($fp)
	li $t0, 4
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
	addi $t0, $fp, -136
	sw $t0, -5200($fp)
	li $t0, 5
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
	addi $t0, $fp, -136
	sw $t0, -5220($fp)
	li $t0, 6
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
	lw $t0, -1196($fp)
	sw $t0, -5240($fp)
	lw $t0, -5240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1208($fp)
	sw $t0, -5244($fp)
	lw $t0, -5244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1220($fp)
	sw $t0, -5248($fp)
	lw $t0, -5248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1232($fp)
	sw $t0, -5252($fp)
	lw $t0, -5252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1244($fp)
	sw $t0, -5256($fp)
	lw $t0, -5256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -5260($fp)
	li $t0, 0
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
	addi $t0, $fp, -168
	sw $t0, -5280($fp)
	li $t0, 1
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
	lw $t0, -5296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -5300($fp)
	li $t0, 2
	sw $t0, -5304($fp)
	li $t0, 4
	lw $t1, -5304($fp)
	mul $t0, $t0, $t1
	sw $t0, -5308($fp)
	lw $t0, -5308($fp)
	lw $t1, -5300($fp)
	add $t0, $t0, $t1
	sw $t0, -5312($fp)
	lw $t0, -5312($fp)
	lw $t1, 0($t0)
	sw $t1, -5316($fp)
	lw $t0, -5316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -5320($fp)
	li $t0, 3
	sw $t0, -5324($fp)
	li $t0, 4
	lw $t1, -5324($fp)
	mul $t0, $t0, $t1
	sw $t0, -5328($fp)
	lw $t0, -5328($fp)
	lw $t1, -5320($fp)
	add $t0, $t0, $t1
	sw $t0, -5332($fp)
	lw $t0, -5332($fp)
	lw $t1, 0($t0)
	sw $t1, -5336($fp)
	lw $t0, -5336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -5340($fp)
	li $t0, 4
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
	lw $t0, -5356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -5360($fp)
	li $t0, 5
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
	lw $t0, -5376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -5380($fp)
	li $t0, 6
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
	lw $t0, -5396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -5400($fp)
	li $t0, 7
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
	lw $t0, -5416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1448($fp)
	sw $t0, -5420($fp)
	lw $t0, -5420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1460($fp)
	sw $t0, -5424($fp)
	lw $t0, -5424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1472($fp)
	sw $t0, -5428($fp)
	lw $t0, -5428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1484($fp)
	sw $t0, -5432($fp)
	lw $t0, -5432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1496($fp)
	sw $t0, -5436($fp)
	lw $t0, -5436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5440($fp)
	li $t0, 4011
	sw $t0, -5444($fp)
	lw $t0, -5444($fp)
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -5448($fp)
	addi $sp, $sp, -4
	lw $t0, -5448($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5452($fp)
	addi $sp, $sp, 8
	lw $t1, -5452($fp)
	li $t2, 0
	bne $t1, $t2, label327
	j label326
label326:
	li $t0, 1
	sw $t0, -5440($fp)
label327:
	lw $t0, -5440($fp)
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	sw $t0, -5456($fp)
	lw $ra, -4($fp)
	lw $v0, -5456($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 63945
	sw $t0, -5480($fp)
	lw $t0, -5480($fp)
	sw $t0, -5484($fp)
	lw $t0, -5484($fp)
	sw $t0, -5488($fp)
	li $t0, 47376
	sw $t0, -5492($fp)
	lw $t0, -5492($fp)
	sw $t0, -5496($fp)
	lw $t0, -5496($fp)
	sw $t0, -5500($fp)
	li $t0, 20197
	sw $t0, -5504($fp)
	lw $t0, -5504($fp)
	sw $t0, -5508($fp)
	lw $t0, -5508($fp)
	sw $t0, -5512($fp)
	li $t0, 60746
	sw $t0, -5516($fp)
	lw $t0, -5516($fp)
	sw $t0, -5520($fp)
	lw $t0, -5520($fp)
	sw $t0, -5524($fp)
	li $t0, 40941
	sw $t0, -5528($fp)
	lw $t0, -5528($fp)
	sw $t0, -5532($fp)
	lw $t0, -5532($fp)
	sw $t0, -5536($fp)
	li $t0, 584
	sw $t0, -5540($fp)
	addi $t0, $fp, -5468
	sw $t0, -5544($fp)
	li $t0, 0
	sw $t0, -5548($fp)
	lw $t0, -5548($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5552($fp)
	lw $t0, -5544($fp)
	lw $t1, -5552($fp)
	add $t0, $t0, $t1
	sw $t0, -5556($fp)
	lw $t0, -5540($fp)
	lw $t1, -5556($fp)
	sw $t0, 0($t1)
	lw $t0, -5556($fp)
	lw $t1, 0($t0)
	sw $t1, -5560($fp)
	li $t0, 33259
	sw $t0, -5564($fp)
	addi $t0, $fp, -5468
	sw $t0, -5568($fp)
	li $t0, 1
	sw $t0, -5572($fp)
	lw $t0, -5572($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5576($fp)
	lw $t0, -5568($fp)
	lw $t1, -5576($fp)
	add $t0, $t0, $t1
	sw $t0, -5580($fp)
	lw $t0, -5564($fp)
	lw $t1, -5580($fp)
	sw $t0, 0($t1)
	lw $t0, -5580($fp)
	lw $t1, 0($t0)
	sw $t1, -5584($fp)
	li $t0, 5430
	sw $t0, -5588($fp)
	addi $t0, $fp, -5468
	sw $t0, -5592($fp)
	li $t0, 2
	sw $t0, -5596($fp)
	lw $t0, -5596($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5600($fp)
	lw $t0, -5592($fp)
	lw $t1, -5600($fp)
	add $t0, $t0, $t1
	sw $t0, -5604($fp)
	lw $t0, -5588($fp)
	lw $t1, -5604($fp)
	sw $t0, 0($t1)
	lw $t0, -5604($fp)
	lw $t1, 0($t0)
	sw $t1, -5608($fp)
	li $t0, 59345
	sw $t0, -5612($fp)
	lw $t0, -5612($fp)
	sw $t0, -5616($fp)
	lw $t0, -5616($fp)
	sw $t0, -5620($fp)
	li $t0, 4101
	sw $t0, -5624($fp)
	addi $t0, $fp, -5472
	sw $t0, -5628($fp)
	li $t0, 0
	sw $t0, -5632($fp)
	lw $t0, -5632($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5636($fp)
	lw $t0, -5628($fp)
	lw $t1, -5636($fp)
	add $t0, $t0, $t1
	sw $t0, -5640($fp)
	lw $t0, -5624($fp)
	lw $t1, -5640($fp)
	sw $t0, 0($t1)
	lw $t0, -5640($fp)
	lw $t1, 0($t0)
	sw $t1, -5644($fp)
	li $t0, 64336
	sw $t0, -5648($fp)
	addi $t0, $fp, -5476
	sw $t0, -5652($fp)
	li $t0, 0
	sw $t0, -5656($fp)
	lw $t0, -5656($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5660($fp)
	lw $t0, -5652($fp)
	lw $t1, -5660($fp)
	add $t0, $t0, $t1
	sw $t0, -5664($fp)
	lw $t0, -5648($fp)
	lw $t1, -5664($fp)
	sw $t0, 0($t1)
	lw $t0, -5664($fp)
	lw $t1, 0($t0)
	sw $t1, -5668($fp)
	li $t0, 49078
	sw $t0, -5672($fp)
	lw $t0, -5672($fp)
	sw $t0, -5676($fp)
	lw $t0, -5676($fp)
	sw $t0, -5680($fp)
label328:
	li $t0, 34729
	sw $t0, -5684($fp)
	li $t0, 9743
	sw $t0, -5688($fp)
	lw $t0, -5684($fp)
	lw $t1, -5688($fp)
	mul $t0, $t0, $t1
	sw $t0, -5692($fp)
	lw $t0, -980($fp)
	sw $t0, -5696($fp)
	lw $t0, -5692($fp)
	lw $t1, -5696($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5700($fp)
	li $t0, 0
	sw $t0, -5704($fp)
	li $t0, 32942
	sw $t0, -5708($fp)
	lw $t1, -5708($fp)
	li $t2, 0
	bne $t1, $t2, label333
	j label332
label332:
	li $t0, 1
	sw $t0, -5704($fp)
label333:
	lw $t0, -5700($fp)
	lw $t1, -5704($fp)
	sub $t0, $t0, $t1
	sw $t0, -5712($fp)
	lw $t0, 4($fp)
	sw $t0, -5716($fp)
	lw $t0, -5712($fp)
	lw $t1, -5716($fp)
	sub $t0, $t0, $t1
	sw $t0, -5720($fp)
	lw $t1, -5720($fp)
	li $t2, 0
	bne $t1, $t2, label329
	j label331
label331:
	addi $t0, $fp, -136
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
	lw $t0, 8($fp)
	sw $t0, -5744($fp)
	lw $t0, -512($fp)
	sw $t0, -5748($fp)
	lw $t0, -5744($fp)
	lw $t1, -5748($fp)
	add $t0, $t0, $t1
	sw $t0, -5752($fp)
	lw $t1, -5740($fp)
	lw $t2, -5752($fp)
	blt $t1, $t2, label329
	j label330
label329:
	li $t0, 0
	sw $t0, -5756($fp)
	li $t0, 0
	sw $t0, -5760($fp)
	addi $t0, $fp, -48
	sw $t0, -5764($fp)
	lw $t0, -524($fp)
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
	lw $t1, -5780($fp)
	li $t2, 0
	bne $t1, $t2, label337
	j label336
label336:
	li $t0, 1
	sw $t0, -5760($fp)
label337:
	addi $t0, $fp, -28
	sw $t0, -5784($fp)
	lw $t0, -1220($fp)
	sw $t0, -5788($fp)
	li $t0, 4
	lw $t1, -5788($fp)
	mul $t0, $t0, $t1
	sw $t0, -5792($fp)
	lw $t0, -5792($fp)
	lw $t1, -5784($fp)
	add $t0, $t0, $t1
	sw $t0, -5796($fp)
	lw $t0, -5796($fp)
	lw $t1, 0($t0)
	sw $t1, -5800($fp)
	lw $t0, -5760($fp)
	lw $t1, -5800($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5804($fp)
	li $t0, 29476
	sw $t0, -5808($fp)
	lw $t1, -5804($fp)
	lw $t2, -5808($fp)
	ble $t1, $t2, label334
	j label335
label334:
	li $t0, 1
	sw $t0, -5756($fp)
label335:
	lw $ra, -4($fp)
	lw $v0, -5756($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label328
label330:
	li $t0, 47531
	sw $t0, -5812($fp)
	lw $t0, -5812($fp)
	sw $t0, -5816($fp)
	lw $t0, -5816($fp)
	sw $t0, -5820($fp)
	li $t0, 31024
	sw $t0, -5824($fp)
	lw $t0, -5824($fp)
	sw $t0, -5828($fp)
	lw $t0, -5828($fp)
	sw $t0, -5832($fp)
	li $t0, 47706
	sw $t0, -5836($fp)
	lw $t0, -5836($fp)
	sw $t0, -5840($fp)
	lw $t0, -5840($fp)
	sw $t0, -5844($fp)
	li $t0, 0
	sw $t0, -5848($fp)
	li $t0, 28357
	sw $t0, -5852($fp)
	lw $t0, -5840($fp)
	sw $t0, -5856($fp)
	lw $t0, -5852($fp)
	lw $t1, -5856($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5860($fp)
	li $t0, 16018
	sw $t0, -5864($fp)
	lw $t0, -5828($fp)
	sw $t0, -5868($fp)
	lw $t0, -5864($fp)
	lw $t1, -5868($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5872($fp)
	li $t0, 5611
	sw $t0, -5876($fp)
	lw $t0, -5872($fp)
	lw $t1, -5876($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5880($fp)
	li $t0, 0
	lw $t1, -5880($fp)
	sub $t0, $t0, $t1
	sw $t0, -5884($fp)
	lw $t1, -5860($fp)
	lw $t2, -5884($fp)
	bne $t1, $t2, label338
	j label339
label338:
	li $t0, 1
	sw $t0, -5848($fp)
label339:
	li $t0, 0
	sw $t0, -5888($fp)
	li $t0, 36632
	sw $t0, -5892($fp)
	lw $t1, -5892($fp)
	li $t2, 0
	bne $t1, $t2, label340
	j label341
label340:
	li $t0, 1
	sw $t0, -5888($fp)
label341:
	li $t0, 0
	lw $t1, -5888($fp)
	sub $t0, $t0, $t1
	sw $t0, -5896($fp)
	lw $t0, -512($fp)
	sw $t0, -5900($fp)
	li $t0, 0
	sw $t0, -5904($fp)
	lw $t0, -356($fp)
	sw $t0, -5908($fp)
	lw $t1, -5908($fp)
	li $t2, 0
	bne $t1, $t2, label343
	j label342
label342:
	li $t0, 1
	sw $t0, -5904($fp)
label343:
	lw $t0, -5900($fp)
	lw $t1, -5904($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5912($fp)
	li $t0, 0
	lw $t1, -5912($fp)
	sub $t0, $t0, $t1
	sw $t0, -5916($fp)
	lw $t0, -5896($fp)
	lw $t1, -5916($fp)
	sub $t0, $t0, $t1
	sw $t0, -5920($fp)
	li $t0, 0
	sw $t0, -5924($fp)
	lw $t0, -536($fp)
	sw $t0, -5928($fp)
	li $t0, 44613
	sw $t0, -5932($fp)
	lw $t1, -5928($fp)
	lw $t2, -5932($fp)
	beq $t1, $t2, label344
	j label346
label346:
	li $t0, 16335
	sw $t0, -5936($fp)
	lw $t1, -5936($fp)
	li $t2, 0
	bne $t1, $t2, label344
	j label345
label344:
	li $t0, 1
	sw $t0, -5924($fp)
label345:
	lw $t0, 12($fp)
	sw $t0, -5940($fp)
	li $t0, 0
	lw $t1, -5940($fp)
	sub $t0, $t0, $t1
	sw $t0, -5944($fp)
	li $t0, 0
	lw $t1, -5944($fp)
	sub $t0, $t0, $t1
	sw $t0, -5948($fp)
	addi $sp, $sp, -4
	lw $t0, -5924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5948($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5952($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -5952($fp)
	sub $t0, $t0, $t1
	sw $t0, -5956($fp)
	lw $t0, -5956($fp)
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	sw $t0, -5960($fp)
label347:
	lw $t0, 20($fp)
	sw $t0, -5964($fp)
	li $t0, 0
	sw $t0, -5968($fp)
	li $t0, 0
	sw $t0, -5972($fp)
	li $t0, 40965
	sw $t0, -5976($fp)
	lw $t1, -5976($fp)
	li $t2, 0
	bne $t1, $t2, label353
	j label352
label352:
	li $t0, 1
	sw $t0, -5972($fp)
label353:
	li $t0, 15326
	sw $t0, -5980($fp)
	lw $t1, -5972($fp)
	lw $t2, -5980($fp)
	bne $t1, $t2, label350
	j label351
label350:
	li $t0, 1
	sw $t0, -5968($fp)
label351:
	addi $sp, $sp, -4
	lw $t0, -5964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5968($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5984($fp)
	addi $sp, $sp, 12
	lw $t0, -176($fp)
	sw $t0, -5988($fp)
	addi $t0, $fp, -136
	sw $t0, -5992($fp)
	lw $t0, -1496($fp)
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
	lw $t0, -5988($fp)
	lw $t1, -6008($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6012($fp)
	li $t0, 0
	lw $t1, -6012($fp)
	sub $t0, $t0, $t1
	sw $t0, -6016($fp)
	li $t0, 0
	lw $t1, -6016($fp)
	sub $t0, $t0, $t1
	sw $t0, -6020($fp)
	lw $t1, -5984($fp)
	lw $t2, -6020($fp)
	blt $t1, $t2, label348
	j label349
label348:
	lw $t0, -5816($fp)
	sw $t0, -6024($fp)
	lw $t1, -6024($fp)
	li $t2, 0
	bne $t1, $t2, label354
	j label355
label354:
	li $t0, 20346
	sw $t0, -6028($fp)
	lw $t0, -6028($fp)
	sw $t0, -6032($fp)
	lw $t0, -6032($fp)
	sw $t0, -6036($fp)
	li $t0, 0
	sw $t0, -6040($fp)
	lw $t0, -548($fp)
	sw $t0, -6044($fp)
	li $t0, 34584
	sw $t0, -6048($fp)
	li $t0, 38108
	sw $t0, -6052($fp)
	lw $t0, -6048($fp)
	lw $t1, -6052($fp)
	add $t0, $t0, $t1
	sw $t0, -6056($fp)
	lw $t0, 12($fp)
	sw $t0, -6060($fp)
	lw $t0, -6056($fp)
	lw $t1, -6060($fp)
	sub $t0, $t0, $t1
	sw $t0, -6064($fp)
	li $t0, 0
	sw $t0, -6068($fp)
	addi $t0, $fp, -136
	sw $t0, -6072($fp)
	lw $t0, -6032($fp)
	sw $t0, -6076($fp)
	li $t0, 4
	lw $t1, -6076($fp)
	mul $t0, $t0, $t1
	sw $t0, -6080($fp)
	lw $t0, -6080($fp)
	lw $t1, -6072($fp)
	add $t0, $t0, $t1
	sw $t0, -6084($fp)
	lw $t0, -6084($fp)
	lw $t1, 0($t0)
	sw $t1, -6088($fp)
	li $t0, 40544
	sw $t0, -6092($fp)
	lw $t1, -6088($fp)
	lw $t2, -6092($fp)
	blt $t1, $t2, label360
	j label361
label360:
	li $t0, 1
	sw $t0, -6068($fp)
label361:
	li $t0, 0
	sw $t0, -6096($fp)
	li $t0, 62703
	sw $t0, -6100($fp)
	li $t0, 0
	lw $t1, -6100($fp)
	sub $t0, $t0, $t1
	sw $t0, -6104($fp)
	lw $t1, -6104($fp)
	li $t2, 0
	bne $t1, $t2, label363
	j label362
label362:
	li $t0, 1
	sw $t0, -6096($fp)
label363:
	li $t0, 0
	sw $t0, -6108($fp)
	lw $t0, 16($fp)
	sw $t0, -6112($fp)
	lw $t0, -788($fp)
	sw $t0, -6116($fp)
	lw $t0, -6112($fp)
	lw $t1, -6116($fp)
	sub $t0, $t0, $t1
	sw $t0, -6120($fp)
	lw $t1, -6120($fp)
	li $t2, 0
	bne $t1, $t2, label364
	j label366
label366:
	li $t0, 39374
	sw $t0, -6124($fp)
	lw $t1, -6124($fp)
	li $t2, 0
	bne $t1, $t2, label364
	j label365
label364:
	li $t0, 1
	sw $t0, -6108($fp)
label365:
	addi $sp, $sp, -4
	lw $t0, -6044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6108($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -6128($fp)
	addi $sp, $sp, 24
	lw $t0, -980($fp)
	sw $t0, -6132($fp)
	lw $t1, -6128($fp)
	lw $t2, -6132($fp)
	bne $t1, $t2, label357
	j label359
label359:
	lw $t0, -968($fp)
	sw $t0, -6136($fp)
	li $t0, 0
	lw $t1, -6136($fp)
	sub $t0, $t0, $t1
	sw $t0, -6140($fp)
	lw $t1, -6140($fp)
	li $t2, 0
	bne $t1, $t2, label368
	j label358
label368:
	li $t0, 41128
	sw $t0, -6144($fp)
	lw $t1, -6144($fp)
	li $t2, 0
	bne $t1, $t2, label367
	j label358
label367:
	lw $t0, -1220($fp)
	sw $t0, -6148($fp)
	li $t0, 2307
	sw $t0, -6152($fp)
	lw $t0, -6148($fp)
	lw $t1, -6152($fp)
	add $t0, $t0, $t1
	sw $t0, -6156($fp)
	lw $t1, -6156($fp)
	li $t2, 0
	bne $t1, $t2, label357
	j label358
label357:
	li $t0, 1
	sw $t0, -6040($fp)
label358:
	j label356
label355:
	li $t0, 0
	sw $t0, -6160($fp)
	lw $t0, -1460($fp)
	sw $t0, -6164($fp)
	lw $t1, -6164($fp)
	li $t2, 0
	bne $t1, $t2, label369
	j label370
label369:
	li $t0, 1
	sw $t0, -6160($fp)
label370:
	li $t0, 0
	lw $t1, -6160($fp)
	sub $t0, $t0, $t1
	sw $t0, -6168($fp)
	li $t0, 43539
	sw $t0, -6172($fp)
	lw $t0, -6168($fp)
	lw $t1, -6172($fp)
	add $t0, $t0, $t1
	sw $t0, -6176($fp)
	li $t0, 0
	sw $t0, -6180($fp)
	li $t0, 34938
	sw $t0, -6184($fp)
	lw $t1, -6184($fp)
	li $t2, 0
	bne $t1, $t2, label374
	j label372
label374:
	lw $t0, -548($fp)
	sw $t0, -6188($fp)
	lw $t1, -6188($fp)
	li $t2, 0
	bne $t1, $t2, label373
	j label372
label373:
	li $t0, 6409
	sw $t0, -6192($fp)
	lw $t1, -6192($fp)
	li $t2, 0
	bne $t1, $t2, label371
	j label372
label371:
	li $t0, 1
	sw $t0, -6180($fp)
label372:
	lw $t0, -572($fp)
	sw $t0, -6196($fp)
	lw $t0, -6196($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -6200($fp)
	addi $sp, $sp, -4
	lw $t0, -6180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6200($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6204($fp)
	addi $sp, $sp, 12
	li $t0, 42339
	sw $t0, -6208($fp)
	lw $t0, -6204($fp)
	lw $t1, -6208($fp)
	mul $t0, $t0, $t1
	sw $t0, -6212($fp)
	lw $t0, -6176($fp)
	lw $t1, -6212($fp)
	sub $t0, $t0, $t1
	sw $t0, -6216($fp)
label356:
	j label347
label349:
	lw $t0, -5816($fp)
	sw $t0, -6220($fp)
	lw $t0, -6220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 18480
	sw $t0, -6224($fp)
	addi $sp, $sp, -4
	lw $t0, -6224($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6228($fp)
	addi $sp, $sp, 8
	lw $ra, -4($fp)
	lw $v0, -6228($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 41138
	sw $t0, -6232($fp)
	li $t0, 0
	lw $t1, -6232($fp)
	sub $t0, $t0, $t1
	sw $t0, -6236($fp)
	lw $t1, -6236($fp)
	li $t2, 0
	bne $t1, $t2, label375
	j label376
label375:
label378:
	addi $t0, $fp, -28
	sw $t0, -6240($fp)
	li $t0, 0
	sw $t0, -6244($fp)
	li $t0, 0
	sw $t0, -6248($fp)
	li $t0, 0
	sw $t0, -6252($fp)
	lw $t0, -776($fp)
	sw $t0, -6256($fp)
	lw $t1, -6256($fp)
	li $t2, 0
	bne $t1, $t2, label386
	j label385
label385:
	li $t0, 1
	sw $t0, -6252($fp)
label386:
	addi $sp, $sp, -4
	lw $t0, -6252($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6260($fp)
	addi $sp, $sp, 8
	lw $t1, -6260($fp)
	li $t2, 0
	bne $t1, $t2, label384
	j label383
label383:
	li $t0, 1
	sw $t0, -6248($fp)
label384:
	li $t0, 52082
	sw $t0, -6264($fp)
	lw $t0, -1472($fp)
	sw $t0, -6268($fp)
	lw $t0, -6264($fp)
	lw $t1, -6268($fp)
	mul $t0, $t0, $t1
	sw $t0, -6272($fp)
	lw $t1, -6248($fp)
	lw $t2, -6272($fp)
	beq $t1, $t2, label381
	j label382
label381:
	li $t0, 1
	sw $t0, -6244($fp)
label382:
	li $t0, 4
	lw $t1, -6244($fp)
	mul $t0, $t0, $t1
	sw $t0, -6276($fp)
	lw $t0, -6276($fp)
	lw $t1, -6240($fp)
	add $t0, $t0, $t1
	sw $t0, -6280($fp)
	lw $t0, -6280($fp)
	lw $t1, 0($t0)
	sw $t1, -6284($fp)
	lw $t1, -6284($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label380
label379:
	lw $t0, -1472($fp)
	sw $t0, -6288($fp)
	li $t0, 0
	lw $t1, -6288($fp)
	sub $t0, $t0, $t1
	sw $t0, -6292($fp)
	lw $t1, -6292($fp)
	li $t2, 0
	bne $t1, $t2, label387
	j label388
label387:
	li $t0, 0
	sw $t0, -6296($fp)
	lw $t0, -1460($fp)
	sw $t0, -6300($fp)
	lw $t1, -6300($fp)
	li $t2, 0
	bne $t1, $t2, label394
	j label396
label396:
	lw $t0, -512($fp)
	sw $t0, -6304($fp)
	lw $t1, -6304($fp)
	li $t2, 0
	bne $t1, $t2, label394
	j label395
label394:
	li $t0, 1
	sw $t0, -6296($fp)
label395:
	li $t0, 0
	sw $t0, -6308($fp)
	li $t0, 19582
	sw $t0, -6312($fp)
	li $t0, 0
	lw $t1, -6312($fp)
	sub $t0, $t0, $t1
	sw $t0, -6316($fp)
	lw $t0, 12($fp)
	sw $t0, -6320($fp)
	lw $t1, -6316($fp)
	lw $t2, -6320($fp)
	ble $t1, $t2, label397
	j label398
label397:
	li $t0, 1
	sw $t0, -6308($fp)
label398:
	li $t0, 0
	sw $t0, -6324($fp)
	lw $t0, -1244($fp)
	sw $t0, -6328($fp)
	lw $t1, -6328($fp)
	li $t2, 0
	bne $t1, $t2, label402
	j label400
label402:
	li $t0, 15363
	sw $t0, -6332($fp)
	lw $t1, -6332($fp)
	li $t2, 0
	bne $t1, $t2, label401
	j label400
label401:
	lw $t0, -1460($fp)
	sw $t0, -6336($fp)
	lw $t1, -6336($fp)
	li $t2, 0
	bne $t1, $t2, label399
	j label400
label399:
	li $t0, 1
	sw $t0, -6324($fp)
label400:
	li $t0, 0
	sw $t0, -6340($fp)
	li $t0, 0
	sw $t0, -6344($fp)
	li $t0, 37587
	sw $t0, -6348($fp)
	li $t0, 10702
	sw $t0, -6352($fp)
	lw $t1, -6348($fp)
	lw $t2, -6352($fp)
	blt $t1, $t2, label405
	j label406
label405:
	li $t0, 1
	sw $t0, -6344($fp)
label406:
	lw $t0, -5508($fp)
	sw $t0, -6356($fp)
	lw $t1, -6344($fp)
	lw $t2, -6356($fp)
	ble $t1, $t2, label403
	j label404
label403:
	li $t0, 1
	sw $t0, -6340($fp)
label404:
	li $t0, 0
	sw $t0, -6360($fp)
	li $t0, 51423
	sw $t0, -6364($fp)
	lw $t1, -6364($fp)
	li $t2, 0
	bne $t1, $t2, label408
	j label407
label407:
	li $t0, 1
	sw $t0, -6360($fp)
label408:
	addi $sp, $sp, -4
	lw $t0, -6296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6360($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -6368($fp)
	addi $sp, $sp, 24
	li $t0, 41727
	sw $t0, -6372($fp)
	lw $t0, -6368($fp)
	lw $t1, -6372($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6376($fp)
	lw $t1, -6376($fp)
	li $t2, 0
	bne $t1, $t2, label393
	j label391
label393:
	lw $t0, -1484($fp)
	sw $t0, -6380($fp)
	lw $t1, -6380($fp)
	li $t2, 0
	bne $t1, $t2, label390
	j label391
label390:
	addi $t0, $fp, -48
	sw $t0, -6384($fp)
	li $t0, 3
	sw $t0, -6388($fp)
	li $t0, 4
	lw $t1, -6388($fp)
	mul $t0, $t0, $t1
	sw $t0, -6392($fp)
	lw $t0, -6392($fp)
	lw $t1, -6384($fp)
	add $t0, $t0, $t1
	sw $t0, -6396($fp)
	lw $t0, -6396($fp)
	lw $t1, 0($t0)
	sw $t1, -6400($fp)
	jal f6
	sw $v0, -6404($fp)
	addi $sp, $sp, 4
	lw $t1, -6400($fp)
	lw $t2, -6404($fp)
	bge $t1, $t2, label409
	j label410
label409:
	lw $t0, -200($fp)
	sw $t0, -6408($fp)
	lw $t1, -6408($fp)
	li $t2, 0
	bne $t1, $t2, label415
	j label413
label415:
	li $t0, 57745
	sw $t0, -6412($fp)
	li $t0, 44096
	sw $t0, -6416($fp)
	li $t0, 1
	sw $t0, -6420($fp)
	lw $t0, -6416($fp)
	lw $t1, -6420($fp)
	mul $t0, $t0, $t1
	sw $t0, -6424($fp)
	lw $t1, -6412($fp)
	lw $t2, -6424($fp)
	beq $t1, $t2, label412
	j label413
label412:
	lw $t0, -5520($fp)
	sw $t0, -6428($fp)
	addi $t0, $fp, -28
	sw $t0, -6432($fp)
	li $t0, 0
	sw $t0, -6436($fp)
	lw $t0, -5496($fp)
	sw $t0, -6440($fp)
	lw $t1, -6440($fp)
	li $t2, 0
	bne $t1, $t2, label418
	j label417
label418:
	lw $t0, -788($fp)
	sw $t0, -6444($fp)
	lw $t1, -6444($fp)
	li $t2, 0
	bne $t1, $t2, label416
	j label417
label416:
	li $t0, 1
	sw $t0, -6436($fp)
label417:
	li $t0, 4
	lw $t1, -6436($fp)
	mul $t0, $t0, $t1
	sw $t0, -6448($fp)
	lw $t0, -6448($fp)
	lw $t1, -6432($fp)
	add $t0, $t0, $t1
	sw $t0, -6452($fp)
	lw $t0, -6452($fp)
	lw $t1, 0($t0)
	sw $t1, -6456($fp)
	lw $t0, -6428($fp)
	lw $t1, -6456($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6460($fp)
	lw $ra, -4($fp)
	lw $v0, -6460($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label414
label413:
	li $t0, 0
	sw $t0, -6464($fp)
	lw $t0, -536($fp)
	sw $t0, -6468($fp)
	lw $t0, 16($fp)
	sw $t0, -6472($fp)
	lw $t0, -6468($fp)
	lw $t1, -6472($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6476($fp)
	lw $t1, -6476($fp)
	li $t2, 0
	bne $t1, $t2, label419
	j label421
label421:
	li $t0, 0
	sw $t0, -6480($fp)
	lw $t0, -5484($fp)
	sw $t0, -6484($fp)
	lw $t1, -6484($fp)
	li $t2, 0
	bne $t1, $t2, label423
	j label422
label422:
	li $t0, 1
	sw $t0, -6480($fp)
label423:
	li $t0, 0
	lw $t1, -6480($fp)
	sub $t0, $t0, $t1
	sw $t0, -6488($fp)
	lw $t0, -188($fp)
	sw $t0, -6492($fp)
	lw $t1, -6488($fp)
	lw $t2, -6492($fp)
	blt $t1, $t2, label419
	j label420
label419:
	li $t0, 1
	sw $t0, -6464($fp)
label420:
label414:
	j label411
label410:
label424:
	li $t0, 0
	sw $t0, -6496($fp)
	lw $t0, -5676($fp)
	sw $t0, -6500($fp)
	lw $t1, -6500($fp)
	li $t2, 0
	bne $t1, $t2, label430
	j label429
label429:
	li $t0, 1
	sw $t0, -6496($fp)
label430:
	lw $t0, -572($fp)
	sw $t0, -6504($fp)
	lw $t0, -6496($fp)
	lw $t1, -6504($fp)
	sub $t0, $t0, $t1
	sw $t0, -6508($fp)
	li $t0, 28841
	sw $t0, -6512($fp)
	li $t0, 0
	lw $t1, -6512($fp)
	sub $t0, $t0, $t1
	sw $t0, -6516($fp)
	lw $t1, -6508($fp)
	lw $t2, -6516($fp)
	ble $t1, $t2, label428
	j label426
label428:
	addi $t0, $fp, -5472
	sw $t0, -6520($fp)
	li $t0, 0
	sw $t0, -6524($fp)
	li $t0, 4
	lw $t1, -6524($fp)
	mul $t0, $t0, $t1
	sw $t0, -6528($fp)
	lw $t0, -6528($fp)
	lw $t1, -6520($fp)
	add $t0, $t0, $t1
	sw $t0, -6532($fp)
	lw $t0, -6532($fp)
	lw $t1, 0($t0)
	sw $t1, -6536($fp)
	li $t0, 4270
	sw $t0, -6540($fp)
	lw $t0, -6536($fp)
	lw $t1, -6540($fp)
	add $t0, $t0, $t1
	sw $t0, -6544($fp)
	lw $t1, -6544($fp)
	li $t2, 0
	bne $t1, $t2, label427
	j label426
label427:
	li $t0, 0
	sw $t0, -6548($fp)
	li $t0, 0
	sw $t0, -6552($fp)
	lw $t0, -512($fp)
	sw $t0, -6556($fp)
	lw $t0, -788($fp)
	sw $t0, -6560($fp)
	lw $t1, -6556($fp)
	lw $t2, -6560($fp)
	beq $t1, $t2, label433
	j label434
label433:
	li $t0, 1
	sw $t0, -6552($fp)
label434:
	li $t0, 38499
	sw $t0, -6564($fp)
	lw $t1, -6552($fp)
	lw $t2, -6564($fp)
	beq $t1, $t2, label431
	j label432
label431:
	li $t0, 1
	sw $t0, -6548($fp)
label432:
	li $t0, 24695
	sw $t0, -6568($fp)
	li $t0, 0
	lw $t1, -6568($fp)
	sub $t0, $t0, $t1
	sw $t0, -6572($fp)
	lw $t1, -6548($fp)
	lw $t2, -6572($fp)
	bne $t1, $t2, label425
	j label426
label425:
	li $t0, 0
	sw $t0, -6576($fp)
	li $t0, 43645
	sw $t0, -6580($fp)
	lw $t1, -6580($fp)
	li $t2, 0
	bne $t1, $t2, label435
	j label437
label437:
	lw $t0, -1004($fp)
	sw $t0, -6584($fp)
	lw $t0, -5520($fp)
	sw $t0, -6588($fp)
	lw $t0, -6584($fp)
	lw $t1, -6588($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6592($fp)
	lw $t1, -6592($fp)
	li $t2, 0
	bne $t1, $t2, label435
	j label436
label435:
	li $t0, 1
	sw $t0, -6576($fp)
label436:
	lw $t0, -6576($fp)
	sw $t0, -5496($fp)
	lw $t0, -5496($fp)
	sw $t0, -6596($fp)
	j label424
label426:
label411:
	j label392
label391:
	li $t0, 35666
	sw $t0, -6600($fp)
	lw $t0, 12($fp)
	sw $t0, -6604($fp)
	lw $t0, -5532($fp)
	sw $t0, -6608($fp)
	lw $t0, -6604($fp)
	lw $t1, -6608($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6612($fp)
	li $t0, 0
	lw $t1, -6612($fp)
	sub $t0, $t0, $t1
	sw $t0, -6616($fp)
	addi $t0, $fp, -80
	sw $t0, -6620($fp)
	lw $t0, -1016($fp)
	sw $t0, -6624($fp)
	li $t0, 4
	lw $t1, -6624($fp)
	mul $t0, $t0, $t1
	sw $t0, -6628($fp)
	lw $t0, -6628($fp)
	lw $t1, -6620($fp)
	add $t0, $t0, $t1
	sw $t0, -6632($fp)
	lw $t0, -6632($fp)
	lw $t1, 0($t0)
	sw $t1, -6636($fp)
	addi $sp, $sp, -4
	lw $t0, -6616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6636($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6640($fp)
	addi $sp, $sp, 12
	lw $t0, -200($fp)
	sw $t0, -6644($fp)
	lw $t0, -6640($fp)
	lw $t1, -6644($fp)
	sub $t0, $t0, $t1
	sw $t0, -6648($fp)
label392:
	j label389
label388:
	li $t0, 65239
	sw $t0, -6680($fp)
	addi $t0, $fp, -6676
	sw $t0, -6684($fp)
	li $t0, 0
	sw $t0, -6688($fp)
	lw $t0, -6688($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6692($fp)
	lw $t0, -6684($fp)
	lw $t1, -6692($fp)
	add $t0, $t0, $t1
	sw $t0, -6696($fp)
	lw $t0, -6680($fp)
	lw $t1, -6696($fp)
	sw $t0, 0($t1)
	lw $t0, -6696($fp)
	lw $t1, 0($t0)
	sw $t1, -6700($fp)
	li $t0, 12693
	sw $t0, -6704($fp)
	addi $t0, $fp, -6676
	sw $t0, -6708($fp)
	li $t0, 1
	sw $t0, -6712($fp)
	lw $t0, -6712($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6716($fp)
	lw $t0, -6708($fp)
	lw $t1, -6716($fp)
	add $t0, $t0, $t1
	sw $t0, -6720($fp)
	lw $t0, -6704($fp)
	lw $t1, -6720($fp)
	sw $t0, 0($t1)
	lw $t0, -6720($fp)
	lw $t1, 0($t0)
	sw $t1, -6724($fp)
	li $t0, 8239
	sw $t0, -6728($fp)
	addi $t0, $fp, -6676
	sw $t0, -6732($fp)
	li $t0, 2
	sw $t0, -6736($fp)
	lw $t0, -6736($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6740($fp)
	lw $t0, -6732($fp)
	lw $t1, -6740($fp)
	add $t0, $t0, $t1
	sw $t0, -6744($fp)
	lw $t0, -6728($fp)
	lw $t1, -6744($fp)
	sw $t0, 0($t1)
	lw $t0, -6744($fp)
	lw $t1, 0($t0)
	sw $t1, -6748($fp)
	li $t0, 40832
	sw $t0, -6752($fp)
	addi $t0, $fp, -6676
	sw $t0, -6756($fp)
	li $t0, 3
	sw $t0, -6760($fp)
	lw $t0, -6760($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6764($fp)
	lw $t0, -6756($fp)
	lw $t1, -6764($fp)
	add $t0, $t0, $t1
	sw $t0, -6768($fp)
	lw $t0, -6752($fp)
	lw $t1, -6768($fp)
	sw $t0, 0($t1)
	lw $t0, -6768($fp)
	lw $t1, 0($t0)
	sw $t1, -6772($fp)
	li $t0, 15001
	sw $t0, -6776($fp)
	addi $t0, $fp, -6676
	sw $t0, -6780($fp)
	li $t0, 4
	sw $t0, -6784($fp)
	lw $t0, -6784($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6788($fp)
	lw $t0, -6780($fp)
	lw $t1, -6788($fp)
	add $t0, $t0, $t1
	sw $t0, -6792($fp)
	lw $t0, -6776($fp)
	lw $t1, -6792($fp)
	sw $t0, 0($t1)
	lw $t0, -6792($fp)
	lw $t1, 0($t0)
	sw $t1, -6796($fp)
	li $t0, 51778
	sw $t0, -6800($fp)
	addi $t0, $fp, -6676
	sw $t0, -6804($fp)
	li $t0, 5
	sw $t0, -6808($fp)
	lw $t0, -6808($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6812($fp)
	lw $t0, -6804($fp)
	lw $t1, -6812($fp)
	add $t0, $t0, $t1
	sw $t0, -6816($fp)
	lw $t0, -6800($fp)
	lw $t1, -6816($fp)
	sw $t0, 0($t1)
	lw $t0, -6816($fp)
	lw $t1, 0($t0)
	sw $t1, -6820($fp)
	li $t0, 10234
	sw $t0, -6824($fp)
	addi $t0, $fp, -6676
	sw $t0, -6828($fp)
	li $t0, 6
	sw $t0, -6832($fp)
	lw $t0, -6832($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6836($fp)
	lw $t0, -6828($fp)
	lw $t1, -6836($fp)
	add $t0, $t0, $t1
	sw $t0, -6840($fp)
	lw $t0, -6824($fp)
	lw $t1, -6840($fp)
	sw $t0, 0($t1)
	lw $t0, -6840($fp)
	lw $t1, 0($t0)
	sw $t1, -6844($fp)
	addi $t0, $fp, -108
	sw $t0, -6848($fp)
	addi $t0, $fp, -6676
	sw $t0, -6852($fp)
	li $t0, 0
	sw $t0, -6856($fp)
	li $t0, 21410
	sw $t0, -6860($fp)
	lw $t1, -6860($fp)
	li $t2, 0
	bne $t1, $t2, label438
	j label440
label440:
	lw $t0, -992($fp)
	sw $t0, -6864($fp)
	lw $t1, -6864($fp)
	li $t2, 0
	bne $t1, $t2, label438
	j label439
label438:
	li $t0, 1
	sw $t0, -6856($fp)
label439:
	li $t0, 4
	lw $t1, -6856($fp)
	mul $t0, $t0, $t1
	sw $t0, -6868($fp)
	lw $t0, -6868($fp)
	lw $t1, -6852($fp)
	add $t0, $t0, $t1
	sw $t0, -6872($fp)
	lw $t0, -6872($fp)
	lw $t1, 0($t0)
	sw $t1, -6876($fp)
	li $t0, 4
	lw $t1, -6876($fp)
	mul $t0, $t0, $t1
	sw $t0, -6880($fp)
	lw $t0, -6880($fp)
	lw $t1, -6848($fp)
	add $t0, $t0, $t1
	sw $t0, -6884($fp)
	lw $t0, -6884($fp)
	lw $t1, 0($t0)
	sw $t1, -6888($fp)
	li $t0, 0
	sw $t0, -6892($fp)
	addi $t0, $fp, -5468
	sw $t0, -6896($fp)
	lw $t0, -560($fp)
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
	li $t0, 0
	sw $t0, -6916($fp)
	li $t0, 28581
	sw $t0, -6920($fp)
	li $t0, 28714
	sw $t0, -6924($fp)
	lw $t0, -6920($fp)
	lw $t1, -6924($fp)
	sub $t0, $t0, $t1
	sw $t0, -6928($fp)
	lw $t1, -6928($fp)
	li $t2, 0
	bne $t1, $t2, label446
	j label445
label446:
	lw $t0, -1220($fp)
	sw $t0, -6932($fp)
	lw $t1, -6932($fp)
	li $t2, 0
	bne $t1, $t2, label444
	j label445
label444:
	li $t0, 1
	sw $t0, -6916($fp)
label445:
	addi $sp, $sp, -4
	lw $t0, -6916($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6936($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -6912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6936($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6940($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -6944($fp)
	lw $t0, -776($fp)
	sw $t0, -6948($fp)
	lw $t1, -6948($fp)
	li $t2, 0
	bne $t1, $t2, label448
	j label447
label447:
	li $t0, 1
	sw $t0, -6944($fp)
label448:
	lw $t0, -6940($fp)
	lw $t1, -6944($fp)
	mul $t0, $t0, $t1
	sw $t0, -6952($fp)
	lw $t1, -6952($fp)
	li $t2, 0
	bne $t1, $t2, label443
	j label442
label443:
	addi $t0, $fp, -48
	sw $t0, -6956($fp)
	lw $t0, 12($fp)
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
	li $t0, 62548
	sw $t0, -6976($fp)
	li $t0, 0
	lw $t1, -6976($fp)
	sub $t0, $t0, $t1
	sw $t0, -6980($fp)
	lw $t1, -6972($fp)
	lw $t2, -6980($fp)
	blt $t1, $t2, label441
	j label442
label441:
	li $t0, 1
	sw $t0, -6892($fp)
label442:
	li $t0, 0
	sw $t0, -6984($fp)
	li $t0, 25829
	sw $t0, -6988($fp)
	addi $sp, $sp, -4
	lw $t0, -6988($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6992($fp)
	addi $sp, $sp, 8
	li $t0, 29964
	sw $t0, -6996($fp)
	lw $t1, -6992($fp)
	lw $t2, -6996($fp)
	beq $t1, $t2, label449
	j label450
label449:
	li $t0, 1
	sw $t0, -6984($fp)
label450:
	li $t0, 0
	sw $t0, -7000($fp)
	lw $t0, -1484($fp)
	sw $t0, -7004($fp)
	lw $t1, -7004($fp)
	li $t2, 0
	bne $t1, $t2, label451
	j label453
label453:
	li $t0, 34599
	sw $t0, -7008($fp)
	lw $t1, -7008($fp)
	li $t2, 0
	bne $t1, $t2, label451
	j label452
label451:
	li $t0, 1
	sw $t0, -7000($fp)
label452:
	li $t0, 0
	sw $t0, -7012($fp)
	lw $t0, -536($fp)
	sw $t0, -7016($fp)
	lw $t0, -1484($fp)
	sw $t0, -7020($fp)
	lw $t0, -7016($fp)
	lw $t1, -7020($fp)
	mul $t0, $t0, $t1
	sw $t0, -7024($fp)
	lw $t0, -1496($fp)
	sw $t0, -7028($fp)
	lw $t1, -7024($fp)
	lw $t2, -7028($fp)
	bne $t1, $t2, label454
	j label455
label454:
	li $t0, 1
	sw $t0, -7012($fp)
label455:
	li $t0, 0
	sw $t0, -7032($fp)
	li $t0, 14601
	sw $t0, -7036($fp)
	lw $t1, -7036($fp)
	li $t2, 0
	bne $t1, $t2, label457
	j label456
label456:
	li $t0, 1
	sw $t0, -7032($fp)
label457:
	lw $t0, -1496($fp)
	sw $t0, -7040($fp)
	lw $t0, -7032($fp)
	lw $t1, -7040($fp)
	add $t0, $t0, $t1
	sw $t0, -7044($fp)
	li $t0, 15127
	sw $t0, -7048($fp)
	lw $t0, -1208($fp)
	sw $t0, -7052($fp)
	lw $t0, -7048($fp)
	lw $t1, -7052($fp)
	mul $t0, $t0, $t1
	sw $t0, -7056($fp)
	lw $t0, -1484($fp)
	sw $t0, -7060($fp)
	lw $t0, -7056($fp)
	lw $t1, -7060($fp)
	add $t0, $t0, $t1
	sw $t0, -7064($fp)
	addi $sp, $sp, -4
	lw $t0, -6984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7064($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -7068($fp)
	addi $sp, $sp, 24
	li $t0, 54181
	sw $t0, -7072($fp)
	lw $t0, -7068($fp)
	lw $t1, -7072($fp)
	add $t0, $t0, $t1
	sw $t0, -7076($fp)
label389:
	j label378
label380:
	j label377
label376:
	li $t0, 2020
	sw $t0, -7080($fp)
	lw $t1, -7080($fp)
	li $t2, 0
	bne $t1, $t2, label458
	j label459
label458:
label461:
	li $t0, 0
	sw $t0, -7084($fp)
	li $t0, 27498
	sw $t0, -7088($fp)
	lw $t1, -7088($fp)
	li $t2, 0
	bne $t1, $t2, label464
	j label465
label464:
	li $t0, 1
	sw $t0, -7084($fp)
label465:
	li $t0, 0
	lw $t1, -7084($fp)
	sub $t0, $t0, $t1
	sw $t0, -7092($fp)
	li $t0, 0
	sw $t0, -7096($fp)
	li $t0, 36585
	sw $t0, -7100($fp)
	li $t0, 0
	lw $t1, -7100($fp)
	sub $t0, $t0, $t1
	sw $t0, -7104($fp)
	lw $t1, -7104($fp)
	li $t2, 0
	bne $t1, $t2, label467
	j label466
label466:
	li $t0, 1
	sw $t0, -7096($fp)
label467:
	addi $sp, $sp, -4
	lw $t0, -7096($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7108($fp)
	addi $sp, $sp, 8
	lw $t0, -7092($fp)
	lw $t1, -7108($fp)
	add $t0, $t0, $t1
	sw $t0, -7112($fp)
	addi $t0, $fp, -48
	sw $t0, -7116($fp)
	lw $t0, -548($fp)
	sw $t0, -7120($fp)
	li $t0, 4
	lw $t1, -7120($fp)
	mul $t0, $t0, $t1
	sw $t0, -7124($fp)
	lw $t0, -7124($fp)
	lw $t1, -7116($fp)
	add $t0, $t0, $t1
	sw $t0, -7128($fp)
	lw $t0, -7128($fp)
	lw $t1, 0($t0)
	sw $t1, -7132($fp)
	li $t0, 0
	lw $t1, -7132($fp)
	sub $t0, $t0, $t1
	sw $t0, -7136($fp)
	lw $t1, -7112($fp)
	lw $t2, -7136($fp)
	bgt $t1, $t2, label462
	j label463
label462:
	addi $t0, $fp, -5468
	sw $t0, -7140($fp)
	li $t0, 0
	sw $t0, -7144($fp)
	lw $t0, -1484($fp)
	sw $t0, -7148($fp)
	li $t0, 59765
	sw $t0, -7152($fp)
	lw $t0, -7148($fp)
	lw $t1, -7152($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7156($fp)
	li $t0, 6058
	sw $t0, -7160($fp)
	lw $t1, -7156($fp)
	lw $t2, -7160($fp)
	beq $t1, $t2, label470
	j label469
label470:
	lw $t0, -1220($fp)
	sw $t0, -7164($fp)
	lw $t0, -560($fp)
	sw $t0, -7168($fp)
	lw $t0, -7164($fp)
	lw $t1, -7168($fp)
	mul $t0, $t0, $t1
	sw $t0, -7172($fp)
	lw $t1, -7172($fp)
	li $t2, 0
	bne $t1, $t2, label468
	j label469
label468:
	li $t0, 1
	sw $t0, -7144($fp)
label469:
	li $t0, 4
	lw $t1, -7144($fp)
	mul $t0, $t0, $t1
	sw $t0, -7176($fp)
	lw $t0, -7176($fp)
	lw $t1, -7140($fp)
	add $t0, $t0, $t1
	sw $t0, -7180($fp)
	lw $t0, -7180($fp)
	lw $t1, 0($t0)
	sw $t1, -7184($fp)
	j label461
label463:
	j label460
label459:
label471:
	lw $t0, -5616($fp)
	sw $t0, -7188($fp)
	lw $t1, -7188($fp)
	li $t2, 0
	bne $t1, $t2, label472
	j label473
label472:
	li $t0, 0
	sw $t0, -7192($fp)
	li $t0, 28948
	sw $t0, -7196($fp)
	lw $t1, -7196($fp)
	li $t2, 0
	bne $t1, $t2, label477
	j label480
label480:
	li $t0, 27341
	sw $t0, -7200($fp)
	lw $t1, -7200($fp)
	li $t2, 0
	bne $t1, $t2, label477
	j label479
label479:
	lw $t0, -5520($fp)
	sw $t0, -7204($fp)
	lw $t1, -7204($fp)
	li $t2, 0
	bne $t1, $t2, label477
	j label478
label477:
	li $t0, 1
	sw $t0, -7192($fp)
label478:
	li $t0, 24599
	sw $t0, -7208($fp)
	li $t0, 23070
	sw $t0, -7212($fp)
	lw $t0, -7208($fp)
	lw $t1, -7212($fp)
	sub $t0, $t0, $t1
	sw $t0, -7216($fp)
	li $t0, 29231
	sw $t0, -7220($fp)
	lw $t0, -7216($fp)
	lw $t1, -7220($fp)
	sub $t0, $t0, $t1
	sw $t0, -7224($fp)
	addi $sp, $sp, -4
	lw $t0, -7192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7224($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7228($fp)
	addi $sp, $sp, 12
	lw $t1, -7228($fp)
	li $t2, 0
	bne $t1, $t2, label475
	j label474
label474:
	li $t0, 0
	sw $t0, -7232($fp)
	li $t0, 0
	sw $t0, -7236($fp)
	addi $t0, $fp, -5476
	sw $t0, -7240($fp)
	lw $t0, 4($fp)
	sw $t0, -7244($fp)
	li $t0, 4
	lw $t1, -7244($fp)
	mul $t0, $t0, $t1
	sw $t0, -7248($fp)
	lw $t0, -7248($fp)
	lw $t1, -7240($fp)
	add $t0, $t0, $t1
	sw $t0, -7252($fp)
	lw $t0, -7252($fp)
	lw $t1, 0($t0)
	sw $t1, -7256($fp)
	lw $t1, -7256($fp)
	li $t2, 0
	bne $t1, $t2, label485
	j label484
label484:
	li $t0, 1
	sw $t0, -7236($fp)
label485:
	li $t0, 0
	sw $t0, -7260($fp)
	li $t0, 0
	sw $t0, -7264($fp)
	lw $t0, -1220($fp)
	sw $t0, -7268($fp)
	li $t0, 37861
	sw $t0, -7272($fp)
	lw $t0, -7268($fp)
	lw $t1, -7272($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7276($fp)
	lw $t1, -7276($fp)
	li $t2, 0
	bne $t1, $t2, label490
	j label489
label490:
	li $t0, 53347
	sw $t0, -7280($fp)
	lw $t1, -7280($fp)
	li $t2, 0
	bne $t1, $t2, label488
	j label489
label488:
	li $t0, 1
	sw $t0, -7264($fp)
label489:
	li $t0, 0
	sw $t0, -7284($fp)
	li $t0, 0
	sw $t0, -7288($fp)
	li $t0, 2194
	sw $t0, -7292($fp)
	li $t0, 53643
	sw $t0, -7296($fp)
	lw $t1, -7292($fp)
	lw $t2, -7296($fp)
	bne $t1, $t2, label493
	j label494
label493:
	li $t0, 1
	sw $t0, -7288($fp)
label494:
	li $t0, 5450
	sw $t0, -7300($fp)
	lw $t1, -7288($fp)
	lw $t2, -7300($fp)
	beq $t1, $t2, label491
	j label492
label491:
	li $t0, 1
	sw $t0, -7284($fp)
label492:
	addi $sp, $sp, -4
	lw $t0, -7264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7284($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7304($fp)
	addi $sp, $sp, 12
	lw $t1, -7304($fp)
	li $t2, 0
	bne $t1, $t2, label487
	j label486
label486:
	li $t0, 1
	sw $t0, -7260($fp)
label487:
	lw $t1, -7236($fp)
	lw $t2, -7260($fp)
	beq $t1, $t2, label483
	j label482
label483:
	li $t0, 18143
	sw $t0, -7308($fp)
	lw $t1, -7308($fp)
	li $t2, 0
	bne $t1, $t2, label481
	j label482
label481:
	li $t0, 1
	sw $t0, -7232($fp)
label482:
	j label476
label475:
	li $t0, 46100
	sw $t0, -7312($fp)
	addi $sp, $sp, -4
	lw $t0, -7312($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7316($fp)
	addi $sp, $sp, 8
	lw $t0, -5616($fp)
	sw $t0, -7320($fp)
	li $t0, 28643
	sw $t0, -7324($fp)
	lw $t0, -5508($fp)
	sw $t0, -7328($fp)
	lw $t0, -7324($fp)
	lw $t1, -7328($fp)
	mul $t0, $t0, $t1
	sw $t0, -7332($fp)
	lw $t0, -536($fp)
	sw $t0, -7336($fp)
	lw $t0, -1460($fp)
	sw $t0, -7340($fp)
	lw $t0, -7336($fp)
	lw $t1, -7340($fp)
	sub $t0, $t0, $t1
	sw $t0, -7344($fp)
	lw $t0, -5532($fp)
	sw $t0, -7348($fp)
	lw $t0, -7344($fp)
	lw $t1, -7348($fp)
	sub $t0, $t0, $t1
	sw $t0, -7352($fp)
	addi $sp, $sp, -4
	lw $t0, -7332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7352($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7356($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -7356($fp)
	sub $t0, $t0, $t1
	sw $t0, -7360($fp)
	addi $t0, $fp, -48
	sw $t0, -7364($fp)
	lw $t0, -368($fp)
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
	addi $sp, $sp, -4
	lw $t0, -7360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7380($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7384($fp)
	addi $sp, $sp, 12
	lw $t0, -7320($fp)
	lw $t1, -7384($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7388($fp)
	lw $t0, -7316($fp)
	lw $t1, -7388($fp)
	sub $t0, $t0, $t1
	sw $t0, -7392($fp)
label476:
	j label471
label473:
label460:
label377:
	lw $t0, -176($fp)
	sw $t0, -7396($fp)
	lw $t0, -7396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -188($fp)
	sw $t0, -7400($fp)
	lw $t0, -7400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -200($fp)
	sw $t0, -7404($fp)
	lw $t0, -7404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -7408($fp)
	li $t0, 0
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
	addi $t0, $fp, -28
	sw $t0, -7428($fp)
	li $t0, 1
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
	addi $t0, $fp, -28
	sw $t0, -7448($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -7468($fp)
	li $t0, 3
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
	addi $t0, $fp, -28
	sw $t0, -7488($fp)
	li $t0, 4
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
	addi $t0, $fp, -28
	sw $t0, -7508($fp)
	li $t0, 5
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
	lw $t0, -356($fp)
	sw $t0, -7528($fp)
	lw $t0, -7528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -368($fp)
	sw $t0, -7532($fp)
	lw $t0, -7532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -380($fp)
	sw $t0, -7536($fp)
	lw $t0, -7536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -7540($fp)
	li $t0, 0
	sw $t0, -7544($fp)
	li $t0, 4
	lw $t1, -7544($fp)
	mul $t0, $t0, $t1
	sw $t0, -7548($fp)
	lw $t0, -7548($fp)
	lw $t1, -7540($fp)
	add $t0, $t0, $t1
	sw $t0, -7552($fp)
	lw $t0, -7552($fp)
	lw $t1, 0($t0)
	sw $t1, -7556($fp)
	lw $t0, -7556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -7560($fp)
	li $t0, 1
	sw $t0, -7564($fp)
	li $t0, 4
	lw $t1, -7564($fp)
	mul $t0, $t0, $t1
	sw $t0, -7568($fp)
	lw $t0, -7568($fp)
	lw $t1, -7560($fp)
	add $t0, $t0, $t1
	sw $t0, -7572($fp)
	lw $t0, -7572($fp)
	lw $t1, 0($t0)
	sw $t1, -7576($fp)
	lw $t0, -7576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -7580($fp)
	li $t0, 2
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
	lw $t0, -7596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -7600($fp)
	li $t0, 3
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
	lw $t0, -7616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -7620($fp)
	li $t0, 4
	sw $t0, -7624($fp)
	li $t0, 4
	lw $t1, -7624($fp)
	mul $t0, $t0, $t1
	sw $t0, -7628($fp)
	lw $t0, -7628($fp)
	lw $t1, -7620($fp)
	add $t0, $t0, $t1
	sw $t0, -7632($fp)
	lw $t0, -7632($fp)
	lw $t1, 0($t0)
	sw $t1, -7636($fp)
	lw $t0, -7636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -512($fp)
	sw $t0, -7640($fp)
	lw $t0, -7640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -524($fp)
	sw $t0, -7644($fp)
	lw $t0, -7644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -536($fp)
	sw $t0, -7648($fp)
	lw $t0, -7648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -548($fp)
	sw $t0, -7652($fp)
	lw $t0, -7652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -7656($fp)
	lw $t0, -7656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	sw $t0, -7660($fp)
	lw $t0, -7660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -7664($fp)
	li $t0, 0
	sw $t0, -7668($fp)
	li $t0, 4
	lw $t1, -7668($fp)
	mul $t0, $t0, $t1
	sw $t0, -7672($fp)
	lw $t0, -7672($fp)
	lw $t1, -7664($fp)
	add $t0, $t0, $t1
	sw $t0, -7676($fp)
	lw $t0, -7676($fp)
	lw $t1, 0($t0)
	sw $t1, -7680($fp)
	lw $t0, -7680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -7684($fp)
	li $t0, 1
	sw $t0, -7688($fp)
	li $t0, 4
	lw $t1, -7688($fp)
	mul $t0, $t0, $t1
	sw $t0, -7692($fp)
	lw $t0, -7692($fp)
	lw $t1, -7684($fp)
	add $t0, $t0, $t1
	sw $t0, -7696($fp)
	lw $t0, -7696($fp)
	lw $t1, 0($t0)
	sw $t1, -7700($fp)
	lw $t0, -7700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
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
	lw $t0, -7720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -7724($fp)
	li $t0, 3
	sw $t0, -7728($fp)
	li $t0, 4
	lw $t1, -7728($fp)
	mul $t0, $t0, $t1
	sw $t0, -7732($fp)
	lw $t0, -7732($fp)
	lw $t1, -7724($fp)
	add $t0, $t0, $t1
	sw $t0, -7736($fp)
	lw $t0, -7736($fp)
	lw $t1, 0($t0)
	sw $t1, -7740($fp)
	lw $t0, -7740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -7744($fp)
	li $t0, 4
	sw $t0, -7748($fp)
	li $t0, 4
	lw $t1, -7748($fp)
	mul $t0, $t0, $t1
	sw $t0, -7752($fp)
	lw $t0, -7752($fp)
	lw $t1, -7744($fp)
	add $t0, $t0, $t1
	sw $t0, -7756($fp)
	lw $t0, -7756($fp)
	lw $t1, 0($t0)
	sw $t1, -7760($fp)
	lw $t0, -7760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -7764($fp)
	li $t0, 5
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
	lw $t0, -7780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -7784($fp)
	li $t0, 6
	sw $t0, -7788($fp)
	li $t0, 4
	lw $t1, -7788($fp)
	mul $t0, $t0, $t1
	sw $t0, -7792($fp)
	lw $t0, -7792($fp)
	lw $t1, -7784($fp)
	add $t0, $t0, $t1
	sw $t0, -7796($fp)
	lw $t0, -7796($fp)
	lw $t1, 0($t0)
	sw $t1, -7800($fp)
	lw $t0, -7800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -7804($fp)
	li $t0, 7
	sw $t0, -7808($fp)
	li $t0, 4
	lw $t1, -7808($fp)
	mul $t0, $t0, $t1
	sw $t0, -7812($fp)
	lw $t0, -7812($fp)
	lw $t1, -7804($fp)
	add $t0, $t0, $t1
	sw $t0, -7816($fp)
	lw $t0, -7816($fp)
	lw $t1, 0($t0)
	sw $t1, -7820($fp)
	lw $t0, -7820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -776($fp)
	sw $t0, -7824($fp)
	lw $t0, -7824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -788($fp)
	sw $t0, -7828($fp)
	lw $t0, -7828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -7832($fp)
	li $t0, 0
	sw $t0, -7836($fp)
	li $t0, 4
	lw $t1, -7836($fp)
	mul $t0, $t0, $t1
	sw $t0, -7840($fp)
	lw $t0, -7840($fp)
	lw $t1, -7832($fp)
	add $t0, $t0, $t1
	sw $t0, -7844($fp)
	lw $t0, -7844($fp)
	lw $t1, 0($t0)
	sw $t1, -7848($fp)
	lw $t0, -7848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -7852($fp)
	li $t0, 1
	sw $t0, -7856($fp)
	li $t0, 4
	lw $t1, -7856($fp)
	mul $t0, $t0, $t1
	sw $t0, -7860($fp)
	lw $t0, -7860($fp)
	lw $t1, -7852($fp)
	add $t0, $t0, $t1
	sw $t0, -7864($fp)
	lw $t0, -7864($fp)
	lw $t1, 0($t0)
	sw $t1, -7868($fp)
	lw $t0, -7868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -7872($fp)
	li $t0, 2
	sw $t0, -7876($fp)
	li $t0, 4
	lw $t1, -7876($fp)
	mul $t0, $t0, $t1
	sw $t0, -7880($fp)
	lw $t0, -7880($fp)
	lw $t1, -7872($fp)
	add $t0, $t0, $t1
	sw $t0, -7884($fp)
	lw $t0, -7884($fp)
	lw $t1, 0($t0)
	sw $t1, -7888($fp)
	lw $t0, -7888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -7892($fp)
	li $t0, 3
	sw $t0, -7896($fp)
	li $t0, 4
	lw $t1, -7896($fp)
	mul $t0, $t0, $t1
	sw $t0, -7900($fp)
	lw $t0, -7900($fp)
	lw $t1, -7892($fp)
	add $t0, $t0, $t1
	sw $t0, -7904($fp)
	lw $t0, -7904($fp)
	lw $t1, 0($t0)
	sw $t1, -7908($fp)
	lw $t0, -7908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -7912($fp)
	li $t0, 4
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
	lw $t0, -7928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -7932($fp)
	li $t0, 5
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
	lw $t0, -7948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -7952($fp)
	li $t0, 6
	sw $t0, -7956($fp)
	li $t0, 4
	lw $t1, -7956($fp)
	mul $t0, $t0, $t1
	sw $t0, -7960($fp)
	lw $t0, -7960($fp)
	lw $t1, -7952($fp)
	add $t0, $t0, $t1
	sw $t0, -7964($fp)
	lw $t0, -7964($fp)
	lw $t1, 0($t0)
	sw $t1, -7968($fp)
	lw $t0, -7968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -968($fp)
	sw $t0, -7972($fp)
	lw $t0, -7972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -980($fp)
	sw $t0, -7976($fp)
	lw $t0, -7976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -992($fp)
	sw $t0, -7980($fp)
	lw $t0, -7980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1004($fp)
	sw $t0, -7984($fp)
	lw $t0, -7984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1016($fp)
	sw $t0, -7988($fp)
	lw $t0, -7988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
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
	addi $t0, $fp, -136
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
	addi $t0, $fp, -136
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
	addi $t0, $fp, -136
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
	addi $t0, $fp, -136
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
	addi $t0, $fp, -136
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
	addi $t0, $fp, -136
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
	lw $t0, -1196($fp)
	sw $t0, -8132($fp)
	lw $t0, -8132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1208($fp)
	sw $t0, -8136($fp)
	lw $t0, -8136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1220($fp)
	sw $t0, -8140($fp)
	lw $t0, -8140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1232($fp)
	sw $t0, -8144($fp)
	lw $t0, -8144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1244($fp)
	sw $t0, -8148($fp)
	lw $t0, -8148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -8152($fp)
	li $t0, 0
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
	addi $t0, $fp, -168
	sw $t0, -8172($fp)
	li $t0, 1
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
	addi $t0, $fp, -168
	sw $t0, -8192($fp)
	li $t0, 2
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
	addi $t0, $fp, -168
	sw $t0, -8212($fp)
	li $t0, 3
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
	addi $t0, $fp, -168
	sw $t0, -8232($fp)
	li $t0, 4
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
	addi $t0, $fp, -168
	sw $t0, -8252($fp)
	li $t0, 5
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
	addi $t0, $fp, -168
	sw $t0, -8272($fp)
	li $t0, 6
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
	addi $t0, $fp, -168
	sw $t0, -8292($fp)
	li $t0, 7
	sw $t0, -8296($fp)
	li $t0, 4
	lw $t1, -8296($fp)
	mul $t0, $t0, $t1
	sw $t0, -8300($fp)
	lw $t0, -8300($fp)
	lw $t1, -8292($fp)
	add $t0, $t0, $t1
	sw $t0, -8304($fp)
	lw $t0, -8304($fp)
	lw $t1, 0($t0)
	sw $t1, -8308($fp)
	lw $t0, -8308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1448($fp)
	sw $t0, -8312($fp)
	lw $t0, -8312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1460($fp)
	sw $t0, -8316($fp)
	lw $t0, -8316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1472($fp)
	sw $t0, -8320($fp)
	lw $t0, -8320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1484($fp)
	sw $t0, -8324($fp)
	lw $t0, -8324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1496($fp)
	sw $t0, -8328($fp)
	lw $t0, -8328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -8332($fp)
	addi $t0, $fp, -168
	sw $t0, -8336($fp)
	li $t0, 5
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
	lw $t0, -788($fp)
	sw $t0, -8356($fp)
	lw $t0, -512($fp)
	sw $t0, -8360($fp)
	li $t0, 60923
	sw $t0, -8364($fp)
	lw $t0, -8364($fp)
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	sw $t0, -8368($fp)
	lw $t0, -980($fp)
	sw $t0, -8372($fp)
	lw $t0, -8372($fp)
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	sw $t0, -8376($fp)
	lw $t0, -560($fp)
	sw $t0, -8380($fp)
	li $t0, 54554
	sw $t0, -8384($fp)
	lw $t0, -8380($fp)
	lw $t1, -8384($fp)
	mul $t0, $t0, $t1
	sw $t0, -8388($fp)
	lw $t0, -1496($fp)
	sw $t0, -8392($fp)
	lw $t0, -8388($fp)
	lw $t1, -8392($fp)
	add $t0, $t0, $t1
	sw $t0, -8396($fp)
	addi $sp, $sp, -4
	lw $t0, -8356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8396($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -8400($fp)
	addi $sp, $sp, 24
	lw $t0, -8352($fp)
	lw $t1, -8400($fp)
	mul $t0, $t0, $t1
	sw $t0, -8404($fp)
	lw $t1, -8404($fp)
	li $t2, 0
	bne $t1, $t2, label495
	j label497
label497:
	addi $t0, $fp, -80
	sw $t0, -8408($fp)
	lw $t0, -1484($fp)
	sw $t0, -8412($fp)
	li $t0, 4
	lw $t1, -8412($fp)
	mul $t0, $t0, $t1
	sw $t0, -8416($fp)
	lw $t0, -8416($fp)
	lw $t1, -8408($fp)
	add $t0, $t0, $t1
	sw $t0, -8420($fp)
	lw $t0, -8420($fp)
	lw $t1, 0($t0)
	sw $t1, -8424($fp)
	li $t0, 2055
	sw $t0, -8428($fp)
	lw $t0, -8424($fp)
	lw $t1, -8428($fp)
	sub $t0, $t0, $t1
	sw $t0, -8432($fp)
	li $t0, 51567
	sw $t0, -8436($fp)
	lw $t0, -1448($fp)
	sw $t0, -8440($fp)
	lw $t0, -8436($fp)
	lw $t1, -8440($fp)
	sub $t0, $t0, $t1
	sw $t0, -8444($fp)
	lw $t1, -8432($fp)
	lw $t2, -8444($fp)
	bne $t1, $t2, label495
	j label496
label495:
	li $t0, 1
	sw $t0, -8332($fp)
label496:
	lw $ra, -4($fp)
	lw $v0, -8332($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -3980
	li $t0, 10514
	sw $t0, -88($fp)
	addi $t0, $fp, -44
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
	li $t0, 16657
	sw $t0, -112($fp)
	addi $t0, $fp, -44
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
	li $t0, 20630
	sw $t0, -136($fp)
	addi $t0, $fp, -44
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
	li $t0, 36343
	sw $t0, -160($fp)
	addi $t0, $fp, -44
	sw $t0, -164($fp)
	li $t0, 3
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
	li $t0, 46621
	sw $t0, -184($fp)
	addi $t0, $fp, -44
	sw $t0, -188($fp)
	li $t0, 4
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
	li $t0, 9276
	sw $t0, -208($fp)
	addi $t0, $fp, -44
	sw $t0, -212($fp)
	li $t0, 5
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
	li $t0, 38364
	sw $t0, -232($fp)
	addi $t0, $fp, -44
	sw $t0, -236($fp)
	li $t0, 6
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
	li $t0, 8583
	sw $t0, -256($fp)
	addi $t0, $fp, -44
	sw $t0, -260($fp)
	li $t0, 7
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
	li $t0, 45861
	sw $t0, -280($fp)
	addi $t0, $fp, -44
	sw $t0, -284($fp)
	li $t0, 8
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
	li $t0, 32593
	sw $t0, -304($fp)
	addi $t0, $fp, -44
	sw $t0, -308($fp)
	li $t0, 9
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
	li $t0, 14641
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -336($fp)
	li $t0, 4924
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -348($fp)
	li $t0, 55664
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	li $t0, 43872
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	li $t0, 33872
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	li $t0, 17469
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	li $t0, 46067
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	li $t0, 21979
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	li $t0, 22919
	sw $t0, -424($fp)
	addi $t0, $fp, -56
	sw $t0, -428($fp)
	li $t0, 0
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
	li $t0, 18392
	sw $t0, -448($fp)
	addi $t0, $fp, -56
	sw $t0, -452($fp)
	li $t0, 1
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
	li $t0, 9790
	sw $t0, -472($fp)
	addi $t0, $fp, -56
	sw $t0, -476($fp)
	li $t0, 2
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
	li $t0, 41062
	sw $t0, -496($fp)
	addi $t0, $fp, -76
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
	li $t0, 64492
	sw $t0, -520($fp)
	addi $t0, $fp, -76
	sw $t0, -524($fp)
	li $t0, 1
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
	li $t0, 38433
	sw $t0, -544($fp)
	addi $t0, $fp, -76
	sw $t0, -548($fp)
	li $t0, 2
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
	li $t0, 8671
	sw $t0, -568($fp)
	addi $t0, $fp, -76
	sw $t0, -572($fp)
	li $t0, 3
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
	li $t0, 31298
	sw $t0, -592($fp)
	addi $t0, $fp, -76
	sw $t0, -596($fp)
	li $t0, 4
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
	li $t0, 11774
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	li $t0, 63225
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	li $t0, 26685
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	li $t0, 13830
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	li $t0, 49256
	sw $t0, -664($fp)
	addi $t0, $fp, -84
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
	li $t0, 37199
	sw $t0, -688($fp)
	addi $t0, $fp, -84
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
	li $t0, 30487
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -720($fp)
	li $t0, 4351
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	sw $t0, -732($fp)
	li $t0, 8006
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	sw $t0, -744($fp)
	addi $t0, $fp, -84
	sw $t0, -748($fp)
	li $t0, 0
	sw $t0, -752($fp)
	lw $t0, -740($fp)
	sw $t0, -756($fp)
	li $t0, 0
	lw $t1, -756($fp)
	sub $t0, $t0, $t1
	sw $t0, -760($fp)
	lw $t0, 4($fp)
	sw $t0, -764($fp)
	lw $t1, -760($fp)
	lw $t2, -764($fp)
	blt $t1, $t2, label500
	j label499
label500:
	lw $t0, -332($fp)
	sw $t0, -768($fp)
	li $t0, 11572
	sw $t0, -772($fp)
	lw $t1, -768($fp)
	lw $t2, -772($fp)
	blt $t1, $t2, label498
	j label499
label498:
	li $t0, 1
	sw $t0, -752($fp)
label499:
	li $t0, 4
	lw $t1, -752($fp)
	mul $t0, $t0, $t1
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	lw $t1, -748($fp)
	add $t0, $t0, $t1
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	lw $t1, 0($t0)
	sw $t1, -784($fp)
	addi $t0, $fp, -44
	sw $t0, -788($fp)
	li $t0, 0
	sw $t0, -792($fp)
	li $t0, 4
	lw $t1, -792($fp)
	mul $t0, $t0, $t1
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	lw $t1, -788($fp)
	add $t0, $t0, $t1
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	lw $t1, 0($t0)
	sw $t1, -804($fp)
	lw $t0, -804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -808($fp)
	li $t0, 1
	sw $t0, -812($fp)
	li $t0, 4
	lw $t1, -812($fp)
	mul $t0, $t0, $t1
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	lw $t1, -808($fp)
	add $t0, $t0, $t1
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	lw $t1, 0($t0)
	sw $t1, -824($fp)
	lw $t0, -824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -828($fp)
	li $t0, 2
	sw $t0, -832($fp)
	li $t0, 4
	lw $t1, -832($fp)
	mul $t0, $t0, $t1
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	lw $t1, -828($fp)
	add $t0, $t0, $t1
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	lw $t1, 0($t0)
	sw $t1, -844($fp)
	lw $t0, -844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -848($fp)
	li $t0, 3
	sw $t0, -852($fp)
	li $t0, 4
	lw $t1, -852($fp)
	mul $t0, $t0, $t1
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	lw $t1, -848($fp)
	add $t0, $t0, $t1
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	lw $t1, 0($t0)
	sw $t1, -864($fp)
	lw $t0, -864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -868($fp)
	li $t0, 4
	sw $t0, -872($fp)
	li $t0, 4
	lw $t1, -872($fp)
	mul $t0, $t0, $t1
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	lw $t1, -868($fp)
	add $t0, $t0, $t1
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	lw $t1, 0($t0)
	sw $t1, -884($fp)
	lw $t0, -884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -888($fp)
	li $t0, 5
	sw $t0, -892($fp)
	li $t0, 4
	lw $t1, -892($fp)
	mul $t0, $t0, $t1
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	lw $t1, -888($fp)
	add $t0, $t0, $t1
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	lw $t1, 0($t0)
	sw $t1, -904($fp)
	lw $t0, -904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -908($fp)
	li $t0, 6
	sw $t0, -912($fp)
	li $t0, 4
	lw $t1, -912($fp)
	mul $t0, $t0, $t1
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	lw $t1, -908($fp)
	add $t0, $t0, $t1
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	lw $t1, 0($t0)
	sw $t1, -924($fp)
	lw $t0, -924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -928($fp)
	li $t0, 7
	sw $t0, -932($fp)
	li $t0, 4
	lw $t1, -932($fp)
	mul $t0, $t0, $t1
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	lw $t1, -928($fp)
	add $t0, $t0, $t1
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	lw $t1, 0($t0)
	sw $t1, -944($fp)
	lw $t0, -944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -948($fp)
	li $t0, 8
	sw $t0, -952($fp)
	li $t0, 4
	lw $t1, -952($fp)
	mul $t0, $t0, $t1
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	lw $t1, -948($fp)
	add $t0, $t0, $t1
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	lw $t1, 0($t0)
	sw $t1, -964($fp)
	lw $t0, -964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -968($fp)
	li $t0, 9
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
	lw $t0, -332($fp)
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -344($fp)
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -356($fp)
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -368($fp)
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -380($fp)
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -392($fp)
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -404($fp)
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -416($fp)
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1020($fp)
	li $t0, 0
	sw $t0, -1024($fp)
	li $t0, 4
	lw $t1, -1024($fp)
	mul $t0, $t0, $t1
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	lw $t1, -1020($fp)
	add $t0, $t0, $t1
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	lw $t1, 0($t0)
	sw $t1, -1036($fp)
	lw $t0, -1036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1040($fp)
	li $t0, 1
	sw $t0, -1044($fp)
	li $t0, 4
	lw $t1, -1044($fp)
	mul $t0, $t0, $t1
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	lw $t1, -1040($fp)
	add $t0, $t0, $t1
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	lw $t1, 0($t0)
	sw $t1, -1056($fp)
	lw $t0, -1056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1060($fp)
	li $t0, 2
	sw $t0, -1064($fp)
	li $t0, 4
	lw $t1, -1064($fp)
	mul $t0, $t0, $t1
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	lw $t1, -1060($fp)
	add $t0, $t0, $t1
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	lw $t1, 0($t0)
	sw $t1, -1076($fp)
	lw $t0, -1076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -1080($fp)
	li $t0, 0
	sw $t0, -1084($fp)
	li $t0, 4
	lw $t1, -1084($fp)
	mul $t0, $t0, $t1
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	lw $t1, -1080($fp)
	add $t0, $t0, $t1
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	lw $t1, 0($t0)
	sw $t1, -1096($fp)
	lw $t0, -1096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -1100($fp)
	li $t0, 1
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
	addi $t0, $fp, -76
	sw $t0, -1120($fp)
	li $t0, 2
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
	addi $t0, $fp, -76
	sw $t0, -1140($fp)
	li $t0, 3
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
	addi $t0, $fp, -76
	sw $t0, -1160($fp)
	li $t0, 4
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
	lw $t0, -620($fp)
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -632($fp)
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -644($fp)
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -656($fp)
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -1196($fp)
	li $t0, 0
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
	addi $t0, $fp, -84
	sw $t0, -1216($fp)
	li $t0, 1
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
	lw $t0, -716($fp)
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -728($fp)
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -740($fp)
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1248($fp)
	li $t0, 13627
	sw $t0, -1252($fp)
	li $t0, 0
	lw $t1, -1252($fp)
	sub $t0, $t0, $t1
	sw $t0, -1256($fp)
	li $t0, 0
	lw $t1, -1256($fp)
	sub $t0, $t0, $t1
	sw $t0, -1260($fp)
	addi $t0, $fp, -84
	sw $t0, -1264($fp)
	li $t0, 0
	sw $t0, -1268($fp)
	li $t0, 4
	lw $t1, -1268($fp)
	mul $t0, $t0, $t1
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	lw $t1, -1264($fp)
	add $t0, $t0, $t1
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	lw $t1, 0($t0)
	sw $t1, -1280($fp)
	lw $t0, -1260($fp)
	lw $t1, -1280($fp)
	sub $t0, $t0, $t1
	sw $t0, -1284($fp)
	li $t0, 4
	lw $t1, -1284($fp)
	mul $t0, $t0, $t1
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	lw $t1, -1248($fp)
	add $t0, $t0, $t1
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	lw $t1, 0($t0)
	sw $t1, -1296($fp)
	lw $ra, -4($fp)
	lw $v0, -1296($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label501:
	addi $t0, $fp, -44
	sw $t0, -1300($fp)
	addi $t0, $fp, -84
	sw $t0, -1304($fp)
	lw $t0, -620($fp)
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
	li $t0, 4
	lw $t1, -1320($fp)
	mul $t0, $t0, $t1
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	lw $t1, -1300($fp)
	add $t0, $t0, $t1
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	lw $t1, 0($t0)
	sw $t1, -1332($fp)
	li $t0, 64412
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -1340($fp)
	li $t0, 0
	sw $t0, -1344($fp)
	lw $t0, -416($fp)
	sw $t0, -1348($fp)
	li $t0, 0
	lw $t1, -1348($fp)
	sub $t0, $t0, $t1
	sw $t0, -1352($fp)
	lw $t0, -356($fp)
	sw $t0, -1356($fp)
	lw $t1, -1352($fp)
	lw $t2, -1356($fp)
	bne $t1, $t2, label504
	j label505
label504:
	li $t0, 1
	sw $t0, -1344($fp)
label505:
	lw $t0, -404($fp)
	sw $t0, -1360($fp)
	li $t0, 59488
	sw $t0, -1364($fp)
	li $t0, 13428
	sw $t0, -1368($fp)
	lw $t0, -1364($fp)
	lw $t1, -1368($fp)
	sub $t0, $t0, $t1
	sw $t0, -1372($fp)
	li $t0, 34797
	sw $t0, -1376($fp)
	lw $t0, -1372($fp)
	lw $t1, -1376($fp)
	sub $t0, $t0, $t1
	sw $t0, -1380($fp)
	lw $t0, -380($fp)
	sw $t0, -1384($fp)
	li $t0, 0
	lw $t1, -1384($fp)
	sub $t0, $t0, $t1
	sw $t0, -1388($fp)
	li $t0, 0
	lw $t1, -1388($fp)
	sub $t0, $t0, $t1
	sw $t0, -1392($fp)
	addi $sp, $sp, -4
	lw $t0, -1340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1392($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1396($fp)
	addi $sp, $sp, 24
	lw $t1, -1332($fp)
	lw $t2, -1396($fp)
	ble $t1, $t2, label502
	j label503
label502:
	jal f6
	sw $v0, -1400($fp)
	addi $sp, $sp, 4
	li $t0, 3556
	sw $t0, -1404($fp)
	addi $sp, $sp, -4
	lw $t0, -1404($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1408($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1412($fp)
	li $t0, 0
	sw $t0, -1416($fp)
	li $t0, 32748
	sw $t0, -1420($fp)
	li $t0, 21025
	sw $t0, -1424($fp)
	lw $t0, -1420($fp)
	lw $t1, -1424($fp)
	mul $t0, $t0, $t1
	sw $t0, -1428($fp)
	lw $t1, -1428($fp)
	li $t2, 0
	bne $t1, $t2, label513
	j label512
label513:
	li $t0, 59201
	sw $t0, -1432($fp)
	lw $t1, -1432($fp)
	li $t2, 0
	bne $t1, $t2, label511
	j label512
label511:
	li $t0, 1
	sw $t0, -1416($fp)
label512:
	addi $sp, $sp, -4
	lw $t0, -1416($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1436($fp)
	addi $sp, $sp, 8
	lw $t1, -1436($fp)
	li $t2, 0
	bne $t1, $t2, label510
	j label509
label509:
	li $t0, 1
	sw $t0, -1412($fp)
label510:
	li $t0, 13134
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -1444($fp)
	addi $sp, $sp, -4
	lw $t0, -1412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1444($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1448($fp)
	addi $sp, $sp, 12
	lw $t0, -1408($fp)
	lw $t1, -1448($fp)
	mul $t0, $t0, $t1
	sw $t0, -1452($fp)
	lw $t1, -1400($fp)
	lw $t2, -1452($fp)
	beq $t1, $t2, label506
	j label507
label506:
	li $t0, 54727
	sw $t0, -1484($fp)
	addi $t0, $fp, -1480
	sw $t0, -1488($fp)
	li $t0, 0
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
	li $t0, 43944
	sw $t0, -1508($fp)
	addi $t0, $fp, -1480
	sw $t0, -1512($fp)
	li $t0, 1
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1520($fp)
	lw $t0, -1512($fp)
	lw $t1, -1520($fp)
	add $t0, $t0, $t1
	sw $t0, -1524($fp)
	lw $t0, -1508($fp)
	lw $t1, -1524($fp)
	sw $t0, 0($t1)
	lw $t0, -1524($fp)
	lw $t1, 0($t0)
	sw $t1, -1528($fp)
	li $t0, 12057
	sw $t0, -1532($fp)
	addi $t0, $fp, -1480
	sw $t0, -1536($fp)
	li $t0, 2
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1544($fp)
	lw $t0, -1536($fp)
	lw $t1, -1544($fp)
	add $t0, $t0, $t1
	sw $t0, -1548($fp)
	lw $t0, -1532($fp)
	lw $t1, -1548($fp)
	sw $t0, 0($t1)
	lw $t0, -1548($fp)
	lw $t1, 0($t0)
	sw $t1, -1552($fp)
	li $t0, 64518
	sw $t0, -1556($fp)
	addi $t0, $fp, -1480
	sw $t0, -1560($fp)
	li $t0, 3
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1568($fp)
	lw $t0, -1560($fp)
	lw $t1, -1568($fp)
	add $t0, $t0, $t1
	sw $t0, -1572($fp)
	lw $t0, -1556($fp)
	lw $t1, -1572($fp)
	sw $t0, 0($t1)
	lw $t0, -1572($fp)
	lw $t1, 0($t0)
	sw $t1, -1576($fp)
	li $t0, 19470
	sw $t0, -1580($fp)
	addi $t0, $fp, -1480
	sw $t0, -1584($fp)
	li $t0, 4
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1592($fp)
	lw $t0, -1584($fp)
	lw $t1, -1592($fp)
	add $t0, $t0, $t1
	sw $t0, -1596($fp)
	lw $t0, -1580($fp)
	lw $t1, -1596($fp)
	sw $t0, 0($t1)
	lw $t0, -1596($fp)
	lw $t1, 0($t0)
	sw $t1, -1600($fp)
	li $t0, 11013
	sw $t0, -1604($fp)
	addi $t0, $fp, -1480
	sw $t0, -1608($fp)
	li $t0, 5
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1616($fp)
	lw $t0, -1608($fp)
	lw $t1, -1616($fp)
	add $t0, $t0, $t1
	sw $t0, -1620($fp)
	lw $t0, -1604($fp)
	lw $t1, -1620($fp)
	sw $t0, 0($t1)
	lw $t0, -1620($fp)
	lw $t1, 0($t0)
	sw $t1, -1624($fp)
	li $t0, 37415
	sw $t0, -1628($fp)
	addi $t0, $fp, -1480
	sw $t0, -1632($fp)
	li $t0, 6
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1640($fp)
	lw $t0, -1632($fp)
	lw $t1, -1640($fp)
	add $t0, $t0, $t1
	sw $t0, -1644($fp)
	lw $t0, -1628($fp)
	lw $t1, -1644($fp)
	sw $t0, 0($t1)
	lw $t0, -1644($fp)
	lw $t1, 0($t0)
	sw $t1, -1648($fp)
	li $t0, 28141
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	sw $t0, -1656($fp)
	lw $t0, -1656($fp)
	sw $t0, -1660($fp)
	lw $t0, -740($fp)
	sw $t0, -1664($fp)
	li $t0, 0
	sw $t0, -1668($fp)
	li $t0, 42311
	sw $t0, -1672($fp)
	lw $t1, -1672($fp)
	li $t2, 0
	bne $t1, $t2, label515
	j label514
label514:
	li $t0, 1
	sw $t0, -1668($fp)
label515:
	lw $t0, -1656($fp)
	sw $t0, -1676($fp)
	li $t0, 49190
	sw $t0, -1680($fp)
	lw $t0, -1676($fp)
	lw $t1, -1680($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1684($fp)
	li $t0, 25831
	sw $t0, -1688($fp)
	li $t0, 0
	lw $t1, -1688($fp)
	sub $t0, $t0, $t1
	sw $t0, -1692($fp)
	lw $t0, -1684($fp)
	lw $t1, -1692($fp)
	mul $t0, $t0, $t1
	sw $t0, -1696($fp)
	li $t0, 0
	lw $t1, -1696($fp)
	sub $t0, $t0, $t1
	sw $t0, -1700($fp)
	lw $t0, -1668($fp)
	lw $t1, -1700($fp)
	add $t0, $t0, $t1
	sw $t0, -1704($fp)
	li $t0, 0
	sw $t0, -1708($fp)
	addi $t0, $fp, -1480
	sw $t0, -1712($fp)
	li $t0, 0
	sw $t0, -1716($fp)
	li $t0, 3460
	sw $t0, -1720($fp)
	lw $t1, -1720($fp)
	li $t2, 0
	bne $t1, $t2, label521
	j label520
label521:
	li $t0, 63020
	sw $t0, -1724($fp)
	lw $t1, -1724($fp)
	li $t2, 0
	bne $t1, $t2, label518
	j label520
label520:
	lw $t0, -332($fp)
	sw $t0, -1728($fp)
	lw $t1, -1728($fp)
	li $t2, 0
	bne $t1, $t2, label518
	j label519
label518:
	li $t0, 1
	sw $t0, -1716($fp)
label519:
	li $t0, 4
	lw $t1, -1716($fp)
	mul $t0, $t0, $t1
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	lw $t1, -1712($fp)
	add $t0, $t0, $t1
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	lw $t1, 0($t0)
	sw $t1, -1740($fp)
	lw $t1, -1740($fp)
	li $t2, 0
	bne $t1, $t2, label517
	j label516
label516:
	li $t0, 1
	sw $t0, -1708($fp)
label517:
	lw $t0, 4($fp)
	sw $t0, -1744($fp)
	li $t0, 27529
	sw $t0, -1748($fp)
	lw $t0, -1744($fp)
	lw $t1, -1748($fp)
	mul $t0, $t0, $t1
	sw $t0, -1752($fp)
	li $t0, 29500
	sw $t0, -1756($fp)
	lw $t0, -1752($fp)
	lw $t1, -1756($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1760($fp)
	li $t0, 0
	sw $t0, -1764($fp)
	lw $t0, -380($fp)
	sw $t0, -1768($fp)
	li $t0, 48665
	sw $t0, -1772($fp)
	lw $t0, -1768($fp)
	lw $t1, -1772($fp)
	sub $t0, $t0, $t1
	sw $t0, -1776($fp)
	lw $t1, -1776($fp)
	li $t2, 0
	bne $t1, $t2, label524
	j label523
label524:
	li $t0, 39543
	sw $t0, -1780($fp)
	lw $t1, -1780($fp)
	li $t2, 0
	bne $t1, $t2, label522
	j label523
label522:
	li $t0, 1
	sw $t0, -1764($fp)
label523:
	li $t0, 0
	sw $t0, -1784($fp)
	li $t0, 0
	sw $t0, -1788($fp)
	li $t0, 27971
	sw $t0, -1792($fp)
	lw $t0, -716($fp)
	sw $t0, -1796($fp)
	lw $t1, -1792($fp)
	lw $t2, -1796($fp)
	blt $t1, $t2, label527
	j label528
label527:
	li $t0, 1
	sw $t0, -1788($fp)
label528:
	li $t0, 13902
	sw $t0, -1800($fp)
	lw $t1, -1788($fp)
	lw $t2, -1800($fp)
	bne $t1, $t2, label525
	j label526
label525:
	li $t0, 1
	sw $t0, -1784($fp)
label526:
	li $t0, 0
	sw $t0, -1804($fp)
	lw $t0, -392($fp)
	sw $t0, -1808($fp)
	lw $t0, -404($fp)
	sw $t0, -1812($fp)
	lw $t0, -1808($fp)
	lw $t1, -1812($fp)
	sub $t0, $t0, $t1
	sw $t0, -1816($fp)
	lw $t1, -1816($fp)
	li $t2, 0
	bne $t1, $t2, label529
	j label531
label531:
	li $t0, 40659
	sw $t0, -1820($fp)
	lw $t1, -1820($fp)
	li $t2, 0
	bne $t1, $t2, label529
	j label530
label529:
	li $t0, 1
	sw $t0, -1804($fp)
label530:
	li $t0, 9551
	sw $t0, -1824($fp)
	li $t0, 0
	lw $t1, -1824($fp)
	sub $t0, $t0, $t1
	sw $t0, -1828($fp)
	li $t0, 0
	lw $t1, -1828($fp)
	sub $t0, $t0, $t1
	sw $t0, -1832($fp)
	addi $sp, $sp, -4
	lw $t0, -1760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1832($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1836($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -84
	sw $t0, -1840($fp)
	li $t0, 0
	sw $t0, -1844($fp)
	li $t0, 0
	sw $t0, -1848($fp)
	lw $t0, -632($fp)
	sw $t0, -1852($fp)
	lw $t1, -1852($fp)
	li $t2, 0
	bne $t1, $t2, label536
	j label535
label535:
	li $t0, 1
	sw $t0, -1848($fp)
label536:
	lw $t0, 8($fp)
	sw $t0, -1856($fp)
	lw $t0, -1848($fp)
	lw $t1, -1856($fp)
	sub $t0, $t0, $t1
	sw $t0, -1860($fp)
	lw $t0, -656($fp)
	sw $t0, -1864($fp)
	addi $sp, $sp, -4
	lw $t0, -1860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1864($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1868($fp)
	addi $sp, $sp, 12
	lw $t1, -1868($fp)
	li $t2, 0
	bne $t1, $t2, label532
	j label534
label534:
	li $t0, 59699
	sw $t0, -1872($fp)
	lw $t1, -1872($fp)
	li $t2, 0
	bne $t1, $t2, label532
	j label533
label532:
	li $t0, 1
	sw $t0, -1844($fp)
label533:
	li $t0, 4
	lw $t1, -1844($fp)
	mul $t0, $t0, $t1
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	lw $t1, -1840($fp)
	add $t0, $t0, $t1
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	lw $t1, 0($t0)
	sw $t1, -1884($fp)
	lw $t0, -344($fp)
	sw $t0, -1888($fp)
	li $t0, 0
	lw $t1, -1888($fp)
	sub $t0, $t0, $t1
	sw $t0, -1892($fp)
	li $t0, 0
	lw $t1, -1892($fp)
	sub $t0, $t0, $t1
	sw $t0, -1896($fp)
	addi $sp, $sp, -4
	lw $t0, -1896($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1900($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -1900($fp)
	sub $t0, $t0, $t1
	sw $t0, -1904($fp)
	lw $t0, -1884($fp)
	lw $t1, -1904($fp)
	mul $t0, $t0, $t1
	sw $t0, -1908($fp)
	li $t0, 0
	sw $t0, -1912($fp)
	li $t0, 21481
	sw $t0, -1916($fp)
	lw $t1, -1916($fp)
	li $t2, 0
	bne $t1, $t2, label538
	j label537
label537:
	li $t0, 1
	sw $t0, -1912($fp)
label538:
	lw $ra, -4($fp)
	lw $v0, -1912($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -1920($fp)
	li $t0, 42928
	sw $t0, -1924($fp)
	lw $t0, -356($fp)
	sw $t0, -1928($fp)
	lw $t0, -1924($fp)
	lw $t1, -1928($fp)
	add $t0, $t0, $t1
	sw $t0, -1932($fp)
	li $t0, 28961
	sw $t0, -1936($fp)
	lw $t0, -1932($fp)
	lw $t1, -1936($fp)
	sub $t0, $t0, $t1
	sw $t0, -1940($fp)
	lw $t1, -1940($fp)
	li $t2, 0
	bne $t1, $t2, label539
	j label541
label541:
	li $t0, 20357
	sw $t0, -1944($fp)
	li $t0, 46484
	sw $t0, -1948($fp)
	lw $t0, -1944($fp)
	lw $t1, -1948($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1952($fp)
	lw $t1, -1952($fp)
	li $t2, 0
	bne $t1, $t2, label539
	j label540
label539:
	li $t0, 1
	sw $t0, -1920($fp)
label540:
	lw $t0, -1920($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -1956($fp)
	li $t0, 42095
	sw $t0, -1960($fp)
	j label508
label507:
	li $t0, 53105
	sw $t0, -2016($fp)
	addi $t0, $fp, -1972
	sw $t0, -2020($fp)
	li $t0, 0
	sw $t0, -2024($fp)
	lw $t0, -2024($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2028($fp)
	lw $t0, -2020($fp)
	lw $t1, -2028($fp)
	add $t0, $t0, $t1
	sw $t0, -2032($fp)
	lw $t0, -2016($fp)
	lw $t1, -2032($fp)
	sw $t0, 0($t1)
	lw $t0, -2032($fp)
	lw $t1, 0($t0)
	sw $t1, -2036($fp)
	li $t0, 1973
	sw $t0, -2040($fp)
	addi $t0, $fp, -1972
	sw $t0, -2044($fp)
	li $t0, 1
	sw $t0, -2048($fp)
	lw $t0, -2048($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2052($fp)
	lw $t0, -2044($fp)
	lw $t1, -2052($fp)
	add $t0, $t0, $t1
	sw $t0, -2056($fp)
	lw $t0, -2040($fp)
	lw $t1, -2056($fp)
	sw $t0, 0($t1)
	lw $t0, -2056($fp)
	lw $t1, 0($t0)
	sw $t1, -2060($fp)
	li $t0, 35760
	sw $t0, -2064($fp)
	addi $t0, $fp, -1972
	sw $t0, -2068($fp)
	li $t0, 2
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2076($fp)
	lw $t0, -2068($fp)
	lw $t1, -2076($fp)
	add $t0, $t0, $t1
	sw $t0, -2080($fp)
	lw $t0, -2064($fp)
	lw $t1, -2080($fp)
	sw $t0, 0($t1)
	lw $t0, -2080($fp)
	lw $t1, 0($t0)
	sw $t1, -2084($fp)
	li $t0, 42297
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	sw $t0, -2096($fp)
	li $t0, 45917
	sw $t0, -2100($fp)
	lw $t0, -2100($fp)
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	sw $t0, -2108($fp)
	li $t0, 47817
	sw $t0, -2112($fp)
	lw $t0, -2112($fp)
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	sw $t0, -2120($fp)
	li $t0, 41279
	sw $t0, -2124($fp)
	lw $t0, -2124($fp)
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	sw $t0, -2132($fp)
	li $t0, 65387
	sw $t0, -2136($fp)
	lw $t0, -2136($fp)
	sw $t0, -2140($fp)
	lw $t0, -2140($fp)
	sw $t0, -2144($fp)
	li $t0, 58830
	sw $t0, -2148($fp)
	addi $t0, $fp, -2012
	sw $t0, -2152($fp)
	li $t0, 0
	sw $t0, -2156($fp)
	lw $t0, -2156($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2160($fp)
	lw $t0, -2152($fp)
	lw $t1, -2160($fp)
	add $t0, $t0, $t1
	sw $t0, -2164($fp)
	lw $t0, -2148($fp)
	lw $t1, -2164($fp)
	sw $t0, 0($t1)
	lw $t0, -2164($fp)
	lw $t1, 0($t0)
	sw $t1, -2168($fp)
	li $t0, 13158
	sw $t0, -2172($fp)
	addi $t0, $fp, -2012
	sw $t0, -2176($fp)
	li $t0, 1
	sw $t0, -2180($fp)
	lw $t0, -2180($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2184($fp)
	lw $t0, -2176($fp)
	lw $t1, -2184($fp)
	add $t0, $t0, $t1
	sw $t0, -2188($fp)
	lw $t0, -2172($fp)
	lw $t1, -2188($fp)
	sw $t0, 0($t1)
	lw $t0, -2188($fp)
	lw $t1, 0($t0)
	sw $t1, -2192($fp)
	li $t0, 27993
	sw $t0, -2196($fp)
	addi $t0, $fp, -2012
	sw $t0, -2200($fp)
	li $t0, 2
	sw $t0, -2204($fp)
	lw $t0, -2204($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2208($fp)
	lw $t0, -2200($fp)
	lw $t1, -2208($fp)
	add $t0, $t0, $t1
	sw $t0, -2212($fp)
	lw $t0, -2196($fp)
	lw $t1, -2212($fp)
	sw $t0, 0($t1)
	lw $t0, -2212($fp)
	lw $t1, 0($t0)
	sw $t1, -2216($fp)
	li $t0, 35605
	sw $t0, -2220($fp)
	addi $t0, $fp, -2012
	sw $t0, -2224($fp)
	li $t0, 3
	sw $t0, -2228($fp)
	lw $t0, -2228($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2232($fp)
	lw $t0, -2224($fp)
	lw $t1, -2232($fp)
	add $t0, $t0, $t1
	sw $t0, -2236($fp)
	lw $t0, -2220($fp)
	lw $t1, -2236($fp)
	sw $t0, 0($t1)
	lw $t0, -2236($fp)
	lw $t1, 0($t0)
	sw $t1, -2240($fp)
	li $t0, 62348
	sw $t0, -2244($fp)
	addi $t0, $fp, -2012
	sw $t0, -2248($fp)
	li $t0, 4
	sw $t0, -2252($fp)
	lw $t0, -2252($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2256($fp)
	lw $t0, -2248($fp)
	lw $t1, -2256($fp)
	add $t0, $t0, $t1
	sw $t0, -2260($fp)
	lw $t0, -2244($fp)
	lw $t1, -2260($fp)
	sw $t0, 0($t1)
	lw $t0, -2260($fp)
	lw $t1, 0($t0)
	sw $t1, -2264($fp)
	li $t0, 53824
	sw $t0, -2268($fp)
	addi $t0, $fp, -2012
	sw $t0, -2272($fp)
	li $t0, 5
	sw $t0, -2276($fp)
	lw $t0, -2276($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2280($fp)
	lw $t0, -2272($fp)
	lw $t1, -2280($fp)
	add $t0, $t0, $t1
	sw $t0, -2284($fp)
	lw $t0, -2268($fp)
	lw $t1, -2284($fp)
	sw $t0, 0($t1)
	lw $t0, -2284($fp)
	lw $t1, 0($t0)
	sw $t1, -2288($fp)
	li $t0, 39065
	sw $t0, -2292($fp)
	addi $t0, $fp, -2012
	sw $t0, -2296($fp)
	li $t0, 6
	sw $t0, -2300($fp)
	lw $t0, -2300($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2304($fp)
	lw $t0, -2296($fp)
	lw $t1, -2304($fp)
	add $t0, $t0, $t1
	sw $t0, -2308($fp)
	lw $t0, -2292($fp)
	lw $t1, -2308($fp)
	sw $t0, 0($t1)
	lw $t0, -2308($fp)
	lw $t1, 0($t0)
	sw $t1, -2312($fp)
	li $t0, 59832
	sw $t0, -2316($fp)
	addi $t0, $fp, -2012
	sw $t0, -2320($fp)
	li $t0, 7
	sw $t0, -2324($fp)
	lw $t0, -2324($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2328($fp)
	lw $t0, -2320($fp)
	lw $t1, -2328($fp)
	add $t0, $t0, $t1
	sw $t0, -2332($fp)
	lw $t0, -2316($fp)
	lw $t1, -2332($fp)
	sw $t0, 0($t1)
	lw $t0, -2332($fp)
	lw $t1, 0($t0)
	sw $t1, -2336($fp)
	li $t0, 63375
	sw $t0, -2340($fp)
	addi $t0, $fp, -2012
	sw $t0, -2344($fp)
	li $t0, 8
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2352($fp)
	lw $t0, -2344($fp)
	lw $t1, -2352($fp)
	add $t0, $t0, $t1
	sw $t0, -2356($fp)
	lw $t0, -2340($fp)
	lw $t1, -2356($fp)
	sw $t0, 0($t1)
	lw $t0, -2356($fp)
	lw $t1, 0($t0)
	sw $t1, -2360($fp)
	li $t0, 14188
	sw $t0, -2364($fp)
	addi $t0, $fp, -2012
	sw $t0, -2368($fp)
	li $t0, 9
	sw $t0, -2372($fp)
	lw $t0, -2372($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2376($fp)
	lw $t0, -2368($fp)
	lw $t1, -2376($fp)
	add $t0, $t0, $t1
	sw $t0, -2380($fp)
	lw $t0, -2364($fp)
	lw $t1, -2380($fp)
	sw $t0, 0($t1)
	lw $t0, -2380($fp)
	lw $t1, 0($t0)
	sw $t1, -2384($fp)
	li $t0, 22267
	sw $t0, -2388($fp)
	lw $t0, -2388($fp)
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	sw $t0, -2396($fp)
	li $t0, 11742
	sw $t0, -2400($fp)
	lw $t0, -2400($fp)
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	sw $t0, -2408($fp)
	li $t0, 0
	sw $t0, -2412($fp)
	addi $t0, $fp, -76
	sw $t0, -2416($fp)
	li $t0, 1
	sw $t0, -2420($fp)
	li $t0, 4
	lw $t1, -2420($fp)
	mul $t0, $t0, $t1
	sw $t0, -2424($fp)
	lw $t0, -2424($fp)
	lw $t1, -2416($fp)
	add $t0, $t0, $t1
	sw $t0, -2428($fp)
	lw $t0, -2428($fp)
	lw $t1, 0($t0)
	sw $t1, -2432($fp)
	lw $t1, -2432($fp)
	li $t2, 0
	bne $t1, $t2, label545
	j label547
label547:
	li $t0, 26817
	sw $t0, -2436($fp)
	lw $t1, -2436($fp)
	li $t2, 0
	bne $t1, $t2, label545
	j label546
label545:
	li $t0, 1
	sw $t0, -2412($fp)
label546:
	li $t0, 0
	sw $t0, -2440($fp)
	lw $t0, 12($fp)
	sw $t0, -2444($fp)
	li $t0, 62853
	sw $t0, -2448($fp)
	lw $t1, -2444($fp)
	lw $t2, -2448($fp)
	bne $t1, $t2, label548
	j label549
label548:
	li $t0, 1
	sw $t0, -2440($fp)
label549:
	addi $sp, $sp, -4
	lw $t0, -2412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2440($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2452($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -2456($fp)
	lw $t0, -728($fp)
	sw $t0, -2460($fp)
	lw $t1, -2460($fp)
	li $t2, 0
	bne $t1, $t2, label551
	j label550
label550:
	li $t0, 1
	sw $t0, -2456($fp)
label551:
	lw $t0, -2452($fp)
	lw $t1, -2456($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2464($fp)
	lw $t1, -2464($fp)
	li $t2, 0
	bne $t1, $t2, label542
	j label543
label542:
	li $t0, 0
	sw $t0, -2468($fp)
	li $t0, 55974
	sw $t0, -2472($fp)
	lw $t1, -2472($fp)
	li $t2, 0
	bne $t1, $t2, label556
	j label555
label555:
	li $t0, 1
	sw $t0, -2468($fp)
label556:
	li $t0, 60753
	sw $t0, -2476($fp)
	lw $t0, -2468($fp)
	lw $t1, -2476($fp)
	mul $t0, $t0, $t1
	sw $t0, -2480($fp)
	li $t0, 0
	sw $t0, -2484($fp)
	lw $t0, -716($fp)
	sw $t0, -2488($fp)
	lw $t1, -2488($fp)
	li $t2, 0
	bne $t1, $t2, label559
	j label558
label559:
	li $t0, 61494
	sw $t0, -2492($fp)
	lw $t1, -2492($fp)
	li $t2, 0
	bne $t1, $t2, label557
	j label558
label557:
	li $t0, 1
	sw $t0, -2484($fp)
label558:
	lw $t0, -416($fp)
	sw $t0, -2496($fp)
	lw $t0, -2496($fp)
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -2500($fp)
	li $t0, 0
	sw $t0, -2504($fp)
	lw $t0, 4($fp)
	sw $t0, -2508($fp)
	li $t0, 15574
	sw $t0, -2512($fp)
	lw $t0, -2508($fp)
	lw $t1, -2512($fp)
	sub $t0, $t0, $t1
	sw $t0, -2516($fp)
	li $t0, 50693
	sw $t0, -2520($fp)
	lw $t1, -2516($fp)
	lw $t2, -2520($fp)
	ble $t1, $t2, label560
	j label561
label560:
	li $t0, 1
	sw $t0, -2504($fp)
label561:
	li $t0, 19399
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	sw $t0, -2528($fp)
	li $t0, 4209
	sw $t0, -2532($fp)
	addi $sp, $sp, -4
	lw $t0, -2484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2532($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2536($fp)
	addi $sp, $sp, 24
	lw $t0, -632($fp)
	sw $t0, -2540($fp)
	lw $t0, -2536($fp)
	lw $t1, -2540($fp)
	mul $t0, $t0, $t1
	sw $t0, -2544($fp)
	lw $t0, -392($fp)
	sw $t0, -2548($fp)
	lw $t0, -2544($fp)
	lw $t1, -2548($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2552($fp)
	lw $t1, -2480($fp)
	lw $t2, -2552($fp)
	bne $t1, $t2, label552
	j label553
label552:
	li $t0, 0
	sw $t0, -2556($fp)
	li $t0, 0
	sw $t0, -2560($fp)
	li $t0, 0
	sw $t0, -2564($fp)
	li $t0, 3144
	sw $t0, -2568($fp)
	lw $t1, -2568($fp)
	li $t2, 0
	bne $t1, $t2, label568
	j label567
label567:
	li $t0, 1
	sw $t0, -2564($fp)
label568:
	li $t0, 0
	lw $t1, -2564($fp)
	sub $t0, $t0, $t1
	sw $t0, -2572($fp)
	lw $t0, -644($fp)
	sw $t0, -2576($fp)
	lw $t0, -332($fp)
	sw $t0, -2580($fp)
	lw $t0, -2576($fp)
	lw $t1, -2580($fp)
	mul $t0, $t0, $t1
	sw $t0, -2584($fp)
	lw $t1, -2572($fp)
	lw $t2, -2584($fp)
	bgt $t1, $t2, label565
	j label566
label565:
	li $t0, 1
	sw $t0, -2560($fp)
label566:
	li $t0, 0
	sw $t0, -2588($fp)
	li $t0, 52666
	sw $t0, -2592($fp)
	li $t0, 0
	lw $t1, -2592($fp)
	sub $t0, $t0, $t1
	sw $t0, -2596($fp)
	li $t0, 31718
	sw $t0, -2600($fp)
	lw $t1, -2596($fp)
	lw $t2, -2600($fp)
	blt $t1, $t2, label569
	j label570
label569:
	li $t0, 1
	sw $t0, -2588($fp)
label570:
	li $t0, 0
	sw $t0, -2604($fp)
	lw $t0, 12($fp)
	sw $t0, -2608($fp)
	lw $t1, -2608($fp)
	li $t2, 0
	bne $t1, $t2, label571
	j label574
label574:
	lw $t0, -2092($fp)
	sw $t0, -2612($fp)
	lw $t1, -2612($fp)
	li $t2, 0
	bne $t1, $t2, label571
	j label573
label573:
	lw $t0, -740($fp)
	sw $t0, -2616($fp)
	lw $t1, -2616($fp)
	li $t2, 0
	bne $t1, $t2, label571
	j label572
label571:
	li $t0, 1
	sw $t0, -2604($fp)
label572:
	addi $sp, $sp, -4
	lw $t0, -2588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2604($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2620($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -2620($fp)
	sub $t0, $t0, $t1
	sw $t0, -2624($fp)
	lw $t1, -2560($fp)
	lw $t2, -2624($fp)
	blt $t1, $t2, label564
	j label563
label564:
	li $t0, 45441
	sw $t0, -2628($fp)
	li $t0, 33047
	sw $t0, -2632($fp)
	lw $t0, -2628($fp)
	lw $t1, -2632($fp)
	sub $t0, $t0, $t1
	sw $t0, -2636($fp)
	li $t0, 13999
	sw $t0, -2640($fp)
	lw $t0, -2636($fp)
	lw $t1, -2640($fp)
	add $t0, $t0, $t1
	sw $t0, -2644($fp)
	li $t0, 21184
	sw $t0, -2648($fp)
	li $t0, 32899
	sw $t0, -2652($fp)
	lw $t0, -2648($fp)
	lw $t1, -2652($fp)
	add $t0, $t0, $t1
	sw $t0, -2656($fp)
	lw $t1, -2644($fp)
	lw $t2, -2656($fp)
	blt $t1, $t2, label562
	j label563
label562:
	li $t0, 1
	sw $t0, -2556($fp)
label563:
	j label554
label553:
	li $t0, 7293
	sw $t0, -2660($fp)
	li $t0, 34342
	sw $t0, -2664($fp)
	lw $t0, -2660($fp)
	lw $t1, -2664($fp)
	mul $t0, $t0, $t1
	sw $t0, -2668($fp)
label554:
	j label544
label543:
	li $t0, 0
	sw $t0, -2672($fp)
	lw $t0, -2404($fp)
	sw $t0, -2676($fp)
	li $t0, 0
	lw $t1, -2676($fp)
	sub $t0, $t0, $t1
	sw $t0, -2680($fp)
	lw $t1, -2680($fp)
	li $t2, 0
	bne $t1, $t2, label576
	j label575
label575:
	li $t0, 1
	sw $t0, -2672($fp)
label576:
	li $t0, 60892
	sw $t0, -2684($fp)
	li $t0, 1
	sw $t0, -2688($fp)
	lw $t0, -2684($fp)
	lw $t1, -2688($fp)
	mul $t0, $t0, $t1
	sw $t0, -2692($fp)
	lw $t0, -2116($fp)
	sw $t0, -2696($fp)
	lw $t0, -2692($fp)
	lw $t1, -2696($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2700($fp)
	lw $t0, -2672($fp)
	lw $t1, -2700($fp)
	add $t0, $t0, $t1
	sw $t0, -2704($fp)
	lw $t0, 12($fp)
	sw $t0, -2708($fp)
	lw $t0, -2704($fp)
	lw $t1, -2708($fp)
	sub $t0, $t0, $t1
	sw $t0, -2712($fp)
	lw $ra, -4($fp)
	lw $v0, -2712($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label544:
label577:
	li $t0, 0
	sw $t0, -2716($fp)
	li $t0, 0
	sw $t0, -2720($fp)
	li $t0, 30615
	sw $t0, -2724($fp)
	lw $t0, 4($fp)
	sw $t0, -2728($fp)
	lw $t1, -2724($fp)
	lw $t2, -2728($fp)
	bgt $t1, $t2, label582
	j label583
label582:
	li $t0, 1
	sw $t0, -2720($fp)
label583:
	lw $t0, -2140($fp)
	sw $t0, -2732($fp)
	lw $t1, -2720($fp)
	lw $t2, -2732($fp)
	beq $t1, $t2, label580
	j label581
label580:
	li $t0, 1
	sw $t0, -2716($fp)
label581:
	li $t0, 47019
	sw $t0, -2736($fp)
	lw $t0, -2736($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -2740($fp)
	li $t0, 0
	sw $t0, -2744($fp)
	addi $t0, $fp, -56
	sw $t0, -2748($fp)
	lw $t0, -344($fp)
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
	li $t0, 25451
	sw $t0, -2768($fp)
	lw $t1, -2764($fp)
	lw $t2, -2768($fp)
	bgt $t1, $t2, label584
	j label585
label584:
	li $t0, 1
	sw $t0, -2744($fp)
label585:
	addi $t0, $fp, -1972
	sw $t0, -2772($fp)
	li $t0, 1
	sw $t0, -2776($fp)
	li $t0, 4
	lw $t1, -2776($fp)
	mul $t0, $t0, $t1
	sw $t0, -2780($fp)
	lw $t0, -2780($fp)
	lw $t1, -2772($fp)
	add $t0, $t0, $t1
	sw $t0, -2784($fp)
	lw $t0, -2784($fp)
	lw $t1, 0($t0)
	sw $t1, -2788($fp)
	li $t0, 31155
	sw $t0, -2792($fp)
	lw $t0, -2792($fp)
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -2796($fp)
	addi $sp, $sp, -4
	lw $t0, -2796($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2800($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -2800($fp)
	sub $t0, $t0, $t1
	sw $t0, -2804($fp)
	addi $sp, $sp, -4
	lw $t0, -2716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2804($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2808($fp)
	addi $sp, $sp, 24
	li $t0, 47719
	sw $t0, -2812($fp)
	lw $t0, -404($fp)
	sw $t0, -2816($fp)
	lw $t0, -2812($fp)
	lw $t1, -2816($fp)
	mul $t0, $t0, $t1
	sw $t0, -2820($fp)
	lw $t0, -2808($fp)
	lw $t1, -2820($fp)
	sub $t0, $t0, $t1
	sw $t0, -2824($fp)
	lw $t1, -2824($fp)
	li $t2, 0
	bne $t1, $t2, label578
	j label579
label578:
	li $t0, 0
	sw $t0, -2828($fp)
	li $t0, 0
	sw $t0, -2832($fp)
	li $t0, 58761
	sw $t0, -2836($fp)
	lw $t1, -2836($fp)
	li $t2, 0
	bne $t1, $t2, label590
	j label589
label589:
	li $t0, 1
	sw $t0, -2832($fp)
label590:
	li $t0, 27933
	sw $t0, -2840($fp)
	li $t0, 0
	lw $t1, -2840($fp)
	sub $t0, $t0, $t1
	sw $t0, -2844($fp)
	li $t0, 0
	lw $t1, -2844($fp)
	sub $t0, $t0, $t1
	sw $t0, -2848($fp)
	lw $t0, -2832($fp)
	lw $t1, -2848($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2852($fp)
	lw $t1, -2852($fp)
	li $t2, 0
	bne $t1, $t2, label586
	j label588
label588:
	lw $t0, -2128($fp)
	sw $t0, -2856($fp)
	lw $t1, -2856($fp)
	li $t2, 0
	bne $t1, $t2, label592
	j label587
label592:
	li $t0, 43994
	sw $t0, -2860($fp)
	lw $t1, -2860($fp)
	li $t2, 0
	bne $t1, $t2, label591
	j label587
label591:
	lw $t0, -416($fp)
	sw $t0, -2864($fp)
	li $t0, 32497
	sw $t0, -2868($fp)
	lw $t1, -2864($fp)
	lw $t2, -2868($fp)
	bge $t1, $t2, label586
	j label587
label586:
	li $t0, 1
	sw $t0, -2828($fp)
label587:
	j label577
label579:
label593:
	li $t0, 0
	sw $t0, -2872($fp)
	lw $t0, -620($fp)
	sw $t0, -2876($fp)
	li $t0, 43288
	sw $t0, -2880($fp)
	lw $t0, -2876($fp)
	lw $t1, -2880($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2884($fp)
	li $t0, 44117
	sw $t0, -2888($fp)
	lw $t1, -2884($fp)
	lw $t2, -2888($fp)
	bgt $t1, $t2, label596
	j label597
label596:
	li $t0, 1
	sw $t0, -2872($fp)
label597:
	li $t0, 0
	sw $t0, -2892($fp)
	lw $t0, -332($fp)
	sw $t0, -2896($fp)
	lw $t1, -2896($fp)
	li $t2, 0
	bne $t1, $t2, label600
	j label599
label600:
	li $t0, 53832
	sw $t0, -2900($fp)
	lw $t1, -2900($fp)
	li $t2, 0
	bne $t1, $t2, label598
	j label599
label598:
	li $t0, 1
	sw $t0, -2892($fp)
label599:
	lw $t0, 20($fp)
	sw $t0, -2904($fp)
	lw $t0, -2128($fp)
	sw $t0, -2908($fp)
	lw $t0, -2904($fp)
	lw $t1, -2908($fp)
	sub $t0, $t0, $t1
	sw $t0, -2912($fp)
	lw $t0, 12($fp)
	sw $t0, -2916($fp)
	lw $t0, -2912($fp)
	lw $t1, -2916($fp)
	add $t0, $t0, $t1
	sw $t0, -2920($fp)
	li $t0, 27714
	sw $t0, -2924($fp)
	li $t0, 58960
	sw $t0, -2928($fp)
	lw $t0, -2924($fp)
	lw $t1, -2928($fp)
	sub $t0, $t0, $t1
	sw $t0, -2932($fp)
	lw $t0, -2092($fp)
	sw $t0, -2936($fp)
	lw $t0, -2932($fp)
	lw $t1, -2936($fp)
	add $t0, $t0, $t1
	sw $t0, -2940($fp)
	li $t0, 0
	sw $t0, -2944($fp)
	li $t0, 54750
	sw $t0, -2948($fp)
	lw $t0, -344($fp)
	sw $t0, -2952($fp)
	lw $t0, -2948($fp)
	lw $t1, -2952($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2956($fp)
	lw $t1, -2956($fp)
	li $t2, 0
	bne $t1, $t2, label603
	j label602
label603:
	li $t0, 34432
	sw $t0, -2960($fp)
	lw $t1, -2960($fp)
	li $t2, 0
	bne $t1, $t2, label601
	j label602
label601:
	li $t0, 1
	sw $t0, -2944($fp)
label602:
	addi $sp, $sp, -4
	lw $t0, -2872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2944($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2964($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -2964($fp)
	sub $t0, $t0, $t1
	sw $t0, -2968($fp)
	lw $t1, -2968($fp)
	li $t2, 0
	bne $t1, $t2, label594
	j label595
label594:
	li $t0, 49790
	sw $t0, -2972($fp)
	li $t0, 0
	sw $t0, -2976($fp)
	li $t0, 46432
	sw $t0, -2980($fp)
	lw $t1, -2980($fp)
	li $t2, 0
	bne $t1, $t2, label605
	j label604
label604:
	li $t0, 1
	sw $t0, -2976($fp)
label605:
	lw $t0, -2972($fp)
	lw $t1, -2976($fp)
	mul $t0, $t0, $t1
	sw $t0, -2984($fp)
	lw $t0, 12($fp)
	sw $t0, -2988($fp)
	li $t0, 0
	lw $t1, -2988($fp)
	sub $t0, $t0, $t1
	sw $t0, -2992($fp)
	li $t0, 0
	lw $t1, -2992($fp)
	sub $t0, $t0, $t1
	sw $t0, -2996($fp)
	lw $t0, -2984($fp)
	lw $t1, -2996($fp)
	mul $t0, $t0, $t1
	sw $t0, -3000($fp)
	lw $t0, -2392($fp)
	sw $t0, -3004($fp)
	lw $t0, -3000($fp)
	lw $t1, -3004($fp)
	add $t0, $t0, $t1
	sw $t0, -3008($fp)
	j label593
label595:
label606:
	li $t0, 26337
	sw $t0, -3012($fp)
	lw $t0, -3012($fp)
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -3016($fp)
	lw $t0, -356($fp)
	sw $t0, -3020($fp)
	li $t0, 0
	sw $t0, -3024($fp)
	lw $t0, -2128($fp)
	sw $t0, -3028($fp)
	lw $t1, -3028($fp)
	li $t2, 0
	bne $t1, $t2, label610
	j label609
label609:
	li $t0, 1
	sw $t0, -3024($fp)
label610:
	li $t0, 15973
	sw $t0, -3032($fp)
	lw $t0, -3024($fp)
	lw $t1, -3032($fp)
	mul $t0, $t0, $t1
	sw $t0, -3036($fp)
	addi $t0, $fp, -1972
	sw $t0, -3040($fp)
	lw $t0, -620($fp)
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
	li $t0, 0
	lw $t1, -3056($fp)
	sub $t0, $t0, $t1
	sw $t0, -3060($fp)
	li $t0, 0
	sw $t0, -3064($fp)
	lw $t0, -368($fp)
	sw $t0, -3068($fp)
	lw $t0, -2128($fp)
	sw $t0, -3072($fp)
	lw $t0, -3068($fp)
	lw $t1, -3072($fp)
	mul $t0, $t0, $t1
	sw $t0, -3076($fp)
	li $t0, 31248
	sw $t0, -3080($fp)
	lw $t1, -3076($fp)
	lw $t2, -3080($fp)
	bge $t1, $t2, label611
	j label612
label611:
	li $t0, 1
	sw $t0, -3064($fp)
label612:
	addi $sp, $sp, -4
	lw $t0, -3016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3064($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3084($fp)
	addi $sp, $sp, 24
	lw $t1, -3084($fp)
	li $t2, 0
	bne $t1, $t2, label608
	j label607
label607:
label613:
	lw $t0, -632($fp)
	sw $t0, -3088($fp)
	li $t0, 64295
	sw $t0, -3092($fp)
	lw $t0, -3088($fp)
	lw $t1, -3092($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3096($fp)
	li $t0, 29972
	sw $t0, -3100($fp)
	lw $t0, -3096($fp)
	lw $t1, -3100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3104($fp)
	li $t0, 47521
	sw $t0, -3108($fp)
	lw $t0, -3104($fp)
	lw $t1, -3108($fp)
	mul $t0, $t0, $t1
	sw $t0, -3112($fp)
	lw $t0, -2392($fp)
	sw $t0, -3116($fp)
	lw $t0, -332($fp)
	sw $t0, -3120($fp)
	lw $t0, -3116($fp)
	lw $t1, -3120($fp)
	add $t0, $t0, $t1
	sw $t0, -3124($fp)
	li $t0, 31658
	sw $t0, -3128($fp)
	lw $t0, -3124($fp)
	lw $t1, -3128($fp)
	add $t0, $t0, $t1
	sw $t0, -3132($fp)
	lw $t1, -3112($fp)
	lw $t2, -3132($fp)
	bgt $t1, $t2, label616
	j label615
label616:
	li $t0, 37266
	sw $t0, -3136($fp)
	li $t0, 16328
	sw $t0, -3140($fp)
	lw $t0, -3136($fp)
	lw $t1, -3140($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3144($fp)
	lw $t0, -620($fp)
	sw $t0, -3148($fp)
	lw $t0, -3144($fp)
	lw $t1, -3148($fp)
	add $t0, $t0, $t1
	sw $t0, -3152($fp)
	lw $t1, -3152($fp)
	li $t2, 0
	bne $t1, $t2, label614
	j label615
label614:
	addi $t0, $fp, -1972
	sw $t0, -3156($fp)
	li $t0, 1
	sw $t0, -3160($fp)
	li $t0, 4
	lw $t1, -3160($fp)
	mul $t0, $t0, $t1
	sw $t0, -3164($fp)
	lw $t0, -3164($fp)
	lw $t1, -3156($fp)
	add $t0, $t0, $t1
	sw $t0, -3168($fp)
	lw $t0, -3168($fp)
	lw $t1, 0($t0)
	sw $t1, -3172($fp)
	addi $t0, $fp, -44
	sw $t0, -3176($fp)
	lw $t0, -656($fp)
	sw $t0, -3180($fp)
	li $t0, 4
	lw $t1, -3180($fp)
	mul $t0, $t0, $t1
	sw $t0, -3184($fp)
	lw $t0, -3184($fp)
	lw $t1, -3176($fp)
	add $t0, $t0, $t1
	sw $t0, -3188($fp)
	lw $t0, -3188($fp)
	lw $t1, 0($t0)
	sw $t1, -3192($fp)
	li $t0, 0
	lw $t1, -3192($fp)
	sub $t0, $t0, $t1
	sw $t0, -3196($fp)
	lw $t0, -3172($fp)
	lw $t1, -3196($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3200($fp)
	j label613
label615:
	j label606
label608:
	li $t0, 47483
	sw $t0, -3204($fp)
	li $t0, 10658
	sw $t0, -3208($fp)
	li $t0, 0
	lw $t1, -3208($fp)
	sub $t0, $t0, $t1
	sw $t0, -3212($fp)
	lw $t0, -3204($fp)
	lw $t1, -3212($fp)
	mul $t0, $t0, $t1
	sw $t0, -3216($fp)
	lw $t0, -3216($fp)
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -3220($fp)
	lw $t1, -3220($fp)
	li $t2, 0
	bne $t1, $t2, label617
	j label618
label617:
	li $t0, 31056
	sw $t0, -3224($fp)
	li $t0, 7398
	sw $t0, -3228($fp)
	lw $t0, -3224($fp)
	lw $t1, -3228($fp)
	mul $t0, $t0, $t1
	sw $t0, -3232($fp)
	li $t0, 0
	sw $t0, -3236($fp)
	lw $t0, -404($fp)
	sw $t0, -3240($fp)
	li $t0, 0
	lw $t1, -3240($fp)
	sub $t0, $t0, $t1
	sw $t0, -3244($fp)
	lw $t0, -2104($fp)
	sw $t0, -3248($fp)
	lw $t1, -3244($fp)
	lw $t2, -3248($fp)
	bgt $t1, $t2, label620
	j label621
label620:
	li $t0, 1
	sw $t0, -3236($fp)
label621:
	li $t0, 0
	sw $t0, -3252($fp)
	lw $t0, -2092($fp)
	sw $t0, -3256($fp)
	li $t0, 50903
	sw $t0, -3260($fp)
	lw $t0, -3256($fp)
	lw $t1, -3260($fp)
	mul $t0, $t0, $t1
	sw $t0, -3264($fp)
	li $t0, 24068
	sw $t0, -3268($fp)
	lw $t1, -3264($fp)
	lw $t2, -3268($fp)
	bne $t1, $t2, label622
	j label623
label622:
	li $t0, 1
	sw $t0, -3252($fp)
label623:
	li $t0, 61671
	sw $t0, -3272($fp)
	li $t0, 1
	sw $t0, -3276($fp)
	lw $t0, -3272($fp)
	lw $t1, -3276($fp)
	mul $t0, $t0, $t1
	sw $t0, -3280($fp)
	li $t0, 0
	sw $t0, -3284($fp)
	li $t0, 57678
	sw $t0, -3288($fp)
	lw $t1, -3288($fp)
	li $t2, 0
	bne $t1, $t2, label625
	j label624
label624:
	li $t0, 1
	sw $t0, -3284($fp)
label625:
	li $t0, 0
	lw $t1, -3284($fp)
	sub $t0, $t0, $t1
	sw $t0, -3292($fp)
	li $t0, 0
	sw $t0, -3296($fp)
	lw $t0, -620($fp)
	sw $t0, -3300($fp)
	lw $t1, -3300($fp)
	li $t2, 0
	bne $t1, $t2, label627
	j label626
label626:
	li $t0, 1
	sw $t0, -3296($fp)
label627:
	addi $sp, $sp, -4
	lw $t0, -3236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3296($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3304($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -3304($fp)
	sub $t0, $t0, $t1
	sw $t0, -3308($fp)
	lw $t0, -3232($fp)
	lw $t1, -3308($fp)
	sub $t0, $t0, $t1
	sw $t0, -3312($fp)
	j label619
label618:
label628:
	li $t0, 0
	sw $t0, -3316($fp)
	lw $t0, -2140($fp)
	sw $t0, -3320($fp)
	lw $t1, -3320($fp)
	li $t2, 0
	bne $t1, $t2, label632
	j label631
label631:
	li $t0, 1
	sw $t0, -3316($fp)
label632:
	li $t0, 0
	lw $t1, -3316($fp)
	sub $t0, $t0, $t1
	sw $t0, -3324($fp)
	li $t0, 0
	sw $t0, -3328($fp)
	li $t0, 0
	sw $t0, -3332($fp)
	lw $t0, -416($fp)
	sw $t0, -3336($fp)
	lw $t0, 12($fp)
	sw $t0, -3340($fp)
	lw $t1, -3336($fp)
	lw $t2, -3340($fp)
	ble $t1, $t2, label636
	j label637
label636:
	li $t0, 1
	sw $t0, -3332($fp)
label637:
	li $t0, 0
	sw $t0, -3344($fp)
	li $t0, 33575
	sw $t0, -3348($fp)
	lw $t0, -356($fp)
	sw $t0, -3352($fp)
	lw $t1, -3348($fp)
	lw $t2, -3352($fp)
	bne $t1, $t2, label640
	j label639
label640:
	li $t0, 17864
	sw $t0, -3356($fp)
	lw $t1, -3356($fp)
	li $t2, 0
	bne $t1, $t2, label638
	j label639
label638:
	li $t0, 1
	sw $t0, -3344($fp)
label639:
	addi $sp, $sp, -4
	lw $t0, -3332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3344($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3360($fp)
	addi $sp, $sp, 12
	lw $t1, -3360($fp)
	li $t2, 0
	bne $t1, $t2, label635
	j label634
label635:
	li $t0, 13283
	sw $t0, -3364($fp)
	lw $t1, -3364($fp)
	li $t2, 0
	bne $t1, $t2, label633
	j label634
label633:
	li $t0, 1
	sw $t0, -3328($fp)
label634:
	addi $sp, $sp, -4
	lw $t0, -3324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3328($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3368($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -3372($fp)
	lw $t0, 16($fp)
	sw $t0, -3376($fp)
	addi $t0, $fp, -2012
	sw $t0, -3380($fp)
	li $t0, 4
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
	lw $t1, -3376($fp)
	lw $t2, -3396($fp)
	bgt $t1, $t2, label641
	j label642
label641:
	li $t0, 1
	sw $t0, -3372($fp)
label642:
	lw $t1, -3368($fp)
	lw $t2, -3372($fp)
	bne $t1, $t2, label629
	j label630
label629:
	li $t0, 6707
	sw $t0, -3400($fp)
	li $t0, 0
	lw $t1, -3400($fp)
	sub $t0, $t0, $t1
	sw $t0, -3404($fp)
	li $t0, 56304
	sw $t0, -3408($fp)
	lw $t0, -3404($fp)
	lw $t1, -3408($fp)
	add $t0, $t0, $t1
	sw $t0, -3412($fp)
	li $t0, 0
	sw $t0, -3416($fp)
	lw $t0, -356($fp)
	sw $t0, -3420($fp)
	lw $t1, -3420($fp)
	li $t2, 0
	bne $t1, $t2, label644
	j label643
label643:
	li $t0, 1
	sw $t0, -3416($fp)
label644:
	lw $t0, -3412($fp)
	lw $t1, -3416($fp)
	add $t0, $t0, $t1
	sw $t0, -3424($fp)
	lw $t0, -3424($fp)
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -3428($fp)
	j label628
label630:
label619:
label645:
	lw $t0, 8($fp)
	sw $t0, -3432($fp)
	lw $t1, -3432($fp)
	li $t2, 0
	bne $t1, $t2, label646
	j label647
label646:
	li $t0, 0
	sw $t0, -3436($fp)
	lw $t0, -644($fp)
	sw $t0, -3440($fp)
	lw $t1, -3440($fp)
	li $t2, 0
	bne $t1, $t2, label650
	j label649
label650:
	addi $t0, $fp, -76
	sw $t0, -3444($fp)
	lw $t0, -2104($fp)
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
	lw $t1, -3460($fp)
	li $t2, 0
	bne $t1, $t2, label648
	j label649
label648:
	li $t0, 1
	sw $t0, -3436($fp)
label649:
	lw $ra, -4($fp)
	lw $v0, -3436($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label645
label647:
label508:
	j label501
label503:
	addi $t0, $fp, -44
	sw $t0, -3464($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -3484($fp)
	li $t0, 1
	sw $t0, -3488($fp)
	li $t0, 4
	lw $t1, -3488($fp)
	mul $t0, $t0, $t1
	sw $t0, -3492($fp)
	lw $t0, -3492($fp)
	lw $t1, -3484($fp)
	add $t0, $t0, $t1
	sw $t0, -3496($fp)
	lw $t0, -3496($fp)
	lw $t1, 0($t0)
	sw $t1, -3500($fp)
	lw $t0, -3500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3504($fp)
	li $t0, 2
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
	lw $t0, -3520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3524($fp)
	li $t0, 3
	sw $t0, -3528($fp)
	li $t0, 4
	lw $t1, -3528($fp)
	mul $t0, $t0, $t1
	sw $t0, -3532($fp)
	lw $t0, -3532($fp)
	lw $t1, -3524($fp)
	add $t0, $t0, $t1
	sw $t0, -3536($fp)
	lw $t0, -3536($fp)
	lw $t1, 0($t0)
	sw $t1, -3540($fp)
	lw $t0, -3540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3544($fp)
	li $t0, 4
	sw $t0, -3548($fp)
	li $t0, 4
	lw $t1, -3548($fp)
	mul $t0, $t0, $t1
	sw $t0, -3552($fp)
	lw $t0, -3552($fp)
	lw $t1, -3544($fp)
	add $t0, $t0, $t1
	sw $t0, -3556($fp)
	lw $t0, -3556($fp)
	lw $t1, 0($t0)
	sw $t1, -3560($fp)
	lw $t0, -3560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3564($fp)
	li $t0, 5
	sw $t0, -3568($fp)
	li $t0, 4
	lw $t1, -3568($fp)
	mul $t0, $t0, $t1
	sw $t0, -3572($fp)
	lw $t0, -3572($fp)
	lw $t1, -3564($fp)
	add $t0, $t0, $t1
	sw $t0, -3576($fp)
	lw $t0, -3576($fp)
	lw $t1, 0($t0)
	sw $t1, -3580($fp)
	lw $t0, -3580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3584($fp)
	li $t0, 6
	sw $t0, -3588($fp)
	li $t0, 4
	lw $t1, -3588($fp)
	mul $t0, $t0, $t1
	sw $t0, -3592($fp)
	lw $t0, -3592($fp)
	lw $t1, -3584($fp)
	add $t0, $t0, $t1
	sw $t0, -3596($fp)
	lw $t0, -3596($fp)
	lw $t1, 0($t0)
	sw $t1, -3600($fp)
	lw $t0, -3600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3604($fp)
	li $t0, 7
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
	addi $t0, $fp, -44
	sw $t0, -3624($fp)
	li $t0, 8
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
	addi $t0, $fp, -44
	sw $t0, -3644($fp)
	li $t0, 9
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
	lw $t0, -332($fp)
	sw $t0, -3664($fp)
	lw $t0, -3664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -344($fp)
	sw $t0, -3668($fp)
	lw $t0, -3668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -356($fp)
	sw $t0, -3672($fp)
	lw $t0, -3672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -368($fp)
	sw $t0, -3676($fp)
	lw $t0, -3676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -380($fp)
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -392($fp)
	sw $t0, -3684($fp)
	lw $t0, -3684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -404($fp)
	sw $t0, -3688($fp)
	lw $t0, -3688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -416($fp)
	sw $t0, -3692($fp)
	lw $t0, -3692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -3696($fp)
	li $t0, 0
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
	addi $t0, $fp, -56
	sw $t0, -3716($fp)
	li $t0, 1
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
	addi $t0, $fp, -56
	sw $t0, -3736($fp)
	li $t0, 2
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
	addi $t0, $fp, -76
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
	addi $t0, $fp, -76
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
	addi $t0, $fp, -76
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
	addi $t0, $fp, -76
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
	addi $t0, $fp, -76
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
	lw $t0, -620($fp)
	sw $t0, -3856($fp)
	lw $t0, -3856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -632($fp)
	sw $t0, -3860($fp)
	lw $t0, -3860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -644($fp)
	sw $t0, -3864($fp)
	lw $t0, -3864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -656($fp)
	sw $t0, -3868($fp)
	lw $t0, -3868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -3872($fp)
	li $t0, 0
	sw $t0, -3876($fp)
	li $t0, 4
	lw $t1, -3876($fp)
	mul $t0, $t0, $t1
	sw $t0, -3880($fp)
	lw $t0, -3880($fp)
	lw $t1, -3872($fp)
	add $t0, $t0, $t1
	sw $t0, -3884($fp)
	lw $t0, -3884($fp)
	lw $t1, 0($t0)
	sw $t1, -3888($fp)
	lw $t0, -3888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -3892($fp)
	li $t0, 1
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
	lw $t0, -3908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -716($fp)
	sw $t0, -3912($fp)
	lw $t0, -3912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -728($fp)
	sw $t0, -3916($fp)
	lw $t0, -3916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -740($fp)
	sw $t0, -3920($fp)
	lw $t0, -3920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3924($fp)
	addi $t0, $fp, -84
	sw $t0, -3928($fp)
	li $t0, 0
	sw $t0, -3932($fp)
	li $t0, 4
	lw $t1, -3932($fp)
	mul $t0, $t0, $t1
	sw $t0, -3936($fp)
	lw $t0, -3936($fp)
	lw $t1, -3928($fp)
	add $t0, $t0, $t1
	sw $t0, -3940($fp)
	lw $t0, -3940($fp)
	lw $t1, 0($t0)
	sw $t1, -3944($fp)
	li $t0, 0
	lw $t1, -3944($fp)
	sub $t0, $t0, $t1
	sw $t0, -3948($fp)
	lw $t1, -3948($fp)
	li $t2, 0
	bne $t1, $t2, label651
	j label653
label653:
	li $t0, 0
	sw $t0, -3952($fp)
	li $t0, 40558
	sw $t0, -3956($fp)
	lw $t1, -3956($fp)
	li $t2, 0
	bne $t1, $t2, label655
	j label654
label654:
	li $t0, 1
	sw $t0, -3952($fp)
label655:
	lw $t0, -728($fp)
	sw $t0, -3960($fp)
	lw $t0, -3952($fp)
	lw $t1, -3960($fp)
	sub $t0, $t0, $t1
	sw $t0, -3964($fp)
	addi $t0, $fp, -76
	sw $t0, -3968($fp)
	li $t0, 0
	sw $t0, -3972($fp)
	li $t0, 4
	lw $t1, -3972($fp)
	mul $t0, $t0, $t1
	sw $t0, -3976($fp)
	lw $t0, -3976($fp)
	lw $t1, -3968($fp)
	add $t0, $t0, $t1
	sw $t0, -3980($fp)
	lw $t0, -3980($fp)
	lw $t1, 0($t0)
	sw $t1, -3984($fp)
	lw $t1, -3964($fp)
	lw $t2, -3984($fp)
	ble $t1, $t2, label651
	j label652
label651:
	li $t0, 1
	sw $t0, -3924($fp)
label652:
	lw $ra, -4($fp)
	lw $v0, -3924($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -8
	jal f6
	sw $v0, -8($fp)
	addi $sp, $sp, 4
	li $t0, 56531
	sw $t0, -12($fp)
	lw $ra, -4($fp)
	lw $v0, -12($fp)
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
	jal f11
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
