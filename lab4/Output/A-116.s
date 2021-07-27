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
	addi $sp, $sp, -436
	li $t0, 54541
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	li $t0, 52273
	sw $t0, -52($fp)
	addi $t0, $fp, -36
	sw $t0, -56($fp)
	li $t0, 0
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
	li $t0, 14865
	sw $t0, -76($fp)
	addi $t0, $fp, -36
	sw $t0, -80($fp)
	li $t0, 1
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
	li $t0, 58782
	sw $t0, -100($fp)
	addi $t0, $fp, -36
	sw $t0, -104($fp)
	li $t0, 2
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
	li $t0, 59823
	sw $t0, -124($fp)
	addi $t0, $fp, -36
	sw $t0, -128($fp)
	li $t0, 3
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
	li $t0, 14890
	sw $t0, -148($fp)
	addi $t0, $fp, -36
	sw $t0, -152($fp)
	li $t0, 4
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
	li $t0, 29330
	sw $t0, -172($fp)
	addi $t0, $fp, -36
	sw $t0, -176($fp)
	li $t0, 5
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
	li $t0, 17841
	sw $t0, -196($fp)
	addi $t0, $fp, -36
	sw $t0, -200($fp)
	li $t0, 6
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
	li $t0, 16422
	sw $t0, -220($fp)
	addi $t0, $fp, -36
	sw $t0, -224($fp)
	li $t0, 7
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
	lw $t0, -44($fp)
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -248($fp)
	li $t0, 0
	sw $t0, -252($fp)
	li $t0, 4
	lw $t1, -252($fp)
	mul $t0, $t0, $t1
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	lw $t1, -248($fp)
	add $t0, $t0, $t1
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	lw $t1, 0($t0)
	sw $t1, -264($fp)
	lw $t0, -264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -268($fp)
	li $t0, 1
	sw $t0, -272($fp)
	li $t0, 4
	lw $t1, -272($fp)
	mul $t0, $t0, $t1
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	lw $t1, -268($fp)
	add $t0, $t0, $t1
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	lw $t1, 0($t0)
	sw $t1, -284($fp)
	lw $t0, -284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -288($fp)
	li $t0, 2
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
	lw $t0, -304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -308($fp)
	li $t0, 3
	sw $t0, -312($fp)
	li $t0, 4
	lw $t1, -312($fp)
	mul $t0, $t0, $t1
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	lw $t1, -308($fp)
	add $t0, $t0, $t1
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	lw $t1, 0($t0)
	sw $t1, -324($fp)
	lw $t0, -324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -328($fp)
	li $t0, 4
	sw $t0, -332($fp)
	li $t0, 4
	lw $t1, -332($fp)
	mul $t0, $t0, $t1
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	lw $t1, -328($fp)
	add $t0, $t0, $t1
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	lw $t1, 0($t0)
	sw $t1, -344($fp)
	lw $t0, -344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -348($fp)
	li $t0, 5
	sw $t0, -352($fp)
	li $t0, 4
	lw $t1, -352($fp)
	mul $t0, $t0, $t1
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	lw $t1, -348($fp)
	add $t0, $t0, $t1
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	lw $t1, 0($t0)
	sw $t1, -364($fp)
	lw $t0, -364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -368($fp)
	li $t0, 6
	sw $t0, -372($fp)
	li $t0, 4
	lw $t1, -372($fp)
	mul $t0, $t0, $t1
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	lw $t1, -368($fp)
	add $t0, $t0, $t1
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	lw $t1, 0($t0)
	sw $t1, -384($fp)
	lw $t0, -384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -388($fp)
	li $t0, 7
	sw $t0, -392($fp)
	li $t0, 4
	lw $t1, -392($fp)
	mul $t0, $t0, $t1
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	lw $t1, -388($fp)
	add $t0, $t0, $t1
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	lw $t1, 0($t0)
	sw $t1, -404($fp)
	lw $t0, -404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -408($fp)
	li $t0, 0
	sw $t0, -412($fp)
	lw $t0, -44($fp)
	sw $t0, -416($fp)
	lw $t0, -44($fp)
	sw $t0, -420($fp)
	lw $t0, -44($fp)
	sw $t0, -424($fp)
	lw $t0, -420($fp)
	lw $t1, -424($fp)
	add $t0, $t0, $t1
	sw $t0, -428($fp)
	lw $t1, -416($fp)
	lw $t2, -428($fp)
	ble $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -412($fp)
label122:
	li $t0, 4
	lw $t1, -412($fp)
	mul $t0, $t0, $t1
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	lw $t1, -408($fp)
	add $t0, $t0, $t1
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	lw $t1, 0($t0)
	sw $t1, -440($fp)
	lw $ra, -4($fp)
	lw $v0, -440($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -376
	li $t0, 47994
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
	li $t0, 15684
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
	li $t0, 47591
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
	li $t0, 47558
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
	li $t0, 34787
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
	li $t0, 0
	sw $t0, -148($fp)
	li $t0, 51362
	sw $t0, -152($fp)
	lw $t1, -152($fp)
	li $t2, 0
	bne $t1, $t2, label127
	j label126
label126:
	li $t0, 1
	sw $t0, -148($fp)
label127:
	lw $t0, 4($fp)
	sw $t0, -156($fp)
	lw $t0, -148($fp)
	lw $t1, -156($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -160($fp)
	li $t0, 0
	lw $t1, -160($fp)
	sub $t0, $t0, $t1
	sw $t0, -164($fp)
	lw $t1, -164($fp)
	li $t2, 0
	bne $t1, $t2, label123
	j label124
label123:
	li $t0, 0
	sw $t0, -168($fp)
	lw $t0, 8($fp)
	sw $t0, -172($fp)
	li $t0, 65422
	sw $t0, -176($fp)
	lw $t0, 8($fp)
	sw $t0, -180($fp)
	li $t0, 0
	lw $t1, -180($fp)
	sub $t0, $t0, $t1
	sw $t0, -184($fp)
	li $t0, 0
	lw $t1, -184($fp)
	sub $t0, $t0, $t1
	sw $t0, -188($fp)
	li $t0, 24460
	sw $t0, -192($fp)
	lw $t0, 12($fp)
	sw $t0, -196($fp)
	lw $t0, -192($fp)
	lw $t1, -196($fp)
	add $t0, $t0, $t1
	sw $t0, -200($fp)
	lw $t0, 8($fp)
	sw $t0, -204($fp)
	lw $t0, -200($fp)
	lw $t1, -204($fp)
	add $t0, $t0, $t1
	sw $t0, -208($fp)
	addi $sp, $sp, -4
	lw $t0, -176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -208($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -212($fp)
	addi $sp, $sp, 16
	lw $t1, -172($fp)
	lw $t2, -212($fp)
	ble $t1, $t2, label128
	j label129
label128:
	li $t0, 1
	sw $t0, -168($fp)
label129:
	j label125
label124:
	li $t0, 0
	sw $t0, -216($fp)
	lw $t0, 8($fp)
	sw $t0, -220($fp)
	lw $t0, 8($fp)
	sw $t0, -224($fp)
	lw $t1, -220($fp)
	lw $t2, -224($fp)
	blt $t1, $t2, label130
	j label131
label130:
	li $t0, 1
	sw $t0, -216($fp)
label131:
label125:
	li $t0, 0
	sw $t0, -228($fp)
	li $t0, 0
	sw $t0, -232($fp)
	addi $t0, $fp, -24
	sw $t0, -236($fp)
	lw $t0, 8($fp)
	sw $t0, -240($fp)
	li $t0, 4
	lw $t1, -240($fp)
	mul $t0, $t0, $t1
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	lw $t1, -236($fp)
	add $t0, $t0, $t1
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	lw $t1, 0($t0)
	sw $t1, -252($fp)
	lw $t1, -252($fp)
	li $t2, 0
	bne $t1, $t2, label135
	j label134
label134:
	li $t0, 1
	sw $t0, -232($fp)
label135:
	lw $t0, 8($fp)
	sw $t0, -256($fp)
	lw $t0, -232($fp)
	lw $t1, -256($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -260($fp)
	jal f6
	sw $v0, -264($fp)
	addi $sp, $sp, 4
	lw $t1, -260($fp)
	lw $t2, -264($fp)
	bgt $t1, $t2, label132
	j label133
label132:
	li $t0, 1
	sw $t0, -228($fp)
label133:
	li $t0, 0
	sw $t0, -268($fp)
	jal f6
	sw $v0, -272($fp)
	addi $sp, $sp, 4
	lw $t1, -272($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label136
label136:
	li $t0, 1
	sw $t0, -268($fp)
label137:
	li $t0, 0
	lw $t1, -268($fp)
	sub $t0, $t0, $t1
	sw $t0, -276($fp)
	addi $t0, $fp, -24
	sw $t0, -280($fp)
	li $t0, 0
	sw $t0, -284($fp)
	li $t0, 4
	lw $t1, -284($fp)
	mul $t0, $t0, $t1
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	lw $t1, -280($fp)
	add $t0, $t0, $t1
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	lw $t1, 0($t0)
	sw $t1, -296($fp)
	lw $t0, -296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -300($fp)
	li $t0, 1
	sw $t0, -304($fp)
	li $t0, 4
	lw $t1, -304($fp)
	mul $t0, $t0, $t1
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	lw $t1, -300($fp)
	add $t0, $t0, $t1
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	lw $t1, 0($t0)
	sw $t1, -316($fp)
	lw $t0, -316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -320($fp)
	li $t0, 2
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
	lw $t0, -336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -340($fp)
	li $t0, 3
	sw $t0, -344($fp)
	li $t0, 4
	lw $t1, -344($fp)
	mul $t0, $t0, $t1
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	lw $t1, -340($fp)
	add $t0, $t0, $t1
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	lw $t1, 0($t0)
	sw $t1, -356($fp)
	lw $t0, -356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -360($fp)
	li $t0, 4
	sw $t0, -364($fp)
	li $t0, 4
	lw $t1, -364($fp)
	mul $t0, $t0, $t1
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	lw $t1, -360($fp)
	add $t0, $t0, $t1
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	lw $t1, 0($t0)
	sw $t1, -376($fp)
	lw $t0, -376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, 8($fp)
	sw $t0, -380($fp)
	lw $ra, -4($fp)
	lw $v0, -380($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -10772
	li $t0, 1071
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	li $t0, 27659
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	li $t0, 6501
	sw $t0, -264($fp)
	addi $t0, $fp, -40
	sw $t0, -268($fp)
	li $t0, 0
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
	li $t0, 34147
	sw $t0, -288($fp)
	addi $t0, $fp, -40
	sw $t0, -292($fp)
	li $t0, 1
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
	li $t0, 63497
	sw $t0, -312($fp)
	addi $t0, $fp, -40
	sw $t0, -316($fp)
	li $t0, 2
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
	li $t0, 64586
	sw $t0, -336($fp)
	addi $t0, $fp, -40
	sw $t0, -340($fp)
	li $t0, 3
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
	li $t0, 61423
	sw $t0, -360($fp)
	addi $t0, $fp, -40
	sw $t0, -364($fp)
	li $t0, 4
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
	li $t0, 19663
	sw $t0, -384($fp)
	addi $t0, $fp, -40
	sw $t0, -388($fp)
	li $t0, 5
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
	li $t0, 61122
	sw $t0, -408($fp)
	addi $t0, $fp, -40
	sw $t0, -412($fp)
	li $t0, 6
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
	li $t0, 55453
	sw $t0, -432($fp)
	addi $t0, $fp, -40
	sw $t0, -436($fp)
	li $t0, 7
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
	li $t0, 51222
	sw $t0, -456($fp)
	addi $t0, $fp, -40
	sw $t0, -460($fp)
	li $t0, 8
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
	li $t0, 25719
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	li $t0, 51901
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	li $t0, 37589
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	li $t0, 14724
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	li $t0, 38638
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	li $t0, 52454
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	li $t0, 7970
	sw $t0, -552($fp)
	addi $t0, $fp, -44
	sw $t0, -556($fp)
	li $t0, 0
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
	li $t0, 32925
	sw $t0, -576($fp)
	addi $t0, $fp, -48
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
	li $t0, 1809
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -608($fp)
	li $t0, 37301
	sw $t0, -612($fp)
	addi $t0, $fp, -52
	sw $t0, -616($fp)
	li $t0, 0
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -624($fp)
	lw $t0, -616($fp)
	lw $t1, -624($fp)
	add $t0, $t0, $t1
	sw $t0, -628($fp)
	lw $t0, -612($fp)
	lw $t1, -628($fp)
	sw $t0, 0($t1)
	lw $t0, -628($fp)
	lw $t1, 0($t0)
	sw $t1, -632($fp)
	li $t0, 50767
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	li $t0, 18231
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -656($fp)
	li $t0, 19759
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -668($fp)
	li $t0, 915
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	li $t0, 286
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -692($fp)
	li $t0, 1781
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	li $t0, 35702
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	li $t0, 51649
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -728($fp)
	li $t0, 26242
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -740($fp)
	li $t0, 35588
	sw $t0, -744($fp)
	addi $t0, $fp, -76
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
	li $t0, 52720
	sw $t0, -768($fp)
	addi $t0, $fp, -76
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
	li $t0, 53901
	sw $t0, -792($fp)
	addi $t0, $fp, -76
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
	li $t0, 42089
	sw $t0, -816($fp)
	addi $t0, $fp, -76
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
	li $t0, 21332
	sw $t0, -840($fp)
	addi $t0, $fp, -76
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
	li $t0, 51862
	sw $t0, -864($fp)
	addi $t0, $fp, -76
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
	li $t0, 41140
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	sw $t0, -896($fp)
	li $t0, 17219
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	sw $t0, -908($fp)
	li $t0, 5989
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	sw $t0, -920($fp)
	li $t0, 36726
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -932($fp)
	li $t0, 7136
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	sw $t0, -944($fp)
	li $t0, 57212
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	sw $t0, -956($fp)
	li $t0, 62445
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	sw $t0, -968($fp)
	li $t0, 59037
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	sw $t0, -980($fp)
	li $t0, 29265
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	sw $t0, -992($fp)
	li $t0, 11633
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	sw $t0, -1004($fp)
	li $t0, 32139
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	sw $t0, -1016($fp)
	li $t0, 16184
	sw $t0, -1020($fp)
	addi $t0, $fp, -80
	sw $t0, -1024($fp)
	li $t0, 0
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1032($fp)
	lw $t0, -1024($fp)
	lw $t1, -1032($fp)
	add $t0, $t0, $t1
	sw $t0, -1036($fp)
	lw $t0, -1020($fp)
	lw $t1, -1036($fp)
	sw $t0, 0($t1)
	lw $t0, -1036($fp)
	lw $t1, 0($t0)
	sw $t1, -1040($fp)
	li $t0, 19604
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -1052($fp)
	li $t0, 65065
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	sw $t0, -1064($fp)
	li $t0, 17993
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	sw $t0, -1076($fp)
	li $t0, 56905
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, -1088($fp)
	li $t0, 50296
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	sw $t0, -1100($fp)
	li $t0, 36224
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	sw $t0, -1112($fp)
	li $t0, 11128
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	sw $t0, -1124($fp)
	li $t0, 51211
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	sw $t0, -1136($fp)
	li $t0, 36510
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	sw $t0, -1148($fp)
	li $t0, 12909
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	sw $t0, -1160($fp)
	li $t0, 21378
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	sw $t0, -1172($fp)
	li $t0, 22623
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	sw $t0, -1184($fp)
	li $t0, 39151
	sw $t0, -1188($fp)
	addi $t0, $fp, -96
	sw $t0, -1192($fp)
	li $t0, 0
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1200($fp)
	lw $t0, -1192($fp)
	lw $t1, -1200($fp)
	add $t0, $t0, $t1
	sw $t0, -1204($fp)
	lw $t0, -1188($fp)
	lw $t1, -1204($fp)
	sw $t0, 0($t1)
	lw $t0, -1204($fp)
	lw $t1, 0($t0)
	sw $t1, -1208($fp)
	li $t0, 56966
	sw $t0, -1212($fp)
	addi $t0, $fp, -96
	sw $t0, -1216($fp)
	li $t0, 1
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1224($fp)
	lw $t0, -1216($fp)
	lw $t1, -1224($fp)
	add $t0, $t0, $t1
	sw $t0, -1228($fp)
	lw $t0, -1212($fp)
	lw $t1, -1228($fp)
	sw $t0, 0($t1)
	lw $t0, -1228($fp)
	lw $t1, 0($t0)
	sw $t1, -1232($fp)
	li $t0, 9808
	sw $t0, -1236($fp)
	addi $t0, $fp, -96
	sw $t0, -1240($fp)
	li $t0, 2
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1248($fp)
	lw $t0, -1240($fp)
	lw $t1, -1248($fp)
	add $t0, $t0, $t1
	sw $t0, -1252($fp)
	lw $t0, -1236($fp)
	lw $t1, -1252($fp)
	sw $t0, 0($t1)
	lw $t0, -1252($fp)
	lw $t1, 0($t0)
	sw $t1, -1256($fp)
	li $t0, 27517
	sw $t0, -1260($fp)
	addi $t0, $fp, -96
	sw $t0, -1264($fp)
	li $t0, 3
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
	li $t0, 33520
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -1292($fp)
	li $t0, 31140
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	sw $t0, -1304($fp)
	li $t0, 13843
	sw $t0, -1308($fp)
	addi $t0, $fp, -128
	sw $t0, -1312($fp)
	li $t0, 0
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
	li $t0, 9124
	sw $t0, -1332($fp)
	addi $t0, $fp, -128
	sw $t0, -1336($fp)
	li $t0, 1
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
	li $t0, 48359
	sw $t0, -1356($fp)
	addi $t0, $fp, -128
	sw $t0, -1360($fp)
	li $t0, 2
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
	li $t0, 19833
	sw $t0, -1380($fp)
	addi $t0, $fp, -128
	sw $t0, -1384($fp)
	li $t0, 3
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1392($fp)
	lw $t0, -1384($fp)
	lw $t1, -1392($fp)
	add $t0, $t0, $t1
	sw $t0, -1396($fp)
	lw $t0, -1380($fp)
	lw $t1, -1396($fp)
	sw $t0, 0($t1)
	lw $t0, -1396($fp)
	lw $t1, 0($t0)
	sw $t1, -1400($fp)
	li $t0, 45850
	sw $t0, -1404($fp)
	addi $t0, $fp, -128
	sw $t0, -1408($fp)
	li $t0, 4
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1416($fp)
	lw $t0, -1408($fp)
	lw $t1, -1416($fp)
	add $t0, $t0, $t1
	sw $t0, -1420($fp)
	lw $t0, -1404($fp)
	lw $t1, -1420($fp)
	sw $t0, 0($t1)
	lw $t0, -1420($fp)
	lw $t1, 0($t0)
	sw $t1, -1424($fp)
	li $t0, 55496
	sw $t0, -1428($fp)
	addi $t0, $fp, -128
	sw $t0, -1432($fp)
	li $t0, 5
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1440($fp)
	lw $t0, -1432($fp)
	lw $t1, -1440($fp)
	add $t0, $t0, $t1
	sw $t0, -1444($fp)
	lw $t0, -1428($fp)
	lw $t1, -1444($fp)
	sw $t0, 0($t1)
	lw $t0, -1444($fp)
	lw $t1, 0($t0)
	sw $t1, -1448($fp)
	li $t0, 11509
	sw $t0, -1452($fp)
	addi $t0, $fp, -128
	sw $t0, -1456($fp)
	li $t0, 6
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1464($fp)
	lw $t0, -1456($fp)
	lw $t1, -1464($fp)
	add $t0, $t0, $t1
	sw $t0, -1468($fp)
	lw $t0, -1452($fp)
	lw $t1, -1468($fp)
	sw $t0, 0($t1)
	lw $t0, -1468($fp)
	lw $t1, 0($t0)
	sw $t1, -1472($fp)
	li $t0, 42759
	sw $t0, -1476($fp)
	addi $t0, $fp, -128
	sw $t0, -1480($fp)
	li $t0, 7
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
	li $t0, 48997
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	sw $t0, -1508($fp)
	li $t0, 40774
	sw $t0, -1512($fp)
	addi $t0, $fp, -160
	sw $t0, -1516($fp)
	li $t0, 0
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1524($fp)
	lw $t0, -1516($fp)
	lw $t1, -1524($fp)
	add $t0, $t0, $t1
	sw $t0, -1528($fp)
	lw $t0, -1512($fp)
	lw $t1, -1528($fp)
	sw $t0, 0($t1)
	lw $t0, -1528($fp)
	lw $t1, 0($t0)
	sw $t1, -1532($fp)
	li $t0, 54392
	sw $t0, -1536($fp)
	addi $t0, $fp, -160
	sw $t0, -1540($fp)
	li $t0, 1
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1548($fp)
	lw $t0, -1540($fp)
	lw $t1, -1548($fp)
	add $t0, $t0, $t1
	sw $t0, -1552($fp)
	lw $t0, -1536($fp)
	lw $t1, -1552($fp)
	sw $t0, 0($t1)
	lw $t0, -1552($fp)
	lw $t1, 0($t0)
	sw $t1, -1556($fp)
	li $t0, 15601
	sw $t0, -1560($fp)
	addi $t0, $fp, -160
	sw $t0, -1564($fp)
	li $t0, 2
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1572($fp)
	lw $t0, -1564($fp)
	lw $t1, -1572($fp)
	add $t0, $t0, $t1
	sw $t0, -1576($fp)
	lw $t0, -1560($fp)
	lw $t1, -1576($fp)
	sw $t0, 0($t1)
	lw $t0, -1576($fp)
	lw $t1, 0($t0)
	sw $t1, -1580($fp)
	li $t0, 56958
	sw $t0, -1584($fp)
	addi $t0, $fp, -160
	sw $t0, -1588($fp)
	li $t0, 3
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1596($fp)
	lw $t0, -1588($fp)
	lw $t1, -1596($fp)
	add $t0, $t0, $t1
	sw $t0, -1600($fp)
	lw $t0, -1584($fp)
	lw $t1, -1600($fp)
	sw $t0, 0($t1)
	lw $t0, -1600($fp)
	lw $t1, 0($t0)
	sw $t1, -1604($fp)
	li $t0, 8460
	sw $t0, -1608($fp)
	addi $t0, $fp, -160
	sw $t0, -1612($fp)
	li $t0, 4
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1620($fp)
	lw $t0, -1612($fp)
	lw $t1, -1620($fp)
	add $t0, $t0, $t1
	sw $t0, -1624($fp)
	lw $t0, -1608($fp)
	lw $t1, -1624($fp)
	sw $t0, 0($t1)
	lw $t0, -1624($fp)
	lw $t1, 0($t0)
	sw $t1, -1628($fp)
	li $t0, 15130
	sw $t0, -1632($fp)
	addi $t0, $fp, -160
	sw $t0, -1636($fp)
	li $t0, 5
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
	li $t0, 9415
	sw $t0, -1656($fp)
	addi $t0, $fp, -160
	sw $t0, -1660($fp)
	li $t0, 6
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
	li $t0, 65365
	sw $t0, -1680($fp)
	addi $t0, $fp, -160
	sw $t0, -1684($fp)
	li $t0, 7
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
	li $t0, 65426
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	sw $t0, -1712($fp)
	li $t0, 45639
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	sw $t0, -1724($fp)
	li $t0, 10957
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	sw $t0, -1736($fp)
	li $t0, 51101
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	sw $t0, -1748($fp)
	li $t0, 16614
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	sw $t0, -1760($fp)
	li $t0, 23867
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	sw $t0, -1772($fp)
	li $t0, 6943
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	sw $t0, -1780($fp)
	lw $t0, -1780($fp)
	sw $t0, -1784($fp)
	li $t0, 39237
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	sw $t0, -1796($fp)
	li $t0, 63018
	sw $t0, -1800($fp)
	lw $t0, -1800($fp)
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	sw $t0, -1808($fp)
	li $t0, 63910
	sw $t0, -1812($fp)
	lw $t0, -1812($fp)
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	sw $t0, -1820($fp)
	li $t0, 49045
	sw $t0, -1824($fp)
	lw $t0, -1824($fp)
	sw $t0, -1828($fp)
	lw $t0, -1828($fp)
	sw $t0, -1832($fp)
	li $t0, 24999
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	sw $t0, -1844($fp)
	li $t0, 31894
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	sw $t0, -1856($fp)
	li $t0, 14649
	sw $t0, -1860($fp)
	lw $t0, -1860($fp)
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	sw $t0, -1868($fp)
	li $t0, 38843
	sw $t0, -1872($fp)
	lw $t0, -1872($fp)
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	sw $t0, -1880($fp)
	li $t0, 41018
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	sw $t0, -1888($fp)
	lw $t0, -1888($fp)
	sw $t0, -1892($fp)
	li $t0, 63009
	sw $t0, -1896($fp)
	addi $t0, $fp, -176
	sw $t0, -1900($fp)
	li $t0, 0
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
	li $t0, 58676
	sw $t0, -1920($fp)
	addi $t0, $fp, -176
	sw $t0, -1924($fp)
	li $t0, 1
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
	li $t0, 21332
	sw $t0, -1944($fp)
	addi $t0, $fp, -176
	sw $t0, -1948($fp)
	li $t0, 2
	sw $t0, -1952($fp)
	lw $t0, -1952($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1956($fp)
	lw $t0, -1948($fp)
	lw $t1, -1956($fp)
	add $t0, $t0, $t1
	sw $t0, -1960($fp)
	lw $t0, -1944($fp)
	lw $t1, -1960($fp)
	sw $t0, 0($t1)
	lw $t0, -1960($fp)
	lw $t1, 0($t0)
	sw $t1, -1964($fp)
	li $t0, 52969
	sw $t0, -1968($fp)
	addi $t0, $fp, -176
	sw $t0, -1972($fp)
	li $t0, 3
	sw $t0, -1976($fp)
	lw $t0, -1976($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1980($fp)
	lw $t0, -1972($fp)
	lw $t1, -1980($fp)
	add $t0, $t0, $t1
	sw $t0, -1984($fp)
	lw $t0, -1968($fp)
	lw $t1, -1984($fp)
	sw $t0, 0($t1)
	lw $t0, -1984($fp)
	lw $t1, 0($t0)
	sw $t1, -1988($fp)
	li $t0, 4649
	sw $t0, -1992($fp)
	addi $t0, $fp, -200
	sw $t0, -1996($fp)
	li $t0, 0
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2004($fp)
	lw $t0, -1996($fp)
	lw $t1, -2004($fp)
	add $t0, $t0, $t1
	sw $t0, -2008($fp)
	lw $t0, -1992($fp)
	lw $t1, -2008($fp)
	sw $t0, 0($t1)
	lw $t0, -2008($fp)
	lw $t1, 0($t0)
	sw $t1, -2012($fp)
	li $t0, 64091
	sw $t0, -2016($fp)
	addi $t0, $fp, -200
	sw $t0, -2020($fp)
	li $t0, 1
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
	li $t0, 36430
	sw $t0, -2040($fp)
	addi $t0, $fp, -200
	sw $t0, -2044($fp)
	li $t0, 2
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
	li $t0, 45423
	sw $t0, -2064($fp)
	addi $t0, $fp, -200
	sw $t0, -2068($fp)
	li $t0, 3
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
	li $t0, 52947
	sw $t0, -2088($fp)
	addi $t0, $fp, -200
	sw $t0, -2092($fp)
	li $t0, 4
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2100($fp)
	lw $t0, -2092($fp)
	lw $t1, -2100($fp)
	add $t0, $t0, $t1
	sw $t0, -2104($fp)
	lw $t0, -2088($fp)
	lw $t1, -2104($fp)
	sw $t0, 0($t1)
	lw $t0, -2104($fp)
	lw $t1, 0($t0)
	sw $t1, -2108($fp)
	li $t0, 52031
	sw $t0, -2112($fp)
	addi $t0, $fp, -200
	sw $t0, -2116($fp)
	li $t0, 5
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2124($fp)
	lw $t0, -2116($fp)
	lw $t1, -2124($fp)
	add $t0, $t0, $t1
	sw $t0, -2128($fp)
	lw $t0, -2112($fp)
	lw $t1, -2128($fp)
	sw $t0, 0($t1)
	lw $t0, -2128($fp)
	lw $t1, 0($t0)
	sw $t1, -2132($fp)
	li $t0, 36846
	sw $t0, -2136($fp)
	addi $t0, $fp, -208
	sw $t0, -2140($fp)
	li $t0, 0
	sw $t0, -2144($fp)
	lw $t0, -2144($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2148($fp)
	lw $t0, -2140($fp)
	lw $t1, -2148($fp)
	add $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $t0, -2136($fp)
	lw $t1, -2152($fp)
	sw $t0, 0($t1)
	lw $t0, -2152($fp)
	lw $t1, 0($t0)
	sw $t1, -2156($fp)
	li $t0, 61408
	sw $t0, -2160($fp)
	addi $t0, $fp, -208
	sw $t0, -2164($fp)
	li $t0, 1
	sw $t0, -2168($fp)
	lw $t0, -2168($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2172($fp)
	lw $t0, -2164($fp)
	lw $t1, -2172($fp)
	add $t0, $t0, $t1
	sw $t0, -2176($fp)
	lw $t0, -2160($fp)
	lw $t1, -2176($fp)
	sw $t0, 0($t1)
	lw $t0, -2176($fp)
	lw $t1, 0($t0)
	sw $t1, -2180($fp)
	li $t0, 1625
	sw $t0, -2184($fp)
	lw $t0, -2184($fp)
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	sw $t0, -2192($fp)
	li $t0, 46261
	sw $t0, -2196($fp)
	lw $t0, -2196($fp)
	sw $t0, -2200($fp)
	lw $t0, -2200($fp)
	sw $t0, -2204($fp)
	li $t0, 61237
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	sw $t0, -2216($fp)
	li $t0, 1515
	sw $t0, -2220($fp)
	lw $t0, -2220($fp)
	sw $t0, -2224($fp)
	lw $t0, -2224($fp)
	sw $t0, -2228($fp)
	li $t0, 26365
	sw $t0, -2232($fp)
	lw $t0, -2232($fp)
	sw $t0, -2236($fp)
	lw $t0, -2236($fp)
	sw $t0, -2240($fp)
	li $t0, 6659
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	sw $t0, -2252($fp)
	li $t0, 52617
	sw $t0, -2256($fp)
	lw $t0, -2256($fp)
	sw $t0, -2260($fp)
	lw $t0, -2260($fp)
	sw $t0, -2264($fp)
	li $t0, 42979
	sw $t0, -2268($fp)
	addi $t0, $fp, -216
	sw $t0, -2272($fp)
	li $t0, 0
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
	li $t0, 30526
	sw $t0, -2292($fp)
	addi $t0, $fp, -216
	sw $t0, -2296($fp)
	li $t0, 1
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
	li $t0, 59560
	sw $t0, -2316($fp)
	lw $t0, -2316($fp)
	sw $t0, -2320($fp)
	lw $t0, -2320($fp)
	sw $t0, -2324($fp)
	li $t0, 16680
	sw $t0, -2328($fp)
	lw $t0, -2328($fp)
	sw $t0, -2332($fp)
	lw $t0, -2332($fp)
	sw $t0, -2336($fp)
	li $t0, 28008
	sw $t0, -2340($fp)
	addi $t0, $fp, -228
	sw $t0, -2344($fp)
	li $t0, 0
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
	li $t0, 57934
	sw $t0, -2364($fp)
	addi $t0, $fp, -228
	sw $t0, -2368($fp)
	li $t0, 1
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
	li $t0, 190
	sw $t0, -2388($fp)
	addi $t0, $fp, -228
	sw $t0, -2392($fp)
	li $t0, 2
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2400($fp)
	lw $t0, -2392($fp)
	lw $t1, -2400($fp)
	add $t0, $t0, $t1
	sw $t0, -2404($fp)
	lw $t0, -2388($fp)
	lw $t1, -2404($fp)
	sw $t0, 0($t1)
	lw $t0, -2404($fp)
	lw $t1, 0($t0)
	sw $t1, -2408($fp)
	li $t0, 53008
	sw $t0, -2412($fp)
	addi $t0, $fp, -236
	sw $t0, -2416($fp)
	li $t0, 0
	sw $t0, -2420($fp)
	lw $t0, -2420($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2424($fp)
	lw $t0, -2416($fp)
	lw $t1, -2424($fp)
	add $t0, $t0, $t1
	sw $t0, -2428($fp)
	lw $t0, -2412($fp)
	lw $t1, -2428($fp)
	sw $t0, 0($t1)
	lw $t0, -2428($fp)
	lw $t1, 0($t0)
	sw $t1, -2432($fp)
	li $t0, 24292
	sw $t0, -2436($fp)
	addi $t0, $fp, -236
	sw $t0, -2440($fp)
	li $t0, 1
	sw $t0, -2444($fp)
	lw $t0, -2444($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2448($fp)
	lw $t0, -2440($fp)
	lw $t1, -2448($fp)
	add $t0, $t0, $t1
	sw $t0, -2452($fp)
	lw $t0, -2436($fp)
	lw $t1, -2452($fp)
	sw $t0, 0($t1)
	lw $t0, -2452($fp)
	lw $t1, 0($t0)
	sw $t1, -2456($fp)
	li $t0, 14839
	sw $t0, -2460($fp)
	lw $t0, -2460($fp)
	sw $t0, -2464($fp)
	lw $t0, -2464($fp)
	sw $t0, -2468($fp)
	li $t0, 26315
	sw $t0, -2472($fp)
	lw $t0, -2472($fp)
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	sw $t0, -2480($fp)
	li $t0, 65310
	sw $t0, -2484($fp)
	lw $t0, -2484($fp)
	sw $t0, -2488($fp)
	lw $t0, -2488($fp)
	sw $t0, -2492($fp)
	li $t0, 12312
	sw $t0, -2496($fp)
	lw $t0, -2496($fp)
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	sw $t0, -2504($fp)
	li $t0, 19455
	sw $t0, -2508($fp)
	lw $t0, -2508($fp)
	sw $t0, -2512($fp)
	lw $t0, -2512($fp)
	sw $t0, -2516($fp)
	li $t0, 21106
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	sw $t0, -2528($fp)
	lw $t0, 4($fp)
	sw $t0, -2532($fp)
	lw $t1, -2532($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label138
label138:
	li $t0, 65281
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	sw $t0, -2540($fp)
	lw $t0, -2540($fp)
	sw $t0, -2544($fp)
	li $t0, 24104
	sw $t0, -2548($fp)
	addi $t0, $fp, -236
	sw $t0, -2552($fp)
	lw $t0, -544($fp)
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
	lw $t0, -2548($fp)
	lw $t1, -2568($fp)
	mul $t0, $t0, $t1
	sw $t0, -2572($fp)
	addi $t0, $fp, -228
	sw $t0, -2576($fp)
	li $t0, 1
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
	li $t0, 0
	sw $t0, -2596($fp)
	li $t0, 0
	sw $t0, -2600($fp)
	lw $t0, -2500($fp)
	sw $t0, -2604($fp)
	li $t0, 19661
	sw $t0, -2608($fp)
	lw $t1, -2604($fp)
	lw $t2, -2608($fp)
	beq $t1, $t2, label146
	j label147
label146:
	li $t0, 1
	sw $t0, -2600($fp)
label147:
	lw $t0, -520($fp)
	sw $t0, -2612($fp)
	lw $t1, -2600($fp)
	lw $t2, -2612($fp)
	beq $t1, $t2, label144
	j label145
label144:
	li $t0, 1
	sw $t0, -2596($fp)
label145:
	lw $t0, -1768($fp)
	sw $t0, -2616($fp)
	addi $sp, $sp, -4
	lw $t0, -2592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2616($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2620($fp)
	addi $sp, $sp, 16
	lw $t0, -2572($fp)
	lw $t1, -2620($fp)
	mul $t0, $t0, $t1
	sw $t0, -2624($fp)
	lw $t1, -2624($fp)
	li $t2, 0
	bne $t1, $t2, label141
	j label142
label141:
	lw $t0, -1756($fp)
	sw $t0, -2628($fp)
	lw $ra, -4($fp)
	lw $v0, -2628($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label142:
label148:
	li $t0, 7073
	sw $t0, -2632($fp)
	li $t0, 0
	lw $t1, -2632($fp)
	sub $t0, $t0, $t1
	sw $t0, -2636($fp)
	lw $t1, -2636($fp)
	li $t2, 0
	bne $t1, $t2, label149
	j label150
label149:
	jal f6
	sw $v0, -2640($fp)
	addi $sp, $sp, 4
	jal f6
	sw $v0, -2644($fp)
	addi $sp, $sp, 4
	lw $t0, -2640($fp)
	lw $t1, -2644($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2648($fp)
	lw $ra, -4($fp)
	lw $v0, -2648($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label148
label150:
	lw $t0, -2540($fp)
	sw $t0, -2652($fp)
	lw $t0, -2652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2656($fp)
	lw $t0, -736($fp)
	sw $t0, -2660($fp)
	addi $t0, $fp, -236
	sw $t0, -2664($fp)
	lw $t0, -1000($fp)
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
	lw $t0, -2660($fp)
	lw $t1, -2680($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2684($fp)
	li $t0, 40837
	sw $t0, -2688($fp)
	lw $t0, -2688($fp)
	sw $t0, -1888($fp)
	lw $t0, -1888($fp)
	sw $t0, -2692($fp)
	li $t0, 22671
	sw $t0, -2696($fp)
	lw $t0, -2696($fp)
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -2700($fp)
	lw $t0, -2236($fp)
	sw $t0, -2704($fp)
	lw $t0, -2500($fp)
	sw $t0, -2708($fp)
	lw $t0, -2708($fp)
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -2712($fp)
	li $t0, 0
	sw $t0, -2716($fp)
	addi $t0, $fp, -40
	sw $t0, -2720($fp)
	lw $t0, -2260($fp)
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
	lw $t1, -2736($fp)
	li $t2, 0
	bne $t1, $t2, label155
	j label154
label155:
	lw $t0, -2540($fp)
	sw $t0, -2740($fp)
	lw $t1, -2740($fp)
	li $t2, 0
	bne $t1, $t2, label153
	j label154
label153:
	li $t0, 1
	sw $t0, -2716($fp)
label154:
	addi $sp, $sp, -4
	lw $t0, -2692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2716($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2744($fp)
	addi $sp, $sp, 24
	lw $t0, -2684($fp)
	lw $t1, -2744($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2748($fp)
	jal f6
	sw $v0, -2752($fp)
	addi $sp, $sp, 4
	lw $t1, -2748($fp)
	lw $t2, -2752($fp)
	ble $t1, $t2, label151
	j label152
label151:
	li $t0, 1
	sw $t0, -2656($fp)
label152:
	lw $ra, -4($fp)
	lw $v0, -2656($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 2945
	sw $t0, -2768($fp)
	addi $t0, $fp, -2764
	sw $t0, -2772($fp)
	li $t0, 0
	sw $t0, -2776($fp)
	lw $t0, -2776($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2780($fp)
	lw $t0, -2772($fp)
	lw $t1, -2780($fp)
	add $t0, $t0, $t1
	sw $t0, -2784($fp)
	lw $t0, -2768($fp)
	lw $t1, -2784($fp)
	sw $t0, 0($t1)
	lw $t0, -2784($fp)
	lw $t1, 0($t0)
	sw $t1, -2788($fp)
	li $t0, 24297
	sw $t0, -2792($fp)
	addi $t0, $fp, -2764
	sw $t0, -2796($fp)
	li $t0, 1
	sw $t0, -2800($fp)
	lw $t0, -2800($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2804($fp)
	lw $t0, -2796($fp)
	lw $t1, -2804($fp)
	add $t0, $t0, $t1
	sw $t0, -2808($fp)
	lw $t0, -2792($fp)
	lw $t1, -2808($fp)
	sw $t0, 0($t1)
	lw $t0, -2808($fp)
	lw $t1, 0($t0)
	sw $t1, -2812($fp)
	li $t0, 21563
	sw $t0, -2816($fp)
	addi $t0, $fp, -2764
	sw $t0, -2820($fp)
	li $t0, 2
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2828($fp)
	lw $t0, -2820($fp)
	lw $t1, -2828($fp)
	add $t0, $t0, $t1
	sw $t0, -2832($fp)
	lw $t0, -2816($fp)
	lw $t1, -2832($fp)
	sw $t0, 0($t1)
	lw $t0, -2832($fp)
	lw $t1, 0($t0)
	sw $t1, -2836($fp)
	li $t0, 64182
	sw $t0, -2840($fp)
	lw $t0, -2840($fp)
	sw $t0, -2844($fp)
	lw $t0, -2844($fp)
	sw $t0, -2848($fp)
	li $t0, 0
	sw $t0, -2852($fp)
	li $t0, 0
	sw $t0, -2856($fp)
	lw $t0, -1828($fp)
	sw $t0, -2860($fp)
	lw $t0, -892($fp)
	sw $t0, -2864($fp)
	lw $t1, -2860($fp)
	lw $t2, -2864($fp)
	bge $t1, $t2, label158
	j label159
label158:
	li $t0, 1
	sw $t0, -2856($fp)
label159:
	lw $t0, -244($fp)
	sw $t0, -2868($fp)
	lw $t1, -2856($fp)
	lw $t2, -2868($fp)
	bne $t1, $t2, label156
	j label157
label156:
	li $t0, 1
	sw $t0, -2852($fp)
label157:
	lw $t0, -508($fp)
	sw $t0, -2872($fp)
	li $t0, 25812
	sw $t0, -2876($fp)
	lw $t0, -2876($fp)
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	sw $t0, -2880($fp)
	addi $sp, $sp, -4
	lw $t0, -2852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2880($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2884($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -2888($fp)
	li $t0, 47928
	sw $t0, -2892($fp)
	lw $t1, -2892($fp)
	li $t2, 0
	bne $t1, $t2, label161
	j label160
label160:
	li $t0, 1
	sw $t0, -2888($fp)
label161:
	li $t0, 0
	sw $t0, -2896($fp)
	li $t0, 0
	sw $t0, -2900($fp)
	li $t0, 42241
	sw $t0, -2904($fp)
	lw $t1, -2904($fp)
	li $t2, 0
	bne $t1, $t2, label167
	j label165
label167:
	li $t0, 51312
	sw $t0, -2908($fp)
	lw $t1, -2908($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label165
label166:
	lw $t0, -712($fp)
	sw $t0, -2912($fp)
	lw $t1, -2912($fp)
	li $t2, 0
	bne $t1, $t2, label164
	j label165
label164:
	li $t0, 1
	sw $t0, -2900($fp)
label165:
	li $t0, 0
	sw $t0, -2916($fp)
	lw $t0, -964($fp)
	sw $t0, -2920($fp)
	li $t0, 64852
	sw $t0, -2924($fp)
	lw $t0, -2920($fp)
	lw $t1, -2924($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2928($fp)
	lw $t0, 8($fp)
	sw $t0, -2932($fp)
	lw $t1, -2928($fp)
	lw $t2, -2932($fp)
	bgt $t1, $t2, label168
	j label169
label168:
	li $t0, 1
	sw $t0, -2916($fp)
label169:
	li $t0, 0
	sw $t0, -2936($fp)
	lw $t0, -2476($fp)
	sw $t0, -2940($fp)
	li $t0, 42051
	sw $t0, -2944($fp)
	lw $t0, -2940($fp)
	lw $t1, -2944($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2948($fp)
	lw $t1, -2948($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label171
label172:
	li $t0, 63840
	sw $t0, -2952($fp)
	lw $t1, -2952($fp)
	li $t2, 0
	bne $t1, $t2, label170
	j label171
label170:
	li $t0, 1
	sw $t0, -2936($fp)
label171:
	li $t0, 6918
	sw $t0, -2956($fp)
	li $t0, 35831
	sw $t0, -2960($fp)
	li $t0, 0
	sw $t0, -2964($fp)
	lw $t0, -2488($fp)
	sw $t0, -2968($fp)
	lw $t1, -2968($fp)
	li $t2, 0
	bne $t1, $t2, label174
	j label173
label173:
	li $t0, 1
	sw $t0, -2964($fp)
label174:
	li $t0, 0
	lw $t1, -2964($fp)
	sub $t0, $t0, $t1
	sw $t0, -2972($fp)
	addi $sp, $sp, -4
	lw $t0, -2956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2972($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2976($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -2980($fp)
	addi $t0, $fp, -236
	sw $t0, -2984($fp)
	li $t0, 1
	sw $t0, -2988($fp)
	li $t0, 4
	lw $t1, -2988($fp)
	mul $t0, $t0, $t1
	sw $t0, -2992($fp)
	lw $t0, -2992($fp)
	lw $t1, -2984($fp)
	add $t0, $t0, $t1
	sw $t0, -2996($fp)
	lw $t0, -2996($fp)
	lw $t1, 0($t0)
	sw $t1, -3000($fp)
	lw $t1, -3000($fp)
	li $t2, 0
	bne $t1, $t2, label175
	j label177
label177:
	li $t0, 25371
	sw $t0, -3004($fp)
	lw $t1, -3004($fp)
	li $t2, 0
	bne $t1, $t2, label175
	j label176
label175:
	li $t0, 1
	sw $t0, -2980($fp)
label176:
	addi $sp, $sp, -4
	lw $t0, -2900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2980($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3008($fp)
	addi $sp, $sp, 24
	li $t0, 23609
	sw $t0, -3012($fp)
	lw $t0, 12($fp)
	sw $t0, -3016($fp)
	lw $t0, -3012($fp)
	lw $t1, -3016($fp)
	add $t0, $t0, $t1
	sw $t0, -3020($fp)
	lw $t1, -3008($fp)
	lw $t2, -3020($fp)
	bge $t1, $t2, label162
	j label163
label162:
	li $t0, 1
	sw $t0, -2896($fp)
label163:
	lw $t0, -2896($fp)
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -3024($fp)
	addi $t0, $fp, -2764
	sw $t0, -3028($fp)
	li $t0, 57081
	sw $t0, -3032($fp)
	lw $t0, -520($fp)
	sw $t0, -3036($fp)
	lw $t0, -3032($fp)
	lw $t1, -3036($fp)
	add $t0, $t0, $t1
	sw $t0, -3040($fp)
	li $t0, 4
	lw $t1, -3040($fp)
	mul $t0, $t0, $t1
	sw $t0, -3044($fp)
	lw $t0, -3044($fp)
	lw $t1, -3028($fp)
	add $t0, $t0, $t1
	sw $t0, -3048($fp)
	lw $t0, -3048($fp)
	lw $t1, 0($t0)
	sw $t1, -3052($fp)
	jal f6
	sw $v0, -3056($fp)
	addi $sp, $sp, 4
	lw $t0, -2512($fp)
	sw $t0, -3060($fp)
	li $t0, 0
	lw $t1, -3060($fp)
	sub $t0, $t0, $t1
	sw $t0, -3064($fp)
	li $t0, 31546
	sw $t0, -3068($fp)
	li $t0, 44490
	sw $t0, -3072($fp)
	lw $t0, -3068($fp)
	lw $t1, -3072($fp)
	mul $t0, $t0, $t1
	sw $t0, -3076($fp)
	li $t0, 0
	lw $t1, -3076($fp)
	sub $t0, $t0, $t1
	sw $t0, -3080($fp)
	lw $t0, 16($fp)
	sw $t0, -3084($fp)
	li $t0, 3857
	sw $t0, -3088($fp)
	lw $t0, -3084($fp)
	lw $t1, -3088($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3092($fp)
	li $t0, 0
	lw $t1, -3092($fp)
	sub $t0, $t0, $t1
	sw $t0, -3096($fp)
	addi $t0, $fp, -228
	sw $t0, -3100($fp)
	li $t0, 0
	sw $t0, -3104($fp)
	li $t0, 4
	lw $t1, -3104($fp)
	mul $t0, $t0, $t1
	sw $t0, -3108($fp)
	lw $t0, -3108($fp)
	lw $t1, -3100($fp)
	add $t0, $t0, $t1
	sw $t0, -3112($fp)
	lw $t0, -3112($fp)
	lw $t1, 0($t0)
	sw $t1, -3116($fp)
	addi $sp, $sp, -4
	lw $t0, -3056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3116($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3120($fp)
	addi $sp, $sp, 24
	lw $t0, -3052($fp)
	lw $t1, -3120($fp)
	mul $t0, $t0, $t1
	sw $t0, -3124($fp)
	lw $t0, 20($fp)
	sw $t0, -3128($fp)
	lw $t0, -3124($fp)
	lw $t1, -3128($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3132($fp)
	li $t0, 3603
	sw $t0, -3136($fp)
	lw $t1, -3136($fp)
	li $t2, 0
	bne $t1, $t2, label178
	j label182
label182:
	li $t0, 55650
	sw $t0, -3140($fp)
	li $t0, 0
	lw $t1, -3140($fp)
	sub $t0, $t0, $t1
	sw $t0, -3144($fp)
	li $t0, 0
	lw $t1, -3144($fp)
	sub $t0, $t0, $t1
	sw $t0, -3148($fp)
	lw $t1, -3148($fp)
	li $t2, 0
	bne $t1, $t2, label178
	j label181
label181:
	lw $t0, -244($fp)
	sw $t0, -3152($fp)
	lw $t1, -3152($fp)
	li $t2, 0
	bne $t1, $t2, label179
	j label178
label178:
label183:
	li $t0, 8633
	sw $t0, -3156($fp)
	li $t0, 0
	lw $t1, -3156($fp)
	sub $t0, $t0, $t1
	sw $t0, -3160($fp)
	lw $t0, -988($fp)
	sw $t0, -3164($fp)
	li $t0, 62450
	sw $t0, -3168($fp)
	lw $t0, -3164($fp)
	lw $t1, -3168($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3172($fp)
	li $t0, 34943
	sw $t0, -3176($fp)
	lw $t0, -3172($fp)
	lw $t1, -3176($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3180($fp)
	li $t0, 5688
	sw $t0, -3184($fp)
	lw $t0, -3184($fp)
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -3188($fp)
	li $t0, 0
	sw $t0, -3192($fp)
	li $t0, 64151
	sw $t0, -3196($fp)
	li $t0, 39779
	sw $t0, -3200($fp)
	lw $t0, -3196($fp)
	lw $t1, -3200($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3204($fp)
	li $t0, 59641
	sw $t0, -3208($fp)
	lw $t1, -3204($fp)
	lw $t2, -3208($fp)
	blt $t1, $t2, label187
	j label188
label187:
	li $t0, 1
	sw $t0, -3192($fp)
label188:
	lw $t0, -1816($fp)
	sw $t0, -3212($fp)
	addi $sp, $sp, -4
	lw $t0, -3160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3212($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3216($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -96
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
	lw $t0, -3216($fp)
	lw $t1, -3236($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3240($fp)
	li $t0, 0
	sw $t0, -3244($fp)
	lw $t0, -676($fp)
	sw $t0, -3248($fp)
	lw $t1, -3248($fp)
	li $t2, 0
	bne $t1, $t2, label190
	j label189
label189:
	li $t0, 1
	sw $t0, -3244($fp)
label190:
	li $t0, 0
	lw $t1, -3244($fp)
	sub $t0, $t0, $t1
	sw $t0, -3252($fp)
	lw $t1, -3240($fp)
	lw $t2, -3252($fp)
	blt $t1, $t2, label184
	j label186
label186:
	li $t0, 0
	sw $t0, -3256($fp)
	li $t0, 7280
	sw $t0, -3260($fp)
	lw $t0, 20($fp)
	sw $t0, -3264($fp)
	lw $t0, -3260($fp)
	lw $t1, -3264($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3268($fp)
	lw $t0, -1780($fp)
	sw $t0, -3272($fp)
	lw $t1, -3268($fp)
	lw $t2, -3272($fp)
	bge $t1, $t2, label191
	j label192
label191:
	li $t0, 1
	sw $t0, -3256($fp)
label192:
	lw $t0, -2464($fp)
	sw $t0, -3276($fp)
	lw $t0, -1780($fp)
	sw $t0, -3280($fp)
	lw $t0, -3276($fp)
	lw $t1, -3280($fp)
	add $t0, $t0, $t1
	sw $t0, -3284($fp)
	lw $t1, -3256($fp)
	lw $t2, -3284($fp)
	bge $t1, $t2, label184
	j label185
label184:
	addi $t0, $fp, -2764
	sw $t0, -3288($fp)
	lw $t0, -1108($fp)
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
	li $t0, 47024
	sw $t0, -3308($fp)
	lw $t0, -3304($fp)
	lw $t1, -3308($fp)
	mul $t0, $t0, $t1
	sw $t0, -3312($fp)
	addi $t0, $fp, -2764
	sw $t0, -3316($fp)
	li $t0, 1
	sw $t0, -3320($fp)
	li $t0, 4
	lw $t1, -3320($fp)
	mul $t0, $t0, $t1
	sw $t0, -3324($fp)
	lw $t0, -3324($fp)
	lw $t1, -3316($fp)
	add $t0, $t0, $t1
	sw $t0, -3328($fp)
	lw $t0, -3328($fp)
	lw $t1, 0($t0)
	sw $t1, -3332($fp)
	lw $t0, -3312($fp)
	lw $t1, -3332($fp)
	mul $t0, $t0, $t1
	sw $t0, -3336($fp)
	lw $t0, -3336($fp)
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	sw $t0, -3340($fp)
	lw $ra, -4($fp)
	lw $v0, -3340($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label183
label185:
	j label180
label179:
	li $t0, 59917
	sw $t0, -3344($fp)
	lw $t0, -3344($fp)
	sw $t0, -3348($fp)
	lw $t0, -3348($fp)
	sw $t0, -3352($fp)
	li $t0, 0
	sw $t0, -3356($fp)
	addi $t0, $fp, -80
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
	lw $t1, -3376($fp)
	li $t2, 0
	bne $t1, $t2, label193
	j label195
label195:
	li $t0, 1299
	sw $t0, -3380($fp)
	lw $t0, 20($fp)
	sw $t0, -3384($fp)
	lw $t0, -3380($fp)
	lw $t1, -3384($fp)
	mul $t0, $t0, $t1
	sw $t0, -3388($fp)
	li $t0, 40784
	sw $t0, -3392($fp)
	lw $t0, -3388($fp)
	lw $t1, -3392($fp)
	sub $t0, $t0, $t1
	sw $t0, -3396($fp)
	li $t0, 46721
	sw $t0, -3400($fp)
	lw $t0, -700($fp)
	sw $t0, -3404($fp)
	lw $t0, -3400($fp)
	lw $t1, -3404($fp)
	mul $t0, $t0, $t1
	sw $t0, -3408($fp)
	lw $t1, -3396($fp)
	lw $t2, -3408($fp)
	ble $t1, $t2, label193
	j label194
label193:
	li $t0, 1
	sw $t0, -3356($fp)
label194:
	lw $t0, -1888($fp)
	sw $t0, -3412($fp)
	addi $t0, $fp, -48
	sw $t0, -3416($fp)
	li $t0, 0
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
	lw $t0, -3412($fp)
	lw $t1, -3432($fp)
	add $t0, $t0, $t1
	sw $t0, -3436($fp)
	li $t0, 0
	sw $t0, -3440($fp)
	lw $t0, -3348($fp)
	sw $t0, -3444($fp)
	lw $t1, -3444($fp)
	li $t2, 0
	bne $t1, $t2, label197
	j label196
label196:
	li $t0, 1
	sw $t0, -3440($fp)
label197:
	lw $t0, -3436($fp)
	lw $t1, -3440($fp)
	sub $t0, $t0, $t1
	sw $t0, -3448($fp)
label180:
label198:
	lw $t0, -1048($fp)
	sw $t0, -3452($fp)
	lw $t0, -1060($fp)
	sw $t0, -3456($fp)
	lw $t0, -3452($fp)
	lw $t1, -3456($fp)
	sub $t0, $t0, $t1
	sw $t0, -3460($fp)
	lw $t1, -3460($fp)
	li $t2, 0
	bne $t1, $t2, label201
	j label200
label201:
	li $t0, 0
	sw $t0, -3464($fp)
	lw $t0, -2844($fp)
	sw $t0, -3468($fp)
	lw $t0, -2464($fp)
	sw $t0, -3472($fp)
	lw $t0, -3468($fp)
	lw $t1, -3472($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3476($fp)
	lw $t0, -2320($fp)
	sw $t0, -3480($fp)
	lw $t1, -3476($fp)
	lw $t2, -3480($fp)
	blt $t1, $t2, label202
	j label203
label202:
	li $t0, 1
	sw $t0, -3464($fp)
label203:
	lw $t0, -1792($fp)
	sw $t0, -3484($fp)
	lw $t0, -1828($fp)
	sw $t0, -3488($fp)
	lw $t0, -3484($fp)
	lw $t1, -3488($fp)
	sub $t0, $t0, $t1
	sw $t0, -3492($fp)
	lw $t1, -3464($fp)
	lw $t2, -3492($fp)
	blt $t1, $t2, label199
	j label200
label199:
	li $t0, 0
	sw $t0, -3496($fp)
	jal f6
	sw $v0, -3500($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -3504($fp)
	jal f6
	sw $v0, -3508($fp)
	addi $sp, $sp, 4
	lw $t1, -3508($fp)
	li $t2, 0
	bne $t1, $t2, label210
	j label209
label209:
	li $t0, 1
	sw $t0, -3504($fp)
label210:
	li $t0, 0
	sw $t0, -3512($fp)
	li $t0, 32497
	sw $t0, -3516($fp)
	li $t0, 24225
	sw $t0, -3520($fp)
	lw $t0, -3516($fp)
	lw $t1, -3520($fp)
	add $t0, $t0, $t1
	sw $t0, -3524($fp)
	lw $t1, -3524($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label212
label213:
	lw $t0, -988($fp)
	sw $t0, -3528($fp)
	lw $t1, -3528($fp)
	li $t2, 0
	bne $t1, $t2, label211
	j label212
label211:
	li $t0, 1
	sw $t0, -3512($fp)
label212:
	addi $sp, $sp, -4
	lw $t0, -3500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3512($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3532($fp)
	addi $sp, $sp, 16
	lw $t1, -3532($fp)
	li $t2, 0
	bne $t1, $t2, label207
	j label208
label207:
	li $t0, 1
	sw $t0, -3496($fp)
label208:
	li $t0, 9035
	sw $t0, -3536($fp)
	lw $t0, -3496($fp)
	lw $t1, -3536($fp)
	sub $t0, $t0, $t1
	sw $t0, -3540($fp)
	addi $t0, $fp, -200
	sw $t0, -3544($fp)
	li $t0, 2
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
	jal f6
	sw $v0, -3564($fp)
	addi $sp, $sp, 4
	lw $t0, -3560($fp)
	lw $t1, -3564($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3568($fp)
	lw $t1, -3540($fp)
	lw $t2, -3568($fp)
	bne $t1, $t2, label204
	j label205
label204:
	li $t0, 12892
	sw $t0, -3572($fp)
	lw $t0, -3572($fp)
	sw $t0, -3576($fp)
	lw $t0, -3576($fp)
	sw $t0, -3580($fp)
	li $t0, 10598
	sw $t0, -3584($fp)
	lw $t0, -3584($fp)
	sw $t0, -3588($fp)
	lw $t0, -3588($fp)
	sw $t0, -3592($fp)
	li $t0, 26562
	sw $t0, -3596($fp)
	lw $t0, -3596($fp)
	sw $t0, -3600($fp)
	lw $t0, -3600($fp)
	sw $t0, -3604($fp)
	jal f6
	sw $v0, -3608($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -2764
	sw $t0, -3612($fp)
	li $t0, 0
	sw $t0, -3616($fp)
	li $t0, 4
	lw $t1, -3616($fp)
	mul $t0, $t0, $t1
	sw $t0, -3620($fp)
	lw $t0, -3620($fp)
	lw $t1, -3612($fp)
	add $t0, $t0, $t1
	sw $t0, -3624($fp)
	lw $t0, -3624($fp)
	lw $t1, 0($t0)
	sw $t1, -3628($fp)
	lw $t0, -3608($fp)
	lw $t1, -3628($fp)
	sub $t0, $t0, $t1
	sw $t0, -3632($fp)
	li $t0, 25178
	sw $t0, -3636($fp)
	li $t0, 56274
	sw $t0, -3640($fp)
	lw $t0, -3636($fp)
	lw $t1, -3640($fp)
	mul $t0, $t0, $t1
	sw $t0, -3644($fp)
	li $t0, 0
	lw $t1, -3644($fp)
	sub $t0, $t0, $t1
	sw $t0, -3648($fp)
	lw $t1, -3632($fp)
	lw $t2, -3648($fp)
	bge $t1, $t2, label217
	j label215
label217:
	li $t0, 0
	sw $t0, -3652($fp)
	lw $t0, -940($fp)
	sw $t0, -3656($fp)
	lw $t0, -3576($fp)
	sw $t0, -3660($fp)
	lw $t1, -3656($fp)
	lw $t2, -3660($fp)
	blt $t1, $t2, label218
	j label219
label218:
	li $t0, 1
	sw $t0, -3652($fp)
label219:
	li $t0, 0
	sw $t0, -3664($fp)
	jal f6
	sw $v0, -3668($fp)
	addi $sp, $sp, 4
	lw $t1, -3668($fp)
	li $t2, 0
	bne $t1, $t2, label222
	j label221
label222:
	li $t0, 60353
	sw $t0, -3672($fp)
	lw $t1, -3672($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label221
label220:
	li $t0, 1
	sw $t0, -3664($fp)
label221:
	addi $t0, $fp, -176
	sw $t0, -3676($fp)
	lw $t0, -2188($fp)
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
	addi $sp, $sp, -4
	lw $t0, -3652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3692($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3696($fp)
	addi $sp, $sp, 16
	lw $t1, -3696($fp)
	li $t2, 0
	bne $t1, $t2, label214
	j label215
label214:
	li $t0, 0
	sw $t0, -3700($fp)
	jal f6
	sw $v0, -3704($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -3704($fp)
	sub $t0, $t0, $t1
	sw $t0, -3708($fp)
	lw $t1, -3708($fp)
	li $t2, 0
	bne $t1, $t2, label224
	j label223
label223:
	li $t0, 1
	sw $t0, -3700($fp)
label224:
	li $t0, 0
	lw $t1, -3700($fp)
	sub $t0, $t0, $t1
	sw $t0, -3712($fp)
	j label216
label215:
	li $t0, 0
	sw $t0, -3716($fp)
	addi $t0, $fp, -200
	sw $t0, -3720($fp)
	li $t0, 0
	sw $t0, -3724($fp)
	li $t0, 0
	sw $t0, -3728($fp)
	lw $t0, -3588($fp)
	sw $t0, -3732($fp)
	lw $t0, -688($fp)
	sw $t0, -3736($fp)
	lw $t1, -3732($fp)
	lw $t2, -3736($fp)
	bgt $t1, $t2, label230
	j label231
label230:
	li $t0, 1
	sw $t0, -3728($fp)
label231:
	lw $t0, -964($fp)
	sw $t0, -3740($fp)
	lw $t1, -3728($fp)
	lw $t2, -3740($fp)
	bge $t1, $t2, label228
	j label229
label228:
	li $t0, 1
	sw $t0, -3724($fp)
label229:
	li $t0, 4
	lw $t1, -3724($fp)
	mul $t0, $t0, $t1
	sw $t0, -3744($fp)
	lw $t0, -3744($fp)
	lw $t1, -3720($fp)
	add $t0, $t0, $t1
	sw $t0, -3748($fp)
	lw $t0, -3748($fp)
	lw $t1, 0($t0)
	sw $t1, -3752($fp)
	lw $t1, -3752($fp)
	li $t2, 0
	bne $t1, $t2, label225
	j label227
label227:
	li $t0, 0
	sw $t0, -3756($fp)
	lw $t0, -2188($fp)
	sw $t0, -3760($fp)
	lw $t1, -3760($fp)
	li $t2, 0
	bne $t1, $t2, label234
	j label232
label234:
	lw $t0, -2464($fp)
	sw $t0, -3764($fp)
	lw $t1, -3764($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label233
label232:
	li $t0, 1
	sw $t0, -3756($fp)
label233:
	addi $t0, $fp, -208
	sw $t0, -3768($fp)
	lw $t0, -1084($fp)
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
	li $t0, 39500
	sw $t0, -3788($fp)
	lw $t0, -3784($fp)
	lw $t1, -3788($fp)
	mul $t0, $t0, $t1
	sw $t0, -3792($fp)
	li $t0, 0
	sw $t0, -3796($fp)
	li $t0, 53189
	sw $t0, -3800($fp)
	lw $t1, -3800($fp)
	li $t2, 0
	bne $t1, $t2, label237
	j label236
label237:
	li $t0, 29760
	sw $t0, -3804($fp)
	lw $t1, -3804($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label236
label235:
	li $t0, 1
	sw $t0, -3796($fp)
label236:
	lw $t0, 20($fp)
	sw $t0, -3808($fp)
	li $t0, 30866
	sw $t0, -3812($fp)
	lw $t0, -3812($fp)
	sw $t0, -3600($fp)
	lw $t0, -3600($fp)
	sw $t0, -3816($fp)
	addi $sp, $sp, -4
	lw $t0, -3756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3816($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3820($fp)
	addi $sp, $sp, 24
	lw $t1, -3820($fp)
	li $t2, 0
	bne $t1, $t2, label226
	j label225
label225:
	li $t0, 1
	sw $t0, -3716($fp)
label226:
label216:
	j label206
label205:
	li $t0, 59628
	sw $t0, -3824($fp)
	li $t0, 59365
	sw $t0, -3828($fp)
	lw $t0, -3824($fp)
	lw $t1, -3828($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3832($fp)
	li $t0, 0
	lw $t1, -3832($fp)
	sub $t0, $t0, $t1
	sw $t0, -3836($fp)
	li $t0, 0
	sw $t0, -3840($fp)
	lw $t0, -892($fp)
	sw $t0, -3844($fp)
	li $t0, 46780
	sw $t0, -3848($fp)
	lw $t0, -3844($fp)
	lw $t1, -3848($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3852($fp)
	lw $t1, -3852($fp)
	li $t2, 0
	bne $t1, $t2, label238
	j label240
label240:
	li $t0, 55888
	sw $t0, -3856($fp)
	lw $t1, -3856($fp)
	li $t2, 0
	bne $t1, $t2, label238
	j label239
label238:
	li $t0, 1
	sw $t0, -3840($fp)
label239:
	li $t0, 0
	sw $t0, -3860($fp)
	li $t0, 0
	sw $t0, -3864($fp)
	lw $t0, -2332($fp)
	sw $t0, -3868($fp)
	lw $t1, -3868($fp)
	li $t2, 0
	bne $t1, $t2, label244
	j label243
label243:
	li $t0, 1
	sw $t0, -3864($fp)
label244:
	lw $t0, -1144($fp)
	sw $t0, -3872($fp)
	lw $t0, -3864($fp)
	lw $t1, -3872($fp)
	mul $t0, $t0, $t1
	sw $t0, -3876($fp)
	lw $t0, -1744($fp)
	sw $t0, -3880($fp)
	li $t0, 8864
	sw $t0, -3884($fp)
	lw $t0, -3880($fp)
	lw $t1, -3884($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3888($fp)
	li $t0, 0
	lw $t1, -3888($fp)
	sub $t0, $t0, $t1
	sw $t0, -3892($fp)
	lw $t0, -2200($fp)
	sw $t0, -3896($fp)
	addi $sp, $sp, -4
	lw $t0, -3876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3896($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3900($fp)
	addi $sp, $sp, 16
	li $t0, 20730
	sw $t0, -3904($fp)
	lw $t1, -3900($fp)
	lw $t2, -3904($fp)
	bgt $t1, $t2, label241
	j label242
label241:
	li $t0, 1
	sw $t0, -3860($fp)
label242:
	addi $sp, $sp, -4
	lw $t0, -3836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3860($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3908($fp)
	addi $sp, $sp, 16
label206:
	j label198
label200:
label139:
label245:
	li $t0, 0
	sw $t0, -3912($fp)
	li $t0, 0
	sw $t0, -3916($fp)
	lw $t0, -244($fp)
	sw $t0, -3920($fp)
	lw $t0, -2224($fp)
	sw $t0, -3924($fp)
	lw $t0, -3920($fp)
	lw $t1, -3924($fp)
	sub $t0, $t0, $t1
	sw $t0, -3928($fp)
	lw $t1, -3928($fp)
	li $t2, 0
	bne $t1, $t2, label250
	j label252
label252:
	lw $t0, -1084($fp)
	sw $t0, -3932($fp)
	lw $t1, -3932($fp)
	li $t2, 0
	bne $t1, $t2, label250
	j label251
label250:
	li $t0, 1
	sw $t0, -3916($fp)
label251:
	li $t0, 0
	sw $t0, -3936($fp)
	lw $t0, -664($fp)
	sw $t0, -3940($fp)
	li $t0, 0
	lw $t1, -3940($fp)
	sub $t0, $t0, $t1
	sw $t0, -3944($fp)
	lw $t1, -3944($fp)
	li $t2, 0
	bne $t1, $t2, label255
	j label254
label255:
	lw $t0, -496($fp)
	sw $t0, -3948($fp)
	lw $t1, -3948($fp)
	li $t2, 0
	bne $t1, $t2, label253
	j label254
label253:
	li $t0, 1
	sw $t0, -3936($fp)
label254:
	li $t0, 0
	sw $t0, -3952($fp)
	li $t0, 33610
	sw $t0, -3956($fp)
	li $t0, 23431
	sw $t0, -3960($fp)
	lw $t0, -3956($fp)
	lw $t1, -3960($fp)
	mul $t0, $t0, $t1
	sw $t0, -3964($fp)
	lw $t0, -2212($fp)
	sw $t0, -3968($fp)
	lw $t1, -3964($fp)
	lw $t2, -3968($fp)
	bne $t1, $t2, label256
	j label257
label256:
	li $t0, 1
	sw $t0, -3952($fp)
label257:
	li $t0, 0
	sw $t0, -3972($fp)
	li $t0, 58361
	sw $t0, -3976($fp)
	lw $t1, -3976($fp)
	li $t2, 0
	bne $t1, $t2, label261
	j label259
label261:
	li $t0, 42246
	sw $t0, -3980($fp)
	lw $t1, -3980($fp)
	li $t2, 0
	bne $t1, $t2, label260
	j label259
label260:
	li $t0, 51569
	sw $t0, -3984($fp)
	lw $t1, -3984($fp)
	li $t2, 0
	bne $t1, $t2, label258
	j label259
label258:
	li $t0, 1
	sw $t0, -3972($fp)
label259:
	li $t0, 0
	sw $t0, -3988($fp)
	li $t0, 50270
	sw $t0, -3992($fp)
	lw $t1, -3992($fp)
	li $t2, 0
	bne $t1, $t2, label263
	j label262
label262:
	li $t0, 1
	sw $t0, -3988($fp)
label263:
	li $t0, 0
	lw $t1, -3988($fp)
	sub $t0, $t0, $t1
	sw $t0, -3996($fp)
	addi $sp, $sp, -4
	lw $t0, -3916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3996($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4000($fp)
	addi $sp, $sp, 24
	lw $t1, -4000($fp)
	li $t2, 0
	bne $t1, $t2, label249
	j label248
label248:
	li $t0, 1
	sw $t0, -3912($fp)
label249:
	li $t0, 52185
	sw $t0, -4004($fp)
	li $t0, 55929
	sw $t0, -4008($fp)
	lw $t0, -4004($fp)
	lw $t1, -4008($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4012($fp)
	li $t0, 0
	lw $t1, -4012($fp)
	sub $t0, $t0, $t1
	sw $t0, -4016($fp)
	lw $t0, -3912($fp)
	lw $t1, -4016($fp)
	mul $t0, $t0, $t1
	sw $t0, -4020($fp)
	jal f6
	sw $v0, -4024($fp)
	addi $sp, $sp, 4
	lw $t1, -4020($fp)
	lw $t2, -4024($fp)
	bne $t1, $t2, label246
	j label247
label246:
	addi $t0, $fp, -216
	sw $t0, -4028($fp)
	li $t0, 1
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
	li $t0, 0
	sw $t0, -4048($fp)
	lw $t0, -2248($fp)
	sw $t0, -4052($fp)
	lw $t0, -1840($fp)
	sw $t0, -4056($fp)
	lw $t0, -4052($fp)
	lw $t1, -4056($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4060($fp)
	lw $t0, -904($fp)
	sw $t0, -4064($fp)
	lw $t1, -4060($fp)
	lw $t2, -4064($fp)
	bne $t1, $t2, label268
	j label269
label268:
	li $t0, 1
	sw $t0, -4048($fp)
label269:
	lw $t0, -2236($fp)
	sw $t0, -4068($fp)
	lw $t0, -4068($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -4072($fp)
	addi $sp, $sp, -4
	lw $t0, -4044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4072($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4076($fp)
	addi $sp, $sp, 16
	lw $t1, -4076($fp)
	li $t2, 0
	bne $t1, $t2, label267
	j label265
label267:
	li $t0, 0
	sw $t0, -4080($fp)
	li $t0, 34980
	sw $t0, -4084($fp)
	lw $t0, -916($fp)
	sw $t0, -4088($fp)
	lw $t1, -4084($fp)
	lw $t2, -4088($fp)
	blt $t1, $t2, label270
	j label271
label270:
	li $t0, 1
	sw $t0, -4080($fp)
label271:
	lw $t0, -496($fp)
	sw $t0, -4092($fp)
	lw $t0, -532($fp)
	sw $t0, -4096($fp)
	lw $t0, -4092($fp)
	lw $t1, -4096($fp)
	sub $t0, $t0, $t1
	sw $t0, -4100($fp)
	lw $t1, -4080($fp)
	lw $t2, -4100($fp)
	beq $t1, $t2, label264
	j label265
label264:
	li $t0, 58483
	sw $t0, -4104($fp)
	lw $t0, -4104($fp)
	sw $t0, -4108($fp)
	lw $t0, -4108($fp)
	sw $t0, -4112($fp)
	lw $t0, -4108($fp)
	sw $t0, -4116($fp)
	lw $t0, -4116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4120($fp)
	li $t0, 0
	sw $t0, -4124($fp)
	lw $t0, -604($fp)
	sw $t0, -4128($fp)
	lw $t1, -4128($fp)
	li $t2, 0
	bne $t1, $t2, label275
	j label274
label274:
	li $t0, 1
	sw $t0, -4124($fp)
label275:
	li $t0, 0
	sw $t0, -4132($fp)
	li $t0, 45578
	sw $t0, -4136($fp)
	lw $t1, -4136($fp)
	li $t2, 0
	bne $t1, $t2, label279
	j label278
label279:
	li $t0, 19509
	sw $t0, -4140($fp)
	lw $t1, -4140($fp)
	li $t2, 0
	bne $t1, $t2, label276
	j label278
label278:
	li $t0, 23987
	sw $t0, -4144($fp)
	lw $t1, -4144($fp)
	li $t2, 0
	bne $t1, $t2, label276
	j label277
label276:
	li $t0, 1
	sw $t0, -4132($fp)
label277:
	li $t0, 0
	sw $t0, -4148($fp)
	li $t0, 0
	sw $t0, -4152($fp)
	li $t0, 7491
	sw $t0, -4156($fp)
	lw $t0, -2464($fp)
	sw $t0, -4160($fp)
	lw $t1, -4156($fp)
	lw $t2, -4160($fp)
	bne $t1, $t2, label282
	j label283
label282:
	li $t0, 1
	sw $t0, -4152($fp)
label283:
	lw $t0, -244($fp)
	sw $t0, -4164($fp)
	lw $t1, -4152($fp)
	lw $t2, -4164($fp)
	bne $t1, $t2, label280
	j label281
label280:
	li $t0, 1
	sw $t0, -4148($fp)
label281:
	addi $sp, $sp, -4
	lw $t0, -4124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4148($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4168($fp)
	addi $sp, $sp, 16
	lw $t1, -4168($fp)
	li $t2, 0
	bne $t1, $t2, label273
	j label272
label272:
	li $t0, 1
	sw $t0, -4120($fp)
label273:
	lw $ra, -4($fp)
	lw $v0, -4120($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 46290
	sw $t0, -4172($fp)
	li $t0, 44687
	sw $t0, -4176($fp)
	lw $t0, -4172($fp)
	lw $t1, -4176($fp)
	mul $t0, $t0, $t1
	sw $t0, -4180($fp)
	lw $t0, -928($fp)
	sw $t0, -4184($fp)
	lw $t0, -4180($fp)
	lw $t1, -4184($fp)
	mul $t0, $t0, $t1
	sw $t0, -4188($fp)
	addi $t0, $fp, -236
	sw $t0, -4192($fp)
	li $t0, 0
	sw $t0, -4196($fp)
	li $t0, 4
	lw $t1, -4196($fp)
	mul $t0, $t0, $t1
	sw $t0, -4200($fp)
	lw $t0, -4200($fp)
	lw $t1, -4192($fp)
	add $t0, $t0, $t1
	sw $t0, -4204($fp)
	lw $t0, -4204($fp)
	lw $t1, 0($t0)
	sw $t1, -4208($fp)
	lw $t0, -4188($fp)
	lw $t1, -4208($fp)
	mul $t0, $t0, $t1
	sw $t0, -4212($fp)
	li $t0, 10018
	sw $t0, -4216($fp)
	lw $t0, -4212($fp)
	lw $t1, -4216($fp)
	add $t0, $t0, $t1
	sw $t0, -4220($fp)
	lw $t1, -4220($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label285
label284:
	li $t0, 0
	sw $t0, -4224($fp)
	lw $t0, -4108($fp)
	sw $t0, -4228($fp)
	lw $t1, -4228($fp)
	li $t2, 0
	bne $t1, $t2, label287
	j label289
label289:
	li $t0, 2378
	sw $t0, -4232($fp)
	addi $t0, $fp, -44
	sw $t0, -4236($fp)
	lw $t0, -940($fp)
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
	lw $t1, -4232($fp)
	lw $t2, -4252($fp)
	bgt $t1, $t2, label287
	j label288
label287:
	li $t0, 1
	sw $t0, -4224($fp)
label288:
	lw $ra, -4($fp)
	lw $v0, -4224($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label285:
	li $t0, 5332
	sw $t0, -4292($fp)
	lw $t0, -4292($fp)
	sw $t0, -4296($fp)
	lw $t0, -4296($fp)
	sw $t0, -4300($fp)
	li $t0, 49518
	sw $t0, -4304($fp)
	addi $t0, $fp, -4288
	sw $t0, -4308($fp)
	li $t0, 0
	sw $t0, -4312($fp)
	lw $t0, -4312($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4316($fp)
	lw $t0, -4308($fp)
	lw $t1, -4316($fp)
	add $t0, $t0, $t1
	sw $t0, -4320($fp)
	lw $t0, -4304($fp)
	lw $t1, -4320($fp)
	sw $t0, 0($t1)
	lw $t0, -4320($fp)
	lw $t1, 0($t0)
	sw $t1, -4324($fp)
	li $t0, 11243
	sw $t0, -4328($fp)
	addi $t0, $fp, -4288
	sw $t0, -4332($fp)
	li $t0, 1
	sw $t0, -4336($fp)
	lw $t0, -4336($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4340($fp)
	lw $t0, -4332($fp)
	lw $t1, -4340($fp)
	add $t0, $t0, $t1
	sw $t0, -4344($fp)
	lw $t0, -4328($fp)
	lw $t1, -4344($fp)
	sw $t0, 0($t1)
	lw $t0, -4344($fp)
	lw $t1, 0($t0)
	sw $t1, -4348($fp)
	li $t0, 26063
	sw $t0, -4352($fp)
	addi $t0, $fp, -4288
	sw $t0, -4356($fp)
	li $t0, 2
	sw $t0, -4360($fp)
	lw $t0, -4360($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4364($fp)
	lw $t0, -4356($fp)
	lw $t1, -4364($fp)
	add $t0, $t0, $t1
	sw $t0, -4368($fp)
	lw $t0, -4352($fp)
	lw $t1, -4368($fp)
	sw $t0, 0($t1)
	lw $t0, -4368($fp)
	lw $t1, 0($t0)
	sw $t1, -4372($fp)
	li $t0, 30762
	sw $t0, -4376($fp)
	addi $t0, $fp, -4288
	sw $t0, -4380($fp)
	li $t0, 3
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
	li $t0, 1595
	sw $t0, -4400($fp)
	addi $t0, $fp, -4288
	sw $t0, -4404($fp)
	li $t0, 4
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
	li $t0, 20155
	sw $t0, -4424($fp)
	addi $t0, $fp, -4288
	sw $t0, -4428($fp)
	li $t0, 5
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
	li $t0, 24591
	sw $t0, -4448($fp)
	addi $t0, $fp, -4288
	sw $t0, -4452($fp)
	li $t0, 6
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
	li $t0, 51865
	sw $t0, -4472($fp)
	addi $t0, $fp, -4288
	sw $t0, -4476($fp)
	li $t0, 7
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
	li $t0, 12981
	sw $t0, -4496($fp)
	addi $t0, $fp, -4288
	sw $t0, -4500($fp)
	li $t0, 8
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
	li $t0, 1302
	sw $t0, -4520($fp)
	lw $t0, -4520($fp)
	sw $t0, -4524($fp)
	lw $t0, -4524($fp)
	sw $t0, -4528($fp)
	li $t0, 37899
	sw $t0, -4532($fp)
	lw $t0, -4532($fp)
	sw $t0, -4536($fp)
	lw $t0, -4536($fp)
	sw $t0, -4540($fp)
	li $t0, 46591
	sw $t0, -4544($fp)
	lw $t0, -4544($fp)
	sw $t0, -4548($fp)
	lw $t0, -4548($fp)
	sw $t0, -4552($fp)
	li $t0, 24733
	sw $t0, -4556($fp)
	lw $t0, -4556($fp)
	sw $t0, -4560($fp)
	lw $t0, -4560($fp)
	sw $t0, -4564($fp)
	li $t0, 0
	sw $t0, -4568($fp)
	li $t0, 0
	sw $t0, -4572($fp)
	li $t0, 0
	sw $t0, -4576($fp)
	lw $t0, -508($fp)
	sw $t0, -4580($fp)
	li $t0, 0
	lw $t1, -4580($fp)
	sub $t0, $t0, $t1
	sw $t0, -4584($fp)
	lw $t1, -4584($fp)
	li $t2, 0
	bne $t1, $t2, label294
	j label296
label296:
	li $t0, 15126
	sw $t0, -4588($fp)
	lw $t1, -4588($fp)
	li $t2, 0
	bne $t1, $t2, label294
	j label295
label294:
	li $t0, 1
	sw $t0, -4576($fp)
label295:
	li $t0, 0
	sw $t0, -4592($fp)
	li $t0, 32155
	sw $t0, -4596($fp)
	lw $t1, -4596($fp)
	li $t2, 0
	bne $t1, $t2, label298
	j label297
label297:
	li $t0, 1
	sw $t0, -4592($fp)
label298:
	li $t0, 0
	sw $t0, -4600($fp)
	lw $t0, -1120($fp)
	sw $t0, -4604($fp)
	li $t0, 0
	lw $t1, -4604($fp)
	sub $t0, $t0, $t1
	sw $t0, -4608($fp)
	lw $t1, -4608($fp)
	li $t2, 0
	bne $t1, $t2, label301
	j label300
label301:
	li $t0, 24548
	sw $t0, -4612($fp)
	lw $t1, -4612($fp)
	li $t2, 0
	bne $t1, $t2, label299
	j label300
label299:
	li $t0, 1
	sw $t0, -4600($fp)
label300:
	addi $sp, $sp, -4
	lw $t0, -4576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4600($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4616($fp)
	addi $sp, $sp, 16
	lw $t1, -4616($fp)
	li $t2, 0
	bne $t1, $t2, label293
	j label292
label292:
	li $t0, 1
	sw $t0, -4572($fp)
label293:
	lw $t0, -1828($fp)
	sw $t0, -4620($fp)
	li $t0, 0
	lw $t1, -4620($fp)
	sub $t0, $t0, $t1
	sw $t0, -4624($fp)
	li $t0, 0
	lw $t1, -4624($fp)
	sub $t0, $t0, $t1
	sw $t0, -4628($fp)
	lw $t0, -4572($fp)
	lw $t1, -4628($fp)
	mul $t0, $t0, $t1
	sw $t0, -4632($fp)
	jal f6
	sw $v0, -4636($fp)
	addi $sp, $sp, 4
	lw $t1, -4632($fp)
	lw $t2, -4636($fp)
	ble $t1, $t2, label290
	j label291
label290:
	li $t0, 1
	sw $t0, -4568($fp)
label291:
	lw $t0, -4296($fp)
	sw $t0, -4640($fp)
	lw $t0, -4640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4288
	sw $t0, -4644($fp)
	li $t0, 0
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
	lw $t0, -4660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4288
	sw $t0, -4664($fp)
	li $t0, 1
	sw $t0, -4668($fp)
	li $t0, 4
	lw $t1, -4668($fp)
	mul $t0, $t0, $t1
	sw $t0, -4672($fp)
	lw $t0, -4672($fp)
	lw $t1, -4664($fp)
	add $t0, $t0, $t1
	sw $t0, -4676($fp)
	lw $t0, -4676($fp)
	lw $t1, 0($t0)
	sw $t1, -4680($fp)
	lw $t0, -4680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4288
	sw $t0, -4684($fp)
	li $t0, 2
	sw $t0, -4688($fp)
	li $t0, 4
	lw $t1, -4688($fp)
	mul $t0, $t0, $t1
	sw $t0, -4692($fp)
	lw $t0, -4692($fp)
	lw $t1, -4684($fp)
	add $t0, $t0, $t1
	sw $t0, -4696($fp)
	lw $t0, -4696($fp)
	lw $t1, 0($t0)
	sw $t1, -4700($fp)
	lw $t0, -4700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4288
	sw $t0, -4704($fp)
	li $t0, 3
	sw $t0, -4708($fp)
	li $t0, 4
	lw $t1, -4708($fp)
	mul $t0, $t0, $t1
	sw $t0, -4712($fp)
	lw $t0, -4712($fp)
	lw $t1, -4704($fp)
	add $t0, $t0, $t1
	sw $t0, -4716($fp)
	lw $t0, -4716($fp)
	lw $t1, 0($t0)
	sw $t1, -4720($fp)
	lw $t0, -4720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4288
	sw $t0, -4724($fp)
	li $t0, 4
	sw $t0, -4728($fp)
	li $t0, 4
	lw $t1, -4728($fp)
	mul $t0, $t0, $t1
	sw $t0, -4732($fp)
	lw $t0, -4732($fp)
	lw $t1, -4724($fp)
	add $t0, $t0, $t1
	sw $t0, -4736($fp)
	lw $t0, -4736($fp)
	lw $t1, 0($t0)
	sw $t1, -4740($fp)
	lw $t0, -4740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4288
	sw $t0, -4744($fp)
	li $t0, 5
	sw $t0, -4748($fp)
	li $t0, 4
	lw $t1, -4748($fp)
	mul $t0, $t0, $t1
	sw $t0, -4752($fp)
	lw $t0, -4752($fp)
	lw $t1, -4744($fp)
	add $t0, $t0, $t1
	sw $t0, -4756($fp)
	lw $t0, -4756($fp)
	lw $t1, 0($t0)
	sw $t1, -4760($fp)
	lw $t0, -4760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4288
	sw $t0, -4764($fp)
	li $t0, 6
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
	lw $t0, -4780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4288
	sw $t0, -4784($fp)
	li $t0, 7
	sw $t0, -4788($fp)
	li $t0, 4
	lw $t1, -4788($fp)
	mul $t0, $t0, $t1
	sw $t0, -4792($fp)
	lw $t0, -4792($fp)
	lw $t1, -4784($fp)
	add $t0, $t0, $t1
	sw $t0, -4796($fp)
	lw $t0, -4796($fp)
	lw $t1, 0($t0)
	sw $t1, -4800($fp)
	lw $t0, -4800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4288
	sw $t0, -4804($fp)
	li $t0, 8
	sw $t0, -4808($fp)
	li $t0, 4
	lw $t1, -4808($fp)
	mul $t0, $t0, $t1
	sw $t0, -4812($fp)
	lw $t0, -4812($fp)
	lw $t1, -4804($fp)
	add $t0, $t0, $t1
	sw $t0, -4816($fp)
	lw $t0, -4816($fp)
	lw $t1, 0($t0)
	sw $t1, -4820($fp)
	lw $t0, -4820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4524($fp)
	sw $t0, -4824($fp)
	lw $t0, -4824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4536($fp)
	sw $t0, -4828($fp)
	lw $t0, -4828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4548($fp)
	sw $t0, -4832($fp)
	lw $t0, -4832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4560($fp)
	sw $t0, -4836($fp)
	lw $t0, -4836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 26754
	sw $t0, -4840($fp)
	li $t0, 0
	sw $t0, -4844($fp)
	lw $t0, -940($fp)
	sw $t0, -4848($fp)
	lw $t1, -4848($fp)
	li $t2, 0
	bne $t1, $t2, label302
	j label304
label304:
	li $t0, 35423
	sw $t0, -4852($fp)
	lw $t1, -4852($fp)
	li $t2, 0
	bne $t1, $t2, label302
	j label303
label302:
	li $t0, 1
	sw $t0, -4844($fp)
label303:
	li $t0, 0
	sw $t0, -4856($fp)
	lw $t0, -952($fp)
	sw $t0, -4860($fp)
	lw $t1, -4860($fp)
	li $t2, 0
	bne $t1, $t2, label306
	j label305
label305:
	li $t0, 1
	sw $t0, -4856($fp)
label306:
	li $t0, 0
	lw $t1, -4856($fp)
	sub $t0, $t0, $t1
	sw $t0, -4864($fp)
	addi $sp, $sp, -4
	lw $t0, -4840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4864($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4868($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -4872($fp)
	lw $t0, -2236($fp)
	sw $t0, -4876($fp)
	lw $t1, -4876($fp)
	li $t2, 0
	bne $t1, $t2, label308
	j label307
label307:
	li $t0, 1
	sw $t0, -4872($fp)
label308:
	li $t0, 9800
	sw $t0, -4880($fp)
	lw $t0, -4872($fp)
	lw $t1, -4880($fp)
	sub $t0, $t0, $t1
	sw $t0, -4884($fp)
	li $t0, 52011
	sw $t0, -4888($fp)
	lw $t0, -1780($fp)
	sw $t0, -4892($fp)
	lw $t0, -4888($fp)
	lw $t1, -4892($fp)
	mul $t0, $t0, $t1
	sw $t0, -4896($fp)
	li $t0, 37049
	sw $t0, -4900($fp)
	lw $t0, -4896($fp)
	lw $t1, -4900($fp)
	sub $t0, $t0, $t1
	sw $t0, -4904($fp)
	li $t0, 0
	sw $t0, -4908($fp)
	li $t0, 27031
	sw $t0, -4912($fp)
	lw $t0, -1756($fp)
	sw $t0, -4916($fp)
	lw $t0, -4912($fp)
	lw $t1, -4916($fp)
	add $t0, $t0, $t1
	sw $t0, -4920($fp)
	lw $t1, -4920($fp)
	li $t2, 0
	bne $t1, $t2, label309
	j label311
label311:
	li $t0, 7422
	sw $t0, -4924($fp)
	lw $t1, -4924($fp)
	li $t2, 0
	bne $t1, $t2, label309
	j label310
label309:
	li $t0, 1
	sw $t0, -4908($fp)
label310:
	li $t0, 0
	sw $t0, -4928($fp)
	lw $t0, -928($fp)
	sw $t0, -4932($fp)
	lw $t1, -4932($fp)
	li $t2, 0
	bne $t1, $t2, label313
	j label312
label312:
	li $t0, 1
	sw $t0, -4928($fp)
label313:
	lw $t0, -4548($fp)
	sw $t0, -4936($fp)
	lw $t0, -4928($fp)
	lw $t1, -4936($fp)
	add $t0, $t0, $t1
	sw $t0, -4940($fp)
	li $t0, 10903
	sw $t0, -4944($fp)
	lw $t0, -4944($fp)
	sw $t0, -4536($fp)
	lw $t0, -4536($fp)
	sw $t0, -4948($fp)
	li $t0, 0
	sw $t0, -4952($fp)
	li $t0, 47879
	sw $t0, -4956($fp)
	lw $t1, -4956($fp)
	li $t2, 0
	bne $t1, $t2, label317
	j label315
label317:
	lw $t0, -1000($fp)
	sw $t0, -4960($fp)
	lw $t1, -4960($fp)
	li $t2, 0
	bne $t1, $t2, label316
	j label315
label316:
	li $t0, 58232
	sw $t0, -4964($fp)
	lw $t1, -4964($fp)
	li $t2, 0
	bne $t1, $t2, label314
	j label315
label314:
	li $t0, 1
	sw $t0, -4952($fp)
label315:
	li $t0, 0
	sw $t0, -4968($fp)
	addi $t0, $fp, -4288
	sw $t0, -4972($fp)
	lw $t0, -988($fp)
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
	lw $t1, -4988($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label319
label320:
	lw $t0, -4524($fp)
	sw $t0, -4992($fp)
	lw $t1, -4992($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label319
label318:
	li $t0, 1
	sw $t0, -4968($fp)
label319:
	li $t0, 0
	sw $t0, -4996($fp)
	li $t0, 0
	sw $t0, -5000($fp)
	lw $t0, -976($fp)
	sw $t0, -5004($fp)
	lw $t1, -5004($fp)
	li $t2, 0
	bne $t1, $t2, label324
	j label323
label323:
	li $t0, 1
	sw $t0, -5000($fp)
label324:
	lw $t0, -4296($fp)
	sw $t0, -5008($fp)
	lw $t1, -5000($fp)
	lw $t2, -5008($fp)
	beq $t1, $t2, label321
	j label322
label321:
	li $t0, 1
	sw $t0, -4996($fp)
label322:
	li $t0, 30149
	sw $t0, -5012($fp)
	li $t0, 34245
	sw $t0, -5016($fp)
	lw $t0, -5016($fp)
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	sw $t0, -5020($fp)
	addi $sp, $sp, -4
	lw $t0, -4952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5020($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5024($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -4940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5024($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5028($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -5028($fp)
	sub $t0, $t0, $t1
	sw $t0, -5032($fp)
	li $t0, 0
	sw $t0, -5036($fp)
	li $t0, 50106
	sw $t0, -5040($fp)
	lw $t1, -5040($fp)
	li $t2, 0
	bne $t1, $t2, label326
	j label327
label327:
	li $t0, 28370
	sw $t0, -5044($fp)
	lw $t1, -5044($fp)
	li $t2, 0
	bne $t1, $t2, label325
	j label326
label325:
	li $t0, 1
	sw $t0, -5036($fp)
label326:
	addi $sp, $sp, -4
	lw $t0, -4884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5036($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5048($fp)
	addi $sp, $sp, 24
	lw $t0, -4868($fp)
	lw $t1, -5048($fp)
	sub $t0, $t0, $t1
	sw $t0, -5052($fp)
	lw $ra, -4($fp)
	lw $v0, -5052($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label328:
	li $t0, 17871
	sw $t0, -5056($fp)
	lw $t0, -5056($fp)
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -5060($fp)
	li $t0, 21043
	sw $t0, -5064($fp)
	li $t0, 0
	sw $t0, -5068($fp)
	li $t0, 57344
	sw $t0, -5072($fp)
	li $t0, 0
	lw $t1, -5072($fp)
	sub $t0, $t0, $t1
	sw $t0, -5076($fp)
	lw $t1, -5076($fp)
	li $t2, 0
	bne $t1, $t2, label333
	j label332
label333:
	li $t0, 21031
	sw $t0, -5080($fp)
	lw $t1, -5080($fp)
	li $t2, 0
	bne $t1, $t2, label331
	j label332
label331:
	li $t0, 1
	sw $t0, -5068($fp)
label332:
	addi $sp, $sp, -4
	lw $t0, -5060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5068($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5084($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -5084($fp)
	sub $t0, $t0, $t1
	sw $t0, -5088($fp)
	lw $t1, -5088($fp)
	li $t2, 0
	bne $t1, $t2, label329
	j label330
label329:
	li $t0, 0
	sw $t0, -5092($fp)
	lw $t0, -1792($fp)
	sw $t0, -5096($fp)
	lw $t1, -5096($fp)
	li $t2, 0
	bne $t1, $t2, label335
	j label334
label334:
	li $t0, 1
	sw $t0, -5092($fp)
label335:
	addi $t0, $fp, -200
	sw $t0, -5100($fp)
	li $t0, 0
	sw $t0, -5104($fp)
	li $t0, 51793
	sw $t0, -5108($fp)
	lw $t1, -5108($fp)
	li $t2, 0
	bne $t1, $t2, label336
	j label338
label338:
	lw $t0, -2224($fp)
	sw $t0, -5112($fp)
	lw $t1, -5112($fp)
	li $t2, 0
	bne $t1, $t2, label336
	j label337
label336:
	li $t0, 1
	sw $t0, -5104($fp)
label337:
	li $t0, 4
	lw $t1, -5104($fp)
	mul $t0, $t0, $t1
	sw $t0, -5116($fp)
	lw $t0, -5116($fp)
	lw $t1, -5100($fp)
	add $t0, $t0, $t1
	sw $t0, -5120($fp)
	lw $t0, -5120($fp)
	lw $t1, 0($t0)
	sw $t1, -5124($fp)
	lw $t0, -5092($fp)
	lw $t1, -5124($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5128($fp)
	j label328
label330:
	li $t0, 0
	sw $t0, -5132($fp)
	li $t0, 22639
	sw $t0, -5136($fp)
	lw $t0, -1744($fp)
	sw $t0, -5140($fp)
	lw $t0, -5136($fp)
	lw $t1, -5140($fp)
	add $t0, $t0, $t1
	sw $t0, -5144($fp)
	lw $t0, -988($fp)
	sw $t0, -5148($fp)
	lw $t1, -5144($fp)
	lw $t2, -5148($fp)
	bgt $t1, $t2, label344
	j label343
label344:
	lw $t0, -4560($fp)
	sw $t0, -5152($fp)
	lw $t1, -5152($fp)
	li $t2, 0
	bne $t1, $t2, label343
	j label342
label342:
	li $t0, 1
	sw $t0, -5132($fp)
label343:
	lw $t0, -5132($fp)
	sw $t0, -2236($fp)
	lw $t0, -2236($fp)
	sw $t0, -5156($fp)
	lw $t1, -5156($fp)
	li $t2, 0
	bne $t1, $t2, label339
	j label340
label339:
	li $t0, 0
	sw $t0, -5160($fp)
	lw $t0, -1804($fp)
	sw $t0, -5164($fp)
	lw $t0, -508($fp)
	sw $t0, -5168($fp)
	lw $t0, -5164($fp)
	lw $t1, -5168($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5172($fp)
	li $t0, 0
	lw $t1, -5172($fp)
	sub $t0, $t0, $t1
	sw $t0, -5176($fp)
	li $t0, 38026
	sw $t0, -5180($fp)
	lw $t0, -4108($fp)
	sw $t0, -5184($fp)
	lw $t0, -5180($fp)
	lw $t1, -5184($fp)
	add $t0, $t0, $t1
	sw $t0, -5188($fp)
	lw $t1, -5176($fp)
	lw $t2, -5188($fp)
	blt $t1, $t2, label345
	j label346
label345:
	li $t0, 1
	sw $t0, -5160($fp)
label346:
	lw $t0, -5160($fp)
	sw $t0, -2224($fp)
	lw $t0, -2224($fp)
	sw $t0, -5192($fp)
	j label341
label340:
	li $t0, 0
	sw $t0, -5196($fp)
	li $t0, 0
	sw $t0, -5200($fp)
	li $t0, 0
	sw $t0, -5204($fp)
	li $t0, 0
	sw $t0, -5208($fp)
	li $t0, 0
	sw $t0, -5212($fp)
	lw $t0, -484($fp)
	sw $t0, -5216($fp)
	lw $t1, -5216($fp)
	li $t2, 0
	bne $t1, $t2, label356
	j label355
label355:
	li $t0, 1
	sw $t0, -5212($fp)
label356:
	lw $t0, -688($fp)
	sw $t0, -5220($fp)
	lw $t1, -5212($fp)
	lw $t2, -5220($fp)
	bge $t1, $t2, label353
	j label354
label353:
	li $t0, 1
	sw $t0, -5208($fp)
label354:
	li $t0, 0
	sw $t0, -5224($fp)
	li $t0, 51007
	sw $t0, -5228($fp)
	lw $t0, -1816($fp)
	sw $t0, -5232($fp)
	lw $t1, -5228($fp)
	lw $t2, -5232($fp)
	bne $t1, $t2, label359
	j label358
label359:
	lw $t0, -1828($fp)
	sw $t0, -5236($fp)
	lw $t1, -5236($fp)
	li $t2, 0
	bne $t1, $t2, label357
	j label358
label357:
	li $t0, 1
	sw $t0, -5224($fp)
label358:
	li $t0, 8968
	sw $t0, -5240($fp)
	li $t0, 0
	sw $t0, -5244($fp)
	lw $t0, -2476($fp)
	sw $t0, -5248($fp)
	lw $t0, -1816($fp)
	sw $t0, -5252($fp)
	lw $t0, -5248($fp)
	lw $t1, -5252($fp)
	mul $t0, $t0, $t1
	sw $t0, -5256($fp)
	lw $t0, -1000($fp)
	sw $t0, -5260($fp)
	lw $t1, -5256($fp)
	lw $t2, -5260($fp)
	bne $t1, $t2, label360
	j label361
label360:
	li $t0, 1
	sw $t0, -5244($fp)
label361:
	li $t0, 0
	sw $t0, -5264($fp)
	lw $t0, -1792($fp)
	sw $t0, -5268($fp)
	lw $t1, -5268($fp)
	li $t2, 0
	bne $t1, $t2, label362
	j label364
label364:
	li $t0, 10848
	sw $t0, -5272($fp)
	lw $t1, -5272($fp)
	li $t2, 0
	bne $t1, $t2, label362
	j label363
label362:
	li $t0, 1
	sw $t0, -5264($fp)
label363:
	addi $sp, $sp, -4
	lw $t0, -5208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5264($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5276($fp)
	addi $sp, $sp, 24
	lw $t1, -5276($fp)
	li $t2, 0
	bne $t1, $t2, label351
	j label352
label351:
	li $t0, 1
	sw $t0, -5204($fp)
label352:
	addi $t0, $fp, -76
	sw $t0, -5280($fp)
	lw $t0, -736($fp)
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
	lw $t1, -5204($fp)
	lw $t2, -5296($fp)
	beq $t1, $t2, label349
	j label350
label349:
	li $t0, 1
	sw $t0, -5200($fp)
label350:
	li $t0, 0
	sw $t0, -5300($fp)
	lw $t0, -1840($fp)
	sw $t0, -5304($fp)
	li $t0, 0
	sw $t0, -5308($fp)
	li $t0, 12150
	sw $t0, -5312($fp)
	lw $t1, -5312($fp)
	li $t2, 0
	bne $t1, $t2, label368
	j label367
label367:
	li $t0, 1
	sw $t0, -5308($fp)
label368:
	lw $t1, -5304($fp)
	lw $t2, -5308($fp)
	bge $t1, $t2, label365
	j label366
label365:
	li $t0, 1
	sw $t0, -5300($fp)
label366:
	lw $t1, -5200($fp)
	lw $t2, -5300($fp)
	bne $t1, $t2, label347
	j label348
label347:
	li $t0, 1
	sw $t0, -5196($fp)
label348:
label341:
	li $t0, 0
	sw $t0, -5316($fp)
	jal f6
	sw $v0, -5320($fp)
	addi $sp, $sp, 4
	lw $t0, -1852($fp)
	sw $t0, -5324($fp)
	li $t0, 36884
	sw $t0, -5328($fp)
	lw $t0, -5324($fp)
	lw $t1, -5328($fp)
	mul $t0, $t0, $t1
	sw $t0, -5332($fp)
	lw $t0, -1780($fp)
	sw $t0, -5336($fp)
	lw $t0, -5332($fp)
	lw $t1, -5336($fp)
	mul $t0, $t0, $t1
	sw $t0, -5340($fp)
	li $t0, 46867
	sw $t0, -5344($fp)
	li $t0, 32062
	sw $t0, -5348($fp)
	lw $t0, -5344($fp)
	lw $t1, -5348($fp)
	mul $t0, $t0, $t1
	sw $t0, -5352($fp)
	lw $t0, -1828($fp)
	sw $t0, -5356($fp)
	lw $t0, -5352($fp)
	lw $t1, -5356($fp)
	mul $t0, $t0, $t1
	sw $t0, -5360($fp)
	addi $sp, $sp, -4
	lw $t0, -5320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5360($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5364($fp)
	addi $sp, $sp, 16
	lw $t0, -1864($fp)
	sw $t0, -5368($fp)
	lw $t1, -5364($fp)
	lw $t2, -5368($fp)
	bne $t1, $t2, label369
	j label370
label369:
	li $t0, 1
	sw $t0, -5316($fp)
label370:
	lw $t0, -5316($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -5372($fp)
	li $t0, 5880
	sw $t0, -5376($fp)
	lw $t1, -5376($fp)
	li $t2, 0
	bne $t1, $t2, label371
	j label372
label371:
	li $t0, 0
	sw $t0, -5380($fp)
	lw $t0, -1876($fp)
	sw $t0, -5384($fp)
	lw $t1, -5384($fp)
	li $t2, 0
	bne $t1, $t2, label376
	j label375
label376:
	li $t0, 64217
	sw $t0, -5388($fp)
	li $t0, 0
	lw $t1, -5388($fp)
	sub $t0, $t0, $t1
	sw $t0, -5392($fp)
	lw $t1, -5392($fp)
	li $t2, 0
	bne $t1, $t2, label374
	j label375
label374:
	li $t0, 1
	sw $t0, -5380($fp)
label375:
	lw $t0, -5380($fp)
	sw $t0, -2464($fp)
	lw $t0, -2464($fp)
	sw $t0, -5396($fp)
	j label373
label372:
	li $t0, 0
	sw $t0, -5400($fp)
	lw $t0, -1888($fp)
	sw $t0, -5404($fp)
	lw $t1, -5404($fp)
	li $t2, 0
	bne $t1, $t2, label377
	j label378
label377:
	li $t0, 1
	sw $t0, -5400($fp)
label378:
	li $t0, 52010
	sw $t0, -5408($fp)
	lw $t0, -5400($fp)
	lw $t1, -5408($fp)
	sub $t0, $t0, $t1
	sw $t0, -5412($fp)
label373:
	j label266
label265:
	li $t0, 0
	sw $t0, -5416($fp)
	li $t0, 0
	sw $t0, -5420($fp)
	lw $t0, -892($fp)
	sw $t0, -5424($fp)
	lw $t1, -5424($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label381
label381:
	li $t0, 1
	sw $t0, -5420($fp)
label382:
	li $t0, 1193
	sw $t0, -5428($fp)
	lw $t0, -892($fp)
	sw $t0, -5432($fp)
	lw $t0, -496($fp)
	sw $t0, -5436($fp)
	lw $t0, -5432($fp)
	lw $t1, -5436($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5440($fp)
	li $t0, 59681
	sw $t0, -5444($fp)
	lw $t0, -5440($fp)
	lw $t1, -5444($fp)
	add $t0, $t0, $t1
	sw $t0, -5448($fp)
	lw $t0, -892($fp)
	sw $t0, -5452($fp)
	li $t0, 36580
	sw $t0, -5456($fp)
	lw $t0, -5452($fp)
	lw $t1, -5456($fp)
	add $t0, $t0, $t1
	sw $t0, -5460($fp)
	li $t0, 4137
	sw $t0, -5464($fp)
	lw $t0, -5460($fp)
	lw $t1, -5464($fp)
	add $t0, $t0, $t1
	sw $t0, -5468($fp)
	lw $t0, -508($fp)
	sw $t0, -5472($fp)
	addi $t0, $fp, -176
	sw $t0, -5476($fp)
	li $t0, 3
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
	lw $t0, -5428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5492($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5496($fp)
	addi $sp, $sp, 24
	lw $t0, -5420($fp)
	lw $t1, -5496($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5500($fp)
	lw $t0, -2188($fp)
	sw $t0, -5504($fp)
	li $t0, 52016
	sw $t0, -5508($fp)
	lw $t0, -5504($fp)
	lw $t1, -5508($fp)
	mul $t0, $t0, $t1
	sw $t0, -5512($fp)
	lw $t0, -1876($fp)
	sw $t0, -5516($fp)
	lw $t0, -5512($fp)
	lw $t1, -5516($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5520($fp)
	addi $t0, $fp, -52
	sw $t0, -5524($fp)
	li $t0, 0
	sw $t0, -5528($fp)
	li $t0, 4
	lw $t1, -5528($fp)
	mul $t0, $t0, $t1
	sw $t0, -5532($fp)
	lw $t0, -5532($fp)
	lw $t1, -5524($fp)
	add $t0, $t0, $t1
	sw $t0, -5536($fp)
	lw $t0, -5536($fp)
	lw $t1, 0($t0)
	sw $t1, -5540($fp)
	lw $t0, -5520($fp)
	lw $t1, -5540($fp)
	mul $t0, $t0, $t1
	sw $t0, -5544($fp)
	lw $t1, -5500($fp)
	lw $t2, -5544($fp)
	beq $t1, $t2, label379
	j label380
label379:
	li $t0, 1
	sw $t0, -5416($fp)
label380:
	lw $ra, -4($fp)
	lw $v0, -5416($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label266:
	j label245
label247:
	addi $t0, $fp, -236
	sw $t0, -5548($fp)
	lw $t0, -1300($fp)
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
	lw $t0, -256($fp)
	sw $t0, -5568($fp)
	lw $t0, -5564($fp)
	lw $t1, -5568($fp)
	mul $t0, $t0, $t1
	sw $t0, -5572($fp)
	addi $t0, $fp, -128
	sw $t0, -5576($fp)
	lw $t0, -1504($fp)
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
	lw $t0, -5572($fp)
	lw $t1, -5592($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5596($fp)
	addi $t0, $fp, -160
	sw $t0, -5600($fp)
	li $t0, 7
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
	lw $t0, -5596($fp)
	lw $t1, -5616($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5620($fp)
	addi $t0, $fp, -80
	sw $t0, -5624($fp)
	lw $t0, -1708($fp)
	sw $t0, -5628($fp)
	li $t0, 4
	lw $t1, -5628($fp)
	mul $t0, $t0, $t1
	sw $t0, -5632($fp)
	lw $t0, -5632($fp)
	lw $t1, -5624($fp)
	add $t0, $t0, $t1
	sw $t0, -5636($fp)
	lw $t0, -5636($fp)
	lw $t1, 0($t0)
	sw $t1, -5640($fp)
	li $t0, 0
	lw $t1, -5640($fp)
	sub $t0, $t0, $t1
	sw $t0, -5644($fp)
	lw $t0, -5620($fp)
	lw $t1, -5644($fp)
	sub $t0, $t0, $t1
	sw $t0, -5648($fp)
	lw $t1, -5648($fp)
	li $t2, 0
	bne $t1, $t2, label383
	j label384
label383:
	li $t0, 0
	sw $t0, -5652($fp)
	li $t0, 0
	sw $t0, -5656($fp)
	lw $t0, -496($fp)
	sw $t0, -5660($fp)
	li $t0, 64108
	sw $t0, -5664($fp)
	lw $t0, -5660($fp)
	lw $t1, -5664($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5668($fp)
	li $t0, 50560
	sw $t0, -5672($fp)
	lw $t0, -5668($fp)
	lw $t1, -5672($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5676($fp)
	li $t0, 0
	sw $t0, -5680($fp)
	lw $t0, -1720($fp)
	sw $t0, -5684($fp)
	lw $t1, -5684($fp)
	li $t2, 0
	bne $t1, $t2, label391
	j label390
label390:
	li $t0, 1
	sw $t0, -5680($fp)
label391:
	lw $t0, -5676($fp)
	lw $t1, -5680($fp)
	sub $t0, $t0, $t1
	sw $t0, -5688($fp)
	li $t0, 4064
	sw $t0, -5692($fp)
	li $t0, 55916
	sw $t0, -5696($fp)
	lw $t0, -5692($fp)
	lw $t1, -5696($fp)
	sub $t0, $t0, $t1
	sw $t0, -5700($fp)
	lw $t0, 12($fp)
	sw $t0, -5704($fp)
	lw $t0, -5700($fp)
	lw $t1, -5704($fp)
	sub $t0, $t0, $t1
	sw $t0, -5708($fp)
	lw $t1, -5688($fp)
	lw $t2, -5708($fp)
	bge $t1, $t2, label388
	j label389
label388:
	li $t0, 1
	sw $t0, -5656($fp)
label389:
	li $t0, 6055
	sw $t0, -5712($fp)
	li $t0, 25107
	sw $t0, -5716($fp)
	lw $t0, -5712($fp)
	lw $t1, -5716($fp)
	add $t0, $t0, $t1
	sw $t0, -5720($fp)
	lw $t1, -5656($fp)
	lw $t2, -5720($fp)
	blt $t1, $t2, label386
	j label387
label386:
	li $t0, 1
	sw $t0, -5652($fp)
label387:
label384:
	li $t0, 8251
	sw $t0, -5724($fp)
	lw $t0, -5724($fp)
	sw $t0, -5728($fp)
	lw $t0, -5728($fp)
	sw $t0, -5732($fp)
	li $t0, 0
	sw $t0, -5736($fp)
	li $t0, 57848
	sw $t0, -5740($fp)
	li $t0, 0
	sw $t0, -5744($fp)
	lw $t0, -1732($fp)
	sw $t0, -5748($fp)
	lw $t1, -5748($fp)
	li $t2, 0
	bne $t1, $t2, label395
	j label394
label394:
	li $t0, 1
	sw $t0, -5744($fp)
label395:
	li $t0, 47746
	sw $t0, -5752($fp)
	lw $t0, -5744($fp)
	lw $t1, -5752($fp)
	mul $t0, $t0, $t1
	sw $t0, -5756($fp)
	jal f6
	sw $v0, -5760($fp)
	addi $sp, $sp, 4
	lw $t0, -5756($fp)
	lw $t1, -5760($fp)
	add $t0, $t0, $t1
	sw $t0, -5764($fp)
	lw $t1, -5740($fp)
	lw $t2, -5764($fp)
	blt $t1, $t2, label392
	j label393
label392:
	li $t0, 1
	sw $t0, -5736($fp)
label393:
	li $t0, 46278
	sw $t0, -5768($fp)
	lw $t1, -5768($fp)
	li $t2, 0
	bne $t1, $t2, label396
	j label397
label396:
	li $t0, 0
	sw $t0, -5772($fp)
	lw $t0, -508($fp)
	sw $t0, -5776($fp)
	lw $t1, -5776($fp)
	li $t2, 0
	bne $t1, $t2, label399
	j label401
label401:
	li $t0, 52195
	sw $t0, -5780($fp)
	lw $t1, -5780($fp)
	li $t2, 0
	bne $t1, $t2, label399
	j label400
label399:
	li $t0, 1
	sw $t0, -5772($fp)
label400:
	lw $t0, -964($fp)
	sw $t0, -5784($fp)
	lw $t0, -2476($fp)
	sw $t0, -5788($fp)
	lw $t0, -5784($fp)
	lw $t1, -5788($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5792($fp)
	li $t0, 63812
	sw $t0, -5796($fp)
	lw $t0, -5792($fp)
	lw $t1, -5796($fp)
	add $t0, $t0, $t1
	sw $t0, -5800($fp)
	lw $t0, -2200($fp)
	sw $t0, -5804($fp)
	lw $t0, -5804($fp)
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	sw $t0, -5808($fp)
	li $t0, 0
	sw $t0, -5812($fp)
	lw $t0, -5728($fp)
	sw $t0, -5816($fp)
	lw $t1, -5816($fp)
	li $t2, 0
	bne $t1, $t2, label402
	j label405
label405:
	lw $t0, -2464($fp)
	sw $t0, -5820($fp)
	lw $t1, -5820($fp)
	li $t2, 0
	bne $t1, $t2, label402
	j label404
label404:
	lw $t0, -952($fp)
	sw $t0, -5824($fp)
	lw $t1, -5824($fp)
	li $t2, 0
	bne $t1, $t2, label402
	j label403
label402:
	li $t0, 1
	sw $t0, -5812($fp)
label403:
	li $t0, 0
	sw $t0, -5828($fp)
	li $t0, 31749
	sw $t0, -5832($fp)
	li $t0, 15311
	sw $t0, -5836($fp)
	lw $t0, -5832($fp)
	lw $t1, -5836($fp)
	add $t0, $t0, $t1
	sw $t0, -5840($fp)
	li $t0, 38046
	sw $t0, -5844($fp)
	lw $t1, -5840($fp)
	lw $t2, -5844($fp)
	blt $t1, $t2, label406
	j label407
label406:
	li $t0, 1
	sw $t0, -5828($fp)
label407:
	addi $sp, $sp, -4
	lw $t0, -5772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5828($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5848($fp)
	addi $sp, $sp, 24
	li $t0, 43926
	sw $t0, -5852($fp)
	lw $t0, -5848($fp)
	lw $t1, -5852($fp)
	mul $t0, $t0, $t1
	sw $t0, -5856($fp)
	addi $t0, $fp, -236
	sw $t0, -5860($fp)
	li $t0, 1
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
	lw $t0, -508($fp)
	sw $t0, -5880($fp)
	lw $t0, -5880($fp)
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -5884($fp)
	addi $sp, $sp, -4
	lw $t0, -5856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5884($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5888($fp)
	addi $sp, $sp, 16
	lw $ra, -4($fp)
	lw $v0, -5888($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label398
label397:
	li $t0, 62493
	sw $t0, -5892($fp)
	lw $t0, -5892($fp)
	sw $t0, -5896($fp)
	lw $t0, -5896($fp)
	sw $t0, -5900($fp)
	li $t0, 0
	sw $t0, -5904($fp)
	addi $t0, $fp, -228
	sw $t0, -5908($fp)
	li $t0, 0
	sw $t0, -5912($fp)
	lw $t0, -508($fp)
	sw $t0, -5916($fp)
	lw $t1, -5916($fp)
	li $t2, 0
	bne $t1, $t2, label411
	j label413
label413:
	li $t0, 38669
	sw $t0, -5920($fp)
	lw $t1, -5920($fp)
	li $t2, 0
	bne $t1, $t2, label411
	j label412
label411:
	li $t0, 1
	sw $t0, -5912($fp)
label412:
	li $t0, 4
	lw $t1, -5912($fp)
	mul $t0, $t0, $t1
	sw $t0, -5924($fp)
	lw $t0, -5924($fp)
	lw $t1, -5908($fp)
	add $t0, $t0, $t1
	sw $t0, -5928($fp)
	lw $t0, -5928($fp)
	lw $t1, 0($t0)
	sw $t1, -5932($fp)
	lw $t1, -5932($fp)
	li $t2, 0
	bne $t1, $t2, label410
	j label408
label410:
	addi $t0, $fp, -236
	sw $t0, -5936($fp)
	li $t0, 0
	sw $t0, -5940($fp)
	li $t0, 19693
	sw $t0, -5944($fp)
	lw $t0, -2476($fp)
	sw $t0, -5948($fp)
	lw $t1, -5944($fp)
	lw $t2, -5948($fp)
	bne $t1, $t2, label414
	j label415
label414:
	li $t0, 1
	sw $t0, -5940($fp)
label415:
	li $t0, 4
	lw $t1, -5940($fp)
	mul $t0, $t0, $t1
	sw $t0, -5952($fp)
	lw $t0, -5952($fp)
	lw $t1, -5936($fp)
	add $t0, $t0, $t1
	sw $t0, -5956($fp)
	lw $t0, -5956($fp)
	lw $t1, 0($t0)
	sw $t1, -5960($fp)
	lw $t1, -5960($fp)
	li $t2, 0
	bne $t1, $t2, label408
	j label409
label408:
	li $t0, 1
	sw $t0, -5904($fp)
label409:
	lw $t0, -5896($fp)
	sw $t0, -5964($fp)
	lw $t0, -5964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 22393
	sw $t0, -5968($fp)
	lw $ra, -4($fp)
	lw $v0, -5968($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	jal f6
	sw $v0, -5972($fp)
	addi $sp, $sp, 4
	lw $t0, -1072($fp)
	sw $t0, -5976($fp)
	lw $t0, -5972($fp)
	lw $t1, -5976($fp)
	mul $t0, $t0, $t1
	sw $t0, -5980($fp)
	li $t0, 9714
	sw $t0, -5984($fp)
	lw $t0, -5980($fp)
	lw $t1, -5984($fp)
	mul $t0, $t0, $t1
	sw $t0, -5988($fp)
	li $t0, 0
	lw $t1, -5988($fp)
	sub $t0, $t0, $t1
	sw $t0, -5992($fp)
	lw $t1, -5992($fp)
	li $t2, 0
	bne $t1, $t2, label416
	j label417
label416:
	li $t0, 0
	sw $t0, -5996($fp)
	li $t0, 0
	sw $t0, -6000($fp)
	addi $t0, $fp, -236
	sw $t0, -6004($fp)
	lw $t0, -2224($fp)
	sw $t0, -6008($fp)
	li $t0, 4
	lw $t1, -6008($fp)
	mul $t0, $t0, $t1
	sw $t0, -6012($fp)
	lw $t0, -6012($fp)
	lw $t1, -6004($fp)
	add $t0, $t0, $t1
	sw $t0, -6016($fp)
	lw $t0, -6016($fp)
	lw $t1, 0($t0)
	sw $t1, -6020($fp)
	li $t0, 23830
	sw $t0, -6024($fp)
	lw $t0, -1756($fp)
	sw $t0, -6028($fp)
	lw $t0, -6024($fp)
	lw $t1, -6028($fp)
	sub $t0, $t0, $t1
	sw $t0, -6032($fp)
	lw $t1, -6020($fp)
	lw $t2, -6032($fp)
	blt $t1, $t2, label422
	j label423
label422:
	li $t0, 1
	sw $t0, -6000($fp)
label423:
	lw $t0, -2464($fp)
	sw $t0, -6036($fp)
	li $t0, 16538
	sw $t0, -6040($fp)
	lw $t0, -6036($fp)
	lw $t1, -6040($fp)
	sub $t0, $t0, $t1
	sw $t0, -6044($fp)
	lw $t1, -6000($fp)
	lw $t2, -6044($fp)
	ble $t1, $t2, label421
	j label420
label421:
	lw $t0, -1768($fp)
	sw $t0, -6048($fp)
	lw $t1, -6048($fp)
	li $t2, 0
	bne $t1, $t2, label419
	j label420
label419:
	li $t0, 1
	sw $t0, -5996($fp)
label420:
	j label418
label417:
	li $t0, 0
	sw $t0, -6052($fp)
	addi $t0, $fp, -208
	sw $t0, -6056($fp)
	addi $t0, $fp, -228
	sw $t0, -6060($fp)
	lw $t0, -664($fp)
	sw $t0, -6064($fp)
	li $t0, 4
	lw $t1, -6064($fp)
	mul $t0, $t0, $t1
	sw $t0, -6068($fp)
	lw $t0, -6068($fp)
	lw $t1, -6060($fp)
	add $t0, $t0, $t1
	sw $t0, -6072($fp)
	lw $t0, -6072($fp)
	lw $t1, 0($t0)
	sw $t1, -6076($fp)
	li $t0, 4
	lw $t1, -6076($fp)
	mul $t0, $t0, $t1
	sw $t0, -6080($fp)
	lw $t0, -6080($fp)
	lw $t1, -6056($fp)
	add $t0, $t0, $t1
	sw $t0, -6084($fp)
	lw $t0, -6084($fp)
	lw $t1, 0($t0)
	sw $t1, -6088($fp)
	lw $t1, -6088($fp)
	li $t2, 0
	bne $t1, $t2, label425
	j label424
label424:
	li $t0, 1
	sw $t0, -6052($fp)
label425:
label418:
label426:
	jal f6
	sw $v0, -6092($fp)
	addi $sp, $sp, 4
	lw $t0, -5896($fp)
	sw $t0, -6096($fp)
	lw $t0, -6092($fp)
	lw $t1, -6096($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6100($fp)
	li $t0, 0
	lw $t1, -6100($fp)
	sub $t0, $t0, $t1
	sw $t0, -6104($fp)
	lw $t1, -6104($fp)
	li $t2, 0
	bne $t1, $t2, label427
	j label428
label427:
	li $t0, 0
	sw $t0, -6108($fp)
	addi $t0, $fp, -128
	sw $t0, -6112($fp)
	li $t0, 7
	sw $t0, -6116($fp)
	li $t0, 4
	lw $t1, -6116($fp)
	mul $t0, $t0, $t1
	sw $t0, -6120($fp)
	lw $t0, -6120($fp)
	lw $t1, -6112($fp)
	add $t0, $t0, $t1
	sw $t0, -6124($fp)
	lw $t0, -6124($fp)
	lw $t1, 0($t0)
	sw $t1, -6128($fp)
	lw $t0, -940($fp)
	sw $t0, -6132($fp)
	lw $t0, -6128($fp)
	lw $t1, -6132($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6136($fp)
	li $t0, 0
	sw $t0, -6140($fp)
	lw $t0, -244($fp)
	sw $t0, -6144($fp)
	lw $t0, -244($fp)
	sw $t0, -6148($fp)
	lw $t0, -6144($fp)
	lw $t1, -6148($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6152($fp)
	li $t0, 0
	sw $t0, -6156($fp)
	lw $t0, -544($fp)
	sw $t0, -6160($fp)
	li $t0, 21577
	sw $t0, -6164($fp)
	lw $t1, -6160($fp)
	lw $t2, -6164($fp)
	bge $t1, $t2, label433
	j label434
label433:
	li $t0, 1
	sw $t0, -6156($fp)
label434:
	li $t0, 0
	sw $t0, -6168($fp)
	lw $t0, -5896($fp)
	sw $t0, -6172($fp)
	lw $t1, -6172($fp)
	li $t2, 0
	bne $t1, $t2, label435
	j label437
label437:
	lw $t0, -676($fp)
	sw $t0, -6176($fp)
	lw $t1, -6176($fp)
	li $t2, 0
	bne $t1, $t2, label435
	j label436
label435:
	li $t0, 1
	sw $t0, -6168($fp)
label436:
	addi $t0, $fp, -236
	sw $t0, -6180($fp)
	li $t0, 1
	sw $t0, -6184($fp)
	li $t0, 4
	lw $t1, -6184($fp)
	mul $t0, $t0, $t1
	sw $t0, -6188($fp)
	lw $t0, -6188($fp)
	lw $t1, -6180($fp)
	add $t0, $t0, $t1
	sw $t0, -6192($fp)
	lw $t0, -6192($fp)
	lw $t1, 0($t0)
	sw $t1, -6196($fp)
	lw $t0, -1132($fp)
	sw $t0, -6200($fp)
	lw $t0, -6196($fp)
	lw $t1, -6200($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6204($fp)
	li $t0, 0
	sw $t0, -6208($fp)
	li $t0, 3379
	sw $t0, -6212($fp)
	lw $t1, -6212($fp)
	li $t2, 0
	bne $t1, $t2, label440
	j label439
label440:
	li $t0, 23004
	sw $t0, -6216($fp)
	lw $t1, -6216($fp)
	li $t2, 0
	bne $t1, $t2, label438
	j label439
label438:
	li $t0, 1
	sw $t0, -6208($fp)
label439:
	addi $sp, $sp, -4
	lw $t0, -6152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6208($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6220($fp)
	addi $sp, $sp, 24
	lw $t1, -6220($fp)
	li $t2, 0
	bne $t1, $t2, label432
	j label431
label431:
	li $t0, 1
	sw $t0, -6140($fp)
label432:
	lw $t0, -6136($fp)
	lw $t1, -6140($fp)
	mul $t0, $t0, $t1
	sw $t0, -6224($fp)
	li $t0, 0
	sw $t0, -6228($fp)
	li $t0, 8847
	sw $t0, -6232($fp)
	lw $t1, -6232($fp)
	li $t2, 0
	bne $t1, $t2, label442
	j label441
label441:
	li $t0, 1
	sw $t0, -6228($fp)
label442:
	lw $t1, -6224($fp)
	lw $t2, -6228($fp)
	blt $t1, $t2, label429
	j label430
label429:
	li $t0, 1
	sw $t0, -6108($fp)
label430:
	j label426
label428:
label398:
	li $t0, 1707
	sw $t0, -6244($fp)
	addi $t0, $fp, -6240
	sw $t0, -6248($fp)
	li $t0, 0
	sw $t0, -6252($fp)
	lw $t0, -6252($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6256($fp)
	lw $t0, -6248($fp)
	lw $t1, -6256($fp)
	add $t0, $t0, $t1
	sw $t0, -6260($fp)
	lw $t0, -6244($fp)
	lw $t1, -6260($fp)
	sw $t0, 0($t1)
	lw $t0, -6260($fp)
	lw $t1, 0($t0)
	sw $t1, -6264($fp)
	li $t0, 11957
	sw $t0, -6268($fp)
	addi $t0, $fp, -6240
	sw $t0, -6272($fp)
	li $t0, 1
	sw $t0, -6276($fp)
	lw $t0, -6276($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6280($fp)
	lw $t0, -6272($fp)
	lw $t1, -6280($fp)
	add $t0, $t0, $t1
	sw $t0, -6284($fp)
	lw $t0, -6268($fp)
	lw $t1, -6284($fp)
	sw $t0, 0($t1)
	lw $t0, -6284($fp)
	lw $t1, 0($t0)
	sw $t1, -6288($fp)
	li $t0, 14902
	sw $t0, -6292($fp)
	lw $t0, -6292($fp)
	sw $t0, -6296($fp)
	lw $t0, -6296($fp)
	sw $t0, -6300($fp)
	li $t0, 0
	sw $t0, -6304($fp)
	lw $t0, -724($fp)
	sw $t0, -6308($fp)
	li $t0, 0
	lw $t1, -6308($fp)
	sub $t0, $t0, $t1
	sw $t0, -6312($fp)
	lw $t1, -6312($fp)
	li $t2, 0
	bne $t1, $t2, label443
	j label445
label445:
	lw $t0, -688($fp)
	sw $t0, -6316($fp)
	lw $t1, -6316($fp)
	li $t2, 0
	bne $t1, $t2, label444
	j label443
label443:
	li $t0, 1
	sw $t0, -6304($fp)
label444:
label446:
	li $t0, 0
	sw $t0, -6320($fp)
	jal f6
	sw $v0, -6324($fp)
	addi $sp, $sp, 4
	lw $t1, -6324($fp)
	li $t2, 0
	bne $t1, $t2, label450
	j label449
label449:
	li $t0, 1
	sw $t0, -6320($fp)
label450:
	lw $t0, -1864($fp)
	sw $t0, -6328($fp)
	li $t0, 26814
	sw $t0, -6332($fp)
	lw $t0, -6328($fp)
	lw $t1, -6332($fp)
	mul $t0, $t0, $t1
	sw $t0, -6336($fp)
	lw $t0, -1096($fp)
	sw $t0, -6340($fp)
	lw $t0, -6336($fp)
	lw $t1, -6340($fp)
	mul $t0, $t0, $t1
	sw $t0, -6344($fp)
	lw $t0, -6320($fp)
	lw $t1, -6344($fp)
	add $t0, $t0, $t1
	sw $t0, -6348($fp)
	li $t0, 20209
	sw $t0, -6352($fp)
	lw $t0, -1828($fp)
	sw $t0, -6356($fp)
	lw $t0, -6352($fp)
	lw $t1, -6356($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6360($fp)
	li $t0, 7215
	sw $t0, -6364($fp)
	lw $t0, -6360($fp)
	lw $t1, -6364($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6368($fp)
	li $t0, 9025
	sw $t0, -6372($fp)
	li $t0, 0
	lw $t1, -6372($fp)
	sub $t0, $t0, $t1
	sw $t0, -6376($fp)
	lw $t0, -6368($fp)
	lw $t1, -6376($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6380($fp)
	lw $t0, -6348($fp)
	lw $t1, -6380($fp)
	add $t0, $t0, $t1
	sw $t0, -6384($fp)
	lw $t1, -6384($fp)
	li $t2, 0
	bne $t1, $t2, label447
	j label448
label447:
	addi $t0, $fp, -6240
	sw $t0, -6388($fp)
	li $t0, 0
	sw $t0, -6392($fp)
	li $t0, 4
	lw $t1, -6392($fp)
	mul $t0, $t0, $t1
	sw $t0, -6396($fp)
	lw $t0, -6396($fp)
	lw $t1, -6388($fp)
	add $t0, $t0, $t1
	sw $t0, -6400($fp)
	lw $t0, -6400($fp)
	lw $t1, 0($t0)
	sw $t1, -6404($fp)
	lw $t1, -6404($fp)
	li $t2, 0
	bne $t1, $t2, label454
	j label452
label454:
	lw $t0, -940($fp)
	sw $t0, -6408($fp)
	li $t0, 204
	sw $t0, -6412($fp)
	lw $t0, -6296($fp)
	sw $t0, -6416($fp)
	lw $t0, -6412($fp)
	lw $t1, -6416($fp)
	sub $t0, $t0, $t1
	sw $t0, -6420($fp)
	lw $t1, -6408($fp)
	lw $t2, -6420($fp)
	bne $t1, $t2, label451
	j label452
label451:
	lw $t0, -508($fp)
	sw $t0, -6424($fp)
	lw $t0, -700($fp)
	sw $t0, -6428($fp)
	lw $t0, -6424($fp)
	lw $t1, -6428($fp)
	mul $t0, $t0, $t1
	sw $t0, -6432($fp)
	j label453
label452:
	li $t0, 0
	sw $t0, -6436($fp)
	lw $t0, -712($fp)
	sw $t0, -6440($fp)
	addi $t0, $fp, -236
	sw $t0, -6444($fp)
	li $t0, 1
	sw $t0, -6448($fp)
	li $t0, 4
	lw $t1, -6448($fp)
	mul $t0, $t0, $t1
	sw $t0, -6452($fp)
	lw $t0, -6452($fp)
	lw $t1, -6444($fp)
	add $t0, $t0, $t1
	sw $t0, -6456($fp)
	lw $t0, -6456($fp)
	lw $t1, 0($t0)
	sw $t1, -6460($fp)
	li $t0, 0
	lw $t1, -6460($fp)
	sub $t0, $t0, $t1
	sw $t0, -6464($fp)
	lw $t1, -6440($fp)
	lw $t2, -6464($fp)
	blt $t1, $t2, label455
	j label456
label455:
	li $t0, 1
	sw $t0, -6436($fp)
label456:
	lw $ra, -4($fp)
	lw $v0, -6436($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label453:
	j label446
label448:
	li $t0, 38250
	sw $t0, -6468($fp)
	lw $t0, -6468($fp)
	sw $t0, -6472($fp)
	lw $t0, -6472($fp)
	sw $t0, -6476($fp)
	lw $t0, -6472($fp)
	sw $t0, -6480($fp)
	lw $t0, -6480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	jal f6
	sw $v0, -6484($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -208
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
	li $t0, 0
	lw $t1, -6504($fp)
	sub $t0, $t0, $t1
	sw $t0, -6508($fp)
	li $t0, 0
	lw $t1, -6508($fp)
	sub $t0, $t0, $t1
	sw $t0, -6512($fp)
	lw $t0, -6484($fp)
	lw $t1, -6512($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6516($fp)
	lw $ra, -4($fp)
	lw $v0, -6516($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -6520($fp)
	lw $t0, -508($fp)
	sw $t0, -6524($fp)
	li $t0, 0
	lw $t1, -6524($fp)
	sub $t0, $t0, $t1
	sw $t0, -6528($fp)
	lw $t0, -724($fp)
	sw $t0, -6532($fp)
	lw $t0, -6472($fp)
	sw $t0, -6536($fp)
	lw $t0, -6532($fp)
	lw $t1, -6536($fp)
	mul $t0, $t0, $t1
	sw $t0, -6540($fp)
	lw $t0, -6528($fp)
	lw $t1, -6540($fp)
	add $t0, $t0, $t1
	sw $t0, -6544($fp)
	addi $t0, $fp, -44
	sw $t0, -6548($fp)
	lw $t0, -892($fp)
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
	li $t0, 16641
	sw $t0, -6568($fp)
	lw $t0, -6564($fp)
	lw $t1, -6568($fp)
	add $t0, $t0, $t1
	sw $t0, -6572($fp)
	lw $t1, -6544($fp)
	lw $t2, -6572($fp)
	bge $t1, $t2, label459
	j label458
label459:
	li $t0, 0
	sw $t0, -6576($fp)
	li $t0, 27934
	sw $t0, -6580($fp)
	lw $t1, -6580($fp)
	li $t2, 0
	bne $t1, $t2, label461
	j label460
label460:
	li $t0, 1
	sw $t0, -6576($fp)
label461:
	lw $t0, -688($fp)
	sw $t0, -6584($fp)
	li $t0, 0
	lw $t1, -6584($fp)
	sub $t0, $t0, $t1
	sw $t0, -6588($fp)
	lw $t0, -6576($fp)
	lw $t1, -6588($fp)
	add $t0, $t0, $t1
	sw $t0, -6592($fp)
	lw $t1, -6592($fp)
	li $t2, 0
	bne $t1, $t2, label457
	j label458
label457:
	li $t0, 1
	sw $t0, -6520($fp)
label458:
label462:
	jal f6
	sw $v0, -6596($fp)
	addi $sp, $sp, 4
	lw $t1, -6596($fp)
	li $t2, 0
	bne $t1, $t2, label463
	j label465
label465:
	li $t0, 51016
	sw $t0, -6600($fp)
	lw $t1, -6600($fp)
	li $t2, 0
	bne $t1, $t2, label463
	j label464
label463:
	li $t0, 0
	sw $t0, -6604($fp)
	li $t0, 36334
	sw $t0, -6608($fp)
	lw $t1, -6608($fp)
	li $t2, 0
	bne $t1, $t2, label467
	j label466
label466:
	li $t0, 1
	sw $t0, -6604($fp)
label467:
	j label462
label464:
	addi $t0, $fp, -228
	sw $t0, -6612($fp)
	li $t0, 0
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
	jal f6
	sw $v0, -6632($fp)
	addi $sp, $sp, 4
	lw $t0, -6628($fp)
	lw $t1, -6632($fp)
	add $t0, $t0, $t1
	sw $t0, -6636($fp)
	li $t0, 60165
	sw $t0, -6640($fp)
	lw $t0, -6636($fp)
	lw $t1, -6640($fp)
	add $t0, $t0, $t1
	sw $t0, -6644($fp)
	lw $t1, -6644($fp)
	li $t2, 0
	bne $t1, $t2, label471
	j label469
label471:
	li $t0, 0
	sw $t0, -6648($fp)
	li $t0, 29106
	sw $t0, -6652($fp)
	lw $t1, -6652($fp)
	li $t2, 0
	bne $t1, $t2, label473
	j label472
label472:
	li $t0, 1
	sw $t0, -6648($fp)
label473:
	li $t0, 28762
	sw $t0, -6656($fp)
	lw $t0, -6648($fp)
	lw $t1, -6656($fp)
	mul $t0, $t0, $t1
	sw $t0, -6660($fp)
	li $t0, 0
	sw $t0, -6664($fp)
	li $t0, 4940
	sw $t0, -6668($fp)
	lw $t1, -6668($fp)
	li $t2, 0
	bne $t1, $t2, label476
	j label475
label476:
	li $t0, 4708
	sw $t0, -6672($fp)
	lw $t1, -6672($fp)
	li $t2, 0
	bne $t1, $t2, label474
	j label475
label474:
	li $t0, 1
	sw $t0, -6664($fp)
label475:
	li $t0, 0
	sw $t0, -6676($fp)
	li $t0, 6102
	sw $t0, -6680($fp)
	li $t0, 0
	lw $t1, -6680($fp)
	sub $t0, $t0, $t1
	sw $t0, -6684($fp)
	lw $t1, -6684($fp)
	li $t2, 0
	bne $t1, $t2, label478
	j label477
label477:
	li $t0, 1
	sw $t0, -6676($fp)
label478:
	jal f6
	sw $v0, -6688($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -6688($fp)
	sub $t0, $t0, $t1
	sw $t0, -6692($fp)
	jal f6
	sw $v0, -6696($fp)
	addi $sp, $sp, 4
	li $t0, 1329
	sw $t0, -6700($fp)
	lw $t0, -6696($fp)
	lw $t1, -6700($fp)
	add $t0, $t0, $t1
	sw $t0, -6704($fp)
	addi $sp, $sp, -4
	lw $t0, -6676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6704($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6708($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -6660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6708($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6712($fp)
	addi $sp, $sp, 16
	lw $t1, -6712($fp)
	li $t2, 0
	bne $t1, $t2, label468
	j label469
label468:
	li $t0, 0
	sw $t0, -6716($fp)
	lw $t0, -1876($fp)
	sw $t0, -6720($fp)
	lw $t1, -6720($fp)
	li $t2, 0
	bne $t1, $t2, label481
	j label480
label481:
	li $t0, 2351
	sw $t0, -6724($fp)
	lw $t1, -6724($fp)
	li $t2, 0
	bne $t1, $t2, label480
	j label479
label479:
	li $t0, 1
	sw $t0, -6716($fp)
label480:
label469:
	li $t0, 50683
	sw $t0, -6728($fp)
	lw $t0, -6728($fp)
	sw $t0, -6732($fp)
	lw $t0, -6732($fp)
	sw $t0, -6736($fp)
	li $t0, 0
	sw $t0, -6740($fp)
	li $t0, 37609
	sw $t0, -6744($fp)
	li $t0, 0
	lw $t1, -6744($fp)
	sub $t0, $t0, $t1
	sw $t0, -6748($fp)
	lw $t1, -6748($fp)
	li $t2, 0
	bne $t1, $t2, label486
	j label485
label486:
	addi $t0, $fp, -236
	sw $t0, -6752($fp)
	lw $t0, -736($fp)
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
	lw $t1, -6768($fp)
	li $t2, 0
	bne $t1, $t2, label482
	j label485
label485:
	li $t0, 4058
	sw $t0, -6772($fp)
	lw $t0, -2476($fp)
	sw $t0, -6776($fp)
	lw $t0, -6772($fp)
	lw $t1, -6776($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6780($fp)
	li $t0, 62641
	sw $t0, -6784($fp)
	lw $t0, -6780($fp)
	lw $t1, -6784($fp)
	add $t0, $t0, $t1
	sw $t0, -6788($fp)
	lw $t1, -6788($fp)
	li $t2, 0
	bne $t1, $t2, label482
	j label484
label484:
	addi $t0, $fp, -76
	sw $t0, -6792($fp)
	li $t0, 5
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
	li $t0, 17314
	sw $t0, -6812($fp)
	lw $t0, -6808($fp)
	lw $t1, -6812($fp)
	mul $t0, $t0, $t1
	sw $t0, -6816($fp)
	li $t0, 12816
	sw $t0, -6820($fp)
	li $t0, 0
	sw $t0, -6824($fp)
	lw $t0, -1804($fp)
	sw $t0, -6828($fp)
	li $t0, 50965
	sw $t0, -6832($fp)
	lw $t1, -6828($fp)
	lw $t2, -6832($fp)
	bge $t1, $t2, label487
	j label489
label489:
	li $t0, 30254
	sw $t0, -6836($fp)
	lw $t1, -6836($fp)
	li $t2, 0
	bne $t1, $t2, label487
	j label488
label487:
	li $t0, 1
	sw $t0, -6824($fp)
label488:
	li $t0, 0
	sw $t0, -6840($fp)
	addi $t0, $fp, -216
	sw $t0, -6844($fp)
	li $t0, 1
	sw $t0, -6848($fp)
	li $t0, 4
	lw $t1, -6848($fp)
	mul $t0, $t0, $t1
	sw $t0, -6852($fp)
	lw $t0, -6852($fp)
	lw $t1, -6844($fp)
	add $t0, $t0, $t1
	sw $t0, -6856($fp)
	lw $t0, -6856($fp)
	lw $t1, 0($t0)
	sw $t1, -6860($fp)
	li $t0, 40102
	sw $t0, -6864($fp)
	lw $t1, -6860($fp)
	lw $t2, -6864($fp)
	blt $t1, $t2, label490
	j label491
label490:
	li $t0, 1
	sw $t0, -6840($fp)
label491:
	li $t0, 39898
	sw $t0, -6868($fp)
	lw $t0, -6868($fp)
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	sw $t0, -6872($fp)
	li $t0, 59727
	sw $t0, -6876($fp)
	addi $sp, $sp, -4
	lw $t0, -6820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6876($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6880($fp)
	addi $sp, $sp, 24
	lw $t0, -6816($fp)
	lw $t1, -6880($fp)
	mul $t0, $t0, $t1
	sw $t0, -6884($fp)
	lw $t1, -6884($fp)
	li $t2, 0
	bne $t1, $t2, label482
	j label483
label482:
	li $t0, 1
	sw $t0, -6740($fp)
label483:
	li $t0, 0
	sw $t0, -6888($fp)
	li $t0, 16406
	sw $t0, -6892($fp)
	li $t0, 0
	sw $t0, -6896($fp)
	lw $t0, -6732($fp)
	sw $t0, -6900($fp)
	lw $t1, -6900($fp)
	li $t2, 0
	bne $t1, $t2, label495
	j label494
label494:
	li $t0, 1
	sw $t0, -6896($fp)
label495:
	lw $t1, -6892($fp)
	lw $t2, -6896($fp)
	bge $t1, $t2, label492
	j label493
label492:
	li $t0, 1
	sw $t0, -6888($fp)
label493:
	lw $t0, -6888($fp)
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	sw $t0, -6904($fp)
	lw $t0, 8($fp)
	sw $t0, -6908($fp)
	li $t0, 0
	sw $t0, -6912($fp)
	li $t0, 0
	sw $t0, -6916($fp)
	li $t0, 0
	sw $t0, -6920($fp)
	li $t0, 29457
	sw $t0, -6924($fp)
	li $t0, 0
	lw $t1, -6924($fp)
	sub $t0, $t0, $t1
	sw $t0, -6928($fp)
	lw $t1, -6928($fp)
	li $t2, 0
	bne $t1, $t2, label500
	j label502
label502:
	lw $t0, -1084($fp)
	sw $t0, -6932($fp)
	lw $t1, -6932($fp)
	li $t2, 0
	bne $t1, $t2, label500
	j label501
label500:
	li $t0, 1
	sw $t0, -6920($fp)
label501:
	li $t0, 0
	sw $t0, -6936($fp)
	lw $t0, -1072($fp)
	sw $t0, -6940($fp)
	lw $t1, -6940($fp)
	li $t2, 0
	bne $t1, $t2, label503
	j label504
label503:
	li $t0, 1
	sw $t0, -6936($fp)
label504:
	li $t0, 0
	sw $t0, -6944($fp)
	addi $t0, $fp, -200
	sw $t0, -6948($fp)
	lw $t0, -2524($fp)
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
	lw $t1, -6964($fp)
	li $t2, 0
	bne $t1, $t2, label505
	j label507
label507:
	li $t0, 42601
	sw $t0, -6968($fp)
	lw $t1, -6968($fp)
	li $t2, 0
	bne $t1, $t2, label505
	j label506
label505:
	li $t0, 1
	sw $t0, -6944($fp)
label506:
	addi $sp, $sp, -4
	lw $t0, -6920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6944($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6972($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -6972($fp)
	sub $t0, $t0, $t1
	sw $t0, -6976($fp)
	lw $t0, -2476($fp)
	sw $t0, -6980($fp)
	li $t0, 44340
	sw $t0, -6984($fp)
	lw $t0, -6980($fp)
	lw $t1, -6984($fp)
	mul $t0, $t0, $t1
	sw $t0, -6988($fp)
	lw $t0, -1096($fp)
	sw $t0, -6992($fp)
	lw $t0, -6988($fp)
	lw $t1, -6992($fp)
	mul $t0, $t0, $t1
	sw $t0, -6996($fp)
	lw $t1, -6976($fp)
	lw $t2, -6996($fp)
	bge $t1, $t2, label498
	j label499
label498:
	li $t0, 1
	sw $t0, -6916($fp)
label499:
	li $t0, 0
	sw $t0, -7000($fp)
	lw $t0, -1048($fp)
	sw $t0, -7004($fp)
	lw $t1, -7004($fp)
	li $t2, 0
	bne $t1, $t2, label509
	j label508
label508:
	li $t0, 1
	sw $t0, -7000($fp)
label509:
	jal f6
	sw $v0, -7008($fp)
	addi $sp, $sp, 4
	lw $t0, -7000($fp)
	lw $t1, -7008($fp)
	mul $t0, $t0, $t1
	sw $t0, -7012($fp)
	lw $t1, -6916($fp)
	lw $t2, -7012($fp)
	bne $t1, $t2, label496
	j label497
label496:
	li $t0, 1
	sw $t0, -6912($fp)
label497:
	li $t0, 0
	sw $t0, -7016($fp)
	li $t0, 28082
	sw $t0, -7020($fp)
	lw $t0, -244($fp)
	sw $t0, -7024($fp)
	lw $t0, -1108($fp)
	sw $t0, -7028($fp)
	li $t0, 256
	sw $t0, -7032($fp)
	lw $t0, -7028($fp)
	lw $t1, -7032($fp)
	mul $t0, $t0, $t1
	sw $t0, -7036($fp)
	lw $t0, -7024($fp)
	lw $t1, -7036($fp)
	add $t0, $t0, $t1
	sw $t0, -7040($fp)
	lw $t1, -7020($fp)
	lw $t2, -7040($fp)
	beq $t1, $t2, label510
	j label511
label510:
	li $t0, 1
	sw $t0, -7016($fp)
label511:
label512:
	lw $t0, -1120($fp)
	sw $t0, -7044($fp)
	li $t0, 29131
	sw $t0, -7048($fp)
	lw $t0, -7044($fp)
	lw $t1, -7048($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7052($fp)
	lw $t0, -1168($fp)
	sw $t0, -7056($fp)
	lw $t0, -1156($fp)
	sw $t0, -7060($fp)
	li $t0, 0
	lw $t1, -7060($fp)
	sub $t0, $t0, $t1
	sw $t0, -7064($fp)
	lw $t0, -1288($fp)
	sw $t0, -7068($fp)
	li $t0, 0
	sw $t0, -7072($fp)
	lw $t0, -1132($fp)
	sw $t0, -7076($fp)
	lw $t1, -7076($fp)
	li $t2, 0
	bne $t1, $t2, label516
	j label515
label515:
	li $t0, 1
	sw $t0, -7072($fp)
label516:
	lw $t0, -1144($fp)
	sw $t0, -7080($fp)
	lw $t0, -7072($fp)
	lw $t1, -7080($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7084($fp)
	li $t0, 0
	sw $t0, -7088($fp)
	li $t0, 0
	sw $t0, -7092($fp)
	li $t0, 23276
	sw $t0, -7096($fp)
	lw $t0, -2236($fp)
	sw $t0, -7100($fp)
	lw $t1, -7096($fp)
	lw $t2, -7100($fp)
	bge $t1, $t2, label519
	j label520
label519:
	li $t0, 1
	sw $t0, -7092($fp)
label520:
	li $t0, 60421
	sw $t0, -7104($fp)
	lw $t1, -7092($fp)
	lw $t2, -7104($fp)
	bne $t1, $t2, label517
	j label518
label517:
	li $t0, 1
	sw $t0, -7088($fp)
label518:
	addi $sp, $sp, -4
	lw $t0, -7056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7088($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7108($fp)
	addi $sp, $sp, 24
	lw $t0, -7052($fp)
	lw $t1, -7108($fp)
	sub $t0, $t0, $t1
	sw $t0, -7112($fp)
	lw $t1, -7112($fp)
	li $t2, 0
	bne $t1, $t2, label513
	j label514
label513:
label521:
	lw $t0, -256($fp)
	sw $t0, -7116($fp)
	jal f6
	sw $v0, -7120($fp)
	addi $sp, $sp, 4
	lw $t0, -1180($fp)
	sw $t0, -7124($fp)
	lw $t0, -7120($fp)
	lw $t1, -7124($fp)
	mul $t0, $t0, $t1
	sw $t0, -7128($fp)
	li $t0, 0
	sw $t0, -7132($fp)
	lw $t0, -2188($fp)
	sw $t0, -7136($fp)
	li $t0, 28587
	sw $t0, -7140($fp)
	lw $t1, -7136($fp)
	lw $t2, -7140($fp)
	bne $t1, $t2, label524
	j label526
label526:
	lw $t0, 16($fp)
	sw $t0, -7144($fp)
	lw $t1, -7144($fp)
	li $t2, 0
	bne $t1, $t2, label524
	j label525
label524:
	li $t0, 1
	sw $t0, -7132($fp)
label525:
	li $t0, 0
	sw $t0, -7148($fp)
	lw $t0, -496($fp)
	sw $t0, -7152($fp)
	lw $t0, -712($fp)
	sw $t0, -7156($fp)
	lw $t1, -7152($fp)
	lw $t2, -7156($fp)
	ble $t1, $t2, label529
	j label528
label529:
	li $t0, 58485
	sw $t0, -7160($fp)
	lw $t1, -7160($fp)
	li $t2, 0
	bne $t1, $t2, label527
	j label528
label527:
	li $t0, 1
	sw $t0, -7148($fp)
label528:
	li $t0, 0
	sw $t0, -7164($fp)
	li $t0, 35168
	sw $t0, -7168($fp)
	lw $t1, -7168($fp)
	li $t2, 0
	bne $t1, $t2, label531
	j label530
label530:
	li $t0, 1
	sw $t0, -7164($fp)
label531:
	li $t0, 0
	sw $t0, -7172($fp)
	li $t0, 30460
	sw $t0, -7176($fp)
	li $t0, 29378
	sw $t0, -7180($fp)
	lw $t0, -7176($fp)
	lw $t1, -7180($fp)
	add $t0, $t0, $t1
	sw $t0, -7184($fp)
	li $t0, 65361
	sw $t0, -7188($fp)
	lw $t1, -7184($fp)
	lw $t2, -7188($fp)
	ble $t1, $t2, label532
	j label533
label532:
	li $t0, 1
	sw $t0, -7172($fp)
label533:
	li $t0, 0
	sw $t0, -7192($fp)
	addi $t0, $fp, -76
	sw $t0, -7196($fp)
	lw $t0, -532($fp)
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
	lw $t1, -7212($fp)
	li $t2, 0
	bne $t1, $t2, label535
	j label534
label534:
	li $t0, 1
	sw $t0, -7192($fp)
label535:
	addi $sp, $sp, -4
	lw $t0, -7132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7192($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7216($fp)
	addi $sp, $sp, 24
	lw $t0, -7128($fp)
	lw $t1, -7216($fp)
	sub $t0, $t0, $t1
	sw $t0, -7220($fp)
	lw $t1, -7116($fp)
	lw $t2, -7220($fp)
	beq $t1, $t2, label522
	j label523
label522:
	li $t0, 37520
	sw $t0, -7256($fp)
	addi $t0, $fp, -7252
	sw $t0, -7260($fp)
	li $t0, 0
	sw $t0, -7264($fp)
	lw $t0, -7264($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7268($fp)
	lw $t0, -7260($fp)
	lw $t1, -7268($fp)
	add $t0, $t0, $t1
	sw $t0, -7272($fp)
	lw $t0, -7256($fp)
	lw $t1, -7272($fp)
	sw $t0, 0($t1)
	lw $t0, -7272($fp)
	lw $t1, 0($t0)
	sw $t1, -7276($fp)
	li $t0, 43632
	sw $t0, -7280($fp)
	addi $t0, $fp, -7252
	sw $t0, -7284($fp)
	li $t0, 1
	sw $t0, -7288($fp)
	lw $t0, -7288($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7292($fp)
	lw $t0, -7284($fp)
	lw $t1, -7292($fp)
	add $t0, $t0, $t1
	sw $t0, -7296($fp)
	lw $t0, -7280($fp)
	lw $t1, -7296($fp)
	sw $t0, 0($t1)
	lw $t0, -7296($fp)
	lw $t1, 0($t0)
	sw $t1, -7300($fp)
	li $t0, 661
	sw $t0, -7304($fp)
	addi $t0, $fp, -7252
	sw $t0, -7308($fp)
	li $t0, 2
	sw $t0, -7312($fp)
	lw $t0, -7312($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7316($fp)
	lw $t0, -7308($fp)
	lw $t1, -7316($fp)
	add $t0, $t0, $t1
	sw $t0, -7320($fp)
	lw $t0, -7304($fp)
	lw $t1, -7320($fp)
	sw $t0, 0($t1)
	lw $t0, -7320($fp)
	lw $t1, 0($t0)
	sw $t1, -7324($fp)
	li $t0, 41578
	sw $t0, -7328($fp)
	addi $t0, $fp, -7252
	sw $t0, -7332($fp)
	li $t0, 3
	sw $t0, -7336($fp)
	lw $t0, -7336($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7340($fp)
	lw $t0, -7332($fp)
	lw $t1, -7340($fp)
	add $t0, $t0, $t1
	sw $t0, -7344($fp)
	lw $t0, -7328($fp)
	lw $t1, -7344($fp)
	sw $t0, 0($t1)
	lw $t0, -7344($fp)
	lw $t1, 0($t0)
	sw $t1, -7348($fp)
	li $t0, 40737
	sw $t0, -7352($fp)
	addi $t0, $fp, -7252
	sw $t0, -7356($fp)
	li $t0, 4
	sw $t0, -7360($fp)
	lw $t0, -7360($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7364($fp)
	lw $t0, -7356($fp)
	lw $t1, -7364($fp)
	add $t0, $t0, $t1
	sw $t0, -7368($fp)
	lw $t0, -7352($fp)
	lw $t1, -7368($fp)
	sw $t0, 0($t1)
	lw $t0, -7368($fp)
	lw $t1, 0($t0)
	sw $t1, -7372($fp)
	li $t0, 53173
	sw $t0, -7376($fp)
	addi $t0, $fp, -7252
	sw $t0, -7380($fp)
	li $t0, 5
	sw $t0, -7384($fp)
	lw $t0, -7384($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7388($fp)
	lw $t0, -7380($fp)
	lw $t1, -7388($fp)
	add $t0, $t0, $t1
	sw $t0, -7392($fp)
	lw $t0, -7376($fp)
	lw $t1, -7392($fp)
	sw $t0, 0($t1)
	lw $t0, -7392($fp)
	lw $t1, 0($t0)
	sw $t1, -7396($fp)
	li $t0, 6915
	sw $t0, -7400($fp)
	addi $t0, $fp, -7252
	sw $t0, -7404($fp)
	li $t0, 6
	sw $t0, -7408($fp)
	lw $t0, -7408($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7412($fp)
	lw $t0, -7404($fp)
	lw $t1, -7412($fp)
	add $t0, $t0, $t1
	sw $t0, -7416($fp)
	lw $t0, -7400($fp)
	lw $t1, -7416($fp)
	sw $t0, 0($t1)
	lw $t0, -7416($fp)
	lw $t1, 0($t0)
	sw $t1, -7420($fp)
	li $t0, 58051
	sw $t0, -7424($fp)
	addi $t0, $fp, -7252
	sw $t0, -7428($fp)
	li $t0, 7
	sw $t0, -7432($fp)
	lw $t0, -7432($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7436($fp)
	lw $t0, -7428($fp)
	lw $t1, -7436($fp)
	add $t0, $t0, $t1
	sw $t0, -7440($fp)
	lw $t0, -7424($fp)
	lw $t1, -7440($fp)
	sw $t0, 0($t1)
	lw $t0, -7440($fp)
	lw $t1, 0($t0)
	sw $t1, -7444($fp)
	li $t0, 47364
	sw $t0, -7448($fp)
	lw $t0, -7448($fp)
	sw $t0, -7452($fp)
	lw $t0, -7452($fp)
	sw $t0, -7456($fp)
	li $t0, 46813
	sw $t0, -7460($fp)
	lw $t0, -7460($fp)
	sw $t0, -7464($fp)
	lw $t0, -7464($fp)
	sw $t0, -7468($fp)
	li $t0, 10780
	sw $t0, -7472($fp)
	lw $t0, -7472($fp)
	sw $t0, -7476($fp)
	lw $t0, -7476($fp)
	sw $t0, -7480($fp)
	li $t0, 51931
	sw $t0, -7484($fp)
	lw $t0, -7484($fp)
	sw $t0, -7488($fp)
	lw $t0, -7488($fp)
	sw $t0, -7492($fp)
	li $t0, 21379
	sw $t0, -7496($fp)
	lw $t0, -7496($fp)
	sw $t0, -7500($fp)
	lw $t0, -7500($fp)
	sw $t0, -7504($fp)
	li $t0, 61746
	sw $t0, -7508($fp)
	lw $t0, -7508($fp)
	sw $t0, -7512($fp)
	lw $t0, -7512($fp)
	sw $t0, -7516($fp)
	li $t0, 16649
	sw $t0, -7520($fp)
	lw $t0, -7520($fp)
	sw $t0, -7524($fp)
	lw $t0, -7524($fp)
	sw $t0, -7528($fp)
	li $t0, 34196
	sw $t0, -7532($fp)
	lw $t0, -7532($fp)
	sw $t0, -7536($fp)
	lw $t0, -7536($fp)
	sw $t0, -7540($fp)
	li $t0, 12616
	sw $t0, -7544($fp)
	lw $t0, -7544($fp)
	sw $t0, -7548($fp)
	lw $t0, -7548($fp)
	sw $t0, -7552($fp)
	addi $t0, $fp, -7252
	sw $t0, -7556($fp)
	li $t0, 0
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
	addi $t0, $fp, -7252
	sw $t0, -7576($fp)
	li $t0, 1
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
	addi $t0, $fp, -7252
	sw $t0, -7596($fp)
	li $t0, 2
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
	addi $t0, $fp, -7252
	sw $t0, -7616($fp)
	li $t0, 3
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
	addi $t0, $fp, -7252
	sw $t0, -7636($fp)
	li $t0, 4
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
	addi $t0, $fp, -7252
	sw $t0, -7656($fp)
	li $t0, 5
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
	addi $t0, $fp, -7252
	sw $t0, -7676($fp)
	li $t0, 6
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
	addi $t0, $fp, -7252
	sw $t0, -7696($fp)
	li $t0, 7
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
	lw $t0, -7452($fp)
	sw $t0, -7716($fp)
	lw $t0, -7716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7464($fp)
	sw $t0, -7720($fp)
	lw $t0, -7720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7476($fp)
	sw $t0, -7724($fp)
	lw $t0, -7724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7488($fp)
	sw $t0, -7728($fp)
	lw $t0, -7728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7500($fp)
	sw $t0, -7732($fp)
	lw $t0, -7732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7512($fp)
	sw $t0, -7736($fp)
	lw $t0, -7736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7524($fp)
	sw $t0, -7740($fp)
	lw $t0, -7740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7536($fp)
	sw $t0, -7744($fp)
	lw $t0, -7744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7548($fp)
	sw $t0, -7748($fp)
	lw $t0, -7748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7252
	sw $t0, -7752($fp)
	li $t0, 0
	sw $t0, -7756($fp)
	li $t0, 59251
	sw $t0, -7760($fp)
	li $t0, 0
	lw $t1, -7760($fp)
	sub $t0, $t0, $t1
	sw $t0, -7764($fp)
	li $t0, 63653
	sw $t0, -7768($fp)
	lw $t1, -7764($fp)
	lw $t2, -7768($fp)
	bgt $t1, $t2, label536
	j label537
label536:
	li $t0, 1
	sw $t0, -7756($fp)
label537:
	li $t0, 4
	lw $t1, -7756($fp)
	mul $t0, $t0, $t1
	sw $t0, -7772($fp)
	lw $t0, -7772($fp)
	lw $t1, -7752($fp)
	add $t0, $t0, $t1
	sw $t0, -7776($fp)
	lw $t0, -7776($fp)
	lw $t1, 0($t0)
	sw $t1, -7780($fp)
	li $t0, 56956
	sw $t0, -7784($fp)
	lw $t0, -7780($fp)
	lw $t1, -7784($fp)
	add $t0, $t0, $t1
	sw $t0, -7788($fp)
	lw $ra, -4($fp)
	lw $v0, -7788($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label538:
	li $t0, 0
	sw $t0, -7792($fp)
	addi $t0, $fp, -96
	sw $t0, -7796($fp)
	li $t0, 0
	sw $t0, -7800($fp)
	li $t0, 21797
	sw $t0, -7804($fp)
	lw $t0, -1288($fp)
	sw $t0, -7808($fp)
	lw $t1, -7804($fp)
	lw $t2, -7808($fp)
	bne $t1, $t2, label543
	j label544
label543:
	li $t0, 1
	sw $t0, -7800($fp)
label544:
	li $t0, 4
	lw $t1, -7800($fp)
	mul $t0, $t0, $t1
	sw $t0, -7812($fp)
	lw $t0, -7812($fp)
	lw $t1, -7796($fp)
	add $t0, $t0, $t1
	sw $t0, -7816($fp)
	lw $t0, -7816($fp)
	lw $t1, 0($t0)
	sw $t1, -7820($fp)
	lw $t1, -7820($fp)
	li $t2, 0
	bne $t1, $t2, label542
	j label541
label541:
	li $t0, 1
	sw $t0, -7792($fp)
label542:
	li $t0, 0
	lw $t1, -7792($fp)
	sub $t0, $t0, $t1
	sw $t0, -7824($fp)
	lw $t1, -7824($fp)
	li $t2, 0
	bne $t1, $t2, label539
	j label540
label539:
	li $t0, 21671
	sw $t0, -7828($fp)
	lw $t0, -7828($fp)
	sw $t0, -2332($fp)
	lw $t0, -2332($fp)
	sw $t0, -7832($fp)
	li $t0, 1865
	sw $t0, -7836($fp)
	li $t0, 0
	lw $t1, -7836($fp)
	sub $t0, $t0, $t1
	sw $t0, -7840($fp)
	lw $t0, -7488($fp)
	sw $t0, -7844($fp)
	lw $t0, -7840($fp)
	lw $t1, -7844($fp)
	add $t0, $t0, $t1
	sw $t0, -7848($fp)
	li $t0, 0
	sw $t0, -7852($fp)
	lw $t0, -1120($fp)
	sw $t0, -7856($fp)
	lw $t1, -7856($fp)
	li $t2, 0
	bne $t1, $t2, label545
	j label547
label547:
	lw $t0, -2224($fp)
	sw $t0, -7860($fp)
	lw $t1, -7860($fp)
	li $t2, 0
	bne $t1, $t2, label545
	j label546
label545:
	li $t0, 1
	sw $t0, -7852($fp)
label546:
	li $t0, 0
	sw $t0, -7864($fp)
	li $t0, 8916
	sw $t0, -7868($fp)
	lw $t1, -7868($fp)
	li $t2, 0
	bne $t1, $t2, label548
	j label551
label551:
	li $t0, 58619
	sw $t0, -7872($fp)
	lw $t1, -7872($fp)
	li $t2, 0
	bne $t1, $t2, label548
	j label550
label550:
	li $t0, 20643
	sw $t0, -7876($fp)
	lw $t1, -7876($fp)
	li $t2, 0
	bne $t1, $t2, label548
	j label549
label548:
	li $t0, 1
	sw $t0, -7864($fp)
label549:
	li $t0, 58794
	sw $t0, -7880($fp)
	li $t0, 1
	sw $t0, -7884($fp)
	lw $t0, -7880($fp)
	lw $t1, -7884($fp)
	mul $t0, $t0, $t1
	sw $t0, -7888($fp)
	lw $t0, -736($fp)
	sw $t0, -7892($fp)
	lw $t0, -7888($fp)
	lw $t1, -7892($fp)
	sub $t0, $t0, $t1
	sw $t0, -7896($fp)
	addi $sp, $sp, -4
	lw $t0, -7832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7896($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7900($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -7904($fp)
	li $t0, 45073
	sw $t0, -7908($fp)
	lw $t0, -7476($fp)
	sw $t0, -7912($fp)
	lw $t0, -7908($fp)
	lw $t1, -7912($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7916($fp)
	lw $t1, -7916($fp)
	li $t2, 0
	bne $t1, $t2, label554
	j label553
label554:
	lw $t0, -724($fp)
	sw $t0, -7920($fp)
	lw $t1, -7920($fp)
	li $t2, 0
	bne $t1, $t2, label552
	j label553
label552:
	li $t0, 1
	sw $t0, -7904($fp)
label553:
	li $t0, 0
	sw $t0, -7924($fp)
	lw $t0, -1012($fp)
	sw $t0, -7928($fp)
	lw $t1, -7928($fp)
	li $t2, 0
	bne $t1, $t2, label556
	j label555
label555:
	li $t0, 1
	sw $t0, -7924($fp)
label556:
	lw $t0, -7464($fp)
	sw $t0, -7932($fp)
	lw $t0, -7452($fp)
	sw $t0, -7936($fp)
	li $t0, 63909
	sw $t0, -7940($fp)
	lw $t0, -7936($fp)
	lw $t1, -7940($fp)
	sub $t0, $t0, $t1
	sw $t0, -7944($fp)
	li $t0, 20551
	sw $t0, -7948($fp)
	lw $t0, -7944($fp)
	lw $t1, -7948($fp)
	sub $t0, $t0, $t1
	sw $t0, -7952($fp)
	addi $sp, $sp, -4
	lw $t0, -7900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7952($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7956($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -7956($fp)
	sub $t0, $t0, $t1
	sw $t0, -7960($fp)
	lw $ra, -4($fp)
	lw $v0, -7960($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label538
label540:
	li $t0, 58163
	sw $t0, -7964($fp)
	li $t0, 0
	lw $t1, -7964($fp)
	sub $t0, $t0, $t1
	sw $t0, -7968($fp)
	lw $t1, -7968($fp)
	li $t2, 0
	bne $t1, $t2, label560
	j label557
label560:
	lw $t0, -1768($fp)
	sw $t0, -7972($fp)
	lw $t0, -1060($fp)
	sw $t0, -7976($fp)
	lw $t0, -7972($fp)
	lw $t1, -7976($fp)
	mul $t0, $t0, $t1
	sw $t0, -7980($fp)
	lw $t1, -7980($fp)
	li $t2, 0
	bne $t1, $t2, label561
	j label558
label561:
	addi $t0, $fp, -176
	sw $t0, -7984($fp)
	li $t0, 0
	sw $t0, -7988($fp)
	li $t0, 4
	lw $t1, -7988($fp)
	mul $t0, $t0, $t1
	sw $t0, -7992($fp)
	lw $t0, -7992($fp)
	lw $t1, -7984($fp)
	add $t0, $t0, $t1
	sw $t0, -7996($fp)
	lw $t0, -7996($fp)
	lw $t1, 0($t0)
	sw $t1, -8000($fp)
	lw $t1, -8000($fp)
	li $t2, 0
	bne $t1, $t2, label557
	j label558
label557:
	addi $t0, $fp, -228
	sw $t0, -8004($fp)
	jal f6
	sw $v0, -8008($fp)
	addi $sp, $sp, 4
	li $t0, 4
	lw $t1, -8008($fp)
	mul $t0, $t0, $t1
	sw $t0, -8012($fp)
	lw $t0, -8012($fp)
	lw $t1, -8004($fp)
	add $t0, $t0, $t1
	sw $t0, -8016($fp)
	lw $t0, -8016($fp)
	lw $t1, 0($t0)
	sw $t1, -8020($fp)
	lw $t0, -640($fp)
	sw $t0, -8024($fp)
	lw $t0, -8020($fp)
	lw $t1, -8024($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8028($fp)
	lw $t1, -8028($fp)
	li $t2, 0
	bne $t1, $t2, label562
	j label563
label562:
	lw $t0, -2260($fp)
	sw $t0, -8032($fp)
	lw $t0, -8032($fp)
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	sw $t0, -8036($fp)
	li $t0, 0
	sw $t0, -8040($fp)
	lw $t0, -964($fp)
	sw $t0, -8044($fp)
	lw $t1, -8044($fp)
	li $t2, 0
	bne $t1, $t2, label569
	j label570
label569:
	li $t0, 1
	sw $t0, -8040($fp)
label570:
	li $t0, 0
	sw $t0, -8048($fp)
	li $t0, 0
	sw $t0, -8052($fp)
	li $t0, 41121
	sw $t0, -8056($fp)
	li $t0, 0
	lw $t1, -8056($fp)
	sub $t0, $t0, $t1
	sw $t0, -8060($fp)
	li $t0, 13214
	sw $t0, -8064($fp)
	lw $t1, -8060($fp)
	lw $t2, -8064($fp)
	ble $t1, $t2, label573
	j label574
label573:
	li $t0, 1
	sw $t0, -8052($fp)
label574:
	li $t0, 0
	sw $t0, -8068($fp)
	lw $t0, -1768($fp)
	sw $t0, -8072($fp)
	li $t0, 9969
	sw $t0, -8076($fp)
	lw $t1, -8072($fp)
	lw $t2, -8076($fp)
	beq $t1, $t2, label577
	j label576
label577:
	lw $t0, -7524($fp)
	sw $t0, -8080($fp)
	lw $t1, -8080($fp)
	li $t2, 0
	bne $t1, $t2, label575
	j label576
label575:
	li $t0, 1
	sw $t0, -8068($fp)
label576:
	li $t0, 0
	sw $t0, -8084($fp)
	li $t0, 20699
	sw $t0, -8088($fp)
	lw $t1, -8088($fp)
	li $t2, 0
	bne $t1, $t2, label580
	j label578
label580:
	lw $t0, -1888($fp)
	sw $t0, -8092($fp)
	lw $t1, -8092($fp)
	li $t2, 0
	bne $t1, $t2, label578
	j label579
label578:
	li $t0, 1
	sw $t0, -8084($fp)
label579:
	li $t0, 0
	sw $t0, -8096($fp)
	li $t0, 34206
	sw $t0, -8100($fp)
	lw $t0, -952($fp)
	sw $t0, -8104($fp)
	lw $t0, -8100($fp)
	lw $t1, -8104($fp)
	add $t0, $t0, $t1
	sw $t0, -8108($fp)
	lw $t1, -8108($fp)
	li $t2, 0
	bne $t1, $t2, label583
	j label582
label583:
	lw $t0, -1000($fp)
	sw $t0, -8112($fp)
	lw $t1, -8112($fp)
	li $t2, 0
	bne $t1, $t2, label581
	j label582
label581:
	li $t0, 1
	sw $t0, -8096($fp)
label582:
	li $t0, 0
	sw $t0, -8116($fp)
	lw $t0, -7500($fp)
	sw $t0, -8120($fp)
	lw $t0, -7512($fp)
	sw $t0, -8124($fp)
	lw $t1, -8120($fp)
	lw $t2, -8124($fp)
	bgt $t1, $t2, label584
	j label586
label586:
	lw $t0, -2488($fp)
	sw $t0, -8128($fp)
	lw $t1, -8128($fp)
	li $t2, 0
	bne $t1, $t2, label584
	j label585
label584:
	li $t0, 1
	sw $t0, -8116($fp)
label585:
	addi $sp, $sp, -4
	lw $t0, -8052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8116($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -8132($fp)
	addi $sp, $sp, 24
	lw $t0, -2476($fp)
	sw $t0, -8136($fp)
	lw $t1, -8132($fp)
	lw $t2, -8136($fp)
	bne $t1, $t2, label571
	j label572
label571:
	li $t0, 1
	sw $t0, -8048($fp)
label572:
	addi $sp, $sp, -4
	lw $t0, -8036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8048($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8140($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -8144($fp)
	li $t0, 57333
	sw $t0, -8148($fp)
	lw $t1, -8148($fp)
	li $t2, 0
	bne $t1, $t2, label588
	j label587
label587:
	li $t0, 1
	sw $t0, -8144($fp)
label588:
	lw $t0, -2236($fp)
	sw $t0, -8152($fp)
	lw $t0, -8144($fp)
	lw $t1, -8152($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8156($fp)
	lw $t1, -8140($fp)
	lw $t2, -8156($fp)
	ble $t1, $t2, label565
	j label568
label568:
	li $t0, 0
	sw $t0, -8160($fp)
	li $t0, 0
	sw $t0, -8164($fp)
	li $t0, 22399
	sw $t0, -8168($fp)
	li $t0, 23995
	sw $t0, -8172($fp)
	lw $t1, -8168($fp)
	lw $t2, -8172($fp)
	bgt $t1, $t2, label591
	j label592
label591:
	li $t0, 1
	sw $t0, -8164($fp)
label592:
	lw $t0, -2464($fp)
	sw $t0, -8176($fp)
	lw $t1, -8164($fp)
	lw $t2, -8176($fp)
	ble $t1, $t2, label589
	j label590
label589:
	li $t0, 1
	sw $t0, -8160($fp)
label590:
	li $t0, 0
	sw $t0, -8180($fp)
	li $t0, 43728
	sw $t0, -8184($fp)
	li $t0, 43778
	sw $t0, -8188($fp)
	lw $t1, -8184($fp)
	lw $t2, -8188($fp)
	ble $t1, $t2, label593
	j label594
label593:
	li $t0, 1
	sw $t0, -8180($fp)
label594:
	lw $t1, -8160($fp)
	lw $t2, -8180($fp)
	bne $t1, $t2, label565
	j label566
label565:
	li $t0, 0
	sw $t0, -8192($fp)
	li $t0, 0
	sw $t0, -8196($fp)
	jal f6
	sw $v0, -8200($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -8200($fp)
	sub $t0, $t0, $t1
	sw $t0, -8204($fp)
	lw $t1, -8204($fp)
	li $t2, 0
	bne $t1, $t2, label598
	j label597
label597:
	li $t0, 1
	sw $t0, -8196($fp)
label598:
	addi $t0, $fp, -76
	sw $t0, -8208($fp)
	lw $t0, -508($fp)
	sw $t0, -8212($fp)
	li $t0, 4
	lw $t1, -8212($fp)
	mul $t0, $t0, $t1
	sw $t0, -8216($fp)
	lw $t0, -8216($fp)
	lw $t1, -8208($fp)
	add $t0, $t0, $t1
	sw $t0, -8220($fp)
	lw $t0, -8220($fp)
	lw $t1, 0($t0)
	sw $t1, -8224($fp)
	li $t0, 0
	lw $t1, -8224($fp)
	sub $t0, $t0, $t1
	sw $t0, -8228($fp)
	lw $t0, -8196($fp)
	lw $t1, -8228($fp)
	add $t0, $t0, $t1
	sw $t0, -8232($fp)
	jal f6
	sw $v0, -8236($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -8236($fp)
	sub $t0, $t0, $t1
	sw $t0, -8240($fp)
	li $t0, 0
	lw $t1, -8240($fp)
	sub $t0, $t0, $t1
	sw $t0, -8244($fp)
	lw $t1, -8232($fp)
	lw $t2, -8244($fp)
	bne $t1, $t2, label595
	j label596
label595:
	li $t0, 1
	sw $t0, -8192($fp)
label596:
	j label567
label566:
	li $t0, 0
	sw $t0, -8248($fp)
	lw $t0, -2188($fp)
	sw $t0, -8252($fp)
	lw $t1, -8252($fp)
	li $t2, 0
	bne $t1, $t2, label601
	j label600
label601:
	li $t0, 20205
	sw $t0, -8256($fp)
	li $t0, 0
	sw $t0, -8260($fp)
	li $t0, 60377
	sw $t0, -8264($fp)
	lw $t1, -8264($fp)
	li $t2, 0
	bne $t1, $t2, label603
	j label602
label602:
	li $t0, 1
	sw $t0, -8260($fp)
label603:
	lw $t0, -8256($fp)
	lw $t1, -8260($fp)
	add $t0, $t0, $t1
	sw $t0, -8268($fp)
	lw $t1, -8268($fp)
	li $t2, 0
	bne $t1, $t2, label599
	j label600
label599:
	li $t0, 1
	sw $t0, -8248($fp)
label600:
label567:
	j label564
label563:
label604:
	addi $t0, $fp, -200
	sw $t0, -8272($fp)
	li $t0, 12438
	sw $t0, -8276($fp)
	li $t0, 32821
	sw $t0, -8280($fp)
	lw $t0, -8276($fp)
	lw $t1, -8280($fp)
	sub $t0, $t0, $t1
	sw $t0, -8284($fp)
	lw $t0, -484($fp)
	sw $t0, -8288($fp)
	lw $t0, -8284($fp)
	lw $t1, -8288($fp)
	add $t0, $t0, $t1
	sw $t0, -8292($fp)
	li $t0, 4
	lw $t1, -8292($fp)
	mul $t0, $t0, $t1
	sw $t0, -8296($fp)
	lw $t0, -8296($fp)
	lw $t1, -8272($fp)
	add $t0, $t0, $t1
	sw $t0, -8300($fp)
	lw $t0, -8300($fp)
	lw $t1, 0($t0)
	sw $t1, -8304($fp)
	li $t0, 54092
	sw $t0, -8308($fp)
	lw $t0, -8304($fp)
	lw $t1, -8308($fp)
	mul $t0, $t0, $t1
	sw $t0, -8312($fp)
	lw $t1, -8312($fp)
	li $t2, 0
	bne $t1, $t2, label605
	j label606
label605:
	li $t0, 0
	sw $t0, -8316($fp)
	addi $t0, $fp, -76
	sw $t0, -8320($fp)
	lw $t0, -1744($fp)
	sw $t0, -8324($fp)
	lw $t0, -8324($fp)
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	sw $t0, -8328($fp)
	lw $t0, -7536($fp)
	sw $t0, -8332($fp)
	addi $t0, $fp, -216
	sw $t0, -8336($fp)
	lw $t0, -1828($fp)
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
	addi $sp, $sp, -4
	lw $t0, -8328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8352($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8356($fp)
	addi $sp, $sp, 16
	li $t0, 4
	lw $t1, -8356($fp)
	mul $t0, $t0, $t1
	sw $t0, -8360($fp)
	lw $t0, -8360($fp)
	lw $t1, -8320($fp)
	add $t0, $t0, $t1
	sw $t0, -8364($fp)
	lw $t0, -8364($fp)
	lw $t1, 0($t0)
	sw $t1, -8368($fp)
	li $t0, 10556
	sw $t0, -8372($fp)
	li $t0, 0
	lw $t1, -8372($fp)
	sub $t0, $t0, $t1
	sw $t0, -8376($fp)
	li $t0, 0
	lw $t1, -8376($fp)
	sub $t0, $t0, $t1
	sw $t0, -8380($fp)
	lw $t0, -8368($fp)
	lw $t1, -8380($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8384($fp)
	addi $t0, $fp, -228
	sw $t0, -8388($fp)
	li $t0, 2
	sw $t0, -8392($fp)
	li $t0, 4
	lw $t1, -8392($fp)
	mul $t0, $t0, $t1
	sw $t0, -8396($fp)
	lw $t0, -8396($fp)
	lw $t1, -8388($fp)
	add $t0, $t0, $t1
	sw $t0, -8400($fp)
	lw $t0, -8400($fp)
	lw $t1, 0($t0)
	sw $t1, -8404($fp)
	lw $t1, -8384($fp)
	lw $t2, -8404($fp)
	blt $t1, $t2, label607
	j label608
label607:
	li $t0, 1
	sw $t0, -8316($fp)
label608:
	j label604
label606:
label564:
	j label559
label558:
	addi $t0, $fp, -228
	sw $t0, -8408($fp)
	li $t0, 0
	sw $t0, -8412($fp)
	li $t0, 0
	sw $t0, -8416($fp)
	li $t0, 2188
	sw $t0, -8420($fp)
	lw $t1, -8420($fp)
	li $t2, 0
	bne $t1, $t2, label618
	j label617
label618:
	lw $t0, -532($fp)
	sw $t0, -8424($fp)
	lw $t1, -8424($fp)
	li $t2, 0
	bne $t1, $t2, label616
	j label617
label616:
	li $t0, 1
	sw $t0, -8416($fp)
label617:
	li $t0, 0
	sw $t0, -8428($fp)
	addi $t0, $fp, -40
	sw $t0, -8432($fp)
	lw $t0, -2332($fp)
	sw $t0, -8436($fp)
	li $t0, 4
	lw $t1, -8436($fp)
	mul $t0, $t0, $t1
	sw $t0, -8440($fp)
	lw $t0, -8440($fp)
	lw $t1, -8432($fp)
	add $t0, $t0, $t1
	sw $t0, -8444($fp)
	lw $t0, -8444($fp)
	lw $t1, 0($t0)
	sw $t1, -8448($fp)
	li $t0, 55427
	sw $t0, -8452($fp)
	lw $t1, -8448($fp)
	lw $t2, -8452($fp)
	beq $t1, $t2, label619
	j label620
label619:
	li $t0, 1
	sw $t0, -8428($fp)
label620:
	li $t0, 0
	sw $t0, -8456($fp)
	lw $t0, -496($fp)
	sw $t0, -8460($fp)
	lw $t0, -1096($fp)
	sw $t0, -8464($fp)
	lw $t1, -8460($fp)
	lw $t2, -8464($fp)
	ble $t1, $t2, label621
	j label622
label621:
	li $t0, 1
	sw $t0, -8456($fp)
label622:
	li $t0, 0
	sw $t0, -8468($fp)
	jal f6
	sw $v0, -8472($fp)
	addi $sp, $sp, 4
	lw $t0, -2236($fp)
	sw $t0, -8476($fp)
	lw $t1, -8472($fp)
	lw $t2, -8476($fp)
	bne $t1, $t2, label623
	j label624
label623:
	li $t0, 1
	sw $t0, -8468($fp)
label624:
	li $t0, 0
	sw $t0, -8480($fp)
	lw $t0, -976($fp)
	sw $t0, -8484($fp)
	lw $t1, -8484($fp)
	li $t2, 0
	bne $t1, $t2, label628
	j label626
label628:
	lw $t0, -2320($fp)
	sw $t0, -8488($fp)
	lw $t1, -8488($fp)
	li $t2, 0
	bne $t1, $t2, label627
	j label626
label627:
	li $t0, 44792
	sw $t0, -8492($fp)
	lw $t1, -8492($fp)
	li $t2, 0
	bne $t1, $t2, label625
	j label626
label625:
	li $t0, 1
	sw $t0, -8480($fp)
label626:
	addi $sp, $sp, -4
	lw $t0, -8416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8480($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -8496($fp)
	addi $sp, $sp, 24
	lw $t1, -8496($fp)
	li $t2, 0
	bne $t1, $t2, label615
	j label613
label615:
	li $t0, 30267
	sw $t0, -8500($fp)
	lw $t1, -8500($fp)
	li $t2, 0
	bne $t1, $t2, label614
	j label613
label614:
	li $t0, 64343
	sw $t0, -8504($fp)
	li $t0, 60807
	sw $t0, -8508($fp)
	lw $t1, -8504($fp)
	lw $t2, -8508($fp)
	bgt $t1, $t2, label612
	j label613
label612:
	li $t0, 1
	sw $t0, -8412($fp)
label613:
	li $t0, 4
	lw $t1, -8412($fp)
	mul $t0, $t0, $t1
	sw $t0, -8512($fp)
	lw $t0, -8512($fp)
	lw $t1, -8408($fp)
	add $t0, $t0, $t1
	sw $t0, -8516($fp)
	lw $t0, -8516($fp)
	lw $t1, 0($t0)
	sw $t1, -8520($fp)
	lw $t1, -8520($fp)
	li $t2, 0
	bne $t1, $t2, label609
	j label610
label609:
	lw $t0, -7548($fp)
	sw $t0, -8524($fp)
	li $t0, 0
	sw $t0, -8528($fp)
	li $t0, 50910
	sw $t0, -8532($fp)
	lw $t1, -8532($fp)
	li $t2, 0
	bne $t1, $t2, label633
	j label632
label632:
	li $t0, 1
	sw $t0, -8528($fp)
label633:
	lw $t0, -8524($fp)
	lw $t1, -8528($fp)
	mul $t0, $t0, $t1
	sw $t0, -8536($fp)
	lw $t1, -8536($fp)
	li $t2, 0
	bne $t1, $t2, label629
	j label630
label629:
	li $t0, 0
	sw $t0, -8540($fp)
	addi $t0, $fp, -228
	sw $t0, -8544($fp)
	addi $t0, $fp, -236
	sw $t0, -8548($fp)
	li $t0, 0
	sw $t0, -8552($fp)
	li $t0, 4
	lw $t1, -8552($fp)
	mul $t0, $t0, $t1
	sw $t0, -8556($fp)
	lw $t0, -8556($fp)
	lw $t1, -8548($fp)
	add $t0, $t0, $t1
	sw $t0, -8560($fp)
	lw $t0, -8560($fp)
	lw $t1, 0($t0)
	sw $t1, -8564($fp)
	li $t0, 4
	lw $t1, -8564($fp)
	mul $t0, $t0, $t1
	sw $t0, -8568($fp)
	lw $t0, -8568($fp)
	lw $t1, -8544($fp)
	add $t0, $t0, $t1
	sw $t0, -8572($fp)
	lw $t0, -8572($fp)
	lw $t1, 0($t0)
	sw $t1, -8576($fp)
	lw $t0, -2512($fp)
	sw $t0, -8580($fp)
	lw $t0, -2464($fp)
	sw $t0, -8584($fp)
	lw $t0, -8580($fp)
	lw $t1, -8584($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8588($fp)
	li $t0, 14547
	sw $t0, -8592($fp)
	lw $t0, -8588($fp)
	lw $t1, -8592($fp)
	mul $t0, $t0, $t1
	sw $t0, -8596($fp)
	li $t0, 0
	sw $t0, -8600($fp)
	li $t0, 53329
	sw $t0, -8604($fp)
	lw $t1, -8604($fp)
	li $t2, 0
	bne $t1, $t2, label638
	j label637
label638:
	lw $t0, -2500($fp)
	sw $t0, -8608($fp)
	lw $t1, -8608($fp)
	li $t2, 0
	bne $t1, $t2, label636
	j label637
label636:
	li $t0, 1
	sw $t0, -8600($fp)
label637:
	li $t0, 0
	sw $t0, -8612($fp)
	lw $t0, -2488($fp)
	sw $t0, -8616($fp)
	li $t0, 49243
	sw $t0, -8620($fp)
	lw $t1, -8616($fp)
	lw $t2, -8620($fp)
	blt $t1, $t2, label639
	j label640
label639:
	li $t0, 1
	sw $t0, -8612($fp)
label640:
	li $t0, 1332
	sw $t0, -8624($fp)
	li $t0, 0
	lw $t1, -8624($fp)
	sub $t0, $t0, $t1
	sw $t0, -8628($fp)
	li $t0, 0
	sw $t0, -8632($fp)
	li $t0, 39274
	sw $t0, -8636($fp)
	lw $t0, 16($fp)
	sw $t0, -8640($fp)
	lw $t1, -8636($fp)
	lw $t2, -8640($fp)
	ble $t1, $t2, label641
	j label643
label643:
	li $t0, 12208
	sw $t0, -8644($fp)
	lw $t1, -8644($fp)
	li $t2, 0
	bne $t1, $t2, label641
	j label642
label641:
	li $t0, 1
	sw $t0, -8632($fp)
label642:
	addi $sp, $sp, -4
	lw $t0, -8596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8632($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -8648($fp)
	addi $sp, $sp, 24
	li $t0, 41040
	sw $t0, -8652($fp)
	lw $t0, -8648($fp)
	lw $t1, -8652($fp)
	mul $t0, $t0, $t1
	sw $t0, -8656($fp)
	li $t0, 46169
	sw $t0, -8660($fp)
	li $t0, 0
	sw $t0, -8664($fp)
	li $t0, 0
	sw $t0, -8668($fp)
	lw $t0, -2464($fp)
	sw $t0, -8672($fp)
	li $t0, 43538
	sw $t0, -8676($fp)
	lw $t1, -8672($fp)
	lw $t2, -8676($fp)
	bge $t1, $t2, label646
	j label647
label646:
	li $t0, 1
	sw $t0, -8668($fp)
label647:
	lw $t0, -2476($fp)
	sw $t0, -8680($fp)
	lw $t1, -8668($fp)
	lw $t2, -8680($fp)
	bne $t1, $t2, label644
	j label645
label644:
	li $t0, 1
	sw $t0, -8664($fp)
label645:
	addi $sp, $sp, -4
	lw $t0, -8656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8664($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8684($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -8684($fp)
	sub $t0, $t0, $t1
	sw $t0, -8688($fp)
	lw $t0, -8576($fp)
	lw $t1, -8688($fp)
	sub $t0, $t0, $t1
	sw $t0, -8692($fp)
	addi $t0, $fp, -44
	sw $t0, -8696($fp)
	li $t0, 0
	sw $t0, -8700($fp)
	li $t0, 10192
	sw $t0, -8704($fp)
	lw $t1, -8704($fp)
	li $t2, 0
	bne $t1, $t2, label648
	j label650
label650:
	lw $t0, -2524($fp)
	sw $t0, -8708($fp)
	lw $t1, -8708($fp)
	li $t2, 0
	bne $t1, $t2, label648
	j label649
label648:
	li $t0, 1
	sw $t0, -8700($fp)
label649:
	li $t0, 4
	lw $t1, -8700($fp)
	mul $t0, $t0, $t1
	sw $t0, -8712($fp)
	lw $t0, -8712($fp)
	lw $t1, -8696($fp)
	add $t0, $t0, $t1
	sw $t0, -8716($fp)
	lw $t0, -8716($fp)
	lw $t1, 0($t0)
	sw $t1, -8720($fp)
	lw $t1, -8692($fp)
	lw $t2, -8720($fp)
	beq $t1, $t2, label634
	j label635
label634:
	li $t0, 1
	sw $t0, -8540($fp)
label635:
	j label631
label630:
	li $t0, 0
	sw $t0, -8724($fp)
	lw $t0, -952($fp)
	sw $t0, -8728($fp)
	li $t0, 38542
	sw $t0, -8732($fp)
	lw $t0, -8728($fp)
	lw $t1, -8732($fp)
	sub $t0, $t0, $t1
	sw $t0, -8736($fp)
	li $t0, 19232
	sw $t0, -8740($fp)
	lw $t0, -8736($fp)
	lw $t1, -8740($fp)
	sub $t0, $t0, $t1
	sw $t0, -8744($fp)
	lw $t0, -2224($fp)
	sw $t0, -8748($fp)
	li $t0, 0
	lw $t1, -8748($fp)
	sub $t0, $t0, $t1
	sw $t0, -8752($fp)
	lw $t0, -8744($fp)
	lw $t1, -8752($fp)
	add $t0, $t0, $t1
	sw $t0, -8756($fp)
	lw $t0, -1096($fp)
	sw $t0, -8760($fp)
	lw $t0, -8756($fp)
	lw $t1, -8760($fp)
	sub $t0, $t0, $t1
	sw $t0, -8764($fp)
	li $t0, 0
	sw $t0, -8768($fp)
	lw $t0, -892($fp)
	sw $t0, -8772($fp)
	lw $t1, -8772($fp)
	li $t2, 0
	bne $t1, $t2, label654
	j label653
label653:
	li $t0, 1
	sw $t0, -8768($fp)
label654:
	li $t0, 873
	sw $t0, -8776($fp)
	lw $t0, -8768($fp)
	lw $t1, -8776($fp)
	mul $t0, $t0, $t1
	sw $t0, -8780($fp)
	li $t0, 58747
	sw $t0, -8784($fp)
	li $t0, 14074
	sw $t0, -8788($fp)
	lw $t0, -8784($fp)
	lw $t1, -8788($fp)
	sub $t0, $t0, $t1
	sw $t0, -8792($fp)
	li $t0, 0
	sw $t0, -8796($fp)
	lw $t0, -952($fp)
	sw $t0, -8800($fp)
	li $t0, 53971
	sw $t0, -8804($fp)
	lw $t0, -8800($fp)
	lw $t1, -8804($fp)
	add $t0, $t0, $t1
	sw $t0, -8808($fp)
	lw $t1, -8808($fp)
	li $t2, 0
	bne $t1, $t2, label657
	j label656
label657:
	lw $t0, -508($fp)
	sw $t0, -8812($fp)
	lw $t1, -8812($fp)
	li $t2, 0
	bne $t1, $t2, label655
	j label656
label655:
	li $t0, 1
	sw $t0, -8796($fp)
label656:
	addi $sp, $sp, -4
	lw $t0, -8780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8796($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8816($fp)
	addi $sp, $sp, 16
	lw $t1, -8764($fp)
	lw $t2, -8816($fp)
	blt $t1, $t2, label651
	j label652
label651:
	li $t0, 1
	sw $t0, -8724($fp)
label652:
label631:
	j label611
label610:
	li $t0, 0
	sw $t0, -8820($fp)
	li $t0, 0
	sw $t0, -8824($fp)
	lw $t0, -532($fp)
	sw $t0, -8828($fp)
	lw $t1, -8828($fp)
	li $t2, 0
	bne $t1, $t2, label663
	j label662
label663:
	li $t0, 12984
	sw $t0, -8832($fp)
	lw $t1, -8832($fp)
	li $t2, 0
	bne $t1, $t2, label661
	j label662
label661:
	li $t0, 1
	sw $t0, -8824($fp)
label662:
	li $t0, 0
	sw $t0, -8836($fp)
	lw $t0, -520($fp)
	sw $t0, -8840($fp)
	li $t0, 11429
	sw $t0, -8844($fp)
	lw $t0, -8840($fp)
	lw $t1, -8844($fp)
	sub $t0, $t0, $t1
	sw $t0, -8848($fp)
	lw $t1, -8848($fp)
	li $t2, 0
	bne $t1, $t2, label666
	j label665
label666:
	li $t0, 50273
	sw $t0, -8852($fp)
	lw $t1, -8852($fp)
	li $t2, 0
	bne $t1, $t2, label664
	j label665
label664:
	li $t0, 1
	sw $t0, -8836($fp)
label665:
	lw $t0, -508($fp)
	sw $t0, -8856($fp)
	lw $t0, -8856($fp)
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -8860($fp)
	li $t0, 2630
	sw $t0, -8864($fp)
	lw $t0, -1120($fp)
	sw $t0, -8868($fp)
	lw $t0, -8864($fp)
	lw $t1, -8868($fp)
	mul $t0, $t0, $t1
	sw $t0, -8872($fp)
	li $t0, 0
	lw $t1, -8872($fp)
	sub $t0, $t0, $t1
	sw $t0, -8876($fp)
	li $t0, 0
	sw $t0, -8880($fp)
	li $t0, 26032
	sw $t0, -8884($fp)
	lw $t1, -8884($fp)
	li $t2, 0
	bne $t1, $t2, label668
	j label667
label667:
	li $t0, 1
	sw $t0, -8880($fp)
label668:
	addi $sp, $sp, -4
	lw $t0, -8824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8880($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -8888($fp)
	addi $sp, $sp, 24
	lw $t0, -2464($fp)
	sw $t0, -8892($fp)
	li $t0, 20359
	sw $t0, -8896($fp)
	li $t0, 0
	lw $t1, -8896($fp)
	sub $t0, $t0, $t1
	sw $t0, -8900($fp)
	li $t0, 0
	lw $t1, -8900($fp)
	sub $t0, $t0, $t1
	sw $t0, -8904($fp)
	lw $t0, -8892($fp)
	lw $t1, -8904($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8908($fp)
	li $t0, 0
	lw $t1, -8908($fp)
	sub $t0, $t0, $t1
	sw $t0, -8912($fp)
	lw $t0, -8888($fp)
	lw $t1, -8912($fp)
	mul $t0, $t0, $t1
	sw $t0, -8916($fp)
	lw $t1, -8916($fp)
	li $t2, 0
	bne $t1, $t2, label660
	j label659
label660:
	lw $t0, -928($fp)
	sw $t0, -8920($fp)
	lw $t1, -8920($fp)
	li $t2, 0
	bne $t1, $t2, label658
	j label659
label658:
	li $t0, 1
	sw $t0, -8820($fp)
label659:
label611:
label559:
	li $t0, 0
	sw $t0, -8924($fp)
	addi $t0, $fp, -76
	sw $t0, -8928($fp)
	lw $t0, -544($fp)
	sw $t0, -8932($fp)
	li $t0, 4
	lw $t1, -8932($fp)
	mul $t0, $t0, $t1
	sw $t0, -8936($fp)
	lw $t0, -8936($fp)
	lw $t1, -8928($fp)
	add $t0, $t0, $t1
	sw $t0, -8940($fp)
	lw $t0, -8940($fp)
	lw $t1, 0($t0)
	sw $t1, -8944($fp)
	li $t0, 2876
	sw $t0, -8948($fp)
	lw $t0, -8944($fp)
	lw $t1, -8948($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8952($fp)
	lw $t0, -532($fp)
	sw $t0, -8956($fp)
	li $t0, 22547
	sw $t0, -8960($fp)
	lw $t0, -8956($fp)
	lw $t1, -8960($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8964($fp)
	lw $t0, -8952($fp)
	lw $t1, -8964($fp)
	sub $t0, $t0, $t1
	sw $t0, -8968($fp)
	lw $t1, -8968($fp)
	li $t2, 0
	bne $t1, $t2, label669
	j label671
label671:
	li $t0, 59796
	sw $t0, -8972($fp)
	lw $t1, -8972($fp)
	li $t2, 0
	bne $t1, $t2, label669
	j label670
label669:
	li $t0, 1
	sw $t0, -8924($fp)
label670:
	li $t0, 1682
	sw $t0, -8976($fp)
	li $t0, 0
	lw $t1, -8976($fp)
	sub $t0, $t0, $t1
	sw $t0, -8980($fp)
	li $t0, 0
	lw $t1, -8980($fp)
	sub $t0, $t0, $t1
	sw $t0, -8984($fp)
	lw $t0, -1120($fp)
	sw $t0, -8988($fp)
	lw $t0, -8984($fp)
	lw $t1, -8988($fp)
	sub $t0, $t0, $t1
	sw $t0, -8992($fp)
	lw $t0, -8992($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -8996($fp)
	li $t0, 0
	sw $t0, -9000($fp)
	li $t0, 0
	sw $t0, -9004($fp)
	addi $t0, $fp, -44
	sw $t0, -9008($fp)
	lw $t0, -1876($fp)
	sw $t0, -9012($fp)
	li $t0, 4
	lw $t1, -9012($fp)
	mul $t0, $t0, $t1
	sw $t0, -9016($fp)
	lw $t0, -9016($fp)
	lw $t1, -9008($fp)
	add $t0, $t0, $t1
	sw $t0, -9020($fp)
	lw $t0, -9020($fp)
	lw $t1, 0($t0)
	sw $t1, -9024($fp)
	li $t0, 17818
	sw $t0, -9028($fp)
	lw $t0, -9024($fp)
	lw $t1, -9028($fp)
	mul $t0, $t0, $t1
	sw $t0, -9032($fp)
	addi $t0, $fp, -44
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
	lw $t0, -9032($fp)
	lw $t1, -9052($fp)
	add $t0, $t0, $t1
	sw $t0, -9056($fp)
	addi $t0, $fp, -48
	sw $t0, -9060($fp)
	li $t0, 0
	sw $t0, -9064($fp)
	li $t0, 4
	lw $t1, -9064($fp)
	mul $t0, $t0, $t1
	sw $t0, -9068($fp)
	lw $t0, -9068($fp)
	lw $t1, -9060($fp)
	add $t0, $t0, $t1
	sw $t0, -9072($fp)
	lw $t0, -9072($fp)
	lw $t1, 0($t0)
	sw $t1, -9076($fp)
	lw $t1, -9056($fp)
	lw $t2, -9076($fp)
	bge $t1, $t2, label674
	j label675
label674:
	li $t0, 1
	sw $t0, -9004($fp)
label675:
	li $t0, 48523
	sw $t0, -9080($fp)
	lw $t1, -9004($fp)
	lw $t2, -9080($fp)
	beq $t1, $t2, label672
	j label673
label672:
	li $t0, 1
	sw $t0, -9000($fp)
label673:
	li $t0, 0
	sw $t0, -9084($fp)
	lw $t0, -1732($fp)
	sw $t0, -9088($fp)
	lw $t1, -9088($fp)
	li $t2, 0
	bne $t1, $t2, label678
	j label677
label678:
	li $t0, 8499
	sw $t0, -9092($fp)
	li $t0, 35380
	sw $t0, -9096($fp)
	lw $t0, -9092($fp)
	lw $t1, -9096($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9100($fp)
	li $t0, 57744
	sw $t0, -9104($fp)
	lw $t0, -9100($fp)
	lw $t1, -9104($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9108($fp)
	lw $t1, -9108($fp)
	li $t2, 0
	bne $t1, $t2, label676
	j label677
label676:
	li $t0, 1
	sw $t0, -9084($fp)
label677:
	li $t0, 0
	sw $t0, -9112($fp)
	li $t0, 0
	sw $t0, -9116($fp)
	li $t0, 23174
	sw $t0, -9120($fp)
	lw $t0, -2464($fp)
	sw $t0, -9124($fp)
	lw $t0, -9120($fp)
	lw $t1, -9124($fp)
	sub $t0, $t0, $t1
	sw $t0, -9128($fp)
	lw $t1, -9128($fp)
	li $t2, 0
	bne $t1, $t2, label681
	j label683
label683:
	li $t0, 64403
	sw $t0, -9132($fp)
	lw $t1, -9132($fp)
	li $t2, 0
	bne $t1, $t2, label681
	j label682
label681:
	li $t0, 1
	sw $t0, -9116($fp)
label682:
	lw $t0, -604($fp)
	sw $t0, -9136($fp)
	lw $t0, -9136($fp)
	sw $t0, -1888($fp)
	lw $t0, -1888($fp)
	sw $t0, -9140($fp)
	lw $t0, -940($fp)
	sw $t0, -9144($fp)
	addi $sp, $sp, -4
	lw $t0, -9116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9144($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9148($fp)
	addi $sp, $sp, 16
	lw $t0, -1756($fp)
	sw $t0, -9152($fp)
	li $t0, 33367
	sw $t0, -9156($fp)
	lw $t0, -9152($fp)
	lw $t1, -9156($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9160($fp)
	lw $t1, -9148($fp)
	lw $t2, -9160($fp)
	beq $t1, $t2, label679
	j label680
label679:
	li $t0, 1
	sw $t0, -9112($fp)
label680:
label684:
	li $t0, 37409
	sw $t0, -9164($fp)
	lw $t0, -1072($fp)
	sw $t0, -9168($fp)
	lw $t0, -9164($fp)
	lw $t1, -9168($fp)
	mul $t0, $t0, $t1
	sw $t0, -9172($fp)
	li $t0, 0
	lw $t1, -9172($fp)
	sub $t0, $t0, $t1
	sw $t0, -9176($fp)
	lw $t1, -9176($fp)
	li $t2, 0
	bne $t1, $t2, label685
	j label686
label685:
	li $t0, 0
	sw $t0, -9180($fp)
	lw $t0, -712($fp)
	sw $t0, -9184($fp)
	lw $t1, -9184($fp)
	li $t2, 0
	bne $t1, $t2, label688
	j label687
label687:
	li $t0, 1
	sw $t0, -9180($fp)
label688:
	li $t0, 0
	sw $t0, -9188($fp)
	lw $t0, -1060($fp)
	sw $t0, -9192($fp)
	lw $t1, -9192($fp)
	li $t2, 0
	bne $t1, $t2, label690
	j label689
label689:
	li $t0, 1
	sw $t0, -9188($fp)
label690:
	li $t0, 52480
	sw $t0, -9196($fp)
	lw $t0, -9188($fp)
	lw $t1, -9196($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9200($fp)
	lw $t0, -9180($fp)
	lw $t1, -9200($fp)
	add $t0, $t0, $t1
	sw $t0, -9204($fp)
	j label684
label686:
	j label521
label523:
	j label512
label514:
	li $t0, 0
	sw $t0, -9208($fp)
	lw $t0, -2476($fp)
	sw $t0, -9212($fp)
	jal f6
	sw $v0, -9216($fp)
	addi $sp, $sp, 4
	lw $t1, -9212($fp)
	lw $t2, -9216($fp)
	bge $t1, $t2, label691
	j label693
label693:
	li $t0, 0
	sw $t0, -9220($fp)
	li $t0, 21801
	sw $t0, -9224($fp)
	lw $t1, -9224($fp)
	li $t2, 0
	bne $t1, $t2, label695
	j label694
label694:
	li $t0, 1
	sw $t0, -9220($fp)
label695:
	li $t0, 30620
	sw $t0, -9228($fp)
	lw $t1, -9220($fp)
	lw $t2, -9228($fp)
	bgt $t1, $t2, label691
	j label692
label691:
	li $t0, 1
	sw $t0, -9208($fp)
label692:
	lw $t0, -244($fp)
	sw $t0, -9232($fp)
	lw $t0, -9232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -256($fp)
	sw $t0, -9236($fp)
	lw $t0, -9236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -9240($fp)
	li $t0, 0
	sw $t0, -9244($fp)
	li $t0, 4
	lw $t1, -9244($fp)
	mul $t0, $t0, $t1
	sw $t0, -9248($fp)
	lw $t0, -9248($fp)
	lw $t1, -9240($fp)
	add $t0, $t0, $t1
	sw $t0, -9252($fp)
	lw $t0, -9252($fp)
	lw $t1, 0($t0)
	sw $t1, -9256($fp)
	lw $t0, -9256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -9260($fp)
	li $t0, 1
	sw $t0, -9264($fp)
	li $t0, 4
	lw $t1, -9264($fp)
	mul $t0, $t0, $t1
	sw $t0, -9268($fp)
	lw $t0, -9268($fp)
	lw $t1, -9260($fp)
	add $t0, $t0, $t1
	sw $t0, -9272($fp)
	lw $t0, -9272($fp)
	lw $t1, 0($t0)
	sw $t1, -9276($fp)
	lw $t0, -9276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -9280($fp)
	li $t0, 2
	sw $t0, -9284($fp)
	li $t0, 4
	lw $t1, -9284($fp)
	mul $t0, $t0, $t1
	sw $t0, -9288($fp)
	lw $t0, -9288($fp)
	lw $t1, -9280($fp)
	add $t0, $t0, $t1
	sw $t0, -9292($fp)
	lw $t0, -9292($fp)
	lw $t1, 0($t0)
	sw $t1, -9296($fp)
	lw $t0, -9296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -9300($fp)
	li $t0, 3
	sw $t0, -9304($fp)
	li $t0, 4
	lw $t1, -9304($fp)
	mul $t0, $t0, $t1
	sw $t0, -9308($fp)
	lw $t0, -9308($fp)
	lw $t1, -9300($fp)
	add $t0, $t0, $t1
	sw $t0, -9312($fp)
	lw $t0, -9312($fp)
	lw $t1, 0($t0)
	sw $t1, -9316($fp)
	lw $t0, -9316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -9320($fp)
	li $t0, 4
	sw $t0, -9324($fp)
	li $t0, 4
	lw $t1, -9324($fp)
	mul $t0, $t0, $t1
	sw $t0, -9328($fp)
	lw $t0, -9328($fp)
	lw $t1, -9320($fp)
	add $t0, $t0, $t1
	sw $t0, -9332($fp)
	lw $t0, -9332($fp)
	lw $t1, 0($t0)
	sw $t1, -9336($fp)
	lw $t0, -9336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -9340($fp)
	li $t0, 5
	sw $t0, -9344($fp)
	li $t0, 4
	lw $t1, -9344($fp)
	mul $t0, $t0, $t1
	sw $t0, -9348($fp)
	lw $t0, -9348($fp)
	lw $t1, -9340($fp)
	add $t0, $t0, $t1
	sw $t0, -9352($fp)
	lw $t0, -9352($fp)
	lw $t1, 0($t0)
	sw $t1, -9356($fp)
	lw $t0, -9356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -9360($fp)
	li $t0, 6
	sw $t0, -9364($fp)
	li $t0, 4
	lw $t1, -9364($fp)
	mul $t0, $t0, $t1
	sw $t0, -9368($fp)
	lw $t0, -9368($fp)
	lw $t1, -9360($fp)
	add $t0, $t0, $t1
	sw $t0, -9372($fp)
	lw $t0, -9372($fp)
	lw $t1, 0($t0)
	sw $t1, -9376($fp)
	lw $t0, -9376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -9380($fp)
	li $t0, 7
	sw $t0, -9384($fp)
	li $t0, 4
	lw $t1, -9384($fp)
	mul $t0, $t0, $t1
	sw $t0, -9388($fp)
	lw $t0, -9388($fp)
	lw $t1, -9380($fp)
	add $t0, $t0, $t1
	sw $t0, -9392($fp)
	lw $t0, -9392($fp)
	lw $t1, 0($t0)
	sw $t1, -9396($fp)
	lw $t0, -9396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -9400($fp)
	li $t0, 8
	sw $t0, -9404($fp)
	li $t0, 4
	lw $t1, -9404($fp)
	mul $t0, $t0, $t1
	sw $t0, -9408($fp)
	lw $t0, -9408($fp)
	lw $t1, -9400($fp)
	add $t0, $t0, $t1
	sw $t0, -9412($fp)
	lw $t0, -9412($fp)
	lw $t1, 0($t0)
	sw $t1, -9416($fp)
	lw $t0, -9416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -484($fp)
	sw $t0, -9420($fp)
	lw $t0, -9420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -496($fp)
	sw $t0, -9424($fp)
	lw $t0, -9424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -508($fp)
	sw $t0, -9428($fp)
	lw $t0, -9428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -520($fp)
	sw $t0, -9432($fp)
	lw $t0, -9432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -532($fp)
	sw $t0, -9436($fp)
	lw $t0, -9436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -544($fp)
	sw $t0, -9440($fp)
	lw $t0, -9440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -9444($fp)
	li $t0, 0
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
	addi $t0, $fp, -48
	sw $t0, -9464($fp)
	li $t0, 0
	sw $t0, -9468($fp)
	li $t0, 4
	lw $t1, -9468($fp)
	mul $t0, $t0, $t1
	sw $t0, -9472($fp)
	lw $t0, -9472($fp)
	lw $t1, -9464($fp)
	add $t0, $t0, $t1
	sw $t0, -9476($fp)
	lw $t0, -9476($fp)
	lw $t1, 0($t0)
	sw $t1, -9480($fp)
	lw $t0, -9480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -604($fp)
	sw $t0, -9484($fp)
	lw $t0, -9484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -9488($fp)
	li $t0, 0
	sw $t0, -9492($fp)
	li $t0, 4
	lw $t1, -9492($fp)
	mul $t0, $t0, $t1
	sw $t0, -9496($fp)
	lw $t0, -9496($fp)
	lw $t1, -9488($fp)
	add $t0, $t0, $t1
	sw $t0, -9500($fp)
	lw $t0, -9500($fp)
	lw $t1, 0($t0)
	sw $t1, -9504($fp)
	lw $t0, -9504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -640($fp)
	sw $t0, -9508($fp)
	lw $t0, -9508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -652($fp)
	sw $t0, -9512($fp)
	lw $t0, -9512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -664($fp)
	sw $t0, -9516($fp)
	lw $t0, -9516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -676($fp)
	sw $t0, -9520($fp)
	lw $t0, -9520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -688($fp)
	sw $t0, -9524($fp)
	lw $t0, -9524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -700($fp)
	sw $t0, -9528($fp)
	lw $t0, -9528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -712($fp)
	sw $t0, -9532($fp)
	lw $t0, -9532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -724($fp)
	sw $t0, -9536($fp)
	lw $t0, -9536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -736($fp)
	sw $t0, -9540($fp)
	lw $t0, -9540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -9544($fp)
	li $t0, 0
	sw $t0, -9548($fp)
	li $t0, 4
	lw $t1, -9548($fp)
	mul $t0, $t0, $t1
	sw $t0, -9552($fp)
	lw $t0, -9552($fp)
	lw $t1, -9544($fp)
	add $t0, $t0, $t1
	sw $t0, -9556($fp)
	lw $t0, -9556($fp)
	lw $t1, 0($t0)
	sw $t1, -9560($fp)
	lw $t0, -9560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -9564($fp)
	li $t0, 1
	sw $t0, -9568($fp)
	li $t0, 4
	lw $t1, -9568($fp)
	mul $t0, $t0, $t1
	sw $t0, -9572($fp)
	lw $t0, -9572($fp)
	lw $t1, -9564($fp)
	add $t0, $t0, $t1
	sw $t0, -9576($fp)
	lw $t0, -9576($fp)
	lw $t1, 0($t0)
	sw $t1, -9580($fp)
	lw $t0, -9580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -9584($fp)
	li $t0, 2
	sw $t0, -9588($fp)
	li $t0, 4
	lw $t1, -9588($fp)
	mul $t0, $t0, $t1
	sw $t0, -9592($fp)
	lw $t0, -9592($fp)
	lw $t1, -9584($fp)
	add $t0, $t0, $t1
	sw $t0, -9596($fp)
	lw $t0, -9596($fp)
	lw $t1, 0($t0)
	sw $t1, -9600($fp)
	lw $t0, -9600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -9604($fp)
	li $t0, 3
	sw $t0, -9608($fp)
	li $t0, 4
	lw $t1, -9608($fp)
	mul $t0, $t0, $t1
	sw $t0, -9612($fp)
	lw $t0, -9612($fp)
	lw $t1, -9604($fp)
	add $t0, $t0, $t1
	sw $t0, -9616($fp)
	lw $t0, -9616($fp)
	lw $t1, 0($t0)
	sw $t1, -9620($fp)
	lw $t0, -9620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -9624($fp)
	li $t0, 4
	sw $t0, -9628($fp)
	li $t0, 4
	lw $t1, -9628($fp)
	mul $t0, $t0, $t1
	sw $t0, -9632($fp)
	lw $t0, -9632($fp)
	lw $t1, -9624($fp)
	add $t0, $t0, $t1
	sw $t0, -9636($fp)
	lw $t0, -9636($fp)
	lw $t1, 0($t0)
	sw $t1, -9640($fp)
	lw $t0, -9640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -9644($fp)
	li $t0, 5
	sw $t0, -9648($fp)
	li $t0, 4
	lw $t1, -9648($fp)
	mul $t0, $t0, $t1
	sw $t0, -9652($fp)
	lw $t0, -9652($fp)
	lw $t1, -9644($fp)
	add $t0, $t0, $t1
	sw $t0, -9656($fp)
	lw $t0, -9656($fp)
	lw $t1, 0($t0)
	sw $t1, -9660($fp)
	lw $t0, -9660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -892($fp)
	sw $t0, -9664($fp)
	lw $t0, -9664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -904($fp)
	sw $t0, -9668($fp)
	lw $t0, -9668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -916($fp)
	sw $t0, -9672($fp)
	lw $t0, -9672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -928($fp)
	sw $t0, -9676($fp)
	lw $t0, -9676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -940($fp)
	sw $t0, -9680($fp)
	lw $t0, -9680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -952($fp)
	sw $t0, -9684($fp)
	lw $t0, -9684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -964($fp)
	sw $t0, -9688($fp)
	lw $t0, -9688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -976($fp)
	sw $t0, -9692($fp)
	lw $t0, -9692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -988($fp)
	sw $t0, -9696($fp)
	lw $t0, -9696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1000($fp)
	sw $t0, -9700($fp)
	lw $t0, -9700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1012($fp)
	sw $t0, -9704($fp)
	lw $t0, -9704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -9708($fp)
	li $t0, 0
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
	lw $t0, -9724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1048($fp)
	sw $t0, -9728($fp)
	lw $t0, -9728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1060($fp)
	sw $t0, -9732($fp)
	lw $t0, -9732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1072($fp)
	sw $t0, -9736($fp)
	lw $t0, -9736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1084($fp)
	sw $t0, -9740($fp)
	lw $t0, -9740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1096($fp)
	sw $t0, -9744($fp)
	lw $t0, -9744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1108($fp)
	sw $t0, -9748($fp)
	lw $t0, -9748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1120($fp)
	sw $t0, -9752($fp)
	lw $t0, -9752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1132($fp)
	sw $t0, -9756($fp)
	lw $t0, -9756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1144($fp)
	sw $t0, -9760($fp)
	lw $t0, -9760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1156($fp)
	sw $t0, -9764($fp)
	lw $t0, -9764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1168($fp)
	sw $t0, -9768($fp)
	lw $t0, -9768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1180($fp)
	sw $t0, -9772($fp)
	lw $t0, -9772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -9776($fp)
	li $t0, 0
	sw $t0, -9780($fp)
	li $t0, 4
	lw $t1, -9780($fp)
	mul $t0, $t0, $t1
	sw $t0, -9784($fp)
	lw $t0, -9784($fp)
	lw $t1, -9776($fp)
	add $t0, $t0, $t1
	sw $t0, -9788($fp)
	lw $t0, -9788($fp)
	lw $t1, 0($t0)
	sw $t1, -9792($fp)
	lw $t0, -9792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -9796($fp)
	li $t0, 1
	sw $t0, -9800($fp)
	li $t0, 4
	lw $t1, -9800($fp)
	mul $t0, $t0, $t1
	sw $t0, -9804($fp)
	lw $t0, -9804($fp)
	lw $t1, -9796($fp)
	add $t0, $t0, $t1
	sw $t0, -9808($fp)
	lw $t0, -9808($fp)
	lw $t1, 0($t0)
	sw $t1, -9812($fp)
	lw $t0, -9812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -9816($fp)
	li $t0, 2
	sw $t0, -9820($fp)
	li $t0, 4
	lw $t1, -9820($fp)
	mul $t0, $t0, $t1
	sw $t0, -9824($fp)
	lw $t0, -9824($fp)
	lw $t1, -9816($fp)
	add $t0, $t0, $t1
	sw $t0, -9828($fp)
	lw $t0, -9828($fp)
	lw $t1, 0($t0)
	sw $t1, -9832($fp)
	lw $t0, -9832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -9836($fp)
	li $t0, 3
	sw $t0, -9840($fp)
	li $t0, 4
	lw $t1, -9840($fp)
	mul $t0, $t0, $t1
	sw $t0, -9844($fp)
	lw $t0, -9844($fp)
	lw $t1, -9836($fp)
	add $t0, $t0, $t1
	sw $t0, -9848($fp)
	lw $t0, -9848($fp)
	lw $t1, 0($t0)
	sw $t1, -9852($fp)
	lw $t0, -9852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1288($fp)
	sw $t0, -9856($fp)
	lw $t0, -9856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1300($fp)
	sw $t0, -9860($fp)
	lw $t0, -9860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -9864($fp)
	li $t0, 0
	sw $t0, -9868($fp)
	li $t0, 4
	lw $t1, -9868($fp)
	mul $t0, $t0, $t1
	sw $t0, -9872($fp)
	lw $t0, -9872($fp)
	lw $t1, -9864($fp)
	add $t0, $t0, $t1
	sw $t0, -9876($fp)
	lw $t0, -9876($fp)
	lw $t1, 0($t0)
	sw $t1, -9880($fp)
	lw $t0, -9880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -9884($fp)
	li $t0, 1
	sw $t0, -9888($fp)
	li $t0, 4
	lw $t1, -9888($fp)
	mul $t0, $t0, $t1
	sw $t0, -9892($fp)
	lw $t0, -9892($fp)
	lw $t1, -9884($fp)
	add $t0, $t0, $t1
	sw $t0, -9896($fp)
	lw $t0, -9896($fp)
	lw $t1, 0($t0)
	sw $t1, -9900($fp)
	lw $t0, -9900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -9904($fp)
	li $t0, 2
	sw $t0, -9908($fp)
	li $t0, 4
	lw $t1, -9908($fp)
	mul $t0, $t0, $t1
	sw $t0, -9912($fp)
	lw $t0, -9912($fp)
	lw $t1, -9904($fp)
	add $t0, $t0, $t1
	sw $t0, -9916($fp)
	lw $t0, -9916($fp)
	lw $t1, 0($t0)
	sw $t1, -9920($fp)
	lw $t0, -9920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -9924($fp)
	li $t0, 3
	sw $t0, -9928($fp)
	li $t0, 4
	lw $t1, -9928($fp)
	mul $t0, $t0, $t1
	sw $t0, -9932($fp)
	lw $t0, -9932($fp)
	lw $t1, -9924($fp)
	add $t0, $t0, $t1
	sw $t0, -9936($fp)
	lw $t0, -9936($fp)
	lw $t1, 0($t0)
	sw $t1, -9940($fp)
	lw $t0, -9940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -9944($fp)
	li $t0, 4
	sw $t0, -9948($fp)
	li $t0, 4
	lw $t1, -9948($fp)
	mul $t0, $t0, $t1
	sw $t0, -9952($fp)
	lw $t0, -9952($fp)
	lw $t1, -9944($fp)
	add $t0, $t0, $t1
	sw $t0, -9956($fp)
	lw $t0, -9956($fp)
	lw $t1, 0($t0)
	sw $t1, -9960($fp)
	lw $t0, -9960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -9964($fp)
	li $t0, 5
	sw $t0, -9968($fp)
	li $t0, 4
	lw $t1, -9968($fp)
	mul $t0, $t0, $t1
	sw $t0, -9972($fp)
	lw $t0, -9972($fp)
	lw $t1, -9964($fp)
	add $t0, $t0, $t1
	sw $t0, -9976($fp)
	lw $t0, -9976($fp)
	lw $t1, 0($t0)
	sw $t1, -9980($fp)
	lw $t0, -9980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -9984($fp)
	li $t0, 6
	sw $t0, -9988($fp)
	li $t0, 4
	lw $t1, -9988($fp)
	mul $t0, $t0, $t1
	sw $t0, -9992($fp)
	lw $t0, -9992($fp)
	lw $t1, -9984($fp)
	add $t0, $t0, $t1
	sw $t0, -9996($fp)
	lw $t0, -9996($fp)
	lw $t1, 0($t0)
	sw $t1, -10000($fp)
	lw $t0, -10000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -10004($fp)
	li $t0, 7
	sw $t0, -10008($fp)
	li $t0, 4
	lw $t1, -10008($fp)
	mul $t0, $t0, $t1
	sw $t0, -10012($fp)
	lw $t0, -10012($fp)
	lw $t1, -10004($fp)
	add $t0, $t0, $t1
	sw $t0, -10016($fp)
	lw $t0, -10016($fp)
	lw $t1, 0($t0)
	sw $t1, -10020($fp)
	lw $t0, -10020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1504($fp)
	sw $t0, -10024($fp)
	lw $t0, -10024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -10028($fp)
	li $t0, 0
	sw $t0, -10032($fp)
	li $t0, 4
	lw $t1, -10032($fp)
	mul $t0, $t0, $t1
	sw $t0, -10036($fp)
	lw $t0, -10036($fp)
	lw $t1, -10028($fp)
	add $t0, $t0, $t1
	sw $t0, -10040($fp)
	lw $t0, -10040($fp)
	lw $t1, 0($t0)
	sw $t1, -10044($fp)
	lw $t0, -10044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -10048($fp)
	li $t0, 1
	sw $t0, -10052($fp)
	li $t0, 4
	lw $t1, -10052($fp)
	mul $t0, $t0, $t1
	sw $t0, -10056($fp)
	lw $t0, -10056($fp)
	lw $t1, -10048($fp)
	add $t0, $t0, $t1
	sw $t0, -10060($fp)
	lw $t0, -10060($fp)
	lw $t1, 0($t0)
	sw $t1, -10064($fp)
	lw $t0, -10064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -10068($fp)
	li $t0, 2
	sw $t0, -10072($fp)
	li $t0, 4
	lw $t1, -10072($fp)
	mul $t0, $t0, $t1
	sw $t0, -10076($fp)
	lw $t0, -10076($fp)
	lw $t1, -10068($fp)
	add $t0, $t0, $t1
	sw $t0, -10080($fp)
	lw $t0, -10080($fp)
	lw $t1, 0($t0)
	sw $t1, -10084($fp)
	lw $t0, -10084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -10088($fp)
	li $t0, 3
	sw $t0, -10092($fp)
	li $t0, 4
	lw $t1, -10092($fp)
	mul $t0, $t0, $t1
	sw $t0, -10096($fp)
	lw $t0, -10096($fp)
	lw $t1, -10088($fp)
	add $t0, $t0, $t1
	sw $t0, -10100($fp)
	lw $t0, -10100($fp)
	lw $t1, 0($t0)
	sw $t1, -10104($fp)
	lw $t0, -10104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -10108($fp)
	li $t0, 4
	sw $t0, -10112($fp)
	li $t0, 4
	lw $t1, -10112($fp)
	mul $t0, $t0, $t1
	sw $t0, -10116($fp)
	lw $t0, -10116($fp)
	lw $t1, -10108($fp)
	add $t0, $t0, $t1
	sw $t0, -10120($fp)
	lw $t0, -10120($fp)
	lw $t1, 0($t0)
	sw $t1, -10124($fp)
	lw $t0, -10124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -10128($fp)
	li $t0, 5
	sw $t0, -10132($fp)
	li $t0, 4
	lw $t1, -10132($fp)
	mul $t0, $t0, $t1
	sw $t0, -10136($fp)
	lw $t0, -10136($fp)
	lw $t1, -10128($fp)
	add $t0, $t0, $t1
	sw $t0, -10140($fp)
	lw $t0, -10140($fp)
	lw $t1, 0($t0)
	sw $t1, -10144($fp)
	lw $t0, -10144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -10148($fp)
	li $t0, 6
	sw $t0, -10152($fp)
	li $t0, 4
	lw $t1, -10152($fp)
	mul $t0, $t0, $t1
	sw $t0, -10156($fp)
	lw $t0, -10156($fp)
	lw $t1, -10148($fp)
	add $t0, $t0, $t1
	sw $t0, -10160($fp)
	lw $t0, -10160($fp)
	lw $t1, 0($t0)
	sw $t1, -10164($fp)
	lw $t0, -10164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -10168($fp)
	li $t0, 7
	sw $t0, -10172($fp)
	li $t0, 4
	lw $t1, -10172($fp)
	mul $t0, $t0, $t1
	sw $t0, -10176($fp)
	lw $t0, -10176($fp)
	lw $t1, -10168($fp)
	add $t0, $t0, $t1
	sw $t0, -10180($fp)
	lw $t0, -10180($fp)
	lw $t1, 0($t0)
	sw $t1, -10184($fp)
	lw $t0, -10184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1708($fp)
	sw $t0, -10188($fp)
	lw $t0, -10188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1720($fp)
	sw $t0, -10192($fp)
	lw $t0, -10192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1732($fp)
	sw $t0, -10196($fp)
	lw $t0, -10196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1744($fp)
	sw $t0, -10200($fp)
	lw $t0, -10200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1756($fp)
	sw $t0, -10204($fp)
	lw $t0, -10204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1768($fp)
	sw $t0, -10208($fp)
	lw $t0, -10208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1780($fp)
	sw $t0, -10212($fp)
	lw $t0, -10212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1792($fp)
	sw $t0, -10216($fp)
	lw $t0, -10216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1804($fp)
	sw $t0, -10220($fp)
	lw $t0, -10220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1816($fp)
	sw $t0, -10224($fp)
	lw $t0, -10224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1828($fp)
	sw $t0, -10228($fp)
	lw $t0, -10228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1840($fp)
	sw $t0, -10232($fp)
	lw $t0, -10232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1852($fp)
	sw $t0, -10236($fp)
	lw $t0, -10236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1864($fp)
	sw $t0, -10240($fp)
	lw $t0, -10240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1876($fp)
	sw $t0, -10244($fp)
	lw $t0, -10244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1888($fp)
	sw $t0, -10248($fp)
	lw $t0, -10248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -10252($fp)
	li $t0, 0
	sw $t0, -10256($fp)
	li $t0, 4
	lw $t1, -10256($fp)
	mul $t0, $t0, $t1
	sw $t0, -10260($fp)
	lw $t0, -10260($fp)
	lw $t1, -10252($fp)
	add $t0, $t0, $t1
	sw $t0, -10264($fp)
	lw $t0, -10264($fp)
	lw $t1, 0($t0)
	sw $t1, -10268($fp)
	lw $t0, -10268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -10272($fp)
	li $t0, 1
	sw $t0, -10276($fp)
	li $t0, 4
	lw $t1, -10276($fp)
	mul $t0, $t0, $t1
	sw $t0, -10280($fp)
	lw $t0, -10280($fp)
	lw $t1, -10272($fp)
	add $t0, $t0, $t1
	sw $t0, -10284($fp)
	lw $t0, -10284($fp)
	lw $t1, 0($t0)
	sw $t1, -10288($fp)
	lw $t0, -10288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -10292($fp)
	li $t0, 2
	sw $t0, -10296($fp)
	li $t0, 4
	lw $t1, -10296($fp)
	mul $t0, $t0, $t1
	sw $t0, -10300($fp)
	lw $t0, -10300($fp)
	lw $t1, -10292($fp)
	add $t0, $t0, $t1
	sw $t0, -10304($fp)
	lw $t0, -10304($fp)
	lw $t1, 0($t0)
	sw $t1, -10308($fp)
	lw $t0, -10308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -10312($fp)
	li $t0, 3
	sw $t0, -10316($fp)
	li $t0, 4
	lw $t1, -10316($fp)
	mul $t0, $t0, $t1
	sw $t0, -10320($fp)
	lw $t0, -10320($fp)
	lw $t1, -10312($fp)
	add $t0, $t0, $t1
	sw $t0, -10324($fp)
	lw $t0, -10324($fp)
	lw $t1, 0($t0)
	sw $t1, -10328($fp)
	lw $t0, -10328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -10332($fp)
	li $t0, 0
	sw $t0, -10336($fp)
	li $t0, 4
	lw $t1, -10336($fp)
	mul $t0, $t0, $t1
	sw $t0, -10340($fp)
	lw $t0, -10340($fp)
	lw $t1, -10332($fp)
	add $t0, $t0, $t1
	sw $t0, -10344($fp)
	lw $t0, -10344($fp)
	lw $t1, 0($t0)
	sw $t1, -10348($fp)
	lw $t0, -10348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -10352($fp)
	li $t0, 1
	sw $t0, -10356($fp)
	li $t0, 4
	lw $t1, -10356($fp)
	mul $t0, $t0, $t1
	sw $t0, -10360($fp)
	lw $t0, -10360($fp)
	lw $t1, -10352($fp)
	add $t0, $t0, $t1
	sw $t0, -10364($fp)
	lw $t0, -10364($fp)
	lw $t1, 0($t0)
	sw $t1, -10368($fp)
	lw $t0, -10368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -10372($fp)
	li $t0, 2
	sw $t0, -10376($fp)
	li $t0, 4
	lw $t1, -10376($fp)
	mul $t0, $t0, $t1
	sw $t0, -10380($fp)
	lw $t0, -10380($fp)
	lw $t1, -10372($fp)
	add $t0, $t0, $t1
	sw $t0, -10384($fp)
	lw $t0, -10384($fp)
	lw $t1, 0($t0)
	sw $t1, -10388($fp)
	lw $t0, -10388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -10392($fp)
	li $t0, 3
	sw $t0, -10396($fp)
	li $t0, 4
	lw $t1, -10396($fp)
	mul $t0, $t0, $t1
	sw $t0, -10400($fp)
	lw $t0, -10400($fp)
	lw $t1, -10392($fp)
	add $t0, $t0, $t1
	sw $t0, -10404($fp)
	lw $t0, -10404($fp)
	lw $t1, 0($t0)
	sw $t1, -10408($fp)
	lw $t0, -10408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -10412($fp)
	li $t0, 4
	sw $t0, -10416($fp)
	li $t0, 4
	lw $t1, -10416($fp)
	mul $t0, $t0, $t1
	sw $t0, -10420($fp)
	lw $t0, -10420($fp)
	lw $t1, -10412($fp)
	add $t0, $t0, $t1
	sw $t0, -10424($fp)
	lw $t0, -10424($fp)
	lw $t1, 0($t0)
	sw $t1, -10428($fp)
	lw $t0, -10428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -10432($fp)
	li $t0, 5
	sw $t0, -10436($fp)
	li $t0, 4
	lw $t1, -10436($fp)
	mul $t0, $t0, $t1
	sw $t0, -10440($fp)
	lw $t0, -10440($fp)
	lw $t1, -10432($fp)
	add $t0, $t0, $t1
	sw $t0, -10444($fp)
	lw $t0, -10444($fp)
	lw $t1, 0($t0)
	sw $t1, -10448($fp)
	lw $t0, -10448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -10452($fp)
	li $t0, 0
	sw $t0, -10456($fp)
	li $t0, 4
	lw $t1, -10456($fp)
	mul $t0, $t0, $t1
	sw $t0, -10460($fp)
	lw $t0, -10460($fp)
	lw $t1, -10452($fp)
	add $t0, $t0, $t1
	sw $t0, -10464($fp)
	lw $t0, -10464($fp)
	lw $t1, 0($t0)
	sw $t1, -10468($fp)
	lw $t0, -10468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -10472($fp)
	li $t0, 1
	sw $t0, -10476($fp)
	li $t0, 4
	lw $t1, -10476($fp)
	mul $t0, $t0, $t1
	sw $t0, -10480($fp)
	lw $t0, -10480($fp)
	lw $t1, -10472($fp)
	add $t0, $t0, $t1
	sw $t0, -10484($fp)
	lw $t0, -10484($fp)
	lw $t1, 0($t0)
	sw $t1, -10488($fp)
	lw $t0, -10488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2188($fp)
	sw $t0, -10492($fp)
	lw $t0, -10492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2200($fp)
	sw $t0, -10496($fp)
	lw $t0, -10496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2212($fp)
	sw $t0, -10500($fp)
	lw $t0, -10500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2224($fp)
	sw $t0, -10504($fp)
	lw $t0, -10504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2236($fp)
	sw $t0, -10508($fp)
	lw $t0, -10508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2248($fp)
	sw $t0, -10512($fp)
	lw $t0, -10512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2260($fp)
	sw $t0, -10516($fp)
	lw $t0, -10516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -10520($fp)
	li $t0, 0
	sw $t0, -10524($fp)
	li $t0, 4
	lw $t1, -10524($fp)
	mul $t0, $t0, $t1
	sw $t0, -10528($fp)
	lw $t0, -10528($fp)
	lw $t1, -10520($fp)
	add $t0, $t0, $t1
	sw $t0, -10532($fp)
	lw $t0, -10532($fp)
	lw $t1, 0($t0)
	sw $t1, -10536($fp)
	lw $t0, -10536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -10540($fp)
	li $t0, 1
	sw $t0, -10544($fp)
	li $t0, 4
	lw $t1, -10544($fp)
	mul $t0, $t0, $t1
	sw $t0, -10548($fp)
	lw $t0, -10548($fp)
	lw $t1, -10540($fp)
	add $t0, $t0, $t1
	sw $t0, -10552($fp)
	lw $t0, -10552($fp)
	lw $t1, 0($t0)
	sw $t1, -10556($fp)
	lw $t0, -10556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2320($fp)
	sw $t0, -10560($fp)
	lw $t0, -10560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2332($fp)
	sw $t0, -10564($fp)
	lw $t0, -10564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -10568($fp)
	li $t0, 0
	sw $t0, -10572($fp)
	li $t0, 4
	lw $t1, -10572($fp)
	mul $t0, $t0, $t1
	sw $t0, -10576($fp)
	lw $t0, -10576($fp)
	lw $t1, -10568($fp)
	add $t0, $t0, $t1
	sw $t0, -10580($fp)
	lw $t0, -10580($fp)
	lw $t1, 0($t0)
	sw $t1, -10584($fp)
	lw $t0, -10584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -10588($fp)
	li $t0, 1
	sw $t0, -10592($fp)
	li $t0, 4
	lw $t1, -10592($fp)
	mul $t0, $t0, $t1
	sw $t0, -10596($fp)
	lw $t0, -10596($fp)
	lw $t1, -10588($fp)
	add $t0, $t0, $t1
	sw $t0, -10600($fp)
	lw $t0, -10600($fp)
	lw $t1, 0($t0)
	sw $t1, -10604($fp)
	lw $t0, -10604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -10608($fp)
	li $t0, 2
	sw $t0, -10612($fp)
	li $t0, 4
	lw $t1, -10612($fp)
	mul $t0, $t0, $t1
	sw $t0, -10616($fp)
	lw $t0, -10616($fp)
	lw $t1, -10608($fp)
	add $t0, $t0, $t1
	sw $t0, -10620($fp)
	lw $t0, -10620($fp)
	lw $t1, 0($t0)
	sw $t1, -10624($fp)
	lw $t0, -10624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -10628($fp)
	li $t0, 0
	sw $t0, -10632($fp)
	li $t0, 4
	lw $t1, -10632($fp)
	mul $t0, $t0, $t1
	sw $t0, -10636($fp)
	lw $t0, -10636($fp)
	lw $t1, -10628($fp)
	add $t0, $t0, $t1
	sw $t0, -10640($fp)
	lw $t0, -10640($fp)
	lw $t1, 0($t0)
	sw $t1, -10644($fp)
	lw $t0, -10644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -10648($fp)
	li $t0, 1
	sw $t0, -10652($fp)
	li $t0, 4
	lw $t1, -10652($fp)
	mul $t0, $t0, $t1
	sw $t0, -10656($fp)
	lw $t0, -10656($fp)
	lw $t1, -10648($fp)
	add $t0, $t0, $t1
	sw $t0, -10660($fp)
	lw $t0, -10660($fp)
	lw $t1, 0($t0)
	sw $t1, -10664($fp)
	lw $t0, -10664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2464($fp)
	sw $t0, -10668($fp)
	lw $t0, -10668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2476($fp)
	sw $t0, -10672($fp)
	lw $t0, -10672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2488($fp)
	sw $t0, -10676($fp)
	lw $t0, -10676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2500($fp)
	sw $t0, -10680($fp)
	lw $t0, -10680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2512($fp)
	sw $t0, -10684($fp)
	lw $t0, -10684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2524($fp)
	sw $t0, -10688($fp)
	lw $t0, -10688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -10692($fp)
	li $t0, 0
	sw $t0, -10696($fp)
	li $t0, 0
	sw $t0, -10700($fp)
	li $t0, 56652
	sw $t0, -10704($fp)
	lw $t1, -10704($fp)
	li $t2, 0
	bne $t1, $t2, label701
	j label700
label701:
	lw $t0, -892($fp)
	sw $t0, -10708($fp)
	lw $t1, -10708($fp)
	li $t2, 0
	bne $t1, $t2, label699
	j label700
label699:
	li $t0, 1
	sw $t0, -10700($fp)
label700:
	li $t0, 0
	sw $t0, -10712($fp)
	li $t0, 22675
	sw $t0, -10716($fp)
	li $t0, 0
	lw $t1, -10716($fp)
	sub $t0, $t0, $t1
	sw $t0, -10720($fp)
	lw $t1, -10720($fp)
	li $t2, 0
	bne $t1, $t2, label703
	j label702
label702:
	li $t0, 1
	sw $t0, -10712($fp)
label703:
	li $t0, 0
	sw $t0, -10724($fp)
	lw $t0, -508($fp)
	sw $t0, -10728($fp)
	lw $t1, -10728($fp)
	li $t2, 0
	bne $t1, $t2, label705
	j label704
label704:
	li $t0, 1
	sw $t0, -10724($fp)
label705:
	li $t0, 0
	sw $t0, -10732($fp)
	lw $t0, -640($fp)
	sw $t0, -10736($fp)
	lw $t1, -10736($fp)
	li $t2, 0
	bne $t1, $t2, label707
	j label706
label706:
	li $t0, 1
	sw $t0, -10732($fp)
label707:
	li $t0, 0
	lw $t1, -10732($fp)
	sub $t0, $t0, $t1
	sw $t0, -10740($fp)
	li $t0, 1018
	sw $t0, -10744($fp)
	addi $sp, $sp, -4
	lw $t0, -10700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10744($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -10748($fp)
	addi $sp, $sp, 24
	lw $t0, -652($fp)
	sw $t0, -10752($fp)
	lw $t0, -10748($fp)
	lw $t1, -10752($fp)
	mul $t0, $t0, $t1
	sw $t0, -10756($fp)
	lw $t1, -10756($fp)
	li $t2, 0
	bne $t1, $t2, label698
	j label697
label698:
	li $t0, 3648
	sw $t0, -10760($fp)
	lw $t0, -1852($fp)
	sw $t0, -10764($fp)
	lw $t1, -10760($fp)
	lw $t2, -10764($fp)
	beq $t1, $t2, label696
	j label697
label696:
	li $t0, 1
	sw $t0, -10696($fp)
label697:
	li $t0, 4
	lw $t1, -10696($fp)
	mul $t0, $t0, $t1
	sw $t0, -10768($fp)
	lw $t0, -10768($fp)
	lw $t1, -10692($fp)
	add $t0, $t0, $t1
	sw $t0, -10772($fp)
	lw $t0, -10772($fp)
	lw $t1, 0($t0)
	sw $t1, -10776($fp)
	lw $ra, -4($fp)
	lw $v0, -10776($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -100
	li $t0, 0
	sw $t0, -8($fp)
	li $t0, 0
	sw $t0, -12($fp)
	lw $t0, 16($fp)
	sw $t0, -16($fp)
	li $t0, 34104
	sw $t0, -20($fp)
	lw $t1, -16($fp)
	lw $t2, -20($fp)
	beq $t1, $t2, label713
	j label714
label713:
	li $t0, 1
	sw $t0, -12($fp)
label714:
	lw $t0, 16($fp)
	sw $t0, -24($fp)
	lw $t1, -12($fp)
	lw $t2, -24($fp)
	bne $t1, $t2, label712
	j label710
label712:
	lw $t0, 16($fp)
	sw $t0, -28($fp)
	li $t0, 41389
	sw $t0, -32($fp)
	lw $t1, -28($fp)
	lw $t2, -32($fp)
	beq $t1, $t2, label711
	j label710
label711:
	li $t0, 54463
	sw $t0, -36($fp)
	lw $t0, 12($fp)
	sw $t0, -40($fp)
	lw $t0, -36($fp)
	lw $t1, -40($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -44($fp)
	lw $t0, 12($fp)
	sw $t0, -48($fp)
	li $t0, 0
	lw $t1, -48($fp)
	sub $t0, $t0, $t1
	sw $t0, -52($fp)
	li $t0, 16632
	sw $t0, -56($fp)
	lw $t0, 12($fp)
	sw $t0, -60($fp)
	lw $t0, 12($fp)
	sw $t0, -64($fp)
	li $t0, 0
	lw $t1, -64($fp)
	sub $t0, $t0, $t1
	sw $t0, -68($fp)
	addi $sp, $sp, -4
	lw $t0, -44($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -52($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -56($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -60($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -68($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -72($fp)
	addi $sp, $sp, 24
	lw $t1, -72($fp)
	li $t2, 0
	bne $t1, $t2, label708
	j label710
label710:
	lw $t0, 8($fp)
	sw $t0, -76($fp)
	lw $t1, -76($fp)
	li $t2, 0
	bne $t1, $t2, label708
	j label709
label708:
	li $t0, 1
	sw $t0, -8($fp)
label709:
	jal f6
	sw $v0, -80($fp)
	addi $sp, $sp, 4
	lw $t0, 16($fp)
	sw $t0, -84($fp)
	lw $t0, -80($fp)
	lw $t1, -84($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -88($fp)
	li $t0, 0
	sw $t0, -92($fp)
	jal f6
	sw $v0, -96($fp)
	addi $sp, $sp, 4
	lw $t1, -96($fp)
	li $t2, 0
	bne $t1, $t2, label717
	j label716
label717:
	jal f6
	sw $v0, -100($fp)
	addi $sp, $sp, 4
	lw $t1, -100($fp)
	li $t2, 0
	bne $t1, $t2, label715
	j label716
label715:
	li $t0, 1
	sw $t0, -92($fp)
label716:
	lw $t0, 4($fp)
	sw $t0, -104($fp)
	lw $ra, -4($fp)
	lw $v0, -104($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1284
	li $t0, 5382
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
	li $t0, 19507
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
	li $t0, 11474
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
	li $t0, 65178
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	li $t0, 21189
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	li $t0, 29293
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	li $t0, 44812
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	li $t0, 23543
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	li $t0, 64054
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	li $t0, 2449
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	li $t0, 6531
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	li $t0, 7017
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	li $t0, 37829
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	li $t0, 56387
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	li $t0, 64760
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -232($fp)
	li $t0, 61003
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	li $t0, 55254
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	li $t0, 32472
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	li $t0, 28834
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	li $t0, 27127
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	li $t0, 0
	sw $t0, -296($fp)
	li $t0, 0
	sw $t0, -300($fp)
	li $t0, 19416
	sw $t0, -304($fp)
	lw $t0, -288($fp)
	sw $t0, -308($fp)
	lw $t0, -304($fp)
	lw $t1, -308($fp)
	add $t0, $t0, $t1
	sw $t0, -312($fp)
	li $t0, 50635
	sw $t0, -316($fp)
	lw $t0, -312($fp)
	lw $t1, -316($fp)
	add $t0, $t0, $t1
	sw $t0, -320($fp)
	lw $t0, 8($fp)
	sw $t0, -324($fp)
	lw $t1, -320($fp)
	lw $t2, -324($fp)
	ble $t1, $t2, label721
	j label722
label721:
	li $t0, 1
	sw $t0, -300($fp)
label722:
	li $t0, 0
	sw $t0, -328($fp)
	li $t0, 57747
	sw $t0, -332($fp)
	lw $t1, -332($fp)
	li $t2, 0
	bne $t1, $t2, label723
	j label724
label723:
	li $t0, 1
	sw $t0, -328($fp)
label724:
	lw $t1, -300($fp)
	lw $t2, -328($fp)
	blt $t1, $t2, label720
	j label719
label720:
	li $t0, 0
	sw $t0, -336($fp)
	lw $t0, -264($fp)
	sw $t0, -340($fp)
	lw $t1, -340($fp)
	li $t2, 0
	bne $t1, $t2, label726
	j label725
label725:
	li $t0, 1
	sw $t0, -336($fp)
label726:
	lw $t0, 16($fp)
	sw $t0, -344($fp)
	lw $t0, -336($fp)
	lw $t1, -344($fp)
	add $t0, $t0, $t1
	sw $t0, -348($fp)
	li $t0, 20434
	sw $t0, -352($fp)
	li $t0, 0
	lw $t1, -352($fp)
	sub $t0, $t0, $t1
	sw $t0, -356($fp)
	lw $t1, -348($fp)
	lw $t2, -356($fp)
	blt $t1, $t2, label718
	j label719
label718:
	li $t0, 1
	sw $t0, -296($fp)
label719:
	addi $t0, $fp, -16
	sw $t0, -360($fp)
	li $t0, 0
	sw $t0, -364($fp)
	li $t0, 0
	sw $t0, -368($fp)
	lw $t0, -168($fp)
	sw $t0, -372($fp)
	lw $t0, 4($fp)
	sw $t0, -376($fp)
	lw $t0, -372($fp)
	lw $t1, -376($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -380($fp)
	li $t0, 0
	sw $t0, -384($fp)
	li $t0, 45950
	sw $t0, -388($fp)
	li $t0, 11573
	sw $t0, -392($fp)
	lw $t0, -388($fp)
	lw $t1, -392($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -396($fp)
	lw $t0, -168($fp)
	sw $t0, -400($fp)
	lw $t1, -396($fp)
	lw $t2, -400($fp)
	bne $t1, $t2, label732
	j label733
label732:
	li $t0, 1
	sw $t0, -384($fp)
label733:
	li $t0, 0
	sw $t0, -404($fp)
	li $t0, 0
	sw $t0, -408($fp)
	li $t0, 39419
	sw $t0, -412($fp)
	li $t0, 4556
	sw $t0, -416($fp)
	lw $t1, -412($fp)
	lw $t2, -416($fp)
	ble $t1, $t2, label736
	j label737
label736:
	li $t0, 1
	sw $t0, -408($fp)
label737:
	li $t0, 11465
	sw $t0, -420($fp)
	lw $t1, -408($fp)
	lw $t2, -420($fp)
	beq $t1, $t2, label734
	j label735
label734:
	li $t0, 1
	sw $t0, -404($fp)
label735:
	addi $sp, $sp, -4
	lw $t0, -380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -404($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -424($fp)
	addi $sp, $sp, 16
	lw $t0, -108($fp)
	sw $t0, -428($fp)
	li $t0, 0
	lw $t1, -428($fp)
	sub $t0, $t0, $t1
	sw $t0, -432($fp)
	lw $t0, -180($fp)
	sw $t0, -436($fp)
	lw $t0, -432($fp)
	lw $t1, -436($fp)
	add $t0, $t0, $t1
	sw $t0, -440($fp)
	li $t0, 9016
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -448($fp)
	li $t0, 0
	sw $t0, -452($fp)
	lw $t0, -204($fp)
	sw $t0, -456($fp)
	li $t0, 6038
	sw $t0, -460($fp)
	lw $t0, -456($fp)
	lw $t1, -460($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -464($fp)
	lw $t0, 8($fp)
	sw $t0, -468($fp)
	lw $t1, -464($fp)
	lw $t2, -468($fp)
	blt $t1, $t2, label738
	j label739
label738:
	li $t0, 1
	sw $t0, -452($fp)
label739:
	addi $sp, $sp, -4
	lw $t0, -424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -452($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -472($fp)
	addi $sp, $sp, 20
	lw $t1, -472($fp)
	li $t2, 0
	bne $t1, $t2, label731
	j label730
label731:
	lw $t0, -168($fp)
	sw $t0, -476($fp)
	lw $t1, -476($fp)
	li $t2, 0
	bne $t1, $t2, label729
	j label730
label729:
	li $t0, 1
	sw $t0, -368($fp)
label730:
	li $t0, 0
	sw $t0, -480($fp)
	addi $t0, $fp, -16
	sw $t0, -484($fp)
	lw $t0, 12($fp)
	sw $t0, -488($fp)
	li $t0, 4
	lw $t1, -488($fp)
	mul $t0, $t0, $t1
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	lw $t1, -484($fp)
	add $t0, $t0, $t1
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	lw $t1, 0($t0)
	sw $t1, -500($fp)
	lw $t1, -500($fp)
	li $t2, 0
	bne $t1, $t2, label742
	j label741
label742:
	lw $t0, -240($fp)
	sw $t0, -504($fp)
	lw $t1, -504($fp)
	li $t2, 0
	bne $t1, $t2, label740
	j label741
label740:
	li $t0, 1
	sw $t0, -480($fp)
label741:
	li $t0, 0
	sw $t0, -508($fp)
	li $t0, 15876
	sw $t0, -512($fp)
	lw $t0, -168($fp)
	sw $t0, -516($fp)
	lw $t0, -512($fp)
	lw $t1, -516($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -520($fp)
	li $t0, 0
	lw $t1, -520($fp)
	sub $t0, $t0, $t1
	sw $t0, -524($fp)
	li $t0, 42281
	sw $t0, -528($fp)
	li $t0, 29740
	sw $t0, -532($fp)
	lw $t0, -528($fp)
	lw $t1, -532($fp)
	sub $t0, $t0, $t1
	sw $t0, -536($fp)
	lw $t0, -192($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -544($fp)
	addi $sp, $sp, -4
	lw $t0, -524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -544($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -548($fp)
	addi $sp, $sp, 16
	lw $t1, -548($fp)
	li $t2, 0
	bne $t1, $t2, label744
	j label743
label743:
	li $t0, 1
	sw $t0, -508($fp)
label744:
	li $t0, 0
	sw $t0, -552($fp)
	li $t0, 0
	sw $t0, -556($fp)
	li $t0, 30806
	sw $t0, -560($fp)
	li $t0, 30098
	sw $t0, -564($fp)
	lw $t1, -560($fp)
	lw $t2, -564($fp)
	blt $t1, $t2, label747
	j label748
label747:
	li $t0, 1
	sw $t0, -556($fp)
label748:
	li $t0, 60222
	sw $t0, -568($fp)
	lw $t1, -556($fp)
	lw $t2, -568($fp)
	ble $t1, $t2, label745
	j label746
label745:
	li $t0, 1
	sw $t0, -552($fp)
label746:
	li $t0, 0
	sw $t0, -572($fp)
	lw $t0, -264($fp)
	sw $t0, -576($fp)
	li $t0, 0
	lw $t1, -576($fp)
	sub $t0, $t0, $t1
	sw $t0, -580($fp)
	li $t0, 40715
	sw $t0, -584($fp)
	lw $t1, -580($fp)
	lw $t2, -584($fp)
	bne $t1, $t2, label749
	j label750
label749:
	li $t0, 1
	sw $t0, -572($fp)
label750:
	addi $sp, $sp, -4
	lw $t0, -368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -572($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -588($fp)
	addi $sp, $sp, 24
	lw $t0, -216($fp)
	sw $t0, -592($fp)
	lw $t1, -588($fp)
	lw $t2, -592($fp)
	bge $t1, $t2, label727
	j label728
label727:
	li $t0, 1
	sw $t0, -364($fp)
label728:
	li $t0, 41879
	sw $t0, -596($fp)
	li $t0, 24716
	sw $t0, -600($fp)
	lw $t0, -596($fp)
	lw $t1, -600($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -604($fp)
	lw $t0, -108($fp)
	sw $t0, -608($fp)
	lw $t0, -604($fp)
	lw $t1, -608($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -612($fp)
	li $t0, 0
	sw $t0, -616($fp)
	lw $t0, -144($fp)
	sw $t0, -620($fp)
	lw $t1, -620($fp)
	li $t2, 0
	bne $t1, $t2, label754
	j label752
label754:
	li $t0, 24082
	sw $t0, -624($fp)
	lw $t1, -624($fp)
	li $t2, 0
	bne $t1, $t2, label753
	j label752
label753:
	lw $t0, -252($fp)
	sw $t0, -628($fp)
	lw $t1, -628($fp)
	li $t2, 0
	bne $t1, $t2, label751
	j label752
label751:
	li $t0, 1
	sw $t0, -616($fp)
label752:
	li $t0, 0
	sw $t0, -632($fp)
	li $t0, 0
	sw $t0, -636($fp)
	li $t0, 7774
	sw $t0, -640($fp)
	li $t0, 48863
	sw $t0, -644($fp)
	lw $t1, -640($fp)
	lw $t2, -644($fp)
	beq $t1, $t2, label757
	j label758
label757:
	li $t0, 1
	sw $t0, -636($fp)
label758:
	lw $t0, -144($fp)
	sw $t0, -648($fp)
	lw $t1, -636($fp)
	lw $t2, -648($fp)
	bne $t1, $t2, label755
	j label756
label755:
	li $t0, 1
	sw $t0, -632($fp)
label756:
	li $t0, 0
	sw $t0, -652($fp)
	lw $t0, -264($fp)
	sw $t0, -656($fp)
	lw $t1, -656($fp)
	li $t2, 0
	bne $t1, $t2, label759
	j label761
label761:
	lw $t0, -168($fp)
	sw $t0, -660($fp)
	lw $t1, -660($fp)
	li $t2, 0
	bne $t1, $t2, label759
	j label760
label759:
	li $t0, 1
	sw $t0, -652($fp)
label760:
	addi $sp, $sp, -4
	lw $t0, -364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -652($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -664($fp)
	addi $sp, $sp, 24
	lw $t0, -192($fp)
	sw $t0, -668($fp)
	lw $t0, -664($fp)
	lw $t1, -668($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -672($fp)
	li $t0, 0
	sw $t0, -676($fp)
	lw $t0, 8($fp)
	sw $t0, -680($fp)
	lw $t1, -680($fp)
	li $t2, 0
	bne $t1, $t2, label763
	j label762
label762:
	li $t0, 1
	sw $t0, -676($fp)
label763:
	lw $t0, -180($fp)
	sw $t0, -684($fp)
	lw $t0, -676($fp)
	lw $t1, -684($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -688($fp)
	li $t0, 0
	sw $t0, -692($fp)
	li $t0, 10798
	sw $t0, -696($fp)
	li $t0, 0
	lw $t1, -696($fp)
	sub $t0, $t0, $t1
	sw $t0, -700($fp)
	lw $t0, -240($fp)
	sw $t0, -704($fp)
	lw $t1, -700($fp)
	lw $t2, -704($fp)
	blt $t1, $t2, label764
	j label765
label764:
	li $t0, 1
	sw $t0, -692($fp)
label765:
	lw $t0, -144($fp)
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -712($fp)
	lw $t0, -168($fp)
	sw $t0, -716($fp)
	li $t0, 49295
	sw $t0, -720($fp)
	li $t0, 36801
	sw $t0, -724($fp)
	lw $t0, -720($fp)
	lw $t1, -724($fp)
	mul $t0, $t0, $t1
	sw $t0, -728($fp)
	lw $t0, -228($fp)
	sw $t0, -732($fp)
	lw $t0, -728($fp)
	lw $t1, -732($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -736($fp)
	addi $sp, $sp, -4
	lw $t0, -688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -736($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -740($fp)
	addi $sp, $sp, 24
	lw $t0, -672($fp)
	lw $t1, -740($fp)
	sub $t0, $t0, $t1
	sw $t0, -744($fp)
	li $t0, 4
	lw $t1, -744($fp)
	mul $t0, $t0, $t1
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	lw $t1, -360($fp)
	add $t0, $t0, $t1
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	lw $t1, 0($t0)
	sw $t1, -756($fp)
	li $t0, 0
	sw $t0, -760($fp)
	li $t0, 44762
	sw $t0, -764($fp)
	li $t0, 0
	lw $t1, -764($fp)
	sub $t0, $t0, $t1
	sw $t0, -768($fp)
	addi $t0, $fp, -16
	sw $t0, -772($fp)
	lw $t0, -180($fp)
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
	lw $t1, -768($fp)
	lw $t2, -788($fp)
	bne $t1, $t2, label768
	j label767
label768:
	lw $t0, -144($fp)
	sw $t0, -792($fp)
	li $t0, 26519
	sw $t0, -796($fp)
	lw $t0, -792($fp)
	lw $t1, -796($fp)
	mul $t0, $t0, $t1
	sw $t0, -800($fp)
	lw $t1, -800($fp)
	li $t2, 0
	bne $t1, $t2, label766
	j label767
label766:
	li $t0, 1
	sw $t0, -760($fp)
label767:
	li $t0, 0
	sw $t0, -804($fp)
	li $t0, 0
	sw $t0, -808($fp)
	li $t0, 0
	sw $t0, -812($fp)
	li $t0, 0
	sw $t0, -816($fp)
	lw $t0, -288($fp)
	sw $t0, -820($fp)
	lw $t0, -96($fp)
	sw $t0, -824($fp)
	lw $t1, -820($fp)
	lw $t2, -824($fp)
	blt $t1, $t2, label776
	j label777
label776:
	li $t0, 1
	sw $t0, -816($fp)
label777:
	li $t0, 43270
	sw $t0, -828($fp)
	lw $t1, -816($fp)
	lw $t2, -828($fp)
	blt $t1, $t2, label774
	j label775
label774:
	li $t0, 1
	sw $t0, -812($fp)
label775:
	lw $t0, -276($fp)
	sw $t0, -832($fp)
	lw $t1, -812($fp)
	lw $t2, -832($fp)
	bgt $t1, $t2, label772
	j label773
label772:
	li $t0, 1
	sw $t0, -808($fp)
label773:
	lw $t0, -144($fp)
	sw $t0, -836($fp)
	lw $t1, -808($fp)
	lw $t2, -836($fp)
	beq $t1, $t2, label771
	j label770
label771:
	addi $t0, $fp, -16
	sw $t0, -840($fp)
	li $t0, 2
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
	li $t0, 0
	sw $t0, -860($fp)
	li $t0, 3148
	sw $t0, -864($fp)
	lw $t1, -864($fp)
	li $t2, 0
	bne $t1, $t2, label781
	j label780
label781:
	lw $t0, -144($fp)
	sw $t0, -868($fp)
	lw $t1, -868($fp)
	li $t2, 0
	bne $t1, $t2, label778
	j label780
label780:
	lw $t0, -144($fp)
	sw $t0, -872($fp)
	lw $t1, -872($fp)
	li $t2, 0
	bne $t1, $t2, label778
	j label779
label778:
	li $t0, 1
	sw $t0, -860($fp)
label779:
	li $t0, 57219
	sw $t0, -876($fp)
	li $t0, 1291
	sw $t0, -880($fp)
	lw $t0, -876($fp)
	lw $t1, -880($fp)
	mul $t0, $t0, $t1
	sw $t0, -884($fp)
	li $t0, 60959
	sw $t0, -888($fp)
	lw $t0, -884($fp)
	lw $t1, -888($fp)
	add $t0, $t0, $t1
	sw $t0, -892($fp)
	li $t0, 0
	sw $t0, -896($fp)
	li $t0, 27408
	sw $t0, -900($fp)
	lw $t0, -276($fp)
	sw $t0, -904($fp)
	lw $t0, -900($fp)
	lw $t1, -904($fp)
	add $t0, $t0, $t1
	sw $t0, -908($fp)
	li $t0, 56403
	sw $t0, -912($fp)
	lw $t1, -908($fp)
	lw $t2, -912($fp)
	beq $t1, $t2, label782
	j label783
label782:
	li $t0, 1
	sw $t0, -896($fp)
label783:
	li $t0, 0
	sw $t0, -916($fp)
	li $t0, 48202
	sw $t0, -920($fp)
	lw $t0, -132($fp)
	sw $t0, -924($fp)
	lw $t1, -920($fp)
	lw $t2, -924($fp)
	beq $t1, $t2, label786
	j label785
label786:
	lw $t0, -276($fp)
	sw $t0, -928($fp)
	lw $t1, -928($fp)
	li $t2, 0
	bne $t1, $t2, label784
	j label785
label784:
	li $t0, 1
	sw $t0, -916($fp)
label785:
	li $t0, 11532
	sw $t0, -932($fp)
	li $t0, 50365
	sw $t0, -936($fp)
	lw $t0, -932($fp)
	lw $t1, -936($fp)
	add $t0, $t0, $t1
	sw $t0, -940($fp)
	addi $sp, $sp, -4
	lw $t0, -896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -940($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -944($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -948($fp)
	li $t0, 0
	sw $t0, -952($fp)
	li $t0, 8084
	sw $t0, -956($fp)
	li $t0, 18462
	sw $t0, -960($fp)
	lw $t1, -956($fp)
	lw $t2, -960($fp)
	bne $t1, $t2, label790
	j label791
label790:
	li $t0, 1
	sw $t0, -952($fp)
label791:
	lw $t0, -192($fp)
	sw $t0, -964($fp)
	lw $t0, -120($fp)
	sw $t0, -968($fp)
	lw $t0, -964($fp)
	lw $t1, -968($fp)
	sub $t0, $t0, $t1
	sw $t0, -972($fp)
	li $t0, 16845
	sw $t0, -976($fp)
	lw $t0, -156($fp)
	sw $t0, -980($fp)
	lw $t0, -976($fp)
	lw $t1, -980($fp)
	mul $t0, $t0, $t1
	sw $t0, -984($fp)
	li $t0, 0
	sw $t0, -988($fp)
	li $t0, 53900
	sw $t0, -992($fp)
	lw $t0, -204($fp)
	sw $t0, -996($fp)
	lw $t1, -992($fp)
	lw $t2, -996($fp)
	bne $t1, $t2, label794
	j label793
label794:
	lw $t0, -276($fp)
	sw $t0, -1000($fp)
	lw $t1, -1000($fp)
	li $t2, 0
	bne $t1, $t2, label792
	j label793
label792:
	li $t0, 1
	sw $t0, -988($fp)
label793:
	li $t0, 0
	sw $t0, -1004($fp)
	lw $t0, -264($fp)
	sw $t0, -1008($fp)
	li $t0, 42813
	sw $t0, -1012($fp)
	lw $t1, -1008($fp)
	lw $t2, -1012($fp)
	bne $t1, $t2, label795
	j label796
label795:
	li $t0, 1
	sw $t0, -1004($fp)
label796:
	addi $sp, $sp, -4
	lw $t0, -952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1004($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1016($fp)
	addi $sp, $sp, 24
	lw $t1, -1016($fp)
	li $t2, 0
	bne $t1, $t2, label789
	j label788
label789:
	lw $t0, -168($fp)
	sw $t0, -1020($fp)
	lw $t1, -1020($fp)
	li $t2, 0
	bne $t1, $t2, label787
	j label788
label787:
	li $t0, 1
	sw $t0, -948($fp)
label788:
	li $t0, 0
	sw $t0, -1024($fp)
	li $t0, 0
	sw $t0, -1028($fp)
	li $t0, 934
	sw $t0, -1032($fp)
	lw $t1, -1032($fp)
	li $t2, 0
	bne $t1, $t2, label799
	j label802
label802:
	li $t0, 29184
	sw $t0, -1036($fp)
	lw $t1, -1036($fp)
	li $t2, 0
	bne $t1, $t2, label799
	j label801
label801:
	li $t0, 41666
	sw $t0, -1040($fp)
	lw $t1, -1040($fp)
	li $t2, 0
	bne $t1, $t2, label799
	j label800
label799:
	li $t0, 1
	sw $t0, -1028($fp)
label800:
	lw $t0, -180($fp)
	sw $t0, -1044($fp)
	lw $t0, -288($fp)
	sw $t0, -1048($fp)
	lw $t0, -1044($fp)
	lw $t1, -1048($fp)
	mul $t0, $t0, $t1
	sw $t0, -1052($fp)
	lw $t0, -264($fp)
	sw $t0, -1056($fp)
	lw $t0, -1052($fp)
	lw $t1, -1056($fp)
	mul $t0, $t0, $t1
	sw $t0, -1060($fp)
	li $t0, 0
	sw $t0, -1064($fp)
	li $t0, 45857
	sw $t0, -1068($fp)
	li $t0, 0
	lw $t1, -1068($fp)
	sub $t0, $t0, $t1
	sw $t0, -1072($fp)
	li $t0, 17584
	sw $t0, -1076($fp)
	lw $t1, -1072($fp)
	lw $t2, -1076($fp)
	beq $t1, $t2, label803
	j label804
label803:
	li $t0, 1
	sw $t0, -1064($fp)
label804:
	li $t0, 0
	sw $t0, -1080($fp)
	li $t0, 62686
	sw $t0, -1084($fp)
	li $t0, 58696
	sw $t0, -1088($fp)
	lw $t0, -1084($fp)
	lw $t1, -1088($fp)
	add $t0, $t0, $t1
	sw $t0, -1092($fp)
	lw $t1, -1092($fp)
	li $t2, 0
	bne $t1, $t2, label807
	j label806
label807:
	lw $t0, -240($fp)
	sw $t0, -1096($fp)
	lw $t1, -1096($fp)
	li $t2, 0
	bne $t1, $t2, label805
	j label806
label805:
	li $t0, 1
	sw $t0, -1080($fp)
label806:
	addi $sp, $sp, -4
	lw $t0, -1028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1080($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1100($fp)
	addi $sp, $sp, 20
	lw $t1, -1100($fp)
	li $t2, 0
	bne $t1, $t2, label798
	j label797
label797:
	li $t0, 1
	sw $t0, -1024($fp)
label798:
	addi $sp, $sp, -4
	lw $t0, -860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1024($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1104($fp)
	addi $sp, $sp, 24
	lw $t1, -856($fp)
	lw $t2, -1104($fp)
	ble $t1, $t2, label769
	j label770
label769:
	li $t0, 1
	sw $t0, -804($fp)
label770:
	addi $t0, $fp, -16
	sw $t0, -1108($fp)
	li $t0, 0
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
	addi $t0, $fp, -16
	sw $t0, -1128($fp)
	li $t0, 1
	sw $t0, -1132($fp)
	li $t0, 4
	lw $t1, -1132($fp)
	mul $t0, $t0, $t1
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	lw $t1, -1128($fp)
	add $t0, $t0, $t1
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	lw $t1, 0($t0)
	sw $t1, -1144($fp)
	lw $t0, -1144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -1148($fp)
	li $t0, 2
	sw $t0, -1152($fp)
	li $t0, 4
	lw $t1, -1152($fp)
	mul $t0, $t0, $t1
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	lw $t1, -1148($fp)
	add $t0, $t0, $t1
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	lw $t1, 0($t0)
	sw $t1, -1164($fp)
	lw $t0, -1164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -156($fp)
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -168($fp)
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -204($fp)
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -216($fp)
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -228($fp)
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -240($fp)
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -252($fp)
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -264($fp)
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -276($fp)
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -288($fp)
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 52443
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -1240($fp)
	li $t0, 0
	sw $t0, -1244($fp)
	lw $t0, -252($fp)
	sw $t0, -1248($fp)
	lw $t1, -1248($fp)
	li $t2, 0
	bne $t1, $t2, label809
	j label808
label808:
	li $t0, 1
	sw $t0, -1244($fp)
label809:
	li $t0, 0
	lw $t1, -1244($fp)
	sub $t0, $t0, $t1
	sw $t0, -1252($fp)
	li $t0, 6996
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -1260($fp)
	li $t0, 0
	sw $t0, -1264($fp)
	lw $t0, -168($fp)
	sw $t0, -1268($fp)
	li $t0, 47242
	sw $t0, -1272($fp)
	lw $t0, -1268($fp)
	lw $t1, -1272($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1276($fp)
	lw $t0, -264($fp)
	sw $t0, -1280($fp)
	lw $t1, -1276($fp)
	lw $t2, -1280($fp)
	bgt $t1, $t2, label810
	j label811
label810:
	li $t0, 1
	sw $t0, -1264($fp)
label811:
	addi $sp, $sp, -4
	lw $t0, -1240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1264($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1284($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -1284($fp)
	sub $t0, $t0, $t1
	sw $t0, -1288($fp)
	lw $ra, -4($fp)
	lw $v0, -1288($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2864
	li $t0, 18507
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	li $t0, 17794
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	li $t0, 31670
	sw $t0, -112($fp)
	addi $t0, $fp, -40
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
	li $t0, 45027
	sw $t0, -136($fp)
	addi $t0, $fp, -40
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
	li $t0, 61064
	sw $t0, -160($fp)
	addi $t0, $fp, -40
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
	li $t0, 39730
	sw $t0, -184($fp)
	addi $t0, $fp, -40
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
	li $t0, 33137
	sw $t0, -208($fp)
	addi $t0, $fp, -40
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
	li $t0, 58214
	sw $t0, -232($fp)
	addi $t0, $fp, -40
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
	li $t0, 32890
	sw $t0, -256($fp)
	addi $t0, $fp, -40
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
	li $t0, 13459
	sw $t0, -280($fp)
	addi $t0, $fp, -40
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
	li $t0, 10262
	sw $t0, -304($fp)
	addi $t0, $fp, -40
	sw $t0, -308($fp)
	li $t0, 8
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
	li $t0, 33825
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -336($fp)
	li $t0, 42643
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -348($fp)
	li $t0, 51929
	sw $t0, -352($fp)
	addi $t0, $fp, -52
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
	li $t0, 11102
	sw $t0, -376($fp)
	addi $t0, $fp, -52
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
	li $t0, 31008
	sw $t0, -400($fp)
	addi $t0, $fp, -52
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
	li $t0, 3238
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	li $t0, 19186
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	li $t0, 49470
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	li $t0, 14770
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	li $t0, 4015
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	li $t0, 32137
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
	li $t0, 42178
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
	li $t0, 60418
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
	li $t0, 23820
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
	li $t0, 43470
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
	li $t0, 55841
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
	li $t0, 26968
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
	li $t0, 25176
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
	li $t0, 62838
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, -684($fp)
	li $t0, 13876
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	sw $t0, -696($fp)
	li $t0, 43683
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -708($fp)
	li $t0, 15096
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -720($fp)
	li $t0, 45546
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	sw $t0, -732($fp)
	li $t0, 23174
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	sw $t0, -744($fp)
	li $t0, 10625
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	sw $t0, -756($fp)
	lw $t0, -692($fp)
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -704($fp)
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -716($fp)
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -728($fp)
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -740($fp)
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -752($fp)
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -784($fp)
	lw $t0, -692($fp)
	sw $t0, -788($fp)
	lw $t0, -692($fp)
	sw $t0, -792($fp)
	lw $t0, -788($fp)
	lw $t1, -792($fp)
	mul $t0, $t0, $t1
	sw $t0, -796($fp)
	lw $t0, -428($fp)
	sw $t0, -800($fp)
	lw $t0, -104($fp)
	sw $t0, -804($fp)
	lw $t0, -92($fp)
	sw $t0, -808($fp)
	lw $t0, -804($fp)
	lw $t1, -808($fp)
	mul $t0, $t0, $t1
	sw $t0, -812($fp)
	li $t0, 0
	sw $t0, -816($fp)
	li $t0, 19740
	sw $t0, -820($fp)
	li $t0, 56312
	sw $t0, -824($fp)
	lw $t0, -820($fp)
	lw $t1, -824($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -828($fp)
	li $t0, 3303
	sw $t0, -832($fp)
	lw $t1, -828($fp)
	lw $t2, -832($fp)
	ble $t1, $t2, label814
	j label815
label814:
	li $t0, 1
	sw $t0, -816($fp)
label815:
	addi $sp, $sp, -4
	lw $t0, -796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -816($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -836($fp)
	addi $sp, $sp, 20
	li $t0, 52631
	sw $t0, -840($fp)
	lw $t0, -836($fp)
	lw $t1, -840($fp)
	sub $t0, $t0, $t1
	sw $t0, -844($fp)
	lw $t0, -716($fp)
	sw $t0, -848($fp)
	li $t0, 0
	lw $t1, -848($fp)
	sub $t0, $t0, $t1
	sw $t0, -852($fp)
	lw $t1, -844($fp)
	lw $t2, -852($fp)
	ble $t1, $t2, label812
	j label813
label812:
	li $t0, 1
	sw $t0, -784($fp)
label813:
	lw $t0, -784($fp)
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	sw $t0, -856($fp)
	lw $ra, -4($fp)
	lw $v0, -856($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 4235
	sw $t0, -908($fp)
	addi $t0, $fp, -880
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
	li $t0, 13566
	sw $t0, -932($fp)
	addi $t0, $fp, -880
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
	li $t0, 20920
	sw $t0, -956($fp)
	addi $t0, $fp, -880
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
	li $t0, 46878
	sw $t0, -980($fp)
	addi $t0, $fp, -880
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
	li $t0, 65495
	sw $t0, -1004($fp)
	addi $t0, $fp, -880
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
	li $t0, 32022
	sw $t0, -1028($fp)
	addi $t0, $fp, -880
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
	li $t0, 12350
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	sw $t0, -1060($fp)
	li $t0, 3197
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	sw $t0, -1072($fp)
	li $t0, 51209
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	sw $t0, -1084($fp)
	li $t0, 61821
	sw $t0, -1088($fp)
	addi $t0, $fp, -904
	sw $t0, -1092($fp)
	li $t0, 0
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
	li $t0, 17968
	sw $t0, -1112($fp)
	addi $t0, $fp, -904
	sw $t0, -1116($fp)
	li $t0, 1
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
	li $t0, 55224
	sw $t0, -1136($fp)
	addi $t0, $fp, -904
	sw $t0, -1140($fp)
	li $t0, 2
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
	li $t0, 28422
	sw $t0, -1160($fp)
	addi $t0, $fp, -904
	sw $t0, -1164($fp)
	li $t0, 3
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
	li $t0, 60146
	sw $t0, -1184($fp)
	addi $t0, $fp, -904
	sw $t0, -1188($fp)
	li $t0, 4
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
	li $t0, 50107
	sw $t0, -1208($fp)
	addi $t0, $fp, -904
	sw $t0, -1212($fp)
	li $t0, 5
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
	li $t0, 0
	sw $t0, -1232($fp)
	li $t0, 0
	sw $t0, -1236($fp)
	lw $t0, -428($fp)
	sw $t0, -1240($fp)
	addi $t0, $fp, -904
	sw $t0, -1244($fp)
	lw $t0, -1080($fp)
	sw $t0, -1248($fp)
	li $t0, 4
	lw $t1, -1248($fp)
	mul $t0, $t0, $t1
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	lw $t1, -1244($fp)
	add $t0, $t0, $t1
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	lw $t1, 0($t0)
	sw $t1, -1260($fp)
	lw $t0, -1240($fp)
	lw $t1, -1260($fp)
	mul $t0, $t0, $t1
	sw $t0, -1264($fp)
	li $t0, 0
	lw $t1, -1264($fp)
	sub $t0, $t0, $t1
	sw $t0, -1268($fp)
	lw $t1, -1268($fp)
	li $t2, 0
	bne $t1, $t2, label819
	j label818
label818:
	li $t0, 1
	sw $t0, -1236($fp)
label819:
	li $t0, 0
	lw $t1, -1236($fp)
	sub $t0, $t0, $t1
	sw $t0, -1272($fp)
	li $t0, 0
	sw $t0, -1276($fp)
	li $t0, 52242
	sw $t0, -1280($fp)
	lw $t1, -1280($fp)
	li $t2, 0
	bne $t1, $t2, label821
	j label820
label820:
	li $t0, 1
	sw $t0, -1276($fp)
label821:
	li $t0, 38080
	sw $t0, -1284($fp)
	lw $t0, -1276($fp)
	lw $t1, -1284($fp)
	mul $t0, $t0, $t1
	sw $t0, -1288($fp)
	lw $t1, -1272($fp)
	lw $t2, -1288($fp)
	beq $t1, $t2, label816
	j label817
label816:
	li $t0, 1
	sw $t0, -1232($fp)
label817:
	li $t0, 0
	sw $t0, -1292($fp)
	li $t0, 27301
	sw $t0, -1296($fp)
	li $t0, 0
	sw $t0, -1300($fp)
	addi $t0, $fp, -40
	sw $t0, -1304($fp)
	lw $t0, -92($fp)
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
	li $t0, 63436
	sw $t0, -1324($fp)
	lw $t0, -1320($fp)
	lw $t1, -1324($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1328($fp)
	li $t0, 0
	sw $t0, -1332($fp)
	li $t0, 64578
	sw $t0, -1336($fp)
	lw $t1, -1336($fp)
	li $t2, 0
	bne $t1, $t2, label828
	j label826
label828:
	lw $t0, 8($fp)
	sw $t0, -1340($fp)
	lw $t1, -1340($fp)
	li $t2, 0
	bne $t1, $t2, label826
	j label827
label826:
	li $t0, 1
	sw $t0, -1332($fp)
label827:
	li $t0, 0
	sw $t0, -1344($fp)
	lw $t0, -344($fp)
	sw $t0, -1348($fp)
	li $t0, 7560
	sw $t0, -1352($fp)
	lw $t0, -1348($fp)
	lw $t1, -1352($fp)
	sub $t0, $t0, $t1
	sw $t0, -1356($fp)
	lw $t1, -1356($fp)
	li $t2, 0
	bne $t1, $t2, label831
	j label830
label831:
	lw $t0, -452($fp)
	sw $t0, -1360($fp)
	lw $t1, -1360($fp)
	li $t2, 0
	bne $t1, $t2, label829
	j label830
label829:
	li $t0, 1
	sw $t0, -1344($fp)
label830:
	li $t0, 0
	sw $t0, -1364($fp)
	lw $t0, -1068($fp)
	sw $t0, -1368($fp)
	lw $t0, -428($fp)
	sw $t0, -1372($fp)
	lw $t0, -1368($fp)
	lw $t1, -1372($fp)
	sub $t0, $t0, $t1
	sw $t0, -1376($fp)
	lw $t1, -1376($fp)
	li $t2, 0
	bne $t1, $t2, label834
	j label833
label834:
	li $t0, 52811
	sw $t0, -1380($fp)
	lw $t1, -1380($fp)
	li $t2, 0
	bne $t1, $t2, label832
	j label833
label832:
	li $t0, 1
	sw $t0, -1364($fp)
label833:
	li $t0, 0
	sw $t0, -1384($fp)
	li $t0, 27550
	sw $t0, -1388($fp)
	li $t0, 41404
	sw $t0, -1392($fp)
	lw $t0, -1388($fp)
	lw $t1, -1392($fp)
	add $t0, $t0, $t1
	sw $t0, -1396($fp)
	lw $t0, 16($fp)
	sw $t0, -1400($fp)
	lw $t1, -1396($fp)
	lw $t2, -1400($fp)
	blt $t1, $t2, label835
	j label836
label835:
	li $t0, 1
	sw $t0, -1384($fp)
label836:
	addi $sp, $sp, -4
	lw $t0, -1328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1384($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1404($fp)
	addi $sp, $sp, 24
	lw $t1, -1404($fp)
	li $t2, 0
	bne $t1, $t2, label825
	j label824
label824:
	li $t0, 1
	sw $t0, -1300($fp)
label825:
	li $t0, 0
	sw $t0, -1408($fp)
	lw $t0, -428($fp)
	sw $t0, -1412($fp)
	li $t0, 0
	lw $t1, -1412($fp)
	sub $t0, $t0, $t1
	sw $t0, -1416($fp)
	lw $t1, -1416($fp)
	li $t2, 0
	bne $t1, $t2, label839
	j label838
label839:
	li $t0, 37714
	sw $t0, -1420($fp)
	lw $t1, -1420($fp)
	li $t2, 0
	bne $t1, $t2, label837
	j label838
label837:
	li $t0, 1
	sw $t0, -1408($fp)
label838:
	addi $t0, $fp, -880
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
	li $t0, 0
	sw $t0, -1444($fp)
	lw $t0, -716($fp)
	sw $t0, -1448($fp)
	lw $t1, -1448($fp)
	li $t2, 0
	bne $t1, $t2, label843
	j label842
label843:
	lw $t0, 12($fp)
	sw $t0, -1452($fp)
	lw $t1, -1452($fp)
	li $t2, 0
	bne $t1, $t2, label840
	j label842
label842:
	li $t0, 40412
	sw $t0, -1456($fp)
	lw $t1, -1456($fp)
	li $t2, 0
	bne $t1, $t2, label840
	j label841
label840:
	li $t0, 1
	sw $t0, -1444($fp)
label841:
	addi $sp, $sp, -4
	lw $t0, -1296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1444($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1460($fp)
	addi $sp, $sp, 24
	lw $t1, -1460($fp)
	li $t2, 0
	bne $t1, $t2, label823
	j label822
label822:
	li $t0, 1
	sw $t0, -1292($fp)
label823:
	li $t0, 0
	sw $t0, -1464($fp)
	lw $t0, 16($fp)
	sw $t0, -1468($fp)
	lw $t0, -692($fp)
	sw $t0, -1472($fp)
	lw $t0, -1468($fp)
	lw $t1, -1472($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1476($fp)
	lw $t1, -1476($fp)
	li $t2, 0
	bne $t1, $t2, label846
	j label845
label846:
	lw $t0, 8($fp)
	sw $t0, -1480($fp)
	lw $t1, -1480($fp)
	li $t2, 0
	bne $t1, $t2, label844
	j label845
label844:
	li $t0, 1
	sw $t0, -1464($fp)
label845:
	li $t0, 0
	sw $t0, -1484($fp)
	li $t0, 59589
	sw $t0, -1488($fp)
	lw $t0, -92($fp)
	sw $t0, -1492($fp)
	lw $t0, -1488($fp)
	lw $t1, -1492($fp)
	mul $t0, $t0, $t1
	sw $t0, -1496($fp)
	lw $t1, -1496($fp)
	li $t2, 0
	bne $t1, $t2, label849
	j label848
label849:
	lw $t0, 4($fp)
	sw $t0, -1500($fp)
	lw $t1, -1500($fp)
	li $t2, 0
	bne $t1, $t2, label847
	j label848
label847:
	li $t0, 1
	sw $t0, -1484($fp)
label848:
	li $t0, 0
	sw $t0, -1504($fp)
	addi $t0, $fp, -880
	sw $t0, -1508($fp)
	li $t0, 5
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
	lw $t1, -1524($fp)
	li $t2, 0
	bne $t1, $t2, label852
	j label851
label852:
	li $t0, 14396
	sw $t0, -1528($fp)
	lw $t1, -1528($fp)
	li $t2, 0
	bne $t1, $t2, label850
	j label851
label850:
	li $t0, 1
	sw $t0, -1504($fp)
label851:
	lw $t0, -332($fp)
	sw $t0, -1532($fp)
	li $t0, 0
	lw $t1, -1532($fp)
	sub $t0, $t0, $t1
	sw $t0, -1536($fp)
	addi $sp, $sp, -4
	lw $t0, -1464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1536($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1540($fp)
	addi $sp, $sp, 20
	lw $t0, -1292($fp)
	lw $t1, -1540($fp)
	mul $t0, $t0, $t1
	sw $t0, -1544($fp)
	li $t0, 0
	lw $t1, -1544($fp)
	sub $t0, $t0, $t1
	sw $t0, -1548($fp)
	li $t0, 0
	sw $t0, -1552($fp)
	li $t0, 35316
	sw $t0, -1556($fp)
	li $t0, 40932
	sw $t0, -1560($fp)
	lw $t1, -1556($fp)
	lw $t2, -1560($fp)
	bge $t1, $t2, label855
	j label854
label855:
	li $t0, 14728
	sw $t0, -1564($fp)
	lw $t1, -1564($fp)
	li $t2, 0
	bne $t1, $t2, label853
	j label854
label853:
	li $t0, 1
	sw $t0, -1552($fp)
label854:
	li $t0, 0
	sw $t0, -1568($fp)
	li $t0, 14769
	sw $t0, -1572($fp)
	lw $t0, -104($fp)
	sw $t0, -1576($fp)
	lw $t1, -1572($fp)
	lw $t2, -1576($fp)
	ble $t1, $t2, label858
	j label857
label858:
	lw $t0, -1056($fp)
	sw $t0, -1580($fp)
	lw $t1, -1580($fp)
	li $t2, 0
	bne $t1, $t2, label856
	j label857
label856:
	li $t0, 1
	sw $t0, -1568($fp)
label857:
	lw $t0, -104($fp)
	sw $t0, -1584($fp)
	lw $t0, -1584($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -1588($fp)
	addi $sp, $sp, -4
	lw $t0, -1552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1588($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1592($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -1592($fp)
	sub $t0, $t0, $t1
	sw $t0, -1596($fp)
	lw $t0, -692($fp)
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -704($fp)
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -716($fp)
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -728($fp)
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -740($fp)
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -752($fp)
	sw $t0, -1620($fp)
	lw $t0, -1620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1624($fp)
	li $t0, 0
	sw $t0, -1628($fp)
	lw $t0, -752($fp)
	sw $t0, -1632($fp)
	lw $t1, -1632($fp)
	li $t2, 0
	bne $t1, $t2, label862
	j label861
label861:
	li $t0, 1
	sw $t0, -1628($fp)
label862:
	li $t0, 0
	sw $t0, -1636($fp)
	li $t0, 1802
	sw $t0, -1640($fp)
	lw $t1, -1640($fp)
	li $t2, 0
	bne $t1, $t2, label864
	j label863
label863:
	li $t0, 1
	sw $t0, -1636($fp)
label864:
	lw $t0, -1628($fp)
	lw $t1, -1636($fp)
	mul $t0, $t0, $t1
	sw $t0, -1644($fp)
	li $t0, 0
	sw $t0, -1648($fp)
	jal f6
	sw $v0, -1652($fp)
	addi $sp, $sp, 4
	li $t0, 30504
	sw $t0, -1656($fp)
	lw $t0, -1652($fp)
	lw $t1, -1656($fp)
	add $t0, $t0, $t1
	sw $t0, -1660($fp)
	li $t0, 0
	sw $t0, -1664($fp)
	li $t0, 42700
	sw $t0, -1668($fp)
	lw $t0, -104($fp)
	sw $t0, -1672($fp)
	lw $t0, -1668($fp)
	lw $t1, -1672($fp)
	mul $t0, $t0, $t1
	sw $t0, -1676($fp)
	lw $t0, 12($fp)
	sw $t0, -1680($fp)
	lw $t0, -1676($fp)
	lw $t1, -1680($fp)
	mul $t0, $t0, $t1
	sw $t0, -1684($fp)
	lw $t0, -92($fp)
	sw $t0, -1688($fp)
	li $t0, 0
	sw $t0, -1692($fp)
	lw $t0, -452($fp)
	sw $t0, -1696($fp)
	li $t0, 49567
	sw $t0, -1700($fp)
	lw $t1, -1696($fp)
	lw $t2, -1700($fp)
	beq $t1, $t2, label871
	j label870
label871:
	li $t0, 35894
	sw $t0, -1704($fp)
	lw $t1, -1704($fp)
	li $t2, 0
	bne $t1, $t2, label869
	j label870
label869:
	li $t0, 1
	sw $t0, -1692($fp)
label870:
	li $t0, 0
	sw $t0, -1708($fp)
	lw $t0, -344($fp)
	sw $t0, -1712($fp)
	li $t0, 0
	lw $t1, -1712($fp)
	sub $t0, $t0, $t1
	sw $t0, -1716($fp)
	lw $t1, -1716($fp)
	li $t2, 0
	bne $t1, $t2, label873
	j label872
label872:
	li $t0, 1
	sw $t0, -1708($fp)
label873:
	addi $sp, $sp, -4
	lw $t0, -1684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1708($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1720($fp)
	addi $sp, $sp, 20
	lw $t0, -92($fp)
	sw $t0, -1724($fp)
	lw $t1, -1720($fp)
	lw $t2, -1724($fp)
	beq $t1, $t2, label867
	j label868
label867:
	li $t0, 1
	sw $t0, -1664($fp)
label868:
	li $t0, 0
	sw $t0, -1728($fp)
	lw $t0, -344($fp)
	sw $t0, -1732($fp)
	lw $t0, 16($fp)
	sw $t0, -1736($fp)
	lw $t1, -1732($fp)
	lw $t2, -1736($fp)
	bgt $t1, $t2, label874
	j label875
label874:
	li $t0, 1
	sw $t0, -1728($fp)
label875:
	li $t0, 0
	sw $t0, -1740($fp)
	lw $t0, 12($fp)
	sw $t0, -1744($fp)
	lw $t0, -332($fp)
	sw $t0, -1748($fp)
	lw $t1, -1744($fp)
	lw $t2, -1748($fp)
	bge $t1, $t2, label876
	j label877
label876:
	li $t0, 1
	sw $t0, -1740($fp)
label877:
	addi $sp, $sp, -4
	lw $t0, -1664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1740($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1752($fp)
	addi $sp, $sp, 16
	li $t0, 12453
	sw $t0, -1756($fp)
	lw $t0, -1752($fp)
	lw $t1, -1756($fp)
	mul $t0, $t0, $t1
	sw $t0, -1760($fp)
	addi $t0, $fp, -40
	sw $t0, -1764($fp)
	lw $t0, -680($fp)
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
	li $t0, 0
	sw $t0, -1784($fp)
	li $t0, 53282
	sw $t0, -1788($fp)
	li $t0, 17926
	sw $t0, -1792($fp)
	lw $t0, -1788($fp)
	lw $t1, -1792($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1796($fp)
	li $t0, 53011
	sw $t0, -1800($fp)
	lw $t1, -1796($fp)
	lw $t2, -1800($fp)
	ble $t1, $t2, label878
	j label879
label878:
	li $t0, 1
	sw $t0, -1784($fp)
label879:
	addi $sp, $sp, -4
	lw $t0, -1660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1784($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1804($fp)
	addi $sp, $sp, 20
	lw $t1, -1804($fp)
	li $t2, 0
	bne $t1, $t2, label866
	j label865
label865:
	li $t0, 1
	sw $t0, -1648($fp)
label866:
	addi $t0, $fp, -52
	sw $t0, -1808($fp)
	lw $t0, 12($fp)
	sw $t0, -1812($fp)
	li $t0, 4
	lw $t1, -1812($fp)
	mul $t0, $t0, $t1
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	lw $t1, -1808($fp)
	add $t0, $t0, $t1
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	lw $t1, 0($t0)
	sw $t1, -1824($fp)
	lw $t0, -1648($fp)
	lw $t1, -1824($fp)
	mul $t0, $t0, $t1
	sw $t0, -1828($fp)
	lw $t1, -1644($fp)
	lw $t2, -1828($fp)
	bge $t1, $t2, label859
	j label860
label859:
	li $t0, 1
	sw $t0, -1624($fp)
label860:
	lw $ra, -4($fp)
	lw $v0, -1624($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 27271
	sw $t0, -1832($fp)
	lw $t0, 16($fp)
	sw $t0, -1836($fp)
	li $t0, 0
	sw $t0, -1840($fp)
	lw $t0, -716($fp)
	sw $t0, -1844($fp)
	lw $t1, -1844($fp)
	li $t2, 0
	bne $t1, $t2, label881
	j label880
label880:
	li $t0, 1
	sw $t0, -1840($fp)
label881:
	lw $t0, -1836($fp)
	lw $t1, -1840($fp)
	mul $t0, $t0, $t1
	sw $t0, -1848($fp)
	lw $t0, -1832($fp)
	lw $t1, -1848($fp)
	sub $t0, $t0, $t1
	sw $t0, -1852($fp)
label882:
	li $t0, 64695
	sw $t0, -1856($fp)
	li $t0, 0
	lw $t1, -1856($fp)
	sub $t0, $t0, $t1
	sw $t0, -1860($fp)
	addi $t0, $fp, -52
	sw $t0, -1864($fp)
	li $t0, 1
	sw $t0, -1868($fp)
	li $t0, 4
	lw $t1, -1868($fp)
	mul $t0, $t0, $t1
	sw $t0, -1872($fp)
	lw $t0, -1872($fp)
	lw $t1, -1864($fp)
	add $t0, $t0, $t1
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	lw $t1, 0($t0)
	sw $t1, -1880($fp)
	li $t0, 0
	sw $t0, -1884($fp)
	li $t0, 769
	sw $t0, -1888($fp)
	li $t0, 39862
	sw $t0, -1892($fp)
	lw $t1, -1888($fp)
	lw $t2, -1892($fp)
	bgt $t1, $t2, label887
	j label886
label887:
	li $t0, 40384
	sw $t0, -1896($fp)
	lw $t1, -1896($fp)
	li $t2, 0
	bne $t1, $t2, label885
	j label886
label885:
	li $t0, 1
	sw $t0, -1884($fp)
label886:
	li $t0, 0
	sw $t0, -1900($fp)
	li $t0, 12834
	sw $t0, -1904($fp)
	lw $t0, -452($fp)
	sw $t0, -1908($fp)
	lw $t1, -1904($fp)
	lw $t2, -1908($fp)
	ble $t1, $t2, label888
	j label889
label888:
	li $t0, 1
	sw $t0, -1900($fp)
label889:
	li $t0, 0
	sw $t0, -1912($fp)
	lw $t0, -704($fp)
	sw $t0, -1916($fp)
	li $t0, 0
	lw $t1, -1916($fp)
	sub $t0, $t0, $t1
	sw $t0, -1920($fp)
	lw $t0, -692($fp)
	sw $t0, -1924($fp)
	lw $t1, -1920($fp)
	lw $t2, -1924($fp)
	bgt $t1, $t2, label890
	j label891
label890:
	li $t0, 1
	sw $t0, -1912($fp)
label891:
	li $t0, 0
	sw $t0, -1928($fp)
	lw $t0, -452($fp)
	sw $t0, -1932($fp)
	li $t0, 3049
	sw $t0, -1936($fp)
	lw $t1, -1932($fp)
	lw $t2, -1936($fp)
	bge $t1, $t2, label894
	j label893
label894:
	li $t0, 2147
	sw $t0, -1940($fp)
	lw $t1, -1940($fp)
	li $t2, 0
	bne $t1, $t2, label892
	j label893
label892:
	li $t0, 1
	sw $t0, -1928($fp)
label893:
	addi $sp, $sp, -4
	lw $t0, -1880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1928($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1944($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -1948($fp)
	li $t0, 0
	sw $t0, -1952($fp)
	li $t0, 61224
	sw $t0, -1956($fp)
	li $t0, 53766
	sw $t0, -1960($fp)
	lw $t1, -1956($fp)
	lw $t2, -1960($fp)
	bne $t1, $t2, label897
	j label898
label897:
	li $t0, 1
	sw $t0, -1952($fp)
label898:
	lw $t0, -740($fp)
	sw $t0, -1964($fp)
	lw $t1, -1952($fp)
	lw $t2, -1964($fp)
	beq $t1, $t2, label895
	j label896
label895:
	li $t0, 1
	sw $t0, -1948($fp)
label896:
	li $t0, 0
	sw $t0, -1968($fp)
	addi $t0, $fp, -84
	sw $t0, -1972($fp)
	lw $t0, 12($fp)
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
	lw $t1, -1988($fp)
	li $t2, 0
	bne $t1, $t2, label900
	j label899
label899:
	li $t0, 1
	sw $t0, -1968($fp)
label900:
	li $t0, 484
	sw $t0, -1992($fp)
	li $t0, 55738
	sw $t0, -1996($fp)
	lw $t0, -1992($fp)
	lw $t1, -1996($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2000($fp)
	lw $t0, -452($fp)
	sw $t0, -2004($fp)
	lw $t0, -2000($fp)
	lw $t1, -2004($fp)
	mul $t0, $t0, $t1
	sw $t0, -2008($fp)
	addi $t0, $fp, -40
	sw $t0, -2012($fp)
	lw $t0, 4($fp)
	sw $t0, -2016($fp)
	li $t0, 4
	lw $t1, -2016($fp)
	mul $t0, $t0, $t1
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	lw $t1, -2012($fp)
	add $t0, $t0, $t1
	sw $t0, -2024($fp)
	lw $t0, -2024($fp)
	lw $t1, 0($t0)
	sw $t1, -2028($fp)
	li $t0, 0
	sw $t0, -2032($fp)
	li $t0, 0
	sw $t0, -2036($fp)
	li $t0, 0
	sw $t0, -2040($fp)
	lw $t0, -344($fp)
	sw $t0, -2044($fp)
	li $t0, 41010
	sw $t0, -2048($fp)
	lw $t1, -2044($fp)
	lw $t2, -2048($fp)
	bge $t1, $t2, label905
	j label906
label905:
	li $t0, 1
	sw $t0, -2040($fp)
label906:
	lw $t0, -332($fp)
	sw $t0, -2052($fp)
	lw $t1, -2040($fp)
	lw $t2, -2052($fp)
	beq $t1, $t2, label903
	j label904
label903:
	li $t0, 1
	sw $t0, -2036($fp)
label904:
	li $t0, 25088
	sw $t0, -2056($fp)
	li $t0, 0
	sw $t0, -2060($fp)
	li $t0, 26240
	sw $t0, -2064($fp)
	li $t0, 24106
	sw $t0, -2068($fp)
	lw $t1, -2064($fp)
	lw $t2, -2068($fp)
	bgt $t1, $t2, label907
	j label908
label907:
	li $t0, 1
	sw $t0, -2060($fp)
label908:
	lw $t0, -332($fp)
	sw $t0, -2072($fp)
	addi $sp, $sp, -4
	lw $t0, -2036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2072($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2076($fp)
	addi $sp, $sp, 20
	li $t0, 59422
	sw $t0, -2080($fp)
	lw $t1, -2076($fp)
	lw $t2, -2080($fp)
	ble $t1, $t2, label901
	j label902
label901:
	li $t0, 1
	sw $t0, -2032($fp)
label902:
	addi $sp, $sp, -4
	lw $t0, -2008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2032($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2084($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -2088($fp)
	li $t0, 25037
	sw $t0, -2092($fp)
	li $t0, 9710
	sw $t0, -2096($fp)
	lw $t0, -2092($fp)
	lw $t1, -2096($fp)
	sub $t0, $t0, $t1
	sw $t0, -2100($fp)
	li $t0, 31034
	sw $t0, -2104($fp)
	lw $t1, -2100($fp)
	lw $t2, -2104($fp)
	beq $t1, $t2, label909
	j label910
label909:
	li $t0, 1
	sw $t0, -2088($fp)
label910:
	li $t0, 0
	sw $t0, -2108($fp)
	li $t0, 47945
	sw $t0, -2112($fp)
	li $t0, 41216
	sw $t0, -2116($fp)
	lw $t1, -2112($fp)
	lw $t2, -2116($fp)
	beq $t1, $t2, label911
	j label912
label911:
	li $t0, 1
	sw $t0, -2108($fp)
label912:
	addi $sp, $sp, -4
	lw $t0, -1948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2108($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2120($fp)
	addi $sp, $sp, 24
	lw $t0, -1944($fp)
	lw $t1, -2120($fp)
	mul $t0, $t0, $t1
	sw $t0, -2124($fp)
	lw $t1, -1860($fp)
	lw $t2, -2124($fp)
	bne $t1, $t2, label883
	j label884
label883:
	li $t0, 0
	sw $t0, -2128($fp)
	li $t0, 8128
	sw $t0, -2132($fp)
	lw $t1, -2132($fp)
	li $t2, 0
	bne $t1, $t2, label913
	j label914
label913:
	li $t0, 1
	sw $t0, -2128($fp)
label914:
	li $t0, 0
	lw $t1, -2128($fp)
	sub $t0, $t0, $t1
	sw $t0, -2136($fp)
	lw $ra, -4($fp)
	lw $v0, -2136($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label882
label884:
	addi $t0, $fp, -40
	sw $t0, -2140($fp)
	lw $t0, -428($fp)
	sw $t0, -2144($fp)
	lw $t0, -2144($fp)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -2148($fp)
	li $t0, 4
	lw $t1, -2148($fp)
	mul $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	lw $t1, -2140($fp)
	add $t0, $t0, $t1
	sw $t0, -2156($fp)
	lw $t0, -2156($fp)
	lw $t1, 0($t0)
	sw $t1, -2160($fp)
	li $t0, 0
	sw $t0, -2164($fp)
	jal f6
	sw $v0, -2168($fp)
	addi $sp, $sp, 4
	lw $t1, -2168($fp)
	li $t2, 0
	bne $t1, $t2, label916
	j label915
label915:
	li $t0, 1
	sw $t0, -2164($fp)
label916:
	li $t0, 25864
	sw $t0, -2172($fp)
	li $t0, 50251
	sw $t0, -2176($fp)
	lw $t0, -2172($fp)
	lw $t1, -2176($fp)
	sub $t0, $t0, $t1
	sw $t0, -2180($fp)
	li $t0, 0
	sw $t0, -2184($fp)
	li $t0, 0
	sw $t0, -2188($fp)
	li $t0, 44022
	sw $t0, -2192($fp)
	lw $t1, -2192($fp)
	li $t2, 0
	bne $t1, $t2, label920
	j label919
label919:
	li $t0, 1
	sw $t0, -2188($fp)
label920:
	lw $t0, -332($fp)
	sw $t0, -2196($fp)
	lw $t1, -2188($fp)
	lw $t2, -2196($fp)
	bgt $t1, $t2, label917
	j label918
label917:
	li $t0, 1
	sw $t0, -2184($fp)
label918:
	lw $t0, -104($fp)
	sw $t0, -2200($fp)
	li $t0, 0
	lw $t1, -2200($fp)
	sub $t0, $t0, $t1
	sw $t0, -2204($fp)
	li $t0, 0
	lw $t1, -2204($fp)
	sub $t0, $t0, $t1
	sw $t0, -2208($fp)
	li $t0, 0
	sw $t0, -2212($fp)
	li $t0, 48700
	sw $t0, -2216($fp)
	li $t0, 0
	lw $t1, -2216($fp)
	sub $t0, $t0, $t1
	sw $t0, -2220($fp)
	li $t0, 37798
	sw $t0, -2224($fp)
	lw $t1, -2220($fp)
	lw $t2, -2224($fp)
	bgt $t1, $t2, label921
	j label922
label921:
	li $t0, 1
	sw $t0, -2212($fp)
label922:
	addi $sp, $sp, -4
	lw $t0, -2164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2212($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2228($fp)
	addi $sp, $sp, 24
	lw $t0, -2160($fp)
	lw $t1, -2228($fp)
	sub $t0, $t0, $t1
	sw $t0, -2232($fp)
	li $t0, 0
	sw $t0, -2236($fp)
	li $t0, 8991
	sw $t0, -2240($fp)
	lw $t1, -2240($fp)
	li $t2, 0
	bne $t1, $t2, label924
	j label923
label923:
	li $t0, 1
	sw $t0, -2236($fp)
label924:
	lw $t0, -2232($fp)
	lw $t1, -2236($fp)
	sub $t0, $t0, $t1
	sw $t0, -2244($fp)
label925:
	li $t0, 53135
	sw $t0, -2248($fp)
	li $t0, 49411
	sw $t0, -2252($fp)
	lw $t0, -2248($fp)
	lw $t1, -2252($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2256($fp)
	lw $t1, -2256($fp)
	li $t2, 0
	bne $t1, $t2, label926
	j label927
label926:
	li $t0, 0
	sw $t0, -2260($fp)
	li $t0, 0
	sw $t0, -2264($fp)
	lw $t0, -332($fp)
	sw $t0, -2268($fp)
	lw $t0, -92($fp)
	sw $t0, -2272($fp)
	lw $t0, -2268($fp)
	lw $t1, -2272($fp)
	mul $t0, $t0, $t1
	sw $t0, -2276($fp)
	lw $t0, -344($fp)
	sw $t0, -2280($fp)
	lw $t1, -2276($fp)
	lw $t2, -2280($fp)
	blt $t1, $t2, label931
	j label932
label931:
	li $t0, 1
	sw $t0, -2264($fp)
label932:
	li $t0, 55282
	sw $t0, -2284($fp)
	li $t0, 62245
	sw $t0, -2288($fp)
	lw $t0, -2284($fp)
	lw $t1, -2288($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2292($fp)
	li $t0, 12809
	sw $t0, -2296($fp)
	lw $t0, -2292($fp)
	lw $t1, -2296($fp)
	sub $t0, $t0, $t1
	sw $t0, -2300($fp)
	li $t0, 0
	sw $t0, -2304($fp)
	li $t0, 12040
	sw $t0, -2308($fp)
	li $t0, 0
	lw $t1, -2308($fp)
	sub $t0, $t0, $t1
	sw $t0, -2312($fp)
	lw $t1, -2312($fp)
	li $t2, 0
	bne $t1, $t2, label934
	j label933
label933:
	li $t0, 1
	sw $t0, -2304($fp)
label934:
	li $t0, 0
	sw $t0, -2316($fp)
	lw $t0, -332($fp)
	sw $t0, -2320($fp)
	lw $t0, -428($fp)
	sw $t0, -2324($fp)
	lw $t0, -2320($fp)
	lw $t1, -2324($fp)
	mul $t0, $t0, $t1
	sw $t0, -2328($fp)
	lw $t0, -440($fp)
	sw $t0, -2332($fp)
	lw $t1, -2328($fp)
	lw $t2, -2332($fp)
	blt $t1, $t2, label935
	j label936
label935:
	li $t0, 1
	sw $t0, -2316($fp)
label936:
	lw $t0, -680($fp)
	sw $t0, -2336($fp)
	lw $t0, -2336($fp)
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -2340($fp)
	addi $sp, $sp, -4
	lw $t0, -2264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2340($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2344($fp)
	addi $sp, $sp, 24
	li $t0, 29608
	sw $t0, -2348($fp)
	lw $t0, -476($fp)
	sw $t0, -2352($fp)
	lw $t0, -2348($fp)
	lw $t1, -2352($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2356($fp)
	li $t0, 0
	lw $t1, -2356($fp)
	sub $t0, $t0, $t1
	sw $t0, -2360($fp)
	lw $t0, -2344($fp)
	lw $t1, -2360($fp)
	mul $t0, $t0, $t1
	sw $t0, -2364($fp)
	lw $t1, -2364($fp)
	li $t2, 0
	bne $t1, $t2, label930
	j label929
label930:
	addi $t0, $fp, -52
	sw $t0, -2368($fp)
	lw $t0, -344($fp)
	sw $t0, -2372($fp)
	li $t0, 4
	lw $t1, -2372($fp)
	mul $t0, $t0, $t1
	sw $t0, -2376($fp)
	lw $t0, -2376($fp)
	lw $t1, -2368($fp)
	add $t0, $t0, $t1
	sw $t0, -2380($fp)
	lw $t0, -2380($fp)
	lw $t1, 0($t0)
	sw $t1, -2384($fp)
	li $t0, 0
	lw $t1, -2384($fp)
	sub $t0, $t0, $t1
	sw $t0, -2388($fp)
	lw $t1, -2388($fp)
	li $t2, 0
	bne $t1, $t2, label928
	j label929
label928:
	li $t0, 1
	sw $t0, -2260($fp)
label929:
	lw $ra, -4($fp)
	lw $v0, -2260($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label925
label927:
	lw $t0, -92($fp)
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -104($fp)
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2400($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
	sw $t0, -2420($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -2440($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -2460($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -2480($fp)
	li $t0, 4
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
	addi $t0, $fp, -40
	sw $t0, -2500($fp)
	li $t0, 5
	sw $t0, -2504($fp)
	li $t0, 4
	lw $t1, -2504($fp)
	mul $t0, $t0, $t1
	sw $t0, -2508($fp)
	lw $t0, -2508($fp)
	lw $t1, -2500($fp)
	add $t0, $t0, $t1
	sw $t0, -2512($fp)
	lw $t0, -2512($fp)
	lw $t1, 0($t0)
	sw $t1, -2516($fp)
	lw $t0, -2516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2520($fp)
	li $t0, 6
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
	lw $t0, -2536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2540($fp)
	li $t0, 7
	sw $t0, -2544($fp)
	li $t0, 4
	lw $t1, -2544($fp)
	mul $t0, $t0, $t1
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	lw $t1, -2540($fp)
	add $t0, $t0, $t1
	sw $t0, -2552($fp)
	lw $t0, -2552($fp)
	lw $t1, 0($t0)
	sw $t1, -2556($fp)
	lw $t0, -2556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2560($fp)
	li $t0, 8
	sw $t0, -2564($fp)
	li $t0, 4
	lw $t1, -2564($fp)
	mul $t0, $t0, $t1
	sw $t0, -2568($fp)
	lw $t0, -2568($fp)
	lw $t1, -2560($fp)
	add $t0, $t0, $t1
	sw $t0, -2572($fp)
	lw $t0, -2572($fp)
	lw $t1, 0($t0)
	sw $t1, -2576($fp)
	lw $t0, -2576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -332($fp)
	sw $t0, -2580($fp)
	lw $t0, -2580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -344($fp)
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -2588($fp)
	li $t0, 0
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
	addi $t0, $fp, -52
	sw $t0, -2608($fp)
	li $t0, 1
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
	addi $t0, $fp, -52
	sw $t0, -2628($fp)
	li $t0, 2
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
	lw $t0, -428($fp)
	sw $t0, -2648($fp)
	lw $t0, -2648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -440($fp)
	sw $t0, -2652($fp)
	lw $t0, -2652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -452($fp)
	sw $t0, -2656($fp)
	lw $t0, -2656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -464($fp)
	sw $t0, -2660($fp)
	lw $t0, -2660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -476($fp)
	sw $t0, -2664($fp)
	lw $t0, -2664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -2668($fp)
	li $t0, 0
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
	addi $t0, $fp, -84
	sw $t0, -2688($fp)
	li $t0, 1
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
	addi $t0, $fp, -84
	sw $t0, -2708($fp)
	li $t0, 2
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
	addi $t0, $fp, -84
	sw $t0, -2728($fp)
	li $t0, 3
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
	addi $t0, $fp, -84
	sw $t0, -2748($fp)
	li $t0, 4
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
	addi $t0, $fp, -84
	sw $t0, -2768($fp)
	li $t0, 5
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
	addi $t0, $fp, -84
	sw $t0, -2788($fp)
	li $t0, 6
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
	addi $t0, $fp, -84
	sw $t0, -2808($fp)
	li $t0, 7
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
	lw $t0, -680($fp)
	sw $t0, -2828($fp)
	lw $t0, -2828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2832($fp)
	addi $t0, $fp, -84
	sw $t0, -2836($fp)
	lw $t0, 16($fp)
	sw $t0, -2840($fp)
	lw $t0, -452($fp)
	sw $t0, -2844($fp)
	lw $t0, -2840($fp)
	lw $t1, -2844($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2848($fp)
	li $t0, 37093
	sw $t0, -2852($fp)
	lw $t0, -2848($fp)
	lw $t1, -2852($fp)
	mul $t0, $t0, $t1
	sw $t0, -2856($fp)
	li $t0, 4
	lw $t1, -2856($fp)
	mul $t0, $t0, $t1
	sw $t0, -2860($fp)
	lw $t0, -2860($fp)
	lw $t1, -2836($fp)
	add $t0, $t0, $t1
	sw $t0, -2864($fp)
	lw $t0, -2864($fp)
	lw $t1, 0($t0)
	sw $t1, -2868($fp)
	lw $t1, -2868($fp)
	li $t2, 0
	bne $t1, $t2, label938
	j label937
label937:
	li $t0, 1
	sw $t0, -2832($fp)
label938:
	lw $ra, -4($fp)
	lw $v0, -2832($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -196
	li $t0, 54983
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
	li $t0, 56745
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
	li $t0, 0
	sw $t0, -64($fp)
	li $t0, 0
	sw $t0, -68($fp)
	lw $t0, 8($fp)
	sw $t0, -72($fp)
	li $t0, 19502
	sw $t0, -76($fp)
	li $t0, 30663
	sw $t0, -80($fp)
	lw $t0, -76($fp)
	lw $t1, -80($fp)
	mul $t0, $t0, $t1
	sw $t0, -84($fp)
	lw $t1, -72($fp)
	lw $t2, -84($fp)
	blt $t1, $t2, label941
	j label942
label941:
	li $t0, 1
	sw $t0, -68($fp)
label942:
	li $t0, 16246
	sw $t0, -88($fp)
	li $t0, 29212
	sw $t0, -92($fp)
	lw $t0, -88($fp)
	lw $t1, -92($fp)
	mul $t0, $t0, $t1
	sw $t0, -96($fp)
	lw $t1, -68($fp)
	lw $t2, -96($fp)
	bgt $t1, $t2, label939
	j label940
label939:
	li $t0, 1
	sw $t0, -64($fp)
label940:
	addi $t0, $fp, -12
	sw $t0, -100($fp)
	li $t0, 0
	sw $t0, -104($fp)
	li $t0, 4
	lw $t1, -104($fp)
	mul $t0, $t0, $t1
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	lw $t1, -100($fp)
	add $t0, $t0, $t1
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	lw $t1, 0($t0)
	sw $t1, -116($fp)
	lw $t0, -116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -120($fp)
	li $t0, 1
	sw $t0, -124($fp)
	li $t0, 4
	lw $t1, -124($fp)
	mul $t0, $t0, $t1
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	lw $t1, -120($fp)
	add $t0, $t0, $t1
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	lw $t1, 0($t0)
	sw $t1, -136($fp)
	lw $t0, -136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -140($fp)
	li $t0, 0
	sw $t0, -144($fp)
	lw $t0, 4($fp)
	sw $t0, -148($fp)
	lw $t1, -148($fp)
	li $t2, 0
	bne $t1, $t2, label946
	j label945
label945:
	li $t0, 1
	sw $t0, -144($fp)
label946:
	li $t0, 0
	lw $t1, -144($fp)
	sub $t0, $t0, $t1
	sw $t0, -152($fp)
	li $t0, 0
	lw $t1, -152($fp)
	sub $t0, $t0, $t1
	sw $t0, -156($fp)
	addi $t0, $fp, -12
	sw $t0, -160($fp)
	lw $t0, 8($fp)
	sw $t0, -164($fp)
	li $t0, 4
	lw $t1, -164($fp)
	mul $t0, $t0, $t1
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	lw $t1, -160($fp)
	add $t0, $t0, $t1
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	lw $t1, 0($t0)
	sw $t1, -176($fp)
	addi $t0, $fp, -12
	sw $t0, -180($fp)
	lw $t0, 4($fp)
	sw $t0, -184($fp)
	li $t0, 4
	lw $t1, -184($fp)
	mul $t0, $t0, $t1
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	lw $t1, -180($fp)
	add $t0, $t0, $t1
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	lw $t1, 0($t0)
	sw $t1, -196($fp)
	lw $t0, -176($fp)
	lw $t1, -196($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -200($fp)
	lw $t1, -156($fp)
	lw $t2, -200($fp)
	bgt $t1, $t2, label943
	j label944
label943:
	li $t0, 1
	sw $t0, -140($fp)
label944:
	lw $ra, -4($fp)
	lw $v0, -140($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1104
	li $t0, 61697
	sw $t0, -48($fp)
	addi $t0, $fp, -28
	sw $t0, -52($fp)
	li $t0, 0
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -60($fp)
	lw $t0, -52($fp)
	lw $t1, -60($fp)
	add $t0, $t0, $t1
	sw $t0, -64($fp)
	lw $t0, -48($fp)
	lw $t1, -64($fp)
	sw $t0, 0($t1)
	lw $t0, -64($fp)
	lw $t1, 0($t0)
	sw $t1, -68($fp)
	li $t0, 42487
	sw $t0, -72($fp)
	addi $t0, $fp, -28
	sw $t0, -76($fp)
	li $t0, 1
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -84($fp)
	lw $t0, -76($fp)
	lw $t1, -84($fp)
	add $t0, $t0, $t1
	sw $t0, -88($fp)
	lw $t0, -72($fp)
	lw $t1, -88($fp)
	sw $t0, 0($t1)
	lw $t0, -88($fp)
	lw $t1, 0($t0)
	sw $t1, -92($fp)
	li $t0, 53318
	sw $t0, -96($fp)
	addi $t0, $fp, -28
	sw $t0, -100($fp)
	li $t0, 2
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -108($fp)
	lw $t0, -100($fp)
	lw $t1, -108($fp)
	add $t0, $t0, $t1
	sw $t0, -112($fp)
	lw $t0, -96($fp)
	lw $t1, -112($fp)
	sw $t0, 0($t1)
	lw $t0, -112($fp)
	lw $t1, 0($t0)
	sw $t1, -116($fp)
	li $t0, 21249
	sw $t0, -120($fp)
	addi $t0, $fp, -28
	sw $t0, -124($fp)
	li $t0, 3
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -132($fp)
	lw $t0, -124($fp)
	lw $t1, -132($fp)
	add $t0, $t0, $t1
	sw $t0, -136($fp)
	lw $t0, -120($fp)
	lw $t1, -136($fp)
	sw $t0, 0($t1)
	lw $t0, -136($fp)
	lw $t1, 0($t0)
	sw $t1, -140($fp)
	li $t0, 17961
	sw $t0, -144($fp)
	addi $t0, $fp, -28
	sw $t0, -148($fp)
	li $t0, 4
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -156($fp)
	lw $t0, -148($fp)
	lw $t1, -156($fp)
	add $t0, $t0, $t1
	sw $t0, -160($fp)
	lw $t0, -144($fp)
	lw $t1, -160($fp)
	sw $t0, 0($t1)
	lw $t0, -160($fp)
	lw $t1, 0($t0)
	sw $t1, -164($fp)
	li $t0, 47204
	sw $t0, -168($fp)
	addi $t0, $fp, -28
	sw $t0, -172($fp)
	li $t0, 5
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -180($fp)
	lw $t0, -172($fp)
	lw $t1, -180($fp)
	add $t0, $t0, $t1
	sw $t0, -184($fp)
	lw $t0, -168($fp)
	lw $t1, -184($fp)
	sw $t0, 0($t1)
	lw $t0, -184($fp)
	lw $t1, 0($t0)
	sw $t1, -188($fp)
	li $t0, 21733
	sw $t0, -192($fp)
	addi $t0, $fp, -44
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
	li $t0, 8163
	sw $t0, -216($fp)
	addi $t0, $fp, -44
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
	li $t0, 42893
	sw $t0, -240($fp)
	addi $t0, $fp, -44
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
	li $t0, 9964
	sw $t0, -264($fp)
	addi $t0, $fp, -44
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
	li $t0, 16292
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	li $t0, 26057
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	li $t0, 47762
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	li $t0, 60314
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	li $t0, 51921
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -344($fp)
	li $t0, 32477
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	li $t0, 3769
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -368($fp)
label947:
	addi $t0, $fp, -44
	sw $t0, -372($fp)
	li $t0, 1
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
	addi $t0, $fp, -28
	sw $t0, -392($fp)
	li $t0, 0
	sw $t0, -396($fp)
	li $t0, 29266
	sw $t0, -400($fp)
	lw $t1, -400($fp)
	li $t2, 0
	bne $t1, $t2, label952
	j label951
label952:
	li $t0, 13061
	sw $t0, -404($fp)
	lw $t1, -404($fp)
	li $t2, 0
	bne $t1, $t2, label950
	j label951
label950:
	li $t0, 1
	sw $t0, -396($fp)
label951:
	li $t0, 4
	lw $t1, -396($fp)
	mul $t0, $t0, $t1
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	lw $t1, -392($fp)
	add $t0, $t0, $t1
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	lw $t1, 0($t0)
	sw $t1, -416($fp)
	lw $t0, -388($fp)
	lw $t1, -416($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -420($fp)
	lw $t1, -420($fp)
	li $t2, 0
	bne $t1, $t2, label948
	j label949
label948:
label953:
	li $t0, 0
	sw $t0, -424($fp)
	li $t0, 0
	sw $t0, -428($fp)
	lw $t0, -328($fp)
	sw $t0, -432($fp)
	lw $t1, -432($fp)
	li $t2, 0
	bne $t1, $t2, label958
	j label960
label960:
	lw $t0, 8($fp)
	sw $t0, -436($fp)
	lw $t1, -436($fp)
	li $t2, 0
	bne $t1, $t2, label958
	j label959
label958:
	li $t0, 1
	sw $t0, -428($fp)
label959:
	lw $t0, -364($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -444($fp)
	lw $t0, 12($fp)
	sw $t0, -448($fp)
	li $t0, 28619
	sw $t0, -452($fp)
	lw $t0, -448($fp)
	lw $t1, -452($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -456($fp)
	li $t0, 58875
	sw $t0, -460($fp)
	lw $t0, -456($fp)
	lw $t1, -460($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -464($fp)
	addi $sp, $sp, -4
	lw $t0, -428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -464($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -468($fp)
	addi $sp, $sp, 16
	lw $t1, -468($fp)
	li $t2, 0
	bne $t1, $t2, label957
	j label956
label956:
	li $t0, 1
	sw $t0, -424($fp)
label957:
	lw $t0, -328($fp)
	sw $t0, -472($fp)
	lw $t1, -424($fp)
	lw $t2, -472($fp)
	bge $t1, $t2, label954
	j label955
label954:
	addi $t0, $fp, -44
	sw $t0, -476($fp)
	lw $t0, -340($fp)
	sw $t0, -480($fp)
	li $t0, 50155
	sw $t0, -484($fp)
	li $t0, 0
	lw $t1, -484($fp)
	sub $t0, $t0, $t1
	sw $t0, -488($fp)
	lw $t0, -480($fp)
	lw $t1, -488($fp)
	sub $t0, $t0, $t1
	sw $t0, -492($fp)
	li $t0, 4
	lw $t1, -492($fp)
	mul $t0, $t0, $t1
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	lw $t1, -476($fp)
	add $t0, $t0, $t1
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	lw $t1, 0($t0)
	sw $t1, -504($fp)
	lw $t1, -504($fp)
	li $t2, 0
	bne $t1, $t2, label961
	j label962
label961:
	lw $t0, -292($fp)
	sw $t0, -508($fp)
	li $t0, 0
	sw $t0, -512($fp)
	li $t0, 0
	sw $t0, -516($fp)
	li $t0, 18066
	sw $t0, -520($fp)
	lw $t1, -520($fp)
	li $t2, 0
	bne $t1, $t2, label967
	j label966
label966:
	li $t0, 1
	sw $t0, -516($fp)
label967:
	li $t0, 0
	lw $t1, -516($fp)
	sub $t0, $t0, $t1
	sw $t0, -524($fp)
	lw $t1, -524($fp)
	li $t2, 0
	bne $t1, $t2, label965
	j label964
label964:
	li $t0, 1
	sw $t0, -512($fp)
label965:
	lw $t0, -508($fp)
	lw $t1, -512($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -528($fp)
	j label963
label962:
	li $t0, 0
	sw $t0, -532($fp)
	li $t0, 0
	sw $t0, -536($fp)
	lw $t0, -340($fp)
	sw $t0, -540($fp)
	lw $t1, -540($fp)
	li $t2, 0
	bne $t1, $t2, label971
	j label972
label971:
	li $t0, 1
	sw $t0, -536($fp)
label972:
	li $t0, 0
	sw $t0, -544($fp)
	lw $t0, 12($fp)
	sw $t0, -548($fp)
	lw $t1, -548($fp)
	li $t2, 0
	bne $t1, $t2, label974
	j label973
label973:
	li $t0, 1
	sw $t0, -544($fp)
label974:
	li $t0, 44890
	sw $t0, -552($fp)
	lw $t0, -544($fp)
	lw $t1, -552($fp)
	sub $t0, $t0, $t1
	sw $t0, -556($fp)
	li $t0, 33334
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -564($fp)
	addi $sp, $sp, -4
	lw $t0, -536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -564($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -568($fp)
	addi $sp, $sp, 16
	li $t0, 43282
	sw $t0, -572($fp)
	lw $t0, -568($fp)
	lw $t1, -572($fp)
	add $t0, $t0, $t1
	sw $t0, -576($fp)
	li $t0, 0
	sw $t0, -580($fp)
	addi $t0, $fp, -44
	sw $t0, -584($fp)
	lw $t0, 8($fp)
	sw $t0, -588($fp)
	li $t0, 4
	lw $t1, -588($fp)
	mul $t0, $t0, $t1
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	lw $t1, -584($fp)
	add $t0, $t0, $t1
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	lw $t1, 0($t0)
	sw $t1, -600($fp)
	li $t0, 795
	sw $t0, -604($fp)
	lw $t1, -600($fp)
	lw $t2, -604($fp)
	bgt $t1, $t2, label975
	j label976
label975:
	li $t0, 1
	sw $t0, -580($fp)
label976:
	lw $t0, -340($fp)
	sw $t0, -608($fp)
	li $t0, 4121
	sw $t0, -612($fp)
	lw $t0, -608($fp)
	lw $t1, -612($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -616($fp)
	li $t0, 48729
	sw $t0, -620($fp)
	lw $t0, -616($fp)
	lw $t1, -620($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -624($fp)
	li $t0, 0
	sw $t0, -628($fp)
	li $t0, 0
	sw $t0, -632($fp)
	lw $t0, -340($fp)
	sw $t0, -636($fp)
	li $t0, 50084
	sw $t0, -640($fp)
	lw $t1, -636($fp)
	lw $t2, -640($fp)
	blt $t1, $t2, label979
	j label980
label979:
	li $t0, 1
	sw $t0, -632($fp)
label980:
	lw $t0, 8($fp)
	sw $t0, -644($fp)
	lw $t1, -632($fp)
	lw $t2, -644($fp)
	bgt $t1, $t2, label977
	j label978
label977:
	li $t0, 1
	sw $t0, -628($fp)
label978:
	li $t0, 0
	sw $t0, -648($fp)
	lw $t0, -328($fp)
	sw $t0, -652($fp)
	li $t0, 0
	lw $t1, -652($fp)
	sub $t0, $t0, $t1
	sw $t0, -656($fp)
	lw $t0, -316($fp)
	sw $t0, -660($fp)
	lw $t1, -656($fp)
	lw $t2, -660($fp)
	blt $t1, $t2, label981
	j label982
label981:
	li $t0, 1
	sw $t0, -648($fp)
label982:
	addi $sp, $sp, -4
	lw $t0, -576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -648($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -664($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -664($fp)
	sub $t0, $t0, $t1
	sw $t0, -668($fp)
	lw $t1, -668($fp)
	li $t2, 0
	bne $t1, $t2, label970
	j label969
label970:
	lw $t0, 12($fp)
	sw $t0, -672($fp)
	li $t0, 21116
	sw $t0, -676($fp)
	lw $t0, -672($fp)
	lw $t1, -676($fp)
	mul $t0, $t0, $t1
	sw $t0, -680($fp)
	lw $t1, -680($fp)
	li $t2, 0
	bne $t1, $t2, label968
	j label969
label968:
	li $t0, 1
	sw $t0, -532($fp)
label969:
label963:
	j label953
label955:
	j label947
label949:
	li $t0, 604
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -692($fp)
	lw $t0, -688($fp)
	sw $t0, -696($fp)
	addi $t0, $fp, -44
	sw $t0, -700($fp)
	li $t0, 0
	sw $t0, -704($fp)
	lw $t0, 4($fp)
	sw $t0, -708($fp)
	lw $t1, -708($fp)
	li $t2, 0
	bne $t1, $t2, label985
	j label984
label985:
	lw $t0, -364($fp)
	sw $t0, -712($fp)
	lw $t1, -712($fp)
	li $t2, 0
	bne $t1, $t2, label983
	j label984
label983:
	li $t0, 1
	sw $t0, -704($fp)
label984:
	li $t0, 4
	lw $t1, -704($fp)
	mul $t0, $t0, $t1
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	lw $t1, -700($fp)
	add $t0, $t0, $t1
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	lw $t1, 0($t0)
	sw $t1, -724($fp)
	lw $t0, -696($fp)
	lw $t1, -724($fp)
	mul $t0, $t0, $t1
	sw $t0, -728($fp)
	lw $t0, 4($fp)
	sw $t0, -732($fp)
	lw $t0, -340($fp)
	sw $t0, -736($fp)
	lw $t0, -732($fp)
	lw $t1, -736($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -740($fp)
	li $t0, 61243
	sw $t0, -744($fp)
	lw $t0, -740($fp)
	lw $t1, -744($fp)
	mul $t0, $t0, $t1
	sw $t0, -748($fp)
	lw $t0, -364($fp)
	sw $t0, -752($fp)
	lw $t0, -748($fp)
	lw $t1, -752($fp)
	mul $t0, $t0, $t1
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -760($fp)
	li $t0, 0
	sw $t0, -764($fp)
	li $t0, 2785
	sw $t0, -768($fp)
	li $t0, 22337
	sw $t0, -772($fp)
	lw $t0, -768($fp)
	lw $t1, -772($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -776($fp)
	li $t0, 0
	lw $t1, -776($fp)
	sub $t0, $t0, $t1
	sw $t0, -780($fp)
	lw $t1, -780($fp)
	li $t2, 0
	bne $t1, $t2, label987
	j label986
label986:
	li $t0, 1
	sw $t0, -764($fp)
label987:
	li $t0, 0
	sw $t0, -784($fp)
	li $t0, 0
	sw $t0, -788($fp)
	lw $t0, -340($fp)
	sw $t0, -792($fp)
	lw $t1, -792($fp)
	li $t2, 0
	bne $t1, $t2, label994
	j label993
label993:
	li $t0, 1
	sw $t0, -788($fp)
label994:
	lw $t0, 12($fp)
	sw $t0, -796($fp)
	lw $t0, -788($fp)
	lw $t1, -796($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -800($fp)
	li $t0, 3870
	sw $t0, -804($fp)
	lw $t1, -800($fp)
	lw $t2, -804($fp)
	bge $t1, $t2, label991
	j label992
label991:
	li $t0, 1
	sw $t0, -784($fp)
label992:
	lw $t0, -784($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -808($fp)
	lw $t1, -808($fp)
	li $t2, 0
	bne $t1, $t2, label988
	j label989
label988:
	lw $t0, -316($fp)
	sw $t0, -812($fp)
label989:
	addi $t0, $fp, -28
	sw $t0, -816($fp)
	li $t0, 0
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
	li $t0, 1
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
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -876($fp)
	li $t0, 3
	sw $t0, -880($fp)
	li $t0, 4
	lw $t1, -880($fp)
	mul $t0, $t0, $t1
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	lw $t1, -876($fp)
	add $t0, $t0, $t1
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	lw $t1, 0($t0)
	sw $t1, -892($fp)
	lw $t0, -892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -896($fp)
	li $t0, 4
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
	lw $t0, -912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -916($fp)
	li $t0, 5
	sw $t0, -920($fp)
	li $t0, 4
	lw $t1, -920($fp)
	mul $t0, $t0, $t1
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	lw $t1, -916($fp)
	add $t0, $t0, $t1
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	lw $t1, 0($t0)
	sw $t1, -932($fp)
	lw $t0, -932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -936($fp)
	li $t0, 0
	sw $t0, -940($fp)
	li $t0, 4
	lw $t1, -940($fp)
	mul $t0, $t0, $t1
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	lw $t1, -936($fp)
	add $t0, $t0, $t1
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	lw $t1, 0($t0)
	sw $t1, -952($fp)
	lw $t0, -952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -956($fp)
	li $t0, 1
	sw $t0, -960($fp)
	li $t0, 4
	lw $t1, -960($fp)
	mul $t0, $t0, $t1
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	lw $t1, -956($fp)
	add $t0, $t0, $t1
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	lw $t1, 0($t0)
	sw $t1, -972($fp)
	lw $t0, -972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -976($fp)
	li $t0, 2
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
	lw $t0, -992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
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
	lw $t0, -1012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -292($fp)
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -304($fp)
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -316($fp)
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -328($fp)
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -340($fp)
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -352($fp)
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -364($fp)
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1044($fp)
	li $t0, 0
	sw $t0, -1048($fp)
	li $t0, 45678
	sw $t0, -1052($fp)
	li $t0, 32301
	sw $t0, -1056($fp)
	lw $t0, 12($fp)
	sw $t0, -1060($fp)
	lw $t0, -1056($fp)
	lw $t1, -1060($fp)
	mul $t0, $t0, $t1
	sw $t0, -1064($fp)
	lw $t0, 12($fp)
	sw $t0, -1068($fp)
	lw $t0, -1064($fp)
	lw $t1, -1068($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1072($fp)
	lw $t1, -1052($fp)
	lw $t2, -1072($fp)
	bge $t1, $t2, label997
	j label998
label997:
	li $t0, 1
	sw $t0, -1048($fp)
label998:
	li $t0, 0
	sw $t0, -1076($fp)
	addi $t0, $fp, -28
	sw $t0, -1080($fp)
	li $t0, 3
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
	lw $t0, -352($fp)
	sw $t0, -1100($fp)
	li $t0, 14527
	sw $t0, -1104($fp)
	lw $t0, -1100($fp)
	lw $t1, -1104($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1108($fp)
	lw $t1, -1096($fp)
	lw $t2, -1108($fp)
	bge $t1, $t2, label999
	j label1000
label999:
	li $t0, 1
	sw $t0, -1076($fp)
label1000:
	lw $t1, -1048($fp)
	lw $t2, -1076($fp)
	bne $t1, $t2, label995
	j label996
label995:
	li $t0, 1
	sw $t0, -1044($fp)
label996:
	lw $ra, -4($fp)
	lw $v0, -1044($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f14:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1556
	li $t0, 14941
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	li $t0, 58120
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	li $t0, 47005
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	li $t0, 18710
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	li $t0, 32104
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	li $t0, 63357
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	li $t0, 34520
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -116($fp)
	li $t0, 61370
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -128($fp)
	li $t0, 10883
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -140($fp)
	li $t0, 63139
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	li $t0, 54709
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	li $t0, 61038
	sw $t0, -168($fp)
	addi $t0, $fp, -16
	sw $t0, -172($fp)
	li $t0, 0
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -180($fp)
	lw $t0, -172($fp)
	lw $t1, -180($fp)
	add $t0, $t0, $t1
	sw $t0, -184($fp)
	lw $t0, -168($fp)
	lw $t1, -184($fp)
	sw $t0, 0($t1)
	lw $t0, -184($fp)
	lw $t1, 0($t0)
	sw $t1, -188($fp)
	li $t0, 15669
	sw $t0, -192($fp)
	addi $t0, $fp, -16
	sw $t0, -196($fp)
	li $t0, 1
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
	li $t0, 39258
	sw $t0, -216($fp)
	addi $t0, $fp, -16
	sw $t0, -220($fp)
	li $t0, 2
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
	li $t0, 65159
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	li $t0, 64398
	sw $t0, -252($fp)
	addi $t0, $fp, -32
	sw $t0, -256($fp)
	li $t0, 0
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
	li $t0, 40053
	sw $t0, -276($fp)
	addi $t0, $fp, -32
	sw $t0, -280($fp)
	li $t0, 1
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
	li $t0, 32957
	sw $t0, -300($fp)
	addi $t0, $fp, -32
	sw $t0, -304($fp)
	li $t0, 2
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
	li $t0, 43752
	sw $t0, -324($fp)
	addi $t0, $fp, -32
	sw $t0, -328($fp)
	li $t0, 3
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
	lw $t0, -40($fp)
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -52($fp)
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -64($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -76($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -88($fp)
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -100($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -112($fp)
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -124($fp)
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -136($fp)
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -148($fp)
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -160($fp)
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -392($fp)
	li $t0, 0
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
	addi $t0, $fp, -16
	sw $t0, -412($fp)
	li $t0, 1
	sw $t0, -416($fp)
	li $t0, 4
	lw $t1, -416($fp)
	mul $t0, $t0, $t1
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	lw $t1, -412($fp)
	add $t0, $t0, $t1
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	lw $t1, 0($t0)
	sw $t1, -428($fp)
	lw $t0, -428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -432($fp)
	li $t0, 2
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
	lw $t0, -448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -244($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -456($fp)
	li $t0, 0
	sw $t0, -460($fp)
	li $t0, 4
	lw $t1, -460($fp)
	mul $t0, $t0, $t1
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	lw $t1, -456($fp)
	add $t0, $t0, $t1
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	lw $t1, 0($t0)
	sw $t1, -472($fp)
	lw $t0, -472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -476($fp)
	li $t0, 1
	sw $t0, -480($fp)
	li $t0, 4
	lw $t1, -480($fp)
	mul $t0, $t0, $t1
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	lw $t1, -476($fp)
	add $t0, $t0, $t1
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	lw $t1, 0($t0)
	sw $t1, -492($fp)
	lw $t0, -492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -496($fp)
	li $t0, 2
	sw $t0, -500($fp)
	li $t0, 4
	lw $t1, -500($fp)
	mul $t0, $t0, $t1
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	lw $t1, -496($fp)
	add $t0, $t0, $t1
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	lw $t1, 0($t0)
	sw $t1, -512($fp)
	lw $t0, -512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -516($fp)
	li $t0, 3
	sw $t0, -520($fp)
	li $t0, 4
	lw $t1, -520($fp)
	mul $t0, $t0, $t1
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	lw $t1, -516($fp)
	add $t0, $t0, $t1
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	lw $t1, 0($t0)
	sw $t1, -532($fp)
	lw $t0, -532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -536($fp)
	addi $t0, $fp, -16
	sw $t0, -540($fp)
	lw $t0, -136($fp)
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
	lw $t1, -556($fp)
	li $t2, 0
	bne $t1, $t2, label1001
	j label1002
label1001:
	li $t0, 1
	sw $t0, -536($fp)
label1002:
	li $t0, 0
	lw $t1, -536($fp)
	sub $t0, $t0, $t1
	sw $t0, -560($fp)
	lw $ra, -4($fp)
	lw $v0, -560($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 17799
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	li $t0, 54074
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	li $t0, 44356
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -596($fp)
	li $t0, 13506
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -608($fp)
	li $t0, 0
	sw $t0, -612($fp)
	li $t0, 0
	sw $t0, -616($fp)
	li $t0, 47987
	sw $t0, -620($fp)
	lw $t0, -604($fp)
	sw $t0, -624($fp)
	lw $t1, -620($fp)
	lw $t2, -624($fp)
	blt $t1, $t2, label1006
	j label1008
label1008:
	li $t0, 52480
	sw $t0, -628($fp)
	lw $t1, -628($fp)
	li $t2, 0
	bne $t1, $t2, label1006
	j label1007
label1006:
	li $t0, 1
	sw $t0, -616($fp)
label1007:
	li $t0, 43200
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -636($fp)
	li $t0, 0
	sw $t0, -640($fp)
	li $t0, 37539
	sw $t0, -644($fp)
	lw $t0, -148($fp)
	sw $t0, -648($fp)
	lw $t0, -644($fp)
	lw $t1, -648($fp)
	mul $t0, $t0, $t1
	sw $t0, -652($fp)
	lw $t0, -592($fp)
	sw $t0, -656($fp)
	lw $t1, -652($fp)
	lw $t2, -656($fp)
	ble $t1, $t2, label1009
	j label1010
label1009:
	li $t0, 1
	sw $t0, -640($fp)
label1010:
	li $t0, 0
	sw $t0, -660($fp)
	lw $t0, -76($fp)
	sw $t0, -664($fp)
	lw $t1, -664($fp)
	li $t2, 0
	bne $t1, $t2, label1012
	j label1011
label1011:
	li $t0, 1
	sw $t0, -660($fp)
label1012:
	lw $t0, -244($fp)
	sw $t0, -668($fp)
	lw $t0, -660($fp)
	lw $t1, -668($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -672($fp)
	addi $sp, $sp, -4
	lw $t0, -616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -672($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -676($fp)
	addi $sp, $sp, 20
	li $t0, 35784
	sw $t0, -680($fp)
	lw $t0, -676($fp)
	lw $t1, -680($fp)
	add $t0, $t0, $t1
	sw $t0, -684($fp)
	li $t0, 0
	sw $t0, -688($fp)
	li $t0, 33459
	sw $t0, -692($fp)
	lw $t0, -124($fp)
	sw $t0, -696($fp)
	lw $t0, -692($fp)
	lw $t1, -696($fp)
	mul $t0, $t0, $t1
	sw $t0, -700($fp)
	lw $t0, -160($fp)
	sw $t0, -704($fp)
	lw $t1, -700($fp)
	lw $t2, -704($fp)
	bge $t1, $t2, label1013
	j label1014
label1013:
	li $t0, 1
	sw $t0, -688($fp)
label1014:
	li $t0, 0
	sw $t0, -708($fp)
	li $t0, 0
	sw $t0, -712($fp)
	lw $t0, -88($fp)
	sw $t0, -716($fp)
	lw $t0, -64($fp)
	sw $t0, -720($fp)
	lw $t1, -716($fp)
	lw $t2, -720($fp)
	bne $t1, $t2, label1017
	j label1018
label1017:
	li $t0, 1
	sw $t0, -712($fp)
label1018:
	li $t0, 37001
	sw $t0, -724($fp)
	lw $t1, -712($fp)
	lw $t2, -724($fp)
	bne $t1, $t2, label1015
	j label1016
label1015:
	li $t0, 1
	sw $t0, -708($fp)
label1016:
	li $t0, 0
	sw $t0, -728($fp)
	li $t0, 56859
	sw $t0, -732($fp)
	li $t0, 1158
	sw $t0, -736($fp)
	lw $t0, -732($fp)
	lw $t1, -736($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -740($fp)
	li $t0, 17376
	sw $t0, -744($fp)
	lw $t1, -740($fp)
	lw $t2, -744($fp)
	beq $t1, $t2, label1019
	j label1020
label1019:
	li $t0, 1
	sw $t0, -728($fp)
label1020:
	lw $t0, 4($fp)
	sw $t0, -748($fp)
	lw $t0, -160($fp)
	sw $t0, -752($fp)
	lw $t0, -748($fp)
	lw $t1, -752($fp)
	mul $t0, $t0, $t1
	sw $t0, -756($fp)
	lw $t0, -136($fp)
	sw $t0, -760($fp)
	lw $t0, -756($fp)
	lw $t1, -760($fp)
	mul $t0, $t0, $t1
	sw $t0, -764($fp)
	addi $sp, $sp, -4
	lw $t0, -684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -764($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -768($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -16
	sw $t0, -772($fp)
	li $t0, 0
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
	addi $sp, $sp, -4
	lw $t0, -788($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -792($fp)
	addi $sp, $sp, 8
	lw $t0, 4($fp)
	sw $t0, -796($fp)
	lw $t0, -792($fp)
	lw $t1, -796($fp)
	mul $t0, $t0, $t1
	sw $t0, -800($fp)
	lw $t1, -768($fp)
	lw $t2, -800($fp)
	bne $t1, $t2, label1003
	j label1005
label1005:
	li $t0, 0
	sw $t0, -804($fp)
	lw $t0, -160($fp)
	sw $t0, -808($fp)
	li $t0, 40174
	sw $t0, -812($fp)
	lw $t0, -808($fp)
	lw $t1, -812($fp)
	sub $t0, $t0, $t1
	sw $t0, -816($fp)
	lw $t1, -816($fp)
	li $t2, 0
	bne $t1, $t2, label1023
	j label1022
label1023:
	lw $t0, 4($fp)
	sw $t0, -820($fp)
	lw $t1, -820($fp)
	li $t2, 0
	bne $t1, $t2, label1021
	j label1022
label1021:
	li $t0, 1
	sw $t0, -804($fp)
label1022:
	li $t0, 0
	sw $t0, -824($fp)
	lw $t0, -64($fp)
	sw $t0, -828($fp)
	lw $t1, -828($fp)
	li $t2, 0
	bne $t1, $t2, label1024
	j label1025
label1024:
	li $t0, 1
	sw $t0, -824($fp)
label1025:
	li $t0, 0
	sw $t0, -832($fp)
	li $t0, 2352
	sw $t0, -836($fp)
	li $t0, 0
	lw $t1, -836($fp)
	sub $t0, $t0, $t1
	sw $t0, -840($fp)
	li $t0, 27277
	sw $t0, -844($fp)
	lw $t1, -840($fp)
	lw $t2, -844($fp)
	bge $t1, $t2, label1026
	j label1027
label1026:
	li $t0, 1
	sw $t0, -832($fp)
label1027:
	addi $sp, $sp, -4
	lw $t0, -804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -832($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -848($fp)
	addi $sp, $sp, 16
	li $t0, 63722
	sw $t0, -852($fp)
	lw $t0, -848($fp)
	lw $t1, -852($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -856($fp)
	lw $t0, -580($fp)
	sw $t0, -860($fp)
	li $t0, 38160
	sw $t0, -864($fp)
	lw $t0, -860($fp)
	lw $t1, -864($fp)
	mul $t0, $t0, $t1
	sw $t0, -868($fp)
	lw $t1, -856($fp)
	lw $t2, -868($fp)
	beq $t1, $t2, label1003
	j label1004
label1003:
	li $t0, 1
	sw $t0, -612($fp)
label1004:
label1028:
	li $t0, 0
	sw $t0, -872($fp)
	li $t0, 37777
	sw $t0, -876($fp)
	li $t0, 52896
	sw $t0, -880($fp)
	lw $t1, -876($fp)
	lw $t2, -880($fp)
	bne $t1, $t2, label1032
	j label1033
label1032:
	li $t0, 1
	sw $t0, -872($fp)
label1033:
	li $t0, 0
	sw $t0, -884($fp)
	li $t0, 33662
	sw $t0, -888($fp)
	lw $t1, -888($fp)
	li $t2, 0
	bne $t1, $t2, label1035
	j label1034
label1034:
	li $t0, 1
	sw $t0, -884($fp)
label1035:
	lw $t0, -148($fp)
	sw $t0, -892($fp)
	lw $t0, -884($fp)
	lw $t1, -892($fp)
	mul $t0, $t0, $t1
	sw $t0, -896($fp)
	lw $t1, -872($fp)
	lw $t2, -896($fp)
	beq $t1, $t2, label1031
	j label1030
label1031:
	li $t0, 0
	sw $t0, -900($fp)
	li $t0, 0
	sw $t0, -904($fp)
	lw $t0, 4($fp)
	sw $t0, -908($fp)
	lw $t1, -908($fp)
	li $t2, 0
	bne $t1, $t2, label1039
	j label1038
label1038:
	li $t0, 1
	sw $t0, -904($fp)
label1039:
	lw $t0, -136($fp)
	sw $t0, -912($fp)
	lw $t1, -904($fp)
	lw $t2, -912($fp)
	beq $t1, $t2, label1036
	j label1037
label1036:
	li $t0, 1
	sw $t0, -900($fp)
label1037:
	lw $t0, -76($fp)
	sw $t0, -916($fp)
	li $t0, 0
	sw $t0, -920($fp)
	lw $t0, -160($fp)
	sw $t0, -924($fp)
	lw $t1, -924($fp)
	li $t2, 0
	bne $t1, $t2, label1041
	j label1040
label1040:
	li $t0, 1
	sw $t0, -920($fp)
label1041:
	li $t0, 0
	sw $t0, -928($fp)
	lw $t0, -76($fp)
	sw $t0, -932($fp)
	lw $t1, -932($fp)
	li $t2, 0
	bne $t1, $t2, label1044
	j label1043
label1044:
	li $t0, 53446
	sw $t0, -936($fp)
	lw $t1, -936($fp)
	li $t2, 0
	bne $t1, $t2, label1042
	j label1043
label1042:
	li $t0, 1
	sw $t0, -928($fp)
label1043:
	addi $sp, $sp, -4
	lw $t0, -900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -928($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -940($fp)
	addi $sp, $sp, 20
	li $t0, 26618
	sw $t0, -944($fp)
	lw $t0, -940($fp)
	lw $t1, -944($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -948($fp)
	li $t0, 33286
	sw $t0, -952($fp)
	li $t0, 0
	lw $t1, -952($fp)
	sub $t0, $t0, $t1
	sw $t0, -956($fp)
	lw $t0, -948($fp)
	lw $t1, -956($fp)
	mul $t0, $t0, $t1
	sw $t0, -960($fp)
	lw $t1, -960($fp)
	li $t2, 0
	bne $t1, $t2, label1029
	j label1030
label1029:
	lw $t0, 4($fp)
	sw $t0, -964($fp)
	li $t0, 0
	sw $t0, -968($fp)
	li $t0, 0
	sw $t0, -972($fp)
	lw $t0, -148($fp)
	sw $t0, -976($fp)
	lw $t1, -976($fp)
	li $t2, 0
	bne $t1, $t2, label1047
	j label1050
label1050:
	li $t0, 32440
	sw $t0, -980($fp)
	lw $t1, -980($fp)
	li $t2, 0
	bne $t1, $t2, label1047
	j label1049
label1049:
	lw $t0, -64($fp)
	sw $t0, -984($fp)
	lw $t1, -984($fp)
	li $t2, 0
	bne $t1, $t2, label1047
	j label1048
label1047:
	li $t0, 1
	sw $t0, -972($fp)
label1048:
	addi $t0, $fp, -32
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
	lw $t0, -40($fp)
	sw $t0, -1008($fp)
	lw $t0, -1004($fp)
	lw $t1, -1008($fp)
	mul $t0, $t0, $t1
	sw $t0, -1012($fp)
	li $t0, 0
	sw $t0, -1016($fp)
	li $t0, 30525
	sw $t0, -1020($fp)
	li $t0, 18934
	sw $t0, -1024($fp)
	lw $t0, -1020($fp)
	lw $t1, -1024($fp)
	mul $t0, $t0, $t1
	sw $t0, -1028($fp)
	lw $t0, -88($fp)
	sw $t0, -1032($fp)
	lw $t1, -1028($fp)
	lw $t2, -1032($fp)
	beq $t1, $t2, label1051
	j label1052
label1051:
	li $t0, 1
	sw $t0, -1016($fp)
label1052:
	addi $t0, $fp, -16
	sw $t0, -1036($fp)
	li $t0, 1
	sw $t0, -1040($fp)
	li $t0, 4
	lw $t1, -1040($fp)
	mul $t0, $t0, $t1
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	lw $t1, -1036($fp)
	add $t0, $t0, $t1
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	lw $t1, 0($t0)
	sw $t1, -1052($fp)
	li $t0, 0
	sw $t0, -1056($fp)
	lw $t0, -148($fp)
	sw $t0, -1060($fp)
	li $t0, 52308
	sw $t0, -1064($fp)
	lw $t0, -1060($fp)
	lw $t1, -1064($fp)
	mul $t0, $t0, $t1
	sw $t0, -1068($fp)
	lw $t1, -1068($fp)
	li $t2, 0
	bne $t1, $t2, label1053
	j label1055
label1055:
	lw $t0, -244($fp)
	sw $t0, -1072($fp)
	lw $t1, -1072($fp)
	li $t2, 0
	bne $t1, $t2, label1053
	j label1054
label1053:
	li $t0, 1
	sw $t0, -1056($fp)
label1054:
	addi $sp, $sp, -4
	lw $t0, -972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1056($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1076($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -1076($fp)
	sub $t0, $t0, $t1
	sw $t0, -1080($fp)
	lw $t1, -1080($fp)
	li $t2, 0
	bne $t1, $t2, label1046
	j label1045
label1045:
	li $t0, 1
	sw $t0, -968($fp)
label1046:
	lw $t0, -964($fp)
	lw $t1, -968($fp)
	mul $t0, $t0, $t1
	sw $t0, -1084($fp)
	j label1028
label1030:
label1056:
	li $t0, 43963
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -1092($fp)
	li $t0, 0
	sw $t0, -1096($fp)
	addi $t0, $fp, -16
	sw $t0, -1100($fp)
	li $t0, 2
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
	lw $t0, -100($fp)
	sw $t0, -1120($fp)
	lw $t1, -1116($fp)
	lw $t2, -1120($fp)
	blt $t1, $t2, label1059
	j label1060
label1059:
	li $t0, 1
	sw $t0, -1096($fp)
label1060:
	li $t0, 0
	sw $t0, -1124($fp)
	li $t0, 0
	sw $t0, -1128($fp)
	lw $t0, -112($fp)
	sw $t0, -1132($fp)
	li $t0, 46104
	sw $t0, -1136($fp)
	lw $t1, -1132($fp)
	lw $t2, -1136($fp)
	bne $t1, $t2, label1063
	j label1064
label1063:
	li $t0, 1
	sw $t0, -1128($fp)
label1064:
	li $t0, 10503
	sw $t0, -1140($fp)
	lw $t1, -1128($fp)
	lw $t2, -1140($fp)
	beq $t1, $t2, label1061
	j label1062
label1061:
	li $t0, 1
	sw $t0, -1124($fp)
label1062:
	addi $sp, $sp, -4
	lw $t0, -1092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1124($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -1144($fp)
	addi $sp, $sp, 16
	lw $t1, -1144($fp)
	li $t2, 0
	bne $t1, $t2, label1057
	j label1058
label1057:
	li $t0, 0
	sw $t0, -1148($fp)
	lw $t0, -124($fp)
	sw $t0, -1152($fp)
	li $t0, 0
	sw $t0, -1156($fp)
	lw $t0, -136($fp)
	sw $t0, -1160($fp)
	lw $t1, -1160($fp)
	li $t2, 0
	bne $t1, $t2, label1068
	j label1067
label1067:
	li $t0, 1
	sw $t0, -1156($fp)
label1068:
	lw $t0, -1152($fp)
	lw $t1, -1156($fp)
	mul $t0, $t0, $t1
	sw $t0, -1164($fp)
	lw $t0, -244($fp)
	sw $t0, -1168($fp)
	lw $t0, -1164($fp)
	lw $t1, -1168($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1172($fp)
	li $t0, 0
	sw $t0, -1176($fp)
	li $t0, 21819
	sw $t0, -1180($fp)
	lw $t1, -1180($fp)
	li $t2, 0
	bne $t1, $t2, label1070
	j label1069
label1069:
	li $t0, 1
	sw $t0, -1176($fp)
label1070:
	lw $t0, 4($fp)
	sw $t0, -1184($fp)
	lw $t0, -1176($fp)
	lw $t1, -1184($fp)
	mul $t0, $t0, $t1
	sw $t0, -1188($fp)
	addi $t0, $fp, -32
	sw $t0, -1192($fp)
	lw $t0, 4($fp)
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
	lw $t0, -1188($fp)
	lw $t1, -1208($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1212($fp)
	lw $t1, -1172($fp)
	lw $t2, -1212($fp)
	blt $t1, $t2, label1065
	j label1066
label1065:
	li $t0, 1
	sw $t0, -1148($fp)
label1066:
	j label1056
label1058:
	lw $t0, -40($fp)
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -52($fp)
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -64($fp)
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -76($fp)
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -88($fp)
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -100($fp)
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -112($fp)
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -124($fp)
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -136($fp)
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -148($fp)
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -160($fp)
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -1260($fp)
	li $t0, 0
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
	addi $t0, $fp, -16
	sw $t0, -1280($fp)
	li $t0, 1
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
	addi $t0, $fp, -16
	sw $t0, -1300($fp)
	li $t0, 2
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
	lw $t0, -244($fp)
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1324($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -1344($fp)
	li $t0, 1
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
	addi $t0, $fp, -32
	sw $t0, -1364($fp)
	li $t0, 2
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
	addi $t0, $fp, -32
	sw $t0, -1384($fp)
	li $t0, 3
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
	li $t0, 0
	sw $t0, -1404($fp)
	li $t0, 60769
	sw $t0, -1408($fp)
	addi $t0, $fp, -16
	sw $t0, -1412($fp)
	li $t0, 2
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
	lw $t0, -1408($fp)
	lw $t1, -1428($fp)
	mul $t0, $t0, $t1
	sw $t0, -1432($fp)
	li $t0, 31017
	sw $t0, -1436($fp)
	lw $t0, -1432($fp)
	lw $t1, -1436($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1440($fp)
	addi $t0, $fp, -32
	sw $t0, -1444($fp)
	lw $t0, 4($fp)
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
	li $t0, 55772
	sw $t0, -1464($fp)
	lw $t0, 4($fp)
	sw $t0, -1468($fp)
	lw $t0, -1464($fp)
	lw $t1, -1468($fp)
	mul $t0, $t0, $t1
	sw $t0, -1472($fp)
	li $t0, 0
	lw $t1, -1472($fp)
	sub $t0, $t0, $t1
	sw $t0, -1476($fp)
	addi $t0, $fp, -16
	sw $t0, -1480($fp)
	lw $t0, -136($fp)
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
	li $t0, 31556
	sw $t0, -1500($fp)
	lw $t0, -1496($fp)
	lw $t1, -1500($fp)
	add $t0, $t0, $t1
	sw $t0, -1504($fp)
	li $t0, 54592
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -1512($fp)
	li $t0, 0
	sw $t0, -1516($fp)
	li $t0, 33369
	sw $t0, -1520($fp)
	li $t0, 17611
	sw $t0, -1524($fp)
	lw $t0, -1520($fp)
	lw $t1, -1524($fp)
	sub $t0, $t0, $t1
	sw $t0, -1528($fp)
	lw $t1, -1528($fp)
	li $t2, 0
	bne $t1, $t2, label1075
	j label1074
label1075:
	lw $t0, -76($fp)
	sw $t0, -1532($fp)
	lw $t1, -1532($fp)
	li $t2, 0
	bne $t1, $t2, label1073
	j label1074
label1073:
	li $t0, 1
	sw $t0, -1516($fp)
label1074:
	li $t0, 0
	sw $t0, -1536($fp)
	li $t0, 55870
	sw $t0, -1540($fp)
	lw $t0, -52($fp)
	sw $t0, -1544($fp)
	lw $t0, -1540($fp)
	lw $t1, -1544($fp)
	sub $t0, $t0, $t1
	sw $t0, -1548($fp)
	li $t0, 14418
	sw $t0, -1552($fp)
	lw $t1, -1548($fp)
	lw $t2, -1552($fp)
	blt $t1, $t2, label1076
	j label1077
label1076:
	li $t0, 1
	sw $t0, -1536($fp)
label1077:
	addi $sp, $sp, -4
	lw $t0, -1476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1536($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1556($fp)
	addi $sp, $sp, 24
	lw $t0, -1460($fp)
	lw $t1, -1556($fp)
	sub $t0, $t0, $t1
	sw $t0, -1560($fp)
	lw $t1, -1440($fp)
	lw $t2, -1560($fp)
	bne $t1, $t2, label1071
	j label1072
label1071:
	li $t0, 1
	sw $t0, -1404($fp)
label1072:
	lw $ra, -4($fp)
	lw $v0, -1404($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f15:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -8
	jal f6
	sw $v0, -8($fp)
	addi $sp, $sp, 4
	li $t0, 26834
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
	jal f15
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
