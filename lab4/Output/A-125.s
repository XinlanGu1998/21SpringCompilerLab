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
	addi $sp, $sp, -660
	li $t0, 61926
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 6392
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	li $t0, 754
	sw $t0, -44($fp)
	addi $t0, $fp, -16
	sw $t0, -48($fp)
	li $t0, 0
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
	li $t0, 27488
	sw $t0, -68($fp)
	addi $t0, $fp, -16
	sw $t0, -72($fp)
	li $t0, 1
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
	li $t0, 32789
	sw $t0, -92($fp)
	addi $t0, $fp, -16
	sw $t0, -96($fp)
	li $t0, 2
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
	li $t0, 36180
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	li $t0, 52087
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	lw $t0, -24($fp)
	sw $t0, -140($fp)
	li $t0, 54818
	sw $t0, -144($fp)
	lw $t0, -140($fp)
	lw $t1, -144($fp)
	mul $t0, $t0, $t1
	sw $t0, -148($fp)
	lw $t1, -148($fp)
	li $t2, 0
	bne $t1, $t2, label121
	j label122
label121:
	jal f6
	sw $v0, -152($fp)
	addi $sp, $sp, 4
	lw $t1, -152($fp)
	li $t2, 0
	bne $t1, $t2, label124
	j label125
label124:
	li $t0, 0
	sw $t0, -156($fp)
	lw $t0, -132($fp)
	sw $t0, -160($fp)
	lw $t0, -24($fp)
	sw $t0, -164($fp)
	lw $t0, -160($fp)
	lw $t1, -164($fp)
	mul $t0, $t0, $t1
	sw $t0, -168($fp)
	lw $t0, -36($fp)
	sw $t0, -172($fp)
	lw $t0, -168($fp)
	lw $t1, -172($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -176($fp)
	li $t0, 0
	lw $t1, -176($fp)
	sub $t0, $t0, $t1
	sw $t0, -180($fp)
	li $t0, 0
	sw $t0, -184($fp)
	lw $t0, -24($fp)
	sw $t0, -188($fp)
	li $t0, 0
	lw $t1, -188($fp)
	sub $t0, $t0, $t1
	sw $t0, -192($fp)
	lw $t1, -192($fp)
	li $t2, 0
	bne $t1, $t2, label133
	j label132
label132:
	li $t0, 1
	sw $t0, -184($fp)
label133:
	lw $t1, -180($fp)
	lw $t2, -184($fp)
	blt $t1, $t2, label130
	j label131
label130:
	li $t0, 1
	sw $t0, -156($fp)
label131:
	addi $t0, $fp, -16
	sw $t0, -196($fp)
	li $t0, 8235
	sw $t0, -200($fp)
	lw $t0, -120($fp)
	sw $t0, -204($fp)
	lw $t0, -200($fp)
	lw $t1, -204($fp)
	mul $t0, $t0, $t1
	sw $t0, -208($fp)
	li $t0, 4
	lw $t1, -208($fp)
	mul $t0, $t0, $t1
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	lw $t1, -196($fp)
	add $t0, $t0, $t1
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	lw $t1, 0($t0)
	sw $t1, -220($fp)
	lw $t1, -156($fp)
	lw $t2, -220($fp)
	bgt $t1, $t2, label127
	j label128
label127:
	li $t0, 37891
	sw $t0, -224($fp)
	lw $t0, -132($fp)
	sw $t0, -228($fp)
	lw $t0, -224($fp)
	lw $t1, -228($fp)
	mul $t0, $t0, $t1
	sw $t0, -232($fp)
	jal f6
	sw $v0, -236($fp)
	addi $sp, $sp, 4
	lw $t0, -36($fp)
	sw $t0, -240($fp)
	lw $t0, -236($fp)
	lw $t1, -240($fp)
	mul $t0, $t0, $t1
	sw $t0, -244($fp)
	jal f6
	sw $v0, -248($fp)
	addi $sp, $sp, 4
	lw $t0, -244($fp)
	lw $t1, -248($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -252($fp)
	lw $t0, -232($fp)
	lw $t1, -252($fp)
	sub $t0, $t0, $t1
	sw $t0, -256($fp)
	j label129
label128:
	li $t0, 1272
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	li $t0, 0
	sw $t0, -272($fp)
	li $t0, 0
	sw $t0, -276($fp)
	jal f6
	sw $v0, -280($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -16
	sw $t0, -284($fp)
	li $t0, 2
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
	lw $t0, -280($fp)
	lw $t1, -300($fp)
	mul $t0, $t0, $t1
	sw $t0, -304($fp)
	li $t0, 26954
	sw $t0, -308($fp)
	li $t0, 2925
	sw $t0, -312($fp)
	lw $t0, -308($fp)
	lw $t1, -312($fp)
	mul $t0, $t0, $t1
	sw $t0, -316($fp)
	li $t0, 1
	sw $t0, -320($fp)
	lw $t0, -316($fp)
	lw $t1, -320($fp)
	mul $t0, $t0, $t1
	sw $t0, -324($fp)
	lw $t1, -304($fp)
	lw $t2, -324($fp)
	beq $t1, $t2, label136
	j label137
label136:
	li $t0, 1
	sw $t0, -276($fp)
label137:
	lw $t0, -264($fp)
	sw $t0, -328($fp)
	lw $t1, -276($fp)
	lw $t2, -328($fp)
	bne $t1, $t2, label134
	j label135
label134:
	li $t0, 1
	sw $t0, -272($fp)
label135:
	li $t0, 0
	sw $t0, -332($fp)
	li $t0, 39107
	sw $t0, -336($fp)
	li $t0, 19214
	sw $t0, -340($fp)
	lw $t0, -336($fp)
	lw $t1, -340($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -344($fp)
	jal f6
	sw $v0, -348($fp)
	addi $sp, $sp, 4
	lw $t0, -344($fp)
	lw $t1, -348($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -352($fp)
	li $t0, 0
	lw $t1, -352($fp)
	sub $t0, $t0, $t1
	sw $t0, -356($fp)
	jal f6
	sw $v0, -360($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -360($fp)
	sub $t0, $t0, $t1
	sw $t0, -364($fp)
	lw $t1, -356($fp)
	lw $t2, -364($fp)
	beq $t1, $t2, label138
	j label139
label138:
	li $t0, 1
	sw $t0, -332($fp)
label139:
	jal f6
	sw $v0, -368($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -372($fp)
	lw $t0, -132($fp)
	sw $t0, -376($fp)
	li $t0, 0
	lw $t1, -376($fp)
	sub $t0, $t0, $t1
	sw $t0, -380($fp)
	lw $t1, -380($fp)
	li $t2, 0
	bne $t1, $t2, label142
	j label141
label142:
	li $t0, 39650
	sw $t0, -384($fp)
	li $t0, 44904
	sw $t0, -388($fp)
	li $t0, 0
	lw $t1, -388($fp)
	sub $t0, $t0, $t1
	sw $t0, -392($fp)
	lw $t0, -384($fp)
	lw $t1, -392($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -396($fp)
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
	bne $t1, $t2, label140
	j label141
label140:
	li $t0, 1
	sw $t0, -372($fp)
label141:
label129:
	j label126
label125:
	lw $t0, -36($fp)
	sw $t0, -408($fp)
	li $t0, 36083
	sw $t0, -412($fp)
	lw $t0, -408($fp)
	lw $t1, -412($fp)
	add $t0, $t0, $t1
	sw $t0, -416($fp)
	li $t0, 11474
	sw $t0, -420($fp)
	lw $t0, -416($fp)
	lw $t1, -420($fp)
	add $t0, $t0, $t1
	sw $t0, -424($fp)
	li $t0, 8614
	sw $t0, -428($fp)
	lw $t0, -424($fp)
	lw $t1, -428($fp)
	add $t0, $t0, $t1
	sw $t0, -432($fp)
	li $t0, 7667
	sw $t0, -436($fp)
	lw $t0, -432($fp)
	lw $t1, -436($fp)
	add $t0, $t0, $t1
	sw $t0, -440($fp)
	lw $ra, -4($fp)
	lw $v0, -440($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label126:
	j label123
label122:
	li $t0, 0
	sw $t0, -444($fp)
	addi $t0, $fp, -16
	sw $t0, -448($fp)
	jal f6
	sw $v0, -452($fp)
	addi $sp, $sp, 4
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
	lw $t1, -464($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label143
label143:
	li $t0, 1
	sw $t0, -444($fp)
label144:
	lw $ra, -4($fp)
	lw $v0, -444($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label123:
	lw $t0, -24($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -36($fp)
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -476($fp)
	li $t0, 0
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
	addi $t0, $fp, -16
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
	lw $t0, -512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -516($fp)
	li $t0, 2
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
	lw $t0, -120($fp)
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -544($fp)
	lw $t0, -24($fp)
	sw $t0, -548($fp)
	li $t0, 0
	sw $t0, -552($fp)
	jal f6
	sw $v0, -556($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -556($fp)
	sub $t0, $t0, $t1
	sw $t0, -560($fp)
	lw $t1, -560($fp)
	li $t2, 0
	bne $t1, $t2, label148
	j label147
label147:
	li $t0, 1
	sw $t0, -552($fp)
label148:
	lw $t1, -548($fp)
	lw $t2, -552($fp)
	bge $t1, $t2, label145
	j label146
label145:
	li $t0, 1
	sw $t0, -544($fp)
label146:
	lw $ra, -4($fp)
	lw $v0, -544($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -564($fp)
	lw $t0, -36($fp)
	sw $t0, -568($fp)
	lw $t1, -568($fp)
	li $t2, 0
	bne $t1, $t2, label150
	j label149
label149:
	li $t0, 1
	sw $t0, -564($fp)
label150:
	li $t0, 0
	sw $t0, -572($fp)
	li $t0, 33775
	sw $t0, -576($fp)
	lw $t1, -576($fp)
	li $t2, 0
	bne $t1, $t2, label153
	j label152
label153:
	jal f6
	sw $v0, -580($fp)
	addi $sp, $sp, 4
	lw $t1, -580($fp)
	li $t2, 0
	bne $t1, $t2, label151
	j label152
label151:
	li $t0, 1
	sw $t0, -572($fp)
label152:
	lw $t0, -572($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -584($fp)
	lw $t0, -24($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -36($fp)
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
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
	addi $t0, $fp, -16
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
	addi $t0, $fp, -16
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
	lw $t0, -120($fp)
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 28162
	sw $t0, -664($fp)
	lw $ra, -4($fp)
	lw $v0, -664($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2732
	li $t0, 33540
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	li $t0, 9366
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	li $t0, 27969
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	li $t0, 63383
	sw $t0, -152($fp)
	addi $t0, $fp, -36
	sw $t0, -156($fp)
	li $t0, 0
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
	li $t0, 454
	sw $t0, -176($fp)
	addi $t0, $fp, -36
	sw $t0, -180($fp)
	li $t0, 1
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -188($fp)
	lw $t0, -180($fp)
	lw $t1, -188($fp)
	add $t0, $t0, $t1
	sw $t0, -192($fp)
	lw $t0, -176($fp)
	lw $t1, -192($fp)
	sw $t0, 0($t1)
	lw $t0, -192($fp)
	lw $t1, 0($t0)
	sw $t1, -196($fp)
	li $t0, 24359
	sw $t0, -200($fp)
	addi $t0, $fp, -36
	sw $t0, -204($fp)
	li $t0, 2
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -212($fp)
	lw $t0, -204($fp)
	lw $t1, -212($fp)
	add $t0, $t0, $t1
	sw $t0, -216($fp)
	lw $t0, -200($fp)
	lw $t1, -216($fp)
	sw $t0, 0($t1)
	lw $t0, -216($fp)
	lw $t1, 0($t0)
	sw $t1, -220($fp)
	li $t0, 4240
	sw $t0, -224($fp)
	addi $t0, $fp, -36
	sw $t0, -228($fp)
	li $t0, 3
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -236($fp)
	lw $t0, -228($fp)
	lw $t1, -236($fp)
	add $t0, $t0, $t1
	sw $t0, -240($fp)
	lw $t0, -224($fp)
	lw $t1, -240($fp)
	sw $t0, 0($t1)
	lw $t0, -240($fp)
	lw $t1, 0($t0)
	sw $t1, -244($fp)
	li $t0, 1208
	sw $t0, -248($fp)
	addi $t0, $fp, -36
	sw $t0, -252($fp)
	li $t0, 4
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
	li $t0, 51848
	sw $t0, -272($fp)
	addi $t0, $fp, -36
	sw $t0, -276($fp)
	li $t0, 5
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
	li $t0, 37029
	sw $t0, -296($fp)
	addi $t0, $fp, -36
	sw $t0, -300($fp)
	li $t0, 6
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
	li $t0, 37389
	sw $t0, -320($fp)
	addi $t0, $fp, -36
	sw $t0, -324($fp)
	li $t0, 7
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
	li $t0, 38399
	sw $t0, -344($fp)
	addi $t0, $fp, -60
	sw $t0, -348($fp)
	li $t0, 0
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
	li $t0, 26311
	sw $t0, -368($fp)
	addi $t0, $fp, -60
	sw $t0, -372($fp)
	li $t0, 1
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
	li $t0, 45624
	sw $t0, -392($fp)
	addi $t0, $fp, -60
	sw $t0, -396($fp)
	li $t0, 2
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
	li $t0, 10755
	sw $t0, -416($fp)
	addi $t0, $fp, -60
	sw $t0, -420($fp)
	li $t0, 3
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
	li $t0, 27583
	sw $t0, -440($fp)
	addi $t0, $fp, -60
	sw $t0, -444($fp)
	li $t0, 4
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
	li $t0, 48153
	sw $t0, -464($fp)
	addi $t0, $fp, -60
	sw $t0, -468($fp)
	li $t0, 5
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
	li $t0, 47689
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	li $t0, 54537
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	li $t0, 51078
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	li $t0, 62126
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	li $t0, 28108
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	li $t0, 4756
	sw $t0, -548($fp)
	addi $t0, $fp, -80
	sw $t0, -552($fp)
	li $t0, 0
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
	li $t0, 36240
	sw $t0, -572($fp)
	addi $t0, $fp, -80
	sw $t0, -576($fp)
	li $t0, 1
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
	li $t0, 7476
	sw $t0, -596($fp)
	addi $t0, $fp, -80
	sw $t0, -600($fp)
	li $t0, 2
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
	li $t0, 40839
	sw $t0, -620($fp)
	addi $t0, $fp, -80
	sw $t0, -624($fp)
	li $t0, 3
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
	li $t0, 47714
	sw $t0, -644($fp)
	addi $t0, $fp, -80
	sw $t0, -648($fp)
	li $t0, 4
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
	li $t0, 16091
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	li $t0, 48507
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	li $t0, 15954
	sw $t0, -692($fp)
	addi $t0, $fp, -112
	sw $t0, -696($fp)
	li $t0, 0
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
	li $t0, 44253
	sw $t0, -716($fp)
	addi $t0, $fp, -112
	sw $t0, -720($fp)
	li $t0, 1
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
	li $t0, 16511
	sw $t0, -740($fp)
	addi $t0, $fp, -112
	sw $t0, -744($fp)
	li $t0, 2
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
	li $t0, 25320
	sw $t0, -764($fp)
	addi $t0, $fp, -112
	sw $t0, -768($fp)
	li $t0, 3
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
	li $t0, 6687
	sw $t0, -788($fp)
	addi $t0, $fp, -112
	sw $t0, -792($fp)
	li $t0, 4
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
	li $t0, 14359
	sw $t0, -812($fp)
	addi $t0, $fp, -112
	sw $t0, -816($fp)
	li $t0, 5
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
	li $t0, 25774
	sw $t0, -836($fp)
	addi $t0, $fp, -112
	sw $t0, -840($fp)
	li $t0, 6
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
	li $t0, 31046
	sw $t0, -860($fp)
	addi $t0, $fp, -112
	sw $t0, -864($fp)
	li $t0, 7
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
	li $t0, 18599
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	sw $t0, -892($fp)
	li $t0, 26983
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	sw $t0, -904($fp)
	li $t0, 17358
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	sw $t0, -916($fp)
	li $t0, 55628
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	sw $t0, -928($fp)
	lw $t0, -888($fp)
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -900($fp)
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -912($fp)
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -924($fp)
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -948($fp)
	li $t0, 64372
	sw $t0, -952($fp)
	lw $t0, -888($fp)
	sw $t0, -956($fp)
	lw $t0, -952($fp)
	lw $t1, -956($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -960($fp)
	addi $t0, $fp, -80
	sw $t0, -964($fp)
	li $t0, 0
	sw $t0, -968($fp)
	li $t0, 55758
	sw $t0, -972($fp)
	li $t0, 16403
	sw $t0, -976($fp)
	lw $t1, -972($fp)
	lw $t2, -976($fp)
	bge $t1, $t2, label156
	j label157
label156:
	li $t0, 1
	sw $t0, -968($fp)
label157:
	li $t0, 4
	lw $t1, -968($fp)
	mul $t0, $t0, $t1
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	lw $t1, -964($fp)
	add $t0, $t0, $t1
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	lw $t1, 0($t0)
	sw $t1, -988($fp)
	lw $t1, -960($fp)
	lw $t2, -988($fp)
	bgt $t1, $t2, label154
	j label155
label154:
	li $t0, 1
	sw $t0, -948($fp)
label155:
	lw $ra, -4($fp)
	lw $v0, -948($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -992($fp)
	li $t0, 44460
	sw $t0, -996($fp)
	li $t0, 0
	lw $t1, -996($fp)
	sub $t0, $t0, $t1
	sw $t0, -1000($fp)
	li $t0, 977
	sw $t0, -1004($fp)
	lw $t1, -1000($fp)
	lw $t2, -1004($fp)
	beq $t1, $t2, label162
	j label163
label162:
	li $t0, 1
	sw $t0, -992($fp)
label163:
	addi $sp, $sp, -4
	lw $t0, -992($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1008($fp)
	addi $sp, $sp, 8
	lw $t1, -1008($fp)
	li $t2, 0
	bne $t1, $t2, label161
	j label159
label161:
	lw $t0, -528($fp)
	sw $t0, -1012($fp)
	li $t0, 43986
	sw $t0, -1016($fp)
	lw $t0, -684($fp)
	sw $t0, -1020($fp)
	lw $t0, -1016($fp)
	lw $t1, -1020($fp)
	mul $t0, $t0, $t1
	sw $t0, -1024($fp)
	lw $t0, -1012($fp)
	lw $t1, -1024($fp)
	sub $t0, $t0, $t1
	sw $t0, -1028($fp)
	lw $t1, -1028($fp)
	li $t2, 0
	bne $t1, $t2, label158
	j label159
label158:
	li $t0, 27078
	sw $t0, -1032($fp)
	lw $t0, -900($fp)
	sw $t0, -1036($fp)
	lw $t0, -1032($fp)
	lw $t1, -1036($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1040($fp)
	lw $t0, -924($fp)
	sw $t0, -1044($fp)
	lw $t0, -1040($fp)
	lw $t1, -1044($fp)
	mul $t0, $t0, $t1
	sw $t0, -1048($fp)
	jal f6
	sw $v0, -1052($fp)
	addi $sp, $sp, 4
	lw $t0, -1048($fp)
	lw $t1, -1052($fp)
	mul $t0, $t0, $t1
	sw $t0, -1056($fp)
	addi $t0, $fp, -60
	sw $t0, -1060($fp)
	li $t0, 5
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
	lw $t0, -1056($fp)
	lw $t1, -1076($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1080($fp)
	lw $t0, -144($fp)
	sw $t0, -1084($fp)
	li $t0, 45257
	sw $t0, -1088($fp)
	lw $t0, -1084($fp)
	lw $t1, -1088($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1092($fp)
	li $t0, 0
	lw $t1, -1092($fp)
	sub $t0, $t0, $t1
	sw $t0, -1096($fp)
	lw $t0, -1080($fp)
	lw $t1, -1096($fp)
	sub $t0, $t0, $t1
	sw $t0, -1100($fp)
	j label160
label159:
	li $t0, 0
	sw $t0, -1104($fp)
	addi $t0, $fp, -60
	sw $t0, -1108($fp)
	lw $t0, -528($fp)
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
	lw $t1, -1124($fp)
	li $t2, 0
	bne $t1, $t2, label165
	j label164
label164:
	li $t0, 1
	sw $t0, -1104($fp)
label165:
	lw $ra, -4($fp)
	lw $v0, -1104($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 61095
	sw $t0, -1128($fp)
	lw $ra, -4($fp)
	lw $v0, -1128($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -120($fp)
	sw $t0, -1132($fp)
	lw $ra, -4($fp)
	lw $v0, -1132($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label160:
label166:
	addi $t0, $fp, -80
	sw $t0, -1136($fp)
	li $t0, 0
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
	li $t0, 3036
	sw $t0, -1156($fp)
	lw $t0, -1152($fp)
	lw $t1, -1156($fp)
	mul $t0, $t0, $t1
	sw $t0, -1160($fp)
	li $t0, 0
	sw $t0, -1164($fp)
	li $t0, 58216
	sw $t0, -1168($fp)
	lw $t0, -144($fp)
	sw $t0, -1172($fp)
	lw $t0, -1168($fp)
	lw $t1, -1172($fp)
	mul $t0, $t0, $t1
	sw $t0, -1176($fp)
	li $t0, 63675
	sw $t0, -1180($fp)
	lw $t1, -1176($fp)
	lw $t2, -1180($fp)
	ble $t1, $t2, label170
	j label171
label170:
	li $t0, 1
	sw $t0, -1164($fp)
label171:
	lw $t1, -1160($fp)
	lw $t2, -1164($fp)
	beq $t1, $t2, label169
	j label168
label169:
	li $t0, 0
	sw $t0, -1184($fp)
	lw $t0, -120($fp)
	sw $t0, -1188($fp)
	lw $t0, 4($fp)
	sw $t0, -1192($fp)
	lw $t1, -1188($fp)
	lw $t2, -1192($fp)
	bgt $t1, $t2, label172
	j label174
label174:
	li $t0, 19127
	sw $t0, -1196($fp)
	lw $t1, -1196($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label173
label172:
	li $t0, 1
	sw $t0, -1184($fp)
label173:
	addi $sp, $sp, -4
	lw $t0, -1184($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1200($fp)
	addi $sp, $sp, 8
	li $t0, 41187
	sw $t0, -1204($fp)
	li $t0, 14093
	sw $t0, -1208($fp)
	lw $t0, -1204($fp)
	lw $t1, -1208($fp)
	mul $t0, $t0, $t1
	sw $t0, -1212($fp)
	lw $t0, -1200($fp)
	lw $t1, -1212($fp)
	add $t0, $t0, $t1
	sw $t0, -1216($fp)
	lw $t1, -1216($fp)
	li $t2, 0
	bne $t1, $t2, label167
	j label168
label167:
	lw $t0, -912($fp)
	sw $t0, -1220($fp)
	lw $ra, -4($fp)
	lw $v0, -1220($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label166
label168:
	li $t0, 0
	sw $t0, -1224($fp)
	addi $t0, $fp, -36
	sw $t0, -1228($fp)
	lw $t0, -516($fp)
	sw $t0, -1232($fp)
	li $t0, 4
	lw $t1, -1232($fp)
	mul $t0, $t0, $t1
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	lw $t1, -1228($fp)
	add $t0, $t0, $t1
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	lw $t1, 0($t0)
	sw $t1, -1244($fp)
	lw $t1, -1244($fp)
	li $t2, 0
	bne $t1, $t2, label178
	j label179
label178:
	li $t0, 1
	sw $t0, -1224($fp)
label179:
	lw $t0, -1224($fp)
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -1248($fp)
	lw $t1, -1248($fp)
	li $t2, 0
	bne $t1, $t2, label175
	j label176
label175:
label180:
	addi $t0, $fp, -112
	sw $t0, -1252($fp)
	li $t0, 0
	sw $t0, -1256($fp)
	jal f6
	sw $v0, -1260($fp)
	addi $sp, $sp, 4
	lw $t0, -492($fp)
	sw $t0, -1264($fp)
	lw $t1, -1260($fp)
	lw $t2, -1264($fp)
	ble $t1, $t2, label183
	j label184
label183:
	li $t0, 1
	sw $t0, -1256($fp)
label184:
	li $t0, 4
	lw $t1, -1256($fp)
	mul $t0, $t0, $t1
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	lw $t1, -1252($fp)
	add $t0, $t0, $t1
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	lw $t1, 0($t0)
	sw $t1, -1276($fp)
	li $t0, 0
	sw $t0, -1280($fp)
	lw $t0, -672($fp)
	sw $t0, -1284($fp)
	lw $t0, -540($fp)
	sw $t0, -1288($fp)
	lw $t0, -1284($fp)
	lw $t1, -1288($fp)
	mul $t0, $t0, $t1
	sw $t0, -1292($fp)
	lw $t1, -1292($fp)
	li $t2, 0
	bne $t1, $t2, label185
	j label187
label187:
	lw $t0, -528($fp)
	sw $t0, -1296($fp)
	lw $t1, -1296($fp)
	li $t2, 0
	bne $t1, $t2, label185
	j label186
label185:
	li $t0, 1
	sw $t0, -1280($fp)
label186:
	addi $sp, $sp, -4
	lw $t0, -1280($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1300($fp)
	addi $sp, $sp, 8
	lw $t1, -1276($fp)
	lw $t2, -1300($fp)
	bgt $t1, $t2, label181
	j label182
label181:
	li $t0, 0
	sw $t0, -1304($fp)
	lw $t0, -120($fp)
	sw $t0, -1308($fp)
	li $t0, 0
	lw $t1, -1308($fp)
	sub $t0, $t0, $t1
	sw $t0, -1312($fp)
	lw $t0, -540($fp)
	sw $t0, -1316($fp)
	li $t0, 0
	lw $t1, -1316($fp)
	sub $t0, $t0, $t1
	sw $t0, -1320($fp)
	lw $t0, -1312($fp)
	lw $t1, -1320($fp)
	sub $t0, $t0, $t1
	sw $t0, -1324($fp)
	jal f6
	sw $v0, -1328($fp)
	addi $sp, $sp, 4
	lw $t1, -1324($fp)
	lw $t2, -1328($fp)
	beq $t1, $t2, label188
	j label189
label188:
	li $t0, 1
	sw $t0, -1304($fp)
label189:
	j label180
label182:
label176:
	li $t0, 0
	sw $t0, -1332($fp)
	li $t0, 0
	sw $t0, -1336($fp)
	lw $t0, -540($fp)
	sw $t0, -1340($fp)
	li $t0, 0
	lw $t1, -1340($fp)
	sub $t0, $t0, $t1
	sw $t0, -1344($fp)
	lw $t1, -1344($fp)
	li $t2, 0
	bne $t1, $t2, label193
	j label192
label192:
	li $t0, 1
	sw $t0, -1336($fp)
label193:
	li $t0, 0
	lw $t1, -1336($fp)
	sub $t0, $t0, $t1
	sw $t0, -1348($fp)
	li $t0, 0
	lw $t1, -1348($fp)
	sub $t0, $t0, $t1
	sw $t0, -1352($fp)
	lw $t1, -1352($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label190
label190:
	li $t0, 1
	sw $t0, -1332($fp)
label191:
	lw $t0, -132($fp)
	sw $t0, -1356($fp)
	li $t0, 63380
	sw $t0, -1360($fp)
	lw $t0, -1356($fp)
	lw $t1, -1360($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1364($fp)
	li $t0, 0
	lw $t1, -1364($fp)
	sub $t0, $t0, $t1
	sw $t0, -1368($fp)
	lw $ra, -4($fp)
	lw $v0, -1368($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 57699
	sw $t0, -1372($fp)
	lw $t1, -1372($fp)
	li $t2, 0
	bne $t1, $t2, label194
	j label195
label194:
	li $t0, 39413
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	sw $t0, -1384($fp)
	li $t0, 4531
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	sw $t0, -1396($fp)
	li $t0, 0
	sw $t0, -1400($fp)
	li $t0, 6522
	sw $t0, -1404($fp)
	li $t0, 0
	lw $t1, -1404($fp)
	sub $t0, $t0, $t1
	sw $t0, -1408($fp)
	lw $t1, -1408($fp)
	li $t2, 0
	bne $t1, $t2, label198
	j label197
label197:
	li $t0, 1
	sw $t0, -1400($fp)
label198:
	lw $t0, -1380($fp)
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1392($fp)
	sw $t0, -1416($fp)
	lw $t0, -1416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 65187
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	sw $t0, -1424($fp)
	addi $sp, $sp, -4
	lw $t0, -1424($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1428($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -1428($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1432($fp)
	addi $sp, $sp, 8
	lw $ra, -4($fp)
	lw $v0, -1432($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 35578
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	sw $t0, -1444($fp)
	li $t0, 25121
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	sw $t0, -1456($fp)
	li $t0, 26634
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	sw $t0, -1468($fp)
	li $t0, 52936
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	sw $t0, -1480($fp)
	li $t0, 0
	sw $t0, -1484($fp)
	li $t0, 0
	sw $t0, -1488($fp)
	li $t0, 15213
	sw $t0, -1492($fp)
	lw $t0, -132($fp)
	sw $t0, -1496($fp)
	lw $t1, -1492($fp)
	lw $t2, -1496($fp)
	beq $t1, $t2, label204
	j label205
label204:
	li $t0, 1
	sw $t0, -1488($fp)
label205:
	li $t0, 25470
	sw $t0, -1500($fp)
	lw $t1, -1488($fp)
	lw $t2, -1500($fp)
	beq $t1, $t2, label202
	j label203
label202:
	li $t0, 1
	sw $t0, -1484($fp)
label203:
	addi $sp, $sp, -4
	lw $t0, -1484($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1504($fp)
	addi $sp, $sp, 8
	lw $t1, -1504($fp)
	li $t2, 0
	bne $t1, $t2, label199
	j label200
label199:
	jal f6
	sw $v0, -1508($fp)
	addi $sp, $sp, 4
	lw $t1, -1508($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label209
label209:
	jal f6
	sw $v0, -1512($fp)
	addi $sp, $sp, 4
	lw $t1, -1512($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label207
label206:
	li $t0, 0
	sw $t0, -1516($fp)
	jal f6
	sw $v0, -1520($fp)
	addi $sp, $sp, 4
	lw $t1, -1520($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label212
label213:
	li $t0, 0
	sw $t0, -1524($fp)
	li $t0, 43158
	sw $t0, -1528($fp)
	lw $t0, -120($fp)
	sw $t0, -1532($fp)
	lw $t1, -1528($fp)
	lw $t2, -1532($fp)
	ble $t1, $t2, label214
	j label215
label214:
	li $t0, 1
	sw $t0, -1524($fp)
label215:
	lw $t0, -684($fp)
	sw $t0, -1536($fp)
	lw $t1, -1524($fp)
	lw $t2, -1536($fp)
	bne $t1, $t2, label210
	j label212
label212:
	li $t0, 0
	sw $t0, -1540($fp)
	li $t0, 0
	sw $t0, -1544($fp)
	lw $t0, -144($fp)
	sw $t0, -1548($fp)
	lw $t0, -1452($fp)
	sw $t0, -1552($fp)
	lw $t1, -1548($fp)
	lw $t2, -1552($fp)
	bgt $t1, $t2, label218
	j label219
label218:
	li $t0, 1
	sw $t0, -1544($fp)
label219:
	li $t0, 31616
	sw $t0, -1556($fp)
	lw $t1, -1544($fp)
	lw $t2, -1556($fp)
	bgt $t1, $t2, label216
	j label217
label216:
	li $t0, 1
	sw $t0, -1540($fp)
label217:
	lw $t0, -504($fp)
	sw $t0, -1560($fp)
	lw $t0, -1476($fp)
	sw $t0, -1564($fp)
	lw $t0, -1560($fp)
	lw $t1, -1564($fp)
	add $t0, $t0, $t1
	sw $t0, -1568($fp)
	lw $t1, -1540($fp)
	lw $t2, -1568($fp)
	beq $t1, $t2, label210
	j label211
label210:
	li $t0, 1
	sw $t0, -1516($fp)
label211:
	lw $ra, -4($fp)
	lw $v0, -1516($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label208
label207:
	addi $t0, $fp, -80
	sw $t0, -1572($fp)
	li $t0, 0
	sw $t0, -1576($fp)
	li $t0, 0
	sw $t0, -1580($fp)
	li $t0, 4395
	sw $t0, -1584($fp)
	lw $t0, -528($fp)
	sw $t0, -1588($fp)
	lw $t1, -1584($fp)
	lw $t2, -1588($fp)
	bgt $t1, $t2, label225
	j label224
label225:
	lw $t0, -144($fp)
	sw $t0, -1592($fp)
	lw $t1, -1592($fp)
	li $t2, 0
	bne $t1, $t2, label223
	j label224
label223:
	li $t0, 1
	sw $t0, -1580($fp)
label224:
	addi $sp, $sp, -4
	lw $t0, -1580($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1596($fp)
	addi $sp, $sp, 8
	lw $t1, -1596($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label222
label222:
	lw $t0, -132($fp)
	sw $t0, -1600($fp)
	lw $t1, -1600($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label221
label220:
	li $t0, 1
	sw $t0, -1576($fp)
label221:
	li $t0, 4
	lw $t1, -1576($fp)
	mul $t0, $t0, $t1
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	lw $t1, -1572($fp)
	add $t0, $t0, $t1
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	lw $t1, 0($t0)
	sw $t1, -1612($fp)
	li $t0, 0
	sw $t0, -1616($fp)
	addi $t0, $fp, -80
	sw $t0, -1620($fp)
	lw $t0, -1464($fp)
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
	lw $t1, -1636($fp)
	li $t2, 0
	bne $t1, $t2, label227
	j label226
label226:
	li $t0, 1
	sw $t0, -1616($fp)
label227:
	lw $t0, -1612($fp)
	lw $t1, -1616($fp)
	mul $t0, $t0, $t1
	sw $t0, -1640($fp)
	lw $ra, -4($fp)
	lw $v0, -1640($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label208:
	j label201
label200:
	lw $t0, -120($fp)
	sw $t0, -1644($fp)
	li $t0, 0
	sw $t0, -1648($fp)
	addi $t0, $fp, -60
	sw $t0, -1652($fp)
	lw $t0, -504($fp)
	sw $t0, -1656($fp)
	li $t0, 4
	lw $t1, -1656($fp)
	mul $t0, $t0, $t1
	sw $t0, -1660($fp)
	lw $t0, -1660($fp)
	lw $t1, -1652($fp)
	add $t0, $t0, $t1
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	lw $t1, 0($t0)
	sw $t1, -1668($fp)
	lw $t1, -1668($fp)
	li $t2, 0
	bne $t1, $t2, label229
	j label228
label228:
	li $t0, 1
	sw $t0, -1648($fp)
label229:
	lw $t0, -1644($fp)
	lw $t1, -1648($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1672($fp)
	lw $ra, -4($fp)
	lw $v0, -1672($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label201:
	addi $t0, $fp, -80
	sw $t0, -1676($fp)
	lw $t0, -540($fp)
	sw $t0, -1680($fp)
	li $t0, 44135
	sw $t0, -1684($fp)
	li $t0, 0
	lw $t1, -1684($fp)
	sub $t0, $t0, $t1
	sw $t0, -1688($fp)
	lw $t0, -1680($fp)
	lw $t1, -1688($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1692($fp)
	li $t0, 0
	lw $t1, -1692($fp)
	sub $t0, $t0, $t1
	sw $t0, -1696($fp)
	li $t0, 0
	lw $t1, -1696($fp)
	sub $t0, $t0, $t1
	sw $t0, -1700($fp)
	li $t0, 4
	lw $t1, -1700($fp)
	mul $t0, $t0, $t1
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	lw $t1, -1676($fp)
	add $t0, $t0, $t1
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	lw $t1, 0($t0)
	sw $t1, -1712($fp)
	li $t0, 0
	sw $t0, -1716($fp)
	lw $t0, 4($fp)
	sw $t0, -1720($fp)
	addi $sp, $sp, -4
	lw $t0, -1720($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1724($fp)
	addi $sp, $sp, 8
	lw $t1, -1724($fp)
	li $t2, 0
	bne $t1, $t2, label233
	j label231
label233:
	li $t0, 10066
	sw $t0, -1728($fp)
	lw $t1, -1728($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label231
label232:
	jal f6
	sw $v0, -1732($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -80
	sw $t0, -1736($fp)
	lw $t0, -1440($fp)
	sw $t0, -1740($fp)
	li $t0, 4
	lw $t1, -1740($fp)
	mul $t0, $t0, $t1
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	lw $t1, -1736($fp)
	add $t0, $t0, $t1
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	lw $t1, 0($t0)
	sw $t1, -1752($fp)
	lw $t0, -1732($fp)
	lw $t1, -1752($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1756($fp)
	lw $t1, -1756($fp)
	li $t2, 0
	bne $t1, $t2, label230
	j label231
label230:
	li $t0, 1
	sw $t0, -1716($fp)
label231:
	lw $t0, -1440($fp)
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1452($fp)
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1464($fp)
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1476($fp)
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1776($fp)
	li $t0, 0
	sw $t0, -1780($fp)
	addi $t0, $fp, -80
	sw $t0, -1784($fp)
	li $t0, 0
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
	bne $t1, $t2, label236
	j label237
label236:
	li $t0, 1
	sw $t0, -1780($fp)
label237:
	addi $t0, $fp, -80
	sw $t0, -1804($fp)
	li $t0, 0
	sw $t0, -1808($fp)
	li $t0, 4
	lw $t1, -1808($fp)
	mul $t0, $t0, $t1
	sw $t0, -1812($fp)
	lw $t0, -1812($fp)
	lw $t1, -1804($fp)
	add $t0, $t0, $t1
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	lw $t1, 0($t0)
	sw $t1, -1820($fp)
	lw $t0, -1780($fp)
	lw $t1, -1820($fp)
	mul $t0, $t0, $t1
	sw $t0, -1824($fp)
	jal f6
	sw $v0, -1828($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -1828($fp)
	sub $t0, $t0, $t1
	sw $t0, -1832($fp)
	li $t0, 6985
	sw $t0, -1836($fp)
	lw $t0, -1832($fp)
	lw $t1, -1836($fp)
	sub $t0, $t0, $t1
	sw $t0, -1840($fp)
	lw $t1, -1824($fp)
	lw $t2, -1840($fp)
	blt $t1, $t2, label234
	j label235
label234:
	li $t0, 1
	sw $t0, -1776($fp)
label235:
	lw $ra, -4($fp)
	lw $v0, -1776($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label238:
	lw $t0, -120($fp)
	sw $t0, -1844($fp)
	lw $t1, -1844($fp)
	li $t2, 0
	bne $t1, $t2, label240
	j label239
label239:
	li $t0, 38612
	sw $t0, -1848($fp)
	li $t0, 1
	sw $t0, -1852($fp)
	lw $t0, -1848($fp)
	lw $t1, -1852($fp)
	mul $t0, $t0, $t1
	sw $t0, -1856($fp)
	lw $t1, -1856($fp)
	li $t2, 0
	bne $t1, $t2, label241
	j label242
label241:
	jal f6
	sw $v0, -1860($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -1860($fp)
	sub $t0, $t0, $t1
	sw $t0, -1864($fp)
	lw $t0, -540($fp)
	sw $t0, -1868($fp)
	lw $t1, -1864($fp)
	lw $t2, -1868($fp)
	bne $t1, $t2, label244
	j label245
label244:
	li $t0, 0
	sw $t0, -1872($fp)
	addi $t0, $fp, -80
	sw $t0, -1876($fp)
	lw $t0, -132($fp)
	sw $t0, -1880($fp)
	li $t0, 4
	lw $t1, -1880($fp)
	mul $t0, $t0, $t1
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	lw $t1, -1876($fp)
	add $t0, $t0, $t1
	sw $t0, -1888($fp)
	lw $t0, -1888($fp)
	lw $t1, 0($t0)
	sw $t1, -1892($fp)
	lw $t1, -1892($fp)
	li $t2, 0
	bne $t1, $t2, label247
	j label249
label249:
	li $t0, 22946
	sw $t0, -1896($fp)
	li $t0, 41648
	sw $t0, -1900($fp)
	lw $t1, -1896($fp)
	lw $t2, -1900($fp)
	bne $t1, $t2, label247
	j label248
label247:
	li $t0, 1
	sw $t0, -1872($fp)
label248:
	lw $t0, -1872($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -1904($fp)
	j label246
label245:
	li $t0, 54151
	sw $t0, -1908($fp)
	li $t0, 0
	sw $t0, -1912($fp)
	lw $t0, -120($fp)
	sw $t0, -1916($fp)
	lw $t0, -1380($fp)
	sw $t0, -1920($fp)
	lw $t1, -1916($fp)
	lw $t2, -1920($fp)
	bgt $t1, $t2, label250
	j label252
label252:
	lw $t0, -1440($fp)
	sw $t0, -1924($fp)
	lw $t1, -1924($fp)
	li $t2, 0
	bne $t1, $t2, label250
	j label251
label250:
	li $t0, 1
	sw $t0, -1912($fp)
label251:
	addi $sp, $sp, -4
	lw $t0, -1912($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1928($fp)
	addi $sp, $sp, 8
	lw $t0, -1908($fp)
	lw $t1, -1928($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1932($fp)
label246:
	j label243
label242:
	li $t0, 0
	sw $t0, -1936($fp)
	lw $t0, -516($fp)
	sw $t0, -1940($fp)
	li $t0, 21085
	sw $t0, -1944($fp)
	lw $t0, -1940($fp)
	lw $t1, -1944($fp)
	mul $t0, $t0, $t1
	sw $t0, -1948($fp)
	li $t0, 0
	lw $t1, -1948($fp)
	sub $t0, $t0, $t1
	sw $t0, -1952($fp)
	jal f6
	sw $v0, -1956($fp)
	addi $sp, $sp, 4
	lw $t1, -1952($fp)
	lw $t2, -1956($fp)
	beq $t1, $t2, label253
	j label254
label253:
	li $t0, 1
	sw $t0, -1936($fp)
label254:
	lw $ra, -4($fp)
	lw $v0, -1936($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label243:
	j label238
label240:
	lw $t0, -1440($fp)
	sw $t0, -1960($fp)
	lw $t0, -1960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1452($fp)
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1464($fp)
	sw $t0, -1968($fp)
	lw $t0, -1968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1476($fp)
	sw $t0, -1972($fp)
	lw $t0, -1972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1976($fp)
	li $t0, 60775
	sw $t0, -1980($fp)
	li $t0, 29802
	sw $t0, -1984($fp)
	lw $t0, -144($fp)
	sw $t0, -1988($fp)
	lw $t0, -1984($fp)
	lw $t1, -1988($fp)
	mul $t0, $t0, $t1
	sw $t0, -1992($fp)
	lw $t0, -1980($fp)
	lw $t1, -1992($fp)
	add $t0, $t0, $t1
	sw $t0, -1996($fp)
	li $t0, 35178
	sw $t0, -2000($fp)
	lw $t1, -1996($fp)
	lw $t2, -2000($fp)
	beq $t1, $t2, label257
	j label256
label257:
	li $t0, 58620
	sw $t0, -2004($fp)
	li $t0, 0
	lw $t1, -2004($fp)
	sub $t0, $t0, $t1
	sw $t0, -2008($fp)
	li $t0, 0
	lw $t1, -2008($fp)
	sub $t0, $t0, $t1
	sw $t0, -2012($fp)
	li $t0, 0
	lw $t1, -2012($fp)
	sub $t0, $t0, $t1
	sw $t0, -2016($fp)
	lw $t1, -2016($fp)
	li $t2, 0
	bne $t1, $t2, label255
	j label256
label255:
	li $t0, 1
	sw $t0, -1976($fp)
label256:
	lw $ra, -4($fp)
	lw $v0, -1976($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label258:
	li $t0, 21965
	sw $t0, -2020($fp)
	lw $t0, -144($fp)
	sw $t0, -2024($fp)
	lw $t0, -2020($fp)
	lw $t1, -2024($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2028($fp)
	lw $t0, 4($fp)
	sw $t0, -2032($fp)
	lw $t0, -2028($fp)
	lw $t1, -2032($fp)
	add $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -2040($fp)
	lw $t1, -2040($fp)
	li $t2, 0
	bne $t1, $t2, label259
	j label260
label259:
	li $t0, 0
	sw $t0, -2044($fp)
	addi $t0, $fp, -80
	sw $t0, -2048($fp)
	li $t0, 9055
	sw $t0, -2052($fp)
	li $t0, 63151
	sw $t0, -2056($fp)
	lw $t0, -2052($fp)
	lw $t1, -2056($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2060($fp)
	li $t0, 4
	lw $t1, -2060($fp)
	mul $t0, $t0, $t1
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	lw $t1, -2048($fp)
	add $t0, $t0, $t1
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	lw $t1, 0($t0)
	sw $t1, -2072($fp)
	lw $t0, -1392($fp)
	sw $t0, -2076($fp)
	li $t0, 28487
	sw $t0, -2080($fp)
	lw $t0, -2076($fp)
	lw $t1, -2080($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2084($fp)
	lw $t0, -492($fp)
	sw $t0, -2088($fp)
	lw $t0, -2084($fp)
	lw $t1, -2088($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2092($fp)
	lw $t0, -2072($fp)
	lw $t1, -2092($fp)
	sub $t0, $t0, $t1
	sw $t0, -2096($fp)
	li $t0, 8706
	sw $t0, -2100($fp)
	lw $t1, -2096($fp)
	lw $t2, -2100($fp)
	bne $t1, $t2, label261
	j label262
label261:
	li $t0, 1
	sw $t0, -2044($fp)
label262:
	lw $ra, -4($fp)
	lw $v0, -2044($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label258
label260:
	j label196
label195:
	lw $t0, -144($fp)
	sw $t0, -2104($fp)
	lw $ra, -4($fp)
	lw $v0, -2104($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label196:
	lw $t0, -120($fp)
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -2112($fp)
	lw $t0, -2112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -2120($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -2140($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -2160($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -2180($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -2200($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -2220($fp)
	li $t0, 5
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
	addi $t0, $fp, -36
	sw $t0, -2240($fp)
	li $t0, 6
	sw $t0, -2244($fp)
	li $t0, 4
	lw $t1, -2244($fp)
	mul $t0, $t0, $t1
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	lw $t1, -2240($fp)
	add $t0, $t0, $t1
	sw $t0, -2252($fp)
	lw $t0, -2252($fp)
	lw $t1, 0($t0)
	sw $t1, -2256($fp)
	lw $t0, -2256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -2260($fp)
	li $t0, 7
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
	addi $t0, $fp, -60
	sw $t0, -2280($fp)
	li $t0, 0
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
	addi $t0, $fp, -60
	sw $t0, -2300($fp)
	li $t0, 1
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
	addi $t0, $fp, -60
	sw $t0, -2320($fp)
	li $t0, 2
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
	addi $t0, $fp, -60
	sw $t0, -2340($fp)
	li $t0, 3
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
	addi $t0, $fp, -60
	sw $t0, -2360($fp)
	li $t0, 4
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
	addi $t0, $fp, -60
	sw $t0, -2380($fp)
	li $t0, 5
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
	lw $t0, -492($fp)
	sw $t0, -2400($fp)
	lw $t0, -2400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -516($fp)
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -2412($fp)
	lw $t0, -2412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -540($fp)
	sw $t0, -2416($fp)
	lw $t0, -2416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2420($fp)
	li $t0, 0
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
	addi $t0, $fp, -80
	sw $t0, -2440($fp)
	li $t0, 1
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
	addi $t0, $fp, -80
	sw $t0, -2460($fp)
	li $t0, 2
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
	addi $t0, $fp, -80
	sw $t0, -2480($fp)
	li $t0, 3
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
	addi $t0, $fp, -80
	sw $t0, -2500($fp)
	li $t0, 4
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
	lw $t0, -672($fp)
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -684($fp)
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -2528($fp)
	li $t0, 0
	sw $t0, -2532($fp)
	li $t0, 4
	lw $t1, -2532($fp)
	mul $t0, $t0, $t1
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	lw $t1, -2528($fp)
	add $t0, $t0, $t1
	sw $t0, -2540($fp)
	lw $t0, -2540($fp)
	lw $t1, 0($t0)
	sw $t1, -2544($fp)
	lw $t0, -2544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -2548($fp)
	li $t0, 1
	sw $t0, -2552($fp)
	li $t0, 4
	lw $t1, -2552($fp)
	mul $t0, $t0, $t1
	sw $t0, -2556($fp)
	lw $t0, -2556($fp)
	lw $t1, -2548($fp)
	add $t0, $t0, $t1
	sw $t0, -2560($fp)
	lw $t0, -2560($fp)
	lw $t1, 0($t0)
	sw $t1, -2564($fp)
	lw $t0, -2564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -2568($fp)
	li $t0, 2
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
	lw $t0, -2584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -2588($fp)
	li $t0, 3
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
	addi $t0, $fp, -112
	sw $t0, -2608($fp)
	li $t0, 4
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
	addi $t0, $fp, -112
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
	lw $t0, -2644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -2648($fp)
	li $t0, 6
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
	lw $t0, -2664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -2668($fp)
	li $t0, 7
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
	addi $t0, $fp, -80
	sw $t0, -2688($fp)
	li $t0, 0
	sw $t0, -2692($fp)
	addi $t0, $fp, -60
	sw $t0, -2696($fp)
	li $t0, 0
	sw $t0, -2700($fp)
	li $t0, 4
	lw $t1, -2700($fp)
	mul $t0, $t0, $t1
	sw $t0, -2704($fp)
	lw $t0, -2704($fp)
	lw $t1, -2696($fp)
	add $t0, $t0, $t1
	sw $t0, -2708($fp)
	lw $t0, -2708($fp)
	lw $t1, 0($t0)
	sw $t1, -2712($fp)
	lw $t0, -504($fp)
	sw $t0, -2716($fp)
	lw $t1, -2712($fp)
	lw $t2, -2716($fp)
	beq $t1, $t2, label263
	j label265
label265:
	lw $t0, -132($fp)
	sw $t0, -2720($fp)
	lw $t1, -2720($fp)
	li $t2, 0
	bne $t1, $t2, label266
	j label264
label266:
	li $t0, 35341
	sw $t0, -2724($fp)
	lw $t1, -2724($fp)
	li $t2, 0
	bne $t1, $t2, label263
	j label264
label263:
	li $t0, 1
	sw $t0, -2692($fp)
label264:
	li $t0, 4
	lw $t1, -2692($fp)
	mul $t0, $t0, $t1
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	lw $t1, -2688($fp)
	add $t0, $t0, $t1
	sw $t0, -2732($fp)
	lw $t0, -2732($fp)
	lw $t1, 0($t0)
	sw $t1, -2736($fp)
	lw $ra, -4($fp)
	lw $v0, -2736($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2792
	li $t0, 20594
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	li $t0, 3285
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	li $t0, 60811
	sw $t0, -100($fp)
	addi $t0, $fp, -12
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
	li $t0, 63752
	sw $t0, -124($fp)
	addi $t0, $fp, -12
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
	li $t0, 34901
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	li $t0, 65206
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	li $t0, 42352
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	li $t0, 44967
	sw $t0, -184($fp)
	addi $t0, $fp, -16
	sw $t0, -188($fp)
	li $t0, 0
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
	li $t0, 31143
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	li $t0, 4081
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -228($fp)
	li $t0, 22484
	sw $t0, -232($fp)
	addi $t0, $fp, -44
	sw $t0, -236($fp)
	li $t0, 0
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
	li $t0, 9701
	sw $t0, -256($fp)
	addi $t0, $fp, -44
	sw $t0, -260($fp)
	li $t0, 1
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
	li $t0, 11067
	sw $t0, -280($fp)
	addi $t0, $fp, -44
	sw $t0, -284($fp)
	li $t0, 2
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
	li $t0, 61097
	sw $t0, -304($fp)
	addi $t0, $fp, -44
	sw $t0, -308($fp)
	li $t0, 3
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
	li $t0, 5635
	sw $t0, -328($fp)
	addi $t0, $fp, -44
	sw $t0, -332($fp)
	li $t0, 4
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
	li $t0, 34013
	sw $t0, -352($fp)
	addi $t0, $fp, -44
	sw $t0, -356($fp)
	li $t0, 5
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
	li $t0, 37209
	sw $t0, -376($fp)
	addi $t0, $fp, -44
	sw $t0, -380($fp)
	li $t0, 6
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
	li $t0, 59786
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	li $t0, 55098
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	li $t0, 32449
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	li $t0, 24053
	sw $t0, -436($fp)
	addi $t0, $fp, -72
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
	li $t0, 24740
	sw $t0, -460($fp)
	addi $t0, $fp, -72
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
	li $t0, 25533
	sw $t0, -484($fp)
	addi $t0, $fp, -72
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
	li $t0, 46018
	sw $t0, -508($fp)
	addi $t0, $fp, -72
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
	li $t0, 33795
	sw $t0, -532($fp)
	addi $t0, $fp, -72
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
	li $t0, 23148
	sw $t0, -556($fp)
	addi $t0, $fp, -72
	sw $t0, -560($fp)
	li $t0, 5
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
	li $t0, 8970
	sw $t0, -580($fp)
	addi $t0, $fp, -72
	sw $t0, -584($fp)
	li $t0, 6
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
	li $t0, 42501
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	li $t0, 56342
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	li $t0, 62578
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	li $t0, 12306
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	li $t0, 11400
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	li $t0, 328
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -672($fp)
	li $t0, 7582
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, -684($fp)
	li $t0, 9616
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	sw $t0, -696($fp)
	li $t0, 35229
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -708($fp)
	li $t0, 7252
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -720($fp)
label267:
	li $t0, 0
	sw $t0, -724($fp)
	lw $t0, -164($fp)
	sw $t0, -728($fp)
	lw $t0, -632($fp)
	sw $t0, -732($fp)
	lw $t1, -728($fp)
	lw $t2, -732($fp)
	beq $t1, $t2, label270
	j label271
label270:
	li $t0, 1
	sw $t0, -724($fp)
label271:
	lw $t0, -724($fp)
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -736($fp)
	lw $t1, -736($fp)
	li $t2, 0
	bne $t1, $t2, label268
	j label269
label268:
	li $t0, 0
	sw $t0, -740($fp)
	li $t0, 0
	sw $t0, -744($fp)
	li $t0, 0
	sw $t0, -748($fp)
	li $t0, 51968
	sw $t0, -752($fp)
	li $t0, 14661
	sw $t0, -756($fp)
	lw $t1, -752($fp)
	lw $t2, -756($fp)
	beq $t1, $t2, label278
	j label279
label278:
	li $t0, 1
	sw $t0, -748($fp)
label279:
	lw $t0, -224($fp)
	sw $t0, -760($fp)
	lw $t1, -748($fp)
	lw $t2, -760($fp)
	beq $t1, $t2, label276
	j label277
label276:
	li $t0, 1
	sw $t0, -744($fp)
label277:
	li $t0, 0
	sw $t0, -764($fp)
	lw $t0, -212($fp)
	sw $t0, -768($fp)
	lw $t0, -428($fp)
	sw $t0, -772($fp)
	lw $t1, -768($fp)
	lw $t2, -772($fp)
	bge $t1, $t2, label280
	j label281
label280:
	li $t0, 1
	sw $t0, -764($fp)
label281:
	lw $t1, -744($fp)
	lw $t2, -764($fp)
	beq $t1, $t2, label275
	j label273
label275:
	li $t0, 38396
	sw $t0, -776($fp)
	li $t0, 56050
	sw $t0, -780($fp)
	lw $t0, -776($fp)
	lw $t1, -780($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -784($fp)
	lw $t0, -668($fp)
	sw $t0, -788($fp)
	lw $t0, -784($fp)
	lw $t1, -788($fp)
	mul $t0, $t0, $t1
	sw $t0, -792($fp)
	lw $t1, -792($fp)
	li $t2, 0
	bne $t1, $t2, label274
	j label273
label274:
	li $t0, 0
	sw $t0, -796($fp)
	li $t0, 37145
	sw $t0, -800($fp)
	lw $t1, -800($fp)
	li $t2, 0
	bne $t1, $t2, label283
	j label282
label282:
	li $t0, 1
	sw $t0, -796($fp)
label283:
	lw $t0, -692($fp)
	sw $t0, -804($fp)
	lw $t0, -796($fp)
	lw $t1, -804($fp)
	mul $t0, $t0, $t1
	sw $t0, -808($fp)
	addi $t0, $fp, -44
	sw $t0, -812($fp)
	lw $t0, -428($fp)
	sw $t0, -816($fp)
	li $t0, 4
	lw $t1, -816($fp)
	mul $t0, $t0, $t1
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	lw $t1, -812($fp)
	add $t0, $t0, $t1
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	lw $t1, 0($t0)
	sw $t1, -828($fp)
	lw $t0, -808($fp)
	lw $t1, -828($fp)
	mul $t0, $t0, $t1
	sw $t0, -832($fp)
	lw $t1, -832($fp)
	li $t2, 0
	bne $t1, $t2, label272
	j label273
label272:
	li $t0, 1
	sw $t0, -740($fp)
label273:
	lw $ra, -4($fp)
	lw $v0, -740($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label267
label269:
	li $t0, 0
	sw $t0, -836($fp)
	li $t0, 48097
	sw $t0, -840($fp)
	li $t0, 0
	lw $t1, -840($fp)
	sub $t0, $t0, $t1
	sw $t0, -844($fp)
	lw $t0, -632($fp)
	sw $t0, -848($fp)
	lw $t1, -844($fp)
	lw $t2, -848($fp)
	bge $t1, $t2, label289
	j label290
label289:
	li $t0, 1
	sw $t0, -836($fp)
label290:
	lw $t0, -152($fp)
	sw $t0, -852($fp)
	lw $t0, -80($fp)
	sw $t0, -856($fp)
	lw $t0, -852($fp)
	lw $t1, -856($fp)
	sub $t0, $t0, $t1
	sw $t0, -860($fp)
	lw $t1, -836($fp)
	lw $t2, -860($fp)
	bgt $t1, $t2, label288
	j label287
label288:
	li $t0, 1581
	sw $t0, -864($fp)
	li $t0, 32706
	sw $t0, -868($fp)
	lw $t0, -864($fp)
	lw $t1, -868($fp)
	sub $t0, $t0, $t1
	sw $t0, -872($fp)
	lw $t1, -872($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label287
label287:
	li $t0, 53732
	sw $t0, -876($fp)
	li $t0, 35594
	sw $t0, -880($fp)
	lw $t0, -876($fp)
	lw $t1, -880($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -884($fp)
	lw $t1, -884($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label285
label284:
label291:
	jal f6
	sw $v0, -888($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -72
	sw $t0, -892($fp)
	li $t0, 6
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
	lw $t0, -888($fp)
	lw $t1, -908($fp)
	sub $t0, $t0, $t1
	sw $t0, -912($fp)
	lw $t0, -620($fp)
	sw $t0, -916($fp)
	li $t0, 0
	lw $t1, -916($fp)
	sub $t0, $t0, $t1
	sw $t0, -920($fp)
	li $t0, 25156
	sw $t0, -924($fp)
	lw $t0, -920($fp)
	lw $t1, -924($fp)
	add $t0, $t0, $t1
	sw $t0, -928($fp)
	lw $t1, -912($fp)
	lw $t2, -928($fp)
	bgt $t1, $t2, label292
	j label294
label294:
	li $t0, 0
	sw $t0, -932($fp)
	li $t0, 0
	sw $t0, -936($fp)
	lw $t0, 4($fp)
	sw $t0, -940($fp)
	li $t0, 36829
	sw $t0, -944($fp)
	lw $t0, -940($fp)
	lw $t1, -944($fp)
	mul $t0, $t0, $t1
	sw $t0, -948($fp)
	lw $t0, -416($fp)
	sw $t0, -952($fp)
	lw $t1, -948($fp)
	lw $t2, -952($fp)
	bne $t1, $t2, label297
	j label298
label297:
	li $t0, 1
	sw $t0, -936($fp)
label298:
	addi $sp, $sp, -4
	lw $t0, -936($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -956($fp)
	addi $sp, $sp, 8
	lw $t1, -956($fp)
	li $t2, 0
	bne $t1, $t2, label296
	j label295
label295:
	li $t0, 1
	sw $t0, -932($fp)
label296:
	li $t0, 6500
	sw $t0, -960($fp)
	lw $t0, -932($fp)
	lw $t1, -960($fp)
	add $t0, $t0, $t1
	sw $t0, -964($fp)
	lw $t1, -964($fp)
	li $t2, 0
	bne $t1, $t2, label292
	j label293
label292:
	li $t0, 0
	sw $t0, -968($fp)
	lw $t0, -152($fp)
	sw $t0, -972($fp)
	li $t0, 0
	sw $t0, -976($fp)
	li $t0, 49896
	sw $t0, -980($fp)
	lw $t0, -80($fp)
	sw $t0, -984($fp)
	li $t0, 0
	lw $t1, -984($fp)
	sub $t0, $t0, $t1
	sw $t0, -988($fp)
	lw $t1, -980($fp)
	lw $t2, -988($fp)
	bge $t1, $t2, label301
	j label302
label301:
	li $t0, 1
	sw $t0, -976($fp)
label302:
	lw $t1, -972($fp)
	lw $t2, -976($fp)
	beq $t1, $t2, label299
	j label300
label299:
	li $t0, 1
	sw $t0, -968($fp)
label300:
	lw $ra, -4($fp)
	lw $v0, -968($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label291
label293:
	j label286
label285:
	li $t0, 62362
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	sw $t0, -1000($fp)
	li $t0, 52518
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	sw $t0, -1012($fp)
	lw $t0, -1008($fp)
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 18155
	sw $t0, -1020($fp)
	lw $ra, -4($fp)
	lw $v0, -1020($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1008($fp)
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1008($fp)
	sw $t0, -1028($fp)
	lw $t0, -1008($fp)
	sw $t0, -1032($fp)
	lw $t0, -1028($fp)
	lw $t1, -1032($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1036($fp)
	li $t0, 0
	lw $t1, -1036($fp)
	sub $t0, $t0, $t1
	sw $t0, -1040($fp)
	addi $t0, $fp, -72
	sw $t0, -1044($fp)
	li $t0, 0
	sw $t0, -1048($fp)
	li $t0, 19974
	sw $t0, -1052($fp)
	lw $t1, -1052($fp)
	li $t2, 0
	bne $t1, $t2, label304
	j label303
label303:
	li $t0, 1
	sw $t0, -1048($fp)
label304:
	li $t0, 4
	lw $t1, -1048($fp)
	mul $t0, $t0, $t1
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	lw $t1, -1044($fp)
	add $t0, $t0, $t1
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	lw $t1, 0($t0)
	sw $t1, -1064($fp)
	lw $t0, -1040($fp)
	lw $t1, -1064($fp)
	sub $t0, $t0, $t1
	sw $t0, -1068($fp)
	lw $ra, -4($fp)
	lw $v0, -1068($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -996($fp)
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -996($fp)
	sw $t0, -1076($fp)
	lw $ra, -4($fp)
	lw $v0, -1076($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label286:
	lw $t0, -224($fp)
	sw $t0, -1080($fp)
	lw $t1, -1080($fp)
	li $t2, 0
	bne $t1, $t2, label306
	j label305
label305:
label308:
	lw $t0, -656($fp)
	sw $t0, -1084($fp)
	li $t0, 61488
	sw $t0, -1088($fp)
	lw $t1, -1084($fp)
	lw $t2, -1088($fp)
	bgt $t1, $t2, label309
	j label310
label309:
	li $t0, 0
	sw $t0, -1092($fp)
	jal f6
	sw $v0, -1096($fp)
	addi $sp, $sp, 4
	lw $t0, -428($fp)
	sw $t0, -1100($fp)
	li $t0, 0
	lw $t1, -1100($fp)
	sub $t0, $t0, $t1
	sw $t0, -1104($fp)
	lw $t1, -1096($fp)
	lw $t2, -1104($fp)
	blt $t1, $t2, label314
	j label315
label314:
	li $t0, 1
	sw $t0, -1092($fp)
label315:
	lw $t0, -1092($fp)
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -1108($fp)
	lw $t1, -1108($fp)
	li $t2, 0
	bne $t1, $t2, label311
	j label312
label311:
	li $t0, 60656
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	sw $t0, -1120($fp)
	li $t0, 10780
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	sw $t0, -1132($fp)
	li $t0, 58531
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	sw $t0, -1144($fp)
	li $t0, 7427
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	sw $t0, -1156($fp)
	li $t0, 22180
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	sw $t0, -1168($fp)
	addi $t0, $fp, -12
	sw $t0, -1172($fp)
	lw $t0, -608($fp)
	sw $t0, -1176($fp)
	lw $t0, -668($fp)
	sw $t0, -1180($fp)
	lw $t0, -1176($fp)
	lw $t1, -1180($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1184($fp)
	li $t0, 0
	lw $t1, -1184($fp)
	sub $t0, $t0, $t1
	sw $t0, -1188($fp)
	li $t0, 58859
	sw $t0, -1192($fp)
	li $t0, 15009
	sw $t0, -1196($fp)
	lw $t0, -1192($fp)
	lw $t1, -1196($fp)
	mul $t0, $t0, $t1
	sw $t0, -1200($fp)
	lw $t0, -1188($fp)
	lw $t1, -1200($fp)
	add $t0, $t0, $t1
	sw $t0, -1204($fp)
	li $t0, 4
	lw $t1, -1204($fp)
	mul $t0, $t0, $t1
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	lw $t1, -1172($fp)
	add $t0, $t0, $t1
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	lw $t1, 0($t0)
	sw $t1, -1216($fp)
	lw $ra, -4($fp)
	lw $v0, -1216($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1116($fp)
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1128($fp)
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1140($fp)
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1152($fp)
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1164($fp)
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1240($fp)
	li $t0, 0
	sw $t0, -1244($fp)
	lw $t0, -1128($fp)
	sw $t0, -1248($fp)
	li $t0, 0
	sw $t0, -1252($fp)
	li $t0, 31797
	sw $t0, -1256($fp)
	lw $t1, -1256($fp)
	li $t2, 0
	bne $t1, $t2, label321
	j label320
label320:
	li $t0, 1
	sw $t0, -1252($fp)
label321:
	lw $t0, -1248($fp)
	lw $t1, -1252($fp)
	mul $t0, $t0, $t1
	sw $t0, -1260($fp)
	li $t0, 28552
	sw $t0, -1264($fp)
	lw $t1, -1260($fp)
	lw $t2, -1264($fp)
	bge $t1, $t2, label318
	j label319
label318:
	li $t0, 1
	sw $t0, -1244($fp)
label319:
	lw $t0, -224($fp)
	sw $t0, -1268($fp)
	lw $t0, -428($fp)
	sw $t0, -1272($fp)
	lw $t0, -1268($fp)
	lw $t1, -1272($fp)
	mul $t0, $t0, $t1
	sw $t0, -1276($fp)
	lw $t0, -224($fp)
	sw $t0, -1280($fp)
	lw $t0, -1276($fp)
	lw $t1, -1280($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1284($fp)
	li $t0, 22261
	sw $t0, -1288($fp)
	li $t0, 0
	lw $t1, -1288($fp)
	sub $t0, $t0, $t1
	sw $t0, -1292($fp)
	lw $t0, -1284($fp)
	lw $t1, -1292($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1296($fp)
	lw $t1, -1244($fp)
	lw $t2, -1296($fp)
	ble $t1, $t2, label316
	j label317
label316:
	li $t0, 1
	sw $t0, -1240($fp)
label317:
	lw $ra, -4($fp)
	lw $v0, -1240($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label322:
	li $t0, 0
	sw $t0, -1300($fp)
	li $t0, 0
	sw $t0, -1304($fp)
	lw $t0, -704($fp)
	sw $t0, -1308($fp)
	lw $t0, -608($fp)
	sw $t0, -1312($fp)
	lw $t1, -1308($fp)
	lw $t2, -1312($fp)
	blt $t1, $t2, label328
	j label329
label328:
	li $t0, 1
	sw $t0, -1304($fp)
label329:
	li $t0, 18229
	sw $t0, -1316($fp)
	lw $t1, -1304($fp)
	lw $t2, -1316($fp)
	bgt $t1, $t2, label327
	j label326
label327:
	lw $t0, -224($fp)
	sw $t0, -1320($fp)
	lw $t0, -644($fp)
	sw $t0, -1324($fp)
	lw $t0, -1320($fp)
	lw $t1, -1324($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1328($fp)
	lw $t1, -1328($fp)
	li $t2, 0
	bne $t1, $t2, label325
	j label326
label325:
	li $t0, 1
	sw $t0, -1300($fp)
label326:
	lw $t0, -1300($fp)
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -1332($fp)
	lw $t1, -1332($fp)
	li $t2, 0
	bne $t1, $t2, label323
	j label324
label323:
	li $t0, 0
	sw $t0, -1336($fp)
	li $t0, 43213
	sw $t0, -1340($fp)
	lw $t1, -1340($fp)
	li $t2, 0
	bne $t1, $t2, label330
	j label332
label332:
	lw $t0, -1164($fp)
	sw $t0, -1344($fp)
	lw $t1, -1344($fp)
	li $t2, 0
	bne $t1, $t2, label330
	j label331
label330:
	li $t0, 1
	sw $t0, -1336($fp)
label331:
	lw $t0, -1336($fp)
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	sw $t0, -1352($fp)
	lw $ra, -4($fp)
	lw $v0, -1352($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label322
label324:
	li $t0, 0
	sw $t0, -1356($fp)
	li $t0, 0
	sw $t0, -1360($fp)
	li $t0, 60657
	sw $t0, -1364($fp)
	lw $t1, -1364($fp)
	li $t2, 0
	bne $t1, $t2, label340
	j label339
label339:
	li $t0, 1
	sw $t0, -1360($fp)
label340:
	li $t0, 0
	lw $t1, -1360($fp)
	sub $t0, $t0, $t1
	sw $t0, -1368($fp)
	lw $t0, -1140($fp)
	sw $t0, -1372($fp)
	li $t0, 8743
	sw $t0, -1376($fp)
	lw $t0, -1372($fp)
	lw $t1, -1376($fp)
	mul $t0, $t0, $t1
	sw $t0, -1380($fp)
	lw $t1, -1368($fp)
	lw $t2, -1380($fp)
	bne $t1, $t2, label337
	j label338
label337:
	li $t0, 1
	sw $t0, -1356($fp)
label338:
	li $t0, 0
	sw $t0, -1384($fp)
	lw $t0, -428($fp)
	sw $t0, -1388($fp)
	lw $t1, -1388($fp)
	li $t2, 0
	bne $t1, $t2, label342
	j label341
label341:
	li $t0, 1
	sw $t0, -1384($fp)
label342:
	li $t0, 0
	lw $t1, -1384($fp)
	sub $t0, $t0, $t1
	sw $t0, -1392($fp)
	lw $t1, -1356($fp)
	lw $t2, -1392($fp)
	beq $t1, $t2, label333
	j label336
label336:
	jal f6
	sw $v0, -1396($fp)
	addi $sp, $sp, 4
	li $t0, 14823
	sw $t0, -1400($fp)
	li $t0, 0
	lw $t1, -1400($fp)
	sub $t0, $t0, $t1
	sw $t0, -1404($fp)
	lw $t0, -1396($fp)
	lw $t1, -1404($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1408($fp)
	lw $t1, -1408($fp)
	li $t2, 0
	bne $t1, $t2, label333
	j label334
label333:
	li $t0, 43218
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -1416($fp)
label334:
	j label313
label312:
	jal f6
	sw $v0, -1420($fp)
	addi $sp, $sp, 4
	lw $t1, -1420($fp)
	li $t2, 0
	bne $t1, $t2, label343
	j label344
label343:
	li $t0, 0
	sw $t0, -1424($fp)
	lw $t0, -416($fp)
	sw $t0, -1428($fp)
	li $t0, 10324
	sw $t0, -1432($fp)
	lw $t0, -1428($fp)
	lw $t1, -1432($fp)
	mul $t0, $t0, $t1
	sw $t0, -1436($fp)
	li $t0, 47529
	sw $t0, -1440($fp)
	lw $t0, -1436($fp)
	lw $t1, -1440($fp)
	sub $t0, $t0, $t1
	sw $t0, -1444($fp)
	lw $t1, -1444($fp)
	li $t2, 0
	bne $t1, $t2, label351
	j label350
label351:
	lw $t0, -92($fp)
	sw $t0, -1448($fp)
	lw $t0, -428($fp)
	sw $t0, -1452($fp)
	lw $t0, -1448($fp)
	lw $t1, -1452($fp)
	sub $t0, $t0, $t1
	sw $t0, -1456($fp)
	lw $t1, -1456($fp)
	li $t2, 0
	bne $t1, $t2, label349
	j label350
label349:
	li $t0, 1
	sw $t0, -1424($fp)
label350:
	lw $t0, -1424($fp)
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -1460($fp)
	lw $t1, -1460($fp)
	li $t2, 0
	bne $t1, $t2, label346
	j label347
label346:
	li $t0, 0
	sw $t0, -1464($fp)
	lw $t0, -644($fp)
	sw $t0, -1468($fp)
	lw $t0, -716($fp)
	sw $t0, -1472($fp)
	lw $t0, -1468($fp)
	lw $t1, -1472($fp)
	mul $t0, $t0, $t1
	sw $t0, -1476($fp)
	lw $t0, -212($fp)
	sw $t0, -1480($fp)
	lw $t0, -1476($fp)
	lw $t1, -1480($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1484($fp)
	li $t0, 31415
	sw $t0, -1488($fp)
	lw $t0, -1484($fp)
	lw $t1, -1488($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1492($fp)
	lw $t1, -1492($fp)
	li $t2, 0
	bne $t1, $t2, label355
	j label354
label355:
	li $t0, 45918
	sw $t0, -1496($fp)
	li $t0, 1
	sw $t0, -1500($fp)
	lw $t0, -1496($fp)
	lw $t1, -1500($fp)
	mul $t0, $t0, $t1
	sw $t0, -1504($fp)
	lw $t0, -608($fp)
	sw $t0, -1508($fp)
	lw $t1, -1504($fp)
	lw $t2, -1508($fp)
	bne $t1, $t2, label352
	j label354
label354:
	li $t0, 0
	sw $t0, -1512($fp)
	li $t0, 0
	sw $t0, -1516($fp)
	lw $t0, -668($fp)
	sw $t0, -1520($fp)
	lw $t1, -1520($fp)
	li $t2, 0
	bne $t1, $t2, label361
	j label359
label361:
	lw $t0, -680($fp)
	sw $t0, -1524($fp)
	lw $t1, -1524($fp)
	li $t2, 0
	bne $t1, $t2, label360
	j label359
label360:
	lw $t0, 8($fp)
	sw $t0, -1528($fp)
	lw $t1, -1528($fp)
	li $t2, 0
	bne $t1, $t2, label358
	j label359
label358:
	li $t0, 1
	sw $t0, -1516($fp)
label359:
	li $t0, 0
	sw $t0, -1532($fp)
	li $t0, 0
	sw $t0, -1536($fp)
	li $t0, 13862
	sw $t0, -1540($fp)
	lw $t0, -704($fp)
	sw $t0, -1544($fp)
	lw $t1, -1540($fp)
	lw $t2, -1544($fp)
	bge $t1, $t2, label364
	j label365
label364:
	li $t0, 1
	sw $t0, -1536($fp)
label365:
	lw $t0, -656($fp)
	sw $t0, -1548($fp)
	lw $t1, -1536($fp)
	lw $t2, -1548($fp)
	bgt $t1, $t2, label362
	j label363
label362:
	li $t0, 1
	sw $t0, -1532($fp)
label363:
	addi $sp, $sp, -4
	lw $t0, -1516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1532($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1552($fp)
	addi $sp, $sp, 12
	lw $t1, -1552($fp)
	li $t2, 0
	bne $t1, $t2, label357
	j label356
label356:
	li $t0, 1
	sw $t0, -1512($fp)
label357:
	li $t0, 0
	lw $t1, -1512($fp)
	sub $t0, $t0, $t1
	sw $t0, -1556($fp)
	lw $t1, -1556($fp)
	li $t2, 0
	bne $t1, $t2, label352
	j label353
label352:
	li $t0, 1
	sw $t0, -1464($fp)
label353:
	lw $ra, -4($fp)
	lw $v0, -1464($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label348
label347:
label366:
	addi $t0, $fp, -72
	sw $t0, -1560($fp)
	li $t0, 0
	sw $t0, -1564($fp)
	li $t0, 5538
	sw $t0, -1568($fp)
	lw $t0, -404($fp)
	sw $t0, -1572($fp)
	lw $t0, -1568($fp)
	lw $t1, -1572($fp)
	sub $t0, $t0, $t1
	sw $t0, -1576($fp)
	lw $t0, -716($fp)
	sw $t0, -1580($fp)
	lw $t1, -1576($fp)
	lw $t2, -1580($fp)
	bge $t1, $t2, label369
	j label370
label369:
	li $t0, 1
	sw $t0, -1564($fp)
label370:
	li $t0, 4
	lw $t1, -1564($fp)
	mul $t0, $t0, $t1
	sw $t0, -1584($fp)
	lw $t0, -1584($fp)
	lw $t1, -1560($fp)
	add $t0, $t0, $t1
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	lw $t1, 0($t0)
	sw $t1, -1592($fp)
	addi $t0, $fp, -44
	sw $t0, -1596($fp)
	lw $t0, -692($fp)
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
	li $t0, 0
	lw $t1, -1612($fp)
	sub $t0, $t0, $t1
	sw $t0, -1616($fp)
	lw $t0, -1592($fp)
	lw $t1, -1616($fp)
	mul $t0, $t0, $t1
	sw $t0, -1620($fp)
	lw $t1, -1620($fp)
	li $t2, 0
	bne $t1, $t2, label367
	j label368
label367:
	li $t0, 0
	sw $t0, -1624($fp)
	addi $t0, $fp, -72
	sw $t0, -1628($fp)
	li $t0, 2
	sw $t0, -1632($fp)
	li $t0, 4
	lw $t1, -1632($fp)
	mul $t0, $t0, $t1
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	lw $t1, -1628($fp)
	add $t0, $t0, $t1
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	lw $t1, 0($t0)
	sw $t1, -1644($fp)
	lw $t1, -1644($fp)
	li $t2, 0
	bne $t1, $t2, label371
	j label372
label371:
	li $t0, 1
	sw $t0, -1624($fp)
label372:
	addi $t0, $fp, -44
	sw $t0, -1648($fp)
	lw $t0, -416($fp)
	sw $t0, -1652($fp)
	li $t0, 55434
	sw $t0, -1656($fp)
	lw $t0, -1652($fp)
	lw $t1, -1656($fp)
	mul $t0, $t0, $t1
	sw $t0, -1660($fp)
	li $t0, 4
	lw $t1, -1660($fp)
	mul $t0, $t0, $t1
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	lw $t1, -1648($fp)
	add $t0, $t0, $t1
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	lw $t1, 0($t0)
	sw $t1, -1672($fp)
	lw $t0, -1624($fp)
	lw $t1, -1672($fp)
	sub $t0, $t0, $t1
	sw $t0, -1676($fp)
	lw $ra, -4($fp)
	lw $v0, -1676($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label366
label368:
label348:
	j label345
label344:
	lw $t0, -428($fp)
	sw $t0, -1680($fp)
	li $t0, 0
	lw $t1, -1680($fp)
	sub $t0, $t0, $t1
	sw $t0, -1684($fp)
	li $t0, 0
	lw $t1, -1684($fp)
	sub $t0, $t0, $t1
	sw $t0, -1688($fp)
	lw $t1, -1688($fp)
	li $t2, 0
	bne $t1, $t2, label376
	j label374
label376:
	lw $t0, 8($fp)
	sw $t0, -1692($fp)
	lw $t1, -1692($fp)
	li $t2, 0
	bne $t1, $t2, label373
	j label374
label373:
	lw $t0, -632($fp)
	sw $t0, -1696($fp)
	lw $t0, -152($fp)
	sw $t0, -1700($fp)
	li $t0, 0
	lw $t1, -1700($fp)
	sub $t0, $t0, $t1
	sw $t0, -1704($fp)
	lw $t0, -1696($fp)
	lw $t1, -1704($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1708($fp)
	lw $t0, -1708($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -1712($fp)
	lw $ra, -4($fp)
	lw $v0, -1712($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label375
label374:
	li $t0, 20028
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	sw $t0, -1724($fp)
	li $t0, 0
	sw $t0, -1728($fp)
	addi $t0, $fp, -16
	sw $t0, -1732($fp)
	lw $t0, -212($fp)
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
	addi $sp, $sp, -4
	lw $t0, -1748($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1752($fp)
	addi $sp, $sp, 8
	li $t0, 7344
	sw $t0, -1756($fp)
	addi $sp, $sp, -4
	lw $t0, -1756($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1760($fp)
	addi $sp, $sp, 8
	lw $t0, -1752($fp)
	lw $t1, -1760($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1764($fp)
	li $t0, 0
	lw $t1, -1764($fp)
	sub $t0, $t0, $t1
	sw $t0, -1768($fp)
	lw $t1, -1768($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label377
label379:
	jal f6
	sw $v0, -1772($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -1772($fp)
	sub $t0, $t0, $t1
	sw $t0, -1776($fp)
	li $t0, 8053
	sw $t0, -1780($fp)
	li $t0, 40003
	sw $t0, -1784($fp)
	lw $t0, -1780($fp)
	lw $t1, -1784($fp)
	mul $t0, $t0, $t1
	sw $t0, -1788($fp)
	lw $t1, -1776($fp)
	lw $t2, -1788($fp)
	ble $t1, $t2, label377
	j label378
label377:
	li $t0, 1
	sw $t0, -1728($fp)
label378:
	li $t0, 0
	sw $t0, -1792($fp)
	jal f6
	sw $v0, -1796($fp)
	addi $sp, $sp, 4
	lw $t1, -1796($fp)
	li $t2, 0
	bne $t1, $t2, label384
	j label383
label383:
	li $t0, 1
	sw $t0, -1792($fp)
label384:
	lw $t0, -428($fp)
	sw $t0, -1800($fp)
	lw $t0, -1792($fp)
	lw $t1, -1800($fp)
	mul $t0, $t0, $t1
	sw $t0, -1804($fp)
	li $t0, 3297
	sw $t0, -1808($fp)
	lw $t1, -1804($fp)
	lw $t2, -1808($fp)
	blt $t1, $t2, label380
	j label381
label380:
	li $t0, 0
	sw $t0, -1812($fp)
	jal f6
	sw $v0, -1816($fp)
	addi $sp, $sp, 4
	lw $t0, -1720($fp)
	sw $t0, -1820($fp)
	addi $t0, $fp, -16
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
	lw $t0, -1820($fp)
	lw $t1, -1840($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1844($fp)
	lw $t1, -1816($fp)
	lw $t2, -1844($fp)
	bne $t1, $t2, label385
	j label386
label385:
	li $t0, 1
	sw $t0, -1812($fp)
label386:
label381:
	lw $t0, -1720($fp)
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1852($fp)
	li $t0, 61828
	sw $t0, -1856($fp)
	lw $t1, -1856($fp)
	li $t2, 0
	bne $t1, $t2, label388
	j label387
label387:
	li $t0, 1
	sw $t0, -1852($fp)
label388:
	lw $ra, -4($fp)
	lw $v0, -1852($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label375:
label345:
label313:
	j label308
label310:
	j label307
label306:
	li $t0, 10601
	sw $t0, -1864($fp)
	addi $t0, $fp, -1860
	sw $t0, -1868($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -1888($fp)
	lw $t0, 8($fp)
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
label389:
	li $t0, 7428
	sw $t0, -1908($fp)
	li $t0, 55151
	sw $t0, -1912($fp)
	lw $t0, -1908($fp)
	lw $t1, -1912($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1916($fp)
	li $t0, 0
	sw $t0, -1920($fp)
	addi $t0, $fp, -12
	sw $t0, -1924($fp)
	lw $t0, -656($fp)
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
	lw $t1, -1940($fp)
	li $t2, 0
	bne $t1, $t2, label393
	j label392
label392:
	li $t0, 1
	sw $t0, -1920($fp)
label393:
	lw $t0, -1916($fp)
	lw $t1, -1920($fp)
	mul $t0, $t0, $t1
	sw $t0, -1944($fp)
	lw $t1, -1944($fp)
	li $t2, 0
	bne $t1, $t2, label390
	j label391
label390:
	li $t0, 0
	sw $t0, -1948($fp)
	lw $t0, -704($fp)
	sw $t0, -1952($fp)
	addi $t0, $fp, -12
	sw $t0, -1956($fp)
	li $t0, 1
	sw $t0, -1960($fp)
	li $t0, 4
	lw $t1, -1960($fp)
	mul $t0, $t0, $t1
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	lw $t1, -1956($fp)
	add $t0, $t0, $t1
	sw $t0, -1968($fp)
	lw $t0, -1968($fp)
	lw $t1, 0($t0)
	sw $t1, -1972($fp)
	lw $t0, -1952($fp)
	lw $t1, -1972($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1976($fp)
	li $t0, 18167
	sw $t0, -1980($fp)
	lw $t0, -1976($fp)
	lw $t1, -1980($fp)
	mul $t0, $t0, $t1
	sw $t0, -1984($fp)
	li $t0, 0
	lw $t1, -1984($fp)
	sub $t0, $t0, $t1
	sw $t0, -1988($fp)
	lw $t1, -1988($fp)
	li $t2, 0
	bne $t1, $t2, label395
	j label396
label396:
	addi $t0, $fp, -44
	sw $t0, -1992($fp)
	li $t0, 0
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
	li $t0, 0
	sw $t0, -2012($fp)
	li $t0, 0
	sw $t0, -2016($fp)
	li $t0, 47871
	sw $t0, -2020($fp)
	lw $t0, -716($fp)
	sw $t0, -2024($fp)
	lw $t1, -2020($fp)
	lw $t2, -2024($fp)
	blt $t1, $t2, label399
	j label400
label399:
	li $t0, 1
	sw $t0, -2016($fp)
label400:
	li $t0, 57454
	sw $t0, -2028($fp)
	lw $t1, -2016($fp)
	lw $t2, -2028($fp)
	bne $t1, $t2, label397
	j label398
label397:
	li $t0, 1
	sw $t0, -2012($fp)
label398:
	addi $sp, $sp, -4
	lw $t0, -2008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2012($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2032($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -2036($fp)
	lw $t0, -92($fp)
	sw $t0, -2040($fp)
	lw $t1, -2040($fp)
	li $t2, 0
	bne $t1, $t2, label402
	j label401
label401:
	li $t0, 1
	sw $t0, -2036($fp)
label402:
	lw $t1, -2032($fp)
	lw $t2, -2036($fp)
	blt $t1, $t2, label394
	j label395
label394:
	li $t0, 1
	sw $t0, -1948($fp)
label395:
	lw $ra, -4($fp)
	lw $v0, -1948($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label389
label391:
label403:
	li $t0, 0
	sw $t0, -2044($fp)
	li $t0, 662
	sw $t0, -2048($fp)
	lw $t1, -2048($fp)
	li $t2, 0
	bne $t1, $t2, label407
	j label406
label406:
	li $t0, 1
	sw $t0, -2044($fp)
label407:
	addi $t0, $fp, -12
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
	lw $t0, -2044($fp)
	lw $t1, -2068($fp)
	mul $t0, $t0, $t1
	sw $t0, -2072($fp)
	li $t0, 10986
	sw $t0, -2076($fp)
	lw $t0, -2072($fp)
	lw $t1, -2076($fp)
	mul $t0, $t0, $t1
	sw $t0, -2080($fp)
	lw $t1, -2080($fp)
	li $t2, 0
	bne $t1, $t2, label404
	j label405
label404:
	li $t0, 58197
	sw $t0, -2084($fp)
	lw $t1, -2084($fp)
	li $t2, 0
	bne $t1, $t2, label408
	j label409
label408:
	li $t0, 0
	sw $t0, -2088($fp)
	li $t0, 0
	sw $t0, -2092($fp)
	li $t0, 0
	sw $t0, -2096($fp)
	lw $t0, -428($fp)
	sw $t0, -2100($fp)
	li $t0, 52090
	sw $t0, -2104($fp)
	lw $t1, -2100($fp)
	lw $t2, -2104($fp)
	ble $t1, $t2, label415
	j label416
label415:
	li $t0, 1
	sw $t0, -2096($fp)
label416:
	lw $t0, -620($fp)
	sw $t0, -2108($fp)
	lw $t1, -2096($fp)
	lw $t2, -2108($fp)
	bgt $t1, $t2, label413
	j label414
label413:
	li $t0, 1
	sw $t0, -2092($fp)
label414:
	addi $sp, $sp, -4
	lw $t0, -2092($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2112($fp)
	addi $sp, $sp, 8
	lw $t0, 8($fp)
	sw $t0, -2116($fp)
	li $t0, 56905
	sw $t0, -2120($fp)
	lw $t0, -2116($fp)
	lw $t1, -2120($fp)
	add $t0, $t0, $t1
	sw $t0, -2124($fp)
	li $t0, 44571
	sw $t0, -2128($fp)
	lw $t0, -2124($fp)
	lw $t1, -2128($fp)
	add $t0, $t0, $t1
	sw $t0, -2132($fp)
	lw $t0, -152($fp)
	sw $t0, -2136($fp)
	lw $t0, -2132($fp)
	lw $t1, -2136($fp)
	sub $t0, $t0, $t1
	sw $t0, -2140($fp)
	lw $t1, -2112($fp)
	lw $t2, -2140($fp)
	bne $t1, $t2, label411
	j label412
label411:
	li $t0, 1
	sw $t0, -2088($fp)
label412:
	j label410
label409:
	li $t0, 0
	sw $t0, -2144($fp)
	li $t0, 416
	sw $t0, -2148($fp)
	lw $t0, -704($fp)
	sw $t0, -2152($fp)
	lw $t0, -2148($fp)
	lw $t1, -2152($fp)
	mul $t0, $t0, $t1
	sw $t0, -2156($fp)
	lw $t0, -416($fp)
	sw $t0, -2160($fp)
	lw $t1, -2156($fp)
	lw $t2, -2160($fp)
	bgt $t1, $t2, label417
	j label418
label417:
	li $t0, 1
	sw $t0, -2144($fp)
label418:
	lw $t0, -704($fp)
	sw $t0, -2164($fp)
	lw $t0, -716($fp)
	sw $t0, -2168($fp)
	lw $t0, -2164($fp)
	lw $t1, -2168($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2172($fp)
	addi $sp, $sp, -4
	lw $t0, -2144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2172($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2176($fp)
	addi $sp, $sp, 12
	li $t0, 62443
	sw $t0, -2180($fp)
	lw $t0, -2176($fp)
	lw $t1, -2180($fp)
	mul $t0, $t0, $t1
	sw $t0, -2184($fp)
	addi $t0, $fp, -12
	sw $t0, -2188($fp)
	li $t0, 0
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
	lw $t0, -2184($fp)
	lw $t1, -2204($fp)
	mul $t0, $t0, $t1
	sw $t0, -2208($fp)
	li $t0, 52342
	sw $t0, -2212($fp)
	lw $t0, -716($fp)
	sw $t0, -2216($fp)
	lw $t0, -2212($fp)
	lw $t1, -2216($fp)
	mul $t0, $t0, $t1
	sw $t0, -2220($fp)
	lw $t0, -2208($fp)
	lw $t1, -2220($fp)
	sub $t0, $t0, $t1
	sw $t0, -2224($fp)
	addi $t0, $fp, -44
	sw $t0, -2228($fp)
	addi $t0, $fp, -1860
	sw $t0, -2232($fp)
	li $t0, 0
	sw $t0, -2236($fp)
	li $t0, 4
	lw $t1, -2236($fp)
	mul $t0, $t0, $t1
	sw $t0, -2240($fp)
	lw $t0, -2240($fp)
	lw $t1, -2232($fp)
	add $t0, $t0, $t1
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	lw $t1, 0($t0)
	sw $t1, -2248($fp)
	li $t0, 4
	lw $t1, -2248($fp)
	mul $t0, $t0, $t1
	sw $t0, -2252($fp)
	lw $t0, -2252($fp)
	lw $t1, -2228($fp)
	add $t0, $t0, $t1
	sw $t0, -2256($fp)
	lw $t0, -2256($fp)
	lw $t1, 0($t0)
	sw $t1, -2260($fp)
	lw $t0, -2224($fp)
	lw $t1, -2260($fp)
	sub $t0, $t0, $t1
	sw $t0, -2264($fp)
	lw $ra, -4($fp)
	lw $v0, -2264($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label410:
	j label403
label405:
label307:
	lw $t0, -80($fp)
	sw $t0, -2268($fp)
	lw $t0, -2268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -92($fp)
	sw $t0, -2272($fp)
	lw $t0, -2272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -2276($fp)
	li $t0, 0
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
	addi $t0, $fp, -12
	sw $t0, -2296($fp)
	li $t0, 1
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
	lw $t0, -152($fp)
	sw $t0, -2316($fp)
	lw $t0, -2316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -164($fp)
	sw $t0, -2320($fp)
	lw $t0, -2320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -176($fp)
	sw $t0, -2324($fp)
	lw $t0, -2324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -2328($fp)
	li $t0, 0
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
	lw $t0, -212($fp)
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -224($fp)
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
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
	lw $t0, -2372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -2376($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -2396($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -2416($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -2436($fp)
	li $t0, 4
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
	addi $t0, $fp, -44
	sw $t0, -2456($fp)
	li $t0, 5
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
	addi $t0, $fp, -44
	sw $t0, -2476($fp)
	li $t0, 6
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
	lw $t0, -404($fp)
	sw $t0, -2496($fp)
	lw $t0, -2496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -416($fp)
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -428($fp)
	sw $t0, -2504($fp)
	lw $t0, -2504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -2508($fp)
	li $t0, 0
	sw $t0, -2512($fp)
	li $t0, 4
	lw $t1, -2512($fp)
	mul $t0, $t0, $t1
	sw $t0, -2516($fp)
	lw $t0, -2516($fp)
	lw $t1, -2508($fp)
	add $t0, $t0, $t1
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	lw $t1, 0($t0)
	sw $t1, -2524($fp)
	lw $t0, -2524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -2528($fp)
	li $t0, 1
	sw $t0, -2532($fp)
	li $t0, 4
	lw $t1, -2532($fp)
	mul $t0, $t0, $t1
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	lw $t1, -2528($fp)
	add $t0, $t0, $t1
	sw $t0, -2540($fp)
	lw $t0, -2540($fp)
	lw $t1, 0($t0)
	sw $t1, -2544($fp)
	lw $t0, -2544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -2548($fp)
	li $t0, 2
	sw $t0, -2552($fp)
	li $t0, 4
	lw $t1, -2552($fp)
	mul $t0, $t0, $t1
	sw $t0, -2556($fp)
	lw $t0, -2556($fp)
	lw $t1, -2548($fp)
	add $t0, $t0, $t1
	sw $t0, -2560($fp)
	lw $t0, -2560($fp)
	lw $t1, 0($t0)
	sw $t1, -2564($fp)
	lw $t0, -2564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -2568($fp)
	li $t0, 3
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
	lw $t0, -2584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -2588($fp)
	li $t0, 4
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
	addi $t0, $fp, -72
	sw $t0, -2608($fp)
	li $t0, 5
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
	addi $t0, $fp, -72
	sw $t0, -2628($fp)
	li $t0, 6
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
	lw $t0, -608($fp)
	sw $t0, -2648($fp)
	lw $t0, -2648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -620($fp)
	sw $t0, -2652($fp)
	lw $t0, -2652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -632($fp)
	sw $t0, -2656($fp)
	lw $t0, -2656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -644($fp)
	sw $t0, -2660($fp)
	lw $t0, -2660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -656($fp)
	sw $t0, -2664($fp)
	lw $t0, -2664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -668($fp)
	sw $t0, -2668($fp)
	lw $t0, -2668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -680($fp)
	sw $t0, -2672($fp)
	lw $t0, -2672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -692($fp)
	sw $t0, -2676($fp)
	lw $t0, -2676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -704($fp)
	sw $t0, -2680($fp)
	lw $t0, -2680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -716($fp)
	sw $t0, -2684($fp)
	lw $t0, -2684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2688($fp)
	li $t0, 0
	sw $t0, -2692($fp)
	li $t0, 0
	sw $t0, -2696($fp)
	li $t0, 0
	sw $t0, -2700($fp)
	lw $t0, -716($fp)
	sw $t0, -2704($fp)
	lw $t0, 8($fp)
	sw $t0, -2708($fp)
	lw $t1, -2704($fp)
	lw $t2, -2708($fp)
	ble $t1, $t2, label425
	j label426
label425:
	li $t0, 1
	sw $t0, -2700($fp)
label426:
	lw $t0, -428($fp)
	sw $t0, -2712($fp)
	lw $t1, -2700($fp)
	lw $t2, -2712($fp)
	bne $t1, $t2, label423
	j label424
label423:
	li $t0, 1
	sw $t0, -2696($fp)
label424:
	addi $sp, $sp, -4
	lw $t0, -2696($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2716($fp)
	addi $sp, $sp, 8
	li $t0, 31420
	sw $t0, -2720($fp)
	lw $t0, -2716($fp)
	lw $t1, -2720($fp)
	add $t0, $t0, $t1
	sw $t0, -2724($fp)
	li $t0, 0
	sw $t0, -2728($fp)
	li $t0, 60395
	sw $t0, -2732($fp)
	li $t0, 62269
	sw $t0, -2736($fp)
	lw $t1, -2732($fp)
	lw $t2, -2736($fp)
	ble $t1, $t2, label427
	j label428
label427:
	li $t0, 1
	sw $t0, -2728($fp)
label428:
	addi $sp, $sp, -4
	lw $t0, -2724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2728($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2740($fp)
	addi $sp, $sp, 12
	lw $t1, -2740($fp)
	li $t2, 0
	bne $t1, $t2, label422
	j label421
label421:
	li $t0, 1
	sw $t0, -2692($fp)
label422:
	li $t0, 0
	lw $t1, -2692($fp)
	sub $t0, $t0, $t1
	sw $t0, -2744($fp)
	addi $t0, $fp, -12
	sw $t0, -2748($fp)
	li $t0, 0
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
	li $t0, 0
	lw $t1, -2764($fp)
	sub $t0, $t0, $t1
	sw $t0, -2768($fp)
	lw $t0, -2744($fp)
	lw $t1, -2768($fp)
	add $t0, $t0, $t1
	sw $t0, -2772($fp)
	addi $t0, $fp, -16
	sw $t0, -2776($fp)
	li $t0, 0
	sw $t0, -2780($fp)
	lw $t0, 8($fp)
	sw $t0, -2784($fp)
	lw $t1, -2784($fp)
	li $t2, 0
	bne $t1, $t2, label430
	j label429
label429:
	li $t0, 1
	sw $t0, -2780($fp)
label430:
	li $t0, 4
	lw $t1, -2780($fp)
	mul $t0, $t0, $t1
	sw $t0, -2788($fp)
	lw $t0, -2788($fp)
	lw $t1, -2776($fp)
	add $t0, $t0, $t1
	sw $t0, -2792($fp)
	lw $t0, -2792($fp)
	lw $t1, 0($t0)
	sw $t1, -2796($fp)
	lw $t1, -2772($fp)
	lw $t2, -2796($fp)
	beq $t1, $t2, label419
	j label420
label419:
	li $t0, 1
	sw $t0, -2688($fp)
label420:
	lw $ra, -4($fp)
	lw $v0, -2688($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -80
	li $t0, 0
	sw $t0, -8($fp)
	lw $t0, 4($fp)
	sw $t0, -12($fp)
	lw $t0, 8($fp)
	sw $t0, -16($fp)
	lw $t0, -12($fp)
	lw $t1, -16($fp)
	add $t0, $t0, $t1
	sw $t0, -20($fp)
	lw $t0, 4($fp)
	sw $t0, -24($fp)
	lw $t0, -20($fp)
	lw $t1, -24($fp)
	sub $t0, $t0, $t1
	sw $t0, -28($fp)
	lw $t0, 4($fp)
	sw $t0, -32($fp)
	lw $t1, -28($fp)
	lw $t2, -32($fp)
	bge $t1, $t2, label431
	j label432
label431:
	li $t0, 1
	sw $t0, -8($fp)
label432:
	lw $t0, -8($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -36($fp)
	li $t0, 0
	sw $t0, -40($fp)
	li $t0, 0
	sw $t0, -44($fp)
	lw $t0, 12($fp)
	sw $t0, -48($fp)
	lw $t1, -48($fp)
	li $t2, 0
	bne $t1, $t2, label437
	j label436
label436:
	li $t0, 1
	sw $t0, -44($fp)
label437:
	li $t0, 27712
	sw $t0, -52($fp)
	lw $t0, -44($fp)
	lw $t1, -52($fp)
	mul $t0, $t0, $t1
	sw $t0, -56($fp)
	li $t0, 8634
	sw $t0, -60($fp)
	lw $t0, 12($fp)
	sw $t0, -64($fp)
	lw $t0, -60($fp)
	lw $t1, -64($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -68($fp)
	lw $t0, -56($fp)
	lw $t1, -68($fp)
	add $t0, $t0, $t1
	sw $t0, -72($fp)
	li $t0, 54944
	sw $t0, -76($fp)
	lw $t0, -72($fp)
	lw $t1, -76($fp)
	add $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $t1, -80($fp)
	li $t2, 0
	bne $t1, $t2, label433
	j label435
label435:
	lw $t0, 4($fp)
	sw $t0, -84($fp)
	lw $t1, -84($fp)
	li $t2, 0
	bne $t1, $t2, label433
	j label434
label433:
	li $t0, 1
	sw $t0, -40($fp)
label434:
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
	addi $sp, $sp, -1840
	li $t0, 17327
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -60($fp)
	li $t0, 34244
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	li $t0, 28633
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	li $t0, 35494
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	li $t0, 16580
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	li $t0, 20552
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	li $t0, 31339
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	li $t0, 59573
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -144($fp)
	li $t0, 21214
	sw $t0, -148($fp)
	addi $t0, $fp, -20
	sw $t0, -152($fp)
	li $t0, 0
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
	li $t0, 42007
	sw $t0, -172($fp)
	addi $t0, $fp, -20
	sw $t0, -176($fp)
	li $t0, 1
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
	li $t0, 14712
	sw $t0, -196($fp)
	addi $t0, $fp, -20
	sw $t0, -200($fp)
	li $t0, 2
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
	li $t0, 32200
	sw $t0, -220($fp)
	addi $t0, $fp, -20
	sw $t0, -224($fp)
	li $t0, 3
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
	li $t0, 34669
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	li $t0, 1267
	sw $t0, -256($fp)
	addi $t0, $fp, -28
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
	li $t0, 23569
	sw $t0, -280($fp)
	addi $t0, $fp, -28
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
	li $t0, 13704
	sw $t0, -304($fp)
	addi $t0, $fp, -48
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
	li $t0, 1683
	sw $t0, -328($fp)
	addi $t0, $fp, -48
	sw $t0, -332($fp)
	li $t0, 1
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
	li $t0, 20477
	sw $t0, -352($fp)
	addi $t0, $fp, -48
	sw $t0, -356($fp)
	li $t0, 2
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
	li $t0, 15941
	sw $t0, -376($fp)
	addi $t0, $fp, -48
	sw $t0, -380($fp)
	li $t0, 3
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
	li $t0, 22462
	sw $t0, -400($fp)
	addi $t0, $fp, -48
	sw $t0, -404($fp)
	li $t0, 4
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
	lw $t0, -56($fp)
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -68($fp)
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -80($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -92($fp)
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -104($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -116($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -128($fp)
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -140($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
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
	lw $t0, -248($fp)
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -540($fp)
	li $t0, 0
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
	addi $t0, $fp, -28
	sw $t0, -560($fp)
	li $t0, 1
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
	addi $t0, $fp, -48
	sw $t0, -580($fp)
	li $t0, 0
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
	addi $t0, $fp, -48
	sw $t0, -600($fp)
	li $t0, 1
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
	li $t0, 2
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
	li $t0, 3
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
	li $t0, 4
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
	lw $t0, -68($fp)
	sw $t0, -680($fp)
	lw $ra, -4($fp)
	lw $v0, -680($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -56($fp)
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -688($fp)
	lw $t1, -688($fp)
	li $t2, 0
	bne $t1, $t2, label438
	j label439
label438:
	li $t0, 0
	sw $t0, -692($fp)
	lw $t0, 8($fp)
	sw $t0, -696($fp)
	lw $t1, -696($fp)
	li $t2, 0
	bne $t1, $t2, label442
	j label441
label441:
	li $t0, 1
	sw $t0, -692($fp)
label442:
	addi $t0, $fp, -48
	sw $t0, -700($fp)
	lw $t0, 8($fp)
	sw $t0, -704($fp)
	li $t0, 4
	lw $t1, -704($fp)
	mul $t0, $t0, $t1
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	lw $t1, -700($fp)
	add $t0, $t0, $t1
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	lw $t1, 0($t0)
	sw $t1, -716($fp)
	li $t0, 7283
	sw $t0, -720($fp)
	lw $t0, -104($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -728($fp)
	addi $sp, $sp, -4
	lw $t0, -720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -728($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -732($fp)
	addi $sp, $sp, 12
	lw $t0, -716($fp)
	lw $t1, -732($fp)
	mul $t0, $t0, $t1
	sw $t0, -736($fp)
	li $t0, 0
	lw $t1, -736($fp)
	sub $t0, $t0, $t1
	sw $t0, -740($fp)
	lw $t0, -692($fp)
	lw $t1, -740($fp)
	add $t0, $t0, $t1
	sw $t0, -744($fp)
	lw $ra, -4($fp)
	lw $v0, -744($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label440
label439:
label443:
	li $t0, 38207
	sw $t0, -748($fp)
	li $t0, 0
	sw $t0, -752($fp)
	li $t0, 50585
	sw $t0, -756($fp)
	lw $t0, -140($fp)
	sw $t0, -760($fp)
	lw $t0, -756($fp)
	lw $t1, -760($fp)
	add $t0, $t0, $t1
	sw $t0, -764($fp)
	lw $t1, -764($fp)
	li $t2, 0
	bne $t1, $t2, label446
	j label448
label448:
	li $t0, 2142
	sw $t0, -768($fp)
	lw $t1, -768($fp)
	li $t2, 0
	bne $t1, $t2, label446
	j label447
label446:
	li $t0, 1
	sw $t0, -752($fp)
label447:
	li $t0, 0
	sw $t0, -772($fp)
	lw $t0, -140($fp)
	sw $t0, -776($fp)
	lw $t0, -56($fp)
	sw $t0, -780($fp)
	lw $t1, -776($fp)
	lw $t2, -780($fp)
	blt $t1, $t2, label449
	j label451
label451:
	lw $t0, -140($fp)
	sw $t0, -784($fp)
	lw $t1, -784($fp)
	li $t2, 0
	bne $t1, $t2, label449
	j label450
label449:
	li $t0, 1
	sw $t0, -772($fp)
label450:
	addi $sp, $sp, -4
	lw $t0, -752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -772($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -788($fp)
	addi $sp, $sp, 12
	lw $t0, -748($fp)
	lw $t1, -788($fp)
	mul $t0, $t0, $t1
	sw $t0, -792($fp)
	li $t0, 0
	sw $t0, -796($fp)
	lw $t0, -128($fp)
	sw $t0, -800($fp)
	lw $t1, -800($fp)
	li $t2, 0
	bne $t1, $t2, label453
	j label452
label452:
	li $t0, 1
	sw $t0, -796($fp)
label453:
	li $t0, 0
	lw $t1, -796($fp)
	sub $t0, $t0, $t1
	sw $t0, -804($fp)
	lw $t0, -792($fp)
	lw $t1, -804($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -808($fp)
	addi $t0, $fp, -48
	sw $t0, -812($fp)
	li $t0, 3
	sw $t0, -816($fp)
	li $t0, 4
	lw $t1, -816($fp)
	mul $t0, $t0, $t1
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	lw $t1, -812($fp)
	add $t0, $t0, $t1
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	lw $t1, 0($t0)
	sw $t1, -828($fp)
	lw $t0, -808($fp)
	lw $t1, -828($fp)
	sub $t0, $t0, $t1
	sw $t0, -832($fp)
	lw $t1, -832($fp)
	li $t2, 0
	bne $t1, $t2, label444
	j label445
label444:
	li $t0, 0
	sw $t0, -836($fp)
	addi $t0, $fp, -28
	sw $t0, -840($fp)
	li $t0, 1
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
	lw $t1, -856($fp)
	li $t2, 0
	bne $t1, $t2, label455
	j label454
label454:
	li $t0, 1
	sw $t0, -836($fp)
label455:
	li $t0, 0
	lw $t1, -836($fp)
	sub $t0, $t0, $t1
	sw $t0, -860($fp)
	lw $ra, -4($fp)
	lw $v0, -860($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label443
label445:
label440:
	lw $t0, -56($fp)
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -68($fp)
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -80($fp)
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -92($fp)
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -104($fp)
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -116($fp)
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -128($fp)
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -140($fp)
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -896($fp)
	li $t0, 0
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
	addi $t0, $fp, -20
	sw $t0, -916($fp)
	li $t0, 1
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
	addi $t0, $fp, -20
	sw $t0, -936($fp)
	li $t0, 2
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
	addi $t0, $fp, -20
	sw $t0, -956($fp)
	li $t0, 3
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
	lw $t0, -248($fp)
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -980($fp)
	li $t0, 0
	sw $t0, -984($fp)
	li $t0, 4
	lw $t1, -984($fp)
	mul $t0, $t0, $t1
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	lw $t1, -980($fp)
	add $t0, $t0, $t1
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	lw $t1, 0($t0)
	sw $t1, -996($fp)
	lw $t0, -996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1000($fp)
	li $t0, 1
	sw $t0, -1004($fp)
	li $t0, 4
	lw $t1, -1004($fp)
	mul $t0, $t0, $t1
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	lw $t1, -1000($fp)
	add $t0, $t0, $t1
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	lw $t1, 0($t0)
	sw $t1, -1016($fp)
	lw $t0, -1016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
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
	addi $t0, $fp, -48
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
	addi $t0, $fp, -48
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
	addi $t0, $fp, -48
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
	lw $t0, -1096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -1100($fp)
	li $t0, 4
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
	addi $t0, $fp, -48
	sw $t0, -1120($fp)
	li $t0, 44181
	sw $t0, -1124($fp)
	li $t0, 8810
	sw $t0, -1128($fp)
	lw $t0, -1124($fp)
	lw $t1, -1128($fp)
	add $t0, $t0, $t1
	sw $t0, -1132($fp)
	lw $t0, 4($fp)
	sw $t0, -1136($fp)
	li $t0, 0
	lw $t1, -1136($fp)
	sub $t0, $t0, $t1
	sw $t0, -1140($fp)
	lw $t0, -1132($fp)
	lw $t1, -1140($fp)
	add $t0, $t0, $t1
	sw $t0, -1144($fp)
	li $t0, 4
	lw $t1, -1144($fp)
	mul $t0, $t0, $t1
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	lw $t1, -1120($fp)
	add $t0, $t0, $t1
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	lw $t1, 0($t0)
	sw $t1, -1156($fp)
	lw $ra, -4($fp)
	lw $v0, -1156($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -1160($fp)
	addi $t0, $fp, -20
	sw $t0, -1164($fp)
	lw $t0, -128($fp)
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -1172($fp)
	li $t0, 4
	lw $t1, -1172($fp)
	mul $t0, $t0, $t1
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	lw $t1, -1164($fp)
	add $t0, $t0, $t1
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	lw $t1, 0($t0)
	sw $t1, -1184($fp)
	li $t0, 0
	lw $t1, -1184($fp)
	sub $t0, $t0, $t1
	sw $t0, -1188($fp)
	lw $t1, -1188($fp)
	li $t2, 0
	bne $t1, $t2, label456
	j label458
label458:
	li $t0, 0
	sw $t0, -1192($fp)
	addi $t0, $fp, -20
	sw $t0, -1196($fp)
	lw $t0, -80($fp)
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
	lw $t1, -1212($fp)
	li $t2, 0
	bne $t1, $t2, label461
	j label460
label461:
	li $t0, 62806
	sw $t0, -1216($fp)
	lw $t1, -1216($fp)
	li $t2, 0
	bne $t1, $t2, label459
	j label460
label459:
	li $t0, 1
	sw $t0, -1192($fp)
label460:
	li $t0, 0
	sw $t0, -1220($fp)
	li $t0, 55515
	sw $t0, -1224($fp)
	lw $t0, -248($fp)
	sw $t0, -1228($fp)
	lw $t0, -1224($fp)
	lw $t1, -1228($fp)
	mul $t0, $t0, $t1
	sw $t0, -1232($fp)
	lw $t0, -116($fp)
	sw $t0, -1236($fp)
	lw $t1, -1232($fp)
	lw $t2, -1236($fp)
	blt $t1, $t2, label462
	j label463
label462:
	li $t0, 1
	sw $t0, -1220($fp)
label463:
	li $t0, 0
	sw $t0, -1240($fp)
	li $t0, 31466
	sw $t0, -1244($fp)
	li $t0, 59635
	sw $t0, -1248($fp)
	lw $t1, -1244($fp)
	lw $t2, -1248($fp)
	blt $t1, $t2, label464
	j label465
label464:
	li $t0, 1
	sw $t0, -1240($fp)
label465:
	li $t0, 0
	sw $t0, -1252($fp)
	li $t0, 43055
	sw $t0, -1256($fp)
	lw $t0, -92($fp)
	sw $t0, -1260($fp)
	lw $t1, -1256($fp)
	lw $t2, -1260($fp)
	bge $t1, $t2, label468
	j label467
label468:
	li $t0, 34963
	sw $t0, -1264($fp)
	lw $t1, -1264($fp)
	li $t2, 0
	bne $t1, $t2, label466
	j label467
label466:
	li $t0, 1
	sw $t0, -1252($fp)
label467:
	li $t0, 0
	sw $t0, -1268($fp)
	li $t0, 6329
	sw $t0, -1272($fp)
	lw $t1, -1272($fp)
	li $t2, 0
	bne $t1, $t2, label471
	j label470
label471:
	li $t0, 61508
	sw $t0, -1276($fp)
	lw $t1, -1276($fp)
	li $t2, 0
	bne $t1, $t2, label469
	j label470
label469:
	li $t0, 1
	sw $t0, -1268($fp)
label470:
	addi $sp, $sp, -4
	lw $t0, -1192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1268($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1280($fp)
	addi $sp, $sp, 24
	li $t0, 53672
	sw $t0, -1284($fp)
	lw $t0, -1280($fp)
	lw $t1, -1284($fp)
	mul $t0, $t0, $t1
	sw $t0, -1288($fp)
	lw $t0, -140($fp)
	sw $t0, -1292($fp)
	lw $t0, -1288($fp)
	lw $t1, -1292($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1296($fp)
	lw $t1, -1296($fp)
	li $t2, 0
	bne $t1, $t2, label456
	j label457
label456:
	li $t0, 1
	sw $t0, -1160($fp)
label457:
	li $t0, 11193
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	sw $t0, -1308($fp)
	li $t0, 0
	sw $t0, -1312($fp)
	addi $t0, $fp, -48
	sw $t0, -1316($fp)
	lw $t0, -116($fp)
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
	li $t0, 0
	lw $t1, -1332($fp)
	sub $t0, $t0, $t1
	sw $t0, -1336($fp)
	lw $t1, -1336($fp)
	li $t2, 0
	bne $t1, $t2, label473
	j label474
label474:
	lw $t0, -104($fp)
	sw $t0, -1340($fp)
	li $t0, 39277
	sw $t0, -1344($fp)
	lw $t0, -1340($fp)
	lw $t1, -1344($fp)
	mul $t0, $t0, $t1
	sw $t0, -1348($fp)
	li $t0, 2848
	sw $t0, -1352($fp)
	lw $t0, -1348($fp)
	lw $t1, -1352($fp)
	add $t0, $t0, $t1
	sw $t0, -1356($fp)
	li $t0, 43393
	sw $t0, -1360($fp)
	li $t0, 0
	lw $t1, -1360($fp)
	sub $t0, $t0, $t1
	sw $t0, -1364($fp)
	lw $t1, -1356($fp)
	lw $t2, -1364($fp)
	bge $t1, $t2, label472
	j label473
label472:
	li $t0, 1
	sw $t0, -1312($fp)
label473:
	lw $t0, -56($fp)
	sw $t0, -1368($fp)
	lw $t1, -1368($fp)
	li $t2, 0
	bne $t1, $t2, label475
	j label476
label475:
	li $t0, 0
	sw $t0, -1372($fp)
	lw $t0, -68($fp)
	sw $t0, -1376($fp)
	li $t0, 8410
	sw $t0, -1380($fp)
	li $t0, 0
	sw $t0, -1384($fp)
	li $t0, 4115
	sw $t0, -1388($fp)
	lw $t1, -1388($fp)
	li $t2, 0
	bne $t1, $t2, label481
	j label480
label480:
	li $t0, 1
	sw $t0, -1384($fp)
label481:
	lw $t0, -1380($fp)
	lw $t1, -1384($fp)
	mul $t0, $t0, $t1
	sw $t0, -1392($fp)
	lw $t1, -1376($fp)
	lw $t2, -1392($fp)
	beq $t1, $t2, label478
	j label479
label478:
	li $t0, 1
	sw $t0, -1372($fp)
label479:
	j label477
label476:
	li $t0, 0
	sw $t0, -1396($fp)
	lw $t0, -140($fp)
	sw $t0, -1400($fp)
	lw $t0, -56($fp)
	sw $t0, -1404($fp)
	lw $t0, -1400($fp)
	lw $t1, -1404($fp)
	mul $t0, $t0, $t1
	sw $t0, -1408($fp)
	li $t0, 1427
	sw $t0, -1412($fp)
	lw $t0, -1408($fp)
	lw $t1, -1412($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1416($fp)
	li $t0, 0
	sw $t0, -1420($fp)
	lw $t0, 4($fp)
	sw $t0, -1424($fp)
	li $t0, 0
	lw $t1, -1424($fp)
	sub $t0, $t0, $t1
	sw $t0, -1428($fp)
	li $t0, 0
	sw $t0, -1432($fp)
	addi $t0, $fp, -48
	sw $t0, -1436($fp)
	lw $t0, -1304($fp)
	sw $t0, -1440($fp)
	li $t0, 4
	lw $t1, -1440($fp)
	mul $t0, $t0, $t1
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	lw $t1, -1436($fp)
	add $t0, $t0, $t1
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	lw $t1, 0($t0)
	sw $t1, -1452($fp)
	lw $t1, -1452($fp)
	li $t2, 0
	bne $t1, $t2, label487
	j label486
label486:
	li $t0, 1
	sw $t0, -1432($fp)
label487:
	li $t0, 0
	sw $t0, -1456($fp)
	lw $t0, 4($fp)
	sw $t0, -1460($fp)
	lw $t1, -1460($fp)
	li $t2, 0
	bne $t1, $t2, label491
	j label490
label491:
	li $t0, 22114
	sw $t0, -1464($fp)
	lw $t1, -1464($fp)
	li $t2, 0
	bne $t1, $t2, label488
	j label490
label490:
	li $t0, 5799
	sw $t0, -1468($fp)
	lw $t1, -1468($fp)
	li $t2, 0
	bne $t1, $t2, label488
	j label489
label488:
	li $t0, 1
	sw $t0, -1456($fp)
label489:
	addi $sp, $sp, -4
	lw $t0, -1432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1456($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1472($fp)
	addi $sp, $sp, 12
	lw $t1, -1428($fp)
	lw $t2, -1472($fp)
	bgt $t1, $t2, label484
	j label485
label484:
	li $t0, 1
	sw $t0, -1420($fp)
label485:
	lw $t1, -1416($fp)
	lw $t2, -1420($fp)
	bne $t1, $t2, label482
	j label483
label482:
	li $t0, 1
	sw $t0, -1396($fp)
label483:
label477:
	lw $t0, -1304($fp)
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -140($fp)
	sw $t0, -1480($fp)
	li $t0, 0
	lw $t1, -1480($fp)
	sub $t0, $t0, $t1
	sw $t0, -1484($fp)
	li $t0, 0
	sw $t0, -1488($fp)
	addi $t0, $fp, -20
	sw $t0, -1492($fp)
	li $t0, 0
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
	lw $t1, -1508($fp)
	li $t2, 0
	bne $t1, $t2, label493
	j label492
label492:
	li $t0, 1
	sw $t0, -1488($fp)
label493:
	lw $t0, -1484($fp)
	lw $t1, -1488($fp)
	add $t0, $t0, $t1
	sw $t0, -1512($fp)
	addi $t0, $fp, -28
	sw $t0, -1516($fp)
	lw $t0, -140($fp)
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
	li $t0, 28261
	sw $t0, -1536($fp)
	li $t0, 0
	lw $t1, -1536($fp)
	sub $t0, $t0, $t1
	sw $t0, -1540($fp)
	lw $t0, -1532($fp)
	lw $t1, -1540($fp)
	mul $t0, $t0, $t1
	sw $t0, -1544($fp)
	lw $t0, -1512($fp)
	lw $t1, -1544($fp)
	sub $t0, $t0, $t1
	sw $t0, -1548($fp)
	lw $ra, -4($fp)
	lw $v0, -1548($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -56($fp)
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -68($fp)
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -80($fp)
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -92($fp)
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -104($fp)
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -116($fp)
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -128($fp)
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -140($fp)
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -1584($fp)
	li $t0, 0
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
	addi $t0, $fp, -20
	sw $t0, -1604($fp)
	li $t0, 1
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
	addi $t0, $fp, -20
	sw $t0, -1624($fp)
	li $t0, 2
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
	addi $t0, $fp, -20
	sw $t0, -1644($fp)
	li $t0, 3
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
	lw $t0, -248($fp)
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1668($fp)
	li $t0, 0
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
	addi $t0, $fp, -28
	sw $t0, -1688($fp)
	li $t0, 1
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
	li $t0, 0
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
	li $t0, 1
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
	addi $t0, $fp, -48
	sw $t0, -1748($fp)
	li $t0, 2
	sw $t0, -1752($fp)
	li $t0, 4
	lw $t1, -1752($fp)
	mul $t0, $t0, $t1
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	lw $t1, -1748($fp)
	add $t0, $t0, $t1
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	lw $t1, 0($t0)
	sw $t1, -1764($fp)
	lw $t0, -1764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -1768($fp)
	li $t0, 3
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
	lw $t0, -1784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -1788($fp)
	li $t0, 4
	sw $t0, -1792($fp)
	li $t0, 4
	lw $t1, -1792($fp)
	mul $t0, $t0, $t1
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	lw $t1, -1788($fp)
	add $t0, $t0, $t1
	sw $t0, -1800($fp)
	lw $t0, -1800($fp)
	lw $t1, 0($t0)
	sw $t1, -1804($fp)
	lw $t0, -1804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -1808($fp)
	li $t0, 0
	sw $t0, -1812($fp)
	li $t0, 0
	sw $t0, -1816($fp)
	li $t0, 29187
	sw $t0, -1820($fp)
	lw $t1, -1820($fp)
	li $t2, 0
	bne $t1, $t2, label498
	j label497
label497:
	li $t0, 1
	sw $t0, -1816($fp)
label498:
	li $t0, 10727
	sw $t0, -1824($fp)
	lw $t0, -1816($fp)
	lw $t1, -1824($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1828($fp)
	lw $t1, -1828($fp)
	li $t2, 0
	bne $t1, $t2, label496
	j label495
label496:
	lw $t0, -92($fp)
	sw $t0, -1832($fp)
	lw $t1, -1832($fp)
	li $t2, 0
	bne $t1, $t2, label494
	j label495
label494:
	li $t0, 1
	sw $t0, -1812($fp)
label495:
	li $t0, 4
	lw $t1, -1812($fp)
	mul $t0, $t0, $t1
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	lw $t1, -1808($fp)
	add $t0, $t0, $t1
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	lw $t1, 0($t0)
	sw $t1, -1844($fp)
	lw $ra, -4($fp)
	lw $v0, -1844($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -3160
	li $t0, 13310
	sw $t0, -84($fp)
	addi $t0, $fp, -20
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
	li $t0, 31329
	sw $t0, -108($fp)
	addi $t0, $fp, -20
	sw $t0, -112($fp)
	li $t0, 1
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
	li $t0, 45668
	sw $t0, -132($fp)
	addi $t0, $fp, -20
	sw $t0, -136($fp)
	li $t0, 2
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
	li $t0, 29779
	sw $t0, -156($fp)
	addi $t0, $fp, -20
	sw $t0, -160($fp)
	li $t0, 3
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
	li $t0, 31505
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	li $t0, 62589
	sw $t0, -192($fp)
	addi $t0, $fp, -24
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
	li $t0, 8424
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	li $t0, 40316
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	li $t0, 3382
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	li $t0, 4396
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	li $t0, 17835
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	li $t0, 38345
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	li $t0, 35862
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	li $t0, 11934
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	li $t0, 28324
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	li $t0, 33132
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	li $t0, 70
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -344($fp)
	li $t0, 39517
	sw $t0, -348($fp)
	addi $t0, $fp, -32
	sw $t0, -352($fp)
	li $t0, 0
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
	li $t0, 6874
	sw $t0, -372($fp)
	addi $t0, $fp, -32
	sw $t0, -376($fp)
	li $t0, 1
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
	li $t0, 2918
	sw $t0, -396($fp)
	addi $t0, $fp, -72
	sw $t0, -400($fp)
	li $t0, 0
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
	li $t0, 17375
	sw $t0, -420($fp)
	addi $t0, $fp, -72
	sw $t0, -424($fp)
	li $t0, 1
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
	li $t0, 15284
	sw $t0, -444($fp)
	addi $t0, $fp, -72
	sw $t0, -448($fp)
	li $t0, 2
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
	li $t0, 7034
	sw $t0, -468($fp)
	addi $t0, $fp, -72
	sw $t0, -472($fp)
	li $t0, 3
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
	li $t0, 18802
	sw $t0, -492($fp)
	addi $t0, $fp, -72
	sw $t0, -496($fp)
	li $t0, 4
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
	li $t0, 37399
	sw $t0, -516($fp)
	addi $t0, $fp, -72
	sw $t0, -520($fp)
	li $t0, 5
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
	li $t0, 12833
	sw $t0, -540($fp)
	addi $t0, $fp, -72
	sw $t0, -544($fp)
	li $t0, 6
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
	li $t0, 40706
	sw $t0, -564($fp)
	addi $t0, $fp, -72
	sw $t0, -568($fp)
	li $t0, 7
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
	li $t0, 9919
	sw $t0, -588($fp)
	addi $t0, $fp, -72
	sw $t0, -592($fp)
	li $t0, 8
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
	li $t0, 41094
	sw $t0, -612($fp)
	addi $t0, $fp, -72
	sw $t0, -616($fp)
	li $t0, 9
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
	li $t0, 4357
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	li $t0, 20646
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -656($fp)
	li $t0, 54404
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -668($fp)
	li $t0, 35686
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	li $t0, 778
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -692($fp)
	li $t0, 18647
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	li $t0, 1656
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	li $t0, 63367
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -728($fp)
	li $t0, 27071
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -740($fp)
	li $t0, 41972
	sw $t0, -744($fp)
	addi $t0, $fp, -80
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
	li $t0, 1214
	sw $t0, -768($fp)
	addi $t0, $fp, -80
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
	li $t0, 0
	sw $t0, -792($fp)
	addi $t0, $fp, -72
	sw $t0, -796($fp)
	li $t0, 0
	sw $t0, -800($fp)
	li $t0, 31467
	sw $t0, -804($fp)
	li $t0, 59807
	sw $t0, -808($fp)
	lw $t1, -804($fp)
	lw $t2, -808($fp)
	beq $t1, $t2, label503
	j label502
label503:
	lw $t0, -724($fp)
	sw $t0, -812($fp)
	lw $t1, -812($fp)
	li $t2, 0
	bne $t1, $t2, label501
	j label502
label501:
	li $t0, 1
	sw $t0, -800($fp)
label502:
	li $t0, 4
	lw $t1, -800($fp)
	mul $t0, $t0, $t1
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	lw $t1, -796($fp)
	add $t0, $t0, $t1
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	lw $t1, 0($t0)
	sw $t1, -824($fp)
	addi $t0, $fp, -20
	sw $t0, -828($fp)
	li $t0, 0
	sw $t0, -832($fp)
	li $t0, 39559
	sw $t0, -836($fp)
	lw $t0, -268($fp)
	sw $t0, -840($fp)
	lw $t1, -836($fp)
	lw $t2, -840($fp)
	blt $t1, $t2, label504
	j label505
label504:
	li $t0, 1
	sw $t0, -832($fp)
label505:
	li $t0, 4
	lw $t1, -832($fp)
	mul $t0, $t0, $t1
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	lw $t1, -828($fp)
	add $t0, $t0, $t1
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	lw $t1, 0($t0)
	sw $t1, -852($fp)
	lw $t1, -824($fp)
	lw $t2, -852($fp)
	bge $t1, $t2, label499
	j label500
label499:
	li $t0, 1
	sw $t0, -792($fp)
label500:
label506:
	lw $t0, -184($fp)
	sw $t0, -856($fp)
	li $t0, 1793
	sw $t0, -860($fp)
	lw $t0, -856($fp)
	lw $t1, -860($fp)
	mul $t0, $t0, $t1
	sw $t0, -864($fp)
	lw $t0, -712($fp)
	sw $t0, -868($fp)
	lw $t0, -864($fp)
	lw $t1, -868($fp)
	add $t0, $t0, $t1
	sw $t0, -872($fp)
	lw $t0, -328($fp)
	sw $t0, -876($fp)
	lw $t0, -872($fp)
	lw $t1, -876($fp)
	sub $t0, $t0, $t1
	sw $t0, -880($fp)
	li $t0, 0
	sw $t0, -884($fp)
	addi $t0, $fp, -24
	sw $t0, -888($fp)
	lw $t0, -292($fp)
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
	lw $t1, -904($fp)
	li $t2, 0
	bne $t1, $t2, label511
	j label510
label510:
	li $t0, 1
	sw $t0, -884($fp)
label511:
	lw $t0, -880($fp)
	lw $t1, -884($fp)
	sub $t0, $t0, $t1
	sw $t0, -908($fp)
	lw $t1, -908($fp)
	li $t2, 0
	bne $t1, $t2, label509
	j label508
label509:
	lw $t0, -328($fp)
	sw $t0, -912($fp)
	li $t0, 6205
	sw $t0, -916($fp)
	lw $t0, -912($fp)
	lw $t1, -916($fp)
	mul $t0, $t0, $t1
	sw $t0, -920($fp)
	li $t0, 6275
	sw $t0, -924($fp)
	lw $t0, -292($fp)
	sw $t0, -928($fp)
	lw $t0, -924($fp)
	lw $t1, -928($fp)
	add $t0, $t0, $t1
	sw $t0, -932($fp)
	lw $t0, -676($fp)
	sw $t0, -936($fp)
	lw $t0, -932($fp)
	lw $t1, -936($fp)
	sub $t0, $t0, $t1
	sw $t0, -940($fp)
	li $t0, 34926
	sw $t0, -944($fp)
	li $t0, 0
	sw $t0, -948($fp)
	lw $t0, -328($fp)
	sw $t0, -952($fp)
	lw $t1, -952($fp)
	li $t2, 0
	bne $t1, $t2, label515
	j label513
label515:
	lw $t0, -244($fp)
	sw $t0, -956($fp)
	lw $t1, -956($fp)
	li $t2, 0
	bne $t1, $t2, label514
	j label513
label514:
	lw $t0, -316($fp)
	sw $t0, -960($fp)
	lw $t1, -960($fp)
	li $t2, 0
	bne $t1, $t2, label512
	j label513
label512:
	li $t0, 1
	sw $t0, -948($fp)
label513:
	li $t0, 0
	sw $t0, -964($fp)
	li $t0, 0
	sw $t0, -968($fp)
	lw $t0, -328($fp)
	sw $t0, -972($fp)
	li $t0, 2348
	sw $t0, -976($fp)
	lw $t1, -972($fp)
	lw $t2, -976($fp)
	blt $t1, $t2, label518
	j label519
label518:
	li $t0, 1
	sw $t0, -968($fp)
label519:
	lw $t0, -220($fp)
	sw $t0, -980($fp)
	lw $t1, -968($fp)
	lw $t2, -980($fp)
	bne $t1, $t2, label516
	j label517
label516:
	li $t0, 1
	sw $t0, -964($fp)
label517:
	addi $sp, $sp, -4
	lw $t0, -940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -964($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -984($fp)
	addi $sp, $sp, 20
	lw $t1, -920($fp)
	lw $t2, -984($fp)
	blt $t1, $t2, label507
	j label508
label507:
	li $t0, 0
	sw $t0, -988($fp)
	lw $t0, 16($fp)
	sw $t0, -992($fp)
	lw $t1, -992($fp)
	li $t2, 0
	bne $t1, $t2, label522
	j label521
label522:
	lw $t0, -664($fp)
	sw $t0, -996($fp)
	lw $t0, -652($fp)
	sw $t0, -1000($fp)
	lw $t0, -996($fp)
	lw $t1, -1000($fp)
	mul $t0, $t0, $t1
	sw $t0, -1004($fp)
	li $t0, 41865
	sw $t0, -1008($fp)
	lw $t0, -1004($fp)
	lw $t1, -1008($fp)
	sub $t0, $t0, $t1
	sw $t0, -1012($fp)
	addi $t0, $fp, -32
	sw $t0, -1016($fp)
	li $t0, 1
	sw $t0, -1020($fp)
	li $t0, 4
	lw $t1, -1020($fp)
	mul $t0, $t0, $t1
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	lw $t1, -1016($fp)
	add $t0, $t0, $t1
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	lw $t1, 0($t0)
	sw $t1, -1032($fp)
	lw $t1, -1012($fp)
	lw $t2, -1032($fp)
	bne $t1, $t2, label520
	j label521
label520:
	li $t0, 1
	sw $t0, -988($fp)
label521:
	j label506
label508:
	li $t0, 59240
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	sw $t0, -1064($fp)
	li $t0, 57084
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	sw $t0, -1076($fp)
	li $t0, 16227
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, -1088($fp)
	li $t0, 12506
	sw $t0, -1092($fp)
	addi $t0, $fp, -1052
	sw $t0, -1096($fp)
	li $t0, 0
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1104($fp)
	lw $t0, -1096($fp)
	lw $t1, -1104($fp)
	add $t0, $t0, $t1
	sw $t0, -1108($fp)
	lw $t0, -1092($fp)
	lw $t1, -1108($fp)
	sw $t0, 0($t1)
	lw $t0, -1108($fp)
	lw $t1, 0($t0)
	sw $t1, -1112($fp)
	li $t0, 28947
	sw $t0, -1116($fp)
	addi $t0, $fp, -1052
	sw $t0, -1120($fp)
	li $t0, 1
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1128($fp)
	lw $t0, -1120($fp)
	lw $t1, -1128($fp)
	add $t0, $t0, $t1
	sw $t0, -1132($fp)
	lw $t0, -1116($fp)
	lw $t1, -1132($fp)
	sw $t0, 0($t1)
	lw $t0, -1132($fp)
	lw $t1, 0($t0)
	sw $t1, -1136($fp)
	li $t0, 29060
	sw $t0, -1140($fp)
	addi $t0, $fp, -1052
	sw $t0, -1144($fp)
	li $t0, 2
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1152($fp)
	lw $t0, -1144($fp)
	lw $t1, -1152($fp)
	add $t0, $t0, $t1
	sw $t0, -1156($fp)
	lw $t0, -1140($fp)
	lw $t1, -1156($fp)
	sw $t0, 0($t1)
	lw $t0, -1156($fp)
	lw $t1, 0($t0)
	sw $t1, -1160($fp)
	li $t0, 53212
	sw $t0, -1164($fp)
	addi $t0, $fp, -1052
	sw $t0, -1168($fp)
	li $t0, 3
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1176($fp)
	lw $t0, -1168($fp)
	lw $t1, -1176($fp)
	add $t0, $t0, $t1
	sw $t0, -1180($fp)
	lw $t0, -1164($fp)
	lw $t1, -1180($fp)
	sw $t0, 0($t1)
	lw $t0, -1180($fp)
	lw $t1, 0($t0)
	sw $t1, -1184($fp)
	li $t0, 38866
	sw $t0, -1188($fp)
	addi $t0, $fp, -1052
	sw $t0, -1192($fp)
	li $t0, 4
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
	li $t0, 4618
	sw $t0, -1212($fp)
	addi $t0, $fp, -32
	sw $t0, -1216($fp)
	lw $t0, -736($fp)
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
	lw $t0, -1212($fp)
	lw $t1, -1232($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1236($fp)
	lw $t0, -700($fp)
	sw $t0, -1240($fp)
	lw $t1, -1236($fp)
	lw $t2, -1240($fp)
	bgt $t1, $t2, label523
	j label526
label526:
	li $t0, 57569
	sw $t0, -1244($fp)
	li $t0, 59513
	sw $t0, -1248($fp)
	lw $t0, -1244($fp)
	lw $t1, -1248($fp)
	add $t0, $t0, $t1
	sw $t0, -1252($fp)
	li $t0, 59022
	sw $t0, -1256($fp)
	lw $t0, -1252($fp)
	lw $t1, -1256($fp)
	add $t0, $t0, $t1
	sw $t0, -1260($fp)
	lw $t1, -1260($fp)
	li $t2, 0
	bne $t1, $t2, label527
	j label524
label527:
	lw $t0, -676($fp)
	sw $t0, -1264($fp)
	li $t0, 27720
	sw $t0, -1268($fp)
	lw $t0, -1264($fp)
	lw $t1, -1268($fp)
	add $t0, $t0, $t1
	sw $t0, -1272($fp)
	lw $t1, -1272($fp)
	li $t2, 0
	bne $t1, $t2, label523
	j label524
label523:
	li $t0, 0
	sw $t0, -1276($fp)
	li $t0, 60291
	sw $t0, -1280($fp)
	lw $t1, -1280($fp)
	li $t2, 0
	bne $t1, $t2, label529
	j label528
label528:
	li $t0, 1
	sw $t0, -1276($fp)
label529:
	lw $t0, -712($fp)
	sw $t0, -1284($fp)
	lw $t0, -1276($fp)
	lw $t1, -1284($fp)
	sub $t0, $t0, $t1
	sw $t0, -1288($fp)
	li $t0, 0
	sw $t0, -1292($fp)
	addi $t0, $fp, -32
	sw $t0, -1296($fp)
	li $t0, 0
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
	lw $t1, -1312($fp)
	li $t2, 0
	bne $t1, $t2, label531
	j label530
label530:
	li $t0, 1
	sw $t0, -1292($fp)
label531:
	li $t0, 58123
	sw $t0, -1316($fp)
	li $t0, 0
	lw $t1, -1316($fp)
	sub $t0, $t0, $t1
	sw $t0, -1320($fp)
	lw $t0, -1292($fp)
	lw $t1, -1320($fp)
	mul $t0, $t0, $t1
	sw $t0, -1324($fp)
	lw $t0, -1288($fp)
	lw $t1, -1324($fp)
	sub $t0, $t0, $t1
	sw $t0, -1328($fp)
	j label525
label524:
	li $t0, 0
	sw $t0, -1332($fp)
	li $t0, 39204
	sw $t0, -1336($fp)
	lw $t1, -1336($fp)
	li $t2, 0
	bne $t1, $t2, label533
	j label532
label532:
	li $t0, 1
	sw $t0, -1332($fp)
label533:
label525:
	li $t0, 5812
	sw $t0, -1340($fp)
	lw $t0, 4($fp)
	sw $t0, -1344($fp)
	li $t0, 0
	lw $t1, -1344($fp)
	sub $t0, $t0, $t1
	sw $t0, -1348($fp)
	lw $t0, -1340($fp)
	lw $t1, -1348($fp)
	mul $t0, $t0, $t1
	sw $t0, -1352($fp)
	li $t0, 59337
	sw $t0, -1356($fp)
	li $t0, 0
	sw $t0, -1360($fp)
	li $t0, 0
	sw $t0, -1364($fp)
	li $t0, 5135
	sw $t0, -1368($fp)
	lw $t0, -232($fp)
	sw $t0, -1372($fp)
	lw $t0, -328($fp)
	sw $t0, -1376($fp)
	lw $t0, -1372($fp)
	lw $t1, -1376($fp)
	add $t0, $t0, $t1
	sw $t0, -1380($fp)
	li $t0, 0
	sw $t0, -1384($fp)
	lw $t0, -640($fp)
	sw $t0, -1388($fp)
	lw $t1, -1388($fp)
	li $t2, 0
	bne $t1, $t2, label540
	j label538
label540:
	lw $t0, -664($fp)
	sw $t0, -1392($fp)
	lw $t1, -1392($fp)
	li $t2, 0
	bne $t1, $t2, label538
	j label539
label538:
	li $t0, 1
	sw $t0, -1384($fp)
label539:
	li $t0, 0
	sw $t0, -1396($fp)
	lw $t0, -736($fp)
	sw $t0, -1400($fp)
	li $t0, 33360
	sw $t0, -1404($fp)
	lw $t1, -1400($fp)
	lw $t2, -1404($fp)
	blt $t1, $t2, label543
	j label542
label543:
	li $t0, 6929
	sw $t0, -1408($fp)
	lw $t1, -1408($fp)
	li $t2, 0
	bne $t1, $t2, label541
	j label542
label541:
	li $t0, 1
	sw $t0, -1396($fp)
label542:
	li $t0, 0
	sw $t0, -1412($fp)
	lw $t0, -724($fp)
	sw $t0, -1416($fp)
	lw $t0, -328($fp)
	sw $t0, -1420($fp)
	lw $t0, -1416($fp)
	lw $t1, -1420($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1424($fp)
	li $t0, 83
	sw $t0, -1428($fp)
	lw $t1, -1424($fp)
	lw $t2, -1428($fp)
	bgt $t1, $t2, label544
	j label545
label544:
	li $t0, 1
	sw $t0, -1412($fp)
label545:
	addi $sp, $sp, -4
	lw $t0, -1380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1412($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1432($fp)
	addi $sp, $sp, 20
	lw $t1, -1368($fp)
	lw $t2, -1432($fp)
	beq $t1, $t2, label536
	j label537
label536:
	li $t0, 1
	sw $t0, -1364($fp)
label537:
	lw $t0, -712($fp)
	sw $t0, -1436($fp)
	li $t0, 0
	lw $t1, -1436($fp)
	sub $t0, $t0, $t1
	sw $t0, -1440($fp)
	addi $t0, $fp, -80
	sw $t0, -1444($fp)
	li $t0, 0
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
	lw $t0, -1440($fp)
	lw $t1, -1460($fp)
	sub $t0, $t0, $t1
	sw $t0, -1464($fp)
	lw $t1, -1364($fp)
	lw $t2, -1464($fp)
	bne $t1, $t2, label534
	j label535
label534:
	li $t0, 1
	sw $t0, -1360($fp)
label535:
	li $t0, 0
	sw $t0, -1468($fp)
	li $t0, 0
	sw $t0, -1472($fp)
	lw $t0, -712($fp)
	sw $t0, -1476($fp)
	li $t0, 41855
	sw $t0, -1480($fp)
	lw $t0, -1476($fp)
	lw $t1, -1480($fp)
	add $t0, $t0, $t1
	sw $t0, -1484($fp)
	lw $t0, 4($fp)
	sw $t0, -1488($fp)
	lw $t0, -1484($fp)
	lw $t1, -1488($fp)
	sub $t0, $t0, $t1
	sw $t0, -1492($fp)
	lw $t0, -1072($fp)
	sw $t0, -1496($fp)
	lw $t1, -1492($fp)
	lw $t2, -1496($fp)
	bge $t1, $t2, label551
	j label552
label551:
	li $t0, 1
	sw $t0, -1472($fp)
label552:
	li $t0, 0
	sw $t0, -1500($fp)
	addi $t0, $fp, -32
	sw $t0, -1504($fp)
	li $t0, 0
	sw $t0, -1508($fp)
	li $t0, 4
	lw $t1, -1508($fp)
	mul $t0, $t0, $t1
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	lw $t1, -1504($fp)
	add $t0, $t0, $t1
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	lw $t1, 0($t0)
	sw $t1, -1520($fp)
	lw $t1, -1520($fp)
	li $t2, 0
	bne $t1, $t2, label554
	j label553
label553:
	li $t0, 1
	sw $t0, -1500($fp)
label554:
	lw $t1, -1472($fp)
	lw $t2, -1500($fp)
	blt $t1, $t2, label549
	j label550
label549:
	li $t0, 1
	sw $t0, -1468($fp)
label550:
	addi $t0, $fp, -32
	sw $t0, -1524($fp)
	lw $t0, -1060($fp)
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
	li $t0, 21756
	sw $t0, -1544($fp)
	li $t0, 18119
	sw $t0, -1548($fp)
	li $t0, 0
	lw $t1, -1548($fp)
	sub $t0, $t0, $t1
	sw $t0, -1552($fp)
	addi $sp, $sp, -4
	lw $t0, -1544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1552($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1556($fp)
	addi $sp, $sp, 12
	lw $t0, -1540($fp)
	lw $t1, -1556($fp)
	mul $t0, $t0, $t1
	sw $t0, -1560($fp)
	lw $t1, -1468($fp)
	lw $t2, -1560($fp)
	beq $t1, $t2, label546
	j label547
label546:
	li $t0, 0
	sw $t0, -1564($fp)
	lw $t0, -736($fp)
	sw $t0, -1568($fp)
	li $t0, 0
	lw $t1, -1568($fp)
	sub $t0, $t0, $t1
	sw $t0, -1572($fp)
	lw $t1, -1572($fp)
	li $t2, 0
	bne $t1, $t2, label556
	j label555
label555:
	li $t0, 1
	sw $t0, -1564($fp)
label556:
	lw $t0, -1084($fp)
	sw $t0, -1576($fp)
	li $t0, 5742
	sw $t0, -1580($fp)
	lw $t0, -1576($fp)
	lw $t1, -1580($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1584($fp)
	li $t0, 9667
	sw $t0, -1588($fp)
	lw $t0, -1584($fp)
	lw $t1, -1588($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1592($fp)
	lw $t0, -1564($fp)
	lw $t1, -1592($fp)
	add $t0, $t0, $t1
	sw $t0, -1596($fp)
	addi $t0, $fp, -80
	sw $t0, -1600($fp)
	lw $t0, -304($fp)
	sw $t0, -1604($fp)
	li $t0, 37984
	sw $t0, -1608($fp)
	lw $t0, -1604($fp)
	lw $t1, -1608($fp)
	mul $t0, $t0, $t1
	sw $t0, -1612($fp)
	li $t0, 4
	lw $t1, -1612($fp)
	mul $t0, $t0, $t1
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	lw $t1, -1600($fp)
	add $t0, $t0, $t1
	sw $t0, -1620($fp)
	lw $t0, -1620($fp)
	lw $t1, 0($t0)
	sw $t1, -1624($fp)
	lw $t0, -1596($fp)
	lw $t1, -1624($fp)
	add $t0, $t0, $t1
	sw $t0, -1628($fp)
	j label548
label547:
	li $t0, 0
	sw $t0, -1632($fp)
	li $t0, 0
	sw $t0, -1636($fp)
	li $t0, 18249
	sw $t0, -1640($fp)
	lw $t0, -712($fp)
	sw $t0, -1644($fp)
	lw $t1, -1640($fp)
	lw $t2, -1644($fp)
	bge $t1, $t2, label559
	j label560
label559:
	li $t0, 1
	sw $t0, -1636($fp)
label560:
	lw $t0, -688($fp)
	sw $t0, -1648($fp)
	lw $t1, -1636($fp)
	lw $t2, -1648($fp)
	beq $t1, $t2, label557
	j label558
label557:
	li $t0, 1
	sw $t0, -1632($fp)
label558:
label548:
label561:
	li $t0, 38615
	sw $t0, -1652($fp)
	lw $t1, -1652($fp)
	li $t2, 0
	bne $t1, $t2, label562
	j label563
label562:
label564:
	li $t0, 1508
	sw $t0, -1656($fp)
	lw $t1, -1656($fp)
	li $t2, 0
	bne $t1, $t2, label565
	j label566
label565:
	li $t0, 0
	sw $t0, -1660($fp)
	lw $t0, -676($fp)
	sw $t0, -1664($fp)
	lw $t1, -1664($fp)
	li $t2, 0
	bne $t1, $t2, label568
	j label567
label567:
	li $t0, 1
	sw $t0, -1660($fp)
label568:
	addi $t0, $fp, -1052
	sw $t0, -1668($fp)
	lw $t0, -328($fp)
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
	lw $t0, -1660($fp)
	lw $t1, -1684($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1688($fp)
	jal f6
	sw $v0, -1692($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -1692($fp)
	sub $t0, $t0, $t1
	sw $t0, -1696($fp)
	lw $t0, -1688($fp)
	lw $t1, -1696($fp)
	add $t0, $t0, $t1
	sw $t0, -1700($fp)
	j label564
label566:
	j label561
label563:
	li $t0, 5925
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	sw $t0, -1712($fp)
	li $t0, 11945
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	sw $t0, -1724($fp)
	li $t0, 6127
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	sw $t0, -1736($fp)
	addi $t0, $fp, -80
	sw $t0, -1740($fp)
	lw $t0, -316($fp)
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
	addi $t0, $fp, -72
	sw $t0, -1760($fp)
	li $t0, 3
	sw $t0, -1764($fp)
	li $t0, 4
	lw $t1, -1764($fp)
	mul $t0, $t0, $t1
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	lw $t1, -1760($fp)
	add $t0, $t0, $t1
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	lw $t1, 0($t0)
	sw $t1, -1776($fp)
	li $t0, 0
	sw $t0, -1780($fp)
	li $t0, 65149
	sw $t0, -1784($fp)
	li $t0, 25679
	sw $t0, -1788($fp)
	lw $t0, -1784($fp)
	lw $t1, -1788($fp)
	mul $t0, $t0, $t1
	sw $t0, -1792($fp)
	li $t0, 678
	sw $t0, -1796($fp)
	lw $t1, -1792($fp)
	lw $t2, -1796($fp)
	beq $t1, $t2, label569
	j label570
label569:
	li $t0, 1
	sw $t0, -1780($fp)
label570:
	addi $sp, $sp, -4
	lw $t0, -1776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1780($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1800($fp)
	addi $sp, $sp, 12
	li $t0, 5922
	sw $t0, -1804($fp)
	li $t0, 0
	sw $t0, -1808($fp)
	lw $t0, -700($fp)
	sw $t0, -1812($fp)
	li $t0, 0
	lw $t1, -1812($fp)
	sub $t0, $t0, $t1
	sw $t0, -1816($fp)
	lw $t1, -1816($fp)
	li $t2, 0
	bne $t1, $t2, label573
	j label572
label573:
	li $t0, 63495
	sw $t0, -1820($fp)
	lw $t1, -1820($fp)
	li $t2, 0
	bne $t1, $t2, label571
	j label572
label571:
	li $t0, 1
	sw $t0, -1808($fp)
label572:
	addi $sp, $sp, -4
	lw $t0, -1756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1808($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1824($fp)
	addi $sp, $sp, 20
	li $t0, 58801
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	sw $t0, -1840($fp)
	li $t0, 50951
	sw $t0, -1844($fp)
	addi $t0, $fp, -1828
	sw $t0, -1848($fp)
	li $t0, 0
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1856($fp)
	lw $t0, -1848($fp)
	lw $t1, -1856($fp)
	add $t0, $t0, $t1
	sw $t0, -1860($fp)
	lw $t0, -1844($fp)
	lw $t1, -1860($fp)
	sw $t0, 0($t1)
	lw $t0, -1860($fp)
	lw $t1, 0($t0)
	sw $t1, -1864($fp)
	li $t0, 60867
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	sw $t0, -1872($fp)
	lw $t0, -1872($fp)
	sw $t0, -1876($fp)
	li $t0, 52602
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	sw $t0, -1888($fp)
	li $t0, 56087
	sw $t0, -1892($fp)
	lw $t0, -1892($fp)
	sw $t0, -1896($fp)
	lw $t0, -1896($fp)
	sw $t0, -1900($fp)
	jal f6
	sw $v0, -1904($fp)
	addi $sp, $sp, 4
	lw $t0, -1904($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -1908($fp)
	li $t0, 0
	sw $t0, -1912($fp)
	addi $t0, $fp, -32
	sw $t0, -1916($fp)
	li $t0, 0
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
	li $t0, 60950
	sw $t0, -1936($fp)
	lw $t0, -244($fp)
	sw $t0, -1940($fp)
	lw $t0, -1936($fp)
	lw $t1, -1940($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1944($fp)
	lw $t0, -664($fp)
	sw $t0, -1948($fp)
	lw $t0, -1944($fp)
	lw $t1, -1948($fp)
	sub $t0, $t0, $t1
	sw $t0, -1952($fp)
	li $t0, 0
	sw $t0, -1956($fp)
	lw $t0, 16($fp)
	sw $t0, -1960($fp)
	lw $t0, -340($fp)
	sw $t0, -1964($fp)
	lw $t0, -1960($fp)
	lw $t1, -1964($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1968($fp)
	lw $t0, -1872($fp)
	sw $t0, -1972($fp)
	lw $t1, -1968($fp)
	lw $t2, -1972($fp)
	bge $t1, $t2, label578
	j label579
label578:
	li $t0, 1
	sw $t0, -1956($fp)
label579:
	lw $t0, -736($fp)
	sw $t0, -1976($fp)
	lw $t0, 16($fp)
	sw $t0, -1980($fp)
	lw $t0, -1976($fp)
	lw $t1, -1980($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1984($fp)
	lw $t0, -292($fp)
	sw $t0, -1988($fp)
	lw $t0, -1984($fp)
	lw $t1, -1988($fp)
	sub $t0, $t0, $t1
	sw $t0, -1992($fp)
	addi $sp, $sp, -4
	lw $t0, -1932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1992($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1996($fp)
	addi $sp, $sp, 20
	lw $t1, -1996($fp)
	li $t2, 0
	bne $t1, $t2, label574
	j label577
label577:
	li $t0, 1702
	sw $t0, -2000($fp)
	lw $t0, -712($fp)
	sw $t0, -2004($fp)
	lw $t0, -2000($fp)
	lw $t1, -2004($fp)
	sub $t0, $t0, $t1
	sw $t0, -2008($fp)
	lw $t0, -652($fp)
	sw $t0, -2012($fp)
	lw $t1, -2008($fp)
	lw $t2, -2012($fp)
	blt $t1, $t2, label574
	j label576
label576:
	addi $t0, $fp, -72
	sw $t0, -2016($fp)
	li $t0, 0
	sw $t0, -2020($fp)
	lw $t0, -244($fp)
	sw $t0, -2024($fp)
	lw $t1, -2024($fp)
	li $t2, 0
	bne $t1, $t2, label580
	j label582
label582:
	lw $t0, -1896($fp)
	sw $t0, -2028($fp)
	lw $t1, -2028($fp)
	li $t2, 0
	bne $t1, $t2, label580
	j label581
label580:
	li $t0, 1
	sw $t0, -2020($fp)
label581:
	li $t0, 4
	lw $t1, -2020($fp)
	mul $t0, $t0, $t1
	sw $t0, -2032($fp)
	lw $t0, -2032($fp)
	lw $t1, -2016($fp)
	add $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	lw $t1, 0($t0)
	sw $t1, -2040($fp)
	lw $t1, -2040($fp)
	li $t2, 0
	bne $t1, $t2, label574
	j label575
label574:
	li $t0, 1
	sw $t0, -1912($fp)
label575:
	li $t0, 0
	sw $t0, -2044($fp)
	lw $t0, 16($fp)
	sw $t0, -2048($fp)
	lw $t1, -2048($fp)
	li $t2, 0
	bne $t1, $t2, label585
	j label584
label585:
	lw $t0, -232($fp)
	sw $t0, -2052($fp)
	lw $t0, -340($fp)
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -2060($fp)
	li $t0, 0
	sw $t0, -2064($fp)
	li $t0, 0
	sw $t0, -2068($fp)
	li $t0, 56135
	sw $t0, -2072($fp)
	lw $t0, -328($fp)
	sw $t0, -2076($fp)
	lw $t1, -2072($fp)
	lw $t2, -2076($fp)
	bge $t1, $t2, label588
	j label589
label588:
	li $t0, 1
	sw $t0, -2068($fp)
label589:
	li $t0, 39335
	sw $t0, -2080($fp)
	lw $t1, -2068($fp)
	lw $t2, -2080($fp)
	beq $t1, $t2, label586
	j label587
label586:
	li $t0, 1
	sw $t0, -2064($fp)
label587:
	addi $sp, $sp, -4
	lw $t0, -2060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2064($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2084($fp)
	addi $sp, $sp, 12
	lw $t0, -2052($fp)
	lw $t1, -2084($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2088($fp)
	lw $t1, -2088($fp)
	li $t2, 0
	bne $t1, $t2, label583
	j label584
label583:
	li $t0, 1
	sw $t0, -2044($fp)
label584:
	li $t0, 0
	sw $t0, -2092($fp)
	li $t0, 0
	sw $t0, -2096($fp)
	li $t0, 36021
	sw $t0, -2100($fp)
	li $t0, 8379
	sw $t0, -2104($fp)
	lw $t0, -2100($fp)
	lw $t1, -2104($fp)
	mul $t0, $t0, $t1
	sw $t0, -2108($fp)
	lw $t1, -2108($fp)
	li $t2, 0
	bne $t1, $t2, label594
	j label596
label596:
	li $t0, 1585
	sw $t0, -2112($fp)
	lw $t1, -2112($fp)
	li $t2, 0
	bne $t1, $t2, label594
	j label595
label594:
	li $t0, 1
	sw $t0, -2096($fp)
label595:
	addi $t0, $fp, -1828
	sw $t0, -2116($fp)
	li $t0, 0
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
	lw $t0, -736($fp)
	sw $t0, -2136($fp)
	li $t0, 0
	lw $t1, -2136($fp)
	sub $t0, $t0, $t1
	sw $t0, -2140($fp)
	lw $t0, -1836($fp)
	sw $t0, -2144($fp)
	lw $t0, -2140($fp)
	lw $t1, -2144($fp)
	add $t0, $t0, $t1
	sw $t0, -2148($fp)
	addi $t0, $fp, -32
	sw $t0, -2152($fp)
	lw $t0, -736($fp)
	sw $t0, -2156($fp)
	li $t0, 4
	lw $t1, -2156($fp)
	mul $t0, $t0, $t1
	sw $t0, -2160($fp)
	lw $t0, -2160($fp)
	lw $t1, -2152($fp)
	add $t0, $t0, $t1
	sw $t0, -2164($fp)
	lw $t0, -2164($fp)
	lw $t1, 0($t0)
	sw $t1, -2168($fp)
	li $t0, 14265
	sw $t0, -2172($fp)
	lw $t0, -2168($fp)
	lw $t1, -2172($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2176($fp)
	addi $sp, $sp, -4
	lw $t0, -2096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2176($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -2180($fp)
	addi $sp, $sp, 20
	lw $t0, -1872($fp)
	sw $t0, -2184($fp)
	lw $t0, -2180($fp)
	lw $t1, -2184($fp)
	mul $t0, $t0, $t1
	sw $t0, -2188($fp)
	li $t0, 8469
	sw $t0, -2192($fp)
	li $t0, 26628
	sw $t0, -2196($fp)
	lw $t0, -2192($fp)
	lw $t1, -2196($fp)
	mul $t0, $t0, $t1
	sw $t0, -2200($fp)
	lw $t1, -2188($fp)
	lw $t2, -2200($fp)
	ble $t1, $t2, label593
	j label592
label593:
	addi $t0, $fp, -72
	sw $t0, -2204($fp)
	lw $t0, -1884($fp)
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
	li $t0, 40200
	sw $t0, -2224($fp)
	lw $t1, -2220($fp)
	lw $t2, -2224($fp)
	beq $t1, $t2, label590
	j label592
label592:
	lw $t0, -688($fp)
	sw $t0, -2228($fp)
	li $t0, 9978
	sw $t0, -2232($fp)
	lw $t0, -640($fp)
	sw $t0, -2236($fp)
	lw $t0, -2232($fp)
	lw $t1, -2236($fp)
	sub $t0, $t0, $t1
	sw $t0, -2240($fp)
	lw $t1, -2228($fp)
	lw $t2, -2240($fp)
	beq $t1, $t2, label590
	j label591
label590:
	li $t0, 1
	sw $t0, -2092($fp)
label591:
	lw $t0, -1708($fp)
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1720($fp)
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1732($fp)
	sw $t0, -2252($fp)
	lw $t0, -2252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2256($fp)
	li $t0, 32554
	sw $t0, -2260($fp)
	li $t0, 0
	sw $t0, -2264($fp)
	lw $t0, -316($fp)
	sw $t0, -2268($fp)
	lw $t1, -2268($fp)
	li $t2, 0
	bne $t1, $t2, label601
	j label600
label600:
	li $t0, 1
	sw $t0, -2264($fp)
label601:
	lw $t0, -2260($fp)
	lw $t1, -2264($fp)
	mul $t0, $t0, $t1
	sw $t0, -2272($fp)
	li $t0, 0
	lw $t1, -2272($fp)
	sub $t0, $t0, $t1
	sw $t0, -2276($fp)
	lw $t0, -712($fp)
	sw $t0, -2280($fp)
	lw $t0, -652($fp)
	sw $t0, -2284($fp)
	lw $t0, -2280($fp)
	lw $t1, -2284($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2288($fp)
	li $t0, 52146
	sw $t0, -2292($fp)
	lw $t0, -2288($fp)
	lw $t1, -2292($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2296($fp)
	lw $t1, -2276($fp)
	lw $t2, -2296($fp)
	bge $t1, $t2, label597
	j label599
label599:
	li $t0, 16105
	sw $t0, -2300($fp)
	li $t0, 30513
	sw $t0, -2304($fp)
	lw $t0, -2300($fp)
	lw $t1, -2304($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2308($fp)
	li $t0, 0
	lw $t1, -2308($fp)
	sub $t0, $t0, $t1
	sw $t0, -2312($fp)
	li $t0, 0
	sw $t0, -2316($fp)
	lw $t0, -1732($fp)
	sw $t0, -2320($fp)
	lw $t1, -2320($fp)
	li $t2, 0
	bne $t1, $t2, label603
	j label602
label602:
	li $t0, 1
	sw $t0, -2316($fp)
label603:
	lw $t1, -2312($fp)
	lw $t2, -2316($fp)
	bgt $t1, $t2, label597
	j label598
label597:
	li $t0, 1
	sw $t0, -2256($fp)
label598:
	lw $ra, -4($fp)
	lw $v0, -2256($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1708($fp)
	sw $t0, -2324($fp)
	lw $t0, -2324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1720($fp)
	sw $t0, -2328($fp)
	lw $t0, -2328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1732($fp)
	sw $t0, -2332($fp)
	lw $t0, -2332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2336($fp)
	li $t0, 0
	sw $t0, -2340($fp)
	li $t0, 41042
	sw $t0, -2344($fp)
	lw $t0, -736($fp)
	sw $t0, -2348($fp)
	lw $t0, -2344($fp)
	lw $t1, -2348($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2352($fp)
	lw $t0, -304($fp)
	sw $t0, -2356($fp)
	lw $t1, -2352($fp)
	lw $t2, -2356($fp)
	bne $t1, $t2, label607
	j label608
label607:
	li $t0, 1
	sw $t0, -2340($fp)
label608:
	li $t0, 0
	sw $t0, -2360($fp)
	lw $t0, -292($fp)
	sw $t0, -2364($fp)
	li $t0, 12881
	sw $t0, -2368($fp)
	lw $t0, -2364($fp)
	lw $t1, -2368($fp)
	add $t0, $t0, $t1
	sw $t0, -2372($fp)
	lw $t0, -1720($fp)
	sw $t0, -2376($fp)
	lw $t1, -2372($fp)
	lw $t2, -2376($fp)
	bne $t1, $t2, label609
	j label610
label609:
	li $t0, 1
	sw $t0, -2360($fp)
label610:
	li $t0, 0
	sw $t0, -2380($fp)
	lw $t0, -676($fp)
	sw $t0, -2384($fp)
	li $t0, 0
	lw $t1, -2384($fp)
	sub $t0, $t0, $t1
	sw $t0, -2388($fp)
	li $t0, 0
	lw $t1, -2388($fp)
	sub $t0, $t0, $t1
	sw $t0, -2392($fp)
	li $t0, 45711
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	sw $t0, -2400($fp)
	li $t0, 0
	sw $t0, -2404($fp)
	li $t0, 0
	sw $t0, -2408($fp)
	lw $t0, -316($fp)
	sw $t0, -2412($fp)
	lw $t0, -280($fp)
	sw $t0, -2416($fp)
	lw $t1, -2412($fp)
	lw $t2, -2416($fp)
	bge $t1, $t2, label616
	j label617
label616:
	li $t0, 1
	sw $t0, -2408($fp)
label617:
	li $t0, 27465
	sw $t0, -2420($fp)
	lw $t1, -2408($fp)
	lw $t2, -2420($fp)
	beq $t1, $t2, label614
	j label615
label614:
	li $t0, 1
	sw $t0, -2404($fp)
label615:
	li $t0, 0
	sw $t0, -2424($fp)
	lw $t0, 16($fp)
	sw $t0, -2428($fp)
	lw $t1, -2428($fp)
	li $t2, 0
	bne $t1, $t2, label618
	j label621
label621:
	lw $t0, -268($fp)
	sw $t0, -2432($fp)
	lw $t1, -2432($fp)
	li $t2, 0
	bne $t1, $t2, label618
	j label620
label620:
	li $t0, 58746
	sw $t0, -2436($fp)
	lw $t1, -2436($fp)
	li $t2, 0
	bne $t1, $t2, label618
	j label619
label618:
	li $t0, 1
	sw $t0, -2424($fp)
label619:
	li $t0, 0
	sw $t0, -2440($fp)
	lw $t0, -268($fp)
	sw $t0, -2444($fp)
	lw $t0, -736($fp)
	sw $t0, -2448($fp)
	lw $t0, -2444($fp)
	lw $t1, -2448($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2452($fp)
	li $t0, 56192
	sw $t0, -2456($fp)
	lw $t1, -2452($fp)
	lw $t2, -2456($fp)
	bne $t1, $t2, label622
	j label623
label622:
	li $t0, 1
	sw $t0, -2440($fp)
label623:
	addi $sp, $sp, -4
	lw $t0, -2392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2440($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2460($fp)
	addi $sp, $sp, 24
	lw $t1, -2460($fp)
	li $t2, 0
	bne $t1, $t2, label613
	j label612
label613:
	li $t0, 52011
	sw $t0, -2464($fp)
	lw $t1, -2464($fp)
	li $t2, 0
	bne $t1, $t2, label611
	j label612
label611:
	li $t0, 1
	sw $t0, -2380($fp)
label612:
	lw $t0, -232($fp)
	sw $t0, -2468($fp)
	lw $t0, -688($fp)
	sw $t0, -2472($fp)
	lw $t0, -2468($fp)
	lw $t1, -2472($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2476($fp)
	li $t0, 0
	sw $t0, -2480($fp)
	li $t0, 58068
	sw $t0, -2484($fp)
	li $t0, 15718
	sw $t0, -2488($fp)
	lw $t0, -2484($fp)
	lw $t1, -2488($fp)
	add $t0, $t0, $t1
	sw $t0, -2492($fp)
	lw $t0, 8($fp)
	sw $t0, -2496($fp)
	lw $t1, -2492($fp)
	lw $t2, -2496($fp)
	bge $t1, $t2, label624
	j label625
label624:
	li $t0, 1
	sw $t0, -2480($fp)
label625:
	addi $sp, $sp, -4
	lw $t0, -2340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2480($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2500($fp)
	addi $sp, $sp, 24
	lw $t1, -2500($fp)
	li $t2, 0
	bne $t1, $t2, label604
	j label606
label606:
	lw $t0, -244($fp)
	sw $t0, -2504($fp)
	lw $t1, -2504($fp)
	li $t2, 0
	bne $t1, $t2, label604
	j label605
label604:
	li $t0, 1
	sw $t0, -2336($fp)
label605:
	lw $ra, -4($fp)
	lw $v0, -2336($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -20
	sw $t0, -2508($fp)
	li $t0, 0
	sw $t0, -2512($fp)
	li $t0, 4
	lw $t1, -2512($fp)
	mul $t0, $t0, $t1
	sw $t0, -2516($fp)
	lw $t0, -2516($fp)
	lw $t1, -2508($fp)
	add $t0, $t0, $t1
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	lw $t1, 0($t0)
	sw $t1, -2524($fp)
	lw $t0, -2524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -2528($fp)
	li $t0, 1
	sw $t0, -2532($fp)
	li $t0, 4
	lw $t1, -2532($fp)
	mul $t0, $t0, $t1
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	lw $t1, -2528($fp)
	add $t0, $t0, $t1
	sw $t0, -2540($fp)
	lw $t0, -2540($fp)
	lw $t1, 0($t0)
	sw $t1, -2544($fp)
	lw $t0, -2544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -2548($fp)
	li $t0, 2
	sw $t0, -2552($fp)
	li $t0, 4
	lw $t1, -2552($fp)
	mul $t0, $t0, $t1
	sw $t0, -2556($fp)
	lw $t0, -2556($fp)
	lw $t1, -2548($fp)
	add $t0, $t0, $t1
	sw $t0, -2560($fp)
	lw $t0, -2560($fp)
	lw $t1, 0($t0)
	sw $t1, -2564($fp)
	lw $t0, -2564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -2568($fp)
	li $t0, 3
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
	lw $t0, -2584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -184($fp)
	sw $t0, -2588($fp)
	lw $t0, -2588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -2592($fp)
	li $t0, 0
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
	lw $t0, -220($fp)
	sw $t0, -2612($fp)
	lw $t0, -2612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -232($fp)
	sw $t0, -2616($fp)
	lw $t0, -2616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -244($fp)
	sw $t0, -2620($fp)
	lw $t0, -2620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -256($fp)
	sw $t0, -2624($fp)
	lw $t0, -2624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -268($fp)
	sw $t0, -2628($fp)
	lw $t0, -2628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -280($fp)
	sw $t0, -2632($fp)
	lw $t0, -2632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -292($fp)
	sw $t0, -2636($fp)
	lw $t0, -2636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -304($fp)
	sw $t0, -2640($fp)
	lw $t0, -2640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -316($fp)
	sw $t0, -2644($fp)
	lw $t0, -2644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -328($fp)
	sw $t0, -2648($fp)
	lw $t0, -2648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -340($fp)
	sw $t0, -2652($fp)
	lw $t0, -2652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -2656($fp)
	li $t0, 0
	sw $t0, -2660($fp)
	li $t0, 4
	lw $t1, -2660($fp)
	mul $t0, $t0, $t1
	sw $t0, -2664($fp)
	lw $t0, -2664($fp)
	lw $t1, -2656($fp)
	add $t0, $t0, $t1
	sw $t0, -2668($fp)
	lw $t0, -2668($fp)
	lw $t1, 0($t0)
	sw $t1, -2672($fp)
	lw $t0, -2672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -2676($fp)
	li $t0, 1
	sw $t0, -2680($fp)
	li $t0, 4
	lw $t1, -2680($fp)
	mul $t0, $t0, $t1
	sw $t0, -2684($fp)
	lw $t0, -2684($fp)
	lw $t1, -2676($fp)
	add $t0, $t0, $t1
	sw $t0, -2688($fp)
	lw $t0, -2688($fp)
	lw $t1, 0($t0)
	sw $t1, -2692($fp)
	lw $t0, -2692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -2696($fp)
	li $t0, 0
	sw $t0, -2700($fp)
	li $t0, 4
	lw $t1, -2700($fp)
	mul $t0, $t0, $t1
	sw $t0, -2704($fp)
	lw $t0, -2704($fp)
	lw $t1, -2696($fp)
	add $t0, $t0, $t1
	sw $t0, -2708($fp)
	lw $t0, -2708($fp)
	lw $t1, 0($t0)
	sw $t1, -2712($fp)
	lw $t0, -2712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -2716($fp)
	li $t0, 1
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
	lw $t0, -2732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -2736($fp)
	li $t0, 2
	sw $t0, -2740($fp)
	li $t0, 4
	lw $t1, -2740($fp)
	mul $t0, $t0, $t1
	sw $t0, -2744($fp)
	lw $t0, -2744($fp)
	lw $t1, -2736($fp)
	add $t0, $t0, $t1
	sw $t0, -2748($fp)
	lw $t0, -2748($fp)
	lw $t1, 0($t0)
	sw $t1, -2752($fp)
	lw $t0, -2752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -2756($fp)
	li $t0, 3
	sw $t0, -2760($fp)
	li $t0, 4
	lw $t1, -2760($fp)
	mul $t0, $t0, $t1
	sw $t0, -2764($fp)
	lw $t0, -2764($fp)
	lw $t1, -2756($fp)
	add $t0, $t0, $t1
	sw $t0, -2768($fp)
	lw $t0, -2768($fp)
	lw $t1, 0($t0)
	sw $t1, -2772($fp)
	lw $t0, -2772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -2776($fp)
	li $t0, 4
	sw $t0, -2780($fp)
	li $t0, 4
	lw $t1, -2780($fp)
	mul $t0, $t0, $t1
	sw $t0, -2784($fp)
	lw $t0, -2784($fp)
	lw $t1, -2776($fp)
	add $t0, $t0, $t1
	sw $t0, -2788($fp)
	lw $t0, -2788($fp)
	lw $t1, 0($t0)
	sw $t1, -2792($fp)
	lw $t0, -2792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -2796($fp)
	li $t0, 5
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
	lw $t0, -2812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -2816($fp)
	li $t0, 6
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
	addi $t0, $fp, -72
	sw $t0, -2836($fp)
	li $t0, 7
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
	addi $t0, $fp, -72
	sw $t0, -2856($fp)
	li $t0, 8
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
	addi $t0, $fp, -72
	sw $t0, -2876($fp)
	li $t0, 9
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
	lw $t0, -640($fp)
	sw $t0, -2896($fp)
	lw $t0, -2896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -652($fp)
	sw $t0, -2900($fp)
	lw $t0, -2900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -664($fp)
	sw $t0, -2904($fp)
	lw $t0, -2904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -676($fp)
	sw $t0, -2908($fp)
	lw $t0, -2908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -688($fp)
	sw $t0, -2912($fp)
	lw $t0, -2912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -700($fp)
	sw $t0, -2916($fp)
	lw $t0, -2916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -712($fp)
	sw $t0, -2920($fp)
	lw $t0, -2920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -724($fp)
	sw $t0, -2924($fp)
	lw $t0, -2924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -736($fp)
	sw $t0, -2928($fp)
	lw $t0, -2928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2932($fp)
	li $t0, 0
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
	addi $t0, $fp, -80
	sw $t0, -2952($fp)
	li $t0, 1
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
	li $t0, 0
	sw $t0, -2972($fp)
	li $t0, 39077
	sw $t0, -2976($fp)
	lw $t1, -2976($fp)
	li $t2, 0
	bne $t1, $t2, label629
	j label628
label629:
	addi $t0, $fp, -20
	sw $t0, -2980($fp)
	lw $t0, 4($fp)
	sw $t0, -2984($fp)
	li $t0, 4
	lw $t1, -2984($fp)
	mul $t0, $t0, $t1
	sw $t0, -2988($fp)
	lw $t0, -2988($fp)
	lw $t1, -2980($fp)
	add $t0, $t0, $t1
	sw $t0, -2992($fp)
	lw $t0, -2992($fp)
	lw $t1, 0($t0)
	sw $t1, -2996($fp)
	li $t0, 3432
	sw $t0, -3000($fp)
	lw $t1, -2996($fp)
	lw $t2, -3000($fp)
	blt $t1, $t2, label626
	j label628
label628:
	jal f6
	sw $v0, -3004($fp)
	addi $sp, $sp, 4
	li $t0, 61119
	sw $t0, -3008($fp)
	lw $t0, -292($fp)
	sw $t0, -3012($fp)
	lw $t0, -3012($fp)
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -3016($fp)
	li $t0, 0
	sw $t0, -3020($fp)
	lw $t0, -652($fp)
	sw $t0, -3024($fp)
	li $t0, 22908
	sw $t0, -3028($fp)
	lw $t1, -3024($fp)
	lw $t2, -3028($fp)
	bne $t1, $t2, label630
	j label631
label630:
	li $t0, 1
	sw $t0, -3020($fp)
label631:
	li $t0, 32165
	sw $t0, -3032($fp)
	li $t0, 0
	sw $t0, -3036($fp)
	li $t0, 52740
	sw $t0, -3040($fp)
	lw $t1, -3040($fp)
	li $t2, 0
	bne $t1, $t2, label632
	j label635
label635:
	lw $t0, -340($fp)
	sw $t0, -3044($fp)
	lw $t1, -3044($fp)
	li $t2, 0
	bne $t1, $t2, label632
	j label634
label634:
	lw $t0, -280($fp)
	sw $t0, -3048($fp)
	lw $t1, -3048($fp)
	li $t2, 0
	bne $t1, $t2, label632
	j label633
label632:
	li $t0, 1
	sw $t0, -3036($fp)
label633:
	lw $t0, -244($fp)
	sw $t0, -3052($fp)
	lw $t0, -3052($fp)
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -3056($fp)
	addi $sp, $sp, -4
	lw $t0, -3016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3056($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3060($fp)
	addi $sp, $sp, 24
	lw $t0, 16($fp)
	sw $t0, -3064($fp)
	lw $t0, -3060($fp)
	lw $t1, -3064($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3068($fp)
	li $t0, 52423
	sw $t0, -3072($fp)
	lw $t0, -3072($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -3076($fp)
	li $t0, 0
	sw $t0, -3080($fp)
	li $t0, 50103
	sw $t0, -3084($fp)
	li $t0, 40247
	sw $t0, -3088($fp)
	lw $t0, -3084($fp)
	lw $t1, -3088($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3092($fp)
	lw $t1, -3092($fp)
	li $t2, 0
	bne $t1, $t2, label636
	j label638
label638:
	lw $t0, 16($fp)
	sw $t0, -3096($fp)
	lw $t1, -3096($fp)
	li $t2, 0
	bne $t1, $t2, label636
	j label637
label636:
	li $t0, 1
	sw $t0, -3080($fp)
label637:
	li $t0, 38158
	sw $t0, -3100($fp)
	li $t0, 0
	lw $t1, -3100($fp)
	sub $t0, $t0, $t1
	sw $t0, -3104($fp)
	lw $t0, -280($fp)
	sw $t0, -3108($fp)
	lw $t0, 16($fp)
	sw $t0, -3112($fp)
	lw $t0, -3108($fp)
	lw $t1, -3112($fp)
	mul $t0, $t0, $t1
	sw $t0, -3116($fp)
	li $t0, 912
	sw $t0, -3120($fp)
	lw $t0, -3116($fp)
	lw $t1, -3120($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3124($fp)
	jal f6
	sw $v0, -3128($fp)
	addi $sp, $sp, 4
	lw $t0, 12($fp)
	sw $t0, -3132($fp)
	lw $t0, -3128($fp)
	lw $t1, -3132($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3136($fp)
	addi $sp, $sp, -4
	lw $t0, -3076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3136($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3140($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -3144($fp)
	li $t0, 59504
	sw $t0, -3148($fp)
	lw $t1, -3148($fp)
	li $t2, 0
	bne $t1, $t2, label642
	j label640
label642:
	lw $t0, 8($fp)
	sw $t0, -3152($fp)
	lw $t1, -3152($fp)
	li $t2, 0
	bne $t1, $t2, label641
	j label640
label641:
	lw $t0, 4($fp)
	sw $t0, -3156($fp)
	lw $t1, -3156($fp)
	li $t2, 0
	bne $t1, $t2, label639
	j label640
label639:
	li $t0, 1
	sw $t0, -3144($fp)
label640:
	li $t0, 36456
	sw $t0, -3160($fp)
	addi $sp, $sp, -4
	lw $t0, -3008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3160($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3164($fp)
	addi $sp, $sp, 24
	lw $t1, -3004($fp)
	lw $t2, -3164($fp)
	bgt $t1, $t2, label626
	j label627
label626:
	li $t0, 1
	sw $t0, -2972($fp)
label627:
	lw $ra, -4($fp)
	lw $v0, -2972($fp)
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
	li $t0, 33750
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
label643:
	li $t0, 31378
	sw $t0, -20($fp)
	li $t0, 22212
	sw $t0, -24($fp)
	lw $t0, -20($fp)
	lw $t1, -24($fp)
	sub $t0, $t0, $t1
	sw $t0, -28($fp)
	lw $t0, -12($fp)
	sw $t0, -32($fp)
	lw $t1, -28($fp)
	lw $t2, -32($fp)
	beq $t1, $t2, label646
	j label645
label646:
	lw $t0, -12($fp)
	sw $t0, -36($fp)
	lw $t0, 4($fp)
	sw $t0, -40($fp)
	li $t0, 8415
	sw $t0, -44($fp)
	lw $t0, -40($fp)
	lw $t1, -44($fp)
	mul $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -36($fp)
	lw $t1, -48($fp)
	add $t0, $t0, $t1
	sw $t0, -52($fp)
	lw $t1, -52($fp)
	li $t2, 0
	bne $t1, $t2, label644
	j label645
label644:
	li $t0, 0
	sw $t0, -56($fp)
	li $t0, 0
	sw $t0, -60($fp)
	li $t0, 41356
	sw $t0, -64($fp)
	lw $t1, -64($fp)
	li $t2, 0
	bne $t1, $t2, label651
	j label650
label650:
	li $t0, 1
	sw $t0, -60($fp)
label651:
	li $t0, 0
	sw $t0, -68($fp)
	li $t0, 7643
	sw $t0, -72($fp)
	lw $t0, 4($fp)
	sw $t0, -76($fp)
	lw $t0, -72($fp)
	lw $t1, -76($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -80($fp)
	li $t0, 0
	lw $t1, -80($fp)
	sub $t0, $t0, $t1
	sw $t0, -84($fp)
	addi $sp, $sp, -4
	lw $t0, -84($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -88($fp)
	addi $sp, $sp, 8
	lw $t0, 4($fp)
	sw $t0, -92($fp)
	lw $t1, -88($fp)
	lw $t2, -92($fp)
	bge $t1, $t2, label652
	j label653
label652:
	li $t0, 1
	sw $t0, -68($fp)
label653:
	li $t0, 53093
	sw $t0, -96($fp)
	li $t0, 19743
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -104($fp)
	li $t0, 54766
	sw $t0, -108($fp)
	li $t0, 60561
	sw $t0, -112($fp)
	lw $t0, -108($fp)
	lw $t1, -112($fp)
	add $t0, $t0, $t1
	sw $t0, -116($fp)
	li $t0, 57461
	sw $t0, -120($fp)
	lw $t0, -116($fp)
	lw $t1, -120($fp)
	add $t0, $t0, $t1
	sw $t0, -124($fp)
	addi $sp, $sp, -4
	lw $t0, -68($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -96($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -124($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -128($fp)
	addi $sp, $sp, 20
	lw $t0, -60($fp)
	lw $t1, -128($fp)
	mul $t0, $t0, $t1
	sw $t0, -132($fp)
	li $t0, 10399
	sw $t0, -136($fp)
	li $t0, 0
	lw $t1, -136($fp)
	sub $t0, $t0, $t1
	sw $t0, -140($fp)
	li $t0, 0
	lw $t1, -140($fp)
	sub $t0, $t0, $t1
	sw $t0, -144($fp)
	lw $t0, -132($fp)
	lw $t1, -144($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -148($fp)
	li $t0, 0
	lw $t1, -148($fp)
	sub $t0, $t0, $t1
	sw $t0, -152($fp)
	lw $t1, -152($fp)
	li $t2, 0
	bne $t1, $t2, label647
	j label649
label649:
	li $t0, 46304
	sw $t0, -156($fp)
	li $t0, 0
	sw $t0, -160($fp)
	lw $t0, 12($fp)
	sw $t0, -164($fp)
	lw $t1, -164($fp)
	li $t2, 0
	bne $t1, $t2, label655
	j label654
label654:
	li $t0, 1
	sw $t0, -160($fp)
label655:
	lw $t1, -156($fp)
	lw $t2, -160($fp)
	ble $t1, $t2, label647
	j label648
label647:
	li $t0, 1
	sw $t0, -56($fp)
label648:
	lw $ra, -4($fp)
	lw $v0, -56($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label643
label645:
	lw $t0, -12($fp)
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -172($fp)
	li $t0, 35109
	sw $t0, -176($fp)
	lw $t1, -176($fp)
	li $t2, 0
	bne $t1, $t2, label658
	j label656
label658:
	li $t0, 0
	sw $t0, -180($fp)
	lw $t0, 4($fp)
	sw $t0, -184($fp)
	lw $t0, 12($fp)
	sw $t0, -188($fp)
	lw $t1, -184($fp)
	lw $t2, -188($fp)
	beq $t1, $t2, label660
	j label661
label660:
	li $t0, 1
	sw $t0, -180($fp)
label661:
	lw $t0, 8($fp)
	sw $t0, -192($fp)
	lw $t1, -180($fp)
	lw $t2, -192($fp)
	beq $t1, $t2, label659
	j label657
label659:
	lw $t0, 8($fp)
	sw $t0, -196($fp)
	li $t0, 0
	lw $t1, -196($fp)
	sub $t0, $t0, $t1
	sw $t0, -200($fp)
	lw $t1, -200($fp)
	li $t2, 0
	bne $t1, $t2, label656
	j label657
label656:
	li $t0, 1
	sw $t0, -172($fp)
label657:
	lw $ra, -4($fp)
	lw $v0, -172($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -228
	li $t0, 56110
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
	li $t0, 32779
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
	li $t0, 47990
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	li $t0, 0
	sw $t0, -76($fp)
	lw $t0, -68($fp)
	sw $t0, -80($fp)
	addi $t0, $fp, -12
	sw $t0, -84($fp)
	li $t0, 1
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
	lw $t1, -80($fp)
	lw $t2, -100($fp)
	blt $t1, $t2, label662
	j label663
label662:
	li $t0, 1
	sw $t0, -76($fp)
label663:
	lw $t0, -68($fp)
	sw $t0, -104($fp)
	li $t0, 51422
	sw $t0, -108($fp)
	li $t0, 2536
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -116($fp)
	addi $t0, $fp, -12
	sw $t0, -120($fp)
	li $t0, 0
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
	addi $t0, $fp, -12
	sw $t0, -140($fp)
	li $t0, 1
	sw $t0, -144($fp)
	li $t0, 4
	lw $t1, -144($fp)
	mul $t0, $t0, $t1
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	lw $t1, -140($fp)
	add $t0, $t0, $t1
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	lw $t1, 0($t0)
	sw $t1, -156($fp)
	lw $t0, -156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -68($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -164($fp)
	lw $t0, -68($fp)
	sw $t0, -168($fp)
	lw $t0, 4($fp)
	sw $t0, -172($fp)
	lw $t0, -168($fp)
	lw $t1, -172($fp)
	add $t0, $t0, $t1
	sw $t0, -176($fp)
	li $t0, 27045
	sw $t0, -180($fp)
	lw $t1, -176($fp)
	lw $t2, -180($fp)
	bgt $t1, $t2, label664
	j label665
label664:
	li $t0, 1
	sw $t0, -164($fp)
label665:
	li $t0, 50392
	sw $t0, -184($fp)
	li $t0, 40694
	sw $t0, -188($fp)
	li $t0, 0
	lw $t1, -188($fp)
	sub $t0, $t0, $t1
	sw $t0, -192($fp)
	li $t0, 52334
	sw $t0, -196($fp)
	addi $sp, $sp, -4
	lw $t0, -192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -196($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -200($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -200($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -204($fp)
	addi $sp, $sp, 12
	li $t0, 289
	sw $t0, -208($fp)
	lw $t0, -68($fp)
	sw $t0, -212($fp)
	lw $t0, -208($fp)
	lw $t1, -212($fp)
	mul $t0, $t0, $t1
	sw $t0, -216($fp)
	lw $t0, -68($fp)
	sw $t0, -220($fp)
	lw $t0, -216($fp)
	lw $t1, -220($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -224($fp)
	addi $sp, $sp, -4
	lw $t0, -164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -224($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -228($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -228($fp)
	sub $t0, $t0, $t1
	sw $t0, -232($fp)
	lw $ra, -4($fp)
	lw $v0, -232($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f14:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2592
	li $t0, 27581
	sw $t0, -108($fp)
	addi $t0, $fp, -32
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
	li $t0, 37596
	sw $t0, -132($fp)
	addi $t0, $fp, -32
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
	li $t0, 59210
	sw $t0, -156($fp)
	addi $t0, $fp, -32
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
	li $t0, 50489
	sw $t0, -180($fp)
	addi $t0, $fp, -32
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
	li $t0, 33179
	sw $t0, -204($fp)
	addi $t0, $fp, -32
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
	li $t0, 27424
	sw $t0, -228($fp)
	addi $t0, $fp, -32
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
	li $t0, 16331
	sw $t0, -252($fp)
	addi $t0, $fp, -32
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
	li $t0, 55391
	sw $t0, -276($fp)
	addi $t0, $fp, -60
	sw $t0, -280($fp)
	li $t0, 0
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
	li $t0, 35839
	sw $t0, -300($fp)
	addi $t0, $fp, -60
	sw $t0, -304($fp)
	li $t0, 1
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
	li $t0, 57687
	sw $t0, -324($fp)
	addi $t0, $fp, -60
	sw $t0, -328($fp)
	li $t0, 2
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
	li $t0, 44621
	sw $t0, -348($fp)
	addi $t0, $fp, -60
	sw $t0, -352($fp)
	li $t0, 3
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
	li $t0, 30864
	sw $t0, -372($fp)
	addi $t0, $fp, -60
	sw $t0, -376($fp)
	li $t0, 4
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
	li $t0, 49612
	sw $t0, -396($fp)
	addi $t0, $fp, -60
	sw $t0, -400($fp)
	li $t0, 5
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
	li $t0, 64364
	sw $t0, -420($fp)
	addi $t0, $fp, -60
	sw $t0, -424($fp)
	li $t0, 6
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
	li $t0, 18422
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	li $t0, 57256
	sw $t0, -456($fp)
	addi $t0, $fp, -80
	sw $t0, -460($fp)
	li $t0, 0
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
	li $t0, 9227
	sw $t0, -480($fp)
	addi $t0, $fp, -80
	sw $t0, -484($fp)
	li $t0, 1
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -492($fp)
	lw $t0, -484($fp)
	lw $t1, -492($fp)
	add $t0, $t0, $t1
	sw $t0, -496($fp)
	lw $t0, -480($fp)
	lw $t1, -496($fp)
	sw $t0, 0($t1)
	lw $t0, -496($fp)
	lw $t1, 0($t0)
	sw $t1, -500($fp)
	li $t0, 64726
	sw $t0, -504($fp)
	addi $t0, $fp, -80
	sw $t0, -508($fp)
	li $t0, 2
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -516($fp)
	lw $t0, -508($fp)
	lw $t1, -516($fp)
	add $t0, $t0, $t1
	sw $t0, -520($fp)
	lw $t0, -504($fp)
	lw $t1, -520($fp)
	sw $t0, 0($t1)
	lw $t0, -520($fp)
	lw $t1, 0($t0)
	sw $t1, -524($fp)
	li $t0, 26829
	sw $t0, -528($fp)
	addi $t0, $fp, -80
	sw $t0, -532($fp)
	li $t0, 3
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -540($fp)
	lw $t0, -532($fp)
	lw $t1, -540($fp)
	add $t0, $t0, $t1
	sw $t0, -544($fp)
	lw $t0, -528($fp)
	lw $t1, -544($fp)
	sw $t0, 0($t1)
	lw $t0, -544($fp)
	lw $t1, 0($t0)
	sw $t1, -548($fp)
	li $t0, 65337
	sw $t0, -552($fp)
	addi $t0, $fp, -80
	sw $t0, -556($fp)
	li $t0, 4
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
	li $t0, 31969
	sw $t0, -576($fp)
	addi $t0, $fp, -104
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
	li $t0, 9283
	sw $t0, -600($fp)
	addi $t0, $fp, -104
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
	li $t0, 31417
	sw $t0, -624($fp)
	addi $t0, $fp, -104
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
	li $t0, 38290
	sw $t0, -648($fp)
	addi $t0, $fp, -104
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
	li $t0, 60705
	sw $t0, -672($fp)
	addi $t0, $fp, -104
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
	li $t0, 33953
	sw $t0, -696($fp)
	addi $t0, $fp, -104
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
	li $t0, 38579
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -728($fp)
	li $t0, 47503
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -740($fp)
	li $t0, 9111
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -752($fp)
	li $t0, 23435
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -764($fp)
	addi $t0, $fp, -32
	sw $t0, -768($fp)
	li $t0, 0
	sw $t0, -772($fp)
	li $t0, 4
	lw $t1, -772($fp)
	mul $t0, $t0, $t1
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	lw $t1, -768($fp)
	add $t0, $t0, $t1
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	lw $t1, 0($t0)
	sw $t1, -784($fp)
	lw $t0, -784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -788($fp)
	li $t0, 1
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
	addi $t0, $fp, -32
	sw $t0, -808($fp)
	li $t0, 2
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
	addi $t0, $fp, -32
	sw $t0, -828($fp)
	li $t0, 3
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
	addi $t0, $fp, -32
	sw $t0, -848($fp)
	li $t0, 4
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
	addi $t0, $fp, -32
	sw $t0, -868($fp)
	li $t0, 5
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
	addi $t0, $fp, -32
	sw $t0, -888($fp)
	li $t0, 6
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
	addi $t0, $fp, -60
	sw $t0, -908($fp)
	li $t0, 0
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
	addi $t0, $fp, -60
	sw $t0, -928($fp)
	li $t0, 1
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
	addi $t0, $fp, -60
	sw $t0, -948($fp)
	li $t0, 2
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
	addi $t0, $fp, -60
	sw $t0, -968($fp)
	li $t0, 3
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
	addi $t0, $fp, -60
	sw $t0, -988($fp)
	li $t0, 4
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
	addi $t0, $fp, -60
	sw $t0, -1008($fp)
	li $t0, 5
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
	addi $t0, $fp, -60
	sw $t0, -1028($fp)
	li $t0, 6
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
	lw $t0, -448($fp)
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
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
	addi $t0, $fp, -80
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
	addi $t0, $fp, -80
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
	addi $t0, $fp, -80
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
	addi $t0, $fp, -80
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
	addi $t0, $fp, -104
	sw $t0, -1152($fp)
	li $t0, 0
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
	addi $t0, $fp, -104
	sw $t0, -1172($fp)
	li $t0, 1
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
	addi $t0, $fp, -104
	sw $t0, -1192($fp)
	li $t0, 2
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
	addi $t0, $fp, -104
	sw $t0, -1212($fp)
	li $t0, 3
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
	addi $t0, $fp, -104
	sw $t0, -1232($fp)
	li $t0, 4
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
	lw $t0, -1248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -1252($fp)
	li $t0, 5
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
	lw $t0, -1268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -724($fp)
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -736($fp)
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -748($fp)
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -760($fp)
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1288($fp)
	li $t0, 9012
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -1296($fp)
	addi $sp, $sp, -4
	lw $t0, -1296($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -1300($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1304($fp)
	lw $t0, 16($fp)
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
	lw $t0, -1300($fp)
	lw $t1, -1320($fp)
	mul $t0, $t0, $t1
	sw $t0, -1324($fp)
	lw $t0, 16($fp)
	sw $t0, -1328($fp)
	lw $t0, -448($fp)
	sw $t0, -1332($fp)
	lw $t0, -1328($fp)
	lw $t1, -1332($fp)
	add $t0, $t0, $t1
	sw $t0, -1336($fp)
	lw $t1, -1324($fp)
	lw $t2, -1336($fp)
	bge $t1, $t2, label666
	j label667
label666:
	li $t0, 1
	sw $t0, -1288($fp)
label667:
	lw $ra, -4($fp)
	lw $v0, -1288($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -760($fp)
	sw $t0, -1340($fp)
	lw $t0, 4($fp)
	sw $t0, -1344($fp)
	lw $t0, -1340($fp)
	lw $t1, -1344($fp)
	add $t0, $t0, $t1
	sw $t0, -1348($fp)
	li $t0, 0
	sw $t0, -1352($fp)
	addi $t0, $fp, -104
	sw $t0, -1356($fp)
	li $t0, 28675
	sw $t0, -1360($fp)
	li $t0, 21646
	sw $t0, -1364($fp)
	lw $t0, 12($fp)
	sw $t0, -1368($fp)
	lw $t0, -1364($fp)
	lw $t1, -1368($fp)
	mul $t0, $t0, $t1
	sw $t0, -1372($fp)
	lw $t0, 4($fp)
	sw $t0, -1376($fp)
	lw $t0, -1372($fp)
	lw $t1, -1376($fp)
	add $t0, $t0, $t1
	sw $t0, -1380($fp)
	li $t0, 0
	sw $t0, -1384($fp)
	li $t0, 36692
	sw $t0, -1388($fp)
	li $t0, 1
	sw $t0, -1392($fp)
	lw $t0, -1388($fp)
	lw $t1, -1392($fp)
	mul $t0, $t0, $t1
	sw $t0, -1396($fp)
	lw $t1, -1396($fp)
	li $t2, 0
	bne $t1, $t2, label670
	j label672
label672:
	li $t0, 2686
	sw $t0, -1400($fp)
	lw $t1, -1400($fp)
	li $t2, 0
	bne $t1, $t2, label670
	j label671
label670:
	li $t0, 1
	sw $t0, -1384($fp)
label671:
	addi $sp, $sp, -4
	lw $t0, -1360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1384($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -1404($fp)
	addi $sp, $sp, 16
	li $t0, 4
	lw $t1, -1404($fp)
	mul $t0, $t0, $t1
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	lw $t1, -1356($fp)
	add $t0, $t0, $t1
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	lw $t1, 0($t0)
	sw $t1, -1416($fp)
	lw $t0, 4($fp)
	sw $t0, -1420($fp)
	lw $t0, -1416($fp)
	lw $t1, -1420($fp)
	mul $t0, $t0, $t1
	sw $t0, -1424($fp)
	li $t0, 0
	sw $t0, -1428($fp)
	li $t0, 30110
	sw $t0, -1432($fp)
	lw $t1, -1432($fp)
	li $t2, 0
	bne $t1, $t2, label674
	j label673
label673:
	li $t0, 1
	sw $t0, -1428($fp)
label674:
	lw $t1, -1424($fp)
	lw $t2, -1428($fp)
	bgt $t1, $t2, label668
	j label669
label668:
	li $t0, 1
	sw $t0, -1352($fp)
label669:
	li $t0, 37977
	sw $t0, -1444($fp)
	addi $t0, $fp, -1440
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
	li $t0, 18530
	sw $t0, -1468($fp)
	addi $t0, $fp, -1440
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
	li $t0, 0
	sw $t0, -1492($fp)
	lw $t0, 20($fp)
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -1500($fp)
	li $t0, 0
	sw $t0, -1504($fp)
	lw $t0, 16($fp)
	sw $t0, -1508($fp)
	lw $t1, -1508($fp)
	li $t2, 0
	bne $t1, $t2, label680
	j label679
label680:
	li $t0, 414
	sw $t0, -1512($fp)
	lw $t1, -1512($fp)
	li $t2, 0
	bne $t1, $t2, label678
	j label679
label678:
	li $t0, 1
	sw $t0, -1504($fp)
label679:
	addi $sp, $sp, -4
	lw $t0, -1500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1504($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1516($fp)
	addi $sp, $sp, 12
	lw $t0, 4($fp)
	sw $t0, -1520($fp)
	li $t0, 0
	lw $t1, -1520($fp)
	sub $t0, $t0, $t1
	sw $t0, -1524($fp)
	lw $t0, -1516($fp)
	lw $t1, -1524($fp)
	mul $t0, $t0, $t1
	sw $t0, -1528($fp)
	lw $t1, -1528($fp)
	li $t2, 0
	bne $t1, $t2, label675
	j label677
label677:
	addi $t0, $fp, -104
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
	addi $t0, $fp, -80
	sw $t0, -1552($fp)
	li $t0, 2
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
	lw $t0, -1548($fp)
	lw $t1, -1568($fp)
	add $t0, $t0, $t1
	sw $t0, -1572($fp)
	lw $t1, -1572($fp)
	li $t2, 0
	bne $t1, $t2, label675
	j label676
label675:
	li $t0, 1
	sw $t0, -1492($fp)
label676:
	lw $t0, 8($fp)
	sw $t0, -1576($fp)
	li $t0, 0
	sw $t0, -1580($fp)
	lw $t0, 4($fp)
	sw $t0, -1584($fp)
	lw $t0, -748($fp)
	sw $t0, -1588($fp)
	lw $t0, -1584($fp)
	lw $t1, -1588($fp)
	mul $t0, $t0, $t1
	sw $t0, -1592($fp)
	li $t0, 0
	lw $t1, -1592($fp)
	sub $t0, $t0, $t1
	sw $t0, -1596($fp)
	lw $t0, 12($fp)
	sw $t0, -1600($fp)
	lw $t1, -1596($fp)
	lw $t2, -1600($fp)
	blt $t1, $t2, label684
	j label683
label684:
	li $t0, 0
	sw $t0, -1604($fp)
	lw $t0, 16($fp)
	sw $t0, -1608($fp)
	li $t0, 61980
	sw $t0, -1612($fp)
	lw $t1, -1608($fp)
	lw $t2, -1612($fp)
	bgt $t1, $t2, label685
	j label686
label685:
	li $t0, 1
	sw $t0, -1604($fp)
label686:
	li $t0, 49700
	sw $t0, -1616($fp)
	lw $t1, -1604($fp)
	lw $t2, -1616($fp)
	bgt $t1, $t2, label681
	j label683
label683:
	addi $t0, $fp, -1440
	sw $t0, -1620($fp)
	lw $t0, 16($fp)
	sw $t0, -1624($fp)
	li $t0, 5925
	sw $t0, -1628($fp)
	lw $t0, -1624($fp)
	lw $t1, -1628($fp)
	mul $t0, $t0, $t1
	sw $t0, -1632($fp)
	li $t0, 4
	lw $t1, -1632($fp)
	mul $t0, $t0, $t1
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	lw $t1, -1620($fp)
	add $t0, $t0, $t1
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	lw $t1, 0($t0)
	sw $t1, -1644($fp)
	lw $t1, -1644($fp)
	li $t2, 0
	bne $t1, $t2, label681
	j label682
label681:
	li $t0, 1
	sw $t0, -1580($fp)
label682:
	lw $t0, 12($fp)
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -1652($fp)
label687:
	li $t0, 0
	sw $t0, -1656($fp)
	li $t0, 5672
	sw $t0, -1660($fp)
	lw $t0, -748($fp)
	sw $t0, -1664($fp)
	lw $t0, -1660($fp)
	lw $t1, -1664($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1668($fp)
	lw $t0, 4($fp)
	sw $t0, -1672($fp)
	lw $t0, -1668($fp)
	lw $t1, -1672($fp)
	add $t0, $t0, $t1
	sw $t0, -1676($fp)
	lw $t1, -1676($fp)
	li $t2, 0
	bne $t1, $t2, label692
	j label691
label692:
	li $t0, 48890
	sw $t0, -1680($fp)
	lw $t0, 12($fp)
	sw $t0, -1684($fp)
	lw $t1, -1680($fp)
	lw $t2, -1684($fp)
	bgt $t1, $t2, label690
	j label691
label690:
	li $t0, 1
	sw $t0, -1656($fp)
label691:
	lw $t0, -1656($fp)
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -1688($fp)
	lw $t1, -1688($fp)
	li $t2, 0
	bne $t1, $t2, label688
	j label689
label688:
label693:
	li $t0, 0
	sw $t0, -1692($fp)
	lw $t0, -748($fp)
	sw $t0, -1696($fp)
	lw $t1, -1696($fp)
	li $t2, 0
	bne $t1, $t2, label696
	j label697
label696:
	li $t0, 1
	sw $t0, -1692($fp)
label697:
	lw $t0, 16($fp)
	sw $t0, -1700($fp)
	li $t0, 32754
	sw $t0, -1704($fp)
	lw $t0, -1700($fp)
	lw $t1, -1704($fp)
	mul $t0, $t0, $t1
	sw $t0, -1708($fp)
	lw $t0, -1692($fp)
	lw $t1, -1708($fp)
	sub $t0, $t0, $t1
	sw $t0, -1712($fp)
	addi $t0, $fp, -60
	sw $t0, -1716($fp)
	li $t0, 0
	sw $t0, -1720($fp)
	lw $t0, 16($fp)
	sw $t0, -1724($fp)
	lw $t1, -1724($fp)
	li $t2, 0
	bne $t1, $t2, label700
	j label699
label700:
	li $t0, 5473
	sw $t0, -1728($fp)
	lw $t1, -1728($fp)
	li $t2, 0
	bne $t1, $t2, label698
	j label699
label698:
	li $t0, 1
	sw $t0, -1720($fp)
label699:
	li $t0, 4
	lw $t1, -1720($fp)
	mul $t0, $t0, $t1
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	lw $t1, -1716($fp)
	add $t0, $t0, $t1
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	lw $t1, 0($t0)
	sw $t1, -1740($fp)
	lw $t1, -1712($fp)
	lw $t2, -1740($fp)
	bgt $t1, $t2, label694
	j label695
label694:
	li $t0, 15324
	sw $t0, -1760($fp)
	addi $t0, $fp, -1756
	sw $t0, -1764($fp)
	li $t0, 0
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
	li $t0, 42037
	sw $t0, -1784($fp)
	addi $t0, $fp, -1756
	sw $t0, -1788($fp)
	li $t0, 1
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
	li $t0, 36891
	sw $t0, -1808($fp)
	addi $t0, $fp, -1756
	sw $t0, -1812($fp)
	li $t0, 2
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
	li $t0, 53614
	sw $t0, -1832($fp)
	addi $t0, $fp, -1756
	sw $t0, -1836($fp)
	li $t0, 3
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
	addi $t0, $fp, -1756
	sw $t0, -1856($fp)
	lw $t0, -760($fp)
	sw $t0, -1860($fp)
	addi $sp, $sp, -4
	lw $t0, -1860($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1864($fp)
	addi $sp, $sp, 8
	li $t0, 4
	lw $t1, -1864($fp)
	mul $t0, $t0, $t1
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	lw $t1, -1856($fp)
	add $t0, $t0, $t1
	sw $t0, -1872($fp)
	lw $t0, -1872($fp)
	lw $t1, 0($t0)
	sw $t1, -1876($fp)
	li $t0, 0
	lw $t1, -1876($fp)
	sub $t0, $t0, $t1
	sw $t0, -1880($fp)
	li $t0, 0
	lw $t1, -1880($fp)
	sub $t0, $t0, $t1
	sw $t0, -1884($fp)
	j label693
label695:
	j label687
label689:
	addi $t0, $fp, -32
	sw $t0, -1888($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -1908($fp)
	li $t0, 1
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
	addi $t0, $fp, -32
	sw $t0, -1928($fp)
	li $t0, 2
	sw $t0, -1932($fp)
	li $t0, 4
	lw $t1, -1932($fp)
	mul $t0, $t0, $t1
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	lw $t1, -1928($fp)
	add $t0, $t0, $t1
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	lw $t1, 0($t0)
	sw $t1, -1944($fp)
	lw $t0, -1944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1948($fp)
	li $t0, 3
	sw $t0, -1952($fp)
	li $t0, 4
	lw $t1, -1952($fp)
	mul $t0, $t0, $t1
	sw $t0, -1956($fp)
	lw $t0, -1956($fp)
	lw $t1, -1948($fp)
	add $t0, $t0, $t1
	sw $t0, -1960($fp)
	lw $t0, -1960($fp)
	lw $t1, 0($t0)
	sw $t1, -1964($fp)
	lw $t0, -1964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1968($fp)
	li $t0, 4
	sw $t0, -1972($fp)
	li $t0, 4
	lw $t1, -1972($fp)
	mul $t0, $t0, $t1
	sw $t0, -1976($fp)
	lw $t0, -1976($fp)
	lw $t1, -1968($fp)
	add $t0, $t0, $t1
	sw $t0, -1980($fp)
	lw $t0, -1980($fp)
	lw $t1, 0($t0)
	sw $t1, -1984($fp)
	lw $t0, -1984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1988($fp)
	li $t0, 5
	sw $t0, -1992($fp)
	li $t0, 4
	lw $t1, -1992($fp)
	mul $t0, $t0, $t1
	sw $t0, -1996($fp)
	lw $t0, -1996($fp)
	lw $t1, -1988($fp)
	add $t0, $t0, $t1
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	lw $t1, 0($t0)
	sw $t1, -2004($fp)
	lw $t0, -2004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -2008($fp)
	li $t0, 6
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
	lw $t0, -2024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -2028($fp)
	li $t0, 0
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
	lw $t0, -2044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -2048($fp)
	li $t0, 1
	sw $t0, -2052($fp)
	li $t0, 4
	lw $t1, -2052($fp)
	mul $t0, $t0, $t1
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	lw $t1, -2048($fp)
	add $t0, $t0, $t1
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	lw $t1, 0($t0)
	sw $t1, -2064($fp)
	lw $t0, -2064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -2068($fp)
	li $t0, 2
	sw $t0, -2072($fp)
	li $t0, 4
	lw $t1, -2072($fp)
	mul $t0, $t0, $t1
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	lw $t1, -2068($fp)
	add $t0, $t0, $t1
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	lw $t1, 0($t0)
	sw $t1, -2084($fp)
	lw $t0, -2084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -2088($fp)
	li $t0, 3
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
	addi $t0, $fp, -60
	sw $t0, -2108($fp)
	li $t0, 4
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
	addi $t0, $fp, -60
	sw $t0, -2128($fp)
	li $t0, 5
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
	addi $t0, $fp, -60
	sw $t0, -2148($fp)
	li $t0, 6
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
	lw $t0, -448($fp)
	sw $t0, -2168($fp)
	lw $t0, -2168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2172($fp)
	li $t0, 0
	sw $t0, -2176($fp)
	li $t0, 4
	lw $t1, -2176($fp)
	mul $t0, $t0, $t1
	sw $t0, -2180($fp)
	lw $t0, -2180($fp)
	lw $t1, -2172($fp)
	add $t0, $t0, $t1
	sw $t0, -2184($fp)
	lw $t0, -2184($fp)
	lw $t1, 0($t0)
	sw $t1, -2188($fp)
	lw $t0, -2188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2192($fp)
	li $t0, 1
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
	lw $t0, -2208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2212($fp)
	li $t0, 2
	sw $t0, -2216($fp)
	li $t0, 4
	lw $t1, -2216($fp)
	mul $t0, $t0, $t1
	sw $t0, -2220($fp)
	lw $t0, -2220($fp)
	lw $t1, -2212($fp)
	add $t0, $t0, $t1
	sw $t0, -2224($fp)
	lw $t0, -2224($fp)
	lw $t1, 0($t0)
	sw $t1, -2228($fp)
	lw $t0, -2228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2232($fp)
	li $t0, 3
	sw $t0, -2236($fp)
	li $t0, 4
	lw $t1, -2236($fp)
	mul $t0, $t0, $t1
	sw $t0, -2240($fp)
	lw $t0, -2240($fp)
	lw $t1, -2232($fp)
	add $t0, $t0, $t1
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	lw $t1, 0($t0)
	sw $t1, -2248($fp)
	lw $t0, -2248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2252($fp)
	li $t0, 4
	sw $t0, -2256($fp)
	li $t0, 4
	lw $t1, -2256($fp)
	mul $t0, $t0, $t1
	sw $t0, -2260($fp)
	lw $t0, -2260($fp)
	lw $t1, -2252($fp)
	add $t0, $t0, $t1
	sw $t0, -2264($fp)
	lw $t0, -2264($fp)
	lw $t1, 0($t0)
	sw $t1, -2268($fp)
	lw $t0, -2268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -2272($fp)
	li $t0, 0
	sw $t0, -2276($fp)
	li $t0, 4
	lw $t1, -2276($fp)
	mul $t0, $t0, $t1
	sw $t0, -2280($fp)
	lw $t0, -2280($fp)
	lw $t1, -2272($fp)
	add $t0, $t0, $t1
	sw $t0, -2284($fp)
	lw $t0, -2284($fp)
	lw $t1, 0($t0)
	sw $t1, -2288($fp)
	lw $t0, -2288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
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
	lw $t0, -2308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -2312($fp)
	li $t0, 2
	sw $t0, -2316($fp)
	li $t0, 4
	lw $t1, -2316($fp)
	mul $t0, $t0, $t1
	sw $t0, -2320($fp)
	lw $t0, -2320($fp)
	lw $t1, -2312($fp)
	add $t0, $t0, $t1
	sw $t0, -2324($fp)
	lw $t0, -2324($fp)
	lw $t1, 0($t0)
	sw $t1, -2328($fp)
	lw $t0, -2328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -2332($fp)
	li $t0, 3
	sw $t0, -2336($fp)
	li $t0, 4
	lw $t1, -2336($fp)
	mul $t0, $t0, $t1
	sw $t0, -2340($fp)
	lw $t0, -2340($fp)
	lw $t1, -2332($fp)
	add $t0, $t0, $t1
	sw $t0, -2344($fp)
	lw $t0, -2344($fp)
	lw $t1, 0($t0)
	sw $t1, -2348($fp)
	lw $t0, -2348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -2352($fp)
	li $t0, 4
	sw $t0, -2356($fp)
	li $t0, 4
	lw $t1, -2356($fp)
	mul $t0, $t0, $t1
	sw $t0, -2360($fp)
	lw $t0, -2360($fp)
	lw $t1, -2352($fp)
	add $t0, $t0, $t1
	sw $t0, -2364($fp)
	lw $t0, -2364($fp)
	lw $t1, 0($t0)
	sw $t1, -2368($fp)
	lw $t0, -2368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -2372($fp)
	li $t0, 5
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
	lw $t0, -2388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -724($fp)
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -736($fp)
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -748($fp)
	sw $t0, -2400($fp)
	lw $t0, -2400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -760($fp)
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2408($fp)
	li $t0, 0
	sw $t0, -2412($fp)
	addi $t0, $fp, -32
	sw $t0, -2416($fp)
	li $t0, 0
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
	li $t0, 51112
	sw $t0, -2436($fp)
	lw $t0, -2436($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -2440($fp)
	li $t0, 0
	sw $t0, -2444($fp)
	li $t0, 28185
	sw $t0, -2448($fp)
	li $t0, 0
	lw $t1, -2448($fp)
	sub $t0, $t0, $t1
	sw $t0, -2452($fp)
	lw $t1, -2452($fp)
	li $t2, 0
	bne $t1, $t2, label705
	j label707
label707:
	lw $t0, 16($fp)
	sw $t0, -2456($fp)
	lw $t1, -2456($fp)
	li $t2, 0
	bne $t1, $t2, label705
	j label706
label705:
	li $t0, 1
	sw $t0, -2444($fp)
label706:
	li $t0, 0
	sw $t0, -2460($fp)
	li $t0, 50093
	sw $t0, -2464($fp)
	li $t0, 0
	lw $t1, -2464($fp)
	sub $t0, $t0, $t1
	sw $t0, -2468($fp)
	lw $t0, 4($fp)
	sw $t0, -2472($fp)
	lw $t1, -2468($fp)
	lw $t2, -2472($fp)
	bgt $t1, $t2, label708
	j label709
label708:
	li $t0, 1
	sw $t0, -2460($fp)
label709:
	li $t0, 0
	sw $t0, -2476($fp)
	lw $t0, 8($fp)
	sw $t0, -2480($fp)
	li $t0, 19173
	sw $t0, -2484($fp)
	lw $t1, -2480($fp)
	lw $t2, -2484($fp)
	blt $t1, $t2, label712
	j label711
label712:
	li $t0, 14420
	sw $t0, -2488($fp)
	lw $t1, -2488($fp)
	li $t2, 0
	bne $t1, $t2, label710
	j label711
label710:
	li $t0, 1
	sw $t0, -2476($fp)
label711:
	li $t0, 26658
	sw $t0, -2492($fp)
	addi $sp, $sp, -4
	lw $t0, -2440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2492($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -2496($fp)
	addi $sp, $sp, 24
	li $t0, 45589
	sw $t0, -2500($fp)
	lw $t0, -2496($fp)
	lw $t1, -2500($fp)
	add $t0, $t0, $t1
	sw $t0, -2504($fp)
	lw $t1, -2432($fp)
	lw $t2, -2504($fp)
	bne $t1, $t2, label703
	j label704
label703:
	li $t0, 1
	sw $t0, -2412($fp)
label704:
	li $t0, 0
	sw $t0, -2508($fp)
	li $t0, 0
	sw $t0, -2512($fp)
	lw $t0, 16($fp)
	sw $t0, -2516($fp)
	lw $t0, 4($fp)
	sw $t0, -2520($fp)
	lw $t1, -2516($fp)
	lw $t2, -2520($fp)
	ble $t1, $t2, label715
	j label717
label717:
	li $t0, 24874
	sw $t0, -2524($fp)
	lw $t1, -2524($fp)
	li $t2, 0
	bne $t1, $t2, label715
	j label716
label715:
	li $t0, 1
	sw $t0, -2512($fp)
label716:
	addi $sp, $sp, -4
	lw $t0, -2512($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -2528($fp)
	addi $sp, $sp, 8
	li $t0, 61396
	sw $t0, -2532($fp)
	li $t0, 9793
	sw $t0, -2536($fp)
	lw $t0, -2532($fp)
	lw $t1, -2536($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2540($fp)
	li $t0, 0
	lw $t1, -2540($fp)
	sub $t0, $t0, $t1
	sw $t0, -2544($fp)
	li $t0, 27258
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -2552($fp)
	li $t0, 0
	sw $t0, -2556($fp)
	li $t0, 8728
	sw $t0, -2560($fp)
	li $t0, 60982
	sw $t0, -2564($fp)
	lw $t0, -2560($fp)
	lw $t1, -2564($fp)
	add $t0, $t0, $t1
	sw $t0, -2568($fp)
	lw $t1, -2568($fp)
	li $t2, 0
	bne $t1, $t2, label720
	j label719
label720:
	li $t0, 45200
	sw $t0, -2572($fp)
	lw $t1, -2572($fp)
	li $t2, 0
	bne $t1, $t2, label718
	j label719
label718:
	li $t0, 1
	sw $t0, -2556($fp)
label719:
	addi $t0, $fp, -80
	sw $t0, -2576($fp)
	li $t0, 0
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
	addi $sp, $sp, -4
	lw $t0, -2528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2592($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2596($fp)
	addi $sp, $sp, 24
	lw $t1, -2596($fp)
	li $t2, 0
	bne $t1, $t2, label714
	j label713
label713:
	li $t0, 1
	sw $t0, -2508($fp)
label714:
	lw $t1, -2412($fp)
	lw $t2, -2508($fp)
	beq $t1, $t2, label701
	j label702
label701:
	li $t0, 1
	sw $t0, -2408($fp)
label702:
	lw $ra, -4($fp)
	lw $v0, -2408($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f15:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -44
	li $t0, 27138
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	lw $t0, -12($fp)
	sw $t0, -20($fp)
	li $t0, 23998
	sw $t0, -24($fp)
	lw $t0, -20($fp)
	lw $t1, -24($fp)
	sub $t0, $t0, $t1
	sw $t0, -28($fp)
	lw $t0, -12($fp)
	sw $t0, -32($fp)
	lw $t0, -28($fp)
	lw $t1, -32($fp)
	sub $t0, $t0, $t1
	sw $t0, -36($fp)
	addi $sp, $sp, -4
	lw $t0, -36($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -40($fp)
	addi $sp, $sp, 8
	lw $t0, -12($fp)
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 21319
	sw $t0, -48($fp)
	lw $ra, -4($fp)
	lw $v0, -48($fp)
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
