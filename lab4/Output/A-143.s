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
	addi $sp, $sp, -604
	li $t0, 4653
	sw $t0, -44($fp)
	addi $t0, $fp, -20
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
	li $t0, 1580
	sw $t0, -68($fp)
	addi $t0, $fp, -20
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
	li $t0, 9410
	sw $t0, -92($fp)
	addi $t0, $fp, -20
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
	li $t0, 8435
	sw $t0, -116($fp)
	addi $t0, $fp, -20
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
	li $t0, 30219
	sw $t0, -140($fp)
	addi $t0, $fp, -40
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
	li $t0, 29021
	sw $t0, -164($fp)
	addi $t0, $fp, -40
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
	li $t0, 57547
	sw $t0, -188($fp)
	addi $t0, $fp, -40
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
	li $t0, 56672
	sw $t0, -212($fp)
	addi $t0, $fp, -40
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
	li $t0, 57564
	sw $t0, -236($fp)
	addi $t0, $fp, -40
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
	li $t0, 0
	sw $t0, -260($fp)
	addi $t0, $fp, -40
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
	li $t0, 40897
	sw $t0, -284($fp)
	li $t0, 0
	lw $t1, -284($fp)
	sub $t0, $t0, $t1
	sw $t0, -288($fp)
	lw $t0, -280($fp)
	lw $t1, -288($fp)
	mul $t0, $t0, $t1
	sw $t0, -292($fp)
	li $t0, 0
	lw $t1, -292($fp)
	sub $t0, $t0, $t1
	sw $t0, -296($fp)
	lw $t1, -296($fp)
	li $t2, 0
	bne $t1, $t2, label124
	j label123
label124:
	li $t0, 0
	sw $t0, -300($fp)
	li $t0, 4478
	sw $t0, -304($fp)
	li $t0, 43137
	sw $t0, -308($fp)
	lw $t0, -304($fp)
	lw $t1, -308($fp)
	add $t0, $t0, $t1
	sw $t0, -312($fp)
	lw $t0, 8($fp)
	sw $t0, -316($fp)
	lw $t1, -312($fp)
	lw $t2, -316($fp)
	bgt $t1, $t2, label125
	j label126
label125:
	li $t0, 1
	sw $t0, -300($fp)
