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
	addi $sp, $sp, -480
	li $t0, 23262
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	li $t0, 14179
	sw $t0, -48($fp)
	addi $t0, $fp, -32
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
	li $t0, 10915
	sw $t0, -72($fp)
	addi $t0, $fp, -32
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
	li $t0, 7521
	sw $t0, -96($fp)
	addi $t0, $fp, -32
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
	li $t0, 30485
	sw $t0, -120($fp)
	addi $t0, $fp, -32
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
	li $t0, 1313
	sw $t0, -144($fp)
	addi $t0, $fp, -32
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
	li $t0, 32804
	sw $t0, -168($fp)
	addi $t0, $fp, -32
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
	li $t0, 1832
	sw $t0, -192($fp)
	addi $t0, $fp, -32
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
	li $t0, 0
	sw $t0, -216($fp)
	li $t0, 50786
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -224($fp)
	li $t0, 33301
	sw $t0, -228($fp)
	li $t0, 0
	lw $t1, -228($fp)
	sub $t0, $t0, $t1
	sw $t0, -232($fp)
	addi $sp, $sp, -4
	lw $t0, -224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -232($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -236($fp)
	addi $sp, $sp, 12
	li $t0, 19292
	sw $t0, -240($fp)
	lw $t0, -236($fp)
	lw $t1, -240($fp)
	mul $t0, $t0, $t1
	sw $t0, -244($fp)
	lw $t1, -244($fp)
	li $t2, 0
	bne $t1, $t2, label123
	j label122
label123:
	li $t0, 0
	sw $t0, -248($fp)
	lw $t0, -40($fp)
	sw $t0, -252($fp)
	lw $t0, 8($fp)
	sw $t0, -256($fp)
	lw $t0, -252($fp)
	lw $t1, -256($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -260($fp)
	li $t0, 8478
	sw $t0, -264($fp)
	lw $t1, -260($fp)
	lw $t2, -264($fp)
	bge $t1, $t2, label124
	j label125
label124:
	li $t0, 1
	sw $t0, -248($fp)
label125:
	li $t0, 0
	sw $t0, -268($fp)
	lw $t0, 8($fp)
	sw $t0, -272($fp)
	lw $t1, -272($fp)
	li $t2, 0
	bne $t1, $t2, label127
	j label126
label126:
	li $t0, 1
	sw $t0, -268($fp)
label127:
	lw $t0, 8($fp)
	sw $t0, -276($fp)
	lw $t0, -268($fp)
	lw $t1, -276($fp)
	add $t0, $t0, $t1
	sw $t0, -280($fp)
	addi $sp, $sp, -4
	lw $t0, -248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -280($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -284($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -32
	sw $t0, -288($fp)
	lw $t0, 8($fp)
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
	lw $t1, -284($fp)
	lw $t2, -304($fp)
	bgt $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -216($fp)
label122:
	lw $t0, -40($fp)
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -312($fp)
	li $t0, 0
	sw $t0, -316($fp)
	li $t0, 4
	lw $t1, -316($fp)
	mul $t0, $t0, $t1
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	lw $t1, -312($fp)
	add $t0, $t0, $t1
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	lw $t1, 0($t0)
	sw $t1, -328($fp)
	lw $t0, -328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -332($fp)
	li $t0, 1
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
	lw $t0, -348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -352($fp)
	li $t0, 2
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
	lw $t0, -368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -372($fp)
	li $t0, 3
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
	lw $t0, -388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -392($fp)
	li $t0, 4
	sw $t0, -396($fp)
	li $t0, 4
	lw $t1, -396($fp)
	mul $t0, $t0, $t1
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	lw $t1, -392($fp)
	add $t0, $t0, $t1
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	lw $t1, 0($t0)
	sw $t1, -408($fp)
	lw $t0, -408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -412($fp)
	li $t0, 5
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
	addi $t0, $fp, -32
	sw $t0, -432($fp)
	li $t0, 6
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
	addi $t0, $fp, -32
	sw $t0, -452($fp)
	lw $t0, 4($fp)
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
	lw $t0, 4($fp)
	sw $t0, -472($fp)
	lw $t0, -468($fp)
	lw $t1, -472($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -476($fp)
	li $t0, 5162
	sw $t0, -480($fp)
	addi $sp, $sp, -4
	lw $t0, -476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -480($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -484($fp)
	addi $sp, $sp, 12
	lw $ra, -4($fp)
	lw $v0, -484($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -700
	li $t0, 25628
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	li $t0, 52199
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	li $t0, 22717
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
	li $t0, 17870
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
	li $t0, 42182
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
	li $t0, 40472
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
	li $t0, 56154
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
	li $t0, 16339
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	addi $t0, $fp, -24
	sw $t0, -184($fp)
	li $t0, 0
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
	li $t0, 63859
	sw $t0, -204($fp)
	lw $t0, -200($fp)
	lw $t1, -204($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -212($fp)
	addi $t0, $fp, -24
	sw $t0, -216($fp)
	lw $t0, -44($fp)
	sw $t0, -220($fp)
	li $t0, 0
	lw $t1, -220($fp)
	sub $t0, $t0, $t1
	sw $t0, -224($fp)
	li $t0, 0
	lw $t1, -224($fp)
	sub $t0, $t0, $t1
	sw $t0, -228($fp)
	li $t0, 4
	lw $t1, -228($fp)
	mul $t0, $t0, $t1
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	lw $t1, -216($fp)
	add $t0, $t0, $t1
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	lw $t1, 0($t0)
	sw $t1, -240($fp)
	li $t0, 0
	sw $t0, -244($fp)
	lw $t0, -44($fp)
	sw $t0, -248($fp)
	li $t0, 33021
	sw $t0, -252($fp)
	lw $t0, -248($fp)
	lw $t1, -252($fp)
	mul $t0, $t0, $t1
	sw $t0, -256($fp)
	li $t0, 0
	lw $t1, -256($fp)
	sub $t0, $t0, $t1
	sw $t0, -260($fp)
	lw $t0, 4($fp)
	sw $t0, -264($fp)
	addi $sp, $sp, -4
	lw $t0, -260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -264($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -268($fp)
	addi $sp, $sp, 12
	lw $t1, -268($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label130
label130:
	lw $t0, 16($fp)
	sw $t0, -272($fp)
	lw $t1, -272($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label129
label128:
	li $t0, 1
	sw $t0, -244($fp)
label129:
	li $t0, 0
	sw $t0, -276($fp)
	lw $t0, 16($fp)
	sw $t0, -280($fp)
	lw $t1, -280($fp)
	li $t2, 0
	bne $t1, $t2, label132
	j label131
label131:
	li $t0, 1
	sw $t0, -276($fp)
label132:
	li $t0, 12463
	sw $t0, -284($fp)
	li $t0, 59272
	sw $t0, -288($fp)
	lw $t0, -284($fp)
	lw $t1, -288($fp)
	sub $t0, $t0, $t1
	sw $t0, -292($fp)
	lw $t0, -176($fp)
	sw $t0, -296($fp)
	lw $t0, -292($fp)
	lw $t1, -296($fp)
	add $t0, $t0, $t1
	sw $t0, -300($fp)
	li $t0, 51751
	sw $t0, -304($fp)
	lw $t0, 16($fp)
	sw $t0, -308($fp)
	lw $t0, -304($fp)
	lw $t1, -308($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -312($fp)
	li $t0, 2535
	sw $t0, -316($fp)
	lw $t0, -312($fp)
	lw $t1, -316($fp)
	add $t0, $t0, $t1
	sw $t0, -320($fp)
	li $t0, 0
	sw $t0, -324($fp)
	li $t0, 28488
	sw $t0, -328($fp)
	li $t0, 53892
	sw $t0, -332($fp)
	lw $t0, -328($fp)
	lw $t1, -332($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -336($fp)
	li $t0, 1548
	sw $t0, -340($fp)
	lw $t1, -336($fp)
	lw $t2, -340($fp)
	bgt $t1, $t2, label133
	j label134
label133:
	li $t0, 1
	sw $t0, -324($fp)
label134:
	li $t0, 0
	sw $t0, -344($fp)
	lw $t0, -44($fp)
	sw $t0, -348($fp)
	lw $t1, -348($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label136
label137:
	lw $t0, 12($fp)
	sw $t0, -352($fp)
	lw $t1, -352($fp)
	li $t2, 0
	bne $t1, $t2, label135
	j label136
label135:
	li $t0, 1
	sw $t0, -344($fp)
label136:
	addi $sp, $sp, -4
	lw $t0, -276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -344($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -356($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -360($fp)
	li $t0, 13493
	sw $t0, -364($fp)
	lw $t1, -364($fp)
	li $t2, 0
	bne $t1, $t2, label138
	j label139
label138:
	li $t0, 1
	sw $t0, -360($fp)
label139:
	li $t0, 0
	sw $t0, -368($fp)
	lw $t0, 12($fp)
	sw $t0, -372($fp)
	lw $t1, -372($fp)
	li $t2, 0
	bne $t1, $t2, label143
	j label142
label143:
	lw $t0, -44($fp)
	sw $t0, -376($fp)
	lw $t1, -376($fp)
	li $t2, 0
	bne $t1, $t2, label140
	j label142
label142:
	li $t0, 41996
	sw $t0, -380($fp)
	lw $t1, -380($fp)
	li $t2, 0
	bne $t1, $t2, label140
	j label141
label140:
	li $t0, 1
	sw $t0, -368($fp)
label141:
	li $t0, 0
	sw $t0, -384($fp)
	li $t0, 42111
	sw $t0, -388($fp)
	lw $t1, -388($fp)
	li $t2, 0
	bne $t1, $t2, label146
	j label144
label146:
	li $t0, 40134
	sw $t0, -392($fp)
	lw $t1, -392($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label145
label144:
	li $t0, 1
	sw $t0, -384($fp)
label145:
	addi $sp, $sp, -4
	lw $t0, -244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -384($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -396($fp)
	addi $sp, $sp, 24
	li $t0, 13777
	sw $t0, -400($fp)
	li $t0, 0
	lw $t1, -400($fp)
	sub $t0, $t0, $t1
	sw $t0, -404($fp)
	lw $t0, -396($fp)
	lw $t1, -404($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -408($fp)
	lw $t0, -240($fp)
	lw $t1, -408($fp)
	add $t0, $t0, $t1
	sw $t0, -412($fp)
	lw $ra, -4($fp)
	lw $v0, -412($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label147:
	lw $t0, 8($fp)
	sw $t0, -416($fp)
	li $t0, 0
	sw $t0, -420($fp)
	li $t0, 42219
	sw $t0, -424($fp)
	li $t0, 39669
	sw $t0, -428($fp)
	lw $t0, -424($fp)
	lw $t1, -428($fp)
	add $t0, $t0, $t1
	sw $t0, -432($fp)
	lw $t0, -44($fp)
	sw $t0, -436($fp)
	lw $t1, -432($fp)
	lw $t2, -436($fp)
	beq $t1, $t2, label150
	j label151
label150:
	li $t0, 1
	sw $t0, -420($fp)
label151:
	li $t0, 0
	sw $t0, -440($fp)
	li $t0, 16952
	sw $t0, -444($fp)
	li $t0, 14237
	sw $t0, -448($fp)
	lw $t1, -444($fp)
	lw $t2, -448($fp)
	beq $t1, $t2, label152
	j label153
label152:
	li $t0, 1
	sw $t0, -440($fp)
label153:
	addi $t0, $fp, -24
	sw $t0, -452($fp)
	lw $t0, -176($fp)
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
	li $t0, 0
	sw $t0, -472($fp)
	li $t0, 11790
	sw $t0, -476($fp)
	lw $t1, -476($fp)
	li $t2, 0
	bne $t1, $t2, label157
	j label156
label157:
	li $t0, 54145
	sw $t0, -480($fp)
	lw $t1, -480($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label156
label156:
	lw $t0, -176($fp)
	sw $t0, -484($fp)
	lw $t1, -484($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label155
label154:
	li $t0, 1
	sw $t0, -472($fp)
label155:
	li $t0, 0
	sw $t0, -488($fp)
	li $t0, 26540
	sw $t0, -492($fp)
	li $t0, 34853
	sw $t0, -496($fp)
	lw $t1, -492($fp)
	lw $t2, -496($fp)
	beq $t1, $t2, label160
	j label159
label160:
	li $t0, 47078
	sw $t0, -500($fp)
	lw $t1, -500($fp)
	li $t2, 0
	bne $t1, $t2, label158
	j label159
label158:
	li $t0, 1
	sw $t0, -488($fp)
label159:
	addi $sp, $sp, -4
	lw $t0, -472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -488($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -504($fp)
	addi $sp, $sp, 12
	li $t0, 55556
	sw $t0, -508($fp)
	lw $t0, -504($fp)
	lw $t1, -508($fp)
	sub $t0, $t0, $t1
	sw $t0, -512($fp)
	lw $t0, 16($fp)
	sw $t0, -516($fp)
	addi $sp, $sp, -4
	lw $t0, -420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -516($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -520($fp)
	addi $sp, $sp, 24
	li $t0, 32108
	sw $t0, -524($fp)
	lw $t0, -520($fp)
	lw $t1, -524($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -528($fp)
	lw $t1, -416($fp)
	lw $t2, -528($fp)
	blt $t1, $t2, label148
	j label149
label148:
label161:
	lw $t0, -32($fp)
	sw $t0, -532($fp)
	li $t0, 0
	lw $t1, -532($fp)
	sub $t0, $t0, $t1
	sw $t0, -536($fp)
	lw $t1, -536($fp)
	li $t2, 0
	bne $t1, $t2, label162
	j label163
label162:
	li $t0, 0
	sw $t0, -540($fp)
	li $t0, 35204
	sw $t0, -544($fp)
	lw $t1, -544($fp)
	li $t2, 0
	bne $t1, $t2, label165
	j label166
label166:
	lw $t0, 20($fp)
	sw $t0, -548($fp)
	lw $t1, -548($fp)
	li $t2, 0
	bne $t1, $t2, label164
	j label165
label164:
	li $t0, 1
	sw $t0, -540($fp)
label165:
	li $t0, 22726
	sw $t0, -552($fp)
	li $t0, 0
	sw $t0, -556($fp)
	li $t0, 14606
	sw $t0, -560($fp)
	lw $t1, -560($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label167
label167:
	li $t0, 1
	sw $t0, -556($fp)
label168:
	lw $t0, 16($fp)
	sw $t0, -564($fp)
	li $t0, 0
	sw $t0, -568($fp)
	lw $t0, -44($fp)
	sw $t0, -572($fp)
	lw $t0, 12($fp)
	sw $t0, -576($fp)
	lw $t1, -572($fp)
	lw $t2, -576($fp)
	blt $t1, $t2, label169
	j label170
label169:
	li $t0, 1
	sw $t0, -568($fp)
label170:
	addi $sp, $sp, -4
	lw $t0, -540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -568($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -580($fp)
	addi $sp, $sp, 24
	li $t0, 18865
	sw $t0, -584($fp)
	addi $sp, $sp, -4
	lw $t0, -580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -584($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -588($fp)
	addi $sp, $sp, 12
	lw $ra, -4($fp)
	lw $v0, -588($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label161
label163:
	j label147
label149:
	lw $t0, -32($fp)
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -44($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -600($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -620($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -640($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -660($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -680($fp)
	li $t0, 4
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
	lw $t0, -176($fp)
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -32($fp)
	sw $t0, -704($fp)
	lw $ra, -4($fp)
	lw $v0, -704($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -248
	li $t0, 17809
	sw $t0, -20($fp)
	addi $t0, $fp, -16
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
	li $t0, 23560
	sw $t0, -44($fp)
	addi $t0, $fp, -16
	sw $t0, -48($fp)
	li $t0, 1
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
	li $t0, 33527
	sw $t0, -68($fp)
	addi $t0, $fp, -16
	sw $t0, -72($fp)
	li $t0, 2
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
	li $t0, 0
	sw $t0, -92($fp)
	li $t0, 0
	sw $t0, -96($fp)
	lw $t0, 4($fp)
	sw $t0, -100($fp)
	lw $t1, -100($fp)
	li $t2, 0
	bne $t1, $t2, label173
	j label174
label173:
	li $t0, 1
	sw $t0, -96($fp)
label174:
	lw $t0, 8($fp)
	sw $t0, -104($fp)
	lw $t0, -96($fp)
	lw $t1, -104($fp)
	mul $t0, $t0, $t1
	sw $t0, -108($fp)
	li $t0, 59920
	sw $t0, -112($fp)
	lw $t0, -108($fp)
	lw $t1, -112($fp)
	add $t0, $t0, $t1
	sw $t0, -116($fp)
	li $t0, 0
	sw $t0, -120($fp)
	addi $t0, $fp, -16
	sw $t0, -124($fp)
	li $t0, 1
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
	lw $t1, -140($fp)
	li $t2, 0
	bne $t1, $t2, label176
	j label175
label175:
	li $t0, 1
	sw $t0, -120($fp)
label176:
	li $t0, 0
	lw $t1, -120($fp)
	sub $t0, $t0, $t1
	sw $t0, -144($fp)
	lw $t1, -116($fp)
	lw $t2, -144($fp)
	blt $t1, $t2, label171
	j label172
label171:
	li $t0, 1
	sw $t0, -92($fp)
label172:
	li $t0, 0
	sw $t0, -148($fp)
	lw $t0, 4($fp)
	sw $t0, -152($fp)
	lw $t1, -152($fp)
	li $t2, 0
	bne $t1, $t2, label178
	j label177
label177:
	li $t0, 1
	sw $t0, -148($fp)
label178:
	addi $t0, $fp, -16
	sw $t0, -156($fp)
	li $t0, 0
	sw $t0, -160($fp)
	li $t0, 4
	lw $t1, -160($fp)
	mul $t0, $t0, $t1
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	lw $t1, -156($fp)
	add $t0, $t0, $t1
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	lw $t1, 0($t0)
	sw $t1, -172($fp)
	addi $t0, $fp, -16
	sw $t0, -176($fp)
	li $t0, 0
	sw $t0, -180($fp)
	li $t0, 4
	lw $t1, -180($fp)
	mul $t0, $t0, $t1
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	lw $t1, -176($fp)
	add $t0, $t0, $t1
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	lw $t1, 0($t0)
	sw $t1, -192($fp)
	lw $t0, -192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -196($fp)
	li $t0, 1
	sw $t0, -200($fp)
	li $t0, 4
	lw $t1, -200($fp)
	mul $t0, $t0, $t1
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	lw $t1, -196($fp)
	add $t0, $t0, $t1
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	lw $t1, 0($t0)
	sw $t1, -212($fp)
	lw $t0, -212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -216($fp)
	li $t0, 2
	sw $t0, -220($fp)
	li $t0, 4
	lw $t1, -220($fp)
	mul $t0, $t0, $t1
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	lw $t1, -216($fp)
	add $t0, $t0, $t1
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	lw $t1, 0($t0)
	sw $t1, -232($fp)
	lw $t0, -232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 63879
	sw $t0, -236($fp)
	li $t0, 9425
	sw $t0, -240($fp)
	lw $t0, -236($fp)
	lw $t1, -240($fp)
	sub $t0, $t0, $t1
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -252($fp)
	lw $ra, -4($fp)
	lw $v0, -252($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -572
	li $t0, 12861
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 879
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 21889
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	lw $t0, -12($fp)
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -36($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -56($fp)
	lw $t0, -12($fp)
	sw $t0, -60($fp)
	li $t0, 0
	lw $t1, -60($fp)
	sub $t0, $t0, $t1
	sw $t0, -64($fp)
	li $t0, 0
	lw $t1, -64($fp)
	sub $t0, $t0, $t1
	sw $t0, -68($fp)
	li $t0, 0
	sw $t0, -72($fp)
	li $t0, 6597
	sw $t0, -76($fp)
	li $t0, 0
	lw $t1, -76($fp)
	sub $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $t1, -80($fp)
	li $t2, 0
	bne $t1, $t2, label182
	j label181
label181:
	li $t0, 1
	sw $t0, -72($fp)
label182:
	lw $t1, -68($fp)
	lw $t2, -72($fp)
	bgt $t1, $t2, label179
	j label180
label179:
	li $t0, 1
	sw $t0, -56($fp)
label180:
	lw $ra, -4($fp)
	lw $v0, -56($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 33900
	sw $t0, -124($fp)
	addi $t0, $fp, -120
	sw $t0, -128($fp)
	li $t0, 0
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
	li $t0, 35666
	sw $t0, -148($fp)
	addi $t0, $fp, -120
	sw $t0, -152($fp)
	li $t0, 1
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
	li $t0, 33138
	sw $t0, -172($fp)
	addi $t0, $fp, -120
	sw $t0, -176($fp)
	li $t0, 2
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
	li $t0, 3217
	sw $t0, -196($fp)
	addi $t0, $fp, -120
	sw $t0, -200($fp)
	li $t0, 3
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
	li $t0, 17208
	sw $t0, -220($fp)
	addi $t0, $fp, -120
	sw $t0, -224($fp)
	li $t0, 4
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
	li $t0, 44928
	sw $t0, -244($fp)
	addi $t0, $fp, -120
	sw $t0, -248($fp)
	li $t0, 5
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
	li $t0, 57363
	sw $t0, -268($fp)
	addi $t0, $fp, -120
	sw $t0, -272($fp)
	li $t0, 6
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
	li $t0, 7228
	sw $t0, -292($fp)
	addi $t0, $fp, -120
	sw $t0, -296($fp)
	li $t0, 7
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
	li $t0, 61881
	sw $t0, -316($fp)
	addi $t0, $fp, -120
	sw $t0, -320($fp)
	li $t0, 8
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
	li $t0, 6064
	sw $t0, -340($fp)
	addi $t0, $fp, -120
	sw $t0, -344($fp)
	li $t0, 9
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
	li $t0, 49447
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	addi $t0, $fp, -120
	sw $t0, -376($fp)
	li $t0, 0
	sw $t0, -380($fp)
	lw $t0, -36($fp)
	sw $t0, -384($fp)
	li $t0, 36014
	sw $t0, -388($fp)
	lw $t1, -384($fp)
	lw $t2, -388($fp)
	bne $t1, $t2, label185
	j label184
label185:
	li $t0, 38172
	sw $t0, -392($fp)
	lw $t1, -392($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label184
label183:
	li $t0, 1
	sw $t0, -380($fp)
label184:
	li $t0, 4
	lw $t1, -380($fp)
	mul $t0, $t0, $t1
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	lw $t1, -376($fp)
	add $t0, $t0, $t1
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	lw $t1, 0($t0)
	sw $t1, -404($fp)
	lw $t0, -36($fp)
	sw $t0, -408($fp)
	lw $t0, -404($fp)
	lw $t1, -408($fp)
	mul $t0, $t0, $t1
	sw $t0, -412($fp)
	addi $t0, $fp, -120
	sw $t0, -416($fp)
	li $t0, 6
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
	sw $t0, -436($fp)
	lw $t0, -36($fp)
	sw $t0, -440($fp)
	lw $t1, -440($fp)
	li $t2, 0
	bne $t1, $t2, label187
	j label186
label186:
	li $t0, 1
	sw $t0, -436($fp)
label187:
	lw $t0, -432($fp)
	lw $t1, -436($fp)
	mul $t0, $t0, $t1
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -448($fp)
	li $t0, 0
	sw $t0, -452($fp)
	addi $t0, $fp, -120
	sw $t0, -456($fp)
	li $t0, 8
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
	li $t0, 2893
	sw $t0, -476($fp)
	lw $t0, -472($fp)
	lw $t1, -476($fp)
	mul $t0, $t0, $t1
	sw $t0, -480($fp)
	lw $t1, -480($fp)
	li $t2, 0
	bne $t1, $t2, label188
	j label191
label191:
	lw $t0, -36($fp)
	sw $t0, -484($fp)
	li $t0, 18923
	sw $t0, -488($fp)
	lw $t0, -484($fp)
	lw $t1, -488($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -492($fp)
	lw $t1, -492($fp)
	li $t2, 0
	bne $t1, $t2, label188
	j label190
label190:
	jal f9
	sw $v0, -496($fp)
	addi $sp, $sp, 4
	lw $t1, -496($fp)
	li $t2, 0
	bne $t1, $t2, label188
	j label189
label188:
	li $t0, 1
	sw $t0, -452($fp)
label189:
	lw $t0, -12($fp)
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -36($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -512($fp)
	li $t0, 0
	sw $t0, -516($fp)
	lw $t0, -36($fp)
	sw $t0, -520($fp)
	li $t0, 62815
	sw $t0, -524($fp)
	lw $t0, -520($fp)
	lw $t1, -524($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -528($fp)
	li $t0, 0
	lw $t1, -528($fp)
	sub $t0, $t0, $t1
	sw $t0, -532($fp)
	li $t0, 0
	lw $t1, -532($fp)
	sub $t0, $t0, $t1
	sw $t0, -536($fp)
	lw $t0, -36($fp)
	sw $t0, -540($fp)
	li $t0, 0
	lw $t1, -540($fp)
	sub $t0, $t0, $t1
	sw $t0, -544($fp)
	lw $t1, -536($fp)
	lw $t2, -544($fp)
	bge $t1, $t2, label194
	j label195
label194:
	li $t0, 1
	sw $t0, -516($fp)
label195:
	lw $t0, -36($fp)
	sw $t0, -548($fp)
	li $t0, 15958
	sw $t0, -552($fp)
	lw $t0, -548($fp)
	lw $t1, -552($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -556($fp)
	li $t0, 5155
	sw $t0, -560($fp)
	lw $t0, -556($fp)
	lw $t1, -560($fp)
	mul $t0, $t0, $t1
	sw $t0, -564($fp)
	li $t0, 17081
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -572($fp)
	addi $sp, $sp, -4
	lw $t0, -564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -572($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -576($fp)
	addi $sp, $sp, 12
	lw $t1, -516($fp)
	lw $t2, -576($fp)
	beq $t1, $t2, label192
	j label193
label192:
	li $t0, 1
	sw $t0, -512($fp)
label193:
	lw $ra, -4($fp)
	lw $v0, -512($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2456
	li $t0, 43727
	sw $t0, -56($fp)
	addi $t0, $fp, -28
	sw $t0, -60($fp)
	li $t0, 0
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
	li $t0, 14302
	sw $t0, -80($fp)
	addi $t0, $fp, -28
	sw $t0, -84($fp)
	li $t0, 1
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
	li $t0, 14581
	sw $t0, -104($fp)
	addi $t0, $fp, -28
	sw $t0, -108($fp)
	li $t0, 2
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
	li $t0, 56589
	sw $t0, -128($fp)
	addi $t0, $fp, -28
	sw $t0, -132($fp)
	li $t0, 3
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
	li $t0, 15181
	sw $t0, -152($fp)
	addi $t0, $fp, -28
	sw $t0, -156($fp)
	li $t0, 4
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
	li $t0, 36470
	sw $t0, -176($fp)
	addi $t0, $fp, -28
	sw $t0, -180($fp)
	li $t0, 5
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
	li $t0, 63186
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	li $t0, 49081
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	li $t0, 6600
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -232($fp)
	li $t0, 30788
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	li $t0, 52298
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	li $t0, 23808
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	li $t0, 10181
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	li $t0, 44125
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	li $t0, 31036
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	li $t0, 6526
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	li $t0, 50190
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	li $t0, 14947
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	sw $t0, -340($fp)
	li $t0, 42540
	sw $t0, -344($fp)
	addi $t0, $fp, -36
	sw $t0, -348($fp)
	li $t0, 0
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
	li $t0, 22826
	sw $t0, -368($fp)
	addi $t0, $fp, -36
	sw $t0, -372($fp)
	li $t0, 1
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
	li $t0, 17723
	sw $t0, -392($fp)
	addi $t0, $fp, -44
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
	li $t0, 27625
	sw $t0, -416($fp)
	addi $t0, $fp, -44
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
	li $t0, 18189
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
	li $t0, 55703
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
label196:
	li $t0, 30518
	sw $t0, -488($fp)
	li $t0, 0
	sw $t0, -492($fp)
	li $t0, 37112
	sw $t0, -496($fp)
	lw $t1, -496($fp)
	li $t2, 0
	bne $t1, $t2, label202
	j label201
label201:
	li $t0, 1
	sw $t0, -492($fp)
label202:
	lw $t0, -488($fp)
	lw $t1, -492($fp)
	sub $t0, $t0, $t1
	sw $t0, -500($fp)
	lw $t1, -500($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label199
label200:
	lw $t0, -336($fp)
	sw $t0, -504($fp)
	lw $t1, -504($fp)
	li $t2, 0
	bne $t1, $t2, label197
	j label199
label199:
	li $t0, 12096
	sw $t0, -508($fp)
	lw $t0, -216($fp)
	sw $t0, -512($fp)
	lw $t0, -508($fp)
	lw $t1, -512($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -516($fp)
	li $t0, 0
	lw $t1, -516($fp)
	sub $t0, $t0, $t1
	sw $t0, -520($fp)
	li $t0, 0
	sw $t0, -524($fp)
	li $t0, 0
	sw $t0, -528($fp)
	lw $t0, -204($fp)
	sw $t0, -532($fp)
	lw $t1, -532($fp)
	li $t2, 0
	bne $t1, $t2, label207
	j label206
label206:
	li $t0, 1
	sw $t0, -528($fp)
label207:
	lw $t0, -312($fp)
	sw $t0, -536($fp)
	lw $t1, -528($fp)
	lw $t2, -536($fp)
	blt $t1, $t2, label204
	j label205
label204:
	li $t0, 1
	sw $t0, -524($fp)
label205:
	li $t0, 54193
	sw $t0, -540($fp)
	li $t0, 0
	sw $t0, -544($fp)
	li $t0, 0
	sw $t0, -548($fp)
	li $t0, 27796
	sw $t0, -552($fp)
	lw $t1, -552($fp)
	li $t2, 0
	bne $t1, $t2, label211
	j label210
label210:
	li $t0, 1
	sw $t0, -548($fp)
label211:
	lw $t0, -288($fp)
	sw $t0, -556($fp)
	lw $t1, -548($fp)
	lw $t2, -556($fp)
	beq $t1, $t2, label208
	j label209
label208:
	li $t0, 1
	sw $t0, -544($fp)
label209:
	li $t0, 61674
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, 20($fp)
	lw $t0, 20($fp)
	sw $t0, -564($fp)
	addi $sp, $sp, -4
	lw $t0, -520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -564($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -568($fp)
	addi $sp, $sp, 24
	lw $t1, -568($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label198
label203:
	li $t0, 32952
	sw $t0, -572($fp)
	lw $t1, -572($fp)
	li $t2, 0
	bne $t1, $t2, label197
	j label198
label197:
	li $t0, 0
	sw $t0, -576($fp)
	li $t0, 32385
	sw $t0, -580($fp)
	lw $t1, -580($fp)
	li $t2, 0
	bne $t1, $t2, label214
	j label212
label214:
	lw $t0, -252($fp)
	sw $t0, -584($fp)
	li $t0, 0
	lw $t1, -584($fp)
	sub $t0, $t0, $t1
	sw $t0, -588($fp)
	li $t0, 0
	lw $t1, -588($fp)
	sub $t0, $t0, $t1
	sw $t0, -592($fp)
	li $t0, 0
	lw $t1, -592($fp)
	sub $t0, $t0, $t1
	sw $t0, -596($fp)
	lw $t1, -596($fp)
	li $t2, 0
	bne $t1, $t2, label212
	j label213
label212:
	li $t0, 1
	sw $t0, -576($fp)
label213:
	lw $ra, -4($fp)
	lw $v0, -576($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label196
label198:
	li $t0, 0
	sw $t0, -600($fp)
	li $t0, 26398
	sw $t0, -604($fp)
	lw $t1, -604($fp)
	li $t2, 0
	bne $t1, $t2, label216
	j label217
label217:
	li $t0, 47533
	sw $t0, -608($fp)
	lw $t1, -608($fp)
	li $t2, 0
	bne $t1, $t2, label216
	j label215
label215:
	li $t0, 1
	sw $t0, -600($fp)
label216:
label218:
	li $t0, 23438
	sw $t0, -612($fp)
	lw $t1, -612($fp)
	li $t2, 0
	bne $t1, $t2, label219
	j label220
label219:
	li $t0, 41579
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
label221:
	addi $t0, $fp, -28
	sw $t0, -628($fp)
	lw $t0, -620($fp)
	sw $t0, -632($fp)
	li $t0, 18467
	sw $t0, -636($fp)
	lw $t0, -632($fp)
	lw $t1, -636($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -640($fp)
	addi $t0, $fp, -28
	sw $t0, -644($fp)
	li $t0, 2
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
	lw $t0, -640($fp)
	lw $t1, -660($fp)
	sub $t0, $t0, $t1
	sw $t0, -664($fp)
	li $t0, 4
	lw $t1, -664($fp)
	mul $t0, $t0, $t1
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	lw $t1, -628($fp)
	add $t0, $t0, $t1
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	lw $t1, 0($t0)
	sw $t1, -676($fp)
	lw $t1, -676($fp)
	li $t2, 0
	bne $t1, $t2, label222
	j label223
label222:
label224:
	li $t0, 25067
	sw $t0, -680($fp)
	lw $t1, -680($fp)
	li $t2, 0
	bne $t1, $t2, label225
	j label226
label225:
label227:
	lw $t0, -324($fp)
	sw $t0, -684($fp)
	lw $t0, -312($fp)
	sw $t0, -688($fp)
	lw $t0, 20($fp)
	sw $t0, -692($fp)
	lw $t0, -688($fp)
	lw $t1, -692($fp)
	mul $t0, $t0, $t1
	sw $t0, -696($fp)
	li $t0, 0
	lw $t1, -696($fp)
	sub $t0, $t0, $t1
	sw $t0, -700($fp)
	lw $t0, -684($fp)
	lw $t1, -700($fp)
	add $t0, $t0, $t1
	sw $t0, -704($fp)
	li $t0, 51877
	sw $t0, -708($fp)
	lw $t0, -288($fp)
	sw $t0, -712($fp)
	li $t0, 11887
	sw $t0, -716($fp)
	lw $t0, -712($fp)
	lw $t1, -716($fp)
	mul $t0, $t0, $t1
	sw $t0, -720($fp)
	lw $t0, -708($fp)
	lw $t1, -720($fp)
	sub $t0, $t0, $t1
	sw $t0, -724($fp)
	lw $t1, -704($fp)
	lw $t2, -724($fp)
	ble $t1, $t2, label228
	j label229
label228:
label230:
	addi $t0, $fp, -52
	sw $t0, -728($fp)
	lw $t0, 8($fp)
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
	li $t0, 14375
	sw $t0, -748($fp)
	lw $t0, -744($fp)
	lw $t1, -748($fp)
	add $t0, $t0, $t1
	sw $t0, -752($fp)
	lw $t0, 4($fp)
	sw $t0, -756($fp)
	jal f9
	sw $v0, -760($fp)
	addi $sp, $sp, 4
	lw $t0, -620($fp)
	sw $t0, -764($fp)
	lw $t0, -760($fp)
	lw $t1, -764($fp)
	add $t0, $t0, $t1
	sw $t0, -768($fp)
	li $t0, 0
	sw $t0, -772($fp)
	li $t0, 62058
	sw $t0, -776($fp)
	li $t0, 1
	sw $t0, -780($fp)
	lw $t0, -776($fp)
	lw $t1, -780($fp)
	mul $t0, $t0, $t1
	sw $t0, -784($fp)
	lw $t1, -784($fp)
	li $t2, 0
	bne $t1, $t2, label236
	j label238
label238:
	lw $t0, -288($fp)
	sw $t0, -788($fp)
	lw $t1, -788($fp)
	li $t2, 0
	bne $t1, $t2, label236
	j label237
label236:
	li $t0, 1
	sw $t0, -772($fp)
label237:
	li $t0, 0
	sw $t0, -792($fp)
	lw $t0, -228($fp)
	sw $t0, -796($fp)
	li $t0, 48875
	sw $t0, -800($fp)
	lw $t1, -796($fp)
	lw $t2, -800($fp)
	bne $t1, $t2, label239
	j label240
label239:
	li $t0, 1
	sw $t0, -792($fp)
label240:
	addi $sp, $sp, -4
	lw $t0, -752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -792($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -804($fp)
	addi $sp, $sp, 24
	lw $t1, -804($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label232
label235:
	lw $t0, -324($fp)
	sw $t0, -808($fp)
	lw $t1, -808($fp)
	li $t2, 0
	bne $t1, $t2, label234
	j label232
label234:
	lw $t0, -288($fp)
	sw $t0, -812($fp)
	lw $t0, -288($fp)
	sw $t0, -816($fp)
	lw $t0, -812($fp)
	lw $t1, -816($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -820($fp)
	lw $t0, 8($fp)
	sw $t0, -824($fp)
	lw $t1, -820($fp)
	lw $t2, -824($fp)
	bgt $t1, $t2, label233
	j label232
label233:
	lw $t0, -324($fp)
	sw $t0, -828($fp)
	li $t0, 3048
	sw $t0, -832($fp)
	lw $t0, -828($fp)
	lw $t1, -832($fp)
	mul $t0, $t0, $t1
	sw $t0, -836($fp)
	li $t0, 40666
	sw $t0, -840($fp)
	lw $t0, -836($fp)
	lw $t1, -840($fp)
	add $t0, $t0, $t1
	sw $t0, -844($fp)
	li $t0, 0
	sw $t0, -848($fp)
	lw $t0, 12($fp)
	sw $t0, -852($fp)
	lw $t0, 16($fp)
	sw $t0, -856($fp)
	lw $t1, -852($fp)
	lw $t2, -856($fp)
	bgt $t1, $t2, label241
	j label242
label241:
	li $t0, 1
	sw $t0, -848($fp)
label242:
	lw $t1, -844($fp)
	lw $t2, -848($fp)
	bne $t1, $t2, label231
	j label232
label231:
	li $t0, 63493
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	sw $t0, -864($fp)
	addi $t0, $fp, -28
	sw $t0, -868($fp)
	li $t0, 4
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
	lw $t0, -312($fp)
	sw $t0, -888($fp)
	lw $t0, -884($fp)
	lw $t1, -888($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -892($fp)
	addi $sp, $sp, -4
	lw $t0, -864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -892($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -896($fp)
	addi $sp, $sp, 12
	j label230
label232:
	j label227
label229:
	j label224
label226:
	j label221
label223:
	li $t0, 47045
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	sw $t0, -908($fp)
	li $t0, 7677
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	sw $t0, -920($fp)
	li $t0, 16146
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -932($fp)
	li $t0, 37212
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	sw $t0, -944($fp)
	li $t0, 38196
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	sw $t0, -956($fp)
	lw $t0, -904($fp)
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -916($fp)
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -928($fp)
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -940($fp)
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -952($fp)
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -980($fp)
	jal f9
	sw $v0, -984($fp)
	addi $sp, $sp, 4
	lw $t1, -984($fp)
	li $t2, 0
	bne $t1, $t2, label245
	j label244
label245:
	li $t0, 0
	sw $t0, -988($fp)
	li $t0, 0
	sw $t0, -992($fp)
	lw $t0, -904($fp)
	sw $t0, -996($fp)
	lw $t1, -996($fp)
	li $t2, 0
	bne $t1, $t2, label249
	j label248
label248:
	li $t0, 1
	sw $t0, -992($fp)
label249:
	lw $t0, -916($fp)
	sw $t0, -1000($fp)
	lw $t1, -992($fp)
	lw $t2, -1000($fp)
	beq $t1, $t2, label246
	j label247
label246:
	li $t0, 1
	sw $t0, -988($fp)
label247:
	li $t0, 0
	sw $t0, -1004($fp)
	lw $t0, -288($fp)
	sw $t0, -1008($fp)
	lw $t0, -952($fp)
	sw $t0, -1012($fp)
	lw $t0, -1008($fp)
	lw $t1, -1012($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1016($fp)
	li $t0, 0
	sw $t0, -1020($fp)
	li $t0, 8765
	sw $t0, -1024($fp)
	lw $t1, -1024($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label254
label254:
	li $t0, 6309
	sw $t0, -1028($fp)
	lw $t1, -1028($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label253
label252:
	li $t0, 1
	sw $t0, -1020($fp)
label253:
	li $t0, 0
	sw $t0, -1032($fp)
	li $t0, 0
	sw $t0, -1036($fp)
	lw $t0, -324($fp)
	sw $t0, -1040($fp)
	li $t0, 33408
	sw $t0, -1044($fp)
	lw $t1, -1040($fp)
	lw $t2, -1044($fp)
	bne $t1, $t2, label257
	j label258
label257:
	li $t0, 1
	sw $t0, -1036($fp)
label258:
	lw $t0, -276($fp)
	sw $t0, -1048($fp)
	lw $t1, -1036($fp)
	lw $t2, -1048($fp)
	beq $t1, $t2, label255
	j label256
label255:
	li $t0, 1
	sw $t0, -1032($fp)
label256:
	lw $t0, -288($fp)
	sw $t0, -1052($fp)
	lw $t0, -288($fp)
	sw $t0, -1056($fp)
	lw $t0, -1052($fp)
	lw $t1, -1056($fp)
	sub $t0, $t0, $t1
	sw $t0, -1060($fp)
	lw $t0, -940($fp)
	sw $t0, -1064($fp)
	addi $sp, $sp, -4
	lw $t0, -1016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1064($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1068($fp)
	addi $sp, $sp, 24
	li $t0, 15405
	sw $t0, -1072($fp)
	lw $t1, -1068($fp)
	lw $t2, -1072($fp)
	beq $t1, $t2, label250
	j label251
label250:
	li $t0, 1
	sw $t0, -1004($fp)
label251:
	li $t0, 41916
	sw $t0, -1076($fp)
	li $t0, 0
	lw $t1, -1076($fp)
	sub $t0, $t0, $t1
	sw $t0, -1080($fp)
	li $t0, 45446
	sw $t0, -1084($fp)
	lw $t0, -1080($fp)
	lw $t1, -1084($fp)
	sub $t0, $t0, $t1
	sw $t0, -1088($fp)
	addi $t0, $fp, -52
	sw $t0, -1092($fp)
	li $t0, 0
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
	li $t0, 0
	sw $t0, -1112($fp)
	lw $t0, -928($fp)
	sw $t0, -1116($fp)
	li $t0, 53259
	sw $t0, -1120($fp)
	lw $t0, -1116($fp)
	lw $t1, -1120($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1124($fp)
	lw $t1, -1124($fp)
	li $t2, 0
	bne $t1, $t2, label261
	j label260
label261:
	lw $t0, -264($fp)
	sw $t0, -1128($fp)
	lw $t1, -1128($fp)
	li $t2, 0
	bne $t1, $t2, label259
	j label260
label259:
	li $t0, 1
	sw $t0, -1112($fp)
label260:
	lw $t0, -288($fp)
	sw $t0, -1132($fp)
	li $t0, 0
	lw $t1, -1132($fp)
	sub $t0, $t0, $t1
	sw $t0, -1136($fp)
	addi $sp, $sp, -4
	lw $t0, -1004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1136($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1140($fp)
	addi $sp, $sp, 24
	lw $t1, -988($fp)
	lw $t2, -1140($fp)
	bne $t1, $t2, label243
	j label244
label243:
	li $t0, 1
	sw $t0, -980($fp)
label244:
	lw $ra, -4($fp)
	lw $v0, -980($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -904($fp)
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -916($fp)
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -928($fp)
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -940($fp)
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -952($fp)
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 32203
	sw $t0, -1164($fp)
	lw $ra, -4($fp)
	lw $v0, -1164($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -620($fp)
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1172($fp)
	lw $t0, -264($fp)
	sw $t0, -1176($fp)
	lw $t0, 4($fp)
	sw $t0, -1180($fp)
	lw $t0, -1176($fp)
	lw $t1, -1180($fp)
	mul $t0, $t0, $t1
	sw $t0, -1184($fp)
	li $t0, 47888
	sw $t0, -1188($fp)
	lw $t0, -1184($fp)
	lw $t1, -1188($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1192($fp)
	lw $t0, -288($fp)
	sw $t0, -1196($fp)
	lw $t0, -1192($fp)
	lw $t1, -1196($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1200($fp)
	lw $t1, -1200($fp)
	li $t2, 0
	bne $t1, $t2, label265
	j label263
label265:
	li $t0, 33872
	sw $t0, -1204($fp)
	lw $t0, -312($fp)
	sw $t0, -1208($fp)
	lw $t0, -1204($fp)
	lw $t1, -1208($fp)
	add $t0, $t0, $t1
	sw $t0, -1212($fp)
	lw $t0, -264($fp)
	sw $t0, -1216($fp)
	lw $t1, -1212($fp)
	lw $t2, -1216($fp)
	bne $t1, $t2, label264
	j label263
label264:
	lw $t0, -324($fp)
	sw $t0, -1220($fp)
	lw $t1, -1220($fp)
	li $t2, 0
	bne $t1, $t2, label262
	j label263
label262:
	li $t0, 1
	sw $t0, -1172($fp)
label263:
	lw $ra, -4($fp)
	lw $v0, -1172($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -620($fp)
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1228($fp)
	li $t0, 0
	sw $t0, -1232($fp)
	lw $t0, -240($fp)
	sw $t0, -1236($fp)
	li $t0, 0
	lw $t1, -1236($fp)
	sub $t0, $t0, $t1
	sw $t0, -1240($fp)
	lw $t1, -1240($fp)
	li $t2, 0
	bne $t1, $t2, label269
	j label268
label268:
	li $t0, 1
	sw $t0, -1232($fp)
label269:
	li $t0, 53292
	sw $t0, -1244($fp)
	lw $t1, -1232($fp)
	lw $t2, -1244($fp)
	blt $t1, $t2, label266
	j label267
label266:
	li $t0, 1
	sw $t0, -1228($fp)
label267:
	lw $ra, -4($fp)
	lw $v0, -1228($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label218
label220:
	addi $t0, $fp, -28
	sw $t0, -1248($fp)
	li $t0, 0
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
	addi $t0, $fp, -28
	sw $t0, -1268($fp)
	li $t0, 1
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
	addi $t0, $fp, -28
	sw $t0, -1288($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
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
	lw $t0, -1324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1328($fp)
	li $t0, 4
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
	li $t0, 5
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
	lw $t0, -204($fp)
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -216($fp)
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -228($fp)
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -240($fp)
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -252($fp)
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -264($fp)
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -276($fp)
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -288($fp)
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -300($fp)
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -312($fp)
	sw $t0, -1404($fp)
	lw $t0, -1404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -324($fp)
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -336($fp)
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1416($fp)
	li $t0, 0
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
	lw $t0, -1432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1436($fp)
	li $t0, 1
	sw $t0, -1440($fp)
	li $t0, 4
	lw $t1, -1440($fp)
	mul $t0, $t0, $t1
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	lw $t1, -1436($fp)
	add $t0, $t0, $t1
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	lw $t1, 0($t0)
	sw $t1, -1452($fp)
	lw $t0, -1452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1456($fp)
	li $t0, 0
	sw $t0, -1460($fp)
	li $t0, 4
	lw $t1, -1460($fp)
	mul $t0, $t0, $t1
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	lw $t1, -1456($fp)
	add $t0, $t0, $t1
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	lw $t1, 0($t0)
	sw $t1, -1472($fp)
	lw $t0, -1472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1476($fp)
	li $t0, 1
	sw $t0, -1480($fp)
	li $t0, 4
	lw $t1, -1480($fp)
	mul $t0, $t0, $t1
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	lw $t1, -1476($fp)
	add $t0, $t0, $t1
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	lw $t1, 0($t0)
	sw $t1, -1492($fp)
	lw $t0, -1492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -1496($fp)
	li $t0, 0
	sw $t0, -1500($fp)
	li $t0, 4
	lw $t1, -1500($fp)
	mul $t0, $t0, $t1
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	lw $t1, -1496($fp)
	add $t0, $t0, $t1
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	lw $t1, 0($t0)
	sw $t1, -1512($fp)
	lw $t0, -1512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -1516($fp)
	li $t0, 1
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
	lw $t0, -1532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -1536($fp)
	lw $t0, -264($fp)
	sw $t0, -1540($fp)
	li $t0, 4
	lw $t1, -1540($fp)
	mul $t0, $t0, $t1
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	lw $t1, -1536($fp)
	add $t0, $t0, $t1
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	lw $t1, 0($t0)
	sw $t1, -1552($fp)
	li $t0, 39633
	sw $t0, -1556($fp)
	lw $t0, -312($fp)
	sw $t0, -1560($fp)
	lw $t0, -288($fp)
	sw $t0, -1564($fp)
	addi $t0, $fp, -52
	sw $t0, -1568($fp)
	li $t0, 1
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
	addi $sp, $sp, -4
	lw $t0, -1552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1584($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1588($fp)
	addi $sp, $sp, 24
	lw $ra, -4($fp)
	lw $v0, -1588($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -1592($fp)
	lw $t0, -264($fp)
	sw $t0, -1596($fp)
	li $t0, 19364
	sw $t0, -1600($fp)
	lw $t0, -1596($fp)
	lw $t1, -1600($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1604($fp)
	lw $t1, -1604($fp)
	li $t2, 0
	bne $t1, $t2, label276
	j label274
label276:
	lw $t0, -288($fp)
	sw $t0, -1608($fp)
	lw $t1, -1608($fp)
	li $t2, 0
	bne $t1, $t2, label275
	j label274
label275:
	lw $t0, -264($fp)
	sw $t0, -1612($fp)
	lw $t0, 4($fp)
	sw $t0, -1616($fp)
	lw $t1, -1612($fp)
	lw $t2, -1616($fp)
	bne $t1, $t2, label273
	j label274
label273:
	li $t0, 1
	sw $t0, -1592($fp)
label274:
	lw $t0, -1592($fp)
	sw $t0, 20($fp)
	lw $t0, 20($fp)
	sw $t0, -1620($fp)
	lw $t1, -1620($fp)
	li $t2, 0
	bne $t1, $t2, label270
	j label271
label270:
	addi $t0, $fp, -44
	sw $t0, -1624($fp)
	addi $t0, $fp, -52
	sw $t0, -1628($fp)
	lw $t0, -240($fp)
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
	li $t0, 4
	lw $t1, -1644($fp)
	mul $t0, $t0, $t1
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	lw $t1, -1624($fp)
	add $t0, $t0, $t1
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	lw $t1, 0($t0)
	sw $t1, -1656($fp)
	jal f9
	sw $v0, -1660($fp)
	addi $sp, $sp, 4
	lw $t0, -1656($fp)
	lw $t1, -1660($fp)
	mul $t0, $t0, $t1
	sw $t0, -1664($fp)
	jal f9
	sw $v0, -1668($fp)
	addi $sp, $sp, 4
	lw $t0, -1664($fp)
	lw $t1, -1668($fp)
	add $t0, $t0, $t1
	sw $t0, -1672($fp)
	lw $ra, -4($fp)
	lw $v0, -1672($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label272
label271:
label277:
	li $t0, 42278
	sw $t0, -1676($fp)
	lw $t1, -1676($fp)
	li $t2, 0
	bne $t1, $t2, label278
	j label279
label278:
	li $t0, 36155
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	sw $t0, -1704($fp)
	li $t0, 9840
	sw $t0, -1708($fp)
	addi $t0, $fp, -1692
	sw $t0, -1712($fp)
	li $t0, 0
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
	li $t0, 56653
	sw $t0, -1732($fp)
	addi $t0, $fp, -1692
	sw $t0, -1736($fp)
	li $t0, 1
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
	li $t0, 39203
	sw $t0, -1756($fp)
	addi $t0, $fp, -1692
	sw $t0, -1760($fp)
	li $t0, 2
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
	li $t0, 50507
	sw $t0, -1780($fp)
	addi $t0, $fp, -1692
	sw $t0, -1784($fp)
	li $t0, 3
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
label280:
	li $t0, 0
	sw $t0, -1804($fp)
	lw $t0, -1700($fp)
	sw $t0, -1808($fp)
	lw $t1, -1808($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label283
label283:
	li $t0, 1
	sw $t0, -1804($fp)
label284:
	addi $t0, $fp, -1692
	sw $t0, -1812($fp)
	li $t0, 3
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
	li $t0, 0
	lw $t1, -1828($fp)
	sub $t0, $t0, $t1
	sw $t0, -1832($fp)
	li $t0, 0
	lw $t1, -1832($fp)
	sub $t0, $t0, $t1
	sw $t0, -1836($fp)
	lw $t0, -1804($fp)
	lw $t1, -1836($fp)
	mul $t0, $t0, $t1
	sw $t0, -1840($fp)
	lw $t1, -1840($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label282
label281:
	lw $t0, 4($fp)
	sw $t0, -1844($fp)
	lw $ra, -4($fp)
	lw $v0, -1844($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label280
label282:
	li $t0, 48464
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	sw $t0, -1856($fp)
	li $t0, 1948
	sw $t0, -1860($fp)
	li $t0, 26933
	sw $t0, -1864($fp)
	li $t0, 0
	sw $t0, -1868($fp)
	addi $t0, $fp, -28
	sw $t0, -1872($fp)
	li $t0, 0
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
	lw $t1, -1888($fp)
	li $t2, 0
	bne $t1, $t2, label287
	j label286
label287:
	lw $t0, -300($fp)
	sw $t0, -1892($fp)
	lw $t0, -1852($fp)
	sw $t0, -1896($fp)
	lw $t0, -1892($fp)
	lw $t1, -1896($fp)
	mul $t0, $t0, $t1
	sw $t0, -1900($fp)
	li $t0, 65129
	sw $t0, -1904($fp)
	li $t0, 52333
	sw $t0, -1908($fp)
	lw $t0, -1904($fp)
	lw $t1, -1908($fp)
	sub $t0, $t0, $t1
	sw $t0, -1912($fp)
	lw $t1, -1900($fp)
	lw $t2, -1912($fp)
	blt $t1, $t2, label285
	j label286
label285:
	li $t0, 1
	sw $t0, -1868($fp)
label286:
	lw $t0, -312($fp)
	sw $t0, -1916($fp)
	j label277
label279:
label272:
label288:
	li $t0, 6974
	sw $t0, -1920($fp)
	li $t0, 49
	sw $t0, -1924($fp)
	lw $t0, -1920($fp)
	lw $t1, -1924($fp)
	add $t0, $t0, $t1
	sw $t0, -1928($fp)
	li $t0, 28714
	sw $t0, -1932($fp)
	lw $t0, -1928($fp)
	lw $t1, -1932($fp)
	sub $t0, $t0, $t1
	sw $t0, -1936($fp)
	lw $t0, -312($fp)
	sw $t0, -1940($fp)
	lw $t0, -288($fp)
	sw $t0, -1944($fp)
	lw $t0, -1940($fp)
	lw $t1, -1944($fp)
	mul $t0, $t0, $t1
	sw $t0, -1948($fp)
	lw $t0, -1936($fp)
	lw $t1, -1948($fp)
	sub $t0, $t0, $t1
	sw $t0, -1952($fp)
	li $t0, 0
	sw $t0, -1956($fp)
	li $t0, 52421
	sw $t0, -1960($fp)
	lw $t1, -1960($fp)
	li $t2, 0
	bne $t1, $t2, label292
	j label291
label291:
	li $t0, 1
	sw $t0, -1956($fp)
label292:
	li $t0, 33458
	sw $t0, -1964($fp)
	lw $t0, -1956($fp)
	lw $t1, -1964($fp)
	mul $t0, $t0, $t1
	sw $t0, -1968($fp)
	lw $t0, -1952($fp)
	lw $t1, -1968($fp)
	sub $t0, $t0, $t1
	sw $t0, -1972($fp)
	li $t0, 0
	sw $t0, -1976($fp)
	li $t0, 37479
	sw $t0, -1980($fp)
	lw $t1, -1980($fp)
	li $t2, 0
	bne $t1, $t2, label294
	j label293
label293:
	li $t0, 1
	sw $t0, -1976($fp)
label294:
	li $t0, 0
	lw $t1, -1976($fp)
	sub $t0, $t0, $t1
	sw $t0, -1984($fp)
	lw $t1, -1972($fp)
	lw $t2, -1984($fp)
	blt $t1, $t2, label289
	j label290
label289:
	li $t0, 0
	sw $t0, -1988($fp)
	li $t0, 0
	sw $t0, -1992($fp)
	lw $t0, -324($fp)
	sw $t0, -1996($fp)
	li $t0, 0
	lw $t1, -1996($fp)
	sub $t0, $t0, $t1
	sw $t0, -2000($fp)
	lw $t1, -2000($fp)
	li $t2, 0
	bne $t1, $t2, label300
	j label299
label299:
	li $t0, 1
	sw $t0, -1992($fp)
label300:
	lw $t0, -288($fp)
	sw $t0, -2004($fp)
	lw $t0, -1992($fp)
	lw $t1, -2004($fp)
	add $t0, $t0, $t1
	sw $t0, -2008($fp)
	lw $t1, -2008($fp)
	li $t2, 0
	bne $t1, $t2, label298
	j label297
label298:
	li $t0, 0
	sw $t0, -2012($fp)
	lw $t0, -324($fp)
	sw $t0, -2016($fp)
	lw $t1, -2016($fp)
	li $t2, 0
	bne $t1, $t2, label302
	j label301
label301:
	li $t0, 1
	sw $t0, -2012($fp)
label302:
	lw $t0, -240($fp)
	sw $t0, -2020($fp)
	lw $t1, -2012($fp)
	lw $t2, -2020($fp)
	bne $t1, $t2, label295
	j label297
label297:
	li $t0, 0
	sw $t0, -2024($fp)
	lw $t0, -252($fp)
	sw $t0, -2028($fp)
	lw $t0, -264($fp)
	sw $t0, -2032($fp)
	lw $t0, -2028($fp)
	lw $t1, -2032($fp)
	mul $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t1, -2036($fp)
	li $t2, 0
	bne $t1, $t2, label305
	j label304
label305:
	li $t0, 58730
	sw $t0, -2040($fp)
	lw $t1, -2040($fp)
	li $t2, 0
	bne $t1, $t2, label303
	j label304
label303:
	li $t0, 1
	sw $t0, -2024($fp)
label304:
	lw $t0, -288($fp)
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -2048($fp)
	addi $sp, $sp, -4
	lw $t0, -2024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2048($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2052($fp)
	addi $sp, $sp, 12
	lw $t1, -2052($fp)
	li $t2, 0
	bne $t1, $t2, label295
	j label296
label295:
	li $t0, 1
	sw $t0, -1988($fp)
label296:
	j label288
label290:
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
	sw $t0, -2116($fp)
	li $t0, 3
	sw $t0, -2120($fp)
	li $t0, 4
	lw $t1, -2120($fp)
	mul $t0, $t0, $t1
	sw $t0, -2124($fp)
	lw $t0, -2124($fp)
	lw $t1, -2116($fp)
	add $t0, $t0, $t1
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	lw $t1, 0($t0)
	sw $t1, -2132($fp)
	lw $t0, -2132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -2136($fp)
	li $t0, 4
	sw $t0, -2140($fp)
	li $t0, 4
	lw $t1, -2140($fp)
	mul $t0, $t0, $t1
	sw $t0, -2144($fp)
	lw $t0, -2144($fp)
	lw $t1, -2136($fp)
	add $t0, $t0, $t1
	sw $t0, -2148($fp)
	lw $t0, -2148($fp)
	lw $t1, 0($t0)
	sw $t1, -2152($fp)
	lw $t0, -2152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -2156($fp)
	li $t0, 5
	sw $t0, -2160($fp)
	li $t0, 4
	lw $t1, -2160($fp)
	mul $t0, $t0, $t1
	sw $t0, -2164($fp)
	lw $t0, -2164($fp)
	lw $t1, -2156($fp)
	add $t0, $t0, $t1
	sw $t0, -2168($fp)
	lw $t0, -2168($fp)
	lw $t1, 0($t0)
	sw $t1, -2172($fp)
	lw $t0, -2172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -204($fp)
	sw $t0, -2176($fp)
	lw $t0, -2176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -216($fp)
	sw $t0, -2180($fp)
	lw $t0, -2180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -228($fp)
	sw $t0, -2184($fp)
	lw $t0, -2184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -240($fp)
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -252($fp)
	sw $t0, -2192($fp)
	lw $t0, -2192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -264($fp)
	sw $t0, -2196($fp)
	lw $t0, -2196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -276($fp)
	sw $t0, -2200($fp)
	lw $t0, -2200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -288($fp)
	sw $t0, -2204($fp)
	lw $t0, -2204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -300($fp)
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -312($fp)
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -324($fp)
	sw $t0, -2216($fp)
	lw $t0, -2216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -336($fp)
	sw $t0, -2220($fp)
	lw $t0, -2220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -2224($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -2244($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -2264($fp)
	li $t0, 0
	sw $t0, -2268($fp)
	li $t0, 4
	lw $t1, -2268($fp)
	mul $t0, $t0, $t1
	sw $t0, -2272($fp)
	lw $t0, -2272($fp)
	lw $t1, -2264($fp)
	add $t0, $t0, $t1
	sw $t0, -2276($fp)
	lw $t0, -2276($fp)
	lw $t1, 0($t0)
	sw $t1, -2280($fp)
	lw $t0, -2280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -2284($fp)
	li $t0, 1
	sw $t0, -2288($fp)
	li $t0, 4
	lw $t1, -2288($fp)
	mul $t0, $t0, $t1
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	lw $t1, -2284($fp)
	add $t0, $t0, $t1
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	lw $t1, 0($t0)
	sw $t1, -2300($fp)
	lw $t0, -2300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -2304($fp)
	li $t0, 0
	sw $t0, -2308($fp)
	li $t0, 4
	lw $t1, -2308($fp)
	mul $t0, $t0, $t1
	sw $t0, -2312($fp)
	lw $t0, -2312($fp)
	lw $t1, -2304($fp)
	add $t0, $t0, $t1
	sw $t0, -2316($fp)
	lw $t0, -2316($fp)
	lw $t1, 0($t0)
	sw $t1, -2320($fp)
	lw $t0, -2320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -2324($fp)
	li $t0, 1
	sw $t0, -2328($fp)
	li $t0, 4
	lw $t1, -2328($fp)
	mul $t0, $t0, $t1
	sw $t0, -2332($fp)
	lw $t0, -2332($fp)
	lw $t1, -2324($fp)
	add $t0, $t0, $t1
	sw $t0, -2336($fp)
	lw $t0, -2336($fp)
	lw $t1, 0($t0)
	sw $t1, -2340($fp)
	lw $t0, -2340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -2344($fp)
	li $t0, 1
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
	li $t0, 0
	sw $t0, -2364($fp)
	li $t0, 0
	sw $t0, -2368($fp)
	li $t0, 17200
	sw $t0, -2372($fp)
	lw $t1, -2372($fp)
	li $t2, 0
	bne $t1, $t2, label311
	j label309
label311:
	li $t0, 57439
	sw $t0, -2376($fp)
	lw $t1, -2376($fp)
	li $t2, 0
	bne $t1, $t2, label310
	j label309
label310:
	lw $t0, 12($fp)
	sw $t0, -2380($fp)
	lw $t1, -2380($fp)
	li $t2, 0
	bne $t1, $t2, label308
	j label309
label308:
	li $t0, 1
	sw $t0, -2368($fp)
label309:
	li $t0, 0
	sw $t0, -2384($fp)
	jal f9
	sw $v0, -2388($fp)
	addi $sp, $sp, 4
	lw $t1, -2388($fp)
	li $t2, 0
	bne $t1, $t2, label312
	j label314
label314:
	lw $t0, -300($fp)
	sw $t0, -2392($fp)
	lw $t1, -2392($fp)
	li $t2, 0
	bne $t1, $t2, label312
	j label313
label312:
	li $t0, 1
	sw $t0, -2384($fp)
label313:
	li $t0, 0
	sw $t0, -2396($fp)
	lw $t0, -216($fp)
	sw $t0, -2400($fp)
	li $t0, 41082
	sw $t0, -2404($fp)
	lw $t1, -2400($fp)
	lw $t2, -2404($fp)
	bne $t1, $t2, label315
	j label316
label315:
	li $t0, 1
	sw $t0, -2396($fp)
label316:
	lw $t0, -228($fp)
	sw $t0, -2408($fp)
	addi $sp, $sp, -4
	lw $t0, -2396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2408($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2412($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -2368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2412($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2416($fp)
	addi $sp, $sp, 16
	lw $t1, -2416($fp)
	li $t2, 0
	bne $t1, $t2, label307
	j label306
label306:
	li $t0, 1
	sw $t0, -2364($fp)
label307:
	lw $t0, -2360($fp)
	lw $t1, -2364($fp)
	sub $t0, $t0, $t1
	sw $t0, -2420($fp)
	addi $t0, $fp, -52
	sw $t0, -2424($fp)
	addi $t0, $fp, -36
	sw $t0, -2428($fp)
	lw $t0, -336($fp)
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
	li $t0, 4
	lw $t1, -2444($fp)
	mul $t0, $t0, $t1
	sw $t0, -2448($fp)
	lw $t0, -2448($fp)
	lw $t1, -2424($fp)
	add $t0, $t0, $t1
	sw $t0, -2452($fp)
	lw $t0, -2452($fp)
	lw $t1, 0($t0)
	sw $t1, -2456($fp)
	lw $t0, -2420($fp)
	lw $t1, -2456($fp)
	add $t0, $t0, $t1
	sw $t0, -2460($fp)
	lw $ra, -4($fp)
	lw $v0, -2460($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2304
	li $t0, 48559
	sw $t0, -40($fp)
	addi $t0, $fp, -24
	sw $t0, -44($fp)
	li $t0, 0
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
	li $t0, 10603
	sw $t0, -64($fp)
	addi $t0, $fp, -24
	sw $t0, -68($fp)
	li $t0, 1
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
	li $t0, 31536
	sw $t0, -88($fp)
	addi $t0, $fp, -24
	sw $t0, -92($fp)
	li $t0, 2
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
	li $t0, 2387
	sw $t0, -112($fp)
	addi $t0, $fp, -24
	sw $t0, -116($fp)
	li $t0, 3
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
	li $t0, 52882
	sw $t0, -136($fp)
	addi $t0, $fp, -24
	sw $t0, -140($fp)
	li $t0, 4
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
	li $t0, 2155
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	li $t0, 12228
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	li $t0, 43999
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	li $t0, 41358
	sw $t0, -196($fp)
	addi $t0, $fp, -28
	sw $t0, -200($fp)
	li $t0, 0
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
	li $t0, 62735
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -228($fp)
	li $t0, 64439
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	li $t0, 60613
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	li $t0, 45663
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	li $t0, 851
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	li $t0, 22010
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	li $t0, 44737
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
	li $t0, 40012
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -312($fp)
	li $t0, 21603
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	li $t0, 31535
	sw $t0, -328($fp)
	addi $t0, $fp, -36
	sw $t0, -332($fp)
	li $t0, 0
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
	li $t0, 46986
	sw $t0, -352($fp)
	addi $t0, $fp, -36
	sw $t0, -356($fp)
	li $t0, 1
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
	li $t0, 21653
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	li $t0, 60249
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	li $t0, 33871
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	li $t0, 55111
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	li $t0, 32192
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	addi $t0, $fp, -24
	sw $t0, -436($fp)
	li $t0, 0
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
	li $t0, 1
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
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -496($fp)
	li $t0, 3
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
	lw $t0, -512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -516($fp)
	li $t0, 4
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
	lw $t0, -532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -164($fp)
	sw $t0, -536($fp)
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
	addi $t0, $fp, -28
	sw $t0, -548($fp)
	li $t0, 0
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
	lw $t0, -224($fp)
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -236($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -248($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -260($fp)
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -272($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -284($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -296($fp)
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -308($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -320($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -604($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -624($fp)
	li $t0, 1
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
	lw $t0, -380($fp)
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -392($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -404($fp)
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -416($fp)
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -428($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -664($fp)
	lw $t0, -308($fp)
	sw $t0, -668($fp)
	lw $t0, -164($fp)
	sw $t0, -672($fp)
	lw $t0, -668($fp)
	lw $t1, -672($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -676($fp)
	li $t0, 27065
	sw $t0, -680($fp)
	lw $t0, -676($fp)
	lw $t1, -680($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -684($fp)
	lw $t0, -224($fp)
	sw $t0, -688($fp)
	lw $t0, -684($fp)
	lw $t1, -688($fp)
	mul $t0, $t0, $t1
	sw $t0, -692($fp)
	li $t0, 0
	lw $t1, -692($fp)
	sub $t0, $t0, $t1
	sw $t0, -696($fp)
	lw $t1, -696($fp)
	li $t2, 0
	bne $t1, $t2, label319
	j label318
label319:
	lw $t0, -308($fp)
	sw $t0, -700($fp)
	li $t0, 38438
	sw $t0, -704($fp)
	lw $t0, -700($fp)
	lw $t1, -704($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -708($fp)
	lw $t0, -296($fp)
	sw $t0, -712($fp)
	lw $t0, -708($fp)
	lw $t1, -712($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -716($fp)
	addi $t0, $fp, -24
	sw $t0, -720($fp)
	li $t0, 3
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
	lw $t1, -716($fp)
	lw $t2, -736($fp)
	beq $t1, $t2, label317
	j label318
label317:
	li $t0, 1
	sw $t0, -664($fp)
label318:
	lw $ra, -4($fp)
	lw $v0, -664($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 55638
	sw $t0, -740($fp)
	addi $t0, $fp, -28
	sw $t0, -744($fp)
	li $t0, 0
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
	div $t0, $t1
	mflo $t2
	sw $t2, -764($fp)
	li $t0, 0
	sw $t0, -768($fp)
	lw $t0, -272($fp)
	sw $t0, -772($fp)
	li $t0, 53588
	sw $t0, -776($fp)
	lw $t0, -772($fp)
	lw $t1, -776($fp)
	mul $t0, $t0, $t1
	sw $t0, -780($fp)
	li $t0, 61933
	sw $t0, -784($fp)
	lw $t1, -780($fp)
	lw $t2, -784($fp)
	bgt $t1, $t2, label323
	j label324
label323:
	li $t0, 1
	sw $t0, -768($fp)
label324:
	lw $t0, -428($fp)
	sw $t0, -788($fp)
	lw $t0, -380($fp)
	sw $t0, -792($fp)
	lw $t0, -788($fp)
	lw $t1, -792($fp)
	sub $t0, $t0, $t1
	sw $t0, -796($fp)
	li $t0, 53559
	sw $t0, -800($fp)
	lw $t0, -796($fp)
	lw $t1, -800($fp)
	add $t0, $t0, $t1
	sw $t0, -804($fp)
	li $t0, 706
	sw $t0, -808($fp)
	li $t0, 59778
	sw $t0, -812($fp)
	lw $t0, -808($fp)
	lw $t1, -812($fp)
	sub $t0, $t0, $t1
	sw $t0, -816($fp)
	addi $sp, $sp, -4
	lw $t0, -768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -816($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -820($fp)
	addi $sp, $sp, 16
	lw $t0, -764($fp)
	lw $t1, -820($fp)
	sub $t0, $t0, $t1
	sw $t0, -824($fp)
	lw $t1, -824($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label321
label320:
label325:
	addi $t0, $fp, -24
	sw $t0, -828($fp)
	li $t0, 0
	sw $t0, -832($fp)
	lw $t0, -260($fp)
	sw $t0, -836($fp)
	lw $t1, -836($fp)
	li $t2, 0
	bne $t1, $t2, label332
	j label331
label332:
	li $t0, 251
	sw $t0, -840($fp)
	lw $t1, -840($fp)
	li $t2, 0
	bne $t1, $t2, label329
	j label331
label331:
	li $t0, 32051
	sw $t0, -844($fp)
	lw $t1, -844($fp)
	li $t2, 0
	bne $t1, $t2, label329
	j label330
label329:
	li $t0, 1
	sw $t0, -832($fp)
label330:
	li $t0, 4
	lw $t1, -832($fp)
	mul $t0, $t0, $t1
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	lw $t1, -828($fp)
	add $t0, $t0, $t1
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	lw $t1, 0($t0)
	sw $t1, -856($fp)
	lw $t1, -856($fp)
	li $t2, 0
	bne $t1, $t2, label328
	j label327
label328:
	li $t0, 0
	sw $t0, -860($fp)
	lw $t0, -236($fp)
	sw $t0, -864($fp)
	lw $t1, -864($fp)
	li $t2, 0
	bne $t1, $t2, label334
	j label333
label333:
	li $t0, 1
	sw $t0, -860($fp)
label334:
	addi $t0, $fp, -36
	sw $t0, -868($fp)
	li $t0, 0
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
	lw $t0, -860($fp)
	lw $t1, -884($fp)
	sub $t0, $t0, $t1
	sw $t0, -888($fp)
	lw $t1, -888($fp)
	li $t2, 0
	bne $t1, $t2, label326
	j label327
label326:
	li $t0, 0
	sw $t0, -892($fp)
	lw $t0, -176($fp)
	sw $t0, -896($fp)
	li $t0, 0
	lw $t1, -896($fp)
	sub $t0, $t0, $t1
	sw $t0, -900($fp)
	lw $t1, -900($fp)
	li $t2, 0
	bne $t1, $t2, label336
	j label335
label335:
	li $t0, 1
	sw $t0, -892($fp)
label336:
	j label325
label327:
label321:
	addi $t0, $fp, -24
	sw $t0, -904($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -924($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -944($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -964($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -984($fp)
	li $t0, 4
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
	lw $t0, -164($fp)
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -176($fp)
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -188($fp)
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
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
	lw $t0, -224($fp)
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -236($fp)
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -248($fp)
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -260($fp)
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -272($fp)
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -284($fp)
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -296($fp)
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -308($fp)
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -320($fp)
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	lw $t0, -380($fp)
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -392($fp)
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -404($fp)
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -416($fp)
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -428($fp)
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1132($fp)
	lw $t0, -188($fp)
	sw $t0, -1136($fp)
	li $t0, 0
	sw $t0, -1140($fp)
	lw $t0, -248($fp)
	sw $t0, -1144($fp)
	lw $t1, -1144($fp)
	li $t2, 0
	bne $t1, $t2, label342
	j label341
label342:
	li $t0, 30954
	sw $t0, -1148($fp)
	lw $t1, -1148($fp)
	li $t2, 0
	bne $t1, $t2, label339
	j label341
label341:
	li $t0, 32833
	sw $t0, -1152($fp)
	lw $t1, -1152($fp)
	li $t2, 0
	bne $t1, $t2, label339
	j label340
label339:
	li $t0, 1
	sw $t0, -1140($fp)
label340:
	addi $sp, $sp, -4
	lw $t0, -1136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1140($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1156($fp)
	addi $sp, $sp, 12
	lw $t1, -1156($fp)
	li $t2, 0
	bne $t1, $t2, label338
	j label337
label337:
	li $t0, 1
	sw $t0, -1132($fp)
label338:
	lw $ra, -4($fp)
	lw $v0, -1132($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 43113
	sw $t0, -1160($fp)
	li $t0, 0
	lw $t1, -1160($fp)
	sub $t0, $t0, $t1
	sw $t0, -1164($fp)
	lw $t1, -1164($fp)
	li $t2, 0
	bne $t1, $t2, label343
	j label344
label343:
	li $t0, 31806
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	sw $t0, -1176($fp)
	li $t0, 54843
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	sw $t0, -1188($fp)
	li $t0, 22314
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -1200($fp)
	li $t0, 6282
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	sw $t0, -1212($fp)
	li $t0, 10911
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	sw $t0, -1224($fp)
	li $t0, 53849
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	sw $t0, -1236($fp)
	li $t0, 0
	sw $t0, -1240($fp)
	lw $t0, -176($fp)
	sw $t0, -1244($fp)
	lw $t1, -1244($fp)
	li $t2, 0
	bne $t1, $t2, label347
	j label346
label346:
	li $t0, 1
	sw $t0, -1240($fp)
label347:
	li $t0, 0
	sw $t0, -1248($fp)
	lw $t0, -260($fp)
	sw $t0, -1252($fp)
	li $t0, 48562
	sw $t0, -1256($fp)
	lw $t1, -1252($fp)
	lw $t2, -1256($fp)
	bge $t1, $t2, label350
	j label349
label350:
	lw $t0, -176($fp)
	sw $t0, -1260($fp)
	lw $t1, -1260($fp)
	li $t2, 0
	bne $t1, $t2, label348
	j label349
label348:
	li $t0, 1
	sw $t0, -1248($fp)
label349:
	li $t0, 0
	sw $t0, -1264($fp)
	addi $t0, $fp, -24
	sw $t0, -1268($fp)
	li $t0, 1
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
	lw $t1, -1284($fp)
	li $t2, 0
	bne $t1, $t2, label351
	j label353
label353:
	lw $t0, -284($fp)
	sw $t0, -1288($fp)
	lw $t1, -1288($fp)
	li $t2, 0
	bne $t1, $t2, label351
	j label352
label351:
	li $t0, 1
	sw $t0, -1264($fp)
label352:
	li $t0, 0
	sw $t0, -1292($fp)
	lw $t0, -1196($fp)
	sw $t0, -1296($fp)
	lw $t0, -176($fp)
	sw $t0, -1300($fp)
	lw $t0, -1296($fp)
	lw $t1, -1300($fp)
	mul $t0, $t0, $t1
	sw $t0, -1304($fp)
	lw $t0, -248($fp)
	sw $t0, -1308($fp)
	lw $t1, -1304($fp)
	lw $t2, -1308($fp)
	beq $t1, $t2, label354
	j label355
label354:
	li $t0, 1
	sw $t0, -1292($fp)
label355:
	addi $sp, $sp, -4
	lw $t0, -1248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1292($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1312($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -1312($fp)
	sub $t0, $t0, $t1
	sw $t0, -1316($fp)
	lw $t0, -1240($fp)
	lw $t1, -1316($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1320($fp)
	li $t0, 0
	lw $t1, -1320($fp)
	sub $t0, $t0, $t1
	sw $t0, -1324($fp)
	li $t0, 0
	sw $t0, -1328($fp)
	li $t0, 21604
	sw $t0, -1332($fp)
	lw $t1, -1332($fp)
	li $t2, 0
	bne $t1, $t2, label357
	j label356
label356:
	li $t0, 1
	sw $t0, -1328($fp)
label357:
	lw $t0, -1324($fp)
	lw $t1, -1328($fp)
	add $t0, $t0, $t1
	sw $t0, -1336($fp)
	addi $t0, $fp, -36
	sw $t0, -1340($fp)
	li $t0, 0
	sw $t0, -1344($fp)
	lw $t0, -248($fp)
	sw $t0, -1348($fp)
	lw $t0, -1184($fp)
	sw $t0, -1352($fp)
	lw $t0, -1348($fp)
	lw $t1, -1352($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1356($fp)
	lw $t0, 8($fp)
	sw $t0, -1360($fp)
	lw $t1, -1356($fp)
	lw $t2, -1360($fp)
	blt $t1, $t2, label358
	j label359
label358:
	li $t0, 1
	sw $t0, -1344($fp)
label359:
	li $t0, 4
	lw $t1, -1344($fp)
	mul $t0, $t0, $t1
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	lw $t1, -1340($fp)
	add $t0, $t0, $t1
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	lw $t1, 0($t0)
	sw $t1, -1372($fp)
	li $t0, 0
	lw $t1, -1372($fp)
	sub $t0, $t0, $t1
	sw $t0, -1376($fp)
	li $t0, 0
	sw $t0, -1380($fp)
	li $t0, 22139
	sw $t0, -1384($fp)
	lw $t0, -248($fp)
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -1392($fp)
	addi $t0, $fp, -24
	sw $t0, -1396($fp)
	lw $t0, -176($fp)
	sw $t0, -1400($fp)
	li $t0, 4
	lw $t1, -1400($fp)
	mul $t0, $t0, $t1
	sw $t0, -1404($fp)
	lw $t0, -1404($fp)
	lw $t1, -1396($fp)
	add $t0, $t0, $t1
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	lw $t1, 0($t0)
	sw $t1, -1412($fp)
	lw $t0, -1232($fp)
	sw $t0, -1416($fp)
	lw $t0, -248($fp)
	sw $t0, -1420($fp)
	lw $t0, -1416($fp)
	lw $t1, -1420($fp)
	mul $t0, $t0, $t1
	sw $t0, -1424($fp)
	addi $sp, $sp, -4
	lw $t0, -1392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1424($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1428($fp)
	addi $sp, $sp, 16
	lw $t0, -296($fp)
	sw $t0, -1432($fp)
	lw $t0, -1428($fp)
	lw $t1, -1432($fp)
	sub $t0, $t0, $t1
	sw $t0, -1436($fp)
	lw $t1, -1384($fp)
	lw $t2, -1436($fp)
	bgt $t1, $t2, label362
	j label361
label362:
	li $t0, 0
	sw $t0, -1440($fp)
	li $t0, 15219
	sw $t0, -1444($fp)
	lw $t1, -1444($fp)
	li $t2, 0
	bne $t1, $t2, label364
	j label363
label363:
	li $t0, 1
	sw $t0, -1440($fp)
label364:
	lw $t0, -164($fp)
	sw $t0, -1448($fp)
	lw $t0, -1440($fp)
	lw $t1, -1448($fp)
	sub $t0, $t0, $t1
	sw $t0, -1452($fp)
	li $t0, 0
	sw $t0, -1456($fp)
	lw $t0, -248($fp)
	sw $t0, -1460($fp)
	lw $t1, -1460($fp)
	li $t2, 0
	bne $t1, $t2, label366
	j label365
label365:
	li $t0, 1
	sw $t0, -1456($fp)
label366:
	lw $t0, -1452($fp)
	lw $t1, -1456($fp)
	sub $t0, $t0, $t1
	sw $t0, -1464($fp)
	lw $t1, -1464($fp)
	li $t2, 0
	bne $t1, $t2, label360
	j label361
label360:
	li $t0, 1
	sw $t0, -1380($fp)
label361:
	li $t0, 0
	sw $t0, -1468($fp)
	lw $t0, -260($fp)
	sw $t0, -1472($fp)
	lw $t1, -1472($fp)
	li $t2, 0
	bne $t1, $t2, label368
	j label367
label367:
	li $t0, 1
	sw $t0, -1468($fp)
label368:
	addi $t0, $fp, -24
	sw $t0, -1476($fp)
	addi $t0, $fp, -24
	sw $t0, -1480($fp)
	lw $t0, 8($fp)
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
	li $t0, 4
	lw $t1, -1496($fp)
	mul $t0, $t0, $t1
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	lw $t1, -1476($fp)
	add $t0, $t0, $t1
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	lw $t1, 0($t0)
	sw $t1, -1508($fp)
	lw $t0, -1468($fp)
	lw $t1, -1508($fp)
	mul $t0, $t0, $t1
	sw $t0, -1512($fp)
	li $t0, 48669
	sw $t0, -1516($fp)
	lw $t0, -1172($fp)
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1184($fp)
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1196($fp)
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1208($fp)
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1220($fp)
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1540($fp)
	li $t0, 60577
	sw $t0, -1544($fp)
	lw $t0, -248($fp)
	sw $t0, -1548($fp)
	lw $t0, -1544($fp)
	lw $t1, -1548($fp)
	add $t0, $t0, $t1
	sw $t0, -1552($fp)
	lw $t0, 4($fp)
	sw $t0, -1556($fp)
	lw $t0, -1552($fp)
	lw $t1, -1556($fp)
	sub $t0, $t0, $t1
	sw $t0, -1560($fp)
	li $t0, 0
	sw $t0, -1564($fp)
	li $t0, 0
	sw $t0, -1568($fp)
	lw $t0, 12($fp)
	sw $t0, -1572($fp)
	lw $t0, -416($fp)
	sw $t0, -1576($fp)
	lw $t1, -1572($fp)
	lw $t2, -1576($fp)
	bge $t1, $t2, label373
	j label374
label373:
	li $t0, 1
	sw $t0, -1568($fp)
label374:
	lw $t0, -380($fp)
	sw $t0, -1580($fp)
	lw $t1, -1568($fp)
	lw $t2, -1580($fp)
	bgt $t1, $t2, label371
	j label372
label371:
	li $t0, 1
	sw $t0, -1564($fp)
label372:
	li $t0, 14265
	sw $t0, -1584($fp)
	li $t0, 0
	sw $t0, -1588($fp)
	li $t0, 51281
	sw $t0, -1592($fp)
	li $t0, 50680
	sw $t0, -1596($fp)
	lw $t1, -1592($fp)
	lw $t2, -1596($fp)
	bne $t1, $t2, label375
	j label376
label375:
	li $t0, 1
	sw $t0, -1588($fp)
label376:
	li $t0, 0
	sw $t0, -1600($fp)
	lw $t0, -392($fp)
	sw $t0, -1604($fp)
	lw $t0, -1184($fp)
	sw $t0, -1608($fp)
	lw $t0, -1604($fp)
	lw $t1, -1608($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1612($fp)
	lw $t1, -1612($fp)
	li $t2, 0
	bne $t1, $t2, label377
	j label379
label379:
	lw $t0, -176($fp)
	sw $t0, -1616($fp)
	lw $t1, -1616($fp)
	li $t2, 0
	bne $t1, $t2, label377
	j label378
label377:
	li $t0, 1
	sw $t0, -1600($fp)
label378:
	li $t0, 51558
	sw $t0, -1620($fp)
	addi $sp, $sp, -4
	lw $t0, -1564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1620($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1624($fp)
	addi $sp, $sp, 24
	lw $t1, -1560($fp)
	lw $t2, -1624($fp)
	ble $t1, $t2, label369
	j label370
label369:
	li $t0, 1
	sw $t0, -1540($fp)
label370:
	lw $t0, -1540($fp)
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -1628($fp)
	lw $ra, -4($fp)
	lw $v0, -1628($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1172($fp)
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1184($fp)
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1196($fp)
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1208($fp)
	sw $t0, -1644($fp)
	lw $t0, -1644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1220($fp)
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1652($fp)
	lw $t0, -260($fp)
	sw $t0, -1656($fp)
	li $t0, 0
	lw $t1, -1656($fp)
	sub $t0, $t0, $t1
	sw $t0, -1660($fp)
	li $t0, 36917
	sw $t0, -1664($fp)
	lw $t0, -1660($fp)
	lw $t1, -1664($fp)
	sub $t0, $t0, $t1
	sw $t0, -1668($fp)
	lw $t1, -1668($fp)
	li $t2, 0
	bne $t1, $t2, label380
	j label382
label382:
	lw $t0, -1196($fp)
	sw $t0, -1672($fp)
	li $t0, 51386
	sw $t0, -1676($fp)
	lw $t1, -1672($fp)
	lw $t2, -1676($fp)
	beq $t1, $t2, label380
	j label381
label380:
	li $t0, 1
	sw $t0, -1652($fp)
label381:
	lw $t0, -1652($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -1680($fp)
	lw $ra, -4($fp)
	lw $v0, -1680($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1172($fp)
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1184($fp)
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1196($fp)
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1208($fp)
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1220($fp)
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1704($fp)
	li $t0, 24940
	sw $t0, -1708($fp)
	lw $t1, -1708($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label384
label385:
	lw $t0, 4($fp)
	sw $t0, -1712($fp)
	lw $t1, -1712($fp)
	li $t2, 0
	bne $t1, $t2, label383
	j label384
label383:
	li $t0, 1
	sw $t0, -1704($fp)
label384:
	li $t0, 8507
	sw $t0, -1716($fp)
	addi $sp, $sp, -4
	lw $t0, -1704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1716($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1720($fp)
	addi $sp, $sp, 12
	lw $ra, -4($fp)
	lw $v0, -1720($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label386:
	li $t0, 39438
	sw $t0, -1724($fp)
	addi $t0, $fp, -36
	sw $t0, -1728($fp)
	li $t0, 0
	sw $t0, -1732($fp)
	li $t0, 4905
	sw $t0, -1736($fp)
	lw $t1, -1736($fp)
	li $t2, 0
	bne $t1, $t2, label391
	j label390
label391:
	lw $t0, -224($fp)
	sw $t0, -1740($fp)
	lw $t1, -1740($fp)
	li $t2, 0
	bne $t1, $t2, label389
	j label390
label389:
	li $t0, 1
	sw $t0, -1732($fp)
label390:
	li $t0, 4
	lw $t1, -1732($fp)
	mul $t0, $t0, $t1
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	lw $t1, -1728($fp)
	add $t0, $t0, $t1
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	lw $t1, 0($t0)
	sw $t1, -1752($fp)
	lw $t0, -1724($fp)
	lw $t1, -1752($fp)
	add $t0, $t0, $t1
	sw $t0, -1756($fp)
	lw $t1, -1756($fp)
	li $t2, 0
	bne $t1, $t2, label387
	j label388
label387:
	li $t0, 0
	sw $t0, -1760($fp)
	li $t0, 0
	sw $t0, -1764($fp)
	lw $t0, 4($fp)
	sw $t0, -1768($fp)
	li $t0, 0
	sw $t0, -1772($fp)
	lw $t0, -1220($fp)
	sw $t0, -1776($fp)
	lw $t0, -1172($fp)
	sw $t0, -1780($fp)
	lw $t1, -1776($fp)
	lw $t2, -1780($fp)
	bne $t1, $t2, label398
	j label397
label398:
	lw $t0, -416($fp)
	sw $t0, -1784($fp)
	lw $t1, -1784($fp)
	li $t2, 0
	bne $t1, $t2, label396
	j label397
label396:
	li $t0, 1
	sw $t0, -1772($fp)
label397:
	li $t0, 0
	sw $t0, -1788($fp)
	lw $t0, 4($fp)
	sw $t0, -1792($fp)
	li $t0, 25191
	sw $t0, -1796($fp)
	lw $t1, -1792($fp)
	lw $t2, -1796($fp)
	bne $t1, $t2, label399
	j label400
label399:
	li $t0, 1
	sw $t0, -1788($fp)
label400:
	addi $sp, $sp, -4
	lw $t0, -1768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1788($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1800($fp)
	addi $sp, $sp, 16
	lw $t1, -1800($fp)
	li $t2, 0
	bne $t1, $t2, label395
	j label394
label394:
	li $t0, 1
	sw $t0, -1764($fp)
label395:
	li $t0, 0
	lw $t1, -1764($fp)
	sub $t0, $t0, $t1
	sw $t0, -1804($fp)
	lw $t1, -1804($fp)
	li $t2, 0
	bne $t1, $t2, label393
	j label392
label392:
	li $t0, 1
	sw $t0, -1760($fp)
label393:
	lw $ra, -4($fp)
	lw $v0, -1760($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label386
label388:
label401:
	addi $t0, $fp, -28
	sw $t0, -1808($fp)
	lw $t0, -1208($fp)
	sw $t0, -1812($fp)
	lw $t0, -320($fp)
	sw $t0, -1816($fp)
	lw $t0, -1812($fp)
	lw $t1, -1816($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1820($fp)
	lw $t0, -416($fp)
	sw $t0, -1824($fp)
	lw $t0, -1820($fp)
	lw $t1, -1824($fp)
	add $t0, $t0, $t1
	sw $t0, -1828($fp)
	li $t0, 4
	lw $t1, -1828($fp)
	mul $t0, $t0, $t1
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	lw $t1, -1808($fp)
	add $t0, $t0, $t1
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	lw $t1, 0($t0)
	sw $t1, -1840($fp)
	lw $t1, -1840($fp)
	li $t2, 0
	bne $t1, $t2, label402
	j label403
label402:
	li $t0, 5953
	sw $t0, -1844($fp)
	lw $t0, -1172($fp)
	sw $t0, -1848($fp)
	lw $t0, -1844($fp)
	lw $t1, -1848($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1852($fp)
	li $t0, 0
	lw $t1, -1852($fp)
	sub $t0, $t0, $t1
	sw $t0, -1856($fp)
	lw $ra, -4($fp)
	lw $v0, -1856($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label401
label403:
label344:
label404:
	li $t0, 0
	sw $t0, -1860($fp)
	lw $t0, -176($fp)
	sw $t0, -1864($fp)
	li $t0, 42660
	sw $t0, -1868($fp)
	lw $t0, -1864($fp)
	lw $t1, -1868($fp)
	add $t0, $t0, $t1
	sw $t0, -1872($fp)
	lw $t1, -1872($fp)
	li $t2, 0
	bne $t1, $t2, label407
	j label409
label409:
	lw $t0, -404($fp)
	sw $t0, -1876($fp)
	li $t0, 22641
	sw $t0, -1880($fp)
	lw $t1, -1876($fp)
	lw $t2, -1880($fp)
	bgt $t1, $t2, label407
	j label408
label407:
	li $t0, 1
	sw $t0, -1860($fp)
label408:
	lw $t0, -1860($fp)
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -1884($fp)
	lw $t1, -1884($fp)
	li $t2, 0
	bne $t1, $t2, label405
	j label406
label405:
label410:
	lw $t0, -380($fp)
	sw $t0, -1888($fp)
	lw $t1, -1888($fp)
	li $t2, 0
	bne $t1, $t2, label413
	j label412
label413:
	li $t0, 0
	sw $t0, -1892($fp)
	li $t0, 0
	sw $t0, -1896($fp)
	li $t0, 36908
	sw $t0, -1900($fp)
	li $t0, 9957
	sw $t0, -1904($fp)
	lw $t1, -1900($fp)
	lw $t2, -1904($fp)
	bgt $t1, $t2, label416
	j label417
label416:
	li $t0, 1
	sw $t0, -1896($fp)
label417:
	li $t0, 218
	sw $t0, -1908($fp)
	lw $t1, -1896($fp)
	lw $t2, -1908($fp)
	bgt $t1, $t2, label414
	j label415
label414:
	li $t0, 1
	sw $t0, -1892($fp)
label415:
	lw $t0, -320($fp)
	sw $t0, -1912($fp)
	lw $t0, -392($fp)
	sw $t0, -1916($fp)
	lw $t0, -1912($fp)
	lw $t1, -1916($fp)
	sub $t0, $t0, $t1
	sw $t0, -1920($fp)
	lw $t1, -1892($fp)
	lw $t2, -1920($fp)
	ble $t1, $t2, label411
	j label412
label411:
	li $t0, 0
	sw $t0, -1924($fp)
	addi $t0, $fp, -36
	sw $t0, -1928($fp)
	li $t0, 1
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
	li $t0, 22532
	sw $t0, -1948($fp)
	jal f9
	sw $v0, -1952($fp)
	addi $sp, $sp, 4
	lw $t0, -1948($fp)
	lw $t1, -1952($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1956($fp)
	li $t0, 0
	lw $t1, -1956($fp)
	sub $t0, $t0, $t1
	sw $t0, -1960($fp)
	lw $t0, -1944($fp)
	lw $t1, -1960($fp)
	mul $t0, $t0, $t1
	sw $t0, -1964($fp)
	lw $t0, -416($fp)
	sw $t0, -1968($fp)
	addi $t0, $fp, -28
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
	lw $t0, -1968($fp)
	lw $t1, -1988($fp)
	mul $t0, $t0, $t1
	sw $t0, -1992($fp)
	li $t0, 0
	lw $t1, -1992($fp)
	sub $t0, $t0, $t1
	sw $t0, -1996($fp)
	li $t0, 0
	lw $t1, -1996($fp)
	sub $t0, $t0, $t1
	sw $t0, -2000($fp)
	lw $t1, -1964($fp)
	lw $t2, -2000($fp)
	bne $t1, $t2, label418
	j label419
label418:
	li $t0, 1
	sw $t0, -1924($fp)
label419:
	j label410
label412:
	j label404
label406:
	jal f9
	sw $v0, -2004($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -2008($fp)
	lw $t0, -380($fp)
	sw $t0, -2012($fp)
	lw $t0, -260($fp)
	sw $t0, -2016($fp)
	lw $t0, -2012($fp)
	lw $t1, -2016($fp)
	mul $t0, $t0, $t1
	sw $t0, -2020($fp)
	li $t0, 0
	sw $t0, -2024($fp)
	lw $t0, -416($fp)
	sw $t0, -2028($fp)
	lw $t1, -2028($fp)
	li $t2, 0
	bne $t1, $t2, label423
	j label422
label422:
	li $t0, 1
	sw $t0, -2024($fp)
label423:
	addi $t0, $fp, -24
	sw $t0, -2032($fp)
	lw $t0, -320($fp)
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
	lw $t0, -416($fp)
	sw $t0, -2052($fp)
	li $t0, 0
	lw $t1, -2052($fp)
	sub $t0, $t0, $t1
	sw $t0, -2056($fp)
	lw $t0, -284($fp)
	sw $t0, -2060($fp)
	lw $t0, -2056($fp)
	lw $t1, -2060($fp)
	add $t0, $t0, $t1
	sw $t0, -2064($fp)
	lw $t0, -224($fp)
	sw $t0, -2068($fp)
	addi $sp, $sp, -4
	lw $t0, -2020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2024($fp)
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
	jal f7
	sw $v0, -2072($fp)
	addi $sp, $sp, 24
	lw $t1, -2072($fp)
	li $t2, 0
	bne $t1, $t2, label421
	j label420
label420:
	li $t0, 1
	sw $t0, -2008($fp)
label421:
	lw $t0, -2004($fp)
	lw $t1, -2008($fp)
	add $t0, $t0, $t1
	sw $t0, -2076($fp)
	addi $t0, $fp, -24
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
	addi $t0, $fp, -24
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
	addi $t0, $fp, -24
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
	addi $t0, $fp, -24
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
	addi $t0, $fp, -24
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
	lw $t0, -164($fp)
	sw $t0, -2180($fp)
	lw $t0, -2180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -176($fp)
	sw $t0, -2184($fp)
	lw $t0, -2184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -188($fp)
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
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
	lw $t0, -224($fp)
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -236($fp)
	sw $t0, -2216($fp)
	lw $t0, -2216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -248($fp)
	sw $t0, -2220($fp)
	lw $t0, -2220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -260($fp)
	sw $t0, -2224($fp)
	lw $t0, -2224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -272($fp)
	sw $t0, -2228($fp)
	lw $t0, -2228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -284($fp)
	sw $t0, -2232($fp)
	lw $t0, -2232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -296($fp)
	sw $t0, -2236($fp)
	lw $t0, -2236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -308($fp)
	sw $t0, -2240($fp)
	lw $t0, -2240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -320($fp)
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -2248($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -2268($fp)
	li $t0, 1
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
	lw $t0, -380($fp)
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -392($fp)
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -404($fp)
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -416($fp)
	sw $t0, -2300($fp)
	lw $t0, -2300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -428($fp)
	sw $t0, -2304($fp)
	lw $t0, -2304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -320($fp)
	sw $t0, -2308($fp)
	lw $ra, -4($fp)
	lw $v0, -2308($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -584
	li $t0, 10846
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
	li $t0, 62728
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
	li $t0, 42740
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
	li $t0, 59408
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
	li $t0, 18796
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
	li $t0, 64879
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
	li $t0, 9091
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	li $t0, 1930
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	li $t0, 59920
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	li $t0, 60650
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	li $t0, 0
	sw $t0, -224($fp)
	li $t0, 0
	sw $t0, -228($fp)
	lw $t0, 4($fp)
	sw $t0, -232($fp)
	li $t0, 53211
	sw $t0, -236($fp)
	lw $t1, -232($fp)
	lw $t2, -236($fp)
	bne $t1, $t2, label427
	j label428
label427:
	li $t0, 1
	sw $t0, -228($fp)
label428:
	li $t0, 0
	sw $t0, -240($fp)
	lw $t0, 8($fp)
	sw $t0, -244($fp)
	lw $t1, -244($fp)
	li $t2, 0
	bne $t1, $t2, label430
	j label429
label429:
	li $t0, 1
	sw $t0, -240($fp)
label430:
	lw $t0, -192($fp)
	sw $t0, -248($fp)
	lw $t0, -240($fp)
	lw $t1, -248($fp)
	mul $t0, $t0, $t1
	sw $t0, -252($fp)
	li $t0, 0
	sw $t0, -256($fp)
	lw $t0, 8($fp)
	sw $t0, -260($fp)
	lw $t1, -260($fp)
	li $t2, 0
	bne $t1, $t2, label434
	j label432
label434:
	lw $t0, -204($fp)
	sw $t0, -264($fp)
	lw $t1, -264($fp)
	li $t2, 0
	bne $t1, $t2, label433
	j label432
label433:
	li $t0, 45064
	sw $t0, -268($fp)
	lw $t1, -268($fp)
	li $t2, 0
	bne $t1, $t2, label431
	j label432
label431:
	li $t0, 1
	sw $t0, -256($fp)
label432:
	addi $sp, $sp, -4
	lw $t0, -252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -256($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -272($fp)
	addi $sp, $sp, 12
	lw $t1, -228($fp)
	lw $t2, -272($fp)
	bne $t1, $t2, label424
	j label426
label426:
	addi $t0, $fp, -28
	sw $t0, -276($fp)
	li $t0, 4
	sw $t0, -280($fp)
	li $t0, 4
	lw $t1, -280($fp)
	mul $t0, $t0, $t1
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	lw $t1, -276($fp)
	add $t0, $t0, $t1
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	lw $t1, 0($t0)
	sw $t1, -292($fp)
	lw $t1, -292($fp)
	li $t2, 0
	bne $t1, $t2, label424
	j label425
label424:
	li $t0, 1
	sw $t0, -224($fp)
label425:
	li $t0, 0
	sw $t0, -296($fp)
	li $t0, 0
	sw $t0, -300($fp)
	lw $t0, -216($fp)
	sw $t0, -304($fp)
	li $t0, 17886
	sw $t0, -308($fp)
	li $t0, 0
	lw $t1, -308($fp)
	sub $t0, $t0, $t1
	sw $t0, -312($fp)
	lw $t0, -304($fp)
	lw $t1, -312($fp)
	sub $t0, $t0, $t1
	sw $t0, -316($fp)
	lw $t0, -216($fp)
	sw $t0, -320($fp)
	lw $t0, -192($fp)
	sw $t0, -324($fp)
	lw $t0, -320($fp)
	lw $t1, -324($fp)
	mul $t0, $t0, $t1
	sw $t0, -328($fp)
	li $t0, 0
	lw $t1, -328($fp)
	sub $t0, $t0, $t1
	sw $t0, -332($fp)
	lw $t1, -316($fp)
	lw $t2, -332($fp)
	beq $t1, $t2, label437
	j label438
label437:
	li $t0, 1
	sw $t0, -300($fp)
label438:
	addi $t0, $fp, -28
	sw $t0, -336($fp)
	lw $t0, -216($fp)
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
	lw $t0, 8($fp)
	sw $t0, -356($fp)
	li $t0, 0
	lw $t1, -356($fp)
	sub $t0, $t0, $t1
	sw $t0, -360($fp)
	lw $t0, 8($fp)
	sw $t0, -364($fp)
	lw $t0, -360($fp)
	lw $t1, -364($fp)
	add $t0, $t0, $t1
	sw $t0, -368($fp)
	lw $t0, 4($fp)
	sw $t0, -372($fp)
	lw $t0, -180($fp)
	sw $t0, -376($fp)
	lw $t0, -372($fp)
	lw $t1, -376($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -380($fp)
	li $t0, 49532
	sw $t0, -384($fp)
	lw $t0, -380($fp)
	lw $t1, -384($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -388($fp)
	li $t0, 0
	sw $t0, -392($fp)
	li $t0, 0
	sw $t0, -396($fp)
	lw $t0, 4($fp)
	sw $t0, -400($fp)
	lw $t1, -400($fp)
	li $t2, 0
	bne $t1, $t2, label442
	j label441
label441:
	li $t0, 1
	sw $t0, -396($fp)
label442:
	lw $t0, -216($fp)
	sw $t0, -404($fp)
	lw $t1, -396($fp)
	lw $t2, -404($fp)
	blt $t1, $t2, label439
	j label440
label439:
	li $t0, 1
	sw $t0, -392($fp)
label440:
	addi $sp, $sp, -4
	lw $t0, -368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -392($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -408($fp)
	addi $sp, $sp, 16
	lw $t0, -352($fp)
	lw $t1, -408($fp)
	mul $t0, $t0, $t1
	sw $t0, -412($fp)
	lw $t1, -300($fp)
	lw $t2, -412($fp)
	bne $t1, $t2, label435
	j label436
label435:
	li $t0, 1
	sw $t0, -296($fp)
label436:
	li $t0, 4816
	sw $t0, -416($fp)
	li $t0, 0
	lw $t1, -416($fp)
	sub $t0, $t0, $t1
	sw $t0, -420($fp)
	li $t0, 0
	lw $t1, -420($fp)
	sub $t0, $t0, $t1
	sw $t0, -424($fp)
	li $t0, 0
	lw $t1, -424($fp)
	sub $t0, $t0, $t1
	sw $t0, -428($fp)
	li $t0, 0
	lw $t1, -428($fp)
	sub $t0, $t0, $t1
	sw $t0, -432($fp)
	jal f9
	sw $v0, -436($fp)
	addi $sp, $sp, 4
	lw $t0, 8($fp)
	sw $t0, -440($fp)
	li $t0, 0
	lw $t1, -440($fp)
	sub $t0, $t0, $t1
	sw $t0, -444($fp)
	lw $t0, -436($fp)
	lw $t1, -444($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -448($fp)
	addi $t0, $fp, -28
	sw $t0, -452($fp)
	li $t0, 0
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
	addi $t0, $fp, -28
	sw $t0, -472($fp)
	li $t0, 1
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
	addi $t0, $fp, -28
	sw $t0, -492($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -512($fp)
	li $t0, 3
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
	addi $t0, $fp, -28
	sw $t0, -532($fp)
	li $t0, 4
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
	addi $t0, $fp, -28
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
	lw $t0, -568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -204($fp)
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -216($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 22791
	sw $t0, -588($fp)
	lw $ra, -4($fp)
	lw $v0, -588($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -7016
	li $t0, 9187
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 10770
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	li $t0, 65452
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	li $t0, 31828
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	li $t0, 47678
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	li $t0, 9873
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	li $t0, 32046
	sw $t0, -92($fp)
	addi $t0, $fp, -16
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
	li $t0, 50856
	sw $t0, -116($fp)
	addi $t0, $fp, -16
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
	li $t0, 9138
	sw $t0, -140($fp)
	addi $t0, $fp, -16
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
	li $t0, 54579
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	li $t0, 60316
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	li $t0, 19314
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	li $t0, 65425
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	li $t0, 57508
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	li $t0, 0
	sw $t0, -224($fp)
	lw $t0, 8($fp)
	sw $t0, -228($fp)
	lw $t0, -204($fp)
	sw $t0, -232($fp)
	lw $t1, -228($fp)
	lw $t2, -232($fp)
	bge $t1, $t2, label446
	j label447
label446:
	li $t0, 1
	sw $t0, -224($fp)
label447:
	lw $t0, -224($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -240($fp)
	lw $t1, -240($fp)
	li $t2, 0
	bne $t1, $t2, label443
	j label444
label443:
	li $t0, 0
	sw $t0, -244($fp)
	addi $t0, $fp, -16
	sw $t0, -248($fp)
	li $t0, 0
	sw $t0, -252($fp)
	li $t0, 62054
	sw $t0, -256($fp)
	li $t0, 0
	lw $t1, -256($fp)
	sub $t0, $t0, $t1
	sw $t0, -260($fp)
	lw $t0, -180($fp)
	sw $t0, -264($fp)
	lw $t1, -260($fp)
	lw $t2, -264($fp)
	bne $t1, $t2, label450
	j label451
label450:
	li $t0, 1
	sw $t0, -252($fp)
label451:
	li $t0, 4
	lw $t1, -252($fp)
	mul $t0, $t0, $t1
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	lw $t1, -248($fp)
	add $t0, $t0, $t1
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	lw $t1, 0($t0)
	sw $t1, -276($fp)
	lw $t0, -48($fp)
	sw $t0, -280($fp)
	lw $t1, -276($fp)
	lw $t2, -280($fp)
	beq $t1, $t2, label448
	j label449
label448:
	li $t0, 1
	sw $t0, -244($fp)
label449:
label444:
	li $t0, 59297
	sw $t0, -284($fp)
	li $t0, 10769
	sw $t0, -288($fp)
	lw $t0, -284($fp)
	lw $t1, -288($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -292($fp)
	lw $t1, -292($fp)
	li $t2, 0
	bne $t1, $t2, label452
	j label453
label452:
	li $t0, 61397
	sw $t0, -540($fp)
	addi $t0, $fp, -320
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
	li $t0, 2853
	sw $t0, -564($fp)
	addi $t0, $fp, -320
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
	li $t0, 12699
	sw $t0, -588($fp)
	addi $t0, $fp, -320
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
	li $t0, 55782
	sw $t0, -612($fp)
	addi $t0, $fp, -320
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
	li $t0, 63503
	sw $t0, -636($fp)
	addi $t0, $fp, -320
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
	li $t0, 374
	sw $t0, -660($fp)
	addi $t0, $fp, -320
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
	li $t0, 35310
	sw $t0, -684($fp)
	addi $t0, $fp, -320
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
	li $t0, 7346
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	li $t0, 24967
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -728($fp)
	li $t0, 689
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -740($fp)
	li $t0, 25232
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -752($fp)
	li $t0, 8963
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -764($fp)
	li $t0, 5505
	sw $t0, -768($fp)
	addi $t0, $fp, -324
	sw $t0, -772($fp)
	li $t0, 0
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
	li $t0, 48024
	sw $t0, -792($fp)
	addi $t0, $fp, -364
	sw $t0, -796($fp)
	li $t0, 0
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
	li $t0, 18151
	sw $t0, -816($fp)
	addi $t0, $fp, -364
	sw $t0, -820($fp)
	li $t0, 1
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -828($fp)
	lw $t0, -820($fp)
	lw $t1, -828($fp)
	add $t0, $t0, $t1
	sw $t0, -832($fp)
	lw $t0, -816($fp)
	lw $t1, -832($fp)
	sw $t0, 0($t1)
	lw $t0, -832($fp)
	lw $t1, 0($t0)
	sw $t1, -836($fp)
	li $t0, 16275
	sw $t0, -840($fp)
	addi $t0, $fp, -364
	sw $t0, -844($fp)
	li $t0, 2
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
	li $t0, 47940
	sw $t0, -864($fp)
	addi $t0, $fp, -364
	sw $t0, -868($fp)
	li $t0, 3
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
	li $t0, 49979
	sw $t0, -888($fp)
	addi $t0, $fp, -364
	sw $t0, -892($fp)
	li $t0, 4
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -900($fp)
	lw $t0, -892($fp)
	lw $t1, -900($fp)
	add $t0, $t0, $t1
	sw $t0, -904($fp)
	lw $t0, -888($fp)
	lw $t1, -904($fp)
	sw $t0, 0($t1)
	lw $t0, -904($fp)
	lw $t1, 0($t0)
	sw $t1, -908($fp)
	li $t0, 63953
	sw $t0, -912($fp)
	addi $t0, $fp, -364
	sw $t0, -916($fp)
	li $t0, 5
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -924($fp)
	lw $t0, -916($fp)
	lw $t1, -924($fp)
	add $t0, $t0, $t1
	sw $t0, -928($fp)
	lw $t0, -912($fp)
	lw $t1, -928($fp)
	sw $t0, 0($t1)
	lw $t0, -928($fp)
	lw $t1, 0($t0)
	sw $t1, -932($fp)
	li $t0, 57813
	sw $t0, -936($fp)
	addi $t0, $fp, -364
	sw $t0, -940($fp)
	li $t0, 6
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -948($fp)
	lw $t0, -940($fp)
	lw $t1, -948($fp)
	add $t0, $t0, $t1
	sw $t0, -952($fp)
	lw $t0, -936($fp)
	lw $t1, -952($fp)
	sw $t0, 0($t1)
	lw $t0, -952($fp)
	lw $t1, 0($t0)
	sw $t1, -956($fp)
	li $t0, 16490
	sw $t0, -960($fp)
	addi $t0, $fp, -364
	sw $t0, -964($fp)
	li $t0, 7
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -972($fp)
	lw $t0, -964($fp)
	lw $t1, -972($fp)
	add $t0, $t0, $t1
	sw $t0, -976($fp)
	lw $t0, -960($fp)
	lw $t1, -976($fp)
	sw $t0, 0($t1)
	lw $t0, -976($fp)
	lw $t1, 0($t0)
	sw $t1, -980($fp)
	li $t0, 49273
	sw $t0, -984($fp)
	addi $t0, $fp, -364
	sw $t0, -988($fp)
	li $t0, 8
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -996($fp)
	lw $t0, -988($fp)
	lw $t1, -996($fp)
	add $t0, $t0, $t1
	sw $t0, -1000($fp)
	lw $t0, -984($fp)
	lw $t1, -1000($fp)
	sw $t0, 0($t1)
	lw $t0, -1000($fp)
	lw $t1, 0($t0)
	sw $t1, -1004($fp)
	li $t0, 1416
	sw $t0, -1008($fp)
	addi $t0, $fp, -364
	sw $t0, -1012($fp)
	li $t0, 9
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
	li $t0, 5533
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	sw $t0, -1040($fp)
	li $t0, 44053
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -1052($fp)
	li $t0, 20730
	sw $t0, -1056($fp)
	addi $t0, $fp, -384
	sw $t0, -1060($fp)
	li $t0, 0
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
	li $t0, 5422
	sw $t0, -1080($fp)
	addi $t0, $fp, -384
	sw $t0, -1084($fp)
	li $t0, 1
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
	li $t0, 36026
	sw $t0, -1104($fp)
	addi $t0, $fp, -384
	sw $t0, -1108($fp)
	li $t0, 2
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
	li $t0, 17249
	sw $t0, -1128($fp)
	addi $t0, $fp, -384
	sw $t0, -1132($fp)
	li $t0, 3
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
	li $t0, 64719
	sw $t0, -1152($fp)
	addi $t0, $fp, -384
	sw $t0, -1156($fp)
	li $t0, 4
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
	li $t0, 46795
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	sw $t0, -1184($fp)
	li $t0, 13110
	sw $t0, -1188($fp)
	addi $t0, $fp, -400
	sw $t0, -1192($fp)
	li $t0, 0
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
	li $t0, 2036
	sw $t0, -1212($fp)
	addi $t0, $fp, -400
	sw $t0, -1216($fp)
	li $t0, 1
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
	li $t0, 59494
	sw $t0, -1236($fp)
	addi $t0, $fp, -400
	sw $t0, -1240($fp)
	li $t0, 2
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1248($fp)
	lw $t0, -1240($fp)
	lw $t1, -1248($fp)
	add $t0, $t0, $t1
	sw $t0, -1252($fp)
	lw $t0, -1236($fp)
	lw $t1, -1252($fp)
	sw $t0, 0($t1)
	lw $t0, -1252($fp)
	lw $t1, 0($t0)
	sw $t1, -1256($fp)
	li $t0, 3356
	sw $t0, -1260($fp)
	addi $t0, $fp, -400
	sw $t0, -1264($fp)
	li $t0, 3
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
	li $t0, 3
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -1292($fp)
	li $t0, 59868
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	sw $t0, -1304($fp)
	li $t0, 38667
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	sw $t0, -1316($fp)
	li $t0, 7349
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	sw $t0, -1328($fp)
	li $t0, 19299
	sw $t0, -1332($fp)
	addi $t0, $fp, -428
	sw $t0, -1336($fp)
	li $t0, 0
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1344($fp)
	lw $t0, -1336($fp)
	lw $t1, -1344($fp)
	add $t0, $t0, $t1
	sw $t0, -1348($fp)
	lw $t0, -1332($fp)
	lw $t1, -1348($fp)
	sw $t0, 0($t1)
	lw $t0, -1348($fp)
	lw $t1, 0($t0)
	sw $t1, -1352($fp)
	li $t0, 39356
	sw $t0, -1356($fp)
	addi $t0, $fp, -428
	sw $t0, -1360($fp)
	li $t0, 1
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1368($fp)
	lw $t0, -1360($fp)
	lw $t1, -1368($fp)
	add $t0, $t0, $t1
	sw $t0, -1372($fp)
	lw $t0, -1356($fp)
	lw $t1, -1372($fp)
	sw $t0, 0($t1)
	lw $t0, -1372($fp)
	lw $t1, 0($t0)
	sw $t1, -1376($fp)
	li $t0, 32582
	sw $t0, -1380($fp)
	addi $t0, $fp, -428
	sw $t0, -1384($fp)
	li $t0, 2
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1392($fp)
	lw $t0, -1384($fp)
	lw $t1, -1392($fp)
	add $t0, $t0, $t1
	sw $t0, -1396($fp)
	lw $t0, -1380($fp)
	lw $t1, -1396($fp)
	sw $t0, 0($t1)
	lw $t0, -1396($fp)
	lw $t1, 0($t0)
	sw $t1, -1400($fp)
	li $t0, 28263
	sw $t0, -1404($fp)
	addi $t0, $fp, -428
	sw $t0, -1408($fp)
	li $t0, 3
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1416($fp)
	lw $t0, -1408($fp)
	lw $t1, -1416($fp)
	add $t0, $t0, $t1
	sw $t0, -1420($fp)
	lw $t0, -1404($fp)
	lw $t1, -1420($fp)
	sw $t0, 0($t1)
	lw $t0, -1420($fp)
	lw $t1, 0($t0)
	sw $t1, -1424($fp)
	li $t0, 44861
	sw $t0, -1428($fp)
	addi $t0, $fp, -428
	sw $t0, -1432($fp)
	li $t0, 4
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1440($fp)
	lw $t0, -1432($fp)
	lw $t1, -1440($fp)
	add $t0, $t0, $t1
	sw $t0, -1444($fp)
	lw $t0, -1428($fp)
	lw $t1, -1444($fp)
	sw $t0, 0($t1)
	lw $t0, -1444($fp)
	lw $t1, 0($t0)
	sw $t1, -1448($fp)
	li $t0, 15070
	sw $t0, -1452($fp)
	addi $t0, $fp, -428
	sw $t0, -1456($fp)
	li $t0, 5
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1464($fp)
	lw $t0, -1456($fp)
	lw $t1, -1464($fp)
	add $t0, $t0, $t1
	sw $t0, -1468($fp)
	lw $t0, -1452($fp)
	lw $t1, -1468($fp)
	sw $t0, 0($t1)
	lw $t0, -1468($fp)
	lw $t1, 0($t0)
	sw $t1, -1472($fp)
	li $t0, 46414
	sw $t0, -1476($fp)
	addi $t0, $fp, -428
	sw $t0, -1480($fp)
	li $t0, 6
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1488($fp)
	lw $t0, -1480($fp)
	lw $t1, -1488($fp)
	add $t0, $t0, $t1
	sw $t0, -1492($fp)
	lw $t0, -1476($fp)
	lw $t1, -1492($fp)
	sw $t0, 0($t1)
	lw $t0, -1492($fp)
	lw $t1, 0($t0)
	sw $t1, -1496($fp)
	li $t0, 61137
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	sw $t0, -1508($fp)
	li $t0, 63010
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	sw $t0, -1520($fp)
	li $t0, 30857
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	sw $t0, -1532($fp)
	li $t0, 59554
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	sw $t0, -1544($fp)
	li $t0, 55287
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	sw $t0, -1556($fp)
	li $t0, 47347
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	sw $t0, -1568($fp)
	li $t0, 43292
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	sw $t0, -1580($fp)
	li $t0, 56703
	sw $t0, -1584($fp)
	addi $t0, $fp, -468
	sw $t0, -1588($fp)
	li $t0, 0
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
	li $t0, 52880
	sw $t0, -1608($fp)
	addi $t0, $fp, -468
	sw $t0, -1612($fp)
	li $t0, 1
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
	li $t0, 21809
	sw $t0, -1632($fp)
	addi $t0, $fp, -468
	sw $t0, -1636($fp)
	li $t0, 2
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
	li $t0, 11898
	sw $t0, -1656($fp)
	addi $t0, $fp, -468
	sw $t0, -1660($fp)
	li $t0, 3
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
	li $t0, 58302
	sw $t0, -1680($fp)
	addi $t0, $fp, -468
	sw $t0, -1684($fp)
	li $t0, 4
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
	li $t0, 57835
	sw $t0, -1704($fp)
	addi $t0, $fp, -468
	sw $t0, -1708($fp)
	li $t0, 5
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
	li $t0, 29147
	sw $t0, -1728($fp)
	addi $t0, $fp, -468
	sw $t0, -1732($fp)
	li $t0, 6
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
	li $t0, 57486
	sw $t0, -1752($fp)
	addi $t0, $fp, -468
	sw $t0, -1756($fp)
	li $t0, 7
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
	li $t0, 39094
	sw $t0, -1776($fp)
	addi $t0, $fp, -468
	sw $t0, -1780($fp)
	li $t0, 8
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1788($fp)
	lw $t0, -1780($fp)
	lw $t1, -1788($fp)
	add $t0, $t0, $t1
	sw $t0, -1792($fp)
	lw $t0, -1776($fp)
	lw $t1, -1792($fp)
	sw $t0, 0($t1)
	lw $t0, -1792($fp)
	lw $t1, 0($t0)
	sw $t1, -1796($fp)
	li $t0, 42257
	sw $t0, -1800($fp)
	addi $t0, $fp, -468
	sw $t0, -1804($fp)
	li $t0, 9
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1812($fp)
	lw $t0, -1804($fp)
	lw $t1, -1812($fp)
	add $t0, $t0, $t1
	sw $t0, -1816($fp)
	lw $t0, -1800($fp)
	lw $t1, -1816($fp)
	sw $t0, 0($t1)
	lw $t0, -1816($fp)
	lw $t1, 0($t0)
	sw $t1, -1820($fp)
	li $t0, 59522
	sw $t0, -1824($fp)
	addi $t0, $fp, -488
	sw $t0, -1828($fp)
	li $t0, 0
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1836($fp)
	lw $t0, -1828($fp)
	lw $t1, -1836($fp)
	add $t0, $t0, $t1
	sw $t0, -1840($fp)
	lw $t0, -1824($fp)
	lw $t1, -1840($fp)
	sw $t0, 0($t1)
	lw $t0, -1840($fp)
	lw $t1, 0($t0)
	sw $t1, -1844($fp)
	li $t0, 33052
	sw $t0, -1848($fp)
	addi $t0, $fp, -488
	sw $t0, -1852($fp)
	li $t0, 1
	sw $t0, -1856($fp)
	lw $t0, -1856($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1860($fp)
	lw $t0, -1852($fp)
	lw $t1, -1860($fp)
	add $t0, $t0, $t1
	sw $t0, -1864($fp)
	lw $t0, -1848($fp)
	lw $t1, -1864($fp)
	sw $t0, 0($t1)
	lw $t0, -1864($fp)
	lw $t1, 0($t0)
	sw $t1, -1868($fp)
	li $t0, 45614
	sw $t0, -1872($fp)
	addi $t0, $fp, -488
	sw $t0, -1876($fp)
	li $t0, 2
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1884($fp)
	lw $t0, -1876($fp)
	lw $t1, -1884($fp)
	add $t0, $t0, $t1
	sw $t0, -1888($fp)
	lw $t0, -1872($fp)
	lw $t1, -1888($fp)
	sw $t0, 0($t1)
	lw $t0, -1888($fp)
	lw $t1, 0($t0)
	sw $t1, -1892($fp)
	li $t0, 59526
	sw $t0, -1896($fp)
	addi $t0, $fp, -488
	sw $t0, -1900($fp)
	li $t0, 3
	sw $t0, -1904($fp)
	lw $t0, -1904($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1908($fp)
	lw $t0, -1900($fp)
	lw $t1, -1908($fp)
	add $t0, $t0, $t1
	sw $t0, -1912($fp)
	lw $t0, -1896($fp)
	lw $t1, -1912($fp)
	sw $t0, 0($t1)
	lw $t0, -1912($fp)
	lw $t1, 0($t0)
	sw $t1, -1916($fp)
	li $t0, 27385
	sw $t0, -1920($fp)
	addi $t0, $fp, -488
	sw $t0, -1924($fp)
	li $t0, 4
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1932($fp)
	lw $t0, -1924($fp)
	lw $t1, -1932($fp)
	add $t0, $t0, $t1
	sw $t0, -1936($fp)
	lw $t0, -1920($fp)
	lw $t1, -1936($fp)
	sw $t0, 0($t1)
	lw $t0, -1936($fp)
	lw $t1, 0($t0)
	sw $t1, -1940($fp)
	li $t0, 18745
	sw $t0, -1944($fp)
	lw $t0, -1944($fp)
	sw $t0, -1948($fp)
	lw $t0, -1948($fp)
	sw $t0, -1952($fp)
	li $t0, 1339
	sw $t0, -1956($fp)
	lw $t0, -1956($fp)
	sw $t0, -1960($fp)
	lw $t0, -1960($fp)
	sw $t0, -1964($fp)
	li $t0, 46684
	sw $t0, -1968($fp)
	addi $t0, $fp, -512
	sw $t0, -1972($fp)
	li $t0, 0
	sw $t0, -1976($fp)
	lw $t0, -1976($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1980($fp)
	lw $t0, -1972($fp)
	lw $t1, -1980($fp)
	add $t0, $t0, $t1
	sw $t0, -1984($fp)
	lw $t0, -1968($fp)
	lw $t1, -1984($fp)
	sw $t0, 0($t1)
	lw $t0, -1984($fp)
	lw $t1, 0($t0)
	sw $t1, -1988($fp)
	li $t0, 58101
	sw $t0, -1992($fp)
	addi $t0, $fp, -512
	sw $t0, -1996($fp)
	li $t0, 1
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2004($fp)
	lw $t0, -1996($fp)
	lw $t1, -2004($fp)
	add $t0, $t0, $t1
	sw $t0, -2008($fp)
	lw $t0, -1992($fp)
	lw $t1, -2008($fp)
	sw $t0, 0($t1)
	lw $t0, -2008($fp)
	lw $t1, 0($t0)
	sw $t1, -2012($fp)
	li $t0, 33921
	sw $t0, -2016($fp)
	addi $t0, $fp, -512
	sw $t0, -2020($fp)
	li $t0, 2
	sw $t0, -2024($fp)
	lw $t0, -2024($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2028($fp)
	lw $t0, -2020($fp)
	lw $t1, -2028($fp)
	add $t0, $t0, $t1
	sw $t0, -2032($fp)
	lw $t0, -2016($fp)
	lw $t1, -2032($fp)
	sw $t0, 0($t1)
	lw $t0, -2032($fp)
	lw $t1, 0($t0)
	sw $t1, -2036($fp)
	li $t0, 9411
	sw $t0, -2040($fp)
	addi $t0, $fp, -512
	sw $t0, -2044($fp)
	li $t0, 3
	sw $t0, -2048($fp)
	lw $t0, -2048($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2052($fp)
	lw $t0, -2044($fp)
	lw $t1, -2052($fp)
	add $t0, $t0, $t1
	sw $t0, -2056($fp)
	lw $t0, -2040($fp)
	lw $t1, -2056($fp)
	sw $t0, 0($t1)
	lw $t0, -2056($fp)
	lw $t1, 0($t0)
	sw $t1, -2060($fp)
	li $t0, 37426
	sw $t0, -2064($fp)
	addi $t0, $fp, -512
	sw $t0, -2068($fp)
	li $t0, 4
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2076($fp)
	lw $t0, -2068($fp)
	lw $t1, -2076($fp)
	add $t0, $t0, $t1
	sw $t0, -2080($fp)
	lw $t0, -2064($fp)
	lw $t1, -2080($fp)
	sw $t0, 0($t1)
	lw $t0, -2080($fp)
	lw $t1, 0($t0)
	sw $t1, -2084($fp)
	li $t0, 48991
	sw $t0, -2088($fp)
	addi $t0, $fp, -512
	sw $t0, -2092($fp)
	li $t0, 5
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2100($fp)
	lw $t0, -2092($fp)
	lw $t1, -2100($fp)
	add $t0, $t0, $t1
	sw $t0, -2104($fp)
	lw $t0, -2088($fp)
	lw $t1, -2104($fp)
	sw $t0, 0($t1)
	lw $t0, -2104($fp)
	lw $t1, 0($t0)
	sw $t1, -2108($fp)
	li $t0, 55825
	sw $t0, -2112($fp)
	addi $t0, $fp, -528
	sw $t0, -2116($fp)
	li $t0, 0
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2124($fp)
	lw $t0, -2116($fp)
	lw $t1, -2124($fp)
	add $t0, $t0, $t1
	sw $t0, -2128($fp)
	lw $t0, -2112($fp)
	lw $t1, -2128($fp)
	sw $t0, 0($t1)
	lw $t0, -2128($fp)
	lw $t1, 0($t0)
	sw $t1, -2132($fp)
	li $t0, 33027
	sw $t0, -2136($fp)
	addi $t0, $fp, -528
	sw $t0, -2140($fp)
	li $t0, 1
	sw $t0, -2144($fp)
	lw $t0, -2144($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2148($fp)
	lw $t0, -2140($fp)
	lw $t1, -2148($fp)
	add $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $t0, -2136($fp)
	lw $t1, -2152($fp)
	sw $t0, 0($t1)
	lw $t0, -2152($fp)
	lw $t1, 0($t0)
	sw $t1, -2156($fp)
	li $t0, 46465
	sw $t0, -2160($fp)
	addi $t0, $fp, -528
	sw $t0, -2164($fp)
	li $t0, 2
	sw $t0, -2168($fp)
	lw $t0, -2168($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2172($fp)
	lw $t0, -2164($fp)
	lw $t1, -2172($fp)
	add $t0, $t0, $t1
	sw $t0, -2176($fp)
	lw $t0, -2160($fp)
	lw $t1, -2176($fp)
	sw $t0, 0($t1)
	lw $t0, -2176($fp)
	lw $t1, 0($t0)
	sw $t1, -2180($fp)
	li $t0, 21147
	sw $t0, -2184($fp)
	addi $t0, $fp, -528
	sw $t0, -2188($fp)
	li $t0, 3
	sw $t0, -2192($fp)
	lw $t0, -2192($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2196($fp)
	lw $t0, -2188($fp)
	lw $t1, -2196($fp)
	add $t0, $t0, $t1
	sw $t0, -2200($fp)
	lw $t0, -2184($fp)
	lw $t1, -2200($fp)
	sw $t0, 0($t1)
	lw $t0, -2200($fp)
	lw $t1, 0($t0)
	sw $t1, -2204($fp)
	li $t0, 27046
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	sw $t0, -2216($fp)
	li $t0, 36217
	sw $t0, -2220($fp)
	addi $t0, $fp, -536
	sw $t0, -2224($fp)
	li $t0, 0
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
	li $t0, 2958
	sw $t0, -2244($fp)
	addi $t0, $fp, -536
	sw $t0, -2248($fp)
	li $t0, 1
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
	li $t0, 4802
	sw $t0, -2268($fp)
	lw $t0, -2268($fp)
	sw $t0, -2272($fp)
	lw $t0, -2272($fp)
	sw $t0, -2276($fp)
	li $t0, 27384
	sw $t0, -2280($fp)
	lw $t0, -2280($fp)
	sw $t0, -2284($fp)
	lw $t0, -2284($fp)
	sw $t0, -2288($fp)
	li $t0, 55839
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	sw $t0, -2300($fp)
	li $t0, 26611
	sw $t0, -2304($fp)
	lw $t0, -2304($fp)
	sw $t0, -2308($fp)
	lw $t0, -2308($fp)
	sw $t0, -2312($fp)
	li $t0, 39282
	sw $t0, -2316($fp)
	lw $t0, -2316($fp)
	sw $t0, -2320($fp)
	lw $t0, -2320($fp)
	sw $t0, -2324($fp)
	li $t0, 48605
	sw $t0, -2328($fp)
	lw $t0, -2328($fp)
	sw $t0, -2332($fp)
	lw $t0, -2332($fp)
	sw $t0, -2336($fp)
	li $t0, 18911
	sw $t0, -2340($fp)
	lw $t0, -2340($fp)
	sw $t0, -2344($fp)
	lw $t0, -2344($fp)
	sw $t0, -2348($fp)
	li $t0, 2893
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	sw $t0, -2360($fp)
	li $t0, 40555
	sw $t0, -2364($fp)
	lw $t0, -2364($fp)
	sw $t0, -2368($fp)
	lw $t0, -2368($fp)
	sw $t0, -2372($fp)
	addi $t0, $fp, -320
	sw $t0, -2376($fp)
	li $t0, 0
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
	addi $t0, $fp, -320
	sw $t0, -2396($fp)
	li $t0, 1
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
	addi $t0, $fp, -320
	sw $t0, -2416($fp)
	li $t0, 2
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
	addi $t0, $fp, -320
	sw $t0, -2436($fp)
	li $t0, 3
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
	addi $t0, $fp, -320
	sw $t0, -2456($fp)
	li $t0, 4
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
	addi $t0, $fp, -320
	sw $t0, -2476($fp)
	li $t0, 5
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
	addi $t0, $fp, -320
	sw $t0, -2496($fp)
	li $t0, 6
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
	lw $t0, -712($fp)
	sw $t0, -2516($fp)
	lw $t0, -2516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -724($fp)
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -736($fp)
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -748($fp)
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -760($fp)
	sw $t0, -2532($fp)
	lw $t0, -2532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -2536($fp)
	li $t0, 0
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
	addi $t0, $fp, -364
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
	addi $t0, $fp, -364
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
	addi $t0, $fp, -364
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
	addi $t0, $fp, -364
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
	addi $t0, $fp, -364
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
	addi $t0, $fp, -364
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
	addi $t0, $fp, -364
	sw $t0, -2676($fp)
	li $t0, 6
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
	addi $t0, $fp, -364
	sw $t0, -2696($fp)
	li $t0, 7
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
	addi $t0, $fp, -364
	sw $t0, -2716($fp)
	li $t0, 8
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
	addi $t0, $fp, -364
	sw $t0, -2736($fp)
	li $t0, 9
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
	lw $t0, -1036($fp)
	sw $t0, -2756($fp)
	lw $t0, -2756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1048($fp)
	sw $t0, -2760($fp)
	lw $t0, -2760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -384
	sw $t0, -2764($fp)
	li $t0, 0
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
	addi $t0, $fp, -384
	sw $t0, -2784($fp)
	li $t0, 1
	sw $t0, -2788($fp)
	li $t0, 4
	lw $t1, -2788($fp)
	mul $t0, $t0, $t1
	sw $t0, -2792($fp)
	lw $t0, -2792($fp)
	lw $t1, -2784($fp)
	add $t0, $t0, $t1
	sw $t0, -2796($fp)
	lw $t0, -2796($fp)
	lw $t1, 0($t0)
	sw $t1, -2800($fp)
	lw $t0, -2800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -384
	sw $t0, -2804($fp)
	li $t0, 2
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
	lw $t0, -2820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -384
	sw $t0, -2824($fp)
	li $t0, 3
	sw $t0, -2828($fp)
	li $t0, 4
	lw $t1, -2828($fp)
	mul $t0, $t0, $t1
	sw $t0, -2832($fp)
	lw $t0, -2832($fp)
	lw $t1, -2824($fp)
	add $t0, $t0, $t1
	sw $t0, -2836($fp)
	lw $t0, -2836($fp)
	lw $t1, 0($t0)
	sw $t1, -2840($fp)
	lw $t0, -2840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -384
	sw $t0, -2844($fp)
	li $t0, 4
	sw $t0, -2848($fp)
	li $t0, 4
	lw $t1, -2848($fp)
	mul $t0, $t0, $t1
	sw $t0, -2852($fp)
	lw $t0, -2852($fp)
	lw $t1, -2844($fp)
	add $t0, $t0, $t1
	sw $t0, -2856($fp)
	lw $t0, -2856($fp)
	lw $t1, 0($t0)
	sw $t1, -2860($fp)
	lw $t0, -2860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1180($fp)
	sw $t0, -2864($fp)
	lw $t0, -2864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -400
	sw $t0, -2868($fp)
	li $t0, 0
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
	addi $t0, $fp, -400
	sw $t0, -2888($fp)
	li $t0, 1
	sw $t0, -2892($fp)
	li $t0, 4
	lw $t1, -2892($fp)
	mul $t0, $t0, $t1
	sw $t0, -2896($fp)
	lw $t0, -2896($fp)
	lw $t1, -2888($fp)
	add $t0, $t0, $t1
	sw $t0, -2900($fp)
	lw $t0, -2900($fp)
	lw $t1, 0($t0)
	sw $t1, -2904($fp)
	lw $t0, -2904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -400
	sw $t0, -2908($fp)
	li $t0, 2
	sw $t0, -2912($fp)
	li $t0, 4
	lw $t1, -2912($fp)
	mul $t0, $t0, $t1
	sw $t0, -2916($fp)
	lw $t0, -2916($fp)
	lw $t1, -2908($fp)
	add $t0, $t0, $t1
	sw $t0, -2920($fp)
	lw $t0, -2920($fp)
	lw $t1, 0($t0)
	sw $t1, -2924($fp)
	lw $t0, -2924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -400
	sw $t0, -2928($fp)
	li $t0, 3
	sw $t0, -2932($fp)
	li $t0, 4
	lw $t1, -2932($fp)
	mul $t0, $t0, $t1
	sw $t0, -2936($fp)
	lw $t0, -2936($fp)
	lw $t1, -2928($fp)
	add $t0, $t0, $t1
	sw $t0, -2940($fp)
	lw $t0, -2940($fp)
	lw $t1, 0($t0)
	sw $t1, -2944($fp)
	lw $t0, -2944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1288($fp)
	sw $t0, -2948($fp)
	lw $t0, -2948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1300($fp)
	sw $t0, -2952($fp)
	lw $t0, -2952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1312($fp)
	sw $t0, -2956($fp)
	lw $t0, -2956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1324($fp)
	sw $t0, -2960($fp)
	lw $t0, -2960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -428
	sw $t0, -2964($fp)
	li $t0, 0
	sw $t0, -2968($fp)
	li $t0, 4
	lw $t1, -2968($fp)
	mul $t0, $t0, $t1
	sw $t0, -2972($fp)
	lw $t0, -2972($fp)
	lw $t1, -2964($fp)
	add $t0, $t0, $t1
	sw $t0, -2976($fp)
	lw $t0, -2976($fp)
	lw $t1, 0($t0)
	sw $t1, -2980($fp)
	lw $t0, -2980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -428
	sw $t0, -2984($fp)
	li $t0, 1
	sw $t0, -2988($fp)
	li $t0, 4
	lw $t1, -2988($fp)
	mul $t0, $t0, $t1
	sw $t0, -2992($fp)
	lw $t0, -2992($fp)
	lw $t1, -2984($fp)
	add $t0, $t0, $t1
	sw $t0, -2996($fp)
	lw $t0, -2996($fp)
	lw $t1, 0($t0)
	sw $t1, -3000($fp)
	lw $t0, -3000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -428
	sw $t0, -3004($fp)
	li $t0, 2
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
	lw $t0, -3020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -428
	sw $t0, -3024($fp)
	li $t0, 3
	sw $t0, -3028($fp)
	li $t0, 4
	lw $t1, -3028($fp)
	mul $t0, $t0, $t1
	sw $t0, -3032($fp)
	lw $t0, -3032($fp)
	lw $t1, -3024($fp)
	add $t0, $t0, $t1
	sw $t0, -3036($fp)
	lw $t0, -3036($fp)
	lw $t1, 0($t0)
	sw $t1, -3040($fp)
	lw $t0, -3040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -428
	sw $t0, -3044($fp)
	li $t0, 4
	sw $t0, -3048($fp)
	li $t0, 4
	lw $t1, -3048($fp)
	mul $t0, $t0, $t1
	sw $t0, -3052($fp)
	lw $t0, -3052($fp)
	lw $t1, -3044($fp)
	add $t0, $t0, $t1
	sw $t0, -3056($fp)
	lw $t0, -3056($fp)
	lw $t1, 0($t0)
	sw $t1, -3060($fp)
	lw $t0, -3060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -428
	sw $t0, -3064($fp)
	li $t0, 5
	sw $t0, -3068($fp)
	li $t0, 4
	lw $t1, -3068($fp)
	mul $t0, $t0, $t1
	sw $t0, -3072($fp)
	lw $t0, -3072($fp)
	lw $t1, -3064($fp)
	add $t0, $t0, $t1
	sw $t0, -3076($fp)
	lw $t0, -3076($fp)
	lw $t1, 0($t0)
	sw $t1, -3080($fp)
	lw $t0, -3080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -428
	sw $t0, -3084($fp)
	li $t0, 6
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
	lw $t0, -3100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1504($fp)
	sw $t0, -3104($fp)
	lw $t0, -3104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1516($fp)
	sw $t0, -3108($fp)
	lw $t0, -3108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1528($fp)
	sw $t0, -3112($fp)
	lw $t0, -3112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1540($fp)
	sw $t0, -3116($fp)
	lw $t0, -3116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1552($fp)
	sw $t0, -3120($fp)
	lw $t0, -3120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1564($fp)
	sw $t0, -3124($fp)
	lw $t0, -3124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1576($fp)
	sw $t0, -3128($fp)
	lw $t0, -3128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -468
	sw $t0, -3132($fp)
	li $t0, 0
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
	addi $t0, $fp, -468
	sw $t0, -3152($fp)
	li $t0, 1
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
	addi $t0, $fp, -468
	sw $t0, -3172($fp)
	li $t0, 2
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
	addi $t0, $fp, -468
	sw $t0, -3192($fp)
	li $t0, 3
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
	addi $t0, $fp, -468
	sw $t0, -3212($fp)
	li $t0, 4
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
	addi $t0, $fp, -468
	sw $t0, -3232($fp)
	li $t0, 5
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
	addi $t0, $fp, -468
	sw $t0, -3252($fp)
	li $t0, 6
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
	addi $t0, $fp, -468
	sw $t0, -3272($fp)
	li $t0, 7
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
	addi $t0, $fp, -468
	sw $t0, -3292($fp)
	li $t0, 8
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
	addi $t0, $fp, -468
	sw $t0, -3312($fp)
	li $t0, 9
	sw $t0, -3316($fp)
	li $t0, 4
	lw $t1, -3316($fp)
	mul $t0, $t0, $t1
	sw $t0, -3320($fp)
	lw $t0, -3320($fp)
	lw $t1, -3312($fp)
	add $t0, $t0, $t1
	sw $t0, -3324($fp)
	lw $t0, -3324($fp)
	lw $t1, 0($t0)
	sw $t1, -3328($fp)
	lw $t0, -3328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -488
	sw $t0, -3332($fp)
	li $t0, 0
	sw $t0, -3336($fp)
	li $t0, 4
	lw $t1, -3336($fp)
	mul $t0, $t0, $t1
	sw $t0, -3340($fp)
	lw $t0, -3340($fp)
	lw $t1, -3332($fp)
	add $t0, $t0, $t1
	sw $t0, -3344($fp)
	lw $t0, -3344($fp)
	lw $t1, 0($t0)
	sw $t1, -3348($fp)
	lw $t0, -3348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -488
	sw $t0, -3352($fp)
	li $t0, 1
	sw $t0, -3356($fp)
	li $t0, 4
	lw $t1, -3356($fp)
	mul $t0, $t0, $t1
	sw $t0, -3360($fp)
	lw $t0, -3360($fp)
	lw $t1, -3352($fp)
	add $t0, $t0, $t1
	sw $t0, -3364($fp)
	lw $t0, -3364($fp)
	lw $t1, 0($t0)
	sw $t1, -3368($fp)
	lw $t0, -3368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -488
	sw $t0, -3372($fp)
	li $t0, 2
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
	addi $t0, $fp, -488
	sw $t0, -3392($fp)
	li $t0, 3
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
	addi $t0, $fp, -488
	sw $t0, -3412($fp)
	li $t0, 4
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
	lw $t0, -1948($fp)
	sw $t0, -3432($fp)
	lw $t0, -3432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1960($fp)
	sw $t0, -3436($fp)
	lw $t0, -3436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -512
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
	addi $t0, $fp, -512
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
	addi $t0, $fp, -512
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
	addi $t0, $fp, -512
	sw $t0, -3500($fp)
	li $t0, 3
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
	addi $t0, $fp, -512
	sw $t0, -3520($fp)
	li $t0, 4
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
	addi $t0, $fp, -512
	sw $t0, -3540($fp)
	li $t0, 5
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
	addi $t0, $fp, -528
	sw $t0, -3560($fp)
	li $t0, 0
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
	addi $t0, $fp, -528
	sw $t0, -3580($fp)
	li $t0, 1
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
	addi $t0, $fp, -528
	sw $t0, -3600($fp)
	li $t0, 2
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
	addi $t0, $fp, -528
	sw $t0, -3620($fp)
	li $t0, 3
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
	lw $t0, -2212($fp)
	sw $t0, -3640($fp)
	lw $t0, -3640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -536
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
	addi $t0, $fp, -536
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
	lw $t0, -2272($fp)
	sw $t0, -3684($fp)
	lw $t0, -3684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2284($fp)
	sw $t0, -3688($fp)
	lw $t0, -3688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2296($fp)
	sw $t0, -3692($fp)
	lw $t0, -3692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2308($fp)
	sw $t0, -3696($fp)
	lw $t0, -3696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2320($fp)
	sw $t0, -3700($fp)
	lw $t0, -3700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2332($fp)
	sw $t0, -3704($fp)
	lw $t0, -3704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2344($fp)
	sw $t0, -3708($fp)
	lw $t0, -3708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2356($fp)
	sw $t0, -3712($fp)
	lw $t0, -3712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2368($fp)
	sw $t0, -3716($fp)
	lw $t0, -3716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3720($fp)
	addi $t0, $fp, -536
	sw $t0, -3724($fp)
	li $t0, 0
	sw $t0, -3728($fp)
	li $t0, 58005
	sw $t0, -3732($fp)
	lw $t1, -3732($fp)
	li $t2, 0
	bne $t1, $t2, label457
	j label459
label459:
	li $t0, 45151
	sw $t0, -3736($fp)
	lw $t1, -3736($fp)
	li $t2, 0
	bne $t1, $t2, label457
	j label458
label457:
	li $t0, 1
	sw $t0, -3728($fp)
label458:
	li $t0, 4
	lw $t1, -3728($fp)
	mul $t0, $t0, $t1
	sw $t0, -3740($fp)
	lw $t0, -3740($fp)
	lw $t1, -3724($fp)
	add $t0, $t0, $t1
	sw $t0, -3744($fp)
	lw $t0, -3744($fp)
	lw $t1, 0($t0)
	sw $t1, -3748($fp)
	lw $t0, -36($fp)
	sw $t0, -3752($fp)
	li $t0, 0
	lw $t1, -3752($fp)
	sub $t0, $t0, $t1
	sw $t0, -3756($fp)
	lw $t0, -3748($fp)
	lw $t1, -3756($fp)
	mul $t0, $t0, $t1
	sw $t0, -3760($fp)
	li $t0, 34542
	sw $t0, -3764($fp)
	li $t0, 0
	lw $t1, -3764($fp)
	sub $t0, $t0, $t1
	sw $t0, -3768($fp)
	lw $t1, -3760($fp)
	lw $t2, -3768($fp)
	bgt $t1, $t2, label455
	j label456
label455:
	li $t0, 1
	sw $t0, -3720($fp)
label456:
	lw $ra, -4($fp)
	lw $v0, -3720($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 25522
	sw $t0, -3772($fp)
	lw $t1, -3772($fp)
	li $t2, 0
	bne $t1, $t2, label461
	j label460
label460:
	addi $t0, $fp, -528
	sw $t0, -3776($fp)
	lw $t0, -1180($fp)
	sw $t0, -3780($fp)
	li $t0, 0
	sw $t0, -3784($fp)
	lw $t0, -1504($fp)
	sw $t0, -3788($fp)
	lw $t1, -3788($fp)
	li $t2, 0
	bne $t1, $t2, label464
	j label463
label463:
	li $t0, 1
	sw $t0, -3784($fp)
label464:
	lw $t0, -3780($fp)
	lw $t1, -3784($fp)
	sub $t0, $t0, $t1
	sw $t0, -3792($fp)
	li $t0, 4
	lw $t1, -3792($fp)
	mul $t0, $t0, $t1
	sw $t0, -3796($fp)
	lw $t0, -3796($fp)
	lw $t1, -3776($fp)
	add $t0, $t0, $t1
	sw $t0, -3800($fp)
	lw $t0, -3800($fp)
	lw $t1, 0($t0)
	sw $t1, -3804($fp)
	lw $ra, -4($fp)
	lw $v0, -3804($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label462
label461:
	li $t0, 25229
	sw $t0, -3828($fp)
	lw $t0, -3828($fp)
	sw $t0, -3832($fp)
	lw $t0, -3832($fp)
	sw $t0, -3836($fp)
	li $t0, 28532
	sw $t0, -3840($fp)
	addi $t0, $fp, -3824
	sw $t0, -3844($fp)
	li $t0, 0
	sw $t0, -3848($fp)
	lw $t0, -3848($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3852($fp)
	lw $t0, -3844($fp)
	lw $t1, -3852($fp)
	add $t0, $t0, $t1
	sw $t0, -3856($fp)
	lw $t0, -3840($fp)
	lw $t1, -3856($fp)
	sw $t0, 0($t1)
	lw $t0, -3856($fp)
	lw $t1, 0($t0)
	sw $t1, -3860($fp)
	li $t0, 52907
	sw $t0, -3864($fp)
	addi $t0, $fp, -3824
	sw $t0, -3868($fp)
	li $t0, 1
	sw $t0, -3872($fp)
	lw $t0, -3872($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3876($fp)
	lw $t0, -3868($fp)
	lw $t1, -3876($fp)
	add $t0, $t0, $t1
	sw $t0, -3880($fp)
	lw $t0, -3864($fp)
	lw $t1, -3880($fp)
	sw $t0, 0($t1)
	lw $t0, -3880($fp)
	lw $t1, 0($t0)
	sw $t1, -3884($fp)
	li $t0, 43974
	sw $t0, -3888($fp)
	addi $t0, $fp, -3824
	sw $t0, -3892($fp)
	li $t0, 2
	sw $t0, -3896($fp)
	lw $t0, -3896($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3900($fp)
	lw $t0, -3892($fp)
	lw $t1, -3900($fp)
	add $t0, $t0, $t1
	sw $t0, -3904($fp)
	lw $t0, -3888($fp)
	lw $t1, -3904($fp)
	sw $t0, 0($t1)
	lw $t0, -3904($fp)
	lw $t1, 0($t0)
	sw $t1, -3908($fp)
	li $t0, 29871
	sw $t0, -3912($fp)
	addi $t0, $fp, -3824
	sw $t0, -3916($fp)
	li $t0, 3
	sw $t0, -3920($fp)
	lw $t0, -3920($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3924($fp)
	lw $t0, -3916($fp)
	lw $t1, -3924($fp)
	add $t0, $t0, $t1
	sw $t0, -3928($fp)
	lw $t0, -3912($fp)
	lw $t1, -3928($fp)
	sw $t0, 0($t1)
	lw $t0, -3928($fp)
	lw $t1, 0($t0)
	sw $t1, -3932($fp)
	li $t0, 34055
	sw $t0, -3936($fp)
	addi $t0, $fp, -3824
	sw $t0, -3940($fp)
	li $t0, 4
	sw $t0, -3944($fp)
	lw $t0, -3944($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3948($fp)
	lw $t0, -3940($fp)
	lw $t1, -3948($fp)
	add $t0, $t0, $t1
	sw $t0, -3952($fp)
	lw $t0, -3936($fp)
	lw $t1, -3952($fp)
	sw $t0, 0($t1)
	lw $t0, -3952($fp)
	lw $t1, 0($t0)
	sw $t1, -3956($fp)
	li $t0, 36539
	sw $t0, -3960($fp)
	lw $t0, -3960($fp)
	sw $t0, -3964($fp)
	lw $t0, -3964($fp)
	sw $t0, -3968($fp)
	li $t0, 63793
	sw $t0, -3972($fp)
	lw $t0, -3972($fp)
	sw $t0, -3976($fp)
	lw $t0, -3976($fp)
	sw $t0, -3980($fp)
	li $t0, 43467
	sw $t0, -3984($fp)
	lw $t0, -3984($fp)
	sw $t0, -3988($fp)
	lw $t0, -3988($fp)
	sw $t0, -3992($fp)
	li $t0, 0
	sw $t0, -3996($fp)
	jal f9
	sw $v0, -4000($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -4004($fp)
	lw $t0, -2332($fp)
	sw $t0, -4008($fp)
	lw $t1, -4008($fp)
	li $t2, 0
	bne $t1, $t2, label468
	j label467
label467:
	li $t0, 1
	sw $t0, -4004($fp)
label468:
	li $t0, 0
	lw $t1, -4004($fp)
	sub $t0, $t0, $t1
	sw $t0, -4012($fp)
	lw $t0, -4000($fp)
	lw $t1, -4012($fp)
	mul $t0, $t0, $t1
	sw $t0, -4016($fp)
	li $t0, 0
	lw $t1, -4016($fp)
	sub $t0, $t0, $t1
	sw $t0, -4020($fp)
	lw $t1, -4020($fp)
	li $t2, 0
	bne $t1, $t2, label466
	j label465
label465:
	li $t0, 1
	sw $t0, -3996($fp)
label466:
	li $t0, 0
	sw $t0, -4024($fp)
	addi $t0, $fp, -320
	sw $t0, -4028($fp)
	li $t0, 0
	sw $t0, -4032($fp)
	li $t0, 8429
	sw $t0, -4036($fp)
	lw $t0, -1552($fp)
	sw $t0, -4040($fp)
	lw $t0, -4036($fp)
	lw $t1, -4040($fp)
	sub $t0, $t0, $t1
	sw $t0, -4044($fp)
	lw $t0, -180($fp)
	sw $t0, -4048($fp)
	lw $t1, -4044($fp)
	lw $t2, -4048($fp)
	bne $t1, $t2, label472
	j label473
label472:
	li $t0, 1
	sw $t0, -4032($fp)
label473:
	li $t0, 4
	lw $t1, -4032($fp)
	mul $t0, $t0, $t1
	sw $t0, -4052($fp)
	lw $t0, -4052($fp)
	lw $t1, -4028($fp)
	add $t0, $t0, $t1
	sw $t0, -4056($fp)
	lw $t0, -4056($fp)
	lw $t1, 0($t0)
	sw $t1, -4060($fp)
	lw $t1, -4060($fp)
	li $t2, 0
	bne $t1, $t2, label469
	j label471
label471:
	li $t0, 47248
	sw $t0, -4064($fp)
	li $t0, 33756
	sw $t0, -4068($fp)
	lw $t0, -4064($fp)
	lw $t1, -4068($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4072($fp)
	lw $t0, -60($fp)
	sw $t0, -4076($fp)
	lw $t0, -4072($fp)
	lw $t1, -4076($fp)
	sub $t0, $t0, $t1
	sw $t0, -4080($fp)
	lw $t0, -2212($fp)
	sw $t0, -4084($fp)
	lw $t1, -4080($fp)
	lw $t2, -4084($fp)
	bge $t1, $t2, label469
	j label470
label469:
	li $t0, 1
	sw $t0, -4024($fp)
label470:
	jal f9
	sw $v0, -4088($fp)
	addi $sp, $sp, 4
	lw $t0, -4088($fp)
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	sw $t0, -4092($fp)
	lw $t0, -4092($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -4096($fp)
label474:
	lw $t0, -3832($fp)
	sw $t0, -4100($fp)
	lw $t1, -4100($fp)
	li $t2, 0
	bne $t1, $t2, label475
	j label476
label475:
label477:
	addi $t0, $fp, -364
	sw $t0, -4104($fp)
	lw $t0, -2320($fp)
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
	li $t0, 0
	sw $t0, -4124($fp)
	lw $t0, -2332($fp)
	sw $t0, -4128($fp)
	li $t0, 54903
	sw $t0, -4132($fp)
	lw $t0, -4128($fp)
	lw $t1, -4132($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4136($fp)
	lw $t1, -4136($fp)
	li $t2, 0
	bne $t1, $t2, label481
	j label483
label483:
	lw $t0, -60($fp)
	sw $t0, -4140($fp)
	lw $t1, -4140($fp)
	li $t2, 0
	bne $t1, $t2, label481
	j label482
label481:
	li $t0, 1
	sw $t0, -4124($fp)
label482:
	addi $t0, $fp, -528
	sw $t0, -4144($fp)
	li $t0, 2
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
	lw $t0, -216($fp)
	sw $t0, -4164($fp)
	lw $t0, -4160($fp)
	lw $t1, -4164($fp)
	sub $t0, $t0, $t1
	sw $t0, -4168($fp)
	addi $sp, $sp, -4
	lw $t0, -4120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4168($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -4172($fp)
	addi $sp, $sp, 16
	lw $t1, -4172($fp)
	li $t2, 0
	bne $t1, $t2, label480
	j label479
label480:
	li $t0, 48165
	sw $t0, -4176($fp)
	lw $t0, -3976($fp)
	sw $t0, -4180($fp)
	lw $t0, -4176($fp)
	lw $t1, -4180($fp)
	add $t0, $t0, $t1
	sw $t0, -4184($fp)
	li $t0, 0
	sw $t0, -4188($fp)
	lw $t0, -1516($fp)
	sw $t0, -4192($fp)
	li $t0, 26243
	sw $t0, -4196($fp)
	lw $t1, -4192($fp)
	lw $t2, -4196($fp)
	beq $t1, $t2, label484
	j label485
label484:
	li $t0, 1
	sw $t0, -4188($fp)
label485:
	li $t0, 57862
	sw $t0, -4200($fp)
	li $t0, 7769
	sw $t0, -4204($fp)
	lw $t0, -4200($fp)
	lw $t1, -4204($fp)
	mul $t0, $t0, $t1
	sw $t0, -4208($fp)
	addi $sp, $sp, -4
	lw $t0, -4188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4208($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -4212($fp)
	addi $sp, $sp, 12
	li $t0, 2967
	sw $t0, -4216($fp)
	li $t0, 64395
	sw $t0, -4220($fp)
	lw $t0, -4216($fp)
	lw $t1, -4220($fp)
	add $t0, $t0, $t1
	sw $t0, -4224($fp)
	addi $sp, $sp, -4
	lw $t0, -4184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4224($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -4228($fp)
	addi $sp, $sp, 16
	lw $t0, -168($fp)
	sw $t0, -4232($fp)
	lw $t0, -4228($fp)
	lw $t1, -4232($fp)
	mul $t0, $t0, $t1
	sw $t0, -4236($fp)
	lw $t0, -3988($fp)
	sw $t0, -4240($fp)
	lw $t0, -4236($fp)
	lw $t1, -4240($fp)
	add $t0, $t0, $t1
	sw $t0, -4244($fp)
	lw $t1, -4244($fp)
	li $t2, 0
	bne $t1, $t2, label478
	j label479
label478:
	addi $t0, $fp, -320
	sw $t0, -4248($fp)
	addi $t0, $fp, -16
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
	li $t0, 0
	lw $t1, -4268($fp)
	sub $t0, $t0, $t1
	sw $t0, -4272($fp)
	li $t0, 4
	lw $t1, -4272($fp)
	mul $t0, $t0, $t1
	sw $t0, -4276($fp)
	lw $t0, -4276($fp)
	lw $t1, -4248($fp)
	add $t0, $t0, $t1
	sw $t0, -4280($fp)
	lw $t0, -4280($fp)
	lw $t1, 0($t0)
	sw $t1, -4284($fp)
	lw $t1, -4284($fp)
	li $t2, 0
	bne $t1, $t2, label486
	j label487
label486:
	lw $t0, -3964($fp)
	sw $t0, -4288($fp)
	lw $t0, -84($fp)
	sw $t0, -4292($fp)
	lw $t0, -4288($fp)
	lw $t1, -4292($fp)
	mul $t0, $t0, $t1
	sw $t0, -4296($fp)
	j label488
label487:
	li $t0, 31234
	sw $t0, -4300($fp)
	lw $t0, -1948($fp)
	sw $t0, -4304($fp)
	lw $t0, -4300($fp)
	lw $t1, -4304($fp)
	sub $t0, $t0, $t1
	sw $t0, -4308($fp)
	lw $t0, -4308($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -4312($fp)
label488:
	j label477
label479:
	j label474
label476:
	lw $t0, -3832($fp)
	sw $t0, -4316($fp)
	lw $t0, -4316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3824
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
	addi $t0, $fp, -3824
	sw $t0, -4340($fp)
	li $t0, 1
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
	addi $t0, $fp, -3824
	sw $t0, -4360($fp)
	li $t0, 2
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
	addi $t0, $fp, -3824
	sw $t0, -4380($fp)
	li $t0, 3
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
	addi $t0, $fp, -3824
	sw $t0, -4400($fp)
	li $t0, 4
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
	lw $t0, -3964($fp)
	sw $t0, -4420($fp)
	lw $t0, -4420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3976($fp)
	sw $t0, -4424($fp)
	lw $t0, -4424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3988($fp)
	sw $t0, -4428($fp)
	lw $t0, -4428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 53291
	sw $t0, -4432($fp)
	lw $t0, -1504($fp)
	sw $t0, -4436($fp)
	lw $t0, -4436($fp)
	sw $t0, -2308($fp)
	lw $t0, -2308($fp)
	sw $t0, -4440($fp)
	lw $t0, -2320($fp)
	sw $t0, -4444($fp)
	lw $t0, 4($fp)
	sw $t0, -4448($fp)
	lw $t0, -4444($fp)
	lw $t1, -4448($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4452($fp)
	addi $sp, $sp, -4
	lw $t0, -4432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4452($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -4456($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -3824
	sw $t0, -4460($fp)
	lw $t0, -3964($fp)
	sw $t0, -4464($fp)
	li $t0, 2883
	sw $t0, -4468($fp)
	lw $t0, -4464($fp)
	lw $t1, -4468($fp)
	mul $t0, $t0, $t1
	sw $t0, -4472($fp)
	li $t0, 4
	lw $t1, -4472($fp)
	mul $t0, $t0, $t1
	sw $t0, -4476($fp)
	lw $t0, -4476($fp)
	lw $t1, -4460($fp)
	add $t0, $t0, $t1
	sw $t0, -4480($fp)
	lw $t0, -4480($fp)
	lw $t1, 0($t0)
	sw $t1, -4484($fp)
	lw $t0, -4456($fp)
	lw $t1, -4484($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4488($fp)
	lw $ra, -4($fp)
	lw $v0, -4488($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label489:
	li $t0, 0
	sw $t0, -4492($fp)
	li $t0, 0
	sw $t0, -4496($fp)
	li $t0, 6254
	sw $t0, -4500($fp)
	li $t0, 45761
	sw $t0, -4504($fp)
	lw $t0, -4500($fp)
	lw $t1, -4504($fp)
	add $t0, $t0, $t1
	sw $t0, -4508($fp)
	lw $t0, -2320($fp)
	sw $t0, -4512($fp)
	lw $t1, -4508($fp)
	lw $t2, -4512($fp)
	beq $t1, $t2, label494
	j label495
label494:
	li $t0, 1
	sw $t0, -4496($fp)
label495:
	addi $t0, $fp, -468
	sw $t0, -4516($fp)
	lw $t0, -204($fp)
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
	lw $t1, -4496($fp)
	lw $t2, -4532($fp)
	bne $t1, $t2, label492
	j label493
label492:
	li $t0, 1
	sw $t0, -4492($fp)
label493:
	lw $t0, -4492($fp)
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	sw $t0, -4536($fp)
	lw $t1, -4536($fp)
	li $t2, 0
	bne $t1, $t2, label490
	j label491
label490:
	lw $t0, -1960($fp)
	sw $t0, -4540($fp)
	li $t0, 0
	sw $t0, -4544($fp)
	li $t0, 48034
	sw $t0, -4548($fp)
	lw $t1, -4548($fp)
	li $t2, 0
	bne $t1, $t2, label497
	j label496
label496:
	li $t0, 1
	sw $t0, -4544($fp)
label497:
	li $t0, 0
	lw $t1, -4544($fp)
	sub $t0, $t0, $t1
	sw $t0, -4552($fp)
	lw $t0, -4540($fp)
	lw $t1, -4552($fp)
	mul $t0, $t0, $t1
	sw $t0, -4556($fp)
	li $t0, 40796
	sw $t0, -4560($fp)
	li $t0, 0
	sw $t0, -4564($fp)
	addi $t0, $fp, -536
	sw $t0, -4568($fp)
	li $t0, 1
	sw $t0, -4572($fp)
	li $t0, 4
	lw $t1, -4572($fp)
	mul $t0, $t0, $t1
	sw $t0, -4576($fp)
	lw $t0, -4576($fp)
	lw $t1, -4568($fp)
	add $t0, $t0, $t1
	sw $t0, -4580($fp)
	lw $t0, -4580($fp)
	lw $t1, 0($t0)
	sw $t1, -4584($fp)
	lw $t0, -216($fp)
	sw $t0, -4588($fp)
	lw $t1, -4584($fp)
	lw $t2, -4588($fp)
	blt $t1, $t2, label498
	j label499
label498:
	li $t0, 1
	sw $t0, -4564($fp)
label499:
	li $t0, 0
	sw $t0, -4592($fp)
	lw $t0, 12($fp)
	sw $t0, -4596($fp)
	li $t0, 0
	lw $t1, -4596($fp)
	sub $t0, $t0, $t1
	sw $t0, -4600($fp)
	li $t0, 0
	lw $t1, -4600($fp)
	sub $t0, $t0, $t1
	sw $t0, -4604($fp)
	li $t0, 0
	sw $t0, -4608($fp)
	li $t0, 0
	sw $t0, -4612($fp)
	lw $t0, -216($fp)
	sw $t0, -4616($fp)
	li $t0, 3792
	sw $t0, -4620($fp)
	lw $t1, -4616($fp)
	lw $t2, -4620($fp)
	blt $t1, $t2, label504
	j label505
label504:
	li $t0, 1
	sw $t0, -4612($fp)
label505:
	li $t0, 58654
	sw $t0, -4624($fp)
	lw $t1, -4612($fp)
	lw $t2, -4624($fp)
	beq $t1, $t2, label502
	j label503
label502:
	li $t0, 1
	sw $t0, -4608($fp)
label503:
	li $t0, 0
	sw $t0, -4628($fp)
	addi $t0, $fp, -528
	sw $t0, -4632($fp)
	lw $t0, -180($fp)
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
	lw $t1, -4648($fp)
	li $t2, 0
	bne $t1, $t2, label508
	j label507
label508:
	lw $t0, -2296($fp)
	sw $t0, -4652($fp)
	lw $t1, -4652($fp)
	li $t2, 0
	bne $t1, $t2, label506
	j label507
label506:
	li $t0, 1
	sw $t0, -4628($fp)
label507:
	li $t0, 0
	sw $t0, -4656($fp)
	addi $t0, $fp, -536
	sw $t0, -4660($fp)
	lw $t0, -216($fp)
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
	li $t0, 7727
	sw $t0, -4680($fp)
	lw $t1, -4676($fp)
	lw $t2, -4680($fp)
	ble $t1, $t2, label509
	j label510
label509:
	li $t0, 1
	sw $t0, -4656($fp)
label510:
	li $t0, 5747
	sw $t0, -4684($fp)
	li $t0, 0
	lw $t1, -4684($fp)
	sub $t0, $t0, $t1
	sw $t0, -4688($fp)
	addi $sp, $sp, -4
	lw $t0, -4604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4688($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4692($fp)
	addi $sp, $sp, 24
	lw $t0, -1504($fp)
	sw $t0, -4696($fp)
	lw $t1, -4692($fp)
	lw $t2, -4696($fp)
	bne $t1, $t2, label500
	j label501
label500:
	li $t0, 1
	sw $t0, -4592($fp)
label501:
	addi $sp, $sp, -4
	lw $t0, -4564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4592($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4700($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -428
	sw $t0, -4704($fp)
	li $t0, 6
	sw $t0, -4708($fp)
	li $t0, 4
	lw $t1, -4708($fp)
	mul $t0, $t0, $t1
	sw $t0, -4712($fp)
	lw $t0, -4712($fp)
	lw $t1, -4704($fp)
	add $t0, $t0, $t1
	sw $t0, -4716($fp)
	lw $t0, -4716($fp)
	lw $t1, 0($t0)
	sw $t1, -4720($fp)
	lw $t0, -4700($fp)
	lw $t1, -4720($fp)
	mul $t0, $t0, $t1
	sw $t0, -4724($fp)
	lw $t0, -4560($fp)
	lw $t1, -4724($fp)
	sub $t0, $t0, $t1
	sw $t0, -4728($fp)
	j label489
label491:
label511:
	li $t0, 0
	sw $t0, -4732($fp)
	lw $t0, -760($fp)
	sw $t0, -4736($fp)
	lw $t0, -1528($fp)
	sw $t0, -4740($fp)
	lw $t0, -4736($fp)
	lw $t1, -4740($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4744($fp)
	lw $t1, -4744($fp)
	li $t2, 0
	bne $t1, $t2, label516
	j label515
label516:
	lw $t0, -168($fp)
	sw $t0, -4748($fp)
	lw $t0, -1324($fp)
	sw $t0, -4752($fp)
	lw $t0, -4748($fp)
	lw $t1, -4752($fp)
	sub $t0, $t0, $t1
	sw $t0, -4756($fp)
	lw $t1, -4756($fp)
	li $t2, 0
	bne $t1, $t2, label514
	j label515
label514:
	li $t0, 1
	sw $t0, -4732($fp)
label515:
	lw $t0, -4732($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -4760($fp)
	lw $t1, -4760($fp)
	li $t2, 0
	bne $t1, $t2, label512
	j label513
label512:
	li $t0, 0
	sw $t0, -4764($fp)
	li $t0, 0
	sw $t0, -4768($fp)
	li $t0, 0
	sw $t0, -4772($fp)
	lw $t0, -48($fp)
	sw $t0, -4776($fp)
	lw $t1, -4776($fp)
	li $t2, 0
	bne $t1, $t2, label523
	j label522
label522:
	li $t0, 1
	sw $t0, -4772($fp)
label523:
	li $t0, 7055
	sw $t0, -4780($fp)
	lw $t1, -4772($fp)
	lw $t2, -4780($fp)
	beq $t1, $t2, label520
	j label521
label520:
	li $t0, 1
	sw $t0, -4768($fp)
label521:
	lw $t0, -48($fp)
	sw $t0, -4784($fp)
	li $t0, 0
	sw $t0, -4788($fp)
	li $t0, 0
	sw $t0, -4792($fp)
	lw $t0, -1036($fp)
	sw $t0, -4796($fp)
	li $t0, 13633
	sw $t0, -4800($fp)
	lw $t1, -4796($fp)
	lw $t2, -4800($fp)
	beq $t1, $t2, label526
	j label527
label526:
	li $t0, 1
	sw $t0, -4792($fp)
label527:
	li $t0, 38861
	sw $t0, -4804($fp)
	lw $t1, -4792($fp)
	lw $t2, -4804($fp)
	bne $t1, $t2, label524
	j label525
label524:
	li $t0, 1
	sw $t0, -4788($fp)
label525:
	li $t0, 31134
	sw $t0, -4808($fp)
	li $t0, 0
	sw $t0, -4812($fp)
	lw $t0, -1036($fp)
	sw $t0, -4816($fp)
	li $t0, 0
	lw $t1, -4816($fp)
	sub $t0, $t0, $t1
	sw $t0, -4820($fp)
	lw $t0, -1036($fp)
	sw $t0, -4824($fp)
	lw $t1, -4820($fp)
	lw $t2, -4824($fp)
	ble $t1, $t2, label528
	j label529
label528:
	li $t0, 1
	sw $t0, -4812($fp)
label529:
	li $t0, 0
	sw $t0, -4828($fp)
	li $t0, 0
	sw $t0, -4832($fp)
	li $t0, 31920
	sw $t0, -4836($fp)
	lw $t0, -1288($fp)
	sw $t0, -4840($fp)
	lw $t1, -4836($fp)
	lw $t2, -4840($fp)
	bgt $t1, $t2, label532
	j label533
label532:
	li $t0, 1
	sw $t0, -4832($fp)
label533:
	li $t0, 5104
	sw $t0, -4844($fp)
	lw $t1, -4832($fp)
	lw $t2, -4844($fp)
	bne $t1, $t2, label530
	j label531
label530:
	li $t0, 1
	sw $t0, -4828($fp)
label531:
	addi $sp, $sp, -4
	lw $t0, -4784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4828($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -4848($fp)
	addi $sp, $sp, 24
	lw $t0, -3988($fp)
	sw $t0, -4852($fp)
	addi $sp, $sp, -4
	lw $t0, -4768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4852($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -4856($fp)
	addi $sp, $sp, 16
	lw $t1, -4856($fp)
	li $t2, 0
	bne $t1, $t2, label517
	j label519
label519:
	li $t0, 0
	sw $t0, -4860($fp)
	lw $t0, -1948($fp)
	sw $t0, -4864($fp)
	li $t0, 0
	lw $t1, -4864($fp)
	sub $t0, $t0, $t1
	sw $t0, -4868($fp)
	lw $t1, -4868($fp)
	li $t2, 0
	bne $t1, $t2, label535
	j label534
label534:
	li $t0, 1
	sw $t0, -4860($fp)
label535:
	li $t0, 0
	lw $t1, -4860($fp)
	sub $t0, $t0, $t1
	sw $t0, -4872($fp)
	lw $t1, -4872($fp)
	li $t2, 0
	bne $t1, $t2, label517
	j label518
label517:
	li $t0, 1
	sw $t0, -4764($fp)
label518:
	lw $ra, -4($fp)
	lw $v0, -4764($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label511
label513:
label462:
	jal f9
	sw $v0, -4876($fp)
	addi $sp, $sp, 4
	lw $t0, -1048($fp)
	sw $t0, -4880($fp)
	jal f9
	sw $v0, -4884($fp)
	addi $sp, $sp, 4
	lw $t0, -4880($fp)
	lw $t1, -4884($fp)
	mul $t0, $t0, $t1
	sw $t0, -4888($fp)
	lw $t0, -1564($fp)
	sw $t0, -4892($fp)
	lw $t0, -4888($fp)
	lw $t1, -4892($fp)
	mul $t0, $t0, $t1
	sw $t0, -4896($fp)
	li $t0, 0
	lw $t1, -4896($fp)
	sub $t0, $t0, $t1
	sw $t0, -4900($fp)
	lw $t0, -4876($fp)
	lw $t1, -4900($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4904($fp)
	lw $t1, -4904($fp)
	li $t2, 0
	bne $t1, $t2, label536
	j label537
label536:
	addi $t0, $fp, -384
	sw $t0, -4908($fp)
	lw $t0, -1036($fp)
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
	li $t0, 0
	lw $t1, -4924($fp)
	sub $t0, $t0, $t1
	sw $t0, -4928($fp)
	li $t0, 0
	sw $t0, -4932($fp)
	li $t0, 41811
	sw $t0, -4936($fp)
	li $t0, 0
	lw $t1, -4936($fp)
	sub $t0, $t0, $t1
	sw $t0, -4940($fp)
	lw $t1, -4940($fp)
	li $t2, 0
	bne $t1, $t2, label544
	j label543
label543:
	li $t0, 1
	sw $t0, -4932($fp)
label544:
	lw $t1, -4928($fp)
	lw $t2, -4932($fp)
	beq $t1, $t2, label539
	j label542
label542:
	li $t0, 0
	sw $t0, -4944($fp)
	li $t0, 28228
	sw $t0, -4948($fp)
	li $t0, 0
	lw $t1, -4948($fp)
	sub $t0, $t0, $t1
	sw $t0, -4952($fp)
	li $t0, 10022
	sw $t0, -4956($fp)
	lw $t1, -4952($fp)
	lw $t2, -4956($fp)
	bge $t1, $t2, label545
	j label546
label545:
	li $t0, 1
	sw $t0, -4944($fp)
label546:
	lw $t0, -84($fp)
	sw $t0, -4960($fp)
	lw $t0, -84($fp)
	sw $t0, -4964($fp)
	lw $t0, -4960($fp)
	lw $t1, -4964($fp)
	mul $t0, $t0, $t1
	sw $t0, -4968($fp)
	lw $t1, -4944($fp)
	lw $t2, -4968($fp)
	beq $t1, $t2, label539
	j label540
label539:
	li $t0, 40670
	sw $t0, -4972($fp)
	lw $t1, -4972($fp)
	li $t2, 0
	bne $t1, $t2, label547
	j label548
label547:
	li $t0, 20554
	sw $t0, -4976($fp)
	lw $t0, -4976($fp)
	sw $t0, -4980($fp)
	lw $t0, -4980($fp)
	sw $t0, -4984($fp)
	li $t0, 17791
	sw $t0, -4988($fp)
	lw $t0, -4988($fp)
	sw $t0, -4992($fp)
	lw $t0, -4992($fp)
	sw $t0, -4996($fp)
	li $t0, 1377
	sw $t0, -5000($fp)
	lw $t0, -5000($fp)
	sw $t0, -5004($fp)
	lw $t0, -5004($fp)
	sw $t0, -5008($fp)
label550:
	li $t0, 0
	sw $t0, -5012($fp)
	lw $t0, -24($fp)
	sw $t0, -5016($fp)
	lw $t1, -5016($fp)
	li $t2, 0
	bne $t1, $t2, label554
	j label553
label553:
	li $t0, 1
	sw $t0, -5012($fp)
label554:
	li $t0, 3183
	sw $t0, -5020($fp)
	lw $t0, -5012($fp)
	lw $t1, -5020($fp)
	add $t0, $t0, $t1
	sw $t0, -5024($fp)
	lw $t1, -5024($fp)
	li $t2, 0
	bne $t1, $t2, label551
	j label552
label551:
	addi $t0, $fp, -320
	sw $t0, -5028($fp)
	lw $t0, -180($fp)
	sw $t0, -5032($fp)
	li $t0, 52171
	sw $t0, -5036($fp)
	li $t0, 0
	lw $t1, -5036($fp)
	sub $t0, $t0, $t1
	sw $t0, -5040($fp)
	lw $t0, -5032($fp)
	lw $t1, -5040($fp)
	add $t0, $t0, $t1
	sw $t0, -5044($fp)
	li $t0, 4
	lw $t1, -5044($fp)
	mul $t0, $t0, $t1
	sw $t0, -5048($fp)
	lw $t0, -5048($fp)
	lw $t1, -5028($fp)
	add $t0, $t0, $t1
	sw $t0, -5052($fp)
	lw $t0, -5052($fp)
	lw $t1, 0($t0)
	sw $t1, -5056($fp)
	j label550
label552:
	li $t0, 0
	sw $t0, -5060($fp)
	li $t0, 1367
	sw $t0, -5064($fp)
	lw $t0, -1540($fp)
	sw $t0, -5068($fp)
	lw $t1, -5064($fp)
	lw $t2, -5068($fp)
	bge $t1, $t2, label555
	j label556
label555:
	li $t0, 1
	sw $t0, -5060($fp)
label556:
	lw $t0, -5060($fp)
	sw $t0, -2272($fp)
	lw $t0, -2272($fp)
	sw $t0, -5072($fp)
	lw $t0, -5072($fp)
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -5076($fp)
label557:
	li $t0, 34418
	sw $t0, -5080($fp)
	li $t0, 0
	lw $t1, -5080($fp)
	sub $t0, $t0, $t1
	sw $t0, -5084($fp)
	jal f9
	sw $v0, -5088($fp)
	addi $sp, $sp, 4
	lw $t0, -5084($fp)
	lw $t1, -5088($fp)
	add $t0, $t0, $t1
	sw $t0, -5092($fp)
	li $t0, 0
	sw $t0, -5096($fp)
	li $t0, 39927
	sw $t0, -5100($fp)
	lw $t0, -5004($fp)
	sw $t0, -5104($fp)
	lw $t0, -760($fp)
	sw $t0, -5108($fp)
	lw $t0, -5104($fp)
	lw $t1, -5108($fp)
	add $t0, $t0, $t1
	sw $t0, -5112($fp)
	lw $t1, -5100($fp)
	lw $t2, -5112($fp)
	ble $t1, $t2, label560
	j label561
label560:
	li $t0, 1
	sw $t0, -5096($fp)
label561:
	lw $t1, -5092($fp)
	lw $t2, -5096($fp)
	beq $t1, $t2, label558
	j label559
label558:
	li $t0, 0
	sw $t0, -5116($fp)
	addi $t0, $fp, -324
	sw $t0, -5120($fp)
	lw $t0, -2332($fp)
	sw $t0, -5124($fp)
	li $t0, 4251
	sw $t0, -5128($fp)
	lw $t0, -5124($fp)
	lw $t1, -5128($fp)
	mul $t0, $t0, $t1
	sw $t0, -5132($fp)
	li $t0, 40672
	sw $t0, -5136($fp)
	lw $t0, -5132($fp)
	lw $t1, -5136($fp)
	mul $t0, $t0, $t1
	sw $t0, -5140($fp)
	li $t0, 4
	lw $t1, -5140($fp)
	mul $t0, $t0, $t1
	sw $t0, -5144($fp)
	lw $t0, -5144($fp)
	lw $t1, -5120($fp)
	add $t0, $t0, $t1
	sw $t0, -5148($fp)
	lw $t0, -5148($fp)
	lw $t1, 0($t0)
	sw $t1, -5152($fp)
	lw $t1, -5152($fp)
	li $t2, 0
	bne $t1, $t2, label563
	j label562
label562:
	li $t0, 1
	sw $t0, -5116($fp)
label563:
	j label557
label559:
	lw $t0, -4980($fp)
	sw $t0, -5156($fp)
	lw $t0, -5156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4992($fp)
	sw $t0, -5160($fp)
	lw $t0, -5160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5004($fp)
	sw $t0, -5164($fp)
	lw $t0, -5164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4980($fp)
	sw $t0, -5168($fp)
	li $t0, 20152
	sw $t0, -5172($fp)
	lw $t0, -5168($fp)
	lw $t1, -5172($fp)
	mul $t0, $t0, $t1
	sw $t0, -5176($fp)
	lw $ra, -4($fp)
	lw $v0, -5176($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -5180($fp)
	addi $t0, $fp, -320
	sw $t0, -5184($fp)
	lw $t0, -712($fp)
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
	li $t0, 0
	sw $t0, -5204($fp)
	li $t0, 52285
	sw $t0, -5208($fp)
	lw $t1, -5208($fp)
	li $t2, 0
	bne $t1, $t2, label567
	j label566
label566:
	li $t0, 1
	sw $t0, -5204($fp)
label567:
	lw $t0, -216($fp)
	sw $t0, -5212($fp)
	lw $t0, -5204($fp)
	lw $t1, -5212($fp)
	mul $t0, $t0, $t1
	sw $t0, -5216($fp)
	lw $t0, -4992($fp)
	sw $t0, -5220($fp)
	li $t0, 0
	lw $t1, -5220($fp)
	sub $t0, $t0, $t1
	sw $t0, -5224($fp)
	lw $t0, -5216($fp)
	lw $t1, -5224($fp)
	add $t0, $t0, $t1
	sw $t0, -5228($fp)
	lw $t1, -5200($fp)
	lw $t2, -5228($fp)
	bne $t1, $t2, label564
	j label565
label564:
	li $t0, 1
	sw $t0, -5180($fp)
label565:
	li $t0, 0
	sw $t0, -5232($fp)
	li $t0, 0
	sw $t0, -5236($fp)
	lw $t0, -24($fp)
	sw $t0, -5240($fp)
	li $t0, 25899
	sw $t0, -5244($fp)
	lw $t1, -5240($fp)
	lw $t2, -5244($fp)
	bgt $t1, $t2, label570
	j label571
label570:
	li $t0, 1
	sw $t0, -5236($fp)
label571:
	li $t0, 60013
	sw $t0, -5248($fp)
	lw $t1, -5236($fp)
	lw $t2, -5248($fp)
	beq $t1, $t2, label568
	j label569
label568:
	li $t0, 1
	sw $t0, -5232($fp)
label569:
	li $t0, 0
	sw $t0, -5252($fp)
	li $t0, 15932
	sw $t0, -5256($fp)
	lw $t0, -724($fp)
	sw $t0, -5260($fp)
	lw $t1, -5256($fp)
	lw $t2, -5260($fp)
	bge $t1, $t2, label572
	j label573
label572:
	li $t0, 1
	sw $t0, -5252($fp)
label573:
	lw $t0, -1960($fp)
	sw $t0, -5264($fp)
	lw $t0, -5264($fp)
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	sw $t0, -5268($fp)
	addi $sp, $sp, -4
	lw $t0, -5232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5268($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5272($fp)
	addi $sp, $sp, 16
	j label549
label548:
	li $t0, 19724
	sw $t0, -5276($fp)
	lw $t0, -5276($fp)
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -5280($fp)
label549:
	j label541
label540:
	li $t0, 53387
	sw $t0, -5284($fp)
	li $t0, 0
	sw $t0, -5288($fp)
	addi $t0, $fp, -364
	sw $t0, -5292($fp)
	li $t0, 6
	sw $t0, -5296($fp)
	li $t0, 4
	lw $t1, -5296($fp)
	mul $t0, $t0, $t1
	sw $t0, -5300($fp)
	lw $t0, -5300($fp)
	lw $t1, -5292($fp)
	add $t0, $t0, $t1
	sw $t0, -5304($fp)
	lw $t0, -5304($fp)
	lw $t1, 0($t0)
	sw $t1, -5308($fp)
	lw $t1, -5308($fp)
	li $t2, 0
	bne $t1, $t2, label580
	j label579
label579:
	li $t0, 1
	sw $t0, -5288($fp)
label580:
	addi $sp, $sp, -4
	lw $t0, -5284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5288($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -5312($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -5316($fp)
	addi $t0, $fp, -400
	sw $t0, -5320($fp)
	li $t0, 3
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
	lw $t1, -5336($fp)
	li $t2, 0
	bne $t1, $t2, label583
	j label582
label583:
	li $t0, 19772
	sw $t0, -5340($fp)
	lw $t1, -5340($fp)
	li $t2, 0
	bne $t1, $t2, label581
	j label582
label581:
	li $t0, 1
	sw $t0, -5316($fp)
label582:
	jal f9
	sw $v0, -5344($fp)
	addi $sp, $sp, 4
	addi $sp, $sp, -4
	lw $t0, -5316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5344($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -5348($fp)
	addi $sp, $sp, 12
	lw $t1, -5312($fp)
	lw $t2, -5348($fp)
	blt $t1, $t2, label578
	j label575
label578:
	lw $t0, -1288($fp)
	sw $t0, -5352($fp)
	li $t0, 34481
	sw $t0, -5356($fp)
	lw $t0, -5352($fp)
	lw $t1, -5356($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5360($fp)
	lw $t0, -1300($fp)
	sw $t0, -5364($fp)
	lw $t0, -5360($fp)
	lw $t1, -5364($fp)
	mul $t0, $t0, $t1
	sw $t0, -5368($fp)
	li $t0, 0
	sw $t0, -5372($fp)
	li $t0, 51295
	sw $t0, -5376($fp)
	lw $t1, -5376($fp)
	li $t2, 0
	bne $t1, $t2, label585
	j label584
label584:
	li $t0, 1
	sw $t0, -5372($fp)
label585:
	addi $sp, $sp, -4
	lw $t0, -5368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5372($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -5380($fp)
	addi $sp, $sp, 12
	li $t0, 33405
	sw $t0, -5384($fp)
	lw $t1, -5380($fp)
	lw $t2, -5384($fp)
	bge $t1, $t2, label577
	j label575
label577:
	lw $t0, -1312($fp)
	sw $t0, -5388($fp)
	lw $t0, -1324($fp)
	sw $t0, -5392($fp)
	lw $t0, -5388($fp)
	lw $t1, -5392($fp)
	add $t0, $t0, $t1
	sw $t0, -5396($fp)
	lw $t0, -204($fp)
	sw $t0, -5400($fp)
	lw $t0, -5396($fp)
	lw $t1, -5400($fp)
	add $t0, $t0, $t1
	sw $t0, -5404($fp)
	li $t0, 24620
	sw $t0, -5408($fp)
	lw $t0, -5404($fp)
	lw $t1, -5408($fp)
	add $t0, $t0, $t1
	sw $t0, -5412($fp)
	lw $t1, -5412($fp)
	li $t2, 0
	bne $t1, $t2, label574
	j label575
label574:
label586:
	addi $t0, $fp, -428
	sw $t0, -5416($fp)
	li $t0, 1
	sw $t0, -5420($fp)
	li $t0, 4
	lw $t1, -5420($fp)
	mul $t0, $t0, $t1
	sw $t0, -5424($fp)
	lw $t0, -5424($fp)
	lw $t1, -5416($fp)
	add $t0, $t0, $t1
	sw $t0, -5428($fp)
	lw $t0, -5428($fp)
	lw $t1, 0($t0)
	sw $t1, -5432($fp)
	li $t0, 51559
	sw $t0, -5436($fp)
	lw $t0, -5432($fp)
	lw $t1, -5436($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5440($fp)
	lw $t0, -192($fp)
	sw $t0, -5444($fp)
	lw $t1, -5440($fp)
	lw $t2, -5444($fp)
	ble $t1, $t2, label587
	j label589
label589:
	lw $t0, -48($fp)
	sw $t0, -5448($fp)
	lw $t1, -5448($fp)
	li $t2, 0
	bne $t1, $t2, label588
	j label587
label587:
label590:
	li $t0, 0
	sw $t0, -5452($fp)
	li $t0, 0
	sw $t0, -5456($fp)
	li $t0, 50350
	sw $t0, -5460($fp)
	lw $t1, -5460($fp)
	li $t2, 0
	bne $t1, $t2, label596
	j label595
label595:
	li $t0, 1
	sw $t0, -5456($fp)
label596:
	li $t0, 0
	lw $t1, -5456($fp)
	sub $t0, $t0, $t1
	sw $t0, -5464($fp)
	lw $t1, -5464($fp)
	li $t2, 0
	bne $t1, $t2, label593
	j label594
label593:
	li $t0, 1
	sw $t0, -5452($fp)
label594:
	li $t0, 7867
	sw $t0, -5468($fp)
	lw $t1, -5452($fp)
	lw $t2, -5468($fp)
	bgt $t1, $t2, label591
	j label592
label591:
	addi $t0, $fp, -528
	sw $t0, -5472($fp)
	lw $t0, -2284($fp)
	sw $t0, -5476($fp)
	li $t0, 3813
	sw $t0, -5480($fp)
	lw $t0, -5476($fp)
	lw $t1, -5480($fp)
	sub $t0, $t0, $t1
	sw $t0, -5484($fp)
	li $t0, 4
	lw $t1, -5484($fp)
	mul $t0, $t0, $t1
	sw $t0, -5488($fp)
	lw $t0, -5488($fp)
	lw $t1, -5472($fp)
	add $t0, $t0, $t1
	sw $t0, -5492($fp)
	lw $t0, -5492($fp)
	lw $t1, 0($t0)
	sw $t1, -5496($fp)
	lw $t1, -5496($fp)
	li $t2, 0
	bne $t1, $t2, label597
	j label598
label597:
label600:
	jal f9
	sw $v0, -5500($fp)
	addi $sp, $sp, 4
	lw $t0, -180($fp)
	sw $t0, -5504($fp)
	lw $t0, -5500($fp)
	lw $t1, -5504($fp)
	sub $t0, $t0, $t1
	sw $t0, -5508($fp)
	lw $t1, -5508($fp)
	li $t2, 0
	bne $t1, $t2, label601
	j label602
label601:
	li $t0, 51727
	sw $t0, -5512($fp)
	lw $t1, -5512($fp)
	li $t2, 0
	bne $t1, $t2, label606
	j label604
label606:
	li $t0, 0
	sw $t0, -5516($fp)
	li $t0, 30375
	sw $t0, -5520($fp)
	lw $t1, -5520($fp)
	li $t2, 0
	bne $t1, $t2, label608
	j label607
label607:
	li $t0, 1
	sw $t0, -5516($fp)
label608:
	li $t0, 57346
	sw $t0, -5524($fp)
	lw $t0, -5516($fp)
	lw $t1, -5524($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5528($fp)
	lw $t0, -1960($fp)
	sw $t0, -5532($fp)
	lw $t0, -5532($fp)
	sw $t0, -2368($fp)
	lw $t0, -2368($fp)
	sw $t0, -5536($fp)
	addi $t0, $fp, -512
	sw $t0, -5540($fp)
	lw $t0, -2356($fp)
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
	li $t0, 45468
	sw $t0, -5560($fp)
	lw $t0, -5556($fp)
	lw $t1, -5560($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5564($fp)
	lw $t0, -1960($fp)
	sw $t0, -5568($fp)
	lw $t0, -1960($fp)
	sw $t0, -5572($fp)
	lw $t0, -5568($fp)
	lw $t1, -5572($fp)
	add $t0, $t0, $t1
	sw $t0, -5576($fp)
	li $t0, 53095
	sw $t0, -5580($fp)
	lw $t0, -5576($fp)
	lw $t1, -5580($fp)
	add $t0, $t0, $t1
	sw $t0, -5584($fp)
	li $t0, 0
	sw $t0, -5588($fp)
	li $t0, 11050
	sw $t0, -5592($fp)
	lw $t1, -5592($fp)
	li $t2, 0
	bne $t1, $t2, label612
	j label611
label612:
	lw $t0, -2344($fp)
	sw $t0, -5596($fp)
	lw $t1, -5596($fp)
	li $t2, 0
	bne $t1, $t2, label609
	j label611
label611:
	li $t0, 55984
	sw $t0, -5600($fp)
	lw $t1, -5600($fp)
	li $t2, 0
	bne $t1, $t2, label609
	j label610
label609:
	li $t0, 1
	sw $t0, -5588($fp)
label610:
	addi $sp, $sp, -4
	lw $t0, -5528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5588($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5604($fp)
	addi $sp, $sp, 24
	lw $t1, -5604($fp)
	li $t2, 0
	bne $t1, $t2, label603
	j label604
label603:
label613:
	li $t0, 0
	sw $t0, -5608($fp)
	li $t0, 50527
	sw $t0, -5612($fp)
	lw $t0, -1552($fp)
	sw $t0, -5616($fp)
	lw $t1, -5612($fp)
	lw $t2, -5616($fp)
	bne $t1, $t2, label616
	j label617
label616:
	li $t0, 1
	sw $t0, -5608($fp)
label617:
	lw $t0, 8($fp)
	sw $t0, -5620($fp)
	lw $t0, -712($fp)
	sw $t0, -5624($fp)
	lw $t0, -5620($fp)
	lw $t1, -5624($fp)
	sub $t0, $t0, $t1
	sw $t0, -5628($fp)
	li $t0, 20604
	sw $t0, -5632($fp)
	lw $t0, -5628($fp)
	lw $t1, -5632($fp)
	sub $t0, $t0, $t1
	sw $t0, -5636($fp)
	addi $sp, $sp, -4
	lw $t0, -5608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5636($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -5640($fp)
	addi $sp, $sp, 12
	lw $t1, -5640($fp)
	li $t2, 0
	bne $t1, $t2, label615
	j label614
label614:
	li $t0, 0
	sw $t0, -5644($fp)
	li $t0, 44095
	sw $t0, -5648($fp)
	li $t0, 36536
	sw $t0, -5652($fp)
	lw $t0, -5648($fp)
	lw $t1, -5652($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5656($fp)
	li $t0, 0
	sw $t0, -5660($fp)
	lw $t0, -216($fp)
	sw $t0, -5664($fp)
	lw $t0, -60($fp)
	sw $t0, -5668($fp)
	lw $t1, -5664($fp)
	lw $t2, -5668($fp)
	blt $t1, $t2, label620
	j label621
label620:
	li $t0, 1
	sw $t0, -5660($fp)
label621:
	lw $t1, -5656($fp)
	lw $t2, -5660($fp)
	bne $t1, $t2, label618
	j label619
label618:
	li $t0, 1
	sw $t0, -5644($fp)
label619:
	lw $t0, -5644($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -5672($fp)
	j label613
label615:
	j label605
label604:
	li $t0, 0
	sw $t0, -5676($fp)
	addi $t0, $fp, -384
	sw $t0, -5680($fp)
	li $t0, 0
	sw $t0, -5684($fp)
	lw $t0, -1516($fp)
	sw $t0, -5688($fp)
	li $t0, 10890
	sw $t0, -5692($fp)
	lw $t1, -5688($fp)
	lw $t2, -5692($fp)
	bne $t1, $t2, label625
	j label626
label625:
	li $t0, 1
	sw $t0, -5684($fp)
label626:
	li $t0, 4
	lw $t1, -5684($fp)
	mul $t0, $t0, $t1
	sw $t0, -5696($fp)
	lw $t0, -5696($fp)
	lw $t1, -5680($fp)
	add $t0, $t0, $t1
	sw $t0, -5700($fp)
	lw $t0, -5700($fp)
	lw $t1, 0($t0)
	sw $t1, -5704($fp)
	lw $t1, -5704($fp)
	li $t2, 0
	bne $t1, $t2, label623
	j label624
label624:
	li $t0, 38572
	sw $t0, -5708($fp)
	lw $t0, -84($fp)
	sw $t0, -5712($fp)
	lw $t0, -5708($fp)
	lw $t1, -5712($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5716($fp)
	lw $t0, -1528($fp)
	sw $t0, -5720($fp)
	lw $t0, -5716($fp)
	lw $t1, -5720($fp)
	add $t0, $t0, $t1
	sw $t0, -5724($fp)
	lw $t0, -748($fp)
	sw $t0, -5728($fp)
	lw $t0, -5724($fp)
	lw $t1, -5728($fp)
	sub $t0, $t0, $t1
	sw $t0, -5732($fp)
	lw $t1, -5732($fp)
	li $t2, 0
	bne $t1, $t2, label622
	j label623
label622:
	li $t0, 1
	sw $t0, -5676($fp)
label623:
label605:
	j label600
label602:
	j label599
label598:
	li $t0, 56260
	sw $t0, -5736($fp)
label599:
	j label590
label592:
	j label586
label588:
	j label576
label575:
	li $t0, 0
	sw $t0, -5740($fp)
	addi $t0, $fp, -16
	sw $t0, -5744($fp)
	li $t0, 0
	sw $t0, -5748($fp)
	lw $t0, -216($fp)
	sw $t0, -5752($fp)
	li $t0, 0
	lw $t1, -5752($fp)
	sub $t0, $t0, $t1
	sw $t0, -5756($fp)
	lw $t1, -5756($fp)
	li $t2, 0
	bne $t1, $t2, label631
	j label630
label631:
	li $t0, 29907
	sw $t0, -5760($fp)
	lw $t1, -5760($fp)
	li $t2, 0
	bne $t1, $t2, label629
	j label630
label629:
	li $t0, 1
	sw $t0, -5748($fp)
label630:
	li $t0, 4
	lw $t1, -5748($fp)
	mul $t0, $t0, $t1
	sw $t0, -5764($fp)
	lw $t0, -5764($fp)
	lw $t1, -5744($fp)
	add $t0, $t0, $t1
	sw $t0, -5768($fp)
	lw $t0, -5768($fp)
	lw $t1, 0($t0)
	sw $t1, -5772($fp)
	lw $t1, -5772($fp)
	li $t2, 0
	bne $t1, $t2, label628
	j label627
label627:
	li $t0, 1
	sw $t0, -5740($fp)
label628:
label576:
label541:
label537:
	li $t0, 19215
	sw $t0, -5776($fp)
	lw $t0, -5776($fp)
	sw $t0, -5780($fp)
	lw $t0, -5780($fp)
	sw $t0, -5784($fp)
	addi $t0, $fp, -468
	sw $t0, -5788($fp)
	lw $t0, -48($fp)
	sw $t0, -5792($fp)
	lw $t0, -5780($fp)
	sw $t0, -5796($fp)
	lw $t0, -5792($fp)
	lw $t1, -5796($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5800($fp)
	li $t0, 4
	lw $t1, -5800($fp)
	mul $t0, $t0, $t1
	sw $t0, -5804($fp)
	lw $t0, -5804($fp)
	lw $t1, -5788($fp)
	add $t0, $t0, $t1
	sw $t0, -5808($fp)
	lw $t0, -5808($fp)
	lw $t1, 0($t0)
	sw $t1, -5812($fp)
	li $t0, 10562
	sw $t0, -5816($fp)
	lw $t0, -5816($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -5820($fp)
	li $t0, 0
	sw $t0, -5824($fp)
	lw $t0, -1540($fp)
	sw $t0, -5828($fp)
	lw $t0, -48($fp)
	sw $t0, -5832($fp)
	lw $t1, -5828($fp)
	lw $t2, -5832($fp)
	bgt $t1, $t2, label635
	j label637
label637:
	li $t0, 44112
	sw $t0, -5836($fp)
	lw $t1, -5836($fp)
	li $t2, 0
	bne $t1, $t2, label635
	j label636
label635:
	li $t0, 1
	sw $t0, -5824($fp)
label636:
	addi $sp, $sp, -4
	lw $t0, -5820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5824($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -5840($fp)
	addi $sp, $sp, 12
	lw $t1, -5840($fp)
	li $t2, 0
	bne $t1, $t2, label633
	j label632
label632:
	li $t0, 22562
	sw $t0, -5844($fp)
	lw $t0, -5844($fp)
	sw $t0, -5848($fp)
	lw $t0, -5848($fp)
	sw $t0, -5852($fp)
	li $t0, 63884
	sw $t0, -5856($fp)
	lw $t0, -5856($fp)
	sw $t0, -5860($fp)
	lw $t0, -5860($fp)
	sw $t0, -5864($fp)
	li $t0, 61857
	sw $t0, -5868($fp)
	lw $t0, -5868($fp)
	sw $t0, -5872($fp)
	lw $t0, -5872($fp)
	sw $t0, -5876($fp)
	li $t0, 0
	sw $t0, -5880($fp)
	li $t0, 20941
	sw $t0, -5884($fp)
	li $t0, 33043
	sw $t0, -5888($fp)
	lw $t1, -5884($fp)
	lw $t2, -5888($fp)
	beq $t1, $t2, label640
	j label639
label640:
	lw $t0, -2332($fp)
	sw $t0, -5892($fp)
	lw $t1, -5892($fp)
	li $t2, 0
	bne $t1, $t2, label638
	j label639
label638:
	li $t0, 1
	sw $t0, -5880($fp)
label639:
	li $t0, 0
	sw $t0, -5896($fp)
	li $t0, 0
	sw $t0, -5900($fp)
	lw $t0, -2320($fp)
	sw $t0, -5904($fp)
	lw $t1, -5904($fp)
	li $t2, 0
	bne $t1, $t2, label644
	j label643
label643:
	li $t0, 1
	sw $t0, -5900($fp)
label644:
	lw $t0, -168($fp)
	sw $t0, -5908($fp)
	lw $t1, -5900($fp)
	lw $t2, -5908($fp)
	bge $t1, $t2, label641
	j label642
label641:
	li $t0, 1
	sw $t0, -5896($fp)
label642:
	li $t0, 0
	sw $t0, -5912($fp)
	li $t0, 0
	sw $t0, -5916($fp)
	lw $t0, -1504($fp)
	sw $t0, -5920($fp)
	li $t0, 57043
	sw $t0, -5924($fp)
	lw $t1, -5920($fp)
	lw $t2, -5924($fp)
	ble $t1, $t2, label647
	j label648
label647:
	li $t0, 1
	sw $t0, -5916($fp)
label648:
	li $t0, 31753
	sw $t0, -5928($fp)
	lw $t1, -5916($fp)
	lw $t2, -5928($fp)
	blt $t1, $t2, label645
	j label646
label645:
	li $t0, 1
	sw $t0, -5912($fp)
label646:
	addi $sp, $sp, -4
	lw $t0, -5880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5912($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -5932($fp)
	addi $sp, $sp, 16
	lw $t0, -5860($fp)
	sw $t0, -5936($fp)
	lw $t0, -5932($fp)
	lw $t1, -5936($fp)
	add $t0, $t0, $t1
	sw $t0, -5940($fp)
label649:
	li $t0, 0
	sw $t0, -5944($fp)
	addi $t0, $fp, -320
	sw $t0, -5948($fp)
	lw $t0, -1180($fp)
	sw $t0, -5952($fp)
	li $t0, 4
	lw $t1, -5952($fp)
	mul $t0, $t0, $t1
	sw $t0, -5956($fp)
	lw $t0, -5956($fp)
	lw $t1, -5948($fp)
	add $t0, $t0, $t1
	sw $t0, -5960($fp)
	lw $t0, -5960($fp)
	lw $t1, 0($t0)
	sw $t1, -5964($fp)
	lw $t1, -5964($fp)
	li $t2, 0
	bne $t1, $t2, label653
	j label652
label652:
	li $t0, 1
	sw $t0, -5944($fp)
label653:
	li $t0, 41433
	sw $t0, -5968($fp)
	li $t0, 0
	lw $t1, -5968($fp)
	sub $t0, $t0, $t1
	sw $t0, -5972($fp)
	lw $t0, -5944($fp)
	lw $t1, -5972($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5976($fp)
	li $t0, 19065
	sw $t0, -5980($fp)
	li $t0, 26247
	sw $t0, -5984($fp)
	lw $t0, -5980($fp)
	lw $t1, -5984($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5988($fp)
	li $t0, 0
	sw $t0, -5992($fp)
	addi $t0, $fp, -364
	sw $t0, -5996($fp)
	lw $t0, -1960($fp)
	sw $t0, -6000($fp)
	li $t0, 4
	lw $t1, -6000($fp)
	mul $t0, $t0, $t1
	sw $t0, -6004($fp)
	lw $t0, -6004($fp)
	lw $t1, -5996($fp)
	add $t0, $t0, $t1
	sw $t0, -6008($fp)
	lw $t0, -6008($fp)
	lw $t1, 0($t0)
	sw $t1, -6012($fp)
	lw $t1, -6012($fp)
	li $t2, 0
	bne $t1, $t2, label655
	j label654
label654:
	li $t0, 1
	sw $t0, -5992($fp)
label655:
	li $t0, 8253
	sw $t0, -6016($fp)
	lw $t0, -6016($fp)
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	sw $t0, -6020($fp)
	addi $sp, $sp, -4
	lw $t0, -5988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6020($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -6024($fp)
	addi $sp, $sp, 16
	lw $t0, -5976($fp)
	lw $t1, -6024($fp)
	sub $t0, $t0, $t1
	sw $t0, -6028($fp)
	li $t0, 16120
	sw $t0, -6032($fp)
	lw $t1, -6028($fp)
	lw $t2, -6032($fp)
	ble $t1, $t2, label650
	j label651
label650:
	li $t0, 0
	sw $t0, -6036($fp)
	lw $t0, -1960($fp)
	sw $t0, -6040($fp)
	lw $t1, -6040($fp)
	li $t2, 0
	bne $t1, $t2, label661
	j label660
label660:
	li $t0, 1
	sw $t0, -6036($fp)
label661:
	li $t0, 0
	lw $t1, -6036($fp)
	sub $t0, $t0, $t1
	sw $t0, -6044($fp)
	li $t0, 0
	sw $t0, -6048($fp)
	li $t0, 43702
	sw $t0, -6052($fp)
	li $t0, 1
	sw $t0, -6056($fp)
	lw $t0, -6052($fp)
	lw $t1, -6056($fp)
	mul $t0, $t0, $t1
	sw $t0, -6060($fp)
	li $t0, 27708
	sw $t0, -6064($fp)
	lw $t1, -6060($fp)
	lw $t2, -6064($fp)
	bgt $t1, $t2, label662
	j label663
label662:
	li $t0, 1
	sw $t0, -6048($fp)
label663:
	lw $t0, -748($fp)
	sw $t0, -6068($fp)
	lw $t0, -760($fp)
	sw $t0, -6072($fp)
	lw $t0, -6068($fp)
	lw $t1, -6072($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6076($fp)
	li $t0, 0
	lw $t1, -6076($fp)
	sub $t0, $t0, $t1
	sw $t0, -6080($fp)
	li $t0, 0
	sw $t0, -6084($fp)
	li $t0, 0
	sw $t0, -6088($fp)
	li $t0, 13326
	sw $t0, -6092($fp)
	li $t0, 65533
	sw $t0, -6096($fp)
	lw $t1, -6092($fp)
	lw $t2, -6096($fp)
	bne $t1, $t2, label666
	j label667
label666:
	li $t0, 1
	sw $t0, -6088($fp)
label667:
	li $t0, 7103
	sw $t0, -6100($fp)
	lw $t1, -6088($fp)
	lw $t2, -6100($fp)
	beq $t1, $t2, label664
	j label665
label664:
	li $t0, 1
	sw $t0, -6084($fp)
label665:
	li $t0, 27171
	sw $t0, -6104($fp)
	lw $t0, -24($fp)
	sw $t0, -6108($fp)
	lw $t0, -6104($fp)
	lw $t1, -6108($fp)
	sub $t0, $t0, $t1
	sw $t0, -6112($fp)
	addi $sp, $sp, -4
	lw $t0, -6080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6112($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6116($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -324
	sw $t0, -6120($fp)
	li $t0, 0
	sw $t0, -6124($fp)
	li $t0, 4
	lw $t1, -6124($fp)
	mul $t0, $t0, $t1
	sw $t0, -6128($fp)
	lw $t0, -6128($fp)
	lw $t1, -6120($fp)
	add $t0, $t0, $t1
	sw $t0, -6132($fp)
	lw $t0, -6132($fp)
	lw $t1, 0($t0)
	sw $t1, -6136($fp)
	addi $sp, $sp, -4
	lw $t0, -6048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6136($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -6140($fp)
	addi $sp, $sp, 16
	lw $t0, -6044($fp)
	lw $t1, -6140($fp)
	sub $t0, $t0, $t1
	sw $t0, -6144($fp)
	li $t0, 0
	sw $t0, -6148($fp)
	li $t0, 28693
	sw $t0, -6152($fp)
	li $t0, 0
	lw $t1, -6152($fp)
	sub $t0, $t0, $t1
	sw $t0, -6156($fp)
	lw $t1, -6156($fp)
	li $t2, 0
	bne $t1, $t2, label669
	j label668
label668:
	li $t0, 1
	sw $t0, -6148($fp)
label669:
	lw $t1, -6144($fp)
	lw $t2, -6148($fp)
	beq $t1, $t2, label659
	j label657
label659:
	li $t0, 0
	sw $t0, -6160($fp)
	li $t0, 35903
	sw $t0, -6164($fp)
	lw $t1, -6164($fp)
	li $t2, 0
	bne $t1, $t2, label671
	j label670
label670:
	li $t0, 1
	sw $t0, -6160($fp)
label671:
	li $t0, 64244
	sw $t0, -6168($fp)
	lw $t0, -6160($fp)
	lw $t1, -6168($fp)
	sub $t0, $t0, $t1
	sw $t0, -6172($fp)
	lw $t0, -712($fp)
	sw $t0, -6176($fp)
	li $t0, 0
	lw $t1, -6176($fp)
	sub $t0, $t0, $t1
	sw $t0, -6180($fp)
	lw $t1, -6172($fp)
	lw $t2, -6180($fp)
	beq $t1, $t2, label656
	j label657
label656:
	lw $t0, -5848($fp)
	sw $t0, -6184($fp)
	lw $t0, -84($fp)
	sw $t0, -6188($fp)
	lw $t0, -6184($fp)
	lw $t1, -6188($fp)
	sub $t0, $t0, $t1
	sw $t0, -6192($fp)
	li $t0, 8939
	sw $t0, -6196($fp)
	lw $t0, -6192($fp)
	lw $t1, -6196($fp)
	add $t0, $t0, $t1
	sw $t0, -6200($fp)
	li $t0, 0
	sw $t0, -6204($fp)
	lw $t0, -60($fp)
	sw $t0, -6208($fp)
	li $t0, 39584
	sw $t0, -6212($fp)
	lw $t1, -6208($fp)
	lw $t2, -6212($fp)
	blt $t1, $t2, label674
	j label673
label674:
	lw $t0, -1504($fp)
	sw $t0, -6216($fp)
	lw $t1, -6216($fp)
	li $t2, 0
	bne $t1, $t2, label672
	j label673
label672:
	li $t0, 1
	sw $t0, -6204($fp)
label673:
	addi $sp, $sp, -4
	lw $t0, -6200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6204($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -6220($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -6220($fp)
	sub $t0, $t0, $t1
	sw $t0, -6224($fp)
	j label658
label657:
label675:
	lw $t0, -2212($fp)
	sw $t0, -6228($fp)
	lw $t1, -6228($fp)
	li $t2, 0
	bne $t1, $t2, label679
	j label676
label679:
	li $t0, 0
	sw $t0, -6232($fp)
	li $t0, 54969
	sw $t0, -6236($fp)
	li $t0, 3955
	sw $t0, -6240($fp)
	lw $t1, -6236($fp)
	lw $t2, -6240($fp)
	blt $t1, $t2, label680
	j label681
label680:
	li $t0, 1
	sw $t0, -6232($fp)
label681:
	li $t0, 28154
	sw $t0, -6244($fp)
	lw $t1, -6232($fp)
	lw $t2, -6244($fp)
	bgt $t1, $t2, label676
	j label678
label678:
	addi $t0, $fp, -536
	sw $t0, -6248($fp)
	li $t0, 0
	sw $t0, -6252($fp)
	lw $t0, -2272($fp)
	sw $t0, -6256($fp)
	lw $t1, -6256($fp)
	li $t2, 0
	bne $t1, $t2, label684
	j label683
label684:
	li $t0, 33545
	sw $t0, -6260($fp)
	lw $t1, -6260($fp)
	li $t2, 0
	bne $t1, $t2, label682
	j label683
label682:
	li $t0, 1
	sw $t0, -6252($fp)
label683:
	li $t0, 4
	lw $t1, -6252($fp)
	mul $t0, $t0, $t1
	sw $t0, -6264($fp)
	lw $t0, -6264($fp)
	lw $t1, -6248($fp)
	add $t0, $t0, $t1
	sw $t0, -6268($fp)
	lw $t0, -6268($fp)
	lw $t1, 0($t0)
	sw $t1, -6272($fp)
	lw $t1, -6272($fp)
	li $t2, 0
	bne $t1, $t2, label676
	j label677
label676:
	li $t0, 0
	sw $t0, -6276($fp)
	li $t0, 0
	sw $t0, -6280($fp)
	lw $t0, -2296($fp)
	sw $t0, -6284($fp)
	li $t0, 10838
	sw $t0, -6288($fp)
	lw $t0, -6284($fp)
	lw $t1, -6288($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6292($fp)
	lw $t0, -712($fp)
	sw $t0, -6296($fp)
	lw $t1, -6292($fp)
	lw $t2, -6296($fp)
	beq $t1, $t2, label687
	j label688
label687:
	li $t0, 1
	sw $t0, -6280($fp)
label688:
	li $t0, 50716
	sw $t0, -6300($fp)
	li $t0, 31893
	sw $t0, -6304($fp)
	lw $t0, -6300($fp)
	lw $t1, -6304($fp)
	mul $t0, $t0, $t1
	sw $t0, -6308($fp)
	li $t0, 0
	lw $t1, -6308($fp)
	sub $t0, $t0, $t1
	sw $t0, -6312($fp)
	li $t0, 0
	sw $t0, -6316($fp)
	li $t0, 14517
	sw $t0, -6320($fp)
	lw $t1, -6320($fp)
	li $t2, 0
	bne $t1, $t2, label690
	j label689
label689:
	li $t0, 1
	sw $t0, -6316($fp)
label690:
	lw $t0, -48($fp)
	sw $t0, -6324($fp)
	lw $t0, -6316($fp)
	lw $t1, -6324($fp)
	sub $t0, $t0, $t1
	sw $t0, -6328($fp)
	addi $sp, $sp, -4
	lw $t0, -6280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6328($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6332($fp)
	addi $sp, $sp, 16
	lw $t0, -2284($fp)
	sw $t0, -6336($fp)
	li $t0, 0
	lw $t1, -6336($fp)
	sub $t0, $t0, $t1
	sw $t0, -6340($fp)
	li $t0, 0
	lw $t1, -6340($fp)
	sub $t0, $t0, $t1
	sw $t0, -6344($fp)
	li $t0, 42223
	sw $t0, -6348($fp)
	li $t0, 1
	sw $t0, -6352($fp)
	lw $t0, -6348($fp)
	lw $t1, -6352($fp)
	mul $t0, $t0, $t1
	sw $t0, -6356($fp)
	lw $t0, -6344($fp)
	lw $t1, -6356($fp)
	add $t0, $t0, $t1
	sw $t0, -6360($fp)
	lw $t1, -6332($fp)
	lw $t2, -6360($fp)
	beq $t1, $t2, label685
	j label686
label685:
	li $t0, 1
	sw $t0, -6276($fp)
label686:
	j label675
label677:
label658:
	j label649
label651:
	li $t0, 0
	sw $t0, -6364($fp)
	li $t0, 0
	sw $t0, -6368($fp)
	lw $t0, -24($fp)
	sw $t0, -6372($fp)
	lw $t1, -6372($fp)
	li $t2, 0
	bne $t1, $t2, label697
	j label696
label696:
	li $t0, 1
	sw $t0, -6368($fp)
label697:
	lw $t0, -1564($fp)
	sw $t0, -6376($fp)
	lw $t1, -6368($fp)
	lw $t2, -6376($fp)
	bne $t1, $t2, label694
	j label695
label694:
	li $t0, 1
	sw $t0, -6364($fp)
label695:
	li $t0, 12692
	sw $t0, -6380($fp)
	li $t0, 17788
	sw $t0, -6384($fp)
	lw $t0, -6380($fp)
	lw $t1, -6384($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6388($fp)
	li $t0, 65000
	sw $t0, -6392($fp)
	lw $t0, -6388($fp)
	lw $t1, -6392($fp)
	sub $t0, $t0, $t1
	sw $t0, -6396($fp)
	li $t0, 0
	sw $t0, -6400($fp)
	lw $t0, -1528($fp)
	sw $t0, -6404($fp)
	lw $t1, -6404($fp)
	li $t2, 0
	bne $t1, $t2, label699
	j label698
label698:
	li $t0, 1
	sw $t0, -6400($fp)
label699:
	lw $t0, -1528($fp)
	sw $t0, -6408($fp)
	li $t0, 0
	lw $t1, -6408($fp)
	sub $t0, $t0, $t1
	sw $t0, -6412($fp)
	li $t0, 0
	lw $t1, -6412($fp)
	sub $t0, $t0, $t1
	sw $t0, -6416($fp)
	li $t0, 0
	sw $t0, -6420($fp)
	li $t0, 0
	sw $t0, -6424($fp)
	li $t0, 56153
	sw $t0, -6428($fp)
	lw $t0, -60($fp)
	sw $t0, -6432($fp)
	lw $t1, -6428($fp)
	lw $t2, -6432($fp)
	beq $t1, $t2, label702
	j label703
label702:
	li $t0, 1
	sw $t0, -6424($fp)
label703:
	li $t0, 51673
	sw $t0, -6436($fp)
	lw $t1, -6424($fp)
	lw $t2, -6436($fp)
	bne $t1, $t2, label700
	j label701
label700:
	li $t0, 1
	sw $t0, -6420($fp)
label701:
	li $t0, 28795
	sw $t0, -6440($fp)
	li $t0, 254
	sw $t0, -6444($fp)
	lw $t0, -6440($fp)
	lw $t1, -6444($fp)
	add $t0, $t0, $t1
	sw $t0, -6448($fp)
	lw $t0, -5872($fp)
	sw $t0, -6452($fp)
	lw $t0, -6448($fp)
	lw $t1, -6452($fp)
	sub $t0, $t0, $t1
	sw $t0, -6456($fp)
	lw $t0, -2308($fp)
	sw $t0, -6460($fp)
	lw $t0, -6460($fp)
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	sw $t0, -6464($fp)
	addi $sp, $sp, -4
	lw $t0, -6420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6464($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6468($fp)
	addi $sp, $sp, 16
	lw $t0, -60($fp)
	sw $t0, -6472($fp)
	lw $t0, -6468($fp)
	lw $t1, -6472($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6476($fp)
	addi $sp, $sp, -4
	lw $t0, -6400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6476($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -6480($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -6484($fp)
	li $t0, 9730
	sw $t0, -6488($fp)
	li $t0, 39543
	sw $t0, -6492($fp)
	lw $t0, -6488($fp)
	lw $t1, -6492($fp)
	sub $t0, $t0, $t1
	sw $t0, -6496($fp)
	lw $t1, -6496($fp)
	li $t2, 0
	bne $t1, $t2, label704
	j label706
label706:
	li $t0, 40033
	sw $t0, -6500($fp)
	lw $t1, -6500($fp)
	li $t2, 0
	bne $t1, $t2, label704
	j label705
label704:
	li $t0, 1
	sw $t0, -6484($fp)
label705:
	li $t0, 31779
	sw $t0, -6504($fp)
	addi $sp, $sp, -4
	lw $t0, -6364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6504($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6508($fp)
	addi $sp, $sp, 24
	li $t0, 12690
	sw $t0, -6512($fp)
	lw $t0, -6508($fp)
	lw $t1, -6512($fp)
	add $t0, $t0, $t1
	sw $t0, -6516($fp)
	li $t0, 0
	sw $t0, -6520($fp)
	lw $t0, -5860($fp)
	sw $t0, -6524($fp)
	lw $t1, -6524($fp)
	li $t2, 0
	bne $t1, $t2, label707
	j label708
label707:
	li $t0, 1
	sw $t0, -6520($fp)
label708:
	lw $t1, -6516($fp)
	lw $t2, -6520($fp)
	ble $t1, $t2, label691
	j label692
label691:
	li $t0, 24892
	sw $t0, -6528($fp)
	lw $t0, -6528($fp)
	sw $t0, -6532($fp)
	lw $t0, -6532($fp)
	sw $t0, -6536($fp)
	li $t0, 0
	sw $t0, -6540($fp)
	lw $t0, -1504($fp)
	sw $t0, -6544($fp)
	lw $t1, -6544($fp)
	li $t2, 0
	bne $t1, $t2, label711
	j label710
label711:
	li $t0, 0
	sw $t0, -6548($fp)
	li $t0, 43166
	sw $t0, -6552($fp)
	lw $t1, -6552($fp)
	li $t2, 0
	bne $t1, $t2, label713
	j label712
label712:
	li $t0, 1
	sw $t0, -6548($fp)
label713:
	lw $t0, -6532($fp)
	sw $t0, -6556($fp)
	lw $t0, -6548($fp)
	lw $t1, -6556($fp)
	add $t0, $t0, $t1
	sw $t0, -6560($fp)
	lw $t0, -48($fp)
	sw $t0, -6564($fp)
	lw $t0, -48($fp)
	sw $t0, -6568($fp)
	lw $t0, -6564($fp)
	lw $t1, -6568($fp)
	mul $t0, $t0, $t1
	sw $t0, -6572($fp)
	lw $t0, -6560($fp)
	lw $t1, -6572($fp)
	sub $t0, $t0, $t1
	sw $t0, -6576($fp)
	lw $t1, -6576($fp)
	li $t2, 0
	bne $t1, $t2, label709
	j label710
label709:
	li $t0, 1
	sw $t0, -6540($fp)
label710:
	addi $t0, $fp, -512
	sw $t0, -6580($fp)
	lw $t0, -724($fp)
	sw $t0, -6584($fp)
	li $t0, 4497
	sw $t0, -6588($fp)
	lw $t0, -6584($fp)
	lw $t1, -6588($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6592($fp)
	li $t0, 4
	lw $t1, -6592($fp)
	mul $t0, $t0, $t1
	sw $t0, -6596($fp)
	lw $t0, -6596($fp)
	lw $t1, -6580($fp)
	add $t0, $t0, $t1
	sw $t0, -6600($fp)
	lw $t0, -6600($fp)
	lw $t1, 0($t0)
	sw $t1, -6604($fp)
	li $t0, 0
	lw $t1, -6604($fp)
	sub $t0, $t0, $t1
	sw $t0, -6608($fp)
	addi $t0, $fp, -536
	sw $t0, -6612($fp)
	li $t0, 0
	sw $t0, -6616($fp)
	addi $t0, $fp, -536
	sw $t0, -6620($fp)
	lw $t0, -60($fp)
	sw $t0, -6624($fp)
	li $t0, 4
	lw $t1, -6624($fp)
	mul $t0, $t0, $t1
	sw $t0, -6628($fp)
	lw $t0, -6628($fp)
	lw $t1, -6620($fp)
	add $t0, $t0, $t1
	sw $t0, -6632($fp)
	lw $t0, -6632($fp)
	lw $t1, 0($t0)
	sw $t1, -6636($fp)
	lw $t1, -6636($fp)
	li $t2, 0
	bne $t1, $t2, label714
	j label716
label716:
	lw $t0, -1504($fp)
	sw $t0, -6640($fp)
	lw $t1, -6640($fp)
	li $t2, 0
	bne $t1, $t2, label717
	j label715
label717:
	li $t0, 52600
	sw $t0, -6644($fp)
	lw $t1, -6644($fp)
	li $t2, 0
	bne $t1, $t2, label714
	j label715
label714:
	li $t0, 1
	sw $t0, -6616($fp)
label715:
	li $t0, 4
	lw $t1, -6616($fp)
	mul $t0, $t0, $t1
	sw $t0, -6648($fp)
	lw $t0, -6648($fp)
	lw $t1, -6612($fp)
	add $t0, $t0, $t1
	sw $t0, -6652($fp)
	lw $t0, -6652($fp)
	lw $t1, 0($t0)
	sw $t1, -6656($fp)
label692:
	j label634
label633:
	lw $t0, -2308($fp)
	sw $t0, -6660($fp)
label634:
label718:
	lw $t0, -60($fp)
	sw $t0, -6664($fp)
	lw $t0, -760($fp)
	sw $t0, -6668($fp)
	lw $t0, -6664($fp)
	lw $t1, -6668($fp)
	sub $t0, $t0, $t1
	sw $t0, -6672($fp)
	lw $t0, -1576($fp)
	sw $t0, -6676($fp)
	lw $t0, -6672($fp)
	lw $t1, -6676($fp)
	sub $t0, $t0, $t1
	sw $t0, -6680($fp)
	lw $t0, -724($fp)
	sw $t0, -6684($fp)
	lw $t0, -6684($fp)
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	sw $t0, -6688($fp)
	lw $t0, -1324($fp)
	sw $t0, -6692($fp)
	lw $t0, -6692($fp)
	sw $t0, -1948($fp)
	lw $t0, -1948($fp)
	sw $t0, -6696($fp)
	li $t0, 40643
	sw $t0, -6700($fp)
	lw $t0, -6700($fp)
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	sw $t0, -6704($fp)
	li $t0, 0
	sw $t0, -6708($fp)
	li $t0, 64380
	sw $t0, -6712($fp)
	li $t0, 62675
	sw $t0, -6716($fp)
	lw $t0, -6712($fp)
	lw $t1, -6716($fp)
	sub $t0, $t0, $t1
	sw $t0, -6720($fp)
	lw $t1, -6720($fp)
	li $t2, 0
	bne $t1, $t2, label724
	j label723
label724:
	lw $t0, 12($fp)
	sw $t0, -6724($fp)
	lw $t1, -6724($fp)
	li $t2, 0
	bne $t1, $t2, label722
	j label723
label722:
	li $t0, 1
	sw $t0, -6708($fp)
label723:
	addi $t0, $fp, -488
	sw $t0, -6728($fp)
	lw $t0, -760($fp)
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
	li $t0, 0
	lw $t1, -6744($fp)
	sub $t0, $t0, $t1
	sw $t0, -6748($fp)
	li $t0, 11958
	sw $t0, -6752($fp)
	lw $t0, -1180($fp)
	sw $t0, -6756($fp)
	lw $t0, -6752($fp)
	lw $t1, -6756($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6760($fp)
	li $t0, 8750
	sw $t0, -6764($fp)
	lw $t0, -6760($fp)
	lw $t1, -6764($fp)
	add $t0, $t0, $t1
	sw $t0, -6768($fp)
	addi $sp, $sp, -4
	lw $t0, -6708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6768($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6772($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -6776($fp)
	li $t0, 40741
	sw $t0, -6780($fp)
	li $t0, 0
	lw $t1, -6780($fp)
	sub $t0, $t0, $t1
	sw $t0, -6784($fp)
	li $t0, 49863
	sw $t0, -6788($fp)
	lw $t1, -6784($fp)
	lw $t2, -6788($fp)
	beq $t1, $t2, label725
	j label726
label725:
	li $t0, 1
	sw $t0, -6776($fp)
label726:
	addi $t0, $fp, -468
	sw $t0, -6792($fp)
	li $t0, 6
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
	li $t0, 51308
	sw $t0, -6812($fp)
	lw $t0, -6812($fp)
	sw $t0, -1960($fp)
	lw $t0, -1960($fp)
	sw $t0, -6816($fp)
	addi $sp, $sp, -4
	lw $t0, -6704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6816($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6820($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -6824($fp)
	li $t0, 6323
	sw $t0, -6828($fp)
	li $t0, 40400
	sw $t0, -6832($fp)
	lw $t1, -6828($fp)
	lw $t2, -6832($fp)
	beq $t1, $t2, label727
	j label729
label729:
	lw $t0, -1528($fp)
	sw $t0, -6836($fp)
	lw $t1, -6836($fp)
	li $t2, 0
	bne $t1, $t2, label727
	j label728
label727:
	li $t0, 1
	sw $t0, -6824($fp)
label728:
	addi $sp, $sp, -4
	lw $t0, -6680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6824($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6840($fp)
	addi $sp, $sp, 24
	lw $t1, -6840($fp)
	li $t2, 0
	bne $t1, $t2, label719
	j label721
label721:
	jal f9
	sw $v0, -6844($fp)
	addi $sp, $sp, 4
	li $t0, 9683
	sw $t0, -6848($fp)
	lw $t0, -6844($fp)
	lw $t1, -6848($fp)
	sub $t0, $t0, $t1
	sw $t0, -6852($fp)
	lw $t1, -6852($fp)
	li $t2, 0
	bne $t1, $t2, label719
	j label720
label719:
	li $t0, 0
	sw $t0, -6856($fp)
	li $t0, 39362
	sw $t0, -6860($fp)
	lw $t1, -6860($fp)
	li $t2, 0
	bne $t1, $t2, label731
	j label730
label730:
	li $t0, 1
	sw $t0, -6856($fp)
label731:
	lw $ra, -4($fp)
	lw $v0, -6856($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label718
label720:
	j label454
label453:
	lw $t0, -216($fp)
	sw $t0, -6864($fp)
	lw $t0, -168($fp)
	sw $t0, -6868($fp)
	lw $t0, -6864($fp)
	lw $t1, -6868($fp)
	add $t0, $t0, $t1
	sw $t0, -6872($fp)
	lw $t0, -6872($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -6876($fp)
	lw $t0, -6876($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -6880($fp)
	lw $ra, -4($fp)
	lw $v0, -6880($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label454:
	lw $t0, -24($fp)
	sw $t0, -6884($fp)
	lw $t0, -6884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -36($fp)
	sw $t0, -6888($fp)
	lw $t0, -6888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -48($fp)
	sw $t0, -6892($fp)
	lw $t0, -6892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -60($fp)
	sw $t0, -6896($fp)
	lw $t0, -6896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -72($fp)
	sw $t0, -6900($fp)
	lw $t0, -6900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -6904($fp)
	lw $t0, -6904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -6908($fp)
	li $t0, 0
	sw $t0, -6912($fp)
	li $t0, 4
	lw $t1, -6912($fp)
	mul $t0, $t0, $t1
	sw $t0, -6916($fp)
	lw $t0, -6916($fp)
	lw $t1, -6908($fp)
	add $t0, $t0, $t1
	sw $t0, -6920($fp)
	lw $t0, -6920($fp)
	lw $t1, 0($t0)
	sw $t1, -6924($fp)
	lw $t0, -6924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -6928($fp)
	li $t0, 1
	sw $t0, -6932($fp)
	li $t0, 4
	lw $t1, -6932($fp)
	mul $t0, $t0, $t1
	sw $t0, -6936($fp)
	lw $t0, -6936($fp)
	lw $t1, -6928($fp)
	add $t0, $t0, $t1
	sw $t0, -6940($fp)
	lw $t0, -6940($fp)
	lw $t1, 0($t0)
	sw $t1, -6944($fp)
	lw $t0, -6944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -6948($fp)
	li $t0, 2
	sw $t0, -6952($fp)
	li $t0, 4
	lw $t1, -6952($fp)
	mul $t0, $t0, $t1
	sw $t0, -6956($fp)
	lw $t0, -6956($fp)
	lw $t1, -6948($fp)
	add $t0, $t0, $t1
	sw $t0, -6960($fp)
	lw $t0, -6960($fp)
	lw $t1, 0($t0)
	sw $t1, -6964($fp)
	lw $t0, -6964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -168($fp)
	sw $t0, -6968($fp)
	lw $t0, -6968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	sw $t0, -6972($fp)
	lw $t0, -6972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -6976($fp)
	lw $t0, -6976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -204($fp)
	sw $t0, -6980($fp)
	lw $t0, -6980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -216($fp)
	sw $t0, -6984($fp)
	lw $t0, -6984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6988($fp)
	li $t0, 0
	sw $t0, -6992($fp)
	li $t0, 38753
	sw $t0, -6996($fp)
	lw $t0, -24($fp)
	sw $t0, -7000($fp)
	lw $t0, -6996($fp)
	lw $t1, -7000($fp)
	add $t0, $t0, $t1
	sw $t0, -7004($fp)
	lw $t1, -7004($fp)
	li $t2, 0
	bne $t1, $t2, label737
	j label736
label737:
	li $t0, 41462
	sw $t0, -7008($fp)
	lw $t1, -7008($fp)
	li $t2, 0
	bne $t1, $t2, label735
	j label736
label735:
	li $t0, 1
	sw $t0, -6992($fp)
label736:
	lw $t0, -216($fp)
	sw $t0, -7012($fp)
	addi $sp, $sp, -4
	lw $t0, -6992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7012($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -7016($fp)
	addi $sp, $sp, 12
	lw $t1, -7016($fp)
	li $t2, 0
	bne $t1, $t2, label734
	j label733
label734:
	lw $t0, -36($fp)
	sw $t0, -7020($fp)
	lw $t1, -7020($fp)
	li $t2, 0
	bne $t1, $t2, label733
	j label732
label732:
	li $t0, 1
	sw $t0, -6988($fp)
label733:
	lw $ra, -4($fp)
	lw $v0, -6988($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f14:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1304
	li $t0, 49093
	sw $t0, -56($fp)
	addi $t0, $fp, -44
	sw $t0, -60($fp)
	li $t0, 0
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
	li $t0, 12760
	sw $t0, -80($fp)
	addi $t0, $fp, -44
	sw $t0, -84($fp)
	li $t0, 1
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
	li $t0, 15959
	sw $t0, -104($fp)
	addi $t0, $fp, -44
	sw $t0, -108($fp)
	li $t0, 2
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
	li $t0, 12352
	sw $t0, -128($fp)
	addi $t0, $fp, -44
	sw $t0, -132($fp)
	li $t0, 3
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
	li $t0, 13014
	sw $t0, -152($fp)
	addi $t0, $fp, -44
	sw $t0, -156($fp)
	li $t0, 4
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
	li $t0, 6577
	sw $t0, -176($fp)
	addi $t0, $fp, -44
	sw $t0, -180($fp)
	li $t0, 5
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
	li $t0, 64026
	sw $t0, -200($fp)
	addi $t0, $fp, -44
	sw $t0, -204($fp)
	li $t0, 6
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
	li $t0, 25707
	sw $t0, -224($fp)
	addi $t0, $fp, -44
	sw $t0, -228($fp)
	li $t0, 7
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
	li $t0, 24365
	sw $t0, -248($fp)
	addi $t0, $fp, -44
	sw $t0, -252($fp)
	li $t0, 8
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
	li $t0, 63490
	sw $t0, -272($fp)
	addi $t0, $fp, -44
	sw $t0, -276($fp)
	li $t0, 9
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
	li $t0, 38397
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	li $t0, 49257
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	li $t0, 41120
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	li $t0, 42894
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	sw $t0, -340($fp)
	li $t0, 36321
	sw $t0, -344($fp)
	addi $t0, $fp, -52
	sw $t0, -348($fp)
	li $t0, 0
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
	li $t0, 47443
	sw $t0, -368($fp)
	addi $t0, $fp, -52
	sw $t0, -372($fp)
	li $t0, 1
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
	li $t0, 17759
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -400($fp)
	li $t0, 22094
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -412($fp)
label738:
	li $t0, 0
	sw $t0, -416($fp)
	lw $t0, 8($fp)
	sw $t0, -420($fp)
	lw $t1, -420($fp)
	li $t2, 0
	bne $t1, $t2, label741
	j label744
label744:
	lw $t0, 12($fp)
	sw $t0, -424($fp)
	lw $t1, -424($fp)
	li $t2, 0
	bne $t1, $t2, label741
	j label743
label743:
	lw $t0, 12($fp)
	sw $t0, -428($fp)
	lw $t1, -428($fp)
	li $t2, 0
	bne $t1, $t2, label741
	j label742
label741:
	li $t0, 1
	sw $t0, -416($fp)
label742:
	lw $t0, -416($fp)
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -432($fp)
	lw $t1, -432($fp)
	li $t2, 0
	bne $t1, $t2, label739
	j label740
label739:
	lw $t0, 4($fp)
	sw $t0, -436($fp)
	lw $t0, 8($fp)
	sw $t0, -440($fp)
	lw $t0, -436($fp)
	lw $t1, -440($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -444($fp)
	li $t0, 1564
	sw $t0, -448($fp)
	lw $t0, -444($fp)
	lw $t1, -448($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -452($fp)
	li $t0, 0
	lw $t1, -452($fp)
	sub $t0, $t0, $t1
	sw $t0, -456($fp)
	j label738
label740:
label745:
	li $t0, 0
	sw $t0, -460($fp)
	li $t0, 62835
	sw $t0, -464($fp)
	li $t0, 12142
	sw $t0, -468($fp)
	lw $t1, -464($fp)
	lw $t2, -468($fp)
	bne $t1, $t2, label748
	j label749
label748:
	li $t0, 1
	sw $t0, -460($fp)
label749:
	lw $t0, -460($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -476($fp)
	lw $t1, -476($fp)
	li $t2, 0
	bne $t1, $t2, label746
	j label747
label746:
	addi $t0, $fp, -44
	sw $t0, -480($fp)
	li $t0, 0
	sw $t0, -484($fp)
	li $t0, 0
	sw $t0, -488($fp)
	lw $t0, 8($fp)
	sw $t0, -492($fp)
	li $t0, 10986
	sw $t0, -496($fp)
	lw $t0, -492($fp)
	lw $t1, -496($fp)
	mul $t0, $t0, $t1
	sw $t0, -500($fp)
	lw $t0, -324($fp)
	sw $t0, -504($fp)
	lw $t1, -500($fp)
	lw $t2, -504($fp)
	bne $t1, $t2, label753
	j label754
label753:
	li $t0, 1
	sw $t0, -488($fp)
label754:
	li $t0, 0
	sw $t0, -508($fp)
	li $t0, 0
	sw $t0, -512($fp)
	lw $t0, -396($fp)
	sw $t0, -516($fp)
	li $t0, 13521
	sw $t0, -520($fp)
	lw $t1, -516($fp)
	lw $t2, -520($fp)
	blt $t1, $t2, label757
	j label758
label757:
	li $t0, 1
	sw $t0, -512($fp)
label758:
	li $t0, 6050
	sw $t0, -524($fp)
	lw $t1, -512($fp)
	lw $t2, -524($fp)
	ble $t1, $t2, label755
	j label756
label755:
	li $t0, 1
	sw $t0, -508($fp)
label756:
	addi $sp, $sp, -4
	lw $t0, -488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -508($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -528($fp)
	addi $sp, $sp, 12
	lw $t1, -528($fp)
	li $t2, 0
	bne $t1, $t2, label752
	j label751
label752:
	li $t0, 10660
	sw $t0, -532($fp)
	lw $t0, 8($fp)
	sw $t0, -536($fp)
	lw $t1, -532($fp)
	lw $t2, -536($fp)
	bne $t1, $t2, label750
	j label751
label750:
	li $t0, 1
	sw $t0, -484($fp)
label751:
	li $t0, 4
	lw $t1, -484($fp)
	mul $t0, $t0, $t1
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	lw $t1, -480($fp)
	add $t0, $t0, $t1
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	lw $t1, 0($t0)
	sw $t1, -548($fp)
	j label745
label747:
	li $t0, 0
	sw $t0, -552($fp)
	jal f9
	sw $v0, -556($fp)
	addi $sp, $sp, 4
	lw $t1, -556($fp)
	li $t2, 0
	bne $t1, $t2, label763
	j label762
label762:
	li $t0, 1
	sw $t0, -552($fp)
label763:
	lw $t0, -552($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -560($fp)
	lw $t1, -560($fp)
	li $t2, 0
	bne $t1, $t2, label759
	j label760
label759:
	li $t0, 46693
	sw $t0, -564($fp)
	lw $t0, 4($fp)
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -572($fp)
	j label761
label760:
	li $t0, 0
	sw $t0, -576($fp)
	li $t0, 20669
	sw $t0, -580($fp)
	lw $t1, -580($fp)
	li $t2, 0
	bne $t1, $t2, label764
	j label765
label764:
	li $t0, 1
	sw $t0, -576($fp)
label765:
	li $t0, 50023
	sw $t0, -584($fp)
	lw $t0, -576($fp)
	lw $t1, -584($fp)
	add $t0, $t0, $t1
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -592($fp)
label761:
	addi $t0, $fp, -44
	sw $t0, -596($fp)
	li $t0, 0
	sw $t0, -600($fp)
	li $t0, 4
	lw $t1, -600($fp)
	mul $t0, $t0, $t1
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	lw $t1, -596($fp)
	add $t0, $t0, $t1
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	lw $t1, 0($t0)
	sw $t1, -612($fp)
	lw $t0, -612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -616($fp)
	li $t0, 1
	sw $t0, -620($fp)
	li $t0, 4
	lw $t1, -620($fp)
	mul $t0, $t0, $t1
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	lw $t1, -616($fp)
	add $t0, $t0, $t1
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	lw $t1, 0($t0)
	sw $t1, -632($fp)
	lw $t0, -632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -636($fp)
	li $t0, 2
	sw $t0, -640($fp)
	li $t0, 4
	lw $t1, -640($fp)
	mul $t0, $t0, $t1
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	lw $t1, -636($fp)
	add $t0, $t0, $t1
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	lw $t1, 0($t0)
	sw $t1, -652($fp)
	lw $t0, -652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -656($fp)
	li $t0, 3
	sw $t0, -660($fp)
	li $t0, 4
	lw $t1, -660($fp)
	mul $t0, $t0, $t1
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	lw $t1, -656($fp)
	add $t0, $t0, $t1
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	lw $t1, 0($t0)
	sw $t1, -672($fp)
	lw $t0, -672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -676($fp)
	li $t0, 4
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
	lw $t0, -692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -696($fp)
	li $t0, 5
	sw $t0, -700($fp)
	li $t0, 4
	lw $t1, -700($fp)
	mul $t0, $t0, $t1
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	lw $t1, -696($fp)
	add $t0, $t0, $t1
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	lw $t1, 0($t0)
	sw $t1, -712($fp)
	lw $t0, -712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -716($fp)
	li $t0, 6
	sw $t0, -720($fp)
	li $t0, 4
	lw $t1, -720($fp)
	mul $t0, $t0, $t1
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	lw $t1, -716($fp)
	add $t0, $t0, $t1
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	lw $t1, 0($t0)
	sw $t1, -732($fp)
	lw $t0, -732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -736($fp)
	li $t0, 7
	sw $t0, -740($fp)
	li $t0, 4
	lw $t1, -740($fp)
	mul $t0, $t0, $t1
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	lw $t1, -736($fp)
	add $t0, $t0, $t1
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	lw $t1, 0($t0)
	sw $t1, -752($fp)
	lw $t0, -752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -756($fp)
	li $t0, 8
	sw $t0, -760($fp)
	li $t0, 4
	lw $t1, -760($fp)
	mul $t0, $t0, $t1
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	lw $t1, -756($fp)
	add $t0, $t0, $t1
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	lw $t1, 0($t0)
	sw $t1, -772($fp)
	lw $t0, -772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -776($fp)
	li $t0, 9
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
	lw $t0, -300($fp)
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -312($fp)
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -324($fp)
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -336($fp)
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -812($fp)
	li $t0, 0
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
	addi $t0, $fp, -52
	sw $t0, -832($fp)
	li $t0, 1
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
	li $t0, 0
	sw $t0, -852($fp)
	li $t0, 33580
	sw $t0, -856($fp)
	lw $t1, -856($fp)
	li $t2, 0
	bne $t1, $t2, label769
	j label767
label769:
	li $t0, 32671
	sw $t0, -860($fp)
	lw $t1, -860($fp)
	li $t2, 0
	bne $t1, $t2, label768
	j label767
label768:
	lw $t0, 12($fp)
	sw $t0, -864($fp)
	lw $t1, -864($fp)
	li $t2, 0
	bne $t1, $t2, label766
	j label767
label766:
	li $t0, 1
	sw $t0, -852($fp)
label767:
	li $t0, 62132
	sw $t0, -868($fp)
	li $t0, 0
	sw $t0, -872($fp)
	li $t0, 19911
	sw $t0, -876($fp)
	lw $t0, 8($fp)
	sw $t0, -880($fp)
	lw $t1, -876($fp)
	lw $t2, -880($fp)
	bgt $t1, $t2, label772
	j label771
label772:
	lw $t0, 8($fp)
	sw $t0, -884($fp)
	lw $t1, -884($fp)
	li $t2, 0
	bne $t1, $t2, label770
	j label771
label770:
	li $t0, 1
	sw $t0, -872($fp)
label771:
	addi $sp, $sp, -4
	lw $t0, -852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -872($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -888($fp)
	addi $sp, $sp, 16
	lw $ra, -4($fp)
	lw $v0, -888($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -336($fp)
	sw $t0, -892($fp)
	lw $t1, -892($fp)
	li $t2, 0
	bne $t1, $t2, label774
	j label773
label773:
	li $t0, 0
	sw $t0, -896($fp)
	li $t0, 45932
	sw $t0, -900($fp)
	li $t0, 45686
	sw $t0, -904($fp)
	lw $t0, -900($fp)
	lw $t1, -904($fp)
	mul $t0, $t0, $t1
	sw $t0, -908($fp)
	li $t0, 19132
	sw $t0, -912($fp)
	lw $t1, -908($fp)
	lw $t2, -912($fp)
	blt $t1, $t2, label776
	j label777
label776:
	li $t0, 1
	sw $t0, -896($fp)
label777:
	addi $t0, $fp, -44
	sw $t0, -916($fp)
	lw $t0, -312($fp)
	sw $t0, -920($fp)
	li $t0, 4
	lw $t1, -920($fp)
	mul $t0, $t0, $t1
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	lw $t1, -916($fp)
	add $t0, $t0, $t1
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	lw $t1, 0($t0)
	sw $t1, -932($fp)
	li $t0, 12555
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -940($fp)
	addi $sp, $sp, -4
	lw $t0, -896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -940($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -944($fp)
	addi $sp, $sp, 16
	j label775
label774:
	addi $t0, $fp, -52
	sw $t0, -948($fp)
	li $t0, 0
	sw $t0, -952($fp)
	addi $t0, $fp, -44
	sw $t0, -956($fp)
	lw $t0, -300($fp)
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
	lw $t1, -972($fp)
	li $t2, 0
	bne $t1, $t2, label778
	j label780
label780:
	li $t0, 5857
	sw $t0, -976($fp)
	li $t0, 43498
	sw $t0, -980($fp)
	lw $t0, -976($fp)
	lw $t1, -980($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -984($fp)
	li $t0, 44422
	sw $t0, -988($fp)
	lw $t0, -324($fp)
	sw $t0, -992($fp)
	lw $t0, -988($fp)
	lw $t1, -992($fp)
	add $t0, $t0, $t1
	sw $t0, -996($fp)
	addi $sp, $sp, -4
	lw $t0, -984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -996($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -1000($fp)
	addi $sp, $sp, 12
	lw $t1, -1000($fp)
	li $t2, 0
	bne $t1, $t2, label778
	j label779
label778:
	li $t0, 1
	sw $t0, -952($fp)
label779:
	li $t0, 4
	lw $t1, -952($fp)
	mul $t0, $t0, $t1
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	lw $t1, -948($fp)
	add $t0, $t0, $t1
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	lw $t1, 0($t0)
	sw $t1, -1012($fp)
label775:
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
	sw $t0, -1136($fp)
	li $t0, 6
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
	addi $t0, $fp, -44
	sw $t0, -1156($fp)
	li $t0, 7
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
	addi $t0, $fp, -44
	sw $t0, -1176($fp)
	li $t0, 8
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
	addi $t0, $fp, -44
	sw $t0, -1196($fp)
	li $t0, 9
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
	lw $t0, -300($fp)
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -312($fp)
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -324($fp)
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -336($fp)
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -1232($fp)
	li $t0, 0
	sw $t0, -1236($fp)
	li $t0, 4
	lw $t1, -1236($fp)
	mul $t0, $t0, $t1
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	lw $t1, -1232($fp)
	add $t0, $t0, $t1
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	lw $t1, 0($t0)
	sw $t1, -1248($fp)
	lw $t0, -1248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -1252($fp)
	li $t0, 1
	sw $t0, -1256($fp)
	li $t0, 4
	lw $t1, -1256($fp)
	mul $t0, $t0, $t1
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	lw $t1, -1252($fp)
	add $t0, $t0, $t1
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	lw $t1, 0($t0)
	sw $t1, -1268($fp)
	lw $t0, -1268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1272($fp)
	lw $t0, -324($fp)
	sw $t0, -1276($fp)
	lw $t0, 8($fp)
	sw $t0, -1280($fp)
	lw $t0, 8($fp)
	sw $t0, -1284($fp)
	lw $t0, -1280($fp)
	lw $t1, -1284($fp)
	mul $t0, $t0, $t1
	sw $t0, -1288($fp)
	li $t0, 42376
	sw $t0, -1292($fp)
	lw $t0, -1288($fp)
	lw $t1, -1292($fp)
	mul $t0, $t0, $t1
	sw $t0, -1296($fp)
	lw $t0, 8($fp)
	sw $t0, -1300($fp)
	li $t0, 0
	lw $t1, -1300($fp)
	sub $t0, $t0, $t1
	sw $t0, -1304($fp)
	lw $t0, -1296($fp)
	lw $t1, -1304($fp)
	sub $t0, $t0, $t1
	sw $t0, -1308($fp)
	lw $t1, -1276($fp)
	lw $t2, -1308($fp)
	bne $t1, $t2, label781
	j label782
label781:
	li $t0, 1
	sw $t0, -1272($fp)
label782:
	lw $ra, -4($fp)
	lw $v0, -1272($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f15:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -56
	li $t0, 44254
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 27219
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 0
	sw $t0, -32($fp)
	lw $t0, -24($fp)
	sw $t0, -36($fp)
	lw $t1, -36($fp)
	li $t2, 0
	bne $t1, $t2, label783
	j label784
label783:
	li $t0, 1
	sw $t0, -32($fp)
label784:
	lw $t0, -24($fp)
	sw $t0, -40($fp)
	lw $t0, -12($fp)
	sw $t0, -44($fp)
	addi $sp, $sp, -4
	lw $t0, -32($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -40($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -44($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -48($fp)
	addi $sp, $sp, 16
	lw $t0, -12($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 17960
	sw $t0, -60($fp)
	lw $ra, -4($fp)
	lw $v0, -60($fp)
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
