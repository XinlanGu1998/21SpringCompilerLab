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
	addi $sp, $sp, -4792
	li $t0, 34548
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	li $t0, 39528
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	li $t0, 22825
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	li $t0, 57882
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	li $t0, 10551
	sw $t0, -140($fp)
	addi $t0, $fp, -44
	sw $t0, -144($fp)
	li $t0, 0
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
	li $t0, 32656
	sw $t0, -164($fp)
	addi $t0, $fp, -44
	sw $t0, -168($fp)
	li $t0, 1
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
	li $t0, 25287
	sw $t0, -188($fp)
	addi $t0, $fp, -44
	sw $t0, -192($fp)
	li $t0, 2
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
	li $t0, 40779
	sw $t0, -212($fp)
	addi $t0, $fp, -44
	sw $t0, -216($fp)
	li $t0, 3
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
	li $t0, 21334
	sw $t0, -236($fp)
	addi $t0, $fp, -44
	sw $t0, -240($fp)
	li $t0, 4
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
	li $t0, 3237
	sw $t0, -260($fp)
	addi $t0, $fp, -44
	sw $t0, -264($fp)
	li $t0, 5
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
	li $t0, 34394
	sw $t0, -284($fp)
	addi $t0, $fp, -44
	sw $t0, -288($fp)
	li $t0, 6
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
	li $t0, 30360
	sw $t0, -308($fp)
	addi $t0, $fp, -44
	sw $t0, -312($fp)
	li $t0, 7
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
	li $t0, 15632
	sw $t0, -332($fp)
	addi $t0, $fp, -44
	sw $t0, -336($fp)
	li $t0, 8
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
	li $t0, 42411
	sw $t0, -356($fp)
	addi $t0, $fp, -44
	sw $t0, -360($fp)
	li $t0, 9
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
	li $t0, 12004
	sw $t0, -380($fp)
	addi $t0, $fp, -64
	sw $t0, -384($fp)
	li $t0, 0
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
	li $t0, 46357
	sw $t0, -404($fp)
	addi $t0, $fp, -64
	sw $t0, -408($fp)
	li $t0, 1
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
	li $t0, 35229
	sw $t0, -428($fp)
	addi $t0, $fp, -64
	sw $t0, -432($fp)
	li $t0, 2
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
	li $t0, 27465
	sw $t0, -452($fp)
	addi $t0, $fp, -64
	sw $t0, -456($fp)
	li $t0, 3
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
	li $t0, 6520
	sw $t0, -476($fp)
	addi $t0, $fp, -64
	sw $t0, -480($fp)
	li $t0, 4
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
	li $t0, 50001
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	li $t0, 64797
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	li $t0, 54537
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	li $t0, 19880
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	li $t0, 20085
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -556($fp)
	li $t0, 58774
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -568($fp)
	li $t0, 28544
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -580($fp)
	li $t0, 24164
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	li $t0, 21454
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -604($fp)
	li $t0, 17088
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -616($fp)
	li $t0, 56262
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	li $t0, 50106
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	li $t0, 51636
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	li $t0, 30255
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	li $t0, 7395
	sw $t0, -668($fp)
	addi $t0, $fp, -80
	sw $t0, -672($fp)
	li $t0, 0
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -680($fp)
	lw $t0, -672($fp)
	lw $t1, -680($fp)
	add $t0, $t0, $t1
	sw $t0, -684($fp)
	lw $t0, -668($fp)
	lw $t1, -684($fp)
	sw $t0, 0($t1)
	lw $t0, -684($fp)
	lw $t1, 0($t0)
	sw $t1, -688($fp)
	li $t0, 43982
	sw $t0, -692($fp)
	addi $t0, $fp, -80
	sw $t0, -696($fp)
	li $t0, 1
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
	li $t0, 40806
	sw $t0, -716($fp)
	addi $t0, $fp, -80
	sw $t0, -720($fp)
	li $t0, 2
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
	li $t0, 40052
	sw $t0, -740($fp)
	addi $t0, $fp, -80
	sw $t0, -744($fp)
	li $t0, 3
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
	li $t0, 3733
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -772($fp)
	li $t0, 16049
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -784($fp)
	li $t0, 61386
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -796($fp)
	li $t0, 6970
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -808($fp)
	li $t0, 50444
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -820($fp)
	li $t0, 26210
	sw $t0, -824($fp)
	addi $t0, $fp, -88
	sw $t0, -828($fp)
	li $t0, 0
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
	li $t0, 22602
	sw $t0, -848($fp)
	addi $t0, $fp, -88
	sw $t0, -852($fp)
	li $t0, 1
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
	li $t0, 27319
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	sw $t0, -880($fp)
	lw $t0, -120($fp)
	sw $t0, -884($fp)
	li $t0, 3424
	sw $t0, -888($fp)
	lw $t0, -884($fp)
	lw $t1, -888($fp)
	add $t0, $t0, $t1
	sw $t0, -892($fp)
	lw $t0, -624($fp)
	sw $t0, -896($fp)
	li $t0, 38214
	sw $t0, -900($fp)
	lw $t0, -896($fp)
	lw $t1, -900($fp)
	sub $t0, $t0, $t1
	sw $t0, -904($fp)
	addi $sp, $sp, -4
	lw $t0, -892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -904($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -908($fp)
	addi $sp, $sp, 12
	lw $t1, -908($fp)
	li $t2, 0
	bne $t1, $t2, label121
	j label122
label121:
	li $t0, 0
	sw $t0, -912($fp)
	li $t0, 0
	sw $t0, -916($fp)
	lw $t0, -768($fp)
	sw $t0, -920($fp)
	lw $t1, -920($fp)
	li $t2, 0
	bne $t1, $t2, label130
	j label129
label129:
	li $t0, 1
	sw $t0, -916($fp)
label130:
	li $t0, 62548
	sw $t0, -924($fp)
	lw $t0, -916($fp)
	lw $t1, -924($fp)
	add $t0, $t0, $t1
	sw $t0, -928($fp)
	lw $t0, -516($fp)
	sw $t0, -932($fp)
	li $t0, 143
	sw $t0, -936($fp)
	lw $t0, -932($fp)
	lw $t1, -936($fp)
	mul $t0, $t0, $t1
	sw $t0, -940($fp)
	lw $t0, -928($fp)
	lw $t1, -940($fp)
	sub $t0, $t0, $t1
	sw $t0, -944($fp)
	li $t0, 0
	sw $t0, -948($fp)
	lw $t0, -816($fp)
	sw $t0, -952($fp)
	lw $t1, -952($fp)
	li $t2, 0
	bne $t1, $t2, label132
	j label131
label131:
	li $t0, 1
	sw $t0, -948($fp)
label132:
	lw $t1, -944($fp)
	lw $t2, -948($fp)
	bgt $t1, $t2, label127
	j label128
label127:
	li $t0, 1
	sw $t0, -912($fp)
label128:
	addi $t0, $fp, -80
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
	li $t0, 0
	lw $t1, -972($fp)
	sub $t0, $t0, $t1
	sw $t0, -976($fp)
	lw $t1, -912($fp)
	lw $t2, -976($fp)
	bgt $t1, $t2, label124
	j label125
label124:
	li $t0, 64940
	sw $t0, -980($fp)
	li $t0, 0
	sw $t0, -984($fp)
	lw $t0, 4($fp)
	sw $t0, -988($fp)
	lw $t0, -588($fp)
	sw $t0, -992($fp)
	lw $t1, -988($fp)
	lw $t2, -992($fp)
	blt $t1, $t2, label136
	j label137
label136:
	li $t0, 1
	sw $t0, -984($fp)
label137:
	li $t0, 64481
	sw $t0, -996($fp)
	addi $sp, $sp, -4
	lw $t0, -984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -996($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1000($fp)
	addi $sp, $sp, 12
	li $t0, 1358
	sw $t0, -1004($fp)
	li $t0, 0
	lw $t1, -1004($fp)
	sub $t0, $t0, $t1
	sw $t0, -1008($fp)
	lw $t0, -1000($fp)
	lw $t1, -1008($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1012($fp)
	lw $t0, -980($fp)
	lw $t1, -1012($fp)
	add $t0, $t0, $t1
	sw $t0, -1016($fp)
	lw $t1, -1016($fp)
	li $t2, 0
	bne $t1, $t2, label133
	j label134
label133:
	li $t0, 19490
	sw $t0, -1064($fp)
	addi $t0, $fp, -1056
	sw $t0, -1068($fp)
	li $t0, 0
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
	li $t0, 57719
	sw $t0, -1088($fp)
	addi $t0, $fp, -1056
	sw $t0, -1092($fp)
	li $t0, 1
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
	li $t0, 29902
	sw $t0, -1112($fp)
	addi $t0, $fp, -1056
	sw $t0, -1116($fp)
	li $t0, 2
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
	li $t0, 43654
	sw $t0, -1136($fp)
	addi $t0, $fp, -1056
	sw $t0, -1140($fp)
	li $t0, 3
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
	li $t0, 13637
	sw $t0, -1160($fp)
	addi $t0, $fp, -1056
	sw $t0, -1164($fp)
	li $t0, 4
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
	li $t0, 46990
	sw $t0, -1184($fp)
	addi $t0, $fp, -1056
	sw $t0, -1188($fp)
	li $t0, 5
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
	li $t0, 34380
	sw $t0, -1208($fp)
	addi $t0, $fp, -1056
	sw $t0, -1212($fp)
	li $t0, 6
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
	li $t0, 63743
	sw $t0, -1232($fp)
	addi $t0, $fp, -1056
	sw $t0, -1236($fp)
	li $t0, 7
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
	li $t0, 33091
	sw $t0, -1256($fp)
	addi $t0, $fp, -1056
	sw $t0, -1260($fp)
	li $t0, 8
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
	li $t0, 64635
	sw $t0, -1280($fp)
	addi $t0, $fp, -1056
	sw $t0, -1284($fp)
	li $t0, 9
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1292($fp)
	lw $t0, -1284($fp)
	lw $t1, -1292($fp)
	add $t0, $t0, $t1
	sw $t0, -1296($fp)
	lw $t0, -1280($fp)
	lw $t1, -1296($fp)
	sw $t0, 0($t1)
	lw $t0, -1296($fp)
	lw $t1, 0($t0)
	sw $t1, -1300($fp)
	li $t0, 5603
	sw $t0, -1304($fp)
	addi $t0, $fp, -1060
	sw $t0, -1308($fp)
	li $t0, 0
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1316($fp)
	lw $t0, -1308($fp)
	lw $t1, -1316($fp)
	add $t0, $t0, $t1
	sw $t0, -1320($fp)
	lw $t0, -1304($fp)
	lw $t1, -1320($fp)
	sw $t0, 0($t1)
	lw $t0, -1320($fp)
	lw $t1, 0($t0)
	sw $t1, -1324($fp)
	li $t0, 0
	sw $t0, -1328($fp)
	lw $t0, -660($fp)
	sw $t0, -1332($fp)
	li $t0, 39906
	sw $t0, -1336($fp)
	lw $t0, -816($fp)
	sw $t0, -1340($fp)
	lw $t0, -1336($fp)
	lw $t1, -1340($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1344($fp)
	li $t0, 0
	sw $t0, -1348($fp)
	lw $t0, -552($fp)
	sw $t0, -1352($fp)
	lw $t1, -1352($fp)
	li $t2, 0
	bne $t1, $t2, label143
	j label142
label143:
	lw $t0, -780($fp)
	sw $t0, -1356($fp)
	lw $t1, -1356($fp)
	li $t2, 0
	bne $t1, $t2, label140
	j label142
label142:
	li $t0, 11537
	sw $t0, -1360($fp)
	lw $t1, -1360($fp)
	li $t2, 0
	bne $t1, $t2, label140
	j label141
label140:
	li $t0, 1
	sw $t0, -1348($fp)
label141:
	addi $sp, $sp, -4
	lw $t0, -1344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1348($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1364($fp)
	addi $sp, $sp, 12
	lw $t1, -1332($fp)
	lw $t2, -1364($fp)
	ble $t1, $t2, label138
	j label139
label138:
	li $t0, 1
	sw $t0, -1328($fp)
label139:
	lw $t0, -1328($fp)
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -1368($fp)
	addi $t0, $fp, -44
	sw $t0, -1372($fp)
	li $t0, 3
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
	li $t0, 41505
	sw $t0, -1392($fp)
	lw $t0, -1388($fp)
	lw $t1, -1392($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1396($fp)
	lw $t0, -660($fp)
	sw $t0, -1400($fp)
	li $t0, 45655
	sw $t0, -1404($fp)
	lw $t0, -1400($fp)
	lw $t1, -1404($fp)
	add $t0, $t0, $t1
	sw $t0, -1408($fp)
	addi $sp, $sp, -4
	lw $t0, -1396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1408($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1412($fp)
	addi $sp, $sp, 12
	li $t0, 22241
	sw $t0, -1416($fp)
	lw $t0, -1412($fp)
	lw $t1, -1416($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1420($fp)
	li $t0, 0
	sw $t0, -1424($fp)
	lw $t0, -552($fp)
	sw $t0, -1428($fp)
	li $t0, 0
	lw $t1, -1428($fp)
	sub $t0, $t0, $t1
	sw $t0, -1432($fp)
	lw $t1, -1432($fp)
	li $t2, 0
	bne $t1, $t2, label145
	j label144
label144:
	li $t0, 1
	sw $t0, -1424($fp)
label145:
	li $t0, 0
	sw $t0, -1436($fp)
	li $t0, 0
	sw $t0, -1440($fp)
	lw $t0, -624($fp)
	sw $t0, -1444($fp)
	li $t0, 40863
	sw $t0, -1448($fp)
	lw $t1, -1444($fp)
	lw $t2, -1448($fp)
	bge $t1, $t2, label148
	j label149
label148:
	li $t0, 1
	sw $t0, -1440($fp)
label149:
	li $t0, 2180
	sw $t0, -1452($fp)
	lw $t1, -1440($fp)
	lw $t2, -1452($fp)
	bne $t1, $t2, label146
	j label147
label146:
	li $t0, 1
	sw $t0, -1436($fp)
label147:
	addi $sp, $sp, -4
	lw $t0, -1424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1436($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1456($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -1456($fp)
	sub $t0, $t0, $t1
	sw $t0, -1460($fp)
	li $t0, 0
	lw $t1, -1460($fp)
	sub $t0, $t0, $t1
	sw $t0, -1464($fp)
	lw $t0, -1420($fp)
	lw $t1, -1464($fp)
	mul $t0, $t0, $t1
	sw $t0, -1468($fp)
	li $t0, 0
	sw $t0, -1472($fp)
	li $t0, 0
	sw $t0, -1476($fp)
	li $t0, 44844
	sw $t0, -1480($fp)
	li $t0, 2647
	sw $t0, -1484($fp)
	lw $t1, -1480($fp)
	lw $t2, -1484($fp)
	bne $t1, $t2, label152
	j label153
label152:
	li $t0, 1
	sw $t0, -1476($fp)
label153:
	addi $t0, $fp, -80
	sw $t0, -1488($fp)
	li $t0, 0
	sw $t0, -1492($fp)
	li $t0, 4
	lw $t1, -1492($fp)
	mul $t0, $t0, $t1
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	lw $t1, -1488($fp)
	add $t0, $t0, $t1
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	lw $t1, 0($t0)
	sw $t1, -1504($fp)
	addi $t0, $fp, -80
	sw $t0, -1508($fp)
	lw $t0, -804($fp)
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
	lw $t0, -1504($fp)
	lw $t1, -1524($fp)
	mul $t0, $t0, $t1
	sw $t0, -1528($fp)
	li $t0, 0
	lw $t1, -1528($fp)
	sub $t0, $t0, $t1
	sw $t0, -1532($fp)
	lw $t1, -1476($fp)
	lw $t2, -1532($fp)
	beq $t1, $t2, label150
	j label151
label150:
	li $t0, 1
	sw $t0, -1472($fp)
label151:
	li $t0, 0
	sw $t0, -1536($fp)
	li $t0, 65195
	sw $t0, -1540($fp)
	li $t0, 40538
	sw $t0, -1544($fp)
	li $t0, 0
	sw $t0, -1548($fp)
	lw $t0, -804($fp)
	sw $t0, -1552($fp)
	lw $t1, -1552($fp)
	li $t2, 0
	bne $t1, $t2, label157
	j label156
label156:
	li $t0, 1
	sw $t0, -1548($fp)
label157:
	lw $t0, -1544($fp)
	lw $t1, -1548($fp)
	sub $t0, $t0, $t1
	sw $t0, -1556($fp)
	lw $t1, -1540($fp)
	lw $t2, -1556($fp)
	blt $t1, $t2, label154
	j label155
label154:
	li $t0, 1
	sw $t0, -1536($fp)
label155:
label158:
	addi $t0, $fp, -1060
	sw $t0, -1560($fp)
	li $t0, 0
	sw $t0, -1564($fp)
	li $t0, 58212
	sw $t0, -1568($fp)
	lw $t0, -504($fp)
	sw $t0, -1572($fp)
	lw $t0, -1568($fp)
	lw $t1, -1572($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1576($fp)
	lw $t1, -1576($fp)
	li $t2, 0
	bne $t1, $t2, label163
	j label162
label163:
	li $t0, 46673
	sw $t0, -1580($fp)
	lw $t1, -1580($fp)
	li $t2, 0
	bne $t1, $t2, label161
	j label162
label161:
	li $t0, 1
	sw $t0, -1564($fp)
label162:
	li $t0, 0
	sw $t0, -1584($fp)
	addi $t0, $fp, -1056
	sw $t0, -1588($fp)
	lw $t0, -624($fp)
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
	bne $t1, $t2, label165
	j label164
label164:
	li $t0, 1
	sw $t0, -1584($fp)
label165:
	addi $sp, $sp, -4
	lw $t0, -1564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1584($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1608($fp)
	addi $sp, $sp, 12
	li $t0, 4
	lw $t1, -1608($fp)
	mul $t0, $t0, $t1
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	lw $t1, -1560($fp)
	add $t0, $t0, $t1
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	lw $t1, 0($t0)
	sw $t1, -1620($fp)
	lw $t0, -1620($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -1624($fp)
	lw $t1, -1624($fp)
	li $t2, 0
	bne $t1, $t2, label159
	j label160
label159:
	addi $t0, $fp, -44
	sw $t0, -1628($fp)
	lw $t0, -804($fp)
	sw $t0, -1632($fp)
	li $t0, 39942
	sw $t0, -1636($fp)
	lw $t0, -1632($fp)
	lw $t1, -1636($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1640($fp)
	lw $t0, -660($fp)
	sw $t0, -1644($fp)
	lw $t0, -1640($fp)
	lw $t1, -1644($fp)
	mul $t0, $t0, $t1
	sw $t0, -1648($fp)
	lw $t0, -600($fp)
	sw $t0, -1652($fp)
	lw $t0, -636($fp)
	sw $t0, -1656($fp)
	lw $t0, -1652($fp)
	lw $t1, -1656($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1660($fp)
	lw $t0, -1648($fp)
	lw $t1, -1660($fp)
	sub $t0, $t0, $t1
	sw $t0, -1664($fp)
	li $t0, 4
	lw $t1, -1664($fp)
	mul $t0, $t0, $t1
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	lw $t1, -1628($fp)
	add $t0, $t0, $t1
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	lw $t1, 0($t0)
	sw $t1, -1676($fp)
	lw $ra, -4($fp)
	lw $v0, -1676($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label158
label160:
	li $t0, 57157
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	sw $t0, -1720($fp)
	li $t0, 48031
	sw $t0, -1724($fp)
	addi $t0, $fp, -1708
	sw $t0, -1728($fp)
	li $t0, 0
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1736($fp)
	lw $t0, -1728($fp)
	lw $t1, -1736($fp)
	add $t0, $t0, $t1
	sw $t0, -1740($fp)
	lw $t0, -1724($fp)
	lw $t1, -1740($fp)
	sw $t0, 0($t1)
	lw $t0, -1740($fp)
	lw $t1, 0($t0)
	sw $t1, -1744($fp)
	li $t0, 59432
	sw $t0, -1748($fp)
	addi $t0, $fp, -1708
	sw $t0, -1752($fp)
	li $t0, 1
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1760($fp)
	lw $t0, -1752($fp)
	lw $t1, -1760($fp)
	add $t0, $t0, $t1
	sw $t0, -1764($fp)
	lw $t0, -1748($fp)
	lw $t1, -1764($fp)
	sw $t0, 0($t1)
	lw $t0, -1764($fp)
	lw $t1, 0($t0)
	sw $t1, -1768($fp)
	li $t0, 49340
	sw $t0, -1772($fp)
	addi $t0, $fp, -1708
	sw $t0, -1776($fp)
	li $t0, 2
	sw $t0, -1780($fp)
	lw $t0, -1780($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1784($fp)
	lw $t0, -1776($fp)
	lw $t1, -1784($fp)
	add $t0, $t0, $t1
	sw $t0, -1788($fp)
	lw $t0, -1772($fp)
	lw $t1, -1788($fp)
	sw $t0, 0($t1)
	lw $t0, -1788($fp)
	lw $t1, 0($t0)
	sw $t1, -1792($fp)
	li $t0, 12397
	sw $t0, -1796($fp)
	addi $t0, $fp, -1708
	sw $t0, -1800($fp)
	li $t0, 3
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1808($fp)
	lw $t0, -1800($fp)
	lw $t1, -1808($fp)
	add $t0, $t0, $t1
	sw $t0, -1812($fp)
	lw $t0, -1796($fp)
	lw $t1, -1812($fp)
	sw $t0, 0($t1)
	lw $t0, -1812($fp)
	lw $t1, 0($t0)
	sw $t1, -1816($fp)
	li $t0, 37550
	sw $t0, -1820($fp)
	addi $t0, $fp, -1708
	sw $t0, -1824($fp)
	li $t0, 4
	sw $t0, -1828($fp)
	lw $t0, -1828($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1832($fp)
	lw $t0, -1824($fp)
	lw $t1, -1832($fp)
	add $t0, $t0, $t1
	sw $t0, -1836($fp)
	lw $t0, -1820($fp)
	lw $t1, -1836($fp)
	sw $t0, 0($t1)
	lw $t0, -1836($fp)
	lw $t1, 0($t0)
	sw $t1, -1840($fp)
	li $t0, 62977
	sw $t0, -1844($fp)
	addi $t0, $fp, -1708
	sw $t0, -1848($fp)
	li $t0, 5
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
	li $t0, 59387
	sw $t0, -1868($fp)
	addi $t0, $fp, -1708
	sw $t0, -1872($fp)
	li $t0, 6
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1880($fp)
	lw $t0, -1872($fp)
	lw $t1, -1880($fp)
	add $t0, $t0, $t1
	sw $t0, -1884($fp)
	lw $t0, -1868($fp)
	lw $t1, -1884($fp)
	sw $t0, 0($t1)
	lw $t0, -1884($fp)
	lw $t1, 0($t0)
	sw $t1, -1888($fp)
	li $t0, 6395
	sw $t0, -1892($fp)
	addi $t0, $fp, -1708
	sw $t0, -1896($fp)
	li $t0, 7
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
	li $t0, 0
	sw $t0, -1916($fp)
	li $t0, 0
	sw $t0, -1920($fp)
	li $t0, 61185
	sw $t0, -1924($fp)
	lw $t1, -1924($fp)
	li $t2, 0
	bne $t1, $t2, label170
	j label169
label169:
	li $t0, 1
	sw $t0, -1920($fp)
label170:
	li $t0, 0
	lw $t1, -1920($fp)
	sub $t0, $t0, $t1
	sw $t0, -1928($fp)
	lw $t1, -1928($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label167
label168:
	li $t0, 26942
	sw $t0, -1932($fp)
	lw $t1, -1932($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label167
label166:
	li $t0, 1
	sw $t0, -1916($fp)
label167:
	li $t0, 0
	sw $t0, -1936($fp)
	li $t0, 5494
	sw $t0, -1940($fp)
	lw $t1, -1940($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label171
label171:
	li $t0, 1
	sw $t0, -1936($fp)
label172:
	li $t0, 0
	lw $t1, -1936($fp)
	sub $t0, $t0, $t1
	sw $t0, -1944($fp)
	li $t0, 1252
	sw $t0, -1948($fp)
	lw $t0, -1944($fp)
	lw $t1, -1948($fp)
	add $t0, $t0, $t1
	sw $t0, -1952($fp)
	li $t0, 0
	sw $t0, -1956($fp)
	lw $t0, -120($fp)
	sw $t0, -1960($fp)
	lw $t1, -1960($fp)
	li $t2, 0
	bne $t1, $t2, label174
	j label173
label173:
	li $t0, 1
	sw $t0, -1956($fp)
label174:
	li $t0, 38480
	sw $t0, -1964($fp)
	lw $t0, -1956($fp)
	lw $t1, -1964($fp)
	mul $t0, $t0, $t1
	sw $t0, -1968($fp)
	li $t0, 45400
	sw $t0, -1972($fp)
	li $t0, 0
	lw $t1, -1972($fp)
	sub $t0, $t0, $t1
	sw $t0, -1976($fp)
	lw $t0, -1968($fp)
	lw $t1, -1976($fp)
	mul $t0, $t0, $t1
	sw $t0, -1980($fp)
	lw $t0, -1952($fp)
	lw $t1, -1980($fp)
	add $t0, $t0, $t1
	sw $t0, -1984($fp)
	li $t0, 0
	sw $t0, -1988($fp)
	addi $t0, $fp, -1708
	sw $t0, -1992($fp)
	li $t0, 4
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
	lw $t0, -816($fp)
	sw $t0, -2012($fp)
	li $t0, 0
	lw $t1, -2012($fp)
	sub $t0, $t0, $t1
	sw $t0, -2016($fp)
	lw $t0, -2008($fp)
	lw $t1, -2016($fp)
	add $t0, $t0, $t1
	sw $t0, -2020($fp)
	lw $t1, -2020($fp)
	li $t2, 0
	bne $t1, $t2, label177
	j label176
label177:
	addi $t0, $fp, -80
	sw $t0, -2024($fp)
	li $t0, 0
	sw $t0, -2028($fp)
	li $t0, 4
	lw $t1, -2028($fp)
	mul $t0, $t0, $t1
	sw $t0, -2032($fp)
	lw $t0, -2032($fp)
	lw $t1, -2024($fp)
	add $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	lw $t1, 0($t0)
	sw $t1, -2040($fp)
	lw $t0, -552($fp)
	sw $t0, -2044($fp)
	lw $t0, -2040($fp)
	lw $t1, -2044($fp)
	add $t0, $t0, $t1
	sw $t0, -2048($fp)
	li $t0, 0
	sw $t0, -2052($fp)
	lw $t0, -1716($fp)
	sw $t0, -2056($fp)
	lw $t1, -2056($fp)
	li $t2, 0
	bne $t1, $t2, label179
	j label178
label178:
	li $t0, 1
	sw $t0, -2052($fp)
label179:
	lw $t1, -2048($fp)
	lw $t2, -2052($fp)
	bge $t1, $t2, label175
	j label176
label175:
	li $t0, 1
	sw $t0, -1988($fp)
label176:
	li $t0, 0
	sw $t0, -2060($fp)
	li $t0, 11147
	sw $t0, -2064($fp)
	li $t0, 0
	sw $t0, -2068($fp)
	lw $t0, 4($fp)
	sw $t0, -2072($fp)
	li $t0, 25056
	sw $t0, -2076($fp)
	lw $t0, -2072($fp)
	lw $t1, -2076($fp)
	mul $t0, $t0, $t1
	sw $t0, -2080($fp)
	lw $t0, -768($fp)
	sw $t0, -2084($fp)
	lw $t1, -2080($fp)
	lw $t2, -2084($fp)
	beq $t1, $t2, label182
	j label183
label182:
	li $t0, 1
	sw $t0, -2068($fp)
label183:
	li $t0, 0
	sw $t0, -2088($fp)
	lw $t0, -576($fp)
	sw $t0, -2092($fp)
	lw $t1, -2092($fp)
	li $t2, 0
	bne $t1, $t2, label184
	j label186
label186:
	lw $t0, -540($fp)
	sw $t0, -2096($fp)
	lw $t1, -2096($fp)
	li $t2, 0
	bne $t1, $t2, label184
	j label185
label184:
	li $t0, 1
	sw $t0, -2088($fp)
label185:
	addi $sp, $sp, -4
	lw $t0, -2068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2088($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2100($fp)
	addi $sp, $sp, 12
	lw $t1, -2064($fp)
	lw $t2, -2100($fp)
	beq $t1, $t2, label180
	j label181
label180:
	li $t0, 1
	sw $t0, -2060($fp)
label181:
	lw $t0, -2060($fp)
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -2104($fp)
	li $t0, 55300
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	sw $t0, -2132($fp)
	lw $t0, -2132($fp)
	sw $t0, -2136($fp)
	li $t0, 13794
	sw $t0, -2140($fp)
	addi $t0, $fp, -2124
	sw $t0, -2144($fp)
	li $t0, 0
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
	li $t0, 65451
	sw $t0, -2164($fp)
	addi $t0, $fp, -2124
	sw $t0, -2168($fp)
	li $t0, 1
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
	li $t0, 38032
	sw $t0, -2188($fp)
	addi $t0, $fp, -2124
	sw $t0, -2192($fp)
	li $t0, 2
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
	li $t0, 13454
	sw $t0, -2212($fp)
	addi $t0, $fp, -2124
	sw $t0, -2216($fp)
	li $t0, 3
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
	li $t0, 40453
	sw $t0, -2236($fp)
	addi $t0, $fp, -2124
	sw $t0, -2240($fp)
	li $t0, 4
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2248($fp)
	lw $t0, -2240($fp)
	lw $t1, -2248($fp)
	add $t0, $t0, $t1
	sw $t0, -2252($fp)
	lw $t0, -2236($fp)
	lw $t1, -2252($fp)
	sw $t0, 0($t1)
	lw $t0, -2252($fp)
	lw $t1, 0($t0)
	sw $t1, -2256($fp)
	lw $t0, -588($fp)
	sw $t0, -2260($fp)
	lw $t1, -2260($fp)
	li $t2, 0
	bne $t1, $t2, label187
	j label188
label187:
	li $t0, 0
	sw $t0, -2264($fp)
	li $t0, 30708
	sw $t0, -2268($fp)
	lw $t1, -2268($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label190
label190:
	li $t0, 1
	sw $t0, -2264($fp)
label191:
	j label189
label188:
	li $t0, 0
	sw $t0, -2272($fp)
	lw $t0, -624($fp)
	sw $t0, -2276($fp)
	li $t0, 0
	sw $t0, -2280($fp)
	li $t0, 0
	sw $t0, -2284($fp)
	li $t0, 0
	sw $t0, -2288($fp)
	li $t0, 14859
	sw $t0, -2292($fp)
	lw $t1, -2292($fp)
	li $t2, 0
	bne $t1, $t2, label199
	j label198
label198:
	li $t0, 1
	sw $t0, -2288($fp)
label199:
	li $t0, 22329
	sw $t0, -2296($fp)
	lw $t1, -2288($fp)
	lw $t2, -2296($fp)
	beq $t1, $t2, label196
	j label197
label196:
	li $t0, 1
	sw $t0, -2284($fp)
label197:
	li $t0, 0
	sw $t0, -2300($fp)
	li $t0, 60127
	sw $t0, -2304($fp)
	lw $t1, -2304($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label202
label203:
	lw $t0, -2132($fp)
	sw $t0, -2308($fp)
	lw $t1, -2308($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label202
label202:
	lw $t0, -780($fp)
	sw $t0, -2312($fp)
	lw $t1, -2312($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label201
label200:
	li $t0, 1
	sw $t0, -2300($fp)
label201:
	addi $sp, $sp, -4
	lw $t0, -2284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2300($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2316($fp)
	addi $sp, $sp, 12
	lw $t1, -2316($fp)
	li $t2, 0
	bne $t1, $t2, label195
	j label194
label194:
	li $t0, 1
	sw $t0, -2280($fp)
label195:
	lw $t1, -2276($fp)
	lw $t2, -2280($fp)
	bgt $t1, $t2, label192
	j label193
label192:
	li $t0, 1
	sw $t0, -2272($fp)
label193:
label189:
label204:
	lw $t0, -504($fp)
	sw $t0, -2320($fp)
	lw $t1, -2320($fp)
	li $t2, 0
	bne $t1, $t2, label205
	j label206
label205:
	li $t0, 0
	sw $t0, -2324($fp)
	li $t0, 6133
	sw $t0, -2328($fp)
	li $t0, 55019
	sw $t0, -2332($fp)
	lw $t0, -2328($fp)
	lw $t1, -2332($fp)
	mul $t0, $t0, $t1
	sw $t0, -2336($fp)
	lw $t0, -804($fp)
	sw $t0, -2340($fp)
	lw $t0, -2336($fp)
	lw $t1, -2340($fp)
	sub $t0, $t0, $t1
	sw $t0, -2344($fp)
	li $t0, 0
	sw $t0, -2348($fp)
	li $t0, 42622
	sw $t0, -2352($fp)
	lw $t0, -552($fp)
	sw $t0, -2356($fp)
	lw $t0, -2352($fp)
	lw $t1, -2356($fp)
	add $t0, $t0, $t1
	sw $t0, -2360($fp)
	li $t0, 8756
	sw $t0, -2364($fp)
	lw $t1, -2360($fp)
	lw $t2, -2364($fp)
	bge $t1, $t2, label209
	j label210
label209:
	li $t0, 1
	sw $t0, -2348($fp)
label210:
	addi $sp, $sp, -4
	lw $t0, -2344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2348($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2368($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -2368($fp)
	sub $t0, $t0, $t1
	sw $t0, -2372($fp)
	addi $t0, $fp, -2124
	sw $t0, -2376($fp)
	lw $t0, -564($fp)
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
	lw $t0, -96($fp)
	sw $t0, -2396($fp)
	lw $t0, -2392($fp)
	lw $t1, -2396($fp)
	add $t0, $t0, $t1
	sw $t0, -2400($fp)
	lw $t1, -2372($fp)
	lw $t2, -2400($fp)
	bge $t1, $t2, label207
	j label208
label207:
	li $t0, 1
	sw $t0, -2324($fp)
label208:
	j label204
label206:
	li $t0, 46306
	sw $t0, -2416($fp)
	addi $t0, $fp, -2412
	sw $t0, -2420($fp)
	li $t0, 0
	sw $t0, -2424($fp)
	lw $t0, -2424($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2428($fp)
	lw $t0, -2420($fp)
	lw $t1, -2428($fp)
	add $t0, $t0, $t1
	sw $t0, -2432($fp)
	lw $t0, -2416($fp)
	lw $t1, -2432($fp)
	sw $t0, 0($t1)
	lw $t0, -2432($fp)
	lw $t1, 0($t0)
	sw $t1, -2436($fp)
	li $t0, 3575
	sw $t0, -2440($fp)
	addi $t0, $fp, -2412
	sw $t0, -2444($fp)
	li $t0, 1
	sw $t0, -2448($fp)
	lw $t0, -2448($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2452($fp)
	lw $t0, -2444($fp)
	lw $t1, -2452($fp)
	add $t0, $t0, $t1
	sw $t0, -2456($fp)
	lw $t0, -2440($fp)
	lw $t1, -2456($fp)
	sw $t0, 0($t1)
	lw $t0, -2456($fp)
	lw $t1, 0($t0)
	sw $t1, -2460($fp)
	li $t0, 48870
	sw $t0, -2464($fp)
	addi $t0, $fp, -2412
	sw $t0, -2468($fp)
	li $t0, 2
	sw $t0, -2472($fp)
	lw $t0, -2472($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2476($fp)
	lw $t0, -2468($fp)
	lw $t1, -2476($fp)
	add $t0, $t0, $t1
	sw $t0, -2480($fp)
	lw $t0, -2464($fp)
	lw $t1, -2480($fp)
	sw $t0, 0($t1)
	lw $t0, -2480($fp)
	lw $t1, 0($t0)
	sw $t1, -2484($fp)
	li $t0, 0
	sw $t0, -2488($fp)
	lw $t0, -2132($fp)
	sw $t0, -2492($fp)
	addi $t0, $fp, -2412
	sw $t0, -2496($fp)
	lw $t0, -504($fp)
	sw $t0, -2500($fp)
	li $t0, 52701
	sw $t0, -2504($fp)
	lw $t0, -2500($fp)
	lw $t1, -2504($fp)
	add $t0, $t0, $t1
	sw $t0, -2508($fp)
	li $t0, 4
	lw $t1, -2508($fp)
	mul $t0, $t0, $t1
	sw $t0, -2512($fp)
	lw $t0, -2512($fp)
	lw $t1, -2496($fp)
	add $t0, $t0, $t1
	sw $t0, -2516($fp)
	lw $t0, -2516($fp)
	lw $t1, 0($t0)
	sw $t1, -2520($fp)
	lw $t1, -2492($fp)
	lw $t2, -2520($fp)
	bge $t1, $t2, label211
	j label212
label211:
	li $t0, 1
	sw $t0, -2488($fp)
label212:
	j label135
label134:
	li $t0, 0
	sw $t0, -2524($fp)
	li $t0, 0
	sw $t0, -2528($fp)
	li $t0, 476
	sw $t0, -2532($fp)
	li $t0, 48757
	sw $t0, -2536($fp)
	lw $t0, -2532($fp)
	lw $t1, -2536($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2540($fp)
	lw $t0, -576($fp)
	sw $t0, -2544($fp)
	lw $t1, -2540($fp)
	lw $t2, -2544($fp)
	bne $t1, $t2, label215
	j label216
label215:
	li $t0, 1
	sw $t0, -2528($fp)
label216:
	li $t0, 64760
	sw $t0, -2548($fp)
	li $t0, 10277
	sw $t0, -2552($fp)
	lw $t0, -2548($fp)
	lw $t1, -2552($fp)
	mul $t0, $t0, $t1
	sw $t0, -2556($fp)
	li $t0, 58196
	sw $t0, -2560($fp)
	lw $t0, -2556($fp)
	lw $t1, -2560($fp)
	sub $t0, $t0, $t1
	sw $t0, -2564($fp)
	addi $sp, $sp, -4
	lw $t0, -2528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2564($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2568($fp)
	addi $sp, $sp, 12
	li $t0, 38060
	sw $t0, -2572($fp)
	li $t0, 47383
	sw $t0, -2576($fp)
	lw $t0, -2572($fp)
	lw $t1, -2576($fp)
	sub $t0, $t0, $t1
	sw $t0, -2580($fp)
	lw $t1, -2568($fp)
	lw $t2, -2580($fp)
	bne $t1, $t2, label213
	j label214
label213:
	li $t0, 1
	sw $t0, -2524($fp)
label214:
	lw $t0, -2524($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -2584($fp)
	lw $ra, -4($fp)
	lw $v0, -2584($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label135:
label125:
label122:
label217:
	addi $t0, $fp, -64
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
	li $t0, 0
	lw $t1, -2604($fp)
	sub $t0, $t0, $t1
	sw $t0, -2608($fp)
	lw $t1, -2608($fp)
	li $t2, 0
	bne $t1, $t2, label218
	j label219
label218:
	li $t0, 0
	sw $t0, -2612($fp)
	lw $t0, -132($fp)
	sw $t0, -2616($fp)
	lw $t1, -2616($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label223
label223:
	lw $t0, -120($fp)
	sw $t0, -2620($fp)
	lw $t1, -2620($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label222
label222:
	lw $t0, -624($fp)
	sw $t0, -2624($fp)
	lw $t1, -2624($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label221
label220:
	li $t0, 1
	sw $t0, -2612($fp)
label221:
	lw $t0, -96($fp)
	sw $t0, -2628($fp)
	lw $t0, -624($fp)
	sw $t0, -2632($fp)
	lw $t0, -2628($fp)
	lw $t1, -2632($fp)
	mul $t0, $t0, $t1
	sw $t0, -2636($fp)
	li $t0, 4723
	sw $t0, -2640($fp)
	lw $t0, -2636($fp)
	lw $t1, -2640($fp)
	add $t0, $t0, $t1
	sw $t0, -2644($fp)
	addi $t0, $fp, -88
	sw $t0, -2648($fp)
	lw $t0, -528($fp)
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
	addi $sp, $sp, -4
	lw $t0, -2644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2664($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2668($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -2612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2668($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2672($fp)
	addi $sp, $sp, 12
	lw $ra, -4($fp)
	lw $v0, -2672($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label217
label219:
	li $t0, 47428
	sw $t0, -2716($fp)
	lw $t0, -2716($fp)
	sw $t0, -2720($fp)
	lw $t0, -2720($fp)
	sw $t0, -2724($fp)
	li $t0, 19492
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	sw $t0, -2732($fp)
	lw $t0, -2732($fp)
	sw $t0, -2736($fp)
	li $t0, 29780
	sw $t0, -2740($fp)
	addi $t0, $fp, -2712
	sw $t0, -2744($fp)
	li $t0, 0
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
	li $t0, 37193
	sw $t0, -2764($fp)
	addi $t0, $fp, -2712
	sw $t0, -2768($fp)
	li $t0, 1
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
	li $t0, 33286
	sw $t0, -2788($fp)
	addi $t0, $fp, -2712
	sw $t0, -2792($fp)
	li $t0, 2
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
	li $t0, 29695
	sw $t0, -2812($fp)
	addi $t0, $fp, -2712
	sw $t0, -2816($fp)
	li $t0, 3
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
	li $t0, 9689
	sw $t0, -2836($fp)
	addi $t0, $fp, -2712
	sw $t0, -2840($fp)
	li $t0, 4
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
	li $t0, 46740
	sw $t0, -2860($fp)
	addi $t0, $fp, -2712
	sw $t0, -2864($fp)
	li $t0, 5
	sw $t0, -2868($fp)
	lw $t0, -2868($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2872($fp)
	lw $t0, -2864($fp)
	lw $t1, -2872($fp)
	add $t0, $t0, $t1
	sw $t0, -2876($fp)
	lw $t0, -2860($fp)
	lw $t1, -2876($fp)
	sw $t0, 0($t1)
	lw $t0, -2876($fp)
	lw $t1, 0($t0)
	sw $t1, -2880($fp)
	li $t0, 4612
	sw $t0, -2884($fp)
	addi $t0, $fp, -2712
	sw $t0, -2888($fp)
	li $t0, 6
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2896($fp)
	lw $t0, -2888($fp)
	lw $t1, -2896($fp)
	add $t0, $t0, $t1
	sw $t0, -2900($fp)
	lw $t0, -2884($fp)
	lw $t1, -2900($fp)
	sw $t0, 0($t1)
	lw $t0, -2900($fp)
	lw $t1, 0($t0)
	sw $t1, -2904($fp)
	li $t0, 40398
	sw $t0, -2908($fp)
	addi $t0, $fp, -2712
	sw $t0, -2912($fp)
	li $t0, 7
	sw $t0, -2916($fp)
	lw $t0, -2916($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2920($fp)
	lw $t0, -2912($fp)
	lw $t1, -2920($fp)
	add $t0, $t0, $t1
	sw $t0, -2924($fp)
	lw $t0, -2908($fp)
	lw $t1, -2924($fp)
	sw $t0, 0($t1)
	lw $t0, -2924($fp)
	lw $t1, 0($t0)
	sw $t1, -2928($fp)
	li $t0, 41331
	sw $t0, -2932($fp)
	addi $t0, $fp, -2712
	sw $t0, -2936($fp)
	li $t0, 8
	sw $t0, -2940($fp)
	lw $t0, -2940($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2944($fp)
	lw $t0, -2936($fp)
	lw $t1, -2944($fp)
	add $t0, $t0, $t1
	sw $t0, -2948($fp)
	lw $t0, -2932($fp)
	lw $t1, -2948($fp)
	sw $t0, 0($t1)
	lw $t0, -2948($fp)
	lw $t1, 0($t0)
	sw $t1, -2952($fp)
	li $t0, 19471
	sw $t0, -2956($fp)
	addi $t0, $fp, -2712
	sw $t0, -2960($fp)
	li $t0, 9
	sw $t0, -2964($fp)
	lw $t0, -2964($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2968($fp)
	lw $t0, -2960($fp)
	lw $t1, -2968($fp)
	add $t0, $t0, $t1
	sw $t0, -2972($fp)
	lw $t0, -2956($fp)
	lw $t1, -2972($fp)
	sw $t0, 0($t1)
	lw $t0, -2972($fp)
	lw $t1, 0($t0)
	sw $t1, -2976($fp)
	li $t0, 62727
	sw $t0, -2980($fp)
	lw $t0, -2980($fp)
	sw $t0, -2984($fp)
	lw $t0, -2984($fp)
	sw $t0, -2988($fp)
	li $t0, 18417
	sw $t0, -2992($fp)
	lw $t0, -2992($fp)
	sw $t0, -2996($fp)
	lw $t0, -2996($fp)
	sw $t0, -3000($fp)
label224:
	addi $t0, $fp, -80
	sw $t0, -3004($fp)
	lw $t0, -816($fp)
	sw $t0, -3008($fp)
	li $t0, 28227
	sw $t0, -3012($fp)
	lw $t0, -3008($fp)
	lw $t1, -3012($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3016($fp)
	li $t0, 4
	lw $t1, -3016($fp)
	mul $t0, $t0, $t1
	sw $t0, -3020($fp)
	lw $t0, -3020($fp)
	lw $t1, -3004($fp)
	add $t0, $t0, $t1
	sw $t0, -3024($fp)
	lw $t0, -3024($fp)
	lw $t1, 0($t0)
	sw $t1, -3028($fp)
	lw $t1, -3028($fp)
	li $t2, 0
	bne $t1, $t2, label227
	j label226
label227:
	li $t0, 0
	sw $t0, -3032($fp)
	addi $t0, $fp, -88
	sw $t0, -3036($fp)
	lw $t0, -564($fp)
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
	lw $t1, -3052($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label230
label230:
	lw $t0, -624($fp)
	sw $t0, -3056($fp)
	lw $t1, -3056($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label229
label228:
	li $t0, 1
	sw $t0, -3032($fp)
label229:
	li $t0, 0
	sw $t0, -3060($fp)
	lw $t0, -804($fp)
	sw $t0, -3064($fp)
	li $t0, 3325
	sw $t0, -3068($fp)
	lw $t0, -3064($fp)
	lw $t1, -3068($fp)
	mul $t0, $t0, $t1
	sw $t0, -3072($fp)
	lw $t0, -2720($fp)
	sw $t0, -3076($fp)
	lw $t1, -3072($fp)
	lw $t2, -3076($fp)
	beq $t1, $t2, label231
	j label232
label231:
	li $t0, 1
	sw $t0, -3060($fp)
label232:
	addi $sp, $sp, -4
	lw $t0, -3032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3060($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3080($fp)
	addi $sp, $sp, 12
	li $t0, 7900
	sw $t0, -3084($fp)
	lw $t1, -3080($fp)
	lw $t2, -3084($fp)
	bge $t1, $t2, label225
	j label226
label225:
label233:
	li $t0, 8998
	sw $t0, -3088($fp)
	li $t0, 6900
	sw $t0, -3092($fp)
	lw $t0, -3088($fp)
	lw $t1, -3092($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3096($fp)
	lw $t0, -624($fp)
	sw $t0, -3100($fp)
	lw $t0, -3096($fp)
	lw $t1, -3100($fp)
	mul $t0, $t0, $t1
	sw $t0, -3104($fp)
	li $t0, 0
	sw $t0, -3108($fp)
	lw $t0, -2732($fp)
	sw $t0, -3112($fp)
	lw $t1, -3112($fp)
	li $t2, 0
	bne $t1, $t2, label237
	j label236
label236:
	li $t0, 1
	sw $t0, -3108($fp)
label237:
	lw $t0, -2984($fp)
	sw $t0, -3116($fp)
	lw $t0, -3108($fp)
	lw $t1, -3116($fp)
	mul $t0, $t0, $t1
	sw $t0, -3120($fp)
	addi $sp, $sp, -4
	lw $t0, -3104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3120($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3124($fp)
	addi $sp, $sp, 12
	lw $t1, -3124($fp)
	li $t2, 0
	bne $t1, $t2, label234
	j label235
label234:
	li $t0, 56771
	sw $t0, -3184($fp)
	addi $t0, $fp, -3156
	sw $t0, -3188($fp)
	li $t0, 0
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
	li $t0, 61699
	sw $t0, -3208($fp)
	addi $t0, $fp, -3156
	sw $t0, -3212($fp)
	li $t0, 1
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
	li $t0, 6124
	sw $t0, -3232($fp)
	addi $t0, $fp, -3156
	sw $t0, -3236($fp)
	li $t0, 2
	sw $t0, -3240($fp)
	lw $t0, -3240($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3244($fp)
	lw $t0, -3236($fp)
	lw $t1, -3244($fp)
	add $t0, $t0, $t1
	sw $t0, -3248($fp)
	lw $t0, -3232($fp)
	lw $t1, -3248($fp)
	sw $t0, 0($t1)
	lw $t0, -3248($fp)
	lw $t1, 0($t0)
	sw $t1, -3252($fp)
	li $t0, 1512
	sw $t0, -3256($fp)
	addi $t0, $fp, -3156
	sw $t0, -3260($fp)
	li $t0, 3
	sw $t0, -3264($fp)
	lw $t0, -3264($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3268($fp)
	lw $t0, -3260($fp)
	lw $t1, -3268($fp)
	add $t0, $t0, $t1
	sw $t0, -3272($fp)
	lw $t0, -3256($fp)
	lw $t1, -3272($fp)
	sw $t0, 0($t1)
	lw $t0, -3272($fp)
	lw $t1, 0($t0)
	sw $t1, -3276($fp)
	li $t0, 54359
	sw $t0, -3280($fp)
	addi $t0, $fp, -3156
	sw $t0, -3284($fp)
	li $t0, 4
	sw $t0, -3288($fp)
	lw $t0, -3288($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3292($fp)
	lw $t0, -3284($fp)
	lw $t1, -3292($fp)
	add $t0, $t0, $t1
	sw $t0, -3296($fp)
	lw $t0, -3280($fp)
	lw $t1, -3296($fp)
	sw $t0, 0($t1)
	lw $t0, -3296($fp)
	lw $t1, 0($t0)
	sw $t1, -3300($fp)
	li $t0, 6600
	sw $t0, -3304($fp)
	addi $t0, $fp, -3156
	sw $t0, -3308($fp)
	li $t0, 5
	sw $t0, -3312($fp)
	lw $t0, -3312($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3316($fp)
	lw $t0, -3308($fp)
	lw $t1, -3316($fp)
	add $t0, $t0, $t1
	sw $t0, -3320($fp)
	lw $t0, -3304($fp)
	lw $t1, -3320($fp)
	sw $t0, 0($t1)
	lw $t0, -3320($fp)
	lw $t1, 0($t0)
	sw $t1, -3324($fp)
	li $t0, 50269
	sw $t0, -3328($fp)
	addi $t0, $fp, -3156
	sw $t0, -3332($fp)
	li $t0, 6
	sw $t0, -3336($fp)
	lw $t0, -3336($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3340($fp)
	lw $t0, -3332($fp)
	lw $t1, -3340($fp)
	add $t0, $t0, $t1
	sw $t0, -3344($fp)
	lw $t0, -3328($fp)
	lw $t1, -3344($fp)
	sw $t0, 0($t1)
	lw $t0, -3344($fp)
	lw $t1, 0($t0)
	sw $t1, -3348($fp)
	li $t0, 26884
	sw $t0, -3352($fp)
	addi $t0, $fp, -3156
	sw $t0, -3356($fp)
	li $t0, 7
	sw $t0, -3360($fp)
	lw $t0, -3360($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3364($fp)
	lw $t0, -3356($fp)
	lw $t1, -3364($fp)
	add $t0, $t0, $t1
	sw $t0, -3368($fp)
	lw $t0, -3352($fp)
	lw $t1, -3368($fp)
	sw $t0, 0($t1)
	lw $t0, -3368($fp)
	lw $t1, 0($t0)
	sw $t1, -3372($fp)
	li $t0, 53983
	sw $t0, -3376($fp)
	lw $t0, -3376($fp)
	sw $t0, -3380($fp)
	lw $t0, -3380($fp)
	sw $t0, -3384($fp)
	li $t0, 21705
	sw $t0, -3388($fp)
	addi $t0, $fp, -3180
	sw $t0, -3392($fp)
	li $t0, 0
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
	li $t0, 35228
	sw $t0, -3412($fp)
	addi $t0, $fp, -3180
	sw $t0, -3416($fp)
	li $t0, 1
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
	li $t0, 58706
	sw $t0, -3436($fp)
	addi $t0, $fp, -3180
	sw $t0, -3440($fp)
	li $t0, 2
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
	li $t0, 3597
	sw $t0, -3460($fp)
	addi $t0, $fp, -3180
	sw $t0, -3464($fp)
	li $t0, 3
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
	li $t0, 54720
	sw $t0, -3484($fp)
	addi $t0, $fp, -3180
	sw $t0, -3488($fp)
	li $t0, 4
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
	li $t0, 22950
	sw $t0, -3508($fp)
	addi $t0, $fp, -3180
	sw $t0, -3512($fp)
	li $t0, 5
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
	li $t0, 40790
	sw $t0, -3532($fp)
	lw $t0, -3532($fp)
	sw $t0, -3536($fp)
	lw $t0, -3536($fp)
	sw $t0, -3540($fp)
	li $t0, 52645
	sw $t0, -3544($fp)
	lw $t0, -3536($fp)
	sw $t0, -3548($fp)
	lw $t0, -3544($fp)
	lw $t1, -3548($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3552($fp)
	lw $t0, 4($fp)
	sw $t0, -3556($fp)
	lw $t0, -3552($fp)
	lw $t1, -3556($fp)
	mul $t0, $t0, $t1
	sw $t0, -3560($fp)
	lw $t0, -768($fp)
	sw $t0, -3564($fp)
	li $t0, 0
	lw $t1, -3564($fp)
	sub $t0, $t0, $t1
	sw $t0, -3568($fp)
	li $t0, 22471
	sw $t0, -3572($fp)
	lw $t0, -3568($fp)
	lw $t1, -3572($fp)
	sub $t0, $t0, $t1
	sw $t0, -3576($fp)
	addi $sp, $sp, -4
	lw $t0, -3560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3576($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3580($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -3584($fp)
	li $t0, 50480
	sw $t0, -3588($fp)
	li $t0, 0
	lw $t1, -3588($fp)
	sub $t0, $t0, $t1
	sw $t0, -3592($fp)
	lw $t1, -3592($fp)
	li $t2, 0
	bne $t1, $t2, label240
	j label239
label240:
	li $t0, 3675
	sw $t0, -3596($fp)
	li $t0, 57257
	sw $t0, -3600($fp)
	lw $t0, -3596($fp)
	lw $t1, -3600($fp)
	sub $t0, $t0, $t1
	sw $t0, -3604($fp)
	lw $t0, -612($fp)
	sw $t0, -3608($fp)
	lw $t0, 4($fp)
	sw $t0, -3612($fp)
	lw $t0, -3608($fp)
	lw $t1, -3612($fp)
	mul $t0, $t0, $t1
	sw $t0, -3616($fp)
	lw $t0, -3604($fp)
	lw $t1, -3616($fp)
	add $t0, $t0, $t1
	sw $t0, -3620($fp)
	lw $t1, -3620($fp)
	li $t2, 0
	bne $t1, $t2, label238
	j label239
label238:
	li $t0, 1
	sw $t0, -3584($fp)
label239:
	li $t0, 0
	sw $t0, -3624($fp)
	li $t0, 0
	sw $t0, -3628($fp)
	addi $t0, $fp, -2712
	sw $t0, -3632($fp)
	li $t0, 3
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
	lw $t0, -2996($fp)
	sw $t0, -3652($fp)
	lw $t1, -3648($fp)
	lw $t2, -3652($fp)
	bne $t1, $t2, label246
	j label247
label246:
	li $t0, 1
	sw $t0, -3628($fp)
label247:
	lw $t0, -624($fp)
	sw $t0, -3656($fp)
	lw $t1, -3628($fp)
	lw $t2, -3656($fp)
	beq $t1, $t2, label244
	j label245
label244:
	li $t0, 1
	sw $t0, -3624($fp)
label245:
	lw $t0, -3624($fp)
	sw $t0, -2732($fp)
	lw $t0, -2732($fp)
	sw $t0, -3660($fp)
	lw $t1, -3660($fp)
	li $t2, 0
	bne $t1, $t2, label241
	j label242
label241:
label248:
	addi $t0, $fp, -3180
	sw $t0, -3664($fp)
	li $t0, 5
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
	lw $t0, -528($fp)
	sw $t0, -3684($fp)
	lw $t0, -3684($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -3688($fp)
	addi $sp, $sp, -4
	lw $t0, -3680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3688($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3692($fp)
	addi $sp, $sp, 12
	lw $t1, -3692($fp)
	li $t2, 0
	bne $t1, $t2, label249
	j label250
label249:
	addi $t0, $fp, -3156
	sw $t0, -3696($fp)
	lw $t0, -792($fp)
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
	addi $t0, $fp, -88
	sw $t0, -3716($fp)
	li $t0, 0
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
	lw $t0, -516($fp)
	sw $t0, -3736($fp)
	lw $t0, -3732($fp)
	lw $t1, -3736($fp)
	mul $t0, $t0, $t1
	sw $t0, -3740($fp)
	addi $sp, $sp, -4
	lw $t0, -3712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3740($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3744($fp)
	addi $sp, $sp, 12
	j label248
label250:
label242:
	addi $t0, $fp, -88
	sw $t0, -3748($fp)
	li $t0, 0
	sw $t0, -3752($fp)
	li $t0, 0
	sw $t0, -3756($fp)
	lw $t0, 4($fp)
	sw $t0, -3760($fp)
	lw $t0, -504($fp)
	sw $t0, -3764($fp)
	lw $t1, -3760($fp)
	lw $t2, -3764($fp)
	ble $t1, $t2, label257
	j label258
label257:
	li $t0, 1
	sw $t0, -3756($fp)
label258:
	lw $t0, -792($fp)
	sw $t0, -3768($fp)
	lw $t1, -3756($fp)
	lw $t2, -3768($fp)
	bne $t1, $t2, label256
	j label255
label256:
	lw $t0, -612($fp)
	sw $t0, -3772($fp)
	li $t0, 25858
	sw $t0, -3776($fp)
	lw $t0, -3772($fp)
	lw $t1, -3776($fp)
	mul $t0, $t0, $t1
	sw $t0, -3780($fp)
	lw $t1, -3780($fp)
	li $t2, 0
	bne $t1, $t2, label254
	j label255
label254:
	li $t0, 1
	sw $t0, -3752($fp)
label255:
	li $t0, 4
	lw $t1, -3752($fp)
	mul $t0, $t0, $t1
	sw $t0, -3784($fp)
	lw $t0, -3784($fp)
	lw $t1, -3748($fp)
	add $t0, $t0, $t1
	sw $t0, -3788($fp)
	lw $t0, -3788($fp)
	lw $t1, 0($t0)
	sw $t1, -3792($fp)
	lw $t1, -3792($fp)
	li $t2, 0
	bne $t1, $t2, label251
	j label252
label251:
label259:
	li $t0, 5789
	sw $t0, -3796($fp)
	li $t0, 32758
	sw $t0, -3800($fp)
	lw $t0, -3800($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -3804($fp)
	li $t0, 48418
	sw $t0, -3808($fp)
	lw $t0, -528($fp)
	sw $t0, -3812($fp)
	lw $t0, -3808($fp)
	lw $t1, -3812($fp)
	sub $t0, $t0, $t1
	sw $t0, -3816($fp)
	lw $t0, -3380($fp)
	sw $t0, -3820($fp)
	lw $t0, -3816($fp)
	lw $t1, -3820($fp)
	add $t0, $t0, $t1
	sw $t0, -3824($fp)
	addi $sp, $sp, -4
	lw $t0, -3804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3824($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3828($fp)
	addi $sp, $sp, 12
	lw $t0, -3796($fp)
	lw $t1, -3828($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3832($fp)
	lw $t0, -3832($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -3836($fp)
	lw $t1, -3836($fp)
	li $t2, 0
	bne $t1, $t2, label260
	j label261
label260:
	lw $t0, -528($fp)
	sw $t0, -3840($fp)
	j label259
label261:
	j label253
label252:
	li $t0, 0
	sw $t0, -3844($fp)
	lw $t0, 4($fp)
	sw $t0, -3848($fp)
	lw $t0, -3848($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -3852($fp)
	li $t0, 0
	sw $t0, -3856($fp)
	lw $t0, -804($fp)
	sw $t0, -3860($fp)
	li $t0, 0
	lw $t1, -3860($fp)
	sub $t0, $t0, $t1
	sw $t0, -3864($fp)
	lw $t1, -3864($fp)
	li $t2, 0
	bne $t1, $t2, label266
	j label265
label266:
	lw $t0, -768($fp)
	sw $t0, -3868($fp)
	lw $t1, -3868($fp)
	li $t2, 0
	bne $t1, $t2, label264
	j label265
label264:
	li $t0, 1
	sw $t0, -3856($fp)
label265:
	addi $sp, $sp, -4
	lw $t0, -3852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3856($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3872($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -64
	sw $t0, -3876($fp)
	lw $t0, 4($fp)
	sw $t0, -3880($fp)
	li $t0, 4
	lw $t1, -3880($fp)
	mul $t0, $t0, $t1
	sw $t0, -3884($fp)
	lw $t0, -3884($fp)
	lw $t1, -3876($fp)
	add $t0, $t0, $t1
	sw $t0, -3888($fp)
	lw $t0, -3888($fp)
	lw $t1, 0($t0)
	sw $t1, -3892($fp)
	lw $t1, -3872($fp)
	lw $t2, -3892($fp)
	beq $t1, $t2, label262
	j label263
label262:
	li $t0, 1
	sw $t0, -3844($fp)
label263:
label253:
	j label233
label235:
	j label224
label226:
	li $t0, 0
	sw $t0, -3896($fp)
	li $t0, 38882
	sw $t0, -3900($fp)
	lw $t0, -3900($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -3904($fp)
	li $t0, 0
	sw $t0, -3908($fp)
	addi $t0, $fp, -88
	sw $t0, -3912($fp)
	li $t0, 0
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
	lw $t1, -3928($fp)
	li $t2, 0
	bne $t1, $t2, label270
	j label269
label269:
	li $t0, 1
	sw $t0, -3908($fp)
label270:
	addi $sp, $sp, -4
	lw $t0, -3904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3908($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3932($fp)
	addi $sp, $sp, 12
	lw $t1, -3932($fp)
	li $t2, 0
	bne $t1, $t2, label268
	j label267
label267:
	li $t0, 1
	sw $t0, -3896($fp)
label268:
label271:
	li $t0, 0
	sw $t0, -3936($fp)
	lw $t0, -132($fp)
	sw $t0, -3940($fp)
	li $t0, 0
	lw $t1, -3940($fp)
	sub $t0, $t0, $t1
	sw $t0, -3944($fp)
	li $t0, 0
	lw $t1, -3944($fp)
	sub $t0, $t0, $t1
	sw $t0, -3948($fp)
	lw $t1, -3948($fp)
	li $t2, 0
	bne $t1, $t2, label275
	j label274
label274:
	li $t0, 1
	sw $t0, -3936($fp)
label275:
	li $t0, 0
	sw $t0, -3952($fp)
	li $t0, 64072
	sw $t0, -3956($fp)
	lw $t1, -3956($fp)
	li $t2, 0
	bne $t1, $t2, label277
	j label276
label276:
	li $t0, 1
	sw $t0, -3952($fp)
label277:
	li $t0, 33405
	sw $t0, -3960($fp)
	lw $t0, -3952($fp)
	lw $t1, -3960($fp)
	mul $t0, $t0, $t1
	sw $t0, -3964($fp)
	lw $t0, -3936($fp)
	lw $t1, -3964($fp)
	add $t0, $t0, $t1
	sw $t0, -3968($fp)
	lw $t0, -600($fp)
	sw $t0, -3972($fp)
	lw $t0, -3968($fp)
	lw $t1, -3972($fp)
	add $t0, $t0, $t1
	sw $t0, -3976($fp)
	lw $t1, -3976($fp)
	li $t2, 0
	bne $t1, $t2, label272
	j label273
label272:
	addi $t0, $fp, -2712
	sw $t0, -3980($fp)
	lw $t0, -552($fp)
	sw $t0, -3984($fp)
	li $t0, 4
	lw $t1, -3984($fp)
	mul $t0, $t0, $t1
	sw $t0, -3988($fp)
	lw $t0, -3988($fp)
	lw $t1, -3980($fp)
	add $t0, $t0, $t1
	sw $t0, -3992($fp)
	lw $t0, -3992($fp)
	lw $t1, 0($t0)
	sw $t1, -3996($fp)
	lw $t0, -3996($fp)
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -4000($fp)
	lw $t0, -4000($fp)
	sw $t0, -2996($fp)
	lw $t0, -2996($fp)
	sw $t0, -4004($fp)
	lw $ra, -4($fp)
	lw $v0, -4004($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label271
label273:
	li $t0, 0
	sw $t0, -4008($fp)
	addi $t0, $fp, -44
	sw $t0, -4012($fp)
	lw $t0, -2996($fp)
	sw $t0, -4016($fp)
	li $t0, 4
	lw $t1, -4016($fp)
	mul $t0, $t0, $t1
	sw $t0, -4020($fp)
	lw $t0, -4020($fp)
	lw $t1, -4012($fp)
	add $t0, $t0, $t1
	sw $t0, -4024($fp)
	lw $t0, -4024($fp)
	lw $t1, 0($t0)
	sw $t1, -4028($fp)
	li $t0, 45482
	sw $t0, -4032($fp)
	lw $t0, -4028($fp)
	lw $t1, -4032($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4036($fp)
	li $t0, 0
	sw $t0, -4040($fp)
	lw $t0, -108($fp)
	sw $t0, -4044($fp)
	li $t0, 48805
	sw $t0, -4048($fp)
	lw $t1, -4044($fp)
	lw $t2, -4048($fp)
	bgt $t1, $t2, label283
	j label284
label283:
	li $t0, 1
	sw $t0, -4040($fp)
label284:
	lw $t1, -4036($fp)
	lw $t2, -4040($fp)
	beq $t1, $t2, label281
	j label282
label281:
	li $t0, 1
	sw $t0, -4008($fp)
label282:
	lw $t0, -4008($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -4052($fp)
	lw $t1, -4052($fp)
	li $t2, 0
	bne $t1, $t2, label278
	j label279
label278:
	li $t0, 29982
	sw $t0, -4056($fp)
	lw $t0, -96($fp)
	sw $t0, -4060($fp)
	lw $t0, -4056($fp)
	lw $t1, -4060($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4064($fp)
	li $t0, 27100
	sw $t0, -4068($fp)
	lw $t0, -4064($fp)
	lw $t1, -4068($fp)
	add $t0, $t0, $t1
	sw $t0, -4072($fp)
	li $t0, 0
	sw $t0, -4076($fp)
	lw $t0, -624($fp)
	sw $t0, -4080($fp)
	lw $t1, -4080($fp)
	li $t2, 0
	bne $t1, $t2, label286
	j label285
label285:
	li $t0, 1
	sw $t0, -4076($fp)
label286:
	li $t0, 4974
	sw $t0, -4084($fp)
	lw $t0, -4076($fp)
	lw $t1, -4084($fp)
	mul $t0, $t0, $t1
	sw $t0, -4088($fp)
	addi $sp, $sp, -4
	lw $t0, -4072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4088($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4092($fp)
	addi $sp, $sp, 12
	lw $t0, -516($fp)
	sw $t0, -4096($fp)
	lw $t0, -4092($fp)
	lw $t1, -4096($fp)
	sub $t0, $t0, $t1
	sw $t0, -4100($fp)
	li $t0, 33929
	sw $t0, -4104($fp)
	addi $t0, $fp, -2712
	sw $t0, -4108($fp)
	lw $t0, -660($fp)
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
	li $t0, 60289
	sw $t0, -4128($fp)
	lw $t0, -4124($fp)
	lw $t1, -4128($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4132($fp)
	addi $sp, $sp, -4
	lw $t0, -4104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4132($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4136($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -4100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4136($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4140($fp)
	addi $sp, $sp, 12
	lw $ra, -4($fp)
	lw $v0, -4140($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label279:
	li $t0, 8571
	sw $t0, -4144($fp)
	lw $t1, -4144($fp)
	li $t2, 0
	bne $t1, $t2, label287
	j label288
label287:
	lw $t0, -648($fp)
	sw $t0, -4148($fp)
	li $t0, 0
	sw $t0, -4152($fp)
	lw $t0, -108($fp)
	sw $t0, -4156($fp)
	li $t0, 19166
	sw $t0, -4160($fp)
	lw $t0, -4156($fp)
	lw $t1, -4160($fp)
	add $t0, $t0, $t1
	sw $t0, -4164($fp)
	lw $t1, -4164($fp)
	li $t2, 0
	bne $t1, $t2, label292
	j label291
label292:
	lw $t0, -624($fp)
	sw $t0, -4168($fp)
	lw $t1, -4168($fp)
	li $t2, 0
	bne $t1, $t2, label290
	j label291
label290:
	li $t0, 1
	sw $t0, -4152($fp)
label291:
	addi $sp, $sp, -4
	lw $t0, -4148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4152($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4172($fp)
	addi $sp, $sp, 12
	j label289
label288:
label293:
	lw $t0, 8($fp)
	sw $t0, -4176($fp)
	li $t0, 50050
	sw $t0, -4180($fp)
	li $t0, 0
	lw $t1, -4180($fp)
	sub $t0, $t0, $t1
	sw $t0, -4184($fp)
	lw $t0, -4176($fp)
	lw $t1, -4184($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4188($fp)
	li $t0, 0
	sw $t0, -4192($fp)
	li $t0, 49362
	sw $t0, -4196($fp)
	lw $t1, -4196($fp)
	li $t2, 0
	bne $t1, $t2, label298
	j label297
label297:
	li $t0, 1
	sw $t0, -4192($fp)
label298:
	li $t0, 41637
	sw $t0, -4200($fp)
	lw $t0, -4192($fp)
	lw $t1, -4200($fp)
	mul $t0, $t0, $t1
	sw $t0, -4204($fp)
	lw $t0, -4188($fp)
	lw $t1, -4204($fp)
	add $t0, $t0, $t1
	sw $t0, -4208($fp)
	lw $t1, -4208($fp)
	li $t2, 0
	bne $t1, $t2, label294
	j label296
label296:
	li $t0, 37160
	sw $t0, -4212($fp)
	li $t0, 0
	lw $t1, -4212($fp)
	sub $t0, $t0, $t1
	sw $t0, -4216($fp)
	lw $t0, -636($fp)
	sw $t0, -4220($fp)
	lw $t1, -4216($fp)
	lw $t2, -4220($fp)
	ble $t1, $t2, label299
	j label295
label299:
	lw $t0, -132($fp)
	sw $t0, -4224($fp)
	li $t0, 34306
	sw $t0, -4228($fp)
	lw $t0, -4224($fp)
	lw $t1, -4228($fp)
	add $t0, $t0, $t1
	sw $t0, -4232($fp)
	lw $t1, -4232($fp)
	li $t2, 0
	bne $t1, $t2, label294
	j label295
label294:
label300:
	li $t0, 45313
	sw $t0, -4236($fp)
	lw $t1, -4236($fp)
	li $t2, 0
	bne $t1, $t2, label301
	j label302
label301:
	lw $t0, -816($fp)
	sw $t0, -4240($fp)
	lw $t0, -780($fp)
	sw $t0, -4244($fp)
	lw $t0, -4240($fp)
	lw $t1, -4244($fp)
	sub $t0, $t0, $t1
	sw $t0, -4248($fp)
	lw $t0, -4248($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -4252($fp)
	lw $t0, -4252($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -4256($fp)
	lw $t1, -4256($fp)
	li $t2, 0
	bne $t1, $t2, label303
	j label304
label303:
	lw $t0, -876($fp)
	sw $t0, -4260($fp)
	li $t0, 0
	lw $t1, -4260($fp)
	sub $t0, $t0, $t1
	sw $t0, -4264($fp)
	j label305
label304:
	li $t0, 0
	sw $t0, -4268($fp)
	lw $t0, -504($fp)
	sw $t0, -4272($fp)
	lw $t1, -4272($fp)
	li $t2, 0
	bne $t1, $t2, label307
	j label306
label306:
	li $t0, 1
	sw $t0, -4268($fp)
label307:
	lw $t0, -4268($fp)
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -4276($fp)
label305:
	j label300
label302:
	j label293
label295:
label289:
	lw $t0, -96($fp)
	sw $t0, -4280($fp)
	lw $t0, -4280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -4284($fp)
	lw $t0, -4284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -4288($fp)
	lw $t0, -4288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -4292($fp)
	lw $t0, -4292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -4296($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -4316($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -4336($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -4356($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -4376($fp)
	li $t0, 4
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
	addi $t0, $fp, -44
	sw $t0, -4396($fp)
	li $t0, 5
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
	addi $t0, $fp, -44
	sw $t0, -4416($fp)
	li $t0, 6
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
	addi $t0, $fp, -44
	sw $t0, -4436($fp)
	li $t0, 7
	sw $t0, -4440($fp)
	li $t0, 4
	lw $t1, -4440($fp)
	mul $t0, $t0, $t1
	sw $t0, -4444($fp)
	lw $t0, -4444($fp)
	lw $t1, -4436($fp)
	add $t0, $t0, $t1
	sw $t0, -4448($fp)
	lw $t0, -4448($fp)
	lw $t1, 0($t0)
	sw $t1, -4452($fp)
	lw $t0, -4452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -4456($fp)
	li $t0, 8
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
	lw $t0, -4472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -4476($fp)
	li $t0, 9
	sw $t0, -4480($fp)
	li $t0, 4
	lw $t1, -4480($fp)
	mul $t0, $t0, $t1
	sw $t0, -4484($fp)
	lw $t0, -4484($fp)
	lw $t1, -4476($fp)
	add $t0, $t0, $t1
	sw $t0, -4488($fp)
	lw $t0, -4488($fp)
	lw $t1, 0($t0)
	sw $t1, -4492($fp)
	lw $t0, -4492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -4496($fp)
	li $t0, 0
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
	lw $t0, -4512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -4516($fp)
	li $t0, 1
	sw $t0, -4520($fp)
	li $t0, 4
	lw $t1, -4520($fp)
	mul $t0, $t0, $t1
	sw $t0, -4524($fp)
	lw $t0, -4524($fp)
	lw $t1, -4516($fp)
	add $t0, $t0, $t1
	sw $t0, -4528($fp)
	lw $t0, -4528($fp)
	lw $t1, 0($t0)
	sw $t1, -4532($fp)
	lw $t0, -4532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -4536($fp)
	li $t0, 2
	sw $t0, -4540($fp)
	li $t0, 4
	lw $t1, -4540($fp)
	mul $t0, $t0, $t1
	sw $t0, -4544($fp)
	lw $t0, -4544($fp)
	lw $t1, -4536($fp)
	add $t0, $t0, $t1
	sw $t0, -4548($fp)
	lw $t0, -4548($fp)
	lw $t1, 0($t0)
	sw $t1, -4552($fp)
	lw $t0, -4552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -4556($fp)
	li $t0, 3
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
	lw $t0, -4572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -4576($fp)
	li $t0, 4
	sw $t0, -4580($fp)
	li $t0, 4
	lw $t1, -4580($fp)
	mul $t0, $t0, $t1
	sw $t0, -4584($fp)
	lw $t0, -4584($fp)
	lw $t1, -4576($fp)
	add $t0, $t0, $t1
	sw $t0, -4588($fp)
	lw $t0, -4588($fp)
	lw $t1, 0($t0)
	sw $t1, -4592($fp)
	lw $t0, -4592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -4596($fp)
	lw $t0, -4596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -516($fp)
	sw $t0, -4600($fp)
	lw $t0, -4600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -4604($fp)
	lw $t0, -4604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -540($fp)
	sw $t0, -4608($fp)
	lw $t0, -4608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -552($fp)
	sw $t0, -4612($fp)
	lw $t0, -4612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -564($fp)
	sw $t0, -4616($fp)
	lw $t0, -4616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -576($fp)
	sw $t0, -4620($fp)
	lw $t0, -4620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -588($fp)
	sw $t0, -4624($fp)
	lw $t0, -4624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -600($fp)
	sw $t0, -4628($fp)
	lw $t0, -4628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -612($fp)
	sw $t0, -4632($fp)
	lw $t0, -4632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -624($fp)
	sw $t0, -4636($fp)
	lw $t0, -4636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -636($fp)
	sw $t0, -4640($fp)
	lw $t0, -4640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	sw $t0, -4644($fp)
	lw $t0, -4644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -660($fp)
	sw $t0, -4648($fp)
	lw $t0, -4648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -4652($fp)
	li $t0, 0
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
	addi $t0, $fp, -80
	sw $t0, -4672($fp)
	li $t0, 1
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
	addi $t0, $fp, -80
	sw $t0, -4692($fp)
	li $t0, 2
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
	addi $t0, $fp, -80
	sw $t0, -4712($fp)
	li $t0, 3
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
	lw $t0, -768($fp)
	sw $t0, -4732($fp)
	lw $t0, -4732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -780($fp)
	sw $t0, -4736($fp)
	lw $t0, -4736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -792($fp)
	sw $t0, -4740($fp)
	lw $t0, -4740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -804($fp)
	sw $t0, -4744($fp)
	lw $t0, -4744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -816($fp)
	sw $t0, -4748($fp)
	lw $t0, -4748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -4752($fp)
	li $t0, 0
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
	addi $t0, $fp, -88
	sw $t0, -4772($fp)
	li $t0, 1
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
	lw $t0, -876($fp)
	sw $t0, -4792($fp)
	lw $t0, -4792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 28881
	sw $t0, -4796($fp)
	lw $ra, -4($fp)
	lw $v0, -4796($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -3796
	li $t0, 59648
	sw $t0, -144($fp)
	addi $t0, $fp, -28
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
	li $t0, 24784
	sw $t0, -168($fp)
	addi $t0, $fp, -28
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
	li $t0, 40074
	sw $t0, -192($fp)
	addi $t0, $fp, -28
	sw $t0, -196($fp)
	li $t0, 2
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
	li $t0, 16645
	sw $t0, -216($fp)
	addi $t0, $fp, -28
	sw $t0, -220($fp)
	li $t0, 3
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
	li $t0, 22672
	sw $t0, -240($fp)
	addi $t0, $fp, -28
	sw $t0, -244($fp)
	li $t0, 4
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
	li $t0, 13959
	sw $t0, -264($fp)
	addi $t0, $fp, -28
	sw $t0, -268($fp)
	li $t0, 5
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
	li $t0, 42504
	sw $t0, -288($fp)
	addi $t0, $fp, -60
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
	li $t0, 28461
	sw $t0, -312($fp)
	addi $t0, $fp, -60
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
	li $t0, 62377
	sw $t0, -336($fp)
	addi $t0, $fp, -60
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
	li $t0, 9726
	sw $t0, -360($fp)
	addi $t0, $fp, -60
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
	li $t0, 25485
	sw $t0, -384($fp)
	addi $t0, $fp, -60
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
	li $t0, 41423
	sw $t0, -408($fp)
	addi $t0, $fp, -60
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
	li $t0, 48609
	sw $t0, -432($fp)
	addi $t0, $fp, -60
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
	li $t0, 24021
	sw $t0, -456($fp)
	addi $t0, $fp, -60
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
	li $t0, 9293
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	li $t0, 28555
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	li $t0, 7290
	sw $t0, -504($fp)
	addi $t0, $fp, -80
	sw $t0, -508($fp)
	li $t0, 0
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
	li $t0, 4046
	sw $t0, -528($fp)
	addi $t0, $fp, -80
	sw $t0, -532($fp)
	li $t0, 1
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
	li $t0, 62485
	sw $t0, -552($fp)
	addi $t0, $fp, -80
	sw $t0, -556($fp)
	li $t0, 2
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
	li $t0, 12264
	sw $t0, -576($fp)
	addi $t0, $fp, -80
	sw $t0, -580($fp)
	li $t0, 3
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
	li $t0, 34028
	sw $t0, -600($fp)
	addi $t0, $fp, -80
	sw $t0, -604($fp)
	li $t0, 4
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
	li $t0, 24049
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -632($fp)
	li $t0, 20836
	sw $t0, -636($fp)
	addi $t0, $fp, -112
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
	li $t0, 53195
	sw $t0, -660($fp)
	addi $t0, $fp, -112
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
	li $t0, 8563
	sw $t0, -684($fp)
	addi $t0, $fp, -112
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
	li $t0, 4662
	sw $t0, -708($fp)
	addi $t0, $fp, -112
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
	li $t0, 29296
	sw $t0, -732($fp)
	addi $t0, $fp, -112
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
	li $t0, 45723
	sw $t0, -756($fp)
	addi $t0, $fp, -112
	sw $t0, -760($fp)
	li $t0, 5
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
	li $t0, 38968
	sw $t0, -780($fp)
	addi $t0, $fp, -112
	sw $t0, -784($fp)
	li $t0, 6
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
	li $t0, 9073
	sw $t0, -804($fp)
	addi $t0, $fp, -112
	sw $t0, -808($fp)
	li $t0, 7
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
	li $t0, 9069
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -836($fp)
	li $t0, 33080
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -848($fp)
	li $t0, 33857
	sw $t0, -852($fp)
	addi $t0, $fp, -140
	sw $t0, -856($fp)
	li $t0, 0
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
	li $t0, 49143
	sw $t0, -876($fp)
	addi $t0, $fp, -140
	sw $t0, -880($fp)
	li $t0, 1
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
	li $t0, 49725
	sw $t0, -900($fp)
	addi $t0, $fp, -140
	sw $t0, -904($fp)
	li $t0, 2
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
	li $t0, 56530
	sw $t0, -924($fp)
	addi $t0, $fp, -140
	sw $t0, -928($fp)
	li $t0, 3
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
	li $t0, 63102
	sw $t0, -948($fp)
	addi $t0, $fp, -140
	sw $t0, -952($fp)
	li $t0, 4
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
	li $t0, 26693
	sw $t0, -972($fp)
	addi $t0, $fp, -140
	sw $t0, -976($fp)
	li $t0, 5
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -984($fp)
	lw $t0, -976($fp)
	lw $t1, -984($fp)
	add $t0, $t0, $t1
	sw $t0, -988($fp)
	lw $t0, -972($fp)
	lw $t1, -988($fp)
	sw $t0, 0($t1)
	lw $t0, -988($fp)
	lw $t1, 0($t0)
	sw $t1, -992($fp)
	li $t0, 19455
	sw $t0, -996($fp)
	addi $t0, $fp, -140
	sw $t0, -1000($fp)
	li $t0, 6
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
	li $t0, 59944
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -1028($fp)
	li $t0, 36420
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	sw $t0, -1040($fp)
	li $t0, 44941
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -1052($fp)
	li $t0, 0
	sw $t0, -1056($fp)
	addi $t0, $fp, -140
	sw $t0, -1060($fp)
	li $t0, 0
	sw $t0, -1064($fp)
	lw $t0, -1048($fp)
	sw $t0, -1068($fp)
	li $t0, 0
	lw $t1, -1068($fp)
	sub $t0, $t0, $t1
	sw $t0, -1072($fp)
	lw $t1, -1072($fp)
	li $t2, 0
	bne $t1, $t2, label311
	j label310
label310:
	li $t0, 1
	sw $t0, -1064($fp)
label311:
	li $t0, 4
	lw $t1, -1064($fp)
	mul $t0, $t0, $t1
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	lw $t1, -1060($fp)
	add $t0, $t0, $t1
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	lw $t1, 0($t0)
	sw $t1, -1084($fp)
	addi $t0, $fp, -140
	sw $t0, -1088($fp)
	li $t0, 0
	sw $t0, -1092($fp)
	lw $t0, -484($fp)
	sw $t0, -1096($fp)
	li $t0, 35831
	sw $t0, -1100($fp)
	lw $t1, -1096($fp)
	lw $t2, -1100($fp)
	beq $t1, $t2, label312
	j label313
label312:
	li $t0, 1
	sw $t0, -1092($fp)
label313:
	li $t0, 4
	lw $t1, -1092($fp)
	mul $t0, $t0, $t1
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	lw $t1, -1088($fp)
	add $t0, $t0, $t1
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	lw $t1, 0($t0)
	sw $t1, -1112($fp)
	lw $t1, -1084($fp)
	lw $t2, -1112($fp)
	bgt $t1, $t2, label308
	j label309
label308:
	li $t0, 1
	sw $t0, -1056($fp)
label309:
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -60
	sw $t0, -1236($fp)
	li $t0, 0
	sw $t0, -1240($fp)
	li $t0, 4
	lw $t1, -1240($fp)
	mul $t0, $t0, $t1
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	lw $t1, -1236($fp)
	add $t0, $t0, $t1
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	lw $t1, 0($t0)
	sw $t1, -1252($fp)
	lw $t0, -1252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1256($fp)
	li $t0, 1
	sw $t0, -1260($fp)
	li $t0, 4
	lw $t1, -1260($fp)
	mul $t0, $t0, $t1
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	lw $t1, -1256($fp)
	add $t0, $t0, $t1
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	lw $t1, 0($t0)
	sw $t1, -1272($fp)
	lw $t0, -1272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1276($fp)
	li $t0, 2
	sw $t0, -1280($fp)
	li $t0, 4
	lw $t1, -1280($fp)
	mul $t0, $t0, $t1
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	lw $t1, -1276($fp)
	add $t0, $t0, $t1
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	lw $t1, 0($t0)
	sw $t1, -1292($fp)
	lw $t0, -1292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1296($fp)
	li $t0, 3
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
	lw $t0, -1312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1316($fp)
	li $t0, 4
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
	lw $t0, -1332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1336($fp)
	li $t0, 5
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
	lw $t0, -1352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1356($fp)
	li $t0, 6
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
	lw $t0, -1372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1376($fp)
	li $t0, 7
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
	lw $t0, -484($fp)
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -496($fp)
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1404($fp)
	li $t0, 0
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
	addi $t0, $fp, -80
	sw $t0, -1424($fp)
	li $t0, 1
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
	addi $t0, $fp, -80
	sw $t0, -1444($fp)
	li $t0, 2
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
	addi $t0, $fp, -80
	sw $t0, -1464($fp)
	li $t0, 3
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
	addi $t0, $fp, -80
	sw $t0, -1484($fp)
	li $t0, 4
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
	lw $t0, -628($fp)
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -1508($fp)
	li $t0, 0
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
	lw $t0, -1524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -1528($fp)
	li $t0, 1
	sw $t0, -1532($fp)
	li $t0, 4
	lw $t1, -1532($fp)
	mul $t0, $t0, $t1
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	lw $t1, -1528($fp)
	add $t0, $t0, $t1
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	lw $t1, 0($t0)
	sw $t1, -1544($fp)
	lw $t0, -1544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -1548($fp)
	li $t0, 2
	sw $t0, -1552($fp)
	li $t0, 4
	lw $t1, -1552($fp)
	mul $t0, $t0, $t1
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	lw $t1, -1548($fp)
	add $t0, $t0, $t1
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	lw $t1, 0($t0)
	sw $t1, -1564($fp)
	lw $t0, -1564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -1568($fp)
	li $t0, 3
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
	lw $t0, -1584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -1588($fp)
	li $t0, 4
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
	lw $t0, -1604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -1608($fp)
	li $t0, 5
	sw $t0, -1612($fp)
	li $t0, 4
	lw $t1, -1612($fp)
	mul $t0, $t0, $t1
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	lw $t1, -1608($fp)
	add $t0, $t0, $t1
	sw $t0, -1620($fp)
	lw $t0, -1620($fp)
	lw $t1, 0($t0)
	sw $t1, -1624($fp)
	lw $t0, -1624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -1628($fp)
	li $t0, 6
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
	lw $t0, -1644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -1648($fp)
	li $t0, 7
	sw $t0, -1652($fp)
	li $t0, 4
	lw $t1, -1652($fp)
	mul $t0, $t0, $t1
	sw $t0, -1656($fp)
	lw $t0, -1656($fp)
	lw $t1, -1648($fp)
	add $t0, $t0, $t1
	sw $t0, -1660($fp)
	lw $t0, -1660($fp)
	lw $t1, 0($t0)
	sw $t1, -1664($fp)
	lw $t0, -1664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -832($fp)
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -844($fp)
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
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
	lw $t0, -1692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -1696($fp)
	li $t0, 1
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
	addi $t0, $fp, -140
	sw $t0, -1716($fp)
	li $t0, 2
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
	addi $t0, $fp, -140
	sw $t0, -1736($fp)
	li $t0, 3
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
	lw $t0, -1752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -1756($fp)
	li $t0, 4
	sw $t0, -1760($fp)
	li $t0, 4
	lw $t1, -1760($fp)
	mul $t0, $t0, $t1
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	lw $t1, -1756($fp)
	add $t0, $t0, $t1
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	lw $t1, 0($t0)
	sw $t1, -1772($fp)
	lw $t0, -1772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -1776($fp)
	li $t0, 5
	sw $t0, -1780($fp)
	li $t0, 4
	lw $t1, -1780($fp)
	mul $t0, $t0, $t1
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	lw $t1, -1776($fp)
	add $t0, $t0, $t1
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	lw $t1, 0($t0)
	sw $t1, -1792($fp)
	lw $t0, -1792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -1796($fp)
	li $t0, 6
	sw $t0, -1800($fp)
	li $t0, 4
	lw $t1, -1800($fp)
	mul $t0, $t0, $t1
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	lw $t1, -1796($fp)
	add $t0, $t0, $t1
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	lw $t1, 0($t0)
	sw $t1, -1812($fp)
	lw $t0, -1812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1024($fp)
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1036($fp)
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1048($fp)
	sw $t0, -1824($fp)
	lw $t0, -1824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1828($fp)
	li $t0, 0
	sw $t0, -1832($fp)
	lw $t0, 4($fp)
	sw $t0, -1836($fp)
	li $t0, 19493
	sw $t0, -1840($fp)
	lw $t0, -1836($fp)
	lw $t1, -1840($fp)
	add $t0, $t0, $t1
	sw $t0, -1844($fp)
	li $t0, 3426
	sw $t0, -1848($fp)
	lw $t1, -1844($fp)
	lw $t2, -1848($fp)
	beq $t1, $t2, label314
	j label315
label314:
	li $t0, 1
	sw $t0, -1832($fp)
label315:
	li $t0, 4
	lw $t1, -1832($fp)
	mul $t0, $t0, $t1
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	lw $t1, -1828($fp)
	add $t0, $t0, $t1
	sw $t0, -1856($fp)
	lw $t0, -1856($fp)
	lw $t1, 0($t0)
	sw $t1, -1860($fp)
	li $t0, 0
	sw $t0, -1864($fp)
	addi $t0, $fp, -28
	sw $t0, -1868($fp)
	lw $t0, -832($fp)
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
	lw $t1, -1884($fp)
	li $t2, 0
	bne $t1, $t2, label317
	j label316
label316:
	li $t0, 1
	sw $t0, -1864($fp)
label317:
	li $t0, 0
	lw $t1, -1864($fp)
	sub $t0, $t0, $t1
	sw $t0, -1888($fp)
	lw $t0, -1860($fp)
	lw $t1, -1888($fp)
	add $t0, $t0, $t1
	sw $t0, -1892($fp)
	lw $ra, -4($fp)
	lw $v0, -1892($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 45124
	sw $t0, -1896($fp)
	lw $t0, -628($fp)
	sw $t0, -1900($fp)
	lw $t0, -1896($fp)
	lw $t1, -1900($fp)
	mul $t0, $t0, $t1
	sw $t0, -1904($fp)
	lw $t0, -484($fp)
	sw $t0, -1908($fp)
	lw $t0, -1904($fp)
	lw $t1, -1908($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1912($fp)
	lw $t1, -1912($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label319
label318:
label321:
	addi $t0, $fp, -112
	sw $t0, -1916($fp)
	li $t0, 0
	sw $t0, -1920($fp)
	lw $t0, -484($fp)
	sw $t0, -1924($fp)
	li $t0, 48048
	sw $t0, -1928($fp)
	lw $t1, -1924($fp)
	lw $t2, -1928($fp)
	beq $t1, $t2, label324
	j label325
label324:
	li $t0, 1
	sw $t0, -1920($fp)
label325:
	li $t0, 4
	lw $t1, -1920($fp)
	mul $t0, $t0, $t1
	sw $t0, -1932($fp)
	lw $t0, -1932($fp)
	lw $t1, -1916($fp)
	add $t0, $t0, $t1
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	lw $t1, 0($t0)
	sw $t1, -1940($fp)
	li $t0, 0
	lw $t1, -1940($fp)
	sub $t0, $t0, $t1
	sw $t0, -1944($fp)
	li $t0, 0
	sw $t0, -1948($fp)
	li $t0, 10717
	sw $t0, -1952($fp)
	lw $t1, -1952($fp)
	li $t2, 0
	bne $t1, $t2, label327
	j label326
label326:
	li $t0, 1
	sw $t0, -1948($fp)
label327:
	li $t0, 0
	sw $t0, -1956($fp)
	lw $t0, -484($fp)
	sw $t0, -1960($fp)
	li $t0, 49171
	sw $t0, -1964($fp)
	lw $t0, -1960($fp)
	lw $t1, -1964($fp)
	sub $t0, $t0, $t1
	sw $t0, -1968($fp)
	li $t0, 44997
	sw $t0, -1972($fp)
	lw $t1, -1968($fp)
	lw $t2, -1972($fp)
	bge $t1, $t2, label328
	j label329
label328:
	li $t0, 1
	sw $t0, -1956($fp)
label329:
	addi $sp, $sp, -4
	lw $t0, -1956($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1976($fp)
	addi $sp, $sp, 8
	lw $t0, -1948($fp)
	lw $t1, -1976($fp)
	mul $t0, $t0, $t1
	sw $t0, -1980($fp)
	lw $t0, -1944($fp)
	lw $t1, -1980($fp)
	add $t0, $t0, $t1
	sw $t0, -1984($fp)
	lw $t1, -1984($fp)
	li $t2, 0
	bne $t1, $t2, label322
	j label323
label322:
	lw $t0, -1036($fp)
	sw $t0, -1988($fp)
	j label321
label323:
	j label320
label319:
	li $t0, 0
	sw $t0, -1992($fp)
	lw $t0, 4($fp)
	sw $t0, -1996($fp)
	lw $t1, -1996($fp)
	li $t2, 0
	bne $t1, $t2, label330
	j label332
label332:
	li $t0, 0
	sw $t0, -2000($fp)
	li $t0, 17663
	sw $t0, -2004($fp)
	li $t0, 3510
	sw $t0, -2008($fp)
	lw $t0, -2004($fp)
	lw $t1, -2008($fp)
	sub $t0, $t0, $t1
	sw $t0, -2012($fp)
	lw $t0, -1036($fp)
	sw $t0, -2016($fp)
	lw $t1, -2012($fp)
	lw $t2, -2016($fp)
	blt $t1, $t2, label333
	j label334
label333:
	li $t0, 1
	sw $t0, -2000($fp)
label334:
	li $t0, 0
	sw $t0, -2020($fp)
	addi $t0, $fp, -28
	sw $t0, -2024($fp)
	lw $t0, -484($fp)
	sw $t0, -2028($fp)
	li $t0, 4
	lw $t1, -2028($fp)
	mul $t0, $t0, $t1
	sw $t0, -2032($fp)
	lw $t0, -2032($fp)
	lw $t1, -2024($fp)
	add $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	lw $t1, 0($t0)
	sw $t1, -2040($fp)
	lw $t1, -2040($fp)
	li $t2, 0
	bne $t1, $t2, label337
	j label336
label337:
	li $t0, 22981
	sw $t0, -2044($fp)
	lw $t1, -2044($fp)
	li $t2, 0
	bne $t1, $t2, label335
	j label336
label335:
	li $t0, 1
	sw $t0, -2020($fp)
label336:
	addi $sp, $sp, -4
	lw $t0, -2000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2020($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2048($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -28
	sw $t0, -2052($fp)
	li $t0, 2
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
	addi $sp, $sp, -4
	lw $t0, -2068($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2072($fp)
	addi $sp, $sp, 8
	lw $t0, -2048($fp)
	lw $t1, -2072($fp)
	add $t0, $t0, $t1
	sw $t0, -2076($fp)
	lw $t1, -2076($fp)
	li $t2, 0
	bne $t1, $t2, label330
	j label331
label330:
	li $t0, 1
	sw $t0, -1992($fp)
label331:
label320:
	addi $t0, $fp, -28
	sw $t0, -2080($fp)
	li $t0, 0
	sw $t0, -2084($fp)
	li $t0, 4
	lw $t1, -2084($fp)
	mul $t0, $t0, $t1
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	lw $t1, -2080($fp)
	add $t0, $t0, $t1
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	lw $t1, 0($t0)
	sw $t1, -2096($fp)
	lw $t0, -2096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -2100($fp)
	li $t0, 1
	sw $t0, -2104($fp)
	li $t0, 4
	lw $t1, -2104($fp)
	mul $t0, $t0, $t1
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	lw $t1, -2100($fp)
	add $t0, $t0, $t1
	sw $t0, -2112($fp)
	lw $t0, -2112($fp)
	lw $t1, 0($t0)
	sw $t1, -2116($fp)
	lw $t0, -2116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -2120($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -2140($fp)
	li $t0, 3
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
	addi $t0, $fp, -28
	sw $t0, -2160($fp)
	li $t0, 4
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
	addi $t0, $fp, -28
	sw $t0, -2180($fp)
	li $t0, 5
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
	addi $t0, $fp, -60
	sw $t0, -2200($fp)
	li $t0, 0
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
	addi $t0, $fp, -60
	sw $t0, -2220($fp)
	li $t0, 1
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
	addi $t0, $fp, -60
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
	lw $t0, -2256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -2260($fp)
	li $t0, 3
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
	li $t0, 4
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
	li $t0, 5
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
	li $t0, 6
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
	li $t0, 7
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
	lw $t0, -484($fp)
	sw $t0, -2360($fp)
	lw $t0, -2360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -496($fp)
	sw $t0, -2364($fp)
	lw $t0, -2364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2368($fp)
	li $t0, 0
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
	lw $t0, -2384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2388($fp)
	li $t0, 1
	sw $t0, -2392($fp)
	li $t0, 4
	lw $t1, -2392($fp)
	mul $t0, $t0, $t1
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	lw $t1, -2388($fp)
	add $t0, $t0, $t1
	sw $t0, -2400($fp)
	lw $t0, -2400($fp)
	lw $t1, 0($t0)
	sw $t1, -2404($fp)
	lw $t0, -2404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2408($fp)
	li $t0, 2
	sw $t0, -2412($fp)
	li $t0, 4
	lw $t1, -2412($fp)
	mul $t0, $t0, $t1
	sw $t0, -2416($fp)
	lw $t0, -2416($fp)
	lw $t1, -2408($fp)
	add $t0, $t0, $t1
	sw $t0, -2420($fp)
	lw $t0, -2420($fp)
	lw $t1, 0($t0)
	sw $t1, -2424($fp)
	lw $t0, -2424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2428($fp)
	li $t0, 3
	sw $t0, -2432($fp)
	li $t0, 4
	lw $t1, -2432($fp)
	mul $t0, $t0, $t1
	sw $t0, -2436($fp)
	lw $t0, -2436($fp)
	lw $t1, -2428($fp)
	add $t0, $t0, $t1
	sw $t0, -2440($fp)
	lw $t0, -2440($fp)
	lw $t1, 0($t0)
	sw $t1, -2444($fp)
	lw $t0, -2444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2448($fp)
	li $t0, 4
	sw $t0, -2452($fp)
	li $t0, 4
	lw $t1, -2452($fp)
	mul $t0, $t0, $t1
	sw $t0, -2456($fp)
	lw $t0, -2456($fp)
	lw $t1, -2448($fp)
	add $t0, $t0, $t1
	sw $t0, -2460($fp)
	lw $t0, -2460($fp)
	lw $t1, 0($t0)
	sw $t1, -2464($fp)
	lw $t0, -2464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -628($fp)
	sw $t0, -2468($fp)
	lw $t0, -2468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -2472($fp)
	li $t0, 0
	sw $t0, -2476($fp)
	li $t0, 4
	lw $t1, -2476($fp)
	mul $t0, $t0, $t1
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	lw $t1, -2472($fp)
	add $t0, $t0, $t1
	sw $t0, -2484($fp)
	lw $t0, -2484($fp)
	lw $t1, 0($t0)
	sw $t1, -2488($fp)
	lw $t0, -2488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
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
	lw $t0, -2508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -2512($fp)
	li $t0, 2
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
	lw $t0, -2528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -2532($fp)
	li $t0, 3
	sw $t0, -2536($fp)
	li $t0, 4
	lw $t1, -2536($fp)
	mul $t0, $t0, $t1
	sw $t0, -2540($fp)
	lw $t0, -2540($fp)
	lw $t1, -2532($fp)
	add $t0, $t0, $t1
	sw $t0, -2544($fp)
	lw $t0, -2544($fp)
	lw $t1, 0($t0)
	sw $t1, -2548($fp)
	lw $t0, -2548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -2552($fp)
	li $t0, 4
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
	lw $t0, -2568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -2572($fp)
	li $t0, 5
	sw $t0, -2576($fp)
	li $t0, 4
	lw $t1, -2576($fp)
	mul $t0, $t0, $t1
	sw $t0, -2580($fp)
	lw $t0, -2580($fp)
	lw $t1, -2572($fp)
	add $t0, $t0, $t1
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	lw $t1, 0($t0)
	sw $t1, -2588($fp)
	lw $t0, -2588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -2592($fp)
	li $t0, 6
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
	addi $t0, $fp, -112
	sw $t0, -2612($fp)
	li $t0, 7
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
	lw $t0, -832($fp)
	sw $t0, -2632($fp)
	lw $t0, -2632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -844($fp)
	sw $t0, -2636($fp)
	lw $t0, -2636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
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
	addi $t0, $fp, -140
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
	addi $t0, $fp, -140
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
	addi $t0, $fp, -140
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
	addi $t0, $fp, -140
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
	addi $t0, $fp, -140
	sw $t0, -2740($fp)
	li $t0, 5
	sw $t0, -2744($fp)
	li $t0, 4
	lw $t1, -2744($fp)
	mul $t0, $t0, $t1
	sw $t0, -2748($fp)
	lw $t0, -2748($fp)
	lw $t1, -2740($fp)
	add $t0, $t0, $t1
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	lw $t1, 0($t0)
	sw $t1, -2756($fp)
	lw $t0, -2756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -2760($fp)
	li $t0, 6
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
	lw $t0, -2776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1024($fp)
	sw $t0, -2780($fp)
	lw $t0, -2780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1036($fp)
	sw $t0, -2784($fp)
	lw $t0, -2784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1048($fp)
	sw $t0, -2788($fp)
	lw $t0, -2788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -2792($fp)
	lw $t0, -1048($fp)
	sw $t0, -2796($fp)
	li $t0, 4
	lw $t1, -2796($fp)
	mul $t0, $t0, $t1
	sw $t0, -2800($fp)
	lw $t0, -2800($fp)
	lw $t1, -2792($fp)
	add $t0, $t0, $t1
	sw $t0, -2804($fp)
	lw $t0, -2804($fp)
	lw $t1, 0($t0)
	sw $t1, -2808($fp)
	li $t0, 12074
	sw $t0, -2812($fp)
	lw $t0, -2808($fp)
	lw $t1, -2812($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2816($fp)
	li $t0, 48479
	sw $t0, -2820($fp)
	lw $t0, -2816($fp)
	lw $t1, -2820($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2824($fp)
	addi $t0, $fp, -60
	sw $t0, -2828($fp)
	addi $t0, $fp, -112
	sw $t0, -2832($fp)
	lw $t0, -628($fp)
	sw $t0, -2836($fp)
	li $t0, 4
	lw $t1, -2836($fp)
	mul $t0, $t0, $t1
	sw $t0, -2840($fp)
	lw $t0, -2840($fp)
	lw $t1, -2832($fp)
	add $t0, $t0, $t1
	sw $t0, -2844($fp)
	lw $t0, -2844($fp)
	lw $t1, 0($t0)
	sw $t1, -2848($fp)
	li $t0, 4
	lw $t1, -2848($fp)
	mul $t0, $t0, $t1
	sw $t0, -2852($fp)
	lw $t0, -2852($fp)
	lw $t1, -2828($fp)
	add $t0, $t0, $t1
	sw $t0, -2856($fp)
	lw $t0, -2856($fp)
	lw $t1, 0($t0)
	sw $t1, -2860($fp)
	lw $t0, -2824($fp)
	lw $t1, -2860($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2864($fp)
	lw $ra, -4($fp)
	lw $v0, -2864($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 34619
	sw $t0, -2868($fp)
	lw $t0, -2868($fp)
	sw $t0, -2872($fp)
	lw $t0, -2872($fp)
	sw $t0, -2876($fp)
	li $t0, 0
	sw $t0, -2880($fp)
	lw $t0, -844($fp)
	sw $t0, -2884($fp)
	li $t0, 0
	sw $t0, -2888($fp)
	lw $t0, -628($fp)
	sw $t0, -2892($fp)
	lw $t1, -2892($fp)
	li $t2, 0
	bne $t1, $t2, label341
	j label340
label340:
	li $t0, 1
	sw $t0, -2888($fp)
label341:
	addi $t0, $fp, -60
	sw $t0, -2896($fp)
	li $t0, 7
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
	lw $t0, -2888($fp)
	lw $t1, -2912($fp)
	sub $t0, $t0, $t1
	sw $t0, -2916($fp)
	lw $t1, -2884($fp)
	lw $t2, -2916($fp)
	blt $t1, $t2, label338
	j label339
label338:
	li $t0, 1
	sw $t0, -2880($fp)
label339:
	li $t0, 0
	sw $t0, -2920($fp)
	lw $t0, -2872($fp)
	sw $t0, -2924($fp)
	lw $t1, -2924($fp)
	li $t2, 0
	bne $t1, $t2, label343
	j label342
label342:
	li $t0, 1
	sw $t0, -2920($fp)
label343:
label344:
	addi $t0, $fp, -28
	sw $t0, -2928($fp)
	li $t0, 0
	sw $t0, -2932($fp)
	li $t0, 0
	sw $t0, -2936($fp)
	li $t0, 43692
	sw $t0, -2940($fp)
	li $t0, 1330
	sw $t0, -2944($fp)
	lw $t1, -2940($fp)
	lw $t2, -2944($fp)
	blt $t1, $t2, label349
	j label350
label349:
	li $t0, 1
	sw $t0, -2936($fp)
label350:
	lw $t0, -844($fp)
	sw $t0, -2948($fp)
	lw $t1, -2936($fp)
	lw $t2, -2948($fp)
	bne $t1, $t2, label347
	j label348
label347:
	li $t0, 1
	sw $t0, -2932($fp)
label348:
	li $t0, 4
	lw $t1, -2932($fp)
	mul $t0, $t0, $t1
	sw $t0, -2952($fp)
	lw $t0, -2952($fp)
	lw $t1, -2928($fp)
	add $t0, $t0, $t1
	sw $t0, -2956($fp)
	lw $t0, -2956($fp)
	lw $t1, 0($t0)
	sw $t1, -2960($fp)
	li $t0, 0
	sw $t0, -2964($fp)
	lw $t0, 4($fp)
	sw $t0, -2968($fp)
	lw $t1, -2968($fp)
	li $t2, 0
	bne $t1, $t2, label353
	j label351
label353:
	lw $t0, -628($fp)
	sw $t0, -2972($fp)
	lw $t1, -2972($fp)
	li $t2, 0
	bne $t1, $t2, label351
	j label352
label351:
	li $t0, 1
	sw $t0, -2964($fp)
label352:
	li $t0, 0
	sw $t0, -2976($fp)
	lw $t0, -484($fp)
	sw $t0, -2980($fp)
	lw $t1, -2980($fp)
	li $t2, 0
	bne $t1, $t2, label355
	j label354
label354:
	li $t0, 1
	sw $t0, -2976($fp)
label355:
	addi $sp, $sp, -4
	lw $t0, -2964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2976($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2984($fp)
	addi $sp, $sp, 12
	lw $t0, -2960($fp)
	lw $t1, -2984($fp)
	add $t0, $t0, $t1
	sw $t0, -2988($fp)
	lw $t1, -2988($fp)
	li $t2, 0
	bne $t1, $t2, label345
	j label346
label345:
	li $t0, 0
	sw $t0, -2992($fp)
	li $t0, 0
	sw $t0, -2996($fp)
	li $t0, 54991
	sw $t0, -3000($fp)
	lw $t1, -3000($fp)
	li $t2, 0
	bne $t1, $t2, label359
	j label358
label358:
	li $t0, 1
	sw $t0, -2996($fp)
label359:
	addi $t0, $fp, -112
	sw $t0, -3004($fp)
	lw $t0, 4($fp)
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
	lw $t0, -2996($fp)
	lw $t1, -3020($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3024($fp)
	li $t0, 12014
	sw $t0, -3028($fp)
	lw $t1, -3024($fp)
	lw $t2, -3028($fp)
	bne $t1, $t2, label356
	j label357
label356:
	li $t0, 1
	sw $t0, -2992($fp)
label357:
	j label344
label346:
	addi $t0, $fp, -28
	sw $t0, -3032($fp)
	li $t0, 0
	sw $t0, -3036($fp)
	li $t0, 4
	lw $t1, -3036($fp)
	mul $t0, $t0, $t1
	sw $t0, -3040($fp)
	lw $t0, -3040($fp)
	lw $t1, -3032($fp)
	add $t0, $t0, $t1
	sw $t0, -3044($fp)
	lw $t0, -3044($fp)
	lw $t1, 0($t0)
	sw $t1, -3048($fp)
	lw $t0, -3048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -3052($fp)
	li $t0, 1
	sw $t0, -3056($fp)
	li $t0, 4
	lw $t1, -3056($fp)
	mul $t0, $t0, $t1
	sw $t0, -3060($fp)
	lw $t0, -3060($fp)
	lw $t1, -3052($fp)
	add $t0, $t0, $t1
	sw $t0, -3064($fp)
	lw $t0, -3064($fp)
	lw $t1, 0($t0)
	sw $t1, -3068($fp)
	lw $t0, -3068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -3072($fp)
	li $t0, 2
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
	lw $t0, -3088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -3092($fp)
	li $t0, 3
	sw $t0, -3096($fp)
	li $t0, 4
	lw $t1, -3096($fp)
	mul $t0, $t0, $t1
	sw $t0, -3100($fp)
	lw $t0, -3100($fp)
	lw $t1, -3092($fp)
	add $t0, $t0, $t1
	sw $t0, -3104($fp)
	lw $t0, -3104($fp)
	lw $t1, 0($t0)
	sw $t1, -3108($fp)
	lw $t0, -3108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -3112($fp)
	li $t0, 4
	sw $t0, -3116($fp)
	li $t0, 4
	lw $t1, -3116($fp)
	mul $t0, $t0, $t1
	sw $t0, -3120($fp)
	lw $t0, -3120($fp)
	lw $t1, -3112($fp)
	add $t0, $t0, $t1
	sw $t0, -3124($fp)
	lw $t0, -3124($fp)
	lw $t1, 0($t0)
	sw $t1, -3128($fp)
	lw $t0, -3128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -3132($fp)
	li $t0, 5
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
	addi $t0, $fp, -60
	sw $t0, -3152($fp)
	li $t0, 0
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
	addi $t0, $fp, -60
	sw $t0, -3172($fp)
	li $t0, 1
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
	addi $t0, $fp, -60
	sw $t0, -3192($fp)
	li $t0, 2
	sw $t0, -3196($fp)
	li $t0, 4
	lw $t1, -3196($fp)
	mul $t0, $t0, $t1
	sw $t0, -3200($fp)
	lw $t0, -3200($fp)
	lw $t1, -3192($fp)
	add $t0, $t0, $t1
	sw $t0, -3204($fp)
	lw $t0, -3204($fp)
	lw $t1, 0($t0)
	sw $t1, -3208($fp)
	lw $t0, -3208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3212($fp)
	li $t0, 3
	sw $t0, -3216($fp)
	li $t0, 4
	lw $t1, -3216($fp)
	mul $t0, $t0, $t1
	sw $t0, -3220($fp)
	lw $t0, -3220($fp)
	lw $t1, -3212($fp)
	add $t0, $t0, $t1
	sw $t0, -3224($fp)
	lw $t0, -3224($fp)
	lw $t1, 0($t0)
	sw $t1, -3228($fp)
	lw $t0, -3228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3232($fp)
	li $t0, 4
	sw $t0, -3236($fp)
	li $t0, 4
	lw $t1, -3236($fp)
	mul $t0, $t0, $t1
	sw $t0, -3240($fp)
	lw $t0, -3240($fp)
	lw $t1, -3232($fp)
	add $t0, $t0, $t1
	sw $t0, -3244($fp)
	lw $t0, -3244($fp)
	lw $t1, 0($t0)
	sw $t1, -3248($fp)
	lw $t0, -3248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3252($fp)
	li $t0, 5
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
	lw $t0, -3268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3272($fp)
	li $t0, 6
	sw $t0, -3276($fp)
	li $t0, 4
	lw $t1, -3276($fp)
	mul $t0, $t0, $t1
	sw $t0, -3280($fp)
	lw $t0, -3280($fp)
	lw $t1, -3272($fp)
	add $t0, $t0, $t1
	sw $t0, -3284($fp)
	lw $t0, -3284($fp)
	lw $t1, 0($t0)
	sw $t1, -3288($fp)
	lw $t0, -3288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3292($fp)
	li $t0, 7
	sw $t0, -3296($fp)
	li $t0, 4
	lw $t1, -3296($fp)
	mul $t0, $t0, $t1
	sw $t0, -3300($fp)
	lw $t0, -3300($fp)
	lw $t1, -3292($fp)
	add $t0, $t0, $t1
	sw $t0, -3304($fp)
	lw $t0, -3304($fp)
	lw $t1, 0($t0)
	sw $t1, -3308($fp)
	lw $t0, -3308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -484($fp)
	sw $t0, -3312($fp)
	lw $t0, -3312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -496($fp)
	sw $t0, -3316($fp)
	lw $t0, -3316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3320($fp)
	li $t0, 0
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
	addi $t0, $fp, -80
	sw $t0, -3340($fp)
	li $t0, 1
	sw $t0, -3344($fp)
	li $t0, 4
	lw $t1, -3344($fp)
	mul $t0, $t0, $t1
	sw $t0, -3348($fp)
	lw $t0, -3348($fp)
	lw $t1, -3340($fp)
	add $t0, $t0, $t1
	sw $t0, -3352($fp)
	lw $t0, -3352($fp)
	lw $t1, 0($t0)
	sw $t1, -3356($fp)
	lw $t0, -3356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3360($fp)
	li $t0, 2
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
	lw $t0, -3376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3380($fp)
	li $t0, 3
	sw $t0, -3384($fp)
	li $t0, 4
	lw $t1, -3384($fp)
	mul $t0, $t0, $t1
	sw $t0, -3388($fp)
	lw $t0, -3388($fp)
	lw $t1, -3380($fp)
	add $t0, $t0, $t1
	sw $t0, -3392($fp)
	lw $t0, -3392($fp)
	lw $t1, 0($t0)
	sw $t1, -3396($fp)
	lw $t0, -3396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3400($fp)
	li $t0, 4
	sw $t0, -3404($fp)
	li $t0, 4
	lw $t1, -3404($fp)
	mul $t0, $t0, $t1
	sw $t0, -3408($fp)
	lw $t0, -3408($fp)
	lw $t1, -3400($fp)
	add $t0, $t0, $t1
	sw $t0, -3412($fp)
	lw $t0, -3412($fp)
	lw $t1, 0($t0)
	sw $t1, -3416($fp)
	lw $t0, -3416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -628($fp)
	sw $t0, -3420($fp)
	lw $t0, -3420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -3424($fp)
	li $t0, 0
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
	addi $t0, $fp, -112
	sw $t0, -3444($fp)
	li $t0, 1
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
	addi $t0, $fp, -112
	sw $t0, -3464($fp)
	li $t0, 2
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
	addi $t0, $fp, -112
	sw $t0, -3484($fp)
	li $t0, 3
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
	addi $t0, $fp, -112
	sw $t0, -3504($fp)
	li $t0, 4
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
	addi $t0, $fp, -112
	sw $t0, -3524($fp)
	li $t0, 5
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
	addi $t0, $fp, -112
	sw $t0, -3544($fp)
	li $t0, 6
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
	addi $t0, $fp, -112
	sw $t0, -3564($fp)
	li $t0, 7
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
	lw $t0, -832($fp)
	sw $t0, -3584($fp)
	lw $t0, -3584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -844($fp)
	sw $t0, -3588($fp)
	lw $t0, -3588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -3592($fp)
	li $t0, 0
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
	addi $t0, $fp, -140
	sw $t0, -3612($fp)
	li $t0, 1
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
	addi $t0, $fp, -140
	sw $t0, -3632($fp)
	li $t0, 2
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
	addi $t0, $fp, -140
	sw $t0, -3652($fp)
	li $t0, 3
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
	addi $t0, $fp, -140
	sw $t0, -3672($fp)
	li $t0, 4
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
	lw $t0, -3688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -3692($fp)
	li $t0, 5
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
	lw $t0, -3708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -3712($fp)
	li $t0, 6
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
	lw $t0, -3728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1024($fp)
	sw $t0, -3732($fp)
	lw $t0, -3732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1036($fp)
	sw $t0, -3736($fp)
	lw $t0, -3736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1048($fp)
	sw $t0, -3740($fp)
	lw $t0, -3740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3744($fp)
	li $t0, 0
	sw $t0, -3748($fp)
	li $t0, 50474
	sw $t0, -3752($fp)
	lw $t0, -1048($fp)
	sw $t0, -3756($fp)
	lw $t0, -3752($fp)
	lw $t1, -3756($fp)
	sub $t0, $t0, $t1
	sw $t0, -3760($fp)
	lw $t0, -1036($fp)
	sw $t0, -3764($fp)
	lw $t1, -3760($fp)
	lw $t2, -3764($fp)
	beq $t1, $t2, label364
	j label365
label364:
	li $t0, 1
	sw $t0, -3748($fp)
label365:
	lw $t0, -628($fp)
	sw $t0, -3768($fp)
	addi $sp, $sp, -4
	lw $t0, -3768($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3772($fp)
	addi $sp, $sp, 8
	lw $t1, -3748($fp)
	lw $t2, -3772($fp)
	bne $t1, $t2, label360
	j label363
label363:
	lw $t0, -484($fp)
	sw $t0, -3776($fp)
	lw $t1, -3776($fp)
	li $t2, 0
	bne $t1, $t2, label360
	j label362
label362:
	li $t0, 0
	sw $t0, -3780($fp)
	lw $t0, -1024($fp)
	sw $t0, -3784($fp)
	lw $t1, -3784($fp)
	li $t2, 0
	bne $t1, $t2, label367
	j label366
label366:
	li $t0, 1
	sw $t0, -3780($fp)
label367:
	lw $t0, -496($fp)
	sw $t0, -3788($fp)
	lw $t0, -3780($fp)
	lw $t1, -3788($fp)
	add $t0, $t0, $t1
	sw $t0, -3792($fp)
	li $t0, 0
	sw $t0, -3796($fp)
	lw $t0, -484($fp)
	sw $t0, -3800($fp)
	lw $t1, -3800($fp)
	li $t2, 0
	bne $t1, $t2, label369
	j label368
label368:
	li $t0, 1
	sw $t0, -3796($fp)
label369:
	lw $t1, -3792($fp)
	lw $t2, -3796($fp)
	bne $t1, $t2, label360
	j label361
label360:
	li $t0, 1
	sw $t0, -3744($fp)
label361:
	lw $ra, -4($fp)
	lw $v0, -3744($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4476
	li $t0, 39181
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	li $t0, 3008
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	li $t0, 48040
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	li $t0, 338
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	li $t0, 22463
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	li $t0, 42448
	sw $t0, -128($fp)
	addi $t0, $fp, -12
	sw $t0, -132($fp)
	li $t0, 0
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
	li $t0, 36758
	sw $t0, -152($fp)
	addi $t0, $fp, -12
	sw $t0, -156($fp)
	li $t0, 1
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
	li $t0, 1868
	sw $t0, -176($fp)
	addi $t0, $fp, -36
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
	li $t0, 12744
	sw $t0, -200($fp)
	addi $t0, $fp, -36
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
	li $t0, 56251
	sw $t0, -224($fp)
	addi $t0, $fp, -36
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
	li $t0, 5295
	sw $t0, -248($fp)
	addi $t0, $fp, -36
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
	li $t0, 57868
	sw $t0, -272($fp)
	addi $t0, $fp, -36
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
	li $t0, 38764
	sw $t0, -296($fp)
	addi $t0, $fp, -36
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
	li $t0, 16012
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	li $t0, 41503
	sw $t0, -332($fp)
	addi $t0, $fp, -40
	sw $t0, -336($fp)
	li $t0, 0
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
	li $t0, 18225
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	li $t0, 38993
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -376($fp)
	li $t0, 59167
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -388($fp)
	li $t0, 21736
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -400($fp)
	li $t0, 17275
	sw $t0, -404($fp)
	addi $t0, $fp, -64
	sw $t0, -408($fp)
	li $t0, 0
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
	li $t0, 64489
	sw $t0, -428($fp)
	addi $t0, $fp, -64
	sw $t0, -432($fp)
	li $t0, 1
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
	li $t0, 33810
	sw $t0, -452($fp)
	addi $t0, $fp, -64
	sw $t0, -456($fp)
	li $t0, 2
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
	li $t0, 218
	sw $t0, -476($fp)
	addi $t0, $fp, -64
	sw $t0, -480($fp)
	li $t0, 3
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
	li $t0, 33572
	sw $t0, -500($fp)
	addi $t0, $fp, -64
	sw $t0, -504($fp)
	li $t0, 4
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
	li $t0, 26071
	sw $t0, -524($fp)
	addi $t0, $fp, -64
	sw $t0, -528($fp)
	li $t0, 5
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
	li $t0, 22130
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -556($fp)
	li $t0, 11729
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -568($fp)
	li $t0, 27402
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -580($fp)
	li $t0, 11585
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	li $t0, 23743
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	li $t0, 12340
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	li $t0, 50766
	sw $t0, -680($fp)
	addi $t0, $fp, -632
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
	li $t0, 26751
	sw $t0, -704($fp)
	addi $t0, $fp, -632
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
	li $t0, 60380
	sw $t0, -728($fp)
	addi $t0, $fp, -632
	sw $t0, -732($fp)
	li $t0, 2
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
	li $t0, 51105
	sw $t0, -752($fp)
	addi $t0, $fp, -632
	sw $t0, -756($fp)
	li $t0, 3
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
	li $t0, 49214
	sw $t0, -776($fp)
	addi $t0, $fp, -632
	sw $t0, -780($fp)
	li $t0, 4
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
	li $t0, 37293
	sw $t0, -800($fp)
	addi $t0, $fp, -632
	sw $t0, -804($fp)
	li $t0, 5
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
	li $t0, 22327
	sw $t0, -824($fp)
	addi $t0, $fp, -632
	sw $t0, -828($fp)
	li $t0, 6
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
	li $t0, 51083
	sw $t0, -848($fp)
	addi $t0, $fp, -632
	sw $t0, -852($fp)
	li $t0, 7
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
	li $t0, 50037
	sw $t0, -872($fp)
	addi $t0, $fp, -632
	sw $t0, -876($fp)
	li $t0, 8
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
	li $t0, 13043
	sw $t0, -896($fp)
	addi $t0, $fp, -632
	sw $t0, -900($fp)
	li $t0, 9
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
	li $t0, 56378
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	sw $t0, -928($fp)
	li $t0, 42369
	sw $t0, -932($fp)
	addi $t0, $fp, -652
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
	li $t0, 51807
	sw $t0, -956($fp)
	addi $t0, $fp, -652
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
	li $t0, 6854
	sw $t0, -980($fp)
	addi $t0, $fp, -652
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
	li $t0, 18337
	sw $t0, -1004($fp)
	addi $t0, $fp, -652
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
	li $t0, 4496
	sw $t0, -1028($fp)
	addi $t0, $fp, -652
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
	li $t0, 45847
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	sw $t0, -1060($fp)
label370:
	li $t0, 11968
	sw $t0, -1064($fp)
	li $t0, 63123
	sw $t0, -1068($fp)
	lw $t0, -1064($fp)
	lw $t1, -1068($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1072($fp)
	li $t0, 10921
	sw $t0, -1076($fp)
	lw $t0, -96($fp)
	sw $t0, -1080($fp)
	lw $t0, -1076($fp)
	lw $t1, -1080($fp)
	mul $t0, $t0, $t1
	sw $t0, -1084($fp)
	addi $t0, $fp, -36
	sw $t0, -1088($fp)
	lw $t0, -108($fp)
	sw $t0, -1092($fp)
	li $t0, 4
	lw $t1, -1092($fp)
	mul $t0, $t0, $t1
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	lw $t1, -1088($fp)
	add $t0, $t0, $t1
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	lw $t1, 0($t0)
	sw $t1, -1104($fp)
	addi $sp, $sp, -4
	lw $t0, -1084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1104($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1108($fp)
	addi $sp, $sp, 12
	lw $t0, -1072($fp)
	lw $t1, -1108($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1112($fp)
	lw $t1, -1112($fp)
	li $t2, 0
	bne $t1, $t2, label371
	j label372
label371:
	lw $t0, -120($fp)
	sw $t0, -1116($fp)
	li $t0, 20578
	sw $t0, -1120($fp)
	lw $t0, -924($fp)
	sw $t0, -1124($fp)
	lw $t0, -1120($fp)
	lw $t1, -1124($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1128($fp)
	li $t0, 19935
	sw $t0, -1132($fp)
	lw $t0, -1128($fp)
	lw $t1, -1132($fp)
	add $t0, $t0, $t1
	sw $t0, -1136($fp)
	li $t0, 44494
	sw $t0, -1140($fp)
	li $t0, 0
	sw $t0, -1144($fp)
	li $t0, 60042
	sw $t0, -1148($fp)
	li $t0, 63341
	sw $t0, -1152($fp)
	lw $t1, -1148($fp)
	lw $t2, -1152($fp)
	beq $t1, $t2, label376
	j label377
label376:
	li $t0, 1
	sw $t0, -1144($fp)
label377:
	lw $t0, -564($fp)
	sw $t0, -1156($fp)
	addi $sp, $sp, -4
	lw $t0, -1116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1156($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1160($fp)
	addi $sp, $sp, 24
	lw $t1, -1160($fp)
	li $t2, 0
	bne $t1, $t2, label373
	j label374
label373:
	li $t0, 0
	sw $t0, -1164($fp)
	lw $t0, -588($fp)
	sw $t0, -1168($fp)
	lw $t1, -1168($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label378
label378:
	li $t0, 1
	sw $t0, -1164($fp)
label379:
	j label375
label374:
	li $t0, 0
	sw $t0, -1172($fp)
	addi $t0, $fp, -40
	sw $t0, -1176($fp)
	lw $t0, -360($fp)
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
	li $t0, 0
	lw $t1, -1192($fp)
	sub $t0, $t0, $t1
	sw $t0, -1196($fp)
	li $t0, 0
	sw $t0, -1200($fp)
	li $t0, 56223
	sw $t0, -1204($fp)
	lw $t1, -1204($fp)
	li $t2, 0
	bne $t1, $t2, label383
	j label382
label382:
	li $t0, 1
	sw $t0, -1200($fp)
label383:
	lw $t1, -1196($fp)
	lw $t2, -1200($fp)
	bne $t1, $t2, label380
	j label381
label380:
	li $t0, 1
	sw $t0, -1172($fp)
label381:
label375:
	j label370
label372:
	addi $t0, $fp, -632
	sw $t0, -1208($fp)
	lw $t0, -1056($fp)
	sw $t0, -1212($fp)
	li $t0, 4
	lw $t1, -1212($fp)
	mul $t0, $t0, $t1
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	lw $t1, -1208($fp)
	add $t0, $t0, $t1
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	lw $t1, 0($t0)
	sw $t1, -1224($fp)
	lw $t0, -384($fp)
	sw $t0, -1228($fp)
	lw $t0, -1224($fp)
	lw $t1, -1228($fp)
	add $t0, $t0, $t1
	sw $t0, -1232($fp)
	addi $sp, $sp, -4
	lw $t0, -1232($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1236($fp)
	addi $sp, $sp, 8
	li $t0, 47980
	sw $t0, -1240($fp)
	li $t0, 0
	lw $t1, -1240($fp)
	sub $t0, $t0, $t1
	sw $t0, -1244($fp)
	addi $sp, $sp, -4
	lw $t0, -1236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1244($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1248($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -1252($fp)
	li $t0, 0
	sw $t0, -1256($fp)
	li $t0, 0
	sw $t0, -1260($fp)
	lw $t0, -564($fp)
	sw $t0, -1264($fp)
	lw $t1, -1264($fp)
	li $t2, 0
	bne $t1, $t2, label391
	j label390
label391:
	lw $t0, -108($fp)
	sw $t0, -1268($fp)
	lw $t1, -1268($fp)
	li $t2, 0
	bne $t1, $t2, label389
	j label390
label389:
	li $t0, 1
	sw $t0, -1260($fp)
label390:
	li $t0, 41181
	sw $t0, -1272($fp)
	li $t0, 16751
	sw $t0, -1276($fp)
	li $t0, 0
	lw $t1, -1276($fp)
	sub $t0, $t0, $t1
	sw $t0, -1280($fp)
	li $t0, 0
	sw $t0, -1284($fp)
	li $t0, 0
	sw $t0, -1288($fp)
	lw $t0, -576($fp)
	sw $t0, -1292($fp)
	li $t0, 60320
	sw $t0, -1296($fp)
	lw $t1, -1292($fp)
	lw $t2, -1296($fp)
	ble $t1, $t2, label394
	j label395
label394:
	li $t0, 1
	sw $t0, -1288($fp)
label395:
	lw $t0, -120($fp)
	sw $t0, -1300($fp)
	lw $t1, -1288($fp)
	lw $t2, -1300($fp)
	blt $t1, $t2, label392
	j label393
label392:
	li $t0, 1
	sw $t0, -1284($fp)
label393:
	li $t0, 31520
	sw $t0, -1304($fp)
	li $t0, 14430
	sw $t0, -1308($fp)
	lw $t0, -1304($fp)
	lw $t1, -1308($fp)
	sub $t0, $t0, $t1
	sw $t0, -1312($fp)
	addi $sp, $sp, -4
	lw $t0, -1260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1312($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1316($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -1316($fp)
	sub $t0, $t0, $t1
	sw $t0, -1320($fp)
	lw $t1, -1320($fp)
	li $t2, 0
	bne $t1, $t2, label388
	j label387
label387:
	li $t0, 1
	sw $t0, -1256($fp)
label388:
	li $t0, 55164
	sw $t0, -1324($fp)
	li $t0, 0
	lw $t1, -1324($fp)
	sub $t0, $t0, $t1
	sw $t0, -1328($fp)
	addi $sp, $sp, -4
	lw $t0, -1328($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1332($fp)
	addi $sp, $sp, 8
	lw $t1, -1256($fp)
	lw $t2, -1332($fp)
	ble $t1, $t2, label386
	j label385
label386:
	addi $t0, $fp, -40
	sw $t0, -1336($fp)
	li $t0, 0
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
	lw $t0, -672($fp)
	sw $t0, -1356($fp)
	lw $t0, -576($fp)
	sw $t0, -1360($fp)
	lw $t0, -1356($fp)
	lw $t1, -1360($fp)
	sub $t0, $t0, $t1
	sw $t0, -1364($fp)
	lw $t1, -1352($fp)
	lw $t2, -1364($fp)
	blt $t1, $t2, label384
	j label385
label384:
	li $t0, 1
	sw $t0, -1252($fp)
label385:
label396:
	li $t0, 0
	sw $t0, -1368($fp)
	addi $t0, $fp, -12
	sw $t0, -1372($fp)
	lw $t0, -552($fp)
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
	lw $t1, -1388($fp)
	li $t2, 0
	bne $t1, $t2, label400
	j label399
label399:
	li $t0, 1
	sw $t0, -1368($fp)
label400:
	lw $t0, -1368($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -1392($fp)
	lw $t1, -1392($fp)
	li $t2, 0
	bne $t1, $t2, label397
	j label398
label397:
	li $t0, 26921
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	sw $t0, -1404($fp)
	li $t0, 0
	sw $t0, -1408($fp)
	addi $t0, $fp, -64
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
	lw $t0, 8($fp)
	sw $t0, -1432($fp)
	lw $t0, -84($fp)
	sw $t0, -1436($fp)
	lw $t0, -1432($fp)
	lw $t1, -1436($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1440($fp)
	lw $t0, -1428($fp)
	lw $t1, -1440($fp)
	add $t0, $t0, $t1
	sw $t0, -1444($fp)
	li $t0, 0
	sw $t0, -1448($fp)
	lw $t0, 4($fp)
	sw $t0, -1452($fp)
	lw $t1, -1452($fp)
	li $t2, 0
	bne $t1, $t2, label405
	j label404
label404:
	li $t0, 1
	sw $t0, -1448($fp)
label405:
	li $t0, 0
	sw $t0, -1456($fp)
	lw $t0, -372($fp)
	sw $t0, -1460($fp)
	lw $t0, -576($fp)
	sw $t0, -1464($fp)
	lw $t0, -1460($fp)
	lw $t1, -1464($fp)
	add $t0, $t0, $t1
	sw $t0, -1468($fp)
	lw $t0, -1056($fp)
	sw $t0, -1472($fp)
	lw $t1, -1468($fp)
	lw $t2, -1472($fp)
	blt $t1, $t2, label406
	j label407
label406:
	li $t0, 1
	sw $t0, -1456($fp)
label407:
	lw $t0, -108($fp)
	sw $t0, -1476($fp)
	addi $t0, $fp, -40
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
	lw $t0, -72($fp)
	sw $t0, -1500($fp)
	addi $sp, $sp, -4
	lw $t0, -1448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1500($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1504($fp)
	addi $sp, $sp, 24
	lw $t0, -1444($fp)
	lw $t1, -1504($fp)
	sub $t0, $t0, $t1
	sw $t0, -1508($fp)
	lw $t1, -1508($fp)
	li $t2, 0
	bne $t1, $t2, label403
	j label402
label403:
	lw $t0, -120($fp)
	sw $t0, -1512($fp)
	lw $t0, 12($fp)
	sw $t0, -1516($fp)
	lw $t0, -1512($fp)
	lw $t1, -1516($fp)
	add $t0, $t0, $t1
	sw $t0, -1520($fp)
	lw $t1, -1520($fp)
	li $t2, 0
	bne $t1, $t2, label401
	j label402
label401:
	li $t0, 1
	sw $t0, -1408($fp)
label402:
	li $t0, 1248
	sw $t0, -1524($fp)
label408:
	lw $t0, -1400($fp)
	sw $t0, -1528($fp)
	li $t0, 53792
	sw $t0, -1532($fp)
	li $t0, 23961
	sw $t0, -1536($fp)
	lw $t0, -1532($fp)
	lw $t1, -1536($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1540($fp)
	lw $t0, -1528($fp)
	lw $t1, -1540($fp)
	sub $t0, $t0, $t1
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -1548($fp)
	lw $t1, -1548($fp)
	li $t2, 0
	bne $t1, $t2, label409
	j label410
label409:
	addi $t0, $fp, -40
	sw $t0, -1552($fp)
	li $t0, 0
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
	lw $t1, -1568($fp)
	sub $t0, $t0, $t1
	sw $t0, -1572($fp)
	li $t0, 0
	lw $t1, -1572($fp)
	sub $t0, $t0, $t1
	sw $t0, -1576($fp)
	li $t0, 0
	lw $t1, -1576($fp)
	sub $t0, $t0, $t1
	sw $t0, -1580($fp)
	lw $ra, -4($fp)
	lw $v0, -1580($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label408
label410:
	j label396
label398:
	li $t0, 0
	sw $t0, -1584($fp)
	li $t0, 0
	sw $t0, -1588($fp)
	lw $t0, -120($fp)
	sw $t0, -1592($fp)
	lw $t1, -1592($fp)
	li $t2, 0
	bne $t1, $t2, label414
	j label413
label413:
	li $t0, 1
	sw $t0, -1588($fp)
label414:
	lw $t0, -576($fp)
	sw $t0, -1596($fp)
	lw $t0, -1588($fp)
	lw $t1, -1596($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1600($fp)
	li $t0, 0
	sw $t0, -1604($fp)
	addi $t0, $fp, -40
	sw $t0, -1608($fp)
	li $t0, 0
	sw $t0, -1612($fp)
	li $t0, 4
	lw $t1, -1612($fp)
	mul $t0, $t0, $t1
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	lw $t1, -1608($fp)
	add $t0, $t0, $t1
	sw $t0, -1620($fp)
	lw $t0, -1620($fp)
	lw $t1, 0($t0)
	sw $t1, -1624($fp)
	lw $t1, -1624($fp)
	li $t2, 0
	bne $t1, $t2, label416
	j label415
label415:
	li $t0, 1
	sw $t0, -1604($fp)
label416:
	lw $t0, -1600($fp)
	lw $t1, -1604($fp)
	add $t0, $t0, $t1
	sw $t0, -1628($fp)
	addi $t0, $fp, -652
	sw $t0, -1632($fp)
	addi $t0, $fp, -36
	sw $t0, -1636($fp)
	lw $t0, -564($fp)
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
	li $t0, 4
	lw $t1, -1652($fp)
	mul $t0, $t0, $t1
	sw $t0, -1656($fp)
	lw $t0, -1656($fp)
	lw $t1, -1632($fp)
	add $t0, $t0, $t1
	sw $t0, -1660($fp)
	lw $t0, -1660($fp)
	lw $t1, 0($t0)
	sw $t1, -1664($fp)
	lw $t1, -1628($fp)
	lw $t2, -1664($fp)
	ble $t1, $t2, label411
	j label412
label411:
	li $t0, 1
	sw $t0, -1584($fp)
label412:
	lw $t0, -72($fp)
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -1680($fp)
	lw $t0, -1680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -1688($fp)
	li $t0, 0
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
	addi $t0, $fp, -12
	sw $t0, -1708($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -1728($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -1748($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -1768($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -1788($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -1808($fp)
	li $t0, 4
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
	lw $t0, -1824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1828($fp)
	li $t0, 5
	sw $t0, -1832($fp)
	li $t0, 4
	lw $t1, -1832($fp)
	mul $t0, $t0, $t1
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	lw $t1, -1828($fp)
	add $t0, $t0, $t1
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	lw $t1, 0($t0)
	sw $t1, -1844($fp)
	lw $t0, -1844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -324($fp)
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1852($fp)
	li $t0, 0
	sw $t0, -1856($fp)
	li $t0, 4
	lw $t1, -1856($fp)
	mul $t0, $t0, $t1
	sw $t0, -1860($fp)
	lw $t0, -1860($fp)
	lw $t1, -1852($fp)
	add $t0, $t0, $t1
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	lw $t1, 0($t0)
	sw $t1, -1868($fp)
	lw $t0, -1868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -360($fp)
	sw $t0, -1872($fp)
	lw $t0, -1872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -372($fp)
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -384($fp)
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -396($fp)
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
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
	addi $t0, $fp, -64
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
	addi $t0, $fp, -64
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
	addi $t0, $fp, -64
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
	addi $t0, $fp, -64
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
	addi $t0, $fp, -64
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
	lw $t0, -552($fp)
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -564($fp)
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -576($fp)
	sw $t0, -2016($fp)
	lw $t0, -2016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -588($fp)
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2024($fp)
	li $t0, 0
	sw $t0, -2028($fp)
	lw $t0, -564($fp)
	sw $t0, -2032($fp)
	lw $t1, -2032($fp)
	li $t2, 0
	bne $t1, $t2, label419
	j label422
label422:
	lw $t0, 16($fp)
	sw $t0, -2036($fp)
	lw $t1, -2036($fp)
	li $t2, 0
	bne $t1, $t2, label419
	j label421
label421:
	li $t0, 51536
	sw $t0, -2040($fp)
	lw $t1, -2040($fp)
	li $t2, 0
	bne $t1, $t2, label419
	j label420
label419:
	li $t0, 1
	sw $t0, -2028($fp)
label420:
	li $t0, 0
	sw $t0, -2044($fp)
	addi $t0, $fp, -40
	sw $t0, -2048($fp)
	li $t0, 0
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
	lw $t1, -2064($fp)
	li $t2, 0
	bne $t1, $t2, label425
	j label424
label425:
	lw $t0, -588($fp)
	sw $t0, -2068($fp)
	lw $t1, -2068($fp)
	li $t2, 0
	bne $t1, $t2, label423
	j label424
label423:
	li $t0, 1
	sw $t0, -2044($fp)
label424:
	addi $sp, $sp, -4
	lw $t0, -2028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2044($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2072($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -2072($fp)
	sub $t0, $t0, $t1
	sw $t0, -2076($fp)
	li $t0, 29482
	sw $t0, -2080($fp)
	li $t0, 49197
	sw $t0, -2084($fp)
	lw $t0, -2080($fp)
	lw $t1, -2084($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2088($fp)
	lw $t1, -2076($fp)
	lw $t2, -2088($fp)
	bgt $t1, $t2, label417
	j label418
label417:
	li $t0, 1
	sw $t0, -2024($fp)
label418:
	lw $t0, -2024($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -2092($fp)
	lw $ra, -4($fp)
	lw $v0, -2092($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -2096($fp)
	li $t0, 0
	sw $t0, -2100($fp)
	li $t0, 8440
	sw $t0, -2104($fp)
	lw $t1, -2104($fp)
	li $t2, 0
	bne $t1, $t2, label429
	j label430
label429:
	li $t0, 1
	sw $t0, -2100($fp)
label430:
	li $t0, 49341
	sw $t0, -2108($fp)
	addi $sp, $sp, -4
	lw $t0, -2100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2108($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2112($fp)
	addi $sp, $sp, 12
	lw $t1, -2112($fp)
	li $t2, 0
	bne $t1, $t2, label426
	j label428
label428:
	li $t0, 3740
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -2120($fp)
	li $t0, 4239
	sw $t0, -2124($fp)
	addi $sp, $sp, -4
	lw $t0, -2120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2124($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2128($fp)
	addi $sp, $sp, 12
	lw $t1, -2128($fp)
	li $t2, 0
	bne $t1, $t2, label426
	j label427
label426:
	li $t0, 1
	sw $t0, -2096($fp)
label427:
label431:
	lw $t0, -564($fp)
	sw $t0, -2132($fp)
	li $t0, 0
	lw $t1, -2132($fp)
	sub $t0, $t0, $t1
	sw $t0, -2136($fp)
	lw $t1, -2136($fp)
	li $t2, 0
	bne $t1, $t2, label432
	j label434
label434:
	li $t0, 64663
	sw $t0, -2140($fp)
	li $t0, 35262
	sw $t0, -2144($fp)
	lw $t0, -2140($fp)
	lw $t1, -2144($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2148($fp)
	lw $t1, -2148($fp)
	li $t2, 0
	bne $t1, $t2, label432
	j label433
label432:
	li $t0, 13557
	sw $t0, -2240($fp)
	addi $t0, $fp, -2164
	sw $t0, -2244($fp)
	li $t0, 0
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2252($fp)
	lw $t0, -2244($fp)
	lw $t1, -2252($fp)
	add $t0, $t0, $t1
	sw $t0, -2256($fp)
	lw $t0, -2240($fp)
	lw $t1, -2256($fp)
	sw $t0, 0($t1)
	lw $t0, -2256($fp)
	lw $t1, 0($t0)
	sw $t1, -2260($fp)
	li $t0, 47003
	sw $t0, -2264($fp)
	addi $t0, $fp, -2164
	sw $t0, -2268($fp)
	li $t0, 1
	sw $t0, -2272($fp)
	lw $t0, -2272($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2276($fp)
	lw $t0, -2268($fp)
	lw $t1, -2276($fp)
	add $t0, $t0, $t1
	sw $t0, -2280($fp)
	lw $t0, -2264($fp)
	lw $t1, -2280($fp)
	sw $t0, 0($t1)
	lw $t0, -2280($fp)
	lw $t1, 0($t0)
	sw $t1, -2284($fp)
	li $t0, 52012
	sw $t0, -2288($fp)
	addi $t0, $fp, -2164
	sw $t0, -2292($fp)
	li $t0, 2
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2300($fp)
	lw $t0, -2292($fp)
	lw $t1, -2300($fp)
	add $t0, $t0, $t1
	sw $t0, -2304($fp)
	lw $t0, -2288($fp)
	lw $t1, -2304($fp)
	sw $t0, 0($t1)
	lw $t0, -2304($fp)
	lw $t1, 0($t0)
	sw $t1, -2308($fp)
	li $t0, 54738
	sw $t0, -2312($fp)
	addi $t0, $fp, -2164
	sw $t0, -2316($fp)
	li $t0, 3
	sw $t0, -2320($fp)
	lw $t0, -2320($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2324($fp)
	lw $t0, -2316($fp)
	lw $t1, -2324($fp)
	add $t0, $t0, $t1
	sw $t0, -2328($fp)
	lw $t0, -2312($fp)
	lw $t1, -2328($fp)
	sw $t0, 0($t1)
	lw $t0, -2328($fp)
	lw $t1, 0($t0)
	sw $t1, -2332($fp)
	li $t0, 36631
	sw $t0, -2336($fp)
	addi $t0, $fp, -2172
	sw $t0, -2340($fp)
	li $t0, 0
	sw $t0, -2344($fp)
	lw $t0, -2344($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2348($fp)
	lw $t0, -2340($fp)
	lw $t1, -2348($fp)
	add $t0, $t0, $t1
	sw $t0, -2352($fp)
	lw $t0, -2336($fp)
	lw $t1, -2352($fp)
	sw $t0, 0($t1)
	lw $t0, -2352($fp)
	lw $t1, 0($t0)
	sw $t1, -2356($fp)
	li $t0, 54332
	sw $t0, -2360($fp)
	addi $t0, $fp, -2172
	sw $t0, -2364($fp)
	li $t0, 1
	sw $t0, -2368($fp)
	lw $t0, -2368($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2372($fp)
	lw $t0, -2364($fp)
	lw $t1, -2372($fp)
	add $t0, $t0, $t1
	sw $t0, -2376($fp)
	lw $t0, -2360($fp)
	lw $t1, -2376($fp)
	sw $t0, 0($t1)
	lw $t0, -2376($fp)
	lw $t1, 0($t0)
	sw $t1, -2380($fp)
	li $t0, 14062
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	sw $t0, -2388($fp)
	lw $t0, -2388($fp)
	sw $t0, -2392($fp)
	li $t0, 63553
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	sw $t0, -2400($fp)
	lw $t0, -2400($fp)
	sw $t0, -2404($fp)
	li $t0, 13443
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	sw $t0, -2412($fp)
	lw $t0, -2412($fp)
	sw $t0, -2416($fp)
	li $t0, 24468
	sw $t0, -2420($fp)
	lw $t0, -2420($fp)
	sw $t0, -2424($fp)
	lw $t0, -2424($fp)
	sw $t0, -2428($fp)
	li $t0, 9439
	sw $t0, -2432($fp)
	addi $t0, $fp, -2208
	sw $t0, -2436($fp)
	li $t0, 0
	sw $t0, -2440($fp)
	lw $t0, -2440($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2444($fp)
	lw $t0, -2436($fp)
	lw $t1, -2444($fp)
	add $t0, $t0, $t1
	sw $t0, -2448($fp)
	lw $t0, -2432($fp)
	lw $t1, -2448($fp)
	sw $t0, 0($t1)
	lw $t0, -2448($fp)
	lw $t1, 0($t0)
	sw $t1, -2452($fp)
	li $t0, 51134
	sw $t0, -2456($fp)
	addi $t0, $fp, -2208
	sw $t0, -2460($fp)
	li $t0, 1
	sw $t0, -2464($fp)
	lw $t0, -2464($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2468($fp)
	lw $t0, -2460($fp)
	lw $t1, -2468($fp)
	add $t0, $t0, $t1
	sw $t0, -2472($fp)
	lw $t0, -2456($fp)
	lw $t1, -2472($fp)
	sw $t0, 0($t1)
	lw $t0, -2472($fp)
	lw $t1, 0($t0)
	sw $t1, -2476($fp)
	li $t0, 25717
	sw $t0, -2480($fp)
	addi $t0, $fp, -2208
	sw $t0, -2484($fp)
	li $t0, 2
	sw $t0, -2488($fp)
	lw $t0, -2488($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2492($fp)
	lw $t0, -2484($fp)
	lw $t1, -2492($fp)
	add $t0, $t0, $t1
	sw $t0, -2496($fp)
	lw $t0, -2480($fp)
	lw $t1, -2496($fp)
	sw $t0, 0($t1)
	lw $t0, -2496($fp)
	lw $t1, 0($t0)
	sw $t1, -2500($fp)
	li $t0, 63231
	sw $t0, -2504($fp)
	addi $t0, $fp, -2208
	sw $t0, -2508($fp)
	li $t0, 3
	sw $t0, -2512($fp)
	lw $t0, -2512($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2516($fp)
	lw $t0, -2508($fp)
	lw $t1, -2516($fp)
	add $t0, $t0, $t1
	sw $t0, -2520($fp)
	lw $t0, -2504($fp)
	lw $t1, -2520($fp)
	sw $t0, 0($t1)
	lw $t0, -2520($fp)
	lw $t1, 0($t0)
	sw $t1, -2524($fp)
	li $t0, 9559
	sw $t0, -2528($fp)
	addi $t0, $fp, -2208
	sw $t0, -2532($fp)
	li $t0, 4
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
	li $t0, 33819
	sw $t0, -2552($fp)
	addi $t0, $fp, -2208
	sw $t0, -2556($fp)
	li $t0, 5
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
	li $t0, 4288
	sw $t0, -2576($fp)
	addi $t0, $fp, -2208
	sw $t0, -2580($fp)
	li $t0, 6
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
	li $t0, 38017
	sw $t0, -2600($fp)
	addi $t0, $fp, -2208
	sw $t0, -2604($fp)
	li $t0, 7
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
	li $t0, 22233
	sw $t0, -2624($fp)
	addi $t0, $fp, -2208
	sw $t0, -2628($fp)
	li $t0, 8
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
	li $t0, 22849
	sw $t0, -2648($fp)
	addi $t0, $fp, -2236
	sw $t0, -2652($fp)
	li $t0, 0
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
	li $t0, 27172
	sw $t0, -2672($fp)
	addi $t0, $fp, -2236
	sw $t0, -2676($fp)
	li $t0, 1
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
	li $t0, 8234
	sw $t0, -2696($fp)
	addi $t0, $fp, -2236
	sw $t0, -2700($fp)
	li $t0, 2
	sw $t0, -2704($fp)
	lw $t0, -2704($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2708($fp)
	lw $t0, -2700($fp)
	lw $t1, -2708($fp)
	add $t0, $t0, $t1
	sw $t0, -2712($fp)
	lw $t0, -2696($fp)
	lw $t1, -2712($fp)
	sw $t0, 0($t1)
	lw $t0, -2712($fp)
	lw $t1, 0($t0)
	sw $t1, -2716($fp)
	li $t0, 52332
	sw $t0, -2720($fp)
	addi $t0, $fp, -2236
	sw $t0, -2724($fp)
	li $t0, 3
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
	li $t0, 10833
	sw $t0, -2744($fp)
	addi $t0, $fp, -2236
	sw $t0, -2748($fp)
	li $t0, 4
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
	li $t0, 57575
	sw $t0, -2768($fp)
	addi $t0, $fp, -2236
	sw $t0, -2772($fp)
	li $t0, 5
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
	li $t0, 60772
	sw $t0, -2792($fp)
	addi $t0, $fp, -2236
	sw $t0, -2796($fp)
	li $t0, 6
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
	li $t0, 15072
	sw $t0, -2816($fp)
	lw $t0, -2816($fp)
	sw $t0, -2820($fp)
	lw $t0, -2820($fp)
	sw $t0, -2824($fp)
	li $t0, 61316
	sw $t0, -2828($fp)
	lw $t0, -2828($fp)
	sw $t0, -2832($fp)
	lw $t0, -2832($fp)
	sw $t0, -2836($fp)
	li $t0, 59900
	sw $t0, -2840($fp)
	lw $t0, -2840($fp)
	sw $t0, -2844($fp)
	lw $t0, -2844($fp)
	sw $t0, -2848($fp)
	li $t0, 1755
	sw $t0, -2852($fp)
	lw $t0, -2852($fp)
	sw $t0, -2856($fp)
	lw $t0, -2856($fp)
	sw $t0, -2860($fp)
	li $t0, 31041
	sw $t0, -2864($fp)
	lw $t0, -2864($fp)
	sw $t0, -2868($fp)
	lw $t0, -2868($fp)
	sw $t0, -2872($fp)
	li $t0, 0
	sw $t0, -2876($fp)
	addi $t0, $fp, -2236
	sw $t0, -2880($fp)
	li $t0, 0
	sw $t0, -2884($fp)
	li $t0, 7921
	sw $t0, -2888($fp)
	lw $t0, -564($fp)
	sw $t0, -2892($fp)
	lw $t1, -2888($fp)
	lw $t2, -2892($fp)
	blt $t1, $t2, label438
	j label439
label438:
	li $t0, 1
	sw $t0, -2884($fp)
label439:
	li $t0, 4
	lw $t1, -2884($fp)
	mul $t0, $t0, $t1
	sw $t0, -2896($fp)
	lw $t0, -2896($fp)
	lw $t1, -2880($fp)
	add $t0, $t0, $t1
	sw $t0, -2900($fp)
	lw $t0, -2900($fp)
	lw $t1, 0($t0)
	sw $t1, -2904($fp)
	li $t0, 48758
	sw $t0, -2908($fp)
	li $t0, 17517
	sw $t0, -2912($fp)
	lw $t0, -2908($fp)
	lw $t1, -2912($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2916($fp)
	lw $t0, 12($fp)
	sw $t0, -2920($fp)
	lw $t0, -2916($fp)
	lw $t1, -2920($fp)
	add $t0, $t0, $t1
	sw $t0, -2924($fp)
	li $t0, 0
	sw $t0, -2928($fp)
	lw $t0, -2868($fp)
	sw $t0, -2932($fp)
	lw $t1, -2932($fp)
	li $t2, 0
	bne $t1, $t2, label441
	j label440
label440:
	li $t0, 1
	sw $t0, -2928($fp)
label441:
	li $t0, 0
	lw $t1, -2928($fp)
	sub $t0, $t0, $t1
	sw $t0, -2936($fp)
	addi $sp, $sp, -4
	lw $t0, -2924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2936($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2940($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -2940($fp)
	sub $t0, $t0, $t1
	sw $t0, -2944($fp)
	lw $t0, -2904($fp)
	lw $t1, -2944($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2948($fp)
	lw $t1, -2948($fp)
	li $t2, 0
	bne $t1, $t2, label437
	j label436
label437:
	addi $t0, $fp, -64
	sw $t0, -2952($fp)
	lw $t0, -564($fp)
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
	li $t0, 0
	lw $t1, -2968($fp)
	sub $t0, $t0, $t1
	sw $t0, -2972($fp)
	addi $sp, $sp, -4
	lw $t0, -2972($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2976($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -2976($fp)
	sub $t0, $t0, $t1
	sw $t0, -2980($fp)
	lw $t1, -2980($fp)
	li $t2, 0
	bne $t1, $t2, label436
	j label435
label435:
	li $t0, 1
	sw $t0, -2876($fp)
label436:
	li $t0, 0
	sw $t0, -2984($fp)
	li $t0, 62660
	sw $t0, -2988($fp)
	li $t0, 19853
	sw $t0, -2992($fp)
	lw $t1, -2988($fp)
	lw $t2, -2992($fp)
	bne $t1, $t2, label447
	j label446
label447:
	li $t0, 6313
	sw $t0, -2996($fp)
	li $t0, 11186
	sw $t0, -3000($fp)
	lw $t0, -2996($fp)
	lw $t1, -3000($fp)
	sub $t0, $t0, $t1
	sw $t0, -3004($fp)
	lw $t1, -3004($fp)
	li $t2, 0
	bne $t1, $t2, label445
	j label446
label445:
	li $t0, 1
	sw $t0, -2984($fp)
label446:
	lw $t0, -2984($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -3008($fp)
	lw $t1, -3008($fp)
	li $t2, 0
	bne $t1, $t2, label442
	j label443
label442:
	addi $t0, $fp, -2208
	sw $t0, -3012($fp)
	li $t0, 0
	sw $t0, -3016($fp)
	li $t0, 17870
	sw $t0, -3020($fp)
	lw $t1, -3020($fp)
	li $t2, 0
	bne $t1, $t2, label448
	j label450
label450:
	lw $t0, -360($fp)
	sw $t0, -3024($fp)
	lw $t1, -3024($fp)
	li $t2, 0
	bne $t1, $t2, label448
	j label449
label448:
	li $t0, 1
	sw $t0, -3016($fp)
label449:
	lw $t0, -3016($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -3028($fp)
	li $t0, 4
	lw $t1, -3028($fp)
	mul $t0, $t0, $t1
	sw $t0, -3032($fp)
	lw $t0, -3032($fp)
	lw $t1, -3012($fp)
	add $t0, $t0, $t1
	sw $t0, -3036($fp)
	lw $t0, -3036($fp)
	lw $t1, 0($t0)
	sw $t1, -3040($fp)
	lw $ra, -4($fp)
	lw $v0, -3040($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label444
label443:
label451:
	li $t0, 19756
	sw $t0, -3044($fp)
	lw $t1, -3044($fp)
	li $t2, 0
	bne $t1, $t2, label452
	j label453
label452:
	addi $t0, $fp, -40
	sw $t0, -3048($fp)
	li $t0, 0
	sw $t0, -3052($fp)
	li $t0, 4
	lw $t1, -3052($fp)
	mul $t0, $t0, $t1
	sw $t0, -3056($fp)
	lw $t0, -3056($fp)
	lw $t1, -3048($fp)
	add $t0, $t0, $t1
	sw $t0, -3060($fp)
	lw $t0, -3060($fp)
	lw $t1, 0($t0)
	sw $t1, -3064($fp)
	li $t0, 0
	sw $t0, -3068($fp)
	lw $t0, -2856($fp)
	sw $t0, -3072($fp)
	lw $t1, -3072($fp)
	li $t2, 0
	bne $t1, $t2, label459
	j label457
label459:
	li $t0, 35654
	sw $t0, -3076($fp)
	lw $t1, -3076($fp)
	li $t2, 0
	bne $t1, $t2, label457
	j label458
label457:
	li $t0, 1
	sw $t0, -3068($fp)
label458:
	addi $sp, $sp, -4
	lw $t0, -3064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3068($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3080($fp)
	addi $sp, $sp, 12
	lw $t1, -3080($fp)
	li $t2, 0
	bne $t1, $t2, label454
	j label455
label454:
	li $t0, 0
	sw $t0, -3084($fp)
	li $t0, 0
	sw $t0, -3088($fp)
	lw $t0, -120($fp)
	sw $t0, -3092($fp)
	lw $t1, -3092($fp)
	li $t2, 0
	bne $t1, $t2, label463
	j label462
label462:
	li $t0, 1
	sw $t0, -3088($fp)
label463:
	li $t0, 0
	sw $t0, -3096($fp)
	li $t0, 61371
	sw $t0, -3100($fp)
	li $t0, 0
	lw $t1, -3100($fp)
	sub $t0, $t0, $t1
	sw $t0, -3104($fp)
	lw $t1, -3104($fp)
	li $t2, 0
	bne $t1, $t2, label464
	j label466
label466:
	lw $t0, -2412($fp)
	sw $t0, -3108($fp)
	lw $t1, -3108($fp)
	li $t2, 0
	bne $t1, $t2, label464
	j label465
label464:
	li $t0, 1
	sw $t0, -3096($fp)
label465:
	addi $sp, $sp, -4
	lw $t0, -3096($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3112($fp)
	addi $sp, $sp, 8
	lw $t0, -3088($fp)
	lw $t1, -3112($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3116($fp)
	li $t0, 0
	sw $t0, -3120($fp)
	li $t0, 25005
	sw $t0, -3124($fp)
	lw $t1, -3124($fp)
	li $t2, 0
	bne $t1, $t2, label468
	j label467
label467:
	li $t0, 1
	sw $t0, -3120($fp)
label468:
	lw $t1, -3116($fp)
	lw $t2, -3120($fp)
	bne $t1, $t2, label460
	j label461
label460:
	li $t0, 1
	sw $t0, -3084($fp)
label461:
	lw $ra, -4($fp)
	lw $v0, -3084($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label456
label455:
	li $t0, 0
	sw $t0, -3128($fp)
	addi $t0, $fp, -12
	sw $t0, -3132($fp)
	li $t0, 1
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
	li $t0, 29294
	sw $t0, -3152($fp)
	li $t0, 52931
	sw $t0, -3156($fp)
	lw $t0, -3152($fp)
	lw $t1, -3156($fp)
	add $t0, $t0, $t1
	sw $t0, -3160($fp)
	lw $t1, -3148($fp)
	lw $t2, -3160($fp)
	beq $t1, $t2, label472
	j label473
label472:
	li $t0, 1
	sw $t0, -3128($fp)
label473:
	lw $t0, -3128($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -3164($fp)
	lw $t1, -3164($fp)
	li $t2, 0
	bne $t1, $t2, label469
	j label470
label469:
	li $t0, 0
	sw $t0, -3168($fp)
	li $t0, 0
	sw $t0, -3172($fp)
	li $t0, 51888
	sw $t0, -3176($fp)
	li $t0, 52143
	sw $t0, -3180($fp)
	lw $t0, -3176($fp)
	lw $t1, -3180($fp)
	mul $t0, $t0, $t1
	sw $t0, -3184($fp)
	li $t0, 0
	lw $t1, -3184($fp)
	sub $t0, $t0, $t1
	sw $t0, -3188($fp)
	lw $t1, -3188($fp)
	li $t2, 0
	bne $t1, $t2, label477
	j label476
label476:
	li $t0, 1
	sw $t0, -3172($fp)
label477:
	lw $t0, -84($fp)
	sw $t0, -3192($fp)
	lw $t0, -3172($fp)
	lw $t1, -3192($fp)
	add $t0, $t0, $t1
	sw $t0, -3196($fp)
	li $t0, 0
	sw $t0, -3200($fp)
	lw $t0, -2388($fp)
	sw $t0, -3204($fp)
	lw $t1, -3204($fp)
	li $t2, 0
	bne $t1, $t2, label479
	j label478
label478:
	li $t0, 1
	sw $t0, -3200($fp)
label479:
	lw $t0, 20($fp)
	sw $t0, -3208($fp)
	lw $t0, -3200($fp)
	lw $t1, -3208($fp)
	sub $t0, $t0, $t1
	sw $t0, -3212($fp)
	li $t0, 0
	sw $t0, -3216($fp)
	lw $t0, -2868($fp)
	sw $t0, -3220($fp)
	lw $t1, -3220($fp)
	li $t2, 0
	bne $t1, $t2, label481
	j label480
label480:
	li $t0, 1
	sw $t0, -3216($fp)
label481:
	lw $t0, -3212($fp)
	lw $t1, -3216($fp)
	add $t0, $t0, $t1
	sw $t0, -3224($fp)
	lw $t1, -3196($fp)
	lw $t2, -3224($fp)
	bgt $t1, $t2, label474
	j label475
label474:
	li $t0, 1
	sw $t0, -3168($fp)
label475:
	j label471
label470:
	li $t0, 0
	sw $t0, -3228($fp)
	lw $t0, -2820($fp)
	sw $t0, -3232($fp)
	li $t0, 37277
	sw $t0, -3236($fp)
	lw $t0, -3232($fp)
	lw $t1, -3236($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3240($fp)
	addi $t0, $fp, -2236
	sw $t0, -3244($fp)
	lw $t0, -108($fp)
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
	li $t0, 33585
	sw $t0, -3264($fp)
	li $t0, 45303
	sw $t0, -3268($fp)
	lw $t0, -3264($fp)
	lw $t1, -3268($fp)
	mul $t0, $t0, $t1
	sw $t0, -3272($fp)
	li $t0, 0
	sw $t0, -3276($fp)
	addi $t0, $fp, -12
	sw $t0, -3280($fp)
	lw $t0, -2400($fp)
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
	addi $t0, $fp, -2164
	sw $t0, -3300($fp)
	li $t0, 0
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
	li $t0, 0
	sw $t0, -3320($fp)
	li $t0, 13447
	sw $t0, -3324($fp)
	lw $t0, -564($fp)
	sw $t0, -3328($fp)
	lw $t0, -3324($fp)
	lw $t1, -3328($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3332($fp)
	li $t0, 36461
	sw $t0, -3336($fp)
	lw $t1, -3332($fp)
	lw $t2, -3336($fp)
	bne $t1, $t2, label486
	j label487
label486:
	li $t0, 1
	sw $t0, -3320($fp)
label487:
	lw $t0, -564($fp)
	sw $t0, -3340($fp)
	li $t0, 28540
	sw $t0, -3344($fp)
	lw $t0, -3340($fp)
	lw $t1, -3344($fp)
	add $t0, $t0, $t1
	sw $t0, -3348($fp)
	li $t0, 42227
	sw $t0, -3352($fp)
	lw $t0, -3348($fp)
	lw $t1, -3352($fp)
	sub $t0, $t0, $t1
	sw $t0, -3356($fp)
	addi $t0, $fp, -64
	sw $t0, -3360($fp)
	li $t0, 4
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
	lw $t0, -2412($fp)
	sw $t0, -3380($fp)
	lw $t0, -552($fp)
	sw $t0, -3384($fp)
	li $t0, 52162
	sw $t0, -3388($fp)
	lw $t0, -3384($fp)
	lw $t1, -3388($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3392($fp)
	li $t0, 34176
	sw $t0, -3396($fp)
	lw $t0, -3392($fp)
	lw $t1, -3396($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3400($fp)
	li $t0, 0
	sw $t0, -3404($fp)
	addi $t0, $fp, -12
	sw $t0, -3408($fp)
	li $t0, 0
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
	li $t0, 0
	sw $t0, -3428($fp)
	lw $t0, -2400($fp)
	sw $t0, -3432($fp)
	lw $t0, -2424($fp)
	sw $t0, -3436($fp)
	lw $t0, -3432($fp)
	lw $t1, -3436($fp)
	add $t0, $t0, $t1
	sw $t0, -3440($fp)
	lw $t0, -384($fp)
	sw $t0, -3444($fp)
	lw $t1, -3440($fp)
	lw $t2, -3444($fp)
	beq $t1, $t2, label490
	j label491
label490:
	li $t0, 1
	sw $t0, -3428($fp)
label491:
	addi $sp, $sp, -4
	lw $t0, -3424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3428($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3448($fp)
	addi $sp, $sp, 12
	lw $t1, -3448($fp)
	li $t2, 0
	bne $t1, $t2, label489
	j label488
label488:
	li $t0, 1
	sw $t0, -3404($fp)
label489:
	addi $sp, $sp, -4
	lw $t0, -3356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3404($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3452($fp)
	addi $sp, $sp, 24
	lw $t0, -564($fp)
	sw $t0, -3456($fp)
	addi $sp, $sp, -4
	lw $t0, -3296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3456($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3460($fp)
	addi $sp, $sp, 24
	lw $t1, -3460($fp)
	li $t2, 0
	bne $t1, $t2, label485
	j label484
label484:
	li $t0, 1
	sw $t0, -3276($fp)
label485:
	li $t0, 0
	sw $t0, -3464($fp)
	li $t0, 14567
	sw $t0, -3468($fp)
	lw $t0, -120($fp)
	sw $t0, -3472($fp)
	lw $t1, -3468($fp)
	lw $t2, -3472($fp)
	ble $t1, $t2, label492
	j label494
label494:
	li $t0, 60122
	sw $t0, -3476($fp)
	lw $t1, -3476($fp)
	li $t2, 0
	bne $t1, $t2, label492
	j label493
label492:
	li $t0, 1
	sw $t0, -3464($fp)
label493:
	addi $sp, $sp, -4
	lw $t0, -3240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3464($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3480($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -3480($fp)
	sub $t0, $t0, $t1
	sw $t0, -3484($fp)
	lw $t1, -3484($fp)
	li $t2, 0
	bne $t1, $t2, label483
	j label482
label482:
	li $t0, 1
	sw $t0, -3228($fp)
label483:
label471:
label456:
	j label451
label453:
label444:
label495:
	li $t0, 44771
	sw $t0, -3488($fp)
	lw $t1, -3488($fp)
	li $t2, 0
	bne $t1, $t2, label497
	j label496
label496:
	lw $t0, -2832($fp)
	sw $t0, -3492($fp)
	lw $t0, -108($fp)
	sw $t0, -3496($fp)
	lw $t0, -588($fp)
	sw $t0, -3500($fp)
	lw $t0, -3496($fp)
	lw $t1, -3500($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3504($fp)
	li $t0, 0
	lw $t1, -3504($fp)
	sub $t0, $t0, $t1
	sw $t0, -3508($fp)
	lw $t0, -3492($fp)
	lw $t1, -3508($fp)
	mul $t0, $t0, $t1
	sw $t0, -3512($fp)
	li $t0, 0
	sw $t0, -3516($fp)
	li $t0, 63173
	sw $t0, -3520($fp)
	lw $t0, -552($fp)
	sw $t0, -3524($fp)
	lw $t1, -3520($fp)
	lw $t2, -3524($fp)
	bgt $t1, $t2, label501
	j label502
label501:
	li $t0, 1
	sw $t0, -3516($fp)
label502:
	lw $t1, -3512($fp)
	lw $t2, -3516($fp)
	bne $t1, $t2, label498
	j label499
label498:
	li $t0, 57033
	sw $t0, -3528($fp)
	lw $t0, -3528($fp)
	sw $t0, -3532($fp)
	lw $t0, -3532($fp)
	sw $t0, -3536($fp)
	lw $t0, -3532($fp)
	sw $t0, -3540($fp)
	lw $t0, -3540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -3544($fp)
	li $t0, 0
	sw $t0, -3548($fp)
	li $t0, 14890
	sw $t0, -3552($fp)
	lw $t1, -3552($fp)
	li $t2, 0
	bne $t1, $t2, label503
	j label505
label505:
	li $t0, 24947
	sw $t0, -3556($fp)
	lw $t1, -3556($fp)
	li $t2, 0
	bne $t1, $t2, label503
	j label504
label503:
	li $t0, 1
	sw $t0, -3548($fp)
label504:
	li $t0, 4
	lw $t1, -3548($fp)
	mul $t0, $t0, $t1
	sw $t0, -3560($fp)
	lw $t0, -3560($fp)
	lw $t1, -3544($fp)
	add $t0, $t0, $t1
	sw $t0, -3564($fp)
	lw $t0, -3564($fp)
	lw $t1, 0($t0)
	sw $t1, -3568($fp)
	li $t0, 62388
	sw $t0, -3572($fp)
	addi $sp, $sp, -4
	lw $t0, -3572($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3576($fp)
	addi $sp, $sp, 8
	lw $t0, -3568($fp)
	lw $t1, -3576($fp)
	mul $t0, $t0, $t1
	sw $t0, -3580($fp)
	li $t0, 0
	lw $t1, -3580($fp)
	sub $t0, $t0, $t1
	sw $t0, -3584($fp)
	lw $ra, -4($fp)
	lw $v0, -3584($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, 12($fp)
	sw $t0, -3588($fp)
	li $t0, 0
	lw $t1, -3588($fp)
	sub $t0, $t0, $t1
	sw $t0, -3592($fp)
	li $t0, 0
	lw $t1, -3592($fp)
	sub $t0, $t0, $t1
	sw $t0, -3596($fp)
	lw $t0, -2856($fp)
	sw $t0, -3600($fp)
	lw $t0, -3600($fp)
	sw $t0, -2844($fp)
	lw $t0, -2844($fp)
	sw $t0, -3604($fp)
	addi $t0, $fp, -2172
	sw $t0, -3608($fp)
	li $t0, 1
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
	li $t0, 0
	lw $t1, -3624($fp)
	sub $t0, $t0, $t1
	sw $t0, -3628($fp)
	li $t0, 0
	sw $t0, -3632($fp)
	li $t0, 10725
	sw $t0, -3636($fp)
	li $t0, 49953
	sw $t0, -3640($fp)
	lw $t0, -3636($fp)
	lw $t1, -3640($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3644($fp)
	li $t0, 11766
	sw $t0, -3648($fp)
	lw $t1, -3644($fp)
	lw $t2, -3648($fp)
	blt $t1, $t2, label506
	j label507
label506:
	li $t0, 1
	sw $t0, -3632($fp)
label507:
	lw $t0, -2832($fp)
	sw $t0, -3652($fp)
	addi $sp, $sp, -4
	lw $t0, -3596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3652($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3656($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -3660($fp)
	li $t0, 0
	sw $t0, -3664($fp)
	li $t0, 21319
	sw $t0, -3668($fp)
	li $t0, 39258
	sw $t0, -3672($fp)
	lw $t1, -3668($fp)
	lw $t2, -3672($fp)
	blt $t1, $t2, label510
	j label511
label510:
	li $t0, 1
	sw $t0, -3664($fp)
label511:
	lw $t0, -372($fp)
	sw $t0, -3676($fp)
	lw $t1, -3664($fp)
	lw $t2, -3676($fp)
	bne $t1, $t2, label508
	j label509
label508:
	li $t0, 1
	sw $t0, -3660($fp)
label509:
	li $t0, 13729
	sw $t0, -3680($fp)
	li $t0, 0
	lw $t1, -3680($fp)
	sub $t0, $t0, $t1
	sw $t0, -3684($fp)
	lw $t0, -576($fp)
	sw $t0, -3688($fp)
	lw $t0, -564($fp)
	sw $t0, -3692($fp)
	lw $t0, -3688($fp)
	lw $t1, -3692($fp)
	mul $t0, $t0, $t1
	sw $t0, -3696($fp)
	lw $t0, -360($fp)
	sw $t0, -3700($fp)
	lw $t0, -3696($fp)
	lw $t1, -3700($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3704($fp)
	li $t0, 0
	sw $t0, -3708($fp)
	lw $t0, -3532($fp)
	sw $t0, -3712($fp)
	li $t0, 26733
	sw $t0, -3716($fp)
	lw $t0, -3712($fp)
	lw $t1, -3716($fp)
	mul $t0, $t0, $t1
	sw $t0, -3720($fp)
	li $t0, 318
	sw $t0, -3724($fp)
	lw $t1, -3720($fp)
	lw $t2, -3724($fp)
	blt $t1, $t2, label512
	j label513
label512:
	li $t0, 1
	sw $t0, -3708($fp)
label513:
	li $t0, 0
	sw $t0, -3728($fp)
	li $t0, 0
	sw $t0, -3732($fp)
	li $t0, 64697
	sw $t0, -3736($fp)
	lw $t1, -3736($fp)
	li $t2, 0
	bne $t1, $t2, label517
	j label516
label516:
	li $t0, 1
	sw $t0, -3732($fp)
label517:
	lw $t0, -396($fp)
	sw $t0, -3740($fp)
	lw $t1, -3732($fp)
	lw $t2, -3740($fp)
	blt $t1, $t2, label514
	j label515
label514:
	li $t0, 1
	sw $t0, -3728($fp)
label515:
	addi $sp, $sp, -4
	lw $t0, -3660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3728($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3744($fp)
	addi $sp, $sp, 24
	lw $t0, -3532($fp)
	sw $t0, -3748($fp)
	lw $t0, -3744($fp)
	lw $t1, -3748($fp)
	add $t0, $t0, $t1
	sw $t0, -3752($fp)
	addi $sp, $sp, -4
	lw $t0, -3752($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3756($fp)
	addi $sp, $sp, 8
	lw $t0, -3656($fp)
	lw $t1, -3756($fp)
	mul $t0, $t0, $t1
	sw $t0, -3760($fp)
	j label500
label499:
	li $t0, 39129
	sw $t0, -3764($fp)
	lw $t0, -3764($fp)
	sw $t0, -3768($fp)
	lw $t0, -3768($fp)
	sw $t0, -3772($fp)
	li $t0, 0
	sw $t0, -3776($fp)
	li $t0, 7945
	sw $t0, -3780($fp)
	li $t0, 7898
	sw $t0, -3784($fp)
	li $t0, 14066
	sw $t0, -3788($fp)
	lw $t0, -3784($fp)
	lw $t1, -3788($fp)
	mul $t0, $t0, $t1
	sw $t0, -3792($fp)
	li $t0, 1
	sw $t0, -3796($fp)
	lw $t0, -3792($fp)
	lw $t1, -3796($fp)
	mul $t0, $t0, $t1
	sw $t0, -3800($fp)
	lw $t1, -3780($fp)
	lw $t2, -3800($fp)
	ble $t1, $t2, label521
	j label522
label521:
	li $t0, 1
	sw $t0, -3776($fp)
label522:
	lw $t0, -396($fp)
	sw $t0, -3804($fp)
	lw $t0, -3804($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -3808($fp)
	lw $t0, -2844($fp)
	sw $t0, -3812($fp)
	lw $t0, -2832($fp)
	sw $t0, -3816($fp)
	lw $t0, -3812($fp)
	lw $t1, -3816($fp)
	add $t0, $t0, $t1
	sw $t0, -3820($fp)
	lw $t0, -96($fp)
	sw $t0, -3824($fp)
	lw $t0, -3820($fp)
	lw $t1, -3824($fp)
	sub $t0, $t0, $t1
	sw $t0, -3828($fp)
	li $t0, 0
	sw $t0, -3832($fp)
	li $t0, 36438
	sw $t0, -3836($fp)
	lw $t1, -3836($fp)
	li $t2, 0
	bne $t1, $t2, label524
	j label523
label523:
	li $t0, 1
	sw $t0, -3832($fp)
label524:
	li $t0, 0
	lw $t1, -3832($fp)
	sub $t0, $t0, $t1
	sw $t0, -3840($fp)
	lw $t0, -3768($fp)
	sw $t0, -3844($fp)
	li $t0, 0
	sw $t0, -3848($fp)
	lw $t0, -2832($fp)
	sw $t0, -3852($fp)
	lw $t0, -2856($fp)
	sw $t0, -3856($fp)
	lw $t1, -3852($fp)
	lw $t2, -3856($fp)
	bgt $t1, $t2, label527
	j label526
label527:
	lw $t0, -72($fp)
	sw $t0, -3860($fp)
	lw $t1, -3860($fp)
	li $t2, 0
	bne $t1, $t2, label525
	j label526
label525:
	li $t0, 1
	sw $t0, -3848($fp)
label526:
	addi $sp, $sp, -4
	lw $t0, -3844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3848($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3864($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -2236
	sw $t0, -3868($fp)
	lw $t0, -360($fp)
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
	addi $sp, $sp, -4
	lw $t0, -3808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3884($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3888($fp)
	addi $sp, $sp, 24
	lw $t0, -84($fp)
	sw $t0, -3892($fp)
	lw $t0, -2856($fp)
	sw $t0, -3896($fp)
	lw $t0, -3892($fp)
	lw $t1, -3896($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3900($fp)
	lw $t0, -3888($fp)
	lw $t1, -3900($fp)
	sub $t0, $t0, $t1
	sw $t0, -3904($fp)
	lw $t1, -3776($fp)
	lw $t2, -3904($fp)
	beq $t1, $t2, label518
	j label519
label518:
	li $t0, 0
	sw $t0, -3908($fp)
	lw $t0, -108($fp)
	sw $t0, -3912($fp)
	lw $t1, -3912($fp)
	li $t2, 0
	bne $t1, $t2, label529
	j label528
label528:
	li $t0, 1
	sw $t0, -3908($fp)
label529:
	addi $sp, $sp, -4
	lw $t0, -3908($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3916($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3920($fp)
	lw $t0, -360($fp)
	sw $t0, -3924($fp)
	lw $t1, -3924($fp)
	li $t2, 0
	bne $t1, $t2, label531
	j label530
label530:
	li $t0, 1
	sw $t0, -3920($fp)
label531:
	lw $t0, -3916($fp)
	lw $t1, -3920($fp)
	mul $t0, $t0, $t1
	sw $t0, -3928($fp)
	li $t0, 0
	sw $t0, -3932($fp)
	lw $t0, -2856($fp)
	sw $t0, -3936($fp)
	lw $t0, -84($fp)
	sw $t0, -3940($fp)
	lw $t1, -3936($fp)
	lw $t2, -3940($fp)
	beq $t1, $t2, label532
	j label533
label532:
	li $t0, 1
	sw $t0, -3932($fp)
label533:
	addi $sp, $sp, -4
	lw $t0, -3932($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3944($fp)
	addi $sp, $sp, 8
	lw $t0, -3928($fp)
	lw $t1, -3944($fp)
	sub $t0, $t0, $t1
	sw $t0, -3948($fp)
	addi $t0, $fp, -2172
	sw $t0, -3952($fp)
	li $t0, 0
	sw $t0, -3956($fp)
	li $t0, 56293
	sw $t0, -3960($fp)
	li $t0, 3798
	sw $t0, -3964($fp)
	lw $t1, -3960($fp)
	lw $t2, -3964($fp)
	blt $t1, $t2, label534
	j label535
label534:
	li $t0, 1
	sw $t0, -3956($fp)
label535:
	li $t0, 4
	lw $t1, -3956($fp)
	mul $t0, $t0, $t1
	sw $t0, -3968($fp)
	lw $t0, -3968($fp)
	lw $t1, -3952($fp)
	add $t0, $t0, $t1
	sw $t0, -3972($fp)
	lw $t0, -3972($fp)
	lw $t1, 0($t0)
	sw $t1, -3976($fp)
	lw $t0, -3948($fp)
	lw $t1, -3976($fp)
	sub $t0, $t0, $t1
	sw $t0, -3980($fp)
	j label520
label519:
	li $t0, 7363
	sw $t0, -3984($fp)
label520:
label536:
	li $t0, 0
	sw $t0, -3988($fp)
	li $t0, 0
	sw $t0, -3992($fp)
	lw $t0, -2820($fp)
	sw $t0, -3996($fp)
	lw $t1, -3996($fp)
	li $t2, 0
	bne $t1, $t2, label546
	j label544
label546:
	li $t0, 16207
	sw $t0, -4000($fp)
	lw $t1, -4000($fp)
	li $t2, 0
	bne $t1, $t2, label545
	j label544
label545:
	lw $t0, -564($fp)
	sw $t0, -4004($fp)
	lw $t1, -4004($fp)
	li $t2, 0
	bne $t1, $t2, label543
	j label544
label543:
	li $t0, 1
	sw $t0, -3992($fp)
label544:
	addi $sp, $sp, -4
	lw $t0, -3992($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4008($fp)
	addi $sp, $sp, 8
	lw $t1, -4008($fp)
	li $t2, 0
	bne $t1, $t2, label542
	j label541
label542:
	lw $t0, -360($fp)
	sw $t0, -4012($fp)
	lw $t1, -4012($fp)
	li $t2, 0
	bne $t1, $t2, label539
	j label541
label541:
	lw $t0, -108($fp)
	sw $t0, -4016($fp)
	lw $t1, -4016($fp)
	li $t2, 0
	bne $t1, $t2, label539
	j label540
label539:
	li $t0, 1
	sw $t0, -3988($fp)
label540:
	lw $t0, -3988($fp)
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -4020($fp)
	lw $t1, -4020($fp)
	li $t2, 0
	bne $t1, $t2, label537
	j label538
label537:
	li $t0, 0
	sw $t0, -4024($fp)
	addi $t0, $fp, -12
	sw $t0, -4028($fp)
	addi $t0, $fp, -36
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
	li $t0, 61510
	sw $t0, -4052($fp)
	lw $t0, -4048($fp)
	lw $t1, -4052($fp)
	mul $t0, $t0, $t1
	sw $t0, -4056($fp)
	li $t0, 4
	lw $t1, -4056($fp)
	mul $t0, $t0, $t1
	sw $t0, -4060($fp)
	lw $t0, -4060($fp)
	lw $t1, -4028($fp)
	add $t0, $t0, $t1
	sw $t0, -4064($fp)
	lw $t0, -4064($fp)
	lw $t1, 0($t0)
	sw $t1, -4068($fp)
	lw $t1, -4068($fp)
	li $t2, 0
	bne $t1, $t2, label549
	j label548
label549:
	li $t0, 6503
	sw $t0, -4072($fp)
	lw $t1, -4072($fp)
	li $t2, 0
	bne $t1, $t2, label547
	j label548
label547:
	li $t0, 1
	sw $t0, -4024($fp)
label548:
	j label536
label538:
label500:
	j label495
label497:
	j label431
label433:
	lw $t0, -72($fp)
	sw $t0, -4076($fp)
	lw $t0, -4076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -4080($fp)
	lw $t0, -4080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -4084($fp)
	lw $t0, -4084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -4088($fp)
	lw $t0, -4088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -4092($fp)
	lw $t0, -4092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -4096($fp)
	li $t0, 0
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
	addi $t0, $fp, -12
	sw $t0, -4116($fp)
	li $t0, 1
	sw $t0, -4120($fp)
	li $t0, 4
	lw $t1, -4120($fp)
	mul $t0, $t0, $t1
	sw $t0, -4124($fp)
	lw $t0, -4124($fp)
	lw $t1, -4116($fp)
	add $t0, $t0, $t1
	sw $t0, -4128($fp)
	lw $t0, -4128($fp)
	lw $t1, 0($t0)
	sw $t1, -4132($fp)
	lw $t0, -4132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -4136($fp)
	li $t0, 0
	sw $t0, -4140($fp)
	li $t0, 4
	lw $t1, -4140($fp)
	mul $t0, $t0, $t1
	sw $t0, -4144($fp)
	lw $t0, -4144($fp)
	lw $t1, -4136($fp)
	add $t0, $t0, $t1
	sw $t0, -4148($fp)
	lw $t0, -4148($fp)
	lw $t1, 0($t0)
	sw $t1, -4152($fp)
	lw $t0, -4152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -4156($fp)
	li $t0, 1
	sw $t0, -4160($fp)
	li $t0, 4
	lw $t1, -4160($fp)
	mul $t0, $t0, $t1
	sw $t0, -4164($fp)
	lw $t0, -4164($fp)
	lw $t1, -4156($fp)
	add $t0, $t0, $t1
	sw $t0, -4168($fp)
	lw $t0, -4168($fp)
	lw $t1, 0($t0)
	sw $t1, -4172($fp)
	lw $t0, -4172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -4176($fp)
	li $t0, 2
	sw $t0, -4180($fp)
	li $t0, 4
	lw $t1, -4180($fp)
	mul $t0, $t0, $t1
	sw $t0, -4184($fp)
	lw $t0, -4184($fp)
	lw $t1, -4176($fp)
	add $t0, $t0, $t1
	sw $t0, -4188($fp)
	lw $t0, -4188($fp)
	lw $t1, 0($t0)
	sw $t1, -4192($fp)
	lw $t0, -4192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -4196($fp)
	li $t0, 3
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
	lw $t0, -4212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -4216($fp)
	li $t0, 4
	sw $t0, -4220($fp)
	li $t0, 4
	lw $t1, -4220($fp)
	mul $t0, $t0, $t1
	sw $t0, -4224($fp)
	lw $t0, -4224($fp)
	lw $t1, -4216($fp)
	add $t0, $t0, $t1
	sw $t0, -4228($fp)
	lw $t0, -4228($fp)
	lw $t1, 0($t0)
	sw $t1, -4232($fp)
	lw $t0, -4232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -4236($fp)
	li $t0, 5
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
	lw $t0, -4252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -324($fp)
	sw $t0, -4256($fp)
	lw $t0, -4256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -4260($fp)
	li $t0, 0
	sw $t0, -4264($fp)
	li $t0, 4
	lw $t1, -4264($fp)
	mul $t0, $t0, $t1
	sw $t0, -4268($fp)
	lw $t0, -4268($fp)
	lw $t1, -4260($fp)
	add $t0, $t0, $t1
	sw $t0, -4272($fp)
	lw $t0, -4272($fp)
	lw $t1, 0($t0)
	sw $t1, -4276($fp)
	lw $t0, -4276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -360($fp)
	sw $t0, -4280($fp)
	lw $t0, -4280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -372($fp)
	sw $t0, -4284($fp)
	lw $t0, -4284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -384($fp)
	sw $t0, -4288($fp)
	lw $t0, -4288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -396($fp)
	sw $t0, -4292($fp)
	lw $t0, -4292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -4296($fp)
	li $t0, 0
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
	addi $t0, $fp, -64
	sw $t0, -4316($fp)
	li $t0, 1
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
	addi $t0, $fp, -64
	sw $t0, -4336($fp)
	li $t0, 2
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
	addi $t0, $fp, -64
	sw $t0, -4356($fp)
	li $t0, 3
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
	addi $t0, $fp, -64
	sw $t0, -4376($fp)
	li $t0, 4
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
	addi $t0, $fp, -64
	sw $t0, -4396($fp)
	li $t0, 5
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
	lw $t0, -552($fp)
	sw $t0, -4416($fp)
	lw $t0, -4416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -564($fp)
	sw $t0, -4420($fp)
	lw $t0, -4420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -576($fp)
	sw $t0, -4424($fp)
	lw $t0, -4424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -588($fp)
	sw $t0, -4428($fp)
	lw $t0, -4428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4432($fp)
	li $t0, 0
	sw $t0, -4436($fp)
	addi $t0, $fp, -64
	sw $t0, -4440($fp)
	li $t0, 1
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
	lw $t1, -4456($fp)
	li $t2, 0
	bne $t1, $t2, label553
	j label554
label553:
	li $t0, 1
	sw $t0, -4436($fp)
label554:
	lw $t0, -324($fp)
	sw $t0, -4460($fp)
	lw $t0, -4436($fp)
	lw $t1, -4460($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4464($fp)
	lw $t1, -4464($fp)
	li $t2, 0
	bne $t1, $t2, label550
	j label552
label552:
	li $t0, 63537
	sw $t0, -4468($fp)
	li $t0, 0
	lw $t1, -4468($fp)
	sub $t0, $t0, $t1
	sw $t0, -4472($fp)
	lw $t1, -4472($fp)
	li $t2, 0
	bne $t1, $t2, label555
	j label551
label555:
	lw $t0, -396($fp)
	sw $t0, -4476($fp)
	li $t0, 35074
	sw $t0, -4480($fp)
	lw $t1, -4476($fp)
	lw $t2, -4480($fp)
	bgt $t1, $t2, label550
	j label551
label550:
	li $t0, 1
	sw $t0, -4432($fp)
label551:
	lw $ra, -4($fp)
	lw $v0, -4432($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -480
	li $t0, 18559
	sw $t0, -20($fp)
	addi $t0, $fp, -8
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
	li $t0, 60389
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
	li $t0, 45800
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
	li $t0, 2976
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	addi $t0, $fp, -8
	sw $t0, -104($fp)
	li $t0, 0
	sw $t0, -108($fp)
	li $t0, 4
	lw $t1, -108($fp)
	mul $t0, $t0, $t1
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	lw $t1, -104($fp)
	add $t0, $t0, $t1
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	lw $t1, 0($t0)
	sw $t1, -120($fp)
	lw $t0, -120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -124($fp)
	li $t0, 0
	sw $t0, -128($fp)
	li $t0, 4
	lw $t1, -128($fp)
	mul $t0, $t0, $t1
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	lw $t1, -124($fp)
	add $t0, $t0, $t1
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	lw $t1, 0($t0)
	sw $t1, -140($fp)
	lw $t0, -140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -144($fp)
	li $t0, 1
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
	lw $t0, -96($fp)
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -168($fp)
	li $t0, 6619
	sw $t0, -172($fp)
	lw $t0, 12($fp)
	sw $t0, -176($fp)
	lw $t0, -172($fp)
	lw $t1, -176($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -180($fp)
	lw $t0, -180($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -184($fp)
	li $t0, 4
	lw $t1, -184($fp)
	mul $t0, $t0, $t1
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	lw $t1, -168($fp)
	add $t0, $t0, $t1
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	lw $t1, 0($t0)
	sw $t1, -196($fp)
	lw $ra, -4($fp)
	lw $v0, -196($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label556:
	li $t0, 20644
	sw $t0, -200($fp)
	li $t0, 16687
	sw $t0, -204($fp)
	lw $t0, -200($fp)
	lw $t1, -204($fp)
	sub $t0, $t0, $t1
	sw $t0, -208($fp)
	lw $t0, 8($fp)
	sw $t0, -212($fp)
	lw $t0, -208($fp)
	lw $t1, -212($fp)
	sub $t0, $t0, $t1
	sw $t0, -216($fp)
	addi $sp, $sp, -4
	lw $t0, -216($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -220($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -220($fp)
	sub $t0, $t0, $t1
	sw $t0, -224($fp)
	lw $t1, -224($fp)
	li $t2, 0
	bne $t1, $t2, label558
	j label557
label557:
	li $t0, 0
	sw $t0, -228($fp)
	li $t0, 0
	sw $t0, -232($fp)
	lw $t0, 4($fp)
	sw $t0, -236($fp)
	lw $t1, -236($fp)
	li $t2, 0
	bne $t1, $t2, label565
	j label564
label565:
	li $t0, 5780
	sw $t0, -240($fp)
	lw $t1, -240($fp)
	li $t2, 0
	bne $t1, $t2, label562
	j label564
label564:
	lw $t0, 4($fp)
	sw $t0, -244($fp)
	lw $t1, -244($fp)
	li $t2, 0
	bne $t1, $t2, label562
	j label563
label562:
	li $t0, 1
	sw $t0, -232($fp)
label563:
	addi $sp, $sp, -4
	lw $t0, -232($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -248($fp)
	addi $sp, $sp, 8
	lw $t1, -248($fp)
	li $t2, 0
	bne $t1, $t2, label561
	j label560
label561:
	lw $t0, 4($fp)
	sw $t0, -252($fp)
	addi $sp, $sp, -4
	lw $t0, -252($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -256($fp)
	addi $sp, $sp, 8
	lw $t1, -256($fp)
	li $t2, 0
	bne $t1, $t2, label559
	j label560
label559:
	li $t0, 1
	sw $t0, -228($fp)
label560:
	li $t0, 0
	sw $t0, -260($fp)
	li $t0, 0
	sw $t0, -264($fp)
	li $t0, 47377
	sw $t0, -268($fp)
	lw $t1, -268($fp)
	li $t2, 0
	bne $t1, $t2, label570
	j label569
label569:
	li $t0, 1
	sw $t0, -264($fp)
label570:
	li $t0, 0
	lw $t1, -264($fp)
	sub $t0, $t0, $t1
	sw $t0, -272($fp)
	lw $t1, -272($fp)
	li $t2, 0
	bne $t1, $t2, label566
	j label568
label568:
	li $t0, 0
	sw $t0, -276($fp)
	addi $t0, $fp, -16
	sw $t0, -280($fp)
	lw $t0, 8($fp)
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
	lw $t1, -296($fp)
	li $t2, 0
	bne $t1, $t2, label572
	j label571
label571:
	li $t0, 1
	sw $t0, -276($fp)
label572:
	addi $t0, $fp, -8
	sw $t0, -300($fp)
	lw $t0, 16($fp)
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
	lw $t1, -276($fp)
	lw $t2, -316($fp)
	ble $t1, $t2, label566
	j label567
label566:
	li $t0, 1
	sw $t0, -260($fp)
label567:
	j label556
label558:
	addi $t0, $fp, -8
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
	addi $t0, $fp, -16
	sw $t0, -340($fp)
	li $t0, 0
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
	addi $t0, $fp, -16
	sw $t0, -360($fp)
	li $t0, 1
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
	lw $t0, -96($fp)
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -384($fp)
	lw $t0, 8($fp)
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -392($fp)
	li $t0, 0
	sw $t0, -396($fp)
	addi $t0, $fp, -16
	sw $t0, -400($fp)
	lw $t0, -96($fp)
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
	lw $t1, -416($fp)
	li $t2, 0
	bne $t1, $t2, label573
	j label575
label575:
	li $t0, 11106
	sw $t0, -420($fp)
	lw $t1, -420($fp)
	li $t2, 0
	bne $t1, $t2, label573
	j label574
label573:
	li $t0, 1
	sw $t0, -396($fp)
label574:
	li $t0, 0
	sw $t0, -424($fp)
	lw $t0, 16($fp)
	sw $t0, -428($fp)
	li $t0, 58639
	sw $t0, -432($fp)
	lw $t1, -428($fp)
	lw $t2, -432($fp)
	bge $t1, $t2, label576
	j label577
label576:
	li $t0, 1
	sw $t0, -424($fp)
label577:
	li $t0, 0
	sw $t0, -436($fp)
	lw $t0, 12($fp)
	sw $t0, -440($fp)
	li $t0, 3161
	sw $t0, -444($fp)
	lw $t0, -440($fp)
	lw $t1, -444($fp)
	sub $t0, $t0, $t1
	sw $t0, -448($fp)
	li $t0, 56263
	sw $t0, -452($fp)
	lw $t1, -448($fp)
	lw $t2, -452($fp)
	bne $t1, $t2, label578
	j label579
label578:
	li $t0, 1
	sw $t0, -436($fp)
label579:
	li $t0, 0
	sw $t0, -456($fp)
	li $t0, 17005
	sw $t0, -460($fp)
	li $t0, 0
	lw $t1, -460($fp)
	sub $t0, $t0, $t1
	sw $t0, -464($fp)
	li $t0, 19509
	sw $t0, -468($fp)
	lw $t1, -464($fp)
	lw $t2, -468($fp)
	bge $t1, $t2, label580
	j label581
label580:
	li $t0, 1
	sw $t0, -456($fp)
label581:
	addi $sp, $sp, -4
	lw $t0, -392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -456($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -472($fp)
	addi $sp, $sp, 24
	li $t0, 4
	lw $t1, -472($fp)
	mul $t0, $t0, $t1
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	lw $t1, -384($fp)
	add $t0, $t0, $t1
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	lw $t1, 0($t0)
	sw $t1, -484($fp)
	lw $ra, -4($fp)
	lw $v0, -484($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -264
	li $t0, 64161
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
	li $t0, 7169
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
	addi $t0, $fp, -12
	sw $t0, -64($fp)
	li $t0, 1
	sw $t0, -68($fp)
	li $t0, 4
	lw $t1, -68($fp)
	mul $t0, $t0, $t1
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	lw $t1, -64($fp)
	add $t0, $t0, $t1
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	lw $t1, 0($t0)
	sw $t1, -80($fp)
	li $t0, 0
	lw $t1, -80($fp)
	sub $t0, $t0, $t1
	sw $t0, -84($fp)
	addi $t0, $fp, -12
	sw $t0, -88($fp)
	lw $t0, 12($fp)
	sw $t0, -92($fp)
	li $t0, 4
	lw $t1, -92($fp)
	mul $t0, $t0, $t1
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	lw $t1, -88($fp)
	add $t0, $t0, $t1
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	lw $t1, 0($t0)
	sw $t1, -104($fp)
	lw $t0, 8($fp)
	sw $t0, -108($fp)
	lw $t0, -104($fp)
	lw $t1, -108($fp)
	add $t0, $t0, $t1
	sw $t0, -112($fp)
	li $t0, 63462
	sw $t0, -116($fp)
	lw $t0, -112($fp)
	lw $t1, -116($fp)
	add $t0, $t0, $t1
	sw $t0, -120($fp)
	lw $t0, 4($fp)
	sw $t0, -124($fp)
	lw $t0, -120($fp)
	lw $t1, -124($fp)
	sub $t0, $t0, $t1
	sw $t0, -128($fp)
	li $t0, 5256
	sw $t0, -132($fp)
	li $t0, 0
	sw $t0, -136($fp)
	li $t0, 17840
	sw $t0, -140($fp)
	li $t0, 0
	lw $t1, -140($fp)
	sub $t0, $t0, $t1
	sw $t0, -144($fp)
	li $t0, 0
	sw $t0, -148($fp)
	li $t0, 0
	sw $t0, -152($fp)
	lw $t0, 12($fp)
	sw $t0, -156($fp)
	lw $t0, 4($fp)
	sw $t0, -160($fp)
	lw $t1, -156($fp)
	lw $t2, -160($fp)
	blt $t1, $t2, label586
	j label587
label586:
	li $t0, 1
	sw $t0, -152($fp)
label587:
	li $t0, 40019
	sw $t0, -164($fp)
	lw $t1, -152($fp)
	lw $t2, -164($fp)
	beq $t1, $t2, label584
	j label585
label584:
	li $t0, 1
	sw $t0, -148($fp)
label585:
	li $t0, 14133
	sw $t0, -168($fp)
	addi $sp, $sp, -4
	lw $t0, -168($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -172($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -172($fp)
	sub $t0, $t0, $t1
	sw $t0, -176($fp)
	li $t0, 0
	sw $t0, -180($fp)
	lw $t0, 12($fp)
	sw $t0, -184($fp)
	li $t0, 42427
	sw $t0, -188($fp)
	lw $t1, -184($fp)
	lw $t2, -188($fp)
	bgt $t1, $t2, label588
	j label589
label588:
	li $t0, 1
	sw $t0, -180($fp)
label589:
	addi $sp, $sp, -4
	lw $t0, -144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -180($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -192($fp)
	addi $sp, $sp, 20
	lw $t0, 8($fp)
	sw $t0, -196($fp)
	li $t0, 10107
	sw $t0, -200($fp)
	lw $t0, -196($fp)
	lw $t1, -200($fp)
	sub $t0, $t0, $t1
	sw $t0, -204($fp)
	lw $t1, -192($fp)
	lw $t2, -204($fp)
	ble $t1, $t2, label582
	j label583
label582:
	li $t0, 1
	sw $t0, -136($fp)
label583:
	lw $t0, -136($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -208($fp)
	addi $t0, $fp, -12
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
	addi $t0, $fp, -12
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
	addi $t0, $fp, -12
	sw $t0, -252($fp)
	li $t0, 0
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
	lw $ra, -4($fp)
	lw $v0, -268($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -512
	li $t0, 3719
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
	li $t0, 44523
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
	li $t0, 7563
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
	li $t0, 22278
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
	li $t0, 39376
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
	li $t0, 53363
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	li $t0, 0
	sw $t0, -160($fp)
	li $t0, 25254
	sw $t0, -164($fp)
	lw $t1, -164($fp)
	li $t2, 0
	bne $t1, $t2, label592
	j label590
label592:
	li $t0, 45995
	sw $t0, -168($fp)
	li $t0, 0
	lw $t1, -168($fp)
	sub $t0, $t0, $t1
	sw $t0, -172($fp)
	li $t0, 8471
	sw $t0, -176($fp)
	lw $t0, -172($fp)
	lw $t1, -176($fp)
	sub $t0, $t0, $t1
	sw $t0, -180($fp)
	li $t0, 49674
	sw $t0, -184($fp)
	li $t0, 0
	sw $t0, -188($fp)
	li $t0, 59010
	sw $t0, -192($fp)
	lw $t0, 20($fp)
	sw $t0, -196($fp)
	lw $t0, -192($fp)
	lw $t1, -196($fp)
	mul $t0, $t0, $t1
	sw $t0, -200($fp)
	lw $t0, 4($fp)
	sw $t0, -204($fp)
	lw $t1, -200($fp)
	lw $t2, -204($fp)
	bge $t1, $t2, label593
	j label594
label593:
	li $t0, 1
	sw $t0, -188($fp)
label594:
	li $t0, 0
	sw $t0, -208($fp)
	lw $t0, 20($fp)
	sw $t0, -212($fp)
	lw $t0, 4($fp)
	sw $t0, -216($fp)
	lw $t0, -212($fp)
	lw $t1, -216($fp)
	add $t0, $t0, $t1
	sw $t0, -220($fp)
	lw $t1, -220($fp)
	li $t2, 0
	bne $t1, $t2, label595
	j label597
label597:
	lw $t0, 12($fp)
	sw $t0, -224($fp)
	lw $t1, -224($fp)
	li $t2, 0
	bne $t1, $t2, label595
	j label596
label595:
	li $t0, 1
	sw $t0, -208($fp)
label596:
	li $t0, 0
	sw $t0, -228($fp)
	li $t0, 0
	sw $t0, -232($fp)
	li $t0, 58946
	sw $t0, -236($fp)
	li $t0, 5749
	sw $t0, -240($fp)
	lw $t1, -236($fp)
	lw $t2, -240($fp)
	bgt $t1, $t2, label600
	j label601
label600:
	li $t0, 1
	sw $t0, -232($fp)
label601:
	lw $t0, -152($fp)
	sw $t0, -244($fp)
	lw $t1, -232($fp)
	lw $t2, -244($fp)
	ble $t1, $t2, label598
	j label599
label598:
	li $t0, 1
	sw $t0, -228($fp)
label599:
	addi $t0, $fp, -24
	sw $t0, -248($fp)
	lw $t0, 16($fp)
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
	li $t0, 55849
	sw $t0, -268($fp)
	lw $t0, -264($fp)
	lw $t1, -268($fp)
	sub $t0, $t0, $t1
	sw $t0, -272($fp)
	li $t0, 0
	sw $t0, -276($fp)
	lw $t0, 16($fp)
	sw $t0, -280($fp)
	lw $t0, 12($fp)
	sw $t0, -284($fp)
	lw $t0, -280($fp)
	lw $t1, -284($fp)
	mul $t0, $t0, $t1
	sw $t0, -288($fp)
	lw $t1, -288($fp)
	li $t2, 0
	bne $t1, $t2, label604
	j label603
label604:
	lw $t0, -152($fp)
	sw $t0, -292($fp)
	lw $t1, -292($fp)
	li $t2, 0
	bne $t1, $t2, label602
	j label603
label602:
	li $t0, 1
	sw $t0, -276($fp)
label603:
	addi $sp, $sp, -4
	lw $t0, -208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -276($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -296($fp)
	addi $sp, $sp, 20
	lw $t0, 8($fp)
	sw $t0, -300($fp)
	lw $t0, -296($fp)
	lw $t1, -300($fp)
	add $t0, $t0, $t1
	sw $t0, -304($fp)
	lw $t0, 16($fp)
	sw $t0, -308($fp)
	li $t0, 0
	lw $t1, -308($fp)
	sub $t0, $t0, $t1
	sw $t0, -312($fp)
	li $t0, 51776
	sw $t0, -316($fp)
	lw $t0, -312($fp)
	lw $t1, -316($fp)
	sub $t0, $t0, $t1
	sw $t0, -320($fp)
	li $t0, 0
	sw $t0, -324($fp)
	lw $t0, -152($fp)
	sw $t0, -328($fp)
	lw $t1, -328($fp)
	li $t2, 0
	bne $t1, $t2, label608
	j label606
label608:
	li $t0, 41941
	sw $t0, -332($fp)
	lw $t1, -332($fp)
	li $t2, 0
	bne $t1, $t2, label607
	j label606
label607:
	lw $t0, 12($fp)
	sw $t0, -336($fp)
	lw $t1, -336($fp)
	li $t2, 0
	bne $t1, $t2, label605
	j label606
label605:
	li $t0, 1
	sw $t0, -324($fp)
label606:
	addi $sp, $sp, -4
	lw $t0, -184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -324($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -340($fp)
	addi $sp, $sp, 24
	lw $t0, -180($fp)
	lw $t1, -340($fp)
	add $t0, $t0, $t1
	sw $t0, -344($fp)
	lw $t1, -344($fp)
	li $t2, 0
	bne $t1, $t2, label590
	j label591
label590:
	li $t0, 1
	sw $t0, -160($fp)
label591:
	li $t0, 0
	sw $t0, -348($fp)
	li $t0, 0
	sw $t0, -352($fp)
	addi $t0, $fp, -24
	sw $t0, -356($fp)
	lw $t0, 20($fp)
	sw $t0, -360($fp)
	li $t0, 4
	lw $t1, -360($fp)
	mul $t0, $t0, $t1
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	lw $t1, -356($fp)
	add $t0, $t0, $t1
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	lw $t1, 0($t0)
	sw $t1, -372($fp)
	li $t0, 64388
	sw $t0, -376($fp)
	lw $t0, 16($fp)
	sw $t0, -380($fp)
	lw $t0, -376($fp)
	lw $t1, -380($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -384($fp)
	lw $t1, -372($fp)
	lw $t2, -384($fp)
	bge $t1, $t2, label612
	j label613
label612:
	li $t0, 1
	sw $t0, -352($fp)
label613:
	lw $t0, 16($fp)
	sw $t0, -388($fp)
	lw $t1, -352($fp)
	lw $t2, -388($fp)
	bne $t1, $t2, label609
	j label611
label611:
	lw $t0, 20($fp)
	sw $t0, -392($fp)
	lw $t1, -392($fp)
	li $t2, 0
	bne $t1, $t2, label609
	j label610
label609:
	li $t0, 1
	sw $t0, -348($fp)
label610:
	addi $t0, $fp, -24
	sw $t0, -396($fp)
	li $t0, 0
	sw $t0, -400($fp)
	li $t0, 4
	lw $t1, -400($fp)
	mul $t0, $t0, $t1
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	lw $t1, -396($fp)
	add $t0, $t0, $t1
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	lw $t1, 0($t0)
	sw $t1, -412($fp)
	lw $t0, -412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -416($fp)
	li $t0, 1
	sw $t0, -420($fp)
	li $t0, 4
	lw $t1, -420($fp)
	mul $t0, $t0, $t1
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	lw $t1, -416($fp)
	add $t0, $t0, $t1
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	lw $t1, 0($t0)
	sw $t1, -432($fp)
	lw $t0, -432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -436($fp)
	li $t0, 2
	sw $t0, -440($fp)
	li $t0, 4
	lw $t1, -440($fp)
	mul $t0, $t0, $t1
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	lw $t1, -436($fp)
	add $t0, $t0, $t1
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	lw $t1, 0($t0)
	sw $t1, -452($fp)
	lw $t0, -452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -456($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -476($fp)
	li $t0, 4
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
	lw $t0, -152($fp)
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 4580
	sw $t0, -500($fp)
	li $t0, 0
	sw $t0, -504($fp)
	li $t0, 48299
	sw $t0, -508($fp)
	lw $t1, -508($fp)
	li $t2, 0
	bne $t1, $t2, label615
	j label614
label614:
	li $t0, 1
	sw $t0, -504($fp)
label615:
	li $t0, 0
	lw $t1, -504($fp)
	sub $t0, $t0, $t1
	sw $t0, -512($fp)
	lw $t0, -500($fp)
	lw $t1, -512($fp)
	sub $t0, $t0, $t1
	sw $t0, -516($fp)
	lw $ra, -4($fp)
	lw $v0, -516($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -12
	li $t0, 6021
	sw $t0, -8($fp)
	li $t0, 6038
	sw $t0, -12($fp)
	lw $t0, -8($fp)
	lw $t1, -12($fp)
	sub $t0, $t0, $t1
	sw $t0, -16($fp)
	lw $ra, -4($fp)
	lw $v0, -16($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1868
	li $t0, 17827
	sw $t0, -92($fp)
	addi $t0, $fp, -28
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
	li $t0, 3948
	sw $t0, -116($fp)
	addi $t0, $fp, -28
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
	li $t0, 11295
	sw $t0, -140($fp)
	addi $t0, $fp, -28
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
	li $t0, 60254
	sw $t0, -164($fp)
	addi $t0, $fp, -28
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
	li $t0, 18081
	sw $t0, -188($fp)
	addi $t0, $fp, -28
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
	li $t0, 51314
	sw $t0, -212($fp)
	addi $t0, $fp, -28
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
	li $t0, 12558
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	li $t0, 28189
	sw $t0, -248($fp)
	addi $t0, $fp, -56
	sw $t0, -252($fp)
	li $t0, 0
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
	li $t0, 32300
	sw $t0, -272($fp)
	addi $t0, $fp, -56
	sw $t0, -276($fp)
	li $t0, 1
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
	li $t0, 50582
	sw $t0, -296($fp)
	addi $t0, $fp, -56
	sw $t0, -300($fp)
	li $t0, 2
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
	li $t0, 31908
	sw $t0, -320($fp)
	addi $t0, $fp, -56
	sw $t0, -324($fp)
	li $t0, 3
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
	li $t0, 11288
	sw $t0, -344($fp)
	addi $t0, $fp, -56
	sw $t0, -348($fp)
	li $t0, 4
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
	li $t0, 58145
	sw $t0, -368($fp)
	addi $t0, $fp, -56
	sw $t0, -372($fp)
	li $t0, 5
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
	li $t0, 54186
	sw $t0, -392($fp)
	addi $t0, $fp, -56
	sw $t0, -396($fp)
	li $t0, 6
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
	li $t0, 50664
	sw $t0, -416($fp)
	addi $t0, $fp, -68
	sw $t0, -420($fp)
	li $t0, 0
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
	li $t0, 45972
	sw $t0, -440($fp)
	addi $t0, $fp, -68
	sw $t0, -444($fp)
	li $t0, 1
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
	li $t0, 13904
	sw $t0, -464($fp)
	addi $t0, $fp, -68
	sw $t0, -468($fp)
	li $t0, 2
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
	li $t0, 31124
	sw $t0, -488($fp)
	addi $t0, $fp, -88
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
	li $t0, 54444
	sw $t0, -512($fp)
	addi $t0, $fp, -88
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
	li $t0, 55845
	sw $t0, -536($fp)
	addi $t0, $fp, -88
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
	li $t0, 17364
	sw $t0, -560($fp)
	addi $t0, $fp, -88
	sw $t0, -564($fp)
	li $t0, 3
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
	li $t0, 44757
	sw $t0, -584($fp)
	addi $t0, $fp, -88
	sw $t0, -588($fp)
	li $t0, 4
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
	addi $t0, $fp, -28
	sw $t0, -608($fp)
	li $t0, 0
	sw $t0, -612($fp)
	li $t0, 4
	lw $t1, -612($fp)
	mul $t0, $t0, $t1
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	lw $t1, -608($fp)
	add $t0, $t0, $t1
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	lw $t1, 0($t0)
	sw $t1, -624($fp)
	lw $t0, -624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -628($fp)
	li $t0, 1
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
	addi $t0, $fp, -28
	sw $t0, -648($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -668($fp)
	li $t0, 3
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
	addi $t0, $fp, -28
	sw $t0, -688($fp)
	li $t0, 4
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
	addi $t0, $fp, -28
	sw $t0, -708($fp)
	li $t0, 5
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
	lw $t0, -240($fp)
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -732($fp)
	li $t0, 0
	sw $t0, -736($fp)
	li $t0, 4
	lw $t1, -736($fp)
	mul $t0, $t0, $t1
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	lw $t1, -732($fp)
	add $t0, $t0, $t1
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	lw $t1, 0($t0)
	sw $t1, -748($fp)
	lw $t0, -748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -752($fp)
	li $t0, 1
	sw $t0, -756($fp)
	li $t0, 4
	lw $t1, -756($fp)
	mul $t0, $t0, $t1
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	lw $t1, -752($fp)
	add $t0, $t0, $t1
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	lw $t1, 0($t0)
	sw $t1, -768($fp)
	lw $t0, -768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -772($fp)
	li $t0, 2
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
	addi $t0, $fp, -56
	sw $t0, -792($fp)
	li $t0, 3
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
	addi $t0, $fp, -56
	sw $t0, -812($fp)
	li $t0, 4
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
	addi $t0, $fp, -56
	sw $t0, -832($fp)
	li $t0, 5
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
	addi $t0, $fp, -56
	sw $t0, -852($fp)
	li $t0, 6
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
	addi $t0, $fp, -68
	sw $t0, -872($fp)
	li $t0, 0
	sw $t0, -876($fp)
	li $t0, 4
	lw $t1, -876($fp)
	mul $t0, $t0, $t1
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	lw $t1, -872($fp)
	add $t0, $t0, $t1
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	lw $t1, 0($t0)
	sw $t1, -888($fp)
	lw $t0, -888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -892($fp)
	li $t0, 1
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
	lw $t0, -908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -912($fp)
	li $t0, 2
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
	lw $t0, -928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
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
	addi $t0, $fp, -88
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
	addi $t0, $fp, -88
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
	addi $t0, $fp, -88
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
	addi $t0, $fp, -88
	sw $t0, -1012($fp)
	li $t0, 4
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
	li $t0, 0
	sw $t0, -1036($fp)
	li $t0, 0
	sw $t0, -1040($fp)
	li $t0, 49255
	sw $t0, -1044($fp)
	lw $t1, -1044($fp)
	li $t2, 0
	bne $t1, $t2, label619
	j label618
label618:
	li $t0, 1
	sw $t0, -1040($fp)
label619:
	li $t0, 23113
	sw $t0, -1048($fp)
	lw $t1, -1040($fp)
	lw $t2, -1048($fp)
	bgt $t1, $t2, label616
	j label617
label616:
	li $t0, 1
	sw $t0, -1036($fp)
label617:
	li $t0, 4
	lw $t1, -1036($fp)
	mul $t0, $t0, $t1
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	lw $t1, -1032($fp)
	add $t0, $t0, $t1
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	lw $t1, 0($t0)
	sw $t1, -1060($fp)
	li $t0, 0
	sw $t0, -1064($fp)
	addi $t0, $fp, -68
	sw $t0, -1068($fp)
	li $t0, 1
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
	li $t0, 33393
	sw $t0, -1088($fp)
	li $t0, 0
	lw $t1, -1088($fp)
	sub $t0, $t0, $t1
	sw $t0, -1092($fp)
	li $t0, 0
	lw $t1, -1092($fp)
	sub $t0, $t0, $t1
	sw $t0, -1096($fp)
	lw $t0, -240($fp)
	sw $t0, -1100($fp)
	li $t0, 0
	sw $t0, -1104($fp)
	li $t0, 0
	sw $t0, -1108($fp)
	lw $t0, 20($fp)
	sw $t0, -1112($fp)
	lw $t1, -1112($fp)
	li $t2, 0
	bne $t1, $t2, label625
	j label624
label624:
	li $t0, 1
	sw $t0, -1108($fp)
label625:
	li $t0, 38231
	sw $t0, -1116($fp)
	lw $t1, -1108($fp)
	lw $t2, -1116($fp)
	blt $t1, $t2, label622
	j label623
label622:
	li $t0, 1
	sw $t0, -1104($fp)
label623:
	addi $sp, $sp, -4
	lw $t0, -1084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1104($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1120($fp)
	addi $sp, $sp, 20
	lw $t1, -1120($fp)
	li $t2, 0
	bne $t1, $t2, label621
	j label620
label620:
	li $t0, 1
	sw $t0, -1064($fp)
label621:
	lw $t0, -1060($fp)
	lw $t1, -1064($fp)
	sub $t0, $t0, $t1
	sw $t0, -1124($fp)
	lw $ra, -4($fp)
	lw $v0, -1124($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label626:
	li $t0, 0
	sw $t0, -1128($fp)
	li $t0, 28702
	sw $t0, -1132($fp)
	lw $t0, 4($fp)
	sw $t0, -1136($fp)
	lw $t0, -1132($fp)
	lw $t1, -1136($fp)
	mul $t0, $t0, $t1
	sw $t0, -1140($fp)
	lw $t0, 12($fp)
	sw $t0, -1144($fp)
	lw $t1, -1140($fp)
	lw $t2, -1144($fp)
	beq $t1, $t2, label629
	j label630
label629:
	li $t0, 1
	sw $t0, -1128($fp)
label630:
	li $t0, 0
	sw $t0, -1148($fp)
	lw $t0, 4($fp)
	sw $t0, -1152($fp)
	lw $t1, -1152($fp)
	li $t2, 0
	bne $t1, $t2, label632
	j label631
label631:
	li $t0, 1
	sw $t0, -1148($fp)
label632:
	lw $t0, -240($fp)
	sw $t0, -1156($fp)
	li $t0, 31935
	sw $t0, -1160($fp)
	lw $t0, -1156($fp)
	lw $t1, -1160($fp)
	mul $t0, $t0, $t1
	sw $t0, -1164($fp)
	lw $t0, -240($fp)
	sw $t0, -1168($fp)
	lw $t0, -1164($fp)
	lw $t1, -1168($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1172($fp)
	lw $t0, -240($fp)
	sw $t0, -1176($fp)
	li $t0, 48850
	sw $t0, -1180($fp)
	lw $t0, -1176($fp)
	lw $t1, -1180($fp)
	add $t0, $t0, $t1
	sw $t0, -1184($fp)
	li $t0, 33984
	sw $t0, -1188($fp)
	lw $t0, -1184($fp)
	lw $t1, -1188($fp)
	add $t0, $t0, $t1
	sw $t0, -1192($fp)
	li $t0, 27987
	sw $t0, -1196($fp)
	lw $t0, 16($fp)
	sw $t0, -1200($fp)
	lw $t0, -1196($fp)
	lw $t1, -1200($fp)
	sub $t0, $t0, $t1
	sw $t0, -1204($fp)
	addi $sp, $sp, -4
	lw $t0, -1148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1204($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -1208($fp)
	addi $sp, $sp, 20
	li $t0, 60145
	sw $t0, -1212($fp)
	lw $t0, -1208($fp)
	lw $t1, -1212($fp)
	add $t0, $t0, $t1
	sw $t0, -1216($fp)
	lw $t0, -240($fp)
	sw $t0, -1220($fp)
	lw $t0, 12($fp)
	sw $t0, -1224($fp)
	lw $t0, 4($fp)
	sw $t0, -1228($fp)
	lw $t0, -1224($fp)
	lw $t1, -1228($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1232($fp)
	li $t0, 16157
	sw $t0, -1236($fp)
	lw $t0, -1232($fp)
	lw $t1, -1236($fp)
	add $t0, $t0, $t1
	sw $t0, -1240($fp)
	addi $sp, $sp, -4
	lw $t0, -1128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1240($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1244($fp)
	addi $sp, $sp, 20
	lw $t1, -1244($fp)
	li $t2, 0
	bne $t1, $t2, label627
	j label628
label627:
label633:
	addi $t0, $fp, -88
	sw $t0, -1248($fp)
	li $t0, 0
	sw $t0, -1252($fp)
	lw $t0, -240($fp)
	sw $t0, -1256($fp)
	li $t0, 0
	lw $t1, -1256($fp)
	sub $t0, $t0, $t1
	sw $t0, -1260($fp)
	lw $t1, -1260($fp)
	li $t2, 0
	bne $t1, $t2, label639
	j label638
label639:
	li $t0, 50017
	sw $t0, -1264($fp)
	lw $t1, -1264($fp)
	li $t2, 0
	bne $t1, $t2, label637
	j label638
label637:
	li $t0, 1
	sw $t0, -1252($fp)
label638:
	li $t0, 4
	lw $t1, -1252($fp)
	mul $t0, $t0, $t1
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	lw $t1, -1248($fp)
	add $t0, $t0, $t1
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	lw $t1, 0($t0)
	sw $t1, -1276($fp)
	lw $t1, -1276($fp)
	li $t2, 0
	bne $t1, $t2, label634
	j label636
label636:
	addi $t0, $fp, -88
	sw $t0, -1280($fp)
	li $t0, 0
	sw $t0, -1284($fp)
	li $t0, 45923
	sw $t0, -1288($fp)
	lw $t1, -1288($fp)
	li $t2, 0
	bne $t1, $t2, label640
	j label642
label642:
	lw $t0, 12($fp)
	sw $t0, -1292($fp)
	lw $t1, -1292($fp)
	li $t2, 0
	bne $t1, $t2, label640
	j label641
label640:
	li $t0, 1
	sw $t0, -1284($fp)
label641:
	li $t0, 4
	lw $t1, -1284($fp)
	mul $t0, $t0, $t1
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	lw $t1, -1280($fp)
	add $t0, $t0, $t1
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	lw $t1, 0($t0)
	sw $t1, -1304($fp)
	lw $t1, -1304($fp)
	li $t2, 0
	bne $t1, $t2, label634
	j label635
label634:
	li $t0, 0
	sw $t0, -1308($fp)
	lw $t0, 8($fp)
	sw $t0, -1312($fp)
	li $t0, 0
	lw $t1, -1312($fp)
	sub $t0, $t0, $t1
	sw $t0, -1316($fp)
	lw $t0, 8($fp)
	sw $t0, -1320($fp)
	lw $t1, -1316($fp)
	lw $t2, -1320($fp)
	blt $t1, $t2, label643
	j label644
label643:
	li $t0, 1
	sw $t0, -1308($fp)
label644:
	li $t0, 0
	sw $t0, -1324($fp)
	li $t0, 44578
	sw $t0, -1328($fp)
	lw $t0, 16($fp)
	sw $t0, -1332($fp)
	lw $t1, -1328($fp)
	lw $t2, -1332($fp)
	bgt $t1, $t2, label645
	j label646
label645:
	li $t0, 1
	sw $t0, -1324($fp)
label646:
	li $t0, 0
	sw $t0, -1336($fp)
	li $t0, 0
	sw $t0, -1340($fp)
	li $t0, 12687
	sw $t0, -1344($fp)
	lw $t0, 12($fp)
	sw $t0, -1348($fp)
	lw $t1, -1344($fp)
	lw $t2, -1348($fp)
	bge $t1, $t2, label649
	j label650
label649:
	li $t0, 1
	sw $t0, -1340($fp)
label650:
	li $t0, 26306
	sw $t0, -1352($fp)
	lw $t1, -1340($fp)
	lw $t2, -1352($fp)
	bge $t1, $t2, label647
	j label648
label647:
	li $t0, 1
	sw $t0, -1336($fp)
label648:
	li $t0, 0
	sw $t0, -1356($fp)
	li $t0, 0
	sw $t0, -1360($fp)
	li $t0, 41260
	sw $t0, -1364($fp)
	li $t0, 12670
	sw $t0, -1368($fp)
	lw $t1, -1364($fp)
	lw $t2, -1368($fp)
	bne $t1, $t2, label653
	j label654
label653:
	li $t0, 1
	sw $t0, -1360($fp)
label654:
	lw $t0, 20($fp)
	sw $t0, -1372($fp)
	lw $t1, -1360($fp)
	lw $t2, -1372($fp)
	bne $t1, $t2, label651
	j label652
label651:
	li $t0, 1
	sw $t0, -1356($fp)
label652:
	addi $sp, $sp, -4
	lw $t0, -1308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1356($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1376($fp)
	addi $sp, $sp, 20
	lw $t0, -1376($fp)
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -1380($fp)
	j label633
label635:
	j label626
label628:
	addi $t0, $fp, -28
	sw $t0, -1384($fp)
	li $t0, 0
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
	addi $t0, $fp, -28
	sw $t0, -1404($fp)
	li $t0, 1
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
	addi $t0, $fp, -28
	sw $t0, -1424($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -1444($fp)
	li $t0, 3
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
	addi $t0, $fp, -28
	sw $t0, -1464($fp)
	li $t0, 4
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
	addi $t0, $fp, -28
	sw $t0, -1484($fp)
	li $t0, 5
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
	lw $t0, -240($fp)
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1508($fp)
	li $t0, 0
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
	lw $t0, -1524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1528($fp)
	li $t0, 1
	sw $t0, -1532($fp)
	li $t0, 4
	lw $t1, -1532($fp)
	mul $t0, $t0, $t1
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	lw $t1, -1528($fp)
	add $t0, $t0, $t1
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	lw $t1, 0($t0)
	sw $t1, -1544($fp)
	lw $t0, -1544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1548($fp)
	li $t0, 2
	sw $t0, -1552($fp)
	li $t0, 4
	lw $t1, -1552($fp)
	mul $t0, $t0, $t1
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	lw $t1, -1548($fp)
	add $t0, $t0, $t1
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	lw $t1, 0($t0)
	sw $t1, -1564($fp)
	lw $t0, -1564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1568($fp)
	li $t0, 3
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
	lw $t0, -1584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1588($fp)
	li $t0, 4
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
	lw $t0, -1604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1608($fp)
	li $t0, 5
	sw $t0, -1612($fp)
	li $t0, 4
	lw $t1, -1612($fp)
	mul $t0, $t0, $t1
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	lw $t1, -1608($fp)
	add $t0, $t0, $t1
	sw $t0, -1620($fp)
	lw $t0, -1620($fp)
	lw $t1, 0($t0)
	sw $t1, -1624($fp)
	lw $t0, -1624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1628($fp)
	li $t0, 6
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
	lw $t0, -1644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1648($fp)
	li $t0, 0
	sw $t0, -1652($fp)
	li $t0, 4
	lw $t1, -1652($fp)
	mul $t0, $t0, $t1
	sw $t0, -1656($fp)
	lw $t0, -1656($fp)
	lw $t1, -1648($fp)
	add $t0, $t0, $t1
	sw $t0, -1660($fp)
	lw $t0, -1660($fp)
	lw $t1, 0($t0)
	sw $t1, -1664($fp)
	lw $t0, -1664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1668($fp)
	li $t0, 1
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
	addi $t0, $fp, -68
	sw $t0, -1688($fp)
	li $t0, 2
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
	addi $t0, $fp, -88
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
	addi $t0, $fp, -88
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
	addi $t0, $fp, -88
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
	addi $t0, $fp, -88
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
	addi $t0, $fp, -88
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
	li $t0, 0
	sw $t0, -1808($fp)
	lw $t0, 20($fp)
	sw $t0, -1812($fp)
	li $t0, 0
	sw $t0, -1816($fp)
	lw $t0, 20($fp)
	sw $t0, -1820($fp)
	lw $t1, -1820($fp)
	li $t2, 0
	bne $t1, $t2, label659
	j label658
label658:
	li $t0, 1
	sw $t0, -1816($fp)
label659:
	li $t0, 0
	lw $t1, -1816($fp)
	sub $t0, $t0, $t1
	sw $t0, -1824($fp)
	addi $sp, $sp, -4
	lw $t0, -1812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1824($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1828($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -1828($fp)
	sub $t0, $t0, $t1
	sw $t0, -1832($fp)
	li $t0, 0
	sw $t0, -1836($fp)
	lw $t0, 12($fp)
	sw $t0, -1840($fp)
	lw $t1, -1840($fp)
	li $t2, 0
	bne $t1, $t2, label661
	j label660
label660:
	li $t0, 1
	sw $t0, -1836($fp)
label661:
	li $t0, 0
	lw $t1, -1836($fp)
	sub $t0, $t0, $t1
	sw $t0, -1844($fp)
	lw $t1, -1832($fp)
	lw $t2, -1844($fp)
	bgt $t1, $t2, label657
	j label656
label657:
	addi $t0, $fp, -28
	sw $t0, -1848($fp)
	li $t0, 4
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
	li $t0, 0
	sw $t0, -1868($fp)
	li $t0, 33228
	sw $t0, -1872($fp)
	lw $t1, -1872($fp)
	li $t2, 0
	bne $t1, $t2, label663
	j label662
label662:
	li $t0, 1
	sw $t0, -1868($fp)
label663:
	lw $t1, -1864($fp)
	lw $t2, -1868($fp)
	beq $t1, $t2, label655
	j label656
label655:
	li $t0, 1
	sw $t0, -1808($fp)
label656:
	lw $ra, -4($fp)
	lw $v0, -1808($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f14:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -68
	li $t0, 9104
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	lw $t0, -12($fp)
	sw $t0, -20($fp)
	li $t0, 0
	sw $t0, -24($fp)
	li $t0, 53796
	sw $t0, -28($fp)
	li $t0, 37441
	sw $t0, -32($fp)
	lw $t0, -28($fp)
	lw $t1, -32($fp)
	mul $t0, $t0, $t1
	sw $t0, -36($fp)
	lw $t1, -36($fp)
	li $t2, 0
	bne $t1, $t2, label664
	j label666
label666:
	li $t0, 57592
	sw $t0, -40($fp)
	lw $t1, -40($fp)
	li $t2, 0
	bne $t1, $t2, label664
	j label665
label664:
	li $t0, 1
	sw $t0, -24($fp)
label665:
	li $t0, 0
	sw $t0, -44($fp)
	li $t0, 47132
	sw $t0, -48($fp)
	lw $t1, -48($fp)
	li $t2, 0
	bne $t1, $t2, label668
	j label667
label667:
	li $t0, 1
	sw $t0, -44($fp)
label668:
	li $t0, 40228
	sw $t0, -52($fp)
	lw $t0, -44($fp)
	lw $t1, -52($fp)
	mul $t0, $t0, $t1
	sw $t0, -56($fp)
	li $t0, 64888
	sw $t0, -60($fp)
	addi $sp, $sp, -4
	lw $t0, -20($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -24($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -56($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -60($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -64($fp)
	addi $sp, $sp, 20
	lw $t0, -12($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 33017
	sw $t0, -72($fp)
	lw $ra, -4($fp)
	lw $v0, -72($fp)
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
	jal f14
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
