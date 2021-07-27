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
	addi $sp, $sp, -1416
	li $t0, 39252
	sw $t0, -100($fp)
	addi $t0, $fp, -28
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
	li $t0, 53248
	sw $t0, -124($fp)
	addi $t0, $fp, -28
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
	li $t0, 27949
	sw $t0, -148($fp)
	addi $t0, $fp, -28
	sw $t0, -152($fp)
	li $t0, 2
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
	li $t0, 63748
	sw $t0, -172($fp)
	addi $t0, $fp, -28
	sw $t0, -176($fp)
	li $t0, 3
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
	li $t0, 60546
	sw $t0, -196($fp)
	addi $t0, $fp, -28
	sw $t0, -200($fp)
	li $t0, 4
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
	li $t0, 58619
	sw $t0, -220($fp)
	addi $t0, $fp, -28
	sw $t0, -224($fp)
	li $t0, 5
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
	li $t0, 12712
	sw $t0, -244($fp)
	addi $t0, $fp, -68
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
	li $t0, 31563
	sw $t0, -268($fp)
	addi $t0, $fp, -68
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
	li $t0, 46048
	sw $t0, -292($fp)
	addi $t0, $fp, -68
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
	li $t0, 13554
	sw $t0, -316($fp)
	addi $t0, $fp, -68
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
	li $t0, 42208
	sw $t0, -340($fp)
	addi $t0, $fp, -68
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
	li $t0, 62799
	sw $t0, -364($fp)
	addi $t0, $fp, -68
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
	li $t0, 39828
	sw $t0, -388($fp)
	addi $t0, $fp, -68
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
	li $t0, 56716
	sw $t0, -412($fp)
	addi $t0, $fp, -68
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
	li $t0, 35530
	sw $t0, -436($fp)
	addi $t0, $fp, -68
	sw $t0, -440($fp)
	li $t0, 8
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
	li $t0, 49431
	sw $t0, -460($fp)
	addi $t0, $fp, -68
	sw $t0, -464($fp)
	li $t0, 9
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
	li $t0, 53860
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	li $t0, 29471
	sw $t0, -496($fp)
	addi $t0, $fp, -88
	sw $t0, -500($fp)
	li $t0, 0
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
	li $t0, 35262
	sw $t0, -520($fp)
	addi $t0, $fp, -88
	sw $t0, -524($fp)
	li $t0, 1
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
	li $t0, 8587
	sw $t0, -544($fp)
	addi $t0, $fp, -88
	sw $t0, -548($fp)
	li $t0, 2
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
	li $t0, 25407
	sw $t0, -568($fp)
	addi $t0, $fp, -88
	sw $t0, -572($fp)
	li $t0, 3
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
	li $t0, 53912
	sw $t0, -592($fp)
	addi $t0, $fp, -88
	sw $t0, -596($fp)
	li $t0, 4
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
	li $t0, 33110
	sw $t0, -616($fp)
	addi $t0, $fp, -96
	sw $t0, -620($fp)
	li $t0, 0
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
	li $t0, 44071
	sw $t0, -640($fp)
	addi $t0, $fp, -96
	sw $t0, -644($fp)
	li $t0, 1
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
	li $t0, 0
	sw $t0, -664($fp)
	addi $t0, $fp, -68
	sw $t0, -668($fp)
	lw $t0, 4($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -676($fp)
	li $t0, 4
	lw $t1, -676($fp)
	mul $t0, $t0, $t1
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	lw $t1, -668($fp)
	add $t0, $t0, $t1
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	lw $t1, 0($t0)
	sw $t1, -688($fp)
	li $t0, 0
	sw $t0, -692($fp)
	lw $t0, 4($fp)
	sw $t0, -696($fp)
	lw $t0, 4($fp)
	sw $t0, -700($fp)
	lw $t0, -696($fp)
	lw $t1, -700($fp)
	mul $t0, $t0, $t1
	sw $t0, -704($fp)
	li $t0, 40062
	sw $t0, -708($fp)
	lw $t1, -704($fp)
	lw $t2, -708($fp)
	blt $t1, $t2, label124
	j label125
label124:
	li $t0, 1
	sw $t0, -692($fp)
label125:
	lw $t1, -688($fp)
	lw $t2, -692($fp)
	bne $t1, $t2, label121
	j label123
label123:
	addi $t0, $fp, -96
	sw $t0, -712($fp)
	li $t0, 1
	sw $t0, -716($fp)
	li $t0, 4
	lw $t1, -716($fp)
	mul $t0, $t0, $t1
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	lw $t1, -712($fp)
	add $t0, $t0, $t1
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	lw $t1, 0($t0)
	sw $t1, -728($fp)
	addi $t0, $fp, -96
	sw $t0, -732($fp)
	li $t0, 1
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
	lw $t1, -728($fp)
	lw $t2, -748($fp)
	beq $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -664($fp)
label122:
	lw $t0, 4($fp)
	sw $t0, -752($fp)
	li $t0, 0
	lw $t1, -752($fp)
	sub $t0, $t0, $t1
	sw $t0, -756($fp)
	addi $t0, $fp, -68
	sw $t0, -760($fp)
	lw $t0, 4($fp)
	sw $t0, -764($fp)
	li $t0, 0
	lw $t1, -764($fp)
	sub $t0, $t0, $t1
	sw $t0, -768($fp)
	li $t0, 4
	lw $t1, -768($fp)
	mul $t0, $t0, $t1
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	lw $t1, -760($fp)
	add $t0, $t0, $t1
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	lw $t1, 0($t0)
	sw $t1, -780($fp)
	li $t0, 0
	sw $t0, -784($fp)
	lw $t0, -488($fp)
	sw $t0, -788($fp)
	li $t0, 0
	lw $t1, -788($fp)
	sub $t0, $t0, $t1
	sw $t0, -792($fp)
	lw $t1, -792($fp)
	li $t2, 0
	bne $t1, $t2, label127
	j label126
label126:
	li $t0, 1
	sw $t0, -784($fp)
label127:
	lw $t0, -780($fp)
	lw $t1, -784($fp)
	mul $t0, $t0, $t1
	sw $t0, -796($fp)
	li $t0, 0
	sw $t0, -800($fp)
	li $t0, 45860
	sw $t0, -804($fp)
	lw $t1, -804($fp)
	li $t2, 0
	bne $t1, $t2, label129
	j label128
label128:
	li $t0, 1
	sw $t0, -800($fp)
label129:
	li $t0, 0
	sw $t0, -808($fp)
	addi $t0, $fp, -68
	sw $t0, -812($fp)
	addi $t0, $fp, -28
	sw $t0, -816($fp)
	li $t0, 1
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
	li $t0, 4
	lw $t1, -832($fp)
	mul $t0, $t0, $t1
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	lw $t1, -812($fp)
	add $t0, $t0, $t1
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	lw $t1, 0($t0)
	sw $t1, -844($fp)
	li $t0, 0
	sw $t0, -848($fp)
	li $t0, 0
	sw $t0, -852($fp)
	li $t0, 13372
	sw $t0, -856($fp)
	lw $t1, -856($fp)
	li $t2, 0
	bne $t1, $t2, label135
	j label134
label134:
	li $t0, 1
	sw $t0, -852($fp)
label135:
	li $t0, 10119
	sw $t0, -860($fp)
	lw $t0, -852($fp)
	lw $t1, -860($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -864($fp)
	li $t0, 33572
	sw $t0, -868($fp)
	lw $t0, 8($fp)
	sw $t0, -872($fp)
	lw $t0, -868($fp)
	lw $t1, -872($fp)
	add $t0, $t0, $t1
	sw $t0, -876($fp)
	addi $sp, $sp, -4
	lw $t0, -864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -876($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -880($fp)
	addi $sp, $sp, 12
	lw $t1, -880($fp)
	li $t2, 0
	bne $t1, $t2, label133
	j label132
label132:
	li $t0, 1
	sw $t0, -848($fp)
label133:
	lw $t0, -844($fp)
	lw $t1, -848($fp)
	mul $t0, $t0, $t1
	sw $t0, -884($fp)
	li $t0, 28582
	sw $t0, -888($fp)
	lw $t0, 8($fp)
	sw $t0, -892($fp)
	lw $t0, -888($fp)
	lw $t1, -892($fp)
	add $t0, $t0, $t1
	sw $t0, -896($fp)
	lw $t0, -488($fp)
	sw $t0, -900($fp)
	lw $t0, -896($fp)
	lw $t1, -900($fp)
	add $t0, $t0, $t1
	sw $t0, -904($fp)
	li $t0, 0
	sw $t0, -908($fp)
	lw $t0, -488($fp)
	sw $t0, -912($fp)
	lw $t1, -912($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label136
label136:
	li $t0, 1
	sw $t0, -908($fp)
label137:
	lw $t0, -904($fp)
	lw $t1, -908($fp)
	add $t0, $t0, $t1
	sw $t0, -916($fp)
	lw $t1, -884($fp)
	lw $t2, -916($fp)
	bgt $t1, $t2, label130
	j label131
label130:
	li $t0, 1
	sw $t0, -808($fp)
label131:
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -68
	sw $t0, -1040($fp)
	li $t0, 0
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
	addi $t0, $fp, -68
	sw $t0, -1060($fp)
	li $t0, 1
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
	addi $t0, $fp, -68
	sw $t0, -1080($fp)
	li $t0, 2
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
	addi $t0, $fp, -68
	sw $t0, -1100($fp)
	li $t0, 3
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
	addi $t0, $fp, -68
	sw $t0, -1120($fp)
	li $t0, 4
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
	addi $t0, $fp, -68
	sw $t0, -1140($fp)
	li $t0, 5
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
	addi $t0, $fp, -68
	sw $t0, -1160($fp)
	li $t0, 6
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
	addi $t0, $fp, -68
	sw $t0, -1180($fp)
	li $t0, 7
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
	addi $t0, $fp, -68
	sw $t0, -1200($fp)
	li $t0, 8
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
	addi $t0, $fp, -68
	sw $t0, -1220($fp)
	li $t0, 9
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
	lw $t0, -488($fp)
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -1244($fp)
	li $t0, 0
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
	addi $t0, $fp, -88
	sw $t0, -1264($fp)
	li $t0, 1
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
	addi $t0, $fp, -88
	sw $t0, -1284($fp)
	li $t0, 2
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
	addi $t0, $fp, -88
	sw $t0, -1304($fp)
	li $t0, 3
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
	addi $t0, $fp, -88
	sw $t0, -1324($fp)
	li $t0, 4
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
	addi $t0, $fp, -96
	sw $t0, -1344($fp)
	li $t0, 0
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
	addi $t0, $fp, -96
	sw $t0, -1364($fp)
	li $t0, 1
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
	addi $t0, $fp, -88
	sw $t0, -1384($fp)
	li $t0, 0
	sw $t0, -1388($fp)
	li $t0, 0
	sw $t0, -1392($fp)
	lw $t0, 4($fp)
	sw $t0, -1396($fp)
	lw $t1, -1396($fp)
	li $t2, 0
	bne $t1, $t2, label141
	j label140
label140:
	li $t0, 1
	sw $t0, -1392($fp)
label141:
	li $t0, 6455
	sw $t0, -1400($fp)
	lw $t1, -1392($fp)
	lw $t2, -1400($fp)
	beq $t1, $t2, label138
	j label139
label138:
	li $t0, 1
	sw $t0, -1388($fp)
label139:
	li $t0, 4
	lw $t1, -1388($fp)
	mul $t0, $t0, $t1
	sw $t0, -1404($fp)
	lw $t0, -1404($fp)
	lw $t1, -1384($fp)
	add $t0, $t0, $t1
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	lw $t1, 0($t0)
	sw $t1, -1412($fp)
	li $t0, 22831
	sw $t0, -1416($fp)
	lw $t0, -1412($fp)
	lw $t1, -1416($fp)
	mul $t0, $t0, $t1
	sw $t0, -1420($fp)
	lw $ra, -4($fp)
	lw $v0, -1420($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -380
	li $t0, 60145
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
	li $t0, 52504
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
	li $t0, 36385
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
	li $t0, 36817
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
	li $t0, 49767
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
	li $t0, 10678
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
	li $t0, 27998
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	addi $t0, $fp, -28
	sw $t0, -188($fp)
	li $t0, 0
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
	addi $t0, $fp, -28
	sw $t0, -208($fp)
	li $t0, 1
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
	addi $t0, $fp, -28
	sw $t0, -228($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -248($fp)
	li $t0, 3
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
	addi $t0, $fp, -28
	sw $t0, -268($fp)
	li $t0, 4
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
	addi $t0, $fp, -28
	sw $t0, -288($fp)
	li $t0, 5
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
	lw $t0, -180($fp)
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -312($fp)
	li $t0, 0
	sw $t0, -316($fp)
	addi $t0, $fp, -28
	sw $t0, -320($fp)
	li $t0, 0
	sw $t0, -324($fp)
	lw $t0, -180($fp)
	sw $t0, -328($fp)
	li $t0, 19761
	sw $t0, -332($fp)
	lw $t1, -328($fp)
	lw $t2, -332($fp)
	ble $t1, $t2, label146
	j label147
label146:
	li $t0, 1
	sw $t0, -324($fp)
label147:
	li $t0, 4
	lw $t1, -324($fp)
	mul $t0, $t0, $t1
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	lw $t1, -320($fp)
	add $t0, $t0, $t1
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	lw $t1, 0($t0)
	sw $t1, -344($fp)
	li $t0, 60109
	sw $t0, -348($fp)
	lw $t0, -180($fp)
	sw $t0, -352($fp)
	lw $t0, -348($fp)
	lw $t1, -352($fp)
	mul $t0, $t0, $t1
	sw $t0, -356($fp)
	li $t0, 0
	lw $t1, -356($fp)
	sub $t0, $t0, $t1
	sw $t0, -360($fp)
	lw $t1, -344($fp)
	lw $t2, -360($fp)
	ble $t1, $t2, label144
	j label145
label144:
	li $t0, 1
	sw $t0, -316($fp)
label145:
	li $t0, 0
	sw $t0, -364($fp)
	addi $t0, $fp, -28
	sw $t0, -368($fp)
	lw $t0, -180($fp)
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
	lw $t1, -384($fp)
	li $t2, 0
	bne $t1, $t2, label148
	j label149
label148:
	li $t0, 1
	sw $t0, -364($fp)
label149:
	lw $t1, -316($fp)
	lw $t2, -364($fp)
	ble $t1, $t2, label142
	j label143
label142:
	li $t0, 1
	sw $t0, -312($fp)
label143:
	lw $ra, -4($fp)
	lw $v0, -312($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4376
	li $t0, 16322
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	li $t0, 49233
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	li $t0, 29835
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	li $t0, 24909
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	li $t0, 9104
	sw $t0, -204($fp)
	addi $t0, $fp, -24
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
	li $t0, 18211
	sw $t0, -228($fp)
	addi $t0, $fp, -24
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
	li $t0, 58019
	sw $t0, -252($fp)
	addi $t0, $fp, -24
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
	li $t0, 53176
	sw $t0, -276($fp)
	addi $t0, $fp, -24
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
	li $t0, 58273
	sw $t0, -300($fp)
	addi $t0, $fp, -24
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
	li $t0, 54331
	sw $t0, -324($fp)
	addi $t0, $fp, -44
	sw $t0, -328($fp)
	li $t0, 0
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
	li $t0, 35397
	sw $t0, -348($fp)
	addi $t0, $fp, -44
	sw $t0, -352($fp)
	li $t0, 1
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
	li $t0, 22055
	sw $t0, -372($fp)
	addi $t0, $fp, -44
	sw $t0, -376($fp)
	li $t0, 2
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
	li $t0, 26986
	sw $t0, -396($fp)
	addi $t0, $fp, -44
	sw $t0, -400($fp)
	li $t0, 3
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
	li $t0, 15721
	sw $t0, -420($fp)
	addi $t0, $fp, -44
	sw $t0, -424($fp)
	li $t0, 4
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
	li $t0, 7478
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	li $t0, 38893
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	li $t0, 49293
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	li $t0, 20850
	sw $t0, -480($fp)
	addi $t0, $fp, -48
	sw $t0, -484($fp)
	li $t0, 0
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
	li $t0, 49012
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	li $t0, 12339
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	li $t0, 27305
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	li $t0, 6308
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	li $t0, 6949
	sw $t0, -552($fp)
	addi $t0, $fp, -88
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
	li $t0, 14273
	sw $t0, -576($fp)
	addi $t0, $fp, -88
	sw $t0, -580($fp)
	li $t0, 1
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
	li $t0, 42693
	sw $t0, -600($fp)
	addi $t0, $fp, -88
	sw $t0, -604($fp)
	li $t0, 2
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
	li $t0, 43766
	sw $t0, -624($fp)
	addi $t0, $fp, -88
	sw $t0, -628($fp)
	li $t0, 3
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
	li $t0, 64041
	sw $t0, -648($fp)
	addi $t0, $fp, -88
	sw $t0, -652($fp)
	li $t0, 4
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
	li $t0, 53371
	sw $t0, -672($fp)
	addi $t0, $fp, -88
	sw $t0, -676($fp)
	li $t0, 5
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
	li $t0, 6228
	sw $t0, -696($fp)
	addi $t0, $fp, -88
	sw $t0, -700($fp)
	li $t0, 6
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
	li $t0, 18266
	sw $t0, -720($fp)
	addi $t0, $fp, -88
	sw $t0, -724($fp)
	li $t0, 7
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
	li $t0, 47945
	sw $t0, -744($fp)
	addi $t0, $fp, -88
	sw $t0, -748($fp)
	li $t0, 8
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
	li $t0, 22550
	sw $t0, -768($fp)
	addi $t0, $fp, -88
	sw $t0, -772($fp)
	li $t0, 9
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
	li $t0, 1963
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	sw $t0, -800($fp)
	li $t0, 12244
	sw $t0, -804($fp)
	addi $t0, $fp, -124
	sw $t0, -808($fp)
	li $t0, 0
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
	li $t0, 47460
	sw $t0, -828($fp)
	addi $t0, $fp, -124
	sw $t0, -832($fp)
	li $t0, 1
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
	li $t0, 11068
	sw $t0, -852($fp)
	addi $t0, $fp, -124
	sw $t0, -856($fp)
	li $t0, 2
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
	li $t0, 30456
	sw $t0, -876($fp)
	addi $t0, $fp, -124
	sw $t0, -880($fp)
	li $t0, 3
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
	li $t0, 39943
	sw $t0, -900($fp)
	addi $t0, $fp, -124
	sw $t0, -904($fp)
	li $t0, 4
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
	li $t0, 64244
	sw $t0, -924($fp)
	addi $t0, $fp, -124
	sw $t0, -928($fp)
	li $t0, 5
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
	li $t0, 23193
	sw $t0, -948($fp)
	addi $t0, $fp, -124
	sw $t0, -952($fp)
	li $t0, 6
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
	li $t0, 28739
	sw $t0, -972($fp)
	addi $t0, $fp, -124
	sw $t0, -976($fp)
	li $t0, 7
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
	li $t0, 34105
	sw $t0, -996($fp)
	addi $t0, $fp, -124
	sw $t0, -1000($fp)
	li $t0, 8
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
	li $t0, 45248
	sw $t0, -1020($fp)
	addi $t0, $fp, -128
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
	li $t0, 55725
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -1052($fp)
	li $t0, 49827
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	sw $t0, -1064($fp)
	li $t0, 52726
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	sw $t0, -1076($fp)
	li $t0, 29083
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, -1088($fp)
	li $t0, 33584
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	sw $t0, -1100($fp)
	li $t0, 8040
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	sw $t0, -1112($fp)
	li $t0, 12559
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	sw $t0, -1124($fp)
	li $t0, 45924
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	sw $t0, -1136($fp)
	li $t0, 35346
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	sw $t0, -1148($fp)
	li $t0, 18867
	sw $t0, -1152($fp)
	addi $t0, $fp, -132
	sw $t0, -1156($fp)
	li $t0, 0
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1164($fp)
	lw $t0, -1156($fp)
	lw $t1, -1164($fp)
	add $t0, $t0, $t1
	sw $t0, -1168($fp)
	lw $t0, -1152($fp)
	lw $t1, -1168($fp)
	sw $t0, 0($t1)
	lw $t0, -1168($fp)
	lw $t1, 0($t0)
	sw $t1, -1172($fp)
	li $t0, 52873
	sw $t0, -1176($fp)
	addi $t0, $fp, -152
	sw $t0, -1180($fp)
	li $t0, 0
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1188($fp)
	lw $t0, -1180($fp)
	lw $t1, -1188($fp)
	add $t0, $t0, $t1
	sw $t0, -1192($fp)
	lw $t0, -1176($fp)
	lw $t1, -1192($fp)
	sw $t0, 0($t1)
	lw $t0, -1192($fp)
	lw $t1, 0($t0)
	sw $t1, -1196($fp)
	li $t0, 49619
	sw $t0, -1200($fp)
	addi $t0, $fp, -152
	sw $t0, -1204($fp)
	li $t0, 1
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1212($fp)
	lw $t0, -1204($fp)
	lw $t1, -1212($fp)
	add $t0, $t0, $t1
	sw $t0, -1216($fp)
	lw $t0, -1200($fp)
	lw $t1, -1216($fp)
	sw $t0, 0($t1)
	lw $t0, -1216($fp)
	lw $t1, 0($t0)
	sw $t1, -1220($fp)
	li $t0, 61561
	sw $t0, -1224($fp)
	addi $t0, $fp, -152
	sw $t0, -1228($fp)
	li $t0, 2
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
	li $t0, 31103
	sw $t0, -1248($fp)
	addi $t0, $fp, -152
	sw $t0, -1252($fp)
	li $t0, 3
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1260($fp)
	lw $t0, -1252($fp)
	lw $t1, -1260($fp)
	add $t0, $t0, $t1
	sw $t0, -1264($fp)
	lw $t0, -1248($fp)
	lw $t1, -1264($fp)
	sw $t0, 0($t1)
	lw $t0, -1264($fp)
	lw $t1, 0($t0)
	sw $t1, -1268($fp)
	li $t0, 48124
	sw $t0, -1272($fp)
	addi $t0, $fp, -152
	sw $t0, -1276($fp)
	li $t0, 4
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1284($fp)
	lw $t0, -1276($fp)
	lw $t1, -1284($fp)
	add $t0, $t0, $t1
	sw $t0, -1288($fp)
	lw $t0, -1272($fp)
	lw $t1, -1288($fp)
	sw $t0, 0($t1)
	lw $t0, -1288($fp)
	lw $t1, 0($t0)
	sw $t1, -1292($fp)
label150:
	addi $t0, $fp, -124
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
	lw $t0, -172($fp)
	sw $t0, -1316($fp)
	lw $t0, -1312($fp)
	lw $t1, -1316($fp)
	mul $t0, $t0, $t1
	sw $t0, -1320($fp)
	lw $t1, -1320($fp)
	li $t2, 0
	bne $t1, $t2, label151
	j label152
label151:
label153:
	lw $t0, -160($fp)
	sw $t0, -1324($fp)
	lw $t1, -1324($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label155
label154:
	addi $t0, $fp, -152
	sw $t0, -1328($fp)
	li $t0, 3
	sw $t0, -1332($fp)
	li $t0, 4
	lw $t1, -1332($fp)
	mul $t0, $t0, $t1
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	lw $t1, -1328($fp)
	add $t0, $t0, $t1
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	lw $t1, 0($t0)
	sw $t1, -1344($fp)
	lw $t1, -1344($fp)
	li $t2, 0
	bne $t1, $t2, label156
	j label157
label156:
	li $t0, 0
	sw $t0, -1348($fp)
	lw $t0, -196($fp)
	sw $t0, -1352($fp)
	lw $t1, -1352($fp)
	li $t2, 0
	bne $t1, $t2, label159
	j label162
label162:
	lw $t0, -1144($fp)
	sw $t0, -1356($fp)
	li $t0, 59882
	sw $t0, -1360($fp)
	lw $t1, -1356($fp)
	lw $t2, -1360($fp)
	ble $t1, $t2, label159
	j label161
label161:
	jal f7
	sw $v0, -1364($fp)
	addi $sp, $sp, 4
	lw $t0, -184($fp)
	sw $t0, -1368($fp)
	lw $t0, -1364($fp)
	lw $t1, -1368($fp)
	mul $t0, $t0, $t1
	sw $t0, -1372($fp)
	li $t0, 0
	sw $t0, -1376($fp)
	li $t0, 41806
	sw $t0, -1380($fp)
	li $t0, 0
	lw $t1, -1380($fp)
	sub $t0, $t0, $t1
	sw $t0, -1384($fp)
	lw $t1, -1384($fp)
	li $t2, 0
	bne $t1, $t2, label163
	j label165
label165:
	li $t0, 13886
	sw $t0, -1388($fp)
	lw $t1, -1388($fp)
	li $t2, 0
	bne $t1, $t2, label163
	j label164
label163:
	li $t0, 1
	sw $t0, -1376($fp)
label164:
	addi $t0, $fp, -124
	sw $t0, -1392($fp)
	li $t0, 2
	sw $t0, -1396($fp)
	li $t0, 4
	lw $t1, -1396($fp)
	mul $t0, $t0, $t1
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	lw $t1, -1392($fp)
	add $t0, $t0, $t1
	sw $t0, -1404($fp)
	lw $t0, -1404($fp)
	lw $t1, 0($t0)
	sw $t1, -1408($fp)
	addi $sp, $sp, -4
	lw $t0, -1376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1408($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1412($fp)
	addi $sp, $sp, 12
	lw $t0, -1372($fp)
	lw $t1, -1412($fp)
	add $t0, $t0, $t1
	sw $t0, -1416($fp)
	lw $t1, -1416($fp)
	li $t2, 0
	bne $t1, $t2, label159
	j label160
label159:
	li $t0, 1
	sw $t0, -1348($fp)
label160:
	lw $ra, -4($fp)
	lw $v0, -1348($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label157:
label166:
	addi $t0, $fp, -152
	sw $t0, -1420($fp)
	li $t0, 0
	sw $t0, -1424($fp)
	li $t0, 8970
	sw $t0, -1428($fp)
	lw $t1, -1428($fp)
	li $t2, 0
	bne $t1, $t2, label173
	j label171
label173:
	li $t0, 16214
	sw $t0, -1432($fp)
	lw $t1, -1432($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label171
label172:
	li $t0, 12594
	sw $t0, -1436($fp)
	lw $t1, -1436($fp)
	li $t2, 0
	bne $t1, $t2, label170
	j label171
label170:
	li $t0, 1
	sw $t0, -1424($fp)
label171:
	li $t0, 4
	lw $t1, -1424($fp)
	mul $t0, $t0, $t1
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	lw $t1, -1420($fp)
	add $t0, $t0, $t1
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	lw $t1, 0($t0)
	sw $t1, -1448($fp)
	lw $t1, -1448($fp)
	li $t2, 0
	bne $t1, $t2, label167
	j label169
label169:
	addi $t0, $fp, -24
	sw $t0, -1452($fp)
	lw $t0, -1108($fp)
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
	lw $t1, -1468($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label167
label167:
	lw $t0, -196($fp)
	sw $t0, -1472($fp)
	li $t0, 32163
	sw $t0, -1476($fp)
	lw $t0, -1472($fp)
	lw $t1, -1476($fp)
	mul $t0, $t0, $t1
	sw $t0, -1480($fp)
	lw $t1, -1480($fp)
	li $t2, 0
	bne $t1, $t2, label174
	j label175
label174:
	li $t0, 0
	sw $t0, -1484($fp)
	li $t0, 0
	sw $t0, -1488($fp)
	jal f7
	sw $v0, -1492($fp)
	addi $sp, $sp, 4
	lw $t1, -1492($fp)
	li $t2, 0
	bne $t1, $t2, label180
	j label179
label179:
	li $t0, 1
	sw $t0, -1488($fp)
label180:
	li $t0, 44953
	sw $t0, -1496($fp)
	lw $t1, -1488($fp)
	lw $t2, -1496($fp)
	ble $t1, $t2, label177
	j label178
label177:
	li $t0, 1
	sw $t0, -1484($fp)
label178:
	j label176
label175:
	addi $t0, $fp, -24
	sw $t0, -1500($fp)
	lw $t0, -532($fp)
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	sw $t0, -1508($fp)
	li $t0, 4
	lw $t1, -1508($fp)
	mul $t0, $t0, $t1
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	lw $t1, -1500($fp)
	add $t0, $t0, $t1
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	lw $t1, 0($t0)
	sw $t1, -1520($fp)
	li $t0, 0
	sw $t0, -1524($fp)
	addi $t0, $fp, -128
	sw $t0, -1528($fp)
	lw $t0, -1048($fp)
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
	li $t0, 0
	lw $t1, -1544($fp)
	sub $t0, $t0, $t1
	sw $t0, -1548($fp)
	lw $t1, -1548($fp)
	li $t2, 0
	bne $t1, $t2, label185
	j label184
label184:
	li $t0, 1
	sw $t0, -1524($fp)
label185:
	lw $t0, -1520($fp)
	lw $t1, -1524($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1552($fp)
	lw $t1, -1552($fp)
	li $t2, 0
	bne $t1, $t2, label181
	j label182
label181:
	li $t0, 0
	sw $t0, -1556($fp)
	jal f7
	sw $v0, -1560($fp)
	addi $sp, $sp, 4
	lw $t1, -1560($fp)
	li $t2, 0
	bne $t1, $t2, label186
	j label188
label188:
	li $t0, 46700
	sw $t0, -1564($fp)
	li $t0, 0
	lw $t1, -1564($fp)
	sub $t0, $t0, $t1
	sw $t0, -1568($fp)
	lw $t1, -1568($fp)
	li $t2, 0
	bne $t1, $t2, label186
	j label187
label186:
	li $t0, 1
	sw $t0, -1556($fp)
label187:
	li $t0, 0
	sw $t0, -1572($fp)
	addi $t0, $fp, -124
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
	lw $t0, -460($fp)
	sw $t0, -1596($fp)
	lw $t0, -1592($fp)
	lw $t1, -1596($fp)
	mul $t0, $t0, $t1
	sw $t0, -1600($fp)
	addi $t0, $fp, -132
	sw $t0, -1604($fp)
	li $t0, 0
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
	lw $t0, -1600($fp)
	lw $t1, -1620($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1624($fp)
	jal f8
	sw $v0, -1628($fp)
	addi $sp, $sp, 4
	lw $t1, -1624($fp)
	lw $t2, -1628($fp)
	ble $t1, $t2, label189
	j label190
label189:
	li $t0, 1
	sw $t0, -1572($fp)
label190:
	j label183
label182:
	jal f7
	sw $v0, -1632($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -1632($fp)
	sub $t0, $t0, $t1
	sw $t0, -1636($fp)
label183:
label176:
	j label166
label168:
	j label153
label155:
	j label150
label152:
	jal f7
	sw $v0, -1640($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -44
	sw $t0, -1644($fp)
	lw $t0, -448($fp)
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
	li $t0, 0
	lw $t1, -1660($fp)
	sub $t0, $t0, $t1
	sw $t0, -1664($fp)
	lw $t0, -1640($fp)
	lw $t1, -1664($fp)
	mul $t0, $t0, $t1
	sw $t0, -1668($fp)
	lw $t1, -1668($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label192
label191:
	li $t0, 64225
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	sw $t0, -1680($fp)
	li $t0, 64575
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	sw $t0, -1692($fp)
	li $t0, 7107
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	sw $t0, -1704($fp)
	li $t0, 11249
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	sw $t0, -1716($fp)
	jal f8
	sw $v0, -1720($fp)
	addi $sp, $sp, 4
label194:
	li $t0, 0
	sw $t0, -1724($fp)
	lw $t0, -1144($fp)
	sw $t0, -1728($fp)
	lw $t0, -1688($fp)
	sw $t0, -1732($fp)
	lw $t0, -1728($fp)
	lw $t1, -1732($fp)
	sub $t0, $t0, $t1
	sw $t0, -1736($fp)
	li $t0, 0
	sw $t0, -1740($fp)
	lw $t0, -1144($fp)
	sw $t0, -1744($fp)
	lw $t1, -1744($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label199
label199:
	li $t0, 1
	sw $t0, -1740($fp)
label200:
	lw $t1, -1736($fp)
	lw $t2, -1740($fp)
	ble $t1, $t2, label197
	j label198
label197:
	li $t0, 1
	sw $t0, -1724($fp)
label198:
	lw $t0, -1724($fp)
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	sw $t0, -1748($fp)
	lw $t1, -1748($fp)
	li $t2, 0
	bne $t1, $t2, label195
	j label196
label195:
	li $t0, 44963
	sw $t0, -1788($fp)
	addi $t0, $fp, -1784
	sw $t0, -1792($fp)
	li $t0, 0
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1800($fp)
	lw $t0, -1792($fp)
	lw $t1, -1800($fp)
	add $t0, $t0, $t1
	sw $t0, -1804($fp)
	lw $t0, -1788($fp)
	lw $t1, -1804($fp)
	sw $t0, 0($t1)
	lw $t0, -1804($fp)
	lw $t1, 0($t0)
	sw $t1, -1808($fp)
	li $t0, 42453
	sw $t0, -1812($fp)
	addi $t0, $fp, -1784
	sw $t0, -1816($fp)
	li $t0, 1
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1824($fp)
	lw $t0, -1816($fp)
	lw $t1, -1824($fp)
	add $t0, $t0, $t1
	sw $t0, -1828($fp)
	lw $t0, -1812($fp)
	lw $t1, -1828($fp)
	sw $t0, 0($t1)
	lw $t0, -1828($fp)
	lw $t1, 0($t0)
	sw $t1, -1832($fp)
	li $t0, 30116
	sw $t0, -1836($fp)
	addi $t0, $fp, -1784
	sw $t0, -1840($fp)
	li $t0, 2
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1848($fp)
	lw $t0, -1840($fp)
	lw $t1, -1848($fp)
	add $t0, $t0, $t1
	sw $t0, -1852($fp)
	lw $t0, -1836($fp)
	lw $t1, -1852($fp)
	sw $t0, 0($t1)
	lw $t0, -1852($fp)
	lw $t1, 0($t0)
	sw $t1, -1856($fp)
	li $t0, 32300
	sw $t0, -1860($fp)
	addi $t0, $fp, -1784
	sw $t0, -1864($fp)
	li $t0, 3
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1872($fp)
	lw $t0, -1864($fp)
	lw $t1, -1872($fp)
	add $t0, $t0, $t1
	sw $t0, -1876($fp)
	lw $t0, -1860($fp)
	lw $t1, -1876($fp)
	sw $t0, 0($t1)
	lw $t0, -1876($fp)
	lw $t1, 0($t0)
	sw $t1, -1880($fp)
	li $t0, 26536
	sw $t0, -1884($fp)
	addi $t0, $fp, -1784
	sw $t0, -1888($fp)
	li $t0, 4
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
	li $t0, 26141
	sw $t0, -1908($fp)
	addi $t0, $fp, -1784
	sw $t0, -1912($fp)
	li $t0, 5
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
	li $t0, 63404
	sw $t0, -1932($fp)
	addi $t0, $fp, -1784
	sw $t0, -1936($fp)
	li $t0, 6
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
	li $t0, 9125
	sw $t0, -1956($fp)
	addi $t0, $fp, -1784
	sw $t0, -1960($fp)
	li $t0, 7
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
	li $t0, 10002
	sw $t0, -1980($fp)
	addi $t0, $fp, -1784
	sw $t0, -1984($fp)
	li $t0, 8
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
	li $t0, 0
	sw $t0, -2004($fp)
	addi $t0, $fp, -1784
	sw $t0, -2008($fp)
	li $t0, 0
	sw $t0, -2012($fp)
	li $t0, 0
	sw $t0, -2016($fp)
	lw $t0, -1048($fp)
	sw $t0, -2020($fp)
	li $t0, 35200
	sw $t0, -2024($fp)
	lw $t1, -2020($fp)
	lw $t2, -2024($fp)
	bgt $t1, $t2, label205
	j label206
label205:
	li $t0, 1
	sw $t0, -2016($fp)
label206:
	lw $t0, -544($fp)
	sw $t0, -2028($fp)
	lw $t1, -2016($fp)
	lw $t2, -2028($fp)
	bne $t1, $t2, label203
	j label204
label203:
	li $t0, 1
	sw $t0, -2012($fp)
label204:
	li $t0, 4
	lw $t1, -2012($fp)
	mul $t0, $t0, $t1
	sw $t0, -2032($fp)
	lw $t0, -2032($fp)
	lw $t1, -2008($fp)
	add $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	lw $t1, 0($t0)
	sw $t1, -2040($fp)
	li $t0, 0
	sw $t0, -2044($fp)
	li $t0, 9980
	sw $t0, -2048($fp)
	lw $t1, -2048($fp)
	li $t2, 0
	bne $t1, $t2, label208
	j label207
label207:
	li $t0, 1
	sw $t0, -2044($fp)
label208:
	lw $t1, -2040($fp)
	lw $t2, -2044($fp)
	bne $t1, $t2, label201
	j label202
label201:
	li $t0, 1
	sw $t0, -2004($fp)
label202:
	li $t0, 0
	sw $t0, -2052($fp)
	addi $t0, $fp, -132
	sw $t0, -2056($fp)
	li $t0, 41807
	sw $t0, -2060($fp)
	lw $t0, -184($fp)
	sw $t0, -2064($fp)
	lw $t0, -2060($fp)
	lw $t1, -2064($fp)
	mul $t0, $t0, $t1
	sw $t0, -2068($fp)
	li $t0, 4
	lw $t1, -2068($fp)
	mul $t0, $t0, $t1
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	lw $t1, -2056($fp)
	add $t0, $t0, $t1
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	lw $t1, 0($t0)
	sw $t1, -2080($fp)
	addi $t0, $fp, -44
	sw $t0, -2084($fp)
	li $t0, 3
	sw $t0, -2088($fp)
	li $t0, 4
	lw $t1, -2088($fp)
	mul $t0, $t0, $t1
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	lw $t1, -2084($fp)
	add $t0, $t0, $t1
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	lw $t1, 0($t0)
	sw $t1, -2100($fp)
	lw $t0, -2080($fp)
	lw $t1, -2100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2104($fp)
	lw $t1, -2104($fp)
	li $t2, 0
	bne $t1, $t2, label209
	j label211
label211:
	li $t0, 0
	sw $t0, -2108($fp)
	addi $t0, $fp, -124
	sw $t0, -2112($fp)
	li $t0, 1
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
	lw $t1, -2128($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label212
label212:
	li $t0, 1
	sw $t0, -2108($fp)
label213:
	li $t0, 0
	sw $t0, -2132($fp)
	lw $t0, -1108($fp)
	sw $t0, -2136($fp)
	lw $t1, -2136($fp)
	li $t2, 0
	bne $t1, $t2, label215
	j label214
label214:
	li $t0, 1
	sw $t0, -2132($fp)
label215:
	lw $t1, -2108($fp)
	lw $t2, -2132($fp)
	bne $t1, $t2, label209
	j label210
label209:
	li $t0, 1
	sw $t0, -2052($fp)
label210:
	addi $t0, $fp, -24
	sw $t0, -2140($fp)
	li $t0, 0
	sw $t0, -2144($fp)
	lw $t0, -1108($fp)
	sw $t0, -2148($fp)
	lw $t1, -2148($fp)
	li $t2, 0
	bne $t1, $t2, label217
	j label216
label216:
	li $t0, 1
	sw $t0, -2144($fp)
label217:
	li $t0, 4
	lw $t1, -2144($fp)
	mul $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	lw $t1, -2140($fp)
	add $t0, $t0, $t1
	sw $t0, -2156($fp)
	lw $t0, -2156($fp)
	lw $t1, 0($t0)
	sw $t1, -2160($fp)
	j label194
label196:
	lw $t0, -520($fp)
	sw $t0, -2164($fp)
	addi $t0, $fp, -88
	sw $t0, -2168($fp)
	lw $t0, -1700($fp)
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
	li $t0, 26685
	sw $t0, -2188($fp)
	lw $t0, -2184($fp)
	lw $t1, -2188($fp)
	sub $t0, $t0, $t1
	sw $t0, -2192($fp)
	lw $t1, -2164($fp)
	lw $t2, -2192($fp)
	bne $t1, $t2, label218
	j label219
label218:
	li $t0, 29291
	sw $t0, -2196($fp)
	lw $ra, -4($fp)
	lw $v0, -2196($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label220
label219:
	li $t0, 0
	sw $t0, -2200($fp)
	li $t0, 0
	sw $t0, -2204($fp)
	addi $t0, $fp, -152
	sw $t0, -2208($fp)
	lw $t0, -1676($fp)
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
	li $t0, 22031
	sw $t0, -2228($fp)
	lw $t1, -2224($fp)
	lw $t2, -2228($fp)
	bne $t1, $t2, label223
	j label224
label223:
	li $t0, 1
	sw $t0, -2204($fp)
label224:
	li $t0, 39279
	sw $t0, -2232($fp)
	lw $t0, -1108($fp)
	sw $t0, -2236($fp)
	lw $t0, -2232($fp)
	lw $t1, -2236($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2240($fp)
	lw $t1, -2204($fp)
	lw $t2, -2240($fp)
	beq $t1, $t2, label221
	j label222
label221:
	li $t0, 1
	sw $t0, -2200($fp)
label222:
	lw $t0, -2200($fp)
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -2244($fp)
label220:
label225:
	li $t0, 0
	sw $t0, -2248($fp)
	lw $t0, -1132($fp)
	sw $t0, -2252($fp)
	lw $t1, -2252($fp)
	li $t2, 0
	bne $t1, $t2, label229
	j label228
label228:
	li $t0, 1
	sw $t0, -2248($fp)
label229:
	li $t0, 61455
	sw $t0, -2256($fp)
	lw $t0, -2248($fp)
	lw $t1, -2256($fp)
	mul $t0, $t0, $t1
	sw $t0, -2260($fp)
	lw $t0, -1108($fp)
	sw $t0, -2264($fp)
	addi $sp, $sp, -4
	lw $t0, -2260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2264($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2268($fp)
	addi $sp, $sp, 12
	lw $t1, -2268($fp)
	li $t2, 0
	bne $t1, $t2, label226
	j label227
label226:
	li $t0, 1448
	sw $t0, -2312($fp)
	addi $t0, $fp, -2308
	sw $t0, -2316($fp)
	li $t0, 0
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
	li $t0, 20443
	sw $t0, -2336($fp)
	addi $t0, $fp, -2308
	sw $t0, -2340($fp)
	li $t0, 1
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
	li $t0, 7795
	sw $t0, -2360($fp)
	addi $t0, $fp, -2308
	sw $t0, -2364($fp)
	li $t0, 2
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
	li $t0, 36590
	sw $t0, -2384($fp)
	addi $t0, $fp, -2308
	sw $t0, -2388($fp)
	li $t0, 3
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2396($fp)
	lw $t0, -2388($fp)
	lw $t1, -2396($fp)
	add $t0, $t0, $t1
	sw $t0, -2400($fp)
	lw $t0, -2384($fp)
	lw $t1, -2400($fp)
	sw $t0, 0($t1)
	lw $t0, -2400($fp)
	lw $t1, 0($t0)
	sw $t1, -2404($fp)
	li $t0, 51434
	sw $t0, -2408($fp)
	addi $t0, $fp, -2308
	sw $t0, -2412($fp)
	li $t0, 4
	sw $t0, -2416($fp)
	lw $t0, -2416($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2420($fp)
	lw $t0, -2412($fp)
	lw $t1, -2420($fp)
	add $t0, $t0, $t1
	sw $t0, -2424($fp)
	lw $t0, -2408($fp)
	lw $t1, -2424($fp)
	sw $t0, 0($t1)
	lw $t0, -2424($fp)
	lw $t1, 0($t0)
	sw $t1, -2428($fp)
	li $t0, 6861
	sw $t0, -2432($fp)
	addi $t0, $fp, -2308
	sw $t0, -2436($fp)
	li $t0, 5
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
	li $t0, 35280
	sw $t0, -2456($fp)
	addi $t0, $fp, -2308
	sw $t0, -2460($fp)
	li $t0, 6
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
	li $t0, 50474
	sw $t0, -2480($fp)
	addi $t0, $fp, -2308
	sw $t0, -2484($fp)
	li $t0, 7
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
	li $t0, 13968
	sw $t0, -2504($fp)
	addi $t0, $fp, -2308
	sw $t0, -2508($fp)
	li $t0, 8
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
	li $t0, 46529
	sw $t0, -2528($fp)
	addi $t0, $fp, -2308
	sw $t0, -2532($fp)
	li $t0, 9
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
	lw $t0, -1132($fp)
	sw $t0, -2552($fp)
	li $t0, 0
	sw $t0, -2556($fp)
	jal f8
	sw $v0, -2560($fp)
	addi $sp, $sp, 4
	li $t0, 29901
	sw $t0, -2564($fp)
	li $t0, 56421
	sw $t0, -2568($fp)
	lw $t0, -2564($fp)
	lw $t1, -2568($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2572($fp)
	lw $t1, -2560($fp)
	lw $t2, -2572($fp)
	bge $t1, $t2, label230
	j label231
label230:
	li $t0, 1
	sw $t0, -2556($fp)
label231:
	lw $t0, -2556($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -2576($fp)
	addi $t0, $fp, -128
	sw $t0, -2580($fp)
	addi $t0, $fp, -2308
	sw $t0, -2584($fp)
	li $t0, 6
	sw $t0, -2588($fp)
	li $t0, 4
	lw $t1, -2588($fp)
	mul $t0, $t0, $t1
	sw $t0, -2592($fp)
	lw $t0, -2592($fp)
	lw $t1, -2584($fp)
	add $t0, $t0, $t1
	sw $t0, -2596($fp)
	lw $t0, -2596($fp)
	lw $t1, 0($t0)
	sw $t1, -2600($fp)
	li $t0, 4
	lw $t1, -2600($fp)
	mul $t0, $t0, $t1
	sw $t0, -2604($fp)
	lw $t0, -2604($fp)
	lw $t1, -2580($fp)
	add $t0, $t0, $t1
	sw $t0, -2608($fp)
	lw $t0, -2608($fp)
	lw $t1, 0($t0)
	sw $t1, -2612($fp)
	li $t0, 17422
	sw $t0, -2616($fp)
	lw $t0, -2612($fp)
	lw $t1, -2616($fp)
	mul $t0, $t0, $t1
	sw $t0, -2620($fp)
	li $t0, 0
	sw $t0, -2624($fp)
	li $t0, 0
	sw $t0, -2628($fp)
	lw $t0, -1084($fp)
	sw $t0, -2632($fp)
	lw $t0, -1144($fp)
	sw $t0, -2636($fp)
	lw $t0, -2632($fp)
	lw $t1, -2636($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2640($fp)
	li $t0, 37251
	sw $t0, -2644($fp)
	lw $t1, -2640($fp)
	lw $t2, -2644($fp)
	bge $t1, $t2, label234
	j label235
label234:
	li $t0, 1
	sw $t0, -2628($fp)
label235:
	lw $t0, -196($fp)
	sw $t0, -2648($fp)
	li $t0, 60070
	sw $t0, -2652($fp)
	lw $t0, -2648($fp)
	lw $t1, -2652($fp)
	sub $t0, $t0, $t1
	sw $t0, -2656($fp)
	lw $t0, -1688($fp)
	sw $t0, -2660($fp)
	lw $t0, -2656($fp)
	lw $t1, -2660($fp)
	sub $t0, $t0, $t1
	sw $t0, -2664($fp)
	li $t0, 26547
	sw $t0, -2668($fp)
	li $t0, 47253
	sw $t0, -2672($fp)
	lw $t0, -2668($fp)
	lw $t1, -2672($fp)
	mul $t0, $t0, $t1
	sw $t0, -2676($fp)
	lw $t0, -2664($fp)
	lw $t1, -2676($fp)
	add $t0, $t0, $t1
	sw $t0, -2680($fp)
	lw $t1, -2628($fp)
	lw $t2, -2680($fp)
	beq $t1, $t2, label232
	j label233
label232:
	li $t0, 1
	sw $t0, -2624($fp)
label233:
	j label225
label227:
	j label193
label192:
	addi $t0, $fp, -24
	sw $t0, -2684($fp)
	li $t0, 0
	sw $t0, -2688($fp)
	lw $t0, -1072($fp)
	sw $t0, -2692($fp)
	lw $t0, -544($fp)
	sw $t0, -2696($fp)
	lw $t0, -2692($fp)
	lw $t1, -2696($fp)
	mul $t0, $t0, $t1
	sw $t0, -2700($fp)
	lw $t0, -1120($fp)
	sw $t0, -2704($fp)
	lw $t0, -2700($fp)
	lw $t1, -2704($fp)
	sub $t0, $t0, $t1
	sw $t0, -2708($fp)
	li $t0, 0
	sw $t0, -2712($fp)
	li $t0, 29734
	sw $t0, -2716($fp)
	lw $t0, -1048($fp)
	sw $t0, -2720($fp)
	lw $t1, -2716($fp)
	lw $t2, -2720($fp)
	bge $t1, $t2, label238
	j label239
label238:
	li $t0, 1
	sw $t0, -2712($fp)
label239:
	lw $t1, -2708($fp)
	lw $t2, -2712($fp)
	bne $t1, $t2, label236
	j label237
label236:
	li $t0, 1
	sw $t0, -2688($fp)
label237:
	li $t0, 4
	lw $t1, -2688($fp)
	mul $t0, $t0, $t1
	sw $t0, -2724($fp)
	lw $t0, -2724($fp)
	lw $t1, -2684($fp)
	add $t0, $t0, $t1
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	lw $t1, 0($t0)
	sw $t1, -2732($fp)
label193:
label240:
	addi $t0, $fp, -124
	sw $t0, -2736($fp)
	li $t0, 0
	sw $t0, -2740($fp)
	li $t0, 36527
	sw $t0, -2744($fp)
	lw $t1, -2744($fp)
	li $t2, 0
	bne $t1, $t2, label246
	j label245
label246:
	lw $t0, -1084($fp)
	sw $t0, -2748($fp)
	lw $t1, -2748($fp)
	li $t2, 0
	bne $t1, $t2, label244
	j label245
label244:
	li $t0, 1
	sw $t0, -2740($fp)
label245:
	li $t0, 4
	lw $t1, -2740($fp)
	mul $t0, $t0, $t1
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	lw $t1, -2736($fp)
	add $t0, $t0, $t1
	sw $t0, -2756($fp)
	lw $t0, -2756($fp)
	lw $t1, 0($t0)
	sw $t1, -2760($fp)
	li $t0, 0
	lw $t1, -2760($fp)
	sub $t0, $t0, $t1
	sw $t0, -2764($fp)
	lw $t1, -2764($fp)
	li $t2, 0
	bne $t1, $t2, label241
	j label243
label243:
	lw $t0, -1096($fp)
	sw $t0, -2768($fp)
	lw $t0, -472($fp)
	sw $t0, -2772($fp)
	lw $t0, -544($fp)
	sw $t0, -2776($fp)
	lw $t0, -2772($fp)
	lw $t1, -2776($fp)
	sub $t0, $t0, $t1
	sw $t0, -2780($fp)
	li $t0, 0
	sw $t0, -2784($fp)
	li $t0, 23524
	sw $t0, -2788($fp)
	lw $t0, -1108($fp)
	sw $t0, -2792($fp)
	lw $t1, -2788($fp)
	lw $t2, -2792($fp)
	beq $t1, $t2, label247
	j label249
label249:
	li $t0, 59280
	sw $t0, -2796($fp)
	lw $t1, -2796($fp)
	li $t2, 0
	bne $t1, $t2, label247
	j label248
label247:
	li $t0, 1
	sw $t0, -2784($fp)
label248:
	addi $sp, $sp, -4
	lw $t0, -2780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2784($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2800($fp)
	addi $sp, $sp, 12
	lw $t0, -2768($fp)
	lw $t1, -2800($fp)
	mul $t0, $t0, $t1
	sw $t0, -2804($fp)
	li $t0, 0
	lw $t1, -2804($fp)
	sub $t0, $t0, $t1
	sw $t0, -2808($fp)
	lw $t1, -2808($fp)
	li $t2, 0
	bne $t1, $t2, label241
	j label242
label241:
label250:
	addi $t0, $fp, -48
	sw $t0, -2812($fp)
	li $t0, 0
	sw $t0, -2816($fp)
	li $t0, 4
	lw $t1, -2816($fp)
	mul $t0, $t0, $t1
	sw $t0, -2820($fp)
	lw $t0, -2820($fp)
	lw $t1, -2812($fp)
	add $t0, $t0, $t1
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	lw $t1, 0($t0)
	sw $t1, -2828($fp)
	li $t0, 10474
	sw $t0, -2832($fp)
	li $t0, 0
	sw $t0, -2836($fp)
	lw $t0, -1120($fp)
	sw $t0, -2840($fp)
	li $t0, 0
	lw $t1, -2840($fp)
	sub $t0, $t0, $t1
	sw $t0, -2844($fp)
	lw $t1, -2844($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label255
label256:
	lw $t0, -796($fp)
	sw $t0, -2848($fp)
	lw $t1, -2848($fp)
	li $t2, 0
	bne $t1, $t2, label254
	j label255
label254:
	li $t0, 1
	sw $t0, -2836($fp)
label255:
	addi $sp, $sp, -4
	lw $t0, -2832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2836($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2852($fp)
	addi $sp, $sp, 12
	lw $t0, -2828($fp)
	lw $t1, -2852($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2856($fp)
	lw $t1, -2856($fp)
	li $t2, 0
	bne $t1, $t2, label253
	j label252
label253:
	li $t0, 0
	sw $t0, -2860($fp)
	lw $t0, -472($fp)
	sw $t0, -2864($fp)
	li $t0, 7601
	sw $t0, -2868($fp)
	lw $t0, -2864($fp)
	lw $t1, -2868($fp)
	add $t0, $t0, $t1
	sw $t0, -2872($fp)
	lw $t0, -1144($fp)
	sw $t0, -2876($fp)
	lw $t1, -2872($fp)
	lw $t2, -2876($fp)
	blt $t1, $t2, label257
	j label258
label257:
	li $t0, 1
	sw $t0, -2860($fp)
label258:
	lw $t0, -1084($fp)
	sw $t0, -2880($fp)
	lw $t0, -184($fp)
	sw $t0, -2884($fp)
	lw $t0, -2880($fp)
	lw $t1, -2884($fp)
	add $t0, $t0, $t1
	sw $t0, -2888($fp)
	lw $t1, -2860($fp)
	lw $t2, -2888($fp)
	bgt $t1, $t2, label251
	j label252
label251:
label259:
	li $t0, 21592
	sw $t0, -2892($fp)
	li $t0, 49754
	sw $t0, -2896($fp)
	lw $t0, -2892($fp)
	lw $t1, -2896($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2900($fp)
	li $t0, 0
	lw $t1, -2900($fp)
	sub $t0, $t0, $t1
	sw $t0, -2904($fp)
	lw $t1, -2904($fp)
	li $t2, 0
	bne $t1, $t2, label260
	j label261
label260:
	li $t0, 3520
	sw $t0, -2908($fp)
	lw $t0, -2908($fp)
	sw $t0, -2912($fp)
	lw $t0, -2912($fp)
	sw $t0, -2916($fp)
	addi $t0, $fp, -152
	sw $t0, -2920($fp)
	lw $t0, -1048($fp)
	sw $t0, -2924($fp)
	li $t0, 4
	lw $t1, -2924($fp)
	mul $t0, $t0, $t1
	sw $t0, -2928($fp)
	lw $t0, -2928($fp)
	lw $t1, -2920($fp)
	add $t0, $t0, $t1
	sw $t0, -2932($fp)
	lw $t0, -2932($fp)
	lw $t1, 0($t0)
	sw $t1, -2936($fp)
	lw $t0, -172($fp)
	sw $t0, -2940($fp)
	lw $t0, -2936($fp)
	lw $t1, -2940($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2944($fp)
	addi $t0, $fp, -124
	sw $t0, -2948($fp)
	lw $t0, -184($fp)
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
	lw $t0, -796($fp)
	sw $t0, -2968($fp)
	lw $t0, -2968($fp)
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	sw $t0, -2972($fp)
	addi $sp, $sp, -4
	lw $t0, -2964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2972($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2976($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -2976($fp)
	sub $t0, $t0, $t1
	sw $t0, -2980($fp)
	lw $t0, -2944($fp)
	lw $t1, -2980($fp)
	sub $t0, $t0, $t1
	sw $t0, -2984($fp)
	li $t0, 23040
	sw $t0, -2988($fp)
	addi $t0, $fp, -88
	sw $t0, -2992($fp)
	lw $t0, -532($fp)
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
	lw $t0, -2988($fp)
	lw $t1, -3008($fp)
	add $t0, $t0, $t1
	sw $t0, -3012($fp)
	lw $t1, -2984($fp)
	lw $t2, -3012($fp)
	bne $t1, $t2, label262
	j label263
label262:
	lw $t0, -196($fp)
	sw $t0, -3016($fp)
	jal f7
	sw $v0, -3020($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -3020($fp)
	sub $t0, $t0, $t1
	sw $t0, -3024($fp)
	lw $t0, -3016($fp)
	lw $t1, -3024($fp)
	mul $t0, $t0, $t1
	sw $t0, -3028($fp)
	lw $ra, -4($fp)
	lw $v0, -3028($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label264
label263:
label265:
	addi $t0, $fp, -132
	sw $t0, -3032($fp)
	li $t0, 0
	sw $t0, -3036($fp)
	li $t0, 0
	sw $t0, -3040($fp)
	li $t0, 4661
	sw $t0, -3044($fp)
	lw $t0, -160($fp)
	sw $t0, -3048($fp)
	lw $t1, -3044($fp)
	lw $t2, -3048($fp)
	bge $t1, $t2, label270
	j label271
label270:
	li $t0, 1
	sw $t0, -3040($fp)
label271:
	lw $t0, -160($fp)
	sw $t0, -3052($fp)
	lw $t1, -3040($fp)
	lw $t2, -3052($fp)
	beq $t1, $t2, label268
	j label269
label268:
	li $t0, 1
	sw $t0, -3036($fp)
label269:
	li $t0, 4
	lw $t1, -3036($fp)
	mul $t0, $t0, $t1
	sw $t0, -3056($fp)
	lw $t0, -3056($fp)
	lw $t1, -3032($fp)
	add $t0, $t0, $t1
	sw $t0, -3060($fp)
	lw $t0, -3060($fp)
	lw $t1, 0($t0)
	sw $t1, -3064($fp)
	lw $t0, -460($fp)
	sw $t0, -3068($fp)
	li $t0, 0
	lw $t1, -3068($fp)
	sub $t0, $t0, $t1
	sw $t0, -3072($fp)
	li $t0, 0
	lw $t1, -3072($fp)
	sub $t0, $t0, $t1
	sw $t0, -3076($fp)
	li $t0, 0
	lw $t1, -3076($fp)
	sub $t0, $t0, $t1
	sw $t0, -3080($fp)
	lw $t1, -3064($fp)
	lw $t2, -3080($fp)
	bge $t1, $t2, label266
	j label267
label266:
	li $t0, 0
	sw $t0, -3084($fp)
	jal f7
	sw $v0, -3088($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -3092($fp)
	lw $t0, -1048($fp)
	sw $t0, -3096($fp)
	li $t0, 0
	lw $t1, -3096($fp)
	sub $t0, $t0, $t1
	sw $t0, -3100($fp)
	lw $t1, -3100($fp)
	li $t2, 0
	bne $t1, $t2, label275
	j label274
label274:
	li $t0, 1
	sw $t0, -3092($fp)
label275:
	lw $t0, -3088($fp)
	lw $t1, -3092($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3104($fp)
	li $t0, 0
	sw $t0, -3108($fp)
	li $t0, 11315
	sw $t0, -3112($fp)
	lw $t1, -3112($fp)
	li $t2, 0
	bne $t1, $t2, label277
	j label276
label276:
	li $t0, 1
	sw $t0, -3108($fp)
label277:
	li $t0, 59631
	sw $t0, -3116($fp)
	lw $t0, -3108($fp)
	lw $t1, -3116($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3120($fp)
	lw $t0, -2912($fp)
	sw $t0, -3124($fp)
	li $t0, 0
	lw $t1, -3124($fp)
	sub $t0, $t0, $t1
	sw $t0, -3128($fp)
	lw $t0, -3120($fp)
	lw $t1, -3128($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3132($fp)
	lw $t1, -3104($fp)
	lw $t2, -3132($fp)
	ble $t1, $t2, label272
	j label273
label272:
	li $t0, 1
	sw $t0, -3084($fp)
label273:
	j label265
label267:
label264:
	li $t0, 56096
	sw $t0, -3136($fp)
	lw $t0, -3136($fp)
	sw $t0, -3140($fp)
	lw $t0, -3140($fp)
	sw $t0, -3144($fp)
	li $t0, 0
	sw $t0, -3148($fp)
	addi $t0, $fp, -132
	sw $t0, -3152($fp)
	lw $t0, -160($fp)
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
	li $t0, 18177
	sw $t0, -3172($fp)
	li $t0, 29375
	sw $t0, -3176($fp)
	lw $t0, -3172($fp)
	lw $t1, -3176($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3180($fp)
	lw $t1, -3168($fp)
	lw $t2, -3180($fp)
	blt $t1, $t2, label278
	j label279
label278:
	li $t0, 1
	sw $t0, -3148($fp)
label279:
	lw $t0, -3148($fp)
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	sw $t0, -3184($fp)
	li $t0, 0
	sw $t0, -3188($fp)
	li $t0, 0
	sw $t0, -3192($fp)
	addi $t0, $fp, -124
	sw $t0, -3196($fp)
	li $t0, 8
	sw $t0, -3200($fp)
	li $t0, 4
	lw $t1, -3200($fp)
	mul $t0, $t0, $t1
	sw $t0, -3204($fp)
	lw $t0, -3204($fp)
	lw $t1, -3196($fp)
	add $t0, $t0, $t1
	sw $t0, -3208($fp)
	lw $t0, -3208($fp)
	lw $t1, 0($t0)
	sw $t1, -3212($fp)
	lw $t1, -3212($fp)
	li $t2, 0
	bne $t1, $t2, label283
	j label282
label282:
	li $t0, 1
	sw $t0, -3192($fp)
label283:
	li $t0, 0
	sw $t0, -3216($fp)
	li $t0, 10368
	sw $t0, -3220($fp)
	lw $t0, -184($fp)
	sw $t0, -3224($fp)
	lw $t0, -3220($fp)
	lw $t1, -3224($fp)
	mul $t0, $t0, $t1
	sw $t0, -3228($fp)
	li $t0, 5399
	sw $t0, -3232($fp)
	lw $t0, -3228($fp)
	lw $t1, -3232($fp)
	mul $t0, $t0, $t1
	sw $t0, -3236($fp)
	li $t0, 0
	sw $t0, -3240($fp)
	li $t0, 23031
	sw $t0, -3244($fp)
	lw $t1, -3244($fp)
	li $t2, 0
	bne $t1, $t2, label287
	j label286
label286:
	li $t0, 1
	sw $t0, -3240($fp)
label287:
	lw $t1, -3236($fp)
	lw $t2, -3240($fp)
	bgt $t1, $t2, label284
	j label285
label284:
	li $t0, 1
	sw $t0, -3216($fp)
label285:
	lw $t1, -3192($fp)
	lw $t2, -3216($fp)
	beq $t1, $t2, label280
	j label281
label280:
	li $t0, 1
	sw $t0, -3188($fp)
label281:
	li $t0, 0
	sw $t0, -3248($fp)
	lw $t0, -3140($fp)
	sw $t0, -3252($fp)
	lw $t0, -1132($fp)
	sw $t0, -3256($fp)
	lw $t0, -3252($fp)
	lw $t1, -3256($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3260($fp)
	addi $t0, $fp, -48
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
	lw $t1, -3260($fp)
	lw $t2, -3280($fp)
	bgt $t1, $t2, label288
	j label289
label288:
	li $t0, 1
	sw $t0, -3248($fp)
label289:
	li $t0, 40453
	sw $t0, -3284($fp)
	li $t0, 0
	sw $t0, -3288($fp)
	jal f7
	sw $v0, -3292($fp)
	addi $sp, $sp, 4
	lw $t1, -3292($fp)
	li $t2, 0
	bne $t1, $t2, label291
	j label290
label290:
	li $t0, 1
	sw $t0, -3288($fp)
label291:
	li $t0, 0
	lw $t1, -3288($fp)
	sub $t0, $t0, $t1
	sw $t0, -3296($fp)
	j label259
label261:
	j label250
label252:
	j label240
label242:
label292:
	li $t0, 0
	sw $t0, -3300($fp)
	lw $t0, -184($fp)
	sw $t0, -3304($fp)
	addi $t0, $fp, -48
	sw $t0, -3308($fp)
	lw $t0, -508($fp)
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
	lw $t0, -3304($fp)
	lw $t1, -3324($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3328($fp)
	li $t0, 0
	lw $t1, -3328($fp)
	sub $t0, $t0, $t1
	sw $t0, -3332($fp)
	lw $t1, -3332($fp)
	li $t2, 0
	bne $t1, $t2, label296
	j label295
label295:
	li $t0, 1
	sw $t0, -3300($fp)
label296:
	li $t0, 0
	lw $t1, -3300($fp)
	sub $t0, $t0, $t1
	sw $t0, -3336($fp)
	lw $t0, -1144($fp)
	sw $t0, -3340($fp)
	lw $t1, -3336($fp)
	lw $t2, -3340($fp)
	bne $t1, $t2, label293
	j label294
label293:
	li $t0, 58728
	sw $t0, -3344($fp)
	lw $t0, -520($fp)
	sw $t0, -3348($fp)
	jal f8
	sw $v0, -3352($fp)
	addi $sp, $sp, 4
	lw $t0, -3348($fp)
	lw $t1, -3352($fp)
	mul $t0, $t0, $t1
	sw $t0, -3356($fp)
	li $t0, 0
	sw $t0, -3360($fp)
	lw $t0, -1108($fp)
	sw $t0, -3364($fp)
	li $t0, 0
	lw $t1, -3364($fp)
	sub $t0, $t0, $t1
	sw $t0, -3368($fp)
	lw $t1, -3368($fp)
	li $t2, 0
	bne $t1, $t2, label301
	j label300
label300:
	li $t0, 1
	sw $t0, -3360($fp)
label301:
	li $t0, 0
	lw $t1, -3360($fp)
	sub $t0, $t0, $t1
	sw $t0, -3372($fp)
	lw $t0, -3356($fp)
	lw $t1, -3372($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3376($fp)
	li $t0, 0
	lw $t1, -3376($fp)
	sub $t0, $t0, $t1
	sw $t0, -3380($fp)
	lw $t0, -3344($fp)
	lw $t1, -3380($fp)
	mul $t0, $t0, $t1
	sw $t0, -3384($fp)
	li $t0, 0
	lw $t1, -3384($fp)
	sub $t0, $t0, $t1
	sw $t0, -3388($fp)
	li $t0, 0
	lw $t1, -3388($fp)
	sub $t0, $t0, $t1
	sw $t0, -3392($fp)
	lw $t1, -3392($fp)
	li $t2, 0
	bne $t1, $t2, label297
	j label298
label297:
	jal f8
	sw $v0, -3396($fp)
	addi $sp, $sp, 4
	j label299
label298:
label302:
	li $t0, 0
	sw $t0, -3400($fp)
	lw $t0, -184($fp)
	sw $t0, -3404($fp)
	lw $t1, -3404($fp)
	li $t2, 0
	bne $t1, $t2, label307
	j label306
label306:
	li $t0, 1
	sw $t0, -3400($fp)
label307:
	li $t0, 62135
	sw $t0, -3408($fp)
	lw $t0, -3400($fp)
	lw $t1, -3408($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3412($fp)
	li $t0, 1464
	sw $t0, -3416($fp)
	lw $t0, -3412($fp)
	lw $t1, -3416($fp)
	sub $t0, $t0, $t1
	sw $t0, -3420($fp)
	li $t0, 40445
	sw $t0, -3424($fp)
	li $t0, 26333
	sw $t0, -3428($fp)
	lw $t0, -3424($fp)
	lw $t1, -3428($fp)
	mul $t0, $t0, $t1
	sw $t0, -3432($fp)
	li $t0, 37991
	sw $t0, -3436($fp)
	lw $t0, -3432($fp)
	lw $t1, -3436($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3440($fp)
	lw $t1, -3420($fp)
	lw $t2, -3440($fp)
	bne $t1, $t2, label303
	j label305
label305:
	jal f8
	sw $v0, -3444($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -3444($fp)
	sub $t0, $t0, $t1
	sw $t0, -3448($fp)
	lw $t0, -160($fp)
	sw $t0, -3452($fp)
	lw $t0, -508($fp)
	sw $t0, -3456($fp)
	lw $t0, -3452($fp)
	lw $t1, -3456($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3460($fp)
	lw $t0, -1144($fp)
	sw $t0, -3464($fp)
	lw $t0, -3460($fp)
	lw $t1, -3464($fp)
	mul $t0, $t0, $t1
	sw $t0, -3468($fp)
	addi $sp, $sp, -4
	lw $t0, -3448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3468($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3472($fp)
	addi $sp, $sp, 12
	li $t0, 63970
	sw $t0, -3476($fp)
	lw $t1, -3472($fp)
	lw $t2, -3476($fp)
	blt $t1, $t2, label308
	j label304
label308:
	li $t0, 20078
	sw $t0, -3480($fp)
	lw $t1, -3480($fp)
	li $t2, 0
	bne $t1, $t2, label304
	j label303
label303:
	addi $t0, $fp, -48
	sw $t0, -3484($fp)
	li $t0, 0
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
	li $t0, 19639
	sw $t0, -3508($fp)
	lw $t1, -3508($fp)
	li $t2, 0
	bne $t1, $t2, label309
	j label310
label309:
	li $t0, 1
	sw $t0, -3504($fp)
label310:
	li $t0, 0
	lw $t1, -3504($fp)
	sub $t0, $t0, $t1
	sw $t0, -3512($fp)
	lw $t0, -3500($fp)
	lw $t1, -3512($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3516($fp)
	lw $ra, -4($fp)
	lw $v0, -3516($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label302
label304:
label299:
	j label292
label294:
	lw $t0, -160($fp)
	sw $t0, -3520($fp)
	lw $t0, -3520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -172($fp)
	sw $t0, -3524($fp)
	lw $t0, -3524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -184($fp)
	sw $t0, -3528($fp)
	lw $t0, -3528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -196($fp)
	sw $t0, -3532($fp)
	lw $t0, -3532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -3536($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -3556($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -3576($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -3596($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -3616($fp)
	li $t0, 4
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	lw $t0, -448($fp)
	sw $t0, -3736($fp)
	lw $t0, -3736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -460($fp)
	sw $t0, -3740($fp)
	lw $t0, -3740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -472($fp)
	sw $t0, -3744($fp)
	lw $t0, -3744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
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
	lw $t0, -508($fp)
	sw $t0, -3768($fp)
	lw $t0, -3768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -520($fp)
	sw $t0, -3772($fp)
	lw $t0, -3772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -532($fp)
	sw $t0, -3776($fp)
	lw $t0, -3776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -544($fp)
	sw $t0, -3780($fp)
	lw $t0, -3780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
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
	addi $t0, $fp, -88
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
	addi $t0, $fp, -88
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
	addi $t0, $fp, -88
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
	addi $t0, $fp, -88
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
	addi $t0, $fp, -88
	sw $t0, -3884($fp)
	li $t0, 5
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
	addi $t0, $fp, -88
	sw $t0, -3904($fp)
	li $t0, 6
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
	lw $t0, -3920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -3924($fp)
	li $t0, 7
	sw $t0, -3928($fp)
	li $t0, 4
	lw $t1, -3928($fp)
	mul $t0, $t0, $t1
	sw $t0, -3932($fp)
	lw $t0, -3932($fp)
	lw $t1, -3924($fp)
	add $t0, $t0, $t1
	sw $t0, -3936($fp)
	lw $t0, -3936($fp)
	lw $t1, 0($t0)
	sw $t1, -3940($fp)
	lw $t0, -3940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -3944($fp)
	li $t0, 8
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
	addi $t0, $fp, -88
	sw $t0, -3964($fp)
	li $t0, 9
	sw $t0, -3968($fp)
	li $t0, 4
	lw $t1, -3968($fp)
	mul $t0, $t0, $t1
	sw $t0, -3972($fp)
	lw $t0, -3972($fp)
	lw $t1, -3964($fp)
	add $t0, $t0, $t1
	sw $t0, -3976($fp)
	lw $t0, -3976($fp)
	lw $t1, 0($t0)
	sw $t1, -3980($fp)
	lw $t0, -3980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -796($fp)
	sw $t0, -3984($fp)
	lw $t0, -3984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
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
	addi $t0, $fp, -124
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
	addi $t0, $fp, -124
	sw $t0, -4028($fp)
	li $t0, 2
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
	addi $t0, $fp, -124
	sw $t0, -4048($fp)
	li $t0, 3
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
	addi $t0, $fp, -124
	sw $t0, -4068($fp)
	li $t0, 4
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
	addi $t0, $fp, -124
	sw $t0, -4088($fp)
	li $t0, 5
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
	addi $t0, $fp, -124
	sw $t0, -4108($fp)
	li $t0, 6
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
	addi $t0, $fp, -124
	sw $t0, -4128($fp)
	li $t0, 7
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
	addi $t0, $fp, -124
	sw $t0, -4148($fp)
	li $t0, 8
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
	addi $t0, $fp, -128
	sw $t0, -4168($fp)
	li $t0, 0
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
	lw $t0, -1048($fp)
	sw $t0, -4188($fp)
	lw $t0, -4188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1060($fp)
	sw $t0, -4192($fp)
	lw $t0, -4192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1072($fp)
	sw $t0, -4196($fp)
	lw $t0, -4196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1084($fp)
	sw $t0, -4200($fp)
	lw $t0, -4200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1096($fp)
	sw $t0, -4204($fp)
	lw $t0, -4204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1108($fp)
	sw $t0, -4208($fp)
	lw $t0, -4208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1120($fp)
	sw $t0, -4212($fp)
	lw $t0, -4212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1132($fp)
	sw $t0, -4216($fp)
	lw $t0, -4216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1144($fp)
	sw $t0, -4220($fp)
	lw $t0, -4220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -4224($fp)
	li $t0, 0
	sw $t0, -4228($fp)
	li $t0, 4
	lw $t1, -4228($fp)
	mul $t0, $t0, $t1
	sw $t0, -4232($fp)
	lw $t0, -4232($fp)
	lw $t1, -4224($fp)
	add $t0, $t0, $t1
	sw $t0, -4236($fp)
	lw $t0, -4236($fp)
	lw $t1, 0($t0)
	sw $t1, -4240($fp)
	lw $t0, -4240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -4244($fp)
	li $t0, 0
	sw $t0, -4248($fp)
	li $t0, 4
	lw $t1, -4248($fp)
	mul $t0, $t0, $t1
	sw $t0, -4252($fp)
	lw $t0, -4252($fp)
	lw $t1, -4244($fp)
	add $t0, $t0, $t1
	sw $t0, -4256($fp)
	lw $t0, -4256($fp)
	lw $t1, 0($t0)
	sw $t1, -4260($fp)
	lw $t0, -4260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -4264($fp)
	li $t0, 1
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
	lw $t0, -4280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -4284($fp)
	li $t0, 2
	sw $t0, -4288($fp)
	li $t0, 4
	lw $t1, -4288($fp)
	mul $t0, $t0, $t1
	sw $t0, -4292($fp)
	lw $t0, -4292($fp)
	lw $t1, -4284($fp)
	add $t0, $t0, $t1
	sw $t0, -4296($fp)
	lw $t0, -4296($fp)
	lw $t1, 0($t0)
	sw $t1, -4300($fp)
	lw $t0, -4300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -4304($fp)
	li $t0, 3
	sw $t0, -4308($fp)
	li $t0, 4
	lw $t1, -4308($fp)
	mul $t0, $t0, $t1
	sw $t0, -4312($fp)
	lw $t0, -4312($fp)
	lw $t1, -4304($fp)
	add $t0, $t0, $t1
	sw $t0, -4316($fp)
	lw $t0, -4316($fp)
	lw $t1, 0($t0)
	sw $t1, -4320($fp)
	lw $t0, -4320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -4324($fp)
	li $t0, 4
	sw $t0, -4328($fp)
	li $t0, 4
	lw $t1, -4328($fp)
	mul $t0, $t0, $t1
	sw $t0, -4332($fp)
	lw $t0, -4332($fp)
	lw $t1, -4324($fp)
	add $t0, $t0, $t1
	sw $t0, -4336($fp)
	lw $t0, -4336($fp)
	lw $t1, 0($t0)
	sw $t1, -4340($fp)
	lw $t0, -4340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4344($fp)
	li $t0, 0
	sw $t0, -4348($fp)
	lw $t0, -1144($fp)
	sw $t0, -4352($fp)
	lw $t1, -4352($fp)
	li $t2, 0
	bne $t1, $t2, label314
	j label313
label313:
	li $t0, 1
	sw $t0, -4348($fp)
label314:
	addi $t0, $fp, -132
	sw $t0, -4356($fp)
	lw $t0, -1060($fp)
	sw $t0, -4360($fp)
	li $t0, 32255
	sw $t0, -4364($fp)
	lw $t0, -4360($fp)
	lw $t1, -4364($fp)
	add $t0, $t0, $t1
	sw $t0, -4368($fp)
	li $t0, 4
	lw $t1, -4368($fp)
	mul $t0, $t0, $t1
	sw $t0, -4372($fp)
	lw $t0, -4372($fp)
	lw $t1, -4356($fp)
	add $t0, $t0, $t1
	sw $t0, -4376($fp)
	lw $t0, -4376($fp)
	lw $t1, 0($t0)
	sw $t1, -4380($fp)
	lw $t1, -4348($fp)
	lw $t2, -4380($fp)
	blt $t1, $t2, label311
	j label312
label311:
	li $t0, 1
	sw $t0, -4344($fp)
label312:
	lw $ra, -4($fp)
	lw $v0, -4344($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1060
	li $t0, 49881
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	li $t0, 41232
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	li $t0, 16473
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
	li $t0, 53402
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
	li $t0, 64272
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
	li $t0, 21134
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
	li $t0, 64717
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
	li $t0, 58367
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
	li $t0, 11694
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
	li $t0, 17358
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
	li $t0, 22206
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
	li $t0, 52728
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
	lw $t0, -52($fp)
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -64($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
	sw $t0, -480($fp)
	li $t0, 8
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
	addi $t0, $fp, -44
	sw $t0, -500($fp)
	li $t0, 9
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
	li $t0, 0
	sw $t0, -520($fp)
	li $t0, 0
	sw $t0, -524($fp)
	li $t0, 0
	sw $t0, -528($fp)
	li $t0, 49504
	sw $t0, -532($fp)
	li $t0, 32574
	sw $t0, -536($fp)
	li $t0, 0
	lw $t1, -536($fp)
	sub $t0, $t0, $t1
	sw $t0, -540($fp)
	lw $t0, -532($fp)
	lw $t1, -540($fp)
	mul $t0, $t0, $t1
	sw $t0, -544($fp)
	li $t0, 0
	lw $t1, -544($fp)
	sub $t0, $t0, $t1
	sw $t0, -548($fp)
	lw $t1, -548($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label319
label319:
	li $t0, 1
	sw $t0, -528($fp)
label320:
	li $t0, 58128
	sw $t0, -552($fp)
	lw $t1, -528($fp)
	lw $t2, -552($fp)
	blt $t1, $t2, label317
	j label318
label317:
	li $t0, 1
	sw $t0, -524($fp)
label318:
	lw $t0, -64($fp)
	sw $t0, -556($fp)
	lw $t1, -524($fp)
	lw $t2, -556($fp)
	bge $t1, $t2, label315
	j label316
label315:
	li $t0, 1
	sw $t0, -520($fp)
label316:
	lw $ra, -4($fp)
	lw $v0, -520($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -52($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -64($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -568($fp)
	li $t0, 0
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
	lw $t0, -584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -588($fp)
	li $t0, 1
	sw $t0, -592($fp)
	li $t0, 4
	lw $t1, -592($fp)
	mul $t0, $t0, $t1
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	lw $t1, -588($fp)
	add $t0, $t0, $t1
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	lw $t1, 0($t0)
	sw $t1, -604($fp)
	lw $t0, -604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -608($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -628($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -648($fp)
	li $t0, 4
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
	addi $t0, $fp, -44
	sw $t0, -668($fp)
	li $t0, 5
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
	addi $t0, $fp, -44
	sw $t0, -688($fp)
	li $t0, 6
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
	addi $t0, $fp, -44
	sw $t0, -708($fp)
	li $t0, 7
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
	addi $t0, $fp, -44
	sw $t0, -728($fp)
	li $t0, 8
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
	addi $t0, $fp, -44
	sw $t0, -748($fp)
	li $t0, 9
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
	addi $t0, $fp, -44
	sw $t0, -768($fp)
	lw $t0, -64($fp)
	sw $t0, -772($fp)
	li $t0, 0
	lw $t1, -772($fp)
	sub $t0, $t0, $t1
	sw $t0, -776($fp)
	li $t0, 0
	lw $t1, -776($fp)
	sub $t0, $t0, $t1
	sw $t0, -780($fp)
	li $t0, 4
	lw $t1, -780($fp)
	mul $t0, $t0, $t1
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	lw $t1, -768($fp)
	add $t0, $t0, $t1
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	lw $t1, 0($t0)
	sw $t1, -792($fp)
	lw $ra, -4($fp)
	lw $v0, -792($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -796($fp)
	lw $t0, -52($fp)
	sw $t0, -800($fp)
	lw $t0, -52($fp)
	sw $t0, -804($fp)
	lw $t1, -800($fp)
	lw $t2, -804($fp)
	blt $t1, $t2, label324
	j label322
label324:
	li $t0, 6999
	sw $t0, -808($fp)
	lw $t1, -808($fp)
	li $t2, 0
	bne $t1, $t2, label323
	j label322
label323:
	li $t0, 54052
	sw $t0, -812($fp)
	li $t0, 60193
	sw $t0, -816($fp)
	lw $t1, -812($fp)
	lw $t2, -816($fp)
	bne $t1, $t2, label321
	j label322
label321:
	li $t0, 1
	sw $t0, -796($fp)
label322:
	lw $t0, -796($fp)
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -820($fp)
	lw $t0, -52($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -64($fp)
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -832($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -852($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -872($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -892($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -912($fp)
	li $t0, 4
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
	addi $t0, $fp, -44
	sw $t0, -932($fp)
	li $t0, 5
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
	addi $t0, $fp, -44
	sw $t0, -952($fp)
	li $t0, 6
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
	addi $t0, $fp, -44
	sw $t0, -972($fp)
	li $t0, 7
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
	addi $t0, $fp, -44
	sw $t0, -992($fp)
	li $t0, 8
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
	addi $t0, $fp, -44
	sw $t0, -1012($fp)
	li $t0, 9
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
	addi $t0, $fp, -44
	sw $t0, -1032($fp)
	lw $t0, -52($fp)
	sw $t0, -1036($fp)
	li $t0, 47452
	sw $t0, -1040($fp)
	lw $t0, -1036($fp)
	lw $t1, -1040($fp)
	mul $t0, $t0, $t1
	sw $t0, -1044($fp)
	li $t0, 0
	lw $t1, -1044($fp)
	sub $t0, $t0, $t1
	sw $t0, -1048($fp)
	li $t0, 4
	lw $t1, -1048($fp)
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
	lw $t1, -1060($fp)
	sub $t0, $t0, $t1
	sw $t0, -1064($fp)
	lw $ra, -4($fp)
	lw $v0, -1064($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -80
	li $t0, 47244
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 56793
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 48916
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	li $t0, 22154
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	lw $t0, -12($fp)
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -36($fp)
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -48($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -48($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -84($fp)
	lw $ra, -4($fp)
	lw $v0, -84($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -8
	jal f10
	sw $v0, -8($fp)
	addi $sp, $sp, 4
	li $t0, 17590
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
