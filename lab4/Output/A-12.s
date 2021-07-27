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
	addi $sp, $sp, -6156
	li $t0, 27882
	sw $t0, -64($fp)
	addi $t0, $fp, -24
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
	li $t0, 16051
	sw $t0, -88($fp)
	addi $t0, $fp, -24
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
	li $t0, 31544
	sw $t0, -112($fp)
	addi $t0, $fp, -24
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
	li $t0, 41518
	sw $t0, -136($fp)
	addi $t0, $fp, -24
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
	li $t0, 2799
	sw $t0, -160($fp)
	addi $t0, $fp, -24
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
	li $t0, 30153
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	li $t0, 35780
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	li $t0, 24241
	sw $t0, -208($fp)
	addi $t0, $fp, -60
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
	li $t0, 55876
	sw $t0, -232($fp)
	addi $t0, $fp, -60
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
	li $t0, 19395
	sw $t0, -256($fp)
	addi $t0, $fp, -60
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
	li $t0, 9363
	sw $t0, -280($fp)
	addi $t0, $fp, -60
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
	li $t0, 33889
	sw $t0, -304($fp)
	addi $t0, $fp, -60
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
	li $t0, 20452
	sw $t0, -328($fp)
	addi $t0, $fp, -60
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
	li $t0, 63971
	sw $t0, -352($fp)
	addi $t0, $fp, -60
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
	li $t0, 38641
	sw $t0, -376($fp)
	addi $t0, $fp, -60
	sw $t0, -380($fp)
	li $t0, 7
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
	li $t0, 19771
	sw $t0, -400($fp)
	addi $t0, $fp, -60
	sw $t0, -404($fp)
	li $t0, 8
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
	li $t0, 2018
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	li $t0, 28479
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	li $t0, 987
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	li $t0, 38702
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	li $t0, 36561
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	li $t0, 25604
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	li $t0, 8522
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -604($fp)
	li $t0, 51574
	sw $t0, -608($fp)
	addi $t0, $fp, -524
	sw $t0, -612($fp)
	li $t0, 0
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
	li $t0, 11403
	sw $t0, -632($fp)
	addi $t0, $fp, -524
	sw $t0, -636($fp)
	li $t0, 1
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
	li $t0, 24746
	sw $t0, -656($fp)
	addi $t0, $fp, -524
	sw $t0, -660($fp)
	li $t0, 2
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
	li $t0, 54365
	sw $t0, -680($fp)
	addi $t0, $fp, -524
	sw $t0, -684($fp)
	li $t0, 3
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
	li $t0, 30571
	sw $t0, -704($fp)
	addi $t0, $fp, -524
	sw $t0, -708($fp)
	li $t0, 4
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
	li $t0, 26369
	sw $t0, -728($fp)
	addi $t0, $fp, -524
	sw $t0, -732($fp)
	li $t0, 5
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
	li $t0, 27763
	sw $t0, -752($fp)
	addi $t0, $fp, -524
	sw $t0, -756($fp)
	li $t0, 6
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
	li $t0, 45717
	sw $t0, -776($fp)
	addi $t0, $fp, -524
	sw $t0, -780($fp)
	li $t0, 7
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
	li $t0, 54251
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -808($fp)
	li $t0, 43815
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -820($fp)
	li $t0, 11725
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	sw $t0, -832($fp)
	li $t0, 30233
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	sw $t0, -844($fp)
	li $t0, 46614
	sw $t0, -848($fp)
	addi $t0, $fp, -544
	sw $t0, -852($fp)
	li $t0, 0
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
	li $t0, 41879
	sw $t0, -872($fp)
	addi $t0, $fp, -544
	sw $t0, -876($fp)
	li $t0, 1
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
	li $t0, 477
	sw $t0, -896($fp)
	addi $t0, $fp, -544
	sw $t0, -900($fp)
	li $t0, 2
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
	li $t0, 5320
	sw $t0, -920($fp)
	addi $t0, $fp, -544
	sw $t0, -924($fp)
	li $t0, 3
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
	li $t0, 32219
	sw $t0, -944($fp)
	addi $t0, $fp, -544
	sw $t0, -948($fp)
	li $t0, 4
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -956($fp)
	lw $t0, -948($fp)
	lw $t1, -956($fp)
	add $t0, $t0, $t1
	sw $t0, -960($fp)
	lw $t0, -944($fp)
	lw $t1, -960($fp)
	sw $t0, 0($t1)
	lw $t0, -960($fp)
	lw $t1, 0($t0)
	sw $t1, -964($fp)
	li $t0, 19873
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	sw $t0, -976($fp)
	li $t0, 14683
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	sw $t0, -988($fp)
	li $t0, 573
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	sw $t0, -1000($fp)
	li $t0, 40325
	sw $t0, -1004($fp)
	addi $t0, $fp, -548
	sw $t0, -1008($fp)
	li $t0, 0
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
	li $t0, 13118
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	sw $t0, -1036($fp)
	li $t0, 39214
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	sw $t0, -1048($fp)
	li $t0, 60097
	sw $t0, -1052($fp)
	addi $t0, $fp, -568
	sw $t0, -1056($fp)
	li $t0, 0
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
	li $t0, 15136
	sw $t0, -1076($fp)
	addi $t0, $fp, -568
	sw $t0, -1080($fp)
	li $t0, 1
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
	li $t0, 2157
	sw $t0, -1100($fp)
	addi $t0, $fp, -568
	sw $t0, -1104($fp)
	li $t0, 2
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
	li $t0, 61084
	sw $t0, -1124($fp)
	addi $t0, $fp, -568
	sw $t0, -1128($fp)
	li $t0, 3
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
	li $t0, 53838
	sw $t0, -1148($fp)
	addi $t0, $fp, -568
	sw $t0, -1152($fp)
	li $t0, 4
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
	li $t0, 38718
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	sw $t0, -1180($fp)
	li $t0, 21152
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	sw $t0, -1192($fp)
	li $t0, 62361
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	sw $t0, -1204($fp)
	li $t0, 24756
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	sw $t0, -1216($fp)
	li $t0, 32555
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	sw $t0, -1228($fp)
	li $t0, 21571
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	sw $t0, -1240($fp)
	li $t0, 13586
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	sw $t0, -1252($fp)
	li $t0, 63127
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	sw $t0, -1264($fp)
	li $t0, 47940
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -1276($fp)
	li $t0, 41349
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1288($fp)
	li $t0, 43308
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	sw $t0, -1300($fp)
	li $t0, 36655
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	sw $t0, -1312($fp)
	li $t0, 19628
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	sw $t0, -1324($fp)
	li $t0, 55034
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	sw $t0, -1336($fp)
	li $t0, 1352
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	sw $t0, -1348($fp)
	li $t0, 707
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	sw $t0, -1360($fp)
	li $t0, 31377
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	sw $t0, -1372($fp)
	li $t0, 1830
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	sw $t0, -1384($fp)
	li $t0, 6027
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	sw $t0, -1396($fp)
	li $t0, 63596
	sw $t0, -1400($fp)
	addi $t0, $fp, -588
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
	li $t0, 21703
	sw $t0, -1424($fp)
	addi $t0, $fp, -588
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
	li $t0, 20710
	sw $t0, -1448($fp)
	addi $t0, $fp, -588
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
	li $t0, 64169
	sw $t0, -1472($fp)
	addi $t0, $fp, -588
	sw $t0, -1476($fp)
	li $t0, 3
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
	li $t0, 62028
	sw $t0, -1496($fp)
	addi $t0, $fp, -588
	sw $t0, -1500($fp)
	li $t0, 4
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
	li $t0, 33828
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	sw $t0, -1528($fp)
	li $t0, 37847
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	sw $t0, -1540($fp)
	li $t0, 56589
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	sw $t0, -1552($fp)
	li $t0, 48965
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	sw $t0, -1564($fp)
	li $t0, 40004
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	sw $t0, -1576($fp)
	li $t0, 52137
	sw $t0, -1580($fp)
	addi $t0, $fp, -592
	sw $t0, -1584($fp)
	li $t0, 0
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
	li $t0, 37267
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	sw $t0, -1612($fp)
	li $t0, 13187
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	sw $t0, -1620($fp)
	lw $t0, -1620($fp)
	sw $t0, -1624($fp)
	li $t0, 7754
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	sw $t0, -1636($fp)
	lw $t0, -600($fp)
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -524
	sw $t0, -1644($fp)
	li $t0, 0
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
	addi $t0, $fp, -524
	sw $t0, -1664($fp)
	li $t0, 1
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
	addi $t0, $fp, -524
	sw $t0, -1684($fp)
	li $t0, 2
	sw $t0, -1688($fp)
	li $t0, 4
	lw $t1, -1688($fp)
	mul $t0, $t0, $t1
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	lw $t1, -1684($fp)
	add $t0, $t0, $t1
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	lw $t1, 0($t0)
	sw $t1, -1700($fp)
	lw $t0, -1700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -524
	sw $t0, -1704($fp)
	li $t0, 3
	sw $t0, -1708($fp)
	li $t0, 4
	lw $t1, -1708($fp)
	mul $t0, $t0, $t1
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	lw $t1, -1704($fp)
	add $t0, $t0, $t1
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	lw $t1, 0($t0)
	sw $t1, -1720($fp)
	lw $t0, -1720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -524
	sw $t0, -1724($fp)
	li $t0, 4
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
	addi $t0, $fp, -524
	sw $t0, -1744($fp)
	li $t0, 5
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
	addi $t0, $fp, -524
	sw $t0, -1764($fp)
	li $t0, 6
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
	addi $t0, $fp, -524
	sw $t0, -1784($fp)
	li $t0, 7
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
	lw $t0, -804($fp)
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -816($fp)
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -828($fp)
	sw $t0, -1812($fp)
	lw $t0, -1812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -840($fp)
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -544
	sw $t0, -1820($fp)
	li $t0, 0
	sw $t0, -1824($fp)
	li $t0, 4
	lw $t1, -1824($fp)
	mul $t0, $t0, $t1
	sw $t0, -1828($fp)
	lw $t0, -1828($fp)
	lw $t1, -1820($fp)
	add $t0, $t0, $t1
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	lw $t1, 0($t0)
	sw $t1, -1836($fp)
	lw $t0, -1836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -544
	sw $t0, -1840($fp)
	li $t0, 1
	sw $t0, -1844($fp)
	li $t0, 4
	lw $t1, -1844($fp)
	mul $t0, $t0, $t1
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	lw $t1, -1840($fp)
	add $t0, $t0, $t1
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	lw $t1, 0($t0)
	sw $t1, -1856($fp)
	lw $t0, -1856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -544
	sw $t0, -1860($fp)
	li $t0, 2
	sw $t0, -1864($fp)
	li $t0, 4
	lw $t1, -1864($fp)
	mul $t0, $t0, $t1
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	lw $t1, -1860($fp)
	add $t0, $t0, $t1
	sw $t0, -1872($fp)
	lw $t0, -1872($fp)
	lw $t1, 0($t0)
	sw $t1, -1876($fp)
	lw $t0, -1876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -544
	sw $t0, -1880($fp)
	li $t0, 3
	sw $t0, -1884($fp)
	li $t0, 4
	lw $t1, -1884($fp)
	mul $t0, $t0, $t1
	sw $t0, -1888($fp)
	lw $t0, -1888($fp)
	lw $t1, -1880($fp)
	add $t0, $t0, $t1
	sw $t0, -1892($fp)
	lw $t0, -1892($fp)
	lw $t1, 0($t0)
	sw $t1, -1896($fp)
	lw $t0, -1896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -544
	sw $t0, -1900($fp)
	li $t0, 4
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
	lw $t0, -1916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -972($fp)
	sw $t0, -1920($fp)
	lw $t0, -1920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -984($fp)
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -996($fp)
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -548
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
	lw $t0, -1032($fp)
	sw $t0, -1952($fp)
	lw $t0, -1952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1044($fp)
	sw $t0, -1956($fp)
	lw $t0, -1956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -568
	sw $t0, -1960($fp)
	li $t0, 0
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
	addi $t0, $fp, -568
	sw $t0, -1980($fp)
	li $t0, 1
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
	addi $t0, $fp, -568
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
	lw $t0, -2016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -568
	sw $t0, -2020($fp)
	li $t0, 3
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
	addi $t0, $fp, -568
	sw $t0, -2040($fp)
	li $t0, 4
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
	lw $t0, -1176($fp)
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1188($fp)
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1200($fp)
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1212($fp)
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1224($fp)
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1236($fp)
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1248($fp)
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1260($fp)
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1272($fp)
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1284($fp)
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1296($fp)
	sw $t0, -2100($fp)
	lw $t0, -2100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1308($fp)
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1320($fp)
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1332($fp)
	sw $t0, -2112($fp)
	lw $t0, -2112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1344($fp)
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1356($fp)
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1368($fp)
	sw $t0, -2124($fp)
	lw $t0, -2124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1380($fp)
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1392($fp)
	sw $t0, -2132($fp)
	lw $t0, -2132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -588
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
	addi $t0, $fp, -588
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
	addi $t0, $fp, -588
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
	addi $t0, $fp, -588
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
	addi $t0, $fp, -588
	sw $t0, -2216($fp)
	li $t0, 4
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
	lw $t0, -1524($fp)
	sw $t0, -2236($fp)
	lw $t0, -2236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1536($fp)
	sw $t0, -2240($fp)
	lw $t0, -2240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1548($fp)
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1560($fp)
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1572($fp)
	sw $t0, -2252($fp)
	lw $t0, -2252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -592
	sw $t0, -2256($fp)
	li $t0, 0
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
	lw $t0, -1608($fp)
	sw $t0, -2276($fp)
	lw $t0, -2276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1620($fp)
	sw $t0, -2280($fp)
	lw $t0, -2280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1632($fp)
	sw $t0, -2284($fp)
	lw $t0, -2284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -476($fp)
	sw $t0, -2288($fp)
	addi $t0, $fp, -588
	sw $t0, -2292($fp)
	li $t0, 1
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
	lw $t0, -2288($fp)
	lw $t1, -2308($fp)
	sub $t0, $t0, $t1
	sw $t0, -2312($fp)
	lw $t0, -2312($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -2316($fp)
	lw $ra, -4($fp)
	lw $v0, -2316($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -600($fp)
	sw $t0, -2320($fp)
	lw $t0, -2320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -524
	sw $t0, -2324($fp)
	li $t0, 0
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
	addi $t0, $fp, -524
	sw $t0, -2344($fp)
	li $t0, 1
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
	addi $t0, $fp, -524
	sw $t0, -2364($fp)
	li $t0, 2
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
	addi $t0, $fp, -524
	sw $t0, -2384($fp)
	li $t0, 3
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
	addi $t0, $fp, -524
	sw $t0, -2404($fp)
	li $t0, 4
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
	addi $t0, $fp, -524
	sw $t0, -2424($fp)
	li $t0, 5
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
	addi $t0, $fp, -524
	sw $t0, -2444($fp)
	li $t0, 6
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
	addi $t0, $fp, -524
	sw $t0, -2464($fp)
	li $t0, 7
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
	lw $t0, -804($fp)
	sw $t0, -2484($fp)
	lw $t0, -2484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -816($fp)
	sw $t0, -2488($fp)
	lw $t0, -2488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -828($fp)
	sw $t0, -2492($fp)
	lw $t0, -2492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -840($fp)
	sw $t0, -2496($fp)
	lw $t0, -2496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -544
	sw $t0, -2500($fp)
	li $t0, 0
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
	addi $t0, $fp, -544
	sw $t0, -2520($fp)
	li $t0, 1
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
	addi $t0, $fp, -544
	sw $t0, -2540($fp)
	li $t0, 2
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
	addi $t0, $fp, -544
	sw $t0, -2560($fp)
	li $t0, 3
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
	addi $t0, $fp, -544
	sw $t0, -2580($fp)
	li $t0, 4
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
	lw $t0, -2596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -972($fp)
	sw $t0, -2600($fp)
	lw $t0, -2600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -984($fp)
	sw $t0, -2604($fp)
	lw $t0, -2604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -996($fp)
	sw $t0, -2608($fp)
	lw $t0, -2608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -548
	sw $t0, -2612($fp)
	li $t0, 0
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
	lw $t0, -1032($fp)
	sw $t0, -2632($fp)
	lw $t0, -2632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1044($fp)
	sw $t0, -2636($fp)
	lw $t0, -2636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -568
	sw $t0, -2640($fp)
	li $t0, 0
	sw $t0, -2644($fp)
	li $t0, 4
	lw $t1, -2644($fp)
	mul $t0, $t0, $t1
	sw $t0, -2648($fp)
	lw $t0, -2648($fp)
	lw $t1, -2640($fp)
	add $t0, $t0, $t1
	sw $t0, -2652($fp)
	lw $t0, -2652($fp)
	lw $t1, 0($t0)
	sw $t1, -2656($fp)
	lw $t0, -2656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -568
	sw $t0, -2660($fp)
	li $t0, 1
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
	lw $t0, -2676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -568
	sw $t0, -2680($fp)
	li $t0, 2
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
	lw $t0, -2696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -568
	sw $t0, -2700($fp)
	li $t0, 3
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
	addi $t0, $fp, -568
	sw $t0, -2720($fp)
	li $t0, 4
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
	lw $t0, -1176($fp)
	sw $t0, -2740($fp)
	lw $t0, -2740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1188($fp)
	sw $t0, -2744($fp)
	lw $t0, -2744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1200($fp)
	sw $t0, -2748($fp)
	lw $t0, -2748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1212($fp)
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1224($fp)
	sw $t0, -2756($fp)
	lw $t0, -2756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1236($fp)
	sw $t0, -2760($fp)
	lw $t0, -2760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1248($fp)
	sw $t0, -2764($fp)
	lw $t0, -2764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1260($fp)
	sw $t0, -2768($fp)
	lw $t0, -2768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1272($fp)
	sw $t0, -2772($fp)
	lw $t0, -2772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1284($fp)
	sw $t0, -2776($fp)
	lw $t0, -2776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1296($fp)
	sw $t0, -2780($fp)
	lw $t0, -2780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1308($fp)
	sw $t0, -2784($fp)
	lw $t0, -2784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1320($fp)
	sw $t0, -2788($fp)
	lw $t0, -2788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1332($fp)
	sw $t0, -2792($fp)
	lw $t0, -2792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1344($fp)
	sw $t0, -2796($fp)
	lw $t0, -2796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1356($fp)
	sw $t0, -2800($fp)
	lw $t0, -2800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1368($fp)
	sw $t0, -2804($fp)
	lw $t0, -2804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1380($fp)
	sw $t0, -2808($fp)
	lw $t0, -2808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1392($fp)
	sw $t0, -2812($fp)
	lw $t0, -2812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -588
	sw $t0, -2816($fp)
	li $t0, 0
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
	lw $t0, -2832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -588
	sw $t0, -2836($fp)
	li $t0, 1
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
	lw $t0, -2852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -588
	sw $t0, -2856($fp)
	li $t0, 2
	sw $t0, -2860($fp)
	li $t0, 4
	lw $t1, -2860($fp)
	mul $t0, $t0, $t1
	sw $t0, -2864($fp)
	lw $t0, -2864($fp)
	lw $t1, -2856($fp)
	add $t0, $t0, $t1
	sw $t0, -2868($fp)
	lw $t0, -2868($fp)
	lw $t1, 0($t0)
	sw $t1, -2872($fp)
	lw $t0, -2872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -588
	sw $t0, -2876($fp)
	li $t0, 3
	sw $t0, -2880($fp)
	li $t0, 4
	lw $t1, -2880($fp)
	mul $t0, $t0, $t1
	sw $t0, -2884($fp)
	lw $t0, -2884($fp)
	lw $t1, -2876($fp)
	add $t0, $t0, $t1
	sw $t0, -2888($fp)
	lw $t0, -2888($fp)
	lw $t1, 0($t0)
	sw $t1, -2892($fp)
	lw $t0, -2892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -588
	sw $t0, -2896($fp)
	li $t0, 4
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
	lw $t0, -2912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1524($fp)
	sw $t0, -2916($fp)
	lw $t0, -2916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1536($fp)
	sw $t0, -2920($fp)
	lw $t0, -2920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1548($fp)
	sw $t0, -2924($fp)
	lw $t0, -2924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1560($fp)
	sw $t0, -2928($fp)
	lw $t0, -2928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1572($fp)
	sw $t0, -2932($fp)
	lw $t0, -2932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -592
	sw $t0, -2936($fp)
	li $t0, 0
	sw $t0, -2940($fp)
	li $t0, 4
	lw $t1, -2940($fp)
	mul $t0, $t0, $t1
	sw $t0, -2944($fp)
	lw $t0, -2944($fp)
	lw $t1, -2936($fp)
	add $t0, $t0, $t1
	sw $t0, -2948($fp)
	lw $t0, -2948($fp)
	lw $t1, 0($t0)
	sw $t1, -2952($fp)
	lw $t0, -2952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1608($fp)
	sw $t0, -2956($fp)
	lw $t0, -2956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1620($fp)
	sw $t0, -2960($fp)
	lw $t0, -2960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1632($fp)
	sw $t0, -2964($fp)
	lw $t0, -2964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2968($fp)
	addi $t0, $fp, -24
	sw $t0, -2972($fp)
	lw $t0, -600($fp)
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
	lw $t1, -2988($fp)
	li $t2, 0
	bne $t1, $t2, label122
	j label121
label121:
	li $t0, 1
	sw $t0, -2968($fp)
label122:
	lw $ra, -4($fp)
	lw $v0, -2968($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 40309
	sw $t0, -2992($fp)
	lw $t0, -488($fp)
	sw $t0, -2996($fp)
	lw $t0, -1368($fp)
	sw $t0, -3000($fp)
	lw $t0, -2996($fp)
	lw $t1, -3000($fp)
	add $t0, $t0, $t1
	sw $t0, -3004($fp)
	lw $t1, -2992($fp)
	lw $t2, -3004($fp)
	ble $t1, $t2, label126
	j label124
label126:
	li $t0, 55664
	sw $t0, -3008($fp)
	lw $t1, -3008($fp)
	li $t2, 0
	bne $t1, $t2, label123
	j label124
label123:
label127:
	li $t0, 0
	sw $t0, -3012($fp)
	li $t0, 0
	sw $t0, -3016($fp)
	li $t0, 0
	sw $t0, -3020($fp)
	li $t0, 0
	sw $t0, -3024($fp)
	li $t0, 27343
	sw $t0, -3028($fp)
	lw $t0, -1620($fp)
	sw $t0, -3032($fp)
	lw $t1, -3028($fp)
	lw $t2, -3032($fp)
	blt $t1, $t2, label137
	j label138
label137:
	li $t0, 1
	sw $t0, -3024($fp)
label138:
	lw $t0, -1320($fp)
	sw $t0, -3036($fp)
	lw $t1, -3024($fp)
	lw $t2, -3036($fp)
	bne $t1, $t2, label135
	j label136
label135:
	li $t0, 1
	sw $t0, -3020($fp)
label136:
	lw $t0, -1368($fp)
	sw $t0, -3040($fp)
	li $t0, 0
	lw $t1, -3040($fp)
	sub $t0, $t0, $t1
	sw $t0, -3044($fp)
	li $t0, 0
	sw $t0, -3048($fp)
	lw $t0, -804($fp)
	sw $t0, -3052($fp)
	li $t0, 0
	lw $t1, -3052($fp)
	sub $t0, $t0, $t1
	sw $t0, -3056($fp)
	lw $t0, -440($fp)
	sw $t0, -3060($fp)
	lw $t1, -3056($fp)
	lw $t2, -3060($fp)
	bgt $t1, $t2, label139
	j label140
label139:
	li $t0, 1
	sw $t0, -3048($fp)
label140:
	addi $sp, $sp, -4
	lw $t0, -3020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3048($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3064($fp)
	addi $sp, $sp, 16
	lw $t1, -3064($fp)
	li $t2, 0
	bne $t1, $t2, label132
	j label134
label134:
	lw $t0, -1248($fp)
	sw $t0, -3068($fp)
	lw $t1, -3068($fp)
	li $t2, 0
	bne $t1, $t2, label132
	j label133
label132:
	li $t0, 1
	sw $t0, -3016($fp)
label133:
	addi $t0, $fp, -24
	sw $t0, -3072($fp)
	li $t0, 4
	sw $t0, -3076($fp)
	li $t0, 4
	lw $t1, -3076($fp)
	mul $t0, $t0, $t1
	sw $t0, -3080($fp)
	lw $t0, -3080($fp)
	lw $t1, -3072($fp)
	add $t0, $t0, $t1
	sw $t0, -3084($fp)
	lw $t0, -3084($fp)
	lw $t1, 0($t0)
	sw $t1, -3088($fp)
	li $t0, 0
	sw $t0, -3092($fp)
	li $t0, 51529
	sw $t0, -3096($fp)
	li $t0, 0
	lw $t1, -3096($fp)
	sub $t0, $t0, $t1
	sw $t0, -3100($fp)
	lw $t1, -3100($fp)
	li $t2, 0
	bne $t1, $t2, label142
	j label141
label141:
	li $t0, 1
	sw $t0, -3092($fp)
label142:
	addi $sp, $sp, -4
	lw $t0, -3016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3092($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3104($fp)
	addi $sp, $sp, 16
	lw $t0, -1044($fp)
	sw $t0, -3108($fp)
	lw $t1, -3104($fp)
	lw $t2, -3108($fp)
	bgt $t1, $t2, label130
	j label131
label130:
	li $t0, 1
	sw $t0, -3012($fp)
label131:
	lw $t0, -3012($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -3112($fp)
	lw $t1, -3112($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label129
label128:
	lw $t0, -1044($fp)
	sw $t0, -3116($fp)
	li $t0, 0
	sw $t0, -3120($fp)
	li $t0, 58745
	sw $t0, -3124($fp)
	li $t0, 0
	lw $t1, -3124($fp)
	sub $t0, $t0, $t1
	sw $t0, -3128($fp)
	lw $t0, -804($fp)
	sw $t0, -3132($fp)
	lw $t1, -3128($fp)
	lw $t2, -3132($fp)
	bgt $t1, $t2, label146
	j label147
label146:
	li $t0, 1
	sw $t0, -3120($fp)
label147:
	addi $t0, $fp, -60
	sw $t0, -3136($fp)
	li $t0, 5
	sw $t0, -3140($fp)
	li $t0, 4
	lw $t1, -3140($fp)
	mul $t0, $t0, $t1
	sw $t0, -3144($fp)
	lw $t0, -3144($fp)
	lw $t1, -3136($fp)
	add $t0, $t0, $t1
	sw $t0, -3148($fp)
	lw $t0, -3148($fp)
	lw $t1, 0($t0)
	sw $t1, -3152($fp)
	addi $sp, $sp, -4
	lw $t0, -3116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3152($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3156($fp)
	addi $sp, $sp, 16
	li $t0, 15975
	sw $t0, -3160($fp)
	lw $t0, -3156($fp)
	lw $t1, -3160($fp)
	mul $t0, $t0, $t1
	sw $t0, -3164($fp)
	addi $t0, $fp, -592
	sw $t0, -3168($fp)
	li $t0, 0
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
	li $t0, 0
	sw $t0, -3188($fp)
	li $t0, 30566
	sw $t0, -3192($fp)
	li $t0, 42708
	sw $t0, -3196($fp)
	lw $t0, -3192($fp)
	lw $t1, -3196($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3200($fp)
	li $t0, 5553
	sw $t0, -3204($fp)
	lw $t1, -3200($fp)
	lw $t2, -3204($fp)
	blt $t1, $t2, label148
	j label149
label148:
	li $t0, 1
	sw $t0, -3188($fp)
label149:
	li $t0, 8879
	sw $t0, -3208($fp)
	li $t0, 33242
	sw $t0, -3212($fp)
	lw $t0, -3208($fp)
	lw $t1, -3212($fp)
	add $t0, $t0, $t1
	sw $t0, -3216($fp)
	li $t0, 34608
	sw $t0, -3220($fp)
	li $t0, 34073
	sw $t0, -3224($fp)
	lw $t0, -3220($fp)
	lw $t1, -3224($fp)
	sub $t0, $t0, $t1
	sw $t0, -3228($fp)
	addi $sp, $sp, -4
	lw $t0, -3188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3228($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3232($fp)
	addi $sp, $sp, 16
	li $t0, 21619
	sw $t0, -3236($fp)
	lw $t0, -3232($fp)
	lw $t1, -3236($fp)
	add $t0, $t0, $t1
	sw $t0, -3240($fp)
	li $t0, 53705
	sw $t0, -3244($fp)
	lw $t0, -3244($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -3248($fp)
	addi $t0, $fp, -588
	sw $t0, -3252($fp)
	li $t0, 3
	sw $t0, -3256($fp)
	li $t0, 4
	lw $t1, -3256($fp)
	mul $t0, $t0, $t1
	sw $t0, -3260($fp)
	lw $t0, -3260($fp)
	lw $t1, -3252($fp)
	add $t0, $t0, $t1
	sw $t0, -3264($fp)
	lw $t0, -3264($fp)
	lw $t1, 0($t0)
	sw $t1, -3268($fp)
	li $t0, 12370
	sw $t0, -3272($fp)
	lw $t0, -3268($fp)
	lw $t1, -3272($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3276($fp)
	li $t0, 0
	sw $t0, -3280($fp)
	lw $t0, 12($fp)
	sw $t0, -3284($fp)
	li $t0, 0
	lw $t1, -3284($fp)
	sub $t0, $t0, $t1
	sw $t0, -3288($fp)
	li $t0, 10540
	sw $t0, -3292($fp)
	lw $t1, -3288($fp)
	lw $t2, -3292($fp)
	blt $t1, $t2, label150
	j label151
label150:
	li $t0, 1
	sw $t0, -3280($fp)
label151:
	lw $t0, 8($fp)
	sw $t0, -3296($fp)
	lw $t0, -3296($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -3300($fp)
	addi $sp, $sp, -4
	lw $t0, -3276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3300($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3304($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -3308($fp)
	li $t0, 0
	sw $t0, -3312($fp)
	lw $t0, -1188($fp)
	sw $t0, -3316($fp)
	lw $t0, -1560($fp)
	sw $t0, -3320($fp)
	lw $t1, -3316($fp)
	lw $t2, -3320($fp)
	ble $t1, $t2, label154
	j label155
label154:
	li $t0, 1
	sw $t0, -3312($fp)
label155:
	li $t0, 5171
	sw $t0, -3324($fp)
	lw $t1, -3312($fp)
	lw $t2, -3324($fp)
	beq $t1, $t2, label152
	j label153
label152:
	li $t0, 1
	sw $t0, -3308($fp)
label153:
	addi $sp, $sp, -4
	lw $t0, -3248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3308($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3328($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -3184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3328($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3332($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -3336($fp)
	li $t0, 0
	sw $t0, -3340($fp)
	li $t0, 15673
	sw $t0, -3344($fp)
	li $t0, 9188
	sw $t0, -3348($fp)
	lw $t1, -3344($fp)
	lw $t2, -3348($fp)
	bge $t1, $t2, label158
	j label159
label158:
	li $t0, 1
	sw $t0, -3340($fp)
label159:
	li $t0, 46971
	sw $t0, -3352($fp)
	lw $t1, -3340($fp)
	lw $t2, -3352($fp)
	bne $t1, $t2, label156
	j label157
label156:
	li $t0, 1
	sw $t0, -3336($fp)
label157:
	addi $sp, $sp, -4
	lw $t0, -3164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3336($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3356($fp)
	addi $sp, $sp, 16
	li $t0, 31961
	sw $t0, -3360($fp)
	lw $t0, -3356($fp)
	lw $t1, -3360($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3364($fp)
	lw $t1, -3364($fp)
	li $t2, 0
	bne $t1, $t2, label143
	j label144
label143:
	li $t0, 0
	sw $t0, -3368($fp)
	li $t0, 56284
	sw $t0, -3372($fp)
	li $t0, 22089
	sw $t0, -3376($fp)
	lw $t0, -3372($fp)
	lw $t1, -3376($fp)
	mul $t0, $t0, $t1
	sw $t0, -3380($fp)
	li $t0, 0
	sw $t0, -3384($fp)
	li $t0, 0
	sw $t0, -3388($fp)
	lw $t0, -1392($fp)
	sw $t0, -3392($fp)
	lw $t1, -3392($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label165
label165:
	li $t0, 1
	sw $t0, -3388($fp)
label166:
	lw $t0, -428($fp)
	sw $t0, -3396($fp)
	lw $t1, -3388($fp)
	lw $t2, -3396($fp)
	bne $t1, $t2, label163
	j label164
label163:
	li $t0, 1
	sw $t0, -3384($fp)
label164:
	li $t0, 0
	sw $t0, -3400($fp)
	li $t0, 0
	sw $t0, -3404($fp)
	lw $t0, -1032($fp)
	sw $t0, -3408($fp)
	li $t0, 31152
	sw $t0, -3412($fp)
	lw $t1, -3408($fp)
	lw $t2, -3412($fp)
	bge $t1, $t2, label169
	j label170
label169:
	li $t0, 1
	sw $t0, -3404($fp)
label170:
	lw $t0, -1044($fp)
	sw $t0, -3416($fp)
	lw $t1, -3404($fp)
	lw $t2, -3416($fp)
	bgt $t1, $t2, label167
	j label168
label167:
	li $t0, 1
	sw $t0, -3400($fp)
label168:
	addi $sp, $sp, -4
	lw $t0, -3380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3400($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3420($fp)
	addi $sp, $sp, 16
	li $t0, 44489
	sw $t0, -3424($fp)
	li $t0, 60157
	sw $t0, -3428($fp)
	li $t0, 0
	lw $t1, -3428($fp)
	sub $t0, $t0, $t1
	sw $t0, -3432($fp)
	lw $t0, -1356($fp)
	sw $t0, -3436($fp)
	lw $t0, -3432($fp)
	lw $t1, -3436($fp)
	sub $t0, $t0, $t1
	sw $t0, -3440($fp)
	li $t0, 0
	sw $t0, -3444($fp)
	li $t0, 0
	sw $t0, -3448($fp)
	lw $t0, -1344($fp)
	sw $t0, -3452($fp)
	lw $t1, -3452($fp)
	li $t2, 0
	bne $t1, $t2, label174
	j label173
label173:
	li $t0, 1
	sw $t0, -3448($fp)
label174:
	lw $t0, -1572($fp)
	sw $t0, -3456($fp)
	lw $t1, -3448($fp)
	lw $t2, -3456($fp)
	beq $t1, $t2, label171
	j label172
label171:
	li $t0, 1
	sw $t0, -3444($fp)
label172:
	lw $t0, -1188($fp)
	sw $t0, -3460($fp)
	lw $t0, -452($fp)
	sw $t0, -3464($fp)
	lw $t0, -3460($fp)
	lw $t1, -3464($fp)
	sub $t0, $t0, $t1
	sw $t0, -3468($fp)
	li $t0, 28649
	sw $t0, -3472($fp)
	lw $t0, -3468($fp)
	lw $t1, -3472($fp)
	sub $t0, $t0, $t1
	sw $t0, -3476($fp)
	addi $sp, $sp, -4
	lw $t0, -3440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3476($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3480($fp)
	addi $sp, $sp, 16
	li $t0, 17146
	sw $t0, -3484($fp)
	addi $sp, $sp, -4
	lw $t0, -3424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3484($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3488($fp)
	addi $sp, $sp, 16
	lw $t0, -3420($fp)
	lw $t1, -3488($fp)
	sub $t0, $t0, $t1
	sw $t0, -3492($fp)
	addi $t0, $fp, -588
	sw $t0, -3496($fp)
	li $t0, 3
	sw $t0, -3500($fp)
	li $t0, 4
	lw $t1, -3500($fp)
	mul $t0, $t0, $t1
	sw $t0, -3504($fp)
	lw $t0, -3504($fp)
	lw $t1, -3496($fp)
	add $t0, $t0, $t1
	sw $t0, -3508($fp)
	lw $t0, -3508($fp)
	lw $t1, 0($t0)
	sw $t1, -3512($fp)
	lw $t1, -3492($fp)
	lw $t2, -3512($fp)
	bne $t1, $t2, label162
	j label161
label162:
	li $t0, 25924
	sw $t0, -3516($fp)
	lw $t1, -3516($fp)
	li $t2, 0
	bne $t1, $t2, label160
	j label161
label160:
	li $t0, 1
	sw $t0, -3368($fp)
label161:
	j label145
label144:
	li $t0, 0
	sw $t0, -3520($fp)
	lw $t0, -1260($fp)
	sw $t0, -3524($fp)
	li $t0, 0
	lw $t1, -3524($fp)
	sub $t0, $t0, $t1
	sw $t0, -3528($fp)
	lw $t1, -3528($fp)
	li $t2, 0
	bne $t1, $t2, label179
	j label178
label178:
	li $t0, 1
	sw $t0, -3520($fp)
label179:
	li $t0, 0
	lw $t1, -3520($fp)
	sub $t0, $t0, $t1
	sw $t0, -3532($fp)
	li $t0, 14350
	sw $t0, -3536($fp)
	li $t0, 0
	lw $t1, -3536($fp)
	sub $t0, $t0, $t1
	sw $t0, -3540($fp)
	li $t0, 8067
	sw $t0, -3544($fp)
	lw $t0, -3540($fp)
	lw $t1, -3544($fp)
	sub $t0, $t0, $t1
	sw $t0, -3548($fp)
	li $t0, 0
	sw $t0, -3552($fp)
	li $t0, 49493
	sw $t0, -3556($fp)
	li $t0, 0
	lw $t1, -3556($fp)
	sub $t0, $t0, $t1
	sw $t0, -3560($fp)
	lw $t1, -3560($fp)
	li $t2, 0
	bne $t1, $t2, label182
	j label181
label182:
	lw $t0, -804($fp)
	sw $t0, -3564($fp)
	lw $t1, -3564($fp)
	li $t2, 0
	bne $t1, $t2, label180
	j label181
label180:
	li $t0, 1
	sw $t0, -3552($fp)
label181:
	lw $t0, -1284($fp)
	sw $t0, -3568($fp)
	lw $t0, -3568($fp)
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -3572($fp)
	addi $sp, $sp, -4
	lw $t0, -3548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3572($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3576($fp)
	addi $sp, $sp, 16
	lw $t0, -3532($fp)
	lw $t1, -3576($fp)
	add $t0, $t0, $t1
	sw $t0, -3580($fp)
	li $t0, 0
	sw $t0, -3584($fp)
	addi $t0, $fp, -588
	sw $t0, -3588($fp)
	lw $t0, -1176($fp)
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
	lw $t1, -3604($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label184
label183:
	li $t0, 1
	sw $t0, -3584($fp)
label184:
	lw $t1, -3580($fp)
	lw $t2, -3584($fp)
	bge $t1, $t2, label175
	j label176
label175:
	lw $t0, -1572($fp)
	sw $t0, -3608($fp)
	j label177
label176:
	li $t0, 20505
	sw $t0, -3612($fp)
	lw $t1, -3612($fp)
	li $t2, 0
	bne $t1, $t2, label185
	j label186
label185:
	lw $t0, -1368($fp)
	sw $t0, -3616($fp)
	li $t0, 61772
	sw $t0, -3620($fp)
	li $t0, 1
	sw $t0, -3624($fp)
	lw $t0, -3620($fp)
	lw $t1, -3624($fp)
	mul $t0, $t0, $t1
	sw $t0, -3628($fp)
	li $t0, 60794
	sw $t0, -3632($fp)
	lw $t0, -3628($fp)
	lw $t1, -3632($fp)
	sub $t0, $t0, $t1
	sw $t0, -3636($fp)
	lw $t0, -1224($fp)
	sw $t0, -3640($fp)
	lw $t0, -3640($fp)
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -3644($fp)
	li $t0, 0
	sw $t0, -3648($fp)
	lw $t0, -1224($fp)
	sw $t0, -3652($fp)
	lw $t0, -1236($fp)
	sw $t0, -3656($fp)
	lw $t1, -3652($fp)
	lw $t2, -3656($fp)
	beq $t1, $t2, label188
	j label190
label190:
	li $t0, 26720
	sw $t0, -3660($fp)
	lw $t1, -3660($fp)
	li $t2, 0
	bne $t1, $t2, label188
	j label189
label188:
	li $t0, 1
	sw $t0, -3648($fp)
label189:
	addi $sp, $sp, -4
	lw $t0, -3636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3648($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3664($fp)
	addi $sp, $sp, 16
	lw $t0, -828($fp)
	sw $t0, -3668($fp)
	lw $t0, -3664($fp)
	lw $t1, -3668($fp)
	mul $t0, $t0, $t1
	sw $t0, -3672($fp)
	lw $t0, -3616($fp)
	lw $t1, -3672($fp)
	sub $t0, $t0, $t1
	sw $t0, -3676($fp)
	li $t0, 0
	sw $t0, -3680($fp)
	lw $t0, 8($fp)
	sw $t0, -3684($fp)
	lw $t1, -3684($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label192
label191:
	li $t0, 1
	sw $t0, -3680($fp)
label192:
	lw $t0, -3676($fp)
	lw $t1, -3680($fp)
	add $t0, $t0, $t1
	sw $t0, -3688($fp)
	lw $ra, -4($fp)
	lw $v0, -3688($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label187
label186:
	lw $t0, -1320($fp)
	sw $t0, -3692($fp)
	lw $t0, -1332($fp)
	sw $t0, -3696($fp)
	lw $t0, -3692($fp)
	lw $t1, -3696($fp)
	mul $t0, $t0, $t1
	sw $t0, -3700($fp)
	lw $t0, -1560($fp)
	sw $t0, -3704($fp)
	lw $t0, -3700($fp)
	lw $t1, -3704($fp)
	mul $t0, $t0, $t1
	sw $t0, -3708($fp)
	addi $t0, $fp, -524
	sw $t0, -3712($fp)
	lw $t0, -1356($fp)
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
	lw $t0, -1368($fp)
	sw $t0, -3732($fp)
	lw $t0, -3728($fp)
	lw $t1, -3732($fp)
	mul $t0, $t0, $t1
	sw $t0, -3736($fp)
	li $t0, 0
	sw $t0, -3740($fp)
	li $t0, 22819
	sw $t0, -3744($fp)
	li $t0, 25824
	sw $t0, -3748($fp)
	lw $t0, -3744($fp)
	lw $t1, -3748($fp)
	sub $t0, $t0, $t1
	sw $t0, -3752($fp)
	li $t0, 47824
	sw $t0, -3756($fp)
	lw $t1, -3752($fp)
	lw $t2, -3756($fp)
	blt $t1, $t2, label196
	j label197
label196:
	li $t0, 1
	sw $t0, -3740($fp)
label197:
	li $t0, 0
	sw $t0, -3760($fp)
	li $t0, 5116
	sw $t0, -3764($fp)
	li $t0, 0
	lw $t1, -3764($fp)
	sub $t0, $t0, $t1
	sw $t0, -3768($fp)
	lw $t0, -804($fp)
	sw $t0, -3772($fp)
	lw $t1, -3768($fp)
	lw $t2, -3772($fp)
	beq $t1, $t2, label198
	j label199
label198:
	li $t0, 1
	sw $t0, -3760($fp)
label199:
	lw $t0, -1632($fp)
	sw $t0, -3776($fp)
	lw $t0, -3776($fp)
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -3780($fp)
	addi $sp, $sp, -4
	lw $t0, -3740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3780($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3784($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -3708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3784($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3788($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -3792($fp)
	lw $t0, -1572($fp)
	sw $t0, -3796($fp)
	lw $t1, -3796($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label201
label200:
	li $t0, 1
	sw $t0, -3792($fp)
label201:
	lw $t0, -3788($fp)
	lw $t1, -3792($fp)
	mul $t0, $t0, $t1
	sw $t0, -3800($fp)
	addi $t0, $fp, -24
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
	li $t0, 8425
	sw $t0, -3824($fp)
	lw $t0, -3820($fp)
	lw $t1, -3824($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3828($fp)
	addi $t0, $fp, -592
	sw $t0, -3832($fp)
	lw $t0, -1320($fp)
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
	lw $t0, -3828($fp)
	lw $t1, -3848($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3852($fp)
	lw $t1, -3800($fp)
	lw $t2, -3852($fp)
	blt $t1, $t2, label193
	j label194
label193:
	li $t0, 0
	sw $t0, -3856($fp)
	li $t0, 0
	sw $t0, -3860($fp)
	lw $t0, -1296($fp)
	sw $t0, -3864($fp)
	lw $t1, -3864($fp)
	li $t2, 0
	bne $t1, $t2, label205
	j label204
label204:
	li $t0, 1
	sw $t0, -3860($fp)
label205:
	lw $t0, -840($fp)
	sw $t0, -3868($fp)
	li $t0, 8395
	sw $t0, -3872($fp)
	lw $t0, -3868($fp)
	lw $t1, -3872($fp)
	sub $t0, $t0, $t1
	sw $t0, -3876($fp)
	addi $t0, $fp, -544
	sw $t0, -3880($fp)
	lw $t0, -1536($fp)
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
	lw $t0, -3876($fp)
	lw $t1, -3896($fp)
	add $t0, $t0, $t1
	sw $t0, -3900($fp)
	lw $t1, -3860($fp)
	lw $t2, -3900($fp)
	bge $t1, $t2, label202
	j label203
label202:
	li $t0, 1
	sw $t0, -3856($fp)
label203:
	j label195
label194:
	li $t0, 0
	sw $t0, -3904($fp)
	li $t0, 0
	sw $t0, -3908($fp)
	li $t0, 6293
	sw $t0, -3912($fp)
	lw $t1, -3912($fp)
	li $t2, 0
	bne $t1, $t2, label210
	j label209
label209:
	li $t0, 1
	sw $t0, -3908($fp)
label210:
	lw $t0, -1548($fp)
	sw $t0, -3916($fp)
	li $t0, 55664
	sw $t0, -3920($fp)
	lw $t0, -3920($fp)
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -3924($fp)
	addi $sp, $sp, -4
	lw $t0, -3908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3924($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3928($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -3932($fp)
	li $t0, 38254
	sw $t0, -3936($fp)
	li $t0, 32756
	sw $t0, -3940($fp)
	lw $t0, -3936($fp)
	lw $t1, -3940($fp)
	sub $t0, $t0, $t1
	sw $t0, -3944($fp)
	lw $t1, -3944($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label212
label213:
	li $t0, 62388
	sw $t0, -3948($fp)
	lw $t1, -3948($fp)
	li $t2, 0
	bne $t1, $t2, label211
	j label212
label211:
	li $t0, 1
	sw $t0, -3932($fp)
label212:
	addi $t0, $fp, -524
	sw $t0, -3952($fp)
	lw $t0, -1608($fp)
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
	lw $t0, -1632($fp)
	sw $t0, -3972($fp)
	lw $t0, -3968($fp)
	lw $t1, -3972($fp)
	add $t0, $t0, $t1
	sw $t0, -3976($fp)
	li $t0, 0
	sw $t0, -3980($fp)
	li $t0, 0
	sw $t0, -3984($fp)
	addi $t0, $fp, -548
	sw $t0, -3988($fp)
	lw $t0, -428($fp)
	sw $t0, -3992($fp)
	li $t0, 4
	lw $t1, -3992($fp)
	mul $t0, $t0, $t1
	sw $t0, -3996($fp)
	lw $t0, -3996($fp)
	lw $t1, -3988($fp)
	add $t0, $t0, $t1
	sw $t0, -4000($fp)
	lw $t0, -4000($fp)
	lw $t1, 0($t0)
	sw $t1, -4004($fp)
	lw $t1, -4004($fp)
	li $t2, 0
	bne $t1, $t2, label216
	j label218
label218:
	lw $t0, 8($fp)
	sw $t0, -4008($fp)
	lw $t1, -4008($fp)
	li $t2, 0
	bne $t1, $t2, label216
	j label217
label216:
	li $t0, 1
	sw $t0, -3984($fp)
label217:
	li $t0, 6103
	sw $t0, -4012($fp)
	lw $t0, -4012($fp)
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	sw $t0, -4016($fp)
	li $t0, 1604
	sw $t0, -4020($fp)
	lw $t0, -4020($fp)
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	sw $t0, -4024($fp)
	addi $sp, $sp, -4
	lw $t0, -3984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4024($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4028($fp)
	addi $sp, $sp, 16
	lw $t1, -4028($fp)
	li $t2, 0
	bne $t1, $t2, label215
	j label214
label214:
	li $t0, 1
	sw $t0, -3980($fp)
label215:
	addi $sp, $sp, -4
	lw $t0, -3932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3980($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4032($fp)
	addi $sp, $sp, 16
	lw $t1, -3928($fp)
	lw $t2, -4032($fp)
	beq $t1, $t2, label206
	j label208
label208:
	li $t0, 60343
	sw $t0, -4036($fp)
	lw $t1, -4036($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label207
label206:
	li $t0, 1
	sw $t0, -3904($fp)
label207:
label195:
label187:
label177:
label145:
	j label127
label129:
	j label125
label124:
	lw $t0, -1380($fp)
	sw $t0, -4040($fp)
	lw $t0, -4040($fp)
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	sw $t0, -4044($fp)
	addi $t0, $fp, -588
	sw $t0, -4048($fp)
	lw $t0, -1200($fp)
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
	li $t0, 0
	lw $t1, -4064($fp)
	sub $t0, $t0, $t1
	sw $t0, -4068($fp)
	li $t0, 49902
	sw $t0, -4072($fp)
	li $t0, 0
	lw $t1, -4072($fp)
	sub $t0, $t0, $t1
	sw $t0, -4076($fp)
	li $t0, 0
	lw $t1, -4076($fp)
	sub $t0, $t0, $t1
	sw $t0, -4080($fp)
	addi $sp, $sp, -4
	lw $t0, -4044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4080($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4084($fp)
	addi $sp, $sp, 16
	li $t0, 25501
	sw $t0, -4088($fp)
	lw $t0, -4084($fp)
	lw $t1, -4088($fp)
	mul $t0, $t0, $t1
	sw $t0, -4092($fp)
	lw $ra, -4($fp)
	lw $v0, -4092($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label125:
	li $t0, 54965
	sw $t0, -4096($fp)
	lw $t0, -4096($fp)
	sw $t0, -4100($fp)
	lw $t0, -4100($fp)
	sw $t0, -4104($fp)
	li $t0, 28855
	sw $t0, -4108($fp)
	lw $t0, -4108($fp)
	sw $t0, -4112($fp)
	lw $t0, -4112($fp)
	sw $t0, -4116($fp)
	li $t0, 4287
	sw $t0, -4120($fp)
	lw $t0, -4120($fp)
	sw $t0, -4124($fp)
	lw $t0, -4124($fp)
	sw $t0, -4128($fp)
	li $t0, 58774
	sw $t0, -4132($fp)
	lw $t0, -4132($fp)
	sw $t0, -4136($fp)
	lw $t0, -4136($fp)
	sw $t0, -4140($fp)
	li $t0, 54780
	sw $t0, -4144($fp)
	lw $t0, -4144($fp)
	sw $t0, -4148($fp)
	lw $t0, -4148($fp)
	sw $t0, -4152($fp)
	li $t0, 53780
	sw $t0, -4156($fp)
	lw $t0, -4156($fp)
	sw $t0, -4160($fp)
	lw $t0, -4160($fp)
	sw $t0, -4164($fp)
	li $t0, 7588
	sw $t0, -4168($fp)
	lw $t0, -4168($fp)
	sw $t0, -4172($fp)
	lw $t0, -4172($fp)
	sw $t0, -4176($fp)
label219:
	addi $t0, $fp, -24
	sw $t0, -4180($fp)
	addi $t0, $fp, -588
	sw $t0, -4184($fp)
	li $t0, 3
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
	li $t0, 4
	lw $t1, -4200($fp)
	mul $t0, $t0, $t1
	sw $t0, -4204($fp)
	lw $t0, -4204($fp)
	lw $t1, -4180($fp)
	add $t0, $t0, $t1
	sw $t0, -4208($fp)
	lw $t0, -4208($fp)
	lw $t1, 0($t0)
	sw $t1, -4212($fp)
	lw $t1, -4212($fp)
	li $t2, 0
	bne $t1, $t2, label222
	j label221
label222:
	li $t0, 0
	sw $t0, -4216($fp)
	lw $t0, -600($fp)
	sw $t0, -4220($fp)
	lw $t1, -4220($fp)
	li $t2, 0
	bne $t1, $t2, label226
	j label224
label226:
	li $t0, 64199
	sw $t0, -4224($fp)
	lw $t1, -4224($fp)
	li $t2, 0
	bne $t1, $t2, label225
	j label224
label225:
	li $t0, 21146
	sw $t0, -4228($fp)
	lw $t1, -4228($fp)
	li $t2, 0
	bne $t1, $t2, label223
	j label224
label223:
	li $t0, 1
	sw $t0, -4216($fp)
label224:
	li $t0, 63862
	sw $t0, -4232($fp)
	li $t0, 29567
	sw $t0, -4236($fp)
	lw $t0, -4232($fp)
	lw $t1, -4236($fp)
	mul $t0, $t0, $t1
	sw $t0, -4240($fp)
	lw $t0, -1356($fp)
	sw $t0, -4244($fp)
	lw $t0, -4240($fp)
	lw $t1, -4244($fp)
	mul $t0, $t0, $t1
	sw $t0, -4248($fp)
	li $t0, 0
	sw $t0, -4252($fp)
	li $t0, 34309
	sw $t0, -4256($fp)
	lw $t1, -4256($fp)
	li $t2, 0
	bne $t1, $t2, label227
	j label229
label229:
	li $t0, 59083
	sw $t0, -4260($fp)
	lw $t1, -4260($fp)
	li $t2, 0
	bne $t1, $t2, label227
	j label228
label227:
	li $t0, 1
	sw $t0, -4252($fp)
label228:
	addi $sp, $sp, -4
	lw $t0, -4216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4252($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4264($fp)
	addi $sp, $sp, 16
	lw $t1, -4264($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label221
label220:
label230:
	addi $t0, $fp, -592
	sw $t0, -4268($fp)
	addi $t0, $fp, -24
	sw $t0, -4272($fp)
	li $t0, 1
	sw $t0, -4276($fp)
	li $t0, 4
	lw $t1, -4276($fp)
	mul $t0, $t0, $t1
	sw $t0, -4280($fp)
	lw $t0, -4280($fp)
	lw $t1, -4272($fp)
	add $t0, $t0, $t1
	sw $t0, -4284($fp)
	lw $t0, -4284($fp)
	lw $t1, 0($t0)
	sw $t1, -4288($fp)
	li $t0, 49519
	sw $t0, -4292($fp)
	lw $t0, -428($fp)
	sw $t0, -4296($fp)
	li $t0, 46487
	sw $t0, -4300($fp)
	lw $t0, -4296($fp)
	lw $t1, -4300($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4304($fp)
	lw $t0, -4100($fp)
	sw $t0, -4308($fp)
	lw $t0, -4304($fp)
	lw $t1, -4308($fp)
	sub $t0, $t0, $t1
	sw $t0, -4312($fp)
	addi $sp, $sp, -4
	lw $t0, -4288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4312($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4316($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -4316($fp)
	sub $t0, $t0, $t1
	sw $t0, -4320($fp)
	li $t0, 0
	sw $t0, -4324($fp)
	lw $t0, -4172($fp)
	sw $t0, -4328($fp)
	lw $t1, -4328($fp)
	li $t2, 0
	bne $t1, $t2, label234
	j label233
label233:
	li $t0, 1
	sw $t0, -4324($fp)
label234:
	li $t0, 0
	lw $t1, -4324($fp)
	sub $t0, $t0, $t1
	sw $t0, -4332($fp)
	li $t0, 0
	sw $t0, -4336($fp)
	lw $t0, -4100($fp)
	sw $t0, -4340($fp)
	li $t0, 55391
	sw $t0, -4344($fp)
	lw $t0, -4340($fp)
	lw $t1, -4344($fp)
	mul $t0, $t0, $t1
	sw $t0, -4348($fp)
	lw $t0, -4136($fp)
	sw $t0, -4352($fp)
	lw $t1, -4348($fp)
	lw $t2, -4352($fp)
	bgt $t1, $t2, label235
	j label236
label235:
	li $t0, 1
	sw $t0, -4336($fp)
label236:
	addi $sp, $sp, -4
	lw $t0, -4320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4336($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4356($fp)
	addi $sp, $sp, 16
	li $t0, 57914
	sw $t0, -4360($fp)
	lw $t0, -4356($fp)
	lw $t1, -4360($fp)
	add $t0, $t0, $t1
	sw $t0, -4364($fp)
	li $t0, 4
	lw $t1, -4364($fp)
	mul $t0, $t0, $t1
	sw $t0, -4368($fp)
	lw $t0, -4368($fp)
	lw $t1, -4268($fp)
	add $t0, $t0, $t1
	sw $t0, -4372($fp)
	lw $t0, -4372($fp)
	lw $t1, 0($t0)
	sw $t1, -4376($fp)
	lw $t1, -4376($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label231
label231:
	lw $t0, -1200($fp)
	sw $t0, -4380($fp)
	lw $t1, -4380($fp)
	li $t2, 0
	bne $t1, $t2, label237
	j label241
label241:
	addi $t0, $fp, -60
	sw $t0, -4384($fp)
	lw $t0, -1212($fp)
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
	lw $t1, -4400($fp)
	li $t2, 0
	bne $t1, $t2, label240
	j label237
label240:
	addi $t0, $fp, -60
	sw $t0, -4404($fp)
	li $t0, 0
	sw $t0, -4408($fp)
	li $t0, 27427
	sw $t0, -4412($fp)
	lw $t0, -1044($fp)
	sw $t0, -4416($fp)
	lw $t1, -4412($fp)
	lw $t2, -4416($fp)
	beq $t1, $t2, label242
	j label243
label242:
	li $t0, 1
	sw $t0, -4408($fp)
label243:
	li $t0, 4
	lw $t1, -4408($fp)
	mul $t0, $t0, $t1
	sw $t0, -4420($fp)
	lw $t0, -4420($fp)
	lw $t1, -4404($fp)
	add $t0, $t0, $t1
	sw $t0, -4424($fp)
	lw $t0, -4424($fp)
	lw $t1, 0($t0)
	sw $t1, -4428($fp)
	lw $t1, -4428($fp)
	li $t2, 0
	bne $t1, $t2, label237
	j label238
label237:
	li $t0, 0
	sw $t0, -4432($fp)
	li $t0, 0
	sw $t0, -4436($fp)
	li $t0, 0
	sw $t0, -4440($fp)
	lw $t0, -1308($fp)
	sw $t0, -4444($fp)
	li $t0, 33924
	sw $t0, -4448($fp)
	lw $t1, -4444($fp)
	lw $t2, -4448($fp)
	blt $t1, $t2, label248
	j label250
label250:
	lw $t0, -1632($fp)
	sw $t0, -4452($fp)
	lw $t1, -4452($fp)
	li $t2, 0
	bne $t1, $t2, label248
	j label249
label248:
	li $t0, 1
	sw $t0, -4440($fp)
label249:
	li $t0, 0
	sw $t0, -4456($fp)
	lw $t0, -1320($fp)
	sw $t0, -4460($fp)
	li $t0, 33530
	sw $t0, -4464($fp)
	lw $t0, -4460($fp)
	lw $t1, -4464($fp)
	sub $t0, $t0, $t1
	sw $t0, -4468($fp)
	lw $t1, -4468($fp)
	li $t2, 0
	bne $t1, $t2, label251
	j label253
label253:
	lw $t0, -1380($fp)
	sw $t0, -4472($fp)
	lw $t1, -4472($fp)
	li $t2, 0
	bne $t1, $t2, label251
	j label252
label251:
	li $t0, 1
	sw $t0, -4456($fp)
label252:
	li $t0, 0
	sw $t0, -4476($fp)
	li $t0, 61206
	sw $t0, -4480($fp)
	li $t0, 59518
	sw $t0, -4484($fp)
	lw $t0, -4480($fp)
	lw $t1, -4484($fp)
	add $t0, $t0, $t1
	sw $t0, -4488($fp)
	lw $t0, -1236($fp)
	sw $t0, -4492($fp)
	lw $t1, -4488($fp)
	lw $t2, -4492($fp)
	bne $t1, $t2, label254
	j label255
label254:
	li $t0, 1
	sw $t0, -4476($fp)
label255:
	addi $sp, $sp, -4
	lw $t0, -4440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4476($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4496($fp)
	addi $sp, $sp, 16
	lw $t1, -4496($fp)
	li $t2, 0
	bne $t1, $t2, label247
	j label246
label246:
	li $t0, 1
	sw $t0, -4436($fp)
label247:
	li $t0, 0
	sw $t0, -4500($fp)
	li $t0, 0
	sw $t0, -4504($fp)
	li $t0, 0
	sw $t0, -4508($fp)
	lw $t0, -1320($fp)
	sw $t0, -4512($fp)
	li $t0, 26738
	sw $t0, -4516($fp)
	lw $t1, -4512($fp)
	lw $t2, -4516($fp)
	bge $t1, $t2, label260
	j label261
label260:
	li $t0, 1
	sw $t0, -4508($fp)
label261:
	lw $t0, -1032($fp)
	sw $t0, -4520($fp)
	lw $t1, -4508($fp)
	lw $t2, -4520($fp)
	bgt $t1, $t2, label258
	j label259
label258:
	li $t0, 1
	sw $t0, -4504($fp)
label259:
	lw $t0, -1344($fp)
	sw $t0, -4524($fp)
	li $t0, 30382
	sw $t0, -4528($fp)
	lw $t0, -4524($fp)
	lw $t1, -4528($fp)
	sub $t0, $t0, $t1
	sw $t0, -4532($fp)
	lw $t1, -4504($fp)
	lw $t2, -4532($fp)
	bge $t1, $t2, label256
	j label257
label256:
	li $t0, 1
	sw $t0, -4500($fp)
label257:
	lw $t1, -4436($fp)
	lw $t2, -4500($fp)
	bne $t1, $t2, label244
	j label245
label244:
	li $t0, 1
	sw $t0, -4432($fp)
label245:
	lw $t0, -1332($fp)
	sw $t0, -4536($fp)
	lw $t0, -4536($fp)
	sw $t0, -4160($fp)
	lw $t0, -4160($fp)
	sw $t0, -4540($fp)
	li $t0, 0
	sw $t0, -4544($fp)
	lw $t0, -1200($fp)
	sw $t0, -4548($fp)
	li $t0, 0
	lw $t1, -4548($fp)
	sub $t0, $t0, $t1
	sw $t0, -4552($fp)
	lw $t1, -4552($fp)
	li $t2, 0
	bne $t1, $t2, label264
	j label263
label264:
	li $t0, 28732
	sw $t0, -4556($fp)
	lw $t1, -4556($fp)
	li $t2, 0
	bne $t1, $t2, label262
	j label263
label262:
	li $t0, 1
	sw $t0, -4544($fp)
label263:
	j label239
label238:
	li $t0, 0
	sw $t0, -4560($fp)
	lw $t0, -1392($fp)
	sw $t0, -4564($fp)
	lw $t1, -4564($fp)
	li $t2, 0
	bne $t1, $t2, label265
	j label268
label268:
	lw $t0, -1032($fp)
	sw $t0, -4568($fp)
	li $t0, 11105
	sw $t0, -4572($fp)
	lw $t0, -4568($fp)
	lw $t1, -4572($fp)
	mul $t0, $t0, $t1
	sw $t0, -4576($fp)
	lw $t0, -428($fp)
	sw $t0, -4580($fp)
	lw $t1, -4576($fp)
	lw $t2, -4580($fp)
	ble $t1, $t2, label265
	j label267
label267:
	li $t0, 48414
	sw $t0, -4584($fp)
	li $t0, 29204
	sw $t0, -4588($fp)
	lw $t0, -4588($fp)
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	sw $t0, -4592($fp)
	lw $t0, -1224($fp)
	sw $t0, -4596($fp)
	li $t0, 0
	sw $t0, -4600($fp)
	li $t0, 11399
	sw $t0, -4604($fp)
	lw $t1, -4604($fp)
	li $t2, 0
	bne $t1, $t2, label270
	j label272
label272:
	lw $t0, -600($fp)
	sw $t0, -4608($fp)
	lw $t1, -4608($fp)
	li $t2, 0
	bne $t1, $t2, label270
	j label271
label270:
	li $t0, 1
	sw $t0, -4600($fp)
label271:
	li $t0, 60170
	sw $t0, -4612($fp)
	lw $t0, -428($fp)
	sw $t0, -4616($fp)
	addi $sp, $sp, -4
	lw $t0, -4600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4616($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4620($fp)
	addi $sp, $sp, 16
	li $t0, 39960
	sw $t0, -4624($fp)
	lw $t0, -4624($fp)
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -4628($fp)
	li $t0, 0
	sw $t0, -4632($fp)
	lw $t0, -996($fp)
	sw $t0, -4636($fp)
	lw $t1, -4636($fp)
	li $t2, 0
	bne $t1, $t2, label274
	j label273
label273:
	li $t0, 1
	sw $t0, -4632($fp)
label274:
	lw $t0, -972($fp)
	sw $t0, -4640($fp)
	lw $t0, -4632($fp)
	lw $t1, -4640($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4644($fp)
	li $t0, 0
	sw $t0, -4648($fp)
	lw $t0, -4172($fp)
	sw $t0, -4652($fp)
	li $t0, 55883
	sw $t0, -4656($fp)
	lw $t0, -4652($fp)
	lw $t1, -4656($fp)
	sub $t0, $t0, $t1
	sw $t0, -4660($fp)
	li $t0, 18161
	sw $t0, -4664($fp)
	lw $t1, -4660($fp)
	lw $t2, -4664($fp)
	beq $t1, $t2, label275
	j label276
label275:
	li $t0, 1
	sw $t0, -4648($fp)
label276:
	addi $sp, $sp, -4
	lw $t0, -4628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4648($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4668($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -4596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4668($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4672($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -4584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4672($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4676($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -4676($fp)
	sub $t0, $t0, $t1
	sw $t0, -4680($fp)
	lw $t1, -4680($fp)
	li $t2, 0
	bne $t1, $t2, label269
	j label266
label269:
	lw $t0, -428($fp)
	sw $t0, -4684($fp)
	lw $t0, -4160($fp)
	sw $t0, -4688($fp)
	lw $t0, -4684($fp)
	lw $t1, -4688($fp)
	add $t0, $t0, $t1
	sw $t0, -4692($fp)
	lw $t1, -4692($fp)
	li $t2, 0
	bne $t1, $t2, label265
	j label266
label265:
	li $t0, 1
	sw $t0, -4560($fp)
label266:
	lw $ra, -4($fp)
	lw $v0, -4560($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label239:
	j label230
label232:
	j label219
label221:
	lw $t0, -4100($fp)
	sw $t0, -4696($fp)
	lw $t0, -4696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4112($fp)
	sw $t0, -4700($fp)
	lw $t0, -4700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4124($fp)
	sw $t0, -4704($fp)
	lw $t0, -4704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4136($fp)
	sw $t0, -4708($fp)
	lw $t0, -4708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4148($fp)
	sw $t0, -4712($fp)
	lw $t0, -4712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4160($fp)
	sw $t0, -4716($fp)
	lw $t0, -4716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4172($fp)
	sw $t0, -4720($fp)
	lw $t0, -4720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4724($fp)
	li $t0, 57163
	sw $t0, -4728($fp)
	lw $t0, -4728($fp)
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	sw $t0, -4732($fp)
	li $t0, 0
	sw $t0, -4736($fp)
	lw $t0, -4172($fp)
	sw $t0, -4740($fp)
	li $t0, 0
	lw $t1, -4740($fp)
	sub $t0, $t0, $t1
	sw $t0, -4744($fp)
	lw $t1, -4744($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label280
label280:
	li $t0, 1
	sw $t0, -4736($fp)
label281:
	li $t0, 0
	sw $t0, -4748($fp)
	lw $t0, -1632($fp)
	sw $t0, -4752($fp)
	lw $t0, -1356($fp)
	sw $t0, -4756($fp)
	lw $t1, -4752($fp)
	lw $t2, -4756($fp)
	bne $t1, $t2, label282
	j label284
label284:
	lw $t0, -440($fp)
	sw $t0, -4760($fp)
	lw $t1, -4760($fp)
	li $t2, 0
	bne $t1, $t2, label282
	j label283
label282:
	li $t0, 1
	sw $t0, -4748($fp)
label283:
	li $t0, 0
	sw $t0, -4764($fp)
	li $t0, 26515
	sw $t0, -4768($fp)
	lw $t0, -804($fp)
	sw $t0, -4772($fp)
	lw $t0, -4768($fp)
	lw $t1, -4772($fp)
	sub $t0, $t0, $t1
	sw $t0, -4776($fp)
	lw $t1, -4776($fp)
	li $t2, 0
	bne $t1, $t2, label285
	j label287
label287:
	lw $t0, -4148($fp)
	sw $t0, -4780($fp)
	lw $t1, -4780($fp)
	li $t2, 0
	bne $t1, $t2, label285
	j label286
label285:
	li $t0, 1
	sw $t0, -4764($fp)
label286:
	addi $sp, $sp, -4
	lw $t0, -4736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4764($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4784($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -4788($fp)
	li $t0, 18988
	sw $t0, -4792($fp)
	lw $t1, -4792($fp)
	li $t2, 0
	bne $t1, $t2, label289
	j label288
label288:
	li $t0, 1
	sw $t0, -4788($fp)
label289:
	addi $sp, $sp, -4
	lw $t0, -4732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4788($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4796($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -4796($fp)
	sub $t0, $t0, $t1
	sw $t0, -4800($fp)
	lw $t1, -4800($fp)
	li $t2, 0
	bne $t1, $t2, label278
	j label279
label279:
	lw $t0, -428($fp)
	sw $t0, -4804($fp)
	li $t0, 53297
	sw $t0, -4808($fp)
	li $t0, 0
	lw $t1, -4808($fp)
	sub $t0, $t0, $t1
	sw $t0, -4812($fp)
	lw $t0, -4804($fp)
	lw $t1, -4812($fp)
	add $t0, $t0, $t1
	sw $t0, -4816($fp)
	lw $t1, -4816($fp)
	li $t2, 0
	bne $t1, $t2, label277
	j label278
label277:
	li $t0, 1
	sw $t0, -4724($fp)
label278:
	lw $ra, -4($fp)
	lw $v0, -4724($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label290:
	lw $t0, -1320($fp)
	sw $t0, -4820($fp)
	li $t0, 0
	sw $t0, -4824($fp)
	li $t0, 17328
	sw $t0, -4828($fp)
	lw $t1, -4828($fp)
	li $t2, 0
	bne $t1, $t2, label294
	j label293
label293:
	li $t0, 1
	sw $t0, -4824($fp)
label294:
	li $t0, 18726
	sw $t0, -4832($fp)
	lw $t0, -4824($fp)
	lw $t1, -4832($fp)
	mul $t0, $t0, $t1
	sw $t0, -4836($fp)
	li $t0, 0
	sw $t0, -4840($fp)
	li $t0, 55490
	sw $t0, -4844($fp)
	lw $t1, -4844($fp)
	li $t2, 0
	bne $t1, $t2, label296
	j label295
label295:
	li $t0, 1
	sw $t0, -4840($fp)
label296:
	li $t0, 20063
	sw $t0, -4848($fp)
	lw $t0, -4848($fp)
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	sw $t0, -4852($fp)
	addi $sp, $sp, -4
	lw $t0, -4836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4852($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4856($fp)
	addi $sp, $sp, 16
	lw $t0, -4820($fp)
	lw $t1, -4856($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4860($fp)
	addi $t0, $fp, -548
	sw $t0, -4864($fp)
	li $t0, 0
	sw $t0, -4868($fp)
	li $t0, 11100
	sw $t0, -4872($fp)
	lw $t0, -1380($fp)
	sw $t0, -4876($fp)
	lw $t1, -4872($fp)
	lw $t2, -4876($fp)
	blt $t1, $t2, label297
	j label298
label297:
	li $t0, 1
	sw $t0, -4868($fp)
label298:
	li $t0, 4
	lw $t1, -4868($fp)
	mul $t0, $t0, $t1
	sw $t0, -4880($fp)
	lw $t0, -4880($fp)
	lw $t1, -4864($fp)
	add $t0, $t0, $t1
	sw $t0, -4884($fp)
	lw $t0, -4884($fp)
	lw $t1, 0($t0)
	sw $t1, -4888($fp)
	lw $t0, -4860($fp)
	lw $t1, -4888($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4892($fp)
	lw $t1, -4892($fp)
	li $t2, 0
	bne $t1, $t2, label291
	j label292
label291:
label299:
	li $t0, 7183
	sw $t0, -4896($fp)
	li $t0, 54590
	sw $t0, -4900($fp)
	lw $t0, -1380($fp)
	sw $t0, -4904($fp)
	li $t0, 44481
	sw $t0, -4908($fp)
	lw $t0, -4904($fp)
	lw $t1, -4908($fp)
	sub $t0, $t0, $t1
	sw $t0, -4912($fp)
	addi $t0, $fp, -544
	sw $t0, -4916($fp)
	li $t0, 2
	sw $t0, -4920($fp)
	li $t0, 4
	lw $t1, -4920($fp)
	mul $t0, $t0, $t1
	sw $t0, -4924($fp)
	lw $t0, -4924($fp)
	lw $t1, -4916($fp)
	add $t0, $t0, $t1
	sw $t0, -4928($fp)
	lw $t0, -4928($fp)
	lw $t1, 0($t0)
	sw $t1, -4932($fp)
	addi $sp, $sp, -4
	lw $t0, -4900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4932($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4936($fp)
	addi $sp, $sp, 16
	lw $t0, -4896($fp)
	lw $t1, -4936($fp)
	add $t0, $t0, $t1
	sw $t0, -4940($fp)
	lw $t1, -4940($fp)
	li $t2, 0
	bne $t1, $t2, label300
	j label301
label300:
	li $t0, 0
	sw $t0, -4944($fp)
	li $t0, 0
	sw $t0, -4948($fp)
	lw $t0, -428($fp)
	sw $t0, -4952($fp)
	li $t0, 50260
	sw $t0, -4956($fp)
	lw $t0, -4952($fp)
	lw $t1, -4956($fp)
	add $t0, $t0, $t1
	sw $t0, -4960($fp)
	li $t0, 46979
	sw $t0, -4964($fp)
	lw $t1, -4960($fp)
	lw $t2, -4964($fp)
	ble $t1, $t2, label305
	j label306
label305:
	li $t0, 1
	sw $t0, -4948($fp)
label306:
	lw $t0, -1248($fp)
	sw $t0, -4968($fp)
	lw $t0, -428($fp)
	sw $t0, -4972($fp)
	lw $t0, -4968($fp)
	lw $t1, -4972($fp)
	sub $t0, $t0, $t1
	sw $t0, -4976($fp)
	li $t0, 0
	sw $t0, -4980($fp)
	li $t0, 6372
	sw $t0, -4984($fp)
	lw $t0, -4172($fp)
	sw $t0, -4988($fp)
	lw $t1, -4984($fp)
	lw $t2, -4988($fp)
	beq $t1, $t2, label309
	j label308
label309:
	lw $t0, -804($fp)
	sw $t0, -4992($fp)
	lw $t1, -4992($fp)
	li $t2, 0
	bne $t1, $t2, label307
	j label308
label307:
	li $t0, 1
	sw $t0, -4980($fp)
label308:
	li $t0, 0
	sw $t0, -4996($fp)
	addi $t0, $fp, -568
	sw $t0, -5000($fp)
	lw $t0, -488($fp)
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
	lw $t1, -5016($fp)
	li $t2, 0
	bne $t1, $t2, label312
	j label311
label312:
	lw $t0, -1032($fp)
	sw $t0, -5020($fp)
	lw $t1, -5020($fp)
	li $t2, 0
	bne $t1, $t2, label310
	j label311
label310:
	li $t0, 1
	sw $t0, -4996($fp)
label311:
	addi $sp, $sp, -4
	lw $t0, -4976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4996($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5024($fp)
	addi $sp, $sp, 16
	lw $t0, -428($fp)
	sw $t0, -5028($fp)
	lw $t0, -984($fp)
	sw $t0, -5032($fp)
	lw $t0, -5028($fp)
	lw $t1, -5032($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5036($fp)
	lw $t0, -996($fp)
	sw $t0, -5040($fp)
	lw $t0, -5036($fp)
	lw $t1, -5040($fp)
	mul $t0, $t0, $t1
	sw $t0, -5044($fp)
	addi $sp, $sp, -4
	lw $t0, -4948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5044($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5048($fp)
	addi $sp, $sp, 16
	lw $t1, -5048($fp)
	li $t2, 0
	bne $t1, $t2, label304
	j label303
label304:
	lw $t0, -4124($fp)
	sw $t0, -5052($fp)
	lw $t1, -5052($fp)
	li $t2, 0
	bne $t1, $t2, label302
	j label303
label302:
	li $t0, 1
	sw $t0, -4944($fp)
label303:
	lw $t0, -972($fp)
	sw $t0, -5056($fp)
	lw $t0, -5056($fp)
	sw $t0, -4112($fp)
	lw $t0, -4112($fp)
	sw $t0, -5060($fp)
	li $t0, 52997
	sw $t0, -5064($fp)
	addi $sp, $sp, -4
	lw $t0, -4944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5064($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5068($fp)
	addi $sp, $sp, 16
	lw $ra, -4($fp)
	lw $v0, -5068($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label299
label301:
	j label290
label292:
	li $t0, 39903
	sw $t0, -5072($fp)
	lw $t0, -5072($fp)
	sw $t0, -5076($fp)
	lw $t0, -5076($fp)
	sw $t0, -5080($fp)
	li $t0, 18649
	sw $t0, -5084($fp)
	lw $t0, -5084($fp)
	sw $t0, -5088($fp)
	lw $t0, -5088($fp)
	sw $t0, -5092($fp)
	li $t0, 8181
	sw $t0, -5096($fp)
	lw $t0, -5096($fp)
	sw $t0, -5100($fp)
	lw $t0, -5100($fp)
	sw $t0, -5104($fp)
	li $t0, 4749
	sw $t0, -5108($fp)
	lw $t0, -1380($fp)
	sw $t0, -5112($fp)
	li $t0, 0
	lw $t1, -5112($fp)
	sub $t0, $t0, $t1
	sw $t0, -5116($fp)
	li $t0, 0
	sw $t0, -5120($fp)
	addi $t0, $fp, -568
	sw $t0, -5124($fp)
	li $t0, 47381
	sw $t0, -5128($fp)
	lw $t0, -5100($fp)
	sw $t0, -5132($fp)
	lw $t0, -5128($fp)
	lw $t1, -5132($fp)
	add $t0, $t0, $t1
	sw $t0, -5136($fp)
	li $t0, 4
	lw $t1, -5136($fp)
	mul $t0, $t0, $t1
	sw $t0, -5140($fp)
	lw $t0, -5140($fp)
	lw $t1, -5124($fp)
	add $t0, $t0, $t1
	sw $t0, -5144($fp)
	lw $t0, -5144($fp)
	lw $t1, 0($t0)
	sw $t1, -5148($fp)
	lw $t0, -1320($fp)
	sw $t0, -5152($fp)
	lw $t0, -5152($fp)
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	sw $t0, -5156($fp)
	li $t0, 60633
	sw $t0, -5160($fp)
	li $t0, 0
	lw $t1, -5160($fp)
	sub $t0, $t0, $t1
	sw $t0, -5164($fp)
	li $t0, 0
	lw $t1, -5164($fp)
	sub $t0, $t0, $t1
	sw $t0, -5168($fp)
	li $t0, 19286
	sw $t0, -5172($fp)
	li $t0, 0
	lw $t1, -5172($fp)
	sub $t0, $t0, $t1
	sw $t0, -5176($fp)
	addi $sp, $sp, -4
	lw $t0, -5156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5176($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5180($fp)
	addi $sp, $sp, 16
	lw $t1, -5148($fp)
	lw $t2, -5180($fp)
	blt $t1, $t2, label313
	j label314
label313:
	li $t0, 1
	sw $t0, -5120($fp)
label314:
	li $t0, 0
	sw $t0, -5184($fp)
	li $t0, 55267
	sw $t0, -5188($fp)
	lw $t1, -5188($fp)
	li $t2, 0
	bne $t1, $t2, label316
	j label315
label315:
	li $t0, 1
	sw $t0, -5184($fp)
label316:
	li $t0, 0
	lw $t1, -5184($fp)
	sub $t0, $t0, $t1
	sw $t0, -5192($fp)
	li $t0, 0
	sw $t0, -5196($fp)
	li $t0, 0
	sw $t0, -5200($fp)
	lw $t0, -1308($fp)
	sw $t0, -5204($fp)
	lw $t1, -5204($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label319
label319:
	li $t0, 1
	sw $t0, -5200($fp)
label320:
	li $t0, 59247
	sw $t0, -5208($fp)
	lw $t1, -5200($fp)
	lw $t2, -5208($fp)
	bne $t1, $t2, label317
	j label318
label317:
	li $t0, 1
	sw $t0, -5196($fp)
label318:
	li $t0, 0
	sw $t0, -5212($fp)
	lw $t0, -804($fp)
	sw $t0, -5216($fp)
	lw $t1, -5216($fp)
	li $t2, 0
	bne $t1, $t2, label323
	j label321
label323:
	li $t0, 6
	sw $t0, -5220($fp)
	lw $t1, -5220($fp)
	li $t2, 0
	bne $t1, $t2, label321
	j label322
label321:
	li $t0, 1
	sw $t0, -5212($fp)
label322:
	addi $sp, $sp, -4
	lw $t0, -5192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5212($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5224($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -5224($fp)
	sub $t0, $t0, $t1
	sw $t0, -5228($fp)
	li $t0, 0
	sw $t0, -5232($fp)
	addi $t0, $fp, -24
	sw $t0, -5236($fp)
	lw $t0, -1572($fp)
	sw $t0, -5240($fp)
	li $t0, 11405
	sw $t0, -5244($fp)
	lw $t0, -5240($fp)
	lw $t1, -5244($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5248($fp)
	li $t0, 4
	lw $t1, -5248($fp)
	mul $t0, $t0, $t1
	sw $t0, -5252($fp)
	lw $t0, -5252($fp)
	lw $t1, -5236($fp)
	add $t0, $t0, $t1
	sw $t0, -5256($fp)
	lw $t0, -5256($fp)
	lw $t1, 0($t0)
	sw $t1, -5260($fp)
	lw $t0, -1380($fp)
	sw $t0, -5264($fp)
	lw $t0, -5264($fp)
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	sw $t0, -5268($fp)
	li $t0, 0
	sw $t0, -5272($fp)
	li $t0, 22915
	sw $t0, -5276($fp)
	lw $t1, -5276($fp)
	li $t2, 0
	bne $t1, $t2, label328
	j label327
label327:
	li $t0, 1
	sw $t0, -5272($fp)
label328:
	li $t0, 0
	lw $t1, -5272($fp)
	sub $t0, $t0, $t1
	sw $t0, -5280($fp)
	lw $t0, -488($fp)
	sw $t0, -5284($fp)
	lw $t0, -488($fp)
	sw $t0, -5288($fp)
	lw $t0, -5284($fp)
	lw $t1, -5288($fp)
	mul $t0, $t0, $t1
	sw $t0, -5292($fp)
	lw $t0, -1320($fp)
	sw $t0, -5296($fp)
	lw $t0, -5292($fp)
	lw $t1, -5296($fp)
	mul $t0, $t0, $t1
	sw $t0, -5300($fp)
	addi $sp, $sp, -4
	lw $t0, -5268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5300($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5304($fp)
	addi $sp, $sp, 16
	lw $t0, -5260($fp)
	lw $t1, -5304($fp)
	sub $t0, $t0, $t1
	sw $t0, -5308($fp)
	lw $t1, -5308($fp)
	li $t2, 0
	bne $t1, $t2, label326
	j label325
label326:
	lw $t0, -984($fp)
	sw $t0, -5312($fp)
	lw $t1, -5312($fp)
	li $t2, 0
	bne $t1, $t2, label325
	j label324
label324:
	li $t0, 1
	sw $t0, -5232($fp)
label325:
	li $t0, 0
	sw $t0, -5316($fp)
	lw $t0, -1320($fp)
	sw $t0, -5320($fp)
	lw $t1, -5320($fp)
	li $t2, 0
	bne $t1, $t2, label330
	j label329
label329:
	li $t0, 1
	sw $t0, -5316($fp)
label330:
	lw $t0, -5076($fp)
	sw $t0, -5324($fp)
	lw $t0, -5324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5088($fp)
	sw $t0, -5328($fp)
	lw $t0, -5328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5332($fp)
	li $t0, 38146
	sw $t0, -5336($fp)
	li $t0, 30393
	sw $t0, -5340($fp)
	li $t0, 0
	lw $t1, -5340($fp)
	sub $t0, $t0, $t1
	sw $t0, -5344($fp)
	lw $t0, -5336($fp)
	lw $t1, -5344($fp)
	mul $t0, $t0, $t1
	sw $t0, -5348($fp)
	li $t0, 49431
	sw $t0, -5352($fp)
	lw $t0, -5348($fp)
	lw $t1, -5352($fp)
	add $t0, $t0, $t1
	sw $t0, -5356($fp)
	li $t0, 29773
	sw $t0, -5360($fp)
	li $t0, 0
	sw $t0, -5364($fp)
	li $t0, 18154
	sw $t0, -5368($fp)
	lw $t1, -5368($fp)
	li $t2, 0
	bne $t1, $t2, label334
	j label333
label333:
	li $t0, 1
	sw $t0, -5364($fp)
label334:
	lw $t0, -5360($fp)
	lw $t1, -5364($fp)
	sub $t0, $t0, $t1
	sw $t0, -5372($fp)
	lw $t1, -5356($fp)
	lw $t2, -5372($fp)
	blt $t1, $t2, label331
	j label332
label331:
	li $t0, 1
	sw $t0, -5332($fp)
label332:
	lw $ra, -4($fp)
	lw $v0, -5332($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 3958
	sw $t0, -5376($fp)
	lw $t0, -5376($fp)
	sw $t0, -5380($fp)
	lw $t0, -5380($fp)
	sw $t0, -5384($fp)
	li $t0, 0
	sw $t0, -5388($fp)
	li $t0, 11417
	sw $t0, -5392($fp)
	li $t0, 0
	sw $t0, -5396($fp)
	li $t0, 25910
	sw $t0, -5400($fp)
	lw $t0, -1032($fp)
	sw $t0, -5404($fp)
	lw $t0, -5400($fp)
	lw $t1, -5404($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5408($fp)
	lw $t1, -5408($fp)
	li $t2, 0
	bne $t1, $t2, label337
	j label339
label339:
	li $t0, 21611
	sw $t0, -5412($fp)
	lw $t1, -5412($fp)
	li $t2, 0
	bne $t1, $t2, label337
	j label338
label337:
	li $t0, 1
	sw $t0, -5396($fp)
label338:
	li $t0, 0
	sw $t0, -5416($fp)
	addi $t0, $fp, -544
	sw $t0, -5420($fp)
	li $t0, 3
	sw $t0, -5424($fp)
	li $t0, 4
	lw $t1, -5424($fp)
	mul $t0, $t0, $t1
	sw $t0, -5428($fp)
	lw $t0, -5428($fp)
	lw $t1, -5420($fp)
	add $t0, $t0, $t1
	sw $t0, -5432($fp)
	lw $t0, -5432($fp)
	lw $t1, 0($t0)
	sw $t1, -5436($fp)
	li $t0, 0
	lw $t1, -5436($fp)
	sub $t0, $t0, $t1
	sw $t0, -5440($fp)
	li $t0, 0
	sw $t0, -5444($fp)
	li $t0, 35482
	sw $t0, -5448($fp)
	lw $t1, -5448($fp)
	li $t2, 0
	bne $t1, $t2, label346
	j label344
label346:
	li $t0, 22684
	sw $t0, -5452($fp)
	lw $t1, -5452($fp)
	li $t2, 0
	bne $t1, $t2, label345
	j label344
label345:
	li $t0, 30827
	sw $t0, -5456($fp)
	lw $t1, -5456($fp)
	li $t2, 0
	bne $t1, $t2, label343
	j label344
label343:
	li $t0, 1
	sw $t0, -5444($fp)
label344:
	li $t0, 0
	sw $t0, -5460($fp)
	li $t0, 0
	sw $t0, -5464($fp)
	li $t0, 19727
	sw $t0, -5468($fp)
	lw $t0, -428($fp)
	sw $t0, -5472($fp)
	lw $t1, -5468($fp)
	lw $t2, -5472($fp)
	bgt $t1, $t2, label349
	j label350
label349:
	li $t0, 1
	sw $t0, -5464($fp)
label350:
	lw $t0, -488($fp)
	sw $t0, -5476($fp)
	lw $t1, -5464($fp)
	lw $t2, -5476($fp)
	beq $t1, $t2, label347
	j label348
label347:
	li $t0, 1
	sw $t0, -5460($fp)
label348:
	addi $sp, $sp, -4
	lw $t0, -5440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5460($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5480($fp)
	addi $sp, $sp, 16
	lw $t1, -5480($fp)
	li $t2, 0
	bne $t1, $t2, label342
	j label341
label342:
	lw $t0, -1032($fp)
	sw $t0, -5484($fp)
	lw $t1, -5484($fp)
	li $t2, 0
	bne $t1, $t2, label340
	j label341
label340:
	li $t0, 1
	sw $t0, -5416($fp)
label341:
	addi $sp, $sp, -4
	lw $t0, -5392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5416($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5488($fp)
	addi $sp, $sp, 16
	li $t0, 13371
	sw $t0, -5492($fp)
	lw $t0, -5488($fp)
	lw $t1, -5492($fp)
	mul $t0, $t0, $t1
	sw $t0, -5496($fp)
	lw $t0, -488($fp)
	sw $t0, -5500($fp)
	li $t0, 27983
	sw $t0, -5504($fp)
	lw $t0, -5500($fp)
	lw $t1, -5504($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5508($fp)
	addi $t0, $fp, -524
	sw $t0, -5512($fp)
	lw $t0, -1032($fp)
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
	lw $t0, -5508($fp)
	lw $t1, -5528($fp)
	add $t0, $t0, $t1
	sw $t0, -5532($fp)
	lw $t1, -5496($fp)
	lw $t2, -5532($fp)
	bgt $t1, $t2, label335
	j label336
label335:
	li $t0, 1
	sw $t0, -5388($fp)
label336:
	li $t0, 0
	sw $t0, -5536($fp)
	lw $t0, -1308($fp)
	sw $t0, -5540($fp)
	lw $t0, -1308($fp)
	sw $t0, -5544($fp)
	lw $t1, -5540($fp)
	lw $t2, -5544($fp)
	bgt $t1, $t2, label351
	j label353
label353:
	lw $t0, -5380($fp)
	sw $t0, -5548($fp)
	lw $t1, -5548($fp)
	li $t2, 0
	bne $t1, $t2, label351
	j label352
label351:
	li $t0, 1
	sw $t0, -5536($fp)
label352:
	li $t0, 2350
	sw $t0, -5552($fp)
	lw $t0, -452($fp)
	sw $t0, -5556($fp)
	lw $t0, -5552($fp)
	lw $t1, -5556($fp)
	mul $t0, $t0, $t1
	sw $t0, -5560($fp)
	li $t0, 14790
	sw $t0, -5564($fp)
	lw $t0, -5560($fp)
	lw $t1, -5564($fp)
	sub $t0, $t0, $t1
	sw $t0, -5568($fp)
	li $t0, 61677
	sw $t0, -5572($fp)
	lw $t0, -1296($fp)
	sw $t0, -5576($fp)
	lw $t0, -5572($fp)
	lw $t1, -5576($fp)
	mul $t0, $t0, $t1
	sw $t0, -5580($fp)
	li $t0, 60350
	sw $t0, -5584($fp)
	lw $t0, -5580($fp)
	lw $t1, -5584($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5588($fp)
	addi $sp, $sp, -4
	lw $t0, -5536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5588($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5592($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -548
	sw $t0, -5596($fp)
	li $t0, 0
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
	li $t0, 62177
	sw $t0, -5616($fp)
	li $t0, 0
	lw $t1, -5616($fp)
	sub $t0, $t0, $t1
	sw $t0, -5620($fp)
	lw $t1, -5620($fp)
	li $t2, 0
	bne $t1, $t2, label354
	j label355
label354:
	lw $t0, -1608($fp)
	sw $t0, -5624($fp)
	li $t0, 0
	lw $t1, -5624($fp)
	sub $t0, $t0, $t1
	sw $t0, -5628($fp)
	j label356
label355:
	li $t0, 0
	sw $t0, -5632($fp)
	li $t0, 15993
	sw $t0, -5636($fp)
	lw $t1, -5636($fp)
	li $t2, 0
	bne $t1, $t2, label360
	j label359
label360:
	lw $t0, -1044($fp)
	sw $t0, -5640($fp)
	li $t0, 57464
	sw $t0, -5644($fp)
	lw $t0, -5640($fp)
	lw $t1, -5644($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5648($fp)
	lw $t0, -5076($fp)
	sw $t0, -5652($fp)
	lw $t1, -5648($fp)
	lw $t2, -5652($fp)
	bgt $t1, $t2, label357
	j label359
label359:
	li $t0, 0
	sw $t0, -5656($fp)
	lw $t0, -5088($fp)
	sw $t0, -5660($fp)
	lw $t1, -5660($fp)
	li $t2, 0
	bne $t1, $t2, label362
	j label361
label361:
	li $t0, 1
	sw $t0, -5656($fp)
label362:
	lw $t0, -1632($fp)
	sw $t0, -5664($fp)
	lw $t1, -5656($fp)
	lw $t2, -5664($fp)
	bge $t1, $t2, label357
	j label358
label357:
	li $t0, 1
	sw $t0, -5632($fp)
label358:
	lw $ra, -4($fp)
	lw $v0, -5632($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label356:
	li $t0, 0
	sw $t0, -5668($fp)
	lw $t0, -1212($fp)
	sw $t0, -5672($fp)
	li $t0, 8047
	sw $t0, -5676($fp)
	lw $t0, -5672($fp)
	lw $t1, -5676($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5680($fp)
	li $t0, 38909
	sw $t0, -5684($fp)
	li $t0, 30074
	sw $t0, -5688($fp)
	lw $t0, -5684($fp)
	lw $t1, -5688($fp)
	add $t0, $t0, $t1
	sw $t0, -5692($fp)
	lw $t1, -5680($fp)
	lw $t2, -5692($fp)
	ble $t1, $t2, label363
	j label364
label363:
	li $t0, 1
	sw $t0, -5668($fp)
label364:
	lw $t0, -5668($fp)
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	sw $t0, -5696($fp)
	li $t0, 38440
	sw $t0, -5700($fp)
	li $t0, 22804
	sw $t0, -5704($fp)
	li $t0, 0
	lw $t1, -5704($fp)
	sub $t0, $t0, $t1
	sw $t0, -5708($fp)
	lw $t0, -5700($fp)
	lw $t1, -5708($fp)
	add $t0, $t0, $t1
	sw $t0, -5712($fp)
	lw $t0, -428($fp)
	sw $t0, -5716($fp)
	lw $t0, -5712($fp)
	lw $t1, -5716($fp)
	add $t0, $t0, $t1
	sw $t0, -5720($fp)
	addi $t0, $fp, -60
	sw $t0, -5724($fp)
	li $t0, 0
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
	lw $t0, -5720($fp)
	lw $t1, -5740($fp)
	sub $t0, $t0, $t1
	sw $t0, -5744($fp)
	addi $t0, $fp, -24
	sw $t0, -5748($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -5768($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -5788($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -5808($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -5828($fp)
	li $t0, 4
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
	lw $t0, -188($fp)
	sw $t0, -5848($fp)
	lw $t0, -5848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -200($fp)
	sw $t0, -5852($fp)
	lw $t0, -5852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -5856($fp)
	li $t0, 0
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
	addi $t0, $fp, -60
	sw $t0, -5876($fp)
	li $t0, 1
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
	addi $t0, $fp, -60
	sw $t0, -5896($fp)
	li $t0, 2
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
	addi $t0, $fp, -60
	sw $t0, -5916($fp)
	li $t0, 3
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
	addi $t0, $fp, -60
	sw $t0, -5936($fp)
	li $t0, 4
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
	addi $t0, $fp, -60
	sw $t0, -5956($fp)
	li $t0, 5
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
	addi $t0, $fp, -60
	sw $t0, -5976($fp)
	li $t0, 6
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
	addi $t0, $fp, -60
	sw $t0, -5996($fp)
	li $t0, 7
	sw $t0, -6000($fp)
	li $t0, 4
	lw $t1, -6000($fp)
	mul $t0, $t0, $t1
	sw $t0, -6004($fp)
	lw $t0, -6004($fp)
	lw $t1, -5996($fp)
	add $t0, $t0, $t1
	sw $t0, -6008($fp)
	lw $t0, -6008($fp)
	lw $t1, 0($t0)
	sw $t1, -6012($fp)
	lw $t0, -6012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -6016($fp)
	li $t0, 8
	sw $t0, -6020($fp)
	li $t0, 4
	lw $t1, -6020($fp)
	mul $t0, $t0, $t1
	sw $t0, -6024($fp)
	lw $t0, -6024($fp)
	lw $t1, -6016($fp)
	add $t0, $t0, $t1
	sw $t0, -6028($fp)
	lw $t0, -6028($fp)
	lw $t1, 0($t0)
	sw $t1, -6032($fp)
	lw $t0, -6032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -428($fp)
	sw $t0, -6036($fp)
	lw $t0, -6036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -440($fp)
	sw $t0, -6040($fp)
	lw $t0, -6040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -452($fp)
	sw $t0, -6044($fp)
	lw $t0, -6044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -464($fp)
	sw $t0, -6048($fp)
	lw $t0, -6048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -476($fp)
	sw $t0, -6052($fp)
	lw $t0, -6052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -488($fp)
	sw $t0, -6056($fp)
	lw $t0, -6056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6060($fp)
	addi $t0, $fp, -24
	sw $t0, -6064($fp)
	li $t0, 4
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
	li $t0, 26541
	sw $t0, -6084($fp)
	lw $t0, -488($fp)
	sw $t0, -6088($fp)
	lw $t0, -6084($fp)
	lw $t1, -6088($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6092($fp)
	lw $t0, -6080($fp)
	lw $t1, -6092($fp)
	add $t0, $t0, $t1
	sw $t0, -6096($fp)
	lw $t1, -6096($fp)
	li $t2, 0
	bne $t1, $t2, label368
	j label366
label368:
	lw $t0, -200($fp)
	sw $t0, -6100($fp)
	li $t0, 0
	lw $t1, -6100($fp)
	sub $t0, $t0, $t1
	sw $t0, -6104($fp)
	lw $t1, -6104($fp)
	li $t2, 0
	bne $t1, $t2, label366
	j label367
label367:
	li $t0, 3671
	sw $t0, -6108($fp)
	lw $t0, -6108($fp)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -6112($fp)
	li $t0, 0
	sw $t0, -6116($fp)
	li $t0, 44867
	sw $t0, -6120($fp)
	lw $t0, -440($fp)
	sw $t0, -6124($fp)
	lw $t1, -6120($fp)
	lw $t2, -6124($fp)
	beq $t1, $t2, label369
	j label371
label371:
	lw $t0, -452($fp)
	sw $t0, -6128($fp)
	lw $t1, -6128($fp)
	li $t2, 0
	bne $t1, $t2, label369
	j label370
label369:
	li $t0, 1
	sw $t0, -6116($fp)
label370:
	lw $t0, -488($fp)
	sw $t0, -6132($fp)
	li $t0, 49446
	sw $t0, -6136($fp)
	lw $t0, -6132($fp)
	lw $t1, -6136($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6140($fp)
	lw $t0, -476($fp)
	sw $t0, -6144($fp)
	lw $t0, -6140($fp)
	lw $t1, -6144($fp)
	sub $t0, $t0, $t1
	sw $t0, -6148($fp)
	addi $sp, $sp, -4
	lw $t0, -6112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6148($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6152($fp)
	addi $sp, $sp, 16
	li $t0, 5242
	sw $t0, -6156($fp)
	lw $t0, -6152($fp)
	lw $t1, -6156($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6160($fp)
	lw $t1, -6160($fp)
	li $t2, 0
	bne $t1, $t2, label365
	j label366
label365:
	li $t0, 1
	sw $t0, -6060($fp)
label366:
	lw $ra, -4($fp)
	lw $v0, -6060($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -328
	li $t0, 25282
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	li $t0, 17690
	sw $t0, -40($fp)
	addi $t0, $fp, -24
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
	li $t0, 18613
	sw $t0, -64($fp)
	addi $t0, $fp, -24
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
	li $t0, 53265
	sw $t0, -88($fp)
	addi $t0, $fp, -24
	sw $t0, -92($fp)
	li $t0, 2
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
	li $t0, 13831
	sw $t0, -112($fp)
	addi $t0, $fp, -24
	sw $t0, -116($fp)
	li $t0, 3
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
	li $t0, 13427
	sw $t0, -136($fp)
	addi $t0, $fp, -24
	sw $t0, -140($fp)
	li $t0, 4
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
	addi $t0, $fp, -24
	sw $t0, -160($fp)
	li $t0, 1
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
	li $t0, 38706
	sw $t0, -180($fp)
	lw $t0, -176($fp)
	lw $t1, -180($fp)
	sub $t0, $t0, $t1
	sw $t0, -184($fp)
	lw $t0, -32($fp)
	sw $t0, -188($fp)
	li $t0, 16423
	sw $t0, -192($fp)
	lw $t0, -188($fp)
	lw $t1, -192($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -196($fp)
	li $t0, 0
	lw $t1, -196($fp)
	sub $t0, $t0, $t1
	sw $t0, -200($fp)
	addi $t0, $fp, -24
	sw $t0, -204($fp)
	li $t0, 1
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
	addi $sp, $sp, -4
	lw $t0, -184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -220($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -224($fp)
	addi $sp, $sp, 16
	lw $t0, -32($fp)
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -232($fp)
	li $t0, 0
	sw $t0, -236($fp)
	li $t0, 4
	lw $t1, -236($fp)
	mul $t0, $t0, $t1
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	lw $t1, -232($fp)
	add $t0, $t0, $t1
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	lw $t1, 0($t0)
	sw $t1, -248($fp)
	lw $t0, -248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -252($fp)
	li $t0, 1
	sw $t0, -256($fp)
	li $t0, 4
	lw $t1, -256($fp)
	mul $t0, $t0, $t1
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	lw $t1, -252($fp)
	add $t0, $t0, $t1
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	lw $t1, 0($t0)
	sw $t1, -268($fp)
	lw $t0, -268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -272($fp)
	li $t0, 2
	sw $t0, -276($fp)
	li $t0, 4
	lw $t1, -276($fp)
	mul $t0, $t0, $t1
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	lw $t1, -272($fp)
	add $t0, $t0, $t1
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	lw $t1, 0($t0)
	sw $t1, -288($fp)
	lw $t0, -288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -292($fp)
	li $t0, 3
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
	lw $t0, -308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -312($fp)
	li $t0, 4
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
	li $t0, 64913
	sw $t0, -332($fp)
	lw $ra, -4($fp)
	lw $v0, -332($fp)
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
	jal f7
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
