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
	addi $sp, $sp, -780
	li $t0, 38455
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	li $t0, 29861
	sw $t0, -60($fp)
	addi $t0, $fp, -44
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
	li $t0, 11420
	sw $t0, -84($fp)
	addi $t0, $fp, -44
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
	li $t0, 2953
	sw $t0, -108($fp)
	addi $t0, $fp, -44
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
	li $t0, 32054
	sw $t0, -132($fp)
	addi $t0, $fp, -44
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
	li $t0, 30274
	sw $t0, -156($fp)
	addi $t0, $fp, -44
	sw $t0, -160($fp)
	li $t0, 4
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
	li $t0, 48720
	sw $t0, -180($fp)
	addi $t0, $fp, -44
	sw $t0, -184($fp)
	li $t0, 5
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
	li $t0, 41052
	sw $t0, -204($fp)
	addi $t0, $fp, -44
	sw $t0, -208($fp)
	li $t0, 6
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
	li $t0, 13231
	sw $t0, -228($fp)
	addi $t0, $fp, -44
	sw $t0, -232($fp)
	li $t0, 7
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
	li $t0, 1116
	sw $t0, -252($fp)
	addi $t0, $fp, -44
	sw $t0, -256($fp)
	li $t0, 8
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
	li $t0, 10210
	sw $t0, -276($fp)
	addi $t0, $fp, -44
	sw $t0, -280($fp)
	li $t0, 9
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
	li $t0, 63911
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	li $t0, 0
	sw $t0, -312($fp)
	li $t0, 0
	sw $t0, -316($fp)
	lw $t0, 4($fp)
	sw $t0, -320($fp)
	lw $t1, -320($fp)
	li $t2, 0
	bne $t1, $t2, label124
	j label123
label123:
	li $t0, 1
	sw $t0, -316($fp)
label124:
	li $t0, 13796
	sw $t0, -324($fp)
	lw $t1, -316($fp)
	lw $t2, -324($fp)
	bge $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -312($fp)
label122:
	li $t0, 0
	sw $t0, -328($fp)
	li $t0, 65069
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -336($fp)
	addi $t0, $fp, -44
	sw $t0, -340($fp)
	li $t0, 6
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
	li $t0, 0
	lw $t1, -356($fp)
	sub $t0, $t0, $t1
	sw $t0, -360($fp)
	li $t0, 0
	sw $t0, -364($fp)
	addi $t0, $fp, -44
	sw $t0, -368($fp)
	li $t0, 3
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
	bne $t1, $t2, label127
	j label129
label129:
	li $t0, 47836
	sw $t0, -388($fp)
	lw $t1, -388($fp)
	li $t2, 0
	bne $t1, $t2, label127
	j label128
label127:
	li $t0, 1
	sw $t0, -364($fp)
