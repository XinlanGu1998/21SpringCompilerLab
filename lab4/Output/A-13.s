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
	addi $sp, $sp, -896
	li $t0, 10203
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	li $t0, 23195
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	li $t0, 46624
	sw $t0, -52($fp)
	addi $t0, $fp, -24
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
	li $t0, 40581
	sw $t0, -76($fp)
	addi $t0, $fp, -24
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
	li $t0, 17553
	sw $t0, -100($fp)
	addi $t0, $fp, -24
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
	li $t0, 39560
	sw $t0, -124($fp)
	addi $t0, $fp, -24
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
	li $t0, 14330
	sw $t0, -148($fp)
	addi $t0, $fp, -24
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
	li $t0, 26823
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	li $t0, 14806
	sw $t0, -184($fp)
label121:
	li $t0, 7149
	sw $t0, -188($fp)
	li $t0, 0
	sw $t0, -192($fp)
	li $t0, 26884
	sw $t0, -196($fp)
	li $t0, 0
	lw $t1, -196($fp)
	sub $t0, $t0, $t1
	sw $t0, -200($fp)
	lw $t1, -200($fp)
	li $t2, 0
	bne $t1, $t2, label125
	j label124
label124:
	li $t0, 1
	sw $t0, -192($fp)
label125:
	lw $t0, -188($fp)
	lw $t1, -192($fp)
	mul $t0, $t0, $t1
	sw $t0, -204($fp)
	li $t0, 25841
	sw $t0, -208($fp)
	lw $t0, -204($fp)
	lw $t1, -208($fp)
	sub $t0, $t0, $t1
	sw $t0, -212($fp)
	lw $t1, -212($fp)
	li $t2, 0
	bne $t1, $t2, label122
	j label123
