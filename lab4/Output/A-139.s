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
	addi $sp, $sp, -432
	li $t0, 3828
	sw $t0, -24($fp)
	addi $t0, $fp, -20
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
	li $t0, 56344
	sw $t0, -48($fp)
	addi $t0, $fp, -20
	sw $t0, -52($fp)
	li $t0, 1
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
	li $t0, 36130
	sw $t0, -72($fp)
	addi $t0, $fp, -20
	sw $t0, -76($fp)
	li $t0, 2
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
	li $t0, 60291
	sw $t0, -96($fp)
	addi $t0, $fp, -20
	sw $t0, -100($fp)
	li $t0, 3
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
	li $t0, 3299
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -128($fp)
	li $t0, 47996
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -140($fp)
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
	sw $t0, -184($fp)
	li $t0, 2
	sw $t0, -188($fp)
	li $t0, 4
	lw $t1, -188($fp)
	mul $t0, $t0, $t1
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	lw $t1, -184($fp)
	add $t0, $t0, $t1
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	lw $t1, 0($t0)
	sw $t1, -200($fp)
	lw $t0, -200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -204($fp)
	li $t0, 3
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
	lw $t0, -124($fp)
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -136($fp)
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -136($fp)
	sw $t0, -232($fp)
	li $t0, 59500
	sw $t0, -236($fp)
	li $t0, 0
	lw $t1, -236($fp)
	sub $t0, $t0, $t1
	sw $t0, -240($fp)
	lw $t0, -232($fp)
	lw $t1, -240($fp)
	mul $t0, $t0, $t1
	sw $t0, -244($fp)
	li $t0, 0
	lw $t1, -244($fp)
	sub $t0, $t0, $t1
	sw $t0, -248($fp)
	li $t0, 0
	lw $t1, -248($fp)
	sub $t0, $t0, $t1
	sw $t0, -252($fp)
	addi $t0, $fp, -20
	sw $t0, -256($fp)
	li $t0, 2
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
	lw $t0, -252($fp)
	lw $t1, -272($fp)
	sub $t0, $t0, $t1
	sw $t0, -276($fp)
	addi $t0, $fp, -20
	sw $t0, -280($fp)
	li $t0, 0
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
	li $t0, 0
	sw $t0, -300($fp)
	lw $t0, -124($fp)
	sw $t0, -304($fp)
	lw $t1, -304($fp)
	li $t2, 0
	bne $t1, $t2, label122
	j label121
label121:
	li $t0, 1
	sw $t0, -300($fp)
