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
	addi $sp, $sp, -3520
	li $t0, 7460
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	li $t0, 50471
	sw $t0, -112($fp)
	addi $t0, $fp, -20
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
	li $t0, 18244
	sw $t0, -136($fp)
	addi $t0, $fp, -20
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
	li $t0, 47155
	sw $t0, -160($fp)
	addi $t0, $fp, -20
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
	li $t0, 17582
	sw $t0, -184($fp)
	addi $t0, $fp, -20
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
	li $t0, 5057
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	li $t0, 48365
	sw $t0, -220($fp)
	addi $t0, $fp, -32
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
	li $t0, 62447
	sw $t0, -244($fp)
	addi $t0, $fp, -32
	sw $t0, -248($fp)
	li $t0, 1
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
	li $t0, 28112
	sw $t0, -268($fp)
	addi $t0, $fp, -32
	sw $t0, -272($fp)
	li $t0, 2
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
	li $t0, 27354
	sw $t0, -292($fp)
	addi $t0, $fp, -44
	sw $t0, -296($fp)
	li $t0, 0
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
	li $t0, 26237
	sw $t0, -316($fp)
	addi $t0, $fp, -44
	sw $t0, -320($fp)
	li $t0, 1
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
	li $t0, 39169
	sw $t0, -340($fp)
	addi $t0, $fp, -44
	sw $t0, -344($fp)
	li $t0, 2
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
	li $t0, 29224
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	li $t0, 15702
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	li $t0, 15461
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	li $t0, 49428
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	li $t0, 63209
	sw $t0, -412($fp)
	addi $t0, $fp, -48
	sw $t0, -416($fp)
	li $t0, 0
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
	li $t0, 6908
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	li $t0, 51512
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	li $t0, 40670
	sw $t0, -460($fp)
	addi $t0, $fp, -68
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
	li $t0, 26806
	sw $t0, -484($fp)
	addi $t0, $fp, -68
	sw $t0, -488($fp)
	li $t0, 1
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
	li $t0, 31161
	sw $t0, -508($fp)
	addi $t0, $fp, -68
	sw $t0, -512($fp)
	li $t0, 2
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
	li $t0, 9930
	sw $t0, -532($fp)
	addi $t0, $fp, -68
	sw $t0, -536($fp)
	li $t0, 3
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
	li $t0, 13462
	sw $t0, -556($fp)
	addi $t0, $fp, -68
	sw $t0, -560($fp)
	li $t0, 4
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
	li $t0, 6037
	sw $t0, -580($fp)
	addi $t0, $fp, -92
	sw $t0, -584($fp)
	li $t0, 0
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
	li $t0, 18783
	sw $t0, -604($fp)
	addi $t0, $fp, -92
	sw $t0, -608($fp)
	li $t0, 1
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
	li $t0, 20881
	sw $t0, -628($fp)
	addi $t0, $fp, -92
	sw $t0, -632($fp)
	li $t0, 2
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
	li $t0, 22305
	sw $t0, -652($fp)
	addi $t0, $fp, -92
	sw $t0, -656($fp)
	li $t0, 3
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
	li $t0, 6206
	sw $t0, -676($fp)
	addi $t0, $fp, -92
	sw $t0, -680($fp)
	li $t0, 4
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
	li $t0, 12238
	sw $t0, -700($fp)
	addi $t0, $fp, -92
	sw $t0, -704($fp)
	li $t0, 5
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
	li $t0, 62277
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	sw $t0, -732($fp)
	li $t0, 13667
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	sw $t0, -744($fp)
	li $t0, 62709
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	sw $t0, -756($fp)
	li $t0, 14985
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -768($fp)
	li $t0, 60822
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -780($fp)
	li $t0, 14756
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	sw $t0, -792($fp)
	li $t0, 20042
	sw $t0, -796($fp)
	addi $t0, $fp, -96
	sw $t0, -800($fp)
	li $t0, 0
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
	li $t0, 43651
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -828($fp)
	li $t0, 11667
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -840($fp)
	li $t0, 48154
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -852($fp)
	li $t0, 5469
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -864($fp)
	li $t0, 37904
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	sw $t0, -876($fp)
	li $t0, 21788
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	sw $t0, -888($fp)
	li $t0, 34693
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -900($fp)
	li $t0, 53607
	sw $t0, -904($fp)
	addi $t0, $fp, -20
	sw $t0, -908($fp)
	lw $t0, 8($fp)
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
	lw $t0, -904($fp)
	lw $t1, -924($fp)
	add $t0, $t0, $t1
	sw $t0, -928($fp)
	lw $t0, -104($fp)
	sw $t0, -932($fp)
	lw $t0, -928($fp)
	lw $t1, -932($fp)
	add $t0, $t0, $t1
	sw $t0, -936($fp)
	li $t0, 0
	sw $t0, -940($fp)
	li $t0, 37249
	sw $t0, -944($fp)
	lw $t0, -884($fp)
	sw $t0, -948($fp)
	lw $t0, -824($fp)
	sw $t0, -952($fp)
	lw $t0, -948($fp)
	lw $t1, -952($fp)
	mul $t0, $t0, $t1
	sw $t0, -956($fp)
	li $t0, 18586
	sw $t0, -960($fp)
	lw $t0, -956($fp)
	lw $t1, -960($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -964($fp)
	lw $t0, -944($fp)
	lw $t1, -964($fp)
	sub $t0, $t0, $t1
	sw $t0, -968($fp)
	li $t0, 39771
	sw $t0, -972($fp)
	addi $t0, $fp, -92
	sw $t0, -976($fp)
	li $t0, 3
	sw $t0, -980($fp)
	li $t0, 4
	lw $t1, -980($fp)
	mul $t0, $t0, $t1
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	lw $t1, -976($fp)
	add $t0, $t0, $t1
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	lw $t1, 0($t0)
	sw $t1, -992($fp)
	lw $t0, -380($fp)
	sw $t0, -996($fp)
	addi $t0, $fp, -96
	sw $t0, -1000($fp)
	lw $t0, -440($fp)
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
	addi $t0, $fp, -44
	sw $t0, -1020($fp)
	li $t0, 1
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
	addi $sp, $sp, -4
	lw $t0, -972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1036($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1040($fp)
	addi $sp, $sp, 24
	li $t0, 64066
	sw $t0, -1044($fp)
	lw $t0, -1040($fp)
	lw $t1, -1044($fp)
	mul $t0, $t0, $t1
	sw $t0, -1048($fp)
	li $t0, 0
	sw $t0, -1052($fp)
	li $t0, 26414
	sw $t0, -1056($fp)
	li $t0, 5427
	sw $t0, -1060($fp)
	lw $t0, -1056($fp)
	lw $t1, -1060($fp)
	mul $t0, $t0, $t1
	sw $t0, -1064($fp)
	li $t0, 35723
	sw $t0, -1068($fp)
	lw $t1, -1064($fp)
	lw $t2, -1068($fp)
	beq $t1, $t2, label123
	j label124
label123:
	li $t0, 1
	sw $t0, -1052($fp)
label124:
	li $t0, 4562
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -1076($fp)
	li $t0, 0
	sw $t0, -1080($fp)
	lw $t0, -896($fp)
	sw $t0, -1084($fp)
	lw $t0, 16($fp)
	sw $t0, -1088($fp)
	lw $t0, -1084($fp)
	lw $t1, -1088($fp)
	sub $t0, $t0, $t1
	sw $t0, -1092($fp)
	lw $t0, -884($fp)
	sw $t0, -1096($fp)
	lw $t1, -1092($fp)
	lw $t2, -1096($fp)
	bne $t1, $t2, label125
	j label126
label125:
	li $t0, 1
	sw $t0, -1080($fp)
label126:
	lw $t0, -752($fp)
	sw $t0, -1100($fp)
	li $t0, 51280
	sw $t0, -1104($fp)
	lw $t0, -1100($fp)
	lw $t1, -1104($fp)
	mul $t0, $t0, $t1
	sw $t0, -1108($fp)
	li $t0, 44157
	sw $t0, -1112($fp)
	lw $t0, -1108($fp)
	lw $t1, -1112($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1116($fp)
	addi $sp, $sp, -4
	lw $t0, -1048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1116($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1120($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -1120($fp)
	sub $t0, $t0, $t1
	sw $t0, -1124($fp)
	lw $t1, -968($fp)
	lw $t2, -1124($fp)
	ble $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -940($fp)
label122:
	lw $t0, -452($fp)
	sw $t0, -1128($fp)
	lw $t1, -1128($fp)
	li $t2, 0
	bne $t1, $t2, label127
	j label128
label127:
	li $t0, 0
	sw $t0, -1132($fp)
	li $t0, 61334
	sw $t0, -1136($fp)
	lw $t1, -1136($fp)
	li $t2, 0
	bne $t1, $t2, label130
	j label132
label132:
	li $t0, 0
	sw $t0, -1140($fp)
	li $t0, 52009
	sw $t0, -1144($fp)
	lw $t1, -1144($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label133
label133:
	li $t0, 1
	sw $t0, -1140($fp)
label134:
	li $t0, 60807
	sw $t0, -1148($fp)
	lw $t0, -1140($fp)
	lw $t1, -1148($fp)
	mul $t0, $t0, $t1
	sw $t0, -1152($fp)
	li $t0, 0
	sw $t0, -1156($fp)
	lw $t0, -752($fp)
	sw $t0, -1160($fp)
	lw $t1, -1160($fp)
	li $t2, 0
	bne $t1, $t2, label136
	j label135
label135:
	li $t0, 1
	sw $t0, -1156($fp)
label136:
	lw $t1, -1152($fp)
	lw $t2, -1156($fp)
	blt $t1, $t2, label130
	j label131
label130:
	li $t0, 1
	sw $t0, -1132($fp)
label131:
	j label129
label128:
	li $t0, 0
	sw $t0, -1164($fp)
	li $t0, 0
	sw $t0, -1168($fp)
	li $t0, 10256
	sw $t0, -1172($fp)
	li $t0, 4751
	sw $t0, -1176($fp)
	lw $t0, -1172($fp)
	lw $t1, -1176($fp)
	add $t0, $t0, $t1
	sw $t0, -1180($fp)
	lw $t0, -728($fp)
	sw $t0, -1184($fp)
	lw $t1, -1180($fp)
	lw $t2, -1184($fp)
	beq $t1, $t2, label140
	j label141
label140:
	li $t0, 1
	sw $t0, -1168($fp)
label141:
	li $t0, 49183
	sw $t0, -1188($fp)
	lw $t0, -776($fp)
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -1196($fp)
	li $t0, 0
	sw $t0, -1200($fp)
	lw $t0, -392($fp)
	sw $t0, -1204($fp)
	lw $t0, 20($fp)
	sw $t0, -1208($fp)
	lw $t1, -1204($fp)
	lw $t2, -1208($fp)
	bgt $t1, $t2, label142
	j label144
label144:
	lw $t0, -212($fp)
	sw $t0, -1212($fp)
	lw $t1, -1212($fp)
	li $t2, 0
	bne $t1, $t2, label142
	j label143
label142:
	li $t0, 1
	sw $t0, -1200($fp)
label143:
	li $t0, 0
	sw $t0, -1216($fp)
	li $t0, 9465
	sw $t0, -1220($fp)
	lw $t1, -1220($fp)
	li $t2, 0
	bne $t1, $t2, label147
	j label146
label147:
	lw $t0, -752($fp)
	sw $t0, -1224($fp)
	lw $t1, -1224($fp)
	li $t2, 0
	bne $t1, $t2, label145
	j label146
label145:
	li $t0, 1
	sw $t0, -1216($fp)
label146:
	addi $sp, $sp, -4
	lw $t0, -1168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1216($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1228($fp)
	addi $sp, $sp, 24
	lw $t1, -1228($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label138
label139:
	lw $t0, -776($fp)
	sw $t0, -1232($fp)
	lw $t0, -380($fp)
	sw $t0, -1236($fp)
	lw $t0, -1232($fp)
	lw $t1, -1236($fp)
	add $t0, $t0, $t1
	sw $t0, -1240($fp)
	lw $t1, -1240($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label138
label137:
	li $t0, 1
	sw $t0, -1164($fp)
label138:
	lw $t0, -1164($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -1244($fp)
label129:
label148:
	li $t0, 0
	sw $t0, -1248($fp)
	lw $t0, -752($fp)
	sw $t0, -1252($fp)
	lw $t1, -1252($fp)
	li $t2, 0
	bne $t1, $t2, label152
	j label151
label151:
	li $t0, 1
	sw $t0, -1248($fp)
label152:
	addi $t0, $fp, -32
	sw $t0, -1256($fp)
	lw $t0, -788($fp)
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
	li $t0, 0
	lw $t1, -1272($fp)
	sub $t0, $t0, $t1
	sw $t0, -1276($fp)
	lw $t0, -1248($fp)
	lw $t1, -1276($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1280($fp)
	lw $t1, -1280($fp)
	li $t2, 0
	bne $t1, $t2, label149
	j label150
label149:
	li $t0, 63939
	sw $t0, -1300($fp)
	addi $t0, $fp, -1296
	sw $t0, -1304($fp)
	li $t0, 0
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
	li $t0, 30299
	sw $t0, -1324($fp)
	addi $t0, $fp, -1296
	sw $t0, -1328($fp)
	li $t0, 1
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
	li $t0, 48402
	sw $t0, -1348($fp)
	addi $t0, $fp, -1296
	sw $t0, -1352($fp)
	li $t0, 2
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
	li $t0, 10070
	sw $t0, -1372($fp)
	addi $t0, $fp, -1296
	sw $t0, -1376($fp)
	li $t0, 3
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
	li $t0, 12917
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	sw $t0, -1404($fp)
	li $t0, 0
	sw $t0, -1408($fp)
	addi $t0, $fp, -44
	sw $t0, -1412($fp)
	li $t0, 0
	sw $t0, -1416($fp)
	lw $t0, -104($fp)
	sw $t0, -1420($fp)
	lw $t0, -824($fp)
	sw $t0, -1424($fp)
	lw $t1, -1420($fp)
	lw $t2, -1424($fp)
	blt $t1, $t2, label157
	j label158
label157:
	li $t0, 1
	sw $t0, -1416($fp)
label158:
	li $t0, 4
	lw $t1, -1416($fp)
	mul $t0, $t0, $t1
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	lw $t1, -1412($fp)
	add $t0, $t0, $t1
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	lw $t1, 0($t0)
	sw $t1, -1436($fp)
	lw $t1, -1436($fp)
	li $t2, 0
	bne $t1, $t2, label153
	j label156
label156:
	lw $t0, -764($fp)
	sw $t0, -1440($fp)
	li $t0, 53871
	sw $t0, -1444($fp)
	lw $t0, -1440($fp)
	lw $t1, -1444($fp)
	sub $t0, $t0, $t1
	sw $t0, -1448($fp)
	lw $t1, -1448($fp)
	li $t2, 0
	bne $t1, $t2, label153
	j label155
label155:
	li $t0, 23029
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -1456($fp)
	li $t0, 0
	sw $t0, -1460($fp)
	lw $t0, -104($fp)
	sw $t0, -1464($fp)
	li $t0, 0
	lw $t1, -1464($fp)
	sub $t0, $t0, $t1
	sw $t0, -1468($fp)
	lw $t1, -1468($fp)
	li $t2, 0
	bne $t1, $t2, label160
	j label159
label159:
	li $t0, 1
	sw $t0, -1460($fp)
label160:
	li $t0, 0
	sw $t0, -1472($fp)
	lw $t0, 20($fp)
	sw $t0, -1476($fp)
	lw $t1, -1476($fp)
	li $t2, 0
	bne $t1, $t2, label162
	j label161
label161:
	li $t0, 1
	sw $t0, -1472($fp)
label162:
	lw $t0, -788($fp)
	sw $t0, -1480($fp)
	li $t0, 0
	lw $t1, -1480($fp)
	sub $t0, $t0, $t1
	sw $t0, -1484($fp)
	li $t0, 0
	sw $t0, -1488($fp)
	li $t0, 47974
	sw $t0, -1492($fp)
	lw $t0, -212($fp)
	sw $t0, -1496($fp)
	lw $t0, -1492($fp)
	lw $t1, -1496($fp)
	sub $t0, $t0, $t1
	sw $t0, -1500($fp)
	lw $t1, -1500($fp)
	li $t2, 0
	bne $t1, $t2, label165
	j label164
label165:
	li $t0, 34705
	sw $t0, -1504($fp)
	lw $t1, -1504($fp)
	li $t2, 0
	bne $t1, $t2, label163
	j label164
label163:
	li $t0, 1
	sw $t0, -1488($fp)
label164:
	addi $sp, $sp, -4
	lw $t0, -1456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1488($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1508($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -32
	sw $t0, -1512($fp)
	li $t0, 1
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
	lw $t0, -1508($fp)
	lw $t1, -1528($fp)
	mul $t0, $t0, $t1
	sw $t0, -1532($fp)
	lw $t1, -1532($fp)
	li $t2, 0
	bne $t1, $t2, label153
	j label154
label153:
	li $t0, 1
	sw $t0, -1408($fp)
label154:
	li $t0, 0
	sw $t0, -1536($fp)
	addi $t0, $fp, -1296
	sw $t0, -1540($fp)
	li $t0, 0
	sw $t0, -1544($fp)
	li $t0, 4
	lw $t1, -1544($fp)
	mul $t0, $t0, $t1
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	lw $t1, -1540($fp)
	add $t0, $t0, $t1
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	lw $t1, 0($t0)
	sw $t1, -1556($fp)
	lw $t1, -1556($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label167
label168:
	addi $t0, $fp, -44
	sw $t0, -1560($fp)
	li $t0, 0
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
	lw $t0, -752($fp)
	sw $t0, -1580($fp)
	li $t0, 56004
	sw $t0, -1584($fp)
	lw $t0, -1580($fp)
	lw $t1, -1584($fp)
	mul $t0, $t0, $t1
	sw $t0, -1588($fp)
	lw $t0, -1576($fp)
	lw $t1, -1588($fp)
	add $t0, $t0, $t1
	sw $t0, -1592($fp)
	lw $t1, -1592($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label167
label166:
	li $t0, 1
	sw $t0, -1536($fp)
label167:
	li $t0, 0
	sw $t0, -1596($fp)
	addi $t0, $fp, -1296
	sw $t0, -1600($fp)
	lw $t0, -1400($fp)
	sw $t0, -1604($fp)
	li $t0, 4
	lw $t1, -1604($fp)
	mul $t0, $t0, $t1
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	lw $t1, -1600($fp)
	add $t0, $t0, $t1
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	lw $t1, 0($t0)
	sw $t1, -1616($fp)
	lw $t1, -1616($fp)
	li $t2, 0
	bne $t1, $t2, label170
	j label169
label169:
	li $t0, 1
	sw $t0, -1596($fp)
label170:
	j label148
label150:
	li $t0, 0
	sw $t0, -1620($fp)
	li $t0, 16364
	sw $t0, -1624($fp)
	li $t0, 0
	lw $t1, -1624($fp)
	sub $t0, $t0, $t1
	sw $t0, -1628($fp)
	li $t0, 0
	lw $t1, -1628($fp)
	sub $t0, $t0, $t1
	sw $t0, -1632($fp)
	lw $t1, -1632($fp)
	li $t2, 0
	bne $t1, $t2, label171
	j label173
label173:
	li $t0, 19013
	sw $t0, -1636($fp)
	lw $t0, -764($fp)
	sw $t0, -1640($fp)
	lw $t0, -1636($fp)
	lw $t1, -1640($fp)
	add $t0, $t0, $t1
	sw $t0, -1644($fp)
	lw $t0, -860($fp)
	sw $t0, -1648($fp)
	lw $t0, -1644($fp)
	lw $t1, -1648($fp)
	add $t0, $t0, $t1
	sw $t0, -1652($fp)
	lw $t1, -1652($fp)
	li $t2, 0
	bne $t1, $t2, label174
	j label172
label174:
	li $t0, 9358
	sw $t0, -1656($fp)
	lw $t0, -404($fp)
	sw $t0, -1660($fp)
	lw $t0, -1656($fp)
	lw $t1, -1660($fp)
	sub $t0, $t0, $t1
	sw $t0, -1664($fp)
	lw $t1, -1664($fp)
	li $t2, 0
	bne $t1, $t2, label171
	j label172
label171:
	li $t0, 1
	sw $t0, -1620($fp)
label172:
	li $t0, 58125
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	sw $t0, -1676($fp)
	li $t0, 8604
	sw $t0, -1680($fp)
	lw $t0, -1680($fp)
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	sw $t0, -1688($fp)
	li $t0, 49129
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	sw $t0, -1700($fp)
	li $t0, 56655
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	sw $t0, -1712($fp)
	li $t0, 4402
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	sw $t0, -1724($fp)
	li $t0, 35603
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	sw $t0, -1736($fp)
	li $t0, 51926
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	sw $t0, -1748($fp)
	li $t0, 13867
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	sw $t0, -1760($fp)
label175:
	li $t0, 492
	sw $t0, -1764($fp)
	addi $t0, $fp, -44
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
	li $t0, 46207
	sw $t0, -1788($fp)
	li $t0, 15452
	sw $t0, -1792($fp)
	lw $t0, -1788($fp)
	lw $t1, -1792($fp)
	mul $t0, $t0, $t1
	sw $t0, -1796($fp)
	li $t0, 0
	lw $t1, -1796($fp)
	sub $t0, $t0, $t1
	sw $t0, -1800($fp)
	li $t0, 0
	sw $t0, -1804($fp)
	li $t0, 0
	sw $t0, -1808($fp)
	li $t0, 9033
	sw $t0, -1812($fp)
	lw $t0, -104($fp)
	sw $t0, -1816($fp)
	lw $t1, -1812($fp)
	lw $t2, -1816($fp)
	bgt $t1, $t2, label180
	j label181
label180:
	li $t0, 1
	sw $t0, -1808($fp)
label181:
	li $t0, 12849
	sw $t0, -1820($fp)
	lw $t1, -1808($fp)
	lw $t2, -1820($fp)
	bge $t1, $t2, label178
	j label179
label178:
	li $t0, 1
	sw $t0, -1804($fp)
label179:
	li $t0, 10161
	sw $t0, -1824($fp)
	lw $t0, -1824($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -1828($fp)
	li $t0, 0
	sw $t0, -1832($fp)
	li $t0, 0
	sw $t0, -1836($fp)
	li $t0, 55356
	sw $t0, -1840($fp)
	lw $t0, -440($fp)
	sw $t0, -1844($fp)
	lw $t1, -1840($fp)
	lw $t2, -1844($fp)
	bge $t1, $t2, label184
	j label185
label184:
	li $t0, 1
	sw $t0, -1836($fp)
label185:
	lw $t0, -884($fp)
	sw $t0, -1848($fp)
	lw $t1, -1836($fp)
	lw $t2, -1848($fp)
	beq $t1, $t2, label182
	j label183
label182:
	li $t0, 1
	sw $t0, -1832($fp)
label183:
	li $t0, 0
	sw $t0, -1852($fp)
	li $t0, 39863
	sw $t0, -1856($fp)
	lw $t0, -452($fp)
	sw $t0, -1860($fp)
	lw $t0, -1856($fp)
	lw $t1, -1860($fp)
	sub $t0, $t0, $t1
	sw $t0, -1864($fp)
	lw $t1, -1864($fp)
	li $t2, 0
	bne $t1, $t2, label188
	j label187
label188:
	lw $t0, -776($fp)
	sw $t0, -1868($fp)
	lw $t1, -1868($fp)
	li $t2, 0
	bne $t1, $t2, label186
	j label187
label186:
	li $t0, 1
	sw $t0, -1852($fp)
label187:
	addi $sp, $sp, -4
	lw $t0, -1800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1852($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1872($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -1876($fp)
	li $t0, 27723
	sw $t0, -1880($fp)
	lw $t1, -1880($fp)
	li $t2, 0
	bne $t1, $t2, label189
	j label190
label189:
	li $t0, 1
	sw $t0, -1876($fp)
label190:
	li $t0, 0
	sw $t0, -1884($fp)
	lw $t0, -1708($fp)
	sw $t0, -1888($fp)
	lw $t0, 12($fp)
	sw $t0, -1892($fp)
	lw $t1, -1888($fp)
	lw $t2, -1892($fp)
	bge $t1, $t2, label193
	j label192
label193:
	li $t0, 1484
	sw $t0, -1896($fp)
	lw $t1, -1896($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label192
label191:
	li $t0, 1
	sw $t0, -1884($fp)
label192:
	addi $t0, $fp, -20
	sw $t0, -1900($fp)
	lw $t0, -764($fp)
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
	addi $sp, $sp, -4
	lw $t0, -1784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1916($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1920($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -1924($fp)
	lw $t0, -884($fp)
	sw $t0, -1928($fp)
	lw $t0, -1744($fp)
	sw $t0, -1932($fp)
	lw $t0, -1928($fp)
	lw $t1, -1932($fp)
	add $t0, $t0, $t1
	sw $t0, -1936($fp)
	lw $t1, -1936($fp)
	li $t2, 0
	bne $t1, $t2, label196
	j label195
label196:
	li $t0, 26946
	sw $t0, -1940($fp)
	lw $t1, -1940($fp)
	li $t2, 0
	bne $t1, $t2, label194
	j label195
label194:
	li $t0, 1
	sw $t0, -1924($fp)
label195:
	addi $t0, $fp, -48
	sw $t0, -1944($fp)
	lw $t0, -104($fp)
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
	lw $t0, -836($fp)
	sw $t0, -1964($fp)
	lw $t0, -1960($fp)
	lw $t1, -1964($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1968($fp)
	li $t0, 17653
	sw $t0, -1972($fp)
	addi $t0, $fp, -20
	sw $t0, -1976($fp)
	li $t0, 2
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
	lw $t0, -440($fp)
	sw $t0, -1996($fp)
	li $t0, 0
	sw $t0, -2000($fp)
	li $t0, 19250
	sw $t0, -2004($fp)
	lw $t0, -1732($fp)
	sw $t0, -2008($fp)
	lw $t1, -2004($fp)
	lw $t2, -2008($fp)
	bgt $t1, $t2, label197
	j label198
label197:
	li $t0, 1
	sw $t0, -2000($fp)
label198:
	addi $sp, $sp, -4
	lw $t0, -1968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2000($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2012($fp)
	addi $sp, $sp, 24
	lw $t0, -836($fp)
	sw $t0, -2016($fp)
	addi $sp, $sp, -4
	lw $t0, -1764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2016($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2020($fp)
	addi $sp, $sp, 24
	lw $t1, -2020($fp)
	li $t2, 0
	bne $t1, $t2, label176
	j label177
label176:
label199:
	li $t0, 35105
	sw $t0, -2024($fp)
	li $t0, 0
	lw $t1, -2024($fp)
	sub $t0, $t0, $t1
	sw $t0, -2028($fp)
	lw $t1, -2028($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label201
label200:
label202:
	li $t0, 0
	sw $t0, -2032($fp)
	lw $t0, -776($fp)
	sw $t0, -2036($fp)
	lw $t1, -2036($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label205
label205:
	li $t0, 1
	sw $t0, -2032($fp)
label206:
	lw $t0, 4($fp)
	sw $t0, -2040($fp)
	lw $t0, -2032($fp)
	lw $t1, -2040($fp)
	mul $t0, $t0, $t1
	sw $t0, -2044($fp)
	lw $t0, -1696($fp)
	sw $t0, -2048($fp)
	lw $t0, -2044($fp)
	lw $t1, -2048($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2052($fp)
	lw $t1, -2052($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label204
label203:
	li $t0, 0
	sw $t0, -2056($fp)
	li $t0, 0
	sw $t0, -2060($fp)
	lw $t0, -764($fp)
	sw $t0, -2064($fp)
	lw $t1, -2064($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label212
label212:
	li $t0, 1
	sw $t0, -2060($fp)
label213:
	li $t0, 0
	lw $t1, -2060($fp)
	sub $t0, $t0, $t1
	sw $t0, -2068($fp)
	lw $t1, -2068($fp)
	li $t2, 0
	bne $t1, $t2, label211
	j label210
label210:
	li $t0, 1
	sw $t0, -2056($fp)
label211:
	li $t0, 0
	lw $t1, -2056($fp)
	sub $t0, $t0, $t1
	sw $t0, -2072($fp)
	li $t0, 0
	sw $t0, -2076($fp)
	addi $t0, $fp, -32
	sw $t0, -2080($fp)
	li $t0, 2
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
	lw $t1, -2096($fp)
	li $t2, 0
	bne $t1, $t2, label216
	j label215
label216:
	li $t0, 35427
	sw $t0, -2100($fp)
	lw $t1, -2100($fp)
	li $t2, 0
	bne $t1, $t2, label214
	j label215
label214:
	li $t0, 1
	sw $t0, -2076($fp)
label215:
	lw $t0, -788($fp)
	sw $t0, -2104($fp)
	li $t0, 11898
	sw $t0, -2108($fp)
	lw $t0, -2104($fp)
	lw $t1, -2108($fp)
	mul $t0, $t0, $t1
	sw $t0, -2112($fp)
	li $t0, 44467
	sw $t0, -2116($fp)
	lw $t0, -2112($fp)
	lw $t1, -2116($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2120($fp)
	li $t0, 42717
	sw $t0, -2124($fp)
	lw $t0, -848($fp)
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -2132($fp)
	li $t0, 0
	sw $t0, -2136($fp)
	lw $t0, -1756($fp)
	sw $t0, -2140($fp)
	lw $t1, -2140($fp)
	li $t2, 0
	bne $t1, $t2, label219
	j label218
label219:
	lw $t0, -788($fp)
	sw $t0, -2144($fp)
	lw $t1, -2144($fp)
	li $t2, 0
	bne $t1, $t2, label217
	j label218
label217:
	li $t0, 1
	sw $t0, -2136($fp)
label218:
	li $t0, 0
	sw $t0, -2148($fp)
	lw $t0, -1720($fp)
	sw $t0, -2152($fp)
	lw $t1, -2152($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label222
label222:
	lw $t0, -104($fp)
	sw $t0, -2156($fp)
	lw $t1, -2156($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label221
label220:
	li $t0, 1
	sw $t0, -2148($fp)
label221:
	lw $t0, -392($fp)
	sw $t0, -2160($fp)
	lw $t0, -1732($fp)
	sw $t0, -2164($fp)
	lw $t0, -2160($fp)
	lw $t1, -2164($fp)
	mul $t0, $t0, $t1
	sw $t0, -2168($fp)
	li $t0, 9437
	sw $t0, -2172($fp)
	lw $t0, -2168($fp)
	lw $t1, -2172($fp)
	sub $t0, $t0, $t1
	sw $t0, -2176($fp)
	li $t0, 0
	sw $t0, -2180($fp)
	lw $t0, 16($fp)
	sw $t0, -2184($fp)
	lw $t0, -1672($fp)
	sw $t0, -2188($fp)
	lw $t1, -2184($fp)
	lw $t2, -2188($fp)
	beq $t1, $t2, label223
	j label225
label225:
	li $t0, 53789
	sw $t0, -2192($fp)
	lw $t1, -2192($fp)
	li $t2, 0
	bne $t1, $t2, label223
	j label224
label223:
	li $t0, 1
	sw $t0, -2180($fp)
label224:
	li $t0, 28522
	sw $t0, -2196($fp)
	lw $t0, 12($fp)
	sw $t0, -2200($fp)
	lw $t0, -2196($fp)
	lw $t1, -2200($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2204($fp)
	li $t0, 0
	lw $t1, -2204($fp)
	sub $t0, $t0, $t1
	sw $t0, -2208($fp)
	li $t0, 0
	sw $t0, -2212($fp)
	li $t0, 19489
	sw $t0, -2216($fp)
	lw $t1, -2216($fp)
	li $t2, 0
	bne $t1, $t2, label229
	j label227
label229:
	li $t0, 40940
	sw $t0, -2220($fp)
	lw $t1, -2220($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label227
label228:
	li $t0, 28766
	sw $t0, -2224($fp)
	lw $t1, -2224($fp)
	li $t2, 0
	bne $t1, $t2, label226
	j label227
label226:
	li $t0, 1
	sw $t0, -2212($fp)
label227:
	li $t0, 0
	sw $t0, -2228($fp)
	lw $t0, 4($fp)
	sw $t0, -2232($fp)
	lw $t0, 12($fp)
	sw $t0, -2236($fp)
	lw $t1, -2232($fp)
	lw $t2, -2236($fp)
	beq $t1, $t2, label230
	j label231
label230:
	li $t0, 1
	sw $t0, -2228($fp)
label231:
	li $t0, 0
	sw $t0, -2240($fp)
	li $t0, 51120
	sw $t0, -2244($fp)
	li $t0, 18605
	sw $t0, -2248($fp)
	lw $t0, -2244($fp)
	lw $t1, -2248($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2252($fp)
	lw $t1, -2252($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label234
label234:
	lw $t0, 4($fp)
	sw $t0, -2256($fp)
	lw $t1, -2256($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label233
label232:
	li $t0, 1
	sw $t0, -2240($fp)
label233:
	li $t0, 45162
	sw $t0, -2260($fp)
	lw $t0, -2260($fp)
	sw $t0, 20($fp)
	lw $t0, 20($fp)
	sw $t0, -2264($fp)
	lw $t0, -440($fp)
	sw $t0, -2268($fp)
	lw $t0, -1708($fp)
	sw $t0, -2272($fp)
	lw $t0, -2268($fp)
	lw $t1, -2272($fp)
	mul $t0, $t0, $t1
	sw $t0, -2276($fp)
	addi $sp, $sp, -4
	lw $t0, -2212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2276($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2280($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -2284($fp)
	lw $t0, -1684($fp)
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -2292($fp)
	addi $t0, $fp, -32
	sw $t0, -2296($fp)
	li $t0, 0
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
	li $t0, 18216
	sw $t0, -2316($fp)
	li $t0, 0
	sw $t0, -2320($fp)
	li $t0, 31017
	sw $t0, -2324($fp)
	li $t0, 38765
	sw $t0, -2328($fp)
	lw $t1, -2324($fp)
	lw $t2, -2328($fp)
	bge $t1, $t2, label237
	j label238
label237:
	li $t0, 1
	sw $t0, -2320($fp)
label238:
	addi $t0, $fp, -32
	sw $t0, -2332($fp)
	lw $t0, -1756($fp)
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
	addi $sp, $sp, -4
	lw $t0, -2292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2348($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2352($fp)
	addi $sp, $sp, 24
	lw $t1, -2352($fp)
	li $t2, 0
	bne $t1, $t2, label236
	j label235
label235:
	li $t0, 1
	sw $t0, -2284($fp)
label236:
	addi $t0, $fp, -44
	sw $t0, -2356($fp)
	lw $t0, -368($fp)
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
	li $t0, 0
	sw $t0, -2376($fp)
	lw $t0, -1708($fp)
	sw $t0, -2380($fp)
	li $t0, 19515
	sw $t0, -2384($fp)
	lw $t0, -2380($fp)
	lw $t1, -2384($fp)
	sub $t0, $t0, $t1
	sw $t0, -2388($fp)
	lw $t1, -2388($fp)
	li $t2, 0
	bne $t1, $t2, label241
	j label240
label241:
	li $t0, 21569
	sw $t0, -2392($fp)
	lw $t1, -2392($fp)
	li $t2, 0
	bne $t1, $t2, label239
	j label240
label239:
	li $t0, 1
	sw $t0, -2376($fp)
label240:
	lw $t0, -404($fp)
	sw $t0, -2396($fp)
	lw $t0, -728($fp)
	sw $t0, -2400($fp)
	lw $t0, -2396($fp)
	lw $t1, -2400($fp)
	mul $t0, $t0, $t1
	sw $t0, -2404($fp)
	lw $t0, -380($fp)
	sw $t0, -2408($fp)
	lw $t0, -2404($fp)
	lw $t1, -2408($fp)
	add $t0, $t0, $t1
	sw $t0, -2412($fp)
	li $t0, 17149
	sw $t0, -2416($fp)
	li $t0, 0
	sw $t0, -2420($fp)
	addi $t0, $fp, -20
	sw $t0, -2424($fp)
	li $t0, 0
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
	li $t0, 35178
	sw $t0, -2444($fp)
	lw $t1, -2440($fp)
	lw $t2, -2444($fp)
	bge $t1, $t2, label242
	j label243
label242:
	li $t0, 1
	sw $t0, -2420($fp)
label243:
	li $t0, 44059
	sw $t0, -2448($fp)
	li $t0, 0
	lw $t1, -2448($fp)
	sub $t0, $t0, $t1
	sw $t0, -2452($fp)
	li $t0, 0
	lw $t1, -2452($fp)
	sub $t0, $t0, $t1
	sw $t0, -2456($fp)
	addi $sp, $sp, -4
	lw $t0, -2376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2456($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2460($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -2208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2460($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2464($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -2136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2464($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2468($fp)
	addi $sp, $sp, 24
	li $t0, 43974
	sw $t0, -2472($fp)
	lw $t0, -2468($fp)
	lw $t1, -2472($fp)
	sub $t0, $t0, $t1
	sw $t0, -2476($fp)
	li $t0, 0
	sw $t0, -2480($fp)
	lw $t0, -404($fp)
	sw $t0, -2484($fp)
	li $t0, 0
	lw $t1, -2484($fp)
	sub $t0, $t0, $t1
	sw $t0, -2488($fp)
	li $t0, 318
	sw $t0, -2492($fp)
	lw $t1, -2488($fp)
	lw $t2, -2492($fp)
	bne $t1, $t2, label244
	j label245
label244:
	li $t0, 1
	sw $t0, -2480($fp)
label245:
	lw $t0, 16($fp)
	sw $t0, -2496($fp)
	li $t0, 4142
	sw $t0, -2500($fp)
	lw $t0, -2496($fp)
	lw $t1, -2500($fp)
	mul $t0, $t0, $t1
	sw $t0, -2504($fp)
	li $t0, 51469
	sw $t0, -2508($fp)
	lw $t0, -2508($fp)
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	sw $t0, -2512($fp)
	addi $sp, $sp, -4
	lw $t0, -2132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2512($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2516($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -2520($fp)
	li $t0, 50665
	sw $t0, -2524($fp)
	lw $t0, -440($fp)
	sw $t0, -2528($fp)
	lw $t0, -2524($fp)
	lw $t1, -2528($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2532($fp)
	li $t0, 56496
	sw $t0, -2536($fp)
	lw $t1, -2532($fp)
	lw $t2, -2536($fp)
	blt $t1, $t2, label246
	j label247
label246:
	li $t0, 1
	sw $t0, -2520($fp)
label247:
	addi $sp, $sp, -4
	lw $t0, -2076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2520($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2540($fp)
	addi $sp, $sp, 24
	li $t0, 63755
	sw $t0, -2544($fp)
	li $t0, 0
	lw $t1, -2544($fp)
	sub $t0, $t0, $t1
	sw $t0, -2548($fp)
	lw $t0, -2540($fp)
	lw $t1, -2548($fp)
	mul $t0, $t0, $t1
	sw $t0, -2552($fp)
	lw $t1, -2072($fp)
	lw $t2, -2552($fp)
	ble $t1, $t2, label207
	j label208
label207:
	li $t0, 0
	sw $t0, -2556($fp)
	lw $t0, -752($fp)
	sw $t0, -2560($fp)
	lw $t1, -2560($fp)
	li $t2, 0
	bne $t1, $t2, label248
	j label249
label248:
	li $t0, 1
	sw $t0, -2556($fp)
label249:
	li $t0, 0
	sw $t0, -2564($fp)
	li $t0, 1170
	sw $t0, -2568($fp)
	lw $t1, -2568($fp)
	li $t2, 0
	bne $t1, $t2, label251
	j label250
label250:
	li $t0, 1
	sw $t0, -2564($fp)
label251:
	lw $t0, -2556($fp)
	lw $t1, -2564($fp)
	mul $t0, $t0, $t1
	sw $t0, -2572($fp)
	li $t0, 0
	sw $t0, -2576($fp)
	lw $t0, -368($fp)
	sw $t0, -2580($fp)
	lw $t1, -2580($fp)
	li $t2, 0
	bne $t1, $t2, label255
	j label253
label255:
	li $t0, 39173
	sw $t0, -2584($fp)
	lw $t1, -2584($fp)
	li $t2, 0
	bne $t1, $t2, label254
	j label253
label254:
	li $t0, 33490
	sw $t0, -2588($fp)
	lw $t1, -2588($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label253
label252:
	li $t0, 1
	sw $t0, -2576($fp)
label253:
	li $t0, 0
	sw $t0, -2592($fp)
	li $t0, 11921
	sw $t0, -2596($fp)
	li $t0, 0
	lw $t1, -2596($fp)
	sub $t0, $t0, $t1
	sw $t0, -2600($fp)
	li $t0, 31067
	sw $t0, -2604($fp)
	lw $t1, -2600($fp)
	lw $t2, -2604($fp)
	bgt $t1, $t2, label256
	j label257
label256:
	li $t0, 1
	sw $t0, -2592($fp)
label257:
	addi $t0, $fp, -44
	sw $t0, -2608($fp)
	lw $t0, -788($fp)
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
	li $t0, 0
	sw $t0, -2628($fp)
	li $t0, 42278
	sw $t0, -2632($fp)
	li $t0, 13917
	sw $t0, -2636($fp)
	lw $t1, -2632($fp)
	lw $t2, -2636($fp)
	ble $t1, $t2, label258
	j label260
label260:
	li $t0, 19658
	sw $t0, -2640($fp)
	lw $t1, -2640($fp)
	li $t2, 0
	bne $t1, $t2, label258
	j label259
label258:
	li $t0, 1
	sw $t0, -2628($fp)
label259:
	li $t0, 0
	sw $t0, -2644($fp)
	li $t0, 35746
	sw $t0, -2648($fp)
	li $t0, 0
	lw $t1, -2648($fp)
	sub $t0, $t0, $t1
	sw $t0, -2652($fp)
	lw $t1, -2652($fp)
	li $t2, 0
	bne $t1, $t2, label262
	j label261
label261:
	li $t0, 1
	sw $t0, -2644($fp)
label262:
	addi $sp, $sp, -4
	lw $t0, -2576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2644($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2656($fp)
	addi $sp, $sp, 24
	lw $t0, -2572($fp)
	lw $t1, -2656($fp)
	mul $t0, $t0, $t1
	sw $t0, -2660($fp)
	lw $t0, 4($fp)
	sw $t0, -2664($fp)
	lw $t0, -728($fp)
	sw $t0, -2668($fp)
	lw $t0, -2664($fp)
	lw $t1, -2668($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2672($fp)
	li $t0, 62084
	sw $t0, -2676($fp)
	lw $t0, -2672($fp)
	lw $t1, -2676($fp)
	mul $t0, $t0, $t1
	sw $t0, -2680($fp)
	li $t0, 0
	sw $t0, -2684($fp)
	li $t0, 12402
	sw $t0, -2688($fp)
	lw $t1, -2688($fp)
	li $t2, 0
	bne $t1, $t2, label264
	j label263
label263:
	li $t0, 1
	sw $t0, -2684($fp)
label264:
	lw $t0, -2680($fp)
	lw $t1, -2684($fp)
	mul $t0, $t0, $t1
	sw $t0, -2692($fp)
	lw $t0, -2660($fp)
	lw $t1, -2692($fp)
	add $t0, $t0, $t1
	sw $t0, -2696($fp)
	lw $ra, -4($fp)
	lw $v0, -2696($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label209
label208:
	li $t0, 51706
	sw $t0, -2700($fp)
	li $t0, 46183
	sw $t0, -2704($fp)
	lw $t0, -2700($fp)
	lw $t1, -2704($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2708($fp)
	li $t0, 3284
	sw $t0, -2712($fp)
	li $t0, 31332
	sw $t0, -2716($fp)
	lw $t0, -2712($fp)
	lw $t1, -2716($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2720($fp)
	lw $t0, -2708($fp)
	lw $t1, -2720($fp)
	add $t0, $t0, $t1
	sw $t0, -2724($fp)
	li $t0, 31767
	sw $t0, -2728($fp)
	lw $t0, -2724($fp)
	lw $t1, -2728($fp)
	add $t0, $t0, $t1
	sw $t0, -2732($fp)
	li $t0, 21889
	sw $t0, -2736($fp)
	lw $t0, -2732($fp)
	lw $t1, -2736($fp)
	sub $t0, $t0, $t1
	sw $t0, -2740($fp)
label209:
	j label202
label204:
	j label199
label201:
	j label175
label177:
	li $t0, 50821
	sw $t0, -2744($fp)
	li $t0, 0
	lw $t1, -2744($fp)
	sub $t0, $t0, $t1
	sw $t0, -2748($fp)
	lw $t1, -2748($fp)
	li $t2, 0
	bne $t1, $t2, label268
	j label265
label268:
	lw $t0, -452($fp)
	sw $t0, -2752($fp)
	lw $t1, -2752($fp)
	li $t2, 0
	bne $t1, $t2, label265
	j label266
label265:
	lw $t0, 20($fp)
	sw $t0, -2756($fp)
	lw $t1, -2756($fp)
	li $t2, 0
	bne $t1, $t2, label269
	j label270
label269:
	li $t0, 0
	sw $t0, -2760($fp)
	lw $t0, -884($fp)
	sw $t0, -2764($fp)
	lw $t0, -728($fp)
	sw $t0, -2768($fp)
	lw $t0, -2764($fp)
	lw $t1, -2768($fp)
	add $t0, $t0, $t1
	sw $t0, -2772($fp)
	lw $t1, -2772($fp)
	li $t2, 0
	bne $t1, $t2, label277
	j label276
label277:
	li $t0, 7171
	sw $t0, -2776($fp)
	li $t0, 0
	lw $t1, -2776($fp)
	sub $t0, $t0, $t1
	sw $t0, -2780($fp)
	lw $t1, -2780($fp)
	li $t2, 0
	bne $t1, $t2, label275
	j label276
label275:
	li $t0, 1
	sw $t0, -2760($fp)
label276:
	lw $t0, -2760($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -2784($fp)
	lw $t1, -2784($fp)
	li $t2, 0
	bne $t1, $t2, label272
	j label273
label272:
	li $t0, 0
	sw $t0, -2788($fp)
	li $t0, 0
	sw $t0, -2792($fp)
	li $t0, 50655
	sw $t0, -2796($fp)
	lw $t1, -2796($fp)
	li $t2, 0
	bne $t1, $t2, label280
	j label281
label280:
	li $t0, 1
	sw $t0, -2792($fp)
label281:
	addi $t0, $fp, -32
	sw $t0, -2800($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -2820($fp)
	li $t0, 0
	sw $t0, -2824($fp)
	li $t0, 4
	lw $t1, -2824($fp)
	mul $t0, $t0, $t1
	sw $t0, -2828($fp)
	lw $t0, -2828($fp)
	lw $t1, -2820($fp)
	add $t0, $t0, $t1
	sw $t0, -2832($fp)
	lw $t0, -2832($fp)
	lw $t1, 0($t0)
	sw $t1, -2836($fp)
	lw $t0, -2816($fp)
	lw $t1, -2836($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2840($fp)
	li $t0, 0
	lw $t1, -2840($fp)
	sub $t0, $t0, $t1
	sw $t0, -2844($fp)
	lw $t1, -2792($fp)
	lw $t2, -2844($fp)
	beq $t1, $t2, label278
	j label279
label278:
	li $t0, 1
	sw $t0, -2788($fp)
label279:
label273:
label270:
label266:
	lw $t0, -104($fp)
	sw $t0, -2848($fp)
	lw $t0, -2848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
	sw $t0, -2872($fp)
	li $t0, 1
	sw $t0, -2876($fp)
	li $t0, 4
	lw $t1, -2876($fp)
	mul $t0, $t0, $t1
	sw $t0, -2880($fp)
	lw $t0, -2880($fp)
	lw $t1, -2872($fp)
	add $t0, $t0, $t1
	sw $t0, -2884($fp)
	lw $t0, -2884($fp)
	lw $t1, 0($t0)
	sw $t1, -2888($fp)
	lw $t0, -2888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -2892($fp)
	li $t0, 2
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
	addi $t0, $fp, -20
	sw $t0, -2912($fp)
	li $t0, 3
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
	lw $t0, -212($fp)
	sw $t0, -2932($fp)
	lw $t0, -2932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
	sw $t0, -2956($fp)
	li $t0, 1
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
	addi $t0, $fp, -32
	sw $t0, -2976($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	lw $t0, -368($fp)
	sw $t0, -3056($fp)
	lw $t0, -3056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -380($fp)
	sw $t0, -3060($fp)
	lw $t0, -3060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -392($fp)
	sw $t0, -3064($fp)
	lw $t0, -3064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -404($fp)
	sw $t0, -3068($fp)
	lw $t0, -3068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -3072($fp)
	li $t0, 0
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
	lw $t0, -440($fp)
	sw $t0, -3092($fp)
	lw $t0, -3092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -452($fp)
	sw $t0, -3096($fp)
	lw $t0, -3096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -3100($fp)
	li $t0, 0
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
	lw $t0, -3116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -3120($fp)
	li $t0, 1
	sw $t0, -3124($fp)
	li $t0, 4
	lw $t1, -3124($fp)
	mul $t0, $t0, $t1
	sw $t0, -3128($fp)
	lw $t0, -3128($fp)
	lw $t1, -3120($fp)
	add $t0, $t0, $t1
	sw $t0, -3132($fp)
	lw $t0, -3132($fp)
	lw $t1, 0($t0)
	sw $t1, -3136($fp)
	lw $t0, -3136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -3140($fp)
	li $t0, 2
	sw $t0, -3144($fp)
	li $t0, 4
	lw $t1, -3144($fp)
	mul $t0, $t0, $t1
	sw $t0, -3148($fp)
	lw $t0, -3148($fp)
	lw $t1, -3140($fp)
	add $t0, $t0, $t1
	sw $t0, -3152($fp)
	lw $t0, -3152($fp)
	lw $t1, 0($t0)
	sw $t1, -3156($fp)
	lw $t0, -3156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -3160($fp)
	li $t0, 3
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
	lw $t0, -3176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -3180($fp)
	li $t0, 4
	sw $t0, -3184($fp)
	li $t0, 4
	lw $t1, -3184($fp)
	mul $t0, $t0, $t1
	sw $t0, -3188($fp)
	lw $t0, -3188($fp)
	lw $t1, -3180($fp)
	add $t0, $t0, $t1
	sw $t0, -3192($fp)
	lw $t0, -3192($fp)
	lw $t1, 0($t0)
	sw $t1, -3196($fp)
	lw $t0, -3196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
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
	addi $t0, $fp, -92
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
	addi $t0, $fp, -92
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
	addi $t0, $fp, -92
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
	addi $t0, $fp, -92
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
	addi $t0, $fp, -92
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
	lw $t0, -728($fp)
	sw $t0, -3320($fp)
	lw $t0, -3320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -740($fp)
	sw $t0, -3324($fp)
	lw $t0, -3324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -752($fp)
	sw $t0, -3328($fp)
	lw $t0, -3328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -764($fp)
	sw $t0, -3332($fp)
	lw $t0, -3332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -776($fp)
	sw $t0, -3336($fp)
	lw $t0, -3336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -788($fp)
	sw $t0, -3340($fp)
	lw $t0, -3340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
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
	lw $t0, -824($fp)
	sw $t0, -3364($fp)
	lw $t0, -3364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -836($fp)
	sw $t0, -3368($fp)
	lw $t0, -3368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -848($fp)
	sw $t0, -3372($fp)
	lw $t0, -3372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -860($fp)
	sw $t0, -3376($fp)
	lw $t0, -3376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -872($fp)
	sw $t0, -3380($fp)
	lw $t0, -3380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -884($fp)
	sw $t0, -3384($fp)
	lw $t0, -3384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -896($fp)
	sw $t0, -3388($fp)
	lw $t0, -3388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3392($fp)
	li $t0, 0
	sw $t0, -3396($fp)
	addi $t0, $fp, -68
	sw $t0, -3400($fp)
	lw $t0, -740($fp)
	sw $t0, -3404($fp)
	lw $t0, -836($fp)
	sw $t0, -3408($fp)
	lw $t0, -3404($fp)
	lw $t1, -3408($fp)
	mul $t0, $t0, $t1
	sw $t0, -3412($fp)
	li $t0, 4
	lw $t1, -3412($fp)
	mul $t0, $t0, $t1
	sw $t0, -3416($fp)
	lw $t0, -3416($fp)
	lw $t1, -3400($fp)
	add $t0, $t0, $t1
	sw $t0, -3420($fp)
	lw $t0, -3420($fp)
	lw $t1, 0($t0)
	sw $t1, -3424($fp)
	li $t0, 0
	sw $t0, -3428($fp)
	addi $t0, $fp, -48
	sw $t0, -3432($fp)
	li $t0, 0
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
	lw $t1, -3448($fp)
	li $t2, 0
	bne $t1, $t2, label286
	j label288
label288:
	li $t0, 42351
	sw $t0, -3452($fp)
	lw $t1, -3452($fp)
	li $t2, 0
	bne $t1, $t2, label286
	j label287
label286:
	li $t0, 1
	sw $t0, -3428($fp)
label287:
	lw $t0, 8($fp)
	sw $t0, -3456($fp)
	li $t0, 0
	sw $t0, -3460($fp)
	lw $t0, -872($fp)
	sw $t0, -3464($fp)
	li $t0, 3483
	sw $t0, -3468($fp)
	lw $t1, -3464($fp)
	lw $t2, -3468($fp)
	blt $t1, $t2, label289
	j label291
label291:
	li $t0, 6605
	sw $t0, -3472($fp)
	lw $t1, -3472($fp)
	li $t2, 0
	bne $t1, $t2, label289
	j label290
label289:
	li $t0, 1
	sw $t0, -3460($fp)
label290:
	li $t0, 36713
	sw $t0, -3476($fp)
	li $t0, 50427
	sw $t0, -3480($fp)
	lw $t0, -3476($fp)
	lw $t1, -3480($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3484($fp)
	li $t0, 0
	lw $t1, -3484($fp)
	sub $t0, $t0, $t1
	sw $t0, -3488($fp)
	li $t0, 0
	sw $t0, -3492($fp)
	li $t0, 0
	sw $t0, -3496($fp)
	li $t0, 38141
	sw $t0, -3500($fp)
	lw $t0, -776($fp)
	sw $t0, -3504($fp)
	lw $t1, -3500($fp)
	lw $t2, -3504($fp)
	bge $t1, $t2, label294
	j label295
label294:
	li $t0, 1
	sw $t0, -3496($fp)
label295:
	li $t0, 6455
	sw $t0, -3508($fp)
	lw $t1, -3496($fp)
	lw $t2, -3508($fp)
	blt $t1, $t2, label292
	j label293
label292:
	li $t0, 1
	sw $t0, -3492($fp)
label293:
	addi $sp, $sp, -4
	lw $t0, -3428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3492($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3512($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -3512($fp)
	sub $t0, $t0, $t1
	sw $t0, -3516($fp)
	lw $t1, -3424($fp)
	lw $t2, -3516($fp)
	blt $t1, $t2, label284
	j label285
label284:
	li $t0, 1
	sw $t0, -3396($fp)
label285:
	li $t0, 0
	sw $t0, -3520($fp)
	li $t0, 25389
	sw $t0, -3524($fp)
	lw $t1, -3524($fp)
	li $t2, 0
	bne $t1, $t2, label297
	j label296
label296:
	li $t0, 1
	sw $t0, -3520($fp)
label297:
	lw $t1, -3396($fp)
	lw $t2, -3520($fp)
	blt $t1, $t2, label282
	j label283
label282:
	li $t0, 1
	sw $t0, -3392($fp)
label283:
	lw $ra, -4($fp)
	lw $v0, -3392($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -500
	li $t0, 18571
	sw $t0, -48($fp)
	addi $t0, $fp, -44
	sw $t0, -52($fp)
	li $t0, 0
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -60($fp)
	lw $t0, -52($fp)
	lw $t1, -60($fp)
	add $t0, $t0, $t1
	sw $t0, -64($fp)
	lw $t0, -48($fp)
	lw $t1, -64($fp)
	sw $t0, 0($t1)
	lw $t0, -64($fp)
	lw $t1, 0($t0)
	sw $t1, -68($fp)
	li $t0, 62009
	sw $t0, -72($fp)
	addi $t0, $fp, -44
	sw $t0, -76($fp)
	li $t0, 1
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
	li $t0, 37310
	sw $t0, -96($fp)
	addi $t0, $fp, -44
	sw $t0, -100($fp)
	li $t0, 2
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
	li $t0, 49638
	sw $t0, -120($fp)
	addi $t0, $fp, -44
	sw $t0, -124($fp)
	li $t0, 3
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
	li $t0, 35646
	sw $t0, -144($fp)
	addi $t0, $fp, -44
	sw $t0, -148($fp)
	li $t0, 4
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
	li $t0, 5264
	sw $t0, -168($fp)
	addi $t0, $fp, -44
	sw $t0, -172($fp)
	li $t0, 5
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
	li $t0, 46186
	sw $t0, -192($fp)
	addi $t0, $fp, -44
	sw $t0, -196($fp)
	li $t0, 6
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
	li $t0, 48048
	sw $t0, -216($fp)
	addi $t0, $fp, -44
	sw $t0, -220($fp)
	li $t0, 7
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
	li $t0, 56970
	sw $t0, -240($fp)
	addi $t0, $fp, -44
	sw $t0, -244($fp)
	li $t0, 8
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
	li $t0, 26834
	sw $t0, -264($fp)
	addi $t0, $fp, -44
	sw $t0, -268($fp)
	li $t0, 9
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
	addi $t0, $fp, -44
	sw $t0, -288($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -308($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -328($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -348($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -368($fp)
	li $t0, 4
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
	addi $t0, $fp, -44
	sw $t0, -388($fp)
	li $t0, 5
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
	addi $t0, $fp, -44
	sw $t0, -408($fp)
	li $t0, 6
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
	addi $t0, $fp, -44
	sw $t0, -428($fp)
	li $t0, 7
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
	addi $t0, $fp, -44
	sw $t0, -448($fp)
	li $t0, 8
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
	addi $t0, $fp, -44
	sw $t0, -468($fp)
	li $t0, 9
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
	addi $t0, $fp, -44
	sw $t0, -488($fp)
	lw $t0, 4($fp)
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
	lw $ra, -4($fp)
	lw $v0, -504($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4444
	li $t0, 51332
	sw $t0, -132($fp)
	addi $t0, $fp, -12
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
	li $t0, 22766
	sw $t0, -156($fp)
	addi $t0, $fp, -12
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
	li $t0, 58601
	sw $t0, -180($fp)
	addi $t0, $fp, -24
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
	li $t0, 7685
	sw $t0, -204($fp)
	addi $t0, $fp, -24
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
	li $t0, 8052
	sw $t0, -228($fp)
	addi $t0, $fp, -24
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
	li $t0, 237
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	li $t0, 58340
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	li $t0, 21860
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	li $t0, 61197
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	li $t0, 52897
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	li $t0, 14106
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	li $t0, 33803
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	li $t0, 59353
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -344($fp)
	li $t0, 50820
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	li $t0, 18694
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -368($fp)
	li $t0, 62836
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -380($fp)
	li $t0, 57425
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -392($fp)
	li $t0, 1805
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
	li $t0, 1954
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -416($fp)
	li $t0, 34240
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	li $t0, 27195
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	li $t0, 20526
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	li $t0, 30713
	sw $t0, -456($fp)
	addi $t0, $fp, -44
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
	li $t0, 64505
	sw $t0, -480($fp)
	addi $t0, $fp, -44
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
	li $t0, 4628
	sw $t0, -504($fp)
	addi $t0, $fp, -44
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
	li $t0, 823
	sw $t0, -528($fp)
	addi $t0, $fp, -44
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
	li $t0, 4234
	sw $t0, -552($fp)
	addi $t0, $fp, -44
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
	li $t0, 50815
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	li $t0, 48871
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -596($fp)
	li $t0, 61204
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -608($fp)
	li $t0, 12113
	sw $t0, -612($fp)
	addi $t0, $fp, -76
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
	li $t0, 34667
	sw $t0, -636($fp)
	addi $t0, $fp, -76
	sw $t0, -640($fp)
	li $t0, 1
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
	li $t0, 18435
	sw $t0, -660($fp)
	addi $t0, $fp, -76
	sw $t0, -664($fp)
	li $t0, 2
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
	li $t0, 5178
	sw $t0, -684($fp)
	addi $t0, $fp, -76
	sw $t0, -688($fp)
	li $t0, 3
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
	li $t0, 42352
	sw $t0, -708($fp)
	addi $t0, $fp, -76
	sw $t0, -712($fp)
	li $t0, 4
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
	li $t0, 26487
	sw $t0, -732($fp)
	addi $t0, $fp, -76
	sw $t0, -736($fp)
	li $t0, 5
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
	li $t0, 5415
	sw $t0, -756($fp)
	addi $t0, $fp, -76
	sw $t0, -760($fp)
	li $t0, 6
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
	li $t0, 35156
	sw $t0, -780($fp)
	addi $t0, $fp, -76
	sw $t0, -784($fp)
	li $t0, 7
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
	li $t0, 48347
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, -812($fp)
	li $t0, 1077
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -824($fp)
	li $t0, 22518
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -836($fp)
	li $t0, 62453
	sw $t0, -840($fp)
	addi $t0, $fp, -84
	sw $t0, -844($fp)
	li $t0, 0
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -852($fp)
	lw $t0, -844($fp)
	lw $t1, -852($fp)
	add $t0, $t0, $t1
	sw $t0, -856($fp)
	lw $t0, -840($fp)
	lw $t1, -856($fp)
	sw $t0, 0($t1)
	lw $t0, -856($fp)
	lw $t1, 0($t0)
	sw $t1, -860($fp)
	li $t0, 34880
	sw $t0, -864($fp)
	addi $t0, $fp, -84
	sw $t0, -868($fp)
	li $t0, 1
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
	li $t0, 16335
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	sw $t0, -896($fp)
	li $t0, 47737
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	sw $t0, -908($fp)
	li $t0, 53574
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	sw $t0, -920($fp)
	li $t0, 13635
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -932($fp)
	li $t0, 39626
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	sw $t0, -944($fp)
	li $t0, 55380
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	sw $t0, -956($fp)
	li $t0, 15590
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	sw $t0, -968($fp)
	li $t0, 8330
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	sw $t0, -980($fp)
	li $t0, 17039
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	sw $t0, -992($fp)
	li $t0, 36116
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	sw $t0, -1004($fp)
	li $t0, 39043
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	sw $t0, -1016($fp)
	li $t0, 16008
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -1028($fp)
	li $t0, 40744
	sw $t0, -1032($fp)
	addi $t0, $fp, -112
	sw $t0, -1036($fp)
	li $t0, 0
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
	li $t0, 39866
	sw $t0, -1056($fp)
	addi $t0, $fp, -112
	sw $t0, -1060($fp)
	li $t0, 1
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
	li $t0, 20242
	sw $t0, -1080($fp)
	addi $t0, $fp, -112
	sw $t0, -1084($fp)
	li $t0, 2
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1092($fp)
	lw $t0, -1084($fp)
	lw $t1, -1092($fp)
	add $t0, $t0, $t1
	sw $t0, -1096($fp)
	lw $t0, -1080($fp)
	lw $t1, -1096($fp)
	sw $t0, 0($t1)
	lw $t0, -1096($fp)
	lw $t1, 0($t0)
	sw $t1, -1100($fp)
	li $t0, 26023
	sw $t0, -1104($fp)
	addi $t0, $fp, -112
	sw $t0, -1108($fp)
	li $t0, 3
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1116($fp)
	lw $t0, -1108($fp)
	lw $t1, -1116($fp)
	add $t0, $t0, $t1
	sw $t0, -1120($fp)
	lw $t0, -1104($fp)
	lw $t1, -1120($fp)
	sw $t0, 0($t1)
	lw $t0, -1120($fp)
	lw $t1, 0($t0)
	sw $t1, -1124($fp)
	li $t0, 23201
	sw $t0, -1128($fp)
	addi $t0, $fp, -112
	sw $t0, -1132($fp)
	li $t0, 4
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1140($fp)
	lw $t0, -1132($fp)
	lw $t1, -1140($fp)
	add $t0, $t0, $t1
	sw $t0, -1144($fp)
	lw $t0, -1128($fp)
	lw $t1, -1144($fp)
	sw $t0, 0($t1)
	lw $t0, -1144($fp)
	lw $t1, 0($t0)
	sw $t1, -1148($fp)
	li $t0, 15911
	sw $t0, -1152($fp)
	addi $t0, $fp, -112
	sw $t0, -1156($fp)
	li $t0, 5
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
	li $t0, 38136
	sw $t0, -1176($fp)
	addi $t0, $fp, -112
	sw $t0, -1180($fp)
	li $t0, 6
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
	li $t0, 57868
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	sw $t0, -1208($fp)
	li $t0, 34346
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	sw $t0, -1220($fp)
	li $t0, 43315
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	sw $t0, -1232($fp)
	li $t0, 34684
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	sw $t0, -1244($fp)
	li $t0, 60833
	sw $t0, -1248($fp)
	addi $t0, $fp, -128
	sw $t0, -1252($fp)
	li $t0, 0
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
	li $t0, 48730
	sw $t0, -1272($fp)
	addi $t0, $fp, -128
	sw $t0, -1276($fp)
	li $t0, 1
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
	li $t0, 4305
	sw $t0, -1296($fp)
	addi $t0, $fp, -128
	sw $t0, -1300($fp)
	li $t0, 2
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1308($fp)
	lw $t0, -1300($fp)
	lw $t1, -1308($fp)
	add $t0, $t0, $t1
	sw $t0, -1312($fp)
	lw $t0, -1296($fp)
	lw $t1, -1312($fp)
	sw $t0, 0($t1)
	lw $t0, -1312($fp)
	lw $t1, 0($t0)
	sw $t1, -1316($fp)
	li $t0, 43644
	sw $t0, -1320($fp)
	addi $t0, $fp, -128
	sw $t0, -1324($fp)
	li $t0, 3
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1332($fp)
	lw $t0, -1324($fp)
	lw $t1, -1332($fp)
	add $t0, $t0, $t1
	sw $t0, -1336($fp)
	lw $t0, -1320($fp)
	lw $t1, -1336($fp)
	sw $t0, 0($t1)
	lw $t0, -1336($fp)
	lw $t1, 0($t0)
	sw $t1, -1340($fp)
label298:
	li $t0, 49807
	sw $t0, -1344($fp)
	lw $t0, -988($fp)
	sw $t0, -1348($fp)
	lw $t0, -1344($fp)
	lw $t1, -1348($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1352($fp)
	li $t0, 7190
	sw $t0, -1356($fp)
	li $t0, 56793
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
	li $t0, 0
	sw $t0, -1372($fp)
	li $t0, 43158
	sw $t0, -1376($fp)
	lw $t1, -1376($fp)
	li $t2, 0
	bne $t1, $t2, label304
	j label303
label304:
	li $t0, 22763
	sw $t0, -1380($fp)
	lw $t1, -1380($fp)
	li $t2, 0
	bne $t1, $t2, label301
	j label303
label303:
	lw $t0, 4($fp)
	sw $t0, -1384($fp)
	lw $t1, -1384($fp)
	li $t2, 0
	bne $t1, $t2, label301
	j label302
label301:
	li $t0, 1
	sw $t0, -1372($fp)
label302:
	lw $t0, -256($fp)
	sw $t0, -1388($fp)
	li $t0, 0
	lw $t1, -1388($fp)
	sub $t0, $t0, $t1
	sw $t0, -1392($fp)
	li $t0, 19151
	sw $t0, -1396($fp)
	lw $t0, -1392($fp)
	lw $t1, -1396($fp)
	sub $t0, $t0, $t1
	sw $t0, -1400($fp)
	li $t0, 0
	sw $t0, -1404($fp)
	li $t0, 0
	sw $t0, -1408($fp)
	lw $t0, 16($fp)
	sw $t0, -1412($fp)
	lw $t0, -268($fp)
	sw $t0, -1416($fp)
	lw $t1, -1412($fp)
	lw $t2, -1416($fp)
	ble $t1, $t2, label307
	j label308
label307:
	li $t0, 1
	sw $t0, -1408($fp)
label308:
	li $t0, 40561
	sw $t0, -1420($fp)
	lw $t1, -1408($fp)
	lw $t2, -1420($fp)
	bgt $t1, $t2, label305
	j label306
label305:
	li $t0, 1
	sw $t0, -1404($fp)
label306:
	li $t0, 26823
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	sw $t0, -1428($fp)
	addi $sp, $sp, -4
	lw $t0, -1368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1428($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1432($fp)
	addi $sp, $sp, 24
	lw $t0, -1352($fp)
	lw $t1, -1432($fp)
	sub $t0, $t0, $t1
	sw $t0, -1436($fp)
	lw $t1, -1436($fp)
	li $t2, 0
	bne $t1, $t2, label299
	j label300
label299:
	li $t0, 0
	sw $t0, -1440($fp)
	li $t0, 62570
	sw $t0, -1444($fp)
	li $t0, 0
	sw $t0, -1448($fp)
	li $t0, 62389
	sw $t0, -1452($fp)
	lw $t0, -436($fp)
	sw $t0, -1456($fp)
	lw $t1, -1452($fp)
	lw $t2, -1456($fp)
	bge $t1, $t2, label315
	j label314
label315:
	lw $t0, -316($fp)
	sw $t0, -1460($fp)
	lw $t1, -1460($fp)
	li $t2, 0
	bne $t1, $t2, label313
	j label314
label313:
	li $t0, 1
	sw $t0, -1448($fp)
label314:
	addi $sp, $sp, -4
	lw $t0, -1444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1448($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1464($fp)
	addi $sp, $sp, 12
	li $t0, 6847
	sw $t0, -1468($fp)
	lw $t0, -1464($fp)
	lw $t1, -1468($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1472($fp)
	lw $t1, -1472($fp)
	li $t2, 0
	bne $t1, $t2, label312
	j label311
label312:
	li $t0, 0
	sw $t0, -1476($fp)
	lw $t0, -364($fp)
	sw $t0, -1480($fp)
	lw $t1, -1480($fp)
	li $t2, 0
	bne $t1, $t2, label317
	j label316
label316:
	li $t0, 1
	sw $t0, -1476($fp)
label317:
	lw $t0, -832($fp)
	sw $t0, -1484($fp)
	lw $t0, -1476($fp)
	lw $t1, -1484($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1488($fp)
	lw $t1, -1488($fp)
	li $t2, 0
	bne $t1, $t2, label309
	j label311
label311:
	addi $t0, $fp, -44
	sw $t0, -1492($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -1512($fp)
	lw $t0, -1204($fp)
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
	lw $t0, -1508($fp)
	lw $t1, -1528($fp)
	sub $t0, $t0, $t1
	sw $t0, -1532($fp)
	lw $t1, -1532($fp)
	li $t2, 0
	bne $t1, $t2, label309
	j label310
label309:
	li $t0, 1
	sw $t0, -1440($fp)
label310:
	lw $ra, -4($fp)
	lw $v0, -1440($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label298
label300:
label318:
	li $t0, 42963
	sw $t0, -1536($fp)
	li $t0, 0
	lw $t1, -1536($fp)
	sub $t0, $t0, $t1
	sw $t0, -1540($fp)
	lw $t1, -1540($fp)
	li $t2, 0
	bne $t1, $t2, label319
	j label321
label321:
	addi $t0, $fp, -112
	sw $t0, -1544($fp)
	li $t0, 6
	sw $t0, -1548($fp)
	li $t0, 4
	lw $t1, -1548($fp)
	mul $t0, $t0, $t1
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	lw $t1, -1544($fp)
	add $t0, $t0, $t1
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	lw $t1, 0($t0)
	sw $t1, -1560($fp)
	lw $t1, -1560($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label319
label319:
	lw $t0, -1204($fp)
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -1568($fp)
	lw $t0, 4($fp)
	sw $t0, -1572($fp)
	li $t0, 0
	lw $t1, -1572($fp)
	sub $t0, $t0, $t1
	sw $t0, -1576($fp)
	li $t0, 43305
	sw $t0, -1580($fp)
	lw $t0, -1576($fp)
	lw $t1, -1580($fp)
	sub $t0, $t0, $t1
	sw $t0, -1584($fp)
	li $t0, 30342
	sw $t0, -1588($fp)
	li $t0, 0
	sw $t0, -1592($fp)
	lw $t0, 20($fp)
	sw $t0, -1596($fp)
	lw $t1, -1596($fp)
	li $t2, 0
	bne $t1, $t2, label323
	j label322
label322:
	li $t0, 1
	sw $t0, -1592($fp)
label323:
	lw $t0, -304($fp)
	sw $t0, -1600($fp)
	lw $t0, -1592($fp)
	lw $t1, -1600($fp)
	add $t0, $t0, $t1
	sw $t0, -1604($fp)
	addi $sp, $sp, -4
	lw $t0, -1588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1604($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1608($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -1612($fp)
	li $t0, 60111
	sw $t0, -1616($fp)
	li $t0, 3240
	sw $t0, -1620($fp)
	lw $t0, -1616($fp)
	lw $t1, -1620($fp)
	add $t0, $t0, $t1
	sw $t0, -1624($fp)
	lw $t1, -1624($fp)
	li $t2, 0
	bne $t1, $t2, label326
	j label325
label326:
	lw $t0, -820($fp)
	sw $t0, -1628($fp)
	lw $t1, -1628($fp)
	li $t2, 0
	bne $t1, $t2, label324
	j label325
label324:
	li $t0, 1
	sw $t0, -1612($fp)
label325:
	li $t0, 0
	sw $t0, -1632($fp)
	li $t0, 0
	sw $t0, -1636($fp)
	lw $t0, 4($fp)
	sw $t0, -1640($fp)
	lw $t1, -1640($fp)
	li $t2, 0
	bne $t1, $t2, label332
	j label330
label332:
	lw $t0, -280($fp)
	sw $t0, -1644($fp)
	lw $t1, -1644($fp)
	li $t2, 0
	bne $t1, $t2, label331
	j label330
label331:
	lw $t0, -280($fp)
	sw $t0, -1648($fp)
	lw $t1, -1648($fp)
	li $t2, 0
	bne $t1, $t2, label329
	j label330
label329:
	li $t0, 1
	sw $t0, -1636($fp)
label330:
	li $t0, 0
	sw $t0, -1652($fp)
	li $t0, 35045
	sw $t0, -1656($fp)
	lw $t1, -1656($fp)
	li $t2, 0
	bne $t1, $t2, label335
	j label334
label335:
	lw $t0, -328($fp)
	sw $t0, -1660($fp)
	lw $t1, -1660($fp)
	li $t2, 0
	bne $t1, $t2, label333
	j label334
label333:
	li $t0, 1
	sw $t0, -1652($fp)
label334:
	li $t0, 0
	sw $t0, -1664($fp)
	li $t0, 16796
	sw $t0, -1668($fp)
	li $t0, 34092
	sw $t0, -1672($fp)
	lw $t1, -1668($fp)
	lw $t2, -1672($fp)
	beq $t1, $t2, label338
	j label337
label338:
	lw $t0, 4($fp)
	sw $t0, -1676($fp)
	lw $t1, -1676($fp)
	li $t2, 0
	bne $t1, $t2, label336
	j label337
label336:
	li $t0, 1
	sw $t0, -1664($fp)
label337:
	li $t0, 41759
	sw $t0, -1680($fp)
	li $t0, 699
	sw $t0, -1684($fp)
	lw $t0, -1680($fp)
	lw $t1, -1684($fp)
	sub $t0, $t0, $t1
	sw $t0, -1688($fp)
	lw $t0, -976($fp)
	sw $t0, -1692($fp)
	lw $t0, -1688($fp)
	lw $t1, -1692($fp)
	sub $t0, $t0, $t1
	sw $t0, -1696($fp)
	li $t0, 0
	sw $t0, -1700($fp)
	lw $t0, 4($fp)
	sw $t0, -1704($fp)
	lw $t0, -1024($fp)
	sw $t0, -1708($fp)
	lw $t0, -1704($fp)
	lw $t1, -1708($fp)
	add $t0, $t0, $t1
	sw $t0, -1712($fp)
	lw $t0, -1216($fp)
	sw $t0, -1716($fp)
	lw $t0, -1712($fp)
	lw $t1, -1716($fp)
	add $t0, $t0, $t1
	sw $t0, -1720($fp)
	lw $t0, -1024($fp)
	sw $t0, -1724($fp)
	addi $sp, $sp, -4
	lw $t0, -1720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1724($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1728($fp)
	addi $sp, $sp, 12
	li $t0, 44195
	sw $t0, -1732($fp)
	lw $t1, -1728($fp)
	lw $t2, -1732($fp)
	bne $t1, $t2, label339
	j label340
label339:
	li $t0, 1
	sw $t0, -1700($fp)
label340:
	addi $sp, $sp, -4
	lw $t0, -1636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1700($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1736($fp)
	addi $sp, $sp, 24
	lw $t0, -412($fp)
	sw $t0, -1740($fp)
	lw $t1, -1736($fp)
	lw $t2, -1740($fp)
	beq $t1, $t2, label327
	j label328
label327:
	li $t0, 1
	sw $t0, -1632($fp)
label328:
	lw $t0, -1216($fp)
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -1748($fp)
	li $t0, 0
	sw $t0, -1752($fp)
	li $t0, 0
	sw $t0, -1756($fp)
	lw $t0, -280($fp)
	sw $t0, -1760($fp)
	lw $t0, -1204($fp)
	sw $t0, -1764($fp)
	lw $t1, -1760($fp)
	lw $t2, -1764($fp)
	bgt $t1, $t2, label343
	j label344
label343:
	li $t0, 1
	sw $t0, -1756($fp)
label344:
	li $t0, 50324
	sw $t0, -1768($fp)
	lw $t1, -1756($fp)
	lw $t2, -1768($fp)
	beq $t1, $t2, label341
	j label342
label341:
	li $t0, 1
	sw $t0, -1752($fp)
label342:
	li $t0, 18558
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	sw $t0, -1776($fp)
	addi $sp, $sp, -4
	lw $t0, -1612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1776($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1780($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -1784($fp)
	li $t0, 18172
	sw $t0, -1788($fp)
	lw $t1, -1788($fp)
	li $t2, 0
	bne $t1, $t2, label346
	j label345
label345:
	li $t0, 1
	sw $t0, -1784($fp)
label346:
	li $t0, 0
	lw $t1, -1784($fp)
	sub $t0, $t0, $t1
	sw $t0, -1792($fp)
	addi $sp, $sp, -4
	lw $t0, -1568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1792($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1796($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -44
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
	lw $t0, -1796($fp)
	lw $t1, -1816($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1820($fp)
	lw $t0, -1820($fp)
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -1824($fp)
	lw $ra, -4($fp)
	lw $v0, -1824($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label318
label320:
	li $t0, 27577
	sw $t0, -1828($fp)
	lw $t0, -1828($fp)
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	sw $t0, -1836($fp)
	li $t0, 34368
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	sw $t0, -1848($fp)
	li $t0, 49011
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	sw $t0, -1856($fp)
	lw $t0, -1856($fp)
	sw $t0, -1860($fp)
label347:
	li $t0, 46728
	sw $t0, -1864($fp)
	lw $t1, -1864($fp)
	li $t2, 0
	bne $t1, $t2, label348
	j label349
label348:
	lw $t0, 4($fp)
	sw $t0, -1868($fp)
	addi $t0, $fp, -76
	sw $t0, -1872($fp)
	lw $t0, -1844($fp)
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
	lw $t0, -1868($fp)
	lw $t1, -1888($fp)
	add $t0, $t0, $t1
	sw $t0, -1892($fp)
	lw $t0, 4($fp)
	sw $t0, -1896($fp)
	lw $t0, -1892($fp)
	lw $t1, -1896($fp)
	sub $t0, $t0, $t1
	sw $t0, -1900($fp)
	lw $ra, -4($fp)
	lw $v0, -1900($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label347
label349:
label350:
	lw $t0, -1216($fp)
	sw $t0, -1904($fp)
	lw $t0, -1904($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -1908($fp)
	lw $t0, -292($fp)
	sw $t0, -1912($fp)
	li $t0, 3092
	sw $t0, -1916($fp)
	lw $t0, 4($fp)
	sw $t0, -1920($fp)
	lw $t0, -1916($fp)
	lw $t1, -1920($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1924($fp)
	li $t0, 0
	lw $t1, -1924($fp)
	sub $t0, $t0, $t1
	sw $t0, -1928($fp)
	li $t0, 3248
	sw $t0, -1932($fp)
	lw $t0, -988($fp)
	sw $t0, -1936($fp)
	lw $t0, -1932($fp)
	lw $t1, -1936($fp)
	mul $t0, $t0, $t1
	sw $t0, -1940($fp)
	li $t0, 11990
	sw $t0, -1944($fp)
	li $t0, 6238
	sw $t0, -1948($fp)
	lw $t0, -1944($fp)
	lw $t1, -1948($fp)
	add $t0, $t0, $t1
	sw $t0, -1952($fp)
	li $t0, 53918
	sw $t0, -1956($fp)
	lw $t0, -1952($fp)
	lw $t1, -1956($fp)
	add $t0, $t0, $t1
	sw $t0, -1960($fp)
	addi $sp, $sp, -4
	lw $t0, -1908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1960($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1964($fp)
	addi $sp, $sp, 24
	lw $t1, -1964($fp)
	li $t2, 0
	bne $t1, $t2, label351
	j label352
label351:
	li $t0, 0
	sw $t0, -1968($fp)
	addi $t0, $fp, -112
	sw $t0, -1972($fp)
	lw $t0, -952($fp)
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
	li $t0, 49890
	sw $t0, -1992($fp)
	lw $t0, -1024($fp)
	sw $t0, -1996($fp)
	lw $t0, -1992($fp)
	lw $t1, -1996($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2000($fp)
	li $t0, 47285
	sw $t0, -2004($fp)
	lw $t0, -2000($fp)
	lw $t1, -2004($fp)
	add $t0, $t0, $t1
	sw $t0, -2008($fp)
	li $t0, 0
	sw $t0, -2012($fp)
	lw $t0, 16($fp)
	sw $t0, -2016($fp)
	li $t0, 5525
	sw $t0, -2020($fp)
	lw $t1, -2016($fp)
	lw $t2, -2020($fp)
	bne $t1, $t2, label358
	j label357
label358:
	li $t0, 14359
	sw $t0, -2024($fp)
	lw $t1, -2024($fp)
	li $t2, 0
	bne $t1, $t2, label356
	j label357
label356:
	li $t0, 1
	sw $t0, -2012($fp)
label357:
	li $t0, 29571
	sw $t0, -2028($fp)
	li $t0, 5695
	sw $t0, -2032($fp)
	lw $t0, -2028($fp)
	lw $t1, -2032($fp)
	mul $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t0, -832($fp)
	sw $t0, -2040($fp)
	lw $t0, -2036($fp)
	lw $t1, -2040($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2044($fp)
	lw $t0, -928($fp)
	sw $t0, -2048($fp)
	li $t0, 0
	sw $t0, -2052($fp)
	lw $t0, -892($fp)
	sw $t0, -2056($fp)
	lw $t1, -2056($fp)
	li $t2, 0
	bne $t1, $t2, label360
	j label359
label359:
	li $t0, 1
	sw $t0, -2052($fp)
label360:
	li $t0, 52503
	sw $t0, -2060($fp)
	lw $t0, -2052($fp)
	lw $t1, -2060($fp)
	sub $t0, $t0, $t1
	sw $t0, -2064($fp)
	li $t0, 0
	sw $t0, -2068($fp)
	li $t0, 65025
	sw $t0, -2072($fp)
	li $t0, 53059
	sw $t0, -2076($fp)
	lw $t0, -2072($fp)
	lw $t1, -2076($fp)
	add $t0, $t0, $t1
	sw $t0, -2080($fp)
	lw $t1, -2080($fp)
	li $t2, 0
	bne $t1, $t2, label361
	j label363
label363:
	lw $t0, -328($fp)
	sw $t0, -2084($fp)
	lw $t1, -2084($fp)
	li $t2, 0
	bne $t1, $t2, label361
	j label362
label361:
	li $t0, 1
	sw $t0, -2068($fp)
label362:
	addi $t0, $fp, -112
	sw $t0, -2088($fp)
	lw $t0, -976($fp)
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
	addi $sp, $sp, -4
	lw $t0, -2044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2104($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2108($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -2112($fp)
	lw $t0, -892($fp)
	sw $t0, -2116($fp)
	lw $t1, -2116($fp)
	li $t2, 0
	bne $t1, $t2, label365
	j label364
label364:
	li $t0, 1
	sw $t0, -2112($fp)
label365:
	li $t0, 0
	sw $t0, -2120($fp)
	li $t0, 0
	sw $t0, -2124($fp)
	li $t0, 50952
	sw $t0, -2128($fp)
	li $t0, 10095
	sw $t0, -2132($fp)
	lw $t1, -2128($fp)
	lw $t2, -2132($fp)
	bge $t1, $t2, label368
	j label369
label368:
	li $t0, 1
	sw $t0, -2124($fp)
label369:
	li $t0, 8276
	sw $t0, -2136($fp)
	lw $t1, -2124($fp)
	lw $t2, -2136($fp)
	ble $t1, $t2, label366
	j label367
label366:
	li $t0, 1
	sw $t0, -2120($fp)
label367:
	addi $sp, $sp, -4
	lw $t0, -2112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2120($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2140($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -1988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2140($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2144($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -2148($fp)
	lw $t0, 4($fp)
	sw $t0, -2152($fp)
	lw $t1, -2152($fp)
	li $t2, 0
	bne $t1, $t2, label371
	j label370
label370:
	li $t0, 1
	sw $t0, -2148($fp)
label371:
	lw $t1, -2144($fp)
	lw $t2, -2148($fp)
	bne $t1, $t2, label355
	j label354
label355:
	lw $t0, -892($fp)
	sw $t0, -2156($fp)
	lw $t1, -2156($fp)
	li $t2, 0
	bne $t1, $t2, label353
	j label354
label353:
	li $t0, 1
	sw $t0, -1968($fp)
label354:
	lw $ra, -4($fp)
	lw $v0, -1968($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label350
label352:
	lw $t0, -1832($fp)
	sw $t0, -2160($fp)
	lw $t0, -2160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1844($fp)
	sw $t0, -2164($fp)
	lw $t0, -2164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1856($fp)
	sw $t0, -2168($fp)
	lw $t0, -2168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2172($fp)
	li $t0, 0
	sw $t0, -2176($fp)
	lw $t0, -916($fp)
	sw $t0, -2180($fp)
	lw $t0, -1000($fp)
	sw $t0, -2184($fp)
	lw $t0, -2180($fp)
	lw $t1, -2184($fp)
	add $t0, $t0, $t1
	sw $t0, -2188($fp)
	lw $t0, -1832($fp)
	sw $t0, -2192($fp)
	lw $t1, -2188($fp)
	lw $t2, -2192($fp)
	beq $t1, $t2, label376
	j label377
label376:
	li $t0, 1
	sw $t0, -2176($fp)
label377:
	li $t0, 15058
	sw $t0, -2196($fp)
	li $t0, 1150
	sw $t0, -2200($fp)
	lw $t0, -2196($fp)
	lw $t1, -2200($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2204($fp)
	lw $t1, -2176($fp)
	lw $t2, -2204($fp)
	bne $t1, $t2, label375
	j label373
label375:
	lw $t0, 4($fp)
	sw $t0, -2208($fp)
	li $t0, 15841
	sw $t0, -2212($fp)
	lw $t0, -2208($fp)
	lw $t1, -2212($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2216($fp)
	li $t0, 0
	lw $t1, -2216($fp)
	sub $t0, $t0, $t1
	sw $t0, -2220($fp)
	lw $t1, -2220($fp)
	li $t2, 0
	bne $t1, $t2, label374
	j label373
label374:
	lw $t0, -580($fp)
	sw $t0, -2224($fp)
	lw $t1, -2224($fp)
	li $t2, 0
	bne $t1, $t2, label372
	j label373
label372:
	li $t0, 1
	sw $t0, -2172($fp)
label373:
	lw $ra, -4($fp)
	lw $v0, -2172($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label378:
	li $t0, 0
	sw $t0, -2228($fp)
	li $t0, 50103
	sw $t0, -2232($fp)
	lw $t1, -2232($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label381
label381:
	li $t0, 1
	sw $t0, -2228($fp)
label382:
	li $t0, 61261
	sw $t0, -2236($fp)
	lw $t0, -2228($fp)
	lw $t1, -2236($fp)
	mul $t0, $t0, $t1
	sw $t0, -2240($fp)
	addi $t0, $fp, -24
	sw $t0, -2244($fp)
	li $t0, 2
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
	lw $t0, -2240($fp)
	lw $t1, -2260($fp)
	mul $t0, $t0, $t1
	sw $t0, -2264($fp)
	li $t0, 39031
	sw $t0, -2268($fp)
	lw $t0, -2264($fp)
	lw $t1, -2268($fp)
	mul $t0, $t0, $t1
	sw $t0, -2272($fp)
	lw $t0, -340($fp)
	sw $t0, -2276($fp)
	lw $t0, -2272($fp)
	lw $t1, -2276($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2280($fp)
	lw $t1, -2280($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label380
label379:
	lw $t0, -268($fp)
	sw $t0, -2284($fp)
	li $t0, 0
	sw $t0, -2288($fp)
	li $t0, 47800
	sw $t0, -2292($fp)
	lw $t0, -820($fp)
	sw $t0, -2296($fp)
	lw $t1, -2292($fp)
	lw $t2, -2296($fp)
	bge $t1, $t2, label383
	j label384
label383:
	li $t0, 1
	sw $t0, -2288($fp)
label384:
	li $t0, 0
	sw $t0, -2300($fp)
	lw $t0, -424($fp)
	sw $t0, -2304($fp)
	lw $t0, -1216($fp)
	sw $t0, -2308($fp)
	lw $t0, -2304($fp)
	lw $t1, -2308($fp)
	add $t0, $t0, $t1
	sw $t0, -2312($fp)
	lw $t1, -2312($fp)
	li $t2, 0
	bne $t1, $t2, label387
	j label386
label387:
	li $t0, 6834
	sw $t0, -2316($fp)
	lw $t1, -2316($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label386
label385:
	li $t0, 1
	sw $t0, -2300($fp)
label386:
	li $t0, 1072
	sw $t0, -2320($fp)
	li $t0, 60995
	sw $t0, -2324($fp)
	lw $t0, -2320($fp)
	lw $t1, -2324($fp)
	add $t0, $t0, $t1
	sw $t0, -2328($fp)
	lw $t0, -412($fp)
	sw $t0, -2332($fp)
	lw $t0, -2328($fp)
	lw $t1, -2332($fp)
	sub $t0, $t0, $t1
	sw $t0, -2336($fp)
	li $t0, 23359
	sw $t0, -2340($fp)
	lw $t0, -2340($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -2344($fp)
	li $t0, 26627
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	sw $t0, -1856($fp)
	lw $t0, -1856($fp)
	sw $t0, -2352($fp)
	addi $sp, $sp, -4
	lw $t0, -2288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2352($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2356($fp)
	addi $sp, $sp, 24
	lw $t0, -2284($fp)
	lw $t1, -2356($fp)
	sub $t0, $t0, $t1
	sw $t0, -2360($fp)
	lw $ra, -4($fp)
	lw $v0, -2360($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label378
label380:
	lw $t0, -1012($fp)
	sw $t0, -2364($fp)
	li $t0, 0
	sw $t0, -2368($fp)
	li $t0, 0
	sw $t0, -2372($fp)
	addi $t0, $fp, -12
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
	lw $t1, -2392($fp)
	li $t2, 0
	bne $t1, $t2, label391
	j label390
label390:
	li $t0, 1
	sw $t0, -2372($fp)
label391:
	li $t0, 0
	lw $t1, -2372($fp)
	sub $t0, $t0, $t1
	sw $t0, -2396($fp)
	addi $t0, $fp, -76
	sw $t0, -2400($fp)
	li $t0, 2
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
	lw $t0, -892($fp)
	sw $t0, -2420($fp)
	lw $t0, -412($fp)
	sw $t0, -2424($fp)
	lw $t0, -2420($fp)
	lw $t1, -2424($fp)
	mul $t0, $t0, $t1
	sw $t0, -2428($fp)
	lw $t0, -2416($fp)
	lw $t1, -2428($fp)
	add $t0, $t0, $t1
	sw $t0, -2432($fp)
	lw $t1, -2396($fp)
	lw $t2, -2432($fp)
	blt $t1, $t2, label388
	j label389
label388:
	li $t0, 1
	sw $t0, -2368($fp)
label389:
	lw $ra, -4($fp)
	lw $v0, -2368($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label392:
	li $t0, 16165
	sw $t0, -2436($fp)
	li $t0, 0
	lw $t1, -2436($fp)
	sub $t0, $t0, $t1
	sw $t0, -2440($fp)
	lw $t1, -2440($fp)
	li $t2, 0
	bne $t1, $t2, label393
	j label395
label395:
	li $t0, 21599
	sw $t0, -2444($fp)
	li $t0, 20793
	sw $t0, -2448($fp)
	lw $t0, -2444($fp)
	lw $t1, -2448($fp)
	mul $t0, $t0, $t1
	sw $t0, -2452($fp)
	lw $t0, -340($fp)
	sw $t0, -2456($fp)
	lw $t0, -2452($fp)
	lw $t1, -2456($fp)
	sub $t0, $t0, $t1
	sw $t0, -2460($fp)
	addi $t0, $fp, -24
	sw $t0, -2464($fp)
	li $t0, 2
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
	lw $t1, -2460($fp)
	lw $t2, -2480($fp)
	bne $t1, $t2, label393
	j label394
label393:
label396:
	li $t0, 8316
	sw $t0, -2484($fp)
	lw $t1, -2484($fp)
	li $t2, 0
	bne $t1, $t2, label397
	j label399
label399:
	lw $t0, -904($fp)
	sw $t0, -2488($fp)
	lw $t0, 16($fp)
	sw $t0, -2492($fp)
	lw $t0, -2488($fp)
	lw $t1, -2492($fp)
	mul $t0, $t0, $t1
	sw $t0, -2496($fp)
	li $t0, 11408
	sw $t0, -2500($fp)
	lw $t0, -2496($fp)
	lw $t1, -2500($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2504($fp)
	lw $t1, -2504($fp)
	li $t2, 0
	bne $t1, $t2, label400
	j label398
label400:
	li $t0, 50660
	sw $t0, -2508($fp)
	lw $t1, -2508($fp)
	li $t2, 0
	bne $t1, $t2, label397
	j label398
label397:
	li $t0, 14011
	sw $t0, -2512($fp)
	li $t0, 0
	sw $t0, -2516($fp)
	lw $t0, -1216($fp)
	sw $t0, -2520($fp)
	lw $t1, -2520($fp)
	li $t2, 0
	bne $t1, $t2, label407
	j label406
label406:
	li $t0, 1
	sw $t0, -2516($fp)
label407:
	lw $t0, -328($fp)
	sw $t0, -2524($fp)
	li $t0, 14541
	sw $t0, -2528($fp)
	li $t0, 65052
	sw $t0, -2532($fp)
	lw $t0, -2528($fp)
	lw $t1, -2532($fp)
	add $t0, $t0, $t1
	sw $t0, -2536($fp)
	li $t0, 14524
	sw $t0, -2540($fp)
	lw $t0, -2536($fp)
	lw $t1, -2540($fp)
	add $t0, $t0, $t1
	sw $t0, -2544($fp)
	addi $sp, $sp, -4
	lw $t0, -2524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2544($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2548($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -2552($fp)
	li $t0, 0
	sw $t0, -2556($fp)
	lw $t0, -1216($fp)
	sw $t0, -2560($fp)
	lw $t1, -2560($fp)
	li $t2, 0
	bne $t1, $t2, label411
	j label410
label410:
	li $t0, 1
	sw $t0, -2556($fp)
label411:
	lw $t0, 4($fp)
	sw $t0, -2564($fp)
	lw $t1, -2556($fp)
	lw $t2, -2564($fp)
	ble $t1, $t2, label408
	j label409
label408:
	li $t0, 1
	sw $t0, -2552($fp)
label409:
	li $t0, 0
	sw $t0, -2568($fp)
	li $t0, 64219
	sw $t0, -2572($fp)
	lw $t1, -2572($fp)
	li $t2, 0
	bne $t1, $t2, label413
	j label412
label412:
	li $t0, 1
	sw $t0, -2568($fp)
label413:
	li $t0, 0
	lw $t1, -2568($fp)
	sub $t0, $t0, $t1
	sw $t0, -2576($fp)
	li $t0, 0
	sw $t0, -2580($fp)
	li $t0, 65019
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -2588($fp)
	li $t0, 16934
	sw $t0, -2592($fp)
	lw $t0, -928($fp)
	sw $t0, -2596($fp)
	lw $t0, -2592($fp)
	lw $t1, -2596($fp)
	mul $t0, $t0, $t1
	sw $t0, -2600($fp)
	lw $t0, -376($fp)
	sw $t0, -2604($fp)
	lw $t0, -2600($fp)
	lw $t1, -2604($fp)
	sub $t0, $t0, $t1
	sw $t0, -2608($fp)
	addi $sp, $sp, -4
	lw $t0, -2588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2608($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2612($fp)
	addi $sp, $sp, 12
	lw $t1, -2612($fp)
	li $t2, 0
	bne $t1, $t2, label414
	j label416
label416:
	li $t0, 63902
	sw $t0, -2616($fp)
	lw $t1, -2616($fp)
	li $t2, 0
	bne $t1, $t2, label414
	j label415
label414:
	li $t0, 1
	sw $t0, -2580($fp)
label415:
	addi $sp, $sp, -4
	lw $t0, -2516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2580($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2620($fp)
	addi $sp, $sp, 24
	lw $t0, -2512($fp)
	lw $t1, -2620($fp)
	add $t0, $t0, $t1
	sw $t0, -2624($fp)
	lw $t1, -2624($fp)
	li $t2, 0
	bne $t1, $t2, label405
	j label404
label405:
	li $t0, 0
	sw $t0, -2628($fp)
	lw $t0, -400($fp)
	sw $t0, -2632($fp)
	li $t0, 37376
	sw $t0, -2636($fp)
	lw $t0, -2632($fp)
	lw $t1, -2636($fp)
	mul $t0, $t0, $t1
	sw $t0, -2640($fp)
	lw $t0, -592($fp)
	sw $t0, -2644($fp)
	lw $t1, -2640($fp)
	lw $t2, -2644($fp)
	bge $t1, $t2, label417
	j label418
label417:
	li $t0, 1
	sw $t0, -2628($fp)
label418:
	li $t0, 60232
	sw $t0, -2648($fp)
	lw $t0, -580($fp)
	sw $t0, -2652($fp)
	lw $t0, -2648($fp)
	lw $t1, -2652($fp)
	add $t0, $t0, $t1
	sw $t0, -2656($fp)
	li $t0, 0
	sw $t0, -2660($fp)
	lw $t0, -304($fp)
	sw $t0, -2664($fp)
	lw $t1, -2664($fp)
	li $t2, 0
	bne $t1, $t2, label419
	j label421
label421:
	lw $t0, -268($fp)
	sw $t0, -2668($fp)
	lw $t1, -2668($fp)
	li $t2, 0
	bne $t1, $t2, label419
	j label420
label419:
	li $t0, 1
	sw $t0, -2660($fp)
label420:
	li $t0, 0
	sw $t0, -2672($fp)
	li $t0, 34273
	sw $t0, -2676($fp)
	lw $t1, -2676($fp)
	li $t2, 0
	bne $t1, $t2, label424
	j label423
label424:
	lw $t0, -1216($fp)
	sw $t0, -2680($fp)
	lw $t1, -2680($fp)
	li $t2, 0
	bne $t1, $t2, label422
	j label423
label422:
	li $t0, 1
	sw $t0, -2672($fp)
label423:
	li $t0, 60778
	sw $t0, -2684($fp)
	li $t0, 33605
	sw $t0, -2688($fp)
	lw $t0, -2684($fp)
	lw $t1, -2688($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2692($fp)
	li $t0, 14017
	sw $t0, -2696($fp)
	lw $t0, -2692($fp)
	lw $t1, -2696($fp)
	sub $t0, $t0, $t1
	sw $t0, -2700($fp)
	addi $sp, $sp, -4
	lw $t0, -2628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2700($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2704($fp)
	addi $sp, $sp, 24
	li $t0, 64644
	sw $t0, -2708($fp)
	lw $t0, -2708($fp)
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	sw $t0, -2712($fp)
	addi $sp, $sp, -4
	lw $t0, -2704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2712($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2716($fp)
	addi $sp, $sp, 12
	li $t0, 35345
	sw $t0, -2720($fp)
	lw $t1, -2716($fp)
	lw $t2, -2720($fp)
	beq $t1, $t2, label401
	j label404
label404:
	li $t0, 55692
	sw $t0, -2724($fp)
	li $t0, 44210
	sw $t0, -2728($fp)
	lw $t0, -2724($fp)
	lw $t1, -2728($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2732($fp)
	li $t0, 17609
	sw $t0, -2736($fp)
	lw $t0, -2732($fp)
	lw $t1, -2736($fp)
	mul $t0, $t0, $t1
	sw $t0, -2740($fp)
	lw $t1, -2740($fp)
	li $t2, 0
	bne $t1, $t2, label401
	j label402
label401:
	li $t0, 63142
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
	lw $t0, -1012($fp)
	sw $t0, -2768($fp)
	li $t0, 0
	lw $t1, -2768($fp)
	sub $t0, $t0, $t1
	sw $t0, -2772($fp)
	lw $t0, -2764($fp)
	lw $t1, -2772($fp)
	mul $t0, $t0, $t1
	sw $t0, -2776($fp)
	lw $t0, -2744($fp)
	lw $t1, -2776($fp)
	add $t0, $t0, $t1
	sw $t0, -2780($fp)
	lw $ra, -4($fp)
	lw $v0, -2780($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label403
label402:
	li $t0, 0
	sw $t0, -2784($fp)
	li $t0, 59379
	sw $t0, -2788($fp)
	li $t0, 30093
	sw $t0, -2792($fp)
	lw $t0, -2788($fp)
	lw $t1, -2792($fp)
	add $t0, $t0, $t1
	sw $t0, -2796($fp)
	li $t0, 0
	sw $t0, -2800($fp)
	li $t0, 15552
	sw $t0, -2804($fp)
	li $t0, 49791
	sw $t0, -2808($fp)
	lw $t0, -2804($fp)
	lw $t1, -2808($fp)
	mul $t0, $t0, $t1
	sw $t0, -2812($fp)
	lw $t1, -2812($fp)
	li $t2, 0
	bne $t1, $t2, label432
	j label431
label432:
	lw $t0, -808($fp)
	sw $t0, -2816($fp)
	lw $t1, -2816($fp)
	li $t2, 0
	bne $t1, $t2, label430
	j label431
label430:
	li $t0, 1
	sw $t0, -2800($fp)
label431:
	li $t0, 16069
	sw $t0, -2820($fp)
	li $t0, 51425
	sw $t0, -2824($fp)
	lw $t0, -2820($fp)
	lw $t1, -2824($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2828($fp)
	li $t0, 60696
	sw $t0, -2832($fp)
	lw $t0, -2828($fp)
	lw $t1, -2832($fp)
	add $t0, $t0, $t1
	sw $t0, -2836($fp)
	lw $t0, -820($fp)
	sw $t0, -2840($fp)
	li $t0, 0
	lw $t1, -2840($fp)
	sub $t0, $t0, $t1
	sw $t0, -2844($fp)
	lw $t0, -976($fp)
	sw $t0, -2848($fp)
	lw $t0, -820($fp)
	sw $t0, -2852($fp)
	lw $t0, -2852($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -2856($fp)
	li $t0, 0
	sw $t0, -2860($fp)
	lw $t0, -1228($fp)
	sw $t0, -2864($fp)
	lw $t1, -2864($fp)
	li $t2, 0
	bne $t1, $t2, label434
	j label433
label433:
	li $t0, 1
	sw $t0, -2860($fp)
label434:
	li $t0, 0
	lw $t1, -2860($fp)
	sub $t0, $t0, $t1
	sw $t0, -2868($fp)
	li $t0, 0
	sw $t0, -2872($fp)
	li $t0, 37414
	sw $t0, -2876($fp)
	lw $t1, -2876($fp)
	li $t2, 0
	bne $t1, $t2, label435
	j label438
label438:
	lw $t0, -1240($fp)
	sw $t0, -2880($fp)
	lw $t1, -2880($fp)
	li $t2, 0
	bne $t1, $t2, label435
	j label437
label437:
	li $t0, 43762
	sw $t0, -2884($fp)
	lw $t1, -2884($fp)
	li $t2, 0
	bne $t1, $t2, label435
	j label436
label435:
	li $t0, 1
	sw $t0, -2872($fp)
label436:
	lw $t0, -1216($fp)
	sw $t0, -2888($fp)
	lw $t0, 16($fp)
	sw $t0, -2892($fp)
	li $t0, 30945
	sw $t0, -2896($fp)
	lw $t0, -2892($fp)
	lw $t1, -2896($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2900($fp)
	addi $sp, $sp, -4
	lw $t0, -2856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2900($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2904($fp)
	addi $sp, $sp, 24
	lw $t0, 4($fp)
	sw $t0, -2908($fp)
	lw $t0, -2904($fp)
	lw $t1, -2908($fp)
	add $t0, $t0, $t1
	sw $t0, -2912($fp)
	li $t0, 0
	sw $t0, -2916($fp)
	li $t0, 29097
	sw $t0, -2920($fp)
	li $t0, 32353
	sw $t0, -2924($fp)
	lw $t0, -2920($fp)
	lw $t1, -2924($fp)
	sub $t0, $t0, $t1
	sw $t0, -2928($fp)
	lw $t0, -436($fp)
	sw $t0, -2932($fp)
	lw $t1, -2928($fp)
	lw $t2, -2932($fp)
	bge $t1, $t2, label439
	j label440
label439:
	li $t0, 1
	sw $t0, -2916($fp)
label440:
	addi $sp, $sp, -4
	lw $t0, -2836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2916($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2936($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -2936($fp)
	sub $t0, $t0, $t1
	sw $t0, -2940($fp)
	li $t0, 0
	sw $t0, -2944($fp)
	li $t0, 7912
	sw $t0, -2948($fp)
	li $t0, 0
	lw $t1, -2948($fp)
	sub $t0, $t0, $t1
	sw $t0, -2952($fp)
	lw $t1, -2952($fp)
	li $t2, 0
	bne $t1, $t2, label443
	j label442
label443:
	li $t0, 9856
	sw $t0, -2956($fp)
	lw $t1, -2956($fp)
	li $t2, 0
	bne $t1, $t2, label441
	j label442
label441:
	li $t0, 1
	sw $t0, -2944($fp)
label442:
	li $t0, 0
	sw $t0, -2960($fp)
	li $t0, 0
	sw $t0, -2964($fp)
	lw $t0, -916($fp)
	sw $t0, -2968($fp)
	li $t0, 8304
	sw $t0, -2972($fp)
	lw $t1, -2968($fp)
	lw $t2, -2972($fp)
	beq $t1, $t2, label446
	j label447
label446:
	li $t0, 1
	sw $t0, -2964($fp)
label447:
	lw $t0, -820($fp)
	sw $t0, -2976($fp)
	lw $t1, -2964($fp)
	lw $t2, -2976($fp)
	beq $t1, $t2, label444
	j label445
label444:
	li $t0, 1
	sw $t0, -2960($fp)
label445:
	addi $sp, $sp, -4
	lw $t0, -2796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2960($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2980($fp)
	addi $sp, $sp, 24
	lw $t1, -2980($fp)
	li $t2, 0
	bne $t1, $t2, label429
	j label428
label428:
	li $t0, 1
	sw $t0, -2784($fp)
label429:
	lw $t0, -976($fp)
	sw $t0, -2984($fp)
	li $t0, 0
	sw $t0, -2988($fp)
	addi $t0, $fp, -12
	sw $t0, -2992($fp)
	li $t0, 1
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
	lw $t1, -3008($fp)
	li $t2, 0
	bne $t1, $t2, label448
	j label450
label450:
	lw $t0, -1024($fp)
	sw $t0, -3012($fp)
	lw $t1, -3012($fp)
	li $t2, 0
	bne $t1, $t2, label448
	j label449
label448:
	li $t0, 1
	sw $t0, -2988($fp)
label449:
	addi $sp, $sp, -4
	lw $t0, -2984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2988($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3016($fp)
	addi $sp, $sp, 12
	li $t0, 29201
	sw $t0, -3020($fp)
	lw $t0, -3016($fp)
	lw $t1, -3020($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3024($fp)
	li $t0, 0
	lw $t1, -3024($fp)
	sub $t0, $t0, $t1
	sw $t0, -3028($fp)
	lw $t0, -2784($fp)
	lw $t1, -3028($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3032($fp)
	lw $t1, -3032($fp)
	li $t2, 0
	bne $t1, $t2, label425
	j label426
label425:
	li $t0, 0
	sw $t0, -3036($fp)
	li $t0, 0
	sw $t0, -3040($fp)
	li $t0, 41972
	sw $t0, -3044($fp)
	lw $t1, -3044($fp)
	li $t2, 0
	bne $t1, $t2, label456
	j label455
label456:
	lw $t0, -280($fp)
	sw $t0, -3048($fp)
	lw $t1, -3048($fp)
	li $t2, 0
	bne $t1, $t2, label453
	j label455
label455:
	lw $t0, -928($fp)
	sw $t0, -3052($fp)
	lw $t1, -3052($fp)
	li $t2, 0
	bne $t1, $t2, label453
	j label454
label453:
	li $t0, 1
	sw $t0, -3040($fp)
label454:
	li $t0, 0
	sw $t0, -3056($fp)
	li $t0, 44550
	sw $t0, -3060($fp)
	lw $t1, -3060($fp)
	li $t2, 0
	bne $t1, $t2, label458
	j label457
label457:
	li $t0, 1
	sw $t0, -3056($fp)
label458:
	addi $sp, $sp, -4
	lw $t0, -3040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3056($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3064($fp)
	addi $sp, $sp, 12
	lw $t0, -424($fp)
	sw $t0, -3068($fp)
	li $t0, 43218
	sw $t0, -3072($fp)
	lw $t0, -3068($fp)
	lw $t1, -3072($fp)
	add $t0, $t0, $t1
	sw $t0, -3076($fp)
	lw $t1, -3064($fp)
	lw $t2, -3076($fp)
	ble $t1, $t2, label451
	j label452
label451:
	li $t0, 1
	sw $t0, -3036($fp)
label452:
	lw $t0, -3036($fp)
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -3080($fp)
	j label427
label426:
	addi $t0, $fp, -128
	sw $t0, -3084($fp)
	li $t0, 0
	sw $t0, -3088($fp)
	li $t0, 13287
	sw $t0, -3092($fp)
	li $t0, 36669
	sw $t0, -3096($fp)
	lw $t1, -3092($fp)
	lw $t2, -3096($fp)
	beq $t1, $t2, label462
	j label464
label464:
	li $t0, 15058
	sw $t0, -3100($fp)
	lw $t1, -3100($fp)
	li $t2, 0
	bne $t1, $t2, label462
	j label463
label462:
	li $t0, 1
	sw $t0, -3088($fp)
label463:
	li $t0, 4
	lw $t1, -3088($fp)
	mul $t0, $t0, $t1
	sw $t0, -3104($fp)
	lw $t0, -3104($fp)
	lw $t1, -3084($fp)
	add $t0, $t0, $t1
	sw $t0, -3108($fp)
	lw $t0, -3108($fp)
	lw $t1, 0($t0)
	sw $t1, -3112($fp)
	lw $t1, -3112($fp)
	li $t2, 0
	bne $t1, $t2, label460
	j label459
label459:
	li $t0, 0
	sw $t0, -3116($fp)
	addi $t0, $fp, -76
	sw $t0, -3120($fp)
	li $t0, 0
	sw $t0, -3124($fp)
	lw $t0, -820($fp)
	sw $t0, -3128($fp)
	li $t0, 48632
	sw $t0, -3132($fp)
	lw $t1, -3128($fp)
	lw $t2, -3132($fp)
	bne $t1, $t2, label468
	j label469
label468:
	li $t0, 1
	sw $t0, -3124($fp)
label469:
	li $t0, 4
	lw $t1, -3124($fp)
	mul $t0, $t0, $t1
	sw $t0, -3136($fp)
	lw $t0, -3136($fp)
	lw $t1, -3120($fp)
	add $t0, $t0, $t1
	sw $t0, -3140($fp)
	lw $t0, -3140($fp)
	lw $t1, 0($t0)
	sw $t1, -3144($fp)
	li $t0, 26825
	sw $t0, -3148($fp)
	lw $t0, -820($fp)
	sw $t0, -3152($fp)
	lw $t0, -3148($fp)
	lw $t1, -3152($fp)
	mul $t0, $t0, $t1
	sw $t0, -3156($fp)
	lw $t0, -892($fp)
	sw $t0, -3160($fp)
	lw $t0, -3156($fp)
	lw $t1, -3160($fp)
	add $t0, $t0, $t1
	sw $t0, -3164($fp)
	lw $t1, -3144($fp)
	lw $t2, -3164($fp)
	beq $t1, $t2, label467
	j label466
label467:
	li $t0, 59268
	sw $t0, -3168($fp)
	li $t0, 705
	sw $t0, -3172($fp)
	lw $t0, -3168($fp)
	lw $t1, -3172($fp)
	mul $t0, $t0, $t1
	sw $t0, -3176($fp)
	li $t0, 1
	sw $t0, -3180($fp)
	lw $t0, -3176($fp)
	lw $t1, -3180($fp)
	mul $t0, $t0, $t1
	sw $t0, -3184($fp)
	li $t0, 51016
	sw $t0, -3188($fp)
	li $t0, 0
	lw $t1, -3188($fp)
	sub $t0, $t0, $t1
	sw $t0, -3192($fp)
	lw $t1, -3184($fp)
	lw $t2, -3192($fp)
	bne $t1, $t2, label465
	j label466
label465:
	li $t0, 1
	sw $t0, -3116($fp)
label466:
	j label461
label460:
	li $t0, 0
	sw $t0, -3196($fp)
	addi $t0, $fp, -112
	sw $t0, -3200($fp)
	lw $t0, -340($fp)
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
	lw $t1, -3216($fp)
	li $t2, 0
	bne $t1, $t2, label474
	j label473
label473:
	li $t0, 1
	sw $t0, -3196($fp)
label474:
	li $t0, 0
	sw $t0, -3220($fp)
	lw $t0, -940($fp)
	sw $t0, -3224($fp)
	lw $t0, -604($fp)
	sw $t0, -3228($fp)
	lw $t1, -3224($fp)
	lw $t2, -3228($fp)
	bne $t1, $t2, label475
	j label476
label475:
	li $t0, 1
	sw $t0, -3220($fp)
label476:
	li $t0, 0
	sw $t0, -3232($fp)
	li $t0, 3972
	sw $t0, -3236($fp)
	li $t0, 45832
	sw $t0, -3240($fp)
	lw $t0, -3236($fp)
	lw $t1, -3240($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3244($fp)
	li $t0, 19600
	sw $t0, -3248($fp)
	lw $t1, -3244($fp)
	lw $t2, -3248($fp)
	blt $t1, $t2, label477
	j label478
label477:
	li $t0, 1
	sw $t0, -3232($fp)
label478:
	li $t0, 0
	sw $t0, -3252($fp)
	li $t0, 29763
	sw $t0, -3256($fp)
	li $t0, 33710
	sw $t0, -3260($fp)
	lw $t1, -3256($fp)
	lw $t2, -3260($fp)
	beq $t1, $t2, label479
	j label481
label481:
	lw $t0, -928($fp)
	sw $t0, -3264($fp)
	lw $t1, -3264($fp)
	li $t2, 0
	bne $t1, $t2, label479
	j label480
label479:
	li $t0, 1
	sw $t0, -3252($fp)
label480:
	li $t0, 0
	sw $t0, -3268($fp)
	li $t0, 61832
	sw $t0, -3272($fp)
	li $t0, 25746
	sw $t0, -3276($fp)
	lw $t0, -3272($fp)
	lw $t1, -3276($fp)
	mul $t0, $t0, $t1
	sw $t0, -3280($fp)
	lw $t1, -3280($fp)
	li $t2, 0
	bne $t1, $t2, label484
	j label483
label484:
	lw $t0, -292($fp)
	sw $t0, -3284($fp)
	lw $t1, -3284($fp)
	li $t2, 0
	bne $t1, $t2, label482
	j label483
label482:
	li $t0, 1
	sw $t0, -3268($fp)
label483:
	li $t0, 0
	sw $t0, -3288($fp)
	li $t0, 0
	sw $t0, -3292($fp)
	li $t0, 58928
	sw $t0, -3296($fp)
	li $t0, 64354
	sw $t0, -3300($fp)
	lw $t1, -3296($fp)
	lw $t2, -3300($fp)
	bge $t1, $t2, label487
	j label488
label487:
	li $t0, 1
	sw $t0, -3292($fp)
label488:
	lw $t0, -280($fp)
	sw $t0, -3304($fp)
	lw $t1, -3292($fp)
	lw $t2, -3304($fp)
	ble $t1, $t2, label485
	j label486
label485:
	li $t0, 1
	sw $t0, -3288($fp)
label486:
	lw $t0, -388($fp)
	sw $t0, -3308($fp)
	lw $t0, -3308($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -3312($fp)
	li $t0, 0
	sw $t0, -3316($fp)
	lw $t0, -976($fp)
	sw $t0, -3320($fp)
	lw $t1, -3320($fp)
	li $t2, 0
	bne $t1, $t2, label491
	j label490
label491:
	li $t0, 32735
	sw $t0, -3324($fp)
	lw $t1, -3324($fp)
	li $t2, 0
	bne $t1, $t2, label489
	j label490
label489:
	li $t0, 1
	sw $t0, -3316($fp)
label490:
	lw $t0, -916($fp)
	sw $t0, -3328($fp)
	lw $t0, -1216($fp)
	sw $t0, -3332($fp)
	lw $t0, -3328($fp)
	lw $t1, -3332($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3336($fp)
	li $t0, 0
	sw $t0, -3340($fp)
	li $t0, 54498
	sw $t0, -3344($fp)
	lw $t0, -952($fp)
	sw $t0, -3348($fp)
	lw $t1, -3344($fp)
	lw $t2, -3348($fp)
	beq $t1, $t2, label492
	j label494
label494:
	lw $t0, -820($fp)
	sw $t0, -3352($fp)
	lw $t1, -3352($fp)
	li $t2, 0
	bne $t1, $t2, label492
	j label493
label492:
	li $t0, 1
	sw $t0, -3340($fp)
label493:
	addi $sp, $sp, -4
	lw $t0, -3288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3340($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3356($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -3356($fp)
	sub $t0, $t0, $t1
	sw $t0, -3360($fp)
	addi $sp, $sp, -4
	lw $t0, -3220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3360($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3364($fp)
	addi $sp, $sp, 24
	lw $t0, -3196($fp)
	lw $t1, -3364($fp)
	mul $t0, $t0, $t1
	sw $t0, -3368($fp)
	li $t0, 0
	sw $t0, -3372($fp)
	li $t0, 64668
	sw $t0, -3376($fp)
	li $t0, 0
	lw $t1, -3376($fp)
	sub $t0, $t0, $t1
	sw $t0, -3380($fp)
	lw $t1, -3380($fp)
	li $t2, 0
	bne $t1, $t2, label496
	j label495
label495:
	li $t0, 1
	sw $t0, -3372($fp)
label496:
	lw $t0, 4($fp)
	sw $t0, -3384($fp)
	li $t0, 61384
	sw $t0, -3388($fp)
	lw $t0, -3384($fp)
	lw $t1, -3388($fp)
	mul $t0, $t0, $t1
	sw $t0, -3392($fp)
	lw $t0, -3372($fp)
	lw $t1, -3392($fp)
	sub $t0, $t0, $t1
	sw $t0, -3396($fp)
	lw $t1, -3368($fp)
	lw $t2, -3396($fp)
	ble $t1, $t2, label470
	j label471
label470:
	lw $t0, -448($fp)
	sw $t0, -3400($fp)
	li $t0, 0
	lw $t1, -3400($fp)
	sub $t0, $t0, $t1
	sw $t0, -3404($fp)
	lw $ra, -4($fp)
	lw $v0, -3404($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label472
label471:
	li $t0, 0
	sw $t0, -3408($fp)
	addi $t0, $fp, -76
	sw $t0, -3412($fp)
	li $t0, 6
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
	li $t0, 0
	sw $t0, -3432($fp)
	lw $t0, 16($fp)
	sw $t0, -3436($fp)
	lw $t0, -964($fp)
	sw $t0, -3440($fp)
	lw $t1, -3436($fp)
	lw $t2, -3440($fp)
	ble $t1, $t2, label499
	j label500
label499:
	li $t0, 1
	sw $t0, -3432($fp)
label500:
	li $t0, 0
	sw $t0, -3444($fp)
	lw $t0, -892($fp)
	sw $t0, -3448($fp)
	lw $t1, -3448($fp)
	li $t2, 0
	bne $t1, $t2, label501
	j label504
label504:
	li $t0, 58511
	sw $t0, -3452($fp)
	lw $t1, -3452($fp)
	li $t2, 0
	bne $t1, $t2, label501
	j label503
label503:
	li $t0, 25941
	sw $t0, -3456($fp)
	lw $t1, -3456($fp)
	li $t2, 0
	bne $t1, $t2, label501
	j label502
label501:
	li $t0, 1
	sw $t0, -3444($fp)
label502:
	addi $t0, $fp, -84
	sw $t0, -3460($fp)
	lw $t0, -268($fp)
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
	li $t0, 3855
	sw $t0, -3480($fp)
	addi $sp, $sp, -4
	lw $t0, -3428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3480($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3484($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -128
	sw $t0, -3488($fp)
	li $t0, 0
	sw $t0, -3492($fp)
	lw $t0, 4($fp)
	sw $t0, -3496($fp)
	lw $t0, -292($fp)
	sw $t0, -3500($fp)
	lw $t1, -3496($fp)
	lw $t2, -3500($fp)
	bne $t1, $t2, label505
	j label506
label505:
	li $t0, 1
	sw $t0, -3492($fp)
label506:
	li $t0, 4
	lw $t1, -3492($fp)
	mul $t0, $t0, $t1
	sw $t0, -3504($fp)
	lw $t0, -3504($fp)
	lw $t1, -3488($fp)
	add $t0, $t0, $t1
	sw $t0, -3508($fp)
	lw $t0, -3508($fp)
	lw $t1, 0($t0)
	sw $t1, -3512($fp)
	lw $t1, -3484($fp)
	lw $t2, -3512($fp)
	bne $t1, $t2, label497
	j label498
label497:
	li $t0, 1
	sw $t0, -3408($fp)
label498:
label472:
label461:
label427:
label403:
	j label396
label398:
	j label392
label394:
	addi $t0, $fp, -12
	sw $t0, -3516($fp)
	li $t0, 0
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
	addi $t0, $fp, -12
	sw $t0, -3536($fp)
	li $t0, 1
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
	li $t0, 0
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
	li $t0, 1
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
	li $t0, 2
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
	lw $t0, -256($fp)
	sw $t0, -3616($fp)
	lw $t0, -3616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -268($fp)
	sw $t0, -3620($fp)
	lw $t0, -3620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -280($fp)
	sw $t0, -3624($fp)
	lw $t0, -3624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -292($fp)
	sw $t0, -3628($fp)
	lw $t0, -3628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -304($fp)
	sw $t0, -3632($fp)
	lw $t0, -3632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -316($fp)
	sw $t0, -3636($fp)
	lw $t0, -3636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -328($fp)
	sw $t0, -3640($fp)
	lw $t0, -3640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -340($fp)
	sw $t0, -3644($fp)
	lw $t0, -3644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -352($fp)
	sw $t0, -3648($fp)
	lw $t0, -3648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -364($fp)
	sw $t0, -3652($fp)
	lw $t0, -3652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -376($fp)
	sw $t0, -3656($fp)
	lw $t0, -3656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -388($fp)
	sw $t0, -3660($fp)
	lw $t0, -3660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -400($fp)
	sw $t0, -3664($fp)
	lw $t0, -3664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -412($fp)
	sw $t0, -3668($fp)
	lw $t0, -3668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -424($fp)
	sw $t0, -3672($fp)
	lw $t0, -3672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -436($fp)
	sw $t0, -3676($fp)
	lw $t0, -3676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -448($fp)
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	lw $t0, -3760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3764($fp)
	li $t0, 4
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
	lw $t0, -580($fp)
	sw $t0, -3784($fp)
	lw $t0, -3784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -592($fp)
	sw $t0, -3788($fp)
	lw $t0, -3788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -604($fp)
	sw $t0, -3792($fp)
	lw $t0, -3792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -3796($fp)
	li $t0, 0
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
	addi $t0, $fp, -76
	sw $t0, -3816($fp)
	li $t0, 1
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
	addi $t0, $fp, -76
	sw $t0, -3836($fp)
	li $t0, 2
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
	addi $t0, $fp, -76
	sw $t0, -3856($fp)
	li $t0, 3
	sw $t0, -3860($fp)
	li $t0, 4
	lw $t1, -3860($fp)
	mul $t0, $t0, $t1
	sw $t0, -3864($fp)
	lw $t0, -3864($fp)
	lw $t1, -3856($fp)
	add $t0, $t0, $t1
	sw $t0, -3868($fp)
	lw $t0, -3868($fp)
	lw $t1, 0($t0)
	sw $t1, -3872($fp)
	lw $t0, -3872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -3876($fp)
	li $t0, 4
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
	lw $t0, -3892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -3896($fp)
	li $t0, 5
	sw $t0, -3900($fp)
	li $t0, 4
	lw $t1, -3900($fp)
	mul $t0, $t0, $t1
	sw $t0, -3904($fp)
	lw $t0, -3904($fp)
	lw $t1, -3896($fp)
	add $t0, $t0, $t1
	sw $t0, -3908($fp)
	lw $t0, -3908($fp)
	lw $t1, 0($t0)
	sw $t1, -3912($fp)
	lw $t0, -3912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -3916($fp)
	li $t0, 6
	sw $t0, -3920($fp)
	li $t0, 4
	lw $t1, -3920($fp)
	mul $t0, $t0, $t1
	sw $t0, -3924($fp)
	lw $t0, -3924($fp)
	lw $t1, -3916($fp)
	add $t0, $t0, $t1
	sw $t0, -3928($fp)
	lw $t0, -3928($fp)
	lw $t1, 0($t0)
	sw $t1, -3932($fp)
	lw $t0, -3932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -3936($fp)
	li $t0, 7
	sw $t0, -3940($fp)
	li $t0, 4
	lw $t1, -3940($fp)
	mul $t0, $t0, $t1
	sw $t0, -3944($fp)
	lw $t0, -3944($fp)
	lw $t1, -3936($fp)
	add $t0, $t0, $t1
	sw $t0, -3948($fp)
	lw $t0, -3948($fp)
	lw $t1, 0($t0)
	sw $t1, -3952($fp)
	lw $t0, -3952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -808($fp)
	sw $t0, -3956($fp)
	lw $t0, -3956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -820($fp)
	sw $t0, -3960($fp)
	lw $t0, -3960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -832($fp)
	sw $t0, -3964($fp)
	lw $t0, -3964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -3968($fp)
	li $t0, 0
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
	lw $t0, -3984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -3988($fp)
	li $t0, 1
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
	lw $t0, -892($fp)
	sw $t0, -4008($fp)
	lw $t0, -4008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -904($fp)
	sw $t0, -4012($fp)
	lw $t0, -4012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -916($fp)
	sw $t0, -4016($fp)
	lw $t0, -4016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -928($fp)
	sw $t0, -4020($fp)
	lw $t0, -4020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -940($fp)
	sw $t0, -4024($fp)
	lw $t0, -4024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -952($fp)
	sw $t0, -4028($fp)
	lw $t0, -4028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -964($fp)
	sw $t0, -4032($fp)
	lw $t0, -4032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -976($fp)
	sw $t0, -4036($fp)
	lw $t0, -4036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -988($fp)
	sw $t0, -4040($fp)
	lw $t0, -4040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1000($fp)
	sw $t0, -4044($fp)
	lw $t0, -4044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1012($fp)
	sw $t0, -4048($fp)
	lw $t0, -4048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1024($fp)
	sw $t0, -4052($fp)
	lw $t0, -4052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -4056($fp)
	li $t0, 0
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
	addi $t0, $fp, -112
	sw $t0, -4076($fp)
	li $t0, 1
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
	addi $t0, $fp, -112
	sw $t0, -4096($fp)
	li $t0, 2
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
	addi $t0, $fp, -112
	sw $t0, -4116($fp)
	li $t0, 3
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
	addi $t0, $fp, -112
	sw $t0, -4136($fp)
	li $t0, 4
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
	addi $t0, $fp, -112
	sw $t0, -4156($fp)
	li $t0, 5
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
	addi $t0, $fp, -112
	sw $t0, -4176($fp)
	li $t0, 6
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
	lw $t0, -1204($fp)
	sw $t0, -4196($fp)
	lw $t0, -4196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1216($fp)
	sw $t0, -4200($fp)
	lw $t0, -4200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1228($fp)
	sw $t0, -4204($fp)
	lw $t0, -4204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1240($fp)
	sw $t0, -4208($fp)
	lw $t0, -4208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -4212($fp)
	li $t0, 0
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
	addi $t0, $fp, -128
	sw $t0, -4232($fp)
	li $t0, 1
	sw $t0, -4236($fp)
	li $t0, 4
	lw $t1, -4236($fp)
	mul $t0, $t0, $t1
	sw $t0, -4240($fp)
	lw $t0, -4240($fp)
	lw $t1, -4232($fp)
	add $t0, $t0, $t1
	sw $t0, -4244($fp)
	lw $t0, -4244($fp)
	lw $t1, 0($t0)
	sw $t1, -4248($fp)
	lw $t0, -4248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -4252($fp)
	li $t0, 2
	sw $t0, -4256($fp)
	li $t0, 4
	lw $t1, -4256($fp)
	mul $t0, $t0, $t1
	sw $t0, -4260($fp)
	lw $t0, -4260($fp)
	lw $t1, -4252($fp)
	add $t0, $t0, $t1
	sw $t0, -4264($fp)
	lw $t0, -4264($fp)
	lw $t1, 0($t0)
	sw $t1, -4268($fp)
	lw $t0, -4268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -4272($fp)
	li $t0, 3
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
	lw $t0, -4288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4292($fp)
	li $t0, 0
	sw $t0, -4296($fp)
	li $t0, 167
	sw $t0, -4300($fp)
	li $t0, 27094
	sw $t0, -4304($fp)
	lw $t0, -4300($fp)
	lw $t1, -4304($fp)
	add $t0, $t0, $t1
	sw $t0, -4308($fp)
	lw $t1, -4308($fp)
	li $t2, 0
	bne $t1, $t2, label509
	j label511
label511:
	lw $t0, -256($fp)
	sw $t0, -4312($fp)
	lw $t1, -4312($fp)
	li $t2, 0
	bne $t1, $t2, label509
	j label510
label509:
	li $t0, 1
	sw $t0, -4296($fp)
label510:
	lw $t0, -256($fp)
	sw $t0, -4316($fp)
	lw $t0, -4316($fp)
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -4320($fp)
	li $t0, 41272
	sw $t0, -4324($fp)
	li $t0, 41614
	sw $t0, -4328($fp)
	lw $t0, -4324($fp)
	lw $t1, -4328($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4332($fp)
	li $t0, 29266
	sw $t0, -4336($fp)
	lw $t0, -4332($fp)
	lw $t1, -4336($fp)
	add $t0, $t0, $t1
	sw $t0, -4340($fp)
	lw $t0, -1216($fp)
	sw $t0, -4344($fp)
	li $t0, 47882
	sw $t0, -4348($fp)
	lw $t0, -4344($fp)
	lw $t1, -4348($fp)
	mul $t0, $t0, $t1
	sw $t0, -4352($fp)
	li $t0, 28560
	sw $t0, -4356($fp)
	lw $t0, -4352($fp)
	lw $t1, -4356($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4360($fp)
	addi $t0, $fp, -76
	sw $t0, -4364($fp)
	li $t0, 7
	sw $t0, -4368($fp)
	li $t0, 4
	lw $t1, -4368($fp)
	mul $t0, $t0, $t1
	sw $t0, -4372($fp)
	lw $t0, -4372($fp)
	lw $t1, -4364($fp)
	add $t0, $t0, $t1
	sw $t0, -4376($fp)
	lw $t0, -4376($fp)
	lw $t1, 0($t0)
	sw $t1, -4380($fp)
	addi $sp, $sp, -4
	lw $t0, -4296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4380($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4384($fp)
	addi $sp, $sp, 24
	lw $t1, -4384($fp)
	li $t2, 0
	bne $t1, $t2, label508
	j label507
label507:
	li $t0, 1
	sw $t0, -4292($fp)
label508:
	li $t0, 0
	sw $t0, -4388($fp)
	li $t0, 0
	sw $t0, -4392($fp)
	li $t0, 32824
	sw $t0, -4396($fp)
	lw $t0, -280($fp)
	sw $t0, -4400($fp)
	lw $t1, -4396($fp)
	lw $t2, -4400($fp)
	blt $t1, $t2, label514
	j label515
label514:
	li $t0, 1
	sw $t0, -4392($fp)
label515:
	lw $t0, -1216($fp)
	sw $t0, -4404($fp)
	lw $t1, -4392($fp)
	lw $t2, -4404($fp)
	bge $t1, $t2, label512
	j label513
label512:
	li $t0, 1
	sw $t0, -4388($fp)
label513:
	lw $t0, -1000($fp)
	sw $t0, -4408($fp)
	li $t0, 0
	sw $t0, -4412($fp)
	li $t0, 32177
	sw $t0, -4416($fp)
	lw $t0, -928($fp)
	sw $t0, -4420($fp)
	lw $t0, -4416($fp)
	lw $t1, -4420($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4424($fp)
	li $t0, 43314
	sw $t0, -4428($fp)
	lw $t1, -4424($fp)
	lw $t2, -4428($fp)
	blt $t1, $t2, label516
	j label517
label516:
	li $t0, 1
	sw $t0, -4412($fp)
label517:
	li $t0, 55142
	sw $t0, -4432($fp)
	lw $t0, -4432($fp)
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -4436($fp)
	addi $sp, $sp, -4
	lw $t0, -4292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4436($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4440($fp)
	addi $sp, $sp, 24
	li $t0, 18228
	sw $t0, -4444($fp)
	lw $t0, -4440($fp)
	lw $t1, -4444($fp)
	mul $t0, $t0, $t1
	sw $t0, -4448($fp)
	lw $ra, -4($fp)
	lw $v0, -4448($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -676
	li $t0, 32902
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	li $t0, 20487
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	li $t0, 17046
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
	li $t0, 29199
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
	li $t0, 46233
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
	li $t0, 46809
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
	li $t0, 62909
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
	li $t0, 50205
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	li $t0, 27105
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	li $t0, 16973
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	li $t0, 49337
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	li $t0, 0
	sw $t0, -220($fp)
	addi $t0, $fp, -24
	sw $t0, -224($fp)
	lw $t0, -176($fp)
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
	li $t0, 22953
	sw $t0, -244($fp)
	lw $t1, -240($fp)
	lw $t2, -244($fp)
	bgt $t1, $t2, label522
	j label523
label522:
	li $t0, 1
	sw $t0, -220($fp)
label523:
	lw $t0, -188($fp)
	sw $t0, -248($fp)
	lw $t0, -32($fp)
	sw $t0, -252($fp)
	lw $t0, -248($fp)
	lw $t1, -252($fp)
	sub $t0, $t0, $t1
	sw $t0, -256($fp)
	li $t0, 20829
	sw $t0, -260($fp)
	lw $t0, -256($fp)
	lw $t1, -260($fp)
	add $t0, $t0, $t1
	sw $t0, -264($fp)
	lw $t1, -220($fp)
	lw $t2, -264($fp)
	bge $t1, $t2, label521
	j label519
label521:
	li $t0, 42312
	sw $t0, -268($fp)
	lw $t0, -188($fp)
	sw $t0, -272($fp)
	lw $t0, -268($fp)
	lw $t1, -272($fp)
	mul $t0, $t0, $t1
	sw $t0, -276($fp)
	li $t0, 0
	sw $t0, -280($fp)
	li $t0, 38500
	sw $t0, -284($fp)
	lw $t1, -284($fp)
	li $t2, 0
	bne $t1, $t2, label525
	j label524
label524:
	li $t0, 1
	sw $t0, -280($fp)
label525:
	li $t0, 0
	sw $t0, -288($fp)
	lw $t0, -188($fp)
	sw $t0, -292($fp)
	lw $t1, -292($fp)
	li $t2, 0
	bne $t1, $t2, label527
	j label526
label526:
	li $t0, 1
	sw $t0, -288($fp)
label527:
	li $t0, 0
	sw $t0, -296($fp)
	addi $t0, $fp, -24
	sw $t0, -300($fp)
	li $t0, 4
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
	li $t0, 43654
	sw $t0, -320($fp)
	lw $t1, -316($fp)
	lw $t2, -320($fp)
	beq $t1, $t2, label528
	j label529
label528:
	li $t0, 1
	sw $t0, -296($fp)
label529:
	lw $t0, -200($fp)
	sw $t0, -324($fp)
	li $t0, 0
	lw $t1, -324($fp)
	sub $t0, $t0, $t1
	sw $t0, -328($fp)
	li $t0, 0
	lw $t1, -328($fp)
	sub $t0, $t0, $t1
	sw $t0, -332($fp)
	li $t0, 0
	sw $t0, -336($fp)
	lw $t0, -200($fp)
	sw $t0, -340($fp)
	lw $t1, -340($fp)
	li $t2, 0
	bne $t1, $t2, label532
	j label531
label532:
	lw $t0, -212($fp)
	sw $t0, -344($fp)
	lw $t1, -344($fp)
	li $t2, 0
	bne $t1, $t2, label530
	j label531
label530:
	li $t0, 1
	sw $t0, -336($fp)
label531:
	addi $sp, $sp, -4
	lw $t0, -280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -336($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -348($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -348($fp)
	sub $t0, $t0, $t1
	sw $t0, -352($fp)
	addi $sp, $sp, -4
	lw $t0, -352($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -356($fp)
	addi $sp, $sp, 8
	lw $t0, -276($fp)
	lw $t1, -356($fp)
	sub $t0, $t0, $t1
	sw $t0, -360($fp)
	lw $t1, -360($fp)
	li $t2, 0
	bne $t1, $t2, label518
	j label519
label518:
	li $t0, 0
	sw $t0, -364($fp)
	li $t0, 0
	sw $t0, -368($fp)
	lw $t0, -176($fp)
	sw $t0, -372($fp)
	li $t0, 0
	lw $t1, -372($fp)
	sub $t0, $t0, $t1
	sw $t0, -376($fp)
	lw $t1, -376($fp)
	li $t2, 0
	bne $t1, $t2, label536
	j label535
label535:
	li $t0, 1
	sw $t0, -368($fp)
label536:
	li $t0, 0
	lw $t1, -368($fp)
	sub $t0, $t0, $t1
	sw $t0, -380($fp)
	li $t0, 0
	lw $t1, -380($fp)
	sub $t0, $t0, $t1
	sw $t0, -384($fp)
	lw $t1, -384($fp)
	li $t2, 0
	bne $t1, $t2, label534
	j label533
label533:
	li $t0, 1
	sw $t0, -364($fp)
label534:
	j label520
label519:
	lw $t0, -32($fp)
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -400($fp)
	lw $ra, -4($fp)
	lw $v0, -400($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label520:
	lw $t0, -188($fp)
	sw $t0, -404($fp)
	li $t0, 40634
	sw $t0, -408($fp)
	lw $t0, -404($fp)
	lw $t1, -408($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -412($fp)
	li $t0, 21432
	sw $t0, -416($fp)
	li $t0, 5788
	sw $t0, -420($fp)
	lw $t0, -416($fp)
	lw $t1, -420($fp)
	mul $t0, $t0, $t1
	sw $t0, -424($fp)
	lw $t0, -412($fp)
	lw $t1, -424($fp)
	add $t0, $t0, $t1
	sw $t0, -428($fp)
	lw $t0, -32($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -44($fp)
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -440($fp)
	li $t0, 0
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
	li $t0, 1
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
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -500($fp)
	li $t0, 3
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
	li $t0, 4
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
	lw $t0, -176($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -188($fp)
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -200($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -212($fp)
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -556($fp)
	addi $t0, $fp, -24
	sw $t0, -560($fp)
	li $t0, 0
	sw $t0, -564($fp)
	li $t0, 20562
	sw $t0, -568($fp)
	li $t0, 35880
	sw $t0, -572($fp)
	lw $t0, -568($fp)
	lw $t1, -572($fp)
	add $t0, $t0, $t1
	sw $t0, -576($fp)
	li $t0, 53670
	sw $t0, -580($fp)
	lw $t1, -576($fp)
	lw $t2, -580($fp)
	bne $t1, $t2, label539
	j label540
label539:
	li $t0, 1
	sw $t0, -564($fp)
label540:
	li $t0, 4
	lw $t1, -564($fp)
	mul $t0, $t0, $t1
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	lw $t1, -560($fp)
	add $t0, $t0, $t1
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	lw $t1, 0($t0)
	sw $t1, -592($fp)
	li $t0, 0
	sw $t0, -596($fp)
	li $t0, 0
	sw $t0, -600($fp)
	li $t0, 31081
	sw $t0, -604($fp)
	lw $t1, -604($fp)
	li $t2, 0
	bne $t1, $t2, label543
	j label544
label543:
	li $t0, 1
	sw $t0, -600($fp)
label544:
	li $t0, 56843
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -612($fp)
	li $t0, 0
	sw $t0, -616($fp)
	li $t0, 0
	sw $t0, -620($fp)
	li $t0, 12853
	sw $t0, -624($fp)
	lw $t0, 4($fp)
	sw $t0, -628($fp)
	lw $t1, -624($fp)
	lw $t2, -628($fp)
	beq $t1, $t2, label547
	j label548
label547:
	li $t0, 1
	sw $t0, -620($fp)
label548:
	li $t0, 11784
	sw $t0, -632($fp)
	lw $t1, -620($fp)
	lw $t2, -632($fp)
	bne $t1, $t2, label545
	j label546
label545:
	li $t0, 1
	sw $t0, -616($fp)
label546:
	li $t0, 0
	sw $t0, -636($fp)
	lw $t0, -200($fp)
	sw $t0, -640($fp)
	lw $t1, -640($fp)
	li $t2, 0
	bne $t1, $t2, label550
	j label549
label549:
	li $t0, 1
	sw $t0, -636($fp)
label550:
	li $t0, 29748
	sw $t0, -644($fp)
	lw $t0, -636($fp)
	lw $t1, -644($fp)
	mul $t0, $t0, $t1
	sw $t0, -648($fp)
	li $t0, 0
	sw $t0, -652($fp)
	li $t0, 49123
	sw $t0, -656($fp)
	li $t0, 11616
	sw $t0, -660($fp)
	lw $t1, -656($fp)
	lw $t2, -660($fp)
	blt $t1, $t2, label551
	j label553
label553:
	lw $t0, -188($fp)
	sw $t0, -664($fp)
	lw $t1, -664($fp)
	li $t2, 0
	bne $t1, $t2, label551
	j label552
label551:
	li $t0, 1
	sw $t0, -652($fp)
label552:
	addi $sp, $sp, -4
	lw $t0, -600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -652($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -668($fp)
	addi $sp, $sp, 24
	lw $t0, -44($fp)
	sw $t0, -672($fp)
	lw $t0, -668($fp)
	lw $t1, -672($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -676($fp)
	li $t0, 44686
	sw $t0, -680($fp)
	lw $t1, -676($fp)
	lw $t2, -680($fp)
	bgt $t1, $t2, label541
	j label542
label541:
	li $t0, 1
	sw $t0, -596($fp)
label542:
	lw $t1, -592($fp)
	lw $t2, -596($fp)
	beq $t1, $t2, label537
	j label538
label537:
	li $t0, 1
	sw $t0, -556($fp)
label538:
	lw $ra, -4($fp)
	lw $v0, -556($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -704
	li $t0, 11794
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
	li $t0, 48127
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
	li $t0, 8349
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
	li $t0, 58027
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
	li $t0, 29400
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
	li $t0, 5723
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
	li $t0, 42696
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
	li $t0, 56505
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
	li $t0, 22696
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
	li $t0, 26497
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	li $t0, 13922
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	lw $t0, 4($fp)
	sw $t0, -284($fp)
	li $t0, 0
	sw $t0, -288($fp)
	li $t0, 43525
	sw $t0, -292($fp)
	lw $t1, -292($fp)
	li $t2, 0
	bne $t1, $t2, label555
	j label554
label554:
	li $t0, 1
	sw $t0, -288($fp)
label555:
	lw $t0, -264($fp)
	sw $t0, -296($fp)
	lw $t0, -288($fp)
	lw $t1, -296($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -300($fp)
	lw $t0, -284($fp)
	lw $t1, -300($fp)
	sub $t0, $t0, $t1
	sw $t0, -304($fp)
	li $t0, 3273
	sw $t0, -308($fp)
	li $t0, 0
	sw $t0, -312($fp)
	li $t0, 51982
	sw $t0, -316($fp)
	li $t0, 0
	lw $t1, -316($fp)
	sub $t0, $t0, $t1
	sw $t0, -320($fp)
	lw $t1, -320($fp)
	li $t2, 0
	bne $t1, $t2, label557
	j label556
label556:
	li $t0, 1
	sw $t0, -312($fp)
label557:
	li $t0, 0
	sw $t0, -324($fp)
	li $t0, 0
	sw $t0, -328($fp)
	lw $t0, 12($fp)
	sw $t0, -332($fp)
	li $t0, 62816
	sw $t0, -336($fp)
	lw $t1, -332($fp)
	lw $t2, -336($fp)
	beq $t1, $t2, label560
	j label561
label560:
	li $t0, 1
	sw $t0, -328($fp)
label561:
	lw $t0, 12($fp)
	sw $t0, -340($fp)
	lw $t1, -328($fp)
	lw $t2, -340($fp)
	beq $t1, $t2, label558
	j label559
label558:
	li $t0, 1
	sw $t0, -324($fp)
label559:
	li $t0, 0
	sw $t0, -344($fp)
	lw $t0, 12($fp)
	sw $t0, -348($fp)
	lw $t1, -348($fp)
	li $t2, 0
	bne $t1, $t2, label563
	j label562
label562:
	li $t0, 1
	sw $t0, -344($fp)
label563:
	lw $t0, 8($fp)
	sw $t0, -352($fp)
	lw $t0, -344($fp)
	lw $t1, -352($fp)
	sub $t0, $t0, $t1
	sw $t0, -356($fp)
	lw $t0, 4($fp)
	sw $t0, -360($fp)
	lw $t0, -276($fp)
	sw $t0, -364($fp)
	lw $t0, -360($fp)
	lw $t1, -364($fp)
	mul $t0, $t0, $t1
	sw $t0, -368($fp)
	li $t0, 0
	lw $t1, -368($fp)
	sub $t0, $t0, $t1
	sw $t0, -372($fp)
	lw $t0, 12($fp)
	sw $t0, -376($fp)
	addi $sp, $sp, -4
	lw $t0, -312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -376($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -380($fp)
	addi $sp, $sp, 24
	lw $t0, -308($fp)
	lw $t1, -380($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -384($fp)
	lw $t0, 4($fp)
	sw $t0, -388($fp)
	lw $t0, -384($fp)
	lw $t1, -388($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -392($fp)
	li $t0, 0
	sw $t0, -396($fp)
	li $t0, 46927
	sw $t0, -400($fp)
	li $t0, 35780
	sw $t0, -404($fp)
	li $t0, 27080
	sw $t0, -408($fp)
	lw $t0, -404($fp)
	lw $t1, -408($fp)
	mul $t0, $t0, $t1
	sw $t0, -412($fp)
	lw $t0, -400($fp)
	lw $t1, -412($fp)
	add $t0, $t0, $t1
	sw $t0, -416($fp)
	li $t0, 2823
	sw $t0, -420($fp)
	li $t0, 0
	lw $t1, -420($fp)
	sub $t0, $t0, $t1
	sw $t0, -424($fp)
	li $t0, 0
	lw $t1, -424($fp)
	sub $t0, $t0, $t1
	sw $t0, -428($fp)
	lw $t0, -416($fp)
	lw $t1, -428($fp)
	sub $t0, $t0, $t1
	sw $t0, -432($fp)
	li $t0, 0
	sw $t0, -436($fp)
	li $t0, 0
	sw $t0, -440($fp)
	lw $t0, -264($fp)
	sw $t0, -444($fp)
	lw $t0, 4($fp)
	sw $t0, -448($fp)
	lw $t0, -444($fp)
	lw $t1, -448($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -452($fp)
	li $t0, 47642
	sw $t0, -456($fp)
	lw $t1, -452($fp)
	lw $t2, -456($fp)
	ble $t1, $t2, label568
	j label569
label568:
	li $t0, 1
	sw $t0, -440($fp)
label569:
	li $t0, 41568
	sw $t0, -460($fp)
	li $t0, 0
	sw $t0, -464($fp)
	lw $t0, 4($fp)
	sw $t0, -468($fp)
	lw $t1, -468($fp)
	li $t2, 0
	bne $t1, $t2, label573
	j label571
label573:
	lw $t0, 12($fp)
	sw $t0, -472($fp)
	lw $t1, -472($fp)
	li $t2, 0
	bne $t1, $t2, label572
	j label571
label572:
	lw $t0, 4($fp)
	sw $t0, -476($fp)
	lw $t1, -476($fp)
	li $t2, 0
	bne $t1, $t2, label570
	j label571
label570:
	li $t0, 1
	sw $t0, -464($fp)
label571:
	addi $sp, $sp, -4
	lw $t0, -440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -464($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -480($fp)
	addi $sp, $sp, 16
	li $t0, 38703
	sw $t0, -484($fp)
	lw $t1, -480($fp)
	lw $t2, -484($fp)
	ble $t1, $t2, label566
	j label567
label566:
	li $t0, 1
	sw $t0, -436($fp)
label567:
	lw $t1, -432($fp)
	lw $t2, -436($fp)
	bne $t1, $t2, label564
	j label565
label564:
	li $t0, 1
	sw $t0, -396($fp)
label565:
	addi $t0, $fp, -40
	sw $t0, -488($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
	sw $t0, -508($fp)
	li $t0, 1
	sw $t0, -512($fp)
	li $t0, 4
	lw $t1, -512($fp)
	mul $t0, $t0, $t1
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	lw $t1, -508($fp)
	add $t0, $t0, $t1
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	lw $t1, 0($t0)
	sw $t1, -524($fp)
	lw $t0, -524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -528($fp)
	li $t0, 2
	sw $t0, -532($fp)
	li $t0, 4
	lw $t1, -532($fp)
	mul $t0, $t0, $t1
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	lw $t1, -528($fp)
	add $t0, $t0, $t1
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	lw $t1, 0($t0)
	sw $t1, -544($fp)
	lw $t0, -544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -548($fp)
	li $t0, 3
	sw $t0, -552($fp)
	li $t0, 4
	lw $t1, -552($fp)
	mul $t0, $t0, $t1
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	lw $t1, -548($fp)
	add $t0, $t0, $t1
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	lw $t1, 0($t0)
	sw $t1, -564($fp)
	lw $t0, -564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
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
	lw $t0, -584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -588($fp)
	li $t0, 5
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
	addi $t0, $fp, -40
	sw $t0, -608($fp)
	li $t0, 6
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
	addi $t0, $fp, -40
	sw $t0, -628($fp)
	li $t0, 7
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
	addi $t0, $fp, -40
	sw $t0, -648($fp)
	li $t0, 8
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
	lw $t0, -264($fp)
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -276($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -676($fp)
	lw $t0, 12($fp)
	sw $t0, -680($fp)
	li $t0, 29702
	sw $t0, -684($fp)
	lw $t0, -680($fp)
	lw $t1, -684($fp)
	add $t0, $t0, $t1
	sw $t0, -688($fp)
	li $t0, 4
	lw $t1, -688($fp)
	mul $t0, $t0, $t1
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	lw $t1, -676($fp)
	add $t0, $t0, $t1
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	lw $t1, 0($t0)
	sw $t1, -700($fp)
	li $t0, 0
	lw $t1, -700($fp)
	sub $t0, $t0, $t1
	sw $t0, -704($fp)
	li $t0, 0
	lw $t1, -704($fp)
	sub $t0, $t0, $t1
	sw $t0, -708($fp)
	lw $ra, -4($fp)
	lw $v0, -708($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -48
	li $t0, 31229
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 44082
	sw $t0, -20($fp)
	li $t0, 0
	sw $t0, -24($fp)
	lw $t0, -12($fp)
	sw $t0, -28($fp)
	li $t0, 50320
	sw $t0, -32($fp)
	lw $t0, -28($fp)
	lw $t1, -32($fp)
	add $t0, $t0, $t1
	sw $t0, -36($fp)
	lw $t1, -36($fp)
	li $t2, 0
	bne $t1, $t2, label576
	j label575
label576:
	li $t0, 59450
	sw $t0, -40($fp)
	lw $t1, -40($fp)
	li $t2, 0
	bne $t1, $t2, label574
	j label575
label574:
	li $t0, 1
	sw $t0, -24($fp)
label575:
	addi $sp, $sp, -4
	lw $t0, -20($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -24($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -44($fp)
	addi $sp, $sp, 12
	lw $t0, -12($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 62104
	sw $t0, -52($fp)
	lw $ra, -4($fp)
	lw $v0, -52($fp)
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
