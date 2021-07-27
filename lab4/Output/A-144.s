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
	addi $sp, $sp, -4380
	li $t0, 48733
	sw $t0, -96($fp)
	addi $t0, $fp, -20
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
	li $t0, 8474
	sw $t0, -120($fp)
	addi $t0, $fp, -20
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
	li $t0, 31554
	sw $t0, -144($fp)
	addi $t0, $fp, -20
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
	li $t0, 7563
	sw $t0, -168($fp)
	addi $t0, $fp, -20
	sw $t0, -172($fp)
	li $t0, 3
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
	li $t0, 58525
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	li $t0, 15594
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	li $t0, 3836
	sw $t0, -216($fp)
	addi $t0, $fp, -32
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
	li $t0, 9064
	sw $t0, -240($fp)
	addi $t0, $fp, -32
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
	li $t0, 30463
	sw $t0, -264($fp)
	addi $t0, $fp, -32
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
	li $t0, 11847
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	li $t0, 48861
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	li $t0, 11176
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	li $t0, 17383
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	li $t0, 12049
	sw $t0, -336($fp)
	addi $t0, $fp, -56
	sw $t0, -340($fp)
	li $t0, 0
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
	li $t0, 56871
	sw $t0, -360($fp)
	addi $t0, $fp, -56
	sw $t0, -364($fp)
	li $t0, 1
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
	li $t0, 58446
	sw $t0, -384($fp)
	addi $t0, $fp, -56
	sw $t0, -388($fp)
	li $t0, 2
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
	li $t0, 48561
	sw $t0, -408($fp)
	addi $t0, $fp, -56
	sw $t0, -412($fp)
	li $t0, 3
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
	li $t0, 41148
	sw $t0, -432($fp)
	addi $t0, $fp, -56
	sw $t0, -436($fp)
	li $t0, 4
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
	li $t0, 62951
	sw $t0, -456($fp)
	addi $t0, $fp, -56
	sw $t0, -460($fp)
	li $t0, 5
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
	li $t0, 8831
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	li $t0, 34756
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	li $t0, 49633
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	li $t0, 40572
	sw $t0, -516($fp)
	addi $t0, $fp, -68
	sw $t0, -520($fp)
	li $t0, 0
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
	li $t0, 43085
	sw $t0, -540($fp)
	addi $t0, $fp, -68
	sw $t0, -544($fp)
	li $t0, 1
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
	li $t0, 49434
	sw $t0, -564($fp)
	addi $t0, $fp, -68
	sw $t0, -568($fp)
	li $t0, 2
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
	li $t0, 14113
	sw $t0, -588($fp)
	addi $t0, $fp, -92
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
	li $t0, 18395
	sw $t0, -612($fp)
	addi $t0, $fp, -92
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
	li $t0, 18906
	sw $t0, -636($fp)
	addi $t0, $fp, -92
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
	li $t0, 14474
	sw $t0, -660($fp)
	addi $t0, $fp, -92
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
	li $t0, 12671
	sw $t0, -684($fp)
	addi $t0, $fp, -92
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
	li $t0, 38640
	sw $t0, -708($fp)
	addi $t0, $fp, -92
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
	li $t0, 63208
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -740($fp)
	li $t0, 21146
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -752($fp)
	li $t0, 0
	sw $t0, -756($fp)
	addi $t0, $fp, -20
	sw $t0, -760($fp)
	li $t0, 3
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
	li $t0, 0
	lw $t1, -776($fp)
	sub $t0, $t0, $t1
	sw $t0, -780($fp)
	lw $t1, -780($fp)
	li $t2, 0
	bne $t1, $t2, label123
	j label122