label122:
	lw $t0, -296($fp)
	lw $t1, -300($fp)
	mul $t0, $t0, $t1
	sw $t0, -308($fp)
	li $t0, 0
	lw $t1, -308($fp)
	sub $t0, $t0, $t1
	sw $t0, -312($fp)
	lw $t0, -276($fp)
	lw $t1, -312($fp)
	add $t0, $t0, $t1
	sw $t0, -316($fp)
	lw $ra, -4($fp)
	lw $v0, -316($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
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
	lw $t0, -124($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -136($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -408($fp)
	lw $t0, -136($fp)
	sw $t0, -412($fp)
	addi $t0, $fp, -20
	sw $t0, -416($fp)
	lw $t0, -136($fp)
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
	li $t0, 0
	lw $t1, -432($fp)
	sub $t0, $t0, $t1
	sw $t0, -436($fp)
	lw $t1, -412($fp)
	lw $t2, -436($fp)
	bgt $t1, $t2, label123
	j label124
label123:
	li $t0, 1
	sw $t0, -408($fp)
label124:
	lw $ra, -4($fp)
	lw $v0, -408($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -56
	li $t0, 27753
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	lw $t0, -12($fp)
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -24($fp)
	li $t0, 4970
	sw $t0, -28($fp)
	lw $t0, -12($fp)
	sw $t0, -32($fp)
	li $t0, 56330
	sw $t0, -36($fp)
	lw $t0, -32($fp)
	lw $t1, -36($fp)
	mul $t0, $t0, $t1
	sw $t0, -40($fp)
	lw $t0, -28($fp)
	lw $t1, -40($fp)
	sub $t0, $t0, $t1
	sw $t0, -44($fp)
	lw $t1, -44($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label127
label128:
	li $t0, 52878
	sw $t0, -48($fp)
	lw $t1, -48($fp)
	li $t2, 0
	bne $t1, $t2, label125
	j label127
label127:
	jal f7
	sw $v0, -52($fp)
	addi $sp, $sp, 4
	jal f6
	sw $v0, -56($fp)
	addi $sp, $sp, 4
	lw $t0, -52($fp)
	lw $t1, -56($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -60($fp)
	lw $t1, -60($fp)
	li $t2, 0
	bne $t1, $t2, label125
	j label126
label125:
	li $t0, 1
	sw $t0, -24($fp)
label126:
	lw $ra, -4($fp)
	lw $v0, -24($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -240
	li $t0, 24353
	sw $t0, -24($fp)
	addi $t0, $fp, -20
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
	li $t0, 24729
	sw $t0, -48($fp)
	addi $t0, $fp, -20
	sw $t0, -52($fp)
	li $t0, 1
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
	li $t0, 64636
	sw $t0, -72($fp)
	addi $t0, $fp, -20
	sw $t0, -76($fp)
	li $t0, 2
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
	li $t0, 44234
	sw $t0, -96($fp)
	addi $t0, $fp, -20
	sw $t0, -100($fp)
	li $t0, 3
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
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
	sw $t0, -160($fp)
	li $t0, 2
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
	addi $t0, $fp, -20
	sw $t0, -180($fp)
	li $t0, 3
	sw $t0, -184($fp)
	li $t0, 4
	lw $t1, -184($fp)
	mul $t0, $t0, $t1
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	lw $t1, -180($fp)
	add $t0, $t0, $t1
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	lw $t1, 0($t0)
	sw $t1, -196($fp)
	lw $t0, -196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -200($fp)
	li $t0, 0
	sw $t0, -204($fp)
	addi $t0, $fp, -20
	sw $t0, -208($fp)
	li $t0, 0
	sw $t0, -212($fp)
	li $t0, 3574
	sw $t0, -216($fp)
	li $t0, 18469
	sw $t0, -220($fp)
	lw $t1, -216($fp)
	lw $t2, -220($fp)
	beq $t1, $t2, label133
	j label134
label133:
	li $t0, 1
	sw $t0, -212($fp)
label134:
	li $t0, 4
	lw $t1, -212($fp)
	mul $t0, $t0, $t1
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	lw $t1, -208($fp)
	add $t0, $t0, $t1
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	lw $t1, 0($t0)
	sw $t1, -232($fp)
	lw $t1, -232($fp)
	li $t2, 0
	bne $t1, $t2, label132
	j label131
label131:
	li $t0, 1
	sw $t0, -204($fp)
label132:
	lw $t0, 4($fp)
	sw $t0, -236($fp)
	li $t0, 35280
	sw $t0, -240($fp)
	lw $t0, -236($fp)
	lw $t1, -240($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -244($fp)
	lw $t1, -204($fp)
	lw $t2, -244($fp)
	beq $t1, $t2, label129
	j label130
label129:
	li $t0, 1
	sw $t0, -200($fp)
label130:
	lw $ra, -4($fp)
	lw $v0, -200($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -28
	li $t0, 0
	sw $t0, -8($fp)
	jal f7
	sw $v0, -12($fp)
	addi $sp, $sp, 4
	lw $t1, -12($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label136
label139:
	lw $t0, 4($fp)
	sw $t0, -16($fp)
	li $t0, 47178
	sw $t0, -20($fp)
	lw $t0, -16($fp)
	lw $t1, -20($fp)
	mul $t0, $t0, $t1
	sw $t0, -24($fp)
	lw $t1, -24($fp)
	li $t2, 0
	bne $t1, $t2, label138
	j label136
label138:
	lw $t0, 4($fp)
	sw $t0, -28($fp)
	lw $t1, -28($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label136
label137:
	jal f6
	sw $v0, -32($fp)
	addi $sp, $sp, 4
	lw $t1, -32($fp)
	li $t2, 0
	bne $t1, $t2, label135
	j label136
label135:
	li $t0, 1
	sw $t0, -8($fp)
label136:
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
	addi $sp, $sp, -3348
	li $t0, 62247
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	li $t0, 39731
	sw $t0, -160($fp)
	addi $t0, $fp, -28
	sw $t0, -164($fp)
	li $t0, 0
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
	li $t0, 31122
	sw $t0, -184($fp)
	addi $t0, $fp, -28
	sw $t0, -188($fp)
	li $t0, 1
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
	li $t0, 8392
	sw $t0, -208($fp)
	addi $t0, $fp, -28
	sw $t0, -212($fp)
	li $t0, 2
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
	li $t0, 6984
	sw $t0, -232($fp)
	addi $t0, $fp, -28
	sw $t0, -236($fp)
	li $t0, 3
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
	li $t0, 59257
	sw $t0, -256($fp)
	addi $t0, $fp, -28
	sw $t0, -260($fp)
	li $t0, 4
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
	li $t0, 41288
	sw $t0, -280($fp)
	addi $t0, $fp, -28
	sw $t0, -284($fp)
	li $t0, 5
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
	li $t0, 1505
	sw $t0, -304($fp)
	addi $t0, $fp, -68
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
	li $t0, 63085
	sw $t0, -328($fp)
	addi $t0, $fp, -68
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
	li $t0, 32097
	sw $t0, -352($fp)
	addi $t0, $fp, -68
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
	li $t0, 37636
	sw $t0, -376($fp)
	addi $t0, $fp, -68
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
	li $t0, 57840
	sw $t0, -400($fp)
	addi $t0, $fp, -68
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
	li $t0, 35396
	sw $t0, -424($fp)
	addi $t0, $fp, -68
	sw $t0, -428($fp)
	li $t0, 5
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -436($fp)
	lw $t0, -428($fp)
	lw $t1, -436($fp)
	add $t0, $t0, $t1
	sw $t0, -440($fp)
	lw $t0, -424($fp)
	lw $t1, -440($fp)
	sw $t0, 0($t1)
	lw $t0, -440($fp)
	lw $t1, 0($t0)
	sw $t1, -444($fp)
	li $t0, 20096
	sw $t0, -448($fp)
	addi $t0, $fp, -68
	sw $t0, -452($fp)
	li $t0, 6
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -460($fp)
	lw $t0, -452($fp)
	lw $t1, -460($fp)
	add $t0, $t0, $t1
	sw $t0, -464($fp)
	lw $t0, -448($fp)
	lw $t1, -464($fp)
	sw $t0, 0($t1)
	lw $t0, -464($fp)
	lw $t1, 0($t0)
	sw $t1, -468($fp)
	li $t0, 51804
	sw $t0, -472($fp)
	addi $t0, $fp, -68
	sw $t0, -476($fp)
	li $t0, 7
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
	li $t0, 11241
	sw $t0, -496($fp)
	addi $t0, $fp, -68
	sw $t0, -500($fp)
	li $t0, 8
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
	li $t0, 13062
	sw $t0, -520($fp)
	addi $t0, $fp, -68
	sw $t0, -524($fp)
	li $t0, 9
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
	li $t0, 27376
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	li $t0, 63449
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	li $t0, 40815
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	li $t0, 32346
	sw $t0, -580($fp)
	addi $t0, $fp, -104
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
	li $t0, 54243
	sw $t0, -604($fp)
	addi $t0, $fp, -104
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
	li $t0, 28157
	sw $t0, -628($fp)
	addi $t0, $fp, -104
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
	li $t0, 56700
	sw $t0, -652($fp)
	addi $t0, $fp, -104
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
	li $t0, 13436
	sw $t0, -676($fp)
	addi $t0, $fp, -104
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
	li $t0, 27257
	sw $t0, -700($fp)
	addi $t0, $fp, -104
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
	li $t0, 35398
	sw $t0, -724($fp)
	addi $t0, $fp, -104
	sw $t0, -728($fp)
	li $t0, 6
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
	li $t0, 17010
	sw $t0, -748($fp)
	addi $t0, $fp, -104
	sw $t0, -752($fp)
	li $t0, 7
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -760($fp)
	lw $t0, -752($fp)
	lw $t1, -760($fp)
	add $t0, $t0, $t1
	sw $t0, -764($fp)
	lw $t0, -748($fp)
	lw $t1, -764($fp)
	sw $t0, 0($t1)
	lw $t0, -764($fp)
	lw $t1, 0($t0)
	sw $t1, -768($fp)
	li $t0, 45726
	sw $t0, -772($fp)
	addi $t0, $fp, -104
	sw $t0, -776($fp)
	li $t0, 8
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
	li $t0, 5142
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	sw $t0, -804($fp)
	li $t0, 64188
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	sw $t0, -816($fp)
	li $t0, 42437
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -828($fp)
	li $t0, 44873
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -840($fp)
	li $t0, 29775
	sw $t0, -844($fp)
	addi $t0, $fp, -144
	sw $t0, -848($fp)
	li $t0, 0
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -856($fp)
	lw $t0, -848($fp)
	lw $t1, -856($fp)
	add $t0, $t0, $t1
	sw $t0, -860($fp)
	lw $t0, -844($fp)
	lw $t1, -860($fp)
	sw $t0, 0($t1)
	lw $t0, -860($fp)
	lw $t1, 0($t0)
	sw $t1, -864($fp)
	li $t0, 50830
	sw $t0, -868($fp)
	addi $t0, $fp, -144
	sw $t0, -872($fp)
	li $t0, 1
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
	li $t0, 51858
	sw $t0, -892($fp)
	addi $t0, $fp, -144
	sw $t0, -896($fp)
	li $t0, 2
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
	li $t0, 23496
	sw $t0, -916($fp)
	addi $t0, $fp, -144
	sw $t0, -920($fp)
	li $t0, 3
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
	li $t0, 26582
	sw $t0, -940($fp)
	addi $t0, $fp, -144
	sw $t0, -944($fp)
	li $t0, 4
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
	li $t0, 53363
	sw $t0, -964($fp)
	addi $t0, $fp, -144
	sw $t0, -968($fp)
	li $t0, 5
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
	li $t0, 21045
	sw $t0, -988($fp)
	addi $t0, $fp, -144
	sw $t0, -992($fp)
	li $t0, 6
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
	li $t0, 58679
	sw $t0, -1012($fp)
	addi $t0, $fp, -144
	sw $t0, -1016($fp)
	li $t0, 7
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
	li $t0, 25463
	sw $t0, -1036($fp)
	addi $t0, $fp, -144
	sw $t0, -1040($fp)
	li $t0, 8
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1048($fp)
	lw $t0, -1040($fp)
	lw $t1, -1048($fp)
	add $t0, $t0, $t1
	sw $t0, -1052($fp)
	lw $t0, -1036($fp)
	lw $t1, -1052($fp)
	sw $t0, 0($t1)
	lw $t0, -1052($fp)
	lw $t1, 0($t0)
	sw $t1, -1056($fp)
	li $t0, 13350
	sw $t0, -1060($fp)
	addi $t0, $fp, -144
	sw $t0, -1064($fp)
	li $t0, 9
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1072($fp)
	lw $t0, -1064($fp)
	lw $t1, -1072($fp)
	add $t0, $t0, $t1
	sw $t0, -1076($fp)
	lw $t0, -1060($fp)
	lw $t1, -1076($fp)
	sw $t0, 0($t1)
	lw $t0, -1076($fp)
	lw $t1, 0($t0)
	sw $t1, -1080($fp)
	li $t0, 28539
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	sw $t0, -1092($fp)
	li $t0, 45560
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	sw $t0, -1104($fp)
	li $t0, 65154
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	sw $t0, -1116($fp)
	li $t0, 39780
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	sw $t0, -1128($fp)
	li $t0, 58622
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	sw $t0, -1140($fp)
	li $t0, 26994
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	sw $t0, -1152($fp)
	li $t0, 37693
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	sw $t0, -1164($fp)
	li $t0, 0
	sw $t0, -1168($fp)
	li $t0, 33902
	sw $t0, -1172($fp)
	lw $t1, -1172($fp)
	li $t2, 0
	bne $t1, $t2, label141
	j label140
label140:
	li $t0, 1
	sw $t0, -1168($fp)
label141:
label142:
	addi $t0, $fp, -104
	sw $t0, -1176($fp)
	lw $t0, 8($fp)
	sw $t0, -1180($fp)
	lw $t0, -572($fp)
	sw $t0, -1184($fp)
	lw $t0, -1180($fp)
	lw $t1, -1184($fp)
	sub $t0, $t0, $t1
	sw $t0, -1188($fp)
	addi $t0, $fp, -144
	sw $t0, -1192($fp)
	lw $t0, -548($fp)
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
	li $t0, 0
	sw $t0, -1212($fp)
	lw $t0, -560($fp)
	sw $t0, -1216($fp)
	lw $t0, -824($fp)
	sw $t0, -1220($fp)
	lw $t0, -1216($fp)
	lw $t1, -1220($fp)
	sub $t0, $t0, $t1
	sw $t0, -1224($fp)
	li $t0, 59341
	sw $t0, -1228($fp)
	lw $t1, -1224($fp)
	lw $t2, -1228($fp)
	ble $t1, $t2, label145
	j label146
label145:
	li $t0, 1
	sw $t0, -1212($fp)
label146:
	addi $sp, $sp, -4
	lw $t0, -1188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1212($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1232($fp)
	addi $sp, $sp, 16
	li $t0, 4
	lw $t1, -1232($fp)
	mul $t0, $t0, $t1
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	lw $t1, -1176($fp)
	add $t0, $t0, $t1
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	lw $t1, 0($t0)
	sw $t1, -1244($fp)
	lw $t1, -1244($fp)
	li $t2, 0
	bne $t1, $t2, label143
	j label144
label143:
	li $t0, 26400
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	sw $t0, -1256($fp)
	li $t0, 62059
	sw $t0, -1260($fp)
	li $t0, 0
	sw $t0, -1264($fp)
	li $t0, 0
	sw $t0, -1268($fp)
	li $t0, 39836
	sw $t0, -1272($fp)
	lw $t0, -812($fp)
	sw $t0, -1276($fp)
	lw $t1, -1272($fp)
	lw $t2, -1276($fp)
	blt $t1, $t2, label149
	j label150
label149:
	li $t0, 1
	sw $t0, -1268($fp)
label150:
	li $t0, 0
	sw $t0, -1280($fp)
	li $t0, 0
	sw $t0, -1284($fp)
	lw $t0, -1148($fp)
	sw $t0, -1288($fp)
	lw $t0, 8($fp)
	sw $t0, -1292($fp)
	lw $t1, -1288($fp)
	lw $t2, -1292($fp)
	blt $t1, $t2, label153
	j label154
label153:
	li $t0, 1
	sw $t0, -1284($fp)
label154:
	lw $t0, -1112($fp)
	sw $t0, -1296($fp)
	lw $t1, -1284($fp)
	lw $t2, -1296($fp)
	bne $t1, $t2, label151
	j label152
label151:
	li $t0, 1
	sw $t0, -1280($fp)
label152:
	li $t0, 0
	sw $t0, -1300($fp)
	li $t0, 50505
	sw $t0, -1304($fp)
	lw $t1, -1304($fp)
	li $t2, 0
	bne $t1, $t2, label156
	j label155
label155:
	li $t0, 1
	sw $t0, -1300($fp)
label156:
	li $t0, 0
	sw $t0, -1308($fp)
	lw $t0, -1252($fp)
	sw $t0, -1312($fp)
	lw $t0, -836($fp)
	sw $t0, -1316($fp)
	lw $t1, -1312($fp)
	lw $t2, -1316($fp)
	beq $t1, $t2, label159
	j label158
label159:
	lw $t0, -1100($fp)
	sw $t0, -1320($fp)
	lw $t1, -1320($fp)
	li $t2, 0
	bne $t1, $t2, label157
	j label158
label157:
	li $t0, 1
	sw $t0, -1308($fp)
label158:
	addi $sp, $sp, -4
	lw $t0, -1268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1308($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1324($fp)
	addi $sp, $sp, 20
	lw $t1, -1324($fp)
	li $t2, 0
	bne $t1, $t2, label148
	j label147
label147:
	li $t0, 1
	sw $t0, -1264($fp)
label148:
	li $t0, 0
	sw $t0, -1328($fp)
	lw $t0, -152($fp)
	sw $t0, -1332($fp)
	lw $t1, -1332($fp)
	li $t2, 0
	bne $t1, $t2, label161
	j label160
label160:
	li $t0, 1
	sw $t0, -1328($fp)
label161:
	li $t0, 23781
	sw $t0, -1336($fp)
	lw $t0, -1328($fp)
	lw $t1, -1336($fp)
	mul $t0, $t0, $t1
	sw $t0, -1340($fp)
	lw $t0, -1264($fp)
	lw $t1, -1340($fp)
	sub $t0, $t0, $t1
	sw $t0, -1344($fp)
	addi $t0, $fp, -144
	sw $t0, -1348($fp)
	li $t0, 7
	sw $t0, -1352($fp)
	li $t0, 4
	lw $t1, -1352($fp)
	mul $t0, $t0, $t1
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	lw $t1, -1348($fp)
	add $t0, $t0, $t1
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	lw $t1, 0($t0)
	sw $t1, -1364($fp)
	jal f7
	sw $v0, -1368($fp)
	addi $sp, $sp, 4
	lw $t0, -1364($fp)
	lw $t1, -1368($fp)
	mul $t0, $t0, $t1
	sw $t0, -1372($fp)
	li $t0, 0
	sw $t0, -1376($fp)
	addi $t0, $fp, -28
	sw $t0, -1380($fp)
	li $t0, 5
	sw $t0, -1384($fp)
	li $t0, 4
	lw $t1, -1384($fp)
	mul $t0, $t0, $t1
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	lw $t1, -1380($fp)
	add $t0, $t0, $t1
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	lw $t1, 0($t0)
	sw $t1, -1396($fp)
	li $t0, 0
	sw $t0, -1400($fp)
	jal f6
	sw $v0, -1404($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -1408($fp)
	lw $t0, -1112($fp)
	sw $t0, -1412($fp)
	lw $t1, -1412($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label167
label167:
	li $t0, 1
	sw $t0, -1408($fp)
label168:
	li $t0, 0
	lw $t1, -1408($fp)
	sub $t0, $t0, $t1
	sw $t0, -1416($fp)
	li $t0, 64280
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -1424($fp)
	li $t0, 0
	sw $t0, -1428($fp)
	lw $t0, -800($fp)
	sw $t0, -1432($fp)
	lw $t1, -1432($fp)
	li $t2, 0
	bne $t1, $t2, label171
	j label170
label171:
	li $t0, 44533
	sw $t0, -1436($fp)
	lw $t1, -1436($fp)
	li $t2, 0
	bne $t1, $t2, label169
	j label170
label169:
	li $t0, 1
	sw $t0, -1428($fp)
label170:
	addi $sp, $sp, -4
	lw $t0, -1404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1428($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1440($fp)
	addi $sp, $sp, 20
	li $t0, 51429
	sw $t0, -1444($fp)
	lw $t1, -1440($fp)
	lw $t2, -1444($fp)
	ble $t1, $t2, label165
	j label166
label165:
	li $t0, 1
	sw $t0, -1400($fp)
label166:
	lw $t0, -1160($fp)
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	sw $t0, -1452($fp)
	li $t0, 0
	sw $t0, -1456($fp)
	lw $t0, -824($fp)
	sw $t0, -1460($fp)
	li $t0, 43234
	sw $t0, -1464($fp)
	lw $t0, -1460($fp)
	lw $t1, -1464($fp)
	sub $t0, $t0, $t1
	sw $t0, -1468($fp)
	li $t0, 58285
	sw $t0, -1472($fp)
	lw $t1, -1468($fp)
	lw $t2, -1472($fp)
	ble $t1, $t2, label172
	j label173
label172:
	li $t0, 1
	sw $t0, -1456($fp)
label173:
	jal f7
	sw $v0, -1476($fp)
	addi $sp, $sp, 4
	li $t0, 56705
	sw $t0, -1480($fp)
	lw $t0, -1476($fp)
	lw $t1, -1480($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1484($fp)
	li $t0, 0
	sw $t0, -1488($fp)
	lw $t0, -1136($fp)
	sw $t0, -1492($fp)
	li $t0, 19738
	sw $t0, -1496($fp)
	lw $t1, -1492($fp)
	lw $t2, -1496($fp)
	beq $t1, $t2, label174
	j label176
label176:
	li $t0, 31703
	sw $t0, -1500($fp)
	lw $t1, -1500($fp)
	li $t2, 0
	bne $t1, $t2, label174
	j label175
label174:
	li $t0, 1
	sw $t0, -1488($fp)
label175:
	li $t0, 0
	sw $t0, -1504($fp)
	li $t0, 46409
	sw $t0, -1508($fp)
	lw $t0, -1124($fp)
	sw $t0, -1512($fp)
	lw $t0, -1508($fp)
	lw $t1, -1512($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1516($fp)
	li $t0, 4847
	sw $t0, -1520($fp)
	lw $t1, -1516($fp)
	lw $t2, -1520($fp)
	bne $t1, $t2, label177
	j label178
label177:
	li $t0, 1
	sw $t0, -1504($fp)
label178:
	addi $sp, $sp, -4
	lw $t0, -1484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1504($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1524($fp)
	addi $sp, $sp, 16
	lw $t0, 12($fp)
	sw $t0, -1528($fp)
	lw $t0, -1524($fp)
	lw $t1, -1528($fp)
	mul $t0, $t0, $t1
	sw $t0, -1532($fp)
	addi $sp, $sp, -4
	lw $t0, -1400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1532($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1536($fp)
	addi $sp, $sp, 20
	lw $t0, -1396($fp)
	lw $t1, -1536($fp)
	sub $t0, $t0, $t1
	sw $t0, -1540($fp)
	lw $t1, -1540($fp)
	li $t2, 0
	bne $t1, $t2, label162
	j label164
label164:
	lw $t0, 4($fp)
	sw $t0, -1544($fp)
	lw $t0, 12($fp)
	sw $t0, -1548($fp)
	lw $t0, -1544($fp)
	lw $t1, -1548($fp)
	add $t0, $t0, $t1
	sw $t0, -1552($fp)
	lw $t1, -1552($fp)
	li $t2, 0
	bne $t1, $t2, label162
	j label163
label162:
	li $t0, 1
	sw $t0, -1376($fp)
label163:
	li $t0, 4460
	sw $t0, -1556($fp)
	li $t0, 0
	sw $t0, -1560($fp)
	addi $t0, $fp, -144
	sw $t0, -1564($fp)
	li $t0, 2
	sw $t0, -1568($fp)
	li $t0, 4
	lw $t1, -1568($fp)
	mul $t0, $t0, $t1
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	lw $t1, -1564($fp)
	add $t0, $t0, $t1
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	lw $t1, 0($t0)
	sw $t1, -1580($fp)
	lw $t1, -1580($fp)
	li $t2, 0
	bne $t1, $t2, label180
	j label179
label179:
	li $t0, 1
	sw $t0, -1560($fp)
label180:
	lw $t0, -1556($fp)
	lw $t1, -1560($fp)
	mul $t0, $t0, $t1
	sw $t0, -1584($fp)
	j label142
label144:
	li $t0, 50020
	sw $t0, -1628($fp)
	addi $t0, $fp, -1624
	sw $t0, -1632($fp)
	li $t0, 0
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1640($fp)
	lw $t0, -1632($fp)
	lw $t1, -1640($fp)
	add $t0, $t0, $t1
	sw $t0, -1644($fp)
	lw $t0, -1628($fp)
	lw $t1, -1644($fp)
	sw $t0, 0($t1)
	lw $t0, -1644($fp)
	lw $t1, 0($t0)
	sw $t1, -1648($fp)
	li $t0, 11712
	sw $t0, -1652($fp)
	addi $t0, $fp, -1624
	sw $t0, -1656($fp)
	li $t0, 1
	sw $t0, -1660($fp)
	lw $t0, -1660($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1664($fp)
	lw $t0, -1656($fp)
	lw $t1, -1664($fp)
	add $t0, $t0, $t1
	sw $t0, -1668($fp)
	lw $t0, -1652($fp)
	lw $t1, -1668($fp)
	sw $t0, 0($t1)
	lw $t0, -1668($fp)
	lw $t1, 0($t0)
	sw $t1, -1672($fp)
	li $t0, 54213
	sw $t0, -1676($fp)
	addi $t0, $fp, -1624
	sw $t0, -1680($fp)
	li $t0, 2
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1688($fp)
	lw $t0, -1680($fp)
	lw $t1, -1688($fp)
	add $t0, $t0, $t1
	sw $t0, -1692($fp)
	lw $t0, -1676($fp)
	lw $t1, -1692($fp)
	sw $t0, 0($t1)
	lw $t0, -1692($fp)
	lw $t1, 0($t0)
	sw $t1, -1696($fp)
	li $t0, 43107
	sw $t0, -1700($fp)
	addi $t0, $fp, -1624
	sw $t0, -1704($fp)
	li $t0, 3
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1712($fp)
	lw $t0, -1704($fp)
	lw $t1, -1712($fp)
	add $t0, $t0, $t1
	sw $t0, -1716($fp)
	lw $t0, -1700($fp)
	lw $t1, -1716($fp)
	sw $t0, 0($t1)
	lw $t0, -1716($fp)
	lw $t1, 0($t0)
	sw $t1, -1720($fp)
	li $t0, 38707
	sw $t0, -1724($fp)
	addi $t0, $fp, -1624
	sw $t0, -1728($fp)
	li $t0, 4
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
	li $t0, 26370
	sw $t0, -1748($fp)
	addi $t0, $fp, -1624
	sw $t0, -1752($fp)
	li $t0, 5
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
	li $t0, 11473
	sw $t0, -1772($fp)
	addi $t0, $fp, -1624
	sw $t0, -1776($fp)
	li $t0, 6
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
	li $t0, 32512
	sw $t0, -1796($fp)
	addi $t0, $fp, -1624
	sw $t0, -1800($fp)
	li $t0, 7
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
	li $t0, 52771
	sw $t0, -1820($fp)
	addi $t0, $fp, -1624
	sw $t0, -1824($fp)
	li $t0, 8
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
	li $t0, 7996
	sw $t0, -1844($fp)
	addi $t0, $fp, -1624
	sw $t0, -1848($fp)
	li $t0, 9
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
	li $t0, 17481
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	sw $t0, -1872($fp)
	lw $t0, -1872($fp)
	sw $t0, -1876($fp)
	li $t0, 27071
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	sw $t0, -1888($fp)
	li $t0, 31777
	sw $t0, -1892($fp)
	lw $t0, -1892($fp)
	sw $t0, -1896($fp)
	lw $t0, -1896($fp)
	sw $t0, -1900($fp)
	li $t0, 37848
	sw $t0, -1904($fp)
	li $t0, 0
	lw $t1, -1904($fp)
	sub $t0, $t0, $t1
	sw $t0, -1908($fp)
	li $t0, 0
	sw $t0, -1912($fp)
	li $t0, 18382
	sw $t0, -1916($fp)
	li $t0, 35749
	sw $t0, -1920($fp)
	lw $t1, -1916($fp)
	lw $t2, -1920($fp)
	beq $t1, $t2, label186
	j label185
label186:
	li $t0, 63358
	sw $t0, -1924($fp)
	li $t0, 8346
	sw $t0, -1928($fp)
	lw $t1, -1924($fp)
	lw $t2, -1928($fp)
	beq $t1, $t2, label184
	j label185
label184:
	li $t0, 1
	sw $t0, -1912($fp)
label185:
	lw $t0, -1912($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -1932($fp)
	lw $t1, -1932($fp)
	li $t2, 0
	bne $t1, $t2, label181
	j label182
label181:
	li $t0, 0
	sw $t0, -1936($fp)
	li $t0, 0
	sw $t0, -1940($fp)
	lw $t0, -548($fp)
	sw $t0, -1944($fp)
	lw $t1, -1944($fp)
	li $t2, 0
	bne $t1, $t2, label190
	j label189
label189:
	li $t0, 1
	sw $t0, -1940($fp)
label190:
	li $t0, 0
	sw $t0, -1948($fp)
	li $t0, 41074
	sw $t0, -1952($fp)
	lw $t1, -1952($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label193
label193:
	lw $t0, -836($fp)
	sw $t0, -1956($fp)
	lw $t1, -1956($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label192
label191:
	li $t0, 1
	sw $t0, -1948($fp)
label192:
	li $t0, 0
	sw $t0, -1960($fp)
	li $t0, 0
	sw $t0, -1964($fp)
	lw $t0, -1884($fp)
	sw $t0, -1968($fp)
	li $t0, 59375
	sw $t0, -1972($fp)
	lw $t1, -1968($fp)
	lw $t2, -1972($fp)
	beq $t1, $t2, label196
	j label197
label196:
	li $t0, 1
	sw $t0, -1964($fp)
label197:
	li $t0, 5783
	sw $t0, -1976($fp)
	lw $t1, -1964($fp)
	lw $t2, -1976($fp)
	bne $t1, $t2, label194
	j label195
label194:
	li $t0, 1
	sw $t0, -1960($fp)
label195:
	li $t0, 0
	sw $t0, -1980($fp)
	li $t0, 0
	sw $t0, -1984($fp)
	li $t0, 48325
	sw $t0, -1988($fp)
	lw $t0, -836($fp)
	sw $t0, -1992($fp)
	lw $t1, -1988($fp)
	lw $t2, -1992($fp)
	ble $t1, $t2, label200
	j label201
label200:
	li $t0, 1
	sw $t0, -1984($fp)
label201:
	lw $t0, -1088($fp)
	sw $t0, -1996($fp)
	lw $t1, -1984($fp)
	lw $t2, -1996($fp)
	blt $t1, $t2, label198
	j label199
label198:
	li $t0, 1
	sw $t0, -1980($fp)
label199:
	lw $t0, -824($fp)
	sw $t0, -2000($fp)
	lw $t0, -824($fp)
	sw $t0, -2004($fp)
	lw $t0, -2000($fp)
	lw $t1, -2004($fp)
	sub $t0, $t0, $t1
	sw $t0, -2008($fp)
	addi $sp, $sp, -4
	lw $t0, -1948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2008($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2012($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -2016($fp)
	lw $t0, -572($fp)
	sw $t0, -2020($fp)
	lw $t1, -2020($fp)
	li $t2, 0
	bne $t1, $t2, label205
	j label204
label205:
	li $t0, 28084
	sw $t0, -2024($fp)
	lw $t1, -2024($fp)
	li $t2, 0
	bne $t1, $t2, label202
	j label204
label204:
	lw $t0, 12($fp)
	sw $t0, -2028($fp)
	lw $t1, -2028($fp)
	li $t2, 0
	bne $t1, $t2, label202
	j label203
label202:
	li $t0, 1
	sw $t0, -2016($fp)
label203:
	addi $t0, $fp, -104
	sw $t0, -2032($fp)
	lw $t0, -1148($fp)
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
	li $t0, 2670
	sw $t0, -2052($fp)
	lw $t0, -2048($fp)
	lw $t1, -2052($fp)
	mul $t0, $t0, $t1
	sw $t0, -2056($fp)
	li $t0, 0
	sw $t0, -2060($fp)
	lw $t0, 12($fp)
	sw $t0, -2064($fp)
	li $t0, 16622
	sw $t0, -2068($fp)
	lw $t0, -2064($fp)
	lw $t1, -2068($fp)
	add $t0, $t0, $t1
	sw $t0, -2072($fp)
	lw $t0, -1124($fp)
	sw $t0, -2076($fp)
	lw $t1, -2072($fp)
	lw $t2, -2076($fp)
	bgt $t1, $t2, label206
	j label207
label206:
	li $t0, 1
	sw $t0, -2060($fp)
label207:
	addi $sp, $sp, -4
	lw $t0, -2012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2060($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2080($fp)
	addi $sp, $sp, 20
	lw $t1, -1940($fp)
	lw $t2, -2080($fp)
	beq $t1, $t2, label187
	j label188
label187:
	li $t0, 1
	sw $t0, -1936($fp)
label188:
	j label183
label182:
	li $t0, 0
	sw $t0, -2084($fp)
	li $t0, 0
	sw $t0, -2088($fp)
	li $t0, 0
	sw $t0, -2092($fp)
	li $t0, 27317
	sw $t0, -2096($fp)
	li $t0, 0
	lw $t1, -2096($fp)
	sub $t0, $t0, $t1
	sw $t0, -2100($fp)
	li $t0, 0
	sw $t0, -2104($fp)
	li $t0, 16621
	sw $t0, -2108($fp)
	lw $t0, -560($fp)
	sw $t0, -2112($fp)
	lw $t0, -2108($fp)
	lw $t1, -2112($fp)
	mul $t0, $t0, $t1
	sw $t0, -2116($fp)
	lw $t1, -2116($fp)
	li $t2, 0
	bne $t1, $t2, label214
	j label216
label216:
	li $t0, 41400
	sw $t0, -2120($fp)
	lw $t1, -2120($fp)
	li $t2, 0
	bne $t1, $t2, label214
	j label215
label214:
	li $t0, 1
	sw $t0, -2104($fp)
label215:
	lw $t0, -1872($fp)
	sw $t0, -2124($fp)
	li $t0, 42833
	sw $t0, -2128($fp)
	lw $t0, -2124($fp)
	lw $t1, -2128($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2132($fp)
	li $t0, 0
	sw $t0, -2136($fp)
	addi $t0, $fp, -104
	sw $t0, -2140($fp)
	li $t0, 2
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
	li $t0, 26967
	sw $t0, -2160($fp)
	lw $t1, -2156($fp)
	lw $t2, -2160($fp)
	bne $t1, $t2, label217
	j label218
label217:
	li $t0, 1
	sw $t0, -2136($fp)
label218:
	addi $sp, $sp, -4
	lw $t0, -2100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2136($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2164($fp)
	addi $sp, $sp, 20
	lw $t1, -2164($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label212
label212:
	li $t0, 1
	sw $t0, -2092($fp)
label213:
	lw $t0, -1088($fp)
	sw $t0, -2168($fp)
	lw $t1, -2092($fp)
	lw $t2, -2168($fp)
	bge $t1, $t2, label210
	j label211
label210:
	li $t0, 1
	sw $t0, -2088($fp)
label211:
	addi $t0, $fp, -1624
	sw $t0, -2172($fp)
	lw $t0, -572($fp)
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
	addi $t0, $fp, -144
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
	addi $t0, $fp, -68
	sw $t0, -2212($fp)
	lw $t0, -152($fp)
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
	addi $t0, $fp, -28
	sw $t0, -2232($fp)
	lw $t0, -836($fp)
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
	lw $t0, -1160($fp)
	sw $t0, -2252($fp)
	lw $t0, -2248($fp)
	lw $t1, -2252($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2256($fp)
	li $t0, 1504
	sw $t0, -2260($fp)
	li $t0, 0
	lw $t1, -2260($fp)
	sub $t0, $t0, $t1
	sw $t0, -2264($fp)
	li $t0, 56447
	sw $t0, -2268($fp)
	lw $t0, -2264($fp)
	lw $t1, -2268($fp)
	add $t0, $t0, $t1
	sw $t0, -2272($fp)
	li $t0, 0
	sw $t0, -2276($fp)
	li $t0, 30077
	sw $t0, -2280($fp)
	li $t0, 4888
	sw $t0, -2284($fp)
	lw $t0, -2280($fp)
	lw $t1, -2284($fp)
	sub $t0, $t0, $t1
	sw $t0, -2288($fp)
	lw $t0, -560($fp)
	sw $t0, -2292($fp)
	lw $t1, -2288($fp)
	lw $t2, -2292($fp)
	beq $t1, $t2, label219
	j label220
label219:
	li $t0, 1
	sw $t0, -2276($fp)
label220:
	lw $t0, -824($fp)
	sw $t0, -2296($fp)
	li $t0, 0
	sw $t0, -2300($fp)
	lw $t0, -1896($fp)
	sw $t0, -2304($fp)
	li $t0, 28333
	sw $t0, -2308($fp)
	lw $t0, -2304($fp)
	lw $t1, -2308($fp)
	add $t0, $t0, $t1
	sw $t0, -2312($fp)
	lw $t0, -1160($fp)
	sw $t0, -2316($fp)
	lw $t1, -2312($fp)
	lw $t2, -2316($fp)
	beq $t1, $t2, label221
	j label222
label221:
	li $t0, 1
	sw $t0, -2300($fp)
label222:
	addi $sp, $sp, -4
	lw $t0, -2272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2300($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2320($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -2208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2320($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2324($fp)
	addi $sp, $sp, 20
	lw $t0, -2188($fp)
	lw $t1, -2324($fp)
	sub $t0, $t0, $t1
	sw $t0, -2328($fp)
	lw $t1, -2088($fp)
	lw $t2, -2328($fp)
	ble $t1, $t2, label208
	j label209
label208:
	li $t0, 1
	sw $t0, -2084($fp)
label209:
label183:
	li $t0, 0
	sw $t0, -2332($fp)
	li $t0, 0
	sw $t0, -2336($fp)
	lw $t0, -1112($fp)
	sw $t0, -2340($fp)
	lw $t1, -2340($fp)
	li $t2, 0
	bne $t1, $t2, label227
	j label226
label226:
	li $t0, 1
	sw $t0, -2336($fp)
label227:
	lw $t0, -1896($fp)
	sw $t0, -2344($fp)
	lw $t0, -2336($fp)
	lw $t1, -2344($fp)
	add $t0, $t0, $t1
	sw $t0, -2348($fp)
	lw $t1, -2348($fp)
	li $t2, 0
	bne $t1, $t2, label223
	j label225
label225:
	li $t0, 0
	sw $t0, -2352($fp)
	lw $t0, 8($fp)
	sw $t0, -2356($fp)
	lw $t1, -2356($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label229
label228:
	li $t0, 1
	sw $t0, -2352($fp)
label229:
	li $t0, 43682
	sw $t0, -2360($fp)
	lw $t0, -2352($fp)
	lw $t1, -2360($fp)
	sub $t0, $t0, $t1
	sw $t0, -2364($fp)
	lw $t1, -2364($fp)
	li $t2, 0
	bne $t1, $t2, label223
	j label224
label223:
	li $t0, 1
	sw $t0, -2332($fp)
label224:
label230:
	addi $t0, $fp, -144
	sw $t0, -2368($fp)
	lw $t0, -812($fp)
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
	addi $t0, $fp, -144
	sw $t0, -2388($fp)
	li $t0, 5
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
	li $t0, 0
	lw $t1, -2404($fp)
	sub $t0, $t0, $t1
	sw $t0, -2408($fp)
	lw $t0, -2384($fp)
	lw $t1, -2408($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2412($fp)
	li $t0, 0
	lw $t1, -2412($fp)
	sub $t0, $t0, $t1
	sw $t0, -2416($fp)
	li $t0, 0
	lw $t1, -2416($fp)
	sub $t0, $t0, $t1
	sw $t0, -2420($fp)
	lw $t0, -1088($fp)
	sw $t0, -2424($fp)
	lw $t0, -2420($fp)
	lw $t1, -2424($fp)
	sub $t0, $t0, $t1
	sw $t0, -2428($fp)
	lw $t1, -2428($fp)
	li $t2, 0
	bne $t1, $t2, label231
	j label232
label231:
	li $t0, 0
	sw $t0, -2432($fp)
	li $t0, 0
	sw $t0, -2436($fp)
	li $t0, 5218
	sw $t0, -2440($fp)
	lw $t1, -2440($fp)
	li $t2, 0
	bne $t1, $t2, label236
	j label235
label235:
	li $t0, 1
	sw $t0, -2436($fp)
label236:
	li $t0, 0
	lw $t1, -2436($fp)
	sub $t0, $t0, $t1
	sw $t0, -2444($fp)
	li $t0, 0
	lw $t1, -2444($fp)
	sub $t0, $t0, $t1
	sw $t0, -2448($fp)
	li $t0, 0
	sw $t0, -2452($fp)
	li $t0, 56135
	sw $t0, -2456($fp)
	lw $t1, -2456($fp)
	li $t2, 0
	bne $t1, $t2, label238
	j label237
label237:
	li $t0, 1
	sw $t0, -2452($fp)
label238:
	lw $t0, -1100($fp)
	sw $t0, -2460($fp)
	lw $t0, -2452($fp)
	lw $t1, -2460($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2464($fp)
	lw $t0, -1148($fp)
	sw $t0, -2468($fp)
	li $t0, 0
	lw $t1, -2468($fp)
	sub $t0, $t0, $t1
	sw $t0, -2472($fp)
	lw $t0, -2464($fp)
	lw $t1, -2472($fp)
	mul $t0, $t0, $t1
	sw $t0, -2476($fp)
	lw $t1, -2448($fp)
	lw $t2, -2476($fp)
	beq $t1, $t2, label233
	j label234
label233:
	li $t0, 1
	sw $t0, -2432($fp)
label234:
	j label230
label232:
	lw $t0, -1136($fp)
	sw $t0, -2480($fp)
	lw $t1, -2480($fp)
	li $t2, 0
	bne $t1, $t2, label239
	j label240
label239:
	li $t0, 0
	sw $t0, -2484($fp)
	li $t0, 0
	sw $t0, -2488($fp)
	lw $t0, -812($fp)
	sw $t0, -2492($fp)
	lw $t0, -812($fp)
	sw $t0, -2496($fp)
	lw $t1, -2492($fp)
	lw $t2, -2496($fp)
	bge $t1, $t2, label244
	j label245
label244:
	li $t0, 1
	sw $t0, -2488($fp)
label245:
	lw $t0, 12($fp)
	sw $t0, -2500($fp)
	lw $t1, -2488($fp)
	lw $t2, -2500($fp)
	beq $t1, $t2, label242
	j label243
label242:
	li $t0, 1
	sw $t0, -2484($fp)
label243:
	li $t0, 0
	sw $t0, -2504($fp)
	addi $t0, $fp, -28
	sw $t0, -2508($fp)
	lw $t0, -560($fp)
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
	lw $t1, -2524($fp)
	li $t2, 0
	bne $t1, $t2, label247
	j label246
label246:
	li $t0, 1
	sw $t0, -2504($fp)
label247:
	lw $t0, 16($fp)
	sw $t0, -2528($fp)
	li $t0, 0
	sw $t0, -2532($fp)
	li $t0, 23810
	sw $t0, -2536($fp)
	li $t0, 23600
	sw $t0, -2540($fp)
	lw $t0, -2536($fp)
	lw $t1, -2540($fp)
	sub $t0, $t0, $t1
	sw $t0, -2544($fp)
	lw $t0, 12($fp)
	sw $t0, -2548($fp)
	lw $t1, -2544($fp)
	lw $t2, -2548($fp)
	blt $t1, $t2, label248
	j label249
label248:
	li $t0, 1
	sw $t0, -2532($fp)
label249:
	addi $sp, $sp, -4
	lw $t0, -2484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2532($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2552($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -2552($fp)
	sub $t0, $t0, $t1
	sw $t0, -2556($fp)
	j label241
label240:
	li $t0, 26348
	sw $t0, -2560($fp)
label241:
	lw $t0, -152($fp)
	sw $t0, -2564($fp)
	lw $t0, -2564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -2568($fp)
	li $t0, 0
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
	addi $t0, $fp, -28
	sw $t0, -2588($fp)
	li $t0, 1
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
	addi $t0, $fp, -28
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
	lw $t0, -2624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -2628($fp)
	li $t0, 3
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
	addi $t0, $fp, -28
	sw $t0, -2648($fp)
	li $t0, 4
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
	addi $t0, $fp, -28
	sw $t0, -2668($fp)
	li $t0, 5
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
	addi $t0, $fp, -68
	sw $t0, -2688($fp)
	li $t0, 0
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
	addi $t0, $fp, -68
	sw $t0, -2708($fp)
	li $t0, 1
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
	addi $t0, $fp, -68
	sw $t0, -2728($fp)
	li $t0, 2
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
	addi $t0, $fp, -68
	sw $t0, -2748($fp)
	li $t0, 3
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
	lw $t0, -2764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -2768($fp)
	li $t0, 4
	sw $t0, -2772($fp)
	li $t0, 4
	lw $t1, -2772($fp)
	mul $t0, $t0, $t1
	sw $t0, -2776($fp)
	lw $t0, -2776($fp)
	lw $t1, -2768($fp)
	add $t0, $t0, $t1
	sw $t0, -2780($fp)
	lw $t0, -2780($fp)
	lw $t1, 0($t0)
	sw $t1, -2784($fp)
	lw $t0, -2784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -2788($fp)
	li $t0, 5
	sw $t0, -2792($fp)
	li $t0, 4
	lw $t1, -2792($fp)
	mul $t0, $t0, $t1
	sw $t0, -2796($fp)
	lw $t0, -2796($fp)
	lw $t1, -2788($fp)
	add $t0, $t0, $t1
	sw $t0, -2800($fp)
	lw $t0, -2800($fp)
	lw $t1, 0($t0)
	sw $t1, -2804($fp)
	lw $t0, -2804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -2808($fp)
	li $t0, 6
	sw $t0, -2812($fp)
	li $t0, 4
	lw $t1, -2812($fp)
	mul $t0, $t0, $t1
	sw $t0, -2816($fp)
	lw $t0, -2816($fp)
	lw $t1, -2808($fp)
	add $t0, $t0, $t1
	sw $t0, -2820($fp)
	lw $t0, -2820($fp)
	lw $t1, 0($t0)
	sw $t1, -2824($fp)
	lw $t0, -2824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -2828($fp)
	li $t0, 7
	sw $t0, -2832($fp)
	li $t0, 4
	lw $t1, -2832($fp)
	mul $t0, $t0, $t1
	sw $t0, -2836($fp)
	lw $t0, -2836($fp)
	lw $t1, -2828($fp)
	add $t0, $t0, $t1
	sw $t0, -2840($fp)
	lw $t0, -2840($fp)
	lw $t1, 0($t0)
	sw $t1, -2844($fp)
	lw $t0, -2844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -2848($fp)
	li $t0, 8
	sw $t0, -2852($fp)
	li $t0, 4
	lw $t1, -2852($fp)
	mul $t0, $t0, $t1
	sw $t0, -2856($fp)
	lw $t0, -2856($fp)
	lw $t1, -2848($fp)
	add $t0, $t0, $t1
	sw $t0, -2860($fp)
	lw $t0, -2860($fp)
	lw $t1, 0($t0)
	sw $t1, -2864($fp)
	lw $t0, -2864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -2868($fp)
	li $t0, 9
	sw $t0, -2872($fp)
	li $t0, 4
	lw $t1, -2872($fp)
	mul $t0, $t0, $t1
	sw $t0, -2876($fp)
	lw $t0, -2876($fp)
	lw $t1, -2868($fp)
	add $t0, $t0, $t1
	sw $t0, -2880($fp)
	lw $t0, -2880($fp)
	lw $t1, 0($t0)
	sw $t1, -2884($fp)
	lw $t0, -2884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -548($fp)
	sw $t0, -2888($fp)
	lw $t0, -2888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	sw $t0, -2896($fp)
	lw $t0, -2896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -2900($fp)
	li $t0, 0
	sw $t0, -2904($fp)
	li $t0, 4
	lw $t1, -2904($fp)
	mul $t0, $t0, $t1
	sw $t0, -2908($fp)
	lw $t0, -2908($fp)
	lw $t1, -2900($fp)
	add $t0, $t0, $t1
	sw $t0, -2912($fp)
	lw $t0, -2912($fp)
	lw $t1, 0($t0)
	sw $t1, -2916($fp)
	lw $t0, -2916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -2920($fp)
	li $t0, 1
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
	lw $t0, -2936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -2940($fp)
	li $t0, 2
	sw $t0, -2944($fp)
	li $t0, 4
	lw $t1, -2944($fp)
	mul $t0, $t0, $t1
	sw $t0, -2948($fp)
	lw $t0, -2948($fp)
	lw $t1, -2940($fp)
	add $t0, $t0, $t1
	sw $t0, -2952($fp)
	lw $t0, -2952($fp)
	lw $t1, 0($t0)
	sw $t1, -2956($fp)
	lw $t0, -2956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -2960($fp)
	li $t0, 3
	sw $t0, -2964($fp)
	li $t0, 4
	lw $t1, -2964($fp)
	mul $t0, $t0, $t1
	sw $t0, -2968($fp)
	lw $t0, -2968($fp)
	lw $t1, -2960($fp)
	add $t0, $t0, $t1
	sw $t0, -2972($fp)
	lw $t0, -2972($fp)
	lw $t1, 0($t0)
	sw $t1, -2976($fp)
	lw $t0, -2976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -2980($fp)
	li $t0, 4
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
	lw $t0, -2996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -3000($fp)
	li $t0, 5
	sw $t0, -3004($fp)
	li $t0, 4
	lw $t1, -3004($fp)
	mul $t0, $t0, $t1
	sw $t0, -3008($fp)
	lw $t0, -3008($fp)
	lw $t1, -3000($fp)
	add $t0, $t0, $t1
	sw $t0, -3012($fp)
	lw $t0, -3012($fp)
	lw $t1, 0($t0)
	sw $t1, -3016($fp)
	lw $t0, -3016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -3020($fp)
	li $t0, 6
	sw $t0, -3024($fp)
	li $t0, 4
	lw $t1, -3024($fp)
	mul $t0, $t0, $t1
	sw $t0, -3028($fp)
	lw $t0, -3028($fp)
	lw $t1, -3020($fp)
	add $t0, $t0, $t1
	sw $t0, -3032($fp)
	lw $t0, -3032($fp)
	lw $t1, 0($t0)
	sw $t1, -3036($fp)
	lw $t0, -3036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -3040($fp)
	li $t0, 7
	sw $t0, -3044($fp)
	li $t0, 4
	lw $t1, -3044($fp)
	mul $t0, $t0, $t1
	sw $t0, -3048($fp)
	lw $t0, -3048($fp)
	lw $t1, -3040($fp)
	add $t0, $t0, $t1
	sw $t0, -3052($fp)
	lw $t0, -3052($fp)
	lw $t1, 0($t0)
	sw $t1, -3056($fp)
	lw $t0, -3056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -3060($fp)
	li $t0, 8
	sw $t0, -3064($fp)
	li $t0, 4
	lw $t1, -3064($fp)
	mul $t0, $t0, $t1
	sw $t0, -3068($fp)
	lw $t0, -3068($fp)
	lw $t1, -3060($fp)
	add $t0, $t0, $t1
	sw $t0, -3072($fp)
	lw $t0, -3072($fp)
	lw $t1, 0($t0)
	sw $t1, -3076($fp)
	lw $t0, -3076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -800($fp)
	sw $t0, -3080($fp)
	lw $t0, -3080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -812($fp)
	sw $t0, -3084($fp)
	lw $t0, -3084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -824($fp)
	sw $t0, -3088($fp)
	lw $t0, -3088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -836($fp)
	sw $t0, -3092($fp)
	lw $t0, -3092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -3096($fp)
	li $t0, 0
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
	addi $t0, $fp, -144
	sw $t0, -3116($fp)
	li $t0, 1
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
	addi $t0, $fp, -144
	sw $t0, -3136($fp)
	li $t0, 2
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
	addi $t0, $fp, -144
	sw $t0, -3156($fp)
	li $t0, 3
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
	lw $t0, -3172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -3176($fp)
	li $t0, 4
	sw $t0, -3180($fp)
	li $t0, 4
	lw $t1, -3180($fp)
	mul $t0, $t0, $t1
	sw $t0, -3184($fp)
	lw $t0, -3184($fp)
	lw $t1, -3176($fp)
	add $t0, $t0, $t1
	sw $t0, -3188($fp)
	lw $t0, -3188($fp)
	lw $t1, 0($t0)
	sw $t1, -3192($fp)
	lw $t0, -3192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -3196($fp)
	li $t0, 5
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
	lw $t0, -3212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -3216($fp)
	li $t0, 6
	sw $t0, -3220($fp)
	li $t0, 4
	lw $t1, -3220($fp)
	mul $t0, $t0, $t1
	sw $t0, -3224($fp)
	lw $t0, -3224($fp)
	lw $t1, -3216($fp)
	add $t0, $t0, $t1
	sw $t0, -3228($fp)
	lw $t0, -3228($fp)
	lw $t1, 0($t0)
	sw $t1, -3232($fp)
	lw $t0, -3232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -3236($fp)
	li $t0, 7
	sw $t0, -3240($fp)
	li $t0, 4
	lw $t1, -3240($fp)
	mul $t0, $t0, $t1
	sw $t0, -3244($fp)
	lw $t0, -3244($fp)
	lw $t1, -3236($fp)
	add $t0, $t0, $t1
	sw $t0, -3248($fp)
	lw $t0, -3248($fp)
	lw $t1, 0($t0)
	sw $t1, -3252($fp)
	lw $t0, -3252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -3256($fp)
	li $t0, 8
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
	lw $t0, -3272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -3276($fp)
	li $t0, 9
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
	lw $t0, -3292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1088($fp)
	sw $t0, -3296($fp)
	lw $t0, -3296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1100($fp)
	sw $t0, -3300($fp)
	lw $t0, -3300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1112($fp)
	sw $t0, -3304($fp)
	lw $t0, -3304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1124($fp)
	sw $t0, -3308($fp)
	lw $t0, -3308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1136($fp)
	sw $t0, -3312($fp)
	lw $t0, -3312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1148($fp)
	sw $t0, -3316($fp)
	lw $t0, -3316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1160($fp)
	sw $t0, -3320($fp)
	lw $t0, -3320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -3324($fp)
	lw $t0, -812($fp)
	sw $t0, -3328($fp)
	lw $t0, -3328($fp)
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	sw $t0, -3332($fp)
	li $t0, 4
	lw $t1, -3332($fp)
	mul $t0, $t0, $t1
	sw $t0, -3336($fp)
	lw $t0, -3336($fp)
	lw $t1, -3324($fp)
	add $t0, $t0, $t1
	sw $t0, -3340($fp)
	lw $t0, -3340($fp)
	lw $t1, 0($t0)
	sw $t1, -3344($fp)
	lw $t0, -1088($fp)
	sw $t0, -3348($fp)
	lw $t0, -3344($fp)
	lw $t1, -3348($fp)
	add $t0, $t0, $t1
	sw $t0, -3352($fp)
	lw $ra, -4($fp)
	lw $v0, -3352($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -5408
	li $t0, 21632
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	li $t0, 31946
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	li $t0, 42970
	sw $t0, -200($fp)
	addi $t0, $fp, -44
	sw $t0, -204($fp)
	li $t0, 0
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
	li $t0, 24302
	sw $t0, -224($fp)
	addi $t0, $fp, -44
	sw $t0, -228($fp)
	li $t0, 1
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
	li $t0, 60031
	sw $t0, -248($fp)
	addi $t0, $fp, -44
	sw $t0, -252($fp)
	li $t0, 2
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
	li $t0, 25759
	sw $t0, -272($fp)
	addi $t0, $fp, -44
	sw $t0, -276($fp)
	li $t0, 3
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
	li $t0, 18142
	sw $t0, -296($fp)
	addi $t0, $fp, -44
	sw $t0, -300($fp)
	li $t0, 4
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
	li $t0, 278
	sw $t0, -320($fp)
	addi $t0, $fp, -44
	sw $t0, -324($fp)
	li $t0, 5
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
	li $t0, 1298
	sw $t0, -344($fp)
	addi $t0, $fp, -44
	sw $t0, -348($fp)
	li $t0, 6
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
	li $t0, 56514
	sw $t0, -368($fp)
	addi $t0, $fp, -44
	sw $t0, -372($fp)
	li $t0, 7
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
	li $t0, 4805
	sw $t0, -392($fp)
	addi $t0, $fp, -44
	sw $t0, -396($fp)
	li $t0, 8
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
	li $t0, 28265
	sw $t0, -416($fp)
	addi $t0, $fp, -44
	sw $t0, -420($fp)
	li $t0, 9
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
	li $t0, 33811
	sw $t0, -440($fp)
	addi $t0, $fp, -52
	sw $t0, -444($fp)
	li $t0, 0
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
	li $t0, 21426
	sw $t0, -464($fp)
	addi $t0, $fp, -52
	sw $t0, -468($fp)
	li $t0, 1
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
	li $t0, 4129
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	li $t0, 61129
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	li $t0, 49759
	sw $t0, -512($fp)
	addi $t0, $fp, -84
	sw $t0, -516($fp)
	li $t0, 0
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
	li $t0, 34206
	sw $t0, -536($fp)
	addi $t0, $fp, -84
	sw $t0, -540($fp)
	li $t0, 1
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
	li $t0, 481
	sw $t0, -560($fp)
	addi $t0, $fp, -84
	sw $t0, -564($fp)
	li $t0, 2
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
	li $t0, 51264
	sw $t0, -584($fp)
	addi $t0, $fp, -84
	sw $t0, -588($fp)
	li $t0, 3
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
	li $t0, 25118
	sw $t0, -608($fp)
	addi $t0, $fp, -84
	sw $t0, -612($fp)
	li $t0, 4
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
	li $t0, 16843
	sw $t0, -632($fp)
	addi $t0, $fp, -84
	sw $t0, -636($fp)
	li $t0, 5
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
	li $t0, 19744
	sw $t0, -656($fp)
	addi $t0, $fp, -84
	sw $t0, -660($fp)
	li $t0, 6
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
	li $t0, 3264
	sw $t0, -680($fp)
	addi $t0, $fp, -84
	sw $t0, -684($fp)
	li $t0, 7
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
	li $t0, 41201
	sw $t0, -704($fp)
	addi $t0, $fp, -100
	sw $t0, -708($fp)
	li $t0, 0
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
	li $t0, 5706
	sw $t0, -728($fp)
	addi $t0, $fp, -100
	sw $t0, -732($fp)
	li $t0, 1
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
	li $t0, 8482
	sw $t0, -752($fp)
	addi $t0, $fp, -100
	sw $t0, -756($fp)
	li $t0, 2
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
	li $t0, 31800
	sw $t0, -776($fp)
	addi $t0, $fp, -100
	sw $t0, -780($fp)
	li $t0, 3
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
	li $t0, 29516
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -808($fp)
	li $t0, 32083
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -820($fp)
	li $t0, 58149
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	sw $t0, -832($fp)
	li $t0, 51148
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	sw $t0, -844($fp)
	li $t0, 64029
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	sw $t0, -856($fp)
	li $t0, 35583
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	sw $t0, -868($fp)
	li $t0, 9915
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	sw $t0, -880($fp)
	li $t0, 58524
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	sw $t0, -892($fp)
	li $t0, 61343
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	sw $t0, -904($fp)
	li $t0, 28057
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	sw $t0, -916($fp)
	li $t0, 58802
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	sw $t0, -928($fp)
	li $t0, 62641
	sw $t0, -932($fp)
	addi $t0, $fp, -128
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
	li $t0, 19035
	sw $t0, -956($fp)
	addi $t0, $fp, -128
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
	li $t0, 63607
	sw $t0, -980($fp)
	addi $t0, $fp, -128
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
	li $t0, 25370
	sw $t0, -1004($fp)
	addi $t0, $fp, -128
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
	li $t0, 52847
	sw $t0, -1028($fp)
	addi $t0, $fp, -128
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
	li $t0, 19497
	sw $t0, -1052($fp)
	addi $t0, $fp, -128
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
	li $t0, 29500
	sw $t0, -1076($fp)
	addi $t0, $fp, -128
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
	li $t0, 48440
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	sw $t0, -1108($fp)
	li $t0, 3721
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	sw $t0, -1120($fp)
	li $t0, 63706
	sw $t0, -1124($fp)
	addi $t0, $fp, -160
	sw $t0, -1128($fp)
	li $t0, 0
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
	li $t0, 48921
	sw $t0, -1148($fp)
	addi $t0, $fp, -160
	sw $t0, -1152($fp)
	li $t0, 1
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
	li $t0, 54985
	sw $t0, -1172($fp)
	addi $t0, $fp, -160
	sw $t0, -1176($fp)
	li $t0, 2
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
	li $t0, 23288
	sw $t0, -1196($fp)
	addi $t0, $fp, -160
	sw $t0, -1200($fp)
	li $t0, 3
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
	li $t0, 228
	sw $t0, -1220($fp)
	addi $t0, $fp, -160
	sw $t0, -1224($fp)
	li $t0, 4
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
	li $t0, 9193
	sw $t0, -1244($fp)
	addi $t0, $fp, -160
	sw $t0, -1248($fp)
	li $t0, 5
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
	li $t0, 26553
	sw $t0, -1268($fp)
	addi $t0, $fp, -160
	sw $t0, -1272($fp)
	li $t0, 6
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
	li $t0, 41429
	sw $t0, -1292($fp)
	addi $t0, $fp, -160
	sw $t0, -1296($fp)
	li $t0, 7
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
	li $t0, 14899
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	sw $t0, -1324($fp)
	li $t0, 35035
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	sw $t0, -1336($fp)
	li $t0, 7694
	sw $t0, -1340($fp)
	addi $t0, $fp, -172
	sw $t0, -1344($fp)
	li $t0, 0
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
	li $t0, 44415
	sw $t0, -1364($fp)
	addi $t0, $fp, -172
	sw $t0, -1368($fp)
	li $t0, 1
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
	li $t0, 1582
	sw $t0, -1388($fp)
	addi $t0, $fp, -172
	sw $t0, -1392($fp)
	li $t0, 2
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1400($fp)
	lw $t0, -1392($fp)
	lw $t1, -1400($fp)
	add $t0, $t0, $t1
	sw $t0, -1404($fp)
	lw $t0, -1388($fp)
	lw $t1, -1404($fp)
	sw $t0, 0($t1)
	lw $t0, -1404($fp)
	lw $t1, 0($t0)
	sw $t1, -1408($fp)
	li $t0, 307
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	sw $t0, -1416($fp)
	lw $t0, -1416($fp)
	sw $t0, -1420($fp)
	li $t0, 30028
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	sw $t0, -1432($fp)
	li $t0, 76
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	sw $t0, -1444($fp)
	li $t0, 35890
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	sw $t0, -1456($fp)
	li $t0, 0
	sw $t0, -1460($fp)
	li $t0, 0
	sw $t0, -1464($fp)
	jal f7
	sw $v0, -1468($fp)
	addi $sp, $sp, 4
	lw $t1, -1468($fp)
	li $t2, 0
	bne $t1, $t2, label255
	j label254
label254:
	li $t0, 1
	sw $t0, -1464($fp)
label255:
	li $t0, 0
	sw $t0, -1472($fp)
	lw $t0, -1428($fp)
	sw $t0, -1476($fp)
	lw $t1, -1476($fp)
	li $t2, 0
	bne $t1, $t2, label257
	j label256
label256:
	li $t0, 1
	sw $t0, -1472($fp)
label257:
	lw $t0, -1464($fp)
	lw $t1, -1472($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1480($fp)
	lw $t1, -1480($fp)
	li $t2, 0
	bne $t1, $t2, label253
	j label252
label253:
	addi $t0, $fp, -52
	sw $t0, -1484($fp)
	lw $t0, -852($fp)
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
	lw $t1, -1500($fp)
	li $t2, 0
	bne $t1, $t2, label250
	j label252
label252:
	addi $t0, $fp, -128
	sw $t0, -1504($fp)
	lw $t0, -492($fp)
	sw $t0, -1508($fp)
	lw $t0, -1104($fp)
	sw $t0, -1512($fp)
	lw $t0, -1508($fp)
	lw $t1, -1512($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1516($fp)
	li $t0, 4
	lw $t1, -1516($fp)
	mul $t0, $t0, $t1
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	lw $t1, -1504($fp)
	add $t0, $t0, $t1
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	lw $t1, 0($t0)
	sw $t1, -1528($fp)
	lw $t1, -1528($fp)
	li $t2, 0
	bne $t1, $t2, label250
	j label251
label250:
	li $t0, 1
	sw $t0, -1460($fp)
label251:
	li $t0, 39943
	sw $t0, -1532($fp)
	li $t0, 0
	sw $t0, -1536($fp)
	li $t0, 31697
	sw $t0, -1540($fp)
	lw $t0, -816($fp)
	sw $t0, -1544($fp)
	lw $t0, -1540($fp)
	lw $t1, -1544($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1548($fp)
	lw $t0, -1104($fp)
	sw $t0, -1552($fp)
	lw $t1, -1548($fp)
	lw $t2, -1552($fp)
	blt $t1, $t2, label261
	j label262
label261:
	li $t0, 1
	sw $t0, -1536($fp)
label262:
	li $t0, 0
	sw $t0, -1556($fp)
	addi $t0, $fp, -100
	sw $t0, -1560($fp)
	lw $t0, -504($fp)
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
	lw $t0, -864($fp)
	sw $t0, -1580($fp)
	lw $t1, -1576($fp)
	lw $t2, -1580($fp)
	beq $t1, $t2, label263
	j label264
label263:
	li $t0, 1
	sw $t0, -1556($fp)
label264:
	jal f6
	sw $v0, -1584($fp)
	addi $sp, $sp, 4
	li $t0, 58600
	sw $t0, -1588($fp)
	addi $sp, $sp, -4
	lw $t0, -1536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1588($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1592($fp)
	addi $sp, $sp, 20
	lw $t0, -1532($fp)
	lw $t1, -1592($fp)
	add $t0, $t0, $t1
	sw $t0, -1596($fp)
	lw $t1, -1596($fp)
	li $t2, 0
	bne $t1, $t2, label258
	j label259
label258:
	li $t0, 0
	sw $t0, -1600($fp)
	li $t0, 0
	sw $t0, -1604($fp)
	addi $t0, $fp, -172
	sw $t0, -1608($fp)
	li $t0, 0
	sw $t0, -1612($fp)
	lw $t0, -828($fp)
	sw $t0, -1616($fp)
	lw $t1, -1616($fp)
	li $t2, 0
	bne $t1, $t2, label269
	j label271
label271:
	li $t0, 2464
	sw $t0, -1620($fp)
	lw $t1, -1620($fp)
	li $t2, 0
	bne $t1, $t2, label269
	j label270
label269:
	li $t0, 1
	sw $t0, -1612($fp)
label270:
	li $t0, 4
	lw $t1, -1612($fp)
	mul $t0, $t0, $t1
	sw $t0, -1624($fp)
	lw $t0, -1624($fp)
	lw $t1, -1608($fp)
	add $t0, $t0, $t1
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	lw $t1, 0($t0)
	sw $t1, -1632($fp)
	lw $t1, -1632($fp)
	li $t2, 0
	bne $t1, $t2, label268
	j label267
label267:
	li $t0, 1
	sw $t0, -1604($fp)
label268:
	li $t0, 0
	sw $t0, -1636($fp)
	li $t0, 21499
	sw $t0, -1640($fp)
	lw $t0, -804($fp)
	sw $t0, -1644($fp)
	lw $t1, -1640($fp)
	lw $t2, -1644($fp)
	bgt $t1, $t2, label274
	j label273
label274:
	lw $t0, -912($fp)
	sw $t0, -1648($fp)
	lw $t1, -1648($fp)
	li $t2, 0
	bne $t1, $t2, label272
	j label273
label272:
	li $t0, 1
	sw $t0, -1636($fp)
label273:
	addi $t0, $fp, -84
	sw $t0, -1652($fp)
	lw $t0, -492($fp)
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
	lw $t0, -1320($fp)
	sw $t0, -1672($fp)
	li $t0, 28802
	sw $t0, -1676($fp)
	lw $t0, -1672($fp)
	lw $t1, -1676($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1680($fp)
	li $t0, 51867
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -1688($fp)
	addi $sp, $sp, -4
	lw $t0, -1668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1688($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1692($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -1696($fp)
	lw $t0, -192($fp)
	sw $t0, -1700($fp)
	lw $t0, -804($fp)
	sw $t0, -1704($fp)
	lw $t1, -1700($fp)
	lw $t2, -1704($fp)
	beq $t1, $t2, label275
	j label276
label275:
	li $t0, 1
	sw $t0, -1696($fp)
label276:
	jal f6
	sw $v0, -1708($fp)
	addi $sp, $sp, 4
	lw $t0, -852($fp)
	sw $t0, -1712($fp)
	lw $t0, -1708($fp)
	lw $t1, -1712($fp)
	sub $t0, $t0, $t1
	sw $t0, -1716($fp)
	addi $sp, $sp, -4
	lw $t0, -1636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1716($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1720($fp)
	addi $sp, $sp, 20
	lw $t1, -1604($fp)
	lw $t2, -1720($fp)
	blt $t1, $t2, label265
	j label266
label265:
	li $t0, 1
	sw $t0, -1600($fp)
label266:
	lw $ra, -4($fp)
	lw $v0, -1600($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label260
label259:
label277:
	li $t0, 49938
	sw $t0, -1724($fp)
	lw $t0, -1416($fp)
	sw $t0, -1728($fp)
	lw $t0, -1724($fp)
	lw $t1, -1728($fp)
	mul $t0, $t0, $t1
	sw $t0, -1732($fp)
	li $t0, 54173
	sw $t0, -1736($fp)
	lw $t0, -1732($fp)
	lw $t1, -1736($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1740($fp)
	lw $t1, -1740($fp)
	li $t2, 0
	bne $t1, $t2, label278
	j label279
label278:
	li $t0, 8810
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	sw $t0, -1800($fp)
	li $t0, 3900
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	sw $t0, -1812($fp)
	li $t0, 18137
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	sw $t0, -1824($fp)
	li $t0, 57250
	sw $t0, -1828($fp)
	addi $t0, $fp, -1768
	sw $t0, -1832($fp)
	li $t0, 0
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1840($fp)
	lw $t0, -1832($fp)
	lw $t1, -1840($fp)
	add $t0, $t0, $t1
	sw $t0, -1844($fp)
	lw $t0, -1828($fp)
	lw $t1, -1844($fp)
	sw $t0, 0($t1)
	lw $t0, -1844($fp)
	lw $t1, 0($t0)
	sw $t1, -1848($fp)
	li $t0, 7621
	sw $t0, -1852($fp)
	addi $t0, $fp, -1768
	sw $t0, -1856($fp)
	li $t0, 1
	sw $t0, -1860($fp)
	lw $t0, -1860($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1864($fp)
	lw $t0, -1856($fp)
	lw $t1, -1864($fp)
	add $t0, $t0, $t1
	sw $t0, -1868($fp)
	lw $t0, -1852($fp)
	lw $t1, -1868($fp)
	sw $t0, 0($t1)
	lw $t0, -1868($fp)
	lw $t1, 0($t0)
	sw $t1, -1872($fp)
	li $t0, 16307
	sw $t0, -1876($fp)
	addi $t0, $fp, -1768
	sw $t0, -1880($fp)
	li $t0, 2
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
	li $t0, 40636
	sw $t0, -1900($fp)
	addi $t0, $fp, -1768
	sw $t0, -1904($fp)
	li $t0, 3
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
	li $t0, 62606
	sw $t0, -1924($fp)
	addi $t0, $fp, -1768
	sw $t0, -1928($fp)
	li $t0, 4
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
	li $t0, 39596
	sw $t0, -1948($fp)
	addi $t0, $fp, -1768
	sw $t0, -1952($fp)
	li $t0, 5
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
	li $t0, 40864
	sw $t0, -1972($fp)
	addi $t0, $fp, -1768
	sw $t0, -1976($fp)
	li $t0, 6
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
	li $t0, 6263
	sw $t0, -1996($fp)
	addi $t0, $fp, -1788
	sw $t0, -2000($fp)
	li $t0, 0
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
	li $t0, 613
	sw $t0, -2020($fp)
	addi $t0, $fp, -1788
	sw $t0, -2024($fp)
	li $t0, 1
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
	li $t0, 16758
	sw $t0, -2044($fp)
	addi $t0, $fp, -1788
	sw $t0, -2048($fp)
	li $t0, 2
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
	li $t0, 21163
	sw $t0, -2068($fp)
	addi $t0, $fp, -1788
	sw $t0, -2072($fp)
	li $t0, 3
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
	li $t0, 35648
	sw $t0, -2092($fp)
	addi $t0, $fp, -1788
	sw $t0, -2096($fp)
	li $t0, 4
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
	lw $t0, -1796($fp)
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1808($fp)
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1820($fp)
	sw $t0, -2124($fp)
	lw $t0, -2124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1768
	sw $t0, -2128($fp)
	li $t0, 0
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
	addi $t0, $fp, -1768
	sw $t0, -2148($fp)
	li $t0, 1
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
	addi $t0, $fp, -1768
	sw $t0, -2168($fp)
	li $t0, 2
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
	addi $t0, $fp, -1768
	sw $t0, -2188($fp)
	li $t0, 3
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
	addi $t0, $fp, -1768
	sw $t0, -2208($fp)
	li $t0, 4
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
	addi $t0, $fp, -1768
	sw $t0, -2228($fp)
	li $t0, 5
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
	addi $t0, $fp, -1768
	sw $t0, -2248($fp)
	li $t0, 6
	sw $t0, -2252($fp)
	li $t0, 4
	lw $t1, -2252($fp)
	mul $t0, $t0, $t1
	sw $t0, -2256($fp)
	lw $t0, -2256($fp)
	lw $t1, -2248($fp)
	add $t0, $t0, $t1
	sw $t0, -2260($fp)
	lw $t0, -2260($fp)
	lw $t1, 0($t0)
	sw $t1, -2264($fp)
	lw $t0, -2264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1788
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
	lw $t0, -2284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1788
	sw $t0, -2288($fp)
	li $t0, 1
	sw $t0, -2292($fp)
	li $t0, 4
	lw $t1, -2292($fp)
	mul $t0, $t0, $t1
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	lw $t1, -2288($fp)
	add $t0, $t0, $t1
	sw $t0, -2300($fp)
	lw $t0, -2300($fp)
	lw $t1, 0($t0)
	sw $t1, -2304($fp)
	lw $t0, -2304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1788
	sw $t0, -2308($fp)
	li $t0, 2
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
	addi $t0, $fp, -1788
	sw $t0, -2328($fp)
	li $t0, 3
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
	addi $t0, $fp, -1788
	sw $t0, -2348($fp)
	li $t0, 4
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
	li $t0, 0
	sw $t0, -2372($fp)
	li $t0, 24452
	sw $t0, -2376($fp)
	lw $t1, -2376($fp)
	li $t2, 0
	bne $t1, $t2, label282
	j label283
label282:
	li $t0, 1
	sw $t0, -2372($fp)
label283:
	lw $t0, -1116($fp)
	sw $t0, -2380($fp)
	lw $t0, -2372($fp)
	lw $t1, -2380($fp)
	mul $t0, $t0, $t1
	sw $t0, -2384($fp)
	li $t0, 0
	lw $t1, -2384($fp)
	sub $t0, $t0, $t1
	sw $t0, -2388($fp)
	lw $t1, -2388($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label280
label280:
	li $t0, 1
	sw $t0, -2368($fp)
label281:
	lw $ra, -4($fp)
	lw $v0, -2368($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label284:
	li $t0, 0
	sw $t0, -2392($fp)
	lw $t0, -1104($fp)
	sw $t0, -2396($fp)
	lw $t1, -2396($fp)
	li $t2, 0
	bne $t1, $t2, label288
	j label289
label289:
	lw $t0, -1796($fp)
	sw $t0, -2400($fp)
	lw $t1, -2400($fp)
	li $t2, 0
	bne $t1, $t2, label287
	j label288
label287:
	li $t0, 1
	sw $t0, -2392($fp)
label288:
	li $t0, 0
	sw $t0, -2404($fp)
	lw $t0, -180($fp)
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -2412($fp)
	lw $t0, -924($fp)
	sw $t0, -2416($fp)
	li $t0, 0
	sw $t0, -2420($fp)
	li $t0, 24759
	sw $t0, -2424($fp)
	li $t0, 30070
	sw $t0, -2428($fp)
	lw $t0, -2424($fp)
	lw $t1, -2428($fp)
	sub $t0, $t0, $t1
	sw $t0, -2432($fp)
	lw $t1, -2432($fp)
	li $t2, 0
	bne $t1, $t2, label294
	j label293
label294:
	li $t0, 37307
	sw $t0, -2436($fp)
	lw $t1, -2436($fp)
	li $t2, 0
	bne $t1, $t2, label292
	j label293
label292:
	li $t0, 1
	sw $t0, -2420($fp)
label293:
	addi $t0, $fp, -172
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
	li $t0, 0
	lw $t1, -2456($fp)
	sub $t0, $t0, $t1
	sw $t0, -2460($fp)
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
	lw $t0, -2460($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2464($fp)
	addi $sp, $sp, 20
	li $t0, 60649
	sw $t0, -2468($fp)
	lw $t1, -2464($fp)
	lw $t2, -2468($fp)
	blt $t1, $t2, label290
	j label291
label290:
	li $t0, 1
	sw $t0, -2404($fp)
label291:
	addi $sp, $sp, -4
	lw $t0, -2392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2404($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -2472($fp)
	addi $sp, $sp, 12
	lw $t0, -2472($fp)
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	sw $t0, -2476($fp)
	lw $t1, -2476($fp)
	li $t2, 0
	bne $t1, $t2, label285
	j label286
label285:
	addi $t0, $fp, -44
	sw $t0, -2480($fp)
	li $t0, 5
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
	lw $t0, -504($fp)
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	sw $t0, -2504($fp)
	li $t0, 0
	sw $t0, -2508($fp)
	lw $t0, -180($fp)
	sw $t0, -2512($fp)
	li $t0, 0
	lw $t1, -2512($fp)
	sub $t0, $t0, $t1
	sw $t0, -2516($fp)
	li $t0, 4477
	sw $t0, -2520($fp)
	lw $t1, -2516($fp)
	lw $t2, -2520($fp)
	beq $t1, $t2, label298
	j label299
label298:
	li $t0, 1
	sw $t0, -2508($fp)
label299:
	addi $sp, $sp, -4
	lw $t0, -2496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2508($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2524($fp)
	addi $sp, $sp, 16
	lw $t0, 4($fp)
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	sw $t0, -2532($fp)
	li $t0, 0
	sw $t0, -2536($fp)
	li $t0, 16702
	sw $t0, -2540($fp)
	lw $t1, -2540($fp)
	li $t2, 0
	bne $t1, $t2, label301
	j label300
label300:
	li $t0, 1
	sw $t0, -2536($fp)
label301:
	li $t0, 55613
	sw $t0, -2544($fp)
	lw $t0, -2536($fp)
	lw $t1, -2544($fp)
	add $t0, $t0, $t1
	sw $t0, -2548($fp)
	li $t0, 0
	sw $t0, -2552($fp)
	li $t0, 6941
	sw $t0, -2556($fp)
	lw $t1, -2556($fp)
	li $t2, 0
	bne $t1, $t2, label303
	j label302
label302:
	li $t0, 1
	sw $t0, -2552($fp)
label303:
	lw $t0, -1440($fp)
	sw $t0, -2560($fp)
	lw $t0, -2552($fp)
	lw $t1, -2560($fp)
	mul $t0, $t0, $t1
	sw $t0, -2564($fp)
	addi $t0, $fp, -1768
	sw $t0, -2568($fp)
	lw $t0, -924($fp)
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
	addi $sp, $sp, -4
	lw $t0, -2532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2584($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2588($fp)
	addi $sp, $sp, 20
	lw $t0, -2524($fp)
	lw $t1, -2588($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2592($fp)
	li $t0, 0
	lw $t1, -2592($fp)
	sub $t0, $t0, $t1
	sw $t0, -2596($fp)
	lw $t0, -2596($fp)
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	sw $t0, -2600($fp)
	lw $t1, -2600($fp)
	li $t2, 0
	bne $t1, $t2, label295
	j label296
label295:
label304:
	li $t0, 0
	sw $t0, -2604($fp)
	lw $t0, -1820($fp)
	sw $t0, -2608($fp)
	li $t0, 28441
	sw $t0, -2612($fp)
	lw $t0, -2608($fp)
	lw $t1, -2612($fp)
	sub $t0, $t0, $t1
	sw $t0, -2616($fp)
	li $t0, 1105
	sw $t0, -2620($fp)
	lw $t1, -2616($fp)
	lw $t2, -2620($fp)
	ble $t1, $t2, label307
	j label308
label307:
	li $t0, 1
	sw $t0, -2604($fp)
label308:
	addi $t0, $fp, -1788
	sw $t0, -2624($fp)
	li $t0, 0
	sw $t0, -2628($fp)
	lw $t0, -492($fp)
	sw $t0, -2632($fp)
	lw $t0, -180($fp)
	sw $t0, -2636($fp)
	lw $t1, -2632($fp)
	lw $t2, -2636($fp)
	bgt $t1, $t2, label309
	j label310
label309:
	li $t0, 1
	sw $t0, -2628($fp)
label310:
	li $t0, 4
	lw $t1, -2628($fp)
	mul $t0, $t0, $t1
	sw $t0, -2640($fp)
	lw $t0, -2640($fp)
	lw $t1, -2624($fp)
	add $t0, $t0, $t1
	sw $t0, -2644($fp)
	lw $t0, -2644($fp)
	lw $t1, 0($t0)
	sw $t1, -2648($fp)
	lw $t1, -2604($fp)
	lw $t2, -2648($fp)
	bne $t1, $t2, label305
	j label306
label305:
	addi $t0, $fp, -44
	sw $t0, -2652($fp)
	li $t0, 3
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
	li $t0, 5005
	sw $t0, -2672($fp)
	lw $t0, -2668($fp)
	lw $t1, -2672($fp)
	mul $t0, $t0, $t1
	sw $t0, -2676($fp)
	lw $t1, -2676($fp)
	li $t2, 0
	bne $t1, $t2, label315
	j label314
label315:
	lw $t0, -504($fp)
	sw $t0, -2680($fp)
	lw $t1, -2680($fp)
	li $t2, 0
	bne $t1, $t2, label311
	j label314
label314:
	li $t0, 62387
	sw $t0, -2684($fp)
	lw $t1, -2684($fp)
	li $t2, 0
	bne $t1, $t2, label311
	j label312
label311:
	li $t0, 0
	sw $t0, -2688($fp)
	jal f7
	sw $v0, -2692($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -2696($fp)
	li $t0, 28966
	sw $t0, -2700($fp)
	li $t0, 12626
	sw $t0, -2704($fp)
	lw $t0, -2700($fp)
	lw $t1, -2704($fp)
	mul $t0, $t0, $t1
	sw $t0, -2708($fp)
	li $t0, 0
	lw $t1, -2708($fp)
	sub $t0, $t0, $t1
	sw $t0, -2712($fp)
	lw $t1, -2712($fp)
	li $t2, 0
	bne $t1, $t2, label319
	j label318
label318:
	li $t0, 1
	sw $t0, -2696($fp)
label319:
	lw $t1, -2692($fp)
	lw $t2, -2696($fp)
	bgt $t1, $t2, label316
	j label317
label316:
	li $t0, 1
	sw $t0, -2688($fp)
label317:
	j label313
label312:
	li $t0, 13159
	sw $t0, -2716($fp)
label313:
	j label304
label306:
	j label297
label296:
	li $t0, 4066
	sw $t0, -2720($fp)
	lw $t0, -2720($fp)
	sw $t0, -2724($fp)
	lw $t0, -2724($fp)
	sw $t0, -2728($fp)
	li $t0, 0
	sw $t0, -2732($fp)
	lw $t0, -2724($fp)
	sw $t0, -2736($fp)
	lw $t1, -2736($fp)
	li $t2, 0
	bne $t1, $t2, label321
	j label320
label320:
	li $t0, 1
	sw $t0, -2732($fp)
label321:
	lw $t0, 4($fp)
	sw $t0, -2740($fp)
	lw $t0, -2732($fp)
	lw $t1, -2740($fp)
	sub $t0, $t0, $t1
	sw $t0, -2744($fp)
label297:
	j label284
label286:
	lw $t0, -1796($fp)
	sw $t0, -2748($fp)
	lw $t0, -2748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1808($fp)
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1820($fp)
	sw $t0, -2756($fp)
	lw $t0, -2756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1768
	sw $t0, -2760($fp)
	li $t0, 0
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
	addi $t0, $fp, -1768
	sw $t0, -2780($fp)
	li $t0, 1
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
	lw $t0, -2796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1768
	sw $t0, -2800($fp)
	li $t0, 2
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
	lw $t0, -2816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1768
	sw $t0, -2820($fp)
	li $t0, 3
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
	lw $t0, -2836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1768
	sw $t0, -2840($fp)
	li $t0, 4
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
	lw $t0, -2856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1768
	sw $t0, -2860($fp)
	li $t0, 5
	sw $t0, -2864($fp)
	li $t0, 4
	lw $t1, -2864($fp)
	mul $t0, $t0, $t1
	sw $t0, -2868($fp)
	lw $t0, -2868($fp)
	lw $t1, -2860($fp)
	add $t0, $t0, $t1
	sw $t0, -2872($fp)
	lw $t0, -2872($fp)
	lw $t1, 0($t0)
	sw $t1, -2876($fp)
	lw $t0, -2876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1768
	sw $t0, -2880($fp)
	li $t0, 6
	sw $t0, -2884($fp)
	li $t0, 4
	lw $t1, -2884($fp)
	mul $t0, $t0, $t1
	sw $t0, -2888($fp)
	lw $t0, -2888($fp)
	lw $t1, -2880($fp)
	add $t0, $t0, $t1
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	lw $t1, 0($t0)
	sw $t1, -2896($fp)
	lw $t0, -2896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1788
	sw $t0, -2900($fp)
	li $t0, 0
	sw $t0, -2904($fp)
	li $t0, 4
	lw $t1, -2904($fp)
	mul $t0, $t0, $t1
	sw $t0, -2908($fp)
	lw $t0, -2908($fp)
	lw $t1, -2900($fp)
	add $t0, $t0, $t1
	sw $t0, -2912($fp)
	lw $t0, -2912($fp)
	lw $t1, 0($t0)
	sw $t1, -2916($fp)
	lw $t0, -2916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1788
	sw $t0, -2920($fp)
	li $t0, 1
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
	lw $t0, -2936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1788
	sw $t0, -2940($fp)
	li $t0, 2
	sw $t0, -2944($fp)
	li $t0, 4
	lw $t1, -2944($fp)
	mul $t0, $t0, $t1
	sw $t0, -2948($fp)
	lw $t0, -2948($fp)
	lw $t1, -2940($fp)
	add $t0, $t0, $t1
	sw $t0, -2952($fp)
	lw $t0, -2952($fp)
	lw $t1, 0($t0)
	sw $t1, -2956($fp)
	lw $t0, -2956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1788
	sw $t0, -2960($fp)
	li $t0, 3
	sw $t0, -2964($fp)
	li $t0, 4
	lw $t1, -2964($fp)
	mul $t0, $t0, $t1
	sw $t0, -2968($fp)
	lw $t0, -2968($fp)
	lw $t1, -2960($fp)
	add $t0, $t0, $t1
	sw $t0, -2972($fp)
	lw $t0, -2972($fp)
	lw $t1, 0($t0)
	sw $t1, -2976($fp)
	lw $t0, -2976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1788
	sw $t0, -2980($fp)
	li $t0, 4
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
	lw $t0, -2996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3000($fp)
	li $t0, 44930
	sw $t0, -3004($fp)
	lw $t0, -888($fp)
	sw $t0, -3008($fp)
	lw $t0, -3004($fp)
	lw $t1, -3008($fp)
	mul $t0, $t0, $t1
	sw $t0, -3012($fp)
	lw $t1, -3012($fp)
	li $t2, 0
	bne $t1, $t2, label324
	j label323
label324:
	li $t0, 15959
	sw $t0, -3016($fp)
	lw $t1, -3016($fp)
	li $t2, 0
	bne $t1, $t2, label322
	j label323
label322:
	li $t0, 1
	sw $t0, -3000($fp)
label323:
	lw $t0, 8($fp)
	sw $t0, -3020($fp)
	li $t0, 0
	sw $t0, -3024($fp)
	lw $t0, -1116($fp)
	sw $t0, -3028($fp)
	li $t0, 9696
	sw $t0, -3032($fp)
	lw $t0, -3028($fp)
	lw $t1, -3032($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3036($fp)
	li $t0, 52755
	sw $t0, -3040($fp)
	lw $t1, -3036($fp)
	lw $t2, -3040($fp)
	bge $t1, $t2, label325
	j label326
label325:
	li $t0, 1
	sw $t0, -3024($fp)
label326:
	addi $sp, $sp, -4
	lw $t0, -3000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3024($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3044($fp)
	addi $sp, $sp, 16
	lw $ra, -4($fp)
	lw $v0, -3044($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label327:
	addi $t0, $fp, -100
	sw $t0, -3048($fp)
	li $t0, 0
	sw $t0, -3052($fp)
	li $t0, 53368
	sw $t0, -3056($fp)
	lw $t1, -3056($fp)
	li $t2, 0
	bne $t1, $t2, label332
	j label331
label332:
	li $t0, 61688
	sw $t0, -3060($fp)
	lw $t1, -3060($fp)
	li $t2, 0
	bne $t1, $t2, label330
	j label331
label330:
	li $t0, 1
	sw $t0, -3052($fp)
label331:
	lw $t0, -3052($fp)
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -3064($fp)
	li $t0, 4
	lw $t1, -3064($fp)
	mul $t0, $t0, $t1
	sw $t0, -3068($fp)
	lw $t0, -3068($fp)
	lw $t1, -3048($fp)
	add $t0, $t0, $t1
	sw $t0, -3072($fp)
	lw $t0, -3072($fp)
	lw $t1, 0($t0)
	sw $t1, -3076($fp)
	lw $t1, -3076($fp)
	li $t2, 0
	bne $t1, $t2, label328
	j label329
label328:
	lw $t0, -852($fp)
	sw $t0, -3080($fp)
	addi $t0, $fp, -128
	sw $t0, -3084($fp)
	li $t0, 37122
	sw $t0, -3088($fp)
	lw $t0, -1452($fp)
	sw $t0, -3092($fp)
	lw $t0, -3088($fp)
	lw $t1, -3092($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3096($fp)
	li $t0, 4
	lw $t1, -3096($fp)
	mul $t0, $t0, $t1
	sw $t0, -3100($fp)
	lw $t0, -3100($fp)
	lw $t1, -3084($fp)
	add $t0, $t0, $t1
	sw $t0, -3104($fp)
	lw $t0, -3104($fp)
	lw $t1, 0($t0)
	sw $t1, -3108($fp)
	lw $t0, -3080($fp)
	lw $t1, -3108($fp)
	sub $t0, $t0, $t1
	sw $t0, -3112($fp)
	j label327
label329:
	j label277
label279:
label260:
label333:
	addi $t0, $fp, -160
	sw $t0, -3116($fp)
	li $t0, 0
	sw $t0, -3120($fp)
	li $t0, 23480
	sw $t0, -3124($fp)
	lw $t0, -1104($fp)
	sw $t0, -3128($fp)
	lw $t1, -3124($fp)
	lw $t2, -3128($fp)
	beq $t1, $t2, label336
	j label337
label336:
	li $t0, 1
	sw $t0, -3120($fp)
label337:
	li $t0, 4
	lw $t1, -3120($fp)
	mul $t0, $t0, $t1
	sw $t0, -3132($fp)
	lw $t0, -3132($fp)
	lw $t1, -3116($fp)
	add $t0, $t0, $t1
	sw $t0, -3136($fp)
	lw $t0, -3136($fp)
	lw $t1, 0($t0)
	sw $t1, -3140($fp)
	lw $t0, -912($fp)
	sw $t0, -3144($fp)
	lw $t0, -3140($fp)
	lw $t1, -3144($fp)
	add $t0, $t0, $t1
	sw $t0, -3148($fp)
	li $t0, 0
	sw $t0, -3152($fp)
	addi $t0, $fp, -172
	sw $t0, -3156($fp)
	lw $t0, -1332($fp)
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
	li $t0, 20604
	sw $t0, -3176($fp)
	lw $t1, -3172($fp)
	lw $t2, -3176($fp)
	bge $t1, $t2, label338
	j label339
label338:
	li $t0, 1
	sw $t0, -3152($fp)
label339:
	lw $t1, -3148($fp)
	lw $t2, -3152($fp)
	bne $t1, $t2, label334
	j label335
label334:
	li $t0, 0
	sw $t0, -3180($fp)
	addi $t0, $fp, -44
	sw $t0, -3184($fp)
	jal f7
	sw $v0, -3188($fp)
	addi $sp, $sp, 4
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
	li $t0, 0
	sw $t0, -3204($fp)
	li $t0, 60711
	sw $t0, -3208($fp)
	li $t0, 0
	lw $t1, -3208($fp)
	sub $t0, $t0, $t1
	sw $t0, -3212($fp)
	li $t0, 45363
	sw $t0, -3216($fp)
	lw $t1, -3212($fp)
	lw $t2, -3216($fp)
	blt $t1, $t2, label342
	j label343
label342:
	li $t0, 1
	sw $t0, -3204($fp)
label343:
	jal f6
	sw $v0, -3220($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -3224($fp)
	lw $t0, -1320($fp)
	sw $t0, -3228($fp)
	li $t0, 37165
	sw $t0, -3232($fp)
	lw $t0, -3228($fp)
	lw $t1, -3232($fp)
	sub $t0, $t0, $t1
	sw $t0, -3236($fp)
	lw $t1, -3236($fp)
	li $t2, 0
	bne $t1, $t2, label344
	j label346
label346:
	lw $t0, -900($fp)
	sw $t0, -3240($fp)
	lw $t1, -3240($fp)
	li $t2, 0
	bne $t1, $t2, label344
	j label345
label344:
	li $t0, 1
	sw $t0, -3224($fp)
label345:
	li $t0, 0
	sw $t0, -3244($fp)
	lw $t0, -876($fp)
	sw $t0, -3248($fp)
	li $t0, 0
	lw $t1, -3248($fp)
	sub $t0, $t0, $t1
	sw $t0, -3252($fp)
	lw $t1, -3252($fp)
	li $t2, 0
	bne $t1, $t2, label348
	j label347
label347:
	li $t0, 1
	sw $t0, -3244($fp)
label348:
	addi $sp, $sp, -4
	lw $t0, -3204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3244($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3256($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -3256($fp)
	sub $t0, $t0, $t1
	sw $t0, -3260($fp)
	lw $t1, -3200($fp)
	lw $t2, -3260($fp)
	bge $t1, $t2, label340
	j label341
label340:
	li $t0, 1
	sw $t0, -3180($fp)
label341:
	lw $ra, -4($fp)
	lw $v0, -3180($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label333
label335:
	li $t0, 1699
	sw $t0, -3264($fp)
	lw $t0, -3264($fp)
	sw $t0, -3268($fp)
	lw $t0, -3268($fp)
	sw $t0, -3272($fp)
	li $t0, 32482
	sw $t0, -3276($fp)
	lw $t0, -3276($fp)
	sw $t0, -3280($fp)
	lw $t0, -3280($fp)
	sw $t0, -3284($fp)
	li $t0, 40477
	sw $t0, -3288($fp)
	lw $t0, -3288($fp)
	sw $t0, -3292($fp)
	lw $t0, -3292($fp)
	sw $t0, -3296($fp)
	li $t0, 6177
	sw $t0, -3300($fp)
	lw $t0, -3300($fp)
	sw $t0, -3304($fp)
	lw $t0, -3304($fp)
	sw $t0, -3308($fp)
	li $t0, 62854
	sw $t0, -3312($fp)
	lw $t0, -3312($fp)
	sw $t0, -3316($fp)
	lw $t0, -3316($fp)
	sw $t0, -3320($fp)
	li $t0, 1752
	sw $t0, -3324($fp)
	lw $t0, -3324($fp)
	sw $t0, -3328($fp)
	lw $t0, -3328($fp)
	sw $t0, -3332($fp)
	li $t0, 13118
	sw $t0, -3336($fp)
	lw $t0, -3336($fp)
	sw $t0, -3340($fp)
	lw $t0, -3340($fp)
	sw $t0, -3344($fp)
	li $t0, 14020
	sw $t0, -3348($fp)
	lw $t0, -3348($fp)
	sw $t0, -3352($fp)
	lw $t0, -3352($fp)
	sw $t0, -3356($fp)
	li $t0, 57365
	sw $t0, -3360($fp)
	lw $t0, -3360($fp)
	sw $t0, -3364($fp)
	lw $t0, -3364($fp)
	sw $t0, -3368($fp)
	lw $t0, -3268($fp)
	sw $t0, -3372($fp)
	lw $t0, -3372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3280($fp)
	sw $t0, -3376($fp)
	lw $t0, -3376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3292($fp)
	sw $t0, -3380($fp)
	lw $t0, -3380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3304($fp)
	sw $t0, -3384($fp)
	lw $t0, -3384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3316($fp)
	sw $t0, -3388($fp)
	lw $t0, -3388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3328($fp)
	sw $t0, -3392($fp)
	lw $t0, -3392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3340($fp)
	sw $t0, -3396($fp)
	lw $t0, -3396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3352($fp)
	sw $t0, -3400($fp)
	lw $t0, -3400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3364($fp)
	sw $t0, -3404($fp)
	lw $t0, -3404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3408($fp)
	addi $t0, $fp, -100
	sw $t0, -3412($fp)
	lw $t0, -504($fp)
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
	li $t0, 36080
	sw $t0, -3432($fp)
	lw $t1, -3428($fp)
	lw $t2, -3432($fp)
	bne $t1, $t2, label349
	j label350
label349:
	li $t0, 1
	sw $t0, -3408($fp)
label350:
	li $t0, 15125
	sw $t0, -3436($fp)
	li $t0, 0
	sw $t0, -3440($fp)
	li $t0, 0
	sw $t0, -3444($fp)
	lw $t0, -804($fp)
	sw $t0, -3448($fp)
	li $t0, 41559
	sw $t0, -3452($fp)
	lw $t1, -3448($fp)
	lw $t2, -3452($fp)
	blt $t1, $t2, label353
	j label354
label353:
	li $t0, 1
	sw $t0, -3444($fp)
label354:
	lw $t0, -3280($fp)
	sw $t0, -3456($fp)
	lw $t1, -3444($fp)
	lw $t2, -3456($fp)
	bge $t1, $t2, label351
	j label352
label351:
	li $t0, 1
	sw $t0, -3440($fp)
label352:
	lw $t0, -1428($fp)
	sw $t0, -3460($fp)
	addi $sp, $sp, -4
	lw $t0, -3408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3460($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3464($fp)
	addi $sp, $sp, 20
	lw $t0, -3464($fp)
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	sw $t0, -3468($fp)
	lw $ra, -4($fp)
	lw $v0, -3468($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label355:
	jal f7
	sw $v0, -3472($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -3472($fp)
	sub $t0, $t0, $t1
	sw $t0, -3476($fp)
	li $t0, 0
	sw $t0, -3480($fp)
	li $t0, 13275
	sw $t0, -3484($fp)
	li $t0, 20130
	sw $t0, -3488($fp)
	lw $t0, -3484($fp)
	lw $t1, -3488($fp)
	mul $t0, $t0, $t1
	sw $t0, -3492($fp)
	li $t0, 1
	sw $t0, -3496($fp)
	lw $t0, -3492($fp)
	lw $t1, -3496($fp)
	mul $t0, $t0, $t1
	sw $t0, -3500($fp)
	li $t0, 42241
	sw $t0, -3504($fp)
	li $t0, 32756
	sw $t0, -3508($fp)
	lw $t0, -3504($fp)
	lw $t1, -3508($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3512($fp)
	lw $t1, -3500($fp)
	lw $t2, -3512($fp)
	blt $t1, $t2, label358
	j label359
label358:
	li $t0, 1
	sw $t0, -3480($fp)
label359:
	lw $t1, -3476($fp)
	lw $t2, -3480($fp)
	bne $t1, $t2, label356
	j label357
label356:
label360:
	jal f7
	sw $v0, -3516($fp)
	addi $sp, $sp, 4
	lw $t1, -3516($fp)
	li $t2, 0
	bne $t1, $t2, label361
	j label362
label361:
	li $t0, 0
	sw $t0, -3520($fp)
	lw $t0, 4($fp)
	sw $t0, -3524($fp)
	lw $t0, -1104($fp)
	sw $t0, -3528($fp)
	li $t0, 46090
	sw $t0, -3532($fp)
	lw $t0, -3528($fp)
	lw $t1, -3532($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3536($fp)
	li $t0, 46307
	sw $t0, -3540($fp)
	lw $t0, -3536($fp)
	lw $t1, -3540($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3544($fp)
	li $t0, 42452
	sw $t0, -3548($fp)
	li $t0, 0
	lw $t1, -3548($fp)
	sub $t0, $t0, $t1
	sw $t0, -3552($fp)
	lw $t0, -3544($fp)
	lw $t1, -3552($fp)
	mul $t0, $t0, $t1
	sw $t0, -3556($fp)
	lw $t1, -3524($fp)
	lw $t2, -3556($fp)
	bge $t1, $t2, label363
	j label364
label363:
	li $t0, 1
	sw $t0, -3520($fp)
label364:
	lw $ra, -4($fp)
	lw $v0, -3520($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label360
label362:
	j label355
label357:
	lw $t0, -504($fp)
	sw $t0, -3560($fp)
	li $t0, 33309
	sw $t0, -3564($fp)
	lw $t0, -3560($fp)
	lw $t1, -3564($fp)
	mul $t0, $t0, $t1
	sw $t0, -3568($fp)
	li $t0, 25701
	sw $t0, -3572($fp)
	li $t0, 58412
	sw $t0, -3576($fp)
	lw $t0, -3572($fp)
	lw $t1, -3576($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3580($fp)
	lw $t0, -1428($fp)
	sw $t0, -3584($fp)
	li $t0, 0
	lw $t1, -3584($fp)
	sub $t0, $t0, $t1
	sw $t0, -3588($fp)
	lw $t0, -3580($fp)
	lw $t1, -3588($fp)
	mul $t0, $t0, $t1
	sw $t0, -3592($fp)
	li $t0, 0
	lw $t1, -3592($fp)
	sub $t0, $t0, $t1
	sw $t0, -3596($fp)
	lw $t0, -3568($fp)
	lw $t1, -3596($fp)
	mul $t0, $t0, $t1
	sw $t0, -3600($fp)
label365:
	lw $t0, -1116($fp)
	sw $t0, -3604($fp)
	lw $t1, -3604($fp)
	li $t2, 0
	bne $t1, $t2, label366
	j label368
label368:
	lw $t0, -1332($fp)
	sw $t0, -3608($fp)
	lw $t1, -3608($fp)
	li $t2, 0
	bne $t1, $t2, label366
	j label367
label366:
	addi $t0, $fp, -100
	sw $t0, -3612($fp)
	li $t0, 2
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
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	sw $t0, -3632($fp)
	j label365
label367:
	addi $t0, $fp, -128
	sw $t0, -3636($fp)
	addi $t0, $fp, -128
	sw $t0, -3640($fp)
	lw $t0, -852($fp)
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
	li $t0, 29998
	sw $t0, -3660($fp)
	lw $t0, -3656($fp)
	lw $t1, -3660($fp)
	mul $t0, $t0, $t1
	sw $t0, -3664($fp)
	li $t0, 4
	lw $t1, -3664($fp)
	mul $t0, $t0, $t1
	sw $t0, -3668($fp)
	lw $t0, -3668($fp)
	lw $t1, -3636($fp)
	add $t0, $t0, $t1
	sw $t0, -3672($fp)
	lw $t0, -3672($fp)
	lw $t1, 0($t0)
	sw $t1, -3676($fp)
	lw $t1, -3676($fp)
	li $t2, 0
	bne $t1, $t2, label369
	j label370
label369:
	li $t0, 0
	sw $t0, -3680($fp)
	lw $t0, -3340($fp)
	sw $t0, -3684($fp)
	addi $t0, $fp, -44
	sw $t0, -3688($fp)
	lw $t0, -816($fp)
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
	lw $t0, -492($fp)
	sw $t0, -3708($fp)
	lw $t0, -3704($fp)
	lw $t1, -3708($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3712($fp)
	li $t0, 0
	lw $t1, -3712($fp)
	sub $t0, $t0, $t1
	sw $t0, -3716($fp)
	lw $t0, -3684($fp)
	lw $t1, -3716($fp)
	mul $t0, $t0, $t1
	sw $t0, -3720($fp)
	li $t0, 0
	lw $t1, -3720($fp)
	sub $t0, $t0, $t1
	sw $t0, -3724($fp)
	lw $t1, -3724($fp)
	li $t2, 0
	bne $t1, $t2, label373
	j label372
label372:
	li $t0, 1
	sw $t0, -3680($fp)
label373:
	li $t0, 0
	lw $t1, -3680($fp)
	sub $t0, $t0, $t1
	sw $t0, -3728($fp)
	lw $ra, -4($fp)
	lw $v0, -3728($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label371
label370:
	lw $t0, -852($fp)
	sw $t0, -3732($fp)
	lw $t0, -828($fp)
	sw $t0, -3736($fp)
	li $t0, 44622
	sw $t0, -3740($fp)
	lw $t0, -3736($fp)
	lw $t1, -3740($fp)
	sub $t0, $t0, $t1
	sw $t0, -3744($fp)
	li $t0, 42458
	sw $t0, -3748($fp)
	lw $t0, -3744($fp)
	lw $t1, -3748($fp)
	sub $t0, $t0, $t1
	sw $t0, -3752($fp)
	li $t0, 0
	sw $t0, -3756($fp)
	li $t0, 1627
	sw $t0, -3760($fp)
	lw $t1, -3760($fp)
	li $t2, 0
	bne $t1, $t2, label378
	j label377
label377:
	li $t0, 1
	sw $t0, -3756($fp)
label378:
	lw $t0, -3752($fp)
	lw $t1, -3756($fp)
	sub $t0, $t0, $t1
	sw $t0, -3764($fp)
	lw $t1, -3732($fp)
	lw $t2, -3764($fp)
	bge $t1, $t2, label374
	j label375
label374:
	addi $t0, $fp, -100
	sw $t0, -3768($fp)
	li $t0, 2
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
	li $t0, 3327
	sw $t0, -3788($fp)
	lw $t0, -3784($fp)
	lw $t1, -3788($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3792($fp)
	lw $t0, -180($fp)
	sw $t0, -3796($fp)
	lw $t0, -3796($fp)
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	sw $t0, -3800($fp)
	addi $sp, $sp, -4
	lw $t0, -3792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3800($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -3804($fp)
	addi $sp, $sp, 12
	j label376
label375:
	jal f7
	sw $v0, -3808($fp)
	addi $sp, $sp, 4
	lw $t1, -3808($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label382
label382:
	li $t0, 6744
	sw $t0, -3812($fp)
	lw $t1, -3812($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label380
label379:
	li $t0, 0
	sw $t0, -3816($fp)
	li $t0, 0
	sw $t0, -3820($fp)
	li $t0, 9504
	sw $t0, -3824($fp)
	lw $t1, -3824($fp)
	li $t2, 0
	bne $t1, $t2, label386
	j label385
label385:
	li $t0, 1
	sw $t0, -3820($fp)
label386:
	lw $t0, -180($fp)
	sw $t0, -3828($fp)
	lw $t1, -3820($fp)
	lw $t2, -3828($fp)
	bgt $t1, $t2, label383
	j label384
label383:
	li $t0, 1
	sw $t0, -3816($fp)
label384:
	li $t0, 0
	sw $t0, -3832($fp)
	lw $t0, -492($fp)
	sw $t0, -3836($fp)
	lw $t0, -3364($fp)
	sw $t0, -3840($fp)
	lw $t0, -3836($fp)
	lw $t1, -3840($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3844($fp)
	lw $t1, -3844($fp)
	li $t2, 0
	bne $t1, $t2, label389
	j label388
label389:
	li $t0, 62763
	sw $t0, -3848($fp)
	lw $t1, -3848($fp)
	li $t2, 0
	bne $t1, $t2, label387
	j label388
label387:
	li $t0, 1
	sw $t0, -3832($fp)
label388:
	addi $sp, $sp, -4
	lw $t0, -3816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3832($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -3852($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -44
	sw $t0, -3856($fp)
	li $t0, 1
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
	lw $t0, -3852($fp)
	lw $t1, -3872($fp)
	mul $t0, $t0, $t1
	sw $t0, -3876($fp)
	li $t0, 0
	sw $t0, -3880($fp)
	lw $t0, -3304($fp)
	sw $t0, -3884($fp)
	lw $t1, -3884($fp)
	li $t2, 0
	bne $t1, $t2, label391
	j label390
label390:
	li $t0, 1
	sw $t0, -3880($fp)
label391:
	li $t0, 22622
	sw $t0, -3888($fp)
	lw $t0, -3880($fp)
	lw $t1, -3888($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3892($fp)
	lw $t0, -3876($fp)
	lw $t1, -3892($fp)
	add $t0, $t0, $t1
	sw $t0, -3896($fp)
	j label381
label380:
	li $t0, 0
	sw $t0, -3900($fp)
	li $t0, 0
	sw $t0, -3904($fp)
	lw $t0, -1104($fp)
	sw $t0, -3908($fp)
	li $t0, 18082
	sw $t0, -3912($fp)
	lw $t0, -3908($fp)
	lw $t1, -3912($fp)
	add $t0, $t0, $t1
	sw $t0, -3916($fp)
	lw $t0, -3352($fp)
	sw $t0, -3920($fp)
	lw $t1, -3916($fp)
	lw $t2, -3920($fp)
	blt $t1, $t2, label396
	j label397
label396:
	li $t0, 1
	sw $t0, -3904($fp)
label397:
	lw $t0, -924($fp)
	sw $t0, -3924($fp)
	lw $t0, -912($fp)
	sw $t0, -3928($fp)
	lw $t0, -3924($fp)
	lw $t1, -3928($fp)
	add $t0, $t0, $t1
	sw $t0, -3932($fp)
	lw $t1, -3904($fp)
	lw $t2, -3932($fp)
	beq $t1, $t2, label395
	j label393
label395:
	lw $t0, -3292($fp)
	sw $t0, -3936($fp)
	lw $t0, -3316($fp)
	sw $t0, -3940($fp)
	lw $t0, -3936($fp)
	lw $t1, -3940($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3944($fp)
	lw $t0, -864($fp)
	sw $t0, -3948($fp)
	lw $t1, -3944($fp)
	lw $t2, -3948($fp)
	beq $t1, $t2, label394
	j label393
label394:
	li $t0, 0
	sw $t0, -3952($fp)
	lw $t0, -912($fp)
	sw $t0, -3956($fp)
	li $t0, 26888
	sw $t0, -3960($fp)
	lw $t0, -3956($fp)
	lw $t1, -3960($fp)
	add $t0, $t0, $t1
	sw $t0, -3964($fp)
	lw $t1, -3964($fp)
	li $t2, 0
	bne $t1, $t2, label400
	j label399
label400:
	lw $t0, -3268($fp)
	sw $t0, -3968($fp)
	lw $t1, -3968($fp)
	li $t2, 0
	bne $t1, $t2, label398
	j label399
label398:
	li $t0, 1
	sw $t0, -3952($fp)
label399:
	li $t0, 0
	sw $t0, -3972($fp)
	li $t0, 33208
	sw $t0, -3976($fp)
	lw $t1, -3976($fp)
	li $t2, 0
	bne $t1, $t2, label403
	j label402
label403:
	lw $t0, -1428($fp)
	sw $t0, -3980($fp)
	lw $t1, -3980($fp)
	li $t2, 0
	bne $t1, $t2, label401
	j label402
label401:
	li $t0, 1
	sw $t0, -3972($fp)
label402:
	li $t0, 0
	sw $t0, -3984($fp)
	lw $t0, -504($fp)
	sw $t0, -3988($fp)
	li $t0, 56344
	sw $t0, -3992($fp)
	lw $t0, -3988($fp)
	lw $t1, -3992($fp)
	mul $t0, $t0, $t1
	sw $t0, -3996($fp)
	li $t0, 64182
	sw $t0, -4000($fp)
	lw $t1, -3996($fp)
	lw $t2, -4000($fp)
	bne $t1, $t2, label404
	j label405
label404:
	li $t0, 1
	sw $t0, -3984($fp)
label405:
	li $t0, 0
	sw $t0, -4004($fp)
	addi $t0, $fp, -44
	sw $t0, -4008($fp)
	lw $t0, -504($fp)
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
	lw $t1, -4024($fp)
	li $t2, 0
	bne $t1, $t2, label408
	j label407
label408:
	lw $t0, -864($fp)
	sw $t0, -4028($fp)
	lw $t1, -4028($fp)
	li $t2, 0
	bne $t1, $t2, label406
	j label407
label406:
	li $t0, 1
	sw $t0, -4004($fp)
label407:
	addi $sp, $sp, -4
	lw $t0, -3952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4004($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -4032($fp)
	addi $sp, $sp, 20
	lw $t1, -4032($fp)
	li $t2, 0
	bne $t1, $t2, label392
	j label393
label392:
	li $t0, 1
	sw $t0, -3900($fp)
label393:
label381:
label376:
label371:
	lw $t0, -492($fp)
	sw $t0, -4036($fp)
	lw $t1, -4036($fp)
	li $t2, 0
	bne $t1, $t2, label409
	j label410
label409:
	lw $t0, -912($fp)
	sw $t0, -4040($fp)
	lw $t1, -4040($fp)
	li $t2, 0
	bne $t1, $t2, label412
	j label413
label412:
	li $t0, 0
	sw $t0, -4044($fp)
	li $t0, 59820
	sw $t0, -4048($fp)
	li $t0, 1
	sw $t0, -4052($fp)
	lw $t0, -4048($fp)
	lw $t1, -4052($fp)
	mul $t0, $t0, $t1
	sw $t0, -4056($fp)
	li $t0, 20559
	sw $t0, -4060($fp)
	lw $t0, -4056($fp)
	lw $t1, -4060($fp)
	mul $t0, $t0, $t1
	sw $t0, -4064($fp)
	li $t0, 0
	sw $t0, -4068($fp)
	li $t0, 11921
	sw $t0, -4072($fp)
	lw $t1, -4072($fp)
	li $t2, 0
	bne $t1, $t2, label418
	j label420
label420:
	li $t0, 53338
	sw $t0, -4076($fp)
	lw $t1, -4076($fp)
	li $t2, 0
	bne $t1, $t2, label418
	j label419
label418:
	li $t0, 1
	sw $t0, -4068($fp)
label419:
	addi $sp, $sp, -4
	lw $t0, -4064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4068($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -4080($fp)
	addi $sp, $sp, 12
	jal f7
	sw $v0, -4084($fp)
	addi $sp, $sp, 4
	lw $t0, -4080($fp)
	lw $t1, -4084($fp)
	add $t0, $t0, $t1
	sw $t0, -4088($fp)
	lw $t1, -4088($fp)
	li $t2, 0
	bne $t1, $t2, label415
	j label417
label417:
	addi $t0, $fp, -44
	sw $t0, -4092($fp)
	lw $t0, -852($fp)
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
	lw $t0, -1104($fp)
	sw $t0, -4112($fp)
	lw $t0, -4108($fp)
	lw $t1, -4112($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4116($fp)
	li $t0, 40374
	sw $t0, -4120($fp)
	lw $t0, -4116($fp)
	lw $t1, -4120($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4124($fp)
	lw $t1, -4124($fp)
	li $t2, 0
	bne $t1, $t2, label415
	j label416
label415:
	li $t0, 1
	sw $t0, -4044($fp)
label416:
	lw $t0, -492($fp)
	sw $t0, -4128($fp)
	li $t0, 0
	sw $t0, -4132($fp)
	li $t0, 0
	sw $t0, -4136($fp)
	lw $t0, -864($fp)
	sw $t0, -4140($fp)
	lw $t1, -4140($fp)
	li $t2, 0
	bne $t1, $t2, label424
	j label423
label423:
	li $t0, 1
	sw $t0, -4136($fp)
label424:
	li $t0, 0
	lw $t1, -4136($fp)
	sub $t0, $t0, $t1
	sw $t0, -4144($fp)
	li $t0, 34933
	sw $t0, -4148($fp)
	li $t0, 0
	lw $t1, -4148($fp)
	sub $t0, $t0, $t1
	sw $t0, -4152($fp)
	lw $t0, -4144($fp)
	lw $t1, -4152($fp)
	sub $t0, $t0, $t1
	sw $t0, -4156($fp)
	li $t0, 0
	sw $t0, -4160($fp)
	lw $t0, -192($fp)
	sw $t0, -4164($fp)
	lw $t1, -4164($fp)
	li $t2, 0
	bne $t1, $t2, label425
	j label426
label425:
	li $t0, 1
	sw $t0, -4160($fp)
label426:
	lw $t0, -4156($fp)
	lw $t1, -4160($fp)
	sub $t0, $t0, $t1
	sw $t0, -4168($fp)
	jal f7
	sw $v0, -4172($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -4176($fp)
	li $t0, 63011
	sw $t0, -4180($fp)
	lw $t1, -4180($fp)
	li $t2, 0
	bne $t1, $t2, label428
	j label427
label427:
	li $t0, 1
	sw $t0, -4176($fp)
label428:
	lw $t0, -4172($fp)
	lw $t1, -4176($fp)
	sub $t0, $t0, $t1
	sw $t0, -4184($fp)
	lw $t1, -4168($fp)
	lw $t2, -4184($fp)
	bge $t1, $t2, label421
	j label422
label421:
	li $t0, 1
	sw $t0, -4132($fp)
label422:
	j label414
label413:
	lw $t0, 4($fp)
	sw $t0, -4188($fp)
	lw $t0, -192($fp)
	sw $t0, -4192($fp)
	lw $t0, -4188($fp)
	lw $t1, -4192($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4196($fp)
	lw $t0, -4196($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -4200($fp)
	lw $t0, -4200($fp)
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	sw $t0, -4204($fp)
	addi $t0, $fp, -84
	sw $t0, -4208($fp)
	li $t0, 0
	sw $t0, -4212($fp)
	lw $t0, -1104($fp)
	sw $t0, -4216($fp)
	li $t0, 8148
	sw $t0, -4220($fp)
	lw $t1, -4216($fp)
	lw $t2, -4220($fp)
	bgt $t1, $t2, label429
	j label430
label429:
	li $t0, 1
	sw $t0, -4212($fp)
label430:
	li $t0, 4
	lw $t1, -4212($fp)
	mul $t0, $t0, $t1
	sw $t0, -4224($fp)
	lw $t0, -4224($fp)
	lw $t1, -4208($fp)
	add $t0, $t0, $t1
	sw $t0, -4228($fp)
	lw $t0, -4228($fp)
	lw $t1, 0($t0)
	sw $t1, -4232($fp)
	li $t0, 60634
	sw $t0, -4236($fp)
	lw $t0, -4232($fp)
	lw $t1, -4236($fp)
	sub $t0, $t0, $t1
	sw $t0, -4240($fp)
	addi $t0, $fp, -160
	sw $t0, -4244($fp)
	li $t0, 0
	sw $t0, -4248($fp)
	li $t0, 55887
	sw $t0, -4252($fp)
	lw $t0, -1116($fp)
	sw $t0, -4256($fp)
	lw $t1, -4252($fp)
	lw $t2, -4256($fp)
	bgt $t1, $t2, label431
	j label432
label431:
	li $t0, 1
	sw $t0, -4248($fp)
label432:
	li $t0, 4
	lw $t1, -4248($fp)
	mul $t0, $t0, $t1
	sw $t0, -4260($fp)
	lw $t0, -4260($fp)
	lw $t1, -4244($fp)
	add $t0, $t0, $t1
	sw $t0, -4264($fp)
	lw $t0, -4264($fp)
	lw $t1, 0($t0)
	sw $t1, -4268($fp)
	lw $t0, -4240($fp)
	lw $t1, -4268($fp)
	sub $t0, $t0, $t1
	sw $t0, -4272($fp)
label414:
	j label411
label410:
	addi $t0, $fp, -100
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
	addi $t0, $fp, -160
	sw $t0, -4296($fp)
	li $t0, 7
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
	lw $t0, -4292($fp)
	lw $t1, -4312($fp)
	mul $t0, $t0, $t1
	sw $t0, -4316($fp)
	li $t0, 0
	sw $t0, -4320($fp)
	addi $t0, $fp, -100
	sw $t0, -4324($fp)
	lw $t0, 4($fp)
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
	lw $t1, -4340($fp)
	li $t2, 0
	bne $t1, $t2, label436
	j label438
label438:
	lw $t0, -504($fp)
	sw $t0, -4344($fp)
	lw $t1, -4344($fp)
	li $t2, 0
	bne $t1, $t2, label436
	j label437
label436:
	li $t0, 1
	sw $t0, -4320($fp)
label437:
	lw $t0, -3328($fp)
	sw $t0, -4348($fp)
	lw $t0, -4348($fp)
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	sw $t0, -4352($fp)
	addi $sp, $sp, -4
	lw $t0, -4320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4352($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -4356($fp)
	addi $sp, $sp, 12
	lw $t0, -816($fp)
	sw $t0, -4360($fp)
	lw $t0, -4356($fp)
	lw $t1, -4360($fp)
	mul $t0, $t0, $t1
	sw $t0, -4364($fp)
	lw $t1, -4316($fp)
	lw $t2, -4364($fp)
	ble $t1, $t2, label433
	j label434
label433:
	li $t0, 59411
	sw $t0, -4368($fp)
	lw $t0, -4368($fp)
	sw $t0, -4372($fp)
	lw $t0, -4372($fp)
	sw $t0, -4376($fp)
	li $t0, 0
	sw $t0, -4380($fp)
	li $t0, 0
	sw $t0, -4384($fp)
	li $t0, 21977
	sw $t0, -4388($fp)
	lw $t1, -4388($fp)
	li $t2, 0
	bne $t1, $t2, label442
	j label441
label441:
	li $t0, 1
	sw $t0, -4384($fp)
label442:
	addi $t0, $fp, -160
	sw $t0, -4392($fp)
	li $t0, 48173
	sw $t0, -4396($fp)
	li $t0, 16161
	sw $t0, -4400($fp)
	lw $t0, -4396($fp)
	lw $t1, -4400($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4404($fp)
	li $t0, 4
	lw $t1, -4404($fp)
	mul $t0, $t0, $t1
	sw $t0, -4408($fp)
	lw $t0, -4408($fp)
	lw $t1, -4392($fp)
	add $t0, $t0, $t1
	sw $t0, -4412($fp)
	lw $t0, -4412($fp)
	lw $t1, 0($t0)
	sw $t1, -4416($fp)
	lw $t1, -4384($fp)
	lw $t2, -4416($fp)
	bge $t1, $t2, label439
	j label440
label439:
	li $t0, 1
	sw $t0, -4380($fp)
label440:
	addi $t0, $fp, -128
	sw $t0, -4420($fp)
	lw $t0, -4372($fp)
	sw $t0, -4424($fp)
	lw $t0, -4424($fp)
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	sw $t0, -4428($fp)
	li $t0, 4
	lw $t1, -4428($fp)
	mul $t0, $t0, $t1
	sw $t0, -4432($fp)
	lw $t0, -4432($fp)
	lw $t1, -4420($fp)
	add $t0, $t0, $t1
	sw $t0, -4436($fp)
	lw $t0, -4436($fp)
	lw $t1, 0($t0)
	sw $t1, -4440($fp)
	li $t0, 0
	lw $t1, -4440($fp)
	sub $t0, $t0, $t1
	sw $t0, -4444($fp)
	j label435
label434:
	li $t0, 0
	sw $t0, -4448($fp)
	jal f7
	sw $v0, -4452($fp)
	addi $sp, $sp, 4
	lw $t1, -4452($fp)
	li $t2, 0
	bne $t1, $t2, label444
	j label443
label443:
	li $t0, 1
	sw $t0, -4448($fp)
label444:
label435:
label411:
	lw $t0, -180($fp)
	sw $t0, -4456($fp)
	lw $t0, -4456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -4460($fp)
	lw $t0, -4460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -4464($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -4484($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -4504($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -4524($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -4544($fp)
	li $t0, 4
	sw $t0, -4548($fp)
	li $t0, 4
	lw $t1, -4548($fp)
	mul $t0, $t0, $t1
	sw $t0, -4552($fp)
	lw $t0, -4552($fp)
	lw $t1, -4544($fp)
	add $t0, $t0, $t1
	sw $t0, -4556($fp)
	lw $t0, -4556($fp)
	lw $t1, 0($t0)
	sw $t1, -4560($fp)
	lw $t0, -4560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -4564($fp)
	li $t0, 5
	sw $t0, -4568($fp)
	li $t0, 4
	lw $t1, -4568($fp)
	mul $t0, $t0, $t1
	sw $t0, -4572($fp)
	lw $t0, -4572($fp)
	lw $t1, -4564($fp)
	add $t0, $t0, $t1
	sw $t0, -4576($fp)
	lw $t0, -4576($fp)
	lw $t1, 0($t0)
	sw $t1, -4580($fp)
	lw $t0, -4580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -4584($fp)
	li $t0, 6
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
	lw $t0, -4600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -4604($fp)
	li $t0, 7
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
	addi $t0, $fp, -44
	sw $t0, -4624($fp)
	li $t0, 8
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
	addi $t0, $fp, -44
	sw $t0, -4644($fp)
	li $t0, 9
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
	addi $t0, $fp, -52
	sw $t0, -4664($fp)
	li $t0, 0
	sw $t0, -4668($fp)
	li $t0, 4
	lw $t1, -4668($fp)
	mul $t0, $t0, $t1
	sw $t0, -4672($fp)
	lw $t0, -4672($fp)
	lw $t1, -4664($fp)
	add $t0, $t0, $t1
	sw $t0, -4676($fp)
	lw $t0, -4676($fp)
	lw $t1, 0($t0)
	sw $t1, -4680($fp)
	lw $t0, -4680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -4684($fp)
	li $t0, 1
	sw $t0, -4688($fp)
	li $t0, 4
	lw $t1, -4688($fp)
	mul $t0, $t0, $t1
	sw $t0, -4692($fp)
	lw $t0, -4692($fp)
	lw $t1, -4684($fp)
	add $t0, $t0, $t1
	sw $t0, -4696($fp)
	lw $t0, -4696($fp)
	lw $t1, 0($t0)
	sw $t1, -4700($fp)
	lw $t0, -4700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -4704($fp)
	lw $t0, -4704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -4708($fp)
	lw $t0, -4708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -4712($fp)
	li $t0, 0
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
	addi $t0, $fp, -84
	sw $t0, -4732($fp)
	li $t0, 1
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
	addi $t0, $fp, -84
	sw $t0, -4752($fp)
	li $t0, 2
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
	addi $t0, $fp, -84
	sw $t0, -4772($fp)
	li $t0, 3
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
	addi $t0, $fp, -84
	sw $t0, -4792($fp)
	li $t0, 4
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
	addi $t0, $fp, -84
	sw $t0, -4812($fp)
	li $t0, 5
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
	addi $t0, $fp, -84
	sw $t0, -4832($fp)
	li $t0, 6
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
	addi $t0, $fp, -84
	sw $t0, -4852($fp)
	li $t0, 7
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
	addi $t0, $fp, -100
	sw $t0, -4872($fp)
	li $t0, 0
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
	addi $t0, $fp, -100
	sw $t0, -4892($fp)
	li $t0, 1
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
	addi $t0, $fp, -100
	sw $t0, -4912($fp)
	li $t0, 2
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
	addi $t0, $fp, -100
	sw $t0, -4932($fp)
	li $t0, 3
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
	lw $t0, -804($fp)
	sw $t0, -4952($fp)
	lw $t0, -4952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -816($fp)
	sw $t0, -4956($fp)
	lw $t0, -4956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -828($fp)
	sw $t0, -4960($fp)
	lw $t0, -4960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -840($fp)
	sw $t0, -4964($fp)
	lw $t0, -4964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -852($fp)
	sw $t0, -4968($fp)
	lw $t0, -4968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -864($fp)
	sw $t0, -4972($fp)
	lw $t0, -4972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -876($fp)
	sw $t0, -4976($fp)
	lw $t0, -4976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -888($fp)
	sw $t0, -4980($fp)
	lw $t0, -4980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -900($fp)
	sw $t0, -4984($fp)
	lw $t0, -4984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -912($fp)
	sw $t0, -4988($fp)
	lw $t0, -4988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -924($fp)
	sw $t0, -4992($fp)
	lw $t0, -4992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -4996($fp)
	li $t0, 0
	sw $t0, -5000($fp)
	li $t0, 4
	lw $t1, -5000($fp)
	mul $t0, $t0, $t1
	sw $t0, -5004($fp)
	lw $t0, -5004($fp)
	lw $t1, -4996($fp)
	add $t0, $t0, $t1
	sw $t0, -5008($fp)
	lw $t0, -5008($fp)
	lw $t1, 0($t0)
	sw $t1, -5012($fp)
	lw $t0, -5012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -5016($fp)
	li $t0, 1
	sw $t0, -5020($fp)
	li $t0, 4
	lw $t1, -5020($fp)
	mul $t0, $t0, $t1
	sw $t0, -5024($fp)
	lw $t0, -5024($fp)
	lw $t1, -5016($fp)
	add $t0, $t0, $t1
	sw $t0, -5028($fp)
	lw $t0, -5028($fp)
	lw $t1, 0($t0)
	sw $t1, -5032($fp)
	lw $t0, -5032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -5036($fp)
	li $t0, 2
	sw $t0, -5040($fp)
	li $t0, 4
	lw $t1, -5040($fp)
	mul $t0, $t0, $t1
	sw $t0, -5044($fp)
	lw $t0, -5044($fp)
	lw $t1, -5036($fp)
	add $t0, $t0, $t1
	sw $t0, -5048($fp)
	lw $t0, -5048($fp)
	lw $t1, 0($t0)
	sw $t1, -5052($fp)
	lw $t0, -5052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -5056($fp)
	li $t0, 3
	sw $t0, -5060($fp)
	li $t0, 4
	lw $t1, -5060($fp)
	mul $t0, $t0, $t1
	sw $t0, -5064($fp)
	lw $t0, -5064($fp)
	lw $t1, -5056($fp)
	add $t0, $t0, $t1
	sw $t0, -5068($fp)
	lw $t0, -5068($fp)
	lw $t1, 0($t0)
	sw $t1, -5072($fp)
	lw $t0, -5072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -5076($fp)
	li $t0, 4
	sw $t0, -5080($fp)
	li $t0, 4
	lw $t1, -5080($fp)
	mul $t0, $t0, $t1
	sw $t0, -5084($fp)
	lw $t0, -5084($fp)
	lw $t1, -5076($fp)
	add $t0, $t0, $t1
	sw $t0, -5088($fp)
	lw $t0, -5088($fp)
	lw $t1, 0($t0)
	sw $t1, -5092($fp)
	lw $t0, -5092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -5096($fp)
	li $t0, 5
	sw $t0, -5100($fp)
	li $t0, 4
	lw $t1, -5100($fp)
	mul $t0, $t0, $t1
	sw $t0, -5104($fp)
	lw $t0, -5104($fp)
	lw $t1, -5096($fp)
	add $t0, $t0, $t1
	sw $t0, -5108($fp)
	lw $t0, -5108($fp)
	lw $t1, 0($t0)
	sw $t1, -5112($fp)
	lw $t0, -5112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -5116($fp)
	li $t0, 6
	sw $t0, -5120($fp)
	li $t0, 4
	lw $t1, -5120($fp)
	mul $t0, $t0, $t1
	sw $t0, -5124($fp)
	lw $t0, -5124($fp)
	lw $t1, -5116($fp)
	add $t0, $t0, $t1
	sw $t0, -5128($fp)
	lw $t0, -5128($fp)
	lw $t1, 0($t0)
	sw $t1, -5132($fp)
	lw $t0, -5132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1104($fp)
	sw $t0, -5136($fp)
	lw $t0, -5136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1116($fp)
	sw $t0, -5140($fp)
	lw $t0, -5140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -5144($fp)
	li $t0, 0
	sw $t0, -5148($fp)
	li $t0, 4
	lw $t1, -5148($fp)
	mul $t0, $t0, $t1
	sw $t0, -5152($fp)
	lw $t0, -5152($fp)
	lw $t1, -5144($fp)
	add $t0, $t0, $t1
	sw $t0, -5156($fp)
	lw $t0, -5156($fp)
	lw $t1, 0($t0)
	sw $t1, -5160($fp)
	lw $t0, -5160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -5164($fp)
	li $t0, 1
	sw $t0, -5168($fp)
	li $t0, 4
	lw $t1, -5168($fp)
	mul $t0, $t0, $t1
	sw $t0, -5172($fp)
	lw $t0, -5172($fp)
	lw $t1, -5164($fp)
	add $t0, $t0, $t1
	sw $t0, -5176($fp)
	lw $t0, -5176($fp)
	lw $t1, 0($t0)
	sw $t1, -5180($fp)
	lw $t0, -5180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
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
	lw $t0, -5200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -5204($fp)
	li $t0, 3
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
	addi $t0, $fp, -160
	sw $t0, -5224($fp)
	li $t0, 4
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
	addi $t0, $fp, -160
	sw $t0, -5244($fp)
	li $t0, 5
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
	lw $t0, -5260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -5264($fp)
	li $t0, 6
	sw $t0, -5268($fp)
	li $t0, 4
	lw $t1, -5268($fp)
	mul $t0, $t0, $t1
	sw $t0, -5272($fp)
	lw $t0, -5272($fp)
	lw $t1, -5264($fp)
	add $t0, $t0, $t1
	sw $t0, -5276($fp)
	lw $t0, -5276($fp)
	lw $t1, 0($t0)
	sw $t1, -5280($fp)
	lw $t0, -5280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -5284($fp)
	li $t0, 7
	sw $t0, -5288($fp)
	li $t0, 4
	lw $t1, -5288($fp)
	mul $t0, $t0, $t1
	sw $t0, -5292($fp)
	lw $t0, -5292($fp)
	lw $t1, -5284($fp)
	add $t0, $t0, $t1
	sw $t0, -5296($fp)
	lw $t0, -5296($fp)
	lw $t1, 0($t0)
	sw $t1, -5300($fp)
	lw $t0, -5300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1320($fp)
	sw $t0, -5304($fp)
	lw $t0, -5304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1332($fp)
	sw $t0, -5308($fp)
	lw $t0, -5308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -5312($fp)
	li $t0, 0
	sw $t0, -5316($fp)
	li $t0, 4
	lw $t1, -5316($fp)
	mul $t0, $t0, $t1
	sw $t0, -5320($fp)
	lw $t0, -5320($fp)
	lw $t1, -5312($fp)
	add $t0, $t0, $t1
	sw $t0, -5324($fp)
	lw $t0, -5324($fp)
	lw $t1, 0($t0)
	sw $t1, -5328($fp)
	lw $t0, -5328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -5332($fp)
	li $t0, 1
	sw $t0, -5336($fp)
	li $t0, 4
	lw $t1, -5336($fp)
	mul $t0, $t0, $t1
	sw $t0, -5340($fp)
	lw $t0, -5340($fp)
	lw $t1, -5332($fp)
	add $t0, $t0, $t1
	sw $t0, -5344($fp)
	lw $t0, -5344($fp)
	lw $t1, 0($t0)
	sw $t1, -5348($fp)
	lw $t0, -5348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -5352($fp)
	li $t0, 2
	sw $t0, -5356($fp)
	li $t0, 4
	lw $t1, -5356($fp)
	mul $t0, $t0, $t1
	sw $t0, -5360($fp)
	lw $t0, -5360($fp)
	lw $t1, -5352($fp)
	add $t0, $t0, $t1
	sw $t0, -5364($fp)
	lw $t0, -5364($fp)
	lw $t1, 0($t0)
	sw $t1, -5368($fp)
	lw $t0, -5368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1416($fp)
	sw $t0, -5372($fp)
	lw $t0, -5372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1428($fp)
	sw $t0, -5376($fp)
	lw $t0, -5376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1440($fp)
	sw $t0, -5380($fp)
	lw $t0, -5380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1452($fp)
	sw $t0, -5384($fp)
	lw $t0, -5384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5388($fp)
	li $t0, 25304
	sw $t0, -5392($fp)
	li $t0, 0
	lw $t1, -5392($fp)
	sub $t0, $t0, $t1
	sw $t0, -5396($fp)
	lw $t0, -180($fp)
	sw $t0, -5400($fp)
	li $t0, 54917
	sw $t0, -5404($fp)
	lw $t0, -5400($fp)
	lw $t1, -5404($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5408($fp)
	lw $t1, -5396($fp)
	lw $t2, -5408($fp)
	bge $t1, $t2, label445
	j label446
label445:
	li $t0, 1
	sw $t0, -5388($fp)
label446:
	lw $t0, -5388($fp)
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	sw $t0, -5412($fp)
	lw $ra, -4($fp)
	lw $v0, -5412($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -136
	lw $t0, 12($fp)
	sw $t0, -8($fp)
	lw $t0, 8($fp)
	sw $t0, -12($fp)
	li $t0, 13388
	sw $t0, -16($fp)
	lw $t0, -12($fp)
	lw $t1, -16($fp)
	add $t0, $t0, $t1
	sw $t0, -20($fp)
	li $t0, 0
	sw $t0, -24($fp)
	li $t0, 34808
	sw $t0, -28($fp)
	li $t0, 0
	sw $t0, -32($fp)
	li $t0, 0
	sw $t0, -36($fp)
	li $t0, 58979
	sw $t0, -40($fp)
	lw $t1, -40($fp)
	li $t2, 0
	bne $t1, $t2, label451
	j label452
label451:
	li $t0, 1
	sw $t0, -36($fp)
label452:
	li $t0, 0
	sw $t0, -44($fp)
	li $t0, 57431
	sw $t0, -48($fp)
	lw $t0, 16($fp)
	sw $t0, -52($fp)
	lw $t0, -48($fp)
	lw $t1, -52($fp)
	sub $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, 16($fp)
	sw $t0, -60($fp)
	lw $t1, -56($fp)
	lw $t2, -60($fp)
	beq $t1, $t2, label453
	j label454
label453:
	li $t0, 1
	sw $t0, -44($fp)
label454:
	li $t0, 0
	sw $t0, -64($fp)
	li $t0, 12367
	sw $t0, -68($fp)
	lw $t1, -68($fp)
	li $t2, 0
	bne $t1, $t2, label456
	j label455
label455:
	li $t0, 1
	sw $t0, -64($fp)
label456:
	lw $t0, 4($fp)
	sw $t0, -72($fp)
	lw $t0, -64($fp)
	lw $t1, -72($fp)
	mul $t0, $t0, $t1
	sw $t0, -76($fp)
	lw $t0, 16($fp)
	sw $t0, -80($fp)
	li $t0, 0
	lw $t1, -80($fp)
	sub $t0, $t0, $t1
	sw $t0, -84($fp)
	lw $t0, 16($fp)
	sw $t0, -88($fp)
	lw $t0, -84($fp)
	lw $t1, -88($fp)
	sub $t0, $t0, $t1
	sw $t0, -92($fp)
	lw $t0, 12($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -100($fp)
	addi $sp, $sp, -4
	lw $t0, -44($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -76($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -92($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -100($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -104($fp)
	addi $sp, $sp, 20
	lw $t1, -36($fp)
	lw $t2, -104($fp)
	bge $t1, $t2, label449
	j label450
label449:
	li $t0, 1
	sw $t0, -32($fp)
label450:
	lw $t1, -28($fp)
	lw $t2, -32($fp)
	beq $t1, $t2, label447
	j label448
label447:
	li $t0, 1
	sw $t0, -24($fp)
label448:
	jal f6
	sw $v0, -108($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -112($fp)
	li $t0, 0
	sw $t0, -116($fp)
	lw $t0, 16($fp)
	sw $t0, -120($fp)
	lw $t1, -120($fp)
	li $t2, 0
	bne $t1, $t2, label460
	j label459
label459:
	li $t0, 1
	sw $t0, -116($fp)
label460:
	li $t0, 11525
	sw $t0, -124($fp)
	lw $t0, -116($fp)
	lw $t1, -124($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -128($fp)
	li $t0, 3175
	sw $t0, -132($fp)
	li $t0, 0
	lw $t1, -132($fp)
	sub $t0, $t0, $t1
	sw $t0, -136($fp)
	lw $t1, -128($fp)
	lw $t2, -136($fp)
	beq $t1, $t2, label457
	j label458
label457:
	li $t0, 1
	sw $t0, -112($fp)
label458:
	lw $t0, -112($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -140($fp)
	lw $ra, -4($fp)
	lw $v0, -140($fp)
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
	jal f6
	sw $v0, -8($fp)
	addi $sp, $sp, 4
	li $t0, 56077
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