label128:
	li $t0, 28867
	sw $t0, -392($fp)
	li $t0, 0
	lw $t1, -392($fp)
	sub $t0, $t0, $t1
	sw $t0, -396($fp)
	addi $sp, $sp, -4
	lw $t0, -360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -396($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -400($fp)
	addi $sp, $sp, 16
	li $t0, 62303
	sw $t0, -404($fp)
	lw $t0, -400($fp)
	lw $t1, -404($fp)
	sub $t0, $t0, $t1
	sw $t0, -408($fp)
	lw $t0, 4($fp)
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -416($fp)
	addi $sp, $sp, -4
	lw $t0, -336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -416($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -420($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -44
	sw $t0, -424($fp)
	lw $t0, 12($fp)
	sw $t0, -428($fp)
	li $t0, 4
	lw $t1, -428($fp)
	mul $t0, $t0, $t1
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	lw $t1, -424($fp)
	add $t0, $t0, $t1
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	lw $t1, 0($t0)
	sw $t1, -440($fp)
	lw $t0, -420($fp)
	lw $t1, -440($fp)
	add $t0, $t0, $t1
	sw $t0, -444($fp)
	lw $t0, 4($fp)
	sw $t0, -448($fp)
	li $t0, 0
	lw $t1, -448($fp)
	sub $t0, $t0, $t1
	sw $t0, -452($fp)
	lw $t1, -444($fp)
	lw $t2, -452($fp)
	ble $t1, $t2, label125
	j label126
label125:
	li $t0, 1
	sw $t0, -328($fp)
label126:
	li $t0, 0
	sw $t0, -456($fp)
	li $t0, 0
	sw $t0, -460($fp)
	li $t0, 20815
	sw $t0, -464($fp)
	li $t0, 44496
	sw $t0, -468($fp)
	lw $t0, -464($fp)
	lw $t1, -468($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -472($fp)
	li $t0, 37467
	sw $t0, -476($fp)
	lw $t0, -472($fp)
	lw $t1, -476($fp)
	mul $t0, $t0, $t1
	sw $t0, -480($fp)
	li $t0, 46287
	sw $t0, -484($fp)
	lw $t0, -480($fp)
	lw $t1, -484($fp)
	mul $t0, $t0, $t1
	sw $t0, -488($fp)
	li $t0, 0
	sw $t0, -492($fp)
	lw $t0, 8($fp)
	sw $t0, -496($fp)
	lw $t0, -304($fp)
	sw $t0, -500($fp)
	lw $t0, -496($fp)
	lw $t1, -500($fp)
	mul $t0, $t0, $t1
	sw $t0, -504($fp)
	li $t0, 14837
	sw $t0, -508($fp)
	lw $t1, -504($fp)
	lw $t2, -508($fp)
	bge $t1, $t2, label134
	j label135
label134:
	li $t0, 1
	sw $t0, -492($fp)
label135:
	lw $t1, -488($fp)
	lw $t2, -492($fp)
	bne $t1, $t2, label132
	j label133
label132:
	li $t0, 1
	sw $t0, -460($fp)
label133:
	li $t0, 0
	sw $t0, -512($fp)
	lw $t0, 4($fp)
	sw $t0, -516($fp)
	lw $t1, -516($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label136
label136:
	li $t0, 1
	sw $t0, -512($fp)
label137:
	li $t0, 0
	lw $t1, -512($fp)
	sub $t0, $t0, $t1
	sw $t0, -520($fp)
	addi $t0, $fp, -44
	sw $t0, -524($fp)
	lw $t0, 8($fp)
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
	li $t0, 0
	sw $t0, -544($fp)
	li $t0, 63491
	sw $t0, -548($fp)
	li $t0, 55820
	sw $t0, -552($fp)
	lw $t1, -548($fp)
	lw $t2, -552($fp)
	bne $t1, $t2, label138
	j label139
label138:
	li $t0, 1
	sw $t0, -544($fp)
label139:
	addi $sp, $sp, -4
	lw $t0, -520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -544($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -556($fp)
	addi $sp, $sp, 16
	lw $t0, 12($fp)
	sw $t0, -560($fp)
	li $t0, 20019
	sw $t0, -564($fp)
	lw $t0, -560($fp)
	lw $t1, -564($fp)
	mul $t0, $t0, $t1
	sw $t0, -568($fp)
	lw $t0, -556($fp)
	lw $t1, -568($fp)
	add $t0, $t0, $t1
	sw $t0, -572($fp)
	lw $t1, -460($fp)
	lw $t2, -572($fp)
	bne $t1, $t2, label130
	j label131
label130:
	li $t0, 1
	sw $t0, -456($fp)
label131:
	lw $t0, -52($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
	sw $t0, -680($fp)
	li $t0, 5
	sw $t0, -684($fp)
	li $t0, 4
	lw $t1, -684($fp)
	mul $t0, $t0, $t1
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	lw $t1, -680($fp)
	add $t0, $t0, $t1
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	lw $t1, 0($t0)
	sw $t1, -696($fp)
	lw $t0, -696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -700($fp)
	li $t0, 6
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
	lw $t0, -716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -720($fp)
	li $t0, 7
	sw $t0, -724($fp)
	li $t0, 4
	lw $t1, -724($fp)
	mul $t0, $t0, $t1
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	lw $t1, -720($fp)
	add $t0, $t0, $t1
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	lw $t1, 0($t0)
	sw $t1, -736($fp)
	lw $t0, -736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -740($fp)
	li $t0, 8
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
	lw $t0, -756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -760($fp)
	li $t0, 9
	sw $t0, -764($fp)
	li $t0, 4
	lw $t1, -764($fp)
	mul $t0, $t0, $t1
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	lw $t1, -760($fp)
	add $t0, $t0, $t1
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	lw $t1, 0($t0)
	sw $t1, -776($fp)
	lw $t0, -776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -304($fp)
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, 4($fp)
	sw $t0, -784($fp)
	lw $ra, -4($fp)
	lw $v0, -784($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1176
	li $t0, 33991
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	li $t0, 46985
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	li $t0, 58474
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	li $t0, 63852
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	li $t0, 58406
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	li $t0, 61427
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -116($fp)
	li $t0, 30370
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -128($fp)
	li $t0, 23144
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -140($fp)
	li $t0, 44611
	sw $t0, -144($fp)
	addi $t0, $fp, -44
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
	li $t0, 5886
	sw $t0, -168($fp)
	addi $t0, $fp, -44
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
	li $t0, 36376
	sw $t0, -192($fp)
	addi $t0, $fp, -44
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
	li $t0, 45727
	sw $t0, -216($fp)
	addi $t0, $fp, -44
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
	li $t0, 16096
	sw $t0, -240($fp)
	addi $t0, $fp, -44
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
	li $t0, 34751
	sw $t0, -264($fp)
	addi $t0, $fp, -44
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
	li $t0, 59523
	sw $t0, -288($fp)
	addi $t0, $fp, -44
	sw $t0, -292($fp)
	li $t0, 6
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
	li $t0, 44963
	sw $t0, -312($fp)
	addi $t0, $fp, -44
	sw $t0, -316($fp)
	li $t0, 7
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
	li $t0, 10302
	sw $t0, -336($fp)
	addi $t0, $fp, -44
	sw $t0, -340($fp)
	li $t0, 8
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
	li $t0, 55570
	sw $t0, -360($fp)
	addi $t0, $fp, -44
	sw $t0, -364($fp)
	li $t0, 9
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
	li $t0, 27263
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -392($fp)
	li $t0, 41181
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
	addi $t0, $fp, -44
	sw $t0, -408($fp)
	li $t0, 48538
	sw $t0, -412($fp)
	li $t0, 0
	lw $t1, -412($fp)
	sub $t0, $t0, $t1
	sw $t0, -416($fp)
	lw $t0, -400($fp)
	sw $t0, -420($fp)
	lw $t0, -416($fp)
	lw $t1, -420($fp)
	sub $t0, $t0, $t1
	sw $t0, -424($fp)
	li $t0, 4
	lw $t1, -424($fp)
	mul $t0, $t0, $t1
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	lw $t1, -408($fp)
	add $t0, $t0, $t1
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	lw $t1, 0($t0)
	sw $t1, -436($fp)
	li $t0, 24031
	sw $t0, -440($fp)
	lw $t0, -124($fp)
	sw $t0, -444($fp)
	lw $t0, -440($fp)
	lw $t1, -444($fp)
	mul $t0, $t0, $t1
	sw $t0, -448($fp)
	lw $t0, 12($fp)
	sw $t0, -452($fp)
	lw $t0, -448($fp)
	lw $t1, -452($fp)
	mul $t0, $t0, $t1
	sw $t0, -456($fp)
	li $t0, 50105
	sw $t0, -460($fp)
	lw $t0, -88($fp)
	sw $t0, -464($fp)
	li $t0, 12646
	sw $t0, -468($fp)
	lw $t0, -464($fp)
	lw $t1, -468($fp)
	mul $t0, $t0, $t1
	sw $t0, -472($fp)
	li $t0, 40714
	sw $t0, -476($fp)
	li $t0, 3817
	sw $t0, -480($fp)
	lw $t0, -476($fp)
	lw $t1, -480($fp)
	sub $t0, $t0, $t1
	sw $t0, -484($fp)
	li $t0, 2991
	sw $t0, -488($fp)
	lw $t0, -484($fp)
	lw $t1, -488($fp)
	add $t0, $t0, $t1
	sw $t0, -492($fp)
	addi $sp, $sp, -4
	lw $t0, -460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -492($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -496($fp)
	addi $sp, $sp, 16
	lw $t0, -456($fp)
	lw $t1, -496($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -500($fp)
	lw $t0, -436($fp)
	lw $t1, -500($fp)
	sub $t0, $t0, $t1
	sw $t0, -504($fp)
	lw $t0, 12($fp)
	sw $t0, -508($fp)
	li $t0, 10601
	sw $t0, -512($fp)
	lw $t0, -100($fp)
	sw $t0, -516($fp)
	lw $t0, -512($fp)
	lw $t1, -516($fp)
	add $t0, $t0, $t1
	sw $t0, -520($fp)
	li $t0, 0
	sw $t0, -524($fp)
	lw $t0, -64($fp)
	sw $t0, -528($fp)
	lw $t0, 8($fp)
	sw $t0, -532($fp)
	lw $t1, -528($fp)
	lw $t2, -532($fp)
	bge $t1, $t2, label142
	j label141
label142:
	li $t0, 17828
	sw $t0, -536($fp)
	lw $t1, -536($fp)
	li $t2, 0
	bne $t1, $t2, label140
	j label141
label140:
	li $t0, 1
	sw $t0, -524($fp)
label141:
	addi $sp, $sp, -4
	lw $t0, -508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -524($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -540($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -544($fp)
	li $t0, 40389
	sw $t0, -548($fp)
	lw $t1, -548($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label143
label143:
	li $t0, 1
	sw $t0, -544($fp)
label144:
	lw $t0, -540($fp)
	lw $t1, -544($fp)
	mul $t0, $t0, $t1
	sw $t0, -552($fp)
	lw $t0, -136($fp)
	sw $t0, -556($fp)
	li $t0, 0
	lw $t1, -556($fp)
	sub $t0, $t0, $t1
	sw $t0, -560($fp)
	lw $t0, -552($fp)
	lw $t1, -560($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -564($fp)
	li $t0, 0
	sw $t0, -568($fp)
	li $t0, 0
	sw $t0, -572($fp)
	lw $t0, 4($fp)
	sw $t0, -576($fp)
	lw $t0, -52($fp)
	sw $t0, -580($fp)
	lw $t1, -576($fp)
	lw $t2, -580($fp)
	blt $t1, $t2, label147
	j label148
label147:
	li $t0, 1
	sw $t0, -572($fp)
label148:
	li $t0, 37847
	sw $t0, -584($fp)
	lw $t1, -572($fp)
	lw $t2, -584($fp)
	beq $t1, $t2, label145
	j label146
label145:
	li $t0, 1
	sw $t0, -568($fp)
label146:
	li $t0, 0
	sw $t0, -588($fp)
	lw $t0, -388($fp)
	sw $t0, -592($fp)
	li $t0, 0
	lw $t1, -592($fp)
	sub $t0, $t0, $t1
	sw $t0, -596($fp)
	lw $t1, -596($fp)
	li $t2, 0
	bne $t1, $t2, label150
	j label149
label149:
	li $t0, 1
	sw $t0, -588($fp)
label150:
	lw $t0, 16($fp)
	sw $t0, -600($fp)
	addi $sp, $sp, -4
	lw $t0, -568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -600($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -604($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -44
	sw $t0, -608($fp)
	lw $t0, -100($fp)
	sw $t0, -612($fp)
	li $t0, 0
	lw $t1, -612($fp)
	sub $t0, $t0, $t1
	sw $t0, -616($fp)
	li $t0, 0
	lw $t1, -616($fp)
	sub $t0, $t0, $t1
	sw $t0, -620($fp)
	li $t0, 0
	sw $t0, -624($fp)
	lw $t0, 12($fp)
	sw $t0, -628($fp)
	lw $t1, -628($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label157
label157:
	lw $t0, -64($fp)
	sw $t0, -632($fp)
	lw $t1, -632($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label156
label156:
	lw $t0, -88($fp)
	sw $t0, -636($fp)
	lw $t1, -636($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label155
label154:
	li $t0, 1
	sw $t0, -624($fp)
label155:
	li $t0, 21839
	sw $t0, -640($fp)
	li $t0, 0
	lw $t1, -640($fp)
	sub $t0, $t0, $t1
	sw $t0, -644($fp)
	li $t0, 0
	lw $t1, -644($fp)
	sub $t0, $t0, $t1
	sw $t0, -648($fp)
	li $t0, 0
	sw $t0, -652($fp)
	lw $t0, 4($fp)
	sw $t0, -656($fp)
	li $t0, 44592
	sw $t0, -660($fp)
	lw $t1, -656($fp)
	lw $t2, -660($fp)
	ble $t1, $t2, label158
	j label159
label158:
	li $t0, 1
	sw $t0, -652($fp)
label159:
	addi $sp, $sp, -4
	lw $t0, -620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -652($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -664($fp)
	addi $sp, $sp, 20
	li $t0, 4
	lw $t1, -664($fp)
	mul $t0, $t0, $t1
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	lw $t1, -608($fp)
	add $t0, $t0, $t1
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	lw $t1, 0($t0)
	sw $t1, -676($fp)
	li $t0, 0
	sw $t0, -680($fp)
	lw $t0, -52($fp)
	sw $t0, -684($fp)
	lw $t0, -88($fp)
	sw $t0, -688($fp)
	lw $t1, -684($fp)
	lw $t2, -688($fp)
	bne $t1, $t2, label162
	j label161
label162:
	li $t0, 14709
	sw $t0, -692($fp)
	lw $t1, -692($fp)
	li $t2, 0
	bne $t1, $t2, label160
	j label161
label160:
	li $t0, 1
	sw $t0, -680($fp)
label161:
	li $t0, 42908
	sw $t0, -696($fp)
	addi $t0, $fp, -44
	sw $t0, -700($fp)
	lw $t0, -136($fp)
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
	lw $t0, -76($fp)
	sw $t0, -720($fp)
	lw $t0, -716($fp)
	lw $t1, -720($fp)
	add $t0, $t0, $t1
	sw $t0, -724($fp)
	li $t0, 0
	sw $t0, -728($fp)
	lw $t0, -88($fp)
	sw $t0, -732($fp)
	lw $t1, -732($fp)
	li $t2, 0
	bne $t1, $t2, label164
	j label163
label163:
	li $t0, 1
	sw $t0, -728($fp)
label164:
	li $t0, 30785
	sw $t0, -736($fp)
	lw $t0, -728($fp)
	lw $t1, -736($fp)
	add $t0, $t0, $t1
	sw $t0, -740($fp)
	addi $sp, $sp, -4
	lw $t0, -680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -740($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -744($fp)
	addi $sp, $sp, 20
	lw $t1, -676($fp)
	lw $t2, -744($fp)
	bne $t1, $t2, label151
	j label152
label151:
	li $t0, 26676
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	sw $t0, -756($fp)
	lw $t0, -752($fp)
	sw $t0, -760($fp)
	li $t0, 0
	sw $t0, -764($fp)
	li $t0, 7742
	sw $t0, -768($fp)
	lw $t1, -768($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label165
label165:
	li $t0, 1
	sw $t0, -764($fp)
label166:
	lw $t0, -760($fp)
	lw $t1, -764($fp)
	mul $t0, $t0, $t1
	sw $t0, -772($fp)
	j label153
label152:
	li $t0, 0
	sw $t0, -776($fp)
	lw $t0, -124($fp)
	sw $t0, -780($fp)
	li $t0, 37853
	sw $t0, -784($fp)
	lw $t1, -780($fp)
	lw $t2, -784($fp)
	bgt $t1, $t2, label167
	j label168
label167:
	li $t0, 1
	sw $t0, -776($fp)
label168:
label153:
	li $t0, 0
	sw $t0, -788($fp)
	li $t0, 0
	sw $t0, -792($fp)
	lw $t0, -88($fp)
	sw $t0, -796($fp)
	lw $t0, -124($fp)
	sw $t0, -800($fp)
	lw $t1, -796($fp)
	lw $t2, -800($fp)
	beq $t1, $t2, label174
	j label173
label174:
	lw $t0, -88($fp)
	sw $t0, -804($fp)
	lw $t1, -804($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label173
label172:
	li $t0, 1
	sw $t0, -792($fp)
label173:
	addi $t0, $fp, -44
	sw $t0, -808($fp)
	lw $t0, -112($fp)
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
	li $t0, 0
	sw $t0, -828($fp)
	lw $t0, -88($fp)
	sw $t0, -832($fp)
	lw $t0, -88($fp)
	sw $t0, -836($fp)
	lw $t1, -832($fp)
	lw $t2, -836($fp)
	beq $t1, $t2, label177
	j label176
label177:
	lw $t0, -124($fp)
	sw $t0, -840($fp)
	lw $t1, -840($fp)
	li $t2, 0
	bne $t1, $t2, label175
	j label176
label175:
	li $t0, 1
	sw $t0, -828($fp)
label176:
	addi $sp, $sp, -4
	lw $t0, -792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -828($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -844($fp)
	addi $sp, $sp, 16
	lw $t1, -844($fp)
	li $t2, 0
	bne $t1, $t2, label169
	j label171
label171:
	li $t0, 0
	sw $t0, -848($fp)
	lw $t0, -100($fp)
	sw $t0, -852($fp)
	lw $t1, -852($fp)
	li $t2, 0
	bne $t1, $t2, label179
	j label178
label178:
	li $t0, 1
	sw $t0, -848($fp)
label179:
	li $t0, 5751
	sw $t0, -856($fp)
	lw $t0, -848($fp)
	lw $t1, -856($fp)
	sub $t0, $t0, $t1
	sw $t0, -860($fp)
	li $t0, 0
	sw $t0, -864($fp)
	lw $t0, 4($fp)
	sw $t0, -868($fp)
	li $t0, 13629
	sw $t0, -872($fp)
	lw $t1, -868($fp)
	lw $t2, -872($fp)
	bgt $t1, $t2, label180
	j label181
label180:
	li $t0, 1
	sw $t0, -864($fp)
label181:
	lw $t1, -860($fp)
	lw $t2, -864($fp)
	beq $t1, $t2, label169
	j label170
label169:
	li $t0, 1
	sw $t0, -788($fp)
label170:
	lw $t0, -52($fp)
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -64($fp)
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -76($fp)
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -88($fp)
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -100($fp)
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -112($fp)
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -124($fp)
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -136($fp)
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
	sw $t0, -1088($fp)
	li $t0, 9
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
	lw $t0, -1104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1108($fp)
	lw $t0, -124($fp)
	sw $t0, -1112($fp)
	lw $t1, -1112($fp)
	li $t2, 0
	bne $t1, $t2, label182
	j label185
label185:
	li $t0, 51478
	sw $t0, -1116($fp)
	lw $t1, -1116($fp)
	li $t2, 0
	bne $t1, $t2, label182
	j label184
label184:
	lw $t0, -76($fp)
	sw $t0, -1120($fp)
	lw $t1, -1120($fp)
	li $t2, 0
	bne $t1, $t2, label182
	j label183
label182:
	li $t0, 1
	sw $t0, -1108($fp)
label183:
	li $t0, 0
	sw $t0, -1124($fp)
	lw $t0, -88($fp)
	sw $t0, -1128($fp)
	lw $t1, -1128($fp)
	li $t2, 0
	bne $t1, $t2, label186
	j label188
label188:
	li $t0, 8693
	sw $t0, -1132($fp)
	lw $t1, -1132($fp)
	li $t2, 0
	bne $t1, $t2, label186
	j label187
label186:
	li $t0, 1
	sw $t0, -1124($fp)
label187:
	lw $t0, -100($fp)
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -1140($fp)
	addi $sp, $sp, -4
	lw $t0, -1108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1140($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1144($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -44
	sw $t0, -1148($fp)
	li $t0, 0
	sw $t0, -1152($fp)
	li $t0, 29725
	sw $t0, -1156($fp)
	lw $t0, -100($fp)
	sw $t0, -1160($fp)
	lw $t1, -1156($fp)
	lw $t2, -1160($fp)
	bgt $t1, $t2, label189
	j label190
label189:
	li $t0, 1
	sw $t0, -1152($fp)
label190:
	li $t0, 4
	lw $t1, -1152($fp)
	mul $t0, $t0, $t1
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	lw $t1, -1148($fp)
	add $t0, $t0, $t1
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	lw $t1, 0($t0)
	sw $t1, -1172($fp)
	lw $t0, -1144($fp)
	lw $t1, -1172($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1176($fp)
	li $t0, 0
	lw $t1, -1176($fp)
	sub $t0, $t0, $t1
	sw $t0, -1180($fp)
	lw $ra, -4($fp)
	lw $v0, -1180($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -9260
	li $t0, 43444
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
	li $t0, 45465
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
	li $t0, 9153
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
	li $t0, 53747
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
	li $t0, 35500
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
	li $t0, 36416
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
	li $t0, 29392
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
	li $t0, 18502
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	li $t0, 60447
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	li $t0, 4570
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	li $t0, 22320
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	li $t0, 63439
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	li $t0, 17216
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	li $t0, 6889
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	li $t0, 15731
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	li $t0, 27818
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	li $t0, 47278
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	li $t0, 53579
	sw $t0, -748($fp)
	addi $t0, $fp, -352
	sw $t0, -752($fp)
	li $t0, 0
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
	li $t0, 6874
	sw $t0, -772($fp)
	addi $t0, $fp, -352
	sw $t0, -776($fp)
	li $t0, 1
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
	li $t0, 3581
	sw $t0, -796($fp)
	addi $t0, $fp, -352
	sw $t0, -800($fp)
	li $t0, 2
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
	li $t0, 18828
	sw $t0, -820($fp)
	addi $t0, $fp, -352
	sw $t0, -824($fp)
	li $t0, 3
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
	li $t0, 49783
	sw $t0, -844($fp)
	addi $t0, $fp, -352
	sw $t0, -848($fp)
	li $t0, 4
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
	li $t0, 18290
	sw $t0, -868($fp)
	addi $t0, $fp, -352
	sw $t0, -872($fp)
	li $t0, 5
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
	li $t0, 45505
	sw $t0, -892($fp)
	addi $t0, $fp, -352
	sw $t0, -896($fp)
	li $t0, 6
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
	li $t0, 57525
	sw $t0, -916($fp)
	addi $t0, $fp, -352
	sw $t0, -920($fp)
	li $t0, 7
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
	li $t0, 56144
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -948($fp)
	li $t0, 51256
	sw $t0, -952($fp)
	addi $t0, $fp, -356
	sw $t0, -956($fp)
	li $t0, 0
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
	li $t0, 5618
	sw $t0, -976($fp)
	addi $t0, $fp, -384
	sw $t0, -980($fp)
	li $t0, 0
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
	li $t0, 64837
	sw $t0, -1000($fp)
	addi $t0, $fp, -384
	sw $t0, -1004($fp)
	li $t0, 1
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
	li $t0, 37199
	sw $t0, -1024($fp)
	addi $t0, $fp, -384
	sw $t0, -1028($fp)
	li $t0, 2
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
	li $t0, 35344
	sw $t0, -1048($fp)
	addi $t0, $fp, -384
	sw $t0, -1052($fp)
	li $t0, 3
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
	li $t0, 42746
	sw $t0, -1072($fp)
	addi $t0, $fp, -384
	sw $t0, -1076($fp)
	li $t0, 4
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
	li $t0, 17128
	sw $t0, -1096($fp)
	addi $t0, $fp, -384
	sw $t0, -1100($fp)
	li $t0, 5
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
	li $t0, 44497
	sw $t0, -1120($fp)
	addi $t0, $fp, -384
	sw $t0, -1124($fp)
	li $t0, 6
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
	li $t0, 30957
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	sw $t0, -1152($fp)
	li $t0, 52628
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	sw $t0, -1164($fp)
	li $t0, 15377
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	sw $t0, -1176($fp)
	li $t0, 60349
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	sw $t0, -1188($fp)
	li $t0, 5595
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -1200($fp)
	li $t0, 10289
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	sw $t0, -1212($fp)
	li $t0, 64919
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	sw $t0, -1224($fp)
	li $t0, 27915
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	sw $t0, -1236($fp)
	li $t0, 8192
	sw $t0, -1240($fp)
	addi $t0, $fp, -420
	sw $t0, -1244($fp)
	li $t0, 0
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
	li $t0, 16600
	sw $t0, -1264($fp)
	addi $t0, $fp, -420
	sw $t0, -1268($fp)
	li $t0, 1
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
	li $t0, 34804
	sw $t0, -1288($fp)
	addi $t0, $fp, -420
	sw $t0, -1292($fp)
	li $t0, 2
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
	li $t0, 23923
	sw $t0, -1312($fp)
	addi $t0, $fp, -420
	sw $t0, -1316($fp)
	li $t0, 3
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
	li $t0, 44418
	sw $t0, -1336($fp)
	addi $t0, $fp, -420
	sw $t0, -1340($fp)
	li $t0, 4
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
	li $t0, 16546
	sw $t0, -1360($fp)
	addi $t0, $fp, -420
	sw $t0, -1364($fp)
	li $t0, 5
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
	li $t0, 11966
	sw $t0, -1384($fp)
	addi $t0, $fp, -420
	sw $t0, -1388($fp)
	li $t0, 6
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1396($fp)
	lw $t0, -1388($fp)
	lw $t1, -1396($fp)
	add $t0, $t0, $t1
	sw $t0, -1400($fp)
	lw $t0, -1384($fp)
	lw $t1, -1400($fp)
	sw $t0, 0($t1)
	lw $t0, -1400($fp)
	lw $t1, 0($t0)
	sw $t1, -1404($fp)
	li $t0, 51292
	sw $t0, -1408($fp)
	addi $t0, $fp, -420
	sw $t0, -1412($fp)
	li $t0, 7
	sw $t0, -1416($fp)
	lw $t0, -1416($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1420($fp)
	lw $t0, -1412($fp)
	lw $t1, -1420($fp)
	add $t0, $t0, $t1
	sw $t0, -1424($fp)
	lw $t0, -1408($fp)
	lw $t1, -1424($fp)
	sw $t0, 0($t1)
	lw $t0, -1424($fp)
	lw $t1, 0($t0)
	sw $t1, -1428($fp)
	li $t0, 20128
	sw $t0, -1432($fp)
	addi $t0, $fp, -420
	sw $t0, -1436($fp)
	li $t0, 8
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1444($fp)
	lw $t0, -1436($fp)
	lw $t1, -1444($fp)
	add $t0, $t0, $t1
	sw $t0, -1448($fp)
	lw $t0, -1432($fp)
	lw $t1, -1448($fp)
	sw $t0, 0($t1)
	lw $t0, -1448($fp)
	lw $t1, 0($t0)
	sw $t1, -1452($fp)
	li $t0, 30795
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	sw $t0, -1464($fp)
	li $t0, 35539
	sw $t0, -1468($fp)
	addi $t0, $fp, -456
	sw $t0, -1472($fp)
	li $t0, 0
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
	li $t0, 38418
	sw $t0, -1492($fp)
	addi $t0, $fp, -456
	sw $t0, -1496($fp)
	li $t0, 1
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
	li $t0, 10764
	sw $t0, -1516($fp)
	addi $t0, $fp, -456
	sw $t0, -1520($fp)
	li $t0, 2
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1528($fp)
	lw $t0, -1520($fp)
	lw $t1, -1528($fp)
	add $t0, $t0, $t1
	sw $t0, -1532($fp)
	lw $t0, -1516($fp)
	lw $t1, -1532($fp)
	sw $t0, 0($t1)
	lw $t0, -1532($fp)
	lw $t1, 0($t0)
	sw $t1, -1536($fp)
	li $t0, 27529
	sw $t0, -1540($fp)
	addi $t0, $fp, -456
	sw $t0, -1544($fp)
	li $t0, 3
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1552($fp)
	lw $t0, -1544($fp)
	lw $t1, -1552($fp)
	add $t0, $t0, $t1
	sw $t0, -1556($fp)
	lw $t0, -1540($fp)
	lw $t1, -1556($fp)
	sw $t0, 0($t1)
	lw $t0, -1556($fp)
	lw $t1, 0($t0)
	sw $t1, -1560($fp)
	li $t0, 29026
	sw $t0, -1564($fp)
	addi $t0, $fp, -456
	sw $t0, -1568($fp)
	li $t0, 4
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1576($fp)
	lw $t0, -1568($fp)
	lw $t1, -1576($fp)
	add $t0, $t0, $t1
	sw $t0, -1580($fp)
	lw $t0, -1564($fp)
	lw $t1, -1580($fp)
	sw $t0, 0($t1)
	lw $t0, -1580($fp)
	lw $t1, 0($t0)
	sw $t1, -1584($fp)
	li $t0, 62020
	sw $t0, -1588($fp)
	addi $t0, $fp, -456
	sw $t0, -1592($fp)
	li $t0, 5
	sw $t0, -1596($fp)
	lw $t0, -1596($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1600($fp)
	lw $t0, -1592($fp)
	lw $t1, -1600($fp)
	add $t0, $t0, $t1
	sw $t0, -1604($fp)
	lw $t0, -1588($fp)
	lw $t1, -1604($fp)
	sw $t0, 0($t1)
	lw $t0, -1604($fp)
	lw $t1, 0($t0)
	sw $t1, -1608($fp)
	li $t0, 33147
	sw $t0, -1612($fp)
	addi $t0, $fp, -456
	sw $t0, -1616($fp)
	li $t0, 6
	sw $t0, -1620($fp)
	lw $t0, -1620($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1624($fp)
	lw $t0, -1616($fp)
	lw $t1, -1624($fp)
	add $t0, $t0, $t1
	sw $t0, -1628($fp)
	lw $t0, -1612($fp)
	lw $t1, -1628($fp)
	sw $t0, 0($t1)
	lw $t0, -1628($fp)
	lw $t1, 0($t0)
	sw $t1, -1632($fp)
	li $t0, 28328
	sw $t0, -1636($fp)
	addi $t0, $fp, -456
	sw $t0, -1640($fp)
	li $t0, 7
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
	li $t0, 33683
	sw $t0, -1660($fp)
	addi $t0, $fp, -456
	sw $t0, -1664($fp)
	li $t0, 8
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
	li $t0, 2955
	sw $t0, -1684($fp)
	addi $t0, $fp, -496
	sw $t0, -1688($fp)
	li $t0, 0
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1696($fp)
	lw $t0, -1688($fp)
	lw $t1, -1696($fp)
	add $t0, $t0, $t1
	sw $t0, -1700($fp)
	lw $t0, -1684($fp)
	lw $t1, -1700($fp)
	sw $t0, 0($t1)
	lw $t0, -1700($fp)
	lw $t1, 0($t0)
	sw $t1, -1704($fp)
	li $t0, 5538
	sw $t0, -1708($fp)
	addi $t0, $fp, -496
	sw $t0, -1712($fp)
	li $t0, 1
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1720($fp)
	lw $t0, -1712($fp)
	lw $t1, -1720($fp)
	add $t0, $t0, $t1
	sw $t0, -1724($fp)
	lw $t0, -1708($fp)
	lw $t1, -1724($fp)
	sw $t0, 0($t1)
	lw $t0, -1724($fp)
	lw $t1, 0($t0)
	sw $t1, -1728($fp)
	li $t0, 50812
	sw $t0, -1732($fp)
	addi $t0, $fp, -496
	sw $t0, -1736($fp)
	li $t0, 2
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1744($fp)
	lw $t0, -1736($fp)
	lw $t1, -1744($fp)
	add $t0, $t0, $t1
	sw $t0, -1748($fp)
	lw $t0, -1732($fp)
	lw $t1, -1748($fp)
	sw $t0, 0($t1)
	lw $t0, -1748($fp)
	lw $t1, 0($t0)
	sw $t1, -1752($fp)
	li $t0, 47452
	sw $t0, -1756($fp)
	addi $t0, $fp, -496
	sw $t0, -1760($fp)
	li $t0, 3
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1768($fp)
	lw $t0, -1760($fp)
	lw $t1, -1768($fp)
	add $t0, $t0, $t1
	sw $t0, -1772($fp)
	lw $t0, -1756($fp)
	lw $t1, -1772($fp)
	sw $t0, 0($t1)
	lw $t0, -1772($fp)
	lw $t1, 0($t0)
	sw $t1, -1776($fp)
	li $t0, 36495
	sw $t0, -1780($fp)
	addi $t0, $fp, -496
	sw $t0, -1784($fp)
	li $t0, 4
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1792($fp)
	lw $t0, -1784($fp)
	lw $t1, -1792($fp)
	add $t0, $t0, $t1
	sw $t0, -1796($fp)
	lw $t0, -1780($fp)
	lw $t1, -1796($fp)
	sw $t0, 0($t1)
	lw $t0, -1796($fp)
	lw $t1, 0($t0)
	sw $t1, -1800($fp)
	li $t0, 37904
	sw $t0, -1804($fp)
	addi $t0, $fp, -496
	sw $t0, -1808($fp)
	li $t0, 5
	sw $t0, -1812($fp)
	lw $t0, -1812($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1816($fp)
	lw $t0, -1808($fp)
	lw $t1, -1816($fp)
	add $t0, $t0, $t1
	sw $t0, -1820($fp)
	lw $t0, -1804($fp)
	lw $t1, -1820($fp)
	sw $t0, 0($t1)
	lw $t0, -1820($fp)
	lw $t1, 0($t0)
	sw $t1, -1824($fp)
	li $t0, 62830
	sw $t0, -1828($fp)
	addi $t0, $fp, -496
	sw $t0, -1832($fp)
	li $t0, 6
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
	li $t0, 31308
	sw $t0, -1852($fp)
	addi $t0, $fp, -496
	sw $t0, -1856($fp)
	li $t0, 7
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
	li $t0, 43499
	sw $t0, -1876($fp)
	addi $t0, $fp, -496
	sw $t0, -1880($fp)
	li $t0, 8
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
	li $t0, 7583
	sw $t0, -1900($fp)
	addi $t0, $fp, -496
	sw $t0, -1904($fp)
	li $t0, 9
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
	li $t0, 30691
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	sw $t0, -1932($fp)
	li $t0, 5878
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	sw $t0, -1944($fp)
	li $t0, 15775
	sw $t0, -1948($fp)
	lw $t0, -1948($fp)
	sw $t0, -1952($fp)
	lw $t0, -1952($fp)
	sw $t0, -1956($fp)
	li $t0, 47291
	sw $t0, -1960($fp)
	lw $t0, -1960($fp)
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	sw $t0, -1968($fp)
	li $t0, 40682
	sw $t0, -1972($fp)
	lw $t0, -1972($fp)
	sw $t0, -1976($fp)
	lw $t0, -1976($fp)
	sw $t0, -1980($fp)
	li $t0, 39698
	sw $t0, -1984($fp)
	lw $t0, -1984($fp)
	sw $t0, -1988($fp)
	lw $t0, -1988($fp)
	sw $t0, -1992($fp)
	li $t0, 26173
	sw $t0, -1996($fp)
	addi $t0, $fp, -536
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
	li $t0, 57229
	sw $t0, -2020($fp)
	addi $t0, $fp, -536
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
	li $t0, 51665
	sw $t0, -2044($fp)
	addi $t0, $fp, -536
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
	li $t0, 11930
	sw $t0, -2068($fp)
	addi $t0, $fp, -536
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
	li $t0, 11821
	sw $t0, -2092($fp)
	addi $t0, $fp, -536
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
	li $t0, 16924
	sw $t0, -2116($fp)
	addi $t0, $fp, -536
	sw $t0, -2120($fp)
	li $t0, 5
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
	li $t0, 47469
	sw $t0, -2140($fp)
	addi $t0, $fp, -536
	sw $t0, -2144($fp)
	li $t0, 6
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
	li $t0, 50239
	sw $t0, -2164($fp)
	addi $t0, $fp, -536
	sw $t0, -2168($fp)
	li $t0, 7
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
	li $t0, 27688
	sw $t0, -2188($fp)
	addi $t0, $fp, -536
	sw $t0, -2192($fp)
	li $t0, 8
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
	li $t0, 9462
	sw $t0, -2212($fp)
	addi $t0, $fp, -536
	sw $t0, -2216($fp)
	li $t0, 9
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
	li $t0, 13730
	sw $t0, -2236($fp)
	lw $t0, -2236($fp)
	sw $t0, -2240($fp)
	lw $t0, -2240($fp)
	sw $t0, -2244($fp)
	li $t0, 24172
	sw $t0, -2248($fp)
	addi $t0, $fp, -568
	sw $t0, -2252($fp)
	li $t0, 0
	sw $t0, -2256($fp)
	lw $t0, -2256($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2260($fp)
	lw $t0, -2252($fp)
	lw $t1, -2260($fp)
	add $t0, $t0, $t1
	sw $t0, -2264($fp)
	lw $t0, -2248($fp)
	lw $t1, -2264($fp)
	sw $t0, 0($t1)
	lw $t0, -2264($fp)
	lw $t1, 0($t0)
	sw $t1, -2268($fp)
	li $t0, 42610
	sw $t0, -2272($fp)
	addi $t0, $fp, -568
	sw $t0, -2276($fp)
	li $t0, 1
	sw $t0, -2280($fp)
	lw $t0, -2280($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2284($fp)
	lw $t0, -2276($fp)
	lw $t1, -2284($fp)
	add $t0, $t0, $t1
	sw $t0, -2288($fp)
	lw $t0, -2272($fp)
	lw $t1, -2288($fp)
	sw $t0, 0($t1)
	lw $t0, -2288($fp)
	lw $t1, 0($t0)
	sw $t1, -2292($fp)
	li $t0, 42058
	sw $t0, -2296($fp)
	addi $t0, $fp, -568
	sw $t0, -2300($fp)
	li $t0, 2
	sw $t0, -2304($fp)
	lw $t0, -2304($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2308($fp)
	lw $t0, -2300($fp)
	lw $t1, -2308($fp)
	add $t0, $t0, $t1
	sw $t0, -2312($fp)
	lw $t0, -2296($fp)
	lw $t1, -2312($fp)
	sw $t0, 0($t1)
	lw $t0, -2312($fp)
	lw $t1, 0($t0)
	sw $t1, -2316($fp)
	li $t0, 57856
	sw $t0, -2320($fp)
	addi $t0, $fp, -568
	sw $t0, -2324($fp)
	li $t0, 3
	sw $t0, -2328($fp)
	lw $t0, -2328($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2332($fp)
	lw $t0, -2324($fp)
	lw $t1, -2332($fp)
	add $t0, $t0, $t1
	sw $t0, -2336($fp)
	lw $t0, -2320($fp)
	lw $t1, -2336($fp)
	sw $t0, 0($t1)
	lw $t0, -2336($fp)
	lw $t1, 0($t0)
	sw $t1, -2340($fp)
	li $t0, 45565
	sw $t0, -2344($fp)
	addi $t0, $fp, -568
	sw $t0, -2348($fp)
	li $t0, 4
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2356($fp)
	lw $t0, -2348($fp)
	lw $t1, -2356($fp)
	add $t0, $t0, $t1
	sw $t0, -2360($fp)
	lw $t0, -2344($fp)
	lw $t1, -2360($fp)
	sw $t0, 0($t1)
	lw $t0, -2360($fp)
	lw $t1, 0($t0)
	sw $t1, -2364($fp)
	li $t0, 47596
	sw $t0, -2368($fp)
	addi $t0, $fp, -568
	sw $t0, -2372($fp)
	li $t0, 5
	sw $t0, -2376($fp)
	lw $t0, -2376($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2380($fp)
	lw $t0, -2372($fp)
	lw $t1, -2380($fp)
	add $t0, $t0, $t1
	sw $t0, -2384($fp)
	lw $t0, -2368($fp)
	lw $t1, -2384($fp)
	sw $t0, 0($t1)
	lw $t0, -2384($fp)
	lw $t1, 0($t0)
	sw $t1, -2388($fp)
	li $t0, 43132
	sw $t0, -2392($fp)
	addi $t0, $fp, -568
	sw $t0, -2396($fp)
	li $t0, 6
	sw $t0, -2400($fp)
	lw $t0, -2400($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2404($fp)
	lw $t0, -2396($fp)
	lw $t1, -2404($fp)
	add $t0, $t0, $t1
	sw $t0, -2408($fp)
	lw $t0, -2392($fp)
	lw $t1, -2408($fp)
	sw $t0, 0($t1)
	lw $t0, -2408($fp)
	lw $t1, 0($t0)
	sw $t1, -2412($fp)
	li $t0, 27482
	sw $t0, -2416($fp)
	addi $t0, $fp, -568
	sw $t0, -2420($fp)
	li $t0, 7
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
	li $t0, 18555
	sw $t0, -2440($fp)
	lw $t0, -2440($fp)
	sw $t0, -2444($fp)
	lw $t0, -2444($fp)
	sw $t0, -2448($fp)
	li $t0, 15500
	sw $t0, -2452($fp)
	lw $t0, -2452($fp)
	sw $t0, -2456($fp)
	lw $t0, -2456($fp)
	sw $t0, -2460($fp)
	li $t0, 24776
	sw $t0, -2464($fp)
	lw $t0, -2464($fp)
	sw $t0, -2468($fp)
	lw $t0, -2468($fp)
	sw $t0, -2472($fp)
	li $t0, 49863
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	sw $t0, -2484($fp)
	li $t0, 59000
	sw $t0, -2488($fp)
	addi $t0, $fp, -592
	sw $t0, -2492($fp)
	li $t0, 0
	sw $t0, -2496($fp)
	lw $t0, -2496($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2500($fp)
	lw $t0, -2492($fp)
	lw $t1, -2500($fp)
	add $t0, $t0, $t1
	sw $t0, -2504($fp)
	lw $t0, -2488($fp)
	lw $t1, -2504($fp)
	sw $t0, 0($t1)
	lw $t0, -2504($fp)
	lw $t1, 0($t0)
	sw $t1, -2508($fp)
	li $t0, 32359
	sw $t0, -2512($fp)
	addi $t0, $fp, -592
	sw $t0, -2516($fp)
	li $t0, 1
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2524($fp)
	lw $t0, -2516($fp)
	lw $t1, -2524($fp)
	add $t0, $t0, $t1
	sw $t0, -2528($fp)
	lw $t0, -2512($fp)
	lw $t1, -2528($fp)
	sw $t0, 0($t1)
	lw $t0, -2528($fp)
	lw $t1, 0($t0)
	sw $t1, -2532($fp)
	li $t0, 15018
	sw $t0, -2536($fp)
	addi $t0, $fp, -592
	sw $t0, -2540($fp)
	li $t0, 2
	sw $t0, -2544($fp)
	lw $t0, -2544($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2548($fp)
	lw $t0, -2540($fp)
	lw $t1, -2548($fp)
	add $t0, $t0, $t1
	sw $t0, -2552($fp)
	lw $t0, -2536($fp)
	lw $t1, -2552($fp)
	sw $t0, 0($t1)
	lw $t0, -2552($fp)
	lw $t1, 0($t0)
	sw $t1, -2556($fp)
	li $t0, 64878
	sw $t0, -2560($fp)
	addi $t0, $fp, -592
	sw $t0, -2564($fp)
	li $t0, 3
	sw $t0, -2568($fp)
	lw $t0, -2568($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2572($fp)
	lw $t0, -2564($fp)
	lw $t1, -2572($fp)
	add $t0, $t0, $t1
	sw $t0, -2576($fp)
	lw $t0, -2560($fp)
	lw $t1, -2576($fp)
	sw $t0, 0($t1)
	lw $t0, -2576($fp)
	lw $t1, 0($t0)
	sw $t1, -2580($fp)
	li $t0, 48134
	sw $t0, -2584($fp)
	addi $t0, $fp, -592
	sw $t0, -2588($fp)
	li $t0, 4
	sw $t0, -2592($fp)
	lw $t0, -2592($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2596($fp)
	lw $t0, -2588($fp)
	lw $t1, -2596($fp)
	add $t0, $t0, $t1
	sw $t0, -2600($fp)
	lw $t0, -2584($fp)
	lw $t1, -2600($fp)
	sw $t0, 0($t1)
	lw $t0, -2600($fp)
	lw $t1, 0($t0)
	sw $t1, -2604($fp)
	li $t0, 62310
	sw $t0, -2608($fp)
	addi $t0, $fp, -592
	sw $t0, -2612($fp)
	li $t0, 5
	sw $t0, -2616($fp)
	lw $t0, -2616($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2620($fp)
	lw $t0, -2612($fp)
	lw $t1, -2620($fp)
	add $t0, $t0, $t1
	sw $t0, -2624($fp)
	lw $t0, -2608($fp)
	lw $t1, -2624($fp)
	sw $t0, 0($t1)
	lw $t0, -2624($fp)
	lw $t1, 0($t0)
	sw $t1, -2628($fp)
	li $t0, 40025
	sw $t0, -2632($fp)
	lw $t0, -2632($fp)
	sw $t0, -2636($fp)
	lw $t0, -2636($fp)
	sw $t0, -2640($fp)
	li $t0, 22296
	sw $t0, -2644($fp)
	lw $t0, -2644($fp)
	sw $t0, -2648($fp)
	lw $t0, -2648($fp)
	sw $t0, -2652($fp)
	li $t0, 22947
	sw $t0, -2656($fp)
	lw $t0, -2656($fp)
	sw $t0, -2660($fp)
	lw $t0, -2660($fp)
	sw $t0, -2664($fp)
	li $t0, 31718
	sw $t0, -2668($fp)
	lw $t0, -2668($fp)
	sw $t0, -2672($fp)
	lw $t0, -2672($fp)
	sw $t0, -2676($fp)
	li $t0, 8425
	sw $t0, -2680($fp)
	lw $t0, -2680($fp)
	sw $t0, -2684($fp)
	lw $t0, -2684($fp)
	sw $t0, -2688($fp)
	li $t0, 34877
	sw $t0, -2692($fp)
	lw $t0, -2692($fp)
	sw $t0, -2696($fp)
	lw $t0, -2696($fp)
	sw $t0, -2700($fp)
	li $t0, 43539
	sw $t0, -2704($fp)
	lw $t0, -2704($fp)
	sw $t0, -2708($fp)
	lw $t0, -2708($fp)
	sw $t0, -2712($fp)
	li $t0, 25349
	sw $t0, -2716($fp)
	lw $t0, -2716($fp)
	sw $t0, -2720($fp)
	lw $t0, -2720($fp)
	sw $t0, -2724($fp)
	li $t0, 16811
	sw $t0, -2728($fp)
	addi $t0, $fp, -632
	sw $t0, -2732($fp)
	li $t0, 0
	sw $t0, -2736($fp)
	lw $t0, -2736($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2740($fp)
	lw $t0, -2732($fp)
	lw $t1, -2740($fp)
	add $t0, $t0, $t1
	sw $t0, -2744($fp)
	lw $t0, -2728($fp)
	lw $t1, -2744($fp)
	sw $t0, 0($t1)
	lw $t0, -2744($fp)
	lw $t1, 0($t0)
	sw $t1, -2748($fp)
	li $t0, 28242
	sw $t0, -2752($fp)
	addi $t0, $fp, -632
	sw $t0, -2756($fp)
	li $t0, 1
	sw $t0, -2760($fp)
	lw $t0, -2760($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2764($fp)
	lw $t0, -2756($fp)
	lw $t1, -2764($fp)
	add $t0, $t0, $t1
	sw $t0, -2768($fp)
	lw $t0, -2752($fp)
	lw $t1, -2768($fp)
	sw $t0, 0($t1)
	lw $t0, -2768($fp)
	lw $t1, 0($t0)
	sw $t1, -2772($fp)
	li $t0, 53037
	sw $t0, -2776($fp)
	addi $t0, $fp, -632
	sw $t0, -2780($fp)
	li $t0, 2
	sw $t0, -2784($fp)
	lw $t0, -2784($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2788($fp)
	lw $t0, -2780($fp)
	lw $t1, -2788($fp)
	add $t0, $t0, $t1
	sw $t0, -2792($fp)
	lw $t0, -2776($fp)
	lw $t1, -2792($fp)
	sw $t0, 0($t1)
	lw $t0, -2792($fp)
	lw $t1, 0($t0)
	sw $t1, -2796($fp)
	li $t0, 26273
	sw $t0, -2800($fp)
	addi $t0, $fp, -632
	sw $t0, -2804($fp)
	li $t0, 3
	sw $t0, -2808($fp)
	lw $t0, -2808($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2812($fp)
	lw $t0, -2804($fp)
	lw $t1, -2812($fp)
	add $t0, $t0, $t1
	sw $t0, -2816($fp)
	lw $t0, -2800($fp)
	lw $t1, -2816($fp)
	sw $t0, 0($t1)
	lw $t0, -2816($fp)
	lw $t1, 0($t0)
	sw $t1, -2820($fp)
	li $t0, 41972
	sw $t0, -2824($fp)
	addi $t0, $fp, -632
	sw $t0, -2828($fp)
	li $t0, 4
	sw $t0, -2832($fp)
	lw $t0, -2832($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2836($fp)
	lw $t0, -2828($fp)
	lw $t1, -2836($fp)
	add $t0, $t0, $t1
	sw $t0, -2840($fp)
	lw $t0, -2824($fp)
	lw $t1, -2840($fp)
	sw $t0, 0($t1)
	lw $t0, -2840($fp)
	lw $t1, 0($t0)
	sw $t1, -2844($fp)
	li $t0, 11674
	sw $t0, -2848($fp)
	addi $t0, $fp, -632
	sw $t0, -2852($fp)
	li $t0, 5
	sw $t0, -2856($fp)
	lw $t0, -2856($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2860($fp)
	lw $t0, -2852($fp)
	lw $t1, -2860($fp)
	add $t0, $t0, $t1
	sw $t0, -2864($fp)
	lw $t0, -2848($fp)
	lw $t1, -2864($fp)
	sw $t0, 0($t1)
	lw $t0, -2864($fp)
	lw $t1, 0($t0)
	sw $t1, -2868($fp)
	li $t0, 3347
	sw $t0, -2872($fp)
	addi $t0, $fp, -632
	sw $t0, -2876($fp)
	li $t0, 6
	sw $t0, -2880($fp)
	lw $t0, -2880($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2884($fp)
	lw $t0, -2876($fp)
	lw $t1, -2884($fp)
	add $t0, $t0, $t1
	sw $t0, -2888($fp)
	lw $t0, -2872($fp)
	lw $t1, -2888($fp)
	sw $t0, 0($t1)
	lw $t0, -2888($fp)
	lw $t1, 0($t0)
	sw $t1, -2892($fp)
	li $t0, 18494
	sw $t0, -2896($fp)
	addi $t0, $fp, -632
	sw $t0, -2900($fp)
	li $t0, 7
	sw $t0, -2904($fp)
	lw $t0, -2904($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2908($fp)
	lw $t0, -2900($fp)
	lw $t1, -2908($fp)
	add $t0, $t0, $t1
	sw $t0, -2912($fp)
	lw $t0, -2896($fp)
	lw $t1, -2912($fp)
	sw $t0, 0($t1)
	lw $t0, -2912($fp)
	lw $t1, 0($t0)
	sw $t1, -2916($fp)
	li $t0, 3994
	sw $t0, -2920($fp)
	addi $t0, $fp, -632
	sw $t0, -2924($fp)
	li $t0, 8
	sw $t0, -2928($fp)
	lw $t0, -2928($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2932($fp)
	lw $t0, -2924($fp)
	lw $t1, -2932($fp)
	add $t0, $t0, $t1
	sw $t0, -2936($fp)
	lw $t0, -2920($fp)
	lw $t1, -2936($fp)
	sw $t0, 0($t1)
	lw $t0, -2936($fp)
	lw $t1, 0($t0)
	sw $t1, -2940($fp)
	li $t0, 48913
	sw $t0, -2944($fp)
	addi $t0, $fp, -632
	sw $t0, -2948($fp)
	li $t0, 9
	sw $t0, -2952($fp)
	lw $t0, -2952($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2956($fp)
	lw $t0, -2948($fp)
	lw $t1, -2956($fp)
	add $t0, $t0, $t1
	sw $t0, -2960($fp)
	lw $t0, -2944($fp)
	lw $t1, -2960($fp)
	sw $t0, 0($t1)
	lw $t0, -2960($fp)
	lw $t1, 0($t0)
	sw $t1, -2964($fp)
	li $t0, 554
	sw $t0, -2968($fp)
	lw $t0, -2968($fp)
	sw $t0, -2972($fp)
	lw $t0, -2972($fp)
	sw $t0, -2976($fp)
	li $t0, 47126
	sw $t0, -2980($fp)
	lw $t0, -2980($fp)
	sw $t0, -2984($fp)
	lw $t0, -2984($fp)
	sw $t0, -2988($fp)
	li $t0, 10859
	sw $t0, -2992($fp)
	lw $t0, -2992($fp)
	sw $t0, -2996($fp)
	lw $t0, -2996($fp)
	sw $t0, -3000($fp)
	li $t0, 19109
	sw $t0, -3004($fp)
	addi $t0, $fp, -640
	sw $t0, -3008($fp)
	li $t0, 0
	sw $t0, -3012($fp)
	lw $t0, -3012($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3016($fp)
	lw $t0, -3008($fp)
	lw $t1, -3016($fp)
	add $t0, $t0, $t1
	sw $t0, -3020($fp)
	lw $t0, -3004($fp)
	lw $t1, -3020($fp)
	sw $t0, 0($t1)
	lw $t0, -3020($fp)
	lw $t1, 0($t0)
	sw $t1, -3024($fp)
	li $t0, 62626
	sw $t0, -3028($fp)
	addi $t0, $fp, -640
	sw $t0, -3032($fp)
	li $t0, 1
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
	li $t0, 35635
	sw $t0, -3052($fp)
	lw $t0, -3052($fp)
	sw $t0, -3056($fp)
	lw $t0, -3056($fp)
	sw $t0, -3060($fp)
	li $t0, 3436
	sw $t0, -3064($fp)
	lw $t0, -3064($fp)
	sw $t0, -3068($fp)
	lw $t0, -3068($fp)
	sw $t0, -3072($fp)
	li $t0, 56090
	sw $t0, -3076($fp)
	lw $t0, -3076($fp)
	sw $t0, -3080($fp)
	lw $t0, -3080($fp)
	sw $t0, -3084($fp)
	li $t0, 2458
	sw $t0, -3088($fp)
	addi $t0, $fp, -668
	sw $t0, -3092($fp)
	li $t0, 0
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
	li $t0, 18455
	sw $t0, -3112($fp)
	addi $t0, $fp, -668
	sw $t0, -3116($fp)
	li $t0, 1
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
	li $t0, 55433
	sw $t0, -3136($fp)
	addi $t0, $fp, -668
	sw $t0, -3140($fp)
	li $t0, 2
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
	li $t0, 50592
	sw $t0, -3160($fp)
	addi $t0, $fp, -668
	sw $t0, -3164($fp)
	li $t0, 3
	sw $t0, -3168($fp)
	lw $t0, -3168($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3172($fp)
	lw $t0, -3164($fp)
	lw $t1, -3172($fp)
	add $t0, $t0, $t1
	sw $t0, -3176($fp)
	lw $t0, -3160($fp)
	lw $t1, -3176($fp)
	sw $t0, 0($t1)
	lw $t0, -3176($fp)
	lw $t1, 0($t0)
	sw $t1, -3180($fp)
	li $t0, 15229
	sw $t0, -3184($fp)
	addi $t0, $fp, -668
	sw $t0, -3188($fp)
	li $t0, 4
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
	li $t0, 29922
	sw $t0, -3208($fp)
	addi $t0, $fp, -668
	sw $t0, -3212($fp)
	li $t0, 5
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
	li $t0, 7352
	sw $t0, -3232($fp)
	addi $t0, $fp, -668
	sw $t0, -3236($fp)
	li $t0, 6
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
	li $t0, 38176
	sw $t0, -3256($fp)
	addi $t0, $fp, -708
	sw $t0, -3260($fp)
	li $t0, 0
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
	li $t0, 61640
	sw $t0, -3280($fp)
	addi $t0, $fp, -708
	sw $t0, -3284($fp)
	li $t0, 1
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
	li $t0, 15778
	sw $t0, -3304($fp)
	addi $t0, $fp, -708
	sw $t0, -3308($fp)
	li $t0, 2
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
	li $t0, 7518
	sw $t0, -3328($fp)
	addi $t0, $fp, -708
	sw $t0, -3332($fp)
	li $t0, 3
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
	li $t0, 39643
	sw $t0, -3352($fp)
	addi $t0, $fp, -708
	sw $t0, -3356($fp)
	li $t0, 4
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
	li $t0, 41127
	sw $t0, -3376($fp)
	addi $t0, $fp, -708
	sw $t0, -3380($fp)
	li $t0, 5
	sw $t0, -3384($fp)
	lw $t0, -3384($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3388($fp)
	lw $t0, -3380($fp)
	lw $t1, -3388($fp)
	add $t0, $t0, $t1
	sw $t0, -3392($fp)
	lw $t0, -3376($fp)
	lw $t1, -3392($fp)
	sw $t0, 0($t1)
	lw $t0, -3392($fp)
	lw $t1, 0($t0)
	sw $t1, -3396($fp)
	li $t0, 24329
	sw $t0, -3400($fp)
	addi $t0, $fp, -708
	sw $t0, -3404($fp)
	li $t0, 6
	sw $t0, -3408($fp)
	lw $t0, -3408($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3412($fp)
	lw $t0, -3404($fp)
	lw $t1, -3412($fp)
	add $t0, $t0, $t1
	sw $t0, -3416($fp)
	lw $t0, -3400($fp)
	lw $t1, -3416($fp)
	sw $t0, 0($t1)
	lw $t0, -3416($fp)
	lw $t1, 0($t0)
	sw $t1, -3420($fp)
	li $t0, 2349
	sw $t0, -3424($fp)
	addi $t0, $fp, -708
	sw $t0, -3428($fp)
	li $t0, 7
	sw $t0, -3432($fp)
	lw $t0, -3432($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3436($fp)
	lw $t0, -3428($fp)
	lw $t1, -3436($fp)
	add $t0, $t0, $t1
	sw $t0, -3440($fp)
	lw $t0, -3424($fp)
	lw $t1, -3440($fp)
	sw $t0, 0($t1)
	lw $t0, -3440($fp)
	lw $t1, 0($t0)
	sw $t1, -3444($fp)
	li $t0, 28629
	sw $t0, -3448($fp)
	addi $t0, $fp, -708
	sw $t0, -3452($fp)
	li $t0, 8
	sw $t0, -3456($fp)
	lw $t0, -3456($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3460($fp)
	lw $t0, -3452($fp)
	lw $t1, -3460($fp)
	add $t0, $t0, $t1
	sw $t0, -3464($fp)
	lw $t0, -3448($fp)
	lw $t1, -3464($fp)
	sw $t0, 0($t1)
	lw $t0, -3464($fp)
	lw $t1, 0($t0)
	sw $t1, -3468($fp)
	li $t0, 50602
	sw $t0, -3472($fp)
	addi $t0, $fp, -708
	sw $t0, -3476($fp)
	li $t0, 9
	sw $t0, -3480($fp)
	lw $t0, -3480($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3484($fp)
	lw $t0, -3476($fp)
	lw $t1, -3484($fp)
	add $t0, $t0, $t1
	sw $t0, -3488($fp)
	lw $t0, -3472($fp)
	lw $t1, -3488($fp)
	sw $t0, 0($t1)
	lw $t0, -3488($fp)
	lw $t1, 0($t0)
	sw $t1, -3492($fp)
	li $t0, 44322
	sw $t0, -3496($fp)
	lw $t0, -3496($fp)
	sw $t0, -3500($fp)
	lw $t0, -3500($fp)
	sw $t0, -3504($fp)
	li $t0, 40303
	sw $t0, -3508($fp)
	lw $t0, -3508($fp)
	sw $t0, -3512($fp)
	lw $t0, -3512($fp)
	sw $t0, -3516($fp)
	li $t0, 53950
	sw $t0, -3520($fp)
	lw $t0, -3520($fp)
	sw $t0, -3524($fp)
	lw $t0, -3524($fp)
	sw $t0, -3528($fp)
	li $t0, 62816
	sw $t0, -3532($fp)
	lw $t0, -3532($fp)
	sw $t0, -3536($fp)
	lw $t0, -3536($fp)
	sw $t0, -3540($fp)
	li $t0, 44297
	sw $t0, -3544($fp)
	lw $t0, -3544($fp)
	sw $t0, -3548($fp)
	lw $t0, -3548($fp)
	sw $t0, -3552($fp)
	li $t0, 37327
	sw $t0, -3556($fp)
	lw $t0, -3556($fp)
	sw $t0, -3560($fp)
	lw $t0, -3560($fp)
	sw $t0, -3564($fp)
	li $t0, 63371
	sw $t0, -3568($fp)
	lw $t0, -3568($fp)
	sw $t0, -3572($fp)
	lw $t0, -3572($fp)
	sw $t0, -3576($fp)
	li $t0, 25887
	sw $t0, -3580($fp)
	lw $t0, -3580($fp)
	sw $t0, -3584($fp)
	lw $t0, -3584($fp)
	sw $t0, -3588($fp)
	li $t0, 48186
	sw $t0, -3592($fp)
	lw $t0, -3592($fp)
	sw $t0, -3596($fp)
	lw $t0, -3596($fp)
	sw $t0, -3600($fp)
	li $t0, 16944
	sw $t0, -3604($fp)
	lw $t0, -3604($fp)
	sw $t0, -3608($fp)
	lw $t0, -3608($fp)
	sw $t0, -3612($fp)
	li $t0, 22977
	sw $t0, -3616($fp)
	lw $t0, -3616($fp)
	sw $t0, -3620($fp)
	lw $t0, -3620($fp)
	sw $t0, -3624($fp)
	li $t0, 18285
	sw $t0, -3628($fp)
	lw $t0, -3628($fp)
	sw $t0, -3632($fp)
	lw $t0, -3632($fp)
	sw $t0, -3636($fp)
	li $t0, 20381
	sw $t0, -3640($fp)
	lw $t0, -3640($fp)
	sw $t0, -3644($fp)
	lw $t0, -3644($fp)
	sw $t0, -3648($fp)
	li $t0, 13532
	sw $t0, -3652($fp)
	lw $t0, -3652($fp)
	sw $t0, -3656($fp)
	lw $t0, -3656($fp)
	sw $t0, -3660($fp)
	li $t0, 20743
	sw $t0, -3664($fp)
	lw $t0, -3664($fp)
	sw $t0, -3668($fp)
	lw $t0, -3668($fp)
	sw $t0, -3672($fp)
	li $t0, 38836
	sw $t0, -3676($fp)
	addi $t0, $fp, -724
	sw $t0, -3680($fp)
	li $t0, 0
	sw $t0, -3684($fp)
	lw $t0, -3684($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3688($fp)
	lw $t0, -3680($fp)
	lw $t1, -3688($fp)
	add $t0, $t0, $t1
	sw $t0, -3692($fp)
	lw $t0, -3676($fp)
	lw $t1, -3692($fp)
	sw $t0, 0($t1)
	lw $t0, -3692($fp)
	lw $t1, 0($t0)
	sw $t1, -3696($fp)
	li $t0, 3429
	sw $t0, -3700($fp)
	addi $t0, $fp, -724
	sw $t0, -3704($fp)
	li $t0, 1
	sw $t0, -3708($fp)
	lw $t0, -3708($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3712($fp)
	lw $t0, -3704($fp)
	lw $t1, -3712($fp)
	add $t0, $t0, $t1
	sw $t0, -3716($fp)
	lw $t0, -3700($fp)
	lw $t1, -3716($fp)
	sw $t0, 0($t1)
	lw $t0, -3716($fp)
	lw $t1, 0($t0)
	sw $t1, -3720($fp)
	li $t0, 5799
	sw $t0, -3724($fp)
	addi $t0, $fp, -724
	sw $t0, -3728($fp)
	li $t0, 2
	sw $t0, -3732($fp)
	lw $t0, -3732($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3736($fp)
	lw $t0, -3728($fp)
	lw $t1, -3736($fp)
	add $t0, $t0, $t1
	sw $t0, -3740($fp)
	lw $t0, -3724($fp)
	lw $t1, -3740($fp)
	sw $t0, 0($t1)
	lw $t0, -3740($fp)
	lw $t1, 0($t0)
	sw $t1, -3744($fp)
	li $t0, 54065
	sw $t0, -3748($fp)
	addi $t0, $fp, -724
	sw $t0, -3752($fp)
	li $t0, 3
	sw $t0, -3756($fp)
	lw $t0, -3756($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3760($fp)
	lw $t0, -3752($fp)
	lw $t1, -3760($fp)
	add $t0, $t0, $t1
	sw $t0, -3764($fp)
	lw $t0, -3748($fp)
	lw $t1, -3764($fp)
	sw $t0, 0($t1)
	lw $t0, -3764($fp)
	lw $t1, 0($t0)
	sw $t1, -3768($fp)
	li $t0, 33351
	sw $t0, -3772($fp)
	lw $t0, -3772($fp)
	sw $t0, -3776($fp)
	lw $t0, -3776($fp)
	sw $t0, -3780($fp)
	li $t0, 13151
	sw $t0, -3784($fp)
	addi $t0, $fp, -744
	sw $t0, -3788($fp)
	li $t0, 0
	sw $t0, -3792($fp)
	lw $t0, -3792($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3796($fp)
	lw $t0, -3788($fp)
	lw $t1, -3796($fp)
	add $t0, $t0, $t1
	sw $t0, -3800($fp)
	lw $t0, -3784($fp)
	lw $t1, -3800($fp)
	sw $t0, 0($t1)
	lw $t0, -3800($fp)
	lw $t1, 0($t0)
	sw $t1, -3804($fp)
	li $t0, 26705
	sw $t0, -3808($fp)
	addi $t0, $fp, -744
	sw $t0, -3812($fp)
	li $t0, 1
	sw $t0, -3816($fp)
	lw $t0, -3816($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3820($fp)
	lw $t0, -3812($fp)
	lw $t1, -3820($fp)
	add $t0, $t0, $t1
	sw $t0, -3824($fp)
	lw $t0, -3808($fp)
	lw $t1, -3824($fp)
	sw $t0, 0($t1)
	lw $t0, -3824($fp)
	lw $t1, 0($t0)
	sw $t1, -3828($fp)
	li $t0, 29455
	sw $t0, -3832($fp)
	addi $t0, $fp, -744
	sw $t0, -3836($fp)
	li $t0, 2
	sw $t0, -3840($fp)
	lw $t0, -3840($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3844($fp)
	lw $t0, -3836($fp)
	lw $t1, -3844($fp)
	add $t0, $t0, $t1
	sw $t0, -3848($fp)
	lw $t0, -3832($fp)
	lw $t1, -3848($fp)
	sw $t0, 0($t1)
	lw $t0, -3848($fp)
	lw $t1, 0($t0)
	sw $t1, -3852($fp)
	li $t0, 28929
	sw $t0, -3856($fp)
	addi $t0, $fp, -744
	sw $t0, -3860($fp)
	li $t0, 3
	sw $t0, -3864($fp)
	lw $t0, -3864($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3868($fp)
	lw $t0, -3860($fp)
	lw $t1, -3868($fp)
	add $t0, $t0, $t1
	sw $t0, -3872($fp)
	lw $t0, -3856($fp)
	lw $t1, -3872($fp)
	sw $t0, 0($t1)
	lw $t0, -3872($fp)
	lw $t1, 0($t0)
	sw $t1, -3876($fp)
	li $t0, 34223
	sw $t0, -3880($fp)
	addi $t0, $fp, -744
	sw $t0, -3884($fp)
	li $t0, 4
	sw $t0, -3888($fp)
	lw $t0, -3888($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3892($fp)
	lw $t0, -3884($fp)
	lw $t1, -3892($fp)
	add $t0, $t0, $t1
	sw $t0, -3896($fp)
	lw $t0, -3880($fp)
	lw $t1, -3896($fp)
	sw $t0, 0($t1)
	lw $t0, -3896($fp)
	lw $t1, 0($t0)
	sw $t1, -3900($fp)
	li $t0, 3562
	sw $t0, -3904($fp)
	lw $t0, -3904($fp)
	sw $t0, -3908($fp)
	lw $t0, -3908($fp)
	sw $t0, -3912($fp)
	li $t0, 4521
	sw $t0, -3916($fp)
	lw $t0, -3916($fp)
	sw $t0, -3920($fp)
	lw $t0, -3920($fp)
	sw $t0, -3924($fp)
	li $t0, 58552
	sw $t0, -3928($fp)
	lw $t0, -3928($fp)
	sw $t0, -3932($fp)
	lw $t0, -3932($fp)
	sw $t0, -3936($fp)
	li $t0, 5911
	sw $t0, -3940($fp)
	lw $t0, -3940($fp)
	sw $t0, -3944($fp)
	lw $t0, -3944($fp)
	sw $t0, -3948($fp)
	li $t0, 33150
	sw $t0, -3952($fp)
	lw $t0, -3952($fp)
	sw $t0, -3956($fp)
	lw $t0, -3956($fp)
	sw $t0, -3960($fp)
	li $t0, 43619
	sw $t0, -3964($fp)
	lw $t0, -3964($fp)
	sw $t0, -3968($fp)
	lw $t0, -3968($fp)
	sw $t0, -3972($fp)
	li $t0, 50233
	sw $t0, -3976($fp)
	lw $t1, -3976($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label192
label191:
	li $t0, 0
	sw $t0, -3980($fp)
	lw $t0, -280($fp)
	sw $t0, -3984($fp)
	lw $t1, -3984($fp)
	li $t2, 0
	bne $t1, $t2, label195
	j label194
label194:
	li $t0, 1
	sw $t0, -3980($fp)
label195:
	j label193
label192:
	addi $t0, $fp, -744
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
	lw $t0, -2720($fp)
	sw $t0, -4008($fp)
	lw $t0, -4004($fp)
	lw $t1, -4008($fp)
	mul $t0, $t0, $t1
	sw $t0, -4012($fp)
	li $t0, 0
	sw $t0, -4016($fp)
	lw $t0, -3548($fp)
	sw $t0, -4020($fp)
	li $t0, 0
	lw $t1, -4020($fp)
	sub $t0, $t0, $t1
	sw $t0, -4024($fp)
	lw $t1, -4024($fp)
	li $t2, 0
	bne $t1, $t2, label197
	j label196
label196:
	li $t0, 1
	sw $t0, -4016($fp)
label197:
	lw $t0, -4012($fp)
	lw $t1, -4016($fp)
	mul $t0, $t0, $t1
	sw $t0, -4028($fp)
	lw $ra, -4($fp)
	lw $v0, -4028($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label193:
	li $t0, 0
	sw $t0, -4032($fp)
	addi $t0, $fp, -496
	sw $t0, -4036($fp)
	li $t0, 0
	sw $t0, -4040($fp)
	lw $t0, -3644($fp)
	sw $t0, -4044($fp)
	li $t0, 45349
	sw $t0, -4048($fp)
	lw $t0, -4044($fp)
	lw $t1, -4048($fp)
	sub $t0, $t0, $t1
	sw $t0, -4052($fp)
	lw $t1, -4052($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label202
label202:
	li $t0, 12565
	sw $t0, -4056($fp)
	lw $t1, -4056($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label201
label200:
	li $t0, 1
	sw $t0, -4040($fp)
label201:
	addi $sp, $sp, -4
	lw $t0, -4040($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4060($fp)
	addi $sp, $sp, 8
	li $t0, 3824
	sw $t0, -4064($fp)
	lw $t0, -2660($fp)
	sw $t0, -4068($fp)
	lw $t0, -4064($fp)
	lw $t1, -4068($fp)
	mul $t0, $t0, $t1
	sw $t0, -4072($fp)
	lw $t0, -2636($fp)
	sw $t0, -4076($fp)
	lw $t0, -4072($fp)
	lw $t1, -4076($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4080($fp)
	addi $t0, $fp, -420
	sw $t0, -4084($fp)
	lw $t0, -2696($fp)
	sw $t0, -4088($fp)
	li $t0, 4
	lw $t1, -4088($fp)
	mul $t0, $t0, $t1
	sw $t0, -4092($fp)
	lw $t0, -4092($fp)
	lw $t1, -4084($fp)
	add $t0, $t0, $t1
	sw $t0, -4096($fp)
	lw $t0, -4096($fp)
	lw $t1, 0($t0)
	sw $t1, -4100($fp)
	lw $t0, -2996($fp)
	sw $t0, -4104($fp)
	li $t0, 52214
	sw $t0, -4108($fp)
	lw $t0, -4104($fp)
	lw $t1, -4108($fp)
	mul $t0, $t0, $t1
	sw $t0, -4112($fp)
	addi $sp, $sp, -4
	lw $t0, -4060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4112($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4116($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -4116($fp)
	sub $t0, $t0, $t1
	sw $t0, -4120($fp)
	li $t0, 0
	sw $t0, -4124($fp)
	li $t0, 0
	sw $t0, -4128($fp)
	li $t0, 47514
	sw $t0, -4132($fp)
	lw $t0, -1220($fp)
	sw $t0, -4136($fp)
	lw $t1, -4132($fp)
	lw $t2, -4136($fp)
	bne $t1, $t2, label205
	j label206
label205:
	li $t0, 1
	sw $t0, -4128($fp)
label206:
	lw $t0, -244($fp)
	sw $t0, -4140($fp)
	lw $t1, -4128($fp)
	lw $t2, -4140($fp)
	bne $t1, $t2, label203
	j label204
label203:
	li $t0, 1
	sw $t0, -4124($fp)
label204:
	lw $t0, -3584($fp)
	sw $t0, -4144($fp)
	lw $t0, -4144($fp)
	sw $t0, -3560($fp)
	lw $t0, -3560($fp)
	sw $t0, -4148($fp)
	addi $sp, $sp, -4
	lw $t0, -4120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4148($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4152($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -4152($fp)
	sub $t0, $t0, $t1
	sw $t0, -4156($fp)
	addi $sp, $sp, -4
	lw $t0, -4156($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4160($fp)
	addi $sp, $sp, 8
	li $t0, 4
	lw $t1, -4160($fp)
	mul $t0, $t0, $t1
	sw $t0, -4164($fp)
	lw $t0, -4164($fp)
	lw $t1, -4036($fp)
	add $t0, $t0, $t1
	sw $t0, -4168($fp)
	lw $t0, -4168($fp)
	lw $t1, 0($t0)
	sw $t1, -4172($fp)
	li $t0, 52010
	sw $t0, -4176($fp)
	lw $t0, -3620($fp)
	sw $t0, -4180($fp)
	lw $t0, -4176($fp)
	lw $t1, -4180($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4184($fp)
	li $t0, 0
	lw $t1, -4184($fp)
	sub $t0, $t0, $t1
	sw $t0, -4188($fp)
	lw $t0, -4172($fp)
	lw $t1, -4188($fp)
	sub $t0, $t0, $t1
	sw $t0, -4192($fp)
	addi $t0, $fp, -352
	sw $t0, -4196($fp)
	lw $t0, -2972($fp)
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
	lw $t0, 4($fp)
	sw $t0, -4216($fp)
	lw $t0, -4212($fp)
	lw $t1, -4216($fp)
	mul $t0, $t0, $t1
	sw $t0, -4220($fp)
	lw $t1, -4192($fp)
	lw $t2, -4220($fp)
	bne $t1, $t2, label198
	j label199
label198:
	li $t0, 1
	sw $t0, -4032($fp)
label199:
	li $t0, 62293
	sw $t0, -4224($fp)
	lw $t0, -4224($fp)
	sw $t0, -4228($fp)
	lw $t0, -4228($fp)
	sw $t0, -4232($fp)
	li $t0, 35542
	sw $t0, -4236($fp)
	lw $t0, -4236($fp)
	sw $t0, -4240($fp)
	lw $t0, -4240($fp)
	sw $t0, -4244($fp)
	li $t0, 4759
	sw $t0, -4248($fp)
	lw $t0, -4248($fp)
	sw $t0, -4252($fp)
	lw $t0, -4252($fp)
	sw $t0, -4256($fp)
	li $t0, 17138
	sw $t0, -4260($fp)
	lw $t0, -4260($fp)
	sw $t0, -4264($fp)
	lw $t0, -4264($fp)
	sw $t0, -4268($fp)
	li $t0, 49074
	sw $t0, -4272($fp)
	lw $t0, -4272($fp)
	sw $t0, -4276($fp)
	lw $t0, -4276($fp)
	sw $t0, -4280($fp)
	li $t0, 25502
	sw $t0, -4284($fp)
	lw $t0, -4284($fp)
	sw $t0, -4288($fp)
	lw $t0, -4288($fp)
	sw $t0, -4292($fp)
label207:
	addi $t0, $fp, -32
	sw $t0, -4296($fp)
	lw $t0, -3560($fp)
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
	lw $t0, -3656($fp)
	sw $t0, -4316($fp)
	lw $t0, -4312($fp)
	lw $t1, -4316($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4320($fp)
	lw $t0, -3656($fp)
	sw $t0, -4324($fp)
	lw $t0, -220($fp)
	sw $t0, -4328($fp)
	lw $t0, -4324($fp)
	lw $t1, -4328($fp)
	mul $t0, $t0, $t1
	sw $t0, -4332($fp)
	li $t0, 0
	lw $t1, -4332($fp)
	sub $t0, $t0, $t1
	sw $t0, -4336($fp)
	lw $t0, -4320($fp)
	lw $t1, -4336($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4340($fp)
	lw $t0, -1232($fp)
	sw $t0, -4344($fp)
	lw $t0, -2660($fp)
	sw $t0, -4348($fp)
	lw $t0, -4344($fp)
	lw $t1, -4348($fp)
	add $t0, $t0, $t1
	sw $t0, -4352($fp)
	li $t0, 44503
	sw $t0, -4356($fp)
	lw $t0, -4352($fp)
	lw $t1, -4356($fp)
	add $t0, $t0, $t1
	sw $t0, -4360($fp)
	lw $t0, -4228($fp)
	sw $t0, -4364($fp)
	li $t0, 31301
	sw $t0, -4368($fp)
	lw $t0, -4364($fp)
	lw $t1, -4368($fp)
	mul $t0, $t0, $t1
	sw $t0, -4372($fp)
	lw $t0, -3080($fp)
	sw $t0, -4376($fp)
	lw $t0, -4372($fp)
	lw $t1, -4376($fp)
	mul $t0, $t0, $t1
	sw $t0, -4380($fp)
	li $t0, 52503
	sw $t0, -4384($fp)
	li $t0, 0
	lw $t1, -4384($fp)
	sub $t0, $t0, $t1
	sw $t0, -4388($fp)
	li $t0, 55974
	sw $t0, -4392($fp)
	lw $t0, -1460($fp)
	sw $t0, -4396($fp)
	lw $t0, -4392($fp)
	lw $t1, -4396($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4400($fp)
	addi $sp, $sp, -4
	lw $t0, -4360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4400($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4404($fp)
	addi $sp, $sp, 20
	lw $t0, -4340($fp)
	lw $t1, -4404($fp)
	add $t0, $t0, $t1
	sw $t0, -4408($fp)
	lw $t1, -4408($fp)
	li $t2, 0
	bne $t1, $t2, label208
	j label209
label208:
	li $t0, 20318
	sw $t0, -4412($fp)
	lw $t0, -4412($fp)
	sw $t0, -4416($fp)
	lw $t0, -4416($fp)
	sw $t0, -4420($fp)
	li $t0, 0
	sw $t0, -4424($fp)
	li $t0, 53335
	sw $t0, -4428($fp)
	lw $t1, -4428($fp)
	li $t2, 0
	bne $t1, $t2, label210
	j label212
label212:
	lw $t0, -232($fp)
	sw $t0, -4432($fp)
	lw $t1, -4432($fp)
	li $t2, 0
	bne $t1, $t2, label210
	j label211
label210:
	li $t0, 1
	sw $t0, -4424($fp)
label211:
	li $t0, 0
	sw $t0, -4436($fp)
	li $t0, 49773
	sw $t0, -4440($fp)
	li $t0, 7846
	sw $t0, -4444($fp)
	lw $t1, -4440($fp)
	lw $t2, -4444($fp)
	blt $t1, $t2, label213
	j label215
label215:
	li $t0, 39896
	sw $t0, -4448($fp)
	lw $t1, -4448($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label214
label213:
	li $t0, 1
	sw $t0, -4436($fp)
label214:
	lw $t0, -3656($fp)
	sw $t0, -4452($fp)
	lw $t0, -4452($fp)
	sw $t0, -3500($fp)
	lw $t0, -3500($fp)
	sw $t0, -4456($fp)
	addi $t0, $fp, -632
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
	li $t0, 0
	lw $t1, -4476($fp)
	sub $t0, $t0, $t1
	sw $t0, -4480($fp)
	addi $sp, $sp, -4
	lw $t0, -4424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4480($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4484($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -4488($fp)
	li $t0, 0
	sw $t0, -4492($fp)
	addi $t0, $fp, -384
	sw $t0, -4496($fp)
	li $t0, 0
	sw $t0, -4500($fp)
	lw $t0, -4416($fp)
	sw $t0, -4504($fp)
	li $t0, 12367
	sw $t0, -4508($fp)
	lw $t1, -4504($fp)
	lw $t2, -4508($fp)
	bne $t1, $t2, label220
	j label221
label220:
	li $t0, 1
	sw $t0, -4500($fp)
label221:
	li $t0, 4
	lw $t1, -4500($fp)
	mul $t0, $t0, $t1
	sw $t0, -4512($fp)
	lw $t0, -4512($fp)
	lw $t1, -4496($fp)
	add $t0, $t0, $t1
	sw $t0, -4516($fp)
	lw $t0, -4516($fp)
	lw $t1, 0($t0)
	sw $t1, -4520($fp)
	lw $t1, -4520($fp)
	li $t2, 0
	bne $t1, $t2, label219
	j label218
label218:
	li $t0, 1
	sw $t0, -4492($fp)
label219:
	addi $t0, $fp, -536
	sw $t0, -4524($fp)
	li $t0, 5
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
	li $t0, 0
	lw $t1, -4540($fp)
	sub $t0, $t0, $t1
	sw $t0, -4544($fp)
	lw $t1, -4492($fp)
	lw $t2, -4544($fp)
	blt $t1, $t2, label216
	j label217
label216:
	li $t0, 1
	sw $t0, -4488($fp)
label217:
	li $t0, 45517
	sw $t0, -4548($fp)
	j label207
label209:
	lw $t0, -4228($fp)
	sw $t0, -4552($fp)
	lw $t0, -4552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4240($fp)
	sw $t0, -4556($fp)
	lw $t0, -4556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4252($fp)
	sw $t0, -4560($fp)
	lw $t0, -4560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4264($fp)
	sw $t0, -4564($fp)
	lw $t0, -4564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4276($fp)
	sw $t0, -4568($fp)
	lw $t0, -4568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4288($fp)
	sw $t0, -4572($fp)
	lw $t0, -4572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 10996
	sw $t0, -4576($fp)
	lw $t0, -2720($fp)
	sw $t0, -4580($fp)
	lw $t0, -4576($fp)
	lw $t1, -4580($fp)
	mul $t0, $t0, $t1
	sw $t0, -4584($fp)
	lw $t0, -3632($fp)
	sw $t0, -4588($fp)
	li $t0, 0
	sw $t0, -4592($fp)
	lw $t0, -1964($fp)
	sw $t0, -4596($fp)
	li $t0, 0
	lw $t1, -4596($fp)
	sub $t0, $t0, $t1
	sw $t0, -4600($fp)
	lw $t0, -2480($fp)
	sw $t0, -4604($fp)
	lw $t1, -4600($fp)
	lw $t2, -4604($fp)
	bne $t1, $t2, label222
	j label223
label222:
	li $t0, 1
	sw $t0, -4592($fp)
label223:
	li $t0, 5735
	sw $t0, -4608($fp)
	li $t0, 0
	sw $t0, -4612($fp)
	lw $t0, -3080($fp)
	sw $t0, -4616($fp)
	li $t0, 46853
	sw $t0, -4620($fp)
	lw $t0, -4616($fp)
	lw $t1, -4620($fp)
	add $t0, $t0, $t1
	sw $t0, -4624($fp)
	lw $t0, -3908($fp)
	sw $t0, -4628($fp)
	lw $t1, -4624($fp)
	lw $t2, -4628($fp)
	beq $t1, $t2, label224
	j label225
label224:
	li $t0, 1
	sw $t0, -4612($fp)
label225:
	li $t0, 0
	sw $t0, -4632($fp)
	lw $t0, -3080($fp)
	sw $t0, -4636($fp)
	li $t0, 25922
	sw $t0, -4640($fp)
	lw $t1, -4636($fp)
	lw $t2, -4640($fp)
	bne $t1, $t2, label228
	j label227
label228:
	li $t0, 40112
	sw $t0, -4644($fp)
	lw $t1, -4644($fp)
	li $t2, 0
	bne $t1, $t2, label226
	j label227
label226:
	li $t0, 1
	sw $t0, -4632($fp)
label227:
	li $t0, 43029
	sw $t0, -4648($fp)
	lw $t0, -4648($fp)
	sw $t0, -4276($fp)
	lw $t0, -4276($fp)
	sw $t0, -4652($fp)
	li $t0, 53434
	sw $t0, -4656($fp)
	lw $t0, -4656($fp)
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -4660($fp)
	addi $sp, $sp, -4
	lw $t0, -4612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4660($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4664($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -4664($fp)
	sub $t0, $t0, $t1
	sw $t0, -4668($fp)
	li $t0, 0
	sw $t0, -4672($fp)
	li $t0, 0
	sw $t0, -4676($fp)
	lw $t0, -2672($fp)
	sw $t0, -4680($fp)
	lw $t0, -2672($fp)
	sw $t0, -4684($fp)
	lw $t1, -4680($fp)
	lw $t2, -4684($fp)
	blt $t1, $t2, label231
	j label232
label231:
	li $t0, 1
	sw $t0, -4676($fp)
label232:
	li $t0, 43944
	sw $t0, -4688($fp)
	lw $t1, -4676($fp)
	lw $t2, -4688($fp)
	bge $t1, $t2, label229
	j label230
label229:
	li $t0, 1
	sw $t0, -4672($fp)
label230:
	addi $sp, $sp, -4
	lw $t0, -4592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4672($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4692($fp)
	addi $sp, $sp, 20
	lw $t0, -4588($fp)
	lw $t1, -4692($fp)
	mul $t0, $t0, $t1
	sw $t0, -4696($fp)
	li $t0, 0
	lw $t1, -4696($fp)
	sub $t0, $t0, $t1
	sw $t0, -4700($fp)
	lw $t0, -4584($fp)
	lw $t1, -4700($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4704($fp)
	lw $t0, -3656($fp)
	sw $t0, -4708($fp)
	li $t0, 0
	lw $t1, -4708($fp)
	sub $t0, $t0, $t1
	sw $t0, -4712($fp)
	addi $t0, $fp, -420
	sw $t0, -4716($fp)
	li $t0, 8
	sw $t0, -4720($fp)
	li $t0, 4
	lw $t1, -4720($fp)
	mul $t0, $t0, $t1
	sw $t0, -4724($fp)
	lw $t0, -4724($fp)
	lw $t1, -4716($fp)
	add $t0, $t0, $t1
	sw $t0, -4728($fp)
	lw $t0, -4728($fp)
	lw $t1, 0($t0)
	sw $t1, -4732($fp)
	li $t0, 0
	sw $t0, -4736($fp)
	li $t0, 52677
	sw $t0, -4740($fp)
	li $t0, 0
	lw $t1, -4740($fp)
	sub $t0, $t0, $t1
	sw $t0, -4744($fp)
	lw $t1, -4744($fp)
	li $t2, 0
	bne $t1, $t2, label234
	j label233
label233:
	li $t0, 1
	sw $t0, -4736($fp)
label234:
	addi $sp, $sp, -4
	lw $t0, -4712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4736($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4748($fp)
	addi $sp, $sp, 16
	lw $t0, -4704($fp)
	lw $t1, -4748($fp)
	add $t0, $t0, $t1
	sw $t0, -4752($fp)
	lw $ra, -4($fp)
	lw $v0, -4752($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label235:
	lw $t0, -4240($fp)
	sw $t0, -4756($fp)
	lw $t1, -4756($fp)
	li $t2, 0
	bne $t1, $t2, label236
	j label237
label236:
	li $t0, 22683
	sw $t0, -4760($fp)
	lw $t1, -4760($fp)
	li $t2, 0
	bne $t1, $t2, label241
	j label239
label241:
	li $t0, 0
	sw $t0, -4764($fp)
	li $t0, 63588
	sw $t0, -4768($fp)
	li $t0, 0
	lw $t1, -4768($fp)
	sub $t0, $t0, $t1
	sw $t0, -4772($fp)
	lw $t1, -4772($fp)
	li $t2, 0
	bne $t1, $t2, label242
	j label244
label244:
	li $t0, 10070
	sw $t0, -4776($fp)
	lw $t1, -4776($fp)
	li $t2, 0
	bne $t1, $t2, label242
	j label243
label242:
	li $t0, 1
	sw $t0, -4764($fp)
label243:
	addi $t0, $fp, -592
	sw $t0, -4780($fp)
	li $t0, 0
	sw $t0, -4784($fp)
	li $t0, 4
	lw $t1, -4784($fp)
	mul $t0, $t0, $t1
	sw $t0, -4788($fp)
	lw $t0, -4788($fp)
	lw $t1, -4780($fp)
	add $t0, $t0, $t1
	sw $t0, -4792($fp)
	lw $t0, -4792($fp)
	lw $t1, 0($t0)
	sw $t1, -4796($fp)
	li $t0, 0
	sw $t0, -4800($fp)
	li $t0, 38086
	sw $t0, -4804($fp)
	lw $t1, -4804($fp)
	li $t2, 0
	bne $t1, $t2, label248
	j label247
label248:
	lw $t0, -4252($fp)
	sw $t0, -4808($fp)
	lw $t1, -4808($fp)
	li $t2, 0
	bne $t1, $t2, label245
	j label247
label247:
	lw $t0, -244($fp)
	sw $t0, -4812($fp)
	lw $t1, -4812($fp)
	li $t2, 0
	bne $t1, $t2, label245
	j label246
label245:
	li $t0, 1
	sw $t0, -4800($fp)
label246:
	addi $sp, $sp, -4
	lw $t0, -4764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4800($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4816($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -4816($fp)
	sub $t0, $t0, $t1
	sw $t0, -4820($fp)
	lw $t1, -4820($fp)
	li $t2, 0
	bne $t1, $t2, label238
	j label239
label238:
	li $t0, 58725
	sw $t0, -4824($fp)
	lw $t1, -4824($fp)
	li $t2, 0
	bne $t1, $t2, label249
	j label250
label249:
	addi $t0, $fp, -668
	sw $t0, -4828($fp)
	li $t0, 6
	sw $t0, -4832($fp)
	li $t0, 4
	lw $t1, -4832($fp)
	mul $t0, $t0, $t1
	sw $t0, -4836($fp)
	lw $t0, -4836($fp)
	lw $t1, -4828($fp)
	add $t0, $t0, $t1
	sw $t0, -4840($fp)
	lw $t0, -4840($fp)
	lw $t1, 0($t0)
	sw $t1, -4844($fp)
	li $t0, 0
	sw $t0, -4848($fp)
	li $t0, 0
	sw $t0, -4852($fp)
	lw $t0, -3920($fp)
	sw $t0, -4856($fp)
	li $t0, 8269
	sw $t0, -4860($fp)
	lw $t1, -4856($fp)
	lw $t2, -4860($fp)
	bne $t1, $t2, label254
	j label255
label254:
	li $t0, 1
	sw $t0, -4852($fp)
label255:
	lw $t0, -2468($fp)
	sw $t0, -4864($fp)
	lw $t1, -4852($fp)
	lw $t2, -4864($fp)
	bne $t1, $t2, label252
	j label253
label252:
	li $t0, 1
	sw $t0, -4848($fp)
label253:
	li $t0, 13508
	sw $t0, -4868($fp)
	addi $sp, $sp, -4
	lw $t0, -4868($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4872($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -4872($fp)
	sub $t0, $t0, $t1
	sw $t0, -4876($fp)
	lw $t0, -4264($fp)
	sw $t0, -4880($fp)
	addi $sp, $sp, -4
	lw $t0, -4848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4880($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4884($fp)
	addi $sp, $sp, 16
	lw $t0, -4844($fp)
	lw $t1, -4884($fp)
	mul $t0, $t0, $t1
	sw $t0, -4888($fp)
	lw $ra, -4($fp)
	lw $v0, -4888($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label251
label250:
	li $t0, 0
	sw $t0, -4892($fp)
	addi $t0, $fp, -708
	sw $t0, -4896($fp)
	lw $t0, -1460($fp)
	sw $t0, -4900($fp)
	li $t0, 4
	lw $t1, -4900($fp)
	mul $t0, $t0, $t1
	sw $t0, -4904($fp)
	lw $t0, -4904($fp)
	lw $t1, -4896($fp)
	add $t0, $t0, $t1
	sw $t0, -4908($fp)
	lw $t0, -4908($fp)
	lw $t1, 0($t0)
	sw $t1, -4912($fp)
	li $t0, 34607
	sw $t0, -4916($fp)
	lw $t0, -4916($fp)
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -4920($fp)
	li $t0, 60246
	sw $t0, -4924($fp)
	li $t0, 1
	sw $t0, -4928($fp)
	lw $t0, -4924($fp)
	lw $t1, -4928($fp)
	mul $t0, $t0, $t1
	sw $t0, -4932($fp)
	li $t0, 16115
	sw $t0, -4936($fp)
	lw $t0, -4932($fp)
	lw $t1, -4936($fp)
	mul $t0, $t0, $t1
	sw $t0, -4940($fp)
	addi $sp, $sp, -4
	lw $t0, -4912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4940($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4944($fp)
	addi $sp, $sp, 16
	li $t0, 51081
	sw $t0, -4948($fp)
	lw $t0, -4944($fp)
	lw $t1, -4948($fp)
	add $t0, $t0, $t1
	sw $t0, -4952($fp)
	addi $sp, $sp, -4
	lw $t0, -4952($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4956($fp)
	addi $sp, $sp, 8
	li $t0, 28482
	sw $t0, -4960($fp)
	lw $t0, -4956($fp)
	lw $t1, -4960($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4964($fp)
	li $t0, 1984
	sw $t0, -4968($fp)
	lw $t0, -4964($fp)
	lw $t1, -4968($fp)
	mul $t0, $t0, $t1
	sw $t0, -4972($fp)
	li $t0, 44792
	sw $t0, -4976($fp)
	addi $sp, $sp, -4
	lw $t0, -4976($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4980($fp)
	addi $sp, $sp, 8
	lw $t1, -4972($fp)
	lw $t2, -4980($fp)
	bge $t1, $t2, label256
	j label257
label256:
	li $t0, 1
	sw $t0, -4892($fp)
label257:
label251:
	j label240
label239:
label258:
	li $t0, 0
	sw $t0, -4984($fp)
	li $t0, 0
	sw $t0, -4988($fp)
	li $t0, 0
	sw $t0, -4992($fp)
	lw $t0, -280($fp)
	sw $t0, -4996($fp)
	li $t0, 8463
	sw $t0, -5000($fp)
	lw $t1, -4996($fp)
	lw $t2, -5000($fp)
	bgt $t1, $t2, label266
	j label267
label266:
	li $t0, 1
	sw $t0, -4992($fp)
label267:
	li $t0, 12980
	sw $t0, -5004($fp)
	lw $t1, -4992($fp)
	lw $t2, -5004($fp)
	ble $t1, $t2, label264
	j label265
label264:
	li $t0, 1
	sw $t0, -4988($fp)
label265:
	li $t0, 23200
	sw $t0, -5008($fp)
	li $t0, 61897
	sw $t0, -5012($fp)
	lw $t0, -5008($fp)
	lw $t1, -5012($fp)
	sub $t0, $t0, $t1
	sw $t0, -5016($fp)
	lw $t1, -4988($fp)
	lw $t2, -5016($fp)
	blt $t1, $t2, label262
	j label263
label262:
	li $t0, 1
	sw $t0, -4984($fp)
label263:
	li $t0, 56009
	sw $t0, -5020($fp)
	lw $t1, -4984($fp)
	lw $t2, -5020($fp)
	bne $t1, $t2, label259
	j label261
label261:
	li $t0, 37326
	sw $t0, -5024($fp)
	lw $t0, -3584($fp)
	sw $t0, -5028($fp)
	li $t0, 0
	sw $t0, -5032($fp)
	li $t0, 49123
	sw $t0, -5036($fp)
	li $t0, 36473
	sw $t0, -5040($fp)
	lw $t1, -5036($fp)
	lw $t2, -5040($fp)
	beq $t1, $t2, label270
	j label269
label270:
	lw $t0, -1172($fp)
	sw $t0, -5044($fp)
	lw $t1, -5044($fp)
	li $t2, 0
	bne $t1, $t2, label268
	j label269
label268:
	li $t0, 1
	sw $t0, -5032($fp)
label269:
	addi $sp, $sp, -4
	lw $t0, -5024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5032($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5048($fp)
	addi $sp, $sp, 16
	lw $t1, -5048($fp)
	li $t2, 0
	bne $t1, $t2, label259
	j label260
label259:
	addi $t0, $fp, -32
	sw $t0, -5052($fp)
	li $t0, 0
	sw $t0, -5056($fp)
	li $t0, 0
	sw $t0, -5060($fp)
	li $t0, 54858
	sw $t0, -5064($fp)
	lw $t1, -5064($fp)
	li $t2, 0
	bne $t1, $t2, label275
	j label274
label274:
	li $t0, 1
	sw $t0, -5060($fp)
label275:
	li $t0, 23614
	sw $t0, -5068($fp)
	lw $t0, -5060($fp)
	lw $t1, -5068($fp)
	sub $t0, $t0, $t1
	sw $t0, -5072($fp)
	lw $t1, -5072($fp)
	li $t2, 0
	bne $t1, $t2, label273
	j label272
label273:
	lw $t0, -4240($fp)
	sw $t0, -5076($fp)
	lw $t1, -5076($fp)
	li $t2, 0
	bne $t1, $t2, label272
	j label271
label271:
	li $t0, 1
	sw $t0, -5056($fp)
label272:
	li $t0, 4
	lw $t1, -5056($fp)
	mul $t0, $t0, $t1
	sw $t0, -5080($fp)
	lw $t0, -5080($fp)
	lw $t1, -5052($fp)
	add $t0, $t0, $t1
	sw $t0, -5084($fp)
	lw $t0, -5084($fp)
	lw $t1, 0($t0)
	sw $t1, -5088($fp)
	j label258
label260:
label240:
	j label235
label237:
	li $t0, 0
	sw $t0, -5092($fp)
	li $t0, 5117
	sw $t0, -5096($fp)
	lw $t1, -5096($fp)
	li $t2, 0
	bne $t1, $t2, label280
	j label279
label279:
	li $t0, 1
	sw $t0, -5092($fp)
label280:
	lw $t0, -5092($fp)
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -5100($fp)
	lw $t1, -5100($fp)
	li $t2, 0
	bne $t1, $t2, label276
	j label277
label276:
	li $t0, 57351
	sw $t0, -5104($fp)
	lw $t0, -5104($fp)
	sw $t0, -4288($fp)
	lw $t0, -4288($fp)
	sw $t0, -5108($fp)
	lw $ra, -4($fp)
	lw $v0, -5108($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label277:
	li $t0, 46298
	sw $t0, -5112($fp)
	lw $t0, -5112($fp)
	sw $t0, -5116($fp)
	lw $t0, -5116($fp)
	sw $t0, -5120($fp)
	li $t0, 43203
	sw $t0, -5124($fp)
	lw $t0, -5124($fp)
	sw $t0, -5128($fp)
	lw $t0, -5128($fp)
	sw $t0, -5132($fp)
	li $t0, 0
	sw $t0, -5136($fp)
	lw $t0, -268($fp)
	sw $t0, -5140($fp)
	lw $t1, -5140($fp)
	li $t2, 0
	bne $t1, $t2, label287
	j label286
label286:
	li $t0, 1
	sw $t0, -5136($fp)
label287:
	li $t0, 11447
	sw $t0, -5144($fp)
	lw $t0, -5136($fp)
	lw $t1, -5144($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5148($fp)
	addi $t0, $fp, -708
	sw $t0, -5152($fp)
	li $t0, 1
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
	lw $t1, -5148($fp)
	lw $t2, -5168($fp)
	beq $t1, $t2, label285
	j label284
label285:
	lw $t0, -3656($fp)
	sw $t0, -5172($fp)
	li $t0, 0
	lw $t1, -5172($fp)
	sub $t0, $t0, $t1
	sw $t0, -5176($fp)
	lw $t1, -5176($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label284
label284:
	li $t0, 21517
	sw $t0, -5180($fp)
	lw $t1, -5180($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label282
label281:
	li $t0, 0
	sw $t0, -5184($fp)
	li $t0, 13341
	sw $t0, -5188($fp)
	lw $t0, -5188($fp)
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	sw $t0, -5192($fp)
	li $t0, 0
	sw $t0, -5196($fp)
	li $t0, 59217
	sw $t0, -5200($fp)
	lw $t1, -5200($fp)
	li $t2, 0
	bne $t1, $t2, label291
	j label290
label290:
	li $t0, 1
	sw $t0, -5196($fp)
label291:
	lw $t0, -3668($fp)
	sw $t0, -5204($fp)
	lw $t0, -5196($fp)
	lw $t1, -5204($fp)
	add $t0, $t0, $t1
	sw $t0, -5208($fp)
	li $t0, 5072
	sw $t0, -5212($fp)
	li $t0, 10554
	sw $t0, -5216($fp)
	lw $t0, -5212($fp)
	lw $t1, -5216($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5220($fp)
	li $t0, 0
	lw $t1, -5220($fp)
	sub $t0, $t0, $t1
	sw $t0, -5224($fp)
	li $t0, 45709
	sw $t0, -5228($fp)
	li $t0, 0
	lw $t1, -5228($fp)
	sub $t0, $t0, $t1
	sw $t0, -5232($fp)
	addi $sp, $sp, -4
	lw $t0, -5192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5232($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5236($fp)
	addi $sp, $sp, 20
	lw $t0, -2636($fp)
	sw $t0, -5240($fp)
	lw $t0, -2636($fp)
	sw $t0, -5244($fp)
	lw $t0, -5240($fp)
	lw $t1, -5244($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5248($fp)
	addi $t0, $fp, -456
	sw $t0, -5252($fp)
	lw $t0, -2240($fp)
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
	lw $t0, -5248($fp)
	lw $t1, -5268($fp)
	mul $t0, $t0, $t1
	sw $t0, -5272($fp)
	lw $t1, -5236($fp)
	lw $t2, -5272($fp)
	ble $t1, $t2, label288
	j label289
label288:
	li $t0, 1
	sw $t0, -5184($fp)
label289:
	lw $ra, -4($fp)
	lw $v0, -5184($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label283
label282:
	li $t0, 5265
	sw $t0, -5276($fp)
label283:
	lw $t0, -2720($fp)
	sw $t0, -5280($fp)
	lw $t0, -3596($fp)
	sw $t0, -5284($fp)
	lw $t1, -5280($fp)
	lw $t2, -5284($fp)
	bge $t1, $t2, label292
	j label293
label292:
	lw $t0, -3584($fp)
	sw $t0, -5288($fp)
	li $t0, 0
	sw $t0, -5292($fp)
	li $t0, 0
	sw $t0, -5296($fp)
	lw $t0, -2240($fp)
	sw $t0, -5300($fp)
	li $t0, 0
	lw $t1, -5300($fp)
	sub $t0, $t0, $t1
	sw $t0, -5304($fp)
	lw $t1, -5304($fp)
	li $t2, 0
	bne $t1, $t2, label301
	j label300
label300:
	li $t0, 1
	sw $t0, -5296($fp)
label301:
	li $t0, 57939
	sw $t0, -5308($fp)
	lw $t0, -3920($fp)
	sw $t0, -5312($fp)
	lw $t0, -5308($fp)
	lw $t1, -5312($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5316($fp)
	addi $t0, $fp, -496
	sw $t0, -5320($fp)
	lw $t0, -1172($fp)
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
	li $t0, 42508
	sw $t0, -5340($fp)
	lw $t0, -5336($fp)
	lw $t1, -5340($fp)
	mul $t0, $t0, $t1
	sw $t0, -5344($fp)
	li $t0, 39872
	sw $t0, -5348($fp)
	lw $t0, -292($fp)
	sw $t0, -5352($fp)
	lw $t0, -5348($fp)
	lw $t1, -5352($fp)
	mul $t0, $t0, $t1
	sw $t0, -5356($fp)
	li $t0, 0
	lw $t1, -5356($fp)
	sub $t0, $t0, $t1
	sw $t0, -5360($fp)
	addi $sp, $sp, -4
	lw $t0, -5316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5360($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5364($fp)
	addi $sp, $sp, 16
	lw $t0, -1928($fp)
	sw $t0, -5368($fp)
	lw $t0, -5364($fp)
	lw $t1, -5368($fp)
	sub $t0, $t0, $t1
	sw $t0, -5372($fp)
	li $t0, 0
	sw $t0, -5376($fp)
	lw $t0, -5128($fp)
	sw $t0, -5380($fp)
	li $t0, 56963
	sw $t0, -5384($fp)
	lw $t0, -5380($fp)
	lw $t1, -5384($fp)
	mul $t0, $t0, $t1
	sw $t0, -5388($fp)
	li $t0, 29457
	sw $t0, -5392($fp)
	lw $t1, -5388($fp)
	lw $t2, -5392($fp)
	beq $t1, $t2, label302
	j label303
label302:
	li $t0, 1
	sw $t0, -5376($fp)
label303:
	lw $t0, -232($fp)
	sw $t0, -5396($fp)
	addi $sp, $sp, -4
	lw $t0, -5296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5396($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5400($fp)
	addi $sp, $sp, 20
	li $t0, 41856
	sw $t0, -5404($fp)
	lw $t0, -5400($fp)
	lw $t1, -5404($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5408($fp)
	li $t0, 21764
	sw $t0, -5412($fp)
	li $t0, 0
	lw $t1, -5412($fp)
	sub $t0, $t0, $t1
	sw $t0, -5416($fp)
	lw $t1, -5408($fp)
	lw $t2, -5416($fp)
	bgt $t1, $t2, label298
	j label299
label298:
	li $t0, 1
	sw $t0, -5292($fp)
label299:
	lw $t1, -5288($fp)
	lw $t2, -5292($fp)
	beq $t1, $t2, label295
	j label296
label295:
	li $t0, 0
	sw $t0, -5420($fp)
	lw $t0, -5116($fp)
	sw $t0, -5424($fp)
	lw $t1, -5424($fp)
	li $t2, 0
	bne $t1, $t2, label307
	j label306
label307:
	lw $t0, -2660($fp)
	sw $t0, -5428($fp)
	lw $t1, -5428($fp)
	li $t2, 0
	bne $t1, $t2, label304
	j label306
label306:
	lw $t0, -2972($fp)
	sw $t0, -5432($fp)
	lw $t1, -5432($fp)
	li $t2, 0
	bne $t1, $t2, label304
	j label305
label304:
	li $t0, 1
	sw $t0, -5420($fp)
label305:
	li $t0, 0
	sw $t0, -5436($fp)
	lw $t0, -3584($fp)
	sw $t0, -5440($fp)
	lw $t1, -5440($fp)
	li $t2, 0
	bne $t1, $t2, label311
	j label309
label311:
	lw $t0, -2648($fp)
	sw $t0, -5444($fp)
	lw $t1, -5444($fp)
	li $t2, 0
	bne $t1, $t2, label310
	j label309
label310:
	li $t0, 44964
	sw $t0, -5448($fp)
	lw $t1, -5448($fp)
	li $t2, 0
	bne $t1, $t2, label308
	j label309
label308:
	li $t0, 1
	sw $t0, -5436($fp)
label309:
	li $t0, 0
	sw $t0, -5452($fp)
	li $t0, 867
	sw $t0, -5456($fp)
	lw $t0, -3560($fp)
	sw $t0, -5460($fp)
	lw $t0, -5456($fp)
	lw $t1, -5460($fp)
	sub $t0, $t0, $t1
	sw $t0, -5464($fp)
	lw $t1, -5464($fp)
	li $t2, 0
	bne $t1, $t2, label312
	j label314
label314:
	li $t0, 54836
	sw $t0, -5468($fp)
	lw $t1, -5468($fp)
	li $t2, 0
	bne $t1, $t2, label312
	j label313
label312:
	li $t0, 1
	sw $t0, -5452($fp)
label313:
	lw $t0, -2444($fp)
	sw $t0, -5472($fp)
	addi $sp, $sp, -4
	lw $t0, -5420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5472($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5476($fp)
	addi $sp, $sp, 20
	lw $t0, -5476($fp)
	sw $t0, -2708($fp)
	lw $t0, -2708($fp)
	sw $t0, -5480($fp)
	j label297
label296:
	li $t0, 0
	sw $t0, -5484($fp)
	li $t0, 0
	sw $t0, -5488($fp)
	lw $t0, -3608($fp)
	sw $t0, -5492($fp)
	li $t0, 33702
	sw $t0, -5496($fp)
	lw $t1, -5492($fp)
	lw $t2, -5496($fp)
	beq $t1, $t2, label318
	j label320
label320:
	li $t0, 17099
	sw $t0, -5500($fp)
	lw $t1, -5500($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label319
label318:
	li $t0, 1
	sw $t0, -5488($fp)
label319:
	lw $t0, -244($fp)
	sw $t0, -5504($fp)
	lw $t0, -5504($fp)
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -5508($fp)
	li $t0, 0
	sw $t0, -5512($fp)
	li $t0, 28551
	sw $t0, -5516($fp)
	lw $t0, -2708($fp)
	sw $t0, -5520($fp)
	lw $t1, -5516($fp)
	lw $t2, -5520($fp)
	ble $t1, $t2, label321
	j label322
label321:
	li $t0, 1
	sw $t0, -5512($fp)
label322:
	li $t0, 0
	sw $t0, -5524($fp)
	lw $t0, -1232($fp)
	sw $t0, -5528($fp)
	li $t0, 62764
	sw $t0, -5532($fp)
	lw $t0, -5528($fp)
	lw $t1, -5532($fp)
	sub $t0, $t0, $t1
	sw $t0, -5536($fp)
	lw $t1, -5536($fp)
	li $t2, 0
	bne $t1, $t2, label325
	j label324
label325:
	li $t0, 45309
	sw $t0, -5540($fp)
	lw $t1, -5540($fp)
	li $t2, 0
	bne $t1, $t2, label323
	j label324
label323:
	li $t0, 1
	sw $t0, -5524($fp)
label324:
	addi $sp, $sp, -4
	lw $t0, -5488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5524($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5544($fp)
	addi $sp, $sp, 20
	lw $t1, -5544($fp)
	li $t2, 0
	bne $t1, $t2, label317
	j label316
label317:
	addi $t0, $fp, -708
	sw $t0, -5548($fp)
	li $t0, 2
	sw $t0, -5552($fp)
	li $t0, 4
	lw $t1, -5552($fp)
	mul $t0, $t0, $t1
	sw $t0, -5556($fp)
	lw $t0, -5556($fp)
	lw $t1, -5548($fp)
	add $t0, $t0, $t1
	sw $t0, -5560($fp)
	lw $t0, -5560($fp)
	lw $t1, 0($t0)
	sw $t1, -5564($fp)
	li $t0, 22216
	sw $t0, -5568($fp)
	lw $t0, -5564($fp)
	lw $t1, -5568($fp)
	mul $t0, $t0, $t1
	sw $t0, -5572($fp)
	li $t0, 9689
	sw $t0, -5576($fp)
	lw $t0, -5572($fp)
	lw $t1, -5576($fp)
	mul $t0, $t0, $t1
	sw $t0, -5580($fp)
	lw $t1, -5580($fp)
	li $t2, 0
	bne $t1, $t2, label315
	j label316
label315:
	li $t0, 1
	sw $t0, -5484($fp)
label316:
label297:
label293:
	addi $t0, $fp, -592
	sw $t0, -5584($fp)
	li $t0, 0
	sw $t0, -5588($fp)
	li $t0, 38078
	sw $t0, -5592($fp)
	lw $t1, -5592($fp)
	li $t2, 0
	bne $t1, $t2, label328
	j label327
label328:
	lw $t0, -1172($fp)
	sw $t0, -5596($fp)
	lw $t1, -5596($fp)
	li $t2, 0
	bne $t1, $t2, label326
	j label327
label326:
	li $t0, 1
	sw $t0, -5588($fp)
label327:
	li $t0, 4
	lw $t1, -5588($fp)
	mul $t0, $t0, $t1
	sw $t0, -5600($fp)
	lw $t0, -5600($fp)
	lw $t1, -5584($fp)
	add $t0, $t0, $t1
	sw $t0, -5604($fp)
	lw $t0, -5604($fp)
	lw $t1, 0($t0)
	sw $t1, -5608($fp)
	lw $t0, -5608($fp)
	sw $t0, -3080($fp)
	lw $t0, -3080($fp)
	sw $t0, -5612($fp)
	addi $t0, $fp, -592
	sw $t0, -5616($fp)
	li $t0, 2
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
	addi $t0, $fp, -536
	sw $t0, -5636($fp)
	lw $t0, -3524($fp)
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
	lw $t0, -5632($fp)
	lw $t1, -5652($fp)
	mul $t0, $t0, $t1
	sw $t0, -5656($fp)
	li $t0, 25062
	sw $t0, -5660($fp)
	lw $t0, -5656($fp)
	lw $t1, -5660($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5664($fp)
	lw $t0, -1232($fp)
	sw $t0, -5668($fp)
	li $t0, 41138
	sw $t0, -5672($fp)
	lw $t0, -5668($fp)
	lw $t1, -5672($fp)
	mul $t0, $t0, $t1
	sw $t0, -5676($fp)
	lw $t1, -5664($fp)
	lw $t2, -5676($fp)
	bgt $t1, $t2, label329
	j label330
label329:
	li $t0, 0
	sw $t0, -5680($fp)
	lw $t0, -2708($fp)
	sw $t0, -5684($fp)
	lw $t0, -1976($fp)
	sw $t0, -5688($fp)
	lw $t1, -5684($fp)
	lw $t2, -5688($fp)
	bgt $t1, $t2, label332
	j label333
label332:
	li $t0, 1
	sw $t0, -5680($fp)
label333:
	lw $ra, -4($fp)
	lw $v0, -5680($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label331
label330:
	addi $t0, $fp, -496
	sw $t0, -5692($fp)
	li $t0, 0
	sw $t0, -5696($fp)
	li $t0, 0
	sw $t0, -5700($fp)
	addi $t0, $fp, -32
	sw $t0, -5704($fp)
	lw $t0, -2480($fp)
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
	li $t0, 42653
	sw $t0, -5724($fp)
	lw $t1, -5720($fp)
	lw $t2, -5724($fp)
	blt $t1, $t2, label339
	j label340
label339:
	li $t0, 1
	sw $t0, -5700($fp)
label340:
	li $t0, 0
	sw $t0, -5728($fp)
	li $t0, 5236
	sw $t0, -5732($fp)
	lw $t1, -5732($fp)
	li $t2, 0
	bne $t1, $t2, label342
	j label341
label341:
	li $t0, 1
	sw $t0, -5728($fp)
label342:
	lw $t1, -5700($fp)
	lw $t2, -5728($fp)
	ble $t1, $t2, label337
	j label338
label337:
	li $t0, 1
	sw $t0, -5696($fp)
label338:
	li $t0, 4
	lw $t1, -5696($fp)
	mul $t0, $t0, $t1
	sw $t0, -5736($fp)
	lw $t0, -5736($fp)
	lw $t1, -5692($fp)
	add $t0, $t0, $t1
	sw $t0, -5740($fp)
	lw $t0, -5740($fp)
	lw $t1, 0($t0)
	sw $t1, -5744($fp)
	lw $t1, -5744($fp)
	li $t2, 0
	bne $t1, $t2, label334
	j label335
label334:
	li $t0, 0
	sw $t0, -5748($fp)
	li $t0, 0
	sw $t0, -5752($fp)
	lw $t0, -3968($fp)
	sw $t0, -5756($fp)
	li $t0, 46210
	sw $t0, -5760($fp)
	lw $t0, -5756($fp)
	lw $t1, -5760($fp)
	add $t0, $t0, $t1
	sw $t0, -5764($fp)
	li $t0, 53208
	sw $t0, -5768($fp)
	lw $t1, -5764($fp)
	lw $t2, -5768($fp)
	ble $t1, $t2, label349
	j label350
label349:
	li $t0, 1
	sw $t0, -5752($fp)
label350:
	lw $t0, -1232($fp)
	sw $t0, -5772($fp)
	li $t0, 0
	lw $t1, -5772($fp)
	sub $t0, $t0, $t1
	sw $t0, -5776($fp)
	lw $t1, -5752($fp)
	lw $t2, -5776($fp)
	bge $t1, $t2, label347
	j label348
label347:
	li $t0, 1
	sw $t0, -5748($fp)
label348:
	lw $t0, -1232($fp)
	sw $t0, -5780($fp)
	li $t0, 64453
	sw $t0, -5784($fp)
	lw $t0, -5780($fp)
	lw $t1, -5784($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5788($fp)
	lw $t0, -1232($fp)
	sw $t0, -5792($fp)
	lw $t0, -5788($fp)
	lw $t1, -5792($fp)
	sub $t0, $t0, $t1
	sw $t0, -5796($fp)
	lw $t1, -5748($fp)
	lw $t2, -5796($fp)
	beq $t1, $t2, label346
	j label344
label346:
	addi $t0, $fp, -352
	sw $t0, -5800($fp)
	lw $t0, -1232($fp)
	sw $t0, -5804($fp)
	li $t0, 4
	lw $t1, -5804($fp)
	mul $t0, $t0, $t1
	sw $t0, -5808($fp)
	lw $t0, -5808($fp)
	lw $t1, -5800($fp)
	add $t0, $t0, $t1
	sw $t0, -5812($fp)
	lw $t0, -5812($fp)
	lw $t1, 0($t0)
	sw $t1, -5816($fp)
	li $t0, 0
	lw $t1, -5816($fp)
	sub $t0, $t0, $t1
	sw $t0, -5820($fp)
	lw $t1, -5820($fp)
	li $t2, 0
	bne $t1, $t2, label344
	j label343
label343:
	lw $t0, -3632($fp)
	sw $t0, -5824($fp)
	li $t0, 59551
	sw $t0, -5828($fp)
	lw $t0, -5824($fp)
	lw $t1, -5828($fp)
	mul $t0, $t0, $t1
	sw $t0, -5832($fp)
	li $t0, 0
	sw $t0, -5836($fp)
	lw $t0, -244($fp)
	sw $t0, -5840($fp)
	lw $t1, -5840($fp)
	li $t2, 0
	bne $t1, $t2, label356
	j label355
label355:
	li $t0, 1
	sw $t0, -5836($fp)
label356:
	lw $t0, -5832($fp)
	lw $t1, -5836($fp)
	mul $t0, $t0, $t1
	sw $t0, -5844($fp)
	addi $t0, $fp, -640
	sw $t0, -5848($fp)
	lw $t0, -268($fp)
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
	li $t0, 0
	lw $t1, -5864($fp)
	sub $t0, $t0, $t1
	sw $t0, -5868($fp)
	lw $t1, -5844($fp)
	lw $t2, -5868($fp)
	blt $t1, $t2, label354
	j label352
label354:
	li $t0, 58473
	sw $t0, -5872($fp)
	lw $t1, -5872($fp)
	li $t2, 0
	bne $t1, $t2, label351
	j label352
label351:
	li $t0, 55880
	sw $t0, -5876($fp)
	li $t0, 0
	lw $t1, -5876($fp)
	sub $t0, $t0, $t1
	sw $t0, -5880($fp)
	addi $t0, $fp, -668
	sw $t0, -5884($fp)
	lw $t0, -1232($fp)
	sw $t0, -5888($fp)
	li $t0, 4
	lw $t1, -5888($fp)
	mul $t0, $t0, $t1
	sw $t0, -5892($fp)
	lw $t0, -5892($fp)
	lw $t1, -5884($fp)
	add $t0, $t0, $t1
	sw $t0, -5896($fp)
	lw $t0, -5896($fp)
	lw $t1, 0($t0)
	sw $t1, -5900($fp)
	lw $t0, -5880($fp)
	lw $t1, -5900($fp)
	sub $t0, $t0, $t1
	sw $t0, -5904($fp)
	lw $t0, -2444($fp)
	sw $t0, -5908($fp)
	li $t0, 23472
	sw $t0, -5912($fp)
	li $t0, 0
	lw $t1, -5912($fp)
	sub $t0, $t0, $t1
	sw $t0, -5916($fp)
	lw $t0, -5908($fp)
	lw $t1, -5916($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5920($fp)
	lw $t0, -5904($fp)
	lw $t1, -5920($fp)
	add $t0, $t0, $t1
	sw $t0, -5924($fp)
	lw $ra, -4($fp)
	lw $v0, -5924($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label353
label352:
label357:
	li $t0, 32809
	sw $t0, -5928($fp)
	lw $t1, -5928($fp)
	li $t2, 0
	bne $t1, $t2, label360
	j label361
label361:
	li $t0, 0
	sw $t0, -5932($fp)
	li $t0, 32852
	sw $t0, -5936($fp)
	lw $t1, -5936($fp)
	li $t2, 0
	bne $t1, $t2, label363
	j label362
label362:
	li $t0, 1
	sw $t0, -5932($fp)
label363:
	li $t0, 15876
	sw $t0, -5940($fp)
	lw $t0, -5932($fp)
	lw $t1, -5940($fp)
	mul $t0, $t0, $t1
	sw $t0, -5944($fp)
	lw $t1, -5944($fp)
	li $t2, 0
	bne $t1, $t2, label358
	j label360
label360:
	lw $t0, -3668($fp)
	sw $t0, -5948($fp)
	li $t0, 0
	lw $t1, -5948($fp)
	sub $t0, $t0, $t1
	sw $t0, -5952($fp)
	lw $t1, -5952($fp)
	li $t2, 0
	bne $t1, $t2, label358
	j label359
label358:
	li $t0, 9129
	sw $t0, -5980($fp)
	lw $t0, -5980($fp)
	sw $t0, -5984($fp)
	lw $t0, -5984($fp)
	sw $t0, -5988($fp)
	li $t0, 54616
	sw $t0, -5992($fp)
	lw $t0, -5992($fp)
	sw $t0, -5996($fp)
	lw $t0, -5996($fp)
	sw $t0, -6000($fp)
	li $t0, 16743
	sw $t0, -6004($fp)
	lw $t0, -6004($fp)
	sw $t0, -6008($fp)
	lw $t0, -6008($fp)
	sw $t0, -6012($fp)
	li $t0, 63965
	sw $t0, -6016($fp)
	addi $t0, $fp, -5976
	sw $t0, -6020($fp)
	li $t0, 0
	sw $t0, -6024($fp)
	lw $t0, -6024($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6028($fp)
	lw $t0, -6020($fp)
	lw $t1, -6028($fp)
	add $t0, $t0, $t1
	sw $t0, -6032($fp)
	lw $t0, -6016($fp)
	lw $t1, -6032($fp)
	sw $t0, 0($t1)
	lw $t0, -6032($fp)
	lw $t1, 0($t0)
	sw $t1, -6036($fp)
	li $t0, 34045
	sw $t0, -6040($fp)
	addi $t0, $fp, -5976
	sw $t0, -6044($fp)
	li $t0, 1
	sw $t0, -6048($fp)
	lw $t0, -6048($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6052($fp)
	lw $t0, -6044($fp)
	lw $t1, -6052($fp)
	add $t0, $t0, $t1
	sw $t0, -6056($fp)
	lw $t0, -6040($fp)
	lw $t1, -6056($fp)
	sw $t0, 0($t1)
	lw $t0, -6056($fp)
	lw $t1, 0($t0)
	sw $t1, -6060($fp)
	li $t0, 13971
	sw $t0, -6064($fp)
	addi $t0, $fp, -5976
	sw $t0, -6068($fp)
	li $t0, 2
	sw $t0, -6072($fp)
	lw $t0, -6072($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6076($fp)
	lw $t0, -6068($fp)
	lw $t1, -6076($fp)
	add $t0, $t0, $t1
	sw $t0, -6080($fp)
	lw $t0, -6064($fp)
	lw $t1, -6080($fp)
	sw $t0, 0($t1)
	lw $t0, -6080($fp)
	lw $t1, 0($t0)
	sw $t1, -6084($fp)
	li $t0, 43738
	sw $t0, -6088($fp)
	addi $t0, $fp, -5976
	sw $t0, -6092($fp)
	li $t0, 3
	sw $t0, -6096($fp)
	lw $t0, -6096($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6100($fp)
	lw $t0, -6092($fp)
	lw $t1, -6100($fp)
	add $t0, $t0, $t1
	sw $t0, -6104($fp)
	lw $t0, -6088($fp)
	lw $t1, -6104($fp)
	sw $t0, 0($t1)
	lw $t0, -6104($fp)
	lw $t1, 0($t0)
	sw $t1, -6108($fp)
	li $t0, 62596
	sw $t0, -6112($fp)
	addi $t0, $fp, -5976
	sw $t0, -6116($fp)
	li $t0, 4
	sw $t0, -6120($fp)
	lw $t0, -6120($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6124($fp)
	lw $t0, -6116($fp)
	lw $t1, -6124($fp)
	add $t0, $t0, $t1
	sw $t0, -6128($fp)
	lw $t0, -6112($fp)
	lw $t1, -6128($fp)
	sw $t0, 0($t1)
	lw $t0, -6128($fp)
	lw $t1, 0($t0)
	sw $t1, -6132($fp)
	li $t0, 47673
	sw $t0, -6136($fp)
	addi $t0, $fp, -5976
	sw $t0, -6140($fp)
	li $t0, 5
	sw $t0, -6144($fp)
	lw $t0, -6144($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6148($fp)
	lw $t0, -6140($fp)
	lw $t1, -6148($fp)
	add $t0, $t0, $t1
	sw $t0, -6152($fp)
	lw $t0, -6136($fp)
	lw $t1, -6152($fp)
	sw $t0, 0($t1)
	lw $t0, -6152($fp)
	lw $t1, 0($t0)
	sw $t1, -6156($fp)
	li $t0, 0
	sw $t0, -6160($fp)
	li $t0, 60837
	sw $t0, -6164($fp)
	lw $t1, -6164($fp)
	li $t2, 0
	bne $t1, $t2, label364
	j label366
label366:
	li $t0, 0
	sw $t0, -6168($fp)
	li $t0, 14934
	sw $t0, -6172($fp)
	li $t0, 39454
	sw $t0, -6176($fp)
	lw $t1, -6172($fp)
	lw $t2, -6176($fp)
	bgt $t1, $t2, label367
	j label368
label367:
	li $t0, 1
	sw $t0, -6168($fp)
label368:
	addi $t0, $fp, -724
	sw $t0, -6180($fp)
	lw $t0, -208($fp)
	sw $t0, -6184($fp)
	li $t0, 4
	lw $t1, -6184($fp)
	mul $t0, $t0, $t1
	sw $t0, -6188($fp)
	lw $t0, -6188($fp)
	lw $t1, -6180($fp)
	add $t0, $t0, $t1
	sw $t0, -6192($fp)
	lw $t0, -6192($fp)
	lw $t1, 0($t0)
	sw $t1, -6196($fp)
	lw $t1, -6168($fp)
	lw $t2, -6196($fp)
	beq $t1, $t2, label364
	j label365
label364:
	li $t0, 1
	sw $t0, -6160($fp)
label365:
	li $t0, 0
	sw $t0, -6200($fp)
	li $t0, 0
	sw $t0, -6204($fp)
	addi $t0, $fp, -592
	sw $t0, -6208($fp)
	lw $t0, -3572($fp)
	sw $t0, -6212($fp)
	li $t0, 4
	lw $t1, -6212($fp)
	mul $t0, $t0, $t1
	sw $t0, -6216($fp)
	lw $t0, -6216($fp)
	lw $t1, -6208($fp)
	add $t0, $t0, $t1
	sw $t0, -6220($fp)
	lw $t0, -6220($fp)
	lw $t1, 0($t0)
	sw $t1, -6224($fp)
	lw $t1, -6224($fp)
	li $t2, 0
	bne $t1, $t2, label371
	j label373
label373:
	lw $t0, -1940($fp)
	sw $t0, -6228($fp)
	lw $t1, -6228($fp)
	li $t2, 0
	bne $t1, $t2, label371
	j label372
label371:
	li $t0, 1
	sw $t0, -6204($fp)
label372:
	li $t0, 0
	sw $t0, -6232($fp)
	li $t0, 0
	sw $t0, -6236($fp)
	lw $t0, -1964($fp)
	sw $t0, -6240($fp)
	li $t0, 11996
	sw $t0, -6244($fp)
	lw $t0, -6240($fp)
	lw $t1, -6244($fp)
	sub $t0, $t0, $t1
	sw $t0, -6248($fp)
	lw $t0, -220($fp)
	sw $t0, -6252($fp)
	lw $t1, -6248($fp)
	lw $t2, -6252($fp)
	bne $t1, $t2, label376
	j label377
label376:
	li $t0, 1
	sw $t0, -6236($fp)
label377:
	lw $t0, -1460($fp)
	sw $t0, -6256($fp)
	lw $t0, -6256($fp)
	sw $t0, -5984($fp)
	lw $t0, -5984($fp)
	sw $t0, -6260($fp)
	li $t0, 24624
	sw $t0, -6264($fp)
	addi $sp, $sp, -4
	lw $t0, -6264($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6268($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -6236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6268($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6272($fp)
	addi $sp, $sp, 16
	li $t0, 17400
	sw $t0, -6276($fp)
	lw $t1, -6272($fp)
	lw $t2, -6276($fp)
	ble $t1, $t2, label374
	j label375
label374:
	li $t0, 1
	sw $t0, -6232($fp)
label375:
	lw $t0, -2444($fp)
	sw $t0, -6280($fp)
	li $t0, 17517
	sw $t0, -6284($fp)
	lw $t0, -2660($fp)
	sw $t0, -6288($fp)
	lw $t0, -6284($fp)
	lw $t1, -6288($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6292($fp)
	li $t0, 0
	lw $t1, -6292($fp)
	sub $t0, $t0, $t1
	sw $t0, -6296($fp)
	addi $sp, $sp, -4
	lw $t0, -6204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6296($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6300($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -6300($fp)
	sub $t0, $t0, $t1
	sw $t0, -6304($fp)
	li $t0, 0
	lw $t1, -6304($fp)
	sub $t0, $t0, $t1
	sw $t0, -6308($fp)
	li $t0, 58538
	sw $t0, -6312($fp)
	addi $t0, $fp, -384
	sw $t0, -6316($fp)
	lw $t0, -5996($fp)
	sw $t0, -6320($fp)
	li $t0, 4
	lw $t1, -6320($fp)
	mul $t0, $t0, $t1
	sw $t0, -6324($fp)
	lw $t0, -6324($fp)
	lw $t1, -6316($fp)
	add $t0, $t0, $t1
	sw $t0, -6328($fp)
	lw $t0, -6328($fp)
	lw $t1, 0($t0)
	sw $t1, -6332($fp)
	lw $t0, -3608($fp)
	sw $t0, -6336($fp)
	lw $t0, -3656($fp)
	sw $t0, -6340($fp)
	lw $t0, -6336($fp)
	lw $t1, -6340($fp)
	mul $t0, $t0, $t1
	sw $t0, -6344($fp)
	lw $t0, -3908($fp)
	sw $t0, -6348($fp)
	lw $t0, -6344($fp)
	lw $t1, -6348($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6352($fp)
	li $t0, 0
	sw $t0, -6356($fp)
	lw $t0, -1232($fp)
	sw $t0, -6360($fp)
	li $t0, 37059
	sw $t0, -6364($fp)
	lw $t0, -6360($fp)
	lw $t1, -6364($fp)
	mul $t0, $t0, $t1
	sw $t0, -6368($fp)
	lw $t0, -244($fp)
	sw $t0, -6372($fp)
	lw $t1, -6368($fp)
	lw $t2, -6372($fp)
	blt $t1, $t2, label378
	j label379
label378:
	li $t0, 1
	sw $t0, -6356($fp)
label379:
	addi $sp, $sp, -4
	lw $t0, -6312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6356($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6376($fp)
	addi $sp, $sp, 20
	li $t0, 45760
	sw $t0, -6380($fp)
	lw $t0, -3080($fp)
	sw $t0, -6384($fp)
	lw $t0, -6380($fp)
	lw $t1, -6384($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6388($fp)
	lw $t0, -2468($fp)
	sw $t0, -6392($fp)
	lw $t0, -6392($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -6396($fp)
	addi $sp, $sp, -4
	lw $t0, -6376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6396($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6400($fp)
	addi $sp, $sp, 16
	lw $t1, -6308($fp)
	lw $t2, -6400($fp)
	bne $t1, $t2, label369
	j label370
label369:
	li $t0, 1
	sw $t0, -6200($fp)
label370:
	addi $t0, $fp, -32
	sw $t0, -6404($fp)
	li $t0, 0
	sw $t0, -6408($fp)
	li $t0, 22878
	sw $t0, -6412($fp)
	li $t0, 42295
	sw $t0, -6416($fp)
	lw $t1, -6412($fp)
	lw $t2, -6416($fp)
	bne $t1, $t2, label380
	j label381
label380:
	li $t0, 1
	sw $t0, -6408($fp)
label381:
	li $t0, 4
	lw $t1, -6408($fp)
	mul $t0, $t0, $t1
	sw $t0, -6420($fp)
	lw $t0, -6420($fp)
	lw $t1, -6404($fp)
	add $t0, $t0, $t1
	sw $t0, -6424($fp)
	lw $t0, -6424($fp)
	lw $t1, 0($t0)
	sw $t1, -6428($fp)
	addi $t0, $fp, -5976
	sw $t0, -6432($fp)
	li $t0, 2
	sw $t0, -6436($fp)
	li $t0, 4
	lw $t1, -6436($fp)
	mul $t0, $t0, $t1
	sw $t0, -6440($fp)
	lw $t0, -6440($fp)
	lw $t1, -6432($fp)
	add $t0, $t0, $t1
	sw $t0, -6444($fp)
	lw $t0, -6444($fp)
	lw $t1, 0($t0)
	sw $t1, -6448($fp)
	lw $t0, -6428($fp)
	lw $t1, -6448($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6452($fp)
	addi $t0, $fp, -668
	sw $t0, -6456($fp)
	li $t0, 0
	sw $t0, -6460($fp)
	lw $t0, -6008($fp)
	sw $t0, -6464($fp)
	li $t0, 41212
	sw $t0, -6468($fp)
	lw $t1, -6464($fp)
	lw $t2, -6468($fp)
	bgt $t1, $t2, label382
	j label383
label382:
	li $t0, 1
	sw $t0, -6460($fp)
label383:
	li $t0, 4
	lw $t1, -6460($fp)
	mul $t0, $t0, $t1
	sw $t0, -6472($fp)
	lw $t0, -6472($fp)
	lw $t1, -6456($fp)
	add $t0, $t0, $t1
	sw $t0, -6476($fp)
	lw $t0, -6476($fp)
	lw $t1, 0($t0)
	sw $t1, -6480($fp)
	lw $t0, -6452($fp)
	lw $t1, -6480($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6484($fp)
	j label357
label359:
label353:
	j label345
label344:
	li $t0, 33227
	sw $t0, -6488($fp)
	lw $t0, -6488($fp)
	sw $t0, -6492($fp)
	lw $t0, -6492($fp)
	sw $t0, -6496($fp)
label384:
	lw $t0, -2480($fp)
	sw $t0, -6500($fp)
	lw $t1, -6500($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label386
label385:
	addi $t0, $fp, -592
	sw $t0, -6504($fp)
	lw $t0, -232($fp)
	sw $t0, -6508($fp)
	lw $t0, -6508($fp)
	sw $t0, -1952($fp)
	lw $t0, -1952($fp)
	sw $t0, -6512($fp)
	li $t0, 56700
	sw $t0, -6516($fp)
	li $t0, 0
	sw $t0, -6520($fp)
	lw $t0, -1460($fp)
	sw $t0, -6524($fp)
	lw $t1, -6524($fp)
	li $t2, 0
	bne $t1, $t2, label390
	j label389
label390:
	lw $t0, -3596($fp)
	sw $t0, -6528($fp)
	lw $t1, -6528($fp)
	li $t2, 0
	bne $t1, $t2, label387
	j label389
label389:
	lw $t0, -1232($fp)
	sw $t0, -6532($fp)
	lw $t1, -6532($fp)
	li $t2, 0
	bne $t1, $t2, label387
	j label388
label387:
	li $t0, 1
	sw $t0, -6520($fp)
label388:
	li $t0, 0
	sw $t0, -6536($fp)
	li $t0, 3487
	sw $t0, -6540($fp)
	lw $t0, -3056($fp)
	sw $t0, -6544($fp)
	lw $t1, -6540($fp)
	lw $t2, -6544($fp)
	ble $t1, $t2, label393
	j label392
label393:
	li $t0, 31557
	sw $t0, -6548($fp)
	lw $t1, -6548($fp)
	li $t2, 0
	bne $t1, $t2, label391
	j label392
label391:
	li $t0, 1
	sw $t0, -6536($fp)
label392:
	addi $sp, $sp, -4
	lw $t0, -6512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6536($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6552($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -6552($fp)
	sub $t0, $t0, $t1
	sw $t0, -6556($fp)
	li $t0, 0
	lw $t1, -6556($fp)
	sub $t0, $t0, $t1
	sw $t0, -6560($fp)
	li $t0, 4
	lw $t1, -6560($fp)
	mul $t0, $t0, $t1
	sw $t0, -6564($fp)
	lw $t0, -6564($fp)
	lw $t1, -6504($fp)
	add $t0, $t0, $t1
	sw $t0, -6568($fp)
	lw $t0, -6568($fp)
	lw $t1, 0($t0)
	sw $t1, -6572($fp)
	li $t0, 0
	sw $t0, -6576($fp)
	addi $t0, $fp, -32
	sw $t0, -6580($fp)
	li $t0, 0
	sw $t0, -6584($fp)
	li $t0, 36296
	sw $t0, -6588($fp)
	lw $t0, -3584($fp)
	sw $t0, -6592($fp)
	lw $t1, -6588($fp)
	lw $t2, -6592($fp)
	bne $t1, $t2, label396
	j label398
label398:
	li $t0, 64409
	sw $t0, -6596($fp)
	lw $t1, -6596($fp)
	li $t2, 0
	bne $t1, $t2, label396
	j label397
label396:
	li $t0, 1
	sw $t0, -6584($fp)
label397:
	li $t0, 4
	lw $t1, -6584($fp)
	mul $t0, $t0, $t1
	sw $t0, -6600($fp)
	lw $t0, -6600($fp)
	lw $t1, -6580($fp)
	add $t0, $t0, $t1
	sw $t0, -6604($fp)
	lw $t0, -6604($fp)
	lw $t1, 0($t0)
	sw $t1, -6608($fp)
	lw $t0, -3668($fp)
	sw $t0, -6612($fp)
	li $t0, 0
	lw $t1, -6612($fp)
	sub $t0, $t0, $t1
	sw $t0, -6616($fp)
	li $t0, 0
	lw $t1, -6616($fp)
	sub $t0, $t0, $t1
	sw $t0, -6620($fp)
	li $t0, 7040
	sw $t0, -6624($fp)
	lw $t0, -6620($fp)
	lw $t1, -6624($fp)
	sub $t0, $t0, $t1
	sw $t0, -6628($fp)
	lw $t1, -6608($fp)
	lw $t2, -6628($fp)
	beq $t1, $t2, label394
	j label395
label394:
	li $t0, 1
	sw $t0, -6576($fp)
label395:
	j label384
label386:
	lw $t0, -6492($fp)
	sw $t0, -6632($fp)
	lw $t0, -6632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6636($fp)
	li $t0, 45425
	sw $t0, -6640($fp)
	li $t0, 0
	sw $t0, -6644($fp)
	lw $t0, -2636($fp)
	sw $t0, -6648($fp)
	li $t0, 0
	lw $t1, -6648($fp)
	sub $t0, $t0, $t1
	sw $t0, -6652($fp)
	lw $t1, -6652($fp)
	li $t2, 0
	bne $t1, $t2, label402
	j label401
label401:
	li $t0, 1
	sw $t0, -6644($fp)
label402:
	lw $t0, -6640($fp)
	lw $t1, -6644($fp)
	mul $t0, $t0, $t1
	sw $t0, -6656($fp)
	li $t0, 0
	sw $t0, -6660($fp)
	li $t0, 22056
	sw $t0, -6664($fp)
	li $t0, 19059
	sw $t0, -6668($fp)
	lw $t0, -6664($fp)
	lw $t1, -6668($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6672($fp)
	lw $t0, -2972($fp)
	sw $t0, -6676($fp)
	lw $t1, -6672($fp)
	lw $t2, -6676($fp)
	bgt $t1, $t2, label403
	j label404
label403:
	li $t0, 1
	sw $t0, -6660($fp)
label404:
	addi $t0, $fp, -420
	sw $t0, -6680($fp)
	li $t0, 7
	sw $t0, -6684($fp)
	li $t0, 4
	lw $t1, -6684($fp)
	mul $t0, $t0, $t1
	sw $t0, -6688($fp)
	lw $t0, -6688($fp)
	lw $t1, -6680($fp)
	add $t0, $t0, $t1
	sw $t0, -6692($fp)
	lw $t0, -6692($fp)
	lw $t1, 0($t0)
	sw $t1, -6696($fp)
	lw $t0, -3080($fp)
	sw $t0, -6700($fp)
	lw $t0, -6696($fp)
	lw $t1, -6700($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6704($fp)
	li $t0, 0
	sw $t0, -6708($fp)
	lw $t0, -1928($fp)
	sw $t0, -6712($fp)
	lw $t0, -6492($fp)
	sw $t0, -6716($fp)
	lw $t0, -6712($fp)
	lw $t1, -6716($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6720($fp)
	lw $t0, -2468($fp)
	sw $t0, -6724($fp)
	lw $t1, -6720($fp)
	lw $t2, -6724($fp)
	ble $t1, $t2, label405
	j label406
label405:
	li $t0, 1
	sw $t0, -6708($fp)
label406:
	li $t0, 0
	sw $t0, -6728($fp)
	li $t0, 53490
	sw $t0, -6732($fp)
	li $t0, 23783
	sw $t0, -6736($fp)
	lw $t0, -6732($fp)
	lw $t1, -6736($fp)
	sub $t0, $t0, $t1
	sw $t0, -6740($fp)
	li $t0, 43854
	sw $t0, -6744($fp)
	lw $t1, -6740($fp)
	lw $t2, -6744($fp)
	beq $t1, $t2, label407
	j label408
label407:
	li $t0, 1
	sw $t0, -6728($fp)
label408:
	addi $sp, $sp, -4
	lw $t0, -6660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6728($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6748($fp)
	addi $sp, $sp, 20
	lw $t1, -6656($fp)
	lw $t2, -6748($fp)
	bne $t1, $t2, label399
	j label400
label399:
	li $t0, 1
	sw $t0, -6636($fp)
label400:
	lw $ra, -4($fp)
	lw $v0, -6636($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label345:
	j label336
label335:
	lw $t0, -232($fp)
	sw $t0, -6752($fp)
	lw $t1, -6752($fp)
	li $t2, 0
	bne $t1, $t2, label409
	j label410
label409:
	li $t0, 0
	sw $t0, -6756($fp)
	li $t0, 19892
	sw $t0, -6760($fp)
	lw $t1, -6760($fp)
	li $t2, 0
	bne $t1, $t2, label416
	j label415
label415:
	li $t0, 1
	sw $t0, -6756($fp)
label416:
	addi $t0, $fp, -708
	sw $t0, -6764($fp)
	lw $t0, -2672($fp)
	sw $t0, -6768($fp)
	li $t0, 4
	lw $t1, -6768($fp)
	mul $t0, $t0, $t1
	sw $t0, -6772($fp)
	lw $t0, -6772($fp)
	lw $t1, -6764($fp)
	add $t0, $t0, $t1
	sw $t0, -6776($fp)
	lw $t0, -6776($fp)
	lw $t1, 0($t0)
	sw $t1, -6780($fp)
	lw $t0, -6756($fp)
	lw $t1, -6780($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6784($fp)
	addi $t0, $fp, -420
	sw $t0, -6788($fp)
	li $t0, 1
	sw $t0, -6792($fp)
	li $t0, 4
	lw $t1, -6792($fp)
	mul $t0, $t0, $t1
	sw $t0, -6796($fp)
	lw $t0, -6796($fp)
	lw $t1, -6788($fp)
	add $t0, $t0, $t1
	sw $t0, -6800($fp)
	lw $t0, -6800($fp)
	lw $t1, 0($t0)
	sw $t1, -6804($fp)
	lw $t0, -6784($fp)
	lw $t1, -6804($fp)
	sub $t0, $t0, $t1
	sw $t0, -6808($fp)
	li $t0, 59346
	sw $t0, -6812($fp)
	lw $t1, -6808($fp)
	lw $t2, -6812($fp)
	bne $t1, $t2, label412
	j label413
label412:
	li $t0, 0
	sw $t0, -6816($fp)
	li $t0, 52274
	sw $t0, -6820($fp)
	lw $t1, -6820($fp)
	li $t2, 0
	bne $t1, $t2, label420
	j label423
label423:
	lw $t0, -3548($fp)
	sw $t0, -6824($fp)
	lw $t1, -6824($fp)
	li $t2, 0
	bne $t1, $t2, label420
	j label422
label422:
	li $t0, 38842
	sw $t0, -6828($fp)
	lw $t1, -6828($fp)
	li $t2, 0
	bne $t1, $t2, label420
	j label421
label420:
	li $t0, 1
	sw $t0, -6816($fp)
label421:
	li $t0, 0
	sw $t0, -6832($fp)
	li $t0, 5806
	sw $t0, -6836($fp)
	lw $t1, -6836($fp)
	li $t2, 0
	bne $t1, $t2, label424
	j label426
label426:
	lw $t0, -232($fp)
	sw $t0, -6840($fp)
	lw $t1, -6840($fp)
	li $t2, 0
	bne $t1, $t2, label424
	j label425
label424:
	li $t0, 1
	sw $t0, -6832($fp)
label425:
	li $t0, 0
	sw $t0, -6844($fp)
	li $t0, 58618
	sw $t0, -6848($fp)
	lw $t1, -6848($fp)
	li $t2, 0
	bne $t1, $t2, label427
	j label429
label429:
	lw $t0, -244($fp)
	sw $t0, -6852($fp)
	lw $t1, -6852($fp)
	li $t2, 0
	bne $t1, $t2, label427
	j label428
label427:
	li $t0, 1
	sw $t0, -6844($fp)
label428:
	addi $sp, $sp, -4
	lw $t0, -6816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6844($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6856($fp)
	addi $sp, $sp, 16
	li $t0, 34874
	sw $t0, -6860($fp)
	li $t0, 0
	lw $t1, -6860($fp)
	sub $t0, $t0, $t1
	sw $t0, -6864($fp)
	lw $t0, -232($fp)
	sw $t0, -6868($fp)
	lw $t0, -6868($fp)
	sw $t0, -3632($fp)
	lw $t0, -3632($fp)
	sw $t0, -6872($fp)
	lw $t0, -1208($fp)
	sw $t0, -6876($fp)
	addi $sp, $sp, -4
	lw $t0, -6856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6876($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6880($fp)
	addi $sp, $sp, 20
	li $t0, 42865
	sw $t0, -6884($fp)
	lw $t0, -6880($fp)
	lw $t1, -6884($fp)
	mul $t0, $t0, $t1
	sw $t0, -6888($fp)
	lw $t1, -6888($fp)
	li $t2, 0
	bne $t1, $t2, label417
	j label418
label417:
	li $t0, 45276
	sw $t0, -6892($fp)
	li $t0, 61720
	sw $t0, -6896($fp)
	li $t0, 19624
	sw $t0, -6900($fp)
	lw $t0, -6896($fp)
	lw $t1, -6900($fp)
	mul $t0, $t0, $t1
	sw $t0, -6904($fp)
	lw $t0, -6892($fp)
	lw $t1, -6904($fp)
	sub $t0, $t0, $t1
	sw $t0, -6908($fp)
	lw $t0, -6908($fp)
	sw $t0, -3524($fp)
	lw $t0, -3524($fp)
	sw $t0, -6912($fp)
	j label419
label418:
	addi $t0, $fp, -592
	sw $t0, -6916($fp)
	li $t0, 5
	sw $t0, -6920($fp)
	li $t0, 4
	lw $t1, -6920($fp)
	mul $t0, $t0, $t1
	sw $t0, -6924($fp)
	lw $t0, -6924($fp)
	lw $t1, -6916($fp)
	add $t0, $t0, $t1
	sw $t0, -6928($fp)
	lw $t0, -6928($fp)
	lw $t1, 0($t0)
	sw $t1, -6932($fp)
	lw $t0, -2972($fp)
	sw $t0, -6936($fp)
	li $t0, 0
	sw $t0, -6940($fp)
	lw $t0, -1172($fp)
	sw $t0, -6944($fp)
	li $t0, 18952
	sw $t0, -6948($fp)
	lw $t0, -6944($fp)
	lw $t1, -6948($fp)
	mul $t0, $t0, $t1
	sw $t0, -6952($fp)
	lw $t0, -1184($fp)
	sw $t0, -6956($fp)
	lw $t1, -6952($fp)
	lw $t2, -6956($fp)
	beq $t1, $t2, label433
	j label434
label433:
	li $t0, 1
	sw $t0, -6940($fp)
label434:
	addi $sp, $sp, -4
	lw $t0, -6932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6940($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6960($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -456
	sw $t0, -6964($fp)
	li $t0, 2
	sw $t0, -6968($fp)
	li $t0, 4
	lw $t1, -6968($fp)
	mul $t0, $t0, $t1
	sw $t0, -6972($fp)
	lw $t0, -6972($fp)
	lw $t1, -6964($fp)
	add $t0, $t0, $t1
	sw $t0, -6976($fp)
	lw $t0, -6976($fp)
	lw $t1, 0($t0)
	sw $t1, -6980($fp)
	lw $t0, -6960($fp)
	lw $t1, -6980($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6984($fp)
	li $t0, 0
	lw $t1, -6984($fp)
	sub $t0, $t0, $t1
	sw $t0, -6988($fp)
	lw $t1, -6988($fp)
	li $t2, 0
	bne $t1, $t2, label430
	j label431
label430:
	li $t0, 0
	sw $t0, -6992($fp)
	li $t0, 0
	sw $t0, -6996($fp)
	li $t0, 0
	sw $t0, -7000($fp)
	li $t0, 50383
	sw $t0, -7004($fp)
	lw $t0, -3632($fp)
	sw $t0, -7008($fp)
	lw $t1, -7004($fp)
	lw $t2, -7008($fp)
	blt $t1, $t2, label441
	j label440
label441:
	li $t0, 26406
	sw $t0, -7012($fp)
	lw $t1, -7012($fp)
	li $t2, 0
	bne $t1, $t2, label439
	j label440
label439:
	li $t0, 1
	sw $t0, -7000($fp)
label440:
	li $t0, 25731
	sw $t0, -7016($fp)
	lw $t0, -2684($fp)
	sw $t0, -7020($fp)
	lw $t0, -7016($fp)
	lw $t1, -7020($fp)
	sub $t0, $t0, $t1
	sw $t0, -7024($fp)
	li $t0, 0
	sw $t0, -7028($fp)
	li $t0, 0
	sw $t0, -7032($fp)
	lw $t0, -3776($fp)
	sw $t0, -7036($fp)
	li $t0, 43343
	sw $t0, -7040($fp)
	lw $t1, -7036($fp)
	lw $t2, -7040($fp)
	blt $t1, $t2, label444
	j label445
label444:
	li $t0, 1
	sw $t0, -7032($fp)
label445:
	li $t0, 46517
	sw $t0, -7044($fp)
	lw $t1, -7032($fp)
	lw $t2, -7044($fp)
	ble $t1, $t2, label442
	j label443
label442:
	li $t0, 1
	sw $t0, -7028($fp)
label443:
	li $t0, 0
	sw $t0, -7048($fp)
	li $t0, 0
	sw $t0, -7052($fp)
	lw $t0, -944($fp)
	sw $t0, -7056($fp)
	lw $t1, -7056($fp)
	li $t2, 0
	bne $t1, $t2, label449
	j label448
label448:
	li $t0, 1
	sw $t0, -7052($fp)
label449:
	lw $t0, -3944($fp)
	sw $t0, -7060($fp)
	lw $t1, -7052($fp)
	lw $t2, -7060($fp)
	bge $t1, $t2, label446
	j label447
label446:
	li $t0, 1
	sw $t0, -7048($fp)
label447:
	addi $sp, $sp, -4
	lw $t0, -7000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7048($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7064($fp)
	addi $sp, $sp, 20
	lw $t1, -7064($fp)
	li $t2, 0
	bne $t1, $t2, label438
	j label437
label437:
	li $t0, 1
	sw $t0, -6996($fp)
label438:
	li $t0, 26858
	sw $t0, -7068($fp)
	li $t0, 0
	lw $t1, -7068($fp)
	sub $t0, $t0, $t1
	sw $t0, -7072($fp)
	li $t0, 0
	lw $t1, -7072($fp)
	sub $t0, $t0, $t1
	sw $t0, -7076($fp)
	li $t0, 0
	sw $t0, -7080($fp)
	addi $t0, $fp, -592
	sw $t0, -7084($fp)
	lw $t0, -244($fp)
	sw $t0, -7088($fp)
	li $t0, 4
	lw $t1, -7088($fp)
	mul $t0, $t0, $t1
	sw $t0, -7092($fp)
	lw $t0, -7092($fp)
	lw $t1, -7084($fp)
	add $t0, $t0, $t1
	sw $t0, -7096($fp)
	lw $t0, -7096($fp)
	lw $t1, 0($t0)
	sw $t1, -7100($fp)
	lw $t0, -3956($fp)
	sw $t0, -7104($fp)
	lw $t1, -7100($fp)
	lw $t2, -7104($fp)
	bgt $t1, $t2, label450
	j label451
label450:
	li $t0, 1
	sw $t0, -7080($fp)
label451:
	addi $sp, $sp, -4
	lw $t0, -6996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7080($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7108($fp)
	addi $sp, $sp, 16
	lw $t1, -7108($fp)
	li $t2, 0
	bne $t1, $t2, label436
	j label435
label435:
	li $t0, 1
	sw $t0, -6992($fp)
label436:
	j label432
label431:
	li $t0, 0
	sw $t0, -7112($fp)
	addi $t0, $fp, -744
	sw $t0, -7116($fp)
	li $t0, 1
	sw $t0, -7120($fp)
	li $t0, 4
	lw $t1, -7120($fp)
	mul $t0, $t0, $t1
	sw $t0, -7124($fp)
	lw $t0, -7124($fp)
	lw $t1, -7116($fp)
	add $t0, $t0, $t1
	sw $t0, -7128($fp)
	lw $t0, -7128($fp)
	lw $t1, 0($t0)
	sw $t1, -7132($fp)
	li $t0, 0
	sw $t0, -7136($fp)
	addi $t0, $fp, -496
	sw $t0, -7140($fp)
	lw $t0, -3056($fp)
	sw $t0, -7144($fp)
	li $t0, 4
	lw $t1, -7144($fp)
	mul $t0, $t0, $t1
	sw $t0, -7148($fp)
	lw $t0, -7148($fp)
	lw $t1, -7140($fp)
	add $t0, $t0, $t1
	sw $t0, -7152($fp)
	lw $t0, -7152($fp)
	lw $t1, 0($t0)
	sw $t1, -7156($fp)
	li $t0, 26780
	sw $t0, -7160($fp)
	lw $t1, -7156($fp)
	lw $t2, -7160($fp)
	blt $t1, $t2, label454
	j label455
label454:
	li $t0, 1
	sw $t0, -7136($fp)
label455:
	li $t0, 46385
	sw $t0, -7164($fp)
	li $t0, 0
	sw $t0, -7168($fp)
	li $t0, 4724
	sw $t0, -7172($fp)
	li $t0, 35684
	sw $t0, -7176($fp)
	lw $t0, -7172($fp)
	lw $t1, -7176($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7180($fp)
	lw $t1, -7180($fp)
	li $t2, 0
	bne $t1, $t2, label456
	j label458
label458:
	lw $t0, -2660($fp)
	sw $t0, -7184($fp)
	lw $t1, -7184($fp)
	li $t2, 0
	bne $t1, $t2, label456
	j label457
label456:
	li $t0, 1
	sw $t0, -7168($fp)
label457:
	addi $sp, $sp, -4
	lw $t0, -7136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7168($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7188($fp)
	addi $sp, $sp, 16
	lw $t0, -244($fp)
	sw $t0, -7192($fp)
	lw $t0, -7188($fp)
	lw $t1, -7192($fp)
	mul $t0, $t0, $t1
	sw $t0, -7196($fp)
	lw $t1, -7132($fp)
	lw $t2, -7196($fp)
	bgt $t1, $t2, label452
	j label453
label452:
	li $t0, 1
	sw $t0, -7112($fp)
label453:
label432:
label419:
	j label414
label413:
label459:
	li $t0, 54744
	sw $t0, -7200($fp)
	lw $t0, -1988($fp)
	sw $t0, -7204($fp)
	li $t0, 0
	sw $t0, -7208($fp)
	li $t0, 741
	sw $t0, -7212($fp)
	li $t0, 0
	lw $t1, -7212($fp)
	sub $t0, $t0, $t1
	sw $t0, -7216($fp)
	lw $t1, -7216($fp)
	li $t2, 0
	bne $t1, $t2, label463
	j label462
label462:
	li $t0, 1
	sw $t0, -7208($fp)
label463:
	lw $t0, -1940($fp)
	sw $t0, -7220($fp)
	lw $t0, -7220($fp)
	sw $t0, -2972($fp)
	lw $t0, -2972($fp)
	sw $t0, -7224($fp)
	addi $sp, $sp, -4
	lw $t0, -7204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7224($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7228($fp)
	addi $sp, $sp, 16
	lw $t0, -7200($fp)
	lw $t1, -7228($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7232($fp)
	li $t0, 44137
	sw $t0, -7236($fp)
	li $t0, 0
	lw $t1, -7236($fp)
	sub $t0, $t0, $t1
	sw $t0, -7240($fp)
	lw $t0, -7232($fp)
	lw $t1, -7240($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7244($fp)
	lw $t1, -7244($fp)
	li $t2, 0
	bne $t1, $t2, label460
	j label461
label460:
	li $t0, 23202
	sw $t0, -7248($fp)
	lw $t0, -7248($fp)
	sw $t0, -7252($fp)
	lw $t0, -7252($fp)
	sw $t0, -7256($fp)
	li $t0, 0
	sw $t0, -7260($fp)
	lw $t0, -1148($fp)
	sw $t0, -7264($fp)
	li $t0, 0
	lw $t1, -7264($fp)
	sub $t0, $t0, $t1
	sw $t0, -7268($fp)
	lw $t1, -7268($fp)
	li $t2, 0
	bne $t1, $t2, label464
	j label465
label464:
	li $t0, 1
	sw $t0, -7260($fp)
label465:
	lw $t0, -944($fp)
	sw $t0, -7272($fp)
	lw $t0, -1232($fp)
	sw $t0, -7276($fp)
	li $t0, 357
	sw $t0, -7280($fp)
	lw $t0, -7276($fp)
	lw $t1, -7280($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7284($fp)
	lw $t0, -1976($fp)
	sw $t0, -7288($fp)
	lw $t0, -7284($fp)
	lw $t1, -7288($fp)
	sub $t0, $t0, $t1
	sw $t0, -7292($fp)
	li $t0, 16284
	sw $t0, -7296($fp)
	li $t0, 0
	sw $t0, -7300($fp)
	li $t0, 60087
	sw $t0, -7304($fp)
	li $t0, 13475
	sw $t0, -7308($fp)
	lw $t0, -7304($fp)
	lw $t1, -7308($fp)
	add $t0, $t0, $t1
	sw $t0, -7312($fp)
	lw $t1, -7312($fp)
	li $t2, 0
	bne $t1, $t2, label466
	j label468
label468:
	lw $t0, -7252($fp)
	sw $t0, -7316($fp)
	lw $t1, -7316($fp)
	li $t2, 0
	bne $t1, $t2, label466
	j label467
label466:
	li $t0, 1
	sw $t0, -7300($fp)
label467:
	addi $sp, $sp, -4
	lw $t0, -7292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7300($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7320($fp)
	addi $sp, $sp, 16
	lw $t0, -7272($fp)
	lw $t1, -7320($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7324($fp)
	j label459
label461:
label414:
	j label411
label410:
label469:
	addi $t0, $fp, -356
	sw $t0, -7328($fp)
	lw $t0, -244($fp)
	sw $t0, -7332($fp)
	li $t0, 4
	lw $t1, -7332($fp)
	mul $t0, $t0, $t1
	sw $t0, -7336($fp)
	lw $t0, -7336($fp)
	lw $t1, -7328($fp)
	add $t0, $t0, $t1
	sw $t0, -7340($fp)
	lw $t0, -7340($fp)
	lw $t1, 0($t0)
	sw $t1, -7344($fp)
	addi $t0, $fp, -724
	sw $t0, -7348($fp)
	lw $t0, -3572($fp)
	sw $t0, -7352($fp)
	li $t0, 4
	lw $t1, -7352($fp)
	mul $t0, $t0, $t1
	sw $t0, -7356($fp)
	lw $t0, -7356($fp)
	lw $t1, -7348($fp)
	add $t0, $t0, $t1
	sw $t0, -7360($fp)
	lw $t0, -7360($fp)
	lw $t1, 0($t0)
	sw $t1, -7364($fp)
	lw $t0, -7344($fp)
	lw $t1, -7364($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7368($fp)
	li $t0, 213
	sw $t0, -7372($fp)
	lw $t0, -7368($fp)
	lw $t1, -7372($fp)
	mul $t0, $t0, $t1
	sw $t0, -7376($fp)
	li $t0, 0
	sw $t0, -7380($fp)
	addi $t0, $fp, -592
	sw $t0, -7384($fp)
	lw $t0, -3968($fp)
	sw $t0, -7388($fp)
	li $t0, 4
	lw $t1, -7388($fp)
	mul $t0, $t0, $t1
	sw $t0, -7392($fp)
	lw $t0, -7392($fp)
	lw $t1, -7384($fp)
	add $t0, $t0, $t1
	sw $t0, -7396($fp)
	lw $t0, -7396($fp)
	lw $t1, 0($t0)
	sw $t1, -7400($fp)
	lw $t0, -232($fp)
	sw $t0, -7404($fp)
	lw $t0, -7400($fp)
	lw $t1, -7404($fp)
	mul $t0, $t0, $t1
	sw $t0, -7408($fp)
	li $t0, 0
	sw $t0, -7412($fp)
	lw $t0, -3932($fp)
	sw $t0, -7416($fp)
	lw $t1, -7416($fp)
	li $t2, 0
	bne $t1, $t2, label474
	j label475
label474:
	li $t0, 1
	sw $t0, -7412($fp)
label475:
	li $t0, 58045
	sw $t0, -7420($fp)
	li $t0, 58148
	sw $t0, -7424($fp)
	lw $t0, -7420($fp)
	lw $t1, -7424($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7428($fp)
	li $t0, 0
	sw $t0, -7432($fp)
	li $t0, 64441
	sw $t0, -7436($fp)
	lw $t1, -7436($fp)
	li $t2, 0
	bne $t1, $t2, label477
	j label476
label476:
	li $t0, 1
	sw $t0, -7432($fp)
label477:
	li $t0, 0
	sw $t0, -7440($fp)
	li $t0, 0
	sw $t0, -7444($fp)
	li $t0, 51311
	sw $t0, -7448($fp)
	lw $t1, -7448($fp)
	li $t2, 0
	bne $t1, $t2, label481
	j label480
label480:
	li $t0, 1
	sw $t0, -7444($fp)
label481:
	li $t0, 62847
	sw $t0, -7452($fp)
	lw $t1, -7444($fp)
	lw $t2, -7452($fp)
	ble $t1, $t2, label478
	j label479
label478:
	li $t0, 1
	sw $t0, -7440($fp)
label479:
	addi $sp, $sp, -4
	lw $t0, -7412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7440($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7456($fp)
	addi $sp, $sp, 20
	li $t0, 45489
	sw $t0, -7460($fp)
	lw $t0, -3536($fp)
	sw $t0, -7464($fp)
	lw $t0, -7460($fp)
	lw $t1, -7464($fp)
	mul $t0, $t0, $t1
	sw $t0, -7468($fp)
	addi $t0, $fp, -632
	sw $t0, -7472($fp)
	li $t0, 3
	sw $t0, -7476($fp)
	li $t0, 4
	lw $t1, -7476($fp)
	mul $t0, $t0, $t1
	sw $t0, -7480($fp)
	lw $t0, -7480($fp)
	lw $t1, -7472($fp)
	add $t0, $t0, $t1
	sw $t0, -7484($fp)
	lw $t0, -7484($fp)
	lw $t1, 0($t0)
	sw $t1, -7488($fp)
	addi $sp, $sp, -4
	lw $t0, -7408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7488($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7492($fp)
	addi $sp, $sp, 20
	lw $t1, -7492($fp)
	li $t2, 0
	bne $t1, $t2, label473
	j label472
label472:
	li $t0, 1
	sw $t0, -7380($fp)
label473:
	lw $t0, -7376($fp)
	lw $t1, -7380($fp)
	mul $t0, $t0, $t1
	sw $t0, -7496($fp)
	lw $t1, -7496($fp)
	li $t2, 0
	bne $t1, $t2, label470
	j label471
label470:
	li $t0, 51085
	sw $t0, -7500($fp)
	li $t0, 0
	lw $t1, -7500($fp)
	sub $t0, $t0, $t1
	sw $t0, -7504($fp)
	addi $sp, $sp, -4
	lw $t0, -7504($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7508($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -7512($fp)
	lw $t0, -2696($fp)
	sw $t0, -7516($fp)
	li $t0, 4
	lw $t1, -7516($fp)
	mul $t0, $t0, $t1
	sw $t0, -7520($fp)
	lw $t0, -7520($fp)
	lw $t1, -7512($fp)
	add $t0, $t0, $t1
	sw $t0, -7524($fp)
	lw $t0, -7524($fp)
	lw $t1, 0($t0)
	sw $t1, -7528($fp)
	lw $t0, -7508($fp)
	lw $t1, -7528($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7532($fp)
	li $t0, 0
	sw $t0, -7536($fp)
	li $t0, 0
	sw $t0, -7540($fp)
	li $t0, 45202
	sw $t0, -7544($fp)
	lw $t0, -220($fp)
	sw $t0, -7548($fp)
	lw $t1, -7544($fp)
	lw $t2, -7548($fp)
	beq $t1, $t2, label489
	j label488
label489:
	lw $t0, -3080($fp)
	sw $t0, -7552($fp)
	lw $t1, -7552($fp)
	li $t2, 0
	bne $t1, $t2, label487
	j label488
label487:
	li $t0, 1
	sw $t0, -7540($fp)
label488:
	li $t0, 0
	sw $t0, -7556($fp)
	lw $t0, -3512($fp)
	sw $t0, -7560($fp)
	lw $t0, -2444($fp)
	sw $t0, -7564($fp)
	lw $t1, -7560($fp)
	lw $t2, -7564($fp)
	ble $t1, $t2, label490
	j label492
label492:
	lw $t0, -2984($fp)
	sw $t0, -7568($fp)
	lw $t1, -7568($fp)
	li $t2, 0
	bne $t1, $t2, label490
	j label491
label490:
	li $t0, 1
	sw $t0, -7556($fp)
label491:
	lw $t0, -1232($fp)
	sw $t0, -7572($fp)
	li $t0, 0
	sw $t0, -7576($fp)
	lw $t0, -1160($fp)
	sw $t0, -7580($fp)
	addi $sp, $sp, -4
	lw $t0, -7580($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7584($fp)
	addi $sp, $sp, 8
	li $t0, 49248
	sw $t0, -7588($fp)
	lw $t1, -7584($fp)
	lw $t2, -7588($fp)
	blt $t1, $t2, label493
	j label494
label493:
	li $t0, 1
	sw $t0, -7576($fp)
label494:
	addi $sp, $sp, -4
	lw $t0, -7540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7576($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7592($fp)
	addi $sp, $sp, 20
	lw $t1, -7592($fp)
	li $t2, 0
	bne $t1, $t2, label486
	j label485
label485:
	li $t0, 1
	sw $t0, -7536($fp)
label486:
	li $t0, 0
	sw $t0, -7596($fp)
	lw $t0, -1148($fp)
	sw $t0, -7600($fp)
	li $t0, 0
	lw $t1, -7600($fp)
	sub $t0, $t0, $t1
	sw $t0, -7604($fp)
	li $t0, 28892
	sw $t0, -7608($fp)
	lw $t1, -7604($fp)
	lw $t2, -7608($fp)
	bgt $t1, $t2, label495
	j label496
label495:
	li $t0, 1
	sw $t0, -7596($fp)
label496:
	li $t0, 0
	sw $t0, -7612($fp)
	lw $t0, -2696($fp)
	sw $t0, -7616($fp)
	li $t0, 2731
	sw $t0, -7620($fp)
	lw $t1, -7616($fp)
	lw $t2, -7620($fp)
	beq $t1, $t2, label499
	j label498
label499:
	li $t0, 19470
	sw $t0, -7624($fp)
	lw $t1, -7624($fp)
	li $t2, 0
	bne $t1, $t2, label497
	j label498
label497:
	li $t0, 1
	sw $t0, -7612($fp)
label498:
	addi $sp, $sp, -4
	lw $t0, -7536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7612($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7628($fp)
	addi $sp, $sp, 16
	lw $t0, -7532($fp)
	lw $t1, -7628($fp)
	sub $t0, $t0, $t1
	sw $t0, -7632($fp)
	lw $t1, -7632($fp)
	li $t2, 0
	bne $t1, $t2, label482
	j label483
label482:
label500:
	lw $t0, -3500($fp)
	sw $t0, -7636($fp)
	lw $t0, -3512($fp)
	sw $t0, -7640($fp)
	lw $t0, -1196($fp)
	sw $t0, -7644($fp)
	li $t0, 0
	lw $t1, -7644($fp)
	sub $t0, $t0, $t1
	sw $t0, -7648($fp)
	lw $t0, -7640($fp)
	lw $t1, -7648($fp)
	sub $t0, $t0, $t1
	sw $t0, -7652($fp)
	lw $t1, -7636($fp)
	lw $t2, -7652($fp)
	bge $t1, $t2, label501
	j label502
label501:
	li $t0, 0
	sw $t0, -7656($fp)
	li $t0, 0
	sw $t0, -7660($fp)
	li $t0, 0
	sw $t0, -7664($fp)
	li $t0, 0
	sw $t0, -7668($fp)
	lw $t0, -2456($fp)
	sw $t0, -7672($fp)
	li $t0, 13740
	sw $t0, -7676($fp)
	lw $t1, -7672($fp)
	lw $t2, -7676($fp)
	blt $t1, $t2, label510
	j label511
label510:
	li $t0, 1
	sw $t0, -7668($fp)
label511:
	lw $t0, -2972($fp)
	sw $t0, -7680($fp)
	lw $t1, -7668($fp)
	lw $t2, -7680($fp)
	beq $t1, $t2, label508
	j label509
label508:
	li $t0, 1
	sw $t0, -7664($fp)
label509:
	addi $sp, $sp, -4
	lw $t0, -7664($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7684($fp)
	addi $sp, $sp, 8
	lw $t1, -7684($fp)
	li $t2, 0
	bne $t1, $t2, label507
	j label506
label506:
	li $t0, 1
	sw $t0, -7660($fp)
label507:
	addi $t0, $fp, -568
	sw $t0, -7688($fp)
	lw $t0, -1160($fp)
	sw $t0, -7692($fp)
	li $t0, 4
	lw $t1, -7692($fp)
	mul $t0, $t0, $t1
	sw $t0, -7696($fp)
	lw $t0, -7696($fp)
	lw $t1, -7688($fp)
	add $t0, $t0, $t1
	sw $t0, -7700($fp)
	lw $t0, -7700($fp)
	lw $t1, 0($t0)
	sw $t1, -7704($fp)
	lw $t0, -7660($fp)
	lw $t1, -7704($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7708($fp)
	li $t0, 0
	sw $t0, -7712($fp)
	lw $t0, -3068($fp)
	sw $t0, -7716($fp)
	lw $t1, -7716($fp)
	li $t2, 0
	bne $t1, $t2, label513
	j label512
label512:
	li $t0, 1
	sw $t0, -7712($fp)
label513:
	li $t0, 0
	lw $t1, -7712($fp)
	sub $t0, $t0, $t1
	sw $t0, -7720($fp)
	lw $t0, -7708($fp)
	lw $t1, -7720($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7724($fp)
	lw $t1, -7724($fp)
	li $t2, 0
	bne $t1, $t2, label505
	j label504
label505:
	li $t0, 0
	sw $t0, -7728($fp)
	li $t0, 10119
	sw $t0, -7732($fp)
	lw $t1, -7732($fp)
	li $t2, 0
	bne $t1, $t2, label515
	j label514
label514:
	li $t0, 1
	sw $t0, -7728($fp)
label515:
	li $t0, 58887
	sw $t0, -7736($fp)
	lw $t0, -7728($fp)
	lw $t1, -7736($fp)
	mul $t0, $t0, $t1
	sw $t0, -7740($fp)
	addi $sp, $sp, -4
	lw $t0, -7740($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7744($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -7744($fp)
	sub $t0, $t0, $t1
	sw $t0, -7748($fp)
	lw $t1, -7748($fp)
	li $t2, 0
	bne $t1, $t2, label504
	j label503
label503:
	li $t0, 1
	sw $t0, -7656($fp)
label504:
	j label500
label502:
	j label484
label483:
	li $t0, 0
	sw $t0, -7752($fp)
	addi $t0, $fp, -536
	sw $t0, -7756($fp)
	li $t0, 5
	sw $t0, -7760($fp)
	li $t0, 4
	lw $t1, -7760($fp)
	mul $t0, $t0, $t1
	sw $t0, -7764($fp)
	lw $t0, -7764($fp)
	lw $t1, -7756($fp)
	add $t0, $t0, $t1
	sw $t0, -7768($fp)
	lw $t0, -7768($fp)
	lw $t1, 0($t0)
	sw $t1, -7772($fp)
	li $t0, 0
	sw $t0, -7776($fp)
	li $t0, 18244
	sw $t0, -7780($fp)
	lw $t0, -3632($fp)
	sw $t0, -7784($fp)
	lw $t1, -7780($fp)
	lw $t2, -7784($fp)
	beq $t1, $t2, label519
	j label521
label521:
	lw $t0, -1964($fp)
	sw $t0, -7788($fp)
	lw $t1, -7788($fp)
	li $t2, 0
	bne $t1, $t2, label519
	j label520
label519:
	li $t0, 1
	sw $t0, -7776($fp)
label520:
	addi $t0, $fp, -384
	sw $t0, -7792($fp)
	li $t0, 6
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
	li $t0, 29036
	sw $t0, -7812($fp)
	li $t0, 0
	lw $t1, -7812($fp)
	sub $t0, $t0, $t1
	sw $t0, -7816($fp)
	lw $t0, -1160($fp)
	sw $t0, -7820($fp)
	lw $t0, -7816($fp)
	lw $t1, -7820($fp)
	sub $t0, $t0, $t1
	sw $t0, -7824($fp)
	addi $sp, $sp, -4
	lw $t0, -7776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7824($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7828($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -7828($fp)
	sub $t0, $t0, $t1
	sw $t0, -7832($fp)
	lw $t1, -7772($fp)
	lw $t2, -7832($fp)
	ble $t1, $t2, label518
	j label517
label518:
	addi $t0, $fp, -668
	sw $t0, -7836($fp)
	li $t0, 6
	sw $t0, -7840($fp)
	li $t0, 4
	lw $t1, -7840($fp)
	mul $t0, $t0, $t1
	sw $t0, -7844($fp)
	lw $t0, -7844($fp)
	lw $t1, -7836($fp)
	add $t0, $t0, $t1
	sw $t0, -7848($fp)
	lw $t0, -7848($fp)
	lw $t1, 0($t0)
	sw $t1, -7852($fp)
	lw $t1, -7852($fp)
	li $t2, 0
	bne $t1, $t2, label516
	j label517
label516:
	li $t0, 1
	sw $t0, -7752($fp)
label517:
label484:
	j label469
label471:
label411:
label336:
label331:
label522:
	li $t0, 41446
	sw $t0, -7856($fp)
	li $t0, 0
	sw $t0, -7860($fp)
	lw $t0, -1172($fp)
	sw $t0, -7864($fp)
	lw $t1, -7864($fp)
	li $t2, 0
	bne $t1, $t2, label526
	j label525
label525:
	li $t0, 1
	sw $t0, -7860($fp)
label526:
	li $t0, 0
	lw $t1, -7860($fp)
	sub $t0, $t0, $t1
	sw $t0, -7868($fp)
	li $t0, 0
	sw $t0, -7872($fp)
	li $t0, 32016
	sw $t0, -7876($fp)
	lw $t0, -2984($fp)
	sw $t0, -7880($fp)
	lw $t1, -7876($fp)
	lw $t2, -7880($fp)
	bne $t1, $t2, label527
	j label528
label527:
	li $t0, 1
	sw $t0, -7872($fp)
label528:
	lw $t0, -2240($fp)
	sw $t0, -7884($fp)
	li $t0, 12773
	sw $t0, -7888($fp)
	lw $t0, -7884($fp)
	lw $t1, -7888($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7892($fp)
	li $t0, 25605
	sw $t0, -7896($fp)
	lw $t0, -7892($fp)
	lw $t1, -7896($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7900($fp)
	li $t0, 0
	sw $t0, -7904($fp)
	addi $t0, $fp, -352
	sw $t0, -7908($fp)
	lw $t0, -1172($fp)
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
	li $t0, 0
	sw $t0, -7928($fp)
	li $t0, 42092
	sw $t0, -7932($fp)
	li $t0, 13868
	sw $t0, -7936($fp)
	lw $t0, -7932($fp)
	lw $t1, -7936($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7940($fp)
	li $t0, 33095
	sw $t0, -7944($fp)
	lw $t1, -7940($fp)
	lw $t2, -7944($fp)
	bne $t1, $t2, label531
	j label532
label531:
	li $t0, 1
	sw $t0, -7928($fp)
label532:
	li $t0, 0
	sw $t0, -7948($fp)
	addi $t0, $fp, -420
	sw $t0, -7952($fp)
	li $t0, 5
	sw $t0, -7956($fp)
	li $t0, 4
	lw $t1, -7956($fp)
	mul $t0, $t0, $t1
	sw $t0, -7960($fp)
	lw $t0, -7960($fp)
	lw $t1, -7952($fp)
	add $t0, $t0, $t1
	sw $t0, -7964($fp)
	lw $t0, -7964($fp)
	lw $t1, 0($t0)
	sw $t1, -7968($fp)
	lw $t1, -7968($fp)
	li $t2, 0
	bne $t1, $t2, label534
	j label533
label533:
	li $t0, 1
	sw $t0, -7948($fp)
label534:
	li $t0, 0
	sw $t0, -7972($fp)
	li $t0, 57730
	sw $t0, -7976($fp)
	li $t0, 64405
	sw $t0, -7980($fp)
	lw $t1, -7976($fp)
	lw $t2, -7980($fp)
	bgt $t1, $t2, label537
	j label536
label537:
	lw $t0, -1172($fp)
	sw $t0, -7984($fp)
	lw $t1, -7984($fp)
	li $t2, 0
	bne $t1, $t2, label535
	j label536
label535:
	li $t0, 1
	sw $t0, -7972($fp)
label536:
	addi $sp, $sp, -4
	lw $t0, -7924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7972($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7988($fp)
	addi $sp, $sp, 20
	li $t0, 39403
	sw $t0, -7992($fp)
	lw $t1, -7988($fp)
	lw $t2, -7992($fp)
	beq $t1, $t2, label529
	j label530
label529:
	li $t0, 1
	sw $t0, -7904($fp)
label530:
	addi $t0, $fp, -708
	sw $t0, -7996($fp)
	li $t0, 5
	sw $t0, -8000($fp)
	li $t0, 4
	lw $t1, -8000($fp)
	mul $t0, $t0, $t1
	sw $t0, -8004($fp)
	lw $t0, -8004($fp)
	lw $t1, -7996($fp)
	add $t0, $t0, $t1
	sw $t0, -8008($fp)
	lw $t0, -8008($fp)
	lw $t1, 0($t0)
	sw $t1, -8012($fp)
	li $t0, 0
	lw $t1, -8012($fp)
	sub $t0, $t0, $t1
	sw $t0, -8016($fp)
	addi $sp, $sp, -4
	lw $t0, -7872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8016($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8020($fp)
	addi $sp, $sp, 20
	lw $t0, -7868($fp)
	lw $t1, -8020($fp)
	sub $t0, $t0, $t1
	sw $t0, -8024($fp)
	lw $t1, -7856($fp)
	lw $t2, -8024($fp)
	bgt $t1, $t2, label523
	j label524
label523:
	li $t0, 63858
	sw $t0, -8028($fp)
	lw $t0, -8028($fp)
	sw $t0, -8032($fp)
	lw $t0, -8032($fp)
	sw $t0, -8036($fp)
	li $t0, 28336
	sw $t0, -8040($fp)
	lw $t0, -8040($fp)
	sw $t0, -8044($fp)
	lw $t0, -8044($fp)
	sw $t0, -8048($fp)
	li $t0, 51486
	sw $t0, -8052($fp)
	lw $t0, -8052($fp)
	sw $t0, -8056($fp)
	lw $t0, -8056($fp)
	sw $t0, -8060($fp)
	li $t0, 27215
	sw $t0, -8064($fp)
	lw $t0, -8064($fp)
	sw $t0, -8068($fp)
	lw $t0, -8068($fp)
	sw $t0, -8072($fp)
	li $t0, 12048
	sw $t0, -8076($fp)
	lw $t0, -8076($fp)
	sw $t0, -8080($fp)
	lw $t0, -8080($fp)
	sw $t0, -8084($fp)
	li $t0, 31152
	sw $t0, -8088($fp)
	lw $t0, -8088($fp)
	sw $t0, -8092($fp)
	lw $t0, -8092($fp)
	sw $t0, -8096($fp)
	li $t0, 40955
	sw $t0, -8100($fp)
	lw $t0, -8100($fp)
	sw $t0, -8104($fp)
	lw $t0, -8104($fp)
	sw $t0, -8108($fp)
	li $t0, 0
	sw $t0, -8112($fp)
	li $t0, 0
	sw $t0, -8116($fp)
	li $t0, 0
	sw $t0, -8120($fp)
	li $t0, 22167
	sw $t0, -8124($fp)
	lw $t0, -292($fp)
	sw $t0, -8128($fp)
	lw $t1, -8124($fp)
	lw $t2, -8128($fp)
	bge $t1, $t2, label542
	j label543
label542:
	li $t0, 1
	sw $t0, -8120($fp)
label543:
	li $t0, 24504
	sw $t0, -8132($fp)
	li $t0, 63325
	sw $t0, -8136($fp)
	lw $t0, -8132($fp)
	lw $t1, -8136($fp)
	add $t0, $t0, $t1
	sw $t0, -8140($fp)
	lw $t0, -8056($fp)
	sw $t0, -8144($fp)
	lw $t0, -8140($fp)
	lw $t1, -8144($fp)
	add $t0, $t0, $t1
	sw $t0, -8148($fp)
	lw $t1, -8120($fp)
	lw $t2, -8148($fp)
	blt $t1, $t2, label540
	j label541
label540:
	li $t0, 1
	sw $t0, -8116($fp)
label541:
	li $t0, 37011
	sw $t0, -8152($fp)
	li $t0, 0
	lw $t1, -8152($fp)
	sub $t0, $t0, $t1
	sw $t0, -8156($fp)
	lw $t1, -8116($fp)
	lw $t2, -8156($fp)
	beq $t1, $t2, label538
	j label539
label538:
	li $t0, 1
	sw $t0, -8112($fp)
label539:
	lw $t0, -8032($fp)
	sw $t0, -8160($fp)
	lw $t0, -8160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8044($fp)
	sw $t0, -8164($fp)
	lw $t0, -8164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8056($fp)
	sw $t0, -8168($fp)
	lw $t0, -8168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8068($fp)
	sw $t0, -8172($fp)
	lw $t0, -8172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8080($fp)
	sw $t0, -8176($fp)
	lw $t0, -8176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8092($fp)
	sw $t0, -8180($fp)
	lw $t0, -8180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8104($fp)
	sw $t0, -8184($fp)
	lw $t0, -8184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -8188($fp)
	lw $t0, -2972($fp)
	sw $t0, -8192($fp)
	addi $t0, $fp, -708
	sw $t0, -8196($fp)
	li $t0, 1
	sw $t0, -8200($fp)
	li $t0, 4
	lw $t1, -8200($fp)
	mul $t0, $t0, $t1
	sw $t0, -8204($fp)
	lw $t0, -8204($fp)
	lw $t1, -8196($fp)
	add $t0, $t0, $t1
	sw $t0, -8208($fp)
	lw $t0, -8208($fp)
	lw $t1, 0($t0)
	sw $t1, -8212($fp)
	lw $t0, -8192($fp)
	lw $t1, -8212($fp)
	add $t0, $t0, $t1
	sw $t0, -8216($fp)
	li $t0, 0
	sw $t0, -8220($fp)
	li $t0, 0
	sw $t0, -8224($fp)
	lw $t0, -1976($fp)
	sw $t0, -8228($fp)
	lw $t1, -8228($fp)
	li $t2, 0
	bne $t1, $t2, label550
	j label549
label549:
	li $t0, 1
	sw $t0, -8224($fp)
label550:
	li $t0, 4969
	sw $t0, -8232($fp)
	lw $t1, -8224($fp)
	lw $t2, -8232($fp)
	bne $t1, $t2, label547
	j label548
label547:
	li $t0, 1
	sw $t0, -8220($fp)
label548:
	li $t0, 13099
	sw $t0, -8236($fp)
	lw $t0, -232($fp)
	sw $t0, -8240($fp)
	lw $t0, -8236($fp)
	lw $t1, -8240($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8244($fp)
	li $t0, 6248
	sw $t0, -8248($fp)
	lw $t0, -8244($fp)
	lw $t1, -8248($fp)
	mul $t0, $t0, $t1
	sw $t0, -8252($fp)
	addi $t0, $fp, -32
	sw $t0, -8256($fp)
	lw $t0, -1196($fp)
	sw $t0, -8260($fp)
	li $t0, 4
	lw $t1, -8260($fp)
	mul $t0, $t0, $t1
	sw $t0, -8264($fp)
	lw $t0, -8264($fp)
	lw $t1, -8256($fp)
	add $t0, $t0, $t1
	sw $t0, -8268($fp)
	lw $t0, -8268($fp)
	lw $t1, 0($t0)
	sw $t1, -8272($fp)
	lw $t0, -3056($fp)
	sw $t0, -8276($fp)
	lw $t0, -8272($fp)
	lw $t1, -8276($fp)
	add $t0, $t0, $t1
	sw $t0, -8280($fp)
	addi $sp, $sp, -4
	lw $t0, -8220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8280($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8284($fp)
	addi $sp, $sp, 16
	lw $t0, -8216($fp)
	lw $t1, -8284($fp)
	add $t0, $t0, $t1
	sw $t0, -8288($fp)
	lw $t1, -8288($fp)
	li $t2, 0
	bne $t1, $t2, label546
	j label545
label546:
	lw $t0, -3548($fp)
	sw $t0, -8292($fp)
	li $t0, 0
	lw $t1, -8292($fp)
	sub $t0, $t0, $t1
	sw $t0, -8296($fp)
	li $t0, 0
	sw $t0, -8300($fp)
	li $t0, 33324
	sw $t0, -8304($fp)
	lw $t1, -8304($fp)
	li $t2, 0
	bne $t1, $t2, label551
	j label553
label553:
	li $t0, 47694
	sw $t0, -8308($fp)
	lw $t1, -8308($fp)
	li $t2, 0
	bne $t1, $t2, label551
	j label552
label551:
	li $t0, 1
	sw $t0, -8300($fp)
label552:
	addi $sp, $sp, -4
	lw $t0, -8300($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -8312($fp)
	addi $sp, $sp, 8
	lw $t1, -8296($fp)
	lw $t2, -8312($fp)
	beq $t1, $t2, label544
	j label545
label544:
	li $t0, 1
	sw $t0, -8188($fp)
label545:
	lw $ra, -4($fp)
	lw $v0, -8188($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1232($fp)
	sw $t0, -8316($fp)
	li $t0, 3481
	sw $t0, -8320($fp)
	lw $t0, -8316($fp)
	lw $t1, -8320($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8324($fp)
	lw $t0, -268($fp)
	sw $t0, -8328($fp)
	addi $sp, $sp, -4
	lw $t0, -8328($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -8332($fp)
	addi $sp, $sp, 8
	lw $t1, -8324($fp)
	lw $t2, -8332($fp)
	beq $t1, $t2, label554
	j label555
label554:
	lw $t0, -2696($fp)
	sw $t0, -8336($fp)
	addi $sp, $sp, -4
	lw $t0, -8336($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -8340($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -8344($fp)
	li $t0, 35404
	sw $t0, -8348($fp)
	li $t0, 21672
	sw $t0, -8352($fp)
	lw $t0, -8348($fp)
	lw $t1, -8352($fp)
	sub $t0, $t0, $t1
	sw $t0, -8356($fp)
	lw $t1, -8356($fp)
	li $t2, 0
	bne $t1, $t2, label559
	j label558
label559:
	li $t0, 44442
	sw $t0, -8360($fp)
	lw $t1, -8360($fp)
	li $t2, 0
	bne $t1, $t2, label557
	j label558
label557:
	li $t0, 1
	sw $t0, -8344($fp)
label558:
	li $t0, 0
	sw $t0, -8364($fp)
	li $t0, 2350
	sw $t0, -8368($fp)
	lw $t1, -8368($fp)
	li $t2, 0
	bne $t1, $t2, label561
	j label562
label562:
	lw $t0, -3920($fp)
	sw $t0, -8372($fp)
	lw $t1, -8372($fp)
	li $t2, 0
	bne $t1, $t2, label560
	j label561
label560:
	li $t0, 1
	sw $t0, -8364($fp)
label561:
	li $t0, 0
	sw $t0, -8376($fp)
	li $t0, 0
	sw $t0, -8380($fp)
	lw $t0, -2636($fp)
	sw $t0, -8384($fp)
	li $t0, 1489
	sw $t0, -8388($fp)
	lw $t1, -8384($fp)
	lw $t2, -8388($fp)
	bgt $t1, $t2, label565
	j label566
label565:
	li $t0, 1
	sw $t0, -8380($fp)
label566:
	li $t0, 39888
	sw $t0, -8392($fp)
	lw $t1, -8380($fp)
	lw $t2, -8392($fp)
	blt $t1, $t2, label563
	j label564
label563:
	li $t0, 1
	sw $t0, -8376($fp)
label564:
	addi $sp, $sp, -4
	lw $t0, -8376($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -8396($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -8340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8396($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8400($fp)
	addi $sp, $sp, 20
	li $t0, 49272
	sw $t0, -8404($fp)
	lw $t0, -8400($fp)
	lw $t1, -8404($fp)
	mul $t0, $t0, $t1
	sw $t0, -8408($fp)
	li $t0, 0
	lw $t1, -8408($fp)
	sub $t0, $t0, $t1
	sw $t0, -8412($fp)
	j label556
label555:
	li $t0, 0
	sw $t0, -8416($fp)
	lw $t0, -1172($fp)
	sw $t0, -8420($fp)
	li $t0, 0
	sw $t0, -8424($fp)
	li $t0, 14837
	sw $t0, -8428($fp)
	li $t0, 0
	lw $t1, -8428($fp)
	sub $t0, $t0, $t1
	sw $t0, -8432($fp)
	lw $t1, -8432($fp)
	li $t2, 0
	bne $t1, $t2, label569
	j label571
label571:
	li $t0, 50325
	sw $t0, -8436($fp)
	lw $t1, -8436($fp)
	li $t2, 0
	bne $t1, $t2, label569
	j label570
label569:
	li $t0, 1
	sw $t0, -8424($fp)
label570:
	li $t0, 0
	sw $t0, -8440($fp)
	addi $t0, $fp, -456
	sw $t0, -8444($fp)
	li $t0, 5
	sw $t0, -8448($fp)
	li $t0, 4
	lw $t1, -8448($fp)
	mul $t0, $t0, $t1
	sw $t0, -8452($fp)
	lw $t0, -8452($fp)
	lw $t1, -8444($fp)
	add $t0, $t0, $t1
	sw $t0, -8456($fp)
	lw $t0, -8456($fp)
	lw $t1, 0($t0)
	sw $t1, -8460($fp)
	lw $t1, -8460($fp)
	li $t2, 0
	bne $t1, $t2, label572
	j label574
label574:
	lw $t0, -8080($fp)
	sw $t0, -8464($fp)
	lw $t1, -8464($fp)
	li $t2, 0
	bne $t1, $t2, label572
	j label573
label572:
	li $t0, 1
	sw $t0, -8440($fp)
label573:
	li $t0, 54768
	sw $t0, -8468($fp)
	addi $sp, $sp, -4
	lw $t0, -8420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8468($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8472($fp)
	addi $sp, $sp, 20
	lw $t1, -8472($fp)
	li $t2, 0
	bne $t1, $t2, label568
	j label567
label567:
	li $t0, 1
	sw $t0, -8416($fp)
label568:
label556:
	li $t0, 1892
	sw $t0, -8476($fp)
	li $t0, 22047
	sw $t0, -8480($fp)
	lw $t0, -1460($fp)
	sw $t0, -8484($fp)
	lw $t0, -8480($fp)
	lw $t1, -8484($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8488($fp)
	li $t0, 55221
	sw $t0, -8492($fp)
	lw $t0, -8488($fp)
	lw $t1, -8492($fp)
	sub $t0, $t0, $t1
	sw $t0, -8496($fp)
	li $t0, 0
	sw $t0, -8500($fp)
	li $t0, 0
	sw $t0, -8504($fp)
	li $t0, 43173
	sw $t0, -8508($fp)
	li $t0, 36276
	sw $t0, -8512($fp)
	lw $t1, -8508($fp)
	lw $t2, -8512($fp)
	bne $t1, $t2, label580
	j label581
label580:
	li $t0, 1
	sw $t0, -8504($fp)
label581:
	lw $t0, -8104($fp)
	sw $t0, -8516($fp)
	lw $t1, -8504($fp)
	lw $t2, -8516($fp)
	bne $t1, $t2, label578
	j label579
label578:
	li $t0, 1
	sw $t0, -8500($fp)
label579:
	li $t0, 60368
	sw $t0, -8520($fp)
	lw $t0, -8520($fp)
	sw $t0, -2444($fp)
	lw $t0, -2444($fp)
	sw $t0, -8524($fp)
	addi $sp, $sp, -4
	lw $t0, -8476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8524($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8528($fp)
	addi $sp, $sp, 20
	lw $t1, -8528($fp)
	li $t2, 0
	bne $t1, $t2, label575
	j label576
label575:
label582:
	li $t0, 0
	sw $t0, -8532($fp)
	lw $t0, -8068($fp)
	sw $t0, -8536($fp)
	lw $t1, -8536($fp)
	li $t2, 0
	bne $t1, $t2, label588
	j label586
label588:
	lw $t0, -2984($fp)
	sw $t0, -8540($fp)
	lw $t1, -8540($fp)
	li $t2, 0
	bne $t1, $t2, label587
	j label586
label587:
	li $t0, 63002
	sw $t0, -8544($fp)
	lw $t1, -8544($fp)
	li $t2, 0
	bne $t1, $t2, label585
	j label586
label585:
	li $t0, 1
	sw $t0, -8532($fp)
label586:
	li $t0, 0
	sw $t0, -8548($fp)
	lw $t0, -2456($fp)
	sw $t0, -8552($fp)
	lw $t0, -220($fp)
	sw $t0, -8556($fp)
	lw $t1, -8552($fp)
	lw $t2, -8556($fp)
	bgt $t1, $t2, label589
	j label591
label591:
	lw $t0, -1196($fp)
	sw $t0, -8560($fp)
	lw $t1, -8560($fp)
	li $t2, 0
	bne $t1, $t2, label589
	j label590
label589:
	li $t0, 1
	sw $t0, -8548($fp)
label590:
	lw $t0, -2672($fp)
	sw $t0, -8564($fp)
	lw $t0, -8564($fp)
	sw $t0, -3596($fp)
	lw $t0, -3596($fp)
	sw $t0, -8568($fp)
	addi $sp, $sp, -4
	lw $t0, -8532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8568($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8572($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -32
	sw $t0, -8576($fp)
	li $t0, 6
	sw $t0, -8580($fp)
	li $t0, 4
	lw $t1, -8580($fp)
	mul $t0, $t0, $t1
	sw $t0, -8584($fp)
	lw $t0, -8584($fp)
	lw $t1, -8576($fp)
	add $t0, $t0, $t1
	sw $t0, -8588($fp)
	lw $t0, -8588($fp)
	lw $t1, 0($t0)
	sw $t1, -8592($fp)
	li $t0, 61800
	sw $t0, -8596($fp)
	lw $t0, -8592($fp)
	lw $t1, -8596($fp)
	sub $t0, $t0, $t1
	sw $t0, -8600($fp)
	li $t0, 0
	sw $t0, -8604($fp)
	li $t0, 0
	sw $t0, -8608($fp)
	lw $t0, -1232($fp)
	sw $t0, -8612($fp)
	lw $t0, -232($fp)
	sw $t0, -8616($fp)
	lw $t1, -8612($fp)
	lw $t2, -8616($fp)
	bge $t1, $t2, label594
	j label595
label594:
	li $t0, 1
	sw $t0, -8608($fp)
label595:
	lw $t0, -1172($fp)
	sw $t0, -8620($fp)
	lw $t1, -8608($fp)
	lw $t2, -8620($fp)
	beq $t1, $t2, label592
	j label593
label592:
	li $t0, 1
	sw $t0, -8604($fp)
label593:
	lw $t0, -1976($fp)
	sw $t0, -8624($fp)
	li $t0, 60791
	sw $t0, -8628($fp)
	lw $t0, -8624($fp)
	lw $t1, -8628($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8632($fp)
	li $t0, 0
	sw $t0, -8636($fp)
	lw $t0, -2972($fp)
	sw $t0, -8640($fp)
	lw $t1, -8640($fp)
	li $t2, 0
	bne $t1, $t2, label599
	j label597
label599:
	li $t0, 11853
	sw $t0, -8644($fp)
	lw $t1, -8644($fp)
	li $t2, 0
	bne $t1, $t2, label598
	j label597
label598:
	li $t0, 26396
	sw $t0, -8648($fp)
	lw $t1, -8648($fp)
	li $t2, 0
	bne $t1, $t2, label596
	j label597
label596:
	li $t0, 1
	sw $t0, -8636($fp)
label597:
	addi $sp, $sp, -4
	lw $t0, -8600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8636($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8652($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -8656($fp)
	lw $t0, -8092($fp)
	sw $t0, -8660($fp)
	lw $t0, -2648($fp)
	sw $t0, -8664($fp)
	lw $t1, -8660($fp)
	lw $t2, -8664($fp)
	ble $t1, $t2, label602
	j label601
label602:
	li $t0, 1234
	sw $t0, -8668($fp)
	lw $t1, -8668($fp)
	li $t2, 0
	bne $t1, $t2, label600
	j label601
label600:
	li $t0, 1
	sw $t0, -8656($fp)
label601:
	li $t0, 0
	sw $t0, -8672($fp)
	lw $t0, -2240($fp)
	sw $t0, -8676($fp)
	li $t0, 0
	lw $t1, -8676($fp)
	sub $t0, $t0, $t1
	sw $t0, -8680($fp)
	lw $t1, -8680($fp)
	li $t2, 0
	bne $t1, $t2, label604
	j label603
label603:
	li $t0, 1
	sw $t0, -8672($fp)
label604:
	li $t0, 0
	sw $t0, -8684($fp)
	lw $t0, -3908($fp)
	sw $t0, -8688($fp)
	lw $t1, -8688($fp)
	li $t2, 0
	bne $t1, $t2, label608
	j label607
label608:
	lw $t0, -8032($fp)
	sw $t0, -8692($fp)
	lw $t1, -8692($fp)
	li $t2, 0
	bne $t1, $t2, label605
	j label607
label607:
	lw $t0, -8044($fp)
	sw $t0, -8696($fp)
	lw $t1, -8696($fp)
	li $t2, 0
	bne $t1, $t2, label605
	j label606
label605:
	li $t0, 1
	sw $t0, -8684($fp)
label606:
	li $t0, 0
	sw $t0, -8700($fp)
	lw $t0, -3584($fp)
	sw $t0, -8704($fp)
	li $t0, 61963
	sw $t0, -8708($fp)
	lw $t0, -8704($fp)
	lw $t1, -8708($fp)
	mul $t0, $t0, $t1
	sw $t0, -8712($fp)
	lw $t1, -8712($fp)
	li $t2, 0
	bne $t1, $t2, label611
	j label610
label611:
	li $t0, 20648
	sw $t0, -8716($fp)
	lw $t1, -8716($fp)
	li $t2, 0
	bne $t1, $t2, label609
	j label610
label609:
	li $t0, 1
	sw $t0, -8700($fp)
label610:
	addi $sp, $sp, -4
	lw $t0, -8656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8700($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8720($fp)
	addi $sp, $sp, 20
	lw $t0, -8652($fp)
	lw $t1, -8720($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8724($fp)
	li $t0, 0
	lw $t1, -8724($fp)
	sub $t0, $t0, $t1
	sw $t0, -8728($fp)
	lw $t1, -8572($fp)
	lw $t2, -8728($fp)
	blt $t1, $t2, label583
	j label584
label583:
	li $t0, 29751
	sw $t0, -8732($fp)
	lw $t0, -8732($fp)
	sw $t0, -3512($fp)
	lw $t0, -3512($fp)
	sw $t0, -8736($fp)
	li $t0, 0
	sw $t0, -8740($fp)
	lw $t0, -2444($fp)
	sw $t0, -8744($fp)
	li $t0, 0
	sw $t0, -8748($fp)
	li $t0, 2806
	sw $t0, -8752($fp)
	lw $t0, -3632($fp)
	sw $t0, -8756($fp)
	lw $t1, -8752($fp)
	lw $t2, -8756($fp)
	bne $t1, $t2, label614
	j label615
label614:
	li $t0, 1
	sw $t0, -8748($fp)
label615:
	addi $sp, $sp, -4
	lw $t0, -8748($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -8760($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -8760($fp)
	sub $t0, $t0, $t1
	sw $t0, -8764($fp)
	lw $t0, -8744($fp)
	lw $t1, -8764($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8768($fp)
	li $t0, 0
	sw $t0, -8772($fp)
	li $t0, 4715
	sw $t0, -8776($fp)
	lw $t1, -8776($fp)
	li $t2, 0
	bne $t1, $t2, label617
	j label616
label616:
	li $t0, 1
	sw $t0, -8772($fp)
label617:
	lw $t1, -8768($fp)
	lw $t2, -8772($fp)
	bge $t1, $t2, label612
	j label613
label612:
	li $t0, 1
	sw $t0, -8740($fp)
label613:
	j label582
label584:
label576:
	lw $t0, -8032($fp)
	sw $t0, -8780($fp)
	lw $t0, -8780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8044($fp)
	sw $t0, -8784($fp)
	lw $t0, -8784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8056($fp)
	sw $t0, -8788($fp)
	lw $t0, -8788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8068($fp)
	sw $t0, -8792($fp)
	lw $t0, -8792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8080($fp)
	sw $t0, -8796($fp)
	lw $t0, -8796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8092($fp)
	sw $t0, -8800($fp)
	lw $t0, -8800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8104($fp)
	sw $t0, -8804($fp)
	lw $t0, -8804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -8808($fp)
	addi $t0, $fp, -496
	sw $t0, -8812($fp)
	li $t0, 0
	sw $t0, -8816($fp)
	li $t0, 4
	lw $t1, -8816($fp)
	mul $t0, $t0, $t1
	sw $t0, -8820($fp)
	lw $t0, -8820($fp)
	lw $t1, -8812($fp)
	add $t0, $t0, $t1
	sw $t0, -8824($fp)
	lw $t0, -8824($fp)
	lw $t1, 0($t0)
	sw $t1, -8828($fp)
	li $t0, 0
	sw $t0, -8832($fp)
	lw $t0, -944($fp)
	sw $t0, -8836($fp)
	lw $t1, -8836($fp)
	li $t2, 0
	bne $t1, $t2, label622
	j label621
label621:
	li $t0, 1
	sw $t0, -8832($fp)
label622:
	lw $t0, -2468($fp)
	sw $t0, -8840($fp)
	lw $t0, -8832($fp)
	lw $t1, -8840($fp)
	sub $t0, $t0, $t1
	sw $t0, -8844($fp)
	li $t0, 0
	sw $t0, -8848($fp)
	lw $t0, -2240($fp)
	sw $t0, -8852($fp)
	lw $t1, -8852($fp)
	li $t2, 0
	bne $t1, $t2, label623
	j label626
label626:
	lw $t0, -2708($fp)
	sw $t0, -8856($fp)
	lw $t1, -8856($fp)
	li $t2, 0
	bne $t1, $t2, label623
	j label625
label625:
	lw $t0, -2720($fp)
	sw $t0, -8860($fp)
	lw $t1, -8860($fp)
	li $t2, 0
	bne $t1, $t2, label623
	j label624
label623:
	li $t0, 1
	sw $t0, -8848($fp)
label624:
	li $t0, 0
	sw $t0, -8864($fp)
	li $t0, 7065
	sw $t0, -8868($fp)
	li $t0, 0
	lw $t1, -8868($fp)
	sub $t0, $t0, $t1
	sw $t0, -8872($fp)
	lw $t1, -8872($fp)
	li $t2, 0
	bne $t1, $t2, label628
	j label627
label627:
	li $t0, 1
	sw $t0, -8864($fp)
label628:
	li $t0, 0
	sw $t0, -8876($fp)
	lw $t0, -3908($fp)
	sw $t0, -8880($fp)
	lw $t1, -8880($fp)
	li $t2, 0
	bne $t1, $t2, label629
	j label630
label629:
	li $t0, 1
	sw $t0, -8876($fp)
label630:
	addi $sp, $sp, -4
	lw $t0, -8844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8876($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8884($fp)
	addi $sp, $sp, 20
	lw $t0, -8828($fp)
	lw $t1, -8884($fp)
	mul $t0, $t0, $t1
	sw $t0, -8888($fp)
	li $t0, 0
	sw $t0, -8892($fp)
	lw $t0, -944($fp)
	sw $t0, -8896($fp)
	li $t0, 1109
	sw $t0, -8900($fp)
	lw $t1, -8896($fp)
	lw $t2, -8900($fp)
	beq $t1, $t2, label633
	j label632
label633:
	lw $t0, -1172($fp)
	sw $t0, -8904($fp)
	lw $t1, -8904($fp)
	li $t2, 0
	bne $t1, $t2, label631
	j label632
label631:
	li $t0, 1
	sw $t0, -8892($fp)
label632:
	addi $sp, $sp, -4
	lw $t0, -8892($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -8908($fp)
	addi $sp, $sp, 8
	lw $t1, -8888($fp)
	lw $t2, -8908($fp)
	ble $t1, $t2, label618
	j label620
label620:
	li $t0, 64367
	sw $t0, -8912($fp)
	li $t0, 0
	lw $t1, -8912($fp)
	sub $t0, $t0, $t1
	sw $t0, -8916($fp)
	lw $t1, -8916($fp)
	li $t2, 0
	bne $t1, $t2, label619
	j label634
label634:
	addi $t0, $fp, -708
	sw $t0, -8920($fp)
	li $t0, 5
	sw $t0, -8924($fp)
	li $t0, 4
	lw $t1, -8924($fp)
	mul $t0, $t0, $t1
	sw $t0, -8928($fp)
	lw $t0, -8928($fp)
	lw $t1, -8920($fp)
	add $t0, $t0, $t1
	sw $t0, -8932($fp)
	lw $t0, -8932($fp)
	lw $t1, 0($t0)
	sw $t1, -8936($fp)
	lw $t1, -8936($fp)
	li $t2, 0
	bne $t1, $t2, label618
	j label619
label618:
	li $t0, 1
	sw $t0, -8808($fp)
label619:
	lw $ra, -4($fp)
	lw $v0, -8808($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label522
label524:
	li $t0, 53599
	sw $t0, -8940($fp)
	li $t0, 0
	sw $t0, -8944($fp)
	lw $t0, -304($fp)
	sw $t0, -8948($fp)
	li $t0, 0
	lw $t1, -8948($fp)
	sub $t0, $t0, $t1
	sw $t0, -8952($fp)
	lw $t1, -8952($fp)
	li $t2, 0
	bne $t1, $t2, label636
	j label638
label638:
	li $t0, 4280
	sw $t0, -8956($fp)
	lw $t1, -8956($fp)
	li $t2, 0
	bne $t1, $t2, label637
	j label636
label637:
	li $t0, 46890
	sw $t0, -8960($fp)
	lw $t0, -316($fp)
	sw $t0, -8964($fp)
	lw $t0, -8960($fp)
	lw $t1, -8964($fp)
	mul $t0, $t0, $t1
	sw $t0, -8968($fp)
	li $t0, 2900
	sw $t0, -8972($fp)
	lw $t0, -8968($fp)
	lw $t1, -8972($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8976($fp)
	li $t0, 0
	sw $t0, -8980($fp)
	li $t0, 54606
	sw $t0, -8984($fp)
	lw $t1, -8984($fp)
	li $t2, 0
	bne $t1, $t2, label640
	j label639
label639:
	li $t0, 1
	sw $t0, -8980($fp)
label640:
	lw $t1, -8976($fp)
	lw $t2, -8980($fp)
	ble $t1, $t2, label635
	j label636
label635:
	li $t0, 1
	sw $t0, -8944($fp)
label636:
label641:
	lw $t0, -280($fp)
	sw $t0, -8988($fp)
	lw $t0, -8988($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -8992($fp)
	li $t0, 0
	sw $t0, -8996($fp)
	lw $t0, -256($fp)
	sw $t0, -9000($fp)
	lw $t0, -268($fp)
	sw $t0, -9004($fp)
	lw $t0, -9000($fp)
	lw $t1, -9004($fp)
	mul $t0, $t0, $t1
	sw $t0, -9008($fp)
	lw $t1, -9008($fp)
	li $t2, 0
	bne $t1, $t2, label646
	j label645
label646:
	li $t0, 41722
	sw $t0, -9012($fp)
	lw $t1, -9012($fp)
	li $t2, 0
	bne $t1, $t2, label644
	j label645
label644:
	li $t0, 1
	sw $t0, -8996($fp)
label645:
	li $t0, 0
	sw $t0, -9016($fp)
	lw $t0, -220($fp)
	sw $t0, -9020($fp)
	lw $t1, -9020($fp)
	li $t2, 0
	bne $t1, $t2, label648
	j label647
label647:
	li $t0, 1
	sw $t0, -9016($fp)
label648:
	addi $sp, $sp, -4
	lw $t0, -8992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9016($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9024($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -9024($fp)
	sub $t0, $t0, $t1
	sw $t0, -9028($fp)
	addi $t0, $fp, -32
	sw $t0, -9032($fp)
	li $t0, 46073
	sw $t0, -9036($fp)
	li $t0, 25346
	sw $t0, -9040($fp)
	lw $t0, -9036($fp)
	lw $t1, -9040($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9044($fp)
	li $t0, 4
	lw $t1, -9044($fp)
	mul $t0, $t0, $t1
	sw $t0, -9048($fp)
	lw $t0, -9048($fp)
	lw $t1, -9032($fp)
	add $t0, $t0, $t1
	sw $t0, -9052($fp)
	lw $t0, -9052($fp)
	lw $t1, 0($t0)
	sw $t1, -9056($fp)
	lw $t0, -9028($fp)
	lw $t1, -9056($fp)
	add $t0, $t0, $t1
	sw $t0, -9060($fp)
	lw $t1, -9060($fp)
	li $t2, 0
	bne $t1, $t2, label642
	j label643
label642:
	li $t0, 0
	sw $t0, -9064($fp)
	li $t0, 63769
	sw $t0, -9068($fp)
	lw $t0, -244($fp)
	sw $t0, -9072($fp)
	lw $t0, -9068($fp)
	lw $t1, -9072($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9076($fp)
	lw $t1, -9076($fp)
	li $t2, 0
	bne $t1, $t2, label651
	j label650
label651:
	lw $t0, -208($fp)
	sw $t0, -9080($fp)
	lw $t1, -9080($fp)
	li $t2, 0
	bne $t1, $t2, label649
	j label650
label649:
	li $t0, 1
	sw $t0, -9064($fp)
label650:
	lw $ra, -4($fp)
	lw $v0, -9064($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label641
label643:
	addi $t0, $fp, -32
	sw $t0, -9084($fp)
	li $t0, 0
	sw $t0, -9088($fp)
	li $t0, 4
	lw $t1, -9088($fp)
	mul $t0, $t0, $t1
	sw $t0, -9092($fp)
	lw $t0, -9092($fp)
	lw $t1, -9084($fp)
	add $t0, $t0, $t1
	sw $t0, -9096($fp)
	lw $t0, -9096($fp)
	lw $t1, 0($t0)
	sw $t1, -9100($fp)
	lw $t0, -9100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -9104($fp)
	li $t0, 1
	sw $t0, -9108($fp)
	li $t0, 4
	lw $t1, -9108($fp)
	mul $t0, $t0, $t1
	sw $t0, -9112($fp)
	lw $t0, -9112($fp)
	lw $t1, -9104($fp)
	add $t0, $t0, $t1
	sw $t0, -9116($fp)
	lw $t0, -9116($fp)
	lw $t1, 0($t0)
	sw $t1, -9120($fp)
	lw $t0, -9120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -9124($fp)
	li $t0, 2
	sw $t0, -9128($fp)
	li $t0, 4
	lw $t1, -9128($fp)
	mul $t0, $t0, $t1
	sw $t0, -9132($fp)
	lw $t0, -9132($fp)
	lw $t1, -9124($fp)
	add $t0, $t0, $t1
	sw $t0, -9136($fp)
	lw $t0, -9136($fp)
	lw $t1, 0($t0)
	sw $t1, -9140($fp)
	lw $t0, -9140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -9144($fp)
	li $t0, 3
	sw $t0, -9148($fp)
	li $t0, 4
	lw $t1, -9148($fp)
	mul $t0, $t0, $t1
	sw $t0, -9152($fp)
	lw $t0, -9152($fp)
	lw $t1, -9144($fp)
	add $t0, $t0, $t1
	sw $t0, -9156($fp)
	lw $t0, -9156($fp)
	lw $t1, 0($t0)
	sw $t1, -9160($fp)
	lw $t0, -9160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -9164($fp)
	li $t0, 4
	sw $t0, -9168($fp)
	li $t0, 4
	lw $t1, -9168($fp)
	mul $t0, $t0, $t1
	sw $t0, -9172($fp)
	lw $t0, -9172($fp)
	lw $t1, -9164($fp)
	add $t0, $t0, $t1
	sw $t0, -9176($fp)
	lw $t0, -9176($fp)
	lw $t1, 0($t0)
	sw $t1, -9180($fp)
	lw $t0, -9180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -9184($fp)
	li $t0, 5
	sw $t0, -9188($fp)
	li $t0, 4
	lw $t1, -9188($fp)
	mul $t0, $t0, $t1
	sw $t0, -9192($fp)
	lw $t0, -9192($fp)
	lw $t1, -9184($fp)
	add $t0, $t0, $t1
	sw $t0, -9196($fp)
	lw $t0, -9196($fp)
	lw $t1, 0($t0)
	sw $t1, -9200($fp)
	lw $t0, -9200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -9204($fp)
	li $t0, 6
	sw $t0, -9208($fp)
	li $t0, 4
	lw $t1, -9208($fp)
	mul $t0, $t0, $t1
	sw $t0, -9212($fp)
	lw $t0, -9212($fp)
	lw $t1, -9204($fp)
	add $t0, $t0, $t1
	sw $t0, -9216($fp)
	lw $t0, -9216($fp)
	lw $t1, 0($t0)
	sw $t1, -9220($fp)
	lw $t0, -9220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -208($fp)
	sw $t0, -9224($fp)
	lw $t0, -9224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -220($fp)
	sw $t0, -9228($fp)
	lw $t0, -9228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -232($fp)
	sw $t0, -9232($fp)
	lw $t0, -9232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -244($fp)
	sw $t0, -9236($fp)
	lw $t0, -9236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -256($fp)
	sw $t0, -9240($fp)
	lw $t0, -9240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -268($fp)
	sw $t0, -9244($fp)
	lw $t0, -9244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -280($fp)
	sw $t0, -9248($fp)
	lw $t0, -9248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -292($fp)
	sw $t0, -9252($fp)
	lw $t0, -9252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -304($fp)
	sw $t0, -9256($fp)
	lw $t0, -9256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -316($fp)
	sw $t0, -9260($fp)
	lw $t0, -9260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -232($fp)
	sw $t0, -9264($fp)
	lw $ra, -4($fp)
	lw $v0, -9264($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -3968
	li $t0, 35758
	sw $t0, -96($fp)
	addi $t0, $fp, -16
	sw $t0, -100($fp)
	li $t0, 0
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
	li $t0, 27238
	sw $t0, -120($fp)
	addi $t0, $fp, -16
	sw $t0, -124($fp)
	li $t0, 1
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
	li $t0, 61235
	sw $t0, -144($fp)
	addi $t0, $fp, -16
	sw $t0, -148($fp)
	li $t0, 2
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
	li $t0, 47611
	sw $t0, -168($fp)
	addi $t0, $fp, -40
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
	li $t0, 53635
	sw $t0, -192($fp)
	addi $t0, $fp, -40
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
	li $t0, 56491
	sw $t0, -216($fp)
	addi $t0, $fp, -40
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
	li $t0, 30939
	sw $t0, -240($fp)
	addi $t0, $fp, -40
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
	li $t0, 2499
	sw $t0, -264($fp)
	addi $t0, $fp, -40
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
	li $t0, 52755
	sw $t0, -288($fp)
	addi $t0, $fp, -40
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
	li $t0, 27366
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	li $t0, 23148
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
	li $t0, 53989
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	li $t0, 57118
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -368($fp)
	li $t0, 25954
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -380($fp)
	li $t0, 58704
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -392($fp)
	li $t0, 22823
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
	li $t0, 3113
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -416($fp)
	li $t0, 233
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	li $t0, 23932
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	li $t0, 1944
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	li $t0, 51740
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	li $t0, 8777
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	li $t0, 55543
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
	li $t0, 56021
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
	li $t0, 55667
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
	li $t0, 58443
	sw $t0, -552($fp)
	addi $t0, $fp, -68
	sw $t0, -556($fp)
	li $t0, 3
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
	li $t0, 45091
	sw $t0, -576($fp)
	addi $t0, $fp, -68
	sw $t0, -580($fp)
	li $t0, 4
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
	li $t0, 31854
	sw $t0, -600($fp)
	addi $t0, $fp, -68
	sw $t0, -604($fp)
	li $t0, 5
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
	li $t0, 38980
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -632($fp)
	li $t0, 4901
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	li $t0, 30087
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -656($fp)
	li $t0, 9202
	sw $t0, -660($fp)
	addi $t0, $fp, -80
	sw $t0, -664($fp)
	li $t0, 0
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
	li $t0, 32139
	sw $t0, -684($fp)
	addi $t0, $fp, -80
	sw $t0, -688($fp)
	li $t0, 1
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
	li $t0, 25787
	sw $t0, -708($fp)
	addi $t0, $fp, -80
	sw $t0, -712($fp)
	li $t0, 2
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
	li $t0, 56814
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -740($fp)
	li $t0, 20238
	sw $t0, -744($fp)
	addi $t0, $fp, -92
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
	li $t0, 16742
	sw $t0, -768($fp)
	addi $t0, $fp, -92
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
	li $t0, 22217
	sw $t0, -792($fp)
	addi $t0, $fp, -92
	sw $t0, -796($fp)
	li $t0, 2
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -804($fp)
	lw $t0, -796($fp)
	lw $t1, -804($fp)
	add $t0, $t0, $t1
	sw $t0, -808($fp)
	lw $t0, -792($fp)
	lw $t1, -808($fp)
	sw $t0, 0($t1)
	lw $t0, -808($fp)
	lw $t1, 0($t0)
	sw $t1, -812($fp)
	li $t0, 22738
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -824($fp)
	li $t0, 3961
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -836($fp)
	li $t0, 49584
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -848($fp)
	li $t0, 45886
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -860($fp)
	addi $t0, $fp, -16
	sw $t0, -864($fp)
	li $t0, 0
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
	addi $t0, $fp, -16
	sw $t0, -884($fp)
	li $t0, 1
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
	addi $t0, $fp, -16
	sw $t0, -904($fp)
	li $t0, 2
	sw $t0, -908($fp)
	li $t0, 4
	lw $t1, -908($fp)
	mul $t0, $t0, $t1
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	lw $t1, -904($fp)
	add $t0, $t0, $t1
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	lw $t1, 0($t0)
	sw $t1, -920($fp)
	lw $t0, -920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	lw $t0, -316($fp)
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1048($fp)
	li $t0, 0
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
	lw $t0, -352($fp)
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -364($fp)
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -376($fp)
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -388($fp)
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -400($fp)
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -412($fp)
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -424($fp)
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -436($fp)
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -448($fp)
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -460($fp)
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -472($fp)
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1112($fp)
	li $t0, 0
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
	addi $t0, $fp, -68
	sw $t0, -1132($fp)
	li $t0, 1
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
	addi $t0, $fp, -68
	sw $t0, -1152($fp)
	li $t0, 2
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
	addi $t0, $fp, -68
	sw $t0, -1172($fp)
	li $t0, 3
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
	addi $t0, $fp, -68
	sw $t0, -1192($fp)
	li $t0, 4
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
	addi $t0, $fp, -68
	sw $t0, -1212($fp)
	li $t0, 5
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
	lw $t0, -628($fp)
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -640($fp)
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -652($fp)
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
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
	addi $t0, $fp, -80
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
	addi $t0, $fp, -80
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
	lw $t0, -736($fp)
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -1308($fp)
	li $t0, 0
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
	lw $t0, -1324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -1328($fp)
	li $t0, 1
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
	lw $t0, -1344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -1348($fp)
	li $t0, 2
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
	lw $t0, -1364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -820($fp)
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -832($fp)
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -844($fp)
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -856($fp)
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1384($fp)
	li $t0, 0
	sw $t0, -1388($fp)
	li $t0, 57951
	sw $t0, -1392($fp)
	lw $t1, -1392($fp)
	li $t2, 0
	bne $t1, $t2, label655
	j label656
label655:
	li $t0, 1
	sw $t0, -1388($fp)
label656:
	li $t0, 41166
	sw $t0, -1396($fp)
	lw $t0, -1388($fp)
	lw $t1, -1396($fp)
	add $t0, $t0, $t1
	sw $t0, -1400($fp)
	lw $t1, -1400($fp)
	li $t2, 0
	bne $t1, $t2, label654
	j label653
label654:
	li $t0, 6304
	sw $t0, -1404($fp)
	li $t0, 0
	lw $t1, -1404($fp)
	sub $t0, $t0, $t1
	sw $t0, -1408($fp)
	lw $t1, -1408($fp)
	li $t2, 0
	bne $t1, $t2, label653
	j label652
label652:
	li $t0, 1
	sw $t0, -1384($fp)
label653:
	lw $ra, -4($fp)
	lw $v0, -1384($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 51119
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	sw $t0, -1416($fp)
	lw $t0, -1416($fp)
	sw $t0, -1420($fp)
	li $t0, 63989
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	sw $t0, -1432($fp)
	li $t0, 9417
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	sw $t0, -1444($fp)
	li $t0, 51353
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	sw $t0, -1456($fp)
	lw $t0, -1416($fp)
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1428($fp)
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1440($fp)
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1452($fp)
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -424($fp)
	sw $t0, -1476($fp)
	lw $ra, -4($fp)
	lw $v0, -1476($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label657:
	li $t0, 0
	sw $t0, -1480($fp)
	li $t0, 22385
	sw $t0, -1484($fp)
	li $t0, 11361
	sw $t0, -1488($fp)
	lw $t0, -1484($fp)
	lw $t1, -1488($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1492($fp)
	lw $t0, -364($fp)
	sw $t0, -1496($fp)
	lw $t0, -1492($fp)
	lw $t1, -1496($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1500($fp)
	li $t0, 0
	sw $t0, -1504($fp)
	li $t0, 37557
	sw $t0, -1508($fp)
	lw $t1, -1508($fp)
	li $t2, 0
	bne $t1, $t2, label664
	j label663
label663:
	li $t0, 1
	sw $t0, -1504($fp)
label664:
	lw $t1, -1500($fp)
	lw $t2, -1504($fp)
	bge $t1, $t2, label661
	j label662
label661:
	li $t0, 1
	sw $t0, -1480($fp)
label662:
	lw $t0, -412($fp)
	sw $t0, -1512($fp)
	li $t0, 31162
	sw $t0, -1516($fp)
	lw $t0, -1512($fp)
	lw $t1, -1516($fp)
	add $t0, $t0, $t1
	sw $t0, -1520($fp)
	lw $t0, -352($fp)
	sw $t0, -1524($fp)
	lw $t0, -1520($fp)
	lw $t1, -1524($fp)
	sub $t0, $t0, $t1
	sw $t0, -1528($fp)
	lw $t1, -1480($fp)
	lw $t2, -1528($fp)
	beq $t1, $t2, label660
	j label659
label660:
	li $t0, 1368
	sw $t0, -1532($fp)
	lw $t1, -1532($fp)
	li $t2, 0
	bne $t1, $t2, label658
	j label659
label658:
	li $t0, 0
	sw $t0, -1536($fp)
	addi $t0, $fp, -40
	sw $t0, -1540($fp)
	li $t0, 0
	sw $t0, -1544($fp)
	li $t0, 28042
	sw $t0, -1548($fp)
	li $t0, 21293
	sw $t0, -1552($fp)
	lw $t1, -1548($fp)
	lw $t2, -1552($fp)
	bgt $t1, $t2, label667
	j label668
label667:
	li $t0, 1
	sw $t0, -1544($fp)
label668:
	li $t0, 4
	lw $t1, -1544($fp)
	mul $t0, $t0, $t1
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	lw $t1, -1540($fp)
	add $t0, $t0, $t1
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	lw $t1, 0($t0)
	sw $t1, -1564($fp)
	lw $t0, -412($fp)
	sw $t0, -1568($fp)
	lw $t0, -1564($fp)
	lw $t1, -1568($fp)
	mul $t0, $t0, $t1
	sw $t0, -1572($fp)
	li $t0, 59811
	sw $t0, -1576($fp)
	li $t0, 7597
	sw $t0, -1580($fp)
	lw $t0, -1576($fp)
	lw $t1, -1580($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1584($fp)
	li $t0, 53147
	sw $t0, -1588($fp)
	lw $t0, -1584($fp)
	lw $t1, -1588($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1592($fp)
	addi $t0, $fp, -40
	sw $t0, -1596($fp)
	lw $t0, 16($fp)
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
	lw $t0, -1592($fp)
	lw $t1, -1612($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1616($fp)
	lw $t1, -1572($fp)
	lw $t2, -1616($fp)
	bgt $t1, $t2, label665
	j label666
label665:
	li $t0, 1
	sw $t0, -1536($fp)
label666:
	li $t0, 0
	sw $t0, -1620($fp)
	lw $t0, -736($fp)
	sw $t0, -1624($fp)
	lw $t1, -1624($fp)
	li $t2, 0
	bne $t1, $t2, label670
	j label669
label669:
	li $t0, 1
	sw $t0, -1620($fp)
label670:
	li $t0, 0
	lw $t1, -1620($fp)
	sub $t0, $t0, $t1
	sw $t0, -1628($fp)
	j label657
label659:
	li $t0, 33255
	sw $t0, -1632($fp)
	lw $t1, -1632($fp)
	li $t2, 0
	bne $t1, $t2, label671
	j label672
label671:
	li $t0, 12498
	sw $t0, -1676($fp)
	addi $t0, $fp, -1672
	sw $t0, -1680($fp)
	li $t0, 0
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
	li $t0, 17699
	sw $t0, -1700($fp)
	addi $t0, $fp, -1672
	sw $t0, -1704($fp)
	li $t0, 1
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
	li $t0, 42458
	sw $t0, -1724($fp)
	addi $t0, $fp, -1672
	sw $t0, -1728($fp)
	li $t0, 2
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
	li $t0, 44638
	sw $t0, -1748($fp)
	addi $t0, $fp, -1672
	sw $t0, -1752($fp)
	li $t0, 3
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
	li $t0, 43486
	sw $t0, -1772($fp)
	addi $t0, $fp, -1672
	sw $t0, -1776($fp)
	li $t0, 4
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
	li $t0, 33736
	sw $t0, -1796($fp)
	addi $t0, $fp, -1672
	sw $t0, -1800($fp)
	li $t0, 5
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
	li $t0, 64876
	sw $t0, -1820($fp)
	addi $t0, $fp, -1672
	sw $t0, -1824($fp)
	li $t0, 6
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
	li $t0, 60228
	sw $t0, -1844($fp)
	addi $t0, $fp, -1672
	sw $t0, -1848($fp)
	li $t0, 7
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
	li $t0, 55953
	sw $t0, -1868($fp)
	addi $t0, $fp, -1672
	sw $t0, -1872($fp)
	li $t0, 8
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
	li $t0, 22078
	sw $t0, -1892($fp)
	addi $t0, $fp, -1672
	sw $t0, -1896($fp)
	li $t0, 9
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
	li $t0, 64189
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	sw $t0, -1920($fp)
	lw $t0, -1920($fp)
	sw $t0, -1924($fp)
	li $t0, 0
	sw $t0, -1928($fp)
	lw $t0, -844($fp)
	sw $t0, -1932($fp)
	li $t0, 40001
	sw $t0, -1936($fp)
	lw $t0, -1932($fp)
	lw $t1, -1936($fp)
	mul $t0, $t0, $t1
	sw $t0, -1940($fp)
	lw $t0, -856($fp)
	sw $t0, -1944($fp)
	li $t0, 0
	lw $t1, -1944($fp)
	sub $t0, $t0, $t1
	sw $t0, -1948($fp)
	lw $t1, -1940($fp)
	lw $t2, -1948($fp)
	bgt $t1, $t2, label674
	j label675
label674:
	li $t0, 1
	sw $t0, -1928($fp)
label675:
	addi $t0, $fp, -40
	sw $t0, -1952($fp)
	lw $t0, -1920($fp)
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
	li $t0, 2428
	sw $t0, -1972($fp)
	lw $t0, -1968($fp)
	lw $t1, -1972($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1976($fp)
	li $t0, 0
	lw $t1, -1976($fp)
	sub $t0, $t0, $t1
	sw $t0, -1980($fp)
	li $t0, 0
	sw $t0, -1984($fp)
	addi $t0, $fp, -1672
	sw $t0, -1988($fp)
	li $t0, 1
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
	lw $t1, -2004($fp)
	li $t2, 0
	bne $t1, $t2, label677
	j label676
label676:
	li $t0, 1
	sw $t0, -1984($fp)
label677:
	lw $t0, -1980($fp)
	lw $t1, -1984($fp)
	sub $t0, $t0, $t1
	sw $t0, -2008($fp)
label672:
label678:
	li $t0, 8733
	sw $t0, -2012($fp)
	lw $t1, -2012($fp)
	li $t2, 0
	bne $t1, $t2, label679
	j label680
label679:
label681:
	li $t0, 0
	sw $t0, -2016($fp)
	addi $t0, $fp, -68
	sw $t0, -2020($fp)
	li $t0, 0
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
	lw $t1, -2036($fp)
	li $t2, 0
	bne $t1, $t2, label686
	j label684
label686:
	lw $t0, -364($fp)
	sw $t0, -2040($fp)
	lw $t1, -2040($fp)
	li $t2, 0
	bne $t1, $t2, label685
	j label684
label684:
	li $t0, 1
	sw $t0, -2016($fp)
label685:
	lw $t0, -2016($fp)
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -2044($fp)
	lw $t1, -2044($fp)
	li $t2, 0
	bne $t1, $t2, label682
	j label683
label682:
	li $t0, 0
	sw $t0, -2048($fp)
	li $t0, 36469
	sw $t0, -2052($fp)
	lw $t1, -2052($fp)
	li $t2, 0
	bne $t1, $t2, label693
	j label692
label693:
	li $t0, 29512
	sw $t0, -2056($fp)
	lw $t1, -2056($fp)
	li $t2, 0
	bne $t1, $t2, label690
	j label692
label692:
	li $t0, 26
	sw $t0, -2060($fp)
	lw $t1, -2060($fp)
	li $t2, 0
	bne $t1, $t2, label690
	j label691
label690:
	li $t0, 1
	sw $t0, -2048($fp)
label691:
	lw $t0, -472($fp)
	sw $t0, -2064($fp)
	lw $t0, -1416($fp)
	sw $t0, -2068($fp)
	li $t0, 0
	sw $t0, -2072($fp)
	lw $t0, -1452($fp)
	sw $t0, -2076($fp)
	lw $t0, -412($fp)
	sw $t0, -2080($fp)
	lw $t1, -2076($fp)
	lw $t2, -2080($fp)
	bne $t1, $t2, label694
	j label695
label694:
	li $t0, 1
	sw $t0, -2072($fp)
label695:
	li $t0, 0
	sw $t0, -2084($fp)
	li $t0, 0
	sw $t0, -2088($fp)
	lw $t0, 4($fp)
	sw $t0, -2092($fp)
	li $t0, 0
	lw $t1, -2092($fp)
	sub $t0, $t0, $t1
	sw $t0, -2096($fp)
	lw $t1, -2096($fp)
	li $t2, 0
	bne $t1, $t2, label699
	j label698
label698:
	li $t0, 1
	sw $t0, -2088($fp)
label699:
	lw $t0, -316($fp)
	sw $t0, -2100($fp)
	lw $t0, -2100($fp)
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -2104($fp)
	addi $sp, $sp, -4
	lw $t0, -2104($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2108($fp)
	addi $sp, $sp, 8
	li $t0, 28005
	sw $t0, -2112($fp)
	lw $t0, -2108($fp)
	lw $t1, -2112($fp)
	sub $t0, $t0, $t1
	sw $t0, -2116($fp)
	li $t0, 0
	sw $t0, -2120($fp)
	lw $t0, -364($fp)
	sw $t0, -2124($fp)
	lw $t0, -1440($fp)
	sw $t0, -2128($fp)
	lw $t0, -2124($fp)
	lw $t1, -2128($fp)
	sub $t0, $t0, $t1
	sw $t0, -2132($fp)
	lw $t0, -628($fp)
	sw $t0, -2136($fp)
	lw $t1, -2132($fp)
	lw $t2, -2136($fp)
	bgt $t1, $t2, label700
	j label701
label700:
	li $t0, 1
	sw $t0, -2120($fp)
label701:
	li $t0, 0
	sw $t0, -2140($fp)
	li $t0, 0
	sw $t0, -2144($fp)
	li $t0, 18150
	sw $t0, -2148($fp)
	lw $t0, -2148($fp)
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -2152($fp)
	addi $sp, $sp, -4
	lw $t0, -2152($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2156($fp)
	addi $sp, $sp, 8
	lw $t0, 8($fp)
	sw $t0, -2160($fp)
	lw $t1, -2156($fp)
	lw $t2, -2160($fp)
	beq $t1, $t2, label705
	j label706
label705:
	li $t0, 1
	sw $t0, -2144($fp)
label706:
	addi $sp, $sp, -4
	lw $t0, -2144($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2164($fp)
	addi $sp, $sp, 8
	lw $t1, -2164($fp)
	li $t2, 0
	bne $t1, $t2, label702
	j label704
label704:
	lw $t0, -400($fp)
	sw $t0, -2168($fp)
	lw $t1, -2168($fp)
	li $t2, 0
	bne $t1, $t2, label702
	j label703
label702:
	li $t0, 1
	sw $t0, -2140($fp)
label703:
	addi $sp, $sp, -4
	lw $t0, -2088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2140($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2172($fp)
	addi $sp, $sp, 20
	lw $t0, -316($fp)
	sw $t0, -2176($fp)
	lw $t1, -2172($fp)
	lw $t2, -2176($fp)
	beq $t1, $t2, label696
	j label697
label696:
	li $t0, 1
	sw $t0, -2084($fp)
label697:
	addi $sp, $sp, -4
	lw $t0, -2064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2084($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2180($fp)
	addi $sp, $sp, 20
	lw $t0, -460($fp)
	sw $t0, -2184($fp)
	lw $t0, -2184($fp)
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	sw $t0, -2188($fp)
	addi $sp, $sp, -4
	lw $t0, -2048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2188($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2192($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -40
	sw $t0, -2196($fp)
	li $t0, 0
	sw $t0, -2200($fp)
	li $t0, 2095
	sw $t0, -2204($fp)
	lw $t0, -1452($fp)
	sw $t0, -2208($fp)
	lw $t1, -2204($fp)
	lw $t2, -2208($fp)
	bne $t1, $t2, label707
	j label708
label707:
	li $t0, 1
	sw $t0, -2200($fp)
label708:
	li $t0, 4
	lw $t1, -2200($fp)
	mul $t0, $t0, $t1
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	lw $t1, -2196($fp)
	add $t0, $t0, $t1
	sw $t0, -2216($fp)
	lw $t0, -2216($fp)
	lw $t1, 0($t0)
	sw $t1, -2220($fp)
	lw $t0, -2192($fp)
	lw $t1, -2220($fp)
	sub $t0, $t0, $t1
	sw $t0, -2224($fp)
	lw $t1, -2224($fp)
	li $t2, 0
	bne $t1, $t2, label687
	j label688
label687:
	addi $t0, $fp, -16
	sw $t0, -2228($fp)
	addi $t0, $fp, -40
	sw $t0, -2232($fp)
	li $t0, 5
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
	li $t0, 0
	lw $t1, -2248($fp)
	sub $t0, $t0, $t1
	sw $t0, -2252($fp)
	li $t0, 4
	lw $t1, -2252($fp)
	mul $t0, $t0, $t1
	sw $t0, -2256($fp)
	lw $t0, -2256($fp)
	lw $t1, -2228($fp)
	add $t0, $t0, $t1
	sw $t0, -2260($fp)
	lw $t0, -2260($fp)
	lw $t1, 0($t0)
	sw $t1, -2264($fp)
	j label689
label688:
	li $t0, 0
	sw $t0, -2268($fp)
	li $t0, 23389
	sw $t0, -2272($fp)
	lw $t1, -2272($fp)
	li $t2, 0
	bne $t1, $t2, label709
	j label711
label711:
	li $t0, 0
	sw $t0, -2276($fp)
	li $t0, 25156
	sw $t0, -2280($fp)
	li $t0, 35666
	sw $t0, -2284($fp)
	lw $t0, -2280($fp)
	lw $t1, -2284($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2288($fp)
	li $t0, 11000
	sw $t0, -2292($fp)
	lw $t1, -2288($fp)
	lw $t2, -2292($fp)
	bne $t1, $t2, label712
	j label713
label712:
	li $t0, 1
	sw $t0, -2276($fp)
label713:
	lw $t0, -364($fp)
	sw $t0, -2296($fp)
	lw $t1, -2276($fp)
	lw $t2, -2296($fp)
	bne $t1, $t2, label709
	j label710
label709:
	li $t0, 1
	sw $t0, -2268($fp)
label710:
label689:
	j label681
label683:
	j label678
label680:
	li $t0, 0
	sw $t0, -2300($fp)
	li $t0, 28699
	sw $t0, -2304($fp)
	lw $t1, -2304($fp)
	li $t2, 0
	bne $t1, $t2, label719
	j label718
label719:
	lw $t0, -424($fp)
	sw $t0, -2308($fp)
	lw $t1, -2308($fp)
	li $t2, 0
	bne $t1, $t2, label717
	j label718
label717:
	li $t0, 1
	sw $t0, -2300($fp)
label718:
	li $t0, 0
	sw $t0, -2312($fp)
	lw $t0, -736($fp)
	sw $t0, -2316($fp)
	lw $t1, -2316($fp)
	li $t2, 0
	bne $t1, $t2, label721
	j label720
label720:
	li $t0, 1
	sw $t0, -2312($fp)
label721:
	li $t0, 48165
	sw $t0, -2320($fp)
	lw $t0, -2312($fp)
	lw $t1, -2320($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2324($fp)
	li $t0, 58411
	sw $t0, -2328($fp)
	lw $t0, -2328($fp)
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -2332($fp)
	addi $sp, $sp, -4
	lw $t0, -2300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2332($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2336($fp)
	addi $sp, $sp, 16
	lw $t0, -400($fp)
	sw $t0, -2340($fp)
	lw $t0, -2336($fp)
	lw $t1, -2340($fp)
	mul $t0, $t0, $t1
	sw $t0, -2344($fp)
	lw $t1, -2344($fp)
	li $t2, 0
	bne $t1, $t2, label714
	j label715
label714:
	li $t0, 0
	sw $t0, -2348($fp)
	addi $t0, $fp, -40
	sw $t0, -2352($fp)
	li $t0, 3
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
	li $t0, 0
	lw $t1, -2368($fp)
	sub $t0, $t0, $t1
	sw $t0, -2372($fp)
	lw $t1, -2372($fp)
	li $t2, 0
	bne $t1, $t2, label724
	j label723
label724:
	addi $t0, $fp, -44
	sw $t0, -2376($fp)
	li $t0, 0
	sw $t0, -2380($fp)
	li $t0, 3533
	sw $t0, -2384($fp)
	lw $t1, -2384($fp)
	li $t2, 0
	bne $t1, $t2, label725
	j label727
label727:
	lw $t0, -640($fp)
	sw $t0, -2388($fp)
	lw $t1, -2388($fp)
	li $t2, 0
	bne $t1, $t2, label725
	j label726
label725:
	li $t0, 1
	sw $t0, -2380($fp)
label726:
	li $t0, 4
	lw $t1, -2380($fp)
	mul $t0, $t0, $t1
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	lw $t1, -2376($fp)
	add $t0, $t0, $t1
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	lw $t1, 0($t0)
	sw $t1, -2400($fp)
	lw $t1, -2400($fp)
	li $t2, 0
	bne $t1, $t2, label722
	j label723
label722:
	li $t0, 1
	sw $t0, -2348($fp)
label723:
	lw $ra, -4($fp)
	lw $v0, -2348($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 26607
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -2412($fp)
	lw $t0, -2412($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -2416($fp)
	lw $t1, -2416($fp)
	li $t2, 0
	bne $t1, $t2, label728
	j label729
label728:
label731:
	addi $t0, $fp, -40
	sw $t0, -2420($fp)
	lw $t0, -448($fp)
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
	li $t0, 1341
	sw $t0, -2440($fp)
	lw $t0, -2436($fp)
	lw $t1, -2440($fp)
	mul $t0, $t0, $t1
	sw $t0, -2444($fp)
	li $t0, 0
	lw $t1, -2444($fp)
	sub $t0, $t0, $t1
	sw $t0, -2448($fp)
	li $t0, 0
	sw $t0, -2452($fp)
	li $t0, 59487
	sw $t0, -2456($fp)
	lw $t0, -820($fp)
	sw $t0, -2460($fp)
	lw $t0, -2456($fp)
	lw $t1, -2460($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2464($fp)
	lw $t0, -832($fp)
	sw $t0, -2468($fp)
	lw $t0, -652($fp)
	sw $t0, -2472($fp)
	lw $t0, -2468($fp)
	lw $t1, -2472($fp)
	add $t0, $t0, $t1
	sw $t0, -2476($fp)
	lw $t1, -2464($fp)
	lw $t2, -2476($fp)
	bge $t1, $t2, label734
	j label735
label734:
	li $t0, 1
	sw $t0, -2452($fp)
label735:
	lw $t1, -2448($fp)
	lw $t2, -2452($fp)
	bne $t1, $t2, label732
	j label733
label732:
	li $t0, 48686
	sw $t0, -2480($fp)
	j label731
label733:
	j label730
label729:
	lw $t0, -400($fp)
	sw $t0, -2484($fp)
	lw $t0, -628($fp)
	sw $t0, -2488($fp)
	lw $t0, -2484($fp)
	lw $t1, -2488($fp)
	mul $t0, $t0, $t1
	sw $t0, -2492($fp)
	lw $t0, -652($fp)
	sw $t0, -2496($fp)
	lw $t0, -2492($fp)
	lw $t1, -2496($fp)
	mul $t0, $t0, $t1
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -2504($fp)
label730:
	li $t0, 65531
	sw $t0, -2508($fp)
	lw $t0, -2508($fp)
	sw $t0, -2512($fp)
	lw $t0, -2512($fp)
	sw $t0, -2516($fp)
	li $t0, 0
	sw $t0, -2520($fp)
	li $t0, 0
	sw $t0, -2524($fp)
	lw $t0, -628($fp)
	sw $t0, -2528($fp)
	lw $t1, -2528($fp)
	li $t2, 0
	bne $t1, $t2, label742
	j label740
label742:
	lw $t0, -736($fp)
	sw $t0, -2532($fp)
	lw $t1, -2532($fp)
	li $t2, 0
	bne $t1, $t2, label741
	j label740
label741:
	li $t0, 33952
	sw $t0, -2536($fp)
	lw $t1, -2536($fp)
	li $t2, 0
	bne $t1, $t2, label739
	j label740
label739:
	li $t0, 1
	sw $t0, -2524($fp)
label740:
	addi $sp, $sp, -4
	lw $t0, -2524($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2540($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2544($fp)
	li $t0, 3
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
	lw $t1, -2564($fp)
	li $t2, 0
	bne $t1, $t2, label736
	j label738
label738:
	li $t0, 49584
	sw $t0, -2568($fp)
	lw $t1, -2568($fp)
	li $t2, 0
	bne $t1, $t2, label736
	j label737
label736:
	li $t0, 1
	sw $t0, -2520($fp)
label737:
	li $t0, 0
	sw $t0, -2572($fp)
	li $t0, 0
	sw $t0, -2576($fp)
	addi $t0, $fp, -40
	sw $t0, -2580($fp)
	lw $t0, 16($fp)
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
	bne $t1, $t2, label745
	j label746
label745:
	li $t0, 1
	sw $t0, -2576($fp)
label746:
	li $t0, 0
	sw $t0, -2600($fp)
	li $t0, 60086
	sw $t0, -2604($fp)
	lw $t1, -2604($fp)
	li $t2, 0
	bne $t1, $t2, label748
	j label747
label747:
	li $t0, 1
	sw $t0, -2600($fp)
label748:
	li $t0, 0
	lw $t1, -2600($fp)
	sub $t0, $t0, $t1
	sw $t0, -2608($fp)
	li $t0, 23816
	sw $t0, -2612($fp)
	li $t0, 0
	lw $t1, -2612($fp)
	sub $t0, $t0, $t1
	sw $t0, -2616($fp)
	li $t0, 0
	sw $t0, -2620($fp)
	li $t0, 36697
	sw $t0, -2624($fp)
	lw $t0, -316($fp)
	sw $t0, -2628($fp)
	lw $t1, -2624($fp)
	lw $t2, -2628($fp)
	bge $t1, $t2, label751
	j label750
label751:
	li $t0, 7318
	sw $t0, -2632($fp)
	lw $t1, -2632($fp)
	li $t2, 0
	bne $t1, $t2, label749
	j label750
label749:
	li $t0, 1
	sw $t0, -2620($fp)
label750:
	li $t0, 0
	sw $t0, -2636($fp)
	li $t0, 0
	sw $t0, -2640($fp)
	li $t0, 41974
	sw $t0, -2644($fp)
	li $t0, 61283
	sw $t0, -2648($fp)
	lw $t1, -2644($fp)
	lw $t2, -2648($fp)
	beq $t1, $t2, label754
	j label755
label754:
	li $t0, 1
	sw $t0, -2640($fp)
label755:
	lw $t0, -2512($fp)
	sw $t0, -2652($fp)
	lw $t1, -2640($fp)
	lw $t2, -2652($fp)
	bne $t1, $t2, label752
	j label753
label752:
	li $t0, 1
	sw $t0, -2636($fp)
label753:
	addi $t0, $fp, -68
	sw $t0, -2656($fp)
	lw $t0, 12($fp)
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
	addi $sp, $sp, -4
	lw $t0, -2620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2672($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2676($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -2680($fp)
	li $t0, 34602
	sw $t0, -2684($fp)
	li $t0, 0
	lw $t1, -2684($fp)
	sub $t0, $t0, $t1
	sw $t0, -2688($fp)
	lw $t1, -2688($fp)
	li $t2, 0
	bne $t1, $t2, label757
	j label756
label756:
	li $t0, 1
	sw $t0, -2680($fp)
label757:
	li $t0, 61256
	sw $t0, -2692($fp)
	lw $t0, -448($fp)
	sw $t0, -2696($fp)
	lw $t0, -2692($fp)
	lw $t1, -2696($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2700($fp)
	li $t0, 0
	lw $t1, -2700($fp)
	sub $t0, $t0, $t1
	sw $t0, -2704($fp)
	li $t0, 0
	sw $t0, -2708($fp)
	li $t0, 0
	sw $t0, -2712($fp)
	li $t0, 33251
	sw $t0, -2716($fp)
	li $t0, 63668
	sw $t0, -2720($fp)
	lw $t1, -2716($fp)
	lw $t2, -2720($fp)
	bgt $t1, $t2, label760
	j label761
label760:
	li $t0, 1
	sw $t0, -2712($fp)
label761:
	li $t0, 12462
	sw $t0, -2724($fp)
	lw $t1, -2712($fp)
	lw $t2, -2724($fp)
	ble $t1, $t2, label758
	j label759
label758:
	li $t0, 1
	sw $t0, -2708($fp)
label759:
	addi $t0, $fp, -40
	sw $t0, -2728($fp)
	lw $t0, -424($fp)
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
	li $t0, 59847
	sw $t0, -2748($fp)
	lw $t0, -2744($fp)
	lw $t1, -2748($fp)
	add $t0, $t0, $t1
	sw $t0, -2752($fp)
	addi $sp, $sp, -4
	lw $t0, -2680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2752($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2756($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -2608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2756($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2760($fp)
	addi $sp, $sp, 20
	lw $t1, -2576($fp)
	lw $t2, -2760($fp)
	bge $t1, $t2, label743
	j label744
label743:
	li $t0, 1
	sw $t0, -2572($fp)
label744:
	li $t0, 0
	sw $t0, -2764($fp)
	addi $t0, $fp, -40
	sw $t0, -2768($fp)
	li $t0, 0
	sw $t0, -2772($fp)
	li $t0, 32474
	sw $t0, -2776($fp)
	lw $t1, -2776($fp)
	li $t2, 0
	bne $t1, $t2, label766
	j label765
label765:
	li $t0, 1
	sw $t0, -2772($fp)
label766:
	li $t0, 4
	lw $t1, -2772($fp)
	mul $t0, $t0, $t1
	sw $t0, -2780($fp)
	lw $t0, -2780($fp)
	lw $t1, -2768($fp)
	add $t0, $t0, $t1
	sw $t0, -2784($fp)
	lw $t0, -2784($fp)
	lw $t1, 0($t0)
	sw $t1, -2788($fp)
	li $t0, 0
	sw $t0, -2792($fp)
	lw $t0, -412($fp)
	sw $t0, -2796($fp)
	lw $t1, -2796($fp)
	li $t2, 0
	bne $t1, $t2, label768
	j label767
label767:
	li $t0, 1
	sw $t0, -2792($fp)
label768:
	lw $t0, -2788($fp)
	lw $t1, -2792($fp)
	mul $t0, $t0, $t1
	sw $t0, -2800($fp)
	lw $t1, -2800($fp)
	li $t2, 0
	bne $t1, $t2, label762
	j label764
label764:
	li $t0, 0
	sw $t0, -2804($fp)
	li $t0, 59482
	sw $t0, -2808($fp)
	lw $t1, -2808($fp)
	li $t2, 0
	bne $t1, $t2, label769
	j label770
label769:
	li $t0, 1
	sw $t0, -2804($fp)
label770:
	li $t0, 5551
	sw $t0, -2812($fp)
	li $t0, 25350
	sw $t0, -2816($fp)
	lw $t0, -2812($fp)
	lw $t1, -2816($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2820($fp)
	lw $t1, -2804($fp)
	lw $t2, -2820($fp)
	bgt $t1, $t2, label762
	j label763
label762:
	li $t0, 1
	sw $t0, -2764($fp)
label763:
	j label716
label715:
	li $t0, 0
	sw $t0, -2824($fp)
	li $t0, 0
	sw $t0, -2828($fp)
	li $t0, 58168
	sw $t0, -2832($fp)
	li $t0, 0
	lw $t1, -2832($fp)
	sub $t0, $t0, $t1
	sw $t0, -2836($fp)
	lw $t1, -2836($fp)
	li $t2, 0
	bne $t1, $t2, label778
	j label777
label777:
	li $t0, 1
	sw $t0, -2828($fp)
label778:
	li $t0, 42241
	sw $t0, -2840($fp)
	lw $t0, -2840($fp)
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -2844($fp)
	li $t0, 30450
	sw $t0, -2848($fp)
	addi $sp, $sp, -4
	lw $t0, -2828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2848($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2852($fp)
	addi $sp, $sp, 16
	lw $t1, -2852($fp)
	li $t2, 0
	bne $t1, $t2, label776
	j label775
label776:
	li $t0, 13600
	sw $t0, -2856($fp)
	lw $t1, -2856($fp)
	li $t2, 0
	bne $t1, $t2, label774
	j label775
label774:
	li $t0, 1
	sw $t0, -2824($fp)
label775:
	li $t0, 0
	sw $t0, -2860($fp)
	li $t0, 40900
	sw $t0, -2864($fp)
	li $t0, 0
	lw $t1, -2864($fp)
	sub $t0, $t0, $t1
	sw $t0, -2868($fp)
	lw $t1, -2868($fp)
	li $t2, 0
	bne $t1, $t2, label781
	j label780
label781:
	li $t0, 64217
	sw $t0, -2872($fp)
	lw $t1, -2872($fp)
	li $t2, 0
	bne $t1, $t2, label779
	j label780
label779:
	li $t0, 1
	sw $t0, -2860($fp)
label780:
	addi $t0, $fp, -80
	sw $t0, -2876($fp)
	li $t0, 0
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
	li $t0, 3842
	sw $t0, -2896($fp)
	lw $t0, -2892($fp)
	lw $t1, -2896($fp)
	mul $t0, $t0, $t1
	sw $t0, -2900($fp)
	li $t0, 0
	sw $t0, -2904($fp)
	li $t0, 42111
	sw $t0, -2908($fp)
	lw $t1, -2908($fp)
	li $t2, 0
	bne $t1, $t2, label783
	j label782
label782:
	li $t0, 1
	sw $t0, -2904($fp)
label783:
	li $t0, 0
	lw $t1, -2904($fp)
	sub $t0, $t0, $t1
	sw $t0, -2912($fp)
	addi $sp, $sp, -4
	lw $t0, -2824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2912($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2916($fp)
	addi $sp, $sp, 20
	lw $t0, -2916($fp)
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -2920($fp)
	lw $t1, -2920($fp)
	li $t2, 0
	bne $t1, $t2, label771
	j label772
label771:
	addi $t0, $fp, -68
	sw $t0, -2924($fp)
	li $t0, 0
	sw $t0, -2928($fp)
	lw $t0, -652($fp)
	sw $t0, -2932($fp)
	lw $t0, -448($fp)
	sw $t0, -2936($fp)
	lw $t0, -2932($fp)
	lw $t1, -2936($fp)
	add $t0, $t0, $t1
	sw $t0, -2940($fp)
	li $t0, 42236
	sw $t0, -2944($fp)
	lw $t0, -2940($fp)
	lw $t1, -2944($fp)
	sub $t0, $t0, $t1
	sw $t0, -2948($fp)
	lw $t1, -2948($fp)
	li $t2, 0
	bne $t1, $t2, label784
	j label786
label786:
	lw $t0, 4($fp)
	sw $t0, -2952($fp)
	lw $t1, -2952($fp)
	li $t2, 0
	bne $t1, $t2, label787
	j label785
label787:
	lw $t0, -448($fp)
	sw $t0, -2956($fp)
	lw $t1, -2956($fp)
	li $t2, 0
	bne $t1, $t2, label784
	j label785
label784:
	li $t0, 1
	sw $t0, -2928($fp)
label785:
	li $t0, 4
	lw $t1, -2928($fp)
	mul $t0, $t0, $t1
	sw $t0, -2960($fp)
	lw $t0, -2960($fp)
	lw $t1, -2924($fp)
	add $t0, $t0, $t1
	sw $t0, -2964($fp)
	lw $t0, -2964($fp)
	lw $t1, 0($t0)
	sw $t1, -2968($fp)
	lw $ra, -4($fp)
	lw $v0, -2968($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label773
label772:
	li $t0, 26584
	sw $t0, -2972($fp)
	li $t0, 0
	sw $t0, -2976($fp)
	addi $t0, $fp, -40
	sw $t0, -2980($fp)
	li $t0, 0
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
	lw $t1, -2996($fp)
	li $t2, 0
	bne $t1, $t2, label789
	j label788
label788:
	li $t0, 1
	sw $t0, -2976($fp)
label789:
	lw $t0, -2972($fp)
	lw $t1, -2976($fp)
	mul $t0, $t0, $t1
	sw $t0, -3000($fp)
label773:
label716:
label790:
	addi $t0, $fp, -16
	sw $t0, -3004($fp)
	li $t0, 0
	sw $t0, -3008($fp)
	li $t0, 0
	sw $t0, -3012($fp)
	lw $t0, -628($fp)
	sw $t0, -3016($fp)
	lw $t1, -3016($fp)
	li $t2, 0
	bne $t1, $t2, label796
	j label795
label795:
	li $t0, 1
	sw $t0, -3012($fp)
label796:
	li $t0, 10632
	sw $t0, -3020($fp)
	lw $t1, -3012($fp)
	lw $t2, -3020($fp)
	bne $t1, $t2, label793
	j label794
label793:
	li $t0, 1
	sw $t0, -3008($fp)
label794:
	li $t0, 4
	lw $t1, -3008($fp)
	mul $t0, $t0, $t1
	sw $t0, -3024($fp)
	lw $t0, -3024($fp)
	lw $t1, -3004($fp)
	add $t0, $t0, $t1
	sw $t0, -3028($fp)
	lw $t0, -3028($fp)
	lw $t1, 0($t0)
	sw $t1, -3032($fp)
	lw $t1, -3032($fp)
	li $t2, 0
	bne $t1, $t2, label792
	j label791
label791:
	lw $t0, -472($fp)
	sw $t0, -3036($fp)
	addi $t0, $fp, -44
	sw $t0, -3040($fp)
	li $t0, 0
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
	lw $t0, -3036($fp)
	lw $t1, -3056($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3060($fp)
	addi $t0, $fp, -44
	sw $t0, -3064($fp)
	li $t0, 0
	sw $t0, -3068($fp)
	li $t0, 8765
	sw $t0, -3072($fp)
	lw $t1, -3072($fp)
	li $t2, 0
	bne $t1, $t2, label800
	j label802
label802:
	lw $t0, -388($fp)
	sw $t0, -3076($fp)
	lw $t1, -3076($fp)
	li $t2, 0
	bne $t1, $t2, label800
	j label801
label800:
	li $t0, 1
	sw $t0, -3068($fp)
label801:
	li $t0, 4
	lw $t1, -3068($fp)
	mul $t0, $t0, $t1
	sw $t0, -3080($fp)
	lw $t0, -3080($fp)
	lw $t1, -3064($fp)
	add $t0, $t0, $t1
	sw $t0, -3084($fp)
	lw $t0, -3084($fp)
	lw $t1, 0($t0)
	sw $t1, -3088($fp)
	lw $t0, -3060($fp)
	lw $t1, -3088($fp)
	mul $t0, $t0, $t1
	sw $t0, -3092($fp)
	lw $t1, -3092($fp)
	li $t2, 0
	bne $t1, $t2, label797
	j label798
label797:
	lw $t0, -628($fp)
	sw $t0, -3096($fp)
	li $t0, 5952
	sw $t0, -3100($fp)
	lw $t0, -3096($fp)
	lw $t1, -3100($fp)
	sub $t0, $t0, $t1
	sw $t0, -3104($fp)
	lw $ra, -4($fp)
	lw $v0, -3104($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label799
label798:
label803:
	addi $t0, $fp, -68
	sw $t0, -3108($fp)
	li $t0, 0
	sw $t0, -3112($fp)
	lw $t0, -460($fp)
	sw $t0, -3116($fp)
	li $t0, 62272
	sw $t0, -3120($fp)
	lw $t0, -3116($fp)
	lw $t1, -3120($fp)
	sub $t0, $t0, $t1
	sw $t0, -3124($fp)
	li $t0, 43367
	sw $t0, -3128($fp)
	lw $t1, -3124($fp)
	lw $t2, -3128($fp)
	beq $t1, $t2, label806
	j label808
label808:
	lw $t0, -736($fp)
	sw $t0, -3132($fp)
	li $t0, 47926
	sw $t0, -3136($fp)
	lw $t1, -3132($fp)
	lw $t2, -3136($fp)
	blt $t1, $t2, label806
	j label807
label806:
	li $t0, 1
	sw $t0, -3112($fp)
label807:
	li $t0, 4
	lw $t1, -3112($fp)
	mul $t0, $t0, $t1
	sw $t0, -3140($fp)
	lw $t0, -3140($fp)
	lw $t1, -3108($fp)
	add $t0, $t0, $t1
	sw $t0, -3144($fp)
	lw $t0, -3144($fp)
	lw $t1, 0($t0)
	sw $t1, -3148($fp)
	lw $t1, -3148($fp)
	li $t2, 0
	bne $t1, $t2, label804
	j label805
label804:
	li $t0, 58019
	sw $t0, -3152($fp)
	lw $t1, -3152($fp)
	li $t2, 0
	bne $t1, $t2, label812
	j label809
label812:
	lw $t0, -856($fp)
	sw $t0, -3156($fp)
	lw $t1, -3156($fp)
	li $t2, 0
	bne $t1, $t2, label809
	j label810
label809:
label813:
	li $t0, 0
	sw $t0, -3160($fp)
	li $t0, 14528
	sw $t0, -3164($fp)
	lw $t1, -3164($fp)
	li $t2, 0
	bne $t1, $t2, label817
	j label818
label818:
	li $t0, 55244
	sw $t0, -3168($fp)
	lw $t1, -3168($fp)
	li $t2, 0
	bne $t1, $t2, label816
	j label817
label816:
	li $t0, 1
	sw $t0, -3160($fp)
label817:
	addi $sp, $sp, -4
	lw $t0, -3160($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3172($fp)
	addi $sp, $sp, 8
	lw $t1, -3172($fp)
	li $t2, 0
	bne $t1, $t2, label815
	j label814
label814:
	li $t0, 10245
	sw $t0, -3176($fp)
	li $t0, 14630
	sw $t0, -3180($fp)
	lw $t0, -3176($fp)
	lw $t1, -3180($fp)
	add $t0, $t0, $t1
	sw $t0, -3184($fp)
	li $t0, 9079
	sw $t0, -3188($fp)
	lw $t0, -652($fp)
	sw $t0, -3192($fp)
	lw $t0, -3188($fp)
	lw $t1, -3192($fp)
	add $t0, $t0, $t1
	sw $t0, -3196($fp)
	li $t0, 22183
	sw $t0, -3200($fp)
	lw $t0, -3196($fp)
	lw $t1, -3200($fp)
	sub $t0, $t0, $t1
	sw $t0, -3204($fp)
	li $t0, 0
	sw $t0, -3208($fp)
	li $t0, 16299
	sw $t0, -3212($fp)
	lw $t0, -376($fp)
	sw $t0, -3216($fp)
	lw $t0, -3212($fp)
	lw $t1, -3216($fp)
	sub $t0, $t0, $t1
	sw $t0, -3220($fp)
	lw $t0, -352($fp)
	sw $t0, -3224($fp)
	lw $t1, -3220($fp)
	lw $t2, -3224($fp)
	blt $t1, $t2, label822
	j label823
label822:
	li $t0, 1
	sw $t0, -3208($fp)
label823:
	addi $t0, $fp, -92
	sw $t0, -3228($fp)
	lw $t0, -652($fp)
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
	addi $sp, $sp, -4
	lw $t0, -3184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3244($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3248($fp)
	addi $sp, $sp, 20
	li $t0, 47533
	sw $t0, -3252($fp)
	lw $t0, -3248($fp)
	lw $t1, -3252($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3256($fp)
	li $t0, 0
	lw $t1, -3256($fp)
	sub $t0, $t0, $t1
	sw $t0, -3260($fp)
	li $t0, 0
	sw $t0, -3264($fp)
	li $t0, 52357
	sw $t0, -3268($fp)
	addi $t0, $fp, -80
	sw $t0, -3272($fp)
	li $t0, 0
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
	lw $t1, -3268($fp)
	lw $t2, -3288($fp)
	bge $t1, $t2, label824
	j label825
label824:
	li $t0, 1
	sw $t0, -3264($fp)
label825:
	lw $t1, -3260($fp)
	lw $t2, -3264($fp)
	bne $t1, $t2, label819
	j label820
label819:
	li $t0, 0
	sw $t0, -3292($fp)
	li $t0, 0
	sw $t0, -3296($fp)
	lw $t0, -628($fp)
	sw $t0, -3300($fp)
	lw $t1, -3300($fp)
	li $t2, 0
	bne $t1, $t2, label831
	j label830
label831:
	li $t0, 21113
	sw $t0, -3304($fp)
	lw $t1, -3304($fp)
	li $t2, 0
	bne $t1, $t2, label828
	j label830
label830:
	li $t0, 950
	sw $t0, -3308($fp)
	lw $t1, -3308($fp)
	li $t2, 0
	bne $t1, $t2, label828
	j label829
label828:
	li $t0, 1
	sw $t0, -3296($fp)
label829:
	lw $t0, -652($fp)
	sw $t0, -3312($fp)
	lw $t0, -3312($fp)
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -3316($fp)
	lw $t0, -400($fp)
	sw $t0, -3320($fp)
	li $t0, 24244
	sw $t0, -3324($fp)
	lw $t0, -3320($fp)
	lw $t1, -3324($fp)
	add $t0, $t0, $t1
	sw $t0, -3328($fp)
	li $t0, 41361
	sw $t0, -3332($fp)
	lw $t0, -3328($fp)
	lw $t1, -3332($fp)
	sub $t0, $t0, $t1
	sw $t0, -3336($fp)
	li $t0, 0
	sw $t0, -3340($fp)
	lw $t0, -844($fp)
	sw $t0, -3344($fp)
	lw $t0, -424($fp)
	sw $t0, -3348($fp)
	lw $t0, -3344($fp)
	lw $t1, -3348($fp)
	sub $t0, $t0, $t1
	sw $t0, -3352($fp)
	li $t0, 56199
	sw $t0, -3356($fp)
	lw $t1, -3352($fp)
	lw $t2, -3356($fp)
	ble $t1, $t2, label832
	j label833
label832:
	li $t0, 1
	sw $t0, -3340($fp)
label833:
	addi $sp, $sp, -4
	lw $t0, -3296($fp)
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
	jal f7
	sw $v0, -3360($fp)
	addi $sp, $sp, 20
	lw $t1, -3360($fp)
	li $t2, 0
	bne $t1, $t2, label827
	j label826
label826:
	li $t0, 1
	sw $t0, -3292($fp)
label827:
	j label821
label820:
	addi $t0, $fp, -68
	sw $t0, -3364($fp)
	addi $t0, $fp, -44
	sw $t0, -3368($fp)
	li $t0, 0
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
	lw $t1, -3384($fp)
	sub $t0, $t0, $t1
	sw $t0, -3388($fp)
	li $t0, 0
	lw $t1, -3388($fp)
	sub $t0, $t0, $t1
	sw $t0, -3392($fp)
	li $t0, 4
	lw $t1, -3392($fp)
	mul $t0, $t0, $t1
	sw $t0, -3396($fp)
	lw $t0, -3396($fp)
	lw $t1, -3364($fp)
	add $t0, $t0, $t1
	sw $t0, -3400($fp)
	lw $t0, -3400($fp)
	lw $t1, 0($t0)
	sw $t1, -3404($fp)
label821:
	j label813
label815:
	j label811
label810:
	li $t0, 0
	sw $t0, -3408($fp)
	li $t0, 0
	sw $t0, -3412($fp)
	li $t0, 43186
	sw $t0, -3416($fp)
	lw $t0, -832($fp)
	sw $t0, -3420($fp)
	lw $t1, -3416($fp)
	lw $t2, -3420($fp)
	blt $t1, $t2, label836
	j label837
label836:
	li $t0, 1
	sw $t0, -3412($fp)
label837:
	addi $t0, $fp, -40
	sw $t0, -3424($fp)
	li $t0, 0
	sw $t0, -3428($fp)
	lw $t0, -436($fp)
	sw $t0, -3432($fp)
	lw $t1, -3432($fp)
	li $t2, 0
	bne $t1, $t2, label840
	j label839
label840:
	li $t0, 60578
	sw $t0, -3436($fp)
	lw $t1, -3436($fp)
	li $t2, 0
	bne $t1, $t2, label838
	j label839
label838:
	li $t0, 1
	sw $t0, -3428($fp)
label839:
	li $t0, 4
	lw $t1, -3428($fp)
	mul $t0, $t0, $t1
	sw $t0, -3440($fp)
	lw $t0, -3440($fp)
	lw $t1, -3424($fp)
	add $t0, $t0, $t1
	sw $t0, -3444($fp)
	lw $t0, -3444($fp)
	lw $t1, 0($t0)
	sw $t1, -3448($fp)
	lw $t1, -3412($fp)
	lw $t2, -3448($fp)
	beq $t1, $t2, label834
	j label835
label834:
	li $t0, 1
	sw $t0, -3408($fp)
label835:
label811:
	j label803
label805:
label799:
	j label790
label792:
	addi $t0, $fp, -16
	sw $t0, -3452($fp)
	li $t0, 0
	sw $t0, -3456($fp)
	li $t0, 4
	lw $t1, -3456($fp)
	mul $t0, $t0, $t1
	sw $t0, -3460($fp)
	lw $t0, -3460($fp)
	lw $t1, -3452($fp)
	add $t0, $t0, $t1
	sw $t0, -3464($fp)
	lw $t0, -3464($fp)
	lw $t1, 0($t0)
	sw $t1, -3468($fp)
	lw $t0, -3468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -3472($fp)
	li $t0, 1
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
	lw $t0, -3488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -3492($fp)
	li $t0, 2
	sw $t0, -3496($fp)
	li $t0, 4
	lw $t1, -3496($fp)
	mul $t0, $t0, $t1
	sw $t0, -3500($fp)
	lw $t0, -3500($fp)
	lw $t1, -3492($fp)
	add $t0, $t0, $t1
	sw $t0, -3504($fp)
	lw $t0, -3504($fp)
	lw $t1, 0($t0)
	sw $t1, -3508($fp)
	lw $t0, -3508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -3512($fp)
	li $t0, 0
	sw $t0, -3516($fp)
	li $t0, 4
	lw $t1, -3516($fp)
	mul $t0, $t0, $t1
	sw $t0, -3520($fp)
	lw $t0, -3520($fp)
	lw $t1, -3512($fp)
	add $t0, $t0, $t1
	sw $t0, -3524($fp)
	lw $t0, -3524($fp)
	lw $t1, 0($t0)
	sw $t1, -3528($fp)
	lw $t0, -3528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -3532($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -3552($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -3572($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -3592($fp)
	li $t0, 4
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
	addi $t0, $fp, -40
	sw $t0, -3612($fp)
	li $t0, 5
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
	lw $t0, -316($fp)
	sw $t0, -3632($fp)
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
	lw $t0, -352($fp)
	sw $t0, -3656($fp)
	lw $t0, -3656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -364($fp)
	sw $t0, -3660($fp)
	lw $t0, -3660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -376($fp)
	sw $t0, -3664($fp)
	lw $t0, -3664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -388($fp)
	sw $t0, -3668($fp)
	lw $t0, -3668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -400($fp)
	sw $t0, -3672($fp)
	lw $t0, -3672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -412($fp)
	sw $t0, -3676($fp)
	lw $t0, -3676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -424($fp)
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -436($fp)
	sw $t0, -3684($fp)
	lw $t0, -3684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -448($fp)
	sw $t0, -3688($fp)
	lw $t0, -3688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -460($fp)
	sw $t0, -3692($fp)
	lw $t0, -3692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -472($fp)
	sw $t0, -3696($fp)
	lw $t0, -3696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -3700($fp)
	li $t0, 0
	sw $t0, -3704($fp)
	li $t0, 4
	lw $t1, -3704($fp)
	mul $t0, $t0, $t1
	sw $t0, -3708($fp)
	lw $t0, -3708($fp)
	lw $t1, -3700($fp)
	add $t0, $t0, $t1
	sw $t0, -3712($fp)
	lw $t0, -3712($fp)
	lw $t1, 0($t0)
	sw $t1, -3716($fp)
	lw $t0, -3716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -3720($fp)
	li $t0, 1
	sw $t0, -3724($fp)
	li $t0, 4
	lw $t1, -3724($fp)
	mul $t0, $t0, $t1
	sw $t0, -3728($fp)
	lw $t0, -3728($fp)
	lw $t1, -3720($fp)
	add $t0, $t0, $t1
	sw $t0, -3732($fp)
	lw $t0, -3732($fp)
	lw $t1, 0($t0)
	sw $t1, -3736($fp)
	lw $t0, -3736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -3740($fp)
	li $t0, 2
	sw $t0, -3744($fp)
	li $t0, 4
	lw $t1, -3744($fp)
	mul $t0, $t0, $t1
	sw $t0, -3748($fp)
	lw $t0, -3748($fp)
	lw $t1, -3740($fp)
	add $t0, $t0, $t1
	sw $t0, -3752($fp)
	lw $t0, -3752($fp)
	lw $t1, 0($t0)
	sw $t1, -3756($fp)
	lw $t0, -3756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -3760($fp)
	li $t0, 3
	sw $t0, -3764($fp)
	li $t0, 4
	lw $t1, -3764($fp)
	mul $t0, $t0, $t1
	sw $t0, -3768($fp)
	lw $t0, -3768($fp)
	lw $t1, -3760($fp)
	add $t0, $t0, $t1
	sw $t0, -3772($fp)
	lw $t0, -3772($fp)
	lw $t1, 0($t0)
	sw $t1, -3776($fp)
	lw $t0, -3776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -3780($fp)
	li $t0, 4
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
	lw $t0, -3796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -3800($fp)
	li $t0, 5
	sw $t0, -3804($fp)
	li $t0, 4
	lw $t1, -3804($fp)
	mul $t0, $t0, $t1
	sw $t0, -3808($fp)
	lw $t0, -3808($fp)
	lw $t1, -3800($fp)
	add $t0, $t0, $t1
	sw $t0, -3812($fp)
	lw $t0, -3812($fp)
	lw $t1, 0($t0)
	sw $t1, -3816($fp)
	lw $t0, -3816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -628($fp)
	sw $t0, -3820($fp)
	lw $t0, -3820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -640($fp)
	sw $t0, -3824($fp)
	lw $t0, -3824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -652($fp)
	sw $t0, -3828($fp)
	lw $t0, -3828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3832($fp)
	li $t0, 0
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
	addi $t0, $fp, -80
	sw $t0, -3852($fp)
	li $t0, 1
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
	addi $t0, $fp, -80
	sw $t0, -3872($fp)
	li $t0, 2
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
	lw $t0, -736($fp)
	sw $t0, -3892($fp)
	lw $t0, -3892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -3896($fp)
	li $t0, 0
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
	addi $t0, $fp, -92
	sw $t0, -3916($fp)
	li $t0, 1
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
	addi $t0, $fp, -92
	sw $t0, -3936($fp)
	li $t0, 2
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
	lw $t0, -820($fp)
	sw $t0, -3956($fp)
	lw $t0, -3956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -832($fp)
	sw $t0, -3960($fp)
	lw $t0, -3960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -844($fp)
	sw $t0, -3964($fp)
	lw $t0, -3964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -856($fp)
	sw $t0, -3968($fp)
	lw $t0, -3968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -436($fp)
	sw $t0, -3972($fp)
	lw $ra, -4($fp)
	lw $v0, -3972($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -28
	li $t0, 0
	sw $t0, -8($fp)
	lw $t0, 8($fp)
	sw $t0, -12($fp)
	lw $t0, 8($fp)
	sw $t0, -16($fp)
	lw $t0, -12($fp)
	lw $t1, -16($fp)
	sub $t0, $t0, $t1
	sw $t0, -20($fp)
	li $t0, 33892
	sw $t0, -24($fp)
	lw $t1, -20($fp)
	lw $t2, -24($fp)
	bne $t1, $t2, label841
	j label843
label843:
	lw $t0, 8($fp)
	sw $t0, -28($fp)
	lw $t1, -28($fp)
	li $t2, 0
	bne $t1, $t2, label841
	j label842
label841:
	li $t0, 1
	sw $t0, -8($fp)
label842:
	lw $t0, -8($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -32($fp)
	lw $ra, -4($fp)
	lw $v0, -32($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -864
	li $t0, 10950
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
	li $t0, 5674
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
	li $t0, 27382
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
	li $t0, 11966
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
	li $t0, 14439
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
	li $t0, 33334
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
	li $t0, 8702
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
	li $t0, 57806
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
	li $t0, 15724
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
	li $t0, 1185
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
	li $t0, 6799
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	li $t0, 5432
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	li $t0, 17484
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	li $t0, 0
	sw $t0, -324($fp)
	li $t0, 0
	sw $t0, -328($fp)
	li $t0, 14550
	sw $t0, -332($fp)
	lw $t0, 16($fp)
	sw $t0, -336($fp)
	lw $t1, -332($fp)
	lw $t2, -336($fp)
	beq $t1, $t2, label847
	j label849
label849:
	li $t0, 13852
	sw $t0, -340($fp)
	lw $t1, -340($fp)
	li $t2, 0
	bne $t1, $t2, label847
	j label848
label847:
	li $t0, 1
	sw $t0, -328($fp)
label848:
	li $t0, 0
	sw $t0, -344($fp)
	addi $t0, $fp, -44
	sw $t0, -348($fp)
	li $t0, 8
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
	lw $t1, -364($fp)
	li $t2, 0
	bne $t1, $t2, label851
	j label850
label850:
	li $t0, 1
	sw $t0, -344($fp)
label851:
	lw $t0, 12($fp)
	sw $t0, -368($fp)
	li $t0, 0
	sw $t0, -372($fp)
	li $t0, 27615
	sw $t0, -376($fp)
	lw $t1, -376($fp)
	li $t2, 0
	bne $t1, $t2, label852
	j label854
label854:
	li $t0, 27729
	sw $t0, -380($fp)
	lw $t1, -380($fp)
	li $t2, 0
	bne $t1, $t2, label852
	j label853
label852:
	li $t0, 1
	sw $t0, -372($fp)
label853:
	li $t0, 0
	sw $t0, -384($fp)
	lw $t0, -304($fp)
	sw $t0, -388($fp)
	li $t0, 15878
	sw $t0, -392($fp)
	lw $t0, -388($fp)
	lw $t1, -392($fp)
	mul $t0, $t0, $t1
	sw $t0, -396($fp)
	lw $t0, -316($fp)
	sw $t0, -400($fp)
	lw $t1, -396($fp)
	lw $t2, -400($fp)
	blt $t1, $t2, label855
	j label856
label855:
	li $t0, 1
	sw $t0, -384($fp)
label856:
	addi $sp, $sp, -4
	lw $t0, -328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -384($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -404($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -408($fp)
	li $t0, 0
	sw $t0, -412($fp)
	lw $t0, 8($fp)
	sw $t0, -416($fp)
	lw $t0, 20($fp)
	sw $t0, -420($fp)
	lw $t1, -416($fp)
	lw $t2, -420($fp)
	bge $t1, $t2, label859
	j label860
label859:
	li $t0, 1
	sw $t0, -412($fp)
label860:
	li $t0, 26327
	sw $t0, -424($fp)
	lw $t1, -412($fp)
	lw $t2, -424($fp)
	bne $t1, $t2, label857
	j label858
label857:
	li $t0, 1
	sw $t0, -408($fp)
label858:
	lw $t0, 12($fp)
	sw $t0, -428($fp)
	li $t0, 38097
	sw $t0, -432($fp)
	lw $t0, -428($fp)
	lw $t1, -432($fp)
	sub $t0, $t0, $t1
	sw $t0, -436($fp)
	li $t0, 28118
	sw $t0, -440($fp)
	lw $t0, -436($fp)
	lw $t1, -440($fp)
	sub $t0, $t0, $t1
	sw $t0, -444($fp)
	li $t0, 0
	sw $t0, -448($fp)
	lw $t0, 12($fp)
	sw $t0, -452($fp)
	li $t0, 5214
	sw $t0, -456($fp)
	lw $t1, -452($fp)
	lw $t2, -456($fp)
	blt $t1, $t2, label863
	j label862
label863:
	lw $t0, 4($fp)
	sw $t0, -460($fp)
	lw $t1, -460($fp)
	li $t2, 0
	bne $t1, $t2, label861
	j label862
label861:
	li $t0, 1
	sw $t0, -448($fp)
label862:
	li $t0, 0
	sw $t0, -464($fp)
	li $t0, 52293
	sw $t0, -468($fp)
	lw $t1, -468($fp)
	li $t2, 0
	bne $t1, $t2, label865
	j label864
label864:
	li $t0, 1
	sw $t0, -464($fp)
label865:
	addi $sp, $sp, -4
	lw $t0, -408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -464($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -472($fp)
	addi $sp, $sp, 20
	lw $t1, -404($fp)
	lw $t2, -472($fp)
	bne $t1, $t2, label844
	j label846
label846:
	li $t0, 0
	sw $t0, -476($fp)
	li $t0, 39047
	sw $t0, -480($fp)
	lw $t0, 8($fp)
	sw $t0, -484($fp)
	lw $t1, -480($fp)
	lw $t2, -484($fp)
	bge $t1, $t2, label866
	j label867
label866:
	li $t0, 1
	sw $t0, -476($fp)
label867:
	li $t0, 62112
	sw $t0, -488($fp)
	li $t0, 61041
	sw $t0, -492($fp)
	lw $t0, -488($fp)
	lw $t1, -492($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -496($fp)
	lw $t1, -476($fp)
	lw $t2, -496($fp)
	beq $t1, $t2, label844
	j label845
label844:
	li $t0, 1
	sw $t0, -324($fp)
label845:
	li $t0, 0
	sw $t0, -500($fp)
	li $t0, 16697
	sw $t0, -504($fp)
	lw $t1, -504($fp)
	li $t2, 0
	bne $t1, $t2, label869
	j label868
label868:
	li $t0, 1
	sw $t0, -500($fp)
label869:
	li $t0, 0
	sw $t0, -508($fp)
	lw $t0, -304($fp)
	sw $t0, -512($fp)
	li $t0, 0
	lw $t1, -512($fp)
	sub $t0, $t0, $t1
	sw $t0, -516($fp)
	lw $t1, -516($fp)
	li $t2, 0
	bne $t1, $t2, label871
	j label870
label870:
	li $t0, 1
	sw $t0, -508($fp)
label871:
	lw $t0, -500($fp)
	lw $t1, -508($fp)
	add $t0, $t0, $t1
	sw $t0, -520($fp)
	li $t0, 0
	sw $t0, -524($fp)
	lw $t0, 12($fp)
	sw $t0, -528($fp)
	lw $t1, -528($fp)
	li $t2, 0
	bne $t1, $t2, label872
	j label873
label872:
	li $t0, 1
	sw $t0, -524($fp)
label873:
	lw $t0, -520($fp)
	lw $t1, -524($fp)
	add $t0, $t0, $t1
	sw $t0, -532($fp)
label874:
	li $t0, 0
	sw $t0, -536($fp)
	lw $t0, -316($fp)
	sw $t0, -540($fp)
	lw $t1, -540($fp)
	li $t2, 0
	bne $t1, $t2, label878
	j label877
label877:
	li $t0, 1
	sw $t0, -536($fp)
label878:
	lw $t0, -316($fp)
	sw $t0, -544($fp)
	lw $t0, -536($fp)
	lw $t1, -544($fp)
	sub $t0, $t0, $t1
	sw $t0, -548($fp)
	li $t0, 0
	sw $t0, -552($fp)
	li $t0, 56779
	sw $t0, -556($fp)
	lw $t1, -556($fp)
	li $t2, 0
	bne $t1, $t2, label882
	j label881
label882:
	li $t0, 39614
	sw $t0, -560($fp)
	lw $t1, -560($fp)
	li $t2, 0
	bne $t1, $t2, label879
	j label881
label881:
	lw $t0, -316($fp)
	sw $t0, -564($fp)
	lw $t1, -564($fp)
	li $t2, 0
	bne $t1, $t2, label879
	j label880
label879:
	li $t0, 1
	sw $t0, -552($fp)
label880:
	li $t0, 0
	sw $t0, -568($fp)
	li $t0, 62828
	sw $t0, -572($fp)
	lw $t1, -572($fp)
	li $t2, 0
	bne $t1, $t2, label883
	j label886
label886:
	lw $t0, -304($fp)
	sw $t0, -576($fp)
	lw $t1, -576($fp)
	li $t2, 0
	bne $t1, $t2, label883
	j label885
label885:
	lw $t0, 12($fp)
	sw $t0, -580($fp)
	lw $t1, -580($fp)
	li $t2, 0
	bne $t1, $t2, label883
	j label884
label883:
	li $t0, 1
	sw $t0, -568($fp)
label884:
	addi $t0, $fp, -44
	sw $t0, -584($fp)
	li $t0, 0
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
	li $t0, 0
	sw $t0, -604($fp)
	lw $t0, 8($fp)
	sw $t0, -608($fp)
	lw $t1, -608($fp)
	li $t2, 0
	bne $t1, $t2, label890
	j label888
label890:
	lw $t0, -316($fp)
	sw $t0, -612($fp)
	lw $t1, -612($fp)
	li $t2, 0
	bne $t1, $t2, label889
	j label888
label889:
	li $t0, 57154
	sw $t0, -616($fp)
	lw $t1, -616($fp)
	li $t2, 0
	bne $t1, $t2, label887
	j label888
label887:
	li $t0, 1
	sw $t0, -604($fp)
label888:
	addi $sp, $sp, -4
	lw $t0, -548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -604($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -620($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -620($fp)
	sub $t0, $t0, $t1
	sw $t0, -624($fp)
	lw $t1, -624($fp)
	li $t2, 0
	bne $t1, $t2, label875
	j label876
label875:
	li $t0, 0
	sw $t0, -628($fp)
	lw $t0, -292($fp)
	sw $t0, -632($fp)
	lw $t1, -632($fp)
	li $t2, 0
	bne $t1, $t2, label892
	j label891
label891:
	li $t0, 1
	sw $t0, -628($fp)
label892:
	lw $t0, 4($fp)
	sw $t0, -636($fp)
	lw $t0, -628($fp)
	lw $t1, -636($fp)
	sub $t0, $t0, $t1
	sw $t0, -640($fp)
	lw $ra, -4($fp)
	lw $v0, -640($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label874
label876:
	addi $t0, $fp, -44
	sw $t0, -644($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -664($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -684($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -704($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -724($fp)
	li $t0, 4
	sw $t0, -728($fp)
	li $t0, 4
	lw $t1, -728($fp)
	mul $t0, $t0, $t1
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	lw $t1, -724($fp)
	add $t0, $t0, $t1
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	lw $t1, 0($t0)
	sw $t1, -740($fp)
	lw $t0, -740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -744($fp)
	li $t0, 5
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
	lw $t0, -760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -764($fp)
	li $t0, 6
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
	lw $t0, -780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -784($fp)
	li $t0, 7
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
	addi $t0, $fp, -44
	sw $t0, -804($fp)
	li $t0, 8
	sw $t0, -808($fp)
	li $t0, 4
	lw $t1, -808($fp)
	mul $t0, $t0, $t1
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	lw $t1, -804($fp)
	add $t0, $t0, $t1
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	lw $t1, 0($t0)
	sw $t1, -820($fp)
	lw $t0, -820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -824($fp)
	li $t0, 9
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
	lw $t0, -292($fp)
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -304($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -316($fp)
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -856($fp)
	lw $t0, 16($fp)
	sw $t0, -860($fp)
	li $t0, 11732
	sw $t0, -864($fp)
	lw $t1, -860($fp)
	lw $t2, -864($fp)
	bgt $t1, $t2, label893
	j label894
label893:
	li $t0, 1
	sw $t0, -856($fp)
label894:
	addi $sp, $sp, -4
	lw $t0, -856($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -868($fp)
	addi $sp, $sp, 8
	lw $ra, -4($fp)
	lw $v0, -868($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1620
	li $t0, 24577
	sw $t0, -68($fp)
	addi $t0, $fp, -12
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
	li $t0, 48316
	sw $t0, -92($fp)
	addi $t0, $fp, -12
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
	li $t0, 4002
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	li $t0, 40301
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	li $t0, 49501
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	li $t0, 10801
	sw $t0, -152($fp)
	addi $t0, $fp, -28
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
	li $t0, 45733
	sw $t0, -176($fp)
	addi $t0, $fp, -28
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
	li $t0, 1449
	sw $t0, -200($fp)
	addi $t0, $fp, -28
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
	li $t0, 26679
	sw $t0, -224($fp)
	addi $t0, $fp, -28
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
	li $t0, 7813
	sw $t0, -248($fp)
	addi $t0, $fp, -64
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
	li $t0, 29178
	sw $t0, -272($fp)
	addi $t0, $fp, -64
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
	li $t0, 57187
	sw $t0, -296($fp)
	addi $t0, $fp, -64
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
	li $t0, 17425
	sw $t0, -320($fp)
	addi $t0, $fp, -64
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
	li $t0, 43729
	sw $t0, -344($fp)
	addi $t0, $fp, -64
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
	li $t0, 5504
	sw $t0, -368($fp)
	addi $t0, $fp, -64
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
	li $t0, 4182
	sw $t0, -392($fp)
	addi $t0, $fp, -64
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
	li $t0, 48943
	sw $t0, -416($fp)
	addi $t0, $fp, -64
	sw $t0, -420($fp)
	li $t0, 7
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
	li $t0, 43601
	sw $t0, -440($fp)
	addi $t0, $fp, -64
	sw $t0, -444($fp)
	li $t0, 8
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
	li $t0, 32301
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	li $t0, 9734
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	li $t0, 17112
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	li $t0, 28877
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
label895:
	addi $t0, $fp, -64
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
	lw $t1, -528($fp)
	li $t2, 0
	bne $t1, $t2, label897
	j label899
label899:
	li $t0, 0
	sw $t0, -532($fp)
	lw $t0, -120($fp)
	sw $t0, -536($fp)
	lw $t1, -536($fp)
	li $t2, 0
	bne $t1, $t2, label901
	j label900
label900:
	li $t0, 1
	sw $t0, -532($fp)
label901:
	addi $t0, $fp, -12
	sw $t0, -540($fp)
	li $t0, 1
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
	li $t0, 35535
	sw $t0, -560($fp)
	lw $t0, -556($fp)
	lw $t1, -560($fp)
	add $t0, $t0, $t1
	sw $t0, -564($fp)
	addi $t0, $fp, -28
	sw $t0, -568($fp)
	li $t0, 1
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
	li $t0, 0
	sw $t0, -588($fp)
	li $t0, 0
	sw $t0, -592($fp)
	lw $t0, -120($fp)
	sw $t0, -596($fp)
	li $t0, 20495
	sw $t0, -600($fp)
	lw $t1, -596($fp)
	lw $t2, -600($fp)
	bge $t1, $t2, label904
	j label905
label904:
	li $t0, 1
	sw $t0, -592($fp)
label905:
	lw $t0, -480($fp)
	sw $t0, -604($fp)
	lw $t1, -592($fp)
	lw $t2, -604($fp)
	bne $t1, $t2, label902
	j label903
label902:
	li $t0, 1
	sw $t0, -588($fp)
label903:
	addi $sp, $sp, -4
	lw $t0, -532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -588($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -608($fp)
	addi $sp, $sp, 20
	lw $t1, -608($fp)
	li $t2, 0
	bne $t1, $t2, label898
	j label897
label898:
	addi $t0, $fp, -64
	sw $t0, -612($fp)
	lw $t0, -480($fp)
	sw $t0, -616($fp)
	li $t0, 29519
	sw $t0, -620($fp)
	lw $t0, -616($fp)
	lw $t1, -620($fp)
	sub $t0, $t0, $t1
	sw $t0, -624($fp)
	li $t0, 4
	lw $t1, -624($fp)
	mul $t0, $t0, $t1
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	lw $t1, -612($fp)
	add $t0, $t0, $t1
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	lw $t1, 0($t0)
	sw $t1, -636($fp)
	lw $t1, -636($fp)
	li $t2, 0
	bne $t1, $t2, label896
	j label897
label896:
label906:
	li $t0, 50456
	sw $t0, -640($fp)
	lw $t0, -468($fp)
	sw $t0, -644($fp)
	lw $t0, -640($fp)
	lw $t1, -644($fp)
	mul $t0, $t0, $t1
	sw $t0, -648($fp)
	li $t0, 33522
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -656($fp)
	li $t0, 18315
	sw $t0, -660($fp)
	lw $t0, -120($fp)
	sw $t0, -664($fp)
	li $t0, 0
	lw $t1, -664($fp)
	sub $t0, $t0, $t1
	sw $t0, -668($fp)
	addi $sp, $sp, -4
	lw $t0, -656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -668($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -672($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -12
	sw $t0, -676($fp)
	li $t0, 0
	sw $t0, -680($fp)
	li $t0, 4
	lw $t1, -680($fp)
	mul $t0, $t0, $t1
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	lw $t1, -676($fp)
	add $t0, $t0, $t1
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	lw $t1, 0($t0)
	sw $t1, -692($fp)
	lw $t0, -672($fp)
	lw $t1, -692($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -696($fp)
	lw $t1, -648($fp)
	lw $t2, -696($fp)
	bge $t1, $t2, label907
	j label908
label907:
label909:
	lw $t0, -480($fp)
	sw $t0, -700($fp)
	lw $t1, -700($fp)
	li $t2, 0
	bne $t1, $t2, label910
	j label911
label910:
	li $t0, 0
	sw $t0, -704($fp)
	addi $t0, $fp, -64
	sw $t0, -708($fp)
	lw $t0, -120($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -716($fp)
	li $t0, 4
	lw $t1, -716($fp)
	mul $t0, $t0, $t1
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	lw $t1, -708($fp)
	add $t0, $t0, $t1
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	lw $t1, 0($t0)
	sw $t1, -728($fp)
	li $t0, 44323
	sw $t0, -732($fp)
	lw $t1, -728($fp)
	lw $t2, -732($fp)
	blt $t1, $t2, label912
	j label913
label912:
	li $t0, 1
	sw $t0, -704($fp)
label913:
	lw $ra, -4($fp)
	lw $v0, -704($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label909
label911:
	j label906
label908:
	j label895
label897:
	li $t0, 0
	sw $t0, -736($fp)
	addi $t0, $fp, -28
	sw $t0, -740($fp)
	lw $t0, -132($fp)
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
	lw $t1, -756($fp)
	li $t2, 0
	bne $t1, $t2, label917
	j label916
label917:
	li $t0, 5419
	sw $t0, -760($fp)
	lw $t1, -760($fp)
	li $t2, 0
	bne $t1, $t2, label914
	j label916
label916:
	lw $t0, -492($fp)
	sw $t0, -764($fp)
	li $t0, 0
	lw $t1, -764($fp)
	sub $t0, $t0, $t1
	sw $t0, -768($fp)
	lw $t1, -768($fp)
	li $t2, 0
	bne $t1, $t2, label914
	j label915
label914:
	li $t0, 1
	sw $t0, -736($fp)
label915:
	lw $t0, -736($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -772($fp)
	addi $t0, $fp, -12
	sw $t0, -776($fp)
	li $t0, 0
	sw $t0, -780($fp)
	li $t0, 4
	lw $t1, -780($fp)
	mul $t0, $t0, $t1
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	lw $t1, -776($fp)
	add $t0, $t0, $t1
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	lw $t1, 0($t0)
	sw $t1, -792($fp)
	lw $t0, -792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -796($fp)
	li $t0, 1
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
	lw $t0, -120($fp)
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -64
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
	addi $t0, $fp, -64
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
	addi $t0, $fp, -64
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
	addi $t0, $fp, -64
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
	addi $t0, $fp, -64
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
	addi $t0, $fp, -64
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
	addi $t0, $fp, -64
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
	addi $t0, $fp, -64
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
	addi $t0, $fp, -64
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
	lw $t0, -468($fp)
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1104($fp)
	li $t0, 3729
	sw $t0, -1108($fp)
	li $t0, 5467
	sw $t0, -1112($fp)
	lw $t1, -1108($fp)
	lw $t2, -1112($fp)
	bge $t1, $t2, label918
	j label920
label920:
	lw $t0, 4($fp)
	sw $t0, -1116($fp)
	lw $t1, -1116($fp)
	li $t2, 0
	bne $t1, $t2, label918
	j label919
label918:
	li $t0, 1
	sw $t0, -1104($fp)
label919:
	li $t0, 0
	sw $t0, -1120($fp)
	lw $t0, -132($fp)
	sw $t0, -1124($fp)
	li $t0, 0
	lw $t1, -1124($fp)
	sub $t0, $t0, $t1
	sw $t0, -1128($fp)
	lw $t1, -1128($fp)
	li $t2, 0
	bne $t1, $t2, label922
	j label921
label921:
	li $t0, 1
	sw $t0, -1120($fp)
label922:
	lw $t0, -480($fp)
	sw $t0, -1132($fp)
	li $t0, 0
	lw $t1, -1132($fp)
	sub $t0, $t0, $t1
	sw $t0, -1136($fp)
	addi $sp, $sp, -4
	lw $t0, -1104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1136($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1140($fp)
	addi $sp, $sp, 16
	lw $ra, -4($fp)
	lw $v0, -1140($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -1144($fp)
	li $t0, 0
	sw $t0, -1148($fp)
	li $t0, 13232
	sw $t0, -1152($fp)
	lw $t0, -468($fp)
	sw $t0, -1156($fp)
	li $t0, 0
	lw $t1, -1156($fp)
	sub $t0, $t0, $t1
	sw $t0, -1160($fp)
	lw $t0, -1152($fp)
	lw $t1, -1160($fp)
	mul $t0, $t0, $t1
	sw $t0, -1164($fp)
	li $t0, 0
	sw $t0, -1168($fp)
	lw $t0, 8($fp)
	sw $t0, -1172($fp)
	li $t0, 0
	lw $t1, -1172($fp)
	sub $t0, $t0, $t1
	sw $t0, -1176($fp)
	lw $t1, -1176($fp)
	li $t2, 0
	bne $t1, $t2, label928
	j label927
label927:
	li $t0, 1
	sw $t0, -1168($fp)
label928:
	lw $t1, -1164($fp)
	lw $t2, -1168($fp)
	bgt $t1, $t2, label925
	j label926
label925:
	li $t0, 1
	sw $t0, -1148($fp)
label926:
	addi $t0, $fp, -64
	sw $t0, -1180($fp)
	li $t0, 0
	sw $t0, -1184($fp)
	lw $t0, -480($fp)
	sw $t0, -1188($fp)
	lw $t0, -504($fp)
	sw $t0, -1192($fp)
	lw $t0, -1188($fp)
	lw $t1, -1192($fp)
	sub $t0, $t0, $t1
	sw $t0, -1196($fp)
	lw $t0, -480($fp)
	sw $t0, -1200($fp)
	lw $t1, -1196($fp)
	lw $t2, -1200($fp)
	beq $t1, $t2, label929
	j label930
label929:
	li $t0, 1
	sw $t0, -1184($fp)
label930:
	addi $sp, $sp, -4
	lw $t0, -1184($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1204($fp)
	addi $sp, $sp, 8
	li $t0, 4
	lw $t1, -1204($fp)
	mul $t0, $t0, $t1
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	lw $t1, -1180($fp)
	add $t0, $t0, $t1
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	lw $t1, 0($t0)
	sw $t1, -1216($fp)
	lw $t1, -1148($fp)
	lw $t2, -1216($fp)
	ble $t1, $t2, label923
	j label924
label923:
	li $t0, 1
	sw $t0, -1144($fp)
label924:
label931:
	li $t0, 32908
	sw $t0, -1220($fp)
	lw $t1, -1220($fp)
	li $t2, 0
	bne $t1, $t2, label932
	j label933
label932:
	li $t0, 11101
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -1228($fp)
	li $t0, 0
	sw $t0, -1232($fp)
	li $t0, 62654
	sw $t0, -1236($fp)
	lw $t0, -120($fp)
	sw $t0, -1240($fp)
	lw $t0, -1236($fp)
	lw $t1, -1240($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1244($fp)
	lw $t1, -1244($fp)
	li $t2, 0
	bne $t1, $t2, label936
	j label935
label936:
	li $t0, 30657
	sw $t0, -1248($fp)
	lw $t1, -1248($fp)
	li $t2, 0
	bne $t1, $t2, label934
	j label935
label934:
	li $t0, 1
	sw $t0, -1232($fp)
label935:
	addi $sp, $sp, -4
	lw $t0, -1228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1232($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1252($fp)
	addi $sp, $sp, 12
	lw $ra, -4($fp)
	lw $v0, -1252($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label931
label933:
	addi $t0, $fp, -12
	sw $t0, -1256($fp)
	li $t0, 0
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
	addi $t0, $fp, -12
	sw $t0, -1276($fp)
	li $t0, 1
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
	lw $t0, -120($fp)
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1308($fp)
	li $t0, 0
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
	lw $t0, -1324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1328($fp)
	li $t0, 1
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
	lw $t0, -1344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1348($fp)
	li $t0, 2
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
	lw $t0, -1364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1368($fp)
	li $t0, 3
	sw $t0, -1372($fp)
	li $t0, 4
	lw $t1, -1372($fp)
	mul $t0, $t0, $t1
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	lw $t1, -1368($fp)
	add $t0, $t0, $t1
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	lw $t1, 0($t0)
	sw $t1, -1384($fp)
	lw $t0, -1384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1388($fp)
	li $t0, 0
	sw $t0, -1392($fp)
	li $t0, 4
	lw $t1, -1392($fp)
	mul $t0, $t0, $t1
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	lw $t1, -1388($fp)
	add $t0, $t0, $t1
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	lw $t1, 0($t0)
	sw $t1, -1404($fp)
	lw $t0, -1404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1408($fp)
	li $t0, 1
	sw $t0, -1412($fp)
	li $t0, 4
	lw $t1, -1412($fp)
	mul $t0, $t0, $t1
	sw $t0, -1416($fp)
	lw $t0, -1416($fp)
	lw $t1, -1408($fp)
	add $t0, $t0, $t1
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	lw $t1, 0($t0)
	sw $t1, -1424($fp)
	lw $t0, -1424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1428($fp)
	li $t0, 2
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
	lw $t0, -1444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1448($fp)
	li $t0, 3
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
	lw $t0, -1464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1468($fp)
	li $t0, 4
	sw $t0, -1472($fp)
	li $t0, 4
	lw $t1, -1472($fp)
	mul $t0, $t0, $t1
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	lw $t1, -1468($fp)
	add $t0, $t0, $t1
	sw $t0, -1480($fp)
	lw $t0, -1480($fp)
	lw $t1, 0($t0)
	sw $t1, -1484($fp)
	lw $t0, -1484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1488($fp)
	li $t0, 5
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
	lw $t0, -1504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1508($fp)
	li $t0, 6
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
	addi $t0, $fp, -64
	sw $t0, -1528($fp)
	li $t0, 7
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
	addi $t0, $fp, -64
	sw $t0, -1548($fp)
	li $t0, 8
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
	lw $t0, -468($fp)
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1584($fp)
	addi $t0, $fp, -12
	sw $t0, -1588($fp)
	li $t0, 0
	sw $t0, -1592($fp)
	li $t0, 2622
	sw $t0, -1596($fp)
	lw $t1, -1596($fp)
	li $t2, 0
	bne $t1, $t2, label941
	j label940
label941:
	lw $t0, -480($fp)
	sw $t0, -1600($fp)
	lw $t1, -1600($fp)
	li $t2, 0
	bne $t1, $t2, label939
	j label940
label939:
	li $t0, 1
	sw $t0, -1592($fp)
label940:
	li $t0, 4
	lw $t1, -1592($fp)
	mul $t0, $t0, $t1
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	lw $t1, -1588($fp)
	add $t0, $t0, $t1
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	lw $t1, 0($t0)
	sw $t1, -1612($fp)
	lw $t1, -1612($fp)
	li $t2, 0
	bne $t1, $t2, label938
	j label937
label937:
	li $t0, 1
	sw $t0, -1584($fp)
label938:
	lw $t0, -144($fp)
	sw $t0, -1616($fp)
	li $t0, 0
	lw $t1, -1616($fp)
	sub $t0, $t0, $t1
	sw $t0, -1620($fp)
	lw $t0, -1584($fp)
	lw $t1, -1620($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1624($fp)
	lw $ra, -4($fp)
	lw $v0, -1624($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -84
	li $t0, 34840
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 60044
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	lw $t0, -12($fp)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -36($fp)
	li $t0, 0
	sw $t0, -40($fp)
	lw $t0, -12($fp)
	sw $t0, -44($fp)
	lw $t1, -44($fp)
	li $t2, 0
	bne $t1, $t2, label943
	j label942
label942:
	li $t0, 1
	sw $t0, -40($fp)
label943:
	li $t0, 0
	sw $t0, -48($fp)
	lw $t0, -12($fp)
	sw $t0, -52($fp)
	lw $t1, -52($fp)
	li $t2, 0
	bne $t1, $t2, label947
	j label946
label947:
	li $t0, 1605
	sw $t0, -56($fp)
	lw $t1, -56($fp)
	li $t2, 0
	bne $t1, $t2, label944
	j label946
label946:
	li $t0, 4242
	sw $t0, -60($fp)
	lw $t1, -60($fp)
	li $t2, 0
	bne $t1, $t2, label944
	j label945
label944:
	li $t0, 1
	sw $t0, -48($fp)
label945:
	li $t0, 0
	sw $t0, -64($fp)
	li $t0, 46223
	sw $t0, -68($fp)
	lw $t0, -12($fp)
	sw $t0, -72($fp)
	lw $t1, -68($fp)
	lw $t2, -72($fp)
	bne $t1, $t2, label948
	j label949
label948:
	li $t0, 1
	sw $t0, -64($fp)
label949:
	addi $sp, $sp, -4
	lw $t0, -36($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -40($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -48($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -64($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -76($fp)
	addi $sp, $sp, 20
	lw $t0, -12($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 63335
	sw $t0, -88($fp)
	lw $ra, -4($fp)
	lw $v0, -88($fp)
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
