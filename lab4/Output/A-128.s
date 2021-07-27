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
	addi $sp, $sp, -176
	li $t0, 21920
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	li $t0, 34431
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	li $t0, 12670
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
	li $t0, 64260
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
	lw $t0, -32($fp)
	sw $t0, -88($fp)
	lw $t0, -20($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -32($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
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
	addi $t0, $fp, -12
	sw $t0, -144($fp)
	lw $t0, -20($fp)
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
	li $t0, 0
	lw $t1, -160($fp)
	sub $t0, $t0, $t1
	sw $t0, -164($fp)
	li $t0, 45128
	sw $t0, -168($fp)
	li $t0, 51720
	sw $t0, -172($fp)
	lw $t0, -168($fp)
	lw $t1, -172($fp)
	add $t0, $t0, $t1
	sw $t0, -176($fp)
	lw $t1, -164($fp)
	lw $t2, -176($fp)
	beq $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -140($fp)
label122:
	lw $t0, -140($fp)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -180($fp)
	lw $ra, -4($fp)
	lw $v0, -180($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2904
	li $t0, 31972
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	li $t0, 26795
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	li $t0, 14198
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	li $t0, 15487
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	li $t0, 32047
	sw $t0, -112($fp)
	addi $t0, $fp, -24
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
	li $t0, 60930
	sw $t0, -136($fp)
	addi $t0, $fp, -24
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
	li $t0, 1665
	sw $t0, -160($fp)
	addi $t0, $fp, -24
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
	li $t0, 32612
	sw $t0, -184($fp)
	addi $t0, $fp, -24
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
	li $t0, 51826
	sw $t0, -208($fp)
	addi $t0, $fp, -24
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
	li $t0, 24341
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	li $t0, 57834
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
	li $t0, 23392
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
	li $t0, 53809
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
	li $t0, 55539
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
	li $t0, 41878
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
	li $t0, 16097
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
	li $t0, 7902
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
	li $t0, 9657
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
	li $t0, 9440
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	li $t0, 11146
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	li $t0, 35986
	sw $t0, -460($fp)
	addi $t0, $fp, -60
	sw $t0, -464($fp)
	li $t0, 0
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
	li $t0, 47651
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	li $t0, 40658
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	lw $t0, -68($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -80($fp)
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -92($fp)
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -104($fp)
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -524($fp)
	li $t0, 0
	sw $t0, -528($fp)
	li $t0, 4
	lw $t1, -528($fp)
	mul $t0, $t0, $t1
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	lw $t1, -524($fp)
	add $t0, $t0, $t1
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	lw $t1, 0($t0)
	sw $t1, -540($fp)
	lw $t0, -540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -544($fp)
	li $t0, 1
	sw $t0, -548($fp)
	li $t0, 4
	lw $t1, -548($fp)
	mul $t0, $t0, $t1
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	lw $t1, -544($fp)
	add $t0, $t0, $t1
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	lw $t1, 0($t0)
	sw $t1, -560($fp)
	lw $t0, -560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -564($fp)
	li $t0, 2
	sw $t0, -568($fp)
	li $t0, 4
	lw $t1, -568($fp)
	mul $t0, $t0, $t1
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	lw $t1, -564($fp)
	add $t0, $t0, $t1
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	lw $t1, 0($t0)
	sw $t1, -580($fp)
	lw $t0, -580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -584($fp)
	li $t0, 3
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
	lw $t0, -600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -604($fp)
	li $t0, 4
	sw $t0, -608($fp)
	li $t0, 4
	lw $t1, -608($fp)
	mul $t0, $t0, $t1
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	lw $t1, -604($fp)
	add $t0, $t0, $t1
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	lw $t1, 0($t0)
	sw $t1, -620($fp)
	lw $t0, -620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -236($fp)
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -628($fp)
	li $t0, 0
	sw $t0, -632($fp)
	li $t0, 4
	lw $t1, -632($fp)
	mul $t0, $t0, $t1
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	lw $t1, -628($fp)
	add $t0, $t0, $t1
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	lw $t1, 0($t0)
	sw $t1, -644($fp)
	lw $t0, -644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -648($fp)
	li $t0, 1
	sw $t0, -652($fp)
	li $t0, 4
	lw $t1, -652($fp)
	mul $t0, $t0, $t1
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	lw $t1, -648($fp)
	add $t0, $t0, $t1
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	lw $t1, 0($t0)
	sw $t1, -664($fp)
	lw $t0, -664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -668($fp)
	li $t0, 2
	sw $t0, -672($fp)
	li $t0, 4
	lw $t1, -672($fp)
	mul $t0, $t0, $t1
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	lw $t1, -668($fp)
	add $t0, $t0, $t1
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	lw $t1, 0($t0)
	sw $t1, -684($fp)
	lw $t0, -684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -688($fp)
	li $t0, 3
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
	addi $t0, $fp, -56
	sw $t0, -708($fp)
	li $t0, 4
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
	addi $t0, $fp, -56
	sw $t0, -728($fp)
	li $t0, 5
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
	addi $t0, $fp, -56
	sw $t0, -748($fp)
	li $t0, 6
	sw $t0, -752($fp)
	li $t0, 4
	lw $t1, -752($fp)
	mul $t0, $t0, $t1
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	lw $t1, -748($fp)
	add $t0, $t0, $t1
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	lw $t1, 0($t0)
	sw $t1, -764($fp)
	lw $t0, -764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -768($fp)
	li $t0, 7
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
	lw $t0, -440($fp)
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -452($fp)
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -796($fp)
	li $t0, 0
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
	lw $t0, -488($fp)
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -500($fp)
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -824($fp)
	li $t0, 0
	sw $t0, -828($fp)
	li $t0, 18139
	sw $t0, -832($fp)
	lw $t1, -832($fp)
	li $t2, 0
	bne $t1, $t2, label124
	j label123
label123:
	li $t0, 1
	sw $t0, -828($fp)
label124:
	li $t0, 4
	lw $t1, -828($fp)
	mul $t0, $t0, $t1
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	lw $t1, -824($fp)
	add $t0, $t0, $t1
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	lw $t1, 0($t0)
	sw $t1, -844($fp)
	lw $ra, -4($fp)
	lw $v0, -844($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label125:
	addi $t0, $fp, -60
	sw $t0, -848($fp)
	li $t0, 0
	sw $t0, -852($fp)
	li $t0, 35825
	sw $t0, -856($fp)
	lw $t0, -488($fp)
	sw $t0, -860($fp)
	lw $t0, -856($fp)
	lw $t1, -860($fp)
	add $t0, $t0, $t1
	sw $t0, -864($fp)
	lw $t1, -864($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label130
label130:
	lw $t0, -104($fp)
	sw $t0, -868($fp)
	lw $t1, -868($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label129
label128:
	li $t0, 1
	sw $t0, -852($fp)
label129:
	li $t0, 4
	lw $t1, -852($fp)
	mul $t0, $t0, $t1
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	lw $t1, -848($fp)
	add $t0, $t0, $t1
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	lw $t1, 0($t0)
	sw $t1, -880($fp)
	addi $t0, $fp, -56
	sw $t0, -884($fp)
	li $t0, 0
	sw $t0, -888($fp)
	li $t0, 62578
	sw $t0, -892($fp)
	li $t0, 52571
	sw $t0, -896($fp)
	lw $t1, -892($fp)
	lw $t2, -896($fp)
	ble $t1, $t2, label131
	j label132
label131:
	li $t0, 1
	sw $t0, -888($fp)
label132:
	li $t0, 4
	lw $t1, -888($fp)
	mul $t0, $t0, $t1
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	lw $t1, -884($fp)
	add $t0, $t0, $t1
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	lw $t1, 0($t0)
	sw $t1, -908($fp)
	lw $t0, -880($fp)
	lw $t1, -908($fp)
	mul $t0, $t0, $t1
	sw $t0, -912($fp)
	lw $t1, -912($fp)
	li $t2, 0
	bne $t1, $t2, label126
	j label127
label126:
	li $t0, 0
	sw $t0, -916($fp)
	lw $t0, -452($fp)
	sw $t0, -920($fp)
	li $t0, 0
	lw $t1, -920($fp)
	sub $t0, $t0, $t1
	sw $t0, -924($fp)
	lw $t1, -924($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label133
label133:
	li $t0, 1
	sw $t0, -916($fp)
label134:
	li $t0, 0
	sw $t0, -928($fp)
	addi $t0, $fp, -24
	sw $t0, -932($fp)
	lw $t0, -68($fp)
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
	lw $t1, -948($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label136
label137:
	lw $t0, -500($fp)
	sw $t0, -952($fp)
	lw $t1, -952($fp)
	li $t2, 0
	bne $t1, $t2, label135
	j label136
label135:
	li $t0, 1
	sw $t0, -928($fp)
label136:
	li $t0, 48495
	sw $t0, -956($fp)
	li $t0, 0
	lw $t1, -956($fp)
	sub $t0, $t0, $t1
	sw $t0, -960($fp)
	addi $sp, $sp, -4
	lw $t0, -916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -960($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -964($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -964($fp)
	sub $t0, $t0, $t1
	sw $t0, -968($fp)
	lw $ra, -4($fp)
	lw $v0, -968($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label125
label127:
	lw $t0, -68($fp)
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -80($fp)
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -92($fp)
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -104($fp)
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
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
	lw $t0, -1004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -1008($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -1028($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -1048($fp)
	li $t0, 3
	sw $t0, -1052($fp)
	li $t0, 4
	lw $t1, -1052($fp)
	mul $t0, $t0, $t1
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	lw $t1, -1048($fp)
	add $t0, $t0, $t1
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	lw $t1, 0($t0)
	sw $t1, -1064($fp)
	lw $t0, -1064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -1068($fp)
	li $t0, 4
	sw $t0, -1072($fp)
	li $t0, 4
	lw $t1, -1072($fp)
	mul $t0, $t0, $t1
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	lw $t1, -1068($fp)
	add $t0, $t0, $t1
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	lw $t1, 0($t0)
	sw $t1, -1084($fp)
	lw $t0, -1084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -236($fp)
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1092($fp)
	li $t0, 0
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
	addi $t0, $fp, -56
	sw $t0, -1112($fp)
	li $t0, 1
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
	addi $t0, $fp, -56
	sw $t0, -1132($fp)
	li $t0, 2
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
	addi $t0, $fp, -56
	sw $t0, -1152($fp)
	li $t0, 3
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
	addi $t0, $fp, -56
	sw $t0, -1172($fp)
	li $t0, 4
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
	addi $t0, $fp, -56
	sw $t0, -1192($fp)
	li $t0, 5
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
	addi $t0, $fp, -56
	sw $t0, -1212($fp)
	li $t0, 6
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
	addi $t0, $fp, -56
	sw $t0, -1232($fp)
	li $t0, 7
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
	lw $t0, -440($fp)
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -452($fp)
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
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
	lw $t0, -488($fp)
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -500($fp)
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1288($fp)
	lw $t0, 4($fp)
	sw $t0, -1292($fp)
	jal f6
	sw $v0, -1296($fp)
	addi $sp, $sp, 4
	li $t0, 61302
	sw $t0, -1300($fp)
	lw $t0, -1296($fp)
	lw $t1, -1300($fp)
	mul $t0, $t0, $t1
	sw $t0, -1304($fp)
	lw $t1, -1292($fp)
	lw $t2, -1304($fp)
	bgt $t1, $t2, label140
	j label139
label140:
	addi $t0, $fp, -56
	sw $t0, -1308($fp)
	li $t0, 2
	sw $t0, -1312($fp)
	li $t0, 4
	lw $t1, -1312($fp)
	mul $t0, $t0, $t1
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	lw $t1, -1308($fp)
	add $t0, $t0, $t1
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	lw $t1, 0($t0)
	sw $t1, -1324($fp)
	lw $t1, -1324($fp)
	li $t2, 0
	bne $t1, $t2, label138
	j label139
label138:
	li $t0, 1
	sw $t0, -1288($fp)
label139:
	lw $ra, -4($fp)
	lw $v0, -1288($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 58958
	sw $t0, -1348($fp)
	addi $t0, $fp, -1344
	sw $t0, -1352($fp)
	li $t0, 0
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
	li $t0, 48877
	sw $t0, -1372($fp)
	addi $t0, $fp, -1344
	sw $t0, -1376($fp)
	li $t0, 1
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
	li $t0, 43225
	sw $t0, -1396($fp)
	addi $t0, $fp, -1344
	sw $t0, -1400($fp)
	li $t0, 2
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
	li $t0, 25469
	sw $t0, -1420($fp)
	addi $t0, $fp, -1344
	sw $t0, -1424($fp)
	li $t0, 3
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
	li $t0, 44271
	sw $t0, -1444($fp)
	addi $t0, $fp, -1344
	sw $t0, -1448($fp)
	li $t0, 4
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
	li $t0, 44891
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	sw $t0, -1476($fp)
	li $t0, 0
	sw $t0, -1480($fp)
	li $t0, 58081
	sw $t0, -1484($fp)
	lw $t0, -236($fp)
	sw $t0, -1488($fp)
	lw $t0, -488($fp)
	sw $t0, -1492($fp)
	lw $t0, -1488($fp)
	lw $t1, -1492($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1496($fp)
	li $t0, 50380
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -1504($fp)
	li $t0, 0
	sw $t0, -1508($fp)
	li $t0, 30562
	sw $t0, -1512($fp)
	lw $t0, 4($fp)
	sw $t0, -1516($fp)
	lw $t0, -1512($fp)
	lw $t1, -1516($fp)
	add $t0, $t0, $t1
	sw $t0, -1520($fp)
	li $t0, 3696
	sw $t0, -1524($fp)
	lw $t1, -1520($fp)
	lw $t2, -1524($fp)
	bne $t1, $t2, label143
	j label144
label143:
	li $t0, 1
	sw $t0, -1508($fp)
label144:
	li $t0, 0
	sw $t0, -1528($fp)
	lw $t0, -68($fp)
	sw $t0, -1532($fp)
	lw $t0, -488($fp)
	sw $t0, -1536($fp)
	lw $t0, -1532($fp)
	lw $t1, -1536($fp)
	sub $t0, $t0, $t1
	sw $t0, -1540($fp)
	lw $t1, -1540($fp)
	li $t2, 0
	bne $t1, $t2, label147
	j label146
label147:
	lw $t0, -488($fp)
	sw $t0, -1544($fp)
	lw $t1, -1544($fp)
	li $t2, 0
	bne $t1, $t2, label145
	j label146
label145:
	li $t0, 1
	sw $t0, -1528($fp)
label146:
	addi $sp, $sp, -4
	lw $t0, -1504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1528($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1548($fp)
	addi $sp, $sp, 16
	lw $t0, -1496($fp)
	lw $t1, -1548($fp)
	mul $t0, $t0, $t1
	sw $t0, -1552($fp)
	lw $t1, -1484($fp)
	lw $t2, -1552($fp)
	ble $t1, $t2, label141
	j label142
label141:
	li $t0, 1
	sw $t0, -1480($fp)
label142:
	addi $t0, $fp, -1344
	sw $t0, -1556($fp)
	li $t0, 0
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
	addi $t0, $fp, -1344
	sw $t0, -1576($fp)
	li $t0, 1
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
	addi $t0, $fp, -1344
	sw $t0, -1596($fp)
	li $t0, 2
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
	addi $t0, $fp, -1344
	sw $t0, -1616($fp)
	li $t0, 3
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
	addi $t0, $fp, -1344
	sw $t0, -1636($fp)
	li $t0, 4
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
	lw $t0, -1652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1472($fp)
	sw $t0, -1656($fp)
	lw $t0, -1656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1660($fp)
	addi $t0, $fp, -1344
	sw $t0, -1664($fp)
	li $t0, 0
	sw $t0, -1668($fp)
	lw $t0, 12($fp)
	sw $t0, -1672($fp)
	lw $t1, -1672($fp)
	li $t2, 0
	bne $t1, $t2, label151
	j label153
label153:
	li $t0, 53954
	sw $t0, -1676($fp)
	lw $t1, -1676($fp)
	li $t2, 0
	bne $t1, $t2, label151
	j label152
label151:
	li $t0, 1
	sw $t0, -1668($fp)
label152:
	li $t0, 4
	lw $t1, -1668($fp)
	mul $t0, $t0, $t1
	sw $t0, -1680($fp)
	lw $t0, -1680($fp)
	lw $t1, -1664($fp)
	add $t0, $t0, $t1
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	lw $t1, 0($t0)
	sw $t1, -1688($fp)
	lw $t0, -1472($fp)
	sw $t0, -1692($fp)
	li $t0, 57505
	sw $t0, -1696($fp)
	lw $t0, -1692($fp)
	lw $t1, -1696($fp)
	mul $t0, $t0, $t1
	sw $t0, -1700($fp)
	lw $t0, -488($fp)
	sw $t0, -1704($fp)
	lw $t0, -1700($fp)
	lw $t1, -1704($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1708($fp)
	lw $t1, -1688($fp)
	lw $t2, -1708($fp)
	bne $t1, $t2, label148
	j label150
label150:
	addi $t0, $fp, -60
	sw $t0, -1712($fp)
	lw $t0, -488($fp)
	sw $t0, -1716($fp)
	li $t0, 4
	lw $t1, -1716($fp)
	mul $t0, $t0, $t1
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	lw $t1, -1712($fp)
	add $t0, $t0, $t1
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	lw $t1, 0($t0)
	sw $t1, -1728($fp)
	li $t0, 40383
	sw $t0, -1732($fp)
	lw $t0, -1728($fp)
	lw $t1, -1732($fp)
	add $t0, $t0, $t1
	sw $t0, -1736($fp)
	li $t0, 0
	sw $t0, -1740($fp)
	li $t0, 30296
	sw $t0, -1744($fp)
	lw $t0, 8($fp)
	sw $t0, -1748($fp)
	lw $t1, -1744($fp)
	lw $t2, -1748($fp)
	ble $t1, $t2, label154
	j label155
label154:
	li $t0, 1
	sw $t0, -1740($fp)
label155:
	lw $t1, -1736($fp)
	lw $t2, -1740($fp)
	beq $t1, $t2, label148
	j label149
label148:
	li $t0, 1
	sw $t0, -1660($fp)
label149:
	lw $ra, -4($fp)
	lw $v0, -1660($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 8067
	sw $t0, -1776($fp)
	addi $t0, $fp, -1760
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
	li $t0, 48285
	sw $t0, -1800($fp)
	addi $t0, $fp, -1760
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
	li $t0, 39953
	sw $t0, -1824($fp)
	addi $t0, $fp, -1760
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
	li $t0, 17507
	sw $t0, -1848($fp)
	addi $t0, $fp, -1772
	sw $t0, -1852($fp)
	li $t0, 0
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
	li $t0, 59432
	sw $t0, -1872($fp)
	addi $t0, $fp, -1772
	sw $t0, -1876($fp)
	li $t0, 1
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
	li $t0, 10403
	sw $t0, -1896($fp)
	addi $t0, $fp, -1772
	sw $t0, -1900($fp)
	li $t0, 2
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
	li $t0, 65158
	sw $t0, -1920($fp)
	lw $t0, -1920($fp)
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	sw $t0, -1928($fp)
	addi $t0, $fp, -1760
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
	addi $t0, $fp, -1760
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
	addi $t0, $fp, -1760
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
	addi $t0, $fp, -1772
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
	lw $t0, -2008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1772
	sw $t0, -2012($fp)
	li $t0, 1
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
	lw $t0, -2028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1772
	sw $t0, -2032($fp)
	li $t0, 2
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
	lw $t0, -1924($fp)
	sw $t0, -2052($fp)
	lw $t0, -2052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -92($fp)
	sw $t0, -2056($fp)
	lw $ra, -4($fp)
	lw $v0, -2056($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label156:
	lw $t0, 4($fp)
	sw $t0, -2060($fp)
	jal f6
	sw $v0, -2064($fp)
	addi $sp, $sp, 4
	lw $t0, -2060($fp)
	lw $t1, -2064($fp)
	add $t0, $t0, $t1
	sw $t0, -2068($fp)
	lw $t1, -2068($fp)
	li $t2, 0
	bne $t1, $t2, label157
	j label158
label157:
	addi $t0, $fp, -24
	sw $t0, -2072($fp)
	addi $t0, $fp, -1344
	sw $t0, -2076($fp)
	li $t0, 0
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
	li $t0, 4
	lw $t1, -2092($fp)
	mul $t0, $t0, $t1
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	lw $t1, -2072($fp)
	add $t0, $t0, $t1
	sw $t0, -2100($fp)
	lw $t0, -2100($fp)
	lw $t1, 0($t0)
	sw $t1, -2104($fp)
	lw $t1, -2104($fp)
	li $t2, 0
	bne $t1, $t2, label162
	j label160
label162:
	li $t0, 35447
	sw $t0, -2108($fp)
	li $t0, 31597
	sw $t0, -2112($fp)
	lw $t0, -2108($fp)
	lw $t1, -2112($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2116($fp)
	lw $t0, -488($fp)
	sw $t0, -2120($fp)
	lw $t0, -2116($fp)
	lw $t1, -2120($fp)
	mul $t0, $t0, $t1
	sw $t0, -2124($fp)
	lw $t0, 4($fp)
	sw $t0, -2128($fp)
	lw $t0, -2124($fp)
	lw $t1, -2128($fp)
	sub $t0, $t0, $t1
	sw $t0, -2132($fp)
	lw $t1, -2132($fp)
	li $t2, 0
	bne $t1, $t2, label159
	j label160
label159:
	lw $t0, -440($fp)
	sw $t0, -2136($fp)
	addi $t0, $fp, -1760
	sw $t0, -2140($fp)
	li $t0, 0
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
	lw $t0, -2136($fp)
	lw $t1, -2156($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2160($fp)
	addi $t0, $fp, -1760
	sw $t0, -2164($fp)
	lw $t0, -236($fp)
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
	jal f6
	sw $v0, -2184($fp)
	addi $sp, $sp, 4
	lw $t0, -2180($fp)
	lw $t1, -2184($fp)
	mul $t0, $t0, $t1
	sw $t0, -2188($fp)
	li $t0, 0
	lw $t1, -2188($fp)
	sub $t0, $t0, $t1
	sw $t0, -2192($fp)
	lw $t0, -2160($fp)
	lw $t1, -2192($fp)
	mul $t0, $t0, $t1
	sw $t0, -2196($fp)
	lw $t1, -2196($fp)
	li $t2, 0
	bne $t1, $t2, label163
	j label164
label163:
	li $t0, 27363
	sw $t0, -2200($fp)
	li $t0, 0
	lw $t1, -2200($fp)
	sub $t0, $t0, $t1
	sw $t0, -2204($fp)
	li $t0, 0
	lw $t1, -2204($fp)
	sub $t0, $t0, $t1
	sw $t0, -2208($fp)
	j label165
label164:
	li $t0, 0
	sw $t0, -2212($fp)
	li $t0, 0
	sw $t0, -2216($fp)
	li $t0, 0
	sw $t0, -2220($fp)
	li $t0, 36426
	sw $t0, -2224($fp)
	lw $t1, -2224($fp)
	li $t2, 0
	bne $t1, $t2, label170
	j label173
label173:
	li $t0, 32791
	sw $t0, -2228($fp)
	lw $t1, -2228($fp)
	li $t2, 0
	bne $t1, $t2, label170
	j label172
label172:
	li $t0, 1096
	sw $t0, -2232($fp)
	lw $t1, -2232($fp)
	li $t2, 0
	bne $t1, $t2, label170
	j label171
label170:
	li $t0, 1
	sw $t0, -2220($fp)
label171:
	li $t0, 0
	sw $t0, -2236($fp)
	addi $t0, $fp, -1760
	sw $t0, -2240($fp)
	li $t0, 2
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
	lw $t0, -500($fp)
	sw $t0, -2260($fp)
	lw $t1, -2256($fp)
	lw $t2, -2260($fp)
	ble $t1, $t2, label174
	j label175
label174:
	li $t0, 1
	sw $t0, -2236($fp)
label175:
	li $t0, 0
	sw $t0, -2264($fp)
	addi $t0, $fp, -1772
	sw $t0, -2268($fp)
	li $t0, 0
	sw $t0, -2272($fp)
	li $t0, 4
	lw $t1, -2272($fp)
	mul $t0, $t0, $t1
	sw $t0, -2276($fp)
	lw $t0, -2276($fp)
	lw $t1, -2268($fp)
	add $t0, $t0, $t1
	sw $t0, -2280($fp)
	lw $t0, -2280($fp)
	lw $t1, 0($t0)
	sw $t1, -2284($fp)
	lw $t0, -488($fp)
	sw $t0, -2288($fp)
	lw $t1, -2284($fp)
	lw $t2, -2288($fp)
	beq $t1, $t2, label176
	j label177
label176:
	li $t0, 1
	sw $t0, -2264($fp)
label177:
	addi $sp, $sp, -4
	lw $t0, -2220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2264($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2292($fp)
	addi $sp, $sp, 16
	lw $t1, -2292($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label169
label168:
	li $t0, 1
	sw $t0, -2216($fp)
label169:
	li $t0, 0
	sw $t0, -2296($fp)
	addi $t0, $fp, -60
	sw $t0, -2300($fp)
	li $t0, 0
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
	li $t0, 59177
	sw $t0, -2320($fp)
	lw $t0, -2316($fp)
	lw $t1, -2320($fp)
	mul $t0, $t0, $t1
	sw $t0, -2324($fp)
	lw $t0, -236($fp)
	sw $t0, -2328($fp)
	li $t0, 0
	lw $t1, -2328($fp)
	sub $t0, $t0, $t1
	sw $t0, -2332($fp)
	lw $t1, -2324($fp)
	lw $t2, -2332($fp)
	ble $t1, $t2, label178
	j label179
label178:
	li $t0, 1
	sw $t0, -2296($fp)
label179:
	lw $t1, -2216($fp)
	lw $t2, -2296($fp)
	bne $t1, $t2, label166
	j label167
label166:
	li $t0, 1
	sw $t0, -2212($fp)
label167:
label165:
	j label161
label160:
	li $t0, 45724
	sw $t0, -2336($fp)
label161:
	j label156
label158:
	li $t0, 15843
	sw $t0, -2340($fp)
	li $t0, 0
	sw $t0, -2344($fp)
	li $t0, 44021
	sw $t0, -2348($fp)
	li $t0, 0
	lw $t1, -2348($fp)
	sub $t0, $t0, $t1
	sw $t0, -2352($fp)
	lw $t1, -2352($fp)
	li $t2, 0
	bne $t1, $t2, label181
	j label180
label180:
	li $t0, 1
	sw $t0, -2344($fp)
label181:
	lw $t0, -2340($fp)
	lw $t1, -2344($fp)
	add $t0, $t0, $t1
	sw $t0, -2356($fp)
	li $t0, 34142
	sw $t0, -2360($fp)
	lw $ra, -4($fp)
	lw $v0, -2360($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -24
	sw $t0, -2364($fp)
	li $t0, 0
	sw $t0, -2368($fp)
	lw $t0, -236($fp)
	sw $t0, -2372($fp)
	lw $t1, -2372($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label184
label184:
	li $t0, 7812
	sw $t0, -2376($fp)
	lw $t1, -2376($fp)
	li $t2, 0
	bne $t1, $t2, label182
	j label183
label182:
	li $t0, 1
	sw $t0, -2368($fp)
label183:
	li $t0, 4
	lw $t1, -2368($fp)
	mul $t0, $t0, $t1
	sw $t0, -2380($fp)
	lw $t0, -2380($fp)
	lw $t1, -2364($fp)
	add $t0, $t0, $t1
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	lw $t1, 0($t0)
	sw $t1, -2388($fp)
	li $t0, 0
	lw $t1, -2388($fp)
	sub $t0, $t0, $t1
	sw $t0, -2392($fp)
	addi $t0, $fp, -56
	sw $t0, -2396($fp)
	li $t0, 0
	sw $t0, -2400($fp)
	li $t0, 18868
	sw $t0, -2404($fp)
	lw $t1, -2404($fp)
	li $t2, 0
	bne $t1, $t2, label188
	j label190
label190:
	lw $t0, -452($fp)
	sw $t0, -2408($fp)
	lw $t1, -2408($fp)
	li $t2, 0
	bne $t1, $t2, label188
	j label189
label188:
	li $t0, 1
	sw $t0, -2400($fp)
label189:
	li $t0, 4
	lw $t1, -2400($fp)
	mul $t0, $t0, $t1
	sw $t0, -2412($fp)
	lw $t0, -2412($fp)
	lw $t1, -2396($fp)
	add $t0, $t0, $t1
	sw $t0, -2416($fp)
	lw $t0, -2416($fp)
	lw $t1, 0($t0)
	sw $t1, -2420($fp)
	li $t0, 0
	lw $t1, -2420($fp)
	sub $t0, $t0, $t1
	sw $t0, -2424($fp)
	lw $t0, -452($fp)
	sw $t0, -2428($fp)
	lw $t0, -2424($fp)
	lw $t1, -2428($fp)
	sub $t0, $t0, $t1
	sw $t0, -2432($fp)
	lw $t1, -2432($fp)
	li $t2, 0
	bne $t1, $t2, label185
	j label186
label185:
	addi $t0, $fp, -1760
	sw $t0, -2436($fp)
	li $t0, 2
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
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	sw $t0, -2456($fp)
	lw $t0, -2456($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -2460($fp)
label186:
	li $t0, 1618
	sw $t0, -2464($fp)
	lw $t0, 4($fp)
	sw $t0, -2468($fp)
	lw $t0, -2464($fp)
	lw $t1, -2468($fp)
	mul $t0, $t0, $t1
	sw $t0, -2472($fp)
	li $t0, 0
	lw $t1, -2472($fp)
	sub $t0, $t0, $t1
	sw $t0, -2476($fp)
	addi $t0, $fp, -24
	sw $t0, -2480($fp)
	li $t0, 0
	sw $t0, -2484($fp)
	li $t0, 38855
	sw $t0, -2488($fp)
	lw $t1, -2488($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label193
label193:
	li $t0, 33387
	sw $t0, -2492($fp)
	lw $t1, -2492($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label192
label191:
	li $t0, 1
	sw $t0, -2484($fp)
label192:
	li $t0, 4
	lw $t1, -2484($fp)
	mul $t0, $t0, $t1
	sw $t0, -2496($fp)
	lw $t0, -2496($fp)
	lw $t1, -2480($fp)
	add $t0, $t0, $t1
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	lw $t1, 0($t0)
	sw $t1, -2504($fp)
	lw $t0, -2476($fp)
	lw $t1, -2504($fp)
	add $t0, $t0, $t1
	sw $t0, -2508($fp)
	addi $t0, $fp, -60
	sw $t0, -2512($fp)
	li $t0, 0
	sw $t0, -2516($fp)
	li $t0, 0
	sw $t0, -2520($fp)
	li $t0, 61050
	sw $t0, -2524($fp)
	li $t0, 1
	sw $t0, -2528($fp)
	lw $t0, -2524($fp)
	lw $t1, -2528($fp)
	mul $t0, $t0, $t1
	sw $t0, -2532($fp)
	lw $t0, -92($fp)
	sw $t0, -2536($fp)
	lw $t1, -2532($fp)
	lw $t2, -2536($fp)
	bge $t1, $t2, label196
	j label197
label196:
	li $t0, 1
	sw $t0, -2520($fp)
label197:
	li $t0, 33009
	sw $t0, -2540($fp)
	lw $t0, -440($fp)
	sw $t0, -2544($fp)
	lw $t0, -2540($fp)
	lw $t1, -2544($fp)
	add $t0, $t0, $t1
	sw $t0, -2548($fp)
	lw $t1, -2520($fp)
	lw $t2, -2548($fp)
	beq $t1, $t2, label194
	j label195
label194:
	li $t0, 1
	sw $t0, -2516($fp)
label195:
	li $t0, 4
	lw $t1, -2516($fp)
	mul $t0, $t0, $t1
	sw $t0, -2552($fp)
	lw $t0, -2552($fp)
	lw $t1, -2512($fp)
	add $t0, $t0, $t1
	sw $t0, -2556($fp)
	lw $t0, -2556($fp)
	lw $t1, 0($t0)
	sw $t1, -2560($fp)
	lw $t0, -68($fp)
	sw $t0, -2564($fp)
	lw $t0, -2564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -80($fp)
	sw $t0, -2568($fp)
	lw $t0, -2568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -92($fp)
	sw $t0, -2572($fp)
	lw $t0, -2572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -104($fp)
	sw $t0, -2576($fp)
	lw $t0, -2576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -2580($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -2600($fp)
	li $t0, 1
	sw $t0, -2604($fp)
	li $t0, 4
	lw $t1, -2604($fp)
	mul $t0, $t0, $t1
	sw $t0, -2608($fp)
	lw $t0, -2608($fp)
	lw $t1, -2600($fp)
	add $t0, $t0, $t1
	sw $t0, -2612($fp)
	lw $t0, -2612($fp)
	lw $t1, 0($t0)
	sw $t1, -2616($fp)
	lw $t0, -2616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -2620($fp)
	li $t0, 2
	sw $t0, -2624($fp)
	li $t0, 4
	lw $t1, -2624($fp)
	mul $t0, $t0, $t1
	sw $t0, -2628($fp)
	lw $t0, -2628($fp)
	lw $t1, -2620($fp)
	add $t0, $t0, $t1
	sw $t0, -2632($fp)
	lw $t0, -2632($fp)
	lw $t1, 0($t0)
	sw $t1, -2636($fp)
	lw $t0, -2636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -2640($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -2660($fp)
	li $t0, 4
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
	lw $t0, -236($fp)
	sw $t0, -2680($fp)
	lw $t0, -2680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -2684($fp)
	li $t0, 0
	sw $t0, -2688($fp)
	li $t0, 4
	lw $t1, -2688($fp)
	mul $t0, $t0, $t1
	sw $t0, -2692($fp)
	lw $t0, -2692($fp)
	lw $t1, -2684($fp)
	add $t0, $t0, $t1
	sw $t0, -2696($fp)
	lw $t0, -2696($fp)
	lw $t1, 0($t0)
	sw $t1, -2700($fp)
	lw $t0, -2700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -2704($fp)
	li $t0, 1
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
	lw $t0, -2720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -2724($fp)
	li $t0, 2
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
	lw $t0, -2740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -2744($fp)
	li $t0, 3
	sw $t0, -2748($fp)
	li $t0, 4
	lw $t1, -2748($fp)
	mul $t0, $t0, $t1
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	lw $t1, -2744($fp)
	add $t0, $t0, $t1
	sw $t0, -2756($fp)
	lw $t0, -2756($fp)
	lw $t1, 0($t0)
	sw $t1, -2760($fp)
	lw $t0, -2760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -2764($fp)
	li $t0, 4
	sw $t0, -2768($fp)
	li $t0, 4
	lw $t1, -2768($fp)
	mul $t0, $t0, $t1
	sw $t0, -2772($fp)
	lw $t0, -2772($fp)
	lw $t1, -2764($fp)
	add $t0, $t0, $t1
	sw $t0, -2776($fp)
	lw $t0, -2776($fp)
	lw $t1, 0($t0)
	sw $t1, -2780($fp)
	lw $t0, -2780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -2784($fp)
	li $t0, 5
	sw $t0, -2788($fp)
	li $t0, 4
	lw $t1, -2788($fp)
	mul $t0, $t0, $t1
	sw $t0, -2792($fp)
	lw $t0, -2792($fp)
	lw $t1, -2784($fp)
	add $t0, $t0, $t1
	sw $t0, -2796($fp)
	lw $t0, -2796($fp)
	lw $t1, 0($t0)
	sw $t1, -2800($fp)
	lw $t0, -2800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -2804($fp)
	li $t0, 6
	sw $t0, -2808($fp)
	li $t0, 4
	lw $t1, -2808($fp)
	mul $t0, $t0, $t1
	sw $t0, -2812($fp)
	lw $t0, -2812($fp)
	lw $t1, -2804($fp)
	add $t0, $t0, $t1
	sw $t0, -2816($fp)
	lw $t0, -2816($fp)
	lw $t1, 0($t0)
	sw $t1, -2820($fp)
	lw $t0, -2820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -2824($fp)
	li $t0, 7
	sw $t0, -2828($fp)
	li $t0, 4
	lw $t1, -2828($fp)
	mul $t0, $t0, $t1
	sw $t0, -2832($fp)
	lw $t0, -2832($fp)
	lw $t1, -2824($fp)
	add $t0, $t0, $t1
	sw $t0, -2836($fp)
	lw $t0, -2836($fp)
	lw $t1, 0($t0)
	sw $t1, -2840($fp)
	lw $t0, -2840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -440($fp)
	sw $t0, -2844($fp)
	lw $t0, -2844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -452($fp)
	sw $t0, -2848($fp)
	lw $t0, -2848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -2852($fp)
	li $t0, 0
	sw $t0, -2856($fp)
	li $t0, 4
	lw $t1, -2856($fp)
	mul $t0, $t0, $t1
	sw $t0, -2860($fp)
	lw $t0, -2860($fp)
	lw $t1, -2852($fp)
	add $t0, $t0, $t1
	sw $t0, -2864($fp)
	lw $t0, -2864($fp)
	lw $t1, 0($t0)
	sw $t1, -2868($fp)
	lw $t0, -2868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -488($fp)
	sw $t0, -2872($fp)
	lw $t0, -2872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -500($fp)
	sw $t0, -2876($fp)
	lw $t0, -2876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -92($fp)
	sw $t0, -2880($fp)
	lw $t0, -236($fp)
	sw $t0, -2884($fp)
	lw $t0, -2880($fp)
	lw $t1, -2884($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2888($fp)
	lw $t0, -92($fp)
	sw $t0, -2892($fp)
	li $t0, 30068
	sw $t0, -2896($fp)
	lw $t0, -2892($fp)
	lw $t1, -2896($fp)
	mul $t0, $t0, $t1
	sw $t0, -2900($fp)
	lw $t0, -2888($fp)
	lw $t1, -2900($fp)
	sub $t0, $t0, $t1
	sw $t0, -2904($fp)
	lw $t0, -2904($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -2908($fp)
	lw $ra, -4($fp)
	lw $v0, -2908($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -7948
	li $t0, 12264
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	li $t0, 2921
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	li $t0, 61665
	sw $t0, -176($fp)
	addi $t0, $fp, -32
	sw $t0, -180($fp)
	li $t0, 0
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
	li $t0, 27842
	sw $t0, -200($fp)
	addi $t0, $fp, -32
	sw $t0, -204($fp)
	li $t0, 1
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
	li $t0, 21327
	sw $t0, -224($fp)
	addi $t0, $fp, -32
	sw $t0, -228($fp)
	li $t0, 2
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
	li $t0, 23493
	sw $t0, -248($fp)
	addi $t0, $fp, -32
	sw $t0, -252($fp)
	li $t0, 3
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
	li $t0, 10046
	sw $t0, -272($fp)
	addi $t0, $fp, -32
	sw $t0, -276($fp)
	li $t0, 4
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
	li $t0, 8877
	sw $t0, -296($fp)
	addi $t0, $fp, -32
	sw $t0, -300($fp)
	li $t0, 5
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
	li $t0, 13059
	sw $t0, -320($fp)
	addi $t0, $fp, -32
	sw $t0, -324($fp)
	li $t0, 6
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
	li $t0, 51209
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -352($fp)
	li $t0, 45303
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	li $t0, 45850
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -376($fp)
	li $t0, 52305
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -388($fp)
	li $t0, 60465
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -400($fp)
	li $t0, 57997
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -412($fp)
	li $t0, 45946
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -424($fp)
	li $t0, 40653
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	li $t0, 8304
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	li $t0, 24432
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	li $t0, 9259
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	li $t0, 16116
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	li $t0, 43300
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	li $t0, 8161
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	li $t0, 31996
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	li $t0, 44918
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	li $t0, 47016
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	li $t0, 65383
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -556($fp)
	li $t0, 40432
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -568($fp)
	li $t0, 30738
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -580($fp)
	li $t0, 32856
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	li $t0, 4965
	sw $t0, -596($fp)
	addi $t0, $fp, -44
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
	li $t0, 43003
	sw $t0, -620($fp)
	addi $t0, $fp, -44
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
	li $t0, 35777
	sw $t0, -644($fp)
	addi $t0, $fp, -44
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
	li $t0, 1094
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	li $t0, 5309
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	li $t0, 57105
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
	li $t0, 24587
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	li $t0, 15355
	sw $t0, -716($fp)
	addi $t0, $fp, -64
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
	li $t0, 446
	sw $t0, -740($fp)
	addi $t0, $fp, -64
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
	li $t0, 37646
	sw $t0, -764($fp)
	addi $t0, $fp, -64
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
	li $t0, 1028
	sw $t0, -788($fp)
	addi $t0, $fp, -64
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
	li $t0, 45749
	sw $t0, -812($fp)
	addi $t0, $fp, -64
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
	li $t0, 17961
	sw $t0, -836($fp)
	addi $t0, $fp, -80
	sw $t0, -840($fp)
	li $t0, 0
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
	li $t0, 53333
	sw $t0, -860($fp)
	addi $t0, $fp, -80
	sw $t0, -864($fp)
	li $t0, 1
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
	li $t0, 40679
	sw $t0, -884($fp)
	addi $t0, $fp, -80
	sw $t0, -888($fp)
	li $t0, 2
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
	li $t0, 10422
	sw $t0, -908($fp)
	addi $t0, $fp, -80
	sw $t0, -912($fp)
	li $t0, 3
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
	li $t0, 33744
	sw $t0, -932($fp)
	addi $t0, $fp, -108
	sw $t0, -936($fp)
	li $t0, 0
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
	li $t0, 15796
	sw $t0, -956($fp)
	addi $t0, $fp, -108
	sw $t0, -960($fp)
	li $t0, 1
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
	li $t0, 18726
	sw $t0, -980($fp)
	addi $t0, $fp, -108
	sw $t0, -984($fp)
	li $t0, 2
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
	li $t0, 58176
	sw $t0, -1004($fp)
	addi $t0, $fp, -108
	sw $t0, -1008($fp)
	li $t0, 3
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
	li $t0, 25056
	sw $t0, -1028($fp)
	addi $t0, $fp, -108
	sw $t0, -1032($fp)
	li $t0, 4
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
	li $t0, 34842
	sw $t0, -1052($fp)
	addi $t0, $fp, -108
	sw $t0, -1056($fp)
	li $t0, 5
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
	li $t0, 35940
	sw $t0, -1076($fp)
	addi $t0, $fp, -108
	sw $t0, -1080($fp)
	li $t0, 6
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
	li $t0, 33217
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	sw $t0, -1108($fp)
	li $t0, 1302
	sw $t0, -1112($fp)
	addi $t0, $fp, -136
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
	li $t0, 15323
	sw $t0, -1136($fp)
	addi $t0, $fp, -136
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
	li $t0, 14698
	sw $t0, -1160($fp)
	addi $t0, $fp, -136
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
	li $t0, 1149
	sw $t0, -1184($fp)
	addi $t0, $fp, -136
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
	li $t0, 55755
	sw $t0, -1208($fp)
	addi $t0, $fp, -136
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
	li $t0, 45436
	sw $t0, -1232($fp)
	addi $t0, $fp, -136
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
	li $t0, 34006
	sw $t0, -1256($fp)
	addi $t0, $fp, -136
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
	li $t0, 60720
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1288($fp)
	li $t0, 22903
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	sw $t0, -1300($fp)
	li $t0, 4247
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	sw $t0, -1312($fp)
	li $t0, 61815
	sw $t0, -1316($fp)
	addi $t0, $fp, -148
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
	li $t0, 28212
	sw $t0, -1340($fp)
	addi $t0, $fp, -148
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
	li $t0, 61352
	sw $t0, -1364($fp)
	addi $t0, $fp, -148
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
	li $t0, 20866
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	sw $t0, -1396($fp)
	lw $t0, -1104($fp)
	sw $t0, -1400($fp)
	lw $t1, -1400($fp)
	li $t2, 0
	bne $t1, $t2, label198
	j label201
label201:
	li $t0, 43568
	sw $t0, -1404($fp)
	lw $t0, -480($fp)
	sw $t0, -1408($fp)
	lw $t0, -1404($fp)
	lw $t1, -1408($fp)
	add $t0, $t0, $t1
	sw $t0, -1412($fp)
	lw $t1, -1412($fp)
	li $t2, 0
	bne $t1, $t2, label202
	j label199
label202:
	addi $t0, $fp, -108
	sw $t0, -1416($fp)
	lw $t0, -564($fp)
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
	li $t0, 10938
	sw $t0, -1436($fp)
	lw $t0, -1432($fp)
	lw $t1, -1436($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1440($fp)
	li $t0, 0
	sw $t0, -1444($fp)
	lw $t0, -696($fp)
	sw $t0, -1448($fp)
	li $t0, 44596
	sw $t0, -1452($fp)
	lw $t1, -1448($fp)
	lw $t2, -1452($fp)
	bne $t1, $t2, label203
	j label205
label205:
	li $t0, 42012
	sw $t0, -1456($fp)
	lw $t1, -1456($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label204
label203:
	li $t0, 1
	sw $t0, -1444($fp)
label204:
	li $t0, 0
	sw $t0, -1460($fp)
	li $t0, 61798
	sw $t0, -1464($fp)
	li $t0, 0
	lw $t1, -1464($fp)
	sub $t0, $t0, $t1
	sw $t0, -1468($fp)
	li $t0, 58513
	sw $t0, -1472($fp)
	lw $t1, -1468($fp)
	lw $t2, -1472($fp)
	beq $t1, $t2, label206
	j label207
label206:
	li $t0, 1
	sw $t0, -1460($fp)
label207:
	addi $sp, $sp, -4
	lw $t0, -1440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1460($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1476($fp)
	addi $sp, $sp, 16
	lw $t1, -1476($fp)
	li $t2, 0
	bne $t1, $t2, label198
	j label199
label198:
	addi $t0, $fp, -136
	sw $t0, -1480($fp)
	lw $t0, -480($fp)
	sw $t0, -1484($fp)
	li $t0, 32394
	sw $t0, -1488($fp)
	lw $t0, -1484($fp)
	lw $t1, -1488($fp)
	sub $t0, $t0, $t1
	sw $t0, -1492($fp)
	li $t0, 4
	lw $t1, -1492($fp)
	mul $t0, $t0, $t1
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	lw $t1, -1480($fp)
	add $t0, $t0, $t1
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	lw $t1, 0($t0)
	sw $t1, -1504($fp)
	lw $t0, -1504($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -1508($fp)
	lw $t1, -1508($fp)
	li $t2, 0
	bne $t1, $t2, label208
	j label209
label208:
	lw $t0, -480($fp)
	sw $t0, -1512($fp)
	lw $t1, -1512($fp)
	li $t2, 0
	bne $t1, $t2, label215
	j label214
label215:
	lw $t0, -156($fp)
	sw $t0, -1516($fp)
	li $t0, 17155
	sw $t0, -1520($fp)
	lw $t0, -1516($fp)
	lw $t1, -1520($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1524($fp)
	lw $t1, -1524($fp)
	li $t2, 0
	bne $t1, $t2, label211
	j label214
label214:
	li $t0, 0
	sw $t0, -1528($fp)
	lw $t0, -408($fp)
	sw $t0, -1532($fp)
	lw $t1, -1532($fp)
	li $t2, 0
	bne $t1, $t2, label217
	j label216
label216:
	li $t0, 1
	sw $t0, -1528($fp)
label217:
	li $t0, 21360
	sw $t0, -1536($fp)
	lw $t0, -1528($fp)
	lw $t1, -1536($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1540($fp)
	lw $t0, -588($fp)
	sw $t0, -1544($fp)
	li $t0, 0
	lw $t1, -1544($fp)
	sub $t0, $t0, $t1
	sw $t0, -1548($fp)
	lw $t1, -1540($fp)
	lw $t2, -1548($fp)
	bne $t1, $t2, label211
	j label212
label211:
	addi $t0, $fp, -148
	sw $t0, -1552($fp)
	li $t0, 1
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
	li $t0, 0
	sw $t0, -1572($fp)
	lw $t0, -396($fp)
	sw $t0, -1576($fp)
	lw $t1, -1576($fp)
	li $t2, 0
	bne $t1, $t2, label219
	j label218
label218:
	li $t0, 1
	sw $t0, -1572($fp)
label219:
	lw $t0, -1568($fp)
	lw $t1, -1572($fp)
	mul $t0, $t0, $t1
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -1584($fp)
	j label213
label212:
	li $t0, 40086
	sw $t0, -1588($fp)
	addi $t0, $fp, -136
	sw $t0, -1592($fp)
	li $t0, 0
	sw $t0, -1596($fp)
	lw $t0, -528($fp)
	sw $t0, -1600($fp)
	lw $t1, -1600($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label222
label222:
	lw $t0, -684($fp)
	sw $t0, -1604($fp)
	lw $t1, -1604($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label221
label220:
	li $t0, 1
	sw $t0, -1596($fp)
label221:
	li $t0, 4
	lw $t1, -1596($fp)
	mul $t0, $t0, $t1
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	lw $t1, -1592($fp)
	add $t0, $t0, $t1
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	lw $t1, 0($t0)
	sw $t1, -1616($fp)
	lw $t0, -1588($fp)
	lw $t1, -1616($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1620($fp)
	lw $t0, -504($fp)
	sw $t0, -1624($fp)
	jal f8
	sw $v0, -1628($fp)
	addi $sp, $sp, 4
	lw $t0, -1624($fp)
	lw $t1, -1628($fp)
	mul $t0, $t0, $t1
	sw $t0, -1632($fp)
	li $t0, 0
	lw $t1, -1632($fp)
	sub $t0, $t0, $t1
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -1640($fp)
label213:
	j label210
label209:
	jal f6
	sw $v0, -1644($fp)
	addi $sp, $sp, 4
	lw $t1, -1644($fp)
	li $t2, 0
	bne $t1, $t2, label223
	j label224
label223:
	li $t0, 0
	sw $t0, -1648($fp)
	li $t0, 58778
	sw $t0, -1652($fp)
	li $t0, 1
	sw $t0, -1656($fp)
	lw $t0, -1652($fp)
	lw $t1, -1656($fp)
	mul $t0, $t0, $t1
	sw $t0, -1660($fp)
	lw $t0, -420($fp)
	sw $t0, -1664($fp)
	lw $t0, -1660($fp)
	lw $t1, -1664($fp)
	mul $t0, $t0, $t1
	sw $t0, -1668($fp)
	lw $t1, -1668($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label227
label228:
	li $t0, 9392
	sw $t0, -1672($fp)
	lw $t1, -1672($fp)
	li $t2, 0
	bne $t1, $t2, label226
	j label227
label226:
	li $t0, 1
	sw $t0, -1648($fp)
label227:
	j label225
label224:
	li $t0, 0
	sw $t0, -1676($fp)
	li $t0, 29182
	sw $t0, -1680($fp)
	lw $t0, -480($fp)
	sw $t0, -1684($fp)
	lw $t0, -1680($fp)
	lw $t1, -1684($fp)
	sub $t0, $t0, $t1
	sw $t0, -1688($fp)
	lw $t1, -1688($fp)
	li $t2, 0
	bne $t1, $t2, label234
	j label233
label234:
	li $t0, 25689
	sw $t0, -1692($fp)
	li $t0, 10695
	sw $t0, -1696($fp)
	lw $t1, -1692($fp)
	lw $t2, -1696($fp)
	bne $t1, $t2, label232
	j label233
label232:
	li $t0, 1
	sw $t0, -1676($fp)
label233:
	lw $t0, -1676($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -1700($fp)
	lw $t1, -1700($fp)
	li $t2, 0
	bne $t1, $t2, label229
	j label230
label229:
	li $t0, 0
	sw $t0, -1704($fp)
	li $t0, 0
	sw $t0, -1708($fp)
	li $t0, 11844
	sw $t0, -1712($fp)
	lw $t1, -1712($fp)
	li $t2, 0
	bne $t1, $t2, label241
	j label240
label240:
	li $t0, 1
	sw $t0, -1708($fp)
label241:
	li $t0, 44505
	sw $t0, -1716($fp)
	li $t0, 40387
	sw $t0, -1720($fp)
	lw $t0, -1716($fp)
	lw $t1, -1720($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1724($fp)
	lw $t0, -420($fp)
	sw $t0, -1728($fp)
	lw $t0, -1724($fp)
	lw $t1, -1728($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1732($fp)
	jal f8
	sw $v0, -1736($fp)
	addi $sp, $sp, 4
	addi $sp, $sp, -4
	lw $t0, -1708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1736($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1740($fp)
	addi $sp, $sp, 16
	li $t0, 34725
	sw $t0, -1744($fp)
	li $t0, 20287
	sw $t0, -1748($fp)
	lw $t0, -1744($fp)
	lw $t1, -1748($fp)
	mul $t0, $t0, $t1
	sw $t0, -1752($fp)
	lw $t1, -1740($fp)
	lw $t2, -1752($fp)
	ble $t1, $t2, label238
	j label239
label238:
	li $t0, 1
	sw $t0, -1704($fp)
label239:
	lw $t0, -1704($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -1756($fp)
	lw $t1, -1756($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label236
label235:
	addi $t0, $fp, -44
	sw $t0, -1760($fp)
	li $t0, 45850
	sw $t0, -1764($fp)
	lw $t0, -468($fp)
	sw $t0, -1768($fp)
	li $t0, 0
	lw $t1, -1768($fp)
	sub $t0, $t0, $t1
	sw $t0, -1772($fp)
	lw $t0, -1764($fp)
	lw $t1, -1772($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1776($fp)
	li $t0, 4
	lw $t1, -1776($fp)
	mul $t0, $t0, $t1
	sw $t0, -1780($fp)
	lw $t0, -1780($fp)
	lw $t1, -1760($fp)
	add $t0, $t0, $t1
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	lw $t1, 0($t0)
	sw $t1, -1788($fp)
	j label237
label236:
	lw $t0, -672($fp)
	sw $t0, -1792($fp)
	lw $t1, -1792($fp)
	li $t2, 0
	bne $t1, $t2, label242
	j label247
label247:
	li $t0, 29909
	sw $t0, -1796($fp)
	lw $t0, -564($fp)
	sw $t0, -1800($fp)
	lw $t1, -1796($fp)
	lw $t2, -1800($fp)
	ble $t1, $t2, label242
	j label246
label246:
	li $t0, 43191
	sw $t0, -1804($fp)
	li $t0, 50098
	sw $t0, -1808($fp)
	lw $t0, -1804($fp)
	lw $t1, -1808($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1812($fp)
	lw $t0, -420($fp)
	sw $t0, -1816($fp)
	lw $t0, -1812($fp)
	lw $t1, -1816($fp)
	mul $t0, $t0, $t1
	sw $t0, -1820($fp)
	lw $t1, -1820($fp)
	li $t2, 0
	bne $t1, $t2, label242
	j label245
label245:
	lw $t0, -540($fp)
	sw $t0, -1824($fp)
	lw $t0, -588($fp)
	sw $t0, -1828($fp)
	lw $t0, -1824($fp)
	lw $t1, -1828($fp)
	mul $t0, $t0, $t1
	sw $t0, -1832($fp)
	lw $t1, -1832($fp)
	li $t2, 0
	bne $t1, $t2, label242
	j label243
label242:
	li $t0, 26188
	sw $t0, -1876($fp)
	addi $t0, $fp, -1872
	sw $t0, -1880($fp)
	li $t0, 0
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
	li $t0, 5867
	sw $t0, -1900($fp)
	addi $t0, $fp, -1872
	sw $t0, -1904($fp)
	li $t0, 1
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
	li $t0, 45914
	sw $t0, -1924($fp)
	addi $t0, $fp, -1872
	sw $t0, -1928($fp)
	li $t0, 2
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
	li $t0, 47055
	sw $t0, -1948($fp)
	addi $t0, $fp, -1872
	sw $t0, -1952($fp)
	li $t0, 3
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
	li $t0, 49435
	sw $t0, -1972($fp)
	addi $t0, $fp, -1872
	sw $t0, -1976($fp)
	li $t0, 4
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
	li $t0, 42177
	sw $t0, -1996($fp)
	addi $t0, $fp, -1872
	sw $t0, -2000($fp)
	li $t0, 5
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
	li $t0, 40032
	sw $t0, -2020($fp)
	addi $t0, $fp, -1872
	sw $t0, -2024($fp)
	li $t0, 6
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
	li $t0, 28496
	sw $t0, -2044($fp)
	addi $t0, $fp, -1872
	sw $t0, -2048($fp)
	li $t0, 7
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
	li $t0, 18653
	sw $t0, -2068($fp)
	addi $t0, $fp, -1872
	sw $t0, -2072($fp)
	li $t0, 8
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2080($fp)
	lw $t0, -2072($fp)
	lw $t1, -2080($fp)
	add $t0, $t0, $t1
	sw $t0, -2084($fp)
	lw $t0, -2068($fp)
	lw $t1, -2084($fp)
	sw $t0, 0($t1)
	lw $t0, -2084($fp)
	lw $t1, 0($t0)
	sw $t1, -2088($fp)
	li $t0, 50970
	sw $t0, -2092($fp)
	addi $t0, $fp, -1872
	sw $t0, -2096($fp)
	li $t0, 9
	sw $t0, -2100($fp)
	lw $t0, -2100($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2104($fp)
	lw $t0, -2096($fp)
	lw $t1, -2104($fp)
	add $t0, $t0, $t1
	sw $t0, -2108($fp)
	lw $t0, -2092($fp)
	lw $t1, -2108($fp)
	sw $t0, 0($t1)
	lw $t0, -2108($fp)
	lw $t1, 0($t0)
	sw $t1, -2112($fp)
	li $t0, 60890
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	sw $t0, -2124($fp)
	li $t0, 35808
	sw $t0, -2128($fp)
	lw $t0, -360($fp)
	sw $t0, -2132($fp)
	li $t0, 6794
	sw $t0, -2136($fp)
	lw $t0, -2132($fp)
	lw $t1, -2136($fp)
	mul $t0, $t0, $t1
	sw $t0, -2140($fp)
	lw $t0, -564($fp)
	sw $t0, -2144($fp)
	li $t0, 0
	lw $t1, -2144($fp)
	sub $t0, $t0, $t1
	sw $t0, -2148($fp)
	lw $t0, -2140($fp)
	lw $t1, -2148($fp)
	mul $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $t0, -2128($fp)
	lw $t1, -2152($fp)
	add $t0, $t0, $t1
	sw $t0, -2156($fp)
	li $t0, 61492
	sw $t0, -2160($fp)
	li $t0, 0
	sw $t0, -2164($fp)
	lw $t0, -396($fp)
	sw $t0, -2168($fp)
	li $t0, 3223
	sw $t0, -2172($fp)
	lw $t1, -2168($fp)
	lw $t2, -2172($fp)
	bne $t1, $t2, label250
	j label249
label250:
	addi $t0, $fp, -1872
	sw $t0, -2176($fp)
	li $t0, 8
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
	li $t0, 56272
	sw $t0, -2196($fp)
	lw $t0, -2120($fp)
	sw $t0, -2200($fp)
	li $t0, 61231
	sw $t0, -2204($fp)
	li $t0, 0
	lw $t1, -2204($fp)
	sub $t0, $t0, $t1
	sw $t0, -2208($fp)
	li $t0, 0
	lw $t1, -2208($fp)
	sub $t0, $t0, $t1
	sw $t0, -2212($fp)
	addi $sp, $sp, -4
	lw $t0, -2196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2212($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2216($fp)
	addi $sp, $sp, 16
	lw $t1, -2192($fp)
	lw $t2, -2216($fp)
	bgt $t1, $t2, label248
	j label249
label248:
	li $t0, 1
	sw $t0, -2164($fp)
label249:
	li $t0, 0
	sw $t0, -2220($fp)
	li $t0, 18380
	sw $t0, -2224($fp)
	lw $t1, -2224($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label251
label251:
	li $t0, 1
	sw $t0, -2220($fp)
label252:
	li $t0, 0
	lw $t1, -2220($fp)
	sub $t0, $t0, $t1
	sw $t0, -2228($fp)
	li $t0, 0
	lw $t1, -2228($fp)
	sub $t0, $t0, $t1
	sw $t0, -2232($fp)
	li $t0, 0
	lw $t1, -2232($fp)
	sub $t0, $t0, $t1
	sw $t0, -2236($fp)
	li $t0, 21384
	sw $t0, -2240($fp)
	li $t0, 0
	lw $t1, -2240($fp)
	sub $t0, $t0, $t1
	sw $t0, -2244($fp)
	lw $t0, -2236($fp)
	lw $t1, -2244($fp)
	add $t0, $t0, $t1
	sw $t0, -2248($fp)
	j label244
label243:
	lw $t0, -708($fp)
	sw $t0, -2252($fp)
	li $t0, 0
	lw $t1, -2252($fp)
	sub $t0, $t0, $t1
	sw $t0, -2256($fp)
	lw $ra, -4($fp)
	lw $v0, -2256($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label244:
label237:
	j label231
label230:
	jal f6
	sw $v0, -2260($fp)
	addi $sp, $sp, 4
	lw $t1, -2260($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label253
label256:
	li $t0, 1431
	sw $t0, -2264($fp)
	lw $t1, -2264($fp)
	li $t2, 0
	bne $t1, $t2, label253
	j label254
label253:
	li $t0, 0
	sw $t0, -2268($fp)
	addi $t0, $fp, -64
	sw $t0, -2272($fp)
	li $t0, 0
	sw $t0, -2276($fp)
	li $t0, 62886
	sw $t0, -2280($fp)
	li $t0, 61771
	sw $t0, -2284($fp)
	lw $t1, -2280($fp)
	lw $t2, -2284($fp)
	bgt $t1, $t2, label262
	j label261
label262:
	li $t0, 13276
	sw $t0, -2288($fp)
	lw $t1, -2288($fp)
	li $t2, 0
	bne $t1, $t2, label260
	j label261
label260:
	li $t0, 1
	sw $t0, -2276($fp)
label261:
	li $t0, 4
	lw $t1, -2276($fp)
	mul $t0, $t0, $t1
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	lw $t1, -2272($fp)
	add $t0, $t0, $t1
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	lw $t1, 0($t0)
	sw $t1, -2300($fp)
	lw $t1, -2300($fp)
	li $t2, 0
	bne $t1, $t2, label259
	j label258
label259:
	li $t0, 0
	sw $t0, -2304($fp)
	li $t0, 32075
	sw $t0, -2308($fp)
	lw $t1, -2308($fp)
	li $t2, 0
	bne $t1, $t2, label264
	j label263
label263:
	li $t0, 1
	sw $t0, -2304($fp)
label264:
	lw $t0, -564($fp)
	sw $t0, -2312($fp)
	lw $t0, -2304($fp)
	lw $t1, -2312($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2316($fp)
	lw $t0, -168($fp)
	sw $t0, -2320($fp)
	lw $t0, -2316($fp)
	lw $t1, -2320($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2324($fp)
	lw $t1, -2324($fp)
	li $t2, 0
	bne $t1, $t2, label257
	j label258
label257:
	li $t0, 1
	sw $t0, -2268($fp)
label258:
	j label255
label254:
label265:
	addi $t0, $fp, -136
	sw $t0, -2328($fp)
	li $t0, 6
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
	li $t0, 0
	lw $t1, -2344($fp)
	sub $t0, $t0, $t1
	sw $t0, -2348($fp)
	lw $t1, -2348($fp)
	li $t2, 0
	bne $t1, $t2, label266
	j label267
label266:
label268:
	jal f6
	sw $v0, -2352($fp)
	addi $sp, $sp, 4
	li $t0, 59713
	sw $t0, -2356($fp)
	lw $t0, -2352($fp)
	lw $t1, -2356($fp)
	add $t0, $t0, $t1
	sw $t0, -2360($fp)
	jal f8
	sw $v0, -2364($fp)
	addi $sp, $sp, 4
	lw $t0, -2360($fp)
	lw $t1, -2364($fp)
	add $t0, $t0, $t1
	sw $t0, -2368($fp)
	addi $t0, $fp, -44
	sw $t0, -2372($fp)
	li $t0, 0
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
	lw $t0, -2368($fp)
	lw $t1, -2388($fp)
	sub $t0, $t0, $t1
	sw $t0, -2392($fp)
	lw $t1, -2392($fp)
	li $t2, 0
	bne $t1, $t2, label269
	j label271
label271:
	li $t0, 45
	sw $t0, -2396($fp)
	lw $t1, -2396($fp)
	li $t2, 0
	bne $t1, $t2, label269
	j label270
label269:
label272:
	lw $t0, -456($fp)
	sw $t0, -2400($fp)
	lw $t0, -492($fp)
	sw $t0, -2404($fp)
	lw $t0, -2400($fp)
	lw $t1, -2404($fp)
	mul $t0, $t0, $t1
	sw $t0, -2408($fp)
	li $t0, 0
	sw $t0, -2412($fp)
	jal f6
	sw $v0, -2416($fp)
	addi $sp, $sp, 4
	lw $t1, -2416($fp)
	li $t2, 0
	bne $t1, $t2, label276
	j label275
label275:
	li $t0, 1
	sw $t0, -2412($fp)
label276:
	lw $t0, -2408($fp)
	lw $t1, -2412($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2420($fp)
	li $t0, 0
	lw $t1, -2420($fp)
	sub $t0, $t0, $t1
	sw $t0, -2424($fp)
	jal f8
	sw $v0, -2428($fp)
	addi $sp, $sp, 4
	lw $t0, -2424($fp)
	lw $t1, -2428($fp)
	add $t0, $t0, $t1
	sw $t0, -2432($fp)
	lw $t1, -2432($fp)
	li $t2, 0
	bne $t1, $t2, label273
	j label274
label273:
	li $t0, 24067
	sw $t0, -2436($fp)
	li $t0, 49481
	sw $t0, -2440($fp)
	lw $t0, -2436($fp)
	lw $t1, -2440($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2444($fp)
	lw $t0, -1296($fp)
	sw $t0, -2448($fp)
	lw $t1, -2444($fp)
	lw $t2, -2448($fp)
	beq $t1, $t2, label277
	j label278
label277:
	lw $t0, -444($fp)
	sw $t0, -2452($fp)
	lw $t0, -2452($fp)
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	sw $t0, -2456($fp)
	lw $t1, -2456($fp)
	li $t2, 0
	bne $t1, $t2, label280
	j label281
label280:
	lw $t0, -348($fp)
	sw $t0, -2460($fp)
	j label282
label281:
	li $t0, 0
	sw $t0, -2464($fp)
	lw $t0, -372($fp)
	sw $t0, -2468($fp)
	lw $t0, -384($fp)
	sw $t0, -2472($fp)
	lw $t0, -2468($fp)
	lw $t1, -2472($fp)
	add $t0, $t0, $t1
	sw $t0, -2476($fp)
	lw $t0, -480($fp)
	sw $t0, -2480($fp)
	lw $t1, -2476($fp)
	lw $t2, -2480($fp)
	beq $t1, $t2, label283
	j label285
label285:
	li $t0, 708
	sw $t0, -2484($fp)
	li $t0, 44188
	sw $t0, -2488($fp)
	lw $t0, -2484($fp)
	lw $t1, -2488($fp)
	add $t0, $t0, $t1
	sw $t0, -2492($fp)
	lw $t1, -2492($fp)
	li $t2, 0
	bne $t1, $t2, label283
	j label284
label283:
	li $t0, 1
	sw $t0, -2464($fp)
label284:
	lw $t0, -2464($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -2496($fp)
label282:
	j label279
label278:
	li $t0, 0
	sw $t0, -2500($fp)
	jal f8
	sw $v0, -2504($fp)
	addi $sp, $sp, 4
	lw $t1, -2504($fp)
	li $t2, 0
	bne $t1, $t2, label289
	j label287
label289:
	li $t0, 12440
	sw $t0, -2508($fp)
	lw $t1, -2508($fp)
	li $t2, 0
	bne $t1, $t2, label288
	j label287
label288:
	li $t0, 19361
	sw $t0, -2512($fp)
	li $t0, 29622
	sw $t0, -2516($fp)
	lw $t0, -2512($fp)
	lw $t1, -2516($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2520($fp)
	lw $t1, -2520($fp)
	li $t2, 0
	bne $t1, $t2, label286
	j label287
label286:
	li $t0, 1
	sw $t0, -2500($fp)
label287:
	lw $t0, -2500($fp)
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -2524($fp)
label279:
	j label272
label274:
	j label268
label270:
	j label265
label267:
label255:
label231:
label225:
label210:
	j label200
label199:
	addi $t0, $fp, -80
	sw $t0, -2528($fp)
	li $t0, 0
	sw $t0, -2532($fp)
	li $t0, 7794
	sw $t0, -2536($fp)
	lw $t1, -2536($fp)
	li $t2, 0
	bne $t1, $t2, label292
	j label291
label292:
	li $t0, 55169
	sw $t0, -2540($fp)
	lw $t1, -2540($fp)
	li $t2, 0
	bne $t1, $t2, label290
	j label291
label290:
	li $t0, 1
	sw $t0, -2532($fp)
label291:
	li $t0, 4
	lw $t1, -2532($fp)
	mul $t0, $t0, $t1
	sw $t0, -2544($fp)
	lw $t0, -2544($fp)
	lw $t1, -2528($fp)
	add $t0, $t0, $t1
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	lw $t1, 0($t0)
	sw $t1, -2552($fp)
	li $t0, 36416
	sw $t0, -2556($fp)
	lw $t0, -2552($fp)
	lw $t1, -2556($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2560($fp)
	li $t0, 0
	sw $t0, -2564($fp)
	lw $t0, -504($fp)
	sw $t0, -2568($fp)
	li $t0, 58484
	sw $t0, -2572($fp)
	lw $t1, -2568($fp)
	lw $t2, -2572($fp)
	bge $t1, $t2, label295
	j label294
label295:
	li $t0, 54087
	sw $t0, -2576($fp)
	lw $t1, -2576($fp)
	li $t2, 0
	bne $t1, $t2, label293
	j label294
label293:
	li $t0, 1
	sw $t0, -2564($fp)
label294:
	li $t0, 0
	sw $t0, -2580($fp)
	li $t0, 17760
	sw $t0, -2584($fp)
	lw $t0, -528($fp)
	sw $t0, -2588($fp)
	lw $t0, -2584($fp)
	lw $t1, -2588($fp)
	sub $t0, $t0, $t1
	sw $t0, -2592($fp)
	lw $t0, -552($fp)
	sw $t0, -2596($fp)
	lw $t1, -2592($fp)
	lw $t2, -2596($fp)
	blt $t1, $t2, label296
	j label297
label296:
	li $t0, 1
	sw $t0, -2580($fp)
label297:
	li $t0, 3750
	sw $t0, -2600($fp)
	lw $t0, -156($fp)
	sw $t0, -2604($fp)
	lw $t0, -2600($fp)
	lw $t1, -2604($fp)
	mul $t0, $t0, $t1
	sw $t0, -2608($fp)
	li $t0, 58392
	sw $t0, -2612($fp)
	lw $t0, -2608($fp)
	lw $t1, -2612($fp)
	add $t0, $t0, $t1
	sw $t0, -2616($fp)
	addi $sp, $sp, -4
	lw $t0, -2564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2616($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2620($fp)
	addi $sp, $sp, 16
	lw $t0, -2560($fp)
	lw $t1, -2620($fp)
	mul $t0, $t0, $t1
	sw $t0, -2624($fp)
	lw $t0, -516($fp)
	sw $t0, -2628($fp)
	li $t0, 8496
	sw $t0, -2632($fp)
	lw $t0, -2632($fp)
	sw $t0, -2636($fp)
	lw $t0, -2636($fp)
	sw $t0, -2640($fp)
	li $t0, 11329
	sw $t0, -2644($fp)
	lw $t0, -2644($fp)
	sw $t0, -2648($fp)
	lw $t0, -2648($fp)
	sw $t0, -2652($fp)
	li $t0, 9935
	sw $t0, -2656($fp)
	jal f8
	sw $v0, -2660($fp)
	addi $sp, $sp, 4
label298:
	lw $t0, -684($fp)
	sw $t0, -2664($fp)
	lw $t1, -2664($fp)
	li $t2, 0
	bne $t1, $t2, label301
	j label300
label301:
	li $t0, 9928
	sw $t0, -2668($fp)
	lw $t0, -540($fp)
	sw $t0, -2672($fp)
	li $t0, 0
	lw $t1, -2672($fp)
	sub $t0, $t0, $t1
	sw $t0, -2676($fp)
	lw $t0, -2668($fp)
	lw $t1, -2676($fp)
	sub $t0, $t0, $t1
	sw $t0, -2680($fp)
	lw $t1, -2680($fp)
	li $t2, 0
	bne $t1, $t2, label299
	j label300
label299:
	addi $t0, $fp, -80
	sw $t0, -2684($fp)
	jal f8
	sw $v0, -2688($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -32
	sw $t0, -2692($fp)
	li $t0, 4
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
	lw $t0, -2688($fp)
	lw $t1, -2708($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2712($fp)
	li $t0, 0
	lw $t1, -2712($fp)
	sub $t0, $t0, $t1
	sw $t0, -2716($fp)
	li $t0, 4
	lw $t1, -2716($fp)
	mul $t0, $t0, $t1
	sw $t0, -2720($fp)
	lw $t0, -2720($fp)
	lw $t1, -2684($fp)
	add $t0, $t0, $t1
	sw $t0, -2724($fp)
	lw $t0, -2724($fp)
	lw $t1, 0($t0)
	sw $t1, -2728($fp)
	j label298
label300:
	lw $t0, -2636($fp)
	sw $t0, -2732($fp)
	lw $t0, -420($fp)
	sw $t0, -2736($fp)
	lw $t0, -2732($fp)
	lw $t1, -2736($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2740($fp)
	li $t0, 23204
	sw $t0, -2744($fp)
	lw $t0, -2648($fp)
	sw $t0, -2748($fp)
	lw $t0, -2744($fp)
	lw $t1, -2748($fp)
	mul $t0, $t0, $t1
	sw $t0, -2752($fp)
	lw $t0, -2740($fp)
	lw $t1, -2752($fp)
	add $t0, $t0, $t1
	sw $t0, -2756($fp)
	lw $t1, -2756($fp)
	li $t2, 0
	bne $t1, $t2, label306
	j label305
label306:
	li $t0, 40754
	sw $t0, -2760($fp)
	li $t0, 22693
	sw $t0, -2764($fp)
	lw $t0, -2760($fp)
	lw $t1, -2764($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2768($fp)
	lw $t1, -2768($fp)
	li $t2, 0
	bne $t1, $t2, label302
	j label305
label305:
	addi $t0, $fp, -136
	sw $t0, -2772($fp)
	li $t0, 4
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
	li $t0, 0
	sw $t0, -2792($fp)
	li $t0, 16870
	sw $t0, -2796($fp)
	lw $t1, -2796($fp)
	li $t2, 0
	bne $t1, $t2, label308
	j label307
label307:
	li $t0, 1
	sw $t0, -2792($fp)
label308:
	lw $t1, -2788($fp)
	lw $t2, -2792($fp)
	bne $t1, $t2, label302
	j label303
label302:
	lw $t0, -432($fp)
	sw $t0, -2800($fp)
	li $t0, 60483
	sw $t0, -2804($fp)
	lw $t0, -2800($fp)
	lw $t1, -2804($fp)
	mul $t0, $t0, $t1
	sw $t0, -2808($fp)
label303:
	lw $t0, -2636($fp)
	sw $t0, -2812($fp)
	lw $t0, -2812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2648($fp)
	sw $t0, -2816($fp)
	lw $t0, -2816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2820($fp)
	jal f6
	sw $v0, -2824($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -2824($fp)
	sub $t0, $t0, $t1
	sw $t0, -2828($fp)
	jal f8
	sw $v0, -2832($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -2832($fp)
	sub $t0, $t0, $t1
	sw $t0, -2836($fp)
	li $t0, 59839
	sw $t0, -2840($fp)
	lw $t0, -2836($fp)
	lw $t1, -2840($fp)
	add $t0, $t0, $t1
	sw $t0, -2844($fp)
	lw $t1, -2828($fp)
	lw $t2, -2844($fp)
	ble $t1, $t2, label309
	j label310
label309:
	li $t0, 1
	sw $t0, -2820($fp)
label310:
	lw $ra, -4($fp)
	lw $v0, -2820($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -2848($fp)
	lw $t0, -1392($fp)
	sw $t0, -2852($fp)
	jal f8
	sw $v0, -2856($fp)
	addi $sp, $sp, 4
	lw $t0, -2852($fp)
	lw $t1, -2856($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2860($fp)
	li $t0, 0
	lw $t1, -2860($fp)
	sub $t0, $t0, $t1
	sw $t0, -2864($fp)
	li $t0, 0
	sw $t0, -2868($fp)
	li $t0, 16915
	sw $t0, -2872($fp)
	li $t0, 19014
	sw $t0, -2876($fp)
	lw $t1, -2872($fp)
	lw $t2, -2876($fp)
	blt $t1, $t2, label314
	j label315
label314:
	li $t0, 1
	sw $t0, -2868($fp)
label315:
	lw $t1, -2864($fp)
	lw $t2, -2868($fp)
	beq $t1, $t2, label311
	j label313
label313:
	lw $t0, -432($fp)
	sw $t0, -2880($fp)
	lw $t1, -2880($fp)
	li $t2, 0
	bne $t1, $t2, label311
	j label312
label311:
	li $t0, 1
	sw $t0, -2848($fp)
label312:
	lw $ra, -4($fp)
	lw $v0, -2848($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -348($fp)
	sw $t0, -2884($fp)
	li $t0, 63995
	sw $t0, -2888($fp)
	li $t0, 0
	lw $t1, -2888($fp)
	sub $t0, $t0, $t1
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -2896($fp)
	lw $ra, -4($fp)
	lw $v0, -2896($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label200:
	lw $t0, -156($fp)
	sw $t0, -2900($fp)
	lw $t0, -2900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -168($fp)
	sw $t0, -2904($fp)
	lw $t0, -2904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -2908($fp)
	li $t0, 0
	sw $t0, -2912($fp)
	li $t0, 4
	lw $t1, -2912($fp)
	mul $t0, $t0, $t1
	sw $t0, -2916($fp)
	lw $t0, -2916($fp)
	lw $t1, -2908($fp)
	add $t0, $t0, $t1
	sw $t0, -2920($fp)
	lw $t0, -2920($fp)
	lw $t1, 0($t0)
	sw $t1, -2924($fp)
	lw $t0, -2924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -2928($fp)
	li $t0, 1
	sw $t0, -2932($fp)
	li $t0, 4
	lw $t1, -2932($fp)
	mul $t0, $t0, $t1
	sw $t0, -2936($fp)
	lw $t0, -2936($fp)
	lw $t1, -2928($fp)
	add $t0, $t0, $t1
	sw $t0, -2940($fp)
	lw $t0, -2940($fp)
	lw $t1, 0($t0)
	sw $t1, -2944($fp)
	lw $t0, -2944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -2948($fp)
	li $t0, 2
	sw $t0, -2952($fp)
	li $t0, 4
	lw $t1, -2952($fp)
	mul $t0, $t0, $t1
	sw $t0, -2956($fp)
	lw $t0, -2956($fp)
	lw $t1, -2948($fp)
	add $t0, $t0, $t1
	sw $t0, -2960($fp)
	lw $t0, -2960($fp)
	lw $t1, 0($t0)
	sw $t1, -2964($fp)
	lw $t0, -2964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -2968($fp)
	li $t0, 3
	sw $t0, -2972($fp)
	li $t0, 4
	lw $t1, -2972($fp)
	mul $t0, $t0, $t1
	sw $t0, -2976($fp)
	lw $t0, -2976($fp)
	lw $t1, -2968($fp)
	add $t0, $t0, $t1
	sw $t0, -2980($fp)
	lw $t0, -2980($fp)
	lw $t1, 0($t0)
	sw $t1, -2984($fp)
	lw $t0, -2984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -2988($fp)
	li $t0, 4
	sw $t0, -2992($fp)
	li $t0, 4
	lw $t1, -2992($fp)
	mul $t0, $t0, $t1
	sw $t0, -2996($fp)
	lw $t0, -2996($fp)
	lw $t1, -2988($fp)
	add $t0, $t0, $t1
	sw $t0, -3000($fp)
	lw $t0, -3000($fp)
	lw $t1, 0($t0)
	sw $t1, -3004($fp)
	lw $t0, -3004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -3008($fp)
	li $t0, 5
	sw $t0, -3012($fp)
	li $t0, 4
	lw $t1, -3012($fp)
	mul $t0, $t0, $t1
	sw $t0, -3016($fp)
	lw $t0, -3016($fp)
	lw $t1, -3008($fp)
	add $t0, $t0, $t1
	sw $t0, -3020($fp)
	lw $t0, -3020($fp)
	lw $t1, 0($t0)
	sw $t1, -3024($fp)
	lw $t0, -3024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -3028($fp)
	li $t0, 6
	sw $t0, -3032($fp)
	li $t0, 4
	lw $t1, -3032($fp)
	mul $t0, $t0, $t1
	sw $t0, -3036($fp)
	lw $t0, -3036($fp)
	lw $t1, -3028($fp)
	add $t0, $t0, $t1
	sw $t0, -3040($fp)
	lw $t0, -3040($fp)
	lw $t1, 0($t0)
	sw $t1, -3044($fp)
	lw $t0, -3044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -348($fp)
	sw $t0, -3048($fp)
	lw $t0, -3048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -360($fp)
	sw $t0, -3052($fp)
	lw $t0, -3052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -372($fp)
	sw $t0, -3056($fp)
	lw $t0, -3056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -384($fp)
	sw $t0, -3060($fp)
	lw $t0, -3060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -396($fp)
	sw $t0, -3064($fp)
	lw $t0, -3064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -408($fp)
	sw $t0, -3068($fp)
	lw $t0, -3068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -420($fp)
	sw $t0, -3072($fp)
	lw $t0, -3072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -432($fp)
	sw $t0, -3076($fp)
	lw $t0, -3076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -444($fp)
	sw $t0, -3080($fp)
	lw $t0, -3080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -456($fp)
	sw $t0, -3084($fp)
	lw $t0, -3084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -3088($fp)
	lw $t0, -3088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -3092($fp)
	lw $t0, -3092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -3096($fp)
	lw $t0, -3096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -3100($fp)
	lw $t0, -3100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -516($fp)
	sw $t0, -3104($fp)
	lw $t0, -3104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -3108($fp)
	lw $t0, -3108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -540($fp)
	sw $t0, -3112($fp)
	lw $t0, -3112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -552($fp)
	sw $t0, -3116($fp)
	lw $t0, -3116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -564($fp)
	sw $t0, -3120($fp)
	lw $t0, -3120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -576($fp)
	sw $t0, -3124($fp)
	lw $t0, -3124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -588($fp)
	sw $t0, -3128($fp)
	lw $t0, -3128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
	sw $t0, -3172($fp)
	li $t0, 2
	sw $t0, -3176($fp)
	li $t0, 4
	lw $t1, -3176($fp)
	mul $t0, $t0, $t1
	sw $t0, -3180($fp)
	lw $t0, -3180($fp)
	lw $t1, -3172($fp)
	add $t0, $t0, $t1
	sw $t0, -3184($fp)
	lw $t0, -3184($fp)
	lw $t1, 0($t0)
	sw $t1, -3188($fp)
	lw $t0, -3188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -672($fp)
	sw $t0, -3192($fp)
	lw $t0, -3192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -684($fp)
	sw $t0, -3196($fp)
	lw $t0, -3196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -696($fp)
	sw $t0, -3200($fp)
	lw $t0, -3200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -708($fp)
	sw $t0, -3204($fp)
	lw $t0, -3204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -3208($fp)
	li $t0, 0
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
	addi $t0, $fp, -64
	sw $t0, -3228($fp)
	li $t0, 1
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
	addi $t0, $fp, -64
	sw $t0, -3248($fp)
	li $t0, 2
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
	addi $t0, $fp, -64
	sw $t0, -3268($fp)
	li $t0, 3
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
	addi $t0, $fp, -64
	sw $t0, -3288($fp)
	li $t0, 4
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
	addi $t0, $fp, -80
	sw $t0, -3308($fp)
	li $t0, 0
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
	addi $t0, $fp, -80
	sw $t0, -3328($fp)
	li $t0, 1
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
	addi $t0, $fp, -80
	sw $t0, -3348($fp)
	li $t0, 2
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
	addi $t0, $fp, -80
	sw $t0, -3368($fp)
	li $t0, 3
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
	addi $t0, $fp, -108
	sw $t0, -3388($fp)
	li $t0, 0
	sw $t0, -3392($fp)
	li $t0, 4
	lw $t1, -3392($fp)
	mul $t0, $t0, $t1
	sw $t0, -3396($fp)
	lw $t0, -3396($fp)
	lw $t1, -3388($fp)
	add $t0, $t0, $t1
	sw $t0, -3400($fp)
	lw $t0, -3400($fp)
	lw $t1, 0($t0)
	sw $t1, -3404($fp)
	lw $t0, -3404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -3408($fp)
	li $t0, 1
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
	addi $t0, $fp, -108
	sw $t0, -3428($fp)
	li $t0, 2
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
	addi $t0, $fp, -108
	sw $t0, -3448($fp)
	li $t0, 3
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
	lw $t0, -3464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -3468($fp)
	li $t0, 4
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
	lw $t0, -3484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -3488($fp)
	li $t0, 5
	sw $t0, -3492($fp)
	li $t0, 4
	lw $t1, -3492($fp)
	mul $t0, $t0, $t1
	sw $t0, -3496($fp)
	lw $t0, -3496($fp)
	lw $t1, -3488($fp)
	add $t0, $t0, $t1
	sw $t0, -3500($fp)
	lw $t0, -3500($fp)
	lw $t1, 0($t0)
	sw $t1, -3504($fp)
	lw $t0, -3504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -3508($fp)
	li $t0, 6
	sw $t0, -3512($fp)
	li $t0, 4
	lw $t1, -3512($fp)
	mul $t0, $t0, $t1
	sw $t0, -3516($fp)
	lw $t0, -3516($fp)
	lw $t1, -3508($fp)
	add $t0, $t0, $t1
	sw $t0, -3520($fp)
	lw $t0, -3520($fp)
	lw $t1, 0($t0)
	sw $t1, -3524($fp)
	lw $t0, -3524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1104($fp)
	sw $t0, -3528($fp)
	lw $t0, -3528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
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
	addi $t0, $fp, -136
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
	addi $t0, $fp, -136
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
	addi $t0, $fp, -136
	sw $t0, -3592($fp)
	li $t0, 3
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
	addi $t0, $fp, -136
	sw $t0, -3612($fp)
	li $t0, 4
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
	lw $t0, -3628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
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
	lw $t0, -3648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -3652($fp)
	li $t0, 6
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
	lw $t0, -3668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1284($fp)
	sw $t0, -3672($fp)
	lw $t0, -3672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1296($fp)
	sw $t0, -3676($fp)
	lw $t0, -3676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1308($fp)
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -3684($fp)
	li $t0, 0
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
	addi $t0, $fp, -148
	sw $t0, -3704($fp)
	li $t0, 1
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
	addi $t0, $fp, -148
	sw $t0, -3724($fp)
	li $t0, 2
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
	lw $t0, -1392($fp)
	sw $t0, -3744($fp)
	lw $t0, -3744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3748($fp)
	lw $t0, -360($fp)
	sw $t0, -3752($fp)
	lw $t0, -3752($fp)
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -3756($fp)
	lw $t0, -360($fp)
	sw $t0, -3760($fp)
	lw $t0, -1284($fp)
	sw $t0, -3764($fp)
	lw $t0, -3760($fp)
	lw $t1, -3764($fp)
	sub $t0, $t0, $t1
	sw $t0, -3768($fp)
	li $t0, 0
	sw $t0, -3772($fp)
	li $t0, 0
	sw $t0, -3776($fp)
	li $t0, 860
	sw $t0, -3780($fp)
	li $t0, 19722
	sw $t0, -3784($fp)
	lw $t1, -3780($fp)
	lw $t2, -3784($fp)
	beq $t1, $t2, label321
	j label322
label321:
	li $t0, 1
	sw $t0, -3776($fp)
label322:
	li $t0, 42647
	sw $t0, -3788($fp)
	lw $t1, -3776($fp)
	lw $t2, -3788($fp)
	beq $t1, $t2, label319
	j label320
label319:
	li $t0, 1
	sw $t0, -3772($fp)
label320:
	addi $sp, $sp, -4
	lw $t0, -3756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3772($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3792($fp)
	addi $sp, $sp, 16
	lw $t1, -3792($fp)
	li $t2, 0
	bne $t1, $t2, label316
	j label318
label318:
	addi $t0, $fp, -108
	sw $t0, -3796($fp)
	lw $t0, -372($fp)
	sw $t0, -3800($fp)
	lw $t0, -3800($fp)
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -3804($fp)
	li $t0, 4
	lw $t1, -3804($fp)
	mul $t0, $t0, $t1
	sw $t0, -3808($fp)
	lw $t0, -3808($fp)
	lw $t1, -3796($fp)
	add $t0, $t0, $t1
	sw $t0, -3812($fp)
	lw $t0, -3812($fp)
	lw $t1, 0($t0)
	sw $t1, -3816($fp)
	lw $t1, -3816($fp)
	li $t2, 0
	bne $t1, $t2, label316
	j label317
label316:
	li $t0, 1
	sw $t0, -3748($fp)
label317:
	lw $ra, -4($fp)
	lw $v0, -3748($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -156($fp)
	sw $t0, -3820($fp)
	lw $t0, -3820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -168($fp)
	sw $t0, -3824($fp)
	lw $t0, -3824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
	sw $t0, -3888($fp)
	li $t0, 3
	sw $t0, -3892($fp)
	li $t0, 4
	lw $t1, -3892($fp)
	mul $t0, $t0, $t1
	sw $t0, -3896($fp)
	lw $t0, -3896($fp)
	lw $t1, -3888($fp)
	add $t0, $t0, $t1
	sw $t0, -3900($fp)
	lw $t0, -3900($fp)
	lw $t1, 0($t0)
	sw $t1, -3904($fp)
	lw $t0, -3904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -3908($fp)
	li $t0, 4
	sw $t0, -3912($fp)
	li $t0, 4
	lw $t1, -3912($fp)
	mul $t0, $t0, $t1
	sw $t0, -3916($fp)
	lw $t0, -3916($fp)
	lw $t1, -3908($fp)
	add $t0, $t0, $t1
	sw $t0, -3920($fp)
	lw $t0, -3920($fp)
	lw $t1, 0($t0)
	sw $t1, -3924($fp)
	lw $t0, -3924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -3928($fp)
	li $t0, 5
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
	lw $t0, -3944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -3948($fp)
	li $t0, 6
	sw $t0, -3952($fp)
	li $t0, 4
	lw $t1, -3952($fp)
	mul $t0, $t0, $t1
	sw $t0, -3956($fp)
	lw $t0, -3956($fp)
	lw $t1, -3948($fp)
	add $t0, $t0, $t1
	sw $t0, -3960($fp)
	lw $t0, -3960($fp)
	lw $t1, 0($t0)
	sw $t1, -3964($fp)
	lw $t0, -3964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -348($fp)
	sw $t0, -3968($fp)
	lw $t0, -3968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -360($fp)
	sw $t0, -3972($fp)
	lw $t0, -3972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -372($fp)
	sw $t0, -3976($fp)
	lw $t0, -3976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -384($fp)
	sw $t0, -3980($fp)
	lw $t0, -3980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -396($fp)
	sw $t0, -3984($fp)
	lw $t0, -3984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -408($fp)
	sw $t0, -3988($fp)
	lw $t0, -3988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -420($fp)
	sw $t0, -3992($fp)
	lw $t0, -3992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -432($fp)
	sw $t0, -3996($fp)
	lw $t0, -3996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -444($fp)
	sw $t0, -4000($fp)
	lw $t0, -4000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -456($fp)
	sw $t0, -4004($fp)
	lw $t0, -4004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -4008($fp)
	lw $t0, -4008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -4012($fp)
	lw $t0, -4012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -4016($fp)
	lw $t0, -4016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -4020($fp)
	lw $t0, -4020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -516($fp)
	sw $t0, -4024($fp)
	lw $t0, -4024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -4028($fp)
	lw $t0, -4028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -540($fp)
	sw $t0, -4032($fp)
	lw $t0, -4032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -552($fp)
	sw $t0, -4036($fp)
	lw $t0, -4036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -564($fp)
	sw $t0, -4040($fp)
	lw $t0, -4040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -576($fp)
	sw $t0, -4044($fp)
	lw $t0, -4044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -588($fp)
	sw $t0, -4048($fp)
	lw $t0, -4048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -4052($fp)
	li $t0, 0
	sw $t0, -4056($fp)
	li $t0, 4
	lw $t1, -4056($fp)
	mul $t0, $t0, $t1
	sw $t0, -4060($fp)
	lw $t0, -4060($fp)
	lw $t1, -4052($fp)
	add $t0, $t0, $t1
	sw $t0, -4064($fp)
	lw $t0, -4064($fp)
	lw $t1, 0($t0)
	sw $t1, -4068($fp)
	lw $t0, -4068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -4072($fp)
	li $t0, 1
	sw $t0, -4076($fp)
	li $t0, 4
	lw $t1, -4076($fp)
	mul $t0, $t0, $t1
	sw $t0, -4080($fp)
	lw $t0, -4080($fp)
	lw $t1, -4072($fp)
	add $t0, $t0, $t1
	sw $t0, -4084($fp)
	lw $t0, -4084($fp)
	lw $t1, 0($t0)
	sw $t1, -4088($fp)
	lw $t0, -4088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -4092($fp)
	li $t0, 2
	sw $t0, -4096($fp)
	li $t0, 4
	lw $t1, -4096($fp)
	mul $t0, $t0, $t1
	sw $t0, -4100($fp)
	lw $t0, -4100($fp)
	lw $t1, -4092($fp)
	add $t0, $t0, $t1
	sw $t0, -4104($fp)
	lw $t0, -4104($fp)
	lw $t1, 0($t0)
	sw $t1, -4108($fp)
	lw $t0, -4108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -672($fp)
	sw $t0, -4112($fp)
	lw $t0, -4112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -684($fp)
	sw $t0, -4116($fp)
	lw $t0, -4116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -696($fp)
	sw $t0, -4120($fp)
	lw $t0, -4120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -708($fp)
	sw $t0, -4124($fp)
	lw $t0, -4124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -4128($fp)
	li $t0, 0
	sw $t0, -4132($fp)
	li $t0, 4
	lw $t1, -4132($fp)
	mul $t0, $t0, $t1
	sw $t0, -4136($fp)
	lw $t0, -4136($fp)
	lw $t1, -4128($fp)
	add $t0, $t0, $t1
	sw $t0, -4140($fp)
	lw $t0, -4140($fp)
	lw $t1, 0($t0)
	sw $t1, -4144($fp)
	lw $t0, -4144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -4148($fp)
	li $t0, 1
	sw $t0, -4152($fp)
	li $t0, 4
	lw $t1, -4152($fp)
	mul $t0, $t0, $t1
	sw $t0, -4156($fp)
	lw $t0, -4156($fp)
	lw $t1, -4148($fp)
	add $t0, $t0, $t1
	sw $t0, -4160($fp)
	lw $t0, -4160($fp)
	lw $t1, 0($t0)
	sw $t1, -4164($fp)
	lw $t0, -4164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -4168($fp)
	li $t0, 2
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
	lw $t0, -4184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -4188($fp)
	li $t0, 3
	sw $t0, -4192($fp)
	li $t0, 4
	lw $t1, -4192($fp)
	mul $t0, $t0, $t1
	sw $t0, -4196($fp)
	lw $t0, -4196($fp)
	lw $t1, -4188($fp)
	add $t0, $t0, $t1
	sw $t0, -4200($fp)
	lw $t0, -4200($fp)
	lw $t1, 0($t0)
	sw $t1, -4204($fp)
	lw $t0, -4204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -4208($fp)
	li $t0, 4
	sw $t0, -4212($fp)
	li $t0, 4
	lw $t1, -4212($fp)
	mul $t0, $t0, $t1
	sw $t0, -4216($fp)
	lw $t0, -4216($fp)
	lw $t1, -4208($fp)
	add $t0, $t0, $t1
	sw $t0, -4220($fp)
	lw $t0, -4220($fp)
	lw $t1, 0($t0)
	sw $t1, -4224($fp)
	lw $t0, -4224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -4228($fp)
	li $t0, 0
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
	lw $t0, -4244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -4248($fp)
	li $t0, 1
	sw $t0, -4252($fp)
	li $t0, 4
	lw $t1, -4252($fp)
	mul $t0, $t0, $t1
	sw $t0, -4256($fp)
	lw $t0, -4256($fp)
	lw $t1, -4248($fp)
	add $t0, $t0, $t1
	sw $t0, -4260($fp)
	lw $t0, -4260($fp)
	lw $t1, 0($t0)
	sw $t1, -4264($fp)
	lw $t0, -4264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -4268($fp)
	li $t0, 2
	sw $t0, -4272($fp)
	li $t0, 4
	lw $t1, -4272($fp)
	mul $t0, $t0, $t1
	sw $t0, -4276($fp)
	lw $t0, -4276($fp)
	lw $t1, -4268($fp)
	add $t0, $t0, $t1
	sw $t0, -4280($fp)
	lw $t0, -4280($fp)
	lw $t1, 0($t0)
	sw $t1, -4284($fp)
	lw $t0, -4284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -4288($fp)
	li $t0, 3
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
	lw $t0, -4304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -4308($fp)
	li $t0, 0
	sw $t0, -4312($fp)
	li $t0, 4
	lw $t1, -4312($fp)
	mul $t0, $t0, $t1
	sw $t0, -4316($fp)
	lw $t0, -4316($fp)
	lw $t1, -4308($fp)
	add $t0, $t0, $t1
	sw $t0, -4320($fp)
	lw $t0, -4320($fp)
	lw $t1, 0($t0)
	sw $t1, -4324($fp)
	lw $t0, -4324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -4328($fp)
	li $t0, 1
	sw $t0, -4332($fp)
	li $t0, 4
	lw $t1, -4332($fp)
	mul $t0, $t0, $t1
	sw $t0, -4336($fp)
	lw $t0, -4336($fp)
	lw $t1, -4328($fp)
	add $t0, $t0, $t1
	sw $t0, -4340($fp)
	lw $t0, -4340($fp)
	lw $t1, 0($t0)
	sw $t1, -4344($fp)
	lw $t0, -4344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -4348($fp)
	li $t0, 2
	sw $t0, -4352($fp)
	li $t0, 4
	lw $t1, -4352($fp)
	mul $t0, $t0, $t1
	sw $t0, -4356($fp)
	lw $t0, -4356($fp)
	lw $t1, -4348($fp)
	add $t0, $t0, $t1
	sw $t0, -4360($fp)
	lw $t0, -4360($fp)
	lw $t1, 0($t0)
	sw $t1, -4364($fp)
	lw $t0, -4364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -4368($fp)
	li $t0, 3
	sw $t0, -4372($fp)
	li $t0, 4
	lw $t1, -4372($fp)
	mul $t0, $t0, $t1
	sw $t0, -4376($fp)
	lw $t0, -4376($fp)
	lw $t1, -4368($fp)
	add $t0, $t0, $t1
	sw $t0, -4380($fp)
	lw $t0, -4380($fp)
	lw $t1, 0($t0)
	sw $t1, -4384($fp)
	lw $t0, -4384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -4388($fp)
	li $t0, 4
	sw $t0, -4392($fp)
	li $t0, 4
	lw $t1, -4392($fp)
	mul $t0, $t0, $t1
	sw $t0, -4396($fp)
	lw $t0, -4396($fp)
	lw $t1, -4388($fp)
	add $t0, $t0, $t1
	sw $t0, -4400($fp)
	lw $t0, -4400($fp)
	lw $t1, 0($t0)
	sw $t1, -4404($fp)
	lw $t0, -4404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -4408($fp)
	li $t0, 5
	sw $t0, -4412($fp)
	li $t0, 4
	lw $t1, -4412($fp)
	mul $t0, $t0, $t1
	sw $t0, -4416($fp)
	lw $t0, -4416($fp)
	lw $t1, -4408($fp)
	add $t0, $t0, $t1
	sw $t0, -4420($fp)
	lw $t0, -4420($fp)
	lw $t1, 0($t0)
	sw $t1, -4424($fp)
	lw $t0, -4424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -4428($fp)
	li $t0, 6
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
	lw $t0, -4444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1104($fp)
	sw $t0, -4448($fp)
	lw $t0, -4448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -4452($fp)
	li $t0, 0
	sw $t0, -4456($fp)
	li $t0, 4
	lw $t1, -4456($fp)
	mul $t0, $t0, $t1
	sw $t0, -4460($fp)
	lw $t0, -4460($fp)
	lw $t1, -4452($fp)
	add $t0, $t0, $t1
	sw $t0, -4464($fp)
	lw $t0, -4464($fp)
	lw $t1, 0($t0)
	sw $t1, -4468($fp)
	lw $t0, -4468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -4472($fp)
	li $t0, 1
	sw $t0, -4476($fp)
	li $t0, 4
	lw $t1, -4476($fp)
	mul $t0, $t0, $t1
	sw $t0, -4480($fp)
	lw $t0, -4480($fp)
	lw $t1, -4472($fp)
	add $t0, $t0, $t1
	sw $t0, -4484($fp)
	lw $t0, -4484($fp)
	lw $t1, 0($t0)
	sw $t1, -4488($fp)
	lw $t0, -4488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -4492($fp)
	li $t0, 2
	sw $t0, -4496($fp)
	li $t0, 4
	lw $t1, -4496($fp)
	mul $t0, $t0, $t1
	sw $t0, -4500($fp)
	lw $t0, -4500($fp)
	lw $t1, -4492($fp)
	add $t0, $t0, $t1
	sw $t0, -4504($fp)
	lw $t0, -4504($fp)
	lw $t1, 0($t0)
	sw $t1, -4508($fp)
	lw $t0, -4508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -4512($fp)
	li $t0, 3
	sw $t0, -4516($fp)
	li $t0, 4
	lw $t1, -4516($fp)
	mul $t0, $t0, $t1
	sw $t0, -4520($fp)
	lw $t0, -4520($fp)
	lw $t1, -4512($fp)
	add $t0, $t0, $t1
	sw $t0, -4524($fp)
	lw $t0, -4524($fp)
	lw $t1, 0($t0)
	sw $t1, -4528($fp)
	lw $t0, -4528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -4532($fp)
	li $t0, 4
	sw $t0, -4536($fp)
	li $t0, 4
	lw $t1, -4536($fp)
	mul $t0, $t0, $t1
	sw $t0, -4540($fp)
	lw $t0, -4540($fp)
	lw $t1, -4532($fp)
	add $t0, $t0, $t1
	sw $t0, -4544($fp)
	lw $t0, -4544($fp)
	lw $t1, 0($t0)
	sw $t1, -4548($fp)
	lw $t0, -4548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -4552($fp)
	li $t0, 5
	sw $t0, -4556($fp)
	li $t0, 4
	lw $t1, -4556($fp)
	mul $t0, $t0, $t1
	sw $t0, -4560($fp)
	lw $t0, -4560($fp)
	lw $t1, -4552($fp)
	add $t0, $t0, $t1
	sw $t0, -4564($fp)
	lw $t0, -4564($fp)
	lw $t1, 0($t0)
	sw $t1, -4568($fp)
	lw $t0, -4568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -4572($fp)
	li $t0, 6
	sw $t0, -4576($fp)
	li $t0, 4
	lw $t1, -4576($fp)
	mul $t0, $t0, $t1
	sw $t0, -4580($fp)
	lw $t0, -4580($fp)
	lw $t1, -4572($fp)
	add $t0, $t0, $t1
	sw $t0, -4584($fp)
	lw $t0, -4584($fp)
	lw $t1, 0($t0)
	sw $t1, -4588($fp)
	lw $t0, -4588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1284($fp)
	sw $t0, -4592($fp)
	lw $t0, -4592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1296($fp)
	sw $t0, -4596($fp)
	lw $t0, -4596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1308($fp)
	sw $t0, -4600($fp)
	lw $t0, -4600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -4604($fp)
	li $t0, 0
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
	addi $t0, $fp, -148
	sw $t0, -4624($fp)
	li $t0, 1
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
	addi $t0, $fp, -148
	sw $t0, -4644($fp)
	li $t0, 2
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
	lw $t0, -1392($fp)
	sw $t0, -4664($fp)
	lw $t0, -4664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4668($fp)
	li $t0, 0
	sw $t0, -4672($fp)
	lw $t0, -708($fp)
	sw $t0, -4676($fp)
	lw $t1, -4676($fp)
	li $t2, 0
	bne $t1, $t2, label326
	j label327
label326:
	li $t0, 1
	sw $t0, -4672($fp)
label327:
	li $t0, 0
	lw $t1, -4672($fp)
	sub $t0, $t0, $t1
	sw $t0, -4680($fp)
	lw $t1, -4680($fp)
	li $t2, 0
	bne $t1, $t2, label325
	j label323
label325:
	lw $t0, -672($fp)
	sw $t0, -4684($fp)
	lw $t0, -540($fp)
	sw $t0, -4688($fp)
	lw $t0, -4684($fp)
	lw $t1, -4688($fp)
	mul $t0, $t0, $t1
	sw $t0, -4692($fp)
	lw $t0, -1284($fp)
	sw $t0, -4696($fp)
	lw $t0, -4692($fp)
	lw $t1, -4696($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4700($fp)
	lw $t1, -4700($fp)
	li $t2, 0
	bne $t1, $t2, label323
	j label324
label323:
	li $t0, 1
	sw $t0, -4668($fp)
label324:
	lw $ra, -4($fp)
	lw $v0, -4668($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 13300
	sw $t0, -4764($fp)
	lw $t0, -4764($fp)
	sw $t0, -4768($fp)
	lw $t0, -4768($fp)
	sw $t0, -4772($fp)
	li $t0, 39083
	sw $t0, -4776($fp)
	addi $t0, $fp, -4720
	sw $t0, -4780($fp)
	li $t0, 0
	sw $t0, -4784($fp)
	lw $t0, -4784($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4788($fp)
	lw $t0, -4780($fp)
	lw $t1, -4788($fp)
	add $t0, $t0, $t1
	sw $t0, -4792($fp)
	lw $t0, -4776($fp)
	lw $t1, -4792($fp)
	sw $t0, 0($t1)
	lw $t0, -4792($fp)
	lw $t1, 0($t0)
	sw $t1, -4796($fp)
	li $t0, 6733
	sw $t0, -4800($fp)
	addi $t0, $fp, -4720
	sw $t0, -4804($fp)
	li $t0, 1
	sw $t0, -4808($fp)
	lw $t0, -4808($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4812($fp)
	lw $t0, -4804($fp)
	lw $t1, -4812($fp)
	add $t0, $t0, $t1
	sw $t0, -4816($fp)
	lw $t0, -4800($fp)
	lw $t1, -4816($fp)
	sw $t0, 0($t1)
	lw $t0, -4816($fp)
	lw $t1, 0($t0)
	sw $t1, -4820($fp)
	li $t0, 21095
	sw $t0, -4824($fp)
	addi $t0, $fp, -4720
	sw $t0, -4828($fp)
	li $t0, 2
	sw $t0, -4832($fp)
	lw $t0, -4832($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4836($fp)
	lw $t0, -4828($fp)
	lw $t1, -4836($fp)
	add $t0, $t0, $t1
	sw $t0, -4840($fp)
	lw $t0, -4824($fp)
	lw $t1, -4840($fp)
	sw $t0, 0($t1)
	lw $t0, -4840($fp)
	lw $t1, 0($t0)
	sw $t1, -4844($fp)
	li $t0, 28716
	sw $t0, -4848($fp)
	addi $t0, $fp, -4720
	sw $t0, -4852($fp)
	li $t0, 3
	sw $t0, -4856($fp)
	lw $t0, -4856($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4860($fp)
	lw $t0, -4852($fp)
	lw $t1, -4860($fp)
	add $t0, $t0, $t1
	sw $t0, -4864($fp)
	lw $t0, -4848($fp)
	lw $t1, -4864($fp)
	sw $t0, 0($t1)
	lw $t0, -4864($fp)
	lw $t1, 0($t0)
	sw $t1, -4868($fp)
	li $t0, 43149
	sw $t0, -4872($fp)
	addi $t0, $fp, -4720
	sw $t0, -4876($fp)
	li $t0, 4
	sw $t0, -4880($fp)
	lw $t0, -4880($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4884($fp)
	lw $t0, -4876($fp)
	lw $t1, -4884($fp)
	add $t0, $t0, $t1
	sw $t0, -4888($fp)
	lw $t0, -4872($fp)
	lw $t1, -4888($fp)
	sw $t0, 0($t1)
	lw $t0, -4888($fp)
	lw $t1, 0($t0)
	sw $t1, -4892($fp)
	li $t0, 24845
	sw $t0, -4896($fp)
	addi $t0, $fp, -4748
	sw $t0, -4900($fp)
	li $t0, 0
	sw $t0, -4904($fp)
	lw $t0, -4904($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4908($fp)
	lw $t0, -4900($fp)
	lw $t1, -4908($fp)
	add $t0, $t0, $t1
	sw $t0, -4912($fp)
	lw $t0, -4896($fp)
	lw $t1, -4912($fp)
	sw $t0, 0($t1)
	lw $t0, -4912($fp)
	lw $t1, 0($t0)
	sw $t1, -4916($fp)
	li $t0, 21572
	sw $t0, -4920($fp)
	addi $t0, $fp, -4748
	sw $t0, -4924($fp)
	li $t0, 1
	sw $t0, -4928($fp)
	lw $t0, -4928($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4932($fp)
	lw $t0, -4924($fp)
	lw $t1, -4932($fp)
	add $t0, $t0, $t1
	sw $t0, -4936($fp)
	lw $t0, -4920($fp)
	lw $t1, -4936($fp)
	sw $t0, 0($t1)
	lw $t0, -4936($fp)
	lw $t1, 0($t0)
	sw $t1, -4940($fp)
	li $t0, 60909
	sw $t0, -4944($fp)
	addi $t0, $fp, -4748
	sw $t0, -4948($fp)
	li $t0, 2
	sw $t0, -4952($fp)
	lw $t0, -4952($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4956($fp)
	lw $t0, -4948($fp)
	lw $t1, -4956($fp)
	add $t0, $t0, $t1
	sw $t0, -4960($fp)
	lw $t0, -4944($fp)
	lw $t1, -4960($fp)
	sw $t0, 0($t1)
	lw $t0, -4960($fp)
	lw $t1, 0($t0)
	sw $t1, -4964($fp)
	li $t0, 17794
	sw $t0, -4968($fp)
	addi $t0, $fp, -4748
	sw $t0, -4972($fp)
	li $t0, 3
	sw $t0, -4976($fp)
	lw $t0, -4976($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4980($fp)
	lw $t0, -4972($fp)
	lw $t1, -4980($fp)
	add $t0, $t0, $t1
	sw $t0, -4984($fp)
	lw $t0, -4968($fp)
	lw $t1, -4984($fp)
	sw $t0, 0($t1)
	lw $t0, -4984($fp)
	lw $t1, 0($t0)
	sw $t1, -4988($fp)
	li $t0, 10124
	sw $t0, -4992($fp)
	addi $t0, $fp, -4748
	sw $t0, -4996($fp)
	li $t0, 4
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
	li $t0, 3870
	sw $t0, -5016($fp)
	addi $t0, $fp, -4748
	sw $t0, -5020($fp)
	li $t0, 5
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
	li $t0, 29123
	sw $t0, -5040($fp)
	addi $t0, $fp, -4748
	sw $t0, -5044($fp)
	li $t0, 6
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
	li $t0, 20059
	sw $t0, -5064($fp)
	addi $t0, $fp, -4760
	sw $t0, -5068($fp)
	li $t0, 0
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
	li $t0, 13798
	sw $t0, -5088($fp)
	addi $t0, $fp, -4760
	sw $t0, -5092($fp)
	li $t0, 1
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
	li $t0, 37802
	sw $t0, -5112($fp)
	addi $t0, $fp, -4760
	sw $t0, -5116($fp)
	li $t0, 2
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
	lw $t0, -4768($fp)
	sw $t0, -5136($fp)
	lw $t0, -5136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4720
	sw $t0, -5140($fp)
	li $t0, 0
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
	addi $t0, $fp, -4720
	sw $t0, -5160($fp)
	li $t0, 1
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
	addi $t0, $fp, -4720
	sw $t0, -5180($fp)
	li $t0, 2
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
	addi $t0, $fp, -4720
	sw $t0, -5200($fp)
	li $t0, 3
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
	addi $t0, $fp, -4720
	sw $t0, -5220($fp)
	li $t0, 4
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
	addi $t0, $fp, -4748
	sw $t0, -5240($fp)
	li $t0, 0
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
	addi $t0, $fp, -4748
	sw $t0, -5260($fp)
	li $t0, 1
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
	addi $t0, $fp, -4748
	sw $t0, -5280($fp)
	li $t0, 2
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
	addi $t0, $fp, -4748
	sw $t0, -5300($fp)
	li $t0, 3
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
	addi $t0, $fp, -4748
	sw $t0, -5320($fp)
	li $t0, 4
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
	addi $t0, $fp, -4748
	sw $t0, -5340($fp)
	li $t0, 5
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
	addi $t0, $fp, -4748
	sw $t0, -5360($fp)
	li $t0, 6
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
	addi $t0, $fp, -4760
	sw $t0, -5380($fp)
	li $t0, 0
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
	addi $t0, $fp, -4760
	sw $t0, -5400($fp)
	li $t0, 1
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
	addi $t0, $fp, -4760
	sw $t0, -5420($fp)
	li $t0, 2
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
	lw $t0, -5436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5440($fp)
	addi $t0, $fp, -4760
	sw $t0, -5444($fp)
	lw $t0, -444($fp)
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
	lw $t0, -4768($fp)
	sw $t0, -5464($fp)
	li $t0, 0
	lw $t1, -5464($fp)
	sub $t0, $t0, $t1
	sw $t0, -5468($fp)
	lw $t0, -5460($fp)
	lw $t1, -5468($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5472($fp)
	addi $t0, $fp, -4720
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
	li $t0, 0
	lw $t1, -5492($fp)
	sub $t0, $t0, $t1
	sw $t0, -5496($fp)
	lw $t0, -5472($fp)
	lw $t1, -5496($fp)
	sub $t0, $t0, $t1
	sw $t0, -5500($fp)
	addi $t0, $fp, -4748
	sw $t0, -5504($fp)
	lw $t0, -576($fp)
	sw $t0, -5508($fp)
	lw $t0, -5508($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -5512($fp)
	li $t0, 4
	lw $t1, -5512($fp)
	mul $t0, $t0, $t1
	sw $t0, -5516($fp)
	lw $t0, -5516($fp)
	lw $t1, -5504($fp)
	add $t0, $t0, $t1
	sw $t0, -5520($fp)
	lw $t0, -5520($fp)
	lw $t1, 0($t0)
	sw $t1, -5524($fp)
	lw $t1, -5500($fp)
	lw $t2, -5524($fp)
	beq $t1, $t2, label328
	j label329
label328:
	li $t0, 1
	sw $t0, -5440($fp)
label329:
	lw $ra, -4($fp)
	lw $v0, -5440($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label330:
	li $t0, 13020
	sw $t0, -5528($fp)
	lw $t0, -552($fp)
	sw $t0, -5532($fp)
	li $t0, 0
	lw $t1, -5532($fp)
	sub $t0, $t0, $t1
	sw $t0, -5536($fp)
	lw $t0, -5528($fp)
	lw $t1, -5536($fp)
	add $t0, $t0, $t1
	sw $t0, -5540($fp)
	lw $t1, -5540($fp)
	li $t2, 0
	bne $t1, $t2, label331
	j label332
label331:
	li $t0, 48923
	sw $t0, -5544($fp)
	lw $t0, -5544($fp)
	sw $t0, -5548($fp)
	lw $t0, -5548($fp)
	sw $t0, -5552($fp)
	li $t0, 53796
	sw $t0, -5556($fp)
	lw $t0, -5556($fp)
	sw $t0, -5560($fp)
	lw $t0, -5560($fp)
	sw $t0, -5564($fp)
	li $t0, 0
	sw $t0, -5568($fp)
	li $t0, 0
	sw $t0, -5572($fp)
	addi $t0, $fp, -4748
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
	li $t0, 50222
	sw $t0, -5596($fp)
	lw $t0, -516($fp)
	sw $t0, -5600($fp)
	addi $sp, $sp, -4
	lw $t0, -5592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5600($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5604($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -80
	sw $t0, -5608($fp)
	li $t0, 1
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
	lw $t0, -5604($fp)
	lw $t1, -5624($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5628($fp)
	lw $t0, -684($fp)
	sw $t0, -5632($fp)
	li $t0, 0
	lw $t1, -5632($fp)
	sub $t0, $t0, $t1
	sw $t0, -5636($fp)
	lw $t0, -516($fp)
	sw $t0, -5640($fp)
	lw $t0, -5636($fp)
	lw $t1, -5640($fp)
	add $t0, $t0, $t1
	sw $t0, -5644($fp)
	lw $t1, -5628($fp)
	lw $t2, -5644($fp)
	ble $t1, $t2, label335
	j label336
label335:
	li $t0, 1
	sw $t0, -5572($fp)
label336:
	lw $t0, -672($fp)
	sw $t0, -5648($fp)
	lw $t0, -1296($fp)
	sw $t0, -5652($fp)
	lw $t0, -5648($fp)
	lw $t1, -5652($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5656($fp)
	li $t0, 2221
	sw $t0, -5660($fp)
	lw $t0, -5656($fp)
	lw $t1, -5660($fp)
	mul $t0, $t0, $t1
	sw $t0, -5664($fp)
	li $t0, 0
	lw $t1, -5664($fp)
	sub $t0, $t0, $t1
	sw $t0, -5668($fp)
	lw $t1, -5572($fp)
	lw $t2, -5668($fp)
	bgt $t1, $t2, label333
	j label334
label333:
	li $t0, 1
	sw $t0, -5568($fp)
label334:
	jal f6
	sw $v0, -5672($fp)
	addi $sp, $sp, 4
	li $t0, 42985
	sw $t0, -5676($fp)
	lw $t0, -5672($fp)
	lw $t1, -5676($fp)
	mul $t0, $t0, $t1
	sw $t0, -5680($fp)
	lw $ra, -4($fp)
	lw $v0, -5680($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label337:
	lw $t0, -528($fp)
	sw $t0, -5684($fp)
	lw $t0, -5560($fp)
	sw $t0, -5688($fp)
	lw $t0, -5684($fp)
	lw $t1, -5688($fp)
	mul $t0, $t0, $t1
	sw $t0, -5692($fp)
	lw $t0, -5692($fp)
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	sw $t0, -5696($fp)
	lw $t1, -5696($fp)
	li $t2, 0
	bne $t1, $t2, label338
	j label339
label338:
	li $t0, 0
	sw $t0, -5700($fp)
	lw $t0, -156($fp)
	sw $t0, -5704($fp)
	lw $t1, -5704($fp)
	li $t2, 0
	bne $t1, $t2, label341
	j label340
label340:
	li $t0, 1
	sw $t0, -5700($fp)
label341:
	lw $t0, -504($fp)
	sw $t0, -5708($fp)
	lw $t0, -5700($fp)
	lw $t1, -5708($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5712($fp)
	li $t0, 18033
	sw $t0, -5716($fp)
	lw $t0, -5712($fp)
	lw $t1, -5716($fp)
	sub $t0, $t0, $t1
	sw $t0, -5720($fp)
	j label337
label339:
	li $t0, 0
	sw $t0, -5724($fp)
	li $t0, 0
	sw $t0, -5728($fp)
	jal f6
	sw $v0, -5732($fp)
	addi $sp, $sp, 4
	lw $t1, -5732($fp)
	li $t2, 0
	bne $t1, $t2, label345
	j label344
label344:
	li $t0, 1
	sw $t0, -5728($fp)
label345:
	li $t0, 0
	lw $t1, -5728($fp)
	sub $t0, $t0, $t1
	sw $t0, -5736($fp)
	li $t0, 21943
	sw $t0, -5740($fp)
	lw $t1, -5736($fp)
	lw $t2, -5740($fp)
	bgt $t1, $t2, label342
	j label343
label342:
	li $t0, 1
	sw $t0, -5724($fp)
label343:
	lw $ra, -4($fp)
	lw $v0, -5724($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	jal f6
	sw $v0, -5744($fp)
	addi $sp, $sp, 4
label346:
	li $t0, 20097
	sw $t0, -5748($fp)
	lw $t0, -5748($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -5752($fp)
	lw $t1, -5752($fp)
	li $t2, 0
	bne $t1, $t2, label347
	j label348
label347:
label349:
	addi $t0, $fp, -136
	sw $t0, -5756($fp)
	li $t0, 3
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
	li $t0, 0
	lw $t1, -5772($fp)
	sub $t0, $t0, $t1
	sw $t0, -5776($fp)
	lw $t1, -5776($fp)
	li $t2, 0
	bne $t1, $t2, label350
	j label352
label352:
	addi $t0, $fp, -148
	sw $t0, -5780($fp)
	li $t0, 0
	sw $t0, -5784($fp)
	lw $t0, -1392($fp)
	sw $t0, -5788($fp)
	lw $t1, -5788($fp)
	li $t2, 0
	bne $t1, $t2, label355
	j label354
label355:
	lw $t0, -492($fp)
	sw $t0, -5792($fp)
	lw $t1, -5792($fp)
	li $t2, 0
	bne $t1, $t2, label353
	j label354
label353:
	li $t0, 1
	sw $t0, -5784($fp)
label354:
	li $t0, 4
	lw $t1, -5784($fp)
	mul $t0, $t0, $t1
	sw $t0, -5796($fp)
	lw $t0, -5796($fp)
	lw $t1, -5780($fp)
	add $t0, $t0, $t1
	sw $t0, -5800($fp)
	lw $t0, -5800($fp)
	lw $t1, 0($t0)
	sw $t1, -5804($fp)
	lw $t1, -5804($fp)
	li $t2, 0
	bne $t1, $t2, label350
	j label351
label350:
label356:
	addi $t0, $fp, -108
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
	li $t0, 0
	lw $t1, -5824($fp)
	sub $t0, $t0, $t1
	sw $t0, -5828($fp)
	li $t0, 4444
	sw $t0, -5832($fp)
	lw $t1, -5828($fp)
	lw $t2, -5832($fp)
	beq $t1, $t2, label357
	j label358
label357:
	li $t0, 0
	sw $t0, -5836($fp)
	li $t0, 0
	sw $t0, -5840($fp)
	addi $t0, $fp, -136
	sw $t0, -5844($fp)
	li $t0, 2
	sw $t0, -5848($fp)
	li $t0, 4
	lw $t1, -5848($fp)
	mul $t0, $t0, $t1
	sw $t0, -5852($fp)
	lw $t0, -5852($fp)
	lw $t1, -5844($fp)
	add $t0, $t0, $t1
	sw $t0, -5856($fp)
	lw $t0, -5856($fp)
	lw $t1, 0($t0)
	sw $t1, -5860($fp)
	addi $t0, $fp, -44
	sw $t0, -5864($fp)
	lw $t0, -5548($fp)
	sw $t0, -5868($fp)
	li $t0, 4
	lw $t1, -5868($fp)
	mul $t0, $t0, $t1
	sw $t0, -5872($fp)
	lw $t0, -5872($fp)
	lw $t1, -5864($fp)
	add $t0, $t0, $t1
	sw $t0, -5876($fp)
	lw $t0, -5876($fp)
	lw $t1, 0($t0)
	sw $t1, -5880($fp)
	li $t0, 65353
	sw $t0, -5884($fp)
	lw $t0, -5880($fp)
	lw $t1, -5884($fp)
	mul $t0, $t0, $t1
	sw $t0, -5888($fp)
	lw $t1, -5860($fp)
	lw $t2, -5888($fp)
	bge $t1, $t2, label361
	j label362
label361:
	li $t0, 1
	sw $t0, -5840($fp)
label362:
	li $t0, 0
	sw $t0, -5892($fp)
	li $t0, 0
	sw $t0, -5896($fp)
	lw $t0, -672($fp)
	sw $t0, -5900($fp)
	lw $t1, -5900($fp)
	li $t2, 0
	bne $t1, $t2, label365
	j label366
label365:
	li $t0, 1
	sw $t0, -5896($fp)
label366:
	li $t0, 0
	sw $t0, -5904($fp)
	lw $t0, -684($fp)
	sw $t0, -5908($fp)
	lw $t1, -5908($fp)
	li $t2, 0
	bne $t1, $t2, label368
	j label367
label367:
	li $t0, 1
	sw $t0, -5904($fp)
label368:
	lw $t1, -5896($fp)
	lw $t2, -5904($fp)
	bgt $t1, $t2, label363
	j label364
label363:
	li $t0, 1
	sw $t0, -5892($fp)
label364:
	lw $t1, -5840($fp)
	lw $t2, -5892($fp)
	beq $t1, $t2, label359
	j label360
label359:
	li $t0, 1
	sw $t0, -5836($fp)
label360:
	j label356
label358:
	j label349
label351:
	j label346
label348:
	li $t0, 29532
	sw $t0, -5916($fp)
	lw $t0, -5916($fp)
	sw $t0, -5920($fp)
	lw $t0, -5920($fp)
	sw $t0, -5924($fp)
	li $t0, 55903
	sw $t0, -5928($fp)
	addi $t0, $fp, -5912
	sw $t0, -5932($fp)
	li $t0, 0
	sw $t0, -5936($fp)
	lw $t0, -5936($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5940($fp)
	lw $t0, -5932($fp)
	lw $t1, -5940($fp)
	add $t0, $t0, $t1
	sw $t0, -5944($fp)
	lw $t0, -5928($fp)
	lw $t1, -5944($fp)
	sw $t0, 0($t1)
	lw $t0, -5944($fp)
	lw $t1, 0($t0)
	sw $t1, -5948($fp)
	li $t0, 0
	sw $t0, -5952($fp)
	lw $t0, -564($fp)
	sw $t0, -5956($fp)
	li $t0, 3687
	sw $t0, -5960($fp)
	lw $t0, -5956($fp)
	lw $t1, -5960($fp)
	mul $t0, $t0, $t1
	sw $t0, -5964($fp)
	li $t0, 0
	sw $t0, -5968($fp)
	li $t0, 58655
	sw $t0, -5972($fp)
	lw $t1, -5972($fp)
	li $t2, 0
	bne $t1, $t2, label373
	j label372
label372:
	li $t0, 1
	sw $t0, -5968($fp)
label373:
	li $t0, 10426
	sw $t0, -5976($fp)
	lw $t0, -5968($fp)
	lw $t1, -5976($fp)
	mul $t0, $t0, $t1
	sw $t0, -5980($fp)
	lw $t1, -5964($fp)
	lw $t2, -5980($fp)
	blt $t1, $t2, label371
	j label370
label371:
	li $t0, 17485
	sw $t0, -5984($fp)
	li $t0, 0
	sw $t0, -5988($fp)
	li $t0, 30921
	sw $t0, -5992($fp)
	lw $t1, -5992($fp)
	li $t2, 0
	bne $t1, $t2, label375
	j label374
label374:
	li $t0, 1
	sw $t0, -5988($fp)
label375:
	lw $t0, -5984($fp)
	lw $t1, -5988($fp)
	mul $t0, $t0, $t1
	sw $t0, -5996($fp)
	lw $t1, -5996($fp)
	li $t2, 0
	bne $t1, $t2, label369
	j label370
label369:
	li $t0, 1
	sw $t0, -5952($fp)
label370:
	li $t0, 36656
	sw $t0, -6000($fp)
	lw $t0, -6000($fp)
	sw $t0, -6004($fp)
	lw $t0, -6004($fp)
	sw $t0, -6008($fp)
	li $t0, 54487
	sw $t0, -6012($fp)
	lw $t0, -6012($fp)
	sw $t0, -6016($fp)
	lw $t0, -6016($fp)
	sw $t0, -6020($fp)
	li $t0, 43941
	sw $t0, -6024($fp)
	li $t0, 0
	sw $t0, -6028($fp)
	lw $t0, -5548($fp)
	sw $t0, -6032($fp)
	addi $t0, $fp, -4760
	sw $t0, -6036($fp)
	lw $t0, -6016($fp)
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
	lw $t0, -6032($fp)
	lw $t1, -6052($fp)
	mul $t0, $t0, $t1
	sw $t0, -6056($fp)
	li $t0, 0
	sw $t0, -6060($fp)
	addi $t0, $fp, -5912
	sw $t0, -6064($fp)
	lw $t0, -552($fp)
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
	lw $t1, -6080($fp)
	li $t2, 0
	bne $t1, $t2, label380
	j label379
label379:
	li $t0, 1
	sw $t0, -6060($fp)
label380:
	lw $t0, -6056($fp)
	lw $t1, -6060($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6084($fp)
	lw $t1, -6084($fp)
	li $t2, 0
	bne $t1, $t2, label376
	j label378
label378:
	jal f8
	sw $v0, -6088($fp)
	addi $sp, $sp, 4
	lw $t1, -6088($fp)
	li $t2, 0
	bne $t1, $t2, label376
	j label377
label376:
	li $t0, 1
	sw $t0, -6028($fp)
label377:
	li $t0, 0
	sw $t0, -6092($fp)
	lw $t0, -156($fp)
	sw $t0, -6096($fp)
	li $t0, 20043
	sw $t0, -6100($fp)
	lw $t0, -6096($fp)
	lw $t1, -6100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6104($fp)
	lw $t0, -588($fp)
	sw $t0, -6108($fp)
	lw $t0, -6104($fp)
	lw $t1, -6108($fp)
	sub $t0, $t0, $t1
	sw $t0, -6112($fp)
	addi $t0, $fp, -136
	sw $t0, -6116($fp)
	li $t0, 5
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
	lw $t1, -6112($fp)
	lw $t2, -6132($fp)
	beq $t1, $t2, label381
	j label382
label381:
	li $t0, 1
	sw $t0, -6092($fp)
label382:
	lw $t0, -6092($fp)
	sw $t0, -6004($fp)
	lw $t0, -6004($fp)
	sw $t0, -6136($fp)
	li $t0, 20301
	sw $t0, -6140($fp)
	lw $t1, -6140($fp)
	li $t2, 0
	bne $t1, $t2, label383
	j label384
label383:
	jal f8
	sw $v0, -6144($fp)
	addi $sp, $sp, 4
	lw $t1, -6144($fp)
	li $t2, 0
	bne $t1, $t2, label386
	j label389
label389:
	addi $t0, $fp, -80
	sw $t0, -6148($fp)
	lw $t0, -5548($fp)
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
	lw $t0, -408($fp)
	sw $t0, -6168($fp)
	lw $t0, -6164($fp)
	lw $t1, -6168($fp)
	mul $t0, $t0, $t1
	sw $t0, -6172($fp)
	lw $t1, -6172($fp)
	li $t2, 0
	bne $t1, $t2, label386
	j label387
label386:
	li $t0, 25955
	sw $t0, -6176($fp)
	jal f6
	sw $v0, -6180($fp)
	addi $sp, $sp, 4
	lw $t0, -6176($fp)
	lw $t1, -6180($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6184($fp)
	li $t0, 0
	lw $t1, -6184($fp)
	sub $t0, $t0, $t1
	sw $t0, -6188($fp)
	addi $t0, $fp, -5912
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
	lw $t0, -564($fp)
	sw $t0, -6212($fp)
	lw $t0, -6208($fp)
	lw $t1, -6212($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6216($fp)
	lw $t0, -6188($fp)
	lw $t1, -6216($fp)
	sub $t0, $t0, $t1
	sw $t0, -6220($fp)
	jal f6
	sw $v0, -6224($fp)
	addi $sp, $sp, 4
	li $t0, 28177
	sw $t0, -6228($fp)
	lw $t0, -6224($fp)
	lw $t1, -6228($fp)
	add $t0, $t0, $t1
	sw $t0, -6232($fp)
	li $t0, 50603
	sw $t0, -6236($fp)
	lw $t0, -6232($fp)
	lw $t1, -6236($fp)
	sub $t0, $t0, $t1
	sw $t0, -6240($fp)
	lw $t1, -6220($fp)
	lw $t2, -6240($fp)
	ble $t1, $t2, label390
	j label391
label390:
	li $t0, 0
	sw $t0, -6244($fp)
	li $t0, 55507
	sw $t0, -6248($fp)
	lw $t1, -6248($fp)
	li $t2, 0
	bne $t1, $t2, label393
	j label394
label393:
	li $t0, 1
	sw $t0, -6244($fp)
label394:
	lw $t0, -168($fp)
	sw $t0, -6252($fp)
	lw $t0, -456($fp)
	sw $t0, -6256($fp)
	lw $t0, -6252($fp)
	lw $t1, -6256($fp)
	mul $t0, $t0, $t1
	sw $t0, -6260($fp)
	lw $t0, -6244($fp)
	lw $t1, -6260($fp)
	add $t0, $t0, $t1
	sw $t0, -6264($fp)
	li $t0, 50120
	sw $t0, -6268($fp)
	lw $t0, -6264($fp)
	lw $t1, -6268($fp)
	sub $t0, $t0, $t1
	sw $t0, -6272($fp)
	li $t0, 0
	sw $t0, -6276($fp)
	jal f6
	sw $v0, -6280($fp)
	addi $sp, $sp, 4
	lw $t1, -6280($fp)
	li $t2, 0
	bne $t1, $t2, label396
	j label395
label395:
	li $t0, 1
	sw $t0, -6276($fp)
label396:
	lw $t0, -6272($fp)
	lw $t1, -6276($fp)
	add $t0, $t0, $t1
	sw $t0, -6284($fp)
	j label392
label391:
	jal f6
	sw $v0, -6288($fp)
	addi $sp, $sp, 4
label392:
	j label388
label387:
	li $t0, 0
	sw $t0, -6292($fp)
	li $t0, 5164
	sw $t0, -6296($fp)
	jal f8
	sw $v0, -6300($fp)
	addi $sp, $sp, 4
	lw $t1, -6296($fp)
	lw $t2, -6300($fp)
	blt $t1, $t2, label397
	j label398
label397:
	li $t0, 1
	sw $t0, -6292($fp)
label398:
label388:
label384:
	lw $t0, -5920($fp)
	sw $t0, -6304($fp)
	lw $t0, -6304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5912
	sw $t0, -6308($fp)
	li $t0, 0
	sw $t0, -6312($fp)
	li $t0, 4
	lw $t1, -6312($fp)
	mul $t0, $t0, $t1
	sw $t0, -6316($fp)
	lw $t0, -6316($fp)
	lw $t1, -6308($fp)
	add $t0, $t0, $t1
	sw $t0, -6320($fp)
	lw $t0, -6320($fp)
	lw $t1, 0($t0)
	sw $t1, -6324($fp)
	lw $t0, -6324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 21304
	sw $t0, -6328($fp)
	lw $ra, -4($fp)
	lw $v0, -6328($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label399:
	li $t0, 0
	sw $t0, -6332($fp)
	li $t0, 0
	sw $t0, -6336($fp)
	addi $t0, $fp, -64
	sw $t0, -6340($fp)
	li $t0, 2
	sw $t0, -6344($fp)
	li $t0, 4
	lw $t1, -6344($fp)
	mul $t0, $t0, $t1
	sw $t0, -6348($fp)
	lw $t0, -6348($fp)
	lw $t1, -6340($fp)
	add $t0, $t0, $t1
	sw $t0, -6352($fp)
	lw $t0, -6352($fp)
	lw $t1, 0($t0)
	sw $t1, -6356($fp)
	li $t0, 36438
	sw $t0, -6360($fp)
	lw $t1, -6356($fp)
	lw $t2, -6360($fp)
	beq $t1, $t2, label405
	j label406
label405:
	li $t0, 1
	sw $t0, -6336($fp)
label406:
	lw $t0, -420($fp)
	sw $t0, -6364($fp)
	li $t0, 31994
	sw $t0, -6368($fp)
	lw $t0, -6364($fp)
	lw $t1, -6368($fp)
	add $t0, $t0, $t1
	sw $t0, -6372($fp)
	lw $t0, -5560($fp)
	sw $t0, -6376($fp)
	li $t0, 45611
	sw $t0, -6380($fp)
	lw $t0, -6376($fp)
	lw $t1, -6380($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6384($fp)
	lw $t0, -348($fp)
	sw $t0, -6388($fp)
	lw $t0, -6384($fp)
	lw $t1, -6388($fp)
	mul $t0, $t0, $t1
	sw $t0, -6392($fp)
	addi $sp, $sp, -4
	lw $t0, -6336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6392($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6396($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -6400($fp)
	lw $t0, -5560($fp)
	sw $t0, -6404($fp)
	lw $t0, -588($fp)
	sw $t0, -6408($fp)
	lw $t0, -6404($fp)
	lw $t1, -6408($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6412($fp)
	lw $t1, -6412($fp)
	li $t2, 0
	bne $t1, $t2, label407
	j label409
label409:
	lw $t0, -5920($fp)
	sw $t0, -6416($fp)
	lw $t1, -6416($fp)
	li $t2, 0
	bne $t1, $t2, label407
	j label408
label407:
	li $t0, 1
	sw $t0, -6400($fp)
label408:
	li $t0, 0
	sw $t0, -6420($fp)
	lw $t0, -456($fp)
	sw $t0, -6424($fp)
	lw $t1, -6424($fp)
	li $t2, 0
	bne $t1, $t2, label413
	j label412
label413:
	lw $t0, -480($fp)
	sw $t0, -6428($fp)
	lw $t1, -6428($fp)
	li $t2, 0
	bne $t1, $t2, label410
	j label412
label412:
	li $t0, 19935
	sw $t0, -6432($fp)
	lw $t1, -6432($fp)
	li $t2, 0
	bne $t1, $t2, label410
	j label411
label410:
	li $t0, 1
	sw $t0, -6420($fp)
label411:
	li $t0, 0
	sw $t0, -6436($fp)
	li $t0, 0
	sw $t0, -6440($fp)
	lw $t0, -5560($fp)
	sw $t0, -6444($fp)
	lw $t0, -456($fp)
	sw $t0, -6448($fp)
	lw $t1, -6444($fp)
	lw $t2, -6448($fp)
	blt $t1, $t2, label416
	j label417
label416:
	li $t0, 1
	sw $t0, -6440($fp)
label417:
	lw $t0, -504($fp)
	sw $t0, -6452($fp)
	lw $t1, -6440($fp)
	lw $t2, -6452($fp)
	blt $t1, $t2, label414
	j label415
label414:
	li $t0, 1
	sw $t0, -6436($fp)
label415:
	addi $sp, $sp, -4
	lw $t0, -6400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6436($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6456($fp)
	addi $sp, $sp, 16
	lw $t1, -6396($fp)
	lw $t2, -6456($fp)
	bgt $t1, $t2, label403
	j label404
label403:
	li $t0, 1
	sw $t0, -6332($fp)
label404:
	li $t0, 0
	sw $t0, -6460($fp)
	lw $t0, -1284($fp)
	sw $t0, -6464($fp)
	li $t0, 0
	lw $t1, -6464($fp)
	sub $t0, $t0, $t1
	sw $t0, -6468($fp)
	lw $t1, -6468($fp)
	li $t2, 0
	bne $t1, $t2, label419
	j label418
label418:
	li $t0, 1
	sw $t0, -6460($fp)
label419:
	lw $t1, -6332($fp)
	lw $t2, -6460($fp)
	blt $t1, $t2, label402
	j label401
label402:
	li $t0, 50060
	sw $t0, -6472($fp)
	li $t0, 36256
	sw $t0, -6476($fp)
	lw $t0, -6472($fp)
	lw $t1, -6476($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6480($fp)
	jal f8
	sw $v0, -6484($fp)
	addi $sp, $sp, 4
	lw $t0, -6480($fp)
	lw $t1, -6484($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6488($fp)
	lw $t1, -6488($fp)
	li $t2, 0
	bne $t1, $t2, label400
	j label401
label400:
	lw $t0, -348($fp)
	sw $t0, -6492($fp)
	j label399
label401:
	li $t0, 49467
	sw $t0, -6536($fp)
	lw $t0, -6536($fp)
	sw $t0, -6540($fp)
	lw $t0, -6540($fp)
	sw $t0, -6544($fp)
	li $t0, 40427
	sw $t0, -6548($fp)
	addi $t0, $fp, -6496
	sw $t0, -6552($fp)
	li $t0, 0
	sw $t0, -6556($fp)
	lw $t0, -6556($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6560($fp)
	lw $t0, -6552($fp)
	lw $t1, -6560($fp)
	add $t0, $t0, $t1
	sw $t0, -6564($fp)
	lw $t0, -6548($fp)
	lw $t1, -6564($fp)
	sw $t0, 0($t1)
	lw $t0, -6564($fp)
	lw $t1, 0($t0)
	sw $t1, -6568($fp)
	li $t0, 39943
	sw $t0, -6572($fp)
	addi $t0, $fp, -6532
	sw $t0, -6576($fp)
	li $t0, 0
	sw $t0, -6580($fp)
	lw $t0, -6580($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6584($fp)
	lw $t0, -6576($fp)
	lw $t1, -6584($fp)
	add $t0, $t0, $t1
	sw $t0, -6588($fp)
	lw $t0, -6572($fp)
	lw $t1, -6588($fp)
	sw $t0, 0($t1)
	lw $t0, -6588($fp)
	lw $t1, 0($t0)
	sw $t1, -6592($fp)
	li $t0, 42586
	sw $t0, -6596($fp)
	addi $t0, $fp, -6532
	sw $t0, -6600($fp)
	li $t0, 1
	sw $t0, -6604($fp)
	lw $t0, -6604($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6608($fp)
	lw $t0, -6600($fp)
	lw $t1, -6608($fp)
	add $t0, $t0, $t1
	sw $t0, -6612($fp)
	lw $t0, -6596($fp)
	lw $t1, -6612($fp)
	sw $t0, 0($t1)
	lw $t0, -6612($fp)
	lw $t1, 0($t0)
	sw $t1, -6616($fp)
	li $t0, 50854
	sw $t0, -6620($fp)
	addi $t0, $fp, -6532
	sw $t0, -6624($fp)
	li $t0, 2
	sw $t0, -6628($fp)
	lw $t0, -6628($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6632($fp)
	lw $t0, -6624($fp)
	lw $t1, -6632($fp)
	add $t0, $t0, $t1
	sw $t0, -6636($fp)
	lw $t0, -6620($fp)
	lw $t1, -6636($fp)
	sw $t0, 0($t1)
	lw $t0, -6636($fp)
	lw $t1, 0($t0)
	sw $t1, -6640($fp)
	li $t0, 57429
	sw $t0, -6644($fp)
	addi $t0, $fp, -6532
	sw $t0, -6648($fp)
	li $t0, 3
	sw $t0, -6652($fp)
	lw $t0, -6652($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6656($fp)
	lw $t0, -6648($fp)
	lw $t1, -6656($fp)
	add $t0, $t0, $t1
	sw $t0, -6660($fp)
	lw $t0, -6644($fp)
	lw $t1, -6660($fp)
	sw $t0, 0($t1)
	lw $t0, -6660($fp)
	lw $t1, 0($t0)
	sw $t1, -6664($fp)
	li $t0, 7971
	sw $t0, -6668($fp)
	addi $t0, $fp, -6532
	sw $t0, -6672($fp)
	li $t0, 4
	sw $t0, -6676($fp)
	lw $t0, -6676($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6680($fp)
	lw $t0, -6672($fp)
	lw $t1, -6680($fp)
	add $t0, $t0, $t1
	sw $t0, -6684($fp)
	lw $t0, -6668($fp)
	lw $t1, -6684($fp)
	sw $t0, 0($t1)
	lw $t0, -6684($fp)
	lw $t1, 0($t0)
	sw $t1, -6688($fp)
	li $t0, 21974
	sw $t0, -6692($fp)
	addi $t0, $fp, -6532
	sw $t0, -6696($fp)
	li $t0, 5
	sw $t0, -6700($fp)
	lw $t0, -6700($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6704($fp)
	lw $t0, -6696($fp)
	lw $t1, -6704($fp)
	add $t0, $t0, $t1
	sw $t0, -6708($fp)
	lw $t0, -6692($fp)
	lw $t1, -6708($fp)
	sw $t0, 0($t1)
	lw $t0, -6708($fp)
	lw $t1, 0($t0)
	sw $t1, -6712($fp)
	li $t0, 46380
	sw $t0, -6716($fp)
	addi $t0, $fp, -6532
	sw $t0, -6720($fp)
	li $t0, 6
	sw $t0, -6724($fp)
	lw $t0, -6724($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6728($fp)
	lw $t0, -6720($fp)
	lw $t1, -6728($fp)
	add $t0, $t0, $t1
	sw $t0, -6732($fp)
	lw $t0, -6716($fp)
	lw $t1, -6732($fp)
	sw $t0, 0($t1)
	lw $t0, -6732($fp)
	lw $t1, 0($t0)
	sw $t1, -6736($fp)
	li $t0, 51912
	sw $t0, -6740($fp)
	addi $t0, $fp, -6532
	sw $t0, -6744($fp)
	li $t0, 7
	sw $t0, -6748($fp)
	lw $t0, -6748($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6752($fp)
	lw $t0, -6744($fp)
	lw $t1, -6752($fp)
	add $t0, $t0, $t1
	sw $t0, -6756($fp)
	lw $t0, -6740($fp)
	lw $t1, -6756($fp)
	sw $t0, 0($t1)
	lw $t0, -6756($fp)
	lw $t1, 0($t0)
	sw $t1, -6760($fp)
	li $t0, 42018
	sw $t0, -6764($fp)
	addi $t0, $fp, -6532
	sw $t0, -6768($fp)
	li $t0, 8
	sw $t0, -6772($fp)
	lw $t0, -6772($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6776($fp)
	lw $t0, -6768($fp)
	lw $t1, -6776($fp)
	add $t0, $t0, $t1
	sw $t0, -6780($fp)
	lw $t0, -6764($fp)
	lw $t1, -6780($fp)
	sw $t0, 0($t1)
	lw $t0, -6780($fp)
	lw $t1, 0($t0)
	sw $t1, -6784($fp)
label420:
	li $t0, 0
	sw $t0, -6788($fp)
	li $t0, 23592
	sw $t0, -6792($fp)
	lw $t1, -6792($fp)
	li $t2, 0
	bne $t1, $t2, label424
	j label423
label423:
	li $t0, 1
	sw $t0, -6788($fp)
label424:
	li $t0, 0
	sw $t0, -6796($fp)
	addi $t0, $fp, -6496
	sw $t0, -6800($fp)
	lw $t0, -348($fp)
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
	lw $t1, -6816($fp)
	li $t2, 0
	bne $t1, $t2, label426
	j label425
label425:
	li $t0, 1
	sw $t0, -6796($fp)
label426:
	lw $t1, -6788($fp)
	lw $t2, -6796($fp)
	bne $t1, $t2, label421
	j label422
label421:
label427:
	lw $t0, -564($fp)
	sw $t0, -6820($fp)
	lw $t1, -6820($fp)
	li $t2, 0
	bne $t1, $t2, label428
	j label429
label428:
	addi $t0, $fp, -136
	sw $t0, -6824($fp)
	li $t0, 2
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
	addi $t0, $fp, -6532
	sw $t0, -6844($fp)
	li $t0, 6
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
	li $t0, 0
	sw $t0, -6864($fp)
	lw $t0, -372($fp)
	sw $t0, -6868($fp)
	lw $t1, -6868($fp)
	li $t2, 0
	bne $t1, $t2, label430
	j label432
label432:
	lw $t0, -480($fp)
	sw $t0, -6872($fp)
	lw $t1, -6872($fp)
	li $t2, 0
	bne $t1, $t2, label430
	j label431
label430:
	li $t0, 1
	sw $t0, -6864($fp)
label431:
	addi $sp, $sp, -4
	lw $t0, -6840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6864($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6876($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -6880($fp)
	addi $t0, $fp, -32
	sw $t0, -6884($fp)
	li $t0, 0
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
	lw $t1, -6900($fp)
	li $t2, 0
	bne $t1, $t2, label434
	j label433
label433:
	li $t0, 1
	sw $t0, -6880($fp)
label434:
	lw $t0, -6876($fp)
	lw $t1, -6880($fp)
	mul $t0, $t0, $t1
	sw $t0, -6904($fp)
	lw $ra, -4($fp)
	lw $v0, -6904($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label427
label429:
	j label420
label422:
	li $t0, 0
	sw $t0, -6908($fp)
	li $t0, 0
	sw $t0, -6912($fp)
	lw $t0, -5560($fp)
	sw $t0, -6916($fp)
	lw $t1, -6916($fp)
	li $t2, 0
	bne $t1, $t2, label439
	j label438
label438:
	li $t0, 1
	sw $t0, -6912($fp)
label439:
	lw $t0, -6540($fp)
	sw $t0, -6920($fp)
	lw $t0, -6912($fp)
	lw $t1, -6920($fp)
	mul $t0, $t0, $t1
	sw $t0, -6924($fp)
	lw $t0, -4768($fp)
	sw $t0, -6928($fp)
	li $t0, 7688
	sw $t0, -6932($fp)
	lw $t0, -6928($fp)
	lw $t1, -6932($fp)
	mul $t0, $t0, $t1
	sw $t0, -6936($fp)
	lw $t0, -6924($fp)
	lw $t1, -6936($fp)
	add $t0, $t0, $t1
	sw $t0, -6940($fp)
	lw $t1, -6940($fp)
	li $t2, 0
	bne $t1, $t2, label435
	j label437
label437:
	lw $t0, -360($fp)
	sw $t0, -6944($fp)
	lw $t0, -528($fp)
	sw $t0, -6948($fp)
	lw $t0, -6944($fp)
	lw $t1, -6948($fp)
	add $t0, $t0, $t1
	sw $t0, -6952($fp)
	lw $t0, -588($fp)
	sw $t0, -6956($fp)
	lw $t0, -6952($fp)
	lw $t1, -6956($fp)
	add $t0, $t0, $t1
	sw $t0, -6960($fp)
	li $t0, 0
	sw $t0, -6964($fp)
	li $t0, 24228
	sw $t0, -6968($fp)
	lw $t1, -6968($fp)
	li $t2, 0
	bne $t1, $t2, label441
	j label440
label440:
	li $t0, 1
	sw $t0, -6964($fp)
label441:
	lw $t1, -6960($fp)
	lw $t2, -6964($fp)
	blt $t1, $t2, label435
	j label436
label435:
	li $t0, 1
	sw $t0, -6908($fp)
label436:
	li $t0, 62309
	sw $t0, -6972($fp)
	lw $t0, -6972($fp)
	sw $t0, -6976($fp)
	lw $t0, -6976($fp)
	sw $t0, -6980($fp)
	lw $t0, -6976($fp)
	sw $t0, -6984($fp)
	jal f8
	sw $v0, -6988($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -6992($fp)
	addi $t0, $fp, -4760
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
	lw $t1, -7012($fp)
	li $t2, 0
	bne $t1, $t2, label443
	j label442
label442:
	li $t0, 1
	sw $t0, -6992($fp)
label443:
	addi $t0, $fp, -44
	sw $t0, -7016($fp)
	lw $t0, -576($fp)
	sw $t0, -7020($fp)
	li $t0, 42384
	sw $t0, -7024($fp)
	lw $t0, -7020($fp)
	lw $t1, -7024($fp)
	sub $t0, $t0, $t1
	sw $t0, -7028($fp)
	li $t0, 4
	lw $t1, -7028($fp)
	mul $t0, $t0, $t1
	sw $t0, -7032($fp)
	lw $t0, -7032($fp)
	lw $t1, -7016($fp)
	add $t0, $t0, $t1
	sw $t0, -7036($fp)
	lw $t0, -7036($fp)
	lw $t1, 0($t0)
	sw $t1, -7040($fp)
	lw $t0, -6992($fp)
	lw $t1, -7040($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7044($fp)
	li $t0, 0
	lw $t1, -7044($fp)
	sub $t0, $t0, $t1
	sw $t0, -7048($fp)
	li $t0, 0
	sw $t0, -7052($fp)
	jal f8
	sw $v0, -7056($fp)
	addi $sp, $sp, 4
	lw $t1, -7056($fp)
	li $t2, 0
	bne $t1, $t2, label445
	j label444
label444:
	li $t0, 1
	sw $t0, -7052($fp)
label445:
	j label330
label332:
	lw $t0, -156($fp)
	sw $t0, -7060($fp)
	lw $t0, -7060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -168($fp)
	sw $t0, -7064($fp)
	lw $t0, -7064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -7068($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -7088($fp)
	li $t0, 1
	sw $t0, -7092($fp)
	li $t0, 4
	lw $t1, -7092($fp)
	mul $t0, $t0, $t1
	sw $t0, -7096($fp)
	lw $t0, -7096($fp)
	lw $t1, -7088($fp)
	add $t0, $t0, $t1
	sw $t0, -7100($fp)
	lw $t0, -7100($fp)
	lw $t1, 0($t0)
	sw $t1, -7104($fp)
	lw $t0, -7104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -7108($fp)
	li $t0, 2
	sw $t0, -7112($fp)
	li $t0, 4
	lw $t1, -7112($fp)
	mul $t0, $t0, $t1
	sw $t0, -7116($fp)
	lw $t0, -7116($fp)
	lw $t1, -7108($fp)
	add $t0, $t0, $t1
	sw $t0, -7120($fp)
	lw $t0, -7120($fp)
	lw $t1, 0($t0)
	sw $t1, -7124($fp)
	lw $t0, -7124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -7128($fp)
	li $t0, 3
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
	addi $t0, $fp, -32
	sw $t0, -7148($fp)
	li $t0, 4
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
	addi $t0, $fp, -32
	sw $t0, -7168($fp)
	li $t0, 5
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
	addi $t0, $fp, -32
	sw $t0, -7188($fp)
	li $t0, 6
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
	lw $t0, -348($fp)
	sw $t0, -7208($fp)
	lw $t0, -7208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -360($fp)
	sw $t0, -7212($fp)
	lw $t0, -7212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -372($fp)
	sw $t0, -7216($fp)
	lw $t0, -7216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -384($fp)
	sw $t0, -7220($fp)
	lw $t0, -7220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -396($fp)
	sw $t0, -7224($fp)
	lw $t0, -7224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -408($fp)
	sw $t0, -7228($fp)
	lw $t0, -7228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -420($fp)
	sw $t0, -7232($fp)
	lw $t0, -7232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -432($fp)
	sw $t0, -7236($fp)
	lw $t0, -7236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -444($fp)
	sw $t0, -7240($fp)
	lw $t0, -7240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -456($fp)
	sw $t0, -7244($fp)
	lw $t0, -7244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -7248($fp)
	lw $t0, -7248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -7252($fp)
	lw $t0, -7252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -7256($fp)
	lw $t0, -7256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -7260($fp)
	lw $t0, -7260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -516($fp)
	sw $t0, -7264($fp)
	lw $t0, -7264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -7268($fp)
	lw $t0, -7268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -540($fp)
	sw $t0, -7272($fp)
	lw $t0, -7272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -552($fp)
	sw $t0, -7276($fp)
	lw $t0, -7276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -564($fp)
	sw $t0, -7280($fp)
	lw $t0, -7280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -576($fp)
	sw $t0, -7284($fp)
	lw $t0, -7284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -588($fp)
	sw $t0, -7288($fp)
	lw $t0, -7288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -7292($fp)
	li $t0, 0
	sw $t0, -7296($fp)
	li $t0, 4
	lw $t1, -7296($fp)
	mul $t0, $t0, $t1
	sw $t0, -7300($fp)
	lw $t0, -7300($fp)
	lw $t1, -7292($fp)
	add $t0, $t0, $t1
	sw $t0, -7304($fp)
	lw $t0, -7304($fp)
	lw $t1, 0($t0)
	sw $t1, -7308($fp)
	lw $t0, -7308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -7312($fp)
	li $t0, 1
	sw $t0, -7316($fp)
	li $t0, 4
	lw $t1, -7316($fp)
	mul $t0, $t0, $t1
	sw $t0, -7320($fp)
	lw $t0, -7320($fp)
	lw $t1, -7312($fp)
	add $t0, $t0, $t1
	sw $t0, -7324($fp)
	lw $t0, -7324($fp)
	lw $t1, 0($t0)
	sw $t1, -7328($fp)
	lw $t0, -7328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -7332($fp)
	li $t0, 2
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
	lw $t0, -7348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -672($fp)
	sw $t0, -7352($fp)
	lw $t0, -7352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -684($fp)
	sw $t0, -7356($fp)
	lw $t0, -7356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -696($fp)
	sw $t0, -7360($fp)
	lw $t0, -7360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -708($fp)
	sw $t0, -7364($fp)
	lw $t0, -7364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -7368($fp)
	li $t0, 0
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
	addi $t0, $fp, -64
	sw $t0, -7388($fp)
	li $t0, 1
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
	addi $t0, $fp, -64
	sw $t0, -7408($fp)
	li $t0, 2
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
	addi $t0, $fp, -64
	sw $t0, -7428($fp)
	li $t0, 3
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
	addi $t0, $fp, -64
	sw $t0, -7448($fp)
	li $t0, 4
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
	addi $t0, $fp, -80
	sw $t0, -7468($fp)
	li $t0, 0
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
	addi $t0, $fp, -80
	sw $t0, -7488($fp)
	li $t0, 1
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
	addi $t0, $fp, -80
	sw $t0, -7508($fp)
	li $t0, 2
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
	addi $t0, $fp, -80
	sw $t0, -7528($fp)
	li $t0, 3
	sw $t0, -7532($fp)
	li $t0, 4
	lw $t1, -7532($fp)
	mul $t0, $t0, $t1
	sw $t0, -7536($fp)
	lw $t0, -7536($fp)
	lw $t1, -7528($fp)
	add $t0, $t0, $t1
	sw $t0, -7540($fp)
	lw $t0, -7540($fp)
	lw $t1, 0($t0)
	sw $t1, -7544($fp)
	lw $t0, -7544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -7548($fp)
	li $t0, 0
	sw $t0, -7552($fp)
	li $t0, 4
	lw $t1, -7552($fp)
	mul $t0, $t0, $t1
	sw $t0, -7556($fp)
	lw $t0, -7556($fp)
	lw $t1, -7548($fp)
	add $t0, $t0, $t1
	sw $t0, -7560($fp)
	lw $t0, -7560($fp)
	lw $t1, 0($t0)
	sw $t1, -7564($fp)
	lw $t0, -7564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -7568($fp)
	li $t0, 1
	sw $t0, -7572($fp)
	li $t0, 4
	lw $t1, -7572($fp)
	mul $t0, $t0, $t1
	sw $t0, -7576($fp)
	lw $t0, -7576($fp)
	lw $t1, -7568($fp)
	add $t0, $t0, $t1
	sw $t0, -7580($fp)
	lw $t0, -7580($fp)
	lw $t1, 0($t0)
	sw $t1, -7584($fp)
	lw $t0, -7584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -7588($fp)
	li $t0, 2
	sw $t0, -7592($fp)
	li $t0, 4
	lw $t1, -7592($fp)
	mul $t0, $t0, $t1
	sw $t0, -7596($fp)
	lw $t0, -7596($fp)
	lw $t1, -7588($fp)
	add $t0, $t0, $t1
	sw $t0, -7600($fp)
	lw $t0, -7600($fp)
	lw $t1, 0($t0)
	sw $t1, -7604($fp)
	lw $t0, -7604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -7608($fp)
	li $t0, 3
	sw $t0, -7612($fp)
	li $t0, 4
	lw $t1, -7612($fp)
	mul $t0, $t0, $t1
	sw $t0, -7616($fp)
	lw $t0, -7616($fp)
	lw $t1, -7608($fp)
	add $t0, $t0, $t1
	sw $t0, -7620($fp)
	lw $t0, -7620($fp)
	lw $t1, 0($t0)
	sw $t1, -7624($fp)
	lw $t0, -7624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -7628($fp)
	li $t0, 4
	sw $t0, -7632($fp)
	li $t0, 4
	lw $t1, -7632($fp)
	mul $t0, $t0, $t1
	sw $t0, -7636($fp)
	lw $t0, -7636($fp)
	lw $t1, -7628($fp)
	add $t0, $t0, $t1
	sw $t0, -7640($fp)
	lw $t0, -7640($fp)
	lw $t1, 0($t0)
	sw $t1, -7644($fp)
	lw $t0, -7644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -7648($fp)
	li $t0, 5
	sw $t0, -7652($fp)
	li $t0, 4
	lw $t1, -7652($fp)
	mul $t0, $t0, $t1
	sw $t0, -7656($fp)
	lw $t0, -7656($fp)
	lw $t1, -7648($fp)
	add $t0, $t0, $t1
	sw $t0, -7660($fp)
	lw $t0, -7660($fp)
	lw $t1, 0($t0)
	sw $t1, -7664($fp)
	lw $t0, -7664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -7668($fp)
	li $t0, 6
	sw $t0, -7672($fp)
	li $t0, 4
	lw $t1, -7672($fp)
	mul $t0, $t0, $t1
	sw $t0, -7676($fp)
	lw $t0, -7676($fp)
	lw $t1, -7668($fp)
	add $t0, $t0, $t1
	sw $t0, -7680($fp)
	lw $t0, -7680($fp)
	lw $t1, 0($t0)
	sw $t1, -7684($fp)
	lw $t0, -7684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1104($fp)
	sw $t0, -7688($fp)
	lw $t0, -7688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
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
	addi $t0, $fp, -136
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
	addi $t0, $fp, -136
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
	addi $t0, $fp, -136
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
	addi $t0, $fp, -136
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
	addi $t0, $fp, -136
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
	addi $t0, $fp, -136
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
	lw $t0, -1284($fp)
	sw $t0, -7832($fp)
	lw $t0, -7832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1296($fp)
	sw $t0, -7836($fp)
	lw $t0, -7836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1308($fp)
	sw $t0, -7840($fp)
	lw $t0, -7840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -7844($fp)
	li $t0, 0
	sw $t0, -7848($fp)
	li $t0, 4
	lw $t1, -7848($fp)
	mul $t0, $t0, $t1
	sw $t0, -7852($fp)
	lw $t0, -7852($fp)
	lw $t1, -7844($fp)
	add $t0, $t0, $t1
	sw $t0, -7856($fp)
	lw $t0, -7856($fp)
	lw $t1, 0($t0)
	sw $t1, -7860($fp)
	lw $t0, -7860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -7864($fp)
	li $t0, 1
	sw $t0, -7868($fp)
	li $t0, 4
	lw $t1, -7868($fp)
	mul $t0, $t0, $t1
	sw $t0, -7872($fp)
	lw $t0, -7872($fp)
	lw $t1, -7864($fp)
	add $t0, $t0, $t1
	sw $t0, -7876($fp)
	lw $t0, -7876($fp)
	lw $t1, 0($t0)
	sw $t1, -7880($fp)
	lw $t0, -7880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -7884($fp)
	li $t0, 2
	sw $t0, -7888($fp)
	li $t0, 4
	lw $t1, -7888($fp)
	mul $t0, $t0, $t1
	sw $t0, -7892($fp)
	lw $t0, -7892($fp)
	lw $t1, -7884($fp)
	add $t0, $t0, $t1
	sw $t0, -7896($fp)
	lw $t0, -7896($fp)
	lw $t1, 0($t0)
	sw $t1, -7900($fp)
	lw $t0, -7900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1392($fp)
	sw $t0, -7904($fp)
	lw $t0, -7904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -7908($fp)
	li $t0, 1
	sw $t0, -7912($fp)
	li $t0, 4
	lw $t1, -7912($fp)
	mul $t0, $t0, $t1
	sw $t0, -7916($fp)
	lw $t0, -7916($fp)
	lw $t1, -7908($fp)
	add $t0, $t0, $t1
	sw $t0, -7920($fp)
	lw $t0, -7920($fp)
	lw $t1, 0($t0)
	sw $t1, -7924($fp)
	addi $t0, $fp, -108
	sw $t0, -7928($fp)
	lw $t0, -456($fp)
	sw $t0, -7932($fp)
	li $t0, 4
	lw $t1, -7932($fp)
	mul $t0, $t0, $t1
	sw $t0, -7936($fp)
	lw $t0, -7936($fp)
	lw $t1, -7928($fp)
	add $t0, $t0, $t1
	sw $t0, -7940($fp)
	lw $t0, -7940($fp)
	lw $t1, 0($t0)
	sw $t1, -7944($fp)
	lw $t0, -7924($fp)
	lw $t1, -7944($fp)
	sub $t0, $t0, $t1
	sw $t0, -7948($fp)
	lw $t0, -7948($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -7952($fp)
	lw $ra, -4($fp)
	lw $v0, -7952($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -176
	li $t0, 46666
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
	li $t0, 15749
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
	addi $t0, $fp, -12
	sw $t0, -68($fp)
	lw $t0, 4($fp)
	sw $t0, -72($fp)
	li $t0, 4
	lw $t1, -72($fp)
	mul $t0, $t0, $t1
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	lw $t1, -68($fp)
	add $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	lw $t1, 0($t0)
	sw $t1, -84($fp)
	li $t0, 0
	lw $t1, -84($fp)
	sub $t0, $t0, $t1
	sw $t0, -88($fp)
	li $t0, 0
	sw $t0, -92($fp)
	lw $t0, 8($fp)
	sw $t0, -96($fp)
	lw $t1, -96($fp)
	li $t2, 0
	bne $t1, $t2, label450
	j label449
label450:
	lw $t0, 8($fp)
	sw $t0, -100($fp)
	lw $t1, -100($fp)
	li $t2, 0
	bne $t1, $t2, label448
	j label449
label448:
	li $t0, 1
	sw $t0, -92($fp)
label449:
	jal f6
	sw $v0, -104($fp)
	addi $sp, $sp, 4
	addi $sp, $sp, -4
	lw $t0, -88($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -92($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -104($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -108($fp)
	addi $sp, $sp, 16
	lw $t0, 8($fp)
	sw $t0, -112($fp)
	li $t0, 8128
	sw $t0, -116($fp)
	lw $t0, -112($fp)
	lw $t1, -116($fp)
	mul $t0, $t0, $t1
	sw $t0, -120($fp)
	lw $t0, 8($fp)
	sw $t0, -124($fp)
	lw $t0, -120($fp)
	lw $t1, -124($fp)
	mul $t0, $t0, $t1
	sw $t0, -128($fp)
	li $t0, 31190
	sw $t0, -132($fp)
	lw $t0, -128($fp)
	lw $t1, -132($fp)
	add $t0, $t0, $t1
	sw $t0, -136($fp)
	lw $t1, -108($fp)
	lw $t2, -136($fp)
	ble $t1, $t2, label446
	j label447
label446:
	li $t0, 1
	sw $t0, -64($fp)
label447:
	addi $t0, $fp, -12
	sw $t0, -140($fp)
	li $t0, 0
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
	addi $t0, $fp, -12
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
	lw $t0, -176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, 4($fp)
	sw $t0, -180($fp)
	lw $ra, -4($fp)
	lw $v0, -180($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -6296
	li $t0, 52005
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	li $t0, 57595
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -116($fp)
	li $t0, 6082
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -128($fp)
	li $t0, 26412
	sw $t0, -132($fp)
	addi $t0, $fp, -32
	sw $t0, -136($fp)
	li $t0, 0
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
	li $t0, 34645
	sw $t0, -156($fp)
	addi $t0, $fp, -32
	sw $t0, -160($fp)
	li $t0, 1
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
	li $t0, 56936
	sw $t0, -180($fp)
	addi $t0, $fp, -32
	sw $t0, -184($fp)
	li $t0, 2
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
	li $t0, 18305
	sw $t0, -204($fp)
	addi $t0, $fp, -32
	sw $t0, -208($fp)
	li $t0, 3
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
	li $t0, 42616
	sw $t0, -228($fp)
	addi $t0, $fp, -32
	sw $t0, -232($fp)
	li $t0, 4
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
	li $t0, 13374
	sw $t0, -252($fp)
	addi $t0, $fp, -32
	sw $t0, -256($fp)
	li $t0, 5
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
	li $t0, 64686
	sw $t0, -276($fp)
	addi $t0, $fp, -32
	sw $t0, -280($fp)
	li $t0, 6
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
	li $t0, 28992
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	li $t0, 55392
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	li $t0, 22742
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	li $t0, 43996
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -344($fp)
	li $t0, 52175
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	li $t0, 6754
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -368($fp)
	li $t0, 1081
	sw $t0, -372($fp)
	addi $t0, $fp, -56
	sw $t0, -376($fp)
	li $t0, 0
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
	li $t0, 20896
	sw $t0, -396($fp)
	addi $t0, $fp, -56
	sw $t0, -400($fp)
	li $t0, 1
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
	li $t0, 18943
	sw $t0, -420($fp)
	addi $t0, $fp, -56
	sw $t0, -424($fp)
	li $t0, 2
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
	li $t0, 8769
	sw $t0, -444($fp)
	addi $t0, $fp, -56
	sw $t0, -448($fp)
	li $t0, 3
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
	li $t0, 45124
	sw $t0, -468($fp)
	addi $t0, $fp, -56
	sw $t0, -472($fp)
	li $t0, 4
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
	li $t0, 15717
	sw $t0, -492($fp)
	addi $t0, $fp, -56
	sw $t0, -496($fp)
	li $t0, 5
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
	li $t0, 21621
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	li $t0, 25121
	sw $t0, -528($fp)
	addi $t0, $fp, -80
	sw $t0, -532($fp)
	li $t0, 0
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
	li $t0, 58101
	sw $t0, -552($fp)
	addi $t0, $fp, -80
	sw $t0, -556($fp)
	li $t0, 1
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
	li $t0, 931
	sw $t0, -576($fp)
	addi $t0, $fp, -80
	sw $t0, -580($fp)
	li $t0, 2
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
	li $t0, 13314
	sw $t0, -600($fp)
	addi $t0, $fp, -80
	sw $t0, -604($fp)
	li $t0, 3
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
	li $t0, 39231
	sw $t0, -624($fp)
	addi $t0, $fp, -80
	sw $t0, -628($fp)
	li $t0, 4
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
	li $t0, 16680
	sw $t0, -648($fp)
	addi $t0, $fp, -80
	sw $t0, -652($fp)
	li $t0, 5
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
	li $t0, 21443
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	li $t0, 4886
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -692($fp)
	li $t0, 3149
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	li $t0, 13502
	sw $t0, -708($fp)
	addi $t0, $fp, -92
	sw $t0, -712($fp)
	li $t0, 0
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -720($fp)
	lw $t0, -712($fp)
	lw $t1, -720($fp)
	add $t0, $t0, $t1
	sw $t0, -724($fp)
	lw $t0, -708($fp)
	lw $t1, -724($fp)
	sw $t0, 0($t1)
	lw $t0, -724($fp)
	lw $t1, 0($t0)
	sw $t1, -728($fp)
	li $t0, 10968
	sw $t0, -732($fp)
	addi $t0, $fp, -92
	sw $t0, -736($fp)
	li $t0, 1
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -744($fp)
	lw $t0, -736($fp)
	lw $t1, -744($fp)
	add $t0, $t0, $t1
	sw $t0, -748($fp)
	lw $t0, -732($fp)
	lw $t1, -748($fp)
	sw $t0, 0($t1)
	lw $t0, -748($fp)
	lw $t1, 0($t0)
	sw $t1, -752($fp)
	li $t0, 29562
	sw $t0, -756($fp)
	addi $t0, $fp, -92
	sw $t0, -760($fp)
	li $t0, 2
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -768($fp)
	lw $t0, -760($fp)
	lw $t1, -768($fp)
	add $t0, $t0, $t1
	sw $t0, -772($fp)
	lw $t0, -756($fp)
	lw $t1, -772($fp)
	sw $t0, 0($t1)
	lw $t0, -772($fp)
	lw $t1, 0($t0)
	sw $t1, -776($fp)
	li $t0, 48148
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	sw $t0, -788($fp)
	li $t0, 2368
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	sw $t0, -800($fp)
	li $t0, 47867
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, -812($fp)
	lw $t0, -100($fp)
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -112($fp)
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -124($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -828($fp)
	li $t0, 0
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
	li $t0, 1
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
	li $t0, 2
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
	li $t0, 3
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
	addi $t0, $fp, -32
	sw $t0, -908($fp)
	li $t0, 4
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
	addi $t0, $fp, -32
	sw $t0, -928($fp)
	li $t0, 5
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
	addi $t0, $fp, -32
	sw $t0, -948($fp)
	li $t0, 6
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
	lw $t0, -304($fp)
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -316($fp)
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -328($fp)
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -340($fp)
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -352($fp)
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -364($fp)
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -992($fp)
	li $t0, 0
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
	addi $t0, $fp, -56
	sw $t0, -1012($fp)
	li $t0, 1
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
	addi $t0, $fp, -56
	sw $t0, -1032($fp)
	li $t0, 2
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
	addi $t0, $fp, -56
	sw $t0, -1052($fp)
	li $t0, 3
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
	addi $t0, $fp, -56
	sw $t0, -1072($fp)
	li $t0, 4
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
	addi $t0, $fp, -56
	sw $t0, -1092($fp)
	li $t0, 5
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
	lw $t0, -520($fp)
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1116($fp)
	li $t0, 0
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
	addi $t0, $fp, -80
	sw $t0, -1136($fp)
	li $t0, 1
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
	addi $t0, $fp, -80
	sw $t0, -1156($fp)
	li $t0, 2
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
	addi $t0, $fp, -80
	sw $t0, -1176($fp)
	li $t0, 3
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
	addi $t0, $fp, -80
	sw $t0, -1196($fp)
	li $t0, 4
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
	addi $t0, $fp, -80
	sw $t0, -1216($fp)
	li $t0, 5
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
	lw $t0, -676($fp)
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -688($fp)
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -700($fp)
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -1248($fp)
	li $t0, 0
	sw $t0, -1252($fp)
	li $t0, 4
	lw $t1, -1252($fp)
	mul $t0, $t0, $t1
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	lw $t1, -1248($fp)
	add $t0, $t0, $t1
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	lw $t1, 0($t0)
	sw $t1, -1264($fp)
	lw $t0, -1264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -1268($fp)
	li $t0, 1
	sw $t0, -1272($fp)
	li $t0, 4
	lw $t1, -1272($fp)
	mul $t0, $t0, $t1
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	lw $t1, -1268($fp)
	add $t0, $t0, $t1
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	lw $t1, 0($t0)
	sw $t1, -1284($fp)
	lw $t0, -1284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -1288($fp)
	li $t0, 2
	sw $t0, -1292($fp)
	li $t0, 4
	lw $t1, -1292($fp)
	mul $t0, $t0, $t1
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	lw $t1, -1288($fp)
	add $t0, $t0, $t1
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	lw $t1, 0($t0)
	sw $t1, -1304($fp)
	lw $t0, -1304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -784($fp)
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -796($fp)
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -808($fp)
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1320($fp)
	addi $t0, $fp, -80
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
	lw $t1, -1340($fp)
	li $t2, 0
	bne $t1, $t2, label451
	j label453
label453:
	li $t0, 47017
	sw $t0, -1344($fp)
	lw $t1, -1344($fp)
	li $t2, 0
	bne $t1, $t2, label451
	j label452
label451:
	li $t0, 1
	sw $t0, -1320($fp)
label452:
	lw $ra, -4($fp)
	lw $v0, -1320($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label454:
	addi $t0, $fp, -80
	sw $t0, -1348($fp)
	li $t0, 0
	sw $t0, -1352($fp)
	lw $t0, -316($fp)
	sw $t0, -1356($fp)
	lw $t0, 16($fp)
	sw $t0, -1360($fp)
	lw $t1, -1356($fp)
	lw $t2, -1360($fp)
	beq $t1, $t2, label458
	j label460
label460:
	li $t0, 54221
	sw $t0, -1364($fp)
	lw $t1, -1364($fp)
	li $t2, 0
	bne $t1, $t2, label458
	j label459
label458:
	li $t0, 1
	sw $t0, -1352($fp)
label459:
	li $t0, 4
	lw $t1, -1352($fp)
	mul $t0, $t0, $t1
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	lw $t1, -1348($fp)
	add $t0, $t0, $t1
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	lw $t1, 0($t0)
	sw $t1, -1376($fp)
	lw $t1, -1376($fp)
	li $t2, 0
	bne $t1, $t2, label457
	j label456
label457:
	li $t0, 5599
	sw $t0, -1380($fp)
	li $t0, 0
	lw $t1, -1380($fp)
	sub $t0, $t0, $t1
	sw $t0, -1384($fp)
	lw $t0, -364($fp)
	sw $t0, -1388($fp)
	lw $t0, -100($fp)
	sw $t0, -1392($fp)
	lw $t0, -1388($fp)
	lw $t1, -1392($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1396($fp)
	lw $t1, -1384($fp)
	lw $t2, -1396($fp)
	blt $t1, $t2, label455
	j label456
label455:
	li $t0, 0
	sw $t0, -1400($fp)
	li $t0, 0
	sw $t0, -1404($fp)
	lw $t0, -808($fp)
	sw $t0, -1408($fp)
	li $t0, 0
	lw $t1, -1408($fp)
	sub $t0, $t0, $t1
	sw $t0, -1412($fp)
	li $t0, 4224
	sw $t0, -1416($fp)
	lw $t0, -1412($fp)
	lw $t1, -1416($fp)
	sub $t0, $t0, $t1
	sw $t0, -1420($fp)
	jal f8
	sw $v0, -1424($fp)
	addi $sp, $sp, 4
	lw $t0, -1420($fp)
	lw $t1, -1424($fp)
	sub $t0, $t0, $t1
	sw $t0, -1428($fp)
	li $t0, 32681
	sw $t0, -1432($fp)
	lw $t1, -1428($fp)
	lw $t2, -1432($fp)
	bne $t1, $t2, label463
	j label464
label463:
	li $t0, 1
	sw $t0, -1404($fp)
label464:
	lw $t0, -676($fp)
	sw $t0, -1436($fp)
	lw $t1, -1404($fp)
	lw $t2, -1436($fp)
	beq $t1, $t2, label461
	j label462
label461:
	li $t0, 1
	sw $t0, -1400($fp)
label462:
	j label454
label456:
	lw $t0, -100($fp)
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -112($fp)
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -124($fp)
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	lw $t0, -304($fp)
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -316($fp)
	sw $t0, -1596($fp)
	lw $t0, -1596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -328($fp)
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -340($fp)
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -352($fp)
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -364($fp)
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1616($fp)
	li $t0, 0
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
	addi $t0, $fp, -56
	sw $t0, -1636($fp)
	li $t0, 1
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
	lw $t0, -1652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1656($fp)
	li $t0, 2
	sw $t0, -1660($fp)
	li $t0, 4
	lw $t1, -1660($fp)
	mul $t0, $t0, $t1
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	lw $t1, -1656($fp)
	add $t0, $t0, $t1
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	lw $t1, 0($t0)
	sw $t1, -1672($fp)
	lw $t0, -1672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1676($fp)
	li $t0, 3
	sw $t0, -1680($fp)
	li $t0, 4
	lw $t1, -1680($fp)
	mul $t0, $t0, $t1
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	lw $t1, -1676($fp)
	add $t0, $t0, $t1
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	lw $t1, 0($t0)
	sw $t1, -1692($fp)
	lw $t0, -1692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1696($fp)
	li $t0, 4
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
	lw $t0, -1712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1716($fp)
	li $t0, 5
	sw $t0, -1720($fp)
	li $t0, 4
	lw $t1, -1720($fp)
	mul $t0, $t0, $t1
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	lw $t1, -1716($fp)
	add $t0, $t0, $t1
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	lw $t1, 0($t0)
	sw $t1, -1732($fp)
	lw $t0, -1732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -520($fp)
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1740($fp)
	li $t0, 0
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
	addi $t0, $fp, -80
	sw $t0, -1760($fp)
	li $t0, 1
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
	lw $t0, -1776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1780($fp)
	li $t0, 2
	sw $t0, -1784($fp)
	li $t0, 4
	lw $t1, -1784($fp)
	mul $t0, $t0, $t1
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	lw $t1, -1780($fp)
	add $t0, $t0, $t1
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	lw $t1, 0($t0)
	sw $t1, -1796($fp)
	lw $t0, -1796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1800($fp)
	li $t0, 3
	sw $t0, -1804($fp)
	li $t0, 4
	lw $t1, -1804($fp)
	mul $t0, $t0, $t1
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	lw $t1, -1800($fp)
	add $t0, $t0, $t1
	sw $t0, -1812($fp)
	lw $t0, -1812($fp)
	lw $t1, 0($t0)
	sw $t1, -1816($fp)
	lw $t0, -1816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1820($fp)
	li $t0, 4
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
	addi $t0, $fp, -80
	sw $t0, -1840($fp)
	li $t0, 5
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
	lw $t0, -676($fp)
	sw $t0, -1860($fp)
	lw $t0, -1860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -688($fp)
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -700($fp)
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -1872($fp)
	li $t0, 0
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
	addi $t0, $fp, -92
	sw $t0, -1892($fp)
	li $t0, 1
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
	addi $t0, $fp, -92
	sw $t0, -1912($fp)
	li $t0, 2
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
	lw $t0, -784($fp)
	sw $t0, -1932($fp)
	lw $t0, -1932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -796($fp)
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -808($fp)
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1944($fp)
	jal f6
	sw $v0, -1948($fp)
	addi $sp, $sp, 4
	lw $t1, -1948($fp)
	li $t2, 0
	bne $t1, $t2, label465
	j label467
label467:
	addi $t0, $fp, -32
	sw $t0, -1952($fp)
	li $t0, 0
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
	lw $t1, -1968($fp)
	li $t2, 0
	bne $t1, $t2, label465
	j label466
label465:
	li $t0, 1
	sw $t0, -1944($fp)
label466:
	lw $ra, -4($fp)
	lw $v0, -1944($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 33762
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	sw $t0, -2016($fp)
	li $t0, 13135
	sw $t0, -2020($fp)
	addi $t0, $fp, -2004
	sw $t0, -2024($fp)
	li $t0, 0
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
	li $t0, 29922
	sw $t0, -2044($fp)
	addi $t0, $fp, -2004
	sw $t0, -2048($fp)
	li $t0, 1
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
	li $t0, 42531
	sw $t0, -2068($fp)
	addi $t0, $fp, -2004
	sw $t0, -2072($fp)
	li $t0, 2
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2080($fp)
	lw $t0, -2072($fp)
	lw $t1, -2080($fp)
	add $t0, $t0, $t1
	sw $t0, -2084($fp)
	lw $t0, -2068($fp)
	lw $t1, -2084($fp)
	sw $t0, 0($t1)
	lw $t0, -2084($fp)
	lw $t1, 0($t0)
	sw $t1, -2088($fp)
	li $t0, 58259
	sw $t0, -2092($fp)
	addi $t0, $fp, -2004
	sw $t0, -2096($fp)
	li $t0, 3
	sw $t0, -2100($fp)
	lw $t0, -2100($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2104($fp)
	lw $t0, -2096($fp)
	lw $t1, -2104($fp)
	add $t0, $t0, $t1
	sw $t0, -2108($fp)
	lw $t0, -2092($fp)
	lw $t1, -2108($fp)
	sw $t0, 0($t1)
	lw $t0, -2108($fp)
	lw $t1, 0($t0)
	sw $t1, -2112($fp)
	li $t0, 45639
	sw $t0, -2116($fp)
	addi $t0, $fp, -2004
	sw $t0, -2120($fp)
	li $t0, 4
	sw $t0, -2124($fp)
	lw $t0, -2124($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2128($fp)
	lw $t0, -2120($fp)
	lw $t1, -2128($fp)
	add $t0, $t0, $t1
	sw $t0, -2132($fp)
	lw $t0, -2116($fp)
	lw $t1, -2132($fp)
	sw $t0, 0($t1)
	lw $t0, -2132($fp)
	lw $t1, 0($t0)
	sw $t1, -2136($fp)
	li $t0, 64152
	sw $t0, -2140($fp)
	addi $t0, $fp, -2004
	sw $t0, -2144($fp)
	li $t0, 5
	sw $t0, -2148($fp)
	lw $t0, -2148($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $t0, -2144($fp)
	lw $t1, -2152($fp)
	add $t0, $t0, $t1
	sw $t0, -2156($fp)
	lw $t0, -2140($fp)
	lw $t1, -2156($fp)
	sw $t0, 0($t1)
	lw $t0, -2156($fp)
	lw $t1, 0($t0)
	sw $t1, -2160($fp)
	li $t0, 17844
	sw $t0, -2164($fp)
	addi $t0, $fp, -2004
	sw $t0, -2168($fp)
	li $t0, 6
	sw $t0, -2172($fp)
	lw $t0, -2172($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2176($fp)
	lw $t0, -2168($fp)
	lw $t1, -2176($fp)
	add $t0, $t0, $t1
	sw $t0, -2180($fp)
	lw $t0, -2164($fp)
	lw $t1, -2180($fp)
	sw $t0, 0($t1)
	lw $t0, -2180($fp)
	lw $t1, 0($t0)
	sw $t1, -2184($fp)
	li $t0, 38204
	sw $t0, -2188($fp)
	addi $t0, $fp, -2004
	sw $t0, -2192($fp)
	li $t0, 7
	sw $t0, -2196($fp)
	lw $t0, -2196($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2200($fp)
	lw $t0, -2192($fp)
	lw $t1, -2200($fp)
	add $t0, $t0, $t1
	sw $t0, -2204($fp)
	lw $t0, -2188($fp)
	lw $t1, -2204($fp)
	sw $t0, 0($t1)
	lw $t0, -2204($fp)
	lw $t1, 0($t0)
	sw $t1, -2208($fp)
	li $t0, 65083
	sw $t0, -2212($fp)
	addi $t0, $fp, -2004
	sw $t0, -2216($fp)
	li $t0, 8
	sw $t0, -2220($fp)
	lw $t0, -2220($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2224($fp)
	lw $t0, -2216($fp)
	lw $t1, -2224($fp)
	add $t0, $t0, $t1
	sw $t0, -2228($fp)
	lw $t0, -2212($fp)
	lw $t1, -2228($fp)
	sw $t0, 0($t1)
	lw $t0, -2228($fp)
	lw $t1, 0($t0)
	sw $t1, -2232($fp)
	li $t0, 31159
	sw $t0, -2236($fp)
	lw $t0, -2236($fp)
	sw $t0, -2240($fp)
	lw $t0, -2240($fp)
	sw $t0, -2244($fp)
	li $t0, 11900
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	sw $t0, -2252($fp)
	lw $t0, -2252($fp)
	sw $t0, -2256($fp)
	addi $t0, $fp, -32
	sw $t0, -2260($fp)
	li $t0, 2
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
	lw $t0, -2240($fp)
	sw $t0, -2280($fp)
	lw $t0, -2276($fp)
	lw $t1, -2280($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2284($fp)
	jal f6
	sw $v0, -2288($fp)
	addi $sp, $sp, 4
	lw $t0, -2284($fp)
	lw $t1, -2288($fp)
	sub $t0, $t0, $t1
	sw $t0, -2292($fp)
	li $t0, 0
	sw $t0, -2296($fp)
	lw $t0, -700($fp)
	sw $t0, -2300($fp)
	lw $t1, -2300($fp)
	li $t2, 0
	bne $t1, $t2, label469
	j label468
label468:
	li $t0, 1
	sw $t0, -2296($fp)
label469:
	lw $t0, -2292($fp)
	lw $t1, -2296($fp)
	add $t0, $t0, $t1
	sw $t0, -2304($fp)
label470:
	lw $t0, -2252($fp)
	sw $t0, -2308($fp)
	lw $t0, 8($fp)
	sw $t0, -2312($fp)
	lw $t0, -2308($fp)
	lw $t1, -2312($fp)
	mul $t0, $t0, $t1
	sw $t0, -2316($fp)
	li $t0, 0
	lw $t1, -2316($fp)
	sub $t0, $t0, $t1
	sw $t0, -2320($fp)
	lw $t1, -2320($fp)
	li $t2, 0
	bne $t1, $t2, label471
	j label472
label471:
	li $t0, 0
	sw $t0, -2324($fp)
	lw $t0, -2012($fp)
	sw $t0, -2328($fp)
	li $t0, 16786
	sw $t0, -2332($fp)
	li $t0, 19377
	sw $t0, -2336($fp)
	lw $t0, -2332($fp)
	lw $t1, -2336($fp)
	mul $t0, $t0, $t1
	sw $t0, -2340($fp)
	lw $t0, -2012($fp)
	sw $t0, -2344($fp)
	lw $t0, -2340($fp)
	lw $t1, -2344($fp)
	mul $t0, $t0, $t1
	sw $t0, -2348($fp)
	lw $t1, -2328($fp)
	lw $t2, -2348($fp)
	beq $t1, $t2, label473
	j label474
label473:
	li $t0, 1
	sw $t0, -2324($fp)
label474:
	lw $ra, -4($fp)
	lw $v0, -2324($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label470
label472:
	addi $t0, $fp, -92
	sw $t0, -2352($fp)
	addi $t0, $fp, -32
	sw $t0, -2356($fp)
	li $t0, 4
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
	li $t0, 4
	lw $t1, -2372($fp)
	mul $t0, $t0, $t1
	sw $t0, -2376($fp)
	lw $t0, -2376($fp)
	lw $t1, -2352($fp)
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
	bne $t1, $t2, label475
	j label476
label475:
	addi $t0, $fp, -92
	sw $t0, -2392($fp)
	li $t0, 0
	sw $t0, -2396($fp)
	li $t0, 0
	sw $t0, -2400($fp)
	jal f6
	sw $v0, -2404($fp)
	addi $sp, $sp, 4
	lw $t0, -340($fp)
	sw $t0, -2408($fp)
	lw $t1, -2404($fp)
	lw $t2, -2408($fp)
	bne $t1, $t2, label480
	j label481
label480:
	li $t0, 1
	sw $t0, -2400($fp)
label481:
	addi $t0, $fp, -2004
	sw $t0, -2412($fp)
	lw $t0, -700($fp)
	sw $t0, -2416($fp)
	li $t0, 4
	lw $t1, -2416($fp)
	mul $t0, $t0, $t1
	sw $t0, -2420($fp)
	lw $t0, -2420($fp)
	lw $t1, -2412($fp)
	add $t0, $t0, $t1
	sw $t0, -2424($fp)
	lw $t0, -2424($fp)
	lw $t1, 0($t0)
	sw $t1, -2428($fp)
	lw $t1, -2400($fp)
	lw $t2, -2428($fp)
	beq $t1, $t2, label478
	j label479
label478:
	li $t0, 1
	sw $t0, -2396($fp)
label479:
	li $t0, 4
	lw $t1, -2396($fp)
	mul $t0, $t0, $t1
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	lw $t1, -2392($fp)
	add $t0, $t0, $t1
	sw $t0, -2436($fp)
	lw $t0, -2436($fp)
	lw $t1, 0($t0)
	sw $t1, -2440($fp)
label476:
	lw $t0, -328($fp)
	sw $t0, -2444($fp)
	lw $t0, -2444($fp)
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	sw $t0, -2448($fp)
	lw $t0, -340($fp)
	sw $t0, -2452($fp)
	lw $t0, -2452($fp)
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -2456($fp)
	addi $sp, $sp, -4
	lw $t0, -2448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2456($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2460($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -2464($fp)
	addi $t0, $fp, -32
	sw $t0, -2468($fp)
	lw $t0, -700($fp)
	sw $t0, -2472($fp)
	li $t0, 4
	lw $t1, -2472($fp)
	mul $t0, $t0, $t1
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	lw $t1, -2468($fp)
	add $t0, $t0, $t1
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	lw $t1, 0($t0)
	sw $t1, -2484($fp)
	lw $t1, -2484($fp)
	li $t2, 0
	bne $t1, $t2, label483
	j label482
label482:
	li $t0, 1
	sw $t0, -2464($fp)
label483:
	li $t0, 48939
	sw $t0, -2488($fp)
	li $t0, 0
	lw $t1, -2488($fp)
	sub $t0, $t0, $t1
	sw $t0, -2492($fp)
	lw $t0, -2464($fp)
	lw $t1, -2492($fp)
	mul $t0, $t0, $t1
	sw $t0, -2496($fp)
	lw $t0, -2460($fp)
	lw $t1, -2496($fp)
	sub $t0, $t0, $t1
	sw $t0, -2500($fp)
label484:
	li $t0, 48716
	sw $t0, -2504($fp)
	lw $t0, -112($fp)
	sw $t0, -2508($fp)
	addi $t0, $fp, -56
	sw $t0, -2512($fp)
	li $t0, 1
	sw $t0, -2516($fp)
	li $t0, 4
	lw $t1, -2516($fp)
	mul $t0, $t0, $t1
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	lw $t1, -2512($fp)
	add $t0, $t0, $t1
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	lw $t1, 0($t0)
	sw $t1, -2528($fp)
	lw $t0, -2508($fp)
	lw $t1, -2528($fp)
	sub $t0, $t0, $t1
	sw $t0, -2532($fp)
	lw $t1, -2504($fp)
	lw $t2, -2532($fp)
	bne $t1, $t2, label485
	j label486
label485:
	lw $t0, -112($fp)
	sw $t0, -2536($fp)
	li $t0, 8409
	sw $t0, -2540($fp)
	addi $t0, $fp, -2004
	sw $t0, -2544($fp)
	lw $t0, -328($fp)
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
	lw $t0, -2540($fp)
	lw $t1, -2560($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2564($fp)
	li $t0, 0
	lw $t1, -2564($fp)
	sub $t0, $t0, $t1
	sw $t0, -2568($fp)
	lw $t0, -2536($fp)
	lw $t1, -2568($fp)
	mul $t0, $t0, $t1
	sw $t0, -2572($fp)
	addi $t0, $fp, -92
	sw $t0, -2576($fp)
	li $t0, 0
	sw $t0, -2580($fp)
	li $t0, 45864
	sw $t0, -2584($fp)
	lw $t1, -2584($fp)
	li $t2, 0
	bne $t1, $t2, label492
	j label491
label492:
	lw $t0, 20($fp)
	sw $t0, -2588($fp)
	lw $t1, -2588($fp)
	li $t2, 0
	bne $t1, $t2, label490
	j label491
label490:
	li $t0, 1
	sw $t0, -2580($fp)
label491:
	li $t0, 4
	lw $t1, -2580($fp)
	mul $t0, $t0, $t1
	sw $t0, -2592($fp)
	lw $t0, -2592($fp)
	lw $t1, -2576($fp)
	add $t0, $t0, $t1
	sw $t0, -2596($fp)
	lw $t0, -2596($fp)
	lw $t1, 0($t0)
	sw $t1, -2600($fp)
	lw $t1, -2572($fp)
	lw $t2, -2600($fp)
	bge $t1, $t2, label487
	j label488
label487:
	lw $t0, -700($fp)
	sw $t0, -2604($fp)
	li $t0, 12752
	sw $t0, -2608($fp)
	lw $t0, -2012($fp)
	sw $t0, -2612($fp)
	lw $t0, -2608($fp)
	lw $t1, -2612($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2616($fp)
	li $t0, 0
	lw $t1, -2616($fp)
	sub $t0, $t0, $t1
	sw $t0, -2620($fp)
	lw $t0, -2604($fp)
	lw $t1, -2620($fp)
	add $t0, $t0, $t1
	sw $t0, -2624($fp)
	li $t0, 0
	sw $t0, -2628($fp)
	li $t0, 62630
	sw $t0, -2632($fp)
	lw $t1, -2632($fp)
	li $t2, 0
	bne $t1, $t2, label494
	j label493
label493:
	li $t0, 1
	sw $t0, -2628($fp)
label494:
	li $t0, 0
	lw $t1, -2628($fp)
	sub $t0, $t0, $t1
	sw $t0, -2636($fp)
	lw $t0, -2624($fp)
	lw $t1, -2636($fp)
	sub $t0, $t0, $t1
	sw $t0, -2640($fp)
	j label489
label488:
	lw $t0, -796($fp)
	sw $t0, -2644($fp)
	li $t0, 51463
	sw $t0, -2648($fp)
	li $t0, 0
	lw $t1, -2648($fp)
	sub $t0, $t0, $t1
	sw $t0, -2652($fp)
	lw $t0, -2644($fp)
	lw $t1, -2652($fp)
	add $t0, $t0, $t1
	sw $t0, -2656($fp)
	lw $t0, -2656($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -2660($fp)
label489:
	j label484
label486:
	li $t0, 0
	sw $t0, -2664($fp)
	li $t0, 16976
	sw $t0, -2668($fp)
	lw $t1, -2668($fp)
	li $t2, 0
	bne $t1, $t2, label498
	j label497
label498:
	li $t0, 29775
	sw $t0, -2672($fp)
	li $t0, 43702
	sw $t0, -2676($fp)
	lw $t0, -2672($fp)
	lw $t1, -2676($fp)
	add $t0, $t0, $t1
	sw $t0, -2680($fp)
	lw $t1, -2680($fp)
	li $t2, 0
	bne $t1, $t2, label495
	j label497
label497:
	lw $t0, -2012($fp)
	sw $t0, -2684($fp)
	li $t0, 0
	sw $t0, -2688($fp)
	lw $t0, -112($fp)
	sw $t0, -2692($fp)
	lw $t1, -2692($fp)
	li $t2, 0
	bne $t1, $t2, label500
	j label499
label499:
	li $t0, 1
	sw $t0, -2688($fp)
label500:
	lw $t0, -2684($fp)
	lw $t1, -2688($fp)
	mul $t0, $t0, $t1
	sw $t0, -2696($fp)
	lw $t1, -2696($fp)
	li $t2, 0
	bne $t1, $t2, label495
	j label496
label495:
	li $t0, 1
	sw $t0, -2664($fp)
label496:
	li $t0, 0
	sw $t0, -2700($fp)
	li $t0, 27955
	sw $t0, -2704($fp)
	lw $t0, -316($fp)
	sw $t0, -2708($fp)
	li $t0, 0
	sw $t0, -2712($fp)
	lw $t0, -304($fp)
	sw $t0, -2716($fp)
	lw $t1, -2716($fp)
	li $t2, 0
	bne $t1, $t2, label504
	j label503
label503:
	li $t0, 1
	sw $t0, -2712($fp)
label504:
	lw $t0, -2708($fp)
	lw $t1, -2712($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2720($fp)
	lw $t1, -2704($fp)
	lw $t2, -2720($fp)
	beq $t1, $t2, label501
	j label502
label501:
	li $t0, 1
	sw $t0, -2700($fp)
label502:
label505:
	li $t0, 0
	sw $t0, -2724($fp)
	lw $t0, -808($fp)
	sw $t0, -2728($fp)
	lw $t0, -328($fp)
	sw $t0, -2732($fp)
	lw $t1, -2728($fp)
	lw $t2, -2732($fp)
	blt $t1, $t2, label508
	j label509
label508:
	li $t0, 1
	sw $t0, -2724($fp)
label509:
	li $t0, 63537
	sw $t0, -2736($fp)
	li $t0, 56837
	sw $t0, -2740($fp)
	lw $t0, -2736($fp)
	lw $t1, -2740($fp)
	sub $t0, $t0, $t1
	sw $t0, -2744($fp)
	lw $t0, -520($fp)
	sw $t0, -2748($fp)
	lw $t0, -2744($fp)
	lw $t1, -2748($fp)
	add $t0, $t0, $t1
	sw $t0, -2752($fp)
	addi $sp, $sp, -4
	lw $t0, -2724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2752($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2756($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -2756($fp)
	sub $t0, $t0, $t1
	sw $t0, -2760($fp)
	li $t0, 57877
	sw $t0, -2764($fp)
	lw $t1, -2760($fp)
	lw $t2, -2764($fp)
	bge $t1, $t2, label506
	j label507
label506:
	li $t0, 0
	sw $t0, -2768($fp)
	lw $t0, -784($fp)
	sw $t0, -2772($fp)
	li $t0, 0
	lw $t1, -2772($fp)
	sub $t0, $t0, $t1
	sw $t0, -2776($fp)
	lw $t1, -2776($fp)
	li $t2, 0
	bne $t1, $t2, label511
	j label510
label510:
	li $t0, 1
	sw $t0, -2768($fp)
label511:
	addi $t0, $fp, -2004
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
	lw $t0, -2768($fp)
	lw $t1, -2796($fp)
	sub $t0, $t0, $t1
	sw $t0, -2800($fp)
	lw $ra, -4($fp)
	lw $v0, -2800($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label505
label507:
	li $t0, 37980
	sw $t0, -2888($fp)
	lw $t0, -2888($fp)
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	sw $t0, -2896($fp)
	li $t0, 39148
	sw $t0, -2900($fp)
	lw $t0, -2900($fp)
	sw $t0, -2904($fp)
	lw $t0, -2904($fp)
	sw $t0, -2908($fp)
	li $t0, 1869
	sw $t0, -2912($fp)
	lw $t0, -2912($fp)
	sw $t0, -2916($fp)
	lw $t0, -2916($fp)
	sw $t0, -2920($fp)
	li $t0, 10648
	sw $t0, -2924($fp)
	addi $t0, $fp, -2812
	sw $t0, -2928($fp)
	li $t0, 0
	sw $t0, -2932($fp)
	lw $t0, -2932($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2936($fp)
	lw $t0, -2928($fp)
	lw $t1, -2936($fp)
	add $t0, $t0, $t1
	sw $t0, -2940($fp)
	lw $t0, -2924($fp)
	lw $t1, -2940($fp)
	sw $t0, 0($t1)
	lw $t0, -2940($fp)
	lw $t1, 0($t0)
	sw $t1, -2944($fp)
	li $t0, 38695
	sw $t0, -2948($fp)
	addi $t0, $fp, -2812
	sw $t0, -2952($fp)
	li $t0, 1
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
	li $t0, 33028
	sw $t0, -2972($fp)
	addi $t0, $fp, -2812
	sw $t0, -2976($fp)
	li $t0, 2
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
	li $t0, 22548
	sw $t0, -2996($fp)
	lw $t0, -2996($fp)
	sw $t0, -3000($fp)
	lw $t0, -3000($fp)
	sw $t0, -3004($fp)
	li $t0, 54923
	sw $t0, -3008($fp)
	lw $t0, -3008($fp)
	sw $t0, -3012($fp)
	lw $t0, -3012($fp)
	sw $t0, -3016($fp)
	li $t0, 20094
	sw $t0, -3020($fp)
	lw $t0, -3020($fp)
	sw $t0, -3024($fp)
	lw $t0, -3024($fp)
	sw $t0, -3028($fp)
	li $t0, 39334
	sw $t0, -3032($fp)
	lw $t0, -3032($fp)
	sw $t0, -3036($fp)
	lw $t0, -3036($fp)
	sw $t0, -3040($fp)
	li $t0, 8765
	sw $t0, -3044($fp)
	lw $t0, -3044($fp)
	sw $t0, -3048($fp)
	lw $t0, -3048($fp)
	sw $t0, -3052($fp)
	li $t0, 20662
	sw $t0, -3056($fp)
	lw $t0, -3056($fp)
	sw $t0, -3060($fp)
	lw $t0, -3060($fp)
	sw $t0, -3064($fp)
	li $t0, 1552
	sw $t0, -3068($fp)
	addi $t0, $fp, -2852
	sw $t0, -3072($fp)
	li $t0, 0
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
	li $t0, 57704
	sw $t0, -3092($fp)
	addi $t0, $fp, -2852
	sw $t0, -3096($fp)
	li $t0, 1
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
	li $t0, 3843
	sw $t0, -3116($fp)
	addi $t0, $fp, -2852
	sw $t0, -3120($fp)
	li $t0, 2
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
	li $t0, 31674
	sw $t0, -3140($fp)
	addi $t0, $fp, -2852
	sw $t0, -3144($fp)
	li $t0, 3
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
	li $t0, 23439
	sw $t0, -3164($fp)
	addi $t0, $fp, -2852
	sw $t0, -3168($fp)
	li $t0, 4
	sw $t0, -3172($fp)
	lw $t0, -3172($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3176($fp)
	lw $t0, -3168($fp)
	lw $t1, -3176($fp)
	add $t0, $t0, $t1
	sw $t0, -3180($fp)
	lw $t0, -3164($fp)
	lw $t1, -3180($fp)
	sw $t0, 0($t1)
	lw $t0, -3180($fp)
	lw $t1, 0($t0)
	sw $t1, -3184($fp)
	li $t0, 12252
	sw $t0, -3188($fp)
	addi $t0, $fp, -2852
	sw $t0, -3192($fp)
	li $t0, 5
	sw $t0, -3196($fp)
	lw $t0, -3196($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3200($fp)
	lw $t0, -3192($fp)
	lw $t1, -3200($fp)
	add $t0, $t0, $t1
	sw $t0, -3204($fp)
	lw $t0, -3188($fp)
	lw $t1, -3204($fp)
	sw $t0, 0($t1)
	lw $t0, -3204($fp)
	lw $t1, 0($t0)
	sw $t1, -3208($fp)
	li $t0, 12003
	sw $t0, -3212($fp)
	addi $t0, $fp, -2852
	sw $t0, -3216($fp)
	li $t0, 6
	sw $t0, -3220($fp)
	lw $t0, -3220($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3224($fp)
	lw $t0, -3216($fp)
	lw $t1, -3224($fp)
	add $t0, $t0, $t1
	sw $t0, -3228($fp)
	lw $t0, -3212($fp)
	lw $t1, -3228($fp)
	sw $t0, 0($t1)
	lw $t0, -3228($fp)
	lw $t1, 0($t0)
	sw $t1, -3232($fp)
	li $t0, 36192
	sw $t0, -3236($fp)
	addi $t0, $fp, -2852
	sw $t0, -3240($fp)
	li $t0, 7
	sw $t0, -3244($fp)
	lw $t0, -3244($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3248($fp)
	lw $t0, -3240($fp)
	lw $t1, -3248($fp)
	add $t0, $t0, $t1
	sw $t0, -3252($fp)
	lw $t0, -3236($fp)
	lw $t1, -3252($fp)
	sw $t0, 0($t1)
	lw $t0, -3252($fp)
	lw $t1, 0($t0)
	sw $t1, -3256($fp)
	li $t0, 9346
	sw $t0, -3260($fp)
	addi $t0, $fp, -2852
	sw $t0, -3264($fp)
	li $t0, 8
	sw $t0, -3268($fp)
	lw $t0, -3268($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3272($fp)
	lw $t0, -3264($fp)
	lw $t1, -3272($fp)
	add $t0, $t0, $t1
	sw $t0, -3276($fp)
	lw $t0, -3260($fp)
	lw $t1, -3276($fp)
	sw $t0, 0($t1)
	lw $t0, -3276($fp)
	lw $t1, 0($t0)
	sw $t1, -3280($fp)
	li $t0, 63466
	sw $t0, -3284($fp)
	addi $t0, $fp, -2852
	sw $t0, -3288($fp)
	li $t0, 9
	sw $t0, -3292($fp)
	lw $t0, -3292($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3296($fp)
	lw $t0, -3288($fp)
	lw $t1, -3296($fp)
	add $t0, $t0, $t1
	sw $t0, -3300($fp)
	lw $t0, -3284($fp)
	lw $t1, -3300($fp)
	sw $t0, 0($t1)
	lw $t0, -3300($fp)
	lw $t1, 0($t0)
	sw $t1, -3304($fp)
	li $t0, 53168
	sw $t0, -3308($fp)
	lw $t0, -3308($fp)
	sw $t0, -3312($fp)
	lw $t0, -3312($fp)
	sw $t0, -3316($fp)
	li $t0, 39121
	sw $t0, -3320($fp)
	addi $t0, $fp, -2884
	sw $t0, -3324($fp)
	li $t0, 0
	sw $t0, -3328($fp)
	lw $t0, -3328($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3332($fp)
	lw $t0, -3324($fp)
	lw $t1, -3332($fp)
	add $t0, $t0, $t1
	sw $t0, -3336($fp)
	lw $t0, -3320($fp)
	lw $t1, -3336($fp)
	sw $t0, 0($t1)
	lw $t0, -3336($fp)
	lw $t1, 0($t0)
	sw $t1, -3340($fp)
	li $t0, 41632
	sw $t0, -3344($fp)
	addi $t0, $fp, -2884
	sw $t0, -3348($fp)
	li $t0, 1
	sw $t0, -3352($fp)
	lw $t0, -3352($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3356($fp)
	lw $t0, -3348($fp)
	lw $t1, -3356($fp)
	add $t0, $t0, $t1
	sw $t0, -3360($fp)
	lw $t0, -3344($fp)
	lw $t1, -3360($fp)
	sw $t0, 0($t1)
	lw $t0, -3360($fp)
	lw $t1, 0($t0)
	sw $t1, -3364($fp)
	li $t0, 15587
	sw $t0, -3368($fp)
	addi $t0, $fp, -2884
	sw $t0, -3372($fp)
	li $t0, 2
	sw $t0, -3376($fp)
	lw $t0, -3376($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3380($fp)
	lw $t0, -3372($fp)
	lw $t1, -3380($fp)
	add $t0, $t0, $t1
	sw $t0, -3384($fp)
	lw $t0, -3368($fp)
	lw $t1, -3384($fp)
	sw $t0, 0($t1)
	lw $t0, -3384($fp)
	lw $t1, 0($t0)
	sw $t1, -3388($fp)
	li $t0, 37122
	sw $t0, -3392($fp)
	addi $t0, $fp, -2884
	sw $t0, -3396($fp)
	li $t0, 3
	sw $t0, -3400($fp)
	lw $t0, -3400($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3404($fp)
	lw $t0, -3396($fp)
	lw $t1, -3404($fp)
	add $t0, $t0, $t1
	sw $t0, -3408($fp)
	lw $t0, -3392($fp)
	lw $t1, -3408($fp)
	sw $t0, 0($t1)
	lw $t0, -3408($fp)
	lw $t1, 0($t0)
	sw $t1, -3412($fp)
	li $t0, 32933
	sw $t0, -3416($fp)
	addi $t0, $fp, -2884
	sw $t0, -3420($fp)
	li $t0, 4
	sw $t0, -3424($fp)
	lw $t0, -3424($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3428($fp)
	lw $t0, -3420($fp)
	lw $t1, -3428($fp)
	add $t0, $t0, $t1
	sw $t0, -3432($fp)
	lw $t0, -3416($fp)
	lw $t1, -3432($fp)
	sw $t0, 0($t1)
	lw $t0, -3432($fp)
	lw $t1, 0($t0)
	sw $t1, -3436($fp)
	li $t0, 7928
	sw $t0, -3440($fp)
	addi $t0, $fp, -2884
	sw $t0, -3444($fp)
	li $t0, 5
	sw $t0, -3448($fp)
	lw $t0, -3448($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3452($fp)
	lw $t0, -3444($fp)
	lw $t1, -3452($fp)
	add $t0, $t0, $t1
	sw $t0, -3456($fp)
	lw $t0, -3440($fp)
	lw $t1, -3456($fp)
	sw $t0, 0($t1)
	lw $t0, -3456($fp)
	lw $t1, 0($t0)
	sw $t1, -3460($fp)
	li $t0, 12118
	sw $t0, -3464($fp)
	addi $t0, $fp, -2884
	sw $t0, -3468($fp)
	li $t0, 6
	sw $t0, -3472($fp)
	lw $t0, -3472($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3476($fp)
	lw $t0, -3468($fp)
	lw $t1, -3476($fp)
	add $t0, $t0, $t1
	sw $t0, -3480($fp)
	lw $t0, -3464($fp)
	lw $t1, -3480($fp)
	sw $t0, 0($t1)
	lw $t0, -3480($fp)
	lw $t1, 0($t0)
	sw $t1, -3484($fp)
	li $t0, 16958
	sw $t0, -3488($fp)
	addi $t0, $fp, -2884
	sw $t0, -3492($fp)
	li $t0, 7
	sw $t0, -3496($fp)
	lw $t0, -3496($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3500($fp)
	lw $t0, -3492($fp)
	lw $t1, -3500($fp)
	add $t0, $t0, $t1
	sw $t0, -3504($fp)
	lw $t0, -3488($fp)
	lw $t1, -3504($fp)
	sw $t0, 0($t1)
	lw $t0, -3504($fp)
	lw $t1, 0($t0)
	sw $t1, -3508($fp)
	lw $t0, -2892($fp)
	sw $t0, -3512($fp)
	lw $t0, -3512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2904($fp)
	sw $t0, -3516($fp)
	lw $t0, -3516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2916($fp)
	sw $t0, -3520($fp)
	lw $t0, -3520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2812
	sw $t0, -3524($fp)
	li $t0, 0
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
	addi $t0, $fp, -2812
	sw $t0, -3544($fp)
	li $t0, 1
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
	addi $t0, $fp, -2812
	sw $t0, -3564($fp)
	li $t0, 2
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
	lw $t0, -3000($fp)
	sw $t0, -3584($fp)
	lw $t0, -3584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3012($fp)
	sw $t0, -3588($fp)
	lw $t0, -3588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3024($fp)
	sw $t0, -3592($fp)
	lw $t0, -3592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3036($fp)
	sw $t0, -3596($fp)
	lw $t0, -3596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3048($fp)
	sw $t0, -3600($fp)
	lw $t0, -3600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3060($fp)
	sw $t0, -3604($fp)
	lw $t0, -3604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2852
	sw $t0, -3608($fp)
	li $t0, 0
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
	addi $t0, $fp, -2852
	sw $t0, -3628($fp)
	li $t0, 1
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
	addi $t0, $fp, -2852
	sw $t0, -3648($fp)
	li $t0, 2
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
	addi $t0, $fp, -2852
	sw $t0, -3668($fp)
	li $t0, 3
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
	addi $t0, $fp, -2852
	sw $t0, -3688($fp)
	li $t0, 4
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
	addi $t0, $fp, -2852
	sw $t0, -3708($fp)
	li $t0, 5
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
	addi $t0, $fp, -2852
	sw $t0, -3728($fp)
	li $t0, 6
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
	addi $t0, $fp, -2852
	sw $t0, -3748($fp)
	li $t0, 7
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
	addi $t0, $fp, -2852
	sw $t0, -3768($fp)
	li $t0, 8
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
	addi $t0, $fp, -2852
	sw $t0, -3788($fp)
	li $t0, 9
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
	lw $t0, -3312($fp)
	sw $t0, -3808($fp)
	lw $t0, -3808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2884
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
	addi $t0, $fp, -2884
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
	addi $t0, $fp, -2884
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
	addi $t0, $fp, -2884
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
	addi $t0, $fp, -2884
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
	addi $t0, $fp, -2884
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
	addi $t0, $fp, -2884
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
	addi $t0, $fp, -2884
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
	li $t0, 0
	sw $t0, -3972($fp)
	li $t0, 0
	sw $t0, -3976($fp)
	li $t0, 45908
	sw $t0, -3980($fp)
	lw $t1, -3980($fp)
	li $t2, 0
	bne $t1, $t2, label515
	j label514
label514:
	li $t0, 1
	sw $t0, -3976($fp)
label515:
	lw $t0, -328($fp)
	sw $t0, -3984($fp)
	li $t0, 0
	lw $t1, -3984($fp)
	sub $t0, $t0, $t1
	sw $t0, -3988($fp)
	lw $t0, -3976($fp)
	lw $t1, -3988($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3992($fp)
	lw $t0, -124($fp)
	sw $t0, -3996($fp)
	lw $t1, -3992($fp)
	lw $t2, -3996($fp)
	bge $t1, $t2, label512
	j label513
label512:
	li $t0, 1
	sw $t0, -3972($fp)
label513:
	lw $ra, -4($fp)
	lw $v0, -3972($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 51266
	sw $t0, -4000($fp)
	li $t0, 14746
	sw $t0, -4004($fp)
	lw $t0, -700($fp)
	sw $t0, -4008($fp)
	lw $t0, -4004($fp)
	lw $t1, -4008($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4012($fp)
	li $t0, 0
	sw $t0, -4016($fp)
	li $t0, 54456
	sw $t0, -4020($fp)
	lw $t1, -4020($fp)
	li $t2, 0
	bne $t1, $t2, label517
	j label516
label516:
	li $t0, 1
	sw $t0, -4016($fp)
label517:
	lw $t0, -2892($fp)
	sw $t0, -4024($fp)
	lw $t0, -4016($fp)
	lw $t1, -4024($fp)
	sub $t0, $t0, $t1
	sw $t0, -4028($fp)
	addi $t0, $fp, -2852
	sw $t0, -4032($fp)
	li $t0, 3
	sw $t0, -4036($fp)
	li $t0, 4
	lw $t1, -4036($fp)
	mul $t0, $t0, $t1
	sw $t0, -4040($fp)
	lw $t0, -4040($fp)
	lw $t1, -4032($fp)
	add $t0, $t0, $t1
	sw $t0, -4044($fp)
	lw $t0, -4044($fp)
	lw $t1, 0($t0)
	sw $t1, -4048($fp)
	lw $t0, -304($fp)
	sw $t0, -4052($fp)
	lw $t0, -784($fp)
	sw $t0, -4056($fp)
	lw $t0, -4052($fp)
	lw $t1, -4056($fp)
	mul $t0, $t0, $t1
	sw $t0, -4060($fp)
	li $t0, 0
	sw $t0, -4064($fp)
	li $t0, 13813
	sw $t0, -4068($fp)
	li $t0, 6413
	sw $t0, -4072($fp)
	lw $t0, -4068($fp)
	lw $t1, -4072($fp)
	sub $t0, $t0, $t1
	sw $t0, -4076($fp)
	li $t0, 52904
	sw $t0, -4080($fp)
	lw $t1, -4076($fp)
	lw $t2, -4080($fp)
	bgt $t1, $t2, label518
	j label519
label518:
	li $t0, 1
	sw $t0, -4064($fp)
label519:
	li $t0, 0
	sw $t0, -4084($fp)
	lw $t0, 20($fp)
	sw $t0, -4088($fp)
	li $t0, 13569
	sw $t0, -4092($fp)
	lw $t1, -4088($fp)
	lw $t2, -4092($fp)
	beq $t1, $t2, label522
	j label521
label522:
	lw $t0, -3012($fp)
	sw $t0, -4096($fp)
	lw $t1, -4096($fp)
	li $t2, 0
	bne $t1, $t2, label520
	j label521
label520:
	li $t0, 1
	sw $t0, -4084($fp)
label521:
	lw $t0, -796($fp)
	sw $t0, -4100($fp)
	lw $t0, -4100($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -4104($fp)
	li $t0, 0
	sw $t0, -4108($fp)
	addi $t0, $fp, -32
	sw $t0, -4112($fp)
	li $t0, 5
	sw $t0, -4116($fp)
	li $t0, 4
	lw $t1, -4116($fp)
	mul $t0, $t0, $t1
	sw $t0, -4120($fp)
	lw $t0, -4120($fp)
	lw $t1, -4112($fp)
	add $t0, $t0, $t1
	sw $t0, -4124($fp)
	lw $t0, -4124($fp)
	lw $t1, 0($t0)
	sw $t1, -4128($fp)
	li $t0, 51855
	sw $t0, -4132($fp)
	lw $t1, -4128($fp)
	lw $t2, -4132($fp)
	beq $t1, $t2, label523
	j label524
label523:
	li $t0, 1
	sw $t0, -4108($fp)
label524:
	li $t0, 0
	sw $t0, -4136($fp)
	lw $t0, -688($fp)
	sw $t0, -4140($fp)
	lw $t0, -700($fp)
	sw $t0, -4144($fp)
	lw $t0, -4140($fp)
	lw $t1, -4144($fp)
	sub $t0, $t0, $t1
	sw $t0, -4148($fp)
	li $t0, 18827
	sw $t0, -4152($fp)
	lw $t1, -4148($fp)
	lw $t2, -4152($fp)
	beq $t1, $t2, label525
	j label526
label525:
	li $t0, 1
	sw $t0, -4136($fp)
label526:
	addi $sp, $sp, -4
	lw $t0, -4064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4136($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -4156($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -4012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4156($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -4160($fp)
	addi $sp, $sp, 24
	lw $t0, -4000($fp)
	lw $t1, -4160($fp)
	mul $t0, $t0, $t1
	sw $t0, -4164($fp)
	li $t0, 0
	lw $t1, -4164($fp)
	sub $t0, $t0, $t1
	sw $t0, -4168($fp)
	addi $t0, $fp, -2852
	sw $t0, -4172($fp)
	li $t0, 9
	sw $t0, -4176($fp)
	li $t0, 4
	lw $t1, -4176($fp)
	mul $t0, $t0, $t1
	sw $t0, -4180($fp)
	lw $t0, -4180($fp)
	lw $t1, -4172($fp)
	add $t0, $t0, $t1
	sw $t0, -4184($fp)
	lw $t0, -4184($fp)
	lw $t1, 0($t0)
	sw $t1, -4188($fp)
	addi $t0, $fp, -32
	sw $t0, -4192($fp)
	li $t0, 2
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
	div $t0, $t1
	mflo $t2
	sw $t2, -4212($fp)
	lw $t0, -4168($fp)
	lw $t1, -4212($fp)
	sub $t0, $t0, $t1
	sw $t0, -4216($fp)
	li $t0, 32598
	sw $t0, -4220($fp)
	lw $t0, -4220($fp)
	sw $t0, -4224($fp)
	lw $t0, -4224($fp)
	sw $t0, -4228($fp)
	li $t0, 8842
	sw $t0, -4232($fp)
	lw $t0, -4232($fp)
	sw $t0, -4236($fp)
	lw $t0, -4236($fp)
	sw $t0, -4240($fp)
	addi $t0, $fp, -92
	sw $t0, -4244($fp)
	li $t0, 0
	sw $t0, -4248($fp)
	li $t0, 52516
	sw $t0, -4252($fp)
	li $t0, 0
	lw $t1, -4252($fp)
	sub $t0, $t0, $t1
	sw $t0, -4256($fp)
	li $t0, 30528
	sw $t0, -4260($fp)
	lw $t0, 20($fp)
	sw $t0, -4264($fp)
	lw $t0, -4260($fp)
	lw $t1, -4264($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4268($fp)
	lw $t1, -4256($fp)
	lw $t2, -4268($fp)
	bge $t1, $t2, label527
	j label528
label527:
	li $t0, 1
	sw $t0, -4248($fp)
label528:
	li $t0, 4
	lw $t1, -4248($fp)
	mul $t0, $t0, $t1
	sw $t0, -4272($fp)
	lw $t0, -4272($fp)
	lw $t1, -4244($fp)
	add $t0, $t0, $t1
	sw $t0, -4276($fp)
	lw $t0, -4276($fp)
	lw $t1, 0($t0)
	sw $t1, -4280($fp)
	lw $t0, -4224($fp)
	sw $t0, -4284($fp)
	lw $t0, -4284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4236($fp)
	sw $t0, -4288($fp)
	lw $t0, -4288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4292($fp)
	li $t0, 0
	sw $t0, -4296($fp)
	lw $t0, -340($fp)
	sw $t0, -4300($fp)
	li $t0, 6625
	sw $t0, -4304($fp)
	lw $t0, -4300($fp)
	lw $t1, -4304($fp)
	mul $t0, $t0, $t1
	sw $t0, -4308($fp)
	li $t0, 12062
	sw $t0, -4312($fp)
	lw $t1, -4308($fp)
	lw $t2, -4312($fp)
	bgt $t1, $t2, label532
	j label533
label532:
	li $t0, 1
	sw $t0, -4296($fp)
label533:
	li $t0, 0
	sw $t0, -4316($fp)
	li $t0, 62010
	sw $t0, -4320($fp)
	lw $t1, -4320($fp)
	li $t2, 0
	bne $t1, $t2, label534
	j label536
label536:
	li $t0, 26101
	sw $t0, -4324($fp)
	lw $t1, -4324($fp)
	li $t2, 0
	bne $t1, $t2, label534
	j label535
label534:
	li $t0, 1
	sw $t0, -4316($fp)
label535:
	addi $sp, $sp, -4
	lw $t0, -4296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4316($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4328($fp)
	addi $sp, $sp, 12
	lw $t0, -2904($fp)
	sw $t0, -4332($fp)
	lw $t0, -4328($fp)
	lw $t1, -4332($fp)
	mul $t0, $t0, $t1
	sw $t0, -4336($fp)
	lw $t1, -4336($fp)
	li $t2, 0
	bne $t1, $t2, label531
	j label530
label531:
	li $t0, 0
	sw $t0, -4340($fp)
	li $t0, 63223
	sw $t0, -4344($fp)
	lw $t1, -4344($fp)
	li $t2, 0
	bne $t1, $t2, label538
	j label537
label537:
	li $t0, 1
	sw $t0, -4340($fp)
label538:
	li $t0, 39558
	sw $t0, -4348($fp)
	lw $t0, -4340($fp)
	lw $t1, -4348($fp)
	sub $t0, $t0, $t1
	sw $t0, -4352($fp)
	li $t0, 19990
	sw $t0, -4356($fp)
	lw $t0, -4236($fp)
	sw $t0, -4360($fp)
	lw $t0, -4356($fp)
	lw $t1, -4360($fp)
	mul $t0, $t0, $t1
	sw $t0, -4364($fp)
	lw $t0, -4352($fp)
	lw $t1, -4364($fp)
	add $t0, $t0, $t1
	sw $t0, -4368($fp)
	lw $t1, -4368($fp)
	li $t2, 0
	bne $t1, $t2, label529
	j label530
label529:
	li $t0, 1
	sw $t0, -4292($fp)
label530:
	lw $ra, -4($fp)
	lw $v0, -4292($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label539:
	addi $t0, $fp, -2884
	sw $t0, -4372($fp)
	li $t0, 0
	sw $t0, -4376($fp)
	addi $t0, $fp, -2884
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
	lw $t1, -4396($fp)
	li $t2, 0
	bne $t1, $t2, label543
	j label542
label542:
	li $t0, 1
	sw $t0, -4376($fp)
label543:
	li $t0, 0
	sw $t0, -4400($fp)
	lw $t0, -304($fp)
	sw $t0, -4404($fp)
	lw $t1, -4404($fp)
	li $t2, 0
	bne $t1, $t2, label545
	j label544
label544:
	li $t0, 1
	sw $t0, -4400($fp)
label545:
	li $t0, 0
	lw $t1, -4400($fp)
	sub $t0, $t0, $t1
	sw $t0, -4408($fp)
	li $t0, 363
	sw $t0, -4412($fp)
	lw $t0, 4($fp)
	sw $t0, -4416($fp)
	lw $t0, -4416($fp)
	sw $t0, 20($fp)
	lw $t0, 20($fp)
	sw $t0, -4420($fp)
	addi $sp, $sp, -4
	lw $t0, -4408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4420($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4424($fp)
	addi $sp, $sp, 16
	lw $t0, -4376($fp)
	lw $t1, -4424($fp)
	add $t0, $t0, $t1
	sw $t0, -4428($fp)
	li $t0, 4
	lw $t1, -4428($fp)
	mul $t0, $t0, $t1
	sw $t0, -4432($fp)
	lw $t0, -4432($fp)
	lw $t1, -4372($fp)
	add $t0, $t0, $t1
	sw $t0, -4436($fp)
	lw $t0, -4436($fp)
	lw $t1, 0($t0)
	sw $t1, -4440($fp)
	lw $t1, -4440($fp)
	li $t2, 0
	bne $t1, $t2, label540
	j label541
label540:
	li $t0, 0
	sw $t0, -4444($fp)
	li $t0, 4953
	sw $t0, -4448($fp)
	li $t0, 0
	sw $t0, -4452($fp)
	addi $t0, $fp, -56
	sw $t0, -4456($fp)
	li $t0, 0
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
	lw $t1, -4472($fp)
	li $t2, 0
	bne $t1, $t2, label549
	j label548
label548:
	li $t0, 1
	sw $t0, -4452($fp)
label549:
	li $t0, 0
	sw $t0, -4476($fp)
	lw $t0, -328($fp)
	sw $t0, -4480($fp)
	lw $t1, -4480($fp)
	li $t2, 0
	bne $t1, $t2, label553
	j label551
label553:
	lw $t0, -364($fp)
	sw $t0, -4484($fp)
	lw $t1, -4484($fp)
	li $t2, 0
	bne $t1, $t2, label552
	j label551
label552:
	lw $t0, -328($fp)
	sw $t0, -4488($fp)
	lw $t1, -4488($fp)
	li $t2, 0
	bne $t1, $t2, label550
	j label551
label550:
	li $t0, 1
	sw $t0, -4476($fp)
label551:
	li $t0, 0
	sw $t0, -4492($fp)
	li $t0, 9807
	sw $t0, -4496($fp)
	li $t0, 56920
	sw $t0, -4500($fp)
	lw $t1, -4496($fp)
	lw $t2, -4500($fp)
	bne $t1, $t2, label554
	j label555
label554:
	li $t0, 1
	sw $t0, -4492($fp)
label555:
	lw $t0, 16($fp)
	sw $t0, -4504($fp)
	lw $t0, -4504($fp)
	sw $t0, -2904($fp)
	lw $t0, -2904($fp)
	sw $t0, -4508($fp)
	addi $sp, $sp, -4
	lw $t0, -4448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4508($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -4512($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -4512($fp)
	sub $t0, $t0, $t1
	sw $t0, -4516($fp)
	lw $t0, -304($fp)
	sw $t0, -4520($fp)
	li $t0, 61071
	sw $t0, -4524($fp)
	lw $t0, -4520($fp)
	lw $t1, -4524($fp)
	mul $t0, $t0, $t1
	sw $t0, -4528($fp)
	lw $t0, -4224($fp)
	sw $t0, -4532($fp)
	lw $t0, -4528($fp)
	lw $t1, -4532($fp)
	add $t0, $t0, $t1
	sw $t0, -4536($fp)
	lw $t0, -520($fp)
	sw $t0, -4540($fp)
	lw $t0, -340($fp)
	sw $t0, -4544($fp)
	lw $t0, -4540($fp)
	lw $t1, -4544($fp)
	mul $t0, $t0, $t1
	sw $t0, -4548($fp)
	lw $t0, -796($fp)
	sw $t0, -4552($fp)
	lw $t0, -4548($fp)
	lw $t1, -4552($fp)
	add $t0, $t0, $t1
	sw $t0, -4556($fp)
	addi $sp, $sp, -4
	lw $t0, -4516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4556($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4560($fp)
	addi $sp, $sp, 16
	lw $t1, -4560($fp)
	li $t2, 0
	bne $t1, $t2, label547
	j label546
label546:
	li $t0, 1
	sw $t0, -4444($fp)
label547:
	j label539
label541:
	li $t0, 0
	sw $t0, -4564($fp)
	li $t0, 57857
	sw $t0, -4568($fp)
	li $t0, 56352
	sw $t0, -4572($fp)
	lw $t0, -4568($fp)
	lw $t1, -4572($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4576($fp)
	lw $t0, -3312($fp)
	sw $t0, -4580($fp)
	lw $t1, -4576($fp)
	lw $t2, -4580($fp)
	bne $t1, $t2, label559
	j label560
label559:
	li $t0, 1
	sw $t0, -4564($fp)
label560:
	li $t0, 0
	sw $t0, -4584($fp)
	li $t0, 0
	sw $t0, -4588($fp)
	li $t0, 33774
	sw $t0, -4592($fp)
	li $t0, 2539
	sw $t0, -4596($fp)
	lw $t1, -4592($fp)
	lw $t2, -4596($fp)
	bgt $t1, $t2, label563
	j label564
label563:
	li $t0, 1
	sw $t0, -4588($fp)
label564:
	lw $t0, -328($fp)
	sw $t0, -4600($fp)
	lw $t1, -4588($fp)
	lw $t2, -4600($fp)
	bne $t1, $t2, label561
	j label562
label561:
	li $t0, 1
	sw $t0, -4584($fp)
label562:
	li $t0, 0
	sw $t0, -4604($fp)
	jal f6
	sw $v0, -4608($fp)
	addi $sp, $sp, 4
	lw $t1, -4608($fp)
	li $t2, 0
	bne $t1, $t2, label567
	j label566
label567:
	lw $t0, -328($fp)
	sw $t0, -4612($fp)
	lw $t1, -4612($fp)
	li $t2, 0
	bne $t1, $t2, label565
	j label566
label565:
	li $t0, 1
	sw $t0, -4604($fp)
label566:
	addi $sp, $sp, -4
	lw $t0, -4564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4604($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4616($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -32
	sw $t0, -4620($fp)
	li $t0, 0
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
	lw $t0, -4616($fp)
	lw $t1, -4636($fp)
	mul $t0, $t0, $t1
	sw $t0, -4640($fp)
	li $t0, 0
	lw $t1, -4640($fp)
	sub $t0, $t0, $t1
	sw $t0, -4644($fp)
	lw $t1, -4644($fp)
	li $t2, 0
	bne $t1, $t2, label556
	j label557
label556:
	li $t0, 5562
	sw $t0, -4656($fp)
	addi $t0, $fp, -4652
	sw $t0, -4660($fp)
	li $t0, 0
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
	li $t0, 60533
	sw $t0, -4680($fp)
	addi $t0, $fp, -4652
	sw $t0, -4684($fp)
	li $t0, 1
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
	li $t0, 1837
	sw $t0, -4704($fp)
	lw $t0, -4704($fp)
	sw $t0, -4708($fp)
	lw $t0, -4708($fp)
	sw $t0, -4712($fp)
	li $t0, 43748
	sw $t0, -4716($fp)
	li $t0, 38168
	sw $t0, -4720($fp)
	lw $t0, -4716($fp)
	lw $t1, -4720($fp)
	mul $t0, $t0, $t1
	sw $t0, -4724($fp)
	li $t0, 0
	sw $t0, -4728($fp)
	lw $t0, -328($fp)
	sw $t0, -4732($fp)
	lw $t1, -4732($fp)
	li $t2, 0
	bne $t1, $t2, label569
	j label568
label568:
	li $t0, 1
	sw $t0, -4728($fp)
label569:
	lw $t0, -4724($fp)
	lw $t1, -4728($fp)
	mul $t0, $t0, $t1
	sw $t0, -4736($fp)
	li $t0, 0
	sw $t0, -4740($fp)
	addi $t0, $fp, -2812
	sw $t0, -4744($fp)
	li $t0, 0
	sw $t0, -4748($fp)
	li $t0, 34435
	sw $t0, -4752($fp)
	lw $t1, -4752($fp)
	li $t2, 0
	bne $t1, $t2, label574
	j label573
label573:
	li $t0, 1
	sw $t0, -4748($fp)
label574:
	li $t0, 4
	lw $t1, -4748($fp)
	mul $t0, $t0, $t1
	sw $t0, -4756($fp)
	lw $t0, -4756($fp)
	lw $t1, -4744($fp)
	add $t0, $t0, $t1
	sw $t0, -4760($fp)
	lw $t0, -4760($fp)
	lw $t1, 0($t0)
	sw $t1, -4764($fp)
	lw $t1, -4764($fp)
	li $t2, 0
	bne $t1, $t2, label572
	j label571
label572:
	li $t0, 0
	sw $t0, -4768($fp)
	lw $t0, -700($fp)
	sw $t0, -4772($fp)
	lw $t1, -4772($fp)
	li $t2, 0
	bne $t1, $t2, label576
	j label575
label575:
	li $t0, 1
	sw $t0, -4768($fp)
label576:
	lw $t0, -4708($fp)
	sw $t0, -4776($fp)
	lw $t0, -4768($fp)
	lw $t1, -4776($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4780($fp)
	lw $t0, -796($fp)
	sw $t0, -4784($fp)
	lw $t0, -4780($fp)
	lw $t1, -4784($fp)
	mul $t0, $t0, $t1
	sw $t0, -4788($fp)
	lw $t1, -4788($fp)
	li $t2, 0
	bne $t1, $t2, label570
	j label571
label570:
	li $t0, 1
	sw $t0, -4740($fp)
label571:
	li $t0, 0
	sw $t0, -4792($fp)
	addi $t0, $fp, -2884
	sw $t0, -4796($fp)
	li $t0, 4
	sw $t0, -4800($fp)
	li $t0, 4
	lw $t1, -4800($fp)
	mul $t0, $t0, $t1
	sw $t0, -4804($fp)
	lw $t0, -4804($fp)
	lw $t1, -4796($fp)
	add $t0, $t0, $t1
	sw $t0, -4808($fp)
	lw $t0, -4808($fp)
	lw $t1, 0($t0)
	sw $t1, -4812($fp)
	lw $t1, -4812($fp)
	li $t2, 0
	bne $t1, $t2, label579
	j label578
label579:
	jal f6
	sw $v0, -4816($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -4652
	sw $t0, -4820($fp)
	lw $t0, 20($fp)
	sw $t0, -4824($fp)
	li $t0, 4
	lw $t1, -4824($fp)
	mul $t0, $t0, $t1
	sw $t0, -4828($fp)
	lw $t0, -4828($fp)
	lw $t1, -4820($fp)
	add $t0, $t0, $t1
	sw $t0, -4832($fp)
	lw $t0, -4832($fp)
	lw $t1, 0($t0)
	sw $t1, -4836($fp)
	lw $t0, -4816($fp)
	lw $t1, -4836($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4840($fp)
	lw $t1, -4840($fp)
	li $t2, 0
	bne $t1, $t2, label577
	j label578
label577:
	li $t0, 1
	sw $t0, -4792($fp)
label578:
	j label558
label557:
	li $t0, 0
	sw $t0, -4844($fp)
	li $t0, 49065
	sw $t0, -4848($fp)
	lw $t1, -4848($fp)
	li $t2, 0
	bne $t1, $t2, label582
	j label580
label582:
	lw $t0, -2916($fp)
	sw $t0, -4852($fp)
	lw $t1, -4852($fp)
	li $t2, 0
	bne $t1, $t2, label580
	j label581
label580:
	li $t0, 1
	sw $t0, -4844($fp)
label581:
	li $t0, 0
	sw $t0, -4856($fp)
	li $t0, 0
	sw $t0, -4860($fp)
	lw $t0, -2904($fp)
	sw $t0, -4864($fp)
	lw $t1, -4864($fp)
	li $t2, 0
	bne $t1, $t2, label586
	j label585
label585:
	li $t0, 1
	sw $t0, -4860($fp)
label586:
	li $t0, 64963
	sw $t0, -4868($fp)
	lw $t1, -4860($fp)
	lw $t2, -4868($fp)
	bne $t1, $t2, label583
	j label584
label583:
	li $t0, 1
	sw $t0, -4856($fp)
label584:
	addi $sp, $sp, -4
	lw $t0, -4844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4856($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4872($fp)
	addi $sp, $sp, 12
	lw $ra, -4($fp)
	lw $v0, -4872($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label558:
	lw $t0, -2892($fp)
	sw $t0, -4876($fp)
	lw $t0, -4876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2904($fp)
	sw $t0, -4880($fp)
	lw $t0, -4880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2916($fp)
	sw $t0, -4884($fp)
	lw $t0, -4884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2812
	sw $t0, -4888($fp)
	li $t0, 0
	sw $t0, -4892($fp)
	li $t0, 4
	lw $t1, -4892($fp)
	mul $t0, $t0, $t1
	sw $t0, -4896($fp)
	lw $t0, -4896($fp)
	lw $t1, -4888($fp)
	add $t0, $t0, $t1
	sw $t0, -4900($fp)
	lw $t0, -4900($fp)
	lw $t1, 0($t0)
	sw $t1, -4904($fp)
	lw $t0, -4904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2812
	sw $t0, -4908($fp)
	li $t0, 1
	sw $t0, -4912($fp)
	li $t0, 4
	lw $t1, -4912($fp)
	mul $t0, $t0, $t1
	sw $t0, -4916($fp)
	lw $t0, -4916($fp)
	lw $t1, -4908($fp)
	add $t0, $t0, $t1
	sw $t0, -4920($fp)
	lw $t0, -4920($fp)
	lw $t1, 0($t0)
	sw $t1, -4924($fp)
	lw $t0, -4924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2812
	sw $t0, -4928($fp)
	li $t0, 2
	sw $t0, -4932($fp)
	li $t0, 4
	lw $t1, -4932($fp)
	mul $t0, $t0, $t1
	sw $t0, -4936($fp)
	lw $t0, -4936($fp)
	lw $t1, -4928($fp)
	add $t0, $t0, $t1
	sw $t0, -4940($fp)
	lw $t0, -4940($fp)
	lw $t1, 0($t0)
	sw $t1, -4944($fp)
	lw $t0, -4944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3000($fp)
	sw $t0, -4948($fp)
	lw $t0, -4948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3012($fp)
	sw $t0, -4952($fp)
	lw $t0, -4952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3024($fp)
	sw $t0, -4956($fp)
	lw $t0, -4956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3036($fp)
	sw $t0, -4960($fp)
	lw $t0, -4960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3048($fp)
	sw $t0, -4964($fp)
	lw $t0, -4964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3060($fp)
	sw $t0, -4968($fp)
	lw $t0, -4968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2852
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
	addi $t0, $fp, -2852
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
	addi $t0, $fp, -2852
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
	addi $t0, $fp, -2852
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
	addi $t0, $fp, -2852
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
	addi $t0, $fp, -2852
	sw $t0, -5072($fp)
	li $t0, 5
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
	addi $t0, $fp, -2852
	sw $t0, -5092($fp)
	li $t0, 6
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
	addi $t0, $fp, -2852
	sw $t0, -5112($fp)
	li $t0, 7
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
	addi $t0, $fp, -2852
	sw $t0, -5132($fp)
	li $t0, 8
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
	lw $t0, -5148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2852
	sw $t0, -5152($fp)
	li $t0, 9
	sw $t0, -5156($fp)
	li $t0, 4
	lw $t1, -5156($fp)
	mul $t0, $t0, $t1
	sw $t0, -5160($fp)
	lw $t0, -5160($fp)
	lw $t1, -5152($fp)
	add $t0, $t0, $t1
	sw $t0, -5164($fp)
	lw $t0, -5164($fp)
	lw $t1, 0($t0)
	sw $t1, -5168($fp)
	lw $t0, -5168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3312($fp)
	sw $t0, -5172($fp)
	lw $t0, -5172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2884
	sw $t0, -5176($fp)
	li $t0, 0
	sw $t0, -5180($fp)
	li $t0, 4
	lw $t1, -5180($fp)
	mul $t0, $t0, $t1
	sw $t0, -5184($fp)
	lw $t0, -5184($fp)
	lw $t1, -5176($fp)
	add $t0, $t0, $t1
	sw $t0, -5188($fp)
	lw $t0, -5188($fp)
	lw $t1, 0($t0)
	sw $t1, -5192($fp)
	lw $t0, -5192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2884
	sw $t0, -5196($fp)
	li $t0, 1
	sw $t0, -5200($fp)
	li $t0, 4
	lw $t1, -5200($fp)
	mul $t0, $t0, $t1
	sw $t0, -5204($fp)
	lw $t0, -5204($fp)
	lw $t1, -5196($fp)
	add $t0, $t0, $t1
	sw $t0, -5208($fp)
	lw $t0, -5208($fp)
	lw $t1, 0($t0)
	sw $t1, -5212($fp)
	lw $t0, -5212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2884
	sw $t0, -5216($fp)
	li $t0, 2
	sw $t0, -5220($fp)
	li $t0, 4
	lw $t1, -5220($fp)
	mul $t0, $t0, $t1
	sw $t0, -5224($fp)
	lw $t0, -5224($fp)
	lw $t1, -5216($fp)
	add $t0, $t0, $t1
	sw $t0, -5228($fp)
	lw $t0, -5228($fp)
	lw $t1, 0($t0)
	sw $t1, -5232($fp)
	lw $t0, -5232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2884
	sw $t0, -5236($fp)
	li $t0, 3
	sw $t0, -5240($fp)
	li $t0, 4
	lw $t1, -5240($fp)
	mul $t0, $t0, $t1
	sw $t0, -5244($fp)
	lw $t0, -5244($fp)
	lw $t1, -5236($fp)
	add $t0, $t0, $t1
	sw $t0, -5248($fp)
	lw $t0, -5248($fp)
	lw $t1, 0($t0)
	sw $t1, -5252($fp)
	lw $t0, -5252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2884
	sw $t0, -5256($fp)
	li $t0, 4
	sw $t0, -5260($fp)
	li $t0, 4
	lw $t1, -5260($fp)
	mul $t0, $t0, $t1
	sw $t0, -5264($fp)
	lw $t0, -5264($fp)
	lw $t1, -5256($fp)
	add $t0, $t0, $t1
	sw $t0, -5268($fp)
	lw $t0, -5268($fp)
	lw $t1, 0($t0)
	sw $t1, -5272($fp)
	lw $t0, -5272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2884
	sw $t0, -5276($fp)
	li $t0, 5
	sw $t0, -5280($fp)
	li $t0, 4
	lw $t1, -5280($fp)
	mul $t0, $t0, $t1
	sw $t0, -5284($fp)
	lw $t0, -5284($fp)
	lw $t1, -5276($fp)
	add $t0, $t0, $t1
	sw $t0, -5288($fp)
	lw $t0, -5288($fp)
	lw $t1, 0($t0)
	sw $t1, -5292($fp)
	lw $t0, -5292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2884
	sw $t0, -5296($fp)
	li $t0, 6
	sw $t0, -5300($fp)
	li $t0, 4
	lw $t1, -5300($fp)
	mul $t0, $t0, $t1
	sw $t0, -5304($fp)
	lw $t0, -5304($fp)
	lw $t1, -5296($fp)
	add $t0, $t0, $t1
	sw $t0, -5308($fp)
	lw $t0, -5308($fp)
	lw $t1, 0($t0)
	sw $t1, -5312($fp)
	lw $t0, -5312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2884
	sw $t0, -5316($fp)
	li $t0, 7
	sw $t0, -5320($fp)
	li $t0, 4
	lw $t1, -5320($fp)
	mul $t0, $t0, $t1
	sw $t0, -5324($fp)
	lw $t0, -5324($fp)
	lw $t1, -5316($fp)
	add $t0, $t0, $t1
	sw $t0, -5328($fp)
	lw $t0, -5328($fp)
	lw $t1, 0($t0)
	sw $t1, -5332($fp)
	lw $t0, -5332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 51250
	sw $t0, -5336($fp)
	lw $t0, -328($fp)
	sw $t0, -5340($fp)
	lw $t0, -5336($fp)
	lw $t1, -5340($fp)
	add $t0, $t0, $t1
	sw $t0, -5344($fp)
	addi $t0, $fp, -32
	sw $t0, -5348($fp)
	lw $t0, -700($fp)
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
	li $t0, 0
	lw $t1, -5364($fp)
	sub $t0, $t0, $t1
	sw $t0, -5368($fp)
	li $t0, 0
	lw $t1, -5368($fp)
	sub $t0, $t0, $t1
	sw $t0, -5372($fp)
	lw $t0, -5344($fp)
	lw $t1, -5372($fp)
	add $t0, $t0, $t1
	sw $t0, -5376($fp)
	lw $ra, -4($fp)
	lw $v0, -5376($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -92
	sw $t0, -5380($fp)
	li $t0, 2
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
	lw $t1, -5396($fp)
	li $t2, 0
	bne $t1, $t2, label587
	j label588
label587:
label590:
	li $t0, 0
	sw $t0, -5400($fp)
	lw $t0, -3048($fp)
	sw $t0, -5404($fp)
	lw $t0, -5404($fp)
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -5408($fp)
	li $t0, 0
	sw $t0, -5412($fp)
	addi $t0, $fp, -92
	sw $t0, -5416($fp)
	lw $t0, 8($fp)
	sw $t0, -5420($fp)
	li $t0, 4
	lw $t1, -5420($fp)
	mul $t0, $t0, $t1
	sw $t0, -5424($fp)
	lw $t0, -5424($fp)
	lw $t1, -5416($fp)
	add $t0, $t0, $t1
	sw $t0, -5428($fp)
	lw $t0, -5428($fp)
	lw $t1, 0($t0)
	sw $t1, -5432($fp)
	lw $t0, -3060($fp)
	sw $t0, -5436($fp)
	lw $t1, -5432($fp)
	lw $t2, -5436($fp)
	beq $t1, $t2, label595
	j label596
label595:
	li $t0, 1
	sw $t0, -5412($fp)
label596:
	jal f8
	sw $v0, -5440($fp)
	addi $sp, $sp, 4
	li $t0, 15581
	sw $t0, -5444($fp)
	lw $t0, -5444($fp)
	sw $t0, -3000($fp)
	lw $t0, -3000($fp)
	sw $t0, -5448($fp)
	li $t0, 0
	sw $t0, -5452($fp)
	li $t0, 0
	sw $t0, -5456($fp)
	lw $t0, -3024($fp)
	sw $t0, -5460($fp)
	lw $t1, -5460($fp)
	li $t2, 0
	bne $t1, $t2, label600
	j label599
label599:
	li $t0, 1
	sw $t0, -5456($fp)
label600:
	lw $t0, -676($fp)
	sw $t0, -5464($fp)
	lw $t1, -5456($fp)
	lw $t2, -5464($fp)
	bgt $t1, $t2, label597
	j label598
label597:
	li $t0, 1
	sw $t0, -5452($fp)
label598:
	addi $sp, $sp, -4
	lw $t0, -5448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5452($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5468($fp)
	addi $sp, $sp, 12
	lw $t0, -520($fp)
	sw $t0, -5472($fp)
	lw $t0, -5468($fp)
	lw $t1, -5472($fp)
	mul $t0, $t0, $t1
	sw $t0, -5476($fp)
	li $t0, 0
	sw $t0, -5480($fp)
	lw $t0, -3036($fp)
	sw $t0, -5484($fp)
	lw $t1, -5484($fp)
	li $t2, 0
	bne $t1, $t2, label601
	j label604
label604:
	li $t0, 48937
	sw $t0, -5488($fp)
	lw $t1, -5488($fp)
	li $t2, 0
	bne $t1, $t2, label601
	j label603
label603:
	li $t0, 45611
	sw $t0, -5492($fp)
	lw $t1, -5492($fp)
	li $t2, 0
	bne $t1, $t2, label601
	j label602
label601:
	li $t0, 1
	sw $t0, -5480($fp)
label602:
	addi $sp, $sp, -4
	lw $t0, -5408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5480($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -5496($fp)
	addi $sp, $sp, 24
	lw $t1, -5496($fp)
	li $t2, 0
	bne $t1, $t2, label593
	j label594
label593:
	li $t0, 1
	sw $t0, -5400($fp)
label594:
	jal f8
	sw $v0, -5500($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -5500($fp)
	sub $t0, $t0, $t1
	sw $t0, -5504($fp)
	lw $t1, -5400($fp)
	lw $t2, -5504($fp)
	blt $t1, $t2, label591
	j label592
label591:
	li $t0, 0
	sw $t0, -5508($fp)
	addi $t0, $fp, -2812
	sw $t0, -5512($fp)
	lw $t0, -112($fp)
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
	bne $t1, $t2, label606
	j label605
label605:
	li $t0, 1
	sw $t0, -5508($fp)
label606:
	lw $t0, -5508($fp)
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -5532($fp)
	lw $ra, -4($fp)
	lw $v0, -5532($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label590
label592:
	j label589
label588:
	li $t0, 0
	sw $t0, -5536($fp)
	lw $t0, -3060($fp)
	sw $t0, -5540($fp)
	lw $t1, -5540($fp)
	li $t2, 0
	bne $t1, $t2, label609
	j label608
label609:
	addi $t0, $fp, -80
	sw $t0, -5544($fp)
	li $t0, 0
	sw $t0, -5548($fp)
	li $t0, 0
	sw $t0, -5552($fp)
	li $t0, 42525
	sw $t0, -5556($fp)
	lw $t0, 8($fp)
	sw $t0, -5560($fp)
	lw $t1, -5556($fp)
	lw $t2, -5560($fp)
	bgt $t1, $t2, label612
	j label613
label612:
	li $t0, 1
	sw $t0, -5552($fp)
label613:
	li $t0, 12282
	sw $t0, -5564($fp)
	lw $t1, -5552($fp)
	lw $t2, -5564($fp)
	bne $t1, $t2, label610
	j label611
label610:
	li $t0, 1
	sw $t0, -5548($fp)
label611:
	addi $t0, $fp, -2812
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
	lw $t0, -700($fp)
	sw $t0, -5588($fp)
	lw $t0, -5584($fp)
	lw $t1, -5588($fp)
	add $t0, $t0, $t1
	sw $t0, -5592($fp)
	lw $t0, -700($fp)
	sw $t0, -5596($fp)
	li $t0, 46399
	sw $t0, -5600($fp)
	lw $t0, -5596($fp)
	lw $t1, -5600($fp)
	sub $t0, $t0, $t1
	sw $t0, -5604($fp)
	addi $t0, $fp, -92
	sw $t0, -5608($fp)
	li $t0, 1
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
	lw $t0, -676($fp)
	sw $t0, -5628($fp)
	lw $t0, -5624($fp)
	lw $t1, -5628($fp)
	add $t0, $t0, $t1
	sw $t0, -5632($fp)
	li $t0, 0
	sw $t0, -5636($fp)
	lw $t0, -304($fp)
	sw $t0, -5640($fp)
	li $t0, 58743
	sw $t0, -5644($fp)
	lw $t0, -5640($fp)
	lw $t1, -5644($fp)
	sub $t0, $t0, $t1
	sw $t0, -5648($fp)
	lw $t1, -5648($fp)
	li $t2, 0
	bne $t1, $t2, label614
	j label616
label616:
	li $t0, 36591
	sw $t0, -5652($fp)
	lw $t1, -5652($fp)
	li $t2, 0
	bne $t1, $t2, label614
	j label615
label614:
	li $t0, 1
	sw $t0, -5636($fp)
label615:
	addi $sp, $sp, -4
	lw $t0, -5548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5636($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -5656($fp)
	addi $sp, $sp, 24
	li $t0, 4
	lw $t1, -5656($fp)
	mul $t0, $t0, $t1
	sw $t0, -5660($fp)
	lw $t0, -5660($fp)
	lw $t1, -5544($fp)
	add $t0, $t0, $t1
	sw $t0, -5664($fp)
	lw $t0, -5664($fp)
	lw $t1, 0($t0)
	sw $t1, -5668($fp)
	lw $t1, -5668($fp)
	li $t2, 0
	bne $t1, $t2, label607
	j label608
label607:
	li $t0, 1
	sw $t0, -5536($fp)
label608:
label589:
	lw $t0, -100($fp)
	sw $t0, -5672($fp)
	lw $t0, -5672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -112($fp)
	sw $t0, -5676($fp)
	lw $t0, -5676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -124($fp)
	sw $t0, -5680($fp)
	lw $t0, -5680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -5684($fp)
	li $t0, 0
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
	lw $t0, -5700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -5704($fp)
	li $t0, 1
	sw $t0, -5708($fp)
	li $t0, 4
	lw $t1, -5708($fp)
	mul $t0, $t0, $t1
	sw $t0, -5712($fp)
	lw $t0, -5712($fp)
	lw $t1, -5704($fp)
	add $t0, $t0, $t1
	sw $t0, -5716($fp)
	lw $t0, -5716($fp)
	lw $t1, 0($t0)
	sw $t1, -5720($fp)
	lw $t0, -5720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -5724($fp)
	li $t0, 2
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
	lw $t0, -5740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -5744($fp)
	li $t0, 3
	sw $t0, -5748($fp)
	li $t0, 4
	lw $t1, -5748($fp)
	mul $t0, $t0, $t1
	sw $t0, -5752($fp)
	lw $t0, -5752($fp)
	lw $t1, -5744($fp)
	add $t0, $t0, $t1
	sw $t0, -5756($fp)
	lw $t0, -5756($fp)
	lw $t1, 0($t0)
	sw $t1, -5760($fp)
	lw $t0, -5760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -5764($fp)
	li $t0, 4
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
	lw $t0, -5780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -5784($fp)
	li $t0, 5
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
	lw $t0, -5800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -5804($fp)
	li $t0, 6
	sw $t0, -5808($fp)
	li $t0, 4
	lw $t1, -5808($fp)
	mul $t0, $t0, $t1
	sw $t0, -5812($fp)
	lw $t0, -5812($fp)
	lw $t1, -5804($fp)
	add $t0, $t0, $t1
	sw $t0, -5816($fp)
	lw $t0, -5816($fp)
	lw $t1, 0($t0)
	sw $t1, -5820($fp)
	lw $t0, -5820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -304($fp)
	sw $t0, -5824($fp)
	lw $t0, -5824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -316($fp)
	sw $t0, -5828($fp)
	lw $t0, -5828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -328($fp)
	sw $t0, -5832($fp)
	lw $t0, -5832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -340($fp)
	sw $t0, -5836($fp)
	lw $t0, -5836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -352($fp)
	sw $t0, -5840($fp)
	lw $t0, -5840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -364($fp)
	sw $t0, -5844($fp)
	lw $t0, -5844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -5848($fp)
	li $t0, 0
	sw $t0, -5852($fp)
	li $t0, 4
	lw $t1, -5852($fp)
	mul $t0, $t0, $t1
	sw $t0, -5856($fp)
	lw $t0, -5856($fp)
	lw $t1, -5848($fp)
	add $t0, $t0, $t1
	sw $t0, -5860($fp)
	lw $t0, -5860($fp)
	lw $t1, 0($t0)
	sw $t1, -5864($fp)
	lw $t0, -5864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -5868($fp)
	li $t0, 1
	sw $t0, -5872($fp)
	li $t0, 4
	lw $t1, -5872($fp)
	mul $t0, $t0, $t1
	sw $t0, -5876($fp)
	lw $t0, -5876($fp)
	lw $t1, -5868($fp)
	add $t0, $t0, $t1
	sw $t0, -5880($fp)
	lw $t0, -5880($fp)
	lw $t1, 0($t0)
	sw $t1, -5884($fp)
	lw $t0, -5884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -5888($fp)
	li $t0, 2
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
	lw $t0, -5904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -5908($fp)
	li $t0, 3
	sw $t0, -5912($fp)
	li $t0, 4
	lw $t1, -5912($fp)
	mul $t0, $t0, $t1
	sw $t0, -5916($fp)
	lw $t0, -5916($fp)
	lw $t1, -5908($fp)
	add $t0, $t0, $t1
	sw $t0, -5920($fp)
	lw $t0, -5920($fp)
	lw $t1, 0($t0)
	sw $t1, -5924($fp)
	lw $t0, -5924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -5928($fp)
	li $t0, 4
	sw $t0, -5932($fp)
	li $t0, 4
	lw $t1, -5932($fp)
	mul $t0, $t0, $t1
	sw $t0, -5936($fp)
	lw $t0, -5936($fp)
	lw $t1, -5928($fp)
	add $t0, $t0, $t1
	sw $t0, -5940($fp)
	lw $t0, -5940($fp)
	lw $t1, 0($t0)
	sw $t1, -5944($fp)
	lw $t0, -5944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -5948($fp)
	li $t0, 5
	sw $t0, -5952($fp)
	li $t0, 4
	lw $t1, -5952($fp)
	mul $t0, $t0, $t1
	sw $t0, -5956($fp)
	lw $t0, -5956($fp)
	lw $t1, -5948($fp)
	add $t0, $t0, $t1
	sw $t0, -5960($fp)
	lw $t0, -5960($fp)
	lw $t1, 0($t0)
	sw $t1, -5964($fp)
	lw $t0, -5964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -520($fp)
	sw $t0, -5968($fp)
	lw $t0, -5968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -5972($fp)
	li $t0, 0
	sw $t0, -5976($fp)
	li $t0, 4
	lw $t1, -5976($fp)
	mul $t0, $t0, $t1
	sw $t0, -5980($fp)
	lw $t0, -5980($fp)
	lw $t1, -5972($fp)
	add $t0, $t0, $t1
	sw $t0, -5984($fp)
	lw $t0, -5984($fp)
	lw $t1, 0($t0)
	sw $t1, -5988($fp)
	lw $t0, -5988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -5992($fp)
	li $t0, 1
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
	lw $t0, -6008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -6012($fp)
	li $t0, 2
	sw $t0, -6016($fp)
	li $t0, 4
	lw $t1, -6016($fp)
	mul $t0, $t0, $t1
	sw $t0, -6020($fp)
	lw $t0, -6020($fp)
	lw $t1, -6012($fp)
	add $t0, $t0, $t1
	sw $t0, -6024($fp)
	lw $t0, -6024($fp)
	lw $t1, 0($t0)
	sw $t1, -6028($fp)
	lw $t0, -6028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -6032($fp)
	li $t0, 3
	sw $t0, -6036($fp)
	li $t0, 4
	lw $t1, -6036($fp)
	mul $t0, $t0, $t1
	sw $t0, -6040($fp)
	lw $t0, -6040($fp)
	lw $t1, -6032($fp)
	add $t0, $t0, $t1
	sw $t0, -6044($fp)
	lw $t0, -6044($fp)
	lw $t1, 0($t0)
	sw $t1, -6048($fp)
	lw $t0, -6048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -6052($fp)
	li $t0, 4
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
	lw $t0, -6068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -6072($fp)
	li $t0, 5
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
	lw $t0, -6088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -676($fp)
	sw $t0, -6092($fp)
	lw $t0, -6092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -688($fp)
	sw $t0, -6096($fp)
	lw $t0, -6096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -700($fp)
	sw $t0, -6100($fp)
	lw $t0, -6100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -6104($fp)
	li $t0, 0
	sw $t0, -6108($fp)
	li $t0, 4
	lw $t1, -6108($fp)
	mul $t0, $t0, $t1
	sw $t0, -6112($fp)
	lw $t0, -6112($fp)
	lw $t1, -6104($fp)
	add $t0, $t0, $t1
	sw $t0, -6116($fp)
	lw $t0, -6116($fp)
	lw $t1, 0($t0)
	sw $t1, -6120($fp)
	lw $t0, -6120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -6124($fp)
	li $t0, 1
	sw $t0, -6128($fp)
	li $t0, 4
	lw $t1, -6128($fp)
	mul $t0, $t0, $t1
	sw $t0, -6132($fp)
	lw $t0, -6132($fp)
	lw $t1, -6124($fp)
	add $t0, $t0, $t1
	sw $t0, -6136($fp)
	lw $t0, -6136($fp)
	lw $t1, 0($t0)
	sw $t1, -6140($fp)
	lw $t0, -6140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -6144($fp)
	li $t0, 2
	sw $t0, -6148($fp)
	li $t0, 4
	lw $t1, -6148($fp)
	mul $t0, $t0, $t1
	sw $t0, -6152($fp)
	lw $t0, -6152($fp)
	lw $t1, -6144($fp)
	add $t0, $t0, $t1
	sw $t0, -6156($fp)
	lw $t0, -6156($fp)
	lw $t1, 0($t0)
	sw $t1, -6160($fp)
	lw $t0, -6160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -784($fp)
	sw $t0, -6164($fp)
	lw $t0, -6164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -796($fp)
	sw $t0, -6168($fp)
	lw $t0, -6168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -808($fp)
	sw $t0, -6172($fp)
	lw $t0, -6172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6176($fp)
	li $t0, 0
	sw $t0, -6180($fp)
	li $t0, 0
	sw $t0, -6184($fp)
	lw $t0, -688($fp)
	sw $t0, -6188($fp)
	li $t0, 51381
	sw $t0, -6192($fp)
	lw $t1, -6188($fp)
	lw $t2, -6192($fp)
	bne $t1, $t2, label621
	j label622
label621:
	li $t0, 1
	sw $t0, -6184($fp)
label622:
	li $t0, 0
	sw $t0, -6196($fp)
	li $t0, 9144
	sw $t0, -6200($fp)
	lw $t0, -700($fp)
	sw $t0, -6204($fp)
	lw $t1, -6200($fp)
	lw $t2, -6204($fp)
	bne $t1, $t2, label625
	j label624
label625:
	lw $t0, 20($fp)
	sw $t0, -6208($fp)
	lw $t1, -6208($fp)
	li $t2, 0
	bne $t1, $t2, label623
	j label624
label623:
	li $t0, 1
	sw $t0, -6196($fp)
label624:
	li $t0, 4603
	sw $t0, -6212($fp)
	lw $t0, -328($fp)
	sw $t0, -6216($fp)
	lw $t0, -6212($fp)
	lw $t1, -6216($fp)
	add $t0, $t0, $t1
	sw $t0, -6220($fp)
	li $t0, 33293
	sw $t0, -6224($fp)
	lw $t0, -6220($fp)
	lw $t1, -6224($fp)
	add $t0, $t0, $t1
	sw $t0, -6228($fp)
	li $t0, 0
	sw $t0, -6232($fp)
	lw $t0, -340($fp)
	sw $t0, -6236($fp)
	lw $t1, -6236($fp)
	li $t2, 0
	bne $t1, $t2, label626
	j label628
label628:
	li $t0, 45065
	sw $t0, -6240($fp)
	lw $t1, -6240($fp)
	li $t2, 0
	bne $t1, $t2, label626
	j label627
label626:
	li $t0, 1
	sw $t0, -6232($fp)
label627:
	li $t0, 42477
	sw $t0, -6244($fp)
	lw $t0, -6244($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -6248($fp)
	addi $sp, $sp, -4
	lw $t0, -6184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6248($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -6252($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -92
	sw $t0, -6256($fp)
	li $t0, 1
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
	lw $t0, -6252($fp)
	lw $t1, -6272($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6276($fp)
	li $t0, 53218
	sw $t0, -6280($fp)
	lw $t1, -6276($fp)
	lw $t2, -6280($fp)
	ble $t1, $t2, label619
	j label620
label619:
	li $t0, 1
	sw $t0, -6180($fp)
label620:
	li $t0, 0
	sw $t0, -6284($fp)
	li $t0, 0
	sw $t0, -6288($fp)
	lw $t0, -352($fp)
	sw $t0, -6292($fp)
	li $t0, 17068
	sw $t0, -6296($fp)
	lw $t1, -6292($fp)
	lw $t2, -6296($fp)
	bge $t1, $t2, label631
	j label632
label631:
	li $t0, 1
	sw $t0, -6288($fp)
label632:
	lw $t0, 12($fp)
	sw $t0, -6300($fp)
	lw $t1, -6288($fp)
	lw $t2, -6300($fp)
	bge $t1, $t2, label629
	j label630
label629:
	li $t0, 1
	sw $t0, -6284($fp)
label630:
	lw $t1, -6180($fp)
	lw $t2, -6284($fp)
	bne $t1, $t2, label617
	j label618
label617:
	li $t0, 1
	sw $t0, -6176($fp)
label618:
	lw $ra, -4($fp)
	lw $v0, -6176($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, 4($fp)
	sw $t0, -8($fp)
	lw $ra, -4($fp)
	lw $v0, -8($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -844
	li $t0, 42309
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, -20($fp)
	li $t0, 22117
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
	li $t0, 4123
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	li $t0, 1922
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	li $t0, 21545
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	li $t0, 53188
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	li $t0, 53172
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	li $t0, 27597
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -116($fp)
	li $t0, 0
	sw $t0, -120($fp)
	li $t0, 0
	sw $t0, -124($fp)
	li $t0, 36573
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -132($fp)
	jal f8
	sw $v0, -136($fp)
	addi $sp, $sp, 4
	li $t0, 48779
	sw $t0, -140($fp)
	li $t0, 0
	sw $t0, -144($fp)
	lw $t0, -64($fp)
	sw $t0, -148($fp)
	lw $t1, -148($fp)
	li $t2, 0
	bne $t1, $t2, label638
	j label637
label637:
	li $t0, 1
	sw $t0, -144($fp)
label638:
	addi $sp, $sp, -4
	lw $t0, -132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -144($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -152($fp)
	addi $sp, $sp, 20
	lw $t1, -152($fp)
	li $t2, 0
	bne $t1, $t2, label636
	j label635
label635:
	li $t0, 1
	sw $t0, -124($fp)
label636:
	addi $t0, $fp, -8
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
	lw $t0, -112($fp)
	sw $t0, -176($fp)
	lw $t0, -172($fp)
	lw $t1, -176($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -180($fp)
	lw $t0, -52($fp)
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -188($fp)
	addi $sp, $sp, -4
	lw $t0, -188($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -192($fp)
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	lw $t1, -192($fp)
	mul $t0, $t0, $t1
	sw $t0, -196($fp)
	lw $t1, -124($fp)
	lw $t2, -196($fp)
	beq $t1, $t2, label633
	j label634
label633:
	li $t0, 1
	sw $t0, -120($fp)
label634:
	li $t0, 0
	sw $t0, -200($fp)
	li $t0, 0
	sw $t0, -204($fp)
	li $t0, 0
	sw $t0, -208($fp)
	li $t0, 29780
	sw $t0, -212($fp)
	lw $t1, -212($fp)
	li $t2, 0
	bne $t1, $t2, label644
	j label643
label643:
	li $t0, 1
	sw $t0, -208($fp)
label644:
	li $t0, 0
	lw $t1, -208($fp)
	sub $t0, $t0, $t1
	sw $t0, -216($fp)
	lw $t0, -100($fp)
	sw $t0, -220($fp)
	lw $t1, -216($fp)
	lw $t2, -220($fp)
	ble $t1, $t2, label641
	j label642
label641:
	li $t0, 1
	sw $t0, -204($fp)
label642:
	li $t0, 18523
	sw $t0, -224($fp)
	li $t0, 0
	sw $t0, -228($fp)
	li $t0, 44264
	sw $t0, -232($fp)
	li $t0, 14769
	sw $t0, -236($fp)
	lw $t0, -232($fp)
	lw $t1, -236($fp)
	mul $t0, $t0, $t1
	sw $t0, -240($fp)
	lw $t0, -52($fp)
	sw $t0, -244($fp)
	lw $t1, -240($fp)
	lw $t2, -244($fp)
	bgt $t1, $t2, label645
	j label646
label645:
	li $t0, 1
	sw $t0, -228($fp)
label646:
	addi $sp, $sp, -4
	lw $t0, -224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -228($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -248($fp)
	addi $sp, $sp, 12
	lw $t1, -204($fp)
	lw $t2, -248($fp)
	bgt $t1, $t2, label639
	j label640
label639:
	li $t0, 1
	sw $t0, -200($fp)
label640:
	li $t0, 27226
	sw $t0, -252($fp)
	li $t0, 2116
	sw $t0, -256($fp)
	lw $t0, -252($fp)
	lw $t1, -256($fp)
	mul $t0, $t0, $t1
	sw $t0, -260($fp)
	li $t0, 34379
	sw $t0, -264($fp)
	lw $t0, -260($fp)
	lw $t1, -264($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -268($fp)
	li $t0, 22097
	sw $t0, -272($fp)
	lw $t0, -16($fp)
	sw $t0, -276($fp)
	lw $t0, -100($fp)
	sw $t0, -280($fp)
	lw $t0, -276($fp)
	lw $t1, -280($fp)
	add $t0, $t0, $t1
	sw $t0, -284($fp)
	li $t0, 25127
	sw $t0, -288($fp)
	addi $sp, $sp, -4
	lw $t0, -268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -288($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -292($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -296($fp)
	li $t0, 0
	sw $t0, -300($fp)
	li $t0, 0
	sw $t0, -304($fp)
	li $t0, 4168
	sw $t0, -308($fp)
	lw $t1, -308($fp)
	li $t2, 0
	bne $t1, $t2, label652
	j label651
label651:
	li $t0, 1
	sw $t0, -304($fp)
label652:
	li $t0, 47181
	sw $t0, -312($fp)
	li $t0, 0
	lw $t1, -312($fp)
	sub $t0, $t0, $t1
	sw $t0, -316($fp)
	lw $t0, -304($fp)
	lw $t1, -316($fp)
	sub $t0, $t0, $t1
	sw $t0, -320($fp)
	lw $t0, -100($fp)
	sw $t0, -324($fp)
	lw $t1, -320($fp)
	lw $t2, -324($fp)
	beq $t1, $t2, label649
	j label650
label649:
	li $t0, 1
	sw $t0, -300($fp)
label650:
	li $t0, 38983
	sw $t0, -328($fp)
	lw $t1, -300($fp)
	lw $t2, -328($fp)
	bne $t1, $t2, label647
	j label648
label647:
	li $t0, 1
	sw $t0, -296($fp)
label648:
	li $t0, 37461
	sw $t0, -360($fp)
	addi $t0, $fp, -356
	sw $t0, -364($fp)
	li $t0, 0
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
	li $t0, 56325
	sw $t0, -384($fp)
	addi $t0, $fp, -356
	sw $t0, -388($fp)
	li $t0, 1
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
	li $t0, 24828
	sw $t0, -408($fp)
	addi $t0, $fp, -356
	sw $t0, -412($fp)
	li $t0, 2
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
	li $t0, 10781
	sw $t0, -432($fp)
	addi $t0, $fp, -356
	sw $t0, -436($fp)
	li $t0, 3
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
	li $t0, 60467
	sw $t0, -456($fp)
	addi $t0, $fp, -356
	sw $t0, -460($fp)
	li $t0, 4
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
	li $t0, 12511
	sw $t0, -480($fp)
	addi $t0, $fp, -356
	sw $t0, -484($fp)
	li $t0, 5
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
	li $t0, 27850
	sw $t0, -504($fp)
	addi $t0, $fp, -356
	sw $t0, -508($fp)
	li $t0, 6
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
	li $t0, 0
	sw $t0, -528($fp)
	li $t0, 37240
	sw $t0, -532($fp)
	lw $t0, -16($fp)
	sw $t0, -536($fp)
	lw $t0, -532($fp)
	lw $t1, -536($fp)
	add $t0, $t0, $t1
	sw $t0, -540($fp)
	lw $t0, -88($fp)
	sw $t0, -544($fp)
	li $t0, 34628
	sw $t0, -548($fp)
	lw $t0, -544($fp)
	lw $t1, -548($fp)
	sub $t0, $t0, $t1
	sw $t0, -552($fp)
	lw $t1, -540($fp)
	lw $t2, -552($fp)
	bge $t1, $t2, label653
	j label654
label653:
	li $t0, 1
	sw $t0, -528($fp)
label654:
	lw $t0, -528($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -556($fp)
	li $t0, 31973
	sw $t0, -560($fp)
	li $t0, 0
	sw $t0, -564($fp)
	addi $t0, $fp, -356
	sw $t0, -568($fp)
	li $t0, 4
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
	lw $t0, -88($fp)
	sw $t0, -588($fp)
	lw $t0, -584($fp)
	lw $t1, -588($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -592($fp)
	li $t0, 19625
	sw $t0, -596($fp)
	li $t0, 0
	lw $t1, -596($fp)
	sub $t0, $t0, $t1
	sw $t0, -600($fp)
	lw $t0, -52($fp)
	sw $t0, -604($fp)
	lw $t0, -600($fp)
	lw $t1, -604($fp)
	add $t0, $t0, $t1
	sw $t0, -608($fp)
	li $t0, 56173
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -616($fp)
	li $t0, 0
	sw $t0, -620($fp)
	li $t0, 39162
	sw $t0, -624($fp)
	lw $t1, -624($fp)
	li $t2, 0
	bne $t1, $t2, label657
	j label658
label657:
	li $t0, 1
	sw $t0, -620($fp)
label658:
	addi $sp, $sp, -4
	lw $t0, -592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -620($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -628($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -628($fp)
	sub $t0, $t0, $t1
	sw $t0, -632($fp)
	lw $t1, -632($fp)
	li $t2, 0
	bne $t1, $t2, label656
	j label655
label655:
	li $t0, 1
	sw $t0, -564($fp)
label656:
	lw $t0, -560($fp)
	lw $t1, -564($fp)
	add $t0, $t0, $t1
	sw $t0, -636($fp)
	li $t0, 0
	sw $t0, -640($fp)
	li $t0, 2868
	sw $t0, -644($fp)
	li $t0, 0
	lw $t1, -644($fp)
	sub $t0, $t0, $t1
	sw $t0, -648($fp)
	lw $t1, -648($fp)
	li $t2, 0
	bne $t1, $t2, label660
	j label659
label659:
	li $t0, 1
	sw $t0, -640($fp)
label660:
	li $t0, 25907
	sw $t0, -652($fp)
	lw $t0, -100($fp)
	sw $t0, -656($fp)
	lw $t0, -652($fp)
	lw $t1, -656($fp)
	mul $t0, $t0, $t1
	sw $t0, -660($fp)
	lw $t0, -64($fp)
	sw $t0, -664($fp)
	lw $t0, -88($fp)
	sw $t0, -668($fp)
	lw $t0, -664($fp)
	lw $t1, -668($fp)
	mul $t0, $t0, $t1
	sw $t0, -672($fp)
	li $t0, 63372
	sw $t0, -676($fp)
	lw $t0, -672($fp)
	lw $t1, -676($fp)
	sub $t0, $t0, $t1
	sw $t0, -680($fp)
	addi $sp, $sp, -4
	lw $t0, -660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -680($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -684($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -684($fp)
	sub $t0, $t0, $t1
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -692($fp)
	lw $t1, -692($fp)
	li $t2, 0
	bne $t1, $t2, label661
	j label662
label661:
	li $t0, 0
	sw $t0, -696($fp)
	addi $t0, $fp, -8
	sw $t0, -700($fp)
	lw $t0, -88($fp)
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
	li $t0, 1692
	sw $t0, -720($fp)
	li $t0, 0
	lw $t1, -720($fp)
	sub $t0, $t0, $t1
	sw $t0, -724($fp)
	lw $t0, -716($fp)
	lw $t1, -724($fp)
	mul $t0, $t0, $t1
	sw $t0, -728($fp)
	li $t0, 0
	lw $t1, -728($fp)
	sub $t0, $t0, $t1
	sw $t0, -732($fp)
	lw $t0, -88($fp)
	sw $t0, -736($fp)
	lw $t0, -732($fp)
	lw $t1, -736($fp)
	add $t0, $t0, $t1
	sw $t0, -740($fp)
	li $t0, 27616
	sw $t0, -744($fp)
	lw $t1, -740($fp)
	lw $t2, -744($fp)
	bne $t1, $t2, label664
	j label665
label664:
	li $t0, 1
	sw $t0, -696($fp)
label665:
	lw $ra, -4($fp)
	lw $v0, -696($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label663
label662:
	addi $t0, $fp, -8
	sw $t0, -748($fp)
	lw $t0, -16($fp)
	sw $t0, -752($fp)
	li $t0, 4
	lw $t1, -752($fp)
	mul $t0, $t0, $t1
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	lw $t1, -748($fp)
	add $t0, $t0, $t1
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	lw $t1, 0($t0)
	sw $t1, -764($fp)
	li $t0, 0
	lw $t1, -764($fp)
	sub $t0, $t0, $t1
	sw $t0, -768($fp)
	li $t0, 0
	lw $t1, -768($fp)
	sub $t0, $t0, $t1
	sw $t0, -772($fp)
	li $t0, 0
	lw $t1, -772($fp)
	sub $t0, $t0, $t1
	sw $t0, -776($fp)
	lw $ra, -4($fp)
	lw $v0, -776($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label663:
	lw $t0, -16($fp)
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -784($fp)
	li $t0, 0
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
	lw $t0, -800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -52($fp)
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -64($fp)
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -76($fp)
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -88($fp)
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -100($fp)
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 4635
	sw $t0, -824($fp)
	li $t0, 0
	lw $t1, -824($fp)
	sub $t0, $t0, $t1
	sw $t0, -828($fp)
	li $t0, 0
	lw $t1, -828($fp)
	sub $t0, $t0, $t1
	sw $t0, -832($fp)
	li $t0, 0
	lw $t1, -832($fp)
	sub $t0, $t0, $t1
	sw $t0, -836($fp)
	li $t0, 0
	sw $t0, -840($fp)
	li $t0, 16461
	sw $t0, -844($fp)
	lw $t1, -844($fp)
	li $t2, 0
	bne $t1, $t2, label667
	j label666
label666:
	li $t0, 1
	sw $t0, -840($fp)
label667:
	lw $t0, -836($fp)
	lw $t1, -840($fp)
	sub $t0, $t0, $t1
	sw $t0, -848($fp)
	lw $ra, -4($fp)
	lw $v0, -848($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -24
	lw $t0, 4($fp)
	sw $t0, -8($fp)
	li $t0, 46139
	sw $t0, -12($fp)
	lw $t0, 4($fp)
	sw $t0, -16($fp)
	lw $t0, -12($fp)
	lw $t1, -16($fp)
	add $t0, $t0, $t1
	sw $t0, -20($fp)
	addi $sp, $sp, -4
	lw $t0, -20($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -24($fp)
	addi $sp, $sp, 8
	lw $t0, -8($fp)
	lw $t1, -24($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -28($fp)
	lw $ra, -4($fp)
	lw $v0, -28($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f14:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -96
	li $t0, 29762
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 0
	sw $t0, -20($fp)
	li $t0, 38559
	sw $t0, -24($fp)
	lw $t1, -24($fp)
	li $t2, 0
	bne $t1, $t2, label669
	j label671
label671:
	lw $t0, 4($fp)
	sw $t0, -28($fp)
	lw $t0, 4($fp)
	sw $t0, -32($fp)
	lw $t0, -28($fp)
	lw $t1, -32($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -36($fp)
	lw $t0, 4($fp)
	sw $t0, -40($fp)
	lw $t1, -36($fp)
	lw $t2, -40($fp)
	beq $t1, $t2, label670
	j label669
label670:
	li $t0, 0
	sw $t0, -44($fp)
	li $t0, 7830
	sw $t0, -48($fp)
	lw $t0, -12($fp)
	sw $t0, -52($fp)
	lw $t0, -48($fp)
	lw $t1, -52($fp)
	add $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -12($fp)
	sw $t0, -60($fp)
	lw $t1, -56($fp)
	lw $t2, -60($fp)
	blt $t1, $t2, label672
	j label673
label672:
	li $t0, 1
	sw $t0, -44($fp)
label673:
	li $t0, 31879
	sw $t0, -64($fp)
	li $t0, 0
	lw $t1, -64($fp)
	sub $t0, $t0, $t1
	sw $t0, -68($fp)
	lw $t1, -44($fp)
	lw $t2, -68($fp)
	bge $t1, $t2, label668
	j label669
label668:
	li $t0, 1
	sw $t0, -20($fp)
label669:
	lw $t0, -12($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -76($fp)
	lw $t0, -12($fp)
	sw $t0, -80($fp)
	li $t0, 0
	lw $t1, -80($fp)
	sub $t0, $t0, $t1
	sw $t0, -84($fp)
	li $t0, 7402
	sw $t0, -88($fp)
	lw $t1, -84($fp)
	lw $t2, -88($fp)
	bne $t1, $t2, label674
	j label676
label676:
	lw $t0, 8($fp)
	sw $t0, -92($fp)
	li $t0, 11998
	sw $t0, -96($fp)
	lw $t1, -92($fp)
	lw $t2, -96($fp)
	blt $t1, $t2, label674
	j label675
label674:
	li $t0, 1
	sw $t0, -76($fp)
label675:
	lw $t0, -76($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -100($fp)
	lw $ra, -4($fp)
	lw $v0, -100($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f15:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1148
	li $t0, 13524
	sw $t0, -60($fp)
	addi $t0, $fp, -20
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
	li $t0, 46385
	sw $t0, -84($fp)
	addi $t0, $fp, -20
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
	li $t0, 49459
	sw $t0, -108($fp)
	addi $t0, $fp, -20
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
	li $t0, 4314
	sw $t0, -132($fp)
	addi $t0, $fp, -20
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
	li $t0, 5678
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	li $t0, 60241
	sw $t0, -168($fp)
	addi $t0, $fp, -56
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
	li $t0, 64781
	sw $t0, -192($fp)
	addi $t0, $fp, -56
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
	li $t0, 18189
	sw $t0, -216($fp)
	addi $t0, $fp, -56
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
	li $t0, 22555
	sw $t0, -240($fp)
	addi $t0, $fp, -56
	sw $t0, -244($fp)
	li $t0, 3
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
	li $t0, 36485
	sw $t0, -264($fp)
	addi $t0, $fp, -56
	sw $t0, -268($fp)
	li $t0, 4
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
	li $t0, 52817
	sw $t0, -288($fp)
	addi $t0, $fp, -56
	sw $t0, -292($fp)
	li $t0, 5
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
	li $t0, 54528
	sw $t0, -312($fp)
	addi $t0, $fp, -56
	sw $t0, -316($fp)
	li $t0, 6
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
	li $t0, 10112
	sw $t0, -336($fp)
	addi $t0, $fp, -56
	sw $t0, -340($fp)
	li $t0, 7
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
	li $t0, 43455
	sw $t0, -360($fp)
	addi $t0, $fp, -56
	sw $t0, -364($fp)
	li $t0, 8
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
	li $t0, 8617
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -392($fp)
	li $t0, 36910
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
	li $t0, 61690
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -416($fp)
	li $t0, 11485
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	li $t0, 0
	sw $t0, -432($fp)
	li $t0, 0
	sw $t0, -436($fp)
	li $t0, 34746
	sw $t0, -440($fp)
	li $t0, 22061
	sw $t0, -444($fp)
	lw $t0, -440($fp)
	lw $t1, -444($fp)
	sub $t0, $t0, $t1
	sw $t0, -448($fp)
	lw $t0, 4($fp)
	sw $t0, -452($fp)
	lw $t1, -448($fp)
	lw $t2, -452($fp)
	bge $t1, $t2, label679
	j label680
label679:
	li $t0, 1
	sw $t0, -436($fp)
label680:
	lw $t0, 16($fp)
	sw $t0, -456($fp)
	lw $t1, -436($fp)
	lw $t2, -456($fp)
	bge $t1, $t2, label677
	j label678
label677:
	li $t0, 1
	sw $t0, -432($fp)
label678:
	lw $t0, -432($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -460($fp)
	li $t0, 0
	sw $t0, -464($fp)
	lw $t0, -400($fp)
	sw $t0, -468($fp)
	li $t0, 0
	sw $t0, -472($fp)
	li $t0, 2662
	sw $t0, -476($fp)
	lw $t1, -476($fp)
	li $t2, 0
	bne $t1, $t2, label686
	j label684
label686:
	lw $t0, 12($fp)
	sw $t0, -480($fp)
	lw $t1, -480($fp)
	li $t2, 0
	bne $t1, $t2, label684
	j label685
label684:
	li $t0, 1
	sw $t0, -472($fp)
label685:
	li $t0, 42966
	sw $t0, -484($fp)
	li $t0, 1
	sw $t0, -488($fp)
	lw $t0, -484($fp)
	lw $t1, -488($fp)
	mul $t0, $t0, $t1
	sw $t0, -492($fp)
	lw $t0, -400($fp)
	sw $t0, -496($fp)
	li $t0, 0
	sw $t0, -500($fp)
	li $t0, 13177
	sw $t0, -504($fp)
	li $t0, 62363
	sw $t0, -508($fp)
	lw $t1, -504($fp)
	lw $t2, -508($fp)
	beq $t1, $t2, label687
	j label689
label689:
	li $t0, 26697
	sw $t0, -512($fp)
	lw $t1, -512($fp)
	li $t2, 0
	bne $t1, $t2, label687
	j label688
label687:
	li $t0, 1
	sw $t0, -500($fp)
label688:
	li $t0, 0
	sw $t0, -516($fp)
	lw $t0, 12($fp)
	sw $t0, -520($fp)
	lw $t1, -520($fp)
	li $t2, 0
	bne $t1, $t2, label691
	j label690
label690:
	li $t0, 1
	sw $t0, -516($fp)
label691:
	lw $t0, -160($fp)
	sw $t0, -524($fp)
	lw $t0, -516($fp)
	lw $t1, -524($fp)
	sub $t0, $t0, $t1
	sw $t0, -528($fp)
	addi $sp, $sp, -4
	lw $t0, -500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -528($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -532($fp)
	addi $sp, $sp, 12
	li $t0, 29639
	sw $t0, -536($fp)
	lw $t0, -532($fp)
	lw $t1, -536($fp)
	mul $t0, $t0, $t1
	sw $t0, -540($fp)
	addi $sp, $sp, -4
	lw $t0, -492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -540($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -544($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -544($fp)
	sub $t0, $t0, $t1
	sw $t0, -548($fp)
	addi $sp, $sp, -4
	lw $t0, -472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -548($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -552($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -552($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -556($fp)
	addi $sp, $sp, 12
	lw $t0, 12($fp)
	sw $t0, -560($fp)
	lw $t0, -400($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -568($fp)
	addi $sp, $sp, -4
	lw $t0, -560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -568($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -572($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -572($fp)
	sub $t0, $t0, $t1
	sw $t0, -576($fp)
	lw $t0, -556($fp)
	lw $t1, -576($fp)
	mul $t0, $t0, $t1
	sw $t0, -580($fp)
	li $t0, 0
	lw $t1, -580($fp)
	sub $t0, $t0, $t1
	sw $t0, -584($fp)
	lw $t1, -584($fp)
	li $t2, 0
	bne $t1, $t2, label681
	j label683
label683:
	jal f6
	sw $v0, -588($fp)
	addi $sp, $sp, 4
	lw $t1, -588($fp)
	li $t2, 0
	bne $t1, $t2, label681
	j label682
label681:
	li $t0, 1
	sw $t0, -464($fp)
label682:
	li $t0, 0
	sw $t0, -592($fp)
	li $t0, 50796
	sw $t0, -596($fp)
	li $t0, 0
	sw $t0, -600($fp)
	addi $t0, $fp, -20
	sw $t0, -604($fp)
	li $t0, 2
	sw $t0, -608($fp)
	li $t0, 4
	lw $t1, -608($fp)
	mul $t0, $t0, $t1
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	lw $t1, -604($fp)
	add $t0, $t0, $t1
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	lw $t1, 0($t0)
	sw $t1, -620($fp)
	lw $t0, -160($fp)
	sw $t0, -624($fp)
	lw $t1, -620($fp)
	lw $t2, -624($fp)
	bne $t1, $t2, label694
	j label695
label694:
	li $t0, 1
	sw $t0, -600($fp)
label695:
	lw $t0, 12($fp)
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -632($fp)
	addi $t0, $fp, -20
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
	li $t0, 22802
	sw $t0, -656($fp)
	addi $sp, $sp, -4
	lw $t0, -600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -656($fp)
	sw $t0, 0($sp)
	jal f15
	sw $v0, -660($fp)
	addi $sp, $sp, 20
	lw $t1, -596($fp)
	lw $t2, -660($fp)
	beq $t1, $t2, label692
	j label693
label692:
	li $t0, 1
	sw $t0, -592($fp)
label693:
	li $t0, 0
	sw $t0, -664($fp)
	li $t0, 0
	sw $t0, -668($fp)
	li $t0, 0
	sw $t0, -672($fp)
	li $t0, 46718
	sw $t0, -676($fp)
	lw $t1, -676($fp)
	li $t2, 0
	bne $t1, $t2, label701
	j label700
label700:
	li $t0, 1
	sw $t0, -672($fp)
label701:
	li $t0, 40641
	sw $t0, -680($fp)
	lw $t1, -672($fp)
	lw $t2, -680($fp)
	bne $t1, $t2, label698
	j label699
label698:
	li $t0, 1
	sw $t0, -668($fp)
label699:
	lw $t0, -160($fp)
	sw $t0, -684($fp)
	addi $sp, $sp, -4
	lw $t0, -668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -684($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -688($fp)
	addi $sp, $sp, 12
	lw $t1, -688($fp)
	li $t2, 0
	bne $t1, $t2, label697
	j label696
label696:
	li $t0, 1
	sw $t0, -664($fp)
label697:
	li $t0, 62128
	sw $t0, -692($fp)
	li $t0, 0
	lw $t1, -692($fp)
	sub $t0, $t0, $t1
	sw $t0, -696($fp)
	li $t0, 0
	sw $t0, -700($fp)
	lw $t0, 4($fp)
	sw $t0, -704($fp)
	li $t0, 0
	lw $t1, -704($fp)
	sub $t0, $t0, $t1
	sw $t0, -708($fp)
	lw $t0, -412($fp)
	sw $t0, -712($fp)
	lw $t1, -708($fp)
	lw $t2, -712($fp)
	bgt $t1, $t2, label706
	j label707
label706:
	li $t0, 1
	sw $t0, -700($fp)
label707:
	lw $t1, -696($fp)
	lw $t2, -700($fp)
	beq $t1, $t2, label702
	j label705
label705:
	lw $t0, 12($fp)
	sw $t0, -716($fp)
	li $t0, 0
	lw $t1, -716($fp)
	sub $t0, $t0, $t1
	sw $t0, -720($fp)
	lw $t0, -388($fp)
	sw $t0, -724($fp)
	lw $t0, -720($fp)
	lw $t1, -724($fp)
	add $t0, $t0, $t1
	sw $t0, -728($fp)
	lw $t1, -728($fp)
	li $t2, 0
	bne $t1, $t2, label702
	j label703
label702:
	li $t0, 0
	sw $t0, -732($fp)
	lw $t0, -400($fp)
	sw $t0, -736($fp)
	lw $t1, -736($fp)
	li $t2, 0
	bne $t1, $t2, label708
	j label710
label710:
	li $t0, 39886
	sw $t0, -740($fp)
	lw $t1, -740($fp)
	li $t2, 0
	bne $t1, $t2, label708
	j label709
label708:
	li $t0, 1
	sw $t0, -732($fp)
label709:
	lw $t0, 12($fp)
	sw $t0, -744($fp)
	li $t0, 41423
	sw $t0, -748($fp)
	lw $t0, -744($fp)
	lw $t1, -748($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -752($fp)
	li $t0, 0
	lw $t1, -752($fp)
	sub $t0, $t0, $t1
	sw $t0, -756($fp)
	addi $sp, $sp, -4
	lw $t0, -732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -756($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -760($fp)
	addi $sp, $sp, 12
	j label704
label703:
	li $t0, 0
	sw $t0, -764($fp)
	addi $t0, $fp, -56
	sw $t0, -768($fp)
	lw $t0, 8($fp)
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
	li $t0, 0
	lw $t1, -784($fp)
	sub $t0, $t0, $t1
	sw $t0, -788($fp)
	addi $t0, $fp, -20
	sw $t0, -792($fp)
	lw $t0, -412($fp)
	sw $t0, -796($fp)
	li $t0, 4
	lw $t1, -796($fp)
	mul $t0, $t0, $t1
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	lw $t1, -792($fp)
	add $t0, $t0, $t1
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	lw $t1, 0($t0)
	sw $t1, -808($fp)
	li $t0, 0
	lw $t1, -808($fp)
	sub $t0, $t0, $t1
	sw $t0, -812($fp)
	lw $t0, -788($fp)
	lw $t1, -812($fp)
	sub $t0, $t0, $t1
	sw $t0, -816($fp)
	lw $t0, -424($fp)
	sw $t0, -820($fp)
	lw $t1, -816($fp)
	lw $t2, -820($fp)
	blt $t1, $t2, label711
	j label712
label711:
	li $t0, 1
	sw $t0, -764($fp)
label712:
label704:
	addi $t0, $fp, -20
	sw $t0, -824($fp)
	li $t0, 0
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
	addi $t0, $fp, -20
	sw $t0, -844($fp)
	li $t0, 1
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
	addi $t0, $fp, -20
	sw $t0, -864($fp)
	li $t0, 2
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
	addi $t0, $fp, -20
	sw $t0, -884($fp)
	li $t0, 3
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
	lw $t0, -160($fp)
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
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
	addi $t0, $fp, -56
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
	addi $t0, $fp, -56
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
	addi $t0, $fp, -56
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
	addi $t0, $fp, -56
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
	addi $t0, $fp, -56
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
	addi $t0, $fp, -56
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
	addi $t0, $fp, -56
	sw $t0, -1048($fp)
	li $t0, 7
	sw $t0, -1052($fp)
	li $t0, 4
	lw $t1, -1052($fp)
	mul $t0, $t0, $t1
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	lw $t1, -1048($fp)
	add $t0, $t0, $t1
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	lw $t1, 0($t0)
	sw $t1, -1064($fp)
	lw $t0, -1064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1068($fp)
	li $t0, 8
	sw $t0, -1072($fp)
	li $t0, 4
	lw $t1, -1072($fp)
	mul $t0, $t0, $t1
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	lw $t1, -1068($fp)
	add $t0, $t0, $t1
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	lw $t1, 0($t0)
	sw $t1, -1084($fp)
	lw $t0, -1084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -388($fp)
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -400($fp)
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -412($fp)
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -424($fp)
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1104($fp)
	li $t0, 14781
	sw $t0, -1108($fp)
	lw $t0, 12($fp)
	sw $t0, -1112($fp)
	lw $t0, 8($fp)
	sw $t0, -1116($fp)
	lw $t0, -1112($fp)
	lw $t1, -1116($fp)
	mul $t0, $t0, $t1
	sw $t0, -1120($fp)
	lw $t0, -412($fp)
	sw $t0, -1124($fp)
	lw $t0, -1120($fp)
	lw $t1, -1124($fp)
	sub $t0, $t0, $t1
	sw $t0, -1128($fp)
	lw $t1, -1108($fp)
	lw $t2, -1128($fp)
	ble $t1, $t2, label713
	j label715
label715:
	li $t0, 63978
	sw $t0, -1132($fp)
	lw $t0, -412($fp)
	sw $t0, -1136($fp)
	lw $t0, -1132($fp)
	lw $t1, -1136($fp)
	mul $t0, $t0, $t1
	sw $t0, -1140($fp)
	li $t0, 10835
	sw $t0, -1144($fp)
	lw $t0, -1140($fp)
	lw $t1, -1144($fp)
	add $t0, $t0, $t1
	sw $t0, -1148($fp)
	li $t0, 2062
	sw $t0, -1152($fp)
	lw $t1, -1148($fp)
	lw $t2, -1152($fp)
	beq $t1, $t2, label713
	j label714
label713:
	li $t0, 1
	sw $t0, -1104($fp)
label714:
	lw $ra, -4($fp)
	lw $v0, -1104($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f16:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -72
	li $t0, 52970
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 20947
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 0
	sw $t0, -32($fp)
	lw $t0, -24($fp)
	sw $t0, -36($fp)
	lw $t1, -36($fp)
	li $t2, 0
	bne $t1, $t2, label717
	j label716
label716:
	li $t0, 1
	sw $t0, -32($fp)
label717:
	li $t0, 45517
	sw $t0, -40($fp)
	lw $t0, -32($fp)
	lw $t1, -40($fp)
	mul $t0, $t0, $t1
	sw $t0, -44($fp)
	li $t0, 0
	sw $t0, -48($fp)
	lw $t0, -24($fp)
	sw $t0, -52($fp)
	lw $t0, -12($fp)
	sw $t0, -56($fp)
	lw $t1, -52($fp)
	lw $t2, -56($fp)
	beq $t1, $t2, label720
	j label719
label720:
	lw $t0, -24($fp)
	sw $t0, -60($fp)
	lw $t1, -60($fp)
	li $t2, 0
	bne $t1, $t2, label718
	j label719
label718:
	li $t0, 1
	sw $t0, -48($fp)
label719:
	addi $sp, $sp, -4
	lw $t0, -44($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -48($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -64($fp)
	addi $sp, $sp, 12
	lw $t0, -12($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 61587
	sw $t0, -76($fp)
	lw $ra, -4($fp)
	lw $v0, -76($fp)
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
