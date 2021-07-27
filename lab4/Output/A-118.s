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
	addi $sp, $sp, -2596
	li $t0, 56727
	sw $t0, -96($fp)
	addi $t0, $fp, -32
	sw $t0, -100($fp)
	li $t0, 0
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
	li $t0, 26313
	sw $t0, -120($fp)
	addi $t0, $fp, -32
	sw $t0, -124($fp)
	li $t0, 1
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
	li $t0, 35501
	sw $t0, -144($fp)
	addi $t0, $fp, -32
	sw $t0, -148($fp)
	li $t0, 2
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
	li $t0, 5252
	sw $t0, -168($fp)
	addi $t0, $fp, -32
	sw $t0, -172($fp)
	li $t0, 3
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
	li $t0, 64927
	sw $t0, -192($fp)
	addi $t0, $fp, -32
	sw $t0, -196($fp)
	li $t0, 4
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
	li $t0, 13672
	sw $t0, -216($fp)
	addi $t0, $fp, -32
	sw $t0, -220($fp)
	li $t0, 5
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
	li $t0, 39072
	sw $t0, -240($fp)
	addi $t0, $fp, -32
	sw $t0, -244($fp)
	li $t0, 6
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
	li $t0, 57354
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	li $t0, 3320
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	li $t0, 40126
	sw $t0, -288($fp)
	addi $t0, $fp, -64
	sw $t0, -292($fp)
	li $t0, 0
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
	li $t0, 31615
	sw $t0, -312($fp)
	addi $t0, $fp, -64
	sw $t0, -316($fp)
	li $t0, 1
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
	li $t0, 51156
	sw $t0, -336($fp)
	addi $t0, $fp, -64
	sw $t0, -340($fp)
	li $t0, 2
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
	li $t0, 51426
	sw $t0, -360($fp)
	addi $t0, $fp, -64
	sw $t0, -364($fp)
	li $t0, 3
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
	li $t0, 6785
	sw $t0, -384($fp)
	addi $t0, $fp, -64
	sw $t0, -388($fp)
	li $t0, 4
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
	li $t0, 37893
	sw $t0, -408($fp)
	addi $t0, $fp, -64
	sw $t0, -412($fp)
	li $t0, 5
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
	li $t0, 23620
	sw $t0, -432($fp)
	addi $t0, $fp, -64
	sw $t0, -436($fp)
	li $t0, 6
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
	li $t0, 27902
	sw $t0, -456($fp)
	addi $t0, $fp, -64
	sw $t0, -460($fp)
	li $t0, 7
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
	li $t0, 32289
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	li $t0, 45101
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	li $t0, 23403
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	li $t0, 60340
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	li $t0, 51393
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	li $t0, 7260
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	li $t0, 22765
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	li $t0, 1462
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	li $t0, 16416
	sw $t0, -576($fp)
	addi $t0, $fp, -92
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
	li $t0, 13821
	sw $t0, -600($fp)
	addi $t0, $fp, -92
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
	li $t0, 45857
	sw $t0, -624($fp)
	addi $t0, $fp, -92
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
	li $t0, 65165
	sw $t0, -648($fp)
	addi $t0, $fp, -92
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
	li $t0, 23303
	sw $t0, -672($fp)
	addi $t0, $fp, -92
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
	li $t0, 55724
	sw $t0, -696($fp)
	addi $t0, $fp, -92
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
	li $t0, 56357
	sw $t0, -720($fp)
	addi $t0, $fp, -92
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
	li $t0, 49616
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -752($fp)
	li $t0, 25689
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -764($fp)
	li $t0, 61609
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -776($fp)
	li $t0, 49007
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	sw $t0, -788($fp)
	li $t0, 39361
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	sw $t0, -800($fp)
	addi $t0, $fp, -32
	sw $t0, -804($fp)
	li $t0, 0
	sw $t0, -808($fp)
	li $t0, 4
	lw $t1, -808($fp)
	mul $t0, $t0, $t1
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	lw $t1, -804($fp)
	add $t0, $t0, $t1
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	lw $t1, 0($t0)
	sw $t1, -820($fp)
	lw $t0, -820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -824($fp)
	li $t0, 1
	sw $t0, -828($fp)
	li $t0, 4
	lw $t1, -828($fp)
	mul $t0, $t0, $t1
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	lw $t1, -824($fp)
	add $t0, $t0, $t1
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	lw $t1, 0($t0)
	sw $t1, -840($fp)
	lw $t0, -840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -844($fp)
	li $t0, 2
	sw $t0, -848($fp)
	li $t0, 4
	lw $t1, -848($fp)
	mul $t0, $t0, $t1
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	lw $t1, -844($fp)
	add $t0, $t0, $t1
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	lw $t1, 0($t0)
	sw $t1, -860($fp)
	lw $t0, -860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -864($fp)
	li $t0, 3
	sw $t0, -868($fp)
	li $t0, 4
	lw $t1, -868($fp)
	mul $t0, $t0, $t1
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	lw $t1, -864($fp)
	add $t0, $t0, $t1
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	lw $t1, 0($t0)
	sw $t1, -880($fp)
	lw $t0, -880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -884($fp)
	li $t0, 4
	sw $t0, -888($fp)
	li $t0, 4
	lw $t1, -888($fp)
	mul $t0, $t0, $t1
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	lw $t1, -884($fp)
	add $t0, $t0, $t1
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	lw $t1, 0($t0)
	sw $t1, -900($fp)
	lw $t0, -900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -904($fp)
	li $t0, 5
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
	lw $t0, -920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -924($fp)
	li $t0, 6
	sw $t0, -928($fp)
	li $t0, 4
	lw $t1, -928($fp)
	mul $t0, $t0, $t1
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	lw $t1, -924($fp)
	add $t0, $t0, $t1
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	lw $t1, 0($t0)
	sw $t1, -940($fp)
	lw $t0, -940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -268($fp)
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -280($fp)
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -952($fp)
	li $t0, 0
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
	addi $t0, $fp, -64
	sw $t0, -972($fp)
	li $t0, 1
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
	addi $t0, $fp, -64
	sw $t0, -992($fp)
	li $t0, 2
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
	addi $t0, $fp, -64
	sw $t0, -1012($fp)
	li $t0, 3
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
	addi $t0, $fp, -64
	sw $t0, -1032($fp)
	li $t0, 4
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
	addi $t0, $fp, -64
	sw $t0, -1052($fp)
	li $t0, 5
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
	addi $t0, $fp, -64
	sw $t0, -1072($fp)
	li $t0, 6
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
	addi $t0, $fp, -64
	sw $t0, -1092($fp)
	li $t0, 7
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
	lw $t0, -484($fp)
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -496($fp)
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -508($fp)
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -520($fp)
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -532($fp)
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -544($fp)
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -556($fp)
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -568($fp)
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -1144($fp)
	li $t0, 0
	sw $t0, -1148($fp)
	li $t0, 4
	lw $t1, -1148($fp)
	mul $t0, $t0, $t1
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	lw $t1, -1144($fp)
	add $t0, $t0, $t1
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	lw $t1, 0($t0)
	sw $t1, -1160($fp)
	lw $t0, -1160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -1164($fp)
	li $t0, 1
	sw $t0, -1168($fp)
	li $t0, 4
	lw $t1, -1168($fp)
	mul $t0, $t0, $t1
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	lw $t1, -1164($fp)
	add $t0, $t0, $t1
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	lw $t1, 0($t0)
	sw $t1, -1180($fp)
	lw $t0, -1180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -1184($fp)
	li $t0, 2
	sw $t0, -1188($fp)
	li $t0, 4
	lw $t1, -1188($fp)
	mul $t0, $t0, $t1
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	lw $t1, -1184($fp)
	add $t0, $t0, $t1
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	lw $t1, 0($t0)
	sw $t1, -1200($fp)
	lw $t0, -1200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -1204($fp)
	li $t0, 3
	sw $t0, -1208($fp)
	li $t0, 4
	lw $t1, -1208($fp)
	mul $t0, $t0, $t1
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	lw $t1, -1204($fp)
	add $t0, $t0, $t1
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	lw $t1, 0($t0)
	sw $t1, -1220($fp)
	lw $t0, -1220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -1224($fp)
	li $t0, 4
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
	lw $t0, -1240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -1244($fp)
	li $t0, 5
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
	lw $t0, -1260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -1264($fp)
	li $t0, 6
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
	lw $t0, -748($fp)
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -760($fp)
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -772($fp)
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -784($fp)
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -796($fp)
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1304($fp)
	li $t0, 35145
	sw $t0, -1308($fp)
	li $t0, 0
	sw $t0, -1312($fp)
	li $t0, 40825
	sw $t0, -1316($fp)
	lw $t1, -1316($fp)
	li $t2, 0
	bne $t1, $t2, label124
	j label123
label123:
	li $t0, 1
	sw $t0, -1312($fp)
label124:
	li $t0, 42682
	sw $t0, -1320($fp)
	li $t0, 0
	lw $t1, -1320($fp)
	sub $t0, $t0, $t1
	sw $t0, -1324($fp)
	lw $t0, -1312($fp)
	lw $t1, -1324($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1328($fp)
	lw $t1, -1308($fp)
	lw $t2, -1328($fp)
	beq $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -1304($fp)
label122:
	lw $ra, -4($fp)
	lw $v0, -1304($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label125:
	lw $t0, -796($fp)
	sw $t0, -1332($fp)
	lw $t1, -1332($fp)
	li $t2, 0
	bne $t1, $t2, label126
	j label127
label126:
label128:
	li $t0, 0
	sw $t0, -1336($fp)
	lw $t0, -484($fp)
	sw $t0, -1340($fp)
	lw $t0, -532($fp)
	sw $t0, -1344($fp)
	lw $t1, -1340($fp)
	lw $t2, -1344($fp)
	blt $t1, $t2, label134
	j label133
label134:
	lw $t0, 8($fp)
	sw $t0, -1348($fp)
	lw $t1, -1348($fp)
	li $t2, 0
	bne $t1, $t2, label132
	j label133
label132:
	li $t0, 1
	sw $t0, -1336($fp)
label133:
	li $t0, 0
	sw $t0, -1352($fp)
	lw $t0, -280($fp)
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -1360($fp)
	li $t0, 0
	sw $t0, -1364($fp)
	lw $t0, -748($fp)
	sw $t0, -1368($fp)
	li $t0, 55195
	sw $t0, -1372($fp)
	lw $t1, -1368($fp)
	lw $t2, -1372($fp)
	beq $t1, $t2, label137
	j label139
label139:
	li $t0, 21692
	sw $t0, -1376($fp)
	lw $t1, -1376($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label138
label137:
	li $t0, 1
	sw $t0, -1364($fp)
label138:
	li $t0, 9660
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	sw $t0, -1384($fp)
	li $t0, 47866
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -1392($fp)
	li $t0, 0
	sw $t0, -1396($fp)
	li $t0, 13586
	sw $t0, -1400($fp)
	lw $t1, -1400($fp)
	li $t2, 0
	bne $t1, $t2, label141
	j label140
label140:
	li $t0, 1
	sw $t0, -1396($fp)
label141:
	li $t0, 6188
	sw $t0, -1404($fp)
	lw $t0, -1396($fp)
	lw $t1, -1404($fp)
	mul $t0, $t0, $t1
	sw $t0, -1408($fp)
	addi $sp, $sp, -4
	lw $t0, -1360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1408($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1412($fp)
	addi $sp, $sp, 24
	lw $t1, -1412($fp)
	li $t2, 0
	bne $t1, $t2, label136
	j label135
label135:
	li $t0, 1
	sw $t0, -1352($fp)
label136:
	li $t0, 0
	sw $t0, -1416($fp)
	li $t0, 0
	sw $t0, -1420($fp)
	li $t0, 22177
	sw $t0, -1424($fp)
	lw $t0, 4($fp)
	sw $t0, -1428($fp)
	lw $t1, -1424($fp)
	lw $t2, -1428($fp)
	bgt $t1, $t2, label144
	j label145
label144:
	li $t0, 1
	sw $t0, -1420($fp)
label145:
	lw $t0, -508($fp)
	sw $t0, -1432($fp)
	lw $t1, -1420($fp)
	lw $t2, -1432($fp)
	beq $t1, $t2, label142
	j label143
label142:
	li $t0, 1
	sw $t0, -1416($fp)
label143:
	lw $t0, 12($fp)
	sw $t0, -1436($fp)
	li $t0, 0
	sw $t0, -1440($fp)
	li $t0, 0
	sw $t0, -1444($fp)
	lw $t0, -796($fp)
	sw $t0, -1448($fp)
	lw $t1, -1448($fp)
	li $t2, 0
	bne $t1, $t2, label149
	j label152
label152:
	li $t0, 22765
	sw $t0, -1452($fp)
	lw $t1, -1452($fp)
	li $t2, 0
	bne $t1, $t2, label149
	j label151
label151:
	lw $t0, 20($fp)
	sw $t0, -1456($fp)
	lw $t1, -1456($fp)
	li $t2, 0
	bne $t1, $t2, label149
	j label150
label149:
	li $t0, 1
	sw $t0, -1444($fp)
label150:
	li $t0, 0
	sw $t0, -1460($fp)
	lw $t0, 8($fp)
	sw $t0, -1464($fp)
	lw $t0, 8($fp)
	sw $t0, -1468($fp)
	lw $t0, -1464($fp)
	lw $t1, -1468($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1472($fp)
	li $t0, 31988
	sw $t0, -1476($fp)
	lw $t1, -1472($fp)
	lw $t2, -1476($fp)
	bne $t1, $t2, label153
	j label154
label153:
	li $t0, 1
	sw $t0, -1460($fp)
label154:
	addi $t0, $fp, -64
	sw $t0, -1480($fp)
	li $t0, 0
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
	li $t0, 64340
	sw $t0, -1500($fp)
	lw $t0, -1496($fp)
	lw $t1, -1500($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1504($fp)
	li $t0, 0
	sw $t0, -1508($fp)
	li $t0, 6720
	sw $t0, -1512($fp)
	li $t0, 0
	lw $t1, -1512($fp)
	sub $t0, $t0, $t1
	sw $t0, -1516($fp)
	lw $t1, -1516($fp)
	li $t2, 0
	bne $t1, $t2, label157
	j label156
label157:
	li $t0, 50518
	sw $t0, -1520($fp)
	lw $t1, -1520($fp)
	li $t2, 0
	bne $t1, $t2, label155
	j label156
label155:
	li $t0, 1
	sw $t0, -1508($fp)
label156:
	li $t0, 0
	sw $t0, -1524($fp)
	li $t0, 50205
	sw $t0, -1528($fp)
	lw $t1, -1528($fp)
	li $t2, 0
	bne $t1, $t2, label160
	j label158
label160:
	lw $t0, -508($fp)
	sw $t0, -1532($fp)
	lw $t1, -1532($fp)
	li $t2, 0
	bne $t1, $t2, label158
	j label159
label158:
	li $t0, 1
	sw $t0, -1524($fp)
label159:
	addi $sp, $sp, -4
	lw $t0, -1444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1524($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1536($fp)
	addi $sp, $sp, 24
	lw $t1, -1536($fp)
	li $t2, 0
	bne $t1, $t2, label146
	j label148
label148:
	li $t0, 22107
	sw $t0, -1540($fp)
	lw $t1, -1540($fp)
	li $t2, 0
	bne $t1, $t2, label146
	j label147
label146:
	li $t0, 1
	sw $t0, -1440($fp)
label147:
	li $t0, 27753
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -1548($fp)
	lw $t0, -568($fp)
	sw $t0, -1552($fp)
	lw $t0, -520($fp)
	sw $t0, -1556($fp)
	lw $t0, -1552($fp)
	lw $t1, -1556($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1560($fp)
	li $t0, 64995
	sw $t0, -1564($fp)
	lw $t0, -1560($fp)
	lw $t1, -1564($fp)
	sub $t0, $t0, $t1
	sw $t0, -1568($fp)
	addi $sp, $sp, -4
	lw $t0, -1416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1568($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1572($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -1576($fp)
	lw $t0, 12($fp)
	sw $t0, -1580($fp)
	lw $t0, -496($fp)
	sw $t0, -1584($fp)
	lw $t0, -1580($fp)
	lw $t1, -1584($fp)
	sub $t0, $t0, $t1
	sw $t0, -1588($fp)
	lw $t1, -1588($fp)
	li $t2, 0
	bne $t1, $t2, label161
	j label163
label163:
	lw $t0, -496($fp)
	sw $t0, -1592($fp)
	lw $t1, -1592($fp)
	li $t2, 0
	bne $t1, $t2, label161
	j label162
label161:
	li $t0, 1
	sw $t0, -1576($fp)
label162:
	li $t0, 0
	sw $t0, -1596($fp)
	li $t0, 64348
	sw $t0, -1600($fp)
	lw $t1, -1600($fp)
	li $t2, 0
	bne $t1, $t2, label165
	j label164
label164:
	li $t0, 1
	sw $t0, -1596($fp)
label165:
	lw $t0, -796($fp)
	sw $t0, -1604($fp)
	lw $t0, -1596($fp)
	lw $t1, -1604($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1608($fp)
	li $t0, 32948
	sw $t0, -1612($fp)
	li $t0, 0
	sw $t0, -1616($fp)
	lw $t0, -268($fp)
	sw $t0, -1620($fp)
	li $t0, 41592
	sw $t0, -1624($fp)
	lw $t0, -1620($fp)
	lw $t1, -1624($fp)
	sub $t0, $t0, $t1
	sw $t0, -1628($fp)
	lw $t1, -1628($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label167
label168:
	lw $t0, 12($fp)
	sw $t0, -1632($fp)
	lw $t1, -1632($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label167
label166:
	li $t0, 1
	sw $t0, -1616($fp)
label167:
	addi $t0, $fp, -32
	sw $t0, -1636($fp)
	lw $t0, -796($fp)
	sw $t0, -1640($fp)
	li $t0, 4
	lw $t1, -1640($fp)
	mul $t0, $t0, $t1
	sw $t0, -1644($fp)
	lw $t0, -1644($fp)
	lw $t1, -1636($fp)
	add $t0, $t0, $t1
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	lw $t1, 0($t0)
	sw $t1, -1652($fp)
	li $t0, 0
	sw $t0, -1656($fp)
	li $t0, 19246
	sw $t0, -1660($fp)
	lw $t1, -1660($fp)
	li $t2, 0
	bne $t1, $t2, label170
	j label169
label169:
	li $t0, 1
	sw $t0, -1656($fp)
label170:
	lw $t0, -568($fp)
	sw $t0, -1664($fp)
	lw $t0, -1656($fp)
	lw $t1, -1664($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1668($fp)
	li $t0, 0
	sw $t0, -1672($fp)
	li $t0, 0
	sw $t0, -1676($fp)
	lw $t0, -796($fp)
	sw $t0, -1680($fp)
	lw $t1, -1680($fp)
	li $t2, 0
	bne $t1, $t2, label174
	j label173
label173:
	li $t0, 1
	sw $t0, -1676($fp)
label174:
	li $t0, 659
	sw $t0, -1684($fp)
	lw $t1, -1676($fp)
	lw $t2, -1684($fp)
	ble $t1, $t2, label171
	j label172
label171:
	li $t0, 1
	sw $t0, -1672($fp)
label172:
	li $t0, 0
	sw $t0, -1688($fp)
	li $t0, 28302
	sw $t0, -1692($fp)
	li $t0, 61162
	sw $t0, -1696($fp)
	lw $t0, -1692($fp)
	lw $t1, -1696($fp)
	mul $t0, $t0, $t1
	sw $t0, -1700($fp)
	lw $t1, -1700($fp)
	li $t2, 0
	bne $t1, $t2, label175
	j label177
label177:
	li $t0, 13690
	sw $t0, -1704($fp)
	lw $t1, -1704($fp)
	li $t2, 0
	bne $t1, $t2, label175
	j label176
label175:
	li $t0, 1
	sw $t0, -1688($fp)
label176:
	addi $sp, $sp, -4
	lw $t0, -1616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1688($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1708($fp)
	addi $sp, $sp, 24
	li $t0, 6905
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -1716($fp)
	li $t0, 0
	sw $t0, -1720($fp)
	li $t0, 0
	sw $t0, -1724($fp)
	lw $t0, -760($fp)
	sw $t0, -1728($fp)
	lw $t1, -1728($fp)
	li $t2, 0
	bne $t1, $t2, label181
	j label180
label180:
	li $t0, 1
	sw $t0, -1724($fp)
label181:
	li $t0, 9736
	sw $t0, -1732($fp)
	lw $t1, -1724($fp)
	lw $t2, -1732($fp)
	beq $t1, $t2, label178
	j label179
label178:
	li $t0, 1
	sw $t0, -1720($fp)
label179:
	addi $sp, $sp, -4
	lw $t0, -1608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1720($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1736($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -1336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1736($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1740($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -32
	sw $t0, -1744($fp)
	lw $t0, -268($fp)
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
	lw $t0, -1740($fp)
	lw $t1, -1760($fp)
	sub $t0, $t0, $t1
	sw $t0, -1764($fp)
	addi $t0, $fp, -32
	sw $t0, -1768($fp)
	li $t0, 4
	sw $t0, -1772($fp)
	li $t0, 4
	lw $t1, -1772($fp)
	mul $t0, $t0, $t1
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	lw $t1, -1768($fp)
	add $t0, $t0, $t1
	sw $t0, -1780($fp)
	lw $t0, -1780($fp)
	lw $t1, 0($t0)
	sw $t1, -1784($fp)
	lw $t1, -1764($fp)
	lw $t2, -1784($fp)
	beq $t1, $t2, label131
	j label130
label131:
	li $t0, 64374
	sw $t0, -1788($fp)
	lw $t1, -1788($fp)
	li $t2, 0
	bne $t1, $t2, label129
	j label130
label129:
	li $t0, 0
	sw $t0, -1792($fp)
	lw $t0, -784($fp)
	sw $t0, -1796($fp)
	lw $t0, 12($fp)
	sw $t0, -1800($fp)
	li $t0, 54541
	sw $t0, -1804($fp)
	lw $t0, -1800($fp)
	lw $t1, -1804($fp)
	mul $t0, $t0, $t1
	sw $t0, -1808($fp)
	lw $t1, -1796($fp)
	lw $t2, -1808($fp)
	blt $t1, $t2, label185
	j label184
label185:
	li $t0, 0
	sw $t0, -1812($fp)
	lw $t0, -556($fp)
	sw $t0, -1816($fp)
	lw $t0, -508($fp)
	sw $t0, -1820($fp)
	lw $t1, -1816($fp)
	lw $t2, -1820($fp)
	bgt $t1, $t2, label186
	j label187
label186:
	li $t0, 1
	sw $t0, -1812($fp)
label187:
	lw $t0, 12($fp)
	sw $t0, -1824($fp)
	lw $t1, -1812($fp)
	lw $t2, -1824($fp)
	beq $t1, $t2, label182
	j label184
label184:
	li $t0, 37390
	sw $t0, -1828($fp)
	li $t0, 27140
	sw $t0, -1832($fp)
	li $t0, 50167
	sw $t0, -1836($fp)
	lw $t0, -1832($fp)
	lw $t1, -1836($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1840($fp)
	lw $t0, -1828($fp)
	lw $t1, -1840($fp)
	add $t0, $t0, $t1
	sw $t0, -1844($fp)
	lw $t1, -1844($fp)
	li $t2, 0
	bne $t1, $t2, label182
	j label183
label182:
	li $t0, 1
	sw $t0, -1792($fp)
label183:
	j label128
label130:
	j label125
label127:
label188:
	addi $t0, $fp, -32
	sw $t0, -1848($fp)
	li $t0, 0
	sw $t0, -1852($fp)
	addi $t0, $fp, -92
	sw $t0, -1856($fp)
	lw $t0, -508($fp)
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
	li $t0, 51080
	sw $t0, -1876($fp)
	lw $t1, -1872($fp)
	lw $t2, -1876($fp)
	beq $t1, $t2, label192
	j label193
label192:
	li $t0, 1
	sw $t0, -1852($fp)
label193:
	li $t0, 4
	lw $t1, -1852($fp)
	mul $t0, $t0, $t1
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	lw $t1, -1848($fp)
	add $t0, $t0, $t1
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	lw $t1, 0($t0)
	sw $t1, -1888($fp)
	lw $t1, -1888($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label190
label191:
	lw $t0, -520($fp)
	sw $t0, -1892($fp)
	lw $t1, -1892($fp)
	li $t2, 0
	bne $t1, $t2, label189
	j label190
label189:
	li $t0, 0
	sw $t0, -1896($fp)
	addi $t0, $fp, -32
	sw $t0, -1900($fp)
	li $t0, 2
	sw $t0, -1904($fp)
	li $t0, 4
	lw $t1, -1904($fp)
	mul $t0, $t0, $t1
	sw $t0, -1908($fp)
	lw $t0, -1908($fp)
	lw $t1, -1900($fp)
	add $t0, $t0, $t1
	sw $t0, -1912($fp)
	lw $t0, -1912($fp)
	lw $t1, 0($t0)
	sw $t1, -1916($fp)
	lw $t1, -1916($fp)
	li $t2, 0
	bne $t1, $t2, label194
	j label196
label196:
	li $t0, 27136
	sw $t0, -1920($fp)
	lw $t1, -1920($fp)
	li $t2, 0
	bne $t1, $t2, label194
	j label195
label194:
	li $t0, 1
	sw $t0, -1896($fp)
label195:
	lw $ra, -4($fp)
	lw $v0, -1896($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label188
label190:
	li $t0, 0
	sw $t0, -1924($fp)
	lw $t0, -796($fp)
	sw $t0, -1928($fp)
	li $t0, 0
	lw $t1, -1928($fp)
	sub $t0, $t0, $t1
	sw $t0, -1932($fp)
	lw $t1, -1932($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label201
label203:
	lw $t0, -532($fp)
	sw $t0, -1936($fp)
	lw $t1, -1936($fp)
	li $t2, 0
	bne $t1, $t2, label202
	j label201
label202:
	lw $t0, -556($fp)
	sw $t0, -1940($fp)
	lw $t0, -520($fp)
	sw $t0, -1944($fp)
	lw $t0, -1940($fp)
	lw $t1, -1944($fp)
	add $t0, $t0, $t1
	sw $t0, -1948($fp)
	lw $t1, -1948($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label201
label200:
	li $t0, 1
	sw $t0, -1924($fp)
label201:
	lw $t0, -1924($fp)
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -1952($fp)
	lw $t1, -1952($fp)
	li $t2, 0
	bne $t1, $t2, label197
	j label198
label197:
	li $t0, 60747
	sw $t0, -1956($fp)
	j label199
label198:
	li $t0, 0
	sw $t0, -1960($fp)
	lw $t0, -784($fp)
	sw $t0, -1964($fp)
	lw $t0, 12($fp)
	sw $t0, -1968($fp)
	lw $t0, -1964($fp)
	lw $t1, -1968($fp)
	mul $t0, $t0, $t1
	sw $t0, -1972($fp)
	li $t0, 0
	lw $t1, -1972($fp)
	sub $t0, $t0, $t1
	sw $t0, -1976($fp)
	lw $t1, -1976($fp)
	li $t2, 0
	bne $t1, $t2, label208
	j label207
label208:
	li $t0, 2690
	sw $t0, -1980($fp)
	lw $t0, -796($fp)
	sw $t0, -1984($fp)
	lw $t1, -1980($fp)
	lw $t2, -1984($fp)
	bge $t1, $t2, label204
	j label207
label207:
	lw $t0, -532($fp)
	sw $t0, -1988($fp)
	lw $t1, -1988($fp)
	li $t2, 0
	bne $t1, $t2, label204
	j label206
label206:
	addi $t0, $fp, -32
	sw $t0, -1992($fp)
	li $t0, 5
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
	lw $t0, 12($fp)
	sw $t0, -2012($fp)
	lw $t0, -2008($fp)
	lw $t1, -2012($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2016($fp)
	li $t0, 52895
	sw $t0, -2020($fp)
	lw $t0, -796($fp)
	sw $t0, -2024($fp)
	lw $t0, -2020($fp)
	lw $t1, -2024($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2028($fp)
	lw $t0, -2016($fp)
	lw $t1, -2028($fp)
	sub $t0, $t0, $t1
	sw $t0, -2032($fp)
	lw $t1, -2032($fp)
	li $t2, 0
	bne $t1, $t2, label204
	j label205
label204:
	li $t0, 1
	sw $t0, -1960($fp)
label205:
label199:
	addi $t0, $fp, -32
	sw $t0, -2036($fp)
	li $t0, 0
	sw $t0, -2040($fp)
	li $t0, 4
	lw $t1, -2040($fp)
	mul $t0, $t0, $t1
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	lw $t1, -2036($fp)
	add $t0, $t0, $t1
	sw $t0, -2048($fp)
	lw $t0, -2048($fp)
	lw $t1, 0($t0)
	sw $t1, -2052($fp)
	lw $t0, -2052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -2056($fp)
	li $t0, 1
	sw $t0, -2060($fp)
	li $t0, 4
	lw $t1, -2060($fp)
	mul $t0, $t0, $t1
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	lw $t1, -2056($fp)
	add $t0, $t0, $t1
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	lw $t1, 0($t0)
	sw $t1, -2072($fp)
	lw $t0, -2072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -2076($fp)
	li $t0, 2
	sw $t0, -2080($fp)
	li $t0, 4
	lw $t1, -2080($fp)
	mul $t0, $t0, $t1
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	lw $t1, -2076($fp)
	add $t0, $t0, $t1
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	lw $t1, 0($t0)
	sw $t1, -2092($fp)
	lw $t0, -2092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -2096($fp)
	li $t0, 3
	sw $t0, -2100($fp)
	li $t0, 4
	lw $t1, -2100($fp)
	mul $t0, $t0, $t1
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	lw $t1, -2096($fp)
	add $t0, $t0, $t1
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	lw $t1, 0($t0)
	sw $t1, -2112($fp)
	lw $t0, -2112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -2116($fp)
	li $t0, 4
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
	lw $t0, -2132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -2136($fp)
	li $t0, 5
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
	addi $t0, $fp, -32
	sw $t0, -2156($fp)
	li $t0, 6
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
	lw $t0, -268($fp)
	sw $t0, -2176($fp)
	lw $t0, -2176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -280($fp)
	sw $t0, -2180($fp)
	lw $t0, -2180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -2184($fp)
	li $t0, 0
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
	addi $t0, $fp, -64
	sw $t0, -2204($fp)
	li $t0, 1
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
	addi $t0, $fp, -64
	sw $t0, -2224($fp)
	li $t0, 2
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
	addi $t0, $fp, -64
	sw $t0, -2244($fp)
	li $t0, 3
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
	addi $t0, $fp, -64
	sw $t0, -2264($fp)
	li $t0, 4
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
	addi $t0, $fp, -64
	sw $t0, -2284($fp)
	li $t0, 5
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
	addi $t0, $fp, -64
	sw $t0, -2304($fp)
	li $t0, 6
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
	addi $t0, $fp, -64
	sw $t0, -2324($fp)
	li $t0, 7
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
	lw $t0, -484($fp)
	sw $t0, -2344($fp)
	lw $t0, -2344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -496($fp)
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -508($fp)
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -520($fp)
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -532($fp)
	sw $t0, -2360($fp)
	lw $t0, -2360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -544($fp)
	sw $t0, -2364($fp)
	lw $t0, -2364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -556($fp)
	sw $t0, -2368($fp)
	lw $t0, -2368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -568($fp)
	sw $t0, -2372($fp)
	lw $t0, -2372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -2376($fp)
	li $t0, 0
	sw $t0, -2380($fp)
	li $t0, 4
	lw $t1, -2380($fp)
	mul $t0, $t0, $t1
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	lw $t1, -2376($fp)
	add $t0, $t0, $t1
	sw $t0, -2388($fp)
	lw $t0, -2388($fp)
	lw $t1, 0($t0)
	sw $t1, -2392($fp)
	lw $t0, -2392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -2396($fp)
	li $t0, 1
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
	lw $t0, -2412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -2416($fp)
	li $t0, 2
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
	lw $t0, -2432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -2436($fp)
	li $t0, 3
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
	lw $t0, -2452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -2456($fp)
	li $t0, 4
	sw $t0, -2460($fp)
	li $t0, 4
	lw $t1, -2460($fp)
	mul $t0, $t0, $t1
	sw $t0, -2464($fp)
	lw $t0, -2464($fp)
	lw $t1, -2456($fp)
	add $t0, $t0, $t1
	sw $t0, -2468($fp)
	lw $t0, -2468($fp)
	lw $t1, 0($t0)
	sw $t1, -2472($fp)
	lw $t0, -2472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -2476($fp)
	li $t0, 5
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
	addi $t0, $fp, -92
	sw $t0, -2496($fp)
	li $t0, 6
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
	lw $t0, -748($fp)
	sw $t0, -2516($fp)
	lw $t0, -2516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -760($fp)
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -772($fp)
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -784($fp)
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -796($fp)
	sw $t0, -2532($fp)
	lw $t0, -2532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2536($fp)
	li $t0, 7947
	sw $t0, -2540($fp)
	lw $t1, -2540($fp)
	li $t2, 0
	bne $t1, $t2, label209
	j label211
label211:
	lw $t0, -568($fp)
	sw $t0, -2544($fp)
	lw $t1, -2544($fp)
	li $t2, 0
	bne $t1, $t2, label209
	j label210
label209:
	li $t0, 1
	sw $t0, -2536($fp)
label210:
	lw $t0, -556($fp)
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -2552($fp)
	addi $t0, $fp, -32
	sw $t0, -2556($fp)
	lw $t0, -268($fp)
	sw $t0, -2560($fp)
	li $t0, 4
	lw $t1, -2560($fp)
	mul $t0, $t0, $t1
	sw $t0, -2564($fp)
	lw $t0, -2564($fp)
	lw $t1, -2556($fp)
	add $t0, $t0, $t1
	sw $t0, -2568($fp)
	lw $t0, -2568($fp)
	lw $t1, 0($t0)
	sw $t1, -2572($fp)
	li $t0, 0
	sw $t0, -2576($fp)
	li $t0, 33316
	sw $t0, -2580($fp)
	li $t0, 0
	lw $t1, -2580($fp)
	sub $t0, $t0, $t1
	sw $t0, -2584($fp)
	lw $t0, -784($fp)
	sw $t0, -2588($fp)
	lw $t1, -2584($fp)
	lw $t2, -2588($fp)
	bgt $t1, $t2, label212
	j label213
label212:
	li $t0, 1
	sw $t0, -2576($fp)
label213:
	lw $t0, -796($fp)
	sw $t0, -2592($fp)
	lw $t0, -2592($fp)
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -2596($fp)
	addi $sp, $sp, -4
	lw $t0, -2536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2596($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2600($fp)
	addi $sp, $sp, 24
	lw $ra, -4($fp)
	lw $v0, -2600($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -20620
	li $t0, 39026
	sw $t0, -508($fp)
	addi $t0, $fp, -12
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
	li $t0, 56452
	sw $t0, -532($fp)
	addi $t0, $fp, -12
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
	li $t0, 6751
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	li $t0, 5478
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	li $t0, 13681
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	li $t0, 28858
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	li $t0, 27655
	sw $t0, -604($fp)
	addi $t0, $fp, -24
	sw $t0, -608($fp)
	li $t0, 0
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
	li $t0, 27268
	sw $t0, -628($fp)
	addi $t0, $fp, -24
	sw $t0, -632($fp)
	li $t0, 1
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
	li $t0, 35046
	sw $t0, -652($fp)
	addi $t0, $fp, -24
	sw $t0, -656($fp)
	li $t0, 2
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
	li $t0, 9986
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, -684($fp)
	li $t0, 36928
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	sw $t0, -696($fp)
	li $t0, 24706
	sw $t0, -700($fp)
	addi $t0, $fp, -60
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
	li $t0, 31678
	sw $t0, -724($fp)
	addi $t0, $fp, -60
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
	li $t0, 16197
	sw $t0, -748($fp)
	addi $t0, $fp, -60
	sw $t0, -752($fp)
	li $t0, 2
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
	li $t0, 55191
	sw $t0, -772($fp)
	addi $t0, $fp, -60
	sw $t0, -776($fp)
	li $t0, 3
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
	li $t0, 30516
	sw $t0, -796($fp)
	addi $t0, $fp, -60
	sw $t0, -800($fp)
	li $t0, 4
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
	li $t0, 5203
	sw $t0, -820($fp)
	addi $t0, $fp, -60
	sw $t0, -824($fp)
	li $t0, 5
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
	li $t0, 27045
	sw $t0, -844($fp)
	addi $t0, $fp, -60
	sw $t0, -848($fp)
	li $t0, 6
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
	li $t0, 57656
	sw $t0, -868($fp)
	addi $t0, $fp, -60
	sw $t0, -872($fp)
	li $t0, 7
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
	li $t0, 55370
	sw $t0, -892($fp)
	addi $t0, $fp, -60
	sw $t0, -896($fp)
	li $t0, 8
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
	li $t0, 12589
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -924($fp)
	li $t0, 19919
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -936($fp)
	li $t0, 59248
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -948($fp)
	li $t0, 39725
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	sw $t0, -960($fp)
	li $t0, 15130
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	sw $t0, -972($fp)
	li $t0, 61938
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	sw $t0, -984($fp)
	li $t0, 785
	sw $t0, -988($fp)
	addi $t0, $fp, -88
	sw $t0, -992($fp)
	li $t0, 0
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
	li $t0, 38095
	sw $t0, -1012($fp)
	addi $t0, $fp, -88
	sw $t0, -1016($fp)
	li $t0, 1
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
	li $t0, 49297
	sw $t0, -1036($fp)
	addi $t0, $fp, -88
	sw $t0, -1040($fp)
	li $t0, 2
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
	li $t0, 34101
	sw $t0, -1060($fp)
	addi $t0, $fp, -88
	sw $t0, -1064($fp)
	li $t0, 3
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
	li $t0, 46042
	sw $t0, -1084($fp)
	addi $t0, $fp, -88
	sw $t0, -1088($fp)
	li $t0, 4
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
	li $t0, 22787
	sw $t0, -1108($fp)
	addi $t0, $fp, -88
	sw $t0, -1112($fp)
	li $t0, 5
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
	li $t0, 25017
	sw $t0, -1132($fp)
	addi $t0, $fp, -88
	sw $t0, -1136($fp)
	li $t0, 6
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
	li $t0, 52793
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	sw $t0, -1164($fp)
	li $t0, 28266
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	sw $t0, -1176($fp)
	li $t0, 38699
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	sw $t0, -1188($fp)
	li $t0, 16115
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -1200($fp)
	li $t0, 55921
	sw $t0, -1204($fp)
	addi $t0, $fp, -104
	sw $t0, -1208($fp)
	li $t0, 0
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
	li $t0, 431
	sw $t0, -1228($fp)
	addi $t0, $fp, -104
	sw $t0, -1232($fp)
	li $t0, 1
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
	li $t0, 51162
	sw $t0, -1252($fp)
	addi $t0, $fp, -104
	sw $t0, -1256($fp)
	li $t0, 2
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
	li $t0, 371
	sw $t0, -1276($fp)
	addi $t0, $fp, -104
	sw $t0, -1280($fp)
	li $t0, 3
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
	li $t0, 37359
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	sw $t0, -1308($fp)
	li $t0, 10332
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	sw $t0, -1320($fp)
	li $t0, 32049
	sw $t0, -1324($fp)
	addi $t0, $fp, -132
	sw $t0, -1328($fp)
	li $t0, 0
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
	li $t0, 53556
	sw $t0, -1348($fp)
	addi $t0, $fp, -132
	sw $t0, -1352($fp)
	li $t0, 1
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
	li $t0, 65523
	sw $t0, -1372($fp)
	addi $t0, $fp, -132
	sw $t0, -1376($fp)
	li $t0, 2
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
	li $t0, 62565
	sw $t0, -1396($fp)
	addi $t0, $fp, -132
	sw $t0, -1400($fp)
	li $t0, 3
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
	li $t0, 58759
	sw $t0, -1420($fp)
	addi $t0, $fp, -132
	sw $t0, -1424($fp)
	li $t0, 4
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
	li $t0, 27032
	sw $t0, -1444($fp)
	addi $t0, $fp, -132
	sw $t0, -1448($fp)
	li $t0, 5
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
	li $t0, 54685
	sw $t0, -1468($fp)
	addi $t0, $fp, -132
	sw $t0, -1472($fp)
	li $t0, 6
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
	li $t0, 48594
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	sw $t0, -1500($fp)
	li $t0, 39621
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	sw $t0, -1512($fp)
	li $t0, 9068
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	sw $t0, -1524($fp)
	li $t0, 42306
	sw $t0, -1528($fp)
	addi $t0, $fp, -140
	sw $t0, -1532($fp)
	li $t0, 0
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
	li $t0, 13810
	sw $t0, -1552($fp)
	addi $t0, $fp, -140
	sw $t0, -1556($fp)
	li $t0, 1
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
	li $t0, 24199
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	sw $t0, -1584($fp)
	li $t0, 38709
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	sw $t0, -1596($fp)
	li $t0, 14596
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	sw $t0, -1608($fp)
	li $t0, 62294
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	sw $t0, -1620($fp)
	li $t0, 22470
	sw $t0, -1624($fp)
	lw $t0, -1624($fp)
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	sw $t0, -1632($fp)
	li $t0, 48697
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	sw $t0, -1644($fp)
	li $t0, 42800
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	sw $t0, -1656($fp)
	li $t0, 45258
	sw $t0, -1660($fp)
	lw $t0, -1660($fp)
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	sw $t0, -1668($fp)
	li $t0, 8179
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	sw $t0, -1680($fp)
	li $t0, 30057
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	sw $t0, -1692($fp)
	li $t0, 7988
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	sw $t0, -1704($fp)
	li $t0, 46878
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	sw $t0, -1716($fp)
	li $t0, 46172
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	sw $t0, -1728($fp)
	li $t0, 63909
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	sw $t0, -1740($fp)
	li $t0, 47309
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	sw $t0, -1752($fp)
	li $t0, 31798
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	sw $t0, -1764($fp)
	li $t0, 64281
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	sw $t0, -1776($fp)
	li $t0, 19132
	sw $t0, -1780($fp)
	lw $t0, -1780($fp)
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	sw $t0, -1788($fp)
	li $t0, 42130
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	sw $t0, -1800($fp)
	li $t0, 30794
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	sw $t0, -1812($fp)
	li $t0, 7152
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	sw $t0, -1824($fp)
	li $t0, 42117
	sw $t0, -1828($fp)
	lw $t0, -1828($fp)
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	sw $t0, -1836($fp)
	li $t0, 27824
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	sw $t0, -1848($fp)
	li $t0, 376
	sw $t0, -1852($fp)
	addi $t0, $fp, -164
	sw $t0, -1856($fp)
	li $t0, 0
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
	li $t0, 3613
	sw $t0, -1876($fp)
	addi $t0, $fp, -164
	sw $t0, -1880($fp)
	li $t0, 1
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
	li $t0, 16973
	sw $t0, -1900($fp)
	addi $t0, $fp, -164
	sw $t0, -1904($fp)
	li $t0, 2
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
	li $t0, 48970
	sw $t0, -1924($fp)
	addi $t0, $fp, -164
	sw $t0, -1928($fp)
	li $t0, 3
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
	li $t0, 43234
	sw $t0, -1948($fp)
	addi $t0, $fp, -164
	sw $t0, -1952($fp)
	li $t0, 4
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
	li $t0, 26042
	sw $t0, -1972($fp)
	addi $t0, $fp, -164
	sw $t0, -1976($fp)
	li $t0, 5
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
	li $t0, 25740
	sw $t0, -1996($fp)
	lw $t0, -1996($fp)
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	sw $t0, -2004($fp)
	li $t0, 57045
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	sw $t0, -2016($fp)
	li $t0, 50241
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	sw $t0, -2024($fp)
	lw $t0, -2024($fp)
	sw $t0, -2028($fp)
	li $t0, 64449
	sw $t0, -2032($fp)
	lw $t0, -2032($fp)
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	sw $t0, -2040($fp)
	li $t0, 6105
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	sw $t0, -2048($fp)
	lw $t0, -2048($fp)
	sw $t0, -2052($fp)
	li $t0, 46999
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	sw $t0, -2064($fp)
	li $t0, 21384
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	sw $t0, -2076($fp)
	li $t0, 54802
	sw $t0, -2080($fp)
	addi $t0, $fp, -180
	sw $t0, -2084($fp)
	li $t0, 0
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
	li $t0, 24263
	sw $t0, -2104($fp)
	addi $t0, $fp, -180
	sw $t0, -2108($fp)
	li $t0, 1
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
	li $t0, 1106
	sw $t0, -2128($fp)
	addi $t0, $fp, -180
	sw $t0, -2132($fp)
	li $t0, 2
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
	li $t0, 62981
	sw $t0, -2152($fp)
	addi $t0, $fp, -180
	sw $t0, -2156($fp)
	li $t0, 3
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
	li $t0, 54320
	sw $t0, -2176($fp)
	lw $t0, -2176($fp)
	sw $t0, -2180($fp)
	lw $t0, -2180($fp)
	sw $t0, -2184($fp)
	li $t0, 9094
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	sw $t0, -2192($fp)
	lw $t0, -2192($fp)
	sw $t0, -2196($fp)
	li $t0, 44323
	sw $t0, -2200($fp)
	addi $t0, $fp, -204
	sw $t0, -2204($fp)
	li $t0, 0
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
	li $t0, 34956
	sw $t0, -2224($fp)
	addi $t0, $fp, -204
	sw $t0, -2228($fp)
	li $t0, 1
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
	li $t0, 7467
	sw $t0, -2248($fp)
	addi $t0, $fp, -204
	sw $t0, -2252($fp)
	li $t0, 2
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
	li $t0, 26096
	sw $t0, -2272($fp)
	addi $t0, $fp, -204
	sw $t0, -2276($fp)
	li $t0, 3
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
	li $t0, 1219
	sw $t0, -2296($fp)
	addi $t0, $fp, -204
	sw $t0, -2300($fp)
	li $t0, 4
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
	li $t0, 6212
	sw $t0, -2320($fp)
	addi $t0, $fp, -204
	sw $t0, -2324($fp)
	li $t0, 5
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
	li $t0, 45228
	sw $t0, -2344($fp)
	lw $t0, -2344($fp)
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	sw $t0, -2352($fp)
	li $t0, 43349
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	sw $t0, -2360($fp)
	lw $t0, -2360($fp)
	sw $t0, -2364($fp)
	li $t0, 37007
	sw $t0, -2368($fp)
	lw $t0, -2368($fp)
	sw $t0, -2372($fp)
	lw $t0, -2372($fp)
	sw $t0, -2376($fp)
	li $t0, 52381
	sw $t0, -2380($fp)
	lw $t0, -2380($fp)
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	sw $t0, -2388($fp)
	li $t0, 19931
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	sw $t0, -2400($fp)
	li $t0, 64831
	sw $t0, -2404($fp)
	addi $t0, $fp, -240
	sw $t0, -2408($fp)
	li $t0, 0
	sw $t0, -2412($fp)
	lw $t0, -2412($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2416($fp)
	lw $t0, -2408($fp)
	lw $t1, -2416($fp)
	add $t0, $t0, $t1
	sw $t0, -2420($fp)
	lw $t0, -2404($fp)
	lw $t1, -2420($fp)
	sw $t0, 0($t1)
	lw $t0, -2420($fp)
	lw $t1, 0($t0)
	sw $t1, -2424($fp)
	li $t0, 52757
	sw $t0, -2428($fp)
	addi $t0, $fp, -240
	sw $t0, -2432($fp)
	li $t0, 1
	sw $t0, -2436($fp)
	lw $t0, -2436($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2440($fp)
	lw $t0, -2432($fp)
	lw $t1, -2440($fp)
	add $t0, $t0, $t1
	sw $t0, -2444($fp)
	lw $t0, -2428($fp)
	lw $t1, -2444($fp)
	sw $t0, 0($t1)
	lw $t0, -2444($fp)
	lw $t1, 0($t0)
	sw $t1, -2448($fp)
	li $t0, 23544
	sw $t0, -2452($fp)
	addi $t0, $fp, -240
	sw $t0, -2456($fp)
	li $t0, 2
	sw $t0, -2460($fp)
	lw $t0, -2460($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2464($fp)
	lw $t0, -2456($fp)
	lw $t1, -2464($fp)
	add $t0, $t0, $t1
	sw $t0, -2468($fp)
	lw $t0, -2452($fp)
	lw $t1, -2468($fp)
	sw $t0, 0($t1)
	lw $t0, -2468($fp)
	lw $t1, 0($t0)
	sw $t1, -2472($fp)
	li $t0, 16268
	sw $t0, -2476($fp)
	addi $t0, $fp, -240
	sw $t0, -2480($fp)
	li $t0, 3
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
	li $t0, 36191
	sw $t0, -2500($fp)
	addi $t0, $fp, -240
	sw $t0, -2504($fp)
	li $t0, 4
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
	li $t0, 1243
	sw $t0, -2524($fp)
	addi $t0, $fp, -240
	sw $t0, -2528($fp)
	li $t0, 5
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
	li $t0, 42310
	sw $t0, -2548($fp)
	addi $t0, $fp, -240
	sw $t0, -2552($fp)
	li $t0, 6
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
	li $t0, 61931
	sw $t0, -2572($fp)
	addi $t0, $fp, -240
	sw $t0, -2576($fp)
	li $t0, 7
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
	li $t0, 58288
	sw $t0, -2596($fp)
	addi $t0, $fp, -240
	sw $t0, -2600($fp)
	li $t0, 8
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
	li $t0, 27015
	sw $t0, -2620($fp)
	addi $t0, $fp, -280
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
	li $t0, 60845
	sw $t0, -2644($fp)
	addi $t0, $fp, -280
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
	li $t0, 64393
	sw $t0, -2668($fp)
	addi $t0, $fp, -280
	sw $t0, -2672($fp)
	li $t0, 2
	sw $t0, -2676($fp)
	lw $t0, -2676($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2680($fp)
	lw $t0, -2672($fp)
	lw $t1, -2680($fp)
	add $t0, $t0, $t1
	sw $t0, -2684($fp)
	lw $t0, -2668($fp)
	lw $t1, -2684($fp)
	sw $t0, 0($t1)
	lw $t0, -2684($fp)
	lw $t1, 0($t0)
	sw $t1, -2688($fp)
	li $t0, 8478
	sw $t0, -2692($fp)
	addi $t0, $fp, -280
	sw $t0, -2696($fp)
	li $t0, 3
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2704($fp)
	lw $t0, -2696($fp)
	lw $t1, -2704($fp)
	add $t0, $t0, $t1
	sw $t0, -2708($fp)
	lw $t0, -2692($fp)
	lw $t1, -2708($fp)
	sw $t0, 0($t1)
	lw $t0, -2708($fp)
	lw $t1, 0($t0)
	sw $t1, -2712($fp)
	li $t0, 16693
	sw $t0, -2716($fp)
	addi $t0, $fp, -280
	sw $t0, -2720($fp)
	li $t0, 4
	sw $t0, -2724($fp)
	lw $t0, -2724($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2728($fp)
	lw $t0, -2720($fp)
	lw $t1, -2728($fp)
	add $t0, $t0, $t1
	sw $t0, -2732($fp)
	lw $t0, -2716($fp)
	lw $t1, -2732($fp)
	sw $t0, 0($t1)
	lw $t0, -2732($fp)
	lw $t1, 0($t0)
	sw $t1, -2736($fp)
	li $t0, 53659
	sw $t0, -2740($fp)
	addi $t0, $fp, -280
	sw $t0, -2744($fp)
	li $t0, 5
	sw $t0, -2748($fp)
	lw $t0, -2748($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2752($fp)
	lw $t0, -2744($fp)
	lw $t1, -2752($fp)
	add $t0, $t0, $t1
	sw $t0, -2756($fp)
	lw $t0, -2740($fp)
	lw $t1, -2756($fp)
	sw $t0, 0($t1)
	lw $t0, -2756($fp)
	lw $t1, 0($t0)
	sw $t1, -2760($fp)
	li $t0, 32741
	sw $t0, -2764($fp)
	addi $t0, $fp, -280
	sw $t0, -2768($fp)
	li $t0, 6
	sw $t0, -2772($fp)
	lw $t0, -2772($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2776($fp)
	lw $t0, -2768($fp)
	lw $t1, -2776($fp)
	add $t0, $t0, $t1
	sw $t0, -2780($fp)
	lw $t0, -2764($fp)
	lw $t1, -2780($fp)
	sw $t0, 0($t1)
	lw $t0, -2780($fp)
	lw $t1, 0($t0)
	sw $t1, -2784($fp)
	li $t0, 17799
	sw $t0, -2788($fp)
	addi $t0, $fp, -280
	sw $t0, -2792($fp)
	li $t0, 7
	sw $t0, -2796($fp)
	lw $t0, -2796($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2800($fp)
	lw $t0, -2792($fp)
	lw $t1, -2800($fp)
	add $t0, $t0, $t1
	sw $t0, -2804($fp)
	lw $t0, -2788($fp)
	lw $t1, -2804($fp)
	sw $t0, 0($t1)
	lw $t0, -2804($fp)
	lw $t1, 0($t0)
	sw $t1, -2808($fp)
	li $t0, 51105
	sw $t0, -2812($fp)
	addi $t0, $fp, -280
	sw $t0, -2816($fp)
	li $t0, 8
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
	li $t0, 21525
	sw $t0, -2836($fp)
	addi $t0, $fp, -280
	sw $t0, -2840($fp)
	li $t0, 9
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
	li $t0, 26893
	sw $t0, -2860($fp)
	lw $t0, -2860($fp)
	sw $t0, -2864($fp)
	lw $t0, -2864($fp)
	sw $t0, -2868($fp)
	li $t0, 29892
	sw $t0, -2872($fp)
	lw $t0, -2872($fp)
	sw $t0, -2876($fp)
	lw $t0, -2876($fp)
	sw $t0, -2880($fp)
	li $t0, 56482
	sw $t0, -2884($fp)
	lw $t0, -2884($fp)
	sw $t0, -2888($fp)
	lw $t0, -2888($fp)
	sw $t0, -2892($fp)
	li $t0, 34360
	sw $t0, -2896($fp)
	lw $t0, -2896($fp)
	sw $t0, -2900($fp)
	lw $t0, -2900($fp)
	sw $t0, -2904($fp)
	li $t0, 55989
	sw $t0, -2908($fp)
	lw $t0, -2908($fp)
	sw $t0, -2912($fp)
	lw $t0, -2912($fp)
	sw $t0, -2916($fp)
	li $t0, 57701
	sw $t0, -2920($fp)
	lw $t0, -2920($fp)
	sw $t0, -2924($fp)
	lw $t0, -2924($fp)
	sw $t0, -2928($fp)
	li $t0, 40573
	sw $t0, -2932($fp)
	lw $t0, -2932($fp)
	sw $t0, -2936($fp)
	lw $t0, -2936($fp)
	sw $t0, -2940($fp)
	li $t0, 35681
	sw $t0, -2944($fp)
	lw $t0, -2944($fp)
	sw $t0, -2948($fp)
	lw $t0, -2948($fp)
	sw $t0, -2952($fp)
	li $t0, 35514
	sw $t0, -2956($fp)
	lw $t0, -2956($fp)
	sw $t0, -2960($fp)
	lw $t0, -2960($fp)
	sw $t0, -2964($fp)
	li $t0, 12044
	sw $t0, -2968($fp)
	addi $t0, $fp, -300
	sw $t0, -2972($fp)
	li $t0, 0
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
	li $t0, 22526
	sw $t0, -2992($fp)
	addi $t0, $fp, -300
	sw $t0, -2996($fp)
	li $t0, 1
	sw $t0, -3000($fp)
	lw $t0, -3000($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3004($fp)
	lw $t0, -2996($fp)
	lw $t1, -3004($fp)
	add $t0, $t0, $t1
	sw $t0, -3008($fp)
	lw $t0, -2992($fp)
	lw $t1, -3008($fp)
	sw $t0, 0($t1)
	lw $t0, -3008($fp)
	lw $t1, 0($t0)
	sw $t1, -3012($fp)
	li $t0, 55445
	sw $t0, -3016($fp)
	addi $t0, $fp, -300
	sw $t0, -3020($fp)
	li $t0, 2
	sw $t0, -3024($fp)
	lw $t0, -3024($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3028($fp)
	lw $t0, -3020($fp)
	lw $t1, -3028($fp)
	add $t0, $t0, $t1
	sw $t0, -3032($fp)
	lw $t0, -3016($fp)
	lw $t1, -3032($fp)
	sw $t0, 0($t1)
	lw $t0, -3032($fp)
	lw $t1, 0($t0)
	sw $t1, -3036($fp)
	li $t0, 11339
	sw $t0, -3040($fp)
	addi $t0, $fp, -300
	sw $t0, -3044($fp)
	li $t0, 3
	sw $t0, -3048($fp)
	lw $t0, -3048($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3052($fp)
	lw $t0, -3044($fp)
	lw $t1, -3052($fp)
	add $t0, $t0, $t1
	sw $t0, -3056($fp)
	lw $t0, -3040($fp)
	lw $t1, -3056($fp)
	sw $t0, 0($t1)
	lw $t0, -3056($fp)
	lw $t1, 0($t0)
	sw $t1, -3060($fp)
	li $t0, 9747
	sw $t0, -3064($fp)
	addi $t0, $fp, -300
	sw $t0, -3068($fp)
	li $t0, 4
	sw $t0, -3072($fp)
	lw $t0, -3072($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3076($fp)
	lw $t0, -3068($fp)
	lw $t1, -3076($fp)
	add $t0, $t0, $t1
	sw $t0, -3080($fp)
	lw $t0, -3064($fp)
	lw $t1, -3080($fp)
	sw $t0, 0($t1)
	lw $t0, -3080($fp)
	lw $t1, 0($t0)
	sw $t1, -3084($fp)
	li $t0, 13454
	sw $t0, -3088($fp)
	lw $t0, -3088($fp)
	sw $t0, -3092($fp)
	lw $t0, -3092($fp)
	sw $t0, -3096($fp)
	li $t0, 27607
	sw $t0, -3100($fp)
	lw $t0, -3100($fp)
	sw $t0, -3104($fp)
	lw $t0, -3104($fp)
	sw $t0, -3108($fp)
	li $t0, 45938
	sw $t0, -3112($fp)
	lw $t0, -3112($fp)
	sw $t0, -3116($fp)
	lw $t0, -3116($fp)
	sw $t0, -3120($fp)
	li $t0, 14697
	sw $t0, -3124($fp)
	lw $t0, -3124($fp)
	sw $t0, -3128($fp)
	lw $t0, -3128($fp)
	sw $t0, -3132($fp)
	li $t0, 4382
	sw $t0, -3136($fp)
	addi $t0, $fp, -316
	sw $t0, -3140($fp)
	li $t0, 0
	sw $t0, -3144($fp)
	lw $t0, -3144($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3148($fp)
	lw $t0, -3140($fp)
	lw $t1, -3148($fp)
	add $t0, $t0, $t1
	sw $t0, -3152($fp)
	lw $t0, -3136($fp)
	lw $t1, -3152($fp)
	sw $t0, 0($t1)
	lw $t0, -3152($fp)
	lw $t1, 0($t0)
	sw $t1, -3156($fp)
	li $t0, 42334
	sw $t0, -3160($fp)
	addi $t0, $fp, -316
	sw $t0, -3164($fp)
	li $t0, 1
	sw $t0, -3168($fp)
	lw $t0, -3168($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3172($fp)
	lw $t0, -3164($fp)
	lw $t1, -3172($fp)
	add $t0, $t0, $t1
	sw $t0, -3176($fp)
	lw $t0, -3160($fp)
	lw $t1, -3176($fp)
	sw $t0, 0($t1)
	lw $t0, -3176($fp)
	lw $t1, 0($t0)
	sw $t1, -3180($fp)
	li $t0, 7449
	sw $t0, -3184($fp)
	addi $t0, $fp, -316
	sw $t0, -3188($fp)
	li $t0, 2
	sw $t0, -3192($fp)
	lw $t0, -3192($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3196($fp)
	lw $t0, -3188($fp)
	lw $t1, -3196($fp)
	add $t0, $t0, $t1
	sw $t0, -3200($fp)
	lw $t0, -3184($fp)
	lw $t1, -3200($fp)
	sw $t0, 0($t1)
	lw $t0, -3200($fp)
	lw $t1, 0($t0)
	sw $t1, -3204($fp)
	li $t0, 31397
	sw $t0, -3208($fp)
	addi $t0, $fp, -316
	sw $t0, -3212($fp)
	li $t0, 3
	sw $t0, -3216($fp)
	lw $t0, -3216($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3220($fp)
	lw $t0, -3212($fp)
	lw $t1, -3220($fp)
	add $t0, $t0, $t1
	sw $t0, -3224($fp)
	lw $t0, -3208($fp)
	lw $t1, -3224($fp)
	sw $t0, 0($t1)
	lw $t0, -3224($fp)
	lw $t1, 0($t0)
	sw $t1, -3228($fp)
	li $t0, 37643
	sw $t0, -3232($fp)
	lw $t0, -3232($fp)
	sw $t0, -3236($fp)
	lw $t0, -3236($fp)
	sw $t0, -3240($fp)
	li $t0, 6306
	sw $t0, -3244($fp)
	addi $t0, $fp, -356
	sw $t0, -3248($fp)
	li $t0, 0
	sw $t0, -3252($fp)
	lw $t0, -3252($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3256($fp)
	lw $t0, -3248($fp)
	lw $t1, -3256($fp)
	add $t0, $t0, $t1
	sw $t0, -3260($fp)
	lw $t0, -3244($fp)
	lw $t1, -3260($fp)
	sw $t0, 0($t1)
	lw $t0, -3260($fp)
	lw $t1, 0($t0)
	sw $t1, -3264($fp)
	li $t0, 39876
	sw $t0, -3268($fp)
	addi $t0, $fp, -356
	sw $t0, -3272($fp)
	li $t0, 1
	sw $t0, -3276($fp)
	lw $t0, -3276($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3280($fp)
	lw $t0, -3272($fp)
	lw $t1, -3280($fp)
	add $t0, $t0, $t1
	sw $t0, -3284($fp)
	lw $t0, -3268($fp)
	lw $t1, -3284($fp)
	sw $t0, 0($t1)
	lw $t0, -3284($fp)
	lw $t1, 0($t0)
	sw $t1, -3288($fp)
	li $t0, 54336
	sw $t0, -3292($fp)
	addi $t0, $fp, -356
	sw $t0, -3296($fp)
	li $t0, 2
	sw $t0, -3300($fp)
	lw $t0, -3300($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3304($fp)
	lw $t0, -3296($fp)
	lw $t1, -3304($fp)
	add $t0, $t0, $t1
	sw $t0, -3308($fp)
	lw $t0, -3292($fp)
	lw $t1, -3308($fp)
	sw $t0, 0($t1)
	lw $t0, -3308($fp)
	lw $t1, 0($t0)
	sw $t1, -3312($fp)
	li $t0, 59965
	sw $t0, -3316($fp)
	addi $t0, $fp, -356
	sw $t0, -3320($fp)
	li $t0, 3
	sw $t0, -3324($fp)
	lw $t0, -3324($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3328($fp)
	lw $t0, -3320($fp)
	lw $t1, -3328($fp)
	add $t0, $t0, $t1
	sw $t0, -3332($fp)
	lw $t0, -3316($fp)
	lw $t1, -3332($fp)
	sw $t0, 0($t1)
	lw $t0, -3332($fp)
	lw $t1, 0($t0)
	sw $t1, -3336($fp)
	li $t0, 7081
	sw $t0, -3340($fp)
	addi $t0, $fp, -356
	sw $t0, -3344($fp)
	li $t0, 4
	sw $t0, -3348($fp)
	lw $t0, -3348($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3352($fp)
	lw $t0, -3344($fp)
	lw $t1, -3352($fp)
	add $t0, $t0, $t1
	sw $t0, -3356($fp)
	lw $t0, -3340($fp)
	lw $t1, -3356($fp)
	sw $t0, 0($t1)
	lw $t0, -3356($fp)
	lw $t1, 0($t0)
	sw $t1, -3360($fp)
	li $t0, 6599
	sw $t0, -3364($fp)
	addi $t0, $fp, -356
	sw $t0, -3368($fp)
	li $t0, 5
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
	li $t0, 45534
	sw $t0, -3388($fp)
	addi $t0, $fp, -356
	sw $t0, -3392($fp)
	li $t0, 6
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
	li $t0, 28607
	sw $t0, -3412($fp)
	addi $t0, $fp, -356
	sw $t0, -3416($fp)
	li $t0, 7
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
	li $t0, 33492
	sw $t0, -3436($fp)
	addi $t0, $fp, -356
	sw $t0, -3440($fp)
	li $t0, 8
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
	li $t0, 9891
	sw $t0, -3460($fp)
	addi $t0, $fp, -356
	sw $t0, -3464($fp)
	li $t0, 9
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
	li $t0, 19553
	sw $t0, -3484($fp)
	addi $t0, $fp, -396
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
	li $t0, 2316
	sw $t0, -3508($fp)
	addi $t0, $fp, -396
	sw $t0, -3512($fp)
	li $t0, 1
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
	li $t0, 344
	sw $t0, -3532($fp)
	addi $t0, $fp, -396
	sw $t0, -3536($fp)
	li $t0, 2
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
	li $t0, 11718
	sw $t0, -3556($fp)
	addi $t0, $fp, -396
	sw $t0, -3560($fp)
	li $t0, 3
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
	li $t0, 42889
	sw $t0, -3580($fp)
	addi $t0, $fp, -396
	sw $t0, -3584($fp)
	li $t0, 4
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
	li $t0, 36025
	sw $t0, -3604($fp)
	addi $t0, $fp, -396
	sw $t0, -3608($fp)
	li $t0, 5
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
	li $t0, 47232
	sw $t0, -3628($fp)
	addi $t0, $fp, -396
	sw $t0, -3632($fp)
	li $t0, 6
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
	li $t0, 54933
	sw $t0, -3652($fp)
	addi $t0, $fp, -396
	sw $t0, -3656($fp)
	li $t0, 7
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
	li $t0, 58552
	sw $t0, -3676($fp)
	addi $t0, $fp, -396
	sw $t0, -3680($fp)
	li $t0, 8
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
	li $t0, 37142
	sw $t0, -3700($fp)
	addi $t0, $fp, -396
	sw $t0, -3704($fp)
	li $t0, 9
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
	li $t0, 736
	sw $t0, -3724($fp)
	addi $t0, $fp, -424
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
	li $t0, 2763
	sw $t0, -3748($fp)
	addi $t0, $fp, -424
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
	li $t0, 50596
	sw $t0, -3772($fp)
	addi $t0, $fp, -424
	sw $t0, -3776($fp)
	li $t0, 2
	sw $t0, -3780($fp)
	lw $t0, -3780($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3784($fp)
	lw $t0, -3776($fp)
	lw $t1, -3784($fp)
	add $t0, $t0, $t1
	sw $t0, -3788($fp)
	lw $t0, -3772($fp)
	lw $t1, -3788($fp)
	sw $t0, 0($t1)
	lw $t0, -3788($fp)
	lw $t1, 0($t0)
	sw $t1, -3792($fp)
	li $t0, 28344
	sw $t0, -3796($fp)
	addi $t0, $fp, -424
	sw $t0, -3800($fp)
	li $t0, 3
	sw $t0, -3804($fp)
	lw $t0, -3804($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3808($fp)
	lw $t0, -3800($fp)
	lw $t1, -3808($fp)
	add $t0, $t0, $t1
	sw $t0, -3812($fp)
	lw $t0, -3796($fp)
	lw $t1, -3812($fp)
	sw $t0, 0($t1)
	lw $t0, -3812($fp)
	lw $t1, 0($t0)
	sw $t1, -3816($fp)
	li $t0, 48702
	sw $t0, -3820($fp)
	addi $t0, $fp, -424
	sw $t0, -3824($fp)
	li $t0, 4
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
	li $t0, 65293
	sw $t0, -3844($fp)
	addi $t0, $fp, -424
	sw $t0, -3848($fp)
	li $t0, 5
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
	li $t0, 32726
	sw $t0, -3868($fp)
	addi $t0, $fp, -424
	sw $t0, -3872($fp)
	li $t0, 6
	sw $t0, -3876($fp)
	lw $t0, -3876($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3880($fp)
	lw $t0, -3872($fp)
	lw $t1, -3880($fp)
	add $t0, $t0, $t1
	sw $t0, -3884($fp)
	lw $t0, -3868($fp)
	lw $t1, -3884($fp)
	sw $t0, 0($t1)
	lw $t0, -3884($fp)
	lw $t1, 0($t0)
	sw $t1, -3888($fp)
	li $t0, 25500
	sw $t0, -3892($fp)
	lw $t0, -3892($fp)
	sw $t0, -3896($fp)
	lw $t0, -3896($fp)
	sw $t0, -3900($fp)
	li $t0, 7206
	sw $t0, -3904($fp)
	lw $t0, -3904($fp)
	sw $t0, -3908($fp)
	lw $t0, -3908($fp)
	sw $t0, -3912($fp)
	li $t0, 64123
	sw $t0, -3916($fp)
	lw $t0, -3916($fp)
	sw $t0, -3920($fp)
	lw $t0, -3920($fp)
	sw $t0, -3924($fp)
	li $t0, 63143
	sw $t0, -3928($fp)
	lw $t0, -3928($fp)
	sw $t0, -3932($fp)
	lw $t0, -3932($fp)
	sw $t0, -3936($fp)
	li $t0, 13512
	sw $t0, -3940($fp)
	lw $t0, -3940($fp)
	sw $t0, -3944($fp)
	lw $t0, -3944($fp)
	sw $t0, -3948($fp)
	li $t0, 38463
	sw $t0, -3952($fp)
	lw $t0, -3952($fp)
	sw $t0, -3956($fp)
	lw $t0, -3956($fp)
	sw $t0, -3960($fp)
	li $t0, 51943
	sw $t0, -3964($fp)
	lw $t0, -3964($fp)
	sw $t0, -3968($fp)
	lw $t0, -3968($fp)
	sw $t0, -3972($fp)
	li $t0, 7941
	sw $t0, -3976($fp)
	lw $t0, -3976($fp)
	sw $t0, -3980($fp)
	lw $t0, -3980($fp)
	sw $t0, -3984($fp)
	li $t0, 45545
	sw $t0, -3988($fp)
	lw $t0, -3988($fp)
	sw $t0, -3992($fp)
	lw $t0, -3992($fp)
	sw $t0, -3996($fp)
	li $t0, 58542
	sw $t0, -4000($fp)
	lw $t0, -4000($fp)
	sw $t0, -4004($fp)
	lw $t0, -4004($fp)
	sw $t0, -4008($fp)
	li $t0, 53476
	sw $t0, -4012($fp)
	addi $t0, $fp, -460
	sw $t0, -4016($fp)
	li $t0, 0
	sw $t0, -4020($fp)
	lw $t0, -4020($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4024($fp)
	lw $t0, -4016($fp)
	lw $t1, -4024($fp)
	add $t0, $t0, $t1
	sw $t0, -4028($fp)
	lw $t0, -4012($fp)
	lw $t1, -4028($fp)
	sw $t0, 0($t1)
	lw $t0, -4028($fp)
	lw $t1, 0($t0)
	sw $t1, -4032($fp)
	li $t0, 8616
	sw $t0, -4036($fp)
	addi $t0, $fp, -460
	sw $t0, -4040($fp)
	li $t0, 1
	sw $t0, -4044($fp)
	lw $t0, -4044($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4048($fp)
	lw $t0, -4040($fp)
	lw $t1, -4048($fp)
	add $t0, $t0, $t1
	sw $t0, -4052($fp)
	lw $t0, -4036($fp)
	lw $t1, -4052($fp)
	sw $t0, 0($t1)
	lw $t0, -4052($fp)
	lw $t1, 0($t0)
	sw $t1, -4056($fp)
	li $t0, 26498
	sw $t0, -4060($fp)
	addi $t0, $fp, -460
	sw $t0, -4064($fp)
	li $t0, 2
	sw $t0, -4068($fp)
	lw $t0, -4068($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4072($fp)
	lw $t0, -4064($fp)
	lw $t1, -4072($fp)
	add $t0, $t0, $t1
	sw $t0, -4076($fp)
	lw $t0, -4060($fp)
	lw $t1, -4076($fp)
	sw $t0, 0($t1)
	lw $t0, -4076($fp)
	lw $t1, 0($t0)
	sw $t1, -4080($fp)
	li $t0, 63367
	sw $t0, -4084($fp)
	addi $t0, $fp, -460
	sw $t0, -4088($fp)
	li $t0, 3
	sw $t0, -4092($fp)
	lw $t0, -4092($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4096($fp)
	lw $t0, -4088($fp)
	lw $t1, -4096($fp)
	add $t0, $t0, $t1
	sw $t0, -4100($fp)
	lw $t0, -4084($fp)
	lw $t1, -4100($fp)
	sw $t0, 0($t1)
	lw $t0, -4100($fp)
	lw $t1, 0($t0)
	sw $t1, -4104($fp)
	li $t0, 28169
	sw $t0, -4108($fp)
	addi $t0, $fp, -460
	sw $t0, -4112($fp)
	li $t0, 4
	sw $t0, -4116($fp)
	lw $t0, -4116($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4120($fp)
	lw $t0, -4112($fp)
	lw $t1, -4120($fp)
	add $t0, $t0, $t1
	sw $t0, -4124($fp)
	lw $t0, -4108($fp)
	lw $t1, -4124($fp)
	sw $t0, 0($t1)
	lw $t0, -4124($fp)
	lw $t1, 0($t0)
	sw $t1, -4128($fp)
	li $t0, 28814
	sw $t0, -4132($fp)
	addi $t0, $fp, -460
	sw $t0, -4136($fp)
	li $t0, 5
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
	li $t0, 63711
	sw $t0, -4156($fp)
	addi $t0, $fp, -460
	sw $t0, -4160($fp)
	li $t0, 6
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
	li $t0, 39887
	sw $t0, -4180($fp)
	addi $t0, $fp, -460
	sw $t0, -4184($fp)
	li $t0, 7
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
	li $t0, 6168
	sw $t0, -4204($fp)
	addi $t0, $fp, -460
	sw $t0, -4208($fp)
	li $t0, 8
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
	li $t0, 34200
	sw $t0, -4228($fp)
	lw $t0, -4228($fp)
	sw $t0, -4232($fp)
	lw $t0, -4232($fp)
	sw $t0, -4236($fp)
	li $t0, 21583
	sw $t0, -4240($fp)
	lw $t0, -4240($fp)
	sw $t0, -4244($fp)
	lw $t0, -4244($fp)
	sw $t0, -4248($fp)
	li $t0, 61101
	sw $t0, -4252($fp)
	lw $t0, -4252($fp)
	sw $t0, -4256($fp)
	lw $t0, -4256($fp)
	sw $t0, -4260($fp)
	li $t0, 27216
	sw $t0, -4264($fp)
	lw $t0, -4264($fp)
	sw $t0, -4268($fp)
	lw $t0, -4268($fp)
	sw $t0, -4272($fp)
	li $t0, 58725
	sw $t0, -4276($fp)
	addi $t0, $fp, -496
	sw $t0, -4280($fp)
	li $t0, 0
	sw $t0, -4284($fp)
	lw $t0, -4284($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4288($fp)
	lw $t0, -4280($fp)
	lw $t1, -4288($fp)
	add $t0, $t0, $t1
	sw $t0, -4292($fp)
	lw $t0, -4276($fp)
	lw $t1, -4292($fp)
	sw $t0, 0($t1)
	lw $t0, -4292($fp)
	lw $t1, 0($t0)
	sw $t1, -4296($fp)
	li $t0, 61838
	sw $t0, -4300($fp)
	addi $t0, $fp, -496
	sw $t0, -4304($fp)
	li $t0, 1
	sw $t0, -4308($fp)
	lw $t0, -4308($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4312($fp)
	lw $t0, -4304($fp)
	lw $t1, -4312($fp)
	add $t0, $t0, $t1
	sw $t0, -4316($fp)
	lw $t0, -4300($fp)
	lw $t1, -4316($fp)
	sw $t0, 0($t1)
	lw $t0, -4316($fp)
	lw $t1, 0($t0)
	sw $t1, -4320($fp)
	li $t0, 29980
	sw $t0, -4324($fp)
	addi $t0, $fp, -496
	sw $t0, -4328($fp)
	li $t0, 2
	sw $t0, -4332($fp)
	lw $t0, -4332($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4336($fp)
	lw $t0, -4328($fp)
	lw $t1, -4336($fp)
	add $t0, $t0, $t1
	sw $t0, -4340($fp)
	lw $t0, -4324($fp)
	lw $t1, -4340($fp)
	sw $t0, 0($t1)
	lw $t0, -4340($fp)
	lw $t1, 0($t0)
	sw $t1, -4344($fp)
	li $t0, 43785
	sw $t0, -4348($fp)
	addi $t0, $fp, -496
	sw $t0, -4352($fp)
	li $t0, 3
	sw $t0, -4356($fp)
	lw $t0, -4356($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4360($fp)
	lw $t0, -4352($fp)
	lw $t1, -4360($fp)
	add $t0, $t0, $t1
	sw $t0, -4364($fp)
	lw $t0, -4348($fp)
	lw $t1, -4364($fp)
	sw $t0, 0($t1)
	lw $t0, -4364($fp)
	lw $t1, 0($t0)
	sw $t1, -4368($fp)
	li $t0, 24646
	sw $t0, -4372($fp)
	addi $t0, $fp, -496
	sw $t0, -4376($fp)
	li $t0, 4
	sw $t0, -4380($fp)
	lw $t0, -4380($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4384($fp)
	lw $t0, -4376($fp)
	lw $t1, -4384($fp)
	add $t0, $t0, $t1
	sw $t0, -4388($fp)
	lw $t0, -4372($fp)
	lw $t1, -4388($fp)
	sw $t0, 0($t1)
	lw $t0, -4388($fp)
	lw $t1, 0($t0)
	sw $t1, -4392($fp)
	li $t0, 13146
	sw $t0, -4396($fp)
	addi $t0, $fp, -496
	sw $t0, -4400($fp)
	li $t0, 5
	sw $t0, -4404($fp)
	lw $t0, -4404($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4408($fp)
	lw $t0, -4400($fp)
	lw $t1, -4408($fp)
	add $t0, $t0, $t1
	sw $t0, -4412($fp)
	lw $t0, -4396($fp)
	lw $t1, -4412($fp)
	sw $t0, 0($t1)
	lw $t0, -4412($fp)
	lw $t1, 0($t0)
	sw $t1, -4416($fp)
	li $t0, 43542
	sw $t0, -4420($fp)
	addi $t0, $fp, -496
	sw $t0, -4424($fp)
	li $t0, 6
	sw $t0, -4428($fp)
	lw $t0, -4428($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4432($fp)
	lw $t0, -4424($fp)
	lw $t1, -4432($fp)
	add $t0, $t0, $t1
	sw $t0, -4436($fp)
	lw $t0, -4420($fp)
	lw $t1, -4436($fp)
	sw $t0, 0($t1)
	lw $t0, -4436($fp)
	lw $t1, 0($t0)
	sw $t1, -4440($fp)
	li $t0, 57372
	sw $t0, -4444($fp)
	addi $t0, $fp, -496
	sw $t0, -4448($fp)
	li $t0, 7
	sw $t0, -4452($fp)
	lw $t0, -4452($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4456($fp)
	lw $t0, -4448($fp)
	lw $t1, -4456($fp)
	add $t0, $t0, $t1
	sw $t0, -4460($fp)
	lw $t0, -4444($fp)
	lw $t1, -4460($fp)
	sw $t0, 0($t1)
	lw $t0, -4460($fp)
	lw $t1, 0($t0)
	sw $t1, -4464($fp)
	li $t0, 38646
	sw $t0, -4468($fp)
	addi $t0, $fp, -496
	sw $t0, -4472($fp)
	li $t0, 8
	sw $t0, -4476($fp)
	lw $t0, -4476($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4480($fp)
	lw $t0, -4472($fp)
	lw $t1, -4480($fp)
	add $t0, $t0, $t1
	sw $t0, -4484($fp)
	lw $t0, -4468($fp)
	lw $t1, -4484($fp)
	sw $t0, 0($t1)
	lw $t0, -4484($fp)
	lw $t1, 0($t0)
	sw $t1, -4488($fp)
	li $t0, 50748
	sw $t0, -4492($fp)
	addi $t0, $fp, -504
	sw $t0, -4496($fp)
	li $t0, 0
	sw $t0, -4500($fp)
	lw $t0, -4500($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4504($fp)
	lw $t0, -4496($fp)
	lw $t1, -4504($fp)
	add $t0, $t0, $t1
	sw $t0, -4508($fp)
	lw $t0, -4492($fp)
	lw $t1, -4508($fp)
	sw $t0, 0($t1)
	lw $t0, -4508($fp)
	lw $t1, 0($t0)
	sw $t1, -4512($fp)
	li $t0, 55959
	sw $t0, -4516($fp)
	addi $t0, $fp, -504
	sw $t0, -4520($fp)
	li $t0, 1
	sw $t0, -4524($fp)
	lw $t0, -4524($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4528($fp)
	lw $t0, -4520($fp)
	lw $t1, -4528($fp)
	add $t0, $t0, $t1
	sw $t0, -4532($fp)
	lw $t0, -4516($fp)
	lw $t1, -4532($fp)
	sw $t0, 0($t1)
	lw $t0, -4532($fp)
	lw $t1, 0($t0)
	sw $t1, -4536($fp)
	li $t0, 36253
	sw $t0, -4664($fp)
	lw $t0, -4664($fp)
	sw $t0, -4668($fp)
	lw $t0, -4668($fp)
	sw $t0, -4672($fp)
	li $t0, 64260
	sw $t0, -4676($fp)
	lw $t0, -4676($fp)
	sw $t0, -4680($fp)
	lw $t0, -4680($fp)
	sw $t0, -4684($fp)
	li $t0, 28887
	sw $t0, -4688($fp)
	lw $t0, -4688($fp)
	sw $t0, -4692($fp)
	lw $t0, -4692($fp)
	sw $t0, -4696($fp)
	li $t0, 22660
	sw $t0, -4700($fp)
	lw $t0, -4700($fp)
	sw $t0, -4704($fp)
	lw $t0, -4704($fp)
	sw $t0, -4708($fp)
	li $t0, 6666
	sw $t0, -4712($fp)
	lw $t0, -4712($fp)
	sw $t0, -4716($fp)
	lw $t0, -4716($fp)
	sw $t0, -4720($fp)
	li $t0, 8896
	sw $t0, -4724($fp)
	lw $t0, -4724($fp)
	sw $t0, -4728($fp)
	lw $t0, -4728($fp)
	sw $t0, -4732($fp)
	li $t0, 15666
	sw $t0, -4736($fp)
	lw $t0, -4736($fp)
	sw $t0, -4740($fp)
	lw $t0, -4740($fp)
	sw $t0, -4744($fp)
	li $t0, 60142
	sw $t0, -4748($fp)
	addi $t0, $fp, -4568
	sw $t0, -4752($fp)
	li $t0, 0
	sw $t0, -4756($fp)
	lw $t0, -4756($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4760($fp)
	lw $t0, -4752($fp)
	lw $t1, -4760($fp)
	add $t0, $t0, $t1
	sw $t0, -4764($fp)
	lw $t0, -4748($fp)
	lw $t1, -4764($fp)
	sw $t0, 0($t1)
	lw $t0, -4764($fp)
	lw $t1, 0($t0)
	sw $t1, -4768($fp)
	li $t0, 17512
	sw $t0, -4772($fp)
	addi $t0, $fp, -4568
	sw $t0, -4776($fp)
	li $t0, 1
	sw $t0, -4780($fp)
	lw $t0, -4780($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4784($fp)
	lw $t0, -4776($fp)
	lw $t1, -4784($fp)
	add $t0, $t0, $t1
	sw $t0, -4788($fp)
	lw $t0, -4772($fp)
	lw $t1, -4788($fp)
	sw $t0, 0($t1)
	lw $t0, -4788($fp)
	lw $t1, 0($t0)
	sw $t1, -4792($fp)
	li $t0, 42164
	sw $t0, -4796($fp)
	addi $t0, $fp, -4568
	sw $t0, -4800($fp)
	li $t0, 2
	sw $t0, -4804($fp)
	lw $t0, -4804($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4808($fp)
	lw $t0, -4800($fp)
	lw $t1, -4808($fp)
	add $t0, $t0, $t1
	sw $t0, -4812($fp)
	lw $t0, -4796($fp)
	lw $t1, -4812($fp)
	sw $t0, 0($t1)
	lw $t0, -4812($fp)
	lw $t1, 0($t0)
	sw $t1, -4816($fp)
	li $t0, 57973
	sw $t0, -4820($fp)
	addi $t0, $fp, -4568
	sw $t0, -4824($fp)
	li $t0, 3
	sw $t0, -4828($fp)
	lw $t0, -4828($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4832($fp)
	lw $t0, -4824($fp)
	lw $t1, -4832($fp)
	add $t0, $t0, $t1
	sw $t0, -4836($fp)
	lw $t0, -4820($fp)
	lw $t1, -4836($fp)
	sw $t0, 0($t1)
	lw $t0, -4836($fp)
	lw $t1, 0($t0)
	sw $t1, -4840($fp)
	li $t0, 45681
	sw $t0, -4844($fp)
	addi $t0, $fp, -4568
	sw $t0, -4848($fp)
	li $t0, 4
	sw $t0, -4852($fp)
	lw $t0, -4852($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4856($fp)
	lw $t0, -4848($fp)
	lw $t1, -4856($fp)
	add $t0, $t0, $t1
	sw $t0, -4860($fp)
	lw $t0, -4844($fp)
	lw $t1, -4860($fp)
	sw $t0, 0($t1)
	lw $t0, -4860($fp)
	lw $t1, 0($t0)
	sw $t1, -4864($fp)
	li $t0, 5442
	sw $t0, -4868($fp)
	addi $t0, $fp, -4568
	sw $t0, -4872($fp)
	li $t0, 5
	sw $t0, -4876($fp)
	lw $t0, -4876($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4880($fp)
	lw $t0, -4872($fp)
	lw $t1, -4880($fp)
	add $t0, $t0, $t1
	sw $t0, -4884($fp)
	lw $t0, -4868($fp)
	lw $t1, -4884($fp)
	sw $t0, 0($t1)
	lw $t0, -4884($fp)
	lw $t1, 0($t0)
	sw $t1, -4888($fp)
	li $t0, 56148
	sw $t0, -4892($fp)
	addi $t0, $fp, -4568
	sw $t0, -4896($fp)
	li $t0, 6
	sw $t0, -4900($fp)
	lw $t0, -4900($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4904($fp)
	lw $t0, -4896($fp)
	lw $t1, -4904($fp)
	add $t0, $t0, $t1
	sw $t0, -4908($fp)
	lw $t0, -4892($fp)
	lw $t1, -4908($fp)
	sw $t0, 0($t1)
	lw $t0, -4908($fp)
	lw $t1, 0($t0)
	sw $t1, -4912($fp)
	li $t0, 20032
	sw $t0, -4916($fp)
	addi $t0, $fp, -4568
	sw $t0, -4920($fp)
	li $t0, 7
	sw $t0, -4924($fp)
	lw $t0, -4924($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4928($fp)
	lw $t0, -4920($fp)
	lw $t1, -4928($fp)
	add $t0, $t0, $t1
	sw $t0, -4932($fp)
	lw $t0, -4916($fp)
	lw $t1, -4932($fp)
	sw $t0, 0($t1)
	lw $t0, -4932($fp)
	lw $t1, 0($t0)
	sw $t1, -4936($fp)
	li $t0, 11610
	sw $t0, -4940($fp)
	lw $t0, -4940($fp)
	sw $t0, -4944($fp)
	lw $t0, -4944($fp)
	sw $t0, -4948($fp)
	li $t0, 24812
	sw $t0, -4952($fp)
	addi $t0, $fp, -4596
	sw $t0, -4956($fp)
	li $t0, 0
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
	li $t0, 41615
	sw $t0, -4976($fp)
	addi $t0, $fp, -4596
	sw $t0, -4980($fp)
	li $t0, 1
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
	li $t0, 7176
	sw $t0, -5000($fp)
	addi $t0, $fp, -4596
	sw $t0, -5004($fp)
	li $t0, 2
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
	li $t0, 52029
	sw $t0, -5024($fp)
	addi $t0, $fp, -4596
	sw $t0, -5028($fp)
	li $t0, 3
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
	li $t0, 34805
	sw $t0, -5048($fp)
	addi $t0, $fp, -4596
	sw $t0, -5052($fp)
	li $t0, 4
	sw $t0, -5056($fp)
	lw $t0, -5056($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5060($fp)
	lw $t0, -5052($fp)
	lw $t1, -5060($fp)
	add $t0, $t0, $t1
	sw $t0, -5064($fp)
	lw $t0, -5048($fp)
	lw $t1, -5064($fp)
	sw $t0, 0($t1)
	lw $t0, -5064($fp)
	lw $t1, 0($t0)
	sw $t1, -5068($fp)
	li $t0, 3478
	sw $t0, -5072($fp)
	addi $t0, $fp, -4596
	sw $t0, -5076($fp)
	li $t0, 5
	sw $t0, -5080($fp)
	lw $t0, -5080($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5084($fp)
	lw $t0, -5076($fp)
	lw $t1, -5084($fp)
	add $t0, $t0, $t1
	sw $t0, -5088($fp)
	lw $t0, -5072($fp)
	lw $t1, -5088($fp)
	sw $t0, 0($t1)
	lw $t0, -5088($fp)
	lw $t1, 0($t0)
	sw $t1, -5092($fp)
	li $t0, 16473
	sw $t0, -5096($fp)
	addi $t0, $fp, -4596
	sw $t0, -5100($fp)
	li $t0, 6
	sw $t0, -5104($fp)
	lw $t0, -5104($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5108($fp)
	lw $t0, -5100($fp)
	lw $t1, -5108($fp)
	add $t0, $t0, $t1
	sw $t0, -5112($fp)
	lw $t0, -5096($fp)
	lw $t1, -5112($fp)
	sw $t0, 0($t1)
	lw $t0, -5112($fp)
	lw $t1, 0($t0)
	sw $t1, -5116($fp)
	li $t0, 13054
	sw $t0, -5120($fp)
	lw $t0, -5120($fp)
	sw $t0, -5124($fp)
	lw $t0, -5124($fp)
	sw $t0, -5128($fp)
	li $t0, 28124
	sw $t0, -5132($fp)
	addi $t0, $fp, -4628
	sw $t0, -5136($fp)
	li $t0, 0
	sw $t0, -5140($fp)
	lw $t0, -5140($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5144($fp)
	lw $t0, -5136($fp)
	lw $t1, -5144($fp)
	add $t0, $t0, $t1
	sw $t0, -5148($fp)
	lw $t0, -5132($fp)
	lw $t1, -5148($fp)
	sw $t0, 0($t1)
	lw $t0, -5148($fp)
	lw $t1, 0($t0)
	sw $t1, -5152($fp)
	li $t0, 29619
	sw $t0, -5156($fp)
	addi $t0, $fp, -4628
	sw $t0, -5160($fp)
	li $t0, 1
	sw $t0, -5164($fp)
	lw $t0, -5164($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5168($fp)
	lw $t0, -5160($fp)
	lw $t1, -5168($fp)
	add $t0, $t0, $t1
	sw $t0, -5172($fp)
	lw $t0, -5156($fp)
	lw $t1, -5172($fp)
	sw $t0, 0($t1)
	lw $t0, -5172($fp)
	lw $t1, 0($t0)
	sw $t1, -5176($fp)
	li $t0, 56597
	sw $t0, -5180($fp)
	addi $t0, $fp, -4628
	sw $t0, -5184($fp)
	li $t0, 2
	sw $t0, -5188($fp)
	lw $t0, -5188($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5192($fp)
	lw $t0, -5184($fp)
	lw $t1, -5192($fp)
	add $t0, $t0, $t1
	sw $t0, -5196($fp)
	lw $t0, -5180($fp)
	lw $t1, -5196($fp)
	sw $t0, 0($t1)
	lw $t0, -5196($fp)
	lw $t1, 0($t0)
	sw $t1, -5200($fp)
	li $t0, 19960
	sw $t0, -5204($fp)
	addi $t0, $fp, -4628
	sw $t0, -5208($fp)
	li $t0, 3
	sw $t0, -5212($fp)
	lw $t0, -5212($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5216($fp)
	lw $t0, -5208($fp)
	lw $t1, -5216($fp)
	add $t0, $t0, $t1
	sw $t0, -5220($fp)
	lw $t0, -5204($fp)
	lw $t1, -5220($fp)
	sw $t0, 0($t1)
	lw $t0, -5220($fp)
	lw $t1, 0($t0)
	sw $t1, -5224($fp)
	li $t0, 2729
	sw $t0, -5228($fp)
	addi $t0, $fp, -4628
	sw $t0, -5232($fp)
	li $t0, 4
	sw $t0, -5236($fp)
	lw $t0, -5236($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5240($fp)
	lw $t0, -5232($fp)
	lw $t1, -5240($fp)
	add $t0, $t0, $t1
	sw $t0, -5244($fp)
	lw $t0, -5228($fp)
	lw $t1, -5244($fp)
	sw $t0, 0($t1)
	lw $t0, -5244($fp)
	lw $t1, 0($t0)
	sw $t1, -5248($fp)
	li $t0, 41809
	sw $t0, -5252($fp)
	addi $t0, $fp, -4628
	sw $t0, -5256($fp)
	li $t0, 5
	sw $t0, -5260($fp)
	lw $t0, -5260($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5264($fp)
	lw $t0, -5256($fp)
	lw $t1, -5264($fp)
	add $t0, $t0, $t1
	sw $t0, -5268($fp)
	lw $t0, -5252($fp)
	lw $t1, -5268($fp)
	sw $t0, 0($t1)
	lw $t0, -5268($fp)
	lw $t1, 0($t0)
	sw $t1, -5272($fp)
	li $t0, 10383
	sw $t0, -5276($fp)
	addi $t0, $fp, -4628
	sw $t0, -5280($fp)
	li $t0, 6
	sw $t0, -5284($fp)
	lw $t0, -5284($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5288($fp)
	lw $t0, -5280($fp)
	lw $t1, -5288($fp)
	add $t0, $t0, $t1
	sw $t0, -5292($fp)
	lw $t0, -5276($fp)
	lw $t1, -5292($fp)
	sw $t0, 0($t1)
	lw $t0, -5292($fp)
	lw $t1, 0($t0)
	sw $t1, -5296($fp)
	li $t0, 38982
	sw $t0, -5300($fp)
	addi $t0, $fp, -4628
	sw $t0, -5304($fp)
	li $t0, 7
	sw $t0, -5308($fp)
	lw $t0, -5308($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5312($fp)
	lw $t0, -5304($fp)
	lw $t1, -5312($fp)
	add $t0, $t0, $t1
	sw $t0, -5316($fp)
	lw $t0, -5300($fp)
	lw $t1, -5316($fp)
	sw $t0, 0($t1)
	lw $t0, -5316($fp)
	lw $t1, 0($t0)
	sw $t1, -5320($fp)
	li $t0, 40534
	sw $t0, -5324($fp)
	lw $t0, -5324($fp)
	sw $t0, -5328($fp)
	lw $t0, -5328($fp)
	sw $t0, -5332($fp)
	li $t0, 39270
	sw $t0, -5336($fp)
	lw $t0, -5336($fp)
	sw $t0, -5340($fp)
	lw $t0, -5340($fp)
	sw $t0, -5344($fp)
	li $t0, 61642
	sw $t0, -5348($fp)
	lw $t0, -5348($fp)
	sw $t0, -5352($fp)
	lw $t0, -5352($fp)
	sw $t0, -5356($fp)
	li $t0, 47200
	sw $t0, -5360($fp)
	lw $t0, -5360($fp)
	sw $t0, -5364($fp)
	lw $t0, -5364($fp)
	sw $t0, -5368($fp)
	li $t0, 48166
	sw $t0, -5372($fp)
	lw $t0, -5372($fp)
	sw $t0, -5376($fp)
	lw $t0, -5376($fp)
	sw $t0, -5380($fp)
	li $t0, 11772
	sw $t0, -5384($fp)
	lw $t0, -5384($fp)
	sw $t0, -5388($fp)
	lw $t0, -5388($fp)
	sw $t0, -5392($fp)
	li $t0, 41806
	sw $t0, -5396($fp)
	lw $t0, -5396($fp)
	sw $t0, -5400($fp)
	lw $t0, -5400($fp)
	sw $t0, -5404($fp)
	li $t0, 142
	sw $t0, -5408($fp)
	lw $t0, -5408($fp)
	sw $t0, -5412($fp)
	lw $t0, -5412($fp)
	sw $t0, -5416($fp)
	li $t0, 53936
	sw $t0, -5420($fp)
	lw $t0, -5420($fp)
	sw $t0, -5424($fp)
	lw $t0, -5424($fp)
	sw $t0, -5428($fp)
	li $t0, 34243
	sw $t0, -5432($fp)
	addi $t0, $fp, -4660
	sw $t0, -5436($fp)
	li $t0, 0
	sw $t0, -5440($fp)
	lw $t0, -5440($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5444($fp)
	lw $t0, -5436($fp)
	lw $t1, -5444($fp)
	add $t0, $t0, $t1
	sw $t0, -5448($fp)
	lw $t0, -5432($fp)
	lw $t1, -5448($fp)
	sw $t0, 0($t1)
	lw $t0, -5448($fp)
	lw $t1, 0($t0)
	sw $t1, -5452($fp)
	li $t0, 45823
	sw $t0, -5456($fp)
	addi $t0, $fp, -4660
	sw $t0, -5460($fp)
	li $t0, 1
	sw $t0, -5464($fp)
	lw $t0, -5464($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5468($fp)
	lw $t0, -5460($fp)
	lw $t1, -5468($fp)
	add $t0, $t0, $t1
	sw $t0, -5472($fp)
	lw $t0, -5456($fp)
	lw $t1, -5472($fp)
	sw $t0, 0($t1)
	lw $t0, -5472($fp)
	lw $t1, 0($t0)
	sw $t1, -5476($fp)
	li $t0, 59378
	sw $t0, -5480($fp)
	addi $t0, $fp, -4660
	sw $t0, -5484($fp)
	li $t0, 2
	sw $t0, -5488($fp)
	lw $t0, -5488($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5492($fp)
	lw $t0, -5484($fp)
	lw $t1, -5492($fp)
	add $t0, $t0, $t1
	sw $t0, -5496($fp)
	lw $t0, -5480($fp)
	lw $t1, -5496($fp)
	sw $t0, 0($t1)
	lw $t0, -5496($fp)
	lw $t1, 0($t0)
	sw $t1, -5500($fp)
	li $t0, 24855
	sw $t0, -5504($fp)
	addi $t0, $fp, -4660
	sw $t0, -5508($fp)
	li $t0, 3
	sw $t0, -5512($fp)
	lw $t0, -5512($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5516($fp)
	lw $t0, -5508($fp)
	lw $t1, -5516($fp)
	add $t0, $t0, $t1
	sw $t0, -5520($fp)
	lw $t0, -5504($fp)
	lw $t1, -5520($fp)
	sw $t0, 0($t1)
	lw $t0, -5520($fp)
	lw $t1, 0($t0)
	sw $t1, -5524($fp)
	li $t0, 319
	sw $t0, -5528($fp)
	addi $t0, $fp, -4660
	sw $t0, -5532($fp)
	li $t0, 4
	sw $t0, -5536($fp)
	lw $t0, -5536($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5540($fp)
	lw $t0, -5532($fp)
	lw $t1, -5540($fp)
	add $t0, $t0, $t1
	sw $t0, -5544($fp)
	lw $t0, -5528($fp)
	lw $t1, -5544($fp)
	sw $t0, 0($t1)
	lw $t0, -5544($fp)
	lw $t1, 0($t0)
	sw $t1, -5548($fp)
	li $t0, 5453
	sw $t0, -5552($fp)
	addi $t0, $fp, -4660
	sw $t0, -5556($fp)
	li $t0, 5
	sw $t0, -5560($fp)
	lw $t0, -5560($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5564($fp)
	lw $t0, -5556($fp)
	lw $t1, -5564($fp)
	add $t0, $t0, $t1
	sw $t0, -5568($fp)
	lw $t0, -5552($fp)
	lw $t1, -5568($fp)
	sw $t0, 0($t1)
	lw $t0, -5568($fp)
	lw $t1, 0($t0)
	sw $t1, -5572($fp)
	li $t0, 49667
	sw $t0, -5576($fp)
	addi $t0, $fp, -4660
	sw $t0, -5580($fp)
	li $t0, 6
	sw $t0, -5584($fp)
	lw $t0, -5584($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5588($fp)
	lw $t0, -5580($fp)
	lw $t1, -5588($fp)
	add $t0, $t0, $t1
	sw $t0, -5592($fp)
	lw $t0, -5576($fp)
	lw $t1, -5592($fp)
	sw $t0, 0($t1)
	lw $t0, -5592($fp)
	lw $t1, 0($t0)
	sw $t1, -5596($fp)
	li $t0, 41935
	sw $t0, -5600($fp)
	addi $t0, $fp, -4660
	sw $t0, -5604($fp)
	li $t0, 7
	sw $t0, -5608($fp)
	lw $t0, -5608($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5612($fp)
	lw $t0, -5604($fp)
	lw $t1, -5612($fp)
	add $t0, $t0, $t1
	sw $t0, -5616($fp)
	lw $t0, -5600($fp)
	lw $t1, -5616($fp)
	sw $t0, 0($t1)
	lw $t0, -5616($fp)
	lw $t1, 0($t0)
	sw $t1, -5620($fp)
	lw $t0, -4668($fp)
	sw $t0, -5624($fp)
	lw $t0, -5624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4680($fp)
	sw $t0, -5628($fp)
	lw $t0, -5628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4692($fp)
	sw $t0, -5632($fp)
	lw $t0, -5632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4704($fp)
	sw $t0, -5636($fp)
	lw $t0, -5636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4716($fp)
	sw $t0, -5640($fp)
	lw $t0, -5640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4728($fp)
	sw $t0, -5644($fp)
	lw $t0, -5644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4740($fp)
	sw $t0, -5648($fp)
	lw $t0, -5648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4568
	sw $t0, -5652($fp)
	li $t0, 0
	sw $t0, -5656($fp)
	li $t0, 4
	lw $t1, -5656($fp)
	mul $t0, $t0, $t1
	sw $t0, -5660($fp)
	lw $t0, -5660($fp)
	lw $t1, -5652($fp)
	add $t0, $t0, $t1
	sw $t0, -5664($fp)
	lw $t0, -5664($fp)
	lw $t1, 0($t0)
	sw $t1, -5668($fp)
	lw $t0, -5668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4568
	sw $t0, -5672($fp)
	li $t0, 1
	sw $t0, -5676($fp)
	li $t0, 4
	lw $t1, -5676($fp)
	mul $t0, $t0, $t1
	sw $t0, -5680($fp)
	lw $t0, -5680($fp)
	lw $t1, -5672($fp)
	add $t0, $t0, $t1
	sw $t0, -5684($fp)
	lw $t0, -5684($fp)
	lw $t1, 0($t0)
	sw $t1, -5688($fp)
	lw $t0, -5688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4568
	sw $t0, -5692($fp)
	li $t0, 2
	sw $t0, -5696($fp)
	li $t0, 4
	lw $t1, -5696($fp)
	mul $t0, $t0, $t1
	sw $t0, -5700($fp)
	lw $t0, -5700($fp)
	lw $t1, -5692($fp)
	add $t0, $t0, $t1
	sw $t0, -5704($fp)
	lw $t0, -5704($fp)
	lw $t1, 0($t0)
	sw $t1, -5708($fp)
	lw $t0, -5708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4568
	sw $t0, -5712($fp)
	li $t0, 3
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
	lw $t0, -5728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4568
	sw $t0, -5732($fp)
	li $t0, 4
	sw $t0, -5736($fp)
	li $t0, 4
	lw $t1, -5736($fp)
	mul $t0, $t0, $t1
	sw $t0, -5740($fp)
	lw $t0, -5740($fp)
	lw $t1, -5732($fp)
	add $t0, $t0, $t1
	sw $t0, -5744($fp)
	lw $t0, -5744($fp)
	lw $t1, 0($t0)
	sw $t1, -5748($fp)
	lw $t0, -5748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4568
	sw $t0, -5752($fp)
	li $t0, 5
	sw $t0, -5756($fp)
	li $t0, 4
	lw $t1, -5756($fp)
	mul $t0, $t0, $t1
	sw $t0, -5760($fp)
	lw $t0, -5760($fp)
	lw $t1, -5752($fp)
	add $t0, $t0, $t1
	sw $t0, -5764($fp)
	lw $t0, -5764($fp)
	lw $t1, 0($t0)
	sw $t1, -5768($fp)
	lw $t0, -5768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4568
	sw $t0, -5772($fp)
	li $t0, 6
	sw $t0, -5776($fp)
	li $t0, 4
	lw $t1, -5776($fp)
	mul $t0, $t0, $t1
	sw $t0, -5780($fp)
	lw $t0, -5780($fp)
	lw $t1, -5772($fp)
	add $t0, $t0, $t1
	sw $t0, -5784($fp)
	lw $t0, -5784($fp)
	lw $t1, 0($t0)
	sw $t1, -5788($fp)
	lw $t0, -5788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4568
	sw $t0, -5792($fp)
	li $t0, 7
	sw $t0, -5796($fp)
	li $t0, 4
	lw $t1, -5796($fp)
	mul $t0, $t0, $t1
	sw $t0, -5800($fp)
	lw $t0, -5800($fp)
	lw $t1, -5792($fp)
	add $t0, $t0, $t1
	sw $t0, -5804($fp)
	lw $t0, -5804($fp)
	lw $t1, 0($t0)
	sw $t1, -5808($fp)
	lw $t0, -5808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4944($fp)
	sw $t0, -5812($fp)
	lw $t0, -5812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4596
	sw $t0, -5816($fp)
	li $t0, 0
	sw $t0, -5820($fp)
	li $t0, 4
	lw $t1, -5820($fp)
	mul $t0, $t0, $t1
	sw $t0, -5824($fp)
	lw $t0, -5824($fp)
	lw $t1, -5816($fp)
	add $t0, $t0, $t1
	sw $t0, -5828($fp)
	lw $t0, -5828($fp)
	lw $t1, 0($t0)
	sw $t1, -5832($fp)
	lw $t0, -5832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4596
	sw $t0, -5836($fp)
	li $t0, 1
	sw $t0, -5840($fp)
	li $t0, 4
	lw $t1, -5840($fp)
	mul $t0, $t0, $t1
	sw $t0, -5844($fp)
	lw $t0, -5844($fp)
	lw $t1, -5836($fp)
	add $t0, $t0, $t1
	sw $t0, -5848($fp)
	lw $t0, -5848($fp)
	lw $t1, 0($t0)
	sw $t1, -5852($fp)
	lw $t0, -5852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4596
	sw $t0, -5856($fp)
	li $t0, 2
	sw $t0, -5860($fp)
	li $t0, 4
	lw $t1, -5860($fp)
	mul $t0, $t0, $t1
	sw $t0, -5864($fp)
	lw $t0, -5864($fp)
	lw $t1, -5856($fp)
	add $t0, $t0, $t1
	sw $t0, -5868($fp)
	lw $t0, -5868($fp)
	lw $t1, 0($t0)
	sw $t1, -5872($fp)
	lw $t0, -5872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4596
	sw $t0, -5876($fp)
	li $t0, 3
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
	lw $t0, -5892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4596
	sw $t0, -5896($fp)
	li $t0, 4
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
	lw $t0, -5912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4596
	sw $t0, -5916($fp)
	li $t0, 5
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
	addi $t0, $fp, -4596
	sw $t0, -5936($fp)
	li $t0, 6
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
	lw $t0, -5124($fp)
	sw $t0, -5956($fp)
	lw $t0, -5956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4628
	sw $t0, -5960($fp)
	li $t0, 0
	sw $t0, -5964($fp)
	li $t0, 4
	lw $t1, -5964($fp)
	mul $t0, $t0, $t1
	sw $t0, -5968($fp)
	lw $t0, -5968($fp)
	lw $t1, -5960($fp)
	add $t0, $t0, $t1
	sw $t0, -5972($fp)
	lw $t0, -5972($fp)
	lw $t1, 0($t0)
	sw $t1, -5976($fp)
	lw $t0, -5976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4628
	sw $t0, -5980($fp)
	li $t0, 1
	sw $t0, -5984($fp)
	li $t0, 4
	lw $t1, -5984($fp)
	mul $t0, $t0, $t1
	sw $t0, -5988($fp)
	lw $t0, -5988($fp)
	lw $t1, -5980($fp)
	add $t0, $t0, $t1
	sw $t0, -5992($fp)
	lw $t0, -5992($fp)
	lw $t1, 0($t0)
	sw $t1, -5996($fp)
	lw $t0, -5996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4628
	sw $t0, -6000($fp)
	li $t0, 2
	sw $t0, -6004($fp)
	li $t0, 4
	lw $t1, -6004($fp)
	mul $t0, $t0, $t1
	sw $t0, -6008($fp)
	lw $t0, -6008($fp)
	lw $t1, -6000($fp)
	add $t0, $t0, $t1
	sw $t0, -6012($fp)
	lw $t0, -6012($fp)
	lw $t1, 0($t0)
	sw $t1, -6016($fp)
	lw $t0, -6016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4628
	sw $t0, -6020($fp)
	li $t0, 3
	sw $t0, -6024($fp)
	li $t0, 4
	lw $t1, -6024($fp)
	mul $t0, $t0, $t1
	sw $t0, -6028($fp)
	lw $t0, -6028($fp)
	lw $t1, -6020($fp)
	add $t0, $t0, $t1
	sw $t0, -6032($fp)
	lw $t0, -6032($fp)
	lw $t1, 0($t0)
	sw $t1, -6036($fp)
	lw $t0, -6036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4628
	sw $t0, -6040($fp)
	li $t0, 4
	sw $t0, -6044($fp)
	li $t0, 4
	lw $t1, -6044($fp)
	mul $t0, $t0, $t1
	sw $t0, -6048($fp)
	lw $t0, -6048($fp)
	lw $t1, -6040($fp)
	add $t0, $t0, $t1
	sw $t0, -6052($fp)
	lw $t0, -6052($fp)
	lw $t1, 0($t0)
	sw $t1, -6056($fp)
	lw $t0, -6056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4628
	sw $t0, -6060($fp)
	li $t0, 5
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
	lw $t0, -6076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4628
	sw $t0, -6080($fp)
	li $t0, 6
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
	lw $t0, -6096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4628
	sw $t0, -6100($fp)
	li $t0, 7
	sw $t0, -6104($fp)
	li $t0, 4
	lw $t1, -6104($fp)
	mul $t0, $t0, $t1
	sw $t0, -6108($fp)
	lw $t0, -6108($fp)
	lw $t1, -6100($fp)
	add $t0, $t0, $t1
	sw $t0, -6112($fp)
	lw $t0, -6112($fp)
	lw $t1, 0($t0)
	sw $t1, -6116($fp)
	lw $t0, -6116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5328($fp)
	sw $t0, -6120($fp)
	lw $t0, -6120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5340($fp)
	sw $t0, -6124($fp)
	lw $t0, -6124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5352($fp)
	sw $t0, -6128($fp)
	lw $t0, -6128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5364($fp)
	sw $t0, -6132($fp)
	lw $t0, -6132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5376($fp)
	sw $t0, -6136($fp)
	lw $t0, -6136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5388($fp)
	sw $t0, -6140($fp)
	lw $t0, -6140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5400($fp)
	sw $t0, -6144($fp)
	lw $t0, -6144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5412($fp)
	sw $t0, -6148($fp)
	lw $t0, -6148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5424($fp)
	sw $t0, -6152($fp)
	lw $t0, -6152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4660
	sw $t0, -6156($fp)
	li $t0, 0
	sw $t0, -6160($fp)
	li $t0, 4
	lw $t1, -6160($fp)
	mul $t0, $t0, $t1
	sw $t0, -6164($fp)
	lw $t0, -6164($fp)
	lw $t1, -6156($fp)
	add $t0, $t0, $t1
	sw $t0, -6168($fp)
	lw $t0, -6168($fp)
	lw $t1, 0($t0)
	sw $t1, -6172($fp)
	lw $t0, -6172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4660
	sw $t0, -6176($fp)
	li $t0, 1
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
	lw $t0, -6192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4660
	sw $t0, -6196($fp)
	li $t0, 2
	sw $t0, -6200($fp)
	li $t0, 4
	lw $t1, -6200($fp)
	mul $t0, $t0, $t1
	sw $t0, -6204($fp)
	lw $t0, -6204($fp)
	lw $t1, -6196($fp)
	add $t0, $t0, $t1
	sw $t0, -6208($fp)
	lw $t0, -6208($fp)
	lw $t1, 0($t0)
	sw $t1, -6212($fp)
	lw $t0, -6212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4660
	sw $t0, -6216($fp)
	li $t0, 3
	sw $t0, -6220($fp)
	li $t0, 4
	lw $t1, -6220($fp)
	mul $t0, $t0, $t1
	sw $t0, -6224($fp)
	lw $t0, -6224($fp)
	lw $t1, -6216($fp)
	add $t0, $t0, $t1
	sw $t0, -6228($fp)
	lw $t0, -6228($fp)
	lw $t1, 0($t0)
	sw $t1, -6232($fp)
	lw $t0, -6232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4660
	sw $t0, -6236($fp)
	li $t0, 4
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
	lw $t0, -6252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4660
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
	lw $t0, -6272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4660
	sw $t0, -6276($fp)
	li $t0, 6
	sw $t0, -6280($fp)
	li $t0, 4
	lw $t1, -6280($fp)
	mul $t0, $t0, $t1
	sw $t0, -6284($fp)
	lw $t0, -6284($fp)
	lw $t1, -6276($fp)
	add $t0, $t0, $t1
	sw $t0, -6288($fp)
	lw $t0, -6288($fp)
	lw $t1, 0($t0)
	sw $t1, -6292($fp)
	lw $t0, -6292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4660
	sw $t0, -6296($fp)
	li $t0, 7
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
	lw $t0, -6312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6316($fp)
	li $t0, 0
	sw $t0, -6320($fp)
	addi $t0, $fp, -88
	sw $t0, -6324($fp)
	lw $t0, -3968($fp)
	sw $t0, -6328($fp)
	li $t0, 4
	lw $t1, -6328($fp)
	mul $t0, $t0, $t1
	sw $t0, -6332($fp)
	lw $t0, -6332($fp)
	lw $t1, -6324($fp)
	add $t0, $t0, $t1
	sw $t0, -6336($fp)
	lw $t0, -6336($fp)
	lw $t1, 0($t0)
	sw $t1, -6340($fp)
	lw $t1, -6340($fp)
	li $t2, 0
	bne $t1, $t2, label217
	j label219
label219:
	li $t0, 12629
	sw $t0, -6344($fp)
	lw $t1, -6344($fp)
	li $t2, 0
	bne $t1, $t2, label217
	j label218
label217:
	li $t0, 1
	sw $t0, -6320($fp)
label218:
	addi $sp, $sp, -4
	lw $t0, -6320($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6348($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -6352($fp)
	li $t0, 4
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
	lw $t0, -6348($fp)
	lw $t1, -6368($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6372($fp)
	lw $t1, -6372($fp)
	li $t2, 0
	bne $t1, $t2, label216
	j label215
label216:
	li $t0, 16107
	sw $t0, -6376($fp)
	lw $t1, -6376($fp)
	li $t2, 0
	bne $t1, $t2, label214
	j label215
label214:
	li $t0, 1
	sw $t0, -6316($fp)
label215:
	lw $ra, -4($fp)
	lw $v0, -6316($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -4668($fp)
	sw $t0, -6380($fp)
	lw $t0, -6380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4680($fp)
	sw $t0, -6384($fp)
	lw $t0, -6384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4692($fp)
	sw $t0, -6388($fp)
	lw $t0, -6388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4704($fp)
	sw $t0, -6392($fp)
	lw $t0, -6392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4716($fp)
	sw $t0, -6396($fp)
	lw $t0, -6396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4728($fp)
	sw $t0, -6400($fp)
	lw $t0, -6400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4740($fp)
	sw $t0, -6404($fp)
	lw $t0, -6404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4568
	sw $t0, -6408($fp)
	li $t0, 0
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
	lw $t0, -6424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4568
	sw $t0, -6428($fp)
	li $t0, 1
	sw $t0, -6432($fp)
	li $t0, 4
	lw $t1, -6432($fp)
	mul $t0, $t0, $t1
	sw $t0, -6436($fp)
	lw $t0, -6436($fp)
	lw $t1, -6428($fp)
	add $t0, $t0, $t1
	sw $t0, -6440($fp)
	lw $t0, -6440($fp)
	lw $t1, 0($t0)
	sw $t1, -6444($fp)
	lw $t0, -6444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4568
	sw $t0, -6448($fp)
	li $t0, 2
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
	lw $t0, -6464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4568
	sw $t0, -6468($fp)
	li $t0, 3
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
	addi $t0, $fp, -4568
	sw $t0, -6488($fp)
	li $t0, 4
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
	addi $t0, $fp, -4568
	sw $t0, -6508($fp)
	li $t0, 5
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
	addi $t0, $fp, -4568
	sw $t0, -6528($fp)
	li $t0, 6
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
	addi $t0, $fp, -4568
	sw $t0, -6548($fp)
	li $t0, 7
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
	lw $t0, -4944($fp)
	sw $t0, -6568($fp)
	lw $t0, -6568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4596
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
	addi $t0, $fp, -4596
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
	addi $t0, $fp, -4596
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
	addi $t0, $fp, -4596
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
	addi $t0, $fp, -4596
	sw $t0, -6652($fp)
	li $t0, 4
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
	lw $t0, -6668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4596
	sw $t0, -6672($fp)
	li $t0, 5
	sw $t0, -6676($fp)
	li $t0, 4
	lw $t1, -6676($fp)
	mul $t0, $t0, $t1
	sw $t0, -6680($fp)
	lw $t0, -6680($fp)
	lw $t1, -6672($fp)
	add $t0, $t0, $t1
	sw $t0, -6684($fp)
	lw $t0, -6684($fp)
	lw $t1, 0($t0)
	sw $t1, -6688($fp)
	lw $t0, -6688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4596
	sw $t0, -6692($fp)
	li $t0, 6
	sw $t0, -6696($fp)
	li $t0, 4
	lw $t1, -6696($fp)
	mul $t0, $t0, $t1
	sw $t0, -6700($fp)
	lw $t0, -6700($fp)
	lw $t1, -6692($fp)
	add $t0, $t0, $t1
	sw $t0, -6704($fp)
	lw $t0, -6704($fp)
	lw $t1, 0($t0)
	sw $t1, -6708($fp)
	lw $t0, -6708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5124($fp)
	sw $t0, -6712($fp)
	lw $t0, -6712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4628
	sw $t0, -6716($fp)
	li $t0, 0
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
	addi $t0, $fp, -4628
	sw $t0, -6736($fp)
	li $t0, 1
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
	addi $t0, $fp, -4628
	sw $t0, -6756($fp)
	li $t0, 2
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
	addi $t0, $fp, -4628
	sw $t0, -6776($fp)
	li $t0, 3
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
	addi $t0, $fp, -4628
	sw $t0, -6796($fp)
	li $t0, 4
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
	addi $t0, $fp, -4628
	sw $t0, -6816($fp)
	li $t0, 5
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
	addi $t0, $fp, -4628
	sw $t0, -6836($fp)
	li $t0, 6
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
	addi $t0, $fp, -4628
	sw $t0, -6856($fp)
	li $t0, 7
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
	lw $t0, -5328($fp)
	sw $t0, -6876($fp)
	lw $t0, -6876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5340($fp)
	sw $t0, -6880($fp)
	lw $t0, -6880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5352($fp)
	sw $t0, -6884($fp)
	lw $t0, -6884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5364($fp)
	sw $t0, -6888($fp)
	lw $t0, -6888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5376($fp)
	sw $t0, -6892($fp)
	lw $t0, -6892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5388($fp)
	sw $t0, -6896($fp)
	lw $t0, -6896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5400($fp)
	sw $t0, -6900($fp)
	lw $t0, -6900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5412($fp)
	sw $t0, -6904($fp)
	lw $t0, -6904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5424($fp)
	sw $t0, -6908($fp)
	lw $t0, -6908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4660
	sw $t0, -6912($fp)
	li $t0, 0
	sw $t0, -6916($fp)
	li $t0, 4
	lw $t1, -6916($fp)
	mul $t0, $t0, $t1
	sw $t0, -6920($fp)
	lw $t0, -6920($fp)
	lw $t1, -6912($fp)
	add $t0, $t0, $t1
	sw $t0, -6924($fp)
	lw $t0, -6924($fp)
	lw $t1, 0($t0)
	sw $t1, -6928($fp)
	lw $t0, -6928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4660
	sw $t0, -6932($fp)
	li $t0, 1
	sw $t0, -6936($fp)
	li $t0, 4
	lw $t1, -6936($fp)
	mul $t0, $t0, $t1
	sw $t0, -6940($fp)
	lw $t0, -6940($fp)
	lw $t1, -6932($fp)
	add $t0, $t0, $t1
	sw $t0, -6944($fp)
	lw $t0, -6944($fp)
	lw $t1, 0($t0)
	sw $t1, -6948($fp)
	lw $t0, -6948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4660
	sw $t0, -6952($fp)
	li $t0, 2
	sw $t0, -6956($fp)
	li $t0, 4
	lw $t1, -6956($fp)
	mul $t0, $t0, $t1
	sw $t0, -6960($fp)
	lw $t0, -6960($fp)
	lw $t1, -6952($fp)
	add $t0, $t0, $t1
	sw $t0, -6964($fp)
	lw $t0, -6964($fp)
	lw $t1, 0($t0)
	sw $t1, -6968($fp)
	lw $t0, -6968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4660
	sw $t0, -6972($fp)
	li $t0, 3
	sw $t0, -6976($fp)
	li $t0, 4
	lw $t1, -6976($fp)
	mul $t0, $t0, $t1
	sw $t0, -6980($fp)
	lw $t0, -6980($fp)
	lw $t1, -6972($fp)
	add $t0, $t0, $t1
	sw $t0, -6984($fp)
	lw $t0, -6984($fp)
	lw $t1, 0($t0)
	sw $t1, -6988($fp)
	lw $t0, -6988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4660
	sw $t0, -6992($fp)
	li $t0, 4
	sw $t0, -6996($fp)
	li $t0, 4
	lw $t1, -6996($fp)
	mul $t0, $t0, $t1
	sw $t0, -7000($fp)
	lw $t0, -7000($fp)
	lw $t1, -6992($fp)
	add $t0, $t0, $t1
	sw $t0, -7004($fp)
	lw $t0, -7004($fp)
	lw $t1, 0($t0)
	sw $t1, -7008($fp)
	lw $t0, -7008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4660
	sw $t0, -7012($fp)
	li $t0, 5
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
	lw $t0, -7028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4660
	sw $t0, -7032($fp)
	li $t0, 6
	sw $t0, -7036($fp)
	li $t0, 4
	lw $t1, -7036($fp)
	mul $t0, $t0, $t1
	sw $t0, -7040($fp)
	lw $t0, -7040($fp)
	lw $t1, -7032($fp)
	add $t0, $t0, $t1
	sw $t0, -7044($fp)
	lw $t0, -7044($fp)
	lw $t1, 0($t0)
	sw $t1, -7048($fp)
	lw $t0, -7048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4660
	sw $t0, -7052($fp)
	li $t0, 7
	sw $t0, -7056($fp)
	li $t0, 4
	lw $t1, -7056($fp)
	mul $t0, $t0, $t1
	sw $t0, -7060($fp)
	lw $t0, -7060($fp)
	lw $t1, -7052($fp)
	add $t0, $t0, $t1
	sw $t0, -7064($fp)
	lw $t0, -7064($fp)
	lw $t1, 0($t0)
	sw $t1, -7068($fp)
	lw $t0, -7068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -7072($fp)
	addi $t0, $fp, -104
	sw $t0, -7076($fp)
	lw $t0, -5124($fp)
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
	li $t0, 0
	sw $t0, -7096($fp)
	li $t0, 48309
	sw $t0, -7100($fp)
	lw $t1, -7100($fp)
	li $t2, 0
	bne $t1, $t2, label224
	j label223
label223:
	li $t0, 1
	sw $t0, -7096($fp)
label224:
	li $t0, 0
	sw $t0, -7104($fp)
	li $t0, 58427
	sw $t0, -7108($fp)
	li $t0, 0
	lw $t1, -7108($fp)
	sub $t0, $t0, $t1
	sw $t0, -7112($fp)
	li $t0, 32127
	sw $t0, -7116($fp)
	lw $t1, -7112($fp)
	lw $t2, -7116($fp)
	bge $t1, $t2, label225
	j label226
label225:
	li $t0, 1
	sw $t0, -7104($fp)
label226:
	li $t0, 0
	sw $t0, -7120($fp)
	li $t0, 57129
	sw $t0, -7124($fp)
	li $t0, 0
	lw $t1, -7124($fp)
	sub $t0, $t0, $t1
	sw $t0, -7128($fp)
	lw $t1, -7128($fp)
	li $t2, 0
	bne $t1, $t2, label227
	j label229
label229:
	li $t0, 9038
	sw $t0, -7132($fp)
	lw $t1, -7132($fp)
	li $t2, 0
	bne $t1, $t2, label227
	j label228
label227:
	li $t0, 1
	sw $t0, -7120($fp)
label228:
	lw $t0, -1652($fp)
	sw $t0, -7136($fp)
	li $t0, 15319
	sw $t0, -7140($fp)
	li $t0, 64191
	sw $t0, -7144($fp)
	lw $t0, -7140($fp)
	lw $t1, -7144($fp)
	mul $t0, $t0, $t1
	sw $t0, -7148($fp)
	li $t0, 1
	sw $t0, -7152($fp)
	lw $t0, -7148($fp)
	lw $t1, -7152($fp)
	mul $t0, $t0, $t1
	sw $t0, -7156($fp)
	li $t0, 0
	sw $t0, -7160($fp)
	li $t0, 16716
	sw $t0, -7164($fp)
	lw $t1, -7164($fp)
	li $t2, 0
	bne $t1, $t2, label230
	j label232
label232:
	lw $t0, -1808($fp)
	sw $t0, -7168($fp)
	lw $t1, -7168($fp)
	li $t2, 0
	bne $t1, $t2, label230
	j label231
label230:
	li $t0, 1
	sw $t0, -7160($fp)
label231:
	li $t0, 0
	sw $t0, -7172($fp)
	li $t0, 24258
	sw $t0, -7176($fp)
	li $t0, 44231
	sw $t0, -7180($fp)
	lw $t1, -7176($fp)
	lw $t2, -7180($fp)
	beq $t1, $t2, label233
	j label234
label233:
	li $t0, 1
	sw $t0, -7172($fp)
label234:
	addi $sp, $sp, -4
	lw $t0, -7120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7172($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7184($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -7184($fp)
	sub $t0, $t0, $t1
	sw $t0, -7188($fp)
	li $t0, 0
	sw $t0, -7192($fp)
	lw $t0, -4244($fp)
	sw $t0, -7196($fp)
	li $t0, 52633
	sw $t0, -7200($fp)
	lw $t0, -7196($fp)
	lw $t1, -7200($fp)
	mul $t0, $t0, $t1
	sw $t0, -7204($fp)
	lw $t0, -1616($fp)
	sw $t0, -7208($fp)
	lw $t1, -7204($fp)
	lw $t2, -7208($fp)
	bne $t1, $t2, label235
	j label236
label235:
	li $t0, 1
	sw $t0, -7192($fp)
label236:
	lw $t0, -5328($fp)
	sw $t0, -7212($fp)
	addi $sp, $sp, -4
	lw $t0, -7096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7212($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7216($fp)
	addi $sp, $sp, 24
	lw $t0, -7092($fp)
	lw $t1, -7216($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7220($fp)
	li $t0, 0
	lw $t1, -7220($fp)
	sub $t0, $t0, $t1
	sw $t0, -7224($fp)
	lw $t0, -1172($fp)
	sw $t0, -7228($fp)
	lw $t0, -3968($fp)
	sw $t0, -7232($fp)
	lw $t0, -7228($fp)
	lw $t1, -7232($fp)
	mul $t0, $t0, $t1
	sw $t0, -7236($fp)
	li $t0, 31082
	sw $t0, -7240($fp)
	lw $t0, -7236($fp)
	lw $t1, -7240($fp)
	mul $t0, $t0, $t1
	sw $t0, -7244($fp)
	li $t0, 55597
	sw $t0, -7248($fp)
	li $t0, 0
	lw $t1, -7248($fp)
	sub $t0, $t0, $t1
	sw $t0, -7252($fp)
	li $t0, 0
	lw $t1, -7252($fp)
	sub $t0, $t0, $t1
	sw $t0, -7256($fp)
	li $t0, 0
	sw $t0, -7260($fp)
	lw $t0, -5376($fp)
	sw $t0, -7264($fp)
	lw $t1, -7264($fp)
	li $t2, 0
	bne $t1, $t2, label238
	j label237
label237:
	li $t0, 1
	sw $t0, -7260($fp)
label238:
	li $t0, 0
	sw $t0, -7268($fp)
	li $t0, 30939
	sw $t0, -7272($fp)
	li $t0, 769
	sw $t0, -7276($fp)
	lw $t1, -7272($fp)
	lw $t2, -7276($fp)
	bne $t1, $t2, label241
	j label240
label241:
	lw $t0, -3116($fp)
	sw $t0, -7280($fp)
	lw $t1, -7280($fp)
	li $t2, 0
	bne $t1, $t2, label239
	j label240
label239:
	li $t0, 1
	sw $t0, -7268($fp)
label240:
	li $t0, 0
	sw $t0, -7284($fp)
	li $t0, 54533
	sw $t0, -7288($fp)
	lw $t1, -7288($fp)
	li $t2, 0
	bne $t1, $t2, label243
	j label242
label242:
	li $t0, 1
	sw $t0, -7284($fp)
label243:
	li $t0, 13791
	sw $t0, -7292($fp)
	lw $t0, -7284($fp)
	lw $t1, -7292($fp)
	mul $t0, $t0, $t1
	sw $t0, -7296($fp)
	addi $sp, $sp, -4
	lw $t0, -7244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7296($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7300($fp)
	addi $sp, $sp, 24
	lw $t0, -680($fp)
	sw $t0, -7304($fp)
	lw $t0, -7300($fp)
	lw $t1, -7304($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7308($fp)
	lw $t1, -7224($fp)
	lw $t2, -7308($fp)
	bge $t1, $t2, label222
	j label221
label222:
	li $t0, 0
	sw $t0, -7312($fp)
	lw $t0, -692($fp)
	sw $t0, -7316($fp)
	li $t0, 54705
	sw $t0, -7320($fp)
	lw $t1, -7316($fp)
	lw $t2, -7320($fp)
	beq $t1, $t2, label244
	j label246
label246:
	lw $t0, -1520($fp)
	sw $t0, -7324($fp)
	lw $t1, -7324($fp)
	li $t2, 0
	bne $t1, $t2, label244
	j label245
label244:
	li $t0, 1
	sw $t0, -7312($fp)
label245:
	addi $sp, $sp, -4
	lw $t0, -7312($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7328($fp)
	addi $sp, $sp, 8
	lw $t1, -7328($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label221
label220:
	li $t0, 1
	sw $t0, -7072($fp)
label221:
	lw $ra, -4($fp)
	lw $v0, -7072($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -240
	sw $t0, -7332($fp)
	lw $t0, -4716($fp)
	sw $t0, -7336($fp)
	li $t0, 4
	lw $t1, -7336($fp)
	mul $t0, $t0, $t1
	sw $t0, -7340($fp)
	lw $t0, -7340($fp)
	lw $t1, -7332($fp)
	add $t0, $t0, $t1
	sw $t0, -7344($fp)
	lw $t0, -7344($fp)
	lw $t1, 0($t0)
	sw $t1, -7348($fp)
	li $t0, 0
	lw $t1, -7348($fp)
	sub $t0, $t0, $t1
	sw $t0, -7352($fp)
	li $t0, 0
	sw $t0, -7356($fp)
	lw $t0, -4704($fp)
	sw $t0, -7360($fp)
	lw $t1, -7360($fp)
	li $t2, 0
	bne $t1, $t2, label250
	j label251
label250:
	li $t0, 1
	sw $t0, -7356($fp)
label251:
	li $t0, 0
	sw $t0, -7364($fp)
	lw $t0, -1184($fp)
	sw $t0, -7368($fp)
	lw $t0, -3116($fp)
	sw $t0, -7372($fp)
	lw $t0, -7368($fp)
	lw $t1, -7372($fp)
	add $t0, $t0, $t1
	sw $t0, -7376($fp)
	lw $t1, -7376($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label254
label254:
	li $t0, 3915
	sw $t0, -7380($fp)
	lw $t1, -7380($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label253
label252:
	li $t0, 1
	sw $t0, -7364($fp)
label253:
	li $t0, 0
	sw $t0, -7384($fp)
	li $t0, 1094
	sw $t0, -7388($fp)
	li $t0, 0
	lw $t1, -7388($fp)
	sub $t0, $t0, $t1
	sw $t0, -7392($fp)
	lw $t0, -4692($fp)
	sw $t0, -7396($fp)
	lw $t1, -7392($fp)
	lw $t2, -7396($fp)
	bne $t1, $t2, label255
	j label256
label255:
	li $t0, 1
	sw $t0, -7384($fp)
label256:
	lw $t0, -2876($fp)
	sw $t0, -7400($fp)
	li $t0, 0
	lw $t1, -7400($fp)
	sub $t0, $t0, $t1
	sw $t0, -7404($fp)
	li $t0, 53624
	sw $t0, -7408($fp)
	lw $t0, -7404($fp)
	lw $t1, -7408($fp)
	sub $t0, $t0, $t1
	sw $t0, -7412($fp)
	li $t0, 0
	sw $t0, -7416($fp)
	li $t0, 0
	sw $t0, -7420($fp)
	li $t0, 33290
	sw $t0, -7424($fp)
	lw $t0, -4680($fp)
	sw $t0, -7428($fp)
	lw $t1, -7424($fp)
	lw $t2, -7428($fp)
	ble $t1, $t2, label259
	j label260
label259:
	li $t0, 1
	sw $t0, -7420($fp)
label260:
	lw $t0, -2072($fp)
	sw $t0, -7432($fp)
	lw $t1, -7420($fp)
	lw $t2, -7432($fp)
	beq $t1, $t2, label257
	j label258
label257:
	li $t0, 1
	sw $t0, -7416($fp)
label258:
	li $t0, 0
	sw $t0, -7436($fp)
	li $t0, 11689
	sw $t0, -7440($fp)
	li $t0, 54001
	sw $t0, -7444($fp)
	lw $t1, -7440($fp)
	lw $t2, -7444($fp)
	beq $t1, $t2, label261
	j label262
label261:
	li $t0, 1
	sw $t0, -7436($fp)
label262:
	li $t0, 11369
	sw $t0, -7448($fp)
	li $t0, 48548
	sw $t0, -7452($fp)
	lw $t0, -7448($fp)
	lw $t1, -7452($fp)
	mul $t0, $t0, $t1
	sw $t0, -7456($fp)
	li $t0, 49159
	sw $t0, -7460($fp)
	lw $t0, -7456($fp)
	lw $t1, -7460($fp)
	sub $t0, $t0, $t1
	sw $t0, -7464($fp)
	li $t0, 0
	sw $t0, -7468($fp)
	li $t0, 24304
	sw $t0, -7472($fp)
	lw $t1, -7472($fp)
	li $t2, 0
	bne $t1, $t2, label264
	j label263
label263:
	li $t0, 1
	sw $t0, -7468($fp)
label264:
	addi $sp, $sp, -4
	lw $t0, -7412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7468($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7476($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -7352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7476($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7480($fp)
	addi $sp, $sp, 24
	lw $t1, -7480($fp)
	li $t2, 0
	bne $t1, $t2, label247
	j label248
label247:
	li $t0, 64828
	sw $t0, -7548($fp)
	addi $t0, $fp, -7504
	sw $t0, -7552($fp)
	li $t0, 0
	sw $t0, -7556($fp)
	lw $t0, -7556($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7560($fp)
	lw $t0, -7552($fp)
	lw $t1, -7560($fp)
	add $t0, $t0, $t1
	sw $t0, -7564($fp)
	lw $t0, -7548($fp)
	lw $t1, -7564($fp)
	sw $t0, 0($t1)
	lw $t0, -7564($fp)
	lw $t1, 0($t0)
	sw $t1, -7568($fp)
	li $t0, 17201
	sw $t0, -7572($fp)
	addi $t0, $fp, -7504
	sw $t0, -7576($fp)
	li $t0, 1
	sw $t0, -7580($fp)
	lw $t0, -7580($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7584($fp)
	lw $t0, -7576($fp)
	lw $t1, -7584($fp)
	add $t0, $t0, $t1
	sw $t0, -7588($fp)
	lw $t0, -7572($fp)
	lw $t1, -7588($fp)
	sw $t0, 0($t1)
	lw $t0, -7588($fp)
	lw $t1, 0($t0)
	sw $t1, -7592($fp)
	li $t0, 56548
	sw $t0, -7596($fp)
	addi $t0, $fp, -7504
	sw $t0, -7600($fp)
	li $t0, 2
	sw $t0, -7604($fp)
	lw $t0, -7604($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7608($fp)
	lw $t0, -7600($fp)
	lw $t1, -7608($fp)
	add $t0, $t0, $t1
	sw $t0, -7612($fp)
	lw $t0, -7596($fp)
	lw $t1, -7612($fp)
	sw $t0, 0($t1)
	lw $t0, -7612($fp)
	lw $t1, 0($t0)
	sw $t1, -7616($fp)
	li $t0, 23550
	sw $t0, -7620($fp)
	addi $t0, $fp, -7504
	sw $t0, -7624($fp)
	li $t0, 3
	sw $t0, -7628($fp)
	lw $t0, -7628($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7632($fp)
	lw $t0, -7624($fp)
	lw $t1, -7632($fp)
	add $t0, $t0, $t1
	sw $t0, -7636($fp)
	lw $t0, -7620($fp)
	lw $t1, -7636($fp)
	sw $t0, 0($t1)
	lw $t0, -7636($fp)
	lw $t1, 0($t0)
	sw $t1, -7640($fp)
	li $t0, 61432
	sw $t0, -7644($fp)
	addi $t0, $fp, -7504
	sw $t0, -7648($fp)
	li $t0, 4
	sw $t0, -7652($fp)
	lw $t0, -7652($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7656($fp)
	lw $t0, -7648($fp)
	lw $t1, -7656($fp)
	add $t0, $t0, $t1
	sw $t0, -7660($fp)
	lw $t0, -7644($fp)
	lw $t1, -7660($fp)
	sw $t0, 0($t1)
	lw $t0, -7660($fp)
	lw $t1, 0($t0)
	sw $t1, -7664($fp)
	li $t0, 7729
	sw $t0, -7668($fp)
	addi $t0, $fp, -7504
	sw $t0, -7672($fp)
	li $t0, 5
	sw $t0, -7676($fp)
	lw $t0, -7676($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7680($fp)
	lw $t0, -7672($fp)
	lw $t1, -7680($fp)
	add $t0, $t0, $t1
	sw $t0, -7684($fp)
	lw $t0, -7668($fp)
	lw $t1, -7684($fp)
	sw $t0, 0($t1)
	lw $t0, -7684($fp)
	lw $t1, 0($t0)
	sw $t1, -7688($fp)
	li $t0, 38870
	sw $t0, -7692($fp)
	addi $t0, $fp, -7544
	sw $t0, -7696($fp)
	li $t0, 0
	sw $t0, -7700($fp)
	lw $t0, -7700($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7704($fp)
	lw $t0, -7696($fp)
	lw $t1, -7704($fp)
	add $t0, $t0, $t1
	sw $t0, -7708($fp)
	lw $t0, -7692($fp)
	lw $t1, -7708($fp)
	sw $t0, 0($t1)
	lw $t0, -7708($fp)
	lw $t1, 0($t0)
	sw $t1, -7712($fp)
	li $t0, 60087
	sw $t0, -7716($fp)
	addi $t0, $fp, -7544
	sw $t0, -7720($fp)
	li $t0, 1
	sw $t0, -7724($fp)
	lw $t0, -7724($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7728($fp)
	lw $t0, -7720($fp)
	lw $t1, -7728($fp)
	add $t0, $t0, $t1
	sw $t0, -7732($fp)
	lw $t0, -7716($fp)
	lw $t1, -7732($fp)
	sw $t0, 0($t1)
	lw $t0, -7732($fp)
	lw $t1, 0($t0)
	sw $t1, -7736($fp)
	li $t0, 27174
	sw $t0, -7740($fp)
	addi $t0, $fp, -7544
	sw $t0, -7744($fp)
	li $t0, 2
	sw $t0, -7748($fp)
	lw $t0, -7748($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7752($fp)
	lw $t0, -7744($fp)
	lw $t1, -7752($fp)
	add $t0, $t0, $t1
	sw $t0, -7756($fp)
	lw $t0, -7740($fp)
	lw $t1, -7756($fp)
	sw $t0, 0($t1)
	lw $t0, -7756($fp)
	lw $t1, 0($t0)
	sw $t1, -7760($fp)
	li $t0, 30463
	sw $t0, -7764($fp)
	addi $t0, $fp, -7544
	sw $t0, -7768($fp)
	li $t0, 3
	sw $t0, -7772($fp)
	lw $t0, -7772($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7776($fp)
	lw $t0, -7768($fp)
	lw $t1, -7776($fp)
	add $t0, $t0, $t1
	sw $t0, -7780($fp)
	lw $t0, -7764($fp)
	lw $t1, -7780($fp)
	sw $t0, 0($t1)
	lw $t0, -7780($fp)
	lw $t1, 0($t0)
	sw $t1, -7784($fp)
	li $t0, 3589
	sw $t0, -7788($fp)
	addi $t0, $fp, -7544
	sw $t0, -7792($fp)
	li $t0, 4
	sw $t0, -7796($fp)
	lw $t0, -7796($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7800($fp)
	lw $t0, -7792($fp)
	lw $t1, -7800($fp)
	add $t0, $t0, $t1
	sw $t0, -7804($fp)
	lw $t0, -7788($fp)
	lw $t1, -7804($fp)
	sw $t0, 0($t1)
	lw $t0, -7804($fp)
	lw $t1, 0($t0)
	sw $t1, -7808($fp)
	li $t0, 20066
	sw $t0, -7812($fp)
	addi $t0, $fp, -7544
	sw $t0, -7816($fp)
	li $t0, 5
	sw $t0, -7820($fp)
	lw $t0, -7820($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7824($fp)
	lw $t0, -7816($fp)
	lw $t1, -7824($fp)
	add $t0, $t0, $t1
	sw $t0, -7828($fp)
	lw $t0, -7812($fp)
	lw $t1, -7828($fp)
	sw $t0, 0($t1)
	lw $t0, -7828($fp)
	lw $t1, 0($t0)
	sw $t1, -7832($fp)
	li $t0, 62590
	sw $t0, -7836($fp)
	addi $t0, $fp, -7544
	sw $t0, -7840($fp)
	li $t0, 6
	sw $t0, -7844($fp)
	lw $t0, -7844($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7848($fp)
	lw $t0, -7840($fp)
	lw $t1, -7848($fp)
	add $t0, $t0, $t1
	sw $t0, -7852($fp)
	lw $t0, -7836($fp)
	lw $t1, -7852($fp)
	sw $t0, 0($t1)
	lw $t0, -7852($fp)
	lw $t1, 0($t0)
	sw $t1, -7856($fp)
	li $t0, 51898
	sw $t0, -7860($fp)
	addi $t0, $fp, -7544
	sw $t0, -7864($fp)
	li $t0, 7
	sw $t0, -7868($fp)
	lw $t0, -7868($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7872($fp)
	lw $t0, -7864($fp)
	lw $t1, -7872($fp)
	add $t0, $t0, $t1
	sw $t0, -7876($fp)
	lw $t0, -7860($fp)
	lw $t1, -7876($fp)
	sw $t0, 0($t1)
	lw $t0, -7876($fp)
	lw $t1, 0($t0)
	sw $t1, -7880($fp)
	li $t0, 9063
	sw $t0, -7884($fp)
	addi $t0, $fp, -7544
	sw $t0, -7888($fp)
	li $t0, 8
	sw $t0, -7892($fp)
	lw $t0, -7892($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7896($fp)
	lw $t0, -7888($fp)
	lw $t1, -7896($fp)
	add $t0, $t0, $t1
	sw $t0, -7900($fp)
	lw $t0, -7884($fp)
	lw $t1, -7900($fp)
	sw $t0, 0($t1)
	lw $t0, -7900($fp)
	lw $t1, 0($t0)
	sw $t1, -7904($fp)
	li $t0, 10845
	sw $t0, -7908($fp)
	addi $t0, $fp, -7544
	sw $t0, -7912($fp)
	li $t0, 9
	sw $t0, -7916($fp)
	lw $t0, -7916($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7920($fp)
	lw $t0, -7912($fp)
	lw $t1, -7920($fp)
	add $t0, $t0, $t1
	sw $t0, -7924($fp)
	lw $t0, -7908($fp)
	lw $t1, -7924($fp)
	sw $t0, 0($t1)
	lw $t0, -7924($fp)
	lw $t1, 0($t0)
	sw $t1, -7928($fp)
	li $t0, 17302
	sw $t0, -7932($fp)
	lw $t0, -7932($fp)
	sw $t0, -7936($fp)
	lw $t0, -7936($fp)
	sw $t0, -7940($fp)
label265:
	lw $t0, -560($fp)
	sw $t0, -7944($fp)
	addi $t0, $fp, -60
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
	li $t0, 0
	lw $t1, -7964($fp)
	sub $t0, $t0, $t1
	sw $t0, -7968($fp)
	li $t0, 0
	lw $t1, -7968($fp)
	sub $t0, $t0, $t1
	sw $t0, -7972($fp)
	lw $t0, -7944($fp)
	lw $t1, -7972($fp)
	mul $t0, $t0, $t1
	sw $t0, -7976($fp)
	lw $t1, -7976($fp)
	li $t2, 0
	bne $t1, $t2, label266
	j label267
label266:
label268:
	addi $t0, $fp, -7544
	sw $t0, -7980($fp)
	lw $t0, -2888($fp)
	sw $t0, -7984($fp)
	li $t0, 4
	lw $t1, -7984($fp)
	mul $t0, $t0, $t1
	sw $t0, -7988($fp)
	lw $t0, -7988($fp)
	lw $t1, -7980($fp)
	add $t0, $t0, $t1
	sw $t0, -7992($fp)
	lw $t0, -7992($fp)
	lw $t1, 0($t0)
	sw $t1, -7996($fp)
	li $t0, 0
	lw $t1, -7996($fp)
	sub $t0, $t0, $t1
	sw $t0, -8000($fp)
	addi $sp, $sp, -4
	lw $t0, -8000($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8004($fp)
	addi $sp, $sp, 8
	lw $t1, -8004($fp)
	li $t2, 0
	bne $t1, $t2, label269
	j label270
label269:
	lw $t0, -3896($fp)
	sw $t0, -8008($fp)
	j label268
label270:
	j label265
label267:
label271:
	li $t0, 48384
	sw $t0, -8012($fp)
	lw $t0, -3992($fp)
	sw $t0, -8016($fp)
	lw $t0, -8012($fp)
	lw $t1, -8016($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8020($fp)
	li $t0, 0
	lw $t1, -8020($fp)
	sub $t0, $t0, $t1
	sw $t0, -8024($fp)
	lw $t0, -1736($fp)
	sw $t0, -8028($fp)
	lw $t0, -1496($fp)
	sw $t0, -8032($fp)
	lw $t0, -8028($fp)
	lw $t1, -8032($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8036($fp)
	lw $t0, -8024($fp)
	lw $t1, -8036($fp)
	sub $t0, $t0, $t1
	sw $t0, -8040($fp)
	li $t0, 0
	sw $t0, -8044($fp)
	li $t0, 64538
	sw $t0, -8048($fp)
	li $t0, 25210
	sw $t0, -8052($fp)
	lw $t0, -8048($fp)
	lw $t1, -8052($fp)
	sub $t0, $t0, $t1
	sw $t0, -8056($fp)
	lw $t1, -8056($fp)
	li $t2, 0
	bne $t1, $t2, label274
	j label276
label276:
	li $t0, 59753
	sw $t0, -8060($fp)
	lw $t1, -8060($fp)
	li $t2, 0
	bne $t1, $t2, label274
	j label275
label274:
	li $t0, 1
	sw $t0, -8044($fp)
label275:
	addi $sp, $sp, -4
	lw $t0, -8044($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8064($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -8064($fp)
	sub $t0, $t0, $t1
	sw $t0, -8068($fp)
	lw $t0, -8040($fp)
	lw $t1, -8068($fp)
	sub $t0, $t0, $t1
	sw $t0, -8072($fp)
	li $t0, 0
	sw $t0, -8076($fp)
	li $t0, 47550
	sw $t0, -8080($fp)
	lw $t1, -8080($fp)
	li $t2, 0
	bne $t1, $t2, label278
	j label277
label277:
	li $t0, 1
	sw $t0, -8076($fp)
label278:
	li $t0, 8833
	sw $t0, -8084($fp)
	lw $t0, -8076($fp)
	lw $t1, -8084($fp)
	mul $t0, $t0, $t1
	sw $t0, -8088($fp)
	lw $t0, -4256($fp)
	sw $t0, -8092($fp)
	li $t0, 0
	lw $t1, -8092($fp)
	sub $t0, $t0, $t1
	sw $t0, -8096($fp)
	lw $t0, -8088($fp)
	lw $t1, -8096($fp)
	mul $t0, $t0, $t1
	sw $t0, -8100($fp)
	lw $t1, -8072($fp)
	lw $t2, -8100($fp)
	beq $t1, $t2, label272
	j label273
label272:
label279:
	li $t0, 0
	sw $t0, -8104($fp)
	lw $t0, -1676($fp)
	sw $t0, -8108($fp)
	lw $t0, -1616($fp)
	sw $t0, -8112($fp)
	lw $t0, -980($fp)
	sw $t0, -8116($fp)
	lw $t0, -8112($fp)
	lw $t1, -8116($fp)
	add $t0, $t0, $t1
	sw $t0, -8120($fp)
	lw $t1, -8108($fp)
	lw $t2, -8120($fp)
	bne $t1, $t2, label282
	j label283
label282:
	li $t0, 1
	sw $t0, -8104($fp)
label283:
	lw $t0, -8104($fp)
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	sw $t0, -8124($fp)
	lw $t1, -8124($fp)
	li $t2, 0
	bne $t1, $t2, label280
	j label281
label280:
	li $t0, 0
	sw $t0, -8128($fp)
	li $t0, 0
	sw $t0, -8132($fp)
	lw $t0, -4268($fp)
	sw $t0, -8136($fp)
	lw $t0, -8136($fp)
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	sw $t0, -8140($fp)
	lw $t0, -3944($fp)
	sw $t0, -8144($fp)
	addi $t0, $fp, -496
	sw $t0, -8148($fp)
	lw $t0, -1772($fp)
	sw $t0, -8152($fp)
	li $t0, 4
	lw $t1, -8152($fp)
	mul $t0, $t0, $t1
	sw $t0, -8156($fp)
	lw $t0, -8156($fp)
	lw $t1, -8148($fp)
	add $t0, $t0, $t1
	sw $t0, -8160($fp)
	lw $t0, -8160($fp)
	lw $t1, 0($t0)
	sw $t1, -8164($fp)
	addi $sp, $sp, -4
	lw $t0, -8164($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8168($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -8172($fp)
	li $t0, 36015
	sw $t0, -8176($fp)
	li $t0, 42123
	sw $t0, -8180($fp)
	lw $t0, -8176($fp)
	lw $t1, -8180($fp)
	sub $t0, $t0, $t1
	sw $t0, -8184($fp)
	li $t0, 59530
	sw $t0, -8188($fp)
	lw $t1, -8184($fp)
	lw $t2, -8188($fp)
	beq $t1, $t2, label288
	j label289
label288:
	li $t0, 1
	sw $t0, -8172($fp)
label289:
	li $t0, 5906
	sw $t0, -8192($fp)
	lw $t0, -8192($fp)
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	sw $t0, -8196($fp)
	addi $sp, $sp, -4
	lw $t0, -8140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8196($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8200($fp)
	addi $sp, $sp, 24
	lw $t0, -1784($fp)
	sw $t0, -8204($fp)
	li $t0, 37109
	sw $t0, -8208($fp)
	lw $t0, -8204($fp)
	lw $t1, -8208($fp)
	mul $t0, $t0, $t1
	sw $t0, -8212($fp)
	lw $t0, -7936($fp)
	sw $t0, -8216($fp)
	lw $t0, -8212($fp)
	lw $t1, -8216($fp)
	sub $t0, $t0, $t1
	sw $t0, -8220($fp)
	lw $t1, -8200($fp)
	lw $t2, -8220($fp)
	beq $t1, $t2, label286
	j label287
label286:
	li $t0, 1
	sw $t0, -8132($fp)
label287:
	li $t0, 46038
	sw $t0, -8224($fp)
	li $t0, 1
	sw $t0, -8228($fp)
	lw $t0, -8224($fp)
	lw $t1, -8228($fp)
	mul $t0, $t0, $t1
	sw $t0, -8232($fp)
	lw $t1, -8132($fp)
	lw $t2, -8232($fp)
	beq $t1, $t2, label284
	j label285
label284:
	li $t0, 1
	sw $t0, -8128($fp)
label285:
	j label279
label281:
	j label271
label273:
	addi $t0, $fp, -7504
	sw $t0, -8236($fp)
	li $t0, 0
	sw $t0, -8240($fp)
	li $t0, 4
	lw $t1, -8240($fp)
	mul $t0, $t0, $t1
	sw $t0, -8244($fp)
	lw $t0, -8244($fp)
	lw $t1, -8236($fp)
	add $t0, $t0, $t1
	sw $t0, -8248($fp)
	lw $t0, -8248($fp)
	lw $t1, 0($t0)
	sw $t1, -8252($fp)
	lw $t0, -8252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7504
	sw $t0, -8256($fp)
	li $t0, 1
	sw $t0, -8260($fp)
	li $t0, 4
	lw $t1, -8260($fp)
	mul $t0, $t0, $t1
	sw $t0, -8264($fp)
	lw $t0, -8264($fp)
	lw $t1, -8256($fp)
	add $t0, $t0, $t1
	sw $t0, -8268($fp)
	lw $t0, -8268($fp)
	lw $t1, 0($t0)
	sw $t1, -8272($fp)
	lw $t0, -8272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7504
	sw $t0, -8276($fp)
	li $t0, 2
	sw $t0, -8280($fp)
	li $t0, 4
	lw $t1, -8280($fp)
	mul $t0, $t0, $t1
	sw $t0, -8284($fp)
	lw $t0, -8284($fp)
	lw $t1, -8276($fp)
	add $t0, $t0, $t1
	sw $t0, -8288($fp)
	lw $t0, -8288($fp)
	lw $t1, 0($t0)
	sw $t1, -8292($fp)
	lw $t0, -8292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7504
	sw $t0, -8296($fp)
	li $t0, 3
	sw $t0, -8300($fp)
	li $t0, 4
	lw $t1, -8300($fp)
	mul $t0, $t0, $t1
	sw $t0, -8304($fp)
	lw $t0, -8304($fp)
	lw $t1, -8296($fp)
	add $t0, $t0, $t1
	sw $t0, -8308($fp)
	lw $t0, -8308($fp)
	lw $t1, 0($t0)
	sw $t1, -8312($fp)
	lw $t0, -8312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7504
	sw $t0, -8316($fp)
	li $t0, 4
	sw $t0, -8320($fp)
	li $t0, 4
	lw $t1, -8320($fp)
	mul $t0, $t0, $t1
	sw $t0, -8324($fp)
	lw $t0, -8324($fp)
	lw $t1, -8316($fp)
	add $t0, $t0, $t1
	sw $t0, -8328($fp)
	lw $t0, -8328($fp)
	lw $t1, 0($t0)
	sw $t1, -8332($fp)
	lw $t0, -8332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7504
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
	lw $t0, -8352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7544
	sw $t0, -8356($fp)
	li $t0, 0
	sw $t0, -8360($fp)
	li $t0, 4
	lw $t1, -8360($fp)
	mul $t0, $t0, $t1
	sw $t0, -8364($fp)
	lw $t0, -8364($fp)
	lw $t1, -8356($fp)
	add $t0, $t0, $t1
	sw $t0, -8368($fp)
	lw $t0, -8368($fp)
	lw $t1, 0($t0)
	sw $t1, -8372($fp)
	lw $t0, -8372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7544
	sw $t0, -8376($fp)
	li $t0, 1
	sw $t0, -8380($fp)
	li $t0, 4
	lw $t1, -8380($fp)
	mul $t0, $t0, $t1
	sw $t0, -8384($fp)
	lw $t0, -8384($fp)
	lw $t1, -8376($fp)
	add $t0, $t0, $t1
	sw $t0, -8388($fp)
	lw $t0, -8388($fp)
	lw $t1, 0($t0)
	sw $t1, -8392($fp)
	lw $t0, -8392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7544
	sw $t0, -8396($fp)
	li $t0, 2
	sw $t0, -8400($fp)
	li $t0, 4
	lw $t1, -8400($fp)
	mul $t0, $t0, $t1
	sw $t0, -8404($fp)
	lw $t0, -8404($fp)
	lw $t1, -8396($fp)
	add $t0, $t0, $t1
	sw $t0, -8408($fp)
	lw $t0, -8408($fp)
	lw $t1, 0($t0)
	sw $t1, -8412($fp)
	lw $t0, -8412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7544
	sw $t0, -8416($fp)
	li $t0, 3
	sw $t0, -8420($fp)
	li $t0, 4
	lw $t1, -8420($fp)
	mul $t0, $t0, $t1
	sw $t0, -8424($fp)
	lw $t0, -8424($fp)
	lw $t1, -8416($fp)
	add $t0, $t0, $t1
	sw $t0, -8428($fp)
	lw $t0, -8428($fp)
	lw $t1, 0($t0)
	sw $t1, -8432($fp)
	lw $t0, -8432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7544
	sw $t0, -8436($fp)
	li $t0, 4
	sw $t0, -8440($fp)
	li $t0, 4
	lw $t1, -8440($fp)
	mul $t0, $t0, $t1
	sw $t0, -8444($fp)
	lw $t0, -8444($fp)
	lw $t1, -8436($fp)
	add $t0, $t0, $t1
	sw $t0, -8448($fp)
	lw $t0, -8448($fp)
	lw $t1, 0($t0)
	sw $t1, -8452($fp)
	lw $t0, -8452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7544
	sw $t0, -8456($fp)
	li $t0, 5
	sw $t0, -8460($fp)
	li $t0, 4
	lw $t1, -8460($fp)
	mul $t0, $t0, $t1
	sw $t0, -8464($fp)
	lw $t0, -8464($fp)
	lw $t1, -8456($fp)
	add $t0, $t0, $t1
	sw $t0, -8468($fp)
	lw $t0, -8468($fp)
	lw $t1, 0($t0)
	sw $t1, -8472($fp)
	lw $t0, -8472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7544
	sw $t0, -8476($fp)
	li $t0, 6
	sw $t0, -8480($fp)
	li $t0, 4
	lw $t1, -8480($fp)
	mul $t0, $t0, $t1
	sw $t0, -8484($fp)
	lw $t0, -8484($fp)
	lw $t1, -8476($fp)
	add $t0, $t0, $t1
	sw $t0, -8488($fp)
	lw $t0, -8488($fp)
	lw $t1, 0($t0)
	sw $t1, -8492($fp)
	lw $t0, -8492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7544
	sw $t0, -8496($fp)
	li $t0, 7
	sw $t0, -8500($fp)
	li $t0, 4
	lw $t1, -8500($fp)
	mul $t0, $t0, $t1
	sw $t0, -8504($fp)
	lw $t0, -8504($fp)
	lw $t1, -8496($fp)
	add $t0, $t0, $t1
	sw $t0, -8508($fp)
	lw $t0, -8508($fp)
	lw $t1, 0($t0)
	sw $t1, -8512($fp)
	lw $t0, -8512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7544
	sw $t0, -8516($fp)
	li $t0, 8
	sw $t0, -8520($fp)
	li $t0, 4
	lw $t1, -8520($fp)
	mul $t0, $t0, $t1
	sw $t0, -8524($fp)
	lw $t0, -8524($fp)
	lw $t1, -8516($fp)
	add $t0, $t0, $t1
	sw $t0, -8528($fp)
	lw $t0, -8528($fp)
	lw $t1, 0($t0)
	sw $t1, -8532($fp)
	lw $t0, -8532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7544
	sw $t0, -8536($fp)
	li $t0, 9
	sw $t0, -8540($fp)
	li $t0, 4
	lw $t1, -8540($fp)
	mul $t0, $t0, $t1
	sw $t0, -8544($fp)
	lw $t0, -8544($fp)
	lw $t1, -8536($fp)
	add $t0, $t0, $t1
	sw $t0, -8548($fp)
	lw $t0, -8548($fp)
	lw $t1, 0($t0)
	sw $t1, -8552($fp)
	lw $t0, -8552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7936($fp)
	sw $t0, -8556($fp)
	lw $t0, -8556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 54310
	sw $t0, -8560($fp)
	addi $t0, $fp, -180
	sw $t0, -8564($fp)
	li $t0, 1
	sw $t0, -8568($fp)
	li $t0, 4
	lw $t1, -8568($fp)
	mul $t0, $t0, $t1
	sw $t0, -8572($fp)
	lw $t0, -8572($fp)
	lw $t1, -8564($fp)
	add $t0, $t0, $t1
	sw $t0, -8576($fp)
	lw $t0, -8576($fp)
	lw $t1, 0($t0)
	sw $t1, -8580($fp)
	lw $t0, -8560($fp)
	lw $t1, -8580($fp)
	mul $t0, $t0, $t1
	sw $t0, -8584($fp)
	addi $t0, $fp, -132
	sw $t0, -8588($fp)
	lw $t0, -4004($fp)
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
	li $t0, 0
	lw $t1, -8604($fp)
	sub $t0, $t0, $t1
	sw $t0, -8608($fp)
	lw $t0, -8584($fp)
	lw $t1, -8608($fp)
	add $t0, $t0, $t1
	sw $t0, -8612($fp)
	lw $ra, -4($fp)
	lw $v0, -8612($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -8616($fp)
	lw $t0, -4668($fp)
	sw $t0, -8620($fp)
	li $t0, 50206
	sw $t0, -8624($fp)
	lw $t0, -8620($fp)
	lw $t1, -8624($fp)
	sub $t0, $t0, $t1
	sw $t0, -8628($fp)
	li $t0, 44780
	sw $t0, -8632($fp)
	lw $t0, -8628($fp)
	lw $t1, -8632($fp)
	add $t0, $t0, $t1
	sw $t0, -8636($fp)
	li $t0, 55707
	sw $t0, -8640($fp)
	li $t0, 1
	sw $t0, -8644($fp)
	lw $t0, -8640($fp)
	lw $t1, -8644($fp)
	mul $t0, $t0, $t1
	sw $t0, -8648($fp)
	lw $t0, -8636($fp)
	lw $t1, -8648($fp)
	add $t0, $t0, $t1
	sw $t0, -8652($fp)
	lw $t0, -3116($fp)
	sw $t0, -8656($fp)
	lw $t0, -8652($fp)
	lw $t1, -8656($fp)
	add $t0, $t0, $t1
	sw $t0, -8660($fp)
	addi $t0, $fp, -356
	sw $t0, -8664($fp)
	li $t0, 6
	sw $t0, -8668($fp)
	li $t0, 4
	lw $t1, -8668($fp)
	mul $t0, $t0, $t1
	sw $t0, -8672($fp)
	lw $t0, -8672($fp)
	lw $t1, -8664($fp)
	add $t0, $t0, $t1
	sw $t0, -8676($fp)
	lw $t0, -8676($fp)
	lw $t1, 0($t0)
	sw $t1, -8680($fp)
	addi $sp, $sp, -4
	lw $t0, -8680($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8684($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -8688($fp)
	lw $t0, -572($fp)
	sw $t0, -8692($fp)
	lw $t1, -8692($fp)
	li $t2, 0
	bne $t1, $t2, label293
	j label292
label292:
	li $t0, 1
	sw $t0, -8688($fp)
label293:
	lw $t0, -8684($fp)
	lw $t1, -8688($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8696($fp)
	lw $t1, -8660($fp)
	lw $t2, -8696($fp)
	bne $t1, $t2, label290
	j label291
label290:
	li $t0, 1
	sw $t0, -8616($fp)
label291:
label294:
	addi $t0, $fp, -7504
	sw $t0, -8700($fp)
	li $t0, 0
	sw $t0, -8704($fp)
	li $t0, 48347
	sw $t0, -8708($fp)
	li $t0, 26484
	sw $t0, -8712($fp)
	lw $t1, -8708($fp)
	lw $t2, -8712($fp)
	ble $t1, $t2, label297
	j label298
label297:
	li $t0, 1
	sw $t0, -8704($fp)
label298:
	li $t0, 4
	lw $t1, -8704($fp)
	mul $t0, $t0, $t1
	sw $t0, -8716($fp)
	lw $t0, -8716($fp)
	lw $t1, -8700($fp)
	add $t0, $t0, $t1
	sw $t0, -8720($fp)
	lw $t0, -8720($fp)
	lw $t1, 0($t0)
	sw $t1, -8724($fp)
	li $t0, 17688
	sw $t0, -8728($fp)
	lw $t0, -8724($fp)
	lw $t1, -8728($fp)
	mul $t0, $t0, $t1
	sw $t0, -8732($fp)
	li $t0, 0
	sw $t0, -8736($fp)
	li $t0, 34709
	sw $t0, -8740($fp)
	lw $t1, -8740($fp)
	li $t2, 0
	bne $t1, $t2, label300
	j label299
label299:
	li $t0, 1
	sw $t0, -8736($fp)
label300:
	lw $t1, -8732($fp)
	lw $t2, -8736($fp)
	blt $t1, $t2, label295
	j label296
label295:
	addi $t0, $fp, -88
	sw $t0, -8744($fp)
	li $t0, 5
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
	j label294
label296:
	j label249
label248:
	li $t0, 0
	sw $t0, -8764($fp)
	li $t0, 45381
	sw $t0, -8768($fp)
	lw $t1, -8768($fp)
	li $t2, 0
	bne $t1, $t2, label305
	j label306
label305:
	li $t0, 1
	sw $t0, -8764($fp)
label306:
	li $t0, 0
	lw $t1, -8764($fp)
	sub $t0, $t0, $t1
	sw $t0, -8772($fp)
	lw $t0, -584($fp)
	sw $t0, -8776($fp)
	lw $t1, -8772($fp)
	lw $t2, -8776($fp)
	beq $t1, $t2, label301
	j label304
label304:
	lw $t0, -2936($fp)
	sw $t0, -8780($fp)
	lw $t1, -8780($fp)
	li $t2, 0
	bne $t1, $t2, label301
	j label302
label301:
	li $t0, 29439
	sw $t0, -8824($fp)
	addi $t0, $fp, -8820
	sw $t0, -8828($fp)
	li $t0, 0
	sw $t0, -8832($fp)
	lw $t0, -8832($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8836($fp)
	lw $t0, -8828($fp)
	lw $t1, -8836($fp)
	add $t0, $t0, $t1
	sw $t0, -8840($fp)
	lw $t0, -8824($fp)
	lw $t1, -8840($fp)
	sw $t0, 0($t1)
	lw $t0, -8840($fp)
	lw $t1, 0($t0)
	sw $t1, -8844($fp)
	li $t0, 34859
	sw $t0, -8848($fp)
	addi $t0, $fp, -8820
	sw $t0, -8852($fp)
	li $t0, 1
	sw $t0, -8856($fp)
	lw $t0, -8856($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8860($fp)
	lw $t0, -8852($fp)
	lw $t1, -8860($fp)
	add $t0, $t0, $t1
	sw $t0, -8864($fp)
	lw $t0, -8848($fp)
	lw $t1, -8864($fp)
	sw $t0, 0($t1)
	lw $t0, -8864($fp)
	lw $t1, 0($t0)
	sw $t1, -8868($fp)
	li $t0, 44383
	sw $t0, -8872($fp)
	addi $t0, $fp, -8820
	sw $t0, -8876($fp)
	li $t0, 2
	sw $t0, -8880($fp)
	lw $t0, -8880($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8884($fp)
	lw $t0, -8876($fp)
	lw $t1, -8884($fp)
	add $t0, $t0, $t1
	sw $t0, -8888($fp)
	lw $t0, -8872($fp)
	lw $t1, -8888($fp)
	sw $t0, 0($t1)
	lw $t0, -8888($fp)
	lw $t1, 0($t0)
	sw $t1, -8892($fp)
	li $t0, 54649
	sw $t0, -8896($fp)
	addi $t0, $fp, -8820
	sw $t0, -8900($fp)
	li $t0, 3
	sw $t0, -8904($fp)
	lw $t0, -8904($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8908($fp)
	lw $t0, -8900($fp)
	lw $t1, -8908($fp)
	add $t0, $t0, $t1
	sw $t0, -8912($fp)
	lw $t0, -8896($fp)
	lw $t1, -8912($fp)
	sw $t0, 0($t1)
	lw $t0, -8912($fp)
	lw $t1, 0($t0)
	sw $t1, -8916($fp)
	li $t0, 29077
	sw $t0, -8920($fp)
	addi $t0, $fp, -8820
	sw $t0, -8924($fp)
	li $t0, 4
	sw $t0, -8928($fp)
	lw $t0, -8928($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8932($fp)
	lw $t0, -8924($fp)
	lw $t1, -8932($fp)
	add $t0, $t0, $t1
	sw $t0, -8936($fp)
	lw $t0, -8920($fp)
	lw $t1, -8936($fp)
	sw $t0, 0($t1)
	lw $t0, -8936($fp)
	lw $t1, 0($t0)
	sw $t1, -8940($fp)
	li $t0, 26398
	sw $t0, -8944($fp)
	addi $t0, $fp, -8820
	sw $t0, -8948($fp)
	li $t0, 5
	sw $t0, -8952($fp)
	lw $t0, -8952($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8956($fp)
	lw $t0, -8948($fp)
	lw $t1, -8956($fp)
	add $t0, $t0, $t1
	sw $t0, -8960($fp)
	lw $t0, -8944($fp)
	lw $t1, -8960($fp)
	sw $t0, 0($t1)
	lw $t0, -8960($fp)
	lw $t1, 0($t0)
	sw $t1, -8964($fp)
	li $t0, 63482
	sw $t0, -8968($fp)
	addi $t0, $fp, -8820
	sw $t0, -8972($fp)
	li $t0, 6
	sw $t0, -8976($fp)
	lw $t0, -8976($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8980($fp)
	lw $t0, -8972($fp)
	lw $t1, -8980($fp)
	add $t0, $t0, $t1
	sw $t0, -8984($fp)
	lw $t0, -8968($fp)
	lw $t1, -8984($fp)
	sw $t0, 0($t1)
	lw $t0, -8984($fp)
	lw $t1, 0($t0)
	sw $t1, -8988($fp)
	li $t0, 34983
	sw $t0, -8992($fp)
	addi $t0, $fp, -8820
	sw $t0, -8996($fp)
	li $t0, 7
	sw $t0, -9000($fp)
	lw $t0, -9000($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9004($fp)
	lw $t0, -8996($fp)
	lw $t1, -9004($fp)
	add $t0, $t0, $t1
	sw $t0, -9008($fp)
	lw $t0, -8992($fp)
	lw $t1, -9008($fp)
	sw $t0, 0($t1)
	lw $t0, -9008($fp)
	lw $t1, 0($t0)
	sw $t1, -9012($fp)
	li $t0, 62413
	sw $t0, -9016($fp)
	addi $t0, $fp, -8820
	sw $t0, -9020($fp)
	li $t0, 8
	sw $t0, -9024($fp)
	lw $t0, -9024($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9028($fp)
	lw $t0, -9020($fp)
	lw $t1, -9028($fp)
	add $t0, $t0, $t1
	sw $t0, -9032($fp)
	lw $t0, -9016($fp)
	lw $t1, -9032($fp)
	sw $t0, 0($t1)
	lw $t0, -9032($fp)
	lw $t1, 0($t0)
	sw $t1, -9036($fp)
	li $t0, 40069
	sw $t0, -9040($fp)
	addi $t0, $fp, -8820
	sw $t0, -9044($fp)
	li $t0, 9
	sw $t0, -9048($fp)
	lw $t0, -9048($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9052($fp)
	lw $t0, -9044($fp)
	lw $t1, -9052($fp)
	add $t0, $t0, $t1
	sw $t0, -9056($fp)
	lw $t0, -9040($fp)
	lw $t1, -9056($fp)
	sw $t0, 0($t1)
	lw $t0, -9056($fp)
	lw $t1, 0($t0)
	sw $t1, -9060($fp)
	li $t0, 28978
	sw $t0, -9064($fp)
	lw $t0, -9064($fp)
	sw $t0, -9068($fp)
	lw $t0, -9068($fp)
	sw $t0, -9072($fp)
	li $t0, 33987
	sw $t0, -9076($fp)
	lw $t0, -9076($fp)
	sw $t0, -9080($fp)
	lw $t0, -9080($fp)
	sw $t0, -9084($fp)
	li $t0, 0
	sw $t0, -9088($fp)
	lw $t0, -584($fp)
	sw $t0, -9092($fp)
	lw $t1, -9092($fp)
	li $t2, 0
	bne $t1, $t2, label309
	j label308
label309:
	li $t0, 20572
	sw $t0, -9096($fp)
	lw $t1, -9096($fp)
	li $t2, 0
	bne $t1, $t2, label308
	j label307
label307:
	li $t0, 1
	sw $t0, -9088($fp)
label308:
label310:
	lw $t0, -596($fp)
	sw $t0, -9100($fp)
	li $t0, 22264
	sw $t0, -9104($fp)
	lw $t0, -3116($fp)
	sw $t0, -9108($fp)
	lw $t0, -9104($fp)
	lw $t1, -9108($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9112($fp)
	addi $t0, $fp, -8820
	sw $t0, -9116($fp)
	lw $t0, -4680($fp)
	sw $t0, -9120($fp)
	li $t0, 4
	lw $t1, -9120($fp)
	mul $t0, $t0, $t1
	sw $t0, -9124($fp)
	lw $t0, -9124($fp)
	lw $t1, -9116($fp)
	add $t0, $t0, $t1
	sw $t0, -9128($fp)
	lw $t0, -9128($fp)
	lw $t1, 0($t0)
	sw $t1, -9132($fp)
	lw $t0, -9112($fp)
	lw $t1, -9132($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9136($fp)
	lw $t0, -9100($fp)
	lw $t1, -9136($fp)
	sub $t0, $t0, $t1
	sw $t0, -9140($fp)
	lw $t1, -9140($fp)
	li $t2, 0
	bne $t1, $t2, label311
	j label312
label311:
	li $t0, 0
	sw $t0, -9144($fp)
	li $t0, 22761
	sw $t0, -9148($fp)
	li $t0, 57623
	sw $t0, -9152($fp)
	lw $t0, -9148($fp)
	lw $t1, -9152($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9156($fp)
	li $t0, 39101
	sw $t0, -9160($fp)
	lw $t0, -9156($fp)
	lw $t1, -9160($fp)
	mul $t0, $t0, $t1
	sw $t0, -9164($fp)
	addi $t0, $fp, -240
	sw $t0, -9168($fp)
	lw $t0, -9068($fp)
	sw $t0, -9172($fp)
	li $t0, 4
	lw $t1, -9172($fp)
	mul $t0, $t0, $t1
	sw $t0, -9176($fp)
	lw $t0, -9176($fp)
	lw $t1, -9168($fp)
	add $t0, $t0, $t1
	sw $t0, -9180($fp)
	lw $t0, -9180($fp)
	lw $t1, 0($t0)
	sw $t1, -9184($fp)
	lw $t0, -9164($fp)
	lw $t1, -9184($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9188($fp)
	lw $t1, -9188($fp)
	li $t2, 0
	bne $t1, $t2, label316
	j label314
label316:
	lw $t0, -9080($fp)
	sw $t0, -9192($fp)
	lw $t1, -9192($fp)
	li $t2, 0
	bne $t1, $t2, label315
	j label314
label315:
	li $t0, 7432
	sw $t0, -9196($fp)
	li $t0, 0
	lw $t1, -9196($fp)
	sub $t0, $t0, $t1
	sw $t0, -9200($fp)
	li $t0, 0
	lw $t1, -9200($fp)
	sub $t0, $t0, $t1
	sw $t0, -9204($fp)
	li $t0, 0
	lw $t1, -9204($fp)
	sub $t0, $t0, $t1
	sw $t0, -9208($fp)
	lw $t1, -9208($fp)
	li $t2, 0
	bne $t1, $t2, label313
	j label314
label313:
	li $t0, 1
	sw $t0, -9144($fp)
label314:
	j label310
label312:
	li $t0, 36867
	sw $t0, -9212($fp)
	lw $t0, -9212($fp)
	sw $t0, -9216($fp)
	lw $t0, -9216($fp)
	sw $t0, -9220($fp)
	li $t0, 29272
	sw $t0, -9224($fp)
	lw $t0, -9224($fp)
	sw $t0, -9228($fp)
	lw $t0, -9228($fp)
	sw $t0, -9232($fp)
	li $t0, 0
	sw $t0, -9236($fp)
	li $t0, 4234
	sw $t0, -9240($fp)
	li $t0, 2058
	sw $t0, -9244($fp)
	lw $t0, -9240($fp)
	lw $t1, -9244($fp)
	sub $t0, $t0, $t1
	sw $t0, -9248($fp)
	lw $t0, -9228($fp)
	sw $t0, -9252($fp)
	lw $t0, -9248($fp)
	lw $t1, -9252($fp)
	sub $t0, $t0, $t1
	sw $t0, -9256($fp)
	li $t0, 0
	sw $t0, -9260($fp)
	li $t0, 35000
	sw $t0, -9264($fp)
	lw $t0, -1832($fp)
	sw $t0, -9268($fp)
	lw $t1, -9264($fp)
	lw $t2, -9268($fp)
	bne $t1, $t2, label321
	j label320
label321:
	lw $t0, -1520($fp)
	sw $t0, -9272($fp)
	lw $t1, -9272($fp)
	li $t2, 0
	bne $t1, $t2, label319
	j label320
label319:
	li $t0, 1
	sw $t0, -9260($fp)
label320:
	li $t0, 0
	sw $t0, -9276($fp)
	li $t0, 0
	sw $t0, -9280($fp)
	li $t0, 49906
	sw $t0, -9284($fp)
	lw $t1, -9284($fp)
	li $t2, 0
	bne $t1, $t2, label325
	j label324
label324:
	li $t0, 1
	sw $t0, -9280($fp)
label325:
	lw $t0, -2072($fp)
	sw $t0, -9288($fp)
	lw $t1, -9280($fp)
	lw $t2, -9288($fp)
	bne $t1, $t2, label322
	j label323
label322:
	li $t0, 1
	sw $t0, -9276($fp)
label323:
	addi $t0, $fp, -356
	sw $t0, -9292($fp)
	lw $t0, -9216($fp)
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
	addi $t0, $fp, -24
	sw $t0, -9312($fp)
	li $t0, 1
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
	addi $sp, $sp, -4
	lw $t0, -9256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9328($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9332($fp)
	addi $sp, $sp, 24
	li $t0, 4174
	sw $t0, -9336($fp)
	li $t0, 39782
	sw $t0, -9340($fp)
	lw $t0, -9336($fp)
	lw $t1, -9340($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9344($fp)
	lw $t0, -4944($fp)
	sw $t0, -9348($fp)
	lw $t0, -9344($fp)
	lw $t1, -9348($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9352($fp)
	lw $t1, -9332($fp)
	lw $t2, -9352($fp)
	beq $t1, $t2, label317
	j label318
label317:
	li $t0, 1
	sw $t0, -9236($fp)
label318:
	li $t0, 30591
	sw $t0, -9356($fp)
	li $t0, 0
	lw $t1, -9356($fp)
	sub $t0, $t0, $t1
	sw $t0, -9360($fp)
	lw $t1, -9360($fp)
	li $t2, 0
	bne $t1, $t2, label326
	j label329
label329:
	li $t0, 0
	sw $t0, -9364($fp)
	li $t0, 56185
	sw $t0, -9368($fp)
	lw $t1, -9368($fp)
	li $t2, 0
	bne $t1, $t2, label331
	j label330
label330:
	li $t0, 1
	sw $t0, -9364($fp)
label331:
	li $t0, 19627
	sw $t0, -9372($fp)
	li $t0, 60030
	sw $t0, -9376($fp)
	lw $t0, -9372($fp)
	lw $t1, -9376($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9380($fp)
	lw $t1, -9364($fp)
	lw $t2, -9380($fp)
	blt $t1, $t2, label326
	j label327
label326:
	lw $t0, -2948($fp)
	sw $t0, -9384($fp)
	addi $t0, $fp, -4596
	sw $t0, -9388($fp)
	lw $t0, -1748($fp)
	sw $t0, -9392($fp)
	lw $t0, -9392($fp)
	sw $t0, -4004($fp)
	lw $t0, -4004($fp)
	sw $t0, -9396($fp)
	li $t0, 4
	lw $t1, -9396($fp)
	mul $t0, $t0, $t1
	sw $t0, -9400($fp)
	lw $t0, -9400($fp)
	lw $t1, -9388($fp)
	add $t0, $t0, $t1
	sw $t0, -9404($fp)
	lw $t0, -9404($fp)
	lw $t1, 0($t0)
	sw $t1, -9408($fp)
	lw $t0, -9384($fp)
	lw $t1, -9408($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9412($fp)
	j label328
label327:
	li $t0, 0
	sw $t0, -9416($fp)
	li $t0, 25509
	sw $t0, -9420($fp)
	li $t0, 64010
	sw $t0, -9424($fp)
	lw $t0, -9420($fp)
	lw $t1, -9424($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9428($fp)
	li $t0, 0
	lw $t1, -9428($fp)
	sub $t0, $t0, $t1
	sw $t0, -9432($fp)
	addi $sp, $sp, -4
	lw $t0, -9432($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9436($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -9440($fp)
	lw $t0, -5124($fp)
	sw $t0, -9444($fp)
	lw $t1, -9444($fp)
	li $t2, 0
	bne $t1, $t2, label335
	j label334
label334:
	li $t0, 1
	sw $t0, -9440($fp)
label335:
	lw $t0, -9436($fp)
	lw $t1, -9440($fp)
	mul $t0, $t0, $t1
	sw $t0, -9448($fp)
	addi $t0, $fp, -316
	sw $t0, -9452($fp)
	lw $t0, -1316($fp)
	sw $t0, -9456($fp)
	li $t0, 4
	lw $t1, -9456($fp)
	mul $t0, $t0, $t1
	sw $t0, -9460($fp)
	lw $t0, -9460($fp)
	lw $t1, -9452($fp)
	add $t0, $t0, $t1
	sw $t0, -9464($fp)
	lw $t0, -9464($fp)
	lw $t1, 0($t0)
	sw $t1, -9468($fp)
	lw $t0, -9448($fp)
	lw $t1, -9468($fp)
	sub $t0, $t0, $t1
	sw $t0, -9472($fp)
	li $t0, 47089
	sw $t0, -9476($fp)
	lw $t0, -9476($fp)
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	sw $t0, -9480($fp)
	li $t0, 0
	sw $t0, -9484($fp)
	addi $t0, $fp, -240
	sw $t0, -9488($fp)
	lw $t0, -1508($fp)
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
	lw $t1, -9504($fp)
	li $t2, 0
	bne $t1, $t2, label336
	j label338
label338:
	lw $t0, -3944($fp)
	sw $t0, -9508($fp)
	lw $t1, -9508($fp)
	li $t2, 0
	bne $t1, $t2, label336
	j label337
label336:
	li $t0, 1
	sw $t0, -9484($fp)
label337:
	lw $t0, -1592($fp)
	sw $t0, -9512($fp)
	lw $t0, -9512($fp)
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	sw $t0, -9516($fp)
	li $t0, 0
	sw $t0, -9520($fp)
	addi $t0, $fp, -396
	sw $t0, -9524($fp)
	li $t0, 4
	sw $t0, -9528($fp)
	li $t0, 4
	lw $t1, -9528($fp)
	mul $t0, $t0, $t1
	sw $t0, -9532($fp)
	lw $t0, -9532($fp)
	lw $t1, -9524($fp)
	add $t0, $t0, $t1
	sw $t0, -9536($fp)
	lw $t0, -9536($fp)
	lw $t1, 0($t0)
	sw $t1, -9540($fp)
	lw $t1, -9540($fp)
	li $t2, 0
	bne $t1, $t2, label339
	j label341
label341:
	lw $t0, -2384($fp)
	sw $t0, -9544($fp)
	lw $t1, -9544($fp)
	li $t2, 0
	bne $t1, $t2, label339
	j label340
label339:
	li $t0, 1
	sw $t0, -9520($fp)
label340:
	li $t0, 0
	sw $t0, -9548($fp)
	addi $t0, $fp, -4568
	sw $t0, -9552($fp)
	lw $t0, -2372($fp)
	sw $t0, -9556($fp)
	li $t0, 4
	lw $t1, -9556($fp)
	mul $t0, $t0, $t1
	sw $t0, -9560($fp)
	lw $t0, -9560($fp)
	lw $t1, -9552($fp)
	add $t0, $t0, $t1
	sw $t0, -9564($fp)
	lw $t0, -9564($fp)
	lw $t1, 0($t0)
	sw $t1, -9568($fp)
	lw $t1, -9568($fp)
	li $t2, 0
	bne $t1, $t2, label344
	j label343
label344:
	li $t0, 49143
	sw $t0, -9572($fp)
	lw $t1, -9572($fp)
	li $t2, 0
	bne $t1, $t2, label342
	j label343
label342:
	li $t0, 1
	sw $t0, -9548($fp)
label343:
	addi $sp, $sp, -4
	lw $t0, -9480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9548($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9576($fp)
	addi $sp, $sp, 24
	lw $t1, -9472($fp)
	lw $t2, -9576($fp)
	blt $t1, $t2, label332
	j label333
label332:
	li $t0, 1
	sw $t0, -9416($fp)
label333:
label328:
	j label303
label302:
	li $t0, 24033
	sw $t0, -9580($fp)
	li $t0, 7048
	sw $t0, -9584($fp)
	li $t0, 48898
	sw $t0, -9588($fp)
	lw $t0, -9584($fp)
	lw $t1, -9588($fp)
	sub $t0, $t0, $t1
	sw $t0, -9592($fp)
	li $t0, 62484
	sw $t0, -9596($fp)
	lw $t0, -9592($fp)
	lw $t1, -9596($fp)
	add $t0, $t0, $t1
	sw $t0, -9600($fp)
	li $t0, 0
	sw $t0, -9604($fp)
	li $t0, 12578
	sw $t0, -9608($fp)
	lw $t0, -2960($fp)
	sw $t0, -9612($fp)
	lw $t0, -9608($fp)
	lw $t1, -9612($fp)
	sub $t0, $t0, $t1
	sw $t0, -9616($fp)
	lw $t1, -9616($fp)
	li $t2, 0
	bne $t1, $t2, label350
	j label349
label350:
	lw $t0, -1724($fp)
	sw $t0, -9620($fp)
	lw $t1, -9620($fp)
	li $t2, 0
	bne $t1, $t2, label348
	j label349
label348:
	li $t0, 1
	sw $t0, -9604($fp)
label349:
	li $t0, 5613
	sw $t0, -9624($fp)
	lw $t0, -3092($fp)
	sw $t0, -9628($fp)
	lw $t0, -9624($fp)
	lw $t1, -9628($fp)
	add $t0, $t0, $t1
	sw $t0, -9632($fp)
	addi $sp, $sp, -4
	lw $t0, -9632($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9636($fp)
	addi $sp, $sp, 8
	lw $t0, -3116($fp)
	sw $t0, -9640($fp)
	lw $t0, -9636($fp)
	lw $t1, -9640($fp)
	add $t0, $t0, $t1
	sw $t0, -9644($fp)
	li $t0, 0
	sw $t0, -9648($fp)
	li $t0, 0
	sw $t0, -9652($fp)
	li $t0, 48841
	sw $t0, -9656($fp)
	lw $t1, -9656($fp)
	li $t2, 0
	bne $t1, $t2, label354
	j label353
label353:
	li $t0, 1
	sw $t0, -9652($fp)
label354:
	li $t0, 20394
	sw $t0, -9660($fp)
	lw $t1, -9652($fp)
	lw $t2, -9660($fp)
	blt $t1, $t2, label351
	j label352
label351:
	li $t0, 1
	sw $t0, -9648($fp)
label352:
	li $t0, 0
	sw $t0, -9664($fp)
	li $t0, 9740
	sw $t0, -9668($fp)
	li $t0, 12962
	sw $t0, -9672($fp)
	lw $t0, -9668($fp)
	lw $t1, -9672($fp)
	sub $t0, $t0, $t1
	sw $t0, -9676($fp)
	lw $t1, -9676($fp)
	li $t2, 0
	bne $t1, $t2, label355
	j label357
label357:
	li $t0, 34282
	sw $t0, -9680($fp)
	lw $t1, -9680($fp)
	li $t2, 0
	bne $t1, $t2, label355
	j label356
label355:
	li $t0, 1
	sw $t0, -9664($fp)
label356:
	li $t0, 0
	sw $t0, -9684($fp)
	lw $t0, -5424($fp)
	sw $t0, -9688($fp)
	lw $t0, -3104($fp)
	sw $t0, -9692($fp)
	lw $t1, -9688($fp)
	lw $t2, -9692($fp)
	beq $t1, $t2, label358
	j label360
label360:
	li $t0, 42195
	sw $t0, -9696($fp)
	lw $t1, -9696($fp)
	li $t2, 0
	bne $t1, $t2, label358
	j label359
label358:
	li $t0, 1
	sw $t0, -9684($fp)
label359:
	li $t0, 0
	sw $t0, -9700($fp)
	addi $t0, $fp, -4628
	sw $t0, -9704($fp)
	li $t0, 1
	sw $t0, -9708($fp)
	li $t0, 4
	lw $t1, -9708($fp)
	mul $t0, $t0, $t1
	sw $t0, -9712($fp)
	lw $t0, -9712($fp)
	lw $t1, -9704($fp)
	add $t0, $t0, $t1
	sw $t0, -9716($fp)
	lw $t0, -9716($fp)
	lw $t1, 0($t0)
	sw $t1, -9720($fp)
	lw $t1, -9720($fp)
	li $t2, 0
	bne $t1, $t2, label361
	j label363
label363:
	lw $t0, -3980($fp)
	sw $t0, -9724($fp)
	lw $t1, -9724($fp)
	li $t2, 0
	bne $t1, $t2, label361
	j label362
label361:
	li $t0, 1
	sw $t0, -9700($fp)
label362:
	li $t0, 0
	sw $t0, -9728($fp)
	li $t0, 0
	sw $t0, -9732($fp)
	li $t0, 21750
	sw $t0, -9736($fp)
	lw $t1, -9736($fp)
	li $t2, 0
	bne $t1, $t2, label367
	j label366
label366:
	li $t0, 1
	sw $t0, -9732($fp)
label367:
	li $t0, 21623
	sw $t0, -9740($fp)
	lw $t1, -9732($fp)
	lw $t2, -9740($fp)
	blt $t1, $t2, label364
	j label365
label364:
	li $t0, 1
	sw $t0, -9728($fp)
label365:
	lw $t0, 4($fp)
	sw $t0, -9744($fp)
	addi $sp, $sp, -4
	lw $t0, -9664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9744($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9748($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -9748($fp)
	sub $t0, $t0, $t1
	sw $t0, -9752($fp)
	addi $sp, $sp, -4
	lw $t0, -9752($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9756($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -9600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9756($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9760($fp)
	addi $sp, $sp, 24
	lw $t0, -9580($fp)
	lw $t1, -9760($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9764($fp)
	li $t0, 0
	lw $t1, -9764($fp)
	sub $t0, $t0, $t1
	sw $t0, -9768($fp)
	lw $t1, -9768($fp)
	li $t2, 0
	bne $t1, $t2, label345
	j label346
label345:
label368:
	lw $t0, -4004($fp)
	sw $t0, -9772($fp)
	li $t0, 0
	sw $t0, -9776($fp)
	li $t0, 0
	sw $t0, -9780($fp)
	li $t0, 42048
	sw $t0, -9784($fp)
	lw $t1, -9784($fp)
	li $t2, 0
	bne $t1, $t2, label374
	j label373
label373:
	li $t0, 1
	sw $t0, -9780($fp)
label374:
	li $t0, 0
	lw $t1, -9780($fp)
	sub $t0, $t0, $t1
	sw $t0, -9788($fp)
	lw $t1, -9788($fp)
	li $t2, 0
	bne $t1, $t2, label372
	j label371
label371:
	li $t0, 1
	sw $t0, -9776($fp)
label372:
	lw $t0, -9772($fp)
	lw $t1, -9776($fp)
	sub $t0, $t0, $t1
	sw $t0, -9792($fp)
	lw $t1, -9792($fp)
	li $t2, 0
	bne $t1, $t2, label369
	j label370
label369:
	li $t0, 53132
	sw $t0, -9796($fp)
	li $t0, 64543
	sw $t0, -9800($fp)
	lw $t0, -9796($fp)
	lw $t1, -9800($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9804($fp)
	li $t0, 0
	lw $t1, -9804($fp)
	sub $t0, $t0, $t1
	sw $t0, -9808($fp)
	li $t0, 0
	lw $t1, -9808($fp)
	sub $t0, $t0, $t1
	sw $t0, -9812($fp)
	li $t0, 0
	lw $t1, -9812($fp)
	sub $t0, $t0, $t1
	sw $t0, -9816($fp)
	addi $t0, $fp, -4660
	sw $t0, -9820($fp)
	li $t0, 2
	sw $t0, -9824($fp)
	li $t0, 4
	lw $t1, -9824($fp)
	mul $t0, $t0, $t1
	sw $t0, -9828($fp)
	lw $t0, -9828($fp)
	lw $t1, -9820($fp)
	add $t0, $t0, $t1
	sw $t0, -9832($fp)
	lw $t0, -9832($fp)
	lw $t1, 0($t0)
	sw $t1, -9836($fp)
	lw $t0, -3128($fp)
	sw $t0, -9840($fp)
	li $t0, 0
	lw $t1, -9840($fp)
	sub $t0, $t0, $t1
	sw $t0, -9844($fp)
	lw $t0, -9836($fp)
	lw $t1, -9844($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9848($fp)
	lw $t1, -9816($fp)
	lw $t2, -9848($fp)
	bne $t1, $t2, label375
	j label376
label375:
	lw $t0, -1784($fp)
	sw $t0, -9852($fp)
	j label377
label376:
	li $t0, 0
	sw $t0, -9856($fp)
	lw $t0, -2900($fp)
	sw $t0, -9860($fp)
	lw $t0, -1316($fp)
	sw $t0, -9864($fp)
	lw $t1, -9860($fp)
	lw $t2, -9864($fp)
	bgt $t1, $t2, label378
	j label379
label378:
	li $t0, 1
	sw $t0, -9856($fp)
label379:
label377:
	j label368
label370:
	j label347
label346:
	addi $t0, $fp, -4660
	sw $t0, -9868($fp)
	li $t0, 0
	sw $t0, -9872($fp)
	addi $t0, $fp, -240
	sw $t0, -9876($fp)
	lw $t0, -2912($fp)
	sw $t0, -9880($fp)
	li $t0, 4
	lw $t1, -9880($fp)
	mul $t0, $t0, $t1
	sw $t0, -9884($fp)
	lw $t0, -9884($fp)
	lw $t1, -9876($fp)
	add $t0, $t0, $t1
	sw $t0, -9888($fp)
	lw $t0, -9888($fp)
	lw $t1, 0($t0)
	sw $t1, -9892($fp)
	lw $t1, -9892($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label381
label382:
	li $t0, 29598
	sw $t0, -9896($fp)
	lw $t1, -9896($fp)
	li $t2, 0
	bne $t1, $t2, label381
	j label380
label380:
	li $t0, 1
	sw $t0, -9872($fp)
label381:
	li $t0, 4
	lw $t1, -9872($fp)
	mul $t0, $t0, $t1
	sw $t0, -9900($fp)
	lw $t0, -9900($fp)
	lw $t1, -9868($fp)
	add $t0, $t0, $t1
	sw $t0, -9904($fp)
	lw $t0, -9904($fp)
	lw $t1, 0($t0)
	sw $t1, -9908($fp)
	addi $t0, $fp, -132
	sw $t0, -9912($fp)
	li $t0, 36872
	sw $t0, -9916($fp)
	lw $t0, -596($fp)
	sw $t0, -9920($fp)
	lw $t0, -9916($fp)
	lw $t1, -9920($fp)
	mul $t0, $t0, $t1
	sw $t0, -9924($fp)
	li $t0, 4
	lw $t1, -9924($fp)
	mul $t0, $t0, $t1
	sw $t0, -9928($fp)
	lw $t0, -9928($fp)
	lw $t1, -9912($fp)
	add $t0, $t0, $t1
	sw $t0, -9932($fp)
	lw $t0, -9932($fp)
	lw $t1, 0($t0)
	sw $t1, -9936($fp)
	li $t0, 0
	sw $t0, -9940($fp)
	addi $t0, $fp, -316
	sw $t0, -9944($fp)
	lw $t0, -3236($fp)
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
	lw $t1, -9960($fp)
	li $t2, 0
	bne $t1, $t2, label384
	j label383
label383:
	li $t0, 1
	sw $t0, -9940($fp)
label384:
	lw $t0, -9936($fp)
	lw $t1, -9940($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9964($fp)
	lw $t0, -2348($fp)
	sw $t0, -9968($fp)
	lw $t0, -9964($fp)
	lw $t1, -9968($fp)
	mul $t0, $t0, $t1
	sw $t0, -9972($fp)
label347:
label303:
label249:
label385:
	addi $t0, $fp, -356
	sw $t0, -9976($fp)
	li $t0, 0
	sw $t0, -9980($fp)
	lw $t0, -2864($fp)
	sw $t0, -9984($fp)
	li $t0, 47005
	sw $t0, -9988($fp)
	lw $t0, -9984($fp)
	lw $t1, -9988($fp)
	mul $t0, $t0, $t1
	sw $t0, -9992($fp)
	li $t0, 24093
	sw $t0, -9996($fp)
	lw $t1, -9992($fp)
	lw $t2, -9996($fp)
	ble $t1, $t2, label390
	j label389
label390:
	li $t0, 62381
	sw $t0, -10000($fp)
	lw $t1, -10000($fp)
	li $t2, 0
	bne $t1, $t2, label388
	j label389
label388:
	li $t0, 1
	sw $t0, -9980($fp)
label389:
	li $t0, 4
	lw $t1, -9980($fp)
	mul $t0, $t0, $t1
	sw $t0, -10004($fp)
	lw $t0, -10004($fp)
	lw $t1, -9976($fp)
	add $t0, $t0, $t1
	sw $t0, -10008($fp)
	lw $t0, -10008($fp)
	lw $t1, 0($t0)
	sw $t1, -10012($fp)
	lw $t1, -10012($fp)
	li $t2, 0
	bne $t1, $t2, label386
	j label387
label386:
	li $t0, 45480
	sw $t0, -10052($fp)
	lw $t0, -10052($fp)
	sw $t0, -10056($fp)
	lw $t0, -10056($fp)
	sw $t0, -10060($fp)
	li $t0, 7700
	sw $t0, -10064($fp)
	lw $t0, -10064($fp)
	sw $t0, -10068($fp)
	lw $t0, -10068($fp)
	sw $t0, -10072($fp)
	li $t0, 51431
	sw $t0, -10076($fp)
	lw $t0, -10076($fp)
	sw $t0, -10080($fp)
	lw $t0, -10080($fp)
	sw $t0, -10084($fp)
	li $t0, 4816
	sw $t0, -10088($fp)
	lw $t0, -10088($fp)
	sw $t0, -10092($fp)
	lw $t0, -10092($fp)
	sw $t0, -10096($fp)
	li $t0, 54790
	sw $t0, -10100($fp)
	lw $t0, -10100($fp)
	sw $t0, -10104($fp)
	lw $t0, -10104($fp)
	sw $t0, -10108($fp)
	li $t0, 9928
	sw $t0, -10112($fp)
	lw $t0, -10112($fp)
	sw $t0, -10116($fp)
	lw $t0, -10116($fp)
	sw $t0, -10120($fp)
	li $t0, 26566
	sw $t0, -10124($fp)
	lw $t0, -10124($fp)
	sw $t0, -10128($fp)
	lw $t0, -10128($fp)
	sw $t0, -10132($fp)
	li $t0, 10877
	sw $t0, -10136($fp)
	addi $t0, $fp, -10032
	sw $t0, -10140($fp)
	li $t0, 0
	sw $t0, -10144($fp)
	lw $t0, -10144($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10148($fp)
	lw $t0, -10140($fp)
	lw $t1, -10148($fp)
	add $t0, $t0, $t1
	sw $t0, -10152($fp)
	lw $t0, -10136($fp)
	lw $t1, -10152($fp)
	sw $t0, 0($t1)
	lw $t0, -10152($fp)
	lw $t1, 0($t0)
	sw $t1, -10156($fp)
	li $t0, 62940
	sw $t0, -10160($fp)
	addi $t0, $fp, -10032
	sw $t0, -10164($fp)
	li $t0, 1
	sw $t0, -10168($fp)
	lw $t0, -10168($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10172($fp)
	lw $t0, -10164($fp)
	lw $t1, -10172($fp)
	add $t0, $t0, $t1
	sw $t0, -10176($fp)
	lw $t0, -10160($fp)
	lw $t1, -10176($fp)
	sw $t0, 0($t1)
	lw $t0, -10176($fp)
	lw $t1, 0($t0)
	sw $t1, -10180($fp)
	li $t0, 16767
	sw $t0, -10184($fp)
	addi $t0, $fp, -10032
	sw $t0, -10188($fp)
	li $t0, 2
	sw $t0, -10192($fp)
	lw $t0, -10192($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10196($fp)
	lw $t0, -10188($fp)
	lw $t1, -10196($fp)
	add $t0, $t0, $t1
	sw $t0, -10200($fp)
	lw $t0, -10184($fp)
	lw $t1, -10200($fp)
	sw $t0, 0($t1)
	lw $t0, -10200($fp)
	lw $t1, 0($t0)
	sw $t1, -10204($fp)
	li $t0, 53072
	sw $t0, -10208($fp)
	addi $t0, $fp, -10032
	sw $t0, -10212($fp)
	li $t0, 3
	sw $t0, -10216($fp)
	lw $t0, -10216($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10220($fp)
	lw $t0, -10212($fp)
	lw $t1, -10220($fp)
	add $t0, $t0, $t1
	sw $t0, -10224($fp)
	lw $t0, -10208($fp)
	lw $t1, -10224($fp)
	sw $t0, 0($t1)
	lw $t0, -10224($fp)
	lw $t1, 0($t0)
	sw $t1, -10228($fp)
	li $t0, 7144
	sw $t0, -10232($fp)
	addi $t0, $fp, -10032
	sw $t0, -10236($fp)
	li $t0, 4
	sw $t0, -10240($fp)
	lw $t0, -10240($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10244($fp)
	lw $t0, -10236($fp)
	lw $t1, -10244($fp)
	add $t0, $t0, $t1
	sw $t0, -10248($fp)
	lw $t0, -10232($fp)
	lw $t1, -10248($fp)
	sw $t0, 0($t1)
	lw $t0, -10248($fp)
	lw $t1, 0($t0)
	sw $t1, -10252($fp)
	li $t0, 29730
	sw $t0, -10256($fp)
	lw $t0, -10256($fp)
	sw $t0, -10260($fp)
	lw $t0, -10260($fp)
	sw $t0, -10264($fp)
	li $t0, 21818
	sw $t0, -10268($fp)
	lw $t0, -10268($fp)
	sw $t0, -10272($fp)
	lw $t0, -10272($fp)
	sw $t0, -10276($fp)
	li $t0, 55985
	sw $t0, -10280($fp)
	addi $t0, $fp, -10048
	sw $t0, -10284($fp)
	li $t0, 0
	sw $t0, -10288($fp)
	lw $t0, -10288($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10292($fp)
	lw $t0, -10284($fp)
	lw $t1, -10292($fp)
	add $t0, $t0, $t1
	sw $t0, -10296($fp)
	lw $t0, -10280($fp)
	lw $t1, -10296($fp)
	sw $t0, 0($t1)
	lw $t0, -10296($fp)
	lw $t1, 0($t0)
	sw $t1, -10300($fp)
	li $t0, 50124
	sw $t0, -10304($fp)
	addi $t0, $fp, -10048
	sw $t0, -10308($fp)
	li $t0, 1
	sw $t0, -10312($fp)
	lw $t0, -10312($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10316($fp)
	lw $t0, -10308($fp)
	lw $t1, -10316($fp)
	add $t0, $t0, $t1
	sw $t0, -10320($fp)
	lw $t0, -10304($fp)
	lw $t1, -10320($fp)
	sw $t0, 0($t1)
	lw $t0, -10320($fp)
	lw $t1, 0($t0)
	sw $t1, -10324($fp)
	li $t0, 27431
	sw $t0, -10328($fp)
	addi $t0, $fp, -10048
	sw $t0, -10332($fp)
	li $t0, 2
	sw $t0, -10336($fp)
	lw $t0, -10336($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10340($fp)
	lw $t0, -10332($fp)
	lw $t1, -10340($fp)
	add $t0, $t0, $t1
	sw $t0, -10344($fp)
	lw $t0, -10328($fp)
	lw $t1, -10344($fp)
	sw $t0, 0($t1)
	lw $t0, -10344($fp)
	lw $t1, 0($t0)
	sw $t1, -10348($fp)
	li $t0, 3027
	sw $t0, -10352($fp)
	addi $t0, $fp, -10048
	sw $t0, -10356($fp)
	li $t0, 3
	sw $t0, -10360($fp)
	lw $t0, -10360($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10364($fp)
	lw $t0, -10356($fp)
	lw $t1, -10364($fp)
	add $t0, $t0, $t1
	sw $t0, -10368($fp)
	lw $t0, -10352($fp)
	lw $t1, -10368($fp)
	sw $t0, 0($t1)
	lw $t0, -10368($fp)
	lw $t1, 0($t0)
	sw $t1, -10372($fp)
	li $t0, 57172
	sw $t0, -10376($fp)
	lw $t0, -10376($fp)
	sw $t0, -10380($fp)
	lw $t0, -10380($fp)
	sw $t0, -10384($fp)
	li $t0, 10793
	sw $t0, -10388($fp)
	lw $t0, -10388($fp)
	sw $t0, -10392($fp)
	lw $t0, -10392($fp)
	sw $t0, -10396($fp)
label391:
	li $t0, 0
	sw $t0, -10400($fp)
	li $t0, 65512
	sw $t0, -10404($fp)
	li $t0, 0
	lw $t1, -10404($fp)
	sub $t0, $t0, $t1
	sw $t0, -10408($fp)
	li $t0, 0
	lw $t1, -10408($fp)
	sub $t0, $t0, $t1
	sw $t0, -10412($fp)
	lw $t1, -10412($fp)
	li $t2, 0
	bne $t1, $t2, label395
	j label394
label394:
	li $t0, 1
	sw $t0, -10400($fp)
label395:
	lw $t0, -10400($fp)
	sw $t0, -2864($fp)
	lw $t0, -2864($fp)
	sw $t0, -10416($fp)
	lw $t1, -10416($fp)
	li $t2, 0
	bne $t1, $t2, label392
	j label393
label392:
	li $t0, 7238
	sw $t0, -10420($fp)
	lw $t0, -10420($fp)
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	sw $t0, -10424($fp)
	li $t0, 0
	sw $t0, -10428($fp)
	li $t0, 25768
	sw $t0, -10432($fp)
	li $t0, 28581
	sw $t0, -10436($fp)
	lw $t1, -10432($fp)
	lw $t2, -10436($fp)
	ble $t1, $t2, label398
	j label397
label398:
	li $t0, 51243
	sw $t0, -10440($fp)
	lw $t1, -10440($fp)
	li $t2, 0
	bne $t1, $t2, label396
	j label397
label396:
	li $t0, 1
	sw $t0, -10428($fp)
label397:
	addi $t0, $fp, -396
	sw $t0, -10444($fp)
	lw $t0, -4944($fp)
	sw $t0, -10448($fp)
	li $t0, 4
	lw $t1, -10448($fp)
	mul $t0, $t0, $t1
	sw $t0, -10452($fp)
	lw $t0, -10452($fp)
	lw $t1, -10444($fp)
	add $t0, $t0, $t1
	sw $t0, -10456($fp)
	lw $t0, -10456($fp)
	lw $t1, 0($t0)
	sw $t1, -10460($fp)
	addi $t0, $fp, -240
	sw $t0, -10464($fp)
	li $t0, 5
	sw $t0, -10468($fp)
	li $t0, 4
	lw $t1, -10468($fp)
	mul $t0, $t0, $t1
	sw $t0, -10472($fp)
	lw $t0, -10472($fp)
	lw $t1, -10464($fp)
	add $t0, $t0, $t1
	sw $t0, -10476($fp)
	lw $t0, -10476($fp)
	lw $t1, 0($t0)
	sw $t1, -10480($fp)
	li $t0, 0
	sw $t0, -10484($fp)
	li $t0, 33685
	sw $t0, -10488($fp)
	li $t0, 63926
	sw $t0, -10492($fp)
	lw $t1, -10488($fp)
	lw $t2, -10492($fp)
	bge $t1, $t2, label399
	j label400
label399:
	li $t0, 1
	sw $t0, -10484($fp)
label400:
	addi $sp, $sp, -4
	lw $t0, -10424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10484($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10496($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -10500($fp)
	li $t0, 0
	sw $t0, -10504($fp)
	li $t0, 0
	sw $t0, -10508($fp)
	lw $t0, -10104($fp)
	sw $t0, -10512($fp)
	lw $t0, -10116($fp)
	sw $t0, -10516($fp)
	lw $t1, -10512($fp)
	lw $t2, -10516($fp)
	ble $t1, $t2, label405
	j label406
label405:
	li $t0, 1
	sw $t0, -10508($fp)
label406:
	lw $t0, -1640($fp)
	sw $t0, -10520($fp)
	lw $t1, -10508($fp)
	lw $t2, -10520($fp)
	bge $t1, $t2, label403
	j label404
label403:
	li $t0, 1
	sw $t0, -10504($fp)
label404:
	addi $sp, $sp, -4
	lw $t0, -10504($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -10524($fp)
	addi $sp, $sp, 8
	lw $t1, -10524($fp)
	li $t2, 0
	bne $t1, $t2, label402
	j label401
label401:
	li $t0, 1
	sw $t0, -10500($fp)
label402:
	li $t0, 0
	lw $t1, -10500($fp)
	sub $t0, $t0, $t1
	sw $t0, -10528($fp)
	lw $t0, -10496($fp)
	lw $t1, -10528($fp)
	mul $t0, $t0, $t1
	sw $t0, -10532($fp)
	lw $ra, -4($fp)
	lw $v0, -10532($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label391
label393:
	li $t0, 0
	sw $t0, -10536($fp)
	li $t0, 35332
	sw $t0, -10540($fp)
	lw $t0, -1784($fp)
	sw $t0, -10544($fp)
	lw $t1, -10540($fp)
	lw $t2, -10544($fp)
	bne $t1, $t2, label412
	j label411
label412:
	lw $t0, -10260($fp)
	sw $t0, -10548($fp)
	lw $t1, -10548($fp)
	li $t2, 0
	bne $t1, $t2, label410
	j label411
label410:
	li $t0, 1
	sw $t0, -10536($fp)
label411:
	li $t0, 0
	sw $t0, -10552($fp)
	li $t0, 60506
	sw $t0, -10556($fp)
	lw $t1, -10556($fp)
	li $t2, 0
	bne $t1, $t2, label415
	j label414
label415:
	li $t0, 41316
	sw $t0, -10560($fp)
	lw $t1, -10560($fp)
	li $t2, 0
	bne $t1, $t2, label413
	j label414
label413:
	li $t0, 1
	sw $t0, -10552($fp)
label414:
	li $t0, 18565
	sw $t0, -10564($fp)
	lw $t0, -1700($fp)
	sw $t0, -10568($fp)
	lw $t0, -10564($fp)
	lw $t1, -10568($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10572($fp)
	lw $t0, -1652($fp)
	sw $t0, -10576($fp)
	lw $t0, -10572($fp)
	lw $t1, -10576($fp)
	add $t0, $t0, $t1
	sw $t0, -10580($fp)
	addi $t0, $fp, -240
	sw $t0, -10584($fp)
	li $t0, 8
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
	li $t0, 43912
	sw $t0, -10604($fp)
	lw $t0, -10600($fp)
	lw $t1, -10604($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10608($fp)
	li $t0, 0
	sw $t0, -10612($fp)
	lw $t0, -1496($fp)
	sw $t0, -10616($fp)
	li $t0, 0
	lw $t1, -10616($fp)
	sub $t0, $t0, $t1
	sw $t0, -10620($fp)
	addi $t0, $fp, -10032
	sw $t0, -10624($fp)
	lw $t0, -1640($fp)
	sw $t0, -10628($fp)
	li $t0, 4
	lw $t1, -10628($fp)
	mul $t0, $t0, $t1
	sw $t0, -10632($fp)
	lw $t0, -10632($fp)
	lw $t1, -10624($fp)
	add $t0, $t0, $t1
	sw $t0, -10636($fp)
	lw $t0, -10636($fp)
	lw $t1, 0($t0)
	sw $t1, -10640($fp)
	addi $sp, $sp, -4
	lw $t0, -10640($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -10644($fp)
	addi $sp, $sp, 8
	li $t0, 60375
	sw $t0, -10648($fp)
	lw $t0, -10644($fp)
	lw $t1, -10648($fp)
	sub $t0, $t0, $t1
	sw $t0, -10652($fp)
	li $t0, 0
	sw $t0, -10656($fp)
	li $t0, 52718
	sw $t0, -10660($fp)
	lw $t1, -10660($fp)
	li $t2, 0
	bne $t1, $t2, label419
	j label422
label422:
	lw $t0, -3908($fp)
	sw $t0, -10664($fp)
	lw $t1, -10664($fp)
	li $t2, 0
	bne $t1, $t2, label419
	j label421
label421:
	lw $t0, -2060($fp)
	sw $t0, -10668($fp)
	lw $t1, -10668($fp)
	li $t2, 0
	bne $t1, $t2, label419
	j label420
label419:
	li $t0, 1
	sw $t0, -10656($fp)
label420:
	li $t0, 0
	sw $t0, -10672($fp)
	li $t0, 48088
	sw $t0, -10676($fp)
	lw $t0, -10128($fp)
	sw $t0, -10680($fp)
	lw $t1, -10676($fp)
	lw $t2, -10680($fp)
	beq $t1, $t2, label425
	j label424
label425:
	lw $t0, -1616($fp)
	sw $t0, -10684($fp)
	lw $t1, -10684($fp)
	li $t2, 0
	bne $t1, $t2, label423
	j label424
label423:
	li $t0, 1
	sw $t0, -10672($fp)
label424:
	lw $t0, -560($fp)
	sw $t0, -10688($fp)
	li $t0, 52674
	sw $t0, -10692($fp)
	lw $t0, -10688($fp)
	lw $t1, -10692($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10696($fp)
	addi $sp, $sp, -4
	lw $t0, -10620($fp)
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
	addi $sp, $sp, -4
	lw $t0, -10696($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10700($fp)
	addi $sp, $sp, 24
	lw $t1, -10700($fp)
	li $t2, 0
	bne $t1, $t2, label416
	j label418
label418:
	li $t0, 33983
	sw $t0, -10704($fp)
	lw $t1, -10704($fp)
	li $t2, 0
	bne $t1, $t2, label416
	j label417
label416:
	li $t0, 1
	sw $t0, -10612($fp)
label417:
	addi $sp, $sp, -4
	lw $t0, -10536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10612($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10708($fp)
	addi $sp, $sp, 24
	lw $t1, -10708($fp)
	li $t2, 0
	bne $t1, $t2, label407
	j label408
label407:
	li $t0, 0
	sw $t0, -10712($fp)
	li $t0, 0
	sw $t0, -10716($fp)
	addi $t0, $fp, -10048
	sw $t0, -10720($fp)
	lw $t0, -1664($fp)
	sw $t0, -10724($fp)
	li $t0, 4
	lw $t1, -10724($fp)
	mul $t0, $t0, $t1
	sw $t0, -10728($fp)
	lw $t0, -10728($fp)
	lw $t1, -10720($fp)
	add $t0, $t0, $t1
	sw $t0, -10732($fp)
	lw $t0, -10732($fp)
	lw $t1, 0($t0)
	sw $t1, -10736($fp)
	lw $t1, -10736($fp)
	li $t2, 0
	bne $t1, $t2, label430
	j label429
label430:
	li $t0, 41937
	sw $t0, -10740($fp)
	lw $t1, -10740($fp)
	li $t2, 0
	bne $t1, $t2, label428
	j label429
label428:
	li $t0, 1
	sw $t0, -10716($fp)
label429:
	addi $sp, $sp, -4
	lw $t0, -10716($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -10744($fp)
	addi $sp, $sp, 8
	li $t0, 41287
	sw $t0, -10748($fp)
	lw $t1, -10744($fp)
	lw $t2, -10748($fp)
	beq $t1, $t2, label426
	j label427
label426:
	li $t0, 1
	sw $t0, -10712($fp)
label427:
	li $t0, 31755
	sw $t0, -10752($fp)
	lw $t0, -10752($fp)
	sw $t0, -10272($fp)
	lw $t0, -10272($fp)
	sw $t0, -10756($fp)
	li $t0, 0
	sw $t0, -10760($fp)
	li $t0, 4324
	sw $t0, -10764($fp)
	li $t0, 38909
	sw $t0, -10768($fp)
	lw $t1, -10764($fp)
	lw $t2, -10768($fp)
	bne $t1, $t2, label433
	j label432
label433:
	li $t0, 49651
	sw $t0, -10772($fp)
	lw $t1, -10772($fp)
	li $t2, 0
	bne $t1, $t2, label431
	j label432
label431:
	li $t0, 1
	sw $t0, -10760($fp)
label432:
	li $t0, 0
	sw $t0, -10776($fp)
	li $t0, 0
	sw $t0, -10780($fp)
	li $t0, 48460
	sw $t0, -10784($fp)
	li $t0, 65062
	sw $t0, -10788($fp)
	lw $t1, -10784($fp)
	lw $t2, -10788($fp)
	bgt $t1, $t2, label436
	j label437
label436:
	li $t0, 1
	sw $t0, -10780($fp)
label437:
	lw $t0, -692($fp)
	sw $t0, -10792($fp)
	lw $t1, -10780($fp)
	lw $t2, -10792($fp)
	ble $t1, $t2, label434
	j label435
label434:
	li $t0, 1
	sw $t0, -10776($fp)
label435:
	li $t0, 48042
	sw $t0, -10796($fp)
	lw $t0, -10796($fp)
	sw $t0, -2924($fp)
	lw $t0, -2924($fp)
	sw $t0, -10800($fp)
	addi $sp, $sp, -4
	lw $t0, -10712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10800($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10804($fp)
	addi $sp, $sp, 24
	lw $ra, -4($fp)
	lw $v0, -10804($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label409
label408:
label438:
	li $t0, 0
	sw $t0, -10808($fp)
	addi $t0, $fp, -424
	sw $t0, -10812($fp)
	lw $t0, -3092($fp)
	sw $t0, -10816($fp)
	lw $t0, -10380($fp)
	sw $t0, -10820($fp)
	lw $t0, -10816($fp)
	lw $t1, -10820($fp)
	add $t0, $t0, $t1
	sw $t0, -10824($fp)
	li $t0, 4
	lw $t1, -10824($fp)
	mul $t0, $t0, $t1
	sw $t0, -10828($fp)
	lw $t0, -10828($fp)
	lw $t1, -10812($fp)
	add $t0, $t0, $t1
	sw $t0, -10832($fp)
	lw $t0, -10832($fp)
	lw $t1, 0($t0)
	sw $t1, -10836($fp)
	li $t0, 42548
	sw $t0, -10840($fp)
	lw $t1, -10836($fp)
	lw $t2, -10840($fp)
	bgt $t1, $t2, label441
	j label442
label441:
	li $t0, 1
	sw $t0, -10808($fp)
label442:
	li $t0, 41913
	sw $t0, -10844($fp)
	lw $t1, -10808($fp)
	lw $t2, -10844($fp)
	bgt $t1, $t2, label439
	j label440
label439:
	lw $t0, -1664($fp)
	sw $t0, -10848($fp)
	li $t0, 0
	sw $t0, -10852($fp)
	lw $t0, -10068($fp)
	sw $t0, -10856($fp)
	lw $t1, -10856($fp)
	li $t2, 0
	bne $t1, $t2, label446
	j label449
label449:
	lw $t0, -2072($fp)
	sw $t0, -10860($fp)
	lw $t1, -10860($fp)
	li $t2, 0
	bne $t1, $t2, label446
	j label448
label448:
	lw $t0, -10080($fp)
	sw $t0, -10864($fp)
	lw $t1, -10864($fp)
	li $t2, 0
	bne $t1, $t2, label446
	j label447
label446:
	li $t0, 1
	sw $t0, -10852($fp)
label447:
	lw $t0, -1808($fp)
	sw $t0, -10868($fp)
	lw $t0, -2900($fp)
	sw $t0, -10872($fp)
	lw $t0, -10868($fp)
	lw $t1, -10872($fp)
	sub $t0, $t0, $t1
	sw $t0, -10876($fp)
	addi $t0, $fp, -12
	sw $t0, -10880($fp)
	lw $t0, -1676($fp)
	sw $t0, -10884($fp)
	li $t0, 4
	lw $t1, -10884($fp)
	mul $t0, $t0, $t1
	sw $t0, -10888($fp)
	lw $t0, -10888($fp)
	lw $t1, -10880($fp)
	add $t0, $t0, $t1
	sw $t0, -10892($fp)
	lw $t0, -10892($fp)
	lw $t1, 0($t0)
	sw $t1, -10896($fp)
	li $t0, 57604
	sw $t0, -10900($fp)
	lw $t0, -10896($fp)
	lw $t1, -10900($fp)
	add $t0, $t0, $t1
	sw $t0, -10904($fp)
	li $t0, 56616
	sw $t0, -10908($fp)
	lw $t0, -10908($fp)
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	sw $t0, -10912($fp)
	li $t0, 0
	sw $t0, -10916($fp)
	lw $t0, -10056($fp)
	sw $t0, -10920($fp)
	li $t0, 9515
	sw $t0, -10924($fp)
	lw $t0, -10920($fp)
	lw $t1, -10924($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10928($fp)
	lw $t1, -10928($fp)
	li $t2, 0
	bne $t1, $t2, label452
	j label451
label452:
	li $t0, 8409
	sw $t0, -10932($fp)
	lw $t1, -10932($fp)
	li $t2, 0
	bne $t1, $t2, label450
	j label451
label450:
	li $t0, 1
	sw $t0, -10916($fp)
label451:
	li $t0, 0
	sw $t0, -10936($fp)
	lw $t0, 4($fp)
	sw $t0, -10940($fp)
	li $t0, 1171
	sw $t0, -10944($fp)
	lw $t0, -10940($fp)
	lw $t1, -10944($fp)
	sub $t0, $t0, $t1
	sw $t0, -10948($fp)
	lw $t1, -10948($fp)
	li $t2, 0
	bne $t1, $t2, label455
	j label454
label455:
	li $t0, 3941
	sw $t0, -10952($fp)
	lw $t1, -10952($fp)
	li $t2, 0
	bne $t1, $t2, label453
	j label454
label453:
	li $t0, 1
	sw $t0, -10936($fp)
label454:
	li $t0, 23808
	sw $t0, -10956($fp)
	lw $t0, -1676($fp)
	sw $t0, -10960($fp)
	lw $t0, -10956($fp)
	lw $t1, -10960($fp)
	sub $t0, $t0, $t1
	sw $t0, -10964($fp)
	li $t0, 0
	sw $t0, -10968($fp)
	li $t0, 40896
	sw $t0, -10972($fp)
	lw $t1, -10972($fp)
	li $t2, 0
	bne $t1, $t2, label456
	j label458
label458:
	lw $t0, -10392($fp)
	sw $t0, -10976($fp)
	lw $t1, -10976($fp)
	li $t2, 0
	bne $t1, $t2, label456
	j label457
label456:
	li $t0, 1
	sw $t0, -10968($fp)
label457:
	addi $sp, $sp, -4
	lw $t0, -10912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10968($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10980($fp)
	addi $sp, $sp, 24
	li $t0, 9436
	sw $t0, -10984($fp)
	li $t0, 0
	lw $t1, -10984($fp)
	sub $t0, $t0, $t1
	sw $t0, -10988($fp)
	li $t0, 40938
	sw $t0, -10992($fp)
	lw $t0, -10988($fp)
	lw $t1, -10992($fp)
	add $t0, $t0, $t1
	sw $t0, -10996($fp)
	addi $sp, $sp, -4
	lw $t0, -10852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10996($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11000($fp)
	addi $sp, $sp, 24
	lw $t0, -10848($fp)
	lw $t1, -11000($fp)
	mul $t0, $t0, $t1
	sw $t0, -11004($fp)
	addi $t0, $fp, -132
	sw $t0, -11008($fp)
	li $t0, 0
	sw $t0, -11012($fp)
	li $t0, 4
	lw $t1, -11012($fp)
	mul $t0, $t0, $t1
	sw $t0, -11016($fp)
	lw $t0, -11016($fp)
	lw $t1, -11008($fp)
	add $t0, $t0, $t1
	sw $t0, -11020($fp)
	lw $t0, -11020($fp)
	lw $t1, 0($t0)
	sw $t1, -11024($fp)
	li $t0, 0
	lw $t1, -11024($fp)
	sub $t0, $t0, $t1
	sw $t0, -11028($fp)
	addi $t0, $fp, -4660
	sw $t0, -11032($fp)
	li $t0, 5
	sw $t0, -11036($fp)
	li $t0, 4
	lw $t1, -11036($fp)
	mul $t0, $t0, $t1
	sw $t0, -11040($fp)
	lw $t0, -11040($fp)
	lw $t1, -11032($fp)
	add $t0, $t0, $t1
	sw $t0, -11044($fp)
	lw $t0, -11044($fp)
	lw $t1, 0($t0)
	sw $t1, -11048($fp)
	lw $t0, -11028($fp)
	lw $t1, -11048($fp)
	sub $t0, $t0, $t1
	sw $t0, -11052($fp)
	lw $t1, -11004($fp)
	lw $t2, -11052($fp)
	beq $t1, $t2, label443
	j label444
label443:
	li $t0, 35548
	sw $t0, -11056($fp)
	j label445
label444:
	addi $t0, $fp, -240
	sw $t0, -11060($fp)
	li $t0, 0
	sw $t0, -11064($fp)
	li $t0, 4427
	sw $t0, -11068($fp)
	lw $t0, -560($fp)
	sw $t0, -11072($fp)
	lw $t1, -11068($fp)
	lw $t2, -11072($fp)
	bge $t1, $t2, label459
	j label461
label461:
	lw $t0, -560($fp)
	sw $t0, -11076($fp)
	lw $t1, -11076($fp)
	li $t2, 0
	bne $t1, $t2, label459
	j label460
label459:
	li $t0, 1
	sw $t0, -11064($fp)
label460:
	li $t0, 4
	lw $t1, -11064($fp)
	mul $t0, $t0, $t1
	sw $t0, -11080($fp)
	lw $t0, -11080($fp)
	lw $t1, -11060($fp)
	add $t0, $t0, $t1
	sw $t0, -11084($fp)
	lw $t0, -11084($fp)
	lw $t1, 0($t0)
	sw $t1, -11088($fp)
	li $t0, 0
	sw $t0, -11092($fp)
	li $t0, 0
	sw $t0, -11096($fp)
	li $t0, 41487
	sw $t0, -11100($fp)
	li $t0, 13024
	sw $t0, -11104($fp)
	lw $t0, -11100($fp)
	lw $t1, -11104($fp)
	mul $t0, $t0, $t1
	sw $t0, -11108($fp)
	lw $t0, -3980($fp)
	sw $t0, -11112($fp)
	lw $t1, -11108($fp)
	lw $t2, -11112($fp)
	blt $t1, $t2, label465
	j label466
label465:
	li $t0, 1
	sw $t0, -11096($fp)
label466:
	addi $sp, $sp, -4
	lw $t0, -11096($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -11116($fp)
	addi $sp, $sp, 8
	lw $t1, -11116($fp)
	li $t2, 0
	bne $t1, $t2, label462
	j label464
label464:
	lw $t0, -1724($fp)
	sw $t0, -11120($fp)
	lw $t1, -11120($fp)
	li $t2, 0
	bne $t1, $t2, label462
	j label463
label462:
	li $t0, 1
	sw $t0, -11092($fp)
label463:
	li $t0, 45743
	sw $t0, -11124($fp)
	li $t0, 0
	lw $t1, -11124($fp)
	sub $t0, $t0, $t1
	sw $t0, -11128($fp)
	li $t0, 30518
	sw $t0, -11132($fp)
	lw $t0, -4268($fp)
	sw $t0, -11136($fp)
	li $t0, 6154
	sw $t0, -11140($fp)
	lw $t0, -11140($fp)
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -11144($fp)
	addi $sp, $sp, -4
	lw $t0, -11092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11144($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11148($fp)
	addi $sp, $sp, 24
	li $t0, 28667
	sw $t0, -11152($fp)
	lw $t0, -11148($fp)
	lw $t1, -11152($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11156($fp)
	addi $sp, $sp, -4
	lw $t0, -11156($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -11160($fp)
	addi $sp, $sp, 8
	lw $t0, -11088($fp)
	lw $t1, -11160($fp)
	mul $t0, $t0, $t1
	sw $t0, -11164($fp)
label445:
	j label438
label440:
label409:
	li $t0, 0
	sw $t0, -11168($fp)
	li $t0, 0
	sw $t0, -11172($fp)
	lw $t0, -932($fp)
	sw $t0, -11176($fp)
	lw $t1, -11176($fp)
	li $t2, 0
	bne $t1, $t2, label470
	j label469
label469:
	li $t0, 1
	sw $t0, -11172($fp)
label470:
	li $t0, 0
	sw $t0, -11180($fp)
	addi $t0, $fp, -4596
	sw $t0, -11184($fp)
	li $t0, 2
	sw $t0, -11188($fp)
	li $t0, 4
	lw $t1, -11188($fp)
	mul $t0, $t0, $t1
	sw $t0, -11192($fp)
	lw $t0, -11192($fp)
	lw $t1, -11184($fp)
	add $t0, $t0, $t1
	sw $t0, -11196($fp)
	lw $t0, -11196($fp)
	lw $t1, 0($t0)
	sw $t1, -11200($fp)
	lw $t1, -11200($fp)
	li $t2, 0
	bne $t1, $t2, label472
	j label471
label471:
	li $t0, 1
	sw $t0, -11180($fp)
label472:
	li $t0, 0
	sw $t0, -11204($fp)
	lw $t0, -10092($fp)
	sw $t0, -11208($fp)
	li $t0, 0
	lw $t1, -11208($fp)
	sub $t0, $t0, $t1
	sw $t0, -11212($fp)
	lw $t1, -11212($fp)
	li $t2, 0
	bne $t1, $t2, label473
	j label475
label475:
	lw $t0, -1652($fp)
	sw $t0, -11216($fp)
	lw $t1, -11216($fp)
	li $t2, 0
	bne $t1, $t2, label473
	j label474
label473:
	li $t0, 1
	sw $t0, -11204($fp)
label474:
	li $t0, 25128
	sw $t0, -11220($fp)
	lw $t0, -11220($fp)
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	sw $t0, -11224($fp)
	li $t0, 0
	sw $t0, -11228($fp)
	lw $t0, -1724($fp)
	sw $t0, -11232($fp)
	lw $t1, -11232($fp)
	li $t2, 0
	bne $t1, $t2, label476
	j label478
label478:
	li $t0, 2041
	sw $t0, -11236($fp)
	lw $t1, -11236($fp)
	li $t2, 0
	bne $t1, $t2, label476
	j label477
label476:
	li $t0, 1
	sw $t0, -11228($fp)
label477:
	li $t0, 0
	sw $t0, -11240($fp)
	li $t0, 41013
	sw $t0, -11244($fp)
	lw $t1, -11244($fp)
	li $t2, 0
	bne $t1, $t2, label481
	j label479
label481:
	li $t0, 17348
	sw $t0, -11248($fp)
	lw $t1, -11248($fp)
	li $t2, 0
	bne $t1, $t2, label479
	j label480
label479:
	li $t0, 1
	sw $t0, -11240($fp)
label480:
	addi $sp, $sp, -4
	lw $t0, -11180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11240($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11252($fp)
	addi $sp, $sp, 24
	lw $t0, -11172($fp)
	lw $t1, -11252($fp)
	mul $t0, $t0, $t1
	sw $t0, -11256($fp)
	li $t0, 0
	lw $t1, -11256($fp)
	sub $t0, $t0, $t1
	sw $t0, -11260($fp)
	lw $t0, -1304($fp)
	sw $t0, -11264($fp)
	lw $t1, -11260($fp)
	lw $t2, -11264($fp)
	ble $t1, $t2, label467
	j label468
label467:
	li $t0, 1
	sw $t0, -11168($fp)
label468:
	j label385
label387:
label482:
	li $t0, 0
	sw $t0, -11268($fp)
	lw $t0, -1520($fp)
	sw $t0, -11272($fp)
	lw $t0, -3944($fp)
	sw $t0, -11276($fp)
	lw $t0, -11272($fp)
	lw $t1, -11276($fp)
	sub $t0, $t0, $t1
	sw $t0, -11280($fp)
	li $t0, 20355
	sw $t0, -11284($fp)
	lw $t1, -11280($fp)
	lw $t2, -11284($fp)
	ble $t1, $t2, label485
	j label486
label485:
	li $t0, 1
	sw $t0, -11268($fp)
label486:
	li $t0, 0
	sw $t0, -11288($fp)
	lw $t0, -1700($fp)
	sw $t0, -11292($fp)
	lw $t0, -3980($fp)
	sw $t0, -11296($fp)
	lw $t0, -11292($fp)
	lw $t1, -11296($fp)
	mul $t0, $t0, $t1
	sw $t0, -11300($fp)
	li $t0, 26115
	sw $t0, -11304($fp)
	lw $t1, -11300($fp)
	lw $t2, -11304($fp)
	bne $t1, $t2, label487
	j label488
label487:
	li $t0, 1
	sw $t0, -11288($fp)
label488:
	lw $t0, -4668($fp)
	sw $t0, -11308($fp)
	lw $t0, -1796($fp)
	sw $t0, -11312($fp)
	lw $t0, -11308($fp)
	lw $t1, -11312($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11316($fp)
	lw $t0, -5340($fp)
	sw $t0, -11320($fp)
	lw $t0, -11316($fp)
	lw $t1, -11320($fp)
	sub $t0, $t0, $t1
	sw $t0, -11324($fp)
	li $t0, 880
	sw $t0, -11328($fp)
	lw $t0, -11328($fp)
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	sw $t0, -11332($fp)
	li $t0, 0
	sw $t0, -11336($fp)
	lw $t0, -1640($fp)
	sw $t0, -11340($fp)
	lw $t1, -11340($fp)
	li $t2, 0
	bne $t1, $t2, label490
	j label489
label489:
	li $t0, 1
	sw $t0, -11336($fp)
label490:
	li $t0, 0
	lw $t1, -11336($fp)
	sub $t0, $t0, $t1
	sw $t0, -11344($fp)
	addi $sp, $sp, -4
	lw $t0, -11268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11344($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11348($fp)
	addi $sp, $sp, 24
	lw $t0, -2888($fp)
	sw $t0, -11352($fp)
	addi $sp, $sp, -4
	lw $t0, -11352($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -11356($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -11356($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -11360($fp)
	addi $sp, $sp, 8
	lw $t0, -11348($fp)
	lw $t1, -11360($fp)
	mul $t0, $t0, $t1
	sw $t0, -11364($fp)
	li $t0, 1519
	sw $t0, -11368($fp)
	lw $t0, -11364($fp)
	lw $t1, -11368($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11372($fp)
	lw $t1, -11372($fp)
	li $t2, 0
	bne $t1, $t2, label483
	j label484
label483:
	li $t0, 0
	sw $t0, -11376($fp)
	li $t0, 0
	sw $t0, -11380($fp)
	lw $t0, -1628($fp)
	sw $t0, -11384($fp)
	lw $t0, -5352($fp)
	sw $t0, -11388($fp)
	lw $t1, -11384($fp)
	lw $t2, -11388($fp)
	bne $t1, $t2, label496
	j label497
label496:
	li $t0, 1
	sw $t0, -11380($fp)
label497:
	li $t0, 61251
	sw $t0, -11392($fp)
	lw $t1, -11380($fp)
	lw $t2, -11392($fp)
	beq $t1, $t2, label494
	j label495
label494:
	li $t0, 1
	sw $t0, -11376($fp)
label495:
	lw $t0, -11376($fp)
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -11396($fp)
	lw $t1, -11396($fp)
	li $t2, 0
	bne $t1, $t2, label491
	j label492
label491:
label498:
	li $t0, 0
	sw $t0, -11400($fp)
	li $t0, 0
	sw $t0, -11404($fp)
	li $t0, 0
	sw $t0, -11408($fp)
	li $t0, 61759
	sw $t0, -11412($fp)
	lw $t1, -11412($fp)
	li $t2, 0
	bne $t1, $t2, label506
	j label505
label505:
	li $t0, 1
	sw $t0, -11408($fp)
label506:
	li $t0, 59814
	sw $t0, -11416($fp)
	lw $t1, -11408($fp)
	lw $t2, -11416($fp)
	bge $t1, $t2, label503
	j label504
label503:
	li $t0, 1
	sw $t0, -11404($fp)
label504:
	lw $t0, -5388($fp)
	sw $t0, -11420($fp)
	lw $t0, -11420($fp)
	sw $t0, -5376($fp)
	lw $t0, -5376($fp)
	sw $t0, -11424($fp)
	lw $t0, -1616($fp)
	sw $t0, -11428($fp)
	li $t0, 42191
	sw $t0, -11432($fp)
	lw $t0, -11428($fp)
	lw $t1, -11432($fp)
	mul $t0, $t0, $t1
	sw $t0, -11436($fp)
	lw $t0, -4692($fp)
	sw $t0, -11440($fp)
	lw $t0, -11436($fp)
	lw $t1, -11440($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11444($fp)
	li $t0, 0
	sw $t0, -11448($fp)
	li $t0, 0
	sw $t0, -11452($fp)
	lw $t0, -1652($fp)
	sw $t0, -11456($fp)
	lw $t1, -11456($fp)
	li $t2, 0
	bne $t1, $t2, label510
	j label509
label509:
	li $t0, 1
	sw $t0, -11452($fp)
label510:
	li $t0, 6689
	sw $t0, -11460($fp)
	lw $t1, -11452($fp)
	lw $t2, -11460($fp)
	bne $t1, $t2, label507
	j label508
label507:
	li $t0, 1
	sw $t0, -11448($fp)
label508:
	li $t0, 0
	sw $t0, -11464($fp)
	li $t0, 0
	sw $t0, -11468($fp)
	li $t0, 56272
	sw $t0, -11472($fp)
	li $t0, 35708
	sw $t0, -11476($fp)
	lw $t1, -11472($fp)
	lw $t2, -11476($fp)
	beq $t1, $t2, label513
	j label514
label513:
	li $t0, 1
	sw $t0, -11468($fp)
label514:
	lw $t0, -3944($fp)
	sw $t0, -11480($fp)
	lw $t1, -11468($fp)
	lw $t2, -11480($fp)
	beq $t1, $t2, label511
	j label512
label511:
	li $t0, 1
	sw $t0, -11464($fp)
label512:
	addi $sp, $sp, -4
	lw $t0, -11404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11464($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11484($fp)
	addi $sp, $sp, 24
	lw $t0, -1520($fp)
	sw $t0, -11488($fp)
	lw $t1, -11484($fp)
	lw $t2, -11488($fp)
	bne $t1, $t2, label501
	j label502
label501:
	li $t0, 1
	sw $t0, -11400($fp)
label502:
	addi $t0, $fp, -132
	sw $t0, -11492($fp)
	li $t0, 0
	sw $t0, -11496($fp)
	li $t0, 4
	lw $t1, -11496($fp)
	mul $t0, $t0, $t1
	sw $t0, -11500($fp)
	lw $t0, -11500($fp)
	lw $t1, -11492($fp)
	add $t0, $t0, $t1
	sw $t0, -11504($fp)
	lw $t0, -11504($fp)
	lw $t1, 0($t0)
	sw $t1, -11508($fp)
	li $t0, 0
	sw $t0, -11512($fp)
	li $t0, 2689
	sw $t0, -11516($fp)
	li $t0, 65192
	sw $t0, -11520($fp)
	lw $t1, -11516($fp)
	lw $t2, -11520($fp)
	blt $t1, $t2, label517
	j label516
label517:
	lw $t0, -1736($fp)
	sw $t0, -11524($fp)
	lw $t1, -11524($fp)
	li $t2, 0
	bne $t1, $t2, label515
	j label516
label515:
	li $t0, 1
	sw $t0, -11512($fp)
label516:
	li $t0, 0
	sw $t0, -11528($fp)
	lw $t0, -5364($fp)
	sw $t0, -11532($fp)
	lw $t0, -2960($fp)
	sw $t0, -11536($fp)
	lw $t0, -11532($fp)
	lw $t1, -11536($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11540($fp)
	li $t0, 34124
	sw $t0, -11544($fp)
	lw $t1, -11540($fp)
	lw $t2, -11544($fp)
	beq $t1, $t2, label518
	j label519
label518:
	li $t0, 1
	sw $t0, -11528($fp)
label519:
	lw $t0, -3092($fp)
	sw $t0, -11548($fp)
	addi $sp, $sp, -4
	lw $t0, -11400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11548($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11552($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -11552($fp)
	sub $t0, $t0, $t1
	sw $t0, -11556($fp)
	lw $t0, -1508($fp)
	sw $t0, -11560($fp)
	lw $t0, -1736($fp)
	sw $t0, -11564($fp)
	lw $t0, -11560($fp)
	lw $t1, -11564($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11568($fp)
	li $t0, 12203
	sw $t0, -11572($fp)
	lw $t0, -11568($fp)
	lw $t1, -11572($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11576($fp)
	lw $t0, -1700($fp)
	sw $t0, -11580($fp)
	li $t0, 0
	lw $t1, -11580($fp)
	sub $t0, $t0, $t1
	sw $t0, -11584($fp)
	lw $t0, -11576($fp)
	lw $t1, -11584($fp)
	sub $t0, $t0, $t1
	sw $t0, -11588($fp)
	lw $t1, -11556($fp)
	lw $t2, -11588($fp)
	ble $t1, $t2, label499
	j label500
label499:
	li $t0, 0
	sw $t0, -11592($fp)
	li $t0, 0
	sw $t0, -11596($fp)
	lw $t0, -5400($fp)
	sw $t0, -11600($fp)
	lw $t0, -5412($fp)
	sw $t0, -11604($fp)
	lw $t1, -11600($fp)
	lw $t2, -11604($fp)
	bgt $t1, $t2, label526
	j label527
label526:
	li $t0, 1
	sw $t0, -11596($fp)
label527:
	li $t0, 46394
	sw $t0, -11608($fp)
	lw $t1, -11596($fp)
	lw $t2, -11608($fp)
	bgt $t1, $t2, label524
	j label525
label524:
	li $t0, 1
	sw $t0, -11592($fp)
label525:
	li $t0, 0
	sw $t0, -11612($fp)
	lw $t0, -2192($fp)
	sw $t0, -11616($fp)
	lw $t1, -11616($fp)
	li $t2, 0
	bne $t1, $t2, label529
	j label528
label528:
	li $t0, 1
	sw $t0, -11612($fp)
label529:
	lw $t0, -3932($fp)
	sw $t0, -11620($fp)
	lw $t0, -11612($fp)
	lw $t1, -11620($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11624($fp)
	li $t0, 0
	sw $t0, -11628($fp)
	li $t0, 433
	sw $t0, -11632($fp)
	li $t0, 42721
	sw $t0, -11636($fp)
	lw $t0, -11632($fp)
	lw $t1, -11636($fp)
	sub $t0, $t0, $t1
	sw $t0, -11640($fp)
	lw $t1, -11640($fp)
	li $t2, 0
	bne $t1, $t2, label530
	j label532
label532:
	lw $t0, -2900($fp)
	sw $t0, -11644($fp)
	lw $t1, -11644($fp)
	li $t2, 0
	bne $t1, $t2, label530
	j label531
label530:
	li $t0, 1
	sw $t0, -11628($fp)
label531:
	lw $t0, -2024($fp)
	sw $t0, -11648($fp)
	li $t0, 0
	sw $t0, -11652($fp)
	li $t0, 0
	sw $t0, -11656($fp)
	lw $t0, -1844($fp)
	sw $t0, -11660($fp)
	lw $t1, -11660($fp)
	li $t2, 0
	bne $t1, $t2, label536
	j label535
label535:
	li $t0, 1
	sw $t0, -11656($fp)
label536:
	li $t0, 651
	sw $t0, -11664($fp)
	lw $t1, -11656($fp)
	lw $t2, -11664($fp)
	bne $t1, $t2, label533
	j label534
label533:
	li $t0, 1
	sw $t0, -11652($fp)
label534:
	addi $sp, $sp, -4
	lw $t0, -11592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11652($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11668($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -11668($fp)
	sub $t0, $t0, $t1
	sw $t0, -11672($fp)
	lw $t1, -11672($fp)
	li $t2, 0
	bne $t1, $t2, label523
	j label521
label523:
	li $t0, 0
	sw $t0, -11676($fp)
	lw $t0, -1808($fp)
	sw $t0, -11680($fp)
	lw $t1, -11680($fp)
	li $t2, 0
	bne $t1, $t2, label538
	j label537
label537:
	li $t0, 1
	sw $t0, -11676($fp)
label538:
	lw $t0, -3920($fp)
	sw $t0, -11684($fp)
	lw $t0, -11676($fp)
	lw $t1, -11684($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11688($fp)
	addi $t0, $fp, -240
	sw $t0, -11692($fp)
	lw $t0, -4244($fp)
	sw $t0, -11696($fp)
	li $t0, 4
	lw $t1, -11696($fp)
	mul $t0, $t0, $t1
	sw $t0, -11700($fp)
	lw $t0, -11700($fp)
	lw $t1, -11692($fp)
	add $t0, $t0, $t1
	sw $t0, -11704($fp)
	lw $t0, -11704($fp)
	lw $t1, 0($t0)
	sw $t1, -11708($fp)
	lw $t0, -11688($fp)
	lw $t1, -11708($fp)
	mul $t0, $t0, $t1
	sw $t0, -11712($fp)
	lw $t1, -11712($fp)
	li $t2, 0
	bne $t1, $t2, label520
	j label521
label520:
	addi $t0, $fp, -396
	sw $t0, -11716($fp)
	li $t0, 5
	sw $t0, -11720($fp)
	li $t0, 4
	lw $t1, -11720($fp)
	mul $t0, $t0, $t1
	sw $t0, -11724($fp)
	lw $t0, -11724($fp)
	lw $t1, -11716($fp)
	add $t0, $t0, $t1
	sw $t0, -11728($fp)
	lw $t0, -11728($fp)
	lw $t1, 0($t0)
	sw $t1, -11732($fp)
	li $t0, 7557
	sw $t0, -11736($fp)
	lw $t0, -11732($fp)
	lw $t1, -11736($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11740($fp)
	lw $t1, -11740($fp)
	li $t2, 0
	bne $t1, $t2, label539
	j label540
label539:
	li $t0, 0
	sw $t0, -11744($fp)
	lw $t0, -1808($fp)
	sw $t0, -11748($fp)
	li $t0, 11567
	sw $t0, -11752($fp)
	lw $t0, -11748($fp)
	lw $t1, -11752($fp)
	sub $t0, $t0, $t1
	sw $t0, -11756($fp)
	li $t0, 42526
	sw $t0, -11760($fp)
	lw $t0, -11756($fp)
	lw $t1, -11760($fp)
	add $t0, $t0, $t1
	sw $t0, -11764($fp)
	lw $t1, -11764($fp)
	li $t2, 0
	bne $t1, $t2, label542
	j label546
label546:
	lw $t0, -3908($fp)
	sw $t0, -11768($fp)
	li $t0, 56660
	sw $t0, -11772($fp)
	lw $t1, -11768($fp)
	lw $t2, -11772($fp)
	beq $t1, $t2, label542
	j label545
label545:
	lw $t0, -2072($fp)
	sw $t0, -11776($fp)
	li $t0, 0
	lw $t1, -11776($fp)
	sub $t0, $t0, $t1
	sw $t0, -11780($fp)
	lw $t1, -11780($fp)
	li $t2, 0
	bne $t1, $t2, label542
	j label544
label544:
	lw $t0, -1508($fp)
	sw $t0, -11784($fp)
	li $t0, 0
	lw $t1, -11784($fp)
	sub $t0, $t0, $t1
	sw $t0, -11788($fp)
	lw $t1, -11788($fp)
	li $t2, 0
	bne $t1, $t2, label543
	j label547
label547:
	lw $t0, -1688($fp)
	sw $t0, -11792($fp)
	li $t0, 55545
	sw $t0, -11796($fp)
	lw $t0, -11792($fp)
	lw $t1, -11796($fp)
	mul $t0, $t0, $t1
	sw $t0, -11800($fp)
	lw $t1, -11800($fp)
	li $t2, 0
	bne $t1, $t2, label542
	j label543
label542:
	li $t0, 1
	sw $t0, -11744($fp)
label543:
	j label541
label540:
	lw $t0, -944($fp)
	sw $t0, -11804($fp)
	li $t0, 0
	lw $t1, -11804($fp)
	sub $t0, $t0, $t1
	sw $t0, -11808($fp)
label541:
	li $t0, 43406
	sw $t0, -11812($fp)
	lw $ra, -4($fp)
	lw $v0, -11812($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label522
label521:
	li $t0, 17240
	sw $t0, -11816($fp)
	lw $ra, -4($fp)
	lw $v0, -11816($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label522:
	j label498
label500:
	j label493
label492:
	li $t0, 10364
	sw $t0, -11820($fp)
	lw $t0, -11820($fp)
	sw $t0, -11824($fp)
	lw $t0, -11824($fp)
	sw $t0, -11828($fp)
	li $t0, 53722
	sw $t0, -11832($fp)
	lw $t0, -11832($fp)
	sw $t0, -11836($fp)
	lw $t0, -11836($fp)
	sw $t0, -11840($fp)
	li $t0, 18758
	sw $t0, -11844($fp)
	lw $t0, -11844($fp)
	sw $t0, -11848($fp)
	lw $t0, -11848($fp)
	sw $t0, -11852($fp)
	li $t0, 6079
	sw $t0, -11856($fp)
	lw $t0, -11856($fp)
	sw $t0, -11860($fp)
	lw $t0, -11860($fp)
	sw $t0, -11864($fp)
	li $t0, 22311
	sw $t0, -11868($fp)
	lw $t0, -11868($fp)
	sw $t0, -11872($fp)
	lw $t0, -11872($fp)
	sw $t0, -11876($fp)
	li $t0, 0
	sw $t0, -11880($fp)
	li $t0, 21447
	sw $t0, -11884($fp)
	lw $t1, -11884($fp)
	li $t2, 0
	bne $t1, $t2, label549
	j label548
label548:
	li $t0, 1
	sw $t0, -11880($fp)
label549:
	addi $t0, $fp, -460
	sw $t0, -11888($fp)
	li $t0, 0
	sw $t0, -11892($fp)
	lw $t0, -2888($fp)
	sw $t0, -11896($fp)
	lw $t0, -11896($fp)
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	sw $t0, -11900($fp)
	lw $t0, -11836($fp)
	sw $t0, -11904($fp)
	lw $t0, -11904($fp)
	sw $t0, -11824($fp)
	lw $t0, -11824($fp)
	sw $t0, -11908($fp)
	li $t0, 0
	sw $t0, -11912($fp)
	lw $t0, -1712($fp)
	sw $t0, -11916($fp)
	li $t0, 5735
	sw $t0, -11920($fp)
	lw $t0, -11916($fp)
	lw $t1, -11920($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11924($fp)
	li $t0, 415
	sw $t0, -11928($fp)
	lw $t1, -11924($fp)
	lw $t2, -11928($fp)
	bge $t1, $t2, label555
	j label556
label555:
	li $t0, 1
	sw $t0, -11912($fp)
label556:
	lw $t0, -2024($fp)
	sw $t0, -11932($fp)
	lw $t0, -11932($fp)
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	sw $t0, -11936($fp)
	lw $t0, -1796($fp)
	sw $t0, -11940($fp)
	addi $sp, $sp, -4
	lw $t0, -11900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11940($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11944($fp)
	addi $sp, $sp, 24
	lw $t1, -11944($fp)
	li $t2, 0
	bne $t1, $t2, label554
	j label553
label553:
	li $t0, 1
	sw $t0, -11892($fp)
label554:
	li $t0, 4
	lw $t1, -11892($fp)
	mul $t0, $t0, $t1
	sw $t0, -11948($fp)
	lw $t0, -11948($fp)
	lw $t1, -11888($fp)
	add $t0, $t0, $t1
	sw $t0, -11952($fp)
	lw $t0, -11952($fp)
	lw $t1, 0($t0)
	sw $t1, -11956($fp)
	lw $t1, -11956($fp)
	li $t2, 0
	bne $t1, $t2, label550
	j label551
label550:
	li $t0, 32545
	sw $t0, -11960($fp)
	lw $t0, -11960($fp)
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	sw $t0, -11964($fp)
	lw $t0, -11964($fp)
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	sw $t0, -11968($fp)
	j label552
label551:
	li $t0, 0
	sw $t0, -11972($fp)
	li $t0, 0
	sw $t0, -11976($fp)
	lw $t0, -11848($fp)
	sw $t0, -11980($fp)
	lw $t0, -11860($fp)
	sw $t0, -11984($fp)
	lw $t0, -1652($fp)
	sw $t0, -11988($fp)
	lw $t0, -11984($fp)
	lw $t1, -11988($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11992($fp)
	lw $t1, -11980($fp)
	lw $t2, -11992($fp)
	ble $t1, $t2, label559
	j label560
label559:
	li $t0, 1
	sw $t0, -11976($fp)
label560:
	li $t0, 62008
	sw $t0, -11996($fp)
	lw $t1, -11976($fp)
	lw $t2, -11996($fp)
	ble $t1, $t2, label557
	j label558
label557:
	li $t0, 1
	sw $t0, -11972($fp)
label558:
label552:
	lw $t0, -11824($fp)
	sw $t0, -12000($fp)
	lw $t0, -12000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11836($fp)
	sw $t0, -12004($fp)
	lw $t0, -12004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11848($fp)
	sw $t0, -12008($fp)
	lw $t0, -12008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11860($fp)
	sw $t0, -12012($fp)
	lw $t0, -12012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11872($fp)
	sw $t0, -12016($fp)
	lw $t0, -12016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -12020($fp)
	li $t0, 0
	sw $t0, -12024($fp)
	addi $t0, $fp, -60
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
	li $t0, 0
	sw $t0, -12048($fp)
	li $t0, 38663
	sw $t0, -12052($fp)
	lw $t1, -12052($fp)
	li $t2, 0
	bne $t1, $t2, label566
	j label565
label565:
	li $t0, 1
	sw $t0, -12048($fp)
label566:
	lw $t1, -12044($fp)
	lw $t2, -12048($fp)
	ble $t1, $t2, label563
	j label564
label563:
	li $t0, 1
	sw $t0, -12024($fp)
label564:
	li $t0, 0
	sw $t0, -12056($fp)
	li $t0, 32346
	sw $t0, -12060($fp)
	lw $t0, -1724($fp)
	sw $t0, -12064($fp)
	lw $t0, -12060($fp)
	lw $t1, -12064($fp)
	mul $t0, $t0, $t1
	sw $t0, -12068($fp)
	li $t0, 0
	lw $t1, -12068($fp)
	sub $t0, $t0, $t1
	sw $t0, -12072($fp)
	li $t0, 0
	sw $t0, -12076($fp)
	li $t0, 33512
	sw $t0, -12080($fp)
	li $t0, 50867
	sw $t0, -12084($fp)
	lw $t0, -12080($fp)
	lw $t1, -12084($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12088($fp)
	lw $t0, -1784($fp)
	sw $t0, -12092($fp)
	lw $t1, -12088($fp)
	lw $t2, -12092($fp)
	beq $t1, $t2, label569
	j label570
label569:
	li $t0, 1
	sw $t0, -12076($fp)
label570:
	addi $sp, $sp, -4
	lw $t0, -12076($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -12096($fp)
	addi $sp, $sp, 8
	lw $t1, -12072($fp)
	lw $t2, -12096($fp)
	ble $t1, $t2, label567
	j label568
label567:
	li $t0, 1
	sw $t0, -12056($fp)
label568:
	lw $t1, -12024($fp)
	lw $t2, -12056($fp)
	bne $t1, $t2, label561
	j label562
label561:
	li $t0, 1
	sw $t0, -12020($fp)
label562:
	lw $ra, -4($fp)
	lw $v0, -12020($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 32997
	sw $t0, -12100($fp)
	lw $t0, -12100($fp)
	sw $t0, -12104($fp)
	lw $t0, -12104($fp)
	sw $t0, -12108($fp)
	li $t0, 33945
	sw $t0, -12112($fp)
	lw $t0, -12112($fp)
	sw $t0, -12116($fp)
	lw $t0, -12116($fp)
	sw $t0, -12120($fp)
	li $t0, 28052
	sw $t0, -12124($fp)
	lw $t0, -12124($fp)
	sw $t0, -12128($fp)
	lw $t0, -12128($fp)
	sw $t0, -12132($fp)
	li $t0, 0
	sw $t0, -12136($fp)
	li $t0, 0
	sw $t0, -12140($fp)
	li $t0, 27727
	sw $t0, -12144($fp)
	lw $t1, -12144($fp)
	li $t2, 0
	bne $t1, $t2, label574
	j label576
label576:
	lw $t0, -692($fp)
	sw $t0, -12148($fp)
	lw $t1, -12148($fp)
	li $t2, 0
	bne $t1, $t2, label574
	j label575
label574:
	li $t0, 1
	sw $t0, -12140($fp)
label575:
	li $t0, 23382
	sw $t0, -12152($fp)
	li $t0, 0
	lw $t1, -12152($fp)
	sub $t0, $t0, $t1
	sw $t0, -12156($fp)
	li $t0, 0
	sw $t0, -12160($fp)
	li $t0, 18262
	sw $t0, -12164($fp)
	li $t0, 0
	lw $t1, -12164($fp)
	sub $t0, $t0, $t1
	sw $t0, -12168($fp)
	lw $t1, -12168($fp)
	li $t2, 0
	bne $t1, $t2, label578
	j label577
label577:
	li $t0, 1
	sw $t0, -12160($fp)
label578:
	li $t0, 10329
	sw $t0, -12172($fp)
	lw $t0, -12172($fp)
	sw $t0, -12128($fp)
	lw $t0, -12128($fp)
	sw $t0, -12176($fp)
	li $t0, 0
	sw $t0, -12180($fp)
	li $t0, 13856
	sw $t0, -12184($fp)
	lw $t0, -1664($fp)
	sw $t0, -12188($fp)
	lw $t0, -12184($fp)
	lw $t1, -12188($fp)
	add $t0, $t0, $t1
	sw $t0, -12192($fp)
	lw $t1, -12192($fp)
	li $t2, 0
	bne $t1, $t2, label579
	j label581
label581:
	lw $t0, -12116($fp)
	sw $t0, -12196($fp)
	lw $t1, -12196($fp)
	li $t2, 0
	bne $t1, $t2, label579
	j label580
label579:
	li $t0, 1
	sw $t0, -12180($fp)
label580:
	addi $sp, $sp, -4
	lw $t0, -12140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12180($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12200($fp)
	addi $sp, $sp, 24
	lw $t1, -12200($fp)
	li $t2, 0
	bne $t1, $t2, label573
	j label572
label573:
	li $t0, 0
	sw $t0, -12204($fp)
	lw $t0, -12104($fp)
	sw $t0, -12208($fp)
	li $t0, 0
	lw $t1, -12208($fp)
	sub $t0, $t0, $t1
	sw $t0, -12212($fp)
	lw $t1, -12212($fp)
	li $t2, 0
	bne $t1, $t2, label583
	j label582
label582:
	li $t0, 1
	sw $t0, -12204($fp)
label583:
	li $t0, 25819
	sw $t0, -12216($fp)
	lw $t0, -1316($fp)
	sw $t0, -12220($fp)
	lw $t0, -12216($fp)
	lw $t1, -12220($fp)
	add $t0, $t0, $t1
	sw $t0, -12224($fp)
	lw $t1, -12204($fp)
	lw $t2, -12224($fp)
	bge $t1, $t2, label571
	j label572
label571:
	li $t0, 1
	sw $t0, -12136($fp)
label572:
label493:
	j label482
label484:
label584:
	lw $t0, -3908($fp)
	sw $t0, -12228($fp)
	li $t0, 0
	lw $t1, -12228($fp)
	sub $t0, $t0, $t1
	sw $t0, -12232($fp)
	li $t0, 0
	lw $t1, -12232($fp)
	sub $t0, $t0, $t1
	sw $t0, -12236($fp)
	li $t0, 0
	sw $t0, -12240($fp)
	li $t0, 0
	sw $t0, -12244($fp)
	lw $t0, -2024($fp)
	sw $t0, -12248($fp)
	li $t0, 48123
	sw $t0, -12252($fp)
	lw $t1, -12248($fp)
	lw $t2, -12252($fp)
	beq $t1, $t2, label590
	j label591
label590:
	li $t0, 1
	sw $t0, -12244($fp)
label591:
	lw $t0, -2864($fp)
	sw $t0, -12256($fp)
	lw $t1, -12244($fp)
	lw $t2, -12256($fp)
	beq $t1, $t2, label588
	j label589
label588:
	li $t0, 1
	sw $t0, -12240($fp)
label589:
	li $t0, 24958
	sw $t0, -12260($fp)
	lw $t0, -12260($fp)
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	sw $t0, -12264($fp)
	li $t0, 0
	sw $t0, -12268($fp)
	li $t0, 4717
	sw $t0, -12272($fp)
	li $t0, 16944
	sw $t0, -12276($fp)
	lw $t1, -12272($fp)
	lw $t2, -12276($fp)
	bgt $t1, $t2, label594
	j label593
label594:
	lw $t0, -1304($fp)
	sw $t0, -12280($fp)
	lw $t1, -12280($fp)
	li $t2, 0
	bne $t1, $t2, label592
	j label593
label592:
	li $t0, 1
	sw $t0, -12268($fp)
label593:
	li $t0, 0
	sw $t0, -12284($fp)
	lw $t0, -4728($fp)
	sw $t0, -12288($fp)
	lw $t1, -12288($fp)
	li $t2, 0
	bne $t1, $t2, label595
	j label597
label597:
	li $t0, 34949
	sw $t0, -12292($fp)
	lw $t1, -12292($fp)
	li $t2, 0
	bne $t1, $t2, label595
	j label596
label595:
	li $t0, 1
	sw $t0, -12284($fp)
label596:
	addi $sp, $sp, -4
	lw $t0, -12236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12284($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12296($fp)
	addi $sp, $sp, 24
	lw $t0, -4740($fp)
	sw $t0, -12300($fp)
	li $t0, 0
	lw $t1, -12300($fp)
	sub $t0, $t0, $t1
	sw $t0, -12304($fp)
	li $t0, 0
	lw $t1, -12304($fp)
	sub $t0, $t0, $t1
	sw $t0, -12308($fp)
	lw $t1, -12296($fp)
	lw $t2, -12308($fp)
	bge $t1, $t2, label587
	j label586
label587:
	addi $t0, $fp, -4568
	sw $t0, -12312($fp)
	li $t0, 2
	sw $t0, -12316($fp)
	li $t0, 4
	lw $t1, -12316($fp)
	mul $t0, $t0, $t1
	sw $t0, -12320($fp)
	lw $t0, -12320($fp)
	lw $t1, -12312($fp)
	add $t0, $t0, $t1
	sw $t0, -12324($fp)
	lw $t0, -12324($fp)
	lw $t1, 0($t0)
	sw $t1, -12328($fp)
	addi $t0, $fp, -132
	sw $t0, -12332($fp)
	lw $t0, -1496($fp)
	sw $t0, -12336($fp)
	li $t0, 4
	lw $t1, -12336($fp)
	mul $t0, $t0, $t1
	sw $t0, -12340($fp)
	lw $t0, -12340($fp)
	lw $t1, -12332($fp)
	add $t0, $t0, $t1
	sw $t0, -12344($fp)
	lw $t0, -12344($fp)
	lw $t1, 0($t0)
	sw $t1, -12348($fp)
	lw $t0, -12328($fp)
	lw $t1, -12348($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12352($fp)
	lw $t1, -12352($fp)
	li $t2, 0
	bne $t1, $t2, label585
	j label586
label585:
label598:
	lw $t0, -3980($fp)
	sw $t0, -12356($fp)
	li $t0, 0
	lw $t1, -12356($fp)
	sub $t0, $t0, $t1
	sw $t0, -12360($fp)
	li $t0, 0
	sw $t0, -12364($fp)
	lw $t0, -1592($fp)
	sw $t0, -12368($fp)
	lw $t1, -12368($fp)
	li $t2, 0
	bne $t1, $t2, label602
	j label601
label601:
	li $t0, 1
	sw $t0, -12364($fp)
label602:
	lw $t0, -1508($fp)
	sw $t0, -12372($fp)
	li $t0, 0
	lw $t1, -12372($fp)
	sub $t0, $t0, $t1
	sw $t0, -12376($fp)
	lw $t0, -12364($fp)
	lw $t1, -12376($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12380($fp)
	li $t0, 0
	lw $t1, -12380($fp)
	sub $t0, $t0, $t1
	sw $t0, -12384($fp)
	lw $t0, -12360($fp)
	lw $t1, -12384($fp)
	sub $t0, $t0, $t1
	sw $t0, -12388($fp)
	lw $t1, -12388($fp)
	li $t2, 0
	bne $t1, $t2, label599
	j label600
label599:
	li $t0, 36309
	sw $t0, -12392($fp)
	lw $t0, -12392($fp)
	sw $t0, -12396($fp)
	lw $t0, -12396($fp)
	sw $t0, -12400($fp)
	lw $t0, -3980($fp)
	sw $t0, -12404($fp)
	lw $t1, -12404($fp)
	li $t2, 0
	bne $t1, $t2, label606
	j label604
label606:
	addi $t0, $fp, -60
	sw $t0, -12408($fp)
	li $t0, 0
	sw $t0, -12412($fp)
	lw $t0, -4232($fp)
	sw $t0, -12416($fp)
	li $t0, 52942
	sw $t0, -12420($fp)
	lw $t1, -12416($fp)
	lw $t2, -12420($fp)
	bge $t1, $t2, label607
	j label608
label607:
	li $t0, 1
	sw $t0, -12412($fp)
label608:
	li $t0, 4
	lw $t1, -12412($fp)
	mul $t0, $t0, $t1
	sw $t0, -12424($fp)
	lw $t0, -12424($fp)
	lw $t1, -12408($fp)
	add $t0, $t0, $t1
	sw $t0, -12428($fp)
	lw $t0, -12428($fp)
	lw $t1, 0($t0)
	sw $t1, -12432($fp)
	lw $t1, -12432($fp)
	li $t2, 0
	bne $t1, $t2, label603
	j label604
label603:
	li $t0, 0
	sw $t0, -12436($fp)
	li $t0, 0
	sw $t0, -12440($fp)
	li $t0, 41401
	sw $t0, -12444($fp)
	lw $t0, -12396($fp)
	sw $t0, -12448($fp)
	lw $t1, -12444($fp)
	lw $t2, -12448($fp)
	bge $t1, $t2, label611
	j label613
label613:
	li $t0, 58620
	sw $t0, -12452($fp)
	lw $t1, -12452($fp)
	li $t2, 0
	bne $t1, $t2, label611
	j label612
label611:
	li $t0, 1
	sw $t0, -12440($fp)
label612:
	addi $sp, $sp, -4
	lw $t0, -12440($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -12456($fp)
	addi $sp, $sp, 8
	li $t0, 8853
	sw $t0, -12460($fp)
	lw $t1, -12456($fp)
	lw $t2, -12460($fp)
	bne $t1, $t2, label609
	j label610
label609:
	li $t0, 1
	sw $t0, -12436($fp)
label610:
	lw $ra, -4($fp)
	lw $v0, -12436($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label605
label604:
	li $t0, 47136
	sw $t0, -12464($fp)
	lw $t0, -12464($fp)
	sw $t0, -12468($fp)
	lw $t0, -12468($fp)
	sw $t0, -12472($fp)
	addi $t0, $fp, -424
	sw $t0, -12476($fp)
	li $t0, 0
	sw $t0, -12480($fp)
	li $t0, 59035
	sw $t0, -12484($fp)
	lw $t1, -12484($fp)
	li $t2, 0
	bne $t1, $t2, label615
	j label614
label614:
	li $t0, 1
	sw $t0, -12480($fp)
label615:
	li $t0, 4
	lw $t1, -12480($fp)
	mul $t0, $t0, $t1
	sw $t0, -12488($fp)
	lw $t0, -12488($fp)
	lw $t1, -12476($fp)
	add $t0, $t0, $t1
	sw $t0, -12492($fp)
	lw $t0, -12492($fp)
	lw $t1, 0($t0)
	sw $t1, -12496($fp)
	li $t0, 0
	lw $t1, -12496($fp)
	sub $t0, $t0, $t1
	sw $t0, -12500($fp)
	li $t0, 0
	sw $t0, -12504($fp)
	addi $t0, $fp, -4628
	sw $t0, -12508($fp)
	lw $t0, -1160($fp)
	sw $t0, -12512($fp)
	li $t0, 4
	lw $t1, -12512($fp)
	mul $t0, $t0, $t1
	sw $t0, -12516($fp)
	lw $t0, -12516($fp)
	lw $t1, -12508($fp)
	add $t0, $t0, $t1
	sw $t0, -12520($fp)
	lw $t0, -12520($fp)
	lw $t1, 0($t0)
	sw $t1, -12524($fp)
	lw $t1, -12524($fp)
	li $t2, 0
	bne $t1, $t2, label619
	j label618
label619:
	lw $t0, -2864($fp)
	sw $t0, -12528($fp)
	lw $t1, -12528($fp)
	li $t2, 0
	bne $t1, $t2, label616
	j label618
label618:
	addi $t0, $fp, -280
	sw $t0, -12532($fp)
	lw $t0, -12468($fp)
	sw $t0, -12536($fp)
	li $t0, 4
	lw $t1, -12536($fp)
	mul $t0, $t0, $t1
	sw $t0, -12540($fp)
	lw $t0, -12540($fp)
	lw $t1, -12532($fp)
	add $t0, $t0, $t1
	sw $t0, -12544($fp)
	lw $t0, -12544($fp)
	lw $t1, 0($t0)
	sw $t1, -12548($fp)
	lw $t1, -12548($fp)
	li $t2, 0
	bne $t1, $t2, label616
	j label617
label616:
	li $t0, 1
	sw $t0, -12504($fp)
label617:
	lw $t0, -12504($fp)
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	sw $t0, -12552($fp)
	li $t0, 0
	sw $t0, -12556($fp)
	lw $t0, -3116($fp)
	sw $t0, -12560($fp)
	lw $t1, -12560($fp)
	li $t2, 0
	bne $t1, $t2, label621
	j label620
label620:
	li $t0, 1
	sw $t0, -12556($fp)
label621:
	lw $t0, -12556($fp)
	sw $t0, -4232($fp)
	lw $t0, -4232($fp)
	sw $t0, -12564($fp)
label605:
	j label598
label600:
	j label584
label586:
label622:
	li $t0, 41398
	sw $t0, -12568($fp)
	addi $t0, $fp, -164
	sw $t0, -12572($fp)
	lw $t0, -1520($fp)
	sw $t0, -12576($fp)
	li $t0, 4
	lw $t1, -12576($fp)
	mul $t0, $t0, $t1
	sw $t0, -12580($fp)
	lw $t0, -12580($fp)
	lw $t1, -12572($fp)
	add $t0, $t0, $t1
	sw $t0, -12584($fp)
	lw $t0, -12584($fp)
	lw $t1, 0($t0)
	sw $t1, -12588($fp)
	li $t0, 0
	lw $t1, -12588($fp)
	sub $t0, $t0, $t1
	sw $t0, -12592($fp)
	lw $t0, -12568($fp)
	lw $t1, -12592($fp)
	mul $t0, $t0, $t1
	sw $t0, -12596($fp)
	lw $t1, -12596($fp)
	li $t2, 0
	bne $t1, $t2, label623
	j label624
label623:
	li $t0, 43608
	sw $t0, -12648($fp)
	lw $t0, -12648($fp)
	sw $t0, -12652($fp)
	lw $t0, -12652($fp)
	sw $t0, -12656($fp)
	li $t0, 29622
	sw $t0, -12660($fp)
	addi $t0, $fp, -12612
	sw $t0, -12664($fp)
	li $t0, 0
	sw $t0, -12668($fp)
	lw $t0, -12668($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12672($fp)
	lw $t0, -12664($fp)
	lw $t1, -12672($fp)
	add $t0, $t0, $t1
	sw $t0, -12676($fp)
	lw $t0, -12660($fp)
	lw $t1, -12676($fp)
	sw $t0, 0($t1)
	lw $t0, -12676($fp)
	lw $t1, 0($t0)
	sw $t1, -12680($fp)
	li $t0, 15096
	sw $t0, -12684($fp)
	addi $t0, $fp, -12612
	sw $t0, -12688($fp)
	li $t0, 1
	sw $t0, -12692($fp)
	lw $t0, -12692($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12696($fp)
	lw $t0, -12688($fp)
	lw $t1, -12696($fp)
	add $t0, $t0, $t1
	sw $t0, -12700($fp)
	lw $t0, -12684($fp)
	lw $t1, -12700($fp)
	sw $t0, 0($t1)
	lw $t0, -12700($fp)
	lw $t1, 0($t0)
	sw $t1, -12704($fp)
	li $t0, 16736
	sw $t0, -12708($fp)
	addi $t0, $fp, -12612
	sw $t0, -12712($fp)
	li $t0, 2
	sw $t0, -12716($fp)
	lw $t0, -12716($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12720($fp)
	lw $t0, -12712($fp)
	lw $t1, -12720($fp)
	add $t0, $t0, $t1
	sw $t0, -12724($fp)
	lw $t0, -12708($fp)
	lw $t1, -12724($fp)
	sw $t0, 0($t1)
	lw $t0, -12724($fp)
	lw $t1, 0($t0)
	sw $t1, -12728($fp)
	li $t0, 61969
	sw $t0, -12732($fp)
	addi $t0, $fp, -12612
	sw $t0, -12736($fp)
	li $t0, 3
	sw $t0, -12740($fp)
	lw $t0, -12740($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12744($fp)
	lw $t0, -12736($fp)
	lw $t1, -12744($fp)
	add $t0, $t0, $t1
	sw $t0, -12748($fp)
	lw $t0, -12732($fp)
	lw $t1, -12748($fp)
	sw $t0, 0($t1)
	lw $t0, -12748($fp)
	lw $t1, 0($t0)
	sw $t1, -12752($fp)
	li $t0, 48608
	sw $t0, -12756($fp)
	lw $t0, -12756($fp)
	sw $t0, -12760($fp)
	lw $t0, -12760($fp)
	sw $t0, -12764($fp)
	li $t0, 2067
	sw $t0, -12768($fp)
	lw $t0, -12768($fp)
	sw $t0, -12772($fp)
	lw $t0, -12772($fp)
	sw $t0, -12776($fp)
	li $t0, 29430
	sw $t0, -12780($fp)
	lw $t0, -12780($fp)
	sw $t0, -12784($fp)
	lw $t0, -12784($fp)
	sw $t0, -12788($fp)
	li $t0, 17018
	sw $t0, -12792($fp)
	addi $t0, $fp, -12644
	sw $t0, -12796($fp)
	li $t0, 0
	sw $t0, -12800($fp)
	lw $t0, -12800($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12804($fp)
	lw $t0, -12796($fp)
	lw $t1, -12804($fp)
	add $t0, $t0, $t1
	sw $t0, -12808($fp)
	lw $t0, -12792($fp)
	lw $t1, -12808($fp)
	sw $t0, 0($t1)
	lw $t0, -12808($fp)
	lw $t1, 0($t0)
	sw $t1, -12812($fp)
	li $t0, 30119
	sw $t0, -12816($fp)
	addi $t0, $fp, -12644
	sw $t0, -12820($fp)
	li $t0, 1
	sw $t0, -12824($fp)
	lw $t0, -12824($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12828($fp)
	lw $t0, -12820($fp)
	lw $t1, -12828($fp)
	add $t0, $t0, $t1
	sw $t0, -12832($fp)
	lw $t0, -12816($fp)
	lw $t1, -12832($fp)
	sw $t0, 0($t1)
	lw $t0, -12832($fp)
	lw $t1, 0($t0)
	sw $t1, -12836($fp)
	li $t0, 43286
	sw $t0, -12840($fp)
	addi $t0, $fp, -12644
	sw $t0, -12844($fp)
	li $t0, 2
	sw $t0, -12848($fp)
	lw $t0, -12848($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12852($fp)
	lw $t0, -12844($fp)
	lw $t1, -12852($fp)
	add $t0, $t0, $t1
	sw $t0, -12856($fp)
	lw $t0, -12840($fp)
	lw $t1, -12856($fp)
	sw $t0, 0($t1)
	lw $t0, -12856($fp)
	lw $t1, 0($t0)
	sw $t1, -12860($fp)
	li $t0, 27347
	sw $t0, -12864($fp)
	addi $t0, $fp, -12644
	sw $t0, -12868($fp)
	li $t0, 3
	sw $t0, -12872($fp)
	lw $t0, -12872($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12876($fp)
	lw $t0, -12868($fp)
	lw $t1, -12876($fp)
	add $t0, $t0, $t1
	sw $t0, -12880($fp)
	lw $t0, -12864($fp)
	lw $t1, -12880($fp)
	sw $t0, 0($t1)
	lw $t0, -12880($fp)
	lw $t1, 0($t0)
	sw $t1, -12884($fp)
	li $t0, 48381
	sw $t0, -12888($fp)
	addi $t0, $fp, -12644
	sw $t0, -12892($fp)
	li $t0, 4
	sw $t0, -12896($fp)
	lw $t0, -12896($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12900($fp)
	lw $t0, -12892($fp)
	lw $t1, -12900($fp)
	add $t0, $t0, $t1
	sw $t0, -12904($fp)
	lw $t0, -12888($fp)
	lw $t1, -12904($fp)
	sw $t0, 0($t1)
	lw $t0, -12904($fp)
	lw $t1, 0($t0)
	sw $t1, -12908($fp)
	li $t0, 1132
	sw $t0, -12912($fp)
	addi $t0, $fp, -12644
	sw $t0, -12916($fp)
	li $t0, 5
	sw $t0, -12920($fp)
	lw $t0, -12920($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12924($fp)
	lw $t0, -12916($fp)
	lw $t1, -12924($fp)
	add $t0, $t0, $t1
	sw $t0, -12928($fp)
	lw $t0, -12912($fp)
	lw $t1, -12928($fp)
	sw $t0, 0($t1)
	lw $t0, -12928($fp)
	lw $t1, 0($t0)
	sw $t1, -12932($fp)
	li $t0, 55074
	sw $t0, -12936($fp)
	addi $t0, $fp, -12644
	sw $t0, -12940($fp)
	li $t0, 6
	sw $t0, -12944($fp)
	lw $t0, -12944($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12948($fp)
	lw $t0, -12940($fp)
	lw $t1, -12948($fp)
	add $t0, $t0, $t1
	sw $t0, -12952($fp)
	lw $t0, -12936($fp)
	lw $t1, -12952($fp)
	sw $t0, 0($t1)
	lw $t0, -12952($fp)
	lw $t1, 0($t0)
	sw $t1, -12956($fp)
	li $t0, 8665
	sw $t0, -12960($fp)
	addi $t0, $fp, -12644
	sw $t0, -12964($fp)
	li $t0, 7
	sw $t0, -12968($fp)
	lw $t0, -12968($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12972($fp)
	lw $t0, -12964($fp)
	lw $t1, -12972($fp)
	add $t0, $t0, $t1
	sw $t0, -12976($fp)
	lw $t0, -12960($fp)
	lw $t1, -12976($fp)
	sw $t0, 0($t1)
	lw $t0, -12976($fp)
	lw $t1, 0($t0)
	sw $t1, -12980($fp)
	li $t0, 36081
	sw $t0, -12984($fp)
	li $t0, 0
	sw $t0, -12988($fp)
	li $t0, 0
	sw $t0, -12992($fp)
	li $t0, 59791
	sw $t0, -12996($fp)
	lw $t1, -12996($fp)
	li $t2, 0
	bne $t1, $t2, label630
	j label631
label630:
	li $t0, 1
	sw $t0, -12992($fp)
label631:
	li $t0, 25609
	sw $t0, -13000($fp)
	li $t0, 0
	lw $t1, -13000($fp)
	sub $t0, $t0, $t1
	sw $t0, -13004($fp)
	lw $t1, -12992($fp)
	lw $t2, -13004($fp)
	bge $t1, $t2, label628
	j label629
label628:
	li $t0, 1
	sw $t0, -12988($fp)
label629:
	lw $t1, -12984($fp)
	lw $t2, -12988($fp)
	beq $t1, $t2, label625
	j label626
label625:
	li $t0, 61039
	sw $t0, -13032($fp)
	lw $t0, -13032($fp)
	sw $t0, -13036($fp)
	lw $t0, -13036($fp)
	sw $t0, -13040($fp)
	li $t0, 42378
	sw $t0, -13044($fp)
	addi $t0, $fp, -13028
	sw $t0, -13048($fp)
	li $t0, 0
	sw $t0, -13052($fp)
	lw $t0, -13052($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -13056($fp)
	lw $t0, -13048($fp)
	lw $t1, -13056($fp)
	add $t0, $t0, $t1
	sw $t0, -13060($fp)
	lw $t0, -13044($fp)
	lw $t1, -13060($fp)
	sw $t0, 0($t1)
	lw $t0, -13060($fp)
	lw $t1, 0($t0)
	sw $t1, -13064($fp)
	li $t0, 59793
	sw $t0, -13068($fp)
	addi $t0, $fp, -13028
	sw $t0, -13072($fp)
	li $t0, 1
	sw $t0, -13076($fp)
	lw $t0, -13076($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -13080($fp)
	lw $t0, -13072($fp)
	lw $t1, -13080($fp)
	add $t0, $t0, $t1
	sw $t0, -13084($fp)
	lw $t0, -13068($fp)
	lw $t1, -13084($fp)
	sw $t0, 0($t1)
	lw $t0, -13084($fp)
	lw $t1, 0($t0)
	sw $t1, -13088($fp)
	li $t0, 30825
	sw $t0, -13092($fp)
	addi $t0, $fp, -13028
	sw $t0, -13096($fp)
	li $t0, 2
	sw $t0, -13100($fp)
	lw $t0, -13100($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -13104($fp)
	lw $t0, -13096($fp)
	lw $t1, -13104($fp)
	add $t0, $t0, $t1
	sw $t0, -13108($fp)
	lw $t0, -13092($fp)
	lw $t1, -13108($fp)
	sw $t0, 0($t1)
	lw $t0, -13108($fp)
	lw $t1, 0($t0)
	sw $t1, -13112($fp)
	li $t0, 13152
	sw $t0, -13116($fp)
	addi $t0, $fp, -13028
	sw $t0, -13120($fp)
	li $t0, 3
	sw $t0, -13124($fp)
	lw $t0, -13124($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -13128($fp)
	lw $t0, -13120($fp)
	lw $t1, -13128($fp)
	add $t0, $t0, $t1
	sw $t0, -13132($fp)
	lw $t0, -13116($fp)
	lw $t1, -13132($fp)
	sw $t0, 0($t1)
	lw $t0, -13132($fp)
	lw $t1, 0($t0)
	sw $t1, -13136($fp)
	li $t0, 47199
	sw $t0, -13140($fp)
	addi $t0, $fp, -13028
	sw $t0, -13144($fp)
	li $t0, 4
	sw $t0, -13148($fp)
	lw $t0, -13148($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -13152($fp)
	lw $t0, -13144($fp)
	lw $t1, -13152($fp)
	add $t0, $t0, $t1
	sw $t0, -13156($fp)
	lw $t0, -13140($fp)
	lw $t1, -13156($fp)
	sw $t0, 0($t1)
	lw $t0, -13156($fp)
	lw $t1, 0($t0)
	sw $t1, -13160($fp)
	li $t0, 6690
	sw $t0, -13164($fp)
	addi $t0, $fp, -13028
	sw $t0, -13168($fp)
	li $t0, 5
	sw $t0, -13172($fp)
	lw $t0, -13172($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -13176($fp)
	lw $t0, -13168($fp)
	lw $t1, -13176($fp)
	add $t0, $t0, $t1
	sw $t0, -13180($fp)
	lw $t0, -13164($fp)
	lw $t1, -13180($fp)
	sw $t0, 0($t1)
	lw $t0, -13180($fp)
	lw $t1, 0($t0)
	sw $t1, -13184($fp)
	li $t0, 0
	sw $t0, -13188($fp)
	addi $t0, $fp, -424
	sw $t0, -13192($fp)
	lw $t0, -13036($fp)
	sw $t0, -13196($fp)
	li $t0, 0
	lw $t1, -13196($fp)
	sub $t0, $t0, $t1
	sw $t0, -13200($fp)
	li $t0, 4
	lw $t1, -13200($fp)
	mul $t0, $t0, $t1
	sw $t0, -13204($fp)
	lw $t0, -13204($fp)
	lw $t1, -13192($fp)
	add $t0, $t0, $t1
	sw $t0, -13208($fp)
	lw $t0, -13208($fp)
	lw $t1, 0($t0)
	sw $t1, -13212($fp)
	lw $t1, -13212($fp)
	li $t2, 0
	bne $t1, $t2, label632
	j label634
label634:
	lw $t0, -3116($fp)
	sw $t0, -13216($fp)
	lw $t0, -13216($fp)
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	sw $t0, -13220($fp)
	li $t0, 0
	sw $t0, -13224($fp)
	li $t0, 29358
	sw $t0, -13228($fp)
	lw $t1, -13228($fp)
	li $t2, 0
	bne $t1, $t2, label636
	j label635
label635:
	li $t0, 1
	sw $t0, -13224($fp)
label636:
	li $t0, 0
	lw $t1, -13224($fp)
	sub $t0, $t0, $t1
	sw $t0, -13232($fp)
	li $t0, 31899
	sw $t0, -13236($fp)
	lw $t0, -596($fp)
	sw $t0, -13240($fp)
	lw $t0, -13236($fp)
	lw $t1, -13240($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13244($fp)
	li $t0, 0
	lw $t1, -13244($fp)
	sub $t0, $t0, $t1
	sw $t0, -13248($fp)
	addi $t0, $fp, -13028
	sw $t0, -13252($fp)
	li $t0, 2
	sw $t0, -13256($fp)
	li $t0, 4
	lw $t1, -13256($fp)
	mul $t0, $t0, $t1
	sw $t0, -13260($fp)
	lw $t0, -13260($fp)
	lw $t1, -13252($fp)
	add $t0, $t0, $t1
	sw $t0, -13264($fp)
	lw $t0, -13264($fp)
	lw $t1, 0($t0)
	sw $t1, -13268($fp)
	addi $t0, $fp, -140
	sw $t0, -13272($fp)
	li $t0, 0
	sw $t0, -13276($fp)
	li $t0, 4
	lw $t1, -13276($fp)
	mul $t0, $t0, $t1
	sw $t0, -13280($fp)
	lw $t0, -13280($fp)
	lw $t1, -13272($fp)
	add $t0, $t0, $t1
	sw $t0, -13284($fp)
	lw $t0, -13284($fp)
	lw $t1, 0($t0)
	sw $t1, -13288($fp)
	li $t0, 53827
	sw $t0, -13292($fp)
	lw $t0, -13288($fp)
	lw $t1, -13292($fp)
	mul $t0, $t0, $t1
	sw $t0, -13296($fp)
	addi $sp, $sp, -4
	lw $t0, -13220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13296($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13300($fp)
	addi $sp, $sp, 24
	lw $t1, -13300($fp)
	li $t2, 0
	bne $t1, $t2, label632
	j label633
label632:
	li $t0, 1
	sw $t0, -13188($fp)
label633:
	j label627
label626:
	li $t0, 0
	sw $t0, -13304($fp)
	lw $t0, -4244($fp)
	sw $t0, -13308($fp)
	li $t0, 0
	lw $t1, -13308($fp)
	sub $t0, $t0, $t1
	sw $t0, -13312($fp)
	lw $t1, -13312($fp)
	li $t2, 0
	bne $t1, $t2, label637
	j label640
label640:
	li $t0, 47010
	sw $t0, -13316($fp)
	lw $t1, -13316($fp)
	li $t2, 0
	bne $t1, $t2, label637
	j label639
label639:
	li $t0, 48635
	sw $t0, -13320($fp)
	li $t0, 25791
	sw $t0, -13324($fp)
	lw $t0, -13320($fp)
	lw $t1, -13324($fp)
	mul $t0, $t0, $t1
	sw $t0, -13328($fp)
	lw $t1, -13328($fp)
	li $t2, 0
	bne $t1, $t2, label637
	j label638
label637:
	li $t0, 1
	sw $t0, -13304($fp)
label638:
	lw $t0, -13304($fp)
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -13332($fp)
	lw $ra, -4($fp)
	lw $v0, -13332($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label627:
label641:
	li $t0, 0
	sw $t0, -13336($fp)
	lw $t0, -4232($fp)
	sw $t0, -13340($fp)
	lw $t0, -2888($fp)
	sw $t0, -13344($fp)
	lw $t0, -13340($fp)
	lw $t1, -13344($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13348($fp)
	li $t0, 0
	lw $t1, -13348($fp)
	sub $t0, $t0, $t1
	sw $t0, -13352($fp)
	addi $t0, $fp, -88
	sw $t0, -13356($fp)
	li $t0, 4
	sw $t0, -13360($fp)
	li $t0, 4
	lw $t1, -13360($fp)
	mul $t0, $t0, $t1
	sw $t0, -13364($fp)
	lw $t0, -13364($fp)
	lw $t1, -13356($fp)
	add $t0, $t0, $t1
	sw $t0, -13368($fp)
	lw $t0, -13368($fp)
	lw $t1, 0($t0)
	sw $t1, -13372($fp)
	lw $t0, -692($fp)
	sw $t0, -13376($fp)
	li $t0, 32405
	sw $t0, -13380($fp)
	li $t0, 154
	sw $t0, -13384($fp)
	lw $t0, -13380($fp)
	lw $t1, -13384($fp)
	mul $t0, $t0, $t1
	sw $t0, -13388($fp)
	lw $t0, -1724($fp)
	sw $t0, -13392($fp)
	lw $t0, -13388($fp)
	lw $t1, -13392($fp)
	add $t0, $t0, $t1
	sw $t0, -13396($fp)
	li $t0, 0
	sw $t0, -13400($fp)
	addi $t0, $fp, -240
	sw $t0, -13404($fp)
	li $t0, 3
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
	lw $t1, -13420($fp)
	li $t2, 0
	bne $t1, $t2, label648
	j label647
label648:
	li $t0, 58242
	sw $t0, -13424($fp)
	lw $t1, -13424($fp)
	li $t2, 0
	bne $t1, $t2, label646
	j label647
label646:
	li $t0, 1
	sw $t0, -13400($fp)
label647:
	lw $t0, -1772($fp)
	sw $t0, -13428($fp)
	lw $t0, -13428($fp)
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	sw $t0, -13432($fp)
	li $t0, 0
	sw $t0, -13436($fp)
	addi $t0, $fp, -180
	sw $t0, -13440($fp)
	li $t0, 1
	sw $t0, -13444($fp)
	li $t0, 4
	lw $t1, -13444($fp)
	mul $t0, $t0, $t1
	sw $t0, -13448($fp)
	lw $t0, -13448($fp)
	lw $t1, -13440($fp)
	add $t0, $t0, $t1
	sw $t0, -13452($fp)
	lw $t0, -13452($fp)
	lw $t1, 0($t0)
	sw $t1, -13456($fp)
	li $t0, 63986
	sw $t0, -13460($fp)
	lw $t1, -13456($fp)
	lw $t2, -13460($fp)
	bne $t1, $t2, label649
	j label650
label649:
	li $t0, 1
	sw $t0, -13436($fp)
label650:
	li $t0, 0
	sw $t0, -13464($fp)
	li $t0, 8912
	sw $t0, -13468($fp)
	lw $t1, -13468($fp)
	li $t2, 0
	bne $t1, $t2, label652
	j label653
label653:
	lw $t0, -2372($fp)
	sw $t0, -13472($fp)
	lw $t1, -13472($fp)
	li $t2, 0
	bne $t1, $t2, label651
	j label652
label651:
	li $t0, 1
	sw $t0, -13464($fp)
label652:
	lw $t0, -1784($fp)
	sw $t0, -13476($fp)
	li $t0, 0
	lw $t1, -13476($fp)
	sub $t0, $t0, $t1
	sw $t0, -13480($fp)
	li $t0, 32972
	sw $t0, -13484($fp)
	lw $t0, -3968($fp)
	sw $t0, -13488($fp)
	lw $t0, -13484($fp)
	lw $t1, -13488($fp)
	mul $t0, $t0, $t1
	sw $t0, -13492($fp)
	li $t0, 0
	lw $t1, -13492($fp)
	sub $t0, $t0, $t1
	sw $t0, -13496($fp)
	li $t0, 15286
	sw $t0, -13500($fp)
	lw $t0, -932($fp)
	sw $t0, -13504($fp)
	lw $t0, -13500($fp)
	lw $t1, -13504($fp)
	add $t0, $t0, $t1
	sw $t0, -13508($fp)
	addi $sp, $sp, -4
	lw $t0, -13436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13508($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13512($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -13512($fp)
	sub $t0, $t0, $t1
	sw $t0, -13516($fp)
	addi $sp, $sp, -4
	lw $t0, -13376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13516($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13520($fp)
	addi $sp, $sp, 24
	lw $t0, -12772($fp)
	sw $t0, -13524($fp)
	lw $t0, -13520($fp)
	lw $t1, -13524($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13528($fp)
	li $t0, 0
	sw $t0, -13532($fp)
	li $t0, 55222
	sw $t0, -13536($fp)
	lw $t1, -13536($fp)
	li $t2, 0
	bne $t1, $t2, label657
	j label655
label657:
	lw $t0, -2360($fp)
	sw $t0, -13540($fp)
	lw $t1, -13540($fp)
	li $t2, 0
	bne $t1, $t2, label656
	j label655
label656:
	li $t0, 47100
	sw $t0, -13544($fp)
	lw $t1, -13544($fp)
	li $t2, 0
	bne $t1, $t2, label654
	j label655
label654:
	li $t0, 1
	sw $t0, -13532($fp)
label655:
	li $t0, 0
	sw $t0, -13548($fp)
	li $t0, 30082
	sw $t0, -13552($fp)
	li $t0, 50702
	sw $t0, -13556($fp)
	lw $t1, -13552($fp)
	lw $t2, -13556($fp)
	bge $t1, $t2, label660
	j label659
label660:
	lw $t0, -12760($fp)
	sw $t0, -13560($fp)
	lw $t1, -13560($fp)
	li $t2, 0
	bne $t1, $t2, label658
	j label659
label658:
	li $t0, 1
	sw $t0, -13548($fp)
label659:
	addi $sp, $sp, -4
	lw $t0, -13352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13548($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13564($fp)
	addi $sp, $sp, 24
	lw $t1, -13564($fp)
	li $t2, 0
	bne $t1, $t2, label645
	j label644
label644:
	li $t0, 1
	sw $t0, -13336($fp)
label645:
	li $t0, 0
	sw $t0, -13568($fp)
	li $t0, 30979
	sw $t0, -13572($fp)
	lw $t1, -13572($fp)
	li $t2, 0
	bne $t1, $t2, label662
	j label661
label661:
	li $t0, 1
	sw $t0, -13568($fp)
label662:
	lw $t0, -13336($fp)
	lw $t1, -13568($fp)
	sub $t0, $t0, $t1
	sw $t0, -13576($fp)
	lw $t0, -2384($fp)
	sw $t0, -13580($fp)
	lw $t1, -13576($fp)
	lw $t2, -13580($fp)
	bne $t1, $t2, label642
	j label643
label642:
	addi $t0, $fp, -24
	sw $t0, -13584($fp)
	li $t0, 0
	sw $t0, -13588($fp)
	li $t0, 48236
	sw $t0, -13592($fp)
	lw $t1, -13592($fp)
	li $t2, 0
	bne $t1, $t2, label667
	j label666
label666:
	li $t0, 1
	sw $t0, -13588($fp)
label667:
	lw $t0, -2060($fp)
	sw $t0, -13596($fp)
	lw $t0, -13588($fp)
	lw $t1, -13596($fp)
	add $t0, $t0, $t1
	sw $t0, -13600($fp)
	addi $t0, $fp, -12612
	sw $t0, -13604($fp)
	lw $t0, -1508($fp)
	sw $t0, -13608($fp)
	li $t0, 4
	lw $t1, -13608($fp)
	mul $t0, $t0, $t1
	sw $t0, -13612($fp)
	lw $t0, -13612($fp)
	lw $t1, -13604($fp)
	add $t0, $t0, $t1
	sw $t0, -13616($fp)
	lw $t0, -13616($fp)
	lw $t1, 0($t0)
	sw $t1, -13620($fp)
	lw $t0, -13600($fp)
	lw $t1, -13620($fp)
	sub $t0, $t0, $t1
	sw $t0, -13624($fp)
	li $t0, 4
	lw $t1, -13624($fp)
	mul $t0, $t0, $t1
	sw $t0, -13628($fp)
	lw $t0, -13628($fp)
	lw $t1, -13584($fp)
	add $t0, $t0, $t1
	sw $t0, -13632($fp)
	lw $t0, -13632($fp)
	lw $t1, 0($t0)
	sw $t1, -13636($fp)
	lw $t1, -13636($fp)
	li $t2, 0
	bne $t1, $t2, label663
	j label664
label663:
	li $t0, 0
	sw $t0, -13640($fp)
	li $t0, 0
	sw $t0, -13644($fp)
	li $t0, 0
	sw $t0, -13648($fp)
	lw $t0, -1736($fp)
	sw $t0, -13652($fp)
	lw $t1, -13652($fp)
	li $t2, 0
	bne $t1, $t2, label675
	j label676
label675:
	li $t0, 1
	sw $t0, -13648($fp)
label676:
	lw $t0, -12784($fp)
	sw $t0, -13656($fp)
	lw $t1, -13648($fp)
	lw $t2, -13656($fp)
	bne $t1, $t2, label673
	j label674
label673:
	li $t0, 1
	sw $t0, -13644($fp)
label674:
	li $t0, 8325
	sw $t0, -13660($fp)
	lw $t1, -13644($fp)
	lw $t2, -13660($fp)
	beq $t1, $t2, label671
	j label672
label671:
	li $t0, 1
	sw $t0, -13640($fp)
label672:
	li $t0, 0
	sw $t0, -13664($fp)
	lw $t0, -1712($fp)
	sw $t0, -13668($fp)
	lw $t0, -1316($fp)
	sw $t0, -13672($fp)
	lw $t0, -13668($fp)
	lw $t1, -13672($fp)
	mul $t0, $t0, $t1
	sw $t0, -13676($fp)
	lw $t0, -1652($fp)
	sw $t0, -13680($fp)
	lw $t0, -13676($fp)
	lw $t1, -13680($fp)
	sub $t0, $t0, $t1
	sw $t0, -13684($fp)
	lw $t0, -2396($fp)
	sw $t0, -13688($fp)
	lw $t0, -3116($fp)
	sw $t0, -13692($fp)
	lw $t0, -13688($fp)
	lw $t1, -13692($fp)
	add $t0, $t0, $t1
	sw $t0, -13696($fp)
	lw $t1, -13684($fp)
	lw $t2, -13696($fp)
	bge $t1, $t2, label677
	j label678
label677:
	li $t0, 1
	sw $t0, -13664($fp)
label678:
	lw $t1, -13640($fp)
	lw $t2, -13664($fp)
	beq $t1, $t2, label668
	j label669
label668:
	li $t0, 37670
	sw $t0, -13700($fp)
	li $t0, 54473
	sw $t0, -13704($fp)
	lw $t0, -13700($fp)
	lw $t1, -13704($fp)
	mul $t0, $t0, $t1
	sw $t0, -13708($fp)
	li $t0, 0
	lw $t1, -13708($fp)
	sub $t0, $t0, $t1
	sw $t0, -13712($fp)
	lw $ra, -4($fp)
	lw $v0, -13712($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label670
label669:
	li $t0, 0
	sw $t0, -13716($fp)
	li $t0, 64377
	sw $t0, -13720($fp)
	addi $t0, $fp, -12644
	sw $t0, -13724($fp)
	lw $t0, -2048($fp)
	sw $t0, -13728($fp)
	li $t0, 4
	lw $t1, -13728($fp)
	mul $t0, $t0, $t1
	sw $t0, -13732($fp)
	lw $t0, -13732($fp)
	lw $t1, -13724($fp)
	add $t0, $t0, $t1
	sw $t0, -13736($fp)
	lw $t0, -13736($fp)
	lw $t1, 0($t0)
	sw $t1, -13740($fp)
	lw $t0, -13720($fp)
	lw $t1, -13740($fp)
	mul $t0, $t0, $t1
	sw $t0, -13744($fp)
	addi $t0, $fp, -240
	sw $t0, -13748($fp)
	lw $t0, -1304($fp)
	sw $t0, -13752($fp)
	li $t0, 4
	lw $t1, -13752($fp)
	mul $t0, $t0, $t1
	sw $t0, -13756($fp)
	lw $t0, -13756($fp)
	lw $t1, -13748($fp)
	add $t0, $t0, $t1
	sw $t0, -13760($fp)
	lw $t0, -13760($fp)
	lw $t1, 0($t0)
	sw $t1, -13764($fp)
	lw $t0, -13744($fp)
	lw $t1, -13764($fp)
	mul $t0, $t0, $t1
	sw $t0, -13768($fp)
	li $t0, 0
	sw $t0, -13772($fp)
	li $t0, 0
	sw $t0, -13776($fp)
	lw $t0, -12652($fp)
	sw $t0, -13780($fp)
	li $t0, 40960
	sw $t0, -13784($fp)
	lw $t1, -13780($fp)
	lw $t2, -13784($fp)
	bne $t1, $t2, label683
	j label685
label685:
	li $t0, 43823
	sw $t0, -13788($fp)
	lw $t1, -13788($fp)
	li $t2, 0
	bne $t1, $t2, label683
	j label684
label683:
	li $t0, 1
	sw $t0, -13776($fp)
label684:
	li $t0, 0
	sw $t0, -13792($fp)
	lw $t0, -968($fp)
	sw $t0, -13796($fp)
	lw $t1, -13796($fp)
	li $t2, 0
	bne $t1, $t2, label687
	j label686
label686:
	li $t0, 1
	sw $t0, -13792($fp)
label687:
	li $t0, 12229
	sw $t0, -13800($fp)
	lw $t0, -13792($fp)
	lw $t1, -13800($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13804($fp)
	li $t0, 0
	sw $t0, -13808($fp)
	li $t0, 57860
	sw $t0, -13812($fp)
	li $t0, 18031
	sw $t0, -13816($fp)
	lw $t1, -13812($fp)
	lw $t2, -13816($fp)
	bne $t1, $t2, label688
	j label690
label690:
	lw $t0, -2900($fp)
	sw $t0, -13820($fp)
	lw $t1, -13820($fp)
	li $t2, 0
	bne $t1, $t2, label688
	j label689
label688:
	li $t0, 1
	sw $t0, -13808($fp)
label689:
	li $t0, 0
	sw $t0, -13824($fp)
	lw $t0, -2864($fp)
	sw $t0, -13828($fp)
	li $t0, 30755
	sw $t0, -13832($fp)
	lw $t0, -13828($fp)
	lw $t1, -13832($fp)
	sub $t0, $t0, $t1
	sw $t0, -13836($fp)
	lw $t0, -584($fp)
	sw $t0, -13840($fp)
	lw $t1, -13836($fp)
	lw $t2, -13840($fp)
	beq $t1, $t2, label691
	j label692
label691:
	li $t0, 1
	sw $t0, -13824($fp)
label692:
	addi $t0, $fp, -280
	sw $t0, -13844($fp)
	li $t0, 1
	sw $t0, -13848($fp)
	li $t0, 4
	lw $t1, -13848($fp)
	mul $t0, $t0, $t1
	sw $t0, -13852($fp)
	lw $t0, -13852($fp)
	lw $t1, -13844($fp)
	add $t0, $t0, $t1
	sw $t0, -13856($fp)
	lw $t0, -13856($fp)
	lw $t1, 0($t0)
	sw $t1, -13860($fp)
	li $t0, 0
	lw $t1, -13860($fp)
	sub $t0, $t0, $t1
	sw $t0, -13864($fp)
	addi $sp, $sp, -4
	lw $t0, -13776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13864($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13868($fp)
	addi $sp, $sp, 24
	li $t0, 42312
	sw $t0, -13872($fp)
	lw $t0, -13868($fp)
	lw $t1, -13872($fp)
	sub $t0, $t0, $t1
	sw $t0, -13876($fp)
	li $t0, 26126
	sw $t0, -13880($fp)
	li $t0, 0
	lw $t1, -13880($fp)
	sub $t0, $t0, $t1
	sw $t0, -13884($fp)
	lw $t1, -13876($fp)
	lw $t2, -13884($fp)
	bge $t1, $t2, label681
	j label682
label681:
	li $t0, 1
	sw $t0, -13772($fp)
label682:
	lw $t1, -13768($fp)
	lw $t2, -13772($fp)
	bne $t1, $t2, label679
	j label680
label679:
	li $t0, 1
	sw $t0, -13716($fp)
label680:
	lw $ra, -4($fp)
	lw $v0, -13716($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label670:
	j label665
label664:
	li $t0, 33509
	sw $t0, -13888($fp)
	lw $t0, -13888($fp)
	sw $t0, -13892($fp)
	lw $t0, -13892($fp)
	sw $t0, -13896($fp)
	li $t0, 23876
	sw $t0, -13900($fp)
	lw $t0, -13900($fp)
	sw $t0, -13904($fp)
	lw $t0, -13904($fp)
	sw $t0, -13908($fp)
	li $t0, 41412
	sw $t0, -13912($fp)
	lw $t0, -13912($fp)
	sw $t0, -13916($fp)
	lw $t0, -13916($fp)
	sw $t0, -13920($fp)
	li $t0, 945
	sw $t0, -13924($fp)
	lw $t0, -13924($fp)
	sw $t0, -13928($fp)
	lw $t0, -13928($fp)
	sw $t0, -13932($fp)
	li $t0, 32788
	sw $t0, -13936($fp)
	lw $t0, -13936($fp)
	sw $t0, -13940($fp)
	lw $t0, -13940($fp)
	sw $t0, -13944($fp)
	li $t0, 39544
	sw $t0, -13948($fp)
	lw $t0, -13948($fp)
	sw $t0, -13952($fp)
	lw $t0, -13952($fp)
	sw $t0, -13956($fp)
	li $t0, 35050
	sw $t0, -13960($fp)
	lw $t0, -13960($fp)
	sw $t0, -13964($fp)
	lw $t0, -13964($fp)
	sw $t0, -13968($fp)
	li $t0, 0
	sw $t0, -13972($fp)
	li $t0, 0
	sw $t0, -13976($fp)
	addi $t0, $fp, -300
	sw $t0, -13980($fp)
	li $t0, 1
	sw $t0, -13984($fp)
	li $t0, 4
	lw $t1, -13984($fp)
	mul $t0, $t0, $t1
	sw $t0, -13988($fp)
	lw $t0, -13988($fp)
	lw $t1, -13980($fp)
	add $t0, $t0, $t1
	sw $t0, -13992($fp)
	lw $t0, -13992($fp)
	lw $t1, 0($t0)
	sw $t1, -13996($fp)
	lw $t1, -13996($fp)
	li $t2, 0
	bne $t1, $t2, label696
	j label695
label695:
	li $t0, 1
	sw $t0, -13976($fp)
label696:
	addi $t0, $fp, -460
	sw $t0, -14000($fp)
	li $t0, 1
	sw $t0, -14004($fp)
	li $t0, 4
	lw $t1, -14004($fp)
	mul $t0, $t0, $t1
	sw $t0, -14008($fp)
	lw $t0, -14008($fp)
	lw $t1, -14000($fp)
	add $t0, $t0, $t1
	sw $t0, -14012($fp)
	lw $t0, -14012($fp)
	lw $t1, 0($t0)
	sw $t1, -14016($fp)
	lw $t1, -13976($fp)
	lw $t2, -14016($fp)
	beq $t1, $t2, label693
	j label694
label693:
	li $t0, 1
	sw $t0, -13972($fp)
label694:
	lw $t0, -13972($fp)
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	sw $t0, -14020($fp)
	li $t0, 0
	sw $t0, -14024($fp)
	li $t0, 0
	sw $t0, -14028($fp)
	lw $t0, -1820($fp)
	sw $t0, -14032($fp)
	li $t0, 0
	lw $t1, -14032($fp)
	sub $t0, $t0, $t1
	sw $t0, -14036($fp)
	li $t0, 0
	lw $t1, -14036($fp)
	sub $t0, $t0, $t1
	sw $t0, -14040($fp)
	li $t0, 0
	sw $t0, -14044($fp)
	li $t0, 0
	sw $t0, -14048($fp)
	li $t0, 59029
	sw $t0, -14052($fp)
	li $t0, 39872
	sw $t0, -14056($fp)
	lw $t1, -14052($fp)
	lw $t2, -14056($fp)
	ble $t1, $t2, label703
	j label704
label703:
	li $t0, 1
	sw $t0, -14048($fp)
label704:
	lw $t0, -4244($fp)
	sw $t0, -14060($fp)
	lw $t1, -14048($fp)
	lw $t2, -14060($fp)
	beq $t1, $t2, label701
	j label702
label701:
	li $t0, 1
	sw $t0, -14044($fp)
label702:
	lw $t0, -1808($fp)
	sw $t0, -14064($fp)
	li $t0, 0
	sw $t0, -14068($fp)
	lw $t0, -13892($fp)
	sw $t0, -14072($fp)
	lw $t1, -14072($fp)
	li $t2, 0
	bne $t1, $t2, label705
	j label706
label705:
	li $t0, 1
	sw $t0, -14068($fp)
label706:
	li $t0, 0
	sw $t0, -14076($fp)
	lw $t0, -2024($fp)
	sw $t0, -14080($fp)
	li $t0, 13210
	sw $t0, -14084($fp)
	lw $t0, -14080($fp)
	lw $t1, -14084($fp)
	mul $t0, $t0, $t1
	sw $t0, -14088($fp)
	lw $t1, -14088($fp)
	li $t2, 0
	bne $t1, $t2, label709
	j label708
label709:
	li $t0, 39855
	sw $t0, -14092($fp)
	lw $t1, -14092($fp)
	li $t2, 0
	bne $t1, $t2, label707
	j label708
label707:
	li $t0, 1
	sw $t0, -14076($fp)
label708:
	addi $sp, $sp, -4
	lw $t0, -14040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14076($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14096($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -60
	sw $t0, -14100($fp)
	lw $t0, -1820($fp)
	sw $t0, -14104($fp)
	li $t0, 4
	lw $t1, -14104($fp)
	mul $t0, $t0, $t1
	sw $t0, -14108($fp)
	lw $t0, -14108($fp)
	lw $t1, -14100($fp)
	add $t0, $t0, $t1
	sw $t0, -14112($fp)
	lw $t0, -14112($fp)
	lw $t1, 0($t0)
	sw $t1, -14116($fp)
	lw $t1, -14096($fp)
	lw $t2, -14116($fp)
	bgt $t1, $t2, label699
	j label700
label699:
	li $t0, 1
	sw $t0, -14028($fp)
label700:
	li $t0, 0
	sw $t0, -14120($fp)
	lw $t0, -3116($fp)
	sw $t0, -14124($fp)
	lw $t0, -13916($fp)
	sw $t0, -14128($fp)
	lw $t0, -14124($fp)
	lw $t1, -14128($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -14132($fp)
	addi $t0, $fp, -240
	sw $t0, -14136($fp)
	lw $t0, -13904($fp)
	sw $t0, -14140($fp)
	li $t0, 4
	lw $t1, -14140($fp)
	mul $t0, $t0, $t1
	sw $t0, -14144($fp)
	lw $t0, -14144($fp)
	lw $t1, -14136($fp)
	add $t0, $t0, $t1
	sw $t0, -14148($fp)
	lw $t0, -14148($fp)
	lw $t1, 0($t0)
	sw $t1, -14152($fp)
	li $t0, 0
	sw $t0, -14156($fp)
	li $t0, 19340
	sw $t0, -14160($fp)
	lw $t0, -2900($fp)
	sw $t0, -14164($fp)
	lw $t0, -14160($fp)
	lw $t1, -14164($fp)
	add $t0, $t0, $t1
	sw $t0, -14168($fp)
	lw $t0, -2072($fp)
	sw $t0, -14172($fp)
	lw $t1, -14168($fp)
	lw $t2, -14172($fp)
	bgt $t1, $t2, label712
	j label713
label712:
	li $t0, 1
	sw $t0, -14156($fp)
label713:
	li $t0, 0
	sw $t0, -14176($fp)
	li $t0, 30667
	sw $t0, -14180($fp)
	lw $t1, -14180($fp)
	li $t2, 0
	bne $t1, $t2, label717
	j label715
label717:
	li $t0, 47039
	sw $t0, -14184($fp)
	lw $t1, -14184($fp)
	li $t2, 0
	bne $t1, $t2, label716
	j label715
label716:
	li $t0, 3393
	sw $t0, -14188($fp)
	lw $t1, -14188($fp)
	li $t2, 0
	bne $t1, $t2, label714
	j label715
label714:
	li $t0, 1
	sw $t0, -14176($fp)
label715:
	li $t0, 5298
	sw $t0, -14192($fp)
	li $t0, 41730
	sw $t0, -14196($fp)
	lw $t0, -14192($fp)
	lw $t1, -14196($fp)
	mul $t0, $t0, $t1
	sw $t0, -14200($fp)
	li $t0, 48198
	sw $t0, -14204($fp)
	lw $t0, -14200($fp)
	lw $t1, -14204($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -14208($fp)
	addi $sp, $sp, -4
	lw $t0, -14208($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -14212($fp)
	addi $sp, $sp, 8
	li $t0, 42968
	sw $t0, -14216($fp)
	lw $t0, -14212($fp)
	lw $t1, -14216($fp)
	add $t0, $t0, $t1
	sw $t0, -14220($fp)
	addi $sp, $sp, -4
	lw $t0, -14132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14220($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14224($fp)
	addi $sp, $sp, 24
	lw $t1, -14224($fp)
	li $t2, 0
	bne $t1, $t2, label711
	j label710
label710:
	li $t0, 1
	sw $t0, -14120($fp)
label711:
	lw $t1, -14028($fp)
	lw $t2, -14120($fp)
	bne $t1, $t2, label697
	j label698
label697:
	li $t0, 1
	sw $t0, -14024($fp)
label698:
	li $t0, 0
	sw $t0, -14228($fp)
	li $t0, 12259
	sw $t0, -14232($fp)
	lw $t1, -14232($fp)
	li $t2, 0
	bne $t1, $t2, label720
	j label718
label720:
	lw $t0, -692($fp)
	sw $t0, -14236($fp)
	li $t0, 0
	sw $t0, -14240($fp)
	li $t0, 15658
	sw $t0, -14244($fp)
	lw $t1, -14244($fp)
	li $t2, 0
	bne $t1, $t2, label724
	j label722
label724:
	lw $t0, -13940($fp)
	sw $t0, -14248($fp)
	lw $t1, -14248($fp)
	li $t2, 0
	bne $t1, $t2, label723
	j label722
label723:
	li $t0, 1264
	sw $t0, -14252($fp)
	lw $t1, -14252($fp)
	li $t2, 0
	bne $t1, $t2, label721
	j label722
label721:
	li $t0, 1
	sw $t0, -14240($fp)
label722:
	li $t0, 0
	sw $t0, -14256($fp)
	li $t0, 24488
	sw $t0, -14260($fp)
	li $t0, 36678
	sw $t0, -14264($fp)
	lw $t1, -14260($fp)
	lw $t2, -14264($fp)
	beq $t1, $t2, label725
	j label727
label727:
	lw $t0, -13928($fp)
	sw $t0, -14268($fp)
	lw $t1, -14268($fp)
	li $t2, 0
	bne $t1, $t2, label725
	j label726
label725:
	li $t0, 1
	sw $t0, -14256($fp)
label726:
	li $t0, 0
	sw $t0, -14272($fp)
	lw $t0, -13916($fp)
	sw $t0, -14276($fp)
	lw $t1, -14276($fp)
	li $t2, 0
	bne $t1, $t2, label729
	j label728
label728:
	li $t0, 1
	sw $t0, -14272($fp)
label729:
	li $t0, 37371
	sw $t0, -14280($fp)
	lw $t0, -14272($fp)
	lw $t1, -14280($fp)
	mul $t0, $t0, $t1
	sw $t0, -14284($fp)
	li $t0, 0
	sw $t0, -14288($fp)
	lw $t0, -1796($fp)
	sw $t0, -14292($fp)
	li $t0, 61254
	sw $t0, -14296($fp)
	lw $t0, -14292($fp)
	lw $t1, -14296($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -14300($fp)
	lw $t0, -1832($fp)
	sw $t0, -14304($fp)
	lw $t1, -14300($fp)
	lw $t2, -14304($fp)
	bgt $t1, $t2, label730
	j label731
label730:
	li $t0, 1
	sw $t0, -14288($fp)
label731:
	addi $sp, $sp, -4
	lw $t0, -14236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14288($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14308($fp)
	addi $sp, $sp, 24
	lw $t1, -14308($fp)
	li $t2, 0
	bne $t1, $t2, label718
	j label719
label718:
	li $t0, 1
	sw $t0, -14228($fp)
label719:
	li $t0, 0
	sw $t0, -14312($fp)
	lw $t0, -13916($fp)
	sw $t0, -14316($fp)
	lw $t0, -1724($fp)
	sw $t0, -14320($fp)
	lw $t1, -14316($fp)
	lw $t2, -14320($fp)
	ble $t1, $t2, label732
	j label733
label732:
	li $t0, 1
	sw $t0, -14312($fp)
label733:
	addi $sp, $sp, -4
	lw $t0, -14312($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -14324($fp)
	addi $sp, $sp, 8
	li $t0, 62804
	sw $t0, -14328($fp)
	lw $t0, -14324($fp)
	lw $t1, -14328($fp)
	mul $t0, $t0, $t1
	sw $t0, -14332($fp)
	lw $t0, -1844($fp)
	sw $t0, -14336($fp)
	lw $t0, -13952($fp)
	sw $t0, -14340($fp)
	lw $t0, -14336($fp)
	lw $t1, -14340($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -14344($fp)
	lw $t0, -13964($fp)
	sw $t0, -14348($fp)
	lw $t0, -14344($fp)
	lw $t1, -14348($fp)
	sub $t0, $t0, $t1
	sw $t0, -14352($fp)
	lw $t0, -2372($fp)
	sw $t0, -14356($fp)
	li $t0, 38681
	sw $t0, -14360($fp)
	lw $t0, -2864($fp)
	sw $t0, -14364($fp)
	lw $t0, -14360($fp)
	lw $t1, -14364($fp)
	mul $t0, $t0, $t1
	sw $t0, -14368($fp)
	li $t0, 0
	sw $t0, -14372($fp)
	li $t0, 49167
	sw $t0, -14376($fp)
	lw $t1, -14376($fp)
	li $t2, 0
	bne $t1, $t2, label736
	j label735
label736:
	li $t0, 25141
	sw $t0, -14380($fp)
	lw $t1, -14380($fp)
	li $t2, 0
	bne $t1, $t2, label734
	j label735
label734:
	li $t0, 1
	sw $t0, -14372($fp)
label735:
	addi $sp, $sp, -4
	lw $t0, -14372($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -14384($fp)
	addi $sp, $sp, 8
	lw $t0, -1580($fp)
	sw $t0, -14388($fp)
	lw $t0, -14388($fp)
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, -14392($fp)
	addi $sp, $sp, -4
	lw $t0, -14352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14392($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14396($fp)
	addi $sp, $sp, 24
	lw $t0, -1508($fp)
	sw $t0, -14400($fp)
	li $t0, 0
	lw $t1, -14400($fp)
	sub $t0, $t0, $t1
	sw $t0, -14404($fp)
	lw $t0, -14396($fp)
	lw $t1, -14404($fp)
	mul $t0, $t0, $t1
	sw $t0, -14408($fp)
	lw $t0, -14332($fp)
	lw $t1, -14408($fp)
	sub $t0, $t0, $t1
	sw $t0, -14412($fp)
label665:
	j label641
label643:
	lw $t0, -12652($fp)
	sw $t0, -14416($fp)
	lw $t0, -14416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12612
	sw $t0, -14420($fp)
	li $t0, 0
	sw $t0, -14424($fp)
	li $t0, 4
	lw $t1, -14424($fp)
	mul $t0, $t0, $t1
	sw $t0, -14428($fp)
	lw $t0, -14428($fp)
	lw $t1, -14420($fp)
	add $t0, $t0, $t1
	sw $t0, -14432($fp)
	lw $t0, -14432($fp)
	lw $t1, 0($t0)
	sw $t1, -14436($fp)
	lw $t0, -14436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12612
	sw $t0, -14440($fp)
	li $t0, 1
	sw $t0, -14444($fp)
	li $t0, 4
	lw $t1, -14444($fp)
	mul $t0, $t0, $t1
	sw $t0, -14448($fp)
	lw $t0, -14448($fp)
	lw $t1, -14440($fp)
	add $t0, $t0, $t1
	sw $t0, -14452($fp)
	lw $t0, -14452($fp)
	lw $t1, 0($t0)
	sw $t1, -14456($fp)
	lw $t0, -14456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12612
	sw $t0, -14460($fp)
	li $t0, 2
	sw $t0, -14464($fp)
	li $t0, 4
	lw $t1, -14464($fp)
	mul $t0, $t0, $t1
	sw $t0, -14468($fp)
	lw $t0, -14468($fp)
	lw $t1, -14460($fp)
	add $t0, $t0, $t1
	sw $t0, -14472($fp)
	lw $t0, -14472($fp)
	lw $t1, 0($t0)
	sw $t1, -14476($fp)
	lw $t0, -14476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12612
	sw $t0, -14480($fp)
	li $t0, 3
	sw $t0, -14484($fp)
	li $t0, 4
	lw $t1, -14484($fp)
	mul $t0, $t0, $t1
	sw $t0, -14488($fp)
	lw $t0, -14488($fp)
	lw $t1, -14480($fp)
	add $t0, $t0, $t1
	sw $t0, -14492($fp)
	lw $t0, -14492($fp)
	lw $t1, 0($t0)
	sw $t1, -14496($fp)
	lw $t0, -14496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12760($fp)
	sw $t0, -14500($fp)
	lw $t0, -14500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12772($fp)
	sw $t0, -14504($fp)
	lw $t0, -14504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12784($fp)
	sw $t0, -14508($fp)
	lw $t0, -14508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12644
	sw $t0, -14512($fp)
	li $t0, 0
	sw $t0, -14516($fp)
	li $t0, 4
	lw $t1, -14516($fp)
	mul $t0, $t0, $t1
	sw $t0, -14520($fp)
	lw $t0, -14520($fp)
	lw $t1, -14512($fp)
	add $t0, $t0, $t1
	sw $t0, -14524($fp)
	lw $t0, -14524($fp)
	lw $t1, 0($t0)
	sw $t1, -14528($fp)
	lw $t0, -14528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12644
	sw $t0, -14532($fp)
	li $t0, 1
	sw $t0, -14536($fp)
	li $t0, 4
	lw $t1, -14536($fp)
	mul $t0, $t0, $t1
	sw $t0, -14540($fp)
	lw $t0, -14540($fp)
	lw $t1, -14532($fp)
	add $t0, $t0, $t1
	sw $t0, -14544($fp)
	lw $t0, -14544($fp)
	lw $t1, 0($t0)
	sw $t1, -14548($fp)
	lw $t0, -14548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12644
	sw $t0, -14552($fp)
	li $t0, 2
	sw $t0, -14556($fp)
	li $t0, 4
	lw $t1, -14556($fp)
	mul $t0, $t0, $t1
	sw $t0, -14560($fp)
	lw $t0, -14560($fp)
	lw $t1, -14552($fp)
	add $t0, $t0, $t1
	sw $t0, -14564($fp)
	lw $t0, -14564($fp)
	lw $t1, 0($t0)
	sw $t1, -14568($fp)
	lw $t0, -14568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12644
	sw $t0, -14572($fp)
	li $t0, 3
	sw $t0, -14576($fp)
	li $t0, 4
	lw $t1, -14576($fp)
	mul $t0, $t0, $t1
	sw $t0, -14580($fp)
	lw $t0, -14580($fp)
	lw $t1, -14572($fp)
	add $t0, $t0, $t1
	sw $t0, -14584($fp)
	lw $t0, -14584($fp)
	lw $t1, 0($t0)
	sw $t1, -14588($fp)
	lw $t0, -14588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12644
	sw $t0, -14592($fp)
	li $t0, 4
	sw $t0, -14596($fp)
	li $t0, 4
	lw $t1, -14596($fp)
	mul $t0, $t0, $t1
	sw $t0, -14600($fp)
	lw $t0, -14600($fp)
	lw $t1, -14592($fp)
	add $t0, $t0, $t1
	sw $t0, -14604($fp)
	lw $t0, -14604($fp)
	lw $t1, 0($t0)
	sw $t1, -14608($fp)
	lw $t0, -14608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12644
	sw $t0, -14612($fp)
	li $t0, 5
	sw $t0, -14616($fp)
	li $t0, 4
	lw $t1, -14616($fp)
	mul $t0, $t0, $t1
	sw $t0, -14620($fp)
	lw $t0, -14620($fp)
	lw $t1, -14612($fp)
	add $t0, $t0, $t1
	sw $t0, -14624($fp)
	lw $t0, -14624($fp)
	lw $t1, 0($t0)
	sw $t1, -14628($fp)
	lw $t0, -14628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12644
	sw $t0, -14632($fp)
	li $t0, 6
	sw $t0, -14636($fp)
	li $t0, 4
	lw $t1, -14636($fp)
	mul $t0, $t0, $t1
	sw $t0, -14640($fp)
	lw $t0, -14640($fp)
	lw $t1, -14632($fp)
	add $t0, $t0, $t1
	sw $t0, -14644($fp)
	lw $t0, -14644($fp)
	lw $t1, 0($t0)
	sw $t1, -14648($fp)
	lw $t0, -14648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12644
	sw $t0, -14652($fp)
	li $t0, 7
	sw $t0, -14656($fp)
	li $t0, 4
	lw $t1, -14656($fp)
	mul $t0, $t0, $t1
	sw $t0, -14660($fp)
	lw $t0, -14660($fp)
	lw $t1, -14652($fp)
	add $t0, $t0, $t1
	sw $t0, -14664($fp)
	lw $t0, -14664($fp)
	lw $t1, 0($t0)
	sw $t1, -14668($fp)
	lw $t0, -14668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -14672($fp)
	li $t0, 0
	sw $t0, -14676($fp)
	addi $t0, $fp, -164
	sw $t0, -14680($fp)
	li $t0, 0
	sw $t0, -14684($fp)
	li $t0, 50113
	sw $t0, -14688($fp)
	lw $t0, -3104($fp)
	sw $t0, -14692($fp)
	lw $t1, -14688($fp)
	lw $t2, -14692($fp)
	beq $t1, $t2, label741
	j label742
label741:
	li $t0, 1
	sw $t0, -14684($fp)
label742:
	li $t0, 4
	lw $t1, -14684($fp)
	mul $t0, $t0, $t1
	sw $t0, -14696($fp)
	lw $t0, -14696($fp)
	lw $t1, -14680($fp)
	add $t0, $t0, $t1
	sw $t0, -14700($fp)
	lw $t0, -14700($fp)
	lw $t1, 0($t0)
	sw $t1, -14704($fp)
	lw $t1, -14704($fp)
	li $t2, 0
	bne $t1, $t2, label740
	j label739
label739:
	li $t0, 1
	sw $t0, -14676($fp)
label740:
	li $t0, 0
	sw $t0, -14708($fp)
	lw $t0, -2048($fp)
	sw $t0, -14712($fp)
	li $t0, 59029
	sw $t0, -14716($fp)
	lw $t0, -14712($fp)
	lw $t1, -14716($fp)
	mul $t0, $t0, $t1
	sw $t0, -14720($fp)
	lw $t0, -1700($fp)
	sw $t0, -14724($fp)
	lw $t1, -14720($fp)
	lw $t2, -14724($fp)
	beq $t1, $t2, label743
	j label744
label743:
	li $t0, 1
	sw $t0, -14708($fp)
label744:
	lw $t0, -3908($fp)
	sw $t0, -14728($fp)
	li $t0, 0
	sw $t0, -14732($fp)
	addi $t0, $fp, -60
	sw $t0, -14736($fp)
	lw $t0, -2000($fp)
	sw $t0, -14740($fp)
	li $t0, 4
	lw $t1, -14740($fp)
	mul $t0, $t0, $t1
	sw $t0, -14744($fp)
	lw $t0, -14744($fp)
	lw $t1, -14736($fp)
	add $t0, $t0, $t1
	sw $t0, -14748($fp)
	lw $t0, -14748($fp)
	lw $t1, 0($t0)
	sw $t1, -14752($fp)
	lw $t1, -14752($fp)
	li $t2, 0
	bne $t1, $t2, label746
	j label745
label745:
	li $t0, 1
	sw $t0, -14732($fp)
label746:
	addi $t0, $fp, -504
	sw $t0, -14756($fp)
	li $t0, 1
	sw $t0, -14760($fp)
	li $t0, 4
	lw $t1, -14760($fp)
	mul $t0, $t0, $t1
	sw $t0, -14764($fp)
	lw $t0, -14764($fp)
	lw $t1, -14756($fp)
	add $t0, $t0, $t1
	sw $t0, -14768($fp)
	lw $t0, -14768($fp)
	lw $t1, 0($t0)
	sw $t1, -14772($fp)
	li $t0, 23632
	sw $t0, -14776($fp)
	lw $t0, -14772($fp)
	lw $t1, -14776($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -14780($fp)
	li $t0, 57929
	sw $t0, -14784($fp)
	addi $sp, $sp, -4
	lw $t0, -14708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14784($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14788($fp)
	addi $sp, $sp, 24
	lw $t0, -1796($fp)
	sw $t0, -14792($fp)
	lw $t0, -14788($fp)
	lw $t1, -14792($fp)
	sub $t0, $t0, $t1
	sw $t0, -14796($fp)
	li $t0, 59328
	sw $t0, -14800($fp)
	lw $t0, -14796($fp)
	lw $t1, -14800($fp)
	sub $t0, $t0, $t1
	sw $t0, -14804($fp)
	lw $t1, -14676($fp)
	lw $t2, -14804($fp)
	ble $t1, $t2, label737
	j label738
label737:
	li $t0, 1
	sw $t0, -14672($fp)
label738:
	lw $ra, -4($fp)
	lw $v0, -14672($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 47577
	sw $t0, -14808($fp)
	lw $t0, -14808($fp)
	sw $t0, -14812($fp)
	lw $t0, -14812($fp)
	sw $t0, -14816($fp)
	lw $t0, -2960($fp)
	sw $t0, -14820($fp)
	li $t0, 0
	lw $t1, -14820($fp)
	sub $t0, $t0, $t1
	sw $t0, -14824($fp)
	li $t0, 6703
	sw $t0, -14828($fp)
	lw $t0, -14824($fp)
	lw $t1, -14828($fp)
	add $t0, $t0, $t1
	sw $t0, -14832($fp)
	li $t0, 17265
	sw $t0, -14836($fp)
	li $t0, 0
	sw $t0, -14840($fp)
	li $t0, 38946
	sw $t0, -14844($fp)
	lw $t0, -2024($fp)
	sw $t0, -14848($fp)
	lw $t0, -14844($fp)
	lw $t1, -14848($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -14852($fp)
	addi $sp, $sp, -4
	lw $t0, -14852($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -14856($fp)
	addi $sp, $sp, 8
	lw $t1, -14856($fp)
	li $t2, 0
	bne $t1, $t2, label747
	j label749
label749:
	lw $t0, -2036($fp)
	sw $t0, -14860($fp)
	lw $t1, -14860($fp)
	li $t2, 0
	bne $t1, $t2, label747
	j label748
label747:
	li $t0, 1
	sw $t0, -14840($fp)
label748:
	li $t0, 0
	sw $t0, -14864($fp)
	lw $t0, -2012($fp)
	sw $t0, -14868($fp)
	lw $t0, -14812($fp)
	sw $t0, -14872($fp)
	lw $t0, -14868($fp)
	lw $t1, -14872($fp)
	sub $t0, $t0, $t1
	sw $t0, -14876($fp)
	lw $t0, -1796($fp)
	sw $t0, -14880($fp)
	lw $t1, -14876($fp)
	lw $t2, -14880($fp)
	bgt $t1, $t2, label750
	j label751
label750:
	li $t0, 1
	sw $t0, -14864($fp)
label751:
	li $t0, 0
	sw $t0, -14884($fp)
	lw $t0, -1844($fp)
	sw $t0, -14888($fp)
	lw $t1, -14888($fp)
	li $t2, 0
	bne $t1, $t2, label753
	j label752
label752:
	li $t0, 1
	sw $t0, -14884($fp)
label753:
	li $t0, 0
	lw $t1, -14884($fp)
	sub $t0, $t0, $t1
	sw $t0, -14892($fp)
	li $t0, 0
	sw $t0, -14896($fp)
	li $t0, 0
	sw $t0, -14900($fp)
	li $t0, 33647
	sw $t0, -14904($fp)
	li $t0, 41071
	sw $t0, -14908($fp)
	lw $t1, -14904($fp)
	lw $t2, -14908($fp)
	bge $t1, $t2, label756
	j label757
label756:
	li $t0, 1
	sw $t0, -14900($fp)
label757:
	li $t0, 46576
	sw $t0, -14912($fp)
	lw $t1, -14900($fp)
	lw $t2, -14912($fp)
	ble $t1, $t2, label754
	j label755
label754:
	li $t0, 1
	sw $t0, -14896($fp)
label755:
	addi $sp, $sp, -4
	lw $t0, -14836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14896($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14916($fp)
	addi $sp, $sp, 24
	lw $t0, -14832($fp)
	lw $t1, -14916($fp)
	sub $t0, $t0, $t1
	sw $t0, -14920($fp)
	lw $t0, -14920($fp)
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	sw $t0, -14924($fp)
	lw $t0, -2048($fp)
	sw $t0, -14928($fp)
	li $t0, 0
	sw $t0, -14932($fp)
	lw $t0, -2900($fp)
	sw $t0, -14936($fp)
	lw $t1, -14936($fp)
	li $t2, 0
	bne $t1, $t2, label759
	j label758
label758:
	li $t0, 1
	sw $t0, -14932($fp)
label759:
	li $t0, 29238
	sw $t0, -14940($fp)
	lw $t0, -14932($fp)
	lw $t1, -14940($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -14944($fp)
	lw $t0, -2060($fp)
	sw $t0, -14948($fp)
	lw $t0, -2360($fp)
	sw $t0, -14952($fp)
	lw $t0, -14948($fp)
	lw $t1, -14952($fp)
	sub $t0, $t0, $t1
	sw $t0, -14956($fp)
	lw $t0, -3992($fp)
	sw $t0, -14960($fp)
	li $t0, 0
	sw $t0, -14964($fp)
	li $t0, 16378
	sw $t0, -14968($fp)
	lw $t1, -14968($fp)
	li $t2, 0
	bne $t1, $t2, label761
	j label760
label760:
	li $t0, 1
	sw $t0, -14964($fp)
label761:
	li $t0, 0
	lw $t1, -14964($fp)
	sub $t0, $t0, $t1
	sw $t0, -14972($fp)
	li $t0, 0
	sw $t0, -14976($fp)
	li $t0, 0
	sw $t0, -14980($fp)
	li $t0, 0
	sw $t0, -14984($fp)
	li $t0, 47932
	sw $t0, -14988($fp)
	li $t0, 10741
	sw $t0, -14992($fp)
	lw $t1, -14988($fp)
	lw $t2, -14992($fp)
	bgt $t1, $t2, label767
	j label768
label767:
	li $t0, 1
	sw $t0, -14984($fp)
label768:
	li $t0, 0
	sw $t0, -14996($fp)
	li $t0, 19772
	sw $t0, -15000($fp)
	li $t0, 1736
	sw $t0, -15004($fp)
	lw $t1, -15000($fp)
	lw $t2, -15004($fp)
	beq $t1, $t2, label769
	j label771
label771:
	li $t0, 23000
	sw $t0, -15008($fp)
	lw $t1, -15008($fp)
	li $t2, 0
	bne $t1, $t2, label769
	j label770
label769:
	li $t0, 1
	sw $t0, -14996($fp)
label770:
	addi $sp, $sp, -4
	lw $t0, -14996($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -15012($fp)
	addi $sp, $sp, 8
	lw $t1, -14984($fp)
	lw $t2, -15012($fp)
	bgt $t1, $t2, label765
	j label766
label765:
	li $t0, 1
	sw $t0, -14980($fp)
label766:
	li $t0, 0
	sw $t0, -15016($fp)
	li $t0, 15490
	sw $t0, -15020($fp)
	lw $t1, -15020($fp)
	li $t2, 0
	bne $t1, $t2, label772
	j label773
label772:
	li $t0, 1
	sw $t0, -15016($fp)
label773:
	lw $t1, -14980($fp)
	lw $t2, -15016($fp)
	bne $t1, $t2, label764
	j label763
label764:
	li $t0, 0
	sw $t0, -15024($fp)
	lw $t0, -2072($fp)
	sw $t0, -15028($fp)
	lw $t1, -15028($fp)
	li $t2, 0
	bne $t1, $t2, label775
	j label774
label774:
	li $t0, 1
	sw $t0, -15024($fp)
label775:
	lw $t0, -4232($fp)
	sw $t0, -15032($fp)
	lw $t0, -3956($fp)
	sw $t0, -15036($fp)
	lw $t0, -15032($fp)
	lw $t1, -15036($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15040($fp)
	lw $t0, -15024($fp)
	lw $t1, -15040($fp)
	add $t0, $t0, $t1
	sw $t0, -15044($fp)
	lw $t1, -15044($fp)
	li $t2, 0
	bne $t1, $t2, label762
	j label763
label762:
	li $t0, 1
	sw $t0, -14976($fp)
label763:
	addi $t0, $fp, -12612
	sw $t0, -15048($fp)
	li $t0, 0
	sw $t0, -15052($fp)
	li $t0, 0
	sw $t0, -15056($fp)
	addi $t0, $fp, -180
	sw $t0, -15060($fp)
	li $t0, 1
	sw $t0, -15064($fp)
	li $t0, 4
	lw $t1, -15064($fp)
	mul $t0, $t0, $t1
	sw $t0, -15068($fp)
	lw $t0, -15068($fp)
	lw $t1, -15060($fp)
	add $t0, $t0, $t1
	sw $t0, -15072($fp)
	lw $t0, -15072($fp)
	lw $t1, 0($t0)
	sw $t1, -15076($fp)
	lw $t0, -2864($fp)
	sw $t0, -15080($fp)
	lw $t1, -15076($fp)
	lw $t2, -15080($fp)
	beq $t1, $t2, label778
	j label779
label778:
	li $t0, 1
	sw $t0, -15056($fp)
label779:
	li $t0, 52168
	sw $t0, -15084($fp)
	li $t0, 54766
	sw $t0, -15088($fp)
	lw $t0, -15084($fp)
	lw $t1, -15088($fp)
	sub $t0, $t0, $t1
	sw $t0, -15092($fp)
	lw $t1, -15056($fp)
	lw $t2, -15092($fp)
	bne $t1, $t2, label776
	j label777
label776:
	li $t0, 1
	sw $t0, -15052($fp)
label777:
	li $t0, 4
	lw $t1, -15052($fp)
	mul $t0, $t0, $t1
	sw $t0, -15096($fp)
	lw $t0, -15096($fp)
	lw $t1, -15048($fp)
	add $t0, $t0, $t1
	sw $t0, -15100($fp)
	lw $t0, -15100($fp)
	lw $t1, 0($t0)
	sw $t1, -15104($fp)
	addi $t0, $fp, -12644
	sw $t0, -15108($fp)
	lw $t0, -2180($fp)
	sw $t0, -15112($fp)
	li $t0, 48753
	sw $t0, -15116($fp)
	lw $t0, -15112($fp)
	lw $t1, -15116($fp)
	mul $t0, $t0, $t1
	sw $t0, -15120($fp)
	li $t0, 49436
	sw $t0, -15124($fp)
	lw $t0, -15120($fp)
	lw $t1, -15124($fp)
	add $t0, $t0, $t1
	sw $t0, -15128($fp)
	li $t0, 4
	lw $t1, -15128($fp)
	mul $t0, $t0, $t1
	sw $t0, -15132($fp)
	lw $t0, -15132($fp)
	lw $t1, -15108($fp)
	add $t0, $t0, $t1
	sw $t0, -15136($fp)
	lw $t0, -15136($fp)
	lw $t1, 0($t0)
	sw $t1, -15140($fp)
	li $t0, 0
	sw $t0, -15144($fp)
	lw $t0, -2192($fp)
	sw $t0, -15148($fp)
	lw $t1, -15148($fp)
	li $t2, 0
	bne $t1, $t2, label781
	j label780
label780:
	li $t0, 1
	sw $t0, -15144($fp)
label781:
	li $t0, 38397
	sw $t0, -15152($fp)
	lw $t0, -15144($fp)
	lw $t1, -15152($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15156($fp)
	addi $sp, $sp, -4
	lw $t0, -15156($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -15160($fp)
	addi $sp, $sp, 8
	lw $t0, -15140($fp)
	lw $t1, -15160($fp)
	mul $t0, $t0, $t1
	sw $t0, -15164($fp)
	li $t0, 0
	sw $t0, -15168($fp)
	li $t0, 8358
	sw $t0, -15172($fp)
	lw $t1, -15172($fp)
	li $t2, 0
	bne $t1, $t2, label782
	j label784
label784:
	li $t0, 22581
	sw $t0, -15176($fp)
	lw $t1, -15176($fp)
	li $t2, 0
	bne $t1, $t2, label783
	j label782
label782:
	li $t0, 1
	sw $t0, -15168($fp)
label783:
	lw $t0, -15168($fp)
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	sw $t0, -15180($fp)
	j label622
label624:
	li $t0, 0
	sw $t0, -15184($fp)
	li $t0, 0
	sw $t0, -15188($fp)
	lw $t0, -1772($fp)
	sw $t0, -15192($fp)
	lw $t1, -15192($fp)
	li $t2, 0
	bne $t1, $t2, label789
	j label788
label788:
	li $t0, 1
	sw $t0, -15188($fp)
label789:
	li $t0, 0
	lw $t1, -15188($fp)
	sub $t0, $t0, $t1
	sw $t0, -15196($fp)
	li $t0, 0
	lw $t1, -15196($fp)
	sub $t0, $t0, $t1
	sw $t0, -15200($fp)
	lw $t1, -15200($fp)
	li $t2, 0
	bne $t1, $t2, label785
	j label787
label787:
	addi $t0, $fp, -204
	sw $t0, -15204($fp)
	li $t0, 2
	sw $t0, -15208($fp)
	li $t0, 4
	lw $t1, -15208($fp)
	mul $t0, $t0, $t1
	sw $t0, -15212($fp)
	lw $t0, -15212($fp)
	lw $t1, -15204($fp)
	add $t0, $t0, $t1
	sw $t0, -15216($fp)
	lw $t0, -15216($fp)
	lw $t1, 0($t0)
	sw $t1, -15220($fp)
	lw $t1, -15220($fp)
	li $t2, 0
	bne $t1, $t2, label786
	j label785
label785:
	li $t0, 1
	sw $t0, -15184($fp)
label786:
	li $t0, 0
	sw $t0, -15224($fp)
	lw $t0, -3104($fp)
	sw $t0, -15228($fp)
	li $t0, 35270
	sw $t0, -15232($fp)
	lw $t0, -1736($fp)
	sw $t0, -15236($fp)
	lw $t0, -15232($fp)
	lw $t1, -15236($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15240($fp)
	li $t0, 42602
	sw $t0, -15244($fp)
	lw $t0, -15240($fp)
	lw $t1, -15244($fp)
	mul $t0, $t0, $t1
	sw $t0, -15248($fp)
	lw $t1, -15228($fp)
	lw $t2, -15248($fp)
	bgt $t1, $t2, label793
	j label794
label793:
	li $t0, 1
	sw $t0, -15224($fp)
label794:
	lw $t0, -2348($fp)
	sw $t0, -15252($fp)
	lw $t1, -15224($fp)
	lw $t2, -15252($fp)
	blt $t1, $t2, label790
	j label791
label790:
	li $t0, 24384
	sw $t0, -15256($fp)
	lw $t0, -15256($fp)
	sw $t0, -15260($fp)
	lw $t0, -15260($fp)
	sw $t0, -15264($fp)
	li $t0, 28764
	sw $t0, -15268($fp)
	lw $t0, -15268($fp)
	sw $t0, -15272($fp)
	lw $t0, -15272($fp)
	sw $t0, -15276($fp)
	li $t0, 36394
	sw $t0, -15280($fp)
	lw $t0, -15280($fp)
	sw $t0, -15284($fp)
	lw $t0, -15284($fp)
	sw $t0, -15288($fp)
	li $t0, 6426
	sw $t0, -15292($fp)
	lw $t0, -15292($fp)
	sw $t0, -15296($fp)
	lw $t0, -15296($fp)
	sw $t0, -15300($fp)
	li $t0, 35467
	sw $t0, -15304($fp)
	lw $t0, -15304($fp)
	sw $t0, -15308($fp)
	lw $t0, -15308($fp)
	sw $t0, -15312($fp)
	li $t0, 4506
	sw $t0, -15316($fp)
	lw $t0, -15316($fp)
	sw $t0, -15320($fp)
	lw $t0, -15320($fp)
	sw $t0, -15324($fp)
	li $t0, 47497
	sw $t0, -15328($fp)
	lw $t0, -15328($fp)
	sw $t0, -15332($fp)
	lw $t0, -15332($fp)
	sw $t0, -15336($fp)
	li $t0, 16507
	sw $t0, -15340($fp)
	lw $t0, -15340($fp)
	sw $t0, -15344($fp)
	lw $t0, -15344($fp)
	sw $t0, -15348($fp)
	li $t0, 0
	sw $t0, -15352($fp)
	lw $t0, -1304($fp)
	sw $t0, -15356($fp)
	li $t0, 0
	sw $t0, -15360($fp)
	li $t0, 43452
	sw $t0, -15364($fp)
	lw $t1, -15364($fp)
	li $t2, 0
	bne $t1, $t2, label798
	j label797
label797:
	li $t0, 1
	sw $t0, -15360($fp)
label798:
	li $t0, 0
	lw $t1, -15360($fp)
	sub $t0, $t0, $t1
	sw $t0, -15368($fp)
	lw $t0, -15356($fp)
	lw $t1, -15368($fp)
	add $t0, $t0, $t1
	sw $t0, -15372($fp)
	li $t0, 64762
	sw $t0, -15376($fp)
	lw $t1, -15372($fp)
	lw $t2, -15376($fp)
	bne $t1, $t2, label795
	j label796
label795:
	li $t0, 1
	sw $t0, -15352($fp)
label796:
	lw $t0, -15260($fp)
	sw $t0, -15380($fp)
	lw $t0, -15380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -15272($fp)
	sw $t0, -15384($fp)
	lw $t0, -15384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -15284($fp)
	sw $t0, -15388($fp)
	lw $t0, -15388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -15296($fp)
	sw $t0, -15392($fp)
	lw $t0, -15392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -15308($fp)
	sw $t0, -15396($fp)
	lw $t0, -15396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -15320($fp)
	sw $t0, -15400($fp)
	lw $t0, -15400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -15332($fp)
	sw $t0, -15404($fp)
	lw $t0, -15404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -15344($fp)
	sw $t0, -15408($fp)
	lw $t0, -15408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -15412($fp)
	li $t0, 44658
	sw $t0, -15416($fp)
	lw $t0, -15416($fp)
	sw $t0, -2924($fp)
	lw $t0, -2924($fp)
	sw $t0, -15420($fp)
	addi $sp, $sp, -4
	lw $t0, -15420($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -15424($fp)
	addi $sp, $sp, 8
	lw $t0, -15296($fp)
	sw $t0, -15428($fp)
	lw $t0, -15424($fp)
	lw $t1, -15428($fp)
	add $t0, $t0, $t1
	sw $t0, -15432($fp)
	lw $t0, -3128($fp)
	sw $t0, -15436($fp)
	li $t0, 0
	sw $t0, -15440($fp)
	lw $t0, -2912($fp)
	sw $t0, -15444($fp)
	lw $t0, -584($fp)
	sw $t0, -15448($fp)
	lw $t1, -15444($fp)
	lw $t2, -15448($fp)
	bne $t1, $t2, label803
	j label802
label803:
	li $t0, 11695
	sw $t0, -15452($fp)
	lw $t1, -15452($fp)
	li $t2, 0
	bne $t1, $t2, label801
	j label802
label801:
	li $t0, 1
	sw $t0, -15440($fp)
label802:
	li $t0, 0
	sw $t0, -15456($fp)
	li $t0, 61440
	sw $t0, -15460($fp)
	lw $t0, -2900($fp)
	sw $t0, -15464($fp)
	lw $t0, -15460($fp)
	lw $t1, -15464($fp)
	mul $t0, $t0, $t1
	sw $t0, -15468($fp)
	lw $t0, -1508($fp)
	sw $t0, -15472($fp)
	lw $t0, -15468($fp)
	lw $t1, -15472($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15476($fp)
	addi $sp, $sp, -4
	lw $t0, -15476($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -15480($fp)
	addi $sp, $sp, 8
	li $t0, 16188
	sw $t0, -15484($fp)
	lw $t0, -15480($fp)
	lw $t1, -15484($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15488($fp)
	li $t0, 0
	sw $t0, -15492($fp)
	li $t0, 0
	sw $t0, -15496($fp)
	li $t0, 22465
	sw $t0, -15500($fp)
	lw $t0, -15284($fp)
	sw $t0, -15504($fp)
	lw $t1, -15500($fp)
	lw $t2, -15504($fp)
	ble $t1, $t2, label808
	j label809
label808:
	li $t0, 1
	sw $t0, -15496($fp)
label809:
	lw $t0, -4244($fp)
	sw $t0, -15508($fp)
	lw $t1, -15496($fp)
	lw $t2, -15508($fp)
	bne $t1, $t2, label806
	j label807
label806:
	li $t0, 1
	sw $t0, -15492($fp)
label807:
	li $t0, 29556
	sw $t0, -15512($fp)
	lw $t0, -15512($fp)
	sw $t0, -2888($fp)
	lw $t0, -2888($fp)
	sw $t0, -15516($fp)
	addi $t0, $fp, -240
	sw $t0, -15520($fp)
	li $t0, 8
	sw $t0, -15524($fp)
	li $t0, 4
	lw $t1, -15524($fp)
	mul $t0, $t0, $t1
	sw $t0, -15528($fp)
	lw $t0, -15528($fp)
	lw $t1, -15520($fp)
	add $t0, $t0, $t1
	sw $t0, -15532($fp)
	lw $t0, -15532($fp)
	lw $t1, 0($t0)
	sw $t1, -15536($fp)
	li $t0, 0
	sw $t0, -15540($fp)
	li $t0, 56487
	sw $t0, -15544($fp)
	li $t0, 14066
	sw $t0, -15548($fp)
	lw $t0, -15544($fp)
	lw $t1, -15548($fp)
	mul $t0, $t0, $t1
	sw $t0, -15552($fp)
	lw $t0, -3896($fp)
	sw $t0, -15556($fp)
	lw $t1, -15552($fp)
	lw $t2, -15556($fp)
	bgt $t1, $t2, label810
	j label811
label810:
	li $t0, 1
	sw $t0, -15540($fp)
label811:
	li $t0, 0
	sw $t0, -15560($fp)
	lw $t0, -2876($fp)
	sw $t0, -15564($fp)
	lw $t0, -2072($fp)
	sw $t0, -15568($fp)
	lw $t1, -15564($fp)
	lw $t2, -15568($fp)
	beq $t1, $t2, label812
	j label813
label812:
	li $t0, 1
	sw $t0, -15560($fp)
label813:
	addi $sp, $sp, -4
	lw $t0, -15492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15560($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15572($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -15572($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -15576($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -15580($fp)
	lw $t0, -1580($fp)
	sw $t0, -15584($fp)
	li $t0, 47158
	sw $t0, -15588($fp)
	lw $t0, -15584($fp)
	lw $t1, -15588($fp)
	sub $t0, $t0, $t1
	sw $t0, -15592($fp)
	lw $t1, -15592($fp)
	li $t2, 0
	bne $t1, $t2, label816
	j label815
label816:
	lw $t0, -1808($fp)
	sw $t0, -15596($fp)
	lw $t1, -15596($fp)
	li $t2, 0
	bne $t1, $t2, label814
	j label815
label814:
	li $t0, 1
	sw $t0, -15580($fp)
label815:
	li $t0, 59830
	sw $t0, -15600($fp)
	lw $t0, -944($fp)
	sw $t0, -15604($fp)
	lw $t0, -15600($fp)
	lw $t1, -15604($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15608($fp)
	lw $t0, -1616($fp)
	sw $t0, -15612($fp)
	lw $t0, -15608($fp)
	lw $t1, -15612($fp)
	mul $t0, $t0, $t1
	sw $t0, -15616($fp)
	addi $sp, $sp, -4
	lw $t0, -15616($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -15620($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -15624($fp)
	lw $t0, -15260($fp)
	sw $t0, -15628($fp)
	lw $t1, -15628($fp)
	li $t2, 0
	bne $t1, $t2, label820
	j label819
label820:
	lw $t0, -15272($fp)
	sw $t0, -15632($fp)
	lw $t1, -15632($fp)
	li $t2, 0
	bne $t1, $t2, label817
	j label819
label819:
	lw $t0, -2876($fp)
	sw $t0, -15636($fp)
	lw $t1, -15636($fp)
	li $t2, 0
	bne $t1, $t2, label817
	j label818
label817:
	li $t0, 1
	sw $t0, -15624($fp)
label818:
	addi $sp, $sp, -4
	lw $t0, -15488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15624($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15640($fp)
	addi $sp, $sp, 24
	lw $t0, -1640($fp)
	sw $t0, -15644($fp)
	lw $t1, -15640($fp)
	lw $t2, -15644($fp)
	beq $t1, $t2, label804
	j label805
label804:
	li $t0, 1
	sw $t0, -15456($fp)
label805:
	li $t0, 45745
	sw $t0, -15648($fp)
	addi $sp, $sp, -4
	lw $t0, -15432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15648($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15652($fp)
	addi $sp, $sp, 24
	li $t0, 89
	sw $t0, -15656($fp)
	lw $t0, -15652($fp)
	lw $t1, -15656($fp)
	add $t0, $t0, $t1
	sw $t0, -15660($fp)
	lw $t0, -2948($fp)
	sw $t0, -15664($fp)
	lw $t0, -15664($fp)
	sw $t0, -2960($fp)
	lw $t0, -2960($fp)
	sw $t0, -15668($fp)
	li $t0, 0
	sw $t0, -15672($fp)
	lw $t0, -1784($fp)
	sw $t0, -15676($fp)
	lw $t1, -15676($fp)
	li $t2, 0
	bne $t1, $t2, label822
	j label821
label821:
	li $t0, 1
	sw $t0, -15672($fp)
label822:
	lw $t0, -1820($fp)
	sw $t0, -15680($fp)
	lw $t0, -15672($fp)
	lw $t1, -15680($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15684($fp)
	lw $t0, -15344($fp)
	sw $t0, -15688($fp)
	li $t0, 0
	sw $t0, -15692($fp)
	lw $t0, -3236($fp)
	sw $t0, -15696($fp)
	lw $t0, -2936($fp)
	sw $t0, -15700($fp)
	lw $t0, -15696($fp)
	lw $t1, -15700($fp)
	add $t0, $t0, $t1
	sw $t0, -15704($fp)
	li $t0, 19043
	sw $t0, -15708($fp)
	lw $t1, -15704($fp)
	lw $t2, -15708($fp)
	ble $t1, $t2, label823
	j label824
label823:
	li $t0, 1
	sw $t0, -15692($fp)
label824:
	li $t0, 0
	sw $t0, -15712($fp)
	li $t0, 0
	sw $t0, -15716($fp)
	li $t0, 21169
	sw $t0, -15720($fp)
	lw $t0, -15332($fp)
	sw $t0, -15724($fp)
	lw $t1, -15720($fp)
	lw $t2, -15724($fp)
	bgt $t1, $t2, label829
	j label828
label829:
	li $t0, 20992
	sw $t0, -15728($fp)
	lw $t1, -15728($fp)
	li $t2, 0
	bne $t1, $t2, label827
	j label828
label827:
	li $t0, 1
	sw $t0, -15716($fp)
label828:
	li $t0, 0
	sw $t0, -15732($fp)
	lw $t0, -1628($fp)
	sw $t0, -15736($fp)
	lw $t1, -15736($fp)
	li $t2, 0
	bne $t1, $t2, label830
	j label832
label832:
	li $t0, 12617
	sw $t0, -15740($fp)
	lw $t1, -15740($fp)
	li $t2, 0
	bne $t1, $t2, label830
	j label831
label830:
	li $t0, 1
	sw $t0, -15732($fp)
label831:
	li $t0, 50133
	sw $t0, -15744($fp)
	lw $t0, -15744($fp)
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	sw $t0, -15748($fp)
	li $t0, 0
	sw $t0, -15752($fp)
	li $t0, 0
	sw $t0, -15756($fp)
	li $t0, 57941
	sw $t0, -15760($fp)
	lw $t1, -15760($fp)
	li $t2, 0
	bne $t1, $t2, label836
	j label835
label835:
	li $t0, 1
	sw $t0, -15756($fp)
label836:
	lw $t0, -15320($fp)
	sw $t0, -15764($fp)
	lw $t1, -15756($fp)
	lw $t2, -15764($fp)
	beq $t1, $t2, label833
	j label834
label833:
	li $t0, 1
	sw $t0, -15752($fp)
label834:
	li $t0, 0
	sw $t0, -15768($fp)
	li $t0, 53768
	sw $t0, -15772($fp)
	lw $t1, -15772($fp)
	li $t2, 0
	bne $t1, $t2, label838
	j label839
label839:
	lw $t0, -15308($fp)
	sw $t0, -15776($fp)
	lw $t1, -15776($fp)
	li $t2, 0
	bne $t1, $t2, label837
	j label838
label837:
	li $t0, 1
	sw $t0, -15768($fp)
label838:
	li $t0, 0
	sw $t0, -15780($fp)
	lw $t0, -1748($fp)
	sw $t0, -15784($fp)
	lw $t1, -15784($fp)
	li $t2, 0
	bne $t1, $t2, label841
	j label840
label840:
	li $t0, 1
	sw $t0, -15780($fp)
label841:
	lw $t0, -3968($fp)
	sw $t0, -15788($fp)
	lw $t0, -15780($fp)
	lw $t1, -15788($fp)
	add $t0, $t0, $t1
	sw $t0, -15792($fp)
	li $t0, 0
	sw $t0, -15796($fp)
	li $t0, 53016
	sw $t0, -15800($fp)
	lw $t1, -15800($fp)
	li $t2, 0
	bne $t1, $t2, label842
	j label845
label845:
	li $t0, 22670
	sw $t0, -15804($fp)
	lw $t1, -15804($fp)
	li $t2, 0
	bne $t1, $t2, label842
	j label844
label844:
	li $t0, 7531
	sw $t0, -15808($fp)
	lw $t1, -15808($fp)
	li $t2, 0
	bne $t1, $t2, label842
	j label843
label842:
	li $t0, 1
	sw $t0, -15796($fp)
label843:
	li $t0, 0
	sw $t0, -15812($fp)
	lw $t0, -1664($fp)
	sw $t0, -15816($fp)
	lw $t0, -4268($fp)
	sw $t0, -15820($fp)
	lw $t1, -15816($fp)
	lw $t2, -15820($fp)
	beq $t1, $t2, label846
	j label848
label848:
	lw $t0, -572($fp)
	sw $t0, -15824($fp)
	lw $t1, -15824($fp)
	li $t2, 0
	bne $t1, $t2, label846
	j label847
label846:
	li $t0, 1
	sw $t0, -15812($fp)
label847:
	li $t0, 0
	sw $t0, -15828($fp)
	li $t0, 50093
	sw $t0, -15832($fp)
	lw $t0, -1496($fp)
	sw $t0, -15836($fp)
	lw $t1, -15832($fp)
	lw $t2, -15836($fp)
	bgt $t1, $t2, label849
	j label850
label849:
	li $t0, 1
	sw $t0, -15828($fp)
label850:
	addi $sp, $sp, -4
	lw $t0, -15768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15828($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15840($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -15716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15840($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15844($fp)
	addi $sp, $sp, 24
	lw $t0, -2396($fp)
	sw $t0, -15848($fp)
	lw $t1, -15844($fp)
	lw $t2, -15848($fp)
	blt $t1, $t2, label825
	j label826
label825:
	li $t0, 1
	sw $t0, -15712($fp)
label826:
	addi $sp, $sp, -4
	lw $t0, -15668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15712($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15852($fp)
	addi $sp, $sp, 24
	lw $t0, -2360($fp)
	sw $t0, -15856($fp)
	lw $t0, -15272($fp)
	sw $t0, -15860($fp)
	lw $t0, -15856($fp)
	lw $t1, -15860($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15864($fp)
	lw $t0, -15852($fp)
	lw $t1, -15864($fp)
	sub $t0, $t0, $t1
	sw $t0, -15868($fp)
	lw $t1, -15660($fp)
	lw $t2, -15868($fp)
	ble $t1, $t2, label799
	j label800
label799:
	li $t0, 1
	sw $t0, -15412($fp)
label800:
	lw $ra, -4($fp)
	lw $v0, -15412($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label792
label791:
	lw $t0, -2960($fp)
	sw $t0, -15872($fp)
	li $t0, 0
	lw $t1, -15872($fp)
	sub $t0, $t0, $t1
	sw $t0, -15876($fp)
	li $t0, 0
	lw $t1, -15876($fp)
	sub $t0, $t0, $t1
	sw $t0, -15880($fp)
	li $t0, 0
	sw $t0, -15884($fp)
	li $t0, 56636
	sw $t0, -15888($fp)
	lw $t1, -15888($fp)
	li $t2, 0
	bne $t1, $t2, label852
	j label851
label851:
	li $t0, 1
	sw $t0, -15884($fp)
label852:
	lw $t0, -15880($fp)
	lw $t1, -15884($fp)
	add $t0, $t0, $t1
	sw $t0, -15892($fp)
	lw $t0, -15892($fp)
	sw $t0, -3968($fp)
	lw $t0, -3968($fp)
	sw $t0, -15896($fp)
	lw $ra, -4($fp)
	lw $v0, -15896($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label792:
	li $t0, 25498
	sw $t0, -15900($fp)
	lw $t0, -15900($fp)
	sw $t0, -15904($fp)
	lw $t0, -15904($fp)
	sw $t0, -15908($fp)
	li $t0, 1004
	sw $t0, -15912($fp)
	lw $t0, -15912($fp)
	sw $t0, -15916($fp)
	lw $t0, -15916($fp)
	sw $t0, -15920($fp)
	li $t0, 7608
	sw $t0, -15924($fp)
	lw $t0, -15924($fp)
	sw $t0, -15928($fp)
	lw $t0, -15928($fp)
	sw $t0, -15932($fp)
	li $t0, 3414
	sw $t0, -15936($fp)
	lw $t0, -15936($fp)
	sw $t0, -15940($fp)
	lw $t0, -15940($fp)
	sw $t0, -15944($fp)
	li $t0, 0
	sw $t0, -15948($fp)
	li $t0, 230
	sw $t0, -15952($fp)
	li $t0, 53353
	sw $t0, -15956($fp)
	lw $t0, -15952($fp)
	lw $t1, -15956($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15960($fp)
	li $t0, 63244
	sw $t0, -15964($fp)
	lw $t0, -15960($fp)
	lw $t1, -15964($fp)
	sub $t0, $t0, $t1
	sw $t0, -15968($fp)
	lw $t1, -15968($fp)
	li $t2, 0
	bne $t1, $t2, label856
	j label858
label858:
	li $t0, 47388
	sw $t0, -15972($fp)
	lw $t0, -1616($fp)
	sw $t0, -15976($fp)
	lw $t1, -15972($fp)
	lw $t2, -15976($fp)
	ble $t1, $t2, label856
	j label857
label856:
	li $t0, 1
	sw $t0, -15948($fp)
label857:
	lw $t0, -15948($fp)
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	sw $t0, -15980($fp)
	lw $t1, -15980($fp)
	li $t2, 0
	bne $t1, $t2, label853
	j label854
label853:
	addi $t0, $fp, -300
	sw $t0, -15984($fp)
	li $t0, 0
	sw $t0, -15988($fp)
	lw $t0, -3092($fp)
	sw $t0, -15992($fp)
	li $t0, 44304
	sw $t0, -15996($fp)
	lw $t1, -15992($fp)
	lw $t2, -15996($fp)
	ble $t1, $t2, label864
	j label863
label864:
	li $t0, 11775
	sw $t0, -16000($fp)
	lw $t1, -16000($fp)
	li $t2, 0
	bne $t1, $t2, label862
	j label863
label862:
	li $t0, 1
	sw $t0, -15988($fp)
label863:
	li $t0, 4
	lw $t1, -15988($fp)
	mul $t0, $t0, $t1
	sw $t0, -16004($fp)
	lw $t0, -16004($fp)
	lw $t1, -15984($fp)
	add $t0, $t0, $t1
	sw $t0, -16008($fp)
	lw $t0, -16008($fp)
	lw $t1, 0($t0)
	sw $t1, -16012($fp)
	lw $t1, -16012($fp)
	li $t2, 0
	bne $t1, $t2, label860
	j label859
label859:
	li $t0, 0
	sw $t0, -16016($fp)
	lw $t0, -1724($fp)
	sw $t0, -16020($fp)
	li $t0, 30746
	sw $t0, -16024($fp)
	li $t0, 0
	lw $t1, -16024($fp)
	sub $t0, $t0, $t1
	sw $t0, -16028($fp)
	li $t0, 0
	lw $t1, -16028($fp)
	sub $t0, $t0, $t1
	sw $t0, -16032($fp)
	lw $t0, -16020($fp)
	lw $t1, -16032($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -16036($fp)
	li $t0, 58256
	sw $t0, -16040($fp)
	li $t0, 41331
	sw $t0, -16044($fp)
	lw $t0, -16040($fp)
	lw $t1, -16044($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -16048($fp)
	lw $t0, -1628($fp)
	sw $t0, -16052($fp)
	lw $t0, -16048($fp)
	lw $t1, -16052($fp)
	sub $t0, $t0, $t1
	sw $t0, -16056($fp)
	addi $sp, $sp, -4
	lw $t0, -16056($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -16060($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -16060($fp)
	sub $t0, $t0, $t1
	sw $t0, -16064($fp)
	lw $t1, -16036($fp)
	lw $t2, -16064($fp)
	beq $t1, $t2, label865
	j label866
label865:
	li $t0, 1
	sw $t0, -16016($fp)
label866:
	lw $ra, -4($fp)
	lw $v0, -16016($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label861
label860:
	li $t0, 0
	sw $t0, -16068($fp)
	addi $t0, $fp, -12
	sw $t0, -16072($fp)
	lw $t0, -1796($fp)
	sw $t0, -16076($fp)
	li $t0, 4
	lw $t1, -16076($fp)
	mul $t0, $t0, $t1
	sw $t0, -16080($fp)
	lw $t0, -16080($fp)
	lw $t1, -16072($fp)
	add $t0, $t0, $t1
	sw $t0, -16084($fp)
	lw $t0, -16084($fp)
	lw $t1, 0($t0)
	sw $t1, -16088($fp)
	li $t0, 53211
	sw $t0, -16092($fp)
	lw $t1, -16088($fp)
	lw $t2, -16092($fp)
	bne $t1, $t2, label869
	j label868
label869:
	lw $t0, -15940($fp)
	sw $t0, -16096($fp)
	lw $t0, -1172($fp)
	sw $t0, -16100($fp)
	lw $t0, -16096($fp)
	lw $t1, -16100($fp)
	mul $t0, $t0, $t1
	sw $t0, -16104($fp)
	lw $t1, -16104($fp)
	li $t2, 0
	bne $t1, $t2, label867
	j label868
label867:
	li $t0, 1
	sw $t0, -16068($fp)
label868:
	lw $t0, -16068($fp)
	sw $t0, -3956($fp)
	lw $t0, -3956($fp)
	sw $t0, -16108($fp)
label861:
	j label855
label854:
	li $t0, 0
	sw $t0, -16112($fp)
	li $t0, 54160
	sw $t0, -16116($fp)
	lw $t1, -16116($fp)
	li $t2, 0
	bne $t1, $t2, label874
	j label877
label877:
	li $t0, 57520
	sw $t0, -16120($fp)
	lw $t1, -16120($fp)
	li $t2, 0
	bne $t1, $t2, label874
	j label876
label876:
	lw $t0, -1196($fp)
	sw $t0, -16124($fp)
	lw $t1, -16124($fp)
	li $t2, 0
	bne $t1, $t2, label874
	j label875
label874:
	li $t0, 1
	sw $t0, -16112($fp)
label875:
	addi $sp, $sp, -4
	lw $t0, -16112($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -16128($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -16132($fp)
	lw $t0, -1700($fp)
	sw $t0, -16136($fp)
	li $t0, 4
	lw $t1, -16136($fp)
	mul $t0, $t0, $t1
	sw $t0, -16140($fp)
	lw $t0, -16140($fp)
	lw $t1, -16132($fp)
	add $t0, $t0, $t1
	sw $t0, -16144($fp)
	lw $t0, -16144($fp)
	lw $t1, 0($t0)
	sw $t1, -16148($fp)
	lw $t1, -16128($fp)
	lw $t2, -16148($fp)
	bge $t1, $t2, label870
	j label873
label873:
	lw $t0, -2180($fp)
	sw $t0, -16152($fp)
	lw $t0, -2888($fp)
	sw $t0, -16156($fp)
	lw $t0, -16152($fp)
	lw $t1, -16156($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -16160($fp)
	addi $t0, $fp, -300
	sw $t0, -16164($fp)
	li $t0, 0
	sw $t0, -16168($fp)
	li $t0, 4
	lw $t1, -16168($fp)
	mul $t0, $t0, $t1
	sw $t0, -16172($fp)
	lw $t0, -16172($fp)
	lw $t1, -16164($fp)
	add $t0, $t0, $t1
	sw $t0, -16176($fp)
	lw $t0, -16176($fp)
	lw $t1, 0($t0)
	sw $t1, -16180($fp)
	lw $t0, -16160($fp)
	lw $t1, -16180($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -16184($fp)
	li $t0, 0
	lw $t1, -16184($fp)
	sub $t0, $t0, $t1
	sw $t0, -16188($fp)
	lw $t1, -16188($fp)
	li $t2, 0
	bne $t1, $t2, label870
	j label871
label870:
	li $t0, 0
	sw $t0, -16192($fp)
	lw $t0, -1700($fp)
	sw $t0, -16196($fp)
	lw $t0, -3104($fp)
	sw $t0, -16200($fp)
	lw $t0, -3104($fp)
	sw $t0, -16204($fp)
	lw $t0, -16200($fp)
	lw $t1, -16204($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -16208($fp)
	lw $t0, -3968($fp)
	sw $t0, -16212($fp)
	lw $t0, -16208($fp)
	lw $t1, -16212($fp)
	mul $t0, $t0, $t1
	sw $t0, -16216($fp)
	lw $t1, -16196($fp)
	lw $t2, -16216($fp)
	ble $t1, $t2, label878
	j label880
label880:
	li $t0, 57609
	sw $t0, -16220($fp)
	addi $t0, $fp, -60
	sw $t0, -16224($fp)
	li $t0, 7
	sw $t0, -16228($fp)
	li $t0, 4
	lw $t1, -16228($fp)
	mul $t0, $t0, $t1
	sw $t0, -16232($fp)
	lw $t0, -16232($fp)
	lw $t1, -16224($fp)
	add $t0, $t0, $t1
	sw $t0, -16236($fp)
	lw $t0, -16236($fp)
	lw $t1, 0($t0)
	sw $t1, -16240($fp)
	lw $t1, -16220($fp)
	lw $t2, -16240($fp)
	beq $t1, $t2, label878
	j label879
label878:
	li $t0, 1
	sw $t0, -16192($fp)
label879:
	j label872
label871:
	li $t0, 0
	sw $t0, -16244($fp)
	li $t0, 14743
	sw $t0, -16248($fp)
	li $t0, 56995
	sw $t0, -16252($fp)
	li $t0, 0
	lw $t1, -16252($fp)
	sub $t0, $t0, $t1
	sw $t0, -16256($fp)
	lw $t0, -16248($fp)
	lw $t1, -16256($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -16260($fp)
	li $t0, 0
	sw $t0, -16264($fp)
	li $t0, 8995
	sw $t0, -16268($fp)
	li $t0, 0
	lw $t1, -16268($fp)
	sub $t0, $t0, $t1
	sw $t0, -16272($fp)
	lw $t0, -2396($fp)
	sw $t0, -16276($fp)
	lw $t1, -16272($fp)
	lw $t2, -16276($fp)
	bne $t1, $t2, label883
	j label884
label883:
	li $t0, 1
	sw $t0, -16264($fp)
label884:
	addi $sp, $sp, -4
	lw $t0, -16264($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -16280($fp)
	addi $sp, $sp, 8
	lw $t0, -16260($fp)
	lw $t1, -16280($fp)
	sub $t0, $t0, $t1
	sw $t0, -16284($fp)
	li $t0, 0
	sw $t0, -16288($fp)
	li $t0, 62585
	sw $t0, -16292($fp)
	lw $t0, -692($fp)
	sw $t0, -16296($fp)
	lw $t0, -16292($fp)
	lw $t1, -16296($fp)
	sub $t0, $t0, $t1
	sw $t0, -16300($fp)
	lw $t1, -16300($fp)
	li $t2, 0
	bne $t1, $t2, label887
	j label886
label887:
	li $t0, 40655
	sw $t0, -16304($fp)
	lw $t1, -16304($fp)
	li $t2, 0
	bne $t1, $t2, label885
	j label886
label885:
	li $t0, 1
	sw $t0, -16288($fp)
label886:
	li $t0, 21612
	sw $t0, -16308($fp)
	lw $t0, -4004($fp)
	sw $t0, -16312($fp)
	lw $t0, -16308($fp)
	lw $t1, -16312($fp)
	sub $t0, $t0, $t1
	sw $t0, -16316($fp)
	li $t0, 28317
	sw $t0, -16320($fp)
	lw $t0, -16316($fp)
	lw $t1, -16320($fp)
	sub $t0, $t0, $t1
	sw $t0, -16324($fp)
	lw $t0, -3992($fp)
	sw $t0, -16328($fp)
	li $t0, 0
	lw $t1, -16328($fp)
	sub $t0, $t0, $t1
	sw $t0, -16332($fp)
	li $t0, 0
	lw $t1, -16332($fp)
	sub $t0, $t0, $t1
	sw $t0, -16336($fp)
	li $t0, 41593
	sw $t0, -16340($fp)
	lw $t0, -3980($fp)
	sw $t0, -16344($fp)
	lw $t0, -16340($fp)
	lw $t1, -16344($fp)
	mul $t0, $t0, $t1
	sw $t0, -16348($fp)
	li $t0, 7148
	sw $t0, -16352($fp)
	addi $sp, $sp, -4
	lw $t0, -16288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16352($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -16356($fp)
	addi $sp, $sp, 24
	lw $t1, -16284($fp)
	lw $t2, -16356($fp)
	blt $t1, $t2, label881
	j label882
label881:
	li $t0, 1
	sw $t0, -16244($fp)
label882:
label872:
label855:
	lw $t0, -1700($fp)
	sw $t0, -16360($fp)
	addi $t0, $fp, -460
	sw $t0, -16364($fp)
	li $t0, 19418
	sw $t0, -16368($fp)
	li $t0, 22547
	sw $t0, -16372($fp)
	lw $t0, -16368($fp)
	lw $t1, -16372($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -16376($fp)
	li $t0, 4
	lw $t1, -16376($fp)
	mul $t0, $t0, $t1
	sw $t0, -16380($fp)
	lw $t0, -16380($fp)
	lw $t1, -16364($fp)
	add $t0, $t0, $t1
	sw $t0, -16384($fp)
	lw $t0, -16384($fp)
	lw $t1, 0($t0)
	sw $t1, -16388($fp)
	lw $t0, -16360($fp)
	lw $t1, -16388($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -16392($fp)
	li $t0, 0
	lw $t1, -16392($fp)
	sub $t0, $t0, $t1
	sw $t0, -16396($fp)
	addi $t0, $fp, -424
	sw $t0, -16400($fp)
	li $t0, 0
	sw $t0, -16404($fp)
	lw $t0, -2960($fp)
	sw $t0, -16408($fp)
	li $t0, 41659
	sw $t0, -16412($fp)
	lw $t1, -16408($fp)
	lw $t2, -16412($fp)
	bge $t1, $t2, label892
	j label894
label894:
	lw $t0, -2888($fp)
	sw $t0, -16416($fp)
	lw $t1, -16416($fp)
	li $t2, 0
	bne $t1, $t2, label892
	j label893
label892:
	li $t0, 1
	sw $t0, -16404($fp)
label893:
	li $t0, 4
	lw $t1, -16404($fp)
	mul $t0, $t0, $t1
	sw $t0, -16420($fp)
	lw $t0, -16420($fp)
	lw $t1, -16400($fp)
	add $t0, $t0, $t1
	sw $t0, -16424($fp)
	lw $t0, -16424($fp)
	lw $t1, 0($t0)
	sw $t1, -16428($fp)
	lw $t1, -16428($fp)
	li $t2, 0
	bne $t1, $t2, label891
	j label889
label891:
	addi $t0, $fp, -356
	sw $t0, -16432($fp)
	lw $t0, -4232($fp)
	sw $t0, -16436($fp)
	li $t0, 4
	lw $t1, -16436($fp)
	mul $t0, $t0, $t1
	sw $t0, -16440($fp)
	lw $t0, -16440($fp)
	lw $t1, -16432($fp)
	add $t0, $t0, $t1
	sw $t0, -16444($fp)
	lw $t0, -16444($fp)
	lw $t1, 0($t0)
	sw $t1, -16448($fp)
	li $t0, 0
	lw $t1, -16448($fp)
	sub $t0, $t0, $t1
	sw $t0, -16452($fp)
	lw $t1, -16452($fp)
	li $t2, 0
	bne $t1, $t2, label889
	j label888
label888:
	addi $t0, $fp, -140
	sw $t0, -16456($fp)
	li $t0, 0
	sw $t0, -16460($fp)
	li $t0, 27026
	sw $t0, -16464($fp)
	lw $t1, -16464($fp)
	li $t2, 0
	bne $t1, $t2, label895
	j label898
label898:
	li $t0, 25961
	sw $t0, -16468($fp)
	lw $t1, -16468($fp)
	li $t2, 0
	bne $t1, $t2, label895
	j label897
label897:
	lw $t0, -1700($fp)
	sw $t0, -16472($fp)
	lw $t1, -16472($fp)
	li $t2, 0
	bne $t1, $t2, label895
	j label896
label895:
	li $t0, 1
	sw $t0, -16460($fp)
label896:
	li $t0, 4
	lw $t1, -16460($fp)
	mul $t0, $t0, $t1
	sw $t0, -16476($fp)
	lw $t0, -16476($fp)
	lw $t1, -16456($fp)
	add $t0, $t0, $t1
	sw $t0, -16480($fp)
	lw $t0, -16480($fp)
	lw $t1, 0($t0)
	sw $t1, -16484($fp)
	li $t0, 0
	lw $t1, -16484($fp)
	sub $t0, $t0, $t1
	sw $t0, -16488($fp)
	li $t0, 0
	sw $t0, -16492($fp)
	lw $t0, -4244($fp)
	sw $t0, -16496($fp)
	li $t0, 0
	lw $t1, -16496($fp)
	sub $t0, $t0, $t1
	sw $t0, -16500($fp)
	li $t0, 0
	lw $t1, -16500($fp)
	sub $t0, $t0, $t1
	sw $t0, -16504($fp)
	lw $t1, -16504($fp)
	li $t2, 0
	bne $t1, $t2, label901
	j label900
label901:
	li $t0, 0
	sw $t0, -16508($fp)
	li $t0, 41889
	sw $t0, -16512($fp)
	lw $t0, -3116($fp)
	sw $t0, -16516($fp)
	lw $t0, -16512($fp)
	lw $t1, -16516($fp)
	sub $t0, $t0, $t1
	sw $t0, -16520($fp)
	lw $t1, -16520($fp)
	li $t2, 0
	bne $t1, $t2, label902
	j label904
label904:
	lw $t0, -4256($fp)
	sw $t0, -16524($fp)
	lw $t1, -16524($fp)
	li $t2, 0
	bne $t1, $t2, label902
	j label903
label902:
	li $t0, 1
	sw $t0, -16508($fp)
label903:
	addi $sp, $sp, -4
	lw $t0, -16508($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -16528($fp)
	addi $sp, $sp, 8
	lw $t1, -16528($fp)
	li $t2, 0
	bne $t1, $t2, label899
	j label900
label899:
	li $t0, 1
	sw $t0, -16492($fp)
label900:
	lw $t0, -16492($fp)
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	sw $t0, -16532($fp)
	j label890
label889:
label905:
	li $t0, 0
	sw $t0, -16536($fp)
	li $t0, 14843
	sw $t0, -16540($fp)
	li $t0, 23669
	sw $t0, -16544($fp)
	lw $t0, -16540($fp)
	lw $t1, -16544($fp)
	add $t0, $t0, $t1
	sw $t0, -16548($fp)
	li $t0, 23741
	sw $t0, -16552($fp)
	lw $t0, -1520($fp)
	sw $t0, -16556($fp)
	lw $t0, -16552($fp)
	lw $t1, -16556($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -16560($fp)
	lw $t1, -16548($fp)
	lw $t2, -16560($fp)
	bgt $t1, $t2, label908
	j label909
label908:
	li $t0, 1
	sw $t0, -16536($fp)
label909:
	lw $t0, -16536($fp)
	sw $t0, -3116($fp)
	lw $t0, -3116($fp)
	sw $t0, -16564($fp)
	lw $t1, -16564($fp)
	li $t2, 0
	bne $t1, $t2, label906
	j label907
label906:
	li $t0, 0
	sw $t0, -16568($fp)
	li $t0, 0
	sw $t0, -16572($fp)
	lw $t0, -1508($fp)
	sw $t0, -16576($fp)
	lw $t1, -16576($fp)
	li $t2, 0
	bne $t1, $t2, label913
	j label912
label912:
	li $t0, 1
	sw $t0, -16572($fp)
label913:
	li $t0, 0
	sw $t0, -16580($fp)
	li $t0, 59148
	sw $t0, -16584($fp)
	li $t0, 0
	lw $t1, -16584($fp)
	sub $t0, $t0, $t1
	sw $t0, -16588($fp)
	lw $t1, -16588($fp)
	li $t2, 0
	bne $t1, $t2, label915
	j label914
label914:
	li $t0, 1
	sw $t0, -16580($fp)
label915:
	lw $t0, -16572($fp)
	lw $t1, -16580($fp)
	sub $t0, $t0, $t1
	sw $t0, -16592($fp)
	li $t0, 0
	sw $t0, -16596($fp)
	li $t0, 35444
	sw $t0, -16600($fp)
	lw $t1, -16600($fp)
	li $t2, 0
	bne $t1, $t2, label917
	j label916
label916:
	li $t0, 1
	sw $t0, -16596($fp)
label917:
	lw $t0, -4232($fp)
	sw $t0, -16604($fp)
	lw $t0, -16596($fp)
	lw $t1, -16604($fp)
	mul $t0, $t0, $t1
	sw $t0, -16608($fp)
	li $t0, 0
	sw $t0, -16612($fp)
	lw $t0, -4268($fp)
	sw $t0, -16616($fp)
	lw $t1, -16616($fp)
	li $t2, 0
	bne $t1, $t2, label918
	j label920
label920:
	li $t0, 54487
	sw $t0, -16620($fp)
	lw $t1, -16620($fp)
	li $t2, 0
	bne $t1, $t2, label918
	j label919
label918:
	li $t0, 1
	sw $t0, -16612($fp)
label919:
	addi $sp, $sp, -4
	lw $t0, -16612($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -16624($fp)
	addi $sp, $sp, 8
	lw $t0, -16608($fp)
	lw $t1, -16624($fp)
	add $t0, $t0, $t1
	sw $t0, -16628($fp)
	lw $t1, -16592($fp)
	lw $t2, -16628($fp)
	bne $t1, $t2, label910
	j label911
label910:
	li $t0, 1
	sw $t0, -16568($fp)
label911:
	j label905
label907:
label890:
label921:
	addi $t0, $fp, -204
	sw $t0, -16632($fp)
	lw $t0, -1700($fp)
	sw $t0, -16636($fp)
	li $t0, 51868
	sw $t0, -16640($fp)
	lw $t0, -16636($fp)
	lw $t1, -16640($fp)
	mul $t0, $t0, $t1
	sw $t0, -16644($fp)
	lw $t0, -3944($fp)
	sw $t0, -16648($fp)
	lw $t0, -16644($fp)
	lw $t1, -16648($fp)
	add $t0, $t0, $t1
	sw $t0, -16652($fp)
	li $t0, 4
	lw $t1, -16652($fp)
	mul $t0, $t0, $t1
	sw $t0, -16656($fp)
	lw $t0, -16656($fp)
	lw $t1, -16632($fp)
	add $t0, $t0, $t1
	sw $t0, -16660($fp)
	lw $t0, -16660($fp)
	lw $t1, 0($t0)
	sw $t1, -16664($fp)
	lw $t1, -16664($fp)
	li $t2, 0
	bne $t1, $t2, label923
	j label922
label922:
	addi $t0, $fp, -496
	sw $t0, -16668($fp)
	addi $t0, $fp, -504
	sw $t0, -16672($fp)
	lw $t0, -2936($fp)
	sw $t0, -16676($fp)
	li $t0, 4
	lw $t1, -16676($fp)
	mul $t0, $t0, $t1
	sw $t0, -16680($fp)
	lw $t0, -16680($fp)
	lw $t1, -16672($fp)
	add $t0, $t0, $t1
	sw $t0, -16684($fp)
	lw $t0, -16684($fp)
	lw $t1, 0($t0)
	sw $t1, -16688($fp)
	lw $t0, -920($fp)
	sw $t0, -16692($fp)
	lw $t0, -16688($fp)
	lw $t1, -16692($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -16696($fp)
	li $t0, 4
	lw $t1, -16696($fp)
	mul $t0, $t0, $t1
	sw $t0, -16700($fp)
	lw $t0, -16700($fp)
	lw $t1, -16668($fp)
	add $t0, $t0, $t1
	sw $t0, -16704($fp)
	lw $t0, -16704($fp)
	lw $t1, 0($t0)
	sw $t1, -16708($fp)
	addi $t0, $fp, -12
	sw $t0, -16712($fp)
	li $t0, 1
	sw $t0, -16716($fp)
	li $t0, 4
	lw $t1, -16716($fp)
	mul $t0, $t0, $t1
	sw $t0, -16720($fp)
	lw $t0, -16720($fp)
	lw $t1, -16712($fp)
	add $t0, $t0, $t1
	sw $t0, -16724($fp)
	lw $t0, -16724($fp)
	lw $t1, 0($t0)
	sw $t1, -16728($fp)
	lw $t0, -16708($fp)
	lw $t1, -16728($fp)
	add $t0, $t0, $t1
	sw $t0, -16732($fp)
	lw $ra, -4($fp)
	lw $v0, -16732($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label921
label923:
label924:
	li $t0, 0
	sw $t0, -16736($fp)
	addi $t0, $fp, -240
	sw $t0, -16740($fp)
	li $t0, 3
	sw $t0, -16744($fp)
	li $t0, 4
	lw $t1, -16744($fp)
	mul $t0, $t0, $t1
	sw $t0, -16748($fp)
	lw $t0, -16748($fp)
	lw $t1, -16740($fp)
	add $t0, $t0, $t1
	sw $t0, -16752($fp)
	lw $t0, -16752($fp)
	lw $t1, 0($t0)
	sw $t1, -16756($fp)
	lw $t1, -16756($fp)
	li $t2, 0
	bne $t1, $t2, label928
	j label927
label927:
	li $t0, 1
	sw $t0, -16736($fp)
label928:
	li $t0, 0
	sw $t0, -16760($fp)
	li $t0, 41534
	sw $t0, -16764($fp)
	lw $t1, -16764($fp)
	li $t2, 0
	bne $t1, $t2, label930
	j label929
label929:
	li $t0, 1
	sw $t0, -16760($fp)
label930:
	li $t0, 0
	lw $t1, -16760($fp)
	sub $t0, $t0, $t1
	sw $t0, -16768($fp)
	lw $t0, -16736($fp)
	lw $t1, -16768($fp)
	add $t0, $t0, $t1
	sw $t0, -16772($fp)
	addi $t0, $fp, -396
	sw $t0, -16776($fp)
	lw $t0, -4244($fp)
	sw $t0, -16780($fp)
	li $t0, 4
	lw $t1, -16780($fp)
	mul $t0, $t0, $t1
	sw $t0, -16784($fp)
	lw $t0, -16784($fp)
	lw $t1, -16776($fp)
	add $t0, $t0, $t1
	sw $t0, -16788($fp)
	lw $t0, -16788($fp)
	lw $t1, 0($t0)
	sw $t1, -16792($fp)
	li $t0, 8239
	sw $t0, -16796($fp)
	lw $t0, -16792($fp)
	lw $t1, -16796($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -16800($fp)
	lw $t0, -16772($fp)
	lw $t1, -16800($fp)
	sub $t0, $t0, $t1
	sw $t0, -16804($fp)
	lw $t1, -16804($fp)
	li $t2, 0
	bne $t1, $t2, label925
	j label926
label925:
	li $t0, 60833
	sw $t0, -16808($fp)
	lw $ra, -4($fp)
	lw $v0, -16808($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label924
label926:
label931:
	li $t0, 0
	sw $t0, -16812($fp)
	lw $t0, -932($fp)
	sw $t0, -16816($fp)
	lw $t1, -16816($fp)
	li $t2, 0
	bne $t1, $t2, label936
	j label935
label935:
	li $t0, 1
	sw $t0, -16812($fp)
label936:
	li $t0, 0
	lw $t1, -16812($fp)
	sub $t0, $t0, $t1
	sw $t0, -16820($fp)
	li $t0, 0
	lw $t1, -16820($fp)
	sub $t0, $t0, $t1
	sw $t0, -16824($fp)
	lw $t1, -16824($fp)
	li $t2, 0
	bne $t1, $t2, label934
	j label932
label934:
	li $t0, 0
	sw $t0, -16828($fp)
	lw $t0, -2396($fp)
	sw $t0, -16832($fp)
	lw $t1, -16832($fp)
	li $t2, 0
	bne $t1, $t2, label937
	j label940
label940:
	lw $t0, -680($fp)
	sw $t0, -16836($fp)
	lw $t1, -16836($fp)
	li $t2, 0
	bne $t1, $t2, label937
	j label939
label939:
	li $t0, 25462
	sw $t0, -16840($fp)
	lw $t1, -16840($fp)
	li $t2, 0
	bne $t1, $t2, label937
	j label938
label937:
	li $t0, 1
	sw $t0, -16828($fp)
label938:
	addi $sp, $sp, -4
	lw $t0, -16828($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -16844($fp)
	addi $sp, $sp, 8
	li $t0, 29002
	sw $t0, -16848($fp)
	lw $t0, -16844($fp)
	lw $t1, -16848($fp)
	sub $t0, $t0, $t1
	sw $t0, -16852($fp)
	lw $t1, -16852($fp)
	li $t2, 0
	bne $t1, $t2, label932
	j label933
label932:
	addi $t0, $fp, -316
	sw $t0, -16856($fp)
	lw $t0, -1652($fp)
	sw $t0, -16860($fp)
	lw $t0, -1700($fp)
	sw $t0, -16864($fp)
	lw $t0, -16860($fp)
	lw $t1, -16864($fp)
	add $t0, $t0, $t1
	sw $t0, -16868($fp)
	lw $t0, -1796($fp)
	sw $t0, -16872($fp)
	lw $t0, -16868($fp)
	lw $t1, -16872($fp)
	sub $t0, $t0, $t1
	sw $t0, -16876($fp)
	li $t0, 4
	lw $t1, -16876($fp)
	mul $t0, $t0, $t1
	sw $t0, -16880($fp)
	lw $t0, -16880($fp)
	lw $t1, -16856($fp)
	add $t0, $t0, $t1
	sw $t0, -16884($fp)
	lw $t0, -16884($fp)
	lw $t1, 0($t0)
	sw $t1, -16888($fp)
	lw $t0, -944($fp)
	sw $t0, -16892($fp)
	li $t0, 10040
	sw $t0, -16896($fp)
	li $t0, 16921
	sw $t0, -16900($fp)
	lw $t0, -16896($fp)
	lw $t1, -16900($fp)
	mul $t0, $t0, $t1
	sw $t0, -16904($fp)
	lw $t0, -16892($fp)
	lw $t1, -16904($fp)
	sub $t0, $t0, $t1
	sw $t0, -16908($fp)
	lw $t1, -16888($fp)
	lw $t2, -16908($fp)
	bgt $t1, $t2, label941
	j label942
label941:
label944:
	lw $t0, -2036($fp)
	sw $t0, -16912($fp)
	addi $sp, $sp, -4
	lw $t0, -16912($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -16916($fp)
	addi $sp, $sp, 8
	lw $t0, -2960($fp)
	sw $t0, -16920($fp)
	li $t0, 0
	lw $t1, -16920($fp)
	sub $t0, $t0, $t1
	sw $t0, -16924($fp)
	lw $t0, -16916($fp)
	lw $t1, -16924($fp)
	add $t0, $t0, $t1
	sw $t0, -16928($fp)
	lw $t1, -16928($fp)
	li $t2, 0
	bne $t1, $t2, label945
	j label946
label945:
label947:
	lw $t0, -956($fp)
	sw $t0, -16932($fp)
	li $t0, 0
	lw $t1, -16932($fp)
	sub $t0, $t0, $t1
	sw $t0, -16936($fp)
	li $t0, 0
	lw $t1, -16936($fp)
	sub $t0, $t0, $t1
	sw $t0, -16940($fp)
	lw $t0, -1616($fp)
	sw $t0, -16944($fp)
	lw $t0, -16940($fp)
	lw $t1, -16944($fp)
	add $t0, $t0, $t1
	sw $t0, -16948($fp)
	lw $t0, -968($fp)
	sw $t0, -16952($fp)
	lw $t0, -15904($fp)
	sw $t0, -16956($fp)
	lw $t0, -16952($fp)
	lw $t1, -16956($fp)
	mul $t0, $t0, $t1
	sw $t0, -16960($fp)
	lw $t1, -16948($fp)
	lw $t2, -16960($fp)
	ble $t1, $t2, label948
	j label949
label948:
label950:
	lw $t0, -980($fp)
	sw $t0, -16964($fp)
	lw $t1, -16964($fp)
	li $t2, 0
	bne $t1, $t2, label951
	j label952
label951:
	li $t0, 37997
	sw $t0, -16968($fp)
	li $t0, 0
	sw $t0, -16972($fp)
	lw $t0, -1580($fp)
	sw $t0, -16976($fp)
	li $t0, 0
	lw $t1, -16976($fp)
	sub $t0, $t0, $t1
	sw $t0, -16980($fp)
	lw $t1, -16980($fp)
	li $t2, 0
	bne $t1, $t2, label956
	j label958
label958:
	lw $t0, -15928($fp)
	sw $t0, -16984($fp)
	lw $t1, -16984($fp)
	li $t2, 0
	bne $t1, $t2, label956
	j label957
label956:
	li $t0, 1
	sw $t0, -16972($fp)
label957:
	li $t0, 0
	sw $t0, -16988($fp)
	lw $t0, -1616($fp)
	sw $t0, -16992($fp)
	lw $t0, -1184($fp)
	sw $t0, -16996($fp)
	lw $t1, -16992($fp)
	lw $t2, -16996($fp)
	beq $t1, $t2, label959
	j label961
label961:
	li $t0, 45506
	sw $t0, -17000($fp)
	lw $t1, -17000($fp)
	li $t2, 0
	bne $t1, $t2, label959
	j label960
label959:
	li $t0, 1
	sw $t0, -16988($fp)
label960:
	addi $sp, $sp, -4
	lw $t0, -16988($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -17004($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -17004($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -17008($fp)
	addi $sp, $sp, 8
	li $t0, 55563
	sw $t0, -17012($fp)
	lw $t0, -17008($fp)
	lw $t1, -17012($fp)
	sub $t0, $t0, $t1
	sw $t0, -17016($fp)
	addi $t0, $fp, -356
	sw $t0, -17020($fp)
	lw $t0, -1172($fp)
	sw $t0, -17024($fp)
	li $t0, 4
	lw $t1, -17024($fp)
	mul $t0, $t0, $t1
	sw $t0, -17028($fp)
	lw $t0, -17028($fp)
	lw $t1, -17020($fp)
	add $t0, $t0, $t1
	sw $t0, -17032($fp)
	lw $t0, -17032($fp)
	lw $t1, 0($t0)
	sw $t1, -17036($fp)
	li $t0, 0
	sw $t0, -17040($fp)
	li $t0, 0
	sw $t0, -17044($fp)
	lw $t0, -15916($fp)
	sw $t0, -17048($fp)
	lw $t1, -17048($fp)
	li $t2, 0
	bne $t1, $t2, label965
	j label964
label964:
	li $t0, 1
	sw $t0, -17044($fp)
label965:
	lw $t0, -1160($fp)
	sw $t0, -17052($fp)
	lw $t1, -17044($fp)
	lw $t2, -17052($fp)
	blt $t1, $t2, label962
	j label963
label962:
	li $t0, 1
	sw $t0, -17040($fp)
label963:
	li $t0, 0
	sw $t0, -17056($fp)
	addi $t0, $fp, -88
	sw $t0, -17060($fp)
	li $t0, 4
	sw $t0, -17064($fp)
	li $t0, 4
	lw $t1, -17064($fp)
	mul $t0, $t0, $t1
	sw $t0, -17068($fp)
	lw $t0, -17068($fp)
	lw $t1, -17060($fp)
	add $t0, $t0, $t1
	sw $t0, -17072($fp)
	lw $t0, -17072($fp)
	lw $t1, 0($t0)
	sw $t1, -17076($fp)
	li $t0, 59610
	sw $t0, -17080($fp)
	lw $t1, -17076($fp)
	lw $t2, -17080($fp)
	beq $t1, $t2, label966
	j label967
label966:
	li $t0, 1
	sw $t0, -17056($fp)
label967:
	addi $sp, $sp, -4
	lw $t0, -16972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17056($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -17084($fp)
	addi $sp, $sp, 24
	lw $t0, -16968($fp)
	lw $t1, -17084($fp)
	mul $t0, $t0, $t1
	sw $t0, -17088($fp)
	li $t0, 0
	lw $t1, -17088($fp)
	sub $t0, $t0, $t1
	sw $t0, -17092($fp)
	li $t0, 0
	lw $t1, -17092($fp)
	sub $t0, $t0, $t1
	sw $t0, -17096($fp)
	li $t0, 0
	lw $t1, -17096($fp)
	sub $t0, $t0, $t1
	sw $t0, -17100($fp)
	li $t0, 34729
	sw $t0, -17104($fp)
	lw $t0, -17100($fp)
	lw $t1, -17104($fp)
	add $t0, $t0, $t1
	sw $t0, -17108($fp)
	lw $t1, -17108($fp)
	li $t2, 0
	bne $t1, $t2, label953
	j label954
label953:
	lw $t0, -2360($fp)
	sw $t0, -17112($fp)
	j label955
label954:
	lw $t0, -3908($fp)
	sw $t0, -17116($fp)
	lw $t0, -1196($fp)
	sw $t0, -17120($fp)
	lw $t0, -17116($fp)
	lw $t1, -17120($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -17124($fp)
label955:
	j label950
label952:
	j label947
label949:
	j label944
label946:
	j label943
label942:
	li $t0, 0
	sw $t0, -17128($fp)
	li $t0, 0
	sw $t0, -17132($fp)
	li $t0, 0
	sw $t0, -17136($fp)
	li $t0, 64924
	sw $t0, -17140($fp)
	lw $t0, -1604($fp)
	sw $t0, -17144($fp)
	lw $t1, -17140($fp)
	lw $t2, -17144($fp)
	bne $t1, $t2, label972
	j label973
label972:
	li $t0, 1
	sw $t0, -17136($fp)
label973:
	li $t0, 12574
	sw $t0, -17148($fp)
	lw $t1, -17136($fp)
	lw $t2, -17148($fp)
	beq $t1, $t2, label970
	j label971
label970:
	li $t0, 1
	sw $t0, -17132($fp)
label971:
	li $t0, 0
	sw $t0, -17152($fp)
	li $t0, 10853
	sw $t0, -17156($fp)
	li $t0, 26414
	sw $t0, -17160($fp)
	lw $t1, -17156($fp)
	lw $t2, -17160($fp)
	bge $t1, $t2, label974
	j label975
label974:
	li $t0, 1
	sw $t0, -17152($fp)
label975:
	lw $t1, -17132($fp)
	lw $t2, -17152($fp)
	bne $t1, $t2, label968
	j label969
label968:
	li $t0, 1
	sw $t0, -17128($fp)
label969:
	lw $t0, -17128($fp)
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	sw $t0, -17164($fp)
label943:
	j label931
label933:
	li $t0, 38535
	sw $t0, -17168($fp)
	lw $t0, -17168($fp)
	sw $t0, -17172($fp)
	lw $t0, -17172($fp)
	sw $t0, -17176($fp)
	li $t0, 0
	sw $t0, -17180($fp)
	li $t0, 52742
	sw $t0, -17184($fp)
	lw $t1, -17184($fp)
	li $t2, 0
	bne $t1, $t2, label978
	j label977
label978:
	li $t0, 0
	sw $t0, -17188($fp)
	li $t0, 41258
	sw $t0, -17192($fp)
	lw $t1, -17192($fp)
	li $t2, 0
	bne $t1, $t2, label980
	j label979
label979:
	li $t0, 1
	sw $t0, -17188($fp)
label980:
	addi $sp, $sp, -4
	lw $t0, -17188($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -17196($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -424
	sw $t0, -17200($fp)
	lw $t0, -2864($fp)
	sw $t0, -17204($fp)
	li $t0, 4
	lw $t1, -17204($fp)
	mul $t0, $t0, $t1
	sw $t0, -17208($fp)
	lw $t0, -17208($fp)
	lw $t1, -17200($fp)
	add $t0, $t0, $t1
	sw $t0, -17212($fp)
	lw $t0, -17212($fp)
	lw $t1, 0($t0)
	sw $t1, -17216($fp)
	lw $t1, -17196($fp)
	lw $t2, -17216($fp)
	bge $t1, $t2, label976
	j label977
label976:
	li $t0, 1
	sw $t0, -17180($fp)
label977:
	addi $t0, $fp, -60
	sw $t0, -17220($fp)
	li $t0, 0
	sw $t0, -17224($fp)
	addi $t0, $fp, -104
	sw $t0, -17228($fp)
	lw $t0, -1652($fp)
	sw $t0, -17232($fp)
	li $t0, 4
	lw $t1, -17232($fp)
	mul $t0, $t0, $t1
	sw $t0, -17236($fp)
	lw $t0, -17236($fp)
	lw $t1, -17228($fp)
	add $t0, $t0, $t1
	sw $t0, -17240($fp)
	lw $t0, -17240($fp)
	lw $t1, 0($t0)
	sw $t1, -17244($fp)
	lw $t1, -17244($fp)
	li $t2, 0
	bne $t1, $t2, label982
	j label981
label981:
	li $t0, 1
	sw $t0, -17224($fp)
label982:
	lw $t0, -2864($fp)
	sw $t0, -17248($fp)
	addi $t0, $fp, -132
	sw $t0, -17252($fp)
	li $t0, 6
	sw $t0, -17256($fp)
	li $t0, 4
	lw $t1, -17256($fp)
	mul $t0, $t0, $t1
	sw $t0, -17260($fp)
	lw $t0, -17260($fp)
	lw $t1, -17252($fp)
	add $t0, $t0, $t1
	sw $t0, -17264($fp)
	lw $t0, -17264($fp)
	lw $t1, 0($t0)
	sw $t1, -17268($fp)
	li $t0, 0
	sw $t0, -17272($fp)
	li $t0, 0
	sw $t0, -17276($fp)
	li $t0, 10948
	sw $t0, -17280($fp)
	lw $t1, -17280($fp)
	li $t2, 0
	bne $t1, $t2, label986
	j label985
label985:
	li $t0, 1
	sw $t0, -17276($fp)
label986:
	li $t0, 34870
	sw $t0, -17284($fp)
	lw $t1, -17276($fp)
	lw $t2, -17284($fp)
	ble $t1, $t2, label983
	j label984
label983:
	li $t0, 1
	sw $t0, -17272($fp)
label984:
	li $t0, 62205
	sw $t0, -17288($fp)
	lw $t0, -17288($fp)
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	sw $t0, -17292($fp)
	addi $sp, $sp, -4
	lw $t0, -17224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17292($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -17296($fp)
	addi $sp, $sp, 24
	li $t0, 4
	lw $t1, -17296($fp)
	mul $t0, $t0, $t1
	sw $t0, -17300($fp)
	lw $t0, -17300($fp)
	lw $t1, -17220($fp)
	add $t0, $t0, $t1
	sw $t0, -17304($fp)
	lw $t0, -17304($fp)
	lw $t1, 0($t0)
	sw $t1, -17308($fp)
	li $t0, 0
	sw $t0, -17312($fp)
	lw $t0, -1304($fp)
	sw $t0, -17316($fp)
	lw $t0, -17316($fp)
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	sw $t0, -17320($fp)
	addi $sp, $sp, -4
	lw $t0, -17320($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -17324($fp)
	addi $sp, $sp, 8
	li $t0, 21202
	sw $t0, -17328($fp)
	lw $t0, -1736($fp)
	sw $t0, -17332($fp)
	lw $t0, -17328($fp)
	lw $t1, -17332($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -17336($fp)
	lw $t0, -920($fp)
	sw $t0, -17340($fp)
	lw $t0, -17336($fp)
	lw $t1, -17340($fp)
	mul $t0, $t0, $t1
	sw $t0, -17344($fp)
	li $t0, 0
	sw $t0, -17348($fp)
	li $t0, 43353
	sw $t0, -17352($fp)
	lw $t1, -17352($fp)
	li $t2, 0
	bne $t1, $t2, label990
	j label989
label989:
	li $t0, 1
	sw $t0, -17348($fp)
label990:
	lw $t0, -17344($fp)
	lw $t1, -17348($fp)
	sub $t0, $t0, $t1
	sw $t0, -17356($fp)
	lw $t1, -17324($fp)
	lw $t2, -17356($fp)
	bgt $t1, $t2, label987
	j label988
label987:
	li $t0, 1
	sw $t0, -17312($fp)
label988:
	li $t0, 0
	sw $t0, -17360($fp)
	lw $t0, -560($fp)
	sw $t0, -17364($fp)
	li $t0, 42062
	sw $t0, -17368($fp)
	lw $t0, -17364($fp)
	lw $t1, -17368($fp)
	mul $t0, $t0, $t1
	sw $t0, -17372($fp)
	lw $t1, -17372($fp)
	li $t2, 0
	bne $t1, $t2, label994
	j label992
label994:
	li $t0, 0
	sw $t0, -17376($fp)
	lw $t0, -1736($fp)
	sw $t0, -17380($fp)
	lw $t1, -17380($fp)
	li $t2, 0
	bne $t1, $t2, label996
	j label995
label995:
	li $t0, 1
	sw $t0, -17376($fp)
label996:
	lw $t0, -1832($fp)
	sw $t0, -17384($fp)
	lw $t0, -17376($fp)
	lw $t1, -17384($fp)
	sub $t0, $t0, $t1
	sw $t0, -17388($fp)
	lw $t1, -17388($fp)
	li $t2, 0
	bne $t1, $t2, label993
	j label992
label993:
	addi $t0, $fp, -60
	sw $t0, -17392($fp)
	li $t0, 0
	sw $t0, -17396($fp)
	lw $t0, -17172($fp)
	sw $t0, -17400($fp)
	lw $t0, -3908($fp)
	sw $t0, -17404($fp)
	lw $t1, -17400($fp)
	lw $t2, -17404($fp)
	bne $t1, $t2, label997
	j label998
label997:
	li $t0, 1
	sw $t0, -17396($fp)
label998:
	li $t0, 4
	lw $t1, -17396($fp)
	mul $t0, $t0, $t1
	sw $t0, -17408($fp)
	lw $t0, -17408($fp)
	lw $t1, -17392($fp)
	add $t0, $t0, $t1
	sw $t0, -17412($fp)
	lw $t0, -17412($fp)
	lw $t1, 0($t0)
	sw $t1, -17416($fp)
	lw $t1, -17416($fp)
	li $t2, 0
	bne $t1, $t2, label991
	j label992
label991:
	li $t0, 1
	sw $t0, -17360($fp)
label992:
	li $t0, 0
	sw $t0, -17420($fp)
	li $t0, 0
	sw $t0, -17424($fp)
	li $t0, 61694
	sw $t0, -17428($fp)
	lw $t0, -2864($fp)
	sw $t0, -17432($fp)
	lw $t0, -17428($fp)
	lw $t1, -17432($fp)
	mul $t0, $t0, $t1
	sw $t0, -17436($fp)
	lw $t0, -2072($fp)
	sw $t0, -17440($fp)
	li $t0, 0
	lw $t1, -17440($fp)
	sub $t0, $t0, $t1
	sw $t0, -17444($fp)
	lw $t0, -17436($fp)
	lw $t1, -17444($fp)
	mul $t0, $t0, $t1
	sw $t0, -17448($fp)
	li $t0, 0
	lw $t1, -17448($fp)
	sub $t0, $t0, $t1
	sw $t0, -17452($fp)
	addi $t0, $fp, -424
	sw $t0, -17456($fp)
	lw $t0, -1700($fp)
	sw $t0, -17460($fp)
	li $t0, 4
	lw $t1, -17460($fp)
	mul $t0, $t0, $t1
	sw $t0, -17464($fp)
	lw $t0, -17464($fp)
	lw $t1, -17456($fp)
	add $t0, $t0, $t1
	sw $t0, -17468($fp)
	lw $t0, -17468($fp)
	lw $t1, 0($t0)
	sw $t1, -17472($fp)
	lw $t1, -17452($fp)
	lw $t2, -17472($fp)
	bne $t1, $t2, label1001
	j label1002
label1001:
	li $t0, 1
	sw $t0, -17424($fp)
label1002:
	lw $t0, -3896($fp)
	sw $t0, -17476($fp)
	lw $t1, -17424($fp)
	lw $t2, -17476($fp)
	beq $t1, $t2, label999
	j label1000
label999:
	li $t0, 1
	sw $t0, -17420($fp)
label1000:
	li $t0, 0
	sw $t0, -17480($fp)
	li $t0, 0
	sw $t0, -17484($fp)
	li $t0, 0
	sw $t0, -17488($fp)
	li $t0, 46577
	sw $t0, -17492($fp)
	li $t0, 18060
	sw $t0, -17496($fp)
	lw $t1, -17492($fp)
	lw $t2, -17496($fp)
	beq $t1, $t2, label1007
	j label1008
label1007:
	li $t0, 1
	sw $t0, -17488($fp)
label1008:
	lw $t0, -1640($fp)
	sw $t0, -17500($fp)
	lw $t1, -17488($fp)
	lw $t2, -17500($fp)
	beq $t1, $t2, label1005
	j label1006
label1005:
	li $t0, 1
	sw $t0, -17484($fp)
label1006:
	addi $sp, $sp, -4
	lw $t0, -17484($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -17504($fp)
	addi $sp, $sp, 8
	li $t0, 65471
	sw $t0, -17508($fp)
	li $t0, 0
	sw $t0, -17512($fp)
	li $t0, 3568
	sw $t0, -17516($fp)
	li $t0, 53422
	sw $t0, -17520($fp)
	lw $t0, -17516($fp)
	lw $t1, -17520($fp)
	sub $t0, $t0, $t1
	sw $t0, -17524($fp)
	lw $t1, -17524($fp)
	li $t2, 0
	bne $t1, $t2, label1009
	j label1011
label1011:
	lw $t0, -2888($fp)
	sw $t0, -17528($fp)
	lw $t1, -17528($fp)
	li $t2, 0
	bne $t1, $t2, label1009
	j label1010
label1009:
	li $t0, 1
	sw $t0, -17512($fp)
label1010:
	lw $t0, -3908($fp)
	sw $t0, -17532($fp)
	addi $t0, $fp, -204
	sw $t0, -17536($fp)
	li $t0, 1
	sw $t0, -17540($fp)
	li $t0, 4
	lw $t1, -17540($fp)
	mul $t0, $t0, $t1
	sw $t0, -17544($fp)
	lw $t0, -17544($fp)
	lw $t1, -17536($fp)
	add $t0, $t0, $t1
	sw $t0, -17548($fp)
	lw $t0, -17548($fp)
	lw $t1, 0($t0)
	sw $t1, -17552($fp)
	li $t0, 0
	sw $t0, -17556($fp)
	lw $t0, -1676($fp)
	sw $t0, -17560($fp)
	lw $t0, -3236($fp)
	sw $t0, -17564($fp)
	lw $t0, -17560($fp)
	lw $t1, -17564($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -17568($fp)
	li $t0, 33399
	sw $t0, -17572($fp)
	li $t0, 43522
	sw $t0, -17576($fp)
	lw $t0, -2048($fp)
	sw $t0, -17580($fp)
	lw $t0, -17580($fp)
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -17584($fp)
	li $t0, 0
	sw $t0, -17588($fp)
	li $t0, 4397
	sw $t0, -17592($fp)
	lw $t1, -17592($fp)
	li $t2, 0
	bne $t1, $t2, label1018
	j label1017
label1018:
	li $t0, 41874
	sw $t0, -17596($fp)
	lw $t1, -17596($fp)
	li $t2, 0
	bne $t1, $t2, label1015
	j label1017
label1017:
	lw $t0, -2012($fp)
	sw $t0, -17600($fp)
	lw $t1, -17600($fp)
	li $t2, 0
	bne $t1, $t2, label1015
	j label1016
label1015:
	li $t0, 1
	sw $t0, -17588($fp)
label1016:
	addi $sp, $sp, -4
	lw $t0, -17568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17588($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -17604($fp)
	addi $sp, $sp, 24
	lw $t1, -17604($fp)
	li $t2, 0
	bne $t1, $t2, label1014
	j label1013
label1014:
	li $t0, 51915
	sw $t0, -17608($fp)
	lw $t1, -17608($fp)
	li $t2, 0
	bne $t1, $t2, label1012
	j label1013
label1012:
	li $t0, 1
	sw $t0, -17556($fp)
label1013:
	addi $sp, $sp, -4
	lw $t0, -17508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17556($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -17612($fp)
	addi $sp, $sp, 24
	lw $t0, -17504($fp)
	lw $t1, -17612($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -17616($fp)
	li $t0, 0
	sw $t0, -17620($fp)
	li $t0, 0
	sw $t0, -17624($fp)
	li $t0, 49074
	sw $t0, -17628($fp)
	lw $t1, -17628($fp)
	li $t2, 0
	bne $t1, $t2, label1022
	j label1021
label1021:
	li $t0, 1
	sw $t0, -17624($fp)
label1022:
	li $t0, 0
	lw $t1, -17624($fp)
	sub $t0, $t0, $t1
	sw $t0, -17632($fp)
	lw $t1, -17632($fp)
	li $t2, 0
	bne $t1, $t2, label1020
	j label1019
label1019:
	li $t0, 1
	sw $t0, -17620($fp)
label1020:
	lw $t1, -17616($fp)
	lw $t2, -17620($fp)
	ble $t1, $t2, label1003
	j label1004
label1003:
	li $t0, 1
	sw $t0, -17480($fp)
label1004:
	li $t0, 0
	sw $t0, -17636($fp)
	lw $t0, -560($fp)
	sw $t0, -17640($fp)
	lw $t0, -1592($fp)
	sw $t0, -17644($fp)
	lw $t0, -17640($fp)
	lw $t1, -17644($fp)
	mul $t0, $t0, $t1
	sw $t0, -17648($fp)
	lw $t0, -3920($fp)
	sw $t0, -17652($fp)
	lw $t0, -17648($fp)
	lw $t1, -17652($fp)
	mul $t0, $t0, $t1
	sw $t0, -17656($fp)
	addi $sp, $sp, -4
	lw $t0, -17656($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -17660($fp)
	addi $sp, $sp, 8
	li $t0, 43450
	sw $t0, -17664($fp)
	lw $t0, -17660($fp)
	lw $t1, -17664($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -17668($fp)
	lw $t1, -17668($fp)
	li $t2, 0
	bne $t1, $t2, label1023
	j label1025
label1025:
	lw $t0, -1652($fp)
	sw $t0, -17672($fp)
	lw $t1, -17672($fp)
	li $t2, 0
	bne $t1, $t2, label1023
	j label1024
label1023:
	li $t0, 1
	sw $t0, -17636($fp)
label1024:
	lw $ra, -4($fp)
	lw $v0, -17636($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -17676($fp)
	li $t0, 34664
	sw $t0, -17680($fp)
	lw $t0, -3116($fp)
	sw $t0, -17684($fp)
	li $t0, 48463
	sw $t0, -17688($fp)
	li $t0, 0
	lw $t1, -17688($fp)
	sub $t0, $t0, $t1
	sw $t0, -17692($fp)
	lw $t0, -17684($fp)
	lw $t1, -17692($fp)
	mul $t0, $t0, $t1
	sw $t0, -17696($fp)
	li $t0, 0
	lw $t1, -17696($fp)
	sub $t0, $t0, $t1
	sw $t0, -17700($fp)
	lw $t0, -17680($fp)
	lw $t1, -17700($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -17704($fp)
	li $t0, 0
	sw $t0, -17708($fp)
	lw $t0, -4004($fp)
	sw $t0, -17712($fp)
	lw $t1, -17712($fp)
	li $t2, 0
	bne $t1, $t2, label1028
	j label1030
label1030:
	lw $t0, -4232($fp)
	sw $t0, -17716($fp)
	lw $t1, -17716($fp)
	li $t2, 0
	bne $t1, $t2, label1028
	j label1029
label1028:
	li $t0, 1
	sw $t0, -17708($fp)
label1029:
	li $t0, 32724
	sw $t0, -17720($fp)
	li $t0, 0
	sw $t0, -17724($fp)
	li $t0, 9341
	sw $t0, -17728($fp)
	li $t0, 29024
	sw $t0, -17732($fp)
	lw $t1, -17728($fp)
	lw $t2, -17732($fp)
	bge $t1, $t2, label1031
	j label1033
label1033:
	lw $t0, -3116($fp)
	sw $t0, -17736($fp)
	lw $t1, -17736($fp)
	li $t2, 0
	bne $t1, $t2, label1031
	j label1032
label1031:
	li $t0, 1
	sw $t0, -17724($fp)
label1032:
	li $t0, 0
	sw $t0, -17740($fp)
	lw $t0, -3944($fp)
	sw $t0, -17744($fp)
	lw $t1, -17744($fp)
	li $t2, 0
	bne $t1, $t2, label1037
	j label1036
label1037:
	lw $t0, -1700($fp)
	sw $t0, -17748($fp)
	lw $t1, -17748($fp)
	li $t2, 0
	bne $t1, $t2, label1034
	j label1036
label1036:
	lw $t0, -1760($fp)
	sw $t0, -17752($fp)
	lw $t1, -17752($fp)
	li $t2, 0
	bne $t1, $t2, label1034
	j label1035
label1034:
	li $t0, 1
	sw $t0, -17740($fp)
label1035:
	li $t0, 0
	sw $t0, -17756($fp)
	li $t0, 0
	sw $t0, -17760($fp)
	lw $t0, -3932($fp)
	sw $t0, -17764($fp)
	li $t0, 56024
	sw $t0, -17768($fp)
	lw $t1, -17764($fp)
	lw $t2, -17768($fp)
	bge $t1, $t2, label1040
	j label1041
label1040:
	li $t0, 1
	sw $t0, -17760($fp)
label1041:
	li $t0, 45517
	sw $t0, -17772($fp)
	lw $t1, -17760($fp)
	lw $t2, -17772($fp)
	beq $t1, $t2, label1038
	j label1039
label1038:
	li $t0, 1
	sw $t0, -17756($fp)
label1039:
	addi $sp, $sp, -4
	lw $t0, -17708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17756($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -17776($fp)
	addi $sp, $sp, 24
	lw $t1, -17704($fp)
	lw $t2, -17776($fp)
	bge $t1, $t2, label1026
	j label1027
label1026:
	li $t0, 1
	sw $t0, -17676($fp)
label1027:
	addi $t0, $fp, -12
	sw $t0, -17780($fp)
	li $t0, 0
	sw $t0, -17784($fp)
	li $t0, 4
	lw $t1, -17784($fp)
	mul $t0, $t0, $t1
	sw $t0, -17788($fp)
	lw $t0, -17788($fp)
	lw $t1, -17780($fp)
	add $t0, $t0, $t1
	sw $t0, -17792($fp)
	lw $t0, -17792($fp)
	lw $t1, 0($t0)
	sw $t1, -17796($fp)
	lw $t0, -17796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -17800($fp)
	li $t0, 1
	sw $t0, -17804($fp)
	li $t0, 4
	lw $t1, -17804($fp)
	mul $t0, $t0, $t1
	sw $t0, -17808($fp)
	lw $t0, -17808($fp)
	lw $t1, -17800($fp)
	add $t0, $t0, $t1
	sw $t0, -17812($fp)
	lw $t0, -17812($fp)
	lw $t1, 0($t0)
	sw $t1, -17816($fp)
	lw $t0, -17816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -17820($fp)
	lw $t0, -17820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	sw $t0, -17824($fp)
	lw $t0, -17824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -584($fp)
	sw $t0, -17828($fp)
	lw $t0, -17828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -596($fp)
	sw $t0, -17832($fp)
	lw $t0, -17832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -17836($fp)
	li $t0, 0
	sw $t0, -17840($fp)
	li $t0, 4
	lw $t1, -17840($fp)
	mul $t0, $t0, $t1
	sw $t0, -17844($fp)
	lw $t0, -17844($fp)
	lw $t1, -17836($fp)
	add $t0, $t0, $t1
	sw $t0, -17848($fp)
	lw $t0, -17848($fp)
	lw $t1, 0($t0)
	sw $t1, -17852($fp)
	lw $t0, -17852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -17856($fp)
	li $t0, 1
	sw $t0, -17860($fp)
	li $t0, 4
	lw $t1, -17860($fp)
	mul $t0, $t0, $t1
	sw $t0, -17864($fp)
	lw $t0, -17864($fp)
	lw $t1, -17856($fp)
	add $t0, $t0, $t1
	sw $t0, -17868($fp)
	lw $t0, -17868($fp)
	lw $t1, 0($t0)
	sw $t1, -17872($fp)
	lw $t0, -17872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -17876($fp)
	li $t0, 2
	sw $t0, -17880($fp)
	li $t0, 4
	lw $t1, -17880($fp)
	mul $t0, $t0, $t1
	sw $t0, -17884($fp)
	lw $t0, -17884($fp)
	lw $t1, -17876($fp)
	add $t0, $t0, $t1
	sw $t0, -17888($fp)
	lw $t0, -17888($fp)
	lw $t1, 0($t0)
	sw $t1, -17892($fp)
	lw $t0, -17892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -680($fp)
	sw $t0, -17896($fp)
	lw $t0, -17896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -692($fp)
	sw $t0, -17900($fp)
	lw $t0, -17900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -17904($fp)
	li $t0, 0
	sw $t0, -17908($fp)
	li $t0, 4
	lw $t1, -17908($fp)
	mul $t0, $t0, $t1
	sw $t0, -17912($fp)
	lw $t0, -17912($fp)
	lw $t1, -17904($fp)
	add $t0, $t0, $t1
	sw $t0, -17916($fp)
	lw $t0, -17916($fp)
	lw $t1, 0($t0)
	sw $t1, -17920($fp)
	lw $t0, -17920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -17924($fp)
	li $t0, 1
	sw $t0, -17928($fp)
	li $t0, 4
	lw $t1, -17928($fp)
	mul $t0, $t0, $t1
	sw $t0, -17932($fp)
	lw $t0, -17932($fp)
	lw $t1, -17924($fp)
	add $t0, $t0, $t1
	sw $t0, -17936($fp)
	lw $t0, -17936($fp)
	lw $t1, 0($t0)
	sw $t1, -17940($fp)
	lw $t0, -17940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -17944($fp)
	li $t0, 2
	sw $t0, -17948($fp)
	li $t0, 4
	lw $t1, -17948($fp)
	mul $t0, $t0, $t1
	sw $t0, -17952($fp)
	lw $t0, -17952($fp)
	lw $t1, -17944($fp)
	add $t0, $t0, $t1
	sw $t0, -17956($fp)
	lw $t0, -17956($fp)
	lw $t1, 0($t0)
	sw $t1, -17960($fp)
	lw $t0, -17960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -17964($fp)
	li $t0, 3
	sw $t0, -17968($fp)
	li $t0, 4
	lw $t1, -17968($fp)
	mul $t0, $t0, $t1
	sw $t0, -17972($fp)
	lw $t0, -17972($fp)
	lw $t1, -17964($fp)
	add $t0, $t0, $t1
	sw $t0, -17976($fp)
	lw $t0, -17976($fp)
	lw $t1, 0($t0)
	sw $t1, -17980($fp)
	lw $t0, -17980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -17984($fp)
	li $t0, 4
	sw $t0, -17988($fp)
	li $t0, 4
	lw $t1, -17988($fp)
	mul $t0, $t0, $t1
	sw $t0, -17992($fp)
	lw $t0, -17992($fp)
	lw $t1, -17984($fp)
	add $t0, $t0, $t1
	sw $t0, -17996($fp)
	lw $t0, -17996($fp)
	lw $t1, 0($t0)
	sw $t1, -18000($fp)
	lw $t0, -18000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -18004($fp)
	li $t0, 5
	sw $t0, -18008($fp)
	li $t0, 4
	lw $t1, -18008($fp)
	mul $t0, $t0, $t1
	sw $t0, -18012($fp)
	lw $t0, -18012($fp)
	lw $t1, -18004($fp)
	add $t0, $t0, $t1
	sw $t0, -18016($fp)
	lw $t0, -18016($fp)
	lw $t1, 0($t0)
	sw $t1, -18020($fp)
	lw $t0, -18020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -18024($fp)
	li $t0, 6
	sw $t0, -18028($fp)
	li $t0, 4
	lw $t1, -18028($fp)
	mul $t0, $t0, $t1
	sw $t0, -18032($fp)
	lw $t0, -18032($fp)
	lw $t1, -18024($fp)
	add $t0, $t0, $t1
	sw $t0, -18036($fp)
	lw $t0, -18036($fp)
	lw $t1, 0($t0)
	sw $t1, -18040($fp)
	lw $t0, -18040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -18044($fp)
	li $t0, 7
	sw $t0, -18048($fp)
	li $t0, 4
	lw $t1, -18048($fp)
	mul $t0, $t0, $t1
	sw $t0, -18052($fp)
	lw $t0, -18052($fp)
	lw $t1, -18044($fp)
	add $t0, $t0, $t1
	sw $t0, -18056($fp)
	lw $t0, -18056($fp)
	lw $t1, 0($t0)
	sw $t1, -18060($fp)
	lw $t0, -18060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -18064($fp)
	li $t0, 8
	sw $t0, -18068($fp)
	li $t0, 4
	lw $t1, -18068($fp)
	mul $t0, $t0, $t1
	sw $t0, -18072($fp)
	lw $t0, -18072($fp)
	lw $t1, -18064($fp)
	add $t0, $t0, $t1
	sw $t0, -18076($fp)
	lw $t0, -18076($fp)
	lw $t1, 0($t0)
	sw $t1, -18080($fp)
	lw $t0, -18080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -920($fp)
	sw $t0, -18084($fp)
	lw $t0, -18084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -932($fp)
	sw $t0, -18088($fp)
	lw $t0, -18088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -944($fp)
	sw $t0, -18092($fp)
	lw $t0, -18092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -956($fp)
	sw $t0, -18096($fp)
	lw $t0, -18096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -968($fp)
	sw $t0, -18100($fp)
	lw $t0, -18100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -980($fp)
	sw $t0, -18104($fp)
	lw $t0, -18104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -18108($fp)
	li $t0, 0
	sw $t0, -18112($fp)
	li $t0, 4
	lw $t1, -18112($fp)
	mul $t0, $t0, $t1
	sw $t0, -18116($fp)
	lw $t0, -18116($fp)
	lw $t1, -18108($fp)
	add $t0, $t0, $t1
	sw $t0, -18120($fp)
	lw $t0, -18120($fp)
	lw $t1, 0($t0)
	sw $t1, -18124($fp)
	lw $t0, -18124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -18128($fp)
	li $t0, 1
	sw $t0, -18132($fp)
	li $t0, 4
	lw $t1, -18132($fp)
	mul $t0, $t0, $t1
	sw $t0, -18136($fp)
	lw $t0, -18136($fp)
	lw $t1, -18128($fp)
	add $t0, $t0, $t1
	sw $t0, -18140($fp)
	lw $t0, -18140($fp)
	lw $t1, 0($t0)
	sw $t1, -18144($fp)
	lw $t0, -18144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -18148($fp)
	li $t0, 2
	sw $t0, -18152($fp)
	li $t0, 4
	lw $t1, -18152($fp)
	mul $t0, $t0, $t1
	sw $t0, -18156($fp)
	lw $t0, -18156($fp)
	lw $t1, -18148($fp)
	add $t0, $t0, $t1
	sw $t0, -18160($fp)
	lw $t0, -18160($fp)
	lw $t1, 0($t0)
	sw $t1, -18164($fp)
	lw $t0, -18164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -18168($fp)
	li $t0, 3
	sw $t0, -18172($fp)
	li $t0, 4
	lw $t1, -18172($fp)
	mul $t0, $t0, $t1
	sw $t0, -18176($fp)
	lw $t0, -18176($fp)
	lw $t1, -18168($fp)
	add $t0, $t0, $t1
	sw $t0, -18180($fp)
	lw $t0, -18180($fp)
	lw $t1, 0($t0)
	sw $t1, -18184($fp)
	lw $t0, -18184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -18188($fp)
	li $t0, 4
	sw $t0, -18192($fp)
	li $t0, 4
	lw $t1, -18192($fp)
	mul $t0, $t0, $t1
	sw $t0, -18196($fp)
	lw $t0, -18196($fp)
	lw $t1, -18188($fp)
	add $t0, $t0, $t1
	sw $t0, -18200($fp)
	lw $t0, -18200($fp)
	lw $t1, 0($t0)
	sw $t1, -18204($fp)
	lw $t0, -18204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -18208($fp)
	li $t0, 5
	sw $t0, -18212($fp)
	li $t0, 4
	lw $t1, -18212($fp)
	mul $t0, $t0, $t1
	sw $t0, -18216($fp)
	lw $t0, -18216($fp)
	lw $t1, -18208($fp)
	add $t0, $t0, $t1
	sw $t0, -18220($fp)
	lw $t0, -18220($fp)
	lw $t1, 0($t0)
	sw $t1, -18224($fp)
	lw $t0, -18224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -18228($fp)
	li $t0, 6
	sw $t0, -18232($fp)
	li $t0, 4
	lw $t1, -18232($fp)
	mul $t0, $t0, $t1
	sw $t0, -18236($fp)
	lw $t0, -18236($fp)
	lw $t1, -18228($fp)
	add $t0, $t0, $t1
	sw $t0, -18240($fp)
	lw $t0, -18240($fp)
	lw $t1, 0($t0)
	sw $t1, -18244($fp)
	lw $t0, -18244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1160($fp)
	sw $t0, -18248($fp)
	lw $t0, -18248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1172($fp)
	sw $t0, -18252($fp)
	lw $t0, -18252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1184($fp)
	sw $t0, -18256($fp)
	lw $t0, -18256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1196($fp)
	sw $t0, -18260($fp)
	lw $t0, -18260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -18264($fp)
	li $t0, 0
	sw $t0, -18268($fp)
	li $t0, 4
	lw $t1, -18268($fp)
	mul $t0, $t0, $t1
	sw $t0, -18272($fp)
	lw $t0, -18272($fp)
	lw $t1, -18264($fp)
	add $t0, $t0, $t1
	sw $t0, -18276($fp)
	lw $t0, -18276($fp)
	lw $t1, 0($t0)
	sw $t1, -18280($fp)
	lw $t0, -18280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -18284($fp)
	li $t0, 1
	sw $t0, -18288($fp)
	li $t0, 4
	lw $t1, -18288($fp)
	mul $t0, $t0, $t1
	sw $t0, -18292($fp)
	lw $t0, -18292($fp)
	lw $t1, -18284($fp)
	add $t0, $t0, $t1
	sw $t0, -18296($fp)
	lw $t0, -18296($fp)
	lw $t1, 0($t0)
	sw $t1, -18300($fp)
	lw $t0, -18300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -18304($fp)
	li $t0, 2
	sw $t0, -18308($fp)
	li $t0, 4
	lw $t1, -18308($fp)
	mul $t0, $t0, $t1
	sw $t0, -18312($fp)
	lw $t0, -18312($fp)
	lw $t1, -18304($fp)
	add $t0, $t0, $t1
	sw $t0, -18316($fp)
	lw $t0, -18316($fp)
	lw $t1, 0($t0)
	sw $t1, -18320($fp)
	lw $t0, -18320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -18324($fp)
	li $t0, 3
	sw $t0, -18328($fp)
	li $t0, 4
	lw $t1, -18328($fp)
	mul $t0, $t0, $t1
	sw $t0, -18332($fp)
	lw $t0, -18332($fp)
	lw $t1, -18324($fp)
	add $t0, $t0, $t1
	sw $t0, -18336($fp)
	lw $t0, -18336($fp)
	lw $t1, 0($t0)
	sw $t1, -18340($fp)
	lw $t0, -18340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1304($fp)
	sw $t0, -18344($fp)
	lw $t0, -18344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1316($fp)
	sw $t0, -18348($fp)
	lw $t0, -18348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -18352($fp)
	li $t0, 0
	sw $t0, -18356($fp)
	li $t0, 4
	lw $t1, -18356($fp)
	mul $t0, $t0, $t1
	sw $t0, -18360($fp)
	lw $t0, -18360($fp)
	lw $t1, -18352($fp)
	add $t0, $t0, $t1
	sw $t0, -18364($fp)
	lw $t0, -18364($fp)
	lw $t1, 0($t0)
	sw $t1, -18368($fp)
	lw $t0, -18368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -18372($fp)
	li $t0, 1
	sw $t0, -18376($fp)
	li $t0, 4
	lw $t1, -18376($fp)
	mul $t0, $t0, $t1
	sw $t0, -18380($fp)
	lw $t0, -18380($fp)
	lw $t1, -18372($fp)
	add $t0, $t0, $t1
	sw $t0, -18384($fp)
	lw $t0, -18384($fp)
	lw $t1, 0($t0)
	sw $t1, -18388($fp)
	lw $t0, -18388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -18392($fp)
	li $t0, 2
	sw $t0, -18396($fp)
	li $t0, 4
	lw $t1, -18396($fp)
	mul $t0, $t0, $t1
	sw $t0, -18400($fp)
	lw $t0, -18400($fp)
	lw $t1, -18392($fp)
	add $t0, $t0, $t1
	sw $t0, -18404($fp)
	lw $t0, -18404($fp)
	lw $t1, 0($t0)
	sw $t1, -18408($fp)
	lw $t0, -18408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -18412($fp)
	li $t0, 3
	sw $t0, -18416($fp)
	li $t0, 4
	lw $t1, -18416($fp)
	mul $t0, $t0, $t1
	sw $t0, -18420($fp)
	lw $t0, -18420($fp)
	lw $t1, -18412($fp)
	add $t0, $t0, $t1
	sw $t0, -18424($fp)
	lw $t0, -18424($fp)
	lw $t1, 0($t0)
	sw $t1, -18428($fp)
	lw $t0, -18428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -18432($fp)
	li $t0, 4
	sw $t0, -18436($fp)
	li $t0, 4
	lw $t1, -18436($fp)
	mul $t0, $t0, $t1
	sw $t0, -18440($fp)
	lw $t0, -18440($fp)
	lw $t1, -18432($fp)
	add $t0, $t0, $t1
	sw $t0, -18444($fp)
	lw $t0, -18444($fp)
	lw $t1, 0($t0)
	sw $t1, -18448($fp)
	lw $t0, -18448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -18452($fp)
	li $t0, 5
	sw $t0, -18456($fp)
	li $t0, 4
	lw $t1, -18456($fp)
	mul $t0, $t0, $t1
	sw $t0, -18460($fp)
	lw $t0, -18460($fp)
	lw $t1, -18452($fp)
	add $t0, $t0, $t1
	sw $t0, -18464($fp)
	lw $t0, -18464($fp)
	lw $t1, 0($t0)
	sw $t1, -18468($fp)
	lw $t0, -18468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -18472($fp)
	li $t0, 6
	sw $t0, -18476($fp)
	li $t0, 4
	lw $t1, -18476($fp)
	mul $t0, $t0, $t1
	sw $t0, -18480($fp)
	lw $t0, -18480($fp)
	lw $t1, -18472($fp)
	add $t0, $t0, $t1
	sw $t0, -18484($fp)
	lw $t0, -18484($fp)
	lw $t1, 0($t0)
	sw $t1, -18488($fp)
	lw $t0, -18488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1496($fp)
	sw $t0, -18492($fp)
	lw $t0, -18492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1508($fp)
	sw $t0, -18496($fp)
	lw $t0, -18496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1520($fp)
	sw $t0, -18500($fp)
	lw $t0, -18500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -18504($fp)
	li $t0, 0
	sw $t0, -18508($fp)
	li $t0, 4
	lw $t1, -18508($fp)
	mul $t0, $t0, $t1
	sw $t0, -18512($fp)
	lw $t0, -18512($fp)
	lw $t1, -18504($fp)
	add $t0, $t0, $t1
	sw $t0, -18516($fp)
	lw $t0, -18516($fp)
	lw $t1, 0($t0)
	sw $t1, -18520($fp)
	lw $t0, -18520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -18524($fp)
	li $t0, 1
	sw $t0, -18528($fp)
	li $t0, 4
	lw $t1, -18528($fp)
	mul $t0, $t0, $t1
	sw $t0, -18532($fp)
	lw $t0, -18532($fp)
	lw $t1, -18524($fp)
	add $t0, $t0, $t1
	sw $t0, -18536($fp)
	lw $t0, -18536($fp)
	lw $t1, 0($t0)
	sw $t1, -18540($fp)
	lw $t0, -18540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1580($fp)
	sw $t0, -18544($fp)
	lw $t0, -18544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1592($fp)
	sw $t0, -18548($fp)
	lw $t0, -18548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1604($fp)
	sw $t0, -18552($fp)
	lw $t0, -18552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1616($fp)
	sw $t0, -18556($fp)
	lw $t0, -18556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1628($fp)
	sw $t0, -18560($fp)
	lw $t0, -18560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1640($fp)
	sw $t0, -18564($fp)
	lw $t0, -18564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1652($fp)
	sw $t0, -18568($fp)
	lw $t0, -18568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1664($fp)
	sw $t0, -18572($fp)
	lw $t0, -18572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1676($fp)
	sw $t0, -18576($fp)
	lw $t0, -18576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1688($fp)
	sw $t0, -18580($fp)
	lw $t0, -18580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1700($fp)
	sw $t0, -18584($fp)
	lw $t0, -18584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1712($fp)
	sw $t0, -18588($fp)
	lw $t0, -18588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1724($fp)
	sw $t0, -18592($fp)
	lw $t0, -18592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1736($fp)
	sw $t0, -18596($fp)
	lw $t0, -18596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1748($fp)
	sw $t0, -18600($fp)
	lw $t0, -18600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1760($fp)
	sw $t0, -18604($fp)
	lw $t0, -18604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1772($fp)
	sw $t0, -18608($fp)
	lw $t0, -18608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1784($fp)
	sw $t0, -18612($fp)
	lw $t0, -18612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1796($fp)
	sw $t0, -18616($fp)
	lw $t0, -18616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1808($fp)
	sw $t0, -18620($fp)
	lw $t0, -18620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1820($fp)
	sw $t0, -18624($fp)
	lw $t0, -18624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1832($fp)
	sw $t0, -18628($fp)
	lw $t0, -18628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1844($fp)
	sw $t0, -18632($fp)
	lw $t0, -18632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -18636($fp)
	li $t0, 0
	sw $t0, -18640($fp)
	li $t0, 4
	lw $t1, -18640($fp)
	mul $t0, $t0, $t1
	sw $t0, -18644($fp)
	lw $t0, -18644($fp)
	lw $t1, -18636($fp)
	add $t0, $t0, $t1
	sw $t0, -18648($fp)
	lw $t0, -18648($fp)
	lw $t1, 0($t0)
	sw $t1, -18652($fp)
	lw $t0, -18652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -18656($fp)
	li $t0, 1
	sw $t0, -18660($fp)
	li $t0, 4
	lw $t1, -18660($fp)
	mul $t0, $t0, $t1
	sw $t0, -18664($fp)
	lw $t0, -18664($fp)
	lw $t1, -18656($fp)
	add $t0, $t0, $t1
	sw $t0, -18668($fp)
	lw $t0, -18668($fp)
	lw $t1, 0($t0)
	sw $t1, -18672($fp)
	lw $t0, -18672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -18676($fp)
	li $t0, 2
	sw $t0, -18680($fp)
	li $t0, 4
	lw $t1, -18680($fp)
	mul $t0, $t0, $t1
	sw $t0, -18684($fp)
	lw $t0, -18684($fp)
	lw $t1, -18676($fp)
	add $t0, $t0, $t1
	sw $t0, -18688($fp)
	lw $t0, -18688($fp)
	lw $t1, 0($t0)
	sw $t1, -18692($fp)
	lw $t0, -18692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -18696($fp)
	li $t0, 3
	sw $t0, -18700($fp)
	li $t0, 4
	lw $t1, -18700($fp)
	mul $t0, $t0, $t1
	sw $t0, -18704($fp)
	lw $t0, -18704($fp)
	lw $t1, -18696($fp)
	add $t0, $t0, $t1
	sw $t0, -18708($fp)
	lw $t0, -18708($fp)
	lw $t1, 0($t0)
	sw $t1, -18712($fp)
	lw $t0, -18712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -18716($fp)
	li $t0, 4
	sw $t0, -18720($fp)
	li $t0, 4
	lw $t1, -18720($fp)
	mul $t0, $t0, $t1
	sw $t0, -18724($fp)
	lw $t0, -18724($fp)
	lw $t1, -18716($fp)
	add $t0, $t0, $t1
	sw $t0, -18728($fp)
	lw $t0, -18728($fp)
	lw $t1, 0($t0)
	sw $t1, -18732($fp)
	lw $t0, -18732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -18736($fp)
	li $t0, 5
	sw $t0, -18740($fp)
	li $t0, 4
	lw $t1, -18740($fp)
	mul $t0, $t0, $t1
	sw $t0, -18744($fp)
	lw $t0, -18744($fp)
	lw $t1, -18736($fp)
	add $t0, $t0, $t1
	sw $t0, -18748($fp)
	lw $t0, -18748($fp)
	lw $t1, 0($t0)
	sw $t1, -18752($fp)
	lw $t0, -18752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2000($fp)
	sw $t0, -18756($fp)
	lw $t0, -18756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2012($fp)
	sw $t0, -18760($fp)
	lw $t0, -18760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2024($fp)
	sw $t0, -18764($fp)
	lw $t0, -18764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2036($fp)
	sw $t0, -18768($fp)
	lw $t0, -18768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2048($fp)
	sw $t0, -18772($fp)
	lw $t0, -18772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2060($fp)
	sw $t0, -18776($fp)
	lw $t0, -18776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2072($fp)
	sw $t0, -18780($fp)
	lw $t0, -18780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -18784($fp)
	li $t0, 0
	sw $t0, -18788($fp)
	li $t0, 4
	lw $t1, -18788($fp)
	mul $t0, $t0, $t1
	sw $t0, -18792($fp)
	lw $t0, -18792($fp)
	lw $t1, -18784($fp)
	add $t0, $t0, $t1
	sw $t0, -18796($fp)
	lw $t0, -18796($fp)
	lw $t1, 0($t0)
	sw $t1, -18800($fp)
	lw $t0, -18800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -18804($fp)
	li $t0, 1
	sw $t0, -18808($fp)
	li $t0, 4
	lw $t1, -18808($fp)
	mul $t0, $t0, $t1
	sw $t0, -18812($fp)
	lw $t0, -18812($fp)
	lw $t1, -18804($fp)
	add $t0, $t0, $t1
	sw $t0, -18816($fp)
	lw $t0, -18816($fp)
	lw $t1, 0($t0)
	sw $t1, -18820($fp)
	lw $t0, -18820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -18824($fp)
	li $t0, 2
	sw $t0, -18828($fp)
	li $t0, 4
	lw $t1, -18828($fp)
	mul $t0, $t0, $t1
	sw $t0, -18832($fp)
	lw $t0, -18832($fp)
	lw $t1, -18824($fp)
	add $t0, $t0, $t1
	sw $t0, -18836($fp)
	lw $t0, -18836($fp)
	lw $t1, 0($t0)
	sw $t1, -18840($fp)
	lw $t0, -18840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -18844($fp)
	li $t0, 3
	sw $t0, -18848($fp)
	li $t0, 4
	lw $t1, -18848($fp)
	mul $t0, $t0, $t1
	sw $t0, -18852($fp)
	lw $t0, -18852($fp)
	lw $t1, -18844($fp)
	add $t0, $t0, $t1
	sw $t0, -18856($fp)
	lw $t0, -18856($fp)
	lw $t1, 0($t0)
	sw $t1, -18860($fp)
	lw $t0, -18860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2180($fp)
	sw $t0, -18864($fp)
	lw $t0, -18864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2192($fp)
	sw $t0, -18868($fp)
	lw $t0, -18868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -204
	sw $t0, -18872($fp)
	li $t0, 0
	sw $t0, -18876($fp)
	li $t0, 4
	lw $t1, -18876($fp)
	mul $t0, $t0, $t1
	sw $t0, -18880($fp)
	lw $t0, -18880($fp)
	lw $t1, -18872($fp)
	add $t0, $t0, $t1
	sw $t0, -18884($fp)
	lw $t0, -18884($fp)
	lw $t1, 0($t0)
	sw $t1, -18888($fp)
	lw $t0, -18888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -204
	sw $t0, -18892($fp)
	li $t0, 1
	sw $t0, -18896($fp)
	li $t0, 4
	lw $t1, -18896($fp)
	mul $t0, $t0, $t1
	sw $t0, -18900($fp)
	lw $t0, -18900($fp)
	lw $t1, -18892($fp)
	add $t0, $t0, $t1
	sw $t0, -18904($fp)
	lw $t0, -18904($fp)
	lw $t1, 0($t0)
	sw $t1, -18908($fp)
	lw $t0, -18908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -204
	sw $t0, -18912($fp)
	li $t0, 2
	sw $t0, -18916($fp)
	li $t0, 4
	lw $t1, -18916($fp)
	mul $t0, $t0, $t1
	sw $t0, -18920($fp)
	lw $t0, -18920($fp)
	lw $t1, -18912($fp)
	add $t0, $t0, $t1
	sw $t0, -18924($fp)
	lw $t0, -18924($fp)
	lw $t1, 0($t0)
	sw $t1, -18928($fp)
	lw $t0, -18928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -204
	sw $t0, -18932($fp)
	li $t0, 3
	sw $t0, -18936($fp)
	li $t0, 4
	lw $t1, -18936($fp)
	mul $t0, $t0, $t1
	sw $t0, -18940($fp)
	lw $t0, -18940($fp)
	lw $t1, -18932($fp)
	add $t0, $t0, $t1
	sw $t0, -18944($fp)
	lw $t0, -18944($fp)
	lw $t1, 0($t0)
	sw $t1, -18948($fp)
	lw $t0, -18948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -204
	sw $t0, -18952($fp)
	li $t0, 4
	sw $t0, -18956($fp)
	li $t0, 4
	lw $t1, -18956($fp)
	mul $t0, $t0, $t1
	sw $t0, -18960($fp)
	lw $t0, -18960($fp)
	lw $t1, -18952($fp)
	add $t0, $t0, $t1
	sw $t0, -18964($fp)
	lw $t0, -18964($fp)
	lw $t1, 0($t0)
	sw $t1, -18968($fp)
	lw $t0, -18968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -204
	sw $t0, -18972($fp)
	li $t0, 5
	sw $t0, -18976($fp)
	li $t0, 4
	lw $t1, -18976($fp)
	mul $t0, $t0, $t1
	sw $t0, -18980($fp)
	lw $t0, -18980($fp)
	lw $t1, -18972($fp)
	add $t0, $t0, $t1
	sw $t0, -18984($fp)
	lw $t0, -18984($fp)
	lw $t1, 0($t0)
	sw $t1, -18988($fp)
	lw $t0, -18988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2348($fp)
	sw $t0, -18992($fp)
	lw $t0, -18992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2360($fp)
	sw $t0, -18996($fp)
	lw $t0, -18996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2372($fp)
	sw $t0, -19000($fp)
	lw $t0, -19000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2384($fp)
	sw $t0, -19004($fp)
	lw $t0, -19004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2396($fp)
	sw $t0, -19008($fp)
	lw $t0, -19008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -19012($fp)
	li $t0, 0
	sw $t0, -19016($fp)
	li $t0, 4
	lw $t1, -19016($fp)
	mul $t0, $t0, $t1
	sw $t0, -19020($fp)
	lw $t0, -19020($fp)
	lw $t1, -19012($fp)
	add $t0, $t0, $t1
	sw $t0, -19024($fp)
	lw $t0, -19024($fp)
	lw $t1, 0($t0)
	sw $t1, -19028($fp)
	lw $t0, -19028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -19032($fp)
	li $t0, 1
	sw $t0, -19036($fp)
	li $t0, 4
	lw $t1, -19036($fp)
	mul $t0, $t0, $t1
	sw $t0, -19040($fp)
	lw $t0, -19040($fp)
	lw $t1, -19032($fp)
	add $t0, $t0, $t1
	sw $t0, -19044($fp)
	lw $t0, -19044($fp)
	lw $t1, 0($t0)
	sw $t1, -19048($fp)
	lw $t0, -19048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -19052($fp)
	li $t0, 2
	sw $t0, -19056($fp)
	li $t0, 4
	lw $t1, -19056($fp)
	mul $t0, $t0, $t1
	sw $t0, -19060($fp)
	lw $t0, -19060($fp)
	lw $t1, -19052($fp)
	add $t0, $t0, $t1
	sw $t0, -19064($fp)
	lw $t0, -19064($fp)
	lw $t1, 0($t0)
	sw $t1, -19068($fp)
	lw $t0, -19068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -19072($fp)
	li $t0, 3
	sw $t0, -19076($fp)
	li $t0, 4
	lw $t1, -19076($fp)
	mul $t0, $t0, $t1
	sw $t0, -19080($fp)
	lw $t0, -19080($fp)
	lw $t1, -19072($fp)
	add $t0, $t0, $t1
	sw $t0, -19084($fp)
	lw $t0, -19084($fp)
	lw $t1, 0($t0)
	sw $t1, -19088($fp)
	lw $t0, -19088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -19092($fp)
	li $t0, 4
	sw $t0, -19096($fp)
	li $t0, 4
	lw $t1, -19096($fp)
	mul $t0, $t0, $t1
	sw $t0, -19100($fp)
	lw $t0, -19100($fp)
	lw $t1, -19092($fp)
	add $t0, $t0, $t1
	sw $t0, -19104($fp)
	lw $t0, -19104($fp)
	lw $t1, 0($t0)
	sw $t1, -19108($fp)
	lw $t0, -19108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -19112($fp)
	li $t0, 5
	sw $t0, -19116($fp)
	li $t0, 4
	lw $t1, -19116($fp)
	mul $t0, $t0, $t1
	sw $t0, -19120($fp)
	lw $t0, -19120($fp)
	lw $t1, -19112($fp)
	add $t0, $t0, $t1
	sw $t0, -19124($fp)
	lw $t0, -19124($fp)
	lw $t1, 0($t0)
	sw $t1, -19128($fp)
	lw $t0, -19128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -19132($fp)
	li $t0, 6
	sw $t0, -19136($fp)
	li $t0, 4
	lw $t1, -19136($fp)
	mul $t0, $t0, $t1
	sw $t0, -19140($fp)
	lw $t0, -19140($fp)
	lw $t1, -19132($fp)
	add $t0, $t0, $t1
	sw $t0, -19144($fp)
	lw $t0, -19144($fp)
	lw $t1, 0($t0)
	sw $t1, -19148($fp)
	lw $t0, -19148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -19152($fp)
	li $t0, 7
	sw $t0, -19156($fp)
	li $t0, 4
	lw $t1, -19156($fp)
	mul $t0, $t0, $t1
	sw $t0, -19160($fp)
	lw $t0, -19160($fp)
	lw $t1, -19152($fp)
	add $t0, $t0, $t1
	sw $t0, -19164($fp)
	lw $t0, -19164($fp)
	lw $t1, 0($t0)
	sw $t1, -19168($fp)
	lw $t0, -19168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -19172($fp)
	li $t0, 8
	sw $t0, -19176($fp)
	li $t0, 4
	lw $t1, -19176($fp)
	mul $t0, $t0, $t1
	sw $t0, -19180($fp)
	lw $t0, -19180($fp)
	lw $t1, -19172($fp)
	add $t0, $t0, $t1
	sw $t0, -19184($fp)
	lw $t0, -19184($fp)
	lw $t1, 0($t0)
	sw $t1, -19188($fp)
	lw $t0, -19188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -19192($fp)
	li $t0, 0
	sw $t0, -19196($fp)
	li $t0, 4
	lw $t1, -19196($fp)
	mul $t0, $t0, $t1
	sw $t0, -19200($fp)
	lw $t0, -19200($fp)
	lw $t1, -19192($fp)
	add $t0, $t0, $t1
	sw $t0, -19204($fp)
	lw $t0, -19204($fp)
	lw $t1, 0($t0)
	sw $t1, -19208($fp)
	lw $t0, -19208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -19212($fp)
	li $t0, 1
	sw $t0, -19216($fp)
	li $t0, 4
	lw $t1, -19216($fp)
	mul $t0, $t0, $t1
	sw $t0, -19220($fp)
	lw $t0, -19220($fp)
	lw $t1, -19212($fp)
	add $t0, $t0, $t1
	sw $t0, -19224($fp)
	lw $t0, -19224($fp)
	lw $t1, 0($t0)
	sw $t1, -19228($fp)
	lw $t0, -19228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -19232($fp)
	li $t0, 2
	sw $t0, -19236($fp)
	li $t0, 4
	lw $t1, -19236($fp)
	mul $t0, $t0, $t1
	sw $t0, -19240($fp)
	lw $t0, -19240($fp)
	lw $t1, -19232($fp)
	add $t0, $t0, $t1
	sw $t0, -19244($fp)
	lw $t0, -19244($fp)
	lw $t1, 0($t0)
	sw $t1, -19248($fp)
	lw $t0, -19248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -19252($fp)
	li $t0, 3
	sw $t0, -19256($fp)
	li $t0, 4
	lw $t1, -19256($fp)
	mul $t0, $t0, $t1
	sw $t0, -19260($fp)
	lw $t0, -19260($fp)
	lw $t1, -19252($fp)
	add $t0, $t0, $t1
	sw $t0, -19264($fp)
	lw $t0, -19264($fp)
	lw $t1, 0($t0)
	sw $t1, -19268($fp)
	lw $t0, -19268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -19272($fp)
	li $t0, 4
	sw $t0, -19276($fp)
	li $t0, 4
	lw $t1, -19276($fp)
	mul $t0, $t0, $t1
	sw $t0, -19280($fp)
	lw $t0, -19280($fp)
	lw $t1, -19272($fp)
	add $t0, $t0, $t1
	sw $t0, -19284($fp)
	lw $t0, -19284($fp)
	lw $t1, 0($t0)
	sw $t1, -19288($fp)
	lw $t0, -19288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -19292($fp)
	li $t0, 5
	sw $t0, -19296($fp)
	li $t0, 4
	lw $t1, -19296($fp)
	mul $t0, $t0, $t1
	sw $t0, -19300($fp)
	lw $t0, -19300($fp)
	lw $t1, -19292($fp)
	add $t0, $t0, $t1
	sw $t0, -19304($fp)
	lw $t0, -19304($fp)
	lw $t1, 0($t0)
	sw $t1, -19308($fp)
	lw $t0, -19308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -19312($fp)
	li $t0, 6
	sw $t0, -19316($fp)
	li $t0, 4
	lw $t1, -19316($fp)
	mul $t0, $t0, $t1
	sw $t0, -19320($fp)
	lw $t0, -19320($fp)
	lw $t1, -19312($fp)
	add $t0, $t0, $t1
	sw $t0, -19324($fp)
	lw $t0, -19324($fp)
	lw $t1, 0($t0)
	sw $t1, -19328($fp)
	lw $t0, -19328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -19332($fp)
	li $t0, 7
	sw $t0, -19336($fp)
	li $t0, 4
	lw $t1, -19336($fp)
	mul $t0, $t0, $t1
	sw $t0, -19340($fp)
	lw $t0, -19340($fp)
	lw $t1, -19332($fp)
	add $t0, $t0, $t1
	sw $t0, -19344($fp)
	lw $t0, -19344($fp)
	lw $t1, 0($t0)
	sw $t1, -19348($fp)
	lw $t0, -19348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -19352($fp)
	li $t0, 8
	sw $t0, -19356($fp)
	li $t0, 4
	lw $t1, -19356($fp)
	mul $t0, $t0, $t1
	sw $t0, -19360($fp)
	lw $t0, -19360($fp)
	lw $t1, -19352($fp)
	add $t0, $t0, $t1
	sw $t0, -19364($fp)
	lw $t0, -19364($fp)
	lw $t1, 0($t0)
	sw $t1, -19368($fp)
	lw $t0, -19368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -19372($fp)
	li $t0, 9
	sw $t0, -19376($fp)
	li $t0, 4
	lw $t1, -19376($fp)
	mul $t0, $t0, $t1
	sw $t0, -19380($fp)
	lw $t0, -19380($fp)
	lw $t1, -19372($fp)
	add $t0, $t0, $t1
	sw $t0, -19384($fp)
	lw $t0, -19384($fp)
	lw $t1, 0($t0)
	sw $t1, -19388($fp)
	lw $t0, -19388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2864($fp)
	sw $t0, -19392($fp)
	lw $t0, -19392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2876($fp)
	sw $t0, -19396($fp)
	lw $t0, -19396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2888($fp)
	sw $t0, -19400($fp)
	lw $t0, -19400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2900($fp)
	sw $t0, -19404($fp)
	lw $t0, -19404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2912($fp)
	sw $t0, -19408($fp)
	lw $t0, -19408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2924($fp)
	sw $t0, -19412($fp)
	lw $t0, -19412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2936($fp)
	sw $t0, -19416($fp)
	lw $t0, -19416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2948($fp)
	sw $t0, -19420($fp)
	lw $t0, -19420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2960($fp)
	sw $t0, -19424($fp)
	lw $t0, -19424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -300
	sw $t0, -19428($fp)
	li $t0, 0
	sw $t0, -19432($fp)
	li $t0, 4
	lw $t1, -19432($fp)
	mul $t0, $t0, $t1
	sw $t0, -19436($fp)
	lw $t0, -19436($fp)
	lw $t1, -19428($fp)
	add $t0, $t0, $t1
	sw $t0, -19440($fp)
	lw $t0, -19440($fp)
	lw $t1, 0($t0)
	sw $t1, -19444($fp)
	lw $t0, -19444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -300
	sw $t0, -19448($fp)
	li $t0, 1
	sw $t0, -19452($fp)
	li $t0, 4
	lw $t1, -19452($fp)
	mul $t0, $t0, $t1
	sw $t0, -19456($fp)
	lw $t0, -19456($fp)
	lw $t1, -19448($fp)
	add $t0, $t0, $t1
	sw $t0, -19460($fp)
	lw $t0, -19460($fp)
	lw $t1, 0($t0)
	sw $t1, -19464($fp)
	lw $t0, -19464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -300
	sw $t0, -19468($fp)
	li $t0, 2
	sw $t0, -19472($fp)
	li $t0, 4
	lw $t1, -19472($fp)
	mul $t0, $t0, $t1
	sw $t0, -19476($fp)
	lw $t0, -19476($fp)
	lw $t1, -19468($fp)
	add $t0, $t0, $t1
	sw $t0, -19480($fp)
	lw $t0, -19480($fp)
	lw $t1, 0($t0)
	sw $t1, -19484($fp)
	lw $t0, -19484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -300
	sw $t0, -19488($fp)
	li $t0, 3
	sw $t0, -19492($fp)
	li $t0, 4
	lw $t1, -19492($fp)
	mul $t0, $t0, $t1
	sw $t0, -19496($fp)
	lw $t0, -19496($fp)
	lw $t1, -19488($fp)
	add $t0, $t0, $t1
	sw $t0, -19500($fp)
	lw $t0, -19500($fp)
	lw $t1, 0($t0)
	sw $t1, -19504($fp)
	lw $t0, -19504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -300
	sw $t0, -19508($fp)
	li $t0, 4
	sw $t0, -19512($fp)
	li $t0, 4
	lw $t1, -19512($fp)
	mul $t0, $t0, $t1
	sw $t0, -19516($fp)
	lw $t0, -19516($fp)
	lw $t1, -19508($fp)
	add $t0, $t0, $t1
	sw $t0, -19520($fp)
	lw $t0, -19520($fp)
	lw $t1, 0($t0)
	sw $t1, -19524($fp)
	lw $t0, -19524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3092($fp)
	sw $t0, -19528($fp)
	lw $t0, -19528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3104($fp)
	sw $t0, -19532($fp)
	lw $t0, -19532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3116($fp)
	sw $t0, -19536($fp)
	lw $t0, -19536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3128($fp)
	sw $t0, -19540($fp)
	lw $t0, -19540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -316
	sw $t0, -19544($fp)
	li $t0, 0
	sw $t0, -19548($fp)
	li $t0, 4
	lw $t1, -19548($fp)
	mul $t0, $t0, $t1
	sw $t0, -19552($fp)
	lw $t0, -19552($fp)
	lw $t1, -19544($fp)
	add $t0, $t0, $t1
	sw $t0, -19556($fp)
	lw $t0, -19556($fp)
	lw $t1, 0($t0)
	sw $t1, -19560($fp)
	lw $t0, -19560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -316
	sw $t0, -19564($fp)
	li $t0, 1
	sw $t0, -19568($fp)
	li $t0, 4
	lw $t1, -19568($fp)
	mul $t0, $t0, $t1
	sw $t0, -19572($fp)
	lw $t0, -19572($fp)
	lw $t1, -19564($fp)
	add $t0, $t0, $t1
	sw $t0, -19576($fp)
	lw $t0, -19576($fp)
	lw $t1, 0($t0)
	sw $t1, -19580($fp)
	lw $t0, -19580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -316
	sw $t0, -19584($fp)
	li $t0, 2
	sw $t0, -19588($fp)
	li $t0, 4
	lw $t1, -19588($fp)
	mul $t0, $t0, $t1
	sw $t0, -19592($fp)
	lw $t0, -19592($fp)
	lw $t1, -19584($fp)
	add $t0, $t0, $t1
	sw $t0, -19596($fp)
	lw $t0, -19596($fp)
	lw $t1, 0($t0)
	sw $t1, -19600($fp)
	lw $t0, -19600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -316
	sw $t0, -19604($fp)
	li $t0, 3
	sw $t0, -19608($fp)
	li $t0, 4
	lw $t1, -19608($fp)
	mul $t0, $t0, $t1
	sw $t0, -19612($fp)
	lw $t0, -19612($fp)
	lw $t1, -19604($fp)
	add $t0, $t0, $t1
	sw $t0, -19616($fp)
	lw $t0, -19616($fp)
	lw $t1, 0($t0)
	sw $t1, -19620($fp)
	lw $t0, -19620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3236($fp)
	sw $t0, -19624($fp)
	lw $t0, -19624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -356
	sw $t0, -19628($fp)
	li $t0, 0
	sw $t0, -19632($fp)
	li $t0, 4
	lw $t1, -19632($fp)
	mul $t0, $t0, $t1
	sw $t0, -19636($fp)
	lw $t0, -19636($fp)
	lw $t1, -19628($fp)
	add $t0, $t0, $t1
	sw $t0, -19640($fp)
	lw $t0, -19640($fp)
	lw $t1, 0($t0)
	sw $t1, -19644($fp)
	lw $t0, -19644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -356
	sw $t0, -19648($fp)
	li $t0, 1
	sw $t0, -19652($fp)
	li $t0, 4
	lw $t1, -19652($fp)
	mul $t0, $t0, $t1
	sw $t0, -19656($fp)
	lw $t0, -19656($fp)
	lw $t1, -19648($fp)
	add $t0, $t0, $t1
	sw $t0, -19660($fp)
	lw $t0, -19660($fp)
	lw $t1, 0($t0)
	sw $t1, -19664($fp)
	lw $t0, -19664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -356
	sw $t0, -19668($fp)
	li $t0, 2
	sw $t0, -19672($fp)
	li $t0, 4
	lw $t1, -19672($fp)
	mul $t0, $t0, $t1
	sw $t0, -19676($fp)
	lw $t0, -19676($fp)
	lw $t1, -19668($fp)
	add $t0, $t0, $t1
	sw $t0, -19680($fp)
	lw $t0, -19680($fp)
	lw $t1, 0($t0)
	sw $t1, -19684($fp)
	lw $t0, -19684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -356
	sw $t0, -19688($fp)
	li $t0, 3
	sw $t0, -19692($fp)
	li $t0, 4
	lw $t1, -19692($fp)
	mul $t0, $t0, $t1
	sw $t0, -19696($fp)
	lw $t0, -19696($fp)
	lw $t1, -19688($fp)
	add $t0, $t0, $t1
	sw $t0, -19700($fp)
	lw $t0, -19700($fp)
	lw $t1, 0($t0)
	sw $t1, -19704($fp)
	lw $t0, -19704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -356
	sw $t0, -19708($fp)
	li $t0, 4
	sw $t0, -19712($fp)
	li $t0, 4
	lw $t1, -19712($fp)
	mul $t0, $t0, $t1
	sw $t0, -19716($fp)
	lw $t0, -19716($fp)
	lw $t1, -19708($fp)
	add $t0, $t0, $t1
	sw $t0, -19720($fp)
	lw $t0, -19720($fp)
	lw $t1, 0($t0)
	sw $t1, -19724($fp)
	lw $t0, -19724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -356
	sw $t0, -19728($fp)
	li $t0, 5
	sw $t0, -19732($fp)
	li $t0, 4
	lw $t1, -19732($fp)
	mul $t0, $t0, $t1
	sw $t0, -19736($fp)
	lw $t0, -19736($fp)
	lw $t1, -19728($fp)
	add $t0, $t0, $t1
	sw $t0, -19740($fp)
	lw $t0, -19740($fp)
	lw $t1, 0($t0)
	sw $t1, -19744($fp)
	lw $t0, -19744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -356
	sw $t0, -19748($fp)
	li $t0, 6
	sw $t0, -19752($fp)
	li $t0, 4
	lw $t1, -19752($fp)
	mul $t0, $t0, $t1
	sw $t0, -19756($fp)
	lw $t0, -19756($fp)
	lw $t1, -19748($fp)
	add $t0, $t0, $t1
	sw $t0, -19760($fp)
	lw $t0, -19760($fp)
	lw $t1, 0($t0)
	sw $t1, -19764($fp)
	lw $t0, -19764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -356
	sw $t0, -19768($fp)
	li $t0, 7
	sw $t0, -19772($fp)
	li $t0, 4
	lw $t1, -19772($fp)
	mul $t0, $t0, $t1
	sw $t0, -19776($fp)
	lw $t0, -19776($fp)
	lw $t1, -19768($fp)
	add $t0, $t0, $t1
	sw $t0, -19780($fp)
	lw $t0, -19780($fp)
	lw $t1, 0($t0)
	sw $t1, -19784($fp)
	lw $t0, -19784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -356
	sw $t0, -19788($fp)
	li $t0, 8
	sw $t0, -19792($fp)
	li $t0, 4
	lw $t1, -19792($fp)
	mul $t0, $t0, $t1
	sw $t0, -19796($fp)
	lw $t0, -19796($fp)
	lw $t1, -19788($fp)
	add $t0, $t0, $t1
	sw $t0, -19800($fp)
	lw $t0, -19800($fp)
	lw $t1, 0($t0)
	sw $t1, -19804($fp)
	lw $t0, -19804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -356
	sw $t0, -19808($fp)
	li $t0, 9
	sw $t0, -19812($fp)
	li $t0, 4
	lw $t1, -19812($fp)
	mul $t0, $t0, $t1
	sw $t0, -19816($fp)
	lw $t0, -19816($fp)
	lw $t1, -19808($fp)
	add $t0, $t0, $t1
	sw $t0, -19820($fp)
	lw $t0, -19820($fp)
	lw $t1, 0($t0)
	sw $t1, -19824($fp)
	lw $t0, -19824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -396
	sw $t0, -19828($fp)
	li $t0, 0
	sw $t0, -19832($fp)
	li $t0, 4
	lw $t1, -19832($fp)
	mul $t0, $t0, $t1
	sw $t0, -19836($fp)
	lw $t0, -19836($fp)
	lw $t1, -19828($fp)
	add $t0, $t0, $t1
	sw $t0, -19840($fp)
	lw $t0, -19840($fp)
	lw $t1, 0($t0)
	sw $t1, -19844($fp)
	lw $t0, -19844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -396
	sw $t0, -19848($fp)
	li $t0, 1
	sw $t0, -19852($fp)
	li $t0, 4
	lw $t1, -19852($fp)
	mul $t0, $t0, $t1
	sw $t0, -19856($fp)
	lw $t0, -19856($fp)
	lw $t1, -19848($fp)
	add $t0, $t0, $t1
	sw $t0, -19860($fp)
	lw $t0, -19860($fp)
	lw $t1, 0($t0)
	sw $t1, -19864($fp)
	lw $t0, -19864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -396
	sw $t0, -19868($fp)
	li $t0, 2
	sw $t0, -19872($fp)
	li $t0, 4
	lw $t1, -19872($fp)
	mul $t0, $t0, $t1
	sw $t0, -19876($fp)
	lw $t0, -19876($fp)
	lw $t1, -19868($fp)
	add $t0, $t0, $t1
	sw $t0, -19880($fp)
	lw $t0, -19880($fp)
	lw $t1, 0($t0)
	sw $t1, -19884($fp)
	lw $t0, -19884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -396
	sw $t0, -19888($fp)
	li $t0, 3
	sw $t0, -19892($fp)
	li $t0, 4
	lw $t1, -19892($fp)
	mul $t0, $t0, $t1
	sw $t0, -19896($fp)
	lw $t0, -19896($fp)
	lw $t1, -19888($fp)
	add $t0, $t0, $t1
	sw $t0, -19900($fp)
	lw $t0, -19900($fp)
	lw $t1, 0($t0)
	sw $t1, -19904($fp)
	lw $t0, -19904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -396
	sw $t0, -19908($fp)
	li $t0, 4
	sw $t0, -19912($fp)
	li $t0, 4
	lw $t1, -19912($fp)
	mul $t0, $t0, $t1
	sw $t0, -19916($fp)
	lw $t0, -19916($fp)
	lw $t1, -19908($fp)
	add $t0, $t0, $t1
	sw $t0, -19920($fp)
	lw $t0, -19920($fp)
	lw $t1, 0($t0)
	sw $t1, -19924($fp)
	lw $t0, -19924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -396
	sw $t0, -19928($fp)
	li $t0, 5
	sw $t0, -19932($fp)
	li $t0, 4
	lw $t1, -19932($fp)
	mul $t0, $t0, $t1
	sw $t0, -19936($fp)
	lw $t0, -19936($fp)
	lw $t1, -19928($fp)
	add $t0, $t0, $t1
	sw $t0, -19940($fp)
	lw $t0, -19940($fp)
	lw $t1, 0($t0)
	sw $t1, -19944($fp)
	lw $t0, -19944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -396
	sw $t0, -19948($fp)
	li $t0, 6
	sw $t0, -19952($fp)
	li $t0, 4
	lw $t1, -19952($fp)
	mul $t0, $t0, $t1
	sw $t0, -19956($fp)
	lw $t0, -19956($fp)
	lw $t1, -19948($fp)
	add $t0, $t0, $t1
	sw $t0, -19960($fp)
	lw $t0, -19960($fp)
	lw $t1, 0($t0)
	sw $t1, -19964($fp)
	lw $t0, -19964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -396
	sw $t0, -19968($fp)
	li $t0, 7
	sw $t0, -19972($fp)
	li $t0, 4
	lw $t1, -19972($fp)
	mul $t0, $t0, $t1
	sw $t0, -19976($fp)
	lw $t0, -19976($fp)
	lw $t1, -19968($fp)
	add $t0, $t0, $t1
	sw $t0, -19980($fp)
	lw $t0, -19980($fp)
	lw $t1, 0($t0)
	sw $t1, -19984($fp)
	lw $t0, -19984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -396
	sw $t0, -19988($fp)
	li $t0, 8
	sw $t0, -19992($fp)
	li $t0, 4
	lw $t1, -19992($fp)
	mul $t0, $t0, $t1
	sw $t0, -19996($fp)
	lw $t0, -19996($fp)
	lw $t1, -19988($fp)
	add $t0, $t0, $t1
	sw $t0, -20000($fp)
	lw $t0, -20000($fp)
	lw $t1, 0($t0)
	sw $t1, -20004($fp)
	lw $t0, -20004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -396
	sw $t0, -20008($fp)
	li $t0, 9
	sw $t0, -20012($fp)
	li $t0, 4
	lw $t1, -20012($fp)
	mul $t0, $t0, $t1
	sw $t0, -20016($fp)
	lw $t0, -20016($fp)
	lw $t1, -20008($fp)
	add $t0, $t0, $t1
	sw $t0, -20020($fp)
	lw $t0, -20020($fp)
	lw $t1, 0($t0)
	sw $t1, -20024($fp)
	lw $t0, -20024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -424
	sw $t0, -20028($fp)
	li $t0, 0
	sw $t0, -20032($fp)
	li $t0, 4
	lw $t1, -20032($fp)
	mul $t0, $t0, $t1
	sw $t0, -20036($fp)
	lw $t0, -20036($fp)
	lw $t1, -20028($fp)
	add $t0, $t0, $t1
	sw $t0, -20040($fp)
	lw $t0, -20040($fp)
	lw $t1, 0($t0)
	sw $t1, -20044($fp)
	lw $t0, -20044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -424
	sw $t0, -20048($fp)
	li $t0, 1
	sw $t0, -20052($fp)
	li $t0, 4
	lw $t1, -20052($fp)
	mul $t0, $t0, $t1
	sw $t0, -20056($fp)
	lw $t0, -20056($fp)
	lw $t1, -20048($fp)
	add $t0, $t0, $t1
	sw $t0, -20060($fp)
	lw $t0, -20060($fp)
	lw $t1, 0($t0)
	sw $t1, -20064($fp)
	lw $t0, -20064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -424
	sw $t0, -20068($fp)
	li $t0, 2
	sw $t0, -20072($fp)
	li $t0, 4
	lw $t1, -20072($fp)
	mul $t0, $t0, $t1
	sw $t0, -20076($fp)
	lw $t0, -20076($fp)
	lw $t1, -20068($fp)
	add $t0, $t0, $t1
	sw $t0, -20080($fp)
	lw $t0, -20080($fp)
	lw $t1, 0($t0)
	sw $t1, -20084($fp)
	lw $t0, -20084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -424
	sw $t0, -20088($fp)
	li $t0, 3
	sw $t0, -20092($fp)
	li $t0, 4
	lw $t1, -20092($fp)
	mul $t0, $t0, $t1
	sw $t0, -20096($fp)
	lw $t0, -20096($fp)
	lw $t1, -20088($fp)
	add $t0, $t0, $t1
	sw $t0, -20100($fp)
	lw $t0, -20100($fp)
	lw $t1, 0($t0)
	sw $t1, -20104($fp)
	lw $t0, -20104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -424
	sw $t0, -20108($fp)
	li $t0, 4
	sw $t0, -20112($fp)
	li $t0, 4
	lw $t1, -20112($fp)
	mul $t0, $t0, $t1
	sw $t0, -20116($fp)
	lw $t0, -20116($fp)
	lw $t1, -20108($fp)
	add $t0, $t0, $t1
	sw $t0, -20120($fp)
	lw $t0, -20120($fp)
	lw $t1, 0($t0)
	sw $t1, -20124($fp)
	lw $t0, -20124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -424
	sw $t0, -20128($fp)
	li $t0, 5
	sw $t0, -20132($fp)
	li $t0, 4
	lw $t1, -20132($fp)
	mul $t0, $t0, $t1
	sw $t0, -20136($fp)
	lw $t0, -20136($fp)
	lw $t1, -20128($fp)
	add $t0, $t0, $t1
	sw $t0, -20140($fp)
	lw $t0, -20140($fp)
	lw $t1, 0($t0)
	sw $t1, -20144($fp)
	lw $t0, -20144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -424
	sw $t0, -20148($fp)
	li $t0, 6
	sw $t0, -20152($fp)
	li $t0, 4
	lw $t1, -20152($fp)
	mul $t0, $t0, $t1
	sw $t0, -20156($fp)
	lw $t0, -20156($fp)
	lw $t1, -20148($fp)
	add $t0, $t0, $t1
	sw $t0, -20160($fp)
	lw $t0, -20160($fp)
	lw $t1, 0($t0)
	sw $t1, -20164($fp)
	lw $t0, -20164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3896($fp)
	sw $t0, -20168($fp)
	lw $t0, -20168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3908($fp)
	sw $t0, -20172($fp)
	lw $t0, -20172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3920($fp)
	sw $t0, -20176($fp)
	lw $t0, -20176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3932($fp)
	sw $t0, -20180($fp)
	lw $t0, -20180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3944($fp)
	sw $t0, -20184($fp)
	lw $t0, -20184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3956($fp)
	sw $t0, -20188($fp)
	lw $t0, -20188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3968($fp)
	sw $t0, -20192($fp)
	lw $t0, -20192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3980($fp)
	sw $t0, -20196($fp)
	lw $t0, -20196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3992($fp)
	sw $t0, -20200($fp)
	lw $t0, -20200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4004($fp)
	sw $t0, -20204($fp)
	lw $t0, -20204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -460
	sw $t0, -20208($fp)
	li $t0, 0
	sw $t0, -20212($fp)
	li $t0, 4
	lw $t1, -20212($fp)
	mul $t0, $t0, $t1
	sw $t0, -20216($fp)
	lw $t0, -20216($fp)
	lw $t1, -20208($fp)
	add $t0, $t0, $t1
	sw $t0, -20220($fp)
	lw $t0, -20220($fp)
	lw $t1, 0($t0)
	sw $t1, -20224($fp)
	lw $t0, -20224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -460
	sw $t0, -20228($fp)
	li $t0, 1
	sw $t0, -20232($fp)
	li $t0, 4
	lw $t1, -20232($fp)
	mul $t0, $t0, $t1
	sw $t0, -20236($fp)
	lw $t0, -20236($fp)
	lw $t1, -20228($fp)
	add $t0, $t0, $t1
	sw $t0, -20240($fp)
	lw $t0, -20240($fp)
	lw $t1, 0($t0)
	sw $t1, -20244($fp)
	lw $t0, -20244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -460
	sw $t0, -20248($fp)
	li $t0, 2
	sw $t0, -20252($fp)
	li $t0, 4
	lw $t1, -20252($fp)
	mul $t0, $t0, $t1
	sw $t0, -20256($fp)
	lw $t0, -20256($fp)
	lw $t1, -20248($fp)
	add $t0, $t0, $t1
	sw $t0, -20260($fp)
	lw $t0, -20260($fp)
	lw $t1, 0($t0)
	sw $t1, -20264($fp)
	lw $t0, -20264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -460
	sw $t0, -20268($fp)
	li $t0, 3
	sw $t0, -20272($fp)
	li $t0, 4
	lw $t1, -20272($fp)
	mul $t0, $t0, $t1
	sw $t0, -20276($fp)
	lw $t0, -20276($fp)
	lw $t1, -20268($fp)
	add $t0, $t0, $t1
	sw $t0, -20280($fp)
	lw $t0, -20280($fp)
	lw $t1, 0($t0)
	sw $t1, -20284($fp)
	lw $t0, -20284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -460
	sw $t0, -20288($fp)
	li $t0, 4
	sw $t0, -20292($fp)
	li $t0, 4
	lw $t1, -20292($fp)
	mul $t0, $t0, $t1
	sw $t0, -20296($fp)
	lw $t0, -20296($fp)
	lw $t1, -20288($fp)
	add $t0, $t0, $t1
	sw $t0, -20300($fp)
	lw $t0, -20300($fp)
	lw $t1, 0($t0)
	sw $t1, -20304($fp)
	lw $t0, -20304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -460
	sw $t0, -20308($fp)
	li $t0, 5
	sw $t0, -20312($fp)
	li $t0, 4
	lw $t1, -20312($fp)
	mul $t0, $t0, $t1
	sw $t0, -20316($fp)
	lw $t0, -20316($fp)
	lw $t1, -20308($fp)
	add $t0, $t0, $t1
	sw $t0, -20320($fp)
	lw $t0, -20320($fp)
	lw $t1, 0($t0)
	sw $t1, -20324($fp)
	lw $t0, -20324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -460
	sw $t0, -20328($fp)
	li $t0, 6
	sw $t0, -20332($fp)
	li $t0, 4
	lw $t1, -20332($fp)
	mul $t0, $t0, $t1
	sw $t0, -20336($fp)
	lw $t0, -20336($fp)
	lw $t1, -20328($fp)
	add $t0, $t0, $t1
	sw $t0, -20340($fp)
	lw $t0, -20340($fp)
	lw $t1, 0($t0)
	sw $t1, -20344($fp)
	lw $t0, -20344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -460
	sw $t0, -20348($fp)
	li $t0, 7
	sw $t0, -20352($fp)
	li $t0, 4
	lw $t1, -20352($fp)
	mul $t0, $t0, $t1
	sw $t0, -20356($fp)
	lw $t0, -20356($fp)
	lw $t1, -20348($fp)
	add $t0, $t0, $t1
	sw $t0, -20360($fp)
	lw $t0, -20360($fp)
	lw $t1, 0($t0)
	sw $t1, -20364($fp)
	lw $t0, -20364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -460
	sw $t0, -20368($fp)
	li $t0, 8
	sw $t0, -20372($fp)
	li $t0, 4
	lw $t1, -20372($fp)
	mul $t0, $t0, $t1
	sw $t0, -20376($fp)
	lw $t0, -20376($fp)
	lw $t1, -20368($fp)
	add $t0, $t0, $t1
	sw $t0, -20380($fp)
	lw $t0, -20380($fp)
	lw $t1, 0($t0)
	sw $t1, -20384($fp)
	lw $t0, -20384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4232($fp)
	sw $t0, -20388($fp)
	lw $t0, -20388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4244($fp)
	sw $t0, -20392($fp)
	lw $t0, -20392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4256($fp)
	sw $t0, -20396($fp)
	lw $t0, -20396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4268($fp)
	sw $t0, -20400($fp)
	lw $t0, -20400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -496
	sw $t0, -20404($fp)
	li $t0, 0
	sw $t0, -20408($fp)
	li $t0, 4
	lw $t1, -20408($fp)
	mul $t0, $t0, $t1
	sw $t0, -20412($fp)
	lw $t0, -20412($fp)
	lw $t1, -20404($fp)
	add $t0, $t0, $t1
	sw $t0, -20416($fp)
	lw $t0, -20416($fp)
	lw $t1, 0($t0)
	sw $t1, -20420($fp)
	lw $t0, -20420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -496
	sw $t0, -20424($fp)
	li $t0, 1
	sw $t0, -20428($fp)
	li $t0, 4
	lw $t1, -20428($fp)
	mul $t0, $t0, $t1
	sw $t0, -20432($fp)
	lw $t0, -20432($fp)
	lw $t1, -20424($fp)
	add $t0, $t0, $t1
	sw $t0, -20436($fp)
	lw $t0, -20436($fp)
	lw $t1, 0($t0)
	sw $t1, -20440($fp)
	lw $t0, -20440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -496
	sw $t0, -20444($fp)
	li $t0, 2
	sw $t0, -20448($fp)
	li $t0, 4
	lw $t1, -20448($fp)
	mul $t0, $t0, $t1
	sw $t0, -20452($fp)
	lw $t0, -20452($fp)
	lw $t1, -20444($fp)
	add $t0, $t0, $t1
	sw $t0, -20456($fp)
	lw $t0, -20456($fp)
	lw $t1, 0($t0)
	sw $t1, -20460($fp)
	lw $t0, -20460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -496
	sw $t0, -20464($fp)
	li $t0, 3
	sw $t0, -20468($fp)
	li $t0, 4
	lw $t1, -20468($fp)
	mul $t0, $t0, $t1
	sw $t0, -20472($fp)
	lw $t0, -20472($fp)
	lw $t1, -20464($fp)
	add $t0, $t0, $t1
	sw $t0, -20476($fp)
	lw $t0, -20476($fp)
	lw $t1, 0($t0)
	sw $t1, -20480($fp)
	lw $t0, -20480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -496
	sw $t0, -20484($fp)
	li $t0, 4
	sw $t0, -20488($fp)
	li $t0, 4
	lw $t1, -20488($fp)
	mul $t0, $t0, $t1
	sw $t0, -20492($fp)
	lw $t0, -20492($fp)
	lw $t1, -20484($fp)
	add $t0, $t0, $t1
	sw $t0, -20496($fp)
	lw $t0, -20496($fp)
	lw $t1, 0($t0)
	sw $t1, -20500($fp)
	lw $t0, -20500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -496
	sw $t0, -20504($fp)
	li $t0, 5
	sw $t0, -20508($fp)
	li $t0, 4
	lw $t1, -20508($fp)
	mul $t0, $t0, $t1
	sw $t0, -20512($fp)
	lw $t0, -20512($fp)
	lw $t1, -20504($fp)
	add $t0, $t0, $t1
	sw $t0, -20516($fp)
	lw $t0, -20516($fp)
	lw $t1, 0($t0)
	sw $t1, -20520($fp)
	lw $t0, -20520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -496
	sw $t0, -20524($fp)
	li $t0, 6
	sw $t0, -20528($fp)
	li $t0, 4
	lw $t1, -20528($fp)
	mul $t0, $t0, $t1
	sw $t0, -20532($fp)
	lw $t0, -20532($fp)
	lw $t1, -20524($fp)
	add $t0, $t0, $t1
	sw $t0, -20536($fp)
	lw $t0, -20536($fp)
	lw $t1, 0($t0)
	sw $t1, -20540($fp)
	lw $t0, -20540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -496
	sw $t0, -20544($fp)
	li $t0, 7
	sw $t0, -20548($fp)
	li $t0, 4
	lw $t1, -20548($fp)
	mul $t0, $t0, $t1
	sw $t0, -20552($fp)
	lw $t0, -20552($fp)
	lw $t1, -20544($fp)
	add $t0, $t0, $t1
	sw $t0, -20556($fp)
	lw $t0, -20556($fp)
	lw $t1, 0($t0)
	sw $t1, -20560($fp)
	lw $t0, -20560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -496
	sw $t0, -20564($fp)
	li $t0, 8
	sw $t0, -20568($fp)
	li $t0, 4
	lw $t1, -20568($fp)
	mul $t0, $t0, $t1
	sw $t0, -20572($fp)
	lw $t0, -20572($fp)
	lw $t1, -20564($fp)
	add $t0, $t0, $t1
	sw $t0, -20576($fp)
	lw $t0, -20576($fp)
	lw $t1, 0($t0)
	sw $t1, -20580($fp)
	lw $t0, -20580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -504
	sw $t0, -20584($fp)
	li $t0, 0
	sw $t0, -20588($fp)
	li $t0, 4
	lw $t1, -20588($fp)
	mul $t0, $t0, $t1
	sw $t0, -20592($fp)
	lw $t0, -20592($fp)
	lw $t1, -20584($fp)
	add $t0, $t0, $t1
	sw $t0, -20596($fp)
	lw $t0, -20596($fp)
	lw $t1, 0($t0)
	sw $t1, -20600($fp)
	lw $t0, -20600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -504
	sw $t0, -20604($fp)
	li $t0, 1
	sw $t0, -20608($fp)
	li $t0, 4
	lw $t1, -20608($fp)
	mul $t0, $t0, $t1
	sw $t0, -20612($fp)
	lw $t0, -20612($fp)
	lw $t1, -20604($fp)
	add $t0, $t0, $t1
	sw $t0, -20616($fp)
	lw $t0, -20616($fp)
	lw $t1, 0($t0)
	sw $t1, -20620($fp)
	lw $t0, -20620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1688($fp)
	sw $t0, -20624($fp)
	lw $ra, -4($fp)
	lw $v0, -20624($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -180
	li $t0, 50599
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 25693
	sw $t0, -32($fp)
	addi $t0, $fp, -28
	sw $t0, -36($fp)
	li $t0, 0
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -44($fp)
	lw $t0, -36($fp)
	lw $t1, -44($fp)
	add $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -32($fp)
	lw $t1, -48($fp)
	sw $t0, 0($t1)
	lw $t0, -48($fp)
	lw $t1, 0($t0)
	sw $t1, -52($fp)
	li $t0, 43672
	sw $t0, -56($fp)
	addi $t0, $fp, -28
	sw $t0, -60($fp)
	li $t0, 1
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -68($fp)
	lw $t0, -60($fp)
	lw $t1, -68($fp)
	add $t0, $t0, $t1
	sw $t0, -72($fp)
	lw $t0, -56($fp)
	lw $t1, -72($fp)
	sw $t0, 0($t1)
	lw $t0, -72($fp)
	lw $t1, 0($t0)
	sw $t1, -76($fp)
	li $t0, 19933
	sw $t0, -80($fp)
	addi $t0, $fp, -28
	sw $t0, -84($fp)
	li $t0, 2
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -92($fp)
	lw $t0, -84($fp)
	lw $t1, -92($fp)
	add $t0, $t0, $t1
	sw $t0, -96($fp)
	lw $t0, -80($fp)
	lw $t1, -96($fp)
	sw $t0, 0($t1)
	lw $t0, -96($fp)
	lw $t1, 0($t0)
	sw $t1, -100($fp)
	li $t0, 0
	sw $t0, -104($fp)
	li $t0, 0
	sw $t0, -108($fp)
	li $t0, 57806
	sw $t0, -112($fp)
	li $t0, 43571
	sw $t0, -116($fp)
	lw $t0, -112($fp)
	lw $t1, -116($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -120($fp)
	li $t0, 41135
	sw $t0, -124($fp)
	lw $t1, -120($fp)
	lw $t2, -124($fp)
	bge $t1, $t2, label1045
	j label1046
label1045:
	li $t0, 1
	sw $t0, -108($fp)
label1046:
	addi $sp, $sp, -4
	lw $t0, -108($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -128($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -128($fp)
	sub $t0, $t0, $t1
	sw $t0, -132($fp)
	li $t0, 35624
	sw $t0, -136($fp)
	lw $t0, -132($fp)
	lw $t1, -136($fp)
	sub $t0, $t0, $t1
	sw $t0, -140($fp)
	lw $t1, -140($fp)
	li $t2, 0
	bne $t1, $t2, label1044
	j label1043
label1044:
	addi $t0, $fp, -28
	sw $t0, -144($fp)
	li $t0, 0
	sw $t0, -148($fp)
	li $t0, 20098
	sw $t0, -152($fp)
	lw $t1, -152($fp)
	li $t2, 0
	bne $t1, $t2, label1047
	j label1049
label1049:
	lw $t0, -12($fp)
	sw $t0, -156($fp)
	lw $t1, -156($fp)
	li $t2, 0
	bne $t1, $t2, label1047
	j label1048
label1047:
	li $t0, 1
	sw $t0, -148($fp)
label1048:
	li $t0, 4
	lw $t1, -148($fp)
	mul $t0, $t0, $t1
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	lw $t1, -144($fp)
	add $t0, $t0, $t1
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	lw $t1, 0($t0)
	sw $t1, -168($fp)
	lw $t1, -168($fp)
	li $t2, 0
	bne $t1, $t2, label1042
	j label1043
label1042:
	li $t0, 1
	sw $t0, -104($fp)
label1043:
	lw $t0, -12($fp)
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12($fp)
	sw $t0, -176($fp)
	lw $t0, -12($fp)
	sw $t0, -180($fp)
	lw $t0, -176($fp)
	lw $t1, -180($fp)
	add $t0, $t0, $t1
	sw $t0, -184($fp)
	lw $ra, -4($fp)
	lw $v0, -184($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -476
	li $t0, 37294
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	li $t0, 16665
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
	li $t0, 38158
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
	li $t0, 41691
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
	li $t0, 58540
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
	li $t0, 16145
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
	li $t0, 9555
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
	li $t0, 44919
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
	li $t0, 11053
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
	li $t0, 14952
	sw $t0, -244($fp)
	lw $t0, -44($fp)
	sw $t0, -248($fp)
	li $t0, 50015
	sw $t0, -252($fp)
	lw $t0, -248($fp)
	lw $t1, -252($fp)
	sub $t0, $t0, $t1
	sw $t0, -256($fp)
	addi $t0, $fp, -36
	sw $t0, -260($fp)
	li $t0, 1
	sw $t0, -264($fp)
	li $t0, 4
	lw $t1, -264($fp)
	mul $t0, $t0, $t1
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	lw $t1, -260($fp)
	add $t0, $t0, $t1
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	lw $t1, 0($t0)
	sw $t1, -276($fp)
	li $t0, 42389
	sw $t0, -280($fp)
	lw $t0, -276($fp)
	lw $t1, -280($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -284($fp)
	li $t0, 64475
	sw $t0, -288($fp)
	li $t0, 0
	sw $t0, -292($fp)
	lw $t0, -44($fp)
	sw $t0, -296($fp)
	li $t0, 15416
	sw $t0, -300($fp)
	lw $t0, -296($fp)
	lw $t1, -300($fp)
	sub $t0, $t0, $t1
	sw $t0, -304($fp)
	lw $t1, -304($fp)
	li $t2, 0
	bne $t1, $t2, label1050
	j label1052
label1052:
	li $t0, 48487
	sw $t0, -308($fp)
	lw $t1, -308($fp)
	li $t2, 0
	bne $t1, $t2, label1050
	j label1051
label1050:
	li $t0, 1
	sw $t0, -292($fp)
label1051:
	addi $sp, $sp, -4
	lw $t0, -244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -292($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -312($fp)
	addi $sp, $sp, 24
	lw $t0, -44($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
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
	lw $t0, -336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -340($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -360($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -380($fp)
	li $t0, 3
	sw $t0, -384($fp)
	li $t0, 4
	lw $t1, -384($fp)
	mul $t0, $t0, $t1
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	lw $t1, -380($fp)
	add $t0, $t0, $t1
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	lw $t1, 0($t0)
	sw $t1, -396($fp)
	lw $t0, -396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -400($fp)
	li $t0, 4
	sw $t0, -404($fp)
	li $t0, 4
	lw $t1, -404($fp)
	mul $t0, $t0, $t1
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	lw $t1, -400($fp)
	add $t0, $t0, $t1
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	lw $t1, 0($t0)
	sw $t1, -416($fp)
	lw $t0, -416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -420($fp)
	li $t0, 5
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
	lw $t0, -436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -440($fp)
	li $t0, 6
	sw $t0, -444($fp)
	li $t0, 4
	lw $t1, -444($fp)
	mul $t0, $t0, $t1
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	lw $t1, -440($fp)
	add $t0, $t0, $t1
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	lw $t1, 0($t0)
	sw $t1, -456($fp)
	lw $t0, -456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -460($fp)
	li $t0, 7
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
	li $t0, 32878
	sw $t0, -480($fp)
	lw $ra, -4($fp)
	lw $v0, -480($fp)
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
