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
	addi $sp, $sp, -8
	li $t0, 0
	sw $t0, -8($fp)
	lw $t0, 4($fp)
	sw $t0, -12($fp)
	lw $t1, -12($fp)
	li $t2, 0
	bne $t1, $t2, label122
	j label121
label121:
	li $t0, 1
	sw $t0, -8($fp)
label122:
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
	addi $sp, $sp, -6048
	li $t0, 44676
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	li $t0, 46541
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	li $t0, 57246
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	li $t0, 38294
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	li $t0, 21822
	sw $t0, -220($fp)
	addi $t0, $fp, -8
	sw $t0, -224($fp)
	li $t0, 0
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
	li $t0, 26960
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	li $t0, 3663
	sw $t0, -256($fp)
	addi $t0, $fp, -24
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
	li $t0, 4289
	sw $t0, -280($fp)
	addi $t0, $fp, -24
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
	li $t0, 38979
	sw $t0, -304($fp)
	addi $t0, $fp, -24
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
	li $t0, 39644
	sw $t0, -328($fp)
	addi $t0, $fp, -24
	sw $t0, -332($fp)
	li $t0, 3
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
	li $t0, 47817
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	li $t0, 60931
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	li $t0, 3748
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	li $t0, 57614
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	li $t0, 31519
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	li $t0, 19846
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	li $t0, 30032
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	li $t0, 57497
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	li $t0, 35273
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	li $t0, 46762
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	li $t0, 23407
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	li $t0, 29810
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	li $t0, 8403
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	li $t0, 36683
	sw $t0, -508($fp)
	addi $t0, $fp, -36
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
	li $t0, 4242
	sw $t0, -532($fp)
	addi $t0, $fp, -36
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
	li $t0, 57113
	sw $t0, -556($fp)
	addi $t0, $fp, -36
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
	li $t0, 40881
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	li $t0, 6501
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	li $t0, 13544
	sw $t0, -604($fp)
	addi $t0, $fp, -40
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
	li $t0, 42897
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	li $t0, 22517
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	li $t0, 58221
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	li $t0, 23902
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -672($fp)
	li $t0, 14227
	sw $t0, -676($fp)
	addi $t0, $fp, -52
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
	li $t0, 30979
	sw $t0, -700($fp)
	addi $t0, $fp, -52
	sw $t0, -704($fp)
	li $t0, 1
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
	li $t0, 45725
	sw $t0, -724($fp)
	addi $t0, $fp, -52
	sw $t0, -728($fp)
	li $t0, 2
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
	li $t0, 41187
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	sw $t0, -756($fp)
	li $t0, 34642
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -768($fp)
	li $t0, 50014
	sw $t0, -772($fp)
	addi $t0, $fp, -64
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
	li $t0, 14631
	sw $t0, -796($fp)
	addi $t0, $fp, -64
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
	li $t0, 8750
	sw $t0, -820($fp)
	addi $t0, $fp, -64
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
	li $t0, 32296
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -852($fp)
	li $t0, 10026
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -864($fp)
	li $t0, 12498
	sw $t0, -868($fp)
	addi $t0, $fp, -68
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
	li $t0, 24374
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -900($fp)
	li $t0, 41545
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -912($fp)
	li $t0, 32344
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -924($fp)
	li $t0, 54406
	sw $t0, -928($fp)
	addi $t0, $fp, -108
	sw $t0, -932($fp)
	li $t0, 0
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
	li $t0, 33506
	sw $t0, -952($fp)
	addi $t0, $fp, -108
	sw $t0, -956($fp)
	li $t0, 1
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
	li $t0, 2082
	sw $t0, -976($fp)
	addi $t0, $fp, -108
	sw $t0, -980($fp)
	li $t0, 2
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
	li $t0, 35632
	sw $t0, -1000($fp)
	addi $t0, $fp, -108
	sw $t0, -1004($fp)
	li $t0, 3
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
	li $t0, 56914
	sw $t0, -1024($fp)
	addi $t0, $fp, -108
	sw $t0, -1028($fp)
	li $t0, 4
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
	li $t0, 31892
	sw $t0, -1048($fp)
	addi $t0, $fp, -108
	sw $t0, -1052($fp)
	li $t0, 5
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
	li $t0, 44036
	sw $t0, -1072($fp)
	addi $t0, $fp, -108
	sw $t0, -1076($fp)
	li $t0, 6
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
	li $t0, 28061
	sw $t0, -1096($fp)
	addi $t0, $fp, -108
	sw $t0, -1100($fp)
	li $t0, 7
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
	li $t0, 36135
	sw $t0, -1120($fp)
	addi $t0, $fp, -108
	sw $t0, -1124($fp)
	li $t0, 8
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
	li $t0, 35613
	sw $t0, -1144($fp)
	addi $t0, $fp, -108
	sw $t0, -1148($fp)
	li $t0, 9
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
	li $t0, 3406
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	sw $t0, -1176($fp)
	li $t0, 42636
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	sw $t0, -1188($fp)
	li $t0, 49157
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -1200($fp)
	li $t0, 46304
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	sw $t0, -1212($fp)
	li $t0, 65153
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	sw $t0, -1224($fp)
	li $t0, 41842
	sw $t0, -1228($fp)
	addi $t0, $fp, -148
	sw $t0, -1232($fp)
	li $t0, 0
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
	li $t0, 4670
	sw $t0, -1252($fp)
	addi $t0, $fp, -148
	sw $t0, -1256($fp)
	li $t0, 1
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
	li $t0, 13844
	sw $t0, -1276($fp)
	addi $t0, $fp, -148
	sw $t0, -1280($fp)
	li $t0, 2
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
	li $t0, 7285
	sw $t0, -1300($fp)
	addi $t0, $fp, -148
	sw $t0, -1304($fp)
	li $t0, 3
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
	li $t0, 50395
	sw $t0, -1324($fp)
	addi $t0, $fp, -148
	sw $t0, -1328($fp)
	li $t0, 4
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
	li $t0, 55032
	sw $t0, -1348($fp)
	addi $t0, $fp, -148
	sw $t0, -1352($fp)
	li $t0, 5
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
	li $t0, 41927
	sw $t0, -1372($fp)
	addi $t0, $fp, -148
	sw $t0, -1376($fp)
	li $t0, 6
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
	li $t0, 34874
	sw $t0, -1396($fp)
	addi $t0, $fp, -148
	sw $t0, -1400($fp)
	li $t0, 7
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
	li $t0, 4127
	sw $t0, -1420($fp)
	addi $t0, $fp, -148
	sw $t0, -1424($fp)
	li $t0, 8
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
	li $t0, 50677
	sw $t0, -1444($fp)
	addi $t0, $fp, -148
	sw $t0, -1448($fp)
	li $t0, 9
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
	li $t0, 1634
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	sw $t0, -1476($fp)
	li $t0, 14153
	sw $t0, -1480($fp)
	lw $t0, -1480($fp)
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	sw $t0, -1488($fp)
	li $t0, 63175
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	sw $t0, -1500($fp)
	li $t0, 26008
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	sw $t0, -1512($fp)
	li $t0, 55698
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	sw $t0, -1524($fp)
	li $t0, 29984
	sw $t0, -1528($fp)
	addi $t0, $fp, -168
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
	li $t0, 14878
	sw $t0, -1552($fp)
	addi $t0, $fp, -168
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
	li $t0, 23668
	sw $t0, -1576($fp)
	addi $t0, $fp, -168
	sw $t0, -1580($fp)
	li $t0, 2
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
	li $t0, 32066
	sw $t0, -1600($fp)
	addi $t0, $fp, -168
	sw $t0, -1604($fp)
	li $t0, 3
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
	li $t0, 50510
	sw $t0, -1624($fp)
	addi $t0, $fp, -168
	sw $t0, -1628($fp)
	li $t0, 4
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
	li $t0, 15046
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	sw $t0, -1656($fp)
	li $t0, 63958
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	sw $t0, -1680($fp)
	li $t0, 29010
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	sw $t0, -1692($fp)
	li $t0, 43107
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	sw $t0, -1704($fp)
	li $t0, 34557
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	sw $t0, -1716($fp)
	li $t0, 64623
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	sw $t0, -1728($fp)
	li $t0, 46514
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	sw $t0, -1740($fp)
	li $t0, 11657
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	sw $t0, -1752($fp)
	li $t0, 48245
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	sw $t0, -1764($fp)
	li $t0, 27282
	sw $t0, -1768($fp)
	addi $t0, $fp, -1668
	sw $t0, -1772($fp)
	li $t0, 0
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
	li $t0, 11274
	sw $t0, -1792($fp)
	addi $t0, $fp, -1668
	sw $t0, -1796($fp)
	li $t0, 1
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
	li $t0, 24551
	sw $t0, -1816($fp)
	addi $t0, $fp, -1668
	sw $t0, -1820($fp)
	li $t0, 2
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
label123:
	li $t0, 31952
	sw $t0, -1840($fp)
	addi $t0, $fp, -64
	sw $t0, -1844($fp)
	lw $t0, -848($fp)
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -1852($fp)
	li $t0, 4
	lw $t1, -1852($fp)
	mul $t0, $t0, $t1
	sw $t0, -1856($fp)
	lw $t0, -1856($fp)
	lw $t1, -1844($fp)
	add $t0, $t0, $t1
	sw $t0, -1860($fp)
	lw $t0, -1860($fp)
	lw $t1, 0($t0)
	sw $t1, -1864($fp)
	lw $t0, -1840($fp)
	lw $t1, -1864($fp)
	mul $t0, $t0, $t1
	sw $t0, -1868($fp)
	lw $t1, -1868($fp)
	li $t2, 0
	bne $t1, $t2, label124
	j label125
label124:
label126:
	li $t0, 0
	sw $t0, -1872($fp)
	li $t0, 25119
	sw $t0, -1876($fp)
	lw $t0, -1196($fp)
	sw $t0, -1880($fp)
	lw $t1, -1876($fp)
	lw $t2, -1880($fp)
	bge $t1, $t2, label132
	j label130
label132:
	li $t0, 31837
	sw $t0, -1884($fp)
	lw $t1, -1884($fp)
	li $t2, 0
	bne $t1, $t2, label131
	j label130
label131:
	lw $t0, -1172($fp)
	sw $t0, -1888($fp)
	lw $t1, -1888($fp)
	li $t2, 0
	bne $t1, $t2, label130
	j label129
label129:
	li $t0, 1
	sw $t0, -1872($fp)
label130:
	lw $t0, -1872($fp)
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -1892($fp)
	lw $t1, -1892($fp)
	li $t2, 0
	bne $t1, $t2, label127
	j label128
label127:
label133:
	addi $t0, $fp, -36
	sw $t0, -1896($fp)
	li $t0, 1
	sw $t0, -1900($fp)
	li $t0, 4
	lw $t1, -1900($fp)
	mul $t0, $t0, $t1
	sw $t0, -1904($fp)
	lw $t0, -1904($fp)
	lw $t1, -1896($fp)
	add $t0, $t0, $t1
	sw $t0, -1908($fp)
	lw $t0, -1908($fp)
	lw $t1, 0($t0)
	sw $t1, -1912($fp)
	lw $t1, -1912($fp)
	li $t2, 0
	bne $t1, $t2, label135
	j label137