label123:
	lw $t0, 4($fp)
	sw $t0, -784($fp)
	lw $t0, -328($fp)
	sw $t0, -788($fp)
	lw $t0, -784($fp)
	lw $t1, -788($fp)
	add $t0, $t0, $t1
	sw $t0, -792($fp)
	li $t0, 20253
	sw $t0, -796($fp)
	li $t0, 0
	lw $t1, -796($fp)
	sub $t0, $t0, $t1
	sw $t0, -800($fp)
	lw $t0, 12($fp)
	sw $t0, -804($fp)
	li $t0, 14135
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -812($fp)
	addi $sp, $sp, -4
	lw $t0, -792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -812($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -816($fp)
	addi $sp, $sp, 20
	li $t0, 9071
	sw $t0, -820($fp)
	lw $t0, -816($fp)
	lw $t1, -820($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -824($fp)
	addi $t0, $fp, -56
	sw $t0, -828($fp)
	li $t0, 4
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
	lw $t0, -824($fp)
	lw $t1, -844($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -848($fp)
	lw $t1, -848($fp)
	li $t2, 0
	bne $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -756($fp)
label122:
	addi $t0, $fp, -20
	sw $t0, -852($fp)
	li $t0, 0
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
	addi $t0, $fp, -20
	sw $t0, -872($fp)
	li $t0, 1
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
	addi $t0, $fp, -20
	sw $t0, -892($fp)
	li $t0, 2
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
	addi $t0, $fp, -20
	sw $t0, -912($fp)
	li $t0, 3
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
	lw $t0, -196($fp)
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -208($fp)
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -940($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -960($fp)
	li $t0, 1
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
	addi $t0, $fp, -32
	sw $t0, -980($fp)
	li $t0, 2
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
	lw $t0, -292($fp)
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -304($fp)
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -316($fp)
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -328($fp)
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1016($fp)
	li $t0, 0
	sw $t0, -1020($fp)
	li $t0, 4
	lw $t1, -1020($fp)
	mul $t0, $t0, $t1
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	lw $t1, -1016($fp)
	add $t0, $t0, $t1
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	lw $t1, 0($t0)
	sw $t1, -1032($fp)
	lw $t0, -1032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1036($fp)
	li $t0, 1
	sw $t0, -1040($fp)
	li $t0, 4
	lw $t1, -1040($fp)
	mul $t0, $t0, $t1
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	lw $t1, -1036($fp)
	add $t0, $t0, $t1
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	lw $t1, 0($t0)
	sw $t1, -1052($fp)
	lw $t0, -1052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1056($fp)
	li $t0, 2
	sw $t0, -1060($fp)
	li $t0, 4
	lw $t1, -1060($fp)
	mul $t0, $t0, $t1
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	lw $t1, -1056($fp)
	add $t0, $t0, $t1
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	lw $t1, 0($t0)
	sw $t1, -1072($fp)
	lw $t0, -1072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1076($fp)
	li $t0, 3
	sw $t0, -1080($fp)
	li $t0, 4
	lw $t1, -1080($fp)
	mul $t0, $t0, $t1
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	lw $t1, -1076($fp)
	add $t0, $t0, $t1
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	lw $t1, 0($t0)
	sw $t1, -1092($fp)
	lw $t0, -1092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1096($fp)
	li $t0, 4
	sw $t0, -1100($fp)
	li $t0, 4
	lw $t1, -1100($fp)
	mul $t0, $t0, $t1
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	lw $t1, -1096($fp)
	add $t0, $t0, $t1
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	lw $t1, 0($t0)
	sw $t1, -1112($fp)
	lw $t0, -1112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1116($fp)
	li $t0, 5
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
	lw $t0, -484($fp)
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -496($fp)
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -508($fp)
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1148($fp)
	li $t0, 0
	sw $t0, -1152($fp)
	li $t0, 4
	lw $t1, -1152($fp)
	mul $t0, $t0, $t1
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	lw $t1, -1148($fp)
	add $t0, $t0, $t1
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	lw $t1, 0($t0)
	sw $t1, -1164($fp)
	lw $t0, -1164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1168($fp)
	li $t0, 1
	sw $t0, -1172($fp)
	li $t0, 4
	lw $t1, -1172($fp)
	mul $t0, $t0, $t1
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	lw $t1, -1168($fp)
	add $t0, $t0, $t1
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	lw $t1, 0($t0)
	sw $t1, -1184($fp)
	lw $t0, -1184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1188($fp)
	li $t0, 2
	sw $t0, -1192($fp)
	li $t0, 4
	lw $t1, -1192($fp)
	mul $t0, $t0, $t1
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	lw $t1, -1188($fp)
	add $t0, $t0, $t1
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	lw $t1, 0($t0)
	sw $t1, -1204($fp)
	lw $t0, -1204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -1208($fp)
	li $t0, 0
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
	lw $t0, -1224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -1228($fp)
	li $t0, 1
	sw $t0, -1232($fp)
	li $t0, 4
	lw $t1, -1232($fp)
	mul $t0, $t0, $t1
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	lw $t1, -1228($fp)
	add $t0, $t0, $t1
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	lw $t1, 0($t0)
	sw $t1, -1244($fp)
	lw $t0, -1244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -1248($fp)
	li $t0, 2
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
	li $t0, 3
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
	li $t0, 4
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
	addi $t0, $fp, -92
	sw $t0, -1308($fp)
	li $t0, 5
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
	lw $t0, -736($fp)
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -748($fp)
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1336($fp)
	li $t0, 0
	sw $t0, -1340($fp)
	li $t0, 20919
	sw $t0, -1344($fp)
	lw $t1, -1344($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label129
label128:
	li $t0, 1
	sw $t0, -1340($fp)
label129:
	lw $t0, -196($fp)
	sw $t0, -1348($fp)
	lw $t0, 12($fp)
	sw $t0, -1352($fp)
	lw $t0, -1348($fp)
	lw $t1, -1352($fp)
	mul $t0, $t0, $t1
	sw $t0, -1356($fp)
	lw $t1, -1340($fp)
	lw $t2, -1356($fp)
	bge $t1, $t2, label127
	j label125
label127:
	addi $t0, $fp, -56
	sw $t0, -1360($fp)
	li $t0, 0
	sw $t0, -1364($fp)
	li $t0, 4
	lw $t1, -1364($fp)
	mul $t0, $t0, $t1
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	lw $t1, -1360($fp)
	add $t0, $t0, $t1
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	lw $t1, 0($t0)
	sw $t1, -1376($fp)
	li $t0, 38302
	sw $t0, -1380($fp)
	lw $t1, -1376($fp)
	lw $t2, -1380($fp)
	beq $t1, $t2, label126
	j label125
label126:
	addi $t0, $fp, -56
	sw $t0, -1384($fp)
	li $t0, 2
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
	lw $t1, -1400($fp)
	li $t2, 0
	bne $t1, $t2, label125
	j label124
label124:
	li $t0, 1
	sw $t0, -1336($fp)
label125:
	lw $ra, -4($fp)
	lw $v0, -1336($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
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
	lw $t0, -196($fp)
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -208($fp)
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1492($fp)
	li $t0, 0
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
	lw $t0, -1528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1532($fp)
	li $t0, 2
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
	lw $t0, -292($fp)
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -304($fp)
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -316($fp)
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -328($fp)
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
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
	addi $t0, $fp, -56
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
	addi $t0, $fp, -56
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
	addi $t0, $fp, -56
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
	addi $t0, $fp, -56
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
	addi $t0, $fp, -56
	sw $t0, -1668($fp)
	li $t0, 5
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
	lw $t0, -484($fp)
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -496($fp)
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -508($fp)
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1700($fp)
	li $t0, 0
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
	addi $t0, $fp, -68
	sw $t0, -1720($fp)
	li $t0, 1
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
	addi $t0, $fp, -68
	sw $t0, -1740($fp)
	li $t0, 2
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
	addi $t0, $fp, -92
	sw $t0, -1760($fp)
	li $t0, 0
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
	addi $t0, $fp, -92
	sw $t0, -1780($fp)
	li $t0, 1
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
	addi $t0, $fp, -92
	sw $t0, -1800($fp)
	li $t0, 2
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
	addi $t0, $fp, -92
	sw $t0, -1820($fp)
	li $t0, 3
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
	addi $t0, $fp, -92
	sw $t0, -1840($fp)
	li $t0, 4
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
	addi $t0, $fp, -92
	sw $t0, -1860($fp)
	li $t0, 5
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
	lw $t0, -736($fp)
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -748($fp)
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1888($fp)
	lw $t0, -316($fp)
	sw $t0, -1892($fp)
	lw $t1, -1892($fp)
	li $t2, 0
	bne $t1, $t2, label132
	j label130
label132:
	li $t0, 65117
	sw $t0, -1896($fp)
	lw $t0, -484($fp)
	sw $t0, -1900($fp)
	lw $t0, -1896($fp)
	lw $t1, -1900($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1904($fp)
	li $t0, 0
	lw $t1, -1904($fp)
	sub $t0, $t0, $t1
	sw $t0, -1908($fp)
	li $t0, 62158
	sw $t0, -1912($fp)
	lw $t0, -1912($fp)
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -1916($fp)
	li $t0, 51004
	sw $t0, -1920($fp)
	lw $t0, -496($fp)
	sw $t0, -1924($fp)
	lw $t0, -1920($fp)
	lw $t1, -1924($fp)
	add $t0, $t0, $t1
	sw $t0, -1928($fp)
	li $t0, 41146
	sw $t0, -1932($fp)
	lw $t0, -1928($fp)
	lw $t1, -1932($fp)
	sub $t0, $t0, $t1
	sw $t0, -1936($fp)
	li $t0, 12724
	sw $t0, -1940($fp)
	li $t0, 0
	lw $t1, -1940($fp)
	sub $t0, $t0, $t1
	sw $t0, -1944($fp)
	li $t0, 0
	sw $t0, -1948($fp)
	li $t0, 63596
	sw $t0, -1952($fp)
	lw $t1, -1952($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label133
label133:
	li $t0, 1
	sw $t0, -1948($fp)
label134:
	lw $t0, 8($fp)
	sw $t0, -1956($fp)
	lw $t0, -1948($fp)
	lw $t1, -1956($fp)
	add $t0, $t0, $t1
	sw $t0, -1960($fp)
	li $t0, 0
	sw $t0, -1964($fp)
	lw $t0, -508($fp)
	sw $t0, -1968($fp)
	lw $t1, -1968($fp)
	li $t2, 0
	bne $t1, $t2, label135
	j label138
label138:
	li $t0, 10432
	sw $t0, -1972($fp)
	lw $t1, -1972($fp)
	li $t2, 0
	bne $t1, $t2, label135
	j label137
label137:
	lw $t0, 16($fp)
	sw $t0, -1976($fp)
	lw $t1, -1976($fp)
	li $t2, 0
	bne $t1, $t2, label135
	j label136
label135:
	li $t0, 1
	sw $t0, -1964($fp)
label136:
	addi $t0, $fp, -56
	sw $t0, -1980($fp)
	lw $t0, 12($fp)
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
	addi $t0, $fp, -92
	sw $t0, -2000($fp)
	li $t0, 1
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
	addi $sp, $sp, -4
	lw $t0, -1960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2016($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2020($fp)
	addi $sp, $sp, 20
	li $t0, 1600
	sw $t0, -2024($fp)
	lw $t0, -2024($fp)
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -2028($fp)
	addi $sp, $sp, -4
	lw $t0, -1936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2028($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2032($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -2032($fp)
	sub $t0, $t0, $t1
	sw $t0, -2036($fp)
	li $t0, 0
	sw $t0, -2040($fp)
	li $t0, 31212
	sw $t0, -2044($fp)
	lw $t0, -304($fp)
	sw $t0, -2048($fp)
	lw $t0, -2044($fp)
	lw $t1, -2048($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2052($fp)
	lw $t1, -2052($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label141
label141:
	lw $t0, -196($fp)
	sw $t0, -2056($fp)
	lw $t1, -2056($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label140
label139:
	li $t0, 1
	sw $t0, -2040($fp)
label140:
	addi $sp, $sp, -4
	lw $t0, -1908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2040($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2060($fp)
	addi $sp, $sp, 20
	lw $t1, -2060($fp)
	li $t2, 0
	bne $t1, $t2, label130
	j label131
label130:
	li $t0, 1
	sw $t0, -1888($fp)
label131:
	lw $t0, -1888($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -2064($fp)
	lw $ra, -4($fp)
	lw $v0, -2064($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 59541
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	sw $t0, -2156($fp)
	lw $t0, -2156($fp)
	sw $t0, -2160($fp)
	li $t0, 15528
	sw $t0, -2164($fp)
	addi $t0, $fp, -2104
	sw $t0, -2168($fp)
	li $t0, 0
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
	li $t0, 14056
	sw $t0, -2188($fp)
	addi $t0, $fp, -2104
	sw $t0, -2192($fp)
	li $t0, 1
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
	li $t0, 6676
	sw $t0, -2212($fp)
	addi $t0, $fp, -2104
	sw $t0, -2216($fp)
	li $t0, 2
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
	li $t0, 54169
	sw $t0, -2236($fp)
	addi $t0, $fp, -2104
	sw $t0, -2240($fp)
	li $t0, 3
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
	li $t0, 11728
	sw $t0, -2260($fp)
	addi $t0, $fp, -2104
	sw $t0, -2264($fp)
	li $t0, 4
	sw $t0, -2268($fp)
	lw $t0, -2268($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2272($fp)
	lw $t0, -2264($fp)
	lw $t1, -2272($fp)
	add $t0, $t0, $t1
	sw $t0, -2276($fp)
	lw $t0, -2260($fp)
	lw $t1, -2276($fp)
	sw $t0, 0($t1)
	lw $t0, -2276($fp)
	lw $t1, 0($t0)
	sw $t1, -2280($fp)
	li $t0, 27822
	sw $t0, -2284($fp)
	addi $t0, $fp, -2104
	sw $t0, -2288($fp)
	li $t0, 5
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2296($fp)
	lw $t0, -2288($fp)
	lw $t1, -2296($fp)
	add $t0, $t0, $t1
	sw $t0, -2300($fp)
	lw $t0, -2284($fp)
	lw $t1, -2300($fp)
	sw $t0, 0($t1)
	lw $t0, -2300($fp)
	lw $t1, 0($t0)
	sw $t1, -2304($fp)
	li $t0, 58827
	sw $t0, -2308($fp)
	addi $t0, $fp, -2104
	sw $t0, -2312($fp)
	li $t0, 6
	sw $t0, -2316($fp)
	lw $t0, -2316($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2320($fp)
	lw $t0, -2312($fp)
	lw $t1, -2320($fp)
	add $t0, $t0, $t1
	sw $t0, -2324($fp)
	lw $t0, -2308($fp)
	lw $t1, -2324($fp)
	sw $t0, 0($t1)
	lw $t0, -2324($fp)
	lw $t1, 0($t0)
	sw $t1, -2328($fp)
	li $t0, 16963
	sw $t0, -2332($fp)
	addi $t0, $fp, -2104
	sw $t0, -2336($fp)
	li $t0, 7
	sw $t0, -2340($fp)
	lw $t0, -2340($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2344($fp)
	lw $t0, -2336($fp)
	lw $t1, -2344($fp)
	add $t0, $t0, $t1
	sw $t0, -2348($fp)
	lw $t0, -2332($fp)
	lw $t1, -2348($fp)
	sw $t0, 0($t1)
	lw $t0, -2348($fp)
	lw $t1, 0($t0)
	sw $t1, -2352($fp)
	li $t0, 41958
	sw $t0, -2356($fp)
	addi $t0, $fp, -2104
	sw $t0, -2360($fp)
	li $t0, 8
	sw $t0, -2364($fp)
	lw $t0, -2364($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2368($fp)
	lw $t0, -2360($fp)
	lw $t1, -2368($fp)
	add $t0, $t0, $t1
	sw $t0, -2372($fp)
	lw $t0, -2356($fp)
	lw $t1, -2372($fp)
	sw $t0, 0($t1)
	lw $t0, -2372($fp)
	lw $t1, 0($t0)
	sw $t1, -2376($fp)
	li $t0, 13544
	sw $t0, -2380($fp)
	addi $t0, $fp, -2104
	sw $t0, -2384($fp)
	li $t0, 9
	sw $t0, -2388($fp)
	lw $t0, -2388($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2392($fp)
	lw $t0, -2384($fp)
	lw $t1, -2392($fp)
	add $t0, $t0, $t1
	sw $t0, -2396($fp)
	lw $t0, -2380($fp)
	lw $t1, -2396($fp)
	sw $t0, 0($t1)
	lw $t0, -2396($fp)
	lw $t1, 0($t0)
	sw $t1, -2400($fp)
	li $t0, 26034
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	sw $t0, -2412($fp)
	li $t0, 65158
	sw $t0, -2416($fp)
	lw $t0, -2416($fp)
	sw $t0, -2420($fp)
	lw $t0, -2420($fp)
	sw $t0, -2424($fp)
	li $t0, 64260
	sw $t0, -2428($fp)
	lw $t0, -2428($fp)
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	sw $t0, -2436($fp)
	li $t0, 46953
	sw $t0, -2440($fp)
	lw $t0, -2440($fp)
	sw $t0, -2444($fp)
	lw $t0, -2444($fp)
	sw $t0, -2448($fp)
	li $t0, 6147
	sw $t0, -2452($fp)
	lw $t0, -2452($fp)
	sw $t0, -2456($fp)
	lw $t0, -2456($fp)
	sw $t0, -2460($fp)
	li $t0, 60617
	sw $t0, -2464($fp)
	lw $t0, -2464($fp)
	sw $t0, -2468($fp)
	lw $t0, -2468($fp)
	sw $t0, -2472($fp)
	li $t0, 19719
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	sw $t0, -2484($fp)
	li $t0, 24722
	sw $t0, -2488($fp)
	lw $t0, -2488($fp)
	sw $t0, -2492($fp)
	lw $t0, -2492($fp)
	sw $t0, -2496($fp)
	li $t0, 48309
	sw $t0, -2500($fp)
	addi $t0, $fp, -2112
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
	li $t0, 50931
	sw $t0, -2524($fp)
	addi $t0, $fp, -2112
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
	li $t0, 26323
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	sw $t0, -2552($fp)
	lw $t0, -2552($fp)
	sw $t0, -2556($fp)
	li $t0, 11613
	sw $t0, -2560($fp)
	lw $t0, -2560($fp)
	sw $t0, -2564($fp)
	lw $t0, -2564($fp)
	sw $t0, -2568($fp)
	li $t0, 14023
	sw $t0, -2572($fp)
	lw $t0, -2572($fp)
	sw $t0, -2576($fp)
	lw $t0, -2576($fp)
	sw $t0, -2580($fp)
	li $t0, 36755
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	sw $t0, -2588($fp)
	lw $t0, -2588($fp)
	sw $t0, -2592($fp)
	li $t0, 9673
	sw $t0, -2596($fp)
	addi $t0, $fp, -2148
	sw $t0, -2600($fp)
	li $t0, 0
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
	li $t0, 26747
	sw $t0, -2620($fp)
	addi $t0, $fp, -2148
	sw $t0, -2624($fp)
	li $t0, 1
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
	li $t0, 22223
	sw $t0, -2644($fp)
	addi $t0, $fp, -2148
	sw $t0, -2648($fp)
	li $t0, 2
	sw $t0, -2652($fp)
	lw $t0, -2652($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2656($fp)
	lw $t0, -2648($fp)
	lw $t1, -2656($fp)
	add $t0, $t0, $t1
	sw $t0, -2660($fp)
	lw $t0, -2644($fp)
	lw $t1, -2660($fp)
	sw $t0, 0($t1)
	lw $t0, -2660($fp)
	lw $t1, 0($t0)
	sw $t1, -2664($fp)
	li $t0, 50819
	sw $t0, -2668($fp)
	addi $t0, $fp, -2148
	sw $t0, -2672($fp)
	li $t0, 3
	sw $t0, -2676($fp)
	lw $t0, -2676($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2680($fp)
	lw $t0, -2672($fp)
	lw $t1, -2680($fp)
	add $t0, $t0, $t1
	sw $t0, -2684($fp)
	lw $t0, -2668($fp)
	lw $t1, -2684($fp)
	sw $t0, 0($t1)
	lw $t0, -2684($fp)
	lw $t1, 0($t0)
	sw $t1, -2688($fp)
	li $t0, 23370
	sw $t0, -2692($fp)
	addi $t0, $fp, -2148
	sw $t0, -2696($fp)
	li $t0, 4
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2704($fp)
	lw $t0, -2696($fp)
	lw $t1, -2704($fp)
	add $t0, $t0, $t1
	sw $t0, -2708($fp)
	lw $t0, -2692($fp)
	lw $t1, -2708($fp)
	sw $t0, 0($t1)
	lw $t0, -2708($fp)
	lw $t1, 0($t0)
	sw $t1, -2712($fp)
	li $t0, 21805
	sw $t0, -2716($fp)
	addi $t0, $fp, -2148
	sw $t0, -2720($fp)
	li $t0, 5
	sw $t0, -2724($fp)
	lw $t0, -2724($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2728($fp)
	lw $t0, -2720($fp)
	lw $t1, -2728($fp)
	add $t0, $t0, $t1
	sw $t0, -2732($fp)
	lw $t0, -2716($fp)
	lw $t1, -2732($fp)
	sw $t0, 0($t1)
	lw $t0, -2732($fp)
	lw $t1, 0($t0)
	sw $t1, -2736($fp)
	li $t0, 44824
	sw $t0, -2740($fp)
	addi $t0, $fp, -2148
	sw $t0, -2744($fp)
	li $t0, 6
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
	li $t0, 38898
	sw $t0, -2764($fp)
	addi $t0, $fp, -2148
	sw $t0, -2768($fp)
	li $t0, 7
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
	li $t0, 35861
	sw $t0, -2788($fp)
	addi $t0, $fp, -2148
	sw $t0, -2792($fp)
	li $t0, 8
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
	li $t0, 51501
	sw $t0, -2812($fp)
	lw $t0, -2812($fp)
	sw $t0, -2816($fp)
	lw $t0, -2816($fp)
	sw $t0, -2820($fp)
	li $t0, 27531
	sw $t0, -2824($fp)
	li $t0, 0
	sw $t0, -2828($fp)
	li $t0, 0
	sw $t0, -2832($fp)
	li $t0, 0
	sw $t0, -2836($fp)
	lw $t0, -2420($fp)
	sw $t0, -2840($fp)
	lw $t0, -2492($fp)
	sw $t0, -2844($fp)
	lw $t0, -2840($fp)
	lw $t1, -2844($fp)
	sub $t0, $t0, $t1
	sw $t0, -2848($fp)
	li $t0, 47589
	sw $t0, -2852($fp)
	lw $t0, -2848($fp)
	lw $t1, -2852($fp)
	add $t0, $t0, $t1
	sw $t0, -2856($fp)
	lw $t0, -508($fp)
	sw $t0, -2860($fp)
	li $t0, 13787
	sw $t0, -2864($fp)
	lw $t0, -2860($fp)
	lw $t1, -2864($fp)
	add $t0, $t0, $t1
	sw $t0, -2868($fp)
	lw $t1, -2856($fp)
	lw $t2, -2868($fp)
	blt $t1, $t2, label146
	j label147
label146:
	li $t0, 1
	sw $t0, -2836($fp)
label147:
	li $t0, 20823
	sw $t0, -2872($fp)
	lw $t1, -2836($fp)
	lw $t2, -2872($fp)
	blt $t1, $t2, label144
	j label145
label144:
	li $t0, 1
	sw $t0, -2832($fp)
label145:
	li $t0, 62272
	sw $t0, -2876($fp)
	li $t0, 0
	sw $t0, -2880($fp)
	addi $t0, $fp, -2148
	sw $t0, -2884($fp)
	li $t0, 4
	sw $t0, -2888($fp)
	li $t0, 4
	lw $t1, -2888($fp)
	mul $t0, $t0, $t1
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	lw $t1, -2884($fp)
	add $t0, $t0, $t1
	sw $t0, -2896($fp)
	lw $t0, -2896($fp)
	lw $t1, 0($t0)
	sw $t1, -2900($fp)
	li $t0, 0
	sw $t0, -2904($fp)
	lw $t0, -208($fp)
	sw $t0, -2908($fp)
	lw $t0, -196($fp)
	sw $t0, -2912($fp)
	lw $t0, -2908($fp)
	lw $t1, -2912($fp)
	add $t0, $t0, $t1
	sw $t0, -2916($fp)
	lw $t1, -2916($fp)
	li $t2, 0
	bne $t1, $t2, label150
	j label152
label152:
	lw $t0, -2432($fp)
	sw $t0, -2920($fp)
	lw $t1, -2920($fp)
	li $t2, 0
	bne $t1, $t2, label150
	j label151
label150:
	li $t0, 1
	sw $t0, -2904($fp)
label151:
	li $t0, 0
	sw $t0, -2924($fp)
	lw $t0, -2816($fp)
	sw $t0, -2928($fp)
	lw $t1, -2928($fp)
	li $t2, 0
	bne $t1, $t2, label153
	j label155
label155:
	li $t0, 40467
	sw $t0, -2932($fp)
	lw $t1, -2932($fp)
	li $t2, 0
	bne $t1, $t2, label153
	j label154
label153:
	li $t0, 1
	sw $t0, -2924($fp)
label154:
	lw $t0, -2576($fp)
	sw $t0, -2936($fp)
	li $t0, 0
	sw $t0, -2940($fp)
	addi $t0, $fp, -2148
	sw $t0, -2944($fp)
	li $t0, 3
	sw $t0, -2948($fp)
	li $t0, 4
	lw $t1, -2948($fp)
	mul $t0, $t0, $t1
	sw $t0, -2952($fp)
	lw $t0, -2952($fp)
	lw $t1, -2944($fp)
	add $t0, $t0, $t1
	sw $t0, -2956($fp)
	lw $t0, -2956($fp)
	lw $t1, 0($t0)
	sw $t1, -2960($fp)
	lw $t1, -2960($fp)
	li $t2, 0
	bne $t1, $t2, label156
	j label158
label158:
	lw $t0, -748($fp)
	sw $t0, -2964($fp)
	lw $t1, -2964($fp)
	li $t2, 0
	bne $t1, $t2, label156
	j label157
label156:
	li $t0, 1
	sw $t0, -2940($fp)
label157:
	li $t0, 0
	sw $t0, -2968($fp)
	lw $t0, -2588($fp)
	sw $t0, -2972($fp)
	lw $t0, -316($fp)
	sw $t0, -2976($fp)
	lw $t1, -2972($fp)
	lw $t2, -2976($fp)
	ble $t1, $t2, label161
	j label160
label161:
	li $t0, 18243
	sw $t0, -2980($fp)
	lw $t1, -2980($fp)
	li $t2, 0
	bne $t1, $t2, label159
	j label160
label159:
	li $t0, 1
	sw $t0, -2968($fp)
label160:
	addi $sp, $sp, -4
	lw $t0, -2924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2968($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2984($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -2988($fp)
	lw $t0, -2576($fp)
	sw $t0, -2992($fp)
	li $t0, 25606
	sw $t0, -2996($fp)
	lw $t0, -2992($fp)
	lw $t1, -2996($fp)
	add $t0, $t0, $t1
	sw $t0, -3000($fp)
	lw $t1, -3000($fp)
	li $t2, 0
	bne $t1, $t2, label162
	j label164
label164:
	lw $t0, -736($fp)
	sw $t0, -3004($fp)
	lw $t1, -3004($fp)
	li $t2, 0
	bne $t1, $t2, label162
	j label163
label162:
	li $t0, 1
	sw $t0, -2988($fp)
label163:
	li $t0, 0
	sw $t0, -3008($fp)
	li $t0, 47024
	sw $t0, -3012($fp)
	li $t0, 22559
	sw $t0, -3016($fp)
	lw $t1, -3012($fp)
	lw $t2, -3016($fp)
	bne $t1, $t2, label165
	j label166
label165:
	li $t0, 1
	sw $t0, -3008($fp)
label166:
	li $t0, 11583
	sw $t0, -3020($fp)
	lw $t0, -3020($fp)
	sw $t0, -2564($fp)
	lw $t0, -2564($fp)
	sw $t0, -3024($fp)
	addi $sp, $sp, -4
	lw $t0, -2984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3024($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3028($fp)
	addi $sp, $sp, 20
	lw $t0, 12($fp)
	sw $t0, -3032($fp)
	lw $t0, -3028($fp)
	lw $t1, -3032($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3036($fp)
	li $t0, 0
	sw $t0, -3040($fp)
	lw $t0, -208($fp)
	sw $t0, -3044($fp)
	lw $t1, -3044($fp)
	li $t2, 0
	bne $t1, $t2, label170
	j label168
label170:
	lw $t0, -196($fp)
	sw $t0, -3048($fp)
	lw $t1, -3048($fp)
	li $t2, 0
	bne $t1, $t2, label169
	j label168
label169:
	li $t0, 10946
	sw $t0, -3052($fp)
	lw $t1, -3052($fp)
	li $t2, 0
	bne $t1, $t2, label167
	j label168
label167:
	li $t0, 1
	sw $t0, -3040($fp)
label168:
	addi $sp, $sp, -4
	lw $t0, -2900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3040($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3056($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -3060($fp)
	li $t0, 20701
	sw $t0, -3064($fp)
	li $t0, 0
	lw $t1, -3064($fp)
	sub $t0, $t0, $t1
	sw $t0, -3068($fp)
	li $t0, 0
	sw $t0, -3072($fp)
	li $t0, 26187
	sw $t0, -3076($fp)
	lw $t0, 16($fp)
	sw $t0, -3080($fp)
	lw $t1, -3076($fp)
	lw $t2, -3080($fp)
	blt $t1, $t2, label174
	j label175
label174:
	li $t0, 1
	sw $t0, -3072($fp)
label175:
	li $t0, 0
	sw $t0, -3084($fp)
	li $t0, 28173
	sw $t0, -3088($fp)
	li $t0, 0
	lw $t1, -3088($fp)
	sub $t0, $t0, $t1
	sw $t0, -3092($fp)
	lw $t1, -3092($fp)
	li $t2, 0
	bne $t1, $t2, label178
	j label177
label178:
	lw $t0, -2408($fp)
	sw $t0, -3096($fp)
	lw $t1, -3096($fp)
	li $t2, 0
	bne $t1, $t2, label176
	j label177
label176:
	li $t0, 1
	sw $t0, -3084($fp)
label177:
	li $t0, 0
	sw $t0, -3100($fp)
	li $t0, 61515
	sw $t0, -3104($fp)
	lw $t0, -2552($fp)
	sw $t0, -3108($fp)
	lw $t0, -3104($fp)
	lw $t1, -3108($fp)
	mul $t0, $t0, $t1
	sw $t0, -3112($fp)
	lw $t0, -208($fp)
	sw $t0, -3116($fp)
	lw $t1, -3112($fp)
	lw $t2, -3116($fp)
	bgt $t1, $t2, label179
	j label180
label179:
	li $t0, 1
	sw $t0, -3100($fp)
label180:
	addi $sp, $sp, -4
	lw $t0, -3068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3100($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3120($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -3124($fp)
	addi $t0, $fp, -2112
	sw $t0, -3128($fp)
	li $t0, 0
	sw $t0, -3132($fp)
	li $t0, 4
	lw $t1, -3132($fp)
	mul $t0, $t0, $t1
	sw $t0, -3136($fp)
	lw $t0, -3136($fp)
	lw $t1, -3128($fp)
	add $t0, $t0, $t1
	sw $t0, -3140($fp)
	lw $t0, -3140($fp)
	lw $t1, 0($t0)
	sw $t1, -3144($fp)
	lw $t0, -2480($fp)
	sw $t0, -3148($fp)
	lw $t1, -3144($fp)
	lw $t2, -3148($fp)
	bne $t1, $t2, label181
	j label182
label181:
	li $t0, 1
	sw $t0, -3124($fp)
label182:
	li $t0, 0
	sw $t0, -3152($fp)
	lw $t0, -2588($fp)
	sw $t0, -3156($fp)
	lw $t1, -3156($fp)
	li $t2, 0
	bne $t1, $t2, label186
	j label185
label186:
	li $t0, 25050
	sw $t0, -3160($fp)
	lw $t1, -3160($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label185
label185:
	li $t0, 55367
	sw $t0, -3164($fp)
	lw $t1, -3164($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label184
label183:
	li $t0, 1
	sw $t0, -3152($fp)
label184:
	li $t0, 0
	sw $t0, -3168($fp)
	lw $t0, 12($fp)
	sw $t0, -3172($fp)
	li $t0, 0
	lw $t1, -3172($fp)
	sub $t0, $t0, $t1
	sw $t0, -3176($fp)
	li $t0, 34367
	sw $t0, -3180($fp)
	lw $t1, -3176($fp)
	lw $t2, -3180($fp)
	beq $t1, $t2, label187
	j label188
label187:
	li $t0, 1
	sw $t0, -3168($fp)
label188:
	addi $sp, $sp, -4
	lw $t0, -3120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3168($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3184($fp)
	addi $sp, $sp, 20
	lw $t1, -3184($fp)
	li $t2, 0
	bne $t1, $t2, label173
	j label172
label173:
	lw $t0, 16($fp)
	sw $t0, -3188($fp)
	lw $t1, -3188($fp)
	li $t2, 0
	bne $t1, $t2, label171
	j label172
label171:
	li $t0, 1
	sw $t0, -3060($fp)
label172:
	li $t0, 0
	sw $t0, -3192($fp)
	lw $t0, -316($fp)
	sw $t0, -3196($fp)
	lw $t1, -3196($fp)
	li $t2, 0
	bne $t1, $t2, label189
	j label191
label191:
	li $t0, 55745
	sw $t0, -3200($fp)
	lw $t1, -3200($fp)
	li $t2, 0
	bne $t1, $t2, label189
	j label190
label189:
	li $t0, 1
	sw $t0, -3192($fp)
label190:
	li $t0, 0
	sw $t0, -3204($fp)
	li $t0, 0
	sw $t0, -3208($fp)
	li $t0, 64552
	sw $t0, -3212($fp)
	lw $t1, -3212($fp)
	li $t2, 0
	bne $t1, $t2, label195
	j label194
label194:
	li $t0, 1
	sw $t0, -3208($fp)
label195:
	lw $t0, -196($fp)
	sw $t0, -3216($fp)
	lw $t1, -3208($fp)
	lw $t2, -3216($fp)
	bne $t1, $t2, label192
	j label193
label192:
	li $t0, 1
	sw $t0, -3204($fp)
label193:
	addi $sp, $sp, -4
	lw $t0, -3056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3204($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3220($fp)
	addi $sp, $sp, 20
	lw $t1, -3220($fp)
	li $t2, 0
	bne $t1, $t2, label149
	j label148
label148:
	li $t0, 1
	sw $t0, -2880($fp)
label149:
	li $t0, 0
	sw $t0, -3224($fp)
	lw $t0, -2420($fp)
	sw $t0, -3228($fp)
	lw $t0, -2456($fp)
	sw $t0, -3232($fp)
	lw $t1, -3228($fp)
	lw $t2, -3232($fp)
	blt $t1, $t2, label196
	j label197
label196:
	li $t0, 1
	sw $t0, -3224($fp)
label197:
	addi $t0, $fp, -68
	sw $t0, -3236($fp)
	lw $t0, -292($fp)
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
	lw $t0, -328($fp)
	sw $t0, -3256($fp)
	lw $t0, -3252($fp)
	lw $t1, -3256($fp)
	add $t0, $t0, $t1
	sw $t0, -3260($fp)
	addi $sp, $sp, -4
	lw $t0, -2876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3260($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3264($fp)
	addi $sp, $sp, 20
	lw $t1, -2832($fp)
	lw $t2, -3264($fp)
	blt $t1, $t2, label142
	j label143
label142:
	li $t0, 1
	sw $t0, -2828($fp)
label143:
	li $t0, 0
	sw $t0, -3268($fp)
	addi $t0, $fp, -92
	sw $t0, -3272($fp)
	li $t0, 0
	sw $t0, -3276($fp)
	li $t0, 62340
	sw $t0, -3280($fp)
	lw $t0, -2456($fp)
	sw $t0, -3284($fp)
	lw $t1, -3280($fp)
	lw $t2, -3284($fp)
	bne $t1, $t2, label202
	j label203
label202:
	li $t0, 1
	sw $t0, -3276($fp)
label203:
	li $t0, 4
	lw $t1, -3276($fp)
	mul $t0, $t0, $t1
	sw $t0, -3288($fp)
	lw $t0, -3288($fp)
	lw $t1, -3272($fp)
	add $t0, $t0, $t1
	sw $t0, -3292($fp)
	lw $t0, -3292($fp)
	lw $t1, 0($t0)
	sw $t1, -3296($fp)
	lw $t1, -3296($fp)
	li $t2, 0
	bne $t1, $t2, label201
	j label200
label201:
	addi $t0, $fp, -56
	sw $t0, -3300($fp)
	lw $t0, 12($fp)
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
	lw $t1, -3316($fp)
	li $t2, 0
	bne $t1, $t2, label198
	j label200
label200:
	li $t0, 0
	sw $t0, -3320($fp)
	li $t0, 0
	sw $t0, -3324($fp)
	li $t0, 0
	sw $t0, -3328($fp)
	lw $t0, -2408($fp)
	sw $t0, -3332($fp)
	lw $t0, -2420($fp)
	sw $t0, -3336($fp)
	lw $t1, -3332($fp)
	lw $t2, -3336($fp)
	bge $t1, $t2, label208
	j label210
label210:
	li $t0, 40303
	sw $t0, -3340($fp)
	lw $t1, -3340($fp)
	li $t2, 0
	bne $t1, $t2, label208
	j label209
label208:
	li $t0, 1
	sw $t0, -3328($fp)
label209:
	addi $t0, $fp, -2104
	sw $t0, -3344($fp)
	li $t0, 1
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
	li $t0, 17419
	sw $t0, -3364($fp)
	lw $t0, -3360($fp)
	lw $t1, -3364($fp)
	add $t0, $t0, $t1
	sw $t0, -3368($fp)
	lw $t0, -736($fp)
	sw $t0, -3372($fp)
	lw $t0, -3372($fp)
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	sw $t0, -3376($fp)
	addi $t0, $fp, -56
	sw $t0, -3380($fp)
	lw $t0, 12($fp)
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
	lw $t0, 16($fp)
	sw $t0, -3400($fp)
	lw $t0, -3396($fp)
	lw $t1, -3400($fp)
	sub $t0, $t0, $t1
	sw $t0, -3404($fp)
	addi $sp, $sp, -4
	lw $t0, -3328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3404($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3408($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -3412($fp)
	li $t0, 0
	sw $t0, -3416($fp)
	li $t0, 62001
	sw $t0, -3420($fp)
	lw $t0, -196($fp)
	sw $t0, -3424($fp)
	lw $t0, -3420($fp)
	lw $t1, -3424($fp)
	add $t0, $t0, $t1
	sw $t0, -3428($fp)
	li $t0, 5836
	sw $t0, -3432($fp)
	lw $t1, -3428($fp)
	lw $t2, -3432($fp)
	bne $t1, $t2, label213
	j label214
label213:
	li $t0, 1
	sw $t0, -3416($fp)
label214:
	lw $t0, 12($fp)
	sw $t0, -3436($fp)
	li $t0, 45184
	sw $t0, -3440($fp)
	lw $t0, -3440($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -3444($fp)
	li $t0, 42134
	sw $t0, -3448($fp)
	lw $t0, -2552($fp)
	sw $t0, -3452($fp)
	lw $t0, -3448($fp)
	lw $t1, -3452($fp)
	add $t0, $t0, $t1
	sw $t0, -3456($fp)
	li $t0, 33828
	sw $t0, -3460($fp)
	lw $t0, -3456($fp)
	lw $t1, -3460($fp)
	sub $t0, $t0, $t1
	sw $t0, -3464($fp)
	li $t0, 0
	sw $t0, -3468($fp)
	lw $t0, -292($fp)
	sw $t0, -3472($fp)
	lw $t0, 16($fp)
	sw $t0, -3476($fp)
	lw $t0, -3472($fp)
	lw $t1, -3476($fp)
	sub $t0, $t0, $t1
	sw $t0, -3480($fp)
	lw $t0, -316($fp)
	sw $t0, -3484($fp)
	lw $t1, -3480($fp)
	lw $t2, -3484($fp)
	bge $t1, $t2, label215
	j label216
label215:
	li $t0, 1
	sw $t0, -3468($fp)
label216:
	addi $sp, $sp, -4
	lw $t0, -3436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3468($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3488($fp)
	addi $sp, $sp, 20
	li $t0, 38113
	sw $t0, -3492($fp)
	lw $t0, -3488($fp)
	lw $t1, -3492($fp)
	add $t0, $t0, $t1
	sw $t0, -3496($fp)
	li $t0, 736
	sw $t0, -3500($fp)
	li $t0, 38716
	sw $t0, -3504($fp)
	lw $t0, -3500($fp)
	lw $t1, -3504($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3508($fp)
	li $t0, 0
	lw $t1, -3508($fp)
	sub $t0, $t0, $t1
	sw $t0, -3512($fp)
	li $t0, 0
	sw $t0, -3516($fp)
	li $t0, 0
	sw $t0, -3520($fp)
	li $t0, 13666
	sw $t0, -3524($fp)
	li $t0, 0
	lw $t1, -3524($fp)
	sub $t0, $t0, $t1
	sw $t0, -3528($fp)
	lw $t1, -3528($fp)
	li $t2, 0
	bne $t1, $t2, label222
	j label221
label222:
	li $t0, 52302
	sw $t0, -3532($fp)
	lw $t1, -3532($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label221
label220:
	li $t0, 1
	sw $t0, -3520($fp)
label221:
	li $t0, 31904
	sw $t0, -3536($fp)
	li $t0, 0
	sw $t0, -3540($fp)
	lw $t0, -484($fp)
	sw $t0, -3544($fp)
	lw $t1, -3544($fp)
	li $t2, 0
	bne $t1, $t2, label224
	j label223
label223:
	li $t0, 1
	sw $t0, -3540($fp)
label224:
	li $t0, 0
	lw $t1, -3540($fp)
	sub $t0, $t0, $t1
	sw $t0, -3548($fp)
	li $t0, 0
	sw $t0, -3552($fp)
	addi $t0, $fp, -56
	sw $t0, -3556($fp)
	lw $t0, -2420($fp)
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
	lw $t1, -3572($fp)
	li $t2, 0
	bne $t1, $t2, label227
	j label226
label227:
	lw $t0, -2444($fp)
	sw $t0, -3576($fp)
	lw $t1, -3576($fp)
	li $t2, 0
	bne $t1, $t2, label225
	j label226
label225:
	li $t0, 1
	sw $t0, -3552($fp)
label226:
	li $t0, 0
	sw $t0, -3580($fp)
	lw $t0, -292($fp)
	sw $t0, -3584($fp)
	lw $t0, -316($fp)
	sw $t0, -3588($fp)
	lw $t1, -3584($fp)
	lw $t2, -3588($fp)
	blt $t1, $t2, label228
	j label230
label230:
	li $t0, 62093
	sw $t0, -3592($fp)
	lw $t1, -3592($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label229
label228:
	li $t0, 1
	sw $t0, -3580($fp)
label229:
	lw $t0, -196($fp)
	sw $t0, -3596($fp)
	li $t0, 0
	sw $t0, -3600($fp)
	li $t0, 0
	sw $t0, -3604($fp)
	li $t0, 11081
	sw $t0, -3608($fp)
	lw $t0, -2432($fp)
	sw $t0, -3612($fp)
	lw $t0, -3608($fp)
	lw $t1, -3612($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3616($fp)
	li $t0, 14650
	sw $t0, -3620($fp)
	lw $t1, -3616($fp)
	lw $t2, -3620($fp)
	bne $t1, $t2, label233
	j label234
label233:
	li $t0, 1
	sw $t0, -3604($fp)
label234:
	li $t0, 0
	sw $t0, -3624($fp)
	lw $t0, -2576($fp)
	sw $t0, -3628($fp)
	lw $t1, -3628($fp)
	li $t2, 0
	bne $t1, $t2, label237
	j label236
label237:
	lw $t0, -484($fp)
	sw $t0, -3632($fp)
	lw $t1, -3632($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label236
label235:
	li $t0, 1
	sw $t0, -3624($fp)
label236:
	lw $t0, 12($fp)
	sw $t0, -3636($fp)
	addi $t0, $fp, -56
	sw $t0, -3640($fp)
	lw $t0, -196($fp)
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
	addi $sp, $sp, -4
	lw $t0, -3604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3656($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3660($fp)
	addi $sp, $sp, 20
	lw $t0, -2156($fp)
	sw $t0, -3664($fp)
	lw $t1, -3660($fp)
	lw $t2, -3664($fp)
	bge $t1, $t2, label231
	j label232
label231:
	li $t0, 1
	sw $t0, -3600($fp)
label232:
	addi $sp, $sp, -4
	lw $t0, -3552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3600($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3668($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -3520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3668($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3672($fp)
	addi $sp, $sp, 20
	lw $t1, -3672($fp)
	li $t2, 0
	bne $t1, $t2, label219
	j label218
label219:
	lw $t0, -2432($fp)
	sw $t0, -3676($fp)
	lw $t1, -3676($fp)
	li $t2, 0
	bne $t1, $t2, label217
	j label218
label217:
	li $t0, 1
	sw $t0, -3516($fp)
label218:
	addi $sp, $sp, -4
	lw $t0, -3416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3516($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3680($fp)
	addi $sp, $sp, 20
	lw $t1, -3680($fp)
	li $t2, 0
	bne $t1, $t2, label212
	j label211
label211:
	li $t0, 1
	sw $t0, -3412($fp)
label212:
	lw $t0, 16($fp)
	sw $t0, -3684($fp)
	lw $t0, -3684($fp)
	sw $t0, -2468($fp)
	lw $t0, -2468($fp)
	sw $t0, -3688($fp)
	lw $t0, 4($fp)
	sw $t0, -3692($fp)
	lw $t0, 12($fp)
	sw $t0, -3696($fp)
	lw $t0, -3692($fp)
	lw $t1, -3696($fp)
	mul $t0, $t0, $t1
	sw $t0, -3700($fp)
	lw $t0, 4($fp)
	sw $t0, -3704($fp)
	lw $t0, -3700($fp)
	lw $t1, -3704($fp)
	mul $t0, $t0, $t1
	sw $t0, -3708($fp)
	addi $sp, $sp, -4
	lw $t0, -3408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3708($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3712($fp)
	addi $sp, $sp, 20
	lw $t0, -2432($fp)
	sw $t0, -3716($fp)
	lw $t1, -3712($fp)
	lw $t2, -3716($fp)
	bne $t1, $t2, label206
	j label207
label206:
	li $t0, 1
	sw $t0, -3324($fp)
label207:
	li $t0, 48305
	sw $t0, -3720($fp)
	lw $t0, -3720($fp)
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -3724($fp)
	li $t0, 32597
	sw $t0, -3728($fp)
	li $t0, 0
	sw $t0, -3732($fp)
	addi $t0, $fp, -56
	sw $t0, -3736($fp)
	lw $t0, -304($fp)
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
	lw $t1, -3752($fp)
	li $t2, 0
	bne $t1, $t2, label240
	j label239
label240:
	li $t0, 49086
	sw $t0, -3756($fp)
	lw $t1, -3756($fp)
	li $t2, 0
	bne $t1, $t2, label238
	j label239
label238:
	li $t0, 1
	sw $t0, -3732($fp)
label239:
	addi $sp, $sp, -4
	lw $t0, -3324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3732($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3760($fp)
	addi $sp, $sp, 20
	li $t0, 29970
	sw $t0, -3764($fp)
	lw $t1, -3760($fp)
	lw $t2, -3764($fp)
	bge $t1, $t2, label204
	j label205
label204:
	li $t0, 1
	sw $t0, -3320($fp)
label205:
	addi $t0, $fp, -2148
	sw $t0, -3768($fp)
	li $t0, 5
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
	lw $t1, -3320($fp)
	lw $t2, -3784($fp)
	bgt $t1, $t2, label198
	j label199
label198:
	li $t0, 1
	sw $t0, -3268($fp)
label199:
	li $t0, 0
	sw $t0, -3788($fp)
	li $t0, 62202
	sw $t0, -3792($fp)
	lw $t1, -3792($fp)
	li $t2, 0
	bne $t1, $t2, label241
	j label243
label243:
	li $t0, 29842
	sw $t0, -3796($fp)
	lw $t1, -3796($fp)
	li $t2, 0
	bne $t1, $t2, label241
	j label242
label241:
	li $t0, 1
	sw $t0, -3788($fp)
label242:
label244:
	addi $t0, $fp, -56
	sw $t0, -3800($fp)
	li $t0, 33477
	sw $t0, -3804($fp)
	lw $t0, -196($fp)
	sw $t0, -3808($fp)
	lw $t0, -3804($fp)
	lw $t1, -3808($fp)
	mul $t0, $t0, $t1
	sw $t0, -3812($fp)
	li $t0, 14182
	sw $t0, -3816($fp)
	lw $t0, -3812($fp)
	lw $t1, -3816($fp)
	add $t0, $t0, $t1
	sw $t0, -3820($fp)
	li $t0, 4
	lw $t1, -3820($fp)
	mul $t0, $t0, $t1
	sw $t0, -3824($fp)
	lw $t0, -3824($fp)
	lw $t1, -3800($fp)
	add $t0, $t0, $t1
	sw $t0, -3828($fp)
	lw $t0, -3828($fp)
	lw $t1, 0($t0)
	sw $t1, -3832($fp)
	li $t0, 0
	lw $t1, -3832($fp)
	sub $t0, $t0, $t1
	sw $t0, -3836($fp)
	lw $t1, -3836($fp)
	li $t2, 0
	bne $t1, $t2, label245
	j label246
label245:
	li $t0, 0
	sw $t0, -3840($fp)
	li $t0, 40030
	sw $t0, -3844($fp)
	li $t0, 0
	lw $t1, -3844($fp)
	sub $t0, $t0, $t1
	sw $t0, -3848($fp)
	addi $t0, $fp, -68
	sw $t0, -3852($fp)
	li $t0, 0
	sw $t0, -3856($fp)
	li $t0, 30213
	sw $t0, -3860($fp)
	lw $t1, -3860($fp)
	li $t2, 0
	bne $t1, $t2, label249
	j label251
label251:
	lw $t0, -208($fp)
	sw $t0, -3864($fp)
	lw $t1, -3864($fp)
	li $t2, 0
	bne $t1, $t2, label249
	j label250
label249:
	li $t0, 1
	sw $t0, -3856($fp)
label250:
	li $t0, 4
	lw $t1, -3856($fp)
	mul $t0, $t0, $t1
	sw $t0, -3868($fp)
	lw $t0, -3868($fp)
	lw $t1, -3852($fp)
	add $t0, $t0, $t1
	sw $t0, -3872($fp)
	lw $t0, -3872($fp)
	lw $t1, 0($t0)
	sw $t1, -3876($fp)
	lw $t1, -3848($fp)
	lw $t2, -3876($fp)
	bne $t1, $t2, label247
	j label248
label247:
	li $t0, 1
	sw $t0, -3840($fp)
label248:
	j label244
label246:
	addi $t0, $fp, -20
	sw $t0, -3880($fp)
	li $t0, 0
	sw $t0, -3884($fp)
	li $t0, 4
	lw $t1, -3884($fp)
	mul $t0, $t0, $t1
	sw $t0, -3888($fp)
	lw $t0, -3888($fp)
	lw $t1, -3880($fp)
	add $t0, $t0, $t1
	sw $t0, -3892($fp)
	lw $t0, -3892($fp)
	lw $t1, 0($t0)
	sw $t1, -3896($fp)
	lw $t0, -3896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -3900($fp)
	li $t0, 1
	sw $t0, -3904($fp)
	li $t0, 4
	lw $t1, -3904($fp)
	mul $t0, $t0, $t1
	sw $t0, -3908($fp)
	lw $t0, -3908($fp)
	lw $t1, -3900($fp)
	add $t0, $t0, $t1
	sw $t0, -3912($fp)
	lw $t0, -3912($fp)
	lw $t1, 0($t0)
	sw $t1, -3916($fp)
	lw $t0, -3916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -3920($fp)
	li $t0, 2
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
	addi $t0, $fp, -20
	sw $t0, -3940($fp)
	li $t0, 3
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
	lw $t0, -196($fp)
	sw $t0, -3960($fp)
	lw $t0, -3960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -208($fp)
	sw $t0, -3964($fp)
	lw $t0, -3964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
	sw $t0, -4008($fp)
	li $t0, 2
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
	lw $t0, -292($fp)
	sw $t0, -4028($fp)
	lw $t0, -4028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -304($fp)
	sw $t0, -4032($fp)
	lw $t0, -4032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -316($fp)
	sw $t0, -4036($fp)
	lw $t0, -4036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -328($fp)
	sw $t0, -4040($fp)
	lw $t0, -4040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -4044($fp)
	li $t0, 0
	sw $t0, -4048($fp)
	li $t0, 4
	lw $t1, -4048($fp)
	mul $t0, $t0, $t1
	sw $t0, -4052($fp)
	lw $t0, -4052($fp)
	lw $t1, -4044($fp)
	add $t0, $t0, $t1
	sw $t0, -4056($fp)
	lw $t0, -4056($fp)
	lw $t1, 0($t0)
	sw $t1, -4060($fp)
	lw $t0, -4060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -4064($fp)
	li $t0, 1
	sw $t0, -4068($fp)
	li $t0, 4
	lw $t1, -4068($fp)
	mul $t0, $t0, $t1
	sw $t0, -4072($fp)
	lw $t0, -4072($fp)
	lw $t1, -4064($fp)
	add $t0, $t0, $t1
	sw $t0, -4076($fp)
	lw $t0, -4076($fp)
	lw $t1, 0($t0)
	sw $t1, -4080($fp)
	lw $t0, -4080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -4084($fp)
	li $t0, 2
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
	lw $t0, -4100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -4104($fp)
	li $t0, 3
	sw $t0, -4108($fp)
	li $t0, 4
	lw $t1, -4108($fp)
	mul $t0, $t0, $t1
	sw $t0, -4112($fp)
	lw $t0, -4112($fp)
	lw $t1, -4104($fp)
	add $t0, $t0, $t1
	sw $t0, -4116($fp)
	lw $t0, -4116($fp)
	lw $t1, 0($t0)
	sw $t1, -4120($fp)
	lw $t0, -4120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -4124($fp)
	li $t0, 4
	sw $t0, -4128($fp)
	li $t0, 4
	lw $t1, -4128($fp)
	mul $t0, $t0, $t1
	sw $t0, -4132($fp)
	lw $t0, -4132($fp)
	lw $t1, -4124($fp)
	add $t0, $t0, $t1
	sw $t0, -4136($fp)
	lw $t0, -4136($fp)
	lw $t1, 0($t0)
	sw $t1, -4140($fp)
	lw $t0, -4140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -4144($fp)
	li $t0, 5
	sw $t0, -4148($fp)
	li $t0, 4
	lw $t1, -4148($fp)
	mul $t0, $t0, $t1
	sw $t0, -4152($fp)
	lw $t0, -4152($fp)
	lw $t1, -4144($fp)
	add $t0, $t0, $t1
	sw $t0, -4156($fp)
	lw $t0, -4156($fp)
	lw $t1, 0($t0)
	sw $t1, -4160($fp)
	lw $t0, -4160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -484($fp)
	sw $t0, -4164($fp)
	lw $t0, -4164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -496($fp)
	sw $t0, -4168($fp)
	lw $t0, -4168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -508($fp)
	sw $t0, -4172($fp)
	lw $t0, -4172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -4176($fp)
	li $t0, 0
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
	addi $t0, $fp, -68
	sw $t0, -4196($fp)
	li $t0, 1
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
	addi $t0, $fp, -68
	sw $t0, -4216($fp)
	li $t0, 2
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
	addi $t0, $fp, -92
	sw $t0, -4236($fp)
	li $t0, 0
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
	addi $t0, $fp, -92
	sw $t0, -4256($fp)
	li $t0, 1
	sw $t0, -4260($fp)
	li $t0, 4
	lw $t1, -4260($fp)
	mul $t0, $t0, $t1
	sw $t0, -4264($fp)
	lw $t0, -4264($fp)
	lw $t1, -4256($fp)
	add $t0, $t0, $t1
	sw $t0, -4268($fp)
	lw $t0, -4268($fp)
	lw $t1, 0($t0)
	sw $t1, -4272($fp)
	lw $t0, -4272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -4276($fp)
	li $t0, 2
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
	addi $t0, $fp, -92
	sw $t0, -4296($fp)
	li $t0, 3
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
	addi $t0, $fp, -92
	sw $t0, -4316($fp)
	li $t0, 4
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
	addi $t0, $fp, -92
	sw $t0, -4336($fp)
	li $t0, 5
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
	lw $t0, -736($fp)
	sw $t0, -4356($fp)
	lw $t0, -4356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -748($fp)
	sw $t0, -4360($fp)
	lw $t0, -4360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4364($fp)
	addi $t0, $fp, -32
	sw $t0, -4368($fp)
	li $t0, 0
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
	lw $t1, -4384($fp)
	li $t2, 0
	bne $t1, $t2, label253
	j label252
label252:
	li $t0, 1
	sw $t0, -4364($fp)
label253:
	lw $ra, -4($fp)
	lw $v0, -4364($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -8
	lw $t0, 8($fp)
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -12($fp)
	lw $ra, -4($fp)
	lw $v0, -12($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -496
	li $t0, 59292
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	li $t0, 34661
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	li $t0, 11924
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
	li $t0, 55849
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
	li $t0, 1030
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
	li $t0, 25590
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
	li $t0, 42616
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
	li $t0, 1766
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	li $t0, 64307
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	li $t0, 19214
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	li $t0, 0
	sw $t0, -208($fp)
	lw $t0, -176($fp)
	sw $t0, -212($fp)
	li $t0, 25372
	sw $t0, -216($fp)
	lw $t0, -212($fp)
	lw $t1, -216($fp)
	add $t0, $t0, $t1
	sw $t0, -220($fp)
	lw $t0, -32($fp)
	sw $t0, -224($fp)
	lw $t1, -220($fp)
	lw $t2, -224($fp)
	bne $t1, $t2, label254
	j label255
label254:
	li $t0, 1
	sw $t0, -208($fp)
label255:
	li $t0, 0
	sw $t0, -228($fp)
	lw $t0, -176($fp)
	sw $t0, -232($fp)
	lw $t1, -232($fp)
	li $t2, 0
	bne $t1, $t2, label258
	j label257
label258:
	lw $t0, -32($fp)
	sw $t0, -236($fp)
	lw $t1, -236($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label257
label256:
	li $t0, 1
	sw $t0, -228($fp)
label257:
	li $t0, 0
	sw $t0, -240($fp)
	lw $t0, -32($fp)
	sw $t0, -244($fp)
	lw $t0, -44($fp)
	sw $t0, -248($fp)
	lw $t0, -244($fp)
	lw $t1, -248($fp)
	add $t0, $t0, $t1
	sw $t0, -252($fp)
	lw $t0, -176($fp)
	sw $t0, -256($fp)
	lw $t1, -252($fp)
	lw $t2, -256($fp)
	bne $t1, $t2, label259
	j label260
label259:
	li $t0, 1
	sw $t0, -240($fp)
label260:
	li $t0, 0
	sw $t0, -260($fp)
	lw $t0, -32($fp)
	sw $t0, -264($fp)
	lw $t0, -32($fp)
	sw $t0, -268($fp)
	lw $t1, -264($fp)
	lw $t2, -268($fp)
	blt $t1, $t2, label261
	j label263
label263:
	lw $t0, -200($fp)
	sw $t0, -272($fp)
	lw $t1, -272($fp)
	li $t2, 0
	bne $t1, $t2, label261
	j label262
label261:
	li $t0, 1
	sw $t0, -260($fp)
label262:
	addi $sp, $sp, -4
	lw $t0, -228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -260($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -276($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -280($fp)
	li $t0, 39470
	sw $t0, -284($fp)
	li $t0, 50605
	sw $t0, -288($fp)
	lw $t0, -188($fp)
	sw $t0, -292($fp)
	lw $t0, -288($fp)
	lw $t1, -292($fp)
	mul $t0, $t0, $t1
	sw $t0, -296($fp)
	li $t0, 0
	sw $t0, -300($fp)
	lw $t0, -44($fp)
	sw $t0, -304($fp)
	li $t0, 49791
	sw $t0, -308($fp)
	lw $t1, -304($fp)
	lw $t2, -308($fp)
	bge $t1, $t2, label266
	j label268
label268:
	lw $t0, -176($fp)
	sw $t0, -312($fp)
	lw $t1, -312($fp)
	li $t2, 0
	bne $t1, $t2, label266
	j label267
label266:
	li $t0, 1
	sw $t0, -300($fp)
label267:
	addi $sp, $sp, -4
	lw $t0, -284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -300($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -316($fp)
	addi $sp, $sp, 16
	li $t0, 1674
	sw $t0, -320($fp)
	lw $t1, -316($fp)
	lw $t2, -320($fp)
	blt $t1, $t2, label264
	j label265
label264:
	li $t0, 1
	sw $t0, -280($fp)
label265:
	addi $sp, $sp, -4
	lw $t0, -208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -280($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -324($fp)
	addi $sp, $sp, 16
	li $t0, 3904
	sw $t0, -328($fp)
	lw $t0, -324($fp)
	lw $t1, -328($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -332($fp)
	li $t0, 0
	sw $t0, -336($fp)
	li $t0, 57327
	sw $t0, -340($fp)
	li $t0, 32059
	sw $t0, -344($fp)
	lw $t0, -340($fp)
	lw $t1, -344($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -348($fp)
	lw $t0, -176($fp)
	sw $t0, -352($fp)
	lw $t1, -348($fp)
	lw $t2, -352($fp)
	bgt $t1, $t2, label269
	j label270
label269:
	li $t0, 1
	sw $t0, -336($fp)
label270:
	addi $t0, $fp, -24
	sw $t0, -356($fp)
	li $t0, 3
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
	addi $sp, $sp, -4
	lw $t0, -332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -372($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -376($fp)
	addi $sp, $sp, 16
	lw $t0, -32($fp)
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -44($fp)
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -388($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -408($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -428($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -448($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -468($fp)
	li $t0, 4
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
	lw $t0, -176($fp)
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -188($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -200($fp)
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 44699
	sw $t0, -500($fp)
	lw $ra, -4($fp)
	lw $v0, -500($fp)
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
	jal f8
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
