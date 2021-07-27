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
	addi $sp, $sp, -1216
	li $t0, 3836
	sw $t0, -64($fp)
	addi $t0, $fp, -36
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
	li $t0, 22308
	sw $t0, -88($fp)
	addi $t0, $fp, -36
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
	li $t0, 35412
	sw $t0, -112($fp)
	addi $t0, $fp, -36
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
	li $t0, 49970
	sw $t0, -136($fp)
	addi $t0, $fp, -36
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
	li $t0, 59116
	sw $t0, -160($fp)
	addi $t0, $fp, -36
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
	li $t0, 39751
	sw $t0, -184($fp)
	addi $t0, $fp, -36
	sw $t0, -188($fp)
	li $t0, 5
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
	li $t0, 18556
	sw $t0, -208($fp)
	addi $t0, $fp, -36
	sw $t0, -212($fp)
	li $t0, 6
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
	li $t0, 10532
	sw $t0, -232($fp)
	addi $t0, $fp, -36
	sw $t0, -236($fp)
	li $t0, 7
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
	li $t0, 20941
	sw $t0, -256($fp)
	addi $t0, $fp, -60
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
	li $t0, 58891
	sw $t0, -280($fp)
	addi $t0, $fp, -60
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
	li $t0, 37765
	sw $t0, -304($fp)
	addi $t0, $fp, -60
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
	li $t0, 14439
	sw $t0, -328($fp)
	addi $t0, $fp, -60
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
	li $t0, 64841
	sw $t0, -352($fp)
	addi $t0, $fp, -60
	sw $t0, -356($fp)
	li $t0, 4
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
	li $t0, 32106
	sw $t0, -376($fp)
	addi $t0, $fp, -60
	sw $t0, -380($fp)
	li $t0, 5
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
	li $t0, 41604
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	addi $t0, $fp, -36
	sw $t0, -412($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -432($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -452($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -472($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -492($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -512($fp)
	li $t0, 5
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
	addi $t0, $fp, -36
	sw $t0, -532($fp)
	li $t0, 6
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
	addi $t0, $fp, -36
	sw $t0, -552($fp)
	li $t0, 7
	sw $t0, -556($fp)
	li $t0, 4
	lw $t1, -556($fp)
	mul $t0, $t0, $t1
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	lw $t1, -552($fp)
	add $t0, $t0, $t1
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	lw $t1, 0($t0)
	sw $t1, -568($fp)
	lw $t0, -568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -572($fp)
	li $t0, 0
	sw $t0, -576($fp)
	li $t0, 4
	lw $t1, -576($fp)
	mul $t0, $t0, $t1
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	lw $t1, -572($fp)
	add $t0, $t0, $t1
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	lw $t1, 0($t0)
	sw $t1, -588($fp)
	lw $t0, -588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -592($fp)
	li $t0, 1
	sw $t0, -596($fp)
	li $t0, 4
	lw $t1, -596($fp)
	mul $t0, $t0, $t1
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	lw $t1, -592($fp)
	add $t0, $t0, $t1
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	lw $t1, 0($t0)
	sw $t1, -608($fp)
	lw $t0, -608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -612($fp)
	li $t0, 2
	sw $t0, -616($fp)
	li $t0, 4
	lw $t1, -616($fp)
	mul $t0, $t0, $t1
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	lw $t1, -612($fp)
	add $t0, $t0, $t1
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	lw $t1, 0($t0)
	sw $t1, -628($fp)
	lw $t0, -628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -632($fp)
	li $t0, 3
	sw $t0, -636($fp)
	li $t0, 4
	lw $t1, -636($fp)
	mul $t0, $t0, $t1
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	lw $t1, -632($fp)
	add $t0, $t0, $t1
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	lw $t1, 0($t0)
	sw $t1, -648($fp)
	lw $t0, -648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -652($fp)
	li $t0, 4
	sw $t0, -656($fp)
	li $t0, 4
	lw $t1, -656($fp)
	mul $t0, $t0, $t1
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	lw $t1, -652($fp)
	add $t0, $t0, $t1
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	lw $t1, 0($t0)
	sw $t1, -668($fp)
	lw $t0, -668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -672($fp)
	li $t0, 5
	sw $t0, -676($fp)
	li $t0, 4
	lw $t1, -676($fp)
	mul $t0, $t0, $t1
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	lw $t1, -672($fp)
	add $t0, $t0, $t1
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	lw $t1, 0($t0)
	sw $t1, -688($fp)
	lw $t0, -688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -404($fp)
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -696($fp)
	jal f6
	sw $v0, -700($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -704($fp)
	li $t0, 16413
	sw $t0, -708($fp)
	lw $t1, -708($fp)
	li $t2, 0
	bne $t1, $t2, label124
	j label123
label123:
	li $t0, 1
	sw $t0, -704($fp)
label124:
	lw $t0, -700($fp)
	lw $t1, -704($fp)
	mul $t0, $t0, $t1
	sw $t0, -712($fp)
	li $t0, 10284
	sw $t0, -716($fp)
	li $t0, 56927
	sw $t0, -720($fp)
	lw $t0, -716($fp)
	lw $t1, -720($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -724($fp)
	lw $t0, -712($fp)
	lw $t1, -724($fp)
	add $t0, $t0, $t1
	sw $t0, -728($fp)
	li $t0, 10587
	sw $t0, -732($fp)
	lw $t1, -728($fp)
	lw $t2, -732($fp)
	blt $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -696($fp)
label122:
	lw $ra, -4($fp)
	lw $v0, -696($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -736($fp)
	addi $t0, $fp, -36
	sw $t0, -740($fp)
	lw $t0, -404($fp)
	sw $t0, -744($fp)
	li $t0, 4
	lw $t1, -744($fp)
	mul $t0, $t0, $t1
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	lw $t1, -740($fp)
	add $t0, $t0, $t1
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	lw $t1, 0($t0)
	sw $t1, -756($fp)
	li $t0, 15610
	sw $t0, -760($fp)
	lw $t0, -756($fp)
	lw $t1, -760($fp)
	mul $t0, $t0, $t1
	sw $t0, -764($fp)
	li $t0, 0
	sw $t0, -768($fp)
	li $t0, 62089
	sw $t0, -772($fp)
	lw $t1, -772($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label127
label127:
	li $t0, 1
	sw $t0, -768($fp)
label128:
	lw $t0, -764($fp)
	lw $t1, -768($fp)
	mul $t0, $t0, $t1
	sw $t0, -776($fp)
	li $t0, 35960
	sw $t0, -780($fp)
	lw $t0, -776($fp)
	lw $t1, -780($fp)
	mul $t0, $t0, $t1
	sw $t0, -784($fp)
	li $t0, 0
	sw $t0, -788($fp)
	jal f6
	sw $v0, -792($fp)
	addi $sp, $sp, 4
	lw $t1, -792($fp)
	li $t2, 0
	bne $t1, $t2, label130
	j label129
label129:
	li $t0, 1
	sw $t0, -788($fp)
label130:
	li $t0, 5950
	sw $t0, -796($fp)
	li $t0, 25994
	sw $t0, -800($fp)
	lw $t0, -796($fp)
	lw $t1, -800($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -804($fp)
	lw $t0, -788($fp)
	lw $t1, -804($fp)
	sub $t0, $t0, $t1
	sw $t0, -808($fp)
	lw $t1, -784($fp)
	lw $t2, -808($fp)
	bne $t1, $t2, label125
	j label126
label125:
	li $t0, 1
	sw $t0, -736($fp)
label126:
	li $t0, 0
	sw $t0, -812($fp)
	li $t0, 0
	sw $t0, -816($fp)
	li $t0, 25509
	sw $t0, -820($fp)
	li $t0, 0
	lw $t1, -820($fp)
	sub $t0, $t0, $t1
	sw $t0, -824($fp)
	li $t0, 0
	sw $t0, -828($fp)
	li $t0, 25047
	sw $t0, -832($fp)
	li $t0, 29551
	sw $t0, -836($fp)
	lw $t1, -832($fp)
	lw $t2, -836($fp)
	blt $t1, $t2, label138
	j label139
label138:
	li $t0, 1
	sw $t0, -828($fp)
label139:
	lw $t1, -824($fp)
	lw $t2, -828($fp)
	beq $t1, $t2, label136
	j label137
label136:
	li $t0, 1
	sw $t0, -816($fp)
label137:
	li $t0, 0
	sw $t0, -840($fp)
	li $t0, 0
	sw $t0, -844($fp)
	li $t0, 46510
	sw $t0, -848($fp)
	li $t0, 63191
	sw $t0, -852($fp)
	lw $t1, -848($fp)
	lw $t2, -852($fp)
	bgt $t1, $t2, label142
	j label143
label142:
	li $t0, 1
	sw $t0, -844($fp)
label143:
	li $t0, 36584
	sw $t0, -856($fp)
	lw $t1, -844($fp)
	lw $t2, -856($fp)
	bgt $t1, $t2, label140
	j label141
label140:
	li $t0, 1
	sw $t0, -840($fp)
label141:
	lw $t1, -816($fp)
	lw $t2, -840($fp)
	beq $t1, $t2, label134
	j label135
label134:
	li $t0, 1
	sw $t0, -812($fp)
label135:
	li $t0, 0
	sw $t0, -860($fp)
	addi $t0, $fp, -60
	sw $t0, -864($fp)
	lw $t0, -404($fp)
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
	lw $t0, -404($fp)
	sw $t0, -884($fp)
	li $t0, 0
	lw $t1, -884($fp)
	sub $t0, $t0, $t1
	sw $t0, -888($fp)
	lw $t1, -880($fp)
	lw $t2, -888($fp)
	bgt $t1, $t2, label144
	j label145
label144:
	li $t0, 1
	sw $t0, -860($fp)
label145:
	lw $t1, -812($fp)
	lw $t2, -860($fp)
	bne $t1, $t2, label131
	j label132
label131:
	jal f6
	sw $v0, -892($fp)
	addi $sp, $sp, 4
	j label133
label132:
	li $t0, 0
	sw $t0, -896($fp)
	jal f6
	sw $v0, -900($fp)
	addi $sp, $sp, 4
	li $t0, 36002
	sw $t0, -904($fp)
	li $t0, 0
	lw $t1, -904($fp)
	sub $t0, $t0, $t1
	sw $t0, -908($fp)
	lw $t0, -900($fp)
	lw $t1, -908($fp)
	mul $t0, $t0, $t1
	sw $t0, -912($fp)
	li $t0, 0
	sw $t0, -916($fp)
	jal f6
	sw $v0, -920($fp)
	addi $sp, $sp, 4
	lw $t1, -920($fp)
	li $t2, 0
	bne $t1, $t2, label149
	j label148
label148:
	li $t0, 1
	sw $t0, -916($fp)
label149:
	lw $t1, -912($fp)
	lw $t2, -916($fp)
	ble $t1, $t2, label146
	j label147
label146:
	li $t0, 1
	sw $t0, -896($fp)
label147:
label133:
	addi $t0, $fp, -36
	sw $t0, -924($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -944($fp)
	li $t0, 1
	sw $t0, -948($fp)
	li $t0, 4
	lw $t1, -948($fp)
	mul $t0, $t0, $t1
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	lw $t1, -944($fp)
	add $t0, $t0, $t1
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	lw $t1, 0($t0)
	sw $t1, -960($fp)
	lw $t0, -960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -964($fp)
	li $t0, 2
	sw $t0, -968($fp)
	li $t0, 4
	lw $t1, -968($fp)
	mul $t0, $t0, $t1
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	lw $t1, -964($fp)
	add $t0, $t0, $t1
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	lw $t1, 0($t0)
	sw $t1, -980($fp)
	lw $t0, -980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -984($fp)
	li $t0, 3
	sw $t0, -988($fp)
	li $t0, 4
	lw $t1, -988($fp)
	mul $t0, $t0, $t1
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	lw $t1, -984($fp)
	add $t0, $t0, $t1
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	lw $t1, 0($t0)
	sw $t1, -1000($fp)
	lw $t0, -1000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1004($fp)
	li $t0, 4
	sw $t0, -1008($fp)
	li $t0, 4
	lw $t1, -1008($fp)
	mul $t0, $t0, $t1
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	lw $t1, -1004($fp)
	add $t0, $t0, $t1
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	lw $t1, 0($t0)
	sw $t1, -1020($fp)
	lw $t0, -1020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1024($fp)
	li $t0, 5
	sw $t0, -1028($fp)
	li $t0, 4
	lw $t1, -1028($fp)
	mul $t0, $t0, $t1
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	lw $t1, -1024($fp)
	add $t0, $t0, $t1
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	lw $t1, 0($t0)
	sw $t1, -1040($fp)
	lw $t0, -1040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1044($fp)
	li $t0, 6
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
	lw $t0, -1060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1064($fp)
	li $t0, 7
	sw $t0, -1068($fp)
	li $t0, 4
	lw $t1, -1068($fp)
	mul $t0, $t0, $t1
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	lw $t1, -1064($fp)
	add $t0, $t0, $t1
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	lw $t1, 0($t0)
	sw $t1, -1080($fp)
	lw $t0, -1080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1084($fp)
	li $t0, 0
	sw $t0, -1088($fp)
	li $t0, 4
	lw $t1, -1088($fp)
	mul $t0, $t0, $t1
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	lw $t1, -1084($fp)
	add $t0, $t0, $t1
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	lw $t1, 0($t0)
	sw $t1, -1100($fp)
	lw $t0, -1100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1104($fp)
	li $t0, 1
	sw $t0, -1108($fp)
	li $t0, 4
	lw $t1, -1108($fp)
	mul $t0, $t0, $t1
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	lw $t1, -1104($fp)
	add $t0, $t0, $t1
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	lw $t1, 0($t0)
	sw $t1, -1120($fp)
	lw $t0, -1120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1124($fp)
	li $t0, 2
	sw $t0, -1128($fp)
	li $t0, 4
	lw $t1, -1128($fp)
	mul $t0, $t0, $t1
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	lw $t1, -1124($fp)
	add $t0, $t0, $t1
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	lw $t1, 0($t0)
	sw $t1, -1140($fp)
	lw $t0, -1140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1144($fp)
	li $t0, 3
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
	addi $t0, $fp, -60
	sw $t0, -1164($fp)
	li $t0, 4
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
	addi $t0, $fp, -60
	sw $t0, -1184($fp)
	li $t0, 5
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
	lw $t0, -404($fp)
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1208($fp)
	jal f6
	sw $v0, -1212($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -1212($fp)
	sub $t0, $t0, $t1
	sw $t0, -1216($fp)
	lw $t1, -1216($fp)
	li $t2, 0
	bne $t1, $t2, label151
	j label150
label150:
	li $t0, 1
	sw $t0, -1208($fp)
label151:
	lw $t0, -1208($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -1220($fp)
	lw $ra, -4($fp)
	lw $v0, -1220($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2388
	li $t0, 1491
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	li $t0, 58893
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	li $t0, 5879
	sw $t0, -80($fp)
	addi $t0, $fp, -16
	sw $t0, -84($fp)
	li $t0, 0
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
	li $t0, 51462
	sw $t0, -104($fp)
	addi $t0, $fp, -16
	sw $t0, -108($fp)
	li $t0, 1
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
	li $t0, 52473
	sw $t0, -128($fp)
	addi $t0, $fp, -16
	sw $t0, -132($fp)
	li $t0, 2
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
	li $t0, 45630
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	li $t0, 4482
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	li $t0, 63005
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	li $t0, 1035
	sw $t0, -188($fp)
	addi $t0, $fp, -24
	sw $t0, -192($fp)
	li $t0, 0
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
	li $t0, 63373
	sw $t0, -212($fp)
	addi $t0, $fp, -24
	sw $t0, -216($fp)
	li $t0, 1
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
	li $t0, 35234
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	li $t0, 15475
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	li $t0, 62678
	sw $t0, -260($fp)
	addi $t0, $fp, -52
	sw $t0, -264($fp)
	li $t0, 0
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
	li $t0, 1804
	sw $t0, -284($fp)
	addi $t0, $fp, -52
	sw $t0, -288($fp)
	li $t0, 1
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
	li $t0, 57079
	sw $t0, -308($fp)
	addi $t0, $fp, -52
	sw $t0, -312($fp)
	li $t0, 2
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
	li $t0, 13555
	sw $t0, -332($fp)
	addi $t0, $fp, -52
	sw $t0, -336($fp)
	li $t0, 3
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
	li $t0, 12088
	sw $t0, -356($fp)
	addi $t0, $fp, -52
	sw $t0, -360($fp)
	li $t0, 4
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
	li $t0, 48470
	sw $t0, -380($fp)
	addi $t0, $fp, -52
	sw $t0, -384($fp)
	li $t0, 5
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
	li $t0, 24143
	sw $t0, -404($fp)
	addi $t0, $fp, -52
	sw $t0, -408($fp)
	li $t0, 6
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
	li $t0, 27699
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	li $t0, 45023
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	li $t0, 60103
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	li $t0, 33649
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	li $t0, 5481
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	li $t0, 0
	sw $t0, -488($fp)
	li $t0, 0
	sw $t0, -492($fp)
	li $t0, 0
	sw $t0, -496($fp)
	jal f6
	sw $v0, -500($fp)
	addi $sp, $sp, 4
	lw $t1, -500($fp)
	li $t2, 0
	bne $t1, $t2, label160
	j label159
label159:
	li $t0, 1
	sw $t0, -496($fp)
label160:
	jal f7
	sw $v0, -504($fp)
	addi $sp, $sp, 4
	lw $t1, -496($fp)
	lw $t2, -504($fp)
	bne $t1, $t2, label157
	j label158
label157:
	li $t0, 1
	sw $t0, -492($fp)
label158:
	li $t0, 0
	sw $t0, -508($fp)
	jal f6
	sw $v0, -512($fp)
	addi $sp, $sp, 4
	lw $t0, -456($fp)
	sw $t0, -516($fp)
	lw $t1, -512($fp)
	lw $t2, -516($fp)
	blt $t1, $t2, label161
	j label162
label161:
	li $t0, 1
	sw $t0, -508($fp)
label162:
	lw $t1, -492($fp)
	lw $t2, -508($fp)
	bne $t1, $t2, label155
	j label156
label155:
	li $t0, 1
	sw $t0, -488($fp)
label156:
	li $t0, 0
	sw $t0, -520($fp)
	li $t0, 0
	sw $t0, -524($fp)
	lw $t0, -180($fp)
	sw $t0, -528($fp)
	lw $t1, -528($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label165
label165:
	li $t0, 1
	sw $t0, -524($fp)
label166:
	li $t0, 0
	lw $t1, -524($fp)
	sub $t0, $t0, $t1
	sw $t0, -532($fp)
	lw $t1, -532($fp)
	li $t2, 0
	bne $t1, $t2, label164
	j label163
label163:
	li $t0, 1
	sw $t0, -520($fp)
label164:
	lw $t1, -488($fp)
	lw $t2, -520($fp)
	beq $t1, $t2, label152
	j label153
label152:
	li $t0, 20076
	sw $t0, -536($fp)
	li $t0, 0
	sw $t0, -540($fp)
	lw $t0, -72($fp)
	sw $t0, -544($fp)
	lw $t1, -544($fp)
	li $t2, 0
	bne $t1, $t2, label171
	j label170
label170:
	li $t0, 1
	sw $t0, -540($fp)
label171:
	lw $t0, -536($fp)
	lw $t1, -540($fp)
	add $t0, $t0, $t1
	sw $t0, -548($fp)
	li $t0, 58696
	sw $t0, -552($fp)
	jal f6
	sw $v0, -556($fp)
	addi $sp, $sp, 4
	lw $t0, -552($fp)
	lw $t1, -556($fp)
	mul $t0, $t0, $t1
	sw $t0, -560($fp)
	li $t0, 0
	lw $t1, -560($fp)
	sub $t0, $t0, $t1
	sw $t0, -564($fp)
	lw $t1, -548($fp)
	lw $t2, -564($fp)
	beq $t1, $t2, label167
	j label168
label167:
	li $t0, 35032
	sw $t0, -588($fp)
	addi $t0, $fp, -584
	sw $t0, -592($fp)
	li $t0, 0
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
	li $t0, 1050
	sw $t0, -612($fp)
	addi $t0, $fp, -584
	sw $t0, -616($fp)
	li $t0, 1
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
	li $t0, 56351
	sw $t0, -636($fp)
	addi $t0, $fp, -584
	sw $t0, -640($fp)
	li $t0, 2
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
	li $t0, 6081
	sw $t0, -660($fp)
	addi $t0, $fp, -584
	sw $t0, -664($fp)
	li $t0, 3
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
	li $t0, 37052
	sw $t0, -684($fp)
	addi $t0, $fp, -584
	sw $t0, -688($fp)
	li $t0, 4
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
	li $t0, 57843
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
label172:
	addi $t0, $fp, -16
	sw $t0, -720($fp)
	li $t0, 64974
	sw $t0, -724($fp)
	lw $t0, -60($fp)
	sw $t0, -728($fp)
	lw $t0, -724($fp)
	lw $t1, -728($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -732($fp)
	lw $t0, -180($fp)
	sw $t0, -736($fp)
	lw $t0, -732($fp)
	lw $t1, -736($fp)
	mul $t0, $t0, $t1
	sw $t0, -740($fp)
	lw $t0, -480($fp)
	sw $t0, -744($fp)
	lw $t0, -740($fp)
	lw $t1, -744($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -748($fp)
	li $t0, 4
	lw $t1, -748($fp)
	mul $t0, $t0, $t1
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	lw $t1, -720($fp)
	add $t0, $t0, $t1
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	lw $t1, 0($t0)
	sw $t1, -760($fp)
	lw $t1, -760($fp)
	li $t2, 0
	bne $t1, $t2, label173
	j label174
label173:
label175:
	addi $t0, $fp, -584
	sw $t0, -764($fp)
	lw $t0, -252($fp)
	sw $t0, -768($fp)
	li $t0, 4
	lw $t1, -768($fp)
	mul $t0, $t0, $t1
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	lw $t1, -764($fp)
	add $t0, $t0, $t1
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	lw $t1, 0($t0)
	sw $t1, -780($fp)
	li $t0, 0
	lw $t1, -780($fp)
	sub $t0, $t0, $t1
	sw $t0, -784($fp)
	li $t0, 42931
	sw $t0, -788($fp)
	lw $t0, -784($fp)
	lw $t1, -788($fp)
	sub $t0, $t0, $t1
	sw $t0, -792($fp)
	lw $t0, -60($fp)
	sw $t0, -796($fp)
	li $t0, 0
	lw $t1, -796($fp)
	sub $t0, $t0, $t1
	sw $t0, -800($fp)
	lw $t0, -792($fp)
	lw $t1, -800($fp)
	sub $t0, $t0, $t1
	sw $t0, -804($fp)
	lw $t1, -804($fp)
	li $t2, 0
	bne $t1, $t2, label176
	j label177
label176:
	jal f6
	sw $v0, -808($fp)
	addi $sp, $sp, 4
	jal f6
	sw $v0, -812($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -812($fp)
	sub $t0, $t0, $t1
	sw $t0, -816($fp)
	lw $t0, -808($fp)
	lw $t1, -816($fp)
	mul $t0, $t0, $t1
	sw $t0, -820($fp)
	lw $t1, -820($fp)
	li $t2, 0
	bne $t1, $t2, label178
	j label181
label181:
	lw $t0, -480($fp)
	sw $t0, -824($fp)
	lw $t1, -824($fp)
	li $t2, 0
	bne $t1, $t2, label178
	j label179
label178:
	li $t0, 0
	sw $t0, -828($fp)
	li $t0, 43769
	sw $t0, -832($fp)
	jal f7
	sw $v0, -836($fp)
	addi $sp, $sp, 4
	lw $t0, -832($fp)
	lw $t1, -836($fp)
	mul $t0, $t0, $t1
	sw $t0, -840($fp)
	li $t0, 0
	lw $t1, -840($fp)
	sub $t0, $t0, $t1
	sw $t0, -844($fp)
	lw $t1, -844($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label182
label182:
	li $t0, 1
	sw $t0, -828($fp)
label183:
	j label180
label179:
	lw $t0, -156($fp)
	sw $t0, -848($fp)
	li $t0, 0
	lw $t1, -848($fp)
	sub $t0, $t0, $t1
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -856($fp)
	lw $ra, -4($fp)
	lw $v0, -856($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label180:
	j label175
label177:
	j label172
label174:
label184:
	lw $t0, -432($fp)
	sw $t0, -860($fp)
	lw $t0, -60($fp)
	sw $t0, -864($fp)
	lw $t0, -860($fp)
	lw $t1, -864($fp)
	add $t0, $t0, $t1
	sw $t0, -868($fp)
	lw $t1, -868($fp)
	li $t2, 0
	bne $t1, $t2, label187
	j label186
label187:
	li $t0, 51911
	sw $t0, -872($fp)
	li $t0, 0
	lw $t1, -872($fp)
	sub $t0, $t0, $t1
	sw $t0, -876($fp)
	li $t0, 0
	lw $t1, -876($fp)
	sub $t0, $t0, $t1
	sw $t0, -880($fp)
	lw $t1, -880($fp)
	li $t2, 0
	bne $t1, $t2, label185
	j label186
label185:
	li $t0, 23026
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -892($fp)
	lw $t1, -892($fp)
	li $t2, 0
	bne $t1, $t2, label188
	j label189
label188:
	li $t0, 0
	sw $t0, -896($fp)
	li $t0, 0
	sw $t0, -900($fp)
	li $t0, 0
	sw $t0, -904($fp)
	li $t0, 0
	sw $t0, -908($fp)
	li $t0, 48251
	sw $t0, -912($fp)
	lw $t1, -912($fp)
	li $t2, 0
	bne $t1, $t2, label198
	j label197
label197:
	li $t0, 1
	sw $t0, -908($fp)
label198:
	li $t0, 49380
	sw $t0, -916($fp)
	lw $t0, -908($fp)
	lw $t1, -916($fp)
	add $t0, $t0, $t1
	sw $t0, -920($fp)
	li $t0, 24061
	sw $t0, -924($fp)
	li $t0, 0
	lw $t1, -924($fp)
	sub $t0, $t0, $t1
	sw $t0, -928($fp)
	lw $t1, -920($fp)
	lw $t2, -928($fp)
	ble $t1, $t2, label195
	j label196
label195:
	li $t0, 1
	sw $t0, -904($fp)
label196:
	jal f7
	sw $v0, -932($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -932($fp)
	sub $t0, $t0, $t1
	sw $t0, -936($fp)
	lw $t1, -904($fp)
	lw $t2, -936($fp)
	blt $t1, $t2, label193
	j label194
label193:
	li $t0, 1
	sw $t0, -900($fp)
label194:
	li $t0, 46089
	sw $t0, -940($fp)
	li $t0, 19078
	sw $t0, -944($fp)
	li $t0, 39536
	sw $t0, -948($fp)
	lw $t0, -944($fp)
	lw $t1, -948($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -952($fp)
	lw $t0, -940($fp)
	lw $t1, -952($fp)
	add $t0, $t0, $t1
	sw $t0, -956($fp)
	lw $t1, -900($fp)
	lw $t2, -956($fp)
	bgt $t1, $t2, label191
	j label192
label191:
	li $t0, 1
	sw $t0, -896($fp)
label192:
	j label190
label189:
	li $t0, 43231
	sw $t0, -960($fp)
	li $t0, 0
	lw $t1, -960($fp)
	sub $t0, $t0, $t1
	sw $t0, -964($fp)
	lw $t1, -964($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label199
label199:
label202:
	li $t0, 0
	sw $t0, -968($fp)
	li $t0, 20882
	sw $t0, -972($fp)
	li $t0, 0
	lw $t1, -972($fp)
	sub $t0, $t0, $t1
	sw $t0, -976($fp)
	lw $t1, -976($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label205
label205:
	li $t0, 1
	sw $t0, -968($fp)
label206:
	lw $t0, -180($fp)
	sw $t0, -980($fp)
	li $t0, 31079
	sw $t0, -984($fp)
	lw $t0, -980($fp)
	lw $t1, -984($fp)
	mul $t0, $t0, $t1
	sw $t0, -988($fp)
	lw $t0, -968($fp)
	lw $t1, -988($fp)
	add $t0, $t0, $t1
	sw $t0, -992($fp)
	li $t0, 0
	sw $t0, -996($fp)
	addi $t0, $fp, -52
	sw $t0, -1000($fp)
	lw $t0, -60($fp)
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
	lw $t1, -1016($fp)
	li $t2, 0
	bne $t1, $t2, label208
	j label207
label207:
	li $t0, 1
	sw $t0, -996($fp)
label208:
	jal f6
	sw $v0, -1020($fp)
	addi $sp, $sp, 4
	lw $t0, -996($fp)
	lw $t1, -1020($fp)
	mul $t0, $t0, $t1
	sw $t0, -1024($fp)
	lw $t1, -992($fp)
	lw $t2, -1024($fp)
	bge $t1, $t2, label203
	j label204
label203:
label209:
	li $t0, 56787
	sw $t0, -1028($fp)
	lw $t1, -1028($fp)
	li $t2, 0
	bne $t1, $t2, label211
	j label210
label210:
	li $t0, 32970
	sw $t0, -1032($fp)
	li $t0, 14014
	sw $t0, -1036($fp)
	lw $t0, -1032($fp)
	lw $t1, -1036($fp)
	mul $t0, $t0, $t1
	sw $t0, -1040($fp)
	li $t0, 15394
	sw $t0, -1044($fp)
	lw $t0, -1040($fp)
	lw $t1, -1044($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1048($fp)
	j label209
label211:
label212:
	lw $t0, -252($fp)
	sw $t0, -1052($fp)
	li $t0, 0
	sw $t0, -1056($fp)
	jal f6
	sw $v0, -1060($fp)
	addi $sp, $sp, 4
	lw $t0, -72($fp)
	sw $t0, -1064($fp)
	li $t0, 0
	lw $t1, -1064($fp)
	sub $t0, $t0, $t1
	sw $t0, -1068($fp)
	lw $t1, -1060($fp)
	lw $t2, -1068($fp)
	bgt $t1, $t2, label215
	j label216
label215:
	li $t0, 1
	sw $t0, -1056($fp)
label216:
	lw $t1, -1052($fp)
	lw $t2, -1056($fp)
	bne $t1, $t2, label213
	j label214
label213:
	li $t0, 0
	sw $t0, -1072($fp)
	addi $t0, $fp, -52
	sw $t0, -1076($fp)
	li $t0, 60669
	sw $t0, -1080($fp)
	li $t0, 1
	sw $t0, -1084($fp)
	lw $t0, -1080($fp)
	lw $t1, -1084($fp)
	mul $t0, $t0, $t1
	sw $t0, -1088($fp)
	li $t0, 9961
	sw $t0, -1092($fp)
	lw $t0, -1088($fp)
	lw $t1, -1092($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1096($fp)
	li $t0, 4
	lw $t1, -1096($fp)
	mul $t0, $t0, $t1
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	lw $t1, -1076($fp)
	add $t0, $t0, $t1
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	lw $t1, 0($t0)
	sw $t1, -1108($fp)
	lw $t1, -1108($fp)
	li $t2, 0
	bne $t1, $t2, label217
	j label219
label219:
	li $t0, 28782
	sw $t0, -1112($fp)
	lw $t1, -1112($fp)
	li $t2, 0
	bne $t1, $t2, label217
	j label218
label217:
	li $t0, 1
	sw $t0, -1072($fp)
label218:
	j label212
label214:
	li $t0, 64519
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	sw $t0, -1124($fp)
	li $t0, 0
	sw $t0, -1128($fp)
	lw $t0, -252($fp)
	sw $t0, -1132($fp)
	li $t0, 30037
	sw $t0, -1136($fp)
	lw $t0, -1120($fp)
	sw $t0, -1140($fp)
	li $t0, 0
	lw $t1, -1140($fp)
	sub $t0, $t0, $t1
	sw $t0, -1144($fp)
	lw $t0, -1136($fp)
	lw $t1, -1144($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1148($fp)
	lw $t1, -1132($fp)
	lw $t2, -1148($fp)
	ble $t1, $t2, label220
	j label221
label220:
	li $t0, 1
	sw $t0, -1128($fp)
label221:
	j label202
label204:
	j label201
label200:
	li $t0, 21942
	sw $t0, -1152($fp)
	li $t0, 0
	lw $t1, -1152($fp)
	sub $t0, $t0, $t1
	sw $t0, -1156($fp)
	lw $ra, -4($fp)
	lw $v0, -1156($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label201:
label190:
	j label184
label186:
	addi $t0, $fp, -584
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
	lw $t0, -1176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -584
	sw $t0, -1180($fp)
	li $t0, 1
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
	addi $t0, $fp, -584
	sw $t0, -1200($fp)
	li $t0, 2
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
	addi $t0, $fp, -584
	sw $t0, -1220($fp)
	li $t0, 3
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
	addi $t0, $fp, -584
	sw $t0, -1240($fp)
	li $t0, 4
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
	lw $t0, -712($fp)
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1264($fp)
	li $t0, 0
	sw $t0, -1268($fp)
	addi $t0, $fp, -24
	sw $t0, -1272($fp)
	li $t0, 0
	sw $t0, -1276($fp)
	li $t0, 34015
	sw $t0, -1280($fp)
	lw $t1, -1280($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label227
label228:
	lw $t0, -456($fp)
	sw $t0, -1284($fp)
	lw $t1, -1284($fp)
	li $t2, 0
	bne $t1, $t2, label226
	j label227
label226:
	li $t0, 1
	sw $t0, -1276($fp)
label227:
	li $t0, 4
	lw $t1, -1276($fp)
	mul $t0, $t0, $t1
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	lw $t1, -1272($fp)
	add $t0, $t0, $t1
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	lw $t1, 0($t0)
	sw $t1, -1296($fp)
	li $t0, 0
	sw $t0, -1300($fp)
	li $t0, 31087
	sw $t0, -1304($fp)
	lw $t1, -1304($fp)
	li $t2, 0
	bne $t1, $t2, label230
	j label229
label229:
	li $t0, 1
	sw $t0, -1300($fp)
label230:
	lw $t1, -1296($fp)
	lw $t2, -1300($fp)
	bne $t1, $t2, label224
	j label225
label224:
	li $t0, 1
	sw $t0, -1268($fp)
label225:
	li $t0, 0
	sw $t0, -1308($fp)
	lw $t0, -712($fp)
	sw $t0, -1312($fp)
	lw $t1, -1312($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label231
label231:
	li $t0, 1
	sw $t0, -1308($fp)
label232:
	li $t0, 0
	lw $t1, -1308($fp)
	sub $t0, $t0, $t1
	sw $t0, -1316($fp)
	li $t0, 0
	lw $t1, -1316($fp)
	sub $t0, $t0, $t1
	sw $t0, -1320($fp)
	lw $t1, -1268($fp)
	lw $t2, -1320($fp)
	bne $t1, $t2, label222
	j label223
label222:
	li $t0, 1
	sw $t0, -1264($fp)
label223:
	lw $ra, -4($fp)
	lw $v0, -1264($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label169
label168:
	li $t0, 0
	sw $t0, -1324($fp)
	li $t0, 0
	sw $t0, -1328($fp)
	li $t0, 0
	sw $t0, -1332($fp)
	addi $t0, $fp, -52
	sw $t0, -1336($fp)
	lw $t0, -240($fp)
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
	lw $t0, -468($fp)
	sw $t0, -1356($fp)
	li $t0, 0
	lw $t1, -1356($fp)
	sub $t0, $t0, $t1
	sw $t0, -1360($fp)
	lw $t1, -1352($fp)
	lw $t2, -1360($fp)
	bge $t1, $t2, label237
	j label238
label237:
	li $t0, 1
	sw $t0, -1332($fp)
label238:
	jal f7
	sw $v0, -1364($fp)
	addi $sp, $sp, 4
	lw $t1, -1332($fp)
	lw $t2, -1364($fp)
	blt $t1, $t2, label235
	j label236
label235:
	li $t0, 1
	sw $t0, -1328($fp)
label236:
	jal f6
	sw $v0, -1368($fp)
	addi $sp, $sp, 4
	lw $t1, -1328($fp)
	lw $t2, -1368($fp)
	blt $t1, $t2, label233
	j label234
label233:
	li $t0, 1
	sw $t0, -1324($fp)
label234:
label169:
label153:
label239:
	jal f7
	sw $v0, -1372($fp)
	addi $sp, $sp, 4
	lw $t1, -1372($fp)
	li $t2, 0
	bne $t1, $t2, label241
	j label240
label240:
	addi $t0, $fp, -52
	sw $t0, -1376($fp)
	li $t0, 0
	sw $t0, -1380($fp)
	li $t0, 12758
	sw $t0, -1384($fp)
	lw $t1, -1384($fp)
	li $t2, 0
	bne $t1, $t2, label246
	j label245
label245:
	li $t0, 1
	sw $t0, -1380($fp)
label246:
	li $t0, 4
	lw $t1, -1380($fp)
	mul $t0, $t0, $t1
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	lw $t1, -1376($fp)
	add $t0, $t0, $t1
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	lw $t1, 0($t0)
	sw $t1, -1396($fp)
	lw $t1, -1396($fp)
	li $t2, 0
	bne $t1, $t2, label242
	j label243
label242:
label247:
	li $t0, 0
	sw $t0, -1400($fp)
	jal f7
	sw $v0, -1404($fp)
	addi $sp, $sp, 4
	li $t0, 40096
	sw $t0, -1408($fp)
	lw $t1, -1404($fp)
	lw $t2, -1408($fp)
	blt $t1, $t2, label250
	j label251
label250:
	li $t0, 1
	sw $t0, -1400($fp)
label251:
	lw $t0, -240($fp)
	sw $t0, -1412($fp)
	li $t0, 0
	lw $t1, -1412($fp)
	sub $t0, $t0, $t1
	sw $t0, -1416($fp)
	li $t0, 2603
	sw $t0, -1420($fp)
	lw $t0, -240($fp)
	sw $t0, -1424($fp)
	lw $t0, -1420($fp)
	lw $t1, -1424($fp)
	mul $t0, $t0, $t1
	sw $t0, -1428($fp)
	lw $t0, -1416($fp)
	lw $t1, -1428($fp)
	sub $t0, $t0, $t1
	sw $t0, -1432($fp)
	lw $t1, -1400($fp)
	lw $t2, -1432($fp)
	beq $t1, $t2, label248
	j label249
label248:
	li $t0, 0
	sw $t0, -1436($fp)
	li $t0, 5065
	sw $t0, -1440($fp)
	lw $t1, -1440($fp)
	li $t2, 0
	bne $t1, $t2, label259
	j label257
label259:
	lw $t0, -468($fp)
	sw $t0, -1444($fp)
	lw $t1, -1444($fp)
	li $t2, 0
	bne $t1, $t2, label258
	j label257
label258:
	lw $t0, -240($fp)
	sw $t0, -1448($fp)
	lw $t1, -1448($fp)
	li $t2, 0
	bne $t1, $t2, label255
	j label257
label257:
	lw $t0, -60($fp)
	sw $t0, -1452($fp)
	lw $t0, -480($fp)
	sw $t0, -1456($fp)
	lw $t1, -1452($fp)
	lw $t2, -1456($fp)
	beq $t1, $t2, label255
	j label256
label255:
	li $t0, 1
	sw $t0, -1436($fp)
label256:
	lw $t0, -1436($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -1460($fp)
	lw $t1, -1460($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label253
label252:
	li $t0, 39534
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	sw $t0, -1472($fp)
	li $t0, 45535
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	sw $t0, -1480($fp)
	lw $t0, -1480($fp)
	sw $t0, -1484($fp)
	lw $t0, -1468($fp)
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1480($fp)
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -1496($fp)
	li $t0, 0
	sw $t0, -1500($fp)
	lw $t0, -1480($fp)
	sw $t0, -1504($fp)
	lw $t0, -456($fp)
	sw $t0, -1508($fp)
	lw $t0, -1504($fp)
	lw $t1, -1508($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1512($fp)
	li $t0, 48834
	sw $t0, -1516($fp)
	lw $t1, -1512($fp)
	lw $t2, -1516($fp)
	bne $t1, $t2, label260
	j label261
label260:
	li $t0, 1
	sw $t0, -1500($fp)
label261:
	li $t0, 4
	lw $t1, -1500($fp)
	mul $t0, $t0, $t1
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	lw $t1, -1496($fp)
	add $t0, $t0, $t1
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	lw $t1, 0($t0)
	sw $t1, -1528($fp)
	li $t0, 0
	sw $t0, -1532($fp)
	li $t0, 25909
	sw $t0, -1536($fp)
	lw $t1, -1536($fp)
	li $t2, 0
	bne $t1, $t2, label263
	j label262
label262:
	li $t0, 1
	sw $t0, -1532($fp)
label263:
	li $t0, 0
	lw $t1, -1532($fp)
	sub $t0, $t0, $t1
	sw $t0, -1540($fp)
	lw $t0, -1528($fp)
	lw $t1, -1540($fp)
	sub $t0, $t0, $t1
	sw $t0, -1544($fp)
	lw $ra, -4($fp)
	lw $v0, -1544($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 3025
	sw $t0, -1548($fp)
	lw $t0, -240($fp)
	sw $t0, -1552($fp)
	lw $t0, -1548($fp)
	lw $t1, -1552($fp)
	sub $t0, $t0, $t1
	sw $t0, -1556($fp)
	lw $t1, -1556($fp)
	li $t2, 0
	bne $t1, $t2, label264
	j label265
label264:
	addi $t0, $fp, -52
	sw $t0, -1560($fp)
	lw $t0, -1468($fp)
	sw $t0, -1564($fp)
	li $t0, 4
	lw $t1, -1564($fp)
	mul $t0, $t0, $t1
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	lw $t1, -1560($fp)
	add $t0, $t0, $t1
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	lw $t1, 0($t0)
	sw $t1, -1576($fp)
	lw $t0, -180($fp)
	sw $t0, -1580($fp)
	lw $t0, -1576($fp)
	lw $t1, -1580($fp)
	mul $t0, $t0, $t1
	sw $t0, -1584($fp)
	lw $t0, -444($fp)
	sw $t0, -1588($fp)
	lw $t0, -252($fp)
	sw $t0, -1592($fp)
	lw $t0, -1588($fp)
	lw $t1, -1592($fp)
	mul $t0, $t0, $t1
	sw $t0, -1596($fp)
	li $t0, 0
	sw $t0, -1600($fp)
	jal f7
	sw $v0, -1604($fp)
	addi $sp, $sp, 4
	lw $t1, -1604($fp)
	li $t2, 0
	bne $t1, $t2, label268
	j label267
label267:
	li $t0, 1
	sw $t0, -1600($fp)
label268:
	lw $t0, -1596($fp)
	lw $t1, -1600($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1608($fp)
	li $t0, 0
	lw $t1, -1608($fp)
	sub $t0, $t0, $t1
	sw $t0, -1612($fp)
	lw $t0, -1584($fp)
	lw $t1, -1612($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1616($fp)
	j label266
label265:
	lw $t0, -180($fp)
	sw $t0, -1620($fp)
	lw $t1, -1620($fp)
	li $t2, 0
	bne $t1, $t2, label269
	j label270
label269:
	jal f6
	sw $v0, -1624($fp)
	addi $sp, $sp, 4
	j label271
label270:
	li $t0, 31549
	sw $t0, -1644($fp)
	addi $t0, $fp, -1640
	sw $t0, -1648($fp)
	li $t0, 0
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1656($fp)
	lw $t0, -1648($fp)
	lw $t1, -1656($fp)
	add $t0, $t0, $t1
	sw $t0, -1660($fp)
	lw $t0, -1644($fp)
	lw $t1, -1660($fp)
	sw $t0, 0($t1)
	lw $t0, -1660($fp)
	lw $t1, 0($t0)
	sw $t1, -1664($fp)
	li $t0, 9753
	sw $t0, -1668($fp)
	addi $t0, $fp, -1640
	sw $t0, -1672($fp)
	li $t0, 1
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1680($fp)
	lw $t0, -1672($fp)
	lw $t1, -1680($fp)
	add $t0, $t0, $t1
	sw $t0, -1684($fp)
	lw $t0, -1668($fp)
	lw $t1, -1684($fp)
	sw $t0, 0($t1)
	lw $t0, -1684($fp)
	lw $t1, 0($t0)
	sw $t1, -1688($fp)
	li $t0, 27086
	sw $t0, -1692($fp)
	addi $t0, $fp, -1640
	sw $t0, -1696($fp)
	li $t0, 2
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1704($fp)
	lw $t0, -1696($fp)
	lw $t1, -1704($fp)
	add $t0, $t0, $t1
	sw $t0, -1708($fp)
	lw $t0, -1692($fp)
	lw $t1, -1708($fp)
	sw $t0, 0($t1)
	lw $t0, -1708($fp)
	lw $t1, 0($t0)
	sw $t1, -1712($fp)
	li $t0, 12102
	sw $t0, -1716($fp)
	addi $t0, $fp, -1640
	sw $t0, -1720($fp)
	li $t0, 3
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1728($fp)
	lw $t0, -1720($fp)
	lw $t1, -1728($fp)
	add $t0, $t0, $t1
	sw $t0, -1732($fp)
	lw $t0, -1716($fp)
	lw $t1, -1732($fp)
	sw $t0, 0($t1)
	lw $t0, -1732($fp)
	lw $t1, 0($t0)
	sw $t1, -1736($fp)
	li $t0, 28831
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	sw $t0, -1748($fp)
	li $t0, 1087
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	sw $t0, -1760($fp)
	jal f7
	sw $v0, -1764($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -1764($fp)
	sub $t0, $t0, $t1
	sw $t0, -1768($fp)
	lw $t1, -1768($fp)
	li $t2, 0
	bne $t1, $t2, label272
	j label273
label272:
	li $t0, 0
	sw $t0, -1772($fp)
	jal f6
	sw $v0, -1776($fp)
	addi $sp, $sp, 4
	lw $t0, -1756($fp)
	sw $t0, -1780($fp)
	lw $t0, -1776($fp)
	lw $t1, -1780($fp)
	sub $t0, $t0, $t1
	sw $t0, -1784($fp)
	lw $t0, -1744($fp)
	sw $t0, -1788($fp)
	li $t0, 55334
	sw $t0, -1792($fp)
	lw $t0, -1788($fp)
	lw $t1, -1792($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1796($fp)
	lw $t1, -1784($fp)
	lw $t2, -1796($fp)
	blt $t1, $t2, label275
	j label276
label275:
	li $t0, 1
	sw $t0, -1772($fp)
label276:
	lw $t0, -1772($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -1800($fp)
	j label274
label273:
	li $t0, 0
	sw $t0, -1804($fp)
	li $t0, 0
	sw $t0, -1808($fp)
	jal f6
	sw $v0, -1812($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -1812($fp)
	sub $t0, $t0, $t1
	sw $t0, -1816($fp)
	lw $t1, -1816($fp)
	li $t2, 0
	bne $t1, $t2, label280
	j label279
label279:
	li $t0, 1
	sw $t0, -1808($fp)
label280:
	jal f7
	sw $v0, -1820($fp)
	addi $sp, $sp, 4
	lw $t1, -1808($fp)
	lw $t2, -1820($fp)
	bgt $t1, $t2, label277
	j label278
label277:
	li $t0, 1
	sw $t0, -1804($fp)
label278:
label274:
	li $t0, 49713
	sw $t0, -1824($fp)
	lw $t0, -1824($fp)
	sw $t0, -1828($fp)
	lw $t0, -1828($fp)
	sw $t0, -1832($fp)
	li $t0, 0
	sw $t0, -1836($fp)
	lw $t0, -168($fp)
	sw $t0, -1840($fp)
	li $t0, 32166
	sw $t0, -1844($fp)
	lw $t0, -1828($fp)
	sw $t0, -1848($fp)
	lw $t0, -1844($fp)
	lw $t1, -1848($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1852($fp)
	lw $t0, -432($fp)
	sw $t0, -1856($fp)
	lw $t0, -1852($fp)
	lw $t1, -1856($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1860($fp)
	lw $t0, -1840($fp)
	lw $t1, -1860($fp)
	sub $t0, $t0, $t1
	sw $t0, -1864($fp)
	li $t0, 0
	sw $t0, -1868($fp)
	jal f7
	sw $v0, -1872($fp)
	addi $sp, $sp, 4
	lw $t1, -1872($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label283
label283:
	li $t0, 1
	sw $t0, -1868($fp)
label284:
	lw $t1, -1864($fp)
	lw $t2, -1868($fp)
	beq $t1, $t2, label281
	j label282
label281:
	li $t0, 1
	sw $t0, -1836($fp)
label282:
	addi $t0, $fp, -1640
	sw $t0, -1876($fp)
	li $t0, 0
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
	li $t0, 46180
	sw $t0, -1896($fp)
	lw $t0, -1892($fp)
	lw $t1, -1896($fp)
	mul $t0, $t0, $t1
	sw $t0, -1900($fp)
	li $t0, 61979
	sw $t0, -1904($fp)
	lw $t0, -1900($fp)
	lw $t1, -1904($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1908($fp)
	addi $t0, $fp, -1640
	sw $t0, -1912($fp)
	lw $t0, -240($fp)
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
	lw $t0, -1908($fp)
	lw $t1, -1928($fp)
	mul $t0, $t0, $t1
	sw $t0, -1932($fp)
	li $t0, 12281
	sw $t0, -1936($fp)
	lw $t0, -1932($fp)
	lw $t1, -1936($fp)
	sub $t0, $t0, $t1
	sw $t0, -1940($fp)
label271:
label266:
	j label254
label253:
	addi $t0, $fp, -24
	sw $t0, -1944($fp)
	li $t0, 1
	sw $t0, -1948($fp)
	li $t0, 4
	lw $t1, -1948($fp)
	mul $t0, $t0, $t1
	sw $t0, -1952($fp)
	lw $t0, -1952($fp)
	lw $t1, -1944($fp)
	add $t0, $t0, $t1
	sw $t0, -1956($fp)
	lw $t0, -1956($fp)
	lw $t1, 0($t0)
	sw $t1, -1960($fp)
	li $t0, 0
	lw $t1, -1960($fp)
	sub $t0, $t0, $t1
	sw $t0, -1964($fp)
	lw $ra, -4($fp)
	lw $v0, -1964($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label254:
	j label247
label249:
	j label244
label243:
	li $t0, 0
	sw $t0, -1968($fp)
	li $t0, 0
	sw $t0, -1972($fp)
	lw $t0, -180($fp)
	sw $t0, -1976($fp)
	li $t0, 36441
	sw $t0, -1980($fp)
	lw $t0, -1976($fp)
	lw $t1, -1980($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1984($fp)
	li $t0, 63006
	sw $t0, -1988($fp)
	lw $t1, -1984($fp)
	lw $t2, -1988($fp)
	bgt $t1, $t2, label290
	j label291
label290:
	li $t0, 1
	sw $t0, -1972($fp)
label291:
	addi $t0, $fp, -24
	sw $t0, -1992($fp)
	lw $t0, -240($fp)
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
	lw $t1, -1972($fp)
	lw $t2, -2008($fp)
	beq $t1, $t2, label288
	j label289
label288:
	li $t0, 1
	sw $t0, -1968($fp)
label289:
	lw $t0, -1968($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -2012($fp)
	lw $t1, -2012($fp)
	li $t2, 0
	bne $t1, $t2, label285
	j label286
label285:
	lw $t0, -168($fp)
	sw $t0, -2016($fp)
	lw $ra, -4($fp)
	lw $v0, -2016($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label287
label286:
	addi $t0, $fp, -16
	sw $t0, -2020($fp)
	li $t0, 0
	sw $t0, -2024($fp)
	li $t0, 7144
	sw $t0, -2028($fp)
	lw $t0, -180($fp)
	sw $t0, -2032($fp)
	lw $t0, -2028($fp)
	lw $t1, -2032($fp)
	sub $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t1, -2036($fp)
	li $t2, 0
	bne $t1, $t2, label294
	j label293
label294:
	lw $t0, -252($fp)
	sw $t0, -2040($fp)
	lw $t1, -2040($fp)
	li $t2, 0
	bne $t1, $t2, label292
	j label293
label292:
	li $t0, 1
	sw $t0, -2024($fp)
label293:
	li $t0, 4
	lw $t1, -2024($fp)
	mul $t0, $t0, $t1
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	lw $t1, -2020($fp)
	add $t0, $t0, $t1
	sw $t0, -2048($fp)
	lw $t0, -2048($fp)
	lw $t1, 0($t0)
	sw $t1, -2052($fp)
	jal f6
	sw $v0, -2056($fp)
	addi $sp, $sp, 4
	lw $t0, -2052($fp)
	lw $t1, -2056($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2060($fp)
label287:
label244:
	j label239
label241:
	lw $t0, -60($fp)
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -72($fp)
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -2072($fp)
	li $t0, 0
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
	addi $t0, $fp, -16
	sw $t0, -2092($fp)
	li $t0, 1
	sw $t0, -2096($fp)
	li $t0, 4
	lw $t1, -2096($fp)
	mul $t0, $t0, $t1
	sw $t0, -2100($fp)
	lw $t0, -2100($fp)
	lw $t1, -2092($fp)
	add $t0, $t0, $t1
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	lw $t1, 0($t0)
	sw $t1, -2108($fp)
	lw $t0, -2108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -2112($fp)
	li $t0, 2
	sw $t0, -2116($fp)
	li $t0, 4
	lw $t1, -2116($fp)
	mul $t0, $t0, $t1
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	lw $t1, -2112($fp)
	add $t0, $t0, $t1
	sw $t0, -2124($fp)
	lw $t0, -2124($fp)
	lw $t1, 0($t0)
	sw $t1, -2128($fp)
	lw $t0, -2128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -156($fp)
	sw $t0, -2132($fp)
	lw $t0, -2132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -168($fp)
	sw $t0, -2136($fp)
	lw $t0, -2136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	sw $t0, -2140($fp)
	lw $t0, -2140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -2144($fp)
	li $t0, 0
	sw $t0, -2148($fp)
	li $t0, 4
	lw $t1, -2148($fp)
	mul $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	lw $t1, -2144($fp)
	add $t0, $t0, $t1
	sw $t0, -2156($fp)
	lw $t0, -2156($fp)
	lw $t1, 0($t0)
	sw $t1, -2160($fp)
	lw $t0, -2160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -2164($fp)
	li $t0, 1
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
	lw $t0, -2180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -240($fp)
	sw $t0, -2184($fp)
	lw $t0, -2184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -252($fp)
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -2192($fp)
	li $t0, 0
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
	addi $t0, $fp, -52
	sw $t0, -2212($fp)
	li $t0, 1
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
	addi $t0, $fp, -52
	sw $t0, -2232($fp)
	li $t0, 2
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
	addi $t0, $fp, -52
	sw $t0, -2252($fp)
	li $t0, 3
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
	addi $t0, $fp, -52
	sw $t0, -2272($fp)
	li $t0, 4
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
	addi $t0, $fp, -52
	sw $t0, -2292($fp)
	li $t0, 5
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
	addi $t0, $fp, -52
	sw $t0, -2312($fp)
	li $t0, 6
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
	lw $t0, -432($fp)
	sw $t0, -2332($fp)
	lw $t0, -2332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -444($fp)
	sw $t0, -2336($fp)
	lw $t0, -2336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -456($fp)
	sw $t0, -2340($fp)
	lw $t0, -2340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -2344($fp)
	lw $t0, -2344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2352($fp)
	addi $t0, $fp, -52
	sw $t0, -2356($fp)
	addi $t0, $fp, -52
	sw $t0, -2360($fp)
	lw $t0, -240($fp)
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
	li $t0, 4
	lw $t1, -2376($fp)
	mul $t0, $t0, $t1
	sw $t0, -2380($fp)
	lw $t0, -2380($fp)
	lw $t1, -2356($fp)
	add $t0, $t0, $t1
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	lw $t1, 0($t0)
	sw $t1, -2388($fp)
	lw $t1, -2388($fp)
	li $t2, 0
	bne $t1, $t2, label297
	j label296
label297:
	jal f7
	sw $v0, -2392($fp)
	addi $sp, $sp, 4
	lw $t1, -2392($fp)
	li $t2, 0
	bne $t1, $t2, label295
	j label296
label295:
	li $t0, 1
	sw $t0, -2352($fp)
label296:
	lw $ra, -4($fp)
	lw $v0, -2352($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -696
	li $t0, 1992
	sw $t0, -44($fp)
	addi $t0, $fp, -40
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
	li $t0, 10228
	sw $t0, -68($fp)
	addi $t0, $fp, -40
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
	li $t0, 47241
	sw $t0, -92($fp)
	addi $t0, $fp, -40
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
	li $t0, 4595
	sw $t0, -116($fp)
	addi $t0, $fp, -40
	sw $t0, -120($fp)
	li $t0, 3
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
	li $t0, 15293
	sw $t0, -140($fp)
	addi $t0, $fp, -40
	sw $t0, -144($fp)
	li $t0, 4
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
	li $t0, 21239
	sw $t0, -164($fp)
	addi $t0, $fp, -40
	sw $t0, -168($fp)
	li $t0, 5
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
	li $t0, 50130
	sw $t0, -188($fp)
	addi $t0, $fp, -40
	sw $t0, -192($fp)
	li $t0, 6
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
	li $t0, 64127
	sw $t0, -212($fp)
	addi $t0, $fp, -40
	sw $t0, -216($fp)
	li $t0, 7
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
	li $t0, 47149
	sw $t0, -236($fp)
	addi $t0, $fp, -40
	sw $t0, -240($fp)
	li $t0, 8
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
	li $t0, 53155
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	li $t0, 30141
	sw $t0, -272($fp)
	li $t0, 0
	sw $t0, -276($fp)
	li $t0, 56902
	sw $t0, -280($fp)
	li $t0, 14706
	sw $t0, -284($fp)
	lw $t0, -280($fp)
	lw $t1, -284($fp)
	sub $t0, $t0, $t1
	sw $t0, -288($fp)
	lw $t0, 12($fp)
	sw $t0, -292($fp)
	lw $t0, -288($fp)
	lw $t1, -292($fp)
	add $t0, $t0, $t1
	sw $t0, -296($fp)
	addi $t0, $fp, -40
	sw $t0, -300($fp)
	li $t0, 3
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
	lw $t0, -296($fp)
	lw $t1, -316($fp)
	add $t0, $t0, $t1
	sw $t0, -320($fp)
	lw $t0, -264($fp)
	sw $t0, -324($fp)
	li $t0, 0
	lw $t1, -324($fp)
	sub $t0, $t0, $t1
	sw $t0, -328($fp)
	li $t0, 15793
	sw $t0, -332($fp)
	lw $t0, -328($fp)
	lw $t1, -332($fp)
	add $t0, $t0, $t1
	sw $t0, -336($fp)
	lw $t1, -320($fp)
	lw $t2, -336($fp)
	beq $t1, $t2, label300
	j label299
label300:
	lw $t0, 12($fp)
	sw $t0, -340($fp)
	li $t0, 4376
	sw $t0, -344($fp)
	lw $t0, -340($fp)
	lw $t1, -344($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -348($fp)
	lw $t1, -348($fp)
	li $t2, 0
	bne $t1, $t2, label298
	j label299
label298:
	li $t0, 1
	sw $t0, -276($fp)
label299:
	li $t0, 0
	sw $t0, -352($fp)
	addi $t0, $fp, -40
	sw $t0, -356($fp)
	li $t0, 47959
	sw $t0, -360($fp)
	li $t0, 13090
	sw $t0, -364($fp)
	lw $t0, -360($fp)
	lw $t1, -364($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -368($fp)
	li $t0, 4
	lw $t1, -368($fp)
	mul $t0, $t0, $t1
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	lw $t1, -356($fp)
	add $t0, $t0, $t1
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	lw $t1, 0($t0)
	sw $t1, -380($fp)
	lw $t0, 12($fp)
	sw $t0, -384($fp)
	li $t0, 0
	lw $t1, -384($fp)
	sub $t0, $t0, $t1
	sw $t0, -388($fp)
	li $t0, 0
	lw $t1, -388($fp)
	sub $t0, $t0, $t1
	sw $t0, -392($fp)
	lw $t0, -380($fp)
	lw $t1, -392($fp)
	mul $t0, $t0, $t1
	sw $t0, -396($fp)
	lw $t1, -396($fp)
	li $t2, 0
	bne $t1, $t2, label303
	j label302
label303:
	jal f6
	sw $v0, -400($fp)
	addi $sp, $sp, 4
	lw $t0, 4($fp)
	sw $t0, -404($fp)
	lw $t1, -400($fp)
	lw $t2, -404($fp)
	bne $t1, $t2, label301
	j label302
label301:
	li $t0, 1
	sw $t0, -352($fp)
label302:
	li $t0, 21523
	sw $t0, -408($fp)
	li $t0, 0
	sw $t0, -412($fp)
	li $t0, 0
	sw $t0, -416($fp)
	jal f7
	sw $v0, -420($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -420($fp)
	sub $t0, $t0, $t1
	sw $t0, -424($fp)
	addi $t0, $fp, -40
	sw $t0, -428($fp)
	li $t0, 4
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
	lw $t0, 8($fp)
	sw $t0, -448($fp)
	li $t0, 28604
	sw $t0, -452($fp)
	lw $t0, -448($fp)
	lw $t1, -452($fp)
	sub $t0, $t0, $t1
	sw $t0, -456($fp)
	lw $t0, 4($fp)
	sw $t0, -460($fp)
	addi $sp, $sp, -4
	lw $t0, -444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -460($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -464($fp)
	addi $sp, $sp, 16
	lw $t1, -424($fp)
	lw $t2, -464($fp)
	ble $t1, $t2, label306
	j label307
label306:
	li $t0, 1
	sw $t0, -416($fp)
label307:
	lw $t0, 12($fp)
	sw $t0, -468($fp)
	lw $t0, -264($fp)
	sw $t0, -472($fp)
	li $t0, 0
	lw $t1, -472($fp)
	sub $t0, $t0, $t1
	sw $t0, -476($fp)
	lw $t0, -468($fp)
	lw $t1, -476($fp)
	sub $t0, $t0, $t1
	sw $t0, -480($fp)
	lw $t1, -416($fp)
	lw $t2, -480($fp)
	bgt $t1, $t2, label304
	j label305
label304:
	li $t0, 1
	sw $t0, -412($fp)
label305:
	addi $t0, $fp, -40
	sw $t0, -484($fp)
	li $t0, 0
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
	lw $t0, -500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -504($fp)
	li $t0, 1
	sw $t0, -508($fp)
	li $t0, 4
	lw $t1, -508($fp)
	mul $t0, $t0, $t1
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	lw $t1, -504($fp)
	add $t0, $t0, $t1
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	lw $t1, 0($t0)
	sw $t1, -520($fp)
	lw $t0, -520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -524($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -544($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -564($fp)
	li $t0, 4
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
	addi $t0, $fp, -40
	sw $t0, -584($fp)
	li $t0, 5
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
	addi $t0, $fp, -40
	sw $t0, -604($fp)
	li $t0, 6
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
	addi $t0, $fp, -40
	sw $t0, -624($fp)
	li $t0, 7
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
	addi $t0, $fp, -40
	sw $t0, -644($fp)
	li $t0, 8
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
	lw $t0, -264($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -668($fp)
	lw $t0, 12($fp)
	sw $t0, -672($fp)
	lw $t1, -672($fp)
	li $t2, 0
	bne $t1, $t2, label308
	j label310
label310:
	li $t0, 0
	sw $t0, -676($fp)
	lw $t0, 12($fp)
	sw $t0, -680($fp)
	li $t0, 2750
	sw $t0, -684($fp)
	lw $t0, -680($fp)
	lw $t1, -684($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -688($fp)
	li $t0, 15937
	sw $t0, -692($fp)
	lw $t1, -688($fp)
	lw $t2, -692($fp)
	bgt $t1, $t2, label311
	j label312
label311:
	li $t0, 1
	sw $t0, -676($fp)
label312:
	li $t0, 0
	sw $t0, -696($fp)
	li $t0, 9333
	sw $t0, -700($fp)
	lw $t1, -700($fp)
	li $t2, 0
	bne $t1, $t2, label314
	j label313
label313:
	li $t0, 1
	sw $t0, -696($fp)
label314:
	lw $t1, -676($fp)
	lw $t2, -696($fp)
	blt $t1, $t2, label308
	j label309
label308:
	li $t0, 1
	sw $t0, -668($fp)
label309:
	lw $ra, -4($fp)
	lw $v0, -668($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4956
	li $t0, 41415
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 52378
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 6803
	sw $t0, -120($fp)
	addi $t0, $fp, -32
	sw $t0, -124($fp)
	li $t0, 0
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
	li $t0, 48559
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	li $t0, 54370
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	li $t0, 17032
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	li $t0, 30264
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	li $t0, 58966
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	li $t0, 32325
	sw $t0, -204($fp)
	addi $t0, $fp, -72
	sw $t0, -208($fp)
	li $t0, 0
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
	li $t0, 51504
	sw $t0, -228($fp)
	addi $t0, $fp, -72
	sw $t0, -232($fp)
	li $t0, 1
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
	li $t0, 43560
	sw $t0, -252($fp)
	addi $t0, $fp, -72
	sw $t0, -256($fp)
	li $t0, 2
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
	li $t0, 30917
	sw $t0, -276($fp)
	addi $t0, $fp, -72
	sw $t0, -280($fp)
	li $t0, 3
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
	li $t0, 33117
	sw $t0, -300($fp)
	addi $t0, $fp, -72
	sw $t0, -304($fp)
	li $t0, 4
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
	li $t0, 31180
	sw $t0, -324($fp)
	addi $t0, $fp, -72
	sw $t0, -328($fp)
	li $t0, 5
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
	li $t0, 61058
	sw $t0, -348($fp)
	addi $t0, $fp, -72
	sw $t0, -352($fp)
	li $t0, 6
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
	li $t0, 24483
	sw $t0, -372($fp)
	addi $t0, $fp, -72
	sw $t0, -376($fp)
	li $t0, 7
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
	li $t0, 45886
	sw $t0, -396($fp)
	addi $t0, $fp, -72
	sw $t0, -400($fp)
	li $t0, 8
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
	li $t0, 37765
	sw $t0, -420($fp)
	addi $t0, $fp, -72
	sw $t0, -424($fp)
	li $t0, 9
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
	li $t0, 44681
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	li $t0, 61679
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	li $t0, 4271
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	li $t0, 49057
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	li $t0, 44102
	sw $t0, -492($fp)
	addi $t0, $fp, -84
	sw $t0, -496($fp)
	li $t0, 0
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
	li $t0, 17361
	sw $t0, -516($fp)
	addi $t0, $fp, -84
	sw $t0, -520($fp)
	li $t0, 1
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
	li $t0, 5044
	sw $t0, -540($fp)
	addi $t0, $fp, -84
	sw $t0, -544($fp)
	li $t0, 2
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
	li $t0, 7170
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	li $t0, 26895
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	li $t0, 38849
	sw $t0, -588($fp)
	addi $t0, $fp, -116
	sw $t0, -592($fp)
	li $t0, 0
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
	li $t0, 9920
	sw $t0, -612($fp)
	addi $t0, $fp, -116
	sw $t0, -616($fp)
	li $t0, 1
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
	li $t0, 42832
	sw $t0, -636($fp)
	addi $t0, $fp, -116
	sw $t0, -640($fp)
	li $t0, 2
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
	li $t0, 48182
	sw $t0, -660($fp)
	addi $t0, $fp, -116
	sw $t0, -664($fp)
	li $t0, 3
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
	li $t0, 51335
	sw $t0, -684($fp)
	addi $t0, $fp, -116
	sw $t0, -688($fp)
	li $t0, 4
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
	li $t0, 29675
	sw $t0, -708($fp)
	addi $t0, $fp, -116
	sw $t0, -712($fp)
	li $t0, 5
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
	li $t0, 54986
	sw $t0, -732($fp)
	addi $t0, $fp, -116
	sw $t0, -736($fp)
	li $t0, 6
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
	li $t0, 34359
	sw $t0, -756($fp)
	addi $t0, $fp, -116
	sw $t0, -760($fp)
	li $t0, 7
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
	li $t0, 18509
	sw $t0, -780($fp)
	lw $ra, -4($fp)
	lw $v0, -780($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -148($fp)
	sw $t0, -784($fp)
	li $t0, 6482
	sw $t0, -788($fp)
	lw $t0, -784($fp)
	lw $t1, -788($fp)
	mul $t0, $t0, $t1
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -796($fp)
label315:
	li $t0, 64623
	sw $t0, -800($fp)
	lw $t1, -800($fp)
	li $t2, 0
	bne $t1, $t2, label316
	j label317
label316:
	li $t0, 11939
	sw $t0, -804($fp)
	lw $ra, -4($fp)
	lw $v0, -804($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label315
label317:
	addi $t0, $fp, -116
	sw $t0, -808($fp)
	li $t0, 0
	sw $t0, -812($fp)
	li $t0, 38807
	sw $t0, -816($fp)
	lw $t1, -816($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label320
label320:
	lw $t0, -184($fp)
	sw $t0, -820($fp)
	lw $t1, -820($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label319
label318:
	li $t0, 1
	sw $t0, -812($fp)
label319:
	li $t0, 4
	lw $t1, -812($fp)
	mul $t0, $t0, $t1
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	lw $t1, -808($fp)
	add $t0, $t0, $t1
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	lw $t1, 0($t0)
	sw $t1, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -836($fp)
	lw $ra, -4($fp)
	lw $v0, -836($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -472($fp)
	sw $t0, -840($fp)
	li $t0, 0
	sw $t0, -844($fp)
	addi $t0, $fp, -32
	sw $t0, -848($fp)
	lw $t0, -460($fp)
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
	lw $t1, -864($fp)
	li $t2, 0
	bne $t1, $t2, label322
	j label321
label321:
	li $t0, 1
	sw $t0, -844($fp)
label322:
	lw $t0, -840($fp)
	lw $t1, -844($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -868($fp)
	jal f6
	sw $v0, -872($fp)
	addi $sp, $sp, 4
	lw $t0, -868($fp)
	lw $t1, -872($fp)
	sub $t0, $t0, $t1
	sw $t0, -876($fp)
	lw $ra, -4($fp)
	lw $v0, -876($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -32
	sw $t0, -880($fp)
	li $t0, 0
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
	lw $t0, -148($fp)
	sw $t0, -900($fp)
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
	lw $t0, -172($fp)
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -184($fp)
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -196($fp)
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -920($fp)
	li $t0, 0
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
	addi $t0, $fp, -72
	sw $t0, -940($fp)
	li $t0, 1
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
	addi $t0, $fp, -72
	sw $t0, -960($fp)
	li $t0, 2
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
	addi $t0, $fp, -72
	sw $t0, -980($fp)
	li $t0, 3
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
	addi $t0, $fp, -72
	sw $t0, -1000($fp)
	li $t0, 4
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
	addi $t0, $fp, -72
	sw $t0, -1020($fp)
	li $t0, 5
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
	addi $t0, $fp, -72
	sw $t0, -1040($fp)
	li $t0, 6
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
	addi $t0, $fp, -72
	sw $t0, -1060($fp)
	li $t0, 7
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
	addi $t0, $fp, -72
	sw $t0, -1080($fp)
	li $t0, 8
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
	addi $t0, $fp, -72
	sw $t0, -1100($fp)
	li $t0, 9
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
	lw $t0, -448($fp)
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -460($fp)
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -472($fp)
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -484($fp)
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
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
	lw $t0, -1152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -1156($fp)
	li $t0, 1
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
	addi $t0, $fp, -84
	sw $t0, -1176($fp)
	li $t0, 2
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
	lw $t0, -568($fp)
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -580($fp)
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -1204($fp)
	li $t0, 0
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
	addi $t0, $fp, -116
	sw $t0, -1224($fp)
	li $t0, 1
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
	addi $t0, $fp, -116
	sw $t0, -1244($fp)
	li $t0, 2
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
	addi $t0, $fp, -116
	sw $t0, -1264($fp)
	li $t0, 3
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
	addi $t0, $fp, -116
	sw $t0, -1284($fp)
	li $t0, 4
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
	addi $t0, $fp, -116
	sw $t0, -1304($fp)
	li $t0, 5
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
	addi $t0, $fp, -116
	sw $t0, -1324($fp)
	li $t0, 6
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
	addi $t0, $fp, -116
	sw $t0, -1344($fp)
	li $t0, 7
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
	li $t0, 0
	sw $t0, -1364($fp)
	lw $t0, -196($fp)
	sw $t0, -1368($fp)
	li $t0, 50591
	sw $t0, -1372($fp)
	li $t0, 0
	sw $t0, -1376($fp)
	li $t0, 55500
	sw $t0, -1380($fp)
	lw $t1, -1380($fp)
	li $t2, 0
	bne $t1, $t2, label328
	j label326
label328:
	li $t0, 4188
	sw $t0, -1384($fp)
	lw $t1, -1384($fp)
	li $t2, 0
	bne $t1, $t2, label327
	j label326
label327:
	li $t0, 18172
	sw $t0, -1388($fp)
	lw $t1, -1388($fp)
	li $t2, 0
	bne $t1, $t2, label325
	j label326
label325:
	li $t0, 1
	sw $t0, -1376($fp)
label326:
	addi $sp, $sp, -4
	lw $t0, -1376($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1392($fp)
	addi $sp, $sp, 8
	lw $t0, -1372($fp)
	lw $t1, -1392($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1396($fp)
	lw $t1, -1368($fp)
	lw $t2, -1396($fp)
	bgt $t1, $t2, label323
	j label324
label323:
	li $t0, 1
	sw $t0, -1364($fp)
label324:
	lw $ra, -4($fp)
	lw $v0, -1364($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label329:
	addi $t0, $fp, -84
	sw $t0, -1400($fp)
	li $t0, 0
	sw $t0, -1404($fp)
	li $t0, 0
	sw $t0, -1408($fp)
	li $t0, 0
	sw $t0, -1412($fp)
	li $t0, 21144
	sw $t0, -1416($fp)
	li $t0, 65246
	sw $t0, -1420($fp)
	lw $t1, -1416($fp)
	lw $t2, -1420($fp)
	blt $t1, $t2, label336
	j label337
label336:
	li $t0, 1
	sw $t0, -1412($fp)
label337:
	lw $t0, -568($fp)
	sw $t0, -1424($fp)
	lw $t1, -1412($fp)
	lw $t2, -1424($fp)
	beq $t1, $t2, label334
	j label335
label334:
	li $t0, 1
	sw $t0, -1408($fp)
label335:
	addi $t0, $fp, -72
	sw $t0, -1428($fp)
	lw $t0, -580($fp)
	sw $t0, -1432($fp)
	li $t0, 4
	lw $t1, -1432($fp)
	mul $t0, $t0, $t1
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	lw $t1, -1428($fp)
	add $t0, $t0, $t1
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	lw $t1, 0($t0)
	sw $t1, -1444($fp)
	lw $t1, -1408($fp)
	lw $t2, -1444($fp)
	bne $t1, $t2, label332
	j label333
label332:
	li $t0, 1
	sw $t0, -1404($fp)
label333:
	li $t0, 4
	lw $t1, -1404($fp)
	mul $t0, $t0, $t1
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	lw $t1, -1400($fp)
	add $t0, $t0, $t1
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	lw $t1, 0($t0)
	sw $t1, -1456($fp)
	lw $t1, -1456($fp)
	li $t2, 0
	bne $t1, $t2, label330
	j label331
label330:
	li $t0, 42656
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	sw $t0, -1468($fp)
label338:
	li $t0, 1494
	sw $t0, -1472($fp)
	lw $t1, -1472($fp)
	li $t2, 0
	bne $t1, $t2, label339
	j label340
label339:
label341:
	addi $t0, $fp, -32
	sw $t0, -1476($fp)
	li $t0, 0
	sw $t0, -1480($fp)
	li $t0, 37476
	sw $t0, -1484($fp)
	lw $t1, -1484($fp)
	li $t2, 0
	bne $t1, $t2, label345
	j label344
label344:
	li $t0, 1
	sw $t0, -1480($fp)
label345:
	li $t0, 4
	lw $t1, -1480($fp)
	mul $t0, $t0, $t1
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	lw $t1, -1476($fp)
	add $t0, $t0, $t1
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	lw $t1, 0($t0)
	sw $t1, -1496($fp)
	lw $t1, -1496($fp)
	li $t2, 0
	bne $t1, $t2, label342
	j label343
label342:
label346:
	li $t0, 21801
	sw $t0, -1500($fp)
	lw $t1, -1500($fp)
	li $t2, 0
	bne $t1, $t2, label349
	j label348
label349:
	li $t0, 0
	sw $t0, -1504($fp)
	li $t0, 63173
	sw $t0, -1508($fp)
	lw $t1, -1508($fp)
	li $t2, 0
	bne $t1, $t2, label350
	j label351
label350:
	li $t0, 1
	sw $t0, -1504($fp)
label351:
	li $t0, 41747
	sw $t0, -1512($fp)
	lw $t0, -1504($fp)
	lw $t1, -1512($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1516($fp)
	lw $t1, -1516($fp)
	li $t2, 0
	bne $t1, $t2, label347
	j label348
label347:
	li $t0, 0
	sw $t0, -1520($fp)
	lw $t0, -580($fp)
	sw $t0, -1524($fp)
	lw $t0, -448($fp)
	sw $t0, -1528($fp)
	lw $t0, -196($fp)
	sw $t0, -1532($fp)
	lw $t0, -1528($fp)
	lw $t1, -1532($fp)
	sub $t0, $t0, $t1
	sw $t0, -1536($fp)
	lw $t1, -1524($fp)
	lw $t2, -1536($fp)
	bne $t1, $t2, label352
	j label353
label352:
	li $t0, 1
	sw $t0, -1520($fp)
label353:
	lw $t0, -1520($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -1540($fp)
	j label346
label348:
	j label341
label343:
	j label338
label340:
	lw $t0, -1464($fp)
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1548($fp)
	addi $t0, $fp, -84
	sw $t0, -1552($fp)
	li $t0, 0
	sw $t0, -1556($fp)
	lw $t0, -1464($fp)
	sw $t0, -1560($fp)
	lw $t1, -1560($fp)
	li $t2, 0
	bne $t1, $t2, label356
	j label358
label358:
	lw $t0, -12($fp)
	sw $t0, -1564($fp)
	lw $t1, -1564($fp)
	li $t2, 0
	bne $t1, $t2, label356
	j label357
label356:
	li $t0, 1
	sw $t0, -1556($fp)
label357:
	li $t0, 4
	lw $t1, -1556($fp)
	mul $t0, $t0, $t1
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	lw $t1, -1552($fp)
	add $t0, $t0, $t1
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	lw $t1, 0($t0)
	sw $t1, -1576($fp)
	li $t0, 0
	lw $t1, -1576($fp)
	sub $t0, $t0, $t1
	sw $t0, -1580($fp)
	li $t0, 5322
	sw $t0, -1584($fp)
	li $t0, 0
	lw $t1, -1584($fp)
	sub $t0, $t0, $t1
	sw $t0, -1588($fp)
	addi $sp, $sp, -4
	lw $t0, -1588($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1592($fp)
	addi $sp, $sp, 8
	li $t0, 41739
	sw $t0, -1596($fp)
	lw $t0, -1592($fp)
	lw $t1, -1596($fp)
	mul $t0, $t0, $t1
	sw $t0, -1600($fp)
	li $t0, 59108
	sw $t0, -1604($fp)
	lw $t0, -1600($fp)
	lw $t1, -1604($fp)
	sub $t0, $t0, $t1
	sw $t0, -1608($fp)
	lw $t1, -1580($fp)
	lw $t2, -1608($fp)
	ble $t1, $t2, label354
	j label355
label354:
	li $t0, 1
	sw $t0, -1548($fp)
label355:
	lw $ra, -4($fp)
	lw $v0, -1548($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1464($fp)
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1616($fp)
	addi $t0, $fp, -116
	sw $t0, -1620($fp)
	li $t0, 10367
	sw $t0, -1624($fp)
	lw $t0, -448($fp)
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
	bne $t1, $t2, label359
	j label360
label359:
	li $t0, 1
	sw $t0, -1616($fp)
label360:
	lw $ra, -4($fp)
	lw $v0, -1616($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label329
label331:
label361:
	jal f6
	sw $v0, -1648($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -1648($fp)
	sub $t0, $t0, $t1
	sw $t0, -1652($fp)
	li $t0, 48910
	sw $t0, -1656($fp)
	lw $t1, -1652($fp)
	lw $t2, -1656($fp)
	beq $t1, $t2, label362
	j label363
label362:
	li $t0, 20467
	sw $t0, -1660($fp)
	lw $t0, -196($fp)
	sw $t0, -1664($fp)
	lw $t0, -1660($fp)
	lw $t1, -1664($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1668($fp)
	lw $t1, -1668($fp)
	li $t2, 0
	bne $t1, $t2, label364
	j label365
label364:
label367:
	li $t0, 0
	sw $t0, -1672($fp)
	li $t0, 0
	sw $t0, -1676($fp)
	lw $t0, -196($fp)
	sw $t0, -1680($fp)
	lw $t0, -448($fp)
	sw $t0, -1684($fp)
	lw $t0, -1680($fp)
	lw $t1, -1684($fp)
	sub $t0, $t0, $t1
	sw $t0, -1688($fp)
	li $t0, 0
	sw $t0, -1692($fp)
	lw $t0, -484($fp)
	sw $t0, -1696($fp)
	lw $t1, -1696($fp)
	li $t2, 0
	bne $t1, $t2, label375
	j label374
label374:
	li $t0, 1
	sw $t0, -1692($fp)
label375:
	lw $t1, -1688($fp)
	lw $t2, -1692($fp)
	bge $t1, $t2, label372
	j label373
label372:
	li $t0, 1
	sw $t0, -1676($fp)
label373:
	li $t0, 0
	sw $t0, -1700($fp)
	li $t0, 49216
	sw $t0, -1704($fp)
	li $t0, 0
	lw $t1, -1704($fp)
	sub $t0, $t0, $t1
	sw $t0, -1708($fp)
	li $t0, 58830
	sw $t0, -1712($fp)
	lw $t1, -1708($fp)
	lw $t2, -1712($fp)
	blt $t1, $t2, label376
	j label377
label376:
	li $t0, 1
	sw $t0, -1700($fp)
label377:
	lw $t1, -1676($fp)
	lw $t2, -1700($fp)
	beq $t1, $t2, label370
	j label371
label370:
	li $t0, 1
	sw $t0, -1672($fp)
label371:
	lw $t0, -568($fp)
	sw $t0, -1716($fp)
	lw $t1, -1672($fp)
	lw $t2, -1716($fp)
	bne $t1, $t2, label368
	j label369
label368:
	jal f6
	sw $v0, -1720($fp)
	addi $sp, $sp, 4
	jal f6
	sw $v0, -1724($fp)
	addi $sp, $sp, 4
	lw $t0, -1720($fp)
	lw $t1, -1724($fp)
	mul $t0, $t0, $t1
	sw $t0, -1728($fp)
	lw $ra, -4($fp)
	lw $v0, -1728($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label367
label369:
	j label366
label365:
	li $t0, 63300
	sw $t0, -1892($fp)
	addi $t0, $fp, -1756
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
	li $t0, 31863
	sw $t0, -1916($fp)
	addi $t0, $fp, -1756
	sw $t0, -1920($fp)
	li $t0, 1
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1928($fp)
	lw $t0, -1920($fp)
	lw $t1, -1928($fp)
	add $t0, $t0, $t1
	sw $t0, -1932($fp)
	lw $t0, -1916($fp)
	lw $t1, -1932($fp)
	sw $t0, 0($t1)
	lw $t0, -1932($fp)
	lw $t1, 0($t0)
	sw $t1, -1936($fp)
	li $t0, 44630
	sw $t0, -1940($fp)
	addi $t0, $fp, -1756
	sw $t0, -1944($fp)
	li $t0, 2
	sw $t0, -1948($fp)
	lw $t0, -1948($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1952($fp)
	lw $t0, -1944($fp)
	lw $t1, -1952($fp)
	add $t0, $t0, $t1
	sw $t0, -1956($fp)
	lw $t0, -1940($fp)
	lw $t1, -1956($fp)
	sw $t0, 0($t1)
	lw $t0, -1956($fp)
	lw $t1, 0($t0)
	sw $t1, -1960($fp)
	li $t0, 27439
	sw $t0, -1964($fp)
	addi $t0, $fp, -1756
	sw $t0, -1968($fp)
	li $t0, 3
	sw $t0, -1972($fp)
	lw $t0, -1972($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1976($fp)
	lw $t0, -1968($fp)
	lw $t1, -1976($fp)
	add $t0, $t0, $t1
	sw $t0, -1980($fp)
	lw $t0, -1964($fp)
	lw $t1, -1980($fp)
	sw $t0, 0($t1)
	lw $t0, -1980($fp)
	lw $t1, 0($t0)
	sw $t1, -1984($fp)
	li $t0, 21313
	sw $t0, -1988($fp)
	addi $t0, $fp, -1756
	sw $t0, -1992($fp)
	li $t0, 4
	sw $t0, -1996($fp)
	lw $t0, -1996($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2000($fp)
	lw $t0, -1992($fp)
	lw $t1, -2000($fp)
	add $t0, $t0, $t1
	sw $t0, -2004($fp)
	lw $t0, -1988($fp)
	lw $t1, -2004($fp)
	sw $t0, 0($t1)
	lw $t0, -2004($fp)
	lw $t1, 0($t0)
	sw $t1, -2008($fp)
	li $t0, 13453
	sw $t0, -2012($fp)
	addi $t0, $fp, -1756
	sw $t0, -2016($fp)
	li $t0, 5
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2024($fp)
	lw $t0, -2016($fp)
	lw $t1, -2024($fp)
	add $t0, $t0, $t1
	sw $t0, -2028($fp)
	lw $t0, -2012($fp)
	lw $t1, -2028($fp)
	sw $t0, 0($t1)
	lw $t0, -2028($fp)
	lw $t1, 0($t0)
	sw $t1, -2032($fp)
	li $t0, 45948
	sw $t0, -2036($fp)
	addi $t0, $fp, -1756
	sw $t0, -2040($fp)
	li $t0, 6
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2048($fp)
	lw $t0, -2040($fp)
	lw $t1, -2048($fp)
	add $t0, $t0, $t1
	sw $t0, -2052($fp)
	lw $t0, -2036($fp)
	lw $t1, -2052($fp)
	sw $t0, 0($t1)
	lw $t0, -2052($fp)
	lw $t1, 0($t0)
	sw $t1, -2056($fp)
	li $t0, 27795
	sw $t0, -2060($fp)
	addi $t0, $fp, -1796
	sw $t0, -2064($fp)
	li $t0, 0
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2072($fp)
	lw $t0, -2064($fp)
	lw $t1, -2072($fp)
	add $t0, $t0, $t1
	sw $t0, -2076($fp)
	lw $t0, -2060($fp)
	lw $t1, -2076($fp)
	sw $t0, 0($t1)
	lw $t0, -2076($fp)
	lw $t1, 0($t0)
	sw $t1, -2080($fp)
	li $t0, 12540
	sw $t0, -2084($fp)
	addi $t0, $fp, -1796
	sw $t0, -2088($fp)
	li $t0, 1
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2096($fp)
	lw $t0, -2088($fp)
	lw $t1, -2096($fp)
	add $t0, $t0, $t1
	sw $t0, -2100($fp)
	lw $t0, -2084($fp)
	lw $t1, -2100($fp)
	sw $t0, 0($t1)
	lw $t0, -2100($fp)
	lw $t1, 0($t0)
	sw $t1, -2104($fp)
	li $t0, 57888
	sw $t0, -2108($fp)
	addi $t0, $fp, -1796
	sw $t0, -2112($fp)
	li $t0, 2
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2120($fp)
	lw $t0, -2112($fp)
	lw $t1, -2120($fp)
	add $t0, $t0, $t1
	sw $t0, -2124($fp)
	lw $t0, -2108($fp)
	lw $t1, -2124($fp)
	sw $t0, 0($t1)
	lw $t0, -2124($fp)
	lw $t1, 0($t0)
	sw $t1, -2128($fp)
	li $t0, 1066
	sw $t0, -2132($fp)
	addi $t0, $fp, -1796
	sw $t0, -2136($fp)
	li $t0, 3
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
	li $t0, 63132
	sw $t0, -2156($fp)
	addi $t0, $fp, -1796
	sw $t0, -2160($fp)
	li $t0, 4
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
	li $t0, 47852
	sw $t0, -2180($fp)
	addi $t0, $fp, -1796
	sw $t0, -2184($fp)
	li $t0, 5
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
	li $t0, 5255
	sw $t0, -2204($fp)
	addi $t0, $fp, -1796
	sw $t0, -2208($fp)
	li $t0, 6
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
	li $t0, 15768
	sw $t0, -2228($fp)
	addi $t0, $fp, -1796
	sw $t0, -2232($fp)
	li $t0, 7
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
	li $t0, 3460
	sw $t0, -2252($fp)
	addi $t0, $fp, -1796
	sw $t0, -2256($fp)
	li $t0, 8
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
	li $t0, 4965
	sw $t0, -2276($fp)
	addi $t0, $fp, -1796
	sw $t0, -2280($fp)
	li $t0, 9
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
	li $t0, 58424
	sw $t0, -2300($fp)
	lw $t0, -2300($fp)
	sw $t0, -2304($fp)
	lw $t0, -2304($fp)
	sw $t0, -2308($fp)
	li $t0, 4954
	sw $t0, -2312($fp)
	lw $t0, -2312($fp)
	sw $t0, -2316($fp)
	lw $t0, -2316($fp)
	sw $t0, -2320($fp)
	li $t0, 42441
	sw $t0, -2324($fp)
	addi $t0, $fp, -1808
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
	li $t0, 14690
	sw $t0, -2348($fp)
	addi $t0, $fp, -1808
	sw $t0, -2352($fp)
	li $t0, 1
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2360($fp)
	lw $t0, -2352($fp)
	lw $t1, -2360($fp)
	add $t0, $t0, $t1
	sw $t0, -2364($fp)
	lw $t0, -2348($fp)
	lw $t1, -2364($fp)
	sw $t0, 0($t1)
	lw $t0, -2364($fp)
	lw $t1, 0($t0)
	sw $t1, -2368($fp)
	li $t0, 2591
	sw $t0, -2372($fp)
	addi $t0, $fp, -1808
	sw $t0, -2376($fp)
	li $t0, 2
	sw $t0, -2380($fp)
	lw $t0, -2380($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2384($fp)
	lw $t0, -2376($fp)
	lw $t1, -2384($fp)
	add $t0, $t0, $t1
	sw $t0, -2388($fp)
	lw $t0, -2372($fp)
	lw $t1, -2388($fp)
	sw $t0, 0($t1)
	lw $t0, -2388($fp)
	lw $t1, 0($t0)
	sw $t1, -2392($fp)
	li $t0, 18652
	sw $t0, -2396($fp)
	addi $t0, $fp, -1828
	sw $t0, -2400($fp)
	li $t0, 0
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2408($fp)
	lw $t0, -2400($fp)
	lw $t1, -2408($fp)
	add $t0, $t0, $t1
	sw $t0, -2412($fp)
	lw $t0, -2396($fp)
	lw $t1, -2412($fp)
	sw $t0, 0($t1)
	lw $t0, -2412($fp)
	lw $t1, 0($t0)
	sw $t1, -2416($fp)
	li $t0, 20012
	sw $t0, -2420($fp)
	addi $t0, $fp, -1828
	sw $t0, -2424($fp)
	li $t0, 1
	sw $t0, -2428($fp)
	lw $t0, -2428($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2432($fp)
	lw $t0, -2424($fp)
	lw $t1, -2432($fp)
	add $t0, $t0, $t1
	sw $t0, -2436($fp)
	lw $t0, -2420($fp)
	lw $t1, -2436($fp)
	sw $t0, 0($t1)
	lw $t0, -2436($fp)
	lw $t1, 0($t0)
	sw $t1, -2440($fp)
	li $t0, 44330
	sw $t0, -2444($fp)
	addi $t0, $fp, -1828
	sw $t0, -2448($fp)
	li $t0, 2
	sw $t0, -2452($fp)
	lw $t0, -2452($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2456($fp)
	lw $t0, -2448($fp)
	lw $t1, -2456($fp)
	add $t0, $t0, $t1
	sw $t0, -2460($fp)
	lw $t0, -2444($fp)
	lw $t1, -2460($fp)
	sw $t0, 0($t1)
	lw $t0, -2460($fp)
	lw $t1, 0($t0)
	sw $t1, -2464($fp)
	li $t0, 12225
	sw $t0, -2468($fp)
	addi $t0, $fp, -1828
	sw $t0, -2472($fp)
	li $t0, 3
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2480($fp)
	lw $t0, -2472($fp)
	lw $t1, -2480($fp)
	add $t0, $t0, $t1
	sw $t0, -2484($fp)
	lw $t0, -2468($fp)
	lw $t1, -2484($fp)
	sw $t0, 0($t1)
	lw $t0, -2484($fp)
	lw $t1, 0($t0)
	sw $t1, -2488($fp)
	li $t0, 30379
	sw $t0, -2492($fp)
	addi $t0, $fp, -1828
	sw $t0, -2496($fp)
	li $t0, 4
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2504($fp)
	lw $t0, -2496($fp)
	lw $t1, -2504($fp)
	add $t0, $t0, $t1
	sw $t0, -2508($fp)
	lw $t0, -2492($fp)
	lw $t1, -2508($fp)
	sw $t0, 0($t1)
	lw $t0, -2508($fp)
	lw $t1, 0($t0)
	sw $t1, -2512($fp)
	li $t0, 27704
	sw $t0, -2516($fp)
	lw $t0, -2516($fp)
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	sw $t0, -2524($fp)
	li $t0, 32692
	sw $t0, -2528($fp)
	addi $t0, $fp, -1856
	sw $t0, -2532($fp)
	li $t0, 0
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2540($fp)
	lw $t0, -2532($fp)
	lw $t1, -2540($fp)
	add $t0, $t0, $t1
	sw $t0, -2544($fp)
	lw $t0, -2528($fp)
	lw $t1, -2544($fp)
	sw $t0, 0($t1)
	lw $t0, -2544($fp)
	lw $t1, 0($t0)
	sw $t1, -2548($fp)
	li $t0, 14060
	sw $t0, -2552($fp)
	addi $t0, $fp, -1856
	sw $t0, -2556($fp)
	li $t0, 1
	sw $t0, -2560($fp)
	lw $t0, -2560($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2564($fp)
	lw $t0, -2556($fp)
	lw $t1, -2564($fp)
	add $t0, $t0, $t1
	sw $t0, -2568($fp)
	lw $t0, -2552($fp)
	lw $t1, -2568($fp)
	sw $t0, 0($t1)
	lw $t0, -2568($fp)
	lw $t1, 0($t0)
	sw $t1, -2572($fp)
	li $t0, 20999
	sw $t0, -2576($fp)
	addi $t0, $fp, -1856
	sw $t0, -2580($fp)
	li $t0, 2
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2588($fp)
	lw $t0, -2580($fp)
	lw $t1, -2588($fp)
	add $t0, $t0, $t1
	sw $t0, -2592($fp)
	lw $t0, -2576($fp)
	lw $t1, -2592($fp)
	sw $t0, 0($t1)
	lw $t0, -2592($fp)
	lw $t1, 0($t0)
	sw $t1, -2596($fp)
	li $t0, 30456
	sw $t0, -2600($fp)
	addi $t0, $fp, -1856
	sw $t0, -2604($fp)
	li $t0, 3
	sw $t0, -2608($fp)
	lw $t0, -2608($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2612($fp)
	lw $t0, -2604($fp)
	lw $t1, -2612($fp)
	add $t0, $t0, $t1
	sw $t0, -2616($fp)
	lw $t0, -2600($fp)
	lw $t1, -2616($fp)
	sw $t0, 0($t1)
	lw $t0, -2616($fp)
	lw $t1, 0($t0)
	sw $t1, -2620($fp)
	li $t0, 45923
	sw $t0, -2624($fp)
	addi $t0, $fp, -1856
	sw $t0, -2628($fp)
	li $t0, 4
	sw $t0, -2632($fp)
	lw $t0, -2632($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2636($fp)
	lw $t0, -2628($fp)
	lw $t1, -2636($fp)
	add $t0, $t0, $t1
	sw $t0, -2640($fp)
	lw $t0, -2624($fp)
	lw $t1, -2640($fp)
	sw $t0, 0($t1)
	lw $t0, -2640($fp)
	lw $t1, 0($t0)
	sw $t1, -2644($fp)
	li $t0, 93
	sw $t0, -2648($fp)
	addi $t0, $fp, -1856
	sw $t0, -2652($fp)
	li $t0, 5
	sw $t0, -2656($fp)
	lw $t0, -2656($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2660($fp)
	lw $t0, -2652($fp)
	lw $t1, -2660($fp)
	add $t0, $t0, $t1
	sw $t0, -2664($fp)
	lw $t0, -2648($fp)
	lw $t1, -2664($fp)
	sw $t0, 0($t1)
	lw $t0, -2664($fp)
	lw $t1, 0($t0)
	sw $t1, -2668($fp)
	li $t0, 57895
	sw $t0, -2672($fp)
	addi $t0, $fp, -1856
	sw $t0, -2676($fp)
	li $t0, 6
	sw $t0, -2680($fp)
	lw $t0, -2680($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2684($fp)
	lw $t0, -2676($fp)
	lw $t1, -2684($fp)
	add $t0, $t0, $t1
	sw $t0, -2688($fp)
	lw $t0, -2672($fp)
	lw $t1, -2688($fp)
	sw $t0, 0($t1)
	lw $t0, -2688($fp)
	lw $t1, 0($t0)
	sw $t1, -2692($fp)
	li $t0, 1700
	sw $t0, -2696($fp)
	lw $t0, -2696($fp)
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	sw $t0, -2704($fp)
	li $t0, 13546
	sw $t0, -2708($fp)
	lw $t0, -2708($fp)
	sw $t0, -2712($fp)
	lw $t0, -2712($fp)
	sw $t0, -2716($fp)
	li $t0, 38308
	sw $t0, -2720($fp)
	lw $t0, -2720($fp)
	sw $t0, -2724($fp)
	lw $t0, -2724($fp)
	sw $t0, -2728($fp)
	li $t0, 29495
	sw $t0, -2732($fp)
	lw $t0, -2732($fp)
	sw $t0, -2736($fp)
	lw $t0, -2736($fp)
	sw $t0, -2740($fp)
	li $t0, 26086
	sw $t0, -2744($fp)
	addi $t0, $fp, -1888
	sw $t0, -2748($fp)
	li $t0, 0
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
	li $t0, 30660
	sw $t0, -2768($fp)
	addi $t0, $fp, -1888
	sw $t0, -2772($fp)
	li $t0, 1
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
	li $t0, 30561
	sw $t0, -2792($fp)
	addi $t0, $fp, -1888
	sw $t0, -2796($fp)
	li $t0, 2
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
	li $t0, 23682
	sw $t0, -2816($fp)
	addi $t0, $fp, -1888
	sw $t0, -2820($fp)
	li $t0, 3
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
	li $t0, 12976
	sw $t0, -2840($fp)
	addi $t0, $fp, -1888
	sw $t0, -2844($fp)
	li $t0, 4
	sw $t0, -2848($fp)
	lw $t0, -2848($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2852($fp)
	lw $t0, -2844($fp)
	lw $t1, -2852($fp)
	add $t0, $t0, $t1
	sw $t0, -2856($fp)
	lw $t0, -2840($fp)
	lw $t1, -2856($fp)
	sw $t0, 0($t1)
	lw $t0, -2856($fp)
	lw $t1, 0($t0)
	sw $t1, -2860($fp)
	li $t0, 35816
	sw $t0, -2864($fp)
	addi $t0, $fp, -1888
	sw $t0, -2868($fp)
	li $t0, 5
	sw $t0, -2872($fp)
	lw $t0, -2872($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2876($fp)
	lw $t0, -2868($fp)
	lw $t1, -2876($fp)
	add $t0, $t0, $t1
	sw $t0, -2880($fp)
	lw $t0, -2864($fp)
	lw $t1, -2880($fp)
	sw $t0, 0($t1)
	lw $t0, -2880($fp)
	lw $t1, 0($t0)
	sw $t1, -2884($fp)
	li $t0, 39451
	sw $t0, -2888($fp)
	addi $t0, $fp, -1888
	sw $t0, -2892($fp)
	li $t0, 6
	sw $t0, -2896($fp)
	lw $t0, -2896($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2900($fp)
	lw $t0, -2892($fp)
	lw $t1, -2900($fp)
	add $t0, $t0, $t1
	sw $t0, -2904($fp)
	lw $t0, -2888($fp)
	lw $t1, -2904($fp)
	sw $t0, 0($t1)
	lw $t0, -2904($fp)
	lw $t1, 0($t0)
	sw $t1, -2908($fp)
	li $t0, 16436
	sw $t0, -2912($fp)
	addi $t0, $fp, -1888
	sw $t0, -2916($fp)
	li $t0, 7
	sw $t0, -2920($fp)
	lw $t0, -2920($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2924($fp)
	lw $t0, -2916($fp)
	lw $t1, -2924($fp)
	add $t0, $t0, $t1
	sw $t0, -2928($fp)
	lw $t0, -2912($fp)
	lw $t1, -2928($fp)
	sw $t0, 0($t1)
	lw $t0, -2928($fp)
	lw $t1, 0($t0)
	sw $t1, -2932($fp)
	li $t0, 40782
	sw $t0, -2968($fp)
	addi $t0, $fp, -2964
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
	li $t0, 32339
	sw $t0, -2992($fp)
	addi $t0, $fp, -2964
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
	li $t0, 21390
	sw $t0, -3016($fp)
	addi $t0, $fp, -2964
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
	li $t0, 17687
	sw $t0, -3040($fp)
	addi $t0, $fp, -2964
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
	li $t0, 47029
	sw $t0, -3064($fp)
	addi $t0, $fp, -2964
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
	li $t0, 23981
	sw $t0, -3088($fp)
	addi $t0, $fp, -2964
	sw $t0, -3092($fp)
	li $t0, 5
	sw $t0, -3096($fp)
	lw $t0, -3096($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3100($fp)
	lw $t0, -3092($fp)
	lw $t1, -3100($fp)
	add $t0, $t0, $t1
	sw $t0, -3104($fp)
	lw $t0, -3088($fp)
	lw $t1, -3104($fp)
	sw $t0, 0($t1)
	lw $t0, -3104($fp)
	lw $t1, 0($t0)
	sw $t1, -3108($fp)
	li $t0, 36340
	sw $t0, -3112($fp)
	addi $t0, $fp, -2964
	sw $t0, -3116($fp)
	li $t0, 6
	sw $t0, -3120($fp)
	lw $t0, -3120($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3124($fp)
	lw $t0, -3116($fp)
	lw $t1, -3124($fp)
	add $t0, $t0, $t1
	sw $t0, -3128($fp)
	lw $t0, -3112($fp)
	lw $t1, -3128($fp)
	sw $t0, 0($t1)
	lw $t0, -3128($fp)
	lw $t1, 0($t0)
	sw $t1, -3132($fp)
	li $t0, 1506
	sw $t0, -3136($fp)
	addi $t0, $fp, -2964
	sw $t0, -3140($fp)
	li $t0, 7
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
	li $t0, 2775
	sw $t0, -3160($fp)
	jal f6
	sw $v0, -3164($fp)
	addi $sp, $sp, 4
	lw $t0, -3160($fp)
	lw $t1, -3164($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3168($fp)
	lw $t0, -580($fp)
	sw $t0, -3172($fp)
	addi $t0, $fp, -116
	sw $t0, -3176($fp)
	li $t0, 0
	sw $t0, -3180($fp)
	lw $t0, -196($fp)
	sw $t0, -3184($fp)
	lw $t1, -3184($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label378
label378:
	li $t0, 1
	sw $t0, -3180($fp)
label379:
	li $t0, 4
	lw $t1, -3180($fp)
	mul $t0, $t0, $t1
	sw $t0, -3188($fp)
	lw $t0, -3188($fp)
	lw $t1, -3176($fp)
	add $t0, $t0, $t1
	sw $t0, -3192($fp)
	lw $t0, -3192($fp)
	lw $t1, 0($t0)
	sw $t1, -3196($fp)
	lw $t0, -3172($fp)
	lw $t1, -3196($fp)
	mul $t0, $t0, $t1
	sw $t0, -3200($fp)
	li $t0, 0
	lw $t1, -3200($fp)
	sub $t0, $t0, $t1
	sw $t0, -3204($fp)
	li $t0, 0
	lw $t1, -3204($fp)
	sub $t0, $t0, $t1
	sw $t0, -3208($fp)
	lw $t0, -3168($fp)
	lw $t1, -3208($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3212($fp)
	li $t0, 0
	sw $t0, -3216($fp)
	li $t0, 48565
	sw $t0, -3220($fp)
	li $t0, 0
	lw $t1, -3220($fp)
	sub $t0, $t0, $t1
	sw $t0, -3224($fp)
	li $t0, 31885
	sw $t0, -3228($fp)
	lw $t0, -3224($fp)
	lw $t1, -3228($fp)
	add $t0, $t0, $t1
	sw $t0, -3232($fp)
	addi $sp, $sp, -4
	lw $t0, -3232($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3236($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -2964
	sw $t0, -3240($fp)
	li $t0, 1
	sw $t0, -3244($fp)
	li $t0, 4
	lw $t1, -3244($fp)
	mul $t0, $t0, $t1
	sw $t0, -3248($fp)
	lw $t0, -3248($fp)
	lw $t1, -3240($fp)
	add $t0, $t0, $t1
	sw $t0, -3252($fp)
	lw $t0, -3252($fp)
	lw $t1, 0($t0)
	sw $t1, -3256($fp)
	lw $t0, -3236($fp)
	lw $t1, -3256($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3260($fp)
	addi $t0, $fp, -1756
	sw $t0, -3264($fp)
	lw $t0, -148($fp)
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
	lw $t0, -460($fp)
	sw $t0, -3284($fp)
	lw $t0, -3284($fp)
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -3288($fp)
	addi $sp, $sp, -4
	lw $t0, -3288($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3292($fp)
	addi $sp, $sp, 8
	lw $t0, -3280($fp)
	lw $t1, -3292($fp)
	mul $t0, $t0, $t1
	sw $t0, -3296($fp)
	li $t0, 0
	lw $t1, -3296($fp)
	sub $t0, $t0, $t1
	sw $t0, -3300($fp)
	lw $t1, -3260($fp)
	lw $t2, -3300($fp)
	bge $t1, $t2, label380
	j label381
label380:
	li $t0, 1
	sw $t0, -3216($fp)
label381:
	li $t0, 0
	sw $t0, -3304($fp)
	jal f6
	sw $v0, -3308($fp)
	addi $sp, $sp, 4
	lw $t1, -3308($fp)
	li $t2, 0
	bne $t1, $t2, label384
	j label383
label384:
	li $t0, 45945
	sw $t0, -3312($fp)
	lw $t1, -3312($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label383
label382:
	li $t0, 1
	sw $t0, -3304($fp)
label383:
	li $t0, 51479
	sw $t0, -3316($fp)
label385:
	addi $t0, $fp, -32
	sw $t0, -3320($fp)
	li $t0, 0
	sw $t0, -3324($fp)
	li $t0, 46178
	sw $t0, -3328($fp)
	lw $t1, -3328($fp)
	li $t2, 0
	bne $t1, $t2, label389
	j label388
label388:
	li $t0, 1
	sw $t0, -3324($fp)
label389:
	lw $t0, -196($fp)
	sw $t0, -3332($fp)
	lw $t0, -3324($fp)
	lw $t1, -3332($fp)
	sub $t0, $t0, $t1
	sw $t0, -3336($fp)
	li $t0, 4
	lw $t1, -3336($fp)
	mul $t0, $t0, $t1
	sw $t0, -3340($fp)
	lw $t0, -3340($fp)
	lw $t1, -3320($fp)
	add $t0, $t0, $t1
	sw $t0, -3344($fp)
	lw $t0, -3344($fp)
	lw $t1, 0($t0)
	sw $t1, -3348($fp)
	lw $t1, -3348($fp)
	li $t2, 0
	bne $t1, $t2, label387
	j label386
label386:
label390:
	lw $t0, -460($fp)
	sw $t0, -3352($fp)
	lw $t1, -3352($fp)
	li $t2, 0
	bne $t1, $t2, label393
	j label392
label393:
	lw $t0, -2520($fp)
	sw $t0, -3356($fp)
	lw $t1, -3356($fp)
	li $t2, 0
	bne $t1, $t2, label391
	j label392
label391:
	jal f6
	sw $v0, -3360($fp)
	addi $sp, $sp, 4
	j label390
label392:
	j label385
label387:
	li $t0, 26332
	sw $t0, -3364($fp)
	lw $t1, -3364($fp)
	li $t2, 0
	bne $t1, $t2, label397
	j label395
label397:
	addi $t0, $fp, -116
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
	li $t0, 28032
	sw $t0, -3388($fp)
	lw $t0, -3384($fp)
	lw $t1, -3388($fp)
	mul $t0, $t0, $t1
	sw $t0, -3392($fp)
	addi $sp, $sp, -4
	lw $t0, -3392($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3396($fp)
	addi $sp, $sp, 8
	lw $t1, -3396($fp)
	li $t2, 0
	bne $t1, $t2, label394
	j label395
label394:
label398:
	li $t0, 0
	sw $t0, -3400($fp)
	li $t0, 65118
	sw $t0, -3404($fp)
	lw $t1, -3404($fp)
	li $t2, 0
	bne $t1, $t2, label403
	j label404
label404:
	lw $t0, -24($fp)
	sw $t0, -3408($fp)
	lw $t1, -3408($fp)
	li $t2, 0
	bne $t1, $t2, label402
	j label403
label402:
	li $t0, 1
	sw $t0, -3400($fp)
label403:
	addi $sp, $sp, -4
	lw $t0, -3400($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3412($fp)
	addi $sp, $sp, 8
	jal f7
	sw $v0, -3416($fp)
	addi $sp, $sp, 4
	li $t0, 11309
	sw $t0, -3420($fp)
	lw $t0, -3416($fp)
	lw $t1, -3420($fp)
	add $t0, $t0, $t1
	sw $t0, -3424($fp)
	lw $t1, -3412($fp)
	lw $t2, -3424($fp)
	bge $t1, $t2, label401
	j label400
label401:
	lw $t0, -472($fp)
	sw $t0, -3428($fp)
	lw $t1, -3428($fp)
	li $t2, 0
	bne $t1, $t2, label399
	j label400
label399:
	li $t0, 0
	sw $t0, -3432($fp)
	li $t0, 0
	sw $t0, -3436($fp)
	lw $t0, -460($fp)
	sw $t0, -3440($fp)
	addi $t0, $fp, -1796
	sw $t0, -3444($fp)
	li $t0, 8
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
	lw $t0, -3440($fp)
	lw $t1, -3460($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3464($fp)
	lw $t0, -448($fp)
	sw $t0, -3468($fp)
	lw $t1, -3464($fp)
	lw $t2, -3468($fp)
	bge $t1, $t2, label407
	j label408
label407:
	li $t0, 1
	sw $t0, -3436($fp)
label408:
	addi $t0, $fp, -1828
	sw $t0, -3472($fp)
	li $t0, 4
	sw $t0, -3476($fp)
	li $t0, 4
	lw $t1, -3476($fp)
	mul $t0, $t0, $t1
	sw $t0, -3480($fp)
	lw $t0, -3480($fp)
	lw $t1, -3472($fp)
	add $t0, $t0, $t1
	sw $t0, -3484($fp)
	lw $t0, -3484($fp)
	lw $t1, 0($t0)
	sw $t1, -3488($fp)
	lw $t1, -3436($fp)
	lw $t2, -3488($fp)
	ble $t1, $t2, label405
	j label406
label405:
	li $t0, 1
	sw $t0, -3432($fp)
label406:
	lw $ra, -4($fp)
	lw $v0, -3432($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label398
label400:
	j label396
label395:
label409:
	li $t0, 0
	sw $t0, -3492($fp)
	lw $t0, -2736($fp)
	sw $t0, -3496($fp)
	lw $t0, -3496($fp)
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -3500($fp)
	lw $t0, -2304($fp)
	sw $t0, -3504($fp)
	lw $t0, -3504($fp)
	sw $t0, -2724($fp)
	lw $t0, -2724($fp)
	sw $t0, -3508($fp)
	li $t0, 0
	sw $t0, -3512($fp)
	lw $t0, -172($fp)
	sw $t0, -3516($fp)
	li $t0, 49351
	sw $t0, -3520($fp)
	lw $t1, -3516($fp)
	lw $t2, -3520($fp)
	beq $t1, $t2, label414
	j label415
label414:
	li $t0, 1
	sw $t0, -3512($fp)
label415:
	addi $sp, $sp, -4
	lw $t0, -3500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3512($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3524($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -3524($fp)
	sub $t0, $t0, $t1
	sw $t0, -3528($fp)
	lw $t1, -3528($fp)
	li $t2, 0
	bne $t1, $t2, label413
	j label412
label412:
	li $t0, 1
	sw $t0, -3492($fp)
label413:
	li $t0, 0
	sw $t0, -3532($fp)
	li $t0, 54945
	sw $t0, -3536($fp)
	lw $t1, -3536($fp)
	li $t2, 0
	bne $t1, $t2, label417
	j label416
label416:
	li $t0, 1
	sw $t0, -3532($fp)
label417:
	lw $t0, -2712($fp)
	sw $t0, -3540($fp)
	lw $t0, -3532($fp)
	lw $t1, -3540($fp)
	sub $t0, $t0, $t1
	sw $t0, -3544($fp)
	lw $t1, -3492($fp)
	lw $t2, -3544($fp)
	bge $t1, $t2, label410
	j label411
label410:
	li $t0, 0
	sw $t0, -3548($fp)
	li $t0, 58369
	sw $t0, -3552($fp)
	li $t0, 33615
	sw $t0, -3556($fp)
	lw $t0, -12($fp)
	sw $t0, -3560($fp)
	li $t0, 23266
	sw $t0, -3564($fp)
	lw $t0, -3560($fp)
	lw $t1, -3564($fp)
	mul $t0, $t0, $t1
	sw $t0, -3568($fp)
	li $t0, 5845
	sw $t0, -3572($fp)
	lw $t0, -3568($fp)
	lw $t1, -3572($fp)
	sub $t0, $t0, $t1
	sw $t0, -3576($fp)
	lw $t0, -568($fp)
	sw $t0, -3580($fp)
	lw $t0, -3580($fp)
	sw $t0, -2712($fp)
	lw $t0, -2712($fp)
	sw $t0, -3584($fp)
	addi $sp, $sp, -4
	lw $t0, -3556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3584($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3588($fp)
	addi $sp, $sp, 16
	lw $t0, -3552($fp)
	lw $t1, -3588($fp)
	add $t0, $t0, $t1
	sw $t0, -3592($fp)
	lw $t1, -3592($fp)
	li $t2, 0
	bne $t1, $t2, label418
	j label420
label420:
	jal f6
	sw $v0, -3596($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -3600($fp)
	li $t0, 55605
	sw $t0, -3604($fp)
	lw $t1, -3604($fp)
	li $t2, 0
	bne $t1, $t2, label422
	j label421
label421:
	li $t0, 1
	sw $t0, -3600($fp)
label422:
	lw $t1, -3596($fp)
	lw $t2, -3600($fp)
	beq $t1, $t2, label418
	j label419
label418:
	li $t0, 1
	sw $t0, -3548($fp)
label419:
	j label409
label411:
label396:
	addi $t0, $fp, -1756
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
	addi $t0, $fp, -1756
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
	addi $t0, $fp, -1756
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
	addi $t0, $fp, -1756
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
	addi $t0, $fp, -1756
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
	addi $t0, $fp, -1756
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
	addi $t0, $fp, -1756
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
	addi $t0, $fp, -1796
	sw $t0, -3748($fp)
	li $t0, 0
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
	addi $t0, $fp, -1796
	sw $t0, -3768($fp)
	li $t0, 1
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
	addi $t0, $fp, -1796
	sw $t0, -3788($fp)
	li $t0, 2
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
	addi $t0, $fp, -1796
	sw $t0, -3808($fp)
	li $t0, 3
	sw $t0, -3812($fp)
	li $t0, 4
	lw $t1, -3812($fp)
	mul $t0, $t0, $t1
	sw $t0, -3816($fp)
	lw $t0, -3816($fp)
	lw $t1, -3808($fp)
	add $t0, $t0, $t1
	sw $t0, -3820($fp)
	lw $t0, -3820($fp)
	lw $t1, 0($t0)
	sw $t1, -3824($fp)
	lw $t0, -3824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1796
	sw $t0, -3828($fp)
	li $t0, 4
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
	addi $t0, $fp, -1796
	sw $t0, -3848($fp)
	li $t0, 5
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
	addi $t0, $fp, -1796
	sw $t0, -3868($fp)
	li $t0, 6
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
	addi $t0, $fp, -1796
	sw $t0, -3888($fp)
	li $t0, 7
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
	addi $t0, $fp, -1796
	sw $t0, -3908($fp)
	li $t0, 8
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
	addi $t0, $fp, -1796
	sw $t0, -3928($fp)
	li $t0, 9
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
	lw $t0, -2304($fp)
	sw $t0, -3948($fp)
	lw $t0, -3948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2316($fp)
	sw $t0, -3952($fp)
	lw $t0, -3952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1808
	sw $t0, -3956($fp)
	li $t0, 0
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
	lw $t0, -3972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1808
	sw $t0, -3976($fp)
	li $t0, 1
	sw $t0, -3980($fp)
	li $t0, 4
	lw $t1, -3980($fp)
	mul $t0, $t0, $t1
	sw $t0, -3984($fp)
	lw $t0, -3984($fp)
	lw $t1, -3976($fp)
	add $t0, $t0, $t1
	sw $t0, -3988($fp)
	lw $t0, -3988($fp)
	lw $t1, 0($t0)
	sw $t1, -3992($fp)
	lw $t0, -3992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1808
	sw $t0, -3996($fp)
	li $t0, 2
	sw $t0, -4000($fp)
	li $t0, 4
	lw $t1, -4000($fp)
	mul $t0, $t0, $t1
	sw $t0, -4004($fp)
	lw $t0, -4004($fp)
	lw $t1, -3996($fp)
	add $t0, $t0, $t1
	sw $t0, -4008($fp)
	lw $t0, -4008($fp)
	lw $t1, 0($t0)
	sw $t1, -4012($fp)
	lw $t0, -4012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1828
	sw $t0, -4016($fp)
	li $t0, 0
	sw $t0, -4020($fp)
	li $t0, 4
	lw $t1, -4020($fp)
	mul $t0, $t0, $t1
	sw $t0, -4024($fp)
	lw $t0, -4024($fp)
	lw $t1, -4016($fp)
	add $t0, $t0, $t1
	sw $t0, -4028($fp)
	lw $t0, -4028($fp)
	lw $t1, 0($t0)
	sw $t1, -4032($fp)
	lw $t0, -4032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1828
	sw $t0, -4036($fp)
	li $t0, 1
	sw $t0, -4040($fp)
	li $t0, 4
	lw $t1, -4040($fp)
	mul $t0, $t0, $t1
	sw $t0, -4044($fp)
	lw $t0, -4044($fp)
	lw $t1, -4036($fp)
	add $t0, $t0, $t1
	sw $t0, -4048($fp)
	lw $t0, -4048($fp)
	lw $t1, 0($t0)
	sw $t1, -4052($fp)
	lw $t0, -4052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1828
	sw $t0, -4056($fp)
	li $t0, 2
	sw $t0, -4060($fp)
	li $t0, 4
	lw $t1, -4060($fp)
	mul $t0, $t0, $t1
	sw $t0, -4064($fp)
	lw $t0, -4064($fp)
	lw $t1, -4056($fp)
	add $t0, $t0, $t1
	sw $t0, -4068($fp)
	lw $t0, -4068($fp)
	lw $t1, 0($t0)
	sw $t1, -4072($fp)
	lw $t0, -4072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1828
	sw $t0, -4076($fp)
	li $t0, 3
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
	lw $t0, -4092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1828
	sw $t0, -4096($fp)
	li $t0, 4
	sw $t0, -4100($fp)
	li $t0, 4
	lw $t1, -4100($fp)
	mul $t0, $t0, $t1
	sw $t0, -4104($fp)
	lw $t0, -4104($fp)
	lw $t1, -4096($fp)
	add $t0, $t0, $t1
	sw $t0, -4108($fp)
	lw $t0, -4108($fp)
	lw $t1, 0($t0)
	sw $t1, -4112($fp)
	lw $t0, -4112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2520($fp)
	sw $t0, -4116($fp)
	lw $t0, -4116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1856
	sw $t0, -4120($fp)
	li $t0, 0
	sw $t0, -4124($fp)
	li $t0, 4
	lw $t1, -4124($fp)
	mul $t0, $t0, $t1
	sw $t0, -4128($fp)
	lw $t0, -4128($fp)
	lw $t1, -4120($fp)
	add $t0, $t0, $t1
	sw $t0, -4132($fp)
	lw $t0, -4132($fp)
	lw $t1, 0($t0)
	sw $t1, -4136($fp)
	lw $t0, -4136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1856
	sw $t0, -4140($fp)
	li $t0, 1
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
	addi $t0, $fp, -1856
	sw $t0, -4160($fp)
	li $t0, 2
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
	addi $t0, $fp, -1856
	sw $t0, -4180($fp)
	li $t0, 3
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
	addi $t0, $fp, -1856
	sw $t0, -4200($fp)
	li $t0, 4
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
	addi $t0, $fp, -1856
	sw $t0, -4220($fp)
	li $t0, 5
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
	addi $t0, $fp, -1856
	sw $t0, -4240($fp)
	li $t0, 6
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
	lw $t0, -2700($fp)
	sw $t0, -4260($fp)
	lw $t0, -4260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2712($fp)
	sw $t0, -4264($fp)
	lw $t0, -4264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2724($fp)
	sw $t0, -4268($fp)
	lw $t0, -4268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2736($fp)
	sw $t0, -4272($fp)
	lw $t0, -4272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1888
	sw $t0, -4276($fp)
	li $t0, 0
	sw $t0, -4280($fp)
	li $t0, 4
	lw $t1, -4280($fp)
	mul $t0, $t0, $t1
	sw $t0, -4284($fp)
	lw $t0, -4284($fp)
	lw $t1, -4276($fp)
	add $t0, $t0, $t1
	sw $t0, -4288($fp)
	lw $t0, -4288($fp)
	lw $t1, 0($t0)
	sw $t1, -4292($fp)
	lw $t0, -4292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1888
	sw $t0, -4296($fp)
	li $t0, 1
	sw $t0, -4300($fp)
	li $t0, 4
	lw $t1, -4300($fp)
	mul $t0, $t0, $t1
	sw $t0, -4304($fp)
	lw $t0, -4304($fp)
	lw $t1, -4296($fp)
	add $t0, $t0, $t1
	sw $t0, -4308($fp)
	lw $t0, -4308($fp)
	lw $t1, 0($t0)
	sw $t1, -4312($fp)
	lw $t0, -4312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1888
	sw $t0, -4316($fp)
	li $t0, 2
	sw $t0, -4320($fp)
	li $t0, 4
	lw $t1, -4320($fp)
	mul $t0, $t0, $t1
	sw $t0, -4324($fp)
	lw $t0, -4324($fp)
	lw $t1, -4316($fp)
	add $t0, $t0, $t1
	sw $t0, -4328($fp)
	lw $t0, -4328($fp)
	lw $t1, 0($t0)
	sw $t1, -4332($fp)
	lw $t0, -4332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1888
	sw $t0, -4336($fp)
	li $t0, 3
	sw $t0, -4340($fp)
	li $t0, 4
	lw $t1, -4340($fp)
	mul $t0, $t0, $t1
	sw $t0, -4344($fp)
	lw $t0, -4344($fp)
	lw $t1, -4336($fp)
	add $t0, $t0, $t1
	sw $t0, -4348($fp)
	lw $t0, -4348($fp)
	lw $t1, 0($t0)
	sw $t1, -4352($fp)
	lw $t0, -4352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1888
	sw $t0, -4356($fp)
	li $t0, 4
	sw $t0, -4360($fp)
	li $t0, 4
	lw $t1, -4360($fp)
	mul $t0, $t0, $t1
	sw $t0, -4364($fp)
	lw $t0, -4364($fp)
	lw $t1, -4356($fp)
	add $t0, $t0, $t1
	sw $t0, -4368($fp)
	lw $t0, -4368($fp)
	lw $t1, 0($t0)
	sw $t1, -4372($fp)
	lw $t0, -4372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1888
	sw $t0, -4376($fp)
	li $t0, 5
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
	lw $t0, -4392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1888
	sw $t0, -4396($fp)
	li $t0, 6
	sw $t0, -4400($fp)
	li $t0, 4
	lw $t1, -4400($fp)
	mul $t0, $t0, $t1
	sw $t0, -4404($fp)
	lw $t0, -4404($fp)
	lw $t1, -4396($fp)
	add $t0, $t0, $t1
	sw $t0, -4408($fp)
	lw $t0, -4408($fp)
	lw $t1, 0($t0)
	sw $t1, -4412($fp)
	lw $t0, -4412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1888
	sw $t0, -4416($fp)
	li $t0, 7
	sw $t0, -4420($fp)
	li $t0, 4
	lw $t1, -4420($fp)
	mul $t0, $t0, $t1
	sw $t0, -4424($fp)
	lw $t0, -4424($fp)
	lw $t1, -4416($fp)
	add $t0, $t0, $t1
	sw $t0, -4428($fp)
	lw $t0, -4428($fp)
	lw $t1, 0($t0)
	sw $t1, -4432($fp)
	lw $t0, -4432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4436($fp)
	li $t0, 0
	sw $t0, -4440($fp)
	li $t0, 0
	sw $t0, -4444($fp)
	lw $t0, -2712($fp)
	sw $t0, -4448($fp)
	li $t0, 27235
	sw $t0, -4452($fp)
	lw $t0, -4448($fp)
	lw $t1, -4452($fp)
	add $t0, $t0, $t1
	sw $t0, -4456($fp)
	li $t0, 51303
	sw $t0, -4460($fp)
	lw $t0, -4456($fp)
	lw $t1, -4460($fp)
	sub $t0, $t0, $t1
	sw $t0, -4464($fp)
	lw $t0, -2304($fp)
	sw $t0, -4468($fp)
	lw $t0, -4468($fp)
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	sw $t0, -4472($fp)
	li $t0, 0
	sw $t0, -4476($fp)
	lw $t0, -580($fp)
	sw $t0, -4480($fp)
	lw $t0, -196($fp)
	sw $t0, -4484($fp)
	lw $t0, -4480($fp)
	lw $t1, -4484($fp)
	add $t0, $t0, $t1
	sw $t0, -4488($fp)
	lw $t1, -4488($fp)
	li $t2, 0
	bne $t1, $t2, label429
	j label431
label431:
	li $t0, 22107
	sw $t0, -4492($fp)
	lw $t1, -4492($fp)
	li $t2, 0
	bne $t1, $t2, label429
	j label430
label429:
	li $t0, 1
	sw $t0, -4476($fp)
label430:
	li $t0, 0
	sw $t0, -4496($fp)
	li $t0, 37099
	sw $t0, -4500($fp)
	lw $t1, -4500($fp)
	li $t2, 0
	bne $t1, $t2, label434
	j label433
label434:
	li $t0, 51216
	sw $t0, -4504($fp)
	lw $t1, -4504($fp)
	li $t2, 0
	bne $t1, $t2, label432
	j label433
label432:
	li $t0, 1
	sw $t0, -4496($fp)
label433:
	addi $sp, $sp, -4
	lw $t0, -4472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4496($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4508($fp)
	addi $sp, $sp, 16
	lw $t1, -4464($fp)
	lw $t2, -4508($fp)
	blt $t1, $t2, label427
	j label428
label427:
	li $t0, 1
	sw $t0, -4444($fp)
label428:
	li $t0, 0
	sw $t0, -4512($fp)
	li $t0, 38605
	sw $t0, -4516($fp)
	lw $t1, -4516($fp)
	li $t2, 0
	bne $t1, $t2, label435
	j label436
label435:
	li $t0, 1
	sw $t0, -4512($fp)
label436:
	lw $t1, -4444($fp)
	lw $t2, -4512($fp)
	beq $t1, $t2, label425
	j label426
label425:
	li $t0, 1
	sw $t0, -4440($fp)
label426:
	jal f6
	sw $v0, -4520($fp)
	addi $sp, $sp, 4
	li $t0, 53992
	sw $t0, -4524($fp)
	lw $t0, -2700($fp)
	sw $t0, -4528($fp)
	lw $t0, -4524($fp)
	lw $t1, -4528($fp)
	mul $t0, $t0, $t1
	sw $t0, -4532($fp)
	lw $t0, -4520($fp)
	lw $t1, -4532($fp)
	add $t0, $t0, $t1
	sw $t0, -4536($fp)
	lw $t1, -4440($fp)
	lw $t2, -4536($fp)
	bne $t1, $t2, label423
	j label424
label423:
	li $t0, 1
	sw $t0, -4436($fp)
label424:
	lw $ra, -4($fp)
	lw $v0, -4436($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -1856
	sw $t0, -4540($fp)
	li $t0, 0
	sw $t0, -4544($fp)
	li $t0, 0
	sw $t0, -4548($fp)
	li $t0, 0
	sw $t0, -4552($fp)
	lw $t0, -460($fp)
	sw $t0, -4556($fp)
	lw $t0, -472($fp)
	sw $t0, -4560($fp)
	lw $t1, -4556($fp)
	lw $t2, -4560($fp)
	beq $t1, $t2, label444
	j label445
label444:
	li $t0, 1
	sw $t0, -4552($fp)
label445:
	li $t0, 5136
	sw $t0, -4564($fp)
	lw $t1, -4552($fp)
	lw $t2, -4564($fp)
	beq $t1, $t2, label442
	j label443
label442:
	li $t0, 1
	sw $t0, -4548($fp)
label443:
	lw $t0, -148($fp)
	sw $t0, -4568($fp)
	lw $t1, -4548($fp)
	lw $t2, -4568($fp)
	beq $t1, $t2, label440
	j label441
label440:
	li $t0, 1
	sw $t0, -4544($fp)
label441:
	li $t0, 4
	lw $t1, -4544($fp)
	mul $t0, $t0, $t1
	sw $t0, -4572($fp)
	lw $t0, -4572($fp)
	lw $t1, -4540($fp)
	add $t0, $t0, $t1
	sw $t0, -4576($fp)
	lw $t0, -4576($fp)
	lw $t1, 0($t0)
	sw $t1, -4580($fp)
	lw $t1, -4580($fp)
	li $t2, 0
	bne $t1, $t2, label437
	j label438
label437:
	addi $t0, $fp, -84
	sw $t0, -4584($fp)
	lw $t0, -2520($fp)
	sw $t0, -4588($fp)
	li $t0, 4
	lw $t1, -4588($fp)
	mul $t0, $t0, $t1
	sw $t0, -4592($fp)
	lw $t0, -4592($fp)
	lw $t1, -4584($fp)
	add $t0, $t0, $t1
	sw $t0, -4596($fp)
	lw $t0, -4596($fp)
	lw $t1, 0($t0)
	sw $t1, -4600($fp)
	addi $t0, $fp, -1796
	sw $t0, -4604($fp)
	li $t0, 2
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
	lw $t0, -4600($fp)
	lw $t1, -4620($fp)
	mul $t0, $t0, $t1
	sw $t0, -4624($fp)
	li $t0, 0
	lw $t1, -4624($fp)
	sub $t0, $t0, $t1
	sw $t0, -4628($fp)
	lw $t0, -12($fp)
	sw $t0, -4632($fp)
	lw $t0, -4628($fp)
	lw $t1, -4632($fp)
	sub $t0, $t0, $t1
	sw $t0, -4636($fp)
	lw $t1, -4636($fp)
	li $t2, 0
	bne $t1, $t2, label446
	j label447
label446:
	addi $t0, $fp, -72
	sw $t0, -4640($fp)
	addi $t0, $fp, -1888
	sw $t0, -4644($fp)
	lw $t0, -2316($fp)
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
	lw $t0, -2520($fp)
	sw $t0, -4664($fp)
	li $t0, 0
	lw $t1, -4664($fp)
	sub $t0, $t0, $t1
	sw $t0, -4668($fp)
	lw $t0, -4660($fp)
	lw $t1, -4668($fp)
	mul $t0, $t0, $t1
	sw $t0, -4672($fp)
	li $t0, 0
	lw $t1, -4672($fp)
	sub $t0, $t0, $t1
	sw $t0, -4676($fp)
	li $t0, 4
	lw $t1, -4676($fp)
	mul $t0, $t0, $t1
	sw $t0, -4680($fp)
	lw $t0, -4680($fp)
	lw $t1, -4640($fp)
	add $t0, $t0, $t1
	sw $t0, -4684($fp)
	lw $t0, -4684($fp)
	lw $t1, 0($t0)
	sw $t1, -4688($fp)
	lw $t1, -4688($fp)
	li $t2, 0
	bne $t1, $t2, label449
	j label450
label449:
	li $t0, 0
	sw $t0, -4692($fp)
	lw $t0, -448($fp)
	sw $t0, -4696($fp)
	lw $t1, -4696($fp)
	li $t2, 0
	bne $t1, $t2, label453
	j label452
label452:
	li $t0, 1
	sw $t0, -4692($fp)
label453:
	lw $t0, -4692($fp)
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	sw $t0, -4700($fp)
	j label451
label450:
	addi $t0, $fp, -1808
	sw $t0, -4704($fp)
	li $t0, 0
	sw $t0, -4708($fp)
	jal f7
	sw $v0, -4712($fp)
	addi $sp, $sp, 4
	lw $t0, -484($fp)
	sw $t0, -4716($fp)
	lw $t1, -4712($fp)
	lw $t2, -4716($fp)
	bne $t1, $t2, label454
	j label455
label454:
	li $t0, 1
	sw $t0, -4708($fp)
label455:
	li $t0, 4
	lw $t1, -4708($fp)
	mul $t0, $t0, $t1
	sw $t0, -4720($fp)
	lw $t0, -4720($fp)
	lw $t1, -4704($fp)
	add $t0, $t0, $t1
	sw $t0, -4724($fp)
	lw $t0, -4724($fp)
	lw $t1, 0($t0)
	sw $t1, -4728($fp)
label451:
	j label448
label447:
	lw $t0, -160($fp)
	sw $t0, -4732($fp)
	li $t0, 0
	lw $t1, -4732($fp)
	sub $t0, $t0, $t1
	sw $t0, -4736($fp)
	lw $t0, -580($fp)
	sw $t0, -4740($fp)
	lw $t0, -4736($fp)
	lw $t1, -4740($fp)
	sub $t0, $t0, $t1
	sw $t0, -4744($fp)
	lw $ra, -4($fp)
	lw $v0, -4744($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label448:
	j label439
label438:
	li $t0, 0
	sw $t0, -4748($fp)
	li $t0, 0
	sw $t0, -4752($fp)
	lw $t0, -580($fp)
	sw $t0, -4756($fp)
	lw $t0, -160($fp)
	sw $t0, -4760($fp)
	lw $t0, -4756($fp)
	lw $t1, -4760($fp)
	mul $t0, $t0, $t1
	sw $t0, -4764($fp)
	li $t0, 20857
	sw $t0, -4768($fp)
	lw $t1, -4764($fp)
	lw $t2, -4768($fp)
	bgt $t1, $t2, label458
	j label459
label458:
	li $t0, 1
	sw $t0, -4752($fp)
label459:
	li $t0, 0
	sw $t0, -4772($fp)
	li $t0, 50900
	sw $t0, -4776($fp)
	lw $t0, -580($fp)
	sw $t0, -4780($fp)
	lw $t1, -4776($fp)
	lw $t2, -4780($fp)
	ble $t1, $t2, label460
	j label461
label460:
	li $t0, 1
	sw $t0, -4772($fp)
label461:
	lw $t1, -4752($fp)
	lw $t2, -4772($fp)
	beq $t1, $t2, label456
	j label457
label456:
	li $t0, 1
	sw $t0, -4748($fp)
label457:
	lw $t0, -4748($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -4784($fp)
	li $t0, 0
	sw $t0, -4788($fp)
	lw $t0, -568($fp)
	sw $t0, -4792($fp)
	li $t0, 0
	sw $t0, -4796($fp)
	addi $t0, $fp, -1856
	sw $t0, -4800($fp)
	lw $t0, -448($fp)
	sw $t0, -4804($fp)
	li $t0, 4
	lw $t1, -4804($fp)
	mul $t0, $t0, $t1
	sw $t0, -4808($fp)
	lw $t0, -4808($fp)
	lw $t1, -4800($fp)
	add $t0, $t0, $t1
	sw $t0, -4812($fp)
	lw $t0, -4812($fp)
	lw $t1, 0($t0)
	sw $t1, -4816($fp)
	lw $t1, -4816($fp)
	li $t2, 0
	bne $t1, $t2, label466
	j label465
label465:
	li $t0, 1
	sw $t0, -4796($fp)
label466:
	lw $t1, -4792($fp)
	lw $t2, -4796($fp)
	bge $t1, $t2, label462
	j label464
label464:
	li $t0, 4879
	sw $t0, -4820($fp)
	lw $t0, -184($fp)
	sw $t0, -4824($fp)
	li $t0, 1499
	sw $t0, -4828($fp)
	lw $t0, -4824($fp)
	lw $t1, -4828($fp)
	mul $t0, $t0, $t1
	sw $t0, -4832($fp)
	lw $t1, -4820($fp)
	lw $t2, -4832($fp)
	bgt $t1, $t2, label462
	j label463
label462:
	li $t0, 1
	sw $t0, -4788($fp)
label463:
label439:
	addi $t0, $fp, -1756
	sw $t0, -4836($fp)
	addi $t0, $fp, -32
	sw $t0, -4840($fp)
	lw $t0, -2712($fp)
	sw $t0, -4844($fp)
	li $t0, 4
	lw $t1, -4844($fp)
	mul $t0, $t0, $t1
	sw $t0, -4848($fp)
	lw $t0, -4848($fp)
	lw $t1, -4840($fp)
	add $t0, $t0, $t1
	sw $t0, -4852($fp)
	lw $t0, -4852($fp)
	lw $t1, 0($t0)
	sw $t1, -4856($fp)
	li $t0, 4
	lw $t1, -4856($fp)
	mul $t0, $t0, $t1
	sw $t0, -4860($fp)
	lw $t0, -4860($fp)
	lw $t1, -4836($fp)
	add $t0, $t0, $t1
	sw $t0, -4864($fp)
	lw $t0, -4864($fp)
	lw $t1, 0($t0)
	sw $t1, -4868($fp)
	li $t0, 11696
	sw $t0, -4872($fp)
	lw $t1, -4868($fp)
	lw $t2, -4872($fp)
	ble $t1, $t2, label467
	j label468
label467:
	addi $t0, $fp, -32
	sw $t0, -4876($fp)
	addi $t0, $fp, -1856
	sw $t0, -4880($fp)
	li $t0, 2
	sw $t0, -4884($fp)
	li $t0, 4
	lw $t1, -4884($fp)
	mul $t0, $t0, $t1
	sw $t0, -4888($fp)
	lw $t0, -4888($fp)
	lw $t1, -4880($fp)
	add $t0, $t0, $t1
	sw $t0, -4892($fp)
	lw $t0, -4892($fp)
	lw $t1, 0($t0)
	sw $t1, -4896($fp)
	li $t0, 0
	lw $t1, -4896($fp)
	sub $t0, $t0, $t1
	sw $t0, -4900($fp)
	li $t0, 0
	sw $t0, -4904($fp)
	li $t0, 39729
	sw $t0, -4908($fp)
	lw $t1, -4908($fp)
	li $t2, 0
	bne $t1, $t2, label471
	j label470
label470:
	li $t0, 1
	sw $t0, -4904($fp)
label471:
	lw $t0, -4900($fp)
	lw $t1, -4904($fp)
	add $t0, $t0, $t1
	sw $t0, -4912($fp)
	li $t0, 4
	lw $t1, -4912($fp)
	mul $t0, $t0, $t1
	sw $t0, -4916($fp)
	lw $t0, -4916($fp)
	lw $t1, -4876($fp)
	add $t0, $t0, $t1
	sw $t0, -4920($fp)
	lw $t0, -4920($fp)
	lw $t1, 0($t0)
	sw $t1, -4924($fp)
label468:
label366:
	j label361
label363:
	lw $t0, -12($fp)
	sw $t0, -4928($fp)
	lw $t0, -4928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -4932($fp)
	lw $t0, -4932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4936($fp)
	lw $t0, -24($fp)
	sw $t0, -4940($fp)
	lw $t1, -4940($fp)
	li $t2, 0
	bne $t1, $t2, label472
	j label474
label474:
	li $t0, 56033
	sw $t0, -4944($fp)
	lw $t0, -12($fp)
	sw $t0, -4948($fp)
	lw $t0, -4944($fp)
	lw $t1, -4948($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4952($fp)
	lw $t0, -12($fp)
	sw $t0, -4956($fp)
	lw $t0, -4952($fp)
	lw $t1, -4956($fp)
	add $t0, $t0, $t1
	sw $t0, -4960($fp)
	lw $t1, -4960($fp)
	li $t2, 0
	bne $t1, $t2, label472
	j label473
label472:
	li $t0, 1
	sw $t0, -4936($fp)
label473:
	lw $ra, -4($fp)
	lw $v0, -4936($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4232
	li $t0, 51346
	sw $t0, -152($fp)
	addi $t0, $fp, -44
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
	li $t0, 31720
	sw $t0, -176($fp)
	addi $t0, $fp, -44
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
	li $t0, 16165
	sw $t0, -200($fp)
	addi $t0, $fp, -44
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
	li $t0, 27780
	sw $t0, -224($fp)
	addi $t0, $fp, -44
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
	li $t0, 54273
	sw $t0, -248($fp)
	addi $t0, $fp, -44
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
	li $t0, 65516
	sw $t0, -272($fp)
	addi $t0, $fp, -44
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
	li $t0, 17189
	sw $t0, -296($fp)
	addi $t0, $fp, -44
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
	li $t0, 47107
	sw $t0, -320($fp)
	addi $t0, $fp, -44
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
	li $t0, 23246
	sw $t0, -344($fp)
	addi $t0, $fp, -44
	sw $t0, -348($fp)
	li $t0, 8
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
	li $t0, 23035
	sw $t0, -368($fp)
	addi $t0, $fp, -44
	sw $t0, -372($fp)
	li $t0, 9
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
	li $t0, 15186
	sw $t0, -392($fp)
	addi $t0, $fp, -84
	sw $t0, -396($fp)
	li $t0, 0
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
	li $t0, 13316
	sw $t0, -416($fp)
	addi $t0, $fp, -84
	sw $t0, -420($fp)
	li $t0, 1
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
	li $t0, 50270
	sw $t0, -440($fp)
	addi $t0, $fp, -84
	sw $t0, -444($fp)
	li $t0, 2
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
	li $t0, 953
	sw $t0, -464($fp)
	addi $t0, $fp, -84
	sw $t0, -468($fp)
	li $t0, 3
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
	li $t0, 50415
	sw $t0, -488($fp)
	addi $t0, $fp, -84
	sw $t0, -492($fp)
	li $t0, 4
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
	li $t0, 35951
	sw $t0, -512($fp)
	addi $t0, $fp, -84
	sw $t0, -516($fp)
	li $t0, 5
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
	li $t0, 23060
	sw $t0, -536($fp)
	addi $t0, $fp, -84
	sw $t0, -540($fp)
	li $t0, 6
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
	li $t0, 23484
	sw $t0, -560($fp)
	addi $t0, $fp, -84
	sw $t0, -564($fp)
	li $t0, 7
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -572($fp)
	lw $t0, -564($fp)
	lw $t1, -572($fp)
	add $t0, $t0, $t1
	sw $t0, -576($fp)
	lw $t0, -560($fp)
	lw $t1, -576($fp)
	sw $t0, 0($t1)
	lw $t0, -576($fp)
	lw $t1, 0($t0)
	sw $t1, -580($fp)
	li $t0, 24407
	sw $t0, -584($fp)
	addi $t0, $fp, -84
	sw $t0, -588($fp)
	li $t0, 8
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -596($fp)
	lw $t0, -588($fp)
	lw $t1, -596($fp)
	add $t0, $t0, $t1
	sw $t0, -600($fp)
	lw $t0, -584($fp)
	lw $t1, -600($fp)
	sw $t0, 0($t1)
	lw $t0, -600($fp)
	lw $t1, 0($t0)
	sw $t1, -604($fp)
	li $t0, 28196
	sw $t0, -608($fp)
	addi $t0, $fp, -84
	sw $t0, -612($fp)
	li $t0, 9
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
	li $t0, 28438
	sw $t0, -632($fp)
	addi $t0, $fp, -88
	sw $t0, -636($fp)
	li $t0, 0
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
	li $t0, 43343
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	li $t0, 49054
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	li $t0, 13802
	sw $t0, -680($fp)
	addi $t0, $fp, -96
	sw $t0, -684($fp)
	li $t0, 0
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
	li $t0, 48222
	sw $t0, -704($fp)
	addi $t0, $fp, -96
	sw $t0, -708($fp)
	li $t0, 1
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
	li $t0, 50553
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -736($fp)
	li $t0, 25499
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	sw $t0, -748($fp)
	li $t0, 39137
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -760($fp)
	li $t0, 25054
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -772($fp)
	li $t0, 65228
	sw $t0, -776($fp)
	addi $t0, $fp, -104
	sw $t0, -780($fp)
	li $t0, 0
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
	li $t0, 29634
	sw $t0, -800($fp)
	addi $t0, $fp, -104
	sw $t0, -804($fp)
	li $t0, 1
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
	li $t0, 10865
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	sw $t0, -832($fp)
	li $t0, 31412
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	sw $t0, -844($fp)
	li $t0, 45799
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	sw $t0, -856($fp)
	li $t0, 38645
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	sw $t0, -868($fp)
	li $t0, 20150
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	sw $t0, -880($fp)
	li $t0, 45780
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	sw $t0, -892($fp)
	li $t0, 55834
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	sw $t0, -904($fp)
	li $t0, 1721
	sw $t0, -908($fp)
	addi $t0, $fp, -112
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
	li $t0, 3490
	sw $t0, -932($fp)
	addi $t0, $fp, -112
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
	li $t0, 13333
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	sw $t0, -964($fp)
	li $t0, 16907
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	sw $t0, -976($fp)
	li $t0, 16806
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	sw $t0, -988($fp)
	li $t0, 63604
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	sw $t0, -1000($fp)
	li $t0, 17861
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	sw $t0, -1012($fp)
	li $t0, 1685
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	sw $t0, -1024($fp)
	li $t0, 34019
	sw $t0, -1028($fp)
	addi $t0, $fp, -148
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
	li $t0, 40921
	sw $t0, -1052($fp)
	addi $t0, $fp, -148
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
	li $t0, 25169
	sw $t0, -1076($fp)
	addi $t0, $fp, -148
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
	li $t0, 58426
	sw $t0, -1100($fp)
	addi $t0, $fp, -148
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
	li $t0, 3582
	sw $t0, -1124($fp)
	addi $t0, $fp, -148
	sw $t0, -1128($fp)
	li $t0, 4
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
	li $t0, 53608
	sw $t0, -1148($fp)
	addi $t0, $fp, -148
	sw $t0, -1152($fp)
	li $t0, 5
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
	li $t0, 36233
	sw $t0, -1172($fp)
	addi $t0, $fp, -148
	sw $t0, -1176($fp)
	li $t0, 6
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
	li $t0, 52636
	sw $t0, -1196($fp)
	addi $t0, $fp, -148
	sw $t0, -1200($fp)
	li $t0, 7
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
	li $t0, 1874
	sw $t0, -1220($fp)
	addi $t0, $fp, -148
	sw $t0, -1224($fp)
	li $t0, 8
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
	li $t0, 18919
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	sw $t0, -1252($fp)
	li $t0, 37653
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	sw $t0, -1264($fp)
	li $t0, 27373
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -1276($fp)
	li $t0, 58056
	sw $t0, -1280($fp)
	lw $t1, -1280($fp)
	li $t2, 0
	bne $t1, $t2, label475
	j label476
label475:
	li $t0, 0
	sw $t0, -1284($fp)
	lw $t0, -756($fp)
	sw $t0, -1288($fp)
	li $t0, 0
	lw $t1, -1288($fp)
	sub $t0, $t0, $t1
	sw $t0, -1292($fp)
	li $t0, 0
	lw $t1, -1292($fp)
	sub $t0, $t0, $t1
	sw $t0, -1296($fp)
	lw $t1, -1296($fp)
	li $t2, 0
	bne $t1, $t2, label479
	j label478
label478:
	li $t0, 1
	sw $t0, -1284($fp)
label479:
	lw $ra, -4($fp)
	lw $v0, -1284($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label476:
	li $t0, 0
	sw $t0, -1300($fp)
	li $t0, 0
	sw $t0, -1304($fp)
	addi $t0, $fp, -84
	sw $t0, -1308($fp)
	li $t0, 3
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
	lw $t0, -672($fp)
	sw $t0, -1328($fp)
	lw $t0, -732($fp)
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -1336($fp)
	lw $t0, -768($fp)
	sw $t0, -1340($fp)
	li $t0, 0
	lw $t1, -1340($fp)
	sub $t0, $t0, $t1
	sw $t0, -1344($fp)
	li $t0, 0
	lw $t1, -1344($fp)
	sub $t0, $t0, $t1
	sw $t0, -1348($fp)
	li $t0, 0
	sw $t0, -1352($fp)
	addi $t0, $fp, -112
	sw $t0, -1356($fp)
	li $t0, 1
	sw $t0, -1360($fp)
	li $t0, 4
	lw $t1, -1360($fp)
	mul $t0, $t0, $t1
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	lw $t1, -1356($fp)
	add $t0, $t0, $t1
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	lw $t1, 0($t0)
	sw $t1, -1372($fp)
	lw $t1, -1372($fp)
	li $t2, 0
	bne $t1, $t2, label485
	j label484
label484:
	li $t0, 1
	sw $t0, -1352($fp)
label485:
	addi $sp, $sp, -4
	lw $t0, -1328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1352($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1376($fp)
	addi $sp, $sp, 20
	lw $t1, -1324($fp)
	lw $t2, -1376($fp)
	beq $t1, $t2, label482
	j label483
label482:
	li $t0, 1
	sw $t0, -1304($fp)
label483:
	li $t0, 0
	sw $t0, -1380($fp)
	jal f7
	sw $v0, -1384($fp)
	addi $sp, $sp, 4
	lw $t1, -1384($fp)
	li $t2, 0
	bne $t1, $t2, label487
	j label486
label486:
	li $t0, 1
	sw $t0, -1380($fp)
label487:
	li $t0, 13092
	sw $t0, -1388($fp)
	li $t0, 0
	lw $t1, -1388($fp)
	sub $t0, $t0, $t1
	sw $t0, -1392($fp)
	lw $t0, -972($fp)
	sw $t0, -1396($fp)
	lw $t0, -1392($fp)
	lw $t1, -1396($fp)
	add $t0, $t0, $t1
	sw $t0, -1400($fp)
	jal f7
	sw $v0, -1404($fp)
	addi $sp, $sp, 4
	li $t0, 46682
	sw $t0, -1408($fp)
	addi $t0, $fp, -44
	sw $t0, -1412($fp)
	li $t0, 1
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
	addi $sp, $sp, -4
	lw $t0, -1400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1428($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1432($fp)
	addi $sp, $sp, 20
	lw $t0, -1380($fp)
	lw $t1, -1432($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1436($fp)
	lw $t1, -1304($fp)
	lw $t2, -1436($fp)
	bne $t1, $t2, label480
	j label481
label480:
	li $t0, 1
	sw $t0, -1300($fp)
label481:
label488:
	li $t0, 0
	sw $t0, -1440($fp)
	li $t0, 0
	sw $t0, -1444($fp)
	addi $t0, $fp, -148
	sw $t0, -1448($fp)
	lw $t0, 4($fp)
	sw $t0, -1452($fp)
	li $t0, 4
	lw $t1, -1452($fp)
	mul $t0, $t0, $t1
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	lw $t1, -1448($fp)
	add $t0, $t0, $t1
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	lw $t1, 0($t0)
	sw $t1, -1464($fp)
	lw $t0, -996($fp)
	sw $t0, -1468($fp)
	lw $t1, -1464($fp)
	lw $t2, -1468($fp)
	blt $t1, $t2, label495
	j label496
label495:
	li $t0, 1
	sw $t0, -1444($fp)
label496:
	li $t0, 50314
	sw $t0, -1472($fp)
	li $t0, 0
	lw $t1, -1472($fp)
	sub $t0, $t0, $t1
	sw $t0, -1476($fp)
	li $t0, 0
	lw $t1, -1476($fp)
	sub $t0, $t0, $t1
	sw $t0, -1480($fp)
	li $t0, 0
	sw $t0, -1484($fp)
	lw $t0, -840($fp)
	sw $t0, -1488($fp)
	lw $t0, -768($fp)
	sw $t0, -1492($fp)
	lw $t1, -1488($fp)
	lw $t2, -1492($fp)
	bne $t1, $t2, label497
	j label498
label497:
	li $t0, 1
	sw $t0, -1484($fp)
label498:
	li $t0, 51688
	sw $t0, -1496($fp)
	lw $t0, -756($fp)
	sw $t0, -1500($fp)
	lw $t0, -1496($fp)
	lw $t1, -1500($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1504($fp)
	li $t0, 0
	lw $t1, -1504($fp)
	sub $t0, $t0, $t1
	sw $t0, -1508($fp)
	li $t0, 0
	sw $t0, -1512($fp)
	li $t0, 14813
	sw $t0, -1516($fp)
	lw $t0, -972($fp)
	sw $t0, -1520($fp)
	lw $t1, -1516($fp)
	lw $t2, -1520($fp)
	beq $t1, $t2, label499
	j label500
label499:
	li $t0, 1
	sw $t0, -1512($fp)
label500:
	addi $sp, $sp, -4
	lw $t0, -1484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1512($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1524($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -1444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1524($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1528($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -1532($fp)
	li $t0, 36980
	sw $t0, -1536($fp)
	lw $t1, -1536($fp)
	li $t2, 0
	bne $t1, $t2, label504
	j label503
label504:
	lw $t0, -1248($fp)
	sw $t0, -1540($fp)
	lw $t1, -1540($fp)
	li $t2, 0
	bne $t1, $t2, label501
	j label503
label503:
	lw $t0, -1020($fp)
	sw $t0, -1544($fp)
	lw $t1, -1544($fp)
	li $t2, 0
	bne $t1, $t2, label501
	j label502
label501:
	li $t0, 1
	sw $t0, -1532($fp)
label502:
	li $t0, 48197
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	sw $t0, -1552($fp)
	lw $t0, -1260($fp)
	sw $t0, -1556($fp)
	li $t0, 0
	lw $t1, -1556($fp)
	sub $t0, $t0, $t1
	sw $t0, -1560($fp)
	addi $sp, $sp, -4
	lw $t0, -1528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1560($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1564($fp)
	addi $sp, $sp, 20
	lw $t1, -1564($fp)
	li $t2, 0
	bne $t1, $t2, label494
	j label493
label493:
	li $t0, 1
	sw $t0, -1440($fp)
label494:
	li $t0, 31720
	sw $t0, -1568($fp)
	lw $t1, -1440($fp)
	lw $t2, -1568($fp)
	bge $t1, $t2, label489
	j label492
label492:
	lw $t0, -828($fp)
	sw $t0, -1572($fp)
	lw $t1, -1572($fp)
	li $t2, 0
	bne $t1, $t2, label489
	j label491
label491:
	li $t0, 0
	sw $t0, -1576($fp)
	addi $t0, $fp, -44
	sw $t0, -1580($fp)
	li $t0, 2
	sw $t0, -1584($fp)
	li $t0, 4
	lw $t1, -1584($fp)
	mul $t0, $t0, $t1
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	lw $t1, -1580($fp)
	add $t0, $t0, $t1
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	lw $t1, 0($t0)
	sw $t1, -1596($fp)
	lw $t1, -1596($fp)
	li $t2, 0
	bne $t1, $t2, label506
	j label505
label505:
	li $t0, 1
	sw $t0, -1576($fp)
label506:
	lw $t0, -888($fp)
	sw $t0, -1600($fp)
	li $t0, 49581
	sw $t0, -1604($fp)
	lw $t0, -1600($fp)
	lw $t1, -1604($fp)
	sub $t0, $t0, $t1
	sw $t0, -1608($fp)
	lw $t1, -1576($fp)
	lw $t2, -1608($fp)
	bne $t1, $t2, label489
	j label490
label489:
	li $t0, 0
	sw $t0, -1612($fp)
	lw $t0, -888($fp)
	sw $t0, -1616($fp)
	lw $t1, -1616($fp)
	li $t2, 0
	bne $t1, $t2, label507
	j label509
label509:
	li $t0, 45988
	sw $t0, -1620($fp)
	li $t0, 15649
	sw $t0, -1624($fp)
	lw $t0, -1620($fp)
	lw $t1, -1624($fp)
	add $t0, $t0, $t1
	sw $t0, -1628($fp)
	li $t0, 0
	sw $t0, -1632($fp)
	li $t0, 17885
	sw $t0, -1636($fp)
	lw $t1, -1636($fp)
	li $t2, 0
	bne $t1, $t2, label511
	j label510
label510:
	li $t0, 1
	sw $t0, -1632($fp)
label511:
	li $t0, 0
	lw $t1, -1632($fp)
	sub $t0, $t0, $t1
	sw $t0, -1640($fp)
	li $t0, 28549
	sw $t0, -1644($fp)
	lw $t0, -1272($fp)
	sw $t0, -1648($fp)
	addi $sp, $sp, -4
	lw $t0, -1628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1648($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1652($fp)
	addi $sp, $sp, 20
	li $t0, 19760
	sw $t0, -1656($fp)
	lw $t0, -1652($fp)
	lw $t1, -1656($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1660($fp)
	li $t0, 0
	sw $t0, -1664($fp)
	li $t0, 24967
	sw $t0, -1668($fp)
	lw $t1, -1668($fp)
	li $t2, 0
	bne $t1, $t2, label515
	j label514
label515:
	li $t0, 29813
	sw $t0, -1672($fp)
	lw $t1, -1672($fp)
	li $t2, 0
	bne $t1, $t2, label512
	j label514
label514:
	li $t0, 9755
	sw $t0, -1676($fp)
	lw $t1, -1676($fp)
	li $t2, 0
	bne $t1, $t2, label512
	j label513
label512:
	li $t0, 1
	sw $t0, -1664($fp)
label513:
	li $t0, 0
	sw $t0, -1680($fp)
	li $t0, 16865
	sw $t0, -1684($fp)
	li $t0, 0
	lw $t1, -1684($fp)
	sub $t0, $t0, $t1
	sw $t0, -1688($fp)
	lw $t0, -984($fp)
	sw $t0, -1692($fp)
	lw $t1, -1688($fp)
	lw $t2, -1692($fp)
	bne $t1, $t2, label516
	j label517
label516:
	li $t0, 1
	sw $t0, -1680($fp)
label517:
	li $t0, 0
	sw $t0, -1696($fp)
	lw $t0, -984($fp)
	sw $t0, -1700($fp)
	lw $t0, -888($fp)
	sw $t0, -1704($fp)
	lw $t0, -1700($fp)
	lw $t1, -1704($fp)
	sub $t0, $t0, $t1
	sw $t0, -1708($fp)
	lw $t1, -1708($fp)
	li $t2, 0
	bne $t1, $t2, label520
	j label519
label520:
	li $t0, 4644
	sw $t0, -1712($fp)
	lw $t1, -1712($fp)
	li $t2, 0
	bne $t1, $t2, label518
	j label519
label518:
	li $t0, 1
	sw $t0, -1696($fp)
label519:
	addi $sp, $sp, -4
	lw $t0, -1660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1696($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1716($fp)
	addi $sp, $sp, 20
	lw $t1, -1716($fp)
	li $t2, 0
	bne $t1, $t2, label507
	j label508
label507:
	li $t0, 1
	sw $t0, -1612($fp)
label508:
	j label488
label490:
	li $t0, 0
	sw $t0, -1720($fp)
	li $t0, 0
	sw $t0, -1724($fp)
	li $t0, 0
	sw $t0, -1728($fp)
	lw $t0, -852($fp)
	sw $t0, -1732($fp)
	lw $t0, -840($fp)
	sw $t0, -1736($fp)
	lw $t1, -1732($fp)
	lw $t2, -1736($fp)
	bne $t1, $t2, label525
	j label526
label525:
	li $t0, 1
	sw $t0, -1728($fp)
label526:
	lw $t0, 4($fp)
	sw $t0, -1740($fp)
	lw $t1, -1728($fp)
	lw $t2, -1740($fp)
	bne $t1, $t2, label523
	j label524
label523:
	li $t0, 1
	sw $t0, -1724($fp)
label524:
	li $t0, 57427
	sw $t0, -1744($fp)
	li $t0, 50474
	sw $t0, -1748($fp)
	lw $t0, -1744($fp)
	lw $t1, -1748($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1752($fp)
	li $t0, 0
	sw $t0, -1756($fp)
	li $t0, 53302
	sw $t0, -1760($fp)
	lw $t0, -984($fp)
	sw $t0, -1764($fp)
	lw $t0, -1760($fp)
	lw $t1, -1764($fp)
	mul $t0, $t0, $t1
	sw $t0, -1768($fp)
	lw $t1, -1768($fp)
	li $t2, 0
	bne $t1, $t2, label529
	j label528
label529:
	li $t0, 47133
	sw $t0, -1772($fp)
	lw $t1, -1772($fp)
	li $t2, 0
	bne $t1, $t2, label527
	j label528
label527:
	li $t0, 1
	sw $t0, -1756($fp)
label528:
	li $t0, 64907
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -1780($fp)
	addi $sp, $sp, -4
	lw $t0, -1724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1780($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1784($fp)
	addi $sp, $sp, 20
	lw $t1, -1784($fp)
	li $t2, 0
	bne $t1, $t2, label522
	j label521
label521:
	li $t0, 1
	sw $t0, -1720($fp)
label522:
	lw $ra, -4($fp)
	lw $v0, -1720($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label530:
	li $t0, 8663
	sw $t0, -1788($fp)
	lw $t1, -1788($fp)
	li $t2, 0
	bne $t1, $t2, label533
	j label532
label533:
	li $t0, 0
	sw $t0, -1792($fp)
	li $t0, 0
	sw $t0, -1796($fp)
	lw $t0, -888($fp)
	sw $t0, -1800($fp)
	li $t0, 14045
	sw $t0, -1804($fp)
	lw $t1, -1800($fp)
	lw $t2, -1804($fp)
	bge $t1, $t2, label536
	j label537
label536:
	li $t0, 1
	sw $t0, -1796($fp)
label537:
	li $t0, 58511
	sw $t0, -1808($fp)
	lw $t1, -1796($fp)
	lw $t2, -1808($fp)
	bne $t1, $t2, label534
	j label535
label534:
	li $t0, 1
	sw $t0, -1792($fp)
label535:
	li $t0, 1605
	sw $t0, -1812($fp)
	li $t0, 16462
	sw $t0, -1816($fp)
	lw $t0, -1812($fp)
	lw $t1, -1816($fp)
	add $t0, $t0, $t1
	sw $t0, -1820($fp)
	lw $t1, -1792($fp)
	lw $t2, -1820($fp)
	bne $t1, $t2, label531
	j label532
label531:
label538:
	lw $t0, 4($fp)
	sw $t0, -1824($fp)
	li $t0, 0
	lw $t1, -1824($fp)
	sub $t0, $t0, $t1
	sw $t0, -1828($fp)
	lw $t1, -1828($fp)
	li $t2, 0
	bne $t1, $t2, label539
	j label541
label541:
	li $t0, 39657
	sw $t0, -1832($fp)
	li $t0, 0
	sw $t0, -1836($fp)
	lw $t0, -732($fp)
	sw $t0, -1840($fp)
	lw $t1, -1840($fp)
	li $t2, 0
	bne $t1, $t2, label543
	j label542
label542:
	li $t0, 1
	sw $t0, -1836($fp)
label543:
	lw $t0, -1832($fp)
	lw $t1, -1836($fp)
	mul $t0, $t0, $t1
	sw $t0, -1844($fp)
	lw $t1, -1844($fp)
	li $t2, 0
	bne $t1, $t2, label539
	j label540
label539:
label544:
	li $t0, 0
	sw $t0, -1848($fp)
	li $t0, 29510
	sw $t0, -1852($fp)
	lw $t1, -1852($fp)
	li $t2, 0
	bne $t1, $t2, label547
	j label548
label547:
	li $t0, 1
	sw $t0, -1848($fp)
label548:
	lw $t0, -960($fp)
	sw $t0, -1856($fp)
	lw $t0, -672($fp)
	sw $t0, -1860($fp)
	li $t0, 0
	lw $t1, -1860($fp)
	sub $t0, $t0, $t1
	sw $t0, -1864($fp)
	li $t0, 0
	lw $t1, -1864($fp)
	sub $t0, $t0, $t1
	sw $t0, -1868($fp)
	li $t0, 14697
	sw $t0, -1872($fp)
	li $t0, 64660
	sw $t0, -1876($fp)
	lw $t0, -1872($fp)
	lw $t1, -1876($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1880($fp)
	li $t0, 11102
	sw $t0, -1884($fp)
	lw $t0, -1880($fp)
	lw $t1, -1884($fp)
	add $t0, $t0, $t1
	sw $t0, -1888($fp)
	addi $sp, $sp, -4
	lw $t0, -1848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1888($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1892($fp)
	addi $sp, $sp, 20
	jal f7
	sw $v0, -1896($fp)
	addi $sp, $sp, 4
	lw $t0, -1892($fp)
	lw $t1, -1896($fp)
	mul $t0, $t0, $t1
	sw $t0, -1900($fp)
	li $t0, 0
	sw $t0, -1904($fp)
	lw $t0, -984($fp)
	sw $t0, -1908($fp)
	lw $t1, -1908($fp)
	li $t2, 0
	bne $t1, $t2, label550
	j label549
label549:
	li $t0, 1
	sw $t0, -1904($fp)
label550:
	lw $t0, -1900($fp)
	lw $t1, -1904($fp)
	mul $t0, $t0, $t1
	sw $t0, -1912($fp)
	jal f7
	sw $v0, -1916($fp)
	addi $sp, $sp, 4
	lw $t1, -1912($fp)
	lw $t2, -1916($fp)
	beq $t1, $t2, label545
	j label546
label545:
	li $t0, 0
	sw $t0, -1920($fp)
	addi $t0, $fp, -112
	sw $t0, -1924($fp)
	lw $t0, -660($fp)
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
	bne $t1, $t2, label552
	j label551
label551:
	li $t0, 1
	sw $t0, -1920($fp)
label552:
	lw $t0, 8($fp)
	sw $t0, -1944($fp)
	li $t0, 0
	lw $t1, -1944($fp)
	sub $t0, $t0, $t1
	sw $t0, -1948($fp)
	lw $t0, -1920($fp)
	lw $t1, -1948($fp)
	mul $t0, $t0, $t1
	sw $t0, -1952($fp)
	lw $t0, -1952($fp)
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	sw $t0, -1956($fp)
	lw $t0, -960($fp)
	sw $t0, -1960($fp)
	li $t0, 45276
	sw $t0, -1964($fp)
	lw $t0, -1960($fp)
	lw $t1, -1964($fp)
	mul $t0, $t0, $t1
	sw $t0, -1968($fp)
	li $t0, 0
	lw $t1, -1968($fp)
	sub $t0, $t0, $t1
	sw $t0, -1972($fp)
	li $t0, 0
	sw $t0, -1976($fp)
	lw $t0, -828($fp)
	sw $t0, -1980($fp)
	lw $t0, 12($fp)
	sw $t0, -1984($fp)
	lw $t1, -1980($fp)
	lw $t2, -1984($fp)
	ble $t1, $t2, label553
	j label554
label553:
	li $t0, 1
	sw $t0, -1976($fp)
label554:
	lw $t0, 16($fp)
	sw $t0, -1988($fp)
	li $t0, 0
	sw $t0, -1992($fp)
	li $t0, 44262
	sw $t0, -1996($fp)
	li $t0, 0
	lw $t1, -1996($fp)
	sub $t0, $t0, $t1
	sw $t0, -2000($fp)
	lw $t1, -2000($fp)
	li $t2, 0
	bne $t1, $t2, label556
	j label555
label555:
	li $t0, 1
	sw $t0, -1992($fp)
label556:
	li $t0, 61230
	sw $t0, -2004($fp)
	li $t0, 53770
	sw $t0, -2008($fp)
	lw $t0, -2004($fp)
	lw $t1, -2008($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2012($fp)
	lw $t0, -996($fp)
	sw $t0, -2016($fp)
	lw $t0, -2012($fp)
	lw $t1, -2016($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2020($fp)
	li $t0, 0
	sw $t0, -2024($fp)
	li $t0, 61416
	sw $t0, -2028($fp)
	lw $t1, -2028($fp)
	li $t2, 0
	bne $t1, $t2, label558
	j label557
label557:
	li $t0, 1
	sw $t0, -2024($fp)
label558:
	lw $t0, -768($fp)
	sw $t0, -2032($fp)
	lw $t0, -2024($fp)
	lw $t1, -2032($fp)
	sub $t0, $t0, $t1
	sw $t0, -2036($fp)
	li $t0, 0
	sw $t0, -2040($fp)
	li $t0, 0
	sw $t0, -2044($fp)
	li $t0, 50812
	sw $t0, -2048($fp)
	lw $t0, -1020($fp)
	sw $t0, -2052($fp)
	lw $t1, -2048($fp)
	lw $t2, -2052($fp)
	blt $t1, $t2, label561
	j label562
label561:
	li $t0, 1
	sw $t0, -2044($fp)
label562:
	lw $t0, -900($fp)
	sw $t0, -2056($fp)
	lw $t1, -2044($fp)
	lw $t2, -2056($fp)
	bne $t1, $t2, label559
	j label560
label559:
	li $t0, 1
	sw $t0, -2040($fp)
label560:
	addi $sp, $sp, -4
	lw $t0, -1992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2040($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2060($fp)
	addi $sp, $sp, 20
	lw $t0, -876($fp)
	sw $t0, -2064($fp)
	lw $t0, -2060($fp)
	lw $t1, -2064($fp)
	sub $t0, $t0, $t1
	sw $t0, -2068($fp)
	addi $sp, $sp, -4
	lw $t0, -1972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2068($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2072($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -2072($fp)
	sub $t0, $t0, $t1
	sw $t0, -2076($fp)
	li $t0, 0
	sw $t0, -2080($fp)
	li $t0, 58414
	sw $t0, -2084($fp)
	lw $t1, -2084($fp)
	li $t2, 0
	bne $t1, $t2, label563
	j label564
label563:
	li $t0, 1
	sw $t0, -2080($fp)
label564:
	lw $t0, -2076($fp)
	lw $t1, -2080($fp)
	add $t0, $t0, $t1
	sw $t0, -2088($fp)
	lw $ra, -4($fp)
	lw $v0, -2088($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -2092($fp)
	lw $t0, -1020($fp)
	sw $t0, -2096($fp)
	lw $t0, -876($fp)
	sw $t0, -2100($fp)
	li $t0, 0
	lw $t1, -2100($fp)
	sub $t0, $t0, $t1
	sw $t0, -2104($fp)
	lw $t1, -2096($fp)
	lw $t2, -2104($fp)
	bne $t1, $t2, label565
	j label566
label565:
	li $t0, 1
	sw $t0, -2092($fp)
label566:
	lw $ra, -4($fp)
	lw $v0, -2092($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label544
label546:
	j label538
label540:
	j label530
label532:
label567:
	li $t0, 61127
	sw $t0, -2108($fp)
	li $t0, 4707
	sw $t0, -2112($fp)
	lw $t0, -864($fp)
	sw $t0, -2116($fp)
	lw $t0, -2112($fp)
	lw $t1, -2116($fp)
	mul $t0, $t0, $t1
	sw $t0, -2120($fp)
	li $t0, 22692
	sw $t0, -2124($fp)
	lw $t0, -2120($fp)
	lw $t1, -2124($fp)
	mul $t0, $t0, $t1
	sw $t0, -2128($fp)
	lw $t0, 4($fp)
	sw $t0, -2132($fp)
	lw $t0, -2128($fp)
	lw $t1, -2132($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2136($fp)
	lw $t1, -2108($fp)
	lw $t2, -2136($fp)
	bne $t1, $t2, label568
	j label569
label568:
	li $t0, 0
	sw $t0, -2140($fp)
	li $t0, 0
	sw $t0, -2144($fp)
	li $t0, 5346
	sw $t0, -2148($fp)
	addi $t0, $fp, -88
	sw $t0, -2152($fp)
	li $t0, 0
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
	lw $t0, -2148($fp)
	lw $t1, -2168($fp)
	mul $t0, $t0, $t1
	sw $t0, -2172($fp)
	li $t0, 0
	lw $t1, -2172($fp)
	sub $t0, $t0, $t1
	sw $t0, -2176($fp)
	lw $t1, -2176($fp)
	li $t2, 0
	bne $t1, $t2, label574
	j label573
label573:
	li $t0, 1
	sw $t0, -2144($fp)
label574:
	lw $t0, 4($fp)
	sw $t0, -2180($fp)
	lw $t0, -732($fp)
	sw $t0, -2184($fp)
	lw $t0, -2180($fp)
	lw $t1, -2184($fp)
	mul $t0, $t0, $t1
	sw $t0, -2188($fp)
	lw $t1, -2144($fp)
	lw $t2, -2188($fp)
	beq $t1, $t2, label572
	j label571
label572:
	li $t0, 51334
	sw $t0, -2192($fp)
	li $t0, 48905
	sw $t0, -2196($fp)
	li $t0, 0
	lw $t1, -2196($fp)
	sub $t0, $t0, $t1
	sw $t0, -2200($fp)
	lw $t0, -2192($fp)
	lw $t1, -2200($fp)
	sub $t0, $t0, $t1
	sw $t0, -2204($fp)
	lw $t1, -2204($fp)
	li $t2, 0
	bne $t1, $t2, label570
	j label571
label570:
	li $t0, 1
	sw $t0, -2140($fp)
label571:
	lw $ra, -4($fp)
	lw $v0, -2140($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label567
label569:
label575:
	addi $t0, $fp, -44
	sw $t0, -2208($fp)
	li $t0, 3
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
	li $t0, 36671
	sw $t0, -2228($fp)
	lw $t0, -2224($fp)
	lw $t1, -2228($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2232($fp)
	li $t0, 0
	sw $t0, -2236($fp)
	addi $t0, $fp, -96
	sw $t0, -2240($fp)
	lw $t0, -972($fp)
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
	lw $t1, -2256($fp)
	li $t2, 0
	bne $t1, $t2, label580
	j label579
label579:
	li $t0, 1
	sw $t0, -2236($fp)
label580:
	addi $t0, $fp, -96
	sw $t0, -2260($fp)
	lw $t0, -888($fp)
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
	li $t0, 0
	sw $t0, -2280($fp)
	li $t0, 0
	sw $t0, -2284($fp)
	lw $t0, -996($fp)
	sw $t0, -2288($fp)
	lw $t1, -2288($fp)
	li $t2, 0
	bne $t1, $t2, label584
	j label583
label583:
	li $t0, 1
	sw $t0, -2284($fp)
label584:
	li $t0, 42596
	sw $t0, -2292($fp)
	lw $t1, -2284($fp)
	lw $t2, -2292($fp)
	bne $t1, $t2, label581
	j label582
label581:
	li $t0, 1
	sw $t0, -2280($fp)
label582:
	li $t0, 0
	sw $t0, -2296($fp)
	li $t0, 41935
	sw $t0, -2300($fp)
	lw $t0, 8($fp)
	sw $t0, -2304($fp)
	lw $t0, -2300($fp)
	lw $t1, -2304($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2308($fp)
	lw $t1, -2308($fp)
	li $t2, 0
	bne $t1, $t2, label587
	j label586
label587:
	lw $t0, -888($fp)
	sw $t0, -2312($fp)
	lw $t1, -2312($fp)
	li $t2, 0
	bne $t1, $t2, label585
	j label586
label585:
	li $t0, 1
	sw $t0, -2296($fp)
label586:
	addi $sp, $sp, -4
	lw $t0, -2236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2296($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2316($fp)
	addi $sp, $sp, 20
	lw $t0, -2232($fp)
	lw $t1, -2316($fp)
	add $t0, $t0, $t1
	sw $t0, -2320($fp)
	lw $t1, -2320($fp)
	li $t2, 0
	bne $t1, $t2, label576
	j label578
label578:
	li $t0, 21610
	sw $t0, -2324($fp)
	li $t0, 50598
	sw $t0, -2328($fp)
	li $t0, 56641
	sw $t0, -2332($fp)
	lw $t0, -2328($fp)
	lw $t1, -2332($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2336($fp)
	lw $t0, -2324($fp)
	lw $t1, -2336($fp)
	add $t0, $t0, $t1
	sw $t0, -2340($fp)
	lw $t1, -2340($fp)
	li $t2, 0
	bne $t1, $t2, label576
	j label577
label576:
label588:
	addi $t0, $fp, -104
	sw $t0, -2344($fp)
	li $t0, 0
	sw $t0, -2348($fp)
	addi $t0, $fp, -44
	sw $t0, -2352($fp)
	li $t0, 7
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
	lw $t1, -2368($fp)
	li $t2, 0
	bne $t1, $t2, label591
	j label593
label593:
	li $t0, 7567
	sw $t0, -2372($fp)
	lw $t0, -744($fp)
	sw $t0, -2376($fp)
	lw $t0, -2372($fp)
	lw $t1, -2376($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2380($fp)
	lw $t1, -2380($fp)
	li $t2, 0
	bne $t1, $t2, label591
	j label592
label591:
	li $t0, 1
	sw $t0, -2348($fp)
label592:
	li $t0, 4
	lw $t1, -2348($fp)
	mul $t0, $t0, $t1
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	lw $t1, -2344($fp)
	add $t0, $t0, $t1
	sw $t0, -2388($fp)
	lw $t0, -2388($fp)
	lw $t1, 0($t0)
	sw $t1, -2392($fp)
	lw $t1, -2392($fp)
	li $t2, 0
	bne $t1, $t2, label589
	j label590
label589:
	lw $t0, -756($fp)
	sw $t0, -2396($fp)
	li $t0, 0
	sw $t0, -2400($fp)
	li $t0, 54243
	sw $t0, -2404($fp)
	lw $t1, -2404($fp)
	li $t2, 0
	bne $t1, $t2, label598
	j label597
label597:
	li $t0, 1
	sw $t0, -2400($fp)
label598:
	lw $t0, -2396($fp)
	lw $t1, -2400($fp)
	mul $t0, $t0, $t1
	sw $t0, -2408($fp)
	lw $t0, -1008($fp)
	sw $t0, -2412($fp)
	lw $t0, -2408($fp)
	lw $t1, -2412($fp)
	sub $t0, $t0, $t1
	sw $t0, -2416($fp)
	lw $t1, -2416($fp)
	li $t2, 0
	bne $t1, $t2, label594
	j label595
label594:
label599:
	jal f7
	sw $v0, -2420($fp)
	addi $sp, $sp, 4
	li $t0, 1364
	sw $t0, -2424($fp)
	lw $t0, -2420($fp)
	lw $t1, -2424($fp)
	mul $t0, $t0, $t1
	sw $t0, -2428($fp)
	li $t0, 0
	lw $t1, -2428($fp)
	sub $t0, $t0, $t1
	sw $t0, -2432($fp)
	lw $t1, -2432($fp)
	li $t2, 0
	bne $t1, $t2, label600
	j label601
label600:
label602:
	addi $t0, $fp, -84
	sw $t0, -2436($fp)
	li $t0, 0
	sw $t0, -2440($fp)
	lw $t0, -744($fp)
	sw $t0, -2444($fp)
	li $t0, 6691
	sw $t0, -2448($fp)
	lw $t1, -2444($fp)
	lw $t2, -2448($fp)
	beq $t1, $t2, label605
	j label606
label605:
	li $t0, 1
	sw $t0, -2440($fp)
label606:
	li $t0, 4
	lw $t1, -2440($fp)
	mul $t0, $t0, $t1
	sw $t0, -2452($fp)
	lw $t0, -2452($fp)
	lw $t1, -2436($fp)
	add $t0, $t0, $t1
	sw $t0, -2456($fp)
	lw $t0, -2456($fp)
	lw $t1, 0($t0)
	sw $t1, -2460($fp)
	lw $t0, -2460($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -2464($fp)
	lw $t1, -2464($fp)
	li $t2, 0
	bne $t1, $t2, label603
	j label604
label603:
	li $t0, 65345
	sw $t0, -2472($fp)
	addi $t0, $fp, -2468
	sw $t0, -2476($fp)
	li $t0, 0
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2484($fp)
	lw $t0, -2476($fp)
	lw $t1, -2484($fp)
	add $t0, $t0, $t1
	sw $t0, -2488($fp)
	lw $t0, -2472($fp)
	lw $t1, -2488($fp)
	sw $t0, 0($t1)
	lw $t0, -2488($fp)
	lw $t1, 0($t0)
	sw $t1, -2492($fp)
	li $t0, 30874
	sw $t0, -2496($fp)
	lw $t0, -2496($fp)
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	sw $t0, -2504($fp)
	li $t0, 0
	sw $t0, -2508($fp)
	li $t0, 0
	sw $t0, -2512($fp)
	li $t0, 57503
	sw $t0, -2516($fp)
	lw $t1, -2516($fp)
	li $t2, 0
	bne $t1, $t2, label612
	j label611
label611:
	li $t0, 1
	sw $t0, -2512($fp)
label612:
	li $t0, 61225
	sw $t0, -2520($fp)
	lw $t0, -2512($fp)
	lw $t1, -2520($fp)
	mul $t0, $t0, $t1
	sw $t0, -2524($fp)
	li $t0, 26568
	sw $t0, -2528($fp)
	lw $t0, -888($fp)
	sw $t0, -2532($fp)
	lw $t0, -2528($fp)
	lw $t1, -2532($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2536($fp)
	li $t0, 0
	lw $t1, -2536($fp)
	sub $t0, $t0, $t1
	sw $t0, -2540($fp)
	addi $sp, $sp, -4
	lw $t0, -2540($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2544($fp)
	addi $sp, $sp, 8
	lw $t0, -2524($fp)
	lw $t1, -2544($fp)
	sub $t0, $t0, $t1
	sw $t0, -2548($fp)
	lw $t1, -2548($fp)
	li $t2, 0
	bne $t1, $t2, label610
	j label608
label610:
	lw $t0, -2500($fp)
	sw $t0, -2552($fp)
	lw $t0, -888($fp)
	sw $t0, -2556($fp)
	lw $t1, -2552($fp)
	lw $t2, -2556($fp)
	bne $t1, $t2, label609
	j label608
label609:
	addi $t0, $fp, -112
	sw $t0, -2560($fp)
	lw $t0, -888($fp)
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
	li $t0, 45738
	sw $t0, -2580($fp)
	lw $t0, -2576($fp)
	lw $t1, -2580($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2584($fp)
	lw $t1, -2584($fp)
	li $t2, 0
	bne $t1, $t2, label607
	j label608
label607:
	li $t0, 1
	sw $t0, -2508($fp)
label608:
	lw $t0, -996($fp)
	sw $t0, -2588($fp)
	li $t0, 0
	lw $t1, -2588($fp)
	sub $t0, $t0, $t1
	sw $t0, -2592($fp)
	li $t0, 39951
	sw $t0, -2596($fp)
	lw $t0, -2592($fp)
	lw $t1, -2596($fp)
	sub $t0, $t0, $t1
	sw $t0, -2600($fp)
	addi $t0, $fp, -2468
	sw $t0, -2604($fp)
	addi $t0, $fp, -44
	sw $t0, -2608($fp)
	li $t0, 2
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
	li $t0, 4
	lw $t1, -2624($fp)
	mul $t0, $t0, $t1
	sw $t0, -2628($fp)
	lw $t0, -2628($fp)
	lw $t1, -2604($fp)
	add $t0, $t0, $t1
	sw $t0, -2632($fp)
	lw $t0, -2632($fp)
	lw $t1, 0($t0)
	sw $t1, -2636($fp)
	lw $t0, -2600($fp)
	lw $t1, -2636($fp)
	sub $t0, $t0, $t1
	sw $t0, -2640($fp)
	jal f6
	sw $v0, -2644($fp)
	addi $sp, $sp, 4
	li $t0, 35542
	sw $t0, -2648($fp)
	lw $t1, -2644($fp)
	lw $t2, -2648($fp)
	blt $t1, $t2, label613
	j label616
label616:
	li $t0, 11015
	sw $t0, -2652($fp)
	lw $t1, -2652($fp)
	li $t2, 0
	bne $t1, $t2, label613
	j label614
label613:
	lw $t0, 4($fp)
	sw $t0, -2656($fp)
	j label615
label614:
	li $t0, 0
	sw $t0, -2660($fp)
	jal f7
	sw $v0, -2664($fp)
	addi $sp, $sp, 4
	li $t0, 61308
	sw $t0, -2668($fp)
	lw $t0, -900($fp)
	sw $t0, -2672($fp)
	lw $t0, -2668($fp)
	lw $t1, -2672($fp)
	mul $t0, $t0, $t1
	sw $t0, -2676($fp)
	li $t0, 40888
	sw $t0, -2680($fp)
	lw $t0, -2676($fp)
	lw $t1, -2680($fp)
	mul $t0, $t0, $t1
	sw $t0, -2684($fp)
	jal f7
	sw $v0, -2688($fp)
	addi $sp, $sp, 4
	lw $t0, -2684($fp)
	lw $t1, -2688($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2692($fp)
	lw $t1, -2664($fp)
	lw $t2, -2692($fp)
	blt $t1, $t2, label617
	j label618
label617:
	li $t0, 1
	sw $t0, -2660($fp)
label618:
label615:
	j label602
label604:
	j label599
label601:
	j label596
label595:
	lw $t0, -768($fp)
	sw $t0, -2696($fp)
	li $t0, 0
	lw $t1, -2696($fp)
	sub $t0, $t0, $t1
	sw $t0, -2700($fp)
	lw $ra, -4($fp)
	lw $v0, -2700($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label596:
	j label588
label590:
	j label575
label577:
	li $t0, 44271
	sw $t0, -2732($fp)
	lw $t0, -2732($fp)
	sw $t0, -2736($fp)
	lw $t0, -2736($fp)
	sw $t0, -2740($fp)
	li $t0, 36350
	sw $t0, -2744($fp)
	addi $t0, $fp, -2728
	sw $t0, -2748($fp)
	li $t0, 0
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
	li $t0, 26686
	sw $t0, -2768($fp)
	addi $t0, $fp, -2728
	sw $t0, -2772($fp)
	li $t0, 1
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
	li $t0, 27640
	sw $t0, -2792($fp)
	addi $t0, $fp, -2728
	sw $t0, -2796($fp)
	li $t0, 2
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
	li $t0, 31151
	sw $t0, -2816($fp)
	addi $t0, $fp, -2728
	sw $t0, -2820($fp)
	li $t0, 3
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
	li $t0, 11855
	sw $t0, -2840($fp)
	addi $t0, $fp, -2728
	sw $t0, -2844($fp)
	li $t0, 4
	sw $t0, -2848($fp)
	lw $t0, -2848($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2852($fp)
	lw $t0, -2844($fp)
	lw $t1, -2852($fp)
	add $t0, $t0, $t1
	sw $t0, -2856($fp)
	lw $t0, -2840($fp)
	lw $t1, -2856($fp)
	sw $t0, 0($t1)
	lw $t0, -2856($fp)
	lw $t1, 0($t0)
	sw $t1, -2860($fp)
	li $t0, 64312
	sw $t0, -2864($fp)
	addi $t0, $fp, -2728
	sw $t0, -2868($fp)
	li $t0, 5
	sw $t0, -2872($fp)
	lw $t0, -2872($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2876($fp)
	lw $t0, -2868($fp)
	lw $t1, -2876($fp)
	add $t0, $t0, $t1
	sw $t0, -2880($fp)
	lw $t0, -2864($fp)
	lw $t1, -2880($fp)
	sw $t0, 0($t1)
	lw $t0, -2880($fp)
	lw $t1, 0($t0)
	sw $t1, -2884($fp)
	li $t0, 7550
	sw $t0, -2888($fp)
	addi $t0, $fp, -2728
	sw $t0, -2892($fp)
	li $t0, 6
	sw $t0, -2896($fp)
	lw $t0, -2896($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2900($fp)
	lw $t0, -2892($fp)
	lw $t1, -2900($fp)
	add $t0, $t0, $t1
	sw $t0, -2904($fp)
	lw $t0, -2888($fp)
	lw $t1, -2904($fp)
	sw $t0, 0($t1)
	lw $t0, -2904($fp)
	lw $t1, 0($t0)
	sw $t1, -2908($fp)
	li $t0, 54451
	sw $t0, -2912($fp)
	lw $t0, -2912($fp)
	sw $t0, -2916($fp)
	lw $t0, -2916($fp)
	sw $t0, -2920($fp)
	lw $t0, -2916($fp)
	sw $t0, -2924($fp)
	lw $t1, -2924($fp)
	li $t2, 0
	bne $t1, $t2, label619
	j label620
label619:
	jal f6
	sw $v0, -2928($fp)
	addi $sp, $sp, 4
	j label621
label620:
	lw $t0, -888($fp)
	sw $t0, -2932($fp)
	lw $t0, 4($fp)
	sw $t0, -2936($fp)
	lw $t0, -2932($fp)
	lw $t1, -2936($fp)
	mul $t0, $t0, $t1
	sw $t0, -2940($fp)
	li $t0, 20386
	sw $t0, -2944($fp)
	lw $t0, -2940($fp)
	lw $t1, -2944($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2948($fp)
	lw $t0, -2736($fp)
	sw $t0, -2952($fp)
	lw $t0, -984($fp)
	sw $t0, -2956($fp)
	lw $t0, -2952($fp)
	lw $t1, -2956($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2960($fp)
	lw $t0, -2948($fp)
	lw $t1, -2960($fp)
	add $t0, $t0, $t1
	sw $t0, -2964($fp)
	lw $t1, -2964($fp)
	li $t2, 0
	bne $t1, $t2, label626
	j label625
label626:
	lw $t0, -888($fp)
	sw $t0, -2968($fp)
	lw $t1, -2968($fp)
	li $t2, 0
	bne $t1, $t2, label622
	j label625
label625:
	li $t0, 58148
	sw $t0, -2972($fp)
	lw $t0, -972($fp)
	sw $t0, -2976($fp)
	lw $t0, -2972($fp)
	lw $t1, -2976($fp)
	mul $t0, $t0, $t1
	sw $t0, -2980($fp)
	lw $t0, -768($fp)
	sw $t0, -2984($fp)
	li $t0, 0
	lw $t1, -2984($fp)
	sub $t0, $t0, $t1
	sw $t0, -2988($fp)
	lw $t0, -2980($fp)
	lw $t1, -2988($fp)
	mul $t0, $t0, $t1
	sw $t0, -2992($fp)
	lw $t1, -2992($fp)
	li $t2, 0
	bne $t1, $t2, label622
	j label623
label622:
label627:
	addi $t0, $fp, -112
	sw $t0, -2996($fp)
	li $t0, 45556
	sw $t0, -3000($fp)
	addi $t0, $fp, -112
	sw $t0, -3004($fp)
	li $t0, 1
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
	lw $t0, -3000($fp)
	lw $t1, -3020($fp)
	sub $t0, $t0, $t1
	sw $t0, -3024($fp)
	li $t0, 4
	lw $t1, -3024($fp)
	mul $t0, $t0, $t1
	sw $t0, -3028($fp)
	lw $t0, -3028($fp)
	lw $t1, -2996($fp)
	add $t0, $t0, $t1
	sw $t0, -3032($fp)
	lw $t0, -3032($fp)
	lw $t1, 0($t0)
	sw $t1, -3036($fp)
	lw $t1, -3036($fp)
	li $t2, 0
	bne $t1, $t2, label628
	j label629
label628:
	li $t0, 0
	sw $t0, -3040($fp)
	jal f6
	sw $v0, -3044($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -2728
	sw $t0, -3048($fp)
	li $t0, 0
	sw $t0, -3052($fp)
	li $t0, 53123
	sw $t0, -3056($fp)
	lw $t1, -3056($fp)
	li $t2, 0
	bne $t1, $t2, label634
	j label633
label634:
	li $t0, 23678
	sw $t0, -3060($fp)
	lw $t1, -3060($fp)
	li $t2, 0
	bne $t1, $t2, label632
	j label633
label632:
	li $t0, 1
	sw $t0, -3052($fp)
label633:
	li $t0, 4
	lw $t1, -3052($fp)
	mul $t0, $t0, $t1
	sw $t0, -3064($fp)
	lw $t0, -3064($fp)
	lw $t1, -3048($fp)
	add $t0, $t0, $t1
	sw $t0, -3068($fp)
	lw $t0, -3068($fp)
	lw $t1, 0($t0)
	sw $t1, -3072($fp)
	lw $t1, -3044($fp)
	lw $t2, -3072($fp)
	ble $t1, $t2, label630
	j label631
label630:
	li $t0, 1
	sw $t0, -3040($fp)
label631:
	j label627
label629:
label623:
label621:
	li $t0, 0
	sw $t0, -3076($fp)
	addi $t0, $fp, -148
	sw $t0, -3080($fp)
	li $t0, 7
	sw $t0, -3084($fp)
	li $t0, 4
	lw $t1, -3084($fp)
	mul $t0, $t0, $t1
	sw $t0, -3088($fp)
	lw $t0, -3088($fp)
	lw $t1, -3080($fp)
	add $t0, $t0, $t1
	sw $t0, -3092($fp)
	lw $t0, -3092($fp)
	lw $t1, 0($t0)
	sw $t1, -3096($fp)
	lw $t1, -3096($fp)
	li $t2, 0
	bne $t1, $t2, label636
	j label635
label635:
	li $t0, 1
	sw $t0, -3076($fp)
label636:
	lw $t0, -3076($fp)
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	sw $t0, -3100($fp)
	li $t0, 0
	sw $t0, -3104($fp)
	jal f7
	sw $v0, -3108($fp)
	addi $sp, $sp, 4
	lw $t1, -3108($fp)
	li $t2, 0
	bne $t1, $t2, label638
	j label637
label637:
	li $t0, 1
	sw $t0, -3104($fp)
label638:
	li $t0, 0
	sw $t0, -3112($fp)
	li $t0, 23487
	sw $t0, -3116($fp)
	lw $t1, -3116($fp)
	li $t2, 0
	bne $t1, $t2, label640
	j label639
label639:
	li $t0, 1
	sw $t0, -3112($fp)
label640:
	li $t0, 11517
	sw $t0, -3120($fp)
	li $t0, 0
	sw $t0, -3124($fp)
	lw $t0, -840($fp)
	sw $t0, -3128($fp)
	li $t0, 0
	sw $t0, -3132($fp)
	lw $t0, -1020($fp)
	sw $t0, -3136($fp)
	lw $t0, -756($fp)
	sw $t0, -3140($fp)
	lw $t1, -3136($fp)
	lw $t2, -3140($fp)
	beq $t1, $t2, label644
	j label645
label644:
	li $t0, 1
	sw $t0, -3132($fp)
label645:
	addi $sp, $sp, -4
	lw $t0, -3132($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3144($fp)
	addi $sp, $sp, 8
	lw $t0, -3128($fp)
	lw $t1, -3144($fp)
	mul $t0, $t0, $t1
	sw $t0, -3148($fp)
	lw $t1, -3148($fp)
	li $t2, 0
	bne $t1, $t2, label643
	j label642
label643:
	jal f7
	sw $v0, -3152($fp)
	addi $sp, $sp, 4
	li $t0, 51782
	sw $t0, -3156($fp)
	lw $t0, -3152($fp)
	lw $t1, -3156($fp)
	sub $t0, $t0, $t1
	sw $t0, -3160($fp)
	li $t0, 19176
	sw $t0, -3164($fp)
	li $t0, 0
	lw $t1, -3164($fp)
	sub $t0, $t0, $t1
	sw $t0, -3168($fp)
	lw $t0, -3160($fp)
	lw $t1, -3168($fp)
	add $t0, $t0, $t1
	sw $t0, -3172($fp)
	lw $t1, -3172($fp)
	li $t2, 0
	bne $t1, $t2, label641
	j label642
label641:
	li $t0, 1
	sw $t0, -3124($fp)
label642:
	addi $t0, $fp, -112
	sw $t0, -3176($fp)
	lw $t0, -828($fp)
	sw $t0, -3180($fp)
	lw $t0, -876($fp)
	sw $t0, -3184($fp)
	lw $t0, -3180($fp)
	lw $t1, -3184($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3188($fp)
	lw $t0, -972($fp)
	sw $t0, -3192($fp)
	lw $t0, -3188($fp)
	lw $t1, -3192($fp)
	mul $t0, $t0, $t1
	sw $t0, -3196($fp)
	li $t0, 4
	lw $t1, -3196($fp)
	mul $t0, $t0, $t1
	sw $t0, -3200($fp)
	lw $t0, -3200($fp)
	lw $t1, -3176($fp)
	add $t0, $t0, $t1
	sw $t0, -3204($fp)
	lw $t0, -3204($fp)
	lw $t1, 0($t0)
	sw $t1, -3208($fp)
	lw $t1, -3208($fp)
	li $t2, 0
	bne $t1, $t2, label647
	j label646
label646:
	li $t0, 0
	sw $t0, -3212($fp)
	li $t0, 0
	sw $t0, -3216($fp)
	lw $t0, 4($fp)
	sw $t0, -3220($fp)
	li $t0, 0
	sw $t0, -3224($fp)
	li $t0, 59127
	sw $t0, -3228($fp)
	lw $t0, 4($fp)
	sw $t0, -3232($fp)
	lw $t1, -3228($fp)
	lw $t2, -3232($fp)
	bgt $t1, $t2, label653
	j label654
label653:
	li $t0, 1
	sw $t0, -3224($fp)
label654:
	li $t0, 0
	sw $t0, -3236($fp)
	li $t0, 38086
	sw $t0, -3240($fp)
	li $t0, 31984
	sw $t0, -3244($fp)
	lw $t1, -3240($fp)
	lw $t2, -3244($fp)
	ble $t1, $t2, label655
	j label656
label655:
	li $t0, 1
	sw $t0, -3236($fp)
label656:
	addi $sp, $sp, -4
	lw $t0, -3220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3236($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3248($fp)
	addi $sp, $sp, 16
	lw $t1, -3248($fp)
	li $t2, 0
	bne $t1, $t2, label652
	j label651
label651:
	li $t0, 1
	sw $t0, -3216($fp)
label652:
	li $t0, 0
	lw $t1, -3216($fp)
	sub $t0, $t0, $t1
	sw $t0, -3252($fp)
	addi $t0, $fp, -44
	sw $t0, -3256($fp)
	li $t0, 0
	sw $t0, -3260($fp)
	li $t0, 44394
	sw $t0, -3264($fp)
	lw $t1, -3264($fp)
	li $t2, 0
	bne $t1, $t2, label659
	j label658
label659:
	li $t0, 5065
	sw $t0, -3268($fp)
	lw $t1, -3268($fp)
	li $t2, 0
	bne $t1, $t2, label657
	j label658
label657:
	li $t0, 1
	sw $t0, -3260($fp)
label658:
	li $t0, 4
	lw $t1, -3260($fp)
	mul $t0, $t0, $t1
	sw $t0, -3272($fp)
	lw $t0, -3272($fp)
	lw $t1, -3256($fp)
	add $t0, $t0, $t1
	sw $t0, -3276($fp)
	lw $t0, -3276($fp)
	lw $t1, 0($t0)
	sw $t1, -3280($fp)
	lw $t1, -3252($fp)
	lw $t2, -3280($fp)
	bne $t1, $t2, label649
	j label650
label649:
	li $t0, 1
	sw $t0, -3212($fp)
label650:
	lw $ra, -4($fp)
	lw $v0, -3212($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label647:
	lw $t0, -2736($fp)
	sw $t0, -3284($fp)
	lw $t0, -3284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2728
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
	addi $t0, $fp, -2728
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
	addi $t0, $fp, -2728
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
	addi $t0, $fp, -2728
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
	addi $t0, $fp, -2728
	sw $t0, -3368($fp)
	li $t0, 4
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
	addi $t0, $fp, -2728
	sw $t0, -3388($fp)
	li $t0, 5
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
	addi $t0, $fp, -2728
	sw $t0, -3408($fp)
	li $t0, 6
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
	lw $t0, -2916($fp)
	sw $t0, -3428($fp)
	lw $t0, -3428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, 8($fp)
	sw $t0, -3432($fp)
	lw $ra, -4($fp)
	lw $v0, -3432($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -44
	sw $t0, -3436($fp)
	li $t0, 0
	sw $t0, -3440($fp)
	li $t0, 4
	lw $t1, -3440($fp)
	mul $t0, $t0, $t1
	sw $t0, -3444($fp)
	lw $t0, -3444($fp)
	lw $t1, -3436($fp)
	add $t0, $t0, $t1
	sw $t0, -3448($fp)
	lw $t0, -3448($fp)
	lw $t1, 0($t0)
	sw $t1, -3452($fp)
	lw $t0, -3452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3456($fp)
	li $t0, 1
	sw $t0, -3460($fp)
	li $t0, 4
	lw $t1, -3460($fp)
	mul $t0, $t0, $t1
	sw $t0, -3464($fp)
	lw $t0, -3464($fp)
	lw $t1, -3456($fp)
	add $t0, $t0, $t1
	sw $t0, -3468($fp)
	lw $t0, -3468($fp)
	lw $t1, 0($t0)
	sw $t1, -3472($fp)
	lw $t0, -3472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3476($fp)
	li $t0, 2
	sw $t0, -3480($fp)
	li $t0, 4
	lw $t1, -3480($fp)
	mul $t0, $t0, $t1
	sw $t0, -3484($fp)
	lw $t0, -3484($fp)
	lw $t1, -3476($fp)
	add $t0, $t0, $t1
	sw $t0, -3488($fp)
	lw $t0, -3488($fp)
	lw $t1, 0($t0)
	sw $t1, -3492($fp)
	lw $t0, -3492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
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
	lw $t0, -3512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3516($fp)
	li $t0, 4
	sw $t0, -3520($fp)
	li $t0, 4
	lw $t1, -3520($fp)
	mul $t0, $t0, $t1
	sw $t0, -3524($fp)
	lw $t0, -3524($fp)
	lw $t1, -3516($fp)
	add $t0, $t0, $t1
	sw $t0, -3528($fp)
	lw $t0, -3528($fp)
	lw $t1, 0($t0)
	sw $t1, -3532($fp)
	lw $t0, -3532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
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
	lw $t0, -3552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3556($fp)
	li $t0, 6
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
	addi $t0, $fp, -44
	sw $t0, -3576($fp)
	li $t0, 7
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
	addi $t0, $fp, -44
	sw $t0, -3596($fp)
	li $t0, 8
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
	addi $t0, $fp, -44
	sw $t0, -3616($fp)
	li $t0, 9
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
	addi $t0, $fp, -84
	sw $t0, -3636($fp)
	li $t0, 0
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
	addi $t0, $fp, -84
	sw $t0, -3656($fp)
	li $t0, 1
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
	addi $t0, $fp, -84
	sw $t0, -3676($fp)
	li $t0, 2
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
	lw $t0, -3692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -3696($fp)
	li $t0, 3
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
	addi $t0, $fp, -84
	sw $t0, -3716($fp)
	li $t0, 4
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
	addi $t0, $fp, -84
	sw $t0, -3736($fp)
	li $t0, 5
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
	addi $t0, $fp, -84
	sw $t0, -3756($fp)
	li $t0, 6
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
	addi $t0, $fp, -84
	sw $t0, -3776($fp)
	li $t0, 7
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
	addi $t0, $fp, -84
	sw $t0, -3796($fp)
	li $t0, 8
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
	addi $t0, $fp, -84
	sw $t0, -3816($fp)
	li $t0, 9
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
	addi $t0, $fp, -88
	sw $t0, -3836($fp)
	li $t0, 0
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
	lw $t0, -660($fp)
	sw $t0, -3856($fp)
	lw $t0, -3856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -672($fp)
	sw $t0, -3860($fp)
	lw $t0, -3860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -3864($fp)
	li $t0, 0
	sw $t0, -3868($fp)
	li $t0, 4
	lw $t1, -3868($fp)
	mul $t0, $t0, $t1
	sw $t0, -3872($fp)
	lw $t0, -3872($fp)
	lw $t1, -3864($fp)
	add $t0, $t0, $t1
	sw $t0, -3876($fp)
	lw $t0, -3876($fp)
	lw $t1, 0($t0)
	sw $t1, -3880($fp)
	lw $t0, -3880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -3884($fp)
	li $t0, 1
	sw $t0, -3888($fp)
	li $t0, 4
	lw $t1, -3888($fp)
	mul $t0, $t0, $t1
	sw $t0, -3892($fp)
	lw $t0, -3892($fp)
	lw $t1, -3884($fp)
	add $t0, $t0, $t1
	sw $t0, -3896($fp)
	lw $t0, -3896($fp)
	lw $t1, 0($t0)
	sw $t1, -3900($fp)
	lw $t0, -3900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -732($fp)
	sw $t0, -3904($fp)
	lw $t0, -3904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -744($fp)
	sw $t0, -3908($fp)
	lw $t0, -3908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -756($fp)
	sw $t0, -3912($fp)
	lw $t0, -3912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -768($fp)
	sw $t0, -3916($fp)
	lw $t0, -3916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -3920($fp)
	li $t0, 0
	sw $t0, -3924($fp)
	li $t0, 4
	lw $t1, -3924($fp)
	mul $t0, $t0, $t1
	sw $t0, -3928($fp)
	lw $t0, -3928($fp)
	lw $t1, -3920($fp)
	add $t0, $t0, $t1
	sw $t0, -3932($fp)
	lw $t0, -3932($fp)
	lw $t1, 0($t0)
	sw $t1, -3936($fp)
	lw $t0, -3936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -3940($fp)
	li $t0, 1
	sw $t0, -3944($fp)
	li $t0, 4
	lw $t1, -3944($fp)
	mul $t0, $t0, $t1
	sw $t0, -3948($fp)
	lw $t0, -3948($fp)
	lw $t1, -3940($fp)
	add $t0, $t0, $t1
	sw $t0, -3952($fp)
	lw $t0, -3952($fp)
	lw $t1, 0($t0)
	sw $t1, -3956($fp)
	lw $t0, -3956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -828($fp)
	sw $t0, -3960($fp)
	lw $t0, -3960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -840($fp)
	sw $t0, -3964($fp)
	lw $t0, -3964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -852($fp)
	sw $t0, -3968($fp)
	lw $t0, -3968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -864($fp)
	sw $t0, -3972($fp)
	lw $t0, -3972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -876($fp)
	sw $t0, -3976($fp)
	lw $t0, -3976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -888($fp)
	sw $t0, -3980($fp)
	lw $t0, -3980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -900($fp)
	sw $t0, -3984($fp)
	lw $t0, -3984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -3988($fp)
	li $t0, 0
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
	lw $t0, -4004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -4008($fp)
	li $t0, 1
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
	lw $t0, -960($fp)
	sw $t0, -4028($fp)
	lw $t0, -4028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -972($fp)
	sw $t0, -4032($fp)
	lw $t0, -4032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -984($fp)
	sw $t0, -4036($fp)
	lw $t0, -4036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -996($fp)
	sw $t0, -4040($fp)
	lw $t0, -4040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1008($fp)
	sw $t0, -4044($fp)
	lw $t0, -4044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1020($fp)
	sw $t0, -4048($fp)
	lw $t0, -4048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
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
	addi $t0, $fp, -148
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
	addi $t0, $fp, -148
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
	addi $t0, $fp, -148
	sw $t0, -4112($fp)
	li $t0, 3
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
	lw $t0, -4128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -4132($fp)
	li $t0, 4
	sw $t0, -4136($fp)
	li $t0, 4
	lw $t1, -4136($fp)
	mul $t0, $t0, $t1
	sw $t0, -4140($fp)
	lw $t0, -4140($fp)
	lw $t1, -4132($fp)
	add $t0, $t0, $t1
	sw $t0, -4144($fp)
	lw $t0, -4144($fp)
	lw $t1, 0($t0)
	sw $t1, -4148($fp)
	lw $t0, -4148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -4152($fp)
	li $t0, 5
	sw $t0, -4156($fp)
	li $t0, 4
	lw $t1, -4156($fp)
	mul $t0, $t0, $t1
	sw $t0, -4160($fp)
	lw $t0, -4160($fp)
	lw $t1, -4152($fp)
	add $t0, $t0, $t1
	sw $t0, -4164($fp)
	lw $t0, -4164($fp)
	lw $t1, 0($t0)
	sw $t1, -4168($fp)
	lw $t0, -4168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -4172($fp)
	li $t0, 6
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
	lw $t0, -4188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -4192($fp)
	li $t0, 7
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
	lw $t0, -4208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -4212($fp)
	li $t0, 8
	sw $t0, -4216($fp)
	li $t0, 4
	lw $t1, -4216($fp)
	mul $t0, $t0, $t1
	sw $t0, -4220($fp)
	lw $t0, -4220($fp)
	lw $t1, -4212($fp)
	add $t0, $t0, $t1
	sw $t0, -4224($fp)
	lw $t0, -4224($fp)
	lw $t1, 0($t0)
	sw $t1, -4228($fp)
	lw $t0, -4228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 29133
	sw $t0, -4232($fp)
	li $t0, 0
	lw $t1, -4232($fp)
	sub $t0, $t0, $t1
	sw $t0, -4236($fp)
	lw $ra, -4($fp)
	lw $v0, -4236($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -3884
	li $t0, 55410
	sw $t0, -136($fp)
	addi $t0, $fp, -32
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
	li $t0, 837
	sw $t0, -160($fp)
	addi $t0, $fp, -32
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
	li $t0, 4485
	sw $t0, -184($fp)
	addi $t0, $fp, -32
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
	li $t0, 34145
	sw $t0, -208($fp)
	addi $t0, $fp, -32
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
	li $t0, 37187
	sw $t0, -232($fp)
	addi $t0, $fp, -32
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
	li $t0, 31171
	sw $t0, -256($fp)
	addi $t0, $fp, -32
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
	li $t0, 61786
	sw $t0, -280($fp)
	addi $t0, $fp, -32
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
	li $t0, 2803
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -312($fp)
	li $t0, 43026
	sw $t0, -316($fp)
	addi $t0, $fp, -68
	sw $t0, -320($fp)
	li $t0, 0
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
	li $t0, 60562
	sw $t0, -340($fp)
	addi $t0, $fp, -68
	sw $t0, -344($fp)
	li $t0, 1
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
	li $t0, 10353
	sw $t0, -364($fp)
	addi $t0, $fp, -68
	sw $t0, -368($fp)
	li $t0, 2
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
	li $t0, 31941
	sw $t0, -388($fp)
	addi $t0, $fp, -68
	sw $t0, -392($fp)
	li $t0, 3
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
	li $t0, 15412
	sw $t0, -412($fp)
	addi $t0, $fp, -68
	sw $t0, -416($fp)
	li $t0, 4
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
	li $t0, 2966
	sw $t0, -436($fp)
	addi $t0, $fp, -68
	sw $t0, -440($fp)
	li $t0, 5
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
	li $t0, 11961
	sw $t0, -460($fp)
	addi $t0, $fp, -68
	sw $t0, -464($fp)
	li $t0, 6
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
	li $t0, 50383
	sw $t0, -484($fp)
	addi $t0, $fp, -68
	sw $t0, -488($fp)
	li $t0, 7
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
	li $t0, 47781
	sw $t0, -508($fp)
	addi $t0, $fp, -68
	sw $t0, -512($fp)
	li $t0, 8
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
	li $t0, 65085
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	li $t0, 8526
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	li $t0, 28425
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	li $t0, 59364
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	li $t0, 32013
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	li $t0, 39942
	sw $t0, -592($fp)
	addi $t0, $fp, -108
	sw $t0, -596($fp)
	li $t0, 0
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
	li $t0, 45610
	sw $t0, -616($fp)
	addi $t0, $fp, -108
	sw $t0, -620($fp)
	li $t0, 1
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
	li $t0, 51190
	sw $t0, -640($fp)
	addi $t0, $fp, -108
	sw $t0, -644($fp)
	li $t0, 2
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
	li $t0, 12492
	sw $t0, -664($fp)
	addi $t0, $fp, -108
	sw $t0, -668($fp)
	li $t0, 3
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
	li $t0, 12059
	sw $t0, -688($fp)
	addi $t0, $fp, -108
	sw $t0, -692($fp)
	li $t0, 4
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
	li $t0, 44781
	sw $t0, -712($fp)
	addi $t0, $fp, -108
	sw $t0, -716($fp)
	li $t0, 5
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
	li $t0, 56887
	sw $t0, -736($fp)
	addi $t0, $fp, -108
	sw $t0, -740($fp)
	li $t0, 6
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -748($fp)
	lw $t0, -740($fp)
	lw $t1, -748($fp)
	add $t0, $t0, $t1
	sw $t0, -752($fp)
	lw $t0, -736($fp)
	lw $t1, -752($fp)
	sw $t0, 0($t1)
	lw $t0, -752($fp)
	lw $t1, 0($t0)
	sw $t1, -756($fp)
	li $t0, 17124
	sw $t0, -760($fp)
	addi $t0, $fp, -108
	sw $t0, -764($fp)
	li $t0, 7
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -772($fp)
	lw $t0, -764($fp)
	lw $t1, -772($fp)
	add $t0, $t0, $t1
	sw $t0, -776($fp)
	lw $t0, -760($fp)
	lw $t1, -776($fp)
	sw $t0, 0($t1)
	lw $t0, -776($fp)
	lw $t1, 0($t0)
	sw $t1, -780($fp)
	li $t0, 8379
	sw $t0, -784($fp)
	addi $t0, $fp, -108
	sw $t0, -788($fp)
	li $t0, 8
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
	li $t0, 46761
	sw $t0, -808($fp)
	addi $t0, $fp, -108
	sw $t0, -812($fp)
	li $t0, 9
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
	li $t0, 17961
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -840($fp)
	li $t0, 12864
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -852($fp)
	li $t0, 15370
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -864($fp)
	li $t0, 55149
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	sw $t0, -876($fp)
	li $t0, 44036
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	sw $t0, -888($fp)
	li $t0, 11620
	sw $t0, -892($fp)
	addi $t0, $fp, -112
	sw $t0, -896($fp)
	li $t0, 0
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
	li $t0, 57952
	sw $t0, -916($fp)
	addi $t0, $fp, -132
	sw $t0, -920($fp)
	li $t0, 0
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
	li $t0, 21526
	sw $t0, -940($fp)
	addi $t0, $fp, -132
	sw $t0, -944($fp)
	li $t0, 1
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
	li $t0, 6646
	sw $t0, -964($fp)
	addi $t0, $fp, -132
	sw $t0, -968($fp)
	li $t0, 2
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -976($fp)
	lw $t0, -968($fp)
	lw $t1, -976($fp)
	add $t0, $t0, $t1
	sw $t0, -980($fp)
	lw $t0, -964($fp)
	lw $t1, -980($fp)
	sw $t0, 0($t1)
	lw $t0, -980($fp)
	lw $t1, 0($t0)
	sw $t1, -984($fp)
	li $t0, 2769
	sw $t0, -988($fp)
	addi $t0, $fp, -132
	sw $t0, -992($fp)
	li $t0, 3
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
	li $t0, 53468
	sw $t0, -1012($fp)
	addi $t0, $fp, -132
	sw $t0, -1016($fp)
	li $t0, 4
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
	addi $t0, $fp, -108
	sw $t0, -1036($fp)
	li $t0, 0
	sw $t0, -1040($fp)
	li $t0, 22058
	sw $t0, -1044($fp)
	lw $t0, -860($fp)
	sw $t0, -1048($fp)
	lw $t1, -1044($fp)
	lw $t2, -1048($fp)
	beq $t1, $t2, label663
	j label664
label663:
	li $t0, 1
	sw $t0, -1040($fp)
label664:
	li $t0, 4
	lw $t1, -1040($fp)
	mul $t0, $t0, $t1
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	lw $t1, -1036($fp)
	add $t0, $t0, $t1
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	lw $t1, 0($t0)
	sw $t1, -1060($fp)
	lw $t0, -884($fp)
	sw $t0, -1064($fp)
	lw $t0, -1060($fp)
	lw $t1, -1064($fp)
	mul $t0, $t0, $t1
	sw $t0, -1068($fp)
	li $t0, 5735
	sw $t0, -1072($fp)
	lw $t0, -1068($fp)
	lw $t1, -1072($fp)
	add $t0, $t0, $t1
	sw $t0, -1076($fp)
	lw $t1, -1076($fp)
	li $t2, 0
	bne $t1, $t2, label660
	j label661
label660:
	li $t0, 0
	sw $t0, -1080($fp)
	lw $t0, -884($fp)
	sw $t0, -1084($fp)
	lw $t1, -1084($fp)
	li $t2, 0
	bne $t1, $t2, label669
	j label668
label668:
	li $t0, 1
	sw $t0, -1080($fp)
label669:
	lw $t0, -536($fp)
	sw $t0, -1088($fp)
	lw $t1, -1080($fp)
	lw $t2, -1088($fp)
	blt $t1, $t2, label665
	j label666
label665:
label670:
	li $t0, 65429
	sw $t0, -1092($fp)
	lw $t1, -1092($fp)
	li $t2, 0
	bne $t1, $t2, label672
	j label671
label671:
	li $t0, 6906
	sw $t0, -1144($fp)
	addi $t0, $fp, -1132
	sw $t0, -1148($fp)
	li $t0, 0
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
	li $t0, 53517
	sw $t0, -1168($fp)
	addi $t0, $fp, -1132
	sw $t0, -1172($fp)
	li $t0, 1
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
	li $t0, 64978
	sw $t0, -1192($fp)
	addi $t0, $fp, -1132
	sw $t0, -1196($fp)
	li $t0, 2
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1204($fp)
	lw $t0, -1196($fp)
	lw $t1, -1204($fp)
	add $t0, $t0, $t1
	sw $t0, -1208($fp)
	lw $t0, -1192($fp)
	lw $t1, -1208($fp)
	sw $t0, 0($t1)
	lw $t0, -1208($fp)
	lw $t1, 0($t0)
	sw $t1, -1212($fp)
	li $t0, 15432
	sw $t0, -1216($fp)
	addi $t0, $fp, -1132
	sw $t0, -1220($fp)
	li $t0, 3
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1228($fp)
	lw $t0, -1220($fp)
	lw $t1, -1228($fp)
	add $t0, $t0, $t1
	sw $t0, -1232($fp)
	lw $t0, -1216($fp)
	lw $t1, -1232($fp)
	sw $t0, 0($t1)
	lw $t0, -1232($fp)
	lw $t1, 0($t0)
	sw $t1, -1236($fp)
	li $t0, 16406
	sw $t0, -1240($fp)
	addi $t0, $fp, -1132
	sw $t0, -1244($fp)
	li $t0, 4
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1252($fp)
	lw $t0, -1244($fp)
	lw $t1, -1252($fp)
	add $t0, $t0, $t1
	sw $t0, -1256($fp)
	lw $t0, -1240($fp)
	lw $t1, -1256($fp)
	sw $t0, 0($t1)
	lw $t0, -1256($fp)
	lw $t1, 0($t0)
	sw $t1, -1260($fp)
	li $t0, 58806
	sw $t0, -1264($fp)
	addi $t0, $fp, -1132
	sw $t0, -1268($fp)
	li $t0, 5
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1276($fp)
	lw $t0, -1268($fp)
	lw $t1, -1276($fp)
	add $t0, $t0, $t1
	sw $t0, -1280($fp)
	lw $t0, -1264($fp)
	lw $t1, -1280($fp)
	sw $t0, 0($t1)
	lw $t0, -1280($fp)
	lw $t1, 0($t0)
	sw $t1, -1284($fp)
	li $t0, 47445
	sw $t0, -1288($fp)
	addi $t0, $fp, -1132
	sw $t0, -1292($fp)
	li $t0, 6
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
	li $t0, 56348
	sw $t0, -1312($fp)
	addi $t0, $fp, -1132
	sw $t0, -1316($fp)
	li $t0, 7
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
	li $t0, 38881
	sw $t0, -1336($fp)
	addi $t0, $fp, -1132
	sw $t0, -1340($fp)
	li $t0, 8
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
	li $t0, 33099
	sw $t0, -1360($fp)
	addi $t0, $fp, -1132
	sw $t0, -1364($fp)
	li $t0, 9
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
	li $t0, 3305
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	sw $t0, -1392($fp)
	li $t0, 50940
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	sw $t0, -1404($fp)
	li $t0, 12345
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	sw $t0, -1416($fp)
	li $t0, 60192
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	sw $t0, -1428($fp)
	li $t0, 2528
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	sw $t0, -1440($fp)
	li $t0, 20724
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	sw $t0, -1452($fp)
	li $t0, 41417
	sw $t0, -1456($fp)
	addi $t0, $fp, -1140
	sw $t0, -1460($fp)
	li $t0, 0
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1468($fp)
	lw $t0, -1460($fp)
	lw $t1, -1468($fp)
	add $t0, $t0, $t1
	sw $t0, -1472($fp)
	lw $t0, -1456($fp)
	lw $t1, -1472($fp)
	sw $t0, 0($t1)
	lw $t0, -1472($fp)
	lw $t1, 0($t0)
	sw $t1, -1476($fp)
	li $t0, 20489
	sw $t0, -1480($fp)
	addi $t0, $fp, -1140
	sw $t0, -1484($fp)
	li $t0, 1
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1492($fp)
	lw $t0, -1484($fp)
	lw $t1, -1492($fp)
	add $t0, $t0, $t1
	sw $t0, -1496($fp)
	lw $t0, -1480($fp)
	lw $t1, -1496($fp)
	sw $t0, 0($t1)
	lw $t0, -1496($fp)
	lw $t1, 0($t0)
	sw $t1, -1500($fp)
	li $t0, 33588
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	sw $t0, -1512($fp)
	li $t0, 56787
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	sw $t0, -1524($fp)
	li $t0, 10102
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	sw $t0, -1536($fp)
	li $t0, 12088
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	sw $t0, -1548($fp)
	li $t0, 2872
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	sw $t0, -1560($fp)
	li $t0, 2518
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	sw $t0, -1572($fp)
	addi $t0, $fp, -32
	sw $t0, -1576($fp)
	lw $t0, -1508($fp)
	sw $t0, -1580($fp)
	li $t0, 33615
	sw $t0, -1584($fp)
	lw $t0, -1580($fp)
	lw $t1, -1584($fp)
	add $t0, $t0, $t1
	sw $t0, -1588($fp)
	li $t0, 9518
	sw $t0, -1592($fp)
	lw $t0, -1588($fp)
	lw $t1, -1592($fp)
	add $t0, $t0, $t1
	sw $t0, -1596($fp)
	li $t0, 0
	sw $t0, -1600($fp)
	li $t0, 5288
	sw $t0, -1604($fp)
	lw $t1, -1604($fp)
	li $t2, 0
	bne $t1, $t2, label674
	j label673
label673:
	li $t0, 1
	sw $t0, -1600($fp)
label674:
	lw $t0, -1596($fp)
	lw $t1, -1600($fp)
	add $t0, $t0, $t1
	sw $t0, -1608($fp)
	li $t0, 4
	lw $t1, -1608($fp)
	mul $t0, $t0, $t1
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	lw $t1, -1576($fp)
	add $t0, $t0, $t1
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	lw $t1, 0($t0)
	sw $t1, -1620($fp)
	li $t0, 0
	sw $t0, -1624($fp)
	lw $t0, 4($fp)
	sw $t0, -1628($fp)
	lw $t1, -1628($fp)
	li $t2, 0
	bne $t1, $t2, label675
	j label676
label675:
	li $t0, 1
	sw $t0, -1624($fp)
label676:
	li $t0, 0
	sw $t0, -1632($fp)
	li $t0, 21547
	sw $t0, -1636($fp)
	lw $t0, -572($fp)
	sw $t0, -1640($fp)
	lw $t0, -1636($fp)
	lw $t1, -1640($fp)
	mul $t0, $t0, $t1
	sw $t0, -1644($fp)
	lw $t0, -1400($fp)
	sw $t0, -1648($fp)
	lw $t0, -1644($fp)
	lw $t1, -1648($fp)
	sub $t0, $t0, $t1
	sw $t0, -1652($fp)
	li $t0, 31577
	sw $t0, -1656($fp)
	lw $t0, -1652($fp)
	lw $t1, -1656($fp)
	add $t0, $t0, $t1
	sw $t0, -1660($fp)
	lw $t1, -1660($fp)
	li $t2, 0
	bne $t1, $t2, label677
	j label679
label679:
	li $t0, 0
	sw $t0, -1664($fp)
	lw $t0, -836($fp)
	sw $t0, -1668($fp)
	lw $t1, -1668($fp)
	li $t2, 0
	bne $t1, $t2, label681
	j label680
label680:
	li $t0, 1
	sw $t0, -1664($fp)
label681:
	lw $t0, -1568($fp)
	sw $t0, -1672($fp)
	lw $t0, -1664($fp)
	lw $t1, -1672($fp)
	add $t0, $t0, $t1
	sw $t0, -1676($fp)
	lw $t1, -1676($fp)
	li $t2, 0
	bne $t1, $t2, label677
	j label678
label677:
	li $t0, 1
	sw $t0, -1632($fp)
label678:
	addi $t0, $fp, -1132
	sw $t0, -1680($fp)
	li $t0, 0
	sw $t0, -1684($fp)
	li $t0, 4
	lw $t1, -1684($fp)
	mul $t0, $t0, $t1
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	lw $t1, -1680($fp)
	add $t0, $t0, $t1
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	lw $t1, 0($t0)
	sw $t1, -1696($fp)
	lw $t0, -1696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1132
	sw $t0, -1700($fp)
	li $t0, 1
	sw $t0, -1704($fp)
	li $t0, 4
	lw $t1, -1704($fp)
	mul $t0, $t0, $t1
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	lw $t1, -1700($fp)
	add $t0, $t0, $t1
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	lw $t1, 0($t0)
	sw $t1, -1716($fp)
	lw $t0, -1716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1132
	sw $t0, -1720($fp)
	li $t0, 2
	sw $t0, -1724($fp)
	li $t0, 4
	lw $t1, -1724($fp)
	mul $t0, $t0, $t1
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	lw $t1, -1720($fp)
	add $t0, $t0, $t1
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	lw $t1, 0($t0)
	sw $t1, -1736($fp)
	lw $t0, -1736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1132
	sw $t0, -1740($fp)
	li $t0, 3
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
	addi $t0, $fp, -1132
	sw $t0, -1760($fp)
	li $t0, 4
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
	addi $t0, $fp, -1132
	sw $t0, -1780($fp)
	li $t0, 5
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
	addi $t0, $fp, -1132
	sw $t0, -1800($fp)
	li $t0, 6
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
	addi $t0, $fp, -1132
	sw $t0, -1820($fp)
	li $t0, 7
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
	addi $t0, $fp, -1132
	sw $t0, -1840($fp)
	li $t0, 8
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
	addi $t0, $fp, -1132
	sw $t0, -1860($fp)
	li $t0, 9
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
	lw $t0, -1388($fp)
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1400($fp)
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1412($fp)
	sw $t0, -1888($fp)
	lw $t0, -1888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1424($fp)
	sw $t0, -1892($fp)
	lw $t0, -1892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1436($fp)
	sw $t0, -1896($fp)
	lw $t0, -1896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1448($fp)
	sw $t0, -1900($fp)
	lw $t0, -1900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1140
	sw $t0, -1904($fp)
	li $t0, 0
	sw $t0, -1908($fp)
	li $t0, 4
	lw $t1, -1908($fp)
	mul $t0, $t0, $t1
	sw $t0, -1912($fp)
	lw $t0, -1912($fp)
	lw $t1, -1904($fp)
	add $t0, $t0, $t1
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	lw $t1, 0($t0)
	sw $t1, -1920($fp)
	lw $t0, -1920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1140
	sw $t0, -1924($fp)
	li $t0, 1
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
	lw $t0, -1940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1508($fp)
	sw $t0, -1944($fp)
	lw $t0, -1944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1520($fp)
	sw $t0, -1948($fp)
	lw $t0, -1948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1532($fp)
	sw $t0, -1952($fp)
	lw $t0, -1952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1544($fp)
	sw $t0, -1956($fp)
	lw $t0, -1956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1556($fp)
	sw $t0, -1960($fp)
	lw $t0, -1960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1964($fp)
	li $t0, 0
	sw $t0, -1968($fp)
	addi $t0, $fp, -1132
	sw $t0, -1972($fp)
	li $t0, 0
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
	lw $t0, -536($fp)
	sw $t0, -1992($fp)
	li $t0, 0
	lw $t1, -1992($fp)
	sub $t0, $t0, $t1
	sw $t0, -1996($fp)
	li $t0, 0
	lw $t1, -1996($fp)
	sub $t0, $t0, $t1
	sw $t0, -2000($fp)
	lw $t1, -1988($fp)
	lw $t2, -2000($fp)
	ble $t1, $t2, label684
	j label685
label684:
	li $t0, 1
	sw $t0, -1968($fp)
label685:
	li $t0, 0
	sw $t0, -2004($fp)
	addi $t0, $fp, -68
	sw $t0, -2008($fp)
	li $t0, 5
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
	lw $t1, -2024($fp)
	li $t2, 0
	bne $t1, $t2, label687
	j label686
label686:
	li $t0, 1
	sw $t0, -2004($fp)
label687:
	lw $t1, -1968($fp)
	lw $t2, -2004($fp)
	bge $t1, $t2, label682
	j label683
label682:
	li $t0, 1
	sw $t0, -1964($fp)
label683:
	lw $ra, -4($fp)
	lw $v0, -1964($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label688:
	li $t0, 0
	sw $t0, -2028($fp)
	lw $t0, -1532($fp)
	sw $t0, -2032($fp)
	lw $t1, -2032($fp)
	li $t2, 0
	bne $t1, $t2, label692
	j label691
label691:
	li $t0, 1
	sw $t0, -2028($fp)
label692:
	li $t0, 15410
	sw $t0, -2036($fp)
	lw $t0, -2028($fp)
	lw $t1, -2036($fp)
	add $t0, $t0, $t1
	sw $t0, -2040($fp)
	li $t0, 0
	sw $t0, -2044($fp)
	li $t0, 20883
	sw $t0, -2048($fp)
	li $t0, 53915
	sw $t0, -2052($fp)
	lw $t1, -2048($fp)
	lw $t2, -2052($fp)
	blt $t1, $t2, label693
	j label694
label693:
	li $t0, 1
	sw $t0, -2044($fp)
label694:
	addi $sp, $sp, -4
	lw $t0, -2040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2044($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -2056($fp)
	addi $sp, $sp, 12
	jal f6
	sw $v0, -2060($fp)
	addi $sp, $sp, 4
	lw $t0, -2056($fp)
	lw $t1, -2060($fp)
	add $t0, $t0, $t1
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -2068($fp)
	lw $t1, -2068($fp)
	li $t2, 0
	bne $t1, $t2, label689
	j label690
label689:
	li $t0, 0
	sw $t0, -2072($fp)
	li $t0, 35824
	sw $t0, -2076($fp)
	lw $t0, -572($fp)
	sw $t0, -2080($fp)
	lw $t1, -2076($fp)
	lw $t2, -2080($fp)
	beq $t1, $t2, label700
	j label699
label700:
	lw $t0, -560($fp)
	sw $t0, -2084($fp)
	lw $t1, -2084($fp)
	li $t2, 0
	bne $t1, $t2, label698
	j label699
label698:
	li $t0, 1
	sw $t0, -2072($fp)
label699:
	jal f7
	sw $v0, -2088($fp)
	addi $sp, $sp, 4
	li $t0, 14153
	sw $t0, -2092($fp)
	li $t0, 0
	lw $t1, -2092($fp)
	sub $t0, $t0, $t1
	sw $t0, -2096($fp)
	addi $sp, $sp, -4
	lw $t0, -2072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2096($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2100($fp)
	addi $sp, $sp, 16
	jal f7
	sw $v0, -2104($fp)
	addi $sp, $sp, 4
	lw $t0, -2100($fp)
	lw $t1, -2104($fp)
	mul $t0, $t0, $t1
	sw $t0, -2108($fp)
	li $t0, 0
	sw $t0, -2112($fp)
	li $t0, 6223
	sw $t0, -2116($fp)
	lw $t0, -836($fp)
	sw $t0, -2120($fp)
	lw $t1, -2116($fp)
	lw $t2, -2120($fp)
	blt $t1, $t2, label701
	j label702
label701:
	li $t0, 1
	sw $t0, -2112($fp)
label702:
	addi $t0, $fp, -132
	sw $t0, -2124($fp)
	lw $t0, -572($fp)
	sw $t0, -2128($fp)
	li $t0, 4
	lw $t1, -2128($fp)
	mul $t0, $t0, $t1
	sw $t0, -2132($fp)
	lw $t0, -2132($fp)
	lw $t1, -2124($fp)
	add $t0, $t0, $t1
	sw $t0, -2136($fp)
	lw $t0, -2136($fp)
	lw $t1, 0($t0)
	sw $t1, -2140($fp)
	addi $sp, $sp, -4
	lw $t0, -2140($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2144($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -2112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2144($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -2148($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -2148($fp)
	sub $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $t0, -2108($fp)
	lw $t1, -2152($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2156($fp)
	li $t0, 0
	lw $t1, -2156($fp)
	sub $t0, $t0, $t1
	sw $t0, -2160($fp)
	lw $t1, -2160($fp)
	li $t2, 0
	bne $t1, $t2, label695
	j label696
label695:
label703:
	lw $t0, -836($fp)
	sw $t0, -2164($fp)
	li $t0, 53034
	sw $t0, -2168($fp)
	lw $t1, -2164($fp)
	lw $t2, -2168($fp)
	ble $t1, $t2, label706
	j label705
label706:
	li $t0, 3388
	sw $t0, -2172($fp)
	lw $t0, -884($fp)
	sw $t0, -2176($fp)
	lw $t0, -2172($fp)
	lw $t1, -2176($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2180($fp)
	jal f7
	sw $v0, -2184($fp)
	addi $sp, $sp, 4
	lw $t0, -2180($fp)
	lw $t1, -2184($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2188($fp)
	lw $t1, -2188($fp)
	li $t2, 0
	bne $t1, $t2, label704
	j label705
label704:
	addi $t0, $fp, -68
	sw $t0, -2192($fp)
	li $t0, 0
	sw $t0, -2196($fp)
	li $t0, 0
	sw $t0, -2200($fp)
	lw $t0, -1532($fp)
	sw $t0, -2204($fp)
	li $t0, 9528
	sw $t0, -2208($fp)
	lw $t1, -2204($fp)
	lw $t2, -2208($fp)
	ble $t1, $t2, label709
	j label710
label709:
	li $t0, 1
	sw $t0, -2200($fp)
label710:
	lw $t0, -1412($fp)
	sw $t0, -2212($fp)
	lw $t1, -2200($fp)
	lw $t2, -2212($fp)
	beq $t1, $t2, label707
	j label708
label707:
	li $t0, 1
	sw $t0, -2196($fp)
label708:
	li $t0, 4
	lw $t1, -2196($fp)
	mul $t0, $t0, $t1
	sw $t0, -2216($fp)
	lw $t0, -2216($fp)
	lw $t1, -2192($fp)
	add $t0, $t0, $t1
	sw $t0, -2220($fp)
	lw $t0, -2220($fp)
	lw $t1, 0($t0)
	sw $t1, -2224($fp)
	addi $t0, $fp, -68
	sw $t0, -2228($fp)
	li $t0, 0
	sw $t0, -2232($fp)
	li $t0, 38438
	sw $t0, -2236($fp)
	lw $t1, -2236($fp)
	li $t2, 0
	bne $t1, $t2, label713
	j label712
label713:
	lw $t0, -572($fp)
	sw $t0, -2240($fp)
	lw $t1, -2240($fp)
	li $t2, 0
	bne $t1, $t2, label711
	j label712
label711:
	li $t0, 1
	sw $t0, -2232($fp)
label712:
	li $t0, 4
	lw $t1, -2232($fp)
	mul $t0, $t0, $t1
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	lw $t1, -2228($fp)
	add $t0, $t0, $t1
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	lw $t1, 0($t0)
	sw $t1, -2252($fp)
	lw $t0, -2224($fp)
	lw $t1, -2252($fp)
	sub $t0, $t0, $t1
	sw $t0, -2256($fp)
	j label703
label705:
	j label697
label696:
	li $t0, 0
	sw $t0, -2260($fp)
	li $t0, 0
	sw $t0, -2264($fp)
	addi $t0, $fp, -1140
	sw $t0, -2268($fp)
	lw $t0, -836($fp)
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
	lw $t0, -572($fp)
	sw $t0, -2288($fp)
	lw $t0, -2284($fp)
	lw $t1, -2288($fp)
	add $t0, $t0, $t1
	sw $t0, -2292($fp)
	li $t0, 0
	sw $t0, -2296($fp)
	lw $t0, -584($fp)
	sw $t0, -2300($fp)
	li $t0, 0
	lw $t1, -2300($fp)
	sub $t0, $t0, $t1
	sw $t0, -2304($fp)
	lw $t0, -1556($fp)
	sw $t0, -2308($fp)
	lw $t1, -2304($fp)
	lw $t2, -2308($fp)
	beq $t1, $t2, label718
	j label719
label718:
	li $t0, 1
	sw $t0, -2296($fp)
label719:
	addi $t0, $fp, -108
	sw $t0, -2312($fp)
	lw $t0, -1520($fp)
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
	addi $sp, $sp, -4
	lw $t0, -2296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2328($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -2332($fp)
	addi $sp, $sp, 12
	lw $t0, -836($fp)
	sw $t0, -2336($fp)
	lw $t0, -2332($fp)
	lw $t1, -2336($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2340($fp)
	li $t0, 4184
	sw $t0, -2344($fp)
	li $t0, 15733
	sw $t0, -2348($fp)
	lw $t0, -572($fp)
	sw $t0, -2352($fp)
	lw $t0, -2348($fp)
	lw $t1, -2352($fp)
	sub $t0, $t0, $t1
	sw $t0, -2356($fp)
	addi $sp, $sp, -4
	lw $t0, -2292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2356($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2360($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -108
	sw $t0, -2364($fp)
	lw $t0, -308($fp)
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
	lw $t0, -2360($fp)
	lw $t1, -2380($fp)
	mul $t0, $t0, $t1
	sw $t0, -2384($fp)
	li $t0, 0
	sw $t0, -2388($fp)
	addi $t0, $fp, -68
	sw $t0, -2392($fp)
	li $t0, 4
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
	lw $t1, -2408($fp)
	li $t2, 0
	bne $t1, $t2, label721
	j label720
label720:
	li $t0, 1
	sw $t0, -2388($fp)
label721:
	lw $t1, -2384($fp)
	lw $t2, -2388($fp)
	ble $t1, $t2, label716
	j label717
label716:
	li $t0, 1
	sw $t0, -2264($fp)
label717:
	li $t0, 0
	sw $t0, -2412($fp)
	li $t0, 45601
	sw $t0, -2416($fp)
	li $t0, 61456
	sw $t0, -2420($fp)
	lw $t0, -2416($fp)
	lw $t1, -2420($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2424($fp)
	li $t0, 4509
	sw $t0, -2428($fp)
	lw $t0, -2424($fp)
	lw $t1, -2428($fp)
	mul $t0, $t0, $t1
	sw $t0, -2432($fp)
	lw $t0, -548($fp)
	sw $t0, -2436($fp)
	li $t0, 36852
	sw $t0, -2440($fp)
	lw $t0, -2436($fp)
	lw $t1, -2440($fp)
	add $t0, $t0, $t1
	sw $t0, -2444($fp)
	lw $t1, -2432($fp)
	lw $t2, -2444($fp)
	ble $t1, $t2, label722
	j label723
label722:
	li $t0, 1
	sw $t0, -2412($fp)
label723:
	lw $t1, -2264($fp)
	lw $t2, -2412($fp)
	beq $t1, $t2, label714
	j label715
label714:
	li $t0, 1
	sw $t0, -2260($fp)
label715:
label697:
	j label688
label690:
	li $t0, 0
	sw $t0, -2448($fp)
	addi $t0, $fp, -1140
	sw $t0, -2452($fp)
	lw $t0, -1508($fp)
	sw $t0, -2456($fp)
	li $t0, 4
	lw $t1, -2456($fp)
	mul $t0, $t0, $t1
	sw $t0, -2460($fp)
	lw $t0, -2460($fp)
	lw $t1, -2452($fp)
	add $t0, $t0, $t1
	sw $t0, -2464($fp)
	lw $t0, -2464($fp)
	lw $t1, 0($t0)
	sw $t1, -2468($fp)
	lw $t1, -2468($fp)
	li $t2, 0
	bne $t1, $t2, label728
	j label727
label727:
	li $t0, 1
	sw $t0, -2448($fp)
label728:
	li $t0, 0
	lw $t1, -2448($fp)
	sub $t0, $t0, $t1
	sw $t0, -2472($fp)
	lw $t0, -1556($fp)
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -2480($fp)
	addi $sp, $sp, -4
	lw $t0, -2480($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2484($fp)
	addi $sp, $sp, 8
	lw $t0, 8($fp)
	sw $t0, -2488($fp)
	li $t0, 0
	sw $t0, -2492($fp)
	lw $t0, 4($fp)
	sw $t0, -2496($fp)
	lw $t0, -572($fp)
	sw $t0, -2500($fp)
	lw $t0, -2496($fp)
	lw $t1, -2500($fp)
	add $t0, $t0, $t1
	sw $t0, -2504($fp)
	li $t0, 16598
	sw $t0, -2508($fp)
	lw $t1, -2504($fp)
	lw $t2, -2508($fp)
	blt $t1, $t2, label729
	j label730
label729:
	li $t0, 1
	sw $t0, -2492($fp)
label730:
	li $t0, 0
	sw $t0, -2512($fp)
	lw $t0, -560($fp)
	sw $t0, -2516($fp)
	lw $t0, -308($fp)
	sw $t0, -2520($fp)
	lw $t0, -2516($fp)
	lw $t1, -2520($fp)
	mul $t0, $t0, $t1
	sw $t0, -2524($fp)
	lw $t1, -2524($fp)
	li $t2, 0
	bne $t1, $t2, label733
	j label732
label733:
	li $t0, 6022
	sw $t0, -2528($fp)
	lw $t1, -2528($fp)
	li $t2, 0
	bne $t1, $t2, label731
	j label732
label731:
	li $t0, 1
	sw $t0, -2512($fp)
label732:
	addi $sp, $sp, -4
	lw $t0, -2484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2512($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2532($fp)
	addi $sp, $sp, 20
	lw $t0, -2472($fp)
	lw $t1, -2532($fp)
	sub $t0, $t0, $t1
	sw $t0, -2536($fp)
	lw $t1, -2536($fp)
	li $t2, 0
	bne $t1, $t2, label724
	j label725
label724:
	li $t0, 39724
	sw $t0, -2552($fp)
	addi $t0, $fp, -2548
	sw $t0, -2556($fp)
	li $t0, 0
	sw $t0, -2560($fp)
	lw $t0, -2560($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2564($fp)
	lw $t0, -2556($fp)
	lw $t1, -2564($fp)
	add $t0, $t0, $t1
	sw $t0, -2568($fp)
	lw $t0, -2552($fp)
	lw $t1, -2568($fp)
	sw $t0, 0($t1)
	lw $t0, -2568($fp)
	lw $t1, 0($t0)
	sw $t1, -2572($fp)
	li $t0, 8541
	sw $t0, -2576($fp)
	addi $t0, $fp, -2548
	sw $t0, -2580($fp)
	li $t0, 1
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2588($fp)
	lw $t0, -2580($fp)
	lw $t1, -2588($fp)
	add $t0, $t0, $t1
	sw $t0, -2592($fp)
	lw $t0, -2576($fp)
	lw $t1, -2592($fp)
	sw $t0, 0($t1)
	lw $t0, -2592($fp)
	lw $t1, 0($t0)
	sw $t1, -2596($fp)
	li $t0, 50213
	sw $t0, -2600($fp)
	addi $t0, $fp, -2548
	sw $t0, -2604($fp)
	li $t0, 2
	sw $t0, -2608($fp)
	lw $t0, -2608($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2612($fp)
	lw $t0, -2604($fp)
	lw $t1, -2612($fp)
	add $t0, $t0, $t1
	sw $t0, -2616($fp)
	lw $t0, -2600($fp)
	lw $t1, -2616($fp)
	sw $t0, 0($t1)
	lw $t0, -2616($fp)
	lw $t1, 0($t0)
	sw $t1, -2620($fp)
	lw $t0, -1388($fp)
	sw $t0, -2624($fp)
	li $t0, 0
	sw $t0, -2628($fp)
	li $t0, 49243
	sw $t0, -2632($fp)
	lw $t1, -2632($fp)
	li $t2, 0
	bne $t1, $t2, label734
	j label736
label736:
	li $t0, 0
	sw $t0, -2636($fp)
	lw $t0, -1508($fp)
	sw $t0, -2640($fp)
	lw $t1, -2640($fp)
	li $t2, 0
	bne $t1, $t2, label738
	j label737
label737:
	li $t0, 1
	sw $t0, -2636($fp)
label738:
	addi $t0, $fp, -2548
	sw $t0, -2644($fp)
	li $t0, 1
	sw $t0, -2648($fp)
	li $t0, 4
	lw $t1, -2648($fp)
	mul $t0, $t0, $t1
	sw $t0, -2652($fp)
	lw $t0, -2652($fp)
	lw $t1, -2644($fp)
	add $t0, $t0, $t1
	sw $t0, -2656($fp)
	lw $t0, -2656($fp)
	lw $t1, 0($t0)
	sw $t1, -2660($fp)
	lw $t0, -2636($fp)
	lw $t1, -2660($fp)
	mul $t0, $t0, $t1
	sw $t0, -2664($fp)
	lw $t1, -2664($fp)
	li $t2, 0
	bne $t1, $t2, label734
	j label735
label734:
	li $t0, 1
	sw $t0, -2628($fp)
label735:
label725:
label739:
	li $t0, 0
	sw $t0, -2668($fp)
	li $t0, 27664
	sw $t0, -2672($fp)
	lw $t1, -2672($fp)
	li $t2, 0
	bne $t1, $t2, label744
	j label743
label743:
	li $t0, 1
	sw $t0, -2668($fp)
label744:
	li $t0, 53767
	sw $t0, -2676($fp)
	lw $t0, -2668($fp)
	lw $t1, -2676($fp)
	sub $t0, $t0, $t1
	sw $t0, -2680($fp)
	addi $t0, $fp, -108
	sw $t0, -2684($fp)
	lw $t0, 4($fp)
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
	li $t0, 0
	lw $t1, -2700($fp)
	sub $t0, $t0, $t1
	sw $t0, -2704($fp)
	li $t0, 15284
	sw $t0, -2708($fp)
	li $t0, 24852
	sw $t0, -2712($fp)
	lw $t0, -2708($fp)
	lw $t1, -2712($fp)
	sub $t0, $t0, $t1
	sw $t0, -2716($fp)
	lw $t0, -572($fp)
	sw $t0, -2720($fp)
	lw $t0, -2716($fp)
	lw $t1, -2720($fp)
	sub $t0, $t0, $t1
	sw $t0, -2724($fp)
	addi $sp, $sp, -4
	lw $t0, -2680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2724($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2728($fp)
	addi $sp, $sp, 16
	lw $t1, -2728($fp)
	li $t2, 0
	bne $t1, $t2, label741
	j label742
label742:
	addi $t0, $fp, -68
	sw $t0, -2732($fp)
	lw $t0, -560($fp)
	sw $t0, -2736($fp)
	li $t0, 4
	lw $t1, -2736($fp)
	mul $t0, $t0, $t1
	sw $t0, -2740($fp)
	lw $t0, -2740($fp)
	lw $t1, -2732($fp)
	add $t0, $t0, $t1
	sw $t0, -2744($fp)
	lw $t0, -2744($fp)
	lw $t1, 0($t0)
	sw $t1, -2748($fp)
	li $t0, 0
	sw $t0, -2752($fp)
	li $t0, 48547
	sw $t0, -2756($fp)
	lw $t0, -308($fp)
	sw $t0, -2760($fp)
	lw $t0, -2756($fp)
	lw $t1, -2760($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2764($fp)
	lw $t0, -1436($fp)
	sw $t0, -2768($fp)
	lw $t1, -2764($fp)
	lw $t2, -2768($fp)
	bgt $t1, $t2, label745
	j label746
label745:
	li $t0, 1
	sw $t0, -2752($fp)
label746:
	li $t0, 23857
	sw $t0, -2772($fp)
	lw $t0, -1448($fp)
	sw $t0, -2776($fp)
	lw $t0, -2772($fp)
	lw $t1, -2776($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2780($fp)
	lw $t0, -572($fp)
	sw $t0, -2784($fp)
	lw $t0, -2780($fp)
	lw $t1, -2784($fp)
	add $t0, $t0, $t1
	sw $t0, -2788($fp)
	addi $sp, $sp, -4
	lw $t0, -2748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2788($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2792($fp)
	addi $sp, $sp, 16
	lw $t0, -1424($fp)
	sw $t0, -2796($fp)
	lw $t0, -2792($fp)
	lw $t1, -2796($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2800($fp)
	li $t0, 42146
	sw $t0, -2804($fp)
	li $t0, 0
	lw $t1, -2804($fp)
	sub $t0, $t0, $t1
	sw $t0, -2808($fp)
	lw $t1, -2800($fp)
	lw $t2, -2808($fp)
	beq $t1, $t2, label740
	j label741
label740:
	lw $t0, 8($fp)
	sw $t0, -2812($fp)
	li $t0, 0
	lw $t1, -2812($fp)
	sub $t0, $t0, $t1
	sw $t0, -2816($fp)
	li $t0, 0
	lw $t1, -2816($fp)
	sub $t0, $t0, $t1
	sw $t0, -2820($fp)
	lw $ra, -4($fp)
	lw $v0, -2820($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label739
label741:
label747:
	lw $t0, -584($fp)
	sw $t0, -2824($fp)
	lw $t1, -2824($fp)
	li $t2, 0
	bne $t1, $t2, label748
	j label749
label748:
	jal f7
	sw $v0, -2828($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -2828($fp)
	sub $t0, $t0, $t1
	sw $t0, -2832($fp)
	lw $t1, -2832($fp)
	li $t2, 0
	bne $t1, $t2, label750
	j label751
label750:
	addi $t0, $fp, -68
	sw $t0, -2836($fp)
	li $t0, 0
	sw $t0, -2840($fp)
	li $t0, 39267
	sw $t0, -2844($fp)
	lw $t1, -2844($fp)
	li $t2, 0
	bne $t1, $t2, label756
	j label758
label758:
	lw $t0, 4($fp)
	sw $t0, -2848($fp)
	lw $t1, -2848($fp)
	li $t2, 0
	bne $t1, $t2, label756
	j label757
label756:
	li $t0, 1
	sw $t0, -2840($fp)
label757:
	li $t0, 4
	lw $t1, -2840($fp)
	mul $t0, $t0, $t1
	sw $t0, -2852($fp)
	lw $t0, -2852($fp)
	lw $t1, -2836($fp)
	add $t0, $t0, $t1
	sw $t0, -2856($fp)
	lw $t0, -2856($fp)
	lw $t1, 0($t0)
	sw $t1, -2860($fp)
	li $t0, 62701
	sw $t0, -2864($fp)
	lw $t0, -2860($fp)
	lw $t1, -2864($fp)
	mul $t0, $t0, $t1
	sw $t0, -2868($fp)
	li $t0, 0
	sw $t0, -2872($fp)
	lw $t0, -572($fp)
	sw $t0, -2876($fp)
	li $t0, 0
	lw $t1, -2876($fp)
	sub $t0, $t0, $t1
	sw $t0, -2880($fp)
	lw $t1, -2880($fp)
	li $t2, 0
	bne $t1, $t2, label759
	j label760
label759:
	li $t0, 1
	sw $t0, -2872($fp)
label760:
	lw $t0, -2868($fp)
	lw $t1, -2872($fp)
	add $t0, $t0, $t1
	sw $t0, -2884($fp)
	lw $t1, -2884($fp)
	li $t2, 0
	bne $t1, $t2, label753
	j label754
label753:
	li $t0, 0
	sw $t0, -2888($fp)
	lw $t0, -1400($fp)
	sw $t0, -2892($fp)
	lw $t1, -2892($fp)
	li $t2, 0
	bne $t1, $t2, label763
	j label762
label763:
	li $t0, 12434
	sw $t0, -2896($fp)
	lw $t0, -1520($fp)
	sw $t0, -2900($fp)
	lw $t0, -2896($fp)
	lw $t1, -2900($fp)
	mul $t0, $t0, $t1
	sw $t0, -2904($fp)
	lw $t0, -308($fp)
	sw $t0, -2908($fp)
	lw $t0, -2904($fp)
	lw $t1, -2908($fp)
	sub $t0, $t0, $t1
	sw $t0, -2912($fp)
	li $t0, 45490
	sw $t0, -2916($fp)
	lw $t0, -2916($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -2920($fp)
	addi $sp, $sp, -4
	lw $t0, -2920($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2924($fp)
	addi $sp, $sp, 8
	lw $t1, -2912($fp)
	lw $t2, -2924($fp)
	beq $t1, $t2, label761
	j label762
label761:
	li $t0, 1
	sw $t0, -2888($fp)
label762:
	j label755
label754:
	li $t0, 0
	sw $t0, -2928($fp)
	lw $t0, -560($fp)
	sw $t0, -2932($fp)
	lw $t1, -2932($fp)
	li $t2, 0
	bne $t1, $t2, label767
	j label766
label767:
	lw $t0, -1388($fp)
	sw $t0, -2936($fp)
	lw $t1, -2936($fp)
	li $t2, 0
	bne $t1, $t2, label764
	j label766
label766:
	lw $t0, -572($fp)
	sw $t0, -2940($fp)
	lw $t1, -2940($fp)
	li $t2, 0
	bne $t1, $t2, label764
	j label765
label764:
	li $t0, 1
	sw $t0, -2928($fp)
label765:
	li $t0, 0
	sw $t0, -2944($fp)
	lw $t0, -1544($fp)
	sw $t0, -2948($fp)
	li $t0, 50199
	sw $t0, -2952($fp)
	lw $t1, -2948($fp)
	lw $t2, -2952($fp)
	bne $t1, $t2, label768
	j label769
label768:
	li $t0, 1
	sw $t0, -2944($fp)
label769:
	addi $sp, $sp, -4
	lw $t0, -2928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2944($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -2956($fp)
	addi $sp, $sp, 12
label755:
	j label752
label751:
	li $t0, 0
	sw $t0, -2960($fp)
	lw $t0, -1400($fp)
	sw $t0, -2964($fp)
	lw $t0, -1520($fp)
	sw $t0, -2968($fp)
	lw $t0, -2964($fp)
	lw $t1, -2968($fp)
	sub $t0, $t0, $t1
	sw $t0, -2972($fp)
	lw $t1, -2972($fp)
	li $t2, 0
	bne $t1, $t2, label775
	j label773
label775:
	li $t0, 15822
	sw $t0, -2976($fp)
	lw $t1, -2976($fp)
	li $t2, 0
	bne $t1, $t2, label774
	j label773
label774:
	lw $t0, -572($fp)
	sw $t0, -2980($fp)
	li $t0, 55018
	sw $t0, -2984($fp)
	lw $t1, -2980($fp)
	lw $t2, -2984($fp)
	bne $t1, $t2, label770
	j label773
label773:
	li $t0, 23102
	sw $t0, -2988($fp)
	li $t0, 31555
	sw $t0, -2992($fp)
	lw $t1, -2988($fp)
	lw $t2, -2992($fp)
	ble $t1, $t2, label770
	j label772
label772:
	lw $t0, -536($fp)
	sw $t0, -2996($fp)
	lw $t1, -2996($fp)
	li $t2, 0
	bne $t1, $t2, label770
	j label771
label770:
	li $t0, 1
	sw $t0, -2960($fp)
label771:
label752:
	j label747
label749:
	j label670
label672:
	j label667
label666:
	li $t0, 0
	sw $t0, -3000($fp)
	jal f7
	sw $v0, -3004($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -112
	sw $t0, -3008($fp)
	li $t0, 0
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
	lw $t0, -3004($fp)
	lw $t1, -3024($fp)
	mul $t0, $t0, $t1
	sw $t0, -3028($fp)
	li $t0, 2476
	sw $t0, -3032($fp)
	lw $t0, -572($fp)
	sw $t0, -3036($fp)
	lw $t0, -3032($fp)
	lw $t1, -3036($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3040($fp)
	li $t0, 39267
	sw $t0, -3044($fp)
	lw $t0, -3040($fp)
	lw $t1, -3044($fp)
	mul $t0, $t0, $t1
	sw $t0, -3048($fp)
	addi $sp, $sp, -4
	lw $t0, -3048($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3052($fp)
	addi $sp, $sp, 8
	lw $t1, -3028($fp)
	lw $t2, -3052($fp)
	beq $t1, $t2, label776
	j label777
label776:
	li $t0, 1
	sw $t0, -3000($fp)
label777:
label667:
	j label662
label661:
label778:
	addi $t0, $fp, -32
	sw $t0, -3056($fp)
	li $t0, 0
	sw $t0, -3060($fp)
	lw $t0, -884($fp)
	sw $t0, -3064($fp)
	lw $t0, -308($fp)
	sw $t0, -3068($fp)
	lw $t1, -3064($fp)
	lw $t2, -3068($fp)
	bgt $t1, $t2, label784
	j label783
label784:
	lw $t0, -560($fp)
	sw $t0, -3072($fp)
	lw $t1, -3072($fp)
	li $t2, 0
	bne $t1, $t2, label781
	j label783
label783:
	lw $t0, -836($fp)
	sw $t0, -3076($fp)
	lw $t1, -3076($fp)
	li $t2, 0
	bne $t1, $t2, label781
	j label782
label781:
	li $t0, 1
	sw $t0, -3060($fp)
label782:
	li $t0, 4
	lw $t1, -3060($fp)
	mul $t0, $t0, $t1
	sw $t0, -3080($fp)
	lw $t0, -3080($fp)
	lw $t1, -3056($fp)
	add $t0, $t0, $t1
	sw $t0, -3084($fp)
	lw $t0, -3084($fp)
	lw $t1, 0($t0)
	sw $t1, -3088($fp)
	lw $t1, -3088($fp)
	li $t2, 0
	bne $t1, $t2, label779
	j label780
label779:
label785:
	li $t0, 59988
	sw $t0, -3092($fp)
	li $t0, 0
	sw $t0, -3096($fp)
	addi $t0, $fp, -132
	sw $t0, -3100($fp)
	li $t0, 2
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
	lw $t1, -3116($fp)
	li $t2, 0
	bne $t1, $t2, label790
	j label789
label789:
	li $t0, 1
	sw $t0, -3096($fp)
label790:
	lw $t0, -3092($fp)
	lw $t1, -3096($fp)
	mul $t0, $t0, $t1
	sw $t0, -3120($fp)
	lw $t1, -3120($fp)
	li $t2, 0
	bne $t1, $t2, label788
	j label787
label788:
	addi $t0, $fp, -112
	sw $t0, -3124($fp)
	li $t0, 0
	sw $t0, -3128($fp)
	li $t0, 4
	lw $t1, -3128($fp)
	mul $t0, $t0, $t1
	sw $t0, -3132($fp)
	lw $t0, -3132($fp)
	lw $t1, -3124($fp)
	add $t0, $t0, $t1
	sw $t0, -3136($fp)
	lw $t0, -3136($fp)
	lw $t1, 0($t0)
	sw $t1, -3140($fp)
	lw $t0, -848($fp)
	sw $t0, -3144($fp)
	lw $t1, -3140($fp)
	lw $t2, -3144($fp)
	blt $t1, $t2, label786
	j label787
label786:
	li $t0, 0
	sw $t0, -3148($fp)
	lw $t0, -872($fp)
	sw $t0, -3152($fp)
	lw $t1, -3152($fp)
	li $t2, 0
	bne $t1, $t2, label793
	j label792
label793:
	li $t0, 50308
	sw $t0, -3156($fp)
	lw $t1, -3156($fp)
	li $t2, 0
	bne $t1, $t2, label791
	j label792
label791:
	li $t0, 1
	sw $t0, -3148($fp)
label792:
	lw $t0, -3148($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -3160($fp)
	lw $t0, -3160($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -3164($fp)
	lw $ra, -4($fp)
	lw $v0, -3164($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label785
label787:
	j label778
label780:
label662:
	addi $t0, $fp, -68
	sw $t0, -3168($fp)
	li $t0, 0
	sw $t0, -3172($fp)
	li $t0, 9016
	sw $t0, -3176($fp)
	lw $t0, -584($fp)
	sw $t0, -3180($fp)
	lw $t1, -3176($fp)
	lw $t2, -3180($fp)
	beq $t1, $t2, label794
	j label795
label794:
	li $t0, 1
	sw $t0, -3172($fp)
label795:
	lw $t0, -3172($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -3184($fp)
	li $t0, 4
	lw $t1, -3184($fp)
	mul $t0, $t0, $t1
	sw $t0, -3188($fp)
	lw $t0, -3188($fp)
	lw $t1, -3168($fp)
	add $t0, $t0, $t1
	sw $t0, -3192($fp)
	lw $t0, -3192($fp)
	lw $t1, 0($t0)
	sw $t1, -3196($fp)
	addi $t0, $fp, -32
	sw $t0, -3200($fp)
	li $t0, 0
	sw $t0, -3204($fp)
	li $t0, 4
	lw $t1, -3204($fp)
	mul $t0, $t0, $t1
	sw $t0, -3208($fp)
	lw $t0, -3208($fp)
	lw $t1, -3200($fp)
	add $t0, $t0, $t1
	sw $t0, -3212($fp)
	lw $t0, -3212($fp)
	lw $t1, 0($t0)
	sw $t1, -3216($fp)
	lw $t0, -3216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -3220($fp)
	li $t0, 1
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
	lw $t0, -3236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -3240($fp)
	li $t0, 2
	sw $t0, -3244($fp)
	li $t0, 4
	lw $t1, -3244($fp)
	mul $t0, $t0, $t1
	sw $t0, -3248($fp)
	lw $t0, -3248($fp)
	lw $t1, -3240($fp)
	add $t0, $t0, $t1
	sw $t0, -3252($fp)
	lw $t0, -3252($fp)
	lw $t1, 0($t0)
	sw $t1, -3256($fp)
	lw $t0, -3256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -3260($fp)
	li $t0, 3
	sw $t0, -3264($fp)
	li $t0, 4
	lw $t1, -3264($fp)
	mul $t0, $t0, $t1
	sw $t0, -3268($fp)
	lw $t0, -3268($fp)
	lw $t1, -3260($fp)
	add $t0, $t0, $t1
	sw $t0, -3272($fp)
	lw $t0, -3272($fp)
	lw $t1, 0($t0)
	sw $t1, -3276($fp)
	lw $t0, -3276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -3280($fp)
	li $t0, 4
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
	lw $t0, -3296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -3300($fp)
	li $t0, 5
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
	lw $t0, -3316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -3320($fp)
	li $t0, 6
	sw $t0, -3324($fp)
	li $t0, 4
	lw $t1, -3324($fp)
	mul $t0, $t0, $t1
	sw $t0, -3328($fp)
	lw $t0, -3328($fp)
	lw $t1, -3320($fp)
	add $t0, $t0, $t1
	sw $t0, -3332($fp)
	lw $t0, -3332($fp)
	lw $t1, 0($t0)
	sw $t1, -3336($fp)
	lw $t0, -3336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -308($fp)
	sw $t0, -3340($fp)
	lw $t0, -3340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -3344($fp)
	li $t0, 0
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
	addi $t0, $fp, -68
	sw $t0, -3364($fp)
	li $t0, 1
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
	addi $t0, $fp, -68
	sw $t0, -3384($fp)
	li $t0, 2
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
	addi $t0, $fp, -68
	sw $t0, -3404($fp)
	li $t0, 3
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
	addi $t0, $fp, -68
	sw $t0, -3424($fp)
	li $t0, 4
	sw $t0, -3428($fp)
	li $t0, 4
	lw $t1, -3428($fp)
	mul $t0, $t0, $t1
	sw $t0, -3432($fp)
	lw $t0, -3432($fp)
	lw $t1, -3424($fp)
	add $t0, $t0, $t1
	sw $t0, -3436($fp)
	lw $t0, -3436($fp)
	lw $t1, 0($t0)
	sw $t1, -3440($fp)
	lw $t0, -3440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -3444($fp)
	li $t0, 5
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
	addi $t0, $fp, -68
	sw $t0, -3464($fp)
	li $t0, 6
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
	addi $t0, $fp, -68
	sw $t0, -3484($fp)
	li $t0, 7
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
	addi $t0, $fp, -68
	sw $t0, -3504($fp)
	li $t0, 8
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
	lw $t0, -536($fp)
	sw $t0, -3524($fp)
	lw $t0, -3524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -548($fp)
	sw $t0, -3528($fp)
	lw $t0, -3528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -3532($fp)
	lw $t0, -3532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	sw $t0, -3536($fp)
	lw $t0, -3536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -584($fp)
	sw $t0, -3540($fp)
	lw $t0, -3540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -3544($fp)
	li $t0, 0
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
	addi $t0, $fp, -108
	sw $t0, -3564($fp)
	li $t0, 1
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
	addi $t0, $fp, -108
	sw $t0, -3584($fp)
	li $t0, 2
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
	addi $t0, $fp, -108
	sw $t0, -3604($fp)
	li $t0, 3
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
	addi $t0, $fp, -108
	sw $t0, -3624($fp)
	li $t0, 4
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
	addi $t0, $fp, -108
	sw $t0, -3644($fp)
	li $t0, 5
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
	addi $t0, $fp, -108
	sw $t0, -3664($fp)
	li $t0, 6
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
	addi $t0, $fp, -108
	sw $t0, -3684($fp)
	li $t0, 7
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
	addi $t0, $fp, -108
	sw $t0, -3704($fp)
	li $t0, 8
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
	addi $t0, $fp, -108
	sw $t0, -3724($fp)
	li $t0, 9
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
	lw $t0, -836($fp)
	sw $t0, -3744($fp)
	lw $t0, -3744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -848($fp)
	sw $t0, -3748($fp)
	lw $t0, -3748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -860($fp)
	sw $t0, -3752($fp)
	lw $t0, -3752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -872($fp)
	sw $t0, -3756($fp)
	lw $t0, -3756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -884($fp)
	sw $t0, -3760($fp)
	lw $t0, -3760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -3764($fp)
	li $t0, 0
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
	addi $t0, $fp, -132
	sw $t0, -3784($fp)
	li $t0, 0
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
	lw $t0, -3800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -3804($fp)
	li $t0, 1
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
	lw $t0, -3820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -3824($fp)
	li $t0, 2
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
	lw $t0, -3840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -3844($fp)
	li $t0, 3
	sw $t0, -3848($fp)
	li $t0, 4
	lw $t1, -3848($fp)
	mul $t0, $t0, $t1
	sw $t0, -3852($fp)
	lw $t0, -3852($fp)
	lw $t1, -3844($fp)
	add $t0, $t0, $t1
	sw $t0, -3856($fp)
	lw $t0, -3856($fp)
	lw $t1, 0($t0)
	sw $t1, -3860($fp)
	lw $t0, -3860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -3864($fp)
	li $t0, 4
	sw $t0, -3868($fp)
	li $t0, 4
	lw $t1, -3868($fp)
	mul $t0, $t0, $t1
	sw $t0, -3872($fp)
	lw $t0, -3872($fp)
	lw $t1, -3864($fp)
	add $t0, $t0, $t1
	sw $t0, -3876($fp)
	lw $t0, -3876($fp)
	lw $t1, 0($t0)
	sw $t1, -3880($fp)
	lw $t0, -3880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -548($fp)
	sw $t0, -3884($fp)
	li $t0, 0
	lw $t1, -3884($fp)
	sub $t0, $t0, $t1
	sw $t0, -3888($fp)
	lw $ra, -4($fp)
	lw $v0, -3888($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -5792
	li $t0, 8261
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	li $t0, 34015
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	li $t0, 22845
	sw $t0, -72($fp)
	addi $t0, $fp, -44
	sw $t0, -76($fp)
	li $t0, 0
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
	li $t0, 14485
	sw $t0, -96($fp)
	addi $t0, $fp, -44
	sw $t0, -100($fp)
	li $t0, 1
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
	li $t0, 49299
	sw $t0, -120($fp)
	addi $t0, $fp, -44
	sw $t0, -124($fp)
	li $t0, 2
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
	li $t0, 47697
	sw $t0, -144($fp)
	addi $t0, $fp, -44
	sw $t0, -148($fp)
	li $t0, 3
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
	li $t0, 42149
	sw $t0, -168($fp)
	addi $t0, $fp, -44
	sw $t0, -172($fp)
	li $t0, 4
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
	li $t0, 37530
	sw $t0, -192($fp)
	addi $t0, $fp, -44
	sw $t0, -196($fp)
	li $t0, 5
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
	li $t0, 6018
	sw $t0, -216($fp)
	addi $t0, $fp, -44
	sw $t0, -220($fp)
	li $t0, 6
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
	li $t0, 25161
	sw $t0, -240($fp)
	addi $t0, $fp, -44
	sw $t0, -244($fp)
	li $t0, 7
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
	li $t0, 14140
	sw $t0, -264($fp)
	addi $t0, $fp, -44
	sw $t0, -268($fp)
	li $t0, 8
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
	li $t0, 45286
	sw $t0, -288($fp)
	addi $t0, $fp, -44
	sw $t0, -292($fp)
	li $t0, 9
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
	li $t0, 22326
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	li $t0, 26575
	sw $t0, -472($fp)
	addi $t0, $fp, -340
	sw $t0, -476($fp)
	li $t0, 0
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
	li $t0, 25240
	sw $t0, -496($fp)
	addi $t0, $fp, -340
	sw $t0, -500($fp)
	li $t0, 1
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
	li $t0, 6989
	sw $t0, -520($fp)
	addi $t0, $fp, -340
	sw $t0, -524($fp)
	li $t0, 2
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
	li $t0, 42397
	sw $t0, -544($fp)
	addi $t0, $fp, -340
	sw $t0, -548($fp)
	li $t0, 3
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
	li $t0, 14723
	sw $t0, -568($fp)
	addi $t0, $fp, -340
	sw $t0, -572($fp)
	li $t0, 4
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
	li $t0, 30091
	sw $t0, -592($fp)
	addi $t0, $fp, -340
	sw $t0, -596($fp)
	li $t0, 5
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
	li $t0, 8417
	sw $t0, -616($fp)
	addi $t0, $fp, -340
	sw $t0, -620($fp)
	li $t0, 6
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
	li $t0, 8389
	sw $t0, -640($fp)
	addi $t0, $fp, -340
	sw $t0, -644($fp)
	li $t0, 7
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
	li $t0, 28624
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -672($fp)
	li $t0, 10893
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, -684($fp)
	li $t0, 47657
	sw $t0, -688($fp)
	addi $t0, $fp, -360
	sw $t0, -692($fp)
	li $t0, 0
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
	li $t0, 23076
	sw $t0, -712($fp)
	addi $t0, $fp, -360
	sw $t0, -716($fp)
	li $t0, 1
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
	li $t0, 17879
	sw $t0, -736($fp)
	addi $t0, $fp, -360
	sw $t0, -740($fp)
	li $t0, 2
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -748($fp)
	lw $t0, -740($fp)
	lw $t1, -748($fp)
	add $t0, $t0, $t1
	sw $t0, -752($fp)
	lw $t0, -736($fp)
	lw $t1, -752($fp)
	sw $t0, 0($t1)
	lw $t0, -752($fp)
	lw $t1, 0($t0)
	sw $t1, -756($fp)
	li $t0, 58241
	sw $t0, -760($fp)
	addi $t0, $fp, -360
	sw $t0, -764($fp)
	li $t0, 3
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -772($fp)
	lw $t0, -764($fp)
	lw $t1, -772($fp)
	add $t0, $t0, $t1
	sw $t0, -776($fp)
	lw $t0, -760($fp)
	lw $t1, -776($fp)
	sw $t0, 0($t1)
	lw $t0, -776($fp)
	lw $t1, 0($t0)
	sw $t1, -780($fp)
	li $t0, 23551
	sw $t0, -784($fp)
	addi $t0, $fp, -360
	sw $t0, -788($fp)
	li $t0, 4
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
	li $t0, 41463
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	sw $t0, -816($fp)
	li $t0, 43013
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -828($fp)
	li $t0, 32567
	sw $t0, -832($fp)
	addi $t0, $fp, -364
	sw $t0, -836($fp)
	li $t0, 0
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
	li $t0, 49724
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -864($fp)
	li $t0, 11493
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	sw $t0, -876($fp)
	li $t0, 55412
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	sw $t0, -888($fp)
	li $t0, 64209
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -900($fp)
	li $t0, 60792
	sw $t0, -904($fp)
	addi $t0, $fp, -404
	sw $t0, -908($fp)
	li $t0, 0
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
	li $t0, 37574
	sw $t0, -928($fp)
	addi $t0, $fp, -404
	sw $t0, -932($fp)
	li $t0, 1
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
	li $t0, 40823
	sw $t0, -952($fp)
	addi $t0, $fp, -404
	sw $t0, -956($fp)
	li $t0, 2
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
	li $t0, 32787
	sw $t0, -976($fp)
	addi $t0, $fp, -404
	sw $t0, -980($fp)
	li $t0, 3
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
	li $t0, 43592
	sw $t0, -1000($fp)
	addi $t0, $fp, -404
	sw $t0, -1004($fp)
	li $t0, 4
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
	li $t0, 448
	sw $t0, -1024($fp)
	addi $t0, $fp, -404
	sw $t0, -1028($fp)
	li $t0, 5
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
	li $t0, 46927
	sw $t0, -1048($fp)
	addi $t0, $fp, -404
	sw $t0, -1052($fp)
	li $t0, 6
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
	li $t0, 23342
	sw $t0, -1072($fp)
	addi $t0, $fp, -404
	sw $t0, -1076($fp)
	li $t0, 7
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
	li $t0, 22774
	sw $t0, -1096($fp)
	addi $t0, $fp, -404
	sw $t0, -1100($fp)
	li $t0, 8
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
	li $t0, 7966
	sw $t0, -1120($fp)
	addi $t0, $fp, -404
	sw $t0, -1124($fp)
	li $t0, 9
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
	li $t0, 48583
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	sw $t0, -1152($fp)
	li $t0, 29763
	sw $t0, -1156($fp)
	addi $t0, $fp, -424
	sw $t0, -1160($fp)
	li $t0, 0
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
	li $t0, 50364
	sw $t0, -1180($fp)
	addi $t0, $fp, -424
	sw $t0, -1184($fp)
	li $t0, 1
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
	li $t0, 63306
	sw $t0, -1204($fp)
	addi $t0, $fp, -424
	sw $t0, -1208($fp)
	li $t0, 2
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
	li $t0, 59855
	sw $t0, -1228($fp)
	addi $t0, $fp, -424
	sw $t0, -1232($fp)
	li $t0, 3
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
	li $t0, 58781
	sw $t0, -1252($fp)
	addi $t0, $fp, -424
	sw $t0, -1256($fp)
	li $t0, 4
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
	li $t0, 6159
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -1284($fp)
	li $t0, 22943
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	sw $t0, -1296($fp)
	li $t0, 4138
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	sw $t0, -1308($fp)
	li $t0, 53816
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	sw $t0, -1320($fp)
	li $t0, 46019
	sw $t0, -1324($fp)
	addi $t0, $fp, -456
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
	li $t0, 22018
	sw $t0, -1348($fp)
	addi $t0, $fp, -456
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
	li $t0, 46521
	sw $t0, -1372($fp)
	addi $t0, $fp, -456
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
	li $t0, 4035
	sw $t0, -1396($fp)
	addi $t0, $fp, -456
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
	li $t0, 63481
	sw $t0, -1420($fp)
	addi $t0, $fp, -456
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
	li $t0, 23999
	sw $t0, -1444($fp)
	addi $t0, $fp, -456
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
	li $t0, 36602
	sw $t0, -1468($fp)
	addi $t0, $fp, -456
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
	li $t0, 47670
	sw $t0, -1492($fp)
	addi $t0, $fp, -456
	sw $t0, -1496($fp)
	li $t0, 7
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1504($fp)
	lw $t0, -1496($fp)
	lw $t1, -1504($fp)
	add $t0, $t0, $t1
	sw $t0, -1508($fp)
	lw $t0, -1492($fp)
	lw $t1, -1508($fp)
	sw $t0, 0($t1)
	lw $t0, -1508($fp)
	lw $t1, 0($t0)
	sw $t1, -1512($fp)
	li $t0, 35492
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	sw $t0, -1524($fp)
	li $t0, 26479
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	sw $t0, -1536($fp)
	li $t0, 46343
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	sw $t0, -1548($fp)
	li $t0, 30748
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	sw $t0, -1560($fp)
	li $t0, 64053
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	sw $t0, -1572($fp)
	li $t0, 21630
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	sw $t0, -1620($fp)
	li $t0, 63535
	sw $t0, -1624($fp)
	lw $t0, -1624($fp)
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	sw $t0, -1632($fp)
	li $t0, 42109
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	sw $t0, -1644($fp)
	li $t0, 22078
	sw $t0, -1648($fp)
	addi $t0, $fp, -1584
	sw $t0, -1652($fp)
	li $t0, 0
	sw $t0, -1656($fp)
	lw $t0, -1656($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1660($fp)
	lw $t0, -1652($fp)
	lw $t1, -1660($fp)
	add $t0, $t0, $t1
	sw $t0, -1664($fp)
	lw $t0, -1648($fp)
	lw $t1, -1664($fp)
	sw $t0, 0($t1)
	lw $t0, -1664($fp)
	lw $t1, 0($t0)
	sw $t1, -1668($fp)
	li $t0, 44927
	sw $t0, -1672($fp)
	addi $t0, $fp, -1584
	sw $t0, -1676($fp)
	li $t0, 1
	sw $t0, -1680($fp)
	lw $t0, -1680($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1684($fp)
	lw $t0, -1676($fp)
	lw $t1, -1684($fp)
	add $t0, $t0, $t1
	sw $t0, -1688($fp)
	lw $t0, -1672($fp)
	lw $t1, -1688($fp)
	sw $t0, 0($t1)
	lw $t0, -1688($fp)
	lw $t1, 0($t0)
	sw $t1, -1692($fp)
	li $t0, 65452
	sw $t0, -1696($fp)
	addi $t0, $fp, -1584
	sw $t0, -1700($fp)
	li $t0, 2
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1708($fp)
	lw $t0, -1700($fp)
	lw $t1, -1708($fp)
	add $t0, $t0, $t1
	sw $t0, -1712($fp)
	lw $t0, -1696($fp)
	lw $t1, -1712($fp)
	sw $t0, 0($t1)
	lw $t0, -1712($fp)
	lw $t1, 0($t0)
	sw $t1, -1716($fp)
	li $t0, 44852
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	sw $t0, -1728($fp)
	li $t0, 52893
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	sw $t0, -1740($fp)
	li $t0, 48499
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	sw $t0, -1752($fp)
	li $t0, 9080
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	sw $t0, -1764($fp)
	li $t0, 37721
	sw $t0, -1768($fp)
	addi $t0, $fp, -1608
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
	li $t0, 46269
	sw $t0, -1792($fp)
	addi $t0, $fp, -1608
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
	li $t0, 3399
	sw $t0, -1816($fp)
	addi $t0, $fp, -1608
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
	li $t0, 30966
	sw $t0, -1840($fp)
	addi $t0, $fp, -1608
	sw $t0, -1844($fp)
	li $t0, 3
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1852($fp)
	lw $t0, -1844($fp)
	lw $t1, -1852($fp)
	add $t0, $t0, $t1
	sw $t0, -1856($fp)
	lw $t0, -1840($fp)
	lw $t1, -1856($fp)
	sw $t0, 0($t1)
	lw $t0, -1856($fp)
	lw $t1, 0($t0)
	sw $t1, -1860($fp)
	li $t0, 52428
	sw $t0, -1864($fp)
	addi $t0, $fp, -1608
	sw $t0, -1868($fp)
	li $t0, 4
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
	li $t0, 26342
	sw $t0, -1888($fp)
	addi $t0, $fp, -1608
	sw $t0, -1892($fp)
	li $t0, 5
	sw $t0, -1896($fp)
	lw $t0, -1896($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1900($fp)
	lw $t0, -1892($fp)
	lw $t1, -1900($fp)
	add $t0, $t0, $t1
	sw $t0, -1904($fp)
	lw $t0, -1888($fp)
	lw $t1, -1904($fp)
	sw $t0, 0($t1)
	lw $t0, -1904($fp)
	lw $t1, 0($t0)
	sw $t1, -1908($fp)
label796:
	addi $t0, $fp, -360
	sw $t0, -1912($fp)
	li $t0, 0
	sw $t0, -1916($fp)
	addi $t0, $fp, -340
	sw $t0, -1920($fp)
	lw $t0, -1736($fp)
	sw $t0, -1924($fp)
	li $t0, 4
	lw $t1, -1924($fp)
	mul $t0, $t0, $t1
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	lw $t1, -1920($fp)
	add $t0, $t0, $t1
	sw $t0, -1932($fp)
	lw $t0, -1932($fp)
	lw $t1, 0($t0)
	sw $t1, -1936($fp)
	lw $t1, -1936($fp)
	li $t2, 0
	bne $t1, $t2, label801
	j label800
label801:
	lw $t0, -824($fp)
	sw $t0, -1940($fp)
	li $t0, 35105
	sw $t0, -1944($fp)
	lw $t1, -1940($fp)
	lw $t2, -1944($fp)
	blt $t1, $t2, label799
	j label800
label799:
	li $t0, 1
	sw $t0, -1916($fp)
label800:
	li $t0, 4
	lw $t1, -1916($fp)
	mul $t0, $t0, $t1
	sw $t0, -1948($fp)
	lw $t0, -1948($fp)
	lw $t1, -1912($fp)
	add $t0, $t0, $t1
	sw $t0, -1952($fp)
	lw $t0, -1952($fp)
	lw $t1, 0($t0)
	sw $t1, -1956($fp)
	lw $t1, -1956($fp)
	li $t2, 0
	bne $t1, $t2, label797
	j label798
label797:
	li $t0, 0
	sw $t0, -1960($fp)
	addi $t0, $fp, -364
	sw $t0, -1964($fp)
	li $t0, 0
	sw $t0, -1968($fp)
	lw $t0, -1292($fp)
	sw $t0, -1972($fp)
	lw $t0, 8($fp)
	sw $t0, -1976($fp)
	lw $t1, -1972($fp)
	lw $t2, -1976($fp)
	beq $t1, $t2, label804
	j label805
label804:
	li $t0, 1
	sw $t0, -1968($fp)
label805:
	li $t0, 4
	lw $t1, -1968($fp)
	mul $t0, $t0, $t1
	sw $t0, -1980($fp)
	lw $t0, -1980($fp)
	lw $t1, -1964($fp)
	add $t0, $t0, $t1
	sw $t0, -1984($fp)
	lw $t0, -1984($fp)
	lw $t1, 0($t0)
	sw $t1, -1988($fp)
	lw $t1, -1988($fp)
	li $t2, 0
	bne $t1, $t2, label802
	j label803
label802:
	li $t0, 1
	sw $t0, -1960($fp)
label803:
	j label796
label798:
	addi $t0, $fp, -364
	sw $t0, -1992($fp)
	lw $t0, -884($fp)
	sw $t0, -1996($fp)
	lw $t0, -1544($fp)
	sw $t0, -2000($fp)
	lw $t0, -1996($fp)
	lw $t1, -2000($fp)
	mul $t0, $t0, $t1
	sw $t0, -2004($fp)
	addi $t0, $fp, -424
	sw $t0, -2008($fp)
	lw $t0, -464($fp)
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
	lw $t0, -2004($fp)
	lw $t1, -2024($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2028($fp)
	li $t0, 4
	lw $t1, -2028($fp)
	mul $t0, $t0, $t1
	sw $t0, -2032($fp)
	lw $t0, -2032($fp)
	lw $t1, -1992($fp)
	add $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	lw $t1, 0($t0)
	sw $t1, -2040($fp)
	lw $t1, -2040($fp)
	li $t2, 0
	bne $t1, $t2, label806
	j label807
label806:
	li $t0, 0
	sw $t0, -2044($fp)
	jal f6
	sw $v0, -2048($fp)
	addi $sp, $sp, 4
	lw $t1, -2048($fp)
	li $t2, 0
	bne $t1, $t2, label809
	j label811
label811:
	jal f6
	sw $v0, -2052($fp)
	addi $sp, $sp, 4
	lw $t1, -2052($fp)
	li $t2, 0
	bne $t1, $t2, label809
	j label810
label809:
	li $t0, 1
	sw $t0, -2044($fp)
label810:
	lw $ra, -4($fp)
	lw $v0, -2044($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label807:
	lw $t0, -1616($fp)
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1628($fp)
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1640($fp)
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1584
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
	addi $t0, $fp, -1584
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
	addi $t0, $fp, -1584
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
	lw $t0, -1724($fp)
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1736($fp)
	sw $t0, -2132($fp)
	lw $t0, -2132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1748($fp)
	sw $t0, -2136($fp)
	lw $t0, -2136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1760($fp)
	sw $t0, -2140($fp)
	lw $t0, -2140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1608
	sw $t0, -2144($fp)
	li $t0, 0
	sw $t0, -2148($fp)
	li $t0, 4
	lw $t1, -2148($fp)
	mul $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	lw $t1, -2144($fp)
	add $t0, $t0, $t1
	sw $t0, -2156($fp)
	lw $t0, -2156($fp)
	lw $t1, 0($t0)
	sw $t1, -2160($fp)
	lw $t0, -2160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1608
	sw $t0, -2164($fp)
	li $t0, 1
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
	lw $t0, -2180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1608
	sw $t0, -2184($fp)
	li $t0, 2
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
	addi $t0, $fp, -1608
	sw $t0, -2204($fp)
	li $t0, 3
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
	addi $t0, $fp, -1608
	sw $t0, -2224($fp)
	li $t0, 4
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
	addi $t0, $fp, -1608
	sw $t0, -2244($fp)
	li $t0, 5
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
	li $t0, 0
	sw $t0, -2264($fp)
	addi $t0, $fp, -404
	sw $t0, -2268($fp)
	lw $t0, -1544($fp)
	sw $t0, -2272($fp)
	lw $t0, -1148($fp)
	sw $t0, -2276($fp)
	lw $t0, -2272($fp)
	lw $t1, -2276($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2280($fp)
	lw $t0, -64($fp)
	sw $t0, -2284($fp)
	lw $t0, -2280($fp)
	lw $t1, -2284($fp)
	sub $t0, $t0, $t1
	sw $t0, -2288($fp)
	li $t0, 4
	lw $t1, -2288($fp)
	mul $t0, $t0, $t1
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	lw $t1, -2268($fp)
	add $t0, $t0, $t1
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	lw $t1, 0($t0)
	sw $t1, -2300($fp)
	lw $t1, -2300($fp)
	li $t2, 0
	bne $t1, $t2, label814
	j label813
label814:
	li $t0, 40709
	sw $t0, -2304($fp)
	li $t0, 6825
	sw $t0, -2308($fp)
	lw $t0, -2304($fp)
	lw $t1, -2308($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2312($fp)
	lw $t0, -1316($fp)
	sw $t0, -2316($fp)
	lw $t0, -2312($fp)
	lw $t1, -2316($fp)
	sub $t0, $t0, $t1
	sw $t0, -2320($fp)
	li $t0, 57123
	sw $t0, -2324($fp)
	lw $t0, -2320($fp)
	lw $t1, -2324($fp)
	sub $t0, $t0, $t1
	sw $t0, -2328($fp)
	lw $t1, -2328($fp)
	li $t2, 0
	bne $t1, $t2, label812
	j label813
label812:
	li $t0, 1
	sw $t0, -2264($fp)
label813:
	lw $ra, -4($fp)
	lw $v0, -2264($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label815:
	li $t0, 21694
	sw $t0, -2332($fp)
	lw $t1, -2332($fp)
	li $t2, 0
	bne $t1, $t2, label816
	j label817
label816:
	addi $t0, $fp, -364
	sw $t0, -2336($fp)
	li $t0, 0
	sw $t0, -2340($fp)
	lw $t0, -812($fp)
	sw $t0, -2344($fp)
	lw $t1, -2344($fp)
	li $t2, 0
	bne $t1, $t2, label822
	j label821
label821:
	li $t0, 1
	sw $t0, -2340($fp)
label822:
	li $t0, 10860
	sw $t0, -2348($fp)
	lw $t0, -2340($fp)
	lw $t1, -2348($fp)
	mul $t0, $t0, $t1
	sw $t0, -2352($fp)
	li $t0, 4
	lw $t1, -2352($fp)
	mul $t0, $t0, $t1
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	lw $t1, -2336($fp)
	add $t0, $t0, $t1
	sw $t0, -2360($fp)
	lw $t0, -2360($fp)
	lw $t1, 0($t0)
	sw $t1, -2364($fp)
	addi $t0, $fp, -404
	sw $t0, -2368($fp)
	li $t0, 0
	sw $t0, -2372($fp)
	li $t0, 55068
	sw $t0, -2376($fp)
	li $t0, 45693
	sw $t0, -2380($fp)
	lw $t1, -2376($fp)
	lw $t2, -2380($fp)
	ble $t1, $t2, label823
	j label824
label823:
	li $t0, 1
	sw $t0, -2372($fp)
label824:
	li $t0, 4
	lw $t1, -2372($fp)
	mul $t0, $t0, $t1
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	lw $t1, -2368($fp)
	add $t0, $t0, $t1
	sw $t0, -2388($fp)
	lw $t0, -2388($fp)
	lw $t1, 0($t0)
	sw $t1, -2392($fp)
	lw $t0, -2364($fp)
	lw $t1, -2392($fp)
	mul $t0, $t0, $t1
	sw $t0, -2396($fp)
	lw $t1, -2396($fp)
	li $t2, 0
	bne $t1, $t2, label818
	j label819
label818:
	addi $t0, $fp, -1584
	sw $t0, -2400($fp)
	lw $t0, -1724($fp)
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
	li $t0, 0
	lw $t1, -2416($fp)
	sub $t0, $t0, $t1
	sw $t0, -2420($fp)
	lw $t1, -2420($fp)
	li $t2, 0
	bne $t1, $t2, label826
	j label828
label828:
	lw $t0, -464($fp)
	sw $t0, -2424($fp)
	lw $t0, -1532($fp)
	sw $t0, -2428($fp)
	lw $t0, -2424($fp)
	lw $t1, -2428($fp)
	sub $t0, $t0, $t1
	sw $t0, -2432($fp)
	li $t0, 47463
	sw $t0, -2436($fp)
	lw $t0, -2432($fp)
	lw $t1, -2436($fp)
	add $t0, $t0, $t1
	sw $t0, -2440($fp)
	lw $t0, -1616($fp)
	sw $t0, -2444($fp)
	lw $t0, -2444($fp)
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	sw $t0, -2448($fp)
	addi $sp, $sp, -4
	lw $t0, -2440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2448($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -2452($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -2452($fp)
	sub $t0, $t0, $t1
	sw $t0, -2456($fp)
	li $t0, 0
	lw $t1, -2456($fp)
	sub $t0, $t0, $t1
	sw $t0, -2460($fp)
	lw $t1, -2460($fp)
	li $t2, 0
	bne $t1, $t2, label825
	j label826
label825:
	li $t0, 37202
	sw $t0, -2488($fp)
	lw $t0, -2488($fp)
	sw $t0, -2492($fp)
	lw $t0, -2492($fp)
	sw $t0, -2496($fp)
	li $t0, 15649
	sw $t0, -2500($fp)
	addi $t0, $fp, -2484
	sw $t0, -2504($fp)
	li $t0, 0
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
	li $t0, 8406
	sw $t0, -2524($fp)
	addi $t0, $fp, -2484
	sw $t0, -2528($fp)
	li $t0, 1
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
	li $t0, 18010
	sw $t0, -2548($fp)
	addi $t0, $fp, -2484
	sw $t0, -2552($fp)
	li $t0, 2
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
	li $t0, 46398
	sw $t0, -2572($fp)
	addi $t0, $fp, -2484
	sw $t0, -2576($fp)
	li $t0, 3
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
	li $t0, 6923
	sw $t0, -2596($fp)
	addi $t0, $fp, -2484
	sw $t0, -2600($fp)
	li $t0, 4
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
	li $t0, 39640
	sw $t0, -2620($fp)
	addi $t0, $fp, -2484
	sw $t0, -2624($fp)
	li $t0, 5
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
label829:
	li $t0, 0
	sw $t0, -2644($fp)
	li $t0, 44397
	sw $t0, -2648($fp)
	lw $t0, -1520($fp)
	sw $t0, -2652($fp)
	li $t0, 49032
	sw $t0, -2656($fp)
	lw $t0, -2652($fp)
	lw $t1, -2656($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2660($fp)
	lw $t1, -2648($fp)
	lw $t2, -2660($fp)
	bge $t1, $t2, label833
	j label834
label833:
	li $t0, 1
	sw $t0, -2644($fp)
label834:
	lw $t0, -668($fp)
	sw $t0, -2664($fp)
	li $t0, 61719
	sw $t0, -2668($fp)
	lw $t0, -2664($fp)
	lw $t1, -2668($fp)
	sub $t0, $t0, $t1
	sw $t0, -2672($fp)
	lw $t0, -872($fp)
	sw $t0, -2676($fp)
	lw $t0, -2672($fp)
	lw $t1, -2676($fp)
	add $t0, $t0, $t1
	sw $t0, -2680($fp)
	lw $t1, -2644($fp)
	lw $t2, -2680($fp)
	bge $t1, $t2, label832
	j label831
label832:
	li $t0, 0
	sw $t0, -2684($fp)
	lw $t0, -1544($fp)
	sw $t0, -2688($fp)
	li $t0, 23788
	sw $t0, -2692($fp)
	lw $t0, -2688($fp)
	lw $t1, -2692($fp)
	mul $t0, $t0, $t1
	sw $t0, -2696($fp)
	lw $t0, -52($fp)
	sw $t0, -2700($fp)
	lw $t1, -2696($fp)
	lw $t2, -2700($fp)
	bge $t1, $t2, label835
	j label836
label835:
	li $t0, 1
	sw $t0, -2684($fp)
label836:
	li $t0, 0
	sw $t0, -2704($fp)
	li $t0, 48948
	sw $t0, -2708($fp)
	lw $t1, -2708($fp)
	li $t2, 0
	bne $t1, $t2, label838
	j label837
label837:
	li $t0, 1
	sw $t0, -2704($fp)
label838:
	lw $t1, -2684($fp)
	lw $t2, -2704($fp)
	bne $t1, $t2, label830
	j label831
label830:
label839:
	li $t0, 41035
	sw $t0, -2712($fp)
	jal f7
	sw $v0, -2716($fp)
	addi $sp, $sp, 4
	lw $t0, -2712($fp)
	lw $t1, -2716($fp)
	add $t0, $t0, $t1
	sw $t0, -2720($fp)
	lw $t1, -2720($fp)
	li $t2, 0
	bne $t1, $t2, label840
	j label841
label840:
	addi $t0, $fp, -2484
	sw $t0, -2724($fp)
	lw $t0, -812($fp)
	sw $t0, -2728($fp)
	li $t0, 11146
	sw $t0, -2732($fp)
	lw $t0, -2728($fp)
	lw $t1, -2732($fp)
	add $t0, $t0, $t1
	sw $t0, -2736($fp)
	lw $t0, -2736($fp)
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	sw $t0, -2740($fp)
	li $t0, 4
	lw $t1, -2740($fp)
	mul $t0, $t0, $t1
	sw $t0, -2744($fp)
	lw $t0, -2744($fp)
	lw $t1, -2724($fp)
	add $t0, $t0, $t1
	sw $t0, -2748($fp)
	lw $t0, -2748($fp)
	lw $t1, 0($t0)
	sw $t1, -2752($fp)
	j label839
label841:
	j label829
label831:
	lw $t0, -860($fp)
	sw $t0, -2756($fp)
	addi $t0, $fp, -404
	sw $t0, -2760($fp)
	lw $t0, -824($fp)
	sw $t0, -2764($fp)
	li $t0, 4
	lw $t1, -2764($fp)
	mul $t0, $t0, $t1
	sw $t0, -2768($fp)
	lw $t0, -2768($fp)
	lw $t1, -2760($fp)
	add $t0, $t0, $t1
	sw $t0, -2772($fp)
	lw $t0, -2772($fp)
	lw $t1, 0($t0)
	sw $t1, -2776($fp)
	lw $t0, -2756($fp)
	lw $t1, -2776($fp)
	mul $t0, $t0, $t1
	sw $t0, -2780($fp)
	li $t0, 0
	lw $t1, -2780($fp)
	sub $t0, $t0, $t1
	sw $t0, -2784($fp)
	li $t0, 0
	lw $t1, -2784($fp)
	sub $t0, $t0, $t1
	sw $t0, -2788($fp)
	lw $t0, -1316($fp)
	sw $t0, -2792($fp)
	lw $t0, -2788($fp)
	lw $t1, -2792($fp)
	add $t0, $t0, $t1
	sw $t0, -2796($fp)
	li $t0, 0
	sw $t0, -2800($fp)
	li $t0, 31911
	sw $t0, -2804($fp)
	li $t0, 50115
	sw $t0, -2808($fp)
	lw $t0, -2804($fp)
	lw $t1, -2808($fp)
	mul $t0, $t0, $t1
	sw $t0, -2812($fp)
	addi $sp, $sp, -4
	lw $t0, -2812($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2816($fp)
	addi $sp, $sp, 8
	lw $t1, -2816($fp)
	li $t2, 0
	bne $t1, $t2, label843
	j label842
label842:
	li $t0, 1
	sw $t0, -2800($fp)
label843:
	lw $t0, -2796($fp)
	lw $t1, -2800($fp)
	add $t0, $t0, $t1
	sw $t0, -2820($fp)
	li $t0, 0
	sw $t0, -2824($fp)
	jal f7
	sw $v0, -2828($fp)
	addi $sp, $sp, 4
	lw $t1, -2828($fp)
	li $t2, 0
	bne $t1, $t2, label845
	j label844
label844:
	li $t0, 1
	sw $t0, -2824($fp)
label845:
	lw $t0, -2824($fp)
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	sw $t0, -2832($fp)
	li $t0, 0
	sw $t0, -2836($fp)
	lw $t0, -52($fp)
	sw $t0, -2840($fp)
	li $t0, 0
	lw $t1, -2840($fp)
	sub $t0, $t0, $t1
	sw $t0, -2844($fp)
	li $t0, 14320
	sw $t0, -2848($fp)
	li $t0, 0
	sw $t0, -2852($fp)
	li $t0, 53514
	sw $t0, -2856($fp)
	li $t0, 14298
	sw $t0, -2860($fp)
	lw $t0, -2856($fp)
	lw $t1, -2860($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2864($fp)
	li $t0, 65073
	sw $t0, -2868($fp)
	lw $t1, -2864($fp)
	lw $t2, -2868($fp)
	bne $t1, $t2, label848
	j label849
label848:
	li $t0, 1
	sw $t0, -2852($fp)
label849:
	lw $t0, -64($fp)
	sw $t0, -2872($fp)
	li $t0, 48867
	sw $t0, -2876($fp)
	lw $t0, -2872($fp)
	lw $t1, -2876($fp)
	mul $t0, $t0, $t1
	sw $t0, -2880($fp)
	li $t0, 12644
	sw $t0, -2884($fp)
	lw $t0, -2880($fp)
	lw $t1, -2884($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2888($fp)
	li $t0, 0
	sw $t0, -2892($fp)
	lw $t0, -1544($fp)
	sw $t0, -2896($fp)
	li $t0, 0
	lw $t1, -2896($fp)
	sub $t0, $t0, $t1
	sw $t0, -2900($fp)
	lw $t1, -2900($fp)
	li $t2, 0
	bne $t1, $t2, label850
	j label852
label852:
	lw $t0, -1568($fp)
	sw $t0, -2904($fp)
	lw $t1, -2904($fp)
	li $t2, 0
	bne $t1, $t2, label850
	j label851
label850:
	li $t0, 1
	sw $t0, -2892($fp)
label851:
	addi $sp, $sp, -4
	lw $t0, -2848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2892($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2908($fp)
	addi $sp, $sp, 20
	lw $t1, -2844($fp)
	lw $t2, -2908($fp)
	blt $t1, $t2, label846
	j label847
label846:
	li $t0, 1
	sw $t0, -2836($fp)
label847:
	li $t0, 0
	sw $t0, -2912($fp)
	addi $t0, $fp, -456
	sw $t0, -2916($fp)
	lw $t0, -1760($fp)
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
	li $t0, 0
	sw $t0, -2936($fp)
	lw $t0, -464($fp)
	sw $t0, -2940($fp)
	lw $t1, -2940($fp)
	li $t2, 0
	bne $t1, $t2, label856
	j label855
label855:
	li $t0, 1
	sw $t0, -2936($fp)
label856:
	lw $t1, -2932($fp)
	lw $t2, -2936($fp)
	beq $t1, $t2, label853
	j label854
label853:
	li $t0, 1
	sw $t0, -2912($fp)
label854:
	lw $t0, -2912($fp)
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	sw $t0, -2944($fp)
label857:
	lw $t0, -1748($fp)
	sw $t0, -2948($fp)
	li $t0, 0
	lw $t1, -2948($fp)
	sub $t0, $t0, $t1
	sw $t0, -2952($fp)
	lw $t1, -2952($fp)
	li $t2, 0
	bne $t1, $t2, label858
	j label859
label858:
	li $t0, 49403
	sw $t0, -2956($fp)
	lw $t1, -2956($fp)
	li $t2, 0
	bne $t1, $t2, label860
	j label863
label863:
	li $t0, 0
	sw $t0, -2960($fp)
	li $t0, 40246
	sw $t0, -2964($fp)
	lw $t0, -1544($fp)
	sw $t0, -2968($fp)
	lw $t0, -2964($fp)
	lw $t1, -2968($fp)
	mul $t0, $t0, $t1
	sw $t0, -2972($fp)
	lw $t0, -680($fp)
	sw $t0, -2976($fp)
	lw $t1, -2972($fp)
	lw $t2, -2976($fp)
	blt $t1, $t2, label864
	j label865
label864:
	li $t0, 1
	sw $t0, -2960($fp)
label865:
	li $t0, 21146
	sw $t0, -2980($fp)
	lw $t0, -2980($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -2984($fp)
	li $t0, 0
	sw $t0, -2988($fp)
	lw $t0, -1556($fp)
	sw $t0, -2992($fp)
	lw $t1, -2992($fp)
	li $t2, 0
	bne $t1, $t2, label867
	j label866
label866:
	li $t0, 1
	sw $t0, -2988($fp)
label867:
	addi $sp, $sp, -4
	lw $t0, -2984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2988($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -2996($fp)
	addi $sp, $sp, 12
	lw $t1, -2960($fp)
	lw $t2, -2996($fp)
	bge $t1, $t2, label860
	j label861
label860:
	jal f7
	sw $v0, -3000($fp)
	addi $sp, $sp, 4
	lw $t1, -3000($fp)
	li $t2, 0
	bne $t1, $t2, label869
	j label868
label868:
	li $t0, 40990
	sw $t0, -3004($fp)
	lw $t0, -3004($fp)
	sw $t0, -3008($fp)
	lw $t0, -3008($fp)
	sw $t0, -3012($fp)
	lw $t0, -1280($fp)
	sw $t0, -3016($fp)
	li $t0, 0
	sw $t0, -3020($fp)
	lw $t0, -1748($fp)
	sw $t0, -3024($fp)
	lw $t0, -3008($fp)
	sw $t0, -3028($fp)
	lw $t0, -3024($fp)
	lw $t1, -3028($fp)
	add $t0, $t0, $t1
	sw $t0, -3032($fp)
	lw $t0, -3008($fp)
	sw $t0, -3036($fp)
	lw $t1, -3032($fp)
	lw $t2, -3036($fp)
	beq $t1, $t2, label871
	j label872
label871:
	li $t0, 1
	sw $t0, -3020($fp)
label872:
	addi $sp, $sp, -4
	lw $t0, -3020($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3040($fp)
	addi $sp, $sp, 8
	lw $t0, -3016($fp)
	lw $t1, -3040($fp)
	sub $t0, $t0, $t1
	sw $t0, -3044($fp)
	j label870
label869:
	li $t0, 61940
	sw $t0, -3048($fp)
label870:
	j label862
label861:
	addi $t0, $fp, -424
	sw $t0, -3052($fp)
	li $t0, 0
	sw $t0, -3056($fp)
	li $t0, 32006
	sw $t0, -3060($fp)
	lw $t0, -872($fp)
	sw $t0, -3064($fp)
	lw $t1, -3060($fp)
	lw $t2, -3064($fp)
	bne $t1, $t2, label876
	j label877
label876:
	li $t0, 1
	sw $t0, -3056($fp)
label877:
	li $t0, 4
	lw $t1, -3056($fp)
	mul $t0, $t0, $t1
	sw $t0, -3068($fp)
	lw $t0, -3068($fp)
	lw $t1, -3052($fp)
	add $t0, $t0, $t1
	sw $t0, -3072($fp)
	lw $t0, -3072($fp)
	lw $t1, 0($t0)
	sw $t1, -3076($fp)
	li $t0, 0
	lw $t1, -3076($fp)
	sub $t0, $t0, $t1
	sw $t0, -3080($fp)
	addi $t0, $fp, -364
	sw $t0, -3084($fp)
	lw $t0, -1736($fp)
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
	addi $t0, $fp, -404
	sw $t0, -3104($fp)
	lw $t0, -2492($fp)
	sw $t0, -3108($fp)
	li $t0, 4
	lw $t1, -3108($fp)
	mul $t0, $t0, $t1
	sw $t0, -3112($fp)
	lw $t0, -3112($fp)
	lw $t1, -3104($fp)
	add $t0, $t0, $t1
	sw $t0, -3116($fp)
	lw $t0, -3116($fp)
	lw $t1, 0($t0)
	sw $t1, -3120($fp)
	lw $t0, -3100($fp)
	lw $t1, -3120($fp)
	mul $t0, $t0, $t1
	sw $t0, -3124($fp)
	lw $t1, -3080($fp)
	lw $t2, -3124($fp)
	bgt $t1, $t2, label873
	j label874
label873:
	addi $t0, $fp, -456
	sw $t0, -3128($fp)
	lw $t0, -64($fp)
	sw $t0, -3132($fp)
	li $t0, 30522
	sw $t0, -3136($fp)
	lw $t0, -3132($fp)
	lw $t1, -3136($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3140($fp)
	li $t0, 4
	lw $t1, -3140($fp)
	mul $t0, $t0, $t1
	sw $t0, -3144($fp)
	lw $t0, -3144($fp)
	lw $t1, -3128($fp)
	add $t0, $t0, $t1
	sw $t0, -3148($fp)
	lw $t0, -3148($fp)
	lw $t1, 0($t0)
	sw $t1, -3152($fp)
	lw $t0, -3152($fp)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -3156($fp)
	j label875
label874:
	addi $t0, $fp, -1584
	sw $t0, -3160($fp)
	lw $t0, -1544($fp)
	sw $t0, -3164($fp)
	li $t0, 4
	lw $t1, -3164($fp)
	mul $t0, $t0, $t1
	sw $t0, -3168($fp)
	lw $t0, -3168($fp)
	lw $t1, -3160($fp)
	add $t0, $t0, $t1
	sw $t0, -3172($fp)
	lw $t0, -3172($fp)
	lw $t1, 0($t0)
	sw $t1, -3176($fp)
label875:
label862:
	j label857
label859:
	li $t0, 0
	sw $t0, -3180($fp)
	li $t0, 42098
	sw $t0, -3184($fp)
	lw $t0, -464($fp)
	sw $t0, -3188($fp)
	li $t0, 13933
	sw $t0, -3192($fp)
	lw $t0, -3188($fp)
	lw $t1, -3192($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3196($fp)
	li $t0, 2189
	sw $t0, -3200($fp)
	lw $t0, -3196($fp)
	lw $t1, -3200($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3204($fp)
	lw $t0, -3184($fp)
	lw $t1, -3204($fp)
	add $t0, $t0, $t1
	sw $t0, -3208($fp)
	lw $t1, -3208($fp)
	li $t2, 0
	bne $t1, $t2, label878
	j label880
label880:
	li $t0, 57747
	sw $t0, -3212($fp)
	li $t0, 22339
	sw $t0, -3216($fp)
	lw $t0, -3212($fp)
	lw $t1, -3216($fp)
	mul $t0, $t0, $t1
	sw $t0, -3220($fp)
	li $t0, 1
	sw $t0, -3224($fp)
	lw $t0, -3220($fp)
	lw $t1, -3224($fp)
	mul $t0, $t0, $t1
	sw $t0, -3228($fp)
	lw $t1, -3228($fp)
	li $t2, 0
	bne $t1, $t2, label881
	j label879
label881:
	lw $t0, -464($fp)
	sw $t0, -3232($fp)
	li $t0, 38609
	sw $t0, -3236($fp)
	lw $t0, -3232($fp)
	lw $t1, -3236($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3240($fp)
	lw $t1, -3240($fp)
	li $t2, 0
	bne $t1, $t2, label878
	j label879
label878:
	li $t0, 1
	sw $t0, -3180($fp)
label879:
	li $t0, 0
	sw $t0, -3244($fp)
	li $t0, 0
	sw $t0, -3248($fp)
	li $t0, 29262
	sw $t0, -3252($fp)
	lw $t1, -3252($fp)
	li $t2, 0
	bne $t1, $t2, label885
	j label884
label884:
	li $t0, 1
	sw $t0, -3248($fp)
label885:
	li $t0, 59839
	sw $t0, -3256($fp)
	lw $t0, -3248($fp)
	lw $t1, -3256($fp)
	mul $t0, $t0, $t1
	sw $t0, -3260($fp)
	jal f7
	sw $v0, -3264($fp)
	addi $sp, $sp, 4
	lw $t0, -3260($fp)
	lw $t1, -3264($fp)
	mul $t0, $t0, $t1
	sw $t0, -3268($fp)
	li $t0, 0
	sw $t0, -3272($fp)
	li $t0, 17471
	sw $t0, -3276($fp)
	lw $t1, -3276($fp)
	li $t2, 0
	bne $t1, $t2, label887
	j label886
label886:
	li $t0, 1
	sw $t0, -3272($fp)
label887:
	li $t0, 0
	lw $t1, -3272($fp)
	sub $t0, $t0, $t1
	sw $t0, -3280($fp)
	lw $t0, -3268($fp)
	lw $t1, -3280($fp)
	add $t0, $t0, $t1
	sw $t0, -3284($fp)
	li $t0, 12759
	sw $t0, -3288($fp)
	lw $t1, -3284($fp)
	lw $t2, -3288($fp)
	bne $t1, $t2, label882
	j label883
label882:
	li $t0, 1
	sw $t0, -3244($fp)
label883:
	j label827
label826:
label888:
	addi $t0, $fp, -44
	sw $t0, -3292($fp)
	lw $t0, -1640($fp)
	sw $t0, -3296($fp)
	lw $t0, -3296($fp)
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	sw $t0, -3300($fp)
	li $t0, 4
	lw $t1, -3300($fp)
	mul $t0, $t0, $t1
	sw $t0, -3304($fp)
	lw $t0, -3304($fp)
	lw $t1, -3292($fp)
	add $t0, $t0, $t1
	sw $t0, -3308($fp)
	lw $t0, -3308($fp)
	lw $t1, 0($t0)
	sw $t1, -3312($fp)
	li $t0, 0
	lw $t1, -3312($fp)
	sub $t0, $t0, $t1
	sw $t0, -3316($fp)
	lw $t1, -3316($fp)
	li $t2, 0
	bne $t1, $t2, label889
	j label890
label889:
	li $t0, 0
	sw $t0, -3320($fp)
	li $t0, 0
	sw $t0, -3324($fp)
	li $t0, 0
	sw $t0, -3328($fp)
	lw $t0, -824($fp)
	sw $t0, -3332($fp)
	li $t0, 56022
	sw $t0, -3336($fp)
	lw $t0, -3332($fp)
	lw $t1, -3336($fp)
	mul $t0, $t0, $t1
	sw $t0, -3340($fp)
	lw $t0, -1280($fp)
	sw $t0, -3344($fp)
	lw $t1, -3340($fp)
	lw $t2, -3344($fp)
	ble $t1, $t2, label895
	j label896
label895:
	li $t0, 1
	sw $t0, -3328($fp)
label896:
	li $t0, 0
	sw $t0, -3348($fp)
	lw $t0, -1304($fp)
	sw $t0, -3352($fp)
	lw $t1, -3352($fp)
	li $t2, 0
	bne $t1, $t2, label898
	j label897
label897:
	li $t0, 1
	sw $t0, -3348($fp)
label898:
	lw $t0, -668($fp)
	sw $t0, -3356($fp)
	lw $t0, -3348($fp)
	lw $t1, -3356($fp)
	add $t0, $t0, $t1
	sw $t0, -3360($fp)
	lw $t1, -3328($fp)
	lw $t2, -3360($fp)
	ble $t1, $t2, label893
	j label894
label893:
	li $t0, 1
	sw $t0, -3324($fp)
label894:
	addi $t0, $fp, -364
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
	li $t0, 0
	lw $t1, -3380($fp)
	sub $t0, $t0, $t1
	sw $t0, -3384($fp)
	addi $sp, $sp, -4
	lw $t0, -3384($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3388($fp)
	addi $sp, $sp, 8
	lw $t1, -3324($fp)
	lw $t2, -3388($fp)
	ble $t1, $t2, label891
	j label892
label891:
	li $t0, 1
	sw $t0, -3320($fp)
label892:
	j label888
label890:
label827:
	j label820
label819:
	addi $t0, $fp, -1608
	sw $t0, -3392($fp)
	li $t0, 0
	sw $t0, -3396($fp)
	lw $t0, -1532($fp)
	sw $t0, -3400($fp)
	lw $t0, -1544($fp)
	sw $t0, -3404($fp)
	lw $t0, -3400($fp)
	lw $t1, -3404($fp)
	sub $t0, $t0, $t1
	sw $t0, -3408($fp)
	lw $t1, -3408($fp)
	li $t2, 0
	bne $t1, $t2, label904
	j label903
label904:
	lw $t0, -896($fp)
	sw $t0, -3412($fp)
	lw $t1, -3412($fp)
	li $t2, 0
	bne $t1, $t2, label902
	j label903
label902:
	li $t0, 1
	sw $t0, -3396($fp)
label903:
	li $t0, 4
	lw $t1, -3396($fp)
	mul $t0, $t0, $t1
	sw $t0, -3416($fp)
	lw $t0, -3416($fp)
	lw $t1, -3392($fp)
	add $t0, $t0, $t1
	sw $t0, -3420($fp)
	lw $t0, -3420($fp)
	lw $t1, 0($t0)
	sw $t1, -3424($fp)
	li $t0, 31522
	sw $t0, -3428($fp)
	lw $t0, -3424($fp)
	lw $t1, -3428($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3432($fp)
	lw $t1, -3432($fp)
	li $t2, 0
	bne $t1, $t2, label899
	j label900
label899:
label905:
	jal f6
	sw $v0, -3436($fp)
	addi $sp, $sp, 4
	lw $t1, -3436($fp)
	li $t2, 0
	bne $t1, $t2, label906
	j label907
label906:
	li $t0, 0
	sw $t0, -3440($fp)
	addi $t0, $fp, -424
	sw $t0, -3444($fp)
	lw $t0, -64($fp)
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
	bne $t1, $t2, label910
	j label908
label910:
	addi $t0, $fp, -424
	sw $t0, -3464($fp)
	lw $t0, -1760($fp)
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
	li $t0, 52405
	sw $t0, -3484($fp)
	lw $t1, -3480($fp)
	lw $t2, -3484($fp)
	ble $t1, $t2, label908
	j label909
label908:
	li $t0, 1
	sw $t0, -3440($fp)
label909:
	j label905
label907:
	j label901
label900:
	li $t0, 0
	sw $t0, -3488($fp)
	li $t0, 28083
	sw $t0, -3492($fp)
	addi $t0, $fp, -1608
	sw $t0, -3496($fp)
	lw $t0, -1748($fp)
	sw $t0, -3500($fp)
	lw $t0, -1544($fp)
	sw $t0, -3504($fp)
	lw $t0, -3500($fp)
	lw $t1, -3504($fp)
	mul $t0, $t0, $t1
	sw $t0, -3508($fp)
	li $t0, 4
	lw $t1, -3508($fp)
	mul $t0, $t0, $t1
	sw $t0, -3512($fp)
	lw $t0, -3512($fp)
	lw $t1, -3496($fp)
	add $t0, $t0, $t1
	sw $t0, -3516($fp)
	lw $t0, -3516($fp)
	lw $t1, 0($t0)
	sw $t1, -3520($fp)
	lw $t1, -3492($fp)
	lw $t2, -3520($fp)
	bgt $t1, $t2, label911
	j label912
label911:
	li $t0, 1
	sw $t0, -3488($fp)
label912:
	lw $ra, -4($fp)
	lw $v0, -3488($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label901:
label820:
	j label815
label817:
	li $t0, 16101
	sw $t0, -3524($fp)
	lw $t0, -3524($fp)
	sw $t0, -3528($fp)
	lw $t0, -3528($fp)
	sw $t0, -3532($fp)
	li $t0, 35737
	sw $t0, -3536($fp)
	lw $t0, -3536($fp)
	sw $t0, -3540($fp)
	lw $t0, -3540($fp)
	sw $t0, -3544($fp)
	li $t0, 40727
	sw $t0, -3548($fp)
	lw $t0, -3548($fp)
	sw $t0, -3552($fp)
	lw $t0, -3552($fp)
	sw $t0, -3556($fp)
	li $t0, 4080
	sw $t0, -3560($fp)
	lw $t0, -3560($fp)
	sw $t0, -3564($fp)
	lw $t0, -3564($fp)
	sw $t0, -3568($fp)
	li $t0, 50035
	sw $t0, -3572($fp)
	lw $t0, -3572($fp)
	sw $t0, -3576($fp)
	lw $t0, -3576($fp)
	sw $t0, -3580($fp)
	li $t0, 40264
	sw $t0, -3584($fp)
	lw $t0, -3584($fp)
	sw $t0, -3588($fp)
	lw $t0, -3588($fp)
	sw $t0, -3592($fp)
	addi $t0, $fp, -404
	sw $t0, -3596($fp)
	lw $t0, -896($fp)
	sw $t0, -3600($fp)
	li $t0, 18400
	sw $t0, -3604($fp)
	lw $t0, -3600($fp)
	lw $t1, -3604($fp)
	add $t0, $t0, $t1
	sw $t0, -3608($fp)
	lw $t0, -680($fp)
	sw $t0, -3612($fp)
	lw $t0, -3608($fp)
	lw $t1, -3612($fp)
	add $t0, $t0, $t1
	sw $t0, -3616($fp)
	li $t0, 4
	lw $t1, -3616($fp)
	mul $t0, $t0, $t1
	sw $t0, -3620($fp)
	lw $t0, -3620($fp)
	lw $t1, -3596($fp)
	add $t0, $t0, $t1
	sw $t0, -3624($fp)
	lw $t0, -3624($fp)
	lw $t1, 0($t0)
	sw $t1, -3628($fp)
	addi $t0, $fp, -456
	sw $t0, -3632($fp)
	jal f6
	sw $v0, -3636($fp)
	addi $sp, $sp, 4
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
	lw $t0, -3628($fp)
	lw $t1, -3648($fp)
	mul $t0, $t0, $t1
	sw $t0, -3652($fp)
	lw $t1, -3652($fp)
	li $t2, 0
	bne $t1, $t2, label913
	j label914
label913:
	jal f6
	sw $v0, -3656($fp)
	addi $sp, $sp, 4
	li $t0, 33902
	sw $t0, -3660($fp)
	lw $t0, -3656($fp)
	lw $t1, -3660($fp)
	sub $t0, $t0, $t1
	sw $t0, -3664($fp)
	addi $sp, $sp, -4
	lw $t0, -3664($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3668($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -3668($fp)
	sub $t0, $t0, $t1
	sw $t0, -3672($fp)
label914:
label916:
	lw $t0, -3528($fp)
	sw $t0, -3676($fp)
	lw $t0, -3564($fp)
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	sw $t0, -3588($fp)
	lw $t0, -3588($fp)
	sw $t0, -3684($fp)
	li $t0, 0
	sw $t0, -3688($fp)
	lw $t0, -64($fp)
	sw $t0, -3692($fp)
	lw $t1, -3692($fp)
	li $t2, 0
	bne $t1, $t2, label920
	j label919
label919:
	li $t0, 1
	sw $t0, -3688($fp)
label920:
	lw $t0, -824($fp)
	sw $t0, -3696($fp)
	lw $t0, -3688($fp)
	lw $t1, -3696($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3700($fp)
	li $t0, 39878
	sw $t0, -3704($fp)
	lw $t0, -3704($fp)
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	sw $t0, -3708($fp)
	addi $t0, $fp, -364
	sw $t0, -3712($fp)
	li $t0, 0
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
	li $t0, 6017
	sw $t0, -3732($fp)
	lw $t0, -3728($fp)
	lw $t1, -3732($fp)
	add $t0, $t0, $t1
	sw $t0, -3736($fp)
	addi $sp, $sp, -4
	lw $t0, -3684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3736($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3740($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -364
	sw $t0, -3744($fp)
	li $t0, 0
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
	lw $t0, -3540($fp)
	sw $t0, -3764($fp)
	lw $t0, -3760($fp)
	lw $t1, -3764($fp)
	mul $t0, $t0, $t1
	sw $t0, -3768($fp)
	addi $sp, $sp, -4
	lw $t0, -3676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3768($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3772($fp)
	addi $sp, $sp, 16
	lw $t0, -3772($fp)
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -3776($fp)
	lw $t1, -3776($fp)
	li $t2, 0
	bne $t1, $t2, label917
	j label918
label917:
	addi $t0, $fp, -340
	sw $t0, -3780($fp)
	li $t0, 0
	sw $t0, -3784($fp)
	lw $t0, -3588($fp)
	sw $t0, -3788($fp)
	lw $t0, -1316($fp)
	sw $t0, -3792($fp)
	lw $t1, -3788($fp)
	lw $t2, -3792($fp)
	ble $t1, $t2, label924
	j label925
label924:
	li $t0, 1
	sw $t0, -3784($fp)
label925:
	li $t0, 4
	lw $t1, -3784($fp)
	mul $t0, $t0, $t1
	sw $t0, -3796($fp)
	lw $t0, -3796($fp)
	lw $t1, -3780($fp)
	add $t0, $t0, $t1
	sw $t0, -3800($fp)
	lw $t0, -3800($fp)
	lw $t1, 0($t0)
	sw $t1, -3804($fp)
	li $t0, 0
	sw $t0, -3808($fp)
	li $t0, 53477
	sw $t0, -3812($fp)
	lw $t1, -3812($fp)
	li $t2, 0
	bne $t1, $t2, label927
	j label926
label926:
	li $t0, 1
	sw $t0, -3808($fp)
label927:
	lw $t0, -3804($fp)
	lw $t1, -3808($fp)
	mul $t0, $t0, $t1
	sw $t0, -3816($fp)
	lw $t1, -3816($fp)
	li $t2, 0
	bne $t1, $t2, label921
	j label922
label921:
	li $t0, 0
	sw $t0, -3820($fp)
	lw $t0, -3576($fp)
	sw $t0, -3824($fp)
	li $t0, 19950
	sw $t0, -3828($fp)
	lw $t0, -3824($fp)
	lw $t1, -3828($fp)
	mul $t0, $t0, $t1
	sw $t0, -3832($fp)
	lw $t0, -860($fp)
	sw $t0, -3836($fp)
	lw $t0, -3832($fp)
	lw $t1, -3836($fp)
	mul $t0, $t0, $t1
	sw $t0, -3840($fp)
	lw $t0, -3540($fp)
	sw $t0, -3844($fp)
	li $t0, 0
	lw $t1, -3844($fp)
	sub $t0, $t0, $t1
	sw $t0, -3848($fp)
	lw $t0, -3840($fp)
	lw $t1, -3848($fp)
	sub $t0, $t0, $t1
	sw $t0, -3852($fp)
	lw $t0, -884($fp)
	sw $t0, -3856($fp)
	lw $t1, -3852($fp)
	lw $t2, -3856($fp)
	bge $t1, $t2, label930
	j label929
label930:
	lw $t0, -3576($fp)
	sw $t0, -3860($fp)
	lw $t1, -3860($fp)
	li $t2, 0
	bne $t1, $t2, label928
	j label929
label928:
	li $t0, 1
	sw $t0, -3820($fp)
label929:
	li $t0, 0
	sw $t0, -3864($fp)
	li $t0, 42067
	sw $t0, -3868($fp)
	li $t0, 45688
	sw $t0, -3872($fp)
	lw $t1, -3868($fp)
	lw $t2, -3872($fp)
	blt $t1, $t2, label931
	j label932
label931:
	li $t0, 1
	sw $t0, -3864($fp)
label932:
	j label923
label922:
	li $t0, 0
	sw $t0, -3876($fp)
	lw $t0, -3540($fp)
	sw $t0, -3880($fp)
	lw $t0, -3880($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -3884($fp)
	li $t0, 62266
	sw $t0, -3888($fp)
	li $t0, 0
	sw $t0, -3892($fp)
	lw $t0, -1532($fp)
	sw $t0, -3896($fp)
	lw $t0, -3552($fp)
	sw $t0, -3900($fp)
	lw $t0, -3896($fp)
	lw $t1, -3900($fp)
	sub $t0, $t0, $t1
	sw $t0, -3904($fp)
	lw $t1, -3904($fp)
	li $t2, 0
	bne $t1, $t2, label937
	j label936
label937:
	li $t0, 42290
	sw $t0, -3908($fp)
	lw $t1, -3908($fp)
	li $t2, 0
	bne $t1, $t2, label935
	j label936
label935:
	li $t0, 1
	sw $t0, -3892($fp)
label936:
	addi $sp, $sp, -4
	lw $t0, -3884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3892($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3912($fp)
	addi $sp, $sp, 16
	lw $t0, -52($fp)
	sw $t0, -3916($fp)
	lw $t0, -3912($fp)
	lw $t1, -3916($fp)
	sub $t0, $t0, $t1
	sw $t0, -3920($fp)
	li $t0, 18762
	sw $t0, -3924($fp)
	lw $t0, -1148($fp)
	sw $t0, -3928($fp)
	lw $t0, -3924($fp)
	lw $t1, -3928($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3932($fp)
	lw $t0, -3920($fp)
	lw $t1, -3932($fp)
	add $t0, $t0, $t1
	sw $t0, -3936($fp)
	addi $t0, $fp, -364
	sw $t0, -3940($fp)
	li $t0, 0
	sw $t0, -3944($fp)
	li $t0, 4
	lw $t1, -3944($fp)
	mul $t0, $t0, $t1
	sw $t0, -3948($fp)
	lw $t0, -3948($fp)
	lw $t1, -3940($fp)
	add $t0, $t0, $t1
	sw $t0, -3952($fp)
	lw $t0, -3952($fp)
	lw $t1, 0($t0)
	sw $t1, -3956($fp)
	lw $t0, -3936($fp)
	lw $t1, -3956($fp)
	add $t0, $t0, $t1
	sw $t0, -3960($fp)
	lw $t0, -1520($fp)
	sw $t0, -3964($fp)
	addi $t0, $fp, -456
	sw $t0, -3968($fp)
	lw $t0, -884($fp)
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
	lw $t0, -3964($fp)
	lw $t1, -3984($fp)
	add $t0, $t0, $t1
	sw $t0, -3988($fp)
	lw $t1, -3960($fp)
	lw $t2, -3988($fp)
	bne $t1, $t2, label933
	j label934
label933:
	li $t0, 1
	sw $t0, -3876($fp)
label934:
	lw $ra, -4($fp)
	lw $v0, -3876($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label923:
	j label916
label918:
	li $t0, 36233
	sw $t0, -4032($fp)
	addi $t0, $fp, -3996
	sw $t0, -4036($fp)
	li $t0, 0
	sw $t0, -4040($fp)
	lw $t0, -4040($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4044($fp)
	lw $t0, -4036($fp)
	lw $t1, -4044($fp)
	add $t0, $t0, $t1
	sw $t0, -4048($fp)
	lw $t0, -4032($fp)
	lw $t1, -4048($fp)
	sw $t0, 0($t1)
	lw $t0, -4048($fp)
	lw $t1, 0($t0)
	sw $t1, -4052($fp)
	li $t0, 18775
	sw $t0, -4056($fp)
	addi $t0, $fp, -3996
	sw $t0, -4060($fp)
	li $t0, 1
	sw $t0, -4064($fp)
	lw $t0, -4064($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4068($fp)
	lw $t0, -4060($fp)
	lw $t1, -4068($fp)
	add $t0, $t0, $t1
	sw $t0, -4072($fp)
	lw $t0, -4056($fp)
	lw $t1, -4072($fp)
	sw $t0, 0($t1)
	lw $t0, -4072($fp)
	lw $t1, 0($t0)
	sw $t1, -4076($fp)
	li $t0, 47056
	sw $t0, -4080($fp)
	lw $t0, -4080($fp)
	sw $t0, -4084($fp)
	lw $t0, -4084($fp)
	sw $t0, -4088($fp)
	li $t0, 11956
	sw $t0, -4092($fp)
	lw $t0, -4092($fp)
	sw $t0, -4096($fp)
	lw $t0, -4096($fp)
	sw $t0, -4100($fp)
	li $t0, 14947
	sw $t0, -4104($fp)
	lw $t0, -4104($fp)
	sw $t0, -4108($fp)
	lw $t0, -4108($fp)
	sw $t0, -4112($fp)
	li $t0, 13042
	sw $t0, -4116($fp)
	addi $t0, $fp, -4028
	sw $t0, -4120($fp)
	li $t0, 0
	sw $t0, -4124($fp)
	lw $t0, -4124($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4128($fp)
	lw $t0, -4120($fp)
	lw $t1, -4128($fp)
	add $t0, $t0, $t1
	sw $t0, -4132($fp)
	lw $t0, -4116($fp)
	lw $t1, -4132($fp)
	sw $t0, 0($t1)
	lw $t0, -4132($fp)
	lw $t1, 0($t0)
	sw $t1, -4136($fp)
	li $t0, 64362
	sw $t0, -4140($fp)
	addi $t0, $fp, -4028
	sw $t0, -4144($fp)
	li $t0, 1
	sw $t0, -4148($fp)
	lw $t0, -4148($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4152($fp)
	lw $t0, -4144($fp)
	lw $t1, -4152($fp)
	add $t0, $t0, $t1
	sw $t0, -4156($fp)
	lw $t0, -4140($fp)
	lw $t1, -4156($fp)
	sw $t0, 0($t1)
	lw $t0, -4156($fp)
	lw $t1, 0($t0)
	sw $t1, -4160($fp)
	li $t0, 43030
	sw $t0, -4164($fp)
	addi $t0, $fp, -4028
	sw $t0, -4168($fp)
	li $t0, 2
	sw $t0, -4172($fp)
	lw $t0, -4172($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4176($fp)
	lw $t0, -4168($fp)
	lw $t1, -4176($fp)
	add $t0, $t0, $t1
	sw $t0, -4180($fp)
	lw $t0, -4164($fp)
	lw $t1, -4180($fp)
	sw $t0, 0($t1)
	lw $t0, -4180($fp)
	lw $t1, 0($t0)
	sw $t1, -4184($fp)
	li $t0, 29144
	sw $t0, -4188($fp)
	addi $t0, $fp, -4028
	sw $t0, -4192($fp)
	li $t0, 3
	sw $t0, -4196($fp)
	lw $t0, -4196($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4200($fp)
	lw $t0, -4192($fp)
	lw $t1, -4200($fp)
	add $t0, $t0, $t1
	sw $t0, -4204($fp)
	lw $t0, -4188($fp)
	lw $t1, -4204($fp)
	sw $t0, 0($t1)
	lw $t0, -4204($fp)
	lw $t1, 0($t0)
	sw $t1, -4208($fp)
	li $t0, 34563
	sw $t0, -4212($fp)
	addi $t0, $fp, -4028
	sw $t0, -4216($fp)
	li $t0, 4
	sw $t0, -4220($fp)
	lw $t0, -4220($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4224($fp)
	lw $t0, -4216($fp)
	lw $t1, -4224($fp)
	add $t0, $t0, $t1
	sw $t0, -4228($fp)
	lw $t0, -4212($fp)
	lw $t1, -4228($fp)
	sw $t0, 0($t1)
	lw $t0, -4228($fp)
	lw $t1, 0($t0)
	sw $t1, -4232($fp)
	li $t0, 18221
	sw $t0, -4236($fp)
	addi $t0, $fp, -4028
	sw $t0, -4240($fp)
	li $t0, 5
	sw $t0, -4244($fp)
	lw $t0, -4244($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4248($fp)
	lw $t0, -4240($fp)
	lw $t1, -4248($fp)
	add $t0, $t0, $t1
	sw $t0, -4252($fp)
	lw $t0, -4236($fp)
	lw $t1, -4252($fp)
	sw $t0, 0($t1)
	lw $t0, -4252($fp)
	lw $t1, 0($t0)
	sw $t1, -4256($fp)
	li $t0, 33224
	sw $t0, -4260($fp)
	addi $t0, $fp, -4028
	sw $t0, -4264($fp)
	li $t0, 6
	sw $t0, -4268($fp)
	lw $t0, -4268($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4272($fp)
	lw $t0, -4264($fp)
	lw $t1, -4272($fp)
	add $t0, $t0, $t1
	sw $t0, -4276($fp)
	lw $t0, -4260($fp)
	lw $t1, -4276($fp)
	sw $t0, 0($t1)
	lw $t0, -4276($fp)
	lw $t1, 0($t0)
	sw $t1, -4280($fp)
	li $t0, 19062
	sw $t0, -4284($fp)
	addi $t0, $fp, -4028
	sw $t0, -4288($fp)
	li $t0, 7
	sw $t0, -4292($fp)
	lw $t0, -4292($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4296($fp)
	lw $t0, -4288($fp)
	lw $t1, -4296($fp)
	add $t0, $t0, $t1
	sw $t0, -4300($fp)
	lw $t0, -4284($fp)
	lw $t1, -4300($fp)
	sw $t0, 0($t1)
	lw $t0, -4300($fp)
	lw $t1, 0($t0)
	sw $t1, -4304($fp)
	li $t0, 58486
	sw $t0, -4308($fp)
	lw $t0, -4308($fp)
	sw $t0, -4312($fp)
	lw $t0, -4312($fp)
	sw $t0, -4316($fp)
	li $t0, 51624
	sw $t0, -4320($fp)
	lw $t0, -4320($fp)
	sw $t0, -4324($fp)
	lw $t0, -4324($fp)
	sw $t0, -4328($fp)
	addi $t0, $fp, -3996
	sw $t0, -4332($fp)
	li $t0, 0
	sw $t0, -4336($fp)
	li $t0, 4
	lw $t1, -4336($fp)
	mul $t0, $t0, $t1
	sw $t0, -4340($fp)
	lw $t0, -4340($fp)
	lw $t1, -4332($fp)
	add $t0, $t0, $t1
	sw $t0, -4344($fp)
	lw $t0, -4344($fp)
	lw $t1, 0($t0)
	sw $t1, -4348($fp)
	lw $t0, -4348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3996
	sw $t0, -4352($fp)
	li $t0, 1
	sw $t0, -4356($fp)
	li $t0, 4
	lw $t1, -4356($fp)
	mul $t0, $t0, $t1
	sw $t0, -4360($fp)
	lw $t0, -4360($fp)
	lw $t1, -4352($fp)
	add $t0, $t0, $t1
	sw $t0, -4364($fp)
	lw $t0, -4364($fp)
	lw $t1, 0($t0)
	sw $t1, -4368($fp)
	lw $t0, -4368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4084($fp)
	sw $t0, -4372($fp)
	lw $t0, -4372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4096($fp)
	sw $t0, -4376($fp)
	lw $t0, -4376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4108($fp)
	sw $t0, -4380($fp)
	lw $t0, -4380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4028
	sw $t0, -4384($fp)
	li $t0, 0
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
	lw $t0, -4400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4028
	sw $t0, -4404($fp)
	li $t0, 1
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
	addi $t0, $fp, -4028
	sw $t0, -4424($fp)
	li $t0, 2
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
	addi $t0, $fp, -4028
	sw $t0, -4444($fp)
	li $t0, 3
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
	addi $t0, $fp, -4028
	sw $t0, -4464($fp)
	li $t0, 4
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
	addi $t0, $fp, -4028
	sw $t0, -4484($fp)
	li $t0, 5
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
	addi $t0, $fp, -4028
	sw $t0, -4504($fp)
	li $t0, 6
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
	addi $t0, $fp, -4028
	sw $t0, -4524($fp)
	li $t0, 7
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
	lw $t0, -4312($fp)
	sw $t0, -4544($fp)
	lw $t0, -4544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4324($fp)
	sw $t0, -4548($fp)
	lw $t0, -4548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4552($fp)
	addi $t0, $fp, -404
	sw $t0, -4556($fp)
	lw $t0, -812($fp)
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
	li $t0, 0
	lw $t1, -4572($fp)
	sub $t0, $t0, $t1
	sw $t0, -4576($fp)
	addi $t0, $fp, -360
	sw $t0, -4580($fp)
	li $t0, 3
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
	li $t0, 25635
	sw $t0, -4600($fp)
	lw $t0, -4596($fp)
	lw $t1, -4600($fp)
	mul $t0, $t0, $t1
	sw $t0, -4604($fp)
	lw $t0, -4576($fp)
	lw $t1, -4604($fp)
	add $t0, $t0, $t1
	sw $t0, -4608($fp)
	lw $t1, -4608($fp)
	li $t2, 0
	bne $t1, $t2, label940
	j label939
label940:
	li $t0, 0
	sw $t0, -4612($fp)
	lw $t0, -1280($fp)
	sw $t0, -4616($fp)
	lw $t1, -4616($fp)
	li $t2, 0
	bne $t1, $t2, label943
	j label942
label943:
	lw $t0, -3588($fp)
	sw $t0, -4620($fp)
	lw $t1, -4620($fp)
	li $t2, 0
	bne $t1, $t2, label941
	j label942
label941:
	li $t0, 1
	sw $t0, -4612($fp)
label942:
	li $t0, 0
	sw $t0, -4624($fp)
	li $t0, 0
	sw $t0, -4628($fp)
	li $t0, 28356
	sw $t0, -4632($fp)
	li $t0, 9924
	sw $t0, -4636($fp)
	lw $t1, -4632($fp)
	lw $t2, -4636($fp)
	ble $t1, $t2, label946
	j label947
label946:
	li $t0, 1
	sw $t0, -4628($fp)
label947:
	lw $t0, -4084($fp)
	sw $t0, -4640($fp)
	lw $t1, -4628($fp)
	lw $t2, -4640($fp)
	bge $t1, $t2, label944
	j label945
label944:
	li $t0, 1
	sw $t0, -4624($fp)
label945:
	addi $t0, $fp, -424
	sw $t0, -4644($fp)
	li $t0, 3
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
	lw $t0, -1280($fp)
	sw $t0, -4664($fp)
	lw $t0, -4660($fp)
	lw $t1, -4664($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4668($fp)
	li $t0, 0
	sw $t0, -4672($fp)
	li $t0, 7244
	sw $t0, -4676($fp)
	lw $t1, -4676($fp)
	li $t2, 0
	bne $t1, $t2, label948
	j label951
label951:
	li $t0, 51602
	sw $t0, -4680($fp)
	lw $t1, -4680($fp)
	li $t2, 0
	bne $t1, $t2, label948
	j label950
label950:
	lw $t0, -3588($fp)
	sw $t0, -4684($fp)
	lw $t1, -4684($fp)
	li $t2, 0
	bne $t1, $t2, label948
	j label949
label948:
	li $t0, 1
	sw $t0, -4672($fp)
label949:
	addi $sp, $sp, -4
	lw $t0, -4612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4672($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -4688($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -4692($fp)
	addi $t0, $fp, -3996
	sw $t0, -4696($fp)
	li $t0, 0
	sw $t0, -4700($fp)
	li $t0, 4
	lw $t1, -4700($fp)
	mul $t0, $t0, $t1
	sw $t0, -4704($fp)
	lw $t0, -4704($fp)
	lw $t1, -4696($fp)
	add $t0, $t0, $t1
	sw $t0, -4708($fp)
	lw $t0, -4708($fp)
	lw $t1, 0($t0)
	sw $t1, -4712($fp)
	lw $t1, -4712($fp)
	li $t2, 0
	bne $t1, $t2, label952
	j label954
label954:
	li $t0, 36662
	sw $t0, -4716($fp)
	lw $t1, -4716($fp)
	li $t2, 0
	bne $t1, $t2, label952
	j label953
label952:
	li $t0, 1
	sw $t0, -4692($fp)
label953:
	lw $t0, -1292($fp)
	sw $t0, -4720($fp)
	lw $t0, -4720($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -4724($fp)
	li $t0, 0
	sw $t0, -4728($fp)
	lw $t0, -4108($fp)
	sw $t0, -4732($fp)
	lw $t0, 4($fp)
	sw $t0, -4736($fp)
	lw $t0, -4732($fp)
	lw $t1, -4736($fp)
	add $t0, $t0, $t1
	sw $t0, -4740($fp)
	li $t0, 62320
	sw $t0, -4744($fp)
	lw $t1, -4740($fp)
	lw $t2, -4744($fp)
	bne $t1, $t2, label955
	j label956
label955:
	li $t0, 1
	sw $t0, -4728($fp)
label956:
	addi $sp, $sp, -4
	lw $t0, -4688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4728($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -4748($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -4748($fp)
	sub $t0, $t0, $t1
	sw $t0, -4752($fp)
	lw $t1, -4752($fp)
	li $t2, 0
	bne $t1, $t2, label939
	j label938
label938:
	li $t0, 1
	sw $t0, -4552($fp)
label939:
	lw $ra, -4($fp)
	lw $v0, -4552($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -4756($fp)
	lw $t0, -464($fp)
	sw $t0, -4760($fp)
	li $t0, 6159
	sw $t0, -4764($fp)
	lw $t0, -1544($fp)
	sw $t0, -4768($fp)
	lw $t0, -4764($fp)
	lw $t1, -4768($fp)
	mul $t0, $t0, $t1
	sw $t0, -4772($fp)
	li $t0, 34373
	sw $t0, -4776($fp)
	lw $t0, -4772($fp)
	lw $t1, -4776($fp)
	add $t0, $t0, $t1
	sw $t0, -4780($fp)
	jal f6
	sw $v0, -4784($fp)
	addi $sp, $sp, 4
	lw $t0, -4780($fp)
	lw $t1, -4784($fp)
	sub $t0, $t0, $t1
	sw $t0, -4788($fp)
	lw $t1, -4760($fp)
	lw $t2, -4788($fp)
	blt $t1, $t2, label957
	j label958
label957:
	li $t0, 1
	sw $t0, -4756($fp)
label958:
	li $t0, 958
	sw $t0, -4792($fp)
	lw $t1, -4792($fp)
	li $t2, 0
	bne $t1, $t2, label959
	j label960
label959:
	li $t0, 42392
	sw $t0, -4796($fp)
	lw $t1, -4796($fp)
	li $t2, 0
	bne $t1, $t2, label962
	j label965
label965:
	lw $t0, -3576($fp)
	sw $t0, -4800($fp)
	addi $t0, $fp, -3996
	sw $t0, -4804($fp)
	lw $t0, -812($fp)
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
	lw $t0, -4800($fp)
	lw $t1, -4820($fp)
	mul $t0, $t0, $t1
	sw $t0, -4824($fp)
	li $t0, 0
	lw $t1, -4824($fp)
	sub $t0, $t0, $t1
	sw $t0, -4828($fp)
	lw $t1, -4828($fp)
	li $t2, 0
	bne $t1, $t2, label962
	j label963
label962:
	li $t0, 53148
	sw $t0, -4832($fp)
	lw $t0, -4832($fp)
	sw $t0, -4836($fp)
	lw $t0, -4836($fp)
	sw $t0, -4840($fp)
	li $t0, 48015
	sw $t0, -4844($fp)
	lw $t0, -4844($fp)
	sw $t0, -4848($fp)
	lw $t0, -4848($fp)
	sw $t0, -4852($fp)
	li $t0, 54348
	sw $t0, -4856($fp)
	lw $t0, -4856($fp)
	sw $t0, -4860($fp)
	lw $t0, -4860($fp)
	sw $t0, -4864($fp)
	li $t0, 2559
	sw $t0, -4868($fp)
	lw $t0, -4868($fp)
	sw $t0, -4872($fp)
	lw $t0, -4872($fp)
	sw $t0, -4876($fp)
	li $t0, 0
	sw $t0, -4880($fp)
	li $t0, 61057
	sw $t0, -4884($fp)
	li $t0, 53174
	sw $t0, -4888($fp)
	lw $t0, -824($fp)
	sw $t0, -4892($fp)
	lw $t0, -4888($fp)
	lw $t1, -4892($fp)
	mul $t0, $t0, $t1
	sw $t0, -4896($fp)
	lw $t0, -4884($fp)
	lw $t1, -4896($fp)
	sub $t0, $t0, $t1
	sw $t0, -4900($fp)
	li $t0, 45589
	sw $t0, -4904($fp)
	li $t0, 0
	lw $t1, -4904($fp)
	sub $t0, $t0, $t1
	sw $t0, -4908($fp)
	lw $t0, -4900($fp)
	lw $t1, -4908($fp)
	sub $t0, $t0, $t1
	sw $t0, -4912($fp)
	lw $t1, -4912($fp)
	li $t2, 0
	bne $t1, $t2, label966
	j label968
label968:
	li $t0, 24665
	sw $t0, -4916($fp)
	li $t0, 22201
	sw $t0, -4920($fp)
	lw $t0, -4916($fp)
	lw $t1, -4920($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4924($fp)
	lw $t0, -4872($fp)
	sw $t0, -4928($fp)
	lw $t0, -4924($fp)
	lw $t1, -4928($fp)
	mul $t0, $t0, $t1
	sw $t0, -4932($fp)
	lw $t0, -884($fp)
	sw $t0, -4936($fp)
	li $t0, 63811
	sw $t0, -4940($fp)
	lw $t0, -4936($fp)
	lw $t1, -4940($fp)
	mul $t0, $t0, $t1
	sw $t0, -4944($fp)
	lw $t0, -4932($fp)
	lw $t1, -4944($fp)
	add $t0, $t0, $t1
	sw $t0, -4948($fp)
	lw $t1, -4948($fp)
	li $t2, 0
	bne $t1, $t2, label966
	j label967
label966:
	li $t0, 1
	sw $t0, -4880($fp)
label967:
	li $t0, 0
	sw $t0, -4952($fp)
	li $t0, 0
	sw $t0, -4956($fp)
	li $t0, 0
	sw $t0, -4960($fp)
	li $t0, 57889
	sw $t0, -4964($fp)
	li $t0, 1
	sw $t0, -4968($fp)
	lw $t0, -4964($fp)
	lw $t1, -4968($fp)
	mul $t0, $t0, $t1
	sw $t0, -4972($fp)
	li $t0, 56761
	sw $t0, -4976($fp)
	lw $t0, -4860($fp)
	sw $t0, -4980($fp)
	lw $t0, -4976($fp)
	lw $t1, -4980($fp)
	mul $t0, $t0, $t1
	sw $t0, -4984($fp)
	lw $t1, -4972($fp)
	lw $t2, -4984($fp)
	bge $t1, $t2, label973
	j label974
label973:
	li $t0, 1
	sw $t0, -4960($fp)
label974:
	li $t0, 0
	sw $t0, -4988($fp)
	li $t0, 43978
	sw $t0, -4992($fp)
	lw $t1, -4992($fp)
	li $t2, 0
	bne $t1, $t2, label976
	j label975
label975:
	li $t0, 1
	sw $t0, -4988($fp)
label976:
	li $t0, 28691
	sw $t0, -4996($fp)
	lw $t0, -4988($fp)
	lw $t1, -4996($fp)
	add $t0, $t0, $t1
	sw $t0, -5000($fp)
	lw $t1, -4960($fp)
	lw $t2, -5000($fp)
	bge $t1, $t2, label971
	j label972
label971:
	li $t0, 1
	sw $t0, -4956($fp)
label972:
	li $t0, 0
	sw $t0, -5004($fp)
	addi $t0, $fp, -364
	sw $t0, -5008($fp)
	li $t0, 0
	sw $t0, -5012($fp)
	li $t0, 4
	lw $t1, -5012($fp)
	mul $t0, $t0, $t1
	sw $t0, -5016($fp)
	lw $t0, -5016($fp)
	lw $t1, -5008($fp)
	add $t0, $t0, $t1
	sw $t0, -5020($fp)
	lw $t0, -5020($fp)
	lw $t1, 0($t0)
	sw $t1, -5024($fp)
	addi $t0, $fp, -424
	sw $t0, -5028($fp)
	lw $t0, -812($fp)
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
	lw $t1, -5024($fp)
	lw $t2, -5044($fp)
	blt $t1, $t2, label977
	j label978
label977:
	li $t0, 1
	sw $t0, -5004($fp)
label978:
	lw $t1, -4956($fp)
	lw $t2, -5004($fp)
	bne $t1, $t2, label969
	j label970
label969:
	li $t0, 1
	sw $t0, -4952($fp)
label970:
	lw $t0, -4872($fp)
	sw $t0, -5048($fp)
	li $t0, 0
	sw $t0, -5052($fp)
	lw $t0, -464($fp)
	sw $t0, -5056($fp)
	lw $t1, -5056($fp)
	li $t2, 0
	bne $t1, $t2, label980
	j label979
label979:
	li $t0, 1
	sw $t0, -5052($fp)
label980:
	li $t0, 0
	lw $t1, -5052($fp)
	sub $t0, $t0, $t1
	sw $t0, -5060($fp)
	lw $t0, -5048($fp)
	lw $t1, -5060($fp)
	add $t0, $t0, $t1
	sw $t0, -5064($fp)
	li $t0, 25475
	sw $t0, -5068($fp)
	li $t0, 0
	lw $t1, -5068($fp)
	sub $t0, $t0, $t1
	sw $t0, -5072($fp)
	lw $t0, -5064($fp)
	lw $t1, -5072($fp)
	sub $t0, $t0, $t1
	sw $t0, -5076($fp)
	li $t0, 0
	sw $t0, -5080($fp)
	lw $t0, -4848($fp)
	sw $t0, -5084($fp)
	li $t0, 18453
	sw $t0, -5088($fp)
	lw $t0, -5084($fp)
	lw $t1, -5088($fp)
	mul $t0, $t0, $t1
	sw $t0, -5092($fp)
	lw $t1, -5092($fp)
	li $t2, 0
	bne $t1, $t2, label981
	j label983
label983:
	lw $t0, -1544($fp)
	sw $t0, -5096($fp)
	lw $t0, -5096($fp)
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	sw $t0, -5100($fp)
	lw $t0, -4836($fp)
	sw $t0, -5104($fp)
	lw $t0, -1304($fp)
	sw $t0, -5108($fp)
	lw $t0, -1568($fp)
	sw $t0, -5112($fp)
	lw $t0, -5108($fp)
	lw $t1, -5112($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5116($fp)
	li $t0, 0
	sw $t0, -5120($fp)
	lw $t0, -884($fp)
	sw $t0, -5124($fp)
	lw $t0, -4084($fp)
	sw $t0, -5128($fp)
	lw $t1, -5124($fp)
	lw $t2, -5128($fp)
	beq $t1, $t2, label984
	j label985
label984:
	li $t0, 1
	sw $t0, -5120($fp)
label985:
	addi $sp, $sp, -4
	lw $t0, -5100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5120($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -5132($fp)
	addi $sp, $sp, 20
	lw $t1, -5132($fp)
	li $t2, 0
	bne $t1, $t2, label981
	j label982
label981:
	li $t0, 1
	sw $t0, -5080($fp)
label982:
	li $t0, 0
	sw $t0, -5136($fp)
	jal f7
	sw $v0, -5140($fp)
	addi $sp, $sp, 4
	lw $t0, -4324($fp)
	sw $t0, -5144($fp)
	lw $t0, -5140($fp)
	lw $t1, -5144($fp)
	sub $t0, $t0, $t1
	sw $t0, -5148($fp)
	lw $t0, -872($fp)
	sw $t0, -5152($fp)
	li $t0, 0
	lw $t1, -5152($fp)
	sub $t0, $t0, $t1
	sw $t0, -5156($fp)
	lw $t1, -5148($fp)
	lw $t2, -5156($fp)
	bge $t1, $t2, label986
	j label987
label986:
	li $t0, 1
	sw $t0, -5136($fp)
label987:
	j label964
label963:
	li $t0, 0
	sw $t0, -5160($fp)
	li $t0, 0
	sw $t0, -5164($fp)
	li $t0, 35729
	sw $t0, -5168($fp)
	addi $t0, $fp, -4028
	sw $t0, -5172($fp)
	lw $t0, -464($fp)
	sw $t0, -5176($fp)
	li $t0, 4
	lw $t1, -5176($fp)
	mul $t0, $t0, $t1
	sw $t0, -5180($fp)
	lw $t0, -5180($fp)
	lw $t1, -5172($fp)
	add $t0, $t0, $t1
	sw $t0, -5184($fp)
	lw $t0, -5184($fp)
	lw $t1, 0($t0)
	sw $t1, -5188($fp)
	lw $t0, -896($fp)
	sw $t0, -5192($fp)
	lw $t0, -5188($fp)
	lw $t1, -5192($fp)
	sub $t0, $t0, $t1
	sw $t0, -5196($fp)
	li $t0, 0
	sw $t0, -5200($fp)
	addi $t0, $fp, -456
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
	lw $t1, -5220($fp)
	li $t2, 0
	bne $t1, $t2, label994
	j label993
label994:
	lw $t0, -3588($fp)
	sw $t0, -5224($fp)
	lw $t1, -5224($fp)
	li $t2, 0
	bne $t1, $t2, label992
	j label993
label992:
	li $t0, 1
	sw $t0, -5200($fp)
label993:
	addi $sp, $sp, -4
	lw $t0, -5196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5200($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -5228($fp)
	addi $sp, $sp, 12
	lw $t0, -5168($fp)
	lw $t1, -5228($fp)
	mul $t0, $t0, $t1
	sw $t0, -5232($fp)
	li $t0, 0
	sw $t0, -5236($fp)
	li $t0, 21795
	sw $t0, -5240($fp)
	lw $t0, -1544($fp)
	sw $t0, -5244($fp)
	lw $t1, -5240($fp)
	lw $t2, -5244($fp)
	bge $t1, $t2, label995
	j label996
label995:
	li $t0, 1
	sw $t0, -5236($fp)
label996:
	lw $t1, -5232($fp)
	lw $t2, -5236($fp)
	beq $t1, $t2, label990
	j label991
label990:
	li $t0, 1
	sw $t0, -5164($fp)
label991:
	li $t0, 0
	sw $t0, -5248($fp)
	lw $t0, -64($fp)
	sw $t0, -5252($fp)
	lw $t1, -5252($fp)
	li $t2, 0
	bne $t1, $t2, label998
	j label997
label997:
	li $t0, 1
	sw $t0, -5248($fp)
label998:
	li $t0, 0
	sw $t0, -5256($fp)
	lw $t0, -1532($fp)
	sw $t0, -5260($fp)
	lw $t0, -4096($fp)
	sw $t0, -5264($fp)
	lw $t1, -5260($fp)
	lw $t2, -5264($fp)
	beq $t1, $t2, label999
	j label1000
label999:
	li $t0, 1
	sw $t0, -5256($fp)
label1000:
	li $t0, 0
	sw $t0, -5268($fp)
	lw $t0, -4324($fp)
	sw $t0, -5272($fp)
	li $t0, 0
	lw $t1, -5272($fp)
	sub $t0, $t0, $t1
	sw $t0, -5276($fp)
	lw $t0, -1544($fp)
	sw $t0, -5280($fp)
	lw $t1, -5276($fp)
	lw $t2, -5280($fp)
	bge $t1, $t2, label1001
	j label1002
label1001:
	li $t0, 1
	sw $t0, -5268($fp)
label1002:
	addi $sp, $sp, -4
	lw $t0, -5248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5268($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5284($fp)
	addi $sp, $sp, 16
	lw $t1, -5164($fp)
	lw $t2, -5284($fp)
	bne $t1, $t2, label988
	j label989
label988:
	li $t0, 1
	sw $t0, -5160($fp)
label989:
	lw $ra, -4($fp)
	lw $v0, -5160($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label964:
label960:
	addi $t0, $fp, -3996
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
	addi $t0, $fp, -3996
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
	lw $t0, -4084($fp)
	sw $t0, -5328($fp)
	lw $t0, -5328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4096($fp)
	sw $t0, -5332($fp)
	lw $t0, -5332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4108($fp)
	sw $t0, -5336($fp)
	lw $t0, -5336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4028
	sw $t0, -5340($fp)
	li $t0, 0
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
	addi $t0, $fp, -4028
	sw $t0, -5360($fp)
	li $t0, 1
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
	addi $t0, $fp, -4028
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
	lw $t0, -5396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4028
	sw $t0, -5400($fp)
	li $t0, 3
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
	addi $t0, $fp, -4028
	sw $t0, -5420($fp)
	li $t0, 4
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
	addi $t0, $fp, -4028
	sw $t0, -5440($fp)
	li $t0, 5
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
	addi $t0, $fp, -4028
	sw $t0, -5460($fp)
	li $t0, 6
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
	addi $t0, $fp, -4028
	sw $t0, -5480($fp)
	li $t0, 7
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
	lw $t0, -4312($fp)
	sw $t0, -5500($fp)
	lw $t0, -5500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4324($fp)
	sw $t0, -5504($fp)
	lw $t0, -5504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5508($fp)
	jal f7
	sw $v0, -5512($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -5516($fp)
	li $t0, 0
	sw $t0, -5520($fp)
	lw $t0, -1544($fp)
	sw $t0, -5524($fp)
	lw $t1, -5524($fp)
	li $t2, 0
	bne $t1, $t2, label1008
	j label1007
label1007:
	li $t0, 1
	sw $t0, -5520($fp)
label1008:
	li $t0, 0
	lw $t1, -5520($fp)
	sub $t0, $t0, $t1
	sw $t0, -5528($fp)
	lw $t0, -1556($fp)
	sw $t0, -5532($fp)
	lw $t0, -4312($fp)
	sw $t0, -5536($fp)
	lw $t0, -5532($fp)
	lw $t1, -5536($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5540($fp)
	lw $t1, -5528($fp)
	lw $t2, -5540($fp)
	bge $t1, $t2, label1005
	j label1006
label1005:
	li $t0, 1
	sw $t0, -5516($fp)
label1006:
	lw $t1, -5512($fp)
	lw $t2, -5516($fp)
	bne $t1, $t2, label1003
	j label1004
label1003:
	li $t0, 1
	sw $t0, -5508($fp)
label1004:
	lw $ra, -4($fp)
	lw $v0, -5508($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	jal f6
	sw $v0, -5544($fp)
	addi $sp, $sp, 4
	lw $t0, -1280($fp)
	sw $t0, -5548($fp)
	lw $t0, -52($fp)
	sw $t0, -5552($fp)
	lw $t0, -5552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -64($fp)
	sw $t0, -5556($fp)
	lw $t0, -5556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -5560($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -5580($fp)
	li $t0, 1
	sw $t0, -5584($fp)
	li $t0, 4
	lw $t1, -5584($fp)
	mul $t0, $t0, $t1
	sw $t0, -5588($fp)
	lw $t0, -5588($fp)
	lw $t1, -5580($fp)
	add $t0, $t0, $t1
	sw $t0, -5592($fp)
	lw $t0, -5592($fp)
	lw $t1, 0($t0)
	sw $t1, -5596($fp)
	lw $t0, -5596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -5600($fp)
	li $t0, 2
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
	lw $t0, -5616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -5620($fp)
	li $t0, 3
	sw $t0, -5624($fp)
	li $t0, 4
	lw $t1, -5624($fp)
	mul $t0, $t0, $t1
	sw $t0, -5628($fp)
	lw $t0, -5628($fp)
	lw $t1, -5620($fp)
	add $t0, $t0, $t1
	sw $t0, -5632($fp)
	lw $t0, -5632($fp)
	lw $t1, 0($t0)
	sw $t1, -5636($fp)
	lw $t0, -5636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -5640($fp)
	li $t0, 4
	sw $t0, -5644($fp)
	li $t0, 4
	lw $t1, -5644($fp)
	mul $t0, $t0, $t1
	sw $t0, -5648($fp)
	lw $t0, -5648($fp)
	lw $t1, -5640($fp)
	add $t0, $t0, $t1
	sw $t0, -5652($fp)
	lw $t0, -5652($fp)
	lw $t1, 0($t0)
	sw $t1, -5656($fp)
	lw $t0, -5656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -5660($fp)
	li $t0, 5
	sw $t0, -5664($fp)
	li $t0, 4
	lw $t1, -5664($fp)
	mul $t0, $t0, $t1
	sw $t0, -5668($fp)
	lw $t0, -5668($fp)
	lw $t1, -5660($fp)
	add $t0, $t0, $t1
	sw $t0, -5672($fp)
	lw $t0, -5672($fp)
	lw $t1, 0($t0)
	sw $t1, -5676($fp)
	lw $t0, -5676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -5680($fp)
	li $t0, 6
	sw $t0, -5684($fp)
	li $t0, 4
	lw $t1, -5684($fp)
	mul $t0, $t0, $t1
	sw $t0, -5688($fp)
	lw $t0, -5688($fp)
	lw $t1, -5680($fp)
	add $t0, $t0, $t1
	sw $t0, -5692($fp)
	lw $t0, -5692($fp)
	lw $t1, 0($t0)
	sw $t1, -5696($fp)
	lw $t0, -5696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -5700($fp)
	li $t0, 7
	sw $t0, -5704($fp)
	li $t0, 4
	lw $t1, -5704($fp)
	mul $t0, $t0, $t1
	sw $t0, -5708($fp)
	lw $t0, -5708($fp)
	lw $t1, -5700($fp)
	add $t0, $t0, $t1
	sw $t0, -5712($fp)
	lw $t0, -5712($fp)
	lw $t1, 0($t0)
	sw $t1, -5716($fp)
	lw $t0, -5716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -5720($fp)
	li $t0, 8
	sw $t0, -5724($fp)
	li $t0, 4
	lw $t1, -5724($fp)
	mul $t0, $t0, $t1
	sw $t0, -5728($fp)
	lw $t0, -5728($fp)
	lw $t1, -5720($fp)
	add $t0, $t0, $t1
	sw $t0, -5732($fp)
	lw $t0, -5732($fp)
	lw $t1, 0($t0)
	sw $t1, -5736($fp)
	lw $t0, -5736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -5740($fp)
	li $t0, 9
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
	li $t0, 0
	sw $t0, -5760($fp)
	addi $t0, $fp, -44
	sw $t0, -5764($fp)
	li $t0, 9796
	sw $t0, -5768($fp)
	lw $t0, -64($fp)
	sw $t0, -5772($fp)
	lw $t0, -5768($fp)
	lw $t1, -5772($fp)
	mul $t0, $t0, $t1
	sw $t0, -5776($fp)
	lw $t0, -52($fp)
	sw $t0, -5780($fp)
	lw $t0, -5776($fp)
	lw $t1, -5780($fp)
	mul $t0, $t0, $t1
	sw $t0, -5784($fp)
	li $t0, 4
	lw $t1, -5784($fp)
	mul $t0, $t0, $t1
	sw $t0, -5788($fp)
	lw $t0, -5788($fp)
	lw $t1, -5764($fp)
	add $t0, $t0, $t1
	sw $t0, -5792($fp)
	lw $t0, -5792($fp)
	lw $t1, 0($t0)
	sw $t1, -5796($fp)
	lw $t1, -5796($fp)
	li $t2, 0
	bne $t1, $t2, label1010
	j label1009
label1009:
	li $t0, 1
	sw $t0, -5760($fp)
label1010:
	lw $ra, -4($fp)
	lw $v0, -5760($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1232
	li $t0, 13094
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
	li $t0, 50152
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
	li $t0, 19720
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
	li $t0, 19253
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
	li $t0, 18989
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
	li $t0, 20679
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	li $t0, 61645
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	li $t0, 6601
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	li $t0, 3158
	sw $t0, -208($fp)
	addi $t0, $fp, -48
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
	li $t0, 50458
	sw $t0, -232($fp)
	addi $t0, $fp, -48
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
	li $t0, 9161
	sw $t0, -256($fp)
	addi $t0, $fp, -48
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
	li $t0, 64215
	sw $t0, -280($fp)
	addi $t0, $fp, -48
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
	li $t0, 38096
	sw $t0, -304($fp)
	addi $t0, $fp, -48
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
	li $t0, 54750
	sw $t0, -328($fp)
	addi $t0, $fp, -48
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
	li $t0, 23345
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	li $t0, 60298
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	li $t0, 53025
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	li $t0, 15698
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	addi $t0, $fp, -24
	sw $t0, -400($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -420($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -440($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -460($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -480($fp)
	li $t0, 4
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
	lw $t0, -176($fp)
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -188($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -200($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -512($fp)
	li $t0, 0
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
	addi $t0, $fp, -48
	sw $t0, -532($fp)
	li $t0, 1
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
	addi $t0, $fp, -48
	sw $t0, -552($fp)
	li $t0, 2
	sw $t0, -556($fp)
	li $t0, 4
	lw $t1, -556($fp)
	mul $t0, $t0, $t1
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	lw $t1, -552($fp)
	add $t0, $t0, $t1
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	lw $t1, 0($t0)
	sw $t1, -568($fp)
	lw $t0, -568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -572($fp)
	li $t0, 3
	sw $t0, -576($fp)
	li $t0, 4
	lw $t1, -576($fp)
	mul $t0, $t0, $t1
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	lw $t1, -572($fp)
	add $t0, $t0, $t1
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	lw $t1, 0($t0)
	sw $t1, -588($fp)
	lw $t0, -588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -592($fp)
	li $t0, 4
	sw $t0, -596($fp)
	li $t0, 4
	lw $t1, -596($fp)
	mul $t0, $t0, $t1
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	lw $t1, -592($fp)
	add $t0, $t0, $t1
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	lw $t1, 0($t0)
	sw $t1, -608($fp)
	lw $t0, -608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -612($fp)
	li $t0, 5
	sw $t0, -616($fp)
	li $t0, 4
	lw $t1, -616($fp)
	mul $t0, $t0, $t1
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	lw $t1, -612($fp)
	add $t0, $t0, $t1
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	lw $t1, 0($t0)
	sw $t1, -628($fp)
	lw $t0, -628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -356($fp)
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -368($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -380($fp)
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -392($fp)
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -648($fp)
	li $t0, 0
	sw $t0, -652($fp)
	li $t0, 0
	sw $t0, -656($fp)
	li $t0, 0
	sw $t0, -660($fp)
	lw $t0, -392($fp)
	sw $t0, -664($fp)
	li $t0, 36025
	sw $t0, -668($fp)
	lw $t1, -664($fp)
	lw $t2, -668($fp)
	ble $t1, $t2, label1017
	j label1018
label1017:
	li $t0, 1
	sw $t0, -660($fp)
label1018:
	li $t0, 44250
	sw $t0, -672($fp)
	lw $t0, -392($fp)
	sw $t0, -676($fp)
	lw $t0, -672($fp)
	lw $t1, -676($fp)
	mul $t0, $t0, $t1
	sw $t0, -680($fp)
	lw $t1, -660($fp)
	lw $t2, -680($fp)
	ble $t1, $t2, label1015
	j label1016
label1015:
	li $t0, 1
	sw $t0, -656($fp)
label1016:
	lw $t0, -188($fp)
	sw $t0, -684($fp)
	lw $t1, -656($fp)
	lw $t2, -684($fp)
	bgt $t1, $t2, label1013
	j label1014
label1013:
	li $t0, 1
	sw $t0, -652($fp)
label1014:
	lw $t0, 4($fp)
	sw $t0, -688($fp)
	lw $t0, -176($fp)
	sw $t0, -692($fp)
	lw $t0, -688($fp)
	lw $t1, -692($fp)
	mul $t0, $t0, $t1
	sw $t0, -696($fp)
	li $t0, 59676
	sw $t0, -700($fp)
	li $t0, 64717
	sw $t0, -704($fp)
	lw $t0, -700($fp)
	lw $t1, -704($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -708($fp)
	lw $t0, -696($fp)
	lw $t1, -708($fp)
	sub $t0, $t0, $t1
	sw $t0, -712($fp)
	lw $t1, -652($fp)
	lw $t2, -712($fp)
	bgt $t1, $t2, label1011
	j label1012
label1011:
	li $t0, 1
	sw $t0, -648($fp)
label1012:
	lw $ra, -4($fp)
	lw $v0, -648($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -24
	sw $t0, -716($fp)
	lw $t0, -368($fp)
	sw $t0, -720($fp)
	lw $t0, 4($fp)
	sw $t0, -724($fp)
	lw $t0, -720($fp)
	lw $t1, -724($fp)
	mul $t0, $t0, $t1
	sw $t0, -728($fp)
	li $t0, 4
	lw $t1, -728($fp)
	mul $t0, $t0, $t1
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	lw $t1, -716($fp)
	add $t0, $t0, $t1
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	lw $t1, 0($t0)
	sw $t1, -740($fp)
	addi $t0, $fp, -48
	sw $t0, -744($fp)
	lw $t0, -200($fp)
	sw $t0, -748($fp)
	li $t0, 4
	lw $t1, -748($fp)
	mul $t0, $t0, $t1
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	lw $t1, -744($fp)
	add $t0, $t0, $t1
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	lw $t1, 0($t0)
	sw $t1, -760($fp)
	lw $t0, -740($fp)
	lw $t1, -760($fp)
	sub $t0, $t0, $t1
	sw $t0, -764($fp)
	lw $t1, -764($fp)
	li $t2, 0
	bne $t1, $t2, label1019
	j label1022
label1022:
	li $t0, 0
	sw $t0, -768($fp)
	li $t0, 63753
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -776($fp)
	li $t0, 43400
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -784($fp)
	addi $sp, $sp, -4
	lw $t0, -776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -784($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -788($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -788($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -792($fp)
	addi $sp, $sp, 8
	li $t0, 24656
	sw $t0, -796($fp)
	lw $t1, -792($fp)
	lw $t2, -796($fp)
	bgt $t1, $t2, label1023
	j label1024
label1023:
	li $t0, 1
	sw $t0, -768($fp)
label1024:
	addi $sp, $sp, -4
	lw $t0, -768($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -800($fp)
	addi $sp, $sp, 8
	lw $t1, -800($fp)
	li $t2, 0
	bne $t1, $t2, label1019
	j label1020
label1019:
label1025:
	addi $t0, $fp, -24
	sw $t0, -804($fp)
	li $t0, 0
	sw $t0, -808($fp)
	li $t0, 61853
	sw $t0, -812($fp)
	lw $t1, -812($fp)
	li $t2, 0
	bne $t1, $t2, label1029
	j label1028
label1028:
	li $t0, 1
	sw $t0, -808($fp)
label1029:
	li $t0, 4
	lw $t1, -808($fp)
	mul $t0, $t0, $t1
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	lw $t1, -804($fp)
	add $t0, $t0, $t1
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	lw $t1, 0($t0)
	sw $t1, -824($fp)
	li $t0, 33946
	sw $t0, -828($fp)
	li $t0, 0
	lw $t1, -828($fp)
	sub $t0, $t0, $t1
	sw $t0, -832($fp)
	li $t0, 0
	lw $t1, -832($fp)
	sub $t0, $t0, $t1
	sw $t0, -836($fp)
	lw $t0, -824($fp)
	lw $t1, -836($fp)
	mul $t0, $t0, $t1
	sw $t0, -840($fp)
	lw $t1, -840($fp)
	li $t2, 0
	bne $t1, $t2, label1026
	j label1027
label1026:
	lw $t0, 4($fp)
	sw $t0, -844($fp)
	li $t0, 0
	sw $t0, -848($fp)
	addi $t0, $fp, -48
	sw $t0, -852($fp)
	lw $t0, -188($fp)
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
	lw $t1, -868($fp)
	li $t2, 0
	bne $t1, $t2, label1031
	j label1030
label1030:
	li $t0, 1
	sw $t0, -848($fp)
label1031:
	lw $t0, -844($fp)
	lw $t1, -848($fp)
	sub $t0, $t0, $t1
	sw $t0, -872($fp)
	j label1025
label1027:
	j label1021
label1020:
	li $t0, 0
	sw $t0, -876($fp)
	li $t0, 21258
	sw $t0, -880($fp)
	li $t0, 22014
	sw $t0, -884($fp)
	lw $t1, -880($fp)
	lw $t2, -884($fp)
	bne $t1, $t2, label1035
	j label1036
label1035:
	li $t0, 1
	sw $t0, -876($fp)
label1036:
	lw $t0, -876($fp)
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -892($fp)
	lw $t1, -892($fp)
	li $t2, 0
	bne $t1, $t2, label1032
	j label1033
label1032:
label1037:
	li $t0, 0
	sw $t0, -896($fp)
	jal f7
	sw $v0, -900($fp)
	addi $sp, $sp, 4
	li $t0, 55742
	sw $t0, -904($fp)
	lw $t1, -900($fp)
	lw $t2, -904($fp)
	bne $t1, $t2, label1040
	j label1041
label1040:
	li $t0, 1
	sw $t0, -896($fp)
label1041:
	lw $t0, -896($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -908($fp)
	lw $t1, -908($fp)
	li $t2, 0
	bne $t1, $t2, label1038
	j label1039
label1038:
	li $t0, 0
	sw $t0, -912($fp)
	lw $t0, -176($fp)
	sw $t0, -916($fp)
	lw $t0, -188($fp)
	sw $t0, -920($fp)
	lw $t1, -916($fp)
	lw $t2, -920($fp)
	bgt $t1, $t2, label1042
	j label1044
label1044:
	lw $t0, -356($fp)
	sw $t0, -924($fp)
	lw $t1, -924($fp)
	li $t2, 0
	bne $t1, $t2, label1042
	j label1043
label1042:
	li $t0, 1
	sw $t0, -912($fp)
label1043:
	addi $sp, $sp, -4
	lw $t0, -912($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -928($fp)
	addi $sp, $sp, 8
	j label1037
label1039:
	j label1034
label1033:
	lw $t0, -356($fp)
	sw $t0, -932($fp)
label1034:
label1021:
	li $t0, 0
	sw $t0, -936($fp)
	li $t0, 31054
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -944($fp)
	addi $sp, $sp, -4
	lw $t0, -944($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -948($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -948($fp)
	sub $t0, $t0, $t1
	sw $t0, -952($fp)
	li $t0, 35109
	sw $t0, -956($fp)
	lw $t1, -952($fp)
	lw $t2, -956($fp)
	beq $t1, $t2, label1045
	j label1046
label1045:
	li $t0, 1
	sw $t0, -936($fp)
label1046:
	addi $t0, $fp, -24
	sw $t0, -960($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -980($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -1000($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -1020($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -1040($fp)
	li $t0, 4
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
	lw $t0, -176($fp)
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -188($fp)
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -200($fp)
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -1072($fp)
	li $t0, 0
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
	addi $t0, $fp, -48
	sw $t0, -1092($fp)
	li $t0, 1
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
	addi $t0, $fp, -48
	sw $t0, -1112($fp)
	li $t0, 2
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
	addi $t0, $fp, -48
	sw $t0, -1132($fp)
	li $t0, 3
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
	addi $t0, $fp, -48
	sw $t0, -1152($fp)
	li $t0, 4
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
	addi $t0, $fp, -48
	sw $t0, -1172($fp)
	li $t0, 5
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
	lw $t0, -356($fp)
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -368($fp)
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -380($fp)
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -392($fp)
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1208($fp)
	li $t0, 0
	sw $t0, -1212($fp)
	lw $t0, 4($fp)
	sw $t0, -1216($fp)
	li $t0, 0
	lw $t1, -1216($fp)
	sub $t0, $t0, $t1
	sw $t0, -1220($fp)
	lw $t1, -1220($fp)
	li $t2, 0
	bne $t1, $t2, label1050
	j label1049
label1049:
	li $t0, 1
	sw $t0, -1212($fp)
label1050:
	li $t0, 40358
	sw $t0, -1224($fp)
	lw $t0, -392($fp)
	sw $t0, -1228($fp)
	lw $t0, -1224($fp)
	lw $t1, -1228($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1232($fp)
	lw $t1, -1212($fp)
	lw $t2, -1232($fp)
	beq $t1, $t2, label1047
	j label1048
label1047:
	li $t0, 1
	sw $t0, -1208($fp)
label1048:
	lw $t0, -1208($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -1236($fp)
	lw $ra, -4($fp)
	lw $v0, -1236($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f14:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -412
	li $t0, 50775
	sw $t0, -36($fp)
	addi $t0, $fp, -32
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
	li $t0, 54362
	sw $t0, -60($fp)
	addi $t0, $fp, -32
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
	li $t0, 59347
	sw $t0, -84($fp)
	addi $t0, $fp, -32
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
	li $t0, 5918
	sw $t0, -108($fp)
	addi $t0, $fp, -32
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
	li $t0, 50472
	sw $t0, -132($fp)
	addi $t0, $fp, -32
	sw $t0, -136($fp)
	li $t0, 4
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
	li $t0, 412
	sw $t0, -156($fp)
	addi $t0, $fp, -32
	sw $t0, -160($fp)
	li $t0, 5
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
	li $t0, 9076
	sw $t0, -180($fp)
	addi $t0, $fp, -32
	sw $t0, -184($fp)
	li $t0, 6
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
	addi $t0, $fp, -32
	sw $t0, -204($fp)
	li $t0, 0
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
	lw $t0, -220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -224($fp)
	li $t0, 1
	sw $t0, -228($fp)
	li $t0, 4
	lw $t1, -228($fp)
	mul $t0, $t0, $t1
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	lw $t1, -224($fp)
	add $t0, $t0, $t1
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	lw $t1, 0($t0)
	sw $t1, -240($fp)
	lw $t0, -240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -244($fp)
	li $t0, 2
	sw $t0, -248($fp)
	li $t0, 4
	lw $t1, -248($fp)
	mul $t0, $t0, $t1
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	lw $t1, -244($fp)
	add $t0, $t0, $t1
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	lw $t1, 0($t0)
	sw $t1, -260($fp)
	lw $t0, -260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -264($fp)
	li $t0, 3
	sw $t0, -268($fp)
	li $t0, 4
	lw $t1, -268($fp)
	mul $t0, $t0, $t1
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	lw $t1, -264($fp)
	add $t0, $t0, $t1
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	lw $t1, 0($t0)
	sw $t1, -280($fp)
	lw $t0, -280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -284($fp)
	li $t0, 4
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
	lw $t0, -300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -304($fp)
	li $t0, 5
	sw $t0, -308($fp)
	li $t0, 4
	lw $t1, -308($fp)
	mul $t0, $t0, $t1
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	lw $t1, -304($fp)
	add $t0, $t0, $t1
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	lw $t1, 0($t0)
	sw $t1, -320($fp)
	lw $t0, -320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -324($fp)
	li $t0, 6
	sw $t0, -328($fp)
	li $t0, 4
	lw $t1, -328($fp)
	mul $t0, $t0, $t1
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	lw $t1, -324($fp)
	add $t0, $t0, $t1
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	lw $t1, 0($t0)
	sw $t1, -340($fp)
	lw $t0, -340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -344($fp)
	lw $t0, 8($fp)
	sw $t0, -348($fp)
	li $t0, 0
	sw $t0, -352($fp)
	li $t0, 35394
	sw $t0, -356($fp)
	lw $t0, 8($fp)
	sw $t0, -360($fp)
	lw $t1, -356($fp)
	lw $t2, -360($fp)
	beq $t1, $t2, label1054
	j label1055
label1054:
	li $t0, 1
	sw $t0, -352($fp)
label1055:
	addi $sp, $sp, -4
	lw $t0, -352($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -364($fp)
	addi $sp, $sp, 8
	lw $t0, -348($fp)
	lw $t1, -364($fp)
	mul $t0, $t0, $t1
	sw $t0, -368($fp)
	lw $t1, -368($fp)
	li $t2, 0
	bne $t1, $t2, label1051
	j label1053
label1053:
	addi $t0, $fp, -32
	sw $t0, -372($fp)
	lw $t0, 8($fp)
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
	lw $t0, 8($fp)
	sw $t0, -392($fp)
	lw $t0, -388($fp)
	lw $t1, -392($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -396($fp)
	li $t0, 0
	sw $t0, -400($fp)
	lw $t0, 4($fp)
	sw $t0, -404($fp)
	lw $t1, -404($fp)
	li $t2, 0
	bne $t1, $t2, label1057
	j label1056
label1056:
	li $t0, 1
	sw $t0, -400($fp)
label1057:
	li $t0, 9573
	sw $t0, -408($fp)
	lw $t0, -400($fp)
	lw $t1, -408($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -412($fp)
	addi $sp, $sp, -4
	lw $t0, -412($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -416($fp)
	addi $sp, $sp, 8
	lw $t1, -396($fp)
	lw $t2, -416($fp)
	bgt $t1, $t2, label1051
	j label1052
label1051:
	li $t0, 1
	sw $t0, -344($fp)
label1052:
	lw $ra, -4($fp)
	lw $v0, -344($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f15:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -36
	li $t0, 7755
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	lw $t0, -12($fp)
	sw $t0, -20($fp)
	lw $t0, -12($fp)
	sw $t0, -24($fp)
	lw $t0, -20($fp)
	lw $t1, -24($fp)
	sub $t0, $t0, $t1
	sw $t0, -28($fp)
	addi $sp, $sp, -4
	lw $t0, -28($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -32($fp)
	addi $sp, $sp, 8
	lw $t0, -12($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 7954
	sw $t0, -40($fp)
	lw $ra, -4($fp)
	lw $v0, -40($fp)
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
