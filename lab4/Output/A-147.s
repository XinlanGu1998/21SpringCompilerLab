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
	addi $sp, $sp, -800
	li $t0, 62731
	sw $t0, -56($fp)
	addi $t0, $fp, -24
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
	li $t0, 31798
	sw $t0, -80($fp)
	addi $t0, $fp, -24
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
	li $t0, 17437
	sw $t0, -104($fp)
	addi $t0, $fp, -24
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
	li $t0, 17046
	sw $t0, -128($fp)
	addi $t0, $fp, -24
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
	li $t0, 15689
	sw $t0, -152($fp)
	addi $t0, $fp, -24
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
	li $t0, 43780
	sw $t0, -176($fp)
	addi $t0, $fp, -52
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
	li $t0, 63973
	sw $t0, -200($fp)
	addi $t0, $fp, -52
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
	li $t0, 5606
	sw $t0, -224($fp)
	addi $t0, $fp, -52
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
	li $t0, 25566
	sw $t0, -248($fp)
	addi $t0, $fp, -52
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
	li $t0, 28815
	sw $t0, -272($fp)
	addi $t0, $fp, -52
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
	li $t0, 44338
	sw $t0, -296($fp)
	addi $t0, $fp, -52
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
	li $t0, 43728
	sw $t0, -320($fp)
	addi $t0, $fp, -52
	sw $t0, -324($fp)
	li $t0, 6
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
	li $t0, 0
	sw $t0, -344($fp)
	lw $t0, 8($fp)
	sw $t0, -348($fp)
	lw $t1, -348($fp)
	li $t2, 0
	bne $t1, $t2, label122
	j label121
label121:
	li $t0, 1
	sw $t0, -344($fp)
label122:
	li $t0, 0
	sw $t0, -352($fp)
	addi $t0, $fp, -52
	sw $t0, -356($fp)
	lw $t0, 16($fp)
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
	li $t0, 6191
	sw $t0, -376($fp)
	li $t0, 0
	sw $t0, -380($fp)
	lw $t0, 16($fp)
	sw $t0, -384($fp)
	li $t0, 39827
	sw $t0, -388($fp)
	lw $t1, -384($fp)
	lw $t2, -388($fp)
	bge $t1, $t2, label125
	j label126
label125:
	li $t0, 1
	sw $t0, -380($fp)
label126:
	li $t0, 0
	sw $t0, -392($fp)
	li $t0, 0
	sw $t0, -396($fp)
	li $t0, 58623
	sw $t0, -400($fp)
	lw $t1, -400($fp)
	li $t2, 0
	bne $t1, $t2, label130
	j label129
label129:
	li $t0, 1
	sw $t0, -396($fp)
label130:
	lw $t0, 16($fp)
	sw $t0, -404($fp)
	lw $t1, -396($fp)
	lw $t2, -404($fp)
	beq $t1, $t2, label127
	j label128
label127:
	li $t0, 1
	sw $t0, -392($fp)
label128:
	li $t0, 62235
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -412($fp)
	lw $t0, 8($fp)
	sw $t0, -416($fp)
	lw $t0, 16($fp)
	sw $t0, -420($fp)
	lw $t0, -416($fp)
	lw $t1, -420($fp)
	sub $t0, $t0, $t1
	sw $t0, -424($fp)
	lw $t0, 16($fp)
	sw $t0, -428($fp)
	lw $t0, -424($fp)
	lw $t1, -428($fp)
	add $t0, $t0, $t1
	sw $t0, -432($fp)
	li $t0, 0
	sw $t0, -436($fp)
	li $t0, 42493
	sw $t0, -440($fp)
	lw $t0, 16($fp)
	sw $t0, -444($fp)
	lw $t0, -440($fp)
	lw $t1, -444($fp)
	mul $t0, $t0, $t1
	sw $t0, -448($fp)
	lw $t1, -448($fp)
	li $t2, 0
	bne $t1, $t2, label133
	j label132
label133:
	li $t0, 36306
	sw $t0, -452($fp)
	lw $t1, -452($fp)
	li $t2, 0
	bne $t1, $t2, label131
	j label132
label131:
	li $t0, 1
	sw $t0, -436($fp)
