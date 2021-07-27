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
	addi $sp, $sp, -6032
	li $t0, 16460
	sw $t0, -136($fp)
	addi $t0, $fp, -36
	sw $t0, -140($fp)
	li $t0, 0
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
	li $t0, 38925
	sw $t0, -160($fp)
	addi $t0, $fp, -36
	sw $t0, -164($fp)
	li $t0, 1
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
	li $t0, 44047
	sw $t0, -184($fp)
	addi $t0, $fp, -36
	sw $t0, -188($fp)
	li $t0, 2
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
	li $t0, 10150
	sw $t0, -208($fp)
	addi $t0, $fp, -36
	sw $t0, -212($fp)
	li $t0, 3
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
	li $t0, 28756
	sw $t0, -232($fp)
	addi $t0, $fp, -36
	sw $t0, -236($fp)
	li $t0, 4
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
	li $t0, 23988
	sw $t0, -256($fp)
	addi $t0, $fp, -36
	sw $t0, -260($fp)
	li $t0, 5
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
	li $t0, 18395
	sw $t0, -280($fp)
	addi $t0, $fp, -36
	sw $t0, -284($fp)
	li $t0, 6
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
	li $t0, 35517
	sw $t0, -304($fp)
	addi $t0, $fp, -36
	sw $t0, -308($fp)
	li $t0, 7
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
	li $t0, 7698
	sw $t0, -328($fp)
	addi $t0, $fp, -52
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
	li $t0, 33410
	sw $t0, -352($fp)
	addi $t0, $fp, -52
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
	li $t0, 63017
	sw $t0, -376($fp)
	addi $t0, $fp, -52
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
	li $t0, 36946
	sw $t0, -400($fp)
	addi $t0, $fp, -52
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
	li $t0, 40479
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	li $t0, 54476
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	li $t0, 4618
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	li $t0, 441
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	li $t0, 5980
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	li $t0, 54930
	sw $t0, -484($fp)
	addi $t0, $fp, -84
	sw $t0, -488($fp)
	li $t0, 0
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
	li $t0, 18764
	sw $t0, -508($fp)
	addi $t0, $fp, -84
	sw $t0, -512($fp)
	li $t0, 1
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
	li $t0, 12645
	sw $t0, -532($fp)
	addi $t0, $fp, -84
	sw $t0, -536($fp)
	li $t0, 2
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
	li $t0, 1352
	sw $t0, -556($fp)
	addi $t0, $fp, -84
	sw $t0, -560($fp)
	li $t0, 3
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
	li $t0, 21498
	sw $t0, -580($fp)
	addi $t0, $fp, -84
	sw $t0, -584($fp)
	li $t0, 4
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
	li $t0, 10777
	sw $t0, -604($fp)
	addi $t0, $fp, -84
	sw $t0, -608($fp)
	li $t0, 5
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
	li $t0, 7097
	sw $t0, -628($fp)
	addi $t0, $fp, -84
	sw $t0, -632($fp)
	li $t0, 6
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
	li $t0, 56808
	sw $t0, -652($fp)
	addi $t0, $fp, -84
	sw $t0, -656($fp)
	li $t0, 7
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
	li $t0, 28663
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, -684($fp)
	li $t0, 44104
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	sw $t0, -696($fp)
	li $t0, 46497
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -708($fp)
	li $t0, 22545
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -720($fp)
	li $t0, 5141
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	sw $t0, -732($fp)
	li $t0, 7039
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	sw $t0, -744($fp)
	li $t0, 39005
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	sw $t0, -756($fp)
	li $t0, 44067
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -768($fp)
	li $t0, 51086
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -780($fp)
	li $t0, 49155
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	sw $t0, -792($fp)
	li $t0, 7287
	sw $t0, -796($fp)
	addi $t0, $fp, -100
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
	li $t0, 9539
	sw $t0, -820($fp)
	addi $t0, $fp, -100
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
	li $t0, 2015
	sw $t0, -844($fp)
	addi $t0, $fp, -100
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
	li $t0, 42805
	sw $t0, -868($fp)
	addi $t0, $fp, -100
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
	li $t0, 17237
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -900($fp)
	li $t0, 35425
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -912($fp)
	li $t0, 40286
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -924($fp)
	li $t0, 54183
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -936($fp)
	li $t0, 10368
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -948($fp)
	li $t0, 29226
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	sw $t0, -960($fp)
	li $t0, 58801
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	sw $t0, -972($fp)
	li $t0, 10810
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	sw $t0, -984($fp)
	li $t0, 35207
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	sw $t0, -996($fp)
	li $t0, 48195
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	sw $t0, -1008($fp)
	li $t0, 29574
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	sw $t0, -1020($fp)
	li $t0, 47852
	sw $t0, -1024($fp)
	addi $t0, $fp, -116
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
	li $t0, 49547
	sw $t0, -1048($fp)
	addi $t0, $fp, -116
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
	li $t0, 51072
	sw $t0, -1072($fp)
	addi $t0, $fp, -116
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
	li $t0, 58630
	sw $t0, -1096($fp)
	addi $t0, $fp, -116
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
	li $t0, 56644
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	sw $t0, -1128($fp)
	li $t0, 42344
	sw $t0, -1132($fp)
	addi $t0, $fp, -132
	sw $t0, -1136($fp)
	li $t0, 0
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
	li $t0, 21757
	sw $t0, -1156($fp)
	addi $t0, $fp, -132
	sw $t0, -1160($fp)
	li $t0, 1
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
	li $t0, 35212
	sw $t0, -1180($fp)
	addi $t0, $fp, -132
	sw $t0, -1184($fp)
	li $t0, 2
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
	li $t0, 23305
	sw $t0, -1204($fp)
	addi $t0, $fp, -132
	sw $t0, -1208($fp)
	li $t0, 3
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
	li $t0, 44302
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	sw $t0, -1236($fp)
	li $t0, 40354
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	sw $t0, -1248($fp)
	li $t0, 30345
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	sw $t0, -1260($fp)
	addi $t0, $fp, -36
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
	lw $t0, -1280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1284($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -1304($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -1324($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -1344($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -1364($fp)
	li $t0, 5
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
	addi $t0, $fp, -36
	sw $t0, -1384($fp)
	li $t0, 6
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
	addi $t0, $fp, -36
	sw $t0, -1404($fp)
	li $t0, 7
	sw $t0, -1408($fp)
	li $t0, 4
	lw $t1, -1408($fp)
	mul $t0, $t0, $t1
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	lw $t1, -1404($fp)
	add $t0, $t0, $t1
	sw $t0, -1416($fp)
	lw $t0, -1416($fp)
	lw $t1, 0($t0)
	sw $t1, -1420($fp)
	lw $t0, -1420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -1424($fp)
	li $t0, 0
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
	lw $t0, -1440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -1444($fp)
	li $t0, 1
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
	lw $t0, -1460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -1464($fp)
	li $t0, 2
	sw $t0, -1468($fp)
	li $t0, 4
	lw $t1, -1468($fp)
	mul $t0, $t0, $t1
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	lw $t1, -1464($fp)
	add $t0, $t0, $t1
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	lw $t1, 0($t0)
	sw $t1, -1480($fp)
	lw $t0, -1480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -1484($fp)
	li $t0, 3
	sw $t0, -1488($fp)
	li $t0, 4
	lw $t1, -1488($fp)
	mul $t0, $t0, $t1
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	lw $t1, -1484($fp)
	add $t0, $t0, $t1
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	lw $t1, 0($t0)
	sw $t1, -1500($fp)
	lw $t0, -1500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -428($fp)
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -440($fp)
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -452($fp)
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -464($fp)
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -476($fp)
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -1524($fp)
	li $t0, 0
	sw $t0, -1528($fp)
	li $t0, 4
	lw $t1, -1528($fp)
	mul $t0, $t0, $t1
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	lw $t1, -1524($fp)
	add $t0, $t0, $t1
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	lw $t1, 0($t0)
	sw $t1, -1540($fp)
	lw $t0, -1540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -1544($fp)
	li $t0, 1
	sw $t0, -1548($fp)
	li $t0, 4
	lw $t1, -1548($fp)
	mul $t0, $t0, $t1
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	lw $t1, -1544($fp)
	add $t0, $t0, $t1
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	lw $t1, 0($t0)
	sw $t1, -1560($fp)
	lw $t0, -1560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -1564($fp)
	li $t0, 2
	sw $t0, -1568($fp)
	li $t0, 4
	lw $t1, -1568($fp)
	mul $t0, $t0, $t1
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	lw $t1, -1564($fp)
	add $t0, $t0, $t1
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	lw $t1, 0($t0)
	sw $t1, -1580($fp)
	lw $t0, -1580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -1584($fp)
	li $t0, 3
	sw $t0, -1588($fp)
	li $t0, 4
	lw $t1, -1588($fp)
	mul $t0, $t0, $t1
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	lw $t1, -1584($fp)
	add $t0, $t0, $t1
	sw $t0, -1596($fp)
	lw $t0, -1596($fp)
	lw $t1, 0($t0)
	sw $t1, -1600($fp)
	lw $t0, -1600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -1604($fp)
	li $t0, 4
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
	lw $t0, -1620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -1624($fp)
	li $t0, 5
	sw $t0, -1628($fp)
	li $t0, 4
	lw $t1, -1628($fp)
	mul $t0, $t0, $t1
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	lw $t1, -1624($fp)
	add $t0, $t0, $t1
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	lw $t1, 0($t0)
	sw $t1, -1640($fp)
	lw $t0, -1640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -1644($fp)
	li $t0, 6
	sw $t0, -1648($fp)
	li $t0, 4
	lw $t1, -1648($fp)
	mul $t0, $t0, $t1
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	lw $t1, -1644($fp)
	add $t0, $t0, $t1
	sw $t0, -1656($fp)
	lw $t0, -1656($fp)
	lw $t1, 0($t0)
	sw $t1, -1660($fp)
	lw $t0, -1660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -1664($fp)
	li $t0, 7
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
	lw $t0, -1680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -680($fp)
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -692($fp)
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -704($fp)
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -716($fp)
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -728($fp)
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -740($fp)
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -752($fp)
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -764($fp)
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -776($fp)
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -788($fp)
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -1724($fp)
	li $t0, 0
	sw $t0, -1728($fp)
	li $t0, 4
	lw $t1, -1728($fp)
	mul $t0, $t0, $t1
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	lw $t1, -1724($fp)
	add $t0, $t0, $t1
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	lw $t1, 0($t0)
	sw $t1, -1740($fp)
	lw $t0, -1740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -1744($fp)
	li $t0, 1
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
	lw $t0, -1760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -1764($fp)
	li $t0, 2
	sw $t0, -1768($fp)
	li $t0, 4
	lw $t1, -1768($fp)
	mul $t0, $t0, $t1
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	lw $t1, -1764($fp)
	add $t0, $t0, $t1
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	lw $t1, 0($t0)
	sw $t1, -1780($fp)
	lw $t0, -1780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -1784($fp)
	li $t0, 3
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
	lw $t0, -1800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -896($fp)
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -908($fp)
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -920($fp)
	sw $t0, -1812($fp)
	lw $t0, -1812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -932($fp)
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -944($fp)
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -956($fp)
	sw $t0, -1824($fp)
	lw $t0, -1824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -968($fp)
	sw $t0, -1828($fp)
	lw $t0, -1828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -980($fp)
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -992($fp)
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1004($fp)
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1016($fp)
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -1848($fp)
	li $t0, 0
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
	addi $t0, $fp, -116
	sw $t0, -1868($fp)
	li $t0, 1
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
	addi $t0, $fp, -116
	sw $t0, -1888($fp)
	li $t0, 2
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
	addi $t0, $fp, -116
	sw $t0, -1908($fp)
	li $t0, 3
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
	lw $t0, -1124($fp)
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -1932($fp)
	li $t0, 0
	sw $t0, -1936($fp)
	li $t0, 4
	lw $t1, -1936($fp)
	mul $t0, $t0, $t1
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	lw $t1, -1932($fp)
	add $t0, $t0, $t1
	sw $t0, -1944($fp)
	lw $t0, -1944($fp)
	lw $t1, 0($t0)
	sw $t1, -1948($fp)
	lw $t0, -1948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -1952($fp)
	li $t0, 1
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
	lw $t0, -1968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -1972($fp)
	li $t0, 2
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
	lw $t0, -1988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -1992($fp)
	li $t0, 3
	sw $t0, -1996($fp)
	li $t0, 4
	lw $t1, -1996($fp)
	mul $t0, $t0, $t1
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	lw $t1, -1992($fp)
	add $t0, $t0, $t1
	sw $t0, -2004($fp)
	lw $t0, -2004($fp)
	lw $t1, 0($t0)
	sw $t1, -2008($fp)
	lw $t0, -2008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1232($fp)
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1244($fp)
	sw $t0, -2016($fp)
	lw $t0, -2016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1256($fp)
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2024($fp)
	li $t0, 17771
	sw $t0, -2028($fp)
	lw $t0, -932($fp)
	sw $t0, -2032($fp)
	lw $t1, -2028($fp)
	lw $t2, -2032($fp)
	bgt $t1, $t2, label124
	j label123
label124:
	lw $t0, -956($fp)
	sw $t0, -2036($fp)
	lw $t1, -2036($fp)
	li $t2, 0
	bne $t1, $t2, label121
	j label123
label123:
	addi $t0, $fp, -84
	sw $t0, -2040($fp)
	li $t0, 7
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
	lw $t0, -428($fp)
	sw $t0, -2060($fp)
	lw $t1, -2056($fp)
	lw $t2, -2060($fp)
	ble $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -2024($fp)
label122:
	lw $ra, -4($fp)
	lw $v0, -2024($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -36
	sw $t0, -2064($fp)
	li $t0, 0
	sw $t0, -2068($fp)
	li $t0, 0
	sw $t0, -2072($fp)
	lw $t0, -788($fp)
	sw $t0, -2076($fp)
	lw $t1, -2076($fp)
	li $t2, 0
	bne $t1, $t2, label131
	j label130
label130:
	li $t0, 1
	sw $t0, -2072($fp)
label131:
	li $t0, 1391
	sw $t0, -2080($fp)
	li $t0, 26172
	sw $t0, -2084($fp)
	lw $t0, -2080($fp)
	lw $t1, -2084($fp)
	mul $t0, $t0, $t1
	sw $t0, -2088($fp)
	lw $t1, -2072($fp)
	lw $t2, -2088($fp)
	beq $t1, $t2, label128
	j label129
label128:
	li $t0, 1
	sw $t0, -2068($fp)
label129:
	li $t0, 4
	lw $t1, -2068($fp)
	mul $t0, $t0, $t1
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	lw $t1, -2064($fp)
	add $t0, $t0, $t1
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	lw $t1, 0($t0)
	sw $t1, -2100($fp)
	lw $t1, -2100($fp)
	li $t2, 0
	bne $t1, $t2, label125
	j label126
label125:
label132:
	li $t0, 25434
	sw $t0, -2104($fp)
	li $t0, 3406
	sw $t0, -2108($fp)
	li $t0, 0
	lw $t1, -2108($fp)
	sub $t0, $t0, $t1
	sw $t0, -2112($fp)
	addi $sp, $sp, -4
	lw $t0, -2112($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2116($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -2116($fp)
	sub $t0, $t0, $t1
	sw $t0, -2120($fp)
	lw $t0, -2104($fp)
	lw $t1, -2120($fp)
	sub $t0, $t0, $t1
	sw $t0, -2124($fp)
	lw $t1, -2124($fp)
	li $t2, 0
	bne $t1, $t2, label133
	j label134
label133:
	addi $t0, $fp, -116
	sw $t0, -2128($fp)
	li $t0, 3441
	sw $t0, -2132($fp)
	lw $t0, 4($fp)
	sw $t0, -2136($fp)
	lw $t0, -2132($fp)
	lw $t1, -2136($fp)
	mul $t0, $t0, $t1
	sw $t0, -2140($fp)
	li $t0, 4
	lw $t1, -2140($fp)
	mul $t0, $t0, $t1
	sw $t0, -2144($fp)
	lw $t0, -2144($fp)
	lw $t1, -2128($fp)
	add $t0, $t0, $t1
	sw $t0, -2148($fp)
	lw $t0, -2148($fp)
	lw $t1, 0($t0)
	sw $t1, -2152($fp)
	lw $t0, -2152($fp)
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -2156($fp)
	lw $t1, -2156($fp)
	li $t2, 0
	bne $t1, $t2, label135
	j label136
label135:
label138:
	li $t0, 0
	sw $t0, -2160($fp)
	li $t0, 42671
	sw $t0, -2164($fp)
	lw $t1, -2164($fp)
	li $t2, 0
	bne $t1, $t2, label141
	j label144
label144:
	lw $t0, -728($fp)
	sw $t0, -2168($fp)
	lw $t1, -2168($fp)
	li $t2, 0
	bne $t1, $t2, label141
	j label143
label143:
	li $t0, 38831
	sw $t0, -2172($fp)
	lw $t1, -2172($fp)
	li $t2, 0
	bne $t1, $t2, label142
	j label141
label141:
	li $t0, 1
	sw $t0, -2160($fp)
label142:
	lw $t0, -2160($fp)
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -2176($fp)
	lw $t1, -2176($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label140
label139:
label145:
	li $t0, 0
	sw $t0, -2180($fp)
	addi $t0, $fp, -52
	sw $t0, -2184($fp)
	lw $t0, -728($fp)
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
	lw $t1, -2200($fp)
	li $t2, 0
	bne $t1, $t2, label150
	j label149
label149:
	li $t0, 1
	sw $t0, -2180($fp)
label150:
	li $t0, 43727
	sw $t0, -2204($fp)
	addi $sp, $sp, -4
	lw $t0, -2204($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2208($fp)
	addi $sp, $sp, 8
	lw $t0, -2180($fp)
	lw $t1, -2208($fp)
	add $t0, $t0, $t1
	sw $t0, -2212($fp)
	lw $t1, -2212($fp)
	li $t2, 0
	bne $t1, $t2, label148
	j label147
label148:
	lw $t0, -1256($fp)
	sw $t0, -2216($fp)
	lw $t1, -2216($fp)
	li $t2, 0
	bne $t1, $t2, label146
	j label147
label146:
	lw $t0, -1004($fp)
	sw $t0, -2220($fp)
	lw $t0, -2220($fp)
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -2224($fp)
	addi $sp, $sp, -4
	lw $t0, -2224($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2228($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2232($fp)
	lw $t0, -440($fp)
	sw $t0, -2236($fp)
	lw $t1, -2236($fp)
	li $t2, 0
	bne $t1, $t2, label156
	j label155
label155:
	li $t0, 1
	sw $t0, -2232($fp)
label156:
	lw $t1, -2228($fp)
	lw $t2, -2232($fp)
	beq $t1, $t2, label151
	j label154
label154:
	addi $t0, $fp, -132
	sw $t0, -2240($fp)
	li $t0, 31318
	sw $t0, -2244($fp)
	lw $t0, -704($fp)
	sw $t0, -2248($fp)
	lw $t0, -2244($fp)
	lw $t1, -2248($fp)
	sub $t0, $t0, $t1
	sw $t0, -2252($fp)
	li $t0, 4
	lw $t1, -2252($fp)
	mul $t0, $t0, $t1
	sw $t0, -2256($fp)
	lw $t0, -2256($fp)
	lw $t1, -2240($fp)
	add $t0, $t0, $t1
	sw $t0, -2260($fp)
	lw $t0, -2260($fp)
	lw $t1, 0($t0)
	sw $t1, -2264($fp)
	lw $t1, -2264($fp)
	li $t2, 0
	bne $t1, $t2, label151
	j label152
label151:
	lw $t0, -428($fp)
	sw $t0, -2268($fp)
	addi $t0, $fp, -132
	sw $t0, -2272($fp)
	li $t0, 0
	sw $t0, -2276($fp)
	li $t0, 49200
	sw $t0, -2280($fp)
	lw $t1, -2280($fp)
	li $t2, 0
	bne $t1, $t2, label159
	j label158
label159:
	li $t0, 7418
	sw $t0, -2284($fp)
	lw $t1, -2284($fp)
	li $t2, 0
	bne $t1, $t2, label157
	j label158
label157:
	li $t0, 1
	sw $t0, -2276($fp)
label158:
	li $t0, 4
	lw $t1, -2276($fp)
	mul $t0, $t0, $t1
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	lw $t1, -2272($fp)
	add $t0, $t0, $t1
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	lw $t1, 0($t0)
	sw $t1, -2296($fp)
	lw $t0, -2268($fp)
	lw $t1, -2296($fp)
	mul $t0, $t0, $t1
	sw $t0, -2300($fp)
	li $t0, 24583
	sw $t0, -2304($fp)
	li $t0, 0
	lw $t1, -2304($fp)
	sub $t0, $t0, $t1
	sw $t0, -2308($fp)
	addi $sp, $sp, -4
	lw $t0, -2308($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2312($fp)
	addi $sp, $sp, 8
	lw $t0, -2312($fp)
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	sw $t0, -2316($fp)
	lw $t0, -2316($fp)
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -2320($fp)
	j label153
label152:
label160:
	lw $t0, -464($fp)
	sw $t0, -2324($fp)
	lw $t0, -776($fp)
	sw $t0, -2328($fp)
	lw $t0, -2324($fp)
	lw $t1, -2328($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2332($fp)
	addi $sp, $sp, -4
	lw $t0, -2332($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2336($fp)
	addi $sp, $sp, 8
	li $t0, 60010
	sw $t0, -2340($fp)
	li $t0, 42625
	sw $t0, -2344($fp)
	lw $t0, -2340($fp)
	lw $t1, -2344($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2348($fp)
	li $t0, 7242
	sw $t0, -2352($fp)
	lw $t0, -2348($fp)
	lw $t1, -2352($fp)
	sub $t0, $t0, $t1
	sw $t0, -2356($fp)
	lw $t1, -2336($fp)
	lw $t2, -2356($fp)
	ble $t1, $t2, label161
	j label163
label163:
	lw $t0, -704($fp)
	sw $t0, -2360($fp)
	li $t0, 24048
	sw $t0, -2364($fp)
	lw $t0, -2360($fp)
	lw $t1, -2364($fp)
	mul $t0, $t0, $t1
	sw $t0, -2368($fp)
	li $t0, 0
	lw $t1, -2368($fp)
	sub $t0, $t0, $t1
	sw $t0, -2372($fp)
	lw $t1, -2372($fp)
	li $t2, 0
	bne $t1, $t2, label161
	j label162
label161:
	li $t0, 0
	sw $t0, -2376($fp)
	li $t0, 24941
	sw $t0, -2380($fp)
	lw $t0, -980($fp)
	sw $t0, -2384($fp)
	lw $t0, -2380($fp)
	lw $t1, -2384($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2388($fp)
	addi $t0, $fp, -100
	sw $t0, -2392($fp)
	li $t0, 1
	sw $t0, -2396($fp)
	li $t0, 4
	lw $t1, -2396($fp)
	mul $t0, $t0, $t1
	sw $t0, -2400($fp)
	lw $t0, -2400($fp)
	lw $t1, -2392($fp)
	add $t0, $t0, $t1
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	lw $t1, 0($t0)
	sw $t1, -2408($fp)
	lw $t0, -2388($fp)
	lw $t1, -2408($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2412($fp)
	lw $t1, -2412($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label165
label166:
	addi $t0, $fp, -84
	sw $t0, -2416($fp)
	li $t0, 0
	sw $t0, -2420($fp)
	li $t0, 18035
	sw $t0, -2424($fp)
	lw $t0, -680($fp)
	sw $t0, -2428($fp)
	lw $t1, -2424($fp)
	lw $t2, -2428($fp)
	bne $t1, $t2, label167
	j label168
label167:
	li $t0, 1
	sw $t0, -2420($fp)
label168:
	addi $sp, $sp, -4
	lw $t0, -2420($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2432($fp)
	addi $sp, $sp, 8
	li $t0, 4
	lw $t1, -2432($fp)
	mul $t0, $t0, $t1
	sw $t0, -2436($fp)
	lw $t0, -2436($fp)
	lw $t1, -2416($fp)
	add $t0, $t0, $t1
	sw $t0, -2440($fp)
	lw $t0, -2440($fp)
	lw $t1, 0($t0)
	sw $t1, -2444($fp)
	lw $t1, -2444($fp)
	li $t2, 0
	bne $t1, $t2, label164
	j label165
label164:
	li $t0, 1
	sw $t0, -2376($fp)
label165:
	j label160
label162:
label153:
	j label145
label147:
	j label138
label140:
	j label137
label136:
label169:
	lw $t0, -680($fp)
	sw $t0, -2448($fp)
	lw $t0, 4($fp)
	sw $t0, -2452($fp)
	li $t0, 0
	lw $t1, -2452($fp)
	sub $t0, $t0, $t1
	sw $t0, -2456($fp)
	lw $t0, -2448($fp)
	lw $t1, -2456($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2460($fp)
	lw $t1, -2460($fp)
	li $t2, 0
	bne $t1, $t2, label170
	j label171
label170:
	addi $t0, $fp, -132
	sw $t0, -2464($fp)
	li $t0, 0
	sw $t0, -2468($fp)
	lw $t0, -1124($fp)
	sw $t0, -2472($fp)
	lw $t0, -992($fp)
	sw $t0, -2476($fp)
	lw $t1, -2472($fp)
	lw $t2, -2476($fp)
	beq $t1, $t2, label175
	j label176
label175:
	li $t0, 1
	sw $t0, -2468($fp)
label176:
	li $t0, 4
	lw $t1, -2468($fp)
	mul $t0, $t0, $t1
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	lw $t1, -2464($fp)
	add $t0, $t0, $t1
	sw $t0, -2484($fp)
	lw $t0, -2484($fp)
	lw $t1, 0($t0)
	sw $t1, -2488($fp)
	addi $t0, $fp, -132
	sw $t0, -2492($fp)
	li $t0, 1
	sw $t0, -2496($fp)
	li $t0, 4
	lw $t1, -2496($fp)
	mul $t0, $t0, $t1
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	lw $t1, -2492($fp)
	add $t0, $t0, $t1
	sw $t0, -2504($fp)
	lw $t0, -2504($fp)
	lw $t1, 0($t0)
	sw $t1, -2508($fp)
	li $t0, 39792
	sw $t0, -2512($fp)
	lw $t0, -2508($fp)
	lw $t1, -2512($fp)
	sub $t0, $t0, $t1
	sw $t0, -2516($fp)
	lw $t1, -2488($fp)
	lw $t2, -2516($fp)
	bge $t1, $t2, label172
	j label173
label172:
	li $t0, 0
	sw $t0, -2520($fp)
	li $t0, 17574
	sw $t0, -2524($fp)
	li $t0, 0
	sw $t0, -2528($fp)
	lw $t0, -944($fp)
	sw $t0, -2532($fp)
	li $t0, 0
	sw $t0, -2536($fp)
	li $t0, 9699
	sw $t0, -2540($fp)
	lw $t1, -2540($fp)
	li $t2, 0
	bne $t1, $t2, label182
	j label181
label181:
	li $t0, 1
	sw $t0, -2536($fp)
label182:
	lw $t1, -2532($fp)
	lw $t2, -2536($fp)
	ble $t1, $t2, label179
	j label180
label179:
	li $t0, 1
	sw $t0, -2528($fp)
label180:
	lw $t1, -2524($fp)
	lw $t2, -2528($fp)
	bne $t1, $t2, label177
	j label178
label177:
	li $t0, 1
	sw $t0, -2520($fp)
label178:
	lw $t0, -1004($fp)
	sw $t0, -2544($fp)
	j label174
label173:
	li $t0, 18558
	sw $t0, -2548($fp)
	addi $sp, $sp, -4
	lw $t0, -2548($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2552($fp)
	addi $sp, $sp, 8
	li $t0, 57928
	sw $t0, -2556($fp)
	li $t0, 0
	lw $t1, -2556($fp)
	sub $t0, $t0, $t1
	sw $t0, -2560($fp)
	li $t0, 40044
	sw $t0, -2564($fp)
	lw $t0, -2560($fp)
	lw $t1, -2564($fp)
	sub $t0, $t0, $t1
	sw $t0, -2568($fp)
	addi $sp, $sp, -4
	lw $t0, -2568($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2572($fp)
	addi $sp, $sp, 8
	lw $t0, -2552($fp)
	lw $t1, -2572($fp)
	mul $t0, $t0, $t1
	sw $t0, -2576($fp)
	addi $t0, $fp, -100
	sw $t0, -2580($fp)
	li $t0, 1
	sw $t0, -2584($fp)
	li $t0, 4
	lw $t1, -2584($fp)
	mul $t0, $t0, $t1
	sw $t0, -2588($fp)
	lw $t0, -2588($fp)
	lw $t1, -2580($fp)
	add $t0, $t0, $t1
	sw $t0, -2592($fp)
	lw $t0, -2592($fp)
	lw $t1, 0($t0)
	sw $t1, -2596($fp)
	lw $t0, -2576($fp)
	lw $t1, -2596($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2600($fp)
	lw $ra, -4($fp)
	lw $v0, -2600($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label174:
	j label169
label171:
label137:
	j label132
label134:
	j label127
label126:
	li $t0, 55939
	sw $t0, -2636($fp)
	addi $t0, $fp, -2632
	sw $t0, -2640($fp)
	li $t0, 0
	sw $t0, -2644($fp)
	lw $t0, -2644($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2648($fp)
	lw $t0, -2640($fp)
	lw $t1, -2648($fp)
	add $t0, $t0, $t1
	sw $t0, -2652($fp)
	lw $t0, -2636($fp)
	lw $t1, -2652($fp)
	sw $t0, 0($t1)
	lw $t0, -2652($fp)
	lw $t1, 0($t0)
	sw $t1, -2656($fp)
	li $t0, 37721
	sw $t0, -2660($fp)
	addi $t0, $fp, -2632
	sw $t0, -2664($fp)
	li $t0, 1
	sw $t0, -2668($fp)
	lw $t0, -2668($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2672($fp)
	lw $t0, -2664($fp)
	lw $t1, -2672($fp)
	add $t0, $t0, $t1
	sw $t0, -2676($fp)
	lw $t0, -2660($fp)
	lw $t1, -2676($fp)
	sw $t0, 0($t1)
	lw $t0, -2676($fp)
	lw $t1, 0($t0)
	sw $t1, -2680($fp)
	li $t0, 37449
	sw $t0, -2684($fp)
	addi $t0, $fp, -2632
	sw $t0, -2688($fp)
	li $t0, 2
	sw $t0, -2692($fp)
	lw $t0, -2692($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2696($fp)
	lw $t0, -2688($fp)
	lw $t1, -2696($fp)
	add $t0, $t0, $t1
	sw $t0, -2700($fp)
	lw $t0, -2684($fp)
	lw $t1, -2700($fp)
	sw $t0, 0($t1)
	lw $t0, -2700($fp)
	lw $t1, 0($t0)
	sw $t1, -2704($fp)
	li $t0, 15838
	sw $t0, -2708($fp)
	addi $t0, $fp, -2632
	sw $t0, -2712($fp)
	li $t0, 3
	sw $t0, -2716($fp)
	lw $t0, -2716($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2720($fp)
	lw $t0, -2712($fp)
	lw $t1, -2720($fp)
	add $t0, $t0, $t1
	sw $t0, -2724($fp)
	lw $t0, -2708($fp)
	lw $t1, -2724($fp)
	sw $t0, 0($t1)
	lw $t0, -2724($fp)
	lw $t1, 0($t0)
	sw $t1, -2728($fp)
	li $t0, 41127
	sw $t0, -2732($fp)
	addi $t0, $fp, -2632
	sw $t0, -2736($fp)
	li $t0, 4
	sw $t0, -2740($fp)
	lw $t0, -2740($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2744($fp)
	lw $t0, -2736($fp)
	lw $t1, -2744($fp)
	add $t0, $t0, $t1
	sw $t0, -2748($fp)
	lw $t0, -2732($fp)
	lw $t1, -2748($fp)
	sw $t0, 0($t1)
	lw $t0, -2748($fp)
	lw $t1, 0($t0)
	sw $t1, -2752($fp)
	li $t0, 40891
	sw $t0, -2756($fp)
	addi $t0, $fp, -2632
	sw $t0, -2760($fp)
	li $t0, 5
	sw $t0, -2764($fp)
	lw $t0, -2764($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2768($fp)
	lw $t0, -2760($fp)
	lw $t1, -2768($fp)
	add $t0, $t0, $t1
	sw $t0, -2772($fp)
	lw $t0, -2756($fp)
	lw $t1, -2772($fp)
	sw $t0, 0($t1)
	lw $t0, -2772($fp)
	lw $t1, 0($t0)
	sw $t1, -2776($fp)
	li $t0, 58509
	sw $t0, -2780($fp)
	addi $t0, $fp, -2632
	sw $t0, -2784($fp)
	li $t0, 6
	sw $t0, -2788($fp)
	lw $t0, -2788($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2792($fp)
	lw $t0, -2784($fp)
	lw $t1, -2792($fp)
	add $t0, $t0, $t1
	sw $t0, -2796($fp)
	lw $t0, -2780($fp)
	lw $t1, -2796($fp)
	sw $t0, 0($t1)
	lw $t0, -2796($fp)
	lw $t1, 0($t0)
	sw $t1, -2800($fp)
	li $t0, 14422
	sw $t0, -2804($fp)
	addi $t0, $fp, -2632
	sw $t0, -2808($fp)
	li $t0, 7
	sw $t0, -2812($fp)
	lw $t0, -2812($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2816($fp)
	lw $t0, -2808($fp)
	lw $t1, -2816($fp)
	add $t0, $t0, $t1
	sw $t0, -2820($fp)
	lw $t0, -2804($fp)
	lw $t1, -2820($fp)
	sw $t0, 0($t1)
	lw $t0, -2820($fp)
	lw $t1, 0($t0)
	sw $t1, -2824($fp)
	li $t0, 0
	sw $t0, -2828($fp)
	li $t0, 0
	sw $t0, -2832($fp)
	lw $t0, -1016($fp)
	sw $t0, -2836($fp)
	li $t0, 19082
	sw $t0, -2840($fp)
	lw $t1, -2836($fp)
	lw $t2, -2840($fp)
	beq $t1, $t2, label185
	j label186
label185:
	li $t0, 1
	sw $t0, -2832($fp)
label186:
	li $t0, 0
	sw $t0, -2844($fp)
	li $t0, 24292
	sw $t0, -2848($fp)
	li $t0, 63622
	sw $t0, -2852($fp)
	lw $t0, -2848($fp)
	lw $t1, -2852($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2856($fp)
	addi $sp, $sp, -4
	lw $t0, -2856($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2860($fp)
	addi $sp, $sp, 8
	lw $t1, -2860($fp)
	li $t2, 0
	bne $t1, $t2, label188
	j label187
label187:
	li $t0, 1
	sw $t0, -2844($fp)
label188:
	lw $t1, -2832($fp)
	lw $t2, -2844($fp)
	beq $t1, $t2, label183
	j label184
label183:
	li $t0, 1
	sw $t0, -2828($fp)
label184:
	li $t0, 26500
	sw $t0, -2864($fp)
	lw $t0, -2864($fp)
	sw $t0, -2868($fp)
	lw $t0, -2868($fp)
	sw $t0, -2872($fp)
	li $t0, 0
	sw $t0, -2876($fp)
	lw $t0, -1256($fp)
	sw $t0, -2880($fp)
	li $t0, 48875
	sw $t0, -2884($fp)
	lw $t0, -2880($fp)
	lw $t1, -2884($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2888($fp)
	li $t0, 0
	lw $t1, -2888($fp)
	sub $t0, $t0, $t1
	sw $t0, -2892($fp)
	lw $t0, -704($fp)
	sw $t0, -2896($fp)
	li $t0, 0
	lw $t1, -2896($fp)
	sub $t0, $t0, $t1
	sw $t0, -2900($fp)
	lw $t1, -2892($fp)
	lw $t2, -2900($fp)
	beq $t1, $t2, label192
	j label190
label192:
	li $t0, 58096
	sw $t0, -2904($fp)
	li $t0, 3589
	sw $t0, -2908($fp)
	lw $t0, -2904($fp)
	lw $t1, -2908($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2912($fp)
	lw $t0, -428($fp)
	sw $t0, -2916($fp)
	lw $t1, -2912($fp)
	lw $t2, -2916($fp)
	beq $t1, $t2, label191
	j label190
label191:
	lw $t0, -764($fp)
	sw $t0, -2920($fp)
	li $t0, 0
	lw $t1, -2920($fp)
	sub $t0, $t0, $t1
	sw $t0, -2924($fp)
	li $t0, 56118
	sw $t0, -2928($fp)
	lw $t0, -2924($fp)
	lw $t1, -2928($fp)
	sub $t0, $t0, $t1
	sw $t0, -2932($fp)
	lw $t1, -2932($fp)
	li $t2, 0
	bne $t1, $t2, label189
	j label190
label189:
	li $t0, 1
	sw $t0, -2876($fp)
label190:
	addi $t0, $fp, -116
	sw $t0, -2936($fp)
	li $t0, 0
	sw $t0, -2940($fp)
	li $t0, 0
	sw $t0, -2944($fp)
	li $t0, 16609
	sw $t0, -2948($fp)
	lw $t1, -2948($fp)
	li $t2, 0
	bne $t1, $t2, label196
	j label195
label195:
	li $t0, 1
	sw $t0, -2944($fp)
label196:
	lw $t0, -2868($fp)
	sw $t0, -2952($fp)
	lw $t1, -2944($fp)
	lw $t2, -2952($fp)
	bgt $t1, $t2, label193
	j label194
label193:
	li $t0, 1
	sw $t0, -2940($fp)
label194:
	li $t0, 4
	lw $t1, -2940($fp)
	mul $t0, $t0, $t1
	sw $t0, -2956($fp)
	lw $t0, -2956($fp)
	lw $t1, -2936($fp)
	add $t0, $t0, $t1
	sw $t0, -2960($fp)
	lw $t0, -2960($fp)
	lw $t1, 0($t0)
	sw $t1, -2964($fp)
	li $t0, 0
	sw $t0, -2968($fp)
	li $t0, 28531
	sw $t0, -2972($fp)
	lw $t1, -2972($fp)
	li $t2, 0
	bne $t1, $t2, label198
	j label197
label197:
	li $t0, 1
	sw $t0, -2968($fp)
label198:
	lw $t0, -776($fp)
	sw $t0, -2976($fp)
	lw $t0, -2968($fp)
	lw $t1, -2976($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2980($fp)
	li $t0, 26195
	sw $t0, -2984($fp)
	lw $t0, -2980($fp)
	lw $t1, -2984($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2988($fp)
	lw $t0, -2964($fp)
	lw $t1, -2988($fp)
	sub $t0, $t0, $t1
	sw $t0, -2992($fp)
	li $t0, 46566
	sw $t0, -3020($fp)
	addi $t0, $fp, -3016
	sw $t0, -3024($fp)
	li $t0, 0
	sw $t0, -3028($fp)
	lw $t0, -3028($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3032($fp)
	lw $t0, -3024($fp)
	lw $t1, -3032($fp)
	add $t0, $t0, $t1
	sw $t0, -3036($fp)
	lw $t0, -3020($fp)
	lw $t1, -3036($fp)
	sw $t0, 0($t1)
	lw $t0, -3036($fp)
	lw $t1, 0($t0)
	sw $t1, -3040($fp)
	li $t0, 29733
	sw $t0, -3044($fp)
	addi $t0, $fp, -3016
	sw $t0, -3048($fp)
	li $t0, 1
	sw $t0, -3052($fp)
	lw $t0, -3052($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3056($fp)
	lw $t0, -3048($fp)
	lw $t1, -3056($fp)
	add $t0, $t0, $t1
	sw $t0, -3060($fp)
	lw $t0, -3044($fp)
	lw $t1, -3060($fp)
	sw $t0, 0($t1)
	lw $t0, -3060($fp)
	lw $t1, 0($t0)
	sw $t1, -3064($fp)
	li $t0, 12587
	sw $t0, -3068($fp)
	addi $t0, $fp, -3016
	sw $t0, -3072($fp)
	li $t0, 2
	sw $t0, -3076($fp)
	lw $t0, -3076($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3080($fp)
	lw $t0, -3072($fp)
	lw $t1, -3080($fp)
	add $t0, $t0, $t1
	sw $t0, -3084($fp)
	lw $t0, -3068($fp)
	lw $t1, -3084($fp)
	sw $t0, 0($t1)
	lw $t0, -3084($fp)
	lw $t1, 0($t0)
	sw $t1, -3088($fp)
	li $t0, 20823
	sw $t0, -3092($fp)
	addi $t0, $fp, -3016
	sw $t0, -3096($fp)
	li $t0, 3
	sw $t0, -3100($fp)
	lw $t0, -3100($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3104($fp)
	lw $t0, -3096($fp)
	lw $t1, -3104($fp)
	add $t0, $t0, $t1
	sw $t0, -3108($fp)
	lw $t0, -3092($fp)
	lw $t1, -3108($fp)
	sw $t0, 0($t1)
	lw $t0, -3108($fp)
	lw $t1, 0($t0)
	sw $t1, -3112($fp)
	li $t0, 47307
	sw $t0, -3116($fp)
	addi $t0, $fp, -3016
	sw $t0, -3120($fp)
	li $t0, 4
	sw $t0, -3124($fp)
	lw $t0, -3124($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3128($fp)
	lw $t0, -3120($fp)
	lw $t1, -3128($fp)
	add $t0, $t0, $t1
	sw $t0, -3132($fp)
	lw $t0, -3116($fp)
	lw $t1, -3132($fp)
	sw $t0, 0($t1)
	lw $t0, -3132($fp)
	lw $t1, 0($t0)
	sw $t1, -3136($fp)
	li $t0, 22286
	sw $t0, -3140($fp)
	addi $t0, $fp, -3016
	sw $t0, -3144($fp)
	li $t0, 5
	sw $t0, -3148($fp)
	lw $t0, -3148($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3152($fp)
	lw $t0, -3144($fp)
	lw $t1, -3152($fp)
	add $t0, $t0, $t1
	sw $t0, -3156($fp)
	lw $t0, -3140($fp)
	lw $t1, -3156($fp)
	sw $t0, 0($t1)
	lw $t0, -3156($fp)
	lw $t1, 0($t0)
	sw $t1, -3160($fp)
	li $t0, 39381
	sw $t0, -3164($fp)
	lw $t0, -3164($fp)
	sw $t0, -3168($fp)
	lw $t0, -3168($fp)
	sw $t0, -3172($fp)
	li $t0, 39699
	sw $t0, -3176($fp)
	lw $t0, -3176($fp)
	sw $t0, -3180($fp)
	lw $t0, -3180($fp)
	sw $t0, -3184($fp)
	li $t0, 62330
	sw $t0, -3188($fp)
	lw $t0, -3188($fp)
	sw $t0, -3192($fp)
	lw $t0, -3192($fp)
	sw $t0, -3196($fp)
label199:
	li $t0, 0
	sw $t0, -3200($fp)
	li $t0, 10175
	sw $t0, -3204($fp)
	addi $sp, $sp, -4
	lw $t0, -3204($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3208($fp)
	addi $sp, $sp, 8
	lw $t0, -980($fp)
	sw $t0, -3212($fp)
	lw $t0, -3208($fp)
	lw $t1, -3212($fp)
	mul $t0, $t0, $t1
	sw $t0, -3216($fp)
	addi $t0, $fp, -116
	sw $t0, -3220($fp)
	lw $t0, -1232($fp)
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
	lw $t0, -3216($fp)
	lw $t1, -3236($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3240($fp)
	lw $t0, -716($fp)
	sw $t0, -3244($fp)
	lw $t0, -3244($fp)
	sw $t0, -3168($fp)
	lw $t0, -3168($fp)
	sw $t0, -3248($fp)
	addi $sp, $sp, -4
	lw $t0, -3248($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3252($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -3252($fp)
	sub $t0, $t0, $t1
	sw $t0, -3256($fp)
	addi $sp, $sp, -4
	lw $t0, -3256($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3260($fp)
	addi $sp, $sp, 8
	lw $t1, -3240($fp)
	lw $t2, -3260($fp)
	bne $t1, $t2, label202
	j label203
label202:
	li $t0, 1
	sw $t0, -3200($fp)
label203:
	li $t0, 50976
	sw $t0, -3264($fp)
	lw $t0, -728($fp)
	sw $t0, -3268($fp)
	lw $t0, -3268($fp)
	sw $t0, -3180($fp)
	lw $t0, -3180($fp)
	sw $t0, -3272($fp)
	addi $sp, $sp, -4
	lw $t0, -3272($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3276($fp)
	addi $sp, $sp, 8
	lw $t0, -3264($fp)
	lw $t1, -3276($fp)
	add $t0, $t0, $t1
	sw $t0, -3280($fp)
	lw $t1, -3200($fp)
	lw $t2, -3280($fp)
	beq $t1, $t2, label200
	j label201
label200:
	li $t0, 0
	sw $t0, -3284($fp)
	lw $t0, -428($fp)
	sw $t0, -3288($fp)
	lw $t0, -3192($fp)
	sw $t0, -3292($fp)
	lw $t1, -3288($fp)
	lw $t2, -3292($fp)
	bne $t1, $t2, label204
	j label205
label204:
	li $t0, 1
	sw $t0, -3284($fp)
label205:
	addi $sp, $sp, -4
	lw $t0, -3284($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3296($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -3296($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3300($fp)
	addi $sp, $sp, 8
	j label199
label201:
	li $t0, 0
	sw $t0, -3304($fp)
	li $t0, 0
	sw $t0, -3308($fp)
	addi $t0, $fp, -100
	sw $t0, -3312($fp)
	lw $t0, -692($fp)
	sw $t0, -3316($fp)
	lw $t0, -3316($fp)
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -3320($fp)
	li $t0, 4
	lw $t1, -3320($fp)
	mul $t0, $t0, $t1
	sw $t0, -3324($fp)
	lw $t0, -3324($fp)
	lw $t1, -3312($fp)
	add $t0, $t0, $t1
	sw $t0, -3328($fp)
	lw $t0, -3328($fp)
	lw $t1, 0($t0)
	sw $t1, -3332($fp)
	lw $t0, -1232($fp)
	sw $t0, -3336($fp)
	lw $t1, -3332($fp)
	lw $t2, -3336($fp)
	ble $t1, $t2, label208
	j label209
label208:
	li $t0, 1
	sw $t0, -3308($fp)
label209:
	li $t0, 52734
	sw $t0, -3340($fp)
	lw $t1, -3308($fp)
	lw $t2, -3340($fp)
	beq $t1, $t2, label206
	j label207
label206:
	li $t0, 1
	sw $t0, -3304($fp)
label207:
	addi $t0, $fp, -2632
	sw $t0, -3344($fp)
	li $t0, 47896
	sw $t0, -3348($fp)
	lw $t0, -944($fp)
	sw $t0, -3352($fp)
	lw $t0, -3348($fp)
	lw $t1, -3352($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3356($fp)
	li $t0, 0
	lw $t1, -3356($fp)
	sub $t0, $t0, $t1
	sw $t0, -3360($fp)
	li $t0, 4
	lw $t1, -3360($fp)
	mul $t0, $t0, $t1
	sw $t0, -3364($fp)
	lw $t0, -3364($fp)
	lw $t1, -3344($fp)
	add $t0, $t0, $t1
	sw $t0, -3368($fp)
	lw $t0, -3368($fp)
	lw $t1, 0($t0)
	sw $t1, -3372($fp)
	addi $t0, $fp, -3016
	sw $t0, -3376($fp)
	li $t0, 0
	sw $t0, -3380($fp)
	li $t0, 0
	sw $t0, -3384($fp)
	li $t0, 22889
	sw $t0, -3388($fp)
	li $t0, 3036
	sw $t0, -3392($fp)
	lw $t1, -3388($fp)
	lw $t2, -3392($fp)
	bge $t1, $t2, label212
	j label213
label212:
	li $t0, 1
	sw $t0, -3384($fp)
label213:
	li $t0, 23487
	sw $t0, -3396($fp)
	lw $t1, -3384($fp)
	lw $t2, -3396($fp)
	ble $t1, $t2, label210
	j label211
label210:
	li $t0, 1
	sw $t0, -3380($fp)
label211:
	addi $sp, $sp, -4
	lw $t0, -3380($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3400($fp)
	addi $sp, $sp, 8
	li $t0, 4
	lw $t1, -3400($fp)
	mul $t0, $t0, $t1
	sw $t0, -3404($fp)
	lw $t0, -3404($fp)
	lw $t1, -3376($fp)
	add $t0, $t0, $t1
	sw $t0, -3408($fp)
	lw $t0, -3408($fp)
	lw $t1, 0($t0)
	sw $t1, -3412($fp)
	lw $t0, -3372($fp)
	lw $t1, -3412($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3416($fp)
	lw $t0, -704($fp)
	sw $t0, -3420($fp)
	li $t0, 0
	sw $t0, -3424($fp)
	addi $t0, $fp, -100
	sw $t0, -3428($fp)
	lw $t0, -452($fp)
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
	lw $t1, -3444($fp)
	li $t2, 0
	bne $t1, $t2, label219
	j label218
label218:
	li $t0, 1
	sw $t0, -3424($fp)
label219:
	lw $t0, -3420($fp)
	lw $t1, -3424($fp)
	mul $t0, $t0, $t1
	sw $t0, -3448($fp)
	lw $t1, -3448($fp)
	li $t2, 0
	bne $t1, $t2, label214
	j label217
label217:
	addi $t0, $fp, -100
	sw $t0, -3452($fp)
	li $t0, 1
	sw $t0, -3456($fp)
	li $t0, 4
	lw $t1, -3456($fp)
	mul $t0, $t0, $t1
	sw $t0, -3460($fp)
	lw $t0, -3460($fp)
	lw $t1, -3452($fp)
	add $t0, $t0, $t1
	sw $t0, -3464($fp)
	lw $t0, -3464($fp)
	lw $t1, 0($t0)
	sw $t1, -3468($fp)
	li $t0, 37910
	sw $t0, -3472($fp)
	addi $sp, $sp, -4
	lw $t0, -3472($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3476($fp)
	addi $sp, $sp, 8
	lw $t0, -3468($fp)
	lw $t1, -3476($fp)
	add $t0, $t0, $t1
	sw $t0, -3480($fp)
	lw $t1, -3480($fp)
	li $t2, 0
	bne $t1, $t2, label214
	j label215
label214:
	li $t0, 17327
	sw $t0, -3484($fp)
	lw $t0, -3484($fp)
	sw $t0, -3488($fp)
	lw $t0, -3488($fp)
	sw $t0, -3492($fp)
	li $t0, 0
	sw $t0, -3496($fp)
	lw $t0, -464($fp)
	sw $t0, -3500($fp)
	lw $t0, -1256($fp)
	sw $t0, -3504($fp)
	lw $t0, -3500($fp)
	lw $t1, -3504($fp)
	mul $t0, $t0, $t1
	sw $t0, -3508($fp)
	lw $t0, -3488($fp)
	sw $t0, -3512($fp)
	li $t0, 20301
	sw $t0, -3516($fp)
	lw $t0, -3512($fp)
	lw $t1, -3516($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3520($fp)
	lw $t1, -3508($fp)
	lw $t2, -3520($fp)
	blt $t1, $t2, label220
	j label222
label222:
	lw $t0, -476($fp)
	sw $t0, -3524($fp)
	li $t0, 35996
	sw $t0, -3528($fp)
	lw $t0, -3524($fp)
	lw $t1, -3528($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3532($fp)
	addi $t0, $fp, -84
	sw $t0, -3536($fp)
	lw $t0, 4($fp)
	sw $t0, -3540($fp)
	li $t0, 4
	lw $t1, -3540($fp)
	mul $t0, $t0, $t1
	sw $t0, -3544($fp)
	lw $t0, -3544($fp)
	lw $t1, -3536($fp)
	add $t0, $t0, $t1
	sw $t0, -3548($fp)
	lw $t0, -3548($fp)
	lw $t1, 0($t0)
	sw $t1, -3552($fp)
	lw $t0, -3532($fp)
	lw $t1, -3552($fp)
	mul $t0, $t0, $t1
	sw $t0, -3556($fp)
	li $t0, 0
	lw $t1, -3556($fp)
	sub $t0, $t0, $t1
	sw $t0, -3560($fp)
	lw $t1, -3560($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label221
label220:
	li $t0, 1
	sw $t0, -3496($fp)
label221:
	lw $t0, -680($fp)
	sw $t0, -3564($fp)
	lw $t0, -3564($fp)
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -3568($fp)
	addi $sp, $sp, -4
	lw $t0, -3568($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3572($fp)
	addi $sp, $sp, 8
	lw $t0, -1232($fp)
	sw $t0, -3576($fp)
	lw $t0, -3572($fp)
	lw $t1, -3576($fp)
	mul $t0, $t0, $t1
	sw $t0, -3580($fp)
	li $t0, 0
	sw $t0, -3584($fp)
	lw $t0, -452($fp)
	sw $t0, -3588($fp)
	lw $t1, -3588($fp)
	li $t2, 0
	bne $t1, $t2, label224
	j label223
label223:
	li $t0, 1
	sw $t0, -3584($fp)
label224:
	lw $t0, -3580($fp)
	lw $t1, -3584($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3592($fp)
	lw $t0, -3592($fp)
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	sw $t0, -3596($fp)
	li $t0, 0
	sw $t0, -3600($fp)
	li $t0, 43827
	sw $t0, -3604($fp)
	lw $t0, -752($fp)
	sw $t0, -3608($fp)
	lw $t0, -3604($fp)
	lw $t1, -3608($fp)
	mul $t0, $t0, $t1
	sw $t0, -3612($fp)
	lw $t0, -476($fp)
	sw $t0, -3616($fp)
	lw $t0, -3612($fp)
	lw $t1, -3616($fp)
	mul $t0, $t0, $t1
	sw $t0, -3620($fp)
	addi $sp, $sp, -4
	lw $t0, -3620($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3624($fp)
	addi $sp, $sp, 8
	lw $t1, -3624($fp)
	li $t2, 0
	bne $t1, $t2, label226
	j label227
label227:
	li $t0, 0
	sw $t0, -3628($fp)
	addi $t0, $fp, -2632
	sw $t0, -3632($fp)
	li $t0, 5
	sw $t0, -3636($fp)
	li $t0, 4
	lw $t1, -3636($fp)
	mul $t0, $t0, $t1
	sw $t0, -3640($fp)
	lw $t0, -3640($fp)
	lw $t1, -3632($fp)
	add $t0, $t0, $t1
	sw $t0, -3644($fp)
	lw $t0, -3644($fp)
	lw $t1, 0($t0)
	sw $t1, -3648($fp)
	lw $t1, -3648($fp)
	li $t2, 0
	bne $t1, $t2, label229
	j label228
label228:
	li $t0, 1
	sw $t0, -3628($fp)
label229:
	addi $sp, $sp, -4
	lw $t0, -3628($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3652($fp)
	addi $sp, $sp, 8
	li $t0, 47417
	sw $t0, -3656($fp)
	lw $t0, -1232($fp)
	sw $t0, -3660($fp)
	lw $t0, -3656($fp)
	lw $t1, -3660($fp)
	sub $t0, $t0, $t1
	sw $t0, -3664($fp)
	lw $t1, -3652($fp)
	lw $t2, -3664($fp)
	beq $t1, $t2, label225
	j label226
label225:
	li $t0, 1
	sw $t0, -3600($fp)
label226:
	j label216
label215:
	lw $t0, -776($fp)
	sw $t0, -3668($fp)
label216:
label127:
	li $t0, 59759
	sw $t0, -3672($fp)
	li $t0, 45166
	sw $t0, -3676($fp)
	li $t0, 0
	lw $t1, -3676($fp)
	sub $t0, $t0, $t1
	sw $t0, -3680($fp)
	lw $t0, -3672($fp)
	lw $t1, -3680($fp)
	sub $t0, $t0, $t1
	sw $t0, -3684($fp)
	lw $t1, -3684($fp)
	li $t2, 0
	bne $t1, $t2, label230
	j label233
label233:
	addi $t0, $fp, -52
	sw $t0, -3688($fp)
	lw $t0, -1244($fp)
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
	lw $t0, -740($fp)
	sw $t0, -3708($fp)
	lw $t0, -3704($fp)
	lw $t1, -3708($fp)
	mul $t0, $t0, $t1
	sw $t0, -3712($fp)
	li $t0, 0
	sw $t0, -3716($fp)
	li $t0, 10412
	sw $t0, -3720($fp)
	lw $t1, -3720($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label234
label234:
	li $t0, 1
	sw $t0, -3716($fp)
label235:
	lw $t1, -3712($fp)
	lw $t2, -3716($fp)
	bgt $t1, $t2, label230
	j label231
label230:
	li $t0, 0
	sw $t0, -3724($fp)
	li $t0, 41594
	sw $t0, -3728($fp)
	lw $t1, -3728($fp)
	li $t2, 0
	bne $t1, $t2, label239
	j label240
label239:
	li $t0, 1
	sw $t0, -3724($fp)
label240:
	li $t0, 0
	lw $t1, -3724($fp)
	sub $t0, $t0, $t1
	sw $t0, -3732($fp)
	li $t0, 0
	sw $t0, -3736($fp)
	lw $t0, -752($fp)
	sw $t0, -3740($fp)
	lw $t1, -3740($fp)
	li $t2, 0
	bne $t1, $t2, label241
	j label242
label241:
	li $t0, 1
	sw $t0, -3736($fp)
label242:
	lw $t0, -3732($fp)
	lw $t1, -3736($fp)
	add $t0, $t0, $t1
	sw $t0, -3744($fp)
	li $t0, 5824
	sw $t0, -3748($fp)
	li $t0, 56978
	sw $t0, -3752($fp)
	lw $t0, -3748($fp)
	lw $t1, -3752($fp)
	add $t0, $t0, $t1
	sw $t0, -3756($fp)
	li $t0, 5791
	sw $t0, -3760($fp)
	lw $t0, -3756($fp)
	lw $t1, -3760($fp)
	add $t0, $t0, $t1
	sw $t0, -3764($fp)
	addi $sp, $sp, -4
	lw $t0, -3764($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3768($fp)
	addi $sp, $sp, 8
	lw $t1, -3744($fp)
	lw $t2, -3768($fp)
	beq $t1, $t2, label236
	j label237
label236:
	li $t0, 18411
	sw $t0, -3772($fp)
	lw $t1, -3772($fp)
	li $t2, 0
	bne $t1, $t2, label243
	j label246
label246:
	lw $t0, -440($fp)
	sw $t0, -3776($fp)
	lw $t1, -3776($fp)
	li $t2, 0
	bne $t1, $t2, label244
	j label243
label243:
	li $t0, 12265
	sw $t0, -3804($fp)
	addi $t0, $fp, -3780
	sw $t0, -3808($fp)
	li $t0, 0
	sw $t0, -3812($fp)
	lw $t0, -3812($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3816($fp)
	lw $t0, -3808($fp)
	lw $t1, -3816($fp)
	add $t0, $t0, $t1
	sw $t0, -3820($fp)
	lw $t0, -3804($fp)
	lw $t1, -3820($fp)
	sw $t0, 0($t1)
	lw $t0, -3820($fp)
	lw $t1, 0($t0)
	sw $t1, -3824($fp)
	li $t0, 53098
	sw $t0, -3828($fp)
	addi $t0, $fp, -3800
	sw $t0, -3832($fp)
	li $t0, 0
	sw $t0, -3836($fp)
	lw $t0, -3836($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3840($fp)
	lw $t0, -3832($fp)
	lw $t1, -3840($fp)
	add $t0, $t0, $t1
	sw $t0, -3844($fp)
	lw $t0, -3828($fp)
	lw $t1, -3844($fp)
	sw $t0, 0($t1)
	lw $t0, -3844($fp)
	lw $t1, 0($t0)
	sw $t1, -3848($fp)
	li $t0, 40698
	sw $t0, -3852($fp)
	addi $t0, $fp, -3800
	sw $t0, -3856($fp)
	li $t0, 1
	sw $t0, -3860($fp)
	lw $t0, -3860($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3864($fp)
	lw $t0, -3856($fp)
	lw $t1, -3864($fp)
	add $t0, $t0, $t1
	sw $t0, -3868($fp)
	lw $t0, -3852($fp)
	lw $t1, -3868($fp)
	sw $t0, 0($t1)
	lw $t0, -3868($fp)
	lw $t1, 0($t0)
	sw $t1, -3872($fp)
	li $t0, 51647
	sw $t0, -3876($fp)
	addi $t0, $fp, -3800
	sw $t0, -3880($fp)
	li $t0, 2
	sw $t0, -3884($fp)
	lw $t0, -3884($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3888($fp)
	lw $t0, -3880($fp)
	lw $t1, -3888($fp)
	add $t0, $t0, $t1
	sw $t0, -3892($fp)
	lw $t0, -3876($fp)
	lw $t1, -3892($fp)
	sw $t0, 0($t1)
	lw $t0, -3892($fp)
	lw $t1, 0($t0)
	sw $t1, -3896($fp)
	li $t0, 27261
	sw $t0, -3900($fp)
	addi $t0, $fp, -3800
	sw $t0, -3904($fp)
	li $t0, 3
	sw $t0, -3908($fp)
	lw $t0, -3908($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3912($fp)
	lw $t0, -3904($fp)
	lw $t1, -3912($fp)
	add $t0, $t0, $t1
	sw $t0, -3916($fp)
	lw $t0, -3900($fp)
	lw $t1, -3916($fp)
	sw $t0, 0($t1)
	lw $t0, -3916($fp)
	lw $t1, 0($t0)
	sw $t1, -3920($fp)
	li $t0, 37492
	sw $t0, -3924($fp)
	addi $t0, $fp, -3800
	sw $t0, -3928($fp)
	li $t0, 4
	sw $t0, -3932($fp)
	lw $t0, -3932($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3936($fp)
	lw $t0, -3928($fp)
	lw $t1, -3936($fp)
	add $t0, $t0, $t1
	sw $t0, -3940($fp)
	lw $t0, -3924($fp)
	lw $t1, -3940($fp)
	sw $t0, 0($t1)
	lw $t0, -3940($fp)
	lw $t1, 0($t0)
	sw $t1, -3944($fp)
	li $t0, 0
	sw $t0, -3948($fp)
	li $t0, 61822
	sw $t0, -3952($fp)
	lw $t1, -3952($fp)
	li $t2, 0
	bne $t1, $t2, label247
	j label249
label249:
	addi $t0, $fp, -3780
	sw $t0, -3956($fp)
	lw $t0, -428($fp)
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
	li $t0, 12701
	sw $t0, -3976($fp)
	lw $t0, -3972($fp)
	lw $t1, -3976($fp)
	add $t0, $t0, $t1
	sw $t0, -3980($fp)
	lw $t0, -428($fp)
	sw $t0, -3984($fp)
	li $t0, 24690
	sw $t0, -3988($fp)
	lw $t0, -3984($fp)
	lw $t1, -3988($fp)
	mul $t0, $t0, $t1
	sw $t0, -3992($fp)
	lw $t0, -3980($fp)
	lw $t1, -3992($fp)
	add $t0, $t0, $t1
	sw $t0, -3996($fp)
	lw $t1, -3996($fp)
	li $t2, 0
	bne $t1, $t2, label247
	j label248
label247:
	li $t0, 1
	sw $t0, -3948($fp)
label248:
	li $t0, 0
	sw $t0, -4000($fp)
	lw $t0, -476($fp)
	sw $t0, -4004($fp)
	lw $t1, -4004($fp)
	li $t2, 0
	bne $t1, $t2, label250
	j label252
label252:
	li $t0, 44183
	sw $t0, -4008($fp)
	li $t0, 0
	lw $t1, -4008($fp)
	sub $t0, $t0, $t1
	sw $t0, -4012($fp)
	lw $t1, -4012($fp)
	li $t2, 0
	bne $t1, $t2, label250
	j label251
label250:
	li $t0, 1
	sw $t0, -4000($fp)
label251:
	li $t0, 35591
	sw $t0, -4016($fp)
	addi $t0, $fp, -3800
	sw $t0, -4020($fp)
	li $t0, 0
	sw $t0, -4024($fp)
	li $t0, 27726
	sw $t0, -4028($fp)
	lw $t1, -4028($fp)
	li $t2, 0
	bne $t1, $t2, label253
	j label255
label255:
	li $t0, 2134
	sw $t0, -4032($fp)
	lw $t1, -4032($fp)
	li $t2, 0
	bne $t1, $t2, label253
	j label254
label253:
	li $t0, 1
	sw $t0, -4024($fp)
label254:
	lw $t0, -4024($fp)
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	sw $t0, -4036($fp)
	li $t0, 4
	lw $t1, -4036($fp)
	mul $t0, $t0, $t1
	sw $t0, -4040($fp)
	lw $t0, -4040($fp)
	lw $t1, -4020($fp)
	add $t0, $t0, $t1
	sw $t0, -4044($fp)
	lw $t0, -4044($fp)
	lw $t1, 0($t0)
	sw $t1, -4048($fp)
	li $t0, 33835
	sw $t0, -4052($fp)
	li $t0, 0
	sw $t0, -4056($fp)
	li $t0, 0
	sw $t0, -4060($fp)
	li $t0, 23736
	sw $t0, -4064($fp)
	li $t0, 0
	sw $t0, -4068($fp)
	li $t0, 40044
	sw $t0, -4072($fp)
	lw $t1, -4072($fp)
	li $t2, 0
	bne $t1, $t2, label261
	j label260
label260:
	li $t0, 1
	sw $t0, -4068($fp)
label261:
	lw $t0, -4064($fp)
	lw $t1, -4068($fp)
	sub $t0, $t0, $t1
	sw $t0, -4076($fp)
	li $t0, 51162
	sw $t0, -4080($fp)
	li $t0, 44037
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
	lw $t1, -4076($fp)
	lw $t2, -4092($fp)
	bgt $t1, $t2, label258
	j label259
label258:
	li $t0, 1
	sw $t0, -4060($fp)
label259:
	addi $t0, $fp, -100
	sw $t0, -4096($fp)
	addi $t0, $fp, -100
	sw $t0, -4100($fp)
	li $t0, 2
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
	li $t0, 4
	lw $t1, -4116($fp)
	mul $t0, $t0, $t1
	sw $t0, -4120($fp)
	lw $t0, -4120($fp)
	lw $t1, -4096($fp)
	add $t0, $t0, $t1
	sw $t0, -4124($fp)
	lw $t0, -4124($fp)
	lw $t1, 0($t0)
	sw $t1, -4128($fp)
	lw $t1, -4060($fp)
	lw $t2, -4128($fp)
	ble $t1, $t2, label256
	j label257
label256:
	li $t0, 1
	sw $t0, -4056($fp)
label257:
	j label245
label244:
	li $t0, 0
	sw $t0, -4132($fp)
	li $t0, 47678
	sw $t0, -4136($fp)
	lw $t0, -4136($fp)
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -4140($fp)
	addi $sp, $sp, -4
	lw $t0, -4140($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4144($fp)
	addi $sp, $sp, 8
	lw $t1, -4144($fp)
	li $t2, 0
	bne $t1, $t2, label263
	j label262
label262:
	li $t0, 1
	sw $t0, -4132($fp)
label263:
	lw $t0, -4132($fp)
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	sw $t0, -4148($fp)
label245:
	j label238
label237:
	li $t0, 0
	sw $t0, -4152($fp)
	li $t0, 0
	sw $t0, -4156($fp)
	li $t0, 0
	sw $t0, -4160($fp)
	li $t0, 39062
	sw $t0, -4164($fp)
	li $t0, 11335
	sw $t0, -4168($fp)
	lw $t1, -4164($fp)
	lw $t2, -4168($fp)
	bgt $t1, $t2, label271
	j label272
label271:
	li $t0, 1
	sw $t0, -4160($fp)
label272:
	li $t0, 41901
	sw $t0, -4172($fp)
	lw $t1, -4160($fp)
	lw $t2, -4172($fp)
	blt $t1, $t2, label269
	j label270
label269:
	li $t0, 1
	sw $t0, -4156($fp)
label270:
	li $t0, 18692
	sw $t0, -4176($fp)
	lw $t0, -908($fp)
	sw $t0, -4180($fp)
	lw $t0, -4176($fp)
	lw $t1, -4180($fp)
	add $t0, $t0, $t1
	sw $t0, -4184($fp)
	lw $t1, -4156($fp)
	lw $t2, -4184($fp)
	bgt $t1, $t2, label267
	j label268
label267:
	li $t0, 1
	sw $t0, -4152($fp)
label268:
	lw $t0, -4152($fp)
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -4188($fp)
	lw $t1, -4188($fp)
	li $t2, 0
	bne $t1, $t2, label264
	j label265
label264:
	li $t0, 0
	sw $t0, -4192($fp)
	lw $t0, -992($fp)
	sw $t0, -4196($fp)
	li $t0, 21747
	sw $t0, -4200($fp)
	lw $t0, -4196($fp)
	lw $t1, -4200($fp)
	mul $t0, $t0, $t1
	sw $t0, -4204($fp)
	lw $t0, -956($fp)
	sw $t0, -4208($fp)
	lw $t0, -4204($fp)
	lw $t1, -4208($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4212($fp)
	addi $sp, $sp, -4
	lw $t0, -4212($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4216($fp)
	addi $sp, $sp, 8
	lw $t1, -4216($fp)
	li $t2, 0
	bne $t1, $t2, label273
	j label274
label273:
	li $t0, 1
	sw $t0, -4192($fp)
label274:
	j label266
label265:
	li $t0, 17960
	sw $t0, -4220($fp)
	lw $ra, -4($fp)
	lw $v0, -4220($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label266:
label238:
label231:
	lw $t0, -980($fp)
	sw $t0, -4224($fp)
	lw $t0, -4224($fp)
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -4228($fp)
	lw $t1, -4228($fp)
	li $t2, 0
	bne $t1, $t2, label275
	j label276
label275:
	li $t0, 24516
	sw $t0, -4232($fp)
	lw $t0, -4232($fp)
	sw $t0, -4236($fp)
	lw $t0, -4236($fp)
	sw $t0, -4240($fp)
	li $t0, 13189
	sw $t0, -4244($fp)
	lw $t0, -4244($fp)
	sw $t0, -4248($fp)
	lw $t0, -4248($fp)
	sw $t0, -4252($fp)
	li $t0, 23751
	sw $t0, -4256($fp)
	lw $t0, -4256($fp)
	sw $t0, -4260($fp)
	lw $t0, -4260($fp)
	sw $t0, -4264($fp)
	li $t0, 42927
	sw $t0, -4268($fp)
	lw $t0, -4268($fp)
	sw $t0, -4272($fp)
	lw $t0, -4272($fp)
	sw $t0, -4276($fp)
	li $t0, 25455
	sw $t0, -4280($fp)
	lw $t0, -4280($fp)
	sw $t0, -4284($fp)
	lw $t0, -4284($fp)
	sw $t0, -4288($fp)
	li $t0, 11314
	sw $t0, -4292($fp)
	lw $t0, -4292($fp)
	sw $t0, -4296($fp)
	lw $t0, -4296($fp)
	sw $t0, -4300($fp)
	li $t0, 18089
	sw $t0, -4304($fp)
	lw $t0, -4304($fp)
	sw $t0, -4308($fp)
	lw $t0, -4308($fp)
	sw $t0, -4312($fp)
	li $t0, 11566
	sw $t0, -4316($fp)
	li $t0, 38575
	sw $t0, -4320($fp)
	lw $t0, -4316($fp)
	lw $t1, -4320($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4324($fp)
	li $t0, 55582
	sw $t0, -4328($fp)
	lw $t0, -4324($fp)
	lw $t1, -4328($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4332($fp)
	li $t0, 0
	sw $t0, -4336($fp)
	li $t0, 0
	sw $t0, -4340($fp)
	lw $t0, -4308($fp)
	sw $t0, -4344($fp)
	lw $t1, -4344($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label283
label283:
	li $t0, 1
	sw $t0, -4340($fp)
label284:
	lw $t0, -980($fp)
	sw $t0, -4348($fp)
	lw $t0, -4340($fp)
	lw $t1, -4348($fp)
	add $t0, $t0, $t1
	sw $t0, -4352($fp)
	addi $sp, $sp, -4
	lw $t0, -4352($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4356($fp)
	addi $sp, $sp, 8
	lw $t1, -4356($fp)
	li $t2, 0
	bne $t1, $t2, label282
	j label281
label281:
	li $t0, 1
	sw $t0, -4336($fp)
label282:
	lw $t0, -4332($fp)
	lw $t1, -4336($fp)
	mul $t0, $t0, $t1
	sw $t0, -4360($fp)
	li $t0, 0
	lw $t1, -4360($fp)
	sub $t0, $t0, $t1
	sw $t0, -4364($fp)
	li $t0, 0
	sw $t0, -4368($fp)
	li $t0, 7852
	sw $t0, -4372($fp)
	li $t0, 0
	lw $t1, -4372($fp)
	sub $t0, $t0, $t1
	sw $t0, -4376($fp)
	lw $t1, -4376($fp)
	li $t2, 0
	bne $t1, $t2, label286
	j label285
label285:
	li $t0, 1
	sw $t0, -4368($fp)
label286:
	lw $t1, -4364($fp)
	lw $t2, -4368($fp)
	ble $t1, $t2, label278
	j label279
label278:
	li $t0, 0
	sw $t0, -4380($fp)
	li $t0, 51277
	sw $t0, -4384($fp)
	lw $t1, -4384($fp)
	li $t2, 0
	bne $t1, $t2, label291
	j label290
label290:
	li $t0, 1
	sw $t0, -4380($fp)
label291:
	li $t0, 14736
	sw $t0, -4388($fp)
	lw $t1, -4380($fp)
	lw $t2, -4388($fp)
	bne $t1, $t2, label287
	j label288
label287:
	li $t0, 52035
	sw $t0, -4400($fp)
	addi $t0, $fp, -4396
	sw $t0, -4404($fp)
	li $t0, 0
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
	li $t0, 21332
	sw $t0, -4424($fp)
	addi $t0, $fp, -4396
	sw $t0, -4428($fp)
	li $t0, 1
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
	li $t0, 42463
	sw $t0, -4448($fp)
	lw $t0, -4448($fp)
	sw $t0, -4452($fp)
	lw $t0, -4452($fp)
	sw $t0, -4456($fp)
	li $t0, 0
	sw $t0, -4460($fp)
	lw $t0, -704($fp)
	sw $t0, -4464($fp)
	li $t0, 54170
	sw $t0, -4468($fp)
	lw $t0, -4464($fp)
	lw $t1, -4468($fp)
	sub $t0, $t0, $t1
	sw $t0, -4472($fp)
	lw $t0, -968($fp)
	sw $t0, -4476($fp)
	lw $t0, -4472($fp)
	lw $t1, -4476($fp)
	add $t0, $t0, $t1
	sw $t0, -4480($fp)
	addi $sp, $sp, -4
	lw $t0, -4480($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4484($fp)
	addi $sp, $sp, 8
	lw $t1, -4484($fp)
	li $t2, 0
	bne $t1, $t2, label293
	j label294
label294:
	addi $t0, $fp, -100
	sw $t0, -4488($fp)
	li $t0, 3
	sw $t0, -4492($fp)
	li $t0, 4
	lw $t1, -4492($fp)
	mul $t0, $t0, $t1
	sw $t0, -4496($fp)
	lw $t0, -4496($fp)
	lw $t1, -4488($fp)
	add $t0, $t0, $t1
	sw $t0, -4500($fp)
	lw $t0, -4500($fp)
	lw $t1, 0($t0)
	sw $t1, -4504($fp)
	li $t0, 28678
	sw $t0, -4508($fp)
	lw $t0, -4504($fp)
	lw $t1, -4508($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4512($fp)
	lw $t1, -4512($fp)
	li $t2, 0
	bne $t1, $t2, label292
	j label293
label292:
	li $t0, 1
	sw $t0, -4460($fp)
label293:
	li $t0, 40794
	sw $t0, -4516($fp)
	addi $t0, $fp, -4396
	sw $t0, -4520($fp)
	li $t0, 0
	sw $t0, -4524($fp)
	lw $t0, -1004($fp)
	sw $t0, -4528($fp)
	lw $t1, -4528($fp)
	li $t2, 0
	bne $t1, $t2, label295
	j label297
label297:
	lw $t0, -4452($fp)
	sw $t0, -4532($fp)
	lw $t1, -4532($fp)
	li $t2, 0
	bne $t1, $t2, label295
	j label296
label295:
	li $t0, 1
	sw $t0, -4524($fp)
label296:
	li $t0, 4
	lw $t1, -4524($fp)
	mul $t0, $t0, $t1
	sw $t0, -4536($fp)
	lw $t0, -4536($fp)
	lw $t1, -4520($fp)
	add $t0, $t0, $t1
	sw $t0, -4540($fp)
	lw $t0, -4540($fp)
	lw $t1, 0($t0)
	sw $t1, -4544($fp)
	lw $t0, -4516($fp)
	lw $t1, -4544($fp)
	sub $t0, $t0, $t1
	sw $t0, -4548($fp)
	j label289
label288:
label298:
	lw $t0, -440($fp)
	sw $t0, -4552($fp)
	addi $t0, $fp, -84
	sw $t0, -4556($fp)
	li $t0, 7
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
	lw $t0, -4552($fp)
	lw $t1, -4572($fp)
	add $t0, $t0, $t1
	sw $t0, -4576($fp)
	addi $t0, $fp, -132
	sw $t0, -4580($fp)
	lw $t0, -428($fp)
	sw $t0, -4584($fp)
	li $t0, 4
	lw $t1, -4584($fp)
	mul $t0, $t0, $t1
	sw $t0, -4588($fp)
	lw $t0, -4588($fp)
	lw $t1, -4580($fp)
	add $t0, $t0, $t1
	sw $t0, -4592($fp)
	lw $t0, -4592($fp)
	lw $t1, 0($t0)
	sw $t1, -4596($fp)
	lw $t0, -1016($fp)
	sw $t0, -4600($fp)
	lw $t0, -4596($fp)
	lw $t1, -4600($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4604($fp)
	lw $t1, -4576($fp)
	lw $t2, -4604($fp)
	ble $t1, $t2, label299
	j label301
label301:
	li $t0, 4712
	sw $t0, -4608($fp)
	li $t0, 26843
	sw $t0, -4612($fp)
	lw $t0, -4608($fp)
	lw $t1, -4612($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4616($fp)
	lw $t0, -4308($fp)
	sw $t0, -4620($fp)
	lw $t0, -4616($fp)
	lw $t1, -4620($fp)
	mul $t0, $t0, $t1
	sw $t0, -4624($fp)
	addi $t0, $fp, -100
	sw $t0, -4628($fp)
	li $t0, 3
	sw $t0, -4632($fp)
	li $t0, 4
	lw $t1, -4632($fp)
	mul $t0, $t0, $t1
	sw $t0, -4636($fp)
	lw $t0, -4636($fp)
	lw $t1, -4628($fp)
	add $t0, $t0, $t1
	sw $t0, -4640($fp)
	lw $t0, -4640($fp)
	lw $t1, 0($t0)
	sw $t1, -4644($fp)
	lw $t0, -4624($fp)
	lw $t1, -4644($fp)
	sub $t0, $t0, $t1
	sw $t0, -4648($fp)
	lw $t1, -4648($fp)
	li $t2, 0
	bne $t1, $t2, label299
	j label300
label299:
	lw $t0, -932($fp)
	sw $t0, -4652($fp)
	lw $t0, -4652($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -4656($fp)
	lw $t0, -4656($fp)
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -4660($fp)
	lw $t0, -4660($fp)
	sw $t0, -4236($fp)
	lw $t0, -4236($fp)
	sw $t0, -4664($fp)
	j label298
label300:
label289:
	j label280
label279:
	li $t0, 0
	sw $t0, -4668($fp)
	li $t0, 3208
	sw $t0, -4672($fp)
	lw $t0, -1232($fp)
	sw $t0, -4676($fp)
	lw $t0, -4672($fp)
	lw $t1, -4676($fp)
	add $t0, $t0, $t1
	sw $t0, -4680($fp)
	lw $t1, -4680($fp)
	li $t2, 0
	bne $t1, $t2, label304
	j label303
label304:
	li $t0, 31401
	sw $t0, -4684($fp)
	lw $t1, -4684($fp)
	li $t2, 0
	bne $t1, $t2, label302
	j label303
label302:
	li $t0, 1
	sw $t0, -4668($fp)
label303:
	addi $sp, $sp, -4
	lw $t0, -4668($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4688($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4692($fp)
	lw $t0, -1256($fp)
	sw $t0, -4696($fp)
	li $t0, 0
	sw $t0, -4700($fp)
	lw $t0, -944($fp)
	sw $t0, -4704($fp)
	li $t0, 37794
	sw $t0, -4708($fp)
	lw $t1, -4704($fp)
	lw $t2, -4708($fp)
	bne $t1, $t2, label308
	j label310
label310:
	li $t0, 21168
	sw $t0, -4712($fp)
	lw $t1, -4712($fp)
	li $t2, 0
	bne $t1, $t2, label308
	j label309
label308:
	li $t0, 1
	sw $t0, -4700($fp)
label309:
	addi $sp, $sp, -4
	lw $t0, -4700($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4716($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -4716($fp)
	sub $t0, $t0, $t1
	sw $t0, -4720($fp)
	lw $t0, -4696($fp)
	lw $t1, -4720($fp)
	sub $t0, $t0, $t1
	sw $t0, -4724($fp)
	lw $t1, -4724($fp)
	li $t2, 0
	bne $t1, $t2, label307
	j label306
label307:
	li $t0, 0
	sw $t0, -4728($fp)
	lw $t0, -944($fp)
	sw $t0, -4732($fp)
	li $t0, 55917
	sw $t0, -4736($fp)
	lw $t1, -4732($fp)
	lw $t2, -4736($fp)
	bne $t1, $t2, label311
	j label312
label311:
	li $t0, 1
	sw $t0, -4728($fp)
label312:
	addi $t0, $fp, -52
	sw $t0, -4740($fp)
	lw $t0, -728($fp)
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
	lw $t1, -4728($fp)
	lw $t2, -4756($fp)
	bne $t1, $t2, label305
	j label306
label305:
	li $t0, 1
	sw $t0, -4692($fp)
label306:
label280:
label313:
	li $t0, 0
	sw $t0, -4760($fp)
	li $t0, 50983
	sw $t0, -4764($fp)
	lw $t0, -956($fp)
	sw $t0, -4768($fp)
	lw $t1, -4764($fp)
	lw $t2, -4768($fp)
	bge $t1, $t2, label316
	j label318
label318:
	li $t0, 44920
	sw $t0, -4772($fp)
	lw $t1, -4772($fp)
	li $t2, 0
	bne $t1, $t2, label316
	j label317
label316:
	li $t0, 1
	sw $t0, -4760($fp)
label317:
	addi $sp, $sp, -4
	lw $t0, -4760($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4776($fp)
	addi $sp, $sp, 8
	lw $t0, -4248($fp)
	sw $t0, -4780($fp)
	lw $t0, -4776($fp)
	lw $t1, -4780($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4784($fp)
	addi $t0, $fp, -52
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
	lw $t0, -4784($fp)
	lw $t1, -4804($fp)
	sub $t0, $t0, $t1
	sw $t0, -4808($fp)
	lw $t0, -4808($fp)
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -4812($fp)
	lw $t1, -4812($fp)
	li $t2, 0
	bne $t1, $t2, label314
	j label315
label314:
	addi $t0, $fp, -100
	sw $t0, -4816($fp)
	li $t0, 0
	sw $t0, -4820($fp)
	li $t0, 56234
	sw $t0, -4824($fp)
	li $t0, 51398
	sw $t0, -4828($fp)
	lw $t1, -4824($fp)
	lw $t2, -4828($fp)
	bge $t1, $t2, label323
	j label324
label323:
	li $t0, 1
	sw $t0, -4820($fp)
label324:
	li $t0, 4
	lw $t1, -4820($fp)
	mul $t0, $t0, $t1
	sw $t0, -4832($fp)
	lw $t0, -4832($fp)
	lw $t1, -4816($fp)
	add $t0, $t0, $t1
	sw $t0, -4836($fp)
	lw $t0, -4836($fp)
	lw $t1, 0($t0)
	sw $t1, -4840($fp)
	li $t0, 22468
	sw $t0, -4844($fp)
	li $t0, 0
	lw $t1, -4844($fp)
	sub $t0, $t0, $t1
	sw $t0, -4848($fp)
	lw $t0, -4840($fp)
	lw $t1, -4848($fp)
	add $t0, $t0, $t1
	sw $t0, -4852($fp)
	lw $t1, -4852($fp)
	li $t2, 0
	bne $t1, $t2, label319
	j label322
label322:
	lw $t0, -452($fp)
	sw $t0, -4856($fp)
	li $t0, 29273
	sw $t0, -4860($fp)
	lw $t0, -4856($fp)
	lw $t1, -4860($fp)
	sub $t0, $t0, $t1
	sw $t0, -4864($fp)
	li $t0, 41444
	sw $t0, -4868($fp)
	lw $t0, -4260($fp)
	sw $t0, -4872($fp)
	lw $t0, -4868($fp)
	lw $t1, -4872($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4876($fp)
	lw $t1, -4864($fp)
	lw $t2, -4876($fp)
	beq $t1, $t2, label319
	j label320
label319:
	li $t0, 30321
	sw $t0, -4880($fp)
	li $t0, 15014
	sw $t0, -4884($fp)
	lw $t0, -4272($fp)
	sw $t0, -4888($fp)
	lw $t0, -4884($fp)
	lw $t1, -4888($fp)
	add $t0, $t0, $t1
	sw $t0, -4892($fp)
	addi $sp, $sp, -4
	lw $t0, -4892($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4896($fp)
	addi $sp, $sp, 8
	lw $t0, -4880($fp)
	lw $t1, -4896($fp)
	add $t0, $t0, $t1
	sw $t0, -4900($fp)
	lw $ra, -4($fp)
	lw $v0, -4900($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label321
label320:
	li $t0, 0
	sw $t0, -4904($fp)
	lw $t0, -1004($fp)
	sw $t0, -4908($fp)
	lw $t1, -4908($fp)
	li $t2, 0
	bne $t1, $t2, label330
	j label329
label330:
	li $t0, 56181
	sw $t0, -4912($fp)
	lw $t1, -4912($fp)
	li $t2, 0
	bne $t1, $t2, label328
	j label329
label328:
	li $t0, 1
	sw $t0, -4904($fp)
label329:
	lw $t0, -4904($fp)
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -4916($fp)
	lw $t0, -4916($fp)
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	sw $t0, -4920($fp)
	lw $t1, -4920($fp)
	li $t2, 0
	bne $t1, $t2, label325
	j label326
label325:
	lw $t0, -1124($fp)
	sw $t0, -4924($fp)
	li $t0, 16820
	sw $t0, -4928($fp)
	lw $t0, -4924($fp)
	lw $t1, -4928($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4932($fp)
	li $t0, 0
	lw $t1, -4932($fp)
	sub $t0, $t0, $t1
	sw $t0, -4936($fp)
	addi $sp, $sp, -4
	lw $t0, -4936($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4940($fp)
	addi $sp, $sp, 8
	lw $t0, -4940($fp)
	sw $t0, -4284($fp)
	lw $t0, -4284($fp)
	sw $t0, -4944($fp)
	j label327
label326:
	li $t0, 0
	sw $t0, -4948($fp)
	lw $t0, -4296($fp)
	sw $t0, -4952($fp)
	lw $t0, -692($fp)
	sw $t0, -4956($fp)
	li $t0, 0
	lw $t1, -4956($fp)
	sub $t0, $t0, $t1
	sw $t0, -4960($fp)
	lw $t1, -4952($fp)
	lw $t2, -4960($fp)
	blt $t1, $t2, label331
	j label332
label331:
	li $t0, 1
	sw $t0, -4948($fp)
label332:
label327:
label321:
	j label313
label315:
	lw $t0, -4236($fp)
	sw $t0, -4964($fp)
	lw $t0, -4964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4248($fp)
	sw $t0, -4968($fp)
	lw $t0, -4968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4260($fp)
	sw $t0, -4972($fp)
	lw $t0, -4972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4272($fp)
	sw $t0, -4976($fp)
	lw $t0, -4976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4284($fp)
	sw $t0, -4980($fp)
	lw $t0, -4980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4296($fp)
	sw $t0, -4984($fp)
	lw $t0, -4984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4308($fp)
	sw $t0, -4988($fp)
	lw $t0, -4988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4992($fp)
	addi $t0, $fp, -132
	sw $t0, -4996($fp)
	lw $t0, -764($fp)
	sw $t0, -5000($fp)
	li $t0, 4
	lw $t1, -5000($fp)
	mul $t0, $t0, $t1
	sw $t0, -5004($fp)
	lw $t0, -5004($fp)
	lw $t1, -4996($fp)
	add $t0, $t0, $t1
	sw $t0, -5008($fp)
	lw $t0, -5008($fp)
	lw $t1, 0($t0)
	sw $t1, -5012($fp)
	li $t0, 0
	lw $t1, -5012($fp)
	sub $t0, $t0, $t1
	sw $t0, -5016($fp)
	lw $t1, -5016($fp)
	li $t2, 0
	bne $t1, $t2, label333
	j label336
label336:
	addi $t0, $fp, -100
	sw $t0, -5020($fp)
	lw $t0, -728($fp)
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
	lw $t1, -5036($fp)
	li $t2, 0
	bne $t1, $t2, label335
	j label333
label335:
	li $t0, 0
	sw $t0, -5040($fp)
	lw $t0, -776($fp)
	sw $t0, -5044($fp)
	li $t0, 36346
	sw $t0, -5048($fp)
	lw $t0, -5044($fp)
	lw $t1, -5048($fp)
	mul $t0, $t0, $t1
	sw $t0, -5052($fp)
	li $t0, 33108
	sw $t0, -5056($fp)
	lw $t1, -5052($fp)
	lw $t2, -5056($fp)
	ble $t1, $t2, label337
	j label338
label337:
	li $t0, 1
	sw $t0, -5040($fp)
label338:
	addi $sp, $sp, -4
	lw $t0, -5040($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5060($fp)
	addi $sp, $sp, 8
	lw $t1, -5060($fp)
	li $t2, 0
	bne $t1, $t2, label333
	j label334
label333:
	li $t0, 1
	sw $t0, -4992($fp)
label334:
	lw $ra, -4($fp)
	lw $v0, -4992($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label339:
	li $t0, 5454
	sw $t0, -5064($fp)
	lw $t1, -5064($fp)
	li $t2, 0
	bne $t1, $t2, label340
	j label341
label340:
	li $t0, 0
	sw $t0, -5068($fp)
	addi $t0, $fp, -36
	sw $t0, -5072($fp)
	li $t0, 0
	sw $t0, -5076($fp)
	lw $t0, 4($fp)
	sw $t0, -5080($fp)
	lw $t0, -788($fp)
	sw $t0, -5084($fp)
	lw $t1, -5080($fp)
	lw $t2, -5084($fp)
	bge $t1, $t2, label344
	j label345
label344:
	li $t0, 1
	sw $t0, -5076($fp)
label345:
	li $t0, 4
	lw $t1, -5076($fp)
	mul $t0, $t0, $t1
	sw $t0, -5088($fp)
	lw $t0, -5088($fp)
	lw $t1, -5072($fp)
	add $t0, $t0, $t1
	sw $t0, -5092($fp)
	lw $t0, -5092($fp)
	lw $t1, 0($t0)
	sw $t1, -5096($fp)
	li $t0, 25978
	sw $t0, -5100($fp)
	lw $t0, -5096($fp)
	lw $t1, -5100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5104($fp)
	li $t0, 0
	sw $t0, -5108($fp)
	li $t0, 33771
	sw $t0, -5112($fp)
	lw $t0, -704($fp)
	sw $t0, -5116($fp)
	lw $t0, -5112($fp)
	lw $t1, -5116($fp)
	mul $t0, $t0, $t1
	sw $t0, -5120($fp)
	li $t0, 34133
	sw $t0, -5124($fp)
	lw $t1, -5120($fp)
	lw $t2, -5124($fp)
	blt $t1, $t2, label346
	j label347
label346:
	li $t0, 1
	sw $t0, -5108($fp)
label347:
	addi $sp, $sp, -4
	lw $t0, -5108($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5128($fp)
	addi $sp, $sp, 8
	lw $t1, -5104($fp)
	lw $t2, -5128($fp)
	beq $t1, $t2, label342
	j label343
label342:
	li $t0, 1
	sw $t0, -5068($fp)
label343:
	j label339
label341:
label276:
	li $t0, 0
	sw $t0, -5132($fp)
	lw $t0, -992($fp)
	sw $t0, -5136($fp)
	lw $t1, -5136($fp)
	li $t2, 0
	bne $t1, $t2, label353
	j label352
label353:
	li $t0, 1236
	sw $t0, -5140($fp)
	lw $t1, -5140($fp)
	li $t2, 0
	bne $t1, $t2, label351
	j label352
label351:
	li $t0, 1
	sw $t0, -5132($fp)
label352:
	addi $sp, $sp, -4
	lw $t0, -5132($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5144($fp)
	addi $sp, $sp, 8
	lw $t1, -5144($fp)
	li $t2, 0
	bne $t1, $t2, label349
	j label348
label348:
label354:
	lw $t0, -776($fp)
	sw $t0, -5148($fp)
	lw $t0, -728($fp)
	sw $t0, -5152($fp)
	lw $t0, -452($fp)
	sw $t0, -5156($fp)
	lw $t0, -5152($fp)
	lw $t1, -5156($fp)
	mul $t0, $t0, $t1
	sw $t0, -5160($fp)
	li $t0, 0
	lw $t1, -5160($fp)
	sub $t0, $t0, $t1
	sw $t0, -5164($fp)
	lw $t0, -5148($fp)
	lw $t1, -5164($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5168($fp)
	lw $t1, -5168($fp)
	li $t2, 0
	bne $t1, $t2, label355
	j label356
label355:
	li $t0, 12935
	sw $t0, -5172($fp)
	lw $t0, -5172($fp)
	sw $t0, -5176($fp)
	lw $t0, -5176($fp)
	sw $t0, -5180($fp)
	lw $t0, -5176($fp)
	sw $t0, -5184($fp)
	lw $t0, -5184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5188($fp)
	li $t0, 7780
	sw $t0, -5192($fp)
	li $t0, 0
	lw $t1, -5192($fp)
	sub $t0, $t0, $t1
	sw $t0, -5196($fp)
	lw $t1, -5196($fp)
	li $t2, 0
	bne $t1, $t2, label361
	j label358
label361:
	li $t0, 5948
	sw $t0, -5200($fp)
	lw $t0, -5176($fp)
	sw $t0, -5204($fp)
	lw $t1, -5200($fp)
	lw $t2, -5204($fp)
	bne $t1, $t2, label360
	j label358
label360:
	lw $t0, -704($fp)
	sw $t0, -5208($fp)
	lw $t1, -5208($fp)
	li $t2, 0
	bne $t1, $t2, label359
	j label358
label359:
	li $t0, 0
	sw $t0, -5212($fp)
	lw $t0, -704($fp)
	sw $t0, -5216($fp)
	lw $t1, -5216($fp)
	li $t2, 0
	bne $t1, $t2, label363
	j label362
label362:
	li $t0, 1
	sw $t0, -5212($fp)
label363:
	lw $t0, -452($fp)
	sw $t0, -5220($fp)
	lw $t0, -5212($fp)
	lw $t1, -5220($fp)
	add $t0, $t0, $t1
	sw $t0, -5224($fp)
	li $t0, 39778
	sw $t0, -5228($fp)
	lw $t1, -5224($fp)
	lw $t2, -5228($fp)
	beq $t1, $t2, label357
	j label358
label357:
	li $t0, 1
	sw $t0, -5188($fp)
label358:
	lw $ra, -4($fp)
	lw $v0, -5188($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label354
label356:
	j label350
label349:
	lw $t0, -932($fp)
	sw $t0, -5232($fp)
	lw $t0, -932($fp)
	sw $t0, -5236($fp)
	lw $t0, -5232($fp)
	lw $t1, -5236($fp)
	sub $t0, $t0, $t1
	sw $t0, -5240($fp)
	addi $sp, $sp, -4
	lw $t0, -5240($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5244($fp)
	addi $sp, $sp, 8
label350:
	addi $t0, $fp, -36
	sw $t0, -5248($fp)
	li $t0, 0
	sw $t0, -5252($fp)
	li $t0, 4
	lw $t1, -5252($fp)
	mul $t0, $t0, $t1
	sw $t0, -5256($fp)
	lw $t0, -5256($fp)
	lw $t1, -5248($fp)
	add $t0, $t0, $t1
	sw $t0, -5260($fp)
	lw $t0, -5260($fp)
	lw $t1, 0($t0)
	sw $t1, -5264($fp)
	lw $t0, -5264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -5268($fp)
	li $t0, 1
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
	lw $t0, -5284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -5288($fp)
	li $t0, 2
	sw $t0, -5292($fp)
	li $t0, 4
	lw $t1, -5292($fp)
	mul $t0, $t0, $t1
	sw $t0, -5296($fp)
	lw $t0, -5296($fp)
	lw $t1, -5288($fp)
	add $t0, $t0, $t1
	sw $t0, -5300($fp)
	lw $t0, -5300($fp)
	lw $t1, 0($t0)
	sw $t1, -5304($fp)
	lw $t0, -5304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -5308($fp)
	li $t0, 3
	sw $t0, -5312($fp)
	li $t0, 4
	lw $t1, -5312($fp)
	mul $t0, $t0, $t1
	sw $t0, -5316($fp)
	lw $t0, -5316($fp)
	lw $t1, -5308($fp)
	add $t0, $t0, $t1
	sw $t0, -5320($fp)
	lw $t0, -5320($fp)
	lw $t1, 0($t0)
	sw $t1, -5324($fp)
	lw $t0, -5324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -5328($fp)
	li $t0, 4
	sw $t0, -5332($fp)
	li $t0, 4
	lw $t1, -5332($fp)
	mul $t0, $t0, $t1
	sw $t0, -5336($fp)
	lw $t0, -5336($fp)
	lw $t1, -5328($fp)
	add $t0, $t0, $t1
	sw $t0, -5340($fp)
	lw $t0, -5340($fp)
	lw $t1, 0($t0)
	sw $t1, -5344($fp)
	lw $t0, -5344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -5348($fp)
	li $t0, 5
	sw $t0, -5352($fp)
	li $t0, 4
	lw $t1, -5352($fp)
	mul $t0, $t0, $t1
	sw $t0, -5356($fp)
	lw $t0, -5356($fp)
	lw $t1, -5348($fp)
	add $t0, $t0, $t1
	sw $t0, -5360($fp)
	lw $t0, -5360($fp)
	lw $t1, 0($t0)
	sw $t1, -5364($fp)
	lw $t0, -5364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -5368($fp)
	li $t0, 6
	sw $t0, -5372($fp)
	li $t0, 4
	lw $t1, -5372($fp)
	mul $t0, $t0, $t1
	sw $t0, -5376($fp)
	lw $t0, -5376($fp)
	lw $t1, -5368($fp)
	add $t0, $t0, $t1
	sw $t0, -5380($fp)
	lw $t0, -5380($fp)
	lw $t1, 0($t0)
	sw $t1, -5384($fp)
	lw $t0, -5384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -5388($fp)
	li $t0, 7
	sw $t0, -5392($fp)
	li $t0, 4
	lw $t1, -5392($fp)
	mul $t0, $t0, $t1
	sw $t0, -5396($fp)
	lw $t0, -5396($fp)
	lw $t1, -5388($fp)
	add $t0, $t0, $t1
	sw $t0, -5400($fp)
	lw $t0, -5400($fp)
	lw $t1, 0($t0)
	sw $t1, -5404($fp)
	lw $t0, -5404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -5408($fp)
	li $t0, 0
	sw $t0, -5412($fp)
	li $t0, 4
	lw $t1, -5412($fp)
	mul $t0, $t0, $t1
	sw $t0, -5416($fp)
	lw $t0, -5416($fp)
	lw $t1, -5408($fp)
	add $t0, $t0, $t1
	sw $t0, -5420($fp)
	lw $t0, -5420($fp)
	lw $t1, 0($t0)
	sw $t1, -5424($fp)
	lw $t0, -5424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -5428($fp)
	li $t0, 1
	sw $t0, -5432($fp)
	li $t0, 4
	lw $t1, -5432($fp)
	mul $t0, $t0, $t1
	sw $t0, -5436($fp)
	lw $t0, -5436($fp)
	lw $t1, -5428($fp)
	add $t0, $t0, $t1
	sw $t0, -5440($fp)
	lw $t0, -5440($fp)
	lw $t1, 0($t0)
	sw $t1, -5444($fp)
	lw $t0, -5444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -5448($fp)
	li $t0, 2
	sw $t0, -5452($fp)
	li $t0, 4
	lw $t1, -5452($fp)
	mul $t0, $t0, $t1
	sw $t0, -5456($fp)
	lw $t0, -5456($fp)
	lw $t1, -5448($fp)
	add $t0, $t0, $t1
	sw $t0, -5460($fp)
	lw $t0, -5460($fp)
	lw $t1, 0($t0)
	sw $t1, -5464($fp)
	lw $t0, -5464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
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
	lw $t0, -5484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -428($fp)
	sw $t0, -5488($fp)
	lw $t0, -5488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -440($fp)
	sw $t0, -5492($fp)
	lw $t0, -5492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -452($fp)
	sw $t0, -5496($fp)
	lw $t0, -5496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -464($fp)
	sw $t0, -5500($fp)
	lw $t0, -5500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -476($fp)
	sw $t0, -5504($fp)
	lw $t0, -5504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -5508($fp)
	li $t0, 0
	sw $t0, -5512($fp)
	li $t0, 4
	lw $t1, -5512($fp)
	mul $t0, $t0, $t1
	sw $t0, -5516($fp)
	lw $t0, -5516($fp)
	lw $t1, -5508($fp)
	add $t0, $t0, $t1
	sw $t0, -5520($fp)
	lw $t0, -5520($fp)
	lw $t1, 0($t0)
	sw $t1, -5524($fp)
	lw $t0, -5524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -5528($fp)
	li $t0, 1
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
	addi $t0, $fp, -84
	sw $t0, -5548($fp)
	li $t0, 2
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
	addi $t0, $fp, -84
	sw $t0, -5568($fp)
	li $t0, 3
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
	addi $t0, $fp, -84
	sw $t0, -5588($fp)
	li $t0, 4
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
	addi $t0, $fp, -84
	sw $t0, -5608($fp)
	li $t0, 5
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
	addi $t0, $fp, -84
	sw $t0, -5628($fp)
	li $t0, 6
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
	addi $t0, $fp, -84
	sw $t0, -5648($fp)
	li $t0, 7
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
	lw $t0, -680($fp)
	sw $t0, -5668($fp)
	lw $t0, -5668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -692($fp)
	sw $t0, -5672($fp)
	lw $t0, -5672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -704($fp)
	sw $t0, -5676($fp)
	lw $t0, -5676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -716($fp)
	sw $t0, -5680($fp)
	lw $t0, -5680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -728($fp)
	sw $t0, -5684($fp)
	lw $t0, -5684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -740($fp)
	sw $t0, -5688($fp)
	lw $t0, -5688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -752($fp)
	sw $t0, -5692($fp)
	lw $t0, -5692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -764($fp)
	sw $t0, -5696($fp)
	lw $t0, -5696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -776($fp)
	sw $t0, -5700($fp)
	lw $t0, -5700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -788($fp)
	sw $t0, -5704($fp)
	lw $t0, -5704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
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
	addi $t0, $fp, -100
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
	addi $t0, $fp, -100
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
	addi $t0, $fp, -100
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
	lw $t0, -896($fp)
	sw $t0, -5788($fp)
	lw $t0, -5788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -908($fp)
	sw $t0, -5792($fp)
	lw $t0, -5792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -920($fp)
	sw $t0, -5796($fp)
	lw $t0, -5796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -932($fp)
	sw $t0, -5800($fp)
	lw $t0, -5800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -944($fp)
	sw $t0, -5804($fp)
	lw $t0, -5804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -956($fp)
	sw $t0, -5808($fp)
	lw $t0, -5808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -968($fp)
	sw $t0, -5812($fp)
	lw $t0, -5812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -980($fp)
	sw $t0, -5816($fp)
	lw $t0, -5816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -992($fp)
	sw $t0, -5820($fp)
	lw $t0, -5820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1004($fp)
	sw $t0, -5824($fp)
	lw $t0, -5824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1016($fp)
	sw $t0, -5828($fp)
	lw $t0, -5828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -5832($fp)
	li $t0, 0
	sw $t0, -5836($fp)
	li $t0, 4
	lw $t1, -5836($fp)
	mul $t0, $t0, $t1
	sw $t0, -5840($fp)
	lw $t0, -5840($fp)
	lw $t1, -5832($fp)
	add $t0, $t0, $t1
	sw $t0, -5844($fp)
	lw $t0, -5844($fp)
	lw $t1, 0($t0)
	sw $t1, -5848($fp)
	lw $t0, -5848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -5852($fp)
	li $t0, 1
	sw $t0, -5856($fp)
	li $t0, 4
	lw $t1, -5856($fp)
	mul $t0, $t0, $t1
	sw $t0, -5860($fp)
	lw $t0, -5860($fp)
	lw $t1, -5852($fp)
	add $t0, $t0, $t1
	sw $t0, -5864($fp)
	lw $t0, -5864($fp)
	lw $t1, 0($t0)
	sw $t1, -5868($fp)
	lw $t0, -5868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -5872($fp)
	li $t0, 2
	sw $t0, -5876($fp)
	li $t0, 4
	lw $t1, -5876($fp)
	mul $t0, $t0, $t1
	sw $t0, -5880($fp)
	lw $t0, -5880($fp)
	lw $t1, -5872($fp)
	add $t0, $t0, $t1
	sw $t0, -5884($fp)
	lw $t0, -5884($fp)
	lw $t1, 0($t0)
	sw $t1, -5888($fp)
	lw $t0, -5888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -5892($fp)
	li $t0, 3
	sw $t0, -5896($fp)
	li $t0, 4
	lw $t1, -5896($fp)
	mul $t0, $t0, $t1
	sw $t0, -5900($fp)
	lw $t0, -5900($fp)
	lw $t1, -5892($fp)
	add $t0, $t0, $t1
	sw $t0, -5904($fp)
	lw $t0, -5904($fp)
	lw $t1, 0($t0)
	sw $t1, -5908($fp)
	lw $t0, -5908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1124($fp)
	sw $t0, -5912($fp)
	lw $t0, -5912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -5916($fp)
	li $t0, 0
	sw $t0, -5920($fp)
	li $t0, 4
	lw $t1, -5920($fp)
	mul $t0, $t0, $t1
	sw $t0, -5924($fp)
	lw $t0, -5924($fp)
	lw $t1, -5916($fp)
	add $t0, $t0, $t1
	sw $t0, -5928($fp)
	lw $t0, -5928($fp)
	lw $t1, 0($t0)
	sw $t1, -5932($fp)
	lw $t0, -5932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -5936($fp)
	li $t0, 1
	sw $t0, -5940($fp)
	li $t0, 4
	lw $t1, -5940($fp)
	mul $t0, $t0, $t1
	sw $t0, -5944($fp)
	lw $t0, -5944($fp)
	lw $t1, -5936($fp)
	add $t0, $t0, $t1
	sw $t0, -5948($fp)
	lw $t0, -5948($fp)
	lw $t1, 0($t0)
	sw $t1, -5952($fp)
	lw $t0, -5952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -5956($fp)
	li $t0, 2
	sw $t0, -5960($fp)
	li $t0, 4
	lw $t1, -5960($fp)
	mul $t0, $t0, $t1
	sw $t0, -5964($fp)
	lw $t0, -5964($fp)
	lw $t1, -5956($fp)
	add $t0, $t0, $t1
	sw $t0, -5968($fp)
	lw $t0, -5968($fp)
	lw $t1, 0($t0)
	sw $t1, -5972($fp)
	lw $t0, -5972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -5976($fp)
	li $t0, 3
	sw $t0, -5980($fp)
	li $t0, 4
	lw $t1, -5980($fp)
	mul $t0, $t0, $t1
	sw $t0, -5984($fp)
	lw $t0, -5984($fp)
	lw $t1, -5976($fp)
	add $t0, $t0, $t1
	sw $t0, -5988($fp)
	lw $t0, -5988($fp)
	lw $t1, 0($t0)
	sw $t1, -5992($fp)
	lw $t0, -5992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1232($fp)
	sw $t0, -5996($fp)
	lw $t0, -5996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1244($fp)
	sw $t0, -6000($fp)
	lw $t0, -6000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1256($fp)
	sw $t0, -6004($fp)
	lw $t0, -6004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -6008($fp)
	li $t0, 3
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
	lw $t0, -6024($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6028($fp)
	addi $sp, $sp, 8
	lw $t0, -6028($fp)
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	sw $t0, -6032($fp)
	lw $t0, -6032($fp)
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	sw $t0, -6036($fp)
	lw $ra, -4($fp)
	lw $v0, -6036($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -7628
	li $t0, 42987
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	li $t0, 51891
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	li $t0, 59789
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	li $t0, 64155
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
	li $t0, 42273
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -312($fp)
	li $t0, 45236
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	li $t0, 43539
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -336($fp)
	li $t0, 10046
	sw $t0, -340($fp)
	addi $t0, $fp, -16
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
	li $t0, 56139
	sw $t0, -364($fp)
	addi $t0, $fp, -16
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
	li $t0, 34237
	sw $t0, -388($fp)
	addi $t0, $fp, -16
	sw $t0, -392($fp)
	li $t0, 2
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
	li $t0, 61444
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	li $t0, 13071
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	li $t0, 63511
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	li $t0, 37353
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	li $t0, 43392
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	li $t0, 12989
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	li $t0, 27998
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	li $t0, 60213
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	li $t0, 49336
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	li $t0, 61106
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	li $t0, 131
	sw $t0, -532($fp)
	addi $t0, $fp, -20
	sw $t0, -536($fp)
	li $t0, 0
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
	li $t0, 9778
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	li $t0, 29341
	sw $t0, -568($fp)
	addi $t0, $fp, -48
	sw $t0, -572($fp)
	li $t0, 0
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
	li $t0, 34264
	sw $t0, -592($fp)
	addi $t0, $fp, -48
	sw $t0, -596($fp)
	li $t0, 1
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
	li $t0, 11014
	sw $t0, -616($fp)
	addi $t0, $fp, -48
	sw $t0, -620($fp)
	li $t0, 2
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
	li $t0, 42276
	sw $t0, -640($fp)
	addi $t0, $fp, -48
	sw $t0, -644($fp)
	li $t0, 3
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
	li $t0, 42045
	sw $t0, -664($fp)
	addi $t0, $fp, -48
	sw $t0, -668($fp)
	li $t0, 4
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
	li $t0, 16962
	sw $t0, -688($fp)
	addi $t0, $fp, -48
	sw $t0, -692($fp)
	li $t0, 5
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
	li $t0, 16519
	sw $t0, -712($fp)
	addi $t0, $fp, -48
	sw $t0, -716($fp)
	li $t0, 6
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
	li $t0, 62535
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	sw $t0, -744($fp)
	li $t0, 38957
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	sw $t0, -756($fp)
	li $t0, 59506
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -768($fp)
	li $t0, 48890
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -780($fp)
	li $t0, 33210
	sw $t0, -784($fp)
	addi $t0, $fp, -88
	sw $t0, -788($fp)
	li $t0, 0
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -796($fp)
	lw $t0, -788($fp)
	lw $t1, -796($fp)
	add $t0, $t0, $t1
	sw $t0, -800($fp)
	lw $t0, -784($fp)
	lw $t1, -800($fp)
	sw $t0, 0($t1)
	lw $t0, -800($fp)
	lw $t1, 0($t0)
	sw $t1, -804($fp)
	li $t0, 58125
	sw $t0, -808($fp)
	addi $t0, $fp, -88
	sw $t0, -812($fp)
	li $t0, 1
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -820($fp)
	lw $t0, -812($fp)
	lw $t1, -820($fp)
	add $t0, $t0, $t1
	sw $t0, -824($fp)
	lw $t0, -808($fp)
	lw $t1, -824($fp)
	sw $t0, 0($t1)
	lw $t0, -824($fp)
	lw $t1, 0($t0)
	sw $t1, -828($fp)
	li $t0, 25627
	sw $t0, -832($fp)
	addi $t0, $fp, -88
	sw $t0, -836($fp)
	li $t0, 2
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -844($fp)
	lw $t0, -836($fp)
	lw $t1, -844($fp)
	add $t0, $t0, $t1
	sw $t0, -848($fp)
	lw $t0, -832($fp)
	lw $t1, -848($fp)
	sw $t0, 0($t1)
	lw $t0, -848($fp)
	lw $t1, 0($t0)
	sw $t1, -852($fp)
	li $t0, 12910
	sw $t0, -856($fp)
	addi $t0, $fp, -88
	sw $t0, -860($fp)
	li $t0, 3
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -868($fp)
	lw $t0, -860($fp)
	lw $t1, -868($fp)
	add $t0, $t0, $t1
	sw $t0, -872($fp)
	lw $t0, -856($fp)
	lw $t1, -872($fp)
	sw $t0, 0($t1)
	lw $t0, -872($fp)
	lw $t1, 0($t0)
	sw $t1, -876($fp)
	li $t0, 36129
	sw $t0, -880($fp)
	addi $t0, $fp, -88
	sw $t0, -884($fp)
	li $t0, 4
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
	li $t0, 35673
	sw $t0, -904($fp)
	addi $t0, $fp, -88
	sw $t0, -908($fp)
	li $t0, 5
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
	li $t0, 3513
	sw $t0, -928($fp)
	addi $t0, $fp, -88
	sw $t0, -932($fp)
	li $t0, 6
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
	li $t0, 4830
	sw $t0, -952($fp)
	addi $t0, $fp, -88
	sw $t0, -956($fp)
	li $t0, 7
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
	li $t0, 31582
	sw $t0, -976($fp)
	addi $t0, $fp, -88
	sw $t0, -980($fp)
	li $t0, 8
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
	li $t0, 16585
	sw $t0, -1000($fp)
	addi $t0, $fp, -88
	sw $t0, -1004($fp)
	li $t0, 9
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
	li $t0, 2805
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	sw $t0, -1032($fp)
	li $t0, 3399
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	sw $t0, -1044($fp)
	li $t0, 59977
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	sw $t0, -1056($fp)
	li $t0, 15795
	sw $t0, -1060($fp)
	addi $t0, $fp, -124
	sw $t0, -1064($fp)
	li $t0, 0
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
	li $t0, 31397
	sw $t0, -1084($fp)
	addi $t0, $fp, -124
	sw $t0, -1088($fp)
	li $t0, 1
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
	li $t0, 54654
	sw $t0, -1108($fp)
	addi $t0, $fp, -124
	sw $t0, -1112($fp)
	li $t0, 2
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
	li $t0, 65131
	sw $t0, -1132($fp)
	addi $t0, $fp, -124
	sw $t0, -1136($fp)
	li $t0, 3
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
	li $t0, 26967
	sw $t0, -1156($fp)
	addi $t0, $fp, -124
	sw $t0, -1160($fp)
	li $t0, 4
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
	li $t0, 54786
	sw $t0, -1180($fp)
	addi $t0, $fp, -124
	sw $t0, -1184($fp)
	li $t0, 5
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
	li $t0, 9373
	sw $t0, -1204($fp)
	addi $t0, $fp, -124
	sw $t0, -1208($fp)
	li $t0, 6
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
	li $t0, 56308
	sw $t0, -1228($fp)
	addi $t0, $fp, -124
	sw $t0, -1232($fp)
	li $t0, 7
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
	li $t0, 23514
	sw $t0, -1252($fp)
	addi $t0, $fp, -124
	sw $t0, -1256($fp)
	li $t0, 8
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
	li $t0, 20387
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -1284($fp)
	li $t0, 33048
	sw $t0, -1288($fp)
	addi $t0, $fp, -140
	sw $t0, -1292($fp)
	li $t0, 0
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
	li $t0, 23
	sw $t0, -1312($fp)
	addi $t0, $fp, -140
	sw $t0, -1316($fp)
	li $t0, 1
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
	li $t0, 37349
	sw $t0, -1336($fp)
	addi $t0, $fp, -140
	sw $t0, -1340($fp)
	li $t0, 2
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
	li $t0, 49567
	sw $t0, -1360($fp)
	addi $t0, $fp, -140
	sw $t0, -1364($fp)
	li $t0, 3
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
	li $t0, 62558
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	sw $t0, -1392($fp)
	li $t0, 10770
	sw $t0, -1396($fp)
	addi $t0, $fp, -156
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
	li $t0, 43537
	sw $t0, -1420($fp)
	addi $t0, $fp, -156
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
	li $t0, 45913
	sw $t0, -1444($fp)
	addi $t0, $fp, -156
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
	li $t0, 43980
	sw $t0, -1468($fp)
	addi $t0, $fp, -156
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
	li $t0, 36127
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	sw $t0, -1500($fp)
	li $t0, 6004
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	sw $t0, -1512($fp)
	li $t0, 56890
	sw $t0, -1516($fp)
	addi $t0, $fp, -192
	sw $t0, -1520($fp)
	li $t0, 0
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
	li $t0, 6720
	sw $t0, -1540($fp)
	addi $t0, $fp, -192
	sw $t0, -1544($fp)
	li $t0, 1
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
	li $t0, 41678
	sw $t0, -1564($fp)
	addi $t0, $fp, -192
	sw $t0, -1568($fp)
	li $t0, 2
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
	li $t0, 60404
	sw $t0, -1588($fp)
	addi $t0, $fp, -192
	sw $t0, -1592($fp)
	li $t0, 3
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
	li $t0, 11550
	sw $t0, -1612($fp)
	addi $t0, $fp, -192
	sw $t0, -1616($fp)
	li $t0, 4
	sw $t0, -1620($fp)
	lw $t0, -1620($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1624($fp)
	lw $t0, -1616($fp)
	lw $t1, -1624($fp)
	add $t0, $t0, $t1
	sw $t0, -1628($fp)
	lw $t0, -1612($fp)
	lw $t1, -1628($fp)
	sw $t0, 0($t1)
	lw $t0, -1628($fp)
	lw $t1, 0($t0)
	sw $t1, -1632($fp)
	li $t0, 7724
	sw $t0, -1636($fp)
	addi $t0, $fp, -192
	sw $t0, -1640($fp)
	li $t0, 5
	sw $t0, -1644($fp)
	lw $t0, -1644($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1648($fp)
	lw $t0, -1640($fp)
	lw $t1, -1648($fp)
	add $t0, $t0, $t1
	sw $t0, -1652($fp)
	lw $t0, -1636($fp)
	lw $t1, -1652($fp)
	sw $t0, 0($t1)
	lw $t0, -1652($fp)
	lw $t1, 0($t0)
	sw $t1, -1656($fp)
	li $t0, 11453
	sw $t0, -1660($fp)
	addi $t0, $fp, -192
	sw $t0, -1664($fp)
	li $t0, 6
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1672($fp)
	lw $t0, -1664($fp)
	lw $t1, -1672($fp)
	add $t0, $t0, $t1
	sw $t0, -1676($fp)
	lw $t0, -1660($fp)
	lw $t1, -1676($fp)
	sw $t0, 0($t1)
	lw $t0, -1676($fp)
	lw $t1, 0($t0)
	sw $t1, -1680($fp)
	li $t0, 14356
	sw $t0, -1684($fp)
	addi $t0, $fp, -192
	sw $t0, -1688($fp)
	li $t0, 7
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1696($fp)
	lw $t0, -1688($fp)
	lw $t1, -1696($fp)
	add $t0, $t0, $t1
	sw $t0, -1700($fp)
	lw $t0, -1684($fp)
	lw $t1, -1700($fp)
	sw $t0, 0($t1)
	lw $t0, -1700($fp)
	lw $t1, 0($t0)
	sw $t1, -1704($fp)
	li $t0, 11123
	sw $t0, -1708($fp)
	addi $t0, $fp, -192
	sw $t0, -1712($fp)
	li $t0, 8
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1720($fp)
	lw $t0, -1712($fp)
	lw $t1, -1720($fp)
	add $t0, $t0, $t1
	sw $t0, -1724($fp)
	lw $t0, -1708($fp)
	lw $t1, -1724($fp)
	sw $t0, 0($t1)
	lw $t0, -1724($fp)
	lw $t1, 0($t0)
	sw $t1, -1728($fp)
	li $t0, 5894
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	sw $t0, -1740($fp)
	li $t0, 30151
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	sw $t0, -1752($fp)
	li $t0, 42520
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	sw $t0, -1764($fp)
	li $t0, 60549
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	sw $t0, -1776($fp)
	li $t0, 29746
	sw $t0, -1780($fp)
	lw $t0, -1780($fp)
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	sw $t0, -1788($fp)
	li $t0, 3951
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	sw $t0, -1800($fp)
	li $t0, 49799
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	sw $t0, -1812($fp)
	li $t0, 39119
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	sw $t0, -1824($fp)
	li $t0, 60259
	sw $t0, -1828($fp)
	addi $t0, $fp, -232
	sw $t0, -1832($fp)
	li $t0, 0
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1840($fp)
	lw $t0, -1832($fp)
	lw $t1, -1840($fp)
	add $t0, $t0, $t1
	sw $t0, -1844($fp)
	lw $t0, -1828($fp)
	lw $t1, -1844($fp)
	sw $t0, 0($t1)
	lw $t0, -1844($fp)
	lw $t1, 0($t0)
	sw $t1, -1848($fp)
	li $t0, 7777
	sw $t0, -1852($fp)
	addi $t0, $fp, -232
	sw $t0, -1856($fp)
	li $t0, 1
	sw $t0, -1860($fp)
	lw $t0, -1860($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1864($fp)
	lw $t0, -1856($fp)
	lw $t1, -1864($fp)
	add $t0, $t0, $t1
	sw $t0, -1868($fp)
	lw $t0, -1852($fp)
	lw $t1, -1868($fp)
	sw $t0, 0($t1)
	lw $t0, -1868($fp)
	lw $t1, 0($t0)
	sw $t1, -1872($fp)
	li $t0, 59506
	sw $t0, -1876($fp)
	addi $t0, $fp, -232
	sw $t0, -1880($fp)
	li $t0, 2
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1888($fp)
	lw $t0, -1880($fp)
	lw $t1, -1888($fp)
	add $t0, $t0, $t1
	sw $t0, -1892($fp)
	lw $t0, -1876($fp)
	lw $t1, -1892($fp)
	sw $t0, 0($t1)
	lw $t0, -1892($fp)
	lw $t1, 0($t0)
	sw $t1, -1896($fp)
	li $t0, 27771
	sw $t0, -1900($fp)
	addi $t0, $fp, -232
	sw $t0, -1904($fp)
	li $t0, 3
	sw $t0, -1908($fp)
	lw $t0, -1908($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1912($fp)
	lw $t0, -1904($fp)
	lw $t1, -1912($fp)
	add $t0, $t0, $t1
	sw $t0, -1916($fp)
	lw $t0, -1900($fp)
	lw $t1, -1916($fp)
	sw $t0, 0($t1)
	lw $t0, -1916($fp)
	lw $t1, 0($t0)
	sw $t1, -1920($fp)
	li $t0, 7801
	sw $t0, -1924($fp)
	addi $t0, $fp, -232
	sw $t0, -1928($fp)
	li $t0, 4
	sw $t0, -1932($fp)
	lw $t0, -1932($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1936($fp)
	lw $t0, -1928($fp)
	lw $t1, -1936($fp)
	add $t0, $t0, $t1
	sw $t0, -1940($fp)
	lw $t0, -1924($fp)
	lw $t1, -1940($fp)
	sw $t0, 0($t1)
	lw $t0, -1940($fp)
	lw $t1, 0($t0)
	sw $t1, -1944($fp)
	li $t0, 31319
	sw $t0, -1948($fp)
	addi $t0, $fp, -232
	sw $t0, -1952($fp)
	li $t0, 5
	sw $t0, -1956($fp)
	lw $t0, -1956($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1960($fp)
	lw $t0, -1952($fp)
	lw $t1, -1960($fp)
	add $t0, $t0, $t1
	sw $t0, -1964($fp)
	lw $t0, -1948($fp)
	lw $t1, -1964($fp)
	sw $t0, 0($t1)
	lw $t0, -1964($fp)
	lw $t1, 0($t0)
	sw $t1, -1968($fp)
	li $t0, 11803
	sw $t0, -1972($fp)
	addi $t0, $fp, -232
	sw $t0, -1976($fp)
	li $t0, 6
	sw $t0, -1980($fp)
	lw $t0, -1980($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1984($fp)
	lw $t0, -1976($fp)
	lw $t1, -1984($fp)
	add $t0, $t0, $t1
	sw $t0, -1988($fp)
	lw $t0, -1972($fp)
	lw $t1, -1988($fp)
	sw $t0, 0($t1)
	lw $t0, -1988($fp)
	lw $t1, 0($t0)
	sw $t1, -1992($fp)
	li $t0, 4823
	sw $t0, -1996($fp)
	addi $t0, $fp, -232
	sw $t0, -2000($fp)
	li $t0, 7
	sw $t0, -2004($fp)
	lw $t0, -2004($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2008($fp)
	lw $t0, -2000($fp)
	lw $t1, -2008($fp)
	add $t0, $t0, $t1
	sw $t0, -2012($fp)
	lw $t0, -1996($fp)
	lw $t1, -2012($fp)
	sw $t0, 0($t1)
	lw $t0, -2012($fp)
	lw $t1, 0($t0)
	sw $t1, -2016($fp)
	li $t0, 42089
	sw $t0, -2020($fp)
	addi $t0, $fp, -232
	sw $t0, -2024($fp)
	li $t0, 8
	sw $t0, -2028($fp)
	lw $t0, -2028($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2032($fp)
	lw $t0, -2024($fp)
	lw $t1, -2032($fp)
	add $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t0, -2020($fp)
	lw $t1, -2036($fp)
	sw $t0, 0($t1)
	lw $t0, -2036($fp)
	lw $t1, 0($t0)
	sw $t1, -2040($fp)
	li $t0, 55340
	sw $t0, -2044($fp)
	addi $t0, $fp, -232
	sw $t0, -2048($fp)
	li $t0, 9
	sw $t0, -2052($fp)
	lw $t0, -2052($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2056($fp)
	lw $t0, -2048($fp)
	lw $t1, -2056($fp)
	add $t0, $t0, $t1
	sw $t0, -2060($fp)
	lw $t0, -2044($fp)
	lw $t1, -2060($fp)
	sw $t0, 0($t1)
	lw $t0, -2060($fp)
	lw $t1, 0($t0)
	sw $t1, -2064($fp)
	li $t0, 50736
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	sw $t0, -2076($fp)
	li $t0, 20533
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	sw $t0, -2088($fp)
	li $t0, 25931
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	sw $t0, -2100($fp)
	li $t0, 56741
	sw $t0, -2104($fp)
	addi $t0, $fp, -252
	sw $t0, -2108($fp)
	li $t0, 0
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
	li $t0, 11887
	sw $t0, -2128($fp)
	addi $t0, $fp, -252
	sw $t0, -2132($fp)
	li $t0, 1
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
	li $t0, 32651
	sw $t0, -2152($fp)
	addi $t0, $fp, -252
	sw $t0, -2156($fp)
	li $t0, 2
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
	li $t0, 32883
	sw $t0, -2176($fp)
	addi $t0, $fp, -252
	sw $t0, -2180($fp)
	li $t0, 3
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
	li $t0, 6755
	sw $t0, -2200($fp)
	addi $t0, $fp, -252
	sw $t0, -2204($fp)
	li $t0, 4
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
	li $t0, 44202
	sw $t0, -2224($fp)
	lw $t0, -2224($fp)
	sw $t0, -2228($fp)
	lw $t0, -2228($fp)
	sw $t0, -2232($fp)
	addi $t0, $fp, -16
	sw $t0, -2236($fp)
	li $t0, 0
	sw $t0, -2240($fp)
	li $t0, 40607
	sw $t0, -2244($fp)
	li $t0, 18208
	sw $t0, -2248($fp)
	lw $t1, -2244($fp)
	lw $t2, -2248($fp)
	bgt $t1, $t2, label367
	j label368
label367:
	li $t0, 1
	sw $t0, -2240($fp)
label368:
	li $t0, 4
	lw $t1, -2240($fp)
	mul $t0, $t0, $t1
	sw $t0, -2252($fp)
	lw $t0, -2252($fp)
	lw $t1, -2236($fp)
	add $t0, $t0, $t1
	sw $t0, -2256($fp)
	lw $t0, -2256($fp)
	lw $t1, 0($t0)
	sw $t1, -2260($fp)
	lw $t0, -500($fp)
	sw $t0, -2264($fp)
	lw $t1, -2260($fp)
	lw $t2, -2264($fp)
	ble $t1, $t2, label364
	j label365
label364:
	li $t0, 58558
	sw $t0, -2268($fp)
	li $t0, 0
	lw $t1, -2268($fp)
	sub $t0, $t0, $t1
	sw $t0, -2272($fp)
	li $t0, 0
	lw $t1, -2272($fp)
	sub $t0, $t0, $t1
	sw $t0, -2276($fp)
	j label366
label365:
	li $t0, 0
	sw $t0, -2280($fp)
	lw $t0, -740($fp)
	sw $t0, -2284($fp)
	lw $t1, -2284($fp)
	li $t2, 0
	bne $t1, $t2, label374
	j label373
label373:
	li $t0, 1
	sw $t0, -2280($fp)
label374:
	li $t0, 51730
	sw $t0, -2288($fp)
	li $t0, 0
	lw $t1, -2288($fp)
	sub $t0, $t0, $t1
	sw $t0, -2292($fp)
	lw $t0, -2280($fp)
	lw $t1, -2292($fp)
	add $t0, $t0, $t1
	sw $t0, -2296($fp)
	lw $t0, -512($fp)
	sw $t0, -2300($fp)
	li $t0, 24103
	sw $t0, -2304($fp)
	lw $t0, -2300($fp)
	lw $t1, -2304($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2308($fp)
	li $t0, 23173
	sw $t0, -2312($fp)
	lw $t0, -2308($fp)
	lw $t1, -2312($fp)
	add $t0, $t0, $t1
	sw $t0, -2316($fp)
	lw $t1, -2296($fp)
	lw $t2, -2316($fp)
	bgt $t1, $t2, label369
	j label372
label372:
	li $t0, 28714
	sw $t0, -2320($fp)
	li $t0, 19116
	sw $t0, -2324($fp)
	lw $t0, -2320($fp)
	lw $t1, -2324($fp)
	mul $t0, $t0, $t1
	sw $t0, -2328($fp)
	addi $sp, $sp, -4
	lw $t0, -2328($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2332($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2336($fp)
	lw $t0, -1772($fp)
	sw $t0, -2340($fp)
	lw $t1, -2340($fp)
	li $t2, 0
	bne $t1, $t2, label376
	j label375
label375:
	li $t0, 1
	sw $t0, -2336($fp)
label376:
	lw $t0, -2332($fp)
	lw $t1, -2336($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2344($fp)
	lw $t1, -2344($fp)
	li $t2, 0
	bne $t1, $t2, label369
	j label370
label369:
	li $t0, 52919
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	sw $t0, -2356($fp)
	lw $t0, -272($fp)
	sw $t0, -2360($fp)
	li $t0, 32665
	sw $t0, -2364($fp)
	lw $t0, -2360($fp)
	lw $t1, -2364($fp)
	add $t0, $t0, $t1
	sw $t0, -2368($fp)
	addi $sp, $sp, -4
	lw $t0, -2368($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2372($fp)
	addi $sp, $sp, 8
	lw $t1, -2372($fp)
	li $t2, 0
	bne $t1, $t2, label380
	j label378
label380:
	li $t0, 0
	sw $t0, -2376($fp)
	li $t0, 0
	sw $t0, -2380($fp)
	lw $t0, -764($fp)
	sw $t0, -2384($fp)
	lw $t0, -776($fp)
	sw $t0, -2388($fp)
	lw $t0, -2384($fp)
	lw $t1, -2388($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2392($fp)
	li $t0, 3379
	sw $t0, -2396($fp)
	lw $t1, -2392($fp)
	lw $t2, -2396($fp)
	beq $t1, $t2, label383
	j label384
label383:
	li $t0, 1
	sw $t0, -2380($fp)
label384:
	addi $sp, $sp, -4
	lw $t0, -2380($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2400($fp)
	addi $sp, $sp, 8
	li $t0, 26502
	sw $t0, -2404($fp)
	lw $t1, -2400($fp)
	lw $t2, -2404($fp)
	beq $t1, $t2, label381
	j label382
label381:
	li $t0, 1
	sw $t0, -2376($fp)
label382:
	addi $sp, $sp, -4
	lw $t0, -2376($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2408($fp)
	addi $sp, $sp, 8
	lw $t1, -2408($fp)
	li $t2, 0
	bne $t1, $t2, label377
	j label378
label377:
	addi $t0, $fp, -124
	sw $t0, -2412($fp)
	lw $t0, -1808($fp)
	sw $t0, -2416($fp)
	addi $sp, $sp, -4
	lw $t0, -2416($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2420($fp)
	addi $sp, $sp, 8
	li $t0, 4
	lw $t1, -2420($fp)
	mul $t0, $t0, $t1
	sw $t0, -2424($fp)
	lw $t0, -2424($fp)
	lw $t1, -2412($fp)
	add $t0, $t0, $t1
	sw $t0, -2428($fp)
	lw $t0, -2428($fp)
	lw $t1, 0($t0)
	sw $t1, -2432($fp)
	lw $ra, -4($fp)
	lw $v0, -2432($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label379
label378:
	li $t0, 27388
	sw $t0, -2436($fp)
	lw $t0, -440($fp)
	sw $t0, -2440($fp)
	lw $t0, -2436($fp)
	lw $t1, -2440($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2444($fp)
	lw $t0, -2352($fp)
	sw $t0, -2448($fp)
	li $t0, 0
	lw $t1, -2448($fp)
	sub $t0, $t0, $t1
	sw $t0, -2452($fp)
	lw $t0, -2444($fp)
	lw $t1, -2452($fp)
	mul $t0, $t0, $t1
	sw $t0, -2456($fp)
	li $t0, 11156
	sw $t0, -2460($fp)
	lw $t0, -2456($fp)
	lw $t1, -2460($fp)
	add $t0, $t0, $t1
	sw $t0, -2464($fp)
	addi $t0, $fp, -192
	sw $t0, -2468($fp)
	li $t0, 0
	sw $t0, -2472($fp)
	li $t0, 20472
	sw $t0, -2476($fp)
	li $t0, 55159
	sw $t0, -2480($fp)
	lw $t1, -2476($fp)
	lw $t2, -2480($fp)
	ble $t1, $t2, label388
	j label389
label388:
	li $t0, 1
	sw $t0, -2472($fp)
label389:
	li $t0, 4
	lw $t1, -2472($fp)
	mul $t0, $t0, $t1
	sw $t0, -2484($fp)
	lw $t0, -2484($fp)
	lw $t1, -2468($fp)
	add $t0, $t0, $t1
	sw $t0, -2488($fp)
	lw $t0, -2488($fp)
	lw $t1, 0($t0)
	sw $t1, -2492($fp)
	lw $t0, -2464($fp)
	lw $t1, -2492($fp)
	add $t0, $t0, $t1
	sw $t0, -2496($fp)
	lw $t1, -2496($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label386
label385:
	lw $t0, -2228($fp)
	sw $t0, -2500($fp)
	lw $t1, -2500($fp)
	li $t2, 0
	bne $t1, $t2, label390
	j label391
label390:
	addi $t0, $fp, -192
	sw $t0, -2504($fp)
	lw $t0, -440($fp)
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
	li $t0, 18957
	sw $t0, -2524($fp)
	lw $t0, -764($fp)
	sw $t0, -2528($fp)
	lw $t0, -2524($fp)
	lw $t1, -2528($fp)
	sub $t0, $t0, $t1
	sw $t0, -2532($fp)
	lw $t1, -2520($fp)
	lw $t2, -2532($fp)
	bne $t1, $t2, label397
	j label394
label397:
	li $t0, 51791
	sw $t0, -2536($fp)
	lw $t1, -2536($fp)
	li $t2, 0
	bne $t1, $t2, label396
	j label394
label396:
	addi $t0, $fp, -124
	sw $t0, -2540($fp)
	lw $t0, -440($fp)
	sw $t0, -2544($fp)
	li $t0, 1426
	sw $t0, -2548($fp)
	lw $t0, -2544($fp)
	lw $t1, -2548($fp)
	add $t0, $t0, $t1
	sw $t0, -2552($fp)
	li $t0, 4
	lw $t1, -2552($fp)
	mul $t0, $t0, $t1
	sw $t0, -2556($fp)
	lw $t0, -2556($fp)
	lw $t1, -2540($fp)
	add $t0, $t0, $t1
	sw $t0, -2560($fp)
	lw $t0, -2560($fp)
	lw $t1, 0($t0)
	sw $t1, -2564($fp)
	lw $t1, -2564($fp)
	li $t2, 0
	bne $t1, $t2, label393
	j label394
label393:
	li $t0, 0
	sw $t0, -2568($fp)
	li $t0, 23781
	sw $t0, -2572($fp)
	lw $t0, -2352($fp)
	sw $t0, -2576($fp)
	lw $t1, -2572($fp)
	lw $t2, -2576($fp)
	bne $t1, $t2, label401
	j label402
label401:
	li $t0, 1
	sw $t0, -2568($fp)
label402:
	li $t0, 28344
	sw $t0, -2580($fp)
	li $t0, 56767
	sw $t0, -2584($fp)
	lw $t0, -2580($fp)
	lw $t1, -2584($fp)
	sub $t0, $t0, $t1
	sw $t0, -2588($fp)
	addi $sp, $sp, -4
	lw $t0, -2588($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2592($fp)
	addi $sp, $sp, 8
	lw $t0, -512($fp)
	sw $t0, -2596($fp)
	lw $t0, -2592($fp)
	lw $t1, -2596($fp)
	sub $t0, $t0, $t1
	sw $t0, -2600($fp)
	lw $t1, -2568($fp)
	lw $t2, -2600($fp)
	beq $t1, $t2, label398
	j label399
label398:
	li $t0, 0
	sw $t0, -2604($fp)
	lw $t0, -776($fp)
	sw $t0, -2608($fp)
	li $t0, 8981
	sw $t0, -2612($fp)
	li $t0, 0
	lw $t1, -2612($fp)
	sub $t0, $t0, $t1
	sw $t0, -2616($fp)
	li $t0, 0
	lw $t1, -2616($fp)
	sub $t0, $t0, $t1
	sw $t0, -2620($fp)
	lw $t0, -2608($fp)
	lw $t1, -2620($fp)
	mul $t0, $t0, $t1
	sw $t0, -2624($fp)
	lw $t1, -2624($fp)
	li $t2, 0
	bne $t1, $t2, label405
	j label404
label405:
	addi $t0, $fp, -48
	sw $t0, -2628($fp)
	li $t0, 5
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
	lw $t0, -500($fp)
	sw $t0, -2648($fp)
	lw $t0, -2644($fp)
	lw $t1, -2648($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2652($fp)
	lw $t1, -2652($fp)
	li $t2, 0
	bne $t1, $t2, label403
	j label404
label403:
	li $t0, 1
	sw $t0, -2604($fp)
label404:
	j label400
label399:
	li $t0, 186
	sw $t0, -2656($fp)
	li $t0, 0
	lw $t1, -2656($fp)
	sub $t0, $t0, $t1
	sw $t0, -2660($fp)
	li $t0, 0
	lw $t1, -2660($fp)
	sub $t0, $t0, $t1
	sw $t0, -2664($fp)
label400:
	j label395
label394:
	lw $t0, -1040($fp)
	sw $t0, -2668($fp)
	lw $t0, -1784($fp)
	sw $t0, -2672($fp)
	li $t0, 60764
	sw $t0, -2676($fp)
	lw $t0, -500($fp)
	sw $t0, -2680($fp)
	lw $t0, -2676($fp)
	lw $t1, -2680($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2684($fp)
	li $t0, 49814
	sw $t0, -2688($fp)
	lw $t0, -2684($fp)
	lw $t1, -2688($fp)
	sub $t0, $t0, $t1
	sw $t0, -2692($fp)
	addi $sp, $sp, -4
	lw $t0, -2692($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2696($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -2696($fp)
	sub $t0, $t0, $t1
	sw $t0, -2700($fp)
	lw $t0, -2672($fp)
	lw $t1, -2700($fp)
	mul $t0, $t0, $t1
	sw $t0, -2704($fp)
	li $t0, 0
	lw $t1, -2704($fp)
	sub $t0, $t0, $t1
	sw $t0, -2708($fp)
	lw $t0, -2668($fp)
	lw $t1, -2708($fp)
	mul $t0, $t0, $t1
	sw $t0, -2712($fp)
label395:
	j label392
label391:
	addi $t0, $fp, -88
	sw $t0, -2716($fp)
	li $t0, 6
	sw $t0, -2720($fp)
	li $t0, 4
	lw $t1, -2720($fp)
	mul $t0, $t0, $t1
	sw $t0, -2724($fp)
	lw $t0, -2724($fp)
	lw $t1, -2716($fp)
	add $t0, $t0, $t1
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	lw $t1, 0($t0)
	sw $t1, -2732($fp)
	addi $sp, $sp, -4
	lw $t0, -2732($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2736($fp)
	addi $sp, $sp, 8
	lw $t1, -2736($fp)
	li $t2, 0
	bne $t1, $t2, label407
	j label406
label406:
	li $t0, 0
	sw $t0, -2740($fp)
	li $t0, 28480
	sw $t0, -2744($fp)
	li $t0, 0
	sw $t0, -2748($fp)
	li $t0, 0
	sw $t0, -2752($fp)
	li $t0, 8140
	sw $t0, -2756($fp)
	lw $t1, -2756($fp)
	li $t2, 0
	bne $t1, $t2, label414
	j label413
label413:
	li $t0, 1
	sw $t0, -2752($fp)
label414:
	li $t0, 20192
	sw $t0, -2760($fp)
	lw $t1, -2752($fp)
	lw $t2, -2760($fp)
	bgt $t1, $t2, label411
	j label412
label411:
	li $t0, 1
	sw $t0, -2748($fp)
label412:
	addi $sp, $sp, -4
	lw $t0, -2748($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2764($fp)
	addi $sp, $sp, 8
	lw $t0, -2744($fp)
	lw $t1, -2764($fp)
	add $t0, $t0, $t1
	sw $t0, -2768($fp)
	li $t0, 0
	sw $t0, -2772($fp)
	li $t0, 0
	sw $t0, -2776($fp)
	li $t0, 21502
	sw $t0, -2780($fp)
	lw $t1, -2780($fp)
	li $t2, 0
	bne $t1, $t2, label418
	j label417
label417:
	li $t0, 1
	sw $t0, -2776($fp)
label418:
	li $t0, 0
	lw $t1, -2776($fp)
	sub $t0, $t0, $t1
	sw $t0, -2784($fp)
	lw $t0, -1508($fp)
	sw $t0, -2788($fp)
	lw $t0, -1388($fp)
	sw $t0, -2792($fp)
	lw $t0, -2788($fp)
	lw $t1, -2792($fp)
	add $t0, $t0, $t1
	sw $t0, -2796($fp)
	lw $t1, -2784($fp)
	lw $t2, -2796($fp)
	bgt $t1, $t2, label415
	j label416
label415:
	li $t0, 1
	sw $t0, -2772($fp)
label416:
	lw $t1, -2768($fp)
	lw $t2, -2772($fp)
	beq $t1, $t2, label409
	j label410
label409:
	li $t0, 1
	sw $t0, -2740($fp)
label410:
	j label408
label407:
	li $t0, 0
	sw $t0, -2800($fp)
	li $t0, 0
	sw $t0, -2804($fp)
	lw $t0, -500($fp)
	sw $t0, -2808($fp)
	lw $t0, -1508($fp)
	sw $t0, -2812($fp)
	lw $t0, -2808($fp)
	lw $t1, -2812($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2816($fp)
	lw $t1, -2816($fp)
	li $t2, 0
	bne $t1, $t2, label424
	j label423
label424:
	li $t0, 59870
	sw $t0, -2820($fp)
	lw $t1, -2820($fp)
	li $t2, 0
	bne $t1, $t2, label422
	j label423
label422:
	li $t0, 1
	sw $t0, -2804($fp)
label423:
	addi $sp, $sp, -4
	lw $t0, -2804($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2824($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -2824($fp)
	sub $t0, $t0, $t1
	sw $t0, -2828($fp)
	li $t0, 0
	lw $t1, -2828($fp)
	sub $t0, $t0, $t1
	sw $t0, -2832($fp)
	addi $t0, $fp, -140
	sw $t0, -2836($fp)
	li $t0, 3
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
	lw $t1, -2832($fp)
	lw $t2, -2852($fp)
	ble $t1, $t2, label419
	j label421
label421:
	li $t0, 0
	sw $t0, -2856($fp)
	lw $t0, -1028($fp)
	sw $t0, -2860($fp)
	lw $t1, -2860($fp)
	li $t2, 0
	bne $t1, $t2, label426
	j label425
label425:
	li $t0, 1
	sw $t0, -2856($fp)
label426:
	li $t0, 23048
	sw $t0, -2864($fp)
	lw $t0, -2856($fp)
	lw $t1, -2864($fp)
	sub $t0, $t0, $t1
	sw $t0, -2868($fp)
	li $t0, 63411
	sw $t0, -2872($fp)
	lw $t1, -2868($fp)
	lw $t2, -2872($fp)
	bgt $t1, $t2, label419
	j label420
label419:
	li $t0, 1
	sw $t0, -2800($fp)
label420:
label408:
label392:
	j label387
label386:
	li $t0, 0
	sw $t0, -2876($fp)
	lw $t0, 4($fp)
	sw $t0, -2880($fp)
	li $t0, 32058
	sw $t0, -2884($fp)
	lw $t0, -2880($fp)
	lw $t1, -2884($fp)
	mul $t0, $t0, $t1
	sw $t0, -2888($fp)
	lw $t1, -2888($fp)
	li $t2, 0
	bne $t1, $t2, label427
	j label429
label429:
	lw $t0, -1772($fp)
	sw $t0, -2892($fp)
	lw $t1, -2892($fp)
	li $t2, 0
	bne $t1, $t2, label427
	j label428
label427:
	li $t0, 1
	sw $t0, -2876($fp)
label428:
	addi $sp, $sp, -4
	lw $t0, -2876($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2896($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -2896($fp)
	sub $t0, $t0, $t1
	sw $t0, -2900($fp)
label387:
label379:
	li $t0, 55713
	sw $t0, -2904($fp)
	lw $t0, -2904($fp)
	sw $t0, -2908($fp)
	lw $t0, -2908($fp)
	sw $t0, -2912($fp)
	li $t0, 1254
	sw $t0, -2916($fp)
	lw $t0, -2916($fp)
	sw $t0, -2920($fp)
	lw $t0, -2920($fp)
	sw $t0, -2924($fp)
	li $t0, 0
	sw $t0, -2928($fp)
	li $t0, 0
	sw $t0, -2932($fp)
	li $t0, 58560
	sw $t0, -2936($fp)
	lw $t0, -560($fp)
	sw $t0, -2940($fp)
	lw $t1, -2936($fp)
	lw $t2, -2940($fp)
	blt $t1, $t2, label433
	j label434
label433:
	li $t0, 1
	sw $t0, -2932($fp)
label434:
	lw $t0, -1736($fp)
	sw $t0, -2944($fp)
	lw $t1, -2932($fp)
	lw $t2, -2944($fp)
	beq $t1, $t2, label432
	j label431
label432:
	li $t0, 17565
	sw $t0, -2948($fp)
	li $t0, 12411
	sw $t0, -2952($fp)
	lw $t0, -2948($fp)
	lw $t1, -2952($fp)
	mul $t0, $t0, $t1
	sw $t0, -2956($fp)
	lw $t1, -2956($fp)
	li $t2, 0
	bne $t1, $t2, label430
	j label431
label430:
	li $t0, 1
	sw $t0, -2928($fp)
label431:
	lw $t0, -2928($fp)
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -2960($fp)
	li $t0, 0
	sw $t0, -2964($fp)
	lw $t0, -452($fp)
	sw $t0, -2968($fp)
	lw $t0, -2968($fp)
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	sw $t0, -2972($fp)
	addi $sp, $sp, -4
	lw $t0, -2972($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2976($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -2976($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2980($fp)
	addi $sp, $sp, 8
	lw $t1, -2980($fp)
	li $t2, 0
	bne $t1, $t2, label436
	j label437
label437:
	li $t0, 0
	sw $t0, -2984($fp)
	li $t0, 0
	sw $t0, -2988($fp)
	lw $t0, -752($fp)
	sw $t0, -2992($fp)
	li $t0, 13496
	sw $t0, -2996($fp)
	lw $t1, -2992($fp)
	lw $t2, -2996($fp)
	bge $t1, $t2, label440
	j label441
label440:
	li $t0, 1
	sw $t0, -2988($fp)
label441:
	lw $t0, -1508($fp)
	sw $t0, -3000($fp)
	lw $t1, -2988($fp)
	lw $t2, -3000($fp)
	bne $t1, $t2, label438
	j label439
label438:
	li $t0, 1
	sw $t0, -2984($fp)
label439:
	li $t0, 0
	sw $t0, -3004($fp)
	lw $t0, -2920($fp)
	sw $t0, -3008($fp)
	lw $t0, -1796($fp)
	sw $t0, -3012($fp)
	lw $t1, -3008($fp)
	lw $t2, -3012($fp)
	ble $t1, $t2, label442
	j label443
label442:
	li $t0, 1
	sw $t0, -3004($fp)
label443:
	lw $t1, -2984($fp)
	lw $t2, -3004($fp)
	bne $t1, $t2, label435
	j label436
label435:
	li $t0, 1
	sw $t0, -2964($fp)
label436:
	li $t0, 0
	sw $t0, -3016($fp)
	lw $t0, -296($fp)
	sw $t0, -3020($fp)
	li $t0, 0
	sw $t0, -3024($fp)
	lw $t0, -752($fp)
	sw $t0, -3028($fp)
	lw $t1, -3028($fp)
	li $t2, 0
	bne $t1, $t2, label447
	j label446
label446:
	li $t0, 1
	sw $t0, -3024($fp)
label447:
	lw $t0, -308($fp)
	sw $t0, -3032($fp)
	li $t0, 0
	lw $t1, -3032($fp)
	sub $t0, $t0, $t1
	sw $t0, -3036($fp)
	lw $t0, -3024($fp)
	lw $t1, -3036($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3040($fp)
	li $t0, 0
	lw $t1, -3040($fp)
	sub $t0, $t0, $t1
	sw $t0, -3044($fp)
	lw $t1, -3020($fp)
	lw $t2, -3044($fp)
	beq $t1, $t2, label444
	j label445
label444:
	li $t0, 1
	sw $t0, -3016($fp)
label445:
	lw $t0, -452($fp)
	sw $t0, -3048($fp)
	lw $t0, -3048($fp)
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -3052($fp)
	addi $sp, $sp, -4
	lw $t0, -3052($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3056($fp)
	addi $sp, $sp, 8
	li $t0, 7189
	sw $t0, -3060($fp)
	li $t0, 0
	lw $t1, -3060($fp)
	sub $t0, $t0, $t1
	sw $t0, -3064($fp)
	addi $sp, $sp, -4
	lw $t0, -3064($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3068($fp)
	addi $sp, $sp, 8
	lw $t0, -3056($fp)
	lw $t1, -3068($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3072($fp)
	li $t0, 31368
	sw $t0, -3076($fp)
	lw $t0, -3072($fp)
	lw $t1, -3076($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3080($fp)
	lw $t0, -1052($fp)
	sw $t0, -3084($fp)
	lw $t0, -3084($fp)
	sw $t0, -2908($fp)
	lw $t0, -2908($fp)
	sw $t0, -3088($fp)
	lw $t1, -3088($fp)
	li $t2, 0
	bne $t1, $t2, label448
	j label449
label448:
	addi $t0, $fp, -88
	sw $t0, -3092($fp)
	li $t0, 0
	sw $t0, -3096($fp)
	lw $t0, -764($fp)
	sw $t0, -3100($fp)
	lw $t0, -2228($fp)
	sw $t0, -3104($fp)
	lw $t0, -3100($fp)
	lw $t1, -3104($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3108($fp)
	lw $t0, -1028($fp)
	sw $t0, -3112($fp)
	lw $t0, -3108($fp)
	lw $t1, -3112($fp)
	add $t0, $t0, $t1
	sw $t0, -3116($fp)
	lw $t0, -320($fp)
	sw $t0, -3120($fp)
	lw $t0, -500($fp)
	sw $t0, -3124($fp)
	lw $t0, -3120($fp)
	lw $t1, -3124($fp)
	sub $t0, $t0, $t1
	sw $t0, -3128($fp)
	lw $t1, -3116($fp)
	lw $t2, -3128($fp)
	beq $t1, $t2, label454
	j label455
label454:
	li $t0, 1
	sw $t0, -3096($fp)
label455:
	li $t0, 4
	lw $t1, -3096($fp)
	mul $t0, $t0, $t1
	sw $t0, -3132($fp)
	lw $t0, -3132($fp)
	lw $t1, -3092($fp)
	add $t0, $t0, $t1
	sw $t0, -3136($fp)
	lw $t0, -3136($fp)
	lw $t1, 0($t0)
	sw $t1, -3140($fp)
	lw $t1, -3140($fp)
	li $t2, 0
	bne $t1, $t2, label451
	j label452
label451:
	li $t0, 0
	sw $t0, -3144($fp)
	li $t0, 65287
	sw $t0, -3148($fp)
	li $t0, 0
	lw $t1, -3148($fp)
	sub $t0, $t0, $t1
	sw $t0, -3152($fp)
	lw $t1, -3152($fp)
	li $t2, 0
	bne $t1, $t2, label457
	j label456
label456:
	li $t0, 1
	sw $t0, -3144($fp)
label457:
	j label453
label452:
	li $t0, 0
	sw $t0, -3156($fp)
	li $t0, 8615
	sw $t0, -3160($fp)
	lw $t1, -3160($fp)
	li $t2, 0
	bne $t1, $t2, label459
	j label458
label458:
	li $t0, 1
	sw $t0, -3156($fp)
label459:
	li $t0, 0
	lw $t1, -3156($fp)
	sub $t0, $t0, $t1
	sw $t0, -3164($fp)
label453:
label449:
	j label371
label370:
	lw $t0, -332($fp)
	sw $t0, -3168($fp)
	lw $ra, -4($fp)
	lw $v0, -3168($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label371:
label366:
	li $t0, 0
	sw $t0, -3172($fp)
	lw $t0, -740($fp)
	sw $t0, -3176($fp)
	lw $t0, -500($fp)
	sw $t0, -3180($fp)
	lw $t0, -3176($fp)
	lw $t1, -3180($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3184($fp)
	lw $t0, -476($fp)
	sw $t0, -3188($fp)
	lw $t1, -3184($fp)
	lw $t2, -3188($fp)
	beq $t1, $t2, label460
	j label462
label462:
	li $t0, 55149
	sw $t0, -3192($fp)
	lw $t1, -3192($fp)
	li $t2, 0
	bne $t1, $t2, label460
	j label461
label460:
	li $t0, 1
	sw $t0, -3172($fp)
label461:
	lw $t0, -2228($fp)
	sw $t0, -3196($fp)
	lw $t0, -3196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3200($fp)
	li $t0, 28095
	sw $t0, -3204($fp)
	lw $t1, -3204($fp)
	li $t2, 0
	bne $t1, $t2, label463
	j label466
label466:
	li $t0, 65382
	sw $t0, -3208($fp)
	lw $t1, -3208($fp)
	li $t2, 0
	bne $t1, $t2, label463
	j label465
label465:
	lw $t0, -2228($fp)
	sw $t0, -3212($fp)
	lw $t1, -3212($fp)
	li $t2, 0
	bne $t1, $t2, label463
	j label464
label463:
	li $t0, 1
	sw $t0, -3200($fp)
label464:
	addi $sp, $sp, -4
	lw $t0, -3200($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3216($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -3216($fp)
	sub $t0, $t0, $t1
	sw $t0, -3220($fp)
	lw $ra, -4($fp)
	lw $v0, -3220($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label467:
	li $t0, 64131
	sw $t0, -3224($fp)
	lw $t1, -3224($fp)
	li $t2, 0
	bne $t1, $t2, label468
	j label469
label468:
	li $t0, 0
	sw $t0, -3228($fp)
	lw $t0, -2072($fp)
	sw $t0, -3232($fp)
	li $t0, 0
	lw $t1, -3232($fp)
	sub $t0, $t0, $t1
	sw $t0, -3236($fp)
	li $t0, 11436
	sw $t0, -3240($fp)
	lw $t1, -3236($fp)
	lw $t2, -3240($fp)
	bne $t1, $t2, label473
	j label474
label473:
	li $t0, 1
	sw $t0, -3228($fp)
label474:
	addi $sp, $sp, -4
	lw $t0, -3228($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3244($fp)
	addi $sp, $sp, 8
	lw $t1, -3244($fp)
	li $t2, 0
	bne $t1, $t2, label470
	j label471
label470:
label475:
	li $t0, 0
	sw $t0, -3248($fp)
	lw $t0, -764($fp)
	sw $t0, -3252($fp)
	lw $t1, -3252($fp)
	li $t2, 0
	bne $t1, $t2, label479
	j label478
label478:
	li $t0, 1
	sw $t0, -3248($fp)
label479:
	lw $t0, 4($fp)
	sw $t0, -3256($fp)
	lw $t0, -3248($fp)
	lw $t1, -3256($fp)
	mul $t0, $t0, $t1
	sw $t0, -3260($fp)
	addi $sp, $sp, -4
	lw $t0, -3260($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3264($fp)
	addi $sp, $sp, 8
	lw $t1, -3264($fp)
	li $t2, 0
	bne $t1, $t2, label476
	j label477
label476:
label480:
	addi $t0, $fp, -88
	sw $t0, -3268($fp)
	li $t0, 0
	sw $t0, -3272($fp)
	li $t0, 17009
	sw $t0, -3276($fp)
	lw $t1, -3276($fp)
	li $t2, 0
	bne $t1, $t2, label485
	j label484
label485:
	li $t0, 64317
	sw $t0, -3280($fp)
	lw $t0, -776($fp)
	sw $t0, -3284($fp)
	lw $t0, -3280($fp)
	lw $t1, -3284($fp)
	mul $t0, $t0, $t1
	sw $t0, -3288($fp)
	lw $t1, -3288($fp)
	li $t2, 0
	bne $t1, $t2, label483
	j label484
label483:
	li $t0, 1
	sw $t0, -3272($fp)
label484:
	li $t0, 4
	lw $t1, -3272($fp)
	mul $t0, $t0, $t1
	sw $t0, -3292($fp)
	lw $t0, -3292($fp)
	lw $t1, -3268($fp)
	add $t0, $t0, $t1
	sw $t0, -3296($fp)
	lw $t0, -3296($fp)
	lw $t1, 0($t0)
	sw $t1, -3300($fp)
	lw $t1, -3300($fp)
	li $t2, 0
	bne $t1, $t2, label481
	j label482
label481:
	li $t0, 6664
	sw $t0, -3304($fp)
	lw $t0, -3304($fp)
	sw $t0, -3308($fp)
	lw $t0, -3308($fp)
	sw $t0, -3312($fp)
	li $t0, 1287
	sw $t0, -3316($fp)
	lw $t0, -3316($fp)
	sw $t0, -3320($fp)
	lw $t0, -3320($fp)
	sw $t0, -3324($fp)
label486:
	li $t0, 31851
	sw $t0, -3328($fp)
	li $t0, 0
	sw $t0, -3332($fp)
	addi $t0, $fp, -20
	sw $t0, -3336($fp)
	li $t0, 0
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
	lw $t1, -3352($fp)
	li $t2, 0
	bne $t1, $t2, label490
	j label489
label489:
	li $t0, 1
	sw $t0, -3332($fp)
label490:
	lw $t1, -3328($fp)
	lw $t2, -3332($fp)
	beq $t1, $t2, label487
	j label488
label487:
label491:
	li $t0, 39991
	sw $t0, -3356($fp)
	lw $t1, -3356($fp)
	li $t2, 0
	bne $t1, $t2, label492
	j label494
label494:
	li $t0, 28841
	sw $t0, -3360($fp)
	li $t0, 0
	lw $t1, -3360($fp)
	sub $t0, $t0, $t1
	sw $t0, -3364($fp)
	lw $t1, -3364($fp)
	li $t2, 0
	bne $t1, $t2, label492
	j label493
label492:
label495:
	lw $t0, -524($fp)
	sw $t0, -3368($fp)
	lw $t0, -3368($fp)
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -3372($fp)
	addi $sp, $sp, -4
	lw $t0, -3372($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3376($fp)
	addi $sp, $sp, 8
	lw $t1, -3376($fp)
	li $t2, 0
	bne $t1, $t2, label496
	j label497
label496:
	lw $t0, -488($fp)
	sw $t0, -3380($fp)
	li $t0, 51269
	sw $t0, -3384($fp)
	li $t0, 0
	lw $t1, -3384($fp)
	sub $t0, $t0, $t1
	sw $t0, -3388($fp)
	lw $t0, -3380($fp)
	lw $t1, -3388($fp)
	mul $t0, $t0, $t1
	sw $t0, -3392($fp)
	lw $t1, -3392($fp)
	li $t2, 0
	bne $t1, $t2, label502
	j label499
label502:
	lw $t0, -488($fp)
	sw $t0, -3396($fp)
	li $t0, 34326
	sw $t0, -3400($fp)
	lw $t1, -3396($fp)
	lw $t2, -3400($fp)
	bne $t1, $t2, label501
	j label499
label501:
	lw $t0, -1784($fp)
	sw $t0, -3404($fp)
	lw $t0, -452($fp)
	sw $t0, -3408($fp)
	lw $t0, -3404($fp)
	lw $t1, -3408($fp)
	add $t0, $t0, $t1
	sw $t0, -3412($fp)
	lw $t0, -464($fp)
	sw $t0, -3416($fp)
	lw $t0, -3416($fp)
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -3420($fp)
	addi $sp, $sp, -4
	lw $t0, -3420($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3424($fp)
	addi $sp, $sp, 8
	lw $t0, -3412($fp)
	lw $t1, -3424($fp)
	add $t0, $t0, $t1
	sw $t0, -3428($fp)
	lw $t1, -3428($fp)
	li $t2, 0
	bne $t1, $t2, label498
	j label499
label498:
	li $t0, 7600
	sw $t0, -3432($fp)
	lw $t0, -3432($fp)
	sw $t0, -3436($fp)
	lw $t0, -3436($fp)
	sw $t0, -3440($fp)
	lw $t0, -320($fp)
	sw $t0, -3444($fp)
	addi $t0, $fp, -88
	sw $t0, -3448($fp)
	li $t0, 4
	sw $t0, -3452($fp)
	li $t0, 4
	lw $t1, -3452($fp)
	mul $t0, $t0, $t1
	sw $t0, -3456($fp)
	lw $t0, -3456($fp)
	lw $t1, -3448($fp)
	add $t0, $t0, $t1
	sw $t0, -3460($fp)
	lw $t0, -3460($fp)
	lw $t1, 0($t0)
	sw $t1, -3464($fp)
	addi $t0, $fp, -88
	sw $t0, -3468($fp)
	lw $t0, -3436($fp)
	sw $t0, -3472($fp)
	li $t0, 4
	lw $t1, -3472($fp)
	mul $t0, $t0, $t1
	sw $t0, -3476($fp)
	lw $t0, -3476($fp)
	lw $t1, -3468($fp)
	add $t0, $t0, $t1
	sw $t0, -3480($fp)
	lw $t0, -3480($fp)
	lw $t1, 0($t0)
	sw $t1, -3484($fp)
	lw $t0, -3464($fp)
	lw $t1, -3484($fp)
	mul $t0, $t0, $t1
	sw $t0, -3488($fp)
	lw $t0, -3444($fp)
	lw $t1, -3488($fp)
	add $t0, $t0, $t1
	sw $t0, -3492($fp)
	j label500
label499:
	li $t0, 0
	sw $t0, -3496($fp)
	li $t0, 5476
	sw $t0, -3500($fp)
	lw $t1, -3500($fp)
	li $t2, 0
	bne $t1, $t2, label504
	j label503
label503:
	li $t0, 1
	sw $t0, -3496($fp)
label504:
	li $t0, 62466
	sw $t0, -3504($fp)
	li $t0, 0
	sw $t0, -3508($fp)
	li $t0, 47552
	sw $t0, -3512($fp)
	lw $t1, -3512($fp)
	li $t2, 0
	bne $t1, $t2, label506
	j label505
label505:
	li $t0, 1
	sw $t0, -3508($fp)
label506:
	lw $t0, -3504($fp)
	lw $t1, -3508($fp)
	mul $t0, $t0, $t1
	sw $t0, -3516($fp)
	lw $t0, -3496($fp)
	lw $t1, -3516($fp)
	add $t0, $t0, $t1
	sw $t0, -3520($fp)
label500:
	j label495
label497:
	j label491
label493:
	j label486
label488:
label507:
	lw $t0, -1508($fp)
	sw $t0, -3524($fp)
	li $t0, 0
	lw $t1, -3524($fp)
	sub $t0, $t0, $t1
	sw $t0, -3528($fp)
	lw $t1, -3528($fp)
	li $t2, 0
	bne $t1, $t2, label508
	j label509
label508:
	lw $t0, -476($fp)
	sw $t0, -3532($fp)
	addi $sp, $sp, -4
	lw $t0, -3532($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3536($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -3536($fp)
	sub $t0, $t0, $t1
	sw $t0, -3540($fp)
	lw $t0, -3540($fp)
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	sw $t0, -3544($fp)
	lw $t1, -3544($fp)
	li $t2, 0
	bne $t1, $t2, label510
	j label511
label510:
	addi $t0, $fp, -156
	sw $t0, -3548($fp)
	lw $t0, -1784($fp)
	sw $t0, -3552($fp)
	lw $t0, -3552($fp)
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	sw $t0, -3556($fp)
	li $t0, 4
	lw $t1, -3556($fp)
	mul $t0, $t0, $t1
	sw $t0, -3560($fp)
	lw $t0, -3560($fp)
	lw $t1, -3548($fp)
	add $t0, $t0, $t1
	sw $t0, -3564($fp)
	lw $t0, -3564($fp)
	lw $t1, 0($t0)
	sw $t1, -3568($fp)
	li $t0, 0
	sw $t0, -3572($fp)
	li $t0, 6730
	sw $t0, -3576($fp)
	lw $t0, -1496($fp)
	sw $t0, -3580($fp)
	lw $t1, -3576($fp)
	lw $t2, -3580($fp)
	bgt $t1, $t2, label515
	j label514
label515:
	li $t0, 55490
	sw $t0, -3584($fp)
	lw $t1, -3584($fp)
	li $t2, 0
	bne $t1, $t2, label513
	j label514
label513:
	li $t0, 1
	sw $t0, -3572($fp)
label514:
	addi $sp, $sp, -4
	lw $t0, -3572($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3588($fp)
	addi $sp, $sp, 8
	lw $t0, -3568($fp)
	lw $t1, -3588($fp)
	add $t0, $t0, $t1
	sw $t0, -3592($fp)
	lw $ra, -4($fp)
	lw $v0, -3592($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label512
label511:
	lw $t0, -1820($fp)
	sw $t0, -3596($fp)
	lw $t0, -764($fp)
	sw $t0, -3600($fp)
	li $t0, 0
	lw $t1, -3600($fp)
	sub $t0, $t0, $t1
	sw $t0, -3604($fp)
	lw $t0, -3596($fp)
	lw $t1, -3604($fp)
	add $t0, $t0, $t1
	sw $t0, -3608($fp)
	lw $t0, -1796($fp)
	sw $t0, -3612($fp)
	addi $t0, $fp, -252
	sw $t0, -3616($fp)
	lw $t0, -332($fp)
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
	lw $t0, -3612($fp)
	lw $t1, -3632($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3636($fp)
	li $t0, 19142
	sw $t0, -3640($fp)
	lw $t0, -3636($fp)
	lw $t1, -3640($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3644($fp)
	li $t0, 0
	lw $t1, -3644($fp)
	sub $t0, $t0, $t1
	sw $t0, -3648($fp)
	li $t0, 0
	lw $t1, -3648($fp)
	sub $t0, $t0, $t1
	sw $t0, -3652($fp)
label512:
	j label507
label509:
label516:
	li $t0, 0
	sw $t0, -3656($fp)
	lw $t0, -1772($fp)
	sw $t0, -3660($fp)
	lw $t1, -3660($fp)
	li $t2, 0
	bne $t1, $t2, label521
	j label520
label521:
	lw $t0, -500($fp)
	sw $t0, -3664($fp)
	lw $t1, -3664($fp)
	li $t2, 0
	bne $t1, $t2, label519
	j label520
label519:
	li $t0, 1
	sw $t0, -3656($fp)
label520:
	addi $sp, $sp, -4
	lw $t0, -3656($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3668($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3672($fp)
	lw $t0, -3308($fp)
	sw $t0, -3676($fp)
	li $t0, 0
	sw $t0, -3680($fp)
	lw $t0, -1760($fp)
	sw $t0, -3684($fp)
	lw $t0, -764($fp)
	sw $t0, -3688($fp)
	lw $t0, -3684($fp)
	lw $t1, -3688($fp)
	sub $t0, $t0, $t1
	sw $t0, -3692($fp)
	addi $sp, $sp, -4
	lw $t0, -3692($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3696($fp)
	addi $sp, $sp, 8
	lw $t1, -3696($fp)
	li $t2, 0
	bne $t1, $t2, label524
	j label525
label524:
	li $t0, 1
	sw $t0, -3680($fp)
label525:
	lw $t0, -3676($fp)
	lw $t1, -3680($fp)
	mul $t0, $t0, $t1
	sw $t0, -3700($fp)
	li $t0, 0
	lw $t1, -3700($fp)
	sub $t0, $t0, $t1
	sw $t0, -3704($fp)
	lw $t1, -3704($fp)
	li $t2, 0
	bne $t1, $t2, label523
	j label522
label522:
	li $t0, 1
	sw $t0, -3672($fp)
label523:
	lw $t0, -3668($fp)
	lw $t1, -3672($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3708($fp)
	lw $t1, -3708($fp)
	li $t2, 0
	bne $t1, $t2, label517
	j label518
label517:
	li $t0, 0
	sw $t0, -3712($fp)
	li $t0, 3450
	sw $t0, -3716($fp)
	lw $t1, -3716($fp)
	li $t2, 0
	bne $t1, $t2, label526
	j label528
label528:
	li $t0, 0
	sw $t0, -3720($fp)
	lw $t0, -440($fp)
	sw $t0, -3724($fp)
	li $t0, 6770
	sw $t0, -3728($fp)
	lw $t0, -3724($fp)
	lw $t1, -3728($fp)
	mul $t0, $t0, $t1
	sw $t0, -3732($fp)
	li $t0, 50510
	sw $t0, -3736($fp)
	lw $t1, -3732($fp)
	lw $t2, -3736($fp)
	ble $t1, $t2, label529
	j label530
label529:
	li $t0, 1
	sw $t0, -3720($fp)
label530:
	li $t0, 3201
	sw $t0, -3740($fp)
	li $t0, 0
	lw $t1, -3740($fp)
	sub $t0, $t0, $t1
	sw $t0, -3744($fp)
	lw $t1, -3720($fp)
	lw $t2, -3744($fp)
	blt $t1, $t2, label526
	j label527
label526:
	li $t0, 1
	sw $t0, -3712($fp)
label527:
	lw $ra, -4($fp)
	lw $v0, -3712($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label516
label518:
	lw $t0, -3308($fp)
	sw $t0, -3748($fp)
	lw $t0, -3748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3320($fp)
	sw $t0, -3752($fp)
	lw $t0, -3752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3756($fp)
	addi $t0, $fp, -16
	sw $t0, -3760($fp)
	lw $t0, -1736($fp)
	sw $t0, -3764($fp)
	lw $t0, -1280($fp)
	sw $t0, -3768($fp)
	lw $t0, -3764($fp)
	lw $t1, -3768($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3772($fp)
	li $t0, 4
	lw $t1, -3772($fp)
	mul $t0, $t0, $t1
	sw $t0, -3776($fp)
	lw $t0, -3776($fp)
	lw $t1, -3760($fp)
	add $t0, $t0, $t1
	sw $t0, -3780($fp)
	lw $t0, -3780($fp)
	lw $t1, 0($t0)
	sw $t1, -3784($fp)
	lw $t0, -3320($fp)
	sw $t0, -3788($fp)
	addi $sp, $sp, -4
	lw $t0, -3788($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3792($fp)
	addi $sp, $sp, 8
	lw $t1, -3784($fp)
	lw $t2, -3792($fp)
	beq $t1, $t2, label531
	j label532
label531:
	li $t0, 1
	sw $t0, -3756($fp)
label532:
	lw $ra, -4($fp)
	lw $v0, -3756($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -3308($fp)
	sw $t0, -3796($fp)
	lw $t0, -3796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3320($fp)
	sw $t0, -3800($fp)
	lw $t0, -3800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -3804($fp)
	li $t0, 0
	sw $t0, -3808($fp)
	li $t0, 15386
	sw $t0, -3812($fp)
	lw $t1, -3812($fp)
	li $t2, 0
	bne $t1, $t2, label534
	j label533
label533:
	li $t0, 1
	sw $t0, -3808($fp)
label534:
	li $t0, 4
	lw $t1, -3808($fp)
	mul $t0, $t0, $t1
	sw $t0, -3816($fp)
	lw $t0, -3816($fp)
	lw $t1, -3804($fp)
	add $t0, $t0, $t1
	sw $t0, -3820($fp)
	lw $t0, -3820($fp)
	lw $t1, 0($t0)
	sw $t1, -3824($fp)
	lw $ra, -4($fp)
	lw $v0, -3824($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label480
label482:
	j label475
label477:
	j label472
label471:
label535:
	li $t0, 0
	sw $t0, -3828($fp)
	li $t0, 40123
	sw $t0, -3832($fp)
	lw $t1, -3832($fp)
	li $t2, 0
	bne $t1, $t2, label539
	j label538
label538:
	li $t0, 1
	sw $t0, -3828($fp)
label539:
	li $t0, 0
	lw $t1, -3828($fp)
	sub $t0, $t0, $t1
	sw $t0, -3836($fp)
	li $t0, 0
	lw $t1, -3836($fp)
	sub $t0, $t0, $t1
	sw $t0, -3840($fp)
	li $t0, 0
	lw $t1, -3840($fp)
	sub $t0, $t0, $t1
	sw $t0, -3844($fp)
	li $t0, 0
	lw $t1, -3844($fp)
	sub $t0, $t0, $t1
	sw $t0, -3848($fp)
	lw $t1, -3848($fp)
	li $t2, 0
	bne $t1, $t2, label536
	j label537
label536:
	li $t0, 0
	sw $t0, -3852($fp)
	lw $t0, -416($fp)
	sw $t0, -3856($fp)
	lw $t1, -3856($fp)
	li $t2, 0
	bne $t1, $t2, label543
	j label544
label543:
	li $t0, 1
	sw $t0, -3852($fp)
label544:
	li $t0, 31296
	sw $t0, -3860($fp)
	lw $t0, -3852($fp)
	lw $t1, -3860($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3864($fp)
	li $t0, 38719
	sw $t0, -3868($fp)
	lw $t0, -3864($fp)
	lw $t1, -3868($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3872($fp)
	li $t0, 0
	lw $t1, -3872($fp)
	sub $t0, $t0, $t1
	sw $t0, -3876($fp)
	lw $t1, -3876($fp)
	li $t2, 0
	bne $t1, $t2, label540
	j label541
label540:
label545:
	li $t0, 0
	sw $t0, -3880($fp)
	li $t0, 42732
	sw $t0, -3884($fp)
	lw $t1, -3884($fp)
	li $t2, 0
	bne $t1, $t2, label550
	j label549
label550:
	lw $t0, -1772($fp)
	sw $t0, -3888($fp)
	lw $t0, -1736($fp)
	sw $t0, -3892($fp)
	lw $t1, -3888($fp)
	lw $t2, -3892($fp)
	bne $t1, $t2, label548
	j label549
label548:
	li $t0, 1
	sw $t0, -3880($fp)
label549:
	lw $t0, -3880($fp)
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -3896($fp)
	lw $t1, -3896($fp)
	li $t2, 0
	bne $t1, $t2, label546
	j label547
label546:
	li $t0, 0
	sw $t0, -3900($fp)
	lw $t0, -764($fp)
	sw $t0, -3904($fp)
	lw $t1, -3904($fp)
	li $t2, 0
	bne $t1, $t2, label555
	j label554
label554:
	li $t0, 1
	sw $t0, -3900($fp)
label555:
	li $t0, 0
	sw $t0, -3908($fp)
	lw $t0, -1784($fp)
	sw $t0, -3912($fp)
	lw $t1, -3912($fp)
	li $t2, 0
	bne $t1, $t2, label557
	j label558
label558:
	li $t0, 32241
	sw $t0, -3916($fp)
	lw $t1, -3916($fp)
	li $t2, 0
	bne $t1, $t2, label556
	j label557
label556:
	li $t0, 1
	sw $t0, -3908($fp)
label557:
	addi $sp, $sp, -4
	lw $t0, -3908($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3920($fp)
	addi $sp, $sp, 8
	lw $t1, -3900($fp)
	lw $t2, -3920($fp)
	bne $t1, $t2, label551
	j label552
label551:
label559:
	lw $t0, -764($fp)
	sw $t0, -3924($fp)
	lw $t1, -3924($fp)
	li $t2, 0
	bne $t1, $t2, label561
	j label560
label560:
label562:
	li $t0, 0
	sw $t0, -3928($fp)
	lw $t0, -428($fp)
	sw $t0, -3932($fp)
	lw $t0, -260($fp)
	sw $t0, -3936($fp)
	lw $t1, -3932($fp)
	lw $t2, -3936($fp)
	bne $t1, $t2, label565
	j label566
label565:
	li $t0, 1
	sw $t0, -3928($fp)
label566:
	addi $sp, $sp, -4
	lw $t0, -3928($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3940($fp)
	addi $sp, $sp, 8
	lw $t1, -3940($fp)
	li $t2, 0
	bne $t1, $t2, label563
	j label564
label563:
	li $t0, 37500
	sw $t0, -3944($fp)
	li $t0, 0
	lw $t1, -3944($fp)
	sub $t0, $t0, $t1
	sw $t0, -3948($fp)
	lw $ra, -4($fp)
	lw $v0, -3948($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label562
label564:
	j label559
label561:
	j label553
label552:
	li $t0, 0
	sw $t0, -3952($fp)
	lw $t0, -1040($fp)
	sw $t0, -3956($fp)
	lw $t1, -3956($fp)
	li $t2, 0
	bne $t1, $t2, label568
	j label567
label567:
	li $t0, 1
	sw $t0, -3952($fp)
label568:
	lw $t0, -440($fp)
	sw $t0, -3960($fp)
	lw $t0, -3952($fp)
	lw $t1, -3960($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3964($fp)
	lw $ra, -4($fp)
	lw $v0, -3964($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label553:
	j label545
label547:
	j label542
label541:
	li $t0, 49396
	sw $t0, -3968($fp)
	lw $t0, -3968($fp)
	sw $t0, -3972($fp)
	lw $t0, -3972($fp)
	sw $t0, -3976($fp)
	li $t0, 33528
	sw $t0, -3980($fp)
	lw $t0, -3980($fp)
	sw $t0, -3984($fp)
	lw $t0, -3984($fp)
	sw $t0, -3988($fp)
	li $t0, 3815
	sw $t0, -3992($fp)
	lw $t0, -3992($fp)
	sw $t0, -3996($fp)
	lw $t0, -3996($fp)
	sw $t0, -4000($fp)
label569:
	li $t0, 0
	sw $t0, -4004($fp)
	lw $t0, -1280($fp)
	sw $t0, -4008($fp)
	li $t0, 0
	lw $t1, -4008($fp)
	sub $t0, $t0, $t1
	sw $t0, -4012($fp)
	lw $t1, -4012($fp)
	li $t2, 0
	bne $t1, $t2, label575
	j label577
label577:
	lw $t0, -3972($fp)
	sw $t0, -4016($fp)
	lw $t1, -4016($fp)
	li $t2, 0
	bne $t1, $t2, label575
	j label576
label575:
	li $t0, 1
	sw $t0, -4004($fp)
label576:
	addi $sp, $sp, -4
	lw $t0, -4004($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4020($fp)
	addi $sp, $sp, 8
	lw $t0, -1748($fp)
	sw $t0, -4024($fp)
	lw $t0, -4020($fp)
	lw $t1, -4024($fp)
	add $t0, $t0, $t1
	sw $t0, -4028($fp)
	lw $t1, -4028($fp)
	li $t2, 0
	bne $t1, $t2, label570
	j label574
label574:
	li $t0, 58045
	sw $t0, -4032($fp)
	li $t0, 1
	sw $t0, -4036($fp)
	lw $t0, -4032($fp)
	lw $t1, -4036($fp)
	mul $t0, $t0, $t1
	sw $t0, -4040($fp)
	lw $t1, -4040($fp)
	li $t2, 0
	bne $t1, $t2, label570
	j label573
label573:
	lw $t0, -308($fp)
	sw $t0, -4044($fp)
	lw $t1, -4044($fp)
	li $t2, 0
	bne $t1, $t2, label572
	j label570
label572:
	li $t0, 0
	sw $t0, -4048($fp)
	li $t0, 43806
	sw $t0, -4052($fp)
	lw $t0, -3984($fp)
	sw $t0, -4056($fp)
	lw $t0, -4052($fp)
	lw $t1, -4056($fp)
	sub $t0, $t0, $t1
	sw $t0, -4060($fp)
	li $t0, 21350
	sw $t0, -4064($fp)
	lw $t1, -4060($fp)
	lw $t2, -4064($fp)
	beq $t1, $t2, label578
	j label579
label578:
	li $t0, 1
	sw $t0, -4048($fp)
label579:
	li $t0, 0
	sw $t0, -4068($fp)
	li $t0, 49028
	sw $t0, -4072($fp)
	lw $t1, -4072($fp)
	li $t2, 0
	bne $t1, $t2, label581
	j label580
label580:
	li $t0, 1
	sw $t0, -4068($fp)
label581:
	lw $t1, -4048($fp)
	lw $t2, -4068($fp)
	beq $t1, $t2, label570
	j label571
label570:
	addi $t0, $fp, -16
	sw $t0, -4076($fp)
	li $t0, 0
	sw $t0, -4080($fp)
	li $t0, 4
	lw $t1, -4080($fp)
	mul $t0, $t0, $t1
	sw $t0, -4084($fp)
	lw $t0, -4084($fp)
	lw $t1, -4076($fp)
	add $t0, $t0, $t1
	sw $t0, -4088($fp)
	lw $t0, -4088($fp)
	lw $t1, 0($t0)
	sw $t1, -4092($fp)
	li $t0, 13900
	sw $t0, -4096($fp)
	lw $t0, -4092($fp)
	lw $t1, -4096($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4100($fp)
	li $t0, 4435
	sw $t0, -4104($fp)
	lw $t0, -4100($fp)
	lw $t1, -4104($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4108($fp)
	lw $t0, -752($fp)
	sw $t0, -4112($fp)
	lw $t0, -3996($fp)
	sw $t0, -4116($fp)
	lw $t0, -4112($fp)
	lw $t1, -4116($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4120($fp)
	li $t0, 34426
	sw $t0, -4124($fp)
	lw $t0, -4120($fp)
	lw $t1, -4124($fp)
	mul $t0, $t0, $t1
	sw $t0, -4128($fp)
	lw $t0, -4108($fp)
	lw $t1, -4128($fp)
	add $t0, $t0, $t1
	sw $t0, -4132($fp)
	li $t0, 0
	sw $t0, -4136($fp)
	li $t0, 10830
	sw $t0, -4140($fp)
	li $t0, 51987
	sw $t0, -4144($fp)
	lw $t0, -4140($fp)
	lw $t1, -4144($fp)
	add $t0, $t0, $t1
	sw $t0, -4148($fp)
	li $t0, 41157
	sw $t0, -4152($fp)
	lw $t1, -4148($fp)
	lw $t2, -4152($fp)
	bne $t1, $t2, label582
	j label583
label582:
	li $t0, 1
	sw $t0, -4136($fp)
label583:
	addi $sp, $sp, -4
	lw $t0, -4136($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4156($fp)
	addi $sp, $sp, 8
	lw $t0, -4132($fp)
	lw $t1, -4156($fp)
	add $t0, $t0, $t1
	sw $t0, -4160($fp)
	lw $ra, -4($fp)
	lw $v0, -4160($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label569
label571:
	li $t0, 0
	sw $t0, -4164($fp)
	li $t0, 784
	sw $t0, -4168($fp)
	lw $t1, -4168($fp)
	li $t2, 0
	bne $t1, $t2, label585
	j label584
label584:
	li $t0, 1
	sw $t0, -4164($fp)
label585:
	lw $ra, -4($fp)
	lw $v0, -4164($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label586:
	li $t0, 0
	sw $t0, -4172($fp)
	lw $t0, -464($fp)
	sw $t0, -4176($fp)
	lw $t1, -4176($fp)
	li $t2, 0
	bne $t1, $t2, label590
	j label589
label589:
	li $t0, 1
	sw $t0, -4172($fp)
label590:
	li $t0, 51568
	sw $t0, -4180($fp)
	lw $t1, -4172($fp)
	lw $t2, -4180($fp)
	ble $t1, $t2, label587
	j label588
label587:
	addi $t0, $fp, -156
	sw $t0, -4184($fp)
	li $t0, 0
	sw $t0, -4188($fp)
	lw $t0, -524($fp)
	sw $t0, -4192($fp)
	lw $t0, -1496($fp)
	sw $t0, -4196($fp)
	lw $t0, -4192($fp)
	lw $t1, -4196($fp)
	add $t0, $t0, $t1
	sw $t0, -4200($fp)
	li $t0, 60298
	sw $t0, -4204($fp)
	lw $t1, -4200($fp)
	lw $t2, -4204($fp)
	blt $t1, $t2, label591
	j label592
label591:
	li $t0, 1
	sw $t0, -4188($fp)
label592:
	li $t0, 4
	lw $t1, -4188($fp)
	mul $t0, $t0, $t1
	sw $t0, -4208($fp)
	lw $t0, -4208($fp)
	lw $t1, -4184($fp)
	add $t0, $t0, $t1
	sw $t0, -4212($fp)
	lw $t0, -4212($fp)
	lw $t1, 0($t0)
	sw $t1, -4216($fp)
	lw $t0, -1508($fp)
	sw $t0, -4220($fp)
	lw $t0, -4216($fp)
	lw $t1, -4220($fp)
	add $t0, $t0, $t1
	sw $t0, -4224($fp)
	j label586
label588:
label542:
	j label535
label537:
label472:
	j label467
label469:
	addi $t0, $fp, -192
	sw $t0, -4228($fp)
	lw $t0, -1736($fp)
	sw $t0, -4232($fp)
	li $t0, 4
	lw $t1, -4232($fp)
	mul $t0, $t0, $t1
	sw $t0, -4236($fp)
	lw $t0, -4236($fp)
	lw $t1, -4228($fp)
	add $t0, $t0, $t1
	sw $t0, -4240($fp)
	lw $t0, -4240($fp)
	lw $t1, 0($t0)
	sw $t1, -4244($fp)
	li $t0, 4234
	sw $t0, -4248($fp)
	lw $t0, -1508($fp)
	sw $t0, -4252($fp)
	lw $t0, -4248($fp)
	lw $t1, -4252($fp)
	mul $t0, $t0, $t1
	sw $t0, -4256($fp)
	lw $t1, -4244($fp)
	lw $t2, -4256($fp)
	bgt $t1, $t2, label593
	j label597
label597:
	li $t0, 0
	sw $t0, -4260($fp)
	li $t0, 58339
	sw $t0, -4264($fp)
	lw $t1, -4264($fp)
	li $t2, 0
	bne $t1, $t2, label599
	j label598
label598:
	li $t0, 1
	sw $t0, -4260($fp)
label599:
	li $t0, 45272
	sw $t0, -4268($fp)
	lw $t1, -4260($fp)
	lw $t2, -4268($fp)
	blt $t1, $t2, label593
	j label596
label596:
	lw $t0, -1748($fp)
	sw $t0, -4272($fp)
	li $t0, 0
	lw $t1, -4272($fp)
	sub $t0, $t0, $t1
	sw $t0, -4276($fp)
	lw $t1, -4276($fp)
	li $t2, 0
	bne $t1, $t2, label593
	j label594
label593:
	addi $t0, $fp, -16
	sw $t0, -4280($fp)
	li $t0, 0
	sw $t0, -4284($fp)
	li $t0, 0
	sw $t0, -4288($fp)
	lw $t0, -1028($fp)
	sw $t0, -4292($fp)
	li $t0, 0
	lw $t1, -4292($fp)
	sub $t0, $t0, $t1
	sw $t0, -4296($fp)
	lw $t1, -4296($fp)
	li $t2, 0
	bne $t1, $t2, label606
	j label605
label605:
	li $t0, 1
	sw $t0, -4288($fp)
label606:
	li $t0, 7435
	sw $t0, -4300($fp)
	lw $t1, -4288($fp)
	lw $t2, -4300($fp)
	bne $t1, $t2, label603
	j label604
label603:
	li $t0, 1
	sw $t0, -4284($fp)
label604:
	li $t0, 4
	lw $t1, -4284($fp)
	mul $t0, $t0, $t1
	sw $t0, -4304($fp)
	lw $t0, -4304($fp)
	lw $t1, -4280($fp)
	add $t0, $t0, $t1
	sw $t0, -4308($fp)
	lw $t0, -4308($fp)
	lw $t1, 0($t0)
	sw $t1, -4312($fp)
	lw $t1, -4312($fp)
	li $t2, 0
	bne $t1, $t2, label600
	j label601
label600:
	li $t0, 8189
	sw $t0, -4316($fp)
	j label602
label601:
	li $t0, 19860
	sw $t0, -4428($fp)
	lw $t0, -4428($fp)
	sw $t0, -4432($fp)
	lw $t0, -4432($fp)
	sw $t0, -4436($fp)
	li $t0, 38731
	sw $t0, -4440($fp)
	addi $t0, $fp, -4356
	sw $t0, -4444($fp)
	li $t0, 0
	sw $t0, -4448($fp)
	lw $t0, -4448($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4452($fp)
	lw $t0, -4444($fp)
	lw $t1, -4452($fp)
	add $t0, $t0, $t1
	sw $t0, -4456($fp)
	lw $t0, -4440($fp)
	lw $t1, -4456($fp)
	sw $t0, 0($t1)
	lw $t0, -4456($fp)
	lw $t1, 0($t0)
	sw $t1, -4460($fp)
	li $t0, 23421
	sw $t0, -4464($fp)
	addi $t0, $fp, -4356
	sw $t0, -4468($fp)
	li $t0, 1
	sw $t0, -4472($fp)
	lw $t0, -4472($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4476($fp)
	lw $t0, -4468($fp)
	lw $t1, -4476($fp)
	add $t0, $t0, $t1
	sw $t0, -4480($fp)
	lw $t0, -4464($fp)
	lw $t1, -4480($fp)
	sw $t0, 0($t1)
	lw $t0, -4480($fp)
	lw $t1, 0($t0)
	sw $t1, -4484($fp)
	li $t0, 58578
	sw $t0, -4488($fp)
	addi $t0, $fp, -4356
	sw $t0, -4492($fp)
	li $t0, 2
	sw $t0, -4496($fp)
	lw $t0, -4496($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4500($fp)
	lw $t0, -4492($fp)
	lw $t1, -4500($fp)
	add $t0, $t0, $t1
	sw $t0, -4504($fp)
	lw $t0, -4488($fp)
	lw $t1, -4504($fp)
	sw $t0, 0($t1)
	lw $t0, -4504($fp)
	lw $t1, 0($t0)
	sw $t1, -4508($fp)
	li $t0, 15927
	sw $t0, -4512($fp)
	addi $t0, $fp, -4356
	sw $t0, -4516($fp)
	li $t0, 3
	sw $t0, -4520($fp)
	lw $t0, -4520($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4524($fp)
	lw $t0, -4516($fp)
	lw $t1, -4524($fp)
	add $t0, $t0, $t1
	sw $t0, -4528($fp)
	lw $t0, -4512($fp)
	lw $t1, -4528($fp)
	sw $t0, 0($t1)
	lw $t0, -4528($fp)
	lw $t1, 0($t0)
	sw $t1, -4532($fp)
	li $t0, 55663
	sw $t0, -4536($fp)
	addi $t0, $fp, -4356
	sw $t0, -4540($fp)
	li $t0, 4
	sw $t0, -4544($fp)
	lw $t0, -4544($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4548($fp)
	lw $t0, -4540($fp)
	lw $t1, -4548($fp)
	add $t0, $t0, $t1
	sw $t0, -4552($fp)
	lw $t0, -4536($fp)
	lw $t1, -4552($fp)
	sw $t0, 0($t1)
	lw $t0, -4552($fp)
	lw $t1, 0($t0)
	sw $t1, -4556($fp)
	li $t0, 30542
	sw $t0, -4560($fp)
	addi $t0, $fp, -4356
	sw $t0, -4564($fp)
	li $t0, 5
	sw $t0, -4568($fp)
	lw $t0, -4568($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4572($fp)
	lw $t0, -4564($fp)
	lw $t1, -4572($fp)
	add $t0, $t0, $t1
	sw $t0, -4576($fp)
	lw $t0, -4560($fp)
	lw $t1, -4576($fp)
	sw $t0, 0($t1)
	lw $t0, -4576($fp)
	lw $t1, 0($t0)
	sw $t1, -4580($fp)
	li $t0, 65324
	sw $t0, -4584($fp)
	addi $t0, $fp, -4356
	sw $t0, -4588($fp)
	li $t0, 6
	sw $t0, -4592($fp)
	lw $t0, -4592($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4596($fp)
	lw $t0, -4588($fp)
	lw $t1, -4596($fp)
	add $t0, $t0, $t1
	sw $t0, -4600($fp)
	lw $t0, -4584($fp)
	lw $t1, -4600($fp)
	sw $t0, 0($t1)
	lw $t0, -4600($fp)
	lw $t1, 0($t0)
	sw $t1, -4604($fp)
	li $t0, 23655
	sw $t0, -4608($fp)
	addi $t0, $fp, -4356
	sw $t0, -4612($fp)
	li $t0, 7
	sw $t0, -4616($fp)
	lw $t0, -4616($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4620($fp)
	lw $t0, -4612($fp)
	lw $t1, -4620($fp)
	add $t0, $t0, $t1
	sw $t0, -4624($fp)
	lw $t0, -4608($fp)
	lw $t1, -4624($fp)
	sw $t0, 0($t1)
	lw $t0, -4624($fp)
	lw $t1, 0($t0)
	sw $t1, -4628($fp)
	li $t0, 34357
	sw $t0, -4632($fp)
	addi $t0, $fp, -4356
	sw $t0, -4636($fp)
	li $t0, 8
	sw $t0, -4640($fp)
	lw $t0, -4640($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4644($fp)
	lw $t0, -4636($fp)
	lw $t1, -4644($fp)
	add $t0, $t0, $t1
	sw $t0, -4648($fp)
	lw $t0, -4632($fp)
	lw $t1, -4648($fp)
	sw $t0, 0($t1)
	lw $t0, -4648($fp)
	lw $t1, 0($t0)
	sw $t1, -4652($fp)
	li $t0, 57833
	sw $t0, -4656($fp)
	addi $t0, $fp, -4356
	sw $t0, -4660($fp)
	li $t0, 9
	sw $t0, -4664($fp)
	lw $t0, -4664($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4668($fp)
	lw $t0, -4660($fp)
	lw $t1, -4668($fp)
	add $t0, $t0, $t1
	sw $t0, -4672($fp)
	lw $t0, -4656($fp)
	lw $t1, -4672($fp)
	sw $t0, 0($t1)
	lw $t0, -4672($fp)
	lw $t1, 0($t0)
	sw $t1, -4676($fp)
	li $t0, 21415
	sw $t0, -4680($fp)
	addi $t0, $fp, -4368
	sw $t0, -4684($fp)
	li $t0, 0
	sw $t0, -4688($fp)
	lw $t0, -4688($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4692($fp)
	lw $t0, -4684($fp)
	lw $t1, -4692($fp)
	add $t0, $t0, $t1
	sw $t0, -4696($fp)
	lw $t0, -4680($fp)
	lw $t1, -4696($fp)
	sw $t0, 0($t1)
	lw $t0, -4696($fp)
	lw $t1, 0($t0)
	sw $t1, -4700($fp)
	li $t0, 12628
	sw $t0, -4704($fp)
	addi $t0, $fp, -4368
	sw $t0, -4708($fp)
	li $t0, 1
	sw $t0, -4712($fp)
	lw $t0, -4712($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4716($fp)
	lw $t0, -4708($fp)
	lw $t1, -4716($fp)
	add $t0, $t0, $t1
	sw $t0, -4720($fp)
	lw $t0, -4704($fp)
	lw $t1, -4720($fp)
	sw $t0, 0($t1)
	lw $t0, -4720($fp)
	lw $t1, 0($t0)
	sw $t1, -4724($fp)
	li $t0, 13647
	sw $t0, -4728($fp)
	addi $t0, $fp, -4368
	sw $t0, -4732($fp)
	li $t0, 2
	sw $t0, -4736($fp)
	lw $t0, -4736($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4740($fp)
	lw $t0, -4732($fp)
	lw $t1, -4740($fp)
	add $t0, $t0, $t1
	sw $t0, -4744($fp)
	lw $t0, -4728($fp)
	lw $t1, -4744($fp)
	sw $t0, 0($t1)
	lw $t0, -4744($fp)
	lw $t1, 0($t0)
	sw $t1, -4748($fp)
	li $t0, 4907
	sw $t0, -4752($fp)
	lw $t0, -4752($fp)
	sw $t0, -4756($fp)
	lw $t0, -4756($fp)
	sw $t0, -4760($fp)
	li $t0, 25224
	sw $t0, -4764($fp)
	addi $t0, $fp, -4408
	sw $t0, -4768($fp)
	li $t0, 0
	sw $t0, -4772($fp)
	lw $t0, -4772($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4776($fp)
	lw $t0, -4768($fp)
	lw $t1, -4776($fp)
	add $t0, $t0, $t1
	sw $t0, -4780($fp)
	lw $t0, -4764($fp)
	lw $t1, -4780($fp)
	sw $t0, 0($t1)
	lw $t0, -4780($fp)
	lw $t1, 0($t0)
	sw $t1, -4784($fp)
	li $t0, 42597
	sw $t0, -4788($fp)
	addi $t0, $fp, -4408
	sw $t0, -4792($fp)
	li $t0, 1
	sw $t0, -4796($fp)
	lw $t0, -4796($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4800($fp)
	lw $t0, -4792($fp)
	lw $t1, -4800($fp)
	add $t0, $t0, $t1
	sw $t0, -4804($fp)
	lw $t0, -4788($fp)
	lw $t1, -4804($fp)
	sw $t0, 0($t1)
	lw $t0, -4804($fp)
	lw $t1, 0($t0)
	sw $t1, -4808($fp)
	li $t0, 18808
	sw $t0, -4812($fp)
	addi $t0, $fp, -4408
	sw $t0, -4816($fp)
	li $t0, 2
	sw $t0, -4820($fp)
	lw $t0, -4820($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4824($fp)
	lw $t0, -4816($fp)
	lw $t1, -4824($fp)
	add $t0, $t0, $t1
	sw $t0, -4828($fp)
	lw $t0, -4812($fp)
	lw $t1, -4828($fp)
	sw $t0, 0($t1)
	lw $t0, -4828($fp)
	lw $t1, 0($t0)
	sw $t1, -4832($fp)
	li $t0, 29659
	sw $t0, -4836($fp)
	addi $t0, $fp, -4408
	sw $t0, -4840($fp)
	li $t0, 3
	sw $t0, -4844($fp)
	lw $t0, -4844($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4848($fp)
	lw $t0, -4840($fp)
	lw $t1, -4848($fp)
	add $t0, $t0, $t1
	sw $t0, -4852($fp)
	lw $t0, -4836($fp)
	lw $t1, -4852($fp)
	sw $t0, 0($t1)
	lw $t0, -4852($fp)
	lw $t1, 0($t0)
	sw $t1, -4856($fp)
	li $t0, 11488
	sw $t0, -4860($fp)
	addi $t0, $fp, -4408
	sw $t0, -4864($fp)
	li $t0, 4
	sw $t0, -4868($fp)
	lw $t0, -4868($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4872($fp)
	lw $t0, -4864($fp)
	lw $t1, -4872($fp)
	add $t0, $t0, $t1
	sw $t0, -4876($fp)
	lw $t0, -4860($fp)
	lw $t1, -4876($fp)
	sw $t0, 0($t1)
	lw $t0, -4876($fp)
	lw $t1, 0($t0)
	sw $t1, -4880($fp)
	li $t0, 29638
	sw $t0, -4884($fp)
	addi $t0, $fp, -4408
	sw $t0, -4888($fp)
	li $t0, 5
	sw $t0, -4892($fp)
	lw $t0, -4892($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4896($fp)
	lw $t0, -4888($fp)
	lw $t1, -4896($fp)
	add $t0, $t0, $t1
	sw $t0, -4900($fp)
	lw $t0, -4884($fp)
	lw $t1, -4900($fp)
	sw $t0, 0($t1)
	lw $t0, -4900($fp)
	lw $t1, 0($t0)
	sw $t1, -4904($fp)
	li $t0, 16110
	sw $t0, -4908($fp)
	addi $t0, $fp, -4408
	sw $t0, -4912($fp)
	li $t0, 6
	sw $t0, -4916($fp)
	lw $t0, -4916($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4920($fp)
	lw $t0, -4912($fp)
	lw $t1, -4920($fp)
	add $t0, $t0, $t1
	sw $t0, -4924($fp)
	lw $t0, -4908($fp)
	lw $t1, -4924($fp)
	sw $t0, 0($t1)
	lw $t0, -4924($fp)
	lw $t1, 0($t0)
	sw $t1, -4928($fp)
	li $t0, 52645
	sw $t0, -4932($fp)
	addi $t0, $fp, -4408
	sw $t0, -4936($fp)
	li $t0, 7
	sw $t0, -4940($fp)
	lw $t0, -4940($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4944($fp)
	lw $t0, -4936($fp)
	lw $t1, -4944($fp)
	add $t0, $t0, $t1
	sw $t0, -4948($fp)
	lw $t0, -4932($fp)
	lw $t1, -4948($fp)
	sw $t0, 0($t1)
	lw $t0, -4948($fp)
	lw $t1, 0($t0)
	sw $t1, -4952($fp)
	li $t0, 30423
	sw $t0, -4956($fp)
	addi $t0, $fp, -4408
	sw $t0, -4960($fp)
	li $t0, 8
	sw $t0, -4964($fp)
	lw $t0, -4964($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4968($fp)
	lw $t0, -4960($fp)
	lw $t1, -4968($fp)
	add $t0, $t0, $t1
	sw $t0, -4972($fp)
	lw $t0, -4956($fp)
	lw $t1, -4972($fp)
	sw $t0, 0($t1)
	lw $t0, -4972($fp)
	lw $t1, 0($t0)
	sw $t1, -4976($fp)
	li $t0, 2143
	sw $t0, -4980($fp)
	addi $t0, $fp, -4408
	sw $t0, -4984($fp)
	li $t0, 9
	sw $t0, -4988($fp)
	lw $t0, -4988($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4992($fp)
	lw $t0, -4984($fp)
	lw $t1, -4992($fp)
	add $t0, $t0, $t1
	sw $t0, -4996($fp)
	lw $t0, -4980($fp)
	lw $t1, -4996($fp)
	sw $t0, 0($t1)
	lw $t0, -4996($fp)
	lw $t1, 0($t0)
	sw $t1, -5000($fp)
	li $t0, 47407
	sw $t0, -5004($fp)
	lw $t0, -5004($fp)
	sw $t0, -5008($fp)
	lw $t0, -5008($fp)
	sw $t0, -5012($fp)
	li $t0, 34657
	sw $t0, -5016($fp)
	addi $t0, $fp, -4424
	sw $t0, -5020($fp)
	li $t0, 0
	sw $t0, -5024($fp)
	lw $t0, -5024($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5028($fp)
	lw $t0, -5020($fp)
	lw $t1, -5028($fp)
	add $t0, $t0, $t1
	sw $t0, -5032($fp)
	lw $t0, -5016($fp)
	lw $t1, -5032($fp)
	sw $t0, 0($t1)
	lw $t0, -5032($fp)
	lw $t1, 0($t0)
	sw $t1, -5036($fp)
	li $t0, 60482
	sw $t0, -5040($fp)
	addi $t0, $fp, -4424
	sw $t0, -5044($fp)
	li $t0, 1
	sw $t0, -5048($fp)
	lw $t0, -5048($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5052($fp)
	lw $t0, -5044($fp)
	lw $t1, -5052($fp)
	add $t0, $t0, $t1
	sw $t0, -5056($fp)
	lw $t0, -5040($fp)
	lw $t1, -5056($fp)
	sw $t0, 0($t1)
	lw $t0, -5056($fp)
	lw $t1, 0($t0)
	sw $t1, -5060($fp)
	li $t0, 27144
	sw $t0, -5064($fp)
	addi $t0, $fp, -4424
	sw $t0, -5068($fp)
	li $t0, 2
	sw $t0, -5072($fp)
	lw $t0, -5072($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5076($fp)
	lw $t0, -5068($fp)
	lw $t1, -5076($fp)
	add $t0, $t0, $t1
	sw $t0, -5080($fp)
	lw $t0, -5064($fp)
	lw $t1, -5080($fp)
	sw $t0, 0($t1)
	lw $t0, -5080($fp)
	lw $t1, 0($t0)
	sw $t1, -5084($fp)
	li $t0, 42093
	sw $t0, -5088($fp)
	addi $t0, $fp, -4424
	sw $t0, -5092($fp)
	li $t0, 3
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
	lw $t0, -1508($fp)
	sw $t0, -5112($fp)
	lw $t0, -5112($fp)
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	sw $t0, -5116($fp)
	lw $t1, -5116($fp)
	li $t2, 0
	bne $t1, $t2, label607
	j label608
label607:
	li $t0, 0
	sw $t0, -5120($fp)
	li $t0, 3135
	sw $t0, -5124($fp)
	li $t0, 47004
	sw $t0, -5128($fp)
	lw $t1, -5124($fp)
	lw $t2, -5128($fp)
	bgt $t1, $t2, label610
	j label611
label610:
	li $t0, 1
	sw $t0, -5120($fp)
label611:
	j label609
label608:
	addi $t0, $fp, -4408
	sw $t0, -5132($fp)
	li $t0, 6
	sw $t0, -5136($fp)
	li $t0, 4
	lw $t1, -5136($fp)
	mul $t0, $t0, $t1
	sw $t0, -5140($fp)
	lw $t0, -5140($fp)
	lw $t1, -5132($fp)
	add $t0, $t0, $t1
	sw $t0, -5144($fp)
	lw $t0, -5144($fp)
	lw $t1, 0($t0)
	sw $t1, -5148($fp)
	lw $t0, -5008($fp)
	sw $t0, -5152($fp)
	lw $t0, -5148($fp)
	lw $t1, -5152($fp)
	mul $t0, $t0, $t1
	sw $t0, -5156($fp)
	addi $sp, $sp, -4
	lw $t0, -5156($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5160($fp)
	addi $sp, $sp, 8
	lw $t0, -1748($fp)
	sw $t0, -5164($fp)
	lw $t0, -5160($fp)
	lw $t1, -5164($fp)
	add $t0, $t0, $t1
	sw $t0, -5168($fp)
	addi $sp, $sp, -4
	lw $t0, -5168($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5172($fp)
	addi $sp, $sp, 8
	lw $t1, -5172($fp)
	li $t2, 0
	bne $t1, $t2, label612
	j label616
label616:
	li $t0, 40046
	sw $t0, -5176($fp)
	lw $t0, -5176($fp)
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	sw $t0, -5180($fp)
	addi $sp, $sp, -4
	lw $t0, -5180($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5184($fp)
	addi $sp, $sp, 8
	lw $t1, -5184($fp)
	li $t2, 0
	bne $t1, $t2, label615
	j label612
label615:
	li $t0, 31216
	sw $t0, -5188($fp)
	lw $t0, -1760($fp)
	sw $t0, -5192($fp)
	lw $t1, -5188($fp)
	lw $t2, -5192($fp)
	bgt $t1, $t2, label612
	j label613
label612:
label617:
	lw $t0, -452($fp)
	sw $t0, -5196($fp)
	lw $t1, -5196($fp)
	li $t2, 0
	bne $t1, $t2, label618
	j label619
label618:
	li $t0, 0
	sw $t0, -5200($fp)
	li $t0, 0
	sw $t0, -5204($fp)
	lw $t0, -1280($fp)
	sw $t0, -5208($fp)
	lw $t0, -1388($fp)
	sw $t0, -5212($fp)
	lw $t1, -5208($fp)
	lw $t2, -5212($fp)
	bgt $t1, $t2, label622
	j label623
label622:
	li $t0, 1
	sw $t0, -5204($fp)
label623:
	li $t0, 16683
	sw $t0, -5216($fp)
	lw $t1, -5204($fp)
	lw $t2, -5216($fp)
	ble $t1, $t2, label620
	j label621
label620:
	li $t0, 1
	sw $t0, -5200($fp)
label621:
	addi $sp, $sp, -4
	lw $t0, -5200($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5220($fp)
	addi $sp, $sp, 8
	li $t0, 5053
	sw $t0, -5224($fp)
	lw $t0, -5220($fp)
	lw $t1, -5224($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5228($fp)
	lw $t0, -5228($fp)
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	sw $t0, -5232($fp)
	lw $ra, -4($fp)
	lw $v0, -5232($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label617
label619:
	j label614
label613:
	li $t0, 0
	sw $t0, -5236($fp)
	li $t0, 0
	sw $t0, -5240($fp)
	lw $t0, -1052($fp)
	sw $t0, -5244($fp)
	lw $t1, -5244($fp)
	li $t2, 0
	bne $t1, $t2, label627
	j label626
label626:
	li $t0, 1
	sw $t0, -5240($fp)
label627:
	lw $t0, -428($fp)
	sw $t0, -5248($fp)
	li $t0, 31004
	sw $t0, -5252($fp)
	lw $t0, -5248($fp)
	lw $t1, -5252($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5256($fp)
	lw $t0, -488($fp)
	sw $t0, -5260($fp)
	lw $t0, -5256($fp)
	lw $t1, -5260($fp)
	add $t0, $t0, $t1
	sw $t0, -5264($fp)
	addi $t0, $fp, -4368
	sw $t0, -5268($fp)
	lw $t0, 4($fp)
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
	lw $t0, -5264($fp)
	lw $t1, -5284($fp)
	add $t0, $t0, $t1
	sw $t0, -5288($fp)
	lw $t1, -5240($fp)
	lw $t2, -5288($fp)
	bne $t1, $t2, label624
	j label625
label624:
	li $t0, 1
	sw $t0, -5236($fp)
label625:
	lw $ra, -4($fp)
	lw $v0, -5236($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label614:
label609:
label628:
	lw $t0, -500($fp)
	sw $t0, -5292($fp)
	li $t0, 40339
	sw $t0, -5296($fp)
	lw $t0, -5292($fp)
	lw $t1, -5296($fp)
	mul $t0, $t0, $t1
	sw $t0, -5300($fp)
	lw $t1, -5300($fp)
	li $t2, 0
	bne $t1, $t2, label631
	j label630
label631:
	addi $t0, $fp, -88
	sw $t0, -5304($fp)
	li $t0, 0
	sw $t0, -5308($fp)
	lw $t0, -560($fp)
	sw $t0, -5312($fp)
	li $t0, 39410
	sw $t0, -5316($fp)
	lw $t1, -5312($fp)
	lw $t2, -5316($fp)
	bne $t1, $t2, label632
	j label633
label632:
	li $t0, 1
	sw $t0, -5308($fp)
label633:
	li $t0, 4
	lw $t1, -5308($fp)
	mul $t0, $t0, $t1
	sw $t0, -5320($fp)
	lw $t0, -5320($fp)
	lw $t1, -5304($fp)
	add $t0, $t0, $t1
	sw $t0, -5324($fp)
	lw $t0, -5324($fp)
	lw $t1, 0($t0)
	sw $t1, -5328($fp)
	lw $t1, -5328($fp)
	li $t2, 0
	bne $t1, $t2, label629
	j label630
label629:
	addi $t0, $fp, -124
	sw $t0, -5332($fp)
	lw $t0, -1280($fp)
	sw $t0, -5336($fp)
	li $t0, 4
	lw $t1, -5336($fp)
	mul $t0, $t0, $t1
	sw $t0, -5340($fp)
	lw $t0, -5340($fp)
	lw $t1, -5332($fp)
	add $t0, $t0, $t1
	sw $t0, -5344($fp)
	lw $t0, -5344($fp)
	lw $t1, 0($t0)
	sw $t1, -5348($fp)
	li $t0, 23301
	sw $t0, -5352($fp)
	lw $t0, -5348($fp)
	lw $t1, -5352($fp)
	mul $t0, $t0, $t1
	sw $t0, -5356($fp)
	addi $sp, $sp, -4
	lw $t0, -5356($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5360($fp)
	addi $sp, $sp, 8
	li $t0, 61754
	sw $t0, -5364($fp)
	lw $t0, -5360($fp)
	lw $t1, -5364($fp)
	sub $t0, $t0, $t1
	sw $t0, -5368($fp)
	lw $t1, -5368($fp)
	li $t2, 0
	bne $t1, $t2, label634
	j label635
label634:
	li $t0, 0
	sw $t0, -5372($fp)
	lw $t0, -1280($fp)
	sw $t0, -5376($fp)
	li $t0, 52038
	sw $t0, -5380($fp)
	lw $t1, -5376($fp)
	lw $t2, -5380($fp)
	bne $t1, $t2, label641
	j label642
label641:
	li $t0, 1
	sw $t0, -5372($fp)
label642:
	li $t0, 0
	sw $t0, -5384($fp)
	lw $t0, -4756($fp)
	sw $t0, -5388($fp)
	li $t0, 36948
	sw $t0, -5392($fp)
	lw $t0, -5388($fp)
	lw $t1, -5392($fp)
	sub $t0, $t0, $t1
	sw $t0, -5396($fp)
	lw $t0, -440($fp)
	sw $t0, -5400($fp)
	lw $t1, -5396($fp)
	lw $t2, -5400($fp)
	bgt $t1, $t2, label643
	j label644
label643:
	li $t0, 1
	sw $t0, -5384($fp)
label644:
	lw $t1, -5372($fp)
	lw $t2, -5384($fp)
	beq $t1, $t2, label637
	j label640
label640:
	addi $t0, $fp, -16
	sw $t0, -5404($fp)
	lw $t0, -452($fp)
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
	lw $t0, -1760($fp)
	sw $t0, -5424($fp)
	li $t0, 0
	lw $t1, -5424($fp)
	sub $t0, $t0, $t1
	sw $t0, -5428($fp)
	lw $t0, -5420($fp)
	lw $t1, -5428($fp)
	add $t0, $t0, $t1
	sw $t0, -5432($fp)
	lw $t1, -5432($fp)
	li $t2, 0
	bne $t1, $t2, label637
	j label638
label637:
	li $t0, 1125
	sw $t0, -5436($fp)
	li $t0, 0
	lw $t1, -5436($fp)
	sub $t0, $t0, $t1
	sw $t0, -5440($fp)
	li $t0, 0
	sw $t0, -5444($fp)
	lw $t0, -1820($fp)
	sw $t0, -5448($fp)
	lw $t1, -5448($fp)
	li $t2, 0
	bne $t1, $t2, label649
	j label648
label648:
	li $t0, 1
	sw $t0, -5444($fp)
label649:
	lw $t0, -5440($fp)
	lw $t1, -5444($fp)
	add $t0, $t0, $t1
	sw $t0, -5452($fp)
	lw $t1, -5452($fp)
	li $t2, 0
	bne $t1, $t2, label645
	j label646
label645:
	li $t0, 0
	sw $t0, -5456($fp)
	addi $t0, $fp, -16
	sw $t0, -5460($fp)
	li $t0, 0
	sw $t0, -5464($fp)
	lw $t0, -1040($fp)
	sw $t0, -5468($fp)
	lw $t1, -5468($fp)
	li $t2, 0
	bne $t1, $t2, label655
	j label654
label655:
	li $t0, 11727
	sw $t0, -5472($fp)
	lw $t1, -5472($fp)
	li $t2, 0
	bne $t1, $t2, label653
	j label654
label653:
	li $t0, 1
	sw $t0, -5464($fp)
label654:
	li $t0, 4
	lw $t1, -5464($fp)
	mul $t0, $t0, $t1
	sw $t0, -5476($fp)
	lw $t0, -5476($fp)
	lw $t1, -5460($fp)
	add $t0, $t0, $t1
	sw $t0, -5480($fp)
	lw $t0, -5480($fp)
	lw $t1, 0($t0)
	sw $t1, -5484($fp)
	li $t0, 0
	sw $t0, -5488($fp)
	lw $t0, -1760($fp)
	sw $t0, -5492($fp)
	lw $t1, -5492($fp)
	li $t2, 0
	bne $t1, $t2, label657
	j label656
label656:
	li $t0, 1
	sw $t0, -5488($fp)
label657:
	lw $t0, -5484($fp)
	lw $t1, -5488($fp)
	add $t0, $t0, $t1
	sw $t0, -5496($fp)
	lw $t1, -5496($fp)
	li $t2, 0
	bne $t1, $t2, label652
	j label651
label652:
	lw $t0, -260($fp)
	sw $t0, -5500($fp)
	li $t0, 0
	lw $t1, -5500($fp)
	sub $t0, $t0, $t1
	sw $t0, -5504($fp)
	lw $t1, -5504($fp)
	li $t2, 0
	bne $t1, $t2, label650
	j label651
label650:
	li $t0, 1
	sw $t0, -5456($fp)
label651:
	j label647
label646:
label658:
	li $t0, 14009
	sw $t0, -5508($fp)
	lw $t0, -272($fp)
	sw $t0, -5512($fp)
	lw $t0, -5508($fp)
	lw $t1, -5512($fp)
	mul $t0, $t0, $t1
	sw $t0, -5516($fp)
	lw $t0, -764($fp)
	sw $t0, -5520($fp)
	lw $t0, -5516($fp)
	lw $t1, -5520($fp)
	mul $t0, $t0, $t1
	sw $t0, -5524($fp)
	addi $sp, $sp, -4
	lw $t0, -5524($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5528($fp)
	addi $sp, $sp, 8
	lw $t1, -5528($fp)
	li $t2, 0
	bne $t1, $t2, label659
	j label660
label659:
	li $t0, 0
	sw $t0, -5532($fp)
	lw $t0, -512($fp)
	sw $t0, -5536($fp)
	lw $t1, -5536($fp)
	li $t2, 0
	bne $t1, $t2, label662
	j label661
label661:
	li $t0, 1
	sw $t0, -5532($fp)
label662:
	li $t0, 0
	lw $t1, -5532($fp)
	sub $t0, $t0, $t1
	sw $t0, -5540($fp)
	addi $sp, $sp, -4
	lw $t0, -5540($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5544($fp)
	addi $sp, $sp, 8
	li $t0, 19933
	sw $t0, -5548($fp)
	li $t0, 0
	lw $t1, -5548($fp)
	sub $t0, $t0, $t1
	sw $t0, -5552($fp)
	lw $t0, -5544($fp)
	lw $t1, -5552($fp)
	mul $t0, $t0, $t1
	sw $t0, -5556($fp)
	addi $t0, $fp, -192
	sw $t0, -5560($fp)
	li $t0, 0
	sw $t0, -5564($fp)
	lw $t0, -4432($fp)
	sw $t0, -5568($fp)
	li $t0, 41386
	sw $t0, -5572($fp)
	lw $t1, -5568($fp)
	lw $t2, -5572($fp)
	beq $t1, $t2, label663
	j label664
label663:
	li $t0, 1
	sw $t0, -5564($fp)
label664:
	li $t0, 4
	lw $t1, -5564($fp)
	mul $t0, $t0, $t1
	sw $t0, -5576($fp)
	lw $t0, -5576($fp)
	lw $t1, -5560($fp)
	add $t0, $t0, $t1
	sw $t0, -5580($fp)
	lw $t0, -5580($fp)
	lw $t1, 0($t0)
	sw $t1, -5584($fp)
	lw $t0, -5556($fp)
	lw $t1, -5584($fp)
	sub $t0, $t0, $t1
	sw $t0, -5588($fp)
	lw $ra, -4($fp)
	lw $v0, -5588($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label658
label660:
label647:
	j label639
label638:
label665:
	li $t0, 0
	sw $t0, -5592($fp)
	lw $t0, -1736($fp)
	sw $t0, -5596($fp)
	lw $t1, -5596($fp)
	li $t2, 0
	bne $t1, $t2, label670
	j label669
label670:
	li $t0, 25497
	sw $t0, -5600($fp)
	lw $t1, -5600($fp)
	li $t2, 0
	bne $t1, $t2, label668
	j label669
label668:
	li $t0, 1
	sw $t0, -5592($fp)
label669:
	addi $sp, $sp, -4
	lw $t0, -5592($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5604($fp)
	addi $sp, $sp, 8
	li $t0, 49572
	sw $t0, -5608($fp)
	lw $t0, -5604($fp)
	lw $t1, -5608($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5612($fp)
	li $t0, 0
	lw $t1, -5612($fp)
	sub $t0, $t0, $t1
	sw $t0, -5616($fp)
	li $t0, 0
	sw $t0, -5620($fp)
	li $t0, 0
	sw $t0, -5624($fp)
	li $t0, 57497
	sw $t0, -5628($fp)
	lw $t1, -5628($fp)
	li $t2, 0
	bne $t1, $t2, label674
	j label673
label673:
	li $t0, 1
	sw $t0, -5624($fp)
label674:
	li $t0, 0
	lw $t1, -5624($fp)
	sub $t0, $t0, $t1
	sw $t0, -5632($fp)
	lw $t1, -5632($fp)
	li $t2, 0
	bne $t1, $t2, label672
	j label671
label671:
	li $t0, 1
	sw $t0, -5620($fp)
label672:
	lw $t0, -5616($fp)
	lw $t1, -5620($fp)
	sub $t0, $t0, $t1
	sw $t0, -5636($fp)
	lw $t1, -5636($fp)
	li $t2, 0
	bne $t1, $t2, label666
	j label667
label666:
label675:
	li $t0, 12606
	sw $t0, -5640($fp)
	li $t0, 0
	lw $t1, -5640($fp)
	sub $t0, $t0, $t1
	sw $t0, -5644($fp)
	lw $t1, -5644($fp)
	li $t2, 0
	bne $t1, $t2, label678
	j label677
label678:
	li $t0, 0
	sw $t0, -5648($fp)
	li $t0, 0
	sw $t0, -5652($fp)
	li $t0, 14459
	sw $t0, -5656($fp)
	li $t0, 59640
	sw $t0, -5660($fp)
	lw $t1, -5656($fp)
	lw $t2, -5660($fp)
	blt $t1, $t2, label681
	j label682
label681:
	li $t0, 1
	sw $t0, -5652($fp)
label682:
	li $t0, 60014
	sw $t0, -5664($fp)
	lw $t1, -5652($fp)
	lw $t2, -5664($fp)
	ble $t1, $t2, label679
	j label680
label679:
	li $t0, 1
	sw $t0, -5648($fp)
label680:
	addi $sp, $sp, -4
	lw $t0, -5648($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5668($fp)
	addi $sp, $sp, 8
	lw $t1, -5668($fp)
	li $t2, 0
	bne $t1, $t2, label676
	j label677
label676:
	li $t0, 49116
	sw $t0, -5672($fp)
	lw $t0, -5672($fp)
	sw $t0, -5676($fp)
	lw $t0, -5676($fp)
	sw $t0, -5680($fp)
	li $t0, 54586
	sw $t0, -5684($fp)
	lw $t0, -5684($fp)
	sw $t0, -5688($fp)
	lw $t0, -5688($fp)
	sw $t0, -5692($fp)
	li $t0, 0
	sw $t0, -5696($fp)
	li $t0, 0
	sw $t0, -5700($fp)
	lw $t0, -452($fp)
	sw $t0, -5704($fp)
	lw $t0, -5676($fp)
	sw $t0, -5708($fp)
	lw $t0, -5704($fp)
	lw $t1, -5708($fp)
	mul $t0, $t0, $t1
	sw $t0, -5712($fp)
	lw $t1, -5712($fp)
	li $t2, 0
	bne $t1, $t2, label686
	j label688
label688:
	lw $t0, -5688($fp)
	sw $t0, -5716($fp)
	lw $t1, -5716($fp)
	li $t2, 0
	bne $t1, $t2, label686
	j label687
label686:
	li $t0, 1
	sw $t0, -5700($fp)
label687:
	addi $sp, $sp, -4
	lw $t0, -5700($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5720($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -5720($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5724($fp)
	addi $sp, $sp, 8
	lw $t0, -284($fp)
	sw $t0, -5728($fp)
	lw $t0, -5724($fp)
	lw $t1, -5728($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5732($fp)
	lw $t1, -5732($fp)
	li $t2, 0
	bne $t1, $t2, label685
	j label684
label685:
	addi $t0, $fp, -140
	sw $t0, -5736($fp)
	lw $t0, -764($fp)
	sw $t0, -5740($fp)
	li $t0, 4
	lw $t1, -5740($fp)
	mul $t0, $t0, $t1
	sw $t0, -5744($fp)
	lw $t0, -5744($fp)
	lw $t1, -5736($fp)
	add $t0, $t0, $t1
	sw $t0, -5748($fp)
	lw $t0, -5748($fp)
	lw $t1, 0($t0)
	sw $t1, -5752($fp)
	lw $t1, -5752($fp)
	li $t2, 0
	bne $t1, $t2, label683
	j label684
label683:
	li $t0, 1
	sw $t0, -5696($fp)
label684:
	lw $t0, -5696($fp)
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -5756($fp)
	li $t0, 0
	sw $t0, -5760($fp)
	addi $t0, $fp, -88
	sw $t0, -5764($fp)
	li $t0, 9
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
	li $t0, 57721
	sw $t0, -5784($fp)
	lw $t0, -5780($fp)
	lw $t1, -5784($fp)
	sub $t0, $t0, $t1
	sw $t0, -5788($fp)
	lw $t0, -524($fp)
	sw $t0, -5792($fp)
	lw $t1, -5788($fp)
	lw $t2, -5792($fp)
	ble $t1, $t2, label689
	j label690
label689:
	li $t0, 1
	sw $t0, -5760($fp)
label690:
	j label675
label677:
	j label665
label667:
label639:
	j label636
label635:
label691:
	lw $t0, -1028($fp)
	sw $t0, -5796($fp)
	lw $t1, -5796($fp)
	li $t2, 0
	bne $t1, $t2, label694
	j label693
label694:
	li $t0, 0
	sw $t0, -5800($fp)
	li $t0, 0
	sw $t0, -5804($fp)
	li $t0, 3090
	sw $t0, -5808($fp)
	li $t0, 40962
	sw $t0, -5812($fp)
	lw $t1, -5808($fp)
	lw $t2, -5812($fp)
	blt $t1, $t2, label697
	j label698
label697:
	li $t0, 1
	sw $t0, -5804($fp)
label698:
	li $t0, 18741
	sw $t0, -5816($fp)
	lw $t1, -5804($fp)
	lw $t2, -5816($fp)
	bge $t1, $t2, label695
	j label696
label695:
	li $t0, 1
	sw $t0, -5800($fp)
label696:
	li $t0, 0
	sw $t0, -5820($fp)
	li $t0, 43136
	sw $t0, -5824($fp)
	lw $t1, -5824($fp)
	li $t2, 0
	bne $t1, $t2, label700
	j label699
label699:
	li $t0, 1
	sw $t0, -5820($fp)
label700:
	lw $t1, -5800($fp)
	lw $t2, -5820($fp)
	blt $t1, $t2, label692
	j label693
label692:
label701:
	addi $t0, $fp, -20
	sw $t0, -5828($fp)
	li $t0, 0
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
	lw $t1, -5844($fp)
	li $t2, 0
	bne $t1, $t2, label702
	j label703
label702:
	li $t0, 0
	sw $t0, -5848($fp)
	li $t0, 22064
	sw $t0, -5852($fp)
	li $t0, 60947
	sw $t0, -5856($fp)
	lw $t0, -5852($fp)
	lw $t1, -5856($fp)
	mul $t0, $t0, $t1
	sw $t0, -5860($fp)
	addi $sp, $sp, -4
	lw $t0, -5860($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5864($fp)
	addi $sp, $sp, 8
	lw $t1, -5864($fp)
	li $t2, 0
	bne $t1, $t2, label705
	j label704
label704:
	li $t0, 1
	sw $t0, -5848($fp)
label705:
	j label701
label703:
label706:
	lw $t0, -560($fp)
	sw $t0, -5868($fp)
	li $t0, 0
	lw $t1, -5868($fp)
	sub $t0, $t0, $t1
	sw $t0, -5872($fp)
	lw $t1, -5872($fp)
	li $t2, 0
	bne $t1, $t2, label707
	j label708
label707:
	li $t0, 0
	sw $t0, -5876($fp)
	lw $t0, -1028($fp)
	sw $t0, -5880($fp)
	li $t0, 0
	sw $t0, -5884($fp)
	addi $t0, $fp, -88
	sw $t0, -5888($fp)
	li $t0, 0
	sw $t0, -5892($fp)
	li $t0, 4
	lw $t1, -5892($fp)
	mul $t0, $t0, $t1
	sw $t0, -5896($fp)
	lw $t0, -5896($fp)
	lw $t1, -5888($fp)
	add $t0, $t0, $t1
	sw $t0, -5900($fp)
	lw $t0, -5900($fp)
	lw $t1, 0($t0)
	sw $t1, -5904($fp)
	lw $t1, -5904($fp)
	li $t2, 0
	bne $t1, $t2, label712
	j label711
label711:
	li $t0, 1
	sw $t0, -5884($fp)
label712:
	li $t0, 32359
	sw $t0, -5908($fp)
	lw $t0, -5884($fp)
	lw $t1, -5908($fp)
	mul $t0, $t0, $t1
	sw $t0, -5912($fp)
	lw $t1, -5880($fp)
	lw $t2, -5912($fp)
	bgt $t1, $t2, label709
	j label710
label709:
	li $t0, 1
	sw $t0, -5876($fp)
label710:
	j label706
label708:
	j label691
label693:
label636:
	j label628
label630:
label713:
	li $t0, 0
	sw $t0, -5916($fp)
	li $t0, 0
	sw $t0, -5920($fp)
	addi $t0, $fp, -4356
	sw $t0, -5924($fp)
	lw $t0, -1796($fp)
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
	li $t0, 7571
	sw $t0, -5944($fp)
	lw $t1, -5940($fp)
	lw $t2, -5944($fp)
	blt $t1, $t2, label718
	j label719
label718:
	li $t0, 1
	sw $t0, -5920($fp)
label719:
	li $t0, 20293
	sw $t0, -5948($fp)
	li $t0, 0
	lw $t1, -5948($fp)
	sub $t0, $t0, $t1
	sw $t0, -5952($fp)
	lw $t1, -5920($fp)
	lw $t2, -5952($fp)
	beq $t1, $t2, label716
	j label717
label716:
	li $t0, 1
	sw $t0, -5916($fp)
label717:
	lw $t0, -5916($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -5956($fp)
	lw $t1, -5956($fp)
	li $t2, 0
	bne $t1, $t2, label714
	j label715
label714:
	li $t0, 0
	sw $t0, -5960($fp)
	lw $t0, -1808($fp)
	sw $t0, -5964($fp)
	lw $t1, -5964($fp)
	li $t2, 0
	bne $t1, $t2, label722
	j label721
label722:
	addi $t0, $fp, -4424
	sw $t0, -5968($fp)
	li $t0, 46368
	sw $t0, -5972($fp)
	lw $t0, -1820($fp)
	sw $t0, -5976($fp)
	lw $t0, -5972($fp)
	lw $t1, -5976($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5980($fp)
	lw $t0, -452($fp)
	sw $t0, -5984($fp)
	lw $t0, -5980($fp)
	lw $t1, -5984($fp)
	mul $t0, $t0, $t1
	sw $t0, -5988($fp)
	addi $sp, $sp, -4
	lw $t0, -5988($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5992($fp)
	addi $sp, $sp, 8
	li $t0, 4
	lw $t1, -5992($fp)
	mul $t0, $t0, $t1
	sw $t0, -5996($fp)
	lw $t0, -5996($fp)
	lw $t1, -5968($fp)
	add $t0, $t0, $t1
	sw $t0, -6000($fp)
	lw $t0, -6000($fp)
	lw $t1, 0($t0)
	sw $t1, -6004($fp)
	lw $t1, -6004($fp)
	li $t2, 0
	bne $t1, $t2, label720
	j label721
label720:
	li $t0, 1
	sw $t0, -5960($fp)
label721:
	j label713
label715:
label602:
	j label595
label594:
	addi $t0, $fp, -232
	sw $t0, -6008($fp)
	lw $t0, -2072($fp)
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
	li $t0, 0
	sw $t0, -6028($fp)
	li $t0, 27505
	sw $t0, -6032($fp)
	lw $t1, -6032($fp)
	li $t2, 0
	bne $t1, $t2, label723
	j label726
label726:
	lw $t0, -2084($fp)
	sw $t0, -6036($fp)
	lw $t1, -6036($fp)
	li $t2, 0
	bne $t1, $t2, label723
	j label725
label725:
	lw $t0, -2096($fp)
	sw $t0, -6040($fp)
	lw $t1, -6040($fp)
	li $t2, 0
	bne $t1, $t2, label723
	j label724
label723:
	li $t0, 1
	sw $t0, -6028($fp)
label724:
	addi $sp, $sp, -4
	lw $t0, -6028($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6044($fp)
	addi $sp, $sp, 8
	lw $t0, -6024($fp)
	lw $t1, -6044($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6048($fp)
	li $t0, 0
	sw $t0, -6052($fp)
	li $t0, 61680
	sw $t0, -6056($fp)
	lw $t1, -6056($fp)
	li $t2, 0
	bne $t1, $t2, label728
	j label727
label727:
	li $t0, 1
	sw $t0, -6052($fp)
label728:
	addi $sp, $sp, -4
	lw $t0, -6052($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6060($fp)
	addi $sp, $sp, 8
	lw $t0, -6048($fp)
	lw $t1, -6060($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6064($fp)
	li $t0, 0
	sw $t0, -6068($fp)
	lw $t0, -1772($fp)
	sw $t0, -6072($fp)
	lw $t1, -6072($fp)
	li $t2, 0
	bne $t1, $t2, label730
	j label729
label729:
	li $t0, 1
	sw $t0, -6068($fp)
label730:
	li $t0, 0
	lw $t1, -6068($fp)
	sub $t0, $t0, $t1
	sw $t0, -6076($fp)
	lw $t0, -6064($fp)
	lw $t1, -6076($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6080($fp)
	lw $ra, -4($fp)
	lw $v0, -6080($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label595:
	addi $t0, $fp, -252
	sw $t0, -6084($fp)
	li $t0, 0
	sw $t0, -6088($fp)
	li $t0, 6330
	sw $t0, -6092($fp)
	lw $t0, -2072($fp)
	sw $t0, -6096($fp)
	lw $t1, -6092($fp)
	lw $t2, -6096($fp)
	ble $t1, $t2, label733
	j label732
label733:
	lw $t0, -428($fp)
	sw $t0, -6100($fp)
	lw $t1, -6100($fp)
	li $t2, 0
	bne $t1, $t2, label731
	j label732
label731:
	li $t0, 1
	sw $t0, -6088($fp)
label732:
	li $t0, 4
	lw $t1, -6088($fp)
	mul $t0, $t0, $t1
	sw $t0, -6104($fp)
	lw $t0, -6104($fp)
	lw $t1, -6084($fp)
	add $t0, $t0, $t1
	sw $t0, -6108($fp)
	lw $t0, -6108($fp)
	lw $t1, 0($t0)
	sw $t1, -6112($fp)
	addi $t0, $fp, -88
	sw $t0, -6116($fp)
	li $t0, 7
	sw $t0, -6120($fp)
	li $t0, 4
	lw $t1, -6120($fp)
	mul $t0, $t0, $t1
	sw $t0, -6124($fp)
	lw $t0, -6124($fp)
	lw $t1, -6116($fp)
	add $t0, $t0, $t1
	sw $t0, -6128($fp)
	lw $t0, -6128($fp)
	lw $t1, 0($t0)
	sw $t1, -6132($fp)
	lw $t0, -1496($fp)
	sw $t0, -6136($fp)
	lw $t0, -6132($fp)
	lw $t1, -6136($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6140($fp)
	li $t0, 18936
	sw $t0, -6144($fp)
	li $t0, 0
	lw $t1, -6144($fp)
	sub $t0, $t0, $t1
	sw $t0, -6148($fp)
	lw $t0, -6140($fp)
	lw $t1, -6148($fp)
	mul $t0, $t0, $t1
	sw $t0, -6152($fp)
	lw $t0, -6112($fp)
	lw $t1, -6152($fp)
	sub $t0, $t0, $t1
	sw $t0, -6156($fp)
	lw $t0, -260($fp)
	sw $t0, -6160($fp)
	lw $t0, -6160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -272($fp)
	sw $t0, -6164($fp)
	lw $t0, -6164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -284($fp)
	sw $t0, -6168($fp)
	lw $t0, -6168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -296($fp)
	sw $t0, -6172($fp)
	lw $t0, -6172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -308($fp)
	sw $t0, -6176($fp)
	lw $t0, -6176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -320($fp)
	sw $t0, -6180($fp)
	lw $t0, -6180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -332($fp)
	sw $t0, -6184($fp)
	lw $t0, -6184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -6188($fp)
	li $t0, 0
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
	addi $t0, $fp, -16
	sw $t0, -6208($fp)
	li $t0, 1
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
	lw $t0, -6224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -6228($fp)
	li $t0, 2
	sw $t0, -6232($fp)
	li $t0, 4
	lw $t1, -6232($fp)
	mul $t0, $t0, $t1
	sw $t0, -6236($fp)
	lw $t0, -6236($fp)
	lw $t1, -6228($fp)
	add $t0, $t0, $t1
	sw $t0, -6240($fp)
	lw $t0, -6240($fp)
	lw $t1, 0($t0)
	sw $t1, -6244($fp)
	lw $t0, -6244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -416($fp)
	sw $t0, -6248($fp)
	lw $t0, -6248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -428($fp)
	sw $t0, -6252($fp)
	lw $t0, -6252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -440($fp)
	sw $t0, -6256($fp)
	lw $t0, -6256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -452($fp)
	sw $t0, -6260($fp)
	lw $t0, -6260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -464($fp)
	sw $t0, -6264($fp)
	lw $t0, -6264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -476($fp)
	sw $t0, -6268($fp)
	lw $t0, -6268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -488($fp)
	sw $t0, -6272($fp)
	lw $t0, -6272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -500($fp)
	sw $t0, -6276($fp)
	lw $t0, -6276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -512($fp)
	sw $t0, -6280($fp)
	lw $t0, -6280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -524($fp)
	sw $t0, -6284($fp)
	lw $t0, -6284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -6288($fp)
	li $t0, 0
	sw $t0, -6292($fp)
	li $t0, 4
	lw $t1, -6292($fp)
	mul $t0, $t0, $t1
	sw $t0, -6296($fp)
	lw $t0, -6296($fp)
	lw $t1, -6288($fp)
	add $t0, $t0, $t1
	sw $t0, -6300($fp)
	lw $t0, -6300($fp)
	lw $t1, 0($t0)
	sw $t1, -6304($fp)
	lw $t0, -6304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -6308($fp)
	lw $t0, -6308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -6312($fp)
	li $t0, 0
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
	lw $t0, -6328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -6332($fp)
	li $t0, 1
	sw $t0, -6336($fp)
	li $t0, 4
	lw $t1, -6336($fp)
	mul $t0, $t0, $t1
	sw $t0, -6340($fp)
	lw $t0, -6340($fp)
	lw $t1, -6332($fp)
	add $t0, $t0, $t1
	sw $t0, -6344($fp)
	lw $t0, -6344($fp)
	lw $t1, 0($t0)
	sw $t1, -6348($fp)
	lw $t0, -6348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -6352($fp)
	li $t0, 2
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
	addi $t0, $fp, -48
	sw $t0, -6372($fp)
	li $t0, 3
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
	addi $t0, $fp, -48
	sw $t0, -6392($fp)
	li $t0, 4
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
	addi $t0, $fp, -48
	sw $t0, -6412($fp)
	li $t0, 5
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
	addi $t0, $fp, -48
	sw $t0, -6432($fp)
	li $t0, 6
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
	lw $t0, -740($fp)
	sw $t0, -6452($fp)
	lw $t0, -6452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -752($fp)
	sw $t0, -6456($fp)
	lw $t0, -6456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -764($fp)
	sw $t0, -6460($fp)
	lw $t0, -6460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -776($fp)
	sw $t0, -6464($fp)
	lw $t0, -6464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -6468($fp)
	li $t0, 0
	sw $t0, -6472($fp)
	li $t0, 4
	lw $t1, -6472($fp)
	mul $t0, $t0, $t1
	sw $t0, -6476($fp)
	lw $t0, -6476($fp)
	lw $t1, -6468($fp)
	add $t0, $t0, $t1
	sw $t0, -6480($fp)
	lw $t0, -6480($fp)
	lw $t1, 0($t0)
	sw $t1, -6484($fp)
	lw $t0, -6484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -6488($fp)
	li $t0, 1
	sw $t0, -6492($fp)
	li $t0, 4
	lw $t1, -6492($fp)
	mul $t0, $t0, $t1
	sw $t0, -6496($fp)
	lw $t0, -6496($fp)
	lw $t1, -6488($fp)
	add $t0, $t0, $t1
	sw $t0, -6500($fp)
	lw $t0, -6500($fp)
	lw $t1, 0($t0)
	sw $t1, -6504($fp)
	lw $t0, -6504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -6508($fp)
	li $t0, 2
	sw $t0, -6512($fp)
	li $t0, 4
	lw $t1, -6512($fp)
	mul $t0, $t0, $t1
	sw $t0, -6516($fp)
	lw $t0, -6516($fp)
	lw $t1, -6508($fp)
	add $t0, $t0, $t1
	sw $t0, -6520($fp)
	lw $t0, -6520($fp)
	lw $t1, 0($t0)
	sw $t1, -6524($fp)
	lw $t0, -6524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -6528($fp)
	li $t0, 3
	sw $t0, -6532($fp)
	li $t0, 4
	lw $t1, -6532($fp)
	mul $t0, $t0, $t1
	sw $t0, -6536($fp)
	lw $t0, -6536($fp)
	lw $t1, -6528($fp)
	add $t0, $t0, $t1
	sw $t0, -6540($fp)
	lw $t0, -6540($fp)
	lw $t1, 0($t0)
	sw $t1, -6544($fp)
	lw $t0, -6544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -6548($fp)
	li $t0, 4
	sw $t0, -6552($fp)
	li $t0, 4
	lw $t1, -6552($fp)
	mul $t0, $t0, $t1
	sw $t0, -6556($fp)
	lw $t0, -6556($fp)
	lw $t1, -6548($fp)
	add $t0, $t0, $t1
	sw $t0, -6560($fp)
	lw $t0, -6560($fp)
	lw $t1, 0($t0)
	sw $t1, -6564($fp)
	lw $t0, -6564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -6568($fp)
	li $t0, 5
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
	lw $t0, -6584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
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
	lw $t0, -6604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -6608($fp)
	li $t0, 7
	sw $t0, -6612($fp)
	li $t0, 4
	lw $t1, -6612($fp)
	mul $t0, $t0, $t1
	sw $t0, -6616($fp)
	lw $t0, -6616($fp)
	lw $t1, -6608($fp)
	add $t0, $t0, $t1
	sw $t0, -6620($fp)
	lw $t0, -6620($fp)
	lw $t1, 0($t0)
	sw $t1, -6624($fp)
	lw $t0, -6624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -6628($fp)
	li $t0, 8
	sw $t0, -6632($fp)
	li $t0, 4
	lw $t1, -6632($fp)
	mul $t0, $t0, $t1
	sw $t0, -6636($fp)
	lw $t0, -6636($fp)
	lw $t1, -6628($fp)
	add $t0, $t0, $t1
	sw $t0, -6640($fp)
	lw $t0, -6640($fp)
	lw $t1, 0($t0)
	sw $t1, -6644($fp)
	lw $t0, -6644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -6648($fp)
	li $t0, 9
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
	lw $t0, -6664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1028($fp)
	sw $t0, -6668($fp)
	lw $t0, -6668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1040($fp)
	sw $t0, -6672($fp)
	lw $t0, -6672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1052($fp)
	sw $t0, -6676($fp)
	lw $t0, -6676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -6680($fp)
	li $t0, 0
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
	addi $t0, $fp, -124
	sw $t0, -6700($fp)
	li $t0, 1
	sw $t0, -6704($fp)
	li $t0, 4
	lw $t1, -6704($fp)
	mul $t0, $t0, $t1
	sw $t0, -6708($fp)
	lw $t0, -6708($fp)
	lw $t1, -6700($fp)
	add $t0, $t0, $t1
	sw $t0, -6712($fp)
	lw $t0, -6712($fp)
	lw $t1, 0($t0)
	sw $t1, -6716($fp)
	lw $t0, -6716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -6720($fp)
	li $t0, 2
	sw $t0, -6724($fp)
	li $t0, 4
	lw $t1, -6724($fp)
	mul $t0, $t0, $t1
	sw $t0, -6728($fp)
	lw $t0, -6728($fp)
	lw $t1, -6720($fp)
	add $t0, $t0, $t1
	sw $t0, -6732($fp)
	lw $t0, -6732($fp)
	lw $t1, 0($t0)
	sw $t1, -6736($fp)
	lw $t0, -6736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
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
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -6760($fp)
	li $t0, 4
	sw $t0, -6764($fp)
	li $t0, 4
	lw $t1, -6764($fp)
	mul $t0, $t0, $t1
	sw $t0, -6768($fp)
	lw $t0, -6768($fp)
	lw $t1, -6760($fp)
	add $t0, $t0, $t1
	sw $t0, -6772($fp)
	lw $t0, -6772($fp)
	lw $t1, 0($t0)
	sw $t1, -6776($fp)
	lw $t0, -6776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -6780($fp)
	li $t0, 5
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
	addi $t0, $fp, -124
	sw $t0, -6800($fp)
	li $t0, 6
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
	addi $t0, $fp, -124
	sw $t0, -6820($fp)
	li $t0, 7
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
	addi $t0, $fp, -124
	sw $t0, -6840($fp)
	li $t0, 8
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
	lw $t0, -1280($fp)
	sw $t0, -6860($fp)
	lw $t0, -6860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -6864($fp)
	li $t0, 0
	sw $t0, -6868($fp)
	li $t0, 4
	lw $t1, -6868($fp)
	mul $t0, $t0, $t1
	sw $t0, -6872($fp)
	lw $t0, -6872($fp)
	lw $t1, -6864($fp)
	add $t0, $t0, $t1
	sw $t0, -6876($fp)
	lw $t0, -6876($fp)
	lw $t1, 0($t0)
	sw $t1, -6880($fp)
	lw $t0, -6880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -6884($fp)
	li $t0, 1
	sw $t0, -6888($fp)
	li $t0, 4
	lw $t1, -6888($fp)
	mul $t0, $t0, $t1
	sw $t0, -6892($fp)
	lw $t0, -6892($fp)
	lw $t1, -6884($fp)
	add $t0, $t0, $t1
	sw $t0, -6896($fp)
	lw $t0, -6896($fp)
	lw $t1, 0($t0)
	sw $t1, -6900($fp)
	lw $t0, -6900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -6904($fp)
	li $t0, 2
	sw $t0, -6908($fp)
	li $t0, 4
	lw $t1, -6908($fp)
	mul $t0, $t0, $t1
	sw $t0, -6912($fp)
	lw $t0, -6912($fp)
	lw $t1, -6904($fp)
	add $t0, $t0, $t1
	sw $t0, -6916($fp)
	lw $t0, -6916($fp)
	lw $t1, 0($t0)
	sw $t1, -6920($fp)
	lw $t0, -6920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -6924($fp)
	li $t0, 3
	sw $t0, -6928($fp)
	li $t0, 4
	lw $t1, -6928($fp)
	mul $t0, $t0, $t1
	sw $t0, -6932($fp)
	lw $t0, -6932($fp)
	lw $t1, -6924($fp)
	add $t0, $t0, $t1
	sw $t0, -6936($fp)
	lw $t0, -6936($fp)
	lw $t1, 0($t0)
	sw $t1, -6940($fp)
	lw $t0, -6940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1388($fp)
	sw $t0, -6944($fp)
	lw $t0, -6944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -156
	sw $t0, -6948($fp)
	li $t0, 0
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
	addi $t0, $fp, -156
	sw $t0, -6968($fp)
	li $t0, 1
	sw $t0, -6972($fp)
	li $t0, 4
	lw $t1, -6972($fp)
	mul $t0, $t0, $t1
	sw $t0, -6976($fp)
	lw $t0, -6976($fp)
	lw $t1, -6968($fp)
	add $t0, $t0, $t1
	sw $t0, -6980($fp)
	lw $t0, -6980($fp)
	lw $t1, 0($t0)
	sw $t1, -6984($fp)
	lw $t0, -6984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -156
	sw $t0, -6988($fp)
	li $t0, 2
	sw $t0, -6992($fp)
	li $t0, 4
	lw $t1, -6992($fp)
	mul $t0, $t0, $t1
	sw $t0, -6996($fp)
	lw $t0, -6996($fp)
	lw $t1, -6988($fp)
	add $t0, $t0, $t1
	sw $t0, -7000($fp)
	lw $t0, -7000($fp)
	lw $t1, 0($t0)
	sw $t1, -7004($fp)
	lw $t0, -7004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -156
	sw $t0, -7008($fp)
	li $t0, 3
	sw $t0, -7012($fp)
	li $t0, 4
	lw $t1, -7012($fp)
	mul $t0, $t0, $t1
	sw $t0, -7016($fp)
	lw $t0, -7016($fp)
	lw $t1, -7008($fp)
	add $t0, $t0, $t1
	sw $t0, -7020($fp)
	lw $t0, -7020($fp)
	lw $t1, 0($t0)
	sw $t1, -7024($fp)
	lw $t0, -7024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1496($fp)
	sw $t0, -7028($fp)
	lw $t0, -7028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1508($fp)
	sw $t0, -7032($fp)
	lw $t0, -7032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -7036($fp)
	li $t0, 0
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
	addi $t0, $fp, -192
	sw $t0, -7056($fp)
	li $t0, 1
	sw $t0, -7060($fp)
	li $t0, 4
	lw $t1, -7060($fp)
	mul $t0, $t0, $t1
	sw $t0, -7064($fp)
	lw $t0, -7064($fp)
	lw $t1, -7056($fp)
	add $t0, $t0, $t1
	sw $t0, -7068($fp)
	lw $t0, -7068($fp)
	lw $t1, 0($t0)
	sw $t1, -7072($fp)
	lw $t0, -7072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -7076($fp)
	li $t0, 2
	sw $t0, -7080($fp)
	li $t0, 4
	lw $t1, -7080($fp)
	mul $t0, $t0, $t1
	sw $t0, -7084($fp)
	lw $t0, -7084($fp)
	lw $t1, -7076($fp)
	add $t0, $t0, $t1
	sw $t0, -7088($fp)
	lw $t0, -7088($fp)
	lw $t1, 0($t0)
	sw $t1, -7092($fp)
	lw $t0, -7092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -7096($fp)
	li $t0, 3
	sw $t0, -7100($fp)
	li $t0, 4
	lw $t1, -7100($fp)
	mul $t0, $t0, $t1
	sw $t0, -7104($fp)
	lw $t0, -7104($fp)
	lw $t1, -7096($fp)
	add $t0, $t0, $t1
	sw $t0, -7108($fp)
	lw $t0, -7108($fp)
	lw $t1, 0($t0)
	sw $t1, -7112($fp)
	lw $t0, -7112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -7116($fp)
	li $t0, 4
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
	lw $t0, -7132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -7136($fp)
	li $t0, 5
	sw $t0, -7140($fp)
	li $t0, 4
	lw $t1, -7140($fp)
	mul $t0, $t0, $t1
	sw $t0, -7144($fp)
	lw $t0, -7144($fp)
	lw $t1, -7136($fp)
	add $t0, $t0, $t1
	sw $t0, -7148($fp)
	lw $t0, -7148($fp)
	lw $t1, 0($t0)
	sw $t1, -7152($fp)
	lw $t0, -7152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -7156($fp)
	li $t0, 6
	sw $t0, -7160($fp)
	li $t0, 4
	lw $t1, -7160($fp)
	mul $t0, $t0, $t1
	sw $t0, -7164($fp)
	lw $t0, -7164($fp)
	lw $t1, -7156($fp)
	add $t0, $t0, $t1
	sw $t0, -7168($fp)
	lw $t0, -7168($fp)
	lw $t1, 0($t0)
	sw $t1, -7172($fp)
	lw $t0, -7172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -7176($fp)
	li $t0, 7
	sw $t0, -7180($fp)
	li $t0, 4
	lw $t1, -7180($fp)
	mul $t0, $t0, $t1
	sw $t0, -7184($fp)
	lw $t0, -7184($fp)
	lw $t1, -7176($fp)
	add $t0, $t0, $t1
	sw $t0, -7188($fp)
	lw $t0, -7188($fp)
	lw $t1, 0($t0)
	sw $t1, -7192($fp)
	lw $t0, -7192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -7196($fp)
	li $t0, 8
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
	lw $t0, -1736($fp)
	sw $t0, -7216($fp)
	lw $t0, -7216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1748($fp)
	sw $t0, -7220($fp)
	lw $t0, -7220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1760($fp)
	sw $t0, -7224($fp)
	lw $t0, -7224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1772($fp)
	sw $t0, -7228($fp)
	lw $t0, -7228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1784($fp)
	sw $t0, -7232($fp)
	lw $t0, -7232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1796($fp)
	sw $t0, -7236($fp)
	lw $t0, -7236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1808($fp)
	sw $t0, -7240($fp)
	lw $t0, -7240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1820($fp)
	sw $t0, -7244($fp)
	lw $t0, -7244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -232
	sw $t0, -7248($fp)
	li $t0, 0
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
	addi $t0, $fp, -232
	sw $t0, -7268($fp)
	li $t0, 1
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
	addi $t0, $fp, -232
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
	lw $t0, -7304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -232
	sw $t0, -7308($fp)
	li $t0, 3
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
	addi $t0, $fp, -232
	sw $t0, -7328($fp)
	li $t0, 4
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
	addi $t0, $fp, -232
	sw $t0, -7348($fp)
	li $t0, 5
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
	addi $t0, $fp, -232
	sw $t0, -7368($fp)
	li $t0, 6
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
	addi $t0, $fp, -232
	sw $t0, -7388($fp)
	li $t0, 7
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
	addi $t0, $fp, -232
	sw $t0, -7408($fp)
	li $t0, 8
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
	addi $t0, $fp, -232
	sw $t0, -7428($fp)
	li $t0, 9
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
	lw $t0, -2072($fp)
	sw $t0, -7448($fp)
	lw $t0, -7448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2084($fp)
	sw $t0, -7452($fp)
	lw $t0, -7452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2096($fp)
	sw $t0, -7456($fp)
	lw $t0, -7456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -7460($fp)
	li $t0, 0
	sw $t0, -7464($fp)
	li $t0, 4
	lw $t1, -7464($fp)
	mul $t0, $t0, $t1
	sw $t0, -7468($fp)
	lw $t0, -7468($fp)
	lw $t1, -7460($fp)
	add $t0, $t0, $t1
	sw $t0, -7472($fp)
	lw $t0, -7472($fp)
	lw $t1, 0($t0)
	sw $t1, -7476($fp)
	lw $t0, -7476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -7480($fp)
	li $t0, 1
	sw $t0, -7484($fp)
	li $t0, 4
	lw $t1, -7484($fp)
	mul $t0, $t0, $t1
	sw $t0, -7488($fp)
	lw $t0, -7488($fp)
	lw $t1, -7480($fp)
	add $t0, $t0, $t1
	sw $t0, -7492($fp)
	lw $t0, -7492($fp)
	lw $t1, 0($t0)
	sw $t1, -7496($fp)
	lw $t0, -7496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -7500($fp)
	li $t0, 2
	sw $t0, -7504($fp)
	li $t0, 4
	lw $t1, -7504($fp)
	mul $t0, $t0, $t1
	sw $t0, -7508($fp)
	lw $t0, -7508($fp)
	lw $t1, -7500($fp)
	add $t0, $t0, $t1
	sw $t0, -7512($fp)
	lw $t0, -7512($fp)
	lw $t1, 0($t0)
	sw $t1, -7516($fp)
	lw $t0, -7516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -7520($fp)
	li $t0, 3
	sw $t0, -7524($fp)
	li $t0, 4
	lw $t1, -7524($fp)
	mul $t0, $t0, $t1
	sw $t0, -7528($fp)
	lw $t0, -7528($fp)
	lw $t1, -7520($fp)
	add $t0, $t0, $t1
	sw $t0, -7532($fp)
	lw $t0, -7532($fp)
	lw $t1, 0($t0)
	sw $t1, -7536($fp)
	lw $t0, -7536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -7540($fp)
	li $t0, 4
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
	li $t0, 0
	sw $t0, -7564($fp)
	li $t0, 0
	sw $t0, -7568($fp)
	addi $t0, $fp, -88
	sw $t0, -7572($fp)
	li $t0, 9
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
	addi $sp, $sp, -4
	lw $t0, -7588($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7592($fp)
	addi $sp, $sp, 8
	li $t0, 13414
	sw $t0, -7596($fp)
	lw $t1, -7592($fp)
	lw $t2, -7596($fp)
	bgt $t1, $t2, label736
	j label737
label736:
	li $t0, 1
	sw $t0, -7568($fp)
label737:
	li $t0, 0
	sw $t0, -7600($fp)
	lw $t0, 4($fp)
	sw $t0, -7604($fp)
	lw $t0, -1796($fp)
	sw $t0, -7608($fp)
	lw $t0, -7604($fp)
	lw $t1, -7608($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7612($fp)
	lw $t1, -7612($fp)
	li $t2, 0
	bne $t1, $t2, label740
	j label739
label740:
	lw $t0, -752($fp)
	sw $t0, -7616($fp)
	lw $t1, -7616($fp)
	li $t2, 0
	bne $t1, $t2, label738
	j label739
label738:
	li $t0, 1
	sw $t0, -7600($fp)
label739:
	addi $sp, $sp, -4
	lw $t0, -7600($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7620($fp)
	addi $sp, $sp, 8
	lw $t1, -7568($fp)
	lw $t2, -7620($fp)
	beq $t1, $t2, label734
	j label735
label734:
	li $t0, 1
	sw $t0, -7564($fp)
label735:
	li $t0, 4
	lw $t1, -7564($fp)
	mul $t0, $t0, $t1
	sw $t0, -7624($fp)
	lw $t0, -7624($fp)
	lw $t1, -7560($fp)
	add $t0, $t0, $t1
	sw $t0, -7628($fp)
	lw $t0, -7628($fp)
	lw $t1, 0($t0)
	sw $t1, -7632($fp)
	lw $ra, -4($fp)
	lw $v0, -7632($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1260
	li $t0, 9580
	sw $t0, -64($fp)
	addi $t0, $fp, -20
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
	li $t0, 36795
	sw $t0, -88($fp)
	addi $t0, $fp, -20
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
	li $t0, 35036
	sw $t0, -112($fp)
	addi $t0, $fp, -20
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
	li $t0, 35254
	sw $t0, -136($fp)
	addi $t0, $fp, -20
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
	li $t0, 28980
	sw $t0, -160($fp)
	addi $t0, $fp, -32
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
	li $t0, 38126
	sw $t0, -184($fp)
	addi $t0, $fp, -32
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
	li $t0, 10680
	sw $t0, -208($fp)
	addi $t0, $fp, -32
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
	li $t0, 47721
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	li $t0, 15727
	sw $t0, -244($fp)
	addi $t0, $fp, -60
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
	li $t0, 17322
	sw $t0, -268($fp)
	addi $t0, $fp, -60
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
	li $t0, 17610
	sw $t0, -292($fp)
	addi $t0, $fp, -60
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
	li $t0, 63916
	sw $t0, -316($fp)
	addi $t0, $fp, -60
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
	li $t0, 54968
	sw $t0, -340($fp)
	addi $t0, $fp, -60
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
	li $t0, 27838
	sw $t0, -364($fp)
	addi $t0, $fp, -60
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
	li $t0, 20444
	sw $t0, -388($fp)
	addi $t0, $fp, -60
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
	li $t0, 50379
	sw $t0, -412($fp)
	lw $ra, -4($fp)
	lw $v0, -412($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -416($fp)
	lw $t0, -236($fp)
	sw $t0, -420($fp)
	li $t0, 0
	lw $t1, -420($fp)
	sub $t0, $t0, $t1
	sw $t0, -424($fp)
	li $t0, 0
	sw $t0, -428($fp)
	addi $t0, $fp, -60
	sw $t0, -432($fp)
	lw $t0, 4($fp)
	sw $t0, -436($fp)
	li $t0, 4
	lw $t1, -436($fp)
	mul $t0, $t0, $t1
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	lw $t1, -432($fp)
	add $t0, $t0, $t1
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	lw $t1, 0($t0)
	sw $t1, -448($fp)
	lw $t1, -448($fp)
	li $t2, 0
	bne $t1, $t2, label745
	j label744
label744:
	li $t0, 1
	sw $t0, -428($fp)
label745:
	addi $sp, $sp, -4
	lw $t0, -424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -428($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -452($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -452($fp)
	sub $t0, $t0, $t1
	sw $t0, -456($fp)
	lw $t1, -456($fp)
	li $t2, 0
	bne $t1, $t2, label741
	j label743
label743:
	addi $t0, $fp, -60
	sw $t0, -460($fp)
	li $t0, 1
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
	lw $t1, -476($fp)
	li $t2, 0
	bne $t1, $t2, label746
	j label742
label746:
	lw $t0, 4($fp)
	sw $t0, -480($fp)
	lw $t1, -480($fp)
	li $t2, 0
	bne $t1, $t2, label742
	j label741
label741:
	li $t0, 1
	sw $t0, -416($fp)
label742:
	lw $ra, -4($fp)
	lw $v0, -416($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, 8($fp)
	sw $t0, -484($fp)
	addi $t0, $fp, -20
	sw $t0, -488($fp)
	li $t0, 0
	sw $t0, -492($fp)
	li $t0, 4
	lw $t1, -492($fp)
	mul $t0, $t0, $t1
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	lw $t1, -488($fp)
	add $t0, $t0, $t1
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	lw $t1, 0($t0)
	sw $t1, -504($fp)
	li $t0, 0
	sw $t0, -508($fp)
	lw $t0, 8($fp)
	sw $t0, -512($fp)
	lw $t1, -512($fp)
	li $t2, 0
	bne $t1, $t2, label751
	j label750
label750:
	li $t0, 1
	sw $t0, -508($fp)
label751:
	lw $t0, -504($fp)
	lw $t1, -508($fp)
	mul $t0, $t0, $t1
	sw $t0, -516($fp)
	li $t0, 0
	lw $t1, -516($fp)
	sub $t0, $t0, $t1
	sw $t0, -520($fp)
	lw $t0, -484($fp)
	lw $t1, -520($fp)
	add $t0, $t0, $t1
	sw $t0, -524($fp)
	lw $t1, -524($fp)
	li $t2, 0
	bne $t1, $t2, label747
	j label748
label747:
	li $t0, 49304
	sw $t0, -528($fp)
	addi $t0, $fp, -60
	sw $t0, -532($fp)
	li $t0, 0
	sw $t0, -536($fp)
	li $t0, 63570
	sw $t0, -540($fp)
	li $t0, 3825
	sw $t0, -544($fp)
	lw $t1, -540($fp)
	lw $t2, -544($fp)
	ble $t1, $t2, label752
	j label753
label752:
	li $t0, 1
	sw $t0, -536($fp)
label753:
	li $t0, 4
	lw $t1, -536($fp)
	mul $t0, $t0, $t1
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	lw $t1, -532($fp)
	add $t0, $t0, $t1
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	lw $t1, 0($t0)
	sw $t1, -556($fp)
	lw $t0, -528($fp)
	lw $t1, -556($fp)
	sub $t0, $t0, $t1
	sw $t0, -560($fp)
	j label749
label748:
label754:
	lw $t0, -236($fp)
	sw $t0, -564($fp)
	lw $t1, -564($fp)
	li $t2, 0
	bne $t1, $t2, label755
	j label757
label757:
	addi $t0, $fp, -32
	sw $t0, -568($fp)
	li $t0, 1
	sw $t0, -572($fp)
	li $t0, 4
	lw $t1, -572($fp)
	mul $t0, $t0, $t1
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	lw $t1, -568($fp)
	add $t0, $t0, $t1
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	lw $t1, 0($t0)
	sw $t1, -584($fp)
	addi $t0, $fp, -32
	sw $t0, -588($fp)
	li $t0, 1
	sw $t0, -592($fp)
	li $t0, 4
	lw $t1, -592($fp)
	mul $t0, $t0, $t1
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	lw $t1, -588($fp)
	add $t0, $t0, $t1
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	lw $t1, 0($t0)
	sw $t1, -604($fp)
	lw $t0, -584($fp)
	lw $t1, -604($fp)
	mul $t0, $t0, $t1
	sw $t0, -608($fp)
	lw $t1, -608($fp)
	li $t2, 0
	bne $t1, $t2, label755
	j label756
label755:
	li $t0, 23301
	sw $t0, -612($fp)
	j label754
label756:
label749:
	addi $t0, $fp, -20
	sw $t0, -616($fp)
	li $t0, 0
	sw $t0, -620($fp)
	li $t0, 4
	lw $t1, -620($fp)
	mul $t0, $t0, $t1
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	lw $t1, -616($fp)
	add $t0, $t0, $t1
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	lw $t1, 0($t0)
	sw $t1, -632($fp)
	lw $t0, -632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -636($fp)
	li $t0, 1
	sw $t0, -640($fp)
	li $t0, 4
	lw $t1, -640($fp)
	mul $t0, $t0, $t1
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	lw $t1, -636($fp)
	add $t0, $t0, $t1
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	lw $t1, 0($t0)
	sw $t1, -652($fp)
	lw $t0, -652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -656($fp)
	li $t0, 2
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
	addi $t0, $fp, -20
	sw $t0, -676($fp)
	li $t0, 3
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
	addi $t0, $fp, -32
	sw $t0, -696($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -716($fp)
	li $t0, 1
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
	addi $t0, $fp, -32
	sw $t0, -736($fp)
	li $t0, 2
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
	lw $t0, -236($fp)
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -760($fp)
	li $t0, 0
	sw $t0, -764($fp)
	li $t0, 4
	lw $t1, -764($fp)
	mul $t0, $t0, $t1
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	lw $t1, -760($fp)
	add $t0, $t0, $t1
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	lw $t1, 0($t0)
	sw $t1, -776($fp)
	lw $t0, -776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -780($fp)
	li $t0, 1
	sw $t0, -784($fp)
	li $t0, 4
	lw $t1, -784($fp)
	mul $t0, $t0, $t1
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	lw $t1, -780($fp)
	add $t0, $t0, $t1
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	lw $t1, 0($t0)
	sw $t1, -796($fp)
	lw $t0, -796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -800($fp)
	li $t0, 2
	sw $t0, -804($fp)
	li $t0, 4
	lw $t1, -804($fp)
	mul $t0, $t0, $t1
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	lw $t1, -800($fp)
	add $t0, $t0, $t1
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	lw $t1, 0($t0)
	sw $t1, -816($fp)
	lw $t0, -816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -820($fp)
	li $t0, 3
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
	lw $t0, -836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -840($fp)
	li $t0, 4
	sw $t0, -844($fp)
	li $t0, 4
	lw $t1, -844($fp)
	mul $t0, $t0, $t1
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	lw $t1, -840($fp)
	add $t0, $t0, $t1
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	lw $t1, 0($t0)
	sw $t1, -856($fp)
	lw $t0, -856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -860($fp)
	li $t0, 5
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
	addi $t0, $fp, -60
	sw $t0, -880($fp)
	li $t0, 6
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
	li $t0, 0
	sw $t0, -900($fp)
	addi $t0, $fp, -60
	sw $t0, -904($fp)
	li $t0, 1
	sw $t0, -908($fp)
	li $t0, 4
	lw $t1, -908($fp)
	mul $t0, $t0, $t1
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	lw $t1, -904($fp)
	add $t0, $t0, $t1
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	lw $t1, 0($t0)
	sw $t1, -920($fp)
	li $t0, 0
	lw $t1, -920($fp)
	sub $t0, $t0, $t1
	sw $t0, -924($fp)
	lw $t0, 4($fp)
	sw $t0, -928($fp)
	lw $t1, -924($fp)
	lw $t2, -928($fp)
	bgt $t1, $t2, label758
	j label759
label758:
	li $t0, 1
	sw $t0, -900($fp)
label759:
	lw $ra, -4($fp)
	lw $v0, -900($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -20
	sw $t0, -932($fp)
	li $t0, 0
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
	addi $t0, $fp, -20
	sw $t0, -952($fp)
	li $t0, 1
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
	addi $t0, $fp, -20
	sw $t0, -972($fp)
	li $t0, 2
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
	addi $t0, $fp, -20
	sw $t0, -992($fp)
	li $t0, 3
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
	addi $t0, $fp, -32
	sw $t0, -1012($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -1032($fp)
	li $t0, 1
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
	addi $t0, $fp, -32
	sw $t0, -1052($fp)
	li $t0, 2
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
	lw $t0, -236($fp)
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1076($fp)
	li $t0, 0
	sw $t0, -1080($fp)
	li $t0, 4
	lw $t1, -1080($fp)
	mul $t0, $t0, $t1
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	lw $t1, -1076($fp)
	add $t0, $t0, $t1
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	lw $t1, 0($t0)
	sw $t1, -1092($fp)
	lw $t0, -1092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1096($fp)
	li $t0, 1
	sw $t0, -1100($fp)
	li $t0, 4
	lw $t1, -1100($fp)
	mul $t0, $t0, $t1
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	lw $t1, -1096($fp)
	add $t0, $t0, $t1
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	lw $t1, 0($t0)
	sw $t1, -1112($fp)
	lw $t0, -1112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1116($fp)
	li $t0, 2
	sw $t0, -1120($fp)
	li $t0, 4
	lw $t1, -1120($fp)
	mul $t0, $t0, $t1
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	lw $t1, -1116($fp)
	add $t0, $t0, $t1
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	lw $t1, 0($t0)
	sw $t1, -1132($fp)
	lw $t0, -1132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1136($fp)
	li $t0, 3
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
	addi $t0, $fp, -60
	sw $t0, -1156($fp)
	li $t0, 4
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
	addi $t0, $fp, -60
	sw $t0, -1176($fp)
	li $t0, 5
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
	addi $t0, $fp, -60
	sw $t0, -1196($fp)
	li $t0, 6
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
	addi $t0, $fp, -60
	sw $t0, -1216($fp)
	lw $t0, 4($fp)
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
	li $t0, 20664
	sw $t0, -1236($fp)
	lw $t0, -1232($fp)
	lw $t1, -1236($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1240($fp)
	li $t0, 0
	sw $t0, -1244($fp)
	li $t0, 50946
	sw $t0, -1248($fp)
	li $t0, 1
	sw $t0, -1252($fp)
	lw $t0, -1248($fp)
	lw $t1, -1252($fp)
	mul $t0, $t0, $t1
	sw $t0, -1256($fp)
	li $t0, 6216
	sw $t0, -1260($fp)
	lw $t1, -1256($fp)
	lw $t2, -1260($fp)
	bne $t1, $t2, label760
	j label761
label760:
	li $t0, 1
	sw $t0, -1244($fp)
label761:
	addi $sp, $sp, -4
	lw $t0, -1240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1244($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1264($fp)
	addi $sp, $sp, 12
	lw $ra, -4($fp)
	lw $v0, -1264($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -48
	li $t0, 16001
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 0
	sw $t0, -20($fp)
	li $t0, 0
	sw $t0, -24($fp)
	li $t0, 44342
	sw $t0, -28($fp)
	lw $t0, -12($fp)
	sw $t0, -32($fp)
	lw $t1, -28($fp)
	lw $t2, -32($fp)
	beq $t1, $t2, label764
	j label765
label764:
	li $t0, 1
	sw $t0, -24($fp)
label765:
	lw $t0, -12($fp)
	sw $t0, -36($fp)
	lw $t1, -24($fp)
	lw $t2, -36($fp)
	bne $t1, $t2, label762
	j label763
label762:
	li $t0, 1
	sw $t0, -20($fp)
label763:
	addi $sp, $sp, -4
	lw $t0, -20($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -40($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -40($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -44($fp)
	addi $sp, $sp, 8
	lw $t0, -12($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 31344
	sw $t0, -52($fp)
	lw $ra, -4($fp)
	lw $v0, -52($fp)
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