label122:
	li $t0, 0
	sw $t0, -216($fp)
	addi $t0, $fp, -24
	sw $t0, -220($fp)
	li $t0, 55951
	sw $t0, -224($fp)
	lw $t0, 8($fp)
	sw $t0, -228($fp)
	lw $t0, -224($fp)
	lw $t1, -228($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -232($fp)
	li $t0, 4
	lw $t1, -232($fp)
	mul $t0, $t0, $t1
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	lw $t1, -220($fp)
	add $t0, $t0, $t1
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	lw $t1, 0($t0)
	sw $t1, -244($fp)
	lw $t1, -244($fp)
	li $t2, 0
	bne $t1, $t2, label127
	j label126
label126:
	li $t0, 1
	sw $t0, -216($fp)
label127:
	li $t0, 0
	sw $t0, -248($fp)
	lw $t0, 8($fp)
	sw $t0, -252($fp)
	lw $t1, -252($fp)
	li $t2, 0
	bne $t1, $t2, label129
	j label128
label128:
	li $t0, 1
	sw $t0, -248($fp)
label129:
	lw $t0, -216($fp)
	lw $t1, -248($fp)
	mul $t0, $t0, $t1
	sw $t0, -256($fp)
	j label121
label123:
	lw $t0, -32($fp)
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -44($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -268($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -288($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -308($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -328($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -348($fp)
	li $t0, 4
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
	lw $t0, -176($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 37038
	sw $t0, -372($fp)
	lw $ra, -4($fp)
	lw $v0, -372($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 48086
	sw $t0, -376($fp)
	li $t0, 0
	lw $t1, -376($fp)
	sub $t0, $t0, $t1
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -384($fp)
	lw $t1, -384($fp)
	li $t2, 0
	bne $t1, $t2, label130
	j label131
label130:
	li $t0, 51267
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -392($fp)
	li $t0, 0
	sw $t0, -396($fp)
	li $t0, 13450
	sw $t0, -400($fp)
	lw $t1, -400($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label135
label135:
	li $t0, 56235
	sw $t0, -404($fp)
	lw $t1, -404($fp)
	li $t2, 0
	bne $t1, $t2, label133
	j label134
label133:
	li $t0, 1
	sw $t0, -396($fp)
label134:
	li $t0, 0
	sw $t0, -408($fp)
	lw $t0, 8($fp)
	sw $t0, -412($fp)
	lw $t1, -412($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label136
label136:
	li $t0, 1
	sw $t0, -408($fp)
label137:
	li $t0, 29677
	sw $t0, -416($fp)
	lw $t0, -408($fp)
	lw $t1, -416($fp)
	add $t0, $t0, $t1
	sw $t0, -420($fp)
	addi $sp, $sp, -4
	lw $t0, -392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -420($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -424($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -428($fp)
	lw $t0, -44($fp)
	sw $t0, -432($fp)
	lw $t1, -432($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label138
label138:
	li $t0, 1
	sw $t0, -428($fp)
label139:
	lw $t0, -424($fp)
	lw $t1, -428($fp)
	sub $t0, $t0, $t1
	sw $t0, -436($fp)
	j label132
label131:
	li $t0, 0
	sw $t0, -440($fp)
	addi $t0, $fp, -24
	sw $t0, -444($fp)
	li $t0, 1
	sw $t0, -448($fp)
	li $t0, 4
	lw $t1, -448($fp)
	mul $t0, $t0, $t1
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	lw $t1, -444($fp)
	add $t0, $t0, $t1
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	lw $t1, 0($t0)
	sw $t1, -460($fp)
	lw $t1, -460($fp)
	li $t2, 0
	bne $t1, $t2, label140
	j label142
label142:
	li $t0, 52290
	sw $t0, -464($fp)
	lw $t1, -464($fp)
	li $t2, 0
	bne $t1, $t2, label140
	j label141
label140:
	li $t0, 1
	sw $t0, -440($fp)
label141:
	lw $t0, 8($fp)
	sw $t0, -468($fp)
	li $t0, 0
	sw $t0, -472($fp)
	li $t0, 61484
	sw $t0, -476($fp)
	lw $t1, -476($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label143
label143:
	li $t0, 1
	sw $t0, -472($fp)
label144:
	li $t0, 0
	sw $t0, -480($fp)
	li $t0, 37892
	sw $t0, -484($fp)
	lw $t0, 4($fp)
	sw $t0, -488($fp)
	lw $t0, -484($fp)
	lw $t1, -488($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -492($fp)
	li $t0, 39101
	sw $t0, -496($fp)
	lw $t1, -492($fp)
	lw $t2, -496($fp)
	bne $t1, $t2, label145
	j label146
label145:
	li $t0, 1
	sw $t0, -480($fp)
label146:
	addi $sp, $sp, -4
	lw $t0, -468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -480($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -500($fp)
	addi $sp, $sp, 16
	lw $t0, 8($fp)
	sw $t0, -504($fp)
	lw $t0, -500($fp)
	lw $t1, -504($fp)
	mul $t0, $t0, $t1
	sw $t0, -508($fp)
	li $t0, 0
	sw $t0, -512($fp)
	li $t0, 0
	sw $t0, -516($fp)
	li $t0, 51926
	sw $t0, -520($fp)
	li $t0, 14637
	sw $t0, -524($fp)
	lw $t1, -520($fp)
	lw $t2, -524($fp)
	bne $t1, $t2, label149
	j label150
label149:
	li $t0, 1
	sw $t0, -516($fp)
label150:
	li $t0, 65112
	sw $t0, -528($fp)
	lw $t1, -516($fp)
	lw $t2, -528($fp)
	bne $t1, $t2, label147
	j label148
label147:
	li $t0, 1
	sw $t0, -512($fp)
label148:
	addi $sp, $sp, -4
	lw $t0, -440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -512($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -532($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -536($fp)
	li $t0, 32004
	sw $t0, -540($fp)
	lw $t1, -540($fp)
	li $t2, 0
	bne $t1, $t2, label151
	j label152
label151:
	li $t0, 1
	sw $t0, -536($fp)
label152:
	lw $t0, -532($fp)
	lw $t1, -536($fp)
	mul $t0, $t0, $t1
	sw $t0, -544($fp)
	li $t0, 53095
	sw $t0, -548($fp)
	lw $t0, -544($fp)
	lw $t1, -548($fp)
	mul $t0, $t0, $t1
	sw $t0, -552($fp)
label132:
	lw $t0, -32($fp)
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -44($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -564($fp)
	li $t0, 0
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
	li $t0, 1
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
	lw $t0, -620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -624($fp)
	li $t0, 3
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
	li $t0, 4
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
	lw $t0, -176($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -668($fp)
	addi $t0, $fp, -24
	sw $t0, -672($fp)
	li $t0, 33439
	sw $t0, -676($fp)
	li $t0, 42207
	sw $t0, -680($fp)
	lw $t0, -676($fp)
	lw $t1, -680($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -684($fp)
	lw $t0, 4($fp)
	sw $t0, -688($fp)
	lw $t0, -684($fp)
	lw $t1, -688($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -692($fp)
	li $t0, 4
	lw $t1, -692($fp)
	mul $t0, $t0, $t1
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	lw $t1, -672($fp)
	add $t0, $t0, $t1
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	lw $t1, 0($t0)
	sw $t1, -704($fp)
	lw $t1, -704($fp)
	li $t2, 0
	bne $t1, $t2, label153
	j label155
label155:
	li $t0, 0
	sw $t0, -708($fp)
	li $t0, 0
	sw $t0, -712($fp)
	lw $t0, 12($fp)
	sw $t0, -716($fp)
	li $t0, 28307
	sw $t0, -720($fp)
	lw $t1, -716($fp)
	lw $t2, -720($fp)
	beq $t1, $t2, label158
	j label159
label158:
	li $t0, 1
	sw $t0, -712($fp)
label159:
	lw $t0, 8($fp)
	sw $t0, -724($fp)
	lw $t1, -712($fp)
	lw $t2, -724($fp)
	beq $t1, $t2, label156
	j label157
label156:
	li $t0, 1
	sw $t0, -708($fp)
label157:
	lw $t0, -32($fp)
	sw $t0, -728($fp)
	lw $t0, 8($fp)
	sw $t0, -732($fp)
	lw $t0, -728($fp)
	lw $t1, -732($fp)
	mul $t0, $t0, $t1
	sw $t0, -736($fp)
	li $t0, 10754
	sw $t0, -740($fp)
	li $t0, 14528
	sw $t0, -744($fp)
	lw $t0, -740($fp)
	lw $t1, -744($fp)
	mul $t0, $t0, $t1
	sw $t0, -748($fp)
	li $t0, 17253
	sw $t0, -752($fp)
	lw $t0, -748($fp)
	lw $t1, -752($fp)
	add $t0, $t0, $t1
	sw $t0, -756($fp)
	addi $sp, $sp, -4
	lw $t0, -708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -756($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -760($fp)
	addi $sp, $sp, 16
	lw $t1, -760($fp)
	li $t2, 0
	bne $t1, $t2, label153
	j label154
label153:
	li $t0, 1
	sw $t0, -668($fp)
label154:
	lw $ra, -4($fp)
	lw $v0, -668($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -32($fp)
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -44($fp)
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
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
	lw $t0, -788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -792($fp)
	li $t0, 1
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
	lw $t0, -808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -812($fp)
	li $t0, 2
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
	lw $t0, -828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -832($fp)
	li $t0, 3
	sw $t0, -836($fp)
	li $t0, 4
	lw $t1, -836($fp)
	mul $t0, $t0, $t1
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	lw $t1, -832($fp)
	add $t0, $t0, $t1
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	lw $t1, 0($t0)
	sw $t1, -848($fp)
	lw $t0, -848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -852($fp)
	li $t0, 4
	sw $t0, -856($fp)
	li $t0, 4
	lw $t1, -856($fp)
	mul $t0, $t0, $t1
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	lw $t1, -852($fp)
	add $t0, $t0, $t1
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	lw $t1, 0($t0)
	sw $t1, -868($fp)
	lw $t0, -868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -176($fp)
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -876($fp)
	lw $t0, 8($fp)
	sw $t0, -880($fp)
	lw $t1, -880($fp)
	li $t2, 0
	bne $t1, $t2, label160
	j label164
label164:
	li $t0, 54088
	sw $t0, -884($fp)
	lw $t1, -884($fp)
	li $t2, 0
	bne $t1, $t2, label160
	j label163
label163:
	li $t0, 31583
	sw $t0, -888($fp)
	lw $t1, -888($fp)
	li $t2, 0
	bne $t1, $t2, label160
	j label162
label162:
	lw $t0, 8($fp)
	sw $t0, -892($fp)
	li $t0, 55130
	sw $t0, -896($fp)
	lw $t1, -892($fp)
	lw $t2, -896($fp)
	blt $t1, $t2, label160
	j label161
label160:
	li $t0, 1
	sw $t0, -876($fp)
label161:
	lw $t0, -876($fp)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -900($fp)
	lw $ra, -4($fp)
	lw $v0, -900($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -752
	li $t0, 3358
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	li $t0, 38732
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	li $t0, 16479
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	li $t0, 29199
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	li $t0, 29147
	sw $t0, -92($fp)
	addi $t0, $fp, -40
	sw $t0, -96($fp)
	li $t0, 0
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
	li $t0, 53517
	sw $t0, -116($fp)
	addi $t0, $fp, -40
	sw $t0, -120($fp)
	li $t0, 1
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
	li $t0, 11749
	sw $t0, -140($fp)
	addi $t0, $fp, -40
	sw $t0, -144($fp)
	li $t0, 2
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
	li $t0, 58824
	sw $t0, -164($fp)
	addi $t0, $fp, -40
	sw $t0, -168($fp)
	li $t0, 3
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
	li $t0, 1431
	sw $t0, -188($fp)
	addi $t0, $fp, -40
	sw $t0, -192($fp)
	li $t0, 4
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
	li $t0, 2448
	sw $t0, -212($fp)
	addi $t0, $fp, -40
	sw $t0, -216($fp)
	li $t0, 5
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
	li $t0, 44555
	sw $t0, -236($fp)
	addi $t0, $fp, -40
	sw $t0, -240($fp)
	li $t0, 6
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
	li $t0, 53357
	sw $t0, -260($fp)
	addi $t0, $fp, -40
	sw $t0, -264($fp)
	li $t0, 7
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
	li $t0, 17086
	sw $t0, -284($fp)
	addi $t0, $fp, -40
	sw $t0, -288($fp)
	li $t0, 8
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
	li $t0, 0
	sw $t0, -308($fp)
	li $t0, 0
	sw $t0, -312($fp)
	li $t0, 0
	sw $t0, -316($fp)
	li $t0, 44132
	sw $t0, -320($fp)
	lw $t1, -320($fp)
	li $t2, 0
	bne $t1, $t2, label169
	j label170
label169:
	li $t0, 1
	sw $t0, -316($fp)
label170:
	lw $t0, 4($fp)
	sw $t0, -324($fp)
	lw $t0, -316($fp)
	lw $t1, -324($fp)
	add $t0, $t0, $t1
	sw $t0, -328($fp)
	li $t0, 0
	sw $t0, -332($fp)
	addi $t0, $fp, -40
	sw $t0, -336($fp)
	li $t0, 3
	sw $t0, -340($fp)
	li $t0, 4
	lw $t1, -340($fp)
	mul $t0, $t0, $t1
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	lw $t1, -336($fp)
	add $t0, $t0, $t1
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	lw $t1, 0($t0)
	sw $t1, -352($fp)
	lw $t1, -352($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label171
label171:
	li $t0, 1
	sw $t0, -332($fp)
label172:
	lw $t1, -328($fp)
	lw $t2, -332($fp)
	bgt $t1, $t2, label167
	j label168
label167:
	li $t0, 1
	sw $t0, -312($fp)
label168:
	lw $t0, -84($fp)
	sw $t0, -356($fp)
	lw $t0, -84($fp)
	sw $t0, -360($fp)
	lw $t0, -356($fp)
	lw $t1, -360($fp)
	mul $t0, $t0, $t1
	sw $t0, -364($fp)
	li $t0, 0
	sw $t0, -368($fp)
	lw $t0, -84($fp)
	sw $t0, -372($fp)
	li $t0, 40646
	sw $t0, -376($fp)
	lw $t0, -372($fp)
	lw $t1, -376($fp)
	sub $t0, $t0, $t1
	sw $t0, -380($fp)
	lw $t1, -380($fp)
	li $t2, 0
	bne $t1, $t2, label173
	j label175
label175:
	lw $t0, -60($fp)
	sw $t0, -384($fp)
	lw $t1, -384($fp)
	li $t2, 0
	bne $t1, $t2, label173
	j label174
label173:
	li $t0, 1
	sw $t0, -368($fp)
label174:
	li $t0, 0
	sw $t0, -388($fp)
	li $t0, 40080
	sw $t0, -392($fp)
	lw $t0, 8($fp)
	sw $t0, -396($fp)
	lw $t1, -392($fp)
	lw $t2, -396($fp)
	bge $t1, $t2, label178
	j label177
label178:
	li $t0, 41654
	sw $t0, -400($fp)
	lw $t1, -400($fp)
	li $t2, 0
	bne $t1, $t2, label176
	j label177
label176:
	li $t0, 1
	sw $t0, -388($fp)
label177:
	addi $sp, $sp, -4
	lw $t0, -368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -388($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -404($fp)
	addi $sp, $sp, 12
	lw $t0, -364($fp)
	lw $t1, -404($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -408($fp)
	lw $t1, -312($fp)
	lw $t2, -408($fp)
	bne $t1, $t2, label165
	j label166
label165:
	li $t0, 1
	sw $t0, -308($fp)
label166:
	addi $t0, $fp, -40
	sw $t0, -412($fp)
	li $t0, 0
	sw $t0, -416($fp)
	li $t0, 0
	sw $t0, -420($fp)
	lw $t0, 4($fp)
	sw $t0, -424($fp)
	lw $t0, -48($fp)
	sw $t0, -428($fp)
	lw $t1, -424($fp)
	lw $t2, -428($fp)
	beq $t1, $t2, label181
	j label182
label181:
	li $t0, 1
	sw $t0, -420($fp)
label182:
	addi $t0, $fp, -40
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
	lw $t1, -420($fp)
	lw $t2, -448($fp)
	bne $t1, $t2, label179
	j label180
label179:
	li $t0, 1
	sw $t0, -416($fp)
label180:
	li $t0, 4
	lw $t1, -416($fp)
	mul $t0, $t0, $t1
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	lw $t1, -412($fp)
	add $t0, $t0, $t1
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	lw $t1, 0($t0)
	sw $t1, -460($fp)
	lw $t0, -48($fp)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -60($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -72($fp)
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -480($fp)
	li $t0, 0
	sw $t0, -484($fp)
	li $t0, 4
	lw $t1, -484($fp)
	mul $t0, $t0, $t1
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	lw $t1, -480($fp)
	add $t0, $t0, $t1
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	lw $t1, 0($t0)
	sw $t1, -496($fp)
	lw $t0, -496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -500($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -520($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -540($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -560($fp)
	li $t0, 4
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
	addi $t0, $fp, -40
	sw $t0, -580($fp)
	li $t0, 5
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
	addi $t0, $fp, -40
	sw $t0, -600($fp)
	li $t0, 6
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
	addi $t0, $fp, -40
	sw $t0, -620($fp)
	li $t0, 7
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
	addi $t0, $fp, -40
	sw $t0, -640($fp)
	li $t0, 8
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
	li $t0, 0
	sw $t0, -660($fp)
	li $t0, 0
	sw $t0, -664($fp)
	li $t0, 60274
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -672($fp)
	lw $t0, -84($fp)
	sw $t0, -676($fp)
	li $t0, 28205
	sw $t0, -680($fp)
	lw $t0, -676($fp)
	lw $t1, -680($fp)
	sub $t0, $t0, $t1
	sw $t0, -684($fp)
	lw $t0, 4($fp)
	sw $t0, -688($fp)
	lw $t0, -684($fp)
	lw $t1, -688($fp)
	sub $t0, $t0, $t1
	sw $t0, -692($fp)
	addi $sp, $sp, -4
	lw $t0, -672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -692($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -696($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -696($fp)
	sub $t0, $t0, $t1
	sw $t0, -700($fp)
	li $t0, 50330
	sw $t0, -704($fp)
	li $t0, 38960
	sw $t0, -708($fp)
	lw $t0, -704($fp)
	lw $t1, -708($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -712($fp)
	lw $t1, -700($fp)
	lw $t2, -712($fp)
	bge $t1, $t2, label186
	j label187
label186:
	li $t0, 1
	sw $t0, -664($fp)
label187:
	lw $t0, 8($fp)
	sw $t0, -716($fp)
	li $t0, 9266
	sw $t0, -720($fp)
	lw $t0, -716($fp)
	lw $t1, -720($fp)
	sub $t0, $t0, $t1
	sw $t0, -724($fp)
	lw $t1, -664($fp)
	lw $t2, -724($fp)
	bne $t1, $t2, label183
	j label185
label185:
	li $t0, 2047
	sw $t0, -728($fp)
	li $t0, 1731
	sw $t0, -732($fp)
	lw $t0, -728($fp)
	lw $t1, -732($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -736($fp)
	lw $t0, -72($fp)
	sw $t0, -740($fp)
	lw $t0, -736($fp)
	lw $t1, -740($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -744($fp)
	li $t0, 0
	sw $t0, -748($fp)
	lw $t0, -72($fp)
	sw $t0, -752($fp)
	lw $t0, 8($fp)
	sw $t0, -756($fp)
	lw $t1, -752($fp)
	lw $t2, -756($fp)
	blt $t1, $t2, label188
	j label189
label188:
	li $t0, 1
	sw $t0, -748($fp)
label189:
	lw $t1, -744($fp)
	lw $t2, -748($fp)
	bne $t1, $t2, label183
	j label184
label183:
	li $t0, 1
	sw $t0, -660($fp)
label184:
	lw $ra, -4($fp)
	lw $v0, -660($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2596
	li $t0, 63354
	sw $t0, -116($fp)
	addi $t0, $fp, -20
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
	li $t0, 33630
	sw $t0, -140($fp)
	addi $t0, $fp, -20
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
	li $t0, 56862
	sw $t0, -164($fp)
	addi $t0, $fp, -20
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
	li $t0, 1176
	sw $t0, -188($fp)
	addi $t0, $fp, -20
	sw $t0, -192($fp)
	li $t0, 3
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
	li $t0, 6827
	sw $t0, -212($fp)
	addi $t0, $fp, -56
	sw $t0, -216($fp)
	li $t0, 0
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
	li $t0, 7805
	sw $t0, -236($fp)
	addi $t0, $fp, -56
	sw $t0, -240($fp)
	li $t0, 1
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
	li $t0, 30376
	sw $t0, -260($fp)
	addi $t0, $fp, -56
	sw $t0, -264($fp)
	li $t0, 2
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
	li $t0, 35974
	sw $t0, -284($fp)
	addi $t0, $fp, -56
	sw $t0, -288($fp)
	li $t0, 3
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
	li $t0, 61322
	sw $t0, -308($fp)
	addi $t0, $fp, -56
	sw $t0, -312($fp)
	li $t0, 4
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
	li $t0, 42125
	sw $t0, -332($fp)
	addi $t0, $fp, -56
	sw $t0, -336($fp)
	li $t0, 5
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
	li $t0, 29263
	sw $t0, -356($fp)
	addi $t0, $fp, -56
	sw $t0, -360($fp)
	li $t0, 6
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
	li $t0, 62753
	sw $t0, -380($fp)
	addi $t0, $fp, -56
	sw $t0, -384($fp)
	li $t0, 7
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
	li $t0, 44574
	sw $t0, -404($fp)
	addi $t0, $fp, -56
	sw $t0, -408($fp)
	li $t0, 8
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
	li $t0, 8282
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	li $t0, 50574
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	li $t0, 61660
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	li $t0, 52414
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	li $t0, 10751
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	li $t0, 52311
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	li $t0, 26959
	sw $t0, -500($fp)
	addi $t0, $fp, -68
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
	li $t0, 52405
	sw $t0, -524($fp)
	addi $t0, $fp, -68
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
	li $t0, 27421
	sw $t0, -548($fp)
	addi $t0, $fp, -68
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
	li $t0, 53793
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -580($fp)
	li $t0, 60528
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	li $t0, 55627
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -604($fp)
	li $t0, 48531
	sw $t0, -608($fp)
	addi $t0, $fp, -108
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
	li $t0, 45322
	sw $t0, -632($fp)
	addi $t0, $fp, -108
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
	li $t0, 29051
	sw $t0, -656($fp)
	addi $t0, $fp, -108
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
	li $t0, 57797
	sw $t0, -680($fp)
	addi $t0, $fp, -108
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
	li $t0, 47369
	sw $t0, -704($fp)
	addi $t0, $fp, -108
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
	li $t0, 30782
	sw $t0, -728($fp)
	addi $t0, $fp, -108
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
	li $t0, 55615
	sw $t0, -752($fp)
	addi $t0, $fp, -108
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
	li $t0, 15463
	sw $t0, -776($fp)
	addi $t0, $fp, -108
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
	li $t0, 22108
	sw $t0, -800($fp)
	addi $t0, $fp, -108
	sw $t0, -804($fp)
	li $t0, 8
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -812($fp)
	lw $t0, -804($fp)
	lw $t1, -812($fp)
	add $t0, $t0, $t1
	sw $t0, -816($fp)
	lw $t0, -800($fp)
	lw $t1, -816($fp)
	sw $t0, 0($t1)
	lw $t0, -816($fp)
	lw $t1, 0($t0)
	sw $t1, -820($fp)
	li $t0, 56792
	sw $t0, -824($fp)
	addi $t0, $fp, -108
	sw $t0, -828($fp)
	li $t0, 9
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -836($fp)
	lw $t0, -828($fp)
	lw $t1, -836($fp)
	add $t0, $t0, $t1
	sw $t0, -840($fp)
	lw $t0, -824($fp)
	lw $t1, -840($fp)
	sw $t0, 0($t1)
	lw $t0, -840($fp)
	lw $t1, 0($t0)
	sw $t1, -844($fp)
	li $t0, 22290
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	sw $t0, -856($fp)
	li $t0, 29913
	sw $t0, -860($fp)
	addi $t0, $fp, -112
	sw $t0, -864($fp)
	li $t0, 0
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
	li $t0, 21632
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	sw $t0, -892($fp)
	li $t0, 58265
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	sw $t0, -904($fp)
label190:
	lw $t0, 16($fp)
	sw $t0, -908($fp)
	li $t0, 0
	lw $t1, -908($fp)
	sub $t0, $t0, $t1
	sw $t0, -912($fp)
	lw $t1, -912($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label192
label191:
	lw $t0, 12($fp)
	sw $t0, -916($fp)
	lw $t0, -852($fp)
	sw $t0, -920($fp)
	lw $t0, -916($fp)
	lw $t1, -920($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -924($fp)
	addi $t0, $fp, -108
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
	lw $t0, -924($fp)
	lw $t1, -944($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -948($fp)
	li $t0, 0
	lw $t1, -948($fp)
	sub $t0, $t0, $t1
	sw $t0, -952($fp)
	li $t0, 0
	sw $t0, -956($fp)
	li $t0, 21992
	sw $t0, -960($fp)
	lw $t1, -960($fp)
	li $t2, 0
	bne $t1, $t2, label194
	j label193
label193:
	li $t0, 1
	sw $t0, -956($fp)
label194:
	lw $t0, -952($fp)
	lw $t1, -956($fp)
	sub $t0, $t0, $t1
	sw $t0, -964($fp)
	li $t0, 22916
	sw $t0, -968($fp)
	lw $t0, -964($fp)
	lw $t1, -968($fp)
	sub $t0, $t0, $t1
	sw $t0, -972($fp)
	li $t0, 0
	sw $t0, -976($fp)
	li $t0, 30274
	sw $t0, -980($fp)
	lw $t0, 4($fp)
	sw $t0, -984($fp)
	lw $t0, -980($fp)
	lw $t1, -984($fp)
	sub $t0, $t0, $t1
	sw $t0, -988($fp)
	li $t0, 7954
	sw $t0, -992($fp)
	lw $t1, -988($fp)
	lw $t2, -992($fp)
	blt $t1, $t2, label195
	j label196
label195:
	li $t0, 1
	sw $t0, -976($fp)
label196:
	li $t0, 42795
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -1000($fp)
	addi $sp, $sp, -4
	lw $t0, -976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1000($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1004($fp)
	addi $sp, $sp, 12
	li $t0, 38919
	sw $t0, -1008($fp)
	addi $t0, $fp, -20
	sw $t0, -1012($fp)
	lw $t0, -852($fp)
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
	li $t0, 0
	lw $t1, -1028($fp)
	sub $t0, $t0, $t1
	sw $t0, -1032($fp)
	lw $t0, -1008($fp)
	lw $t1, -1032($fp)
	mul $t0, $t0, $t1
	sw $t0, -1036($fp)
	li $t0, 0
	sw $t0, -1040($fp)
	addi $t0, $fp, -112
	sw $t0, -1044($fp)
	li $t0, 0
	sw $t0, -1048($fp)
	li $t0, 4
	lw $t1, -1048($fp)
	mul $t0, $t0, $t1
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	lw $t1, -1044($fp)
	add $t0, $t0, $t1
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	lw $t1, 0($t0)
	sw $t1, -1060($fp)
	li $t0, 0
	sw $t0, -1064($fp)
	li $t0, 18706
	sw $t0, -1068($fp)
	lw $t0, -852($fp)
	sw $t0, -1072($fp)
	lw $t0, -1068($fp)
	lw $t1, -1072($fp)
	mul $t0, $t0, $t1
	sw $t0, -1076($fp)
	lw $t1, -1076($fp)
	li $t2, 0
	bne $t1, $t2, label199
	j label201
label201:
	lw $t0, 4($fp)
	sw $t0, -1080($fp)
	lw $t1, -1080($fp)
	li $t2, 0
	bne $t1, $t2, label199
	j label200
label199:
	li $t0, 1
	sw $t0, -1064($fp)
label200:
	li $t0, 17153
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -1088($fp)
	li $t0, 0
	sw $t0, -1092($fp)
	li $t0, 0
	sw $t0, -1096($fp)
	lw $t0, -576($fp)
	sw $t0, -1100($fp)
	lw $t0, 16($fp)
	sw $t0, -1104($fp)
	lw $t1, -1100($fp)
	lw $t2, -1104($fp)
	bne $t1, $t2, label204
	j label205
label204:
	li $t0, 1
	sw $t0, -1096($fp)
label205:
	lw $t0, -888($fp)
	sw $t0, -1108($fp)
	lw $t1, -1096($fp)
	lw $t2, -1108($fp)
	bne $t1, $t2, label202
	j label203
label202:
	li $t0, 1
	sw $t0, -1092($fp)
label203:
	lw $t0, -456($fp)
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -1116($fp)
	li $t0, 0
	sw $t0, -1120($fp)
	lw $t0, 20($fp)
	sw $t0, -1124($fp)
	lw $t1, -1124($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label207
label206:
	li $t0, 1
	sw $t0, -1120($fp)
label207:
	lw $t0, 12($fp)
	sw $t0, -1128($fp)
	li $t0, 0
	lw $t1, -1128($fp)
	sub $t0, $t0, $t1
	sw $t0, -1132($fp)
	addi $sp, $sp, -4
	lw $t0, -1088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1132($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1136($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -1060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1136($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1140($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -1140($fp)
	sub $t0, $t0, $t1
	sw $t0, -1144($fp)
	li $t0, 0
	sw $t0, -1148($fp)
	li $t0, 0
	sw $t0, -1152($fp)
	li $t0, 0
	sw $t0, -1156($fp)
	lw $t0, -888($fp)
	sw $t0, -1160($fp)
	lw $t1, -1160($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label212
label212:
	li $t0, 1
	sw $t0, -1156($fp)
label213:
	lw $t0, -492($fp)
	sw $t0, -1164($fp)
	lw $t1, -1156($fp)
	lw $t2, -1164($fp)
	blt $t1, $t2, label210
	j label211
label210:
	li $t0, 1
	sw $t0, -1152($fp)
label211:
	li $t0, 0
	sw $t0, -1168($fp)
	li $t0, 5575
	sw $t0, -1172($fp)
	lw $t1, -1172($fp)
	li $t2, 0
	bne $t1, $t2, label215
	j label214
label214:
	li $t0, 1
	sw $t0, -1168($fp)
label215:
	lw $t1, -1152($fp)
	lw $t2, -1168($fp)
	ble $t1, $t2, label208
	j label209
label208:
	li $t0, 1
	sw $t0, -1148($fp)
label209:
	lw $t1, -1144($fp)
	lw $t2, -1148($fp)
	bne $t1, $t2, label197
	j label198
label197:
	li $t0, 1
	sw $t0, -1040($fp)
label198:
	j label190
label192:
	addi $t0, $fp, -20
	sw $t0, -1176($fp)
	lw $t0, 16($fp)
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
	li $t0, 53116
	sw $t0, -1196($fp)
	lw $t0, -1192($fp)
	lw $t1, -1196($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1200($fp)
	li $t0, 0
	sw $t0, -1204($fp)
	li $t0, 32369
	sw $t0, -1208($fp)
	li $t0, 0
	sw $t0, -1212($fp)
	li $t0, 45889
	sw $t0, -1216($fp)
	li $t0, 0
	lw $t1, -1216($fp)
	sub $t0, $t0, $t1
	sw $t0, -1220($fp)
	lw $t0, -444($fp)
	sw $t0, -1224($fp)
	lw $t1, -1220($fp)
	lw $t2, -1224($fp)
	beq $t1, $t2, label221
	j label222
label221:
	li $t0, 1
	sw $t0, -1212($fp)
label222:
	li $t0, 0
	sw $t0, -1228($fp)
	li $t0, 43207
	sw $t0, -1232($fp)
	lw $t1, -1232($fp)
	li $t2, 0
	bne $t1, $t2, label224
	j label223
label223:
	li $t0, 1
	sw $t0, -1228($fp)
label224:
	li $t0, 15365
	sw $t0, -1236($fp)
	lw $t0, -1228($fp)
	lw $t1, -1236($fp)
	mul $t0, $t0, $t1
	sw $t0, -1240($fp)
	addi $t0, $fp, -108
	sw $t0, -1244($fp)
	lw $t0, -492($fp)
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
	li $t0, 567
	sw $t0, -1264($fp)
	lw $t0, -1260($fp)
	lw $t1, -1264($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1268($fp)
	addi $sp, $sp, -4
	lw $t0, -1212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1268($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1272($fp)
	addi $sp, $sp, 16
	lw $t0, -1208($fp)
	lw $t1, -1272($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1276($fp)
	li $t0, 0
	lw $t1, -1276($fp)
	sub $t0, $t0, $t1
	sw $t0, -1280($fp)
	lw $t1, -1280($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label219
label219:
	li $t0, 1
	sw $t0, -1204($fp)
label220:
	lw $t0, -1200($fp)
	lw $t1, -1204($fp)
	mul $t0, $t0, $t1
	sw $t0, -1284($fp)
	lw $t1, -1284($fp)
	li $t2, 0
	bne $t1, $t2, label216
	j label217
label216:
	li $t0, 6722
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	sw $t0, -1296($fp)
	li $t0, 7626
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	sw $t0, -1308($fp)
	li $t0, 27722
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	sw $t0, -1320($fp)
	lw $t0, -1292($fp)
	sw $t0, -1324($fp)
	lw $t1, -1324($fp)
	li $t2, 0
	bne $t1, $t2, label225
	j label226
label225:
	addi $t0, $fp, -112
	sw $t0, -1328($fp)
	li $t0, 0
	sw $t0, -1332($fp)
	li $t0, 37505
	sw $t0, -1336($fp)
	lw $t1, -1336($fp)
	li $t2, 0
	bne $t1, $t2, label230
	j label228
label230:
	lw $t0, -852($fp)
	sw $t0, -1340($fp)
	li $t0, 63242
	sw $t0, -1344($fp)
	lw $t0, -1340($fp)
	lw $t1, -1344($fp)
	sub $t0, $t0, $t1
	sw $t0, -1348($fp)
	lw $t1, -1348($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label229
label228:
	li $t0, 1
	sw $t0, -1332($fp)
label229:
	li $t0, 4
	lw $t1, -1332($fp)
	mul $t0, $t0, $t1
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	lw $t1, -1328($fp)
	add $t0, $t0, $t1
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	lw $t1, 0($t0)
	sw $t1, -1360($fp)
	j label227
label226:
	li $t0, 0
	sw $t0, -1364($fp)
	li $t0, 0
	sw $t0, -1368($fp)
	addi $t0, $fp, -112
	sw $t0, -1372($fp)
	li $t0, 0
	sw $t0, -1376($fp)
	lw $t0, -600($fp)
	sw $t0, -1380($fp)
	li $t0, 43186
	sw $t0, -1384($fp)
	lw $t1, -1380($fp)
	lw $t2, -1384($fp)
	bge $t1, $t2, label235
	j label236
label235:
	li $t0, 1
	sw $t0, -1376($fp)
label236:
	li $t0, 4
	lw $t1, -1376($fp)
	mul $t0, $t0, $t1
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	lw $t1, -1372($fp)
	add $t0, $t0, $t1
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	lw $t1, 0($t0)
	sw $t1, -1396($fp)
	lw $t1, -1396($fp)
	li $t2, 0
	bne $t1, $t2, label234
	j label233
label233:
	li $t0, 1
	sw $t0, -1368($fp)
label234:
	addi $t0, $fp, -68
	sw $t0, -1400($fp)
	lw $t0, -576($fp)
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
	li $t0, 0
	lw $t1, -1416($fp)
	sub $t0, $t0, $t1
	sw $t0, -1420($fp)
	lw $t1, -1368($fp)
	lw $t2, -1420($fp)
	blt $t1, $t2, label231
	j label232
label231:
	li $t0, 1
	sw $t0, -1364($fp)
label232:
label227:
	lw $t0, -588($fp)
	sw $t0, -1424($fp)
	lw $t1, -1424($fp)
	li $t2, 0
	bne $t1, $t2, label237
	j label240
label240:
	lw $t0, -1316($fp)
	sw $t0, -1428($fp)
	li $t0, 59613
	sw $t0, -1432($fp)
	lw $t0, -1428($fp)
	lw $t1, -1432($fp)
	mul $t0, $t0, $t1
	sw $t0, -1436($fp)
	lw $t1, -1436($fp)
	li $t2, 0
	bne $t1, $t2, label237
	j label238
label237:
	li $t0, 0
	sw $t0, -1440($fp)
	li $t0, 0
	sw $t0, -1444($fp)
	li $t0, 54498
	sw $t0, -1448($fp)
	li $t0, 0
	lw $t1, -1448($fp)
	sub $t0, $t0, $t1
	sw $t0, -1452($fp)
	lw $t0, 16($fp)
	sw $t0, -1456($fp)
	lw $t0, -1452($fp)
	lw $t1, -1456($fp)
	sub $t0, $t0, $t1
	sw $t0, -1460($fp)
	lw $t0, -1304($fp)
	sw $t0, -1464($fp)
	li $t0, 0
	lw $t1, -1464($fp)
	sub $t0, $t0, $t1
	sw $t0, -1468($fp)
	lw $t0, -1460($fp)
	lw $t1, -1468($fp)
	sub $t0, $t0, $t1
	sw $t0, -1472($fp)
	li $t0, 65476
	sw $t0, -1476($fp)
	lw $t1, -1472($fp)
	lw $t2, -1476($fp)
	bge $t1, $t2, label243
	j label244
label243:
	li $t0, 1
	sw $t0, -1444($fp)
label244:
	lw $t0, 12($fp)
	sw $t0, -1480($fp)
	lw $t1, -1444($fp)
	lw $t2, -1480($fp)
	blt $t1, $t2, label241
	j label242
label241:
	li $t0, 1
	sw $t0, -1440($fp)
label242:
	j label239
label238:
	addi $t0, $fp, -20
	sw $t0, -1484($fp)
	li $t0, 0
	sw $t0, -1488($fp)
	li $t0, 23991
	sw $t0, -1492($fp)
	lw $t1, -1492($fp)
	li $t2, 0
	bne $t1, $t2, label245
	j label247
label247:
	li $t0, 10594
	sw $t0, -1496($fp)
	lw $t1, -1496($fp)
	li $t2, 0
	bne $t1, $t2, label245
	j label246
label245:
	li $t0, 1
	sw $t0, -1488($fp)
label246:
	lw $t0, -1488($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -1500($fp)
	li $t0, 4
	lw $t1, -1500($fp)
	mul $t0, $t0, $t1
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	lw $t1, -1484($fp)
	add $t0, $t0, $t1
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	lw $t1, 0($t0)
	sw $t1, -1512($fp)
label239:
	lw $t0, 12($fp)
	sw $t0, -1516($fp)
	li $t0, 51611
	sw $t0, -1520($fp)
	li $t0, 7071
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -1528($fp)
	li $t0, 0
	sw $t0, -1532($fp)
	li $t0, 14661
	sw $t0, -1536($fp)
	lw $t1, -1536($fp)
	li $t2, 0
	bne $t1, $t2, label251
	j label252
label251:
	li $t0, 1
	sw $t0, -1532($fp)
label252:
	li $t0, 0
	sw $t0, -1540($fp)
	li $t0, 49690
	sw $t0, -1544($fp)
	lw $t0, -852($fp)
	sw $t0, -1548($fp)
	lw $t0, -1544($fp)
	lw $t1, -1548($fp)
	add $t0, $t0, $t1
	sw $t0, -1552($fp)
	li $t0, 8815
	sw $t0, -1556($fp)
	lw $t1, -1552($fp)
	lw $t2, -1556($fp)
	bne $t1, $t2, label253
	j label254
label253:
	li $t0, 1
	sw $t0, -1540($fp)
label254:
	li $t0, 58205
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	sw $t0, -1564($fp)
	addi $sp, $sp, -4
	lw $t0, -1520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1564($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1568($fp)
	addi $sp, $sp, 24
	lw $t0, -1516($fp)
	lw $t1, -1568($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1572($fp)
	li $t0, 0
	lw $t1, -1572($fp)
	sub $t0, $t0, $t1
	sw $t0, -1576($fp)
	li $t0, 0
	lw $t1, -1576($fp)
	sub $t0, $t0, $t1
	sw $t0, -1580($fp)
	lw $t1, -1580($fp)
	li $t2, 0
	bne $t1, $t2, label248
	j label249
label248:
	li $t0, 0
	sw $t0, -1584($fp)
	addi $t0, $fp, -20
	sw $t0, -1588($fp)
	li $t0, 1
	sw $t0, -1592($fp)
	li $t0, 4
	lw $t1, -1592($fp)
	mul $t0, $t0, $t1
	sw $t0, -1596($fp)
	lw $t0, -1596($fp)
	lw $t1, -1588($fp)
	add $t0, $t0, $t1
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	lw $t1, 0($t0)
	sw $t1, -1604($fp)
	lw $t1, -1604($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label255
label255:
	li $t0, 1
	sw $t0, -1584($fp)
label256:
	lw $t0, -1584($fp)
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	sw $t0, -1608($fp)
	j label250
label249:
	lw $t0, -852($fp)
	sw $t0, -1612($fp)
label250:
	j label218
label217:
	lw $t0, -900($fp)
	sw $t0, -1616($fp)
	lw $t1, -1616($fp)
	li $t2, 0
	bne $t1, $t2, label258
	j label257
label257:
label260:
	addi $t0, $fp, -20
	sw $t0, -1620($fp)
	li $t0, 0
	sw $t0, -1624($fp)
	li $t0, 24994
	sw $t0, -1628($fp)
	lw $t1, -1628($fp)
	li $t2, 0
	bne $t1, $t2, label263
	j label264
label263:
	li $t0, 1
	sw $t0, -1624($fp)
label264:
	li $t0, 4
	lw $t1, -1624($fp)
	mul $t0, $t0, $t1
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	lw $t1, -1620($fp)
	add $t0, $t0, $t1
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	lw $t1, 0($t0)
	sw $t1, -1640($fp)
	li $t0, 62089
	sw $t0, -1644($fp)
	lw $t1, -1640($fp)
	lw $t2, -1644($fp)
	bgt $t1, $t2, label261
	j label262
label261:
label265:
	addi $t0, $fp, -68
	sw $t0, -1648($fp)
	lw $t0, 4($fp)
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -1656($fp)
	li $t0, 4
	lw $t1, -1656($fp)
	mul $t0, $t0, $t1
	sw $t0, -1660($fp)
	lw $t0, -1660($fp)
	lw $t1, -1648($fp)
	add $t0, $t0, $t1
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	lw $t1, 0($t0)
	sw $t1, -1668($fp)
	li $t0, 0
	sw $t0, -1672($fp)
	addi $t0, $fp, -56
	sw $t0, -1676($fp)
	li $t0, 5
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
	lw $t1, -1692($fp)
	li $t2, 0
	bne $t1, $t2, label269
	j label268
label268:
	li $t0, 1
	sw $t0, -1672($fp)
label269:
	li $t0, 33731
	sw $t0, -1696($fp)
	li $t0, 50689
	sw $t0, -1700($fp)
	lw $t0, -1696($fp)
	lw $t1, -1700($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1704($fp)
	addi $sp, $sp, -4
	lw $t0, -1672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1704($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1708($fp)
	addi $sp, $sp, 12
	lw $t1, -1668($fp)
	lw $t2, -1708($fp)
	ble $t1, $t2, label266
	j label267
label266:
	li $t0, 0
	sw $t0, -1712($fp)
	li $t0, 38270
	sw $t0, -1716($fp)
	lw $t1, -1716($fp)
	li $t2, 0
	bne $t1, $t2, label271
	j label270
label270:
	li $t0, 1
	sw $t0, -1712($fp)
label271:
	lw $t0, -456($fp)
	sw $t0, -1720($fp)
	li $t0, 0
	lw $t1, -1720($fp)
	sub $t0, $t0, $t1
	sw $t0, -1724($fp)
	lw $t0, -1712($fp)
	lw $t1, -1724($fp)
	mul $t0, $t0, $t1
	sw $t0, -1728($fp)
	li $t0, 0
	lw $t1, -1728($fp)
	sub $t0, $t0, $t1
	sw $t0, -1732($fp)
	li $t0, 0
	sw $t0, -1736($fp)
	lw $t0, -588($fp)
	sw $t0, -1740($fp)
	lw $t1, -1740($fp)
	li $t2, 0
	bne $t1, $t2, label273
	j label272
label272:
	li $t0, 1
	sw $t0, -1736($fp)
label273:
	li $t0, 0
	lw $t1, -1736($fp)
	sub $t0, $t0, $t1
	sw $t0, -1744($fp)
	lw $t0, -1732($fp)
	lw $t1, -1744($fp)
	add $t0, $t0, $t1
	sw $t0, -1748($fp)
	li $t0, 0
	sw $t0, -1752($fp)
	li $t0, 7498
	sw $t0, -1756($fp)
	li $t0, 39874
	sw $t0, -1760($fp)
	lw $t0, -1756($fp)
	lw $t1, -1760($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1764($fp)
	lw $t1, -1764($fp)
	li $t2, 0
	bne $t1, $t2, label274
	j label276
label276:
	li $t0, 15941
	sw $t0, -1768($fp)
	lw $t1, -1768($fp)
	li $t2, 0
	bne $t1, $t2, label274
	j label275
label274:
	li $t0, 1
	sw $t0, -1752($fp)
label275:
	lw $t0, -576($fp)
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -1776($fp)
	addi $sp, $sp, -4
	lw $t0, -1752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1776($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1780($fp)
	addi $sp, $sp, 12
	lw $t0, -1748($fp)
	lw $t1, -1780($fp)
	add $t0, $t0, $t1
	sw $t0, -1784($fp)
	j label265
label267:
	j label260
label262:
	j label259
label258:
	li $t0, 0
	sw $t0, -1788($fp)
	lw $t0, -444($fp)
	sw $t0, -1792($fp)
	lw $t1, -1792($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label280
label280:
	li $t0, 1
	sw $t0, -1788($fp)
label281:
	li $t0, 30490
	sw $t0, -1796($fp)
	lw $t0, -1788($fp)
	lw $t1, -1796($fp)
	sub $t0, $t0, $t1
	sw $t0, -1800($fp)
	lw $t0, -468($fp)
	sw $t0, -1804($fp)
	li $t0, 0
	lw $t1, -1804($fp)
	sub $t0, $t0, $t1
	sw $t0, -1808($fp)
	lw $t0, -432($fp)
	sw $t0, -1812($fp)
	lw $t0, -1808($fp)
	lw $t1, -1812($fp)
	sub $t0, $t0, $t1
	sw $t0, -1816($fp)
	li $t0, 0
	sw $t0, -1820($fp)
	addi $t0, $fp, -112
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
	lw $t1, -1840($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label283
label284:
	li $t0, 22664
	sw $t0, -1844($fp)
	lw $t1, -1844($fp)
	li $t2, 0
	bne $t1, $t2, label282
	j label283
label282:
	li $t0, 1
	sw $t0, -1820($fp)
label283:
	addi $sp, $sp, -4
	lw $t0, -1800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1820($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1848($fp)
	addi $sp, $sp, 16
	lw $t1, -1848($fp)
	li $t2, 0
	bne $t1, $t2, label277
	j label278
label277:
	lw $t0, -852($fp)
	sw $t0, -1852($fp)
	j label279
label278:
	li $t0, 0
	sw $t0, -1856($fp)
	li $t0, 0
	sw $t0, -1860($fp)
	lw $t0, 16($fp)
	sw $t0, -1864($fp)
	li $t0, 27752
	sw $t0, -1868($fp)
	lw $t1, -1864($fp)
	lw $t2, -1868($fp)
	ble $t1, $t2, label289
	j label288
label289:
	lw $t0, -600($fp)
	sw $t0, -1872($fp)
	lw $t1, -1872($fp)
	li $t2, 0
	bne $t1, $t2, label287
	j label288
label287:
	li $t0, 1
	sw $t0, -1860($fp)
label288:
	li $t0, 0
	sw $t0, -1876($fp)
	li $t0, 17158
	sw $t0, -1880($fp)
	lw $t1, -1880($fp)
	li $t2, 0
	bne $t1, $t2, label293
	j label291
label293:
	li $t0, 25541
	sw $t0, -1884($fp)
	lw $t1, -1884($fp)
	li $t2, 0
	bne $t1, $t2, label292
	j label291
label292:
	li $t0, 12701
	sw $t0, -1888($fp)
	lw $t1, -1888($fp)
	li $t2, 0
	bne $t1, $t2, label290
	j label291
label290:
	li $t0, 1
	sw $t0, -1876($fp)
label291:
	addi $t0, $fp, -68
	sw $t0, -1892($fp)
	li $t0, 0
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
	li $t0, 0
	sw $t0, -1912($fp)
	li $t0, 28196
	sw $t0, -1916($fp)
	li $t0, 0
	lw $t1, -1916($fp)
	sub $t0, $t0, $t1
	sw $t0, -1920($fp)
	lw $t1, -1920($fp)
	li $t2, 0
	bne $t1, $t2, label295
	j label294
label294:
	li $t0, 1
	sw $t0, -1912($fp)
label295:
	lw $t0, 16($fp)
	sw $t0, -1924($fp)
	li $t0, 0
	sw $t0, -1928($fp)
	li $t0, 47950
	sw $t0, -1932($fp)
	lw $t1, -1932($fp)
	li $t2, 0
	bne $t1, $t2, label297
	j label296
label296:
	li $t0, 1
	sw $t0, -1928($fp)
label297:
	lw $t0, -576($fp)
	sw $t0, -1936($fp)
	lw $t0, -1928($fp)
	lw $t1, -1936($fp)
	mul $t0, $t0, $t1
	sw $t0, -1940($fp)
	addi $sp, $sp, -4
	lw $t0, -1924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1940($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1944($fp)
	addi $sp, $sp, 12
	li $t0, 60169
	sw $t0, -1948($fp)
	lw $t0, -1944($fp)
	lw $t1, -1948($fp)
	mul $t0, $t0, $t1
	sw $t0, -1952($fp)
	addi $sp, $sp, -4
	lw $t0, -1860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1952($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1956($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -1960($fp)
	li $t0, 62392
	sw $t0, -1964($fp)
	lw $t1, -1964($fp)
	li $t2, 0
	bne $t1, $t2, label299
	j label300
label300:
	lw $t0, -852($fp)
	sw $t0, -1968($fp)
	lw $t1, -1968($fp)
	li $t2, 0
	bne $t1, $t2, label298
	j label299
label298:
	li $t0, 1
	sw $t0, -1960($fp)
label299:
	lw $t0, -888($fp)
	sw $t0, -1972($fp)
	lw $t0, -1972($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -1976($fp)
	li $t0, 18210
	sw $t0, -1980($fp)
	addi $sp, $sp, -4
	lw $t0, -1960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1980($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1984($fp)
	addi $sp, $sp, 16
	lw $t1, -1956($fp)
	lw $t2, -1984($fp)
	bge $t1, $t2, label285
	j label286
label285:
	li $t0, 1
	sw $t0, -1856($fp)
label286:
label279:
label259:
label218:
	addi $t0, $fp, -20
	sw $t0, -1988($fp)
	li $t0, 0
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
	addi $t0, $fp, -20
	sw $t0, -2008($fp)
	li $t0, 1
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
	addi $t0, $fp, -20
	sw $t0, -2028($fp)
	li $t0, 2
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
	addi $t0, $fp, -20
	sw $t0, -2048($fp)
	li $t0, 3
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
	addi $t0, $fp, -56
	sw $t0, -2068($fp)
	li $t0, 0
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
	addi $t0, $fp, -56
	sw $t0, -2088($fp)
	li $t0, 1
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
	addi $t0, $fp, -56
	sw $t0, -2108($fp)
	li $t0, 2
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
	addi $t0, $fp, -56
	sw $t0, -2128($fp)
	li $t0, 3
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
	addi $t0, $fp, -56
	sw $t0, -2148($fp)
	li $t0, 4
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
	addi $t0, $fp, -56
	sw $t0, -2168($fp)
	li $t0, 5
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
	addi $t0, $fp, -56
	sw $t0, -2188($fp)
	li $t0, 6
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
	addi $t0, $fp, -56
	sw $t0, -2208($fp)
	li $t0, 7
	sw $t0, -2212($fp)
	li $t0, 4
	lw $t1, -2212($fp)
	mul $t0, $t0, $t1
	sw $t0, -2216($fp)
	lw $t0, -2216($fp)
	lw $t1, -2208($fp)
	add $t0, $t0, $t1
	sw $t0, -2220($fp)
	lw $t0, -2220($fp)
	lw $t1, 0($t0)
	sw $t1, -2224($fp)
	lw $t0, -2224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -2228($fp)
	li $t0, 8
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
	lw $t0, -2244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -432($fp)
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -444($fp)
	sw $t0, -2252($fp)
	lw $t0, -2252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -456($fp)
	sw $t0, -2256($fp)
	lw $t0, -2256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -2260($fp)
	lw $t0, -2260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -2264($fp)
	lw $t0, -2264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -2268($fp)
	lw $t0, -2268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
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
	addi $t0, $fp, -68
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
	addi $t0, $fp, -68
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
	lw $t0, -576($fp)
	sw $t0, -2332($fp)
	lw $t0, -2332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -588($fp)
	sw $t0, -2336($fp)
	lw $t0, -2336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -600($fp)
	sw $t0, -2340($fp)
	lw $t0, -2340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -2344($fp)
	li $t0, 0
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
	addi $t0, $fp, -108
	sw $t0, -2364($fp)
	li $t0, 1
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
	addi $t0, $fp, -108
	sw $t0, -2384($fp)
	li $t0, 2
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
	addi $t0, $fp, -108
	sw $t0, -2404($fp)
	li $t0, 3
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
	addi $t0, $fp, -108
	sw $t0, -2424($fp)
	li $t0, 4
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
	addi $t0, $fp, -108
	sw $t0, -2444($fp)
	li $t0, 5
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
	addi $t0, $fp, -108
	sw $t0, -2464($fp)
	li $t0, 6
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
	addi $t0, $fp, -108
	sw $t0, -2484($fp)
	li $t0, 7
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
	addi $t0, $fp, -108
	sw $t0, -2504($fp)
	li $t0, 8
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
	addi $t0, $fp, -108
	sw $t0, -2524($fp)
	li $t0, 9
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
	lw $t0, -852($fp)
	sw $t0, -2544($fp)
	lw $t0, -2544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -2548($fp)
	li $t0, 0
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
	lw $t0, -888($fp)
	sw $t0, -2568($fp)
	lw $t0, -2568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -900($fp)
	sw $t0, -2572($fp)
	lw $t0, -2572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2576($fp)
	addi $t0, $fp, -108
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
	lw $t1, -2596($fp)
	li $t2, 0
	bne $t1, $t2, label302
	j label301
label301:
	li $t0, 1
	sw $t0, -2576($fp)
label302:
	lw $t0, -2576($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -2600($fp)
	lw $ra, -4($fp)
	lw $v0, -2600($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	li $t0, 3927
	sw $t0, -8($fp)
	lw $ra, -4($fp)
	lw $v0, -8($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -5616
	li $t0, 22642
	sw $t0, -228($fp)
	addi $t0, $fp, -32
	sw $t0, -232($fp)
	li $t0, 0
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
	li $t0, 12272
	sw $t0, -252($fp)
	addi $t0, $fp, -32
	sw $t0, -256($fp)
	li $t0, 1
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
	li $t0, 18952
	sw $t0, -276($fp)
	addi $t0, $fp, -32
	sw $t0, -280($fp)
	li $t0, 2
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
	li $t0, 47637
	sw $t0, -300($fp)
	addi $t0, $fp, -32
	sw $t0, -304($fp)
	li $t0, 3
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
	li $t0, 8825
	sw $t0, -324($fp)
	addi $t0, $fp, -32
	sw $t0, -328($fp)
	li $t0, 4
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
	li $t0, 52684
	sw $t0, -348($fp)
	addi $t0, $fp, -32
	sw $t0, -352($fp)
	li $t0, 5
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
	li $t0, 32790
	sw $t0, -372($fp)
	addi $t0, $fp, -32
	sw $t0, -376($fp)
	li $t0, 6
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
	li $t0, 49490
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
	li $t0, 26455
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -416($fp)
	li $t0, 5524
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	li $t0, 56988
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	li $t0, 793
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	li $t0, 21466
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	li $t0, 14316
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	li $t0, 21021
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	li $t0, 44130
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	li $t0, 44806
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	li $t0, 3436
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	li $t0, 38763
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	li $t0, 7466
	sw $t0, -540($fp)
	addi $t0, $fp, -72
	sw $t0, -544($fp)
	li $t0, 0
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
	li $t0, 29036
	sw $t0, -564($fp)
	addi $t0, $fp, -72
	sw $t0, -568($fp)
	li $t0, 1
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
	li $t0, 27473
	sw $t0, -588($fp)
	addi $t0, $fp, -72
	sw $t0, -592($fp)
	li $t0, 2
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
	li $t0, 24624
	sw $t0, -612($fp)
	addi $t0, $fp, -72
	sw $t0, -616($fp)
	li $t0, 3
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
	li $t0, 54577
	sw $t0, -636($fp)
	addi $t0, $fp, -72
	sw $t0, -640($fp)
	li $t0, 4
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -648($fp)
	lw $t0, -640($fp)
	lw $t1, -648($fp)
	add $t0, $t0, $t1
	sw $t0, -652($fp)
	lw $t0, -636($fp)
	lw $t1, -652($fp)
	sw $t0, 0($t1)
	lw $t0, -652($fp)
	lw $t1, 0($t0)
	sw $t1, -656($fp)
	li $t0, 40175
	sw $t0, -660($fp)
	addi $t0, $fp, -72
	sw $t0, -664($fp)
	li $t0, 5
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -672($fp)
	lw $t0, -664($fp)
	lw $t1, -672($fp)
	add $t0, $t0, $t1
	sw $t0, -676($fp)
	lw $t0, -660($fp)
	lw $t1, -676($fp)
	sw $t0, 0($t1)
	lw $t0, -676($fp)
	lw $t1, 0($t0)
	sw $t1, -680($fp)
	li $t0, 52376
	sw $t0, -684($fp)
	addi $t0, $fp, -72
	sw $t0, -688($fp)
	li $t0, 6
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -696($fp)
	lw $t0, -688($fp)
	lw $t1, -696($fp)
	add $t0, $t0, $t1
	sw $t0, -700($fp)
	lw $t0, -684($fp)
	lw $t1, -700($fp)
	sw $t0, 0($t1)
	lw $t0, -700($fp)
	lw $t1, 0($t0)
	sw $t1, -704($fp)
	li $t0, 7252
	sw $t0, -708($fp)
	addi $t0, $fp, -72
	sw $t0, -712($fp)
	li $t0, 7
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
	li $t0, 37031
	sw $t0, -732($fp)
	addi $t0, $fp, -72
	sw $t0, -736($fp)
	li $t0, 8
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
	li $t0, 23407
	sw $t0, -756($fp)
	addi $t0, $fp, -72
	sw $t0, -760($fp)
	li $t0, 9
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
	li $t0, 40124
	sw $t0, -780($fp)
	addi $t0, $fp, -104
	sw $t0, -784($fp)
	li $t0, 0
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -792($fp)
	lw $t0, -784($fp)
	lw $t1, -792($fp)
	add $t0, $t0, $t1
	sw $t0, -796($fp)
	lw $t0, -780($fp)
	lw $t1, -796($fp)
	sw $t0, 0($t1)
	lw $t0, -796($fp)
	lw $t1, 0($t0)
	sw $t1, -800($fp)
	li $t0, 40958
	sw $t0, -804($fp)
	addi $t0, $fp, -104
	sw $t0, -808($fp)
	li $t0, 1
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -816($fp)
	lw $t0, -808($fp)
	lw $t1, -816($fp)
	add $t0, $t0, $t1
	sw $t0, -820($fp)
	lw $t0, -804($fp)
	lw $t1, -820($fp)
	sw $t0, 0($t1)
	lw $t0, -820($fp)
	lw $t1, 0($t0)
	sw $t1, -824($fp)
	li $t0, 46050
	sw $t0, -828($fp)
	addi $t0, $fp, -104
	sw $t0, -832($fp)
	li $t0, 2
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
	li $t0, 52396
	sw $t0, -852($fp)
	addi $t0, $fp, -104
	sw $t0, -856($fp)
	li $t0, 3
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
	li $t0, 59910
	sw $t0, -876($fp)
	addi $t0, $fp, -104
	sw $t0, -880($fp)
	li $t0, 4
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
	li $t0, 28151
	sw $t0, -900($fp)
	addi $t0, $fp, -104
	sw $t0, -904($fp)
	li $t0, 5
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
	li $t0, 61221
	sw $t0, -924($fp)
	addi $t0, $fp, -104
	sw $t0, -928($fp)
	li $t0, 6
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
	li $t0, 47058
	sw $t0, -948($fp)
	addi $t0, $fp, -104
	sw $t0, -952($fp)
	li $t0, 7
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
	li $t0, 60941
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	sw $t0, -980($fp)
	li $t0, 45175
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	sw $t0, -992($fp)
	li $t0, 7977
	sw $t0, -996($fp)
	addi $t0, $fp, -124
	sw $t0, -1000($fp)
	li $t0, 0
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
	li $t0, 930
	sw $t0, -1020($fp)
	addi $t0, $fp, -124
	sw $t0, -1024($fp)
	li $t0, 1
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
	li $t0, 36627
	sw $t0, -1044($fp)
	addi $t0, $fp, -124
	sw $t0, -1048($fp)
	li $t0, 2
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1056($fp)
	lw $t0, -1048($fp)
	lw $t1, -1056($fp)
	add $t0, $t0, $t1
	sw $t0, -1060($fp)
	lw $t0, -1044($fp)
	lw $t1, -1060($fp)
	sw $t0, 0($t1)
	lw $t0, -1060($fp)
	lw $t1, 0($t0)
	sw $t1, -1064($fp)
	li $t0, 8771
	sw $t0, -1068($fp)
	addi $t0, $fp, -124
	sw $t0, -1072($fp)
	li $t0, 3
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1080($fp)
	lw $t0, -1072($fp)
	lw $t1, -1080($fp)
	add $t0, $t0, $t1
	sw $t0, -1084($fp)
	lw $t0, -1068($fp)
	lw $t1, -1084($fp)
	sw $t0, 0($t1)
	lw $t0, -1084($fp)
	lw $t1, 0($t0)
	sw $t1, -1088($fp)
	li $t0, 22396
	sw $t0, -1092($fp)
	addi $t0, $fp, -124
	sw $t0, -1096($fp)
	li $t0, 4
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
	li $t0, 50943
	sw $t0, -1116($fp)
	addi $t0, $fp, -144
	sw $t0, -1120($fp)
	li $t0, 0
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
	li $t0, 29792
	sw $t0, -1140($fp)
	addi $t0, $fp, -144
	sw $t0, -1144($fp)
	li $t0, 1
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
	li $t0, 990
	sw $t0, -1164($fp)
	addi $t0, $fp, -144
	sw $t0, -1168($fp)
	li $t0, 2
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
	li $t0, 30213
	sw $t0, -1188($fp)
	addi $t0, $fp, -144
	sw $t0, -1192($fp)
	li $t0, 3
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
	li $t0, 33228
	sw $t0, -1212($fp)
	addi $t0, $fp, -144
	sw $t0, -1216($fp)
	li $t0, 4
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
	li $t0, 39753
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	sw $t0, -1244($fp)
	li $t0, 37679
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	sw $t0, -1256($fp)
	li $t0, 62265
	sw $t0, -1260($fp)
	addi $t0, $fp, -156
	sw $t0, -1264($fp)
	li $t0, 0
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
	li $t0, 1690
	sw $t0, -1284($fp)
	addi $t0, $fp, -156
	sw $t0, -1288($fp)
	li $t0, 1
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1296($fp)
	lw $t0, -1288($fp)
	lw $t1, -1296($fp)
	add $t0, $t0, $t1
	sw $t0, -1300($fp)
	lw $t0, -1284($fp)
	lw $t1, -1300($fp)
	sw $t0, 0($t1)
	lw $t0, -1300($fp)
	lw $t1, 0($t0)
	sw $t1, -1304($fp)
	li $t0, 62303
	sw $t0, -1308($fp)
	addi $t0, $fp, -156
	sw $t0, -1312($fp)
	li $t0, 2
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
	li $t0, 51306
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	sw $t0, -1340($fp)
	li $t0, 41865
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	sw $t0, -1352($fp)
	li $t0, 49143
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	sw $t0, -1364($fp)
	li $t0, 58558
	sw $t0, -1368($fp)
	addi $t0, $fp, -196
	sw $t0, -1372($fp)
	li $t0, 0
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
	li $t0, 13360
	sw $t0, -1392($fp)
	addi $t0, $fp, -196
	sw $t0, -1396($fp)
	li $t0, 1
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
	li $t0, 7015
	sw $t0, -1416($fp)
	addi $t0, $fp, -196
	sw $t0, -1420($fp)
	li $t0, 2
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1428($fp)
	lw $t0, -1420($fp)
	lw $t1, -1428($fp)
	add $t0, $t0, $t1
	sw $t0, -1432($fp)
	lw $t0, -1416($fp)
	lw $t1, -1432($fp)
	sw $t0, 0($t1)
	lw $t0, -1432($fp)
	lw $t1, 0($t0)
	sw $t1, -1436($fp)
	li $t0, 33146
	sw $t0, -1440($fp)
	addi $t0, $fp, -196
	sw $t0, -1444($fp)
	li $t0, 3
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1452($fp)
	lw $t0, -1444($fp)
	lw $t1, -1452($fp)
	add $t0, $t0, $t1
	sw $t0, -1456($fp)
	lw $t0, -1440($fp)
	lw $t1, -1456($fp)
	sw $t0, 0($t1)
	lw $t0, -1456($fp)
	lw $t1, 0($t0)
	sw $t1, -1460($fp)
	li $t0, 54318
	sw $t0, -1464($fp)
	addi $t0, $fp, -196
	sw $t0, -1468($fp)
	li $t0, 4
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1476($fp)
	lw $t0, -1468($fp)
	lw $t1, -1476($fp)
	add $t0, $t0, $t1
	sw $t0, -1480($fp)
	lw $t0, -1464($fp)
	lw $t1, -1480($fp)
	sw $t0, 0($t1)
	lw $t0, -1480($fp)
	lw $t1, 0($t0)
	sw $t1, -1484($fp)
	li $t0, 53065
	sw $t0, -1488($fp)
	addi $t0, $fp, -196
	sw $t0, -1492($fp)
	li $t0, 5
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1500($fp)
	lw $t0, -1492($fp)
	lw $t1, -1500($fp)
	add $t0, $t0, $t1
	sw $t0, -1504($fp)
	lw $t0, -1488($fp)
	lw $t1, -1504($fp)
	sw $t0, 0($t1)
	lw $t0, -1504($fp)
	lw $t1, 0($t0)
	sw $t1, -1508($fp)
	li $t0, 20006
	sw $t0, -1512($fp)
	addi $t0, $fp, -196
	sw $t0, -1516($fp)
	li $t0, 6
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
	li $t0, 48693
	sw $t0, -1536($fp)
	addi $t0, $fp, -196
	sw $t0, -1540($fp)
	li $t0, 7
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
	li $t0, 15680
	sw $t0, -1560($fp)
	addi $t0, $fp, -196
	sw $t0, -1564($fp)
	li $t0, 8
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
	li $t0, 15691
	sw $t0, -1584($fp)
	addi $t0, $fp, -196
	sw $t0, -1588($fp)
	li $t0, 9
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
	li $t0, 30215
	sw $t0, -1608($fp)
	addi $t0, $fp, -224
	sw $t0, -1612($fp)
	li $t0, 0
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
	li $t0, 11085
	sw $t0, -1632($fp)
	addi $t0, $fp, -224
	sw $t0, -1636($fp)
	li $t0, 1
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
	li $t0, 60866
	sw $t0, -1656($fp)
	addi $t0, $fp, -224
	sw $t0, -1660($fp)
	li $t0, 2
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
	li $t0, 38193
	sw $t0, -1680($fp)
	addi $t0, $fp, -224
	sw $t0, -1684($fp)
	li $t0, 3
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
	li $t0, 12015
	sw $t0, -1704($fp)
	addi $t0, $fp, -224
	sw $t0, -1708($fp)
	li $t0, 4
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
	li $t0, 31958
	sw $t0, -1728($fp)
	addi $t0, $fp, -224
	sw $t0, -1732($fp)
	li $t0, 5
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
	li $t0, 46964
	sw $t0, -1752($fp)
	addi $t0, $fp, -224
	sw $t0, -1756($fp)
	li $t0, 6
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
	li $t0, 0
	sw $t0, -1776($fp)
	lw $t0, -460($fp)
	sw $t0, -1780($fp)
	li $t0, 0
	lw $t1, -1780($fp)
	sub $t0, $t0, $t1
	sw $t0, -1784($fp)
	li $t0, 0
	sw $t0, -1788($fp)
	li $t0, 34411
	sw $t0, -1792($fp)
	lw $t1, -1792($fp)
	li $t2, 0
	bne $t1, $t2, label309
	j label308
label308:
	li $t0, 1
	sw $t0, -1788($fp)
label309:
	addi $sp, $sp, -4
	lw $t0, -1784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1788($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1796($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -1796($fp)
	sub $t0, $t0, $t1
	sw $t0, -1800($fp)
	li $t0, 0
	lw $t1, -1800($fp)
	sub $t0, $t0, $t1
	sw $t0, -1804($fp)
	lw $t1, -1804($fp)
	li $t2, 0
	bne $t1, $t2, label307
	j label306
label306:
	li $t0, 1
	sw $t0, -1776($fp)
label307:
	li $t0, 0
	lw $t1, -1776($fp)
	sub $t0, $t0, $t1
	sw $t0, -1808($fp)
	lw $t1, -1808($fp)
	li $t2, 0
	bne $t1, $t2, label303
	j label304
label303:
label310:
	lw $t0, -532($fp)
	sw $t0, -1812($fp)
	li $t0, 0
	lw $t1, -1812($fp)
	sub $t0, $t0, $t1
	sw $t0, -1816($fp)
	lw $t1, -1816($fp)
	li $t2, 0
	bne $t1, $t2, label311
	j label312
label311:
	li $t0, 17365
	sw $t0, -1820($fp)
	lw $t1, -1820($fp)
	li $t2, 0
	bne $t1, $t2, label316
	j label314
label316:
	jal f9
	sw $v0, -1824($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -1824($fp)
	sub $t0, $t0, $t1
	sw $t0, -1828($fp)
	li $t0, 0
	lw $t1, -1828($fp)
	sub $t0, $t0, $t1
	sw $t0, -1832($fp)
	lw $t1, -1832($fp)
	li $t2, 0
	bne $t1, $t2, label313
	j label314
label313:
	addi $t0, $fp, -196
	sw $t0, -1836($fp)
	li $t0, 9
	sw $t0, -1840($fp)
	li $t0, 4
	lw $t1, -1840($fp)
	mul $t0, $t0, $t1
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	lw $t1, -1836($fp)
	add $t0, $t0, $t1
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	lw $t1, 0($t0)
	sw $t1, -1852($fp)
	j label315
label314:
	li $t0, 47579
	sw $t0, -1856($fp)
	lw $t1, -1856($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label317
label317:
	li $t0, 0
	sw $t0, -1860($fp)
	li $t0, 0
	sw $t0, -1864($fp)
	li $t0, 0
	sw $t0, -1868($fp)
	li $t0, 44449
	sw $t0, -1872($fp)
	lw $t1, -1872($fp)
	li $t2, 0
	bne $t1, $t2, label326
	j label325
label325:
	li $t0, 1
	sw $t0, -1868($fp)
label326:
	li $t0, 0
	lw $t1, -1868($fp)
	sub $t0, $t0, $t1
	sw $t0, -1876($fp)
	lw $t1, -1876($fp)
	li $t2, 0
	bne $t1, $t2, label324
	j label323
label323:
	li $t0, 1
	sw $t0, -1864($fp)
label324:
	li $t0, 0
	lw $t1, -1864($fp)
	sub $t0, $t0, $t1
	sw $t0, -1880($fp)
	lw $t1, -1880($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label322
label322:
	li $t0, 0
	sw $t0, -1884($fp)
	lw $t0, -1240($fp)
	sw $t0, -1888($fp)
	lw $t1, -1888($fp)
	li $t2, 0
	bne $t1, $t2, label328
	j label327
label327:
	li $t0, 1
	sw $t0, -1884($fp)
label328:
	li $t0, 9618
	sw $t0, -1892($fp)
	lw $t0, -1884($fp)
	lw $t1, -1892($fp)
	add $t0, $t0, $t1
	sw $t0, -1896($fp)
	lw $t0, -412($fp)
	sw $t0, -1900($fp)
	lw $t0, -520($fp)
	sw $t0, -1904($fp)
	lw $t0, -1900($fp)
	lw $t1, -1904($fp)
	sub $t0, $t0, $t1
	sw $t0, -1908($fp)
	lw $t1, -1896($fp)
	lw $t2, -1908($fp)
	bge $t1, $t2, label320
	j label321
label320:
	li $t0, 1
	sw $t0, -1860($fp)
label321:
	lw $ra, -4($fp)
	lw $v0, -1860($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label319
label318:
	li $t0, 0
	sw $t0, -1912($fp)
	li $t0, 19722
	sw $t0, -1916($fp)
	li $t0, 41178
	sw $t0, -1920($fp)
	lw $t0, -1916($fp)
	lw $t1, -1920($fp)
	sub $t0, $t0, $t1
	sw $t0, -1924($fp)
	addi $t0, $fp, -144
	sw $t0, -1928($fp)
	lw $t0, -460($fp)
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
	li $t0, 0
	lw $t1, -1944($fp)
	sub $t0, $t0, $t1
	sw $t0, -1948($fp)
	lw $t1, -1924($fp)
	lw $t2, -1948($fp)
	ble $t1, $t2, label329
	j label330
label329:
	li $t0, 1
	sw $t0, -1912($fp)
label330:
label319:
label315:
	j label310
label312:
	j label305
label304:
	li $t0, 0
	sw $t0, -1952($fp)
	lw $t0, -412($fp)
	sw $t0, -1956($fp)
	lw $t0, -1348($fp)
	sw $t0, -1960($fp)
	lw $t0, -1956($fp)
	lw $t1, -1960($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1964($fp)
	lw $t1, -1964($fp)
	li $t2, 0
	bne $t1, $t2, label336
	j label335
label336:
	lw $t0, -988($fp)
	sw $t0, -1968($fp)
	lw $t1, -1968($fp)
	li $t2, 0
	bne $t1, $t2, label334
	j label335
label334:
	li $t0, 1
	sw $t0, -1952($fp)
label335:
	lw $t0, -436($fp)
	sw $t0, -1972($fp)
	lw $t0, -1972($fp)
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	sw $t0, -1976($fp)
	addi $sp, $sp, -4
	lw $t0, -1952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1976($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1980($fp)
	addi $sp, $sp, 12
	li $t0, 11309
	sw $t0, -1984($fp)
	lw $t1, -1980($fp)
	lw $t2, -1984($fp)
	beq $t1, $t2, label331
	j label332
label331:
	li $t0, 16490
	sw $t0, -1988($fp)
	lw $t0, -1988($fp)
	sw $t0, -1992($fp)
	lw $t0, -1992($fp)
	sw $t0, -1996($fp)
	li $t0, 0
	sw $t0, -2000($fp)
	li $t0, 26948
	sw $t0, -2004($fp)
	li $t0, 0
	sw $t0, -2008($fp)
	li $t0, 53174
	sw $t0, -2012($fp)
	lw $t1, -2012($fp)
	li $t2, 0
	bne $t1, $t2, label340
	j label339
label339:
	li $t0, 1
	sw $t0, -2008($fp)
label340:
	lw $t0, -2004($fp)
	lw $t1, -2008($fp)
	mul $t0, $t0, $t1
	sw $t0, -2016($fp)
	addi $t0, $fp, -224
	sw $t0, -2020($fp)
	lw $t0, -1336($fp)
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
	li $t0, 97
	sw $t0, -2040($fp)
	lw $t0, -2036($fp)
	lw $t1, -2040($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2044($fp)
	lw $t1, -2016($fp)
	lw $t2, -2044($fp)
	beq $t1, $t2, label337
	j label338
label337:
	li $t0, 1
	sw $t0, -2000($fp)
label338:
	lw $t0, -484($fp)
	sw $t0, -2048($fp)
	li $t0, 0
	lw $t1, -2048($fp)
	sub $t0, $t0, $t1
	sw $t0, -2052($fp)
	li $t0, 0
	sw $t0, -2056($fp)
	lw $t0, -508($fp)
	sw $t0, -2060($fp)
	lw $t0, -1992($fp)
	sw $t0, -2064($fp)
	lw $t1, -2060($fp)
	lw $t2, -2064($fp)
	beq $t1, $t2, label341
	j label342
label341:
	li $t0, 1
	sw $t0, -2056($fp)
label342:
	j label333
label332:
	lw $t0, -460($fp)
	sw $t0, -2068($fp)
	lw $t1, -2068($fp)
	li $t2, 0
	bne $t1, $t2, label343
	j label344
label343:
	li $t0, 0
	sw $t0, -2072($fp)
	li $t0, 19971
	sw $t0, -2076($fp)
	lw $t1, -2076($fp)
	li $t2, 0
	bne $t1, $t2, label347
	j label346
label346:
	li $t0, 1
	sw $t0, -2072($fp)
label347:
	lw $t0, -2072($fp)
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	sw $t0, -2080($fp)
	j label345
label344:
	li $t0, 0
	sw $t0, -2084($fp)
	li $t0, 53117
	sw $t0, -2088($fp)
	li $t0, 0
	sw $t0, -2092($fp)
	li $t0, 7112
	sw $t0, -2096($fp)
	li $t0, 0
	lw $t1, -2096($fp)
	sub $t0, $t0, $t1
	sw $t0, -2100($fp)
	lw $t1, -2100($fp)
	li $t2, 0
	bne $t1, $t2, label351
	j label350
label350:
	li $t0, 1
	sw $t0, -2092($fp)
label351:
	li $t0, 999
	sw $t0, -2104($fp)
	li $t0, 0
	lw $t1, -2104($fp)
	sub $t0, $t0, $t1
	sw $t0, -2108($fp)
	li $t0, 0
	lw $t1, -2108($fp)
	sub $t0, $t0, $t1
	sw $t0, -2112($fp)
	addi $sp, $sp, -4
	lw $t0, -2088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2112($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2116($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -72
	sw $t0, -2120($fp)
	lw $t0, -976($fp)
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
	lw $t0, -1252($fp)
	sw $t0, -2140($fp)
	lw $t0, -2136($fp)
	lw $t1, -2140($fp)
	mul $t0, $t0, $t1
	sw $t0, -2144($fp)
	lw $t0, -2116($fp)
	lw $t1, -2144($fp)
	add $t0, $t0, $t1
	sw $t0, -2148($fp)
	li $t0, 55317
	sw $t0, -2152($fp)
	lw $t1, -2148($fp)
	lw $t2, -2152($fp)
	bgt $t1, $t2, label348
	j label349
label348:
	li $t0, 1
	sw $t0, -2084($fp)
label349:
label345:
label333:
label305:
	li $t0, 60177
	sw $t0, -2172($fp)
	addi $t0, $fp, -2168
	sw $t0, -2176($fp)
	li $t0, 0
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
	li $t0, 7588
	sw $t0, -2196($fp)
	addi $t0, $fp, -2168
	sw $t0, -2200($fp)
	li $t0, 1
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
	li $t0, 38474
	sw $t0, -2220($fp)
	addi $t0, $fp, -2168
	sw $t0, -2224($fp)
	li $t0, 2
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
	li $t0, 10321
	sw $t0, -2244($fp)
	addi $t0, $fp, -2168
	sw $t0, -2248($fp)
	li $t0, 3
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
	li $t0, 0
	sw $t0, -2268($fp)
	li $t0, 23279
	sw $t0, -2272($fp)
	li $t0, 0
	lw $t1, -2272($fp)
	sub $t0, $t0, $t1
	sw $t0, -2276($fp)
	lw $t0, -1252($fp)
	sw $t0, -2280($fp)
	li $t0, 0
	lw $t1, -2280($fp)
	sub $t0, $t0, $t1
	sw $t0, -2284($fp)
	li $t0, 0
	lw $t1, -2284($fp)
	sub $t0, $t0, $t1
	sw $t0, -2288($fp)
	addi $t0, $fp, -196
	sw $t0, -2292($fp)
	lw $t0, -1252($fp)
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
	add $t0, $t0, $t1
	sw $t0, -2312($fp)
	lw $t1, -2276($fp)
	lw $t2, -2312($fp)
	beq $t1, $t2, label352
	j label353
label352:
	li $t0, 1
	sw $t0, -2268($fp)
label353:
	li $t0, 3154
	sw $t0, -2316($fp)
	li $t0, 0
	sw $t0, -2320($fp)
	li $t0, 0
	sw $t0, -2324($fp)
	li $t0, 33422
	sw $t0, -2328($fp)
	li $t0, 50568
	sw $t0, -2332($fp)
	lw $t1, -2328($fp)
	lw $t2, -2332($fp)
	ble $t1, $t2, label356
	j label357
label356:
	li $t0, 1
	sw $t0, -2324($fp)
label357:
	li $t0, 22775
	sw $t0, -2336($fp)
	lw $t1, -2324($fp)
	lw $t2, -2336($fp)
	bne $t1, $t2, label354
	j label355
label354:
	li $t0, 1
	sw $t0, -2320($fp)
label355:
	addi $t0, $fp, -224
	sw $t0, -2340($fp)
	lw $t0, -520($fp)
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
	lw $t0, -1360($fp)
	sw $t0, -2360($fp)
	lw $t0, -2356($fp)
	lw $t1, -2360($fp)
	add $t0, $t0, $t1
	sw $t0, -2364($fp)
	li $t0, 0
	sw $t0, -2368($fp)
	jal f9
	sw $v0, -2372($fp)
	addi $sp, $sp, 4
	lw $t0, -532($fp)
	sw $t0, -2376($fp)
	lw $t1, -2372($fp)
	lw $t2, -2376($fp)
	beq $t1, $t2, label358
	j label359
label358:
	li $t0, 1
	sw $t0, -2368($fp)
label359:
	li $t0, 0
	sw $t0, -2380($fp)
	li $t0, 18610
	sw $t0, -2384($fp)
	lw $t1, -2384($fp)
	li $t2, 0
	bne $t1, $t2, label363
	j label362
label363:
	lw $t0, -1252($fp)
	sw $t0, -2388($fp)
	lw $t1, -2388($fp)
	li $t2, 0
	bne $t1, $t2, label360
	j label362
label362:
	li $t0, 41347
	sw $t0, -2392($fp)
	lw $t1, -2392($fp)
	li $t2, 0
	bne $t1, $t2, label360
	j label361
label360:
	li $t0, 1
	sw $t0, -2380($fp)
label361:
	li $t0, 21407
	sw $t0, -2396($fp)
	li $t0, 0
	lw $t1, -2396($fp)
	sub $t0, $t0, $t1
	sw $t0, -2400($fp)
	addi $sp, $sp, -4
	lw $t0, -2320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2400($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2404($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -2404($fp)
	sub $t0, $t0, $t1
	sw $t0, -2408($fp)
	li $t0, 0
	lw $t1, -2408($fp)
	sub $t0, $t0, $t1
	sw $t0, -2412($fp)
	lw $t0, -2316($fp)
	lw $t1, -2412($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2416($fp)
	li $t0, 0
	sw $t0, -2420($fp)
	jal f10
	sw $v0, -2424($fp)
	addi $sp, $sp, 4
	jal f10
	sw $v0, -2428($fp)
	addi $sp, $sp, 4
	li $t0, 2298
	sw $t0, -2432($fp)
	lw $t0, -2428($fp)
	lw $t1, -2432($fp)
	sub $t0, $t0, $t1
	sw $t0, -2436($fp)
	lw $t1, -2424($fp)
	lw $t2, -2436($fp)
	bne $t1, $t2, label364
	j label365
label364:
	li $t0, 1
	sw $t0, -2420($fp)
label365:
	li $t0, 0
	sw $t0, -2440($fp)
	addi $t0, $fp, -2168
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
	lw $t0, -976($fp)
	sw $t0, -2464($fp)
	lw $t1, -2460($fp)
	lw $t2, -2464($fp)
	beq $t1, $t2, label368
	j label367
label368:
	li $t0, 37699
	sw $t0, -2468($fp)
	lw $t1, -2468($fp)
	li $t2, 0
	bne $t1, $t2, label366
	j label367
label366:
	li $t0, 1
	sw $t0, -2440($fp)
label367:
	lw $t0, -2440($fp)
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	sw $t0, -2472($fp)
	li $t0, 0
	sw $t0, -2476($fp)
	li $t0, 0
	sw $t0, -2480($fp)
	lw $t0, -1336($fp)
	sw $t0, -2484($fp)
	lw $t1, -2484($fp)
	li $t2, 0
	bne $t1, $t2, label373
	j label372
label372:
	li $t0, 1
	sw $t0, -2480($fp)
label373:
	li $t0, 49976
	sw $t0, -2488($fp)
	lw $t0, -1348($fp)
	sw $t0, -2492($fp)
	lw $t0, -2488($fp)
	lw $t1, -2492($fp)
	mul $t0, $t0, $t1
	sw $t0, -2496($fp)
	lw $t0, -2480($fp)
	lw $t1, -2496($fp)
	sub $t0, $t0, $t1
	sw $t0, -2500($fp)
	lw $t1, -2500($fp)
	li $t2, 0
	bne $t1, $t2, label369
	j label371
label371:
	li $t0, 0
	sw $t0, -2504($fp)
	lw $t0, -496($fp)
	sw $t0, -2508($fp)
	li $t0, 20750
	sw $t0, -2512($fp)
	lw $t0, -2508($fp)
	lw $t1, -2512($fp)
	mul $t0, $t0, $t1
	sw $t0, -2516($fp)
	lw $t0, -1252($fp)
	sw $t0, -2520($fp)
	lw $t1, -2516($fp)
	lw $t2, -2520($fp)
	bne $t1, $t2, label374
	j label375
label374:
	li $t0, 1
	sw $t0, -2504($fp)
label375:
	li $t0, 20653
	sw $t0, -2524($fp)
	li $t0, 15499
	sw $t0, -2528($fp)
	lw $t0, -2524($fp)
	lw $t1, -2528($fp)
	mul $t0, $t0, $t1
	sw $t0, -2532($fp)
	li $t0, 1
	sw $t0, -2536($fp)
	lw $t0, -2532($fp)
	lw $t1, -2536($fp)
	mul $t0, $t0, $t1
	sw $t0, -2540($fp)
	li $t0, 0
	sw $t0, -2544($fp)
	lw $t0, -496($fp)
	sw $t0, -2548($fp)
	lw $t1, -2548($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label377
label379:
	li $t0, 54086
	sw $t0, -2552($fp)
	lw $t1, -2552($fp)
	li $t2, 0
	bne $t1, $t2, label378
	j label377
label378:
	li $t0, 58627
	sw $t0, -2556($fp)
	lw $t1, -2556($fp)
	li $t2, 0
	bne $t1, $t2, label376
	j label377
label376:
	li $t0, 1
	sw $t0, -2544($fp)
label377:
	addi $t0, $fp, -124
	sw $t0, -2560($fp)
	li $t0, 0
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
	li $t0, 12908
	sw $t0, -2580($fp)
	addi $sp, $sp, -4
	lw $t0, -2504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2580($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2584($fp)
	addi $sp, $sp, 24
	lw $t0, -496($fp)
	sw $t0, -2588($fp)
	lw $t0, -2584($fp)
	lw $t1, -2588($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2592($fp)
	lw $t1, -2592($fp)
	li $t2, 0
	bne $t1, $t2, label369
	j label370
label369:
	li $t0, 1
	sw $t0, -2476($fp)
label370:
	li $t0, 35470
	sw $t0, -2596($fp)
	lw $t0, -1336($fp)
	sw $t0, -2600($fp)
	lw $t0, -2596($fp)
	lw $t1, -2600($fp)
	add $t0, $t0, $t1
	sw $t0, -2604($fp)
	addi $t0, $fp, -32
	sw $t0, -2608($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -2628($fp)
	li $t0, 1
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
	addi $t0, $fp, -32
	sw $t0, -2648($fp)
	li $t0, 2
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
	addi $t0, $fp, -32
	sw $t0, -2668($fp)
	li $t0, 3
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
	addi $t0, $fp, -32
	sw $t0, -2688($fp)
	li $t0, 4
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
	addi $t0, $fp, -32
	sw $t0, -2708($fp)
	li $t0, 5
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
	addi $t0, $fp, -32
	sw $t0, -2728($fp)
	li $t0, 6
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
	lw $t0, -400($fp)
	sw $t0, -2748($fp)
	lw $t0, -2748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -412($fp)
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -424($fp)
	sw $t0, -2756($fp)
	lw $t0, -2756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -436($fp)
	sw $t0, -2760($fp)
	lw $t0, -2760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -448($fp)
	sw $t0, -2764($fp)
	lw $t0, -2764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -460($fp)
	sw $t0, -2768($fp)
	lw $t0, -2768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -472($fp)
	sw $t0, -2772($fp)
	lw $t0, -2772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -484($fp)
	sw $t0, -2776($fp)
	lw $t0, -2776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -496($fp)
	sw $t0, -2780($fp)
	lw $t0, -2780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -508($fp)
	sw $t0, -2784($fp)
	lw $t0, -2784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -520($fp)
	sw $t0, -2788($fp)
	lw $t0, -2788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -532($fp)
	sw $t0, -2792($fp)
	lw $t0, -2792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -2796($fp)
	li $t0, 0
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
	li $t0, 1
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
	li $t0, 2
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
	li $t0, 3
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
	li $t0, 4
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
	addi $t0, $fp, -72
	sw $t0, -2896($fp)
	li $t0, 5
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
	addi $t0, $fp, -72
	sw $t0, -2916($fp)
	li $t0, 6
	sw $t0, -2920($fp)
	li $t0, 4
	lw $t1, -2920($fp)
	mul $t0, $t0, $t1
	sw $t0, -2924($fp)
	lw $t0, -2924($fp)
	lw $t1, -2916($fp)
	add $t0, $t0, $t1
	sw $t0, -2928($fp)
	lw $t0, -2928($fp)
	lw $t1, 0($t0)
	sw $t1, -2932($fp)
	lw $t0, -2932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -2936($fp)
	li $t0, 7
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
	addi $t0, $fp, -72
	sw $t0, -2956($fp)
	li $t0, 8
	sw $t0, -2960($fp)
	li $t0, 4
	lw $t1, -2960($fp)
	mul $t0, $t0, $t1
	sw $t0, -2964($fp)
	lw $t0, -2964($fp)
	lw $t1, -2956($fp)
	add $t0, $t0, $t1
	sw $t0, -2968($fp)
	lw $t0, -2968($fp)
	lw $t1, 0($t0)
	sw $t1, -2972($fp)
	lw $t0, -2972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -2976($fp)
	li $t0, 9
	sw $t0, -2980($fp)
	li $t0, 4
	lw $t1, -2980($fp)
	mul $t0, $t0, $t1
	sw $t0, -2984($fp)
	lw $t0, -2984($fp)
	lw $t1, -2976($fp)
	add $t0, $t0, $t1
	sw $t0, -2988($fp)
	lw $t0, -2988($fp)
	lw $t1, 0($t0)
	sw $t1, -2992($fp)
	lw $t0, -2992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -2996($fp)
	li $t0, 0
	sw $t0, -3000($fp)
	li $t0, 4
	lw $t1, -3000($fp)
	mul $t0, $t0, $t1
	sw $t0, -3004($fp)
	lw $t0, -3004($fp)
	lw $t1, -2996($fp)
	add $t0, $t0, $t1
	sw $t0, -3008($fp)
	lw $t0, -3008($fp)
	lw $t1, 0($t0)
	sw $t1, -3012($fp)
	lw $t0, -3012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -3016($fp)
	li $t0, 1
	sw $t0, -3020($fp)
	li $t0, 4
	lw $t1, -3020($fp)
	mul $t0, $t0, $t1
	sw $t0, -3024($fp)
	lw $t0, -3024($fp)
	lw $t1, -3016($fp)
	add $t0, $t0, $t1
	sw $t0, -3028($fp)
	lw $t0, -3028($fp)
	lw $t1, 0($t0)
	sw $t1, -3032($fp)
	lw $t0, -3032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -3036($fp)
	li $t0, 2
	sw $t0, -3040($fp)
	li $t0, 4
	lw $t1, -3040($fp)
	mul $t0, $t0, $t1
	sw $t0, -3044($fp)
	lw $t0, -3044($fp)
	lw $t1, -3036($fp)
	add $t0, $t0, $t1
	sw $t0, -3048($fp)
	lw $t0, -3048($fp)
	lw $t1, 0($t0)
	sw $t1, -3052($fp)
	lw $t0, -3052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -3056($fp)
	li $t0, 3
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
	lw $t0, -3072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -3076($fp)
	li $t0, 4
	sw $t0, -3080($fp)
	li $t0, 4
	lw $t1, -3080($fp)
	mul $t0, $t0, $t1
	sw $t0, -3084($fp)
	lw $t0, -3084($fp)
	lw $t1, -3076($fp)
	add $t0, $t0, $t1
	sw $t0, -3088($fp)
	lw $t0, -3088($fp)
	lw $t1, 0($t0)
	sw $t1, -3092($fp)
	lw $t0, -3092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -3096($fp)
	li $t0, 5
	sw $t0, -3100($fp)
	li $t0, 4
	lw $t1, -3100($fp)
	mul $t0, $t0, $t1
	sw $t0, -3104($fp)
	lw $t0, -3104($fp)
	lw $t1, -3096($fp)
	add $t0, $t0, $t1
	sw $t0, -3108($fp)
	lw $t0, -3108($fp)
	lw $t1, 0($t0)
	sw $t1, -3112($fp)
	lw $t0, -3112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -3116($fp)
	li $t0, 6
	sw $t0, -3120($fp)
	li $t0, 4
	lw $t1, -3120($fp)
	mul $t0, $t0, $t1
	sw $t0, -3124($fp)
	lw $t0, -3124($fp)
	lw $t1, -3116($fp)
	add $t0, $t0, $t1
	sw $t0, -3128($fp)
	lw $t0, -3128($fp)
	lw $t1, 0($t0)
	sw $t1, -3132($fp)
	lw $t0, -3132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -3136($fp)
	li $t0, 7
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
	lw $t0, -3152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -976($fp)
	sw $t0, -3156($fp)
	lw $t0, -3156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -988($fp)
	sw $t0, -3160($fp)
	lw $t0, -3160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -3164($fp)
	li $t0, 0
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
	lw $t0, -3180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -3184($fp)
	li $t0, 1
	sw $t0, -3188($fp)
	li $t0, 4
	lw $t1, -3188($fp)
	mul $t0, $t0, $t1
	sw $t0, -3192($fp)
	lw $t0, -3192($fp)
	lw $t1, -3184($fp)
	add $t0, $t0, $t1
	sw $t0, -3196($fp)
	lw $t0, -3196($fp)
	lw $t1, 0($t0)
	sw $t1, -3200($fp)
	lw $t0, -3200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -3204($fp)
	li $t0, 2
	sw $t0, -3208($fp)
	li $t0, 4
	lw $t1, -3208($fp)
	mul $t0, $t0, $t1
	sw $t0, -3212($fp)
	lw $t0, -3212($fp)
	lw $t1, -3204($fp)
	add $t0, $t0, $t1
	sw $t0, -3216($fp)
	lw $t0, -3216($fp)
	lw $t1, 0($t0)
	sw $t1, -3220($fp)
	lw $t0, -3220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -3224($fp)
	li $t0, 3
	sw $t0, -3228($fp)
	li $t0, 4
	lw $t1, -3228($fp)
	mul $t0, $t0, $t1
	sw $t0, -3232($fp)
	lw $t0, -3232($fp)
	lw $t1, -3224($fp)
	add $t0, $t0, $t1
	sw $t0, -3236($fp)
	lw $t0, -3236($fp)
	lw $t1, 0($t0)
	sw $t1, -3240($fp)
	lw $t0, -3240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -3244($fp)
	li $t0, 4
	sw $t0, -3248($fp)
	li $t0, 4
	lw $t1, -3248($fp)
	mul $t0, $t0, $t1
	sw $t0, -3252($fp)
	lw $t0, -3252($fp)
	lw $t1, -3244($fp)
	add $t0, $t0, $t1
	sw $t0, -3256($fp)
	lw $t0, -3256($fp)
	lw $t1, 0($t0)
	sw $t1, -3260($fp)
	lw $t0, -3260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -3264($fp)
	li $t0, 0
	sw $t0, -3268($fp)
	li $t0, 4
	lw $t1, -3268($fp)
	mul $t0, $t0, $t1
	sw $t0, -3272($fp)
	lw $t0, -3272($fp)
	lw $t1, -3264($fp)
	add $t0, $t0, $t1
	sw $t0, -3276($fp)
	lw $t0, -3276($fp)
	lw $t1, 0($t0)
	sw $t1, -3280($fp)
	lw $t0, -3280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -3284($fp)
	li $t0, 1
	sw $t0, -3288($fp)
	li $t0, 4
	lw $t1, -3288($fp)
	mul $t0, $t0, $t1
	sw $t0, -3292($fp)
	lw $t0, -3292($fp)
	lw $t1, -3284($fp)
	add $t0, $t0, $t1
	sw $t0, -3296($fp)
	lw $t0, -3296($fp)
	lw $t1, 0($t0)
	sw $t1, -3300($fp)
	lw $t0, -3300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -3304($fp)
	li $t0, 2
	sw $t0, -3308($fp)
	li $t0, 4
	lw $t1, -3308($fp)
	mul $t0, $t0, $t1
	sw $t0, -3312($fp)
	lw $t0, -3312($fp)
	lw $t1, -3304($fp)
	add $t0, $t0, $t1
	sw $t0, -3316($fp)
	lw $t0, -3316($fp)
	lw $t1, 0($t0)
	sw $t1, -3320($fp)
	lw $t0, -3320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -3324($fp)
	li $t0, 3
	sw $t0, -3328($fp)
	li $t0, 4
	lw $t1, -3328($fp)
	mul $t0, $t0, $t1
	sw $t0, -3332($fp)
	lw $t0, -3332($fp)
	lw $t1, -3324($fp)
	add $t0, $t0, $t1
	sw $t0, -3336($fp)
	lw $t0, -3336($fp)
	lw $t1, 0($t0)
	sw $t1, -3340($fp)
	lw $t0, -3340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -3344($fp)
	li $t0, 4
	sw $t0, -3348($fp)
	li $t0, 4
	lw $t1, -3348($fp)
	mul $t0, $t0, $t1
	sw $t0, -3352($fp)
	lw $t0, -3352($fp)
	lw $t1, -3344($fp)
	add $t0, $t0, $t1
	sw $t0, -3356($fp)
	lw $t0, -3356($fp)
	lw $t1, 0($t0)
	sw $t1, -3360($fp)
	lw $t0, -3360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1240($fp)
	sw $t0, -3364($fp)
	lw $t0, -3364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1252($fp)
	sw $t0, -3368($fp)
	lw $t0, -3368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -156
	sw $t0, -3372($fp)
	li $t0, 0
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
	lw $t0, -3388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -156
	sw $t0, -3392($fp)
	li $t0, 1
	sw $t0, -3396($fp)
	li $t0, 4
	lw $t1, -3396($fp)
	mul $t0, $t0, $t1
	sw $t0, -3400($fp)
	lw $t0, -3400($fp)
	lw $t1, -3392($fp)
	add $t0, $t0, $t1
	sw $t0, -3404($fp)
	lw $t0, -3404($fp)
	lw $t1, 0($t0)
	sw $t1, -3408($fp)
	lw $t0, -3408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -156
	sw $t0, -3412($fp)
	li $t0, 2
	sw $t0, -3416($fp)
	li $t0, 4
	lw $t1, -3416($fp)
	mul $t0, $t0, $t1
	sw $t0, -3420($fp)
	lw $t0, -3420($fp)
	lw $t1, -3412($fp)
	add $t0, $t0, $t1
	sw $t0, -3424($fp)
	lw $t0, -3424($fp)
	lw $t1, 0($t0)
	sw $t1, -3428($fp)
	lw $t0, -3428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1336($fp)
	sw $t0, -3432($fp)
	lw $t0, -3432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1348($fp)
	sw $t0, -3436($fp)
	lw $t0, -3436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1360($fp)
	sw $t0, -3440($fp)
	lw $t0, -3440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -3444($fp)
	li $t0, 0
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
	addi $t0, $fp, -196
	sw $t0, -3464($fp)
	li $t0, 1
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
	addi $t0, $fp, -196
	sw $t0, -3484($fp)
	li $t0, 2
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
	addi $t0, $fp, -196
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
	lw $t0, -3520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -3524($fp)
	li $t0, 4
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
	addi $t0, $fp, -196
	sw $t0, -3544($fp)
	li $t0, 5
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
	addi $t0, $fp, -196
	sw $t0, -3564($fp)
	li $t0, 6
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
	addi $t0, $fp, -196
	sw $t0, -3584($fp)
	li $t0, 7
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
	addi $t0, $fp, -196
	sw $t0, -3604($fp)
	li $t0, 8
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
	addi $t0, $fp, -196
	sw $t0, -3624($fp)
	li $t0, 9
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
	addi $t0, $fp, -224
	sw $t0, -3644($fp)
	li $t0, 0
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
	addi $t0, $fp, -224
	sw $t0, -3664($fp)
	li $t0, 1
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
	addi $t0, $fp, -224
	sw $t0, -3684($fp)
	li $t0, 2
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
	addi $t0, $fp, -224
	sw $t0, -3704($fp)
	li $t0, 3
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
	addi $t0, $fp, -224
	sw $t0, -3724($fp)
	li $t0, 4
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
	addi $t0, $fp, -224
	sw $t0, -3744($fp)
	li $t0, 5
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
	lw $t0, -3760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -3764($fp)
	li $t0, 6
	sw $t0, -3768($fp)
	li $t0, 4
	lw $t1, -3768($fp)
	mul $t0, $t0, $t1
	sw $t0, -3772($fp)
	lw $t0, -3772($fp)
	lw $t1, -3764($fp)
	add $t0, $t0, $t1
	sw $t0, -3776($fp)
	lw $t0, -3776($fp)
	lw $t1, 0($t0)
	sw $t1, -3780($fp)
	lw $t0, -3780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -3784($fp)
	li $t0, 1
	sw $t0, -3788($fp)
	li $t0, 4
	lw $t1, -3788($fp)
	mul $t0, $t0, $t1
	sw $t0, -3792($fp)
	lw $t0, -3792($fp)
	lw $t1, -3784($fp)
	add $t0, $t0, $t1
	sw $t0, -3796($fp)
	lw $t0, -3796($fp)
	lw $t1, 0($t0)
	sw $t1, -3800($fp)
	li $t0, 23051
	sw $t0, -3804($fp)
	lw $t0, -3800($fp)
	lw $t1, -3804($fp)
	mul $t0, $t0, $t1
	sw $t0, -3808($fp)
	jal f10
	sw $v0, -3812($fp)
	addi $sp, $sp, 4
	lw $t0, -3808($fp)
	lw $t1, -3812($fp)
	add $t0, $t0, $t1
	sw $t0, -3816($fp)
	jal f10
	sw $v0, -3820($fp)
	addi $sp, $sp, 4
	lw $t0, -3816($fp)
	lw $t1, -3820($fp)
	sub $t0, $t0, $t1
	sw $t0, -3824($fp)
	li $t0, 37046
	sw $t0, -3828($fp)
	lw $t0, -3824($fp)
	lw $t1, -3828($fp)
	sub $t0, $t0, $t1
	sw $t0, -3832($fp)
	lw $ra, -4($fp)
	lw $v0, -3832($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 22504
	sw $t0, -3836($fp)
	lw $t0, -3836($fp)
	sw $t0, -3840($fp)
	lw $t0, -3840($fp)
	sw $t0, -3844($fp)
	li $t0, 0
	sw $t0, -3848($fp)
	li $t0, 30639
	sw $t0, -3852($fp)
	li $t0, 9984
	sw $t0, -3856($fp)
	lw $t0, -3852($fp)
	lw $t1, -3856($fp)
	add $t0, $t0, $t1
	sw $t0, -3860($fp)
	lw $t0, -988($fp)
	sw $t0, -3864($fp)
	lw $t0, -3860($fp)
	lw $t1, -3864($fp)
	sub $t0, $t0, $t1
	sw $t0, -3868($fp)
	addi $t0, $fp, -32
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
	lw $t0, -3868($fp)
	lw $t1, -3888($fp)
	sub $t0, $t0, $t1
	sw $t0, -3892($fp)
	lw $t0, -532($fp)
	sw $t0, -3896($fp)
	li $t0, 13138
	sw $t0, -3900($fp)
	lw $t0, -3896($fp)
	lw $t1, -3900($fp)
	mul $t0, $t0, $t1
	sw $t0, -3904($fp)
	lw $t1, -3892($fp)
	lw $t2, -3904($fp)
	beq $t1, $t2, label382
	j label381
label382:
	lw $t0, -400($fp)
	sw $t0, -3908($fp)
	lw $t0, -1252($fp)
	sw $t0, -3912($fp)
	lw $t0, -3908($fp)
	lw $t1, -3912($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3916($fp)
	lw $t1, -3916($fp)
	li $t2, 0
	bne $t1, $t2, label380
	j label381
label380:
	li $t0, 1
	sw $t0, -3848($fp)
label381:
	addi $t0, $fp, -124
	sw $t0, -3920($fp)
	li $t0, 0
	sw $t0, -3924($fp)
	li $t0, 54233
	sw $t0, -3928($fp)
	li $t0, 0
	lw $t1, -3928($fp)
	sub $t0, $t0, $t1
	sw $t0, -3932($fp)
	lw $t1, -3932($fp)
	li $t2, 0
	bne $t1, $t2, label384
	j label383
label383:
	li $t0, 1
	sw $t0, -3924($fp)
label384:
	li $t0, 4
	lw $t1, -3924($fp)
	mul $t0, $t0, $t1
	sw $t0, -3936($fp)
	lw $t0, -3936($fp)
	lw $t1, -3920($fp)
	add $t0, $t0, $t1
	sw $t0, -3940($fp)
	lw $t0, -3940($fp)
	lw $t1, 0($t0)
	sw $t1, -3944($fp)
	lw $t0, -976($fp)
	sw $t0, -3948($fp)
	li $t0, 0
	lw $t1, -3948($fp)
	sub $t0, $t0, $t1
	sw $t0, -3952($fp)
	li $t0, 0
	lw $t1, -3952($fp)
	sub $t0, $t0, $t1
	sw $t0, -3956($fp)
	lw $t0, -3944($fp)
	lw $t1, -3956($fp)
	mul $t0, $t0, $t1
	sw $t0, -3960($fp)
	lw $t0, -532($fp)
	sw $t0, -3964($fp)
	lw $t0, -3964($fp)
	sw $t0, -3840($fp)
	lw $t0, -3840($fp)
	sw $t0, -3968($fp)
	li $t0, 57561
	sw $t0, -3972($fp)
	li $t0, 11724
	sw $t0, -3976($fp)
	lw $t0, -3972($fp)
	lw $t1, -3976($fp)
	mul $t0, $t0, $t1
	sw $t0, -3980($fp)
	li $t0, 0
	lw $t1, -3980($fp)
	sub $t0, $t0, $t1
	sw $t0, -3984($fp)
	li $t0, 22119
	sw $t0, -3988($fp)
	lw $t0, -496($fp)
	sw $t0, -3992($fp)
	lw $t0, -3988($fp)
	lw $t1, -3992($fp)
	mul $t0, $t0, $t1
	sw $t0, -3996($fp)
	li $t0, 0
	lw $t1, -3996($fp)
	sub $t0, $t0, $t1
	sw $t0, -4000($fp)
	li $t0, 6993
	sw $t0, -4004($fp)
	li $t0, 54485
	sw $t0, -4008($fp)
	lw $t0, -4004($fp)
	lw $t1, -4008($fp)
	add $t0, $t0, $t1
	sw $t0, -4012($fp)
	li $t0, 0
	sw $t0, -4016($fp)
	lw $t0, -1336($fp)
	sw $t0, -4020($fp)
	lw $t1, -4020($fp)
	li $t2, 0
	bne $t1, $t2, label386
	j label385
label385:
	li $t0, 1
	sw $t0, -4016($fp)
label386:
	lw $t0, -436($fp)
	sw $t0, -4024($fp)
	lw $t0, -4016($fp)
	lw $t1, -4024($fp)
	add $t0, $t0, $t1
	sw $t0, -4028($fp)
	addi $sp, $sp, -4
	lw $t0, -3968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4028($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4032($fp)
	addi $sp, $sp, 24
	li $t0, 45720
	sw $t0, -4036($fp)
	li $t0, 0
	sw $t0, -4040($fp)
	lw $t0, -1360($fp)
	sw $t0, -4044($fp)
	li $t0, 0
	lw $t1, -4044($fp)
	sub $t0, $t0, $t1
	sw $t0, -4048($fp)
	li $t0, 59958
	sw $t0, -4052($fp)
	lw $t1, -4048($fp)
	lw $t2, -4052($fp)
	beq $t1, $t2, label387
	j label388
label387:
	li $t0, 1
	sw $t0, -4040($fp)
label388:
	li $t0, 0
	sw $t0, -4056($fp)
	li $t0, 24417
	sw $t0, -4060($fp)
	lw $t0, -988($fp)
	sw $t0, -4064($fp)
	lw $t1, -4060($fp)
	lw $t2, -4064($fp)
	blt $t1, $t2, label389
	j label391
label391:
	lw $t0, -1336($fp)
	sw $t0, -4068($fp)
	lw $t1, -4068($fp)
	li $t2, 0
	bne $t1, $t2, label389
	j label390
label389:
	li $t0, 1
	sw $t0, -4056($fp)
label390:
	addi $sp, $sp, -4
	lw $t0, -4036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4056($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4072($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -4072($fp)
	sub $t0, $t0, $t1
	sw $t0, -4076($fp)
	li $t0, 0
	lw $t1, -4076($fp)
	sub $t0, $t0, $t1
	sw $t0, -4080($fp)
	lw $t0, -4032($fp)
	lw $t1, -4080($fp)
	sub $t0, $t0, $t1
	sw $t0, -4084($fp)
	li $t0, 0
	sw $t0, -4088($fp)
	lw $t0, -484($fp)
	sw $t0, -4092($fp)
	lw $t0, -508($fp)
	sw $t0, -4096($fp)
	lw $t0, -508($fp)
	sw $t0, -4100($fp)
	lw $t0, -4096($fp)
	lw $t1, -4100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4104($fp)
	lw $t0, -1336($fp)
	sw $t0, -4108($fp)
	lw $t0, -4104($fp)
	lw $t1, -4108($fp)
	sub $t0, $t0, $t1
	sw $t0, -4112($fp)
	addi $sp, $sp, -4
	lw $t0, -4092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4112($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4116($fp)
	addi $sp, $sp, 12
	lw $t1, -4116($fp)
	li $t2, 0
	bne $t1, $t2, label393
	j label392
label392:
	li $t0, 1
	sw $t0, -4088($fp)
label393:
	li $t0, 0
	sw $t0, -4120($fp)
	lw $t0, -496($fp)
	sw $t0, -4124($fp)
	li $t0, 62117
	sw $t0, -4128($fp)
	lw $t0, -4124($fp)
	lw $t1, -4128($fp)
	mul $t0, $t0, $t1
	sw $t0, -4132($fp)
	lw $t0, -400($fp)
	sw $t0, -4136($fp)
	lw $t0, -4132($fp)
	lw $t1, -4136($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4140($fp)
	li $t0, 44399
	sw $t0, -4144($fp)
	lw $t0, -4140($fp)
	lw $t1, -4144($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4148($fp)
	lw $t0, -508($fp)
	sw $t0, -4152($fp)
	li $t0, 0
	lw $t1, -4152($fp)
	sub $t0, $t0, $t1
	sw $t0, -4156($fp)
	li $t0, 0
	lw $t1, -4156($fp)
	sub $t0, $t0, $t1
	sw $t0, -4160($fp)
	lw $t0, -4148($fp)
	lw $t1, -4160($fp)
	sub $t0, $t0, $t1
	sw $t0, -4164($fp)
	lw $t1, -4164($fp)
	li $t2, 0
	bne $t1, $t2, label396
	j label395
label396:
	li $t0, 58628
	sw $t0, -4168($fp)
	lw $t1, -4168($fp)
	li $t2, 0
	bne $t1, $t2, label394
	j label395
label394:
	li $t0, 1
	sw $t0, -4120($fp)
label395:
	lw $t0, -496($fp)
	sw $t0, -4172($fp)
	li $t0, 0
	sw $t0, -4176($fp)
	li $t0, 43899
	sw $t0, -4180($fp)
	lw $t1, -4180($fp)
	li $t2, 0
	bne $t1, $t2, label398
	j label397
label397:
	li $t0, 1
	sw $t0, -4176($fp)
label398:
	lw $t0, -4172($fp)
	lw $t1, -4176($fp)
	sub $t0, $t0, $t1
	sw $t0, -4184($fp)
	lw $t0, -4184($fp)
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	sw $t0, -4188($fp)
	li $t0, 48562
	sw $t0, -4192($fp)
	addi $t0, $fp, -104
	sw $t0, -4196($fp)
	lw $t0, -460($fp)
	sw $t0, -4200($fp)
	li $t0, 4
	lw $t1, -4200($fp)
	mul $t0, $t0, $t1
	sw $t0, -4204($fp)
	lw $t0, -4204($fp)
	lw $t1, -4196($fp)
	add $t0, $t0, $t1
	sw $t0, -4208($fp)
	lw $t0, -4208($fp)
	lw $t1, 0($t0)
	sw $t1, -4212($fp)
	lw $t0, -400($fp)
	sw $t0, -4216($fp)
	lw $t0, -4212($fp)
	lw $t1, -4216($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4220($fp)
	lw $t0, -4192($fp)
	lw $t1, -4220($fp)
	add $t0, $t0, $t1
	sw $t0, -4224($fp)
	lw $t1, -4224($fp)
	li $t2, 0
	bne $t1, $t2, label399
	j label402
label402:
	addi $t0, $fp, -156
	sw $t0, -4228($fp)
	li $t0, 0
	sw $t0, -4232($fp)
	li $t0, 47179
	sw $t0, -4236($fp)
	lw $t1, -4236($fp)
	li $t2, 0
	bne $t1, $t2, label403
	j label405
label405:
	li $t0, 36990
	sw $t0, -4240($fp)
	lw $t1, -4240($fp)
	li $t2, 0
	bne $t1, $t2, label403
	j label404
label403:
	li $t0, 1
	sw $t0, -4232($fp)
label404:
	li $t0, 4
	lw $t1, -4232($fp)
	mul $t0, $t0, $t1
	sw $t0, -4244($fp)
	lw $t0, -4244($fp)
	lw $t1, -4228($fp)
	add $t0, $t0, $t1
	sw $t0, -4248($fp)
	lw $t0, -4248($fp)
	lw $t1, 0($t0)
	sw $t1, -4252($fp)
	lw $t1, -4252($fp)
	li $t2, 0
	bne $t1, $t2, label399
	j label400
label399:
label406:
	addi $t0, $fp, -32
	sw $t0, -4256($fp)
	li $t0, 0
	sw $t0, -4260($fp)
	lw $t0, -448($fp)
	sw $t0, -4264($fp)
	lw $t0, -460($fp)
	sw $t0, -4268($fp)
	lw $t0, -4264($fp)
	lw $t1, -4268($fp)
	mul $t0, $t0, $t1
	sw $t0, -4272($fp)
	lw $t1, -4272($fp)
	li $t2, 0
	bne $t1, $t2, label412
	j label411
label412:
	lw $t0, -472($fp)
	sw $t0, -4276($fp)
	lw $t1, -4276($fp)
	li $t2, 0
	bne $t1, $t2, label410
	j label411
label410:
	li $t0, 1
	sw $t0, -4260($fp)
label411:
	li $t0, 4
	lw $t1, -4260($fp)
	mul $t0, $t0, $t1
	sw $t0, -4280($fp)
	lw $t0, -4280($fp)
	lw $t1, -4256($fp)
	add $t0, $t0, $t1
	sw $t0, -4284($fp)
	lw $t0, -4284($fp)
	lw $t1, 0($t0)
	sw $t1, -4288($fp)
	lw $t1, -4288($fp)
	li $t2, 0
	bne $t1, $t2, label409
	j label408
label409:
	addi $t0, $fp, -104
	sw $t0, -4292($fp)
	lw $t0, -400($fp)
	sw $t0, -4296($fp)
	li $t0, 4
	lw $t1, -4296($fp)
	mul $t0, $t0, $t1
	sw $t0, -4300($fp)
	lw $t0, -4300($fp)
	lw $t1, -4292($fp)
	add $t0, $t0, $t1
	sw $t0, -4304($fp)
	lw $t0, -4304($fp)
	lw $t1, 0($t0)
	sw $t1, -4308($fp)
	lw $t0, -448($fp)
	sw $t0, -4312($fp)
	lw $t0, -4308($fp)
	lw $t1, -4312($fp)
	mul $t0, $t0, $t1
	sw $t0, -4316($fp)
	jal f10
	sw $v0, -4320($fp)
	addi $sp, $sp, 4
	lw $t0, -4316($fp)
	lw $t1, -4320($fp)
	mul $t0, $t0, $t1
	sw $t0, -4324($fp)
	lw $t1, -4324($fp)
	li $t2, 0
	bne $t1, $t2, label407
	j label408
label407:
	li $t0, 0
	sw $t0, -4328($fp)
	lw $t0, -508($fp)
	sw $t0, -4332($fp)
	li $t0, 3679
	sw $t0, -4336($fp)
	lw $t0, -4336($fp)
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -4340($fp)
	addi $sp, $sp, -4
	lw $t0, -4332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4340($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4344($fp)
	addi $sp, $sp, 12
	lw $t0, -472($fp)
	sw $t0, -4348($fp)
	lw $t0, -4344($fp)
	lw $t1, -4348($fp)
	mul $t0, $t0, $t1
	sw $t0, -4352($fp)
	lw $t1, -4352($fp)
	li $t2, 0
	bne $t1, $t2, label413
	j label415
label415:
	li $t0, 0
	sw $t0, -4356($fp)
	li $t0, 62678
	sw $t0, -4360($fp)
	lw $t0, -400($fp)
	sw $t0, -4364($fp)
	lw $t0, -4360($fp)
	lw $t1, -4364($fp)
	add $t0, $t0, $t1
	sw $t0, -4368($fp)
	lw $t0, -460($fp)
	sw $t0, -4372($fp)
	lw $t1, -4368($fp)
	lw $t2, -4372($fp)
	blt $t1, $t2, label416
	j label417
label416:
	li $t0, 1
	sw $t0, -4356($fp)
label417:
	li $t0, 17719
	sw $t0, -4376($fp)
	li $t0, 24429
	sw $t0, -4380($fp)
	lw $t0, -4376($fp)
	lw $t1, -4380($fp)
	mul $t0, $t0, $t1
	sw $t0, -4384($fp)
	lw $t1, -4356($fp)
	lw $t2, -4384($fp)
	ble $t1, $t2, label413
	j label414
label413:
	li $t0, 1
	sw $t0, -4328($fp)
label414:
	lw $ra, -4($fp)
	lw $v0, -4328($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label406
label408:
	j label401
label400:
	lw $t0, -412($fp)
	sw $t0, -4388($fp)
	li $t0, 32612
	sw $t0, -4392($fp)
	lw $t0, -4388($fp)
	lw $t1, -4392($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4396($fp)
	li $t0, 0
	lw $t1, -4396($fp)
	sub $t0, $t0, $t1
	sw $t0, -4400($fp)
	lw $ra, -4($fp)
	lw $v0, -4400($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label401:
	addi $t0, $fp, -32
	sw $t0, -4404($fp)
	li $t0, 0
	sw $t0, -4408($fp)
	li $t0, 4
	lw $t1, -4408($fp)
	mul $t0, $t0, $t1
	sw $t0, -4412($fp)
	lw $t0, -4412($fp)
	lw $t1, -4404($fp)
	add $t0, $t0, $t1
	sw $t0, -4416($fp)
	lw $t0, -4416($fp)
	lw $t1, 0($t0)
	sw $t1, -4420($fp)
	lw $t0, -4420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -4424($fp)
	li $t0, 1
	sw $t0, -4428($fp)
	li $t0, 4
	lw $t1, -4428($fp)
	mul $t0, $t0, $t1
	sw $t0, -4432($fp)
	lw $t0, -4432($fp)
	lw $t1, -4424($fp)
	add $t0, $t0, $t1
	sw $t0, -4436($fp)
	lw $t0, -4436($fp)
	lw $t1, 0($t0)
	sw $t1, -4440($fp)
	lw $t0, -4440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -4444($fp)
	li $t0, 2
	sw $t0, -4448($fp)
	li $t0, 4
	lw $t1, -4448($fp)
	mul $t0, $t0, $t1
	sw $t0, -4452($fp)
	lw $t0, -4452($fp)
	lw $t1, -4444($fp)
	add $t0, $t0, $t1
	sw $t0, -4456($fp)
	lw $t0, -4456($fp)
	lw $t1, 0($t0)
	sw $t1, -4460($fp)
	lw $t0, -4460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -4464($fp)
	li $t0, 3
	sw $t0, -4468($fp)
	li $t0, 4
	lw $t1, -4468($fp)
	mul $t0, $t0, $t1
	sw $t0, -4472($fp)
	lw $t0, -4472($fp)
	lw $t1, -4464($fp)
	add $t0, $t0, $t1
	sw $t0, -4476($fp)
	lw $t0, -4476($fp)
	lw $t1, 0($t0)
	sw $t1, -4480($fp)
	lw $t0, -4480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -4484($fp)
	li $t0, 4
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
	lw $t0, -4500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -4504($fp)
	li $t0, 5
	sw $t0, -4508($fp)
	li $t0, 4
	lw $t1, -4508($fp)
	mul $t0, $t0, $t1
	sw $t0, -4512($fp)
	lw $t0, -4512($fp)
	lw $t1, -4504($fp)
	add $t0, $t0, $t1
	sw $t0, -4516($fp)
	lw $t0, -4516($fp)
	lw $t1, 0($t0)
	sw $t1, -4520($fp)
	lw $t0, -4520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -4524($fp)
	li $t0, 6
	sw $t0, -4528($fp)
	li $t0, 4
	lw $t1, -4528($fp)
	mul $t0, $t0, $t1
	sw $t0, -4532($fp)
	lw $t0, -4532($fp)
	lw $t1, -4524($fp)
	add $t0, $t0, $t1
	sw $t0, -4536($fp)
	lw $t0, -4536($fp)
	lw $t1, 0($t0)
	sw $t1, -4540($fp)
	lw $t0, -4540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -400($fp)
	sw $t0, -4544($fp)
	lw $t0, -4544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -412($fp)
	sw $t0, -4548($fp)
	lw $t0, -4548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -424($fp)
	sw $t0, -4552($fp)
	lw $t0, -4552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -436($fp)
	sw $t0, -4556($fp)
	lw $t0, -4556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -448($fp)
	sw $t0, -4560($fp)
	lw $t0, -4560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -460($fp)
	sw $t0, -4564($fp)
	lw $t0, -4564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -472($fp)
	sw $t0, -4568($fp)
	lw $t0, -4568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -484($fp)
	sw $t0, -4572($fp)
	lw $t0, -4572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -496($fp)
	sw $t0, -4576($fp)
	lw $t0, -4576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -508($fp)
	sw $t0, -4580($fp)
	lw $t0, -4580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -520($fp)
	sw $t0, -4584($fp)
	lw $t0, -4584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -532($fp)
	sw $t0, -4588($fp)
	lw $t0, -4588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -4592($fp)
	li $t0, 0
	sw $t0, -4596($fp)
	li $t0, 4
	lw $t1, -4596($fp)
	mul $t0, $t0, $t1
	sw $t0, -4600($fp)
	lw $t0, -4600($fp)
	lw $t1, -4592($fp)
	add $t0, $t0, $t1
	sw $t0, -4604($fp)
	lw $t0, -4604($fp)
	lw $t1, 0($t0)
	sw $t1, -4608($fp)
	lw $t0, -4608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -4612($fp)
	li $t0, 1
	sw $t0, -4616($fp)
	li $t0, 4
	lw $t1, -4616($fp)
	mul $t0, $t0, $t1
	sw $t0, -4620($fp)
	lw $t0, -4620($fp)
	lw $t1, -4612($fp)
	add $t0, $t0, $t1
	sw $t0, -4624($fp)
	lw $t0, -4624($fp)
	lw $t1, 0($t0)
	sw $t1, -4628($fp)
	lw $t0, -4628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -4632($fp)
	li $t0, 2
	sw $t0, -4636($fp)
	li $t0, 4
	lw $t1, -4636($fp)
	mul $t0, $t0, $t1
	sw $t0, -4640($fp)
	lw $t0, -4640($fp)
	lw $t1, -4632($fp)
	add $t0, $t0, $t1
	sw $t0, -4644($fp)
	lw $t0, -4644($fp)
	lw $t1, 0($t0)
	sw $t1, -4648($fp)
	lw $t0, -4648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -4652($fp)
	li $t0, 3
	sw $t0, -4656($fp)
	li $t0, 4
	lw $t1, -4656($fp)
	mul $t0, $t0, $t1
	sw $t0, -4660($fp)
	lw $t0, -4660($fp)
	lw $t1, -4652($fp)
	add $t0, $t0, $t1
	sw $t0, -4664($fp)
	lw $t0, -4664($fp)
	lw $t1, 0($t0)
	sw $t1, -4668($fp)
	lw $t0, -4668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -4672($fp)
	li $t0, 4
	sw $t0, -4676($fp)
	li $t0, 4
	lw $t1, -4676($fp)
	mul $t0, $t0, $t1
	sw $t0, -4680($fp)
	lw $t0, -4680($fp)
	lw $t1, -4672($fp)
	add $t0, $t0, $t1
	sw $t0, -4684($fp)
	lw $t0, -4684($fp)
	lw $t1, 0($t0)
	sw $t1, -4688($fp)
	lw $t0, -4688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -4692($fp)
	li $t0, 5
	sw $t0, -4696($fp)
	li $t0, 4
	lw $t1, -4696($fp)
	mul $t0, $t0, $t1
	sw $t0, -4700($fp)
	lw $t0, -4700($fp)
	lw $t1, -4692($fp)
	add $t0, $t0, $t1
	sw $t0, -4704($fp)
	lw $t0, -4704($fp)
	lw $t1, 0($t0)
	sw $t1, -4708($fp)
	lw $t0, -4708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -4712($fp)
	li $t0, 6
	sw $t0, -4716($fp)
	li $t0, 4
	lw $t1, -4716($fp)
	mul $t0, $t0, $t1
	sw $t0, -4720($fp)
	lw $t0, -4720($fp)
	lw $t1, -4712($fp)
	add $t0, $t0, $t1
	sw $t0, -4724($fp)
	lw $t0, -4724($fp)
	lw $t1, 0($t0)
	sw $t1, -4728($fp)
	lw $t0, -4728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -4732($fp)
	li $t0, 7
	sw $t0, -4736($fp)
	li $t0, 4
	lw $t1, -4736($fp)
	mul $t0, $t0, $t1
	sw $t0, -4740($fp)
	lw $t0, -4740($fp)
	lw $t1, -4732($fp)
	add $t0, $t0, $t1
	sw $t0, -4744($fp)
	lw $t0, -4744($fp)
	lw $t1, 0($t0)
	sw $t1, -4748($fp)
	lw $t0, -4748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -4752($fp)
	li $t0, 8
	sw $t0, -4756($fp)
	li $t0, 4
	lw $t1, -4756($fp)
	mul $t0, $t0, $t1
	sw $t0, -4760($fp)
	lw $t0, -4760($fp)
	lw $t1, -4752($fp)
	add $t0, $t0, $t1
	sw $t0, -4764($fp)
	lw $t0, -4764($fp)
	lw $t1, 0($t0)
	sw $t1, -4768($fp)
	lw $t0, -4768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -4772($fp)
	li $t0, 9
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
	addi $t0, $fp, -104
	sw $t0, -4792($fp)
	li $t0, 0
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
	addi $t0, $fp, -104
	sw $t0, -4812($fp)
	li $t0, 1
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
	addi $t0, $fp, -104
	sw $t0, -4832($fp)
	li $t0, 2
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
	addi $t0, $fp, -104
	sw $t0, -4852($fp)
	li $t0, 3
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
	addi $t0, $fp, -104
	sw $t0, -4872($fp)
	li $t0, 4
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
	addi $t0, $fp, -104
	sw $t0, -4892($fp)
	li $t0, 5
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
	addi $t0, $fp, -104
	sw $t0, -4912($fp)
	li $t0, 6
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
	addi $t0, $fp, -104
	sw $t0, -4932($fp)
	li $t0, 7
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
	lw $t0, -976($fp)
	sw $t0, -4952($fp)
	lw $t0, -4952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -988($fp)
	sw $t0, -4956($fp)
	lw $t0, -4956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -4960($fp)
	li $t0, 0
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
	addi $t0, $fp, -124
	sw $t0, -4980($fp)
	li $t0, 1
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
	addi $t0, $fp, -124
	sw $t0, -5000($fp)
	li $t0, 2
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
	addi $t0, $fp, -124
	sw $t0, -5020($fp)
	li $t0, 3
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
	addi $t0, $fp, -124
	sw $t0, -5040($fp)
	li $t0, 4
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
	addi $t0, $fp, -144
	sw $t0, -5060($fp)
	li $t0, 0
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
	addi $t0, $fp, -144
	sw $t0, -5080($fp)
	li $t0, 1
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
	addi $t0, $fp, -144
	sw $t0, -5100($fp)
	li $t0, 2
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
	addi $t0, $fp, -144
	sw $t0, -5120($fp)
	li $t0, 3
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
	addi $t0, $fp, -144
	sw $t0, -5140($fp)
	li $t0, 4
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
	lw $t0, -1240($fp)
	sw $t0, -5160($fp)
	lw $t0, -5160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1252($fp)
	sw $t0, -5164($fp)
	lw $t0, -5164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -156
	sw $t0, -5168($fp)
	li $t0, 0
	sw $t0, -5172($fp)
	li $t0, 4
	lw $t1, -5172($fp)
	mul $t0, $t0, $t1
	sw $t0, -5176($fp)
	lw $t0, -5176($fp)
	lw $t1, -5168($fp)
	add $t0, $t0, $t1
	sw $t0, -5180($fp)
	lw $t0, -5180($fp)
	lw $t1, 0($t0)
	sw $t1, -5184($fp)
	lw $t0, -5184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -156
	sw $t0, -5188($fp)
	li $t0, 1
	sw $t0, -5192($fp)
	li $t0, 4
	lw $t1, -5192($fp)
	mul $t0, $t0, $t1
	sw $t0, -5196($fp)
	lw $t0, -5196($fp)
	lw $t1, -5188($fp)
	add $t0, $t0, $t1
	sw $t0, -5200($fp)
	lw $t0, -5200($fp)
	lw $t1, 0($t0)
	sw $t1, -5204($fp)
	lw $t0, -5204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -156
	sw $t0, -5208($fp)
	li $t0, 2
	sw $t0, -5212($fp)
	li $t0, 4
	lw $t1, -5212($fp)
	mul $t0, $t0, $t1
	sw $t0, -5216($fp)
	lw $t0, -5216($fp)
	lw $t1, -5208($fp)
	add $t0, $t0, $t1
	sw $t0, -5220($fp)
	lw $t0, -5220($fp)
	lw $t1, 0($t0)
	sw $t1, -5224($fp)
	lw $t0, -5224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1336($fp)
	sw $t0, -5228($fp)
	lw $t0, -5228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1348($fp)
	sw $t0, -5232($fp)
	lw $t0, -5232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1360($fp)
	sw $t0, -5236($fp)
	lw $t0, -5236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
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
	addi $t0, $fp, -196
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
	addi $t0, $fp, -196
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
	addi $t0, $fp, -196
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
	addi $t0, $fp, -196
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
	addi $t0, $fp, -196
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
	addi $t0, $fp, -196
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
	addi $t0, $fp, -196
	sw $t0, -5380($fp)
	li $t0, 7
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
	addi $t0, $fp, -196
	sw $t0, -5400($fp)
	li $t0, 8
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
	addi $t0, $fp, -196
	sw $t0, -5420($fp)
	li $t0, 9
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
	addi $t0, $fp, -224
	sw $t0, -5440($fp)
	li $t0, 0
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
	lw $t0, -5456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -5460($fp)
	li $t0, 1
	sw $t0, -5464($fp)
	li $t0, 4
	lw $t1, -5464($fp)
	mul $t0, $t0, $t1
	sw $t0, -5468($fp)
	lw $t0, -5468($fp)
	lw $t1, -5460($fp)
	add $t0, $t0, $t1
	sw $t0, -5472($fp)
	lw $t0, -5472($fp)
	lw $t1, 0($t0)
	sw $t1, -5476($fp)
	lw $t0, -5476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -5480($fp)
	li $t0, 2
	sw $t0, -5484($fp)
	li $t0, 4
	lw $t1, -5484($fp)
	mul $t0, $t0, $t1
	sw $t0, -5488($fp)
	lw $t0, -5488($fp)
	lw $t1, -5480($fp)
	add $t0, $t0, $t1
	sw $t0, -5492($fp)
	lw $t0, -5492($fp)
	lw $t1, 0($t0)
	sw $t1, -5496($fp)
	lw $t0, -5496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -5500($fp)
	li $t0, 3
	sw $t0, -5504($fp)
	li $t0, 4
	lw $t1, -5504($fp)
	mul $t0, $t0, $t1
	sw $t0, -5508($fp)
	lw $t0, -5508($fp)
	lw $t1, -5500($fp)
	add $t0, $t0, $t1
	sw $t0, -5512($fp)
	lw $t0, -5512($fp)
	lw $t1, 0($t0)
	sw $t1, -5516($fp)
	lw $t0, -5516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -5520($fp)
	li $t0, 4
	sw $t0, -5524($fp)
	li $t0, 4
	lw $t1, -5524($fp)
	mul $t0, $t0, $t1
	sw $t0, -5528($fp)
	lw $t0, -5528($fp)
	lw $t1, -5520($fp)
	add $t0, $t0, $t1
	sw $t0, -5532($fp)
	lw $t0, -5532($fp)
	lw $t1, 0($t0)
	sw $t1, -5536($fp)
	lw $t0, -5536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -5540($fp)
	li $t0, 5
	sw $t0, -5544($fp)
	li $t0, 4
	lw $t1, -5544($fp)
	mul $t0, $t0, $t1
	sw $t0, -5548($fp)
	lw $t0, -5548($fp)
	lw $t1, -5540($fp)
	add $t0, $t0, $t1
	sw $t0, -5552($fp)
	lw $t0, -5552($fp)
	lw $t1, 0($t0)
	sw $t1, -5556($fp)
	lw $t0, -5556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -5560($fp)
	li $t0, 6
	sw $t0, -5564($fp)
	li $t0, 4
	lw $t1, -5564($fp)
	mul $t0, $t0, $t1
	sw $t0, -5568($fp)
	lw $t0, -5568($fp)
	lw $t1, -5560($fp)
	add $t0, $t0, $t1
	sw $t0, -5572($fp)
	lw $t0, -5572($fp)
	lw $t1, 0($t0)
	sw $t1, -5576($fp)
	lw $t0, -5576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -436($fp)
	sw $t0, -5580($fp)
	li $t0, 0
	lw $t1, -5580($fp)
	sub $t0, $t0, $t1
	sw $t0, -5584($fp)
	li $t0, 64984
	sw $t0, -5588($fp)
	lw $t0, -424($fp)
	sw $t0, -5592($fp)
	lw $t0, -5588($fp)
	lw $t1, -5592($fp)
	mul $t0, $t0, $t1
	sw $t0, -5596($fp)
	lw $t0, -5584($fp)
	lw $t1, -5596($fp)
	sub $t0, $t0, $t1
	sw $t0, -5600($fp)
	li $t0, 52292
	sw $t0, -5604($fp)
	li $t0, 0
	sw $t0, -5608($fp)
	lw $t0, -460($fp)
	sw $t0, -5612($fp)
	lw $t1, -5612($fp)
	li $t2, 0
	bne $t1, $t2, label419
	j label418
label418:
	li $t0, 1
	sw $t0, -5608($fp)
label419:
	lw $t0, -5604($fp)
	lw $t1, -5608($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5616($fp)
	lw $t0, -5600($fp)
	lw $t1, -5616($fp)
	sub $t0, $t0, $t1
	sw $t0, -5620($fp)
	lw $ra, -4($fp)
	lw $v0, -5620($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -12
	lw $t0, 4($fp)
	sw $t0, -8($fp)
	lw $t0, 4($fp)
	sw $t0, -12($fp)
	lw $t0, -8($fp)
	lw $t1, -12($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -16($fp)
	lw $ra, -4($fp)
	lw $v0, -16($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -6976
	li $t0, 55663
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	li $t0, 36494
	sw $t0, -108($fp)
	addi $t0, $fp, -16
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
	li $t0, 9261
	sw $t0, -132($fp)
	addi $t0, $fp, -16
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
	li $t0, 20767
	sw $t0, -156($fp)
	addi $t0, $fp, -16
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
	li $t0, 46478
	sw $t0, -180($fp)
	addi $t0, $fp, -52
	sw $t0, -184($fp)
	li $t0, 0
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
	li $t0, 42087
	sw $t0, -204($fp)
	addi $t0, $fp, -52
	sw $t0, -208($fp)
	li $t0, 1
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
	li $t0, 9150
	sw $t0, -228($fp)
	addi $t0, $fp, -52
	sw $t0, -232($fp)
	li $t0, 2
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
	li $t0, 59617
	sw $t0, -252($fp)
	addi $t0, $fp, -52
	sw $t0, -256($fp)
	li $t0, 3
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
	li $t0, 30784
	sw $t0, -276($fp)
	addi $t0, $fp, -52
	sw $t0, -280($fp)
	li $t0, 4
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
	li $t0, 16143
	sw $t0, -300($fp)
	addi $t0, $fp, -52
	sw $t0, -304($fp)
	li $t0, 5
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
	li $t0, 48566
	sw $t0, -324($fp)
	addi $t0, $fp, -52
	sw $t0, -328($fp)
	li $t0, 6
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
	li $t0, 52903
	sw $t0, -348($fp)
	addi $t0, $fp, -52
	sw $t0, -352($fp)
	li $t0, 7
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
	li $t0, 8168
	sw $t0, -372($fp)
	addi $t0, $fp, -52
	sw $t0, -376($fp)
	li $t0, 8
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
	li $t0, 60291
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
	li $t0, 11785
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -416($fp)
	li $t0, 2590
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	li $t0, 40475
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	li $t0, 8366
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	li $t0, 46989
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	li $t0, 33567
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	li $t0, 52265
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	li $t0, 30015
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	li $t0, 15210
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	li $t0, 23719
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	li $t0, 33694
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	li $t0, 12352
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	li $t0, 41438
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	li $t0, 58124
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	li $t0, 44964
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	li $t0, 40886
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -596($fp)
	li $t0, 44880
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -608($fp)
	li $t0, 35092
	sw $t0, -612($fp)
	addi $t0, $fp, -56
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
	li $t0, 11844
	sw $t0, -636($fp)
	addi $t0, $fp, -76
	sw $t0, -640($fp)
	li $t0, 0
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -648($fp)
	lw $t0, -640($fp)
	lw $t1, -648($fp)
	add $t0, $t0, $t1
	sw $t0, -652($fp)
	lw $t0, -636($fp)
	lw $t1, -652($fp)
	sw $t0, 0($t1)
	lw $t0, -652($fp)
	lw $t1, 0($t0)
	sw $t1, -656($fp)
	li $t0, 54141
	sw $t0, -660($fp)
	addi $t0, $fp, -76
	sw $t0, -664($fp)
	li $t0, 1
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -672($fp)
	lw $t0, -664($fp)
	lw $t1, -672($fp)
	add $t0, $t0, $t1
	sw $t0, -676($fp)
	lw $t0, -660($fp)
	lw $t1, -676($fp)
	sw $t0, 0($t1)
	lw $t0, -676($fp)
	lw $t1, 0($t0)
	sw $t1, -680($fp)
	li $t0, 55859
	sw $t0, -684($fp)
	addi $t0, $fp, -76
	sw $t0, -688($fp)
	li $t0, 2
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -696($fp)
	lw $t0, -688($fp)
	lw $t1, -696($fp)
	add $t0, $t0, $t1
	sw $t0, -700($fp)
	lw $t0, -684($fp)
	lw $t1, -700($fp)
	sw $t0, 0($t1)
	lw $t0, -700($fp)
	lw $t1, 0($t0)
	sw $t1, -704($fp)
	li $t0, 58323
	sw $t0, -708($fp)
	addi $t0, $fp, -76
	sw $t0, -712($fp)
	li $t0, 3
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
	li $t0, 30692
	sw $t0, -732($fp)
	addi $t0, $fp, -76
	sw $t0, -736($fp)
	li $t0, 4
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
	li $t0, 65009
	sw $t0, -756($fp)
	addi $t0, $fp, -88
	sw $t0, -760($fp)
	li $t0, 0
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
	li $t0, 52404
	sw $t0, -780($fp)
	addi $t0, $fp, -88
	sw $t0, -784($fp)
	li $t0, 1
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -792($fp)
	lw $t0, -784($fp)
	lw $t1, -792($fp)
	add $t0, $t0, $t1
	sw $t0, -796($fp)
	lw $t0, -780($fp)
	lw $t1, -796($fp)
	sw $t0, 0($t1)
	lw $t0, -796($fp)
	lw $t1, 0($t0)
	sw $t1, -800($fp)
	li $t0, 61476
	sw $t0, -804($fp)
	addi $t0, $fp, -88
	sw $t0, -808($fp)
	li $t0, 2
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -816($fp)
	lw $t0, -808($fp)
	lw $t1, -816($fp)
	add $t0, $t0, $t1
	sw $t0, -820($fp)
	lw $t0, -804($fp)
	lw $t1, -820($fp)
	sw $t0, 0($t1)
	lw $t0, -820($fp)
	lw $t1, 0($t0)
	sw $t1, -824($fp)
	li $t0, 15616
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -836($fp)
	li $t0, 35434
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -848($fp)
	li $t0, 48844
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -860($fp)
	li $t0, 23784
	sw $t0, -864($fp)
	addi $t0, $fp, -92
	sw $t0, -868($fp)
	li $t0, 0
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
	li $t0, 30189
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	sw $t0, -896($fp)
	li $t0, 60629
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	sw $t0, -908($fp)
	li $t0, 26374
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	sw $t0, -920($fp)
	li $t0, 5128
	sw $t0, -968($fp)
	addi $t0, $fp, -940
	sw $t0, -972($fp)
	li $t0, 0
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -980($fp)
	lw $t0, -972($fp)
	lw $t1, -980($fp)
	add $t0, $t0, $t1
	sw $t0, -984($fp)
	lw $t0, -968($fp)
	lw $t1, -984($fp)
	sw $t0, 0($t1)
	lw $t0, -984($fp)
	lw $t1, 0($t0)
	sw $t1, -988($fp)
	li $t0, 3459
	sw $t0, -992($fp)
	addi $t0, $fp, -940
	sw $t0, -996($fp)
	li $t0, 1
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1004($fp)
	lw $t0, -996($fp)
	lw $t1, -1004($fp)
	add $t0, $t0, $t1
	sw $t0, -1008($fp)
	lw $t0, -992($fp)
	lw $t1, -1008($fp)
	sw $t0, 0($t1)
	lw $t0, -1008($fp)
	lw $t1, 0($t0)
	sw $t1, -1012($fp)
	li $t0, 7828
	sw $t0, -1016($fp)
	addi $t0, $fp, -940
	sw $t0, -1020($fp)
	li $t0, 2
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1028($fp)
	lw $t0, -1020($fp)
	lw $t1, -1028($fp)
	add $t0, $t0, $t1
	sw $t0, -1032($fp)
	lw $t0, -1016($fp)
	lw $t1, -1032($fp)
	sw $t0, 0($t1)
	lw $t0, -1032($fp)
	lw $t1, 0($t0)
	sw $t1, -1036($fp)
	li $t0, 38696
	sw $t0, -1040($fp)
	addi $t0, $fp, -940
	sw $t0, -1044($fp)
	li $t0, 3
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1052($fp)
	lw $t0, -1044($fp)
	lw $t1, -1052($fp)
	add $t0, $t0, $t1
	sw $t0, -1056($fp)
	lw $t0, -1040($fp)
	lw $t1, -1056($fp)
	sw $t0, 0($t1)
	lw $t0, -1056($fp)
	lw $t1, 0($t0)
	sw $t1, -1060($fp)
	li $t0, 55724
	sw $t0, -1064($fp)
	addi $t0, $fp, -940
	sw $t0, -1068($fp)
	li $t0, 4
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1076($fp)
	lw $t0, -1068($fp)
	lw $t1, -1076($fp)
	add $t0, $t0, $t1
	sw $t0, -1080($fp)
	lw $t0, -1064($fp)
	lw $t1, -1080($fp)
	sw $t0, 0($t1)
	lw $t0, -1080($fp)
	lw $t1, 0($t0)
	sw $t1, -1084($fp)
	li $t0, 37843
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	sw $t0, -1096($fp)
	li $t0, 53906
	sw $t0, -1100($fp)
	addi $t0, $fp, -964
	sw $t0, -1104($fp)
	li $t0, 0
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
	li $t0, 13907
	sw $t0, -1124($fp)
	addi $t0, $fp, -964
	sw $t0, -1128($fp)
	li $t0, 1
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
	li $t0, 6002
	sw $t0, -1148($fp)
	addi $t0, $fp, -964
	sw $t0, -1152($fp)
	li $t0, 2
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
	li $t0, 723
	sw $t0, -1172($fp)
	addi $t0, $fp, -964
	sw $t0, -1176($fp)
	li $t0, 3
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
	li $t0, 55345
	sw $t0, -1196($fp)
	addi $t0, $fp, -964
	sw $t0, -1200($fp)
	li $t0, 4
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
	li $t0, 64126
	sw $t0, -1220($fp)
	addi $t0, $fp, -964
	sw $t0, -1224($fp)
	li $t0, 5
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
	li $t0, 45687
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	sw $t0, -1252($fp)
label420:
	li $t0, 30696
	sw $t0, -1256($fp)
	lw $t1, -1256($fp)
	li $t2, 0
	bne $t1, $t2, label421
	j label422
label421:
	li $t0, 43470
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	sw $t0, -1268($fp)
	li $t0, 15243
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	sw $t0, -1280($fp)
	li $t0, 42540
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -1292($fp)
	lw $t0, 16($fp)
	sw $t0, -1296($fp)
	li $t0, 0
	sw $t0, -1300($fp)
	li $t0, 0
	sw $t0, -1304($fp)
	li $t0, 0
	sw $t0, -1308($fp)
	lw $t0, -520($fp)
	sw $t0, -1312($fp)
	lw $t1, -1312($fp)
	li $t2, 0
	bne $t1, $t2, label429
	j label428
label428:
	li $t0, 1
	sw $t0, -1308($fp)
label429:
	li $t0, 5039
	sw $t0, -1316($fp)
	lw $t1, -1308($fp)
	lw $t2, -1316($fp)
	beq $t1, $t2, label426
	j label427
label426:
	li $t0, 1
	sw $t0, -1304($fp)
label427:
	li $t0, 0
	sw $t0, -1320($fp)
	li $t0, 0
	sw $t0, -1324($fp)
	li $t0, 35327
	sw $t0, -1328($fp)
	lw $t1, -1328($fp)
	li $t2, 0
	bne $t1, $t2, label433
	j label432
label432:
	li $t0, 1
	sw $t0, -1324($fp)
label433:
	li $t0, 62768
	sw $t0, -1332($fp)
	lw $t1, -1324($fp)
	lw $t2, -1332($fp)
	bge $t1, $t2, label430
	j label431
label430:
	li $t0, 1
	sw $t0, -1320($fp)
label431:
	addi $sp, $sp, -4
	lw $t0, -1304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1320($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1336($fp)
	addi $sp, $sp, 12
	lw $t1, -1336($fp)
	li $t2, 0
	bne $t1, $t2, label425
	j label424
label425:
	li $t0, 22195
	sw $t0, -1340($fp)
	lw $t1, -1340($fp)
	li $t2, 0
	bne $t1, $t2, label423
	j label424
label423:
	li $t0, 1
	sw $t0, -1300($fp)
label424:
	lw $t0, -496($fp)
	sw $t0, -1344($fp)
	li $t0, 32076
	sw $t0, -1348($fp)
	lw $t0, -1344($fp)
	lw $t1, -1348($fp)
	add $t0, $t0, $t1
	sw $t0, -1352($fp)
	li $t0, 5566
	sw $t0, -1356($fp)
	lw $t0, -1352($fp)
	lw $t1, -1356($fp)
	add $t0, $t0, $t1
	sw $t0, -1360($fp)
	addi $sp, $sp, -4
	lw $t0, -1296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1360($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1364($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -1368($fp)
	li $t0, 58709
	sw $t0, -1372($fp)
	lw $t1, -1372($fp)
	li $t2, 0
	bne $t1, $t2, label436
	j label435
label436:
	addi $t0, $fp, -76
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
	lw $t0, -592($fp)
	sw $t0, -1396($fp)
	lw $t0, -1288($fp)
	sw $t0, -1400($fp)
	lw $t0, -1396($fp)
	lw $t1, -1400($fp)
	add $t0, $t0, $t1
	sw $t0, -1404($fp)
	lw $t1, -1392($fp)
	lw $t2, -1404($fp)
	bne $t1, $t2, label434
	j label435
label434:
	li $t0, 1
	sw $t0, -1368($fp)
label435:
	li $t0, 42017
	sw $t0, -1408($fp)
	li $t0, 27412
	sw $t0, -1412($fp)
	lw $t0, -460($fp)
	sw $t0, -1416($fp)
	lw $t0, -1412($fp)
	lw $t1, -1416($fp)
	mul $t0, $t0, $t1
	sw $t0, -1420($fp)
	lw $t0, -508($fp)
	sw $t0, -1424($fp)
	lw $t0, -1420($fp)
	lw $t1, -1424($fp)
	mul $t0, $t0, $t1
	sw $t0, -1428($fp)
	li $t0, 0
	sw $t0, -1432($fp)
	li $t0, 0
	sw $t0, -1436($fp)
	lw $t0, -1276($fp)
	sw $t0, -1440($fp)
	lw $t0, -460($fp)
	sw $t0, -1444($fp)
	lw $t1, -1440($fp)
	lw $t2, -1444($fp)
	beq $t1, $t2, label442
	j label443
label442:
	li $t0, 1
	sw $t0, -1436($fp)
label443:
	lw $t0, 16($fp)
	sw $t0, -1448($fp)
	lw $t1, -1436($fp)
	lw $t2, -1448($fp)
	bne $t1, $t2, label440
	j label441
label440:
	li $t0, 1
	sw $t0, -1432($fp)
label441:
	li $t0, 0
	sw $t0, -1452($fp)
	lw $t0, 16($fp)
	sw $t0, -1456($fp)
	li $t0, 37110
	sw $t0, -1460($fp)
	lw $t0, -1456($fp)
	lw $t1, -1460($fp)
	sub $t0, $t0, $t1
	sw $t0, -1464($fp)
	li $t0, 5278
	sw $t0, -1468($fp)
	lw $t1, -1464($fp)
	lw $t2, -1468($fp)
	bne $t1, $t2, label444
	j label445
label444:
	li $t0, 1
	sw $t0, -1452($fp)
label445:
	lw $t0, -580($fp)
	sw $t0, -1472($fp)
	lw $t0, -856($fp)
	sw $t0, -1476($fp)
	lw $t0, -1472($fp)
	lw $t1, -1476($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1480($fp)
	li $t0, 22283
	sw $t0, -1484($fp)
	lw $t0, -1480($fp)
	lw $t1, -1484($fp)
	sub $t0, $t0, $t1
	sw $t0, -1488($fp)
	li $t0, 0
	sw $t0, -1492($fp)
	lw $t0, -484($fp)
	sw $t0, -1496($fp)
	lw $t0, -556($fp)
	sw $t0, -1500($fp)
	lw $t0, -1496($fp)
	lw $t1, -1500($fp)
	sub $t0, $t0, $t1
	sw $t0, -1504($fp)
	li $t0, 44439
	sw $t0, -1508($fp)
	lw $t1, -1504($fp)
	lw $t2, -1508($fp)
	beq $t1, $t2, label446
	j label447
label446:
	li $t0, 1
	sw $t0, -1492($fp)
label447:
	addi $sp, $sp, -4
	lw $t0, -1428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1492($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1512($fp)
	addi $sp, $sp, 24
	lw $t0, -1408($fp)
	lw $t1, -1512($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1516($fp)
	jal f10
	sw $v0, -1520($fp)
	addi $sp, $sp, 4
	lw $t0, -1516($fp)
	lw $t1, -1520($fp)
	mul $t0, $t0, $t1
	sw $t0, -1524($fp)
	lw $t1, -1524($fp)
	li $t2, 0
	bne $t1, $t2, label437
	j label438
label437:
	li $t0, 0
	sw $t0, -1528($fp)
	li $t0, 0
	sw $t0, -1532($fp)
	li $t0, 0
	sw $t0, -1536($fp)
	lw $t0, 4($fp)
	sw $t0, -1540($fp)
	li $t0, 0
	sw $t0, -1544($fp)
	li $t0, 30757
	sw $t0, -1548($fp)
	lw $t1, -1548($fp)
	li $t2, 0
	bne $t1, $t2, label454
	j label456
label456:
	li $t0, 50949
	sw $t0, -1552($fp)
	lw $t1, -1552($fp)
	li $t2, 0
	bne $t1, $t2, label454
	j label455
label454:
	li $t0, 1
	sw $t0, -1544($fp)
label455:
	li $t0, 572
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	sw $t0, -1560($fp)
	li $t0, 0
	sw $t0, -1564($fp)
	lw $t0, -592($fp)
	sw $t0, -1568($fp)
	lw $t1, -1568($fp)
	li $t2, 0
	bne $t1, $t2, label459
	j label458
label459:
	lw $t0, -1264($fp)
	sw $t0, -1572($fp)
	lw $t1, -1572($fp)
	li $t2, 0
	bne $t1, $t2, label457
	j label458
label457:
	li $t0, 1
	sw $t0, -1564($fp)
label458:
	addi $t0, $fp, -76
	sw $t0, -1576($fp)
	li $t0, 4
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
	li $t0, 0
	lw $t1, -1592($fp)
	sub $t0, $t0, $t1
	sw $t0, -1596($fp)
	addi $sp, $sp, -4
	lw $t0, -1544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1596($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -1600($fp)
	addi $sp, $sp, 20
	lw $t1, -1540($fp)
	lw $t2, -1600($fp)
	beq $t1, $t2, label452
	j label453
label452:
	li $t0, 1
	sw $t0, -1536($fp)
label453:
	li $t0, 0
	sw $t0, -1604($fp)
	li $t0, 0
	sw $t0, -1608($fp)
	li $t0, 54478
	sw $t0, -1612($fp)
	lw $t0, 12($fp)
	sw $t0, -1616($fp)
	lw $t1, -1612($fp)
	lw $t2, -1616($fp)
	ble $t1, $t2, label462
	j label463
label462:
	li $t0, 1
	sw $t0, -1608($fp)
label463:
	lw $t0, -472($fp)
	sw $t0, -1620($fp)
	lw $t1, -1608($fp)
	lw $t2, -1620($fp)
	bge $t1, $t2, label460
	j label461
label460:
	li $t0, 1
	sw $t0, -1604($fp)
label461:
	lw $t1, -1536($fp)
	lw $t2, -1604($fp)
	beq $t1, $t2, label450
	j label451
label450:
	li $t0, 1
	sw $t0, -1532($fp)
label451:
	li $t0, 0
	sw $t0, -1624($fp)
	li $t0, 35353
	sw $t0, -1628($fp)
	lw $t1, -1628($fp)
	li $t2, 0
	bne $t1, $t2, label465
	j label466
label466:
	li $t0, 65169
	sw $t0, -1632($fp)
	lw $t1, -1632($fp)
	li $t2, 0
	bne $t1, $t2, label464
	j label465
label464:
	li $t0, 1
	sw $t0, -1624($fp)
label465:
	lw $t0, -448($fp)
	sw $t0, -1636($fp)
	li $t0, 0
	sw $t0, -1640($fp)
	li $t0, 55201
	sw $t0, -1644($fp)
	lw $t0, -436($fp)
	sw $t0, -1648($fp)
	lw $t0, -1644($fp)
	lw $t1, -1648($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1652($fp)
	li $t0, 34473
	sw $t0, -1656($fp)
	lw $t0, -1652($fp)
	lw $t1, -1656($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1660($fp)
	addi $sp, $sp, -4
	lw $t0, -1660($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1664($fp)
	addi $sp, $sp, 8
	li $t0, 55541
	sw $t0, -1668($fp)
	lw $t1, -1664($fp)
	lw $t2, -1668($fp)
	bgt $t1, $t2, label467
	j label468
label467:
	li $t0, 1
	sw $t0, -1640($fp)
label468:
	li $t0, 0
	sw $t0, -1672($fp)
	addi $t0, $fp, -92
	sw $t0, -1676($fp)
	li $t0, 0
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
	lw $t1, -1692($fp)
	li $t2, 0
	bne $t1, $t2, label470
	j label469
label469:
	li $t0, 1
	sw $t0, -1672($fp)
label470:
	addi $sp, $sp, -4
	lw $t0, -1624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1672($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -1696($fp)
	addi $sp, $sp, 20
	lw $t1, -1532($fp)
	lw $t2, -1696($fp)
	bne $t1, $t2, label448
	j label449
label448:
	li $t0, 1
	sw $t0, -1528($fp)
label449:
	j label439
label438:
	li $t0, 0
	sw $t0, -1700($fp)
	addi $t0, $fp, -92
	sw $t0, -1704($fp)
	li $t0, 0
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
	li $t0, 0
	sw $t0, -1724($fp)
	lw $t0, -508($fp)
	sw $t0, -1728($fp)
	lw $t0, -484($fp)
	sw $t0, -1732($fp)
	lw $t0, -1728($fp)
	lw $t1, -1732($fp)
	sub $t0, $t0, $t1
	sw $t0, -1736($fp)
	li $t0, 16322
	sw $t0, -1740($fp)
	lw $t1, -1736($fp)
	lw $t2, -1740($fp)
	beq $t1, $t2, label473
	j label474
label473:
	li $t0, 1
	sw $t0, -1724($fp)
label474:
	li $t0, 55957
	sw $t0, -1744($fp)
	lw $t0, 4($fp)
	sw $t0, -1748($fp)
	li $t0, 0
	lw $t1, -1748($fp)
	sub $t0, $t0, $t1
	sw $t0, -1752($fp)
	li $t0, 34161
	sw $t0, -1756($fp)
	lw $t0, -1752($fp)
	lw $t1, -1756($fp)
	add $t0, $t0, $t1
	sw $t0, -1760($fp)
	li $t0, 0
	sw $t0, -1764($fp)
	li $t0, 11965
	sw $t0, -1768($fp)
	li $t0, 62784
	sw $t0, -1772($fp)
	lw $t1, -1768($fp)
	lw $t2, -1772($fp)
	beq $t1, $t2, label477
	j label476
label477:
	li $t0, 61202
	sw $t0, -1776($fp)
	lw $t1, -1776($fp)
	li $t2, 0
	bne $t1, $t2, label475
	j label476
label475:
	li $t0, 1
	sw $t0, -1764($fp)
label476:
	lw $t0, 16($fp)
	sw $t0, -1780($fp)
	lw $t0, -604($fp)
	sw $t0, -1784($fp)
	lw $t0, -1780($fp)
	lw $t1, -1784($fp)
	mul $t0, $t0, $t1
	sw $t0, -1788($fp)
	li $t0, 56163
	sw $t0, -1792($fp)
	lw $t0, -1788($fp)
	lw $t1, -1792($fp)
	sub $t0, $t0, $t1
	sw $t0, -1796($fp)
	addi $sp, $sp, -4
	lw $t0, -1760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1796($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1800($fp)
	addi $sp, $sp, 16
	li $t0, 16
	sw $t0, -1804($fp)
	lw $t0, -892($fp)
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -1812($fp)
	addi $sp, $sp, -4
	lw $t0, -1724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1812($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1816($fp)
	addi $sp, $sp, 24
	lw $t0, -1720($fp)
	lw $t1, -1816($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1820($fp)
	lw $t0, -904($fp)
	sw $t0, -1824($fp)
	li $t0, 26255
	sw $t0, -1828($fp)
	lw $t0, -448($fp)
	sw $t0, -1832($fp)
	lw $t0, -1828($fp)
	lw $t1, -1832($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1836($fp)
	lw $t0, -1824($fp)
	lw $t1, -1836($fp)
	add $t0, $t0, $t1
	sw $t0, -1840($fp)
	lw $t1, -1820($fp)
	lw $t2, -1840($fp)
	bge $t1, $t2, label471
	j label472
label471:
	li $t0, 1
	sw $t0, -1700($fp)
label472:
label439:
	li $t0, 32438
	sw $t0, -1884($fp)
	addi $t0, $fp, -1880
	sw $t0, -1888($fp)
	li $t0, 0
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
	li $t0, 60761
	sw $t0, -1908($fp)
	addi $t0, $fp, -1880
	sw $t0, -1912($fp)
	li $t0, 1
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1920($fp)
	lw $t0, -1912($fp)
	lw $t1, -1920($fp)
	add $t0, $t0, $t1
	sw $t0, -1924($fp)
	lw $t0, -1908($fp)
	lw $t1, -1924($fp)
	sw $t0, 0($t1)
	lw $t0, -1924($fp)
	lw $t1, 0($t0)
	sw $t1, -1928($fp)
	li $t0, 48538
	sw $t0, -1932($fp)
	addi $t0, $fp, -1880
	sw $t0, -1936($fp)
	li $t0, 2
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1944($fp)
	lw $t0, -1936($fp)
	lw $t1, -1944($fp)
	add $t0, $t0, $t1
	sw $t0, -1948($fp)
	lw $t0, -1932($fp)
	lw $t1, -1948($fp)
	sw $t0, 0($t1)
	lw $t0, -1948($fp)
	lw $t1, 0($t0)
	sw $t1, -1952($fp)
	li $t0, 4012
	sw $t0, -1956($fp)
	addi $t0, $fp, -1880
	sw $t0, -1960($fp)
	li $t0, 3
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1968($fp)
	lw $t0, -1960($fp)
	lw $t1, -1968($fp)
	add $t0, $t0, $t1
	sw $t0, -1972($fp)
	lw $t0, -1956($fp)
	lw $t1, -1972($fp)
	sw $t0, 0($t1)
	lw $t0, -1972($fp)
	lw $t1, 0($t0)
	sw $t1, -1976($fp)
	li $t0, 503
	sw $t0, -1980($fp)
	addi $t0, $fp, -1880
	sw $t0, -1984($fp)
	li $t0, 4
	sw $t0, -1988($fp)
	lw $t0, -1988($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1992($fp)
	lw $t0, -1984($fp)
	lw $t1, -1992($fp)
	add $t0, $t0, $t1
	sw $t0, -1996($fp)
	lw $t0, -1980($fp)
	lw $t1, -1996($fp)
	sw $t0, 0($t1)
	lw $t0, -1996($fp)
	lw $t1, 0($t0)
	sw $t1, -2000($fp)
	li $t0, 10414
	sw $t0, -2004($fp)
	addi $t0, $fp, -1880
	sw $t0, -2008($fp)
	li $t0, 5
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2016($fp)
	lw $t0, -2008($fp)
	lw $t1, -2016($fp)
	add $t0, $t0, $t1
	sw $t0, -2020($fp)
	lw $t0, -2004($fp)
	lw $t1, -2020($fp)
	sw $t0, 0($t1)
	lw $t0, -2020($fp)
	lw $t1, 0($t0)
	sw $t1, -2024($fp)
	li $t0, 44581
	sw $t0, -2028($fp)
	addi $t0, $fp, -1880
	sw $t0, -2032($fp)
	li $t0, 6
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2040($fp)
	lw $t0, -2032($fp)
	lw $t1, -2040($fp)
	add $t0, $t0, $t1
	sw $t0, -2044($fp)
	lw $t0, -2028($fp)
	lw $t1, -2044($fp)
	sw $t0, 0($t1)
	lw $t0, -2044($fp)
	lw $t1, 0($t0)
	sw $t1, -2048($fp)
	li $t0, 13609
	sw $t0, -2052($fp)
	addi $t0, $fp, -1880
	sw $t0, -2056($fp)
	li $t0, 7
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2064($fp)
	lw $t0, -2056($fp)
	lw $t1, -2064($fp)
	add $t0, $t0, $t1
	sw $t0, -2068($fp)
	lw $t0, -2052($fp)
	lw $t1, -2068($fp)
	sw $t0, 0($t1)
	lw $t0, -2068($fp)
	lw $t1, 0($t0)
	sw $t1, -2072($fp)
	li $t0, 10986
	sw $t0, -2076($fp)
	addi $t0, $fp, -1880
	sw $t0, -2080($fp)
	li $t0, 8
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2088($fp)
	lw $t0, -2080($fp)
	lw $t1, -2088($fp)
	add $t0, $t0, $t1
	sw $t0, -2092($fp)
	lw $t0, -2076($fp)
	lw $t1, -2092($fp)
	sw $t0, 0($t1)
	lw $t0, -2092($fp)
	lw $t1, 0($t0)
	sw $t1, -2096($fp)
	li $t0, 9802
	sw $t0, -2100($fp)
	addi $t0, $fp, -1880
	sw $t0, -2104($fp)
	li $t0, 9
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2112($fp)
	lw $t0, -2104($fp)
	lw $t1, -2112($fp)
	add $t0, $t0, $t1
	sw $t0, -2116($fp)
	lw $t0, -2100($fp)
	lw $t1, -2116($fp)
	sw $t0, 0($t1)
	lw $t0, -2116($fp)
	lw $t1, 0($t0)
	sw $t1, -2120($fp)
	li $t0, 64559
	sw $t0, -2124($fp)
	lw $t0, -2124($fp)
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	sw $t0, -2132($fp)
	addi $t0, $fp, -76
	sw $t0, -2136($fp)
	li $t0, 0
	sw $t0, -2140($fp)
	lw $t0, -592($fp)
	sw $t0, -2144($fp)
	lw $t1, -2144($fp)
	li $t2, 0
	bne $t1, $t2, label478
	j label480
label480:
	addi $t0, $fp, -76
	sw $t0, -2148($fp)
	li $t0, 2
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
	lw $t1, -2164($fp)
	li $t2, 0
	bne $t1, $t2, label478
	j label479
label478:
	li $t0, 1
	sw $t0, -2140($fp)
label479:
	li $t0, 4
	lw $t1, -2140($fp)
	mul $t0, $t0, $t1
	sw $t0, -2168($fp)
	lw $t0, -2168($fp)
	lw $t1, -2136($fp)
	add $t0, $t0, $t1
	sw $t0, -2172($fp)
	lw $t0, -2172($fp)
	lw $t1, 0($t0)
	sw $t1, -2176($fp)
	li $t0, 0
	sw $t0, -2180($fp)
	addi $t0, $fp, -1880
	sw $t0, -2184($fp)
	li $t0, 0
	sw $t0, -2188($fp)
	li $t0, 0
	sw $t0, -2192($fp)
	li $t0, 23404
	sw $t0, -2196($fp)
	lw $t0, -508($fp)
	sw $t0, -2200($fp)
	lw $t1, -2196($fp)
	lw $t2, -2200($fp)
	ble $t1, $t2, label486
	j label487
label486:
	li $t0, 1
	sw $t0, -2192($fp)
label487:
	li $t0, 45980
	sw $t0, -2204($fp)
	lw $t1, -2192($fp)
	lw $t2, -2204($fp)
	bge $t1, $t2, label484
	j label485
label484:
	li $t0, 1
	sw $t0, -2188($fp)
label485:
	li $t0, 0
	sw $t0, -2208($fp)
	li $t0, 55130
	sw $t0, -2212($fp)
	li $t0, 0
	lw $t1, -2212($fp)
	sub $t0, $t0, $t1
	sw $t0, -2216($fp)
	lw $t0, -508($fp)
	sw $t0, -2220($fp)
	lw $t1, -2216($fp)
	lw $t2, -2220($fp)
	beq $t1, $t2, label488
	j label489
label488:
	li $t0, 1
	sw $t0, -2208($fp)
label489:
	jal f9
	sw $v0, -2224($fp)
	addi $sp, $sp, 4
	li $t0, 55974
	sw $t0, -2228($fp)
	lw $t0, -2224($fp)
	lw $t1, -2228($fp)
	mul $t0, $t0, $t1
	sw $t0, -2232($fp)
	addi $sp, $sp, -4
	lw $t0, -2188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2232($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2236($fp)
	addi $sp, $sp, 16
	li $t0, 4
	lw $t1, -2236($fp)
	mul $t0, $t0, $t1
	sw $t0, -2240($fp)
	lw $t0, -2240($fp)
	lw $t1, -2184($fp)
	add $t0, $t0, $t1
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	lw $t1, 0($t0)
	sw $t1, -2248($fp)
	lw $t1, -2248($fp)
	li $t2, 0
	bne $t1, $t2, label483
	j label482
label483:
	lw $t0, -2128($fp)
	sw $t0, -2252($fp)
	lw $t1, -2252($fp)
	li $t2, 0
	bne $t1, $t2, label481
	j label482
label481:
	li $t0, 1
	sw $t0, -2180($fp)
label482:
	li $t0, 0
	sw $t0, -2256($fp)
	lw $t0, -532($fp)
	sw $t0, -2260($fp)
	lw $t1, -2260($fp)
	li $t2, 0
	bne $t1, $t2, label495
	j label494
label495:
	li $t0, 24947
	sw $t0, -2264($fp)
	li $t0, 0
	lw $t1, -2264($fp)
	sub $t0, $t0, $t1
	sw $t0, -2268($fp)
	lw $t1, -2268($fp)
	li $t2, 0
	bne $t1, $t2, label493
	j label494
label493:
	li $t0, 1
	sw $t0, -2256($fp)
label494:
	lw $t0, -2256($fp)
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	sw $t0, -2272($fp)
	lw $t1, -2272($fp)
	li $t2, 0
	bne $t1, $t2, label490
	j label491
label490:
label496:
	li $t0, 23037
	sw $t0, -2276($fp)
	lw $t0, -100($fp)
	sw $t0, -2280($fp)
	lw $t0, -2276($fp)
	lw $t1, -2280($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2284($fp)
	li $t0, 13920
	sw $t0, -2288($fp)
	lw $t0, -2284($fp)
	lw $t1, -2288($fp)
	mul $t0, $t0, $t1
	sw $t0, -2292($fp)
	li $t0, 10008
	sw $t0, -2296($fp)
	li $t0, 0
	lw $t1, -2296($fp)
	sub $t0, $t0, $t1
	sw $t0, -2300($fp)
	lw $t1, -2292($fp)
	lw $t2, -2300($fp)
	beq $t1, $t2, label497
	j label499
label499:
	jal f10
	sw $v0, -2304($fp)
	addi $sp, $sp, 4
	lw $t1, -2304($fp)
	li $t2, 0
	bne $t1, $t2, label497
	j label498
label497:
	addi $t0, $fp, -88
	sw $t0, -2308($fp)
	lw $t0, -568($fp)
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
	li $t0, 0
	lw $t1, -2324($fp)
	sub $t0, $t0, $t1
	sw $t0, -2328($fp)
	lw $t0, -2328($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -2332($fp)
	j label496
label498:
	j label492
label491:
	lw $t0, -1264($fp)
	sw $t0, -2336($fp)
	li $t0, 0
	lw $t1, -2336($fp)
	sub $t0, $t0, $t1
	sw $t0, -2340($fp)
label492:
label500:
	addi $t0, $fp, -88
	sw $t0, -2344($fp)
	li $t0, 0
	sw $t0, -2348($fp)
	li $t0, 0
	sw $t0, -2352($fp)
	lw $t0, -1248($fp)
	sw $t0, -2356($fp)
	lw $t0, -508($fp)
	sw $t0, -2360($fp)
	lw $t1, -2356($fp)
	lw $t2, -2360($fp)
	bgt $t1, $t2, label505
	j label506
label505:
	li $t0, 1
	sw $t0, -2352($fp)
label506:
	li $t0, 65211
	sw $t0, -2364($fp)
	lw $t1, -2352($fp)
	lw $t2, -2364($fp)
	bne $t1, $t2, label503
	j label504
label503:
	li $t0, 1
	sw $t0, -2348($fp)
label504:
	li $t0, 4
	lw $t1, -2348($fp)
	mul $t0, $t0, $t1
	sw $t0, -2368($fp)
	lw $t0, -2368($fp)
	lw $t1, -2344($fp)
	add $t0, $t0, $t1
	sw $t0, -2372($fp)
	lw $t0, -2372($fp)
	lw $t1, 0($t0)
	sw $t1, -2376($fp)
	lw $t0, 4($fp)
	sw $t0, -2380($fp)
	li $t0, 13936
	sw $t0, -2384($fp)
	lw $t0, -2380($fp)
	lw $t1, -2384($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2388($fp)
	lw $t0, -2376($fp)
	lw $t1, -2388($fp)
	sub $t0, $t0, $t1
	sw $t0, -2392($fp)
	lw $t1, -2392($fp)
	li $t2, 0
	bne $t1, $t2, label501
	j label502
label501:
	li $t0, 0
	sw $t0, -2396($fp)
	lw $t0, -580($fp)
	sw $t0, -2400($fp)
	jal f9
	sw $v0, -2404($fp)
	addi $sp, $sp, 4
	lw $t1, -2400($fp)
	lw $t2, -2404($fp)
	beq $t1, $t2, label507
	j label508
label507:
	li $t0, 1
	sw $t0, -2396($fp)
label508:
	j label500
label502:
label509:
	li $t0, 0
	sw $t0, -2408($fp)
	li $t0, 635
	sw $t0, -2412($fp)
	lw $t1, -2412($fp)
	li $t2, 0
	bne $t1, $t2, label512
	j label513
label512:
	li $t0, 1
	sw $t0, -2408($fp)
label513:
	li $t0, 11641
	sw $t0, -2416($fp)
	lw $t0, -2408($fp)
	lw $t1, -2416($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2420($fp)
	li $t0, 0
	sw $t0, -2424($fp)
	li $t0, 0
	sw $t0, -2428($fp)
	addi $t0, $fp, -16
	sw $t0, -2432($fp)
	li $t0, 1
	sw $t0, -2436($fp)
	li $t0, 4
	lw $t1, -2436($fp)
	mul $t0, $t0, $t1
	sw $t0, -2440($fp)
	lw $t0, -2440($fp)
	lw $t1, -2432($fp)
	add $t0, $t0, $t1
	sw $t0, -2444($fp)
	lw $t0, -2444($fp)
	lw $t1, 0($t0)
	sw $t1, -2448($fp)
	lw $t0, -904($fp)
	sw $t0, -2452($fp)
	lw $t1, -2448($fp)
	lw $t2, -2452($fp)
	ble $t1, $t2, label516
	j label517
label516:
	li $t0, 1
	sw $t0, -2428($fp)
label517:
	lw $t0, -916($fp)
	sw $t0, -2456($fp)
	lw $t1, -2428($fp)
	lw $t2, -2456($fp)
	ble $t1, $t2, label514
	j label515
label514:
	li $t0, 1
	sw $t0, -2424($fp)
label515:
	lw $t1, -2420($fp)
	lw $t2, -2424($fp)
	beq $t1, $t2, label510
	j label511
label510:
	li $t0, 45802
	sw $t0, -2460($fp)
	j label509
label511:
	j label420
label422:
	addi $t0, $fp, -940
	sw $t0, -2464($fp)
	li $t0, 0
	sw $t0, -2468($fp)
	li $t0, 1606
	sw $t0, -2472($fp)
	lw $t1, -2472($fp)
	li $t2, 0
	bne $t1, $t2, label518
	j label519
label518:
	li $t0, 1
	sw $t0, -2468($fp)
label519:
	li $t0, 4
	lw $t1, -2468($fp)
	mul $t0, $t0, $t1
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	lw $t1, -2464($fp)
	add $t0, $t0, $t1
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	lw $t1, 0($t0)
	sw $t1, -2484($fp)
	lw $t0, -580($fp)
	sw $t0, -2488($fp)
	lw $t0, -2484($fp)
	lw $t1, -2488($fp)
	mul $t0, $t0, $t1
	sw $t0, -2492($fp)
	li $t0, 0
	sw $t0, -2496($fp)
	lw $t0, -460($fp)
	sw $t0, -2500($fp)
	lw $t1, -2500($fp)
	li $t2, 0
	bne $t1, $t2, label522
	j label521
label522:
	li $t0, 12623
	sw $t0, -2504($fp)
	lw $t1, -2504($fp)
	li $t2, 0
	bne $t1, $t2, label520
	j label521
label520:
	li $t0, 1
	sw $t0, -2496($fp)
label521:
	addi $t0, $fp, -940
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
	addi $t0, $fp, -940
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
	addi $t0, $fp, -940
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
	addi $t0, $fp, -940
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
	addi $t0, $fp, -940
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
	lw $t0, -1092($fp)
	sw $t0, -2608($fp)
	lw $t0, -2608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -964
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
	addi $t0, $fp, -964
	sw $t0, -2632($fp)
	li $t0, 1
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
	addi $t0, $fp, -964
	sw $t0, -2652($fp)
	li $t0, 2
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
	addi $t0, $fp, -964
	sw $t0, -2672($fp)
	li $t0, 3
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
	addi $t0, $fp, -964
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
	lw $t0, -2708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -964
	sw $t0, -2712($fp)
	li $t0, 5
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
	lw $t0, -1248($fp)
	sw $t0, -2732($fp)
	lw $t0, -2732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2736($fp)
	lw $t0, -904($fp)
	sw $t0, -2740($fp)
	lw $t1, -2740($fp)
	li $t2, 0
	bne $t1, $t2, label524
	j label523
label523:
	li $t0, 1
	sw $t0, -2736($fp)
label524:
	li $t0, 6521
	sw $t0, -2744($fp)
	lw $t0, -2736($fp)
	lw $t1, -2744($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2748($fp)
	lw $ra, -4($fp)
	lw $v0, -2748($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -2752($fp)
	li $t0, 0
	sw $t0, -2756($fp)
	li $t0, 34044
	sw $t0, -2760($fp)
	li $t0, 7849
	sw $t0, -2764($fp)
	lw $t0, -2760($fp)
	lw $t1, -2764($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2768($fp)
	lw $t0, -1092($fp)
	sw $t0, -2772($fp)
	lw $t1, -2768($fp)
	lw $t2, -2772($fp)
	bgt $t1, $t2, label531
	j label532
label531:
	li $t0, 1
	sw $t0, -2756($fp)
label532:
	addi $t0, $fp, -56
	sw $t0, -2776($fp)
	lw $t0, -508($fp)
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
	lw $t1, -2756($fp)
	lw $t2, -2792($fp)
	bge $t1, $t2, label529
	j label530
label529:
	li $t0, 1
	sw $t0, -2752($fp)
label530:
	addi $t0, $fp, -964
	sw $t0, -2796($fp)
	li $t0, 3
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
	lw $t1, -2752($fp)
	lw $t2, -2812($fp)
	ble $t1, $t2, label528
	j label526
label528:
	li $t0, 8352
	sw $t0, -2816($fp)
	li $t0, 0
	lw $t1, -2816($fp)
	sub $t0, $t0, $t1
	sw $t0, -2820($fp)
	lw $t1, -2820($fp)
	li $t2, 0
	bne $t1, $t2, label525
	j label526
label525:
	li $t0, 0
	sw $t0, -2824($fp)
	jal f9
	sw $v0, -2828($fp)
	addi $sp, $sp, 4
	lw $t1, -2828($fp)
	li $t2, 0
	bne $t1, $t2, label534
	j label533
label533:
	li $t0, 1
	sw $t0, -2824($fp)
label534:
	j label527
label526:
	li $t0, 65474
	sw $t0, -2832($fp)
	lw $t1, -2832($fp)
	li $t2, 0
	bne $t1, $t2, label535
	j label536
label535:
label538:
	li $t0, 0
	sw $t0, -2836($fp)
	addi $t0, $fp, -76
	sw $t0, -2840($fp)
	li $t0, 1
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
	lw $t1, -2856($fp)
	li $t2, 0
	bne $t1, $t2, label542
	j label541
label541:
	li $t0, 1
	sw $t0, -2836($fp)
label542:
	lw $t0, -580($fp)
	sw $t0, -2860($fp)
	lw $t0, -2836($fp)
	lw $t1, -2860($fp)
	add $t0, $t0, $t1
	sw $t0, -2864($fp)
	li $t0, 26905
	sw $t0, -2868($fp)
	lw $t0, -2868($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -2872($fp)
	li $t0, 10924
	sw $t0, -2876($fp)
	lw $t0, -2876($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -2880($fp)
	addi $sp, $sp, -4
	lw $t0, -2872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2880($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2884($fp)
	addi $sp, $sp, 12
	li $t0, 20985
	sw $t0, -2888($fp)
	lw $t0, -2884($fp)
	lw $t1, -2888($fp)
	add $t0, $t0, $t1
	sw $t0, -2892($fp)
	lw $t1, -2864($fp)
	lw $t2, -2892($fp)
	bgt $t1, $t2, label539
	j label540
label539:
	li $t0, 10853
	sw $t0, -2912($fp)
	lw $t0, -2912($fp)
	sw $t0, -2916($fp)
	lw $t0, -2916($fp)
	sw $t0, -2920($fp)
	li $t0, 15835
	sw $t0, -2924($fp)
	addi $t0, $fp, -2908
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
	li $t0, 11423
	sw $t0, -2948($fp)
	addi $t0, $fp, -2908
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
	li $t0, 448
	sw $t0, -2972($fp)
	addi $t0, $fp, -2908
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
	li $t0, 39239
	sw $t0, -2996($fp)
	addi $t0, $fp, -2908
	sw $t0, -3000($fp)
	li $t0, 3
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
	li $t0, 57403
	sw $t0, -3028($fp)
	addi $t0, $fp, -3024
	sw $t0, -3032($fp)
	li $t0, 0
	sw $t0, -3036($fp)
	lw $t0, -3036($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3040($fp)
	lw $t0, -3032($fp)
	lw $t1, -3040($fp)
	add $t0, $t0, $t1
	sw $t0, -3044($fp)
	lw $t0, -3028($fp)
	lw $t1, -3044($fp)
	sw $t0, 0($t1)
	lw $t0, -3044($fp)
	lw $t1, 0($t0)
	sw $t1, -3048($fp)
	li $t0, 25395
	sw $t0, -3052($fp)
	addi $t0, $fp, -3024
	sw $t0, -3056($fp)
	li $t0, 1
	sw $t0, -3060($fp)
	lw $t0, -3060($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3064($fp)
	lw $t0, -3056($fp)
	lw $t1, -3064($fp)
	add $t0, $t0, $t1
	sw $t0, -3068($fp)
	lw $t0, -3052($fp)
	lw $t1, -3068($fp)
	sw $t0, 0($t1)
	lw $t0, -3068($fp)
	lw $t1, 0($t0)
	sw $t1, -3072($fp)
	li $t0, 0
	sw $t0, -3076($fp)
	lw $t0, -460($fp)
	sw $t0, -3080($fp)
	addi $t0, $fp, -3024
	sw $t0, -3084($fp)
	lw $t0, -1248($fp)
	sw $t0, -3088($fp)
	li $t0, 4
	lw $t1, -3088($fp)
	mul $t0, $t0, $t1
	sw $t0, -3092($fp)
	lw $t0, -3092($fp)
	lw $t1, -3084($fp)
	add $t0, $t0, $t1
	sw $t0, -3096($fp)
	lw $t0, -3096($fp)
	lw $t1, 0($t0)
	sw $t1, -3100($fp)
	li $t0, 0
	lw $t1, -3100($fp)
	sub $t0, $t0, $t1
	sw $t0, -3104($fp)
	lw $t0, -3080($fp)
	lw $t1, -3104($fp)
	sub $t0, $t0, $t1
	sw $t0, -3108($fp)
	lw $t1, -3108($fp)
	li $t2, 0
	bne $t1, $t2, label545
	j label544
label545:
	li $t0, 62277
	sw $t0, -3112($fp)
	lw $t1, -3112($fp)
	li $t2, 0
	bne $t1, $t2, label544
	j label543
label543:
	li $t0, 1
	sw $t0, -3076($fp)
label544:
	li $t0, 5787
	sw $t0, -3116($fp)
	lw $t0, -3116($fp)
	sw $t0, -3120($fp)
	lw $t0, -3120($fp)
	sw $t0, -3124($fp)
	li $t0, 0
	sw $t0, -3128($fp)
	lw $t0, -3120($fp)
	sw $t0, -3132($fp)
	lw $t1, -3132($fp)
	li $t2, 0
	bne $t1, $t2, label546
	j label548
label548:
	li $t0, 35403
	sw $t0, -3136($fp)
	lw $t1, -3136($fp)
	li $t2, 0
	bne $t1, $t2, label546
	j label547
label546:
	li $t0, 1
	sw $t0, -3128($fp)
label547:
	lw $t0, -2916($fp)
	sw $t0, -3140($fp)
	lw $t0, -3140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2908
	sw $t0, -3144($fp)
	li $t0, 0
	sw $t0, -3148($fp)
	li $t0, 4
	lw $t1, -3148($fp)
	mul $t0, $t0, $t1
	sw $t0, -3152($fp)
	lw $t0, -3152($fp)
	lw $t1, -3144($fp)
	add $t0, $t0, $t1
	sw $t0, -3156($fp)
	lw $t0, -3156($fp)
	lw $t1, 0($t0)
	sw $t1, -3160($fp)
	lw $t0, -3160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2908
	sw $t0, -3164($fp)
	li $t0, 1
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
	lw $t0, -3180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2908
	sw $t0, -3184($fp)
	li $t0, 2
	sw $t0, -3188($fp)
	li $t0, 4
	lw $t1, -3188($fp)
	mul $t0, $t0, $t1
	sw $t0, -3192($fp)
	lw $t0, -3192($fp)
	lw $t1, -3184($fp)
	add $t0, $t0, $t1
	sw $t0, -3196($fp)
	lw $t0, -3196($fp)
	lw $t1, 0($t0)
	sw $t1, -3200($fp)
	lw $t0, -3200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2908
	sw $t0, -3204($fp)
	li $t0, 3
	sw $t0, -3208($fp)
	li $t0, 4
	lw $t1, -3208($fp)
	mul $t0, $t0, $t1
	sw $t0, -3212($fp)
	lw $t0, -3212($fp)
	lw $t1, -3204($fp)
	add $t0, $t0, $t1
	sw $t0, -3216($fp)
	lw $t0, -3216($fp)
	lw $t1, 0($t0)
	sw $t1, -3220($fp)
	lw $t0, -3220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3224($fp)
	addi $t0, $fp, -52
	sw $t0, -3228($fp)
	lw $t0, 8($fp)
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
	li $t0, 0
	sw $t0, -3248($fp)
	li $t0, 0
	sw $t0, -3252($fp)
	li $t0, 61952
	sw $t0, -3256($fp)
	li $t0, 19723
	sw $t0, -3260($fp)
	lw $t1, -3256($fp)
	lw $t2, -3260($fp)
	ble $t1, $t2, label554
	j label555
label554:
	li $t0, 1
	sw $t0, -3252($fp)
label555:
	lw $t0, -2916($fp)
	sw $t0, -3264($fp)
	lw $t1, -3252($fp)
	lw $t2, -3264($fp)
	ble $t1, $t2, label552
	j label553
label552:
	li $t0, 1
	sw $t0, -3248($fp)
label553:
	addi $sp, $sp, -4
	lw $t0, -3244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3248($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3268($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -3268($fp)
	sub $t0, $t0, $t1
	sw $t0, -3272($fp)
	lw $t1, -3272($fp)
	li $t2, 0
	bne $t1, $t2, label550
	j label551
label551:
	lw $t0, -436($fp)
	sw $t0, -3276($fp)
	li $t0, 0
	lw $t1, -3276($fp)
	sub $t0, $t0, $t1
	sw $t0, -3280($fp)
	lw $t1, -3280($fp)
	li $t2, 0
	bne $t1, $t2, label549
	j label550
label549:
	li $t0, 1
	sw $t0, -3224($fp)
label550:
	lw $ra, -4($fp)
	lw $v0, -3224($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -2916($fp)
	sw $t0, -3284($fp)
	lw $t0, -3284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2908
	sw $t0, -3288($fp)
	li $t0, 0
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
	addi $t0, $fp, -2908
	sw $t0, -3308($fp)
	li $t0, 1
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
	addi $t0, $fp, -2908
	sw $t0, -3328($fp)
	li $t0, 2
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
	addi $t0, $fp, -2908
	sw $t0, -3348($fp)
	li $t0, 3
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
	addi $t0, $fp, -2908
	sw $t0, -3368($fp)
	li $t0, 1
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
	li $t0, 0
	sw $t0, -3388($fp)
	lw $t0, -400($fp)
	sw $t0, -3392($fp)
	lw $t1, -3392($fp)
	li $t2, 0
	bne $t1, $t2, label556
	j label559
label559:
	lw $t0, -904($fp)
	sw $t0, -3396($fp)
	lw $t1, -3396($fp)
	li $t2, 0
	bne $t1, $t2, label556
	j label558
label558:
	lw $t0, -856($fp)
	sw $t0, -3400($fp)
	lw $t1, -3400($fp)
	li $t2, 0
	bne $t1, $t2, label556
	j label557
label556:
	li $t0, 1
	sw $t0, -3388($fp)
label557:
	addi $sp, $sp, -4
	lw $t0, -3384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3388($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3404($fp)
	addi $sp, $sp, 12
	lw $ra, -4($fp)
	lw $v0, -3404($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label538
label540:
	j label537
label536:
	li $t0, 0
	sw $t0, -3408($fp)
	li $t0, 30908
	sw $t0, -3412($fp)
	li $t0, 0
	lw $t1, -3412($fp)
	sub $t0, $t0, $t1
	sw $t0, -3416($fp)
	lw $t1, -3416($fp)
	li $t2, 0
	bne $t1, $t2, label561
	j label560
label560:
	li $t0, 1
	sw $t0, -3408($fp)
label561:
label537:
label527:
	lw $t0, -412($fp)
	sw $t0, -3420($fp)
	li $t0, 0
	lw $t1, -3420($fp)
	sub $t0, $t0, $t1
	sw $t0, -3424($fp)
	lw $t0, -460($fp)
	sw $t0, -3428($fp)
	lw $t0, -3424($fp)
	lw $t1, -3428($fp)
	add $t0, $t0, $t1
	sw $t0, -3432($fp)
	lw $t0, -100($fp)
	sw $t0, -3436($fp)
	lw $t0, -3436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -3440($fp)
	li $t0, 0
	sw $t0, -3444($fp)
	li $t0, 4
	lw $t1, -3444($fp)
	mul $t0, $t0, $t1
	sw $t0, -3448($fp)
	lw $t0, -3448($fp)
	lw $t1, -3440($fp)
	add $t0, $t0, $t1
	sw $t0, -3452($fp)
	lw $t0, -3452($fp)
	lw $t1, 0($t0)
	sw $t1, -3456($fp)
	lw $t0, -3456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -3460($fp)
	li $t0, 1
	sw $t0, -3464($fp)
	li $t0, 4
	lw $t1, -3464($fp)
	mul $t0, $t0, $t1
	sw $t0, -3468($fp)
	lw $t0, -3468($fp)
	lw $t1, -3460($fp)
	add $t0, $t0, $t1
	sw $t0, -3472($fp)
	lw $t0, -3472($fp)
	lw $t1, 0($t0)
	sw $t1, -3476($fp)
	lw $t0, -3476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -3480($fp)
	li $t0, 2
	sw $t0, -3484($fp)
	li $t0, 4
	lw $t1, -3484($fp)
	mul $t0, $t0, $t1
	sw $t0, -3488($fp)
	lw $t0, -3488($fp)
	lw $t1, -3480($fp)
	add $t0, $t0, $t1
	sw $t0, -3492($fp)
	lw $t0, -3492($fp)
	lw $t1, 0($t0)
	sw $t1, -3496($fp)
	lw $t0, -3496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -3500($fp)
	li $t0, 0
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
	lw $t0, -3516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -3520($fp)
	li $t0, 1
	sw $t0, -3524($fp)
	li $t0, 4
	lw $t1, -3524($fp)
	mul $t0, $t0, $t1
	sw $t0, -3528($fp)
	lw $t0, -3528($fp)
	lw $t1, -3520($fp)
	add $t0, $t0, $t1
	sw $t0, -3532($fp)
	lw $t0, -3532($fp)
	lw $t1, 0($t0)
	sw $t1, -3536($fp)
	lw $t0, -3536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -3540($fp)
	li $t0, 2
	sw $t0, -3544($fp)
	li $t0, 4
	lw $t1, -3544($fp)
	mul $t0, $t0, $t1
	sw $t0, -3548($fp)
	lw $t0, -3548($fp)
	lw $t1, -3540($fp)
	add $t0, $t0, $t1
	sw $t0, -3552($fp)
	lw $t0, -3552($fp)
	lw $t1, 0($t0)
	sw $t1, -3556($fp)
	lw $t0, -3556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -3560($fp)
	li $t0, 3
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
	lw $t0, -3576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -3580($fp)
	li $t0, 4
	sw $t0, -3584($fp)
	li $t0, 4
	lw $t1, -3584($fp)
	mul $t0, $t0, $t1
	sw $t0, -3588($fp)
	lw $t0, -3588($fp)
	lw $t1, -3580($fp)
	add $t0, $t0, $t1
	sw $t0, -3592($fp)
	lw $t0, -3592($fp)
	lw $t1, 0($t0)
	sw $t1, -3596($fp)
	lw $t0, -3596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -3600($fp)
	li $t0, 5
	sw $t0, -3604($fp)
	li $t0, 4
	lw $t1, -3604($fp)
	mul $t0, $t0, $t1
	sw $t0, -3608($fp)
	lw $t0, -3608($fp)
	lw $t1, -3600($fp)
	add $t0, $t0, $t1
	sw $t0, -3612($fp)
	lw $t0, -3612($fp)
	lw $t1, 0($t0)
	sw $t1, -3616($fp)
	lw $t0, -3616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -3620($fp)
	li $t0, 6
	sw $t0, -3624($fp)
	li $t0, 4
	lw $t1, -3624($fp)
	mul $t0, $t0, $t1
	sw $t0, -3628($fp)
	lw $t0, -3628($fp)
	lw $t1, -3620($fp)
	add $t0, $t0, $t1
	sw $t0, -3632($fp)
	lw $t0, -3632($fp)
	lw $t1, 0($t0)
	sw $t1, -3636($fp)
	lw $t0, -3636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -3640($fp)
	li $t0, 7
	sw $t0, -3644($fp)
	li $t0, 4
	lw $t1, -3644($fp)
	mul $t0, $t0, $t1
	sw $t0, -3648($fp)
	lw $t0, -3648($fp)
	lw $t1, -3640($fp)
	add $t0, $t0, $t1
	sw $t0, -3652($fp)
	lw $t0, -3652($fp)
	lw $t1, 0($t0)
	sw $t1, -3656($fp)
	lw $t0, -3656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -3660($fp)
	li $t0, 8
	sw $t0, -3664($fp)
	li $t0, 4
	lw $t1, -3664($fp)
	mul $t0, $t0, $t1
	sw $t0, -3668($fp)
	lw $t0, -3668($fp)
	lw $t1, -3660($fp)
	add $t0, $t0, $t1
	sw $t0, -3672($fp)
	lw $t0, -3672($fp)
	lw $t1, 0($t0)
	sw $t1, -3676($fp)
	lw $t0, -3676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -400($fp)
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -412($fp)
	sw $t0, -3684($fp)
	lw $t0, -3684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -424($fp)
	sw $t0, -3688($fp)
	lw $t0, -3688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -436($fp)
	sw $t0, -3692($fp)
	lw $t0, -3692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -448($fp)
	sw $t0, -3696($fp)
	lw $t0, -3696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -460($fp)
	sw $t0, -3700($fp)
	lw $t0, -3700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -472($fp)
	sw $t0, -3704($fp)
	lw $t0, -3704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -484($fp)
	sw $t0, -3708($fp)
	lw $t0, -3708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -496($fp)
	sw $t0, -3712($fp)
	lw $t0, -3712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -508($fp)
	sw $t0, -3716($fp)
	lw $t0, -3716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -520($fp)
	sw $t0, -3720($fp)
	lw $t0, -3720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -532($fp)
	sw $t0, -3724($fp)
	lw $t0, -3724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -544($fp)
	sw $t0, -3728($fp)
	lw $t0, -3728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -556($fp)
	sw $t0, -3732($fp)
	lw $t0, -3732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -568($fp)
	sw $t0, -3736($fp)
	lw $t0, -3736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -580($fp)
	sw $t0, -3740($fp)
	lw $t0, -3740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -592($fp)
	sw $t0, -3744($fp)
	lw $t0, -3744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -604($fp)
	sw $t0, -3748($fp)
	lw $t0, -3748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -3752($fp)
	li $t0, 0
	sw $t0, -3756($fp)
	li $t0, 4
	lw $t1, -3756($fp)
	mul $t0, $t0, $t1
	sw $t0, -3760($fp)
	lw $t0, -3760($fp)
	lw $t1, -3752($fp)
	add $t0, $t0, $t1
	sw $t0, -3764($fp)
	lw $t0, -3764($fp)
	lw $t1, 0($t0)
	sw $t1, -3768($fp)
	lw $t0, -3768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -3772($fp)
	li $t0, 0
	sw $t0, -3776($fp)
	li $t0, 4
	lw $t1, -3776($fp)
	mul $t0, $t0, $t1
	sw $t0, -3780($fp)
	lw $t0, -3780($fp)
	lw $t1, -3772($fp)
	add $t0, $t0, $t1
	sw $t0, -3784($fp)
	lw $t0, -3784($fp)
	lw $t1, 0($t0)
	sw $t1, -3788($fp)
	lw $t0, -3788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -3792($fp)
	li $t0, 1
	sw $t0, -3796($fp)
	li $t0, 4
	lw $t1, -3796($fp)
	mul $t0, $t0, $t1
	sw $t0, -3800($fp)
	lw $t0, -3800($fp)
	lw $t1, -3792($fp)
	add $t0, $t0, $t1
	sw $t0, -3804($fp)
	lw $t0, -3804($fp)
	lw $t1, 0($t0)
	sw $t1, -3808($fp)
	lw $t0, -3808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -3812($fp)
	li $t0, 2
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
	addi $t0, $fp, -76
	sw $t0, -3832($fp)
	li $t0, 3
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
	addi $t0, $fp, -76
	sw $t0, -3852($fp)
	li $t0, 4
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
	addi $t0, $fp, -88
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
	addi $t0, $fp, -88
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
	addi $t0, $fp, -88
	sw $t0, -3912($fp)
	li $t0, 2
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
	lw $t0, -832($fp)
	sw $t0, -3932($fp)
	lw $t0, -3932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -844($fp)
	sw $t0, -3936($fp)
	lw $t0, -3936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -856($fp)
	sw $t0, -3940($fp)
	lw $t0, -3940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -3944($fp)
	li $t0, 0
	sw $t0, -3948($fp)
	li $t0, 4
	lw $t1, -3948($fp)
	mul $t0, $t0, $t1
	sw $t0, -3952($fp)
	lw $t0, -3952($fp)
	lw $t1, -3944($fp)
	add $t0, $t0, $t1
	sw $t0, -3956($fp)
	lw $t0, -3956($fp)
	lw $t1, 0($t0)
	sw $t1, -3960($fp)
	lw $t0, -3960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -892($fp)
	sw $t0, -3964($fp)
	lw $t0, -3964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -904($fp)
	sw $t0, -3968($fp)
	lw $t0, -3968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -916($fp)
	sw $t0, -3972($fp)
	lw $t0, -3972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3976($fp)
	li $t0, 32340
	sw $t0, -3980($fp)
	lw $t1, -3980($fp)
	li $t2, 0
	bne $t1, $t2, label564
	j label563
label564:
	li $t0, 0
	sw $t0, -3984($fp)
	li $t0, 53859
	sw $t0, -3988($fp)
	li $t0, 32514
	sw $t0, -3992($fp)
	lw $t1, -3988($fp)
	lw $t2, -3992($fp)
	bne $t1, $t2, label565
	j label567
label567:
	lw $t0, -448($fp)
	sw $t0, -3996($fp)
	lw $t1, -3996($fp)
	li $t2, 0
	bne $t1, $t2, label565
	j label566
label565:
	li $t0, 1
	sw $t0, -3984($fp)
label566:
	addi $sp, $sp, -4
	lw $t0, -3984($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -4000($fp)
	addi $sp, $sp, 8
	lw $t1, -4000($fp)
	li $t2, 0
	bne $t1, $t2, label562
	j label563
label562:
	li $t0, 1
	sw $t0, -3976($fp)
label563:
	lw $ra, -4($fp)
	lw $v0, -3976($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -100($fp)
	sw $t0, -4004($fp)
	lw $t0, -4004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
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
	addi $t0, $fp, -16
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
	addi $t0, $fp, -16
	sw $t0, -4048($fp)
	li $t0, 2
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
	lw $t0, -4064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -4068($fp)
	li $t0, 0
	sw $t0, -4072($fp)
	li $t0, 4
	lw $t1, -4072($fp)
	mul $t0, $t0, $t1
	sw $t0, -4076($fp)
	lw $t0, -4076($fp)
	lw $t1, -4068($fp)
	add $t0, $t0, $t1
	sw $t0, -4080($fp)
	lw $t0, -4080($fp)
	lw $t1, 0($t0)
	sw $t1, -4084($fp)
	lw $t0, -4084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -4088($fp)
	li $t0, 1
	sw $t0, -4092($fp)
	li $t0, 4
	lw $t1, -4092($fp)
	mul $t0, $t0, $t1
	sw $t0, -4096($fp)
	lw $t0, -4096($fp)
	lw $t1, -4088($fp)
	add $t0, $t0, $t1
	sw $t0, -4100($fp)
	lw $t0, -4100($fp)
	lw $t1, 0($t0)
	sw $t1, -4104($fp)
	lw $t0, -4104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -4108($fp)
	li $t0, 2
	sw $t0, -4112($fp)
	li $t0, 4
	lw $t1, -4112($fp)
	mul $t0, $t0, $t1
	sw $t0, -4116($fp)
	lw $t0, -4116($fp)
	lw $t1, -4108($fp)
	add $t0, $t0, $t1
	sw $t0, -4120($fp)
	lw $t0, -4120($fp)
	lw $t1, 0($t0)
	sw $t1, -4124($fp)
	lw $t0, -4124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -4128($fp)
	li $t0, 3
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
	addi $t0, $fp, -52
	sw $t0, -4148($fp)
	li $t0, 4
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
	addi $t0, $fp, -52
	sw $t0, -4168($fp)
	li $t0, 5
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
	addi $t0, $fp, -52
	sw $t0, -4188($fp)
	li $t0, 6
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
	addi $t0, $fp, -52
	sw $t0, -4208($fp)
	li $t0, 7
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
	addi $t0, $fp, -52
	sw $t0, -4228($fp)
	li $t0, 8
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
	lw $t0, -400($fp)
	sw $t0, -4248($fp)
	lw $t0, -4248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -412($fp)
	sw $t0, -4252($fp)
	lw $t0, -4252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -424($fp)
	sw $t0, -4256($fp)
	lw $t0, -4256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -436($fp)
	sw $t0, -4260($fp)
	lw $t0, -4260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -448($fp)
	sw $t0, -4264($fp)
	lw $t0, -4264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -460($fp)
	sw $t0, -4268($fp)
	lw $t0, -4268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -472($fp)
	sw $t0, -4272($fp)
	lw $t0, -4272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -484($fp)
	sw $t0, -4276($fp)
	lw $t0, -4276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -496($fp)
	sw $t0, -4280($fp)
	lw $t0, -4280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -508($fp)
	sw $t0, -4284($fp)
	lw $t0, -4284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -520($fp)
	sw $t0, -4288($fp)
	lw $t0, -4288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -532($fp)
	sw $t0, -4292($fp)
	lw $t0, -4292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -544($fp)
	sw $t0, -4296($fp)
	lw $t0, -4296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -556($fp)
	sw $t0, -4300($fp)
	lw $t0, -4300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -568($fp)
	sw $t0, -4304($fp)
	lw $t0, -4304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -580($fp)
	sw $t0, -4308($fp)
	lw $t0, -4308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -592($fp)
	sw $t0, -4312($fp)
	lw $t0, -4312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -604($fp)
	sw $t0, -4316($fp)
	lw $t0, -4316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -4320($fp)
	li $t0, 0
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
	addi $t0, $fp, -76
	sw $t0, -4340($fp)
	li $t0, 0
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
	addi $t0, $fp, -76
	sw $t0, -4360($fp)
	li $t0, 1
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
	addi $t0, $fp, -76
	sw $t0, -4380($fp)
	li $t0, 2
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
	addi $t0, $fp, -76
	sw $t0, -4400($fp)
	li $t0, 3
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
	addi $t0, $fp, -76
	sw $t0, -4420($fp)
	li $t0, 4
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
	addi $t0, $fp, -88
	sw $t0, -4440($fp)
	li $t0, 0
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
	addi $t0, $fp, -88
	sw $t0, -4460($fp)
	li $t0, 1
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
	lw $t0, -4476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -4480($fp)
	li $t0, 2
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
	lw $t0, -4496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -832($fp)
	sw $t0, -4500($fp)
	lw $t0, -4500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -844($fp)
	sw $t0, -4504($fp)
	lw $t0, -4504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -856($fp)
	sw $t0, -4508($fp)
	lw $t0, -4508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -4512($fp)
	li $t0, 0
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
	lw $t0, -892($fp)
	sw $t0, -4532($fp)
	lw $t0, -4532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -904($fp)
	sw $t0, -4536($fp)
	lw $t0, -4536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -916($fp)
	sw $t0, -4540($fp)
	lw $t0, -4540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4544($fp)
	li $t0, 44963
	sw $t0, -4548($fp)
	lw $t0, -4548($fp)
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -4552($fp)
	addi $sp, $sp, -4
	lw $t0, -4552($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -4556($fp)
	addi $sp, $sp, 8
	lw $t1, -4556($fp)
	li $t2, 0
	bne $t1, $t2, label569
	j label568
label568:
	li $t0, 1
	sw $t0, -4544($fp)
label569:
	lw $ra, -4($fp)
	lw $v0, -4544($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 60380
	sw $t0, -4600($fp)
	lw $t0, -4600($fp)
	sw $t0, -4604($fp)
	lw $t0, -4604($fp)
	sw $t0, -4608($fp)
	li $t0, 1022
	sw $t0, -4612($fp)
	lw $t0, -4612($fp)
	sw $t0, -4616($fp)
	lw $t0, -4616($fp)
	sw $t0, -4620($fp)
	li $t0, 52812
	sw $t0, -4624($fp)
	lw $t0, -4624($fp)
	sw $t0, -4628($fp)
	lw $t0, -4628($fp)
	sw $t0, -4632($fp)
	li $t0, 49904
	sw $t0, -4636($fp)
	addi $t0, $fp, -4596
	sw $t0, -4640($fp)
	li $t0, 0
	sw $t0, -4644($fp)
	lw $t0, -4644($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4648($fp)
	lw $t0, -4640($fp)
	lw $t1, -4648($fp)
	add $t0, $t0, $t1
	sw $t0, -4652($fp)
	lw $t0, -4636($fp)
	lw $t1, -4652($fp)
	sw $t0, 0($t1)
	lw $t0, -4652($fp)
	lw $t1, 0($t0)
	sw $t1, -4656($fp)
	li $t0, 39079
	sw $t0, -4660($fp)
	addi $t0, $fp, -4596
	sw $t0, -4664($fp)
	li $t0, 1
	sw $t0, -4668($fp)
	lw $t0, -4668($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4672($fp)
	lw $t0, -4664($fp)
	lw $t1, -4672($fp)
	add $t0, $t0, $t1
	sw $t0, -4676($fp)
	lw $t0, -4660($fp)
	lw $t1, -4676($fp)
	sw $t0, 0($t1)
	lw $t0, -4676($fp)
	lw $t1, 0($t0)
	sw $t1, -4680($fp)
	li $t0, 61165
	sw $t0, -4684($fp)
	addi $t0, $fp, -4596
	sw $t0, -4688($fp)
	li $t0, 2
	sw $t0, -4692($fp)
	lw $t0, -4692($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4696($fp)
	lw $t0, -4688($fp)
	lw $t1, -4696($fp)
	add $t0, $t0, $t1
	sw $t0, -4700($fp)
	lw $t0, -4684($fp)
	lw $t1, -4700($fp)
	sw $t0, 0($t1)
	lw $t0, -4700($fp)
	lw $t1, 0($t0)
	sw $t1, -4704($fp)
	li $t0, 49842
	sw $t0, -4708($fp)
	addi $t0, $fp, -4596
	sw $t0, -4712($fp)
	li $t0, 3
	sw $t0, -4716($fp)
	lw $t0, -4716($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4720($fp)
	lw $t0, -4712($fp)
	lw $t1, -4720($fp)
	add $t0, $t0, $t1
	sw $t0, -4724($fp)
	lw $t0, -4708($fp)
	lw $t1, -4724($fp)
	sw $t0, 0($t1)
	lw $t0, -4724($fp)
	lw $t1, 0($t0)
	sw $t1, -4728($fp)
	li $t0, 56182
	sw $t0, -4732($fp)
	addi $t0, $fp, -4596
	sw $t0, -4736($fp)
	li $t0, 4
	sw $t0, -4740($fp)
	lw $t0, -4740($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4744($fp)
	lw $t0, -4736($fp)
	lw $t1, -4744($fp)
	add $t0, $t0, $t1
	sw $t0, -4748($fp)
	lw $t0, -4732($fp)
	lw $t1, -4748($fp)
	sw $t0, 0($t1)
	lw $t0, -4748($fp)
	lw $t1, 0($t0)
	sw $t1, -4752($fp)
	li $t0, 17591
	sw $t0, -4756($fp)
	addi $t0, $fp, -4596
	sw $t0, -4760($fp)
	li $t0, 5
	sw $t0, -4764($fp)
	lw $t0, -4764($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4768($fp)
	lw $t0, -4760($fp)
	lw $t1, -4768($fp)
	add $t0, $t0, $t1
	sw $t0, -4772($fp)
	lw $t0, -4756($fp)
	lw $t1, -4772($fp)
	sw $t0, 0($t1)
	lw $t0, -4772($fp)
	lw $t1, 0($t0)
	sw $t1, -4776($fp)
	li $t0, 60766
	sw $t0, -4780($fp)
	addi $t0, $fp, -4596
	sw $t0, -4784($fp)
	li $t0, 6
	sw $t0, -4788($fp)
	lw $t0, -4788($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4792($fp)
	lw $t0, -4784($fp)
	lw $t1, -4792($fp)
	add $t0, $t0, $t1
	sw $t0, -4796($fp)
	lw $t0, -4780($fp)
	lw $t1, -4796($fp)
	sw $t0, 0($t1)
	lw $t0, -4796($fp)
	lw $t1, 0($t0)
	sw $t1, -4800($fp)
	li $t0, 17551
	sw $t0, -4804($fp)
	addi $t0, $fp, -4596
	sw $t0, -4808($fp)
	li $t0, 7
	sw $t0, -4812($fp)
	lw $t0, -4812($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4816($fp)
	lw $t0, -4808($fp)
	lw $t1, -4816($fp)
	add $t0, $t0, $t1
	sw $t0, -4820($fp)
	lw $t0, -4804($fp)
	lw $t1, -4820($fp)
	sw $t0, 0($t1)
	lw $t0, -4820($fp)
	lw $t1, 0($t0)
	sw $t1, -4824($fp)
	li $t0, 38576
	sw $t0, -4828($fp)
	addi $t0, $fp, -4596
	sw $t0, -4832($fp)
	li $t0, 8
	sw $t0, -4836($fp)
	lw $t0, -4836($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4840($fp)
	lw $t0, -4832($fp)
	lw $t1, -4840($fp)
	add $t0, $t0, $t1
	sw $t0, -4844($fp)
	lw $t0, -4828($fp)
	lw $t1, -4844($fp)
	sw $t0, 0($t1)
	lw $t0, -4844($fp)
	lw $t1, 0($t0)
	sw $t1, -4848($fp)
	li $t0, 6084
	sw $t0, -4852($fp)
	addi $t0, $fp, -4596
	sw $t0, -4856($fp)
	li $t0, 9
	sw $t0, -4860($fp)
	lw $t0, -4860($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4864($fp)
	lw $t0, -4856($fp)
	lw $t1, -4864($fp)
	add $t0, $t0, $t1
	sw $t0, -4868($fp)
	lw $t0, -4852($fp)
	lw $t1, -4868($fp)
	sw $t0, 0($t1)
	lw $t0, -4868($fp)
	lw $t1, 0($t0)
	sw $t1, -4872($fp)
	li $t0, 33386
	sw $t0, -4876($fp)
	lw $t0, -4876($fp)
	sw $t0, -4880($fp)
	lw $t0, -4880($fp)
	sw $t0, -4884($fp)
	li $t0, 49999
	sw $t0, -4888($fp)
	lw $t0, -4888($fp)
	sw $t0, -4892($fp)
	lw $t0, -4892($fp)
	sw $t0, -4896($fp)
	li $t0, 6532
	sw $t0, -4900($fp)
	addi $t0, $fp, -4596
	sw $t0, -4904($fp)
	lw $t0, -592($fp)
	sw $t0, -4908($fp)
	lw $t0, -484($fp)
	sw $t0, -4912($fp)
	lw $t0, -4908($fp)
	lw $t1, -4912($fp)
	add $t0, $t0, $t1
	sw $t0, -4916($fp)
	li $t0, 4
	lw $t1, -4916($fp)
	mul $t0, $t0, $t1
	sw $t0, -4920($fp)
	lw $t0, -4920($fp)
	lw $t1, -4904($fp)
	add $t0, $t0, $t1
	sw $t0, -4924($fp)
	lw $t0, -4924($fp)
	lw $t1, 0($t0)
	sw $t1, -4928($fp)
	lw $t0, -4900($fp)
	lw $t1, -4928($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4932($fp)
	lw $t1, -4932($fp)
	li $t2, 0
	bne $t1, $t2, label570
	j label571
label570:
	lw $t0, -544($fp)
	sw $t0, -4936($fp)
	li $t0, 0
	sw $t0, -4940($fp)
	lw $t0, -4628($fp)
	sw $t0, -4944($fp)
	lw $t1, -4944($fp)
	li $t2, 0
	bne $t1, $t2, label577
	j label576
label576:
	li $t0, 1
	sw $t0, -4940($fp)
label577:
	lw $t0, -4936($fp)
	lw $t1, -4940($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4948($fp)
	lw $t1, -4948($fp)
	li $t2, 0
	bne $t1, $t2, label573
	j label574
label573:
label578:
	lw $t0, -4892($fp)
	sw $t0, -4952($fp)
	li $t0, 7090
	sw $t0, -4956($fp)
	li $t0, 41867
	sw $t0, -4960($fp)
	lw $t0, -4956($fp)
	lw $t1, -4960($fp)
	mul $t0, $t0, $t1
	sw $t0, -4964($fp)
	li $t0, 0
	lw $t1, -4964($fp)
	sub $t0, $t0, $t1
	sw $t0, -4968($fp)
	lw $t0, -4952($fp)
	lw $t1, -4968($fp)
	add $t0, $t0, $t1
	sw $t0, -4972($fp)
	lw $t1, -4972($fp)
	li $t2, 0
	bne $t1, $t2, label579
	j label580
label579:
	addi $t0, $fp, -88
	sw $t0, -4976($fp)
	lw $t0, -400($fp)
	sw $t0, -4980($fp)
	li $t0, 4
	lw $t1, -4980($fp)
	mul $t0, $t0, $t1
	sw $t0, -4984($fp)
	lw $t0, -4984($fp)
	lw $t1, -4976($fp)
	add $t0, $t0, $t1
	sw $t0, -4988($fp)
	lw $t0, -4988($fp)
	lw $t1, 0($t0)
	sw $t1, -4992($fp)
	lw $t0, -4616($fp)
	sw $t0, -4996($fp)
	lw $t0, -4992($fp)
	lw $t1, -4996($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5000($fp)
	li $t0, 3832
	sw $t0, -5004($fp)
	lw $t0, -5000($fp)
	lw $t1, -5004($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5008($fp)
	lw $t0, -5008($fp)
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -5012($fp)
	lw $ra, -4($fp)
	lw $v0, -5012($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label578
label580:
	j label575
label574:
	li $t0, 0
	sw $t0, -5016($fp)
	addi $t0, $fp, -88
	sw $t0, -5020($fp)
	li $t0, 1
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
	li $t0, 0
	sw $t0, -5040($fp)
	li $t0, 247
	sw $t0, -5044($fp)
	li $t0, 0
	lw $t1, -5044($fp)
	sub $t0, $t0, $t1
	sw $t0, -5048($fp)
	lw $t1, -5048($fp)
	li $t2, 0
	bne $t1, $t2, label585
	j label584
label584:
	li $t0, 1
	sw $t0, -5040($fp)
label585:
	lw $t0, -5036($fp)
	lw $t1, -5040($fp)
	mul $t0, $t0, $t1
	sw $t0, -5052($fp)
	li $t0, 0
	lw $t1, -5052($fp)
	sub $t0, $t0, $t1
	sw $t0, -5056($fp)
	lw $t1, -5056($fp)
	li $t2, 0
	bne $t1, $t2, label583
	j label582
label583:
	li $t0, 0
	sw $t0, -5060($fp)
	lw $t0, -4604($fp)
	sw $t0, -5064($fp)
	li $t0, 1842
	sw $t0, -5068($fp)
	lw $t1, -5064($fp)
	lw $t2, -5068($fp)
	bgt $t1, $t2, label586
	j label587
label586:
	li $t0, 1
	sw $t0, -5060($fp)
label587:
	li $t0, 0
	sw $t0, -5072($fp)
	li $t0, 37833
	sw $t0, -5076($fp)
	lw $t0, -4892($fp)
	sw $t0, -5080($fp)
	lw $t1, -5076($fp)
	lw $t2, -5080($fp)
	bgt $t1, $t2, label588
	j label589
label588:
	li $t0, 1
	sw $t0, -5072($fp)
label589:
	lw $t1, -5060($fp)
	lw $t2, -5072($fp)
	bne $t1, $t2, label581
	j label582
label581:
	li $t0, 1
	sw $t0, -5016($fp)
label582:
label575:
label571:
	li $t0, 8305
	sw $t0, -5084($fp)
	lw $t0, -5084($fp)
	sw $t0, -5088($fp)
	lw $t0, -5088($fp)
	sw $t0, -5092($fp)
	li $t0, 32750
	sw $t0, -5096($fp)
	lw $t0, -5096($fp)
	sw $t0, -5100($fp)
	lw $t0, -5100($fp)
	sw $t0, -5104($fp)
	li $t0, 4637
	sw $t0, -5108($fp)
	lw $t0, -5108($fp)
	sw $t0, -5112($fp)
	lw $t0, -5112($fp)
	sw $t0, -5116($fp)
	li $t0, 62164
	sw $t0, -5120($fp)
	lw $t0, -5120($fp)
	sw $t0, -5124($fp)
	lw $t0, -5124($fp)
	sw $t0, -5128($fp)
	li $t0, 65264
	sw $t0, -5132($fp)
	lw $t0, -5132($fp)
	sw $t0, -5136($fp)
	lw $t0, -5136($fp)
	sw $t0, -5140($fp)
	li $t0, 49601
	sw $t0, -5144($fp)
	lw $t0, -5144($fp)
	sw $t0, -5148($fp)
	lw $t0, -5148($fp)
	sw $t0, -5152($fp)
	li $t0, 57009
	sw $t0, -5156($fp)
	lw $t0, -5156($fp)
	sw $t0, -5160($fp)
	lw $t0, -5160($fp)
	sw $t0, -5164($fp)
	li $t0, 750
	sw $t0, -5168($fp)
	lw $t0, -5168($fp)
	sw $t0, -5172($fp)
	lw $t0, -5172($fp)
	sw $t0, -5176($fp)
	li $t0, 0
	sw $t0, -5180($fp)
	li $t0, 0
	sw $t0, -5184($fp)
	lw $t0, 16($fp)
	sw $t0, -5188($fp)
	lw $t1, -5188($fp)
	li $t2, 0
	bne $t1, $t2, label593
	j label592
label592:
	li $t0, 1
	sw $t0, -5184($fp)
label593:
	jal f10
	sw $v0, -5192($fp)
	addi $sp, $sp, 4
	lw $t1, -5184($fp)
	lw $t2, -5192($fp)
	bne $t1, $t2, label590
	j label591
label590:
	li $t0, 1
	sw $t0, -5180($fp)
label591:
	li $t0, 36877
	sw $t0, -5196($fp)
label594:
	lw $t0, -904($fp)
	sw $t0, -5200($fp)
	li $t0, 39831
	sw $t0, -5204($fp)
	lw $t0, -5200($fp)
	lw $t1, -5204($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5208($fp)
	li $t0, 0
	sw $t0, -5212($fp)
	addi $t0, $fp, -56
	sw $t0, -5216($fp)
	li $t0, 0
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
	lw $t1, -5232($fp)
	li $t2, 0
	bne $t1, $t2, label598
	j label597
label597:
	li $t0, 1
	sw $t0, -5212($fp)
label598:
	lw $t0, -5208($fp)
	lw $t1, -5212($fp)
	add $t0, $t0, $t1
	sw $t0, -5236($fp)
	lw $t1, -5236($fp)
	li $t2, 0
	bne $t1, $t2, label595
	j label596
label595:
	li $t0, 20913
	sw $t0, -5240($fp)
	lw $t0, -5160($fp)
	sw $t0, -5244($fp)
	lw $t0, -5240($fp)
	lw $t1, -5244($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5248($fp)
	li $t0, 48027
	sw $t0, -5252($fp)
	lw $t0, -5248($fp)
	lw $t1, -5252($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5256($fp)
	lw $t0, -568($fp)
	sw $t0, -5260($fp)
	li $t0, 30476
	sw $t0, -5264($fp)
	lw $t0, -5260($fp)
	lw $t1, -5264($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5268($fp)
	li $t0, 50097
	sw $t0, -5272($fp)
	lw $t0, -5268($fp)
	lw $t1, -5272($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5276($fp)
	addi $sp, $sp, -4
	lw $t0, -5256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5276($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5280($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -16
	sw $t0, -5284($fp)
	li $t0, 0
	sw $t0, -5288($fp)
	lw $t0, -424($fp)
	sw $t0, -5292($fp)
	lw $t0, -5148($fp)
	sw $t0, -5296($fp)
	lw $t1, -5292($fp)
	lw $t2, -5296($fp)
	bgt $t1, $t2, label599
	j label600
label599:
	li $t0, 1
	sw $t0, -5288($fp)
label600:
	li $t0, 4
	lw $t1, -5288($fp)
	mul $t0, $t0, $t1
	sw $t0, -5300($fp)
	lw $t0, -5300($fp)
	lw $t1, -5284($fp)
	add $t0, $t0, $t1
	sw $t0, -5304($fp)
	lw $t0, -5304($fp)
	lw $t1, 0($t0)
	sw $t1, -5308($fp)
	lw $t0, -5280($fp)
	lw $t1, -5308($fp)
	add $t0, $t0, $t1
	sw $t0, -5312($fp)
	j label594
label596:
label601:
	li $t0, 0
	sw $t0, -5316($fp)
	lw $t0, -580($fp)
	sw $t0, -5320($fp)
	lw $t1, -5320($fp)
	li $t2, 0
	bne $t1, $t2, label604
	j label605
label604:
	li $t0, 1
	sw $t0, -5316($fp)
label605:
	li $t0, 23137
	sw $t0, -5324($fp)
	li $t0, 26997
	sw $t0, -5328($fp)
	lw $t0, -5324($fp)
	lw $t1, -5328($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5332($fp)
	lw $t0, -508($fp)
	sw $t0, -5336($fp)
	lw $t0, -5332($fp)
	lw $t1, -5336($fp)
	mul $t0, $t0, $t1
	sw $t0, -5340($fp)
	li $t0, 0
	sw $t0, -5344($fp)
	li $t0, 15877
	sw $t0, -5348($fp)
	lw $t1, -5348($fp)
	li $t2, 0
	bne $t1, $t2, label609
	j label608
label609:
	li $t0, 7601
	sw $t0, -5352($fp)
	lw $t1, -5352($fp)
	li $t2, 0
	bne $t1, $t2, label606
	j label608
label608:
	lw $t0, -904($fp)
	sw $t0, -5356($fp)
	lw $t1, -5356($fp)
	li $t2, 0
	bne $t1, $t2, label606
	j label607
label606:
	li $t0, 1
	sw $t0, -5344($fp)
label607:
	addi $sp, $sp, -4
	lw $t0, -5344($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -5360($fp)
	addi $sp, $sp, 8
	lw $t0, -5340($fp)
	lw $t1, -5360($fp)
	add $t0, $t0, $t1
	sw $t0, -5364($fp)
	lw $t1, -5316($fp)
	lw $t2, -5364($fp)
	bgt $t1, $t2, label602
	j label603
label602:
	li $t0, 0
	sw $t0, -5368($fp)
	li $t0, 33529
	sw $t0, -5372($fp)
	lw $t0, -544($fp)
	sw $t0, -5376($fp)
	lw $t0, -5372($fp)
	lw $t1, -5376($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5380($fp)
	lw $t1, -5380($fp)
	li $t2, 0
	bne $t1, $t2, label610
	j label613
label613:
	li $t0, 22967
	sw $t0, -5384($fp)
	lw $t1, -5384($fp)
	li $t2, 0
	bne $t1, $t2, label610
	j label612
label612:
	lw $t0, -892($fp)
	sw $t0, -5388($fp)
	lw $t0, -412($fp)
	sw $t0, -5392($fp)
	lw $t1, -5388($fp)
	lw $t2, -5392($fp)
	bge $t1, $t2, label610
	j label611
label610:
	li $t0, 1
	sw $t0, -5368($fp)
label611:
	lw $t0, -5368($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -5396($fp)
	j label601
label603:
	li $t0, 0
	sw $t0, -5400($fp)
	jal f9
	sw $v0, -5404($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -16
	sw $t0, -5408($fp)
	lw $t0, -4604($fp)
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
	lw $t1, -5404($fp)
	lw $t2, -5424($fp)
	blt $t1, $t2, label614
	j label615
label614:
	li $t0, 1
	sw $t0, -5400($fp)
label615:
	li $t0, 0
	sw $t0, -5428($fp)
	lw $t0, -904($fp)
	sw $t0, -5432($fp)
	li $t0, 0
	lw $t1, -5432($fp)
	sub $t0, $t0, $t1
	sw $t0, -5436($fp)
	li $t0, 0
	lw $t1, -5436($fp)
	sub $t0, $t0, $t1
	sw $t0, -5440($fp)
	lw $t1, -5440($fp)
	li $t2, 0
	bne $t1, $t2, label620
	j label619
label619:
	li $t0, 1
	sw $t0, -5428($fp)
label620:
	li $t0, 0
	sw $t0, -5444($fp)
	li $t0, 49468
	sw $t0, -5448($fp)
	lw $t0, -5448($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -5452($fp)
	addi $sp, $sp, -4
	lw $t0, -5452($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -5456($fp)
	addi $sp, $sp, 8
	li $t0, 65457
	sw $t0, -5460($fp)
	li $t0, 26798
	sw $t0, -5464($fp)
	lw $t0, -5460($fp)
	lw $t1, -5464($fp)
	add $t0, $t0, $t1
	sw $t0, -5468($fp)
	lw $t1, -5456($fp)
	lw $t2, -5468($fp)
	bge $t1, $t2, label621
	j label622
label621:
	li $t0, 1
	sw $t0, -5444($fp)
label622:
	lw $t1, -5428($fp)
	lw $t2, -5444($fp)
	beq $t1, $t2, label616
	j label617
label616:
	li $t0, 0
	sw $t0, -5472($fp)
	li $t0, 0
	sw $t0, -5476($fp)
	li $t0, 31586
	sw $t0, -5480($fp)
	lw $t1, -5480($fp)
	li $t2, 0
	bne $t1, $t2, label627
	j label626
label626:
	li $t0, 1
	sw $t0, -5476($fp)
label627:
	li $t0, 1716
	sw $t0, -5484($fp)
	lw $t0, -5476($fp)
	lw $t1, -5484($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5488($fp)
	lw $t1, -5488($fp)
	li $t2, 0
	bne $t1, $t2, label625
	j label624
label625:
	li $t0, 0
	sw $t0, -5492($fp)
	lw $t0, -400($fp)
	sw $t0, -5496($fp)
	lw $t1, -5496($fp)
	li $t2, 0
	bne $t1, $t2, label629
	j label628
label628:
	li $t0, 1
	sw $t0, -5492($fp)
label629:
	lw $t0, -892($fp)
	sw $t0, -5500($fp)
	lw $t0, -5492($fp)
	lw $t1, -5500($fp)
	add $t0, $t0, $t1
	sw $t0, -5504($fp)
	li $t0, 642
	sw $t0, -5508($fp)
	li $t0, 44187
	sw $t0, -5512($fp)
	lw $t0, -5508($fp)
	lw $t1, -5512($fp)
	sub $t0, $t0, $t1
	sw $t0, -5516($fp)
	li $t0, 39549
	sw $t0, -5520($fp)
	li $t0, 35351
	sw $t0, -5524($fp)
	lw $t0, -5520($fp)
	lw $t1, -5524($fp)
	add $t0, $t0, $t1
	sw $t0, -5528($fp)
	li $t0, 0
	sw $t0, -5532($fp)
	li $t0, 27046
	sw $t0, -5536($fp)
	lw $t0, -892($fp)
	sw $t0, -5540($fp)
	lw $t1, -5536($fp)
	lw $t2, -5540($fp)
	blt $t1, $t2, label630
	j label632
label632:
	li $t0, 33428
	sw $t0, -5544($fp)
	lw $t1, -5544($fp)
	li $t2, 0
	bne $t1, $t2, label630
	j label631
label630:
	li $t0, 1
	sw $t0, -5532($fp)
label631:
	addi $sp, $sp, -4
	lw $t0, -5516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5532($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5548($fp)
	addi $sp, $sp, 16
	lw $t0, -5504($fp)
	lw $t1, -5548($fp)
	sub $t0, $t0, $t1
	sw $t0, -5552($fp)
	lw $t1, -5552($fp)
	li $t2, 0
	bne $t1, $t2, label623
	j label624
label623:
	li $t0, 1
	sw $t0, -5472($fp)
label624:
	j label618
label617:
	li $t0, 0
	sw $t0, -5556($fp)
	li $t0, 31979
	sw $t0, -5560($fp)
	lw $t1, -5560($fp)
	li $t2, 0
	bne $t1, $t2, label634
	j label633
label633:
	li $t0, 1
	sw $t0, -5556($fp)
label634:
	li $t0, 0
	sw $t0, -5564($fp)
	lw $t0, -5172($fp)
	sw $t0, -5568($fp)
	li $t0, 0
	lw $t1, -5568($fp)
	sub $t0, $t0, $t1
	sw $t0, -5572($fp)
	lw $t1, -5572($fp)
	li $t2, 0
	bne $t1, $t2, label636
	j label635
label635:
	li $t0, 1
	sw $t0, -5564($fp)
label636:
	lw $t0, -5556($fp)
	lw $t1, -5564($fp)
	add $t0, $t0, $t1
	sw $t0, -5576($fp)
label618:
label637:
	li $t0, 0
	sw $t0, -5580($fp)
	addi $t0, $fp, -92
	sw $t0, -5584($fp)
	li $t0, 0
	sw $t0, -5588($fp)
	li $t0, 4
	lw $t1, -5588($fp)
	mul $t0, $t0, $t1
	sw $t0, -5592($fp)
	lw $t0, -5592($fp)
	lw $t1, -5584($fp)
	add $t0, $t0, $t1
	sw $t0, -5596($fp)
	lw $t0, -5596($fp)
	lw $t1, 0($t0)
	sw $t1, -5600($fp)
	lw $t1, -5600($fp)
	li $t2, 0
	bne $t1, $t2, label641
	j label640
label640:
	li $t0, 1
	sw $t0, -5580($fp)
label641:
	li $t0, 23452
	sw $t0, -5604($fp)
	lw $t0, -400($fp)
	sw $t0, -5608($fp)
	lw $t0, -5088($fp)
	sw $t0, -5612($fp)
	lw $t0, -5608($fp)
	lw $t1, -5612($fp)
	mul $t0, $t0, $t1
	sw $t0, -5616($fp)
	lw $t0, -5604($fp)
	lw $t1, -5616($fp)
	sub $t0, $t0, $t1
	sw $t0, -5620($fp)
	lw $t1, -5580($fp)
	lw $t2, -5620($fp)
	bne $t1, $t2, label638
	j label639
label638:
	li $t0, 0
	sw $t0, -5624($fp)
	li $t0, 0
	sw $t0, -5628($fp)
	lw $t0, -472($fp)
	sw $t0, -5632($fp)
	lw $t0, -604($fp)
	sw $t0, -5636($fp)
	lw $t1, -5632($fp)
	lw $t2, -5636($fp)
	bgt $t1, $t2, label644
	j label645
label644:
	li $t0, 1
	sw $t0, -5628($fp)
label645:
	li $t0, 40951
	sw $t0, -5640($fp)
	lw $t1, -5628($fp)
	lw $t2, -5640($fp)
	blt $t1, $t2, label642
	j label643
label642:
	li $t0, 1
	sw $t0, -5624($fp)
label643:
	lw $t0, -556($fp)
	sw $t0, -5644($fp)
	li $t0, 64829
	sw $t0, -5648($fp)
	lw $t0, -5644($fp)
	lw $t1, -5648($fp)
	mul $t0, $t0, $t1
	sw $t0, -5652($fp)
	li $t0, 0
	lw $t1, -5652($fp)
	sub $t0, $t0, $t1
	sw $t0, -5656($fp)
	li $t0, 65129
	sw $t0, -5660($fp)
	lw $t0, -592($fp)
	sw $t0, -5664($fp)
	lw $t0, -5660($fp)
	lw $t1, -5664($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5668($fp)
	lw $t0, -4880($fp)
	sw $t0, -5672($fp)
	lw $t0, -5668($fp)
	lw $t1, -5672($fp)
	mul $t0, $t0, $t1
	sw $t0, -5676($fp)
	li $t0, 1121
	sw $t0, -5680($fp)
	li $t0, 0
	lw $t1, -5680($fp)
	sub $t0, $t0, $t1
	sw $t0, -5684($fp)
	lw $t0, -580($fp)
	sw $t0, -5688($fp)
	addi $sp, $sp, -4
	lw $t0, -5624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5688($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5692($fp)
	addi $sp, $sp, 24
	lw $t0, -5692($fp)
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -5696($fp)
	j label637
label639:
label646:
	addi $t0, $fp, -56
	sw $t0, -5700($fp)
	li $t0, 0
	sw $t0, -5704($fp)
	li $t0, 32100
	sw $t0, -5708($fp)
	lw $t0, -568($fp)
	sw $t0, -5712($fp)
	lw $t1, -5708($fp)
	lw $t2, -5712($fp)
	bge $t1, $t2, label649
	j label650
label649:
	li $t0, 1
	sw $t0, -5704($fp)
label650:
	lw $t0, -5704($fp)
	sw $t0, -5124($fp)
	lw $t0, -5124($fp)
	sw $t0, -5716($fp)
	li $t0, 4
	lw $t1, -5716($fp)
	mul $t0, $t0, $t1
	sw $t0, -5720($fp)
	lw $t0, -5720($fp)
	lw $t1, -5700($fp)
	add $t0, $t0, $t1
	sw $t0, -5724($fp)
	lw $t0, -5724($fp)
	lw $t1, 0($t0)
	sw $t1, -5728($fp)
	lw $t1, -5728($fp)
	li $t2, 0
	bne $t1, $t2, label647
	j label648
label647:
label651:
	jal f10
	sw $v0, -5732($fp)
	addi $sp, $sp, 4
	lw $t1, -5732($fp)
	li $t2, 0
	bne $t1, $t2, label652
	j label653
label652:
	li $t0, 0
	sw $t0, -5736($fp)
	li $t0, 0
	sw $t0, -5740($fp)
	li $t0, 24976
	sw $t0, -5744($fp)
	li $t0, 5891
	sw $t0, -5748($fp)
	lw $t0, -5744($fp)
	lw $t1, -5748($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5752($fp)
	li $t0, 0
	sw $t0, -5756($fp)
	li $t0, 16661
	sw $t0, -5760($fp)
	lw $t1, -5760($fp)
	li $t2, 0
	bne $t1, $t2, label659
	j label658
label658:
	li $t0, 1
	sw $t0, -5756($fp)
label659:
	lw $t0, 16($fp)
	sw $t0, -5764($fp)
	lw $t0, -5756($fp)
	lw $t1, -5764($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5768($fp)
	lw $t1, -5752($fp)
	lw $t2, -5768($fp)
	bge $t1, $t2, label656
	j label657
label656:
	li $t0, 1
	sw $t0, -5740($fp)
label657:
	li $t0, 0
	sw $t0, -5772($fp)
	li $t0, 45890
	sw $t0, -5776($fp)
	lw $t1, -5776($fp)
	li $t2, 0
	bne $t1, $t2, label661
	j label660
label660:
	li $t0, 1
	sw $t0, -5772($fp)
label661:
	lw $t1, -5740($fp)
	lw $t2, -5772($fp)
	bgt $t1, $t2, label654
	j label655
label654:
	li $t0, 1
	sw $t0, -5736($fp)
label655:
label662:
	addi $t0, $fp, -4596
	sw $t0, -5780($fp)
	li $t0, 0
	sw $t0, -5784($fp)
	li $t0, 53918
	sw $t0, -5788($fp)
	lw $t1, -5788($fp)
	li $t2, 0
	bne $t1, $t2, label666
	j label665
label665:
	li $t0, 1
	sw $t0, -5784($fp)
label666:
	li $t0, 4
	lw $t1, -5784($fp)
	mul $t0, $t0, $t1
	sw $t0, -5792($fp)
	lw $t0, -5792($fp)
	lw $t1, -5780($fp)
	add $t0, $t0, $t1
	sw $t0, -5796($fp)
	lw $t0, -5796($fp)
	lw $t1, 0($t0)
	sw $t1, -5800($fp)
	li $t0, 0
	sw $t0, -5804($fp)
	li $t0, 39799
	sw $t0, -5808($fp)
	li $t0, 0
	lw $t1, -5808($fp)
	sub $t0, $t0, $t1
	sw $t0, -5812($fp)
	lw $t1, -5812($fp)
	li $t2, 0
	bne $t1, $t2, label667
	j label668
label667:
	li $t0, 1
	sw $t0, -5804($fp)
label668:
	lw $t1, -5800($fp)
	lw $t2, -5804($fp)
	bne $t1, $t2, label663
	j label664
label663:
	li $t0, 0
	sw $t0, -5816($fp)
	lw $t0, -916($fp)
	sw $t0, -5820($fp)
	lw $t1, -5820($fp)
	li $t2, 0
	bne $t1, $t2, label670
	j label669
label669:
	li $t0, 1
	sw $t0, -5816($fp)
label670:
	j label662
label664:
	li $t0, 0
	sw $t0, -5824($fp)
	addi $t0, $fp, -88
	sw $t0, -5828($fp)
	li $t0, 0
	sw $t0, -5832($fp)
	li $t0, 7351
	sw $t0, -5836($fp)
	lw $t1, -5836($fp)
	li $t2, 0
	bne $t1, $t2, label673
	j label675
label675:
	lw $t0, -100($fp)
	sw $t0, -5840($fp)
	lw $t1, -5840($fp)
	li $t2, 0
	bne $t1, $t2, label673
	j label674
label673:
	li $t0, 1
	sw $t0, -5832($fp)
label674:
	li $t0, 4
	lw $t1, -5832($fp)
	mul $t0, $t0, $t1
	sw $t0, -5844($fp)
	lw $t0, -5844($fp)
	lw $t1, -5828($fp)
	add $t0, $t0, $t1
	sw $t0, -5848($fp)
	lw $t0, -5848($fp)
	lw $t1, 0($t0)
	sw $t1, -5852($fp)
	li $t0, 0
	lw $t1, -5852($fp)
	sub $t0, $t0, $t1
	sw $t0, -5856($fp)
	li $t0, 0
	sw $t0, -5860($fp)
	addi $t0, $fp, -76
	sw $t0, -5864($fp)
	lw $t0, 16($fp)
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
	lw $t1, -5880($fp)
	li $t2, 0
	bne $t1, $t2, label677
	j label676
label676:
	li $t0, 1
	sw $t0, -5860($fp)
label677:
	lw $t1, -5856($fp)
	lw $t2, -5860($fp)
	beq $t1, $t2, label671
	j label672
label671:
	li $t0, 1
	sw $t0, -5824($fp)
label672:
	addi $t0, $fp, -92
	sw $t0, -5884($fp)
	li $t0, 0
	sw $t0, -5888($fp)
	li $t0, 4259
	sw $t0, -5892($fp)
	lw $t0, -580($fp)
	sw $t0, -5896($fp)
	lw $t0, -5892($fp)
	lw $t1, -5896($fp)
	sub $t0, $t0, $t1
	sw $t0, -5900($fp)
	lw $t0, -580($fp)
	sw $t0, -5904($fp)
	lw $t1, -5900($fp)
	lw $t2, -5904($fp)
	bne $t1, $t2, label682
	j label683
label682:
	li $t0, 1
	sw $t0, -5888($fp)
label683:
	li $t0, 4
	lw $t1, -5888($fp)
	mul $t0, $t0, $t1
	sw $t0, -5908($fp)
	lw $t0, -5908($fp)
	lw $t1, -5884($fp)
	add $t0, $t0, $t1
	sw $t0, -5912($fp)
	lw $t0, -5912($fp)
	lw $t1, 0($t0)
	sw $t1, -5916($fp)
	lw $t1, -5916($fp)
	li $t2, 0
	bne $t1, $t2, label681
	j label679
label681:
	jal f10
	sw $v0, -5920($fp)
	addi $sp, $sp, 4
	lw $t1, -5920($fp)
	li $t2, 0
	bne $t1, $t2, label678
	j label679
label678:
	li $t0, 0
	sw $t0, -5924($fp)
	li $t0, 47400
	sw $t0, -5928($fp)
	li $t0, 40881
	sw $t0, -5932($fp)
	lw $t0, -484($fp)
	sw $t0, -5936($fp)
	li $t0, 27227
	sw $t0, -5940($fp)
	lw $t0, -5936($fp)
	lw $t1, -5940($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5944($fp)
	lw $t0, -5932($fp)
	lw $t1, -5944($fp)
	sub $t0, $t0, $t1
	sw $t0, -5948($fp)
	lw $t1, -5928($fp)
	lw $t2, -5948($fp)
	blt $t1, $t2, label684
	j label685
label684:
	li $t0, 1
	sw $t0, -5924($fp)
label685:
label679:
	j label651
label653:
	j label646
label648:
	addi $t0, $fp, -56
	sw $t0, -5952($fp)
	lw $t0, -5112($fp)
	sw $t0, -5956($fp)
	lw $t0, -5136($fp)
	sw $t0, -5960($fp)
	lw $t0, -5956($fp)
	lw $t1, -5960($fp)
	sub $t0, $t0, $t1
	sw $t0, -5964($fp)
	li $t0, 4
	lw $t1, -5964($fp)
	mul $t0, $t0, $t1
	sw $t0, -5968($fp)
	lw $t0, -5968($fp)
	lw $t1, -5952($fp)
	add $t0, $t0, $t1
	sw $t0, -5972($fp)
	lw $t0, -5972($fp)
	lw $t1, 0($t0)
	sw $t1, -5976($fp)
	lw $t0, -5100($fp)
	sw $t0, -5980($fp)
	lw $t0, -5976($fp)
	lw $t1, -5980($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5984($fp)
	lw $t1, -5984($fp)
	li $t2, 0
	bne $t1, $t2, label689
	j label687
label689:
	lw $t0, -5112($fp)
	sw $t0, -5988($fp)
	lw $t1, -5988($fp)
	li $t2, 0
	bne $t1, $t2, label686
	j label687
label686:
	li $t0, 0
	sw $t0, -5992($fp)
	li $t0, 31332
	sw $t0, -5996($fp)
	lw $t1, -5996($fp)
	li $t2, 0
	bne $t1, $t2, label692
	j label693
label693:
	li $t0, 0
	sw $t0, -6000($fp)
	li $t0, 40802
	sw $t0, -6004($fp)
	lw $t0, -532($fp)
	sw $t0, -6008($fp)
	lw $t1, -6004($fp)
	lw $t2, -6008($fp)
	ble $t1, $t2, label694
	j label695
label694:
	li $t0, 1
	sw $t0, -6000($fp)
label695:
	li $t0, 54025
	sw $t0, -6012($fp)
	lw $t1, -6000($fp)
	lw $t2, -6012($fp)
	bge $t1, $t2, label690
	j label692
label692:
	jal f9
	sw $v0, -6016($fp)
	addi $sp, $sp, 4
	lw $t1, -6016($fp)
	li $t2, 0
	bne $t1, $t2, label690
	j label691
label690:
	li $t0, 1
	sw $t0, -5992($fp)
label691:
	j label688
label687:
	lw $t0, -592($fp)
	sw $t0, -6020($fp)
	li $t0, 0
	sw $t0, -6024($fp)
	li $t0, 0
	sw $t0, -6028($fp)
	lw $t0, 16($fp)
	sw $t0, -6032($fp)
	li $t0, 16531
	sw $t0, -6036($fp)
	lw $t1, -6032($fp)
	lw $t2, -6036($fp)
	bgt $t1, $t2, label698
	j label700
label700:
	lw $t0, 16($fp)
	sw $t0, -6040($fp)
	lw $t1, -6040($fp)
	li $t2, 0
	bne $t1, $t2, label698
	j label699
label698:
	li $t0, 1
	sw $t0, -6028($fp)
label699:
	addi $t0, $fp, -52
	sw $t0, -6044($fp)
	li $t0, 8
	sw $t0, -6048($fp)
	li $t0, 4
	lw $t1, -6048($fp)
	mul $t0, $t0, $t1
	sw $t0, -6052($fp)
	lw $t0, -6052($fp)
	lw $t1, -6044($fp)
	add $t0, $t0, $t1
	sw $t0, -6056($fp)
	lw $t0, -6056($fp)
	lw $t1, 0($t0)
	sw $t1, -6060($fp)
	li $t0, 0
	sw $t0, -6064($fp)
	li $t0, 62918
	sw $t0, -6068($fp)
	lw $t0, -604($fp)
	sw $t0, -6072($fp)
	lw $t1, -6068($fp)
	lw $t2, -6072($fp)
	beq $t1, $t2, label701
	j label703
label703:
	li $t0, 42518
	sw $t0, -6076($fp)
	lw $t1, -6076($fp)
	li $t2, 0
	bne $t1, $t2, label701
	j label702
label701:
	li $t0, 1
	sw $t0, -6064($fp)
label702:
	addi $sp, $sp, -4
	lw $t0, -6028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6064($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6080($fp)
	addi $sp, $sp, 16
	lw $t1, -6080($fp)
	li $t2, 0
	bne $t1, $t2, label697
	j label696
label696:
	li $t0, 1
	sw $t0, -6024($fp)
label697:
	lw $t0, -6020($fp)
	lw $t1, -6024($fp)
	mul $t0, $t0, $t1
	sw $t0, -6084($fp)
	lw $ra, -4($fp)
	lw $v0, -6084($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label688:
label704:
	jal f9
	sw $v0, -6088($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -52
	sw $t0, -6092($fp)
	li $t0, 0
	sw $t0, -6096($fp)
	lw $t0, -508($fp)
	sw $t0, -6100($fp)
	lw $t1, -6100($fp)
	li $t2, 0
	bne $t1, $t2, label708
	j label707
label707:
	li $t0, 1
	sw $t0, -6096($fp)
label708:
	li $t0, 4
	lw $t1, -6096($fp)
	mul $t0, $t0, $t1
	sw $t0, -6104($fp)
	lw $t0, -6104($fp)
	lw $t1, -6092($fp)
	add $t0, $t0, $t1
	sw $t0, -6108($fp)
	lw $t0, -6108($fp)
	lw $t1, 0($t0)
	sw $t1, -6112($fp)
	lw $t0, -6088($fp)
	lw $t1, -6112($fp)
	sub $t0, $t0, $t1
	sw $t0, -6116($fp)
	lw $t1, -6116($fp)
	li $t2, 0
	bne $t1, $t2, label705
	j label706
label705:
label709:
	lw $t0, -508($fp)
	sw $t0, -6120($fp)
	lw $t1, -6120($fp)
	li $t2, 0
	bne $t1, $t2, label710
	j label711
label710:
	lw $t0, -4880($fp)
	sw $t0, -6124($fp)
	j label709
label711:
	j label704
label706:
	lw $t0, -100($fp)
	sw $t0, -6128($fp)
	lw $t0, -6128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -6132($fp)
	li $t0, 0
	sw $t0, -6136($fp)
	li $t0, 4
	lw $t1, -6136($fp)
	mul $t0, $t0, $t1
	sw $t0, -6140($fp)
	lw $t0, -6140($fp)
	lw $t1, -6132($fp)
	add $t0, $t0, $t1
	sw $t0, -6144($fp)
	lw $t0, -6144($fp)
	lw $t1, 0($t0)
	sw $t1, -6148($fp)
	lw $t0, -6148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -6152($fp)
	li $t0, 1
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
	lw $t0, -6168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -6172($fp)
	li $t0, 2
	sw $t0, -6176($fp)
	li $t0, 4
	lw $t1, -6176($fp)
	mul $t0, $t0, $t1
	sw $t0, -6180($fp)
	lw $t0, -6180($fp)
	lw $t1, -6172($fp)
	add $t0, $t0, $t1
	sw $t0, -6184($fp)
	lw $t0, -6184($fp)
	lw $t1, 0($t0)
	sw $t1, -6188($fp)
	lw $t0, -6188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
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
	addi $t0, $fp, -52
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
	addi $t0, $fp, -52
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
	addi $t0, $fp, -52
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
	addi $t0, $fp, -52
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
	addi $t0, $fp, -52
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
	addi $t0, $fp, -52
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
	addi $t0, $fp, -52
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
	addi $t0, $fp, -52
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
	lw $t0, -400($fp)
	sw $t0, -6372($fp)
	lw $t0, -6372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -412($fp)
	sw $t0, -6376($fp)
	lw $t0, -6376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -424($fp)
	sw $t0, -6380($fp)
	lw $t0, -6380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -436($fp)
	sw $t0, -6384($fp)
	lw $t0, -6384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -448($fp)
	sw $t0, -6388($fp)
	lw $t0, -6388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -460($fp)
	sw $t0, -6392($fp)
	lw $t0, -6392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -472($fp)
	sw $t0, -6396($fp)
	lw $t0, -6396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -484($fp)
	sw $t0, -6400($fp)
	lw $t0, -6400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -496($fp)
	sw $t0, -6404($fp)
	lw $t0, -6404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -508($fp)
	sw $t0, -6408($fp)
	lw $t0, -6408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -520($fp)
	sw $t0, -6412($fp)
	lw $t0, -6412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -532($fp)
	sw $t0, -6416($fp)
	lw $t0, -6416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -544($fp)
	sw $t0, -6420($fp)
	lw $t0, -6420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -556($fp)
	sw $t0, -6424($fp)
	lw $t0, -6424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -568($fp)
	sw $t0, -6428($fp)
	lw $t0, -6428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -580($fp)
	sw $t0, -6432($fp)
	lw $t0, -6432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -592($fp)
	sw $t0, -6436($fp)
	lw $t0, -6436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -604($fp)
	sw $t0, -6440($fp)
	lw $t0, -6440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -6444($fp)
	li $t0, 0
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
	lw $t0, -6460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -6464($fp)
	li $t0, 0
	sw $t0, -6468($fp)
	li $t0, 4
	lw $t1, -6468($fp)
	mul $t0, $t0, $t1
	sw $t0, -6472($fp)
	lw $t0, -6472($fp)
	lw $t1, -6464($fp)
	add $t0, $t0, $t1
	sw $t0, -6476($fp)
	lw $t0, -6476($fp)
	lw $t1, 0($t0)
	sw $t1, -6480($fp)
	lw $t0, -6480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -6484($fp)
	li $t0, 1
	sw $t0, -6488($fp)
	li $t0, 4
	lw $t1, -6488($fp)
	mul $t0, $t0, $t1
	sw $t0, -6492($fp)
	lw $t0, -6492($fp)
	lw $t1, -6484($fp)
	add $t0, $t0, $t1
	sw $t0, -6496($fp)
	lw $t0, -6496($fp)
	lw $t1, 0($t0)
	sw $t1, -6500($fp)
	lw $t0, -6500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -6504($fp)
	li $t0, 2
	sw $t0, -6508($fp)
	li $t0, 4
	lw $t1, -6508($fp)
	mul $t0, $t0, $t1
	sw $t0, -6512($fp)
	lw $t0, -6512($fp)
	lw $t1, -6504($fp)
	add $t0, $t0, $t1
	sw $t0, -6516($fp)
	lw $t0, -6516($fp)
	lw $t1, 0($t0)
	sw $t1, -6520($fp)
	lw $t0, -6520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -6524($fp)
	li $t0, 3
	sw $t0, -6528($fp)
	li $t0, 4
	lw $t1, -6528($fp)
	mul $t0, $t0, $t1
	sw $t0, -6532($fp)
	lw $t0, -6532($fp)
	lw $t1, -6524($fp)
	add $t0, $t0, $t1
	sw $t0, -6536($fp)
	lw $t0, -6536($fp)
	lw $t1, 0($t0)
	sw $t1, -6540($fp)
	lw $t0, -6540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -6544($fp)
	li $t0, 4
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
	addi $t0, $fp, -88
	sw $t0, -6564($fp)
	li $t0, 0
	sw $t0, -6568($fp)
	li $t0, 4
	lw $t1, -6568($fp)
	mul $t0, $t0, $t1
	sw $t0, -6572($fp)
	lw $t0, -6572($fp)
	lw $t1, -6564($fp)
	add $t0, $t0, $t1
	sw $t0, -6576($fp)
	lw $t0, -6576($fp)
	lw $t1, 0($t0)
	sw $t1, -6580($fp)
	lw $t0, -6580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -6584($fp)
	li $t0, 1
	sw $t0, -6588($fp)
	li $t0, 4
	lw $t1, -6588($fp)
	mul $t0, $t0, $t1
	sw $t0, -6592($fp)
	lw $t0, -6592($fp)
	lw $t1, -6584($fp)
	add $t0, $t0, $t1
	sw $t0, -6596($fp)
	lw $t0, -6596($fp)
	lw $t1, 0($t0)
	sw $t1, -6600($fp)
	lw $t0, -6600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -6604($fp)
	li $t0, 2
	sw $t0, -6608($fp)
	li $t0, 4
	lw $t1, -6608($fp)
	mul $t0, $t0, $t1
	sw $t0, -6612($fp)
	lw $t0, -6612($fp)
	lw $t1, -6604($fp)
	add $t0, $t0, $t1
	sw $t0, -6616($fp)
	lw $t0, -6616($fp)
	lw $t1, 0($t0)
	sw $t1, -6620($fp)
	lw $t0, -6620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -832($fp)
	sw $t0, -6624($fp)
	lw $t0, -6624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -844($fp)
	sw $t0, -6628($fp)
	lw $t0, -6628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -856($fp)
	sw $t0, -6632($fp)
	lw $t0, -6632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -6636($fp)
	li $t0, 0
	sw $t0, -6640($fp)
	li $t0, 4
	lw $t1, -6640($fp)
	mul $t0, $t0, $t1
	sw $t0, -6644($fp)
	lw $t0, -6644($fp)
	lw $t1, -6636($fp)
	add $t0, $t0, $t1
	sw $t0, -6648($fp)
	lw $t0, -6648($fp)
	lw $t1, 0($t0)
	sw $t1, -6652($fp)
	lw $t0, -6652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -892($fp)
	sw $t0, -6656($fp)
	lw $t0, -6656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -904($fp)
	sw $t0, -6660($fp)
	lw $t0, -6660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -916($fp)
	sw $t0, -6664($fp)
	lw $t0, -6664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -6668($fp)
	li $t0, 0
	sw $t0, -6672($fp)
	li $t0, 50886
	sw $t0, -6676($fp)
	lw $t1, -6676($fp)
	li $t2, 0
	bne $t1, $t2, label712
	j label714
label714:
	lw $t0, -856($fp)
	sw $t0, -6680($fp)
	lw $t1, -6680($fp)
	li $t2, 0
	bne $t1, $t2, label712
	j label713
label712:
	li $t0, 1
	sw $t0, -6672($fp)
label713:
	li $t0, 4
	lw $t1, -6672($fp)
	mul $t0, $t0, $t1
	sw $t0, -6684($fp)
	lw $t0, -6684($fp)
	lw $t1, -6668($fp)
	add $t0, $t0, $t1
	sw $t0, -6688($fp)
	lw $t0, -6688($fp)
	lw $t1, 0($t0)
	sw $t1, -6692($fp)
	addi $t0, $fp, -88
	sw $t0, -6696($fp)
	li $t0, 1
	sw $t0, -6700($fp)
	li $t0, 4
	lw $t1, -6700($fp)
	mul $t0, $t0, $t1
	sw $t0, -6704($fp)
	lw $t0, -6704($fp)
	lw $t1, -6696($fp)
	add $t0, $t0, $t1
	sw $t0, -6708($fp)
	lw $t0, -6708($fp)
	lw $t1, 0($t0)
	sw $t1, -6712($fp)
	li $t0, 0
	sw $t0, -6716($fp)
	lw $t0, -556($fp)
	sw $t0, -6720($fp)
	li $t0, 0
	lw $t1, -6720($fp)
	sub $t0, $t0, $t1
	sw $t0, -6724($fp)
	li $t0, 0
	lw $t1, -6724($fp)
	sub $t0, $t0, $t1
	sw $t0, -6728($fp)
	li $t0, 0
	sw $t0, -6732($fp)
	li $t0, 6253
	sw $t0, -6736($fp)
	li $t0, 45406
	sw $t0, -6740($fp)
	lw $t0, -6736($fp)
	lw $t1, -6740($fp)
	sub $t0, $t0, $t1
	sw $t0, -6744($fp)
	lw $t0, -856($fp)
	sw $t0, -6748($fp)
	lw $t1, -6744($fp)
	lw $t2, -6748($fp)
	beq $t1, $t2, label717
	j label718
label717:
	li $t0, 1
	sw $t0, -6732($fp)
label718:
	li $t0, 0
	sw $t0, -6752($fp)
	li $t0, 0
	sw $t0, -6756($fp)
	lw $t0, -436($fp)
	sw $t0, -6760($fp)
	lw $t0, -580($fp)
	sw $t0, -6764($fp)
	lw $t0, -6760($fp)
	lw $t1, -6764($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6768($fp)
	lw $t1, -6768($fp)
	li $t2, 0
	bne $t1, $t2, label721
	j label723
label723:
	lw $t0, -508($fp)
	sw $t0, -6772($fp)
	lw $t1, -6772($fp)
	li $t2, 0
	bne $t1, $t2, label721
	j label722
label721:
	li $t0, 1
	sw $t0, -6756($fp)
label722:
	li $t0, 65052
	sw $t0, -6776($fp)
	li $t0, 14251
	sw $t0, -6780($fp)
	lw $t0, -6776($fp)
	lw $t1, -6780($fp)
	mul $t0, $t0, $t1
	sw $t0, -6784($fp)
	lw $t0, 16($fp)
	sw $t0, -6788($fp)
	lw $t0, -6784($fp)
	lw $t1, -6788($fp)
	sub $t0, $t0, $t1
	sw $t0, -6792($fp)
	li $t0, 0
	sw $t0, -6796($fp)
	lw $t0, -520($fp)
	sw $t0, -6800($fp)
	lw $t0, -556($fp)
	sw $t0, -6804($fp)
	lw $t1, -6800($fp)
	lw $t2, -6804($fp)
	beq $t1, $t2, label724
	j label726
label726:
	li $t0, 55128
	sw $t0, -6808($fp)
	lw $t1, -6808($fp)
	li $t2, 0
	bne $t1, $t2, label724
	j label725
label724:
	li $t0, 1
	sw $t0, -6796($fp)
label725:
	lw $t0, -496($fp)
	sw $t0, -6812($fp)
	li $t0, 0
	lw $t1, -6812($fp)
	sub $t0, $t0, $t1
	sw $t0, -6816($fp)
	lw $t0, -604($fp)
	sw $t0, -6820($fp)
	lw $t0, -6816($fp)
	lw $t1, -6820($fp)
	add $t0, $t0, $t1
	sw $t0, -6824($fp)
	li $t0, 0
	sw $t0, -6828($fp)
	lw $t0, -556($fp)
	sw $t0, -6832($fp)
	li $t0, 0
	lw $t1, -6832($fp)
	sub $t0, $t0, $t1
	sw $t0, -6836($fp)
	lw $t1, -6836($fp)
	li $t2, 0
	bne $t1, $t2, label727
	j label729
label729:
	li $t0, 8360
	sw $t0, -6840($fp)
	lw $t1, -6840($fp)
	li $t2, 0
	bne $t1, $t2, label727
	j label728
label727:
	li $t0, 1
	sw $t0, -6828($fp)
label728:
	lw $t0, 12($fp)
	sw $t0, -6844($fp)
	li $t0, 40076
	sw $t0, -6848($fp)
	lw $t0, -6844($fp)
	lw $t1, -6848($fp)
	mul $t0, $t0, $t1
	sw $t0, -6852($fp)
	li $t0, 0
	lw $t1, -6852($fp)
	sub $t0, $t0, $t1
	sw $t0, -6856($fp)
	li $t0, 0
	sw $t0, -6860($fp)
	li $t0, 23028
	sw $t0, -6864($fp)
	li $t0, 0
	lw $t1, -6864($fp)
	sub $t0, $t0, $t1
	sw $t0, -6868($fp)
	lw $t1, -6868($fp)
	li $t2, 0
	bne $t1, $t2, label730
	j label732
label732:
	lw $t0, -904($fp)
	sw $t0, -6872($fp)
	lw $t1, -6872($fp)
	li $t2, 0
	bne $t1, $t2, label730
	j label731
label730:
	li $t0, 1
	sw $t0, -6860($fp)
label731:
	addi $sp, $sp, -4
	lw $t0, -6796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6860($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6876($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -6880($fp)
	lw $t0, -904($fp)
	sw $t0, -6884($fp)
	li $t0, 0
	lw $t1, -6884($fp)
	sub $t0, $t0, $t1
	sw $t0, -6888($fp)
	lw $t1, -6888($fp)
	li $t2, 0
	bne $t1, $t2, label734
	j label733
label733:
	li $t0, 1
	sw $t0, -6880($fp)
label734:
	li $t0, 0
	sw $t0, -6892($fp)
	li $t0, 40782
	sw $t0, -6896($fp)
	li $t0, 32945
	sw $t0, -6900($fp)
	lw $t0, -6896($fp)
	lw $t1, -6900($fp)
	add $t0, $t0, $t1
	sw $t0, -6904($fp)
	lw $t1, -6904($fp)
	li $t2, 0
	bne $t1, $t2, label735
	j label737
label737:
	lw $t0, -424($fp)
	sw $t0, -6908($fp)
	lw $t1, -6908($fp)
	li $t2, 0
	bne $t1, $t2, label735
	j label736
label735:
	li $t0, 1
	sw $t0, -6892($fp)
label736:
	addi $sp, $sp, -4
	lw $t0, -6756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6892($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6912($fp)
	addi $sp, $sp, 24
	lw $t1, -6912($fp)
	li $t2, 0
	bne $t1, $t2, label720
	j label719
label719:
	li $t0, 1
	sw $t0, -6752($fp)
label720:
	li $t0, 23434
	sw $t0, -6916($fp)
	lw $t0, -6916($fp)
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -6920($fp)
	li $t0, 0
	sw $t0, -6924($fp)
	li $t0, 31824
	sw $t0, -6928($fp)
	lw $t1, -6928($fp)
	li $t2, 0
	bne $t1, $t2, label739
	j label738
label738:
	li $t0, 1
	sw $t0, -6924($fp)
label739:
	li $t0, 0
	sw $t0, -6932($fp)
	li $t0, 17330
	sw $t0, -6936($fp)
	lw $t0, -544($fp)
	sw $t0, -6940($fp)
	lw $t1, -6936($fp)
	lw $t2, -6940($fp)
	blt $t1, $t2, label740
	j label741
label740:
	li $t0, 1
	sw $t0, -6932($fp)
label741:
	addi $sp, $sp, -4
	lw $t0, -6752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6932($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -6944($fp)
	addi $sp, $sp, 20
	lw $t0, -844($fp)
	sw $t0, -6948($fp)
	lw $t0, -6944($fp)
	lw $t1, -6948($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6952($fp)
	addi $sp, $sp, -4
	lw $t0, -6732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6952($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6956($fp)
	addi $sp, $sp, 12
	lw $t0, 4($fp)
	sw $t0, -6960($fp)
	lw $t0, -6956($fp)
	lw $t1, -6960($fp)
	mul $t0, $t0, $t1
	sw $t0, -6964($fp)
	addi $sp, $sp, -4
	lw $t0, -6728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6964($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6968($fp)
	addi $sp, $sp, 12
	lw $t1, -6968($fp)
	li $t2, 0
	bne $t1, $t2, label715
	j label716
label715:
	li $t0, 1
	sw $t0, -6716($fp)
label716:
	lw $t0, -6712($fp)
	lw $t1, -6716($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6972($fp)
	li $t0, 0
	lw $t1, -6972($fp)
	sub $t0, $t0, $t1
	sw $t0, -6976($fp)
	lw $t0, -6692($fp)
	lw $t1, -6976($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6980($fp)
	lw $ra, -4($fp)
	lw $v0, -6980($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -8
	jal f9
	sw $v0, -8($fp)
	addi $sp, $sp, 4
	li $t0, 2633
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
	jal f13
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
