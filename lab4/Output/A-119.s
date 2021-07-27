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
	addi $sp, $sp, -8636
	li $t0, 60430
	sw $t0, -272($fp)
	addi $t0, $fp, -32
	sw $t0, -276($fp)
	li $t0, 0
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
	li $t0, 65022
	sw $t0, -296($fp)
	addi $t0, $fp, -32
	sw $t0, -300($fp)
	li $t0, 1
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
	li $t0, 12631
	sw $t0, -320($fp)
	addi $t0, $fp, -32
	sw $t0, -324($fp)
	li $t0, 2
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
	li $t0, 14759
	sw $t0, -344($fp)
	addi $t0, $fp, -32
	sw $t0, -348($fp)
	li $t0, 3
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
	li $t0, 33679
	sw $t0, -368($fp)
	addi $t0, $fp, -32
	sw $t0, -372($fp)
	li $t0, 4
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
	li $t0, 9362
	sw $t0, -392($fp)
	addi $t0, $fp, -32
	sw $t0, -396($fp)
	li $t0, 5
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
	li $t0, 58687
	sw $t0, -416($fp)
	addi $t0, $fp, -32
	sw $t0, -420($fp)
	li $t0, 6
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
	li $t0, 62793
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	li $t0, 21710
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	li $t0, 516
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	li $t0, 43109
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	li $t0, 50741
	sw $t0, -488($fp)
	addi $t0, $fp, -44
	sw $t0, -492($fp)
	li $t0, 0
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
	li $t0, 2238
	sw $t0, -512($fp)
	addi $t0, $fp, -44
	sw $t0, -516($fp)
	li $t0, 1
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
	li $t0, 57343
	sw $t0, -536($fp)
	addi $t0, $fp, -44
	sw $t0, -540($fp)
	li $t0, 2
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -548($fp)
	lw $t0, -540($fp)
	lw $t1, -548($fp)
	add $t0, $t0, $t1
	sw $t0, -552($fp)
	lw $t0, -536($fp)
	lw $t1, -552($fp)
	sw $t0, 0($t1)
	lw $t0, -552($fp)
	lw $t1, 0($t0)
	sw $t1, -556($fp)
	li $t0, 54887
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -568($fp)
	li $t0, 58473
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -580($fp)
	li $t0, 14350
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	li $t0, 58513
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -604($fp)
	li $t0, 49337
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -616($fp)
	li $t0, 9493
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	li $t0, 41623
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	li $t0, 61341
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	li $t0, 58008
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	li $t0, 41652
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	li $t0, 943
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	li $t0, 59540
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
	li $t0, 13558
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	li $t0, 50548
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
	li $t0, 60977
	sw $t0, -740($fp)
	addi $t0, $fp, -84
	sw $t0, -744($fp)
	li $t0, 1
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
	li $t0, 33163
	sw $t0, -764($fp)
	addi $t0, $fp, -84
	sw $t0, -768($fp)
	li $t0, 2
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
	li $t0, 42166
	sw $t0, -788($fp)
	addi $t0, $fp, -84
	sw $t0, -792($fp)
	li $t0, 3
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
	li $t0, 55871
	sw $t0, -812($fp)
	addi $t0, $fp, -84
	sw $t0, -816($fp)
	li $t0, 4
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -824($fp)
	lw $t0, -816($fp)
	lw $t1, -824($fp)
	add $t0, $t0, $t1
	sw $t0, -828($fp)
	lw $t0, -812($fp)
	lw $t1, -828($fp)
	sw $t0, 0($t1)
	lw $t0, -828($fp)
	lw $t1, 0($t0)
	sw $t1, -832($fp)
	li $t0, 32649
	sw $t0, -836($fp)
	addi $t0, $fp, -84
	sw $t0, -840($fp)
	li $t0, 5
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -848($fp)
	lw $t0, -840($fp)
	lw $t1, -848($fp)
	add $t0, $t0, $t1
	sw $t0, -852($fp)
	lw $t0, -836($fp)
	lw $t1, -852($fp)
	sw $t0, 0($t1)
	lw $t0, -852($fp)
	lw $t1, 0($t0)
	sw $t1, -856($fp)
	li $t0, 54798
	sw $t0, -860($fp)
	addi $t0, $fp, -84
	sw $t0, -864($fp)
	li $t0, 6
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -872($fp)
	lw $t0, -864($fp)
	lw $t1, -872($fp)
	add $t0, $t0, $t1
	sw $t0, -876($fp)
	lw $t0, -860($fp)
	lw $t1, -876($fp)
	sw $t0, 0($t1)
	lw $t0, -876($fp)
	lw $t1, 0($t0)
	sw $t1, -880($fp)
	li $t0, 5094
	sw $t0, -884($fp)
	addi $t0, $fp, -84
	sw $t0, -888($fp)
	li $t0, 7
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -896($fp)
	lw $t0, -888($fp)
	lw $t1, -896($fp)
	add $t0, $t0, $t1
	sw $t0, -900($fp)
	lw $t0, -884($fp)
	lw $t1, -900($fp)
	sw $t0, 0($t1)
	lw $t0, -900($fp)
	lw $t1, 0($t0)
	sw $t1, -904($fp)
	li $t0, 792
	sw $t0, -908($fp)
	addi $t0, $fp, -84
	sw $t0, -912($fp)
	li $t0, 8
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
	li $t0, 64160
	sw $t0, -932($fp)
	addi $t0, $fp, -84
	sw $t0, -936($fp)
	li $t0, 9
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
	li $t0, 63782
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	sw $t0, -964($fp)
	li $t0, 63585
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	sw $t0, -976($fp)
	li $t0, 20334
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	sw $t0, -988($fp)
	li $t0, 64298
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	sw $t0, -1000($fp)
	li $t0, 41158
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	sw $t0, -1012($fp)
	li $t0, 5540
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	sw $t0, -1024($fp)
	li $t0, 1000
	sw $t0, -1028($fp)
	addi $t0, $fp, -100
	sw $t0, -1032($fp)
	li $t0, 0
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
	li $t0, 32965
	sw $t0, -1052($fp)
	addi $t0, $fp, -100
	sw $t0, -1056($fp)
	li $t0, 1
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
	li $t0, 60427
	sw $t0, -1076($fp)
	addi $t0, $fp, -100
	sw $t0, -1080($fp)
	li $t0, 2
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
	li $t0, 59474
	sw $t0, -1100($fp)
	addi $t0, $fp, -100
	sw $t0, -1104($fp)
	li $t0, 3
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
	li $t0, 47315
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	sw $t0, -1132($fp)
	li $t0, 53404
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	sw $t0, -1144($fp)
	li $t0, 43275
	sw $t0, -1148($fp)
	addi $t0, $fp, -132
	sw $t0, -1152($fp)
	li $t0, 0
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
	li $t0, 56808
	sw $t0, -1172($fp)
	addi $t0, $fp, -132
	sw $t0, -1176($fp)
	li $t0, 1
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
	li $t0, 29491
	sw $t0, -1196($fp)
	addi $t0, $fp, -132
	sw $t0, -1200($fp)
	li $t0, 2
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
	li $t0, 39080
	sw $t0, -1220($fp)
	addi $t0, $fp, -132
	sw $t0, -1224($fp)
	li $t0, 3
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
	li $t0, 49280
	sw $t0, -1244($fp)
	addi $t0, $fp, -132
	sw $t0, -1248($fp)
	li $t0, 4
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
	li $t0, 5608
	sw $t0, -1268($fp)
	addi $t0, $fp, -132
	sw $t0, -1272($fp)
	li $t0, 5
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
	li $t0, 40023
	sw $t0, -1292($fp)
	addi $t0, $fp, -132
	sw $t0, -1296($fp)
	li $t0, 6
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
	li $t0, 43284
	sw $t0, -1316($fp)
	addi $t0, $fp, -132
	sw $t0, -1320($fp)
	li $t0, 7
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
	li $t0, 19166
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	sw $t0, -1348($fp)
	li $t0, 25035
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	sw $t0, -1360($fp)
	li $t0, 38725
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	sw $t0, -1372($fp)
	li $t0, 52329
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	sw $t0, -1384($fp)
	li $t0, 1666
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	sw $t0, -1396($fp)
	li $t0, 29061
	sw $t0, -1400($fp)
	addi $t0, $fp, -144
	sw $t0, -1404($fp)
	li $t0, 0
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
	li $t0, 19442
	sw $t0, -1424($fp)
	addi $t0, $fp, -144
	sw $t0, -1428($fp)
	li $t0, 1
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
	li $t0, 56464
	sw $t0, -1448($fp)
	addi $t0, $fp, -144
	sw $t0, -1452($fp)
	li $t0, 2
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
	li $t0, 34155
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	sw $t0, -1480($fp)
	li $t0, 20234
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	sw $t0, -1492($fp)
	li $t0, 55088
	sw $t0, -1496($fp)
	addi $t0, $fp, -160
	sw $t0, -1500($fp)
	li $t0, 0
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
	li $t0, 32401
	sw $t0, -1520($fp)
	addi $t0, $fp, -160
	sw $t0, -1524($fp)
	li $t0, 1
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
	li $t0, 18283
	sw $t0, -1544($fp)
	addi $t0, $fp, -160
	sw $t0, -1548($fp)
	li $t0, 2
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
	li $t0, 9887
	sw $t0, -1568($fp)
	addi $t0, $fp, -160
	sw $t0, -1572($fp)
	li $t0, 3
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
	li $t0, 31163
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	sw $t0, -1596($fp)
	lw $t0, -1596($fp)
	sw $t0, -1600($fp)
	li $t0, 59441
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	sw $t0, -1612($fp)
	li $t0, 15427
	sw $t0, -1616($fp)
	addi $t0, $fp, -200
	sw $t0, -1620($fp)
	li $t0, 0
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
	li $t0, 32164
	sw $t0, -1640($fp)
	addi $t0, $fp, -200
	sw $t0, -1644($fp)
	li $t0, 1
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
	li $t0, 26870
	sw $t0, -1664($fp)
	addi $t0, $fp, -200
	sw $t0, -1668($fp)
	li $t0, 2
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
	li $t0, 10318
	sw $t0, -1688($fp)
	addi $t0, $fp, -200
	sw $t0, -1692($fp)
	li $t0, 3
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
	li $t0, 26102
	sw $t0, -1712($fp)
	addi $t0, $fp, -200
	sw $t0, -1716($fp)
	li $t0, 4
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
	li $t0, 8649
	sw $t0, -1736($fp)
	addi $t0, $fp, -200
	sw $t0, -1740($fp)
	li $t0, 5
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
	li $t0, 63722
	sw $t0, -1760($fp)
	addi $t0, $fp, -200
	sw $t0, -1764($fp)
	li $t0, 6
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1772($fp)
	lw $t0, -1764($fp)
	lw $t1, -1772($fp)
	add $t0, $t0, $t1
	sw $t0, -1776($fp)
	lw $t0, -1760($fp)
	lw $t1, -1776($fp)
	sw $t0, 0($t1)
	lw $t0, -1776($fp)
	lw $t1, 0($t0)
	sw $t1, -1780($fp)
	li $t0, 3841
	sw $t0, -1784($fp)
	addi $t0, $fp, -200
	sw $t0, -1788($fp)
	li $t0, 7
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1796($fp)
	lw $t0, -1788($fp)
	lw $t1, -1796($fp)
	add $t0, $t0, $t1
	sw $t0, -1800($fp)
	lw $t0, -1784($fp)
	lw $t1, -1800($fp)
	sw $t0, 0($t1)
	lw $t0, -1800($fp)
	lw $t1, 0($t0)
	sw $t1, -1804($fp)
	li $t0, 65457
	sw $t0, -1808($fp)
	addi $t0, $fp, -200
	sw $t0, -1812($fp)
	li $t0, 8
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1820($fp)
	lw $t0, -1812($fp)
	lw $t1, -1820($fp)
	add $t0, $t0, $t1
	sw $t0, -1824($fp)
	lw $t0, -1808($fp)
	lw $t1, -1824($fp)
	sw $t0, 0($t1)
	lw $t0, -1824($fp)
	lw $t1, 0($t0)
	sw $t1, -1828($fp)
	li $t0, 27678
	sw $t0, -1832($fp)
	addi $t0, $fp, -200
	sw $t0, -1836($fp)
	li $t0, 9
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1844($fp)
	lw $t0, -1836($fp)
	lw $t1, -1844($fp)
	add $t0, $t0, $t1
	sw $t0, -1848($fp)
	lw $t0, -1832($fp)
	lw $t1, -1848($fp)
	sw $t0, 0($t1)
	lw $t0, -1848($fp)
	lw $t1, 0($t0)
	sw $t1, -1852($fp)
	li $t0, 42921
	sw $t0, -1856($fp)
	lw $t0, -1856($fp)
	sw $t0, -1860($fp)
	lw $t0, -1860($fp)
	sw $t0, -1864($fp)
	li $t0, 49201
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	sw $t0, -1872($fp)
	lw $t0, -1872($fp)
	sw $t0, -1876($fp)
	li $t0, 33286
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	sw $t0, -1888($fp)
	li $t0, 17409
	sw $t0, -1892($fp)
	addi $t0, $fp, -204
	sw $t0, -1896($fp)
	li $t0, 0
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
	li $t0, 26950
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	sw $t0, -1920($fp)
	lw $t0, -1920($fp)
	sw $t0, -1924($fp)
	li $t0, 52452
	sw $t0, -1928($fp)
	addi $t0, $fp, -232
	sw $t0, -1932($fp)
	li $t0, 0
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1940($fp)
	lw $t0, -1932($fp)
	lw $t1, -1940($fp)
	add $t0, $t0, $t1
	sw $t0, -1944($fp)
	lw $t0, -1928($fp)
	lw $t1, -1944($fp)
	sw $t0, 0($t1)
	lw $t0, -1944($fp)
	lw $t1, 0($t0)
	sw $t1, -1948($fp)
	li $t0, 42444
	sw $t0, -1952($fp)
	addi $t0, $fp, -232
	sw $t0, -1956($fp)
	li $t0, 1
	sw $t0, -1960($fp)
	lw $t0, -1960($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1964($fp)
	lw $t0, -1956($fp)
	lw $t1, -1964($fp)
	add $t0, $t0, $t1
	sw $t0, -1968($fp)
	lw $t0, -1952($fp)
	lw $t1, -1968($fp)
	sw $t0, 0($t1)
	lw $t0, -1968($fp)
	lw $t1, 0($t0)
	sw $t1, -1972($fp)
	li $t0, 139
	sw $t0, -1976($fp)
	addi $t0, $fp, -232
	sw $t0, -1980($fp)
	li $t0, 2
	sw $t0, -1984($fp)
	lw $t0, -1984($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1988($fp)
	lw $t0, -1980($fp)
	lw $t1, -1988($fp)
	add $t0, $t0, $t1
	sw $t0, -1992($fp)
	lw $t0, -1976($fp)
	lw $t1, -1992($fp)
	sw $t0, 0($t1)
	lw $t0, -1992($fp)
	lw $t1, 0($t0)
	sw $t1, -1996($fp)
	li $t0, 39246
	sw $t0, -2000($fp)
	addi $t0, $fp, -232
	sw $t0, -2004($fp)
	li $t0, 3
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2012($fp)
	lw $t0, -2004($fp)
	lw $t1, -2012($fp)
	add $t0, $t0, $t1
	sw $t0, -2016($fp)
	lw $t0, -2000($fp)
	lw $t1, -2016($fp)
	sw $t0, 0($t1)
	lw $t0, -2016($fp)
	lw $t1, 0($t0)
	sw $t1, -2020($fp)
	li $t0, 44110
	sw $t0, -2024($fp)
	addi $t0, $fp, -232
	sw $t0, -2028($fp)
	li $t0, 4
	sw $t0, -2032($fp)
	lw $t0, -2032($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t0, -2028($fp)
	lw $t1, -2036($fp)
	add $t0, $t0, $t1
	sw $t0, -2040($fp)
	lw $t0, -2024($fp)
	lw $t1, -2040($fp)
	sw $t0, 0($t1)
	lw $t0, -2040($fp)
	lw $t1, 0($t0)
	sw $t1, -2044($fp)
	li $t0, 29200
	sw $t0, -2048($fp)
	addi $t0, $fp, -232
	sw $t0, -2052($fp)
	li $t0, 5
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2060($fp)
	lw $t0, -2052($fp)
	lw $t1, -2060($fp)
	add $t0, $t0, $t1
	sw $t0, -2064($fp)
	lw $t0, -2048($fp)
	lw $t1, -2064($fp)
	sw $t0, 0($t1)
	lw $t0, -2064($fp)
	lw $t1, 0($t0)
	sw $t1, -2068($fp)
	li $t0, 58688
	sw $t0, -2072($fp)
	addi $t0, $fp, -232
	sw $t0, -2076($fp)
	li $t0, 6
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2084($fp)
	lw $t0, -2076($fp)
	lw $t1, -2084($fp)
	add $t0, $t0, $t1
	sw $t0, -2088($fp)
	lw $t0, -2072($fp)
	lw $t1, -2088($fp)
	sw $t0, 0($t1)
	lw $t0, -2088($fp)
	lw $t1, 0($t0)
	sw $t1, -2092($fp)
	li $t0, 35038
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	sw $t0, -2100($fp)
	lw $t0, -2100($fp)
	sw $t0, -2104($fp)
	li $t0, 63356
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	sw $t0, -2112($fp)
	lw $t0, -2112($fp)
	sw $t0, -2116($fp)
	li $t0, 13387
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	sw $t0, -2124($fp)
	lw $t0, -2124($fp)
	sw $t0, -2128($fp)
	li $t0, 24591
	sw $t0, -2132($fp)
	addi $t0, $fp, -264
	sw $t0, -2136($fp)
	li $t0, 0
	sw $t0, -2140($fp)
	lw $t0, -2140($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2144($fp)
	lw $t0, -2136($fp)
	lw $t1, -2144($fp)
	add $t0, $t0, $t1
	sw $t0, -2148($fp)
	lw $t0, -2132($fp)
	lw $t1, -2148($fp)
	sw $t0, 0($t1)
	lw $t0, -2148($fp)
	lw $t1, 0($t0)
	sw $t1, -2152($fp)
	li $t0, 30221
	sw $t0, -2156($fp)
	addi $t0, $fp, -264
	sw $t0, -2160($fp)
	li $t0, 1
	sw $t0, -2164($fp)
	lw $t0, -2164($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2168($fp)
	lw $t0, -2160($fp)
	lw $t1, -2168($fp)
	add $t0, $t0, $t1
	sw $t0, -2172($fp)
	lw $t0, -2156($fp)
	lw $t1, -2172($fp)
	sw $t0, 0($t1)
	lw $t0, -2172($fp)
	lw $t1, 0($t0)
	sw $t1, -2176($fp)
	li $t0, 31670
	sw $t0, -2180($fp)
	addi $t0, $fp, -264
	sw $t0, -2184($fp)
	li $t0, 2
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2192($fp)
	lw $t0, -2184($fp)
	lw $t1, -2192($fp)
	add $t0, $t0, $t1
	sw $t0, -2196($fp)
	lw $t0, -2180($fp)
	lw $t1, -2196($fp)
	sw $t0, 0($t1)
	lw $t0, -2196($fp)
	lw $t1, 0($t0)
	sw $t1, -2200($fp)
	li $t0, 34478
	sw $t0, -2204($fp)
	addi $t0, $fp, -264
	sw $t0, -2208($fp)
	li $t0, 3
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2216($fp)
	lw $t0, -2208($fp)
	lw $t1, -2216($fp)
	add $t0, $t0, $t1
	sw $t0, -2220($fp)
	lw $t0, -2204($fp)
	lw $t1, -2220($fp)
	sw $t0, 0($t1)
	lw $t0, -2220($fp)
	lw $t1, 0($t0)
	sw $t1, -2224($fp)
	li $t0, 61385
	sw $t0, -2228($fp)
	addi $t0, $fp, -264
	sw $t0, -2232($fp)
	li $t0, 4
	sw $t0, -2236($fp)
	lw $t0, -2236($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2240($fp)
	lw $t0, -2232($fp)
	lw $t1, -2240($fp)
	add $t0, $t0, $t1
	sw $t0, -2244($fp)
	lw $t0, -2228($fp)
	lw $t1, -2244($fp)
	sw $t0, 0($t1)
	lw $t0, -2244($fp)
	lw $t1, 0($t0)
	sw $t1, -2248($fp)
	li $t0, 25576
	sw $t0, -2252($fp)
	addi $t0, $fp, -264
	sw $t0, -2256($fp)
	li $t0, 5
	sw $t0, -2260($fp)
	lw $t0, -2260($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2264($fp)
	lw $t0, -2256($fp)
	lw $t1, -2264($fp)
	add $t0, $t0, $t1
	sw $t0, -2268($fp)
	lw $t0, -2252($fp)
	lw $t1, -2268($fp)
	sw $t0, 0($t1)
	lw $t0, -2268($fp)
	lw $t1, 0($t0)
	sw $t1, -2272($fp)
	li $t0, 49905
	sw $t0, -2276($fp)
	addi $t0, $fp, -264
	sw $t0, -2280($fp)
	li $t0, 6
	sw $t0, -2284($fp)
	lw $t0, -2284($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2288($fp)
	lw $t0, -2280($fp)
	lw $t1, -2288($fp)
	add $t0, $t0, $t1
	sw $t0, -2292($fp)
	lw $t0, -2276($fp)
	lw $t1, -2292($fp)
	sw $t0, 0($t1)
	lw $t0, -2292($fp)
	lw $t1, 0($t0)
	sw $t1, -2296($fp)
	li $t0, 28013
	sw $t0, -2300($fp)
	addi $t0, $fp, -264
	sw $t0, -2304($fp)
	li $t0, 7
	sw $t0, -2308($fp)
	lw $t0, -2308($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2312($fp)
	lw $t0, -2304($fp)
	lw $t1, -2312($fp)
	add $t0, $t0, $t1
	sw $t0, -2316($fp)
	lw $t0, -2300($fp)
	lw $t1, -2316($fp)
	sw $t0, 0($t1)
	lw $t0, -2316($fp)
	lw $t1, 0($t0)
	sw $t1, -2320($fp)
	li $t0, 52446
	sw $t0, -2324($fp)
	addi $t0, $fp, -268
	sw $t0, -2328($fp)
	li $t0, 0
	sw $t0, -2332($fp)
	lw $t0, -2332($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2336($fp)
	lw $t0, -2328($fp)
	lw $t1, -2336($fp)
	add $t0, $t0, $t1
	sw $t0, -2340($fp)
	lw $t0, -2324($fp)
	lw $t1, -2340($fp)
	sw $t0, 0($t1)
	lw $t0, -2340($fp)
	lw $t1, 0($t0)
	sw $t1, -2344($fp)
	li $t0, 60223
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	sw $t0, -2356($fp)
	addi $t0, $fp, -100
	sw $t0, -2360($fp)
	li $t0, 0
	sw $t0, -2364($fp)
	li $t0, 0
	sw $t0, -2368($fp)
	addi $t0, $fp, -32
	sw $t0, -2372($fp)
	li $t0, 6
	sw $t0, -2376($fp)
	li $t0, 4
	lw $t1, -2376($fp)
	mul $t0, $t0, $t1
	sw $t0, -2380($fp)
	lw $t0, -2380($fp)
	lw $t1, -2372($fp)
	add $t0, $t0, $t1
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	lw $t1, 0($t0)
	sw $t1, -2388($fp)
	li $t0, 58409
	sw $t0, -2392($fp)
	lw $t1, -2388($fp)
	lw $t2, -2392($fp)
	beq $t1, $t2, label126
	j label127
label126:
	li $t0, 1
	sw $t0, -2368($fp)
label127:
	li $t0, 0
	sw $t0, -2396($fp)
	lw $t0, -660($fp)
	sw $t0, -2400($fp)
	lw $t1, -2400($fp)
	li $t2, 0
	bne $t1, $t2, label129
	j label128
label128:
	li $t0, 1
	sw $t0, -2396($fp)
label129:
	lw $t1, -2368($fp)
	lw $t2, -2396($fp)
	bne $t1, $t2, label124
	j label125
label124:
	li $t0, 1
	sw $t0, -2364($fp)
label125:
	li $t0, 4
	lw $t1, -2364($fp)
	mul $t0, $t0, $t1
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	lw $t1, -2360($fp)
	add $t0, $t0, $t1
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	lw $t1, 0($t0)
	sw $t1, -2412($fp)
	lw $t1, -2412($fp)
	li $t2, 0
	bne $t1, $t2, label121
	j label122
label121:
label130:
	li $t0, 0
	sw $t0, -2416($fp)
	li $t0, 57956
	sw $t0, -2420($fp)
	lw $t1, -2420($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label133
label133:
	li $t0, 1
	sw $t0, -2416($fp)
label134:
	li $t0, 0
	sw $t0, -2424($fp)
	li $t0, 61017
	sw $t0, -2428($fp)
	lw $t1, -2428($fp)
	li $t2, 0
	bne $t1, $t2, label136
	j label135
label135:
	li $t0, 1
	sw $t0, -2424($fp)
label136:
	lw $t0, -2416($fp)
	lw $t1, -2424($fp)
	add $t0, $t0, $t1
	sw $t0, -2432($fp)
	lw $t1, -2432($fp)
	li $t2, 0
	bne $t1, $t2, label131
	j label132
label131:
	lw $t0, -480($fp)
	sw $t0, -2436($fp)
	lw $t1, -2436($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label138
label137:
	li $t0, 20551
	sw $t0, -2440($fp)
	lw $t0, -2440($fp)
	sw $t0, -2444($fp)
	lw $t0, -2444($fp)
	sw $t0, -2448($fp)
label140:
	addi $t0, $fp, -44
	sw $t0, -2452($fp)
	li $t0, 0
	sw $t0, -2456($fp)
	li $t0, 35341
	sw $t0, -2460($fp)
	li $t0, 44683
	sw $t0, -2464($fp)
	lw $t0, -2460($fp)
	lw $t1, -2464($fp)
	add $t0, $t0, $t1
	sw $t0, -2468($fp)
	li $t0, 53837
	sw $t0, -2472($fp)
	lw $t1, -2468($fp)
	lw $t2, -2472($fp)
	blt $t1, $t2, label143
	j label144
label143:
	li $t0, 1
	sw $t0, -2456($fp)
label144:
	li $t0, 4
	lw $t1, -2456($fp)
	mul $t0, $t0, $t1
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	lw $t1, -2452($fp)
	add $t0, $t0, $t1
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	lw $t1, 0($t0)
	sw $t1, -2484($fp)
	lw $t0, -1608($fp)
	sw $t0, -2488($fp)
	lw $t0, -2444($fp)
	sw $t0, -2492($fp)
	lw $t0, -2488($fp)
	lw $t1, -2492($fp)
	mul $t0, $t0, $t1
	sw $t0, -2496($fp)
	lw $t1, -2484($fp)
	lw $t2, -2496($fp)
	ble $t1, $t2, label141
	j label142
label141:
	li $t0, 52750
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	sw $t0, -2532($fp)
	li $t0, 6097
	sw $t0, -2536($fp)
	addi $t0, $fp, -2520
	sw $t0, -2540($fp)
	li $t0, 0
	sw $t0, -2544($fp)
	lw $t0, -2544($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2548($fp)
	lw $t0, -2540($fp)
	lw $t1, -2548($fp)
	add $t0, $t0, $t1
	sw $t0, -2552($fp)
	lw $t0, -2536($fp)
	lw $t1, -2552($fp)
	sw $t0, 0($t1)
	lw $t0, -2552($fp)
	lw $t1, 0($t0)
	sw $t1, -2556($fp)
	li $t0, 40754
	sw $t0, -2560($fp)
	addi $t0, $fp, -2520
	sw $t0, -2564($fp)
	li $t0, 1
	sw $t0, -2568($fp)
	lw $t0, -2568($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2572($fp)
	lw $t0, -2564($fp)
	lw $t1, -2572($fp)
	add $t0, $t0, $t1
	sw $t0, -2576($fp)
	lw $t0, -2560($fp)
	lw $t1, -2576($fp)
	sw $t0, 0($t1)
	lw $t0, -2576($fp)
	lw $t1, 0($t0)
	sw $t1, -2580($fp)
	li $t0, 29659
	sw $t0, -2584($fp)
	addi $t0, $fp, -2520
	sw $t0, -2588($fp)
	li $t0, 2
	sw $t0, -2592($fp)
	lw $t0, -2592($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2596($fp)
	lw $t0, -2588($fp)
	lw $t1, -2596($fp)
	add $t0, $t0, $t1
	sw $t0, -2600($fp)
	lw $t0, -2584($fp)
	lw $t1, -2600($fp)
	sw $t0, 0($t1)
	lw $t0, -2600($fp)
	lw $t1, 0($t0)
	sw $t1, -2604($fp)
	li $t0, 6236
	sw $t0, -2608($fp)
	addi $t0, $fp, -2520
	sw $t0, -2612($fp)
	li $t0, 3
	sw $t0, -2616($fp)
	lw $t0, -2616($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2620($fp)
	lw $t0, -2612($fp)
	lw $t1, -2620($fp)
	add $t0, $t0, $t1
	sw $t0, -2624($fp)
	lw $t0, -2608($fp)
	lw $t1, -2624($fp)
	sw $t0, 0($t1)
	lw $t0, -2624($fp)
	lw $t1, 0($t0)
	sw $t1, -2628($fp)
	li $t0, 14464
	sw $t0, -2632($fp)
	addi $t0, $fp, -2520
	sw $t0, -2636($fp)
	li $t0, 4
	sw $t0, -2640($fp)
	lw $t0, -2640($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2644($fp)
	lw $t0, -2636($fp)
	lw $t1, -2644($fp)
	add $t0, $t0, $t1
	sw $t0, -2648($fp)
	lw $t0, -2632($fp)
	lw $t1, -2648($fp)
	sw $t0, 0($t1)
	lw $t0, -2648($fp)
	lw $t1, 0($t0)
	sw $t1, -2652($fp)
	li $t0, 8233
	sw $t0, -2656($fp)
	addi $t0, $fp, -2520
	sw $t0, -2660($fp)
	li $t0, 5
	sw $t0, -2664($fp)
	lw $t0, -2664($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2668($fp)
	lw $t0, -2660($fp)
	lw $t1, -2668($fp)
	add $t0, $t0, $t1
	sw $t0, -2672($fp)
	lw $t0, -2656($fp)
	lw $t1, -2672($fp)
	sw $t0, 0($t1)
	lw $t0, -2672($fp)
	lw $t1, 0($t0)
	sw $t1, -2676($fp)
	li $t0, 35437
	sw $t0, -2680($fp)
	lw $t0, -2680($fp)
	sw $t0, -2684($fp)
	lw $t0, -2684($fp)
	sw $t0, -2688($fp)
label145:
	li $t0, 0
	sw $t0, -2692($fp)
	li $t0, 7616
	sw $t0, -2696($fp)
	li $t0, 0
	lw $t1, -2696($fp)
	sub $t0, $t0, $t1
	sw $t0, -2700($fp)
	lw $t1, -2700($fp)
	li $t2, 0
	bne $t1, $t2, label149
	j label148
label148:
	li $t0, 1
	sw $t0, -2692($fp)
label149:
	li $t0, 0
	lw $t1, -2692($fp)
	sub $t0, $t0, $t1
	sw $t0, -2704($fp)
	li $t0, 0
	sw $t0, -2708($fp)
	li $t0, 0
	sw $t0, -2712($fp)
	lw $t0, -624($fp)
	sw $t0, -2716($fp)
	li $t0, 2327
	sw $t0, -2720($fp)
	lw $t0, -2716($fp)
	lw $t1, -2720($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2724($fp)
	lw $t1, -2724($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label153
label154:
	lw $t0, -972($fp)
	sw $t0, -2728($fp)
	lw $t1, -2728($fp)
	li $t2, 0
	bne $t1, $t2, label152
	j label153
label152:
	li $t0, 1
	sw $t0, -2712($fp)
label153:
	li $t0, 0
	sw $t0, -2732($fp)
	li $t0, 0
	sw $t0, -2736($fp)
	li $t0, 0
	sw $t0, -2740($fp)
	li $t0, 33257
	sw $t0, -2744($fp)
	lw $t0, -1008($fp)
	sw $t0, -2748($fp)
	lw $t1, -2744($fp)
	lw $t2, -2748($fp)
	beq $t1, $t2, label159
	j label160
label159:
	li $t0, 1
	sw $t0, -2740($fp)
label160:
	li $t0, 21003
	sw $t0, -2752($fp)
	lw $t1, -2740($fp)
	lw $t2, -2752($fp)
	bne $t1, $t2, label157
	j label158
label157:
	li $t0, 1
	sw $t0, -2736($fp)
label158:
	li $t0, 43272
	sw $t0, -2756($fp)
	lw $t0, -2756($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -2760($fp)
	addi $sp, $sp, -4
	lw $t0, -2736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2760($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2764($fp)
	addi $sp, $sp, 12
	lw $t0, -1608($fp)
	sw $t0, -2768($fp)
	lw $t1, -2764($fp)
	lw $t2, -2768($fp)
	beq $t1, $t2, label155
	j label156
label155:
	li $t0, 1
	sw $t0, -2732($fp)
label156:
	addi $sp, $sp, -4
	lw $t0, -2712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2732($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2772($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -2772($fp)
	sub $t0, $t0, $t1
	sw $t0, -2776($fp)
	li $t0, 63478
	sw $t0, -2780($fp)
	li $t0, 0
	lw $t1, -2780($fp)
	sub $t0, $t0, $t1
	sw $t0, -2784($fp)
	lw $t1, -2776($fp)
	lw $t2, -2784($fp)
	bgt $t1, $t2, label150
	j label151
label150:
	li $t0, 1
	sw $t0, -2708($fp)
label151:
	lw $t1, -2704($fp)
	lw $t2, -2708($fp)
	beq $t1, $t2, label146
	j label147
label146:
	li $t0, 0
	sw $t0, -2788($fp)
	li $t0, 52674
	sw $t0, -2792($fp)
	lw $t1, -2792($fp)
	li $t2, 0
	bne $t1, $t2, label161
	j label162
label161:
	li $t0, 1
	sw $t0, -2788($fp)
label162:
	lw $t0, -2788($fp)
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	sw $t0, -2796($fp)
	j label145
label147:
label163:
	addi $t0, $fp, -2520
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
	lw $t0, -960($fp)
	sw $t0, -2820($fp)
	li $t0, 12714
	sw $t0, -2824($fp)
	lw $t0, -2820($fp)
	lw $t1, -2824($fp)
	mul $t0, $t0, $t1
	sw $t0, -2828($fp)
	lw $t0, -2816($fp)
	lw $t1, -2828($fp)
	add $t0, $t0, $t1
	sw $t0, -2832($fp)
	lw $t0, -2832($fp)
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	sw $t0, -2836($fp)
	lw $t1, -2836($fp)
	li $t2, 0
	bne $t1, $t2, label164
	j label165
label164:
	addi $t0, $fp, -232
	sw $t0, -2840($fp)
	li $t0, 0
	sw $t0, -2844($fp)
	lw $t0, -1020($fp)
	sw $t0, -2848($fp)
	lw $t1, -2848($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label167
label166:
	li $t0, 1
	sw $t0, -2844($fp)
label167:
	li $t0, 0
	sw $t0, -2852($fp)
	li $t0, 21174
	sw $t0, -2856($fp)
	lw $t0, -1356($fp)
	sw $t0, -2860($fp)
	lw $t0, -2856($fp)
	lw $t1, -2860($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2864($fp)
	lw $t1, -2864($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label170
label170:
	li $t0, 21804
	sw $t0, -2868($fp)
	lw $t1, -2868($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label169
label168:
	li $t0, 1
	sw $t0, -2852($fp)
label169:
	addi $sp, $sp, -4
	lw $t0, -2844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2852($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2872($fp)
	addi $sp, $sp, 12
	li $t0, 4
	lw $t1, -2872($fp)
	mul $t0, $t0, $t1
	sw $t0, -2876($fp)
	lw $t0, -2876($fp)
	lw $t1, -2840($fp)
	add $t0, $t0, $t1
	sw $t0, -2880($fp)
	lw $t0, -2880($fp)
	lw $t1, 0($t0)
	sw $t1, -2884($fp)
	j label163
label165:
	lw $t0, -2528($fp)
	sw $t0, -2888($fp)
	lw $t0, -2888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2520
	sw $t0, -2892($fp)
	li $t0, 0
	sw $t0, -2896($fp)
	li $t0, 4
	lw $t1, -2896($fp)
	mul $t0, $t0, $t1
	sw $t0, -2900($fp)
	lw $t0, -2900($fp)
	lw $t1, -2892($fp)
	add $t0, $t0, $t1
	sw $t0, -2904($fp)
	lw $t0, -2904($fp)
	lw $t1, 0($t0)
	sw $t1, -2908($fp)
	lw $t0, -2908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2520
	sw $t0, -2912($fp)
	li $t0, 1
	sw $t0, -2916($fp)
	li $t0, 4
	lw $t1, -2916($fp)
	mul $t0, $t0, $t1
	sw $t0, -2920($fp)
	lw $t0, -2920($fp)
	lw $t1, -2912($fp)
	add $t0, $t0, $t1
	sw $t0, -2924($fp)
	lw $t0, -2924($fp)
	lw $t1, 0($t0)
	sw $t1, -2928($fp)
	lw $t0, -2928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2520
	sw $t0, -2932($fp)
	li $t0, 2
	sw $t0, -2936($fp)
	li $t0, 4
	lw $t1, -2936($fp)
	mul $t0, $t0, $t1
	sw $t0, -2940($fp)
	lw $t0, -2940($fp)
	lw $t1, -2932($fp)
	add $t0, $t0, $t1
	sw $t0, -2944($fp)
	lw $t0, -2944($fp)
	lw $t1, 0($t0)
	sw $t1, -2948($fp)
	lw $t0, -2948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2520
	sw $t0, -2952($fp)
	li $t0, 3
	sw $t0, -2956($fp)
	li $t0, 4
	lw $t1, -2956($fp)
	mul $t0, $t0, $t1
	sw $t0, -2960($fp)
	lw $t0, -2960($fp)
	lw $t1, -2952($fp)
	add $t0, $t0, $t1
	sw $t0, -2964($fp)
	lw $t0, -2964($fp)
	lw $t1, 0($t0)
	sw $t1, -2968($fp)
	lw $t0, -2968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2520
	sw $t0, -2972($fp)
	li $t0, 4
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
	addi $t0, $fp, -2520
	sw $t0, -2992($fp)
	li $t0, 5
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
	lw $t0, -3008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2684($fp)
	sw $t0, -3012($fp)
	lw $t0, -3012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3016($fp)
	li $t0, 0
	sw $t0, -3020($fp)
	li $t0, 65160
	sw $t0, -3024($fp)
	lw $t0, 8($fp)
	sw $t0, -3028($fp)
	lw $t1, -3024($fp)
	lw $t2, -3028($fp)
	blt $t1, $t2, label173
	j label174
label173:
	li $t0, 1
	sw $t0, -3020($fp)
label174:
	lw $t0, -1488($fp)
	sw $t0, -3032($fp)
	lw $t1, -3020($fp)
	lw $t2, -3032($fp)
	bgt $t1, $t2, label171
	j label172
label171:
	li $t0, 1
	sw $t0, -3016($fp)
label172:
	li $t0, 0
	sw $t0, -3036($fp)
	lw $t0, -984($fp)
	sw $t0, -3040($fp)
	lw $t0, -696($fp)
	sw $t0, -3044($fp)
	lw $t0, -3040($fp)
	lw $t1, -3044($fp)
	add $t0, $t0, $t1
	sw $t0, -3048($fp)
	lw $t0, -1920($fp)
	sw $t0, -3052($fp)
	lw $t1, -3048($fp)
	lw $t2, -3052($fp)
	bge $t1, $t2, label175
	j label176
label175:
	li $t0, 1
	sw $t0, -3036($fp)
label176:
	addi $sp, $sp, -4
	lw $t0, -3016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3036($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3056($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -3056($fp)
	sub $t0, $t0, $t1
	sw $t0, -3060($fp)
	li $t0, 0
	lw $t1, -3060($fp)
	sub $t0, $t0, $t1
	sw $t0, -3064($fp)
	lw $t0, -2684($fp)
	sw $t0, -3068($fp)
	lw $t0, -3064($fp)
	lw $t1, -3068($fp)
	add $t0, $t0, $t1
	sw $t0, -3072($fp)
	li $t0, 15861
	sw $t0, -3076($fp)
	li $t0, 0
	lw $t1, -3076($fp)
	sub $t0, $t0, $t1
	sw $t0, -3080($fp)
	lw $t0, -3072($fp)
	lw $t1, -3080($fp)
	sub $t0, $t0, $t1
	sw $t0, -3084($fp)
	lw $ra, -4($fp)
	lw $v0, -3084($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -3088($fp)
	li $t0, 10383
	sw $t0, -3092($fp)
	lw $t1, -3092($fp)
	li $t2, 0
	bne $t1, $t2, label178
	j label177
label177:
	li $t0, 1
	sw $t0, -3088($fp)
label178:
	li $t0, 0
	lw $t1, -3088($fp)
	sub $t0, $t0, $t1
	sw $t0, -3096($fp)
	li $t0, 0
	sw $t0, -3100($fp)
	li $t0, 60720
	sw $t0, -3104($fp)
	lw $t1, -3104($fp)
	li $t2, 0
	bne $t1, $t2, label180
	j label179
label179:
	li $t0, 1
	sw $t0, -3100($fp)
label180:
	lw $t0, -3100($fp)
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	sw $t0, -3108($fp)
	li $t0, 8734
	sw $t0, -3112($fp)
	lw $t0, -3112($fp)
	sw $t0, -3116($fp)
	lw $t0, -3116($fp)
	sw $t0, -3120($fp)
	addi $t0, $fp, -160
	sw $t0, -3124($fp)
	li $t0, 0
	sw $t0, -3128($fp)
	lw $t0, -3116($fp)
	sw $t0, -3132($fp)
	lw $t1, -3132($fp)
	li $t2, 0
	bne $t1, $t2, label182
	j label181
label181:
	li $t0, 1
	sw $t0, -3128($fp)
label182:
	li $t0, 0
	lw $t1, -3128($fp)
	sub $t0, $t0, $t1
	sw $t0, -3136($fp)
	li $t0, 4
	lw $t1, -3136($fp)
	mul $t0, $t0, $t1
	sw $t0, -3140($fp)
	lw $t0, -3140($fp)
	lw $t1, -3124($fp)
	add $t0, $t0, $t1
	sw $t0, -3144($fp)
	lw $t0, -3144($fp)
	lw $t1, 0($t0)
	sw $t1, -3148($fp)
	li $t0, 0
	lw $t1, -3148($fp)
	sub $t0, $t0, $t1
	sw $t0, -3152($fp)
	j label140
label142:
	j label139
label138:
	addi $t0, $fp, -132
	sw $t0, -3156($fp)
	lw $t0, -1596($fp)
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
	li $t0, 0
	lw $t1, -3172($fp)
	sub $t0, $t0, $t1
	sw $t0, -3176($fp)
	li $t0, 0
	lw $t1, -3176($fp)
	sub $t0, $t0, $t1
	sw $t0, -3180($fp)
	lw $t0, -1860($fp)
	sw $t0, -3184($fp)
	li $t0, 0
	sw $t0, -3188($fp)
	lw $t0, -972($fp)
	sw $t0, -3192($fp)
	lw $t0, -2124($fp)
	sw $t0, -3196($fp)
	lw $t0, -3192($fp)
	lw $t1, -3196($fp)
	add $t0, $t0, $t1
	sw $t0, -3200($fp)
	lw $t0, -624($fp)
	sw $t0, -3204($fp)
	lw $t1, -3200($fp)
	lw $t2, -3204($fp)
	blt $t1, $t2, label187
	j label188
label187:
	li $t0, 1
	sw $t0, -3188($fp)
label188:
	addi $sp, $sp, -4
	lw $t0, -3184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3188($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3208($fp)
	addi $sp, $sp, 12
	lw $t1, -3180($fp)
	lw $t2, -3208($fp)
	bge $t1, $t2, label183
	j label186
label186:
	lw $t0, -624($fp)
	sw $t0, -3212($fp)
	lw $t0, -1872($fp)
	sw $t0, -3216($fp)
	lw $t0, -3212($fp)
	lw $t1, -3216($fp)
	mul $t0, $t0, $t1
	sw $t0, -3220($fp)
	lw $t0, -612($fp)
	sw $t0, -3224($fp)
	lw $t0, -3220($fp)
	lw $t1, -3224($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3228($fp)
	lw $t0, -2124($fp)
	sw $t0, -3232($fp)
	lw $t0, -3228($fp)
	lw $t1, -3232($fp)
	sub $t0, $t0, $t1
	sw $t0, -3236($fp)
	lw $t1, -3236($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label184
label183:
label189:
	addi $t0, $fp, -204
	sw $t0, -3240($fp)
	li $t0, 0
	sw $t0, -3244($fp)
	lw $t0, -588($fp)
	sw $t0, -3248($fp)
	lw $t1, -3248($fp)
	li $t2, 0
	bne $t1, $t2, label193
	j label194
label194:
	li $t0, 56202
	sw $t0, -3252($fp)
	lw $t1, -3252($fp)
	li $t2, 0
	bne $t1, $t2, label192
	j label193
label192:
	li $t0, 1
	sw $t0, -3244($fp)
label193:
	addi $t0, $fp, -204
	sw $t0, -3256($fp)
	lw $t0, 4($fp)
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
	li $t0, 0
	lw $t1, -3272($fp)
	sub $t0, $t0, $t1
	sw $t0, -3276($fp)
	li $t0, 2803
	sw $t0, -3280($fp)
	lw $t0, -3280($fp)
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	sw $t0, -3284($fp)
	addi $sp, $sp, -4
	lw $t0, -3276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3284($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3288($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -3292($fp)
	lw $t0, -1872($fp)
	sw $t0, -3296($fp)
	lw $t0, -636($fp)
	sw $t0, -3300($fp)
	lw $t0, -3296($fp)
	lw $t1, -3300($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3304($fp)
	lw $t1, -3304($fp)
	li $t2, 0
	bne $t1, $t2, label197
	j label196
label197:
	lw $t0, -1872($fp)
	sw $t0, -3308($fp)
	lw $t1, -3308($fp)
	li $t2, 0
	bne $t1, $t2, label195
	j label196
label195:
	li $t0, 1
	sw $t0, -3292($fp)
label196:
	addi $sp, $sp, -4
	lw $t0, -3288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3292($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3312($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -3244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3312($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3316($fp)
	addi $sp, $sp, 12
	li $t0, 4
	lw $t1, -3316($fp)
	mul $t0, $t0, $t1
	sw $t0, -3320($fp)
	lw $t0, -3320($fp)
	lw $t1, -3240($fp)
	add $t0, $t0, $t1
	sw $t0, -3324($fp)
	lw $t0, -3324($fp)
	lw $t1, 0($t0)
	sw $t1, -3328($fp)
	lw $t1, -3328($fp)
	li $t2, 0
	bne $t1, $t2, label190
	j label191
label190:
	li $t0, 29286
	sw $t0, -3332($fp)
	lw $t0, -3332($fp)
	sw $t0, -3336($fp)
	lw $t0, -3336($fp)
	sw $t0, -3340($fp)
	lw $t0, -1920($fp)
	sw $t0, -3344($fp)
	li $t0, 0
	lw $t1, -3344($fp)
	sub $t0, $t0, $t1
	sw $t0, -3348($fp)
	lw $t0, -1872($fp)
	sw $t0, -3352($fp)
	li $t0, 38145
	sw $t0, -3356($fp)
	lw $t0, -3352($fp)
	lw $t1, -3356($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3360($fp)
	lw $t0, -444($fp)
	sw $t0, -3364($fp)
	lw $t0, -3360($fp)
	lw $t1, -3364($fp)
	add $t0, $t0, $t1
	sw $t0, -3368($fp)
	li $t0, 35349
	sw $t0, -3372($fp)
	lw $t0, -3368($fp)
	lw $t1, -3372($fp)
	add $t0, $t0, $t1
	sw $t0, -3376($fp)
	lw $t1, -3348($fp)
	lw $t2, -3376($fp)
	bge $t1, $t2, label198
	j label199
label198:
	li $t0, 0
	sw $t0, -3380($fp)
	lw $t0, -588($fp)
	sw $t0, -3384($fp)
	li $t0, 0
	lw $t1, -3384($fp)
	sub $t0, $t0, $t1
	sw $t0, -3388($fp)
	lw $t1, -3388($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label205
label206:
	lw $t0, -972($fp)
	sw $t0, -3392($fp)
	lw $t1, -3392($fp)
	li $t2, 0
	bne $t1, $t2, label204
	j label205
label204:
	li $t0, 1
	sw $t0, -3380($fp)
label205:
	li $t0, 0
	sw $t0, -3396($fp)
	li $t0, 17587
	sw $t0, -3400($fp)
	lw $t0, 8($fp)
	sw $t0, -3404($fp)
	lw $t1, -3400($fp)
	lw $t2, -3404($fp)
	bne $t1, $t2, label209
	j label208
label209:
	lw $t0, -612($fp)
	sw $t0, -3408($fp)
	lw $t1, -3408($fp)
	li $t2, 0
	bne $t1, $t2, label207
	j label208
label207:
	li $t0, 1
	sw $t0, -3396($fp)
label208:
	addi $sp, $sp, -4
	lw $t0, -3380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3396($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3412($fp)
	addi $sp, $sp, 12
	lw $t1, -3412($fp)
	li $t2, 0
	bne $t1, $t2, label201
	j label202
label201:
	li $t0, 0
	sw $t0, -3416($fp)
	li $t0, 0
	sw $t0, -3420($fp)
	li $t0, 0
	sw $t0, -3424($fp)
	lw $t0, -672($fp)
	sw $t0, -3428($fp)
	lw $t0, -1608($fp)
	sw $t0, -3432($fp)
	lw $t1, -3428($fp)
	lw $t2, -3432($fp)
	bge $t1, $t2, label215
	j label216
label215:
	li $t0, 1
	sw $t0, -3424($fp)
label216:
	li $t0, 25359
	sw $t0, -3436($fp)
	li $t0, 41446
	sw $t0, -3440($fp)
	lw $t0, -3436($fp)
	lw $t1, -3440($fp)
	sub $t0, $t0, $t1
	sw $t0, -3444($fp)
	lw $t1, -3424($fp)
	lw $t2, -3444($fp)
	bge $t1, $t2, label213
	j label214
label213:
	li $t0, 1
	sw $t0, -3420($fp)
label214:
	lw $t0, -1020($fp)
	sw $t0, -3448($fp)
	li $t0, 0
	lw $t1, -3448($fp)
	sub $t0, $t0, $t1
	sw $t0, -3452($fp)
	lw $t1, -3420($fp)
	lw $t2, -3452($fp)
	ble $t1, $t2, label210
	j label212
label212:
	li $t0, 0
	sw $t0, -3456($fp)
	li $t0, 58341
	sw $t0, -3460($fp)
	lw $t1, -3460($fp)
	li $t2, 0
	bne $t1, $t2, label218
	j label217
label217:
	li $t0, 1
	sw $t0, -3456($fp)
label218:
	li $t0, 55018
	sw $t0, -3464($fp)
	lw $t0, -3456($fp)
	lw $t1, -3464($fp)
	sub $t0, $t0, $t1
	sw $t0, -3468($fp)
	lw $t0, -672($fp)
	sw $t0, -3472($fp)
	lw $t1, -3468($fp)
	lw $t2, -3472($fp)
	beq $t1, $t2, label210
	j label211
label210:
	li $t0, 1
	sw $t0, -3416($fp)
label211:
	j label203
label202:
	li $t0, 0
	sw $t0, -3476($fp)
	lw $t0, -600($fp)
	sw $t0, -3480($fp)
	addi $t0, $fp, -200
	sw $t0, -3484($fp)
	li $t0, 6
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
	li $t0, 0
	sw $t0, -3504($fp)
	li $t0, 47682
	sw $t0, -3508($fp)
	lw $t0, -1860($fp)
	sw $t0, -3512($fp)
	lw $t1, -3508($fp)
	lw $t2, -3512($fp)
	bne $t1, $t2, label221
	j label222
label221:
	li $t0, 1
	sw $t0, -3504($fp)
label222:
	addi $sp, $sp, -4
	lw $t0, -3500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3504($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3516($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -3520($fp)
	lw $t0, -3336($fp)
	sw $t0, -3524($fp)
	lw $t1, -3524($fp)
	li $t2, 0
	bne $t1, $t2, label224
	j label223
label223:
	li $t0, 1
	sw $t0, -3520($fp)
label224:
	addi $sp, $sp, -4
	lw $t0, -3516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3520($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3528($fp)
	addi $sp, $sp, 12
	lw $t0, -3480($fp)
	lw $t1, -3528($fp)
	mul $t0, $t0, $t1
	sw $t0, -3532($fp)
	li $t0, 0
	sw $t0, -3536($fp)
	li $t0, 17583
	sw $t0, -3540($fp)
	lw $t1, -3540($fp)
	li $t2, 0
	bne $t1, $t2, label225
	j label226
label225:
	li $t0, 1
	sw $t0, -3536($fp)
label226:
	lw $t0, -3532($fp)
	lw $t1, -3536($fp)
	sub $t0, $t0, $t1
	sw $t0, -3544($fp)
	li $t0, 14886
	sw $t0, -3548($fp)
	lw $t1, -3544($fp)
	lw $t2, -3548($fp)
	blt $t1, $t2, label219
	j label220
label219:
	li $t0, 1
	sw $t0, -3476($fp)
label220:
label203:
label199:
label227:
	li $t0, 40988
	sw $t0, -3552($fp)
	li $t0, 0
	lw $t1, -3552($fp)
	sub $t0, $t0, $t1
	sw $t0, -3556($fp)
	li $t0, 0
	sw $t0, -3560($fp)
	addi $t0, $fp, -44
	sw $t0, -3564($fp)
	lw $t0, -1920($fp)
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
	lw $t1, -3580($fp)
	li $t2, 0
	bne $t1, $t2, label231
	j label230
label230:
	li $t0, 1
	sw $t0, -3560($fp)
label231:
	lw $t1, -3556($fp)
	lw $t2, -3560($fp)
	blt $t1, $t2, label228
	j label229
label228:
label232:
	addi $t0, $fp, -84
	sw $t0, -3584($fp)
	li $t0, 50840
	sw $t0, -3588($fp)
	lw $t0, -600($fp)
	sw $t0, -3592($fp)
	li $t0, 0
	lw $t1, -3592($fp)
	sub $t0, $t0, $t1
	sw $t0, -3596($fp)
	lw $t0, -3588($fp)
	lw $t1, -3596($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3600($fp)
	li $t0, 4
	lw $t1, -3600($fp)
	mul $t0, $t0, $t1
	sw $t0, -3604($fp)
	lw $t0, -3604($fp)
	lw $t1, -3584($fp)
	add $t0, $t0, $t1
	sw $t0, -3608($fp)
	lw $t0, -3608($fp)
	lw $t1, 0($t0)
	sw $t1, -3612($fp)
	lw $t1, -3612($fp)
	li $t2, 0
	bne $t1, $t2, label233
	j label234
label233:
	li $t0, 35889
	sw $t0, -3616($fp)
	j label232
label234:
	j label227
label229:
	li $t0, 0
	sw $t0, -3620($fp)
	lw $t0, -1920($fp)
	sw $t0, -3624($fp)
	addi $t0, $fp, -32
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
	lw $t0, -3624($fp)
	lw $t1, -3644($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3648($fp)
	lw $t0, -1380($fp)
	sw $t0, -3652($fp)
	li $t0, 0
	lw $t1, -3652($fp)
	sub $t0, $t0, $t1
	sw $t0, -3656($fp)
	lw $t0, -3648($fp)
	lw $t1, -3656($fp)
	add $t0, $t0, $t1
	sw $t0, -3660($fp)
	lw $t1, -3660($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label237
label237:
	lw $t0, -960($fp)
	sw $t0, -3664($fp)
	li $t0, 0
	lw $t1, -3664($fp)
	sub $t0, $t0, $t1
	sw $t0, -3668($fp)
	lw $t1, -3668($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label236
label235:
	li $t0, 1
	sw $t0, -3620($fp)
label236:
	lw $t0, -660($fp)
	sw $t0, -3672($fp)
	lw $t1, -3672($fp)
	li $t2, 0
	bne $t1, $t2, label238
	j label239
label238:
	li $t0, 0
	sw $t0, -3676($fp)
	li $t0, 14584
	sw $t0, -3680($fp)
	lw $t0, -1008($fp)
	sw $t0, -3684($fp)
	lw $t0, -3680($fp)
	lw $t1, -3684($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3688($fp)
	li $t0, 42574
	sw $t0, -3692($fp)
	lw $t0, -3688($fp)
	lw $t1, -3692($fp)
	mul $t0, $t0, $t1
	sw $t0, -3696($fp)
	li $t0, 0
	sw $t0, -3700($fp)
	lw $t0, -588($fp)
	sw $t0, -3704($fp)
	li $t0, 0
	lw $t1, -3704($fp)
	sub $t0, $t0, $t1
	sw $t0, -3708($fp)
	li $t0, 23027
	sw $t0, -3712($fp)
	lw $t1, -3708($fp)
	lw $t2, -3712($fp)
	beq $t1, $t2, label244
	j label245
label244:
	li $t0, 1
	sw $t0, -3700($fp)
label245:
	addi $sp, $sp, -4
	lw $t0, -3696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3700($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3716($fp)
	addi $sp, $sp, 12
	lw $t1, -3716($fp)
	li $t2, 0
	bne $t1, $t2, label243
	j label242
label243:
	li $t0, 35741
	sw $t0, -3720($fp)
	lw $t0, -3720($fp)
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	sw $t0, -3724($fp)
	lw $t0, -672($fp)
	sw $t0, -3728($fp)
	lw $t0, -3728($fp)
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	sw $t0, -3732($fp)
	addi $sp, $sp, -4
	lw $t0, -3724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3732($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3736($fp)
	addi $sp, $sp, 12
	lw $t1, -3736($fp)
	li $t2, 0
	bne $t1, $t2, label241
	j label242
label241:
	li $t0, 1
	sw $t0, -3676($fp)
label242:
	j label240
label239:
	li $t0, 0
	sw $t0, -3740($fp)
	addi $t0, $fp, -132
	sw $t0, -3744($fp)
	li $t0, 3
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
	li $t0, 35366
	sw $t0, -3764($fp)
	lw $t0, -3760($fp)
	lw $t1, -3764($fp)
	mul $t0, $t0, $t1
	sw $t0, -3768($fp)
	lw $t0, -996($fp)
	sw $t0, -3772($fp)
	lw $t0, -3768($fp)
	lw $t1, -3772($fp)
	add $t0, $t0, $t1
	sw $t0, -3776($fp)
	li $t0, 51619
	sw $t0, -3780($fp)
	lw $t0, -3776($fp)
	lw $t1, -3780($fp)
	sub $t0, $t0, $t1
	sw $t0, -3784($fp)
	lw $t0, -1356($fp)
	sw $t0, -3788($fp)
	li $t0, 9226
	sw $t0, -3792($fp)
	lw $t0, -3788($fp)
	lw $t1, -3792($fp)
	sub $t0, $t0, $t1
	sw $t0, -3796($fp)
	lw $t0, 4($fp)
	sw $t0, -3800($fp)
	lw $t0, -3796($fp)
	lw $t1, -3800($fp)
	add $t0, $t0, $t1
	sw $t0, -3804($fp)
	li $t0, 30550
	sw $t0, -3808($fp)
	lw $t0, -3804($fp)
	lw $t1, -3808($fp)
	add $t0, $t0, $t1
	sw $t0, -3812($fp)
	lw $t1, -3784($fp)
	lw $t2, -3812($fp)
	bgt $t1, $t2, label246
	j label247
label246:
	li $t0, 1
	sw $t0, -3740($fp)
label247:
label240:
	j label189
label191:
	j label185
label184:
	lw $t0, 8($fp)
	sw $t0, -3816($fp)
	lw $t1, -3816($fp)
	li $t2, 0
	bne $t1, $t2, label249
	j label248
label248:
label251:
	li $t0, 60353
	sw $t0, -3820($fp)
	addi $t0, $fp, -160
	sw $t0, -3824($fp)
	li $t0, 0
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
	li $t0, 0
	lw $t1, -3840($fp)
	sub $t0, $t0, $t1
	sw $t0, -3844($fp)
	lw $t0, -3820($fp)
	lw $t1, -3844($fp)
	mul $t0, $t0, $t1
	sw $t0, -3848($fp)
	lw $t1, -3848($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label253
label252:
	addi $t0, $fp, -32
	sw $t0, -3852($fp)
	lw $t0, -444($fp)
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
	li $t0, 0
	lw $t1, -3868($fp)
	sub $t0, $t0, $t1
	sw $t0, -3872($fp)
	lw $t0, -3872($fp)
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	sw $t0, -3876($fp)
	lw $t1, -3876($fp)
	li $t2, 0
	bne $t1, $t2, label254
	j label255
label254:
	li $t0, 24103
	sw $t0, -3880($fp)
	lw $t0, -3880($fp)
	sw $t0, -3884($fp)
	lw $t0, -3884($fp)
	sw $t0, -3888($fp)
	li $t0, 0
	sw $t0, -3892($fp)
	lw $t0, -3884($fp)
	sw $t0, -3896($fp)
	lw $t1, -3896($fp)
	li $t2, 0
	bne $t1, $t2, label258
	j label257
label257:
	li $t0, 1
	sw $t0, -3892($fp)
label258:
	li $t0, 0
	lw $t1, -3892($fp)
	sub $t0, $t0, $t1
	sw $t0, -3900($fp)
	li $t0, 0
	sw $t0, -3904($fp)
	lw $t0, -1008($fp)
	sw $t0, -3908($fp)
	lw $t1, -3908($fp)
	li $t2, 0
	bne $t1, $t2, label259
	j label261
label261:
	li $t0, 50175
	sw $t0, -3912($fp)
	lw $t1, -3912($fp)
	li $t2, 0
	bne $t1, $t2, label259
	j label260
label259:
	li $t0, 1
	sw $t0, -3904($fp)
label260:
	lw $t0, -3904($fp)
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	sw $t0, -3916($fp)
	j label256
label255:
	li $t0, 56565
	sw $t0, -3920($fp)
	lw $t0, -3920($fp)
	sw $t0, -3924($fp)
	lw $t0, -3924($fp)
	sw $t0, -3928($fp)
	li $t0, 41691
	sw $t0, -3932($fp)
	lw $t0, -3932($fp)
	sw $t0, -3936($fp)
	lw $t0, -3936($fp)
	sw $t0, -3940($fp)
	li $t0, 9998
	sw $t0, -3944($fp)
	lw $t0, -3944($fp)
	sw $t0, -3948($fp)
	lw $t0, -3948($fp)
	sw $t0, -3952($fp)
	lw $t0, -612($fp)
	sw $t0, -3956($fp)
	li $t0, 0
	lw $t1, -3956($fp)
	sub $t0, $t0, $t1
	sw $t0, -3960($fp)
	li $t0, 0
	sw $t0, -3964($fp)
	lw $t0, -456($fp)
	sw $t0, -3968($fp)
	lw $t1, -3968($fp)
	li $t2, 0
	bne $t1, $t2, label262
	j label264
label264:
	lw $t0, -468($fp)
	sw $t0, -3972($fp)
	lw $t0, -3924($fp)
	sw $t0, -3976($fp)
	lw $t0, -3972($fp)
	lw $t1, -3976($fp)
	add $t0, $t0, $t1
	sw $t0, -3980($fp)
	li $t0, 0
	sw $t0, -3984($fp)
	li $t0, 14622
	sw $t0, -3988($fp)
	lw $t0, -3948($fp)
	sw $t0, -3992($fp)
	lw $t0, -3988($fp)
	lw $t1, -3992($fp)
	mul $t0, $t0, $t1
	sw $t0, -3996($fp)
	li $t0, 41766
	sw $t0, -4000($fp)
	lw $t0, -3996($fp)
	lw $t1, -4000($fp)
	add $t0, $t0, $t1
	sw $t0, -4004($fp)
	addi $t0, $fp, -232
	sw $t0, -4008($fp)
	lw $t0, -2100($fp)
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
	lw $t0, -2112($fp)
	sw $t0, -4028($fp)
	lw $t0, -4024($fp)
	lw $t1, -4028($fp)
	mul $t0, $t0, $t1
	sw $t0, -4032($fp)
	addi $sp, $sp, -4
	lw $t0, -4004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4032($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4036($fp)
	addi $sp, $sp, 12
	lw $t1, -4036($fp)
	li $t2, 0
	bne $t1, $t2, label265
	j label267
label267:
	lw $t0, 8($fp)
	sw $t0, -4040($fp)
	lw $t1, -4040($fp)
	li $t2, 0
	bne $t1, $t2, label265
	j label266
label265:
	li $t0, 1
	sw $t0, -3984($fp)
label266:
	li $t0, 0
	sw $t0, -4044($fp)
	lw $t0, -3936($fp)
	sw $t0, -4048($fp)
	lw $t0, -1020($fp)
	sw $t0, -4052($fp)
	lw $t1, -4048($fp)
	lw $t2, -4052($fp)
	bge $t1, $t2, label268
	j label270
label270:
	li $t0, 65017
	sw $t0, -4056($fp)
	lw $t1, -4056($fp)
	li $t2, 0
	bne $t1, $t2, label268
	j label269
label268:
	li $t0, 1
	sw $t0, -4044($fp)
label269:
	li $t0, 0
	sw $t0, -4060($fp)
	li $t0, 32475
	sw $t0, -4064($fp)
	lw $t1, -4064($fp)
	li $t2, 0
	bne $t1, $t2, label273
	j label271
label273:
	li $t0, 34496
	sw $t0, -4068($fp)
	lw $t1, -4068($fp)
	li $t2, 0
	bne $t1, $t2, label271
	j label272
label271:
	li $t0, 1
	sw $t0, -4060($fp)
label272:
	addi $sp, $sp, -4
	lw $t0, -4044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4060($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4072($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -4072($fp)
	sub $t0, $t0, $t1
	sw $t0, -4076($fp)
	li $t0, 0
	sw $t0, -4080($fp)
	lw $t0, -1008($fp)
	sw $t0, -4084($fp)
	lw $t1, -4084($fp)
	li $t2, 0
	bne $t1, $t2, label275
	j label274
label274:
	li $t0, 1
	sw $t0, -4080($fp)
label275:
	addi $sp, $sp, -4
	lw $t0, -4076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4080($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4088($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -3984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4088($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4092($fp)
	addi $sp, $sp, 12
	lw $t0, -3980($fp)
	lw $t1, -4092($fp)
	add $t0, $t0, $t1
	sw $t0, -4096($fp)
	lw $t1, -4096($fp)
	li $t2, 0
	bne $t1, $t2, label262
	j label263
label262:
	li $t0, 1
	sw $t0, -3964($fp)
label263:
label256:
	j label251
label253:
	j label250
label249:
label276:
	lw $t0, -2124($fp)
	sw $t0, -4100($fp)
	lw $t1, -4100($fp)
	li $t2, 0
	bne $t1, $t2, label278
	j label277
label277:
	li $t0, 62733
	sw $t0, -4144($fp)
	addi $t0, $fp, -4104
	sw $t0, -4148($fp)
	li $t0, 0
	sw $t0, -4152($fp)
	lw $t0, -4152($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4156($fp)
	lw $t0, -4148($fp)
	lw $t1, -4156($fp)
	add $t0, $t0, $t1
	sw $t0, -4160($fp)
	lw $t0, -4144($fp)
	lw $t1, -4160($fp)
	sw $t0, 0($t1)
	lw $t0, -4160($fp)
	lw $t1, 0($t0)
	sw $t1, -4164($fp)
	li $t0, 32205
	sw $t0, -4168($fp)
	addi $t0, $fp, -4140
	sw $t0, -4172($fp)
	li $t0, 0
	sw $t0, -4176($fp)
	lw $t0, -4176($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4180($fp)
	lw $t0, -4172($fp)
	lw $t1, -4180($fp)
	add $t0, $t0, $t1
	sw $t0, -4184($fp)
	lw $t0, -4168($fp)
	lw $t1, -4184($fp)
	sw $t0, 0($t1)
	lw $t0, -4184($fp)
	lw $t1, 0($t0)
	sw $t1, -4188($fp)
	li $t0, 56652
	sw $t0, -4192($fp)
	addi $t0, $fp, -4140
	sw $t0, -4196($fp)
	li $t0, 1
	sw $t0, -4200($fp)
	lw $t0, -4200($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4204($fp)
	lw $t0, -4196($fp)
	lw $t1, -4204($fp)
	add $t0, $t0, $t1
	sw $t0, -4208($fp)
	lw $t0, -4192($fp)
	lw $t1, -4208($fp)
	sw $t0, 0($t1)
	lw $t0, -4208($fp)
	lw $t1, 0($t0)
	sw $t1, -4212($fp)
	li $t0, 38185
	sw $t0, -4216($fp)
	addi $t0, $fp, -4140
	sw $t0, -4220($fp)
	li $t0, 2
	sw $t0, -4224($fp)
	lw $t0, -4224($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4228($fp)
	lw $t0, -4220($fp)
	lw $t1, -4228($fp)
	add $t0, $t0, $t1
	sw $t0, -4232($fp)
	lw $t0, -4216($fp)
	lw $t1, -4232($fp)
	sw $t0, 0($t1)
	lw $t0, -4232($fp)
	lw $t1, 0($t0)
	sw $t1, -4236($fp)
	li $t0, 17510
	sw $t0, -4240($fp)
	addi $t0, $fp, -4140
	sw $t0, -4244($fp)
	li $t0, 3
	sw $t0, -4248($fp)
	lw $t0, -4248($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4252($fp)
	lw $t0, -4244($fp)
	lw $t1, -4252($fp)
	add $t0, $t0, $t1
	sw $t0, -4256($fp)
	lw $t0, -4240($fp)
	lw $t1, -4256($fp)
	sw $t0, 0($t1)
	lw $t0, -4256($fp)
	lw $t1, 0($t0)
	sw $t1, -4260($fp)
	li $t0, 27005
	sw $t0, -4264($fp)
	addi $t0, $fp, -4140
	sw $t0, -4268($fp)
	li $t0, 4
	sw $t0, -4272($fp)
	lw $t0, -4272($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4276($fp)
	lw $t0, -4268($fp)
	lw $t1, -4276($fp)
	add $t0, $t0, $t1
	sw $t0, -4280($fp)
	lw $t0, -4264($fp)
	lw $t1, -4280($fp)
	sw $t0, 0($t1)
	lw $t0, -4280($fp)
	lw $t1, 0($t0)
	sw $t1, -4284($fp)
	li $t0, 15964
	sw $t0, -4288($fp)
	addi $t0, $fp, -4140
	sw $t0, -4292($fp)
	li $t0, 5
	sw $t0, -4296($fp)
	lw $t0, -4296($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4300($fp)
	lw $t0, -4292($fp)
	lw $t1, -4300($fp)
	add $t0, $t0, $t1
	sw $t0, -4304($fp)
	lw $t0, -4288($fp)
	lw $t1, -4304($fp)
	sw $t0, 0($t1)
	lw $t0, -4304($fp)
	lw $t1, 0($t0)
	sw $t1, -4308($fp)
	li $t0, 757
	sw $t0, -4312($fp)
	addi $t0, $fp, -4140
	sw $t0, -4316($fp)
	li $t0, 6
	sw $t0, -4320($fp)
	lw $t0, -4320($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4324($fp)
	lw $t0, -4316($fp)
	lw $t1, -4324($fp)
	add $t0, $t0, $t1
	sw $t0, -4328($fp)
	lw $t0, -4312($fp)
	lw $t1, -4328($fp)
	sw $t0, 0($t1)
	lw $t0, -4328($fp)
	lw $t1, 0($t0)
	sw $t1, -4332($fp)
	li $t0, 50033
	sw $t0, -4336($fp)
	addi $t0, $fp, -4140
	sw $t0, -4340($fp)
	li $t0, 7
	sw $t0, -4344($fp)
	lw $t0, -4344($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4348($fp)
	lw $t0, -4340($fp)
	lw $t1, -4348($fp)
	add $t0, $t0, $t1
	sw $t0, -4352($fp)
	lw $t0, -4336($fp)
	lw $t1, -4352($fp)
	sw $t0, 0($t1)
	lw $t0, -4352($fp)
	lw $t1, 0($t0)
	sw $t1, -4356($fp)
	li $t0, 30548
	sw $t0, -4360($fp)
	addi $t0, $fp, -4140
	sw $t0, -4364($fp)
	li $t0, 8
	sw $t0, -4368($fp)
	lw $t0, -4368($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4372($fp)
	lw $t0, -4364($fp)
	lw $t1, -4372($fp)
	add $t0, $t0, $t1
	sw $t0, -4376($fp)
	lw $t0, -4360($fp)
	lw $t1, -4376($fp)
	sw $t0, 0($t1)
	lw $t0, -4376($fp)
	lw $t1, 0($t0)
	sw $t1, -4380($fp)
	li $t0, 43331
	sw $t0, -4384($fp)
	lw $t0, -480($fp)
	sw $t0, -4388($fp)
	li $t0, 0
	lw $t1, -4388($fp)
	sub $t0, $t0, $t1
	sw $t0, -4392($fp)
	lw $t0, -4384($fp)
	lw $t1, -4392($fp)
	mul $t0, $t0, $t1
	sw $t0, -4396($fp)
	li $t0, 0
	lw $t1, -4396($fp)
	sub $t0, $t0, $t1
	sw $t0, -4400($fp)
	li $t0, 0
	sw $t0, -4404($fp)
	li $t0, 0
	sw $t0, -4408($fp)
	li $t0, 20238
	sw $t0, -4412($fp)
	lw $t1, -4412($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label283
label283:
	li $t0, 1
	sw $t0, -4408($fp)
label284:
	li $t0, 770
	sw $t0, -4416($fp)
	lw $t0, -4408($fp)
	lw $t1, -4416($fp)
	mul $t0, $t0, $t1
	sw $t0, -4420($fp)
	li $t0, 0
	sw $t0, -4424($fp)
	li $t0, 51401
	sw $t0, -4428($fp)
	lw $t0, -468($fp)
	sw $t0, -4432($fp)
	lw $t0, -4428($fp)
	lw $t1, -4432($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4436($fp)
	lw $t1, -4436($fp)
	li $t2, 0
	bne $t1, $t2, label287
	j label286
label287:
	li $t0, 20619
	sw $t0, -4440($fp)
	lw $t1, -4440($fp)
	li $t2, 0
	bne $t1, $t2, label285
	j label286
label285:
	li $t0, 1
	sw $t0, -4424($fp)
label286:
	li $t0, 0
	sw $t0, -4444($fp)
	li $t0, 42174
	sw $t0, -4448($fp)
	li $t0, 1
	sw $t0, -4452($fp)
	lw $t0, -4448($fp)
	lw $t1, -4452($fp)
	mul $t0, $t0, $t1
	sw $t0, -4456($fp)
	li $t0, 52389
	sw $t0, -4460($fp)
	lw $t1, -4456($fp)
	lw $t2, -4460($fp)
	bne $t1, $t2, label288
	j label289
label288:
	li $t0, 1
	sw $t0, -4444($fp)
label289:
	addi $sp, $sp, -4
	lw $t0, -4424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4444($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4464($fp)
	addi $sp, $sp, 12
	lw $t0, -4420($fp)
	lw $t1, -4464($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4468($fp)
	lw $t1, -4468($fp)
	li $t2, 0
	bne $t1, $t2, label282
	j label280
label282:
	li $t0, 47206
	sw $t0, -4472($fp)
	lw $t1, -4472($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label280
label281:
	addi $t0, $fp, -4104
	sw $t0, -4476($fp)
	addi $t0, $fp, -4140
	sw $t0, -4480($fp)
	li $t0, 6
	sw $t0, -4484($fp)
	li $t0, 4
	lw $t1, -4484($fp)
	mul $t0, $t0, $t1
	sw $t0, -4488($fp)
	lw $t0, -4488($fp)
	lw $t1, -4480($fp)
	add $t0, $t0, $t1
	sw $t0, -4492($fp)
	lw $t0, -4492($fp)
	lw $t1, 0($t0)
	sw $t1, -4496($fp)
	li $t0, 4
	lw $t1, -4496($fp)
	mul $t0, $t0, $t1
	sw $t0, -4500($fp)
	lw $t0, -4500($fp)
	lw $t1, -4476($fp)
	add $t0, $t0, $t1
	sw $t0, -4504($fp)
	lw $t0, -4504($fp)
	lw $t1, 0($t0)
	sw $t1, -4508($fp)
	lw $t1, -4508($fp)
	li $t2, 0
	bne $t1, $t2, label279
	j label280
label279:
	li $t0, 1
	sw $t0, -4404($fp)
label280:
	lw $t0, -1920($fp)
	sw $t0, -4512($fp)
	lw $t0, -456($fp)
	sw $t0, -4516($fp)
	lw $t0, -4512($fp)
	lw $t1, -4516($fp)
	mul $t0, $t0, $t1
	sw $t0, -4520($fp)
	j label276
label278:
label250:
label185:
label139:
	j label130
label132:
	j label123
label122:
label290:
	li $t0, 5774
	sw $t0, -4524($fp)
	lw $t1, -4524($fp)
	li $t2, 0
	bne $t1, $t2, label291
	j label293
label293:
	addi $t0, $fp, -264
	sw $t0, -4528($fp)
	lw $t0, -972($fp)
	sw $t0, -4532($fp)
	li $t0, 4
	lw $t1, -4532($fp)
	mul $t0, $t0, $t1
	sw $t0, -4536($fp)
	lw $t0, -4536($fp)
	lw $t1, -4528($fp)
	add $t0, $t0, $t1
	sw $t0, -4540($fp)
	lw $t0, -4540($fp)
	lw $t1, 0($t0)
	sw $t1, -4544($fp)
	li $t0, 0
	lw $t1, -4544($fp)
	sub $t0, $t0, $t1
	sw $t0, -4548($fp)
	lw $t1, -4548($fp)
	li $t2, 0
	bne $t1, $t2, label292
	j label291
label291:
label294:
	li $t0, 0
	sw $t0, -4552($fp)
	addi $t0, $fp, -160
	sw $t0, -4556($fp)
	lw $t0, -672($fp)
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
	lw $t1, -4572($fp)
	li $t2, 0
	bne $t1, $t2, label299
	j label298
label298:
	li $t0, 1
	sw $t0, -4552($fp)
label299:
	li $t0, 0
	lw $t1, -4552($fp)
	sub $t0, $t0, $t1
	sw $t0, -4576($fp)
	lw $t1, -4576($fp)
	li $t2, 0
	bne $t1, $t2, label297
	j label296
label297:
	li $t0, 0
	sw $t0, -4580($fp)
	li $t0, 0
	sw $t0, -4584($fp)
	li $t0, 0
	sw $t0, -4588($fp)
	lw $t0, -1608($fp)
	sw $t0, -4592($fp)
	lw $t1, -4592($fp)
	li $t2, 0
	bne $t1, $t2, label305
	j label304
label304:
	li $t0, 1
	sw $t0, -4588($fp)
label305:
	lw $t0, -648($fp)
	sw $t0, -4596($fp)
	lw $t1, -4588($fp)
	lw $t2, -4596($fp)
	bne $t1, $t2, label302
	j label303
label302:
	li $t0, 1
	sw $t0, -4584($fp)
label303:
	addi $t0, $fp, -268
	sw $t0, -4600($fp)
	li $t0, 0
	sw $t0, -4604($fp)
	li $t0, 4
	lw $t1, -4604($fp)
	mul $t0, $t0, $t1
	sw $t0, -4608($fp)
	lw $t0, -4608($fp)
	lw $t1, -4600($fp)
	add $t0, $t0, $t1
	sw $t0, -4612($fp)
	lw $t0, -4612($fp)
	lw $t1, 0($t0)
	sw $t1, -4616($fp)
	lw $t0, -2352($fp)
	sw $t0, -4620($fp)
	lw $t0, -4616($fp)
	lw $t1, -4620($fp)
	sub $t0, $t0, $t1
	sw $t0, -4624($fp)
	addi $sp, $sp, -4
	lw $t0, -4584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4624($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4628($fp)
	addi $sp, $sp, 12
	li $t0, 47465
	sw $t0, -4632($fp)
	lw $t1, -4628($fp)
	lw $t2, -4632($fp)
	bgt $t1, $t2, label300
	j label301
label300:
	li $t0, 1
	sw $t0, -4580($fp)
label301:
	li $t0, 0
	sw $t0, -4636($fp)
	li $t0, 0
	sw $t0, -4640($fp)
	lw $t0, -1920($fp)
	sw $t0, -4644($fp)
	lw $t0, -1608($fp)
	sw $t0, -4648($fp)
	lw $t1, -4644($fp)
	lw $t2, -4648($fp)
	bne $t1, $t2, label308
	j label309
label308:
	li $t0, 1
	sw $t0, -4640($fp)
label309:
	lw $t0, -1920($fp)
	sw $t0, -4652($fp)
	lw $t1, -4640($fp)
	lw $t2, -4652($fp)
	beq $t1, $t2, label306
	j label307
label306:
	li $t0, 1
	sw $t0, -4636($fp)
label307:
	addi $sp, $sp, -4
	lw $t0, -4580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4636($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4656($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -4656($fp)
	sub $t0, $t0, $t1
	sw $t0, -4660($fp)
	li $t0, 0
	lw $t1, -4660($fp)
	sub $t0, $t0, $t1
	sw $t0, -4664($fp)
	lw $t1, -4664($fp)
	li $t2, 0
	bne $t1, $t2, label295
	j label296
label295:
	li $t0, 58068
	sw $t0, -4668($fp)
	lw $t1, -4668($fp)
	li $t2, 0
	bne $t1, $t2, label313
	j label311
label313:
	li $t0, 0
	sw $t0, -4672($fp)
	li $t0, 65340
	sw $t0, -4676($fp)
	li $t0, 16425
	sw $t0, -4680($fp)
	lw $t1, -4676($fp)
	lw $t2, -4680($fp)
	bgt $t1, $t2, label314
	j label316
label316:
	li $t0, 57549
	sw $t0, -4684($fp)
	lw $t1, -4684($fp)
	li $t2, 0
	bne $t1, $t2, label314
	j label315
label314:
	li $t0, 1
	sw $t0, -4672($fp)
label315:
	addi $t0, $fp, -132
	sw $t0, -4688($fp)
	lw $t0, -1884($fp)
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
	addi $sp, $sp, -4
	lw $t0, -4672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4704($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4708($fp)
	addi $sp, $sp, 12
	li $t0, 14426
	sw $t0, -4712($fp)
	lw $t0, -4708($fp)
	lw $t1, -4712($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4716($fp)
	lw $t1, -4716($fp)
	li $t2, 0
	bne $t1, $t2, label310
	j label311
label310:
	li $t0, 58191
	sw $t0, -4788($fp)
	addi $t0, $fp, -4748
	sw $t0, -4792($fp)
	li $t0, 0
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
	li $t0, 54746
	sw $t0, -4812($fp)
	addi $t0, $fp, -4748
	sw $t0, -4816($fp)
	li $t0, 1
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
	li $t0, 46632
	sw $t0, -4836($fp)
	addi $t0, $fp, -4748
	sw $t0, -4840($fp)
	li $t0, 2
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
	li $t0, 49307
	sw $t0, -4860($fp)
	addi $t0, $fp, -4748
	sw $t0, -4864($fp)
	li $t0, 3
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
	li $t0, 27395
	sw $t0, -4884($fp)
	addi $t0, $fp, -4748
	sw $t0, -4888($fp)
	li $t0, 4
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
	li $t0, 64142
	sw $t0, -4908($fp)
	addi $t0, $fp, -4748
	sw $t0, -4912($fp)
	li $t0, 5
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
	li $t0, 10777
	sw $t0, -4932($fp)
	addi $t0, $fp, -4748
	sw $t0, -4936($fp)
	li $t0, 6
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
	li $t0, 43359
	sw $t0, -4956($fp)
	addi $t0, $fp, -4748
	sw $t0, -4960($fp)
	li $t0, 7
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
	li $t0, 64899
	sw $t0, -4980($fp)
	lw $t0, -4980($fp)
	sw $t0, -4984($fp)
	lw $t0, -4984($fp)
	sw $t0, -4988($fp)
	li $t0, 60810
	sw $t0, -4992($fp)
	addi $t0, $fp, -4784
	sw $t0, -4996($fp)
	li $t0, 0
	sw $t0, -5000($fp)
	lw $t0, -5000($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5004($fp)
	lw $t0, -4996($fp)
	lw $t1, -5004($fp)
	add $t0, $t0, $t1
	sw $t0, -5008($fp)
	lw $t0, -4992($fp)
	lw $t1, -5008($fp)
	sw $t0, 0($t1)
	lw $t0, -5008($fp)
	lw $t1, 0($t0)
	sw $t1, -5012($fp)
	li $t0, 8371
	sw $t0, -5016($fp)
	addi $t0, $fp, -4784
	sw $t0, -5020($fp)
	li $t0, 1
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
	li $t0, 42694
	sw $t0, -5040($fp)
	addi $t0, $fp, -4784
	sw $t0, -5044($fp)
	li $t0, 2
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
	li $t0, 15512
	sw $t0, -5064($fp)
	addi $t0, $fp, -4784
	sw $t0, -5068($fp)
	li $t0, 3
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
	li $t0, 9141
	sw $t0, -5088($fp)
	addi $t0, $fp, -4784
	sw $t0, -5092($fp)
	li $t0, 4
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
	li $t0, 19333
	sw $t0, -5112($fp)
	addi $t0, $fp, -4784
	sw $t0, -5116($fp)
	li $t0, 5
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
	li $t0, 5581
	sw $t0, -5136($fp)
	addi $t0, $fp, -4784
	sw $t0, -5140($fp)
	li $t0, 6
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
	li $t0, 61530
	sw $t0, -5160($fp)
	addi $t0, $fp, -4784
	sw $t0, -5164($fp)
	li $t0, 7
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
	li $t0, 5198
	sw $t0, -5184($fp)
	addi $t0, $fp, -4784
	sw $t0, -5188($fp)
	li $t0, 8
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
	li $t0, 26200
	sw $t0, -5208($fp)
	addi $t0, $fp, -132
	sw $t0, -5212($fp)
	lw $t0, 8($fp)
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
	lw $t1, -5228($fp)
	sub $t0, $t0, $t1
	sw $t0, -5232($fp)
	lw $t0, -5208($fp)
	lw $t1, -5232($fp)
	add $t0, $t0, $t1
	sw $t0, -5236($fp)
	li $t0, 0
	sw $t0, -5240($fp)
	addi $t0, $fp, -4784
	sw $t0, -5244($fp)
	li $t0, 1
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
	bne $t1, $t2, label318
	j label317
label317:
	li $t0, 1
	sw $t0, -5240($fp)
label318:
	li $t0, 43201
	sw $t0, -5264($fp)
	lw $t0, -5264($fp)
	sw $t0, -1920($fp)
	lw $t0, -1920($fp)
	sw $t0, -5268($fp)
	addi $sp, $sp, -4
	lw $t0, -5240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5268($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5272($fp)
	addi $sp, $sp, 12
	lw $t0, -5236($fp)
	lw $t1, -5272($fp)
	sub $t0, $t0, $t1
	sw $t0, -5276($fp)
	addi $t0, $fp, -100
	sw $t0, -5280($fp)
	lw $t0, -612($fp)
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
	lw $t1, -5296($fp)
	li $t2, 0
	bne $t1, $t2, label319
	j label320
label319:
	lw $t0, -1344($fp)
	sw $t0, -5300($fp)
	li $t0, 48975
	sw $t0, -5304($fp)
	lw $t0, -1920($fp)
	sw $t0, -5308($fp)
	lw $t0, -5304($fp)
	lw $t1, -5308($fp)
	sub $t0, $t0, $t1
	sw $t0, -5312($fp)
	li $t0, 51163
	sw $t0, -5316($fp)
	lw $t0, -5312($fp)
	lw $t1, -5316($fp)
	add $t0, $t0, $t1
	sw $t0, -5320($fp)
	addi $t0, $fp, -264
	sw $t0, -5324($fp)
	lw $t0, -1884($fp)
	sw $t0, -5328($fp)
	li $t0, 4
	lw $t1, -5328($fp)
	mul $t0, $t0, $t1
	sw $t0, -5332($fp)
	lw $t0, -5332($fp)
	lw $t1, -5324($fp)
	add $t0, $t0, $t1
	sw $t0, -5336($fp)
	lw $t0, -5336($fp)
	lw $t1, 0($t0)
	sw $t1, -5340($fp)
	lw $t0, -2112($fp)
	sw $t0, -5344($fp)
	lw $t0, -5340($fp)
	lw $t1, -5344($fp)
	add $t0, $t0, $t1
	sw $t0, -5348($fp)
	addi $sp, $sp, -4
	lw $t0, -5320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5348($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5352($fp)
	addi $sp, $sp, 12
	lw $t0, -2352($fp)
	sw $t0, -5356($fp)
	lw $t0, -5352($fp)
	lw $t1, -5356($fp)
	mul $t0, $t0, $t1
	sw $t0, -5360($fp)
	lw $t0, -5300($fp)
	lw $t1, -5360($fp)
	add $t0, $t0, $t1
	sw $t0, -5364($fp)
	lw $t0, -696($fp)
	sw $t0, -5368($fp)
	lw $t0, -5364($fp)
	lw $t1, -5368($fp)
	add $t0, $t0, $t1
	sw $t0, -5372($fp)
	j label321
label320:
	addi $t0, $fp, -100
	sw $t0, -5376($fp)
	lw $t0, -1368($fp)
	sw $t0, -5380($fp)
	lw $t0, -2352($fp)
	sw $t0, -5384($fp)
	lw $t0, -5380($fp)
	lw $t1, -5384($fp)
	mul $t0, $t0, $t1
	sw $t0, -5388($fp)
	li $t0, 4
	lw $t1, -5388($fp)
	mul $t0, $t0, $t1
	sw $t0, -5392($fp)
	lw $t0, -5392($fp)
	lw $t1, -5376($fp)
	add $t0, $t0, $t1
	sw $t0, -5396($fp)
	lw $t0, -5396($fp)
	lw $t1, 0($t0)
	sw $t1, -5400($fp)
	li $t0, 0
	sw $t0, -5404($fp)
	li $t0, 0
	sw $t0, -5408($fp)
	li $t0, 35709
	sw $t0, -5412($fp)
	li $t0, 0
	lw $t1, -5412($fp)
	sub $t0, $t0, $t1
	sw $t0, -5416($fp)
	lw $t0, -636($fp)
	sw $t0, -5420($fp)
	lw $t1, -5416($fp)
	lw $t2, -5420($fp)
	bne $t1, $t2, label324
	j label325
label324:
	li $t0, 1
	sw $t0, -5408($fp)
label325:
	li $t0, 0
	sw $t0, -5424($fp)
	li $t0, 35169
	sw $t0, -5428($fp)
	lw $t0, -5428($fp)
	sw $t0, -1920($fp)
	lw $t0, -1920($fp)
	sw $t0, -5432($fp)
	li $t0, 43695
	sw $t0, -5436($fp)
	addi $sp, $sp, -4
	lw $t0, -5432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5436($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5440($fp)
	addi $sp, $sp, 12
	li $t0, 47329
	sw $t0, -5444($fp)
	lw $t1, -5440($fp)
	lw $t2, -5444($fp)
	bge $t1, $t2, label326
	j label327
label326:
	li $t0, 1
	sw $t0, -5424($fp)
label327:
	lw $t0, -4984($fp)
	sw $t0, -5448($fp)
	lw $t0, -624($fp)
	sw $t0, -5452($fp)
	lw $t0, -5448($fp)
	lw $t1, -5452($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5456($fp)
	lw $t0, -612($fp)
	sw $t0, -5460($fp)
	lw $t0, -5456($fp)
	lw $t1, -5460($fp)
	add $t0, $t0, $t1
	sw $t0, -5464($fp)
	addi $sp, $sp, -4
	lw $t0, -5424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5464($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5468($fp)
	addi $sp, $sp, 12
	lw $t0, -1488($fp)
	sw $t0, -5472($fp)
	lw $t0, -5468($fp)
	lw $t1, -5472($fp)
	add $t0, $t0, $t1
	sw $t0, -5476($fp)
	addi $sp, $sp, -4
	lw $t0, -5408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5476($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5480($fp)
	addi $sp, $sp, 12
	lw $t0, -1380($fp)
	sw $t0, -5484($fp)
	lw $t1, -5480($fp)
	lw $t2, -5484($fp)
	bge $t1, $t2, label322
	j label323
label322:
	li $t0, 1
	sw $t0, -5404($fp)
label323:
	li $t0, 0
	sw $t0, -5488($fp)
	lw $t0, -2352($fp)
	sw $t0, -5492($fp)
	lw $t0, -1356($fp)
	sw $t0, -5496($fp)
	lw $t0, -5492($fp)
	lw $t1, -5496($fp)
	mul $t0, $t0, $t1
	sw $t0, -5500($fp)
	lw $t1, -5500($fp)
	li $t2, 0
	bne $t1, $t2, label328
	j label330
label330:
	lw $t0, 8($fp)
	sw $t0, -5504($fp)
	lw $t1, -5504($fp)
	li $t2, 0
	bne $t1, $t2, label328
	j label329
label328:
	li $t0, 1
	sw $t0, -5488($fp)
label329:
	addi $sp, $sp, -4
	lw $t0, -5404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5488($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5508($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -5508($fp)
	sub $t0, $t0, $t1
	sw $t0, -5512($fp)
	li $t0, 0
	sw $t0, -5516($fp)
	li $t0, 30904
	sw $t0, -5520($fp)
	lw $t1, -5520($fp)
	li $t2, 0
	bne $t1, $t2, label331
	j label332
label331:
	li $t0, 1
	sw $t0, -5516($fp)
label332:
	li $t0, 35364
	sw $t0, -5524($fp)
	li $t0, 0
	lw $t1, -5524($fp)
	sub $t0, $t0, $t1
	sw $t0, -5528($fp)
	addi $sp, $sp, -4
	lw $t0, -5516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5528($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5532($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -5512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5532($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5536($fp)
	addi $sp, $sp, 12
	lw $t0, -5400($fp)
	lw $t1, -5536($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5540($fp)
	addi $t0, $fp, -160
	sw $t0, -5544($fp)
	li $t0, 0
	sw $t0, -5548($fp)
	li $t0, 49595
	sw $t0, -5552($fp)
	li $t0, 39985
	sw $t0, -5556($fp)
	lw $t1, -5552($fp)
	lw $t2, -5556($fp)
	bne $t1, $t2, label333
	j label334
label333:
	li $t0, 1
	sw $t0, -5548($fp)
label334:
	li $t0, 4
	lw $t1, -5548($fp)
	mul $t0, $t0, $t1
	sw $t0, -5560($fp)
	lw $t0, -5560($fp)
	lw $t1, -5544($fp)
	add $t0, $t0, $t1
	sw $t0, -5564($fp)
	lw $t0, -5564($fp)
	lw $t1, 0($t0)
	sw $t1, -5568($fp)
	lw $t0, -5540($fp)
	lw $t1, -5568($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5572($fp)
label321:
	addi $t0, $fp, -4748
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
	lw $t0, -5592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4748
	sw $t0, -5596($fp)
	li $t0, 1
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
	addi $t0, $fp, -4748
	sw $t0, -5616($fp)
	li $t0, 2
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
	addi $t0, $fp, -4748
	sw $t0, -5636($fp)
	li $t0, 3
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
	addi $t0, $fp, -4748
	sw $t0, -5656($fp)
	li $t0, 4
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
	addi $t0, $fp, -4748
	sw $t0, -5676($fp)
	li $t0, 5
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
	addi $t0, $fp, -4748
	sw $t0, -5696($fp)
	li $t0, 6
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
	addi $t0, $fp, -4748
	sw $t0, -5716($fp)
	li $t0, 7
	sw $t0, -5720($fp)
	li $t0, 4
	lw $t1, -5720($fp)
	mul $t0, $t0, $t1
	sw $t0, -5724($fp)
	lw $t0, -5724($fp)
	lw $t1, -5716($fp)
	add $t0, $t0, $t1
	sw $t0, -5728($fp)
	lw $t0, -5728($fp)
	lw $t1, 0($t0)
	sw $t1, -5732($fp)
	lw $t0, -5732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4984($fp)
	sw $t0, -5736($fp)
	lw $t0, -5736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4784
	sw $t0, -5740($fp)
	li $t0, 0
	sw $t0, -5744($fp)
	li $t0, 4
	lw $t1, -5744($fp)
	mul $t0, $t0, $t1
	sw $t0, -5748($fp)
	lw $t0, -5748($fp)
	lw $t1, -5740($fp)
	add $t0, $t0, $t1
	sw $t0, -5752($fp)
	lw $t0, -5752($fp)
	lw $t1, 0($t0)
	sw $t1, -5756($fp)
	lw $t0, -5756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4784
	sw $t0, -5760($fp)
	li $t0, 1
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
	addi $t0, $fp, -4784
	sw $t0, -5780($fp)
	li $t0, 2
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
	addi $t0, $fp, -4784
	sw $t0, -5800($fp)
	li $t0, 3
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
	addi $t0, $fp, -4784
	sw $t0, -5820($fp)
	li $t0, 4
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
	addi $t0, $fp, -4784
	sw $t0, -5840($fp)
	li $t0, 5
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
	addi $t0, $fp, -4784
	sw $t0, -5860($fp)
	li $t0, 6
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
	addi $t0, $fp, -4784
	sw $t0, -5880($fp)
	li $t0, 7
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
	addi $t0, $fp, -4784
	sw $t0, -5900($fp)
	li $t0, 8
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
	li $t0, 0
	sw $t0, -5920($fp)
	li $t0, 0
	sw $t0, -5924($fp)
	lw $t0, -648($fp)
	sw $t0, -5928($fp)
	lw $t0, -660($fp)
	sw $t0, -5932($fp)
	lw $t0, -5928($fp)
	lw $t1, -5932($fp)
	mul $t0, $t0, $t1
	sw $t0, -5936($fp)
	li $t0, 24919
	sw $t0, -5940($fp)
	lw $t1, -5936($fp)
	lw $t2, -5940($fp)
	bge $t1, $t2, label339
	j label340
label339:
	li $t0, 1
	sw $t0, -5924($fp)
label340:
	addi $t0, $fp, -200
	sw $t0, -5944($fp)
	li $t0, 8
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
	lw $t1, -5924($fp)
	lw $t2, -5960($fp)
	bge $t1, $t2, label335
	j label338
label338:
	li $t0, 52315
	sw $t0, -5964($fp)
	li $t0, 29297
	sw $t0, -5968($fp)
	lw $t0, -5964($fp)
	lw $t1, -5968($fp)
	mul $t0, $t0, $t1
	sw $t0, -5972($fp)
	li $t0, 34533
	sw $t0, -5976($fp)
	lw $t0, -5972($fp)
	lw $t1, -5976($fp)
	add $t0, $t0, $t1
	sw $t0, -5980($fp)
	lw $t1, -5980($fp)
	li $t2, 0
	bne $t1, $t2, label335
	j label337
label337:
	li $t0, 0
	sw $t0, -5984($fp)
	li $t0, 30138
	sw $t0, -5988($fp)
	lw $t1, -5988($fp)
	li $t2, 0
	bne $t1, $t2, label342
	j label341
label341:
	li $t0, 1
	sw $t0, -5984($fp)
label342:
	li $t0, 28660
	sw $t0, -5992($fp)
	lw $t0, -5984($fp)
	lw $t1, -5992($fp)
	sub $t0, $t0, $t1
	sw $t0, -5996($fp)
	li $t0, 5819
	sw $t0, -6000($fp)
	li $t0, 29807
	sw $t0, -6004($fp)
	lw $t0, -672($fp)
	sw $t0, -6008($fp)
	lw $t0, -6004($fp)
	lw $t1, -6008($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6012($fp)
	li $t0, 38510
	sw $t0, -6016($fp)
	lw $t0, -6012($fp)
	lw $t1, -6016($fp)
	mul $t0, $t0, $t1
	sw $t0, -6020($fp)
	addi $sp, $sp, -4
	lw $t0, -6000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6020($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6024($fp)
	addi $sp, $sp, 12
	lw $t1, -5996($fp)
	lw $t2, -6024($fp)
	ble $t1, $t2, label335
	j label336
label335:
	li $t0, 1
	sw $t0, -5920($fp)
label336:
	lw $ra, -4($fp)
	lw $v0, -5920($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -4748
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
	addi $t0, $fp, -4748
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
	addi $t0, $fp, -4748
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
	addi $t0, $fp, -4748
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
	addi $t0, $fp, -4748
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
	addi $t0, $fp, -4748
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
	addi $t0, $fp, -4748
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
	addi $t0, $fp, -4748
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
	lw $t0, -4984($fp)
	sw $t0, -6188($fp)
	lw $t0, -6188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4784
	sw $t0, -6192($fp)
	li $t0, 0
	sw $t0, -6196($fp)
	li $t0, 4
	lw $t1, -6196($fp)
	mul $t0, $t0, $t1
	sw $t0, -6200($fp)
	lw $t0, -6200($fp)
	lw $t1, -6192($fp)
	add $t0, $t0, $t1
	sw $t0, -6204($fp)
	lw $t0, -6204($fp)
	lw $t1, 0($t0)
	sw $t1, -6208($fp)
	lw $t0, -6208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4784
	sw $t0, -6212($fp)
	li $t0, 1
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
	lw $t0, -6228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4784
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
	lw $t0, -6248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4784
	sw $t0, -6252($fp)
	li $t0, 3
	sw $t0, -6256($fp)
	li $t0, 4
	lw $t1, -6256($fp)
	mul $t0, $t0, $t1
	sw $t0, -6260($fp)
	lw $t0, -6260($fp)
	lw $t1, -6252($fp)
	add $t0, $t0, $t1
	sw $t0, -6264($fp)
	lw $t0, -6264($fp)
	lw $t1, 0($t0)
	sw $t1, -6268($fp)
	lw $t0, -6268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4784
	sw $t0, -6272($fp)
	li $t0, 4
	sw $t0, -6276($fp)
	li $t0, 4
	lw $t1, -6276($fp)
	mul $t0, $t0, $t1
	sw $t0, -6280($fp)
	lw $t0, -6280($fp)
	lw $t1, -6272($fp)
	add $t0, $t0, $t1
	sw $t0, -6284($fp)
	lw $t0, -6284($fp)
	lw $t1, 0($t0)
	sw $t1, -6288($fp)
	lw $t0, -6288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4784
	sw $t0, -6292($fp)
	li $t0, 5
	sw $t0, -6296($fp)
	li $t0, 4
	lw $t1, -6296($fp)
	mul $t0, $t0, $t1
	sw $t0, -6300($fp)
	lw $t0, -6300($fp)
	lw $t1, -6292($fp)
	add $t0, $t0, $t1
	sw $t0, -6304($fp)
	lw $t0, -6304($fp)
	lw $t1, 0($t0)
	sw $t1, -6308($fp)
	lw $t0, -6308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4784
	sw $t0, -6312($fp)
	li $t0, 6
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
	addi $t0, $fp, -4784
	sw $t0, -6332($fp)
	li $t0, 7
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
	addi $t0, $fp, -4784
	sw $t0, -6352($fp)
	li $t0, 8
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
	li $t0, 0
	sw $t0, -6372($fp)
	addi $t0, $fp, -4748
	sw $t0, -6376($fp)
	lw $t0, -696($fp)
	sw $t0, -6380($fp)
	lw $t0, -6380($fp)
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -6384($fp)
	li $t0, 4
	lw $t1, -6384($fp)
	mul $t0, $t0, $t1
	sw $t0, -6388($fp)
	lw $t0, -6388($fp)
	lw $t1, -6376($fp)
	add $t0, $t0, $t1
	sw $t0, -6392($fp)
	lw $t0, -6392($fp)
	lw $t1, 0($t0)
	sw $t1, -6396($fp)
	lw $t1, -6396($fp)
	li $t2, 0
	bne $t1, $t2, label345
	j label344
label345:
	li $t0, 45320
	sw $t0, -6400($fp)
	lw $t0, -708($fp)
	sw $t0, -6404($fp)
	lw $t0, -6400($fp)
	lw $t1, -6404($fp)
	mul $t0, $t0, $t1
	sw $t0, -6408($fp)
	lw $t0, -624($fp)
	sw $t0, -6412($fp)
	lw $t0, -6408($fp)
	lw $t1, -6412($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6416($fp)
	lw $t1, -6416($fp)
	li $t2, 0
	bne $t1, $t2, label343
	j label344
label343:
	li $t0, 1
	sw $t0, -6372($fp)
label344:
	lw $ra, -4($fp)
	lw $v0, -6372($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -6420($fp)
	li $t0, 0
	sw $t0, -6424($fp)
	lw $t0, -2100($fp)
	sw $t0, -6428($fp)
	lw $t1, -6428($fp)
	li $t2, 0
	bne $t1, $t2, label348
	j label349
label348:
	li $t0, 1
	sw $t0, -6424($fp)
label349:
	li $t0, 25152
	sw $t0, -6432($fp)
	li $t0, 0
	lw $t1, -6432($fp)
	sub $t0, $t0, $t1
	sw $t0, -6436($fp)
	li $t0, 50901
	sw $t0, -6440($fp)
	lw $t0, -6436($fp)
	lw $t1, -6440($fp)
	sub $t0, $t0, $t1
	sw $t0, -6444($fp)
	addi $sp, $sp, -4
	lw $t0, -6424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6444($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6448($fp)
	addi $sp, $sp, 12
	li $t0, 43646
	sw $t0, -6452($fp)
	lw $t1, -6448($fp)
	lw $t2, -6452($fp)
	bne $t1, $t2, label346
	j label347
label346:
	li $t0, 1
	sw $t0, -6420($fp)
label347:
	li $t0, 0
	sw $t0, -6456($fp)
	li $t0, 47651
	sw $t0, -6460($fp)
	lw $t0, 4($fp)
	sw $t0, -6464($fp)
	lw $t1, -6460($fp)
	lw $t2, -6464($fp)
	ble $t1, $t2, label352
	j label351
label352:
	lw $t0, -1920($fp)
	sw $t0, -6468($fp)
	lw $t1, -6468($fp)
	li $t2, 0
	bne $t1, $t2, label350
	j label351
label350:
	li $t0, 1
	sw $t0, -6456($fp)
label351:
	addi $sp, $sp, -4
	lw $t0, -6420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6456($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6472($fp)
	addi $sp, $sp, 12
	j label312
label311:
label353:
	lw $t0, -1368($fp)
	sw $t0, -6476($fp)
	lw $t1, -6476($fp)
	li $t2, 0
	bne $t1, $t2, label354
	j label356
label356:
	li $t0, 30350
	sw $t0, -6480($fp)
	lw $t0, -972($fp)
	sw $t0, -6484($fp)
	lw $t0, -6480($fp)
	lw $t1, -6484($fp)
	mul $t0, $t0, $t1
	sw $t0, -6488($fp)
	li $t0, 0
	lw $t1, -6488($fp)
	sub $t0, $t0, $t1
	sw $t0, -6492($fp)
	lw $t1, -6492($fp)
	li $t2, 0
	bne $t1, $t2, label354
	j label355
label354:
	li $t0, 0
	sw $t0, -6496($fp)
	li $t0, 33443
	sw $t0, -6500($fp)
	li $t0, 14064
	sw $t0, -6504($fp)
	lw $t0, -6500($fp)
	lw $t1, -6504($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6508($fp)
	lw $t1, -6508($fp)
	li $t2, 0
	bne $t1, $t2, label359
	j label358
label359:
	lw $t0, -708($fp)
	sw $t0, -6512($fp)
	lw $t1, -6512($fp)
	li $t2, 0
	bne $t1, $t2, label357
	j label358
label357:
	li $t0, 1
	sw $t0, -6496($fp)
label358:
	li $t0, 0
	sw $t0, -6516($fp)
	li $t0, 11565
	sw $t0, -6520($fp)
	li $t0, 21311
	sw $t0, -6524($fp)
	lw $t1, -6520($fp)
	lw $t2, -6524($fp)
	beq $t1, $t2, label362
	j label361
label362:
	lw $t0, -1608($fp)
	sw $t0, -6528($fp)
	lw $t1, -6528($fp)
	li $t2, 0
	bne $t1, $t2, label360
	j label361
label360:
	li $t0, 1
	sw $t0, -6516($fp)
label361:
	addi $sp, $sp, -4
	lw $t0, -6496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6516($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6532($fp)
	addi $sp, $sp, 12
	li $t0, 4750
	sw $t0, -6536($fp)
	lw $t0, -6532($fp)
	lw $t1, -6536($fp)
	mul $t0, $t0, $t1
	sw $t0, -6540($fp)
	lw $ra, -4($fp)
	lw $v0, -6540($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label353
label355:
	lw $t0, -1368($fp)
	sw $t0, -6544($fp)
	li $t0, 0
	lw $t1, -6544($fp)
	sub $t0, $t0, $t1
	sw $t0, -6548($fp)
	lw $ra, -4($fp)
	lw $v0, -6548($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label312:
	j label294
label296:
	j label290
label292:
label123:
	lw $t0, -660($fp)
	sw $t0, -6552($fp)
	lw $t1, -6552($fp)
	li $t2, 0
	bne $t1, $t2, label363
	j label364
label363:
label366:
	lw $t0, -1380($fp)
	sw $t0, -6556($fp)
	lw $t0, -1392($fp)
	sw $t0, -6560($fp)
	lw $t0, -6556($fp)
	lw $t1, -6560($fp)
	sub $t0, $t0, $t1
	sw $t0, -6564($fp)
	lw $t0, -972($fp)
	sw $t0, -6568($fp)
	lw $t0, -6564($fp)
	lw $t1, -6568($fp)
	add $t0, $t0, $t1
	sw $t0, -6572($fp)
	lw $t0, -972($fp)
	sw $t0, -6576($fp)
	li $t0, 19070
	sw $t0, -6580($fp)
	lw $t0, -6576($fp)
	lw $t1, -6580($fp)
	sub $t0, $t0, $t1
	sw $t0, -6584($fp)
	lw $t1, -6572($fp)
	lw $t2, -6584($fp)
	blt $t1, $t2, label370
	j label368
label370:
	addi $t0, $fp, -144
	sw $t0, -6588($fp)
	li $t0, 1
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
	lw $t1, -6604($fp)
	li $t2, 0
	bne $t1, $t2, label369
	j label368
label369:
	lw $t0, -996($fp)
	sw $t0, -6608($fp)
	li $t0, 32938
	sw $t0, -6612($fp)
	lw $t0, -6608($fp)
	lw $t1, -6612($fp)
	add $t0, $t0, $t1
	sw $t0, -6616($fp)
	li $t0, 0
	sw $t0, -6620($fp)
	li $t0, 0
	sw $t0, -6624($fp)
	li $t0, 62765
	sw $t0, -6628($fp)
	li $t0, 19062
	sw $t0, -6632($fp)
	lw $t1, -6628($fp)
	lw $t2, -6632($fp)
	bgt $t1, $t2, label373
	j label374
label373:
	li $t0, 1
	sw $t0, -6624($fp)
label374:
	li $t0, 17447
	sw $t0, -6636($fp)
	lw $t1, -6624($fp)
	lw $t2, -6636($fp)
	beq $t1, $t2, label371
	j label372
label371:
	li $t0, 1
	sw $t0, -6620($fp)
label372:
	addi $sp, $sp, -4
	lw $t0, -6616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6620($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6640($fp)
	addi $sp, $sp, 12
	lw $t1, -6640($fp)
	li $t2, 0
	bne $t1, $t2, label367
	j label368
label367:
	li $t0, 3121
	sw $t0, -6644($fp)
	lw $t1, -6644($fp)
	li $t2, 0
	bne $t1, $t2, label375
	j label376
label375:
label378:
	addi $t0, $fp, -100
	sw $t0, -6648($fp)
	addi $t0, $fp, -32
	sw $t0, -6652($fp)
	lw $t0, -1356($fp)
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
	li $t0, 0
	lw $t1, -6668($fp)
	sub $t0, $t0, $t1
	sw $t0, -6672($fp)
	li $t0, 4
	lw $t1, -6672($fp)
	mul $t0, $t0, $t1
	sw $t0, -6676($fp)
	lw $t0, -6676($fp)
	lw $t1, -6648($fp)
	add $t0, $t0, $t1
	sw $t0, -6680($fp)
	lw $t0, -6680($fp)
	lw $t1, 0($t0)
	sw $t1, -6684($fp)
	lw $t1, -6684($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label380
label379:
	addi $t0, $fp, -132
	sw $t0, -6688($fp)
	lw $t0, -564($fp)
	sw $t0, -6692($fp)
	lw $t0, -696($fp)
	sw $t0, -6696($fp)
	lw $t0, -6692($fp)
	lw $t1, -6696($fp)
	sub $t0, $t0, $t1
	sw $t0, -6700($fp)
	li $t0, 4
	lw $t1, -6700($fp)
	mul $t0, $t0, $t1
	sw $t0, -6704($fp)
	lw $t0, -6704($fp)
	lw $t1, -6688($fp)
	add $t0, $t0, $t1
	sw $t0, -6708($fp)
	lw $t0, -6708($fp)
	lw $t1, 0($t0)
	sw $t1, -6712($fp)
	li $t0, 0
	lw $t1, -6712($fp)
	sub $t0, $t0, $t1
	sw $t0, -6716($fp)
	lw $t0, -576($fp)
	sw $t0, -6720($fp)
	li $t0, 0
	sw $t0, -6724($fp)
	lw $t0, -480($fp)
	sw $t0, -6728($fp)
	li $t0, 57432
	sw $t0, -6732($fp)
	lw $t0, -6728($fp)
	lw $t1, -6732($fp)
	mul $t0, $t0, $t1
	sw $t0, -6736($fp)
	li $t0, 57858
	sw $t0, -6740($fp)
	lw $t1, -6736($fp)
	lw $t2, -6740($fp)
	beq $t1, $t2, label381
	j label382
label381:
	li $t0, 1
	sw $t0, -6724($fp)
label382:
	addi $sp, $sp, -4
	lw $t0, -6720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6724($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6744($fp)
	addi $sp, $sp, 12
	lw $t0, -6716($fp)
	lw $t1, -6744($fp)
	sub $t0, $t0, $t1
	sw $t0, -6748($fp)
	lw $ra, -4($fp)
	lw $v0, -6748($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label378
label380:
	j label377
label376:
	addi $t0, $fp, -232
	sw $t0, -6752($fp)
	li $t0, 33813
	sw $t0, -6756($fp)
	lw $t0, -624($fp)
	sw $t0, -6760($fp)
	lw $t0, -6756($fp)
	lw $t1, -6760($fp)
	mul $t0, $t0, $t1
	sw $t0, -6764($fp)
	li $t0, 0
	lw $t1, -6764($fp)
	sub $t0, $t0, $t1
	sw $t0, -6768($fp)
	li $t0, 4
	lw $t1, -6768($fp)
	mul $t0, $t0, $t1
	sw $t0, -6772($fp)
	lw $t0, -6772($fp)
	lw $t1, -6752($fp)
	add $t0, $t0, $t1
	sw $t0, -6776($fp)
	lw $t0, -6776($fp)
	lw $t1, 0($t0)
	sw $t1, -6780($fp)
	li $t0, 0
	sw $t0, -6784($fp)
	lw $t0, -480($fp)
	sw $t0, -6788($fp)
	lw $t1, -6788($fp)
	li $t2, 0
	bne $t1, $t2, label387
	j label386
label386:
	li $t0, 1
	sw $t0, -6784($fp)
label387:
	lw $t1, -6780($fp)
	lw $t2, -6784($fp)
	ble $t1, $t2, label383
	j label384
label383:
	li $t0, 15653
	sw $t0, -6792($fp)
	j label385
label384:
label388:
	li $t0, 44637
	sw $t0, -6796($fp)
	lw $t0, -684($fp)
	sw $t0, -6800($fp)
	lw $t0, -6796($fp)
	lw $t1, -6800($fp)
	mul $t0, $t0, $t1
	sw $t0, -6804($fp)
	li $t0, 0
	sw $t0, -6808($fp)
	lw $t0, -2124($fp)
	sw $t0, -6812($fp)
	lw $t1, -6812($fp)
	li $t2, 0
	bne $t1, $t2, label391
	j label394
label394:
	lw $t0, -612($fp)
	sw $t0, -6816($fp)
	lw $t1, -6816($fp)
	li $t2, 0
	bne $t1, $t2, label391
	j label393
label393:
	lw $t0, -2112($fp)
	sw $t0, -6820($fp)
	lw $t1, -6820($fp)
	li $t2, 0
	bne $t1, $t2, label391
	j label392
label391:
	li $t0, 1
	sw $t0, -6808($fp)
label392:
	li $t0, 0
	sw $t0, -6824($fp)
	lw $t0, -612($fp)
	sw $t0, -6828($fp)
	li $t0, 0
	lw $t1, -6828($fp)
	sub $t0, $t0, $t1
	sw $t0, -6832($fp)
	lw $t0, -588($fp)
	sw $t0, -6836($fp)
	lw $t1, -6832($fp)
	lw $t2, -6836($fp)
	bgt $t1, $t2, label395
	j label396
label395:
	li $t0, 1
	sw $t0, -6824($fp)
label396:
	addi $sp, $sp, -4
	lw $t0, -6808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6824($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6840($fp)
	addi $sp, $sp, 12
	lw $t0, -6804($fp)
	lw $t1, -6840($fp)
	mul $t0, $t0, $t1
	sw $t0, -6844($fp)
	lw $t1, -6844($fp)
	li $t2, 0
	bne $t1, $t2, label389
	j label390
label389:
	li $t0, 0
	sw $t0, -6848($fp)
	li $t0, 0
	sw $t0, -6852($fp)
	li $t0, 26235
	sw $t0, -6856($fp)
	lw $t0, -1920($fp)
	sw $t0, -6860($fp)
	lw $t1, -6856($fp)
	lw $t2, -6860($fp)
	beq $t1, $t2, label399
	j label400
label399:
	li $t0, 1
	sw $t0, -6852($fp)
label400:
	lw $t0, -1356($fp)
	sw $t0, -6864($fp)
	lw $t0, -6864($fp)
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	sw $t0, -6868($fp)
	addi $sp, $sp, -4
	lw $t0, -6852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6868($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6872($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -6876($fp)
	lw $t0, -612($fp)
	sw $t0, -6880($fp)
	li $t0, 0
	lw $t1, -6880($fp)
	sub $t0, $t0, $t1
	sw $t0, -6884($fp)
	li $t0, 9239
	sw $t0, -6888($fp)
	lw $t1, -6884($fp)
	lw $t2, -6888($fp)
	beq $t1, $t2, label401
	j label402
label401:
	li $t0, 1
	sw $t0, -6876($fp)
label402:
	li $t0, 0
	sw $t0, -6892($fp)
	lw $t0, -600($fp)
	sw $t0, -6896($fp)
	lw $t1, -6896($fp)
	li $t2, 0
	bne $t1, $t2, label404
	j label403
label403:
	li $t0, 1
	sw $t0, -6892($fp)
label404:
	addi $sp, $sp, -4
	lw $t0, -6876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6892($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6900($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -6872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6900($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6904($fp)
	addi $sp, $sp, 12
	li $t0, 14458
	sw $t0, -6908($fp)
	lw $t1, -6904($fp)
	lw $t2, -6908($fp)
	blt $t1, $t2, label397
	j label398
label397:
	li $t0, 1
	sw $t0, -6848($fp)
label398:
	li $t0, 63110
	sw $t0, -6912($fp)
	li $t0, 50186
	sw $t0, -6916($fp)
	lw $t0, -6912($fp)
	lw $t1, -6916($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6920($fp)
	lw $t0, -696($fp)
	sw $t0, -6924($fp)
	lw $t0, -6920($fp)
	lw $t1, -6924($fp)
	sub $t0, $t0, $t1
	sw $t0, -6928($fp)
	addi $sp, $sp, -4
	lw $t0, -6848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6928($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6932($fp)
	addi $sp, $sp, 12
	lw $t0, -660($fp)
	sw $t0, -6936($fp)
	lw $t0, -6932($fp)
	lw $t1, -6936($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6940($fp)
	li $t0, 0
	sw $t0, -6944($fp)
	addi $t0, $fp, -84
	sw $t0, -6948($fp)
	li $t0, 4
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
	lw $t0, -468($fp)
	sw $t0, -6968($fp)
	lw $t1, -6964($fp)
	lw $t2, -6968($fp)
	bne $t1, $t2, label405
	j label406
label405:
	li $t0, 1
	sw $t0, -6944($fp)
label406:
	li $t0, 47749
	sw $t0, -6972($fp)
	lw $t0, -624($fp)
	sw $t0, -6976($fp)
	lw $t0, -6972($fp)
	lw $t1, -6976($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6980($fp)
	addi $sp, $sp, -4
	lw $t0, -6944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6980($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6984($fp)
	addi $sp, $sp, 12
	lw $t0, -6940($fp)
	lw $t1, -6984($fp)
	mul $t0, $t0, $t1
	sw $t0, -6988($fp)
	j label388
label390:
label385:
label377:
	j label366
label368:
	j label365
label364:
	li $t0, 0
	sw $t0, -6992($fp)
	li $t0, 0
	sw $t0, -6996($fp)
	lw $t0, -1920($fp)
	sw $t0, -7000($fp)
	lw $t1, -7000($fp)
	li $t2, 0
	bne $t1, $t2, label410
	j label409
label409:
	li $t0, 1
	sw $t0, -6996($fp)
label410:
	lw $t0, -1008($fp)
	sw $t0, -7004($fp)
	lw $t1, -6996($fp)
	lw $t2, -7004($fp)
	ble $t1, $t2, label407
	j label408
label407:
	li $t0, 1
	sw $t0, -6992($fp)
label408:
	lw $t0, -672($fp)
	sw $t0, -7008($fp)
	lw $t0, -7008($fp)
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -7012($fp)
	addi $sp, $sp, -4
	lw $t0, -6992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7012($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7016($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -7020($fp)
	li $t0, 29865
	sw $t0, -7024($fp)
	li $t0, 57206
	sw $t0, -7028($fp)
	lw $t0, -7024($fp)
	lw $t1, -7028($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7032($fp)
	li $t0, 45143
	sw $t0, -7036($fp)
	lw $t0, -7032($fp)
	lw $t1, -7036($fp)
	add $t0, $t0, $t1
	sw $t0, -7040($fp)
	addi $t0, $fp, -100
	sw $t0, -7044($fp)
	lw $t0, -1128($fp)
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
	addi $sp, $sp, -4
	lw $t0, -7040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7060($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7064($fp)
	addi $sp, $sp, 12
	lw $t1, -7064($fp)
	li $t2, 0
	bne $t1, $t2, label413
	j label412
label413:
	lw $t0, -588($fp)
	sw $t0, -7068($fp)
	lw $t1, -7068($fp)
	li $t2, 0
	bne $t1, $t2, label411
	j label412
label411:
	li $t0, 1
	sw $t0, -7020($fp)
label412:
	lw $t0, -1020($fp)
	sw $t0, -7072($fp)
	li $t0, 0
	lw $t1, -7072($fp)
	sub $t0, $t0, $t1
	sw $t0, -7076($fp)
	addi $sp, $sp, -4
	lw $t0, -7020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7076($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7080($fp)
	addi $sp, $sp, 12
	lw $t0, -7016($fp)
	lw $t1, -7080($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7084($fp)
	li $t0, 0
	sw $t0, -7088($fp)
	lw $t0, -1140($fp)
	sw $t0, -7092($fp)
	lw $t1, -7092($fp)
	li $t2, 0
	bne $t1, $t2, label415
	j label414
label414:
	li $t0, 1
	sw $t0, -7088($fp)
label415:
	li $t0, 0
	lw $t1, -7088($fp)
	sub $t0, $t0, $t1
	sw $t0, -7096($fp)
	lw $t0, -7084($fp)
	lw $t1, -7096($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7100($fp)
	li $t0, 0
	lw $t1, -7100($fp)
	sub $t0, $t0, $t1
	sw $t0, -7104($fp)
	li $t0, 0
	lw $t1, -7104($fp)
	sub $t0, $t0, $t1
	sw $t0, -7108($fp)
	lw $ra, -4($fp)
	lw $v0, -7108($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label365:
	addi $t0, $fp, -32
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
	lw $t0, -7128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -7132($fp)
	li $t0, 1
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
	lw $t0, -7148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -7152($fp)
	li $t0, 2
	sw $t0, -7156($fp)
	li $t0, 4
	lw $t1, -7156($fp)
	mul $t0, $t0, $t1
	sw $t0, -7160($fp)
	lw $t0, -7160($fp)
	lw $t1, -7152($fp)
	add $t0, $t0, $t1
	sw $t0, -7164($fp)
	lw $t0, -7164($fp)
	lw $t1, 0($t0)
	sw $t1, -7168($fp)
	lw $t0, -7168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -7172($fp)
	li $t0, 3
	sw $t0, -7176($fp)
	li $t0, 4
	lw $t1, -7176($fp)
	mul $t0, $t0, $t1
	sw $t0, -7180($fp)
	lw $t0, -7180($fp)
	lw $t1, -7172($fp)
	add $t0, $t0, $t1
	sw $t0, -7184($fp)
	lw $t0, -7184($fp)
	lw $t1, 0($t0)
	sw $t1, -7188($fp)
	lw $t0, -7188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -7192($fp)
	li $t0, 4
	sw $t0, -7196($fp)
	li $t0, 4
	lw $t1, -7196($fp)
	mul $t0, $t0, $t1
	sw $t0, -7200($fp)
	lw $t0, -7200($fp)
	lw $t1, -7192($fp)
	add $t0, $t0, $t1
	sw $t0, -7204($fp)
	lw $t0, -7204($fp)
	lw $t1, 0($t0)
	sw $t1, -7208($fp)
	lw $t0, -7208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -7212($fp)
	li $t0, 5
	sw $t0, -7216($fp)
	li $t0, 4
	lw $t1, -7216($fp)
	mul $t0, $t0, $t1
	sw $t0, -7220($fp)
	lw $t0, -7220($fp)
	lw $t1, -7212($fp)
	add $t0, $t0, $t1
	sw $t0, -7224($fp)
	lw $t0, -7224($fp)
	lw $t1, 0($t0)
	sw $t1, -7228($fp)
	lw $t0, -7228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -7232($fp)
	li $t0, 6
	sw $t0, -7236($fp)
	li $t0, 4
	lw $t1, -7236($fp)
	mul $t0, $t0, $t1
	sw $t0, -7240($fp)
	lw $t0, -7240($fp)
	lw $t1, -7232($fp)
	add $t0, $t0, $t1
	sw $t0, -7244($fp)
	lw $t0, -7244($fp)
	lw $t1, 0($t0)
	sw $t1, -7248($fp)
	lw $t0, -7248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -444($fp)
	sw $t0, -7252($fp)
	lw $t0, -7252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -456($fp)
	sw $t0, -7256($fp)
	lw $t0, -7256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -7260($fp)
	lw $t0, -7260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -7264($fp)
	lw $t0, -7264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -7268($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -7288($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -7308($fp)
	li $t0, 2
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
	lw $t0, -564($fp)
	sw $t0, -7328($fp)
	lw $t0, -7328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -576($fp)
	sw $t0, -7332($fp)
	lw $t0, -7332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -588($fp)
	sw $t0, -7336($fp)
	lw $t0, -7336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -600($fp)
	sw $t0, -7340($fp)
	lw $t0, -7340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -612($fp)
	sw $t0, -7344($fp)
	lw $t0, -7344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -624($fp)
	sw $t0, -7348($fp)
	lw $t0, -7348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -636($fp)
	sw $t0, -7352($fp)
	lw $t0, -7352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	sw $t0, -7356($fp)
	lw $t0, -7356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -660($fp)
	sw $t0, -7360($fp)
	lw $t0, -7360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -672($fp)
	sw $t0, -7364($fp)
	lw $t0, -7364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -684($fp)
	sw $t0, -7368($fp)
	lw $t0, -7368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -696($fp)
	sw $t0, -7372($fp)
	lw $t0, -7372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -708($fp)
	sw $t0, -7376($fp)
	lw $t0, -7376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -7380($fp)
	li $t0, 0
	sw $t0, -7384($fp)
	li $t0, 4
	lw $t1, -7384($fp)
	mul $t0, $t0, $t1
	sw $t0, -7388($fp)
	lw $t0, -7388($fp)
	lw $t1, -7380($fp)
	add $t0, $t0, $t1
	sw $t0, -7392($fp)
	lw $t0, -7392($fp)
	lw $t1, 0($t0)
	sw $t1, -7396($fp)
	lw $t0, -7396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -7400($fp)
	li $t0, 1
	sw $t0, -7404($fp)
	li $t0, 4
	lw $t1, -7404($fp)
	mul $t0, $t0, $t1
	sw $t0, -7408($fp)
	lw $t0, -7408($fp)
	lw $t1, -7400($fp)
	add $t0, $t0, $t1
	sw $t0, -7412($fp)
	lw $t0, -7412($fp)
	lw $t1, 0($t0)
	sw $t1, -7416($fp)
	lw $t0, -7416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -7420($fp)
	li $t0, 2
	sw $t0, -7424($fp)
	li $t0, 4
	lw $t1, -7424($fp)
	mul $t0, $t0, $t1
	sw $t0, -7428($fp)
	lw $t0, -7428($fp)
	lw $t1, -7420($fp)
	add $t0, $t0, $t1
	sw $t0, -7432($fp)
	lw $t0, -7432($fp)
	lw $t1, 0($t0)
	sw $t1, -7436($fp)
	lw $t0, -7436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -7440($fp)
	li $t0, 3
	sw $t0, -7444($fp)
	li $t0, 4
	lw $t1, -7444($fp)
	mul $t0, $t0, $t1
	sw $t0, -7448($fp)
	lw $t0, -7448($fp)
	lw $t1, -7440($fp)
	add $t0, $t0, $t1
	sw $t0, -7452($fp)
	lw $t0, -7452($fp)
	lw $t1, 0($t0)
	sw $t1, -7456($fp)
	lw $t0, -7456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -7460($fp)
	li $t0, 4
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
	addi $t0, $fp, -84
	sw $t0, -7480($fp)
	li $t0, 5
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
	addi $t0, $fp, -84
	sw $t0, -7500($fp)
	li $t0, 6
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
	addi $t0, $fp, -84
	sw $t0, -7520($fp)
	li $t0, 7
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
	addi $t0, $fp, -84
	sw $t0, -7540($fp)
	li $t0, 8
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
	addi $t0, $fp, -84
	sw $t0, -7560($fp)
	li $t0, 9
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
	lw $t0, -960($fp)
	sw $t0, -7580($fp)
	lw $t0, -7580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -972($fp)
	sw $t0, -7584($fp)
	lw $t0, -7584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -984($fp)
	sw $t0, -7588($fp)
	lw $t0, -7588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -996($fp)
	sw $t0, -7592($fp)
	lw $t0, -7592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1008($fp)
	sw $t0, -7596($fp)
	lw $t0, -7596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1020($fp)
	sw $t0, -7600($fp)
	lw $t0, -7600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -7604($fp)
	li $t0, 0
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
	addi $t0, $fp, -100
	sw $t0, -7624($fp)
	li $t0, 1
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
	addi $t0, $fp, -100
	sw $t0, -7644($fp)
	li $t0, 2
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
	addi $t0, $fp, -100
	sw $t0, -7664($fp)
	li $t0, 3
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
	lw $t0, -1128($fp)
	sw $t0, -7684($fp)
	lw $t0, -7684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1140($fp)
	sw $t0, -7688($fp)
	lw $t0, -7688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -7692($fp)
	li $t0, 0
	sw $t0, -7696($fp)
	li $t0, 4
	lw $t1, -7696($fp)
	mul $t0, $t0, $t1
	sw $t0, -7700($fp)
	lw $t0, -7700($fp)
	lw $t1, -7692($fp)
	add $t0, $t0, $t1
	sw $t0, -7704($fp)
	lw $t0, -7704($fp)
	lw $t1, 0($t0)
	sw $t1, -7708($fp)
	lw $t0, -7708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -7712($fp)
	li $t0, 1
	sw $t0, -7716($fp)
	li $t0, 4
	lw $t1, -7716($fp)
	mul $t0, $t0, $t1
	sw $t0, -7720($fp)
	lw $t0, -7720($fp)
	lw $t1, -7712($fp)
	add $t0, $t0, $t1
	sw $t0, -7724($fp)
	lw $t0, -7724($fp)
	lw $t1, 0($t0)
	sw $t1, -7728($fp)
	lw $t0, -7728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -7732($fp)
	li $t0, 2
	sw $t0, -7736($fp)
	li $t0, 4
	lw $t1, -7736($fp)
	mul $t0, $t0, $t1
	sw $t0, -7740($fp)
	lw $t0, -7740($fp)
	lw $t1, -7732($fp)
	add $t0, $t0, $t1
	sw $t0, -7744($fp)
	lw $t0, -7744($fp)
	lw $t1, 0($t0)
	sw $t1, -7748($fp)
	lw $t0, -7748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -7752($fp)
	li $t0, 3
	sw $t0, -7756($fp)
	li $t0, 4
	lw $t1, -7756($fp)
	mul $t0, $t0, $t1
	sw $t0, -7760($fp)
	lw $t0, -7760($fp)
	lw $t1, -7752($fp)
	add $t0, $t0, $t1
	sw $t0, -7764($fp)
	lw $t0, -7764($fp)
	lw $t1, 0($t0)
	sw $t1, -7768($fp)
	lw $t0, -7768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -7772($fp)
	li $t0, 4
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
	lw $t0, -7788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -7792($fp)
	li $t0, 5
	sw $t0, -7796($fp)
	li $t0, 4
	lw $t1, -7796($fp)
	mul $t0, $t0, $t1
	sw $t0, -7800($fp)
	lw $t0, -7800($fp)
	lw $t1, -7792($fp)
	add $t0, $t0, $t1
	sw $t0, -7804($fp)
	lw $t0, -7804($fp)
	lw $t1, 0($t0)
	sw $t1, -7808($fp)
	lw $t0, -7808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -7812($fp)
	li $t0, 6
	sw $t0, -7816($fp)
	li $t0, 4
	lw $t1, -7816($fp)
	mul $t0, $t0, $t1
	sw $t0, -7820($fp)
	lw $t0, -7820($fp)
	lw $t1, -7812($fp)
	add $t0, $t0, $t1
	sw $t0, -7824($fp)
	lw $t0, -7824($fp)
	lw $t1, 0($t0)
	sw $t1, -7828($fp)
	lw $t0, -7828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -7832($fp)
	li $t0, 7
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
	lw $t0, -1344($fp)
	sw $t0, -7852($fp)
	lw $t0, -7852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1356($fp)
	sw $t0, -7856($fp)
	lw $t0, -7856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1368($fp)
	sw $t0, -7860($fp)
	lw $t0, -7860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1380($fp)
	sw $t0, -7864($fp)
	lw $t0, -7864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1392($fp)
	sw $t0, -7868($fp)
	lw $t0, -7868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -7872($fp)
	li $t0, 0
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
	addi $t0, $fp, -144
	sw $t0, -7892($fp)
	li $t0, 1
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
	addi $t0, $fp, -144
	sw $t0, -7912($fp)
	li $t0, 2
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
	lw $t0, -1476($fp)
	sw $t0, -7932($fp)
	lw $t0, -7932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1488($fp)
	sw $t0, -7936($fp)
	lw $t0, -7936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -7940($fp)
	li $t0, 0
	sw $t0, -7944($fp)
	li $t0, 4
	lw $t1, -7944($fp)
	mul $t0, $t0, $t1
	sw $t0, -7948($fp)
	lw $t0, -7948($fp)
	lw $t1, -7940($fp)
	add $t0, $t0, $t1
	sw $t0, -7952($fp)
	lw $t0, -7952($fp)
	lw $t1, 0($t0)
	sw $t1, -7956($fp)
	lw $t0, -7956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -7960($fp)
	li $t0, 1
	sw $t0, -7964($fp)
	li $t0, 4
	lw $t1, -7964($fp)
	mul $t0, $t0, $t1
	sw $t0, -7968($fp)
	lw $t0, -7968($fp)
	lw $t1, -7960($fp)
	add $t0, $t0, $t1
	sw $t0, -7972($fp)
	lw $t0, -7972($fp)
	lw $t1, 0($t0)
	sw $t1, -7976($fp)
	lw $t0, -7976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -7980($fp)
	li $t0, 2
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
	lw $t0, -7996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -8000($fp)
	li $t0, 3
	sw $t0, -8004($fp)
	li $t0, 4
	lw $t1, -8004($fp)
	mul $t0, $t0, $t1
	sw $t0, -8008($fp)
	lw $t0, -8008($fp)
	lw $t1, -8000($fp)
	add $t0, $t0, $t1
	sw $t0, -8012($fp)
	lw $t0, -8012($fp)
	lw $t1, 0($t0)
	sw $t1, -8016($fp)
	lw $t0, -8016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1596($fp)
	sw $t0, -8020($fp)
	lw $t0, -8020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1608($fp)
	sw $t0, -8024($fp)
	lw $t0, -8024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -8028($fp)
	li $t0, 0
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
	addi $t0, $fp, -200
	sw $t0, -8048($fp)
	li $t0, 1
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
	addi $t0, $fp, -200
	sw $t0, -8068($fp)
	li $t0, 2
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
	addi $t0, $fp, -200
	sw $t0, -8088($fp)
	li $t0, 3
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
	addi $t0, $fp, -200
	sw $t0, -8108($fp)
	li $t0, 4
	sw $t0, -8112($fp)
	li $t0, 4
	lw $t1, -8112($fp)
	mul $t0, $t0, $t1
	sw $t0, -8116($fp)
	lw $t0, -8116($fp)
	lw $t1, -8108($fp)
	add $t0, $t0, $t1
	sw $t0, -8120($fp)
	lw $t0, -8120($fp)
	lw $t1, 0($t0)
	sw $t1, -8124($fp)
	lw $t0, -8124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -8128($fp)
	li $t0, 5
	sw $t0, -8132($fp)
	li $t0, 4
	lw $t1, -8132($fp)
	mul $t0, $t0, $t1
	sw $t0, -8136($fp)
	lw $t0, -8136($fp)
	lw $t1, -8128($fp)
	add $t0, $t0, $t1
	sw $t0, -8140($fp)
	lw $t0, -8140($fp)
	lw $t1, 0($t0)
	sw $t1, -8144($fp)
	lw $t0, -8144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -8148($fp)
	li $t0, 6
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
	lw $t0, -8164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -8168($fp)
	li $t0, 7
	sw $t0, -8172($fp)
	li $t0, 4
	lw $t1, -8172($fp)
	mul $t0, $t0, $t1
	sw $t0, -8176($fp)
	lw $t0, -8176($fp)
	lw $t1, -8168($fp)
	add $t0, $t0, $t1
	sw $t0, -8180($fp)
	lw $t0, -8180($fp)
	lw $t1, 0($t0)
	sw $t1, -8184($fp)
	lw $t0, -8184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -8188($fp)
	li $t0, 8
	sw $t0, -8192($fp)
	li $t0, 4
	lw $t1, -8192($fp)
	mul $t0, $t0, $t1
	sw $t0, -8196($fp)
	lw $t0, -8196($fp)
	lw $t1, -8188($fp)
	add $t0, $t0, $t1
	sw $t0, -8200($fp)
	lw $t0, -8200($fp)
	lw $t1, 0($t0)
	sw $t1, -8204($fp)
	lw $t0, -8204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -8208($fp)
	li $t0, 9
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
	lw $t0, -8224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1860($fp)
	sw $t0, -8228($fp)
	lw $t0, -8228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1872($fp)
	sw $t0, -8232($fp)
	lw $t0, -8232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1884($fp)
	sw $t0, -8236($fp)
	lw $t0, -8236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -204
	sw $t0, -8240($fp)
	li $t0, 0
	sw $t0, -8244($fp)
	li $t0, 4
	lw $t1, -8244($fp)
	mul $t0, $t0, $t1
	sw $t0, -8248($fp)
	lw $t0, -8248($fp)
	lw $t1, -8240($fp)
	add $t0, $t0, $t1
	sw $t0, -8252($fp)
	lw $t0, -8252($fp)
	lw $t1, 0($t0)
	sw $t1, -8256($fp)
	lw $t0, -8256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1920($fp)
	sw $t0, -8260($fp)
	lw $t0, -8260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -232
	sw $t0, -8264($fp)
	li $t0, 0
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
	addi $t0, $fp, -232
	sw $t0, -8284($fp)
	li $t0, 1
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
	addi $t0, $fp, -232
	sw $t0, -8304($fp)
	li $t0, 2
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
	addi $t0, $fp, -232
	sw $t0, -8324($fp)
	li $t0, 3
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
	addi $t0, $fp, -232
	sw $t0, -8344($fp)
	li $t0, 4
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
	addi $t0, $fp, -232
	sw $t0, -8364($fp)
	li $t0, 5
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
	addi $t0, $fp, -232
	sw $t0, -8384($fp)
	li $t0, 6
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
	lw $t0, -2100($fp)
	sw $t0, -8404($fp)
	lw $t0, -8404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2112($fp)
	sw $t0, -8408($fp)
	lw $t0, -8408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2124($fp)
	sw $t0, -8412($fp)
	lw $t0, -8412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -264
	sw $t0, -8416($fp)
	li $t0, 0
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
	addi $t0, $fp, -264
	sw $t0, -8436($fp)
	li $t0, 1
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
	addi $t0, $fp, -264
	sw $t0, -8456($fp)
	li $t0, 2
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
	addi $t0, $fp, -264
	sw $t0, -8476($fp)
	li $t0, 3
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
	addi $t0, $fp, -264
	sw $t0, -8496($fp)
	li $t0, 4
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
	addi $t0, $fp, -264
	sw $t0, -8516($fp)
	li $t0, 5
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
	addi $t0, $fp, -264
	sw $t0, -8536($fp)
	li $t0, 6
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
	addi $t0, $fp, -264
	sw $t0, -8556($fp)
	li $t0, 7
	sw $t0, -8560($fp)
	li $t0, 4
	lw $t1, -8560($fp)
	mul $t0, $t0, $t1
	sw $t0, -8564($fp)
	lw $t0, -8564($fp)
	lw $t1, -8556($fp)
	add $t0, $t0, $t1
	sw $t0, -8568($fp)
	lw $t0, -8568($fp)
	lw $t1, 0($t0)
	sw $t1, -8572($fp)
	lw $t0, -8572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -268
	sw $t0, -8576($fp)
	li $t0, 0
	sw $t0, -8580($fp)
	li $t0, 4
	lw $t1, -8580($fp)
	mul $t0, $t0, $t1
	sw $t0, -8584($fp)
	lw $t0, -8584($fp)
	lw $t1, -8576($fp)
	add $t0, $t0, $t1
	sw $t0, -8588($fp)
	lw $t0, -8588($fp)
	lw $t1, 0($t0)
	sw $t1, -8592($fp)
	lw $t0, -8592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2352($fp)
	sw $t0, -8596($fp)
	lw $t0, -8596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -8600($fp)
	li $t0, 0
	sw $t0, -8604($fp)
	li $t0, 7975
	sw $t0, -8608($fp)
	lw $t0, -2112($fp)
	sw $t0, -8612($fp)
	lw $t0, -8608($fp)
	lw $t1, -8612($fp)
	add $t0, $t0, $t1
	sw $t0, -8616($fp)
	lw $t0, -1344($fp)
	sw $t0, -8620($fp)
	lw $t1, -8616($fp)
	lw $t2, -8620($fp)
	bgt $t1, $t2, label418
	j label417
label418:
	lw $t0, -1476($fp)
	sw $t0, -8624($fp)
	li $t0, 0
	lw $t1, -8624($fp)
	sub $t0, $t0, $t1
	sw $t0, -8628($fp)
	lw $t1, -8628($fp)
	li $t2, 0
	bne $t1, $t2, label416
	j label417
label416:
	li $t0, 1
	sw $t0, -8604($fp)
label417:
	li $t0, 4
	lw $t1, -8604($fp)
	mul $t0, $t0, $t1
	sw $t0, -8632($fp)
	lw $t0, -8632($fp)
	lw $t1, -8600($fp)
	add $t0, $t0, $t1
	sw $t0, -8636($fp)
	lw $t0, -8636($fp)
	lw $t1, 0($t0)
	sw $t1, -8640($fp)
	lw $ra, -4($fp)
	lw $v0, -8640($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -720
	li $t0, 22020
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	li $t0, 56708
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	li $t0, 29286
	sw $t0, -60($fp)
	addi $t0, $fp, -32
	sw $t0, -64($fp)
	li $t0, 0
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
	li $t0, 55463
	sw $t0, -84($fp)
	addi $t0, $fp, -32
	sw $t0, -88($fp)
	li $t0, 1
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
	li $t0, 5236
	sw $t0, -108($fp)
	addi $t0, $fp, -32
	sw $t0, -112($fp)
	li $t0, 2
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
	li $t0, 34036
	sw $t0, -132($fp)
	addi $t0, $fp, -32
	sw $t0, -136($fp)
	li $t0, 3
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
	li $t0, 8997
	sw $t0, -156($fp)
	addi $t0, $fp, -32
	sw $t0, -160($fp)
	li $t0, 4
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
	li $t0, 54665
	sw $t0, -180($fp)
	addi $t0, $fp, -32
	sw $t0, -184($fp)
	li $t0, 5
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
	li $t0, 4154
	sw $t0, -204($fp)
	addi $t0, $fp, -32
	sw $t0, -208($fp)
	li $t0, 6
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
	li $t0, 6226
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	li $t0, 8191
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	li $t0, 0
	sw $t0, -252($fp)
	addi $t0, $fp, -32
	sw $t0, -256($fp)
	lw $t0, -244($fp)
	sw $t0, -260($fp)
	li $t0, 4
	lw $t1, -260($fp)
	mul $t0, $t0, $t1
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	lw $t1, -256($fp)
	add $t0, $t0, $t1
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	lw $t1, 0($t0)
	sw $t1, -272($fp)
	addi $t0, $fp, -32
	sw $t0, -276($fp)
	lw $t0, 8($fp)
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
	lw $t0, -272($fp)
	lw $t1, -292($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -296($fp)
	lw $t0, -244($fp)
	sw $t0, -300($fp)
	lw $t0, -296($fp)
	lw $t1, -300($fp)
	add $t0, $t0, $t1
	sw $t0, -304($fp)
	li $t0, 21601
	sw $t0, -308($fp)
	li $t0, 39165
	sw $t0, -312($fp)
	lw $t0, -308($fp)
	lw $t1, -312($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -316($fp)
	addi $t0, $fp, -32
	sw $t0, -320($fp)
	li $t0, 3
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
	lw $t0, -316($fp)
	lw $t1, -336($fp)
	add $t0, $t0, $t1
	sw $t0, -340($fp)
	lw $t1, -304($fp)
	lw $t2, -340($fp)
	blt $t1, $t2, label419
	j label420
label419:
	li $t0, 1
	sw $t0, -252($fp)
label420:
	lw $t0, -232($fp)
	sw $t0, -344($fp)
	li $t0, 0
	sw $t0, -348($fp)
	li $t0, 29151
	sw $t0, -352($fp)
	li $t0, 0
	lw $t1, -352($fp)
	sub $t0, $t0, $t1
	sw $t0, -356($fp)
	lw $t0, -40($fp)
	sw $t0, -360($fp)
	lw $t1, -356($fp)
	lw $t2, -360($fp)
	bge $t1, $t2, label421
	j label422
label421:
	li $t0, 1
	sw $t0, -348($fp)
label422:
	li $t0, 0
	sw $t0, -364($fp)
	li $t0, 0
	sw $t0, -368($fp)
	li $t0, 31487
	sw $t0, -372($fp)
	lw $t1, -372($fp)
	li $t2, 0
	bne $t1, $t2, label426
	j label425
label425:
	li $t0, 1
	sw $t0, -368($fp)
label426:
	li $t0, 45126
	sw $t0, -376($fp)
	lw $t1, -368($fp)
	lw $t2, -376($fp)
	bgt $t1, $t2, label423
	j label424
label423:
	li $t0, 1
	sw $t0, -364($fp)
label424:
	addi $sp, $sp, -4
	lw $t0, -348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -364($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -380($fp)
	addi $sp, $sp, 12
	lw $t0, -380($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -384($fp)
	li $t0, 0
	sw $t0, -388($fp)
	li $t0, 0
	sw $t0, -392($fp)
	lw $t0, -244($fp)
	sw $t0, -396($fp)
	li $t0, 0
	lw $t1, -396($fp)
	sub $t0, $t0, $t1
	sw $t0, -400($fp)
	li $t0, 0
	lw $t1, -400($fp)
	sub $t0, $t0, $t1
	sw $t0, -404($fp)
	lw $t1, -404($fp)
	li $t2, 0
	bne $t1, $t2, label430
	j label429
label429:
	li $t0, 1
	sw $t0, -392($fp)
label430:
	addi $t0, $fp, -32
	sw $t0, -408($fp)
	lw $t0, -232($fp)
	sw $t0, -412($fp)
	li $t0, 4
	lw $t1, -412($fp)
	mul $t0, $t0, $t1
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	lw $t1, -408($fp)
	add $t0, $t0, $t1
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	lw $t1, 0($t0)
	sw $t1, -424($fp)
	li $t0, 10588
	sw $t0, -428($fp)
	lw $t0, -424($fp)
	lw $t1, -428($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -432($fp)
	lw $t0, 4($fp)
	sw $t0, -436($fp)
	lw $t0, -432($fp)
	lw $t1, -436($fp)
	mul $t0, $t0, $t1
	sw $t0, -440($fp)
	lw $t1, -392($fp)
	lw $t2, -440($fp)
	beq $t1, $t2, label427
	j label428
label427:
	li $t0, 1
	sw $t0, -388($fp)
label428:
	li $t0, 0
	sw $t0, -444($fp)
	li $t0, 0
	sw $t0, -448($fp)
	li $t0, 19827
	sw $t0, -452($fp)
	lw $t1, -452($fp)
	li $t2, 0
	bne $t1, $t2, label434
	j label433
label433:
	li $t0, 1
	sw $t0, -448($fp)
label434:
	li $t0, 3399
	sw $t0, -456($fp)
	lw $t0, -448($fp)
	lw $t1, -456($fp)
	add $t0, $t0, $t1
	sw $t0, -460($fp)
	li $t0, 0
	sw $t0, -464($fp)
	li $t0, 0
	sw $t0, -468($fp)
	li $t0, 42700
	sw $t0, -472($fp)
	lw $t1, -472($fp)
	li $t2, 0
	bne $t1, $t2, label438
	j label437
label437:
	li $t0, 1
	sw $t0, -468($fp)
label438:
	li $t0, 13801
	sw $t0, -476($fp)
	lw $t1, -468($fp)
	lw $t2, -476($fp)
	bgt $t1, $t2, label435
	j label436
label435:
	li $t0, 1
	sw $t0, -464($fp)
label436:
	addi $sp, $sp, -4
	lw $t0, -460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -464($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -480($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -480($fp)
	sub $t0, $t0, $t1
	sw $t0, -484($fp)
	li $t0, 0
	lw $t1, -484($fp)
	sub $t0, $t0, $t1
	sw $t0, -488($fp)
	li $t0, 0
	sw $t0, -492($fp)
	addi $t0, $fp, -32
	sw $t0, -496($fp)
	lw $t0, -232($fp)
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
	lw $t1, -512($fp)
	li $t2, 0
	bne $t1, $t2, label440
	j label439
label439:
	li $t0, 1
	sw $t0, -492($fp)
label440:
	lw $t0, -488($fp)
	lw $t1, -492($fp)
	sub $t0, $t0, $t1
	sw $t0, -516($fp)
	li $t0, 28259
	sw $t0, -520($fp)
	lw $t0, -52($fp)
	sw $t0, -524($fp)
	lw $t0, -520($fp)
	lw $t1, -524($fp)
	mul $t0, $t0, $t1
	sw $t0, -528($fp)
	lw $t1, -516($fp)
	lw $t2, -528($fp)
	blt $t1, $t2, label431
	j label432
label431:
	li $t0, 1
	sw $t0, -444($fp)
label432:
	li $t0, 0
	sw $t0, -532($fp)
	addi $t0, $fp, -32
	sw $t0, -536($fp)
	lw $t0, -40($fp)
	sw $t0, -540($fp)
	lw $t0, -232($fp)
	sw $t0, -544($fp)
	lw $t0, -540($fp)
	lw $t1, -544($fp)
	add $t0, $t0, $t1
	sw $t0, -548($fp)
	li $t0, 4
	lw $t1, -548($fp)
	mul $t0, $t0, $t1
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	lw $t1, -536($fp)
	add $t0, $t0, $t1
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	lw $t1, 0($t0)
	sw $t1, -560($fp)
	li $t0, 0
	lw $t1, -560($fp)
	sub $t0, $t0, $t1
	sw $t0, -564($fp)
	lw $t1, -564($fp)
	li $t2, 0
	bne $t1, $t2, label442
	j label441
label441:
	li $t0, 1
	sw $t0, -532($fp)
label442:
	lw $t0, -40($fp)
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -52($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -576($fp)
	li $t0, 0
	sw $t0, -580($fp)
	li $t0, 4
	lw $t1, -580($fp)
	mul $t0, $t0, $t1
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	lw $t1, -576($fp)
	add $t0, $t0, $t1
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	lw $t1, 0($t0)
	sw $t1, -592($fp)
	lw $t0, -592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -596($fp)
	li $t0, 1
	sw $t0, -600($fp)
	li $t0, 4
	lw $t1, -600($fp)
	mul $t0, $t0, $t1
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	lw $t1, -596($fp)
	add $t0, $t0, $t1
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	lw $t1, 0($t0)
	sw $t1, -612($fp)
	lw $t0, -612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -616($fp)
	li $t0, 2
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
	addi $t0, $fp, -32
	sw $t0, -636($fp)
	li $t0, 3
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
	addi $t0, $fp, -32
	sw $t0, -656($fp)
	li $t0, 4
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
	addi $t0, $fp, -32
	sw $t0, -676($fp)
	li $t0, 5
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
	li $t0, 6
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
	lw $t0, -232($fp)
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -244($fp)
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -52($fp)
	sw $t0, -724($fp)
	lw $ra, -4($fp)
	lw $v0, -724($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1444
	li $t0, 2041
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	li $t0, 35453
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	li $t0, 22501
	sw $t0, -40($fp)
	addi $t0, $fp, -12
	sw $t0, -44($fp)
	li $t0, 0
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
	li $t0, 31906
	sw $t0, -64($fp)
	addi $t0, $fp, -12
	sw $t0, -68($fp)
	li $t0, 1
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
	li $t0, 27123
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	li $t0, 2108
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	li $t0, 39881
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	lw $t0, -20($fp)
	sw $t0, -124($fp)
	lw $t1, -124($fp)
	li $t2, 0
	bne $t1, $t2, label444
	j label443
label443:
	li $t0, 49143
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	li $t0, 0
	sw $t0, -140($fp)
	lw $t0, -104($fp)
	sw $t0, -144($fp)
	lw $t1, -144($fp)
	li $t2, 0
	bne $t1, $t2, label449
	j label447
label449:
	li $t0, 58816
	sw $t0, -148($fp)
	lw $t1, -148($fp)
	li $t2, 0
	bne $t1, $t2, label448
	j label447
label448:
	lw $t0, -104($fp)
	sw $t0, -152($fp)
	lw $t1, -152($fp)
	li $t2, 0
	bne $t1, $t2, label446
	j label447
label446:
	li $t0, 1
	sw $t0, -140($fp)
label447:
	lw $t0, -140($fp)
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -156($fp)
	lw $t0, -92($fp)
	sw $t0, -160($fp)
	li $t0, 0
	sw $t0, -164($fp)
	lw $t0, -116($fp)
	sw $t0, -168($fp)
	lw $t0, 4($fp)
	sw $t0, -172($fp)
	lw $t0, -168($fp)
	lw $t1, -172($fp)
	mul $t0, $t0, $t1
	sw $t0, -176($fp)
	li $t0, 3631
	sw $t0, -180($fp)
	lw $t0, -32($fp)
	sw $t0, -184($fp)
	lw $t0, -180($fp)
	lw $t1, -184($fp)
	mul $t0, $t0, $t1
	sw $t0, -188($fp)
	li $t0, 39070
	sw $t0, -192($fp)
	lw $t0, -188($fp)
	lw $t1, -192($fp)
	mul $t0, $t0, $t1
	sw $t0, -196($fp)
	lw $t1, -176($fp)
	lw $t2, -196($fp)
	beq $t1, $t2, label452
	j label451
label452:
	li $t0, 0
	sw $t0, -200($fp)
	lw $t0, -132($fp)
	sw $t0, -204($fp)
	li $t0, 37667
	sw $t0, -208($fp)
	lw $t0, -204($fp)
	lw $t1, -208($fp)
	mul $t0, $t0, $t1
	sw $t0, -212($fp)
	lw $t0, -92($fp)
	sw $t0, -216($fp)
	lw $t1, -212($fp)
	lw $t2, -216($fp)
	bne $t1, $t2, label453
	j label454
label453:
	li $t0, 1
	sw $t0, -200($fp)
label454:
	li $t0, 0
	sw $t0, -220($fp)
	lw $t0, -132($fp)
	sw $t0, -224($fp)
	li $t0, 64053
	sw $t0, -228($fp)
	lw $t1, -224($fp)
	lw $t2, -228($fp)
	beq $t1, $t2, label455
	j label456
label455:
	li $t0, 1
	sw $t0, -220($fp)
label456:
	addi $sp, $sp, -4
	lw $t0, -200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -220($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -232($fp)
	addi $sp, $sp, 12
	lw $t1, -232($fp)
	li $t2, 0
	bne $t1, $t2, label450
	j label451
label450:
	li $t0, 1
	sw $t0, -164($fp)
label451:
	lw $t0, -132($fp)
	sw $t0, -236($fp)
	j label445
label444:
label457:
	lw $t0, -32($fp)
	sw $t0, -240($fp)
	li $t0, 0
	lw $t1, -240($fp)
	sub $t0, $t0, $t1
	sw $t0, -244($fp)
	lw $t1, -244($fp)
	li $t2, 0
	bne $t1, $t2, label459
	j label458
label458:
	li $t0, 0
	sw $t0, -248($fp)
	lw $t0, -20($fp)
	sw $t0, -252($fp)
	li $t0, 53182
	sw $t0, -256($fp)
	lw $t1, -252($fp)
	lw $t2, -256($fp)
	blt $t1, $t2, label460
	j label462
label462:
	lw $t0, -92($fp)
	sw $t0, -260($fp)
	lw $t1, -260($fp)
	li $t2, 0
	bne $t1, $t2, label460
	j label461
label460:
	li $t0, 1
	sw $t0, -248($fp)
label461:
	li $t0, 48067
	sw $t0, -264($fp)
	addi $sp, $sp, -4
	lw $t0, -248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -264($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -268($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -268($fp)
	sub $t0, $t0, $t1
	sw $t0, -272($fp)
	li $t0, 41821
	sw $t0, -276($fp)
	j label457
label459:
label445:
label463:
	li $t0, 54294
	sw $t0, -280($fp)
	li $t0, 0
	lw $t1, -280($fp)
	sub $t0, $t0, $t1
	sw $t0, -284($fp)
	li $t0, 0
	sw $t0, -288($fp)
	li $t0, 63422
	sw $t0, -292($fp)
	lw $t1, -292($fp)
	li $t2, 0
	bne $t1, $t2, label466
	j label467
label466:
	li $t0, 1
	sw $t0, -288($fp)
label467:
	li $t0, 0
	sw $t0, -296($fp)
	li $t0, 61374
	sw $t0, -300($fp)
	lw $t1, -300($fp)
	li $t2, 0
	bne $t1, $t2, label469
	j label468
label468:
	li $t0, 1
	sw $t0, -296($fp)
label469:
	addi $sp, $sp, -4
	lw $t0, -288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -296($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -304($fp)
	addi $sp, $sp, 12
	lw $t0, -284($fp)
	lw $t1, -304($fp)
	add $t0, $t0, $t1
	sw $t0, -308($fp)
	lw $t1, -308($fp)
	li $t2, 0
	bne $t1, $t2, label464
	j label465
label464:
	lw $t0, -116($fp)
	sw $t0, -312($fp)
	lw $ra, -4($fp)
	lw $v0, -312($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label463
label465:
	li $t0, 27923
	sw $t0, -356($fp)
	addi $t0, $fp, -336
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
	li $t0, 7151
	sw $t0, -380($fp)
	addi $t0, $fp, -336
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
	li $t0, 11384
	sw $t0, -404($fp)
	addi $t0, $fp, -336
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
	li $t0, 59410
	sw $t0, -428($fp)
	addi $t0, $fp, -336
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
	li $t0, 52277
	sw $t0, -452($fp)
	addi $t0, $fp, -336
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
	li $t0, 40535
	sw $t0, -476($fp)
	addi $t0, $fp, -336
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
	li $t0, 4462
	sw $t0, -500($fp)
	addi $t0, $fp, -352
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
	li $t0, 29441
	sw $t0, -524($fp)
	addi $t0, $fp, -352
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
	li $t0, 54337
	sw $t0, -548($fp)
	addi $t0, $fp, -352
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
	li $t0, 24289
	sw $t0, -572($fp)
	addi $t0, $fp, -352
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
	addi $t0, $fp, -336
	sw $t0, -596($fp)
	li $t0, 0
	sw $t0, -600($fp)
	li $t0, 4
	lw $t1, -600($fp)
	mul $t0, $t0, $t1
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	lw $t1, -596($fp)
	add $t0, $t0, $t1
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	lw $t1, 0($t0)
	sw $t1, -612($fp)
	lw $t0, -612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -336
	sw $t0, -616($fp)
	li $t0, 1
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
	addi $t0, $fp, -336
	sw $t0, -636($fp)
	li $t0, 2
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
	addi $t0, $fp, -336
	sw $t0, -656($fp)
	li $t0, 3
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
	addi $t0, $fp, -336
	sw $t0, -676($fp)
	li $t0, 4
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
	addi $t0, $fp, -336
	sw $t0, -696($fp)
	li $t0, 5
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
	addi $t0, $fp, -352
	sw $t0, -716($fp)
	li $t0, 0
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
	addi $t0, $fp, -352
	sw $t0, -736($fp)
	li $t0, 1
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
	addi $t0, $fp, -352
	sw $t0, -756($fp)
	li $t0, 2
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
	addi $t0, $fp, -352
	sw $t0, -776($fp)
	li $t0, 3
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
	li $t0, 0
	sw $t0, -796($fp)
	li $t0, 32841
	sw $t0, -800($fp)
	lw $t0, -20($fp)
	sw $t0, -804($fp)
	li $t0, 0
	lw $t1, -804($fp)
	sub $t0, $t0, $t1
	sw $t0, -808($fp)
	lw $t1, -800($fp)
	lw $t2, -808($fp)
	beq $t1, $t2, label472
	j label471
label472:
	li $t0, 0
	sw $t0, -812($fp)
	addi $t0, $fp, -352
	sw $t0, -816($fp)
	li $t0, 2
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
	lw $t1, -832($fp)
	li $t2, 0
	bne $t1, $t2, label474
	j label473
label473:
	li $t0, 1
	sw $t0, -812($fp)
label474:
	li $t0, 2758
	sw $t0, -836($fp)
	li $t0, 39562
	sw $t0, -840($fp)
	lw $t0, -836($fp)
	lw $t1, -840($fp)
	add $t0, $t0, $t1
	sw $t0, -844($fp)
	lw $t1, -812($fp)
	lw $t2, -844($fp)
	ble $t1, $t2, label470
	j label471
label470:
	li $t0, 1
	sw $t0, -796($fp)
label471:
	lw $ra, -4($fp)
	lw $v0, -796($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -336
	sw $t0, -848($fp)
	li $t0, 0
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
	addi $t0, $fp, -336
	sw $t0, -868($fp)
	li $t0, 1
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
	addi $t0, $fp, -336
	sw $t0, -888($fp)
	li $t0, 2
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
	addi $t0, $fp, -336
	sw $t0, -908($fp)
	li $t0, 3
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
	addi $t0, $fp, -336
	sw $t0, -928($fp)
	li $t0, 4
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
	addi $t0, $fp, -336
	sw $t0, -948($fp)
	li $t0, 5
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
	addi $t0, $fp, -352
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
	addi $t0, $fp, -352
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
	addi $t0, $fp, -352
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
	addi $t0, $fp, -352
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
	lw $t0, -32($fp)
	sw $t0, -1048($fp)
	lw $t0, 4($fp)
	sw $t0, -1052($fp)
	lw $t0, -1048($fp)
	lw $t1, -1052($fp)
	add $t0, $t0, $t1
	sw $t0, -1056($fp)
	lw $ra, -4($fp)
	lw $v0, -1056($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -336
	sw $t0, -1060($fp)
	li $t0, 0
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
	addi $t0, $fp, -336
	sw $t0, -1080($fp)
	li $t0, 1
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
	addi $t0, $fp, -336
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
	lw $t0, -1116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -336
	sw $t0, -1120($fp)
	li $t0, 3
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
	addi $t0, $fp, -336
	sw $t0, -1140($fp)
	li $t0, 4
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
	addi $t0, $fp, -336
	sw $t0, -1160($fp)
	li $t0, 5
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
	addi $t0, $fp, -352
	sw $t0, -1180($fp)
	li $t0, 0
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
	addi $t0, $fp, -352
	sw $t0, -1200($fp)
	li $t0, 1
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
	addi $t0, $fp, -352
	sw $t0, -1220($fp)
	li $t0, 2
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
	addi $t0, $fp, -352
	sw $t0, -1240($fp)
	li $t0, 3
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
	addi $t0, $fp, -352
	sw $t0, -1260($fp)
	li $t0, 2
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
	sw $t0, -1280($fp)
	addi $t0, $fp, -336
	sw $t0, -1284($fp)
	lw $t0, -104($fp)
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
	lw $t1, -1300($fp)
	li $t2, 0
	bne $t1, $t2, label476
	j label475
label475:
	li $t0, 1
	sw $t0, -1280($fp)
label476:
	lw $t0, -1276($fp)
	lw $t1, -1280($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1304($fp)
	lw $ra, -4($fp)
	lw $v0, -1304($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -1308($fp)
	li $t0, 32581
	sw $t0, -1312($fp)
	li $t0, 0
	sw $t0, -1316($fp)
	li $t0, 0
	sw $t0, -1320($fp)
	lw $t0, -104($fp)
	sw $t0, -1324($fp)
	lw $t1, -1324($fp)
	li $t2, 0
	bne $t1, $t2, label482
	j label481
label481:
	li $t0, 1
	sw $t0, -1320($fp)
label482:
	li $t0, 0
	lw $t1, -1320($fp)
	sub $t0, $t0, $t1
	sw $t0, -1328($fp)
	li $t0, 13489
	sw $t0, -1332($fp)
	lw $t0, 4($fp)
	sw $t0, -1336($fp)
	lw $t0, -1332($fp)
	lw $t1, -1336($fp)
	sub $t0, $t0, $t1
	sw $t0, -1340($fp)
	lw $t1, -1328($fp)
	lw $t2, -1340($fp)
	bgt $t1, $t2, label479
	j label480
label479:
	li $t0, 1
	sw $t0, -1316($fp)
label480:
	lw $t1, -1312($fp)
	lw $t2, -1316($fp)
	bne $t1, $t2, label477
	j label478
label477:
	li $t0, 1
	sw $t0, -1308($fp)
label478:
	lw $t0, -20($fp)
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -32($fp)
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -1352($fp)
	li $t0, 0
	sw $t0, -1356($fp)
	li $t0, 4
	lw $t1, -1356($fp)
	mul $t0, $t0, $t1
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	lw $t1, -1352($fp)
	add $t0, $t0, $t1
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	lw $t1, 0($t0)
	sw $t1, -1368($fp)
	lw $t0, -1368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -1372($fp)
	li $t0, 1
	sw $t0, -1376($fp)
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
	lw $t0, -1388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -92($fp)
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -104($fp)
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -116($fp)
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1404($fp)
	addi $t0, $fp, -12
	sw $t0, -1408($fp)
	li $t0, 0
	sw $t0, -1412($fp)
	li $t0, 0
	sw $t0, -1416($fp)
	lw $t0, -32($fp)
	sw $t0, -1420($fp)
	li $t0, 34951
	sw $t0, -1424($fp)
	lw $t1, -1420($fp)
	lw $t2, -1424($fp)
	bne $t1, $t2, label487
	j label488
label487:
	li $t0, 1
	sw $t0, -1416($fp)
label488:
	lw $t0, -116($fp)
	sw $t0, -1428($fp)
	lw $t1, -1416($fp)
	lw $t2, -1428($fp)
	beq $t1, $t2, label485
	j label486
label485:
	li $t0, 1
	sw $t0, -1412($fp)
label486:
	li $t0, 4
	lw $t1, -1412($fp)
	mul $t0, $t0, $t1
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	lw $t1, -1408($fp)
	add $t0, $t0, $t1
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	lw $t1, 0($t0)
	sw $t1, -1440($fp)
	li $t0, 0
	sw $t0, -1444($fp)
	li $t0, 36212
	sw $t0, -1448($fp)
	lw $t1, -1448($fp)
	li $t2, 0
	bne $t1, $t2, label490
	j label489
label489:
	li $t0, 1
	sw $t0, -1444($fp)
label490:
	lw $t1, -1440($fp)
	lw $t2, -1444($fp)
	bgt $t1, $t2, label483
	j label484
label483:
	li $t0, 1
	sw $t0, -1404($fp)
label484:
	lw $ra, -4($fp)
	lw $v0, -1404($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -7212
	li $t0, 52560
	sw $t0, -144($fp)
	addi $t0, $fp, -12
	sw $t0, -148($fp)
	li $t0, 0
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
	li $t0, 33468
	sw $t0, -168($fp)
	addi $t0, $fp, -12
	sw $t0, -172($fp)
	li $t0, 1
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
	li $t0, 8343
	sw $t0, -192($fp)
	addi $t0, $fp, -52
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
	li $t0, 35091
	sw $t0, -216($fp)
	addi $t0, $fp, -52
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
	li $t0, 21114
	sw $t0, -240($fp)
	addi $t0, $fp, -52
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
	li $t0, 50164
	sw $t0, -264($fp)
	addi $t0, $fp, -52
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
	li $t0, 23849
	sw $t0, -288($fp)
	addi $t0, $fp, -52
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
	li $t0, 16952
	sw $t0, -312($fp)
	addi $t0, $fp, -52
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
	li $t0, 48051
	sw $t0, -336($fp)
	addi $t0, $fp, -52
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
	li $t0, 51772
	sw $t0, -360($fp)
	addi $t0, $fp, -52
	sw $t0, -364($fp)
	li $t0, 7
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
	li $t0, 24103
	sw $t0, -384($fp)
	addi $t0, $fp, -52
	sw $t0, -388($fp)
	li $t0, 8
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
	li $t0, 59435
	sw $t0, -408($fp)
	addi $t0, $fp, -52
	sw $t0, -412($fp)
	li $t0, 9
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
	li $t0, 45646
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	li $t0, 10844
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	li $t0, 34435
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	li $t0, 50108
	sw $t0, -468($fp)
	addi $t0, $fp, -76
	sw $t0, -472($fp)
	li $t0, 0
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -480($fp)
	lw $t0, -472($fp)
	lw $t1, -480($fp)
	add $t0, $t0, $t1
	sw $t0, -484($fp)
	lw $t0, -468($fp)
	lw $t1, -484($fp)
	sw $t0, 0($t1)
	lw $t0, -484($fp)
	lw $t1, 0($t0)
	sw $t1, -488($fp)
	li $t0, 40286
	sw $t0, -492($fp)
	addi $t0, $fp, -76
	sw $t0, -496($fp)
	li $t0, 1
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -504($fp)
	lw $t0, -496($fp)
	lw $t1, -504($fp)
	add $t0, $t0, $t1
	sw $t0, -508($fp)
	lw $t0, -492($fp)
	lw $t1, -508($fp)
	sw $t0, 0($t1)
	lw $t0, -508($fp)
	lw $t1, 0($t0)
	sw $t1, -512($fp)
	li $t0, 23236
	sw $t0, -516($fp)
	addi $t0, $fp, -76
	sw $t0, -520($fp)
	li $t0, 2
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -528($fp)
	lw $t0, -520($fp)
	lw $t1, -528($fp)
	add $t0, $t0, $t1
	sw $t0, -532($fp)
	lw $t0, -516($fp)
	lw $t1, -532($fp)
	sw $t0, 0($t1)
	lw $t0, -532($fp)
	lw $t1, 0($t0)
	sw $t1, -536($fp)
	li $t0, 8862
	sw $t0, -540($fp)
	addi $t0, $fp, -76
	sw $t0, -544($fp)
	li $t0, 3
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -552($fp)
	lw $t0, -544($fp)
	lw $t1, -552($fp)
	add $t0, $t0, $t1
	sw $t0, -556($fp)
	lw $t0, -540($fp)
	lw $t1, -556($fp)
	sw $t0, 0($t1)
	lw $t0, -556($fp)
	lw $t1, 0($t0)
	sw $t1, -560($fp)
	li $t0, 7591
	sw $t0, -564($fp)
	addi $t0, $fp, -76
	sw $t0, -568($fp)
	li $t0, 4
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -576($fp)
	lw $t0, -568($fp)
	lw $t1, -576($fp)
	add $t0, $t0, $t1
	sw $t0, -580($fp)
	lw $t0, -564($fp)
	lw $t1, -580($fp)
	sw $t0, 0($t1)
	lw $t0, -580($fp)
	lw $t1, 0($t0)
	sw $t1, -584($fp)
	li $t0, 40296
	sw $t0, -588($fp)
	addi $t0, $fp, -76
	sw $t0, -592($fp)
	li $t0, 5
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -600($fp)
	lw $t0, -592($fp)
	lw $t1, -600($fp)
	add $t0, $t0, $t1
	sw $t0, -604($fp)
	lw $t0, -588($fp)
	lw $t1, -604($fp)
	sw $t0, 0($t1)
	lw $t0, -604($fp)
	lw $t1, 0($t0)
	sw $t1, -608($fp)
	li $t0, 35192
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	sw $t0, -620($fp)
	li $t0, 10349
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -632($fp)
	li $t0, 14322
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	li $t0, 27893
	sw $t0, -648($fp)
	addi $t0, $fp, -92
	sw $t0, -652($fp)
	li $t0, 0
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
	li $t0, 40231
	sw $t0, -672($fp)
	addi $t0, $fp, -92
	sw $t0, -676($fp)
	li $t0, 1
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
	li $t0, 55993
	sw $t0, -696($fp)
	addi $t0, $fp, -92
	sw $t0, -700($fp)
	li $t0, 2
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
	li $t0, 60474
	sw $t0, -720($fp)
	addi $t0, $fp, -92
	sw $t0, -724($fp)
	li $t0, 3
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
	li $t0, 53721
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -752($fp)
	li $t0, 25408
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -764($fp)
	li $t0, 31151
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -776($fp)
	li $t0, 40745
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	sw $t0, -788($fp)
	li $t0, 58876
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	sw $t0, -800($fp)
	li $t0, 39494
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, -812($fp)
	li $t0, 10300
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -824($fp)
	li $t0, 14454
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -836($fp)
	li $t0, 24123
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -848($fp)
	li $t0, 34150
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -860($fp)
	li $t0, 31407
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	sw $t0, -872($fp)
	li $t0, 6638
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	sw $t0, -884($fp)
	li $t0, 20386
	sw $t0, -888($fp)
	addi $t0, $fp, -124
	sw $t0, -892($fp)
	li $t0, 0
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
	li $t0, 55510
	sw $t0, -912($fp)
	addi $t0, $fp, -124
	sw $t0, -916($fp)
	li $t0, 1
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
	li $t0, 537
	sw $t0, -936($fp)
	addi $t0, $fp, -124
	sw $t0, -940($fp)
	li $t0, 2
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
	li $t0, 497
	sw $t0, -960($fp)
	addi $t0, $fp, -124
	sw $t0, -964($fp)
	li $t0, 3
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
	li $t0, 819
	sw $t0, -984($fp)
	addi $t0, $fp, -124
	sw $t0, -988($fp)
	li $t0, 4
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
	li $t0, 34972
	sw $t0, -1008($fp)
	addi $t0, $fp, -124
	sw $t0, -1012($fp)
	li $t0, 5
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
	li $t0, 50605
	sw $t0, -1032($fp)
	addi $t0, $fp, -124
	sw $t0, -1036($fp)
	li $t0, 6
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1044($fp)
	lw $t0, -1036($fp)
	lw $t1, -1044($fp)
	add $t0, $t0, $t1
	sw $t0, -1048($fp)
	lw $t0, -1032($fp)
	lw $t1, -1048($fp)
	sw $t0, 0($t1)
	lw $t0, -1048($fp)
	lw $t1, 0($t0)
	sw $t1, -1052($fp)
	li $t0, 41105
	sw $t0, -1056($fp)
	addi $t0, $fp, -124
	sw $t0, -1060($fp)
	li $t0, 7
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1068($fp)
	lw $t0, -1060($fp)
	lw $t1, -1068($fp)
	add $t0, $t0, $t1
	sw $t0, -1072($fp)
	lw $t0, -1056($fp)
	lw $t1, -1072($fp)
	sw $t0, 0($t1)
	lw $t0, -1072($fp)
	lw $t1, 0($t0)
	sw $t1, -1076($fp)
	li $t0, 58208
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, -1088($fp)
	li $t0, 59467
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	sw $t0, -1100($fp)
	li $t0, 48696
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	sw $t0, -1112($fp)
	li $t0, 32969
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	sw $t0, -1124($fp)
	li $t0, 29124
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	sw $t0, -1136($fp)
	li $t0, 59045
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	sw $t0, -1148($fp)
	li $t0, 47291
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	sw $t0, -1160($fp)
	li $t0, 57017
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	sw $t0, -1172($fp)
	li $t0, 33741
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	sw $t0, -1184($fp)
	li $t0, 37748
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	sw $t0, -1196($fp)
	li $t0, 51955
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	sw $t0, -1208($fp)
	li $t0, 21926
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	sw $t0, -1220($fp)
	li $t0, 63156
	sw $t0, -1224($fp)
	addi $t0, $fp, -128
	sw $t0, -1228($fp)
	li $t0, 0
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1236($fp)
	lw $t0, -1228($fp)
	lw $t1, -1236($fp)
	add $t0, $t0, $t1
	sw $t0, -1240($fp)
	lw $t0, -1224($fp)
	lw $t1, -1240($fp)
	sw $t0, 0($t1)
	lw $t0, -1240($fp)
	lw $t1, 0($t0)
	sw $t1, -1244($fp)
	li $t0, 17570
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	sw $t0, -1256($fp)
	li $t0, 62671
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	sw $t0, -1268($fp)
	li $t0, 56496
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	sw $t0, -1280($fp)
	li $t0, 57065
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -1292($fp)
	li $t0, 7435
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	sw $t0, -1304($fp)
	li $t0, 5415
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	sw $t0, -1316($fp)
	li $t0, 15652
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	sw $t0, -1328($fp)
	li $t0, 41585
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	sw $t0, -1340($fp)
	li $t0, 36822
	sw $t0, -1344($fp)
	addi $t0, $fp, -140
	sw $t0, -1348($fp)
	li $t0, 0
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1356($fp)
	lw $t0, -1348($fp)
	lw $t1, -1356($fp)
	add $t0, $t0, $t1
	sw $t0, -1360($fp)
	lw $t0, -1344($fp)
	lw $t1, -1360($fp)
	sw $t0, 0($t1)
	lw $t0, -1360($fp)
	lw $t1, 0($t0)
	sw $t1, -1364($fp)
	li $t0, 22290
	sw $t0, -1368($fp)
	addi $t0, $fp, -140
	sw $t0, -1372($fp)
	li $t0, 1
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1380($fp)
	lw $t0, -1372($fp)
	lw $t1, -1380($fp)
	add $t0, $t0, $t1
	sw $t0, -1384($fp)
	lw $t0, -1368($fp)
	lw $t1, -1384($fp)
	sw $t0, 0($t1)
	lw $t0, -1384($fp)
	lw $t1, 0($t0)
	sw $t1, -1388($fp)
	li $t0, 61972
	sw $t0, -1392($fp)
	addi $t0, $fp, -140
	sw $t0, -1396($fp)
	li $t0, 2
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1404($fp)
	lw $t0, -1396($fp)
	lw $t1, -1404($fp)
	add $t0, $t0, $t1
	sw $t0, -1408($fp)
	lw $t0, -1392($fp)
	lw $t1, -1408($fp)
	sw $t0, 0($t1)
	lw $t0, -1408($fp)
	lw $t1, 0($t0)
	sw $t1, -1412($fp)
	li $t0, 26796
	sw $t0, -1416($fp)
	lw $t0, -1416($fp)
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	sw $t0, -1424($fp)
	li $t0, 22827
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	sw $t0, -1436($fp)
	li $t0, 62469
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	sw $t0, -1448($fp)
	li $t0, 27615
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	sw $t0, -1460($fp)
	li $t0, 57800
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	sw $t0, -1472($fp)
	li $t0, 47538
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	sw $t0, -1480($fp)
	lw $t0, -1480($fp)
	sw $t0, -1484($fp)
	li $t0, 3184
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	sw $t0, -1496($fp)
	li $t0, 0
	sw $t0, -1500($fp)
	li $t0, 0
	sw $t0, -1504($fp)
	li $t0, 0
	sw $t0, -1508($fp)
	lw $t0, -1096($fp)
	sw $t0, -1512($fp)
	lw $t0, -1132($fp)
	sw $t0, -1516($fp)
	lw $t1, -1512($fp)
	lw $t2, -1516($fp)
	bne $t1, $t2, label500
	j label501
label500:
	li $t0, 1
	sw $t0, -1508($fp)
label501:
	li $t0, 41470
	sw $t0, -1520($fp)
	lw $t1, -1508($fp)
	lw $t2, -1520($fp)
	beq $t1, $t2, label498
	j label499
label498:
	li $t0, 1
	sw $t0, -1504($fp)
label499:
	li $t0, 0
	sw $t0, -1524($fp)
	lw $t0, -880($fp)
	sw $t0, -1528($fp)
	lw $t1, -1528($fp)
	li $t2, 0
	bne $t1, $t2, label505
	j label504
label505:
	lw $t0, -796($fp)
	sw $t0, -1532($fp)
	lw $t1, -1532($fp)
	li $t2, 0
	bne $t1, $t2, label502
	j label504
label504:
	li $t0, 50472
	sw $t0, -1536($fp)
	lw $t1, -1536($fp)
	li $t2, 0
	bne $t1, $t2, label502
	j label503
label502:
	li $t0, 1
	sw $t0, -1524($fp)
label503:
	li $t0, 0
	sw $t0, -1540($fp)
	lw $t0, -1312($fp)
	sw $t0, -1544($fp)
	lw $t1, -1544($fp)
	li $t2, 0
	bne $t1, $t2, label507
	j label506
label506:
	li $t0, 1
	sw $t0, -1540($fp)
label507:
	addi $sp, $sp, -4
	lw $t0, -1504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1540($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1548($fp)
	addi $sp, $sp, 16
	lw $t1, -1548($fp)
	li $t2, 0
	bne $t1, $t2, label497
	j label496
label496:
	li $t0, 1
	sw $t0, -1500($fp)
label497:
	li $t0, 51880
	sw $t0, -1552($fp)
	lw $t0, -1500($fp)
	lw $t1, -1552($fp)
	mul $t0, $t0, $t1
	sw $t0, -1556($fp)
	lw $t1, -1556($fp)
	li $t2, 0
	bne $t1, $t2, label491
	j label495
label495:
	lw $t0, -1444($fp)
	sw $t0, -1560($fp)
	lw $t1, -1560($fp)
	li $t2, 0
	bne $t1, $t2, label491
	j label494
label494:
	lw $t0, -1144($fp)
	sw $t0, -1564($fp)
	addi $t0, $fp, -128
	sw $t0, -1568($fp)
	lw $t0, -436($fp)
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
	lw $t0, -1564($fp)
	lw $t1, -1584($fp)
	mul $t0, $t0, $t1
	sw $t0, -1588($fp)
	lw $t1, -1588($fp)
	li $t2, 0
	bne $t1, $t2, label491
	j label492
label491:
	li $t0, 45390
	sw $t0, -1592($fp)
	li $t0, 0
	sw $t0, -1596($fp)
	lw $t0, -1420($fp)
	sw $t0, -1600($fp)
	li $t0, 17905
	sw $t0, -1604($fp)
	lw $t0, -1600($fp)
	lw $t1, -1604($fp)
	mul $t0, $t0, $t1
	sw $t0, -1608($fp)
	li $t0, 5058
	sw $t0, -1612($fp)
	lw $t1, -1608($fp)
	lw $t2, -1612($fp)
	beq $t1, $t2, label511
	j label512
label511:
	li $t0, 1
	sw $t0, -1596($fp)
label512:
	addi $sp, $sp, -4
	lw $t0, -1592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1596($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1616($fp)
	addi $sp, $sp, 12
	lw $t1, -1616($fp)
	li $t2, 0
	bne $t1, $t2, label508
	j label509
label508:
label513:
	addi $t0, $fp, -128
	sw $t0, -1620($fp)
	li $t0, 0
	sw $t0, -1624($fp)
	lw $t0, -784($fp)
	sw $t0, -1628($fp)
	lw $t0, -796($fp)
	sw $t0, -1632($fp)
	lw $t0, -1628($fp)
	lw $t1, -1632($fp)
	mul $t0, $t0, $t1
	sw $t0, -1636($fp)
	li $t0, 65197
	sw $t0, -1640($fp)
	lw $t0, -1636($fp)
	lw $t1, -1640($fp)
	mul $t0, $t0, $t1
	sw $t0, -1644($fp)
	lw $t0, -832($fp)
	sw $t0, -1648($fp)
	lw $t0, -640($fp)
	sw $t0, -1652($fp)
	lw $t0, -1648($fp)
	lw $t1, -1652($fp)
	mul $t0, $t0, $t1
	sw $t0, -1656($fp)
	lw $t1, -1644($fp)
	lw $t2, -1656($fp)
	bge $t1, $t2, label516
	j label517
label516:
	li $t0, 1
	sw $t0, -1624($fp)
label517:
	li $t0, 4
	lw $t1, -1624($fp)
	mul $t0, $t0, $t1
	sw $t0, -1660($fp)
	lw $t0, -1660($fp)
	lw $t1, -1620($fp)
	add $t0, $t0, $t1
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	lw $t1, 0($t0)
	sw $t1, -1668($fp)
	lw $t1, -1668($fp)
	li $t2, 0
	bne $t1, $t2, label514
	j label515
label514:
label518:
	addi $t0, $fp, -128
	sw $t0, -1672($fp)
	li $t0, 0
	sw $t0, -1676($fp)
	li $t0, 62075
	sw $t0, -1680($fp)
	lw $t1, -1680($fp)
	li $t2, 0
	bne $t1, $t2, label521
	j label523
label523:
	lw $t0, -1180($fp)
	sw $t0, -1684($fp)
	lw $t1, -1684($fp)
	li $t2, 0
	bne $t1, $t2, label521
	j label522
label521:
	li $t0, 1
	sw $t0, -1676($fp)
label522:
	li $t0, 4
	lw $t1, -1676($fp)
	mul $t0, $t0, $t1
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	lw $t1, -1672($fp)
	add $t0, $t0, $t1
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	lw $t1, 0($t0)
	sw $t1, -1696($fp)
	li $t0, 0
	lw $t1, -1696($fp)
	sub $t0, $t0, $t1
	sw $t0, -1700($fp)
	li $t0, 0
	lw $t1, -1700($fp)
	sub $t0, $t0, $t1
	sw $t0, -1704($fp)
	lw $t1, -1704($fp)
	li $t2, 0
	bne $t1, $t2, label519
	j label520
label519:
	li $t0, 13595
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	sw $t0, -1716($fp)
	li $t0, 37409
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	sw $t0, -1728($fp)
	li $t0, 48494
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	sw $t0, -1740($fp)
	li $t0, 35521
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	sw $t0, -1752($fp)
	li $t0, 35030
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	sw $t0, -1764($fp)
	li $t0, 529
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	sw $t0, -1776($fp)
	lw $t0, -1712($fp)
	sw $t0, -1780($fp)
	lw $t0, -1780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1724($fp)
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1736($fp)
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1748($fp)
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1760($fp)
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1772($fp)
	sw $t0, -1800($fp)
	lw $t0, -1800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1252($fp)
	sw $t0, -1804($fp)
	lw $t0, -1192($fp)
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -1812($fp)
	addi $sp, $sp, -4
	lw $t0, -1812($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1816($fp)
	addi $sp, $sp, 8
	li $t0, 32656
	sw $t0, -1820($fp)
	lw $t0, -1816($fp)
	lw $t1, -1820($fp)
	mul $t0, $t0, $t1
	sw $t0, -1824($fp)
	addi $sp, $sp, -4
	lw $t0, -1824($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1828($fp)
	addi $sp, $sp, 8
	lw $t0, -1804($fp)
	lw $t1, -1828($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1832($fp)
	lw $ra, -4($fp)
	lw $v0, -1832($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label524:
	li $t0, 0
	sw $t0, -1836($fp)
	li $t0, 25990
	sw $t0, -1840($fp)
	lw $t1, -1840($fp)
	li $t2, 0
	bne $t1, $t2, label527
	j label529
label529:
	lw $t0, -772($fp)
	sw $t0, -1844($fp)
	lw $t1, -1844($fp)
	li $t2, 0
	bne $t1, $t2, label527
	j label528
label527:
	li $t0, 1
	sw $t0, -1836($fp)
label528:
	lw $t0, -1836($fp)
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	sw $t0, -1852($fp)
	lw $t1, -1852($fp)
	li $t2, 0
	bne $t1, $t2, label525
	j label526
label525:
label530:
	li $t0, 0
	sw $t0, -1856($fp)
	li $t0, 40091
	sw $t0, -1860($fp)
	li $t0, 0
	lw $t1, -1860($fp)
	sub $t0, $t0, $t1
	sw $t0, -1864($fp)
	lw $t1, -1864($fp)
	li $t2, 0
	bne $t1, $t2, label535
	j label534
label535:
	li $t0, 31405
	sw $t0, -1868($fp)
	lw $t1, -1868($fp)
	li $t2, 0
	bne $t1, $t2, label533
	j label534
label533:
	li $t0, 1
	sw $t0, -1856($fp)
label534:
	li $t0, 0
	sw $t0, -1872($fp)
	lw $t0, -1748($fp)
	sw $t0, -1876($fp)
	lw $t0, -640($fp)
	sw $t0, -1880($fp)
	lw $t0, -1876($fp)
	lw $t1, -1880($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1884($fp)
	li $t0, 57594
	sw $t0, -1888($fp)
	lw $t1, -1884($fp)
	lw $t2, -1888($fp)
	beq $t1, $t2, label536
	j label537
label536:
	li $t0, 1
	sw $t0, -1872($fp)
label537:
	addi $sp, $sp, -4
	lw $t0, -1856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1872($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1892($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -1892($fp)
	sub $t0, $t0, $t1
	sw $t0, -1896($fp)
	li $t0, 0
	sw $t0, -1900($fp)
	lw $t0, -1216($fp)
	sw $t0, -1904($fp)
	li $t0, 7710
	sw $t0, -1908($fp)
	lw $t0, -1904($fp)
	lw $t1, -1908($fp)
	add $t0, $t0, $t1
	sw $t0, -1912($fp)
	lw $t1, -1912($fp)
	li $t2, 0
	bne $t1, $t2, label538
	j label540
label540:
	lw $t0, -1276($fp)
	sw $t0, -1916($fp)
	lw $t1, -1916($fp)
	li $t2, 0
	bne $t1, $t2, label538
	j label539
label538:
	li $t0, 1
	sw $t0, -1900($fp)
label539:
	lw $t0, -1772($fp)
	sw $t0, -1920($fp)
	lw $t0, -1336($fp)
	sw $t0, -1924($fp)
	lw $t0, -1920($fp)
	lw $t1, -1924($fp)
	sub $t0, $t0, $t1
	sw $t0, -1928($fp)
	lw $t0, -820($fp)
	sw $t0, -1932($fp)
	lw $t0, -1928($fp)
	lw $t1, -1932($fp)
	sub $t0, $t0, $t1
	sw $t0, -1936($fp)
	lw $t0, 4($fp)
	sw $t0, -1940($fp)
	addi $sp, $sp, -4
	lw $t0, -1900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1940($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1944($fp)
	addi $sp, $sp, 16
	li $t0, 16141
	sw $t0, -1948($fp)
	lw $t0, -1944($fp)
	lw $t1, -1948($fp)
	add $t0, $t0, $t1
	sw $t0, -1952($fp)
	addi $sp, $sp, -4
	lw $t0, -1952($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1956($fp)
	addi $sp, $sp, 8
	lw $t1, -1896($fp)
	lw $t2, -1956($fp)
	bgt $t1, $t2, label531
	j label532
label531:
	li $t0, 2691
	sw $t0, -1960($fp)
	lw $t0, -1960($fp)
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	sw $t0, -1968($fp)
label541:
	addi $t0, $fp, -52
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
	li $t0, 0
	sw $t0, -1992($fp)
	li $t0, 0
	sw $t0, -1996($fp)
	addi $t0, $fp, -92
	sw $t0, -2000($fp)
	li $t0, 2
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
	li $t0, 57103
	sw $t0, -2020($fp)
	lw $t1, -2016($fp)
	lw $t2, -2020($fp)
	bne $t1, $t2, label546
	j label547
label546:
	li $t0, 1
	sw $t0, -1996($fp)
label547:
	addi $sp, $sp, -4
	lw $t0, -1996($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2024($fp)
	addi $sp, $sp, 8
	lw $t1, -2024($fp)
	li $t2, 0
	bne $t1, $t2, label545
	j label544
label544:
	li $t0, 1
	sw $t0, -1992($fp)
label545:
	lw $t1, -1988($fp)
	lw $t2, -1992($fp)
	bgt $t1, $t2, label542
	j label543
label542:
	li $t0, 45091
	sw $t0, -2028($fp)
	lw $t0, -2028($fp)
	sw $t0, -2032($fp)
	lw $t0, -2032($fp)
	sw $t0, -2036($fp)
	li $t0, 0
	sw $t0, -2040($fp)
	addi $t0, $fp, -12
	sw $t0, -2044($fp)
	lw $t0, -1132($fp)
	sw $t0, -2048($fp)
	li $t0, 4
	lw $t1, -2048($fp)
	mul $t0, $t0, $t1
	sw $t0, -2052($fp)
	lw $t0, -2052($fp)
	lw $t1, -2044($fp)
	add $t0, $t0, $t1
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	lw $t1, 0($t0)
	sw $t1, -2060($fp)
	lw $t0, -1468($fp)
	sw $t0, -2064($fp)
	lw $t0, -2060($fp)
	lw $t1, -2064($fp)
	add $t0, $t0, $t1
	sw $t0, -2068($fp)
	lw $t0, -616($fp)
	sw $t0, -2072($fp)
	li $t0, 0
	lw $t1, -2072($fp)
	sub $t0, $t0, $t1
	sw $t0, -2076($fp)
	li $t0, 0
	lw $t1, -2076($fp)
	sub $t0, $t0, $t1
	sw $t0, -2080($fp)
	lw $t1, -2068($fp)
	lw $t2, -2080($fp)
	bne $t1, $t2, label550
	j label549
label550:
	li $t0, 60288
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -2088($fp)
	li $t0, 57048
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	sw $t0, -2096($fp)
	addi $sp, $sp, -4
	lw $t0, -2088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2096($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2100($fp)
	addi $sp, $sp, 12
	li $t0, 30028
	sw $t0, -2104($fp)
	lw $t0, -2100($fp)
	lw $t1, -2104($fp)
	mul $t0, $t0, $t1
	sw $t0, -2108($fp)
	lw $t1, -2108($fp)
	li $t2, 0
	bne $t1, $t2, label548
	j label549
label548:
	li $t0, 1
	sw $t0, -2040($fp)
label549:
	li $t0, 0
	sw $t0, -2112($fp)
	addi $t0, $fp, -12
	sw $t0, -2116($fp)
	lw $t0, -1216($fp)
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -2124($fp)
	li $t0, 4
	lw $t1, -2124($fp)
	mul $t0, $t0, $t1
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	lw $t1, -2116($fp)
	add $t0, $t0, $t1
	sw $t0, -2132($fp)
	lw $t0, -2132($fp)
	lw $t1, 0($t0)
	sw $t1, -2136($fp)
	lw $t1, -2136($fp)
	li $t2, 0
	bne $t1, $t2, label552
	j label551
label551:
	li $t0, 1
	sw $t0, -2112($fp)
label552:
	li $t0, 0
	sw $t0, -2140($fp)
	li $t0, 0
	sw $t0, -2144($fp)
	li $t0, 0
	sw $t0, -2148($fp)
	lw $t0, -1748($fp)
	sw $t0, -2152($fp)
	lw $t1, -2152($fp)
	li $t2, 0
	bne $t1, $t2, label558
	j label557
label557:
	li $t0, 1
	sw $t0, -2148($fp)
label558:
	li $t0, 47594
	sw $t0, -2156($fp)
	lw $t1, -2148($fp)
	lw $t2, -2156($fp)
	bne $t1, $t2, label555
	j label556
label555:
	li $t0, 1
	sw $t0, -2144($fp)
label556:
	li $t0, 0
	sw $t0, -2160($fp)
	li $t0, 38040
	sw $t0, -2164($fp)
	lw $t1, -2164($fp)
	li $t2, 0
	bne $t1, $t2, label562
	j label561
label562:
	lw $t0, -1736($fp)
	sw $t0, -2168($fp)
	lw $t1, -2168($fp)
	li $t2, 0
	bne $t1, $t2, label559
	j label561
label561:
	li $t0, 26486
	sw $t0, -2172($fp)
	lw $t1, -2172($fp)
	li $t2, 0
	bne $t1, $t2, label559
	j label560
label559:
	li $t0, 1
	sw $t0, -2160($fp)
label560:
	li $t0, 0
	sw $t0, -2176($fp)
	li $t0, 0
	sw $t0, -2180($fp)
	li $t0, 32982
	sw $t0, -2184($fp)
	li $t0, 46632
	sw $t0, -2188($fp)
	lw $t1, -2184($fp)
	lw $t2, -2188($fp)
	bgt $t1, $t2, label565
	j label566
label565:
	li $t0, 1
	sw $t0, -2180($fp)
label566:
	li $t0, 47933
	sw $t0, -2192($fp)
	lw $t1, -2180($fp)
	lw $t2, -2192($fp)
	bne $t1, $t2, label563
	j label564
label563:
	li $t0, 1
	sw $t0, -2176($fp)
label564:
	addi $sp, $sp, -4
	lw $t0, -2144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2176($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2196($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -2196($fp)
	sub $t0, $t0, $t1
	sw $t0, -2200($fp)
	lw $t1, -2200($fp)
	li $t2, 0
	bne $t1, $t2, label554
	j label553
label553:
	li $t0, 1
	sw $t0, -2140($fp)
label554:
	lw $t0, -2112($fp)
	lw $t1, -2140($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2204($fp)
	li $t0, 0
	sw $t0, -2208($fp)
	li $t0, 34579
	sw $t0, -2212($fp)
	lw $t1, -2212($fp)
	li $t2, 0
	bne $t1, $t2, label568
	j label567
label567:
	li $t0, 1
	sw $t0, -2208($fp)
label568:
	li $t0, 0
	lw $t1, -2208($fp)
	sub $t0, $t0, $t1
	sw $t0, -2216($fp)
	li $t0, 0
	sw $t0, -2220($fp)
	li $t0, 40081
	sw $t0, -2224($fp)
	lw $t1, -2224($fp)
	li $t2, 0
	bne $t1, $t2, label570
	j label569
label569:
	li $t0, 1
	sw $t0, -2220($fp)
label570:
	lw $t0, -2216($fp)
	lw $t1, -2220($fp)
	sub $t0, $t0, $t1
	sw $t0, -2228($fp)
	lw $t0, -1456($fp)
	sw $t0, -2232($fp)
	lw $t0, -2228($fp)
	lw $t1, -2232($fp)
	add $t0, $t0, $t1
	sw $t0, -2236($fp)
	li $t0, 0
	sw $t0, -2240($fp)
	li $t0, 0
	sw $t0, -2244($fp)
	li $t0, 19468
	sw $t0, -2248($fp)
	li $t0, 17538
	sw $t0, -2252($fp)
	lw $t0, -2248($fp)
	lw $t1, -2252($fp)
	sub $t0, $t0, $t1
	sw $t0, -2256($fp)
	lw $t0, -2032($fp)
	sw $t0, -2260($fp)
	addi $sp, $sp, -4
	lw $t0, -2256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2260($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2264($fp)
	addi $sp, $sp, 12
	lw $t0, 12($fp)
	sw $t0, -2268($fp)
	lw $t0, -2264($fp)
	lw $t1, -2268($fp)
	sub $t0, $t0, $t1
	sw $t0, -2272($fp)
	li $t0, 10066
	sw $t0, -2276($fp)
	lw $t1, -2272($fp)
	lw $t2, -2276($fp)
	ble $t1, $t2, label574
	j label575
label574:
	li $t0, 1
	sw $t0, -2244($fp)
label575:
	li $t0, 0
	sw $t0, -2280($fp)
	li $t0, 0
	sw $t0, -2284($fp)
	li $t0, 54498
	sw $t0, -2288($fp)
	lw $t1, -2288($fp)
	li $t2, 0
	bne $t1, $t2, label579
	j label578
label578:
	li $t0, 1
	sw $t0, -2284($fp)
label579:
	li $t0, 18067
	sw $t0, -2292($fp)
	lw $t1, -2284($fp)
	lw $t2, -2292($fp)
	bgt $t1, $t2, label576
	j label577
label576:
	li $t0, 1
	sw $t0, -2280($fp)
label577:
	lw $t1, -2244($fp)
	lw $t2, -2280($fp)
	beq $t1, $t2, label573
	j label572
label573:
	lw $t0, -844($fp)
	sw $t0, -2296($fp)
	lw $t0, -868($fp)
	sw $t0, -2300($fp)
	lw $t0, -2296($fp)
	lw $t1, -2300($fp)
	add $t0, $t0, $t1
	sw $t0, -2304($fp)
	lw $t1, -2304($fp)
	li $t2, 0
	bne $t1, $t2, label571
	j label572
label571:
	li $t0, 1
	sw $t0, -2240($fp)
label572:
	li $t0, 0
	sw $t0, -2308($fp)
	lw $t0, -1312($fp)
	sw $t0, -2312($fp)
	lw $t1, -2312($fp)
	li $t2, 0
	bne $t1, $t2, label582
	j label581
label582:
	li $t0, 0
	sw $t0, -2316($fp)
	addi $t0, $fp, -140
	sw $t0, -2320($fp)
	li $t0, 1
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
	lw $t0, -628($fp)
	sw $t0, -2340($fp)
	lw $t1, -2336($fp)
	lw $t2, -2340($fp)
	blt $t1, $t2, label583
	j label584
label583:
	li $t0, 1
	sw $t0, -2316($fp)
label584:
	li $t0, 10125
	sw $t0, -2344($fp)
	lw $t0, -808($fp)
	sw $t0, -2348($fp)
	lw $t0, -2344($fp)
	lw $t1, -2348($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2352($fp)
	lw $t1, -2316($fp)
	lw $t2, -2352($fp)
	blt $t1, $t2, label580
	j label581
label580:
	li $t0, 1
	sw $t0, -2308($fp)
label581:
	j label541
label543:
	li $t0, 0
	sw $t0, -2356($fp)
	li $t0, 0
	sw $t0, -2360($fp)
	li $t0, 17278
	sw $t0, -2364($fp)
	li $t0, 46358
	sw $t0, -2368($fp)
	lw $t1, -2364($fp)
	lw $t2, -2368($fp)
	bgt $t1, $t2, label587
	j label588
label587:
	li $t0, 1
	sw $t0, -2360($fp)
label588:
	lw $t0, -628($fp)
	sw $t0, -2372($fp)
	lw $t1, -2360($fp)
	lw $t2, -2372($fp)
	ble $t1, $t2, label585
	j label586
label585:
	li $t0, 1
	sw $t0, -2356($fp)
label586:
	addi $t0, $fp, -128
	sw $t0, -2376($fp)
	lw $t0, -1964($fp)
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
	addi $sp, $sp, -4
	lw $t0, -2356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2392($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2396($fp)
	addi $sp, $sp, 12
	lw $t0, -460($fp)
	sw $t0, -2400($fp)
	lw $t0, -2396($fp)
	lw $t1, -2400($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2404($fp)
	li $t0, 0
	lw $t1, -2404($fp)
	sub $t0, $t0, $t1
	sw $t0, -2408($fp)
	li $t0, 0
	lw $t1, -2408($fp)
	sub $t0, $t0, $t1
	sw $t0, -2412($fp)
	j label530
label532:
	j label524
label526:
	li $t0, 0
	sw $t0, -2416($fp)
	li $t0, 13001
	sw $t0, -2420($fp)
	lw $t1, -2420($fp)
	li $t2, 0
	bne $t1, $t2, label595
	j label594
label595:
	li $t0, 35126
	sw $t0, -2424($fp)
	lw $t1, -2424($fp)
	li $t2, 0
	bne $t1, $t2, label592
	j label594
label594:
	lw $t0, -1760($fp)
	sw $t0, -2428($fp)
	lw $t1, -2428($fp)
	li $t2, 0
	bne $t1, $t2, label592
	j label593
label592:
	li $t0, 1
	sw $t0, -2416($fp)
label593:
	li $t0, 0
	sw $t0, -2432($fp)
	li $t0, 0
	sw $t0, -2436($fp)
	lw $t0, -1724($fp)
	sw $t0, -2440($fp)
	lw $t1, -2440($fp)
	li $t2, 0
	bne $t1, $t2, label601
	j label600
label601:
	li $t0, 47835
	sw $t0, -2444($fp)
	lw $t1, -2444($fp)
	li $t2, 0
	bne $t1, $t2, label598
	j label600
label600:
	li $t0, 45996
	sw $t0, -2448($fp)
	lw $t1, -2448($fp)
	li $t2, 0
	bne $t1, $t2, label598
	j label599
label598:
	li $t0, 1
	sw $t0, -2436($fp)
label599:
	li $t0, 0
	sw $t0, -2452($fp)
	lw $t0, -1480($fp)
	sw $t0, -2456($fp)
	lw $t0, -1736($fp)
	sw $t0, -2460($fp)
	lw $t0, -2456($fp)
	lw $t1, -2460($fp)
	sub $t0, $t0, $t1
	sw $t0, -2464($fp)
	lw $t1, -2464($fp)
	li $t2, 0
	bne $t1, $t2, label602
	j label604
label604:
	lw $t0, -1324($fp)
	sw $t0, -2468($fp)
	lw $t1, -2468($fp)
	li $t2, 0
	bne $t1, $t2, label602
	j label603
label602:
	li $t0, 1
	sw $t0, -2452($fp)
label603:
	li $t0, 49049
	sw $t0, -2472($fp)
	lw $t0, -1132($fp)
	sw $t0, -2476($fp)
	lw $t0, -2472($fp)
	lw $t1, -2476($fp)
	sub $t0, $t0, $t1
	sw $t0, -2480($fp)
	addi $sp, $sp, -4
	lw $t0, -2436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2480($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2484($fp)
	addi $sp, $sp, 16
	lw $t0, -1444($fp)
	sw $t0, -2488($fp)
	lw $t1, -2484($fp)
	lw $t2, -2488($fp)
	blt $t1, $t2, label596
	j label597
label596:
	li $t0, 1
	sw $t0, -2432($fp)
label597:
	li $t0, 0
	sw $t0, -2492($fp)
	lw $t0, -808($fp)
	sw $t0, -2496($fp)
	lw $t0, -1336($fp)
	sw $t0, -2500($fp)
	lw $t1, -2496($fp)
	lw $t2, -2500($fp)
	beq $t1, $t2, label605
	j label607
label607:
	lw $t0, -868($fp)
	sw $t0, -2504($fp)
	lw $t1, -2504($fp)
	li $t2, 0
	bne $t1, $t2, label605
	j label606
label605:
	li $t0, 1
	sw $t0, -2492($fp)
label606:
	li $t0, 0
	sw $t0, -2508($fp)
	li $t0, 17835
	sw $t0, -2512($fp)
	lw $t0, -1432($fp)
	sw $t0, -2516($fp)
	lw $t0, -2512($fp)
	lw $t1, -2516($fp)
	mul $t0, $t0, $t1
	sw $t0, -2520($fp)
	li $t0, 33419
	sw $t0, -2524($fp)
	lw $t1, -2520($fp)
	lw $t2, -2524($fp)
	bne $t1, $t2, label608
	j label609
label608:
	li $t0, 1
	sw $t0, -2508($fp)
label609:
	addi $sp, $sp, -4
	lw $t0, -2492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2508($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2528($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -2528($fp)
	sub $t0, $t0, $t1
	sw $t0, -2532($fp)
	addi $sp, $sp, -4
	lw $t0, -2532($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2536($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -2416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2536($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2540($fp)
	addi $sp, $sp, 16
	lw $t1, -2540($fp)
	li $t2, 0
	bne $t1, $t2, label590
	j label589
label589:
	li $t0, 55506
	sw $t0, -2544($fp)
	lw $t0, -2544($fp)
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	sw $t0, -2552($fp)
	li $t0, 4569
	sw $t0, -2556($fp)
	li $t0, 0
	sw $t0, -2560($fp)
	li $t0, 14682
	sw $t0, -2564($fp)
	lw $t1, -2564($fp)
	li $t2, 0
	bne $t1, $t2, label615
	j label614
label614:
	li $t0, 1
	sw $t0, -2560($fp)
label615:
	lw $t0, -2556($fp)
	lw $t1, -2560($fp)
	add $t0, $t0, $t1
	sw $t0, -2568($fp)
	li $t0, 0
	sw $t0, -2572($fp)
	li $t0, 47018
	sw $t0, -2576($fp)
	lw $t1, -2576($fp)
	li $t2, 0
	bne $t1, $t2, label617
	j label616
label616:
	li $t0, 1
	sw $t0, -2572($fp)
label617:
	li $t0, 0
	lw $t1, -2572($fp)
	sub $t0, $t0, $t1
	sw $t0, -2580($fp)
	lw $t0, -2568($fp)
	lw $t1, -2580($fp)
	sub $t0, $t0, $t1
	sw $t0, -2584($fp)
	lw $t1, -2584($fp)
	li $t2, 0
	bne $t1, $t2, label613
	j label611
label613:
	li $t0, 64857
	sw $t0, -2588($fp)
	li $t0, 44710
	sw $t0, -2592($fp)
	li $t0, 14465
	sw $t0, -2596($fp)
	lw $t0, -2592($fp)
	lw $t1, -2596($fp)
	add $t0, $t0, $t1
	sw $t0, -2600($fp)
	lw $t1, -2588($fp)
	lw $t2, -2600($fp)
	beq $t1, $t2, label610
	j label611
label610:
	li $t0, 0
	sw $t0, -2604($fp)
	lw $t0, -880($fp)
	sw $t0, -2608($fp)
	lw $t1, -2608($fp)
	li $t2, 0
	bne $t1, $t2, label620
	j label619
label620:
	lw $t0, -880($fp)
	sw $t0, -2612($fp)
	li $t0, 45953
	sw $t0, -2616($fp)
	lw $t0, -2612($fp)
	lw $t1, -2616($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2620($fp)
	addi $t0, $fp, -128
	sw $t0, -2624($fp)
	li $t0, 0
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
	lw $t1, -2620($fp)
	lw $t2, -2640($fp)
	bne $t1, $t2, label618
	j label619
label618:
	li $t0, 1
	sw $t0, -2604($fp)
label619:
	lw $ra, -4($fp)
	lw $v0, -2604($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label612
label611:
label621:
	addi $t0, $fp, -128
	sw $t0, -2644($fp)
	li $t0, 0
	sw $t0, -2648($fp)
	li $t0, 6904
	sw $t0, -2652($fp)
	lw $t1, -2652($fp)
	li $t2, 0
	bne $t1, $t2, label624
	j label626
label626:
	lw $t0, -1456($fp)
	sw $t0, -2656($fp)
	lw $t1, -2656($fp)
	li $t2, 0
	bne $t1, $t2, label624
	j label625
label624:
	li $t0, 1
	sw $t0, -2648($fp)
label625:
	lw $t0, -2648($fp)
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	sw $t0, -2660($fp)
	li $t0, 4
	lw $t1, -2660($fp)
	mul $t0, $t0, $t1
	sw $t0, -2664($fp)
	lw $t0, -2664($fp)
	lw $t1, -2644($fp)
	add $t0, $t0, $t1
	sw $t0, -2668($fp)
	lw $t0, -2668($fp)
	lw $t1, 0($t0)
	sw $t1, -2672($fp)
	lw $t1, -2672($fp)
	li $t2, 0
	bne $t1, $t2, label622
	j label623
label622:
	lw $t0, -448($fp)
	sw $t0, -2676($fp)
	j label621
label623:
label612:
	j label591
label590:
	li $t0, 0
	sw $t0, -2680($fp)
	li $t0, 9166
	sw $t0, -2684($fp)
	lw $t0, -796($fp)
	sw $t0, -2688($fp)
	lw $t0, -2684($fp)
	lw $t1, -2688($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2692($fp)
	li $t0, 21549
	sw $t0, -2696($fp)
	lw $t0, -2692($fp)
	lw $t1, -2696($fp)
	mul $t0, $t0, $t1
	sw $t0, -2700($fp)
	lw $t1, -2700($fp)
	li $t2, 0
	bne $t1, $t2, label629
	j label628
label629:
	lw $t0, -1712($fp)
	sw $t0, -2704($fp)
	lw $t1, -2704($fp)
	li $t2, 0
	bne $t1, $t2, label628
	j label627
label627:
	li $t0, 1
	sw $t0, -2680($fp)
label628:
	lw $t0, -2680($fp)
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -2708($fp)
label591:
	li $t0, 46985
	sw $t0, -2720($fp)
	addi $t0, $fp, -2716
	sw $t0, -2724($fp)
	li $t0, 0
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2732($fp)
	lw $t0, -2724($fp)
	lw $t1, -2732($fp)
	add $t0, $t0, $t1
	sw $t0, -2736($fp)
	lw $t0, -2720($fp)
	lw $t1, -2736($fp)
	sw $t0, 0($t1)
	lw $t0, -2736($fp)
	lw $t1, 0($t0)
	sw $t1, -2740($fp)
	li $t0, 28634
	sw $t0, -2744($fp)
	addi $t0, $fp, -2716
	sw $t0, -2748($fp)
	li $t0, 1
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2756($fp)
	lw $t0, -2748($fp)
	lw $t1, -2756($fp)
	add $t0, $t0, $t1
	sw $t0, -2760($fp)
	lw $t0, -2744($fp)
	lw $t1, -2760($fp)
	sw $t0, 0($t1)
	lw $t0, -2760($fp)
	lw $t1, 0($t0)
	sw $t1, -2764($fp)
label630:
	lw $t0, -1216($fp)
	sw $t0, -2768($fp)
	lw $t0, -1300($fp)
	sw $t0, -2772($fp)
	lw $t0, -2768($fp)
	lw $t1, -2772($fp)
	add $t0, $t0, $t1
	sw $t0, -2776($fp)
	lw $t0, -2776($fp)
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	sw $t0, -2780($fp)
	lw $t0, -2780($fp)
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -2784($fp)
	lw $t1, -2784($fp)
	li $t2, 0
	bne $t1, $t2, label631
	j label632
label631:
	li $t0, 39087
	sw $t0, -2788($fp)
	lw $t0, -2788($fp)
	sw $t0, -2792($fp)
	lw $t0, -2792($fp)
	sw $t0, -2796($fp)
	li $t0, 57052
	sw $t0, -2800($fp)
	lw $t0, -2800($fp)
	sw $t0, -2804($fp)
	lw $t0, -2804($fp)
	sw $t0, -2808($fp)
	li $t0, 17596
	sw $t0, -2812($fp)
	lw $t0, -2812($fp)
	sw $t0, -2816($fp)
	lw $t0, -2816($fp)
	sw $t0, -2820($fp)
	li $t0, 57154
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	sw $t0, -2828($fp)
	lw $t0, -2828($fp)
	sw $t0, -2832($fp)
	li $t0, 0
	sw $t0, -2836($fp)
	li $t0, 0
	sw $t0, -2840($fp)
	addi $t0, $fp, -2716
	sw $t0, -2844($fp)
	lw $t0, -2816($fp)
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
	addi $t0, $fp, -12
	sw $t0, -2864($fp)
	li $t0, 0
	sw $t0, -2868($fp)
	li $t0, 4
	lw $t1, -2868($fp)
	mul $t0, $t0, $t1
	sw $t0, -2872($fp)
	lw $t0, -2872($fp)
	lw $t1, -2864($fp)
	add $t0, $t0, $t1
	sw $t0, -2876($fp)
	lw $t0, -2876($fp)
	lw $t1, 0($t0)
	sw $t1, -2880($fp)
	lw $t1, -2860($fp)
	lw $t2, -2880($fp)
	ble $t1, $t2, label635
	j label636
label635:
	li $t0, 1
	sw $t0, -2840($fp)
label636:
	li $t0, 0
	sw $t0, -2884($fp)
	lw $t0, -2828($fp)
	sw $t0, -2888($fp)
	li $t0, 0
	lw $t1, -2888($fp)
	sub $t0, $t0, $t1
	sw $t0, -2892($fp)
	li $t0, 1743
	sw $t0, -2896($fp)
	lw $t1, -2892($fp)
	lw $t2, -2896($fp)
	bgt $t1, $t2, label637
	j label638
label637:
	li $t0, 1
	sw $t0, -2884($fp)
label638:
	addi $sp, $sp, -4
	lw $t0, -2884($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2900($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -2900($fp)
	sub $t0, $t0, $t1
	sw $t0, -2904($fp)
	lw $t1, -2840($fp)
	lw $t2, -2904($fp)
	ble $t1, $t2, label633
	j label634
label633:
	li $t0, 1
	sw $t0, -2836($fp)
label634:
	li $t0, 0
	sw $t0, -2908($fp)
	addi $t0, $fp, -12
	sw $t0, -2912($fp)
	li $t0, 0
	sw $t0, -2916($fp)
	li $t0, 4
	lw $t1, -2916($fp)
	mul $t0, $t0, $t1
	sw $t0, -2920($fp)
	lw $t0, -2920($fp)
	lw $t1, -2912($fp)
	add $t0, $t0, $t1
	sw $t0, -2924($fp)
	lw $t0, -2924($fp)
	lw $t1, 0($t0)
	sw $t1, -2928($fp)
	li $t0, 19578
	sw $t0, -2932($fp)
	lw $t0, -2928($fp)
	lw $t1, -2932($fp)
	mul $t0, $t0, $t1
	sw $t0, -2936($fp)
	li $t0, 0
	lw $t1, -2936($fp)
	sub $t0, $t0, $t1
	sw $t0, -2940($fp)
	lw $t1, -2940($fp)
	li $t2, 0
	bne $t1, $t2, label641
	j label639
label641:
	li $t0, 1877
	sw $t0, -2944($fp)
	li $t0, 65395
	sw $t0, -2948($fp)
	lw $t0, -2944($fp)
	lw $t1, -2948($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2952($fp)
	li $t0, 0
	sw $t0, -2956($fp)
	lw $t0, -2792($fp)
	sw $t0, -2960($fp)
	li $t0, 62420
	sw $t0, -2964($fp)
	lw $t0, -2960($fp)
	lw $t1, -2964($fp)
	mul $t0, $t0, $t1
	sw $t0, -2968($fp)
	lw $t1, -2968($fp)
	li $t2, 0
	bne $t1, $t2, label642
	j label644
label644:
	lw $t0, -2804($fp)
	sw $t0, -2972($fp)
	lw $t1, -2972($fp)
	li $t2, 0
	bne $t1, $t2, label642
	j label643
label642:
	li $t0, 1
	sw $t0, -2956($fp)
label643:
	li $t0, 0
	sw $t0, -2976($fp)
	li $t0, 19399
	sw $t0, -2980($fp)
	lw $t0, -1748($fp)
	sw $t0, -2984($fp)
	lw $t0, -2980($fp)
	lw $t1, -2984($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2988($fp)
	lw $t1, -2988($fp)
	li $t2, 0
	bne $t1, $t2, label647
	j label646
label647:
	lw $t0, -1324($fp)
	sw $t0, -2992($fp)
	lw $t1, -2992($fp)
	li $t2, 0
	bne $t1, $t2, label645
	j label646
label645:
	li $t0, 1
	sw $t0, -2976($fp)
label646:
	addi $sp, $sp, -4
	lw $t0, -2952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2976($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2996($fp)
	addi $sp, $sp, 16
	lw $t1, -2996($fp)
	li $t2, 0
	bne $t1, $t2, label639
	j label640
label639:
	li $t0, 1
	sw $t0, -2908($fp)
label640:
	li $t0, 0
	sw $t0, -3000($fp)
	addi $t0, $fp, -128
	sw $t0, -3004($fp)
	li $t0, 0
	sw $t0, -3008($fp)
	li $t0, 4
	lw $t1, -3008($fp)
	mul $t0, $t0, $t1
	sw $t0, -3012($fp)
	lw $t0, -3012($fp)
	lw $t1, -3004($fp)
	add $t0, $t0, $t1
	sw $t0, -3016($fp)
	lw $t0, -3016($fp)
	lw $t1, 0($t0)
	sw $t1, -3020($fp)
	lw $t0, -760($fp)
	sw $t0, -3024($fp)
	li $t0, 0
	lw $t1, -3024($fp)
	sub $t0, $t0, $t1
	sw $t0, -3028($fp)
	li $t0, 14454
	sw $t0, -3032($fp)
	lw $t0, -3028($fp)
	lw $t1, -3032($fp)
	sub $t0, $t0, $t1
	sw $t0, -3036($fp)
	lw $t0, -1748($fp)
	sw $t0, -3040($fp)
	li $t0, 51685
	sw $t0, -3044($fp)
	lw $t0, -3040($fp)
	lw $t1, -3044($fp)
	mul $t0, $t0, $t1
	sw $t0, -3048($fp)
	lw $t0, -3036($fp)
	lw $t1, -3048($fp)
	add $t0, $t0, $t1
	sw $t0, -3052($fp)
	lw $t1, -3020($fp)
	lw $t2, -3052($fp)
	bgt $t1, $t2, label648
	j label649
label648:
	li $t0, 1
	sw $t0, -3000($fp)
label649:
	j label630
label632:
	lw $t0, -1312($fp)
	sw $t0, -3056($fp)
	li $t0, 0
	sw $t0, -3060($fp)
	li $t0, 36848
	sw $t0, -3064($fp)
	lw $t1, -3064($fp)
	li $t2, 0
	bne $t1, $t2, label651
	j label650
label650:
	li $t0, 1
	sw $t0, -3060($fp)
label651:
	lw $t0, -3056($fp)
	lw $t1, -3060($fp)
	mul $t0, $t0, $t1
	sw $t0, -3068($fp)
	li $t0, 13775
	sw $t0, -3072($fp)
	lw $t0, -3072($fp)
	sw $t0, -3076($fp)
	lw $t0, -3076($fp)
	sw $t0, -3080($fp)
	li $t0, 30859
	sw $t0, -3084($fp)
	lw $t0, -3084($fp)
	sw $t0, -3088($fp)
	lw $t0, -3088($fp)
	sw $t0, -3092($fp)
	li $t0, 51313
	sw $t0, -3096($fp)
	lw $t0, -3096($fp)
	sw $t0, -3100($fp)
	lw $t0, -3100($fp)
	sw $t0, -3104($fp)
	lw $t0, -3076($fp)
	sw $t0, -3108($fp)
	lw $t0, -3108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3088($fp)
	sw $t0, -3112($fp)
	lw $t0, -3112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3100($fp)
	sw $t0, -3116($fp)
	lw $t0, -3116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3120($fp)
	li $t0, 0
	sw $t0, -3124($fp)
	li $t0, 1097
	sw $t0, -3128($fp)
	li $t0, 1597
	sw $t0, -3132($fp)
	lw $t0, -3128($fp)
	lw $t1, -3132($fp)
	mul $t0, $t0, $t1
	sw $t0, -3136($fp)
	lw $t0, -3100($fp)
	sw $t0, -3140($fp)
	lw $t1, -3136($fp)
	lw $t2, -3140($fp)
	ble $t1, $t2, label654
	j label655
label654:
	li $t0, 1
	sw $t0, -3124($fp)
label655:
	lw $t0, -1480($fp)
	sw $t0, -3144($fp)
	li $t0, 57967
	sw $t0, -3148($fp)
	lw $t0, -3144($fp)
	lw $t1, -3148($fp)
	mul $t0, $t0, $t1
	sw $t0, -3152($fp)
	li $t0, 38282
	sw $t0, -3156($fp)
	lw $t0, -3152($fp)
	lw $t1, -3156($fp)
	sub $t0, $t0, $t1
	sw $t0, -3160($fp)
	li $t0, 59729
	sw $t0, -3164($fp)
	addi $sp, $sp, -4
	lw $t0, -3124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3164($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3168($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -3168($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3172($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -2716
	sw $t0, -3176($fp)
	li $t0, 0
	sw $t0, -3180($fp)
	lw $t0, -640($fp)
	sw $t0, -3184($fp)
	lw $t1, -3184($fp)
	li $t2, 0
	bne $t1, $t2, label656
	j label658
label658:
	li $t0, 59831
	sw $t0, -3188($fp)
	lw $t1, -3188($fp)
	li $t2, 0
	bne $t1, $t2, label656
	j label657
label656:
	li $t0, 1
	sw $t0, -3180($fp)
label657:
	li $t0, 4
	lw $t1, -3180($fp)
	mul $t0, $t0, $t1
	sw $t0, -3192($fp)
	lw $t0, -3192($fp)
	lw $t1, -3176($fp)
	add $t0, $t0, $t1
	sw $t0, -3196($fp)
	lw $t0, -3196($fp)
	lw $t1, 0($t0)
	sw $t1, -3200($fp)
	lw $t1, -3172($fp)
	lw $t2, -3200($fp)
	bge $t1, $t2, label652
	j label653
label652:
	li $t0, 1
	sw $t0, -3120($fp)
label653:
	lw $ra, -4($fp)
	lw $v0, -3120($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label659:
	li $t0, 0
	sw $t0, -3204($fp)
	li $t0, 48082
	sw $t0, -3208($fp)
	lw $t1, -3208($fp)
	li $t2, 0
	bne $t1, $t2, label664
	j label663
label663:
	li $t0, 1
	sw $t0, -3204($fp)
label664:
	li $t0, 30231
	sw $t0, -3212($fp)
	li $t0, 0
	lw $t1, -3212($fp)
	sub $t0, $t0, $t1
	sw $t0, -3216($fp)
	lw $t0, -3204($fp)
	lw $t1, -3216($fp)
	add $t0, $t0, $t1
	sw $t0, -3220($fp)
	lw $t1, -3220($fp)
	li $t2, 0
	bne $t1, $t2, label662
	j label661
label662:
	lw $t0, -1456($fp)
	sw $t0, -3224($fp)
	li $t0, 33382
	sw $t0, -3228($fp)
	lw $t0, -3224($fp)
	lw $t1, -3228($fp)
	mul $t0, $t0, $t1
	sw $t0, -3232($fp)
	li $t0, 0
	sw $t0, -3236($fp)
	li $t0, 0
	sw $t0, -3240($fp)
	lw $t0, -640($fp)
	sw $t0, -3244($fp)
	li $t0, 14839
	sw $t0, -3248($fp)
	lw $t1, -3244($fp)
	lw $t2, -3248($fp)
	bne $t1, $t2, label667
	j label668
label667:
	li $t0, 1
	sw $t0, -3240($fp)
label668:
	lw $t0, -1492($fp)
	sw $t0, -3252($fp)
	lw $t1, -3240($fp)
	lw $t2, -3252($fp)
	bne $t1, $t2, label665
	j label666
label665:
	li $t0, 1
	sw $t0, -3236($fp)
label666:
	addi $t0, $fp, -128
	sw $t0, -3256($fp)
	li $t0, 0
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
	li $t0, 39598
	sw $t0, -3276($fp)
	li $t0, 47827
	sw $t0, -3280($fp)
	lw $t0, -3276($fp)
	lw $t1, -3280($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3284($fp)
	addi $sp, $sp, -4
	lw $t0, -3236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3284($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3288($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -3288($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3292($fp)
	addi $sp, $sp, 8
	lw $t0, -3232($fp)
	lw $t1, -3292($fp)
	mul $t0, $t0, $t1
	sw $t0, -3296($fp)
	lw $t1, -3296($fp)
	li $t2, 0
	bne $t1, $t2, label660
	j label661
label660:
	li $t0, 0
	sw $t0, -3300($fp)
	li $t0, 0
	sw $t0, -3304($fp)
	li $t0, 0
	sw $t0, -3308($fp)
	lw $t0, -448($fp)
	sw $t0, -3312($fp)
	lw $t0, -1288($fp)
	sw $t0, -3316($fp)
	lw $t0, -3312($fp)
	lw $t1, -3316($fp)
	add $t0, $t0, $t1
	sw $t0, -3320($fp)
	lw $t0, -448($fp)
	sw $t0, -3324($fp)
	lw $t1, -3320($fp)
	lw $t2, -3324($fp)
	blt $t1, $t2, label673
	j label674
label673:
	li $t0, 1
	sw $t0, -3308($fp)
label674:
	li $t0, 26743
	sw $t0, -3328($fp)
	li $t0, 59817
	sw $t0, -3332($fp)
	lw $t0, -3328($fp)
	lw $t1, -3332($fp)
	mul $t0, $t0, $t1
	sw $t0, -3336($fp)
	li $t0, 28210
	sw $t0, -3340($fp)
	lw $t0, -3336($fp)
	lw $t1, -3340($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3344($fp)
	addi $sp, $sp, -4
	lw $t0, -3308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3344($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3348($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -3348($fp)
	sub $t0, $t0, $t1
	sw $t0, -3352($fp)
	lw $t1, -3352($fp)
	li $t2, 0
	bne $t1, $t2, label672
	j label671
label671:
	li $t0, 1
	sw $t0, -3304($fp)
label672:
	addi $t0, $fp, -76
	sw $t0, -3356($fp)
	li $t0, 3
	sw $t0, -3360($fp)
	li $t0, 4
	lw $t1, -3360($fp)
	mul $t0, $t0, $t1
	sw $t0, -3364($fp)
	lw $t0, -3364($fp)
	lw $t1, -3356($fp)
	add $t0, $t0, $t1
	sw $t0, -3368($fp)
	lw $t0, -3368($fp)
	lw $t1, 0($t0)
	sw $t1, -3372($fp)
	lw $t0, -1736($fp)
	sw $t0, -3376($fp)
	lw $t0, -3376($fp)
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, -3380($fp)
	addi $sp, $sp, -4
	lw $t0, -3372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3380($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3384($fp)
	addi $sp, $sp, 12
	li $t0, 25094
	sw $t0, -3388($fp)
	lw $t0, -3384($fp)
	lw $t1, -3388($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3392($fp)
	lw $t1, -3304($fp)
	lw $t2, -3392($fp)
	bgt $t1, $t2, label669
	j label670
label669:
	li $t0, 1
	sw $t0, -3300($fp)
label670:
	lw $ra, -4($fp)
	lw $v0, -3300($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label659
label661:
label675:
	li $t0, 0
	sw $t0, -3396($fp)
	lw $t0, -868($fp)
	sw $t0, -3400($fp)
	lw $t1, -3400($fp)
	li $t2, 0
	bne $t1, $t2, label679
	j label678
label678:
	li $t0, 1
	sw $t0, -3396($fp)
label679:
	lw $t0, -796($fp)
	sw $t0, -3404($fp)
	lw $t0, -3396($fp)
	lw $t1, -3404($fp)
	mul $t0, $t0, $t1
	sw $t0, -3408($fp)
	li $t0, 0
	sw $t0, -3412($fp)
	li $t0, 34979
	sw $t0, -3416($fp)
	lw $t1, -3416($fp)
	li $t2, 0
	bne $t1, $t2, label680
	j label683
label683:
	lw $t0, -3076($fp)
	sw $t0, -3420($fp)
	lw $t1, -3420($fp)
	li $t2, 0
	bne $t1, $t2, label680
	j label682
label682:
	li $t0, 19666
	sw $t0, -3424($fp)
	lw $t1, -3424($fp)
	li $t2, 0
	bne $t1, $t2, label680
	j label681
label680:
	li $t0, 1
	sw $t0, -3412($fp)
label681:
	li $t0, 48198
	sw $t0, -3428($fp)
	lw $t0, -1120($fp)
	sw $t0, -3432($fp)
	lw $t0, -3428($fp)
	lw $t1, -3432($fp)
	mul $t0, $t0, $t1
	sw $t0, -3436($fp)
	lw $t0, -1760($fp)
	sw $t0, -3440($fp)
	addi $sp, $sp, -4
	lw $t0, -3436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3440($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3444($fp)
	addi $sp, $sp, 12
	li $t0, 13540
	sw $t0, -3448($fp)
	lw $t0, -3444($fp)
	lw $t1, -3448($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3452($fp)
	addi $sp, $sp, -4
	lw $t0, -3412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3452($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3456($fp)
	addi $sp, $sp, 12
	lw $t0, -3408($fp)
	lw $t1, -3456($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3460($fp)
	addi $t0, $fp, -128
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
	li $t0, 0
	lw $t1, -3480($fp)
	sub $t0, $t0, $t1
	sw $t0, -3484($fp)
	lw $t0, -3460($fp)
	lw $t1, -3484($fp)
	sub $t0, $t0, $t1
	sw $t0, -3488($fp)
	addi $t0, $fp, -128
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
	lw $t0, -436($fp)
	sw $t0, -3512($fp)
	lw $t0, -3508($fp)
	lw $t1, -3512($fp)
	add $t0, $t0, $t1
	sw $t0, -3516($fp)
	lw $t1, -3488($fp)
	lw $t2, -3516($fp)
	bgt $t1, $t2, label676
	j label677
label676:
	li $t0, 0
	sw $t0, -3520($fp)
	li $t0, 0
	sw $t0, -3524($fp)
	lw $t0, -1456($fp)
	sw $t0, -3528($fp)
	lw $t1, -3528($fp)
	li $t2, 0
	bne $t1, $t2, label687
	j label686
label686:
	li $t0, 1
	sw $t0, -3524($fp)
label687:
	li $t0, 0
	sw $t0, -3532($fp)
	lw $t0, -1108($fp)
	sw $t0, -3536($fp)
	lw $t0, -1120($fp)
	sw $t0, -3540($fp)
	lw $t1, -3536($fp)
	lw $t2, -3540($fp)
	beq $t1, $t2, label688
	j label689
label688:
	li $t0, 1
	sw $t0, -3532($fp)
label689:
	li $t0, 0
	sw $t0, -3544($fp)
	lw $t0, -3088($fp)
	sw $t0, -3548($fp)
	lw $t1, -3548($fp)
	li $t2, 0
	bne $t1, $t2, label693
	j label691
label693:
	lw $t0, -3100($fp)
	sw $t0, -3552($fp)
	lw $t1, -3552($fp)
	li $t2, 0
	bne $t1, $t2, label692
	j label691
label692:
	li $t0, 63209
	sw $t0, -3556($fp)
	lw $t1, -3556($fp)
	li $t2, 0
	bne $t1, $t2, label690
	j label691
label690:
	li $t0, 1
	sw $t0, -3544($fp)
label691:
	addi $sp, $sp, -4
	lw $t0, -3532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3544($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3560($fp)
	addi $sp, $sp, 12
	lw $t1, -3524($fp)
	lw $t2, -3560($fp)
	ble $t1, $t2, label684
	j label685
label684:
	li $t0, 1
	sw $t0, -3520($fp)
label685:
	lw $ra, -4($fp)
	lw $v0, -3520($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label675
label677:
	j label518
label520:
	j label513
label515:
	j label510
label509:
label694:
	addi $t0, $fp, -128
	sw $t0, -3564($fp)
	li $t0, 0
	sw $t0, -3568($fp)
	addi $t0, $fp, -128
	sw $t0, -3572($fp)
	li $t0, 0
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
	li $t0, 57402
	sw $t0, -3592($fp)
	li $t0, 29106
	sw $t0, -3596($fp)
	lw $t0, -3592($fp)
	lw $t1, -3596($fp)
	sub $t0, $t0, $t1
	sw $t0, -3600($fp)
	lw $t1, -3588($fp)
	lw $t2, -3600($fp)
	bne $t1, $t2, label697
	j label698
label697:
	li $t0, 1
	sw $t0, -3568($fp)
label698:
	li $t0, 4
	lw $t1, -3568($fp)
	mul $t0, $t0, $t1
	sw $t0, -3604($fp)
	lw $t0, -3604($fp)
	lw $t1, -3564($fp)
	add $t0, $t0, $t1
	sw $t0, -3608($fp)
	lw $t0, -3608($fp)
	lw $t1, 0($t0)
	sw $t1, -3612($fp)
	lw $t1, -3612($fp)
	li $t2, 0
	bne $t1, $t2, label695
	j label696
label695:
	addi $t0, $fp, -128
	sw $t0, -3616($fp)
	addi $t0, $fp, -128
	sw $t0, -3620($fp)
	lw $t0, -1456($fp)
	sw $t0, -3624($fp)
	li $t0, 0
	lw $t1, -3624($fp)
	sub $t0, $t0, $t1
	sw $t0, -3628($fp)
	li $t0, 4
	lw $t1, -3628($fp)
	mul $t0, $t0, $t1
	sw $t0, -3632($fp)
	lw $t0, -3632($fp)
	lw $t1, -3620($fp)
	add $t0, $t0, $t1
	sw $t0, -3636($fp)
	lw $t0, -3636($fp)
	lw $t1, 0($t0)
	sw $t1, -3640($fp)
	li $t0, 4
	lw $t1, -3640($fp)
	mul $t0, $t0, $t1
	sw $t0, -3644($fp)
	lw $t0, -3644($fp)
	lw $t1, -3616($fp)
	add $t0, $t0, $t1
	sw $t0, -3648($fp)
	lw $t0, -3648($fp)
	lw $t1, 0($t0)
	sw $t1, -3652($fp)
	lw $t1, -3652($fp)
	li $t2, 0
	bne $t1, $t2, label699
	j label700
label699:
	li $t0, 64277
	sw $t0, -3656($fp)
	j label701
label700:
	li $t0, 0
	sw $t0, -3660($fp)
	addi $t0, $fp, -128
	sw $t0, -3664($fp)
	lw $t0, -1324($fp)
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
	lw $t1, -3680($fp)
	li $t2, 0
	bne $t1, $t2, label705
	j label707
label707:
	li $t0, 58499
	sw $t0, -3684($fp)
	lw $t1, -3684($fp)
	li $t2, 0
	bne $t1, $t2, label705
	j label706
label705:
	li $t0, 1
	sw $t0, -3660($fp)
label706:
	addi $sp, $sp, -4
	lw $t0, -3660($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3688($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -3692($fp)
	lw $t0, -1276($fp)
	sw $t0, -3696($fp)
	li $t0, 4
	lw $t1, -3696($fp)
	mul $t0, $t0, $t1
	sw $t0, -3700($fp)
	lw $t0, -3700($fp)
	lw $t1, -3692($fp)
	add $t0, $t0, $t1
	sw $t0, -3704($fp)
	lw $t0, -3704($fp)
	lw $t1, 0($t0)
	sw $t1, -3708($fp)
	li $t0, 0
	sw $t0, -3712($fp)
	lw $t0, -1324($fp)
	sw $t0, -3716($fp)
	lw $t1, -3716($fp)
	li $t2, 0
	bne $t1, $t2, label709
	j label708
label708:
	li $t0, 1
	sw $t0, -3712($fp)
label709:
	lw $t0, -3708($fp)
	lw $t1, -3712($fp)
	mul $t0, $t0, $t1
	sw $t0, -3720($fp)
	lw $t0, -3688($fp)
	lw $t1, -3720($fp)
	add $t0, $t0, $t1
	sw $t0, -3724($fp)
	lw $t1, -3724($fp)
	li $t2, 0
	bne $t1, $t2, label702
	j label703
label702:
	lw $t0, 4($fp)
	sw $t0, -3728($fp)
	li $t0, 0
	sw $t0, -3732($fp)
	li $t0, 0
	sw $t0, -3736($fp)
	lw $t0, -1156($fp)
	sw $t0, -3740($fp)
	lw $t1, -3740($fp)
	li $t2, 0
	bne $t1, $t2, label716
	j label715
label715:
	li $t0, 1
	sw $t0, -3736($fp)
label716:
	lw $t0, -880($fp)
	sw $t0, -3744($fp)
	lw $t0, -3736($fp)
	lw $t1, -3744($fp)
	sub $t0, $t0, $t1
	sw $t0, -3748($fp)
	lw $t0, -1132($fp)
	sw $t0, -3752($fp)
	lw $t0, -1144($fp)
	sw $t0, -3756($fp)
	lw $t0, -3752($fp)
	lw $t1, -3756($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3760($fp)
	li $t0, 0
	sw $t0, -3764($fp)
	li $t0, 41046
	sw $t0, -3768($fp)
	li $t0, 60934
	sw $t0, -3772($fp)
	lw $t1, -3768($fp)
	lw $t2, -3772($fp)
	beq $t1, $t2, label717
	j label719
label719:
	lw $t0, -1264($fp)
	sw $t0, -3776($fp)
	lw $t1, -3776($fp)
	li $t2, 0
	bne $t1, $t2, label717
	j label718
label717:
	li $t0, 1
	sw $t0, -3764($fp)
label718:
	addi $sp, $sp, -4
	lw $t0, -3748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3764($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3780($fp)
	addi $sp, $sp, 16
	lw $t0, -1168($fp)
	sw $t0, -3784($fp)
	lw $t1, -3780($fp)
	lw $t2, -3784($fp)
	ble $t1, $t2, label713
	j label714
label713:
	li $t0, 1
	sw $t0, -3732($fp)
label714:
	addi $sp, $sp, -4
	lw $t0, -3732($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3788($fp)
	addi $sp, $sp, 8
	li $t0, 26419
	sw $t0, -3792($fp)
	lw $t0, -3788($fp)
	lw $t1, -3792($fp)
	sub $t0, $t0, $t1
	sw $t0, -3796($fp)
	li $t0, 0
	sw $t0, -3800($fp)
	li $t0, 30703
	sw $t0, -3804($fp)
	li $t0, 58573
	sw $t0, -3808($fp)
	lw $t1, -3804($fp)
	lw $t2, -3808($fp)
	blt $t1, $t2, label720
	j label721
label720:
	li $t0, 1
	sw $t0, -3800($fp)
label721:
	addi $sp, $sp, -4
	lw $t0, -3796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3800($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3812($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -3812($fp)
	sub $t0, $t0, $t1
	sw $t0, -3816($fp)
	lw $t0, -3728($fp)
	lw $t1, -3816($fp)
	mul $t0, $t0, $t1
	sw $t0, -3820($fp)
	lw $t1, -3820($fp)
	li $t2, 0
	bne $t1, $t2, label710
	j label711
label710:
	lw $t0, -1180($fp)
	sw $t0, -3824($fp)
	lw $t1, -3824($fp)
	li $t2, 0
	bne $t1, $t2, label722
	j label723
label722:
	li $t0, 15108
	sw $t0, -3836($fp)
	lw $t0, -3836($fp)
	sw $t0, -3840($fp)
	lw $t0, -3840($fp)
	sw $t0, -3844($fp)
	li $t0, 43225
	sw $t0, -3848($fp)
	lw $t0, -3848($fp)
	sw $t0, -3852($fp)
	lw $t0, -3852($fp)
	sw $t0, -3856($fp)
	li $t0, 51420
	sw $t0, -3860($fp)
	addi $t0, $fp, -3832
	sw $t0, -3864($fp)
	li $t0, 0
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
	li $t0, 23409
	sw $t0, -3884($fp)
	addi $t0, $fp, -3832
	sw $t0, -3888($fp)
	li $t0, 1
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
	li $t0, 0
	sw $t0, -3908($fp)
	lw $t0, -3840($fp)
	sw $t0, -3912($fp)
	lw $t1, -3912($fp)
	li $t2, 0
	bne $t1, $t2, label729
	j label728
label728:
	li $t0, 1
	sw $t0, -3908($fp)
label729:
	lw $t0, -3852($fp)
	sw $t0, -3916($fp)
	lw $t0, -3908($fp)
	lw $t1, -3916($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3920($fp)
	li $t0, 0
	sw $t0, -3924($fp)
	lw $t0, -1084($fp)
	sw $t0, -3928($fp)
	lw $t0, -1192($fp)
	sw $t0, -3932($fp)
	lw $t1, -3928($fp)
	lw $t2, -3932($fp)
	blt $t1, $t2, label732
	j label731
label732:
	li $t0, 58064
	sw $t0, -3936($fp)
	lw $t1, -3936($fp)
	li $t2, 0
	bne $t1, $t2, label730
	j label731
label730:
	li $t0, 1
	sw $t0, -3924($fp)
label731:
	addi $sp, $sp, -4
	lw $t0, -3924($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3940($fp)
	addi $sp, $sp, 8
	lw $t0, -3920($fp)
	lw $t1, -3940($fp)
	sub $t0, $t0, $t1
	sw $t0, -3944($fp)
	lw $t1, -3944($fp)
	li $t2, 0
	bne $t1, $t2, label725
	j label726
label725:
	lw $t0, -1204($fp)
	sw $t0, -3948($fp)
label726:
	addi $t0, $fp, -3832
	sw $t0, -3952($fp)
	li $t0, 0
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
	li $t0, 12627
	sw $t0, -3972($fp)
	li $t0, 17691
	sw $t0, -3976($fp)
	lw $t0, -3972($fp)
	lw $t1, -3976($fp)
	mul $t0, $t0, $t1
	sw $t0, -3980($fp)
	li $t0, 20738
	sw $t0, -3984($fp)
	lw $t0, -3980($fp)
	lw $t1, -3984($fp)
	add $t0, $t0, $t1
	sw $t0, -3988($fp)
	lw $t0, -1312($fp)
	sw $t0, -3992($fp)
	addi $sp, $sp, -4
	lw $t0, -3968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3992($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3996($fp)
	addi $sp, $sp, 16
	lw $t0, -3840($fp)
	sw $t0, -4000($fp)
	lw $t0, -4000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3852($fp)
	sw $t0, -4004($fp)
	lw $t0, -4004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3832
	sw $t0, -4008($fp)
	li $t0, 0
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
	lw $t0, -4024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3832
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
	lw $t0, -4044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4048($fp)
	li $t0, 0
	sw $t0, -4052($fp)
	li $t0, 41611
	sw $t0, -4056($fp)
	li $t0, 44912
	sw $t0, -4060($fp)
	lw $t1, -4056($fp)
	lw $t2, -4060($fp)
	ble $t1, $t2, label736
	j label737
label736:
	li $t0, 1
	sw $t0, -4052($fp)
label737:
	li $t0, 0
	sw $t0, -4064($fp)
	lw $t0, -880($fp)
	sw $t0, -4068($fp)
	li $t0, 45832
	sw $t0, -4072($fp)
	lw $t1, -4068($fp)
	lw $t2, -4072($fp)
	bne $t1, $t2, label738
	j label739
label738:
	li $t0, 1
	sw $t0, -4064($fp)
label739:
	addi $sp, $sp, -4
	lw $t0, -4052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4064($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4076($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -4076($fp)
	sub $t0, $t0, $t1
	sw $t0, -4080($fp)
	lw $t1, -4080($fp)
	li $t2, 0
	bne $t1, $t2, label735
	j label734
label735:
	addi $t0, $fp, -128
	sw $t0, -4084($fp)
	lw $t0, -1216($fp)
	sw $t0, -4088($fp)
	li $t0, 15276
	sw $t0, -4092($fp)
	lw $t0, -4088($fp)
	lw $t1, -4092($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4096($fp)
	li $t0, 4
	lw $t1, -4096($fp)
	mul $t0, $t0, $t1
	sw $t0, -4100($fp)
	lw $t0, -4100($fp)
	lw $t1, -4084($fp)
	add $t0, $t0, $t1
	sw $t0, -4104($fp)
	lw $t0, -4104($fp)
	lw $t1, 0($t0)
	sw $t1, -4108($fp)
	lw $t1, -4108($fp)
	li $t2, 0
	bne $t1, $t2, label733
	j label734
label733:
	li $t0, 1
	sw $t0, -4048($fp)
label734:
	lw $ra, -4($fp)
	lw $v0, -4048($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label724
label723:
	li $t0, 61277
	sw $t0, -4144($fp)
	lw $t0, -4144($fp)
	sw $t0, -4148($fp)
	lw $t0, -4148($fp)
	sw $t0, -4152($fp)
	li $t0, 48282
	sw $t0, -4156($fp)
	lw $t0, -4156($fp)
	sw $t0, -4160($fp)
	lw $t0, -4160($fp)
	sw $t0, -4164($fp)
	li $t0, 64710
	sw $t0, -4168($fp)
	lw $t0, -4168($fp)
	sw $t0, -4172($fp)
	lw $t0, -4172($fp)
	sw $t0, -4176($fp)
	li $t0, 1557
	sw $t0, -4180($fp)
	addi $t0, $fp, -4112
	sw $t0, -4184($fp)
	li $t0, 0
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
	li $t0, 22964
	sw $t0, -4204($fp)
	addi $t0, $fp, -4140
	sw $t0, -4208($fp)
	li $t0, 0
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
	li $t0, 62383
	sw $t0, -4228($fp)
	addi $t0, $fp, -4140
	sw $t0, -4232($fp)
	li $t0, 1
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
	li $t0, 38232
	sw $t0, -4252($fp)
	addi $t0, $fp, -4140
	sw $t0, -4256($fp)
	li $t0, 2
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
	li $t0, 48959
	sw $t0, -4276($fp)
	addi $t0, $fp, -4140
	sw $t0, -4280($fp)
	li $t0, 3
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
	li $t0, 54250
	sw $t0, -4300($fp)
	addi $t0, $fp, -4140
	sw $t0, -4304($fp)
	li $t0, 4
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
	li $t0, 1802
	sw $t0, -4324($fp)
	addi $t0, $fp, -4140
	sw $t0, -4328($fp)
	li $t0, 5
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
	li $t0, 47701
	sw $t0, -4348($fp)
	addi $t0, $fp, -4140
	sw $t0, -4352($fp)
	li $t0, 6
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
	lw $t0, -748($fp)
	sw $t0, -4372($fp)
	addi $t0, $fp, -128
	sw $t0, -4376($fp)
	lw $t0, -1252($fp)
	sw $t0, -4380($fp)
	li $t0, 4
	lw $t1, -4380($fp)
	mul $t0, $t0, $t1
	sw $t0, -4384($fp)
	lw $t0, -4384($fp)
	lw $t1, -4376($fp)
	add $t0, $t0, $t1
	sw $t0, -4388($fp)
	lw $t0, -4388($fp)
	lw $t1, 0($t0)
	sw $t1, -4392($fp)
	lw $t0, -4372($fp)
	lw $t1, -4392($fp)
	mul $t0, $t0, $t1
	sw $t0, -4396($fp)
	addi $t0, $fp, -92
	sw $t0, -4400($fp)
	li $t0, 1
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
	lw $t0, -4396($fp)
	lw $t1, -4416($fp)
	mul $t0, $t0, $t1
	sw $t0, -4420($fp)
	li $t0, 0
	lw $t1, -4420($fp)
	sub $t0, $t0, $t1
	sw $t0, -4424($fp)
	addi $t0, $fp, -4112
	sw $t0, -4428($fp)
	li $t0, 0
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
	lw $t1, -4444($fp)
	sub $t0, $t0, $t1
	sw $t0, -4448($fp)
	lw $t0, -4424($fp)
	lw $t1, -4448($fp)
	add $t0, $t0, $t1
	sw $t0, -4452($fp)
	addi $t0, $fp, -128
	sw $t0, -4456($fp)
	lw $t0, -1264($fp)
	sw $t0, -4460($fp)
	li $t0, 4
	lw $t1, -4460($fp)
	mul $t0, $t0, $t1
	sw $t0, -4464($fp)
	lw $t0, -4464($fp)
	lw $t1, -4456($fp)
	add $t0, $t0, $t1
	sw $t0, -4468($fp)
	lw $t0, -4468($fp)
	lw $t1, 0($t0)
	sw $t1, -4472($fp)
	li $t0, 27903
	sw $t0, -4476($fp)
	lw $t0, -4472($fp)
	lw $t1, -4476($fp)
	mul $t0, $t0, $t1
	sw $t0, -4480($fp)
	lw $t1, -4480($fp)
	li $t2, 0
	bne $t1, $t2, label740
	j label741
label740:
	li $t0, 0
	sw $t0, -4484($fp)
	li $t0, 0
	sw $t0, -4488($fp)
	lw $t0, -1252($fp)
	sw $t0, -4492($fp)
	lw $t1, -4492($fp)
	li $t2, 0
	bne $t1, $t2, label746
	j label745
label745:
	li $t0, 1
	sw $t0, -4488($fp)
label746:
	addi $t0, $fp, -76
	sw $t0, -4496($fp)
	li $t0, 4
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
	li $t0, 5592
	sw $t0, -4516($fp)
	li $t0, 0
	lw $t1, -4516($fp)
	sub $t0, $t0, $t1
	sw $t0, -4520($fp)
	lw $t0, -4512($fp)
	lw $t1, -4520($fp)
	add $t0, $t0, $t1
	sw $t0, -4524($fp)
	lw $t1, -4488($fp)
	lw $t2, -4524($fp)
	bne $t1, $t2, label743
	j label744
label743:
	li $t0, 1
	sw $t0, -4484($fp)
label744:
	j label742
label741:
	li $t0, 0
	sw $t0, -4528($fp)
	li $t0, 0
	sw $t0, -4532($fp)
	li $t0, 0
	sw $t0, -4536($fp)
	li $t0, 0
	sw $t0, -4540($fp)
	li $t0, 61241
	sw $t0, -4544($fp)
	lw $t1, -4544($fp)
	li $t2, 0
	bne $t1, $t2, label754
	j label753
label753:
	li $t0, 1
	sw $t0, -4540($fp)
label754:
	lw $t0, -1276($fp)
	sw $t0, -4548($fp)
	lw $t1, -4540($fp)
	lw $t2, -4548($fp)
	ble $t1, $t2, label751
	j label752
label751:
	li $t0, 1
	sw $t0, -4536($fp)
label752:
	li $t0, 0
	sw $t0, -4552($fp)
	li $t0, 53041
	sw $t0, -4556($fp)
	lw $t1, -4556($fp)
	li $t2, 0
	bne $t1, $t2, label756
	j label755
label755:
	li $t0, 1
	sw $t0, -4552($fp)
label756:
	lw $t0, -1336($fp)
	sw $t0, -4560($fp)
	lw $t0, -4552($fp)
	lw $t1, -4560($fp)
	mul $t0, $t0, $t1
	sw $t0, -4564($fp)
	lw $t0, -844($fp)
	sw $t0, -4568($fp)
	addi $sp, $sp, -4
	lw $t0, -4536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4568($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4572($fp)
	addi $sp, $sp, 16
	li $t0, 63656
	sw $t0, -4576($fp)
	li $t0, 0
	lw $t1, -4576($fp)
	sub $t0, $t0, $t1
	sw $t0, -4580($fp)
	lw $t0, -4572($fp)
	lw $t1, -4580($fp)
	sub $t0, $t0, $t1
	sw $t0, -4584($fp)
	li $t0, 133
	sw $t0, -4588($fp)
	lw $t1, -4584($fp)
	lw $t2, -4588($fp)
	ble $t1, $t2, label749
	j label750
label749:
	li $t0, 1
	sw $t0, -4532($fp)
label750:
	li $t0, 13396
	sw $t0, -4592($fp)
	lw $t1, -4532($fp)
	lw $t2, -4592($fp)
	bge $t1, $t2, label747
	j label748
label747:
	li $t0, 1
	sw $t0, -4528($fp)
label748:
	li $t0, 0
	sw $t0, -4596($fp)
	li $t0, 0
	sw $t0, -4600($fp)
	lw $t0, -1180($fp)
	sw $t0, -4604($fp)
	li $t0, 0
	lw $t1, -4604($fp)
	sub $t0, $t0, $t1
	sw $t0, -4608($fp)
	lw $t1, -4608($fp)
	li $t2, 0
	bne $t1, $t2, label760
	j label759
label759:
	li $t0, 1
	sw $t0, -4600($fp)
label760:
	li $t0, 0
	sw $t0, -4612($fp)
	li $t0, 0
	sw $t0, -4616($fp)
	lw $t0, -820($fp)
	sw $t0, -4620($fp)
	li $t0, 18859
	sw $t0, -4624($fp)
	lw $t1, -4620($fp)
	lw $t2, -4624($fp)
	blt $t1, $t2, label763
	j label764
label763:
	li $t0, 1
	sw $t0, -4616($fp)
label764:
	li $t0, 59082
	sw $t0, -4628($fp)
	lw $t0, -616($fp)
	sw $t0, -4632($fp)
	lw $t0, -4628($fp)
	lw $t1, -4632($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4636($fp)
	lw $t1, -4616($fp)
	lw $t2, -4636($fp)
	blt $t1, $t2, label761
	j label762
label761:
	li $t0, 1
	sw $t0, -4612($fp)
label762:
	lw $t1, -4600($fp)
	lw $t2, -4612($fp)
	bne $t1, $t2, label757
	j label758
label757:
	li $t0, 1
	sw $t0, -4596($fp)
label758:
label742:
	li $t0, 44768
	sw $t0, -4640($fp)
	lw $t0, -4640($fp)
	sw $t0, -4644($fp)
	lw $t0, -4644($fp)
	sw $t0, -4648($fp)
	li $t0, 64691
	sw $t0, -4652($fp)
	lw $t0, -4652($fp)
	sw $t0, -4656($fp)
	lw $t0, -4656($fp)
	sw $t0, -4660($fp)
	li $t0, 0
	sw $t0, -4664($fp)
	li $t0, 0
	sw $t0, -4668($fp)
	lw $t0, -1204($fp)
	sw $t0, -4672($fp)
	lw $t1, -4672($fp)
	li $t2, 0
	bne $t1, $t2, label770
	j label769
label769:
	li $t0, 1
	sw $t0, -4668($fp)
label770:
	li $t0, 30899
	sw $t0, -4676($fp)
	lw $t0, -4668($fp)
	lw $t1, -4676($fp)
	add $t0, $t0, $t1
	sw $t0, -4680($fp)
	li $t0, 0
	sw $t0, -4684($fp)
	li $t0, 0
	sw $t0, -4688($fp)
	li $t0, 24145
	sw $t0, -4692($fp)
	lw $t1, -4692($fp)
	li $t2, 0
	bne $t1, $t2, label774
	j label773
label773:
	li $t0, 1
	sw $t0, -4688($fp)
label774:
	li $t0, 14431
	sw $t0, -4696($fp)
	lw $t1, -4688($fp)
	lw $t2, -4696($fp)
	bne $t1, $t2, label771
	j label772
label771:
	li $t0, 1
	sw $t0, -4684($fp)
label772:
	li $t0, 0
	sw $t0, -4700($fp)
	lw $t0, -832($fp)
	sw $t0, -4704($fp)
	lw $t1, -4704($fp)
	li $t2, 0
	bne $t1, $t2, label778
	j label777
label778:
	lw $t0, -1288($fp)
	sw $t0, -4708($fp)
	lw $t1, -4708($fp)
	li $t2, 0
	bne $t1, $t2, label775
	j label777
label777:
	lw $t0, -1312($fp)
	sw $t0, -4712($fp)
	lw $t1, -4712($fp)
	li $t2, 0
	bne $t1, $t2, label775
	j label776
label775:
	li $t0, 1
	sw $t0, -4700($fp)
label776:
	li $t0, 0
	sw $t0, -4716($fp)
	li $t0, 35157
	sw $t0, -4720($fp)
	lw $t1, -4720($fp)
	li $t2, 0
	bne $t1, $t2, label780
	j label779
label779:
	li $t0, 1
	sw $t0, -4716($fp)
label780:
	lw $t0, -760($fp)
	sw $t0, -4724($fp)
	lw $t0, -4716($fp)
	lw $t1, -4724($fp)
	add $t0, $t0, $t1
	sw $t0, -4728($fp)
	addi $sp, $sp, -4
	lw $t0, -4700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4728($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4732($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -4680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4732($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4736($fp)
	addi $sp, $sp, 16
	lw $t1, -4736($fp)
	li $t2, 0
	bne $t1, $t2, label768
	j label767
label768:
	li $t0, 6891
	sw $t0, -4740($fp)
	lw $t0, -4644($fp)
	sw $t0, -4744($fp)
	lw $t0, -4740($fp)
	lw $t1, -4744($fp)
	add $t0, $t0, $t1
	sw $t0, -4748($fp)
	lw $t0, -1180($fp)
	sw $t0, -4752($fp)
	lw $t0, -4748($fp)
	lw $t1, -4752($fp)
	sub $t0, $t0, $t1
	sw $t0, -4756($fp)
	lw $t1, -4756($fp)
	li $t2, 0
	bne $t1, $t2, label765
	j label767
label767:
	li $t0, 0
	sw $t0, -4760($fp)
	li $t0, 0
	sw $t0, -4764($fp)
	li $t0, 29856
	sw $t0, -4768($fp)
	li $t0, 10453
	sw $t0, -4772($fp)
	lw $t0, -4768($fp)
	lw $t1, -4772($fp)
	sub $t0, $t0, $t1
	sw $t0, -4776($fp)
	lw $t0, -4656($fp)
	sw $t0, -4780($fp)
	lw $t1, -4776($fp)
	lw $t2, -4780($fp)
	bge $t1, $t2, label783
	j label784
label783:
	li $t0, 1
	sw $t0, -4764($fp)
label784:
	addi $sp, $sp, -4
	lw $t0, -4764($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4784($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -4784($fp)
	sub $t0, $t0, $t1
	sw $t0, -4788($fp)
	li $t0, 0
	sw $t0, -4792($fp)
	li $t0, 13605
	sw $t0, -4796($fp)
	li $t0, 32456
	sw $t0, -4800($fp)
	lw $t0, -4796($fp)
	lw $t1, -4800($fp)
	add $t0, $t0, $t1
	sw $t0, -4804($fp)
	lw $t0, -1324($fp)
	sw $t0, -4808($fp)
	lw $t1, -4804($fp)
	lw $t2, -4808($fp)
	bge $t1, $t2, label785
	j label786
label785:
	li $t0, 1
	sw $t0, -4792($fp)
label786:
	addi $sp, $sp, -4
	lw $t0, -4788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4792($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4812($fp)
	addi $sp, $sp, 12
	lw $t1, -4812($fp)
	li $t2, 0
	bne $t1, $t2, label782
	j label781
label781:
	li $t0, 1
	sw $t0, -4760($fp)
label782:
	li $t0, 5152
	sw $t0, -4816($fp)
	lw $t0, -4760($fp)
	lw $t1, -4816($fp)
	mul $t0, $t0, $t1
	sw $t0, -4820($fp)
	lw $t1, -4820($fp)
	li $t2, 0
	bne $t1, $t2, label765
	j label766
label765:
	li $t0, 1
	sw $t0, -4664($fp)
label766:
	li $t0, 0
	sw $t0, -4824($fp)
	lw $t0, -1456($fp)
	sw $t0, -4828($fp)
	li $t0, 0
	sw $t0, -4832($fp)
	li $t0, 64703
	sw $t0, -4836($fp)
	li $t0, 6954
	sw $t0, -4840($fp)
	lw $t0, -4836($fp)
	lw $t1, -4840($fp)
	add $t0, $t0, $t1
	sw $t0, -4844($fp)
	lw $t1, -4844($fp)
	li $t2, 0
	bne $t1, $t2, label791
	j label790
label791:
	lw $t0, -1480($fp)
	sw $t0, -4848($fp)
	lw $t1, -4848($fp)
	li $t2, 0
	bne $t1, $t2, label789
	j label790
label789:
	li $t0, 1
	sw $t0, -4832($fp)
label790:
	li $t0, 0
	sw $t0, -4852($fp)
	lw $t0, -1216($fp)
	sw $t0, -4856($fp)
	li $t0, 13279
	sw $t0, -4860($fp)
	lw $t0, -4856($fp)
	lw $t1, -4860($fp)
	add $t0, $t0, $t1
	sw $t0, -4864($fp)
	lw $t0, -1216($fp)
	sw $t0, -4868($fp)
	lw $t1, -4864($fp)
	lw $t2, -4868($fp)
	blt $t1, $t2, label792
	j label793
label792:
	li $t0, 1
	sw $t0, -4852($fp)
label793:
	addi $sp, $sp, -4
	lw $t0, -4832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4852($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4872($fp)
	addi $sp, $sp, 12
	lw $t1, -4828($fp)
	lw $t2, -4872($fp)
	bne $t1, $t2, label787
	j label788
label787:
	li $t0, 1
	sw $t0, -4824($fp)
label788:
	li $t0, 0
	sw $t0, -4876($fp)
	lw $t0, -1432($fp)
	sw $t0, -4880($fp)
	lw $t0, -1204($fp)
	sw $t0, -4884($fp)
	lw $t1, -4880($fp)
	lw $t2, -4884($fp)
	bgt $t1, $t2, label794
	j label795
label794:
	li $t0, 1
	sw $t0, -4876($fp)
label795:
	li $t0, 60980
	sw $t0, -4888($fp)
	li $t0, 46380
	sw $t0, -4892($fp)
	lw $t0, -4888($fp)
	lw $t1, -4892($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4896($fp)
	lw $t0, -616($fp)
	sw $t0, -4900($fp)
	lw $t0, -4896($fp)
	lw $t1, -4900($fp)
	sub $t0, $t0, $t1
	sw $t0, -4904($fp)
	li $t0, 39459
	sw $t0, -4908($fp)
	lw $t0, -4904($fp)
	lw $t1, -4908($fp)
	sub $t0, $t0, $t1
	sw $t0, -4912($fp)
	lw $t0, -4912($fp)
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	sw $t0, -4916($fp)
	addi $t0, $fp, -4140
	sw $t0, -4920($fp)
	lw $t0, -1192($fp)
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
	addi $t0, $fp, -12
	sw $t0, -4940($fp)
	lw $t0, -868($fp)
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
	lw $t0, -4936($fp)
	lw $t1, -4956($fp)
	mul $t0, $t0, $t1
	sw $t0, -4960($fp)
	li $t0, 0
	lw $t1, -4960($fp)
	sub $t0, $t0, $t1
	sw $t0, -4964($fp)
	lw $t0, -868($fp)
	sw $t0, -4968($fp)
	li $t0, 36182
	sw $t0, -4972($fp)
	lw $t0, -4968($fp)
	lw $t1, -4972($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4976($fp)
	lw $t0, 12($fp)
	sw $t0, -4980($fp)
	lw $t0, -4976($fp)
	lw $t1, -4980($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4984($fp)
	lw $t0, -4964($fp)
	lw $t1, -4984($fp)
	add $t0, $t0, $t1
	sw $t0, -4988($fp)
	li $t0, 3568
	sw $t0, -4992($fp)
	li $t0, 0
	lw $t1, -4992($fp)
	sub $t0, $t0, $t1
	sw $t0, -4996($fp)
	lw $t1, -4988($fp)
	lw $t2, -4996($fp)
	ble $t1, $t2, label796
	j label797
label796:
label799:
	lw $t0, -1216($fp)
	sw $t0, -5000($fp)
	li $t0, 1826
	sw $t0, -5004($fp)
	lw $t0, -5004($fp)
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	sw $t0, -5008($fp)
	addi $sp, $sp, -4
	lw $t0, -5000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5008($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5012($fp)
	addi $sp, $sp, 12
	li $t0, 7418
	sw $t0, -5016($fp)
	lw $t0, -5016($fp)
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	sw $t0, -5020($fp)
	li $t0, 0
	sw $t0, -5024($fp)
	li $t0, 0
	sw $t0, -5028($fp)
	lw $t0, -760($fp)
	sw $t0, -5032($fp)
	lw $t0, -448($fp)
	sw $t0, -5036($fp)
	lw $t1, -5032($fp)
	lw $t2, -5036($fp)
	bne $t1, $t2, label804
	j label805
label804:
	li $t0, 1
	sw $t0, -5028($fp)
label805:
	lw $t0, -880($fp)
	sw $t0, -5040($fp)
	lw $t1, -5028($fp)
	lw $t2, -5040($fp)
	beq $t1, $t2, label802
	j label803
label802:
	li $t0, 1
	sw $t0, -5024($fp)
label803:
	li $t0, 37804
	sw $t0, -5044($fp)
	li $t0, 41400
	sw $t0, -5048($fp)
	lw $t0, -5044($fp)
	lw $t1, -5048($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5052($fp)
	lw $t0, -1300($fp)
	sw $t0, -5056($fp)
	lw $t0, -5052($fp)
	lw $t1, -5056($fp)
	sub $t0, $t0, $t1
	sw $t0, -5060($fp)
	addi $sp, $sp, -4
	lw $t0, -5024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5060($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5064($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -5020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5064($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5068($fp)
	addi $sp, $sp, 12
	li $t0, 25309
	sw $t0, -5072($fp)
	lw $t0, -5068($fp)
	lw $t1, -5072($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5076($fp)
	lw $t0, -628($fp)
	sw $t0, -5080($fp)
	li $t0, 0
	lw $t1, -5080($fp)
	sub $t0, $t0, $t1
	sw $t0, -5084($fp)
	lw $t0, -5076($fp)
	lw $t1, -5084($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5088($fp)
	lw $t0, -5012($fp)
	lw $t1, -5088($fp)
	sub $t0, $t0, $t1
	sw $t0, -5092($fp)
	lw $t1, -5092($fp)
	li $t2, 0
	bne $t1, $t2, label800
	j label801
label800:
	li $t0, 0
	sw $t0, -5096($fp)
	lw $t0, -4148($fp)
	sw $t0, -5100($fp)
	lw $t1, -5100($fp)
	li $t2, 0
	bne $t1, $t2, label808
	j label807
label808:
	li $t0, 0
	sw $t0, -5104($fp)
	li $t0, 5538
	sw $t0, -5108($fp)
	lw $t1, -5108($fp)
	li $t2, 0
	bne $t1, $t2, label810
	j label811
label811:
	li $t0, 25442
	sw $t0, -5112($fp)
	lw $t1, -5112($fp)
	li $t2, 0
	bne $t1, $t2, label809
	j label810
label809:
	li $t0, 1
	sw $t0, -5104($fp)
label810:
	li $t0, 0
	sw $t0, -5116($fp)
	lw $t0, -4160($fp)
	sw $t0, -5120($fp)
	lw $t0, -832($fp)
	sw $t0, -5124($fp)
	lw $t1, -5120($fp)
	lw $t2, -5124($fp)
	bne $t1, $t2, label812
	j label813
label812:
	li $t0, 1
	sw $t0, -5116($fp)
label813:
	li $t0, 37105
	sw $t0, -5128($fp)
	addi $sp, $sp, -4
	lw $t0, -5104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5128($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5132($fp)
	addi $sp, $sp, 16
	lw $t0, -4172($fp)
	sw $t0, -5136($fp)
	lw $t0, -5132($fp)
	lw $t1, -5136($fp)
	add $t0, $t0, $t1
	sw $t0, -5140($fp)
	li $t0, 0
	sw $t0, -5144($fp)
	li $t0, 50502
	sw $t0, -5148($fp)
	lw $t1, -5148($fp)
	li $t2, 0
	bne $t1, $t2, label815
	j label814
label814:
	li $t0, 1
	sw $t0, -5144($fp)
label815:
	lw $t1, -5140($fp)
	lw $t2, -5144($fp)
	beq $t1, $t2, label806
	j label807
label806:
	li $t0, 1
	sw $t0, -5096($fp)
label807:
	j label799
label801:
	j label798
label797:
	addi $t0, $fp, -124
	sw $t0, -5152($fp)
	lw $t0, -640($fp)
	sw $t0, -5156($fp)
	li $t0, 0
	lw $t1, -5156($fp)
	sub $t0, $t0, $t1
	sw $t0, -5160($fp)
	lw $t0, -460($fp)
	sw $t0, -5164($fp)
	lw $t0, -5160($fp)
	lw $t1, -5164($fp)
	sub $t0, $t0, $t1
	sw $t0, -5168($fp)
	li $t0, 4
	lw $t1, -5168($fp)
	mul $t0, $t0, $t1
	sw $t0, -5172($fp)
	lw $t0, -5172($fp)
	lw $t1, -5152($fp)
	add $t0, $t0, $t1
	sw $t0, -5176($fp)
	lw $t0, -5176($fp)
	lw $t1, 0($t0)
	sw $t1, -5180($fp)
	addi $t0, $fp, -92
	sw $t0, -5184($fp)
	li $t0, 2
	sw $t0, -5188($fp)
	li $t0, 4
	lw $t1, -5188($fp)
	mul $t0, $t0, $t1
	sw $t0, -5192($fp)
	lw $t0, -5192($fp)
	lw $t1, -5184($fp)
	add $t0, $t0, $t1
	sw $t0, -5196($fp)
	lw $t0, -5196($fp)
	lw $t1, 0($t0)
	sw $t1, -5200($fp)
	lw $t0, -5180($fp)
	lw $t1, -5200($fp)
	mul $t0, $t0, $t1
	sw $t0, -5204($fp)
	lw $ra, -4($fp)
	lw $v0, -5204($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label798:
label724:
	j label712
label711:
	li $t0, 23553
	sw $t0, -5236($fp)
	addi $t0, $fp, -5232
	sw $t0, -5240($fp)
	li $t0, 0
	sw $t0, -5244($fp)
	lw $t0, -5244($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5248($fp)
	lw $t0, -5240($fp)
	lw $t1, -5248($fp)
	add $t0, $t0, $t1
	sw $t0, -5252($fp)
	lw $t0, -5236($fp)
	lw $t1, -5252($fp)
	sw $t0, 0($t1)
	lw $t0, -5252($fp)
	lw $t1, 0($t0)
	sw $t1, -5256($fp)
	li $t0, 54146
	sw $t0, -5260($fp)
	addi $t0, $fp, -5232
	sw $t0, -5264($fp)
	li $t0, 1
	sw $t0, -5268($fp)
	lw $t0, -5268($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5272($fp)
	lw $t0, -5264($fp)
	lw $t1, -5272($fp)
	add $t0, $t0, $t1
	sw $t0, -5276($fp)
	lw $t0, -5260($fp)
	lw $t1, -5276($fp)
	sw $t0, 0($t1)
	lw $t0, -5276($fp)
	lw $t1, 0($t0)
	sw $t1, -5280($fp)
	li $t0, 53879
	sw $t0, -5284($fp)
	addi $t0, $fp, -5232
	sw $t0, -5288($fp)
	li $t0, 2
	sw $t0, -5292($fp)
	lw $t0, -5292($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5296($fp)
	lw $t0, -5288($fp)
	lw $t1, -5296($fp)
	add $t0, $t0, $t1
	sw $t0, -5300($fp)
	lw $t0, -5284($fp)
	lw $t1, -5300($fp)
	sw $t0, 0($t1)
	lw $t0, -5300($fp)
	lw $t1, 0($t0)
	sw $t1, -5304($fp)
	li $t0, 37984
	sw $t0, -5308($fp)
	addi $t0, $fp, -5232
	sw $t0, -5312($fp)
	li $t0, 3
	sw $t0, -5316($fp)
	lw $t0, -5316($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5320($fp)
	lw $t0, -5312($fp)
	lw $t1, -5320($fp)
	add $t0, $t0, $t1
	sw $t0, -5324($fp)
	lw $t0, -5308($fp)
	lw $t1, -5324($fp)
	sw $t0, 0($t1)
	lw $t0, -5324($fp)
	lw $t1, 0($t0)
	sw $t1, -5328($fp)
	li $t0, 19509
	sw $t0, -5332($fp)
	addi $t0, $fp, -5232
	sw $t0, -5336($fp)
	li $t0, 4
	sw $t0, -5340($fp)
	lw $t0, -5340($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5344($fp)
	lw $t0, -5336($fp)
	lw $t1, -5344($fp)
	add $t0, $t0, $t1
	sw $t0, -5348($fp)
	lw $t0, -5332($fp)
	lw $t1, -5348($fp)
	sw $t0, 0($t1)
	lw $t0, -5348($fp)
	lw $t1, 0($t0)
	sw $t1, -5352($fp)
	li $t0, 60771
	sw $t0, -5356($fp)
	addi $t0, $fp, -5232
	sw $t0, -5360($fp)
	li $t0, 5
	sw $t0, -5364($fp)
	lw $t0, -5364($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5368($fp)
	lw $t0, -5360($fp)
	lw $t1, -5368($fp)
	add $t0, $t0, $t1
	sw $t0, -5372($fp)
	lw $t0, -5356($fp)
	lw $t1, -5372($fp)
	sw $t0, 0($t1)
	lw $t0, -5372($fp)
	lw $t1, 0($t0)
	sw $t1, -5376($fp)
	li $t0, 51590
	sw $t0, -5380($fp)
	addi $t0, $fp, -5232
	sw $t0, -5384($fp)
	li $t0, 6
	sw $t0, -5388($fp)
	lw $t0, -5388($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5392($fp)
	lw $t0, -5384($fp)
	lw $t1, -5392($fp)
	add $t0, $t0, $t1
	sw $t0, -5396($fp)
	lw $t0, -5380($fp)
	lw $t1, -5396($fp)
	sw $t0, 0($t1)
	lw $t0, -5396($fp)
	lw $t1, 0($t0)
	sw $t1, -5400($fp)
	li $t0, 51965
	sw $t0, -5404($fp)
	lw $t0, -5404($fp)
	sw $t0, -5408($fp)
	lw $t0, -5408($fp)
	sw $t0, -5412($fp)
	li $t0, 25091
	sw $t0, -5416($fp)
	lw $t0, -5416($fp)
	sw $t0, -5420($fp)
	lw $t0, -5420($fp)
	sw $t0, -5424($fp)
	lw $t0, -808($fp)
	sw $t0, -5428($fp)
	li $t0, 62043
	sw $t0, -5432($fp)
	lw $t0, -5428($fp)
	lw $t1, -5432($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5436($fp)
	addi $t0, $fp, -128
	sw $t0, -5440($fp)
	lw $t0, -5420($fp)
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
	li $t0, 57117
	sw $t0, -5460($fp)
	li $t0, 38370
	sw $t0, -5464($fp)
	lw $t0, -5460($fp)
	lw $t1, -5464($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5468($fp)
	lw $t0, -5456($fp)
	lw $t1, -5468($fp)
	add $t0, $t0, $t1
	sw $t0, -5472($fp)
	lw $t1, -5436($fp)
	lw $t2, -5472($fp)
	beq $t1, $t2, label816
	j label817
label816:
label819:
	li $t0, 61210
	sw $t0, -5476($fp)
	li $t0, 33815
	sw $t0, -5480($fp)
	li $t0, 0
	lw $t1, -5480($fp)
	sub $t0, $t0, $t1
	sw $t0, -5484($fp)
	li $t0, 0
	lw $t1, -5484($fp)
	sub $t0, $t0, $t1
	sw $t0, -5488($fp)
	li $t0, 64071
	sw $t0, -5492($fp)
	lw $t0, -640($fp)
	sw $t0, -5496($fp)
	lw $t0, -5492($fp)
	lw $t1, -5496($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5500($fp)
	li $t0, 0
	lw $t1, -5500($fp)
	sub $t0, $t0, $t1
	sw $t0, -5504($fp)
	addi $sp, $sp, -4
	lw $t0, -5488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5504($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5508($fp)
	addi $sp, $sp, 12
	lw $t1, -5476($fp)
	lw $t2, -5508($fp)
	bgt $t1, $t2, label820
	j label822
label822:
	addi $t0, $fp, -124
	sw $t0, -5512($fp)
	li $t0, 2
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
	bne $t1, $t2, label823
	j label821
label823:
	lw $t0, -640($fp)
	sw $t0, -5532($fp)
	lw $t1, -5532($fp)
	li $t2, 0
	bne $t1, $t2, label820
	j label821
label820:
	li $t0, 0
	sw $t0, -5536($fp)
	li $t0, 4461
	sw $t0, -5540($fp)
	li $t0, 45622
	sw $t0, -5544($fp)
	lw $t1, -5540($fp)
	lw $t2, -5544($fp)
	bge $t1, $t2, label827
	j label829
label829:
	li $t0, 39820
	sw $t0, -5548($fp)
	lw $t1, -5548($fp)
	li $t2, 0
	bne $t1, $t2, label827
	j label828
label827:
	li $t0, 1
	sw $t0, -5536($fp)
label828:
	lw $t0, -1084($fp)
	sw $t0, -5552($fp)
	addi $sp, $sp, -4
	lw $t0, -5536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5552($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5556($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -5556($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5560($fp)
	addi $sp, $sp, 8
	lw $t1, -5560($fp)
	li $t2, 0
	bne $t1, $t2, label824
	j label825
label824:
	li $t0, 0
	sw $t0, -5564($fp)
	lw $t0, -1492($fp)
	sw $t0, -5568($fp)
	lw $t1, -5568($fp)
	li $t2, 0
	bne $t1, $t2, label832
	j label830
label832:
	li $t0, 2039
	sw $t0, -5572($fp)
	li $t0, 0
	sw $t0, -5576($fp)
	li $t0, 47238
	sw $t0, -5580($fp)
	lw $t0, -1480($fp)
	sw $t0, -5584($fp)
	lw $t1, -5580($fp)
	lw $t2, -5584($fp)
	bne $t1, $t2, label833
	j label834
label833:
	li $t0, 1
	sw $t0, -5576($fp)
label834:
	li $t0, 0
	sw $t0, -5588($fp)
	lw $t0, -880($fp)
	sw $t0, -5592($fp)
	lw $t0, -1492($fp)
	sw $t0, -5596($fp)
	lw $t0, -5592($fp)
	lw $t1, -5596($fp)
	add $t0, $t0, $t1
	sw $t0, -5600($fp)
	lw $t1, -5600($fp)
	li $t2, 0
	bne $t1, $t2, label837
	j label836
label837:
	li $t0, 21486
	sw $t0, -5604($fp)
	lw $t1, -5604($fp)
	li $t2, 0
	bne $t1, $t2, label835
	j label836
label835:
	li $t0, 1
	sw $t0, -5588($fp)
label836:
	addi $sp, $sp, -4
	lw $t0, -5572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5588($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5608($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -5612($fp)
	li $t0, 0
	sw $t0, -5616($fp)
	lw $t0, -628($fp)
	sw $t0, -5620($fp)
	li $t0, 42265
	sw $t0, -5624($fp)
	lw $t1, -5620($fp)
	lw $t2, -5624($fp)
	beq $t1, $t2, label840
	j label841
label840:
	li $t0, 1
	sw $t0, -5616($fp)
label841:
	lw $t0, -1096($fp)
	sw $t0, -5628($fp)
	lw $t1, -5616($fp)
	lw $t2, -5628($fp)
	bne $t1, $t2, label838
	j label839
label838:
	li $t0, 1
	sw $t0, -5612($fp)
label839:
	addi $sp, $sp, -4
	lw $t0, -5608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5612($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5632($fp)
	addi $sp, $sp, 12
	lw $t0, -880($fp)
	sw $t0, -5636($fp)
	lw $t0, -5632($fp)
	lw $t1, -5636($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5640($fp)
	lw $t1, -5640($fp)
	li $t2, 0
	bne $t1, $t2, label830
	j label831
label830:
	li $t0, 1
	sw $t0, -5564($fp)
label831:
	j label826
label825:
	li $t0, 0
	sw $t0, -5644($fp)
	lw $t0, -1252($fp)
	sw $t0, -5648($fp)
	addi $t0, $fp, -92
	sw $t0, -5652($fp)
	li $t0, 0
	sw $t0, -5656($fp)
	li $t0, 58592
	sw $t0, -5660($fp)
	lw $t1, -5660($fp)
	li $t2, 0
	bne $t1, $t2, label844
	j label846
label846:
	lw $t0, -448($fp)
	sw $t0, -5664($fp)
	lw $t1, -5664($fp)
	li $t2, 0
	bne $t1, $t2, label844
	j label845
label844:
	li $t0, 1
	sw $t0, -5656($fp)
label845:
	li $t0, 4
	lw $t1, -5656($fp)
	mul $t0, $t0, $t1
	sw $t0, -5668($fp)
	lw $t0, -5668($fp)
	lw $t1, -5652($fp)
	add $t0, $t0, $t1
	sw $t0, -5672($fp)
	lw $t0, -5672($fp)
	lw $t1, 0($t0)
	sw $t1, -5676($fp)
	lw $t1, -5648($fp)
	lw $t2, -5676($fp)
	bne $t1, $t2, label842
	j label843
label842:
	li $t0, 1
	sw $t0, -5644($fp)
label843:
label826:
	j label819
label821:
	j label818
label817:
label847:
	lw $t0, -1216($fp)
	sw $t0, -5680($fp)
	lw $t1, -5680($fp)
	li $t2, 0
	bne $t1, $t2, label849
	j label848
label848:
	li $t0, 0
	sw $t0, -5684($fp)
	li $t0, 0
	sw $t0, -5688($fp)
	lw $t0, -856($fp)
	sw $t0, -5692($fp)
	li $t0, 0
	lw $t1, -5692($fp)
	sub $t0, $t0, $t1
	sw $t0, -5696($fp)
	li $t0, 43558
	sw $t0, -5700($fp)
	lw $t1, -5696($fp)
	lw $t2, -5700($fp)
	bne $t1, $t2, label852
	j label853
label852:
	li $t0, 1
	sw $t0, -5688($fp)
label853:
	li $t0, 0
	sw $t0, -5704($fp)
	li $t0, 52776
	sw $t0, -5708($fp)
	li $t0, 27481
	sw $t0, -5712($fp)
	lw $t1, -5708($fp)
	lw $t2, -5712($fp)
	bgt $t1, $t2, label856
	j label855
label856:
	lw $t0, -748($fp)
	sw $t0, -5716($fp)
	lw $t1, -5716($fp)
	li $t2, 0
	bne $t1, $t2, label854
	j label855
label854:
	li $t0, 1
	sw $t0, -5704($fp)
label855:
	addi $sp, $sp, -4
	lw $t0, -5688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5704($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5720($fp)
	addi $sp, $sp, 12
	lw $t1, -5720($fp)
	li $t2, 0
	bne $t1, $t2, label851
	j label850
label850:
	li $t0, 1
	sw $t0, -5684($fp)
label851:
	li $t0, 11638
	sw $t0, -5724($fp)
	lw $t0, -5684($fp)
	lw $t1, -5724($fp)
	sub $t0, $t0, $t1
	sw $t0, -5728($fp)
	j label847
label849:
label818:
	lw $t0, -640($fp)
	sw $t0, -5732($fp)
	li $t0, 0
	sw $t0, -5736($fp)
	li $t0, 0
	sw $t0, -5740($fp)
	li $t0, 46470
	sw $t0, -5744($fp)
	lw $t1, -5744($fp)
	li $t2, 0
	bne $t1, $t2, label860
	j label859
label859:
	li $t0, 1
	sw $t0, -5740($fp)
label860:
	li $t0, 7756
	sw $t0, -5748($fp)
	lw $t1, -5740($fp)
	lw $t2, -5748($fp)
	ble $t1, $t2, label857
	j label858
label857:
	li $t0, 1
	sw $t0, -5736($fp)
label858:
	addi $sp, $sp, -4
	lw $t0, -5736($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5752($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5756($fp)
	lw $t0, -760($fp)
	sw $t0, -5760($fp)
	lw $t1, -5760($fp)
	li $t2, 0
	bne $t1, $t2, label863
	j label862
label863:
	li $t0, 0
	sw $t0, -5764($fp)
	addi $t0, $fp, -12
	sw $t0, -5768($fp)
	lw $t0, -832($fp)
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
	lw $t1, -5784($fp)
	li $t2, 0
	bne $t1, $t2, label865
	j label864
label864:
	li $t0, 1
	sw $t0, -5764($fp)
label865:
	li $t0, 35081
	sw $t0, -5788($fp)
	lw $t0, -5764($fp)
	lw $t1, -5788($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5792($fp)
	lw $t1, -5792($fp)
	li $t2, 0
	bne $t1, $t2, label861
	j label862
label861:
	li $t0, 1
	sw $t0, -5756($fp)
label862:
label866:
	addi $t0, $fp, -128
	sw $t0, -5796($fp)
	li $t0, 0
	sw $t0, -5800($fp)
	li $t0, 4
	lw $t1, -5800($fp)
	mul $t0, $t0, $t1
	sw $t0, -5804($fp)
	lw $t0, -5804($fp)
	lw $t1, -5796($fp)
	add $t0, $t0, $t1
	sw $t0, -5808($fp)
	lw $t0, -5808($fp)
	lw $t1, 0($t0)
	sw $t1, -5812($fp)
	li $t0, 0
	lw $t1, -5812($fp)
	sub $t0, $t0, $t1
	sw $t0, -5816($fp)
	addi $sp, $sp, -4
	lw $t0, -5816($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5820($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -5232
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
	lw $t0, -5820($fp)
	lw $t1, -5840($fp)
	sub $t0, $t0, $t1
	sw $t0, -5844($fp)
	lw $t1, -5844($fp)
	li $t2, 0
	bne $t1, $t2, label867
	j label869
label869:
	li $t0, 59229
	sw $t0, -5848($fp)
	lw $t0, -5408($fp)
	sw $t0, -5852($fp)
	lw $t1, -5848($fp)
	lw $t2, -5852($fp)
	blt $t1, $t2, label867
	j label868
label867:
	addi $t0, $fp, -92
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
	lw $t1, -5872($fp)
	li $t2, 0
	bne $t1, $t2, label875
	j label873
label875:
	li $t0, 55736
	sw $t0, -5876($fp)
	lw $t1, -5876($fp)
	li $t2, 0
	bne $t1, $t2, label874
	j label873
label874:
	li $t0, 32599
	sw $t0, -5880($fp)
	lw $t1, -5880($fp)
	li $t2, 0
	bne $t1, $t2, label870
	j label873
label873:
	li $t0, 54796
	sw $t0, -5884($fp)
	lw $t1, -5884($fp)
	li $t2, 0
	bne $t1, $t2, label870
	j label871
label870:
	li $t0, 0
	sw $t0, -5888($fp)
	li $t0, 0
	sw $t0, -5892($fp)
	li $t0, 23075
	sw $t0, -5896($fp)
	li $t0, 27929
	sw $t0, -5900($fp)
	lw $t0, -5896($fp)
	lw $t1, -5900($fp)
	add $t0, $t0, $t1
	sw $t0, -5904($fp)
	lw $t1, -5904($fp)
	li $t2, 0
	bne $t1, $t2, label880
	j label879
label880:
	lw $t0, -436($fp)
	sw $t0, -5908($fp)
	lw $t1, -5908($fp)
	li $t2, 0
	bne $t1, $t2, label878
	j label879
label878:
	li $t0, 1
	sw $t0, -5892($fp)
label879:
	li $t0, 0
	sw $t0, -5912($fp)
	li $t0, 51410
	sw $t0, -5916($fp)
	li $t0, 0
	lw $t1, -5916($fp)
	sub $t0, $t0, $t1
	sw $t0, -5920($fp)
	lw $t1, -5920($fp)
	li $t2, 0
	bne $t1, $t2, label883
	j label882
label883:
	li $t0, 31134
	sw $t0, -5924($fp)
	lw $t1, -5924($fp)
	li $t2, 0
	bne $t1, $t2, label881
	j label882
label881:
	li $t0, 1
	sw $t0, -5912($fp)
label882:
	addi $sp, $sp, -4
	lw $t0, -5892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5912($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5928($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -5928($fp)
	sub $t0, $t0, $t1
	sw $t0, -5932($fp)
	lw $t0, -772($fp)
	sw $t0, -5936($fp)
	li $t0, 3592
	sw $t0, -5940($fp)
	lw $t0, -5936($fp)
	lw $t1, -5940($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5944($fp)
	li $t0, 27537
	sw $t0, -5948($fp)
	lw $t0, -5944($fp)
	lw $t1, -5948($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5952($fp)
	lw $t0, -772($fp)
	sw $t0, -5956($fp)
	addi $sp, $sp, -4
	lw $t0, -5952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5956($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5960($fp)
	addi $sp, $sp, 12
	lw $t0, -5932($fp)
	lw $t1, -5960($fp)
	sub $t0, $t0, $t1
	sw $t0, -5964($fp)
	li $t0, 0
	sw $t0, -5968($fp)
	li $t0, 8015
	sw $t0, -5972($fp)
	lw $t1, -5972($fp)
	li $t2, 0
	bne $t1, $t2, label885
	j label884
label884:
	li $t0, 1
	sw $t0, -5968($fp)
label885:
	li $t0, 43412
	sw $t0, -5976($fp)
	lw $t0, -5968($fp)
	lw $t1, -5976($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5980($fp)
	lw $t0, -5964($fp)
	lw $t1, -5980($fp)
	add $t0, $t0, $t1
	sw $t0, -5984($fp)
	li $t0, 0
	sw $t0, -5988($fp)
	li $t0, 4266
	sw $t0, -5992($fp)
	lw $t0, -640($fp)
	sw $t0, -5996($fp)
	lw $t0, -5992($fp)
	lw $t1, -5996($fp)
	mul $t0, $t0, $t1
	sw $t0, -6000($fp)
	lw $t0, 8($fp)
	sw $t0, -6004($fp)
	lw $t0, -6000($fp)
	lw $t1, -6004($fp)
	mul $t0, $t0, $t1
	sw $t0, -6008($fp)
	li $t0, 29502
	sw $t0, -6012($fp)
	lw $t0, 12($fp)
	sw $t0, -6016($fp)
	lw $t0, -6012($fp)
	lw $t1, -6016($fp)
	mul $t0, $t0, $t1
	sw $t0, -6020($fp)
	lw $t1, -6008($fp)
	lw $t2, -6020($fp)
	ble $t1, $t2, label886
	j label887
label886:
	li $t0, 1
	sw $t0, -5988($fp)
label887:
	lw $t1, -5984($fp)
	lw $t2, -5988($fp)
	beq $t1, $t2, label876
	j label877
label876:
	li $t0, 1
	sw $t0, -5888($fp)
label877:
	lw $ra, -4($fp)
	lw $v0, -5888($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label872
label871:
	li $t0, 12354
	sw $t0, -6024($fp)
	lw $t0, -6024($fp)
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	sw $t0, -6028($fp)
	li $t0, 0
	sw $t0, -6032($fp)
	addi $t0, $fp, -76
	sw $t0, -6036($fp)
	li $t0, 5
	sw $t0, -6040($fp)
	li $t0, 4
	lw $t1, -6040($fp)
	mul $t0, $t0, $t1
	sw $t0, -6044($fp)
	lw $t0, -6044($fp)
	lw $t1, -6036($fp)
	add $t0, $t0, $t1
	sw $t0, -6048($fp)
	lw $t0, -6048($fp)
	lw $t1, 0($t0)
	sw $t1, -6052($fp)
	li $t0, 22558
	sw $t0, -6056($fp)
	lw $t1, -6052($fp)
	lw $t2, -6056($fp)
	blt $t1, $t2, label888
	j label889
label888:
	li $t0, 1
	sw $t0, -6032($fp)
label889:
	addi $sp, $sp, -4
	lw $t0, -6028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6032($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6060($fp)
	addi $sp, $sp, 12
label872:
	j label866
label868:
	li $t0, 33787
	sw $t0, -6064($fp)
	lw $t0, -6064($fp)
	sw $t0, -6068($fp)
	lw $t0, -6068($fp)
	sw $t0, -6072($fp)
	li $t0, 0
	sw $t0, -6076($fp)
	addi $t0, $fp, -128
	sw $t0, -6080($fp)
	li $t0, 0
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
	li $t0, 0
	sw $t0, -6100($fp)
	li $t0, 0
	sw $t0, -6104($fp)
	li $t0, 14721
	sw $t0, -6108($fp)
	lw $t1, -6108($fp)
	li $t2, 0
	bne $t1, $t2, label895
	j label894
label894:
	li $t0, 1
	sw $t0, -6104($fp)
label895:
	li $t0, 0
	lw $t1, -6104($fp)
	sub $t0, $t0, $t1
	sw $t0, -6112($fp)
	lw $t0, -1120($fp)
	sw $t0, -6116($fp)
	lw $t0, -1480($fp)
	sw $t0, -6120($fp)
	lw $t0, -6116($fp)
	lw $t1, -6120($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6124($fp)
	lw $t1, -6112($fp)
	lw $t2, -6124($fp)
	bgt $t1, $t2, label892
	j label893
label892:
	li $t0, 1
	sw $t0, -6100($fp)
label893:
	lw $t1, -6096($fp)
	lw $t2, -6100($fp)
	bne $t1, $t2, label890
	j label891
label890:
	li $t0, 1
	sw $t0, -6076($fp)
label891:
	li $t0, 0
	sw $t0, -6128($fp)
	li $t0, 8336
	sw $t0, -6132($fp)
	lw $t0, -436($fp)
	sw $t0, -6136($fp)
	lw $t0, -6132($fp)
	lw $t1, -6136($fp)
	mul $t0, $t0, $t1
	sw $t0, -6140($fp)
	lw $t1, -6140($fp)
	li $t2, 0
	bne $t1, $t2, label898
	j label897
label898:
	li $t0, 59183
	sw $t0, -6144($fp)
	lw $t1, -6144($fp)
	li $t2, 0
	bne $t1, $t2, label896
	j label897
label896:
	li $t0, 1
	sw $t0, -6128($fp)
label897:
	addi $sp, $sp, -4
	lw $t0, -6128($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6148($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -6148($fp)
	sub $t0, $t0, $t1
	sw $t0, -6152($fp)
	addi $t0, $fp, -52
	sw $t0, -6156($fp)
	lw $t0, -1264($fp)
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
	lw $t0, -436($fp)
	sw $t0, -6176($fp)
	lw $t0, -6068($fp)
	sw $t0, -6180($fp)
	lw $t0, -6176($fp)
	lw $t1, -6180($fp)
	mul $t0, $t0, $t1
	sw $t0, -6184($fp)
	li $t0, 60516
	sw $t0, -6188($fp)
	li $t0, 0
	sw $t0, -6192($fp)
	li $t0, 1287
	sw $t0, -6196($fp)
	li $t0, 38854
	sw $t0, -6200($fp)
	lw $t0, -6196($fp)
	lw $t1, -6200($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6204($fp)
	lw $t1, -6204($fp)
	li $t2, 0
	bne $t1, $t2, label901
	j label900
label901:
	li $t0, 61307
	sw $t0, -6208($fp)
	lw $t1, -6208($fp)
	li $t2, 0
	bne $t1, $t2, label899
	j label900
label899:
	li $t0, 1
	sw $t0, -6192($fp)
label900:
	li $t0, 49801
	sw $t0, -6212($fp)
	lw $t0, -1096($fp)
	sw $t0, -6216($fp)
	lw $t0, -6212($fp)
	lw $t1, -6216($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6220($fp)
	li $t0, 4436
	sw $t0, -6224($fp)
	lw $t0, -6220($fp)
	lw $t1, -6224($fp)
	mul $t0, $t0, $t1
	sw $t0, -6228($fp)
	addi $sp, $sp, -4
	lw $t0, -6188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6228($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -6232($fp)
	addi $sp, $sp, 16
	lw $t0, -6184($fp)
	lw $t1, -6232($fp)
	mul $t0, $t0, $t1
	sw $t0, -6236($fp)
	li $t0, 12198
	sw $t0, -6240($fp)
	lw $t0, -6236($fp)
	lw $t1, -6240($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6244($fp)
	addi $t0, $fp, -140
	sw $t0, -6248($fp)
	lw $t0, -448($fp)
	sw $t0, -6252($fp)
	lw $t0, -1252($fp)
	sw $t0, -6256($fp)
	lw $t0, -6252($fp)
	lw $t1, -6256($fp)
	mul $t0, $t0, $t1
	sw $t0, -6260($fp)
	li $t0, 4
	lw $t1, -6260($fp)
	mul $t0, $t0, $t1
	sw $t0, -6264($fp)
	lw $t0, -6264($fp)
	lw $t1, -6248($fp)
	add $t0, $t0, $t1
	sw $t0, -6268($fp)
	lw $t0, -6268($fp)
	lw $t1, 0($t0)
	sw $t1, -6272($fp)
	lw $t0, -6244($fp)
	lw $t1, -6272($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6276($fp)
	li $t0, 0
	lw $t1, -6276($fp)
	sub $t0, $t0, $t1
	sw $t0, -6280($fp)
label902:
	li $t0, 50717
	sw $t0, -6284($fp)
	li $t0, 1
	sw $t0, -6288($fp)
	lw $t0, -6284($fp)
	lw $t1, -6288($fp)
	mul $t0, $t0, $t1
	sw $t0, -6292($fp)
	li $t0, 0
	sw $t0, -6296($fp)
	li $t0, 1458
	sw $t0, -6300($fp)
	li $t0, 0
	lw $t1, -6300($fp)
	sub $t0, $t0, $t1
	sw $t0, -6304($fp)
	lw $t1, -6304($fp)
	li $t2, 0
	bne $t1, $t2, label907
	j label906
label906:
	li $t0, 1
	sw $t0, -6296($fp)
label907:
	lw $t1, -6292($fp)
	lw $t2, -6296($fp)
	bne $t1, $t2, label903
	j label905
label905:
	lw $t0, -796($fp)
	sw $t0, -6308($fp)
	lw $t1, -6308($fp)
	li $t2, 0
	bne $t1, $t2, label904
	j label903
label903:
	li $t0, 0
	sw $t0, -6312($fp)
	li $t0, 0
	sw $t0, -6316($fp)
	li $t0, 0
	sw $t0, -6320($fp)
	li $t0, 36591
	sw $t0, -6324($fp)
	lw $t0, -796($fp)
	sw $t0, -6328($fp)
	lw $t1, -6324($fp)
	lw $t2, -6328($fp)
	bgt $t1, $t2, label912
	j label913
label912:
	li $t0, 1
	sw $t0, -6320($fp)
label913:
	li $t0, 12533
	sw $t0, -6332($fp)
	lw $t1, -6320($fp)
	lw $t2, -6332($fp)
	bgt $t1, $t2, label910
	j label911
label910:
	li $t0, 1
	sw $t0, -6316($fp)
label911:
	li $t0, 0
	sw $t0, -6336($fp)
	lw $t0, -880($fp)
	sw $t0, -6340($fp)
	li $t0, 24533
	sw $t0, -6344($fp)
	lw $t1, -6340($fp)
	lw $t2, -6344($fp)
	bgt $t1, $t2, label914
	j label915
label914:
	li $t0, 1
	sw $t0, -6336($fp)
label915:
	lw $t1, -6316($fp)
	lw $t2, -6336($fp)
	beq $t1, $t2, label908
	j label909
label908:
	li $t0, 1
	sw $t0, -6312($fp)
label909:
	lw $t0, -6312($fp)
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	sw $t0, -6348($fp)
	lw $ra, -4($fp)
	lw $v0, -6348($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label902
label904:
label712:
	j label704
label703:
	li $t0, 64520
	sw $t0, -6352($fp)
	lw $ra, -4($fp)
	lw $v0, -6352($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label704:
label701:
	j label694
label696:
label510:
label492:
	addi $t0, $fp, -12
	sw $t0, -6356($fp)
	li $t0, 0
	sw $t0, -6360($fp)
	li $t0, 4
	lw $t1, -6360($fp)
	mul $t0, $t0, $t1
	sw $t0, -6364($fp)
	lw $t0, -6364($fp)
	lw $t1, -6356($fp)
	add $t0, $t0, $t1
	sw $t0, -6368($fp)
	lw $t0, -6368($fp)
	lw $t1, 0($t0)
	sw $t1, -6372($fp)
	lw $t0, -6372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -6376($fp)
	li $t0, 1
	sw $t0, -6380($fp)
	li $t0, 4
	lw $t1, -6380($fp)
	mul $t0, $t0, $t1
	sw $t0, -6384($fp)
	lw $t0, -6384($fp)
	lw $t1, -6376($fp)
	add $t0, $t0, $t1
	sw $t0, -6388($fp)
	lw $t0, -6388($fp)
	lw $t1, 0($t0)
	sw $t1, -6392($fp)
	lw $t0, -6392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -6396($fp)
	li $t0, 0
	sw $t0, -6400($fp)
	li $t0, 4
	lw $t1, -6400($fp)
	mul $t0, $t0, $t1
	sw $t0, -6404($fp)
	lw $t0, -6404($fp)
	lw $t1, -6396($fp)
	add $t0, $t0, $t1
	sw $t0, -6408($fp)
	lw $t0, -6408($fp)
	lw $t1, 0($t0)
	sw $t1, -6412($fp)
	lw $t0, -6412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
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
	lw $t0, -6432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -6436($fp)
	li $t0, 2
	sw $t0, -6440($fp)
	li $t0, 4
	lw $t1, -6440($fp)
	mul $t0, $t0, $t1
	sw $t0, -6444($fp)
	lw $t0, -6444($fp)
	lw $t1, -6436($fp)
	add $t0, $t0, $t1
	sw $t0, -6448($fp)
	lw $t0, -6448($fp)
	lw $t1, 0($t0)
	sw $t1, -6452($fp)
	lw $t0, -6452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -6456($fp)
	li $t0, 3
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
	lw $t0, -6472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -6476($fp)
	li $t0, 4
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
	addi $t0, $fp, -52
	sw $t0, -6496($fp)
	li $t0, 5
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
	addi $t0, $fp, -52
	sw $t0, -6516($fp)
	li $t0, 6
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
	addi $t0, $fp, -52
	sw $t0, -6536($fp)
	li $t0, 7
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
	addi $t0, $fp, -52
	sw $t0, -6556($fp)
	li $t0, 8
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
	addi $t0, $fp, -52
	sw $t0, -6576($fp)
	li $t0, 9
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
	lw $t0, -436($fp)
	sw $t0, -6596($fp)
	lw $t0, -6596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -448($fp)
	sw $t0, -6600($fp)
	lw $t0, -6600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -460($fp)
	sw $t0, -6604($fp)
	lw $t0, -6604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -6608($fp)
	li $t0, 0
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
	addi $t0, $fp, -76
	sw $t0, -6628($fp)
	li $t0, 1
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
	addi $t0, $fp, -76
	sw $t0, -6648($fp)
	li $t0, 2
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
	addi $t0, $fp, -76
	sw $t0, -6668($fp)
	li $t0, 3
	sw $t0, -6672($fp)
	li $t0, 4
	lw $t1, -6672($fp)
	mul $t0, $t0, $t1
	sw $t0, -6676($fp)
	lw $t0, -6676($fp)
	lw $t1, -6668($fp)
	add $t0, $t0, $t1
	sw $t0, -6680($fp)
	lw $t0, -6680($fp)
	lw $t1, 0($t0)
	sw $t1, -6684($fp)
	lw $t0, -6684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -6688($fp)
	li $t0, 4
	sw $t0, -6692($fp)
	li $t0, 4
	lw $t1, -6692($fp)
	mul $t0, $t0, $t1
	sw $t0, -6696($fp)
	lw $t0, -6696($fp)
	lw $t1, -6688($fp)
	add $t0, $t0, $t1
	sw $t0, -6700($fp)
	lw $t0, -6700($fp)
	lw $t1, 0($t0)
	sw $t1, -6704($fp)
	lw $t0, -6704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -6708($fp)
	li $t0, 5
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
	lw $t0, -616($fp)
	sw $t0, -6728($fp)
	lw $t0, -6728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -628($fp)
	sw $t0, -6732($fp)
	lw $t0, -6732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -640($fp)
	sw $t0, -6736($fp)
	lw $t0, -6736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -6740($fp)
	li $t0, 0
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
	addi $t0, $fp, -92
	sw $t0, -6760($fp)
	li $t0, 1
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
	addi $t0, $fp, -92
	sw $t0, -6780($fp)
	li $t0, 2
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
	addi $t0, $fp, -92
	sw $t0, -6800($fp)
	li $t0, 3
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
	lw $t0, -748($fp)
	sw $t0, -6820($fp)
	lw $t0, -6820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -760($fp)
	sw $t0, -6824($fp)
	lw $t0, -6824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -772($fp)
	sw $t0, -6828($fp)
	lw $t0, -6828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -784($fp)
	sw $t0, -6832($fp)
	lw $t0, -6832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -796($fp)
	sw $t0, -6836($fp)
	lw $t0, -6836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -808($fp)
	sw $t0, -6840($fp)
	lw $t0, -6840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -820($fp)
	sw $t0, -6844($fp)
	lw $t0, -6844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -832($fp)
	sw $t0, -6848($fp)
	lw $t0, -6848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -844($fp)
	sw $t0, -6852($fp)
	lw $t0, -6852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -856($fp)
	sw $t0, -6856($fp)
	lw $t0, -6856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -868($fp)
	sw $t0, -6860($fp)
	lw $t0, -6860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -880($fp)
	sw $t0, -6864($fp)
	lw $t0, -6864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -6868($fp)
	li $t0, 0
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
	addi $t0, $fp, -124
	sw $t0, -6888($fp)
	li $t0, 1
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
	addi $t0, $fp, -124
	sw $t0, -6908($fp)
	li $t0, 2
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
	addi $t0, $fp, -124
	sw $t0, -6928($fp)
	li $t0, 3
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
	addi $t0, $fp, -124
	sw $t0, -6948($fp)
	li $t0, 4
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
	addi $t0, $fp, -124
	sw $t0, -6968($fp)
	li $t0, 5
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
	addi $t0, $fp, -124
	sw $t0, -6988($fp)
	li $t0, 6
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
	addi $t0, $fp, -124
	sw $t0, -7008($fp)
	li $t0, 7
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
	lw $t0, -1084($fp)
	sw $t0, -7028($fp)
	lw $t0, -7028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1096($fp)
	sw $t0, -7032($fp)
	lw $t0, -7032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1108($fp)
	sw $t0, -7036($fp)
	lw $t0, -7036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1120($fp)
	sw $t0, -7040($fp)
	lw $t0, -7040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1132($fp)
	sw $t0, -7044($fp)
	lw $t0, -7044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1144($fp)
	sw $t0, -7048($fp)
	lw $t0, -7048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1156($fp)
	sw $t0, -7052($fp)
	lw $t0, -7052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1168($fp)
	sw $t0, -7056($fp)
	lw $t0, -7056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1180($fp)
	sw $t0, -7060($fp)
	lw $t0, -7060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1192($fp)
	sw $t0, -7064($fp)
	lw $t0, -7064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1204($fp)
	sw $t0, -7068($fp)
	lw $t0, -7068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1216($fp)
	sw $t0, -7072($fp)
	lw $t0, -7072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -7076($fp)
	li $t0, 0
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
	lw $t0, -1252($fp)
	sw $t0, -7096($fp)
	lw $t0, -7096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1264($fp)
	sw $t0, -7100($fp)
	lw $t0, -7100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1276($fp)
	sw $t0, -7104($fp)
	lw $t0, -7104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1288($fp)
	sw $t0, -7108($fp)
	lw $t0, -7108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1300($fp)
	sw $t0, -7112($fp)
	lw $t0, -7112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1312($fp)
	sw $t0, -7116($fp)
	lw $t0, -7116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1324($fp)
	sw $t0, -7120($fp)
	lw $t0, -7120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1336($fp)
	sw $t0, -7124($fp)
	lw $t0, -7124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -7128($fp)
	li $t0, 0
	sw $t0, -7132($fp)
	li $t0, 4
	lw $t1, -7132($fp)
	mul $t0, $t0, $t1
	sw $t0, -7136($fp)
	lw $t0, -7136($fp)
	lw $t1, -7128($fp)
	add $t0, $t0, $t1
	sw $t0, -7140($fp)
	lw $t0, -7140($fp)
	lw $t1, 0($t0)
	sw $t1, -7144($fp)
	lw $t0, -7144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -7148($fp)
	li $t0, 1
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
	addi $t0, $fp, -140
	sw $t0, -7168($fp)
	li $t0, 2
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
	lw $t0, -1420($fp)
	sw $t0, -7188($fp)
	lw $t0, -7188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1432($fp)
	sw $t0, -7192($fp)
	lw $t0, -7192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1444($fp)
	sw $t0, -7196($fp)
	lw $t0, -7196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1456($fp)
	sw $t0, -7200($fp)
	lw $t0, -7200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1468($fp)
	sw $t0, -7204($fp)
	lw $t0, -7204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1480($fp)
	sw $t0, -7208($fp)
	lw $t0, -7208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1492($fp)
	sw $t0, -7212($fp)
	lw $t0, -7212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 16125
	sw $t0, -7216($fp)
	lw $ra, -4($fp)
	lw $v0, -7216($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1744
	li $t0, 52070
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	li $t0, 7000
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	li $t0, 59537
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	li $t0, 56337
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	li $t0, 36502
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	li $t0, 19115
	sw $t0, -116($fp)
	addi $t0, $fp, -16
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
	li $t0, 62642
	sw $t0, -140($fp)
	addi $t0, $fp, -16
	sw $t0, -144($fp)
	li $t0, 1
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -152($fp)
	lw $t0, -144($fp)
	lw $t1, -152($fp)
	add $t0, $t0, $t1
	sw $t0, -156($fp)
	lw $t0, -140($fp)
	lw $t1, -156($fp)
	sw $t0, 0($t1)
	lw $t0, -156($fp)
	lw $t1, 0($t0)
	sw $t1, -160($fp)
	li $t0, 59060
	sw $t0, -164($fp)
	addi $t0, $fp, -16
	sw $t0, -168($fp)
	li $t0, 2
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
	li $t0, 31469
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	li $t0, 30893
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	li $t0, 59640
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	li $t0, 55462
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -232($fp)
	li $t0, 45614
	sw $t0, -236($fp)
	addi $t0, $fp, -52
	sw $t0, -240($fp)
	li $t0, 0
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
	li $t0, 2440
	sw $t0, -260($fp)
	addi $t0, $fp, -52
	sw $t0, -264($fp)
	li $t0, 1
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
	li $t0, 49109
	sw $t0, -284($fp)
	addi $t0, $fp, -52
	sw $t0, -288($fp)
	li $t0, 2
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
	li $t0, 29879
	sw $t0, -308($fp)
	addi $t0, $fp, -52
	sw $t0, -312($fp)
	li $t0, 3
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
	li $t0, 6877
	sw $t0, -332($fp)
	addi $t0, $fp, -52
	sw $t0, -336($fp)
	li $t0, 4
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
	li $t0, 50396
	sw $t0, -356($fp)
	addi $t0, $fp, -52
	sw $t0, -360($fp)
	li $t0, 5
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
	li $t0, 3197
	sw $t0, -380($fp)
	addi $t0, $fp, -52
	sw $t0, -384($fp)
	li $t0, 6
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
	li $t0, 2648
	sw $t0, -404($fp)
	addi $t0, $fp, -52
	sw $t0, -408($fp)
	li $t0, 7
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
	li $t0, 45377
	sw $t0, -428($fp)
	addi $t0, $fp, -52
	sw $t0, -432($fp)
	li $t0, 8
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
	li $t0, 17533
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	li $t0, 14846
	sw $t0, -464($fp)
	lw $t1, -464($fp)
	li $t2, 0
	bne $t1, $t2, label916
	j label917
label916:
	addi $t0, $fp, -52
	sw $t0, -468($fp)
	li $t0, 0
	sw $t0, -472($fp)
	li $t0, 0
	sw $t0, -476($fp)
	lw $t0, -204($fp)
	sw $t0, -480($fp)
	lw $t1, -480($fp)
	li $t2, 0
	bne $t1, $t2, label922
	j label921
label921:
	li $t0, 1
	sw $t0, -476($fp)
label922:
	li $t0, 30558
	sw $t0, -484($fp)
	lw $t0, -476($fp)
	lw $t1, -484($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -488($fp)
	li $t0, 0
	sw $t0, -492($fp)
	lw $t0, -84($fp)
	sw $t0, -496($fp)
	lw $t1, -496($fp)
	li $t2, 0
	bne $t1, $t2, label924
	j label923
label923:
	li $t0, 1
	sw $t0, -492($fp)
label924:
	lw $t1, -488($fp)
	lw $t2, -492($fp)
	beq $t1, $t2, label919
	j label920
label919:
	li $t0, 1
	sw $t0, -472($fp)
label920:
	li $t0, 4
	lw $t1, -472($fp)
	mul $t0, $t0, $t1
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	lw $t1, -468($fp)
	add $t0, $t0, $t1
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	lw $t1, 0($t0)
	sw $t1, -508($fp)
	lw $ra, -4($fp)
	lw $v0, -508($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label918
label917:
	addi $t0, $fp, -16
	sw $t0, -512($fp)
	li $t0, 1
	sw $t0, -516($fp)
	li $t0, 4
	lw $t1, -516($fp)
	mul $t0, $t0, $t1
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	lw $t1, -512($fp)
	add $t0, $t0, $t1
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	lw $t1, 0($t0)
	sw $t1, -528($fp)
	li $t0, 0
	sw $t0, -532($fp)
	li $t0, 16304
	sw $t0, -536($fp)
	li $t0, 1613
	sw $t0, -540($fp)
	lw $t0, -536($fp)
	lw $t1, -540($fp)
	sub $t0, $t0, $t1
	sw $t0, -544($fp)
	li $t0, 11465
	sw $t0, -548($fp)
	lw $t1, -544($fp)
	lw $t2, -548($fp)
	beq $t1, $t2, label925
	j label926
label925:
	li $t0, 1
	sw $t0, -532($fp)
label926:
	li $t0, 0
	sw $t0, -552($fp)
	li $t0, 0
	sw $t0, -556($fp)
	lw $t0, 8($fp)
	sw $t0, -560($fp)
	li $t0, 0
	lw $t1, -560($fp)
	sub $t0, $t0, $t1
	sw $t0, -564($fp)
	lw $t1, -564($fp)
	li $t2, 0
	bne $t1, $t2, label930
	j label929
label929:
	li $t0, 1
	sw $t0, -556($fp)
label930:
	addi $sp, $sp, -4
	lw $t0, -556($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -568($fp)
	addi $sp, $sp, 8
	li $t0, 64468
	sw $t0, -572($fp)
	lw $t1, -568($fp)
	lw $t2, -572($fp)
	bne $t1, $t2, label927
	j label928
label927:
	li $t0, 1
	sw $t0, -552($fp)
label928:
	addi $sp, $sp, -4
	lw $t0, -528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -552($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -576($fp)
	addi $sp, $sp, 16
	li $t0, 27590
	sw $t0, -580($fp)
	lw $t0, -576($fp)
	lw $t1, -580($fp)
	sub $t0, $t0, $t1
	sw $t0, -584($fp)
	lw $ra, -4($fp)
	lw $v0, -584($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label918:
	li $t0, 27372
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -596($fp)
	lw $t0, -592($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -604($fp)
	li $t0, 7598
	sw $t0, -608($fp)
	lw $t1, -608($fp)
	li $t2, 0
	bne $t1, $t2, label932
	j label931
label931:
	li $t0, 1
	sw $t0, -604($fp)
label932:
	li $t0, 21591
	sw $t0, -612($fp)
	lw $t0, -604($fp)
	lw $t1, -612($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -616($fp)
	addi $t0, $fp, -16
	sw $t0, -620($fp)
	li $t0, 1
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
	li $t0, 18173
	sw $t0, -640($fp)
	li $t0, 44100
	sw $t0, -644($fp)
	lw $t0, -640($fp)
	lw $t1, -644($fp)
	mul $t0, $t0, $t1
	sw $t0, -648($fp)
	addi $sp, $sp, -4
	lw $t0, -636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -648($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -652($fp)
	addi $sp, $sp, 12
	lw $t0, -616($fp)
	lw $t1, -652($fp)
	sub $t0, $t0, $t1
	sw $t0, -656($fp)
	li $t0, 0
	sw $t0, -660($fp)
	lw $t0, -592($fp)
	sw $t0, -664($fp)
	lw $t1, -664($fp)
	li $t2, 0
	bne $t1, $t2, label934
	j label933
label933:
	li $t0, 1
	sw $t0, -660($fp)
label934:
	lw $t0, -656($fp)
	lw $t1, -660($fp)
	sub $t0, $t0, $t1
	sw $t0, -668($fp)
	lw $ra, -4($fp)
	lw $v0, -668($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 37624
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	lw $t0, -676($fp)
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -688($fp)
	li $t0, 0
	sw $t0, -692($fp)
	addi $t0, $fp, -52
	sw $t0, -696($fp)
	lw $t0, -84($fp)
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
	lw $t0, -216($fp)
	sw $t0, -716($fp)
	lw $t0, -712($fp)
	lw $t1, -716($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -720($fp)
	lw $t0, -676($fp)
	sw $t0, -724($fp)
	lw $t0, -720($fp)
	lw $t1, -724($fp)
	sub $t0, $t0, $t1
	sw $t0, -728($fp)
	lw $t0, -456($fp)
	sw $t0, -732($fp)
	lw $t1, -728($fp)
	lw $t2, -732($fp)
	bge $t1, $t2, label937
	j label938
label937:
	li $t0, 1
	sw $t0, -692($fp)
label938:
	lw $t0, -108($fp)
	sw $t0, -736($fp)
	lw $t1, -692($fp)
	lw $t2, -736($fp)
	beq $t1, $t2, label935
	j label936
label935:
	li $t0, 1
	sw $t0, -688($fp)
label936:
	lw $ra, -4($fp)
	lw $v0, -688($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -676($fp)
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -744($fp)
	li $t0, 0
	sw $t0, -748($fp)
	lw $t0, -60($fp)
	sw $t0, -752($fp)
	li $t0, 46173
	sw $t0, -756($fp)
	lw $t0, -752($fp)
	lw $t1, -756($fp)
	sub $t0, $t0, $t1
	sw $t0, -760($fp)
	li $t0, 31728
	sw $t0, -764($fp)
	lw $t0, -760($fp)
	lw $t1, -764($fp)
	sub $t0, $t0, $t1
	sw $t0, -768($fp)
	li $t0, 6640
	sw $t0, -772($fp)
	lw $t0, -60($fp)
	sw $t0, -776($fp)
	lw $t0, -772($fp)
	lw $t1, -776($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -780($fp)
	addi $sp, $sp, -4
	lw $t0, -768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -780($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -784($fp)
	addi $sp, $sp, 12
	li $t0, 62102
	sw $t0, -788($fp)
	li $t0, 26251
	sw $t0, -792($fp)
	lw $t0, -788($fp)
	lw $t1, -792($fp)
	sub $t0, $t0, $t1
	sw $t0, -796($fp)
	lw $t1, -784($fp)
	lw $t2, -796($fp)
	blt $t1, $t2, label939
	j label940
label939:
	li $t0, 1
	sw $t0, -748($fp)
label940:
	li $t0, 4
	lw $t1, -748($fp)
	mul $t0, $t0, $t1
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	lw $t1, -744($fp)
	add $t0, $t0, $t1
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	lw $t1, 0($t0)
	sw $t1, -808($fp)
	lw $ra, -4($fp)
	lw $v0, -808($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -16
	sw $t0, -812($fp)
	li $t0, 0
	sw $t0, -816($fp)
	lw $t0, -60($fp)
	sw $t0, -820($fp)
	lw $t1, -820($fp)
	li $t2, 0
	bne $t1, $t2, label943
	j label942
label943:
	li $t0, 34168
	sw $t0, -824($fp)
	lw $t1, -824($fp)
	li $t2, 0
	bne $t1, $t2, label941
	j label942
label941:
	li $t0, 1
	sw $t0, -816($fp)
label942:
	li $t0, 4
	lw $t1, -816($fp)
	mul $t0, $t0, $t1
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	lw $t1, -812($fp)
	add $t0, $t0, $t1
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	lw $t1, 0($t0)
	sw $t1, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -840($fp)
	lw $ra, -4($fp)
	lw $v0, -840($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -844($fp)
	li $t0, 45675
	sw $t0, -848($fp)
	lw $t1, -848($fp)
	li $t2, 0
	bne $t1, $t2, label945
	j label944
label944:
	li $t0, 1
	sw $t0, -844($fp)
label945:
	lw $ra, -4($fp)
	lw $v0, -844($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -852($fp)
	addi $t0, $fp, -16
	sw $t0, -856($fp)
	li $t0, 1
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
	lw $t1, -872($fp)
	li $t2, 0
	bne $t1, $t2, label947
	j label946
label946:
	li $t0, 1
	sw $t0, -852($fp)
label947:
	li $t0, 30536
	sw $t0, -876($fp)
	lw $t0, -852($fp)
	lw $t1, -876($fp)
	sub $t0, $t0, $t1
	sw $t0, -880($fp)
	addi $t0, $fp, -52
	sw $t0, -884($fp)
	lw $t0, -60($fp)
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
	lw $t0, -84($fp)
	sw $t0, -904($fp)
	lw $t0, -900($fp)
	lw $t1, -904($fp)
	mul $t0, $t0, $t1
	sw $t0, -908($fp)
	li $t0, 59328
	sw $t0, -912($fp)
	lw $t0, -456($fp)
	sw $t0, -916($fp)
	lw $t0, -912($fp)
	lw $t1, -916($fp)
	mul $t0, $t0, $t1
	sw $t0, -920($fp)
	addi $sp, $sp, -4
	lw $t0, -908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -920($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -924($fp)
	addi $sp, $sp, 12
	lw $t0, -880($fp)
	lw $t1, -924($fp)
	sub $t0, $t0, $t1
	sw $t0, -928($fp)
	lw $ra, -4($fp)
	lw $v0, -928($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -192($fp)
	sw $t0, -932($fp)
	lw $t1, -932($fp)
	li $t2, 0
	bne $t1, $t2, label948
	j label949
label948:
	li $t0, 43694
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	sw $t0, -944($fp)
	li $t0, 10377
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	sw $t0, -956($fp)
	li $t0, 11326
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	sw $t0, -968($fp)
	li $t0, 0
	sw $t0, -972($fp)
	li $t0, 0
	sw $t0, -976($fp)
	li $t0, 58540
	sw $t0, -980($fp)
	li $t0, 0
	sw $t0, -984($fp)
	lw $t0, -940($fp)
	sw $t0, -988($fp)
	lw $t1, -988($fp)
	li $t2, 0
	bne $t1, $t2, label956
	j label955
label955:
	li $t0, 1
	sw $t0, -984($fp)
label956:
	lw $t0, -980($fp)
	lw $t1, -984($fp)
	mul $t0, $t0, $t1
	sw $t0, -992($fp)
	lw $t0, -108($fp)
	sw $t0, -996($fp)
	li $t0, 40935
	sw $t0, -1000($fp)
	lw $t0, -996($fp)
	lw $t1, -1000($fp)
	mul $t0, $t0, $t1
	sw $t0, -1004($fp)
	li $t0, 0
	lw $t1, -1004($fp)
	sub $t0, $t0, $t1
	sw $t0, -1008($fp)
	lw $t1, -992($fp)
	lw $t2, -1008($fp)
	beq $t1, $t2, label953
	j label954
label953:
	li $t0, 1
	sw $t0, -976($fp)
label954:
	li $t0, 0
	sw $t0, -1012($fp)
	li $t0, 10258
	sw $t0, -1016($fp)
	lw $t1, -1016($fp)
	li $t2, 0
	bne $t1, $t2, label957
	j label958
label957:
	li $t0, 1
	sw $t0, -1012($fp)
label958:
	li $t0, 0
	sw $t0, -1020($fp)
	li $t0, 9308
	sw $t0, -1024($fp)
	lw $t1, -1024($fp)
	li $t2, 0
	bne $t1, $t2, label960
	j label959
label959:
	li $t0, 1
	sw $t0, -1020($fp)
label960:
	lw $t0, -1012($fp)
	lw $t1, -1020($fp)
	add $t0, $t0, $t1
	sw $t0, -1028($fp)
	lw $t1, -976($fp)
	lw $t2, -1028($fp)
	beq $t1, $t2, label951
	j label952
label951:
	li $t0, 1
	sw $t0, -972($fp)
label952:
label961:
	lw $t0, -84($fp)
	sw $t0, -1032($fp)
	lw $t1, -1032($fp)
	li $t2, 0
	bne $t1, $t2, label962
	j label963
label962:
	li $t0, 42548
	sw $t0, -1036($fp)
	j label961
label963:
label964:
	li $t0, 21724
	sw $t0, -1040($fp)
	li $t0, 50145
	sw $t0, -1044($fp)
	lw $t0, -1040($fp)
	lw $t1, -1044($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1048($fp)
	lw $t1, -1048($fp)
	li $t2, 0
	bne $t1, $t2, label968
	j label966
label968:
	li $t0, 0
	sw $t0, -1052($fp)
	lw $t0, -60($fp)
	sw $t0, -1056($fp)
	lw $t0, -964($fp)
	sw $t0, -1060($fp)
	lw $t0, -1056($fp)
	lw $t1, -1060($fp)
	sub $t0, $t0, $t1
	sw $t0, -1064($fp)
	lw $t0, -108($fp)
	sw $t0, -1068($fp)
	lw $t1, -1064($fp)
	lw $t2, -1068($fp)
	beq $t1, $t2, label969
	j label970
label969:
	li $t0, 1
	sw $t0, -1052($fp)
label970:
	lw $t0, 4($fp)
	sw $t0, -1072($fp)
	li $t0, 11981
	sw $t0, -1076($fp)
	lw $t0, -1072($fp)
	lw $t1, -1076($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1080($fp)
	lw $t0, -952($fp)
	sw $t0, -1084($fp)
	lw $t0, -1080($fp)
	lw $t1, -1084($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1088($fp)
	li $t0, 49314
	sw $t0, -1092($fp)
	addi $sp, $sp, -4
	lw $t0, -1088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1092($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1096($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -1100($fp)
	li $t0, 0
	sw $t0, -1104($fp)
	lw $t0, 4($fp)
	sw $t0, -1108($fp)
	li $t0, 43146
	sw $t0, -1112($fp)
	lw $t1, -1108($fp)
	lw $t2, -1112($fp)
	blt $t1, $t2, label973
	j label974
label973:
	li $t0, 1
	sw $t0, -1104($fp)
label974:
	lw $t0, -108($fp)
	sw $t0, -1116($fp)
	lw $t1, -1104($fp)
	lw $t2, -1116($fp)
	bgt $t1, $t2, label971
	j label972
label971:
	li $t0, 1
	sw $t0, -1100($fp)
label972:
	addi $sp, $sp, -4
	lw $t0, -1052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1100($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1120($fp)
	addi $sp, $sp, 16
	lw $t0, -96($fp)
	sw $t0, -1124($fp)
	lw $t1, -1120($fp)
	lw $t2, -1124($fp)
	beq $t1, $t2, label967
	j label966
label967:
	addi $t0, $fp, -16
	sw $t0, -1128($fp)
	li $t0, 0
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
	lw $t1, -1144($fp)
	li $t2, 0
	bne $t1, $t2, label965
	j label966
label965:
	li $t0, 0
	sw $t0, -1148($fp)
	addi $t0, $fp, -52
	sw $t0, -1152($fp)
	li $t0, 0
	sw $t0, -1156($fp)
	li $t0, 30154
	sw $t0, -1160($fp)
	lw $t1, -1160($fp)
	li $t2, 0
	bne $t1, $t2, label979
	j label978
label978:
	li $t0, 1
	sw $t0, -1156($fp)
label979:
	lw $t0, -952($fp)
	sw $t0, -1164($fp)
	lw $t0, -1156($fp)
	lw $t1, -1164($fp)
	sub $t0, $t0, $t1
	sw $t0, -1168($fp)
	li $t0, 4
	lw $t1, -1168($fp)
	mul $t0, $t0, $t1
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	lw $t1, -1152($fp)
	add $t0, $t0, $t1
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	lw $t1, 0($t0)
	sw $t1, -1180($fp)
	lw $t1, -1180($fp)
	li $t2, 0
	bne $t1, $t2, label977
	j label976
label977:
	li $t0, 0
	sw $t0, -1184($fp)
	li $t0, 29308
	sw $t0, -1188($fp)
	lw $t1, -1188($fp)
	li $t2, 0
	bne $t1, $t2, label980
	j label981
label980:
	li $t0, 1
	sw $t0, -1184($fp)
label981:
	addi $t0, $fp, -16
	sw $t0, -1192($fp)
	li $t0, 1
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
	addi $sp, $sp, -4
	lw $t0, -1208($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1212($fp)
	addi $sp, $sp, 8
	lw $t1, -1184($fp)
	lw $t2, -1212($fp)
	blt $t1, $t2, label975
	j label976
label975:
	li $t0, 1
	sw $t0, -1148($fp)
label976:
	j label964
label966:
	lw $t0, -940($fp)
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -952($fp)
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -964($fp)
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -940($fp)
	sw $t0, -1228($fp)
	lw $ra, -4($fp)
	lw $v0, -1228($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label950
label949:
	li $t0, 0
	sw $t0, -1232($fp)
	li $t0, 0
	sw $t0, -1236($fp)
	li $t0, 1396
	sw $t0, -1240($fp)
	lw $t0, 4($fp)
	sw $t0, -1244($fp)
	lw $t0, -216($fp)
	sw $t0, -1248($fp)
	lw $t0, -1244($fp)
	lw $t1, -1248($fp)
	mul $t0, $t0, $t1
	sw $t0, -1252($fp)
	lw $t1, -1240($fp)
	lw $t2, -1252($fp)
	ble $t1, $t2, label984
	j label985
label984:
	li $t0, 1
	sw $t0, -1236($fp)
label985:
	addi $t0, $fp, -16
	sw $t0, -1256($fp)
	lw $t0, -216($fp)
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -1264($fp)
	li $t0, 4
	lw $t1, -1264($fp)
	mul $t0, $t0, $t1
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	lw $t1, -1256($fp)
	add $t0, $t0, $t1
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	lw $t1, 0($t0)
	sw $t1, -1276($fp)
	lw $t1, -1236($fp)
	lw $t2, -1276($fp)
	beq $t1, $t2, label982
	j label983
label982:
	li $t0, 1
	sw $t0, -1232($fp)
label983:
label950:
	li $t0, 33124
	sw $t0, -1280($fp)
	li $t0, 49282
	sw $t0, -1284($fp)
	lw $t0, -1280($fp)
	lw $t1, -1284($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1288($fp)
	li $t0, 0
	lw $t1, -1288($fp)
	sub $t0, $t0, $t1
	sw $t0, -1292($fp)
	li $t0, 0
	sw $t0, -1296($fp)
	lw $t0, -84($fp)
	sw $t0, -1300($fp)
	li $t0, 52716
	sw $t0, -1304($fp)
	lw $t0, -1300($fp)
	lw $t1, -1304($fp)
	mul $t0, $t0, $t1
	sw $t0, -1308($fp)
	lw $t1, -1308($fp)
	li $t2, 0
	bne $t1, $t2, label988
	j label987
label988:
	li $t0, 26071
	sw $t0, -1312($fp)
	lw $t1, -1312($fp)
	li $t2, 0
	bne $t1, $t2, label986
	j label987
label986:
	li $t0, 1
	sw $t0, -1296($fp)
label987:
	addi $sp, $sp, -4
	lw $t0, -1292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1296($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1316($fp)
	addi $sp, $sp, 12
	lw $t0, -216($fp)
	sw $t0, -1320($fp)
	li $t0, 0
	lw $t1, -1320($fp)
	sub $t0, $t0, $t1
	sw $t0, -1324($fp)
	li $t0, 0
	lw $t1, -1324($fp)
	sub $t0, $t0, $t1
	sw $t0, -1328($fp)
	lw $t0, -1316($fp)
	lw $t1, -1328($fp)
	sub $t0, $t0, $t1
	sw $t0, -1332($fp)
	lw $t0, -456($fp)
	sw $t0, -1336($fp)
	li $t0, 52322
	sw $t0, -1340($fp)
	lw $t0, -1336($fp)
	lw $t1, -1340($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1344($fp)
	lw $t0, -1332($fp)
	lw $t1, -1344($fp)
	sub $t0, $t0, $t1
	sw $t0, -1348($fp)
	li $t0, 1757
	sw $t0, -1352($fp)
	lw $t0, -60($fp)
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -72($fp)
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -1376($fp)
	li $t0, 0
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
	addi $t0, $fp, -16
	sw $t0, -1396($fp)
	li $t0, 1
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
	addi $t0, $fp, -16
	sw $t0, -1416($fp)
	li $t0, 2
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
	lw $t0, -192($fp)
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -204($fp)
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -216($fp)
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -228($fp)
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
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
	addi $t0, $fp, -52
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
	addi $t0, $fp, -52
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
	addi $t0, $fp, -52
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
	addi $t0, $fp, -52
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
	addi $t0, $fp, -52
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
	addi $t0, $fp, -52
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
	addi $t0, $fp, -52
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
	addi $t0, $fp, -52
	sw $t0, -1612($fp)
	li $t0, 8
	sw $t0, -1616($fp)
	li $t0, 4
	lw $t1, -1616($fp)
	mul $t0, $t0, $t1
	sw $t0, -1620($fp)
	lw $t0, -1620($fp)
	lw $t1, -1612($fp)
	add $t0, $t0, $t1
	sw $t0, -1624($fp)
	lw $t0, -1624($fp)
	lw $t1, 0($t0)
	sw $t1, -1628($fp)
	lw $t0, -1628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -456($fp)
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1636($fp)
	lw $t0, 8($fp)
	sw $t0, -1640($fp)
	lw $t0, -216($fp)
	sw $t0, -1644($fp)
	lw $t0, -1640($fp)
	lw $t1, -1644($fp)
	mul $t0, $t0, $t1
	sw $t0, -1648($fp)
	li $t0, 0
	sw $t0, -1652($fp)
	li $t0, 0
	sw $t0, -1656($fp)
	li $t0, 29422
	sw $t0, -1660($fp)
	lw $t0, -216($fp)
	sw $t0, -1664($fp)
	lw $t1, -1660($fp)
	lw $t2, -1664($fp)
	bne $t1, $t2, label994
	j label995
label994:
	li $t0, 1
	sw $t0, -1656($fp)
label995:
	li $t0, 42917
	sw $t0, -1668($fp)
	lw $t1, -1656($fp)
	lw $t2, -1668($fp)
	bne $t1, $t2, label992
	j label993
label992:
	li $t0, 1
	sw $t0, -1652($fp)
label993:
	addi $sp, $sp, -4
	lw $t0, -1648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1652($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1672($fp)
	addi $sp, $sp, 12
	lw $t1, -1672($fp)
	li $t2, 0
	bne $t1, $t2, label989
	j label991
label991:
	lw $t0, -84($fp)
	sw $t0, -1676($fp)
	li $t0, 4799
	sw $t0, -1680($fp)
	lw $t0, -60($fp)
	sw $t0, -1684($fp)
	lw $t0, -1680($fp)
	lw $t1, -1684($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1688($fp)
	li $t0, 0
	sw $t0, -1692($fp)
	addi $t0, $fp, -52
	sw $t0, -1696($fp)
	li $t0, 3
	sw $t0, -1700($fp)
	li $t0, 4
	lw $t1, -1700($fp)
	mul $t0, $t0, $t1
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	lw $t1, -1696($fp)
	add $t0, $t0, $t1
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	lw $t1, 0($t0)
	sw $t1, -1712($fp)
	li $t0, 0
	sw $t0, -1716($fp)
	li $t0, 42802
	sw $t0, -1720($fp)
	li $t0, 0
	lw $t1, -1720($fp)
	sub $t0, $t0, $t1
	sw $t0, -1724($fp)
	lw $t1, -1724($fp)
	li $t2, 0
	bne $t1, $t2, label999
	j label998
label998:
	li $t0, 1
	sw $t0, -1716($fp)
label999:
	addi $sp, $sp, -4
	lw $t0, -1712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1716($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1728($fp)
	addi $sp, $sp, 12
	li $t0, 20960
	sw $t0, -1732($fp)
	lw $t1, -1728($fp)
	lw $t2, -1732($fp)
	blt $t1, $t2, label996
	j label997
label996:
	li $t0, 1
	sw $t0, -1692($fp)
label997:
	addi $sp, $sp, -4
	lw $t0, -1688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1692($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1736($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -1676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1736($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1740($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -1744($fp)
	lw $t0, -72($fp)
	sw $t0, -1748($fp)
	lw $t1, -1748($fp)
	li $t2, 0
	bne $t1, $t2, label1001
	j label1000
label1000:
	li $t0, 1
	sw $t0, -1744($fp)
label1001:
	lw $t1, -1740($fp)
	lw $t2, -1744($fp)
	beq $t1, $t2, label989
	j label990
label989:
	li $t0, 1
	sw $t0, -1636($fp)
label990:
	lw $ra, -4($fp)
	lw $v0, -1636($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -40
	li $t0, 48036
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 0
	sw $t0, -20($fp)
	li $t0, 13964
	sw $t0, -24($fp)
	li $t0, 0
	lw $t1, -24($fp)
	sub $t0, $t0, $t1
	sw $t0, -28($fp)
	lw $t1, -28($fp)
	li $t2, 0
	bne $t1, $t2, label1002
	j label1004
label1004:
	lw $t0, -12($fp)
	sw $t0, -32($fp)
	lw $t1, -32($fp)
	li $t2, 0
	bne $t1, $t2, label1002
	j label1003
label1002:
	li $t0, 1
	sw $t0, -20($fp)
label1003:
	addi $sp, $sp, -4
	lw $t0, -20($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -36($fp)
	addi $sp, $sp, 8
	lw $t0, -12($fp)
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 45734
	sw $t0, -44($fp)
	lw $ra, -4($fp)
	lw $v0, -44($fp)
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