label132:
	li $t0, 50243
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -460($fp)
	lw $t0, 16($fp)
	sw $t0, -464($fp)
	addi $sp, $sp, -4
	lw $t0, -412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -464($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -468($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -468($fp)
	sub $t0, $t0, $t1
	sw $t0, -472($fp)
	addi $sp, $sp, -4
	lw $t0, -372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -472($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -476($fp)
	addi $sp, $sp, 24
	lw $t1, -476($fp)
	li $t2, 0
	bne $t1, $t2, label124
	j label123
label123:
	li $t0, 1
	sw $t0, -352($fp)
label124:
	li $t0, 0
	lw $t1, -352($fp)
	sub $t0, $t0, $t1
	sw $t0, -480($fp)
	lw $t0, -344($fp)
	lw $t1, -480($fp)
	add $t0, $t0, $t1
	sw $t0, -484($fp)
	addi $t0, $fp, -24
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
	addi $t0, $fp, -24
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
	addi $t0, $fp, -24
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
	addi $t0, $fp, -24
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
	addi $t0, $fp, -24
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
	addi $t0, $fp, -52
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
	addi $t0, $fp, -52
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
	addi $t0, $fp, -52
	sw $t0, -628($fp)
	li $t0, 2
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
	addi $t0, $fp, -52
	sw $t0, -648($fp)
	li $t0, 3
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
	addi $t0, $fp, -52
	sw $t0, -668($fp)
	li $t0, 4
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
	addi $t0, $fp, -52
	sw $t0, -688($fp)
	li $t0, 5
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
	addi $t0, $fp, -52
	sw $t0, -708($fp)
	li $t0, 6
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
	li $t0, 0
	sw $t0, -728($fp)
	addi $t0, $fp, -24
	sw $t0, -732($fp)
	lw $t0, 12($fp)
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
	addi $t0, $fp, -24
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
	lw $t0, -748($fp)
	lw $t1, -768($fp)
	sub $t0, $t0, $t1
	sw $t0, -772($fp)
	li $t0, 0
	sw $t0, -776($fp)
	li $t0, 0
	sw $t0, -780($fp)
	li $t0, 2115
	sw $t0, -784($fp)
	li $t0, 0
	lw $t1, -784($fp)
	sub $t0, $t0, $t1
	sw $t0, -788($fp)
	lw $t0, 16($fp)
	sw $t0, -792($fp)
	lw $t1, -788($fp)
	lw $t2, -792($fp)
	bge $t1, $t2, label138
	j label139
label138:
	li $t0, 1
	sw $t0, -780($fp)
label139:
	lw $t0, 12($fp)
	sw $t0, -796($fp)
	li $t0, 44221
	sw $t0, -800($fp)
	lw $t0, -796($fp)
	lw $t1, -800($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -804($fp)
	lw $t1, -780($fp)
	lw $t2, -804($fp)
	ble $t1, $t2, label136
	j label137
label136:
	li $t0, 1
	sw $t0, -776($fp)
label137:
	lw $t1, -772($fp)
	lw $t2, -776($fp)
	bne $t1, $t2, label134
	j label135
label134:
	li $t0, 1
	sw $t0, -728($fp)
label135:
	lw $ra, -4($fp)
	lw $v0, -728($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -12
	li $t0, 0
	sw $t0, -8($fp)
	li $t0, 47673
	sw $t0, -12($fp)
	li $t0, 10573
	sw $t0, -16($fp)
	lw $t1, -12($fp)
	lw $t2, -16($fp)
	bne $t1, $t2, label140
	j label141
label140:
	li $t0, 1
	sw $t0, -8($fp)
label141:
	lw $ra, -4($fp)
	lw $v0, -8($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -844
	li $t0, 33504
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	li $t0, 34998
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	li $t0, 22815
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
	li $t0, 33506
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
	li $t0, 39258
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
	li $t0, 47007
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
	li $t0, 30702
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
	li $t0, 5520
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
	lw $t0, -36($fp)
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -48($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -208($fp)
	li $t0, 0
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
	li $t0, 1
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
	li $t0, 2
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
	li $t0, 3
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
	li $t0, 4
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
	addi $t0, $fp, -28
	sw $t0, -308($fp)
	li $t0, 5
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
	addi $t0, $fp, -28
	sw $t0, -328($fp)
	li $t0, 4
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
	lw $t0, -48($fp)
	sw $t0, -348($fp)
	lw $t0, -344($fp)
	lw $t1, -348($fp)
	mul $t0, $t0, $t1
	sw $t0, -352($fp)
	addi $t0, $fp, -28
	sw $t0, -356($fp)
	lw $t0, -36($fp)
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
	li $t0, 0
	lw $t1, -372($fp)
	sub $t0, $t0, $t1
	sw $t0, -376($fp)
	lw $t0, -352($fp)
	lw $t1, -376($fp)
	mul $t0, $t0, $t1
	sw $t0, -380($fp)
	li $t0, 0
	lw $t1, -380($fp)
	sub $t0, $t0, $t1
	sw $t0, -384($fp)
	lw $ra, -4($fp)
	lw $v0, -384($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -388($fp)
	lw $t0, -36($fp)
	sw $t0, -392($fp)
	li $t0, 0
	lw $t1, -392($fp)
	sub $t0, $t0, $t1
	sw $t0, -396($fp)
	lw $t1, -396($fp)
	li $t2, 0
	bne $t1, $t2, label142
	j label143
label142:
	li $t0, 1
	sw $t0, -388($fp)
label143:
	li $t0, 0
	lw $t1, -388($fp)
	sub $t0, $t0, $t1
	sw $t0, -400($fp)
	li $t0, 0
	lw $t1, -400($fp)
	sub $t0, $t0, $t1
	sw $t0, -404($fp)
	li $t0, 0
	sw $t0, -408($fp)
	li $t0, 0
	sw $t0, -412($fp)
	li $t0, 0
	sw $t0, -416($fp)
	lw $t0, -48($fp)
	sw $t0, -420($fp)
	lw $t1, -420($fp)
	li $t2, 0
	bne $t1, $t2, label149
	j label148
label148:
	li $t0, 1
	sw $t0, -416($fp)
label149:
	lw $t0, 4($fp)
	sw $t0, -424($fp)
	lw $t0, -416($fp)
	lw $t1, -424($fp)
	add $t0, $t0, $t1
	sw $t0, -428($fp)
	addi $t0, $fp, -28
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
	lw $t0, -428($fp)
	lw $t1, -448($fp)
	add $t0, $t0, $t1
	sw $t0, -452($fp)
	lw $t0, -48($fp)
	sw $t0, -456($fp)
	lw $t1, -452($fp)
	lw $t2, -456($fp)
	bne $t1, $t2, label146
	j label147
label146:
	li $t0, 1
	sw $t0, -412($fp)
label147:
	li $t0, 0
	sw $t0, -460($fp)
	lw $t0, 4($fp)
	sw $t0, -464($fp)
	li $t0, 0
	lw $t1, -464($fp)
	sub $t0, $t0, $t1
	sw $t0, -468($fp)
	li $t0, 0
	sw $t0, -472($fp)
	lw $t0, -48($fp)
	sw $t0, -476($fp)
	lw $t1, -476($fp)
	li $t2, 0
	bne $t1, $t2, label153
	j label152
label152:
	li $t0, 1
	sw $t0, -472($fp)
label153:
	lw $t1, -468($fp)
	lw $t2, -472($fp)
	bge $t1, $t2, label150
	j label151
label150:
	li $t0, 1
	sw $t0, -460($fp)
label151:
	lw $t1, -412($fp)
	lw $t2, -460($fp)
	bne $t1, $t2, label144
	j label145
label144:
	li $t0, 1
	sw $t0, -408($fp)
label145:
	li $t0, 46186
	sw $t0, -480($fp)
	li $t0, 0
	sw $t0, -484($fp)
	li $t0, 26816
	sw $t0, -488($fp)
	li $t0, 2719
	sw $t0, -492($fp)
	lw $t0, -488($fp)
	lw $t1, -492($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -496($fp)
	li $t0, 9465
	sw $t0, -500($fp)
	lw $t1, -496($fp)
	lw $t2, -500($fp)
	ble $t1, $t2, label157
	j label159
label159:
	li $t0, 5618
	sw $t0, -504($fp)
	li $t0, 46448
	sw $t0, -508($fp)
	lw $t0, -504($fp)
	lw $t1, -508($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -512($fp)
	lw $t1, -512($fp)
	li $t2, 0
	bne $t1, $t2, label157
	j label158
label157:
	li $t0, 1
	sw $t0, -484($fp)
label158:
	lw $t0, -484($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -516($fp)
	lw $t1, -516($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label155
label154:
	li $t0, 0
	sw $t0, -520($fp)
	li $t0, 59708
	sw $t0, -524($fp)
	lw $t1, -524($fp)
	li $t2, 0
	bne $t1, $t2, label161
	j label160
label160:
	li $t0, 1
	sw $t0, -520($fp)
label161:
	li $t0, 0
	lw $t1, -520($fp)
	sub $t0, $t0, $t1
	sw $t0, -528($fp)
label155:
	li $t0, 48112
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	li $t0, 17218
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	li $t0, 56407
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	li $t0, 41199
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	lw $t0, -536($fp)
	sw $t0, -580($fp)
	lw $t0, -548($fp)
	sw $t0, -584($fp)
	li $t0, 0
	lw $t1, -584($fp)
	sub $t0, $t0, $t1
	sw $t0, -588($fp)
	lw $t0, -580($fp)
	lw $t1, -588($fp)
	mul $t0, $t0, $t1
	sw $t0, -592($fp)
	li $t0, 57046
	sw $t0, -596($fp)
	li $t0, 0
	sw $t0, -600($fp)
	li $t0, 62598
	sw $t0, -604($fp)
	lw $t1, -604($fp)
	li $t2, 0
	bne $t1, $t2, label163
	j label162
label162:
	li $t0, 1
	sw $t0, -600($fp)
label163:
	lw $t0, -48($fp)
	sw $t0, -608($fp)
	lw $t0, -600($fp)
	lw $t1, -608($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -612($fp)
	li $t0, 15691
	sw $t0, -616($fp)
	lw $t0, -612($fp)
	lw $t1, -616($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -620($fp)
	lw $t0, -596($fp)
	lw $t1, -620($fp)
	add $t0, $t0, $t1
	sw $t0, -624($fp)
	li $t0, 0
	sw $t0, -628($fp)
	lw $t0, -572($fp)
	sw $t0, -632($fp)
	lw $t1, -632($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label165
label166:
	lw $t0, -48($fp)
	sw $t0, -636($fp)
	lw $t1, -636($fp)
	li $t2, 0
	bne $t1, $t2, label164
	j label165
label164:
	li $t0, 1
	sw $t0, -628($fp)
label165:
	li $t0, 0
	sw $t0, -640($fp)
	li $t0, 63364
	sw $t0, -644($fp)
	lw $t1, -644($fp)
	li $t2, 0
	bne $t1, $t2, label170
	j label169
label170:
	lw $t0, -560($fp)
	sw $t0, -648($fp)
	lw $t1, -648($fp)
	li $t2, 0
	bne $t1, $t2, label167
	j label169
label169:
	li $t0, 9750
	sw $t0, -652($fp)
	lw $t1, -652($fp)
	li $t2, 0
	bne $t1, $t2, label167
	j label168
label167:
	li $t0, 1
	sw $t0, -640($fp)
label168:
	li $t0, 56921
	sw $t0, -656($fp)
	lw $t0, -48($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -664($fp)
	li $t0, 64713
	sw $t0, -668($fp)
	lw $t0, -536($fp)
	sw $t0, -672($fp)
	lw $t0, -668($fp)
	lw $t1, -672($fp)
	sub $t0, $t0, $t1
	sw $t0, -676($fp)
	addi $sp, $sp, -4
	lw $t0, -628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -676($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -680($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -680($fp)
	sub $t0, $t0, $t1
	sw $t0, -684($fp)
	lw $t0, -36($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -48($fp)
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -696($fp)
	li $t0, 0
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
	addi $t0, $fp, -28
	sw $t0, -716($fp)
	li $t0, 1
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
	addi $t0, $fp, -28
	sw $t0, -736($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -756($fp)
	li $t0, 3
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
	addi $t0, $fp, -28
	sw $t0, -776($fp)
	li $t0, 4
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
	addi $t0, $fp, -28
	sw $t0, -796($fp)
	li $t0, 5
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
	li $t0, 0
	sw $t0, -816($fp)
	li $t0, 0
	sw $t0, -820($fp)
	li $t0, 24889
	sw $t0, -824($fp)
	lw $t1, -824($fp)
	li $t2, 0
	bne $t1, $t2, label175
	j label174
label174:
	li $t0, 1
	sw $t0, -820($fp)
label175:
	li $t0, 32826
	sw $t0, -828($fp)
	lw $t0, -820($fp)
	lw $t1, -828($fp)
	mul $t0, $t0, $t1
	sw $t0, -832($fp)
	lw $t0, -36($fp)
	sw $t0, -836($fp)
	lw $t1, -832($fp)
	lw $t2, -836($fp)
	bne $t1, $t2, label173
	j label172
label173:
	li $t0, 32566
	sw $t0, -840($fp)
	li $t0, 58396
	sw $t0, -844($fp)
	lw $t0, -840($fp)
	lw $t1, -844($fp)
	mul $t0, $t0, $t1
	sw $t0, -848($fp)
	lw $t1, -848($fp)
	li $t2, 0
	bne $t1, $t2, label171
	j label172
label171:
	li $t0, 1
	sw $t0, -816($fp)
label172:
	lw $ra, -4($fp)
	lw $v0, -816($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -596
	li $t0, 6548
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	li $t0, 14037
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
	li $t0, 23562
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
	li $t0, 12069
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
	li $t0, 12946
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
	li $t0, 5774
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
	li $t0, 33279
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
	li $t0, 55636
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
	li $t0, 51960
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	li $t0, 60095
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	lw $t0, 4($fp)
	sw $t0, -240($fp)
	lw $t0, 4($fp)
	sw $t0, -244($fp)
	lw $t0, -240($fp)
	lw $t1, -244($fp)
	mul $t0, $t0, $t1
	sw $t0, -248($fp)
	li $t0, 0
	lw $t1, -248($fp)
	sub $t0, $t0, $t1
	sw $t0, -252($fp)
	lw $t0, 12($fp)
	sw $t0, -256($fp)
	lw $t1, -252($fp)
	lw $t2, -256($fp)
	ble $t1, $t2, label176
	j label177
label176:
	li $t0, 0
	sw $t0, -260($fp)
	li $t0, 0
	sw $t0, -264($fp)
	lw $t0, -40($fp)
	sw $t0, -268($fp)
	lw $t1, -268($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label182
label182:
	li $t0, 1
	sw $t0, -264($fp)
label183:
	lw $t0, 4($fp)
	sw $t0, -272($fp)
	li $t0, 0
	lw $t1, -272($fp)
	sub $t0, $t0, $t1
	sw $t0, -276($fp)
	lw $t0, -264($fp)
	lw $t1, -276($fp)
	sub $t0, $t0, $t1
	sw $t0, -280($fp)
	addi $t0, $fp, -32
	sw $t0, -284($fp)
	lw $t0, -40($fp)
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
	lw $t1, -280($fp)
	lw $t2, -300($fp)
	beq $t1, $t2, label179
	j label181
label181:
	li $t0, 0
	sw $t0, -304($fp)
	li $t0, 58355
	sw $t0, -308($fp)
	lw $t1, -308($fp)
	li $t2, 0
	bne $t1, $t2, label186
	j label185
label185:
	li $t0, 1
	sw $t0, -304($fp)
label186:
	lw $t0, 8($fp)
	sw $t0, -312($fp)
	lw $t0, -304($fp)
	lw $t1, -312($fp)
	sub $t0, $t0, $t1
	sw $t0, -316($fp)
	lw $t1, -316($fp)
	li $t2, 0
	bne $t1, $t2, label184
	j label180
label184:
	li $t0, 61425
	sw $t0, -320($fp)
	li $t0, 177
	sw $t0, -324($fp)
	lw $t1, -320($fp)
	lw $t2, -324($fp)
	bne $t1, $t2, label179
	j label180
label179:
	li $t0, 1
	sw $t0, -260($fp)
label180:
	j label178
label177:
	addi $t0, $fp, -32
	sw $t0, -328($fp)
	li $t0, 0
	sw $t0, -332($fp)
	lw $t0, -220($fp)
	sw $t0, -336($fp)
	lw $t1, -336($fp)
	li $t2, 0
	bne $t1, $t2, label187
	j label189
label189:
	lw $t0, 4($fp)
	sw $t0, -340($fp)
	lw $t1, -340($fp)
	li $t2, 0
	bne $t1, $t2, label190
	j label188
label190:
	lw $t0, 4($fp)
	sw $t0, -344($fp)
	lw $t1, -344($fp)
	li $t2, 0
	bne $t1, $t2, label187
	j label188
label187:
	li $t0, 1
	sw $t0, -332($fp)
label188:
	li $t0, 4
	lw $t1, -332($fp)
	mul $t0, $t0, $t1
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	lw $t1, -328($fp)
	add $t0, $t0, $t1
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	lw $t1, 0($t0)
	sw $t1, -356($fp)
label178:
	li $t0, 0
	sw $t0, -360($fp)
	li $t0, 39267
	sw $t0, -364($fp)
	lw $t1, -364($fp)
	li $t2, 0
	bne $t1, $t2, label196
	j label195
label196:
	lw $t0, -232($fp)
	sw $t0, -368($fp)
	lw $t1, -368($fp)
	li $t2, 0
	bne $t1, $t2, label194
	j label195
label194:
	li $t0, 1
	sw $t0, -360($fp)
label195:
	lw $t0, -360($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -376($fp)
	lw $t1, -376($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label192
label191:
	li $t0, 0
	sw $t0, -380($fp)
	li $t0, 55597
	sw $t0, -384($fp)
	li $t0, 0
	lw $t1, -384($fp)
	sub $t0, $t0, $t1
	sw $t0, -388($fp)
	li $t0, 48289
	sw $t0, -392($fp)
	li $t0, 0
	lw $t1, -392($fp)
	sub $t0, $t0, $t1
	sw $t0, -396($fp)
	li $t0, 0
	lw $t1, -396($fp)
	sub $t0, $t0, $t1
	sw $t0, -400($fp)
	lw $t1, -388($fp)
	lw $t2, -400($fp)
	bge $t1, $t2, label197
	j label198
label197:
	li $t0, 1
	sw $t0, -380($fp)
label198:
label192:
	lw $t0, -40($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -408($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -428($fp)
	li $t0, 1
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
	addi $t0, $fp, -32
	sw $t0, -448($fp)
	li $t0, 2
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
	addi $t0, $fp, -32
	sw $t0, -468($fp)
	li $t0, 3
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
	addi $t0, $fp, -32
	sw $t0, -488($fp)
	li $t0, 4
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
	addi $t0, $fp, -32
	sw $t0, -508($fp)
	li $t0, 5
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
	addi $t0, $fp, -32
	sw $t0, -528($fp)
	li $t0, 6
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
	lw $t0, -220($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -232($fp)
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -556($fp)
	addi $t0, $fp, -32
	sw $t0, -560($fp)
	li $t0, 0
	sw $t0, -564($fp)
	li $t0, 0
	sw $t0, -568($fp)
	lw $t0, 12($fp)
	sw $t0, -572($fp)
	lw $t0, 8($fp)
	sw $t0, -576($fp)
	lw $t0, -572($fp)
	lw $t1, -576($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -580($fp)
	li $t0, 56486
	sw $t0, -584($fp)
	lw $t1, -580($fp)
	lw $t2, -584($fp)
	beq $t1, $t2, label203
	j label204
label203:
	li $t0, 1
	sw $t0, -568($fp)
label204:
	addi $sp, $sp, -4
	lw $t0, -568($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -588($fp)
	addi $sp, $sp, 8
	lw $t1, -588($fp)
	li $t2, 0
	bne $t1, $t2, label202
	j label201
label201:
	li $t0, 1
	sw $t0, -564($fp)
label202:
	li $t0, 4
	lw $t1, -564($fp)
	mul $t0, $t0, $t1
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	lw $t1, -560($fp)
	add $t0, $t0, $t1
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	lw $t1, 0($t0)
	sw $t1, -600($fp)
	lw $t1, -600($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label199
label199:
	li $t0, 1
	sw $t0, -556($fp)
label200:
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
	addi $sp, $sp, -356
	li $t0, 46469
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, -20($fp)
	li $t0, 23953
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, -32($fp)
	li $t0, 47996
	sw $t0, -36($fp)
	addi $t0, $fp, -8
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
	li $t0, 0
	sw $t0, -60($fp)
	li $t0, 43531
	sw $t0, -64($fp)
	lw $t0, 8($fp)
	sw $t0, -68($fp)
	li $t0, 0
	lw $t1, -68($fp)
	sub $t0, $t0, $t1
	sw $t0, -72($fp)
	li $t0, 0
	sw $t0, -76($fp)
	li $t0, 36653
	sw $t0, -80($fp)
	lw $t1, -80($fp)
	li $t2, 0
	bne $t1, $t2, label208
	j label207
label207:
	li $t0, 1
	sw $t0, -76($fp)
label208:
	lw $t0, -72($fp)
	lw $t1, -76($fp)
	sub $t0, $t0, $t1
	sw $t0, -84($fp)
	lw $t1, -64($fp)
	lw $t2, -84($fp)
	bgt $t1, $t2, label205
	j label206
label205:
	li $t0, 1
	sw $t0, -60($fp)
label206:
	addi $t0, $fp, -8
	sw $t0, -88($fp)
	li $t0, 0
	sw $t0, -92($fp)
	li $t0, 63686
	sw $t0, -96($fp)
	lw $t0, -16($fp)
	sw $t0, -100($fp)
	lw $t1, -96($fp)
	lw $t2, -100($fp)
	bne $t1, $t2, label209
	j label210
label209:
	li $t0, 1
	sw $t0, -92($fp)
label210:
	li $t0, 4
	lw $t1, -92($fp)
	mul $t0, $t0, $t1
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	lw $t1, -88($fp)
	add $t0, $t0, $t1
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	lw $t1, 0($t0)
	sw $t1, -112($fp)
	lw $t0, -16($fp)
	sw $t0, -116($fp)
	lw $t0, -112($fp)
	lw $t1, -116($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -120($fp)
	li $t0, 0
	sw $t0, -124($fp)
	lw $t0, -28($fp)
	sw $t0, -128($fp)
	lw $t1, -128($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label212
label213:
	lw $t0, 8($fp)
	sw $t0, -132($fp)
	lw $t1, -132($fp)
	li $t2, 0
	bne $t1, $t2, label211
	j label212
label211:
	li $t0, 1
	sw $t0, -124($fp)
label212:
	addi $sp, $sp, -4
	lw $t0, -124($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -136($fp)
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	lw $t1, -136($fp)
	add $t0, $t0, $t1
	sw $t0, -140($fp)
	li $t0, 0
	sw $t0, -144($fp)
	li $t0, 0
	sw $t0, -148($fp)
	addi $t0, $fp, -8
	sw $t0, -152($fp)
	li $t0, 0
	sw $t0, -156($fp)
	lw $t0, 4($fp)
	sw $t0, -160($fp)
	li $t0, 42709
	sw $t0, -164($fp)
	lw $t1, -160($fp)
	lw $t2, -164($fp)
	bne $t1, $t2, label218
	j label219
label218:
	li $t0, 1
	sw $t0, -156($fp)
label219:
	li $t0, 4
	lw $t1, -156($fp)
	mul $t0, $t0, $t1
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	lw $t1, -152($fp)
	add $t0, $t0, $t1
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	lw $t1, 0($t0)
	sw $t1, -176($fp)
	addi $t0, $fp, -8
	sw $t0, -180($fp)
	li $t0, 0
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
	li $t0, 52459
	sw $t0, -200($fp)
	lw $t0, -196($fp)
	lw $t1, -200($fp)
	add $t0, $t0, $t1
	sw $t0, -204($fp)
	lw $t1, -176($fp)
	lw $t2, -204($fp)
	beq $t1, $t2, label216
	j label217
label216:
	li $t0, 1
	sw $t0, -148($fp)
label217:
	li $t0, 0
	sw $t0, -208($fp)
	li $t0, 52927
	sw $t0, -212($fp)
	lw $t1, -212($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label221
label220:
	li $t0, 1
	sw $t0, -208($fp)
label221:
	li $t0, 28804
	sw $t0, -216($fp)
	li $t0, 0
	lw $t1, -216($fp)
	sub $t0, $t0, $t1
	sw $t0, -220($fp)
	lw $t0, -208($fp)
	lw $t1, -220($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -224($fp)
	lw $t1, -148($fp)
	lw $t2, -224($fp)
	beq $t1, $t2, label214
	j label215
label214:
	li $t0, 1
	sw $t0, -144($fp)
label215:
	lw $t0, -16($fp)
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -28($fp)
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -236($fp)
	li $t0, 0
	sw $t0, -240($fp)
	li $t0, 4
	lw $t1, -240($fp)
	mul $t0, $t0, $t1
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	lw $t1, -236($fp)
	add $t0, $t0, $t1
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	lw $t1, 0($t0)
	sw $t1, -252($fp)
	lw $t0, -252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -256($fp)
	li $t0, 0
	sw $t0, -260($fp)
	li $t0, 19489
	sw $t0, -264($fp)
	li $t0, 45787
	sw $t0, -268($fp)
	lw $t0, -264($fp)
	lw $t1, -268($fp)
	add $t0, $t0, $t1
	sw $t0, -272($fp)
	lw $t0, 8($fp)
	sw $t0, -276($fp)
	lw $t1, -272($fp)
	lw $t2, -276($fp)
	ble $t1, $t2, label224
	j label225
label224:
	li $t0, 1
	sw $t0, -260($fp)
label225:
	addi $sp, $sp, -4
	lw $t0, -260($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -280($fp)
	addi $sp, $sp, 8
	li $t0, 35353
	sw $t0, -284($fp)
	lw $t0, -280($fp)
	lw $t1, -284($fp)
	mul $t0, $t0, $t1
	sw $t0, -288($fp)
	li $t0, 0
	lw $t1, -288($fp)
	sub $t0, $t0, $t1
	sw $t0, -292($fp)
	li $t0, 0
	sw $t0, -296($fp)
	li $t0, 0
	sw $t0, -300($fp)
	addi $t0, $fp, -8
	sw $t0, -304($fp)
	lw $t0, 4($fp)
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
	lw $t1, -320($fp)
	li $t2, 0
	bne $t1, $t2, label229
	j label228
label228:
	li $t0, 1
	sw $t0, -300($fp)
label229:
	li $t0, 0
	sw $t0, -324($fp)
	lw $t0, 8($fp)
	sw $t0, -328($fp)
	li $t0, 0
	lw $t1, -328($fp)
	sub $t0, $t0, $t1
	sw $t0, -332($fp)
	li $t0, 3813
	sw $t0, -336($fp)
	lw $t1, -332($fp)
	lw $t2, -336($fp)
	beq $t1, $t2, label230
	j label231
label230:
	li $t0, 1
	sw $t0, -324($fp)
label231:
	li $t0, 0
	sw $t0, -340($fp)
	li $t0, 33527
	sw $t0, -344($fp)
	lw $t1, -344($fp)
	li $t2, 0
	bne $t1, $t2, label233
	j label232
label232:
	li $t0, 1
	sw $t0, -340($fp)
label233:
	addi $sp, $sp, -4
	lw $t0, -300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -340($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -348($fp)
	addi $sp, $sp, 16
	li $t0, 47422
	sw $t0, -352($fp)
	li $t0, 1
	sw $t0, -356($fp)
	lw $t0, -352($fp)
	lw $t1, -356($fp)
	mul $t0, $t0, $t1
	sw $t0, -360($fp)
	lw $t1, -348($fp)
	lw $t2, -360($fp)
	blt $t1, $t2, label226
	j label227
label226:
	li $t0, 1
	sw $t0, -296($fp)
label227:
	lw $t1, -292($fp)
	lw $t2, -296($fp)
	bne $t1, $t2, label222
	j label223
label222:
	li $t0, 1
	sw $t0, -256($fp)
label223:
	lw $ra, -4($fp)
	lw $v0, -256($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2020
	li $t0, 9588
	sw $t0, -100($fp)
	addi $t0, $fp, -12
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
	li $t0, 15165
	sw $t0, -124($fp)
	addi $t0, $fp, -12
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
	li $t0, 36573
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	li $t0, 61548
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	li $t0, 9724
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	li $t0, 29393
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	li $t0, 57438
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	li $t0, 9901
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	li $t0, 3124
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -228($fp)
	li $t0, 47499
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	li $t0, 58191
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	li $t0, 59610
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	li $t0, 28432
	sw $t0, -268($fp)
	addi $t0, $fp, -48
	sw $t0, -272($fp)
	li $t0, 0
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
	li $t0, 16608
	sw $t0, -292($fp)
	addi $t0, $fp, -48
	sw $t0, -296($fp)
	li $t0, 1
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
	li $t0, 42070
	sw $t0, -316($fp)
	addi $t0, $fp, -48
	sw $t0, -320($fp)
	li $t0, 2
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
	li $t0, 6428
	sw $t0, -340($fp)
	addi $t0, $fp, -48
	sw $t0, -344($fp)
	li $t0, 3
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
	li $t0, 53261
	sw $t0, -364($fp)
	addi $t0, $fp, -48
	sw $t0, -368($fp)
	li $t0, 4
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
	li $t0, 40221
	sw $t0, -388($fp)
	addi $t0, $fp, -48
	sw $t0, -392($fp)
	li $t0, 5
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
	li $t0, 49137
	sw $t0, -412($fp)
	addi $t0, $fp, -48
	sw $t0, -416($fp)
	li $t0, 6
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
	li $t0, 15763
	sw $t0, -436($fp)
	addi $t0, $fp, -48
	sw $t0, -440($fp)
	li $t0, 7
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
	li $t0, 36199
	sw $t0, -460($fp)
	addi $t0, $fp, -48
	sw $t0, -464($fp)
	li $t0, 8
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
	li $t0, 36060
	sw $t0, -484($fp)
	addi $t0, $fp, -72
	sw $t0, -488($fp)
	li $t0, 0
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
	li $t0, 3154
	sw $t0, -508($fp)
	addi $t0, $fp, -72
	sw $t0, -512($fp)
	li $t0, 1
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
	li $t0, 65004
	sw $t0, -532($fp)
	addi $t0, $fp, -72
	sw $t0, -536($fp)
	li $t0, 2
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
	li $t0, 55550
	sw $t0, -556($fp)
	addi $t0, $fp, -72
	sw $t0, -560($fp)
	li $t0, 3
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
	li $t0, 48942
	sw $t0, -580($fp)
	addi $t0, $fp, -72
	sw $t0, -584($fp)
	li $t0, 4
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
	li $t0, 34821
	sw $t0, -604($fp)
	addi $t0, $fp, -72
	sw $t0, -608($fp)
	li $t0, 5
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
	li $t0, 23541
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	li $t0, 52755
	sw $t0, -640($fp)
	addi $t0, $fp, -96
	sw $t0, -644($fp)
	li $t0, 0
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
	li $t0, 16707
	sw $t0, -664($fp)
	addi $t0, $fp, -96
	sw $t0, -668($fp)
	li $t0, 1
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
	li $t0, 4478
	sw $t0, -688($fp)
	addi $t0, $fp, -96
	sw $t0, -692($fp)
	li $t0, 2
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
	li $t0, 62343
	sw $t0, -712($fp)
	addi $t0, $fp, -96
	sw $t0, -716($fp)
	li $t0, 3
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
	li $t0, 31872
	sw $t0, -736($fp)
	addi $t0, $fp, -96
	sw $t0, -740($fp)
	li $t0, 4
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
	li $t0, 41052
	sw $t0, -760($fp)
	addi $t0, $fp, -96
	sw $t0, -764($fp)
	li $t0, 5
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
label234:
	li $t0, 0
	sw $t0, -784($fp)
	lw $t0, -212($fp)
	sw $t0, -788($fp)
	li $t0, 0
	lw $t1, -788($fp)
	sub $t0, $t0, $t1
	sw $t0, -792($fp)
	lw $t1, -792($fp)
	li $t2, 0
	bne $t1, $t2, label240
	j label238
label240:
	lw $t0, -236($fp)
	sw $t0, -796($fp)
	lw $t1, -796($fp)
	li $t2, 0
	bne $t1, $t2, label239
	j label238
label239:
	lw $t0, -248($fp)
	sw $t0, -800($fp)
	lw $t0, -260($fp)
	sw $t0, -804($fp)
	lw $t0, -800($fp)
	lw $t1, -804($fp)
	add $t0, $t0, $t1
	sw $t0, -808($fp)
	lw $t1, -808($fp)
	li $t2, 0
	bne $t1, $t2, label237
	j label238
label237:
	li $t0, 1
	sw $t0, -784($fp)
label238:
	lw $t0, -784($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -812($fp)
	lw $t1, -812($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label236
label235:
	li $t0, 58356
	sw $t0, -816($fp)
	li $t0, 0
	sw $t0, -820($fp)
	addi $t0, $fp, -48
	sw $t0, -824($fp)
	lw $t0, -236($fp)
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
	lw $t1, -840($fp)
	li $t2, 0
	bne $t1, $t2, label245
	j label244
label244:
	li $t0, 1
	sw $t0, -820($fp)
label245:
	lw $t0, -236($fp)
	sw $t0, -844($fp)
	lw $t0, -200($fp)
	sw $t0, -848($fp)
	lw $t0, -844($fp)
	lw $t1, -848($fp)
	mul $t0, $t0, $t1
	sw $t0, -852($fp)
	lw $t0, -820($fp)
	lw $t1, -852($fp)
	sub $t0, $t0, $t1
	sw $t0, -856($fp)
	lw $t1, -816($fp)
	lw $t2, -856($fp)
	ble $t1, $t2, label241
	j label242
label241:
	addi $t0, $fp, -72
	sw $t0, -860($fp)
	li $t0, 2
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
	li $t0, 51497
	sw $t0, -880($fp)
	lw $t0, -876($fp)
	lw $t1, -880($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -884($fp)
	li $t0, 0
	lw $t1, -884($fp)
	sub $t0, $t0, $t1
	sw $t0, -888($fp)
	lw $t1, -888($fp)
	li $t2, 0
	bne $t1, $t2, label246
	j label247
label246:
label249:
	li $t0, 0
	sw $t0, -892($fp)
	lw $t0, -236($fp)
	sw $t0, -896($fp)
	lw $t1, -896($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label253
label252:
	li $t0, 1
	sw $t0, -892($fp)
label253:
	li $t0, 0
	lw $t1, -892($fp)
	sub $t0, $t0, $t1
	sw $t0, -900($fp)
	li $t0, 0
	lw $t1, -900($fp)
	sub $t0, $t0, $t1
	sw $t0, -904($fp)
	lw $t1, -904($fp)
	li $t2, 0
	bne $t1, $t2, label251
	j label250
label250:
	li $t0, 8033
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	sw $t0, -916($fp)
	li $t0, 0
	sw $t0, -920($fp)
	li $t0, 0
	sw $t0, -924($fp)
	li $t0, 0
	sw $t0, -928($fp)
	lw $t0, -176($fp)
	sw $t0, -932($fp)
	lw $t1, -932($fp)
	li $t2, 0
	bne $t1, $t2, label260
	j label259
label259:
	li $t0, 1
	sw $t0, -928($fp)
label260:
	li $t0, 32221
	sw $t0, -936($fp)
	lw $t1, -928($fp)
	lw $t2, -936($fp)
	bge $t1, $t2, label257
	j label258
label257:
	li $t0, 1
	sw $t0, -924($fp)
label258:
	lw $t0, -200($fp)
	sw $t0, -940($fp)
	lw $t1, -924($fp)
	lw $t2, -940($fp)
	bge $t1, $t2, label254
	j label256
label256:
	li $t0, 44152
	sw $t0, -944($fp)
	li $t0, 2108
	sw $t0, -948($fp)
	lw $t0, -944($fp)
	lw $t1, -948($fp)
	sub $t0, $t0, $t1
	sw $t0, -952($fp)
	lw $t1, -952($fp)
	li $t2, 0
	bne $t1, $t2, label262
	j label255
label262:
	lw $t0, -212($fp)
	sw $t0, -956($fp)
	lw $t1, -956($fp)
	li $t2, 0
	bne $t1, $t2, label261
	j label255
label261:
	lw $t0, -224($fp)
	sw $t0, -960($fp)
	lw $t0, -912($fp)
	sw $t0, -964($fp)
	lw $t1, -960($fp)
	lw $t2, -964($fp)
	blt $t1, $t2, label254
	j label255
label254:
	li $t0, 1
	sw $t0, -920($fp)
label255:
	j label249
label251:
	j label248
label247:
	addi $t0, $fp, -72
	sw $t0, -968($fp)
	li $t0, 0
	sw $t0, -972($fp)
	li $t0, 60654
	sw $t0, -976($fp)
	lw $t0, -164($fp)
	sw $t0, -980($fp)
	lw $t1, -976($fp)
	lw $t2, -980($fp)
	bge $t1, $t2, label263
	j label264
label263:
	li $t0, 1
	sw $t0, -972($fp)
label264:
	lw $t0, -972($fp)
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -984($fp)
	li $t0, 4
	lw $t1, -984($fp)
	mul $t0, $t0, $t1
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	lw $t1, -968($fp)
	add $t0, $t0, $t1
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	lw $t1, 0($t0)
	sw $t1, -996($fp)
label248:
	j label243
label242:
	li $t0, 0
	sw $t0, -1000($fp)
	li $t0, 60760
	sw $t0, -1004($fp)
	lw $t0, -188($fp)
	sw $t0, -1008($fp)
	lw $t0, -1004($fp)
	lw $t1, -1008($fp)
	sub $t0, $t0, $t1
	sw $t0, -1012($fp)
	li $t0, 44178
	sw $t0, -1016($fp)
	lw $t1, -1012($fp)
	lw $t2, -1016($fp)
	bne $t1, $t2, label265
	j label266
label265:
	li $t0, 1
	sw $t0, -1000($fp)
label266:
	addi $t0, $fp, -12
	sw $t0, -1020($fp)
	addi $t0, $fp, -12
	sw $t0, -1024($fp)
	lw $t0, -236($fp)
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
	addi $t0, $fp, -12
	sw $t0, -1044($fp)
	li $t0, 1
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
	lw $t0, -1040($fp)
	lw $t1, -1060($fp)
	add $t0, $t0, $t1
	sw $t0, -1064($fp)
	li $t0, 4
	lw $t1, -1064($fp)
	mul $t0, $t0, $t1
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	lw $t1, -1020($fp)
	add $t0, $t0, $t1
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	lw $t1, 0($t0)
	sw $t1, -1076($fp)
label243:
	j label234
label236:
label267:
	li $t0, 0
	sw $t0, -1080($fp)
	li $t0, 18863
	sw $t0, -1084($fp)
	lw $t1, -1084($fp)
	li $t2, 0
	bne $t1, $t2, label271
	j label270
label270:
	li $t0, 1
	sw $t0, -1080($fp)
label271:
	lw $t0, -1080($fp)
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -1088($fp)
	lw $t1, -1088($fp)
	li $t2, 0
	bne $t1, $t2, label268
	j label269
label268:
	li $t0, 50683
	sw $t0, -1092($fp)
	li $t0, 0
	sw $t0, -1096($fp)
	addi $t0, $fp, -12
	sw $t0, -1100($fp)
	lw $t0, -224($fp)
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
	lw $t1, -1116($fp)
	li $t2, 0
	bne $t1, $t2, label273
	j label272
label272:
	li $t0, 1
	sw $t0, -1096($fp)
label273:
	li $t0, 0
	lw $t1, -1096($fp)
	sub $t0, $t0, $t1
	sw $t0, -1120($fp)
	lw $t0, -1092($fp)
	lw $t1, -1120($fp)
	mul $t0, $t0, $t1
	sw $t0, -1124($fp)
	j label267
label269:
	li $t0, 0
	sw $t0, -1128($fp)
	li $t0, 0
	sw $t0, -1132($fp)
	lw $t0, -176($fp)
	sw $t0, -1136($fp)
	li $t0, 0
	lw $t1, -1136($fp)
	sub $t0, $t0, $t1
	sw $t0, -1140($fp)
	li $t0, 0
	sw $t0, -1144($fp)
	li $t0, 64248
	sw $t0, -1148($fp)
	lw $t0, 4($fp)
	sw $t0, -1152($fp)
	lw $t1, -1148($fp)
	lw $t2, -1152($fp)
	blt $t1, $t2, label279
	j label280
label279:
	li $t0, 1
	sw $t0, -1144($fp)
label280:
	lw $t1, -1140($fp)
	lw $t2, -1144($fp)
	beq $t1, $t2, label277
	j label278
label277:
	li $t0, 1
	sw $t0, -1132($fp)
label278:
	li $t0, 21207
	sw $t0, -1156($fp)
	li $t0, 0
	sw $t0, -1160($fp)
	lw $t0, -176($fp)
	sw $t0, -1164($fp)
	li $t0, 55063
	sw $t0, -1168($fp)
	lw $t0, -1164($fp)
	lw $t1, -1168($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1172($fp)
	lw $t0, -200($fp)
	sw $t0, -1176($fp)
	lw $t1, -1172($fp)
	lw $t2, -1176($fp)
	bne $t1, $t2, label281
	j label282
label281:
	li $t0, 1
	sw $t0, -1160($fp)
label282:
	addi $sp, $sp, -4
	lw $t0, -1156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1160($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1180($fp)
	addi $sp, $sp, 12
	li $t0, 1867
	sw $t0, -1184($fp)
	lw $t0, -1180($fp)
	lw $t1, -1184($fp)
	sub $t0, $t0, $t1
	sw $t0, -1188($fp)
	lw $t1, -1132($fp)
	lw $t2, -1188($fp)
	bne $t1, $t2, label276
	j label275
label276:
	li $t0, 54531
	sw $t0, -1192($fp)
	li $t0, 0
	sw $t0, -1196($fp)
	li $t0, 11221
	sw $t0, -1200($fp)
	lw $t1, -1200($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label283
label283:
	li $t0, 1
	sw $t0, -1196($fp)
label284:
	lw $t0, -1192($fp)
	lw $t1, -1196($fp)
	mul $t0, $t0, $t1
	sw $t0, -1204($fp)
	lw $t1, -1204($fp)
	li $t2, 0
	bne $t1, $t2, label274
	j label275
label274:
	li $t0, 1
	sw $t0, -1128($fp)
label275:
label285:
	li $t0, 50809
	sw $t0, -1208($fp)
	li $t0, 0
	sw $t0, -1212($fp)
	li $t0, 23816
	sw $t0, -1216($fp)
	li $t0, 34762
	sw $t0, -1220($fp)
	lw $t0, -1216($fp)
	lw $t1, -1220($fp)
	mul $t0, $t0, $t1
	sw $t0, -1224($fp)
	lw $t1, -1224($fp)
	li $t2, 0
	bne $t1, $t2, label290
	j label289
label290:
	lw $t0, -152($fp)
	sw $t0, -1228($fp)
	lw $t1, -1228($fp)
	li $t2, 0
	bne $t1, $t2, label288
	j label289
label288:
	li $t0, 1
	sw $t0, -1212($fp)
label289:
	lw $t0, -200($fp)
	sw $t0, -1232($fp)
	li $t0, 0
	lw $t1, -1232($fp)
	sub $t0, $t0, $t1
	sw $t0, -1236($fp)
	li $t0, 0
	lw $t1, -1236($fp)
	sub $t0, $t0, $t1
	sw $t0, -1240($fp)
	addi $sp, $sp, -4
	lw $t0, -1212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1240($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1244($fp)
	addi $sp, $sp, 12
	lw $t0, -1208($fp)
	lw $t1, -1244($fp)
	add $t0, $t0, $t1
	sw $t0, -1248($fp)
	li $t0, 40523
	sw $t0, -1252($fp)
	lw $t0, -224($fp)
	sw $t0, -1256($fp)
	lw $t0, -1252($fp)
	lw $t1, -1256($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1260($fp)
	li $t0, 0
	sw $t0, -1264($fp)
	li $t0, 38028
	sw $t0, -1268($fp)
	lw $t1, -1268($fp)
	li $t2, 0
	bne $t1, $t2, label291
	j label292
label291:
	li $t0, 1
	sw $t0, -1264($fp)
label292:
	addi $sp, $sp, -4
	lw $t0, -1260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1264($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1272($fp)
	addi $sp, $sp, 12
	lw $t0, -1248($fp)
	lw $t1, -1272($fp)
	sub $t0, $t0, $t1
	sw $t0, -1276($fp)
	li $t0, 0
	sw $t0, -1280($fp)
	li $t0, 39241
	sw $t0, -1284($fp)
	lw $t1, -1284($fp)
	li $t2, 0
	bne $t1, $t2, label294
	j label293
label293:
	li $t0, 1
	sw $t0, -1280($fp)
label294:
	li $t0, 0
	sw $t0, -1288($fp)
	lw $t0, -236($fp)
	sw $t0, -1292($fp)
	lw $t1, -1292($fp)
	li $t2, 0
	bne $t1, $t2, label296
	j label295
label295:
	li $t0, 1
	sw $t0, -1288($fp)
label296:
	lw $t0, -1280($fp)
	lw $t1, -1288($fp)
	add $t0, $t0, $t1
	sw $t0, -1296($fp)
	lw $t1, -1276($fp)
	lw $t2, -1296($fp)
	bne $t1, $t2, label286
	j label287
label286:
	lw $t0, -248($fp)
	sw $t0, -1300($fp)
	li $t0, 0
	sw $t0, -1304($fp)
	li $t0, 34836
	sw $t0, -1308($fp)
	lw $t1, -1308($fp)
	li $t2, 0
	bne $t1, $t2, label301
	j label300
label300:
	li $t0, 1
	sw $t0, -1304($fp)
label301:
	li $t0, 6859
	sw $t0, -1312($fp)
	lw $t0, -1304($fp)
	lw $t1, -1312($fp)
	mul $t0, $t0, $t1
	sw $t0, -1316($fp)
	li $t0, 0
	sw $t0, -1320($fp)
	li $t0, 48455
	sw $t0, -1324($fp)
	li $t0, 19666
	sw $t0, -1328($fp)
	lw $t1, -1324($fp)
	lw $t2, -1328($fp)
	beq $t1, $t2, label302
	j label303
label302:
	li $t0, 1
	sw $t0, -1320($fp)
label303:
	lw $t0, -260($fp)
	sw $t0, -1332($fp)
	li $t0, 14757
	sw $t0, -1336($fp)
	lw $t0, -1332($fp)
	lw $t1, -1336($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1340($fp)
	li $t0, 27656
	sw $t0, -1344($fp)
	lw $t0, -1340($fp)
	lw $t1, -1344($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1348($fp)
	li $t0, 0
	sw $t0, -1352($fp)
	lw $t0, -632($fp)
	sw $t0, -1356($fp)
	lw $t1, -1356($fp)
	li $t2, 0
	bne $t1, $t2, label304
	j label306
label306:
	lw $t0, -236($fp)
	sw $t0, -1360($fp)
	lw $t1, -1360($fp)
	li $t2, 0
	bne $t1, $t2, label304
	j label305
label304:
	li $t0, 1
	sw $t0, -1352($fp)
label305:
	addi $sp, $sp, -4
	lw $t0, -1320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1352($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1364($fp)
	addi $sp, $sp, 16
	lw $t0, -1316($fp)
	lw $t1, -1364($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1368($fp)
	lw $t0, -1300($fp)
	lw $t1, -1368($fp)
	sub $t0, $t0, $t1
	sw $t0, -1372($fp)
	lw $t1, -1372($fp)
	li $t2, 0
	bne $t1, $t2, label297
	j label298
label297:
label307:
	li $t0, 12378
	sw $t0, -1376($fp)
	lw $t1, -1376($fp)
	li $t2, 0
	bne $t1, $t2, label308
	j label309
label308:
	lw $t0, -176($fp)
	sw $t0, -1380($fp)
	addi $t0, $fp, -96
	sw $t0, -1384($fp)
	lw $t0, -152($fp)
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
	lw $t0, -1380($fp)
	lw $t1, -1400($fp)
	mul $t0, $t0, $t1
	sw $t0, -1404($fp)
	lw $t0, -212($fp)
	sw $t0, -1408($fp)
	lw $t0, -1404($fp)
	lw $t1, -1408($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1412($fp)
	li $t0, 0
	lw $t1, -1412($fp)
	sub $t0, $t0, $t1
	sw $t0, -1416($fp)
	j label307
label309:
	j label299
label298:
	li $t0, 0
	sw $t0, -1420($fp)
	li $t0, 34416
	sw $t0, -1424($fp)
	lw $t1, -1424($fp)
	li $t2, 0
	bne $t1, $t2, label314
	j label313
label313:
	li $t0, 1
	sw $t0, -1420($fp)
label314:
	li $t0, 0
	sw $t0, -1428($fp)
	lw $t0, 8($fp)
	sw $t0, -1432($fp)
	lw $t1, -1432($fp)
	li $t2, 0
	bne $t1, $t2, label316
	j label315
label315:
	li $t0, 1
	sw $t0, -1428($fp)
label316:
	li $t0, 27699
	sw $t0, -1436($fp)
	lw $t0, -1428($fp)
	lw $t1, -1436($fp)
	mul $t0, $t0, $t1
	sw $t0, -1440($fp)
	lw $t1, -1420($fp)
	lw $t2, -1440($fp)
	beq $t1, $t2, label310
	j label311
label310:
	li $t0, 0
	sw $t0, -1444($fp)
	lw $t0, -152($fp)
	sw $t0, -1448($fp)
	lw $t1, -1448($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label317
label317:
	li $t0, 1
	sw $t0, -1444($fp)
label318:
	li $t0, 0
	lw $t1, -1444($fp)
	sub $t0, $t0, $t1
	sw $t0, -1452($fp)
	j label312
label311:
	li $t0, 0
	sw $t0, -1456($fp)
	lw $t0, -236($fp)
	sw $t0, -1460($fp)
	lw $t1, -1460($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label319
label319:
	li $t0, 1
	sw $t0, -1456($fp)
label320:
	li $t0, 44599
	sw $t0, -1464($fp)
	addi $sp, $sp, -4
	lw $t0, -1456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1464($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1468($fp)
	addi $sp, $sp, 12
label312:
label299:
	j label285
label287:
	addi $t0, $fp, -12
	sw $t0, -1472($fp)
	li $t0, 0
	sw $t0, -1476($fp)
	li $t0, 4
	lw $t1, -1476($fp)
	mul $t0, $t0, $t1
	sw $t0, -1480($fp)
	lw $t0, -1480($fp)
	lw $t1, -1472($fp)
	add $t0, $t0, $t1
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	lw $t1, 0($t0)
	sw $t1, -1488($fp)
	lw $t0, -1488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
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
	lw $t0, -1508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -152($fp)
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -164($fp)
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -176($fp)
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -188($fp)
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -200($fp)
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -212($fp)
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -224($fp)
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -236($fp)
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -248($fp)
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -260($fp)
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
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
	lw $t0, -1568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -1572($fp)
	li $t0, 1
	sw $t0, -1576($fp)
	li $t0, 4
	lw $t1, -1576($fp)
	mul $t0, $t0, $t1
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	lw $t1, -1572($fp)
	add $t0, $t0, $t1
	sw $t0, -1584($fp)
	lw $t0, -1584($fp)
	lw $t1, 0($t0)
	sw $t1, -1588($fp)
	lw $t0, -1588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -1592($fp)
	li $t0, 2
	sw $t0, -1596($fp)
	li $t0, 4
	lw $t1, -1596($fp)
	mul $t0, $t0, $t1
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	lw $t1, -1592($fp)
	add $t0, $t0, $t1
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	lw $t1, 0($t0)
	sw $t1, -1608($fp)
	lw $t0, -1608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -1612($fp)
	li $t0, 3
	sw $t0, -1616($fp)
	li $t0, 4
	lw $t1, -1616($fp)
	mul $t0, $t0, $t1
	sw $t0, -1620($fp)
	lw $t0, -1620($fp)
	lw $t1, -1612($fp)
	add $t0, $t0, $t1
	sw $t0, -1624($fp)
	lw $t0, -1624($fp)
	lw $t1, 0($t0)
	sw $t1, -1628($fp)
	lw $t0, -1628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -1632($fp)
	li $t0, 4
	sw $t0, -1636($fp)
	li $t0, 4
	lw $t1, -1636($fp)
	mul $t0, $t0, $t1
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	lw $t1, -1632($fp)
	add $t0, $t0, $t1
	sw $t0, -1644($fp)
	lw $t0, -1644($fp)
	lw $t1, 0($t0)
	sw $t1, -1648($fp)
	lw $t0, -1648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -1652($fp)
	li $t0, 5
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
	addi $t0, $fp, -48
	sw $t0, -1672($fp)
	li $t0, 6
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
	addi $t0, $fp, -48
	sw $t0, -1692($fp)
	li $t0, 7
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
	addi $t0, $fp, -48
	sw $t0, -1712($fp)
	li $t0, 8
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
	addi $t0, $fp, -72
	sw $t0, -1732($fp)
	li $t0, 0
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
	addi $t0, $fp, -72
	sw $t0, -1752($fp)
	li $t0, 1
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
	addi $t0, $fp, -72
	sw $t0, -1772($fp)
	li $t0, 2
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
	addi $t0, $fp, -72
	sw $t0, -1792($fp)
	li $t0, 3
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
	addi $t0, $fp, -72
	sw $t0, -1812($fp)
	li $t0, 4
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
	addi $t0, $fp, -72
	sw $t0, -1832($fp)
	li $t0, 5
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
	lw $t0, -632($fp)
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -1856($fp)
	li $t0, 0
	sw $t0, -1860($fp)
	li $t0, 4
	lw $t1, -1860($fp)
	mul $t0, $t0, $t1
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	lw $t1, -1856($fp)
	add $t0, $t0, $t1
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	lw $t1, 0($t0)
	sw $t1, -1872($fp)
	lw $t0, -1872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -1876($fp)
	li $t0, 1
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
	lw $t0, -1892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -1896($fp)
	li $t0, 2
	sw $t0, -1900($fp)
	li $t0, 4
	lw $t1, -1900($fp)
	mul $t0, $t0, $t1
	sw $t0, -1904($fp)
	lw $t0, -1904($fp)
	lw $t1, -1896($fp)
	add $t0, $t0, $t1
	sw $t0, -1908($fp)
	lw $t0, -1908($fp)
	lw $t1, 0($t0)
	sw $t1, -1912($fp)
	lw $t0, -1912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -1916($fp)
	li $t0, 3
	sw $t0, -1920($fp)
	li $t0, 4
	lw $t1, -1920($fp)
	mul $t0, $t0, $t1
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	lw $t1, -1916($fp)
	add $t0, $t0, $t1
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	lw $t1, 0($t0)
	sw $t1, -1932($fp)
	lw $t0, -1932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -1936($fp)
	li $t0, 4
	sw $t0, -1940($fp)
	li $t0, 4
	lw $t1, -1940($fp)
	mul $t0, $t0, $t1
	sw $t0, -1944($fp)
	lw $t0, -1944($fp)
	lw $t1, -1936($fp)
	add $t0, $t0, $t1
	sw $t0, -1948($fp)
	lw $t0, -1948($fp)
	lw $t1, 0($t0)
	sw $t1, -1952($fp)
	lw $t0, -1952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -1956($fp)
	li $t0, 5
	sw $t0, -1960($fp)
	li $t0, 4
	lw $t1, -1960($fp)
	mul $t0, $t0, $t1
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	lw $t1, -1956($fp)
	add $t0, $t0, $t1
	sw $t0, -1968($fp)
	lw $t0, -1968($fp)
	lw $t1, 0($t0)
	sw $t1, -1972($fp)
	lw $t0, -1972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1976($fp)
	lw $t0, -224($fp)
	sw $t0, -1980($fp)
	lw $t0, -188($fp)
	sw $t0, -1984($fp)
	li $t0, 0
	lw $t1, -1984($fp)
	sub $t0, $t0, $t1
	sw $t0, -1988($fp)
	addi $sp, $sp, -4
	lw $t0, -1980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1988($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1992($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -72
	sw $t0, -1996($fp)
	li $t0, 13033
	sw $t0, -2000($fp)
	lw $t0, -236($fp)
	sw $t0, -2004($fp)
	lw $t0, -2004($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -2008($fp)
	addi $sp, $sp, -4
	lw $t0, -2000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2008($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2012($fp)
	addi $sp, $sp, 12
	li $t0, 4
	lw $t1, -2012($fp)
	mul $t0, $t0, $t1
	sw $t0, -2016($fp)
	lw $t0, -2016($fp)
	lw $t1, -1996($fp)
	add $t0, $t0, $t1
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	lw $t1, 0($t0)
	sw $t1, -2024($fp)
	lw $t1, -1992($fp)
	lw $t2, -2024($fp)
	bgt $t1, $t2, label321
	j label322
label321:
	li $t0, 1
	sw $t0, -1976($fp)
label322:
	lw $ra, -4($fp)
	lw $v0, -1976($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -7720
	li $t0, 29807
	sw $t0, -176($fp)
	addi $t0, $fp, -24
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
	li $t0, 39717
	sw $t0, -200($fp)
	addi $t0, $fp, -24
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
	li $t0, 8257
	sw $t0, -224($fp)
	addi $t0, $fp, -24
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
	li $t0, 8450
	sw $t0, -248($fp)
	addi $t0, $fp, -24
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
	li $t0, 41263
	sw $t0, -272($fp)
	addi $t0, $fp, -24
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
	li $t0, 56743
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	li $t0, 27313
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	li $t0, 26410
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	li $t0, 55455
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	sw $t0, -340($fp)
	li $t0, 16840
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -352($fp)
	li $t0, 47618
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	li $t0, 57322
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -376($fp)
	li $t0, 5835
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -388($fp)
	li $t0, 58839
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -400($fp)
	li $t0, 42595
	sw $t0, -404($fp)
	addi $t0, $fp, -60
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
	li $t0, 29651
	sw $t0, -428($fp)
	addi $t0, $fp, -60
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
	li $t0, 28066
	sw $t0, -452($fp)
	addi $t0, $fp, -60
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
	li $t0, 15088
	sw $t0, -476($fp)
	addi $t0, $fp, -60
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
	li $t0, 4638
	sw $t0, -500($fp)
	addi $t0, $fp, -60
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
	li $t0, 1771
	sw $t0, -524($fp)
	addi $t0, $fp, -60
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
	li $t0, 49924
	sw $t0, -548($fp)
	addi $t0, $fp, -60
	sw $t0, -552($fp)
	li $t0, 6
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
	li $t0, 11497
	sw $t0, -572($fp)
	addi $t0, $fp, -60
	sw $t0, -576($fp)
	li $t0, 7
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
	li $t0, 16528
	sw $t0, -596($fp)
	addi $t0, $fp, -60
	sw $t0, -600($fp)
	li $t0, 8
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -608($fp)
	lw $t0, -600($fp)
	lw $t1, -608($fp)
	add $t0, $t0, $t1
	sw $t0, -612($fp)
	lw $t0, -596($fp)
	lw $t1, -612($fp)
	sw $t0, 0($t1)
	lw $t0, -612($fp)
	lw $t1, 0($t0)
	sw $t1, -616($fp)
	li $t0, 12044
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	li $t0, 59952
	sw $t0, -632($fp)
	addi $t0, $fp, -80
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
	li $t0, 36194
	sw $t0, -656($fp)
	addi $t0, $fp, -80
	sw $t0, -660($fp)
	li $t0, 1
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
	li $t0, 24422
	sw $t0, -680($fp)
	addi $t0, $fp, -80
	sw $t0, -684($fp)
	li $t0, 2
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
	li $t0, 28833
	sw $t0, -704($fp)
	addi $t0, $fp, -80
	sw $t0, -708($fp)
	li $t0, 3
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
	li $t0, 63893
	sw $t0, -728($fp)
	addi $t0, $fp, -80
	sw $t0, -732($fp)
	li $t0, 4
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
	li $t0, 3485
	sw $t0, -752($fp)
	addi $t0, $fp, -108
	sw $t0, -756($fp)
	li $t0, 0
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
	li $t0, 41866
	sw $t0, -776($fp)
	addi $t0, $fp, -108
	sw $t0, -780($fp)
	li $t0, 1
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
	li $t0, 28165
	sw $t0, -800($fp)
	addi $t0, $fp, -108
	sw $t0, -804($fp)
	li $t0, 2
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
	li $t0, 43203
	sw $t0, -824($fp)
	addi $t0, $fp, -108
	sw $t0, -828($fp)
	li $t0, 3
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
	li $t0, 50123
	sw $t0, -848($fp)
	addi $t0, $fp, -108
	sw $t0, -852($fp)
	li $t0, 4
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
	li $t0, 36615
	sw $t0, -872($fp)
	addi $t0, $fp, -108
	sw $t0, -876($fp)
	li $t0, 5
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
	li $t0, 18930
	sw $t0, -896($fp)
	addi $t0, $fp, -108
	sw $t0, -900($fp)
	li $t0, 6
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
	li $t0, 41330
	sw $t0, -920($fp)
	addi $t0, $fp, -120
	sw $t0, -924($fp)
	li $t0, 0
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -932($fp)
	lw $t0, -924($fp)
	lw $t1, -932($fp)
	add $t0, $t0, $t1
	sw $t0, -936($fp)
	lw $t0, -920($fp)
	lw $t1, -936($fp)
	sw $t0, 0($t1)
	lw $t0, -936($fp)
	lw $t1, 0($t0)
	sw $t1, -940($fp)
	li $t0, 63928
	sw $t0, -944($fp)
	addi $t0, $fp, -120
	sw $t0, -948($fp)
	li $t0, 1
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -956($fp)
	lw $t0, -948($fp)
	lw $t1, -956($fp)
	add $t0, $t0, $t1
	sw $t0, -960($fp)
	lw $t0, -944($fp)
	lw $t1, -960($fp)
	sw $t0, 0($t1)
	lw $t0, -960($fp)
	lw $t1, 0($t0)
	sw $t1, -964($fp)
	li $t0, 45341
	sw $t0, -968($fp)
	addi $t0, $fp, -120
	sw $t0, -972($fp)
	li $t0, 2
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -980($fp)
	lw $t0, -972($fp)
	lw $t1, -980($fp)
	add $t0, $t0, $t1
	sw $t0, -984($fp)
	lw $t0, -968($fp)
	lw $t1, -984($fp)
	sw $t0, 0($t1)
	lw $t0, -984($fp)
	lw $t1, 0($t0)
	sw $t1, -988($fp)
	li $t0, 31250
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	sw $t0, -1000($fp)
	li $t0, 15233
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	sw $t0, -1012($fp)
	li $t0, 27423
	sw $t0, -1016($fp)
	addi $t0, $fp, -152
	sw $t0, -1020($fp)
	li $t0, 0
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1028($fp)
	lw $t0, -1020($fp)
	lw $t1, -1028($fp)
	add $t0, $t0, $t1
	sw $t0, -1032($fp)
	lw $t0, -1016($fp)
	lw $t1, -1032($fp)
	sw $t0, 0($t1)
	lw $t0, -1032($fp)
	lw $t1, 0($t0)
	sw $t1, -1036($fp)
	li $t0, 23036
	sw $t0, -1040($fp)
	addi $t0, $fp, -152
	sw $t0, -1044($fp)
	li $t0, 1
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1052($fp)
	lw $t0, -1044($fp)
	lw $t1, -1052($fp)
	add $t0, $t0, $t1
	sw $t0, -1056($fp)
	lw $t0, -1040($fp)
	lw $t1, -1056($fp)
	sw $t0, 0($t1)
	lw $t0, -1056($fp)
	lw $t1, 0($t0)
	sw $t1, -1060($fp)
	li $t0, 21068
	sw $t0, -1064($fp)
	addi $t0, $fp, -152
	sw $t0, -1068($fp)
	li $t0, 2
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
	li $t0, 20726
	sw $t0, -1088($fp)
	addi $t0, $fp, -152
	sw $t0, -1092($fp)
	li $t0, 3
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
	li $t0, 96
	sw $t0, -1112($fp)
	addi $t0, $fp, -152
	sw $t0, -1116($fp)
	li $t0, 4
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
	li $t0, 50720
	sw $t0, -1136($fp)
	addi $t0, $fp, -152
	sw $t0, -1140($fp)
	li $t0, 5
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
	li $t0, 48792
	sw $t0, -1160($fp)
	addi $t0, $fp, -152
	sw $t0, -1164($fp)
	li $t0, 6
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
	li $t0, 15184
	sw $t0, -1184($fp)
	addi $t0, $fp, -152
	sw $t0, -1188($fp)
	li $t0, 7
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
	li $t0, 55358
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	sw $t0, -1216($fp)
	li $t0, 50563
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	sw $t0, -1228($fp)
	li $t0, 65108
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	sw $t0, -1240($fp)
	li $t0, 1320
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	sw $t0, -1252($fp)
	li $t0, 1555
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	sw $t0, -1264($fp)
	li $t0, 11616
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -1276($fp)
	li $t0, 61272
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1288($fp)
	li $t0, 37749
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	sw $t0, -1300($fp)
	li $t0, 36038
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	sw $t0, -1312($fp)
	li $t0, 24569
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	sw $t0, -1324($fp)
	li $t0, 36107
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	sw $t0, -1336($fp)
	li $t0, 39523
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	sw $t0, -1348($fp)
	li $t0, 899
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	sw $t0, -1360($fp)
	li $t0, 64272
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	sw $t0, -1372($fp)
	li $t0, 17190
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	sw $t0, -1384($fp)
	li $t0, 51023
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	sw $t0, -1396($fp)
	li $t0, 35351
	sw $t0, -1400($fp)
	addi $t0, $fp, -168
	sw $t0, -1404($fp)
	li $t0, 0
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1412($fp)
	lw $t0, -1404($fp)
	lw $t1, -1412($fp)
	add $t0, $t0, $t1
	sw $t0, -1416($fp)
	lw $t0, -1400($fp)
	lw $t1, -1416($fp)
	sw $t0, 0($t1)
	lw $t0, -1416($fp)
	lw $t1, 0($t0)
	sw $t1, -1420($fp)
	li $t0, 36121
	sw $t0, -1424($fp)
	addi $t0, $fp, -168
	sw $t0, -1428($fp)
	li $t0, 1
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1436($fp)
	lw $t0, -1428($fp)
	lw $t1, -1436($fp)
	add $t0, $t0, $t1
	sw $t0, -1440($fp)
	lw $t0, -1424($fp)
	lw $t1, -1440($fp)
	sw $t0, 0($t1)
	lw $t0, -1440($fp)
	lw $t1, 0($t0)
	sw $t1, -1444($fp)
	li $t0, 26817
	sw $t0, -1448($fp)
	addi $t0, $fp, -168
	sw $t0, -1452($fp)
	li $t0, 2
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1460($fp)
	lw $t0, -1452($fp)
	lw $t1, -1460($fp)
	add $t0, $t0, $t1
	sw $t0, -1464($fp)
	lw $t0, -1448($fp)
	lw $t1, -1464($fp)
	sw $t0, 0($t1)
	lw $t0, -1464($fp)
	lw $t1, 0($t0)
	sw $t1, -1468($fp)
	li $t0, 33743
	sw $t0, -1472($fp)
	addi $t0, $fp, -168
	sw $t0, -1476($fp)
	li $t0, 3
	sw $t0, -1480($fp)
	lw $t0, -1480($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1484($fp)
	lw $t0, -1476($fp)
	lw $t1, -1484($fp)
	add $t0, $t0, $t1
	sw $t0, -1488($fp)
	lw $t0, -1472($fp)
	lw $t1, -1488($fp)
	sw $t0, 0($t1)
	lw $t0, -1488($fp)
	lw $t1, 0($t0)
	sw $t1, -1492($fp)
	li $t0, 15926
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	sw $t0, -1504($fp)
	li $t0, 58067
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	sw $t0, -1516($fp)
	li $t0, 48976
	sw $t0, -1520($fp)
	addi $t0, $fp, -172
	sw $t0, -1524($fp)
	li $t0, 0
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1532($fp)
	lw $t0, -1524($fp)
	lw $t1, -1532($fp)
	add $t0, $t0, $t1
	sw $t0, -1536($fp)
	lw $t0, -1520($fp)
	lw $t1, -1536($fp)
	sw $t0, 0($t1)
	lw $t0, -1536($fp)
	lw $t1, 0($t0)
	sw $t1, -1540($fp)
	li $t0, 43349
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	sw $t0, -1552($fp)
	li $t0, 15568
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	sw $t0, -1564($fp)
	li $t0, 4509
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	sw $t0, -1576($fp)
	li $t0, 64075
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	sw $t0, -1584($fp)
	lw $t0, -1584($fp)
	sw $t0, -1588($fp)
	li $t0, 15664
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	sw $t0, -1596($fp)
	lw $t0, -1596($fp)
	sw $t0, -1600($fp)
	li $t0, 55229
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	sw $t0, -1612($fp)
	li $t0, 47332
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	sw $t0, -1620($fp)
	lw $t0, -1620($fp)
	sw $t0, -1624($fp)
	li $t0, 30848
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	sw $t0, -1636($fp)
	li $t0, 45051
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	sw $t0, -1644($fp)
	lw $t0, -1644($fp)
	sw $t0, -1648($fp)
	li $t0, 32359
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	sw $t0, -1656($fp)
	lw $t0, -1656($fp)
	sw $t0, -1660($fp)
	li $t0, 30420
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	sw $t0, -1672($fp)
	li $t0, 46371
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	sw $t0, -1680($fp)
	lw $t0, -1680($fp)
	sw $t0, -1684($fp)
	li $t0, 33915
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	sw $t0, -1696($fp)
	li $t0, 42036
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	sw $t0, -1708($fp)
	li $t0, 42108
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	sw $t0, -1720($fp)
	li $t0, 6128
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	sw $t0, -1732($fp)
	li $t0, 12538
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	sw $t0, -1744($fp)
	li $t0, 1141
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	sw $t0, -1756($fp)
	li $t0, 42235
	sw $t0, -1768($fp)
	addi $t0, $fp, -1764
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
	li $t0, 52061
	sw $t0, -1792($fp)
	addi $t0, $fp, -1764
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
	li $t0, 2041
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	sw $t0, -1824($fp)
	li $t0, 40971
	sw $t0, -1860($fp)
	lw $t0, -1860($fp)
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	sw $t0, -1868($fp)
	li $t0, 3716
	sw $t0, -1872($fp)
	lw $t0, -1872($fp)
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	sw $t0, -1880($fp)
	li $t0, 53064
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	sw $t0, -1888($fp)
	lw $t0, -1888($fp)
	sw $t0, -1892($fp)
	li $t0, 10786
	sw $t0, -1896($fp)
	lw $t0, -1896($fp)
	sw $t0, -1900($fp)
	lw $t0, -1900($fp)
	sw $t0, -1904($fp)
	li $t0, 39837
	sw $t0, -1908($fp)
	addi $t0, $fp, -1828
	sw $t0, -1912($fp)
	li $t0, 0
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
	li $t0, 14345
	sw $t0, -1932($fp)
	lw $t0, -1932($fp)
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	sw $t0, -1940($fp)
	li $t0, 44530
	sw $t0, -1944($fp)
	lw $t0, -1944($fp)
	sw $t0, -1948($fp)
	lw $t0, -1948($fp)
	sw $t0, -1952($fp)
	li $t0, 55763
	sw $t0, -1956($fp)
	lw $t0, -1956($fp)
	sw $t0, -1960($fp)
	lw $t0, -1960($fp)
	sw $t0, -1964($fp)
	li $t0, 6877
	sw $t0, -1968($fp)
	lw $t0, -1968($fp)
	sw $t0, -1972($fp)
	lw $t0, -1972($fp)
	sw $t0, -1976($fp)
	li $t0, 27970
	sw $t0, -1980($fp)
	lw $t0, -1980($fp)
	sw $t0, -1984($fp)
	lw $t0, -1984($fp)
	sw $t0, -1988($fp)
	li $t0, 33576
	sw $t0, -1992($fp)
	lw $t0, -1992($fp)
	sw $t0, -1996($fp)
	lw $t0, -1996($fp)
	sw $t0, -2000($fp)
	li $t0, 22445
	sw $t0, -2004($fp)
	lw $t0, -2004($fp)
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	sw $t0, -2012($fp)
	li $t0, 32479
	sw $t0, -2016($fp)
	lw $t0, -2016($fp)
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	sw $t0, -2024($fp)
	li $t0, 32115
	sw $t0, -2028($fp)
	lw $t0, -2028($fp)
	sw $t0, -2032($fp)
	lw $t0, -2032($fp)
	sw $t0, -2036($fp)
	li $t0, 38109
	sw $t0, -2040($fp)
	addi $t0, $fp, -1856
	sw $t0, -2044($fp)
	li $t0, 0
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
	li $t0, 22172
	sw $t0, -2064($fp)
	addi $t0, $fp, -1856
	sw $t0, -2068($fp)
	li $t0, 1
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
	li $t0, 13911
	sw $t0, -2088($fp)
	addi $t0, $fp, -1856
	sw $t0, -2092($fp)
	li $t0, 2
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
	li $t0, 3421
	sw $t0, -2112($fp)
	addi $t0, $fp, -1856
	sw $t0, -2116($fp)
	li $t0, 3
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
	li $t0, 1688
	sw $t0, -2136($fp)
	addi $t0, $fp, -1856
	sw $t0, -2140($fp)
	li $t0, 4
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
	li $t0, 46271
	sw $t0, -2160($fp)
	addi $t0, $fp, -1856
	sw $t0, -2164($fp)
	li $t0, 5
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
	li $t0, 33841
	sw $t0, -2184($fp)
	addi $t0, $fp, -1856
	sw $t0, -2188($fp)
	li $t0, 6
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
	li $t0, 48059
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	sw $t0, -2212($fp)
	addi $sp, $sp, -4
	lw $t0, -2212($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2216($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -2216($fp)
	sub $t0, $t0, $t1
	sw $t0, -2220($fp)
	addi $t0, $fp, -168
	sw $t0, -2224($fp)
	li $t0, 1
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
	lw $t1, -2220($fp)
	lw $t2, -2240($fp)
	bgt $t1, $t2, label326
	j label324
label326:
	li $t0, 0
	sw $t0, -2244($fp)
	lw $t0, -1864($fp)
	sw $t0, -2248($fp)
	li $t0, 0
	lw $t1, -2248($fp)
	sub $t0, $t0, $t1
	sw $t0, -2252($fp)
	lw $t1, -2252($fp)
	li $t2, 0
	bne $t1, $t2, label328
	j label327
label327:
	li $t0, 1
	sw $t0, -2244($fp)
label328:
	li $t0, 0
	sw $t0, -2256($fp)
	lw $t0, -312($fp)
	sw $t0, -2260($fp)
	lw $t0, -1668($fp)
	sw $t0, -2264($fp)
	lw $t1, -2260($fp)
	lw $t2, -2264($fp)
	bge $t1, $t2, label329
	j label330
label329:
	li $t0, 1
	sw $t0, -2256($fp)
label330:
	lw $t1, -2244($fp)
	lw $t2, -2256($fp)
	bne $t1, $t2, label323
	j label324
label323:
	li $t0, 0
	sw $t0, -2268($fp)
	lw $t0, -1644($fp)
	sw $t0, -2272($fp)
	li $t0, 0
	lw $t1, -2272($fp)
	sub $t0, $t0, $t1
	sw $t0, -2276($fp)
	li $t0, 0
	lw $t1, -2276($fp)
	sub $t0, $t0, $t1
	sw $t0, -2280($fp)
	lw $t1, -2280($fp)
	li $t2, 0
	bne $t1, $t2, label335
	j label334
label334:
	li $t0, 1
	sw $t0, -2268($fp)
label335:
	li $t0, 0
	lw $t1, -2268($fp)
	sub $t0, $t0, $t1
	sw $t0, -2284($fp)
	li $t0, 0
	lw $t1, -2284($fp)
	sub $t0, $t0, $t1
	sw $t0, -2288($fp)
	lw $t1, -2288($fp)
	li $t2, 0
	bne $t1, $t2, label331
	j label332
label331:
	lw $t0, -1632($fp)
	sw $t0, -2292($fp)
	li $t0, 0
	sw $t0, -2296($fp)
	lw $t0, -1224($fp)
	sw $t0, -2300($fp)
	lw $t0, 8($fp)
	sw $t0, -2304($fp)
	lw $t0, -2300($fp)
	lw $t1, -2304($fp)
	mul $t0, $t0, $t1
	sw $t0, -2308($fp)
	li $t0, 24631
	sw $t0, -2312($fp)
	lw $t1, -2308($fp)
	lw $t2, -2312($fp)
	beq $t1, $t2, label336
	j label337
label336:
	li $t0, 1
	sw $t0, -2296($fp)
label337:
	lw $t0, -1632($fp)
	sw $t0, -2316($fp)
	li $t0, 0
	lw $t1, -2316($fp)
	sub $t0, $t0, $t1
	sw $t0, -2320($fp)
	lw $t0, -1236($fp)
	sw $t0, -2324($fp)
	lw $t0, -2320($fp)
	lw $t1, -2324($fp)
	sub $t0, $t0, $t1
	sw $t0, -2328($fp)
	addi $sp, $sp, -4
	lw $t0, -2292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2328($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -2332($fp)
	addi $sp, $sp, 16
	j label333
label332:
	li $t0, 20778
	sw $t0, -2336($fp)
	addi $t0, $fp, -120
	sw $t0, -2340($fp)
	lw $t0, -1716($fp)
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
	lw $t0, -2336($fp)
	lw $t1, -2356($fp)
	sub $t0, $t0, $t1
	sw $t0, -2360($fp)
	lw $t1, -2360($fp)
	li $t2, 0
	bne $t1, $t2, label338
	j label341
label341:
	lw $t0, -996($fp)
	sw $t0, -2364($fp)
	lw $t0, -1900($fp)
	sw $t0, -2368($fp)
	lw $t0, -300($fp)
	sw $t0, -2372($fp)
	lw $t0, -2368($fp)
	lw $t1, -2372($fp)
	mul $t0, $t0, $t1
	sw $t0, -2376($fp)
	lw $t0, -2364($fp)
	lw $t1, -2376($fp)
	sub $t0, $t0, $t1
	sw $t0, -2380($fp)
	lw $t1, -2380($fp)
	li $t2, 0
	bne $t1, $t2, label338
	j label339
label338:
	li $t0, 0
	sw $t0, -2384($fp)
	li $t0, 22879
	sw $t0, -2388($fp)
	lw $t1, -2388($fp)
	li $t2, 0
	bne $t1, $t2, label346
	j label345
label345:
	li $t0, 1
	sw $t0, -2384($fp)
label346:
	li $t0, 0
	sw $t0, -2392($fp)
	li $t0, 0
	sw $t0, -2396($fp)
	li $t0, 0
	sw $t0, -2400($fp)
	addi $t0, $fp, -1764
	sw $t0, -2404($fp)
	lw $t0, -1212($fp)
	sw $t0, -2408($fp)
	li $t0, 4
	lw $t1, -2408($fp)
	mul $t0, $t0, $t1
	sw $t0, -2412($fp)
	lw $t0, -2412($fp)
	lw $t1, -2404($fp)
	add $t0, $t0, $t1
	sw $t0, -2416($fp)
	lw $t0, -2416($fp)
	lw $t1, 0($t0)
	sw $t1, -2420($fp)
	lw $t1, -2420($fp)
	li $t2, 0
	bne $t1, $t2, label353
	j label352
label352:
	li $t0, 1
	sw $t0, -2400($fp)
label353:
	li $t0, 0
	sw $t0, -2424($fp)
	li $t0, 13120
	sw $t0, -2428($fp)
	lw $t1, -2428($fp)
	li $t2, 0
	bne $t1, $t2, label355
	j label354
label354:
	li $t0, 1
	sw $t0, -2424($fp)
label355:
	li $t0, 0
	lw $t1, -2424($fp)
	sub $t0, $t0, $t1
	sw $t0, -2432($fp)
	li $t0, 0
	sw $t0, -2436($fp)
	lw $t0, -1584($fp)
	sw $t0, -2440($fp)
	lw $t1, -2440($fp)
	li $t2, 0
	bne $t1, $t2, label357
	j label356
label356:
	li $t0, 1
	sw $t0, -2436($fp)
label357:
	li $t0, 38449
	sw $t0, -2444($fp)
	lw $t0, -1248($fp)
	sw $t0, -2448($fp)
	lw $t0, -2444($fp)
	lw $t1, -2448($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2452($fp)
	addi $sp, $sp, -4
	lw $t0, -2436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2452($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2456($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -2432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2456($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -2460($fp)
	addi $sp, $sp, 12
	li $t0, 15342
	sw $t0, -2464($fp)
	lw $t0, -2460($fp)
	lw $t1, -2464($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2468($fp)
	li $t0, 0
	sw $t0, -2472($fp)
	lw $t0, -996($fp)
	sw $t0, -2476($fp)
	li $t0, 27814
	sw $t0, -2480($fp)
	lw $t0, -2476($fp)
	lw $t1, -2480($fp)
	sub $t0, $t0, $t1
	sw $t0, -2484($fp)
	lw $t0, -312($fp)
	sw $t0, -2488($fp)
	lw $t1, -2484($fp)
	lw $t2, -2488($fp)
	ble $t1, $t2, label358
	j label359
label358:
	li $t0, 1
	sw $t0, -2472($fp)
label359:
	li $t0, 0
	sw $t0, -2492($fp)
	li $t0, 0
	sw $t0, -2496($fp)
	lw $t0, -1936($fp)
	sw $t0, -2500($fp)
	li $t0, 9404
	sw $t0, -2504($fp)
	lw $t1, -2500($fp)
	lw $t2, -2504($fp)
	blt $t1, $t2, label362
	j label363
label362:
	li $t0, 1
	sw $t0, -2496($fp)
label363:
	lw $t0, 12($fp)
	sw $t0, -2508($fp)
	lw $t1, -2496($fp)
	lw $t2, -2508($fp)
	beq $t1, $t2, label360
	j label361
label360:
	li $t0, 1
	sw $t0, -2492($fp)
label361:
	addi $sp, $sp, -4
	lw $t0, -2468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2492($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2512($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -2512($fp)
	sub $t0, $t0, $t1
	sw $t0, -2516($fp)
	addi $sp, $sp, -4
	lw $t0, -2516($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2520($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -2400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2520($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -2524($fp)
	addi $sp, $sp, 12
	lw $t1, -2524($fp)
	li $t2, 0
	bne $t1, $t2, label351
	j label350
label351:
	lw $t0, -1716($fp)
	sw $t0, -2528($fp)
	lw $t1, -2528($fp)
	li $t2, 0
	bne $t1, $t2, label349
	j label350
label349:
	li $t0, 1
	sw $t0, -2396($fp)
label350:
	addi $t0, $fp, -24
	sw $t0, -2532($fp)
	lw $t0, -1656($fp)
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
	li $t0, 25773
	sw $t0, -2552($fp)
	lw $t0, -1996($fp)
	sw $t0, -2556($fp)
	lw $t0, -2552($fp)
	lw $t1, -2556($fp)
	sub $t0, $t0, $t1
	sw $t0, -2560($fp)
	li $t0, 63014
	sw $t0, -2564($fp)
	lw $t0, -2560($fp)
	lw $t1, -2564($fp)
	sub $t0, $t0, $t1
	sw $t0, -2568($fp)
	addi $sp, $sp, -4
	lw $t0, -2396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2568($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -2572($fp)
	addi $sp, $sp, 16
	lw $t1, -2572($fp)
	li $t2, 0
	bne $t1, $t2, label348
	j label347
label347:
	li $t0, 1
	sw $t0, -2392($fp)
label348:
	li $t0, 0
	lw $t1, -2392($fp)
	sub $t0, $t0, $t1
	sw $t0, -2576($fp)
	lw $t0, -2384($fp)
	lw $t1, -2576($fp)
	sub $t0, $t0, $t1
	sw $t0, -2580($fp)
	lw $t1, -2580($fp)
	li $t2, 0
	bne $t1, $t2, label342
	j label343
label342:
	li $t0, 52957
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	sw $t0, -2588($fp)
	li $t0, 49236
	sw $t0, -2592($fp)
	lw $t0, -2592($fp)
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	sw $t0, -2596($fp)
	addi $sp, $sp, -4
	lw $t0, -2588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2596($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2600($fp)
	addi $sp, $sp, 12
	lw $t0, 8($fp)
	sw $t0, -2604($fp)
	lw $t0, -2600($fp)
	lw $t1, -2604($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2608($fp)
	j label344
label343:
	li $t0, 0
	sw $t0, -2612($fp)
	li $t0, 0
	sw $t0, -2616($fp)
	addi $t0, $fp, -1828
	sw $t0, -2620($fp)
	lw $t0, -1948($fp)
	sw $t0, -2624($fp)
	li $t0, 4
	lw $t1, -2624($fp)
	mul $t0, $t0, $t1
	sw $t0, -2628($fp)
	lw $t0, -2628($fp)
	lw $t1, -2620($fp)
	add $t0, $t0, $t1
	sw $t0, -2632($fp)
	lw $t0, -2632($fp)
	lw $t1, 0($t0)
	sw $t1, -2636($fp)
	li $t0, 0
	lw $t1, -2636($fp)
	sub $t0, $t0, $t1
	sw $t0, -2640($fp)
	lw $t0, -1960($fp)
	sw $t0, -2644($fp)
	lw $t0, -2640($fp)
	lw $t1, -2644($fp)
	add $t0, $t0, $t1
	sw $t0, -2648($fp)
	li $t0, 29687
	sw $t0, -2652($fp)
	li $t0, 28230
	sw $t0, -2656($fp)
	lw $t0, -2652($fp)
	lw $t1, -2656($fp)
	mul $t0, $t0, $t1
	sw $t0, -2660($fp)
	lw $t1, -2648($fp)
	lw $t2, -2660($fp)
	ble $t1, $t2, label366
	j label367
label366:
	li $t0, 1
	sw $t0, -2616($fp)
label367:
	li $t0, 43184
	sw $t0, -2664($fp)
	li $t0, 0
	lw $t1, -2664($fp)
	sub $t0, $t0, $t1
	sw $t0, -2668($fp)
	lw $t1, -2616($fp)
	lw $t2, -2668($fp)
	bne $t1, $t2, label364
	j label365
label364:
	li $t0, 1
	sw $t0, -2612($fp)
label365:
label344:
	j label340
label339:
	li $t0, 0
	sw $t0, -2672($fp)
	lw $t0, -1272($fp)
	sw $t0, -2676($fp)
	li $t0, 36564
	sw $t0, -2680($fp)
	lw $t1, -2676($fp)
	lw $t2, -2680($fp)
	beq $t1, $t2, label368
	j label369
label368:
	li $t0, 1
	sw $t0, -2672($fp)
label369:
label340:
label333:
	j label325
label324:
	li $t0, 0
	sw $t0, -2684($fp)
	addi $t0, $fp, -152
	sw $t0, -2688($fp)
	lw $t0, -1704($fp)
	sw $t0, -2692($fp)
	lw $t0, -1548($fp)
	sw $t0, -2696($fp)
	lw $t0, -2692($fp)
	lw $t1, -2696($fp)
	mul $t0, $t0, $t1
	sw $t0, -2700($fp)
	li $t0, 4
	lw $t1, -2700($fp)
	mul $t0, $t0, $t1
	sw $t0, -2704($fp)
	lw $t0, -2704($fp)
	lw $t1, -2688($fp)
	add $t0, $t0, $t1
	sw $t0, -2708($fp)
	lw $t0, -2708($fp)
	lw $t1, 0($t0)
	sw $t1, -2712($fp)
	li $t0, 0
	lw $t1, -2712($fp)
	sub $t0, $t0, $t1
	sw $t0, -2716($fp)
	li $t0, 0
	sw $t0, -2720($fp)
	li $t0, 23144
	sw $t0, -2724($fp)
	lw $t0, -1680($fp)
	sw $t0, -2728($fp)
	lw $t0, -2724($fp)
	lw $t1, -2728($fp)
	add $t0, $t0, $t1
	sw $t0, -2732($fp)
	lw $t1, -2732($fp)
	li $t2, 0
	bne $t1, $t2, label374
	j label373
label374:
	lw $t0, -624($fp)
	sw $t0, -2736($fp)
	lw $t1, -2736($fp)
	li $t2, 0
	bne $t1, $t2, label372
	j label373
label372:
	li $t0, 1
	sw $t0, -2720($fp)
label373:
	li $t0, 59009
	sw $t0, -2740($fp)
	lw $t0, -2740($fp)
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	sw $t0, -2744($fp)
	addi $sp, $sp, -4
	lw $t0, -2720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2744($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2748($fp)
	addi $sp, $sp, 12
	li $t0, 43340
	sw $t0, -2752($fp)
	lw $t0, -2748($fp)
	lw $t1, -2752($fp)
	add $t0, $t0, $t1
	sw $t0, -2756($fp)
	addi $t0, $fp, -168
	sw $t0, -2760($fp)
	lw $t0, -300($fp)
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
	li $t0, 0
	sw $t0, -2780($fp)
	lw $t0, -1380($fp)
	sw $t0, -2784($fp)
	li $t0, 56200
	sw $t0, -2788($fp)
	lw $t0, -2784($fp)
	lw $t1, -2788($fp)
	add $t0, $t0, $t1
	sw $t0, -2792($fp)
	li $t0, 11224
	sw $t0, -2796($fp)
	lw $t1, -2792($fp)
	lw $t2, -2796($fp)
	blt $t1, $t2, label375
	j label376
label375:
	li $t0, 1
	sw $t0, -2780($fp)
label376:
	addi $sp, $sp, -4
	lw $t0, -2776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2780($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2800($fp)
	addi $sp, $sp, 12
	lw $t0, -1308($fp)
	sw $t0, -2804($fp)
	lw $t0, -2800($fp)
	lw $t1, -2804($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2808($fp)
	addi $sp, $sp, -4
	lw $t0, -2756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2808($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2812($fp)
	addi $sp, $sp, 12
	lw $t1, -2716($fp)
	lw $t2, -2812($fp)
	bne $t1, $t2, label370
	j label371
label370:
	li $t0, 1
	sw $t0, -2684($fp)
label371:
label325:
	lw $t0, -1864($fp)
	sw $t0, -2816($fp)
	lw $t0, -2816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1876($fp)
	sw $t0, -2820($fp)
	lw $t0, -2820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1888($fp)
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1900($fp)
	sw $t0, -2828($fp)
	lw $t0, -2828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1828
	sw $t0, -2832($fp)
	li $t0, 0
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
	lw $t0, -2848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1936($fp)
	sw $t0, -2852($fp)
	lw $t0, -2852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1948($fp)
	sw $t0, -2856($fp)
	lw $t0, -2856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1960($fp)
	sw $t0, -2860($fp)
	lw $t0, -2860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1972($fp)
	sw $t0, -2864($fp)
	lw $t0, -2864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1984($fp)
	sw $t0, -2868($fp)
	lw $t0, -2868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1996($fp)
	sw $t0, -2872($fp)
	lw $t0, -2872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2008($fp)
	sw $t0, -2876($fp)
	lw $t0, -2876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2020($fp)
	sw $t0, -2880($fp)
	lw $t0, -2880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2032($fp)
	sw $t0, -2884($fp)
	lw $t0, -2884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1856
	sw $t0, -2888($fp)
	li $t0, 0
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
	addi $t0, $fp, -1856
	sw $t0, -2908($fp)
	li $t0, 1
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
	addi $t0, $fp, -1856
	sw $t0, -2928($fp)
	li $t0, 2
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
	addi $t0, $fp, -1856
	sw $t0, -2948($fp)
	li $t0, 3
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
	lw $t0, -2964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1856
	sw $t0, -2968($fp)
	li $t0, 4
	sw $t0, -2972($fp)
	li $t0, 4
	lw $t1, -2972($fp)
	mul $t0, $t0, $t1
	sw $t0, -2976($fp)
	lw $t0, -2976($fp)
	lw $t1, -2968($fp)
	add $t0, $t0, $t1
	sw $t0, -2980($fp)
	lw $t0, -2980($fp)
	lw $t1, 0($t0)
	sw $t1, -2984($fp)
	lw $t0, -2984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1856
	sw $t0, -2988($fp)
	li $t0, 5
	sw $t0, -2992($fp)
	li $t0, 4
	lw $t1, -2992($fp)
	mul $t0, $t0, $t1
	sw $t0, -2996($fp)
	lw $t0, -2996($fp)
	lw $t1, -2988($fp)
	add $t0, $t0, $t1
	sw $t0, -3000($fp)
	lw $t0, -3000($fp)
	lw $t1, 0($t0)
	sw $t1, -3004($fp)
	lw $t0, -3004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1856
	sw $t0, -3008($fp)
	li $t0, 6
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
	lw $t0, -3024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3028($fp)
	addi $t0, $fp, -108
	sw $t0, -3032($fp)
	li $t0, 0
	sw $t0, -3036($fp)
	lw $t0, -1948($fp)
	sw $t0, -3040($fp)
	li $t0, 31582
	sw $t0, -3044($fp)
	lw $t1, -3040($fp)
	lw $t2, -3044($fp)
	bne $t1, $t2, label379
	j label380
label379:
	li $t0, 1
	sw $t0, -3036($fp)
label380:
	li $t0, 4
	lw $t1, -3036($fp)
	mul $t0, $t0, $t1
	sw $t0, -3048($fp)
	lw $t0, -3048($fp)
	lw $t1, -3032($fp)
	add $t0, $t0, $t1
	sw $t0, -3052($fp)
	lw $t0, -3052($fp)
	lw $t1, 0($t0)
	sw $t1, -3056($fp)
	lw $t0, -1620($fp)
	sw $t0, -3060($fp)
	lw $t0, -3056($fp)
	lw $t1, -3060($fp)
	mul $t0, $t0, $t1
	sw $t0, -3064($fp)
	li $t0, 57251
	sw $t0, -3068($fp)
	li $t0, 0
	sw $t0, -3072($fp)
	li $t0, 0
	sw $t0, -3076($fp)
	li $t0, 45316
	sw $t0, -3080($fp)
	lw $t0, -996($fp)
	sw $t0, -3084($fp)
	lw $t1, -3080($fp)
	lw $t2, -3084($fp)
	ble $t1, $t2, label383
	j label384
label383:
	li $t0, 1
	sw $t0, -3076($fp)
label384:
	lw $t0, -348($fp)
	sw $t0, -3088($fp)
	lw $t1, -3076($fp)
	lw $t2, -3088($fp)
	beq $t1, $t2, label381
	j label382
label381:
	li $t0, 1
	sw $t0, -3072($fp)
label382:
	addi $sp, $sp, -4
	lw $t0, -3068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3072($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3092($fp)
	addi $sp, $sp, 12
	lw $t1, -3064($fp)
	lw $t2, -3092($fp)
	bgt $t1, $t2, label377
	j label378
label377:
	li $t0, 1
	sw $t0, -3028($fp)
label378:
	lw $ra, -4($fp)
	lw $v0, -3028($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -312($fp)
	sw $t0, -3096($fp)
	lw $t1, -3096($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label386
label385:
	li $t0, 0
	sw $t0, -3100($fp)
	addi $t0, $fp, -168
	sw $t0, -3104($fp)
	lw $t0, -1572($fp)
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
	lw $t1, -3120($fp)
	li $t2, 0
	bne $t1, $t2, label388
	j label389
label388:
	li $t0, 1
	sw $t0, -3100($fp)
label389:
	lw $t0, -360($fp)
	sw $t0, -3124($fp)
	lw $t0, -3100($fp)
	lw $t1, -3124($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3128($fp)
	li $t0, 0
	sw $t0, -3132($fp)
	lw $t0, -384($fp)
	sw $t0, -3136($fp)
	lw $t1, -3136($fp)
	li $t2, 0
	bne $t1, $t2, label391
	j label390
label390:
	li $t0, 1
	sw $t0, -3132($fp)
label391:
	li $t0, 0
	lw $t1, -3132($fp)
	sub $t0, $t0, $t1
	sw $t0, -3140($fp)
	li $t0, 0
	lw $t1, -3140($fp)
	sub $t0, $t0, $t1
	sw $t0, -3144($fp)
	lw $t0, -3128($fp)
	lw $t1, -3144($fp)
	sub $t0, $t0, $t1
	sw $t0, -3148($fp)
	j label387
label386:
	li $t0, 0
	sw $t0, -3152($fp)
	li $t0, 0
	sw $t0, -3156($fp)
	li $t0, 5357
	sw $t0, -3160($fp)
	li $t0, 0
	lw $t1, -3160($fp)
	sub $t0, $t0, $t1
	sw $t0, -3164($fp)
	lw $t0, -1512($fp)
	sw $t0, -3168($fp)
	lw $t1, -3164($fp)
	lw $t2, -3168($fp)
	beq $t1, $t2, label397
	j label398
label397:
	li $t0, 1
	sw $t0, -3156($fp)
label398:
	li $t0, 0
	sw $t0, -3172($fp)
	lw $t0, -300($fp)
	sw $t0, -3176($fp)
	lw $t0, -1308($fp)
	sw $t0, -3180($fp)
	lw $t0, -3176($fp)
	lw $t1, -3180($fp)
	sub $t0, $t0, $t1
	sw $t0, -3184($fp)
	li $t0, 14396
	sw $t0, -3188($fp)
	lw $t1, -3184($fp)
	lw $t2, -3188($fp)
	beq $t1, $t2, label399
	j label400
label399:
	li $t0, 1
	sw $t0, -3172($fp)
label400:
	addi $sp, $sp, -4
	lw $t0, -3172($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3192($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3196($fp)
	lw $t0, -1620($fp)
	sw $t0, -3200($fp)
	lw $t1, -3200($fp)
	li $t2, 0
	bne $t1, $t2, label403
	j label402
label403:
	li $t0, 36528
	sw $t0, -3204($fp)
	lw $t1, -3204($fp)
	li $t2, 0
	bne $t1, $t2, label401
	j label402
label401:
	li $t0, 1
	sw $t0, -3196($fp)
label402:
	li $t0, 0
	sw $t0, -3208($fp)
	li $t0, 0
	sw $t0, -3212($fp)
	li $t0, 13649
	sw $t0, -3216($fp)
	li $t0, 54159
	sw $t0, -3220($fp)
	lw $t1, -3216($fp)
	lw $t2, -3220($fp)
	blt $t1, $t2, label406
	j label407
label406:
	li $t0, 1
	sw $t0, -3212($fp)
label407:
	li $t0, 0
	sw $t0, -3224($fp)
	lw $t0, -360($fp)
	sw $t0, -3228($fp)
	lw $t1, -3228($fp)
	li $t2, 0
	bne $t1, $t2, label409
	j label408
label408:
	li $t0, 1
	sw $t0, -3224($fp)
label409:
	addi $sp, $sp, -4
	lw $t0, -3212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3224($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3232($fp)
	addi $sp, $sp, 12
	li $t0, 7879
	sw $t0, -3236($fp)
	lw $t1, -3232($fp)
	lw $t2, -3236($fp)
	bge $t1, $t2, label404
	j label405
label404:
	li $t0, 1
	sw $t0, -3208($fp)
label405:
	li $t0, 0
	sw $t0, -3240($fp)
	lw $t0, -1248($fp)
	sw $t0, -3244($fp)
	li $t0, 29528
	sw $t0, -3248($fp)
	lw $t0, -3244($fp)
	lw $t1, -3248($fp)
	add $t0, $t0, $t1
	sw $t0, -3252($fp)
	li $t0, 52636
	sw $t0, -3256($fp)
	lw $t1, -3252($fp)
	lw $t2, -3256($fp)
	blt $t1, $t2, label410
	j label411
label410:
	li $t0, 1
	sw $t0, -3240($fp)
label411:
	li $t0, 0
	sw $t0, -3260($fp)
	li $t0, 0
	sw $t0, -3264($fp)
	lw $t0, -1876($fp)
	sw $t0, -3268($fp)
	lw $t0, -1572($fp)
	sw $t0, -3272($fp)
	lw $t1, -3268($fp)
	lw $t2, -3272($fp)
	bgt $t1, $t2, label414
	j label415
label414:
	li $t0, 1
	sw $t0, -3264($fp)
label415:
	lw $t0, -1548($fp)
	sw $t0, -3276($fp)
	lw $t1, -3264($fp)
	lw $t2, -3276($fp)
	bne $t1, $t2, label412
	j label413
label412:
	li $t0, 1
	sw $t0, -3260($fp)
label413:
	addi $sp, $sp, -4
	lw $t0, -3208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3260($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -3280($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -3284($fp)
	li $t0, 3308
	sw $t0, -3288($fp)
	lw $t0, -1596($fp)
	sw $t0, -3292($fp)
	lw $t0, -3288($fp)
	lw $t1, -3292($fp)
	sub $t0, $t0, $t1
	sw $t0, -3296($fp)
	lw $t1, -3296($fp)
	li $t2, 0
	bne $t1, $t2, label418
	j label417
label418:
	lw $t0, -1996($fp)
	sw $t0, -3300($fp)
	lw $t1, -3300($fp)
	li $t2, 0
	bne $t1, $t2, label416
	j label417
label416:
	li $t0, 1
	sw $t0, -3284($fp)
label417:
	addi $sp, $sp, -4
	lw $t0, -3280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3284($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -3304($fp)
	addi $sp, $sp, 12
	lw $t0, -1236($fp)
	sw $t0, -3308($fp)
	lw $t0, -3304($fp)
	lw $t1, -3308($fp)
	mul $t0, $t0, $t1
	sw $t0, -3312($fp)
	li $t0, 0
	sw $t0, -3316($fp)
	li $t0, 0
	sw $t0, -3320($fp)
	lw $t0, -1948($fp)
	sw $t0, -3324($fp)
	lw $t1, -3324($fp)
	li $t2, 0
	bne $t1, $t2, label422
	j label421
label421:
	li $t0, 1
	sw $t0, -3320($fp)
label422:
	lw $t0, -1656($fp)
	sw $t0, -3328($fp)
	lw $t1, -3320($fp)
	lw $t2, -3328($fp)
	bgt $t1, $t2, label419
	j label420
label419:
	li $t0, 1
	sw $t0, -3316($fp)
label420:
	addi $sp, $sp, -4
	lw $t0, -3156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3316($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3332($fp)
	addi $sp, $sp, 24
	li $t0, 45933
	sw $t0, -3336($fp)
	lw $t1, -3332($fp)
	lw $t2, -3336($fp)
	bgt $t1, $t2, label395
	j label396
label395:
	li $t0, 1
	sw $t0, -3152($fp)
label396:
	li $t0, 0
	sw $t0, -3340($fp)
	li $t0, 47004
	sw $t0, -3344($fp)
	lw $t0, -624($fp)
	sw $t0, -3348($fp)
	lw $t0, -3344($fp)
	lw $t1, -3348($fp)
	add $t0, $t0, $t1
	sw $t0, -3352($fp)
	li $t0, 37986
	sw $t0, -3356($fp)
	lw $t1, -3352($fp)
	lw $t2, -3356($fp)
	bgt $t1, $t2, label423
	j label424
label423:
	li $t0, 1
	sw $t0, -3340($fp)
label424:
	li $t0, 0
	sw $t0, -3360($fp)
	li $t0, 35003
	sw $t0, -3364($fp)
	lw $t0, -1380($fp)
	sw $t0, -3368($fp)
	lw $t1, -3364($fp)
	lw $t2, -3368($fp)
	beq $t1, $t2, label425
	j label426
label425:
	li $t0, 1
	sw $t0, -3360($fp)
label426:
	addi $sp, $sp, -4
	lw $t0, -3152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3360($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3372($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -3372($fp)
	sub $t0, $t0, $t1
	sw $t0, -3376($fp)
	lw $t1, -3376($fp)
	li $t2, 0
	bne $t1, $t2, label392
	j label393
label392:
	addi $t0, $fp, -60
	sw $t0, -3380($fp)
	li $t0, 0
	sw $t0, -3384($fp)
	li $t0, 59053
	sw $t0, -3388($fp)
	lw $t0, -324($fp)
	sw $t0, -3392($fp)
	lw $t0, -3388($fp)
	lw $t1, -3392($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3396($fp)
	li $t0, 0
	sw $t0, -3400($fp)
	li $t0, 42210
	sw $t0, -3404($fp)
	lw $t1, -3404($fp)
	li $t2, 0
	bne $t1, $t2, label432
	j label434
label434:
	li $t0, 43806
	sw $t0, -3408($fp)
	lw $t1, -3408($fp)
	li $t2, 0
	bne $t1, $t2, label432
	j label433
label432:
	li $t0, 1
	sw $t0, -3400($fp)
label433:
	addi $sp, $sp, -4
	lw $t0, -3396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3400($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3412($fp)
	addi $sp, $sp, 12
	li $t0, 57552
	sw $t0, -3416($fp)
	lw $t1, -3412($fp)
	lw $t2, -3416($fp)
	bne $t1, $t2, label430
	j label431
label430:
	li $t0, 1
	sw $t0, -3384($fp)
label431:
	addi $sp, $sp, -4
	lw $t0, -3384($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3420($fp)
	addi $sp, $sp, 8
	li $t0, 27506
	sw $t0, -3424($fp)
	lw $t0, -3420($fp)
	lw $t1, -3424($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3428($fp)
	li $t0, 4
	lw $t1, -3428($fp)
	mul $t0, $t0, $t1
	sw $t0, -3432($fp)
	lw $t0, -3432($fp)
	lw $t1, -3380($fp)
	add $t0, $t0, $t1
	sw $t0, -3436($fp)
	lw $t0, -3436($fp)
	lw $t1, 0($t0)
	sw $t1, -3440($fp)
	li $t0, 46475
	sw $t0, -3444($fp)
	addi $t0, $fp, -1856
	sw $t0, -3448($fp)
	li $t0, 5
	sw $t0, -3452($fp)
	li $t0, 4
	lw $t1, -3452($fp)
	mul $t0, $t0, $t1
	sw $t0, -3456($fp)
	lw $t0, -3456($fp)
	lw $t1, -3448($fp)
	add $t0, $t0, $t1
	sw $t0, -3460($fp)
	lw $t0, -3460($fp)
	lw $t1, 0($t0)
	sw $t1, -3464($fp)
	lw $t0, -3444($fp)
	lw $t1, -3464($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3468($fp)
	lw $t0, -3440($fp)
	lw $t1, -3468($fp)
	add $t0, $t0, $t1
	sw $t0, -3472($fp)
	lw $t1, -3472($fp)
	li $t2, 0
	bne $t1, $t2, label427
	j label428
label427:
	lw $t0, -1632($fp)
	sw $t0, -3476($fp)
	li $t0, 0
	lw $t1, -3476($fp)
	sub $t0, $t0, $t1
	sw $t0, -3480($fp)
	li $t0, 0
	sw $t0, -3484($fp)
	li $t0, 24123
	sw $t0, -3488($fp)
	lw $t1, -3488($fp)
	li $t2, 0
	bne $t1, $t2, label438
	j label439
label438:
	li $t0, 1
	sw $t0, -3484($fp)
label439:
	li $t0, 58268
	sw $t0, -3492($fp)
	lw $t0, -348($fp)
	sw $t0, -3496($fp)
	lw $t0, -3492($fp)
	lw $t1, -3496($fp)
	mul $t0, $t0, $t1
	sw $t0, -3500($fp)
	lw $t0, -3484($fp)
	lw $t1, -3500($fp)
	sub $t0, $t0, $t1
	sw $t0, -3504($fp)
	lw $t1, -3480($fp)
	lw $t2, -3504($fp)
	beq $t1, $t2, label435
	j label436
label435:
	li $t0, 0
	sw $t0, -3508($fp)
	li $t0, 0
	sw $t0, -3512($fp)
	lw $t0, -1704($fp)
	sw $t0, -3516($fp)
	li $t0, 46401
	sw $t0, -3520($fp)
	lw $t0, -3516($fp)
	lw $t1, -3520($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3524($fp)
	lw $t0, -1680($fp)
	sw $t0, -3528($fp)
	lw $t0, -3524($fp)
	lw $t1, -3528($fp)
	sub $t0, $t0, $t1
	sw $t0, -3532($fp)
	li $t0, 35348
	sw $t0, -3536($fp)
	lw $t0, -1716($fp)
	sw $t0, -3540($fp)
	lw $t0, -3536($fp)
	lw $t1, -3540($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3544($fp)
	lw $t1, -3532($fp)
	lw $t2, -3544($fp)
	beq $t1, $t2, label443
	j label444
label443:
	li $t0, 1
	sw $t0, -3512($fp)
label444:
	lw $t0, -2020($fp)
	sw $t0, -3548($fp)
	li $t0, 0
	lw $t1, -3548($fp)
	sub $t0, $t0, $t1
	sw $t0, -3552($fp)
	lw $t1, -3512($fp)
	lw $t2, -3552($fp)
	bne $t1, $t2, label442
	j label441
label442:
	lw $t0, -348($fp)
	sw $t0, -3556($fp)
	lw $t1, -3556($fp)
	li $t2, 0
	bne $t1, $t2, label440
	j label441
label440:
	li $t0, 1
	sw $t0, -3508($fp)
label441:
	j label437
label436:
	li $t0, 0
	sw $t0, -3560($fp)
	li $t0, 0
	sw $t0, -3564($fp)
	addi $t0, $fp, -80
	sw $t0, -3568($fp)
	li $t0, 1
	sw $t0, -3572($fp)
	li $t0, 4
	lw $t1, -3572($fp)
	mul $t0, $t0, $t1
	sw $t0, -3576($fp)
	lw $t0, -3576($fp)
	lw $t1, -3568($fp)
	add $t0, $t0, $t1
	sw $t0, -3580($fp)
	lw $t0, -3580($fp)
	lw $t1, 0($t0)
	sw $t1, -3584($fp)
	lw $t1, -3584($fp)
	li $t2, 0
	bne $t1, $t2, label449
	j label448
label448:
	li $t0, 1
	sw $t0, -3564($fp)
label449:
	li $t0, 0
	sw $t0, -3588($fp)
	lw $t0, -348($fp)
	sw $t0, -3592($fp)
	lw $t0, -1632($fp)
	sw $t0, -3596($fp)
	lw $t1, -3592($fp)
	lw $t2, -3596($fp)
	beq $t1, $t2, label452
	j label451
label452:
	li $t0, 30794
	sw $t0, -3600($fp)
	lw $t1, -3600($fp)
	li $t2, 0
	bne $t1, $t2, label450
	j label451
label450:
	li $t0, 1
	sw $t0, -3588($fp)
label451:
	li $t0, 0
	sw $t0, -3604($fp)
	li $t0, 4867
	sw $t0, -3608($fp)
	lw $t0, -348($fp)
	sw $t0, -3612($fp)
	lw $t0, -3608($fp)
	lw $t1, -3612($fp)
	mul $t0, $t0, $t1
	sw $t0, -3616($fp)
	lw $t1, -3616($fp)
	li $t2, 0
	bne $t1, $t2, label453
	j label455
label455:
	li $t0, 52792
	sw $t0, -3620($fp)
	lw $t1, -3620($fp)
	li $t2, 0
	bne $t1, $t2, label453
	j label454
label453:
	li $t0, 1
	sw $t0, -3604($fp)
label454:
	li $t0, 0
	sw $t0, -3624($fp)
	li $t0, 13152
	sw $t0, -3628($fp)
	lw $t1, -3628($fp)
	li $t2, 0
	bne $t1, $t2, label457
	j label456
label456:
	li $t0, 1
	sw $t0, -3624($fp)
label457:
	li $t0, 17788
	sw $t0, -3632($fp)
	lw $t0, -3624($fp)
	lw $t1, -3632($fp)
	sub $t0, $t0, $t1
	sw $t0, -3636($fp)
	li $t0, 0
	sw $t0, -3640($fp)
	lw $t0, -1876($fp)
	sw $t0, -3644($fp)
	lw $t1, -3644($fp)
	li $t2, 0
	bne $t1, $t2, label459
	j label460
label460:
	lw $t0, -1332($fp)
	sw $t0, -3648($fp)
	lw $t1, -3648($fp)
	li $t2, 0
	bne $t1, $t2, label458
	j label459
label458:
	li $t0, 1
	sw $t0, -3640($fp)
label459:
	li $t0, 0
	sw $t0, -3652($fp)
	li $t0, 4009
	sw $t0, -3656($fp)
	lw $t0, -1272($fp)
	sw $t0, -3660($fp)
	lw $t1, -3656($fp)
	lw $t2, -3660($fp)
	blt $t1, $t2, label461
	j label462
label461:
	li $t0, 1
	sw $t0, -3652($fp)
label462:
	addi $sp, $sp, -4
	lw $t0, -3636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3652($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -3664($fp)
	addi $sp, $sp, 16
	li $t0, 49325
	sw $t0, -3668($fp)
	lw $t0, -3664($fp)
	lw $t1, -3668($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3672($fp)
	li $t0, 0
	sw $t0, -3676($fp)
	li $t0, 0
	sw $t0, -3680($fp)
	lw $t0, -396($fp)
	sw $t0, -3684($fp)
	lw $t0, -1584($fp)
	sw $t0, -3688($fp)
	lw $t1, -3684($fp)
	lw $t2, -3688($fp)
	bgt $t1, $t2, label465
	j label466
label465:
	li $t0, 1
	sw $t0, -3680($fp)
label466:
	li $t0, 51742
	sw $t0, -3692($fp)
	lw $t1, -3680($fp)
	lw $t2, -3692($fp)
	bne $t1, $t2, label463
	j label464
label463:
	li $t0, 1
	sw $t0, -3676($fp)
label464:
	addi $sp, $sp, -4
	lw $t0, -3564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3676($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3696($fp)
	addi $sp, $sp, 24
	lw $t0, -1716($fp)
	sw $t0, -3700($fp)
	lw $t0, -2032($fp)
	sw $t0, -3704($fp)
	lw $t0, -3700($fp)
	lw $t1, -3704($fp)
	mul $t0, $t0, $t1
	sw $t0, -3708($fp)
	li $t0, 0
	lw $t1, -3708($fp)
	sub $t0, $t0, $t1
	sw $t0, -3712($fp)
	lw $t0, -3696($fp)
	lw $t1, -3712($fp)
	add $t0, $t0, $t1
	sw $t0, -3716($fp)
	lw $t1, -3716($fp)
	li $t2, 0
	bne $t1, $t2, label447
	j label446
label447:
	li $t0, 0
	sw $t0, -3720($fp)
	lw $t0, -1972($fp)
	sw $t0, -3724($fp)
	lw $t1, -3724($fp)
	li $t2, 0
	bne $t1, $t2, label469
	j label468
label469:
	lw $t0, -2032($fp)
	sw $t0, -3728($fp)
	lw $t1, -3728($fp)
	li $t2, 0
	bne $t1, $t2, label467
	j label468
label467:
	li $t0, 1
	sw $t0, -3720($fp)
label468:
	addi $sp, $sp, -4
	lw $t0, -3720($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3732($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3736($fp)
	li $t0, 4214
	sw $t0, -3740($fp)
	li $t0, 0
	lw $t1, -3740($fp)
	sub $t0, $t0, $t1
	sw $t0, -3744($fp)
	lw $t1, -3744($fp)
	li $t2, 0
	bne $t1, $t2, label470
	j label472
label472:
	li $t0, 48945
	sw $t0, -3748($fp)
	lw $t1, -3748($fp)
	li $t2, 0
	bne $t1, $t2, label470
	j label471
label470:
	li $t0, 1
	sw $t0, -3736($fp)
label471:
	li $t0, 0
	sw $t0, -3752($fp)
	li $t0, 60322
	sw $t0, -3756($fp)
	lw $t1, -3756($fp)
	li $t2, 0
	bne $t1, $t2, label474
	j label473
label473:
	li $t0, 1
	sw $t0, -3752($fp)
label474:
	li $t0, 29954
	sw $t0, -3760($fp)
	lw $t0, -3752($fp)
	lw $t1, -3760($fp)
	mul $t0, $t0, $t1
	sw $t0, -3764($fp)
	addi $sp, $sp, -4
	lw $t0, -3732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3764($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3768($fp)
	addi $sp, $sp, 16
	lw $t1, -3768($fp)
	li $t2, 0
	bne $t1, $t2, label445
	j label446
label445:
	li $t0, 1
	sw $t0, -3560($fp)
label446:
label437:
	j label429
label428:
	addi $t0, $fp, -1764
	sw $t0, -3772($fp)
	lw $t0, -1984($fp)
	sw $t0, -3776($fp)
	li $t0, 4
	lw $t1, -3776($fp)
	mul $t0, $t0, $t1
	sw $t0, -3780($fp)
	lw $t0, -3780($fp)
	lw $t1, -3772($fp)
	add $t0, $t0, $t1
	sw $t0, -3784($fp)
	lw $t0, -3784($fp)
	lw $t1, 0($t0)
	sw $t1, -3788($fp)
	lw $t0, -3788($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -3792($fp)
	lw $t0, -3792($fp)
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	sw $t0, -3796($fp)
label429:
	j label394
label393:
	li $t0, 0
	sw $t0, -3800($fp)
	lw $t0, -1960($fp)
	sw $t0, -3804($fp)
	li $t0, 21139
	sw $t0, -3808($fp)
	lw $t0, -3804($fp)
	lw $t1, -3808($fp)
	mul $t0, $t0, $t1
	sw $t0, -3812($fp)
	li $t0, 0
	lw $t1, -3812($fp)
	sub $t0, $t0, $t1
	sw $t0, -3816($fp)
	li $t0, 0
	sw $t0, -3820($fp)
	li $t0, 63342
	sw $t0, -3824($fp)
	lw $t0, -372($fp)
	sw $t0, -3828($fp)
	lw $t0, -3824($fp)
	lw $t1, -3828($fp)
	add $t0, $t0, $t1
	sw $t0, -3832($fp)
	li $t0, 43190
	sw $t0, -3836($fp)
	lw $t1, -3832($fp)
	lw $t2, -3836($fp)
	bgt $t1, $t2, label477
	j label478
label477:
	li $t0, 1
	sw $t0, -3820($fp)
label478:
	addi $t0, $fp, -168
	sw $t0, -3840($fp)
	li $t0, 2
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
	li $t0, 0
	lw $t1, -3856($fp)
	sub $t0, $t0, $t1
	sw $t0, -3860($fp)
	addi $sp, $sp, -4
	lw $t0, -3816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3860($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -3864($fp)
	addi $sp, $sp, 16
	li $t0, 40016
	sw $t0, -3868($fp)
	li $t0, 21461
	sw $t0, -3872($fp)
	lw $t0, -3868($fp)
	lw $t1, -3872($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3876($fp)
	lw $t0, -360($fp)
	sw $t0, -3880($fp)
	lw $t0, -3876($fp)
	lw $t1, -3880($fp)
	mul $t0, $t0, $t1
	sw $t0, -3884($fp)
	lw $t0, -3864($fp)
	lw $t1, -3884($fp)
	add $t0, $t0, $t1
	sw $t0, -3888($fp)
	li $t0, 14657
	sw $t0, -3892($fp)
	li $t0, 32033
	sw $t0, -3896($fp)
	lw $t0, -3892($fp)
	lw $t1, -3896($fp)
	mul $t0, $t0, $t1
	sw $t0, -3900($fp)
	li $t0, 48967
	sw $t0, -3904($fp)
	li $t0, 0
	lw $t1, -3904($fp)
	sub $t0, $t0, $t1
	sw $t0, -3908($fp)
	lw $t0, -3900($fp)
	lw $t1, -3908($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3912($fp)
	lw $t1, -3888($fp)
	lw $t2, -3912($fp)
	blt $t1, $t2, label475
	j label476
label475:
	li $t0, 1
	sw $t0, -3800($fp)
label476:
label394:
label387:
	lw $t0, -1864($fp)
	sw $t0, -3916($fp)
	lw $t0, -3916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1876($fp)
	sw $t0, -3920($fp)
	lw $t0, -3920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1888($fp)
	sw $t0, -3924($fp)
	lw $t0, -3924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1900($fp)
	sw $t0, -3928($fp)
	lw $t0, -3928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1828
	sw $t0, -3932($fp)
	li $t0, 0
	sw $t0, -3936($fp)
	li $t0, 4
	lw $t1, -3936($fp)
	mul $t0, $t0, $t1
	sw $t0, -3940($fp)
	lw $t0, -3940($fp)
	lw $t1, -3932($fp)
	add $t0, $t0, $t1
	sw $t0, -3944($fp)
	lw $t0, -3944($fp)
	lw $t1, 0($t0)
	sw $t1, -3948($fp)
	lw $t0, -3948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1936($fp)
	sw $t0, -3952($fp)
	lw $t0, -3952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1948($fp)
	sw $t0, -3956($fp)
	lw $t0, -3956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1960($fp)
	sw $t0, -3960($fp)
	lw $t0, -3960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1972($fp)
	sw $t0, -3964($fp)
	lw $t0, -3964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1984($fp)
	sw $t0, -3968($fp)
	lw $t0, -3968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1996($fp)
	sw $t0, -3972($fp)
	lw $t0, -3972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2008($fp)
	sw $t0, -3976($fp)
	lw $t0, -3976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2020($fp)
	sw $t0, -3980($fp)
	lw $t0, -3980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2032($fp)
	sw $t0, -3984($fp)
	lw $t0, -3984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1856
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
	addi $t0, $fp, -1856
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
	addi $t0, $fp, -1856
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
	addi $t0, $fp, -1856
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
	addi $t0, $fp, -1856
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
	addi $t0, $fp, -1856
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
	addi $t0, $fp, -1856
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
	li $t0, 0
	sw $t0, -4128($fp)
	li $t0, 61132
	sw $t0, -4132($fp)
	li $t0, 0
	sw $t0, -4136($fp)
	lw $t0, -1548($fp)
	sw $t0, -4140($fp)
	li $t0, 46469
	sw $t0, -4144($fp)
	li $t0, 0
	sw $t0, -4148($fp)
	addi $t0, $fp, -172
	sw $t0, -4152($fp)
	lw $t0, -1608($fp)
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
	lw $t0, -1572($fp)
	sw $t0, -4172($fp)
	lw $t1, -4168($fp)
	lw $t2, -4172($fp)
	bne $t1, $t2, label483
	j label484
label483:
	li $t0, 1
	sw $t0, -4148($fp)
label484:
	li $t0, 19719
	sw $t0, -4176($fp)
	li $t0, 0
	sw $t0, -4180($fp)
	li $t0, 53737
	sw $t0, -4184($fp)
	lw $t0, -1584($fp)
	sw $t0, -4188($fp)
	lw $t0, -4184($fp)
	lw $t1, -4188($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4192($fp)
	li $t0, 39168
	sw $t0, -4196($fp)
	lw $t1, -4192($fp)
	lw $t2, -4196($fp)
	bne $t1, $t2, label485
	j label486
label485:
	li $t0, 1
	sw $t0, -4180($fp)
label486:
	addi $sp, $sp, -4
	lw $t0, -4140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4180($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4200($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -4200($fp)
	sub $t0, $t0, $t1
	sw $t0, -4204($fp)
	li $t0, 0
	sw $t0, -4208($fp)
	li $t0, 32675
	sw $t0, -4212($fp)
	lw $t1, -4212($fp)
	li $t2, 0
	bne $t1, $t2, label490
	j label488
label490:
	li $t0, 24042
	sw $t0, -4216($fp)
	lw $t1, -4216($fp)
	li $t2, 0
	bne $t1, $t2, label489
	j label488
label489:
	lw $t0, -1212($fp)
	sw $t0, -4220($fp)
	lw $t1, -4220($fp)
	li $t2, 0
	bne $t1, $t2, label487
	j label488
label487:
	li $t0, 1
	sw $t0, -4208($fp)
label488:
	lw $t0, -384($fp)
	sw $t0, -4224($fp)
	li $t0, 55067
	sw $t0, -4228($fp)
	lw $t0, -4224($fp)
	lw $t1, -4228($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4232($fp)
	li $t0, 0
	sw $t0, -4236($fp)
	li $t0, 20033
	sw $t0, -4240($fp)
	lw $t1, -4240($fp)
	li $t2, 0
	bne $t1, $t2, label492
	j label491
label491:
	li $t0, 1
	sw $t0, -4236($fp)
label492:
	lw $t0, -1888($fp)
	sw $t0, -4244($fp)
	lw $t0, -4236($fp)
	lw $t1, -4244($fp)
	add $t0, $t0, $t1
	sw $t0, -4248($fp)
	addi $sp, $sp, -4
	lw $t0, -4208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4248($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -4252($fp)
	addi $sp, $sp, 16
	lw $t1, -4204($fp)
	lw $t2, -4252($fp)
	blt $t1, $t2, label481
	j label482
label481:
	li $t0, 1
	sw $t0, -4136($fp)
label482:
	lw $t1, -4132($fp)
	lw $t2, -4136($fp)
	bne $t1, $t2, label479
	j label480
label479:
	li $t0, 1
	sw $t0, -4128($fp)
label480:
	lw $ra, -4($fp)
	lw $v0, -4128($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1864($fp)
	sw $t0, -4256($fp)
	lw $t0, -4256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1876($fp)
	sw $t0, -4260($fp)
	lw $t0, -4260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1888($fp)
	sw $t0, -4264($fp)
	lw $t0, -4264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1900($fp)
	sw $t0, -4268($fp)
	lw $t0, -4268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1828
	sw $t0, -4272($fp)
	li $t0, 0
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
	lw $t0, -1936($fp)
	sw $t0, -4292($fp)
	lw $t0, -4292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1948($fp)
	sw $t0, -4296($fp)
	lw $t0, -4296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1960($fp)
	sw $t0, -4300($fp)
	lw $t0, -4300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1972($fp)
	sw $t0, -4304($fp)
	lw $t0, -4304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1984($fp)
	sw $t0, -4308($fp)
	lw $t0, -4308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1996($fp)
	sw $t0, -4312($fp)
	lw $t0, -4312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2008($fp)
	sw $t0, -4316($fp)
	lw $t0, -4316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2020($fp)
	sw $t0, -4320($fp)
	lw $t0, -4320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2032($fp)
	sw $t0, -4324($fp)
	lw $t0, -4324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1856
	sw $t0, -4328($fp)
	li $t0, 0
	sw $t0, -4332($fp)
	li $t0, 4
	lw $t1, -4332($fp)
	mul $t0, $t0, $t1
	sw $t0, -4336($fp)
	lw $t0, -4336($fp)
	lw $t1, -4328($fp)
	add $t0, $t0, $t1
	sw $t0, -4340($fp)
	lw $t0, -4340($fp)
	lw $t1, 0($t0)
	sw $t1, -4344($fp)
	lw $t0, -4344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1856
	sw $t0, -4348($fp)
	li $t0, 1
	sw $t0, -4352($fp)
	li $t0, 4
	lw $t1, -4352($fp)
	mul $t0, $t0, $t1
	sw $t0, -4356($fp)
	lw $t0, -4356($fp)
	lw $t1, -4348($fp)
	add $t0, $t0, $t1
	sw $t0, -4360($fp)
	lw $t0, -4360($fp)
	lw $t1, 0($t0)
	sw $t1, -4364($fp)
	lw $t0, -4364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1856
	sw $t0, -4368($fp)
	li $t0, 2
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
	lw $t0, -4384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1856
	sw $t0, -4388($fp)
	li $t0, 3
	sw $t0, -4392($fp)
	li $t0, 4
	lw $t1, -4392($fp)
	mul $t0, $t0, $t1
	sw $t0, -4396($fp)
	lw $t0, -4396($fp)
	lw $t1, -4388($fp)
	add $t0, $t0, $t1
	sw $t0, -4400($fp)
	lw $t0, -4400($fp)
	lw $t1, 0($t0)
	sw $t1, -4404($fp)
	lw $t0, -4404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1856
	sw $t0, -4408($fp)
	li $t0, 4
	sw $t0, -4412($fp)
	li $t0, 4
	lw $t1, -4412($fp)
	mul $t0, $t0, $t1
	sw $t0, -4416($fp)
	lw $t0, -4416($fp)
	lw $t1, -4408($fp)
	add $t0, $t0, $t1
	sw $t0, -4420($fp)
	lw $t0, -4420($fp)
	lw $t1, 0($t0)
	sw $t1, -4424($fp)
	lw $t0, -4424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1856
	sw $t0, -4428($fp)
	li $t0, 5
	sw $t0, -4432($fp)
	li $t0, 4
	lw $t1, -4432($fp)
	mul $t0, $t0, $t1
	sw $t0, -4436($fp)
	lw $t0, -4436($fp)
	lw $t1, -4428($fp)
	add $t0, $t0, $t1
	sw $t0, -4440($fp)
	lw $t0, -4440($fp)
	lw $t1, 0($t0)
	sw $t1, -4444($fp)
	lw $t0, -4444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1856
	sw $t0, -4448($fp)
	li $t0, 6
	sw $t0, -4452($fp)
	li $t0, 4
	lw $t1, -4452($fp)
	mul $t0, $t0, $t1
	sw $t0, -4456($fp)
	lw $t0, -4456($fp)
	lw $t1, -4448($fp)
	add $t0, $t0, $t1
	sw $t0, -4460($fp)
	lw $t0, -4460($fp)
	lw $t1, 0($t0)
	sw $t1, -4464($fp)
	lw $t0, -4464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 2683
	sw $t0, -4468($fp)
	lw $ra, -4($fp)
	lw $v0, -4468($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -4472($fp)
	addi $t0, $fp, -168
	sw $t0, -4476($fp)
	li $t0, 0
	sw $t0, -4480($fp)
	lw $t0, -1584($fp)
	sw $t0, -4484($fp)
	li $t0, 0
	lw $t1, -4484($fp)
	sub $t0, $t0, $t1
	sw $t0, -4488($fp)
	lw $t0, -1548($fp)
	sw $t0, -4492($fp)
	lw $t1, -4488($fp)
	lw $t2, -4492($fp)
	bge $t1, $t2, label496
	j label497
label496:
	li $t0, 1
	sw $t0, -4480($fp)
label497:
	li $t0, 4
	lw $t1, -4480($fp)
	mul $t0, $t0, $t1
	sw $t0, -4496($fp)
	lw $t0, -4496($fp)
	lw $t1, -4476($fp)
	add $t0, $t0, $t1
	sw $t0, -4500($fp)
	lw $t0, -4500($fp)
	lw $t1, 0($t0)
	sw $t1, -4504($fp)
	lw $t1, -4504($fp)
	li $t2, 0
	bne $t1, $t2, label495
	j label494
label495:
	li $t0, 0
	sw $t0, -4508($fp)
	lw $t0, -1584($fp)
	sw $t0, -4512($fp)
	lw $t1, -4512($fp)
	li $t2, 0
	bne $t1, $t2, label499
	j label498
label498:
	li $t0, 1
	sw $t0, -4508($fp)
label499:
	li $t0, 7832
	sw $t0, -4516($fp)
	lw $t0, -4508($fp)
	lw $t1, -4516($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4520($fp)
	li $t0, 0
	lw $t1, -4520($fp)
	sub $t0, $t0, $t1
	sw $t0, -4524($fp)
	lw $t1, -4524($fp)
	li $t2, 0
	bne $t1, $t2, label493
	j label494
label493:
	li $t0, 1
	sw $t0, -4472($fp)
label494:
	addi $t0, $fp, -1764
	sw $t0, -4528($fp)
	li $t0, 0
	sw $t0, -4532($fp)
	li $t0, 4
	lw $t1, -4532($fp)
	mul $t0, $t0, $t1
	sw $t0, -4536($fp)
	lw $t0, -4536($fp)
	lw $t1, -4528($fp)
	add $t0, $t0, $t1
	sw $t0, -4540($fp)
	lw $t0, -4540($fp)
	lw $t1, 0($t0)
	sw $t1, -4544($fp)
	lw $t0, -4544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1764
	sw $t0, -4548($fp)
	li $t0, 1
	sw $t0, -4552($fp)
	li $t0, 4
	lw $t1, -4552($fp)
	mul $t0, $t0, $t1
	sw $t0, -4556($fp)
	lw $t0, -4556($fp)
	lw $t1, -4548($fp)
	add $t0, $t0, $t1
	sw $t0, -4560($fp)
	lw $t0, -4560($fp)
	lw $t1, 0($t0)
	sw $t1, -4564($fp)
	lw $t0, -4564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1820($fp)
	sw $t0, -4568($fp)
	lw $t0, -4568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4572($fp)
	li $t0, 38625
	sw $t0, -4576($fp)
	lw $t0, -4576($fp)
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	sw $t0, -4580($fp)
	li $t0, 0
	sw $t0, -4584($fp)
	li $t0, 0
	sw $t0, -4588($fp)
	lw $t0, -1332($fp)
	sw $t0, -4592($fp)
	li $t0, 7551
	sw $t0, -4596($fp)
	lw $t1, -4592($fp)
	lw $t2, -4596($fp)
	ble $t1, $t2, label504
	j label505
label504:
	li $t0, 1
	sw $t0, -4588($fp)
label505:
	li $t0, 37720
	sw $t0, -4600($fp)
	lw $t1, -4588($fp)
	lw $t2, -4600($fp)
	beq $t1, $t2, label502
	j label503
label502:
	li $t0, 1
	sw $t0, -4584($fp)
label503:
	lw $t0, -1392($fp)
	sw $t0, -4604($fp)
	li $t0, 0
	lw $t1, -4604($fp)
	sub $t0, $t0, $t1
	sw $t0, -4608($fp)
	lw $t0, -384($fp)
	sw $t0, -4612($fp)
	lw $t0, -4608($fp)
	lw $t1, -4612($fp)
	add $t0, $t0, $t1
	sw $t0, -4616($fp)
	addi $sp, $sp, -4
	lw $t0, -4580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4616($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4620($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -24
	sw $t0, -4624($fp)
	li $t0, 4
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
	li $t0, 14823
	sw $t0, -4644($fp)
	lw $t0, -4640($fp)
	lw $t1, -4644($fp)
	mul $t0, $t0, $t1
	sw $t0, -4648($fp)
	li $t0, 50405
	sw $t0, -4652($fp)
	lw $t0, -4652($fp)
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	sw $t0, -4656($fp)
	addi $sp, $sp, -4
	lw $t0, -4648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4656($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -4660($fp)
	addi $sp, $sp, 12
	lw $t0, -1512($fp)
	sw $t0, -4664($fp)
	li $t0, 0
	lw $t1, -4664($fp)
	sub $t0, $t0, $t1
	sw $t0, -4668($fp)
	lw $t0, -4660($fp)
	lw $t1, -4668($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4672($fp)
	lw $t1, -4620($fp)
	lw $t2, -4672($fp)
	bne $t1, $t2, label500
	j label501
label500:
	li $t0, 1
	sw $t0, -4572($fp)
label501:
	lw $ra, -4($fp)
	lw $v0, -4572($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1380($fp)
	sw $t0, -4676($fp)
	addi $t0, $fp, -1764
	sw $t0, -4680($fp)
	lw $t0, -1620($fp)
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
	li $t0, 32498
	sw $t0, -4700($fp)
	lw $t0, -4696($fp)
	lw $t1, -4700($fp)
	mul $t0, $t0, $t1
	sw $t0, -4704($fp)
	lw $t0, -4676($fp)
	lw $t1, -4704($fp)
	sub $t0, $t0, $t1
	sw $t0, -4708($fp)
	lw $ra, -4($fp)
	lw $v0, -4708($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -4712($fp)
	li $t0, 16821
	sw $t0, -4716($fp)
	li $t0, 0
	lw $t1, -4716($fp)
	sub $t0, $t0, $t1
	sw $t0, -4720($fp)
	lw $t1, -4720($fp)
	li $t2, 0
	bne $t1, $t2, label507
	j label506
label506:
	li $t0, 1
	sw $t0, -4712($fp)
label507:
	li $t0, 0
	lw $t1, -4712($fp)
	sub $t0, $t0, $t1
	sw $t0, -4724($fp)
	lw $t0, -4724($fp)
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	sw $t0, -4728($fp)
	lw $ra, -4($fp)
	lw $v0, -4728($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1728($fp)
	sw $t0, -4732($fp)
	li $t0, 0
	lw $t1, -4732($fp)
	sub $t0, $t0, $t1
	sw $t0, -4736($fp)
	lw $t1, -4736($fp)
	li $t2, 0
	bne $t1, $t2, label508
	j label509
label508:
label511:
	addi $t0, $fp, -168
	sw $t0, -4740($fp)
	lw $t0, -1548($fp)
	sw $t0, -4744($fp)
	lw $t0, -1704($fp)
	sw $t0, -4748($fp)
	lw $t0, -4744($fp)
	lw $t1, -4748($fp)
	sub $t0, $t0, $t1
	sw $t0, -4752($fp)
	li $t0, 4
	lw $t1, -4752($fp)
	mul $t0, $t0, $t1
	sw $t0, -4756($fp)
	lw $t0, -4756($fp)
	lw $t1, -4740($fp)
	add $t0, $t0, $t1
	sw $t0, -4760($fp)
	lw $t0, -4760($fp)
	lw $t1, 0($t0)
	sw $t1, -4764($fp)
	lw $t0, -4764($fp)
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	sw $t0, -4768($fp)
	lw $t1, -4768($fp)
	li $t2, 0
	bne $t1, $t2, label512
	j label513
label512:
label514:
	li $t0, 52657
	sw $t0, -4772($fp)
	li $t0, 0
	sw $t0, -4776($fp)
	lw $t0, -336($fp)
	sw $t0, -4780($fp)
	lw $t1, -4780($fp)
	li $t2, 0
	bne $t1, $t2, label517
	j label518
label517:
	li $t0, 1
	sw $t0, -4776($fp)
label518:
	lw $t0, -4772($fp)
	lw $t1, -4776($fp)
	mul $t0, $t0, $t1
	sw $t0, -4784($fp)
	lw $t0, -1548($fp)
	sw $t0, -4788($fp)
	lw $t1, -4784($fp)
	lw $t2, -4788($fp)
	ble $t1, $t2, label515
	j label516
label515:
	li $t0, 14627
	sw $t0, -4792($fp)
	lw $t0, -1212($fp)
	sw $t0, -4796($fp)
	lw $t0, -4792($fp)
	lw $t1, -4796($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4800($fp)
	li $t0, 0
	lw $t1, -4800($fp)
	sub $t0, $t0, $t1
	sw $t0, -4804($fp)
	lw $t0, -1560($fp)
	sw $t0, -4808($fp)
	li $t0, 7705
	sw $t0, -4812($fp)
	lw $t0, -4808($fp)
	lw $t1, -4812($fp)
	sub $t0, $t0, $t1
	sw $t0, -4816($fp)
	addi $sp, $sp, -4
	lw $t0, -4804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4816($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -4820($fp)
	addi $sp, $sp, 12
	lw $t1, -4820($fp)
	li $t2, 0
	bne $t1, $t2, label520
	j label519
label519:
	lw $t0, -372($fp)
	sw $t0, -4824($fp)
	lw $t0, -4824($fp)
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	sw $t0, -4828($fp)
	addi $t0, $fp, -168
	sw $t0, -4832($fp)
	li $t0, 0
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
	addi $sp, $sp, -4
	lw $t0, -4828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4848($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -4852($fp)
	addi $sp, $sp, 12
	lw $t0, -4852($fp)
	sw $t0, -1596($fp)
	lw $t0, -1596($fp)
	sw $t0, -4856($fp)
	j label521
label520:
	li $t0, 0
	sw $t0, -4860($fp)
	li $t0, 0
	sw $t0, -4864($fp)
	li $t0, 43501
	sw $t0, -4868($fp)
	lw $t1, -4868($fp)
	li $t2, 0
	bne $t1, $t2, label525
	j label527
label527:
	li $t0, 21140
	sw $t0, -4872($fp)
	lw $t1, -4872($fp)
	li $t2, 0
	bne $t1, $t2, label525
	j label526
label525:
	li $t0, 1
	sw $t0, -4864($fp)
label526:
	addi $t0, $fp, -168
	sw $t0, -4876($fp)
	lw $t0, -1296($fp)
	sw $t0, -4880($fp)
	li $t0, 4
	lw $t1, -4880($fp)
	mul $t0, $t0, $t1
	sw $t0, -4884($fp)
	lw $t0, -4884($fp)
	lw $t1, -4876($fp)
	add $t0, $t0, $t1
	sw $t0, -4888($fp)
	lw $t0, -4888($fp)
	lw $t1, 0($t0)
	sw $t1, -4892($fp)
	li $t0, 0
	lw $t1, -4892($fp)
	sub $t0, $t0, $t1
	sw $t0, -4896($fp)
	li $t0, 0
	sw $t0, -4900($fp)
	li $t0, 54643
	sw $t0, -4904($fp)
	li $t0, 51772
	sw $t0, -4908($fp)
	lw $t0, -4904($fp)
	lw $t1, -4908($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4912($fp)
	lw $t0, -324($fp)
	sw $t0, -4916($fp)
	lw $t1, -4912($fp)
	lw $t2, -4916($fp)
	ble $t1, $t2, label528
	j label529
label528:
	li $t0, 1
	sw $t0, -4900($fp)
label529:
	addi $sp, $sp, -4
	lw $t0, -4864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4900($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -4920($fp)
	addi $sp, $sp, 16
	lw $t1, -4920($fp)
	li $t2, 0
	bne $t1, $t2, label524
	j label523
label524:
	lw $t0, -1356($fp)
	sw $t0, -4924($fp)
	lw $t0, -4924($fp)
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -4928($fp)
	addi $sp, $sp, -4
	lw $t0, -4928($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4932($fp)
	addi $sp, $sp, 8
	lw $t1, -4932($fp)
	li $t2, 0
	bne $t1, $t2, label522
	j label523
label522:
	li $t0, 1
	sw $t0, -4860($fp)
label523:
	lw $ra, -4($fp)
	lw $v0, -4860($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 35204
	sw $t0, -4936($fp)
	li $t0, 0
	lw $t1, -4936($fp)
	sub $t0, $t0, $t1
	sw $t0, -4940($fp)
	li $t0, 0
	lw $t1, -4940($fp)
	sub $t0, $t0, $t1
	sw $t0, -4944($fp)
	lw $t1, -4944($fp)
	li $t2, 0
	bne $t1, $t2, label530
	j label531
label530:
	lw $t0, -1548($fp)
	sw $t0, -4948($fp)
	li $t0, 0
	lw $t1, -4948($fp)
	sub $t0, $t0, $t1
	sw $t0, -4952($fp)
	j label532
label531:
	li $t0, 0
	sw $t0, -4956($fp)
	li $t0, 39097
	sw $t0, -4960($fp)
	li $t0, 9341
	sw $t0, -4964($fp)
	lw $t0, -4960($fp)
	lw $t1, -4964($fp)
	mul $t0, $t0, $t1
	sw $t0, -4968($fp)
	lw $t0, -1692($fp)
	sw $t0, -4972($fp)
	lw $t0, -4968($fp)
	lw $t1, -4972($fp)
	mul $t0, $t0, $t1
	sw $t0, -4976($fp)
	li $t0, 8836
	sw $t0, -4980($fp)
	lw $t0, -4976($fp)
	lw $t1, -4980($fp)
	mul $t0, $t0, $t1
	sw $t0, -4984($fp)
	li $t0, 0
	sw $t0, -4988($fp)
	lw $t0, -384($fp)
	sw $t0, -4992($fp)
	li $t0, 0
	lw $t1, -4992($fp)
	sub $t0, $t0, $t1
	sw $t0, -4996($fp)
	lw $t1, -4996($fp)
	li $t2, 0
	bne $t1, $t2, label537
	j label536
label536:
	li $t0, 1
	sw $t0, -4988($fp)
label537:
	li $t0, 0
	sw $t0, -5000($fp)
	li $t0, 58817
	sw $t0, -5004($fp)
	lw $t1, -5004($fp)
	li $t2, 0
	bne $t1, $t2, label538
	j label540
label540:
	li $t0, 55811
	sw $t0, -5008($fp)
	lw $t1, -5008($fp)
	li $t2, 0
	bne $t1, $t2, label538
	j label539
label538:
	li $t0, 1
	sw $t0, -5000($fp)
label539:
	addi $sp, $sp, -4
	lw $t0, -4988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5000($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -5012($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -5012($fp)
	sub $t0, $t0, $t1
	sw $t0, -5016($fp)
	lw $t0, -4984($fp)
	lw $t1, -5016($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5020($fp)
	lw $t1, -5020($fp)
	li $t2, 0
	bne $t1, $t2, label535
	j label534
label535:
	li $t0, 0
	sw $t0, -5024($fp)
	lw $t0, -1236($fp)
	sw $t0, -5028($fp)
	lw $t1, -5028($fp)
	li $t2, 0
	bne $t1, $t2, label542
	j label541
label541:
	li $t0, 1
	sw $t0, -5024($fp)
label542:
	addi $t0, $fp, -60
	sw $t0, -5032($fp)
	li $t0, 0
	sw $t0, -5036($fp)
	li $t0, 4
	lw $t1, -5036($fp)
	mul $t0, $t0, $t1
	sw $t0, -5040($fp)
	lw $t0, -5040($fp)
	lw $t1, -5032($fp)
	add $t0, $t0, $t1
	sw $t0, -5044($fp)
	lw $t0, -5044($fp)
	lw $t1, 0($t0)
	sw $t1, -5048($fp)
	lw $t0, -5024($fp)
	lw $t1, -5048($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5052($fp)
	lw $t1, -5052($fp)
	li $t2, 0
	bne $t1, $t2, label533
	j label534
label533:
	li $t0, 1
	sw $t0, -4956($fp)
label534:
	lw $ra, -4($fp)
	lw $v0, -4956($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label532:
	li $t0, 0
	sw $t0, -5056($fp)
	li $t0, 0
	sw $t0, -5060($fp)
	li $t0, 22950
	sw $t0, -5064($fp)
	lw $t1, -5064($fp)
	li $t2, 0
	bne $t1, $t2, label546
	j label545
label545:
	li $t0, 1
	sw $t0, -5060($fp)
label546:
	li $t0, 52911
	sw $t0, -5068($fp)
	lw $t0, -5060($fp)
	lw $t1, -5068($fp)
	mul $t0, $t0, $t1
	sw $t0, -5072($fp)
	li $t0, 0
	lw $t1, -5072($fp)
	sub $t0, $t0, $t1
	sw $t0, -5076($fp)
	li $t0, 51032
	sw $t0, -5080($fp)
	lw $t0, -1356($fp)
	sw $t0, -5084($fp)
	lw $t0, -5080($fp)
	lw $t1, -5084($fp)
	mul $t0, $t0, $t1
	sw $t0, -5088($fp)
	lw $t0, -1380($fp)
	sw $t0, -5092($fp)
	lw $t0, -5088($fp)
	lw $t1, -5092($fp)
	mul $t0, $t0, $t1
	sw $t0, -5096($fp)
	lw $t0, -5076($fp)
	lw $t1, -5096($fp)
	add $t0, $t0, $t1
	sw $t0, -5100($fp)
	li $t0, 0
	sw $t0, -5104($fp)
	li $t0, 7878
	sw $t0, -5108($fp)
	lw $t1, -5108($fp)
	li $t2, 0
	bne $t1, $t2, label548
	j label547
label547:
	li $t0, 1
	sw $t0, -5104($fp)
label548:
	lw $t1, -5100($fp)
	lw $t2, -5104($fp)
	beq $t1, $t2, label543
	j label544
label543:
	li $t0, 1
	sw $t0, -5056($fp)
label544:
	li $t0, 0
	sw $t0, -5112($fp)
	li $t0, 0
	sw $t0, -5116($fp)
	li $t0, 0
	sw $t0, -5120($fp)
	lw $t0, -1344($fp)
	sw $t0, -5124($fp)
	li $t0, 58583
	sw $t0, -5128($fp)
	lw $t1, -5124($fp)
	lw $t2, -5128($fp)
	ble $t1, $t2, label553
	j label554
label553:
	li $t0, 1
	sw $t0, -5120($fp)
label554:
	li $t0, 45598
	sw $t0, -5132($fp)
	lw $t1, -5120($fp)
	lw $t2, -5132($fp)
	bne $t1, $t2, label551
	j label552
label551:
	li $t0, 1
	sw $t0, -5116($fp)
label552:
	li $t0, 0
	sw $t0, -5136($fp)
	li $t0, 60742
	sw $t0, -5140($fp)
	lw $t0, -624($fp)
	sw $t0, -5144($fp)
	lw $t0, -5140($fp)
	lw $t1, -5144($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5148($fp)
	lw $t1, -5148($fp)
	li $t2, 0
	bne $t1, $t2, label555
	j label557
label557:
	lw $t0, -1668($fp)
	sw $t0, -5152($fp)
	lw $t1, -5152($fp)
	li $t2, 0
	bne $t1, $t2, label555
	j label556
label555:
	li $t0, 1
	sw $t0, -5136($fp)
label556:
	lw $t0, -312($fp)
	sw $t0, -5156($fp)
	lw $t0, -5156($fp)
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	sw $t0, -5160($fp)
	addi $sp, $sp, -4
	lw $t0, -5116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5160($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -5164($fp)
	addi $sp, $sp, 16
	li $t0, 33832
	sw $t0, -5168($fp)
	lw $t1, -5164($fp)
	lw $t2, -5168($fp)
	bne $t1, $t2, label549
	j label550
label549:
	li $t0, 1
	sw $t0, -5112($fp)
label550:
label521:
	j label514
label516:
	j label511
label513:
	j label510
label509:
	li $t0, 43452
	sw $t0, -5172($fp)
	lw $t0, -1260($fp)
	sw $t0, -5176($fp)
	lw $t0, -5172($fp)
	lw $t1, -5176($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5180($fp)
	li $t0, 0
	sw $t0, -5184($fp)
	li $t0, 0
	sw $t0, -5188($fp)
	li $t0, 58275
	sw $t0, -5192($fp)
	lw $t0, -1596($fp)
	sw $t0, -5196($fp)
	lw $t0, -5192($fp)
	lw $t1, -5196($fp)
	mul $t0, $t0, $t1
	sw $t0, -5200($fp)
	lw $t1, -5200($fp)
	li $t2, 0
	bne $t1, $t2, label562
	j label561
label562:
	lw $t0, -1548($fp)
	sw $t0, -5204($fp)
	lw $t1, -5204($fp)
	li $t2, 0
	bne $t1, $t2, label560
	j label561
label560:
	li $t0, 1
	sw $t0, -5188($fp)
label561:
	li $t0, 0
	sw $t0, -5208($fp)
	li $t0, 0
	sw $t0, -5212($fp)
	lw $t0, -1284($fp)
	sw $t0, -5216($fp)
	lw $t0, -1320($fp)
	sw $t0, -5220($fp)
	lw $t1, -5216($fp)
	lw $t2, -5220($fp)
	bge $t1, $t2, label565
	j label566
label565:
	li $t0, 1
	sw $t0, -5212($fp)
label566:
	lw $t0, -1584($fp)
	sw $t0, -5224($fp)
	lw $t1, -5212($fp)
	lw $t2, -5224($fp)
	beq $t1, $t2, label563
	j label564
label563:
	li $t0, 1
	sw $t0, -5208($fp)
label564:
	addi $t0, $fp, -168
	sw $t0, -5228($fp)
	li $t0, 3
	sw $t0, -5232($fp)
	li $t0, 4
	lw $t1, -5232($fp)
	mul $t0, $t0, $t1
	sw $t0, -5236($fp)
	lw $t0, -5236($fp)
	lw $t1, -5228($fp)
	add $t0, $t0, $t1
	sw $t0, -5240($fp)
	lw $t0, -5240($fp)
	lw $t1, 0($t0)
	sw $t1, -5244($fp)
	addi $sp, $sp, -4
	lw $t0, -5188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5244($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5248($fp)
	addi $sp, $sp, 16
	lw $t1, -5248($fp)
	li $t2, 0
	bne $t1, $t2, label559
	j label558
label558:
	li $t0, 1
	sw $t0, -5184($fp)
label559:
	lw $t0, -5180($fp)
	lw $t1, -5184($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5252($fp)
	lw $ra, -4($fp)
	lw $v0, -5252($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label510:
	li $t0, 0
	sw $t0, -5256($fp)
	lw $t0, -1212($fp)
	sw $t0, -5260($fp)
	lw $t1, -5260($fp)
	li $t2, 0
	bne $t1, $t2, label569
	j label568
label569:
	addi $t0, $fp, -168
	sw $t0, -5264($fp)
	lw $t0, -1740($fp)
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
	li $t0, 40845
	sw $t0, -5284($fp)
	lw $t0, -5280($fp)
	lw $t1, -5284($fp)
	add $t0, $t0, $t1
	sw $t0, -5288($fp)
	lw $t1, -5288($fp)
	li $t2, 0
	bne $t1, $t2, label567
	j label568
label567:
	li $t0, 1
	sw $t0, -5256($fp)
label568:
	lw $t0, -624($fp)
	sw $t0, -5292($fp)
	addi $t0, $fp, -168
	sw $t0, -5296($fp)
	li $t0, 0
	sw $t0, -5300($fp)
	li $t0, 18528
	sw $t0, -5304($fp)
	lw $t0, -396($fp)
	sw $t0, -5308($fp)
	lw $t1, -5304($fp)
	lw $t2, -5308($fp)
	ble $t1, $t2, label573
	j label574
label573:
	li $t0, 1
	sw $t0, -5300($fp)
label574:
	li $t0, 4
	lw $t1, -5300($fp)
	mul $t0, $t0, $t1
	sw $t0, -5312($fp)
	lw $t0, -5312($fp)
	lw $t1, -5296($fp)
	add $t0, $t0, $t1
	sw $t0, -5316($fp)
	lw $t0, -5316($fp)
	lw $t1, 0($t0)
	sw $t1, -5320($fp)
	lw $t0, -5292($fp)
	lw $t1, -5320($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5324($fp)
	lw $t1, -5324($fp)
	li $t2, 0
	bne $t1, $t2, label570
	j label571
label570:
	li $t0, 45396
	sw $t0, -5328($fp)
	lw $t0, -5328($fp)
	sw $t0, -5332($fp)
	lw $t0, -5332($fp)
	sw $t0, -5336($fp)
	li $t0, 0
	sw $t0, -5340($fp)
	li $t0, 48550
	sw $t0, -5344($fp)
	lw $t1, -5344($fp)
	li $t2, 0
	bne $t1, $t2, label576
	j label575
label575:
	li $t0, 1
	sw $t0, -5340($fp)
label576:
	lw $t0, -1548($fp)
	sw $t0, -5348($fp)
	lw $t0, -5340($fp)
	lw $t1, -5348($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5352($fp)
	li $t0, 0
	lw $t1, -5352($fp)
	sub $t0, $t0, $t1
	sw $t0, -5356($fp)
	lw $t0, -1548($fp)
	sw $t0, -5360($fp)
	li $t0, 0
	lw $t1, -5360($fp)
	sub $t0, $t0, $t1
	sw $t0, -5364($fp)
	lw $t0, -1548($fp)
	sw $t0, -5368($fp)
	lw $t0, -5364($fp)
	lw $t1, -5368($fp)
	sub $t0, $t0, $t1
	sw $t0, -5372($fp)
	addi $t0, $fp, -108
	sw $t0, -5376($fp)
	lw $t0, -1620($fp)
	sw $t0, -5380($fp)
	li $t0, 4
	lw $t1, -5380($fp)
	mul $t0, $t0, $t1
	sw $t0, -5384($fp)
	lw $t0, -5384($fp)
	lw $t1, -5376($fp)
	add $t0, $t0, $t1
	sw $t0, -5388($fp)
	lw $t0, -5388($fp)
	lw $t1, 0($t0)
	sw $t1, -5392($fp)
	addi $sp, $sp, -4
	lw $t0, -5372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5392($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -5396($fp)
	addi $sp, $sp, 12
	lw $t0, -5356($fp)
	lw $t1, -5396($fp)
	add $t0, $t0, $t1
	sw $t0, -5400($fp)
	addi $t0, $fp, -168
	sw $t0, -5404($fp)
	li $t0, 0
	sw $t0, -5408($fp)
	li $t0, 4
	lw $t1, -5408($fp)
	mul $t0, $t0, $t1
	sw $t0, -5412($fp)
	lw $t0, -5412($fp)
	lw $t1, -5404($fp)
	add $t0, $t0, $t1
	sw $t0, -5416($fp)
	lw $t0, -5416($fp)
	lw $t1, 0($t0)
	sw $t1, -5420($fp)
	lw $t0, -5420($fp)
	sw $t0, -5332($fp)
	lw $t0, -5332($fp)
	sw $t0, -5424($fp)
label577:
	li $t0, 0
	sw $t0, -5428($fp)
	li $t0, 11859
	sw $t0, -5432($fp)
	lw $t1, -5432($fp)
	li $t2, 0
	bne $t1, $t2, label581
	j label580
label580:
	li $t0, 1
	sw $t0, -5428($fp)
label581:
	lw $t0, -5428($fp)
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	sw $t0, -5436($fp)
	lw $t1, -5436($fp)
	li $t2, 0
	bne $t1, $t2, label578
	j label579
label578:
	li $t0, 0
	sw $t0, -5440($fp)
	lw $t0, 4($fp)
	sw $t0, -5444($fp)
	lw $t1, -5444($fp)
	li $t2, 0
	bne $t1, $t2, label583
	j label582
label582:
	li $t0, 1
	sw $t0, -5440($fp)
label583:
	j label577
label579:
	lw $t0, -1572($fp)
	sw $t0, -5448($fp)
	lw $t1, -5448($fp)
	li $t2, 0
	bne $t1, $t2, label584
	j label585
label584:
	li $t0, 0
	sw $t0, -5452($fp)
	li $t0, 22263
	sw $t0, -5456($fp)
	lw $t1, -5456($fp)
	li $t2, 0
	bne $t1, $t2, label588
	j label587
label587:
	li $t0, 1
	sw $t0, -5452($fp)
label588:
	li $t0, 61944
	sw $t0, -5460($fp)
	lw $t0, -5452($fp)
	lw $t1, -5460($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5464($fp)
	lw $ra, -4($fp)
	lw $v0, -5464($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label585:
	j label572
label571:
	li $t0, 55360
	sw $t0, -5468($fp)
	lw $t0, -5468($fp)
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	sw $t0, -5472($fp)
	lw $t0, -5472($fp)
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	sw $t0, -5476($fp)
	lw $t1, -5476($fp)
	li $t2, 0
	bne $t1, $t2, label589
	j label590
label589:
	li $t0, 43403
	sw $t0, -5480($fp)
	addi $t0, $fp, -120
	sw $t0, -5484($fp)
	li $t0, 0
	sw $t0, -5488($fp)
	lw $t0, -1308($fp)
	sw $t0, -5492($fp)
	li $t0, 31612
	sw $t0, -5496($fp)
	lw $t1, -5492($fp)
	lw $t2, -5496($fp)
	bne $t1, $t2, label595
	j label596
label595:
	li $t0, 1
	sw $t0, -5488($fp)
label596:
	li $t0, 4
	lw $t1, -5488($fp)
	mul $t0, $t0, $t1
	sw $t0, -5500($fp)
	lw $t0, -5500($fp)
	lw $t1, -5484($fp)
	add $t0, $t0, $t1
	sw $t0, -5504($fp)
	lw $t0, -5504($fp)
	lw $t1, 0($t0)
	sw $t1, -5508($fp)
	lw $t1, -5480($fp)
	lw $t2, -5508($fp)
	bne $t1, $t2, label592
	j label593
label592:
	li $t0, 28922
	sw $t0, -5512($fp)
	lw $t0, -5512($fp)
	sw $t0, -5516($fp)
	lw $t0, -5516($fp)
	sw $t0, -5520($fp)
	li $t0, 52745
	sw $t0, -5524($fp)
	lw $t0, -5524($fp)
	sw $t0, -5528($fp)
	lw $t0, -5528($fp)
	sw $t0, -5532($fp)
	li $t0, 40448
	sw $t0, -5536($fp)
	lw $t0, -5536($fp)
	sw $t0, -5540($fp)
	lw $t0, -5540($fp)
	sw $t0, -5544($fp)
	li $t0, 22203
	sw $t0, -5548($fp)
	lw $t0, -5548($fp)
	sw $t0, -5552($fp)
	lw $t0, -5552($fp)
	sw $t0, -5556($fp)
	li $t0, 43020
	sw $t0, -5560($fp)
	lw $t0, -5560($fp)
	sw $t0, -5564($fp)
	lw $t0, -5564($fp)
	sw $t0, -5568($fp)
	li $t0, 3781
	sw $t0, -5572($fp)
	lw $t0, -5572($fp)
	sw $t0, -5576($fp)
	lw $t0, -5576($fp)
	sw $t0, -5580($fp)
	li $t0, 5015
	sw $t0, -5584($fp)
	lw $t0, -5584($fp)
	sw $t0, -5588($fp)
	lw $t0, -5588($fp)
	sw $t0, -5592($fp)
	li $t0, 434
	sw $t0, -5596($fp)
	lw $t0, -5596($fp)
	sw $t0, -5600($fp)
	lw $t0, -5600($fp)
	sw $t0, -5604($fp)
label597:
	lw $t0, -300($fp)
	sw $t0, -5608($fp)
	lw $t0, -1716($fp)
	sw $t0, -5612($fp)
	lw $t0, -5608($fp)
	lw $t1, -5612($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5616($fp)
	li $t0, 56048
	sw $t0, -5620($fp)
	lw $t0, -5616($fp)
	lw $t1, -5620($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5624($fp)
	li $t0, 8313
	sw $t0, -5628($fp)
	li $t0, 0
	lw $t1, -5628($fp)
	sub $t0, $t0, $t1
	sw $t0, -5632($fp)
	lw $t0, -5624($fp)
	lw $t1, -5632($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5636($fp)
	lw $t1, -5636($fp)
	li $t2, 0
	bne $t1, $t2, label598
	j label600
label600:
	addi $t0, $fp, -24
	sw $t0, -5640($fp)
	lw $t0, -624($fp)
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
	li $t0, 0
	lw $t1, -5656($fp)
	sub $t0, $t0, $t1
	sw $t0, -5660($fp)
	lw $t0, -5564($fp)
	sw $t0, -5664($fp)
	lw $t0, -1716($fp)
	sw $t0, -5668($fp)
	lw $t0, -5664($fp)
	lw $t1, -5668($fp)
	sub $t0, $t0, $t1
	sw $t0, -5672($fp)
	lw $t1, -5660($fp)
	lw $t2, -5672($fp)
	bne $t1, $t2, label598
	j label599
label598:
	li $t0, 51899
	sw $t0, -5676($fp)
	addi $t0, $fp, -108
	sw $t0, -5680($fp)
	lw $t0, -1392($fp)
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
	li $t0, 0
	sw $t0, -5700($fp)
	li $t0, 49094
	sw $t0, -5704($fp)
	li $t0, 53911
	sw $t0, -5708($fp)
	lw $t0, -5704($fp)
	lw $t1, -5708($fp)
	add $t0, $t0, $t1
	sw $t0, -5712($fp)
	lw $t1, -5712($fp)
	li $t2, 0
	bne $t1, $t2, label603
	j label602
label603:
	li $t0, 20195
	sw $t0, -5716($fp)
	lw $t1, -5716($fp)
	li $t2, 0
	bne $t1, $t2, label601
	j label602
label601:
	li $t0, 1
	sw $t0, -5700($fp)
label602:
	addi $sp, $sp, -4
	lw $t0, -5696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5700($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5720($fp)
	addi $sp, $sp, 12
	lw $t0, -5676($fp)
	lw $t1, -5720($fp)
	add $t0, $t0, $t1
	sw $t0, -5724($fp)
	lw $t0, -996($fp)
	sw $t0, -5728($fp)
	li $t0, 0
	lw $t1, -5728($fp)
	sub $t0, $t0, $t1
	sw $t0, -5732($fp)
	lw $t0, -5724($fp)
	lw $t1, -5732($fp)
	add $t0, $t0, $t1
	sw $t0, -5736($fp)
	lw $ra, -4($fp)
	lw $v0, -5736($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label597
label599:
	lw $t0, -360($fp)
	sw $t0, -5740($fp)
	lw $t0, -5740($fp)
	sw $t0, -5588($fp)
	lw $t0, -5588($fp)
	sw $t0, -5744($fp)
	lw $t0, -5744($fp)
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	sw $t0, -5748($fp)
	lw $t0, -1668($fp)
	sw $t0, -5752($fp)
	li $t0, 0
	lw $t1, -5752($fp)
	sub $t0, $t0, $t1
	sw $t0, -5756($fp)
	lw $t1, -5756($fp)
	li $t2, 0
	bne $t1, $t2, label604
	j label605
label604:
	li $t0, 0
	sw $t0, -5760($fp)
	li $t0, 62258
	sw $t0, -5764($fp)
	lw $t0, -5764($fp)
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	sw $t0, -5768($fp)
	li $t0, 0
	sw $t0, -5772($fp)
	lw $t0, -624($fp)
	sw $t0, -5776($fp)
	lw $t0, -1716($fp)
	sw $t0, -5780($fp)
	lw $t1, -5776($fp)
	lw $t2, -5780($fp)
	ble $t1, $t2, label609
	j label611
label611:
	li $t0, 27010
	sw $t0, -5784($fp)
	lw $t1, -5784($fp)
	li $t2, 0
	bne $t1, $t2, label609
	j label610
label609:
	li $t0, 1
	sw $t0, -5772($fp)
label610:
	addi $sp, $sp, -4
	lw $t0, -5768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5772($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -5788($fp)
	addi $sp, $sp, 12
	lw $t1, -5788($fp)
	li $t2, 0
	bne $t1, $t2, label608
	j label607
label607:
	li $t0, 1
	sw $t0, -5760($fp)
label608:
label605:
	addi $t0, $fp, -120
	sw $t0, -5792($fp)
	li $t0, 0
	sw $t0, -5796($fp)
	li $t0, 0
	sw $t0, -5800($fp)
	lw $t0, -5540($fp)
	sw $t0, -5804($fp)
	lw $t0, -5528($fp)
	sw $t0, -5808($fp)
	lw $t1, -5804($fp)
	lw $t2, -5808($fp)
	bne $t1, $t2, label617
	j label618
label617:
	li $t0, 1
	sw $t0, -5800($fp)
label618:
	lw $t0, -372($fp)
	sw $t0, -5812($fp)
	lw $t1, -5800($fp)
	lw $t2, -5812($fp)
	beq $t1, $t2, label615
	j label616
label615:
	li $t0, 1
	sw $t0, -5796($fp)
label616:
	li $t0, 4
	lw $t1, -5796($fp)
	mul $t0, $t0, $t1
	sw $t0, -5816($fp)
	lw $t0, -5816($fp)
	lw $t1, -5792($fp)
	add $t0, $t0, $t1
	sw $t0, -5820($fp)
	lw $t0, -5820($fp)
	lw $t1, 0($t0)
	sw $t1, -5824($fp)
	li $t0, 0
	lw $t1, -5824($fp)
	sub $t0, $t0, $t1
	sw $t0, -5828($fp)
	lw $t1, -5828($fp)
	li $t2, 0
	bne $t1, $t2, label612
	j label613
label612:
	li $t0, 0
	sw $t0, -5832($fp)
	li $t0, 0
	sw $t0, -5836($fp)
	li $t0, 6191
	sw $t0, -5840($fp)
	li $t0, 0
	lw $t1, -5840($fp)
	sub $t0, $t0, $t1
	sw $t0, -5844($fp)
	li $t0, 0
	sw $t0, -5848($fp)
	lw $t0, -5600($fp)
	sw $t0, -5852($fp)
	lw $t1, -5852($fp)
	li $t2, 0
	bne $t1, $t2, label628
	j label627
label627:
	li $t0, 1
	sw $t0, -5848($fp)
label628:
	lw $t0, -300($fp)
	sw $t0, -5856($fp)
	lw $t0, -5848($fp)
	lw $t1, -5856($fp)
	add $t0, $t0, $t1
	sw $t0, -5860($fp)
	addi $sp, $sp, -4
	lw $t0, -5844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5860($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5864($fp)
	addi $sp, $sp, 12
	li $t0, 22266
	sw $t0, -5868($fp)
	lw $t0, -5864($fp)
	lw $t1, -5868($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5872($fp)
	li $t0, 0
	sw $t0, -5876($fp)
	li $t0, 0
	sw $t0, -5880($fp)
	lw $t0, -1584($fp)
	sw $t0, -5884($fp)
	lw $t1, -5884($fp)
	li $t2, 0
	bne $t1, $t2, label632
	j label631
label631:
	li $t0, 1
	sw $t0, -5880($fp)
label632:
	li $t0, 30313
	sw $t0, -5888($fp)
	lw $t1, -5880($fp)
	lw $t2, -5888($fp)
	beq $t1, $t2, label629
	j label630
label629:
	li $t0, 1
	sw $t0, -5876($fp)
label630:
	addi $sp, $sp, -4
	lw $t0, -5872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5876($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5892($fp)
	addi $sp, $sp, 12
	lw $t1, -5892($fp)
	li $t2, 0
	bne $t1, $t2, label626
	j label625
label626:
	lw $t0, -5576($fp)
	sw $t0, -5896($fp)
	lw $t1, -5896($fp)
	li $t2, 0
	bne $t1, $t2, label624
	j label625
label624:
	li $t0, 1
	sw $t0, -5836($fp)
label625:
	li $t0, 32441
	sw $t0, -5900($fp)
	lw $t0, -5900($fp)
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -5904($fp)
	li $t0, 9782
	sw $t0, -5908($fp)
	li $t0, 0
	sw $t0, -5912($fp)
	lw $t0, -1704($fp)
	sw $t0, -5916($fp)
	li $t0, 20582
	sw $t0, -5920($fp)
	lw $t0, -5916($fp)
	lw $t1, -5920($fp)
	add $t0, $t0, $t1
	sw $t0, -5924($fp)
	lw $t1, -5924($fp)
	li $t2, 0
	bne $t1, $t2, label635
	j label634
label635:
	li $t0, 8050
	sw $t0, -5928($fp)
	lw $t1, -5928($fp)
	li $t2, 0
	bne $t1, $t2, label633
	j label634
label633:
	li $t0, 1
	sw $t0, -5912($fp)
label634:
	lw $t0, -5516($fp)
	sw $t0, -5932($fp)
	li $t0, 65146
	sw $t0, -5936($fp)
	lw $t0, -5932($fp)
	lw $t1, -5936($fp)
	add $t0, $t0, $t1
	sw $t0, -5940($fp)
	li $t0, 40431
	sw $t0, -5944($fp)
	addi $sp, $sp, -4
	lw $t0, -5904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5944($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5948($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -172
	sw $t0, -5952($fp)
	li $t0, 0
	sw $t0, -5956($fp)
	li $t0, 4
	lw $t1, -5956($fp)
	mul $t0, $t0, $t1
	sw $t0, -5960($fp)
	lw $t0, -5960($fp)
	lw $t1, -5952($fp)
	add $t0, $t0, $t1
	sw $t0, -5964($fp)
	lw $t0, -5964($fp)
	lw $t1, 0($t0)
	sw $t1, -5968($fp)
	li $t0, 37568
	sw $t0, -5972($fp)
	lw $t0, -5968($fp)
	lw $t1, -5972($fp)
	add $t0, $t0, $t1
	sw $t0, -5976($fp)
	addi $sp, $sp, -4
	lw $t0, -5836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5976($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5980($fp)
	addi $sp, $sp, 16
	lw $t1, -5980($fp)
	li $t2, 0
	bne $t1, $t2, label622
	j label623
label622:
	li $t0, 1
	sw $t0, -5832($fp)
label623:
	lw $t0, -5832($fp)
	sw $t0, -5552($fp)
	lw $t0, -5552($fp)
	sw $t0, -5984($fp)
	lw $t1, -5984($fp)
	li $t2, 0
	bne $t1, $t2, label619
	j label620
label619:
	li $t0, 8181
	sw $t0, -5988($fp)
	lw $t1, -5988($fp)
	li $t2, 0
	bne $t1, $t2, label639
	j label637
label639:
	li $t0, 37803
	sw $t0, -5992($fp)
	lw $t1, -5992($fp)
	li $t2, 0
	bne $t1, $t2, label636
	j label637
label636:
	li $t0, 0
	sw $t0, -5996($fp)
	li $t0, 51188
	sw $t0, -6000($fp)
	li $t0, 0
	sw $t0, -6004($fp)
	li $t0, 60926
	sw $t0, -6008($fp)
	lw $t1, -6008($fp)
	li $t2, 0
	bne $t1, $t2, label645
	j label646
label645:
	li $t0, 1
	sw $t0, -6004($fp)
label646:
	lw $t0, -6000($fp)
	lw $t1, -6004($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6012($fp)
	li $t0, 0
	lw $t1, -6012($fp)
	sub $t0, $t0, $t1
	sw $t0, -6016($fp)
	lw $t1, -6016($fp)
	li $t2, 0
	bne $t1, $t2, label643
	j label644
label643:
	li $t0, 1
	sw $t0, -5996($fp)
label644:
	li $t0, 0
	sw $t0, -6020($fp)
	addi $t0, $fp, -152
	sw $t0, -6024($fp)
	lw $t0, -1344($fp)
	sw $t0, -6028($fp)
	li $t0, 4
	lw $t1, -6028($fp)
	mul $t0, $t0, $t1
	sw $t0, -6032($fp)
	lw $t0, -6032($fp)
	lw $t1, -6024($fp)
	add $t0, $t0, $t1
	sw $t0, -6036($fp)
	lw $t0, -6036($fp)
	lw $t1, 0($t0)
	sw $t1, -6040($fp)
	lw $t1, -6040($fp)
	li $t2, 0
	bne $t1, $t2, label648
	j label647
label647:
	li $t0, 1
	sw $t0, -6020($fp)
label648:
	addi $t0, $fp, -24
	sw $t0, -6044($fp)
	li $t0, 0
	sw $t0, -6048($fp)
	li $t0, 4
	lw $t1, -6048($fp)
	mul $t0, $t0, $t1
	sw $t0, -6052($fp)
	lw $t0, -6052($fp)
	lw $t1, -6044($fp)
	add $t0, $t0, $t1
	sw $t0, -6056($fp)
	lw $t0, -6056($fp)
	lw $t1, 0($t0)
	sw $t1, -6060($fp)
	lw $t0, -6020($fp)
	lw $t1, -6060($fp)
	mul $t0, $t0, $t1
	sw $t0, -6064($fp)
	lw $t1, -5996($fp)
	lw $t2, -6064($fp)
	bne $t1, $t2, label640
	j label641
label640:
	li $t0, 0
	sw $t0, -6068($fp)
	li $t0, 0
	sw $t0, -6072($fp)
	li $t0, 38844
	sw $t0, -6076($fp)
	li $t0, 7654
	sw $t0, -6080($fp)
	lw $t0, -6076($fp)
	lw $t1, -6080($fp)
	add $t0, $t0, $t1
	sw $t0, -6084($fp)
	lw $t1, -6084($fp)
	li $t2, 0
	bne $t1, $t2, label653
	j label652
label653:
	lw $t0, -384($fp)
	sw $t0, -6088($fp)
	lw $t1, -6088($fp)
	li $t2, 0
	bne $t1, $t2, label651
	j label652
label651:
	li $t0, 1
	sw $t0, -6072($fp)
label652:
	li $t0, 0
	sw $t0, -6092($fp)
	li $t0, 0
	sw $t0, -6096($fp)
	li $t0, 38410
	sw $t0, -6100($fp)
	li $t0, 16497
	sw $t0, -6104($fp)
	lw $t1, -6100($fp)
	lw $t2, -6104($fp)
	beq $t1, $t2, label656
	j label657
label656:
	li $t0, 1
	sw $t0, -6096($fp)
label657:
	li $t0, 12870
	sw $t0, -6108($fp)
	lw $t1, -6096($fp)
	lw $t2, -6108($fp)
	bne $t1, $t2, label654
	j label655
label654:
	li $t0, 1
	sw $t0, -6092($fp)
label655:
	addi $sp, $sp, -4
	lw $t0, -6072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6092($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6112($fp)
	addi $sp, $sp, 12
	lw $t1, -6112($fp)
	li $t2, 0
	bne $t1, $t2, label650
	j label649
label649:
	li $t0, 1
	sw $t0, -6068($fp)
label650:
	li $t0, 47158
	sw $t0, -6116($fp)
	lw $t0, -6068($fp)
	lw $t1, -6116($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6120($fp)
	addi $t0, $fp, -80
	sw $t0, -6124($fp)
	li $t0, 0
	sw $t0, -6128($fp)
	li $t0, 59553
	sw $t0, -6132($fp)
	lw $t1, -6132($fp)
	li $t2, 0
	bne $t1, $t2, label660
	j label659
label660:
	li $t0, 52476
	sw $t0, -6136($fp)
	lw $t1, -6136($fp)
	li $t2, 0
	bne $t1, $t2, label658
	j label659
label658:
	li $t0, 1
	sw $t0, -6128($fp)
label659:
	li $t0, 4
	lw $t1, -6128($fp)
	mul $t0, $t0, $t1
	sw $t0, -6140($fp)
	lw $t0, -6140($fp)
	lw $t1, -6124($fp)
	add $t0, $t0, $t1
	sw $t0, -6144($fp)
	lw $t0, -6144($fp)
	lw $t1, 0($t0)
	sw $t1, -6148($fp)
	lw $t0, -6120($fp)
	lw $t1, -6148($fp)
	mul $t0, $t0, $t1
	sw $t0, -6152($fp)
	lw $ra, -4($fp)
	lw $v0, -6152($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label642
label641:
	li $t0, 0
	sw $t0, -6156($fp)
	li $t0, 0
	sw $t0, -6160($fp)
	lw $t0, -1680($fp)
	sw $t0, -6164($fp)
	lw $t1, -6164($fp)
	li $t2, 0
	bne $t1, $t2, label664
	j label663
label663:
	li $t0, 1
	sw $t0, -6160($fp)
label664:
	li $t0, 0
	sw $t0, -6168($fp)
	li $t0, 35533
	sw $t0, -6172($fp)
	li $t0, 0
	lw $t1, -6172($fp)
	sub $t0, $t0, $t1
	sw $t0, -6176($fp)
	lw $t0, -1512($fp)
	sw $t0, -6180($fp)
	li $t0, 0
	lw $t1, -6180($fp)
	sub $t0, $t0, $t1
	sw $t0, -6184($fp)
	lw $t1, -6176($fp)
	lw $t2, -6184($fp)
	ble $t1, $t2, label665
	j label666
label665:
	li $t0, 1
	sw $t0, -6168($fp)
label666:
	lw $t1, -6160($fp)
	lw $t2, -6168($fp)
	bne $t1, $t2, label661
	j label662
label661:
	li $t0, 1
	sw $t0, -6156($fp)
label662:
label642:
	j label638
label637:
	lw $t0, -1008($fp)
	sw $t0, -6188($fp)
	lw $t0, -6188($fp)
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	sw $t0, -6192($fp)
	lw $t1, -6192($fp)
	li $t2, 0
	bne $t1, $t2, label667
	j label668
label667:
	addi $t0, $fp, -24
	sw $t0, -6196($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -6216($fp)
	lw $t0, -1248($fp)
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
	li $t0, 32255
	sw $t0, -6236($fp)
	li $t0, 0
	lw $t1, -6236($fp)
	sub $t0, $t0, $t1
	sw $t0, -6240($fp)
	lw $t0, -6232($fp)
	lw $t1, -6240($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6244($fp)
	lw $t0, -6212($fp)
	lw $t1, -6244($fp)
	sub $t0, $t0, $t1
	sw $t0, -6248($fp)
	j label669
label668:
	lw $t0, -1656($fp)
	sw $t0, -6252($fp)
label669:
label638:
label620:
label613:
	li $t0, 0
	sw $t0, -6256($fp)
	li $t0, 0
	sw $t0, -6260($fp)
	lw $t0, -1212($fp)
	sw $t0, -6264($fp)
	li $t0, 36114
	sw $t0, -6268($fp)
	li $t0, 33701
	sw $t0, -6272($fp)
	lw $t0, -6268($fp)
	lw $t1, -6272($fp)
	mul $t0, $t0, $t1
	sw $t0, -6276($fp)
	lw $t0, -6264($fp)
	lw $t1, -6276($fp)
	sub $t0, $t0, $t1
	sw $t0, -6280($fp)
	li $t0, 0
	sw $t0, -6284($fp)
	lw $t0, -1548($fp)
	sw $t0, -6288($fp)
	lw $t1, -6288($fp)
	li $t2, 0
	bne $t1, $t2, label675
	j label674
label674:
	li $t0, 1
	sw $t0, -6284($fp)
label675:
	li $t0, 33311
	sw $t0, -6292($fp)
	lw $t0, -6284($fp)
	lw $t1, -6292($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6296($fp)
	lw $t0, -1728($fp)
	sw $t0, -6300($fp)
	addi $t0, $fp, -108
	sw $t0, -6304($fp)
	li $t0, 4
	sw $t0, -6308($fp)
	li $t0, 4
	lw $t1, -6308($fp)
	mul $t0, $t0, $t1
	sw $t0, -6312($fp)
	lw $t0, -6312($fp)
	lw $t1, -6304($fp)
	add $t0, $t0, $t1
	sw $t0, -6316($fp)
	lw $t0, -6316($fp)
	lw $t1, 0($t0)
	sw $t1, -6320($fp)
	lw $t0, -1284($fp)
	sw $t0, -6324($fp)
	lw $t0, -6320($fp)
	lw $t1, -6324($fp)
	sub $t0, $t0, $t1
	sw $t0, -6328($fp)
	addi $sp, $sp, -4
	lw $t0, -6296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6328($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -6332($fp)
	addi $sp, $sp, 16
	lw $t1, -6280($fp)
	lw $t2, -6332($fp)
	bne $t1, $t2, label672
	j label673
label672:
	li $t0, 1
	sw $t0, -6260($fp)
label673:
	li $t0, 24870
	sw $t0, -6336($fp)
	lw $t1, -6260($fp)
	lw $t2, -6336($fp)
	beq $t1, $t2, label670
	j label671
label670:
	li $t0, 1
	sw $t0, -6256($fp)
label671:
	j label594
label593:
	li $t0, 0
	sw $t0, -6340($fp)
	addi $t0, $fp, -168
	sw $t0, -6344($fp)
	li $t0, 3
	sw $t0, -6348($fp)
	li $t0, 4
	lw $t1, -6348($fp)
	mul $t0, $t0, $t1
	sw $t0, -6352($fp)
	lw $t0, -6352($fp)
	lw $t1, -6344($fp)
	add $t0, $t0, $t1
	sw $t0, -6356($fp)
	lw $t0, -6356($fp)
	lw $t1, 0($t0)
	sw $t1, -6360($fp)
	li $t0, 49373
	sw $t0, -6364($fp)
	lw $t1, -6360($fp)
	lw $t2, -6364($fp)
	blt $t1, $t2, label678
	j label677
label678:
	lw $t0, -1752($fp)
	sw $t0, -6368($fp)
	li $t0, 14041
	sw $t0, -6372($fp)
	lw $t0, -6368($fp)
	lw $t1, -6372($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6376($fp)
	li $t0, 57554
	sw $t0, -6380($fp)
	lw $t0, -6376($fp)
	lw $t1, -6380($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6384($fp)
	li $t0, 0
	sw $t0, -6388($fp)
	lw $t0, -1296($fp)
	sw $t0, -6392($fp)
	lw $t0, -1380($fp)
	sw $t0, -6396($fp)
	lw $t0, -6392($fp)
	lw $t1, -6396($fp)
	add $t0, $t0, $t1
	sw $t0, -6400($fp)
	lw $t1, -6400($fp)
	li $t2, 0
	bne $t1, $t2, label681
	j label680
label681:
	li $t0, 49285
	sw $t0, -6404($fp)
	lw $t1, -6404($fp)
	li $t2, 0
	bne $t1, $t2, label679
	j label680
label679:
	li $t0, 1
	sw $t0, -6388($fp)
label680:
	addi $sp, $sp, -4
	lw $t0, -6384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6388($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6408($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -6408($fp)
	sub $t0, $t0, $t1
	sw $t0, -6412($fp)
	addi $t0, $fp, -120
	sw $t0, -6416($fp)
	lw $t0, -996($fp)
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
	lw $t0, -6412($fp)
	lw $t1, -6432($fp)
	sub $t0, $t0, $t1
	sw $t0, -6436($fp)
	lw $t1, -6436($fp)
	li $t2, 0
	bne $t1, $t2, label676
	j label677
label676:
	li $t0, 1
	sw $t0, -6340($fp)
label677:
	li $t0, 21552
	sw $t0, -6440($fp)
	lw $t0, -6440($fp)
	sw $t0, -6444($fp)
	lw $t0, -6444($fp)
	sw $t0, -6448($fp)
	li $t0, 65229
	sw $t0, -6452($fp)
	lw $t0, -6452($fp)
	sw $t0, -6456($fp)
	lw $t0, -6456($fp)
	sw $t0, -6460($fp)
	lw $t0, -360($fp)
	sw $t0, -6464($fp)
	addi $t0, $fp, -168
	sw $t0, -6468($fp)
	lw $t0, -300($fp)
	sw $t0, -6472($fp)
	li $t0, 4
	lw $t1, -6472($fp)
	mul $t0, $t0, $t1
	sw $t0, -6476($fp)
	lw $t0, -6476($fp)
	lw $t1, -6468($fp)
	add $t0, $t0, $t1
	sw $t0, -6480($fp)
	lw $t0, -6480($fp)
	lw $t1, 0($t0)
	sw $t1, -6484($fp)
	lw $t0, -6464($fp)
	lw $t1, -6484($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6488($fp)
	li $t0, 0
	sw $t0, -6492($fp)
	li $t0, 52944
	sw $t0, -6496($fp)
	lw $t1, -6496($fp)
	li $t2, 0
	bne $t1, $t2, label684
	j label683
label684:
	lw $t0, -6456($fp)
	sw $t0, -6500($fp)
	lw $t1, -6500($fp)
	li $t2, 0
	bne $t1, $t2, label682
	j label683
label682:
	li $t0, 1
	sw $t0, -6492($fp)
label683:
	li $t0, 0
	sw $t0, -6504($fp)
	lw $t0, -372($fp)
	sw $t0, -6508($fp)
	lw $t1, -6508($fp)
	li $t2, 0
	bne $t1, $t2, label687
	j label685
label687:
	lw $t0, -1224($fp)
	sw $t0, -6512($fp)
	lw $t1, -6512($fp)
	li $t2, 0
	bne $t1, $t2, label685
	j label686
label685:
	li $t0, 1
	sw $t0, -6504($fp)
label686:
	li $t0, 0
	sw $t0, -6516($fp)
	lw $t0, -1248($fp)
	sw $t0, -6520($fp)
	lw $t0, -348($fp)
	sw $t0, -6524($fp)
	lw $t0, -6520($fp)
	lw $t1, -6524($fp)
	add $t0, $t0, $t1
	sw $t0, -6528($fp)
	lw $t1, -6528($fp)
	li $t2, 0
	bne $t1, $t2, label690
	j label689
label690:
	lw $t0, -1272($fp)
	sw $t0, -6532($fp)
	lw $t1, -6532($fp)
	li $t2, 0
	bne $t1, $t2, label688
	j label689
label688:
	li $t0, 1
	sw $t0, -6516($fp)
label689:
	addi $sp, $sp, -4
	lw $t0, -6492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6516($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -6536($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -6536($fp)
	sub $t0, $t0, $t1
	sw $t0, -6540($fp)
	lw $t0, -6488($fp)
	lw $t1, -6540($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6544($fp)
	addi $t0, $fp, -108
	sw $t0, -6548($fp)
	addi $t0, $fp, -168
	sw $t0, -6552($fp)
	lw $t0, -1752($fp)
	sw $t0, -6556($fp)
	lw $t0, -6556($fp)
	sw $t0, -6444($fp)
	lw $t0, -6444($fp)
	sw $t0, -6560($fp)
	li $t0, 4
	lw $t1, -6560($fp)
	mul $t0, $t0, $t1
	sw $t0, -6564($fp)
	lw $t0, -6564($fp)
	lw $t1, -6552($fp)
	add $t0, $t0, $t1
	sw $t0, -6568($fp)
	lw $t0, -6568($fp)
	lw $t1, 0($t0)
	sw $t1, -6572($fp)
	li $t0, 4
	lw $t1, -6572($fp)
	mul $t0, $t0, $t1
	sw $t0, -6576($fp)
	lw $t0, -6576($fp)
	lw $t1, -6548($fp)
	add $t0, $t0, $t1
	sw $t0, -6580($fp)
	lw $t0, -6580($fp)
	lw $t1, 0($t0)
	sw $t1, -6584($fp)
label691:
	lw $t0, -1692($fp)
	sw $t0, -6588($fp)
	addi $t0, $fp, -24
	sw $t0, -6592($fp)
	lw $t0, -624($fp)
	sw $t0, -6596($fp)
	li $t0, 0
	lw $t1, -6596($fp)
	sub $t0, $t0, $t1
	sw $t0, -6600($fp)
	li $t0, 4
	lw $t1, -6600($fp)
	mul $t0, $t0, $t1
	sw $t0, -6604($fp)
	lw $t0, -6604($fp)
	lw $t1, -6592($fp)
	add $t0, $t0, $t1
	sw $t0, -6608($fp)
	lw $t0, -6608($fp)
	lw $t1, 0($t0)
	sw $t1, -6612($fp)
	lw $t0, -6588($fp)
	lw $t1, -6612($fp)
	sub $t0, $t0, $t1
	sw $t0, -6616($fp)
	lw $t1, -6616($fp)
	li $t2, 0
	bne $t1, $t2, label692
	j label693
label692:
	lw $t0, -1596($fp)
	sw $t0, -6620($fp)
	li $t0, 34268
	sw $t0, -6624($fp)
	lw $t0, -6620($fp)
	lw $t1, -6624($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6628($fp)
	lw $t0, -1296($fp)
	sw $t0, -6632($fp)
	lw $t0, -6628($fp)
	lw $t1, -6632($fp)
	mul $t0, $t0, $t1
	sw $t0, -6636($fp)
	lw $t0, -300($fp)
	sw $t0, -6640($fp)
	li $t0, 7548
	sw $t0, -6644($fp)
	lw $t0, -6640($fp)
	lw $t1, -6644($fp)
	mul $t0, $t0, $t1
	sw $t0, -6648($fp)
	lw $t0, -6636($fp)
	lw $t1, -6648($fp)
	sub $t0, $t0, $t1
	sw $t0, -6652($fp)
	lw $t0, -6652($fp)
	sw $t0, -1656($fp)
	lw $t0, -1656($fp)
	sw $t0, -6656($fp)
	j label691
label693:
label594:
	j label591
label590:
	li $t0, 0
	sw $t0, -6660($fp)
	li $t0, 25818
	sw $t0, -6664($fp)
	li $t0, 0
	lw $t1, -6664($fp)
	sub $t0, $t0, $t1
	sw $t0, -6668($fp)
	li $t0, 50766
	sw $t0, -6672($fp)
	lw $t0, -1212($fp)
	sw $t0, -6676($fp)
	lw $t0, -6672($fp)
	lw $t1, -6676($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6680($fp)
	lw $t1, -6668($fp)
	lw $t2, -6680($fp)
	bgt $t1, $t2, label694
	j label697
label697:
	li $t0, 20419
	sw $t0, -6684($fp)
	lw $t1, -6684($fp)
	li $t2, 0
	bne $t1, $t2, label694
	j label696
label696:
	lw $t0, -1644($fp)
	sw $t0, -6688($fp)
	lw $t1, -6688($fp)
	li $t2, 0
	bne $t1, $t2, label694
	j label695
label694:
	li $t0, 1
	sw $t0, -6660($fp)
label695:
	lw $ra, -4($fp)
	lw $v0, -6660($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label591:
label572:
	addi $t0, $fp, -24
	sw $t0, -6692($fp)
	li $t0, 0
	sw $t0, -6696($fp)
	li $t0, 4
	lw $t1, -6696($fp)
	mul $t0, $t0, $t1
	sw $t0, -6700($fp)
	lw $t0, -6700($fp)
	lw $t1, -6692($fp)
	add $t0, $t0, $t1
	sw $t0, -6704($fp)
	lw $t0, -6704($fp)
	lw $t1, 0($t0)
	sw $t1, -6708($fp)
	lw $t0, -6708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -6712($fp)
	li $t0, 1
	sw $t0, -6716($fp)
	li $t0, 4
	lw $t1, -6716($fp)
	mul $t0, $t0, $t1
	sw $t0, -6720($fp)
	lw $t0, -6720($fp)
	lw $t1, -6712($fp)
	add $t0, $t0, $t1
	sw $t0, -6724($fp)
	lw $t0, -6724($fp)
	lw $t1, 0($t0)
	sw $t1, -6728($fp)
	lw $t0, -6728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -6732($fp)
	li $t0, 2
	sw $t0, -6736($fp)
	li $t0, 4
	lw $t1, -6736($fp)
	mul $t0, $t0, $t1
	sw $t0, -6740($fp)
	lw $t0, -6740($fp)
	lw $t1, -6732($fp)
	add $t0, $t0, $t1
	sw $t0, -6744($fp)
	lw $t0, -6744($fp)
	lw $t1, 0($t0)
	sw $t1, -6748($fp)
	lw $t0, -6748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -6752($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -6772($fp)
	li $t0, 4
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
	lw $t0, -300($fp)
	sw $t0, -6792($fp)
	lw $t0, -6792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -312($fp)
	sw $t0, -6796($fp)
	lw $t0, -6796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -324($fp)
	sw $t0, -6800($fp)
	lw $t0, -6800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -336($fp)
	sw $t0, -6804($fp)
	lw $t0, -6804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -348($fp)
	sw $t0, -6808($fp)
	lw $t0, -6808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -360($fp)
	sw $t0, -6812($fp)
	lw $t0, -6812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -372($fp)
	sw $t0, -6816($fp)
	lw $t0, -6816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -384($fp)
	sw $t0, -6820($fp)
	lw $t0, -6820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -396($fp)
	sw $t0, -6824($fp)
	lw $t0, -6824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -6828($fp)
	li $t0, 0
	sw $t0, -6832($fp)
	li $t0, 4
	lw $t1, -6832($fp)
	mul $t0, $t0, $t1
	sw $t0, -6836($fp)
	lw $t0, -6836($fp)
	lw $t1, -6828($fp)
	add $t0, $t0, $t1
	sw $t0, -6840($fp)
	lw $t0, -6840($fp)
	lw $t1, 0($t0)
	sw $t1, -6844($fp)
	lw $t0, -6844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -6848($fp)
	li $t0, 1
	sw $t0, -6852($fp)
	li $t0, 4
	lw $t1, -6852($fp)
	mul $t0, $t0, $t1
	sw $t0, -6856($fp)
	lw $t0, -6856($fp)
	lw $t1, -6848($fp)
	add $t0, $t0, $t1
	sw $t0, -6860($fp)
	lw $t0, -6860($fp)
	lw $t1, 0($t0)
	sw $t1, -6864($fp)
	lw $t0, -6864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -6868($fp)
	li $t0, 2
	sw $t0, -6872($fp)
	li $t0, 4
	lw $t1, -6872($fp)
	mul $t0, $t0, $t1
	sw $t0, -6876($fp)
	lw $t0, -6876($fp)
	lw $t1, -6868($fp)
	add $t0, $t0, $t1
	sw $t0, -6880($fp)
	lw $t0, -6880($fp)
	lw $t1, 0($t0)
	sw $t1, -6884($fp)
	lw $t0, -6884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -6888($fp)
	li $t0, 3
	sw $t0, -6892($fp)
	li $t0, 4
	lw $t1, -6892($fp)
	mul $t0, $t0, $t1
	sw $t0, -6896($fp)
	lw $t0, -6896($fp)
	lw $t1, -6888($fp)
	add $t0, $t0, $t1
	sw $t0, -6900($fp)
	lw $t0, -6900($fp)
	lw $t1, 0($t0)
	sw $t1, -6904($fp)
	lw $t0, -6904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -6908($fp)
	li $t0, 4
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
	addi $t0, $fp, -60
	sw $t0, -6928($fp)
	li $t0, 5
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
	addi $t0, $fp, -60
	sw $t0, -6948($fp)
	li $t0, 6
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
	addi $t0, $fp, -60
	sw $t0, -6968($fp)
	li $t0, 7
	sw $t0, -6972($fp)
	li $t0, 4
	lw $t1, -6972($fp)
	mul $t0, $t0, $t1
	sw $t0, -6976($fp)
	lw $t0, -6976($fp)
	lw $t1, -6968($fp)
	add $t0, $t0, $t1
	sw $t0, -6980($fp)
	lw $t0, -6980($fp)
	lw $t1, 0($t0)
	sw $t1, -6984($fp)
	lw $t0, -6984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -6988($fp)
	li $t0, 8
	sw $t0, -6992($fp)
	li $t0, 4
	lw $t1, -6992($fp)
	mul $t0, $t0, $t1
	sw $t0, -6996($fp)
	lw $t0, -6996($fp)
	lw $t1, -6988($fp)
	add $t0, $t0, $t1
	sw $t0, -7000($fp)
	lw $t0, -7000($fp)
	lw $t1, 0($t0)
	sw $t1, -7004($fp)
	lw $t0, -7004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -624($fp)
	sw $t0, -7008($fp)
	lw $t0, -7008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -7012($fp)
	li $t0, 0
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
	addi $t0, $fp, -80
	sw $t0, -7032($fp)
	li $t0, 1
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
	addi $t0, $fp, -80
	sw $t0, -7052($fp)
	li $t0, 2
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
	addi $t0, $fp, -80
	sw $t0, -7072($fp)
	li $t0, 3
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
	addi $t0, $fp, -80
	sw $t0, -7092($fp)
	li $t0, 4
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
	addi $t0, $fp, -108
	sw $t0, -7112($fp)
	li $t0, 0
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
	addi $t0, $fp, -108
	sw $t0, -7132($fp)
	li $t0, 1
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
	addi $t0, $fp, -108
	sw $t0, -7152($fp)
	li $t0, 2
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
	addi $t0, $fp, -108
	sw $t0, -7172($fp)
	li $t0, 3
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
	addi $t0, $fp, -108
	sw $t0, -7192($fp)
	li $t0, 4
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
	addi $t0, $fp, -108
	sw $t0, -7212($fp)
	li $t0, 5
	sw $t0, -7216($fp)
	li $t0, 4
	lw $t1, -7216($fp)
	mul $t0, $t0, $t1
	sw $t0, -7220($fp)
	lw $t0, -7220($fp)
	lw $t1, -7212($fp)
	add $t0, $t0, $t1
	sw $t0, -7224($fp)
	lw $t0, -7224($fp)
	lw $t1, 0($t0)
	sw $t1, -7228($fp)
	lw $t0, -7228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -7232($fp)
	li $t0, 6
	sw $t0, -7236($fp)
	li $t0, 4
	lw $t1, -7236($fp)
	mul $t0, $t0, $t1
	sw $t0, -7240($fp)
	lw $t0, -7240($fp)
	lw $t1, -7232($fp)
	add $t0, $t0, $t1
	sw $t0, -7244($fp)
	lw $t0, -7244($fp)
	lw $t1, 0($t0)
	sw $t1, -7248($fp)
	lw $t0, -7248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -7252($fp)
	li $t0, 0
	sw $t0, -7256($fp)
	li $t0, 4
	lw $t1, -7256($fp)
	mul $t0, $t0, $t1
	sw $t0, -7260($fp)
	lw $t0, -7260($fp)
	lw $t1, -7252($fp)
	add $t0, $t0, $t1
	sw $t0, -7264($fp)
	lw $t0, -7264($fp)
	lw $t1, 0($t0)
	sw $t1, -7268($fp)
	lw $t0, -7268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -7272($fp)
	li $t0, 1
	sw $t0, -7276($fp)
	li $t0, 4
	lw $t1, -7276($fp)
	mul $t0, $t0, $t1
	sw $t0, -7280($fp)
	lw $t0, -7280($fp)
	lw $t1, -7272($fp)
	add $t0, $t0, $t1
	sw $t0, -7284($fp)
	lw $t0, -7284($fp)
	lw $t1, 0($t0)
	sw $t1, -7288($fp)
	lw $t0, -7288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -7292($fp)
	li $t0, 2
	sw $t0, -7296($fp)
	li $t0, 4
	lw $t1, -7296($fp)
	mul $t0, $t0, $t1
	sw $t0, -7300($fp)
	lw $t0, -7300($fp)
	lw $t1, -7292($fp)
	add $t0, $t0, $t1
	sw $t0, -7304($fp)
	lw $t0, -7304($fp)
	lw $t1, 0($t0)
	sw $t1, -7308($fp)
	lw $t0, -7308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -996($fp)
	sw $t0, -7312($fp)
	lw $t0, -7312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1008($fp)
	sw $t0, -7316($fp)
	lw $t0, -7316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -7320($fp)
	li $t0, 0
	sw $t0, -7324($fp)
	li $t0, 4
	lw $t1, -7324($fp)
	mul $t0, $t0, $t1
	sw $t0, -7328($fp)
	lw $t0, -7328($fp)
	lw $t1, -7320($fp)
	add $t0, $t0, $t1
	sw $t0, -7332($fp)
	lw $t0, -7332($fp)
	lw $t1, 0($t0)
	sw $t1, -7336($fp)
	lw $t0, -7336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -7340($fp)
	li $t0, 1
	sw $t0, -7344($fp)
	li $t0, 4
	lw $t1, -7344($fp)
	mul $t0, $t0, $t1
	sw $t0, -7348($fp)
	lw $t0, -7348($fp)
	lw $t1, -7340($fp)
	add $t0, $t0, $t1
	sw $t0, -7352($fp)
	lw $t0, -7352($fp)
	lw $t1, 0($t0)
	sw $t1, -7356($fp)
	lw $t0, -7356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -7360($fp)
	li $t0, 2
	sw $t0, -7364($fp)
	li $t0, 4
	lw $t1, -7364($fp)
	mul $t0, $t0, $t1
	sw $t0, -7368($fp)
	lw $t0, -7368($fp)
	lw $t1, -7360($fp)
	add $t0, $t0, $t1
	sw $t0, -7372($fp)
	lw $t0, -7372($fp)
	lw $t1, 0($t0)
	sw $t1, -7376($fp)
	lw $t0, -7376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -7380($fp)
	li $t0, 3
	sw $t0, -7384($fp)
	li $t0, 4
	lw $t1, -7384($fp)
	mul $t0, $t0, $t1
	sw $t0, -7388($fp)
	lw $t0, -7388($fp)
	lw $t1, -7380($fp)
	add $t0, $t0, $t1
	sw $t0, -7392($fp)
	lw $t0, -7392($fp)
	lw $t1, 0($t0)
	sw $t1, -7396($fp)
	lw $t0, -7396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -7400($fp)
	li $t0, 4
	sw $t0, -7404($fp)
	li $t0, 4
	lw $t1, -7404($fp)
	mul $t0, $t0, $t1
	sw $t0, -7408($fp)
	lw $t0, -7408($fp)
	lw $t1, -7400($fp)
	add $t0, $t0, $t1
	sw $t0, -7412($fp)
	lw $t0, -7412($fp)
	lw $t1, 0($t0)
	sw $t1, -7416($fp)
	lw $t0, -7416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -7420($fp)
	li $t0, 5
	sw $t0, -7424($fp)
	li $t0, 4
	lw $t1, -7424($fp)
	mul $t0, $t0, $t1
	sw $t0, -7428($fp)
	lw $t0, -7428($fp)
	lw $t1, -7420($fp)
	add $t0, $t0, $t1
	sw $t0, -7432($fp)
	lw $t0, -7432($fp)
	lw $t1, 0($t0)
	sw $t1, -7436($fp)
	lw $t0, -7436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -7440($fp)
	li $t0, 6
	sw $t0, -7444($fp)
	li $t0, 4
	lw $t1, -7444($fp)
	mul $t0, $t0, $t1
	sw $t0, -7448($fp)
	lw $t0, -7448($fp)
	lw $t1, -7440($fp)
	add $t0, $t0, $t1
	sw $t0, -7452($fp)
	lw $t0, -7452($fp)
	lw $t1, 0($t0)
	sw $t1, -7456($fp)
	lw $t0, -7456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -7460($fp)
	li $t0, 7
	sw $t0, -7464($fp)
	li $t0, 4
	lw $t1, -7464($fp)
	mul $t0, $t0, $t1
	sw $t0, -7468($fp)
	lw $t0, -7468($fp)
	lw $t1, -7460($fp)
	add $t0, $t0, $t1
	sw $t0, -7472($fp)
	lw $t0, -7472($fp)
	lw $t1, 0($t0)
	sw $t1, -7476($fp)
	lw $t0, -7476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1212($fp)
	sw $t0, -7480($fp)
	lw $t0, -7480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1224($fp)
	sw $t0, -7484($fp)
	lw $t0, -7484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1236($fp)
	sw $t0, -7488($fp)
	lw $t0, -7488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1248($fp)
	sw $t0, -7492($fp)
	lw $t0, -7492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1260($fp)
	sw $t0, -7496($fp)
	lw $t0, -7496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1272($fp)
	sw $t0, -7500($fp)
	lw $t0, -7500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1284($fp)
	sw $t0, -7504($fp)
	lw $t0, -7504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1296($fp)
	sw $t0, -7508($fp)
	lw $t0, -7508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1308($fp)
	sw $t0, -7512($fp)
	lw $t0, -7512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1320($fp)
	sw $t0, -7516($fp)
	lw $t0, -7516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1332($fp)
	sw $t0, -7520($fp)
	lw $t0, -7520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1344($fp)
	sw $t0, -7524($fp)
	lw $t0, -7524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1356($fp)
	sw $t0, -7528($fp)
	lw $t0, -7528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1368($fp)
	sw $t0, -7532($fp)
	lw $t0, -7532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1380($fp)
	sw $t0, -7536($fp)
	lw $t0, -7536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1392($fp)
	sw $t0, -7540($fp)
	lw $t0, -7540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -7544($fp)
	li $t0, 0
	sw $t0, -7548($fp)
	li $t0, 4
	lw $t1, -7548($fp)
	mul $t0, $t0, $t1
	sw $t0, -7552($fp)
	lw $t0, -7552($fp)
	lw $t1, -7544($fp)
	add $t0, $t0, $t1
	sw $t0, -7556($fp)
	lw $t0, -7556($fp)
	lw $t1, 0($t0)
	sw $t1, -7560($fp)
	lw $t0, -7560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -7564($fp)
	li $t0, 1
	sw $t0, -7568($fp)
	li $t0, 4
	lw $t1, -7568($fp)
	mul $t0, $t0, $t1
	sw $t0, -7572($fp)
	lw $t0, -7572($fp)
	lw $t1, -7564($fp)
	add $t0, $t0, $t1
	sw $t0, -7576($fp)
	lw $t0, -7576($fp)
	lw $t1, 0($t0)
	sw $t1, -7580($fp)
	lw $t0, -7580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -7584($fp)
	li $t0, 2
	sw $t0, -7588($fp)
	li $t0, 4
	lw $t1, -7588($fp)
	mul $t0, $t0, $t1
	sw $t0, -7592($fp)
	lw $t0, -7592($fp)
	lw $t1, -7584($fp)
	add $t0, $t0, $t1
	sw $t0, -7596($fp)
	lw $t0, -7596($fp)
	lw $t1, 0($t0)
	sw $t1, -7600($fp)
	lw $t0, -7600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -7604($fp)
	li $t0, 3
	sw $t0, -7608($fp)
	li $t0, 4
	lw $t1, -7608($fp)
	mul $t0, $t0, $t1
	sw $t0, -7612($fp)
	lw $t0, -7612($fp)
	lw $t1, -7604($fp)
	add $t0, $t0, $t1
	sw $t0, -7616($fp)
	lw $t0, -7616($fp)
	lw $t1, 0($t0)
	sw $t1, -7620($fp)
	lw $t0, -7620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1500($fp)
	sw $t0, -7624($fp)
	lw $t0, -7624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1512($fp)
	sw $t0, -7628($fp)
	lw $t0, -7628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -7632($fp)
	li $t0, 0
	sw $t0, -7636($fp)
	li $t0, 4
	lw $t1, -7636($fp)
	mul $t0, $t0, $t1
	sw $t0, -7640($fp)
	lw $t0, -7640($fp)
	lw $t1, -7632($fp)
	add $t0, $t0, $t1
	sw $t0, -7644($fp)
	lw $t0, -7644($fp)
	lw $t1, 0($t0)
	sw $t1, -7648($fp)
	lw $t0, -7648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1548($fp)
	sw $t0, -7652($fp)
	lw $t0, -7652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1560($fp)
	sw $t0, -7656($fp)
	lw $t0, -7656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1572($fp)
	sw $t0, -7660($fp)
	lw $t0, -7660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1584($fp)
	sw $t0, -7664($fp)
	lw $t0, -7664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1596($fp)
	sw $t0, -7668($fp)
	lw $t0, -7668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1608($fp)
	sw $t0, -7672($fp)
	lw $t0, -7672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1620($fp)
	sw $t0, -7676($fp)
	lw $t0, -7676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1632($fp)
	sw $t0, -7680($fp)
	lw $t0, -7680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1644($fp)
	sw $t0, -7684($fp)
	lw $t0, -7684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1656($fp)
	sw $t0, -7688($fp)
	lw $t0, -7688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1668($fp)
	sw $t0, -7692($fp)
	lw $t0, -7692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1680($fp)
	sw $t0, -7696($fp)
	lw $t0, -7696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1692($fp)
	sw $t0, -7700($fp)
	lw $t0, -7700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1704($fp)
	sw $t0, -7704($fp)
	lw $t0, -7704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1716($fp)
	sw $t0, -7708($fp)
	lw $t0, -7708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1728($fp)
	sw $t0, -7712($fp)
	lw $t0, -7712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1740($fp)
	sw $t0, -7716($fp)
	lw $t0, -7716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1752($fp)
	sw $t0, -7720($fp)
	lw $t0, -7720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1368($fp)
	sw $t0, -7724($fp)
	lw $ra, -4($fp)
	lw $v0, -7724($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -64
	li $t0, 64663
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 58420
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	lw $t0, -12($fp)
	sw $t0, -32($fp)
	lw $t0, -24($fp)
	sw $t0, -36($fp)
	lw $t0, -12($fp)
	sw $t0, -40($fp)
	lw $t0, -36($fp)
	lw $t1, -40($fp)
	sub $t0, $t0, $t1
	sw $t0, -44($fp)
	lw $t0, -12($fp)
	sw $t0, -48($fp)
	lw $t0, -44($fp)
	lw $t1, -48($fp)
	sub $t0, $t0, $t1
	sw $t0, -52($fp)
	addi $sp, $sp, -4
	lw $t0, -32($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -52($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -56($fp)
	addi $sp, $sp, 12
	lw $t0, -12($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 23801
	sw $t0, -68($fp)
	lw $ra, -4($fp)
	lw $v0, -68($fp)
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
