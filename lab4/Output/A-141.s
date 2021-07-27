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
	addi $sp, $sp, -400
	li $t0, 29259
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 23014
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -60($fp)
	li $t0, 36701
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	li $t0, 2332
	sw $t0, -76($fp)
	addi $t0, $fp, -48
	sw $t0, -80($fp)
	li $t0, 0
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
	li $t0, 24934
	sw $t0, -100($fp)
	addi $t0, $fp, -48
	sw $t0, -104($fp)
	li $t0, 1
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
	li $t0, 24194
	sw $t0, -124($fp)
	addi $t0, $fp, -48
	sw $t0, -128($fp)
	li $t0, 2
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
	li $t0, 58956
	sw $t0, -148($fp)
	addi $t0, $fp, -48
	sw $t0, -152($fp)
	li $t0, 3
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
	li $t0, 42470
	sw $t0, -172($fp)
	addi $t0, $fp, -48
	sw $t0, -176($fp)
	li $t0, 4
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
	li $t0, 38191
	sw $t0, -196($fp)
	addi $t0, $fp, -48
	sw $t0, -200($fp)
	li $t0, 5
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
	li $t0, 25429
	sw $t0, -220($fp)
	addi $t0, $fp, -48
	sw $t0, -224($fp)
	li $t0, 6
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
	li $t0, 33546
	sw $t0, -244($fp)
	addi $t0, $fp, -48
	sw $t0, -248($fp)
	li $t0, 7
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
	jal f6
	sw $v0, -268($fp)
	addi $sp, $sp, 4
	lw $t0, -12($fp)
	sw $t0, -272($fp)
	li $t0, 0
	lw $t1, -272($fp)
	sub $t0, $t0, $t1
	sw $t0, -276($fp)
	lw $t0, -268($fp)
	lw $t1, -276($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -280($fp)
	li $t0, 0
	sw $t0, -284($fp)
	jal f6
	sw $v0, -288($fp)
	addi $sp, $sp, 4
	lw $t1, -288($fp)
	li $t2, 0
	bne $t1, $t2, label122
	j label121
label121:
	li $t0, 1
	sw $t0, -284($fp)
label122:
	lw $t0, -280($fp)
	lw $t1, -284($fp)
	add $t0, $t0, $t1
	sw $t0, -292($fp)
	lw $t0, -12($fp)
	sw $t0, -296($fp)
	lw $t0, -292($fp)
	lw $t1, -296($fp)
	sub $t0, $t0, $t1
	sw $t0, -300($fp)
	li $t0, 0
	sw $t0, -304($fp)
	jal f6
	sw $v0, -308($fp)
	addi $sp, $sp, 4
	li $t0, 27271
	sw $t0, -312($fp)
	lw $t0, -308($fp)
	lw $t1, -312($fp)
	add $t0, $t0, $t1
	sw $t0, -316($fp)
	li $t0, 44385
	sw $t0, -320($fp)
	li $t0, 0
	lw $t1, -320($fp)
	sub $t0, $t0, $t1
	sw $t0, -324($fp)
	lw $t0, -316($fp)
	lw $t1, -324($fp)
	sub $t0, $t0, $t1
	sw $t0, -328($fp)
	lw $t1, -328($fp)
	li $t2, 0
	bne $t1, $t2, label126
	j label125
label126:
	addi $t0, $fp, -48
	sw $t0, -332($fp)
	lw $t0, -12($fp)
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
	lw $t1, -348($fp)
	li $t2, 0
	bne $t1, $t2, label125
	j label123
label125:
	addi $t0, $fp, -48
	sw $t0, -352($fp)
	li $t0, 4
	sw $t0, -356($fp)
	li $t0, 4
	lw $t1, -356($fp)
	mul $t0, $t0, $t1
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	lw $t1, -352($fp)
	add $t0, $t0, $t1
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	lw $t1, 0($t0)
	sw $t1, -368($fp)
	lw $t0, -68($fp)
	sw $t0, -372($fp)
	lw $t0, -368($fp)
	lw $t1, -372($fp)
	sub $t0, $t0, $t1
	sw $t0, -376($fp)
	lw $t1, -376($fp)
	li $t2, 0
	bne $t1, $t2, label127
	j label124
label127:
	lw $t0, -56($fp)
	sw $t0, -380($fp)
	lw $t0, -68($fp)
	sw $t0, -384($fp)
	lw $t0, -380($fp)
	lw $t1, -384($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -388($fp)
	lw $t1, -388($fp)
	li $t2, 0
	bne $t1, $t2, label123
	j label124
label123:
	li $t0, 1
	sw $t0, -304($fp)
label124:
	lw $t0, -12($fp)
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -396($fp)
	li $t0, 21462
	sw $t0, -400($fp)
	lw $t0, -12($fp)
	sw $t0, -404($fp)
	lw $t1, -400($fp)
	lw $t2, -404($fp)
	blt $t1, $t2, label128
	j label129
label128:
	li $t0, 1
	sw $t0, -396($fp)
label129:
	lw $ra, -4($fp)
	lw $v0, -396($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -92
label130:
	li $t0, 0
	sw $t0, -8($fp)
	li $t0, 60532
	sw $t0, -12($fp)
	li $t0, 25023
	sw $t0, -16($fp)
	li $t0, 0
	lw $t1, -16($fp)
	sub $t0, $t0, $t1
	sw $t0, -20($fp)
	lw $t0, -12($fp)
	lw $t1, -20($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -24($fp)
	li $t0, 0
	lw $t1, -24($fp)
	sub $t0, $t0, $t1
	sw $t0, -28($fp)
	lw $t1, -28($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label133
label133:
	li $t0, 1
	sw $t0, -8($fp)
label134:
	li $t0, 0
	lw $t1, -8($fp)
	sub $t0, $t0, $t1
	sw $t0, -32($fp)
	lw $t1, -32($fp)
	li $t2, 0
	bne $t1, $t2, label131
	j label132
label131:
	li $t0, 0
	sw $t0, -36($fp)
	jal f6
	sw $v0, -40($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -44($fp)
	li $t0, 42043
	sw $t0, -48($fp)
	li $t0, 0
	sw $t0, -52($fp)
	li $t0, 28047
	sw $t0, -56($fp)
	lw $t1, -56($fp)
	li $t2, 0
	bne $t1, $t2, label140
	j label139
label139:
	li $t0, 1
	sw $t0, -52($fp)
label140:
	lw $t1, -48($fp)
	lw $t2, -52($fp)
	bgt $t1, $t2, label137
	j label138
label137:
	li $t0, 1
	sw $t0, -44($fp)
label138:
	lw $t1, -40($fp)
	lw $t2, -44($fp)
	beq $t1, $t2, label135
	j label136
label135:
	li $t0, 1
	sw $t0, -36($fp)
label136:
	j label130
label132:
	li $t0, 0
	sw $t0, -60($fp)
	li $t0, 0
	sw $t0, -64($fp)
	lw $t0, 4($fp)
	sw $t0, -68($fp)
	lw $t1, -68($fp)
	li $t2, 0
	bne $t1, $t2, label145
	j label144
label144:
	li $t0, 1
	sw $t0, -64($fp)
label145:
	jal f6
	sw $v0, -72($fp)
	addi $sp, $sp, 4
	lw $t0, -64($fp)
	lw $t1, -72($fp)
	sub $t0, $t0, $t1
	sw $t0, -76($fp)
	lw $t1, -76($fp)
	li $t2, 0
	bne $t1, $t2, label141
	j label143
label143:
	li $t0, 0
	sw $t0, -80($fp)
	li $t0, 3539
	sw $t0, -84($fp)
	lw $t1, -84($fp)
	li $t2, 0
	bne $t1, $t2, label147
	j label146
label146:
	li $t0, 1
	sw $t0, -80($fp)
label147:
	li $t0, 44158
	sw $t0, -88($fp)
	lw $t0, -80($fp)
	lw $t1, -88($fp)
	add $t0, $t0, $t1
	sw $t0, -92($fp)
	lw $t1, -92($fp)
	li $t2, 0
	bne $t1, $t2, label141
	j label142
label141:
	li $t0, 1
	sw $t0, -60($fp)
label142:
	li $t0, 33523
	sw $t0, -96($fp)
	lw $ra, -4($fp)
	lw $v0, -96($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -3636
	li $t0, 11672
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	li $t0, 61003
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	li $t0, 49874
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	li $t0, 61141
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
	li $t0, 60541
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
	li $t0, 21087
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
	li $t0, 24327
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
	li $t0, 38989
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	li $t0, 50346
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -232($fp)
	li $t0, 47342
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	li $t0, 10154
	sw $t0, -248($fp)
	addi $t0, $fp, -36
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
	li $t0, 52678
	sw $t0, -272($fp)
	addi $t0, $fp, -36
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
	li $t0, 6740
	sw $t0, -296($fp)
	addi $t0, $fp, -36
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
	li $t0, 34348
	sw $t0, -320($fp)
	addi $t0, $fp, -36
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
	li $t0, 46098
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -352($fp)
	li $t0, 49210
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	li $t0, 7004
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -376($fp)
	li $t0, 5992
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -388($fp)
	li $t0, 17221
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -400($fp)
	li $t0, 34275
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -412($fp)
	li $t0, 50377
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -424($fp)
	li $t0, 41810
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	li $t0, 28184
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	li $t0, 6303
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	li $t0, 36806
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	li $t0, 53207
	sw $t0, -476($fp)
	addi $t0, $fp, -56
	sw $t0, -480($fp)
	li $t0, 0
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
	li $t0, 48347
	sw $t0, -500($fp)
	addi $t0, $fp, -56
	sw $t0, -504($fp)
	li $t0, 1
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
	li $t0, 64853
	sw $t0, -524($fp)
	addi $t0, $fp, -56
	sw $t0, -528($fp)
	li $t0, 2
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
	li $t0, 56746
	sw $t0, -548($fp)
	addi $t0, $fp, -56
	sw $t0, -552($fp)
	li $t0, 3
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
	li $t0, 26969
	sw $t0, -572($fp)
	addi $t0, $fp, -56
	sw $t0, -576($fp)
	li $t0, 4
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
	li $t0, 32840
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -604($fp)
	li $t0, 2882
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -616($fp)
	li $t0, 22436
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	li $t0, 17179
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	li $t0, 64023
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	li $t0, 17441
	sw $t0, -656($fp)
	addi $t0, $fp, -76
	sw $t0, -660($fp)
	li $t0, 0
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
	li $t0, 38266
	sw $t0, -680($fp)
	addi $t0, $fp, -76
	sw $t0, -684($fp)
	li $t0, 1
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
	li $t0, 22815
	sw $t0, -704($fp)
	addi $t0, $fp, -76
	sw $t0, -708($fp)
	li $t0, 2
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
	li $t0, 56430
	sw $t0, -728($fp)
	addi $t0, $fp, -76
	sw $t0, -732($fp)
	li $t0, 3
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
	li $t0, 23076
	sw $t0, -752($fp)
	addi $t0, $fp, -76
	sw $t0, -756($fp)
	li $t0, 4
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
	li $t0, 4621
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -784($fp)
	li $t0, 1048
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -796($fp)
	li $t0, 10219
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -808($fp)
label148:
	addi $t0, $fp, -76
	sw $t0, -812($fp)
	li $t0, 1
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
	li $t0, 56317
	sw $t0, -832($fp)
	li $t0, 0
	lw $t1, -832($fp)
	sub $t0, $t0, $t1
	sw $t0, -836($fp)
	lw $t1, -828($fp)
	lw $t2, -836($fp)
	ble $t1, $t2, label152
	j label150
label152:
	addi $t0, $fp, -36
	sw $t0, -840($fp)
	lw $t0, -396($fp)
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
	bne $t1, $t2, label151
	j label150
label151:
	li $t0, 60571
	sw $t0, -860($fp)
	lw $t0, -360($fp)
	sw $t0, -864($fp)
	lw $t0, -860($fp)
	lw $t1, -864($fp)
	mul $t0, $t0, $t1
	sw $t0, -868($fp)
	lw $t0, -420($fp)
	sw $t0, -872($fp)
	lw $t0, -868($fp)
	lw $t1, -872($fp)
	sub $t0, $t0, $t1
	sw $t0, -876($fp)
	li $t0, 0
	sw $t0, -880($fp)
	li $t0, 42401
	sw $t0, -884($fp)
	lw $t1, -884($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label153
label153:
	li $t0, 1
	sw $t0, -880($fp)
label154:
	lw $t0, -876($fp)
	lw $t1, -880($fp)
	sub $t0, $t0, $t1
	sw $t0, -888($fp)
	lw $t1, -888($fp)
	li $t2, 0
	bne $t1, $t2, label149
	j label150
label149:
	li $t0, 0
	sw $t0, -892($fp)
	li $t0, 47150
	sw $t0, -896($fp)
	lw $t1, -896($fp)
	li $t2, 0
	bne $t1, $t2, label161
	j label159
label161:
	lw $t0, -360($fp)
	sw $t0, -900($fp)
	lw $t1, -900($fp)
	li $t2, 0
	bne $t1, $t2, label160
	j label159
label160:
	li $t0, 54066
	sw $t0, -904($fp)
	lw $t1, -904($fp)
	li $t2, 0
	bne $t1, $t2, label158
	j label159
label158:
	li $t0, 1
	sw $t0, -892($fp)
label159:
	li $t0, 11140
	sw $t0, -908($fp)
	li $t0, 0
	sw $t0, -912($fp)
	lw $t0, -96($fp)
	sw $t0, -916($fp)
	lw $t1, -916($fp)
	li $t2, 0
	bne $t1, $t2, label162
	j label164
label164:
	li $t0, 12256
	sw $t0, -920($fp)
	lw $t1, -920($fp)
	li $t2, 0
	bne $t1, $t2, label162
	j label163
label162:
	li $t0, 1
	sw $t0, -912($fp)
label163:
	li $t0, 0
	sw $t0, -924($fp)
	li $t0, 62309
	sw $t0, -928($fp)
	lw $t1, -928($fp)
	li $t2, 0
	bne $t1, $t2, label167
	j label166
label167:
	lw $t0, -648($fp)
	sw $t0, -932($fp)
	lw $t1, -932($fp)
	li $t2, 0
	bne $t1, $t2, label165
	j label166
label165:
	li $t0, 1
	sw $t0, -924($fp)
label166:
	addi $sp, $sp, -4
	lw $t0, -892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -924($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -936($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -20
	sw $t0, -940($fp)
	li $t0, 2
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
	lw $t0, -936($fp)
	lw $t1, -956($fp)
	add $t0, $t0, $t1
	sw $t0, -960($fp)
	li $t0, 25336
	sw $t0, -964($fp)
	li $t0, 0
	lw $t1, -964($fp)
	sub $t0, $t0, $t1
	sw $t0, -968($fp)
	lw $t0, -960($fp)
	lw $t1, -968($fp)
	sub $t0, $t0, $t1
	sw $t0, -972($fp)
	li $t0, 0
	sw $t0, -976($fp)
	li $t0, 26995
	sw $t0, -980($fp)
	lw $t0, -84($fp)
	sw $t0, -984($fp)
	li $t0, 0
	lw $t1, -984($fp)
	sub $t0, $t0, $t1
	sw $t0, -988($fp)
	lw $t1, -980($fp)
	lw $t2, -988($fp)
	ble $t1, $t2, label168
	j label169
label168:
	li $t0, 1
	sw $t0, -976($fp)
label169:
	lw $t1, -972($fp)
	lw $t2, -976($fp)
	bne $t1, $t2, label155
	j label156
label155:
	li $t0, 36265
	sw $t0, -1012($fp)
	addi $t0, $fp, -1008
	sw $t0, -1016($fp)
	li $t0, 0
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
	li $t0, 24654
	sw $t0, -1036($fp)
	addi $t0, $fp, -1008
	sw $t0, -1040($fp)
	li $t0, 1
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
	li $t0, 18206
	sw $t0, -1060($fp)
	addi $t0, $fp, -1008
	sw $t0, -1064($fp)
	li $t0, 2
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
	li $t0, 63234
	sw $t0, -1084($fp)
	addi $t0, $fp, -1008
	sw $t0, -1088($fp)
	li $t0, 3
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1096($fp)
	lw $t0, -1088($fp)
	lw $t1, -1096($fp)
	add $t0, $t0, $t1
	sw $t0, -1100($fp)
	lw $t0, -1084($fp)
	lw $t1, -1100($fp)
	sw $t0, 0($t1)
	lw $t0, -1100($fp)
	lw $t1, 0($t0)
	sw $t1, -1104($fp)
	li $t0, 57494
	sw $t0, -1108($fp)
	addi $t0, $fp, -1008
	sw $t0, -1112($fp)
	li $t0, 4
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1120($fp)
	lw $t0, -1112($fp)
	lw $t1, -1120($fp)
	add $t0, $t0, $t1
	sw $t0, -1124($fp)
	lw $t0, -1108($fp)
	lw $t1, -1124($fp)
	sw $t0, 0($t1)
	lw $t0, -1124($fp)
	lw $t1, 0($t0)
	sw $t1, -1128($fp)
	li $t0, 21088
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	sw $t0, -1140($fp)
	li $t0, 20135
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	sw $t0, -1152($fp)
label170:
	addi $t0, $fp, -20
	sw $t0, -1156($fp)
	li $t0, 0
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
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -1176($fp)
	lw $t1, -1176($fp)
	li $t2, 0
	bne $t1, $t2, label171
	j label172
label171:
	addi $t0, $fp, -36
	sw $t0, -1180($fp)
	li $t0, 0
	sw $t0, -1184($fp)
	li $t0, 47403
	sw $t0, -1188($fp)
	li $t0, 42391
	sw $t0, -1192($fp)
	lw $t1, -1188($fp)
	lw $t2, -1192($fp)
	ble $t1, $t2, label173
	j label174
label173:
	li $t0, 1
	sw $t0, -1184($fp)
label174:
	li $t0, 4
	lw $t1, -1184($fp)
	mul $t0, $t0, $t1
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	lw $t1, -1180($fp)
	add $t0, $t0, $t1
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	lw $t1, 0($t0)
	sw $t1, -1204($fp)
	li $t0, 0
	sw $t0, -1208($fp)
	li $t0, 28471
	sw $t0, -1212($fp)
	lw $t1, -1212($fp)
	li $t2, 0
	bne $t1, $t2, label176
	j label175
label175:
	li $t0, 1
	sw $t0, -1208($fp)
label176:
	li $t0, 0
	lw $t1, -1208($fp)
	sub $t0, $t0, $t1
	sw $t0, -1216($fp)
	lw $t0, -1204($fp)
	lw $t1, -1216($fp)
	mul $t0, $t0, $t1
	sw $t0, -1220($fp)
	li $t0, 0
	sw $t0, -1224($fp)
	lw $t0, -600($fp)
	sw $t0, -1228($fp)
	lw $t1, -1228($fp)
	li $t2, 0
	bne $t1, $t2, label178
	j label177
label177:
	li $t0, 1
	sw $t0, -1224($fp)
label178:
	li $t0, 0
	lw $t1, -1224($fp)
	sub $t0, $t0, $t1
	sw $t0, -1232($fp)
	lw $t0, -1220($fp)
	lw $t1, -1232($fp)
	add $t0, $t0, $t1
	sw $t0, -1236($fp)
	lw $ra, -4($fp)
	lw $v0, -1236($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label170
label172:
label179:
	addi $t0, $fp, -20
	sw $t0, -1240($fp)
	lw $t0, -444($fp)
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
	li $t0, 4944
	sw $t0, -1260($fp)
	lw $t0, -1256($fp)
	lw $t1, -1260($fp)
	mul $t0, $t0, $t1
	sw $t0, -1264($fp)
	lw $t1, -1264($fp)
	li $t2, 0
	bne $t1, $t2, label180
	j label181
label180:
	li $t0, 0
	sw $t0, -1268($fp)
	jal f6
	sw $v0, -1272($fp)
	addi $sp, $sp, 4
	lw $t1, -1272($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label182
label182:
	li $t0, 1
	sw $t0, -1268($fp)
label183:
	li $t0, 47012
	sw $t0, -1276($fp)
	lw $t0, -1268($fp)
	lw $t1, -1276($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1280($fp)
	j label179
label181:
	lw $t0, -360($fp)
	sw $t0, -1284($fp)
	lw $t1, -1284($fp)
	li $t2, 0
	bne $t1, $t2, label185
	j label184
label184:
label187:
	li $t0, 0
	sw $t0, -1288($fp)
	addi $t0, $fp, -76
	sw $t0, -1292($fp)
	lw $t0, -348($fp)
	sw $t0, -1296($fp)
	li $t0, 4
	lw $t1, -1296($fp)
	mul $t0, $t0, $t1
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	lw $t1, -1292($fp)
	add $t0, $t0, $t1
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	lw $t1, 0($t0)
	sw $t1, -1308($fp)
	lw $t0, -600($fp)
	sw $t0, -1312($fp)
	lw $t0, -1308($fp)
	lw $t1, -1312($fp)
	add $t0, $t0, $t1
	sw $t0, -1316($fp)
	addi $t0, $fp, -76
	sw $t0, -1320($fp)
	li $t0, 1
	sw $t0, -1324($fp)
	li $t0, 4
	lw $t1, -1324($fp)
	mul $t0, $t0, $t1
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	lw $t1, -1320($fp)
	add $t0, $t0, $t1
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	lw $t1, 0($t0)
	sw $t1, -1336($fp)
	lw $t0, -1316($fp)
	lw $t1, -1336($fp)
	sub $t0, $t0, $t1
	sw $t0, -1340($fp)
	li $t0, 58373
	sw $t0, -1344($fp)
	lw $t1, -1340($fp)
	lw $t2, -1344($fp)
	bgt $t1, $t2, label190
	j label191
label190:
	li $t0, 1
	sw $t0, -1288($fp)
label191:
	li $t0, 0
	sw $t0, -1348($fp)
	li $t0, 64916
	sw $t0, -1352($fp)
	lw $t1, -1352($fp)
	li $t2, 0
	bne $t1, $t2, label192
	j label193
label192:
	li $t0, 1
	sw $t0, -1348($fp)
label193:
	li $t0, 0
	lw $t1, -1348($fp)
	sub $t0, $t0, $t1
	sw $t0, -1356($fp)
	lw $t1, -1288($fp)
	lw $t2, -1356($fp)
	bne $t1, $t2, label188
	j label189
label188:
	lw $t0, -792($fp)
	sw $t0, -1360($fp)
	li $t0, 0
	sw $t0, -1364($fp)
	li $t0, 5944
	sw $t0, -1368($fp)
	lw $t1, -1368($fp)
	li $t2, 0
	bne $t1, $t2, label198
	j label197
label197:
	li $t0, 1
	sw $t0, -1364($fp)
label198:
	lw $t1, -1360($fp)
	lw $t2, -1364($fp)
	blt $t1, $t2, label194
	j label195
label194:
label199:
	li $t0, 0
	sw $t0, -1372($fp)
	li $t0, 0
	sw $t0, -1376($fp)
	li $t0, 53408
	sw $t0, -1380($fp)
	lw $t0, -108($fp)
	sw $t0, -1384($fp)
	li $t0, 41781
	sw $t0, -1388($fp)
	lw $t0, -1384($fp)
	lw $t1, -1388($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1392($fp)
	lw $t1, -1380($fp)
	lw $t2, -1392($fp)
	bge $t1, $t2, label204
	j label205
label204:
	li $t0, 1
	sw $t0, -1376($fp)
label205:
	lw $t0, -348($fp)
	sw $t0, -1396($fp)
	li $t0, 2718
	sw $t0, -1400($fp)
	lw $t0, -1396($fp)
	lw $t1, -1400($fp)
	mul $t0, $t0, $t1
	sw $t0, -1404($fp)
	li $t0, 129
	sw $t0, -1408($fp)
	lw $t0, -1404($fp)
	lw $t1, -1408($fp)
	add $t0, $t0, $t1
	sw $t0, -1412($fp)
	lw $t1, -1376($fp)
	lw $t2, -1412($fp)
	blt $t1, $t2, label202
	j label203
label202:
	li $t0, 1
	sw $t0, -1372($fp)
label203:
	li $t0, 52922
	sw $t0, -1416($fp)
	lw $t1, -1372($fp)
	lw $t2, -1416($fp)
	bge $t1, $t2, label200
	j label201
label200:
	li $t0, 0
	sw $t0, -1420($fp)
	li $t0, 49868
	sw $t0, -1424($fp)
	lw $t0, -612($fp)
	sw $t0, -1428($fp)
	lw $t0, -1424($fp)
	lw $t1, -1428($fp)
	add $t0, $t0, $t1
	sw $t0, -1432($fp)
	lw $t1, -1432($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label208
label208:
	lw $t0, -1136($fp)
	sw $t0, -1436($fp)
	lw $t1, -1436($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label207
label206:
	li $t0, 1
	sw $t0, -1420($fp)
label207:
	j label199
label201:
	j label196
label195:
	addi $t0, $fp, -76
	sw $t0, -1440($fp)
	li $t0, 0
	sw $t0, -1444($fp)
	li $t0, 54195
	sw $t0, -1448($fp)
	li $t0, 26710
	sw $t0, -1452($fp)
	lw $t0, -1448($fp)
	lw $t1, -1452($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1456($fp)
	li $t0, 0
	lw $t1, -1456($fp)
	sub $t0, $t0, $t1
	sw $t0, -1460($fp)
	lw $t1, -1460($fp)
	li $t2, 0
	bne $t1, $t2, label210
	j label209
label209:
	li $t0, 1
	sw $t0, -1444($fp)
label210:
	li $t0, 4
	lw $t1, -1444($fp)
	mul $t0, $t0, $t1
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	lw $t1, -1440($fp)
	add $t0, $t0, $t1
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	lw $t1, 0($t0)
	sw $t1, -1472($fp)
	lw $ra, -4($fp)
	lw $v0, -1472($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label196:
	j label187
label189:
	j label186
label185:
	jal f6
	sw $v0, -1476($fp)
	addi $sp, $sp, 4
	lw $ra, -4($fp)
	lw $v0, -1476($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label186:
	addi $t0, $fp, -76
	sw $t0, -1480($fp)
	li $t0, 0
	sw $t0, -1484($fp)
	lw $t0, -612($fp)
	sw $t0, -1488($fp)
	li $t0, 37786
	sw $t0, -1492($fp)
	lw $t0, -1488($fp)
	lw $t1, -1492($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1496($fp)
	lw $t1, -1496($fp)
	li $t2, 0
	bne $t1, $t2, label214
	j label216
label216:
	li $t0, 13996
	sw $t0, -1500($fp)
	lw $t1, -1500($fp)
	li $t2, 0
	bne $t1, $t2, label214
	j label215
label214:
	li $t0, 1
	sw $t0, -1484($fp)
label215:
	li $t0, 4
	lw $t1, -1484($fp)
	mul $t0, $t0, $t1
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	lw $t1, -1480($fp)
	add $t0, $t0, $t1
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	lw $t1, 0($t0)
	sw $t1, -1512($fp)
	lw $t1, -1512($fp)
	li $t2, 0
	bne $t1, $t2, label212
	j label211
label211:
	addi $t0, $fp, -36
	sw $t0, -1516($fp)
	li $t0, 2
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
	li $t0, 0
	sw $t0, -1536($fp)
	addi $t0, $fp, -56
	sw $t0, -1540($fp)
	lw $t0, -444($fp)
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
	lw $t0, -612($fp)
	sw $t0, -1560($fp)
	lw $t1, -1556($fp)
	lw $t2, -1560($fp)
	bne $t1, $t2, label217
	j label218
label217:
	li $t0, 1
	sw $t0, -1536($fp)
label218:
	addi $t0, $fp, -1008
	sw $t0, -1564($fp)
	lw $t0, -420($fp)
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
	lw $t0, -444($fp)
	sw $t0, -1584($fp)
	lw $t0, -1580($fp)
	lw $t1, -1584($fp)
	mul $t0, $t0, $t1
	sw $t0, -1588($fp)
	li $t0, 53706
	sw $t0, -1592($fp)
	addi $sp, $sp, -4
	lw $t0, -1532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1592($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1596($fp)
	addi $sp, $sp, 20
	li $t0, 6376
	sw $t0, -1600($fp)
	lw $t0, -1596($fp)
	lw $t1, -1600($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1604($fp)
	lw $t0, -1604($fp)
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	sw $t0, -1608($fp)
	j label213
label212:
	lw $t0, -420($fp)
	sw $t0, -1612($fp)
	li $t0, 0
	lw $t1, -1612($fp)
	sub $t0, $t0, $t1
	sw $t0, -1616($fp)
	li $t0, 0
	lw $t1, -1616($fp)
	sub $t0, $t0, $t1
	sw $t0, -1620($fp)
	li $t0, 0
	lw $t1, -1620($fp)
	sub $t0, $t0, $t1
	sw $t0, -1624($fp)
	lw $t1, -1624($fp)
	li $t2, 0
	bne $t1, $t2, label219
	j label220
label219:
	li $t0, 6214
	sw $t0, -1636($fp)
	addi $t0, $fp, -1632
	sw $t0, -1640($fp)
	li $t0, 0
	sw $t0, -1644($fp)
	lw $t0, -1644($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1648($fp)
	lw $t0, -1640($fp)
	lw $t1, -1648($fp)
	add $t0, $t0, $t1
	sw $t0, -1652($fp)
	lw $t0, -1636($fp)
	lw $t1, -1652($fp)
	sw $t0, 0($t1)
	lw $t0, -1652($fp)
	lw $t1, 0($t0)
	sw $t1, -1656($fp)
	li $t0, 30608
	sw $t0, -1660($fp)
	addi $t0, $fp, -1632
	sw $t0, -1664($fp)
	li $t0, 1
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1672($fp)
	lw $t0, -1664($fp)
	lw $t1, -1672($fp)
	add $t0, $t0, $t1
	sw $t0, -1676($fp)
	lw $t0, -1660($fp)
	lw $t1, -1676($fp)
	sw $t0, 0($t1)
	lw $t0, -1676($fp)
	lw $t1, 0($t0)
	sw $t1, -1680($fp)
	addi $t0, $fp, -1632
	sw $t0, -1684($fp)
	li $t0, 0
	sw $t0, -1688($fp)
	li $t0, 27464
	sw $t0, -1692($fp)
	lw $t0, -108($fp)
	sw $t0, -1696($fp)
	lw $t0, -1692($fp)
	lw $t1, -1696($fp)
	add $t0, $t0, $t1
	sw $t0, -1700($fp)
	lw $t1, -1700($fp)
	li $t2, 0
	bne $t1, $t2, label225
	j label224
label225:
	li $t0, 26349
	sw $t0, -1704($fp)
	lw $t1, -1704($fp)
	li $t2, 0
	bne $t1, $t2, label222
	j label224
label224:
	li $t0, 39746
	sw $t0, -1708($fp)
	lw $t1, -1708($fp)
	li $t2, 0
	bne $t1, $t2, label226
	j label223
label226:
	lw $t0, -600($fp)
	sw $t0, -1712($fp)
	lw $t1, -1712($fp)
	li $t2, 0
	bne $t1, $t2, label222
	j label223
label222:
	li $t0, 1
	sw $t0, -1688($fp)
label223:
	li $t0, 4
	lw $t1, -1688($fp)
	mul $t0, $t0, $t1
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	lw $t1, -1684($fp)
	add $t0, $t0, $t1
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	lw $t1, 0($t0)
	sw $t1, -1724($fp)
	li $t0, 0
	sw $t0, -1728($fp)
	lw $t0, -456($fp)
	sw $t0, -1732($fp)
	lw $t0, -600($fp)
	sw $t0, -1736($fp)
	lw $t0, -444($fp)
	sw $t0, -1740($fp)
	lw $t0, -1736($fp)
	lw $t1, -1740($fp)
	mul $t0, $t0, $t1
	sw $t0, -1744($fp)
	lw $t1, -1732($fp)
	lw $t2, -1744($fp)
	blt $t1, $t2, label227
	j label228
label227:
	li $t0, 1
	sw $t0, -1728($fp)
label228:
	lw $t0, -1728($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -1748($fp)
	li $t0, 0
	sw $t0, -1752($fp)
	addi $t0, $fp, -1008
	sw $t0, -1756($fp)
	li $t0, 1
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
	lw $t0, -792($fp)
	sw $t0, -1776($fp)
	li $t0, 0
	lw $t1, -1776($fp)
	sub $t0, $t0, $t1
	sw $t0, -1780($fp)
	lw $t1, -1772($fp)
	lw $t2, -1780($fp)
	bne $t1, $t2, label229
	j label230
label229:
	li $t0, 1
	sw $t0, -1752($fp)
label230:
	lw $t0, -1752($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -1784($fp)
	lw $t0, 4($fp)
	sw $t0, -1788($fp)
	li $t0, 21613
	sw $t0, -1792($fp)
	j label221
label220:
	addi $t0, $fp, -56
	sw $t0, -1796($fp)
	li $t0, 4
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
	lw $t0, -360($fp)
	sw $t0, -1816($fp)
	lw $t0, -1812($fp)
	lw $t1, -1816($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1820($fp)
	li $t0, 0
	lw $t1, -1820($fp)
	sub $t0, $t0, $t1
	sw $t0, -1824($fp)
	li $t0, 26557
	sw $t0, -1828($fp)
	lw $t0, -1824($fp)
	lw $t1, -1828($fp)
	sub $t0, $t0, $t1
	sw $t0, -1832($fp)
	lw $ra, -4($fp)
	lw $v0, -1832($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label221:
label213:
	j label157
label156:
label231:
	li $t0, 5371
	sw $t0, -1836($fp)
	jal f6
	sw $v0, -1840($fp)
	addi $sp, $sp, 4
	lw $t0, -420($fp)
	sw $t0, -1844($fp)
	lw $t0, -1840($fp)
	lw $t1, -1844($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1848($fp)
	lw $t0, -1836($fp)
	lw $t1, -1848($fp)
	add $t0, $t0, $t1
	sw $t0, -1852($fp)
	lw $t1, -1852($fp)
	li $t2, 0
	bne $t1, $t2, label234
	j label233
label234:
	lw $t0, -96($fp)
	sw $t0, -1856($fp)
	li $t0, 0
	lw $t1, -1856($fp)
	sub $t0, $t0, $t1
	sw $t0, -1860($fp)
	lw $t1, -1860($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label233
label232:
	li $t0, 32006
	sw $t0, -1864($fp)
	li $t0, 0
	lw $t1, -1864($fp)
	sub $t0, $t0, $t1
	sw $t0, -1868($fp)
	li $t0, 0
	lw $t1, -1868($fp)
	sub $t0, $t0, $t1
	sw $t0, -1872($fp)
	li $t0, 0
	sw $t0, -1876($fp)
	li $t0, 47665
	sw $t0, -1880($fp)
	li $t0, 51617
	sw $t0, -1884($fp)
	lw $t1, -1880($fp)
	lw $t2, -1884($fp)
	bgt $t1, $t2, label235
	j label236
label235:
	li $t0, 1
	sw $t0, -1876($fp)
label236:
	li $t0, 0
	sw $t0, -1888($fp)
	li $t0, 55760
	sw $t0, -1892($fp)
	lw $t0, -792($fp)
	sw $t0, -1896($fp)
	lw $t1, -1892($fp)
	lw $t2, -1896($fp)
	bgt $t1, $t2, label237
	j label238
label237:
	li $t0, 1
	sw $t0, -1888($fp)
label238:
	li $t0, 0
	sw $t0, -1900($fp)
	li $t0, 0
	sw $t0, -1904($fp)
	li $t0, 56380
	sw $t0, -1908($fp)
	li $t0, 41720
	sw $t0, -1912($fp)
	lw $t1, -1908($fp)
	lw $t2, -1912($fp)
	bge $t1, $t2, label241
	j label242
label241:
	li $t0, 1
	sw $t0, -1904($fp)
label242:
	li $t0, 63744
	sw $t0, -1916($fp)
	lw $t1, -1904($fp)
	lw $t2, -1916($fp)
	bne $t1, $t2, label239
	j label240
label239:
	li $t0, 1
	sw $t0, -1900($fp)
label240:
	addi $sp, $sp, -4
	lw $t0, -1872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1900($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1920($fp)
	addi $sp, $sp, 20
	lw $ra, -4($fp)
	lw $v0, -1920($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label231
label233:
label157:
	j label148
label150:
	li $t0, 0
	sw $t0, -1924($fp)
	li $t0, 50383
	sw $t0, -1928($fp)
	lw $t1, -1928($fp)
	li $t2, 0
	bne $t1, $t2, label246
	j label247
label246:
	li $t0, 1
	sw $t0, -1924($fp)
label247:
	lw $t0, -444($fp)
	sw $t0, -1932($fp)
	lw $t0, -792($fp)
	sw $t0, -1936($fp)
	lw $t0, -1932($fp)
	lw $t1, -1936($fp)
	sub $t0, $t0, $t1
	sw $t0, -1940($fp)
	li $t0, 51746
	sw $t0, -1944($fp)
	lw $t0, -1940($fp)
	lw $t1, -1944($fp)
	add $t0, $t0, $t1
	sw $t0, -1948($fp)
	lw $t1, -1924($fp)
	lw $t2, -1948($fp)
	bgt $t1, $t2, label243
	j label244
label243:
	li $t0, 34715
	sw $t0, -1952($fp)
	lw $t0, -468($fp)
	sw $t0, -1956($fp)
	lw $t0, -1952($fp)
	lw $t1, -1956($fp)
	add $t0, $t0, $t1
	sw $t0, -1960($fp)
	li $t0, 0
	sw $t0, -1964($fp)
	lw $t0, -408($fp)
	sw $t0, -1968($fp)
	li $t0, 0
	lw $t1, -1968($fp)
	sub $t0, $t0, $t1
	sw $t0, -1972($fp)
	li $t0, 19392
	sw $t0, -1976($fp)
	lw $t1, -1972($fp)
	lw $t2, -1976($fp)
	bne $t1, $t2, label248
	j label249
label248:
	li $t0, 1
	sw $t0, -1964($fp)
label249:
	lw $t0, -432($fp)
	sw $t0, -1980($fp)
	lw $t0, -360($fp)
	sw $t0, -1984($fp)
	lw $t0, -1980($fp)
	lw $t1, -1984($fp)
	mul $t0, $t0, $t1
	sw $t0, -1988($fp)
	li $t0, 0
	lw $t1, -1988($fp)
	sub $t0, $t0, $t1
	sw $t0, -1992($fp)
	li $t0, 0
	sw $t0, -1996($fp)
	lw $t0, -372($fp)
	sw $t0, -2000($fp)
	li $t0, 0
	lw $t1, -2000($fp)
	sub $t0, $t0, $t1
	sw $t0, -2004($fp)
	lw $t1, -2004($fp)
	li $t2, 0
	bne $t1, $t2, label251
	j label250
label250:
	li $t0, 1
	sw $t0, -1996($fp)
label251:
	addi $sp, $sp, -4
	lw $t0, -1960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1996($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2008($fp)
	addi $sp, $sp, 20
	j label245
label244:
	li $t0, 0
	sw $t0, -2012($fp)
	li $t0, 54401
	sw $t0, -2016($fp)
	lw $t0, -444($fp)
	sw $t0, -2020($fp)
	lw $t0, -2016($fp)
	lw $t1, -2020($fp)
	mul $t0, $t0, $t1
	sw $t0, -2024($fp)
	lw $t1, -2024($fp)
	li $t2, 0
	bne $t1, $t2, label258
	j label257
label258:
	lw $t0, -648($fp)
	sw $t0, -2028($fp)
	lw $t1, -2028($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label257
label256:
	li $t0, 1
	sw $t0, -2012($fp)
label257:
	li $t0, 6966
	sw $t0, -2032($fp)
	li $t0, 0
	sw $t0, -2036($fp)
	li $t0, 0
	sw $t0, -2040($fp)
	li $t0, 46102
	sw $t0, -2044($fp)
	lw $t1, -2044($fp)
	li $t2, 0
	bne $t1, $t2, label262
	j label261
label261:
	li $t0, 1
	sw $t0, -2040($fp)
label262:
	lw $t0, -648($fp)
	sw $t0, -2048($fp)
	lw $t1, -2040($fp)
	lw $t2, -2048($fp)
	blt $t1, $t2, label259
	j label260
label259:
	li $t0, 1
	sw $t0, -2036($fp)
label260:
	li $t0, 0
	sw $t0, -2052($fp)
	lw $t0, -348($fp)
	sw $t0, -2056($fp)
	li $t0, 40405
	sw $t0, -2060($fp)
	lw $t1, -2056($fp)
	lw $t2, -2060($fp)
	ble $t1, $t2, label263
	j label264
label263:
	li $t0, 1
	sw $t0, -2052($fp)
label264:
	addi $sp, $sp, -4
	lw $t0, -2012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2052($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2064($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -36
	sw $t0, -2068($fp)
	lw $t0, -216($fp)
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
	li $t0, 34272
	sw $t0, -2088($fp)
	lw $t0, -2084($fp)
	lw $t1, -2088($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2092($fp)
	lw $t0, -2064($fp)
	lw $t1, -2092($fp)
	add $t0, $t0, $t1
	sw $t0, -2096($fp)
	lw $t1, -2096($fp)
	li $t2, 0
	bne $t1, $t2, label255
	j label253
label255:
	jal f6
	sw $v0, -2100($fp)
	addi $sp, $sp, 4
	lw $t1, -2100($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label253
label252:
	li $t0, 0
	sw $t0, -2104($fp)
	li $t0, 0
	sw $t0, -2108($fp)
	li $t0, 0
	sw $t0, -2112($fp)
	li $t0, 0
	sw $t0, -2116($fp)
	li $t0, 0
	sw $t0, -2120($fp)
	addi $t0, $fp, -56
	sw $t0, -2124($fp)
	li $t0, 2
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
	lw $t1, -2140($fp)
	li $t2, 0
	bne $t1, $t2, label273
	j label275
label275:
	li $t0, 2577
	sw $t0, -2144($fp)
	lw $t1, -2144($fp)
	li $t2, 0
	bne $t1, $t2, label273
	j label274
label273:
	li $t0, 1
	sw $t0, -2120($fp)
label274:
	addi $t0, $fp, -36
	sw $t0, -2148($fp)
	li $t0, 0
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
	lw $t0, -240($fp)
	sw $t0, -2168($fp)
	li $t0, 0
	sw $t0, -2172($fp)
	li $t0, 15481
	sw $t0, -2176($fp)
	lw $t0, -228($fp)
	sw $t0, -2180($fp)
	lw $t1, -2176($fp)
	lw $t2, -2180($fp)
	beq $t1, $t2, label278
	j label277
label278:
	lw $t0, -648($fp)
	sw $t0, -2184($fp)
	lw $t1, -2184($fp)
	li $t2, 0
	bne $t1, $t2, label276
	j label277
label276:
	li $t0, 1
	sw $t0, -2172($fp)
label277:
	addi $sp, $sp, -4
	lw $t0, -2120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2172($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2188($fp)
	addi $sp, $sp, 20
	lw $t1, -2188($fp)
	li $t2, 0
	bne $t1, $t2, label272
	j label271
label271:
	li $t0, 1
	sw $t0, -2116($fp)
label272:
	li $t0, 48044
	sw $t0, -2192($fp)
	li $t0, 0
	lw $t1, -2192($fp)
	sub $t0, $t0, $t1
	sw $t0, -2196($fp)
	lw $t1, -2116($fp)
	lw $t2, -2196($fp)
	bgt $t1, $t2, label269
	j label270
label269:
	li $t0, 1
	sw $t0, -2112($fp)
label270:
	li $t0, 0
	sw $t0, -2200($fp)
	lw $t0, -624($fp)
	sw $t0, -2204($fp)
	li $t0, 0
	lw $t1, -2204($fp)
	sub $t0, $t0, $t1
	sw $t0, -2208($fp)
	lw $t1, -2208($fp)
	li $t2, 0
	bne $t1, $t2, label280
	j label279
label279:
	li $t0, 1
	sw $t0, -2200($fp)
label280:
	lw $t1, -2112($fp)
	lw $t2, -2200($fp)
	bge $t1, $t2, label267
	j label268
label267:
	li $t0, 1
	sw $t0, -2108($fp)
label268:
	jal f6
	sw $v0, -2212($fp)
	addi $sp, $sp, 4
	lw $t0, -600($fp)
	sw $t0, -2216($fp)
	lw $t0, -2212($fp)
	lw $t1, -2216($fp)
	add $t0, $t0, $t1
	sw $t0, -2220($fp)
	li $t0, 46434
	sw $t0, -2224($fp)
	li $t0, 53947
	sw $t0, -2228($fp)
	lw $t0, -2224($fp)
	lw $t1, -2228($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2232($fp)
	li $t0, 7977
	sw $t0, -2236($fp)
	lw $t0, -2232($fp)
	lw $t1, -2236($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2240($fp)
	lw $t0, -792($fp)
	sw $t0, -2244($fp)
	lw $t0, -648($fp)
	sw $t0, -2248($fp)
	lw $t0, -2244($fp)
	lw $t1, -2248($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2252($fp)
	li $t0, 49617
	sw $t0, -2256($fp)
	lw $t0, -2252($fp)
	lw $t1, -2256($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2260($fp)
	li $t0, 0
	sw $t0, -2264($fp)
	lw $t0, -228($fp)
	sw $t0, -2268($fp)
	lw $t0, -780($fp)
	sw $t0, -2272($fp)
	lw $t0, -2268($fp)
	lw $t1, -2272($fp)
	add $t0, $t0, $t1
	sw $t0, -2276($fp)
	lw $t1, -2276($fp)
	li $t2, 0
	bne $t1, $t2, label283
	j label282
label283:
	li $t0, 32334
	sw $t0, -2280($fp)
	lw $t1, -2280($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label282
label281:
	li $t0, 1
	sw $t0, -2264($fp)
label282:
	addi $sp, $sp, -4
	lw $t0, -2220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2264($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2284($fp)
	addi $sp, $sp, 20
	lw $t1, -2108($fp)
	lw $t2, -2284($fp)
	blt $t1, $t2, label265
	j label266
label265:
	li $t0, 1
	sw $t0, -2104($fp)
label266:
	j label254
label253:
	lw $t0, -444($fp)
	sw $t0, -2288($fp)
	li $t0, 7758
	sw $t0, -2292($fp)
	lw $t0, -2288($fp)
	lw $t1, -2292($fp)
	mul $t0, $t0, $t1
	sw $t0, -2296($fp)
	li $t0, 14969
	sw $t0, -2300($fp)
	lw $t0, -2296($fp)
	lw $t1, -2300($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2304($fp)
	li $t0, 13348
	sw $t0, -2308($fp)
	lw $t0, -2304($fp)
	lw $t1, -2308($fp)
	mul $t0, $t0, $t1
	sw $t0, -2312($fp)
	li $t0, 0
	sw $t0, -2316($fp)
	lw $t0, -396($fp)
	sw $t0, -2320($fp)
	lw $t1, -2320($fp)
	li $t2, 0
	bne $t1, $t2, label285
	j label284
label284:
	li $t0, 1
	sw $t0, -2316($fp)
label285:
	lw $t0, -2312($fp)
	lw $t1, -2316($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2324($fp)
	lw $t0, -636($fp)
	sw $t0, -2328($fp)
	lw $t0, -2324($fp)
	lw $t1, -2328($fp)
	add $t0, $t0, $t1
	sw $t0, -2332($fp)
	lw $ra, -4($fp)
	lw $v0, -2332($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label254:
label245:
	lw $t0, -84($fp)
	sw $t0, -2336($fp)
	lw $t0, -2336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -2340($fp)
	lw $t0, -2340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -2344($fp)
	lw $t0, -2344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -2348($fp)
	li $t0, 0
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
	addi $t0, $fp, -20
	sw $t0, -2368($fp)
	li $t0, 1
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
	addi $t0, $fp, -20
	sw $t0, -2388($fp)
	li $t0, 2
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
	addi $t0, $fp, -20
	sw $t0, -2408($fp)
	li $t0, 3
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
	lw $t0, -216($fp)
	sw $t0, -2428($fp)
	lw $t0, -2428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -228($fp)
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -240($fp)
	sw $t0, -2436($fp)
	lw $t0, -2436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -2440($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -2460($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -2480($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -2500($fp)
	li $t0, 3
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
	lw $t0, -348($fp)
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -360($fp)
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -372($fp)
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -384($fp)
	sw $t0, -2532($fp)
	lw $t0, -2532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -396($fp)
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -408($fp)
	sw $t0, -2540($fp)
	lw $t0, -2540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -420($fp)
	sw $t0, -2544($fp)
	lw $t0, -2544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -432($fp)
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -444($fp)
	sw $t0, -2552($fp)
	lw $t0, -2552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -456($fp)
	sw $t0, -2556($fp)
	lw $t0, -2556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -2560($fp)
	lw $t0, -2560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -2564($fp)
	li $t0, 0
	sw $t0, -2568($fp)
	li $t0, 4
	lw $t1, -2568($fp)
	mul $t0, $t0, $t1
	sw $t0, -2572($fp)
	lw $t0, -2572($fp)
	lw $t1, -2564($fp)
	add $t0, $t0, $t1
	sw $t0, -2576($fp)
	lw $t0, -2576($fp)
	lw $t1, 0($t0)
	sw $t1, -2580($fp)
	lw $t0, -2580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -2584($fp)
	li $t0, 1
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
	lw $t0, -2600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -2604($fp)
	li $t0, 2
	sw $t0, -2608($fp)
	li $t0, 4
	lw $t1, -2608($fp)
	mul $t0, $t0, $t1
	sw $t0, -2612($fp)
	lw $t0, -2612($fp)
	lw $t1, -2604($fp)
	add $t0, $t0, $t1
	sw $t0, -2616($fp)
	lw $t0, -2616($fp)
	lw $t1, 0($t0)
	sw $t1, -2620($fp)
	lw $t0, -2620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -2624($fp)
	li $t0, 3
	sw $t0, -2628($fp)
	li $t0, 4
	lw $t1, -2628($fp)
	mul $t0, $t0, $t1
	sw $t0, -2632($fp)
	lw $t0, -2632($fp)
	lw $t1, -2624($fp)
	add $t0, $t0, $t1
	sw $t0, -2636($fp)
	lw $t0, -2636($fp)
	lw $t1, 0($t0)
	sw $t1, -2640($fp)
	lw $t0, -2640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -2644($fp)
	li $t0, 4
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
	lw $t0, -2660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -600($fp)
	sw $t0, -2664($fp)
	lw $t0, -2664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -612($fp)
	sw $t0, -2668($fp)
	lw $t0, -2668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -624($fp)
	sw $t0, -2672($fp)
	lw $t0, -2672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -636($fp)
	sw $t0, -2676($fp)
	lw $t0, -2676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	sw $t0, -2680($fp)
	lw $t0, -2680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
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
	addi $t0, $fp, -76
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
	addi $t0, $fp, -76
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
	addi $t0, $fp, -76
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
	addi $t0, $fp, -76
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
	lw $t0, -780($fp)
	sw $t0, -2784($fp)
	lw $t0, -2784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -792($fp)
	sw $t0, -2788($fp)
	lw $t0, -2788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -804($fp)
	sw $t0, -2792($fp)
	lw $t0, -2792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2796($fp)
	li $t0, 64138
	sw $t0, -2800($fp)
	lw $t1, -2800($fp)
	li $t2, 0
	bne $t1, $t2, label288
	j label286
label288:
	addi $t0, $fp, -36
	sw $t0, -2804($fp)
	li $t0, 1
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
	lw $t0, -432($fp)
	sw $t0, -2824($fp)
	lw $t1, -2820($fp)
	lw $t2, -2824($fp)
	beq $t1, $t2, label286
	j label287
label286:
	li $t0, 1
	sw $t0, -2796($fp)
label287:
	lw $ra, -4($fp)
	lw $v0, -2796($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -2828($fp)
	addi $t0, $fp, -20
	sw $t0, -2832($fp)
	lw $t0, -96($fp)
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
	li $t0, 0
	lw $t1, -2848($fp)
	sub $t0, $t0, $t1
	sw $t0, -2852($fp)
	addi $t0, $fp, -20
	sw $t0, -2856($fp)
	lw $t0, -348($fp)
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
	li $t0, 0
	lw $t1, -2872($fp)
	sub $t0, $t0, $t1
	sw $t0, -2876($fp)
	li $t0, 58381
	sw $t0, -2880($fp)
	lw $t0, -2880($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -2884($fp)
	li $t0, 0
	sw $t0, -2888($fp)
	li $t0, 49384
	sw $t0, -2892($fp)
	lw $t1, -2892($fp)
	li $t2, 0
	bne $t1, $t2, label291
	j label294
label294:
	lw $t0, -804($fp)
	sw $t0, -2896($fp)
	lw $t1, -2896($fp)
	li $t2, 0
	bne $t1, $t2, label291
	j label293
label293:
	li $t0, 40225
	sw $t0, -2900($fp)
	lw $t1, -2900($fp)
	li $t2, 0
	bne $t1, $t2, label291
	j label292
label291:
	li $t0, 1
	sw $t0, -2888($fp)
label292:
	lw $t0, -384($fp)
	sw $t0, -2904($fp)
	lw $t0, -2904($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -2908($fp)
	addi $sp, $sp, -4
	lw $t0, -2876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2908($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2912($fp)
	addi $sp, $sp, 20
	lw $t0, -408($fp)
	sw $t0, -2916($fp)
	lw $t0, -2912($fp)
	lw $t1, -2916($fp)
	add $t0, $t0, $t1
	sw $t0, -2920($fp)
	li $t0, 0
	sw $t0, -2924($fp)
	li $t0, 20833
	sw $t0, -2928($fp)
	lw $t0, -600($fp)
	sw $t0, -2932($fp)
	lw $t0, -2928($fp)
	lw $t1, -2932($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2936($fp)
	li $t0, 23665
	sw $t0, -2940($fp)
	lw $t1, -2936($fp)
	lw $t2, -2940($fp)
	bne $t1, $t2, label295
	j label296
label295:
	li $t0, 1
	sw $t0, -2924($fp)
label296:
	li $t0, 63174
	sw $t0, -2944($fp)
	lw $t0, -780($fp)
	sw $t0, -2948($fp)
	lw $t0, -2944($fp)
	lw $t1, -2948($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2952($fp)
	li $t0, 0
	lw $t1, -2952($fp)
	sub $t0, $t0, $t1
	sw $t0, -2956($fp)
	li $t0, 0
	sw $t0, -2960($fp)
	li $t0, 0
	sw $t0, -2964($fp)
	li $t0, 54363
	sw $t0, -2968($fp)
	lw $t0, -108($fp)
	sw $t0, -2972($fp)
	lw $t1, -2968($fp)
	lw $t2, -2972($fp)
	beq $t1, $t2, label299
	j label300
label299:
	li $t0, 1
	sw $t0, -2964($fp)
label300:
	li $t0, 38818
	sw $t0, -2976($fp)
	lw $t1, -2964($fp)
	lw $t2, -2976($fp)
	beq $t1, $t2, label297
	j label298
label297:
	li $t0, 1
	sw $t0, -2960($fp)
label298:
	addi $sp, $sp, -4
	lw $t0, -2920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2960($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2980($fp)
	addi $sp, $sp, 20
	lw $t1, -2852($fp)
	lw $t2, -2980($fp)
	bge $t1, $t2, label289
	j label290
label289:
	li $t0, 1
	sw $t0, -2828($fp)
label290:
	lw $t0, -2828($fp)
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -2984($fp)
label301:
	li $t0, 24253
	sw $t0, -2988($fp)
	lw $t1, -2988($fp)
	li $t2, 0
	bne $t1, $t2, label302
	j label303
label302:
	li $t0, 20791
	sw $t0, -2992($fp)
	lw $t0, -2992($fp)
	sw $t0, -2996($fp)
	lw $t0, -2996($fp)
	sw $t0, -3000($fp)
	li $t0, 65347
	sw $t0, -3004($fp)
	lw $t0, -3004($fp)
	sw $t0, -3008($fp)
	lw $t0, -3008($fp)
	sw $t0, -3012($fp)
	li $t0, 0
	sw $t0, -3016($fp)
	lw $t0, -216($fp)
	sw $t0, -3020($fp)
	li $t0, 13119
	sw $t0, -3024($fp)
	lw $t0, -3020($fp)
	lw $t1, -3024($fp)
	sub $t0, $t0, $t1
	sw $t0, -3028($fp)
	lw $t0, -600($fp)
	sw $t0, -3032($fp)
	lw $t1, -3028($fp)
	lw $t2, -3032($fp)
	bne $t1, $t2, label307
	j label308
label307:
	li $t0, 1
	sw $t0, -3016($fp)
label308:
	addi $sp, $sp, -4
	lw $t0, -3016($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3036($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -3036($fp)
	sub $t0, $t0, $t1
	sw $t0, -3040($fp)
	lw $t1, -3040($fp)
	li $t2, 0
	bne $t1, $t2, label304
	j label305
label304:
	lw $t0, 4($fp)
	sw $t0, -3044($fp)
	lw $ra, -4($fp)
	lw $v0, -3044($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label306
label305:
label309:
	lw $t0, -396($fp)
	sw $t0, -3048($fp)
	lw $t1, -3048($fp)
	li $t2, 0
	bne $t1, $t2, label310
	j label311
label310:
	lw $t0, -3008($fp)
	sw $t0, -3052($fp)
	li $t0, 0
	lw $t1, -3052($fp)
	sub $t0, $t0, $t1
	sw $t0, -3056($fp)
	li $t0, 0
	lw $t1, -3056($fp)
	sub $t0, $t0, $t1
	sw $t0, -3060($fp)
	li $t0, 0
	lw $t1, -3060($fp)
	sub $t0, $t0, $t1
	sw $t0, -3064($fp)
	lw $t0, -3064($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -3068($fp)
	j label309
label311:
label306:
	li $t0, 0
	sw $t0, -3072($fp)
	lw $t0, -2996($fp)
	sw $t0, -3076($fp)
	li $t0, 0
	sw $t0, -3080($fp)
	li $t0, 0
	sw $t0, -3084($fp)
	lw $t0, -444($fp)
	sw $t0, -3088($fp)
	li $t0, 0
	lw $t1, -3088($fp)
	sub $t0, $t0, $t1
	sw $t0, -3092($fp)
	lw $t1, -3092($fp)
	li $t2, 0
	bne $t1, $t2, label319
	j label318
label319:
	lw $t0, -456($fp)
	sw $t0, -3096($fp)
	lw $t1, -3096($fp)
	li $t2, 0
	bne $t1, $t2, label317
	j label318
label317:
	li $t0, 1
	sw $t0, -3084($fp)
label318:
	addi $sp, $sp, -4
	lw $t0, -3084($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3100($fp)
	addi $sp, $sp, 8
	lw $t1, -3100($fp)
	li $t2, 0
	bne $t1, $t2, label316
	j label315
label315:
	li $t0, 1
	sw $t0, -3080($fp)
label316:
	lw $t0, -3076($fp)
	lw $t1, -3080($fp)
	add $t0, $t0, $t1
	sw $t0, -3104($fp)
	lw $t1, -3104($fp)
	li $t2, 0
	bne $t1, $t2, label312
	j label314
label314:
	li $t0, 0
	sw $t0, -3108($fp)
	li $t0, 55064
	sw $t0, -3112($fp)
	li $t0, 15292
	sw $t0, -3116($fp)
	lw $t0, -3112($fp)
	lw $t1, -3116($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3120($fp)
	li $t0, 40634
	sw $t0, -3124($fp)
	lw $t1, -3120($fp)
	lw $t2, -3124($fp)
	ble $t1, $t2, label320
	j label321
label320:
	li $t0, 1
	sw $t0, -3108($fp)
label321:
	li $t0, 30176
	sw $t0, -3128($fp)
	lw $t1, -3108($fp)
	lw $t2, -3128($fp)
	beq $t1, $t2, label312
	j label313
label312:
	li $t0, 1
	sw $t0, -3072($fp)
label313:
	lw $t0, -2996($fp)
	sw $t0, -3132($fp)
	lw $t0, -3132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3136($fp)
	li $t0, 36988
	sw $t0, -3140($fp)
	lw $t1, -3140($fp)
	li $t2, 0
	bne $t1, $t2, label323
	j label322
label322:
	li $t0, 1
	sw $t0, -3136($fp)
label323:
	li $t0, 0
	sw $t0, -3144($fp)
	lw $t0, -444($fp)
	sw $t0, -3148($fp)
	lw $t1, -3148($fp)
	li $t2, 0
	bne $t1, $t2, label325
	j label324
label324:
	li $t0, 1
	sw $t0, -3144($fp)
label325:
	lw $t0, -3136($fp)
	lw $t1, -3144($fp)
	add $t0, $t0, $t1
	sw $t0, -3152($fp)
	lw $ra, -4($fp)
	lw $v0, -3152($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label301
label303:
	lw $t0, -84($fp)
	sw $t0, -3156($fp)
	lw $t0, -3156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -3160($fp)
	lw $t0, -3160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -3164($fp)
	lw $t0, -3164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
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
	lw $t0, -3184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -3188($fp)
	li $t0, 1
	sw $t0, -3192($fp)
	li $t0, 4
	lw $t1, -3192($fp)
	mul $t0, $t0, $t1
	sw $t0, -3196($fp)
	lw $t0, -3196($fp)
	lw $t1, -3188($fp)
	add $t0, $t0, $t1
	sw $t0, -3200($fp)
	lw $t0, -3200($fp)
	lw $t1, 0($t0)
	sw $t1, -3204($fp)
	lw $t0, -3204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -3208($fp)
	li $t0, 2
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
	addi $t0, $fp, -20
	sw $t0, -3228($fp)
	li $t0, 3
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
	lw $t0, -216($fp)
	sw $t0, -3248($fp)
	lw $t0, -3248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -228($fp)
	sw $t0, -3252($fp)
	lw $t0, -3252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -240($fp)
	sw $t0, -3256($fp)
	lw $t0, -3256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -3260($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -3280($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -3300($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -3320($fp)
	li $t0, 3
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
	lw $t0, -348($fp)
	sw $t0, -3340($fp)
	lw $t0, -3340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -360($fp)
	sw $t0, -3344($fp)
	lw $t0, -3344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -372($fp)
	sw $t0, -3348($fp)
	lw $t0, -3348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -384($fp)
	sw $t0, -3352($fp)
	lw $t0, -3352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -396($fp)
	sw $t0, -3356($fp)
	lw $t0, -3356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -408($fp)
	sw $t0, -3360($fp)
	lw $t0, -3360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -420($fp)
	sw $t0, -3364($fp)
	lw $t0, -3364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -432($fp)
	sw $t0, -3368($fp)
	lw $t0, -3368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -444($fp)
	sw $t0, -3372($fp)
	lw $t0, -3372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -456($fp)
	sw $t0, -3376($fp)
	lw $t0, -3376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -3380($fp)
	lw $t0, -3380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -3384($fp)
	li $t0, 0
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
	addi $t0, $fp, -56
	sw $t0, -3404($fp)
	li $t0, 1
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
	addi $t0, $fp, -56
	sw $t0, -3424($fp)
	li $t0, 2
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
	addi $t0, $fp, -56
	sw $t0, -3444($fp)
	li $t0, 3
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
	addi $t0, $fp, -56
	sw $t0, -3464($fp)
	li $t0, 4
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
	lw $t0, -600($fp)
	sw $t0, -3484($fp)
	lw $t0, -3484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -612($fp)
	sw $t0, -3488($fp)
	lw $t0, -3488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -624($fp)
	sw $t0, -3492($fp)
	lw $t0, -3492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -636($fp)
	sw $t0, -3496($fp)
	lw $t0, -3496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	sw $t0, -3500($fp)
	lw $t0, -3500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -3504($fp)
	li $t0, 0
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
	addi $t0, $fp, -76
	sw $t0, -3524($fp)
	li $t0, 1
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
	addi $t0, $fp, -76
	sw $t0, -3544($fp)
	li $t0, 2
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
	addi $t0, $fp, -76
	sw $t0, -3564($fp)
	li $t0, 3
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
	addi $t0, $fp, -76
	sw $t0, -3584($fp)
	li $t0, 4
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
	lw $t0, -780($fp)
	sw $t0, -3604($fp)
	lw $t0, -3604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -792($fp)
	sw $t0, -3608($fp)
	lw $t0, -3608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -804($fp)
	sw $t0, -3612($fp)
	lw $t0, -3612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3616($fp)
	jal f6
	sw $v0, -3620($fp)
	addi $sp, $sp, 4
	lw $t1, -3620($fp)
	li $t2, 0
	bne $t1, $t2, label328
	j label327
label328:
	li $t0, 33222
	sw $t0, -3624($fp)
	lw $t0, -612($fp)
	sw $t0, -3628($fp)
	lw $t0, -3624($fp)
	lw $t1, -3628($fp)
	mul $t0, $t0, $t1
	sw $t0, -3632($fp)
	li $t0, 0
	lw $t1, -3632($fp)
	sub $t0, $t0, $t1
	sw $t0, -3636($fp)
	li $t0, 0
	lw $t1, -3636($fp)
	sub $t0, $t0, $t1
	sw $t0, -3640($fp)
	lw $t1, -3640($fp)
	li $t2, 0
	bne $t1, $t2, label326
	j label327
label326:
	li $t0, 1
	sw $t0, -3616($fp)
label327:
	lw $ra, -4($fp)
	lw $v0, -3616($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -192
	li $t0, 32753
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
	li $t0, 19496
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
	li $t0, 0
	sw $t0, -68($fp)
	li $t0, 20
	sw $t0, -72($fp)
	lw $t1, -72($fp)
	li $t2, 0
	bne $t1, $t2, label332
	j label331
label331:
	li $t0, 1
	sw $t0, -68($fp)
label332:
	li $t0, 16835
	sw $t0, -76($fp)
	li $t0, 0
	lw $t1, -76($fp)
	sub $t0, $t0, $t1
	sw $t0, -80($fp)
	li $t0, 0
	lw $t1, -80($fp)
	sub $t0, $t0, $t1
	sw $t0, -84($fp)
	lw $t0, -68($fp)
	lw $t1, -84($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -88($fp)
	li $t0, 394
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -96($fp)
	addi $sp, $sp, -4
	lw $t0, -96($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -100($fp)
	addi $sp, $sp, 8
	lw $t1, -88($fp)
	lw $t2, -100($fp)
	bgt $t1, $t2, label329
	j label330
label329:
	li $t0, 1
	sw $t0, -64($fp)
label330:
	li $t0, 0
	sw $t0, -104($fp)
	li $t0, 0
	sw $t0, -108($fp)
	li $t0, 53968
	sw $t0, -112($fp)
	li $t0, 0
	lw $t1, -112($fp)
	sub $t0, $t0, $t1
	sw $t0, -116($fp)
	lw $t0, 4($fp)
	sw $t0, -120($fp)
	li $t0, 0
	lw $t1, -120($fp)
	sub $t0, $t0, $t1
	sw $t0, -124($fp)
	lw $t1, -116($fp)
	lw $t2, -124($fp)
	beq $t1, $t2, label335
	j label336
label335:
	li $t0, 1
	sw $t0, -108($fp)
label336:
	addi $t0, $fp, -12
	sw $t0, -128($fp)
	li $t0, 1
	sw $t0, -132($fp)
	li $t0, 4
	lw $t1, -132($fp)
	mul $t0, $t0, $t1
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	lw $t1, -128($fp)
	add $t0, $t0, $t1
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	lw $t1, 0($t0)
	sw $t1, -144($fp)
	li $t0, 0
	lw $t1, -144($fp)
	sub $t0, $t0, $t1
	sw $t0, -148($fp)
	lw $t1, -108($fp)
	lw $t2, -148($fp)
	beq $t1, $t2, label333
	j label334
label333:
	li $t0, 1
	sw $t0, -104($fp)
label334:
	addi $t0, $fp, -12
	sw $t0, -152($fp)
	li $t0, 0
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
	lw $t0, -168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -172($fp)
	li $t0, 1
	sw $t0, -176($fp)
	li $t0, 4
	lw $t1, -176($fp)
	mul $t0, $t0, $t1
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	lw $t1, -172($fp)
	add $t0, $t0, $t1
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	lw $t1, 0($t0)
	sw $t1, -188($fp)
	lw $t0, -188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -192($fp)
	lw $t0, 4($fp)
	sw $t0, -196($fp)
	lw $t1, -196($fp)
	li $t2, 0
	bne $t1, $t2, label338
	j label337
label337:
	li $t0, 1
	sw $t0, -192($fp)
label338:
	lw $ra, -4($fp)
	lw $v0, -192($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2124
	li $t0, 3401
	sw $t0, -72($fp)
	addi $t0, $fp, -32
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
	li $t0, 38160
	sw $t0, -96($fp)
	addi $t0, $fp, -32
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
	li $t0, 6755
	sw $t0, -120($fp)
	addi $t0, $fp, -32
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
	li $t0, 60090
	sw $t0, -144($fp)
	addi $t0, $fp, -32
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
	li $t0, 49717
	sw $t0, -168($fp)
	addi $t0, $fp, -32
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
	li $t0, 61118
	sw $t0, -192($fp)
	addi $t0, $fp, -32
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
	li $t0, 33373
	sw $t0, -216($fp)
	addi $t0, $fp, -32
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
	li $t0, 47355
	sw $t0, -240($fp)
	addi $t0, $fp, -52
	sw $t0, -244($fp)
	li $t0, 0
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
	li $t0, 16415
	sw $t0, -264($fp)
	addi $t0, $fp, -52
	sw $t0, -268($fp)
	li $t0, 1
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
	li $t0, 57038
	sw $t0, -288($fp)
	addi $t0, $fp, -52
	sw $t0, -292($fp)
	li $t0, 2
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
	li $t0, 31203
	sw $t0, -312($fp)
	addi $t0, $fp, -52
	sw $t0, -316($fp)
	li $t0, 3
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
	li $t0, 56640
	sw $t0, -336($fp)
	addi $t0, $fp, -52
	sw $t0, -340($fp)
	li $t0, 4
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
	li $t0, 49883
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -368($fp)
	li $t0, 55457
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -380($fp)
	li $t0, 11896
	sw $t0, -384($fp)
	addi $t0, $fp, -56
	sw $t0, -388($fp)
	li $t0, 0
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
	li $t0, 49694
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -416($fp)
	li $t0, 3040
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	li $t0, 1424
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	li $t0, 64987
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	li $t0, 43674
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	li $t0, 31600
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	li $t0, 36439
	sw $t0, -480($fp)
	addi $t0, $fp, -68
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
	li $t0, 11361
	sw $t0, -504($fp)
	addi $t0, $fp, -68
	sw $t0, -508($fp)
	li $t0, 1
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
	li $t0, 64354
	sw $t0, -528($fp)
	addi $t0, $fp, -68
	sw $t0, -532($fp)
	li $t0, 2
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
	li $t0, 55935
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	li $t0, 11381
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	li $t0, 15653
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	li $t0, 56330
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -596($fp)
	li $t0, 65349
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -608($fp)
	li $t0, 40465
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	sw $t0, -620($fp)
	li $t0, 64483
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -632($fp)
	li $t0, 3214
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	li $t0, 13089
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -656($fp)
	li $t0, 5702
	sw $t0, -660($fp)
	lw $t1, -660($fp)
	li $t2, 0
	bne $t1, $t2, label339
	j label340
label339:
	li $t0, 0
	sw $t0, -664($fp)
	lw $t0, 8($fp)
	sw $t0, -668($fp)
	lw $t0, -580($fp)
	sw $t0, -672($fp)
	lw $t0, -668($fp)
	lw $t1, -672($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -676($fp)
	li $t0, 63305
	sw $t0, -680($fp)
	lw $t0, -676($fp)
	lw $t1, -680($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -684($fp)
	lw $t0, -568($fp)
	sw $t0, -688($fp)
	lw $t0, -684($fp)
	lw $t1, -688($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -692($fp)
	li $t0, 0
	sw $t0, -696($fp)
	lw $t0, 16($fp)
	sw $t0, -700($fp)
	lw $t1, -700($fp)
	li $t2, 0
	bne $t1, $t2, label345
	j label346
label345:
	li $t0, 1
	sw $t0, -696($fp)
label346:
	lw $t0, -692($fp)
	lw $t1, -696($fp)
	mul $t0, $t0, $t1
	sw $t0, -704($fp)
	lw $t1, -704($fp)
	li $t2, 0
	bne $t1, $t2, label342
	j label344
label344:
	addi $t0, $fp, -68
	sw $t0, -708($fp)
	li $t0, 1
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
	lw $t1, -724($fp)
	li $t2, 0
	bne $t1, $t2, label347
	j label343
label347:
	lw $t0, -640($fp)
	sw $t0, -728($fp)
	lw $t1, -728($fp)
	li $t2, 0
	bne $t1, $t2, label343
	j label342
label342:
	li $t0, 1
	sw $t0, -664($fp)
label343:
	lw $ra, -4($fp)
	lw $v0, -664($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label341
label340:
	li $t0, 31142
	sw $t0, -732($fp)
	lw $t1, -732($fp)
	li $t2, 0
	bne $t1, $t2, label348
	j label349
label348:
	lw $t0, -376($fp)
	sw $t0, -736($fp)
	li $t0, 44626
	sw $t0, -740($fp)
	lw $t0, -736($fp)
	lw $t1, -740($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -744($fp)
	j label350
label349:
	li $t0, 0
	sw $t0, -748($fp)
	lw $t0, 12($fp)
	sw $t0, -752($fp)
	lw $t1, -752($fp)
	li $t2, 0
	bne $t1, $t2, label355
	j label354
label354:
	li $t0, 1
	sw $t0, -748($fp)
label355:
	li $t0, 17700
	sw $t0, -756($fp)
	lw $t0, -748($fp)
	lw $t1, -756($fp)
	sub $t0, $t0, $t1
	sw $t0, -760($fp)
	addi $sp, $sp, -4
	lw $t0, -760($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -764($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -768($fp)
	addi $t0, $fp, -68
	sw $t0, -772($fp)
	lw $t0, -460($fp)
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
	li $t0, 8805
	sw $t0, -792($fp)
	lw $t1, -788($fp)
	lw $t2, -792($fp)
	bgt $t1, $t2, label356
	j label357
label356:
	li $t0, 1
	sw $t0, -768($fp)
label357:
	lw $t0, -436($fp)
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -800($fp)
	li $t0, 0
	sw $t0, -804($fp)
	li $t0, 0
	sw $t0, -808($fp)
	lw $t0, 12($fp)
	sw $t0, -812($fp)
	lw $t0, -472($fp)
	sw $t0, -816($fp)
	lw $t1, -812($fp)
	lw $t2, -816($fp)
	bge $t1, $t2, label360
	j label361
label360:
	li $t0, 1
	sw $t0, -808($fp)
label361:
	li $t0, 10294
	sw $t0, -820($fp)
	lw $t1, -808($fp)
	lw $t2, -820($fp)
	ble $t1, $t2, label358
	j label359
label358:
	li $t0, 1
	sw $t0, -804($fp)
label359:
	li $t0, 0
	sw $t0, -824($fp)
	li $t0, 22644
	sw $t0, -828($fp)
	lw $t0, -364($fp)
	sw $t0, -832($fp)
	lw $t1, -828($fp)
	lw $t2, -832($fp)
	ble $t1, $t2, label362
	j label363
label362:
	li $t0, 1
	sw $t0, -824($fp)
label363:
	addi $sp, $sp, -4
	lw $t0, -768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -824($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -836($fp)
	addi $sp, $sp, 20
	lw $t0, -764($fp)
	lw $t1, -836($fp)
	mul $t0, $t0, $t1
	sw $t0, -840($fp)
	li $t0, 6992
	sw $t0, -844($fp)
	lw $t0, -840($fp)
	lw $t1, -844($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -848($fp)
	li $t0, 0
	lw $t1, -848($fp)
	sub $t0, $t0, $t1
	sw $t0, -852($fp)
	lw $t1, -852($fp)
	li $t2, 0
	bne $t1, $t2, label351
	j label352
label351:
label364:
	lw $t0, -376($fp)
	sw $t0, -856($fp)
	li $t0, 20702
	sw $t0, -860($fp)
	lw $t0, -856($fp)
	lw $t1, -860($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -864($fp)
	lw $t0, -864($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -868($fp)
	lw $t1, -868($fp)
	li $t2, 0
	bne $t1, $t2, label365
	j label366
label365:
	li $t0, 56686
	sw $t0, -872($fp)
	lw $t1, -872($fp)
	li $t2, 0
	bne $t1, $t2, label370
	j label368
label370:
	addi $t0, $fp, -52
	sw $t0, -876($fp)
	lw $t0, -556($fp)
	sw $t0, -880($fp)
	li $t0, 4
	lw $t1, -880($fp)
	mul $t0, $t0, $t1
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	lw $t1, -876($fp)
	add $t0, $t0, $t1
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	lw $t1, 0($t0)
	sw $t1, -892($fp)
	li $t0, 0
	lw $t1, -892($fp)
	sub $t0, $t0, $t1
	sw $t0, -896($fp)
	li $t0, 0
	sw $t0, -900($fp)
	li $t0, 3255
	sw $t0, -904($fp)
	lw $t1, -904($fp)
	li $t2, 0
	bne $t1, $t2, label372
	j label371
label371:
	li $t0, 1
	sw $t0, -900($fp)
label372:
	lw $t1, -896($fp)
	lw $t2, -900($fp)
	ble $t1, $t2, label367
	j label368
label367:
label373:
	lw $t0, -412($fp)
	sw $t0, -908($fp)
	lw $t0, -568($fp)
	sw $t0, -912($fp)
	lw $t0, -908($fp)
	lw $t1, -912($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -916($fp)
	li $t0, 0
	lw $t1, -916($fp)
	sub $t0, $t0, $t1
	sw $t0, -920($fp)
	li $t0, 0
	sw $t0, -924($fp)
	li $t0, 46929
	sw $t0, -928($fp)
	lw $t1, -928($fp)
	li $t2, 0
	bne $t1, $t2, label377
	j label376
label376:
	li $t0, 1
	sw $t0, -924($fp)
label377:
	li $t0, 0
	lw $t1, -924($fp)
	sub $t0, $t0, $t1
	sw $t0, -932($fp)
	lw $t0, 4($fp)
	sw $t0, -936($fp)
	li $t0, 56137
	sw $t0, -940($fp)
	lw $t0, -936($fp)
	lw $t1, -940($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -944($fp)
	li $t0, 0
	sw $t0, -948($fp)
	lw $t0, -592($fp)
	sw $t0, -952($fp)
	li $t0, 22125
	sw $t0, -956($fp)
	lw $t0, -952($fp)
	lw $t1, -956($fp)
	add $t0, $t0, $t1
	sw $t0, -960($fp)
	lw $t1, -960($fp)
	li $t2, 0
	bne $t1, $t2, label380
	j label379
label380:
	lw $t0, 12($fp)
	sw $t0, -964($fp)
	lw $t1, -964($fp)
	li $t2, 0
	bne $t1, $t2, label378
	j label379
label378:
	li $t0, 1
	sw $t0, -948($fp)
label379:
	addi $sp, $sp, -4
	lw $t0, -920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -948($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -968($fp)
	addi $sp, $sp, 20
	lw $t0, -640($fp)
	sw $t0, -972($fp)
	li $t0, 0
	lw $t1, -972($fp)
	sub $t0, $t0, $t1
	sw $t0, -976($fp)
	li $t0, 0
	sw $t0, -980($fp)
	li $t0, 58290
	sw $t0, -984($fp)
	lw $t1, -984($fp)
	li $t2, 0
	bne $t1, $t2, label383
	j label382
label383:
	lw $t0, -652($fp)
	sw $t0, -988($fp)
	lw $t1, -988($fp)
	li $t2, 0
	bne $t1, $t2, label381
	j label382
label381:
	li $t0, 1
	sw $t0, -980($fp)
label382:
	li $t0, 0
	sw $t0, -992($fp)
	addi $t0, $fp, -68
	sw $t0, -996($fp)
	lw $t0, -628($fp)
	sw $t0, -1000($fp)
	li $t0, 4
	lw $t1, -1000($fp)
	mul $t0, $t0, $t1
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	lw $t1, -996($fp)
	add $t0, $t0, $t1
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	lw $t1, 0($t0)
	sw $t1, -1012($fp)
	lw $t1, -1012($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label384
label384:
	li $t0, 1
	sw $t0, -992($fp)
label385:
	li $t0, 0
	sw $t0, -1016($fp)
	li $t0, 53725
	sw $t0, -1020($fp)
	lw $t1, -1020($fp)
	li $t2, 0
	bne $t1, $t2, label389
	j label388
label389:
	lw $t0, -568($fp)
	sw $t0, -1024($fp)
	lw $t1, -1024($fp)
	li $t2, 0
	bne $t1, $t2, label386
	j label388
label388:
	li $t0, 27040
	sw $t0, -1028($fp)
	lw $t1, -1028($fp)
	li $t2, 0
	bne $t1, $t2, label386
	j label387
label386:
	li $t0, 1
	sw $t0, -1016($fp)
label387:
	addi $sp, $sp, -4
	lw $t0, -976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1016($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1032($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -1032($fp)
	sub $t0, $t0, $t1
	sw $t0, -1036($fp)
	addi $sp, $sp, -4
	lw $t0, -1036($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1040($fp)
	addi $sp, $sp, 8
	lw $t0, -968($fp)
	lw $t1, -1040($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1044($fp)
	lw $t1, -1044($fp)
	li $t2, 0
	bne $t1, $t2, label374
	j label375
label374:
label390:
	addi $t0, $fp, -52
	sw $t0, -1048($fp)
	li $t0, 52543
	sw $t0, -1052($fp)
	lw $t0, -652($fp)
	sw $t0, -1056($fp)
	lw $t0, -1052($fp)
	lw $t1, -1056($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1060($fp)
	li $t0, 4
	lw $t1, -1060($fp)
	mul $t0, $t0, $t1
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	lw $t1, -1048($fp)
	add $t0, $t0, $t1
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	lw $t1, 0($t0)
	sw $t1, -1072($fp)
	li $t0, 17440
	sw $t0, -1076($fp)
	lw $t0, -1072($fp)
	lw $t1, -1076($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1080($fp)
	li $t0, 0
	sw $t0, -1084($fp)
	li $t0, 4136
	sw $t0, -1088($fp)
	lw $t1, -1088($fp)
	li $t2, 0
	bne $t1, $t2, label394
	j label393
label393:
	li $t0, 1
	sw $t0, -1084($fp)
label394:
	li $t0, 2660
	sw $t0, -1092($fp)
	lw $t0, -1084($fp)
	lw $t1, -1092($fp)
	add $t0, $t0, $t1
	sw $t0, -1096($fp)
	addi $t0, $fp, -68
	sw $t0, -1100($fp)
	li $t0, 2
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
	lw $t0, -1096($fp)
	lw $t1, -1116($fp)
	sub $t0, $t0, $t1
	sw $t0, -1120($fp)
	lw $t1, -1080($fp)
	lw $t2, -1120($fp)
	beq $t1, $t2, label391
	j label392
label391:
	li $t0, 43125
	sw $t0, -1124($fp)
	lw $ra, -4($fp)
	lw $v0, -1124($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label390
label392:
	j label373
label375:
	j label369
label368:
	li $t0, 0
	sw $t0, -1128($fp)
	li $t0, 7181
	sw $t0, -1132($fp)
	lw $t1, -1132($fp)
	li $t2, 0
	bne $t1, $t2, label397
	j label396
label397:
	addi $t0, $fp, -32
	sw $t0, -1136($fp)
	li $t0, 3
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
	li $t0, 0
	sw $t0, -1156($fp)
	lw $t0, 8($fp)
	sw $t0, -1160($fp)
	lw $t1, -1160($fp)
	li $t2, 0
	bne $t1, $t2, label399
	j label398
label398:
	li $t0, 1
	sw $t0, -1156($fp)
label399:
	lw $t1, -1152($fp)
	lw $t2, -1156($fp)
	ble $t1, $t2, label395
	j label396
label395:
	li $t0, 1
	sw $t0, -1128($fp)
label396:
	lw $ra, -4($fp)
	lw $v0, -1128($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label369:
	j label364
label366:
	j label353
label352:
label400:
	li $t0, 12883
	sw $t0, -1164($fp)
	lw $t0, 12($fp)
	sw $t0, -1168($fp)
	lw $t0, -1164($fp)
	lw $t1, -1168($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1172($fp)
	li $t0, 4933
	sw $t0, -1176($fp)
	li $t0, 0
	lw $t1, -1176($fp)
	sub $t0, $t0, $t1
	sw $t0, -1180($fp)
	lw $t0, -1172($fp)
	lw $t1, -1180($fp)
	add $t0, $t0, $t1
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -1188($fp)
	lw $t1, -1188($fp)
	li $t2, 0
	bne $t1, $t2, label401
	j label402
label401:
label403:
	addi $t0, $fp, -52
	sw $t0, -1192($fp)
	li $t0, 1
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
	li $t0, 42870
	sw $t0, -1212($fp)
	addi $t0, $fp, -56
	sw $t0, -1216($fp)
	lw $t0, -460($fp)
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
	li $t0, 0
	sw $t0, -1236($fp)
	li $t0, 0
	sw $t0, -1240($fp)
	li $t0, 31869
	sw $t0, -1244($fp)
	lw $t1, -1244($fp)
	li $t2, 0
	bne $t1, $t2, label409
	j label408
label408:
	li $t0, 1
	sw $t0, -1240($fp)
label409:
	li $t0, 58719
	sw $t0, -1248($fp)
	lw $t1, -1240($fp)
	lw $t2, -1248($fp)
	bgt $t1, $t2, label406
	j label407
label406:
	li $t0, 1
	sw $t0, -1236($fp)
label407:
	li $t0, 36075
	sw $t0, -1252($fp)
	li $t0, 32576
	sw $t0, -1256($fp)
	lw $t0, -1252($fp)
	lw $t1, -1256($fp)
	mul $t0, $t0, $t1
	sw $t0, -1260($fp)
	lw $t0, -424($fp)
	sw $t0, -1264($fp)
	lw $t0, -1260($fp)
	lw $t1, -1264($fp)
	sub $t0, $t0, $t1
	sw $t0, -1268($fp)
	addi $sp, $sp, -4
	lw $t0, -1212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1268($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1272($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -1272($fp)
	sub $t0, $t0, $t1
	sw $t0, -1276($fp)
	lw $t0, -1208($fp)
	lw $t1, -1276($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1280($fp)
	li $t0, 0
	lw $t1, -1280($fp)
	sub $t0, $t0, $t1
	sw $t0, -1284($fp)
	li $t0, 0
	lw $t1, -1284($fp)
	sub $t0, $t0, $t1
	sw $t0, -1288($fp)
	lw $t1, -1288($fp)
	li $t2, 0
	bne $t1, $t2, label404
	j label405
label404:
label410:
	addi $t0, $fp, -68
	sw $t0, -1292($fp)
	li $t0, 1
	sw $t0, -1296($fp)
	li $t0, 4
	lw $t1, -1296($fp)
	mul $t0, $t0, $t1
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	lw $t1, -1292($fp)
	add $t0, $t0, $t1
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	lw $t1, 0($t0)
	sw $t1, -1308($fp)
	lw $t1, -1308($fp)
	li $t2, 0
	bne $t1, $t2, label411
	j label413
label413:
	li $t0, 0
	sw $t0, -1312($fp)
	lw $t0, -652($fp)
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -1320($fp)
	addi $sp, $sp, -4
	lw $t0, -1320($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1324($fp)
	addi $sp, $sp, 8
	lw $t0, -652($fp)
	sw $t0, -1328($fp)
	lw $t1, -1324($fp)
	lw $t2, -1328($fp)
	ble $t1, $t2, label414
	j label415
label414:
	li $t0, 1
	sw $t0, -1312($fp)
label415:
	li $t0, 46340
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -1336($fp)
	lw $t0, -652($fp)
	sw $t0, -1340($fp)
	lw $t0, 4($fp)
	sw $t0, -1344($fp)
	lw $t0, -1340($fp)
	lw $t1, -1344($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1348($fp)
	lw $t0, -628($fp)
	sw $t0, -1352($fp)
	lw $t0, -1348($fp)
	lw $t1, -1352($fp)
	mul $t0, $t0, $t1
	sw $t0, -1356($fp)
	li $t0, 56862
	sw $t0, -1360($fp)
	addi $t0, $fp, -68
	sw $t0, -1364($fp)
	li $t0, 0
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
	addi $sp, $sp, -4
	lw $t0, -1336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1380($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1384($fp)
	addi $sp, $sp, 20
	lw $t1, -1312($fp)
	lw $t2, -1384($fp)
	bge $t1, $t2, label411
	j label412
label411:
label416:
	addi $t0, $fp, -52
	sw $t0, -1388($fp)
	li $t0, 0
	sw $t0, -1392($fp)
	li $t0, 17964
	sw $t0, -1396($fp)
	li $t0, 47463
	sw $t0, -1400($fp)
	lw $t0, -1396($fp)
	lw $t1, -1400($fp)
	mul $t0, $t0, $t1
	sw $t0, -1404($fp)
	li $t0, 27734
	sw $t0, -1408($fp)
	lw $t1, -1404($fp)
	lw $t2, -1408($fp)
	blt $t1, $t2, label419
	j label420
label419:
	li $t0, 1
	sw $t0, -1392($fp)
label420:
	li $t0, 4
	lw $t1, -1392($fp)
	mul $t0, $t0, $t1
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	lw $t1, -1388($fp)
	add $t0, $t0, $t1
	sw $t0, -1416($fp)
	lw $t0, -1416($fp)
	lw $t1, 0($t0)
	sw $t1, -1420($fp)
	jal f6
	sw $v0, -1424($fp)
	addi $sp, $sp, 4
	lw $t0, -448($fp)
	sw $t0, -1428($fp)
	li $t0, 38947
	sw $t0, -1432($fp)
	lw $t0, -1428($fp)
	lw $t1, -1432($fp)
	mul $t0, $t0, $t1
	sw $t0, -1436($fp)
	li $t0, 41823
	sw $t0, -1440($fp)
	lw $t0, -1436($fp)
	lw $t1, -1440($fp)
	sub $t0, $t0, $t1
	sw $t0, -1444($fp)
	li $t0, 0
	sw $t0, -1448($fp)
	li $t0, 0
	sw $t0, -1452($fp)
	lw $t0, -556($fp)
	sw $t0, -1456($fp)
	li $t0, 61357
	sw $t0, -1460($fp)
	lw $t0, -1456($fp)
	lw $t1, -1460($fp)
	mul $t0, $t0, $t1
	sw $t0, -1464($fp)
	lw $t1, -1464($fp)
	li $t2, 0
	bne $t1, $t2, label423
	j label425
label425:
	li $t0, 34642
	sw $t0, -1468($fp)
	lw $t1, -1468($fp)
	li $t2, 0
	bne $t1, $t2, label423
	j label424
label423:
	li $t0, 1
	sw $t0, -1452($fp)
label424:
	li $t0, 24624
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -1476($fp)
	li $t0, 26408
	sw $t0, -1480($fp)
	li $t0, 58697
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -1488($fp)
	addi $t0, $fp, -68
	sw $t0, -1492($fp)
	lw $t0, -556($fp)
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
	li $t0, 20488
	sw $t0, -1512($fp)
	lw $t0, -1508($fp)
	lw $t1, -1512($fp)
	add $t0, $t0, $t1
	sw $t0, -1516($fp)
	addi $sp, $sp, -4
	lw $t0, -1452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1516($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1520($fp)
	addi $sp, $sp, 24
	li $t0, 28574
	sw $t0, -1524($fp)
	lw $t1, -1520($fp)
	lw $t2, -1524($fp)
	ble $t1, $t2, label421
	j label422
label421:
	li $t0, 1
	sw $t0, -1448($fp)
label422:
	li $t0, 8968
	sw $t0, -1528($fp)
	li $t0, 0
	sw $t0, -1532($fp)
	li $t0, 6153
	sw $t0, -1536($fp)
	lw $t1, -1536($fp)
	li $t2, 0
	bne $t1, $t2, label427
	j label426
label426:
	li $t0, 1
	sw $t0, -1532($fp)
label427:
	addi $sp, $sp, -4
	lw $t0, -1424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1532($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1540($fp)
	addi $sp, $sp, 24
	lw $t1, -1420($fp)
	lw $t2, -1540($fp)
	blt $t1, $t2, label417
	j label418
label417:
label428:
	li $t0, 0
	sw $t0, -1544($fp)
	li $t0, 35738
	sw $t0, -1548($fp)
	lw $t1, -1548($fp)
	li $t2, 0
	bne $t1, $t2, label431
	j label433
label433:
	li $t0, 29626
	sw $t0, -1552($fp)
	lw $t0, -436($fp)
	sw $t0, -1556($fp)
	lw $t0, -1552($fp)
	lw $t1, -1556($fp)
	add $t0, $t0, $t1
	sw $t0, -1560($fp)
	lw $t1, -1560($fp)
	li $t2, 0
	bne $t1, $t2, label431
	j label432
label431:
	li $t0, 1
	sw $t0, -1544($fp)
label432:
	lw $t0, -1544($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -1564($fp)
	lw $t1, -1564($fp)
	li $t2, 0
	bne $t1, $t2, label429
	j label430
label429:
label434:
	lw $t0, -436($fp)
	sw $t0, -1568($fp)
	li $t0, 0
	sw $t0, -1572($fp)
	li $t0, 54706
	sw $t0, -1576($fp)
	lw $t1, -1576($fp)
	li $t2, 0
	bne $t1, $t2, label439
	j label438
label438:
	li $t0, 1
	sw $t0, -1572($fp)
label439:
	lw $t0, -1568($fp)
	lw $t1, -1572($fp)
	add $t0, $t0, $t1
	sw $t0, -1580($fp)
	li $t0, 40671
	sw $t0, -1584($fp)
	lw $t1, -1580($fp)
	lw $t2, -1584($fp)
	beq $t1, $t2, label435
	j label437
label437:
	li $t0, 11210
	sw $t0, -1588($fp)
	li $t0, 50152
	sw $t0, -1592($fp)
	lw $t0, -1588($fp)
	lw $t1, -1592($fp)
	mul $t0, $t0, $t1
	sw $t0, -1596($fp)
	li $t0, 0
	lw $t1, -1596($fp)
	sub $t0, $t0, $t1
	sw $t0, -1600($fp)
	li $t0, 3339
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -1608($fp)
	li $t0, 17576
	sw $t0, -1612($fp)
	li $t0, 0
	lw $t1, -1612($fp)
	sub $t0, $t0, $t1
	sw $t0, -1616($fp)
	lw $t0, 12($fp)
	sw $t0, -1620($fp)
	li $t0, 0
	lw $t1, -1620($fp)
	sub $t0, $t0, $t1
	sw $t0, -1624($fp)
	lw $t0, 12($fp)
	sw $t0, -1628($fp)
	lw $t0, -1624($fp)
	lw $t1, -1628($fp)
	sub $t0, $t0, $t1
	sw $t0, -1632($fp)
	addi $sp, $sp, -4
	lw $t0, -1600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1632($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1636($fp)
	addi $sp, $sp, 20
	lw $t1, -1636($fp)
	li $t2, 0
	bne $t1, $t2, label435
	j label436
label435:
	li $t0, 0
	sw $t0, -1640($fp)
	lw $t0, -628($fp)
	sw $t0, -1644($fp)
	lw $t1, -1644($fp)
	li $t2, 0
	bne $t1, $t2, label441
	j label440
label440:
	li $t0, 1
	sw $t0, -1640($fp)
label441:
	lw $t0, -1640($fp)
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -1648($fp)
	j label434
label436:
	j label428
label430:
	j label416
label418:
	j label410
label412:
	j label403
label405:
	j label400
label402:
label353:
label350:
label341:
	addi $t0, $fp, -32
	sw $t0, -1652($fp)
	li $t0, 0
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
	lw $t0, -1668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1672($fp)
	li $t0, 1
	sw $t0, -1676($fp)
	li $t0, 4
	lw $t1, -1676($fp)
	mul $t0, $t0, $t1
	sw $t0, -1680($fp)
	lw $t0, -1680($fp)
	lw $t1, -1672($fp)
	add $t0, $t0, $t1
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	lw $t1, 0($t0)
	sw $t1, -1688($fp)
	lw $t0, -1688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1692($fp)
	li $t0, 2
	sw $t0, -1696($fp)
	li $t0, 4
	lw $t1, -1696($fp)
	mul $t0, $t0, $t1
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	lw $t1, -1692($fp)
	add $t0, $t0, $t1
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	lw $t1, 0($t0)
	sw $t1, -1708($fp)
	lw $t0, -1708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1712($fp)
	li $t0, 3
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
	lw $t0, -1728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1732($fp)
	li $t0, 4
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
	lw $t0, -1748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1752($fp)
	li $t0, 5
	sw $t0, -1756($fp)
	li $t0, 4
	lw $t1, -1756($fp)
	mul $t0, $t0, $t1
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	lw $t1, -1752($fp)
	add $t0, $t0, $t1
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	lw $t1, 0($t0)
	sw $t1, -1768($fp)
	lw $t0, -1768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1772($fp)
	li $t0, 6
	sw $t0, -1776($fp)
	li $t0, 4
	lw $t1, -1776($fp)
	mul $t0, $t0, $t1
	sw $t0, -1780($fp)
	lw $t0, -1780($fp)
	lw $t1, -1772($fp)
	add $t0, $t0, $t1
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	lw $t1, 0($t0)
	sw $t1, -1788($fp)
	lw $t0, -1788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -1792($fp)
	li $t0, 0
	sw $t0, -1796($fp)
	li $t0, 4
	lw $t1, -1796($fp)
	mul $t0, $t0, $t1
	sw $t0, -1800($fp)
	lw $t0, -1800($fp)
	lw $t1, -1792($fp)
	add $t0, $t0, $t1
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	lw $t1, 0($t0)
	sw $t1, -1808($fp)
	lw $t0, -1808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -1812($fp)
	li $t0, 1
	sw $t0, -1816($fp)
	li $t0, 4
	lw $t1, -1816($fp)
	mul $t0, $t0, $t1
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	lw $t1, -1812($fp)
	add $t0, $t0, $t1
	sw $t0, -1824($fp)
	lw $t0, -1824($fp)
	lw $t1, 0($t0)
	sw $t1, -1828($fp)
	lw $t0, -1828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -1832($fp)
	li $t0, 2
	sw $t0, -1836($fp)
	li $t0, 4
	lw $t1, -1836($fp)
	mul $t0, $t0, $t1
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	lw $t1, -1832($fp)
	add $t0, $t0, $t1
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	lw $t1, 0($t0)
	sw $t1, -1848($fp)
	lw $t0, -1848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -1852($fp)
	li $t0, 3
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
	addi $t0, $fp, -52
	sw $t0, -1872($fp)
	li $t0, 4
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
	lw $t0, -364($fp)
	sw $t0, -1892($fp)
	lw $t0, -1892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -376($fp)
	sw $t0, -1896($fp)
	lw $t0, -1896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1900($fp)
	li $t0, 0
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
	lw $t0, -412($fp)
	sw $t0, -1920($fp)
	lw $t0, -1920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -424($fp)
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -436($fp)
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -448($fp)
	sw $t0, -1932($fp)
	lw $t0, -1932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -460($fp)
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -472($fp)
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1944($fp)
	li $t0, 0
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
	lw $t0, -1960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1964($fp)
	li $t0, 1
	sw $t0, -1968($fp)
	li $t0, 4
	lw $t1, -1968($fp)
	mul $t0, $t0, $t1
	sw $t0, -1972($fp)
	lw $t0, -1972($fp)
	lw $t1, -1964($fp)
	add $t0, $t0, $t1
	sw $t0, -1976($fp)
	lw $t0, -1976($fp)
	lw $t1, 0($t0)
	sw $t1, -1980($fp)
	lw $t0, -1980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1984($fp)
	li $t0, 2
	sw $t0, -1988($fp)
	li $t0, 4
	lw $t1, -1988($fp)
	mul $t0, $t0, $t1
	sw $t0, -1992($fp)
	lw $t0, -1992($fp)
	lw $t1, -1984($fp)
	add $t0, $t0, $t1
	sw $t0, -1996($fp)
	lw $t0, -1996($fp)
	lw $t1, 0($t0)
	sw $t1, -2000($fp)
	lw $t0, -2000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -556($fp)
	sw $t0, -2004($fp)
	lw $t0, -2004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -568($fp)
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -580($fp)
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -592($fp)
	sw $t0, -2016($fp)
	lw $t0, -2016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -604($fp)
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -616($fp)
	sw $t0, -2024($fp)
	lw $t0, -2024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -628($fp)
	sw $t0, -2028($fp)
	lw $t0, -2028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -640($fp)
	sw $t0, -2032($fp)
	lw $t0, -2032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -652($fp)
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2040($fp)
	li $t0, 0
	sw $t0, -2044($fp)
	lw $t0, -436($fp)
	sw $t0, -2048($fp)
	li $t0, 0
	lw $t1, -2048($fp)
	sub $t0, $t0, $t1
	sw $t0, -2052($fp)
	lw $t1, -2052($fp)
	li $t2, 0
	bne $t1, $t2, label446
	j label445
label445:
	li $t0, 1
	sw $t0, -2044($fp)
label446:
	addi $t0, $fp, -52
	sw $t0, -2056($fp)
	li $t0, 0
	sw $t0, -2060($fp)
	li $t0, 4
	lw $t1, -2060($fp)
	mul $t0, $t0, $t1
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	lw $t1, -2056($fp)
	add $t0, $t0, $t1
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	lw $t1, 0($t0)
	sw $t1, -2072($fp)
	li $t0, 0
	sw $t0, -2076($fp)
	lw $t0, -616($fp)
	sw $t0, -2080($fp)
	li $t0, 4393
	sw $t0, -2084($fp)
	lw $t0, -2080($fp)
	lw $t1, -2084($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2088($fp)
	lw $t1, -2088($fp)
	li $t2, 0
	bne $t1, $t2, label449
	j label448
label449:
	li $t0, 27487
	sw $t0, -2092($fp)
	lw $t1, -2092($fp)
	li $t2, 0
	bne $t1, $t2, label447
	j label448
label447:
	li $t0, 1
	sw $t0, -2076($fp)
label448:
	li $t0, 0
	sw $t0, -2096($fp)
	lw $t0, 12($fp)
	sw $t0, -2100($fp)
	lw $t0, -436($fp)
	sw $t0, -2104($fp)
	lw $t0, -2100($fp)
	lw $t1, -2104($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2108($fp)
	li $t0, 35208
	sw $t0, -2112($fp)
	lw $t1, -2108($fp)
	lw $t2, -2112($fp)
	bne $t1, $t2, label450
	j label451
label450:
	li $t0, 1
	sw $t0, -2096($fp)
label451:
	lw $t0, -616($fp)
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -2120($fp)
	addi $sp, $sp, -4
	lw $t0, -2044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2120($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2124($fp)
	addi $sp, $sp, 24
	lw $t1, -2124($fp)
	li $t2, 0
	bne $t1, $t2, label442
	j label444
label444:
	lw $t0, -652($fp)
	sw $t0, -2128($fp)
	lw $t1, -2128($fp)
	li $t2, 0
	bne $t1, $t2, label442
	j label443
label442:
	li $t0, 1
	sw $t0, -2040($fp)
label443:
	lw $ra, -4($fp)
	lw $v0, -2040($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -108
	li $t0, 5036
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 6185
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 0
	sw $t0, -32($fp)
	lw $t0, -24($fp)
	sw $t0, -36($fp)
	li $t0, 30302
	sw $t0, -40($fp)
	lw $t1, -36($fp)
	lw $t2, -40($fp)
	bge $t1, $t2, label452
	j label454
label454:
	li $t0, 52326
	sw $t0, -44($fp)
	lw $t1, -44($fp)
	li $t2, 0
	bne $t1, $t2, label452
	j label453
label452:
	li $t0, 1
	sw $t0, -32($fp)
label453:
	li $t0, 0
	sw $t0, -48($fp)
	li $t0, 43358
	sw $t0, -52($fp)
	li $t0, 13575
	sw $t0, -56($fp)
	lw $t0, -52($fp)
	lw $t1, -56($fp)
	add $t0, $t0, $t1
	sw $t0, -60($fp)
	lw $t0, -12($fp)
	sw $t0, -64($fp)
	lw $t1, -60($fp)
	lw $t2, -64($fp)
	bgt $t1, $t2, label455
	j label456
label455:
	li $t0, 1
	sw $t0, -48($fp)
label456:
	li $t0, 0
	sw $t0, -68($fp)
	lw $t0, -24($fp)
	sw $t0, -72($fp)
	lw $t1, -72($fp)
	li $t2, 0
	bne $t1, $t2, label457
	j label459
label459:
	li $t0, 24149
	sw $t0, -76($fp)
	lw $t1, -76($fp)
	li $t2, 0
	bne $t1, $t2, label457
	j label458
label457:
	li $t0, 1
	sw $t0, -68($fp)
label458:
	li $t0, 0
	sw $t0, -80($fp)
	li $t0, 61431
	sw $t0, -84($fp)
	lw $t0, -24($fp)
	sw $t0, -88($fp)
	lw $t0, -84($fp)
	lw $t1, -88($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -92($fp)
	li $t0, 51377
	sw $t0, -96($fp)
	lw $t1, -92($fp)
	lw $t2, -96($fp)
	bne $t1, $t2, label460
	j label461
label460:
	li $t0, 1
	sw $t0, -80($fp)
label461:
	addi $sp, $sp, -4
	lw $t0, -32($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -48($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -68($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -80($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -100($fp)
	addi $sp, $sp, 20
	lw $t0, -12($fp)
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 34063
	sw $t0, -112($fp)
	lw $ra, -4($fp)
	lw $v0, -112($fp)
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