label137:
	lw $t0, -596($fp)
	sw $t0, -1916($fp)
	lw $t0, -1676($fp)
	sw $t0, -1920($fp)
	lw $t0, -1916($fp)
	lw $t1, -1920($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1924($fp)
	lw $t0, -1712($fp)
	sw $t0, -1928($fp)
	lw $t0, -1924($fp)
	lw $t1, -1928($fp)
	mul $t0, $t0, $t1
	sw $t0, -1932($fp)
	addi $sp, $sp, -4
	lw $t0, -1932($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1936($fp)
	addi $sp, $sp, 8
	li $t0, 8228
	sw $t0, -1940($fp)
	lw $t1, -1936($fp)
	lw $t2, -1940($fp)
	beq $t1, $t2, label136
	j label135
label136:
	addi $t0, $fp, -1668
	sw $t0, -1944($fp)
	li $t0, 0
	sw $t0, -1948($fp)
	li $t0, 51686
	sw $t0, -1952($fp)
	lw $t1, -1952($fp)
	li $t2, 0
	bne $t1, $t2, label138
	j label140
label140:
	li $t0, 18742
	sw $t0, -1956($fp)
	lw $t1, -1956($fp)
	li $t2, 0
	bne $t1, $t2, label138
	j label139
label138:
	li $t0, 1
	sw $t0, -1948($fp)
label139:
	li $t0, 4
	lw $t1, -1948($fp)
	mul $t0, $t0, $t1
	sw $t0, -1960($fp)
	lw $t0, -1960($fp)
	lw $t1, -1944($fp)
	add $t0, $t0, $t1
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	lw $t1, 0($t0)
	sw $t1, -1968($fp)
	lw $t1, -1968($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label135
label134:
	li $t0, 0
	sw $t0, -1972($fp)
	addi $t0, $fp, -68
	sw $t0, -1976($fp)
	li $t0, 0
	sw $t0, -1980($fp)
	li $t0, 4
	lw $t1, -1980($fp)
	mul $t0, $t0, $t1
	sw $t0, -1984($fp)
	lw $t0, -1984($fp)
	lw $t1, -1976($fp)
	add $t0, $t0, $t1
	sw $t0, -1988($fp)
	lw $t0, -1988($fp)
	lw $t1, 0($t0)
	sw $t1, -1992($fp)
	lw $t1, -1992($fp)
	li $t2, 0
	bne $t1, $t2, label142
	j label141
label141:
	li $t0, 1
	sw $t0, -1972($fp)
label142:
	lw $t0, -1972($fp)
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	sw $t0, -1996($fp)
	j label133
label135:
	j label126
label128:
	j label123
label125:
	lw $t0, -1676($fp)
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1688($fp)
	sw $t0, -2004($fp)
	lw $t0, -2004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1700($fp)
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1712($fp)
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1724($fp)
	sw $t0, -2016($fp)
	lw $t0, -2016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1736($fp)
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1748($fp)
	sw $t0, -2024($fp)
	lw $t0, -2024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1760($fp)
	sw $t0, -2028($fp)
	lw $t0, -2028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1668
	sw $t0, -2032($fp)
	li $t0, 0
	sw $t0, -2036($fp)
	li $t0, 4
	lw $t1, -2036($fp)
	mul $t0, $t0, $t1
	sw $t0, -2040($fp)
	lw $t0, -2040($fp)
	lw $t1, -2032($fp)
	add $t0, $t0, $t1
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	lw $t1, 0($t0)
	sw $t1, -2048($fp)
	lw $t0, -2048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1668
	sw $t0, -2052($fp)
	li $t0, 1
	sw $t0, -2056($fp)
	li $t0, 4
	lw $t1, -2056($fp)
	mul $t0, $t0, $t1
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	lw $t1, -2052($fp)
	add $t0, $t0, $t1
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	lw $t1, 0($t0)
	sw $t1, -2068($fp)
	lw $t0, -2068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1668
	sw $t0, -2072($fp)
	li $t0, 2
	sw $t0, -2076($fp)
	li $t0, 4
	lw $t1, -2076($fp)
	mul $t0, $t0, $t1
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	lw $t1, -2072($fp)
	add $t0, $t0, $t1
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	lw $t1, 0($t0)
	sw $t1, -2088($fp)
	lw $t0, -2088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2092($fp)
	lw $t0, -644($fp)
	sw $t0, -2096($fp)
	lw $t1, -2096($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label143
label143:
	li $t0, 1
	sw $t0, -2092($fp)
label144:
	li $t0, 51482
	sw $t0, -2100($fp)
	lw $t0, -1700($fp)
	sw $t0, -2104($fp)
	lw $t0, -2100($fp)
	lw $t1, -2104($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2108($fp)
	lw $t0, -668($fp)
	sw $t0, -2112($fp)
	lw $t0, -2108($fp)
	lw $t1, -2112($fp)
	mul $t0, $t0, $t1
	sw $t0, -2116($fp)
	lw $t0, -1652($fp)
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -2124($fp)
	li $t0, 0
	sw $t0, -2128($fp)
	addi $t0, $fp, -168
	sw $t0, -2132($fp)
	li $t0, 3
	sw $t0, -2136($fp)
	li $t0, 4
	lw $t1, -2136($fp)
	mul $t0, $t0, $t1
	sw $t0, -2140($fp)
	lw $t0, -2140($fp)
	lw $t1, -2132($fp)
	add $t0, $t0, $t1
	sw $t0, -2144($fp)
	lw $t0, -2144($fp)
	lw $t1, 0($t0)
	sw $t1, -2148($fp)
	lw $t0, -1652($fp)
	sw $t0, -2152($fp)
	lw $t1, -2148($fp)
	lw $t2, -2152($fp)
	blt $t1, $t2, label145
	j label146
label145:
	li $t0, 1
	sw $t0, -2128($fp)
label146:
	li $t0, 0
	sw $t0, -2156($fp)
	li $t0, 28670
	sw $t0, -2160($fp)
	lw $t0, -1724($fp)
	sw $t0, -2164($fp)
	lw $t0, -2160($fp)
	lw $t1, -2164($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2168($fp)
	li $t0, 46725
	sw $t0, -2172($fp)
	lw $t0, -2168($fp)
	lw $t1, -2172($fp)
	mul $t0, $t0, $t1
	sw $t0, -2176($fp)
	lw $t0, -404($fp)
	sw $t0, -2180($fp)
	lw $t0, -2180($fp)
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -2184($fp)
	li $t0, 0
	sw $t0, -2188($fp)
	li $t0, 20993
	sw $t0, -2192($fp)
	lw $t0, -380($fp)
	sw $t0, -2196($fp)
	lw $t1, -2192($fp)
	lw $t2, -2196($fp)
	beq $t1, $t2, label150
	j label152
label152:
	lw $t0, -1676($fp)
	sw $t0, -2200($fp)
	lw $t1, -2200($fp)
	li $t2, 0
	bne $t1, $t2, label150
	j label151
label150:
	li $t0, 1
	sw $t0, -2188($fp)
label151:
	lw $t0, -752($fp)
	sw $t0, -2204($fp)
	li $t0, 23057
	sw $t0, -2208($fp)
	lw $t0, -1208($fp)
	sw $t0, -2212($fp)
	lw $t0, -2208($fp)
	lw $t1, -2212($fp)
	sub $t0, $t0, $t1
	sw $t0, -2216($fp)
	lw $t0, -416($fp)
	sw $t0, -2220($fp)
	lw $t0, -2216($fp)
	lw $t1, -2220($fp)
	add $t0, $t0, $t1
	sw $t0, -2224($fp)
	li $t0, 13792
	sw $t0, -2228($fp)
	li $t0, 32895
	sw $t0, -2232($fp)
	li $t0, 56545
	sw $t0, -2236($fp)
	lw $t0, -2232($fp)
	lw $t1, -2236($fp)
	mul $t0, $t0, $t1
	sw $t0, -2240($fp)
	li $t0, 0
	lw $t1, -2240($fp)
	sub $t0, $t0, $t1
	sw $t0, -2244($fp)
	addi $sp, $sp, -4
	lw $t0, -2204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2244($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2248($fp)
	addi $sp, $sp, 20
	lw $t0, -860($fp)
	sw $t0, -2252($fp)
	lw $t0, -2248($fp)
	lw $t1, -2252($fp)
	sub $t0, $t0, $t1
	sw $t0, -2256($fp)
	addi $sp, $sp, -4
	lw $t0, -2176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2256($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2260($fp)
	addi $sp, $sp, 20
	lw $t1, -2260($fp)
	li $t2, 0
	bne $t1, $t2, label149
	j label148
label149:
	li $t0, 53059
	sw $t0, -2264($fp)
	lw $t1, -2264($fp)
	li $t2, 0
	bne $t1, $t2, label147
	j label148
label147:
	li $t0, 1
	sw $t0, -2156($fp)
label148:
	addi $sp, $sp, -4
	lw $t0, -2116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2156($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2268($fp)
	addi $sp, $sp, 20
	lw $t0, -2092($fp)
	lw $t1, -2268($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2272($fp)
	lw $ra, -4($fp)
	lw $v0, -2272($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1676($fp)
	sw $t0, -2276($fp)
	lw $t0, -2276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1688($fp)
	sw $t0, -2280($fp)
	lw $t0, -2280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1700($fp)
	sw $t0, -2284($fp)
	lw $t0, -2284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1712($fp)
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1724($fp)
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1736($fp)
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1748($fp)
	sw $t0, -2300($fp)
	lw $t0, -2300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1760($fp)
	sw $t0, -2304($fp)
	lw $t0, -2304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1668
	sw $t0, -2308($fp)
	li $t0, 0
	sw $t0, -2312($fp)
	li $t0, 4
	lw $t1, -2312($fp)
	mul $t0, $t0, $t1
	sw $t0, -2316($fp)
	lw $t0, -2316($fp)
	lw $t1, -2308($fp)
	add $t0, $t0, $t1
	sw $t0, -2320($fp)
	lw $t0, -2320($fp)
	lw $t1, 0($t0)
	sw $t1, -2324($fp)
	lw $t0, -2324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1668
	sw $t0, -2328($fp)
	li $t0, 1
	sw $t0, -2332($fp)
	li $t0, 4
	lw $t1, -2332($fp)
	mul $t0, $t0, $t1
	sw $t0, -2336($fp)
	lw $t0, -2336($fp)
	lw $t1, -2328($fp)
	add $t0, $t0, $t1
	sw $t0, -2340($fp)
	lw $t0, -2340($fp)
	lw $t1, 0($t0)
	sw $t1, -2344($fp)
	lw $t0, -2344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1668
	sw $t0, -2348($fp)
	li $t0, 2
	sw $t0, -2352($fp)
	li $t0, 4
	lw $t1, -2352($fp)
	mul $t0, $t0, $t1
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	lw $t1, -2348($fp)
	add $t0, $t0, $t1
	sw $t0, -2360($fp)
	lw $t0, -2360($fp)
	lw $t1, 0($t0)
	sw $t1, -2364($fp)
	lw $t0, -2364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2368($fp)
	lw $t0, -368($fp)
	sw $t0, -2372($fp)
	li $t0, 20503
	sw $t0, -2376($fp)
	lw $t0, -1688($fp)
	sw $t0, -2380($fp)
	lw $t0, -2380($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -2384($fp)
	li $t0, 0
	sw $t0, -2388($fp)
	li $t0, 39343
	sw $t0, -2392($fp)
	lw $t0, -1484($fp)
	sw $t0, -2396($fp)
	lw $t0, -2392($fp)
	lw $t1, -2396($fp)
	add $t0, $t0, $t1
	sw $t0, -2400($fp)
	lw $t0, -1748($fp)
	sw $t0, -2404($fp)
	lw $t1, -2400($fp)
	lw $t2, -2404($fp)
	ble $t1, $t2, label156
	j label157
label156:
	li $t0, 1
	sw $t0, -2388($fp)
label157:
	li $t0, 42655
	sw $t0, -2408($fp)
	lw $t0, -380($fp)
	sw $t0, -2412($fp)
	lw $t0, -2408($fp)
	lw $t1, -2412($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2416($fp)
	li $t0, 0
	lw $t1, -2416($fp)
	sub $t0, $t0, $t1
	sw $t0, -2420($fp)
	addi $sp, $sp, -4
	lw $t0, -2376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2420($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2424($fp)
	addi $sp, $sp, 20
	lw $t0, -2372($fp)
	lw $t1, -2424($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2428($fp)
	lw $t0, -476($fp)
	sw $t0, -2432($fp)
	li $t0, 41742
	sw $t0, -2436($fp)
	lw $t0, -2432($fp)
	lw $t1, -2436($fp)
	sub $t0, $t0, $t1
	sw $t0, -2440($fp)
	lw $t1, -2428($fp)
	lw $t2, -2440($fp)
	bge $t1, $t2, label155
	j label154
label155:
	lw $t0, -416($fp)
	sw $t0, -2444($fp)
	li $t0, 20321
	sw $t0, -2448($fp)
	lw $t0, -2444($fp)
	lw $t1, -2448($fp)
	add $t0, $t0, $t1
	sw $t0, -2452($fp)
	lw $t0, -416($fp)
	sw $t0, -2456($fp)
	lw $t0, -2452($fp)
	lw $t1, -2456($fp)
	sub $t0, $t0, $t1
	sw $t0, -2460($fp)
	li $t0, 32161
	sw $t0, -2464($fp)
	lw $t0, -1736($fp)
	sw $t0, -2468($fp)
	lw $t0, -2464($fp)
	lw $t1, -2468($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2472($fp)
	lw $t0, -2460($fp)
	lw $t1, -2472($fp)
	sub $t0, $t0, $t1
	sw $t0, -2476($fp)
	lw $t1, -2476($fp)
	li $t2, 0
	bne $t1, $t2, label153
	j label154
label153:
	li $t0, 1
	sw $t0, -2368($fp)
label154:
	lw $ra, -4($fp)
	lw $v0, -2368($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label158:
	li $t0, 0
	sw $t0, -2480($fp)
	lw $t0, -896($fp)
	sw $t0, -2484($fp)
	li $t0, 24451
	sw $t0, -2488($fp)
	lw $t1, -2484($fp)
	lw $t2, -2488($fp)
	bne $t1, $t2, label161
	j label162
label161:
	li $t0, 1
	sw $t0, -2480($fp)
label162:
	li $t0, 0
	sw $t0, -2492($fp)
	addi $t0, $fp, -36
	sw $t0, -2496($fp)
	li $t0, 2
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
	addi $t0, $fp, -68
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
	lw $t1, -2512($fp)
	lw $t2, -2532($fp)
	bge $t1, $t2, label163
	j label164
label163:
	li $t0, 1
	sw $t0, -2492($fp)
label164:
	lw $t1, -2480($fp)
	lw $t2, -2492($fp)
	bne $t1, $t2, label159
	j label160
label159:
	li $t0, 0
	sw $t0, -2536($fp)
	li $t0, 3018
	sw $t0, -2540($fp)
	lw $t1, -2540($fp)
	li $t2, 0
	bne $t1, $t2, label167
	j label168
label168:
	lw $t0, -584($fp)
	sw $t0, -2544($fp)
	lw $t0, -368($fp)
	sw $t0, -2548($fp)
	lw $t0, -2544($fp)
	lw $t1, -2548($fp)
	mul $t0, $t0, $t1
	sw $t0, -2552($fp)
	lw $t1, -2552($fp)
	li $t2, 0
	bne $t1, $t2, label165
	j label167
label167:
	li $t0, 4766
	sw $t0, -2556($fp)
	lw $t0, -248($fp)
	sw $t0, -2560($fp)
	lw $t0, -2556($fp)
	lw $t1, -2560($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2564($fp)
	li $t0, 3734
	sw $t0, -2568($fp)
	lw $t0, -2564($fp)
	lw $t1, -2568($fp)
	mul $t0, $t0, $t1
	sw $t0, -2572($fp)
	li $t0, 0
	sw $t0, -2576($fp)
	li $t0, 23532
	sw $t0, -2580($fp)
	li $t0, 16982
	sw $t0, -2584($fp)
	lw $t0, -2580($fp)
	lw $t1, -2584($fp)
	mul $t0, $t0, $t1
	sw $t0, -2588($fp)
	li $t0, 36375
	sw $t0, -2592($fp)
	lw $t1, -2588($fp)
	lw $t2, -2592($fp)
	beq $t1, $t2, label169
	j label170
label169:
	li $t0, 1
	sw $t0, -2576($fp)
label170:
	lw $t0, -1700($fp)
	sw $t0, -2596($fp)
	li $t0, 0
	sw $t0, -2600($fp)
	li $t0, 17633
	sw $t0, -2604($fp)
	li $t0, 0
	lw $t1, -2604($fp)
	sub $t0, $t0, $t1
	sw $t0, -2608($fp)
	lw $t1, -2608($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label171
label171:
	li $t0, 1
	sw $t0, -2600($fp)
label172:
	li $t0, 0
	sw $t0, -2612($fp)
	addi $t0, $fp, -40
	sw $t0, -2616($fp)
	lw $t0, -596($fp)
	sw $t0, -2620($fp)
	li $t0, 4
	lw $t1, -2620($fp)
	mul $t0, $t0, $t1
	sw $t0, -2624($fp)
	lw $t0, -2624($fp)
	lw $t1, -2616($fp)
	add $t0, $t0, $t1
	sw $t0, -2628($fp)
	lw $t0, -2628($fp)
	lw $t1, 0($t0)
	sw $t1, -2632($fp)
	lw $t0, -476($fp)
	sw $t0, -2636($fp)
	lw $t1, -2632($fp)
	lw $t2, -2636($fp)
	beq $t1, $t2, label173
	j label174
label173:
	li $t0, 1
	sw $t0, -2612($fp)
label174:
	addi $sp, $sp, -4
	lw $t0, -2576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2612($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2640($fp)
	addi $sp, $sp, 20
	li $t0, 16902
	sw $t0, -2644($fp)
	lw $t0, -2640($fp)
	lw $t1, -2644($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2648($fp)
	li $t0, 30832
	sw $t0, -2652($fp)
	li $t0, 15304
	sw $t0, -2656($fp)
	lw $t0, -2656($fp)
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	sw $t0, -2660($fp)
	addi $sp, $sp, -4
	lw $t0, -2572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2660($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2664($fp)
	addi $sp, $sp, 20
	lw $t1, -2664($fp)
	li $t2, 0
	bne $t1, $t2, label165
	j label166
label165:
	li $t0, 1
	sw $t0, -2536($fp)
label166:
	j label158
label160:
	li $t0, 7912
	sw $t0, -2668($fp)
	lw $t0, -2668($fp)
	sw $t0, -2672($fp)
	lw $t0, -2672($fp)
	sw $t0, -2676($fp)
	li $t0, 18558
	sw $t0, -2680($fp)
	lw $t0, -2680($fp)
	sw $t0, -2684($fp)
	lw $t0, -2684($fp)
	sw $t0, -2688($fp)
	li $t0, 0
	sw $t0, -2692($fp)
	li $t0, 47228
	sw $t0, -2696($fp)
	li $t0, 28905
	sw $t0, -2700($fp)
	li $t0, 0
	sw $t0, -2704($fp)
	lw $t0, -1652($fp)
	sw $t0, -2708($fp)
	lw $t1, -2708($fp)
	li $t2, 0
	bne $t1, $t2, label177
	j label179
label179:
	lw $t0, -440($fp)
	sw $t0, -2712($fp)
	lw $t1, -2712($fp)
	li $t2, 0
	bne $t1, $t2, label177
	j label178
label177:
	li $t0, 1
	sw $t0, -2704($fp)
label178:
	li $t0, 0
	sw $t0, -2716($fp)
	lw $t0, -2684($fp)
	sw $t0, -2720($fp)
	lw $t1, -2720($fp)
	li $t2, 0
	bne $t1, $t2, label181
	j label182
label182:
	li $t0, 26791
	sw $t0, -2724($fp)
	lw $t1, -2724($fp)
	li $t2, 0
	bne $t1, $t2, label180
	j label181
label180:
	li $t0, 1
	sw $t0, -2716($fp)
label181:
	addi $sp, $sp, -4
	lw $t0, -2696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2716($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2728($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -2732($fp)
	lw $t0, -848($fp)
	sw $t0, -2736($fp)
	li $t0, 0
	lw $t1, -2736($fp)
	sub $t0, $t0, $t1
	sw $t0, -2740($fp)
	lw $t1, -2740($fp)
	li $t2, 0
	bne $t1, $t2, label184
	j label183
label183:
	li $t0, 1
	sw $t0, -2732($fp)
label184:
	li $t0, 0
	sw $t0, -2744($fp)
	lw $t0, -2672($fp)
	sw $t0, -2748($fp)
	lw $t0, -188($fp)
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -2756($fp)
	li $t0, 4217
	sw $t0, -2760($fp)
	lw $t0, -2760($fp)
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	sw $t0, -2764($fp)
	li $t0, 0
	sw $t0, -2768($fp)
	addi $t0, $fp, -64
	sw $t0, -2772($fp)
	lw $t0, -1736($fp)
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
	lw $t0, -656($fp)
	sw $t0, -2792($fp)
	lw $t1, -2788($fp)
	lw $t2, -2792($fp)
	bge $t1, $t2, label187
	j label188
label187:
	li $t0, 1
	sw $t0, -2768($fp)
label188:
	addi $sp, $sp, -4
	lw $t0, -2768($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2796($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -2796($fp)
	sub $t0, $t0, $t1
	sw $t0, -2800($fp)
	addi $sp, $sp, -4
	lw $t0, -2748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2800($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2804($fp)
	addi $sp, $sp, 20
	lw $t1, -2804($fp)
	li $t2, 0
	bne $t1, $t2, label186
	j label185
label185:
	li $t0, 1
	sw $t0, -2744($fp)
label186:
	li $t0, 60872
	sw $t0, -2808($fp)
	li $t0, 0
	sw $t0, -2812($fp)
	lw $t0, -392($fp)
	sw $t0, -2816($fp)
	li $t0, 7981
	sw $t0, -2820($fp)
	lw $t0, -2816($fp)
	lw $t1, -2820($fp)
	mul $t0, $t0, $t1
	sw $t0, -2824($fp)
	li $t0, 16429
	sw $t0, -2828($fp)
	lw $t1, -2824($fp)
	lw $t2, -2828($fp)
	bne $t1, $t2, label189
	j label190
label189:
	li $t0, 1
	sw $t0, -2812($fp)
label190:
	addi $sp, $sp, -4
	lw $t0, -2732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2812($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2832($fp)
	addi $sp, $sp, 20
	lw $t0, -1760($fp)
	sw $t0, -2836($fp)
	lw $t0, -2832($fp)
	lw $t1, -2836($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2840($fp)
	lw $t1, -2728($fp)
	lw $t2, -2840($fp)
	ble $t1, $t2, label175
	j label176
label175:
	li $t0, 1
	sw $t0, -2692($fp)
label176:
	li $t0, 0
	sw $t0, -2844($fp)
	li $t0, 0
	sw $t0, -2848($fp)
	lw $t0, -860($fp)
	sw $t0, -2852($fp)
	li $t0, 2375
	sw $t0, -2856($fp)
	lw $t0, -2852($fp)
	lw $t1, -2856($fp)
	add $t0, $t0, $t1
	sw $t0, -2860($fp)
	li $t0, 37991
	sw $t0, -2864($fp)
	lw $t1, -2860($fp)
	lw $t2, -2864($fp)
	ble $t1, $t2, label194
	j label195
label194:
	li $t0, 1
	sw $t0, -2848($fp)
label195:
	addi $sp, $sp, -4
	lw $t0, -2848($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2868($fp)
	addi $sp, $sp, 8
	lw $t1, -2868($fp)
	li $t2, 0
	bne $t1, $t2, label193
	j label192
label193:
	li $t0, 43560
	sw $t0, -2872($fp)
	lw $t1, -2872($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label192
label191:
	li $t0, 1
	sw $t0, -2844($fp)
label192:
label196:
	addi $t0, $fp, -168
	sw $t0, -2876($fp)
	li $t0, 0
	sw $t0, -2880($fp)
	li $t0, 22878
	sw $t0, -2884($fp)
	lw $t0, -200($fp)
	sw $t0, -2888($fp)
	lw $t0, -2884($fp)
	lw $t1, -2888($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2892($fp)
	li $t0, 14198
	sw $t0, -2896($fp)
	lw $t1, -2892($fp)
	lw $t2, -2896($fp)
	bne $t1, $t2, label199
	j label200
label199:
	li $t0, 1
	sw $t0, -2880($fp)
label200:
	li $t0, 4
	lw $t1, -2880($fp)
	mul $t0, $t0, $t1
	sw $t0, -2900($fp)
	lw $t0, -2900($fp)
	lw $t1, -2876($fp)
	add $t0, $t0, $t1
	sw $t0, -2904($fp)
	lw $t0, -2904($fp)
	lw $t1, 0($t0)
	sw $t1, -2908($fp)
	lw $t0, -452($fp)
	sw $t0, -2912($fp)
	lw $t0, -2908($fp)
	lw $t1, -2912($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2916($fp)
	lw $t1, -2916($fp)
	li $t2, 0
	bne $t1, $t2, label197
	j label198
label197:
label201:
	li $t0, 63882
	sw $t0, -2920($fp)
	lw $t1, -2920($fp)
	li $t2, 0
	bne $t1, $t2, label202
	j label203
label202:
	li $t0, 55039
	sw $t0, -2924($fp)
	lw $t0, -2924($fp)
	sw $t0, -2928($fp)
	lw $t0, -2928($fp)
	sw $t0, -2932($fp)
	li $t0, 38649
	sw $t0, -2936($fp)
	lw $t0, -2936($fp)
	sw $t0, -2940($fp)
	lw $t0, -2940($fp)
	sw $t0, -2944($fp)
	li $t0, 45949
	sw $t0, -2948($fp)
	lw $t0, -2948($fp)
	sw $t0, -2952($fp)
	lw $t0, -2952($fp)
	sw $t0, -2956($fp)
	li $t0, 0
	sw $t0, -2960($fp)
	lw $t0, -752($fp)
	sw $t0, -2964($fp)
	lw $t0, -392($fp)
	sw $t0, -2968($fp)
	lw $t0, -2964($fp)
	lw $t1, -2968($fp)
	mul $t0, $t0, $t1
	sw $t0, -2972($fp)
	lw $t0, -2952($fp)
	sw $t0, -2976($fp)
	lw $t0, -2972($fp)
	lw $t1, -2976($fp)
	add $t0, $t0, $t1
	sw $t0, -2980($fp)
	li $t0, 59969
	sw $t0, -2984($fp)
	li $t0, 35957
	sw $t0, -2988($fp)
	lw $t0, -2984($fp)
	lw $t1, -2988($fp)
	add $t0, $t0, $t1
	sw $t0, -2992($fp)
	lw $t0, -596($fp)
	sw $t0, -2996($fp)
	lw $t0, -1508($fp)
	sw $t0, -3000($fp)
	lw $t0, -2996($fp)
	lw $t1, -3000($fp)
	mul $t0, $t0, $t1
	sw $t0, -3004($fp)
	li $t0, 0
	sw $t0, -3008($fp)
	li $t0, 32939
	sw $t0, -3012($fp)
	li $t0, 22116
	sw $t0, -3016($fp)
	lw $t0, -3012($fp)
	lw $t1, -3016($fp)
	add $t0, $t0, $t1
	sw $t0, -3020($fp)
	lw $t1, -3020($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label208
label208:
	lw $t0, -668($fp)
	sw $t0, -3024($fp)
	lw $t1, -3024($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label207
label206:
	li $t0, 1
	sw $t0, -3008($fp)
label207:
	addi $sp, $sp, -4
	lw $t0, -2980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3008($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3028($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -3028($fp)
	sub $t0, $t0, $t1
	sw $t0, -3032($fp)
	li $t0, 0
	lw $t1, -3032($fp)
	sub $t0, $t0, $t1
	sw $t0, -3036($fp)
	lw $t0, -848($fp)
	sw $t0, -3040($fp)
	lw $t1, -3036($fp)
	lw $t2, -3040($fp)
	bgt $t1, $t2, label204
	j label205
label204:
	li $t0, 1
	sw $t0, -2960($fp)
label205:
	li $t0, 24430
	sw $t0, -3044($fp)
	lw $t0, -3044($fp)
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -3048($fp)
	li $t0, 42247
	sw $t0, -3052($fp)
	lw $t0, -212($fp)
	sw $t0, -3056($fp)
	li $t0, 0
	sw $t0, -3060($fp)
	lw $t0, -2928($fp)
	sw $t0, -3064($fp)
	lw $t1, -3064($fp)
	li $t2, 0
	bne $t1, $t2, label210
	j label209
label209:
	li $t0, 1
	sw $t0, -3060($fp)
label210:
	lw $t0, -668($fp)
	sw $t0, -3068($fp)
	lw $t0, -3060($fp)
	lw $t1, -3068($fp)
	mul $t0, $t0, $t1
	sw $t0, -3072($fp)
	addi $sp, $sp, -4
	lw $t0, -3048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3072($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3076($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -3080($fp)
	li $t0, 0
	sw $t0, -3084($fp)
	lw $t0, -1496($fp)
	sw $t0, -3088($fp)
	lw $t1, -3088($fp)
	li $t2, 0
	bne $t1, $t2, label214
	j label213
label213:
	li $t0, 1
	sw $t0, -3084($fp)
label214:
	li $t0, 60953
	sw $t0, -3092($fp)
	lw $t1, -3084($fp)
	lw $t2, -3092($fp)
	bne $t1, $t2, label211
	j label212
label211:
	li $t0, 1
	sw $t0, -3080($fp)
label212:
	li $t0, 25265
	sw $t0, -3096($fp)
	li $t0, 53591
	sw $t0, -3100($fp)
	lw $t0, -3096($fp)
	lw $t1, -3100($fp)
	sub $t0, $t0, $t1
	sw $t0, -3104($fp)
	lw $t0, -380($fp)
	sw $t0, -3108($fp)
	lw $t0, -3104($fp)
	lw $t1, -3108($fp)
	sub $t0, $t0, $t1
	sw $t0, -3112($fp)
	lw $t0, -896($fp)
	sw $t0, -3116($fp)
	addi $sp, $sp, -4
	lw $t0, -3076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3116($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3120($fp)
	addi $sp, $sp, 20
	lw $t0, -920($fp)
	sw $t0, -3124($fp)
	li $t0, 0
	sw $t0, -3128($fp)
	li $t0, 37420
	sw $t0, -3132($fp)
	lw $t1, -3132($fp)
	li $t2, 0
	bne $t1, $t2, label215
	j label218
label218:
	lw $t0, -2940($fp)
	sw $t0, -3136($fp)
	lw $t1, -3136($fp)
	li $t2, 0
	bne $t1, $t2, label215
	j label217
label217:
	lw $t0, -1760($fp)
	sw $t0, -3140($fp)
	lw $t1, -3140($fp)
	li $t2, 0
	bne $t1, $t2, label215
	j label216
label215:
	li $t0, 1
	sw $t0, -3128($fp)
label216:
	lw $t0, -200($fp)
	sw $t0, -3144($fp)
	addi $sp, $sp, -4
	lw $t0, -3120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3144($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3148($fp)
	addi $sp, $sp, 20
	j label201
label203:
	j label196
label198:
	lw $t0, -668($fp)
	sw $t0, -3152($fp)
	lw $t0, -3152($fp)
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -3156($fp)
label219:
	li $t0, 12319
	sw $t0, -3160($fp)
	li $t0, 47013
	sw $t0, -3164($fp)
	lw $t1, -3160($fp)
	lw $t2, -3164($fp)
	blt $t1, $t2, label220
	j label221
label220:
	li $t0, 28165
	sw $t0, -3168($fp)
	lw $t0, -3168($fp)
	sw $t0, -3172($fp)
	lw $t0, -3172($fp)
	sw $t0, -3176($fp)
	lw $t0, -764($fp)
	sw $t0, -3180($fp)
	lw $t0, -1172($fp)
	sw $t0, -3184($fp)
	li $t0, 0
	lw $t1, -3184($fp)
	sub $t0, $t0, $t1
	sw $t0, -3188($fp)
	lw $t1, -3180($fp)
	lw $t2, -3188($fp)
	bne $t1, $t2, label222
	j label223
label222:
	li $t0, 0
	sw $t0, -3192($fp)
	lw $t0, -848($fp)
	sw $t0, -3196($fp)
	lw $t1, -3196($fp)
	li $t2, 0
	bne $t1, $t2, label226
	j label225
label225:
	li $t0, 1
	sw $t0, -3192($fp)
label226:
	lw $t0, -3172($fp)
	sw $t0, -3200($fp)
	lw $t0, -3192($fp)
	lw $t1, -3200($fp)
	mul $t0, $t0, $t1
	sw $t0, -3204($fp)
	addi $sp, $sp, -4
	lw $t0, -3204($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3208($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -3208($fp)
	sub $t0, $t0, $t1
	sw $t0, -3212($fp)
	li $t0, 0
	lw $t1, -3212($fp)
	sub $t0, $t0, $t1
	sw $t0, -3216($fp)
	lw $t0, -3216($fp)
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	sw $t0, -3220($fp)
	lw $ra, -4($fp)
	lw $v0, -3220($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label223:
	lw $t0, -584($fp)
	sw $t0, -3224($fp)
	li $t0, 0
	lw $t1, -3224($fp)
	sub $t0, $t0, $t1
	sw $t0, -3228($fp)
	li $t0, 20231
	sw $t0, -3232($fp)
	lw $t0, -3228($fp)
	lw $t1, -3232($fp)
	sub $t0, $t0, $t1
	sw $t0, -3236($fp)
	j label219
label221:
	li $t0, 35
	sw $t0, -3240($fp)
	lw $t0, -3240($fp)
	sw $t0, -3244($fp)
	lw $t0, -3244($fp)
	sw $t0, -3248($fp)
	li $t0, 54956
	sw $t0, -3252($fp)
	lw $t0, -3252($fp)
	sw $t0, -3256($fp)
	lw $t0, -3256($fp)
	sw $t0, -3260($fp)
	li $t0, 0
	sw $t0, -3264($fp)
	li $t0, 0
	sw $t0, -3268($fp)
	lw $t0, -188($fp)
	sw $t0, -3272($fp)
	lw $t1, -3272($fp)
	li $t2, 0
	bne $t1, $t2, label231
	j label230
label230:
	li $t0, 1
	sw $t0, -3268($fp)
label231:
	addi $t0, $fp, -68
	sw $t0, -3276($fp)
	lw $t0, -3244($fp)
	sw $t0, -3280($fp)
	li $t0, 4
	lw $t1, -3280($fp)
	mul $t0, $t0, $t1
	sw $t0, -3284($fp)
	lw $t0, -3284($fp)
	lw $t1, -3276($fp)
	add $t0, $t0, $t1
	sw $t0, -3288($fp)
	lw $t0, -3288($fp)
	lw $t1, 0($t0)
	sw $t1, -3292($fp)
	lw $t0, -3268($fp)
	lw $t1, -3292($fp)
	add $t0, $t0, $t1
	sw $t0, -3296($fp)
	lw $t1, -3296($fp)
	li $t2, 0
	bne $t1, $t2, label229
	j label228
label229:
	li $t0, 49137
	sw $t0, -3300($fp)
	lw $t1, -3300($fp)
	li $t2, 0
	bne $t1, $t2, label227
	j label228
label227:
	li $t0, 1
	sw $t0, -3264($fp)
label228:
	li $t0, 47263
	sw $t0, -3304($fp)
	lw $t0, -1508($fp)
	sw $t0, -3308($fp)
	li $t0, 0
	lw $t1, -3308($fp)
	sub $t0, $t0, $t1
	sw $t0, -3312($fp)
	lw $t0, -3304($fp)
	lw $t1, -3312($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3316($fp)
	li $t0, 0
	lw $t1, -3316($fp)
	sub $t0, $t0, $t1
	sw $t0, -3320($fp)
	lw $t0, -3256($fp)
	sw $t0, -3324($fp)
	lw $t0, -860($fp)
	sw $t0, -3328($fp)
	lw $t0, -3324($fp)
	lw $t1, -3328($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3332($fp)
	li $t0, 62937
	sw $t0, -3336($fp)
	lw $t0, -3332($fp)
	lw $t1, -3336($fp)
	mul $t0, $t0, $t1
	sw $t0, -3340($fp)
	li $t0, 0
	sw $t0, -3344($fp)
	li $t0, 30
	sw $t0, -3348($fp)
	lw $t1, -3348($fp)
	li $t2, 0
	bne $t1, $t2, label233
	j label232
label232:
	li $t0, 1
	sw $t0, -3344($fp)
label233:
	lw $t0, -3340($fp)
	lw $t1, -3344($fp)
	add $t0, $t0, $t1
	sw $t0, -3352($fp)
	lw $t0, -3352($fp)
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -3356($fp)
	lw $t0, -752($fp)
	sw $t0, -3360($fp)
	li $t0, 0
	sw $t0, -3364($fp)
	lw $t0, -1172($fp)
	sw $t0, -3368($fp)
	lw $t1, -3368($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label234
label234:
	li $t0, 1
	sw $t0, -3364($fp)
label235:
	addi $t0, $fp, -148
	sw $t0, -3372($fp)
	lw $t0, -668($fp)
	sw $t0, -3376($fp)
	li $t0, 4
	lw $t1, -3376($fp)
	mul $t0, $t0, $t1
	sw $t0, -3380($fp)
	lw $t0, -3380($fp)
	lw $t1, -3372($fp)
	add $t0, $t0, $t1
	sw $t0, -3384($fp)
	lw $t0, -3384($fp)
	lw $t1, 0($t0)
	sw $t1, -3388($fp)
	lw $t0, -752($fp)
	sw $t0, -3392($fp)
	lw $t0, -3392($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -3396($fp)
	li $t0, 1618
	sw $t0, -3400($fp)
	lw $t0, -3400($fp)
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -3404($fp)
	li $t0, 42600
	sw $t0, -3408($fp)
	lw $t0, -3408($fp)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -3412($fp)
	addi $sp, $sp, -4
	lw $t0, -3388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3412($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3416($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -3416($fp)
	sub $t0, $t0, $t1
	sw $t0, -3420($fp)
	li $t0, 0
	lw $t1, -3420($fp)
	sub $t0, $t0, $t1
	sw $t0, -3424($fp)
	lw $ra, -4($fp)
	lw $v0, -3424($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -3428($fp)
	addi $t0, $fp, -8
	sw $t0, -3432($fp)
	lw $t0, -368($fp)
	sw $t0, -3436($fp)
	li $t0, 4
	lw $t1, -3436($fp)
	mul $t0, $t0, $t1
	sw $t0, -3440($fp)
	lw $t0, -3440($fp)
	lw $t1, -3432($fp)
	add $t0, $t0, $t1
	sw $t0, -3444($fp)
	lw $t0, -3444($fp)
	lw $t1, 0($t0)
	sw $t1, -3448($fp)
	li $t0, 0
	sw $t0, -3452($fp)
	lw $t0, -476($fp)
	sw $t0, -3456($fp)
	lw $t1, -3456($fp)
	li $t2, 0
	bne $t1, $t2, label240
	j label239
label239:
	li $t0, 1
	sw $t0, -3452($fp)
label240:
	li $t0, 0
	lw $t1, -3452($fp)
	sub $t0, $t0, $t1
	sw $t0, -3460($fp)
	lw $t0, -3448($fp)
	lw $t1, -3460($fp)
	mul $t0, $t0, $t1
	sw $t0, -3464($fp)
	lw $t1, -3464($fp)
	li $t2, 0
	bne $t1, $t2, label236
	j label238
label238:
	addi $t0, $fp, -64
	sw $t0, -3468($fp)
	li $t0, 1
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
	lw $t1, -3484($fp)
	li $t2, 0
	bne $t1, $t2, label236
	j label237
label236:
	li $t0, 1
	sw $t0, -3428($fp)
label237:
	li $t0, 0
	sw $t0, -3488($fp)
	li $t0, 0
	sw $t0, -3492($fp)
	li $t0, 45179
	sw $t0, -3496($fp)
	lw $t1, -3496($fp)
	li $t2, 0
	bne $t1, $t2, label244
	j label243
label243:
	li $t0, 1
	sw $t0, -3492($fp)
label244:
	li $t0, 25283
	sw $t0, -3500($fp)
	lw $t0, -3492($fp)
	lw $t1, -3500($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3504($fp)
	addi $sp, $sp, -4
	lw $t0, -3504($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3508($fp)
	addi $sp, $sp, 8
	li $t0, 23938
	sw $t0, -3512($fp)
	li $t0, 47726
	sw $t0, -3516($fp)
	lw $t0, -3512($fp)
	lw $t1, -3516($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3520($fp)
	lw $t0, -848($fp)
	sw $t0, -3524($fp)
	lw $t0, -3520($fp)
	lw $t1, -3524($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3528($fp)
	li $t0, 0
	sw $t0, -3532($fp)
	addi $t0, $fp, -148
	sw $t0, -3536($fp)
	li $t0, 5
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
	li $t0, 2367
	sw $t0, -3556($fp)
	lw $t1, -3552($fp)
	lw $t2, -3556($fp)
	ble $t1, $t2, label245
	j label246
label245:
	li $t0, 1
	sw $t0, -3532($fp)
label246:
	addi $t0, $fp, -36
	sw $t0, -3560($fp)
	lw $t0, -860($fp)
	sw $t0, -3564($fp)
	li $t0, 4
	lw $t1, -3564($fp)
	mul $t0, $t0, $t1
	sw $t0, -3568($fp)
	lw $t0, -3568($fp)
	lw $t1, -3560($fp)
	add $t0, $t0, $t1
	sw $t0, -3572($fp)
	lw $t0, -3572($fp)
	lw $t1, 0($t0)
	sw $t1, -3576($fp)
	li $t0, 0
	sw $t0, -3580($fp)
	lw $t0, -488($fp)
	sw $t0, -3584($fp)
	lw $t0, -500($fp)
	sw $t0, -3588($fp)
	lw $t0, -3584($fp)
	lw $t1, -3588($fp)
	sub $t0, $t0, $t1
	sw $t0, -3592($fp)
	lw $t1, -3592($fp)
	li $t2, 0
	bne $t1, $t2, label249
	j label248
label249:
	li $t0, 29253
	sw $t0, -3596($fp)
	lw $t1, -3596($fp)
	li $t2, 0
	bne $t1, $t2, label247
	j label248
label247:
	li $t0, 1
	sw $t0, -3580($fp)
label248:
	addi $sp, $sp, -4
	lw $t0, -3528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3580($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3600($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -3600($fp)
	sub $t0, $t0, $t1
	sw $t0, -3604($fp)
	lw $t0, -3508($fp)
	lw $t1, -3604($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3608($fp)
	li $t0, 0
	sw $t0, -3612($fp)
	li $t0, 24483
	sw $t0, -3616($fp)
	li $t0, 18372
	sw $t0, -3620($fp)
	li $t0, 18147
	sw $t0, -3624($fp)
	lw $t0, -3620($fp)
	lw $t1, -3624($fp)
	sub $t0, $t0, $t1
	sw $t0, -3628($fp)
	lw $t1, -3616($fp)
	lw $t2, -3628($fp)
	ble $t1, $t2, label250
	j label251
label250:
	li $t0, 1
	sw $t0, -3612($fp)
label251:
	lw $t1, -3608($fp)
	lw $t2, -3612($fp)
	bne $t1, $t2, label241
	j label242
label241:
	li $t0, 1
	sw $t0, -3488($fp)
label242:
	lw $ra, -4($fp)
	lw $v0, -3488($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 61904
	sw $t0, -3632($fp)
	li $t0, 43637
	sw $t0, -3636($fp)
	lw $t0, -3632($fp)
	lw $t1, -3636($fp)
	add $t0, $t0, $t1
	sw $t0, -3640($fp)
	lw $ra, -4($fp)
	lw $v0, -3640($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label252:
	li $t0, 6202
	sw $t0, -3644($fp)
	lw $t1, -3644($fp)
	li $t2, 0
	bne $t1, $t2, label253
	j label254
label253:
	li $t0, 0
	sw $t0, -3648($fp)
	addi $t0, $fp, -40
	sw $t0, -3652($fp)
	li $t0, 0
	sw $t0, -3656($fp)
	li $t0, 4
	lw $t1, -3656($fp)
	mul $t0, $t0, $t1
	sw $t0, -3660($fp)
	lw $t0, -3660($fp)
	lw $t1, -3652($fp)
	add $t0, $t0, $t1
	sw $t0, -3664($fp)
	lw $t0, -3664($fp)
	lw $t1, 0($t0)
	sw $t1, -3668($fp)
	addi $t0, $fp, -8
	sw $t0, -3672($fp)
	li $t0, 0
	sw $t0, -3676($fp)
	li $t0, 4
	lw $t1, -3676($fp)
	mul $t0, $t0, $t1
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	lw $t1, -3672($fp)
	add $t0, $t0, $t1
	sw $t0, -3684($fp)
	lw $t0, -3684($fp)
	lw $t1, 0($t0)
	sw $t1, -3688($fp)
	li $t0, 0
	sw $t0, -3692($fp)
	li $t0, 4104
	sw $t0, -3696($fp)
	li $t0, 0
	lw $t1, -3696($fp)
	sub $t0, $t0, $t1
	sw $t0, -3700($fp)
	lw $t0, -764($fp)
	sw $t0, -3704($fp)
	lw $t1, -3700($fp)
	lw $t2, -3704($fp)
	blt $t1, $t2, label258
	j label259
label258:
	li $t0, 1
	sw $t0, -3692($fp)
label259:
	li $t0, 0
	sw $t0, -3708($fp)
	lw $t0, -368($fp)
	sw $t0, -3712($fp)
	lw $t0, -632($fp)
	sw $t0, -3716($fp)
	lw $t1, -3712($fp)
	lw $t2, -3716($fp)
	bne $t1, $t2, label260
	j label261
label260:
	li $t0, 1
	sw $t0, -3708($fp)
label261:
	li $t0, 0
	sw $t0, -3720($fp)
	li $t0, 0
	sw $t0, -3724($fp)
	li $t0, 30633
	sw $t0, -3728($fp)
	lw $t0, -1496($fp)
	sw $t0, -3732($fp)
	lw $t1, -3728($fp)
	lw $t2, -3732($fp)
	bne $t1, $t2, label264
	j label265
label264:
	li $t0, 1
	sw $t0, -3724($fp)
label265:
	lw $t0, -1508($fp)
	sw $t0, -3736($fp)
	lw $t1, -3724($fp)
	lw $t2, -3736($fp)
	beq $t1, $t2, label262
	j label263
label262:
	li $t0, 1
	sw $t0, -3720($fp)
label263:
	addi $sp, $sp, -4
	lw $t0, -3688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3720($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3740($fp)
	addi $sp, $sp, 20
	lw $t0, -3668($fp)
	lw $t1, -3740($fp)
	mul $t0, $t0, $t1
	sw $t0, -3744($fp)
	li $t0, 0
	lw $t1, -3744($fp)
	sub $t0, $t0, $t1
	sw $t0, -3748($fp)
	li $t0, 0
	lw $t1, -3748($fp)
	sub $t0, $t0, $t1
	sw $t0, -3752($fp)
	lw $t1, -3752($fp)
	li $t2, 0
	bne $t1, $t2, label257
	j label256
label257:
	lw $t0, -416($fp)
	sw $t0, -3756($fp)
	lw $t0, -500($fp)
	sw $t0, -3760($fp)
	lw $t0, -392($fp)
	sw $t0, -3764($fp)
	lw $t0, -3760($fp)
	lw $t1, -3764($fp)
	sub $t0, $t0, $t1
	sw $t0, -3768($fp)
	lw $t0, -452($fp)
	sw $t0, -3772($fp)
	lw $t0, -3768($fp)
	lw $t1, -3772($fp)
	add $t0, $t0, $t1
	sw $t0, -3776($fp)
	addi $t0, $fp, -52
	sw $t0, -3780($fp)
	li $t0, 2
	sw $t0, -3784($fp)
	li $t0, 4
	lw $t1, -3784($fp)
	mul $t0, $t0, $t1
	sw $t0, -3788($fp)
	lw $t0, -3788($fp)
	lw $t1, -3780($fp)
	add $t0, $t0, $t1
	sw $t0, -3792($fp)
	lw $t0, -3792($fp)
	lw $t1, 0($t0)
	sw $t1, -3796($fp)
	li $t0, 0
	sw $t0, -3800($fp)
	lw $t0, -392($fp)
	sw $t0, -3804($fp)
	li $t0, 1862
	sw $t0, -3808($fp)
	lw $t0, -3804($fp)
	lw $t1, -3808($fp)
	mul $t0, $t0, $t1
	sw $t0, -3812($fp)
	lw $t1, -3812($fp)
	li $t2, 0
	bne $t1, $t2, label268
	j label267
label268:
	lw $t0, -656($fp)
	sw $t0, -3816($fp)
	lw $t1, -3816($fp)
	li $t2, 0
	bne $t1, $t2, label266
	j label267
label266:
	li $t0, 1
	sw $t0, -3800($fp)
label267:
	addi $sp, $sp, -4
	lw $t0, -3800($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3820($fp)
	addi $sp, $sp, 8
	lw $t0, -212($fp)
	sw $t0, -3824($fp)
	lw $t0, -3820($fp)
	lw $t1, -3824($fp)
	add $t0, $t0, $t1
	sw $t0, -3828($fp)
	li $t0, 24336
	sw $t0, -3832($fp)
	addi $sp, $sp, -4
	lw $t0, -3776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3832($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3836($fp)
	addi $sp, $sp, 20
	lw $t1, -3756($fp)
	lw $t2, -3836($fp)
	beq $t1, $t2, label255
	j label256
label255:
	li $t0, 1
	sw $t0, -3648($fp)
label256:
	j label252
label254:
label269:
	li $t0, 0
	sw $t0, -3840($fp)
	li $t0, 49125
	sw $t0, -3844($fp)
	lw $t1, -3844($fp)
	li $t2, 0
	bne $t1, $t2, label274
	j label273
label273:
	li $t0, 1
	sw $t0, -3840($fp)
label274:
	li $t0, 45620
	sw $t0, -3848($fp)
	lw $t0, -3840($fp)
	lw $t1, -3848($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3852($fp)
	lw $t0, 16($fp)
	sw $t0, -3856($fp)
	li $t0, 26190
	sw $t0, -3860($fp)
	lw $t0, -3856($fp)
	lw $t1, -3860($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3864($fp)
	li $t0, 0
	lw $t1, -3864($fp)
	sub $t0, $t0, $t1
	sw $t0, -3868($fp)
	lw $t0, -3852($fp)
	lw $t1, -3868($fp)
	mul $t0, $t0, $t1
	sw $t0, -3872($fp)
	lw $t1, -3872($fp)
	li $t2, 0
	bne $t1, $t2, label270
	j label272
label272:
	li $t0, 0
	sw $t0, -3876($fp)
	li $t0, 47238
	sw $t0, -3880($fp)
	li $t0, 0
	lw $t1, -3880($fp)
	sub $t0, $t0, $t1
	sw $t0, -3884($fp)
	lw $t0, -404($fp)
	sw $t0, -3888($fp)
	lw $t1, -3884($fp)
	lw $t2, -3888($fp)
	bge $t1, $t2, label275
	j label276
label275:
	li $t0, 1
	sw $t0, -3876($fp)
label276:
	addi $sp, $sp, -4
	lw $t0, -3876($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3892($fp)
	addi $sp, $sp, 8
	lw $t1, -3892($fp)
	li $t2, 0
	bne $t1, $t2, label270
	j label271
label270:
	li $t0, 10372
	sw $t0, -3896($fp)
	lw $t1, -3896($fp)
	li $t2, 0
	bne $t1, $t2, label277
	j label278
label277:
	li $t0, 0
	sw $t0, -3900($fp)
	addi $t0, $fp, -8
	sw $t0, -3904($fp)
	li $t0, 0
	sw $t0, -3908($fp)
	li $t0, 4
	lw $t1, -3908($fp)
	mul $t0, $t0, $t1
	sw $t0, -3912($fp)
	lw $t0, -3912($fp)
	lw $t1, -3904($fp)
	add $t0, $t0, $t1
	sw $t0, -3916($fp)
	lw $t0, -3916($fp)
	lw $t1, 0($t0)
	sw $t1, -3920($fp)
	lw $t1, -3920($fp)
	li $t2, 0
	bne $t1, $t2, label282
	j label281
label282:
	li $t0, 35655
	sw $t0, -3924($fp)
	li $t0, 4962
	sw $t0, -3928($fp)
	li $t0, 0
	lw $t1, -3928($fp)
	sub $t0, $t0, $t1
	sw $t0, -3932($fp)
	lw $t0, -3924($fp)
	lw $t1, -3932($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3936($fp)
	li $t0, 0
	lw $t1, -3936($fp)
	sub $t0, $t0, $t1
	sw $t0, -3940($fp)
	lw $t1, -3940($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label280
label280:
	li $t0, 1
	sw $t0, -3900($fp)
label281:
	lw $ra, -4($fp)
	lw $v0, -3900($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label279
label278:
	li $t0, 0
	sw $t0, -3944($fp)
	li $t0, 0
	sw $t0, -3948($fp)
	li $t0, 0
	sw $t0, -3952($fp)
	li $t0, 0
	sw $t0, -3956($fp)
	lw $t0, -752($fp)
	sw $t0, -3960($fp)
	lw $t0, -1196($fp)
	sw $t0, -3964($fp)
	lw $t1, -3960($fp)
	lw $t2, -3964($fp)
	bne $t1, $t2, label292
	j label293
label292:
	li $t0, 1
	sw $t0, -3956($fp)
label293:
	li $t0, 4870
	sw $t0, -3968($fp)
	lw $t1, -3956($fp)
	lw $t2, -3968($fp)
	beq $t1, $t2, label290
	j label291
label290:
	li $t0, 1
	sw $t0, -3952($fp)
label291:
	li $t0, 0
	sw $t0, -3972($fp)
	li $t0, 50442
	sw $t0, -3976($fp)
	lw $t0, -1520($fp)
	sw $t0, -3980($fp)
	lw $t1, -3976($fp)
	lw $t2, -3980($fp)
	bgt $t1, $t2, label294
	j label295
label294:
	li $t0, 1
	sw $t0, -3972($fp)
label295:
	lw $t1, -3952($fp)
	lw $t2, -3972($fp)
	beq $t1, $t2, label288
	j label289
label288:
	li $t0, 1
	sw $t0, -3948($fp)
label289:
	addi $t0, $fp, -168
	sw $t0, -3984($fp)
	lw $t0, -668($fp)
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
	lw $t0, -188($fp)
	sw $t0, -4004($fp)
	lw $t0, -4000($fp)
	lw $t1, -4004($fp)
	add $t0, $t0, $t1
	sw $t0, -4008($fp)
	lw $t1, -3948($fp)
	lw $t2, -4008($fp)
	bne $t1, $t2, label286
	j label287
label286:
	li $t0, 1
	sw $t0, -3944($fp)
label287:
	li $t0, 0
	sw $t0, -4012($fp)
	li $t0, 0
	sw $t0, -4016($fp)
	lw $t0, -416($fp)
	sw $t0, -4020($fp)
	lw $t0, -356($fp)
	sw $t0, -4024($fp)
	lw $t0, -4020($fp)
	lw $t1, -4024($fp)
	mul $t0, $t0, $t1
	sw $t0, -4028($fp)
	li $t0, 7329
	sw $t0, -4032($fp)
	lw $t1, -4028($fp)
	lw $t2, -4032($fp)
	bgt $t1, $t2, label298
	j label299
label298:
	li $t0, 1
	sw $t0, -4016($fp)
label299:
	lw $t0, -248($fp)
	sw $t0, -4036($fp)
	lw $t1, -4016($fp)
	lw $t2, -4036($fp)
	bgt $t1, $t2, label296
	j label297
label296:
	li $t0, 1
	sw $t0, -4012($fp)
label297:
	lw $t1, -3944($fp)
	lw $t2, -4012($fp)
	beq $t1, $t2, label283
	j label284
label283:
	addi $t0, $fp, -24
	sw $t0, -4040($fp)
	li $t0, 0
	sw $t0, -4044($fp)
	lw $t0, -668($fp)
	sw $t0, -4048($fp)
	lw $t1, -4048($fp)
	li $t2, 0
	bne $t1, $t2, label305
	j label304
label305:
	li $t0, 47181
	sw $t0, -4052($fp)
	lw $t1, -4052($fp)
	li $t2, 0
	bne $t1, $t2, label303
	j label304
label303:
	li $t0, 1
	sw $t0, -4044($fp)
label304:
	li $t0, 0
	sw $t0, -4056($fp)
	li $t0, 31813
	sw $t0, -4060($fp)
	lw $t1, -4060($fp)
	li $t2, 0
	bne $t1, $t2, label309
	j label308
label309:
	lw $t0, -440($fp)
	sw $t0, -4064($fp)
	lw $t1, -4064($fp)
	li $t2, 0
	bne $t1, $t2, label306
	j label308
label308:
	lw $t0, -188($fp)
	sw $t0, -4068($fp)
	lw $t1, -4068($fp)
	li $t2, 0
	bne $t1, $t2, label306
	j label307
label306:
	li $t0, 1
	sw $t0, -4056($fp)
label307:
	lw $t0, -452($fp)
	sw $t0, -4072($fp)
	lw $t0, -4072($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -4076($fp)
	addi $t0, $fp, -148
	sw $t0, -4080($fp)
	li $t0, 0
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
	addi $sp, $sp, -4
	lw $t0, -4096($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4100($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -4044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4100($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4104($fp)
	addi $sp, $sp, 20
	li $t0, 4
	lw $t1, -4104($fp)
	mul $t0, $t0, $t1
	sw $t0, -4108($fp)
	lw $t0, -4108($fp)
	lw $t1, -4040($fp)
	add $t0, $t0, $t1
	sw $t0, -4112($fp)
	lw $t0, -4112($fp)
	lw $t1, 0($t0)
	sw $t1, -4116($fp)
	addi $t0, $fp, -64
	sw $t0, -4120($fp)
	li $t0, 0
	sw $t0, -4124($fp)
	lw $t0, -1220($fp)
	sw $t0, -4128($fp)
	lw $t0, -644($fp)
	sw $t0, -4132($fp)
	lw $t1, -4128($fp)
	lw $t2, -4132($fp)
	bne $t1, $t2, label310
	j label311
label310:
	li $t0, 1
	sw $t0, -4124($fp)
label311:
	li $t0, 4
	lw $t1, -4124($fp)
	mul $t0, $t0, $t1
	sw $t0, -4136($fp)
	lw $t0, -4136($fp)
	lw $t1, -4120($fp)
	add $t0, $t0, $t1
	sw $t0, -4140($fp)
	lw $t0, -4140($fp)
	lw $t1, 0($t0)
	sw $t1, -4144($fp)
	lw $t0, -4116($fp)
	lw $t1, -4144($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4148($fp)
	lw $t1, -4148($fp)
	li $t2, 0
	bne $t1, $t2, label300
	j label301
label300:
	lw $t0, -644($fp)
	sw $t0, -4152($fp)
	lw $t0, -4152($fp)
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	sw $t0, -4156($fp)
	addi $sp, $sp, -4
	lw $t0, -4156($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4160($fp)
	addi $sp, $sp, 8
	lw $ra, -4($fp)
	lw $v0, -4160($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label302
label301:
	lw $t0, -1484($fp)
	sw $t0, -4164($fp)
	li $t0, 0
	sw $t0, -4168($fp)
	lw $t0, -596($fp)
	sw $t0, -4172($fp)
	li $t0, 50780
	sw $t0, -4176($fp)
	lw $t1, -4172($fp)
	lw $t2, -4176($fp)
	bne $t1, $t2, label315
	j label316
label315:
	li $t0, 1
	sw $t0, -4168($fp)
label316:
	li $t0, 0
	sw $t0, -4180($fp)
	lw $t0, -428($fp)
	sw $t0, -4184($fp)
	lw $t1, -4184($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label317
label317:
	li $t0, 1
	sw $t0, -4180($fp)
label318:
	lw $t0, -212($fp)
	sw $t0, -4188($fp)
	lw $t0, -4180($fp)
	lw $t1, -4188($fp)
	mul $t0, $t0, $t1
	sw $t0, -4192($fp)
	lw $t0, -428($fp)
	sw $t0, -4196($fp)
	lw $t0, -4196($fp)
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	sw $t0, -4200($fp)
	addi $sp, $sp, -4
	lw $t0, -4200($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4204($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -4164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4204($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4208($fp)
	addi $sp, $sp, 20
	lw $t1, -4208($fp)
	li $t2, 0
	bne $t1, $t2, label313
	j label312
label312:
	li $t0, 0
	sw $t0, -4212($fp)
	li $t0, 0
	sw $t0, -4216($fp)
	lw $t0, -212($fp)
	sw $t0, -4220($fp)
	lw $t1, -4220($fp)
	li $t2, 0
	bne $t1, $t2, label324
	j label323
label323:
	li $t0, 1
	sw $t0, -4216($fp)
label324:
	li $t0, 28181
	sw $t0, -4224($fp)
	lw $t0, -4216($fp)
	lw $t1, -4224($fp)
	mul $t0, $t0, $t1
	sw $t0, -4228($fp)
	li $t0, 56983
	sw $t0, -4232($fp)
	lw $t0, -4228($fp)
	lw $t1, -4232($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4236($fp)
	lw $t1, -4236($fp)
	li $t2, 0
	bne $t1, $t2, label322
	j label320
label322:
	addi $t0, $fp, -8
	sw $t0, -4240($fp)
	lw $t0, -1208($fp)
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
	lw $t1, -4256($fp)
	li $t2, 0
	bne $t1, $t2, label321
	j label320
label321:
	li $t0, 0
	sw $t0, -4260($fp)
	addi $t0, $fp, -168
	sw $t0, -4264($fp)
	li $t0, 2
	sw $t0, -4268($fp)
	li $t0, 4
	lw $t1, -4268($fp)
	mul $t0, $t0, $t1
	sw $t0, -4272($fp)
	lw $t0, -4272($fp)
	lw $t1, -4264($fp)
	add $t0, $t0, $t1
	sw $t0, -4276($fp)
	lw $t0, -4276($fp)
	lw $t1, 0($t0)
	sw $t1, -4280($fp)
	lw $t1, -4280($fp)
	li $t2, 0
	bne $t1, $t2, label326
	j label325
label325:
	li $t0, 1
	sw $t0, -4260($fp)
label326:
	li $t0, 0
	sw $t0, -4284($fp)
	li $t0, 22079
	sw $t0, -4288($fp)
	lw $t1, -4288($fp)
	li $t2, 0
	bne $t1, $t2, label328
	j label327
label327:
	li $t0, 1
	sw $t0, -4284($fp)
label328:
	lw $t0, -4260($fp)
	lw $t1, -4284($fp)
	mul $t0, $t0, $t1
	sw $t0, -4292($fp)
	lw $t1, -4292($fp)
	li $t2, 0
	bne $t1, $t2, label319
	j label320
label319:
	li $t0, 1
	sw $t0, -4212($fp)
label320:
	lw $ra, -4($fp)
	lw $v0, -4212($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label314
label313:
	li $t0, 24070
	sw $t0, -4296($fp)
	lw $t0, -4296($fp)
	sw $t0, -4300($fp)
	lw $t0, -4300($fp)
	sw $t0, -4304($fp)
	li $t0, 47458
	sw $t0, -4308($fp)
	lw $t0, -4308($fp)
	sw $t0, -4312($fp)
	lw $t0, -4312($fp)
	sw $t0, -4316($fp)
	li $t0, 0
	sw $t0, -4320($fp)
	li $t0, 15341
	sw $t0, -4324($fp)
	lw $t0, -1652($fp)
	sw $t0, -4328($fp)
	lw $t0, -4324($fp)
	lw $t1, -4328($fp)
	add $t0, $t0, $t1
	sw $t0, -4332($fp)
	lw $t0, -4300($fp)
	sw $t0, -4336($fp)
	lw $t1, -4332($fp)
	lw $t2, -4336($fp)
	bne $t1, $t2, label331
	j label330
label331:
	li $t0, 0
	sw $t0, -4340($fp)
	lw $t0, 8($fp)
	sw $t0, -4344($fp)
	li $t0, 56343
	sw $t0, -4348($fp)
	lw $t0, -4344($fp)
	lw $t1, -4348($fp)
	mul $t0, $t0, $t1
	sw $t0, -4352($fp)
	lw $t0, 12($fp)
	sw $t0, -4356($fp)
	lw $t1, -4352($fp)
	lw $t2, -4356($fp)
	bne $t1, $t2, label332
	j label333
label332:
	li $t0, 1
	sw $t0, -4340($fp)
label333:
	lw $t0, 4($fp)
	sw $t0, -4360($fp)
	li $t0, 63560
	sw $t0, -4364($fp)
	lw $t0, -4360($fp)
	lw $t1, -4364($fp)
	sub $t0, $t0, $t1
	sw $t0, -4368($fp)
	li $t0, 48406
	sw $t0, -4372($fp)
	lw $t0, -476($fp)
	sw $t0, -4376($fp)
	lw $t0, -4372($fp)
	lw $t1, -4376($fp)
	sub $t0, $t0, $t1
	sw $t0, -4380($fp)
	li $t0, 49320
	sw $t0, -4384($fp)
	lw $t0, -4380($fp)
	lw $t1, -4384($fp)
	sub $t0, $t0, $t1
	sw $t0, -4388($fp)
	li $t0, 0
	sw $t0, -4392($fp)
	lw $t0, -488($fp)
	sw $t0, -4396($fp)
	lw $t0, -4312($fp)
	sw $t0, -4400($fp)
	lw $t0, -4396($fp)
	lw $t1, -4400($fp)
	sub $t0, $t0, $t1
	sw $t0, -4404($fp)
	lw $t1, -4404($fp)
	li $t2, 0
	bne $t1, $t2, label334
	j label336
label336:
	lw $t0, -428($fp)
	sw $t0, -4408($fp)
	lw $t1, -4408($fp)
	li $t2, 0
	bne $t1, $t2, label334
	j label335
label334:
	li $t0, 1
	sw $t0, -4392($fp)
label335:
	addi $sp, $sp, -4
	lw $t0, -4340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4392($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4412($fp)
	addi $sp, $sp, 20
	lw $t1, -4412($fp)
	li $t2, 0
	bne $t1, $t2, label329
	j label330
label329:
	li $t0, 1
	sw $t0, -4320($fp)
label330:
	lw $t0, -4320($fp)
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -4416($fp)
	addi $t0, $fp, -8
	sw $t0, -4420($fp)
	li $t0, 0
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
label314:
label302:
	j label285
label284:
	lw $t0, 16($fp)
	sw $t0, -4440($fp)
	li $t0, 59099
	sw $t0, -4444($fp)
	lw $t0, -4440($fp)
	lw $t1, -4444($fp)
	sub $t0, $t0, $t1
	sw $t0, -4448($fp)
	lw $t1, -4448($fp)
	li $t2, 0
	bne $t1, $t2, label337
	j label338
label337:
	li $t0, 0
	sw $t0, -4452($fp)
	lw $t0, -668($fp)
	sw $t0, -4456($fp)
	addi $t0, $fp, -68
	sw $t0, -4460($fp)
	li $t0, 0
	sw $t0, -4464($fp)
	lw $t0, -1220($fp)
	sw $t0, -4468($fp)
	lw $t1, -4468($fp)
	li $t2, 0
	bne $t1, $t2, label344
	j label343
label344:
	li $t0, 25346
	sw $t0, -4472($fp)
	lw $t1, -4472($fp)
	li $t2, 0
	bne $t1, $t2, label342
	j label343
label342:
	li $t0, 1
	sw $t0, -4464($fp)
label343:
	li $t0, 4
	lw $t1, -4464($fp)
	mul $t0, $t0, $t1
	sw $t0, -4476($fp)
	lw $t0, -4476($fp)
	lw $t1, -4460($fp)
	add $t0, $t0, $t1
	sw $t0, -4480($fp)
	lw $t0, -4480($fp)
	lw $t1, 0($t0)
	sw $t1, -4484($fp)
	lw $t0, -4456($fp)
	lw $t1, -4484($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4488($fp)
	li $t0, 0
	lw $t1, -4488($fp)
	sub $t0, $t0, $t1
	sw $t0, -4492($fp)
	lw $t1, -4492($fp)
	li $t2, 0
	bne $t1, $t2, label341
	j label340
label340:
	li $t0, 1
	sw $t0, -4452($fp)
label341:
	lw $ra, -4($fp)
	lw $v0, -4452($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label339
label338:
	li $t0, 0
	sw $t0, -4496($fp)
	li $t0, 9146
	sw $t0, -4500($fp)
	li $t0, 34808
	sw $t0, -4504($fp)
	lw $t0, -4500($fp)
	lw $t1, -4504($fp)
	sub $t0, $t0, $t1
	sw $t0, -4508($fp)
	lw $t0, -176($fp)
	sw $t0, -4512($fp)
	lw $t1, -4508($fp)
	lw $t2, -4512($fp)
	bgt $t1, $t2, label348
	j label349
label348:
	li $t0, 1
	sw $t0, -4496($fp)
label349:
	addi $sp, $sp, -4
	lw $t0, -4496($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4516($fp)
	addi $sp, $sp, 8
	lw $t1, -4516($fp)
	li $t2, 0
	bne $t1, $t2, label345
	j label346
label345:
	li $t0, 0
	sw $t0, -4520($fp)
	li $t0, 0
	sw $t0, -4524($fp)
	li $t0, 0
	sw $t0, -4528($fp)
	li $t0, 52228
	sw $t0, -4532($fp)
	lw $t0, -860($fp)
	sw $t0, -4536($fp)
	lw $t0, -4532($fp)
	lw $t1, -4536($fp)
	mul $t0, $t0, $t1
	sw $t0, -4540($fp)
	lw $t0, -188($fp)
	sw $t0, -4544($fp)
	lw $t1, -4540($fp)
	lw $t2, -4544($fp)
	bge $t1, $t2, label357
	j label358
label357:
	li $t0, 1
	sw $t0, -4528($fp)
label358:
	li $t0, 0
	sw $t0, -4548($fp)
	li $t0, 44802
	sw $t0, -4552($fp)
	lw $t0, -464($fp)
	sw $t0, -4556($fp)
	lw $t1, -4552($fp)
	lw $t2, -4556($fp)
	bge $t1, $t2, label359
	j label360
label359:
	li $t0, 1
	sw $t0, -4548($fp)
label360:
	lw $t1, -4528($fp)
	lw $t2, -4548($fp)
	beq $t1, $t2, label355
	j label356
label355:
	li $t0, 1
	sw $t0, -4524($fp)
label356:
	addi $t0, $fp, -52
	sw $t0, -4560($fp)
	lw $t0, -860($fp)
	sw $t0, -4564($fp)
	li $t0, 4
	lw $t1, -4564($fp)
	mul $t0, $t0, $t1
	sw $t0, -4568($fp)
	lw $t0, -4568($fp)
	lw $t1, -4560($fp)
	add $t0, $t0, $t1
	sw $t0, -4572($fp)
	lw $t0, -4572($fp)
	lw $t1, 0($t0)
	sw $t1, -4576($fp)
	li $t0, 0
	lw $t1, -4576($fp)
	sub $t0, $t0, $t1
	sw $t0, -4580($fp)
	lw $t1, -4524($fp)
	lw $t2, -4580($fp)
	bne $t1, $t2, label353
	j label354
label353:
	li $t0, 1
	sw $t0, -4520($fp)
label354:
	lw $t0, 4($fp)
	sw $t0, -4584($fp)
	lw $t0, -668($fp)
	sw $t0, -4588($fp)
	lw $t0, -4584($fp)
	lw $t1, -4588($fp)
	mul $t0, $t0, $t1
	sw $t0, -4592($fp)
	lw $t0, -860($fp)
	sw $t0, -4596($fp)
	li $t0, 39770
	sw $t0, -4600($fp)
	lw $t0, -4596($fp)
	lw $t1, -4600($fp)
	mul $t0, $t0, $t1
	sw $t0, -4604($fp)
	lw $t0, -4592($fp)
	lw $t1, -4604($fp)
	add $t0, $t0, $t1
	sw $t0, -4608($fp)
	lw $t1, -4520($fp)
	lw $t2, -4608($fp)
	beq $t1, $t2, label350
	j label351
label350:
	addi $t0, $fp, -148
	sw $t0, -4612($fp)
	addi $t0, $fp, -148
	sw $t0, -4616($fp)
	lw $t0, -1220($fp)
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
	li $t0, 57098
	sw $t0, -4636($fp)
	lw $t0, -4632($fp)
	lw $t1, -4636($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4640($fp)
	li $t0, 4
	lw $t1, -4640($fp)
	mul $t0, $t0, $t1
	sw $t0, -4644($fp)
	lw $t0, -4644($fp)
	lw $t1, -4612($fp)
	add $t0, $t0, $t1
	sw $t0, -4648($fp)
	lw $t0, -4648($fp)
	lw $t1, 0($t0)
	sw $t1, -4652($fp)
	li $t0, 0
	sw $t0, -4656($fp)
	li $t0, 29708
	sw $t0, -4660($fp)
	li $t0, 0
	lw $t1, -4660($fp)
	sub $t0, $t0, $t1
	sw $t0, -4664($fp)
	lw $t1, -4664($fp)
	li $t2, 0
	bne $t1, $t2, label365
	j label364
label364:
	li $t0, 1
	sw $t0, -4656($fp)
label365:
	li $t0, 0
	lw $t1, -4656($fp)
	sub $t0, $t0, $t1
	sw $t0, -4668($fp)
	lw $t0, -4652($fp)
	lw $t1, -4668($fp)
	add $t0, $t0, $t1
	sw $t0, -4672($fp)
	lw $t1, -4672($fp)
	li $t2, 0
	bne $t1, $t2, label361
	j label362
label361:
	li $t0, 0
	sw $t0, -4676($fp)
	li $t0, 2016
	sw $t0, -4680($fp)
	lw $t0, -668($fp)
	sw $t0, -4684($fp)
	lw $t0, -4680($fp)
	lw $t1, -4684($fp)
	sub $t0, $t0, $t1
	sw $t0, -4688($fp)
	lw $t0, -1496($fp)
	sw $t0, -4692($fp)
	lw $t0, -4688($fp)
	lw $t1, -4692($fp)
	sub $t0, $t0, $t1
	sw $t0, -4696($fp)
	addi $t0, $fp, -148
	sw $t0, -4700($fp)
	lw $t0, -1472($fp)
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
	li $t0, 13377
	sw $t0, -4720($fp)
	li $t0, 0
	sw $t0, -4724($fp)
	li $t0, 47100
	sw $t0, -4728($fp)
	lw $t1, -4728($fp)
	li $t2, 0
	bne $t1, $t2, label371
	j label370
label371:
	li $t0, 20371
	sw $t0, -4732($fp)
	lw $t1, -4732($fp)
	li $t2, 0
	bne $t1, $t2, label368
	j label370
label370:
	li $t0, 62341
	sw $t0, -4736($fp)
	lw $t1, -4736($fp)
	li $t2, 0
	bne $t1, $t2, label368
	j label369
label368:
	li $t0, 1
	sw $t0, -4724($fp)
label369:
	addi $sp, $sp, -4
	lw $t0, -4696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4724($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4740($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -4744($fp)
	lw $t0, -356($fp)
	sw $t0, -4748($fp)
	lw $t1, -4748($fp)
	li $t2, 0
	bne $t1, $t2, label372
	j label373
label372:
	li $t0, 1
	sw $t0, -4744($fp)
label373:
	addi $sp, $sp, -4
	lw $t0, -4744($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4752($fp)
	addi $sp, $sp, 8
	lw $t0, -212($fp)
	sw $t0, -4756($fp)
	li $t0, 0
	lw $t1, -4756($fp)
	sub $t0, $t0, $t1
	sw $t0, -4760($fp)
	lw $t0, -4752($fp)
	lw $t1, -4760($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4764($fp)
	lw $t1, -4740($fp)
	lw $t2, -4764($fp)
	bge $t1, $t2, label366
	j label367
label366:
	li $t0, 1
	sw $t0, -4676($fp)
label367:
	j label363
label362:
	addi $t0, $fp, -36
	sw $t0, -4768($fp)
	li $t0, 1
	sw $t0, -4772($fp)
	li $t0, 4
	lw $t1, -4772($fp)
	mul $t0, $t0, $t1
	sw $t0, -4776($fp)
	lw $t0, -4776($fp)
	lw $t1, -4768($fp)
	add $t0, $t0, $t1
	sw $t0, -4780($fp)
	lw $t0, -4780($fp)
	lw $t1, 0($t0)
	sw $t1, -4784($fp)
	addi $sp, $sp, -4
	lw $t0, -4784($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4788($fp)
	addi $sp, $sp, 8
label363:
	j label352
label351:
	li $t0, 0
	sw $t0, -4792($fp)
	li $t0, 27299
	sw $t0, -4796($fp)
	lw $t0, -4796($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -4800($fp)
	addi $sp, $sp, -4
	lw $t0, -4800($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4804($fp)
	addi $sp, $sp, 8
	lw $t1, -4804($fp)
	li $t2, 0
	bne $t1, $t2, label376
	j label375
label376:
	li $t0, 39031
	sw $t0, -4808($fp)
	li $t0, 61524
	sw $t0, -4812($fp)
	lw $t0, -4808($fp)
	lw $t1, -4812($fp)
	sub $t0, $t0, $t1
	sw $t0, -4816($fp)
	lw $t1, -4816($fp)
	li $t2, 0
	bne $t1, $t2, label374
	j label375
label374:
	li $t0, 1
	sw $t0, -4792($fp)
label375:
	lw $t0, -4792($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -4820($fp)
label352:
	j label347
label346:
	lw $t0, -908($fp)
	sw $t0, -4824($fp)
	lw $t0, -920($fp)
	sw $t0, -4828($fp)
	lw $t0, -4824($fp)
	lw $t1, -4828($fp)
	mul $t0, $t0, $t1
	sw $t0, -4832($fp)
	li $t0, 0
	sw $t0, -4836($fp)
	lw $t0, -428($fp)
	sw $t0, -4840($fp)
	li $t0, 0
	lw $t1, -4840($fp)
	sub $t0, $t0, $t1
	sw $t0, -4844($fp)
	lw $t1, -4844($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label378
label379:
	li $t0, 8940
	sw $t0, -4848($fp)
	lw $t1, -4848($fp)
	li $t2, 0
	bne $t1, $t2, label377
	j label378
label377:
	li $t0, 1
	sw $t0, -4836($fp)
label378:
	lw $t0, -200($fp)
	sw $t0, -4852($fp)
	addi $t0, $fp, -36
	sw $t0, -4856($fp)
	lw $t0, -416($fp)
	sw $t0, -4860($fp)
	li $t0, 4
	lw $t1, -4860($fp)
	mul $t0, $t0, $t1
	sw $t0, -4864($fp)
	lw $t0, -4864($fp)
	lw $t1, -4856($fp)
	add $t0, $t0, $t1
	sw $t0, -4868($fp)
	lw $t0, -4868($fp)
	lw $t1, 0($t0)
	sw $t1, -4872($fp)
	li $t0, 38636
	sw $t0, -4876($fp)
	lw $t0, -4872($fp)
	lw $t1, -4876($fp)
	sub $t0, $t0, $t1
	sw $t0, -4880($fp)
	li $t0, 0
	sw $t0, -4884($fp)
	li $t0, 0
	sw $t0, -4888($fp)
	li $t0, 10916
	sw $t0, -4892($fp)
	lw $t0, -212($fp)
	sw $t0, -4896($fp)
	lw $t1, -4892($fp)
	lw $t2, -4896($fp)
	beq $t1, $t2, label382
	j label383
label382:
	li $t0, 1
	sw $t0, -4888($fp)
label383:
	li $t0, 2929
	sw $t0, -4900($fp)
	lw $t1, -4888($fp)
	lw $t2, -4900($fp)
	bne $t1, $t2, label380
	j label381
label380:
	li $t0, 1
	sw $t0, -4884($fp)
label381:
	li $t0, 0
	sw $t0, -4904($fp)
	lw $t0, -452($fp)
	sw $t0, -4908($fp)
	lw $t0, -1496($fp)
	sw $t0, -4912($fp)
	lw $t0, -4908($fp)
	lw $t1, -4912($fp)
	add $t0, $t0, $t1
	sw $t0, -4916($fp)
	lw $t1, -4916($fp)
	li $t2, 0
	bne $t1, $t2, label384
	j label386
label386:
	li $t0, 54852
	sw $t0, -4920($fp)
	lw $t1, -4920($fp)
	li $t2, 0
	bne $t1, $t2, label384
	j label385
label384:
	li $t0, 1
	sw $t0, -4904($fp)
label385:
	addi $sp, $sp, -4
	lw $t0, -4852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4904($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4924($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -4924($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4928($fp)
	addi $sp, $sp, 8
	li $t0, 20058
	sw $t0, -4932($fp)
	lw $t0, -4932($fp)
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -4936($fp)
	li $t0, 0
	sw $t0, -4940($fp)
	lw $t0, -752($fp)
	sw $t0, -4944($fp)
	li $t0, 0
	lw $t1, -4944($fp)
	sub $t0, $t0, $t1
	sw $t0, -4948($fp)
	lw $t0, -1172($fp)
	sw $t0, -4952($fp)
	lw $t1, -4948($fp)
	lw $t2, -4952($fp)
	beq $t1, $t2, label387
	j label388
label387:
	li $t0, 1
	sw $t0, -4940($fp)
label388:
	addi $sp, $sp, -4
	lw $t0, -4836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4940($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4956($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -4960($fp)
	li $t0, 7394
	sw $t0, -4964($fp)
	lw $t1, -4964($fp)
	li $t2, 0
	bne $t1, $t2, label390
	j label389
label389:
	li $t0, 1
	sw $t0, -4960($fp)
label390:
	li $t0, 61111
	sw $t0, -4968($fp)
	lw $t0, -4960($fp)
	lw $t1, -4968($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4972($fp)
	lw $t0, -1172($fp)
	sw $t0, -4976($fp)
	addi $sp, $sp, -4
	lw $t0, -4832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4976($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4980($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -108
	sw $t0, -4984($fp)
	lw $t0, -752($fp)
	sw $t0, -4988($fp)
	li $t0, 0
	lw $t1, -4988($fp)
	sub $t0, $t0, $t1
	sw $t0, -4992($fp)
	li $t0, 4
	lw $t1, -4992($fp)
	mul $t0, $t0, $t1
	sw $t0, -4996($fp)
	lw $t0, -4996($fp)
	lw $t1, -4984($fp)
	add $t0, $t0, $t1
	sw $t0, -5000($fp)
	lw $t0, -5000($fp)
	lw $t1, 0($t0)
	sw $t1, -5004($fp)
	lw $t0, -4980($fp)
	lw $t1, -5004($fp)
	add $t0, $t0, $t1
	sw $t0, -5008($fp)
label347:
label339:
label285:
label279:
	j label269
label271:
	lw $t0, -176($fp)
	sw $t0, -5012($fp)
	lw $t0, -5012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -188($fp)
	sw $t0, -5016($fp)
	lw $t0, -5016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -200($fp)
	sw $t0, -5020($fp)
	lw $t0, -5020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -212($fp)
	sw $t0, -5024($fp)
	lw $t0, -5024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -5028($fp)
	li $t0, 0
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
	lw $t0, -5044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -248($fp)
	sw $t0, -5048($fp)
	lw $t0, -5048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -5052($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -5072($fp)
	li $t0, 1
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
	lw $t0, -5088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -5092($fp)
	li $t0, 2
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
	lw $t0, -5108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -5112($fp)
	li $t0, 3
	sw $t0, -5116($fp)
	li $t0, 4
	lw $t1, -5116($fp)
	mul $t0, $t0, $t1
	sw $t0, -5120($fp)
	lw $t0, -5120($fp)
	lw $t1, -5112($fp)
	add $t0, $t0, $t1
	sw $t0, -5124($fp)
	lw $t0, -5124($fp)
	lw $t1, 0($t0)
	sw $t1, -5128($fp)
	lw $t0, -5128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -356($fp)
	sw $t0, -5132($fp)
	lw $t0, -5132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -368($fp)
	sw $t0, -5136($fp)
	lw $t0, -5136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -380($fp)
	sw $t0, -5140($fp)
	lw $t0, -5140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -392($fp)
	sw $t0, -5144($fp)
	lw $t0, -5144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -404($fp)
	sw $t0, -5148($fp)
	lw $t0, -5148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -416($fp)
	sw $t0, -5152($fp)
	lw $t0, -5152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -428($fp)
	sw $t0, -5156($fp)
	lw $t0, -5156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -440($fp)
	sw $t0, -5160($fp)
	lw $t0, -5160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -452($fp)
	sw $t0, -5164($fp)
	lw $t0, -5164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -464($fp)
	sw $t0, -5168($fp)
	lw $t0, -5168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -476($fp)
	sw $t0, -5172($fp)
	lw $t0, -5172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -488($fp)
	sw $t0, -5176($fp)
	lw $t0, -5176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -500($fp)
	sw $t0, -5180($fp)
	lw $t0, -5180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -5184($fp)
	li $t0, 0
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
	lw $t0, -5200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -5204($fp)
	li $t0, 1
	sw $t0, -5208($fp)
	li $t0, 4
	lw $t1, -5208($fp)
	mul $t0, $t0, $t1
	sw $t0, -5212($fp)
	lw $t0, -5212($fp)
	lw $t1, -5204($fp)
	add $t0, $t0, $t1
	sw $t0, -5216($fp)
	lw $t0, -5216($fp)
	lw $t1, 0($t0)
	sw $t1, -5220($fp)
	lw $t0, -5220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -5224($fp)
	li $t0, 2
	sw $t0, -5228($fp)
	li $t0, 4
	lw $t1, -5228($fp)
	mul $t0, $t0, $t1
	sw $t0, -5232($fp)
	lw $t0, -5232($fp)
	lw $t1, -5224($fp)
	add $t0, $t0, $t1
	sw $t0, -5236($fp)
	lw $t0, -5236($fp)
	lw $t1, 0($t0)
	sw $t1, -5240($fp)
	lw $t0, -5240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -584($fp)
	sw $t0, -5244($fp)
	lw $t0, -5244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -596($fp)
	sw $t0, -5248($fp)
	lw $t0, -5248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -5252($fp)
	li $t0, 0
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
	lw $t0, -5268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -632($fp)
	sw $t0, -5272($fp)
	lw $t0, -5272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -644($fp)
	sw $t0, -5276($fp)
	lw $t0, -5276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -656($fp)
	sw $t0, -5280($fp)
	lw $t0, -5280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -668($fp)
	sw $t0, -5284($fp)
	lw $t0, -5284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -5288($fp)
	li $t0, 0
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
	addi $t0, $fp, -52
	sw $t0, -5308($fp)
	li $t0, 1
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
	addi $t0, $fp, -52
	sw $t0, -5328($fp)
	li $t0, 2
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
	lw $t0, -752($fp)
	sw $t0, -5348($fp)
	lw $t0, -5348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -764($fp)
	sw $t0, -5352($fp)
	lw $t0, -5352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -5356($fp)
	li $t0, 0
	sw $t0, -5360($fp)
	li $t0, 4
	lw $t1, -5360($fp)
	mul $t0, $t0, $t1
	sw $t0, -5364($fp)
	lw $t0, -5364($fp)
	lw $t1, -5356($fp)
	add $t0, $t0, $t1
	sw $t0, -5368($fp)
	lw $t0, -5368($fp)
	lw $t1, 0($t0)
	sw $t1, -5372($fp)
	lw $t0, -5372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -5376($fp)
	li $t0, 1
	sw $t0, -5380($fp)
	li $t0, 4
	lw $t1, -5380($fp)
	mul $t0, $t0, $t1
	sw $t0, -5384($fp)
	lw $t0, -5384($fp)
	lw $t1, -5376($fp)
	add $t0, $t0, $t1
	sw $t0, -5388($fp)
	lw $t0, -5388($fp)
	lw $t1, 0($t0)
	sw $t1, -5392($fp)
	lw $t0, -5392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -5396($fp)
	li $t0, 2
	sw $t0, -5400($fp)
	li $t0, 4
	lw $t1, -5400($fp)
	mul $t0, $t0, $t1
	sw $t0, -5404($fp)
	lw $t0, -5404($fp)
	lw $t1, -5396($fp)
	add $t0, $t0, $t1
	sw $t0, -5408($fp)
	lw $t0, -5408($fp)
	lw $t1, 0($t0)
	sw $t1, -5412($fp)
	lw $t0, -5412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -848($fp)
	sw $t0, -5416($fp)
	lw $t0, -5416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -860($fp)
	sw $t0, -5420($fp)
	lw $t0, -5420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -5424($fp)
	li $t0, 0
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
	lw $t0, -5440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -896($fp)
	sw $t0, -5444($fp)
	lw $t0, -5444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -908($fp)
	sw $t0, -5448($fp)
	lw $t0, -5448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -920($fp)
	sw $t0, -5452($fp)
	lw $t0, -5452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -5456($fp)
	li $t0, 0
	sw $t0, -5460($fp)
	li $t0, 4
	lw $t1, -5460($fp)
	mul $t0, $t0, $t1
	sw $t0, -5464($fp)
	lw $t0, -5464($fp)
	lw $t1, -5456($fp)
	add $t0, $t0, $t1
	sw $t0, -5468($fp)
	lw $t0, -5468($fp)
	lw $t1, 0($t0)
	sw $t1, -5472($fp)
	lw $t0, -5472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -5476($fp)
	li $t0, 1
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
	addi $t0, $fp, -108
	sw $t0, -5496($fp)
	li $t0, 2
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
	addi $t0, $fp, -108
	sw $t0, -5516($fp)
	li $t0, 3
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
	addi $t0, $fp, -108
	sw $t0, -5536($fp)
	li $t0, 4
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
	addi $t0, $fp, -108
	sw $t0, -5556($fp)
	li $t0, 5
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
	addi $t0, $fp, -108
	sw $t0, -5576($fp)
	li $t0, 6
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
	addi $t0, $fp, -108
	sw $t0, -5596($fp)
	li $t0, 7
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
	addi $t0, $fp, -108
	sw $t0, -5616($fp)
	li $t0, 8
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
	addi $t0, $fp, -108
	sw $t0, -5636($fp)
	li $t0, 9
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
	lw $t0, -1172($fp)
	sw $t0, -5656($fp)
	lw $t0, -5656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1184($fp)
	sw $t0, -5660($fp)
	lw $t0, -5660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1196($fp)
	sw $t0, -5664($fp)
	lw $t0, -5664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1208($fp)
	sw $t0, -5668($fp)
	lw $t0, -5668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1220($fp)
	sw $t0, -5672($fp)
	lw $t0, -5672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -5676($fp)
	li $t0, 0
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
	addi $t0, $fp, -148
	sw $t0, -5696($fp)
	li $t0, 1
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
	addi $t0, $fp, -148
	sw $t0, -5716($fp)
	li $t0, 2
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
	addi $t0, $fp, -148
	sw $t0, -5736($fp)
	li $t0, 3
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
	lw $t0, -5752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -5756($fp)
	li $t0, 4
	sw $t0, -5760($fp)
	li $t0, 4
	lw $t1, -5760($fp)
	mul $t0, $t0, $t1
	sw $t0, -5764($fp)
	lw $t0, -5764($fp)
	lw $t1, -5756($fp)
	add $t0, $t0, $t1
	sw $t0, -5768($fp)
	lw $t0, -5768($fp)
	lw $t1, 0($t0)
	sw $t1, -5772($fp)
	lw $t0, -5772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -5776($fp)
	li $t0, 5
	sw $t0, -5780($fp)
	li $t0, 4
	lw $t1, -5780($fp)
	mul $t0, $t0, $t1
	sw $t0, -5784($fp)
	lw $t0, -5784($fp)
	lw $t1, -5776($fp)
	add $t0, $t0, $t1
	sw $t0, -5788($fp)
	lw $t0, -5788($fp)
	lw $t1, 0($t0)
	sw $t1, -5792($fp)
	lw $t0, -5792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -5796($fp)
	li $t0, 6
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
	lw $t0, -5812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -5816($fp)
	li $t0, 7
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
	addi $t0, $fp, -148
	sw $t0, -5836($fp)
	li $t0, 8
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
	addi $t0, $fp, -148
	sw $t0, -5856($fp)
	li $t0, 9
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
	lw $t0, -1472($fp)
	sw $t0, -5876($fp)
	lw $t0, -5876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1484($fp)
	sw $t0, -5880($fp)
	lw $t0, -5880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1496($fp)
	sw $t0, -5884($fp)
	lw $t0, -5884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1508($fp)
	sw $t0, -5888($fp)
	lw $t0, -5888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1520($fp)
	sw $t0, -5892($fp)
	lw $t0, -5892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -5896($fp)
	li $t0, 0
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
	addi $t0, $fp, -168
	sw $t0, -5916($fp)
	li $t0, 1
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
	addi $t0, $fp, -168
	sw $t0, -5936($fp)
	li $t0, 2
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
	addi $t0, $fp, -168
	sw $t0, -5956($fp)
	li $t0, 3
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
	addi $t0, $fp, -168
	sw $t0, -5976($fp)
	li $t0, 4
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
	lw $t0, -1652($fp)
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
	lw $t0, -860($fp)
	sw $t0, -6008($fp)
	lw $t1, -6008($fp)
	li $t2, 0
	bne $t1, $t2, label394
	j label393
label393:
	li $t0, 1
	sw $t0, -6004($fp)
label394:
	lw $t0, -1172($fp)
	sw $t0, -6012($fp)
	lw $t0, -6004($fp)
	lw $t1, -6012($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6016($fp)
	li $t0, 0
	sw $t0, -6020($fp)
	li $t0, 0
	sw $t0, -6024($fp)
	addi $t0, $fp, -52
	sw $t0, -6028($fp)
	li $t0, 2
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
	li $t0, 52584
	sw $t0, -6048($fp)
	lw $t1, -6044($fp)
	lw $t2, -6048($fp)
	bge $t1, $t2, label397
	j label398
label397:
	li $t0, 1
	sw $t0, -6024($fp)
label398:
	lw $t0, -476($fp)
	sw $t0, -6052($fp)
	lw $t1, -6024($fp)
	lw $t2, -6052($fp)
	blt $t1, $t2, label395
	j label396
label395:
	li $t0, 1
	sw $t0, -6020($fp)
label396:
	lw $t1, -6016($fp)
	lw $t2, -6020($fp)
	beq $t1, $t2, label391
	j label392
label391:
	li $t0, 1
	sw $t0, -6000($fp)
label392:
	lw $ra, -4($fp)
	lw $v0, -6000($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -504
	li $t0, 58047
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
	li $t0, 65109
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
	li $t0, 12395
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
	li $t0, 1657
	sw $t0, -104($fp)
	addi $t0, $fp, -28
	sw $t0, -108($fp)
	li $t0, 3
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -116($fp)
	lw $t0, -108($fp)
	lw $t1, -116($fp)
	add $t0, $t0, $t1
	sw $t0, -120($fp)
	lw $t0, -104($fp)
	lw $t1, -120($fp)
	sw $t0, 0($t1)
	lw $t0, -120($fp)
	lw $t1, 0($t0)
	sw $t1, -124($fp)
	li $t0, 34381
	sw $t0, -128($fp)
	addi $t0, $fp, -28
	sw $t0, -132($fp)
	li $t0, 4
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -140($fp)
	lw $t0, -132($fp)
	lw $t1, -140($fp)
	add $t0, $t0, $t1
	sw $t0, -144($fp)
	lw $t0, -128($fp)
	lw $t1, -144($fp)
	sw $t0, 0($t1)
	lw $t0, -144($fp)
	lw $t1, 0($t0)
	sw $t1, -148($fp)
	li $t0, 64623
	sw $t0, -152($fp)
	addi $t0, $fp, -28
	sw $t0, -156($fp)
	li $t0, 5
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
label399:
	li $t0, 46459
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -180($fp)
	addi $sp, $sp, -4
	lw $t0, -180($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -184($fp)
	addi $sp, $sp, 8
	li $t0, 8615
	sw $t0, -188($fp)
	lw $t0, -184($fp)
	lw $t1, -188($fp)
	mul $t0, $t0, $t1
	sw $t0, -192($fp)
	li $t0, 56185
	sw $t0, -196($fp)
	li $t0, 10632
	sw $t0, -200($fp)
	lw $t0, -196($fp)
	lw $t1, -200($fp)
	mul $t0, $t0, $t1
	sw $t0, -204($fp)
	lw $t0, -192($fp)
	lw $t1, -204($fp)
	sub $t0, $t0, $t1
	sw $t0, -208($fp)
	li $t0, 55022
	sw $t0, -212($fp)
	li $t0, 0
	lw $t1, -212($fp)
	sub $t0, $t0, $t1
	sw $t0, -216($fp)
	li $t0, 45114
	sw $t0, -220($fp)
	lw $t0, -216($fp)
	lw $t1, -220($fp)
	sub $t0, $t0, $t1
	sw $t0, -224($fp)
	li $t0, 0
	sw $t0, -228($fp)
	li $t0, 13037
	sw $t0, -232($fp)
	lw $t1, -232($fp)
	li $t2, 0
	bne $t1, $t2, label404
	j label403
label403:
	li $t0, 1
	sw $t0, -228($fp)
label404:
	li $t0, 0
	sw $t0, -236($fp)
	li $t0, 7437
	sw $t0, -240($fp)
	lw $t1, -240($fp)
	li $t2, 0
	bne $t1, $t2, label408
	j label406
label408:
	lw $t0, 8($fp)
	sw $t0, -244($fp)
	lw $t1, -244($fp)
	li $t2, 0
	bne $t1, $t2, label407
	j label406
label407:
	li $t0, 3556
	sw $t0, -248($fp)
	lw $t1, -248($fp)
	li $t2, 0
	bne $t1, $t2, label405
	j label406
label405:
	li $t0, 1
	sw $t0, -236($fp)
label406:
	addi $t0, $fp, -28
	sw $t0, -252($fp)
	li $t0, 3
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
	li $t0, 0
	lw $t1, -268($fp)
	sub $t0, $t0, $t1
	sw $t0, -272($fp)
	addi $sp, $sp, -4
	lw $t0, -224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -272($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -276($fp)
	addi $sp, $sp, 20
	lw $t0, -208($fp)
	lw $t1, -276($fp)
	sub $t0, $t0, $t1
	sw $t0, -280($fp)
	lw $t1, -280($fp)
	li $t2, 0
	bne $t1, $t2, label400
	j label402
label402:
	li $t0, 0
	sw $t0, -284($fp)
	li $t0, 47731
	sw $t0, -288($fp)
	lw $t1, -288($fp)
	li $t2, 0
	bne $t1, $t2, label411
	j label410
label411:
	lw $t0, 8($fp)
	sw $t0, -292($fp)
	lw $t1, -292($fp)
	li $t2, 0
	bne $t1, $t2, label409
	j label410
label409:
	li $t0, 1
	sw $t0, -284($fp)
label410:
	li $t0, 0
	sw $t0, -296($fp)
	li $t0, 0
	sw $t0, -300($fp)
	li $t0, 28517
	sw $t0, -304($fp)
	li $t0, 41102
	sw $t0, -308($fp)
	lw $t1, -304($fp)
	lw $t2, -308($fp)
	blt $t1, $t2, label414
	j label415
label414:
	li $t0, 1
	sw $t0, -300($fp)
label415:
	lw $t0, 4($fp)
	sw $t0, -312($fp)
	lw $t1, -300($fp)
	lw $t2, -312($fp)
	ble $t1, $t2, label412
	j label413
label412:
	li $t0, 1
	sw $t0, -296($fp)
label413:
	li $t0, 0
	sw $t0, -316($fp)
	li $t0, 0
	sw $t0, -320($fp)
	lw $t0, 4($fp)
	sw $t0, -324($fp)
	lw $t1, -324($fp)
	li $t2, 0
	bne $t1, $t2, label419
	j label418
label418:
	li $t0, 1
	sw $t0, -320($fp)
label419:
	lw $t0, 8($fp)
	sw $t0, -328($fp)
	lw $t1, -320($fp)
	lw $t2, -328($fp)
	bge $t1, $t2, label416
	j label417
label416:
	li $t0, 1
	sw $t0, -316($fp)
label417:
	lw $t0, 4($fp)
	sw $t0, -332($fp)
	li $t0, 0
	lw $t1, -332($fp)
	sub $t0, $t0, $t1
	sw $t0, -336($fp)
	li $t0, 40336
	sw $t0, -340($fp)
	lw $t0, -336($fp)
	lw $t1, -340($fp)
	add $t0, $t0, $t1
	sw $t0, -344($fp)
	addi $sp, $sp, -4
	lw $t0, -284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -344($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -348($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -348($fp)
	sub $t0, $t0, $t1
	sw $t0, -352($fp)
	li $t0, 24092
	sw $t0, -356($fp)
	lw $t1, -352($fp)
	lw $t2, -356($fp)
	bgt $t1, $t2, label400
	j label401
label400:
	li $t0, 61161
	sw $t0, -360($fp)
	li $t0, 0
	sw $t0, -364($fp)
	li $t0, 37047
	sw $t0, -368($fp)
	li $t0, 35009
	sw $t0, -372($fp)
	lw $t1, -368($fp)
	lw $t2, -372($fp)
	bgt $t1, $t2, label422
	j label421
label422:
	lw $t0, 12($fp)
	sw $t0, -376($fp)
	lw $t1, -376($fp)
	li $t2, 0
	bne $t1, $t2, label420
	j label421
label420:
	li $t0, 1
	sw $t0, -364($fp)
label421:
	addi $sp, $sp, -4
	lw $t0, -364($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -380($fp)
	addi $sp, $sp, 8
	lw $t0, -360($fp)
	lw $t1, -380($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -384($fp)
	j label399
label401:
	addi $t0, $fp, -28
	sw $t0, -388($fp)
	li $t0, 0
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
	addi $t0, $fp, -28
	sw $t0, -408($fp)
	li $t0, 1
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
	lw $t0, -424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -428($fp)
	li $t0, 2
	sw $t0, -432($fp)
	li $t0, 4
	lw $t1, -432($fp)
	mul $t0, $t0, $t1
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	lw $t1, -428($fp)
	add $t0, $t0, $t1
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	lw $t1, 0($t0)
	sw $t1, -444($fp)
	lw $t0, -444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -448($fp)
	li $t0, 3
	sw $t0, -452($fp)
	li $t0, 4
	lw $t1, -452($fp)
	mul $t0, $t0, $t1
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	lw $t1, -448($fp)
	add $t0, $t0, $t1
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	lw $t1, 0($t0)
	sw $t1, -464($fp)
	lw $t0, -464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -468($fp)
	li $t0, 4
	sw $t0, -472($fp)
	li $t0, 4
	lw $t1, -472($fp)
	mul $t0, $t0, $t1
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	lw $t1, -468($fp)
	add $t0, $t0, $t1
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	lw $t1, 0($t0)
	sw $t1, -484($fp)
	lw $t0, -484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -488($fp)
	li $t0, 5
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
	lw $t0, -504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 64090
	sw $t0, -508($fp)
	lw $ra, -4($fp)
	lw $v0, -508($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -484
	li $t0, 10148
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
	li $t0, 43949
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
	li $t0, 57826
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
	addi $t0, $fp, -16
	sw $t0, -92($fp)
	li $t0, 0
	sw $t0, -96($fp)
	li $t0, 4
	lw $t1, -96($fp)
	mul $t0, $t0, $t1
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	lw $t1, -92($fp)
	add $t0, $t0, $t1
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	lw $t1, 0($t0)
	sw $t1, -108($fp)
	lw $t0, -108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -112($fp)
	li $t0, 1
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
	addi $t0, $fp, -16
	sw $t0, -132($fp)
	li $t0, 2
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
	li $t0, 0
	sw $t0, -152($fp)
	addi $t0, $fp, -16
	sw $t0, -156($fp)
	li $t0, 0
	sw $t0, -160($fp)
	li $t0, 4
	lw $t1, -160($fp)
	mul $t0, $t0, $t1
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	lw $t1, -156($fp)
	add $t0, $t0, $t1
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	lw $t1, 0($t0)
	sw $t1, -172($fp)
	li $t0, 0
	sw $t0, -176($fp)
	li $t0, 50337
	sw $t0, -180($fp)
	lw $t1, -180($fp)
	li $t2, 0
	bne $t1, $t2, label426
	j label425
label425:
	li $t0, 1
	sw $t0, -176($fp)
label426:
	li $t0, 15731
	sw $t0, -184($fp)
	lw $t0, -176($fp)
	lw $t1, -184($fp)
	mul $t0, $t0, $t1
	sw $t0, -188($fp)
	lw $t0, -172($fp)
	lw $t1, -188($fp)
	sub $t0, $t0, $t1
	sw $t0, -192($fp)
	li $t0, 0
	sw $t0, -196($fp)
	addi $t0, $fp, -16
	sw $t0, -200($fp)
	li $t0, 0
	sw $t0, -204($fp)
	li $t0, 4
	lw $t1, -204($fp)
	mul $t0, $t0, $t1
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	lw $t1, -200($fp)
	add $t0, $t0, $t1
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	lw $t1, 0($t0)
	sw $t1, -216($fp)
	li $t0, 50112
	sw $t0, -220($fp)
	lw $t1, -216($fp)
	lw $t2, -220($fp)
	ble $t1, $t2, label427
	j label428
label427:
	li $t0, 1
	sw $t0, -196($fp)
label428:
	addi $sp, $sp, -4
	lw $t0, -196($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -224($fp)
	addi $sp, $sp, 8
	lw $t1, -192($fp)
	lw $t2, -224($fp)
	ble $t1, $t2, label423
	j label424
label423:
	li $t0, 1
	sw $t0, -152($fp)
label424:
	lw $ra, -4($fp)
	lw $v0, -152($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -228($fp)
	li $t0, 0
	sw $t0, -232($fp)
	li $t0, 42480
	sw $t0, -236($fp)
	li $t0, 0
	lw $t1, -236($fp)
	sub $t0, $t0, $t1
	sw $t0, -240($fp)
	lw $t1, -240($fp)
	li $t2, 0
	bne $t1, $t2, label433
	j label432
label432:
	li $t0, 1
	sw $t0, -232($fp)
label433:
	li $t0, 0
	lw $t1, -232($fp)
	sub $t0, $t0, $t1
	sw $t0, -244($fp)
	li $t0, 0
	sw $t0, -248($fp)
	lw $t0, 8($fp)
	sw $t0, -252($fp)
	lw $t1, -252($fp)
	li $t2, 0
	bne $t1, $t2, label435
	j label434
label434:
	li $t0, 1
	sw $t0, -248($fp)
label435:
	li $t0, 32918
	sw $t0, -256($fp)
	lw $t0, -248($fp)
	lw $t1, -256($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -260($fp)
	lw $t1, -244($fp)
	lw $t2, -260($fp)
	bge $t1, $t2, label431
	j label430
label431:
	li $t0, 58727
	sw $t0, -264($fp)
	lw $t1, -264($fp)
	li $t2, 0
	bne $t1, $t2, label429
	j label430
label429:
	li $t0, 1
	sw $t0, -228($fp)
label430:
	li $t0, 33129
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -272($fp)
	addi $t0, $fp, -16
	sw $t0, -276($fp)
	li $t0, 0
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
	lw $t0, -292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -296($fp)
	li $t0, 1
	sw $t0, -300($fp)
	li $t0, 4
	lw $t1, -300($fp)
	mul $t0, $t0, $t1
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	lw $t1, -296($fp)
	add $t0, $t0, $t1
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	lw $t1, 0($t0)
	sw $t1, -312($fp)
	lw $t0, -312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -316($fp)
	li $t0, 2
	sw $t0, -320($fp)
	li $t0, 4
	lw $t1, -320($fp)
	mul $t0, $t0, $t1
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	lw $t1, -316($fp)
	add $t0, $t0, $t1
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	lw $t1, 0($t0)
	sw $t1, -332($fp)
	lw $t0, -332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -336($fp)
	lw $t0, 12($fp)
	sw $t0, -340($fp)
	li $t0, 43550
	sw $t0, -344($fp)
	addi $t0, $fp, -16
	sw $t0, -348($fp)
	li $t0, 2
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
	lw $t0, -344($fp)
	lw $t1, -364($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -368($fp)
	li $t0, 0
	lw $t1, -368($fp)
	sub $t0, $t0, $t1
	sw $t0, -372($fp)
	lw $t0, -340($fp)
	lw $t1, -372($fp)
	mul $t0, $t0, $t1
	sw $t0, -376($fp)
	lw $t1, -376($fp)
	li $t2, 0
	bne $t1, $t2, label436
	j label438
label438:
	li $t0, 0
	sw $t0, -380($fp)
	li $t0, 50987
	sw $t0, -384($fp)
	li $t0, 0
	lw $t1, -384($fp)
	sub $t0, $t0, $t1
	sw $t0, -388($fp)
	li $t0, 0
	lw $t1, -388($fp)
	sub $t0, $t0, $t1
	sw $t0, -392($fp)
	addi $sp, $sp, -4
	lw $t0, -392($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -396($fp)
	addi $sp, $sp, 8
	lw $t0, 8($fp)
	sw $t0, -400($fp)
	lw $t1, -396($fp)
	lw $t2, -400($fp)
	bge $t1, $t2, label439
	j label440
label439:
	li $t0, 1
	sw $t0, -380($fp)
label440:
	lw $t0, 12($fp)
	sw $t0, -404($fp)
	lw $t1, -380($fp)
	lw $t2, -404($fp)
	bge $t1, $t2, label436
	j label437
label436:
	li $t0, 1
	sw $t0, -336($fp)
label437:
	lw $ra, -4($fp)
	lw $v0, -336($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -16
	sw $t0, -408($fp)
	li $t0, 0
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
	lw $t0, -424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -428($fp)
	li $t0, 1
	sw $t0, -432($fp)
	li $t0, 4
	lw $t1, -432($fp)
	mul $t0, $t0, $t1
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	lw $t1, -428($fp)
	add $t0, $t0, $t1
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	lw $t1, 0($t0)
	sw $t1, -444($fp)
	lw $t0, -444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -448($fp)
	li $t0, 2
	sw $t0, -452($fp)
	li $t0, 4
	lw $t1, -452($fp)
	mul $t0, $t0, $t1
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	lw $t1, -448($fp)
	add $t0, $t0, $t1
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	lw $t1, 0($t0)
	sw $t1, -464($fp)
	lw $t0, -464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 52463
	sw $t0, -468($fp)
	li $t0, 0
	sw $t0, -472($fp)
	li $t0, 57188
	sw $t0, -476($fp)
	lw $t1, -476($fp)
	li $t2, 0
	bne $t1, $t2, label442
	j label441
label441:
	li $t0, 1
	sw $t0, -472($fp)
label442:
	lw $t0, -468($fp)
	lw $t1, -472($fp)
	add $t0, $t0, $t1
	sw $t0, -480($fp)
	lw $t0, 8($fp)
	sw $t0, -484($fp)
	lw $t0, -480($fp)
	lw $t1, -484($fp)
	sub $t0, $t0, $t1
	sw $t0, -488($fp)
	lw $ra, -4($fp)
	lw $v0, -488($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1224
	li $t0, 40473
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, -32($fp)
	li $t0, 32042
	sw $t0, -36($fp)
	addi $t0, $fp, -20
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
	li $t0, 31988
	sw $t0, -60($fp)
	addi $t0, $fp, -20
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
	li $t0, 3455
	sw $t0, -84($fp)
	addi $t0, $fp, -20
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
	li $t0, 7608
	sw $t0, -108($fp)
	addi $t0, $fp, -20
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
	li $t0, 14183
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -140($fp)
	li $t0, 27547
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	li $t0, 3233
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	li $t0, 51231
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	li $t0, 62556
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	li $t0, 1787
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	li $t0, 61379
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	li $t0, 40970
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	li $t0, 0
	sw $t0, -228($fp)
	li $t0, 0
	sw $t0, -232($fp)
	li $t0, 0
	sw $t0, -236($fp)
	li $t0, 63793
	sw $t0, -240($fp)
	li $t0, 0
	lw $t1, -240($fp)
	sub $t0, $t0, $t1
	sw $t0, -244($fp)
	lw $t0, -208($fp)
	sw $t0, -248($fp)
	lw $t1, -244($fp)
	lw $t2, -248($fp)
	bgt $t1, $t2, label447
	j label448
label447:
	li $t0, 1
	sw $t0, -236($fp)
label448:
	li $t0, 0
	sw $t0, -252($fp)
	li $t0, 12308
	sw $t0, -256($fp)
	lw $t0, -220($fp)
	sw $t0, -260($fp)
	lw $t0, -256($fp)
	lw $t1, -260($fp)
	add $t0, $t0, $t1
	sw $t0, -264($fp)
	li $t0, 26769
	sw $t0, -268($fp)
	lw $t1, -264($fp)
	lw $t2, -268($fp)
	bne $t1, $t2, label449
	j label450
label449:
	li $t0, 1
	sw $t0, -252($fp)
label450:
	lw $t0, -148($fp)
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -276($fp)
	li $t0, 0
	sw $t0, -280($fp)
	lw $t0, -196($fp)
	sw $t0, -284($fp)
	li $t0, 0
	lw $t1, -284($fp)
	sub $t0, $t0, $t1
	sw $t0, -288($fp)
	lw $t0, -28($fp)
	sw $t0, -292($fp)
	lw $t1, -288($fp)
	lw $t2, -292($fp)
	beq $t1, $t2, label451
	j label452
label451:
	li $t0, 1
	sw $t0, -280($fp)
label452:
	li $t0, 49825
	sw $t0, -296($fp)
	li $t0, 30874
	sw $t0, -300($fp)
	lw $t0, -296($fp)
	lw $t1, -300($fp)
	add $t0, $t0, $t1
	sw $t0, -304($fp)
	li $t0, 0
	sw $t0, -308($fp)
	lw $t0, -136($fp)
	sw $t0, -312($fp)
	li $t0, 44415
	sw $t0, -316($fp)
	lw $t0, -312($fp)
	lw $t1, -316($fp)
	add $t0, $t0, $t1
	sw $t0, -320($fp)
	li $t0, 27732
	sw $t0, -324($fp)
	lw $t1, -320($fp)
	lw $t2, -324($fp)
	ble $t1, $t2, label453
	j label454
label453:
	li $t0, 1
	sw $t0, -308($fp)
label454:
	addi $sp, $sp, -4
	lw $t0, -276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -308($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -328($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -328($fp)
	sub $t0, $t0, $t1
	sw $t0, -332($fp)
	li $t0, 6432
	sw $t0, -336($fp)
	li $t0, 0
	sw $t0, -340($fp)
	li $t0, 59614
	sw $t0, -344($fp)
	li $t0, 0
	lw $t1, -344($fp)
	sub $t0, $t0, $t1
	sw $t0, -348($fp)
	li $t0, 12001
	sw $t0, -352($fp)
	lw $t1, -348($fp)
	lw $t2, -352($fp)
	ble $t1, $t2, label455
	j label456
label455:
	li $t0, 1
	sw $t0, -340($fp)
label456:
	addi $sp, $sp, -4
	lw $t0, -236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -340($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -356($fp)
	addi $sp, $sp, 24
	lw $t1, -356($fp)
	li $t2, 0
	bne $t1, $t2, label446
	j label445
label445:
	li $t0, 1
	sw $t0, -232($fp)
label446:
	li $t0, 0
	lw $t1, -232($fp)
	sub $t0, $t0, $t1
	sw $t0, -360($fp)
	lw $t1, -360($fp)
	li $t2, 0
	bne $t1, $t2, label444
	j label443
label443:
	li $t0, 1
	sw $t0, -228($fp)
label444:
	lw $t0, -28($fp)
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -368($fp)
	li $t0, 0
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
	addi $t0, $fp, -20
	sw $t0, -388($fp)
	li $t0, 1
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
	addi $t0, $fp, -20
	sw $t0, -408($fp)
	li $t0, 2
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
	lw $t0, -424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -428($fp)
	li $t0, 3
	sw $t0, -432($fp)
	li $t0, 4
	lw $t1, -432($fp)
	mul $t0, $t0, $t1
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	lw $t1, -428($fp)
	add $t0, $t0, $t1
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	lw $t1, 0($t0)
	sw $t1, -444($fp)
	lw $t0, -444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -136($fp)
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -148($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -160($fp)
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -172($fp)
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -184($fp)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -196($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -208($fp)
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -220($fp)
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 5499
	sw $t0, -480($fp)
	lw $ra, -4($fp)
	lw $v0, -480($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -484($fp)
	lw $t0, -172($fp)
	sw $t0, -488($fp)
	lw $t1, -488($fp)
	li $t2, 0
	bne $t1, $t2, label464
	j label461
label464:
	lw $t0, -220($fp)
	sw $t0, -492($fp)
	lw $t1, -492($fp)
	li $t2, 0
	bne $t1, $t2, label463
	j label461
label463:
	li $t0, 59898
	sw $t0, -496($fp)
	lw $t1, -496($fp)
	li $t2, 0
	bne $t1, $t2, label462
	j label461
label462:
	li $t0, 41807
	sw $t0, -500($fp)
	lw $t1, -500($fp)
	li $t2, 0
	bne $t1, $t2, label461
	j label460
label460:
	li $t0, 1
	sw $t0, -484($fp)
label461:
	lw $t0, -484($fp)
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -504($fp)
	lw $t1, -504($fp)
	li $t2, 0
	bne $t1, $t2, label457
	j label458
label457:
	li $t0, 0
	sw $t0, -508($fp)
	addi $t0, $fp, -20
	sw $t0, -512($fp)
	lw $t0, -208($fp)
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
	lw $t1, -528($fp)
	li $t2, 0
	bne $t1, $t2, label467
	j label466
label467:
	li $t0, 54406
	sw $t0, -532($fp)
	lw $t1, -532($fp)
	li $t2, 0
	bne $t1, $t2, label465
	j label466
label465:
	li $t0, 1
	sw $t0, -508($fp)
label466:
	addi $sp, $sp, -4
	lw $t0, -508($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -536($fp)
	addi $sp, $sp, 8
	li $t0, 38513
	sw $t0, -540($fp)
	lw $t0, -220($fp)
	sw $t0, -544($fp)
	lw $t0, -540($fp)
	lw $t1, -544($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -548($fp)
	li $t0, 27259
	sw $t0, -552($fp)
	lw $t0, -548($fp)
	lw $t1, -552($fp)
	mul $t0, $t0, $t1
	sw $t0, -556($fp)
	lw $t0, -160($fp)
	sw $t0, -560($fp)
	lw $t0, -556($fp)
	lw $t1, -560($fp)
	mul $t0, $t0, $t1
	sw $t0, -564($fp)
	lw $t0, -536($fp)
	lw $t1, -564($fp)
	sub $t0, $t0, $t1
	sw $t0, -568($fp)
	lw $ra, -4($fp)
	lw $v0, -568($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label459
label458:
	lw $t0, -184($fp)
	sw $t0, -572($fp)
	li $t0, 0
	sw $t0, -576($fp)
	lw $t0, -148($fp)
	sw $t0, -580($fp)
	lw $t1, -580($fp)
	li $t2, 0
	bne $t1, $t2, label469
	j label468
label468:
	li $t0, 1
	sw $t0, -576($fp)
label469:
	li $t0, 0
	lw $t1, -576($fp)
	sub $t0, $t0, $t1
	sw $t0, -584($fp)
	lw $t0, -572($fp)
	lw $t1, -584($fp)
	sub $t0, $t0, $t1
	sw $t0, -588($fp)
	li $t0, 41334
	sw $t0, -592($fp)
	lw $t0, -588($fp)
	lw $t1, -592($fp)
	add $t0, $t0, $t1
	sw $t0, -596($fp)
	lw $ra, -4($fp)
	lw $v0, -596($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label459:
	li $t0, 30165
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -608($fp)
	li $t0, 2196
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	sw $t0, -620($fp)
	li $t0, 7840
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -632($fp)
	li $t0, 62153
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	li $t0, 5651
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -656($fp)
	li $t0, 15448
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -668($fp)
	li $t0, 10801
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	li $t0, 0
	sw $t0, -684($fp)
	li $t0, 0
	sw $t0, -688($fp)
	addi $t0, $fp, -20
	sw $t0, -692($fp)
	lw $t0, -664($fp)
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
	lw $t1, -708($fp)
	li $t2, 0
	bne $t1, $t2, label472
	j label473
label472:
	li $t0, 1
	sw $t0, -688($fp)
label473:
	li $t0, 0
	sw $t0, -712($fp)
	lw $t0, -160($fp)
	sw $t0, -716($fp)
	li $t0, 57875
	sw $t0, -720($fp)
	lw $t0, -716($fp)
	lw $t1, -720($fp)
	mul $t0, $t0, $t1
	sw $t0, -724($fp)
	lw $t1, -724($fp)
	li $t2, 0
	bne $t1, $t2, label474
	j label476
label476:
	li $t0, 5653
	sw $t0, -728($fp)
	lw $t1, -728($fp)
	li $t2, 0
	bne $t1, $t2, label474
	j label475
label474:
	li $t0, 1
	sw $t0, -712($fp)
label475:
	li $t0, 0
	sw $t0, -732($fp)
	li $t0, 0
	sw $t0, -736($fp)
	li $t0, 62032
	sw $t0, -740($fp)
	li $t0, 30219
	sw $t0, -744($fp)
	lw $t1, -740($fp)
	lw $t2, -744($fp)
	beq $t1, $t2, label479
	j label480
label479:
	li $t0, 1
	sw $t0, -736($fp)
label480:
	li $t0, 20469
	sw $t0, -748($fp)
	lw $t1, -736($fp)
	lw $t2, -748($fp)
	bne $t1, $t2, label477
	j label478
label477:
	li $t0, 1
	sw $t0, -732($fp)
label478:
	lw $t0, -676($fp)
	sw $t0, -752($fp)
	lw $t0, -220($fp)
	sw $t0, -756($fp)
	li $t0, 18682
	sw $t0, -760($fp)
	lw $t0, -756($fp)
	lw $t1, -760($fp)
	add $t0, $t0, $t1
	sw $t0, -764($fp)
	lw $t0, -652($fp)
	sw $t0, -768($fp)
	lw $t0, -764($fp)
	lw $t1, -768($fp)
	add $t0, $t0, $t1
	sw $t0, -772($fp)
	li $t0, 0
	sw $t0, -776($fp)
	lw $t0, -136($fp)
	sw $t0, -780($fp)
	li $t0, 33199
	sw $t0, -784($fp)
	lw $t1, -780($fp)
	lw $t2, -784($fp)
	bne $t1, $t2, label481
	j label483
label483:
	lw $t0, -220($fp)
	sw $t0, -788($fp)
	lw $t1, -788($fp)
	li $t2, 0
	bne $t1, $t2, label481
	j label482
label481:
	li $t0, 1
	sw $t0, -776($fp)
label482:
	addi $sp, $sp, -4
	lw $t0, -712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -776($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -792($fp)
	addi $sp, $sp, 24
	lw $t0, -688($fp)
	lw $t1, -792($fp)
	add $t0, $t0, $t1
	sw $t0, -796($fp)
	li $t0, 14547
	sw $t0, -800($fp)
	li $t0, 0
	lw $t1, -800($fp)
	sub $t0, $t0, $t1
	sw $t0, -804($fp)
	lw $t1, -796($fp)
	lw $t2, -804($fp)
	ble $t1, $t2, label470
	j label471
label470:
	li $t0, 1
	sw $t0, -684($fp)
label471:
	li $t0, 0
	sw $t0, -808($fp)
	lw $t0, -604($fp)
	sw $t0, -812($fp)
	lw $t0, -220($fp)
	sw $t0, -816($fp)
	lw $t1, -812($fp)
	lw $t2, -816($fp)
	beq $t1, $t2, label486
	j label485
label486:
	li $t0, 32072
	sw $t0, -820($fp)
	lw $t1, -820($fp)
	li $t2, 0
	bne $t1, $t2, label484
	j label485
label484:
	li $t0, 1
	sw $t0, -808($fp)
label485:
	li $t0, 58963
	sw $t0, -824($fp)
	li $t0, 0
	lw $t1, -824($fp)
	sub $t0, $t0, $t1
	sw $t0, -828($fp)
	lw $t0, -220($fp)
	sw $t0, -832($fp)
	li $t0, 12085
	sw $t0, -836($fp)
	lw $t0, -208($fp)
	sw $t0, -840($fp)
	lw $t0, -836($fp)
	lw $t1, -840($fp)
	mul $t0, $t0, $t1
	sw $t0, -844($fp)
	lw $t0, -136($fp)
	sw $t0, -848($fp)
	lw $t0, -844($fp)
	lw $t1, -848($fp)
	mul $t0, $t0, $t1
	sw $t0, -852($fp)
	li $t0, 0
	sw $t0, -856($fp)
	li $t0, 0
	sw $t0, -860($fp)
	lw $t0, -664($fp)
	sw $t0, -864($fp)
	lw $t0, -148($fp)
	sw $t0, -868($fp)
	lw $t1, -864($fp)
	lw $t2, -868($fp)
	bgt $t1, $t2, label489
	j label490
label489:
	li $t0, 1
	sw $t0, -860($fp)
label490:
	li $t0, 4340
	sw $t0, -872($fp)
	lw $t1, -860($fp)
	lw $t2, -872($fp)
	bge $t1, $t2, label487
	j label488
label487:
	li $t0, 1
	sw $t0, -856($fp)
label488:
	addi $sp, $sp, -4
	lw $t0, -808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -856($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -876($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -876($fp)
	sub $t0, $t0, $t1
	sw $t0, -880($fp)
	li $t0, 61910
	sw $t0, -884($fp)
	li $t0, 24301
	sw $t0, -888($fp)
	lw $t0, -884($fp)
	lw $t1, -888($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -892($fp)
	li $t0, 0
	lw $t1, -892($fp)
	sub $t0, $t0, $t1
	sw $t0, -896($fp)
	lw $t0, -880($fp)
	lw $t1, -896($fp)
	add $t0, $t0, $t1
	sw $t0, -900($fp)
	li $t0, 0
	sw $t0, -904($fp)
	lw $t0, -184($fp)
	sw $t0, -908($fp)
	lw $t1, -908($fp)
	li $t2, 0
	bne $t1, $t2, label492
	j label491
label491:
	li $t0, 1
	sw $t0, -904($fp)
label492:
	addi $t0, $fp, -20
	sw $t0, -912($fp)
	lw $t0, -148($fp)
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
	lw $t0, -904($fp)
	lw $t1, -928($fp)
	mul $t0, $t0, $t1
	sw $t0, -932($fp)
	li $t0, 0
	lw $t1, -932($fp)
	sub $t0, $t0, $t1
	sw $t0, -936($fp)
	lw $t0, -900($fp)
	lw $t1, -936($fp)
	add $t0, $t0, $t1
	sw $t0, -940($fp)
	li $t0, 0
	sw $t0, -944($fp)
	li $t0, 0
	sw $t0, -948($fp)
	lw $t0, -136($fp)
	sw $t0, -952($fp)
	lw $t1, -952($fp)
	li $t2, 0
	bne $t1, $t2, label496
	j label495
label495:
	li $t0, 1
	sw $t0, -948($fp)
label496:
	lw $t0, -208($fp)
	sw $t0, -956($fp)
	lw $t1, -948($fp)
	lw $t2, -956($fp)
	bge $t1, $t2, label493
	j label494
label493:
	li $t0, 1
	sw $t0, -944($fp)
label494:
	addi $sp, $sp, -4
	lw $t0, -944($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -960($fp)
	addi $sp, $sp, 8
	li $t0, 56019
	sw $t0, -964($fp)
	li $t0, 26089
	sw $t0, -968($fp)
	lw $t0, -964($fp)
	lw $t1, -968($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -972($fp)
	li $t0, 14548
	sw $t0, -976($fp)
	lw $t0, -972($fp)
	lw $t1, -976($fp)
	sub $t0, $t0, $t1
	sw $t0, -980($fp)
	li $t0, 38750
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -988($fp)
	li $t0, 0
	sw $t0, -992($fp)
	li $t0, 17506
	sw $t0, -996($fp)
	lw $t1, -996($fp)
	li $t2, 0
	bne $t1, $t2, label500
	j label499
label500:
	lw $t0, -652($fp)
	sw $t0, -1000($fp)
	lw $t1, -1000($fp)
	li $t2, 0
	bne $t1, $t2, label497
	j label499
label499:
	li $t0, 64366
	sw $t0, -1004($fp)
	lw $t1, -1004($fp)
	li $t2, 0
	bne $t1, $t2, label497
	j label498
label497:
	li $t0, 1
	sw $t0, -992($fp)
label498:
	li $t0, 0
	sw $t0, -1008($fp)
	lw $t0, -184($fp)
	sw $t0, -1012($fp)
	li $t0, 49879
	sw $t0, -1016($fp)
	lw $t0, -1012($fp)
	lw $t1, -1016($fp)
	mul $t0, $t0, $t1
	sw $t0, -1020($fp)
	lw $t0, -628($fp)
	sw $t0, -1024($fp)
	lw $t1, -1020($fp)
	lw $t2, -1024($fp)
	bne $t1, $t2, label501
	j label502
label501:
	li $t0, 1
	sw $t0, -1008($fp)
label502:
	li $t0, 0
	sw $t0, -1028($fp)
	li $t0, 0
	sw $t0, -1032($fp)
	li $t0, 0
	sw $t0, -1036($fp)
	li $t0, 23143
	sw $t0, -1040($fp)
	lw $t0, -616($fp)
	sw $t0, -1044($fp)
	lw $t1, -1040($fp)
	lw $t2, -1044($fp)
	ble $t1, $t2, label507
	j label508
label507:
	li $t0, 1
	sw $t0, -1036($fp)
label508:
	lw $t0, -136($fp)
	sw $t0, -1048($fp)
	lw $t1, -1036($fp)
	lw $t2, -1048($fp)
	beq $t1, $t2, label505
	j label506
label505:
	li $t0, 1
	sw $t0, -1032($fp)
label506:
	li $t0, 0
	sw $t0, -1052($fp)
	lw $t0, -664($fp)
	sw $t0, -1056($fp)
	lw $t1, -1056($fp)
	li $t2, 0
	bne $t1, $t2, label509
	j label510
label509:
	li $t0, 1
	sw $t0, -1052($fp)
label510:
	lw $t0, -220($fp)
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -1064($fp)
	li $t0, 0
	sw $t0, -1068($fp)
	li $t0, 0
	sw $t0, -1072($fp)
	lw $t0, -220($fp)
	sw $t0, -1076($fp)
	li $t0, 44380
	sw $t0, -1080($fp)
	lw $t1, -1076($fp)
	lw $t2, -1080($fp)
	beq $t1, $t2, label513
	j label514
label513:
	li $t0, 1
	sw $t0, -1072($fp)
label514:
	lw $t0, -136($fp)
	sw $t0, -1084($fp)
	lw $t1, -1072($fp)
	lw $t2, -1084($fp)
	bne $t1, $t2, label511
	j label512
label511:
	li $t0, 1
	sw $t0, -1068($fp)
label512:
	addi $sp, $sp, -4
	lw $t0, -1032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1068($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1088($fp)
	addi $sp, $sp, 20
	li $t0, 22558
	sw $t0, -1092($fp)
	lw $t1, -1088($fp)
	lw $t2, -1092($fp)
	beq $t1, $t2, label503
	j label504
label503:
	li $t0, 1
	sw $t0, -1028($fp)
label504:
	addi $sp, $sp, -4
	lw $t0, -980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1028($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1096($fp)
	addi $sp, $sp, 24
	lw $t0, -960($fp)
	lw $t1, -1096($fp)
	add $t0, $t0, $t1
	sw $t0, -1100($fp)
	lw $t0, -28($fp)
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
	sw $t0, -1168($fp)
	li $t0, 3
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
	lw $t0, -1184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -136($fp)
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -148($fp)
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -160($fp)
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -172($fp)
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -184($fp)
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -196($fp)
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -208($fp)
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -220($fp)
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -148($fp)
	sw $t0, -1220($fp)
	lw $t0, -148($fp)
	sw $t0, -1224($fp)
	lw $t0, -1220($fp)
	lw $t1, -1224($fp)
	mul $t0, $t0, $t1
	sw $t0, -1228($fp)
	lw $ra, -4($fp)
	lw $v0, -1228($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -312
	li $t0, 20648
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
	li $t0, 28285
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
	li $t0, 22388
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
	li $t0, 17265
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
	li $t0, 33937
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
	addi $t0, $fp, -24
	sw $t0, -152($fp)
	li $t0, 2
	sw $t0, -156($fp)
	li $t0, 4
	lw $t1, -156($fp)
	mul $t0, $t0, $t1
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	lw $t1, -152($fp)
	add $t0, $t0, $t1
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	lw $t1, 0($t0)
	sw $t1, -168($fp)
	li $t0, 0
	lw $t1, -168($fp)
	sub $t0, $t0, $t1
	sw $t0, -172($fp)
	li $t0, 0
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
	lw $t1, -188($fp)
	li $t2, 0
	bne $t1, $t2, label518
	j label517
label517:
	li $t0, 1
	sw $t0, -176($fp)
label518:
	lw $t1, -172($fp)
	lw $t2, -176($fp)
	ble $t1, $t2, label515
	j label516
label515:
	li $t0, 1
	sw $t0, -148($fp)
label516:
	addi $t0, $fp, -24
	sw $t0, -192($fp)
	li $t0, 0
	sw $t0, -196($fp)
	li $t0, 4
	lw $t1, -196($fp)
	mul $t0, $t0, $t1
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	lw $t1, -192($fp)
	add $t0, $t0, $t1
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	lw $t1, 0($t0)
	sw $t1, -208($fp)
	lw $t0, -208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -212($fp)
	li $t0, 1
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
	lw $t0, -228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -232($fp)
	li $t0, 2
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
	li $t0, 3
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
	li $t0, 4
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
	lw $t0, 8($fp)
	sw $t0, -296($fp)
	li $t0, 56519
	sw $t0, -300($fp)
	lw $t0, -296($fp)
	lw $t1, -300($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -304($fp)
	li $t0, 4
	lw $t1, -304($fp)
	mul $t0, $t0, $t1
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	lw $t1, -292($fp)
	add $t0, $t0, $t1
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	lw $t1, 0($t0)
	sw $t1, -316($fp)
	lw $ra, -4($fp)
	lw $v0, -316($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -708
	li $t0, 24562
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	li $t0, 31819
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
	li $t0, 11452
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
	li $t0, 16901
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
	li $t0, 37473
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
	li $t0, 25999
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
	li $t0, 21241
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	li $t0, 49558
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	li $t0, 19426
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	li $t0, 53313
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	lw $t0, -32($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
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
	lw $t0, -228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -232($fp)
	li $t0, 1
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
	li $t0, 2
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
	li $t0, 3
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
	li $t0, 4
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
	lw $t0, -164($fp)
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -176($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -188($fp)
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -200($fp)
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -328($fp)
	li $t0, 45933
	sw $t0, -332($fp)
	lw $t0, -188($fp)
	sw $t0, -336($fp)
	lw $t0, -200($fp)
	sw $t0, -340($fp)
	lw $t0, -336($fp)
	lw $t1, -340($fp)
	mul $t0, $t0, $t1
	sw $t0, -344($fp)
	lw $t0, -332($fp)
	lw $t1, -344($fp)
	sub $t0, $t0, $t1
	sw $t0, -348($fp)
	lw $t0, -188($fp)
	sw $t0, -352($fp)
	li $t0, 0
	sw $t0, -356($fp)
	lw $t0, -176($fp)
	sw $t0, -360($fp)
	lw $t0, -188($fp)
	sw $t0, -364($fp)
	lw $t0, -360($fp)
	lw $t1, -364($fp)
	mul $t0, $t0, $t1
	sw $t0, -368($fp)
	li $t0, 21046
	sw $t0, -372($fp)
	lw $t1, -368($fp)
	lw $t2, -372($fp)
	blt $t1, $t2, label522
	j label523
label522:
	li $t0, 1
	sw $t0, -356($fp)
label523:
	li $t0, 750
	sw $t0, -376($fp)
	li $t0, 16501
	sw $t0, -380($fp)
	lw $t0, -376($fp)
	lw $t1, -380($fp)
	sub $t0, $t0, $t1
	sw $t0, -384($fp)
	li $t0, 0
	sw $t0, -388($fp)
	li $t0, 32157
	sw $t0, -392($fp)
	lw $t0, -188($fp)
	sw $t0, -396($fp)
	lw $t0, -392($fp)
	lw $t1, -396($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -400($fp)
	li $t0, 3540
	sw $t0, -404($fp)
	lw $t1, -400($fp)
	lw $t2, -404($fp)
	ble $t1, $t2, label524
	j label525
label524:
	li $t0, 1
	sw $t0, -388($fp)
label525:
	li $t0, 43728
	sw $t0, -408($fp)
	li $t0, 0
	lw $t1, -408($fp)
	sub $t0, $t0, $t1
	sw $t0, -412($fp)
	li $t0, 0
	lw $t1, -412($fp)
	sub $t0, $t0, $t1
	sw $t0, -416($fp)
	addi $sp, $sp, -4
	lw $t0, -352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -416($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -420($fp)
	addi $sp, $sp, 24
	lw $t1, -348($fp)
	lw $t2, -420($fp)
	bgt $t1, $t2, label521
	j label520
label521:
	li $t0, 65116
	sw $t0, -424($fp)
	lw $t0, -176($fp)
	sw $t0, -428($fp)
	lw $t0, -424($fp)
	lw $t1, -428($fp)
	add $t0, $t0, $t1
	sw $t0, -432($fp)
	li $t0, 55251
	sw $t0, -436($fp)
	li $t0, 0
	lw $t1, -436($fp)
	sub $t0, $t0, $t1
	sw $t0, -440($fp)
	lw $t1, -432($fp)
	lw $t2, -440($fp)
	ble $t1, $t2, label519
	j label520
label519:
	li $t0, 1
	sw $t0, -328($fp)
label520:
	lw $ra, -4($fp)
	lw $v0, -328($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label526:
	addi $t0, $fp, -24
	sw $t0, -444($fp)
	li $t0, 11529
	sw $t0, -448($fp)
	lw $t0, -188($fp)
	sw $t0, -452($fp)
	lw $t0, -448($fp)
	lw $t1, -452($fp)
	mul $t0, $t0, $t1
	sw $t0, -456($fp)
	li $t0, 25669
	sw $t0, -460($fp)
	lw $t0, -456($fp)
	lw $t1, -460($fp)
	sub $t0, $t0, $t1
	sw $t0, -464($fp)
	li $t0, 4
	lw $t1, -464($fp)
	mul $t0, $t0, $t1
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	lw $t1, -444($fp)
	add $t0, $t0, $t1
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	lw $t1, 0($t0)
	sw $t1, -476($fp)
	li $t0, 4263
	sw $t0, -480($fp)
	lw $t0, -476($fp)
	lw $t1, -480($fp)
	add $t0, $t0, $t1
	sw $t0, -484($fp)
	lw $t1, -484($fp)
	li $t2, 0
	bne $t1, $t2, label527
	j label528
label527:
	li $t0, 32177
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -492($fp)
	lw $ra, -4($fp)
	lw $v0, -492($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label526
label528:
	lw $t0, -32($fp)
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -500($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -520($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -540($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -560($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -580($fp)
	li $t0, 4
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
	lw $t0, -164($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -176($fp)
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -188($fp)
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -200($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -616($fp)
	addi $t0, $fp, -24
	sw $t0, -620($fp)
	li $t0, 0
	sw $t0, -624($fp)
	li $t0, 53955
	sw $t0, -628($fp)
	li $t0, 26651
	sw $t0, -632($fp)
	lw $t1, -628($fp)
	lw $t2, -632($fp)
	beq $t1, $t2, label531
	j label532
label531:
	li $t0, 1
	sw $t0, -624($fp)
label532:
	li $t0, 4
	lw $t1, -624($fp)
	mul $t0, $t0, $t1
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	lw $t1, -620($fp)
	add $t0, $t0, $t1
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	lw $t1, 0($t0)
	sw $t1, -644($fp)
	lw $t1, -644($fp)
	li $t2, 0
	bne $t1, $t2, label530
	j label529
label529:
	li $t0, 1
	sw $t0, -616($fp)
label530:
	li $t0, 49443
	sw $t0, -648($fp)
	li $t0, 0
	sw $t0, -652($fp)
	li $t0, 64487
	sw $t0, -656($fp)
	li $t0, 11973
	sw $t0, -660($fp)
	lw $t0, -656($fp)
	lw $t1, -660($fp)
	add $t0, $t0, $t1
	sw $t0, -664($fp)
	li $t0, 23956
	sw $t0, -668($fp)
	lw $t1, -664($fp)
	lw $t2, -668($fp)
	bge $t1, $t2, label533
	j label534
label533:
	li $t0, 1
	sw $t0, -652($fp)
label534:
	lw $t0, -200($fp)
	sw $t0, -672($fp)
	lw $t0, -32($fp)
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -680($fp)
	lw $t0, -200($fp)
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -688($fp)
	li $t0, 0
	sw $t0, -692($fp)
	li $t0, 22356
	sw $t0, -696($fp)
	lw $t1, -696($fp)
	li $t2, 0
	bne $t1, $t2, label537
	j label536
label537:
	lw $t0, -164($fp)
	sw $t0, -700($fp)
	lw $t1, -700($fp)
	li $t2, 0
	bne $t1, $t2, label535
	j label536
label535:
	li $t0, 1
	sw $t0, -692($fp)
label536:
	addi $sp, $sp, -4
	lw $t0, -652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -692($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -704($fp)
	addi $sp, $sp, 24
	lw $t0, -648($fp)
	lw $t1, -704($fp)
	mul $t0, $t0, $t1
	sw $t0, -708($fp)
	lw $t0, -616($fp)
	lw $t1, -708($fp)
	add $t0, $t0, $t1
	sw $t0, -712($fp)
	lw $ra, -4($fp)
	lw $v0, -712($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -284
	li $t0, 55470
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
	li $t0, 36536
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
	jal f12
	sw $v0, -68($fp)
	addi $sp, $sp, 4
	lw $t1, -68($fp)
	li $t2, 0
	bne $t1, $t2, label539
	j label538
label538:
	li $t0, 1
	sw $t0, -64($fp)
label539:
	li $t0, 55775
	sw $t0, -72($fp)
	lw $t0, -64($fp)
	lw $t1, -72($fp)
	sub $t0, $t0, $t1
	sw $t0, -76($fp)
	li $t0, 0
	sw $t0, -80($fp)
	li $t0, 0
	sw $t0, -84($fp)
	lw $t0, 16($fp)
	sw $t0, -88($fp)
	li $t0, 0
	sw $t0, -92($fp)
	lw $t0, 12($fp)
	sw $t0, -96($fp)
	lw $t1, -96($fp)
	li $t2, 0
	bne $t1, $t2, label545
	j label544
label544:
	li $t0, 1
	sw $t0, -92($fp)
label545:
	li $t0, 1386
	sw $t0, -100($fp)
	lw $t0, -92($fp)
	lw $t1, -100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -104($fp)
	lw $t1, -88($fp)
	lw $t2, -104($fp)
	bgt $t1, $t2, label542
	j label543
label542:
	li $t0, 1
	sw $t0, -84($fp)
label543:
	lw $t0, 12($fp)
	sw $t0, -108($fp)
	lw $t1, -84($fp)
	lw $t2, -108($fp)
	bne $t1, $t2, label540
	j label541
label540:
	li $t0, 1
	sw $t0, -80($fp)
label541:
	li $t0, 0
	sw $t0, -112($fp)
	lw $t0, 8($fp)
	sw $t0, -116($fp)
	lw $t1, -116($fp)
	li $t2, 0
	bne $t1, $t2, label550
	j label548
label550:
	li $t0, 53437
	sw $t0, -120($fp)
	li $t0, 0
	lw $t1, -120($fp)
	sub $t0, $t0, $t1
	sw $t0, -124($fp)
	lw $t1, -124($fp)
	li $t2, 0
	bne $t1, $t2, label549
	j label548
label549:
	lw $t0, 12($fp)
	sw $t0, -128($fp)
	li $t0, 27712
	sw $t0, -132($fp)
	lw $t0, -128($fp)
	lw $t1, -132($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -136($fp)
	lw $t1, -136($fp)
	li $t2, 0
	bne $t1, $t2, label546
	j label548
label548:
	li $t0, 27385
	sw $t0, -140($fp)
	lw $t1, -140($fp)
	li $t2, 0
	bne $t1, $t2, label546
	j label547
label546:
	li $t0, 1
	sw $t0, -112($fp)
label547:
	addi $t0, $fp, -12
	sw $t0, -144($fp)
	li $t0, 0
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
	addi $t0, $fp, -12
	sw $t0, -164($fp)
	li $t0, 1
	sw $t0, -168($fp)
	li $t0, 4
	lw $t1, -168($fp)
	mul $t0, $t0, $t1
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	lw $t1, -164($fp)
	add $t0, $t0, $t1
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	lw $t1, 0($t0)
	sw $t1, -180($fp)
	lw $t0, -180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -184($fp)
	li $t0, 0
	sw $t0, -188($fp)
	li $t0, 0
	sw $t0, -192($fp)
	lw $t0, 4($fp)
	sw $t0, -196($fp)
	li $t0, 11735
	sw $t0, -200($fp)
	lw $t1, -196($fp)
	lw $t2, -200($fp)
	beq $t1, $t2, label555
	j label556
label555:
	li $t0, 1
	sw $t0, -192($fp)
label556:
	lw $t0, 4($fp)
	sw $t0, -204($fp)
	lw $t1, -192($fp)
	lw $t2, -204($fp)
	beq $t1, $t2, label553
	j label554
label553:
	li $t0, 1
	sw $t0, -188($fp)
label554:
	jal f12
	sw $v0, -208($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -212($fp)
	lw $t0, 8($fp)
	sw $t0, -216($fp)
	lw $t1, -216($fp)
	li $t2, 0
	bne $t1, $t2, label558
	j label557
label557:
	li $t0, 1
	sw $t0, -212($fp)
label558:
	li $t0, 0
	sw $t0, -220($fp)
	lw $t0, 12($fp)
	sw $t0, -224($fp)
	li $t0, 9143
	sw $t0, -228($fp)
	lw $t0, -224($fp)
	lw $t1, -228($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -232($fp)
	lw $t1, -232($fp)
	li $t2, 0
	bne $t1, $t2, label561
	j label560
label561:
	lw $t0, 4($fp)
	sw $t0, -236($fp)
	lw $t1, -236($fp)
	li $t2, 0
	bne $t1, $t2, label559
	j label560
label559:
	li $t0, 1
	sw $t0, -220($fp)
label560:
	addi $t0, $fp, -12
	sw $t0, -240($fp)
	lw $t0, 12($fp)
	sw $t0, -244($fp)
	li $t0, 4
	lw $t1, -244($fp)
	mul $t0, $t0, $t1
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	lw $t1, -240($fp)
	add $t0, $t0, $t1
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	lw $t1, 0($t0)
	sw $t1, -256($fp)
	addi $sp, $sp, -4
	lw $t0, -188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -256($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -260($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -264($fp)
	addi $t0, $fp, -12
	sw $t0, -268($fp)
	lw $t0, 12($fp)
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
	lw $t1, -284($fp)
	li $t2, 0
	bne $t1, $t2, label563
	j label562
label562:
	li $t0, 1
	sw $t0, -264($fp)
label563:
	li $t0, 0
	lw $t1, -264($fp)
	sub $t0, $t0, $t1
	sw $t0, -288($fp)
	lw $t1, -260($fp)
	lw $t2, -288($fp)
	blt $t1, $t2, label551
	j label552
label551:
	li $t0, 1
	sw $t0, -184($fp)
label552:
	lw $ra, -4($fp)
	lw $v0, -184($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f14:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -720
	li $t0, 46812
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
	li $t0, 62456
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
	li $t0, 57668
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
	li $t0, 25004
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
	li $t0, 29078
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
	addi $t0, $fp, -24
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
	addi $t0, $fp, -24
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
	addi $t0, $fp, -24
	sw $t0, -188($fp)
	li $t0, 2
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
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -208($fp)
	li $t0, 3
	sw $t0, -212($fp)
	li $t0, 4
	lw $t1, -212($fp)
	mul $t0, $t0, $t1
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	lw $t1, -208($fp)
	add $t0, $t0, $t1
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	lw $t1, 0($t0)
	sw $t1, -224($fp)
	lw $t0, -224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -228($fp)
	li $t0, 4
	sw $t0, -232($fp)
	li $t0, 4
	lw $t1, -232($fp)
	mul $t0, $t0, $t1
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	lw $t1, -228($fp)
	add $t0, $t0, $t1
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	lw $t1, 0($t0)
	sw $t1, -244($fp)
	lw $t0, -244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, 4($fp)
	sw $t0, -248($fp)
	lw $t0, 16($fp)
	sw $t0, -252($fp)
	lw $t0, -248($fp)
	lw $t1, -252($fp)
	mul $t0, $t0, $t1
	sw $t0, -256($fp)
	lw $t0, 16($fp)
	sw $t0, -260($fp)
	lw $t0, -256($fp)
	lw $t1, -260($fp)
	add $t0, $t0, $t1
	sw $t0, -264($fp)
	li $t0, 0
	sw $t0, -268($fp)
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
	lw $t1, -288($fp)
	li $t2, 0
	bne $t1, $t2, label565
	j label564
label564:
	li $t0, 1
	sw $t0, -268($fp)
label565:
	li $t0, 45579
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -296($fp)
	li $t0, 25754
	sw $t0, -300($fp)
	li $t0, 0
	sw $t0, -304($fp)
	li $t0, 61208
	sw $t0, -308($fp)
	lw $t1, -308($fp)
	li $t2, 0
	bne $t1, $t2, label567
	j label566
label566:
	li $t0, 1
	sw $t0, -304($fp)
label567:
	addi $sp, $sp, -4
	lw $t0, -264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -304($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -312($fp)
	addi $sp, $sp, 24
	li $t0, 35294
	sw $t0, -316($fp)
	lw $t0, -312($fp)
	lw $t1, -316($fp)
	sub $t0, $t0, $t1
	sw $t0, -320($fp)
	lw $ra, -4($fp)
	lw $v0, -320($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 28248
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	li $t0, 51004
	sw $t0, -336($fp)
	lw $t0, 20($fp)
	sw $t0, -340($fp)
	lw $t0, -336($fp)
	lw $t1, -340($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -344($fp)
	lw $t1, -344($fp)
	li $t2, 0
	bne $t1, $t2, label568
	j label569
label568:
	lw $t0, 4($fp)
	sw $t0, -348($fp)
	jal f10
	sw $v0, -352($fp)
	addi $sp, $sp, 4
	li $t0, 39557
	sw $t0, -356($fp)
	lw $t0, -352($fp)
	lw $t1, -356($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -360($fp)
	lw $t0, -348($fp)
	lw $t1, -360($fp)
	sub $t0, $t0, $t1
	sw $t0, -364($fp)
	jal f12
	sw $v0, -368($fp)
	addi $sp, $sp, 4
	lw $t0, -364($fp)
	lw $t1, -368($fp)
	sub $t0, $t0, $t1
	sw $t0, -372($fp)
	lw $ra, -4($fp)
	lw $v0, -372($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label570
label569:
	li $t0, 0
	sw $t0, -376($fp)
	lw $t0, 4($fp)
	sw $t0, -380($fp)
	li $t0, 0
	lw $t1, -380($fp)
	sub $t0, $t0, $t1
	sw $t0, -384($fp)
	lw $t1, -384($fp)
	li $t2, 0
	bne $t1, $t2, label571
	j label572
label571:
	li $t0, 1
	sw $t0, -376($fp)
label572:
	li $t0, 0
	lw $t1, -376($fp)
	sub $t0, $t0, $t1
	sw $t0, -388($fp)
	li $t0, 0
	lw $t1, -388($fp)
	sub $t0, $t0, $t1
	sw $t0, -392($fp)
	lw $ra, -4($fp)
	lw $v0, -392($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label570:
	li $t0, 0
	sw $t0, -396($fp)
	lw $t0, 4($fp)
	sw $t0, -400($fp)
	lw $t0, 16($fp)
	sw $t0, -404($fp)
	lw $t0, -400($fp)
	lw $t1, -404($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -408($fp)
	li $t0, 44333
	sw $t0, -412($fp)
	lw $t1, -408($fp)
	lw $t2, -412($fp)
	beq $t1, $t2, label576
	j label577
label576:
	li $t0, 1
	sw $t0, -396($fp)
label577:
	li $t0, 39423
	sw $t0, -416($fp)
	li $t0, 672
	sw $t0, -420($fp)
	lw $t0, -416($fp)
	lw $t1, -420($fp)
	mul $t0, $t0, $t1
	sw $t0, -424($fp)
	lw $t0, 20($fp)
	sw $t0, -428($fp)
	li $t0, 60426
	sw $t0, -432($fp)
	addi $sp, $sp, -4
	lw $t0, -396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -432($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -436($fp)
	addi $sp, $sp, 20
	lw $t1, -436($fp)
	li $t2, 0
	bne $t1, $t2, label573
	j label574
label573:
	li $t0, 0
	sw $t0, -440($fp)
	li $t0, 0
	sw $t0, -444($fp)
	lw $t0, -328($fp)
	sw $t0, -448($fp)
	lw $t1, -448($fp)
	li $t2, 0
	bne $t1, $t2, label581
	j label580
label580:
	li $t0, 1
	sw $t0, -444($fp)
label581:
	li $t0, 0
	sw $t0, -452($fp)
	lw $t0, 16($fp)
	sw $t0, -456($fp)
	lw $t1, -456($fp)
	li $t2, 0
	bne $t1, $t2, label582
	j label583
label582:
	li $t0, 1
	sw $t0, -452($fp)
label583:
	lw $t0, -444($fp)
	lw $t1, -452($fp)
	mul $t0, $t0, $t1
	sw $t0, -460($fp)
	li $t0, 0
	sw $t0, -464($fp)
	li $t0, 61779
	sw $t0, -468($fp)
	lw $t1, -468($fp)
	li $t2, 0
	bne $t1, $t2, label585
	j label584
label584:
	li $t0, 1
	sw $t0, -464($fp)
label585:
	li $t0, 65159
	sw $t0, -472($fp)
	lw $t0, -464($fp)
	lw $t1, -472($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -476($fp)
	lw $t1, -460($fp)
	lw $t2, -476($fp)
	beq $t1, $t2, label578
	j label579
label578:
	li $t0, 1
	sw $t0, -440($fp)
label579:
	j label575
label574:
	li $t0, 0
	sw $t0, -480($fp)
	li $t0, 56479
	sw $t0, -484($fp)
	lw $t1, -484($fp)
	li $t2, 0
	bne $t1, $t2, label586
	j label589
label589:
	li $t0, 15208
	sw $t0, -488($fp)
	lw $t1, -488($fp)
	li $t2, 0
	bne $t1, $t2, label586
	j label588
label588:
	li $t0, 38151
	sw $t0, -492($fp)
	lw $t1, -492($fp)
	li $t2, 0
	bne $t1, $t2, label586
	j label587
label586:
	li $t0, 1
	sw $t0, -480($fp)
label587:
	addi $t0, $fp, -24
	sw $t0, -496($fp)
	li $t0, 1
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
	lw $t0, 8($fp)
	sw $t0, -516($fp)
	li $t0, 0
	lw $t1, -516($fp)
	sub $t0, $t0, $t1
	sw $t0, -520($fp)
	li $t0, 55093
	sw $t0, -524($fp)
	lw $t0, -520($fp)
	lw $t1, -524($fp)
	add $t0, $t0, $t1
	sw $t0, -528($fp)
	li $t0, 0
	sw $t0, -532($fp)
	li $t0, 56306
	sw $t0, -536($fp)
	lw $t1, -536($fp)
	li $t2, 0
	bne $t1, $t2, label592
	j label591
label592:
	li $t0, 20199
	sw $t0, -540($fp)
	lw $t1, -540($fp)
	li $t2, 0
	bne $t1, $t2, label590
	j label591
label590:
	li $t0, 1
	sw $t0, -532($fp)
label591:
	lw $t0, 4($fp)
	sw $t0, -544($fp)
	addi $sp, $sp, -4
	lw $t0, -480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -544($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -548($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -552($fp)
	jal f10
	sw $v0, -556($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -560($fp)
	lw $t0, -328($fp)
	sw $t0, -564($fp)
	li $t0, 65141
	sw $t0, -568($fp)
	lw $t0, -564($fp)
	lw $t1, -568($fp)
	mul $t0, $t0, $t1
	sw $t0, -572($fp)
	lw $t1, -572($fp)
	li $t2, 0
	bne $t1, $t2, label595
	j label597
label597:
	li $t0, 21271
	sw $t0, -576($fp)
	lw $t1, -576($fp)
	li $t2, 0
	bne $t1, $t2, label595
	j label596
label595:
	li $t0, 1
	sw $t0, -560($fp)
label596:
	li $t0, 49886
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, 20($fp)
	lw $t0, 20($fp)
	sw $t0, -584($fp)
	li $t0, 0
	sw $t0, -588($fp)
	li $t0, 18329
	sw $t0, -592($fp)
	lw $t1, -592($fp)
	li $t2, 0
	bne $t1, $t2, label599
	j label600
label600:
	li $t0, 24351
	sw $t0, -596($fp)
	lw $t1, -596($fp)
	li $t2, 0
	bne $t1, $t2, label598
	j label599
label598:
	li $t0, 1
	sw $t0, -588($fp)
label599:
	addi $sp, $sp, -4
	lw $t0, -556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -588($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -600($fp)
	addi $sp, $sp, 20
	lw $t1, -600($fp)
	li $t2, 0
	bne $t1, $t2, label594
	j label593
label593:
	li $t0, 1
	sw $t0, -552($fp)
label594:
	lw $t0, -548($fp)
	lw $t1, -552($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -604($fp)
	li $t0, 0
	sw $t0, -608($fp)
	lw $t0, 4($fp)
	sw $t0, -612($fp)
	lw $t1, -612($fp)
	li $t2, 0
	bne $t1, $t2, label602
	j label601
label601:
	li $t0, 1
	sw $t0, -608($fp)
label602:
	li $t0, 0
	lw $t1, -608($fp)
	sub $t0, $t0, $t1
	sw $t0, -616($fp)
	lw $t0, -604($fp)
	lw $t1, -616($fp)
	mul $t0, $t0, $t1
	sw $t0, -620($fp)
label575:
	addi $t0, $fp, -24
	sw $t0, -624($fp)
	li $t0, 0
	sw $t0, -628($fp)
	li $t0, 4
	lw $t1, -628($fp)
	mul $t0, $t0, $t1
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	lw $t1, -624($fp)
	add $t0, $t0, $t1
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	lw $t1, 0($t0)
	sw $t1, -640($fp)
	lw $t0, -640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -644($fp)
	li $t0, 1
	sw $t0, -648($fp)
	li $t0, 4
	lw $t1, -648($fp)
	mul $t0, $t0, $t1
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	lw $t1, -644($fp)
	add $t0, $t0, $t1
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	lw $t1, 0($t0)
	sw $t1, -660($fp)
	lw $t0, -660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -664($fp)
	li $t0, 2
	sw $t0, -668($fp)
	li $t0, 4
	lw $t1, -668($fp)
	mul $t0, $t0, $t1
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	lw $t1, -664($fp)
	add $t0, $t0, $t1
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	lw $t1, 0($t0)
	sw $t1, -680($fp)
	lw $t0, -680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -684($fp)
	li $t0, 3
	sw $t0, -688($fp)
	li $t0, 4
	lw $t1, -688($fp)
	mul $t0, $t0, $t1
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	lw $t1, -684($fp)
	add $t0, $t0, $t1
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	lw $t1, 0($t0)
	sw $t1, -700($fp)
	lw $t0, -700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -704($fp)
	li $t0, 4
	sw $t0, -708($fp)
	li $t0, 4
	lw $t1, -708($fp)
	mul $t0, $t0, $t1
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	lw $t1, -704($fp)
	add $t0, $t0, $t1
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	lw $t1, 0($t0)
	sw $t1, -720($fp)
	lw $t0, -720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 42018
	sw $t0, -724($fp)
	lw $ra, -4($fp)
	lw $v0, -724($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f15:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -548
	li $t0, 24609
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	li $t0, 50349
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	li $t0, 37691
	sw $t0, -68($fp)
	addi $t0, $fp, -40
	sw $t0, -72($fp)
	li $t0, 0
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
	li $t0, 50363
	sw $t0, -92($fp)
	addi $t0, $fp, -40
	sw $t0, -96($fp)
	li $t0, 1
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -104($fp)
	lw $t0, -96($fp)
	lw $t1, -104($fp)
	add $t0, $t0, $t1
	sw $t0, -108($fp)
	lw $t0, -92($fp)
	lw $t1, -108($fp)
	sw $t0, 0($t1)
	lw $t0, -108($fp)
	lw $t1, 0($t0)
	sw $t1, -112($fp)
	li $t0, 30392
	sw $t0, -116($fp)
	addi $t0, $fp, -40
	sw $t0, -120($fp)
	li $t0, 2
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
	li $t0, 54410
	sw $t0, -140($fp)
	addi $t0, $fp, -40
	sw $t0, -144($fp)
	li $t0, 3
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
	li $t0, 10162
	sw $t0, -164($fp)
	addi $t0, $fp, -40
	sw $t0, -168($fp)
	li $t0, 4
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
	li $t0, 150
	sw $t0, -188($fp)
	addi $t0, $fp, -40
	sw $t0, -192($fp)
	li $t0, 5
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
	li $t0, 17122
	sw $t0, -212($fp)
	addi $t0, $fp, -40
	sw $t0, -216($fp)
	li $t0, 6
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
	li $t0, 61167
	sw $t0, -236($fp)
	addi $t0, $fp, -40
	sw $t0, -240($fp)
	li $t0, 7
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
	li $t0, 39707
	sw $t0, -260($fp)
	addi $t0, $fp, -40
	sw $t0, -264($fp)
	li $t0, 8
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
	li $t0, 40003
	sw $t0, -284($fp)
	li $t0, 0
	lw $t1, -284($fp)
	sub $t0, $t0, $t1
	sw $t0, -288($fp)
	lw $t0, -48($fp)
	sw $t0, -292($fp)
	lw $t0, -288($fp)
	lw $t1, -292($fp)
	sub $t0, $t0, $t1
	sw $t0, -296($fp)
	addi $t0, $fp, -40
	sw $t0, -300($fp)
	li $t0, 0
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
	li $t0, 0
	lw $t1, -316($fp)
	sub $t0, $t0, $t1
	sw $t0, -320($fp)
	li $t0, 0
	sw $t0, -324($fp)
	li $t0, 40379
	sw $t0, -328($fp)
	lw $t1, -328($fp)
	li $t2, 0
	bne $t1, $t2, label603
	j label604
label603:
	li $t0, 1
	sw $t0, -324($fp)
label604:
	addi $t0, $fp, -40
	sw $t0, -332($fp)
	li $t0, 7
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
	lw $t0, -48($fp)
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -356($fp)
	addi $sp, $sp, -4
	lw $t0, -296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -356($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -360($fp)
	addi $sp, $sp, 24
	lw $t0, -48($fp)
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -60($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -372($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
	sw $t0, -392($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -412($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -432($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -452($fp)
	li $t0, 4
	sw $t0, -456($fp)
	li $t0, 4
	lw $t1, -456($fp)
	mul $t0, $t0, $t1
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	lw $t1, -452($fp)
	add $t0, $t0, $t1
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	lw $t1, 0($t0)
	sw $t1, -468($fp)
	lw $t0, -468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -472($fp)
	li $t0, 5
	sw $t0, -476($fp)
	li $t0, 4
	lw $t1, -476($fp)
	mul $t0, $t0, $t1
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	lw $t1, -472($fp)
	add $t0, $t0, $t1
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	lw $t1, 0($t0)
	sw $t1, -488($fp)
	lw $t0, -488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -492($fp)
	li $t0, 6
	sw $t0, -496($fp)
	li $t0, 4
	lw $t1, -496($fp)
	mul $t0, $t0, $t1
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	lw $t1, -492($fp)
	add $t0, $t0, $t1
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	lw $t1, 0($t0)
	sw $t1, -508($fp)
	lw $t0, -508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -512($fp)
	li $t0, 7
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
	lw $t0, -528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -532($fp)
	li $t0, 8
	sw $t0, -536($fp)
	li $t0, 4
	lw $t1, -536($fp)
	mul $t0, $t0, $t1
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	lw $t1, -532($fp)
	add $t0, $t0, $t1
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	lw $t1, 0($t0)
	sw $t1, -548($fp)
	lw $t0, -548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 47116
	sw $t0, -552($fp)
	lw $ra, -4($fp)
	lw $v0, -552($fp)
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