label126:
	li $t0, 51980
	sw $t0, -320($fp)
	li $t0, 18660
	sw $t0, -324($fp)
	lw $t0, -320($fp)
	lw $t1, -324($fp)
	sub $t0, $t0, $t1
	sw $t0, -328($fp)
	lw $t0, 4($fp)
	sw $t0, -332($fp)
	lw $t0, -328($fp)
	lw $t1, -332($fp)
	sub $t0, $t0, $t1
	sw $t0, -336($fp)
	li $t0, 0
	sw $t0, -340($fp)
	lw $t0, 4($fp)
	sw $t0, -344($fp)
	lw $t1, -344($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label127
label127:
	li $t0, 1
	sw $t0, -340($fp)
label128:
	lw $t0, 4($fp)
	sw $t0, -348($fp)
	lw $t0, -340($fp)
	lw $t1, -348($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -352($fp)
	lw $t0, 8($fp)
	sw $t0, -356($fp)
	lw $t0, 8($fp)
	sw $t0, -360($fp)
	lw $t0, -356($fp)
	lw $t1, -360($fp)
	sub $t0, $t0, $t1
	sw $t0, -364($fp)
	lw $t0, 4($fp)
	sw $t0, -368($fp)
	lw $t0, -364($fp)
	lw $t1, -368($fp)
	add $t0, $t0, $t1
	sw $t0, -372($fp)
	addi $sp, $sp, -4
	lw $t0, -300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -372($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -376($fp)
	addi $sp, $sp, 20
	lw $t1, -376($fp)
	li $t2, 0
	bne $t1, $t2, label123
	j label121
label123:
	addi $t0, $fp, -20
	sw $t0, -380($fp)
	lw $t0, 8($fp)
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
	lw $t1, -396($fp)
	li $t2, 0
	bne $t1, $t2, label122
	j label129
label129:
	li $t0, 12540
	sw $t0, -400($fp)
	li $t0, 20340
	sw $t0, -404($fp)
	lw $t0, -400($fp)
	lw $t1, -404($fp)
	mul $t0, $t0, $t1
	sw $t0, -408($fp)
	lw $t1, -408($fp)
	li $t2, 0
	bne $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -260($fp)
label122:
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
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
	addi $t0, $fp, -40
	sw $t0, -492($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
	sw $t0, -512($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -532($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -552($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -572($fp)
	li $t0, 4
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
	addi $t0, $fp, -20
	sw $t0, -592($fp)
	li $t0, 0
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
	lw $ra, -4($fp)
	lw $v0, -608($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -296
	li $t0, 14352
	sw $t0, -12($fp)
	addi $t0, $fp, -8
	sw $t0, -16($fp)
	li $t0, 0
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -24($fp)
	lw $t0, -16($fp)
	lw $t1, -24($fp)
	add $t0, $t0, $t1
	sw $t0, -28($fp)
	lw $t0, -12($fp)
	lw $t1, -28($fp)
	sw $t0, 0($t1)
	lw $t0, -28($fp)
	lw $t1, 0($t0)
	sw $t1, -32($fp)
	li $t0, 46870
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	li $t0, 58120
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	li $t0, 16153
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	li $t0, 7058
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	lw $t0, -76($fp)
	sw $t0, -84($fp)
	lw $t0, -64($fp)
	sw $t0, -88($fp)
	lw $t0, -84($fp)
	lw $t1, -88($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -92($fp)
	li $t0, 35464
	sw $t0, -96($fp)
	lw $t0, -92($fp)
	lw $t1, -96($fp)
	add $t0, $t0, $t1
	sw $t0, -100($fp)
	addi $sp, $sp, -4
	lw $t0, -100($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -104($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -104($fp)
	sub $t0, $t0, $t1
	sw $t0, -108($fp)
	li $t0, 58873
	sw $t0, -112($fp)
	li $t0, 0
	lw $t1, -112($fp)
	sub $t0, $t0, $t1
	sw $t0, -116($fp)
	li $t0, 0
	sw $t0, -120($fp)
	lw $t0, 4($fp)
	sw $t0, -124($fp)
	lw $t0, -76($fp)
	sw $t0, -128($fp)
	lw $t0, -124($fp)
	lw $t1, -128($fp)
	add $t0, $t0, $t1
	sw $t0, -132($fp)
	lw $t1, -132($fp)
	li $t2, 0
	bne $t1, $t2, label130
	j label132
label132:
	lw $t0, -52($fp)
	sw $t0, -136($fp)
	lw $t1, -136($fp)
	li $t2, 0
	bne $t1, $t2, label130
	j label131
label130:
	li $t0, 1
	sw $t0, -120($fp)
label131:
	lw $t0, -40($fp)
	sw $t0, -140($fp)
	lw $t0, -76($fp)
	sw $t0, -144($fp)
	lw $t0, -140($fp)
	lw $t1, -144($fp)
	add $t0, $t0, $t1
	sw $t0, -148($fp)
	lw $t0, -52($fp)
	sw $t0, -152($fp)
	lw $t0, -148($fp)
	lw $t1, -152($fp)
	add $t0, $t0, $t1
	sw $t0, -156($fp)
	li $t0, 0
	sw $t0, -160($fp)
	addi $t0, $fp, -8
	sw $t0, -164($fp)
	li $t0, 0
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
	lw $t1, -180($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label133
label133:
	li $t0, 1
	sw $t0, -160($fp)
label134:
	addi $sp, $sp, -4
	lw $t0, -160($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -184($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -184($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -188($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -188($fp)
	sub $t0, $t0, $t1
	sw $t0, -192($fp)
	li $t0, 0
	sw $t0, -196($fp)
	addi $t0, $fp, -8
	sw $t0, -200($fp)
	li $t0, 0
	sw $t0, -204($fp)
	li $t0, 10621
	sw $t0, -208($fp)
	lw $t0, -52($fp)
	sw $t0, -212($fp)
	lw $t0, -208($fp)
	lw $t1, -212($fp)
	sub $t0, $t0, $t1
	sw $t0, -216($fp)
	lw $t1, -216($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label138
label139:
	lw $t0, -40($fp)
	sw $t0, -220($fp)
	lw $t1, -220($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label138
label137:
	li $t0, 1
	sw $t0, -204($fp)
label138:
	li $t0, 4
	lw $t1, -204($fp)
	mul $t0, $t0, $t1
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	lw $t1, -200($fp)
	add $t0, $t0, $t1
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	lw $t1, 0($t0)
	sw $t1, -232($fp)
	lw $t1, -232($fp)
	li $t2, 0
	bne $t1, $t2, label136
	j label135
label135:
	li $t0, 1
	sw $t0, -196($fp)
label136:
	lw $t0, 4($fp)
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -240($fp)
	addi $sp, $sp, -4
	lw $t0, -240($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -244($fp)
	addi $sp, $sp, 8
	li $t0, 43905
	sw $t0, -248($fp)
	lw $t0, -244($fp)
	lw $t1, -248($fp)
	sub $t0, $t0, $t1
	sw $t0, -252($fp)
	addi $t0, $fp, -8
	sw $t0, -256($fp)
	li $t0, 0
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
	lw $t0, -272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -40($fp)
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -52($fp)
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -64($fp)
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -76($fp)
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 63526
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -296($fp)
	addi $sp, $sp, -4
	lw $t0, -296($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -300($fp)
	addi $sp, $sp, 8
	lw $ra, -4($fp)
	lw $v0, -300($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1856
	li $t0, 12201
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -60($fp)
	li $t0, 53316
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	li $t0, 6426
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	li $t0, 42420
	sw $t0, -88($fp)
	addi $t0, $fp, -24
	sw $t0, -92($fp)
	li $t0, 0
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
	li $t0, 16801
	sw $t0, -112($fp)
	addi $t0, $fp, -24
	sw $t0, -116($fp)
	li $t0, 1
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
	li $t0, 63973
	sw $t0, -136($fp)
	addi $t0, $fp, -24
	sw $t0, -140($fp)
	li $t0, 2
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
	li $t0, 33556
	sw $t0, -160($fp)
	addi $t0, $fp, -24
	sw $t0, -164($fp)
	li $t0, 3
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
	li $t0, 8829
	sw $t0, -184($fp)
	addi $t0, $fp, -24
	sw $t0, -188($fp)
	li $t0, 4
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
	li $t0, 39155
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	li $t0, 38075
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -228($fp)
	li $t0, 49726
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	li $t0, 25600
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	li $t0, 56735
	sw $t0, -256($fp)
	addi $t0, $fp, -32
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
	li $t0, 54205
	sw $t0, -280($fp)
	addi $t0, $fp, -32
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
	li $t0, 3201
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -312($fp)
	li $t0, 3739
	sw $t0, -316($fp)
	addi $t0, $fp, -48
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
	li $t0, 9009
	sw $t0, -340($fp)
	addi $t0, $fp, -48
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
	li $t0, 9784
	sw $t0, -364($fp)
	addi $t0, $fp, -48
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
	li $t0, 15484
	sw $t0, -388($fp)
	addi $t0, $fp, -48
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
	li $t0, 23361
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	li $t0, 56654
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	li $t0, 8068
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	li $t0, 39514
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	lw $t0, -56($fp)
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -68($fp)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -80($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -472($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -492($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -512($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -532($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -552($fp)
	li $t0, 4
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
	lw $t0, -212($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -224($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -236($fp)
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -248($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -588($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -608($fp)
	li $t0, 1
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
	lw $t0, -308($fp)
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -632($fp)
	li $t0, 0
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
	addi $t0, $fp, -48
	sw $t0, -652($fp)
	li $t0, 1
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
	addi $t0, $fp, -48
	sw $t0, -672($fp)
	li $t0, 2
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
	addi $t0, $fp, -48
	sw $t0, -692($fp)
	li $t0, 3
	sw $t0, -696($fp)
	li $t0, 4
	lw $t1, -696($fp)
	mul $t0, $t0, $t1
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	lw $t1, -692($fp)
	add $t0, $t0, $t1
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	lw $t1, 0($t0)
	sw $t1, -708($fp)
	lw $t0, -708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -416($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -428($fp)
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -440($fp)
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -452($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -728($fp)
	addi $t0, $fp, -32
	sw $t0, -732($fp)
	lw $t0, 12($fp)
	sw $t0, -736($fp)
	li $t0, 0
	lw $t1, -736($fp)
	sub $t0, $t0, $t1
	sw $t0, -740($fp)
	li $t0, 4
	lw $t1, -740($fp)
	mul $t0, $t0, $t1
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	lw $t1, -732($fp)
	add $t0, $t0, $t1
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	lw $t1, 0($t0)
	sw $t1, -752($fp)
	li $t0, 0
	sw $t0, -756($fp)
	li $t0, 63712
	sw $t0, -760($fp)
	lw $t1, -760($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label143
label143:
	li $t0, 1
	sw $t0, -756($fp)
label144:
	lw $t0, -752($fp)
	lw $t1, -756($fp)
	mul $t0, $t0, $t1
	sw $t0, -764($fp)
	lw $t1, -764($fp)
	li $t2, 0
	bne $t1, $t2, label140
	j label142
label142:
	li $t0, 43532
	sw $t0, -768($fp)
	lw $t1, -768($fp)
	li $t2, 0
	bne $t1, $t2, label140
	j label141
label140:
	li $t0, 1
	sw $t0, -728($fp)
label141:
	lw $ra, -4($fp)
	lw $v0, -728($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -428($fp)
	sw $t0, -772($fp)
	addi $t0, $fp, -32
	sw $t0, -776($fp)
	lw $t0, 12($fp)
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
	lw $t0, -772($fp)
	lw $t1, -792($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -796($fp)
	lw $t0, -796($fp)
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -800($fp)
	lw $t1, -800($fp)
	li $t2, 0
	bne $t1, $t2, label145
	j label146
label145:
	li $t0, 0
	sw $t0, -804($fp)
	li $t0, 0
	sw $t0, -808($fp)
	li $t0, 0
	sw $t0, -812($fp)
	lw $t0, -224($fp)
	sw $t0, -816($fp)
	lw $t1, -816($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label153
label153:
	li $t0, 1
	sw $t0, -812($fp)
label154:
	li $t0, 6557
	sw $t0, -820($fp)
	li $t0, 0
	lw $t1, -820($fp)
	sub $t0, $t0, $t1
	sw $t0, -824($fp)
	lw $t1, -812($fp)
	lw $t2, -824($fp)
	bgt $t1, $t2, label151
	j label152
label151:
	li $t0, 1
	sw $t0, -808($fp)
label152:
	li $t0, 0
	sw $t0, -828($fp)
	li $t0, 0
	sw $t0, -832($fp)
	lw $t0, -248($fp)
	sw $t0, -836($fp)
	lw $t1, -836($fp)
	li $t2, 0
	bne $t1, $t2, label158
	j label157
label157:
	li $t0, 1
	sw $t0, -832($fp)
label158:
	lw $t0, 12($fp)
	sw $t0, -840($fp)
	lw $t1, -832($fp)
	lw $t2, -840($fp)
	bge $t1, $t2, label155
	j label156
label155:
	li $t0, 1
	sw $t0, -828($fp)
label156:
	lw $t1, -808($fp)
	lw $t2, -828($fp)
	bne $t1, $t2, label148
	j label150
label150:
	lw $t0, 4($fp)
	sw $t0, -844($fp)
	li $t0, 0
	lw $t1, -844($fp)
	sub $t0, $t0, $t1
	sw $t0, -848($fp)
	lw $t1, -848($fp)
	li $t2, 0
	bne $t1, $t2, label160
	j label149
label160:
	lw $t0, -212($fp)
	sw $t0, -852($fp)
	lw $t1, -852($fp)
	li $t2, 0
	bne $t1, $t2, label159
	j label149
label159:
	lw $t0, 8($fp)
	sw $t0, -856($fp)
	lw $t1, -856($fp)
	li $t2, 0
	bne $t1, $t2, label149
	j label148
label148:
	li $t0, 1
	sw $t0, -804($fp)
label149:
	li $t0, 0
	sw $t0, -860($fp)
	addi $t0, $fp, -24
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
	li $t0, 17178
	sw $t0, -884($fp)
	lw $t0, -880($fp)
	lw $t1, -884($fp)
	add $t0, $t0, $t1
	sw $t0, -888($fp)
	addi $sp, $sp, -4
	lw $t0, -888($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -892($fp)
	addi $sp, $sp, 8
	li $t0, 18900
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -900($fp)
	addi $sp, $sp, -4
	lw $t0, -900($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -904($fp)
	addi $sp, $sp, 8
	lw $t1, -892($fp)
	lw $t2, -904($fp)
	ble $t1, $t2, label164
	j label163
label164:
	lw $t0, 12($fp)
	sw $t0, -908($fp)
	li $t0, 0
	lw $t1, -908($fp)
	sub $t0, $t0, $t1
	sw $t0, -912($fp)
	lw $t1, -912($fp)
	li $t2, 0
	bne $t1, $t2, label163
	j label161
label163:
	addi $t0, $fp, -24
	sw $t0, -916($fp)
	lw $t0, -236($fp)
	sw $t0, -920($fp)
	li $t0, 34860
	sw $t0, -924($fp)
	lw $t0, -920($fp)
	lw $t1, -924($fp)
	sub $t0, $t0, $t1
	sw $t0, -928($fp)
	li $t0, 4
	lw $t1, -928($fp)
	mul $t0, $t0, $t1
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	lw $t1, -916($fp)
	add $t0, $t0, $t1
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	lw $t1, 0($t0)
	sw $t1, -940($fp)
	lw $t1, -940($fp)
	li $t2, 0
	bne $t1, $t2, label161
	j label162
label161:
	li $t0, 1
	sw $t0, -860($fp)
label162:
	li $t0, 0
	sw $t0, -944($fp)
	lw $t0, -236($fp)
	sw $t0, -948($fp)
	li $t0, 0
	lw $t1, -948($fp)
	sub $t0, $t0, $t1
	sw $t0, -952($fp)
	lw $t1, -952($fp)
	li $t2, 0
	bne $t1, $t2, label167
	j label165
label167:
	lw $t0, -452($fp)
	sw $t0, -956($fp)
	li $t0, 0
	sw $t0, -960($fp)
	lw $t0, -68($fp)
	sw $t0, -964($fp)
	lw $t1, -964($fp)
	li $t2, 0
	bne $t1, $t2, label169
	j label168
label168:
	li $t0, 1
	sw $t0, -960($fp)
label169:
	lw $t0, -956($fp)
	lw $t1, -960($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -968($fp)
	li $t0, 0
	lw $t1, -968($fp)
	sub $t0, $t0, $t1
	sw $t0, -972($fp)
	lw $t1, -972($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label165
label165:
	li $t0, 1
	sw $t0, -944($fp)
label166:
label146:
	lw $t0, -212($fp)
	sw $t0, -976($fp)
	addi $t0, $fp, -24
	sw $t0, -980($fp)
	addi $t0, $fp, -24
	sw $t0, -984($fp)
	li $t0, 2
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
	li $t0, 4
	lw $t1, -1000($fp)
	mul $t0, $t0, $t1
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	lw $t1, -980($fp)
	add $t0, $t0, $t1
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	lw $t1, 0($t0)
	sw $t1, -1012($fp)
	lw $t0, -976($fp)
	lw $t1, -1012($fp)
	mul $t0, $t0, $t1
	sw $t0, -1016($fp)
	lw $t1, -1016($fp)
	li $t2, 0
	bne $t1, $t2, label170
	j label171
label170:
	li $t0, 41286
	sw $t0, -1024($fp)
	addi $t0, $fp, -1020
	sw $t0, -1028($fp)
	li $t0, 0
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
	li $t0, 6264
	sw $t0, -1048($fp)
	addi $t0, $fp, -24
	sw $t0, -1052($fp)
	li $t0, 0
	sw $t0, -1056($fp)
	li $t0, 0
	sw $t0, -1060($fp)
	lw $t0, -452($fp)
	sw $t0, -1064($fp)
	li $t0, 23482
	sw $t0, -1068($fp)
	lw $t0, -1064($fp)
	lw $t1, -1068($fp)
	add $t0, $t0, $t1
	sw $t0, -1072($fp)
	lw $t0, -248($fp)
	sw $t0, -1076($fp)
	lw $t1, -1072($fp)
	lw $t2, -1076($fp)
	ble $t1, $t2, label175
	j label176
label175:
	li $t0, 1
	sw $t0, -1060($fp)
label176:
	lw $t0, -80($fp)
	sw $t0, -1080($fp)
	li $t0, 39723
	sw $t0, -1084($fp)
	lw $t0, -1080($fp)
	lw $t1, -1084($fp)
	sub $t0, $t0, $t1
	sw $t0, -1088($fp)
	lw $t1, -1060($fp)
	lw $t2, -1088($fp)
	ble $t1, $t2, label173
	j label174
label173:
	li $t0, 1
	sw $t0, -1056($fp)
label174:
	li $t0, 4
	lw $t1, -1056($fp)
	mul $t0, $t0, $t1
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	lw $t1, -1052($fp)
	add $t0, $t0, $t1
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	lw $t1, 0($t0)
	sw $t1, -1100($fp)
	li $t0, 0
	sw $t0, -1104($fp)
	lw $t0, -56($fp)
	sw $t0, -1108($fp)
	lw $t1, -1108($fp)
	li $t2, 0
	bne $t1, $t2, label179
	j label177
label179:
	li $t0, 38943
	sw $t0, -1112($fp)
	lw $t1, -1112($fp)
	li $t2, 0
	bne $t1, $t2, label177
	j label178
label177:
	li $t0, 1
	sw $t0, -1104($fp)
label178:
	li $t0, 13343
	sw $t0, -1116($fp)
	li $t0, 12360
	sw $t0, -1120($fp)
	lw $t0, -1116($fp)
	lw $t1, -1120($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1124($fp)
	li $t0, 16502
	sw $t0, -1128($fp)
	lw $t0, -1124($fp)
	lw $t1, -1128($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1132($fp)
	li $t0, 39821
	sw $t0, -1136($fp)
	li $t0, 32311
	sw $t0, -1140($fp)
	lw $t0, -1136($fp)
	lw $t1, -1140($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1144($fp)
	addi $sp, $sp, -4
	lw $t0, -1104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1144($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1148($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -1020
	sw $t0, -1152($fp)
	lw $t0, -224($fp)
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
	li $t0, 0
	lw $t1, -1168($fp)
	sub $t0, $t0, $t1
	sw $t0, -1172($fp)
	lw $t0, -1148($fp)
	lw $t1, -1172($fp)
	sub $t0, $t0, $t1
	sw $t0, -1176($fp)
	j label172
label171:
	li $t0, 0
	sw $t0, -1180($fp)
	li $t0, 0
	sw $t0, -1184($fp)
	lw $t0, 12($fp)
	sw $t0, -1188($fp)
	li $t0, 3559
	sw $t0, -1192($fp)
	lw $t0, -1188($fp)
	lw $t1, -1192($fp)
	mul $t0, $t0, $t1
	sw $t0, -1196($fp)
	lw $t0, -452($fp)
	sw $t0, -1200($fp)
	lw $t0, -1196($fp)
	lw $t1, -1200($fp)
	mul $t0, $t0, $t1
	sw $t0, -1204($fp)
	li $t0, 5171
	sw $t0, -1208($fp)
	lw $t0, -1204($fp)
	lw $t1, -1208($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1212($fp)
	li $t0, 0
	sw $t0, -1216($fp)
	lw $t0, -236($fp)
	sw $t0, -1220($fp)
	lw $t1, -1220($fp)
	li $t2, 0
	bne $t1, $t2, label185
	j label184
label184:
	li $t0, 1
	sw $t0, -1216($fp)
label185:
	lw $t1, -1212($fp)
	lw $t2, -1216($fp)
	beq $t1, $t2, label182
	j label183
label182:
	li $t0, 1
	sw $t0, -1184($fp)
label183:
	li $t0, 0
	sw $t0, -1224($fp)
	li $t0, 0
	sw $t0, -1228($fp)
	lw $t0, -236($fp)
	sw $t0, -1232($fp)
	lw $t1, -1232($fp)
	li $t2, 0
	bne $t1, $t2, label188
	j label189
label188:
	li $t0, 1
	sw $t0, -1228($fp)
label189:
	li $t0, 42144
	sw $t0, -1236($fp)
	lw $t0, -224($fp)
	sw $t0, -1240($fp)
	lw $t0, -1236($fp)
	lw $t1, -1240($fp)
	sub $t0, $t0, $t1
	sw $t0, -1244($fp)
	lw $t1, -1228($fp)
	lw $t2, -1244($fp)
	blt $t1, $t2, label186
	j label187
label186:
	li $t0, 1
	sw $t0, -1224($fp)
label187:
	lw $t1, -1184($fp)
	lw $t2, -1224($fp)
	beq $t1, $t2, label180
	j label181
label180:
	li $t0, 1
	sw $t0, -1180($fp)
label181:
	lw $ra, -4($fp)
	lw $v0, -1180($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label172:
	addi $t0, $fp, -48
	sw $t0, -1248($fp)
	li $t0, 0
	sw $t0, -1252($fp)
	li $t0, 7299
	sw $t0, -1256($fp)
	li $t0, 14180
	sw $t0, -1260($fp)
	lw $t0, -1256($fp)
	lw $t1, -1260($fp)
	add $t0, $t0, $t1
	sw $t0, -1264($fp)
	li $t0, 51928
	sw $t0, -1268($fp)
	lw $t1, -1264($fp)
	lw $t2, -1268($fp)
	blt $t1, $t2, label193
	j label194
label193:
	li $t0, 1
	sw $t0, -1252($fp)
label194:
	li $t0, 4
	lw $t1, -1252($fp)
	mul $t0, $t0, $t1
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	lw $t1, -1248($fp)
	add $t0, $t0, $t1
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	lw $t1, 0($t0)
	sw $t1, -1280($fp)
	li $t0, 0
	sw $t0, -1284($fp)
	lw $t0, -68($fp)
	sw $t0, -1288($fp)
	lw $t0, -236($fp)
	sw $t0, -1292($fp)
	lw $t0, -1288($fp)
	lw $t1, -1292($fp)
	mul $t0, $t0, $t1
	sw $t0, -1296($fp)
	li $t0, 0
	lw $t1, -1296($fp)
	sub $t0, $t0, $t1
	sw $t0, -1300($fp)
	addi $sp, $sp, -4
	lw $t0, -1300($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1304($fp)
	addi $sp, $sp, 8
	lw $t0, -80($fp)
	sw $t0, -1308($fp)
	lw $t0, -1304($fp)
	lw $t1, -1308($fp)
	sub $t0, $t0, $t1
	sw $t0, -1312($fp)
	lw $t0, -68($fp)
	sw $t0, -1316($fp)
	li $t0, 0
	sw $t0, -1320($fp)
	li $t0, 0
	sw $t0, -1324($fp)
	lw $t0, -416($fp)
	sw $t0, -1328($fp)
	lw $t0, -224($fp)
	sw $t0, -1332($fp)
	lw $t1, -1328($fp)
	lw $t2, -1332($fp)
	bgt $t1, $t2, label199
	j label200
label199:
	li $t0, 1
	sw $t0, -1324($fp)
label200:
	lw $t0, -440($fp)
	sw $t0, -1336($fp)
	lw $t1, -1324($fp)
	lw $t2, -1336($fp)
	bne $t1, $t2, label197
	j label198
label197:
	li $t0, 1
	sw $t0, -1320($fp)
label198:
	addi $sp, $sp, -4
	lw $t0, -1312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1320($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1340($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -1340($fp)
	sub $t0, $t0, $t1
	sw $t0, -1344($fp)
	lw $t1, -1344($fp)
	li $t2, 0
	bne $t1, $t2, label196
	j label195
label195:
	li $t0, 1
	sw $t0, -1284($fp)
label196:
	lw $t1, -1280($fp)
	lw $t2, -1284($fp)
	bne $t1, $t2, label190
	j label191
label190:
	li $t0, 0
	sw $t0, -1348($fp)
	li $t0, 0
	sw $t0, -1352($fp)
	li $t0, 22783
	sw $t0, -1356($fp)
	li $t0, 0
	lw $t1, -1356($fp)
	sub $t0, $t0, $t1
	sw $t0, -1360($fp)
	addi $t0, $fp, -24
	sw $t0, -1364($fp)
	li $t0, 3
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
	lw $t1, -1360($fp)
	lw $t2, -1380($fp)
	bne $t1, $t2, label203
	j label204
label203:
	li $t0, 1
	sw $t0, -1352($fp)
label204:
	li $t0, 0
	sw $t0, -1384($fp)
	li $t0, 0
	sw $t0, -1388($fp)
	li $t0, 0
	sw $t0, -1392($fp)
	lw $t0, -452($fp)
	sw $t0, -1396($fp)
	lw $t1, -1396($fp)
	li $t2, 0
	bne $t1, $t2, label210
	j label209
label209:
	li $t0, 1
	sw $t0, -1392($fp)
label210:
	lw $t0, -452($fp)
	sw $t0, -1400($fp)
	lw $t1, -1392($fp)
	lw $t2, -1400($fp)
	bgt $t1, $t2, label207
	j label208
label207:
	li $t0, 1
	sw $t0, -1388($fp)
label208:
	lw $t0, -452($fp)
	sw $t0, -1404($fp)
	li $t0, 0
	lw $t1, -1404($fp)
	sub $t0, $t0, $t1
	sw $t0, -1408($fp)
	lw $t1, -1388($fp)
	lw $t2, -1408($fp)
	blt $t1, $t2, label205
	j label206
label205:
	li $t0, 1
	sw $t0, -1384($fp)
label206:
	lw $t1, -1352($fp)
	lw $t2, -1384($fp)
	beq $t1, $t2, label201
	j label202
label201:
	li $t0, 1
	sw $t0, -1348($fp)
label202:
	li $t0, 0
	sw $t0, -1412($fp)
	addi $t0, $fp, -48
	sw $t0, -1416($fp)
	li $t0, 3
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
	lw $t1, -1432($fp)
	li $t2, 0
	bne $t1, $t2, label211
	j label212
label211:
	li $t0, 1
	sw $t0, -1412($fp)
label212:
	li $t0, 0
	sw $t0, -1436($fp)
	li $t0, 41222
	sw $t0, -1440($fp)
	lw $t1, -1440($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label214
label213:
	li $t0, 1
	sw $t0, -1436($fp)
label214:
	li $t0, 0
	sw $t0, -1444($fp)
	li $t0, 8847
	sw $t0, -1448($fp)
	lw $t1, -1448($fp)
	li $t2, 0
	bne $t1, $t2, label215
	j label217
label217:
	lw $t0, -452($fp)
	sw $t0, -1452($fp)
	lw $t1, -1452($fp)
	li $t2, 0
	bne $t1, $t2, label215
	j label216
label215:
	li $t0, 1
	sw $t0, -1444($fp)
label216:
	addi $sp, $sp, -4
	lw $t0, -1444($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1456($fp)
	addi $sp, $sp, 8
	lw $t0, -1436($fp)
	lw $t1, -1456($fp)
	add $t0, $t0, $t1
	sw $t0, -1460($fp)
	j label192
label191:
	li $t0, 0
	sw $t0, -1464($fp)
	addi $t0, $fp, -24
	sw $t0, -1468($fp)
	lw $t0, -440($fp)
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
	li $t0, 16218
	sw $t0, -1488($fp)
	lw $t0, -1484($fp)
	lw $t1, -1488($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1492($fp)
	lw $t0, -236($fp)
	sw $t0, -1496($fp)
	lw $t0, -68($fp)
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
	lw $t0, -1492($fp)
	lw $t1, -1508($fp)
	add $t0, $t0, $t1
	sw $t0, -1512($fp)
	li $t0, 0
	sw $t0, -1516($fp)
	li $t0, 0
	sw $t0, -1520($fp)
	addi $t0, $fp, -48
	sw $t0, -1524($fp)
	li $t0, 3
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
	lw $t1, -1540($fp)
	li $t2, 0
	bne $t1, $t2, label223
	j label222
label222:
	li $t0, 1
	sw $t0, -1520($fp)
label223:
	lw $t0, -56($fp)
	sw $t0, -1544($fp)
	li $t0, 35118
	sw $t0, -1548($fp)
	lw $t0, -1544($fp)
	lw $t1, -1548($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1552($fp)
	lw $t1, -1520($fp)
	lw $t2, -1552($fp)
	blt $t1, $t2, label220
	j label221
label220:
	li $t0, 1
	sw $t0, -1516($fp)
label221:
	lw $t1, -1512($fp)
	lw $t2, -1516($fp)
	beq $t1, $t2, label218
	j label219
label218:
	li $t0, 1
	sw $t0, -1464($fp)
label219:
	lw $ra, -4($fp)
	lw $v0, -1464($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label192:
	lw $t0, -56($fp)
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -68($fp)
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -80($fp)
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -1568($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
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
	lw $t0, -1604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -1608($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -1628($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -1648($fp)
	li $t0, 4
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
	lw $t0, -212($fp)
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -224($fp)
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -236($fp)
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -248($fp)
	sw $t0, -1680($fp)
	lw $t0, -1680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1684($fp)
	li $t0, 0
	sw $t0, -1688($fp)
	li $t0, 4
	lw $t1, -1688($fp)
	mul $t0, $t0, $t1
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	lw $t1, -1684($fp)
	add $t0, $t0, $t1
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	lw $t1, 0($t0)
	sw $t1, -1700($fp)
	lw $t0, -1700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1704($fp)
	li $t0, 1
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
	lw $t0, -1720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -308($fp)
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
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
	addi $t0, $fp, -48
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
	addi $t0, $fp, -48
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
	addi $t0, $fp, -48
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
	lw $t0, -416($fp)
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -428($fp)
	sw $t0, -1812($fp)
	lw $t0, -1812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -440($fp)
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -452($fp)
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1824($fp)
	li $t0, 15042
	sw $t0, -1828($fp)
	lw $t1, -1828($fp)
	li $t2, 0
	bne $t1, $t2, label225
	j label224
label224:
	li $t0, 1
	sw $t0, -1824($fp)
label225:
	li $t0, 0
	sw $t0, -1832($fp)
	lw $t0, -440($fp)
	sw $t0, -1836($fp)
	lw $t1, -1836($fp)
	li $t2, 0
	bne $t1, $t2, label227
	j label226
label226:
	li $t0, 1
	sw $t0, -1832($fp)
label227:
	lw $t0, -1824($fp)
	lw $t1, -1832($fp)
	mul $t0, $t0, $t1
	sw $t0, -1840($fp)
	li $t0, 64635
	sw $t0, -1844($fp)
	li $t0, 1
	sw $t0, -1848($fp)
	lw $t0, -1844($fp)
	lw $t1, -1848($fp)
	mul $t0, $t0, $t1
	sw $t0, -1852($fp)
	addi $sp, $sp, -4
	lw $t0, -1852($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1856($fp)
	addi $sp, $sp, 8
	lw $t0, -1840($fp)
	lw $t1, -1856($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1860($fp)
	lw $ra, -4($fp)
	lw $v0, -1860($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -620
	li $t0, 56328
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, -32($fp)
	li $t0, 5364
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	li $t0, 65280
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	li $t0, 30516
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	li $t0, 45185
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	li $t0, 32056
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
	li $t0, 43859
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
	li $t0, 57545
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
	li $t0, 48558
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
	lw $t0, -28($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -40($fp)
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -52($fp)
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -64($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -76($fp)
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -200($fp)
	li $t0, 0
	sw $t0, -204($fp)
	li $t0, 4
	lw $t1, -204($fp)
	mul $t0, $t0, $t1
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	lw $t1, -200($fp)
	add $t0, $t0, $t1
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	lw $t1, 0($t0)
	sw $t1, -216($fp)
	lw $t0, -216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -220($fp)
	li $t0, 1
	sw $t0, -224($fp)
	li $t0, 4
	lw $t1, -224($fp)
	mul $t0, $t0, $t1
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	lw $t1, -220($fp)
	add $t0, $t0, $t1
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	lw $t1, 0($t0)
	sw $t1, -236($fp)
	lw $t0, -236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -240($fp)
	li $t0, 2
	sw $t0, -244($fp)
	li $t0, 4
	lw $t1, -244($fp)
	mul $t0, $t0, $t1
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	lw $t1, -240($fp)
	add $t0, $t0, $t1
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	lw $t1, 0($t0)
	sw $t1, -256($fp)
	lw $t0, -256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -260($fp)
	li $t0, 3
	sw $t0, -264($fp)
	li $t0, 4
	lw $t1, -264($fp)
	mul $t0, $t0, $t1
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	lw $t1, -260($fp)
	add $t0, $t0, $t1
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	lw $t1, 0($t0)
	sw $t1, -276($fp)
	lw $t0, -276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 17266
	sw $t0, -280($fp)
	lw $ra, -4($fp)
	lw $v0, -280($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 61104
	sw $t0, -284($fp)
	lw $t0, 4($fp)
	sw $t0, -288($fp)
	lw $t0, -284($fp)
	lw $t1, -288($fp)
	mul $t0, $t0, $t1
	sw $t0, -292($fp)
	lw $t0, -28($fp)
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -40($fp)
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -52($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -64($fp)
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -76($fp)
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -316($fp)
	li $t0, 0
	sw $t0, -320($fp)
	li $t0, 4
	lw $t1, -320($fp)
	mul $t0, $t0, $t1
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	lw $t1, -316($fp)
	add $t0, $t0, $t1
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	lw $t1, 0($t0)
	sw $t1, -332($fp)
	lw $t0, -332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -336($fp)
	li $t0, 1
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
	lw $t0, -352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -356($fp)
	li $t0, 2
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
	lw $t0, -372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -376($fp)
	li $t0, 3
	sw $t0, -380($fp)
	li $t0, 4
	lw $t1, -380($fp)
	mul $t0, $t0, $t1
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	lw $t1, -376($fp)
	add $t0, $t0, $t1
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	lw $t1, 0($t0)
	sw $t1, -392($fp)
	lw $t0, -392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -52($fp)
	sw $t0, -396($fp)
	lw $t0, -40($fp)
	sw $t0, -400($fp)
	li $t0, 3974
	sw $t0, -404($fp)
	lw $t0, -400($fp)
	lw $t1, -404($fp)
	mul $t0, $t0, $t1
	sw $t0, -408($fp)
	lw $t0, -52($fp)
	sw $t0, -412($fp)
	lw $t0, -408($fp)
	lw $t1, -412($fp)
	mul $t0, $t0, $t1
	sw $t0, -416($fp)
	li $t0, 0
	sw $t0, -420($fp)
	li $t0, 0
	sw $t0, -424($fp)
	lw $t0, -40($fp)
	sw $t0, -428($fp)
	lw $t1, -428($fp)
	li $t2, 0
	bne $t1, $t2, label233
	j label231
label233:
	li $t0, 64536
	sw $t0, -432($fp)
	lw $t1, -432($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label231
label232:
	li $t0, 65349
	sw $t0, -436($fp)
	lw $t1, -436($fp)
	li $t2, 0
	bne $t1, $t2, label230
	j label231
label230:
	li $t0, 1
	sw $t0, -424($fp)
label231:
	li $t0, 51433
	sw $t0, -440($fp)
	li $t0, 0
	sw $t0, -444($fp)
	li $t0, 0
	sw $t0, -448($fp)
	li $t0, 56501
	sw $t0, -452($fp)
	lw $t1, -452($fp)
	li $t2, 0
	bne $t1, $t2, label236
	j label237
label236:
	li $t0, 1
	sw $t0, -448($fp)
label237:
	li $t0, 23313
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -460($fp)
	addi $t0, $fp, -20
	sw $t0, -464($fp)
	li $t0, 2
	sw $t0, -468($fp)
	li $t0, 4
	lw $t1, -468($fp)
	mul $t0, $t0, $t1
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	lw $t1, -464($fp)
	add $t0, $t0, $t1
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	lw $t1, 0($t0)
	sw $t1, -480($fp)
	li $t0, 39914
	sw $t0, -484($fp)
	lw $t0, -480($fp)
	lw $t1, -484($fp)
	mul $t0, $t0, $t1
	sw $t0, -488($fp)
	li $t0, 0
	sw $t0, -492($fp)
	li $t0, 2867
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -500($fp)
	addi $sp, $sp, -4
	lw $t0, -500($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -504($fp)
	addi $sp, $sp, 8
	lw $t1, -504($fp)
	li $t2, 0
	bne $t1, $t2, label238
	j label240
label240:
	li $t0, 2373
	sw $t0, -508($fp)
	lw $t1, -508($fp)
	li $t2, 0
	bne $t1, $t2, label238
	j label239
label238:
	li $t0, 1
	sw $t0, -492($fp)
label239:
	addi $sp, $sp, -4
	lw $t0, -448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -492($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -512($fp)
	addi $sp, $sp, 20
	lw $t1, -512($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label234
label234:
	li $t0, 1
	sw $t0, -444($fp)
label235:
	lw $t0, -28($fp)
	sw $t0, -516($fp)
	lw $t0, -40($fp)
	sw $t0, -520($fp)
	lw $t0, -516($fp)
	lw $t1, -520($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -524($fp)
	addi $sp, $sp, -4
	lw $t0, -424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -524($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -528($fp)
	addi $sp, $sp, 20
	lw $t1, -528($fp)
	li $t2, 0
	bne $t1, $t2, label229
	j label228
label228:
	li $t0, 1
	sw $t0, -420($fp)
label229:
	lw $t0, -64($fp)
	sw $t0, -532($fp)
	lw $t0, -40($fp)
	sw $t0, -536($fp)
	lw $t0, -532($fp)
	lw $t1, -536($fp)
	mul $t0, $t0, $t1
	sw $t0, -540($fp)
	lw $t0, -40($fp)
	sw $t0, -544($fp)
	lw $t0, -540($fp)
	lw $t1, -544($fp)
	mul $t0, $t0, $t1
	sw $t0, -548($fp)
	li $t0, 0
	sw $t0, -552($fp)
	li $t0, 53729
	sw $t0, -556($fp)
	li $t0, 59410
	sw $t0, -560($fp)
	lw $t1, -556($fp)
	lw $t2, -560($fp)
	bge $t1, $t2, label241
	j label243
label243:
	lw $t0, -52($fp)
	sw $t0, -564($fp)
	lw $t1, -564($fp)
	li $t2, 0
	bne $t1, $t2, label241
	j label242
label241:
	li $t0, 1
	sw $t0, -552($fp)
label242:
	addi $sp, $sp, -4
	lw $t0, -416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -552($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -568($fp)
	addi $sp, $sp, 20
	lw $t0, -396($fp)
	lw $t1, -568($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -572($fp)
	li $t0, 0
	sw $t0, -576($fp)
	li $t0, 45530
	sw $t0, -580($fp)
	lw $t0, -64($fp)
	sw $t0, -584($fp)
	lw $t0, -580($fp)
	lw $t1, -584($fp)
	mul $t0, $t0, $t1
	sw $t0, -588($fp)
	li $t0, 0
	lw $t1, -588($fp)
	sub $t0, $t0, $t1
	sw $t0, -592($fp)
	lw $t0, -52($fp)
	sw $t0, -596($fp)
	lw $t0, -52($fp)
	sw $t0, -600($fp)
	li $t0, 15217
	sw $t0, -604($fp)
	lw $t0, -600($fp)
	lw $t1, -604($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -608($fp)
	addi $sp, $sp, -4
	lw $t0, -592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -608($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -612($fp)
	addi $sp, $sp, 16
	lw $t1, -612($fp)
	li $t2, 0
	bne $t1, $t2, label246
	j label245
label246:
	lw $t0, -40($fp)
	sw $t0, -616($fp)
	lw $t1, -616($fp)
	li $t2, 0
	bne $t1, $t2, label244
	j label245
label244:
	li $t0, 1
	sw $t0, -576($fp)
label245:
	addi $sp, $sp, -4
	lw $t0, -576($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -620($fp)
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	lw $t1, -620($fp)
	sub $t0, $t0, $t1
	sw $t0, -624($fp)
	lw $ra, -4($fp)
	lw $v0, -624($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -76
	li $t0, 0
	sw $t0, -8($fp)
	li $t0, 0
	sw $t0, -12($fp)
	li $t0, 60572
	sw $t0, -16($fp)
	lw $t1, -16($fp)
	li $t2, 0
	bne $t1, $t2, label250
	j label249
label249:
	li $t0, 1
	sw $t0, -12($fp)
label250:
	lw $t0, 4($fp)
	sw $t0, -20($fp)
	lw $t1, -12($fp)
	lw $t2, -20($fp)
	bne $t1, $t2, label247
	j label248
label247:
	li $t0, 1
	sw $t0, -8($fp)
label248:
	li $t0, 50335
	sw $t0, -24($fp)
	li $t0, 39230
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -32($fp)
	addi $sp, $sp, -4
	lw $t0, -8($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -24($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -36($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -36($fp)
	sub $t0, $t0, $t1
	sw $t0, -40($fp)
	li $t0, 51365
	sw $t0, -44($fp)
	lw $t0, 4($fp)
	sw $t0, -48($fp)
	li $t0, 38329
	sw $t0, -52($fp)
	lw $t0, -48($fp)
	lw $t1, -52($fp)
	mul $t0, $t0, $t1
	sw $t0, -56($fp)
	li $t0, 26598
	sw $t0, -60($fp)
	lw $t0, -56($fp)
	lw $t1, -60($fp)
	mul $t0, $t0, $t1
	sw $t0, -64($fp)
	addi $sp, $sp, -4
	lw $t0, -44($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -64($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -68($fp)
	addi $sp, $sp, 12
	li $t0, 43693
	sw $t0, -72($fp)
	lw $t0, -68($fp)
	lw $t1, -72($fp)
	mul $t0, $t0, $t1
	sw $t0, -76($fp)
	addi $sp, $sp, -4
	lw $t0, -76($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -80($fp)
	addi $sp, $sp, 8
	lw $ra, -4($fp)
	lw $v0, -80($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1016
	li $t0, 26342
	sw $t0, -72($fp)
	addi $t0, $fp, -28
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
	li $t0, 16345
	sw $t0, -96($fp)
	addi $t0, $fp, -28
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
	li $t0, 23342
	sw $t0, -120($fp)
	addi $t0, $fp, -28
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
	li $t0, 58398
	sw $t0, -144($fp)
	addi $t0, $fp, -28
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
	li $t0, 60204
	sw $t0, -168($fp)
	addi $t0, $fp, -28
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
	li $t0, 15351
	sw $t0, -192($fp)
	addi $t0, $fp, -28
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
	li $t0, 41420
	sw $t0, -216($fp)
	addi $t0, $fp, -68
	sw $t0, -220($fp)
	li $t0, 0
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
	li $t0, 11934
	sw $t0, -240($fp)
	addi $t0, $fp, -68
	sw $t0, -244($fp)
	li $t0, 1
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
	li $t0, 10920
	sw $t0, -264($fp)
	addi $t0, $fp, -68
	sw $t0, -268($fp)
	li $t0, 2
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
	li $t0, 29613
	sw $t0, -288($fp)
	addi $t0, $fp, -68
	sw $t0, -292($fp)
	li $t0, 3
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
	li $t0, 5808
	sw $t0, -312($fp)
	addi $t0, $fp, -68
	sw $t0, -316($fp)
	li $t0, 4
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
	li $t0, 13787
	sw $t0, -336($fp)
	addi $t0, $fp, -68
	sw $t0, -340($fp)
	li $t0, 5
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
	li $t0, 31986
	sw $t0, -360($fp)
	addi $t0, $fp, -68
	sw $t0, -364($fp)
	li $t0, 6
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
	li $t0, 51611
	sw $t0, -384($fp)
	addi $t0, $fp, -68
	sw $t0, -388($fp)
	li $t0, 7
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
	li $t0, 39438
	sw $t0, -408($fp)
	addi $t0, $fp, -68
	sw $t0, -412($fp)
	li $t0, 8
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
	li $t0, 6364
	sw $t0, -432($fp)
	addi $t0, $fp, -68
	sw $t0, -436($fp)
	li $t0, 9
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
	li $t0, 9389
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -460($fp)
	li $t0, 0
	sw $t0, -464($fp)
	li $t0, 30403
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -472($fp)
	addi $sp, $sp, -4
	lw $t0, -472($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -476($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -476($fp)
	sub $t0, $t0, $t1
	sw $t0, -480($fp)
	lw $t1, -480($fp)
	li $t2, 0
	bne $t1, $t2, label253
	j label251
label253:
	lw $t0, 16($fp)
	sw $t0, -484($fp)
	lw $t1, -484($fp)
	li $t2, 0
	bne $t1, $t2, label251
	j label252
label251:
	li $t0, 1
	sw $t0, -464($fp)
label252:
	lw $t0, 16($fp)
	sw $t0, -488($fp)
	li $t0, 0
	lw $t1, -488($fp)
	sub $t0, $t0, $t1
	sw $t0, -492($fp)
	addi $t0, $fp, -28
	sw $t0, -496($fp)
	lw $t0, 4($fp)
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
	addi $t0, $fp, -28
	sw $t0, -516($fp)
	lw $t0, 4($fp)
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
	lw $t0, -512($fp)
	lw $t1, -532($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -536($fp)
	lw $t0, -492($fp)
	lw $t1, -536($fp)
	sub $t0, $t0, $t1
	sw $t0, -540($fp)
	addi $t0, $fp, -28
	sw $t0, -544($fp)
	li $t0, 0
	sw $t0, -548($fp)
	addi $t0, $fp, -68
	sw $t0, -552($fp)
	li $t0, 5
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
	lw $t1, -568($fp)
	li $t2, 0
	bne $t1, $t2, label255
	j label254
label254:
	li $t0, 1
	sw $t0, -548($fp)
label255:
	li $t0, 4
	lw $t1, -548($fp)
	mul $t0, $t0, $t1
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	lw $t1, -544($fp)
	add $t0, $t0, $t1
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	lw $t1, 0($t0)
	sw $t1, -580($fp)
	addi $t0, $fp, -28
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
	lw $t0, -600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -604($fp)
	li $t0, 1
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
	addi $t0, $fp, -28
	sw $t0, -624($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -644($fp)
	li $t0, 3
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
	addi $t0, $fp, -28
	sw $t0, -664($fp)
	li $t0, 4
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
	addi $t0, $fp, -28
	sw $t0, -684($fp)
	li $t0, 5
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
	addi $t0, $fp, -68
	sw $t0, -704($fp)
	li $t0, 0
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
	addi $t0, $fp, -68
	sw $t0, -724($fp)
	li $t0, 1
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
	addi $t0, $fp, -68
	sw $t0, -744($fp)
	li $t0, 2
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
	addi $t0, $fp, -68
	sw $t0, -764($fp)
	li $t0, 3
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
	addi $t0, $fp, -68
	sw $t0, -784($fp)
	li $t0, 4
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
	addi $t0, $fp, -68
	sw $t0, -804($fp)
	li $t0, 5
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
	addi $t0, $fp, -68
	sw $t0, -824($fp)
	li $t0, 6
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
	addi $t0, $fp, -68
	sw $t0, -844($fp)
	li $t0, 7
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
	addi $t0, $fp, -68
	sw $t0, -864($fp)
	li $t0, 8
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
	addi $t0, $fp, -68
	sw $t0, -884($fp)
	li $t0, 9
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
	li $t0, 0
	sw $t0, -904($fp)
	addi $t0, $fp, -28
	sw $t0, -908($fp)
	li $t0, 2
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
	li $t0, 23606
	sw $t0, -928($fp)
	li $t0, 0
	lw $t1, -928($fp)
	sub $t0, $t0, $t1
	sw $t0, -932($fp)
	lw $t0, -924($fp)
	lw $t1, -932($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -936($fp)
	lw $t1, -936($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label259
label259:
	li $t0, 35004
	sw $t0, -940($fp)
	li $t0, 0
	lw $t1, -940($fp)
	sub $t0, $t0, $t1
	sw $t0, -944($fp)
	lw $t0, 16($fp)
	sw $t0, -948($fp)
	lw $t0, -944($fp)
	lw $t1, -948($fp)
	add $t0, $t0, $t1
	sw $t0, -952($fp)
	li $t0, 0
	sw $t0, -956($fp)
	lw $t0, 12($fp)
	sw $t0, -960($fp)
	li $t0, 5247
	sw $t0, -964($fp)
	lw $t0, -960($fp)
	lw $t1, -964($fp)
	add $t0, $t0, $t1
	sw $t0, -968($fp)
	lw $t1, -968($fp)
	li $t2, 0
	bne $t1, $t2, label260
	j label262
label262:
	li $t0, 8260
	sw $t0, -972($fp)
	lw $t1, -972($fp)
	li $t2, 0
	bne $t1, $t2, label260
	j label261
label260:
	li $t0, 1
	sw $t0, -956($fp)
label261:
	li $t0, 0
	sw $t0, -976($fp)
	lw $t0, 4($fp)
	sw $t0, -980($fp)
	lw $t1, -980($fp)
	li $t2, 0
	bne $t1, $t2, label266
	j label264
label266:
	li $t0, 35466
	sw $t0, -984($fp)
	lw $t1, -984($fp)
	li $t2, 0
	bne $t1, $t2, label265
	j label264
label265:
	li $t0, 8406
	sw $t0, -988($fp)
	lw $t1, -988($fp)
	li $t2, 0
	bne $t1, $t2, label263
	j label264
label263:
	li $t0, 1
	sw $t0, -976($fp)
label264:
	li $t0, 0
	sw $t0, -992($fp)
	li $t0, 0
	sw $t0, -996($fp)
	lw $t0, 12($fp)
	sw $t0, -1000($fp)
	lw $t1, -1000($fp)
	li $t2, 0
	bne $t1, $t2, label270
	j label269
label269:
	li $t0, 1
	sw $t0, -996($fp)
label270:
	li $t0, 10211
	sw $t0, -1004($fp)
	lw $t1, -996($fp)
	lw $t2, -1004($fp)
	ble $t1, $t2, label267
	j label268
label267:
	li $t0, 1
	sw $t0, -992($fp)
label268:
	addi $sp, $sp, -4
	lw $t0, -952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -992($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1008($fp)
	addi $sp, $sp, 20
	lw $t1, -1008($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label258
label258:
	li $t0, 56612
	sw $t0, -1012($fp)
	li $t0, 0
	lw $t1, -1012($fp)
	sub $t0, $t0, $t1
	sw $t0, -1016($fp)
	li $t0, 0
	lw $t1, -1016($fp)
	sub $t0, $t0, $t1
	sw $t0, -1020($fp)
	lw $t1, -1020($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label257
label256:
	li $t0, 1
	sw $t0, -904($fp)
label257:
	lw $ra, -4($fp)
	lw $v0, -904($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -3040
	li $t0, 51953
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	li $t0, 61346
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	li $t0, 7421
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	li $t0, 9760
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	li $t0, 54209
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	li $t0, 2089
	sw $t0, -164($fp)
	addi $t0, $fp, -44
	sw $t0, -168($fp)
	li $t0, 0
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
	li $t0, 25111
	sw $t0, -188($fp)
	addi $t0, $fp, -44
	sw $t0, -192($fp)
	li $t0, 1
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
	li $t0, 30093
	sw $t0, -212($fp)
	addi $t0, $fp, -44
	sw $t0, -216($fp)
	li $t0, 2
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
	li $t0, 14023
	sw $t0, -236($fp)
	addi $t0, $fp, -44
	sw $t0, -240($fp)
	li $t0, 3
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
	li $t0, 36031
	sw $t0, -260($fp)
	addi $t0, $fp, -44
	sw $t0, -264($fp)
	li $t0, 4
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
	li $t0, 59707
	sw $t0, -284($fp)
	addi $t0, $fp, -44
	sw $t0, -288($fp)
	li $t0, 5
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
	li $t0, 19832
	sw $t0, -308($fp)
	addi $t0, $fp, -44
	sw $t0, -312($fp)
	li $t0, 6
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
	li $t0, 49819
	sw $t0, -332($fp)
	addi $t0, $fp, -44
	sw $t0, -336($fp)
	li $t0, 7
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
	li $t0, 26157
	sw $t0, -356($fp)
	addi $t0, $fp, -44
	sw $t0, -360($fp)
	li $t0, 8
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
	li $t0, 5907
	sw $t0, -380($fp)
	addi $t0, $fp, -44
	sw $t0, -384($fp)
	li $t0, 9
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
	li $t0, 23721
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -412($fp)
	li $t0, 32522
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -424($fp)
	li $t0, 15296
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	li $t0, 54124
	sw $t0, -440($fp)
	addi $t0, $fp, -72
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
	li $t0, 24784
	sw $t0, -464($fp)
	addi $t0, $fp, -72
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
	li $t0, 23685
	sw $t0, -488($fp)
	addi $t0, $fp, -72
	sw $t0, -492($fp)
	li $t0, 2
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
	li $t0, 18805
	sw $t0, -512($fp)
	addi $t0, $fp, -72
	sw $t0, -516($fp)
	li $t0, 3
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
	li $t0, 21020
	sw $t0, -536($fp)
	addi $t0, $fp, -72
	sw $t0, -540($fp)
	li $t0, 4
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
	li $t0, 47292
	sw $t0, -560($fp)
	addi $t0, $fp, -72
	sw $t0, -564($fp)
	li $t0, 5
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
	li $t0, 29016
	sw $t0, -584($fp)
	addi $t0, $fp, -72
	sw $t0, -588($fp)
	li $t0, 6
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
	li $t0, 56487
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -616($fp)
	li $t0, 55698
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	li $t0, 34263
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	li $t0, 64747
	sw $t0, -644($fp)
	addi $t0, $fp, -100
	sw $t0, -648($fp)
	li $t0, 0
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
	li $t0, 25166
	sw $t0, -668($fp)
	addi $t0, $fp, -100
	sw $t0, -672($fp)
	li $t0, 1
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
	li $t0, 25340
	sw $t0, -692($fp)
	addi $t0, $fp, -100
	sw $t0, -696($fp)
	li $t0, 2
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
	li $t0, 51164
	sw $t0, -716($fp)
	addi $t0, $fp, -100
	sw $t0, -720($fp)
	li $t0, 3
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
	li $t0, 20976
	sw $t0, -740($fp)
	addi $t0, $fp, -100
	sw $t0, -744($fp)
	li $t0, 4
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
	li $t0, 32761
	sw $t0, -764($fp)
	addi $t0, $fp, -100
	sw $t0, -768($fp)
	li $t0, 5
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
	li $t0, 60924
	sw $t0, -788($fp)
	addi $t0, $fp, -100
	sw $t0, -792($fp)
	li $t0, 6
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
	li $t0, 9649
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -820($fp)
	li $t0, 34851
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	sw $t0, -832($fp)
	li $t0, 20500
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	sw $t0, -844($fp)
	li $t0, 39743
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	sw $t0, -856($fp)
	addi $t0, $fp, -44
	sw $t0, -860($fp)
	li $t0, 3
	sw $t0, -864($fp)
	li $t0, 4
	lw $t1, -864($fp)
	mul $t0, $t0, $t1
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	lw $t1, -860($fp)
	add $t0, $t0, $t1
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	lw $t1, 0($t0)
	sw $t1, -876($fp)
	li $t0, 33914
	sw $t0, -880($fp)
	lw $t0, -876($fp)
	lw $t1, -880($fp)
	mul $t0, $t0, $t1
	sw $t0, -884($fp)
	li $t0, 3170
	sw $t0, -888($fp)
	li $t0, 0
	lw $t1, -888($fp)
	sub $t0, $t0, $t1
	sw $t0, -892($fp)
	lw $t0, -884($fp)
	lw $t1, -892($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -896($fp)
	lw $t0, -624($fp)
	sw $t0, -900($fp)
	li $t0, 0
	lw $t1, -900($fp)
	sub $t0, $t0, $t1
	sw $t0, -904($fp)
	li $t0, 0
	lw $t1, -904($fp)
	sub $t0, $t0, $t1
	sw $t0, -908($fp)
	lw $t1, -896($fp)
	lw $t2, -908($fp)
	beq $t1, $t2, label271
	j label274
label274:
	lw $t0, -840($fp)
	sw $t0, -912($fp)
	li $t0, 0
	lw $t1, -912($fp)
	sub $t0, $t0, $t1
	sw $t0, -916($fp)
	lw $t1, -916($fp)
	li $t2, 0
	bne $t1, $t2, label271
	j label272
label271:
label275:
	li $t0, 0
	sw $t0, -920($fp)
	lw $t0, -840($fp)
	sw $t0, -924($fp)
	lw $t1, -924($fp)
	li $t2, 0
	bne $t1, $t2, label279
	j label278
label278:
	li $t0, 1
	sw $t0, -920($fp)
label279:
	lw $t0, -624($fp)
	sw $t0, -928($fp)
	lw $t0, -920($fp)
	lw $t1, -928($fp)
	mul $t0, $t0, $t1
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -936($fp)
	lw $t1, -936($fp)
	li $t2, 0
	bne $t1, $t2, label276
	j label277
label276:
	li $t0, 0
	sw $t0, -940($fp)
	addi $t0, $fp, -44
	sw $t0, -944($fp)
	lw $t0, -144($fp)
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
	li $t0, 0
	lw $t1, -960($fp)
	sub $t0, $t0, $t1
	sw $t0, -964($fp)
	li $t0, 40814
	sw $t0, -968($fp)
	li $t0, 1
	sw $t0, -972($fp)
	lw $t0, -968($fp)
	lw $t1, -972($fp)
	mul $t0, $t0, $t1
	sw $t0, -976($fp)
	lw $t1, -964($fp)
	lw $t2, -976($fp)
	blt $t1, $t2, label280
	j label281
label280:
	li $t0, 1
	sw $t0, -940($fp)
label281:
	lw $t0, -940($fp)
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -980($fp)
	li $t0, 0
	sw $t0, -984($fp)
	li $t0, 9078
	sw $t0, -988($fp)
	lw $t1, -988($fp)
	li $t2, 0
	bne $t1, $t2, label282
	j label283
label282:
	li $t0, 1
	sw $t0, -984($fp)
label283:
	li $t0, 0
	lw $t1, -984($fp)
	sub $t0, $t0, $t1
	sw $t0, -992($fp)
	j label275
label277:
	j label273
label272:
	li $t0, 0
	sw $t0, -996($fp)
	li $t0, 64535
	sw $t0, -1000($fp)
	addi $t0, $fp, -72
	sw $t0, -1004($fp)
	lw $t0, -408($fp)
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
	li $t0, 27057
	sw $t0, -1024($fp)
	lw $t0, -1020($fp)
	lw $t1, -1024($fp)
	mul $t0, $t0, $t1
	sw $t0, -1028($fp)
	lw $t0, -1000($fp)
	lw $t1, -1028($fp)
	add $t0, $t0, $t1
	sw $t0, -1032($fp)
	lw $t1, -1032($fp)
	li $t2, 0
	bne $t1, $t2, label286
	j label285
label286:
	li $t0, 24374
	sw $t0, -1036($fp)
	lw $t1, -1036($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label285
label284:
	li $t0, 1
	sw $t0, -996($fp)
label285:
label273:
	lw $t0, -108($fp)
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -156($fp)
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1060($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -1080($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
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
	lw $t0, -1116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1120($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -1140($fp)
	li $t0, 4
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
	addi $t0, $fp, -44
	sw $t0, -1160($fp)
	li $t0, 5
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
	addi $t0, $fp, -44
	sw $t0, -1180($fp)
	li $t0, 6
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
	addi $t0, $fp, -44
	sw $t0, -1200($fp)
	li $t0, 7
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
	addi $t0, $fp, -44
	sw $t0, -1220($fp)
	li $t0, 8
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
	addi $t0, $fp, -44
	sw $t0, -1240($fp)
	li $t0, 9
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
	lw $t0, -408($fp)
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -420($fp)
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -432($fp)
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -1272($fp)
	li $t0, 0
	sw $t0, -1276($fp)
	li $t0, 4
	lw $t1, -1276($fp)
	mul $t0, $t0, $t1
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	lw $t1, -1272($fp)
	add $t0, $t0, $t1
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	lw $t1, 0($t0)
	sw $t1, -1288($fp)
	lw $t0, -1288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
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
	lw $t0, -1308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -1312($fp)
	li $t0, 2
	sw $t0, -1316($fp)
	li $t0, 4
	lw $t1, -1316($fp)
	mul $t0, $t0, $t1
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	lw $t1, -1312($fp)
	add $t0, $t0, $t1
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	lw $t1, 0($t0)
	sw $t1, -1328($fp)
	lw $t0, -1328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -1332($fp)
	li $t0, 3
	sw $t0, -1336($fp)
	li $t0, 4
	lw $t1, -1336($fp)
	mul $t0, $t0, $t1
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	lw $t1, -1332($fp)
	add $t0, $t0, $t1
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	lw $t1, 0($t0)
	sw $t1, -1348($fp)
	lw $t0, -1348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -1352($fp)
	li $t0, 4
	sw $t0, -1356($fp)
	li $t0, 4
	lw $t1, -1356($fp)
	mul $t0, $t0, $t1
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	lw $t1, -1352($fp)
	add $t0, $t0, $t1
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	lw $t1, 0($t0)
	sw $t1, -1368($fp)
	lw $t0, -1368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -1372($fp)
	li $t0, 5
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
	lw $t0, -1388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -1392($fp)
	li $t0, 6
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
	lw $t0, -1408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -612($fp)
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -624($fp)
	sw $t0, -1416($fp)
	lw $t0, -1416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -636($fp)
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -1424($fp)
	li $t0, 0
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
	addi $t0, $fp, -100
	sw $t0, -1444($fp)
	li $t0, 1
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
	addi $t0, $fp, -100
	sw $t0, -1464($fp)
	li $t0, 2
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
	addi $t0, $fp, -100
	sw $t0, -1484($fp)
	li $t0, 3
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
	addi $t0, $fp, -100
	sw $t0, -1504($fp)
	li $t0, 4
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
	lw $t0, -1520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -1524($fp)
	li $t0, 5
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
	lw $t0, -1540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
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
	lw $t0, -1560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -816($fp)
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -828($fp)
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -840($fp)
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -852($fp)
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1580($fp)
	addi $t0, $fp, -44
	sw $t0, -1584($fp)
	li $t0, 9
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
	lw $t1, -1600($fp)
	li $t2, 0
	bne $t1, $t2, label287
	j label289
label289:
	lw $t0, -612($fp)
	sw $t0, -1604($fp)
	li $t0, 0
	lw $t1, -1604($fp)
	sub $t0, $t0, $t1
	sw $t0, -1608($fp)
	li $t0, 0
	lw $t1, -1608($fp)
	sub $t0, $t0, $t1
	sw $t0, -1612($fp)
	li $t0, 48060
	sw $t0, -1616($fp)
	li $t0, 6393
	sw $t0, -1620($fp)
	lw $t0, -1616($fp)
	lw $t1, -1620($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1624($fp)
	lw $t1, -1612($fp)
	lw $t2, -1624($fp)
	ble $t1, $t2, label287
	j label288
label287:
	li $t0, 1
	sw $t0, -1580($fp)
label288:
	lw $ra, -4($fp)
	lw $v0, -1580($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label290:
	addi $t0, $fp, -44
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
	li $t0, 35409
	sw $t0, -1648($fp)
	li $t0, 0
	lw $t1, -1648($fp)
	sub $t0, $t0, $t1
	sw $t0, -1652($fp)
	lw $t0, -1644($fp)
	lw $t1, -1652($fp)
	add $t0, $t0, $t1
	sw $t0, -1656($fp)
	lw $t0, -1656($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -1660($fp)
	lw $t1, -1660($fp)
	li $t2, 0
	bne $t1, $t2, label291
	j label292
label291:
	li $t0, 63813
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	sw $t0, -1672($fp)
	li $t0, 19978
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	sw $t0, -1680($fp)
	lw $t0, -1680($fp)
	sw $t0, -1684($fp)
	li $t0, 0
	sw $t0, -1688($fp)
	li $t0, 4136
	sw $t0, -1692($fp)
	li $t0, 0
	sw $t0, -1696($fp)
	addi $t0, $fp, -44
	sw $t0, -1700($fp)
	li $t0, 8
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
	lw $t1, -1716($fp)
	li $t2, 0
	bne $t1, $t2, label296
	j label295
label295:
	li $t0, 1
	sw $t0, -1696($fp)
label296:
	lw $t0, -1692($fp)
	lw $t1, -1696($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1720($fp)
	li $t0, 10234
	sw $t0, -1724($fp)
	li $t0, 0
	lw $t1, -1724($fp)
	sub $t0, $t0, $t1
	sw $t0, -1728($fp)
	li $t0, 31553
	sw $t0, -1732($fp)
	lw $t0, -1728($fp)
	lw $t1, -1732($fp)
	add $t0, $t0, $t1
	sw $t0, -1736($fp)
	li $t0, 0
	sw $t0, -1740($fp)
	li $t0, 44041
	sw $t0, -1744($fp)
	lw $t1, -1744($fp)
	li $t2, 0
	bne $t1, $t2, label297
	j label298
label297:
	li $t0, 1
	sw $t0, -1740($fp)
label298:
	li $t0, 0
	sw $t0, -1748($fp)
	li $t0, 584
	sw $t0, -1752($fp)
	li $t0, 62238
	sw $t0, -1756($fp)
	lw $t0, -1752($fp)
	lw $t1, -1756($fp)
	sub $t0, $t0, $t1
	sw $t0, -1760($fp)
	lw $t0, -852($fp)
	sw $t0, -1764($fp)
	lw $t1, -1760($fp)
	lw $t2, -1764($fp)
	ble $t1, $t2, label299
	j label300
label299:
	li $t0, 1
	sw $t0, -1748($fp)
label300:
	li $t0, 0
	sw $t0, -1768($fp)
	lw $t0, -1680($fp)
	sw $t0, -1772($fp)
	lw $t1, -1772($fp)
	li $t2, 0
	bne $t1, $t2, label304
	j label303
label304:
	lw $t0, -408($fp)
	sw $t0, -1776($fp)
	lw $t1, -1776($fp)
	li $t2, 0
	bne $t1, $t2, label301
	j label303
label303:
	li $t0, 48652
	sw $t0, -1780($fp)
	lw $t1, -1780($fp)
	li $t2, 0
	bne $t1, $t2, label301
	j label302
label301:
	li $t0, 1
	sw $t0, -1768($fp)
label302:
	li $t0, 29476
	sw $t0, -1784($fp)
	lw $t0, -1668($fp)
	sw $t0, -1788($fp)
	lw $t0, -1784($fp)
	lw $t1, -1788($fp)
	add $t0, $t0, $t1
	sw $t0, -1792($fp)
	addi $sp, $sp, -4
	lw $t0, -1736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1792($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1796($fp)
	addi $sp, $sp, 24
	lw $t1, -1720($fp)
	lw $t2, -1796($fp)
	beq $t1, $t2, label293
	j label294
label293:
	li $t0, 1
	sw $t0, -1688($fp)
label294:
	lw $t0, -132($fp)
	sw $t0, -1800($fp)
	addi $sp, $sp, -4
	lw $t0, -1800($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1804($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1808($fp)
	lw $t0, -108($fp)
	sw $t0, -1812($fp)
	lw $t1, -1812($fp)
	li $t2, 0
	bne $t1, $t2, label306
	j label305
label305:
	li $t0, 1
	sw $t0, -1808($fp)
label306:
	lw $t0, -840($fp)
	sw $t0, -1816($fp)
	li $t0, 0
	lw $t1, -1816($fp)
	sub $t0, $t0, $t1
	sw $t0, -1820($fp)
	lw $t0, -1808($fp)
	lw $t1, -1820($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1824($fp)
	li $t0, 0
	lw $t1, -1824($fp)
	sub $t0, $t0, $t1
	sw $t0, -1828($fp)
	lw $t0, -1804($fp)
	lw $t1, -1828($fp)
	add $t0, $t0, $t1
	sw $t0, -1832($fp)
	addi $t0, $fp, -100
	sw $t0, -1836($fp)
	li $t0, 0
	sw $t0, -1840($fp)
	li $t0, 0
	sw $t0, -1844($fp)
	li $t0, 64541
	sw $t0, -1848($fp)
	lw $t0, -624($fp)
	sw $t0, -1852($fp)
	lw $t1, -1848($fp)
	lw $t2, -1852($fp)
	bne $t1, $t2, label311
	j label310
label311:
	li $t0, 49977
	sw $t0, -1856($fp)
	lw $t1, -1856($fp)
	li $t2, 0
	bne $t1, $t2, label309
	j label310
label309:
	li $t0, 1
	sw $t0, -1844($fp)
label310:
	lw $t0, -144($fp)
	sw $t0, -1860($fp)
	addi $t0, $fp, -44
	sw $t0, -1864($fp)
	lw $t0, -408($fp)
	sw $t0, -1868($fp)
	li $t0, 4
	lw $t1, -1868($fp)
	mul $t0, $t0, $t1
	sw $t0, -1872($fp)
	lw $t0, -1872($fp)
	lw $t1, -1864($fp)
	add $t0, $t0, $t1
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	lw $t1, 0($t0)
	sw $t1, -1880($fp)
	addi $sp, $sp, -4
	lw $t0, -1844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1880($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1884($fp)
	addi $sp, $sp, 16
	lw $t0, -852($fp)
	sw $t0, -1888($fp)
	lw $t0, -1884($fp)
	lw $t1, -1888($fp)
	add $t0, $t0, $t1
	sw $t0, -1892($fp)
	li $t0, 14891
	sw $t0, -1896($fp)
	lw $t0, -432($fp)
	sw $t0, -1900($fp)
	lw $t0, -1896($fp)
	lw $t1, -1900($fp)
	sub $t0, $t0, $t1
	sw $t0, -1904($fp)
	lw $t1, -1892($fp)
	lw $t2, -1904($fp)
	bne $t1, $t2, label307
	j label308
label307:
	li $t0, 1
	sw $t0, -1840($fp)
label308:
	li $t0, 4
	lw $t1, -1840($fp)
	mul $t0, $t0, $t1
	sw $t0, -1908($fp)
	lw $t0, -1908($fp)
	lw $t1, -1836($fp)
	add $t0, $t0, $t1
	sw $t0, -1912($fp)
	lw $t0, -1912($fp)
	lw $t1, 0($t0)
	sw $t1, -1916($fp)
	j label290
label292:
	li $t0, 55536
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	sw $t0, -1944($fp)
	li $t0, 18355
	sw $t0, -1948($fp)
	addi $t0, $fp, -1932
	sw $t0, -1952($fp)
	li $t0, 0
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
	li $t0, 18062
	sw $t0, -1972($fp)
	addi $t0, $fp, -1932
	sw $t0, -1976($fp)
	li $t0, 1
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
	li $t0, 30815
	sw $t0, -1996($fp)
	addi $t0, $fp, -1932
	sw $t0, -2000($fp)
	li $t0, 2
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
	li $t0, 12890
	sw $t0, -2020($fp)
	addi $t0, $fp, -1932
	sw $t0, -2024($fp)
	li $t0, 3
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
	li $t0, 0
	sw $t0, -2044($fp)
	li $t0, 0
	sw $t0, -2048($fp)
	li $t0, 39948
	sw $t0, -2052($fp)
	lw $t1, -2052($fp)
	li $t2, 0
	bne $t1, $t2, label316
	j label317
label317:
	lw $t0, -408($fp)
	sw $t0, -2056($fp)
	lw $t1, -2056($fp)
	li $t2, 0
	bne $t1, $t2, label315
	j label316
label315:
	li $t0, 1
	sw $t0, -2048($fp)
label316:
	addi $t0, $fp, -72
	sw $t0, -2060($fp)
	li $t0, 6
	sw $t0, -2064($fp)
	li $t0, 4
	lw $t1, -2064($fp)
	mul $t0, $t0, $t1
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	lw $t1, -2060($fp)
	add $t0, $t0, $t1
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	lw $t1, 0($t0)
	sw $t1, -2076($fp)
	addi $sp, $sp, -4
	lw $t0, -2048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2076($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2080($fp)
	addi $sp, $sp, 12
	lw $t0, -132($fp)
	sw $t0, -2084($fp)
	lw $t0, -2080($fp)
	lw $t1, -2084($fp)
	mul $t0, $t0, $t1
	sw $t0, -2088($fp)
	addi $sp, $sp, -4
	lw $t0, -2088($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2092($fp)
	addi $sp, $sp, 8
	lw $t1, -2092($fp)
	li $t2, 0
	bne $t1, $t2, label312
	j label314
label314:
	li $t0, 51514
	sw $t0, -2096($fp)
	lw $t0, -840($fp)
	sw $t0, -2100($fp)
	lw $t0, -2096($fp)
	lw $t1, -2100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2104($fp)
	li $t0, 17402
	sw $t0, -2108($fp)
	lw $t0, -2104($fp)
	lw $t1, -2108($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2112($fp)
	li $t0, 0
	sw $t0, -2116($fp)
	li $t0, 33579
	sw $t0, -2120($fp)
	lw $t0, -132($fp)
	sw $t0, -2124($fp)
	lw $t0, -2120($fp)
	lw $t1, -2124($fp)
	sub $t0, $t0, $t1
	sw $t0, -2128($fp)
	lw $t1, -2128($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label320
label320:
	li $t0, 63854
	sw $t0, -2132($fp)
	lw $t1, -2132($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label319
label318:
	li $t0, 1
	sw $t0, -2116($fp)
label319:
	li $t0, 0
	sw $t0, -2136($fp)
	li $t0, 34038
	sw $t0, -2140($fp)
	li $t0, 23795
	sw $t0, -2144($fp)
	lw $t0, -2140($fp)
	lw $t1, -2144($fp)
	sub $t0, $t0, $t1
	sw $t0, -2148($fp)
	lw $t0, -108($fp)
	sw $t0, -2152($fp)
	lw $t1, -2148($fp)
	lw $t2, -2152($fp)
	bge $t1, $t2, label321
	j label322
label321:
	li $t0, 1
	sw $t0, -2136($fp)
label322:
	li $t0, 0
	sw $t0, -2156($fp)
	li $t0, 0
	sw $t0, -2160($fp)
	lw $t0, -852($fp)
	sw $t0, -2164($fp)
	lw $t0, -132($fp)
	sw $t0, -2168($fp)
	lw $t1, -2164($fp)
	lw $t2, -2168($fp)
	blt $t1, $t2, label325
	j label326
label325:
	li $t0, 1
	sw $t0, -2160($fp)
label326:
	li $t0, 26253
	sw $t0, -2172($fp)
	lw $t1, -2160($fp)
	lw $t2, -2172($fp)
	ble $t1, $t2, label323
	j label324
label323:
	li $t0, 1
	sw $t0, -2156($fp)
label324:
	addi $sp, $sp, -4
	lw $t0, -2116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2156($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2176($fp)
	addi $sp, $sp, 16
	lw $t0, -2112($fp)
	lw $t1, -2176($fp)
	mul $t0, $t0, $t1
	sw $t0, -2180($fp)
	lw $t1, -2180($fp)
	li $t2, 0
	bne $t1, $t2, label312
	j label313
label312:
	li $t0, 1
	sw $t0, -2044($fp)
label313:
	lw $t0, -828($fp)
	sw $t0, -2184($fp)
	li $t0, 0
	sw $t0, -2188($fp)
	lw $t0, -1940($fp)
	sw $t0, -2192($fp)
	lw $t0, -816($fp)
	sw $t0, -2196($fp)
	li $t0, 0
	sw $t0, -2200($fp)
	li $t0, 63341
	sw $t0, -2204($fp)
	lw $t1, -2204($fp)
	li $t2, 0
	bne $t1, $t2, label330
	j label329
label329:
	li $t0, 1
	sw $t0, -2200($fp)
label330:
	li $t0, 29344
	sw $t0, -2208($fp)
	lw $t0, -2200($fp)
	lw $t1, -2208($fp)
	sub $t0, $t0, $t1
	sw $t0, -2212($fp)
	li $t0, 18296
	sw $t0, -2216($fp)
	lw $t0, -2216($fp)
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	sw $t0, -2220($fp)
	lw $t0, -132($fp)
	sw $t0, -2224($fp)
	lw $t0, -2224($fp)
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -2228($fp)
	addi $t0, $fp, -1932
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
	addi $sp, $sp, -4
	lw $t0, -2196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2248($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -2252($fp)
	addi $sp, $sp, 24
	lw $t0, -2192($fp)
	lw $t1, -2252($fp)
	sub $t0, $t0, $t1
	sw $t0, -2256($fp)
	li $t0, 0
	sw $t0, -2260($fp)
	li $t0, 0
	sw $t0, -2264($fp)
	li $t0, 0
	sw $t0, -2268($fp)
	lw $t0, -1940($fp)
	sw $t0, -2272($fp)
	lw $t1, -2272($fp)
	li $t2, 0
	bne $t1, $t2, label336
	j label335
label335:
	li $t0, 1
	sw $t0, -2268($fp)
label336:
	li $t0, 27281
	sw $t0, -2276($fp)
	lw $t1, -2268($fp)
	lw $t2, -2276($fp)
	beq $t1, $t2, label333
	j label334
label333:
	li $t0, 1
	sw $t0, -2264($fp)
label334:
	addi $sp, $sp, -4
	lw $t0, -2264($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2280($fp)
	addi $sp, $sp, 8
	li $t0, 12461
	sw $t0, -2284($fp)
	lw $t1, -2280($fp)
	lw $t2, -2284($fp)
	bne $t1, $t2, label331
	j label332
label331:
	li $t0, 1
	sw $t0, -2260($fp)
label332:
	li $t0, 0
	sw $t0, -2288($fp)
	lw $t0, -624($fp)
	sw $t0, -2292($fp)
	li $t0, 63440
	sw $t0, -2296($fp)
	lw $t1, -2292($fp)
	lw $t2, -2296($fp)
	bne $t1, $t2, label339
	j label338
label339:
	lw $t0, -432($fp)
	sw $t0, -2300($fp)
	lw $t1, -2300($fp)
	li $t2, 0
	bne $t1, $t2, label337
	j label338
label337:
	li $t0, 1
	sw $t0, -2288($fp)
label338:
	addi $sp, $sp, -4
	lw $t0, -2260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2288($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2304($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -2304($fp)
	sub $t0, $t0, $t1
	sw $t0, -2308($fp)
	lw $t1, -2256($fp)
	lw $t2, -2308($fp)
	blt $t1, $t2, label327
	j label328
label327:
	li $t0, 1
	sw $t0, -2188($fp)
label328:
	addi $t0, $fp, -44
	sw $t0, -2312($fp)
	lw $t0, -144($fp)
	sw $t0, -2316($fp)
	lw $t0, -624($fp)
	sw $t0, -2320($fp)
	lw $t0, -2316($fp)
	lw $t1, -2320($fp)
	add $t0, $t0, $t1
	sw $t0, -2324($fp)
	li $t0, 4
	lw $t1, -2324($fp)
	mul $t0, $t0, $t1
	sw $t0, -2328($fp)
	lw $t0, -2328($fp)
	lw $t1, -2312($fp)
	add $t0, $t0, $t1
	sw $t0, -2332($fp)
	lw $t0, -2332($fp)
	lw $t1, 0($t0)
	sw $t1, -2336($fp)
	li $t0, 0
	sw $t0, -2340($fp)
	addi $t0, $fp, -100
	sw $t0, -2344($fp)
	li $t0, 3
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
	lw $t1, -2360($fp)
	li $t2, 0
	bne $t1, $t2, label341
	j label340
label340:
	li $t0, 1
	sw $t0, -2340($fp)
label341:
	lw $t0, -2336($fp)
	lw $t1, -2340($fp)
	mul $t0, $t0, $t1
	sw $t0, -2364($fp)
	li $t0, 0
	sw $t0, -2368($fp)
	li $t0, 56502
	sw $t0, -2372($fp)
	li $t0, 8723
	sw $t0, -2376($fp)
	li $t0, 0
	lw $t1, -2376($fp)
	sub $t0, $t0, $t1
	sw $t0, -2380($fp)
	lw $t0, -2372($fp)
	lw $t1, -2380($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2384($fp)
	li $t0, 0
	lw $t1, -2384($fp)
	sub $t0, $t0, $t1
	sw $t0, -2388($fp)
	lw $t1, -2388($fp)
	li $t2, 0
	bne $t1, $t2, label343
	j label342
label342:
	li $t0, 1
	sw $t0, -2368($fp)
label343:
	lw $t0, -2364($fp)
	lw $t1, -2368($fp)
	add $t0, $t0, $t1
	sw $t0, -2392($fp)
	lw $t0, -108($fp)
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -2400($fp)
	lw $t0, -2400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -156($fp)
	sw $t0, -2412($fp)
	lw $t0, -2412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
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
	lw $t0, -2432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -2436($fp)
	li $t0, 1
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
	li $t0, 2
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
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -2496($fp)
	li $t0, 4
	sw $t0, -2500($fp)
	li $t0, 4
	lw $t1, -2500($fp)
	mul $t0, $t0, $t1
	sw $t0, -2504($fp)
	lw $t0, -2504($fp)
	lw $t1, -2496($fp)
	add $t0, $t0, $t1
	sw $t0, -2508($fp)
	lw $t0, -2508($fp)
	lw $t1, 0($t0)
	sw $t1, -2512($fp)
	lw $t0, -2512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -2516($fp)
	li $t0, 5
	sw $t0, -2520($fp)
	li $t0, 4
	lw $t1, -2520($fp)
	mul $t0, $t0, $t1
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	lw $t1, -2516($fp)
	add $t0, $t0, $t1
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	lw $t1, 0($t0)
	sw $t1, -2532($fp)
	lw $t0, -2532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -2536($fp)
	li $t0, 6
	sw $t0, -2540($fp)
	li $t0, 4
	lw $t1, -2540($fp)
	mul $t0, $t0, $t1
	sw $t0, -2544($fp)
	lw $t0, -2544($fp)
	lw $t1, -2536($fp)
	add $t0, $t0, $t1
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	lw $t1, 0($t0)
	sw $t1, -2552($fp)
	lw $t0, -2552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -2556($fp)
	li $t0, 7
	sw $t0, -2560($fp)
	li $t0, 4
	lw $t1, -2560($fp)
	mul $t0, $t0, $t1
	sw $t0, -2564($fp)
	lw $t0, -2564($fp)
	lw $t1, -2556($fp)
	add $t0, $t0, $t1
	sw $t0, -2568($fp)
	lw $t0, -2568($fp)
	lw $t1, 0($t0)
	sw $t1, -2572($fp)
	lw $t0, -2572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -2576($fp)
	li $t0, 8
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
	lw $t0, -2592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -2596($fp)
	li $t0, 9
	sw $t0, -2600($fp)
	li $t0, 4
	lw $t1, -2600($fp)
	mul $t0, $t0, $t1
	sw $t0, -2604($fp)
	lw $t0, -2604($fp)
	lw $t1, -2596($fp)
	add $t0, $t0, $t1
	sw $t0, -2608($fp)
	lw $t0, -2608($fp)
	lw $t1, 0($t0)
	sw $t1, -2612($fp)
	lw $t0, -2612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -408($fp)
	sw $t0, -2616($fp)
	lw $t0, -2616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -420($fp)
	sw $t0, -2620($fp)
	lw $t0, -2620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -432($fp)
	sw $t0, -2624($fp)
	lw $t0, -2624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -2628($fp)
	li $t0, 0
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
	addi $t0, $fp, -72
	sw $t0, -2648($fp)
	li $t0, 1
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
	addi $t0, $fp, -72
	sw $t0, -2668($fp)
	li $t0, 2
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
	addi $t0, $fp, -72
	sw $t0, -2688($fp)
	li $t0, 3
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
	addi $t0, $fp, -72
	sw $t0, -2708($fp)
	li $t0, 4
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
	addi $t0, $fp, -72
	sw $t0, -2728($fp)
	li $t0, 5
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
	addi $t0, $fp, -72
	sw $t0, -2748($fp)
	li $t0, 6
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
	lw $t0, -612($fp)
	sw $t0, -2768($fp)
	lw $t0, -2768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -624($fp)
	sw $t0, -2772($fp)
	lw $t0, -2772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -636($fp)
	sw $t0, -2776($fp)
	lw $t0, -2776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
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
	lw $t0, -2796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -2800($fp)
	li $t0, 1
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
	addi $t0, $fp, -100
	sw $t0, -2820($fp)
	li $t0, 2
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
	addi $t0, $fp, -100
	sw $t0, -2840($fp)
	li $t0, 3
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
	addi $t0, $fp, -100
	sw $t0, -2860($fp)
	li $t0, 4
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
	addi $t0, $fp, -100
	sw $t0, -2880($fp)
	li $t0, 5
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
	addi $t0, $fp, -100
	sw $t0, -2900($fp)
	li $t0, 6
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
	lw $t0, -816($fp)
	sw $t0, -2920($fp)
	lw $t0, -2920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -828($fp)
	sw $t0, -2924($fp)
	lw $t0, -2924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -840($fp)
	sw $t0, -2928($fp)
	lw $t0, -2928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -852($fp)
	sw $t0, -2932($fp)
	lw $t0, -2932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2936($fp)
	li $t0, 0
	sw $t0, -2940($fp)
	li $t0, 55536
	sw $t0, -2944($fp)
	li $t0, 0
	lw $t1, -2944($fp)
	sub $t0, $t0, $t1
	sw $t0, -2948($fp)
	lw $t1, -2948($fp)
	li $t2, 0
	bne $t1, $t2, label347
	j label346
label346:
	li $t0, 1
	sw $t0, -2940($fp)
label347:
	addi $sp, $sp, -4
	lw $t0, -2940($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2952($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2956($fp)
	li $t0, 58700
	sw $t0, -2960($fp)
	lw $t0, -636($fp)
	sw $t0, -2964($fp)
	lw $t0, -2960($fp)
	lw $t1, -2964($fp)
	mul $t0, $t0, $t1
	sw $t0, -2968($fp)
	lw $t1, -2968($fp)
	li $t2, 0
	bne $t1, $t2, label350
	j label349
label350:
	lw $t0, -144($fp)
	sw $t0, -2972($fp)
	lw $t1, -2972($fp)
	li $t2, 0
	bne $t1, $t2, label348
	j label349
label348:
	li $t0, 1
	sw $t0, -2956($fp)
label349:
	li $t0, 0
	sw $t0, -2976($fp)
	lw $t0, -132($fp)
	sw $t0, -2980($fp)
	li $t0, 55507
	sw $t0, -2984($fp)
	lw $t0, -2980($fp)
	lw $t1, -2984($fp)
	add $t0, $t0, $t1
	sw $t0, -2988($fp)
	lw $t0, -816($fp)
	sw $t0, -2992($fp)
	lw $t1, -2988($fp)
	lw $t2, -2992($fp)
	blt $t1, $t2, label351
	j label352
label351:
	li $t0, 1
	sw $t0, -2976($fp)
label352:
	lw $t0, -852($fp)
	sw $t0, -2996($fp)
	lw $t0, -828($fp)
	sw $t0, -3000($fp)
	lw $t0, -3000($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -3004($fp)
	addi $sp, $sp, -4
	lw $t0, -3004($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3008($fp)
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -3012($fp)
	lw $t0, -3008($fp)
	lw $t1, -3012($fp)
	mul $t0, $t0, $t1
	sw $t0, -3016($fp)
	li $t0, 0
	sw $t0, -3020($fp)
	lw $t0, -420($fp)
	sw $t0, -3024($fp)
	lw $t0, -840($fp)
	sw $t0, -3028($fp)
	lw $t1, -3024($fp)
	lw $t2, -3028($fp)
	bgt $t1, $t2, label355
	j label354
label355:
	lw $t0, -144($fp)
	sw $t0, -3032($fp)
	lw $t1, -3032($fp)
	li $t2, 0
	bne $t1, $t2, label353
	j label354
label353:
	li $t0, 1
	sw $t0, -3020($fp)
label354:
	addi $sp, $sp, -4
	lw $t0, -2956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3020($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -3036($fp)
	addi $sp, $sp, 24
	lw $t0, -828($fp)
	sw $t0, -3040($fp)
	lw $t0, -3036($fp)
	lw $t1, -3040($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3044($fp)
	lw $t1, -2952($fp)
	lw $t2, -3044($fp)
	bge $t1, $t2, label344
	j label345
label344:
	li $t0, 1
	sw $t0, -2936($fp)
label345:
	lw $ra, -4($fp)
	lw $v0, -2936($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -392
	li $t0, 4892
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
	li $t0, 45507
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
	li $t0, 11519
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
	li $t0, 22954
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
	li $t0, 10786
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
	li $t0, 24409
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
	li $t0, 50094
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	li $t0, 40601
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	lw $t0, -180($fp)
	sw $t0, -200($fp)
	lw $t0, -180($fp)
	sw $t0, -204($fp)
	lw $t0, -200($fp)
	lw $t1, -204($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -208($fp)
	li $t0, 0
	sw $t0, -212($fp)
	lw $t0, -192($fp)
	sw $t0, -216($fp)
	lw $t1, -216($fp)
	li $t2, 0
	bne $t1, $t2, label357
	j label356
label356:
	li $t0, 1
	sw $t0, -212($fp)
label357:
	lw $t0, -208($fp)
	lw $t1, -212($fp)
	mul $t0, $t0, $t1
	sw $t0, -220($fp)
	addi $t0, $fp, -28
	sw $t0, -224($fp)
	lw $t0, -180($fp)
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
	addi $sp, $sp, -4
	lw $t0, -240($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -244($fp)
	addi $sp, $sp, 8
	lw $t0, -220($fp)
	lw $t1, -244($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -248($fp)
	lw $t0, -192($fp)
	sw $t0, -252($fp)
	lw $t0, -248($fp)
	lw $t1, -252($fp)
	add $t0, $t0, $t1
	sw $t0, -256($fp)
	addi $t0, $fp, -28
	sw $t0, -260($fp)
	li $t0, 0
	sw $t0, -264($fp)
	li $t0, 4
	lw $t1, -264($fp)
	mul $t0, $t0, $t1
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	lw $t1, -260($fp)
	add $t0, $t0, $t1
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	lw $t1, 0($t0)
	sw $t1, -276($fp)
	lw $t0, -276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -280($fp)
	li $t0, 1
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
	lw $t0, -296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -300($fp)
	li $t0, 2
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
	lw $t0, -316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -320($fp)
	li $t0, 3
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
	addi $t0, $fp, -28
	sw $t0, -340($fp)
	li $t0, 4
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
	addi $t0, $fp, -28
	sw $t0, -360($fp)
	li $t0, 5
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
	lw $t0, -180($fp)
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -388($fp)
	lw $t0, -192($fp)
	sw $t0, -392($fp)
	li $t0, 64357
	sw $t0, -396($fp)
	lw $t1, -392($fp)
	lw $t2, -396($fp)
	ble $t1, $t2, label358
	j label359
label358:
	li $t0, 1
	sw $t0, -388($fp)
label359:
	lw $ra, -4($fp)
	lw $v0, -388($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f14:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -7332
	li $t0, 36072
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	li $t0, 58003
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	li $t0, 25075
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	li $t0, 4575
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	li $t0, 16263
	sw $t0, -240($fp)
	addi $t0, $fp, -40
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
	li $t0, 58654
	sw $t0, -264($fp)
	addi $t0, $fp, -40
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
	li $t0, 2893
	sw $t0, -288($fp)
	addi $t0, $fp, -40
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
	li $t0, 9931
	sw $t0, -312($fp)
	addi $t0, $fp, -40
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
	li $t0, 24975
	sw $t0, -336($fp)
	addi $t0, $fp, -40
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
	li $t0, 21190
	sw $t0, -360($fp)
	addi $t0, $fp, -40
	sw $t0, -364($fp)
	li $t0, 5
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
	li $t0, 7736
	sw $t0, -384($fp)
	addi $t0, $fp, -40
	sw $t0, -388($fp)
	li $t0, 6
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
	li $t0, 54319
	sw $t0, -408($fp)
	addi $t0, $fp, -40
	sw $t0, -412($fp)
	li $t0, 7
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
	li $t0, 19094
	sw $t0, -432($fp)
	addi $t0, $fp, -40
	sw $t0, -436($fp)
	li $t0, 8
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
	li $t0, 35018
	sw $t0, -456($fp)
	addi $t0, $fp, -56
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
	li $t0, 1244
	sw $t0, -480($fp)
	addi $t0, $fp, -56
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
	li $t0, 17583
	sw $t0, -504($fp)
	addi $t0, $fp, -56
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
	li $t0, 59001
	sw $t0, -528($fp)
	addi $t0, $fp, -56
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
	li $t0, 57746
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	li $t0, 26306
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	li $t0, 49002
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	li $t0, 47717
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -596($fp)
	li $t0, 19470
	sw $t0, -600($fp)
	addi $t0, $fp, -68
	sw $t0, -604($fp)
	li $t0, 0
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
	li $t0, 53894
	sw $t0, -624($fp)
	addi $t0, $fp, -68
	sw $t0, -628($fp)
	li $t0, 1
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
	li $t0, 27689
	sw $t0, -648($fp)
	addi $t0, $fp, -68
	sw $t0, -652($fp)
	li $t0, 2
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
	li $t0, 30989
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	li $t0, 11312
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -692($fp)
	li $t0, 38475
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	li $t0, 55399
	sw $t0, -708($fp)
	addi $t0, $fp, -100
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
	li $t0, 61406
	sw $t0, -732($fp)
	addi $t0, $fp, -100
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
	li $t0, 13540
	sw $t0, -756($fp)
	addi $t0, $fp, -100
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
	li $t0, 54220
	sw $t0, -780($fp)
	addi $t0, $fp, -100
	sw $t0, -784($fp)
	li $t0, 3
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
	li $t0, 31942
	sw $t0, -804($fp)
	addi $t0, $fp, -100
	sw $t0, -808($fp)
	li $t0, 4
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
	li $t0, 6008
	sw $t0, -828($fp)
	addi $t0, $fp, -100
	sw $t0, -832($fp)
	li $t0, 5
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
	li $t0, 13759
	sw $t0, -852($fp)
	addi $t0, $fp, -100
	sw $t0, -856($fp)
	li $t0, 6
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
	li $t0, 36517
	sw $t0, -876($fp)
	addi $t0, $fp, -100
	sw $t0, -880($fp)
	li $t0, 7
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
	li $t0, 22271
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	sw $t0, -908($fp)
	li $t0, 6878
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	sw $t0, -920($fp)
	li $t0, 39411
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -932($fp)
	li $t0, 32202
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	sw $t0, -944($fp)
	li $t0, 31853
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	sw $t0, -956($fp)
	li $t0, 60601
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	sw $t0, -968($fp)
	li $t0, 39939
	sw $t0, -972($fp)
	addi $t0, $fp, -104
	sw $t0, -976($fp)
	li $t0, 0
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
	li $t0, 20636
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	sw $t0, -1004($fp)
	li $t0, 14159
	sw $t0, -1008($fp)
	addi $t0, $fp, -140
	sw $t0, -1012($fp)
	li $t0, 0
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1020($fp)
	lw $t0, -1012($fp)
	lw $t1, -1020($fp)
	add $t0, $t0, $t1
	sw $t0, -1024($fp)
	lw $t0, -1008($fp)
	lw $t1, -1024($fp)
	sw $t0, 0($t1)
	lw $t0, -1024($fp)
	lw $t1, 0($t0)
	sw $t1, -1028($fp)
	li $t0, 9421
	sw $t0, -1032($fp)
	addi $t0, $fp, -140
	sw $t0, -1036($fp)
	li $t0, 1
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
	li $t0, 21881
	sw $t0, -1056($fp)
	addi $t0, $fp, -140
	sw $t0, -1060($fp)
	li $t0, 2
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
	li $t0, 31743
	sw $t0, -1080($fp)
	addi $t0, $fp, -140
	sw $t0, -1084($fp)
	li $t0, 3
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
	li $t0, 2886
	sw $t0, -1104($fp)
	addi $t0, $fp, -140
	sw $t0, -1108($fp)
	li $t0, 4
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
	li $t0, 14091
	sw $t0, -1128($fp)
	addi $t0, $fp, -140
	sw $t0, -1132($fp)
	li $t0, 5
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
	li $t0, 58049
	sw $t0, -1152($fp)
	addi $t0, $fp, -140
	sw $t0, -1156($fp)
	li $t0, 6
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
	li $t0, 51888
	sw $t0, -1176($fp)
	addi $t0, $fp, -140
	sw $t0, -1180($fp)
	li $t0, 7
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
	li $t0, 61809
	sw $t0, -1200($fp)
	addi $t0, $fp, -140
	sw $t0, -1204($fp)
	li $t0, 8
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
	li $t0, 11984
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	sw $t0, -1232($fp)
	li $t0, 40246
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	sw $t0, -1244($fp)
	li $t0, 23962
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	sw $t0, -1256($fp)
	li $t0, 42973
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	sw $t0, -1268($fp)
	li $t0, 51558
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	sw $t0, -1280($fp)
	li $t0, 62437
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -1292($fp)
	li $t0, 32836
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	sw $t0, -1304($fp)
	li $t0, 47428
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	sw $t0, -1316($fp)
	li $t0, 10442
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	sw $t0, -1328($fp)
	li $t0, 21521
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	sw $t0, -1340($fp)
	li $t0, 13835
	sw $t0, -1344($fp)
	addi $t0, $fp, -164
	sw $t0, -1348($fp)
	li $t0, 0
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1356($fp)
	lw $t0, -1348($fp)
	lw $t1, -1356($fp)
	add $t0, $t0, $t1
	sw $t0, -1360($fp)
	lw $t0, -1344($fp)
	lw $t1, -1360($fp)
	sw $t0, 0($t1)
	lw $t0, -1360($fp)
	lw $t1, 0($t0)
	sw $t1, -1364($fp)
	li $t0, 16450
	sw $t0, -1368($fp)
	addi $t0, $fp, -164
	sw $t0, -1372($fp)
	li $t0, 1
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
	li $t0, 35280
	sw $t0, -1392($fp)
	addi $t0, $fp, -164
	sw $t0, -1396($fp)
	li $t0, 2
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
	li $t0, 50352
	sw $t0, -1416($fp)
	addi $t0, $fp, -164
	sw $t0, -1420($fp)
	li $t0, 3
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
	li $t0, 38721
	sw $t0, -1440($fp)
	addi $t0, $fp, -164
	sw $t0, -1444($fp)
	li $t0, 4
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
	li $t0, 42158
	sw $t0, -1464($fp)
	addi $t0, $fp, -164
	sw $t0, -1468($fp)
	li $t0, 5
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
	li $t0, 24227
	sw $t0, -1488($fp)
	addi $t0, $fp, -188
	sw $t0, -1492($fp)
	li $t0, 0
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
	li $t0, 5387
	sw $t0, -1512($fp)
	addi $t0, $fp, -188
	sw $t0, -1516($fp)
	li $t0, 1
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
	li $t0, 8475
	sw $t0, -1536($fp)
	addi $t0, $fp, -188
	sw $t0, -1540($fp)
	li $t0, 2
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
	li $t0, 19292
	sw $t0, -1560($fp)
	addi $t0, $fp, -188
	sw $t0, -1564($fp)
	li $t0, 3
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
	li $t0, 45326
	sw $t0, -1584($fp)
	addi $t0, $fp, -188
	sw $t0, -1588($fp)
	li $t0, 4
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
	li $t0, 29112
	sw $t0, -1608($fp)
	addi $t0, $fp, -188
	sw $t0, -1612($fp)
	li $t0, 5
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
	li $t0, 33452
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	sw $t0, -1640($fp)
	li $t0, 54747
	sw $t0, -1644($fp)
	lw $t0, -1644($fp)
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	sw $t0, -1652($fp)
	li $t0, 50993
	sw $t0, -1656($fp)
	lw $t0, -1656($fp)
	sw $t0, -1660($fp)
	lw $t0, -1660($fp)
	sw $t0, -1664($fp)
	li $t0, 65195
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	sw $t0, -1676($fp)
	li $t0, 57634
	sw $t0, -1680($fp)
	lw $t0, -1680($fp)
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	sw $t0, -1688($fp)
	li $t0, 65084
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	sw $t0, -1700($fp)
	li $t0, 57708
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	sw $t0, -1712($fp)
	li $t0, 43986
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	sw $t0, -1724($fp)
	li $t0, 61357
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	sw $t0, -1736($fp)
	li $t0, 4156
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	sw $t0, -1748($fp)
	li $t0, 18697
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	sw $t0, -1760($fp)
	lw $t0, -196($fp)
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -208($fp)
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -220($fp)
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -232($fp)
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1780($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
	sw $t0, -1800($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -1820($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -1840($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -1860($fp)
	li $t0, 4
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
	addi $t0, $fp, -40
	sw $t0, -1880($fp)
	li $t0, 5
	sw $t0, -1884($fp)
	li $t0, 4
	lw $t1, -1884($fp)
	mul $t0, $t0, $t1
	sw $t0, -1888($fp)
	lw $t0, -1888($fp)
	lw $t1, -1880($fp)
	add $t0, $t0, $t1
	sw $t0, -1892($fp)
	lw $t0, -1892($fp)
	lw $t1, 0($t0)
	sw $t1, -1896($fp)
	lw $t0, -1896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1900($fp)
	li $t0, 6
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
	addi $t0, $fp, -40
	sw $t0, -1920($fp)
	li $t0, 7
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
	lw $t0, -1936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1940($fp)
	li $t0, 8
	sw $t0, -1944($fp)
	li $t0, 4
	lw $t1, -1944($fp)
	mul $t0, $t0, $t1
	sw $t0, -1948($fp)
	lw $t0, -1948($fp)
	lw $t1, -1940($fp)
	add $t0, $t0, $t1
	sw $t0, -1952($fp)
	lw $t0, -1952($fp)
	lw $t1, 0($t0)
	sw $t1, -1956($fp)
	lw $t0, -1956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1960($fp)
	li $t0, 0
	sw $t0, -1964($fp)
	li $t0, 4
	lw $t1, -1964($fp)
	mul $t0, $t0, $t1
	sw $t0, -1968($fp)
	lw $t0, -1968($fp)
	lw $t1, -1960($fp)
	add $t0, $t0, $t1
	sw $t0, -1972($fp)
	lw $t0, -1972($fp)
	lw $t1, 0($t0)
	sw $t1, -1976($fp)
	lw $t0, -1976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1980($fp)
	li $t0, 1
	sw $t0, -1984($fp)
	li $t0, 4
	lw $t1, -1984($fp)
	mul $t0, $t0, $t1
	sw $t0, -1988($fp)
	lw $t0, -1988($fp)
	lw $t1, -1980($fp)
	add $t0, $t0, $t1
	sw $t0, -1992($fp)
	lw $t0, -1992($fp)
	lw $t1, 0($t0)
	sw $t1, -1996($fp)
	lw $t0, -1996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -2000($fp)
	li $t0, 2
	sw $t0, -2004($fp)
	li $t0, 4
	lw $t1, -2004($fp)
	mul $t0, $t0, $t1
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	lw $t1, -2000($fp)
	add $t0, $t0, $t1
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	lw $t1, 0($t0)
	sw $t1, -2016($fp)
	lw $t0, -2016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -2020($fp)
	li $t0, 3
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
	lw $t0, -2036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -556($fp)
	sw $t0, -2040($fp)
	lw $t0, -2040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -568($fp)
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -580($fp)
	sw $t0, -2048($fp)
	lw $t0, -2048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -592($fp)
	sw $t0, -2052($fp)
	lw $t0, -2052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
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
	lw $t0, -2072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -2076($fp)
	li $t0, 1
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
	lw $t0, -2092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -2096($fp)
	li $t0, 2
	sw $t0, -2100($fp)
	li $t0, 4
	lw $t1, -2100($fp)
	mul $t0, $t0, $t1
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	lw $t1, -2096($fp)
	add $t0, $t0, $t1
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	lw $t1, 0($t0)
	sw $t1, -2112($fp)
	lw $t0, -2112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -676($fp)
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -688($fp)
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -700($fp)
	sw $t0, -2124($fp)
	lw $t0, -2124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
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
	addi $t0, $fp, -100
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
	addi $t0, $fp, -100
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
	addi $t0, $fp, -100
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
	addi $t0, $fp, -100
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
	addi $t0, $fp, -100
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
	addi $t0, $fp, -100
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
	addi $t0, $fp, -100
	sw $t0, -2268($fp)
	li $t0, 7
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
	lw $t0, -904($fp)
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -916($fp)
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -928($fp)
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -940($fp)
	sw $t0, -2300($fp)
	lw $t0, -2300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -952($fp)
	sw $t0, -2304($fp)
	lw $t0, -2304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -964($fp)
	sw $t0, -2308($fp)
	lw $t0, -2308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -2312($fp)
	li $t0, 0
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
	lw $t0, -1000($fp)
	sw $t0, -2332($fp)
	lw $t0, -2332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -2336($fp)
	li $t0, 0
	sw $t0, -2340($fp)
	li $t0, 4
	lw $t1, -2340($fp)
	mul $t0, $t0, $t1
	sw $t0, -2344($fp)
	lw $t0, -2344($fp)
	lw $t1, -2336($fp)
	add $t0, $t0, $t1
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	lw $t1, 0($t0)
	sw $t1, -2352($fp)
	lw $t0, -2352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -2356($fp)
	li $t0, 1
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
	addi $t0, $fp, -140
	sw $t0, -2376($fp)
	li $t0, 2
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
	addi $t0, $fp, -140
	sw $t0, -2396($fp)
	li $t0, 3
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
	addi $t0, $fp, -140
	sw $t0, -2416($fp)
	li $t0, 4
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
	addi $t0, $fp, -140
	sw $t0, -2436($fp)
	li $t0, 5
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
	addi $t0, $fp, -140
	sw $t0, -2456($fp)
	li $t0, 6
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
	addi $t0, $fp, -140
	sw $t0, -2476($fp)
	li $t0, 7
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
	addi $t0, $fp, -140
	sw $t0, -2496($fp)
	li $t0, 8
	sw $t0, -2500($fp)
	li $t0, 4
	lw $t1, -2500($fp)
	mul $t0, $t0, $t1
	sw $t0, -2504($fp)
	lw $t0, -2504($fp)
	lw $t1, -2496($fp)
	add $t0, $t0, $t1
	sw $t0, -2508($fp)
	lw $t0, -2508($fp)
	lw $t1, 0($t0)
	sw $t1, -2512($fp)
	lw $t0, -2512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1228($fp)
	sw $t0, -2516($fp)
	lw $t0, -2516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1240($fp)
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1252($fp)
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1264($fp)
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1276($fp)
	sw $t0, -2532($fp)
	lw $t0, -2532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1288($fp)
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1300($fp)
	sw $t0, -2540($fp)
	lw $t0, -2540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1312($fp)
	sw $t0, -2544($fp)
	lw $t0, -2544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1324($fp)
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1336($fp)
	sw $t0, -2552($fp)
	lw $t0, -2552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -2556($fp)
	li $t0, 0
	sw $t0, -2560($fp)
	li $t0, 4
	lw $t1, -2560($fp)
	mul $t0, $t0, $t1
	sw $t0, -2564($fp)
	lw $t0, -2564($fp)
	lw $t1, -2556($fp)
	add $t0, $t0, $t1
	sw $t0, -2568($fp)
	lw $t0, -2568($fp)
	lw $t1, 0($t0)
	sw $t1, -2572($fp)
	lw $t0, -2572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -2576($fp)
	li $t0, 1
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
	lw $t0, -2592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -2596($fp)
	li $t0, 2
	sw $t0, -2600($fp)
	li $t0, 4
	lw $t1, -2600($fp)
	mul $t0, $t0, $t1
	sw $t0, -2604($fp)
	lw $t0, -2604($fp)
	lw $t1, -2596($fp)
	add $t0, $t0, $t1
	sw $t0, -2608($fp)
	lw $t0, -2608($fp)
	lw $t1, 0($t0)
	sw $t1, -2612($fp)
	lw $t0, -2612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -2616($fp)
	li $t0, 3
	sw $t0, -2620($fp)
	li $t0, 4
	lw $t1, -2620($fp)
	mul $t0, $t0, $t1
	sw $t0, -2624($fp)
	lw $t0, -2624($fp)
	lw $t1, -2616($fp)
	add $t0, $t0, $t1
	sw $t0, -2628($fp)
	lw $t0, -2628($fp)
	lw $t1, 0($t0)
	sw $t1, -2632($fp)
	lw $t0, -2632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -2636($fp)
	li $t0, 4
	sw $t0, -2640($fp)
	li $t0, 4
	lw $t1, -2640($fp)
	mul $t0, $t0, $t1
	sw $t0, -2644($fp)
	lw $t0, -2644($fp)
	lw $t1, -2636($fp)
	add $t0, $t0, $t1
	sw $t0, -2648($fp)
	lw $t0, -2648($fp)
	lw $t1, 0($t0)
	sw $t1, -2652($fp)
	lw $t0, -2652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -2656($fp)
	li $t0, 5
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
	addi $t0, $fp, -188
	sw $t0, -2676($fp)
	li $t0, 0
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
	addi $t0, $fp, -188
	sw $t0, -2696($fp)
	li $t0, 1
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
	addi $t0, $fp, -188
	sw $t0, -2716($fp)
	li $t0, 2
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
	addi $t0, $fp, -188
	sw $t0, -2736($fp)
	li $t0, 3
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
	addi $t0, $fp, -188
	sw $t0, -2756($fp)
	li $t0, 4
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
	addi $t0, $fp, -188
	sw $t0, -2776($fp)
	li $t0, 5
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
	lw $t0, -1636($fp)
	sw $t0, -2796($fp)
	lw $t0, -2796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1648($fp)
	sw $t0, -2800($fp)
	lw $t0, -2800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1660($fp)
	sw $t0, -2804($fp)
	lw $t0, -2804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1672($fp)
	sw $t0, -2808($fp)
	lw $t0, -2808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1684($fp)
	sw $t0, -2812($fp)
	lw $t0, -2812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1696($fp)
	sw $t0, -2816($fp)
	lw $t0, -2816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1708($fp)
	sw $t0, -2820($fp)
	lw $t0, -2820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1720($fp)
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1732($fp)
	sw $t0, -2828($fp)
	lw $t0, -2828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1744($fp)
	sw $t0, -2832($fp)
	lw $t0, -2832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1756($fp)
	sw $t0, -2836($fp)
	lw $t0, -2836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2840($fp)
	li $t0, 19783
	sw $t0, -2844($fp)
	lw $t0, -1636($fp)
	sw $t0, -2848($fp)
	lw $t0, -2844($fp)
	lw $t1, -2848($fp)
	mul $t0, $t0, $t1
	sw $t0, -2852($fp)
	li $t0, 47130
	sw $t0, -2856($fp)
	lw $t1, -2852($fp)
	lw $t2, -2856($fp)
	bge $t1, $t2, label360
	j label363
label363:
	lw $t0, -1756($fp)
	sw $t0, -2860($fp)
	li $t0, 4719
	sw $t0, -2864($fp)
	lw $t0, -2860($fp)
	lw $t1, -2864($fp)
	add $t0, $t0, $t1
	sw $t0, -2868($fp)
	lw $t1, -2868($fp)
	li $t2, 0
	bne $t1, $t2, label360
	j label362
label362:
	li $t0, 16685
	sw $t0, -2872($fp)
	lw $t1, -2872($fp)
	li $t2, 0
	bne $t1, $t2, label360
	j label361
label360:
	li $t0, 1
	sw $t0, -2840($fp)
label361:
	lw $ra, -4($fp)
	lw $v0, -2840($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1228($fp)
	sw $t0, -2876($fp)
	li $t0, 0
	sw $t0, -2880($fp)
	lw $t0, -1228($fp)
	sw $t0, -2884($fp)
	li $t0, 14430
	sw $t0, -2888($fp)
	lw $t1, -2884($fp)
	lw $t2, -2888($fp)
	bge $t1, $t2, label367
	j label368
label367:
	li $t0, 1
	sw $t0, -2880($fp)
label368:
	addi $sp, $sp, -4
	lw $t0, -2880($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2892($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2896($fp)
	lw $t0, -1636($fp)
	sw $t0, -2900($fp)
	lw $t1, -2900($fp)
	li $t2, 0
	bne $t1, $t2, label371
	j label370
label371:
	li $t0, 447
	sw $t0, -2904($fp)
	lw $t1, -2904($fp)
	li $t2, 0
	bne $t1, $t2, label369
	j label370
label369:
	li $t0, 1
	sw $t0, -2896($fp)
label370:
	li $t0, 0
	sw $t0, -2908($fp)
	li $t0, 52148
	sw $t0, -2912($fp)
	li $t0, 27127
	sw $t0, -2916($fp)
	lw $t0, -2912($fp)
	lw $t1, -2916($fp)
	sub $t0, $t0, $t1
	sw $t0, -2920($fp)
	lw $t1, -2920($fp)
	li $t2, 0
	bne $t1, $t2, label374
	j label373
label374:
	li $t0, 35951
	sw $t0, -2924($fp)
	lw $t1, -2924($fp)
	li $t2, 0
	bne $t1, $t2, label372
	j label373
label372:
	li $t0, 1
	sw $t0, -2908($fp)
label373:
	li $t0, 0
	sw $t0, -2928($fp)
	lw $t0, -196($fp)
	sw $t0, -2932($fp)
	lw $t1, -2932($fp)
	li $t2, 0
	bne $t1, $t2, label378
	j label376
label378:
	lw $t0, 12($fp)
	sw $t0, -2936($fp)
	lw $t1, -2936($fp)
	li $t2, 0
	bne $t1, $t2, label377
	j label376
label377:
	lw $t0, 4($fp)
	sw $t0, -2940($fp)
	lw $t1, -2940($fp)
	li $t2, 0
	bne $t1, $t2, label375
	j label376
label375:
	li $t0, 1
	sw $t0, -2928($fp)
label376:
	lw $t0, -688($fp)
	sw $t0, -2944($fp)
	lw $t0, -2944($fp)
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	sw $t0, -2948($fp)
	addi $sp, $sp, -4
	lw $t0, -2896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2948($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2952($fp)
	addi $sp, $sp, 20
	lw $t1, -2892($fp)
	lw $t2, -2952($fp)
	bne $t1, $t2, label364
	j label365
label364:
	lw $t0, -1732($fp)
	sw $t0, -2956($fp)
	lw $t1, -2956($fp)
	li $t2, 0
	bne $t1, $t2, label383
	j label382
label383:
	li $t0, 43577
	sw $t0, -2960($fp)
	lw $t1, -2960($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label379
label382:
	li $t0, 5696
	sw $t0, -2964($fp)
	lw $t0, -1228($fp)
	sw $t0, -2968($fp)
	lw $t0, -2964($fp)
	lw $t1, -2968($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2972($fp)
	li $t0, 16763
	sw $t0, -2976($fp)
	lw $t0, -2972($fp)
	lw $t1, -2976($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2980($fp)
	li $t0, 0
	lw $t1, -2980($fp)
	sub $t0, $t0, $t1
	sw $t0, -2984($fp)
	lw $t1, -2984($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label380
label379:
	li $t0, 0
	sw $t0, -2988($fp)
	lw $t0, 4($fp)
	sw $t0, -2992($fp)
	lw $t1, -2992($fp)
	li $t2, 0
	bne $t1, $t2, label384
	j label386
label386:
	li $t0, 56330
	sw $t0, -2996($fp)
	lw $t0, -220($fp)
	sw $t0, -3000($fp)
	lw $t0, -2996($fp)
	lw $t1, -3000($fp)
	add $t0, $t0, $t1
	sw $t0, -3004($fp)
	li $t0, 0
	sw $t0, -3008($fp)
	lw $t0, -1648($fp)
	sw $t0, -3012($fp)
	lw $t0, -1744($fp)
	sw $t0, -3016($fp)
	lw $t1, -3012($fp)
	lw $t2, -3016($fp)
	bne $t1, $t2, label389
	j label388
label389:
	li $t0, 22149
	sw $t0, -3020($fp)
	lw $t1, -3020($fp)
	li $t2, 0
	bne $t1, $t2, label387
	j label388
label387:
	li $t0, 1
	sw $t0, -3008($fp)
label388:
	li $t0, 0
	sw $t0, -3024($fp)
	li $t0, 47854
	sw $t0, -3028($fp)
	lw $t0, -220($fp)
	sw $t0, -3032($fp)
	lw $t0, -3028($fp)
	lw $t1, -3032($fp)
	sub $t0, $t0, $t1
	sw $t0, -3036($fp)
	lw $t1, -3036($fp)
	li $t2, 0
	bne $t1, $t2, label390
	j label392
label392:
	li $t0, 9491
	sw $t0, -3040($fp)
	lw $t1, -3040($fp)
	li $t2, 0
	bne $t1, $t2, label390
	j label391
label390:
	li $t0, 1
	sw $t0, -3024($fp)
label391:
	addi $sp, $sp, -4
	lw $t0, -3004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3024($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -3044($fp)
	addi $sp, $sp, 16
	lw $t1, -3044($fp)
	li $t2, 0
	bne $t1, $t2, label384
	j label385
label384:
	li $t0, 1
	sw $t0, -2988($fp)
label385:
	j label381
label380:
	lw $t0, -580($fp)
	sw $t0, -3048($fp)
	li $t0, 0
	lw $t1, -3048($fp)
	sub $t0, $t0, $t1
	sw $t0, -3052($fp)
	li $t0, 0
	sw $t0, -3056($fp)
	addi $t0, $fp, -100
	sw $t0, -3060($fp)
	lw $t0, 4($fp)
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
	lw $t0, -1240($fp)
	sw $t0, -3080($fp)
	li $t0, 28783
	sw $t0, -3084($fp)
	lw $t0, -3080($fp)
	lw $t1, -3084($fp)
	sub $t0, $t0, $t1
	sw $t0, -3088($fp)
	lw $t1, -3076($fp)
	lw $t2, -3088($fp)
	blt $t1, $t2, label396
	j label397
label396:
	li $t0, 1
	sw $t0, -3056($fp)
label397:
	lw $t1, -3052($fp)
	lw $t2, -3056($fp)
	beq $t1, $t2, label393
	j label394
label393:
	lw $t0, -700($fp)
	sw $t0, -3092($fp)
	li $t0, 1940
	sw $t0, -3096($fp)
	li $t0, 0
	lw $t1, -3096($fp)
	sub $t0, $t0, $t1
	sw $t0, -3100($fp)
	lw $t0, -3092($fp)
	lw $t1, -3100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3104($fp)
	lw $t1, -3104($fp)
	li $t2, 0
	bne $t1, $t2, label398
	j label399
label398:
label401:
	addi $t0, $fp, -68
	sw $t0, -3108($fp)
	lw $t0, -928($fp)
	sw $t0, -3112($fp)
	li $t0, 4
	lw $t1, -3112($fp)
	mul $t0, $t0, $t1
	sw $t0, -3116($fp)
	lw $t0, -3116($fp)
	lw $t1, -3108($fp)
	add $t0, $t0, $t1
	sw $t0, -3120($fp)
	lw $t0, -3120($fp)
	lw $t1, 0($t0)
	sw $t1, -3124($fp)
	li $t0, 19906
	sw $t0, -3128($fp)
	lw $t0, -3124($fp)
	lw $t1, -3128($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3132($fp)
	lw $t0, -1672($fp)
	sw $t0, -3136($fp)
	lw $t0, -1684($fp)
	sw $t0, -3140($fp)
	lw $t0, -3136($fp)
	lw $t1, -3140($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3144($fp)
	lw $t0, -3132($fp)
	lw $t1, -3144($fp)
	sub $t0, $t0, $t1
	sw $t0, -3148($fp)
	li $t0, 62235
	sw $t0, -3152($fp)
	lw $t1, -3148($fp)
	lw $t2, -3152($fp)
	bne $t1, $t2, label404
	j label403
label404:
	li $t0, 56687
	sw $t0, -3156($fp)
	li $t0, 5363
	sw $t0, -3160($fp)
	lw $t0, -3156($fp)
	lw $t1, -3160($fp)
	mul $t0, $t0, $t1
	sw $t0, -3164($fp)
	li $t0, 0
	lw $t1, -3164($fp)
	sub $t0, $t0, $t1
	sw $t0, -3168($fp)
	lw $t1, -3168($fp)
	li $t2, 0
	bne $t1, $t2, label403
	j label402
label402:
	addi $t0, $fp, -40
	sw $t0, -3172($fp)
	li $t0, 0
	sw $t0, -3176($fp)
	lw $t0, -1684($fp)
	sw $t0, -3180($fp)
	li $t0, 61894
	sw $t0, -3184($fp)
	lw $t1, -3180($fp)
	lw $t2, -3184($fp)
	bge $t1, $t2, label411
	j label409
label411:
	li $t0, 48785
	sw $t0, -3188($fp)
	lw $t1, -3188($fp)
	li $t2, 0
	bne $t1, $t2, label410
	j label409
label410:
	li $t0, 4911
	sw $t0, -3192($fp)
	lw $t1, -3192($fp)
	li $t2, 0
	bne $t1, $t2, label408
	j label409
label408:
	li $t0, 1
	sw $t0, -3176($fp)
label409:
	li $t0, 4
	lw $t1, -3176($fp)
	mul $t0, $t0, $t1
	sw $t0, -3196($fp)
	lw $t0, -3196($fp)
	lw $t1, -3172($fp)
	add $t0, $t0, $t1
	sw $t0, -3200($fp)
	lw $t0, -3200($fp)
	lw $t1, 0($t0)
	sw $t1, -3204($fp)
	lw $t1, -3204($fp)
	li $t2, 0
	bne $t1, $t2, label405
	j label406
label405:
	addi $t0, $fp, -164
	sw $t0, -3208($fp)
	li $t0, 0
	sw $t0, -3212($fp)
	lw $t0, -904($fp)
	sw $t0, -3216($fp)
	lw $t1, -3216($fp)
	li $t2, 0
	bne $t1, $t2, label416
	j label415
label415:
	li $t0, 1
	sw $t0, -3212($fp)
label416:
	li $t0, 4
	lw $t1, -3212($fp)
	mul $t0, $t0, $t1
	sw $t0, -3220($fp)
	lw $t0, -3220($fp)
	lw $t1, -3208($fp)
	add $t0, $t0, $t1
	sw $t0, -3224($fp)
	lw $t0, -3224($fp)
	lw $t1, 0($t0)
	sw $t1, -3228($fp)
	li $t0, 27237
	sw $t0, -3232($fp)
	lw $t0, -3228($fp)
	lw $t1, -3232($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3236($fp)
	lw $t1, -3236($fp)
	li $t2, 0
	bne $t1, $t2, label412
	j label413
label412:
	li $t0, 0
	sw $t0, -3240($fp)
	li $t0, 733
	sw $t0, -3244($fp)
	lw $t1, -3244($fp)
	li $t2, 0
	bne $t1, $t2, label421
	j label420
label420:
	li $t0, 1
	sw $t0, -3240($fp)
label421:
	addi $t0, $fp, -164
	sw $t0, -3248($fp)
	lw $t0, -1636($fp)
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
	li $t0, 0
	lw $t1, -3264($fp)
	sub $t0, $t0, $t1
	sw $t0, -3268($fp)
	addi $sp, $sp, -4
	lw $t0, -3268($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3272($fp)
	addi $sp, $sp, 8
	lw $t0, -3240($fp)
	lw $t1, -3272($fp)
	mul $t0, $t0, $t1
	sw $t0, -3276($fp)
	lw $t1, -3276($fp)
	li $t2, 0
	bne $t1, $t2, label417
	j label418
label417:
	li $t0, 0
	sw $t0, -3280($fp)
	li $t0, 58223
	sw $t0, -3284($fp)
	li $t0, 45933
	sw $t0, -3288($fp)
	li $t0, 20516
	sw $t0, -3292($fp)
	lw $t0, -3288($fp)
	lw $t1, -3292($fp)
	mul $t0, $t0, $t1
	sw $t0, -3296($fp)
	lw $t0, -3284($fp)
	lw $t1, -3296($fp)
	add $t0, $t0, $t1
	sw $t0, -3300($fp)
	li $t0, 0
	sw $t0, -3304($fp)
	lw $t0, -1648($fp)
	sw $t0, -3308($fp)
	lw $t1, -3308($fp)
	li $t2, 0
	bne $t1, $t2, label425
	j label424
label424:
	li $t0, 1
	sw $t0, -3304($fp)
label425:
	lw $t0, -3300($fp)
	lw $t1, -3304($fp)
	add $t0, $t0, $t1
	sw $t0, -3312($fp)
	li $t0, 0
	sw $t0, -3316($fp)
	addi $t0, $fp, -164
	sw $t0, -3320($fp)
	lw $t0, -1240($fp)
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
	lw $t1, -3336($fp)
	li $t2, 0
	bne $t1, $t2, label426
	j label428
label428:
	lw $t0, -1264($fp)
	sw $t0, -3340($fp)
	lw $t1, -3340($fp)
	li $t2, 0
	bne $t1, $t2, label426
	j label427
label426:
	li $t0, 1
	sw $t0, -3316($fp)
label427:
	addi $sp, $sp, -4
	lw $t0, -3316($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3344($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -3344($fp)
	sub $t0, $t0, $t1
	sw $t0, -3348($fp)
	lw $t1, -3312($fp)
	lw $t2, -3348($fp)
	beq $t1, $t2, label422
	j label423
label422:
	li $t0, 1
	sw $t0, -3280($fp)
label423:
	lw $ra, -4($fp)
	lw $v0, -3280($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label419
label418:
	li $t0, 0
	sw $t0, -3352($fp)
	addi $t0, $fp, -40
	sw $t0, -3356($fp)
	li $t0, 39817
	sw $t0, -3360($fp)
	lw $t0, -1684($fp)
	sw $t0, -3364($fp)
	lw $t0, -3360($fp)
	lw $t1, -3364($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3368($fp)
	li $t0, 4
	lw $t1, -3368($fp)
	mul $t0, $t0, $t1
	sw $t0, -3372($fp)
	lw $t0, -3372($fp)
	lw $t1, -3356($fp)
	add $t0, $t0, $t1
	sw $t0, -3376($fp)
	lw $t0, -3376($fp)
	lw $t1, 0($t0)
	sw $t1, -3380($fp)
	lw $t1, -3380($fp)
	li $t2, 0
	bne $t1, $t2, label430
	j label429
label429:
	li $t0, 1
	sw $t0, -3352($fp)
label430:
label419:
	j label414
label413:
	li $t0, 50652
	sw $t0, -3384($fp)
label414:
	j label407
label406:
label431:
	addi $t0, $fp, -56
	sw $t0, -3388($fp)
	li $t0, 0
	sw $t0, -3392($fp)
	li $t0, 0
	sw $t0, -3396($fp)
	li $t0, 37201
	sw $t0, -3400($fp)
	lw $t0, 4($fp)
	sw $t0, -3404($fp)
	lw $t1, -3400($fp)
	lw $t2, -3404($fp)
	blt $t1, $t2, label437
	j label438
label437:
	li $t0, 1
	sw $t0, -3396($fp)
label438:
	li $t0, 54248
	sw $t0, -3408($fp)
	lw $t1, -3396($fp)
	lw $t2, -3408($fp)
	bge $t1, $t2, label435
	j label436
label435:
	li $t0, 1
	sw $t0, -3392($fp)
label436:
	li $t0, 4
	lw $t1, -3392($fp)
	mul $t0, $t0, $t1
	sw $t0, -3412($fp)
	lw $t0, -3412($fp)
	lw $t1, -3388($fp)
	add $t0, $t0, $t1
	sw $t0, -3416($fp)
	lw $t0, -3416($fp)
	lw $t1, 0($t0)
	sw $t1, -3420($fp)
	lw $t1, -3420($fp)
	li $t2, 0
	bne $t1, $t2, label434
	j label433
label434:
	lw $t0, -1708($fp)
	sw $t0, -3424($fp)
	li $t0, 0
	lw $t1, -3424($fp)
	sub $t0, $t0, $t1
	sw $t0, -3428($fp)
	li $t0, 0
	lw $t1, -3428($fp)
	sub $t0, $t0, $t1
	sw $t0, -3432($fp)
	lw $t1, -3432($fp)
	li $t2, 0
	bne $t1, $t2, label432
	j label433
label432:
	li $t0, 0
	sw $t0, -3436($fp)
	lw $t0, -1240($fp)
	sw $t0, -3440($fp)
	addi $t0, $fp, -188
	sw $t0, -3444($fp)
	li $t0, 0
	sw $t0, -3448($fp)
	lw $t0, -1744($fp)
	sw $t0, -3452($fp)
	li $t0, 37264
	sw $t0, -3456($fp)
	lw $t1, -3452($fp)
	lw $t2, -3456($fp)
	beq $t1, $t2, label441
	j label442
label441:
	li $t0, 1
	sw $t0, -3448($fp)
label442:
	li $t0, 4
	lw $t1, -3448($fp)
	mul $t0, $t0, $t1
	sw $t0, -3460($fp)
	lw $t0, -3460($fp)
	lw $t1, -3444($fp)
	add $t0, $t0, $t1
	sw $t0, -3464($fp)
	lw $t0, -3464($fp)
	lw $t1, 0($t0)
	sw $t1, -3468($fp)
	lw $t1, -3440($fp)
	lw $t2, -3468($fp)
	beq $t1, $t2, label439
	j label440
label439:
	li $t0, 1
	sw $t0, -3436($fp)
label440:
	j label431
label433:
label407:
	j label401
label403:
	j label400
label399:
	li $t0, 0
	sw $t0, -3472($fp)
	lw $t0, -1240($fp)
	sw $t0, -3476($fp)
	li $t0, 0
	lw $t1, -3476($fp)
	sub $t0, $t0, $t1
	sw $t0, -3480($fp)
	li $t0, 0
	lw $t1, -3480($fp)
	sub $t0, $t0, $t1
	sw $t0, -3484($fp)
	lw $t1, -3484($fp)
	li $t2, 0
	bne $t1, $t2, label444
	j label443
label443:
	li $t0, 1
	sw $t0, -3472($fp)
label444:
	li $t0, 0
	lw $t1, -3472($fp)
	sub $t0, $t0, $t1
	sw $t0, -3488($fp)
	lw $ra, -4($fp)
	lw $v0, -3488($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label400:
	j label395
label394:
	li $t0, 0
	sw $t0, -3492($fp)
	li $t0, 0
	sw $t0, -3496($fp)
	li $t0, 64328
	sw $t0, -3500($fp)
	li $t0, 24663
	sw $t0, -3504($fp)
	lw $t1, -3500($fp)
	lw $t2, -3504($fp)
	beq $t1, $t2, label447
	j label448
label447:
	li $t0, 1
	sw $t0, -3496($fp)
label448:
	addi $sp, $sp, -4
	lw $t0, -3496($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3508($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3512($fp)
	li $t0, 37711
	sw $t0, -3516($fp)
	lw $t1, -3516($fp)
	li $t2, 0
	bne $t1, $t2, label450
	j label449
label449:
	li $t0, 1
	sw $t0, -3512($fp)
label450:
	lw $t0, -3508($fp)
	lw $t1, -3512($fp)
	add $t0, $t0, $t1
	sw $t0, -3520($fp)
	li $t0, 0
	sw $t0, -3524($fp)
	li $t0, 0
	sw $t0, -3528($fp)
	lw $t0, -1708($fp)
	sw $t0, -3532($fp)
	li $t0, 42369
	sw $t0, -3536($fp)
	lw $t0, -3532($fp)
	lw $t1, -3536($fp)
	sub $t0, $t0, $t1
	sw $t0, -3540($fp)
	lw $t0, -1252($fp)
	sw $t0, -3544($fp)
	lw $t1, -3540($fp)
	lw $t2, -3544($fp)
	bgt $t1, $t2, label453
	j label454
label453:
	li $t0, 1
	sw $t0, -3528($fp)
label454:
	addi $t0, $fp, -100
	sw $t0, -3548($fp)
	lw $t0, -1660($fp)
	sw $t0, -3552($fp)
	li $t0, 4
	lw $t1, -3552($fp)
	mul $t0, $t0, $t1
	sw $t0, -3556($fp)
	lw $t0, -3556($fp)
	lw $t1, -3548($fp)
	add $t0, $t0, $t1
	sw $t0, -3560($fp)
	lw $t0, -3560($fp)
	lw $t1, 0($t0)
	sw $t1, -3564($fp)
	lw $t1, -3528($fp)
	lw $t2, -3564($fp)
	ble $t1, $t2, label451
	j label452
label451:
	li $t0, 1
	sw $t0, -3524($fp)
label452:
	lw $t1, -3520($fp)
	lw $t2, -3524($fp)
	bne $t1, $t2, label445
	j label446
label445:
	li $t0, 1
	sw $t0, -3492($fp)
label446:
label395:
label381:
	j label366
label365:
label455:
	lw $t0, -1660($fp)
	sw $t0, -3568($fp)
	li $t0, 0
	sw $t0, -3572($fp)
	li $t0, 30359
	sw $t0, -3576($fp)
	lw $t1, -3576($fp)
	li $t2, 0
	bne $t1, $t2, label461
	j label460
label460:
	li $t0, 1
	sw $t0, -3572($fp)
label461:
	lw $t0, -3568($fp)
	lw $t1, -3572($fp)
	mul $t0, $t0, $t1
	sw $t0, -3580($fp)
	li $t0, 0
	lw $t1, -3580($fp)
	sub $t0, $t0, $t1
	sw $t0, -3584($fp)
	lw $t1, -3584($fp)
	li $t2, 0
	bne $t1, $t2, label459
	j label457
label459:
	lw $t0, -220($fp)
	sw $t0, -3588($fp)
	lw $t0, -1720($fp)
	sw $t0, -3592($fp)
	lw $t0, -3588($fp)
	lw $t1, -3592($fp)
	add $t0, $t0, $t1
	sw $t0, -3596($fp)
	lw $t0, -232($fp)
	sw $t0, -3600($fp)
	lw $t0, -3596($fp)
	lw $t1, -3600($fp)
	add $t0, $t0, $t1
	sw $t0, -3604($fp)
	lw $t1, -3604($fp)
	li $t2, 0
	bne $t1, $t2, label458
	j label457
label458:
	li $t0, 22975
	sw $t0, -3608($fp)
	lw $t1, -3608($fp)
	li $t2, 0
	bne $t1, $t2, label456
	j label457
label456:
	lw $t0, -1660($fp)
	sw $t0, -3612($fp)
	li $t0, 12679
	sw $t0, -3616($fp)
	lw $t0, -3612($fp)
	lw $t1, -3616($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3620($fp)
	lw $t1, -3620($fp)
	li $t2, 0
	bne $t1, $t2, label462
	j label465
label465:
	addi $t0, $fp, -56
	sw $t0, -3624($fp)
	jal f12
	sw $v0, -3628($fp)
	addi $sp, $sp, 4
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
	lw $t1, -3640($fp)
	li $t2, 0
	bne $t1, $t2, label462
	j label463
label462:
	li $t0, 0
	sw $t0, -3644($fp)
	li $t0, 32466
	sw $t0, -3648($fp)
	li $t0, 15745
	sw $t0, -3652($fp)
	li $t0, 3472
	sw $t0, -3656($fp)
	lw $t0, -3652($fp)
	lw $t1, -3656($fp)
	add $t0, $t0, $t1
	sw $t0, -3660($fp)
	lw $t0, -580($fp)
	sw $t0, -3664($fp)
	lw $t0, -3660($fp)
	lw $t1, -3664($fp)
	sub $t0, $t0, $t1
	sw $t0, -3668($fp)
	lw $t1, -3648($fp)
	lw $t2, -3668($fp)
	beq $t1, $t2, label469
	j label470
label469:
	li $t0, 1
	sw $t0, -3644($fp)
label470:
	li $t0, 0
	sw $t0, -3672($fp)
	li $t0, 61249
	sw $t0, -3676($fp)
	lw $t0, -1660($fp)
	sw $t0, -3680($fp)
	lw $t0, -3676($fp)
	lw $t1, -3680($fp)
	mul $t0, $t0, $t1
	sw $t0, -3684($fp)
	li $t0, 17685
	sw $t0, -3688($fp)
	lw $t0, -3684($fp)
	lw $t1, -3688($fp)
	sub $t0, $t0, $t1
	sw $t0, -3692($fp)
	lw $t0, -928($fp)
	sw $t0, -3696($fp)
	li $t0, 23378
	sw $t0, -3700($fp)
	lw $t0, -3696($fp)
	lw $t1, -3700($fp)
	sub $t0, $t0, $t1
	sw $t0, -3704($fp)
	lw $t1, -3692($fp)
	lw $t2, -3704($fp)
	bge $t1, $t2, label471
	j label472
label471:
	li $t0, 1
	sw $t0, -3672($fp)
label472:
	lw $t1, -3644($fp)
	lw $t2, -3672($fp)
	beq $t1, $t2, label466
	j label467
label466:
	li $t0, 0
	sw $t0, -3708($fp)
	li $t0, 57949
	sw $t0, -3712($fp)
	lw $t1, -3712($fp)
	li $t2, 0
	bne $t1, $t2, label473
	j label475
label475:
	lw $t0, -220($fp)
	sw $t0, -3716($fp)
	li $t0, 8836
	sw $t0, -3720($fp)
	li $t0, 28741
	sw $t0, -3724($fp)
	lw $t0, -3720($fp)
	lw $t1, -3724($fp)
	mul $t0, $t0, $t1
	sw $t0, -3728($fp)
	lw $t0, -3716($fp)
	lw $t1, -3728($fp)
	add $t0, $t0, $t1
	sw $t0, -3732($fp)
	lw $t1, -3732($fp)
	li $t2, 0
	bne $t1, $t2, label473
	j label474
label473:
	li $t0, 1
	sw $t0, -3708($fp)
label474:
	lw $ra, -4($fp)
	lw $v0, -3708($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label468
label467:
	li $t0, 0
	sw $t0, -3736($fp)
	lw $t0, -676($fp)
	sw $t0, -3740($fp)
	lw $t1, -3740($fp)
	li $t2, 0
	bne $t1, $t2, label480
	j label479
label479:
	li $t0, 1
	sw $t0, -3736($fp)
label480:
	li $t0, 0
	lw $t1, -3736($fp)
	sub $t0, $t0, $t1
	sw $t0, -3744($fp)
	lw $t1, -3744($fp)
	li $t2, 0
	bne $t1, $t2, label476
	j label477
label476:
	li $t0, 54307
	sw $t0, -3748($fp)
	lw $t0, -3748($fp)
	sw $t0, -3752($fp)
	lw $t0, -3752($fp)
	sw $t0, -3756($fp)
	lw $t0, -1660($fp)
	sw $t0, -3760($fp)
	li $t0, 57622
	sw $t0, -3764($fp)
	lw $t0, -3760($fp)
	lw $t1, -3764($fp)
	mul $t0, $t0, $t1
	sw $t0, -3768($fp)
	lw $t0, -1744($fp)
	sw $t0, -3772($fp)
	li $t0, 33652
	sw $t0, -3776($fp)
	lw $t0, -3772($fp)
	lw $t1, -3776($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3780($fp)
	lw $t0, -3768($fp)
	lw $t1, -3780($fp)
	add $t0, $t0, $t1
	sw $t0, -3784($fp)
	lw $t0, -3784($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -3788($fp)
	li $t0, 42838
	sw $t0, -3792($fp)
	li $t0, 19322
	sw $t0, -3796($fp)
	li $t0, 0
	sw $t0, -3800($fp)
	li $t0, 9807
	sw $t0, -3804($fp)
	lw $t0, -232($fp)
	sw $t0, -3808($fp)
	lw $t0, -3804($fp)
	lw $t1, -3808($fp)
	sub $t0, $t0, $t1
	sw $t0, -3812($fp)
	lw $t0, -196($fp)
	sw $t0, -3816($fp)
	lw $t1, -3812($fp)
	lw $t2, -3816($fp)
	ble $t1, $t2, label481
	j label482
label481:
	li $t0, 1
	sw $t0, -3800($fp)
label482:
	li $t0, 0
	sw $t0, -3820($fp)
	li $t0, 35526
	sw $t0, -3824($fp)
	li $t0, 1
	sw $t0, -3828($fp)
	lw $t0, -3824($fp)
	lw $t1, -3828($fp)
	mul $t0, $t0, $t1
	sw $t0, -3832($fp)
	li $t0, 54902
	sw $t0, -3836($fp)
	lw $t1, -3832($fp)
	lw $t2, -3836($fp)
	bne $t1, $t2, label483
	j label484
label483:
	li $t0, 1
	sw $t0, -3820($fp)
label484:
	addi $t0, $fp, -140
	sw $t0, -3840($fp)
	lw $t0, -940($fp)
	sw $t0, -3844($fp)
	li $t0, 4
	lw $t1, -3844($fp)
	mul $t0, $t0, $t1
	sw $t0, -3848($fp)
	lw $t0, -3848($fp)
	lw $t1, -3840($fp)
	add $t0, $t0, $t1
	sw $t0, -3852($fp)
	lw $t0, -3852($fp)
	lw $t1, 0($t0)
	sw $t1, -3856($fp)
	lw $t0, -1732($fp)
	sw $t0, -3860($fp)
	lw $t0, -3856($fp)
	lw $t1, -3860($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3864($fp)
	li $t0, 0
	sw $t0, -3868($fp)
	li $t0, 34385
	sw $t0, -3872($fp)
	lw $t0, -1660($fp)
	sw $t0, -3876($fp)
	lw $t1, -3872($fp)
	lw $t2, -3876($fp)
	blt $t1, $t2, label485
	j label486
label485:
	li $t0, 1
	sw $t0, -3868($fp)
label486:
	li $t0, 0
	sw $t0, -3880($fp)
	lw $t0, -556($fp)
	sw $t0, -3884($fp)
	lw $t1, -3884($fp)
	li $t2, 0
	bne $t1, $t2, label487
	j label490
label490:
	lw $t0, -1660($fp)
	sw $t0, -3888($fp)
	lw $t1, -3888($fp)
	li $t2, 0
	bne $t1, $t2, label487
	j label489
label489:
	lw $t0, -1240($fp)
	sw $t0, -3892($fp)
	lw $t1, -3892($fp)
	li $t2, 0
	bne $t1, $t2, label487
	j label488
label487:
	li $t0, 1
	sw $t0, -3880($fp)
label488:
	addi $sp, $sp, -4
	lw $t0, -3800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3880($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -3896($fp)
	addi $sp, $sp, 24
	lw $t0, -3796($fp)
	lw $t1, -3896($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3900($fp)
	li $t0, 0
	lw $t1, -3900($fp)
	sub $t0, $t0, $t1
	sw $t0, -3904($fp)
	li $t0, 0
	lw $t1, -3904($fp)
	sub $t0, $t0, $t1
	sw $t0, -3908($fp)
	lw $t0, -3792($fp)
	lw $t1, -3908($fp)
	mul $t0, $t0, $t1
	sw $t0, -3912($fp)
	li $t0, 0
	lw $t1, -3912($fp)
	sub $t0, $t0, $t1
	sw $t0, -3916($fp)
	li $t0, 0
	sw $t0, -3920($fp)
	li $t0, 22100
	sw $t0, -3924($fp)
	lw $t0, -1660($fp)
	sw $t0, -3928($fp)
	lw $t0, -3924($fp)
	lw $t1, -3928($fp)
	sub $t0, $t0, $t1
	sw $t0, -3932($fp)
	lw $t0, -196($fp)
	sw $t0, -3936($fp)
	lw $t1, -3932($fp)
	lw $t2, -3936($fp)
	bge $t1, $t2, label491
	j label492
label491:
	li $t0, 1
	sw $t0, -3920($fp)
label492:
	li $t0, 64055
	sw $t0, -3940($fp)
	lw $t0, -3940($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -3944($fp)
	lw $t0, -3752($fp)
	sw $t0, -3948($fp)
	li $t0, 0
	lw $t1, -3948($fp)
	sub $t0, $t0, $t1
	sw $t0, -3952($fp)
	li $t0, 0
	sw $t0, -3956($fp)
	li $t0, 50371
	sw $t0, -3960($fp)
	lw $t1, -3960($fp)
	li $t2, 0
	bne $t1, $t2, label496
	j label495
label496:
	lw $t0, -1264($fp)
	sw $t0, -3964($fp)
	lw $t1, -3964($fp)
	li $t2, 0
	bne $t1, $t2, label493
	j label495
label495:
	li $t0, 26567
	sw $t0, -3968($fp)
	lw $t1, -3968($fp)
	li $t2, 0
	bne $t1, $t2, label493
	j label494
label493:
	li $t0, 1
	sw $t0, -3956($fp)
label494:
	lw $t0, -1660($fp)
	sw $t0, -3972($fp)
	addi $sp, $sp, -4
	lw $t0, -3920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3972($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -3976($fp)
	addi $sp, $sp, 24
	j label478
label477:
	li $t0, 0
	sw $t0, -3980($fp)
	addi $t0, $fp, -40
	sw $t0, -3984($fp)
	li $t0, 3
	sw $t0, -3988($fp)
	li $t0, 4
	lw $t1, -3988($fp)
	mul $t0, $t0, $t1
	sw $t0, -3992($fp)
	lw $t0, -3992($fp)
	lw $t1, -3984($fp)
	add $t0, $t0, $t1
	sw $t0, -3996($fp)
	lw $t0, -3996($fp)
	lw $t1, 0($t0)
	sw $t1, -4000($fp)
	li $t0, 0
	sw $t0, -4004($fp)
	lw $t0, -1708($fp)
	sw $t0, -4008($fp)
	lw $t1, -4008($fp)
	li $t2, 0
	bne $t1, $t2, label501
	j label500
label500:
	li $t0, 1
	sw $t0, -4004($fp)
label501:
	lw $t0, -904($fp)
	sw $t0, -4012($fp)
	lw $t0, -4004($fp)
	lw $t1, -4012($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4016($fp)
	li $t0, 0
	sw $t0, -4020($fp)
	lw $t0, -952($fp)
	sw $t0, -4024($fp)
	li $t0, 0
	lw $t1, -4024($fp)
	sub $t0, $t0, $t1
	sw $t0, -4028($fp)
	lw $t0, -1720($fp)
	sw $t0, -4032($fp)
	lw $t1, -4028($fp)
	lw $t2, -4032($fp)
	ble $t1, $t2, label502
	j label503
label502:
	li $t0, 1
	sw $t0, -4020($fp)
label503:
	li $t0, 0
	sw $t0, -4036($fp)
	jal f12
	sw $v0, -4040($fp)
	addi $sp, $sp, 4
	lw $t0, -1000($fp)
	sw $t0, -4044($fp)
	lw $t1, -4040($fp)
	lw $t2, -4044($fp)
	bge $t1, $t2, label504
	j label505
label504:
	li $t0, 1
	sw $t0, -4036($fp)
label505:
	jal f13
	sw $v0, -4048($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -4052($fp)
	li $t0, 0
	sw $t0, -4056($fp)
	li $t0, 61325
	sw $t0, -4060($fp)
	li $t0, 684
	sw $t0, -4064($fp)
	lw $t1, -4060($fp)
	lw $t2, -4064($fp)
	blt $t1, $t2, label508
	j label509
label508:
	li $t0, 1
	sw $t0, -4056($fp)
label509:
	lw $t0, -1000($fp)
	sw $t0, -4068($fp)
	lw $t1, -4056($fp)
	lw $t2, -4068($fp)
	bge $t1, $t2, label506
	j label507
label506:
	li $t0, 1
	sw $t0, -4052($fp)
label507:
	addi $sp, $sp, -4
	lw $t0, -4036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4052($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -4072($fp)
	addi $sp, $sp, 16
	lw $t0, -916($fp)
	sw $t0, -4076($fp)
	lw $t0, -4072($fp)
	lw $t1, -4076($fp)
	mul $t0, $t0, $t1
	sw $t0, -4080($fp)
	li $t0, 0
	sw $t0, -4084($fp)
	li $t0, 53542
	sw $t0, -4088($fp)
	lw $t1, -4088($fp)
	li $t2, 0
	bne $t1, $t2, label510
	j label513
label513:
	li $t0, 17250
	sw $t0, -4092($fp)
	lw $t1, -4092($fp)
	li $t2, 0
	bne $t1, $t2, label510
	j label512
label512:
	lw $t0, -208($fp)
	sw $t0, -4096($fp)
	lw $t1, -4096($fp)
	li $t2, 0
	bne $t1, $t2, label510
	j label511
label510:
	li $t0, 1
	sw $t0, -4084($fp)
label511:
	li $t0, 2193
	sw $t0, -4100($fp)
	lw $t0, -4100($fp)
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	sw $t0, -4104($fp)
	addi $sp, $sp, -4
	lw $t0, -4016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4104($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -4108($fp)
	addi $sp, $sp, 24
	lw $t1, -4000($fp)
	lw $t2, -4108($fp)
	beq $t1, $t2, label499
	j label498
label499:
	li $t0, 0
	sw $t0, -4112($fp)
	li $t0, 49716
	sw $t0, -4116($fp)
	lw $t1, -4116($fp)
	li $t2, 0
	bne $t1, $t2, label514
	j label515
label514:
	li $t0, 1
	sw $t0, -4112($fp)
label515:
	li $t0, 0
	lw $t1, -4112($fp)
	sub $t0, $t0, $t1
	sw $t0, -4120($fp)
	lw $t1, -4120($fp)
	li $t2, 0
	bne $t1, $t2, label497
	j label498
label497:
	li $t0, 1
	sw $t0, -3980($fp)
label498:
	lw $ra, -4($fp)
	lw $v0, -3980($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label478:
label468:
	j label464
label463:
	li $t0, 11534
	sw $t0, -4124($fp)
	lw $t1, -4124($fp)
	li $t2, 0
	bne $t1, $t2, label516
	j label517
label516:
	lw $t0, -1696($fp)
	sw $t0, -4128($fp)
	lw $t0, -1000($fp)
	sw $t0, -4132($fp)
	lw $t0, -4128($fp)
	lw $t1, -4132($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4136($fp)
	j label518
label517:
	addi $t0, $fp, -164
	sw $t0, -4140($fp)
	lw $t0, -1228($fp)
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
	li $t0, 0
	sw $t0, -4160($fp)
	lw $t0, -1684($fp)
	sw $t0, -4164($fp)
	lw $t1, -4164($fp)
	li $t2, 0
	bne $t1, $t2, label520
	j label519
label519:
	li $t0, 1
	sw $t0, -4160($fp)
label520:
	lw $t0, -4156($fp)
	lw $t1, -4160($fp)
	mul $t0, $t0, $t1
	sw $t0, -4168($fp)
	lw $t0, -4168($fp)
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	sw $t0, -4172($fp)
label518:
label464:
	j label455
label457:
label366:
	lw $t0, -196($fp)
	sw $t0, -4176($fp)
	lw $t0, -4176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -208($fp)
	sw $t0, -4180($fp)
	lw $t0, -4180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -220($fp)
	sw $t0, -4184($fp)
	lw $t0, -4184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -232($fp)
	sw $t0, -4188($fp)
	lw $t0, -4188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -4192($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
	sw $t0, -4212($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -4232($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -4252($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -4272($fp)
	li $t0, 4
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
	addi $t0, $fp, -40
	sw $t0, -4292($fp)
	li $t0, 5
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
	lw $t0, -4308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -4312($fp)
	li $t0, 6
	sw $t0, -4316($fp)
	li $t0, 4
	lw $t1, -4316($fp)
	mul $t0, $t0, $t1
	sw $t0, -4320($fp)
	lw $t0, -4320($fp)
	lw $t1, -4312($fp)
	add $t0, $t0, $t1
	sw $t0, -4324($fp)
	lw $t0, -4324($fp)
	lw $t1, 0($t0)
	sw $t1, -4328($fp)
	lw $t0, -4328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -4332($fp)
	li $t0, 7
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
	addi $t0, $fp, -40
	sw $t0, -4352($fp)
	li $t0, 8
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
	addi $t0, $fp, -56
	sw $t0, -4372($fp)
	li $t0, 0
	sw $t0, -4376($fp)
	li $t0, 4
	lw $t1, -4376($fp)
	mul $t0, $t0, $t1
	sw $t0, -4380($fp)
	lw $t0, -4380($fp)
	lw $t1, -4372($fp)
	add $t0, $t0, $t1
	sw $t0, -4384($fp)
	lw $t0, -4384($fp)
	lw $t1, 0($t0)
	sw $t1, -4388($fp)
	lw $t0, -4388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -4392($fp)
	li $t0, 1
	sw $t0, -4396($fp)
	li $t0, 4
	lw $t1, -4396($fp)
	mul $t0, $t0, $t1
	sw $t0, -4400($fp)
	lw $t0, -4400($fp)
	lw $t1, -4392($fp)
	add $t0, $t0, $t1
	sw $t0, -4404($fp)
	lw $t0, -4404($fp)
	lw $t1, 0($t0)
	sw $t1, -4408($fp)
	lw $t0, -4408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -4412($fp)
	li $t0, 2
	sw $t0, -4416($fp)
	li $t0, 4
	lw $t1, -4416($fp)
	mul $t0, $t0, $t1
	sw $t0, -4420($fp)
	lw $t0, -4420($fp)
	lw $t1, -4412($fp)
	add $t0, $t0, $t1
	sw $t0, -4424($fp)
	lw $t0, -4424($fp)
	lw $t1, 0($t0)
	sw $t1, -4428($fp)
	lw $t0, -4428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -4432($fp)
	li $t0, 3
	sw $t0, -4436($fp)
	li $t0, 4
	lw $t1, -4436($fp)
	mul $t0, $t0, $t1
	sw $t0, -4440($fp)
	lw $t0, -4440($fp)
	lw $t1, -4432($fp)
	add $t0, $t0, $t1
	sw $t0, -4444($fp)
	lw $t0, -4444($fp)
	lw $t1, 0($t0)
	sw $t1, -4448($fp)
	lw $t0, -4448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -556($fp)
	sw $t0, -4452($fp)
	lw $t0, -4452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -568($fp)
	sw $t0, -4456($fp)
	lw $t0, -4456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -580($fp)
	sw $t0, -4460($fp)
	lw $t0, -4460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -592($fp)
	sw $t0, -4464($fp)
	lw $t0, -4464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -4468($fp)
	li $t0, 0
	sw $t0, -4472($fp)
	li $t0, 4
	lw $t1, -4472($fp)
	mul $t0, $t0, $t1
	sw $t0, -4476($fp)
	lw $t0, -4476($fp)
	lw $t1, -4468($fp)
	add $t0, $t0, $t1
	sw $t0, -4480($fp)
	lw $t0, -4480($fp)
	lw $t1, 0($t0)
	sw $t1, -4484($fp)
	lw $t0, -4484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -4488($fp)
	li $t0, 1
	sw $t0, -4492($fp)
	li $t0, 4
	lw $t1, -4492($fp)
	mul $t0, $t0, $t1
	sw $t0, -4496($fp)
	lw $t0, -4496($fp)
	lw $t1, -4488($fp)
	add $t0, $t0, $t1
	sw $t0, -4500($fp)
	lw $t0, -4500($fp)
	lw $t1, 0($t0)
	sw $t1, -4504($fp)
	lw $t0, -4504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -4508($fp)
	li $t0, 2
	sw $t0, -4512($fp)
	li $t0, 4
	lw $t1, -4512($fp)
	mul $t0, $t0, $t1
	sw $t0, -4516($fp)
	lw $t0, -4516($fp)
	lw $t1, -4508($fp)
	add $t0, $t0, $t1
	sw $t0, -4520($fp)
	lw $t0, -4520($fp)
	lw $t1, 0($t0)
	sw $t1, -4524($fp)
	lw $t0, -4524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -676($fp)
	sw $t0, -4528($fp)
	lw $t0, -4528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -688($fp)
	sw $t0, -4532($fp)
	lw $t0, -4532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -700($fp)
	sw $t0, -4536($fp)
	lw $t0, -4536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -4540($fp)
	li $t0, 0
	sw $t0, -4544($fp)
	li $t0, 4
	lw $t1, -4544($fp)
	mul $t0, $t0, $t1
	sw $t0, -4548($fp)
	lw $t0, -4548($fp)
	lw $t1, -4540($fp)
	add $t0, $t0, $t1
	sw $t0, -4552($fp)
	lw $t0, -4552($fp)
	lw $t1, 0($t0)
	sw $t1, -4556($fp)
	lw $t0, -4556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -4560($fp)
	li $t0, 1
	sw $t0, -4564($fp)
	li $t0, 4
	lw $t1, -4564($fp)
	mul $t0, $t0, $t1
	sw $t0, -4568($fp)
	lw $t0, -4568($fp)
	lw $t1, -4560($fp)
	add $t0, $t0, $t1
	sw $t0, -4572($fp)
	lw $t0, -4572($fp)
	lw $t1, 0($t0)
	sw $t1, -4576($fp)
	lw $t0, -4576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -4580($fp)
	li $t0, 2
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
	lw $t0, -4596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -4600($fp)
	li $t0, 3
	sw $t0, -4604($fp)
	li $t0, 4
	lw $t1, -4604($fp)
	mul $t0, $t0, $t1
	sw $t0, -4608($fp)
	lw $t0, -4608($fp)
	lw $t1, -4600($fp)
	add $t0, $t0, $t1
	sw $t0, -4612($fp)
	lw $t0, -4612($fp)
	lw $t1, 0($t0)
	sw $t1, -4616($fp)
	lw $t0, -4616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -4620($fp)
	li $t0, 4
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
	lw $t0, -4636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -4640($fp)
	li $t0, 5
	sw $t0, -4644($fp)
	li $t0, 4
	lw $t1, -4644($fp)
	mul $t0, $t0, $t1
	sw $t0, -4648($fp)
	lw $t0, -4648($fp)
	lw $t1, -4640($fp)
	add $t0, $t0, $t1
	sw $t0, -4652($fp)
	lw $t0, -4652($fp)
	lw $t1, 0($t0)
	sw $t1, -4656($fp)
	lw $t0, -4656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -4660($fp)
	li $t0, 6
	sw $t0, -4664($fp)
	li $t0, 4
	lw $t1, -4664($fp)
	mul $t0, $t0, $t1
	sw $t0, -4668($fp)
	lw $t0, -4668($fp)
	lw $t1, -4660($fp)
	add $t0, $t0, $t1
	sw $t0, -4672($fp)
	lw $t0, -4672($fp)
	lw $t1, 0($t0)
	sw $t1, -4676($fp)
	lw $t0, -4676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -4680($fp)
	li $t0, 7
	sw $t0, -4684($fp)
	li $t0, 4
	lw $t1, -4684($fp)
	mul $t0, $t0, $t1
	sw $t0, -4688($fp)
	lw $t0, -4688($fp)
	lw $t1, -4680($fp)
	add $t0, $t0, $t1
	sw $t0, -4692($fp)
	lw $t0, -4692($fp)
	lw $t1, 0($t0)
	sw $t1, -4696($fp)
	lw $t0, -4696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -904($fp)
	sw $t0, -4700($fp)
	lw $t0, -4700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -916($fp)
	sw $t0, -4704($fp)
	lw $t0, -4704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -928($fp)
	sw $t0, -4708($fp)
	lw $t0, -4708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -940($fp)
	sw $t0, -4712($fp)
	lw $t0, -4712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -952($fp)
	sw $t0, -4716($fp)
	lw $t0, -4716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -964($fp)
	sw $t0, -4720($fp)
	lw $t0, -4720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -4724($fp)
	li $t0, 0
	sw $t0, -4728($fp)
	li $t0, 4
	lw $t1, -4728($fp)
	mul $t0, $t0, $t1
	sw $t0, -4732($fp)
	lw $t0, -4732($fp)
	lw $t1, -4724($fp)
	add $t0, $t0, $t1
	sw $t0, -4736($fp)
	lw $t0, -4736($fp)
	lw $t1, 0($t0)
	sw $t1, -4740($fp)
	lw $t0, -4740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1000($fp)
	sw $t0, -4744($fp)
	lw $t0, -4744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -4748($fp)
	li $t0, 0
	sw $t0, -4752($fp)
	li $t0, 4
	lw $t1, -4752($fp)
	mul $t0, $t0, $t1
	sw $t0, -4756($fp)
	lw $t0, -4756($fp)
	lw $t1, -4748($fp)
	add $t0, $t0, $t1
	sw $t0, -4760($fp)
	lw $t0, -4760($fp)
	lw $t1, 0($t0)
	sw $t1, -4764($fp)
	lw $t0, -4764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -4768($fp)
	li $t0, 1
	sw $t0, -4772($fp)
	li $t0, 4
	lw $t1, -4772($fp)
	mul $t0, $t0, $t1
	sw $t0, -4776($fp)
	lw $t0, -4776($fp)
	lw $t1, -4768($fp)
	add $t0, $t0, $t1
	sw $t0, -4780($fp)
	lw $t0, -4780($fp)
	lw $t1, 0($t0)
	sw $t1, -4784($fp)
	lw $t0, -4784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -4788($fp)
	li $t0, 2
	sw $t0, -4792($fp)
	li $t0, 4
	lw $t1, -4792($fp)
	mul $t0, $t0, $t1
	sw $t0, -4796($fp)
	lw $t0, -4796($fp)
	lw $t1, -4788($fp)
	add $t0, $t0, $t1
	sw $t0, -4800($fp)
	lw $t0, -4800($fp)
	lw $t1, 0($t0)
	sw $t1, -4804($fp)
	lw $t0, -4804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -4808($fp)
	li $t0, 3
	sw $t0, -4812($fp)
	li $t0, 4
	lw $t1, -4812($fp)
	mul $t0, $t0, $t1
	sw $t0, -4816($fp)
	lw $t0, -4816($fp)
	lw $t1, -4808($fp)
	add $t0, $t0, $t1
	sw $t0, -4820($fp)
	lw $t0, -4820($fp)
	lw $t1, 0($t0)
	sw $t1, -4824($fp)
	lw $t0, -4824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -4828($fp)
	li $t0, 4
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
	lw $t0, -4844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -4848($fp)
	li $t0, 5
	sw $t0, -4852($fp)
	li $t0, 4
	lw $t1, -4852($fp)
	mul $t0, $t0, $t1
	sw $t0, -4856($fp)
	lw $t0, -4856($fp)
	lw $t1, -4848($fp)
	add $t0, $t0, $t1
	sw $t0, -4860($fp)
	lw $t0, -4860($fp)
	lw $t1, 0($t0)
	sw $t1, -4864($fp)
	lw $t0, -4864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -4868($fp)
	li $t0, 6
	sw $t0, -4872($fp)
	li $t0, 4
	lw $t1, -4872($fp)
	mul $t0, $t0, $t1
	sw $t0, -4876($fp)
	lw $t0, -4876($fp)
	lw $t1, -4868($fp)
	add $t0, $t0, $t1
	sw $t0, -4880($fp)
	lw $t0, -4880($fp)
	lw $t1, 0($t0)
	sw $t1, -4884($fp)
	lw $t0, -4884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -4888($fp)
	li $t0, 7
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
	addi $t0, $fp, -140
	sw $t0, -4908($fp)
	li $t0, 8
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
	lw $t0, -1228($fp)
	sw $t0, -4928($fp)
	lw $t0, -4928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1240($fp)
	sw $t0, -4932($fp)
	lw $t0, -4932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1252($fp)
	sw $t0, -4936($fp)
	lw $t0, -4936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1264($fp)
	sw $t0, -4940($fp)
	lw $t0, -4940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1276($fp)
	sw $t0, -4944($fp)
	lw $t0, -4944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1288($fp)
	sw $t0, -4948($fp)
	lw $t0, -4948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1300($fp)
	sw $t0, -4952($fp)
	lw $t0, -4952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1312($fp)
	sw $t0, -4956($fp)
	lw $t0, -4956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1324($fp)
	sw $t0, -4960($fp)
	lw $t0, -4960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1336($fp)
	sw $t0, -4964($fp)
	lw $t0, -4964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -4968($fp)
	li $t0, 0
	sw $t0, -4972($fp)
	li $t0, 4
	lw $t1, -4972($fp)
	mul $t0, $t0, $t1
	sw $t0, -4976($fp)
	lw $t0, -4976($fp)
	lw $t1, -4968($fp)
	add $t0, $t0, $t1
	sw $t0, -4980($fp)
	lw $t0, -4980($fp)
	lw $t1, 0($t0)
	sw $t1, -4984($fp)
	lw $t0, -4984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -4988($fp)
	li $t0, 1
	sw $t0, -4992($fp)
	li $t0, 4
	lw $t1, -4992($fp)
	mul $t0, $t0, $t1
	sw $t0, -4996($fp)
	lw $t0, -4996($fp)
	lw $t1, -4988($fp)
	add $t0, $t0, $t1
	sw $t0, -5000($fp)
	lw $t0, -5000($fp)
	lw $t1, 0($t0)
	sw $t1, -5004($fp)
	lw $t0, -5004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -5008($fp)
	li $t0, 2
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
	lw $t0, -5024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -5028($fp)
	li $t0, 3
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
	lw $t0, -5044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -5048($fp)
	li $t0, 4
	sw $t0, -5052($fp)
	li $t0, 4
	lw $t1, -5052($fp)
	mul $t0, $t0, $t1
	sw $t0, -5056($fp)
	lw $t0, -5056($fp)
	lw $t1, -5048($fp)
	add $t0, $t0, $t1
	sw $t0, -5060($fp)
	lw $t0, -5060($fp)
	lw $t1, 0($t0)
	sw $t1, -5064($fp)
	lw $t0, -5064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -5068($fp)
	li $t0, 5
	sw $t0, -5072($fp)
	li $t0, 4
	lw $t1, -5072($fp)
	mul $t0, $t0, $t1
	sw $t0, -5076($fp)
	lw $t0, -5076($fp)
	lw $t1, -5068($fp)
	add $t0, $t0, $t1
	sw $t0, -5080($fp)
	lw $t0, -5080($fp)
	lw $t1, 0($t0)
	sw $t1, -5084($fp)
	lw $t0, -5084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -5088($fp)
	li $t0, 0
	sw $t0, -5092($fp)
	li $t0, 4
	lw $t1, -5092($fp)
	mul $t0, $t0, $t1
	sw $t0, -5096($fp)
	lw $t0, -5096($fp)
	lw $t1, -5088($fp)
	add $t0, $t0, $t1
	sw $t0, -5100($fp)
	lw $t0, -5100($fp)
	lw $t1, 0($t0)
	sw $t1, -5104($fp)
	lw $t0, -5104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -5108($fp)
	li $t0, 1
	sw $t0, -5112($fp)
	li $t0, 4
	lw $t1, -5112($fp)
	mul $t0, $t0, $t1
	sw $t0, -5116($fp)
	lw $t0, -5116($fp)
	lw $t1, -5108($fp)
	add $t0, $t0, $t1
	sw $t0, -5120($fp)
	lw $t0, -5120($fp)
	lw $t1, 0($t0)
	sw $t1, -5124($fp)
	lw $t0, -5124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -5128($fp)
	li $t0, 2
	sw $t0, -5132($fp)
	li $t0, 4
	lw $t1, -5132($fp)
	mul $t0, $t0, $t1
	sw $t0, -5136($fp)
	lw $t0, -5136($fp)
	lw $t1, -5128($fp)
	add $t0, $t0, $t1
	sw $t0, -5140($fp)
	lw $t0, -5140($fp)
	lw $t1, 0($t0)
	sw $t1, -5144($fp)
	lw $t0, -5144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -5148($fp)
	li $t0, 3
	sw $t0, -5152($fp)
	li $t0, 4
	lw $t1, -5152($fp)
	mul $t0, $t0, $t1
	sw $t0, -5156($fp)
	lw $t0, -5156($fp)
	lw $t1, -5148($fp)
	add $t0, $t0, $t1
	sw $t0, -5160($fp)
	lw $t0, -5160($fp)
	lw $t1, 0($t0)
	sw $t1, -5164($fp)
	lw $t0, -5164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -5168($fp)
	li $t0, 4
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
	addi $t0, $fp, -188
	sw $t0, -5188($fp)
	li $t0, 5
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
	lw $t0, -1636($fp)
	sw $t0, -5208($fp)
	lw $t0, -5208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1648($fp)
	sw $t0, -5212($fp)
	lw $t0, -5212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1660($fp)
	sw $t0, -5216($fp)
	lw $t0, -5216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1672($fp)
	sw $t0, -5220($fp)
	lw $t0, -5220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1684($fp)
	sw $t0, -5224($fp)
	lw $t0, -5224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1696($fp)
	sw $t0, -5228($fp)
	lw $t0, -5228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1708($fp)
	sw $t0, -5232($fp)
	lw $t0, -5232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1720($fp)
	sw $t0, -5236($fp)
	lw $t0, -5236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1732($fp)
	sw $t0, -5240($fp)
	lw $t0, -5240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1744($fp)
	sw $t0, -5244($fp)
	lw $t0, -5244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1756($fp)
	sw $t0, -5248($fp)
	lw $t0, -5248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5252($fp)
	lw $t0, -1696($fp)
	sw $t0, -5256($fp)
	li $t0, 4156
	sw $t0, -5260($fp)
	lw $t0, -5256($fp)
	lw $t1, -5260($fp)
	add $t0, $t0, $t1
	sw $t0, -5264($fp)
	lw $t0, -1264($fp)
	sw $t0, -5268($fp)
	lw $t0, -5264($fp)
	lw $t1, -5268($fp)
	sub $t0, $t0, $t1
	sw $t0, -5272($fp)
	lw $t1, -5272($fp)
	li $t2, 0
	bne $t1, $t2, label523
	j label522
label523:
	li $t0, 45430
	sw $t0, -5276($fp)
	li $t0, 0
	lw $t1, -5276($fp)
	sub $t0, $t0, $t1
	sw $t0, -5280($fp)
	lw $t1, -5280($fp)
	li $t2, 0
	bne $t1, $t2, label521
	j label522
label521:
	li $t0, 1
	sw $t0, -5252($fp)
label522:
	lw $t0, -5252($fp)
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	sw $t0, -5284($fp)
	lw $ra, -4($fp)
	lw $v0, -5284($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -5288($fp)
	li $t0, 0
	sw $t0, -5292($fp)
	lw $t0, -568($fp)
	sw $t0, -5296($fp)
	lw $t1, -5296($fp)
	li $t2, 0
	bne $t1, $t2, label530
	j label529
label530:
	lw $t0, -556($fp)
	sw $t0, -5300($fp)
	lw $t1, -5300($fp)
	li $t2, 0
	bne $t1, $t2, label527
	j label529
label529:
	li $t0, 37843
	sw $t0, -5304($fp)
	lw $t1, -5304($fp)
	li $t2, 0
	bne $t1, $t2, label527
	j label528
label527:
	li $t0, 1
	sw $t0, -5292($fp)
label528:
	li $t0, 0
	sw $t0, -5308($fp)
	lw $t0, -1252($fp)
	sw $t0, -5312($fp)
	lw $t1, -5312($fp)
	li $t2, 0
	bne $t1, $t2, label533
	j label532
label533:
	lw $t0, -1252($fp)
	sw $t0, -5316($fp)
	lw $t1, -5316($fp)
	li $t2, 0
	bne $t1, $t2, label531
	j label532
label531:
	li $t0, 1
	sw $t0, -5308($fp)
label532:
	lw $t0, -940($fp)
	sw $t0, -5320($fp)
	li $t0, 0
	lw $t1, -5320($fp)
	sub $t0, $t0, $t1
	sw $t0, -5324($fp)
	li $t0, 0
	lw $t1, -5324($fp)
	sub $t0, $t0, $t1
	sw $t0, -5328($fp)
	li $t0, 0
	sw $t0, -5332($fp)
	li $t0, 29219
	sw $t0, -5336($fp)
	li $t0, 27534
	sw $t0, -5340($fp)
	lw $t1, -5336($fp)
	lw $t2, -5340($fp)
	beq $t1, $t2, label534
	j label536
label536:
	lw $t0, -928($fp)
	sw $t0, -5344($fp)
	lw $t1, -5344($fp)
	li $t2, 0
	bne $t1, $t2, label534
	j label535
label534:
	li $t0, 1
	sw $t0, -5332($fp)
label535:
	addi $sp, $sp, -4
	lw $t0, -5292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5332($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5348($fp)
	addi $sp, $sp, 20
	lw $t1, -5348($fp)
	li $t2, 0
	bne $t1, $t2, label526
	j label525
label526:
	li $t0, 0
	sw $t0, -5352($fp)
	lw $t0, -568($fp)
	sw $t0, -5356($fp)
	li $t0, 38055
	sw $t0, -5360($fp)
	lw $t0, -5356($fp)
	lw $t1, -5360($fp)
	mul $t0, $t0, $t1
	sw $t0, -5364($fp)
	li $t0, 56275
	sw $t0, -5368($fp)
	lw $t1, -5364($fp)
	lw $t2, -5368($fp)
	blt $t1, $t2, label537
	j label538
label537:
	li $t0, 1
	sw $t0, -5352($fp)
label538:
	li $t0, 26614
	sw $t0, -5372($fp)
	lw $t1, -5352($fp)
	lw $t2, -5372($fp)
	blt $t1, $t2, label524
	j label525
label524:
	li $t0, 1
	sw $t0, -5288($fp)
label525:
	li $t0, 30141
	sw $t0, -5376($fp)
	addi $t0, $fp, -164
	sw $t0, -5380($fp)
	lw $t0, -1000($fp)
	sw $t0, -5384($fp)
	lw $t0, -5384($fp)
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -5388($fp)
	li $t0, 4
	lw $t1, -5388($fp)
	mul $t0, $t0, $t1
	sw $t0, -5392($fp)
	lw $t0, -5392($fp)
	lw $t1, -5380($fp)
	add $t0, $t0, $t1
	sw $t0, -5396($fp)
	lw $t0, -5396($fp)
	lw $t1, 0($t0)
	sw $t1, -5400($fp)
	lw $t0, -5376($fp)
	lw $t1, -5400($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5404($fp)
	lw $t1, -5404($fp)
	li $t2, 0
	bne $t1, $t2, label539
	j label540
label539:
	li $t0, 0
	sw $t0, -5408($fp)
	li $t0, 24392
	sw $t0, -5412($fp)
	lw $t1, -5412($fp)
	li $t2, 0
	bne $t1, $t2, label547
	j label546
label546:
	li $t0, 1
	sw $t0, -5408($fp)
label547:
	li $t0, 3917
	sw $t0, -5416($fp)
	lw $t0, -5408($fp)
	lw $t1, -5416($fp)
	mul $t0, $t0, $t1
	sw $t0, -5420($fp)
	addi $t0, $fp, -140
	sw $t0, -5424($fp)
	li $t0, 8
	sw $t0, -5428($fp)
	li $t0, 4
	lw $t1, -5428($fp)
	mul $t0, $t0, $t1
	sw $t0, -5432($fp)
	lw $t0, -5432($fp)
	lw $t1, -5424($fp)
	add $t0, $t0, $t1
	sw $t0, -5436($fp)
	lw $t0, -5436($fp)
	lw $t1, 0($t0)
	sw $t1, -5440($fp)
	lw $t0, -5420($fp)
	lw $t1, -5440($fp)
	mul $t0, $t0, $t1
	sw $t0, -5444($fp)
	li $t0, 39443
	sw $t0, -5448($fp)
	lw $t0, -5444($fp)
	lw $t1, -5448($fp)
	add $t0, $t0, $t1
	sw $t0, -5452($fp)
	lw $t1, -5452($fp)
	li $t2, 0
	bne $t1, $t2, label542
	j label545
label545:
	li $t0, 49182
	sw $t0, -5456($fp)
	lw $t1, -5456($fp)
	li $t2, 0
	bne $t1, $t2, label542
	j label543
label542:
	li $t0, 0
	sw $t0, -5460($fp)
	addi $t0, $fp, -164
	sw $t0, -5464($fp)
	li $t0, 0
	sw $t0, -5468($fp)
	lw $t0, -232($fp)
	sw $t0, -5472($fp)
	li $t0, 48143
	sw $t0, -5476($fp)
	lw $t0, -5472($fp)
	lw $t1, -5476($fp)
	add $t0, $t0, $t1
	sw $t0, -5480($fp)
	lw $t0, -1288($fp)
	sw $t0, -5484($fp)
	lw $t1, -5480($fp)
	lw $t2, -5484($fp)
	beq $t1, $t2, label550
	j label551
label550:
	li $t0, 1
	sw $t0, -5468($fp)
label551:
	li $t0, 4
	lw $t1, -5468($fp)
	mul $t0, $t0, $t1
	sw $t0, -5488($fp)
	lw $t0, -5488($fp)
	lw $t1, -5464($fp)
	add $t0, $t0, $t1
	sw $t0, -5492($fp)
	lw $t0, -5492($fp)
	lw $t1, 0($t0)
	sw $t1, -5496($fp)
	li $t0, 0
	sw $t0, -5500($fp)
	addi $t0, $fp, -188
	sw $t0, -5504($fp)
	li $t0, 0
	sw $t0, -5508($fp)
	li $t0, 4
	lw $t1, -5508($fp)
	mul $t0, $t0, $t1
	sw $t0, -5512($fp)
	lw $t0, -5512($fp)
	lw $t1, -5504($fp)
	add $t0, $t0, $t1
	sw $t0, -5516($fp)
	lw $t0, -5516($fp)
	lw $t1, 0($t0)
	sw $t1, -5520($fp)
	lw $t1, -5520($fp)
	li $t2, 0
	bne $t1, $t2, label553
	j label552
label552:
	li $t0, 1
	sw $t0, -5500($fp)
label553:
	jal f12
	sw $v0, -5524($fp)
	addi $sp, $sp, 4
	lw $t0, -5500($fp)
	lw $t1, -5524($fp)
	sub $t0, $t0, $t1
	sw $t0, -5528($fp)
	lw $t1, -5496($fp)
	lw $t2, -5528($fp)
	bne $t1, $t2, label548
	j label549
label548:
	li $t0, 1
	sw $t0, -5460($fp)
label549:
	lw $ra, -4($fp)
	lw $v0, -5460($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label544
label543:
	li $t0, 0
	sw $t0, -5532($fp)
	li $t0, 34535
	sw $t0, -5536($fp)
	li $t0, 0
	sw $t0, -5540($fp)
	lw $t0, -1252($fp)
	sw $t0, -5544($fp)
	li $t0, 56118
	sw $t0, -5548($fp)
	lw $t1, -5544($fp)
	lw $t2, -5548($fp)
	bne $t1, $t2, label559
	j label560
label559:
	li $t0, 1
	sw $t0, -5540($fp)
label560:
	li $t0, 0
	sw $t0, -5552($fp)
	li $t0, 9175
	sw $t0, -5556($fp)
	li $t0, 47770
	sw $t0, -5560($fp)
	lw $t1, -5556($fp)
	lw $t2, -5560($fp)
	bne $t1, $t2, label561
	j label563
label563:
	lw $t0, -1684($fp)
	sw $t0, -5564($fp)
	lw $t1, -5564($fp)
	li $t2, 0
	bne $t1, $t2, label561
	j label562
label561:
	li $t0, 1
	sw $t0, -5552($fp)
label562:
	addi $sp, $sp, -4
	lw $t0, -5536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5552($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -5568($fp)
	addi $sp, $sp, 16
	jal f13
	sw $v0, -5572($fp)
	addi $sp, $sp, 4
	lw $t0, -232($fp)
	sw $t0, -5576($fp)
	addi $sp, $sp, -4
	lw $t0, -5568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5576($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -5580($fp)
	addi $sp, $sp, 16
	lw $t0, -676($fp)
	sw $t0, -5584($fp)
	li $t0, 36728
	sw $t0, -5588($fp)
	lw $t0, -5584($fp)
	lw $t1, -5588($fp)
	add $t0, $t0, $t1
	sw $t0, -5592($fp)
	li $t0, 58959
	sw $t0, -5596($fp)
	lw $t0, -5592($fp)
	lw $t1, -5596($fp)
	sub $t0, $t0, $t1
	sw $t0, -5600($fp)
	li $t0, 50393
	sw $t0, -5604($fp)
	li $t0, 5417
	sw $t0, -5608($fp)
	lw $t0, -964($fp)
	sw $t0, -5612($fp)
	lw $t0, -5608($fp)
	lw $t1, -5612($fp)
	add $t0, $t0, $t1
	sw $t0, -5616($fp)
	addi $sp, $sp, -4
	lw $t0, -5600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5616($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5620($fp)
	addi $sp, $sp, 16
	lw $t1, -5580($fp)
	lw $t2, -5620($fp)
	ble $t1, $t2, label557
	j label558
label557:
	li $t0, 1
	sw $t0, -5532($fp)
label558:
	li $t0, 0
	sw $t0, -5624($fp)
	addi $t0, $fp, -104
	sw $t0, -5628($fp)
	lw $t0, -220($fp)
	sw $t0, -5632($fp)
	li $t0, 4
	lw $t1, -5632($fp)
	mul $t0, $t0, $t1
	sw $t0, -5636($fp)
	lw $t0, -5636($fp)
	lw $t1, -5628($fp)
	add $t0, $t0, $t1
	sw $t0, -5640($fp)
	lw $t0, -5640($fp)
	lw $t1, 0($t0)
	sw $t1, -5644($fp)
	li $t0, 0
	lw $t1, -5644($fp)
	sub $t0, $t0, $t1
	sw $t0, -5648($fp)
	jal f13
	sw $v0, -5652($fp)
	addi $sp, $sp, 4
	lw $t1, -5648($fp)
	lw $t2, -5652($fp)
	ble $t1, $t2, label564
	j label565
label564:
	li $t0, 1
	sw $t0, -5624($fp)
label565:
	lw $t1, -5532($fp)
	lw $t2, -5624($fp)
	beq $t1, $t2, label554
	j label555
label554:
	addi $t0, $fp, -164
	sw $t0, -5656($fp)
	li $t0, 0
	sw $t0, -5660($fp)
	li $t0, 0
	sw $t0, -5664($fp)
	li $t0, 0
	sw $t0, -5668($fp)
	lw $t0, -568($fp)
	sw $t0, -5672($fp)
	li $t0, 51824
	sw $t0, -5676($fp)
	lw $t1, -5672($fp)
	lw $t2, -5676($fp)
	bge $t1, $t2, label574
	j label575
label574:
	li $t0, 1
	sw $t0, -5668($fp)
label575:
	lw $t0, -580($fp)
	sw $t0, -5680($fp)
	lw $t1, -5668($fp)
	lw $t2, -5680($fp)
	bgt $t1, $t2, label572
	j label573
label572:
	li $t0, 1
	sw $t0, -5664($fp)
label573:
	li $t0, 0
	sw $t0, -5684($fp)
	li $t0, 2108
	sw $t0, -5688($fp)
	li $t0, 32517
	sw $t0, -5692($fp)
	lw $t0, -5688($fp)
	lw $t1, -5692($fp)
	add $t0, $t0, $t1
	sw $t0, -5696($fp)
	li $t0, 59644
	sw $t0, -5700($fp)
	lw $t1, -5696($fp)
	lw $t2, -5700($fp)
	beq $t1, $t2, label576
	j label577
label576:
	li $t0, 1
	sw $t0, -5684($fp)
label577:
	addi $sp, $sp, -4
	lw $t0, -5664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5684($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -5704($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -5704($fp)
	sub $t0, $t0, $t1
	sw $t0, -5708($fp)
	addi $sp, $sp, -4
	lw $t0, -5708($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5712($fp)
	addi $sp, $sp, 8
	lw $t1, -5712($fp)
	li $t2, 0
	bne $t1, $t2, label571
	j label570
label571:
	li $t0, 44051
	sw $t0, -5716($fp)
	lw $t1, -5716($fp)
	li $t2, 0
	bne $t1, $t2, label569
	j label570
label569:
	li $t0, 1
	sw $t0, -5660($fp)
label570:
	li $t0, 4
	lw $t1, -5660($fp)
	mul $t0, $t0, $t1
	sw $t0, -5720($fp)
	lw $t0, -5720($fp)
	lw $t1, -5656($fp)
	add $t0, $t0, $t1
	sw $t0, -5724($fp)
	lw $t0, -5724($fp)
	lw $t1, 0($t0)
	sw $t1, -5728($fp)
	li $t0, 0
	sw $t0, -5732($fp)
	lw $t0, -1240($fp)
	sw $t0, -5736($fp)
	lw $t1, -5736($fp)
	li $t2, 0
	bne $t1, $t2, label579
	j label578
label578:
	li $t0, 1
	sw $t0, -5732($fp)
label579:
	li $t0, 0
	sw $t0, -5740($fp)
	lw $t0, -568($fp)
	sw $t0, -5744($fp)
	lw $t1, -5744($fp)
	li $t2, 0
	bne $t1, $t2, label581
	j label580
label580:
	li $t0, 1
	sw $t0, -5740($fp)
label581:
	lw $t0, -5732($fp)
	lw $t1, -5740($fp)
	add $t0, $t0, $t1
	sw $t0, -5748($fp)
	lw $t1, -5728($fp)
	lw $t2, -5748($fp)
	bgt $t1, $t2, label566
	j label567
label566:
	li $t0, 0
	sw $t0, -5752($fp)
	li $t0, 63800
	sw $t0, -5756($fp)
	lw $t1, -5756($fp)
	li $t2, 0
	bne $t1, $t2, label584
	j label583
label584:
	li $t0, 31718
	sw $t0, -5760($fp)
	li $t0, 7734
	sw $t0, -5764($fp)
	lw $t0, -5760($fp)
	lw $t1, -5764($fp)
	mul $t0, $t0, $t1
	sw $t0, -5768($fp)
	lw $t0, -1000($fp)
	sw $t0, -5772($fp)
	lw $t0, -5768($fp)
	lw $t1, -5772($fp)
	mul $t0, $t0, $t1
	sw $t0, -5776($fp)
	li $t0, 25799
	sw $t0, -5780($fp)
	li $t0, 4025
	sw $t0, -5784($fp)
	lw $t0, -5780($fp)
	lw $t1, -5784($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5788($fp)
	lw $t0, -5776($fp)
	lw $t1, -5788($fp)
	add $t0, $t0, $t1
	sw $t0, -5792($fp)
	lw $t1, -5792($fp)
	li $t2, 0
	bne $t1, $t2, label582
	j label583
label582:
	li $t0, 1
	sw $t0, -5752($fp)
label583:
	lw $ra, -4($fp)
	lw $v0, -5752($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label568
label567:
	li $t0, 45790
	sw $t0, -5796($fp)
	addi $t0, $fp, -56
	sw $t0, -5800($fp)
	lw $t0, -1228($fp)
	sw $t0, -5804($fp)
	lw $t0, -1276($fp)
	sw $t0, -5808($fp)
	lw $t0, -5804($fp)
	lw $t1, -5808($fp)
	add $t0, $t0, $t1
	sw $t0, -5812($fp)
	li $t0, 4
	lw $t1, -5812($fp)
	mul $t0, $t0, $t1
	sw $t0, -5816($fp)
	lw $t0, -5816($fp)
	lw $t1, -5800($fp)
	add $t0, $t0, $t1
	sw $t0, -5820($fp)
	lw $t0, -5820($fp)
	lw $t1, 0($t0)
	sw $t1, -5824($fp)
	lw $t0, -5796($fp)
	lw $t1, -5824($fp)
	mul $t0, $t0, $t1
	sw $t0, -5828($fp)
	li $t0, 0
	lw $t1, -5828($fp)
	sub $t0, $t0, $t1
	sw $t0, -5832($fp)
	lw $t1, -5832($fp)
	li $t2, 0
	bne $t1, $t2, label585
	j label586
label585:
label588:
	lw $t0, -1288($fp)
	sw $t0, -5836($fp)
	jal f13
	sw $v0, -5840($fp)
	addi $sp, $sp, 4
	lw $t1, -5836($fp)
	lw $t2, -5840($fp)
	ble $t1, $t2, label589
	j label591
label591:
	li $t0, 16538
	sw $t0, -5844($fp)
	lw $t1, -5844($fp)
	li $t2, 0
	bne $t1, $t2, label589
	j label590
label589:
label592:
	lw $t0, -1300($fp)
	sw $t0, -5848($fp)
	lw $t1, -5848($fp)
	li $t2, 0
	bne $t1, $t2, label594
	j label593
label593:
	addi $t0, $fp, -164
	sw $t0, -5852($fp)
	lw $t0, 4($fp)
	sw $t0, -5856($fp)
	li $t0, 4
	lw $t1, -5856($fp)
	mul $t0, $t0, $t1
	sw $t0, -5860($fp)
	lw $t0, -5860($fp)
	lw $t1, -5852($fp)
	add $t0, $t0, $t1
	sw $t0, -5864($fp)
	lw $t0, -5864($fp)
	lw $t1, 0($t0)
	sw $t1, -5868($fp)
	li $t0, 0
	lw $t1, -5868($fp)
	sub $t0, $t0, $t1
	sw $t0, -5872($fp)
	li $t0, 0
	sw $t0, -5876($fp)
	li $t0, 0
	sw $t0, -5880($fp)
	li $t0, 0
	sw $t0, -5884($fp)
	li $t0, 40930
	sw $t0, -5888($fp)
	lw $t1, -5888($fp)
	li $t2, 0
	bne $t1, $t2, label600
	j label599
label599:
	li $t0, 1
	sw $t0, -5884($fp)
label600:
	lw $t0, -1312($fp)
	sw $t0, -5892($fp)
	lw $t1, -5884($fp)
	lw $t2, -5892($fp)
	blt $t1, $t2, label597
	j label598
label597:
	li $t0, 1
	sw $t0, -5880($fp)
label598:
	addi $sp, $sp, -4
	lw $t0, -5880($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5896($fp)
	addi $sp, $sp, 8
	li $t0, 34557
	sw $t0, -5900($fp)
	lw $t1, -5896($fp)
	lw $t2, -5900($fp)
	blt $t1, $t2, label595
	j label596
label595:
	li $t0, 1
	sw $t0, -5876($fp)
label596:
	li $t0, 30640
	sw $t0, -5904($fp)
	li $t0, 10395
	sw $t0, -5908($fp)
	lw $t0, -5904($fp)
	lw $t1, -5908($fp)
	mul $t0, $t0, $t1
	sw $t0, -5912($fp)
	addi $sp, $sp, -4
	lw $t0, -5872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5912($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -5916($fp)
	addi $sp, $sp, 16
	lw $ra, -4($fp)
	lw $v0, -5916($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label592
label594:
	j label588
label590:
	j label587
label586:
	li $t0, 59859
	sw $t0, -5920($fp)
	lw $t0, -1240($fp)
	sw $t0, -5924($fp)
	lw $t0, -5920($fp)
	lw $t1, -5924($fp)
	mul $t0, $t0, $t1
	sw $t0, -5928($fp)
	li $t0, 34172
	sw $t0, -5932($fp)
	li $t0, 8464
	sw $t0, -5936($fp)
	lw $t0, -5932($fp)
	lw $t1, -5936($fp)
	mul $t0, $t0, $t1
	sw $t0, -5940($fp)
	li $t0, 43505
	sw $t0, -5944($fp)
	lw $t0, -5940($fp)
	lw $t1, -5944($fp)
	mul $t0, $t0, $t1
	sw $t0, -5948($fp)
	li $t0, 0
	lw $t1, -5948($fp)
	sub $t0, $t0, $t1
	sw $t0, -5952($fp)
	lw $t0, -5928($fp)
	lw $t1, -5952($fp)
	mul $t0, $t0, $t1
	sw $t0, -5956($fp)
	addi $t0, $fp, -164
	sw $t0, -5960($fp)
	jal f13
	sw $v0, -5964($fp)
	addi $sp, $sp, 4
	li $t0, 4
	lw $t1, -5964($fp)
	mul $t0, $t0, $t1
	sw $t0, -5968($fp)
	lw $t0, -5968($fp)
	lw $t1, -5960($fp)
	add $t0, $t0, $t1
	sw $t0, -5972($fp)
	lw $t0, -5972($fp)
	lw $t1, 0($t0)
	sw $t1, -5976($fp)
label587:
label568:
	j label556
label555:
label601:
	lw $t0, -1252($fp)
	sw $t0, -5980($fp)
	lw $t1, -5980($fp)
	li $t2, 0
	bne $t1, $t2, label602
	j label604
label604:
	li $t0, 0
	sw $t0, -5984($fp)
	li $t0, 52963
	sw $t0, -5988($fp)
	lw $t1, -5988($fp)
	li $t2, 0
	bne $t1, $t2, label605
	j label606
label605:
	li $t0, 1
	sw $t0, -5984($fp)
label606:
	li $t0, 45365
	sw $t0, -5992($fp)
	lw $t0, -5992($fp)
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -5996($fp)
	li $t0, 39948
	sw $t0, -6000($fp)
	li $t0, 2569
	sw $t0, -6004($fp)
	lw $t0, -6000($fp)
	lw $t1, -6004($fp)
	mul $t0, $t0, $t1
	sw $t0, -6008($fp)
	li $t0, 1
	sw $t0, -6012($fp)
	lw $t0, -6008($fp)
	lw $t1, -6012($fp)
	mul $t0, $t0, $t1
	sw $t0, -6016($fp)
	li $t0, 0
	sw $t0, -6020($fp)
	li $t0, 0
	sw $t0, -6024($fp)
	li $t0, 57714
	sw $t0, -6028($fp)
	li $t0, 11987
	sw $t0, -6032($fp)
	lw $t1, -6028($fp)
	lw $t2, -6032($fp)
	beq $t1, $t2, label609
	j label610
label609:
	li $t0, 1
	sw $t0, -6024($fp)
label610:
	li $t0, 25954
	sw $t0, -6036($fp)
	lw $t1, -6024($fp)
	lw $t2, -6036($fp)
	beq $t1, $t2, label607
	j label608
label607:
	li $t0, 1
	sw $t0, -6020($fp)
label608:
	lw $t0, -1264($fp)
	sw $t0, -6040($fp)
	li $t0, 16779
	sw $t0, -6044($fp)
	lw $t0, -6040($fp)
	lw $t1, -6044($fp)
	add $t0, $t0, $t1
	sw $t0, -6048($fp)
	addi $sp, $sp, -4
	lw $t0, -5984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6048($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -6052($fp)
	addi $sp, $sp, 24
	lw $t1, -6052($fp)
	li $t2, 0
	bne $t1, $t2, label602
	j label603
label602:
	li $t0, 31682
	sw $t0, -6056($fp)
	lw $t0, -6056($fp)
	sw $t0, -6060($fp)
	lw $t0, -6060($fp)
	sw $t0, -6064($fp)
	lw $t0, -6060($fp)
	sw $t0, -6068($fp)
	lw $t0, -6068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6072($fp)
	lw $t0, -220($fp)
	sw $t0, -6076($fp)
	lw $t1, -6076($fp)
	li $t2, 0
	bne $t1, $t2, label614
	j label612
label614:
	lw $t0, -6060($fp)
	sw $t0, -6080($fp)
	lw $t1, -6080($fp)
	li $t2, 0
	bne $t1, $t2, label613
	j label612
label613:
	li $t0, 38789
	sw $t0, -6084($fp)
	lw $t1, -6084($fp)
	li $t2, 0
	bne $t1, $t2, label611
	j label612
label611:
	li $t0, 1
	sw $t0, -6072($fp)
label612:
	addi $sp, $sp, -4
	lw $t0, -6072($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6088($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -6088($fp)
	sub $t0, $t0, $t1
	sw $t0, -6092($fp)
	lw $t0, -6092($fp)
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	sw $t0, -6096($fp)
	lw $ra, -4($fp)
	lw $v0, -6096($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label601
label603:
label556:
label544:
	j label541
label540:
	li $t0, 0
	sw $t0, -6100($fp)
	addi $t0, $fp, -188
	sw $t0, -6104($fp)
	li $t0, 0
	sw $t0, -6108($fp)
	lw $t0, -1324($fp)
	sw $t0, -6112($fp)
	lw $t0, -1336($fp)
	sw $t0, -6116($fp)
	lw $t1, -6112($fp)
	lw $t2, -6116($fp)
	bne $t1, $t2, label618
	j label619
label618:
	li $t0, 1
	sw $t0, -6108($fp)
label619:
	li $t0, 4
	lw $t1, -6108($fp)
	mul $t0, $t0, $t1
	sw $t0, -6120($fp)
	lw $t0, -6120($fp)
	lw $t1, -6104($fp)
	add $t0, $t0, $t1
	sw $t0, -6124($fp)
	lw $t0, -6124($fp)
	lw $t1, 0($t0)
	sw $t1, -6128($fp)
	li $t0, 0
	lw $t1, -6128($fp)
	sub $t0, $t0, $t1
	sw $t0, -6132($fp)
	lw $t1, -6132($fp)
	li $t2, 0
	bne $t1, $t2, label617
	j label616
label617:
	addi $t0, $fp, -164
	sw $t0, -6136($fp)
	lw $t0, -1228($fp)
	sw $t0, -6140($fp)
	li $t0, 4
	lw $t1, -6140($fp)
	mul $t0, $t0, $t1
	sw $t0, -6144($fp)
	lw $t0, -6144($fp)
	lw $t1, -6136($fp)
	add $t0, $t0, $t1
	sw $t0, -6148($fp)
	lw $t0, -6148($fp)
	lw $t1, 0($t0)
	sw $t1, -6152($fp)
	addi $t0, $fp, -164
	sw $t0, -6156($fp)
	li $t0, 1
	sw $t0, -6160($fp)
	li $t0, 4
	lw $t1, -6160($fp)
	mul $t0, $t0, $t1
	sw $t0, -6164($fp)
	lw $t0, -6164($fp)
	lw $t1, -6156($fp)
	add $t0, $t0, $t1
	sw $t0, -6168($fp)
	lw $t0, -6168($fp)
	lw $t1, 0($t0)
	sw $t1, -6172($fp)
	lw $t0, -6152($fp)
	lw $t1, -6172($fp)
	add $t0, $t0, $t1
	sw $t0, -6176($fp)
	lw $t1, -6176($fp)
	li $t2, 0
	bne $t1, $t2, label615
	j label616
label615:
	li $t0, 1
	sw $t0, -6100($fp)
label616:
	lw $ra, -4($fp)
	lw $v0, -6100($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label541:
	lw $t0, -196($fp)
	sw $t0, -6180($fp)
	lw $t0, -6180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -208($fp)
	sw $t0, -6184($fp)
	lw $t0, -6184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -220($fp)
	sw $t0, -6188($fp)
	lw $t0, -6188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -232($fp)
	sw $t0, -6192($fp)
	lw $t0, -6192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -6196($fp)
	li $t0, 0
	sw $t0, -6200($fp)
	li $t0, 4
	lw $t1, -6200($fp)
	mul $t0, $t0, $t1
	sw $t0, -6204($fp)
	lw $t0, -6204($fp)
	lw $t1, -6196($fp)
	add $t0, $t0, $t1
	sw $t0, -6208($fp)
	lw $t0, -6208($fp)
	lw $t1, 0($t0)
	sw $t1, -6212($fp)
	lw $t0, -6212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -6216($fp)
	li $t0, 1
	sw $t0, -6220($fp)
	li $t0, 4
	lw $t1, -6220($fp)
	mul $t0, $t0, $t1
	sw $t0, -6224($fp)
	lw $t0, -6224($fp)
	lw $t1, -6216($fp)
	add $t0, $t0, $t1
	sw $t0, -6228($fp)
	lw $t0, -6228($fp)
	lw $t1, 0($t0)
	sw $t1, -6232($fp)
	lw $t0, -6232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -6236($fp)
	li $t0, 2
	sw $t0, -6240($fp)
	li $t0, 4
	lw $t1, -6240($fp)
	mul $t0, $t0, $t1
	sw $t0, -6244($fp)
	lw $t0, -6244($fp)
	lw $t1, -6236($fp)
	add $t0, $t0, $t1
	sw $t0, -6248($fp)
	lw $t0, -6248($fp)
	lw $t1, 0($t0)
	sw $t1, -6252($fp)
	lw $t0, -6252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -6256($fp)
	li $t0, 3
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
	lw $t0, -6272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -6276($fp)
	li $t0, 4
	sw $t0, -6280($fp)
	li $t0, 4
	lw $t1, -6280($fp)
	mul $t0, $t0, $t1
	sw $t0, -6284($fp)
	lw $t0, -6284($fp)
	lw $t1, -6276($fp)
	add $t0, $t0, $t1
	sw $t0, -6288($fp)
	lw $t0, -6288($fp)
	lw $t1, 0($t0)
	sw $t1, -6292($fp)
	lw $t0, -6292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -6296($fp)
	li $t0, 5
	sw $t0, -6300($fp)
	li $t0, 4
	lw $t1, -6300($fp)
	mul $t0, $t0, $t1
	sw $t0, -6304($fp)
	lw $t0, -6304($fp)
	lw $t1, -6296($fp)
	add $t0, $t0, $t1
	sw $t0, -6308($fp)
	lw $t0, -6308($fp)
	lw $t1, 0($t0)
	sw $t1, -6312($fp)
	lw $t0, -6312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -6316($fp)
	li $t0, 6
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
	lw $t0, -6332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -6336($fp)
	li $t0, 7
	sw $t0, -6340($fp)
	li $t0, 4
	lw $t1, -6340($fp)
	mul $t0, $t0, $t1
	sw $t0, -6344($fp)
	lw $t0, -6344($fp)
	lw $t1, -6336($fp)
	add $t0, $t0, $t1
	sw $t0, -6348($fp)
	lw $t0, -6348($fp)
	lw $t1, 0($t0)
	sw $t1, -6352($fp)
	lw $t0, -6352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -6356($fp)
	li $t0, 8
	sw $t0, -6360($fp)
	li $t0, 4
	lw $t1, -6360($fp)
	mul $t0, $t0, $t1
	sw $t0, -6364($fp)
	lw $t0, -6364($fp)
	lw $t1, -6356($fp)
	add $t0, $t0, $t1
	sw $t0, -6368($fp)
	lw $t0, -6368($fp)
	lw $t1, 0($t0)
	sw $t1, -6372($fp)
	lw $t0, -6372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -6376($fp)
	li $t0, 0
	sw $t0, -6380($fp)
	li $t0, 4
	lw $t1, -6380($fp)
	mul $t0, $t0, $t1
	sw $t0, -6384($fp)
	lw $t0, -6384($fp)
	lw $t1, -6376($fp)
	add $t0, $t0, $t1
	sw $t0, -6388($fp)
	lw $t0, -6388($fp)
	lw $t1, 0($t0)
	sw $t1, -6392($fp)
	lw $t0, -6392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -6396($fp)
	li $t0, 1
	sw $t0, -6400($fp)
	li $t0, 4
	lw $t1, -6400($fp)
	mul $t0, $t0, $t1
	sw $t0, -6404($fp)
	lw $t0, -6404($fp)
	lw $t1, -6396($fp)
	add $t0, $t0, $t1
	sw $t0, -6408($fp)
	lw $t0, -6408($fp)
	lw $t1, 0($t0)
	sw $t1, -6412($fp)
	lw $t0, -6412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -6416($fp)
	li $t0, 2
	sw $t0, -6420($fp)
	li $t0, 4
	lw $t1, -6420($fp)
	mul $t0, $t0, $t1
	sw $t0, -6424($fp)
	lw $t0, -6424($fp)
	lw $t1, -6416($fp)
	add $t0, $t0, $t1
	sw $t0, -6428($fp)
	lw $t0, -6428($fp)
	lw $t1, 0($t0)
	sw $t1, -6432($fp)
	lw $t0, -6432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -6436($fp)
	li $t0, 3
	sw $t0, -6440($fp)
	li $t0, 4
	lw $t1, -6440($fp)
	mul $t0, $t0, $t1
	sw $t0, -6444($fp)
	lw $t0, -6444($fp)
	lw $t1, -6436($fp)
	add $t0, $t0, $t1
	sw $t0, -6448($fp)
	lw $t0, -6448($fp)
	lw $t1, 0($t0)
	sw $t1, -6452($fp)
	lw $t0, -6452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -556($fp)
	sw $t0, -6456($fp)
	lw $t0, -6456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -568($fp)
	sw $t0, -6460($fp)
	lw $t0, -6460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -580($fp)
	sw $t0, -6464($fp)
	lw $t0, -6464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -592($fp)
	sw $t0, -6468($fp)
	lw $t0, -6468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -6472($fp)
	li $t0, 0
	sw $t0, -6476($fp)
	li $t0, 4
	lw $t1, -6476($fp)
	mul $t0, $t0, $t1
	sw $t0, -6480($fp)
	lw $t0, -6480($fp)
	lw $t1, -6472($fp)
	add $t0, $t0, $t1
	sw $t0, -6484($fp)
	lw $t0, -6484($fp)
	lw $t1, 0($t0)
	sw $t1, -6488($fp)
	lw $t0, -6488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -6492($fp)
	li $t0, 1
	sw $t0, -6496($fp)
	li $t0, 4
	lw $t1, -6496($fp)
	mul $t0, $t0, $t1
	sw $t0, -6500($fp)
	lw $t0, -6500($fp)
	lw $t1, -6492($fp)
	add $t0, $t0, $t1
	sw $t0, -6504($fp)
	lw $t0, -6504($fp)
	lw $t1, 0($t0)
	sw $t1, -6508($fp)
	lw $t0, -6508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -6512($fp)
	li $t0, 2
	sw $t0, -6516($fp)
	li $t0, 4
	lw $t1, -6516($fp)
	mul $t0, $t0, $t1
	sw $t0, -6520($fp)
	lw $t0, -6520($fp)
	lw $t1, -6512($fp)
	add $t0, $t0, $t1
	sw $t0, -6524($fp)
	lw $t0, -6524($fp)
	lw $t1, 0($t0)
	sw $t1, -6528($fp)
	lw $t0, -6528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -676($fp)
	sw $t0, -6532($fp)
	lw $t0, -6532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -688($fp)
	sw $t0, -6536($fp)
	lw $t0, -6536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -700($fp)
	sw $t0, -6540($fp)
	lw $t0, -6540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -6544($fp)
	li $t0, 0
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
	addi $t0, $fp, -100
	sw $t0, -6564($fp)
	li $t0, 1
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
	addi $t0, $fp, -100
	sw $t0, -6584($fp)
	li $t0, 2
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
	addi $t0, $fp, -100
	sw $t0, -6604($fp)
	li $t0, 3
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
	addi $t0, $fp, -100
	sw $t0, -6624($fp)
	li $t0, 4
	sw $t0, -6628($fp)
	li $t0, 4
	lw $t1, -6628($fp)
	mul $t0, $t0, $t1
	sw $t0, -6632($fp)
	lw $t0, -6632($fp)
	lw $t1, -6624($fp)
	add $t0, $t0, $t1
	sw $t0, -6636($fp)
	lw $t0, -6636($fp)
	lw $t1, 0($t0)
	sw $t1, -6640($fp)
	lw $t0, -6640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -6644($fp)
	li $t0, 5
	sw $t0, -6648($fp)
	li $t0, 4
	lw $t1, -6648($fp)
	mul $t0, $t0, $t1
	sw $t0, -6652($fp)
	lw $t0, -6652($fp)
	lw $t1, -6644($fp)
	add $t0, $t0, $t1
	sw $t0, -6656($fp)
	lw $t0, -6656($fp)
	lw $t1, 0($t0)
	sw $t1, -6660($fp)
	lw $t0, -6660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -6664($fp)
	li $t0, 6
	sw $t0, -6668($fp)
	li $t0, 4
	lw $t1, -6668($fp)
	mul $t0, $t0, $t1
	sw $t0, -6672($fp)
	lw $t0, -6672($fp)
	lw $t1, -6664($fp)
	add $t0, $t0, $t1
	sw $t0, -6676($fp)
	lw $t0, -6676($fp)
	lw $t1, 0($t0)
	sw $t1, -6680($fp)
	lw $t0, -6680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -6684($fp)
	li $t0, 7
	sw $t0, -6688($fp)
	li $t0, 4
	lw $t1, -6688($fp)
	mul $t0, $t0, $t1
	sw $t0, -6692($fp)
	lw $t0, -6692($fp)
	lw $t1, -6684($fp)
	add $t0, $t0, $t1
	sw $t0, -6696($fp)
	lw $t0, -6696($fp)
	lw $t1, 0($t0)
	sw $t1, -6700($fp)
	lw $t0, -6700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -904($fp)
	sw $t0, -6704($fp)
	lw $t0, -6704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -916($fp)
	sw $t0, -6708($fp)
	lw $t0, -6708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -928($fp)
	sw $t0, -6712($fp)
	lw $t0, -6712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -940($fp)
	sw $t0, -6716($fp)
	lw $t0, -6716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -952($fp)
	sw $t0, -6720($fp)
	lw $t0, -6720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -964($fp)
	sw $t0, -6724($fp)
	lw $t0, -6724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -6728($fp)
	li $t0, 0
	sw $t0, -6732($fp)
	li $t0, 4
	lw $t1, -6732($fp)
	mul $t0, $t0, $t1
	sw $t0, -6736($fp)
	lw $t0, -6736($fp)
	lw $t1, -6728($fp)
	add $t0, $t0, $t1
	sw $t0, -6740($fp)
	lw $t0, -6740($fp)
	lw $t1, 0($t0)
	sw $t1, -6744($fp)
	lw $t0, -6744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1000($fp)
	sw $t0, -6748($fp)
	lw $t0, -6748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -6752($fp)
	li $t0, 0
	sw $t0, -6756($fp)
	li $t0, 4
	lw $t1, -6756($fp)
	mul $t0, $t0, $t1
	sw $t0, -6760($fp)
	lw $t0, -6760($fp)
	lw $t1, -6752($fp)
	add $t0, $t0, $t1
	sw $t0, -6764($fp)
	lw $t0, -6764($fp)
	lw $t1, 0($t0)
	sw $t1, -6768($fp)
	lw $t0, -6768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -6772($fp)
	li $t0, 1
	sw $t0, -6776($fp)
	li $t0, 4
	lw $t1, -6776($fp)
	mul $t0, $t0, $t1
	sw $t0, -6780($fp)
	lw $t0, -6780($fp)
	lw $t1, -6772($fp)
	add $t0, $t0, $t1
	sw $t0, -6784($fp)
	lw $t0, -6784($fp)
	lw $t1, 0($t0)
	sw $t1, -6788($fp)
	lw $t0, -6788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -6792($fp)
	li $t0, 2
	sw $t0, -6796($fp)
	li $t0, 4
	lw $t1, -6796($fp)
	mul $t0, $t0, $t1
	sw $t0, -6800($fp)
	lw $t0, -6800($fp)
	lw $t1, -6792($fp)
	add $t0, $t0, $t1
	sw $t0, -6804($fp)
	lw $t0, -6804($fp)
	lw $t1, 0($t0)
	sw $t1, -6808($fp)
	lw $t0, -6808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -6812($fp)
	li $t0, 3
	sw $t0, -6816($fp)
	li $t0, 4
	lw $t1, -6816($fp)
	mul $t0, $t0, $t1
	sw $t0, -6820($fp)
	lw $t0, -6820($fp)
	lw $t1, -6812($fp)
	add $t0, $t0, $t1
	sw $t0, -6824($fp)
	lw $t0, -6824($fp)
	lw $t1, 0($t0)
	sw $t1, -6828($fp)
	lw $t0, -6828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -6832($fp)
	li $t0, 4
	sw $t0, -6836($fp)
	li $t0, 4
	lw $t1, -6836($fp)
	mul $t0, $t0, $t1
	sw $t0, -6840($fp)
	lw $t0, -6840($fp)
	lw $t1, -6832($fp)
	add $t0, $t0, $t1
	sw $t0, -6844($fp)
	lw $t0, -6844($fp)
	lw $t1, 0($t0)
	sw $t1, -6848($fp)
	lw $t0, -6848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -6852($fp)
	li $t0, 5
	sw $t0, -6856($fp)
	li $t0, 4
	lw $t1, -6856($fp)
	mul $t0, $t0, $t1
	sw $t0, -6860($fp)
	lw $t0, -6860($fp)
	lw $t1, -6852($fp)
	add $t0, $t0, $t1
	sw $t0, -6864($fp)
	lw $t0, -6864($fp)
	lw $t1, 0($t0)
	sw $t1, -6868($fp)
	lw $t0, -6868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -6872($fp)
	li $t0, 6
	sw $t0, -6876($fp)
	li $t0, 4
	lw $t1, -6876($fp)
	mul $t0, $t0, $t1
	sw $t0, -6880($fp)
	lw $t0, -6880($fp)
	lw $t1, -6872($fp)
	add $t0, $t0, $t1
	sw $t0, -6884($fp)
	lw $t0, -6884($fp)
	lw $t1, 0($t0)
	sw $t1, -6888($fp)
	lw $t0, -6888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -6892($fp)
	li $t0, 7
	sw $t0, -6896($fp)
	li $t0, 4
	lw $t1, -6896($fp)
	mul $t0, $t0, $t1
	sw $t0, -6900($fp)
	lw $t0, -6900($fp)
	lw $t1, -6892($fp)
	add $t0, $t0, $t1
	sw $t0, -6904($fp)
	lw $t0, -6904($fp)
	lw $t1, 0($t0)
	sw $t1, -6908($fp)
	lw $t0, -6908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -6912($fp)
	li $t0, 8
	sw $t0, -6916($fp)
	li $t0, 4
	lw $t1, -6916($fp)
	mul $t0, $t0, $t1
	sw $t0, -6920($fp)
	lw $t0, -6920($fp)
	lw $t1, -6912($fp)
	add $t0, $t0, $t1
	sw $t0, -6924($fp)
	lw $t0, -6924($fp)
	lw $t1, 0($t0)
	sw $t1, -6928($fp)
	lw $t0, -6928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1228($fp)
	sw $t0, -6932($fp)
	lw $t0, -6932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1240($fp)
	sw $t0, -6936($fp)
	lw $t0, -6936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1252($fp)
	sw $t0, -6940($fp)
	lw $t0, -6940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1264($fp)
	sw $t0, -6944($fp)
	lw $t0, -6944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1276($fp)
	sw $t0, -6948($fp)
	lw $t0, -6948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1288($fp)
	sw $t0, -6952($fp)
	lw $t0, -6952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1300($fp)
	sw $t0, -6956($fp)
	lw $t0, -6956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1312($fp)
	sw $t0, -6960($fp)
	lw $t0, -6960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1324($fp)
	sw $t0, -6964($fp)
	lw $t0, -6964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1336($fp)
	sw $t0, -6968($fp)
	lw $t0, -6968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -6972($fp)
	li $t0, 0
	sw $t0, -6976($fp)
	li $t0, 4
	lw $t1, -6976($fp)
	mul $t0, $t0, $t1
	sw $t0, -6980($fp)
	lw $t0, -6980($fp)
	lw $t1, -6972($fp)
	add $t0, $t0, $t1
	sw $t0, -6984($fp)
	lw $t0, -6984($fp)
	lw $t1, 0($t0)
	sw $t1, -6988($fp)
	lw $t0, -6988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -6992($fp)
	li $t0, 1
	sw $t0, -6996($fp)
	li $t0, 4
	lw $t1, -6996($fp)
	mul $t0, $t0, $t1
	sw $t0, -7000($fp)
	lw $t0, -7000($fp)
	lw $t1, -6992($fp)
	add $t0, $t0, $t1
	sw $t0, -7004($fp)
	lw $t0, -7004($fp)
	lw $t1, 0($t0)
	sw $t1, -7008($fp)
	lw $t0, -7008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -7012($fp)
	li $t0, 2
	sw $t0, -7016($fp)
	li $t0, 4
	lw $t1, -7016($fp)
	mul $t0, $t0, $t1
	sw $t0, -7020($fp)
	lw $t0, -7020($fp)
	lw $t1, -7012($fp)
	add $t0, $t0, $t1
	sw $t0, -7024($fp)
	lw $t0, -7024($fp)
	lw $t1, 0($t0)
	sw $t1, -7028($fp)
	lw $t0, -7028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -7032($fp)
	li $t0, 3
	sw $t0, -7036($fp)
	li $t0, 4
	lw $t1, -7036($fp)
	mul $t0, $t0, $t1
	sw $t0, -7040($fp)
	lw $t0, -7040($fp)
	lw $t1, -7032($fp)
	add $t0, $t0, $t1
	sw $t0, -7044($fp)
	lw $t0, -7044($fp)
	lw $t1, 0($t0)
	sw $t1, -7048($fp)
	lw $t0, -7048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -7052($fp)
	li $t0, 4
	sw $t0, -7056($fp)
	li $t0, 4
	lw $t1, -7056($fp)
	mul $t0, $t0, $t1
	sw $t0, -7060($fp)
	lw $t0, -7060($fp)
	lw $t1, -7052($fp)
	add $t0, $t0, $t1
	sw $t0, -7064($fp)
	lw $t0, -7064($fp)
	lw $t1, 0($t0)
	sw $t1, -7068($fp)
	lw $t0, -7068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -7072($fp)
	li $t0, 5
	sw $t0, -7076($fp)
	li $t0, 4
	lw $t1, -7076($fp)
	mul $t0, $t0, $t1
	sw $t0, -7080($fp)
	lw $t0, -7080($fp)
	lw $t1, -7072($fp)
	add $t0, $t0, $t1
	sw $t0, -7084($fp)
	lw $t0, -7084($fp)
	lw $t1, 0($t0)
	sw $t1, -7088($fp)
	lw $t0, -7088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -7092($fp)
	li $t0, 0
	sw $t0, -7096($fp)
	li $t0, 4
	lw $t1, -7096($fp)
	mul $t0, $t0, $t1
	sw $t0, -7100($fp)
	lw $t0, -7100($fp)
	lw $t1, -7092($fp)
	add $t0, $t0, $t1
	sw $t0, -7104($fp)
	lw $t0, -7104($fp)
	lw $t1, 0($t0)
	sw $t1, -7108($fp)
	lw $t0, -7108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -7112($fp)
	li $t0, 1
	sw $t0, -7116($fp)
	li $t0, 4
	lw $t1, -7116($fp)
	mul $t0, $t0, $t1
	sw $t0, -7120($fp)
	lw $t0, -7120($fp)
	lw $t1, -7112($fp)
	add $t0, $t0, $t1
	sw $t0, -7124($fp)
	lw $t0, -7124($fp)
	lw $t1, 0($t0)
	sw $t1, -7128($fp)
	lw $t0, -7128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -7132($fp)
	li $t0, 2
	sw $t0, -7136($fp)
	li $t0, 4
	lw $t1, -7136($fp)
	mul $t0, $t0, $t1
	sw $t0, -7140($fp)
	lw $t0, -7140($fp)
	lw $t1, -7132($fp)
	add $t0, $t0, $t1
	sw $t0, -7144($fp)
	lw $t0, -7144($fp)
	lw $t1, 0($t0)
	sw $t1, -7148($fp)
	lw $t0, -7148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -7152($fp)
	li $t0, 3
	sw $t0, -7156($fp)
	li $t0, 4
	lw $t1, -7156($fp)
	mul $t0, $t0, $t1
	sw $t0, -7160($fp)
	lw $t0, -7160($fp)
	lw $t1, -7152($fp)
	add $t0, $t0, $t1
	sw $t0, -7164($fp)
	lw $t0, -7164($fp)
	lw $t1, 0($t0)
	sw $t1, -7168($fp)
	lw $t0, -7168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -7172($fp)
	li $t0, 4
	sw $t0, -7176($fp)
	li $t0, 4
	lw $t1, -7176($fp)
	mul $t0, $t0, $t1
	sw $t0, -7180($fp)
	lw $t0, -7180($fp)
	lw $t1, -7172($fp)
	add $t0, $t0, $t1
	sw $t0, -7184($fp)
	lw $t0, -7184($fp)
	lw $t1, 0($t0)
	sw $t1, -7188($fp)
	lw $t0, -7188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -7192($fp)
	li $t0, 5
	sw $t0, -7196($fp)
	li $t0, 4
	lw $t1, -7196($fp)
	mul $t0, $t0, $t1
	sw $t0, -7200($fp)
	lw $t0, -7200($fp)
	lw $t1, -7192($fp)
	add $t0, $t0, $t1
	sw $t0, -7204($fp)
	lw $t0, -7204($fp)
	lw $t1, 0($t0)
	sw $t1, -7208($fp)
	lw $t0, -7208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1636($fp)
	sw $t0, -7212($fp)
	lw $t0, -7212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1648($fp)
	sw $t0, -7216($fp)
	lw $t0, -7216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1660($fp)
	sw $t0, -7220($fp)
	lw $t0, -7220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1672($fp)
	sw $t0, -7224($fp)
	lw $t0, -7224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1684($fp)
	sw $t0, -7228($fp)
	lw $t0, -7228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1696($fp)
	sw $t0, -7232($fp)
	lw $t0, -7232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1708($fp)
	sw $t0, -7236($fp)
	lw $t0, -7236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1720($fp)
	sw $t0, -7240($fp)
	lw $t0, -7240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1732($fp)
	sw $t0, -7244($fp)
	lw $t0, -7244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1744($fp)
	sw $t0, -7248($fp)
	lw $t0, -7248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1756($fp)
	sw $t0, -7252($fp)
	lw $t0, -7252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -7256($fp)
	li $t0, 0
	sw $t0, -7260($fp)
	lw $t0, -580($fp)
	sw $t0, -7264($fp)
	li $t0, 0
	lw $t1, -7264($fp)
	sub $t0, $t0, $t1
	sw $t0, -7268($fp)
	li $t0, 0
	lw $t1, -7268($fp)
	sub $t0, $t0, $t1
	sw $t0, -7272($fp)
	li $t0, 0
	sw $t0, -7276($fp)
	lw $t0, -580($fp)
	sw $t0, -7280($fp)
	lw $t1, -7280($fp)
	li $t2, 0
	bne $t1, $t2, label625
	j label624
label624:
	li $t0, 1
	sw $t0, -7276($fp)
label625:
	lw $t1, -7272($fp)
	lw $t2, -7276($fp)
	bgt $t1, $t2, label622
	j label623
label622:
	li $t0, 1
	sw $t0, -7260($fp)
label623:
	li $t0, 0
	sw $t0, -7284($fp)
	lw $t0, -1228($fp)
	sw $t0, -7288($fp)
	lw $t0, -1324($fp)
	sw $t0, -7292($fp)
	lw $t1, -7288($fp)
	lw $t2, -7292($fp)
	ble $t1, $t2, label626
	j label627
label626:
	li $t0, 1
	sw $t0, -7284($fp)
label627:
	li $t0, 32897
	sw $t0, -7296($fp)
	lw $t0, -580($fp)
	sw $t0, -7300($fp)
	lw $t0, -7296($fp)
	lw $t1, -7300($fp)
	mul $t0, $t0, $t1
	sw $t0, -7304($fp)
	li $t0, 0
	lw $t1, -7304($fp)
	sub $t0, $t0, $t1
	sw $t0, -7308($fp)
	lw $t0, -592($fp)
	sw $t0, -7312($fp)
	li $t0, 0
	lw $t1, -7312($fp)
	sub $t0, $t0, $t1
	sw $t0, -7316($fp)
	lw $t0, -1228($fp)
	sw $t0, -7320($fp)
	lw $t0, -7316($fp)
	lw $t1, -7320($fp)
	sub $t0, $t0, $t1
	sw $t0, -7324($fp)
	addi $sp, $sp, -4
	lw $t0, -7284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7324($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -7328($fp)
	addi $sp, $sp, 16
	jal f13
	sw $v0, -7332($fp)
	addi $sp, $sp, 4
	lw $t0, -7328($fp)
	lw $t1, -7332($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7336($fp)
	lw $t1, -7260($fp)
	lw $t2, -7336($fp)
	bgt $t1, $t2, label620
	j label621
label620:
	li $t0, 1
	sw $t0, -7256($fp)
label621:
	lw $ra, -4($fp)
	lw $v0, -7256($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f15:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -92
	li $t0, 41359
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 42715
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 50449
	sw $t0, -32($fp)
	li $t0, 56960
	sw $t0, -36($fp)
	lw $t0, -32($fp)
	lw $t1, -36($fp)
	sub $t0, $t0, $t1
	sw $t0, -40($fp)
	lw $t0, -24($fp)
	sw $t0, -44($fp)
	lw $t0, -40($fp)
	lw $t1, -44($fp)
	sub $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -12($fp)
	sw $t0, -52($fp)
	li $t0, 7542
	sw $t0, -56($fp)
	lw $t0, -52($fp)
	lw $t1, -56($fp)
	add $t0, $t0, $t1
	sw $t0, -60($fp)
	lw $t0, -12($fp)
	sw $t0, -64($fp)
	lw $t0, -12($fp)
	sw $t0, -68($fp)
	lw $t0, -64($fp)
	lw $t1, -68($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -72($fp)
	li $t0, 31161
	sw $t0, -76($fp)
	lw $t0, -72($fp)
	lw $t1, -76($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -80($fp)
	addi $sp, $sp, -4
	lw $t0, -48($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -60($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -80($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -84($fp)
	addi $sp, $sp, 16
	lw $t0, -12($fp)
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 11567
	sw $t0, -96($fp)
	lw $ra, -4($fp)
	lw $v0, -96($fp)
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
