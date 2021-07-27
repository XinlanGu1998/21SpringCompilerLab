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
	addi $sp, $sp, -1324
	li $t0, 39933
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
	li $t0, 64998
	sw $t0, -116($fp)
	addi $t0, $fp, -68
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
	li $t0, 62540
	sw $t0, -140($fp)
	addi $t0, $fp, -68
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
	li $t0, 17633
	sw $t0, -164($fp)
	addi $t0, $fp, -68
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
	li $t0, 23882
	sw $t0, -188($fp)
	addi $t0, $fp, -68
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
	li $t0, 53899
	sw $t0, -212($fp)
	addi $t0, $fp, -68
	sw $t0, -216($fp)
	li $t0, 4
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
	li $t0, 37334
	sw $t0, -236($fp)
	addi $t0, $fp, -68
	sw $t0, -240($fp)
	li $t0, 5
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
	li $t0, 49291
	sw $t0, -260($fp)
	addi $t0, $fp, -68
	sw $t0, -264($fp)
	li $t0, 6
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
	li $t0, 11149
	sw $t0, -284($fp)
	addi $t0, $fp, -68
	sw $t0, -288($fp)
	li $t0, 7
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
	li $t0, 36025
	sw $t0, -308($fp)
	addi $t0, $fp, -68
	sw $t0, -312($fp)
	li $t0, 8
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
	li $t0, 23960
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	sw $t0, -340($fp)
	li $t0, 22633
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -352($fp)
	li $t0, 6814
	sw $t0, -356($fp)
	addi $t0, $fp, -76
	sw $t0, -360($fp)
	li $t0, 0
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
	li $t0, 19543
	sw $t0, -380($fp)
	addi $t0, $fp, -76
	sw $t0, -384($fp)
	li $t0, 1
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
	li $t0, 61625
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -412($fp)
	li $t0, 40759
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -424($fp)
	li $t0, 59569
	sw $t0, -428($fp)
	addi $t0, $fp, -112
	sw $t0, -432($fp)
	li $t0, 0
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
	li $t0, 38100
	sw $t0, -452($fp)
	addi $t0, $fp, -112
	sw $t0, -456($fp)
	li $t0, 1
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
	li $t0, 41483
	sw $t0, -476($fp)
	addi $t0, $fp, -112
	sw $t0, -480($fp)
	li $t0, 2
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
	li $t0, 58170
	sw $t0, -500($fp)
	addi $t0, $fp, -112
	sw $t0, -504($fp)
	li $t0, 3
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
	li $t0, 49350
	sw $t0, -524($fp)
	addi $t0, $fp, -112
	sw $t0, -528($fp)
	li $t0, 4
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
	li $t0, 28457
	sw $t0, -548($fp)
	addi $t0, $fp, -112
	sw $t0, -552($fp)
	li $t0, 5
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
	li $t0, 34152
	sw $t0, -572($fp)
	addi $t0, $fp, -112
	sw $t0, -576($fp)
	li $t0, 6
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
	li $t0, 26782
	sw $t0, -596($fp)
	addi $t0, $fp, -112
	sw $t0, -600($fp)
	li $t0, 7
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
	li $t0, 47398
	sw $t0, -620($fp)
	addi $t0, $fp, -112
	sw $t0, -624($fp)
	li $t0, 8
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -632($fp)
	lw $t0, -624($fp)
	lw $t1, -632($fp)
	add $t0, $t0, $t1
	sw $t0, -636($fp)
	lw $t0, -620($fp)
	lw $t1, -636($fp)
	sw $t0, 0($t1)
	lw $t0, -636($fp)
	lw $t1, 0($t0)
	sw $t1, -640($fp)
	li $t0, 6009
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	li $t0, 50041
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	lw $t0, -336($fp)
	sw $t0, -668($fp)
	lw $t0, -336($fp)
	sw $t0, -672($fp)
	lw $t0, -668($fp)
	lw $t1, -672($fp)
	sub $t0, $t0, $t1
	sw $t0, -676($fp)
	lw $t1, -676($fp)
	li $t2, 0
	bne $t1, $t2, label124
	j label122
label124:
	addi $t0, $fp, -68
	sw $t0, -680($fp)
	li $t0, 7
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
	li $t0, 37446
	sw $t0, -700($fp)
	li $t0, 50521
	sw $t0, -704($fp)
	lw $t0, -700($fp)
	lw $t1, -704($fp)
	mul $t0, $t0, $t1
	sw $t0, -708($fp)
	li $t0, 42670
	sw $t0, -712($fp)
	lw $t0, -708($fp)
	lw $t1, -712($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -716($fp)
	lw $t0, 8($fp)
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -724($fp)
	lw $t0, 20($fp)
	sw $t0, -728($fp)
	lw $t0, -420($fp)
	sw $t0, -732($fp)
	lw $t0, -728($fp)
	lw $t1, -732($fp)
	mul $t0, $t0, $t1
	sw $t0, -736($fp)
	lw $t0, -420($fp)
	sw $t0, -740($fp)
	lw $t0, -736($fp)
	lw $t1, -740($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -744($fp)
	lw $t0, -648($fp)
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -752($fp)
	li $t0, 54307
	sw $t0, -756($fp)
	addi $sp, $sp, -4
	lw $t0, -716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -756($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -760($fp)
	addi $sp, $sp, 24
	li $t0, 9244
	sw $t0, -764($fp)
	lw $t0, -760($fp)
	lw $t1, -764($fp)
	sub $t0, $t0, $t1
	sw $t0, -768($fp)
	li $t0, 26639
	sw $t0, -772($fp)
	li $t0, 0
	sw $t0, -776($fp)
	lw $t0, 16($fp)
	sw $t0, -780($fp)
	lw $t1, -780($fp)
	li $t2, 0
	bne $t1, $t2, label126
	j label125
label125:
	li $t0, 1
	sw $t0, -776($fp)
label126:
	addi $t0, $fp, -112
	sw $t0, -784($fp)
	lw $t0, -648($fp)
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
	li $t0, 0
	sw $t0, -804($fp)
	li $t0, 19813
	sw $t0, -808($fp)
	lw $t0, -420($fp)
	sw $t0, -812($fp)
	lw $t0, -808($fp)
	lw $t1, -812($fp)
	add $t0, $t0, $t1
	sw $t0, -816($fp)
	lw $t0, 8($fp)
	sw $t0, -820($fp)
	lw $t1, -816($fp)
	lw $t2, -820($fp)
	bgt $t1, $t2, label127
	j label128
label127:
	li $t0, 1
	sw $t0, -804($fp)
label128:
	addi $t0, $fp, -76
	sw $t0, -824($fp)
	li $t0, 1
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
	lw $t0, -336($fp)
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -848($fp)
	lw $t0, -336($fp)
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -856($fp)
	li $t0, 0
	sw $t0, -860($fp)
	lw $t0, 20($fp)
	sw $t0, -864($fp)
	lw $t0, 16($fp)
	sw $t0, -868($fp)
	lw $t0, -864($fp)
	lw $t1, -868($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -872($fp)
	lw $t0, -336($fp)
	sw $t0, -876($fp)
	lw $t1, -872($fp)
	lw $t2, -876($fp)
	beq $t1, $t2, label129
	j label130
label129:
	li $t0, 1
	sw $t0, -860($fp)
label130:
	addi $t0, $fp, -68
	sw $t0, -880($fp)
	lw $t0, 16($fp)
	sw $t0, -884($fp)
	li $t0, 4
	lw $t1, -884($fp)
	mul $t0, $t0, $t1
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	lw $t1, -880($fp)
	add $t0, $t0, $t1
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	lw $t1, 0($t0)
	sw $t1, -896($fp)
	li $t0, 0
	lw $t1, -896($fp)
	sub $t0, $t0, $t1
	sw $t0, -900($fp)
	addi $sp, $sp, -4
	lw $t0, -840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -900($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -904($fp)
	addi $sp, $sp, 24
	lw $t0, -408($fp)
	sw $t0, -908($fp)
	lw $t0, -904($fp)
	lw $t1, -908($fp)
	sub $t0, $t0, $t1
	sw $t0, -912($fp)
	li $t0, 0
	sw $t0, -916($fp)
	li $t0, 0
	sw $t0, -920($fp)
	lw $t0, 8($fp)
	sw $t0, -924($fp)
	lw $t0, 20($fp)
	sw $t0, -928($fp)
	lw $t1, -924($fp)
	lw $t2, -928($fp)
	ble $t1, $t2, label133
	j label134
label133:
	li $t0, 1
	sw $t0, -920($fp)
label134:
	li $t0, 45416
	sw $t0, -932($fp)
	lw $t1, -920($fp)
	lw $t2, -932($fp)
	bne $t1, $t2, label131
	j label132
label131:
	li $t0, 1
	sw $t0, -916($fp)
label132:
	addi $sp, $sp, -4
	lw $t0, -776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -916($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -936($fp)
	addi $sp, $sp, 24
	li $t0, 46135
	sw $t0, -940($fp)
	addi $sp, $sp, -4
	lw $t0, -696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -940($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -944($fp)
	addi $sp, $sp, 24
	lw $t1, -944($fp)
	li $t2, 0
	bne $t1, $t2, label122
	j label121
label121:
	li $t0, 0
	sw $t0, -948($fp)
	lw $t0, 4($fp)
	sw $t0, -952($fp)
	li $t0, 0
	lw $t1, -952($fp)
	sub $t0, $t0, $t1
	sw $t0, -956($fp)
	li $t0, 45269
	sw $t0, -960($fp)
	lw $t0, -956($fp)
	lw $t1, -960($fp)
	add $t0, $t0, $t1
	sw $t0, -964($fp)
	lw $t1, -964($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label136
label137:
	li $t0, 0
	sw $t0, -968($fp)
	li $t0, 58237
	sw $t0, -972($fp)
	lw $t1, -972($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label138
label138:
	li $t0, 1
	sw $t0, -968($fp)
label139:
	lw $t0, 12($fp)
	sw $t0, -976($fp)
	lw $t0, -968($fp)
	lw $t1, -976($fp)
	mul $t0, $t0, $t1
	sw $t0, -980($fp)
	li $t0, 10916
	sw $t0, -984($fp)
	lw $t1, -980($fp)
	lw $t2, -984($fp)
	bne $t1, $t2, label135
	j label136
label135:
	li $t0, 1
	sw $t0, -948($fp)
label136:
	j label123
label122:
	li $t0, 52083
	sw $t0, -1004($fp)
	addi $t0, $fp, -1000
	sw $t0, -1008($fp)
	li $t0, 0
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
	li $t0, 12244
	sw $t0, -1028($fp)
	addi $t0, $fp, -1000
	sw $t0, -1032($fp)
	li $t0, 1
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
	li $t0, 7006
	sw $t0, -1052($fp)
	addi $t0, $fp, -1000
	sw $t0, -1056($fp)
	li $t0, 2
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
	li $t0, 27307
	sw $t0, -1076($fp)
	addi $t0, $fp, -1000
	sw $t0, -1080($fp)
	li $t0, 3
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
	lw $t0, -420($fp)
	sw $t0, -1100($fp)
	lw $t0, -648($fp)
	sw $t0, -1104($fp)
	lw $t0, -1100($fp)
	lw $t1, -1104($fp)
	mul $t0, $t0, $t1
	sw $t0, -1108($fp)
	li $t0, 6278
	sw $t0, -1112($fp)
	lw $t0, -1108($fp)
	lw $t1, -1112($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1116($fp)
	li $t0, 0
	sw $t0, -1120($fp)
	lw $t0, -420($fp)
	sw $t0, -1124($fp)
	lw $t1, -1124($fp)
	li $t2, 0
	bne $t1, $t2, label141
	j label140
label140:
	li $t0, 1
	sw $t0, -1120($fp)
label141:
	lw $t0, -1116($fp)
	lw $t1, -1120($fp)
	sub $t0, $t0, $t1
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -1132($fp)
	addi $t0, $fp, -1000
	sw $t0, -1136($fp)
	li $t0, 0
	sw $t0, -1140($fp)
	li $t0, 45106
	sw $t0, -1144($fp)
	lw $t1, -1144($fp)
	li $t2, 0
	bne $t1, $t2, label143
	j label145
label145:
	lw $t0, 12($fp)
	sw $t0, -1148($fp)
	lw $t1, -1148($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label143
label144:
	li $t0, 3254
	sw $t0, -1152($fp)
	lw $t1, -1152($fp)
	li $t2, 0
	bne $t1, $t2, label142
	j label143
label142:
	li $t0, 1
	sw $t0, -1140($fp)
label143:
	li $t0, 4
	lw $t1, -1140($fp)
	mul $t0, $t0, $t1
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	lw $t1, -1136($fp)
	add $t0, $t0, $t1
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	lw $t1, 0($t0)
	sw $t1, -1164($fp)
	li $t0, 0
	sw $t0, -1168($fp)
	li $t0, 64448
	sw $t0, -1172($fp)
	lw $t0, 12($fp)
	sw $t0, -1176($fp)
	li $t0, 0
	lw $t1, -1176($fp)
	sub $t0, $t0, $t1
	sw $t0, -1180($fp)
	li $t0, 0
	lw $t1, -1180($fp)
	sub $t0, $t0, $t1
	sw $t0, -1184($fp)
	lw $t0, -1172($fp)
	lw $t1, -1184($fp)
	mul $t0, $t0, $t1
	sw $t0, -1188($fp)
	li $t0, 0
	sw $t0, -1192($fp)
	li $t0, 0
	sw $t0, -1196($fp)
	lw $t0, 8($fp)
	sw $t0, -1200($fp)
	li $t0, 55703
	sw $t0, -1204($fp)
	lw $t1, -1200($fp)
	lw $t2, -1204($fp)
	bge $t1, $t2, label150
	j label151
label150:
	li $t0, 1
	sw $t0, -1196($fp)
label151:
	lw $t0, -336($fp)
	sw $t0, -1208($fp)
	lw $t1, -1196($fp)
	lw $t2, -1208($fp)
	beq $t1, $t2, label148
	j label149
label148:
	li $t0, 1
	sw $t0, -1192($fp)
label149:
	lw $t0, 16($fp)
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	sw $t0, 20($fp)
	lw $t0, 20($fp)
	sw $t0, -1216($fp)
	li $t0, 0
	sw $t0, -1220($fp)
	li $t0, 33064
	sw $t0, -1224($fp)
	lw $t1, -1224($fp)
	li $t2, 0
	bne $t1, $t2, label152
	j label153
label152:
	li $t0, 1
	sw $t0, -1220($fp)
label153:
	lw $t0, 4($fp)
	sw $t0, -1228($fp)
	lw $t0, 16($fp)
	sw $t0, -1232($fp)
	lw $t0, -1228($fp)
	lw $t1, -1232($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1236($fp)
	li $t0, 28921
	sw $t0, -1240($fp)
	li $t0, 31711
	sw $t0, -1244($fp)
	lw $t0, -1240($fp)
	lw $t1, -1244($fp)
	mul $t0, $t0, $t1
	sw $t0, -1248($fp)
	addi $sp, $sp, -4
	lw $t0, -1192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1248($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1252($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -1252($fp)
	sub $t0, $t0, $t1
	sw $t0, -1256($fp)
	lw $t1, -1188($fp)
	lw $t2, -1256($fp)
	bgt $t1, $t2, label146
	j label147
label146:
	li $t0, 1
	sw $t0, -1168($fp)
label147:
label123:
	addi $t0, $fp, -8
	sw $t0, -1260($fp)
	li $t0, 0
	sw $t0, -1264($fp)
	li $t0, 4
	lw $t1, -1264($fp)
	mul $t0, $t0, $t1
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	lw $t1, -1260($fp)
	add $t0, $t0, $t1
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	lw $t1, 0($t0)
	sw $t1, -1276($fp)
	lw $t0, -1276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1280($fp)
	li $t0, 13574
	sw $t0, -1284($fp)
	lw $t1, -1284($fp)
	li $t2, 0
	bne $t1, $t2, label157
	j label156
label157:
	li $t0, 39074
	sw $t0, -1288($fp)
	lw $t0, 12($fp)
	sw $t0, -1292($fp)
	lw $t1, -1288($fp)
	lw $t2, -1292($fp)
	bne $t1, $t2, label154
	j label156
label156:
	addi $t0, $fp, -8
	sw $t0, -1296($fp)
	lw $t0, 4($fp)
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
	li $t0, 40209
	sw $t0, -1316($fp)
	lw $t0, -1312($fp)
	lw $t1, -1316($fp)
	mul $t0, $t0, $t1
	sw $t0, -1320($fp)
	li $t0, 59709
	sw $t0, -1324($fp)
	lw $t0, -1320($fp)
	lw $t1, -1324($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1328($fp)
	lw $t1, -1328($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label155
label154:
	li $t0, 1
	sw $t0, -1280($fp)
label155:
	lw $ra, -4($fp)
	lw $v0, -1280($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -44244
	li $t0, 18954
	sw $t0, -1340($fp)
	addi $t0, $fp, -8
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
	li $t0, 1849
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	sw $t0, -1372($fp)
	li $t0, 51476
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	sw $t0, -1384($fp)
	li $t0, 38767
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	sw $t0, -1396($fp)
	li $t0, 28488
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	sw $t0, -1404($fp)
	lw $t0, -1404($fp)
	sw $t0, -1408($fp)
	li $t0, 40247
	sw $t0, -1412($fp)
	addi $t0, $fp, -40
	sw $t0, -1416($fp)
	li $t0, 0
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1424($fp)
	lw $t0, -1416($fp)
	lw $t1, -1424($fp)
	add $t0, $t0, $t1
	sw $t0, -1428($fp)
	lw $t0, -1412($fp)
	lw $t1, -1428($fp)
	sw $t0, 0($t1)
	lw $t0, -1428($fp)
	lw $t1, 0($t0)
	sw $t1, -1432($fp)
	li $t0, 10677
	sw $t0, -1436($fp)
	addi $t0, $fp, -40
	sw $t0, -1440($fp)
	li $t0, 1
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1448($fp)
	lw $t0, -1440($fp)
	lw $t1, -1448($fp)
	add $t0, $t0, $t1
	sw $t0, -1452($fp)
	lw $t0, -1436($fp)
	lw $t1, -1452($fp)
	sw $t0, 0($t1)
	lw $t0, -1452($fp)
	lw $t1, 0($t0)
	sw $t1, -1456($fp)
	li $t0, 13474
	sw $t0, -1460($fp)
	addi $t0, $fp, -40
	sw $t0, -1464($fp)
	li $t0, 2
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1472($fp)
	lw $t0, -1464($fp)
	lw $t1, -1472($fp)
	add $t0, $t0, $t1
	sw $t0, -1476($fp)
	lw $t0, -1460($fp)
	lw $t1, -1476($fp)
	sw $t0, 0($t1)
	lw $t0, -1476($fp)
	lw $t1, 0($t0)
	sw $t1, -1480($fp)
	li $t0, 17381
	sw $t0, -1484($fp)
	addi $t0, $fp, -40
	sw $t0, -1488($fp)
	li $t0, 3
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1496($fp)
	lw $t0, -1488($fp)
	lw $t1, -1496($fp)
	add $t0, $t0, $t1
	sw $t0, -1500($fp)
	lw $t0, -1484($fp)
	lw $t1, -1500($fp)
	sw $t0, 0($t1)
	lw $t0, -1500($fp)
	lw $t1, 0($t0)
	sw $t1, -1504($fp)
	li $t0, 19921
	sw $t0, -1508($fp)
	addi $t0, $fp, -40
	sw $t0, -1512($fp)
	li $t0, 4
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1520($fp)
	lw $t0, -1512($fp)
	lw $t1, -1520($fp)
	add $t0, $t0, $t1
	sw $t0, -1524($fp)
	lw $t0, -1508($fp)
	lw $t1, -1524($fp)
	sw $t0, 0($t1)
	lw $t0, -1524($fp)
	lw $t1, 0($t0)
	sw $t1, -1528($fp)
	li $t0, 47750
	sw $t0, -1532($fp)
	addi $t0, $fp, -40
	sw $t0, -1536($fp)
	li $t0, 5
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1544($fp)
	lw $t0, -1536($fp)
	lw $t1, -1544($fp)
	add $t0, $t0, $t1
	sw $t0, -1548($fp)
	lw $t0, -1532($fp)
	lw $t1, -1548($fp)
	sw $t0, 0($t1)
	lw $t0, -1548($fp)
	lw $t1, 0($t0)
	sw $t1, -1552($fp)
	li $t0, 5665
	sw $t0, -1556($fp)
	addi $t0, $fp, -40
	sw $t0, -1560($fp)
	li $t0, 6
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1568($fp)
	lw $t0, -1560($fp)
	lw $t1, -1568($fp)
	add $t0, $t0, $t1
	sw $t0, -1572($fp)
	lw $t0, -1556($fp)
	lw $t1, -1572($fp)
	sw $t0, 0($t1)
	lw $t0, -1572($fp)
	lw $t1, 0($t0)
	sw $t1, -1576($fp)
	li $t0, 65191
	sw $t0, -1580($fp)
	addi $t0, $fp, -40
	sw $t0, -1584($fp)
	li $t0, 7
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1592($fp)
	lw $t0, -1584($fp)
	lw $t1, -1592($fp)
	add $t0, $t0, $t1
	sw $t0, -1596($fp)
	lw $t0, -1580($fp)
	lw $t1, -1596($fp)
	sw $t0, 0($t1)
	lw $t0, -1596($fp)
	lw $t1, 0($t0)
	sw $t1, -1600($fp)
	li $t0, 40451
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	sw $t0, -1612($fp)
	li $t0, 16581
	sw $t0, -1616($fp)
	addi $t0, $fp, -60
	sw $t0, -1620($fp)
	li $t0, 0
	sw $t0, -1624($fp)
	lw $t0, -1624($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1628($fp)
	lw $t0, -1620($fp)
	lw $t1, -1628($fp)
	add $t0, $t0, $t1
	sw $t0, -1632($fp)
	lw $t0, -1616($fp)
	lw $t1, -1632($fp)
	sw $t0, 0($t1)
	lw $t0, -1632($fp)
	lw $t1, 0($t0)
	sw $t1, -1636($fp)
	li $t0, 51738
	sw $t0, -1640($fp)
	addi $t0, $fp, -60
	sw $t0, -1644($fp)
	li $t0, 1
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1652($fp)
	lw $t0, -1644($fp)
	lw $t1, -1652($fp)
	add $t0, $t0, $t1
	sw $t0, -1656($fp)
	lw $t0, -1640($fp)
	lw $t1, -1656($fp)
	sw $t0, 0($t1)
	lw $t0, -1656($fp)
	lw $t1, 0($t0)
	sw $t1, -1660($fp)
	li $t0, 52696
	sw $t0, -1664($fp)
	addi $t0, $fp, -60
	sw $t0, -1668($fp)
	li $t0, 2
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1676($fp)
	lw $t0, -1668($fp)
	lw $t1, -1676($fp)
	add $t0, $t0, $t1
	sw $t0, -1680($fp)
	lw $t0, -1664($fp)
	lw $t1, -1680($fp)
	sw $t0, 0($t1)
	lw $t0, -1680($fp)
	lw $t1, 0($t0)
	sw $t1, -1684($fp)
	li $t0, 23587
	sw $t0, -1688($fp)
	addi $t0, $fp, -60
	sw $t0, -1692($fp)
	li $t0, 3
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1700($fp)
	lw $t0, -1692($fp)
	lw $t1, -1700($fp)
	add $t0, $t0, $t1
	sw $t0, -1704($fp)
	lw $t0, -1688($fp)
	lw $t1, -1704($fp)
	sw $t0, 0($t1)
	lw $t0, -1704($fp)
	lw $t1, 0($t0)
	sw $t1, -1708($fp)
	li $t0, 13509
	sw $t0, -1712($fp)
	addi $t0, $fp, -60
	sw $t0, -1716($fp)
	li $t0, 4
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1724($fp)
	lw $t0, -1716($fp)
	lw $t1, -1724($fp)
	add $t0, $t0, $t1
	sw $t0, -1728($fp)
	lw $t0, -1712($fp)
	lw $t1, -1728($fp)
	sw $t0, 0($t1)
	lw $t0, -1728($fp)
	lw $t1, 0($t0)
	sw $t1, -1732($fp)
	li $t0, 58974
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	sw $t0, -1744($fp)
	li $t0, 3158
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	sw $t0, -1756($fp)
	li $t0, 16764
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	sw $t0, -1768($fp)
	li $t0, 57886
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	sw $t0, -1780($fp)
	li $t0, 32079
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	sw $t0, -1792($fp)
	li $t0, 48475
	sw $t0, -1796($fp)
	addi $t0, $fp, -88
	sw $t0, -1800($fp)
	li $t0, 0
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
	li $t0, 25415
	sw $t0, -1820($fp)
	addi $t0, $fp, -88
	sw $t0, -1824($fp)
	li $t0, 1
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
	li $t0, 22246
	sw $t0, -1844($fp)
	addi $t0, $fp, -88
	sw $t0, -1848($fp)
	li $t0, 2
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
	li $t0, 62049
	sw $t0, -1868($fp)
	addi $t0, $fp, -88
	sw $t0, -1872($fp)
	li $t0, 3
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
	li $t0, 64489
	sw $t0, -1892($fp)
	addi $t0, $fp, -88
	sw $t0, -1896($fp)
	li $t0, 4
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
	li $t0, 62455
	sw $t0, -1916($fp)
	addi $t0, $fp, -88
	sw $t0, -1920($fp)
	li $t0, 5
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1928($fp)
	lw $t0, -1920($fp)
	lw $t1, -1928($fp)
	add $t0, $t0, $t1
	sw $t0, -1932($fp)
	lw $t0, -1916($fp)
	lw $t1, -1932($fp)
	sw $t0, 0($t1)
	lw $t0, -1932($fp)
	lw $t1, 0($t0)
	sw $t1, -1936($fp)
	li $t0, 56222
	sw $t0, -1940($fp)
	addi $t0, $fp, -88
	sw $t0, -1944($fp)
	li $t0, 6
	sw $t0, -1948($fp)
	lw $t0, -1948($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1952($fp)
	lw $t0, -1944($fp)
	lw $t1, -1952($fp)
	add $t0, $t0, $t1
	sw $t0, -1956($fp)
	lw $t0, -1940($fp)
	lw $t1, -1956($fp)
	sw $t0, 0($t1)
	lw $t0, -1956($fp)
	lw $t1, 0($t0)
	sw $t1, -1960($fp)
	li $t0, 17907
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	sw $t0, -1968($fp)
	lw $t0, -1968($fp)
	sw $t0, -1972($fp)
	li $t0, 64305
	sw $t0, -1976($fp)
	lw $t0, -1976($fp)
	sw $t0, -1980($fp)
	lw $t0, -1980($fp)
	sw $t0, -1984($fp)
	li $t0, 42162
	sw $t0, -1988($fp)
	lw $t0, -1988($fp)
	sw $t0, -1992($fp)
	lw $t0, -1992($fp)
	sw $t0, -1996($fp)
	li $t0, 56674
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	sw $t0, -2004($fp)
	lw $t0, -2004($fp)
	sw $t0, -2008($fp)
	li $t0, 27257
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	sw $t0, -2016($fp)
	lw $t0, -2016($fp)
	sw $t0, -2020($fp)
	li $t0, 16873
	sw $t0, -2024($fp)
	lw $t0, -2024($fp)
	sw $t0, -2028($fp)
	lw $t0, -2028($fp)
	sw $t0, -2032($fp)
	li $t0, 1815
	sw $t0, -2036($fp)
	addi $t0, $fp, -128
	sw $t0, -2040($fp)
	li $t0, 0
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2048($fp)
	lw $t0, -2040($fp)
	lw $t1, -2048($fp)
	add $t0, $t0, $t1
	sw $t0, -2052($fp)
	lw $t0, -2036($fp)
	lw $t1, -2052($fp)
	sw $t0, 0($t1)
	lw $t0, -2052($fp)
	lw $t1, 0($t0)
	sw $t1, -2056($fp)
	li $t0, 40731
	sw $t0, -2060($fp)
	addi $t0, $fp, -128
	sw $t0, -2064($fp)
	li $t0, 1
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2072($fp)
	lw $t0, -2064($fp)
	lw $t1, -2072($fp)
	add $t0, $t0, $t1
	sw $t0, -2076($fp)
	lw $t0, -2060($fp)
	lw $t1, -2076($fp)
	sw $t0, 0($t1)
	lw $t0, -2076($fp)
	lw $t1, 0($t0)
	sw $t1, -2080($fp)
	li $t0, 34255
	sw $t0, -2084($fp)
	addi $t0, $fp, -128
	sw $t0, -2088($fp)
	li $t0, 2
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2096($fp)
	lw $t0, -2088($fp)
	lw $t1, -2096($fp)
	add $t0, $t0, $t1
	sw $t0, -2100($fp)
	lw $t0, -2084($fp)
	lw $t1, -2100($fp)
	sw $t0, 0($t1)
	lw $t0, -2100($fp)
	lw $t1, 0($t0)
	sw $t1, -2104($fp)
	li $t0, 21736
	sw $t0, -2108($fp)
	addi $t0, $fp, -128
	sw $t0, -2112($fp)
	li $t0, 3
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2120($fp)
	lw $t0, -2112($fp)
	lw $t1, -2120($fp)
	add $t0, $t0, $t1
	sw $t0, -2124($fp)
	lw $t0, -2108($fp)
	lw $t1, -2124($fp)
	sw $t0, 0($t1)
	lw $t0, -2124($fp)
	lw $t1, 0($t0)
	sw $t1, -2128($fp)
	li $t0, 22946
	sw $t0, -2132($fp)
	addi $t0, $fp, -128
	sw $t0, -2136($fp)
	li $t0, 4
	sw $t0, -2140($fp)
	lw $t0, -2140($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2144($fp)
	lw $t0, -2136($fp)
	lw $t1, -2144($fp)
	add $t0, $t0, $t1
	sw $t0, -2148($fp)
	lw $t0, -2132($fp)
	lw $t1, -2148($fp)
	sw $t0, 0($t1)
	lw $t0, -2148($fp)
	lw $t1, 0($t0)
	sw $t1, -2152($fp)
	li $t0, 39920
	sw $t0, -2156($fp)
	addi $t0, $fp, -128
	sw $t0, -2160($fp)
	li $t0, 5
	sw $t0, -2164($fp)
	lw $t0, -2164($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2168($fp)
	lw $t0, -2160($fp)
	lw $t1, -2168($fp)
	add $t0, $t0, $t1
	sw $t0, -2172($fp)
	lw $t0, -2156($fp)
	lw $t1, -2172($fp)
	sw $t0, 0($t1)
	lw $t0, -2172($fp)
	lw $t1, 0($t0)
	sw $t1, -2176($fp)
	li $t0, 21391
	sw $t0, -2180($fp)
	addi $t0, $fp, -128
	sw $t0, -2184($fp)
	li $t0, 6
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2192($fp)
	lw $t0, -2184($fp)
	lw $t1, -2192($fp)
	add $t0, $t0, $t1
	sw $t0, -2196($fp)
	lw $t0, -2180($fp)
	lw $t1, -2196($fp)
	sw $t0, 0($t1)
	lw $t0, -2196($fp)
	lw $t1, 0($t0)
	sw $t1, -2200($fp)
	li $t0, 63397
	sw $t0, -2204($fp)
	addi $t0, $fp, -128
	sw $t0, -2208($fp)
	li $t0, 7
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2216($fp)
	lw $t0, -2208($fp)
	lw $t1, -2216($fp)
	add $t0, $t0, $t1
	sw $t0, -2220($fp)
	lw $t0, -2204($fp)
	lw $t1, -2220($fp)
	sw $t0, 0($t1)
	lw $t0, -2220($fp)
	lw $t1, 0($t0)
	sw $t1, -2224($fp)
	li $t0, 56501
	sw $t0, -2228($fp)
	addi $t0, $fp, -128
	sw $t0, -2232($fp)
	li $t0, 8
	sw $t0, -2236($fp)
	lw $t0, -2236($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2240($fp)
	lw $t0, -2232($fp)
	lw $t1, -2240($fp)
	add $t0, $t0, $t1
	sw $t0, -2244($fp)
	lw $t0, -2228($fp)
	lw $t1, -2244($fp)
	sw $t0, 0($t1)
	lw $t0, -2244($fp)
	lw $t1, 0($t0)
	sw $t1, -2248($fp)
	li $t0, 7594
	sw $t0, -2252($fp)
	addi $t0, $fp, -128
	sw $t0, -2256($fp)
	li $t0, 9
	sw $t0, -2260($fp)
	lw $t0, -2260($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2264($fp)
	lw $t0, -2256($fp)
	lw $t1, -2264($fp)
	add $t0, $t0, $t1
	sw $t0, -2268($fp)
	lw $t0, -2252($fp)
	lw $t1, -2268($fp)
	sw $t0, 0($t1)
	lw $t0, -2268($fp)
	lw $t1, 0($t0)
	sw $t1, -2272($fp)
	li $t0, 50557
	sw $t0, -2276($fp)
	lw $t0, -2276($fp)
	sw $t0, -2280($fp)
	lw $t0, -2280($fp)
	sw $t0, -2284($fp)
	li $t0, 14553
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	sw $t0, -2296($fp)
	li $t0, 21103
	sw $t0, -2300($fp)
	lw $t0, -2300($fp)
	sw $t0, -2304($fp)
	lw $t0, -2304($fp)
	sw $t0, -2308($fp)
	li $t0, 43995
	sw $t0, -2312($fp)
	lw $t0, -2312($fp)
	sw $t0, -2316($fp)
	lw $t0, -2316($fp)
	sw $t0, -2320($fp)
	li $t0, 17711
	sw $t0, -2324($fp)
	lw $t0, -2324($fp)
	sw $t0, -2328($fp)
	lw $t0, -2328($fp)
	sw $t0, -2332($fp)
	li $t0, 37867
	sw $t0, -2336($fp)
	lw $t0, -2336($fp)
	sw $t0, -2340($fp)
	lw $t0, -2340($fp)
	sw $t0, -2344($fp)
	li $t0, 36346
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	sw $t0, -2356($fp)
	li $t0, 49790
	sw $t0, -2360($fp)
	lw $t0, -2360($fp)
	sw $t0, -2364($fp)
	lw $t0, -2364($fp)
	sw $t0, -2368($fp)
	li $t0, 20807
	sw $t0, -2372($fp)
	addi $t0, $fp, -140
	sw $t0, -2376($fp)
	li $t0, 0
	sw $t0, -2380($fp)
	lw $t0, -2380($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2384($fp)
	lw $t0, -2376($fp)
	lw $t1, -2384($fp)
	add $t0, $t0, $t1
	sw $t0, -2388($fp)
	lw $t0, -2372($fp)
	lw $t1, -2388($fp)
	sw $t0, 0($t1)
	lw $t0, -2388($fp)
	lw $t1, 0($t0)
	sw $t1, -2392($fp)
	li $t0, 61761
	sw $t0, -2396($fp)
	addi $t0, $fp, -140
	sw $t0, -2400($fp)
	li $t0, 1
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2408($fp)
	lw $t0, -2400($fp)
	lw $t1, -2408($fp)
	add $t0, $t0, $t1
	sw $t0, -2412($fp)
	lw $t0, -2396($fp)
	lw $t1, -2412($fp)
	sw $t0, 0($t1)
	lw $t0, -2412($fp)
	lw $t1, 0($t0)
	sw $t1, -2416($fp)
	li $t0, 6500
	sw $t0, -2420($fp)
	addi $t0, $fp, -140
	sw $t0, -2424($fp)
	li $t0, 2
	sw $t0, -2428($fp)
	lw $t0, -2428($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2432($fp)
	lw $t0, -2424($fp)
	lw $t1, -2432($fp)
	add $t0, $t0, $t1
	sw $t0, -2436($fp)
	lw $t0, -2420($fp)
	lw $t1, -2436($fp)
	sw $t0, 0($t1)
	lw $t0, -2436($fp)
	lw $t1, 0($t0)
	sw $t1, -2440($fp)
	li $t0, 17320
	sw $t0, -2444($fp)
	addi $t0, $fp, -172
	sw $t0, -2448($fp)
	li $t0, 0
	sw $t0, -2452($fp)
	lw $t0, -2452($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2456($fp)
	lw $t0, -2448($fp)
	lw $t1, -2456($fp)
	add $t0, $t0, $t1
	sw $t0, -2460($fp)
	lw $t0, -2444($fp)
	lw $t1, -2460($fp)
	sw $t0, 0($t1)
	lw $t0, -2460($fp)
	lw $t1, 0($t0)
	sw $t1, -2464($fp)
	li $t0, 60714
	sw $t0, -2468($fp)
	addi $t0, $fp, -172
	sw $t0, -2472($fp)
	li $t0, 1
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2480($fp)
	lw $t0, -2472($fp)
	lw $t1, -2480($fp)
	add $t0, $t0, $t1
	sw $t0, -2484($fp)
	lw $t0, -2468($fp)
	lw $t1, -2484($fp)
	sw $t0, 0($t1)
	lw $t0, -2484($fp)
	lw $t1, 0($t0)
	sw $t1, -2488($fp)
	li $t0, 3420
	sw $t0, -2492($fp)
	addi $t0, $fp, -172
	sw $t0, -2496($fp)
	li $t0, 2
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2504($fp)
	lw $t0, -2496($fp)
	lw $t1, -2504($fp)
	add $t0, $t0, $t1
	sw $t0, -2508($fp)
	lw $t0, -2492($fp)
	lw $t1, -2508($fp)
	sw $t0, 0($t1)
	lw $t0, -2508($fp)
	lw $t1, 0($t0)
	sw $t1, -2512($fp)
	li $t0, 8007
	sw $t0, -2516($fp)
	addi $t0, $fp, -172
	sw $t0, -2520($fp)
	li $t0, 3
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2528($fp)
	lw $t0, -2520($fp)
	lw $t1, -2528($fp)
	add $t0, $t0, $t1
	sw $t0, -2532($fp)
	lw $t0, -2516($fp)
	lw $t1, -2532($fp)
	sw $t0, 0($t1)
	lw $t0, -2532($fp)
	lw $t1, 0($t0)
	sw $t1, -2536($fp)
	li $t0, 13085
	sw $t0, -2540($fp)
	addi $t0, $fp, -172
	sw $t0, -2544($fp)
	li $t0, 4
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2552($fp)
	lw $t0, -2544($fp)
	lw $t1, -2552($fp)
	add $t0, $t0, $t1
	sw $t0, -2556($fp)
	lw $t0, -2540($fp)
	lw $t1, -2556($fp)
	sw $t0, 0($t1)
	lw $t0, -2556($fp)
	lw $t1, 0($t0)
	sw $t1, -2560($fp)
	li $t0, 2189
	sw $t0, -2564($fp)
	addi $t0, $fp, -172
	sw $t0, -2568($fp)
	li $t0, 5
	sw $t0, -2572($fp)
	lw $t0, -2572($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2576($fp)
	lw $t0, -2568($fp)
	lw $t1, -2576($fp)
	add $t0, $t0, $t1
	sw $t0, -2580($fp)
	lw $t0, -2564($fp)
	lw $t1, -2580($fp)
	sw $t0, 0($t1)
	lw $t0, -2580($fp)
	lw $t1, 0($t0)
	sw $t1, -2584($fp)
	li $t0, 50169
	sw $t0, -2588($fp)
	addi $t0, $fp, -172
	sw $t0, -2592($fp)
	li $t0, 6
	sw $t0, -2596($fp)
	lw $t0, -2596($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2600($fp)
	lw $t0, -2592($fp)
	lw $t1, -2600($fp)
	add $t0, $t0, $t1
	sw $t0, -2604($fp)
	lw $t0, -2588($fp)
	lw $t1, -2604($fp)
	sw $t0, 0($t1)
	lw $t0, -2604($fp)
	lw $t1, 0($t0)
	sw $t1, -2608($fp)
	li $t0, 4223
	sw $t0, -2612($fp)
	addi $t0, $fp, -172
	sw $t0, -2616($fp)
	li $t0, 7
	sw $t0, -2620($fp)
	lw $t0, -2620($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2624($fp)
	lw $t0, -2616($fp)
	lw $t1, -2624($fp)
	add $t0, $t0, $t1
	sw $t0, -2628($fp)
	lw $t0, -2612($fp)
	lw $t1, -2628($fp)
	sw $t0, 0($t1)
	lw $t0, -2628($fp)
	lw $t1, 0($t0)
	sw $t1, -2632($fp)
	li $t0, 29446
	sw $t0, -2636($fp)
	lw $t0, -2636($fp)
	sw $t0, -2640($fp)
	lw $t0, -2640($fp)
	sw $t0, -2644($fp)
	li $t0, 1507
	sw $t0, -2648($fp)
	lw $t0, -2648($fp)
	sw $t0, -2652($fp)
	lw $t0, -2652($fp)
	sw $t0, -2656($fp)
	li $t0, 6038
	sw $t0, -2660($fp)
	lw $t0, -2660($fp)
	sw $t0, -2664($fp)
	lw $t0, -2664($fp)
	sw $t0, -2668($fp)
	li $t0, 4642
	sw $t0, -2672($fp)
	lw $t0, -2672($fp)
	sw $t0, -2676($fp)
	lw $t0, -2676($fp)
	sw $t0, -2680($fp)
	li $t0, 35762
	sw $t0, -2684($fp)
	lw $t0, -2684($fp)
	sw $t0, -2688($fp)
	lw $t0, -2688($fp)
	sw $t0, -2692($fp)
	li $t0, 27774
	sw $t0, -2696($fp)
	lw $t0, -2696($fp)
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	sw $t0, -2704($fp)
	li $t0, 27588
	sw $t0, -2708($fp)
	addi $t0, $fp, -200
	sw $t0, -2712($fp)
	li $t0, 0
	sw $t0, -2716($fp)
	lw $t0, -2716($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2720($fp)
	lw $t0, -2712($fp)
	lw $t1, -2720($fp)
	add $t0, $t0, $t1
	sw $t0, -2724($fp)
	lw $t0, -2708($fp)
	lw $t1, -2724($fp)
	sw $t0, 0($t1)
	lw $t0, -2724($fp)
	lw $t1, 0($t0)
	sw $t1, -2728($fp)
	li $t0, 10146
	sw $t0, -2732($fp)
	addi $t0, $fp, -200
	sw $t0, -2736($fp)
	li $t0, 1
	sw $t0, -2740($fp)
	lw $t0, -2740($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2744($fp)
	lw $t0, -2736($fp)
	lw $t1, -2744($fp)
	add $t0, $t0, $t1
	sw $t0, -2748($fp)
	lw $t0, -2732($fp)
	lw $t1, -2748($fp)
	sw $t0, 0($t1)
	lw $t0, -2748($fp)
	lw $t1, 0($t0)
	sw $t1, -2752($fp)
	li $t0, 49166
	sw $t0, -2756($fp)
	addi $t0, $fp, -200
	sw $t0, -2760($fp)
	li $t0, 2
	sw $t0, -2764($fp)
	lw $t0, -2764($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2768($fp)
	lw $t0, -2760($fp)
	lw $t1, -2768($fp)
	add $t0, $t0, $t1
	sw $t0, -2772($fp)
	lw $t0, -2756($fp)
	lw $t1, -2772($fp)
	sw $t0, 0($t1)
	lw $t0, -2772($fp)
	lw $t1, 0($t0)
	sw $t1, -2776($fp)
	li $t0, 25449
	sw $t0, -2780($fp)
	addi $t0, $fp, -200
	sw $t0, -2784($fp)
	li $t0, 3
	sw $t0, -2788($fp)
	lw $t0, -2788($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2792($fp)
	lw $t0, -2784($fp)
	lw $t1, -2792($fp)
	add $t0, $t0, $t1
	sw $t0, -2796($fp)
	lw $t0, -2780($fp)
	lw $t1, -2796($fp)
	sw $t0, 0($t1)
	lw $t0, -2796($fp)
	lw $t1, 0($t0)
	sw $t1, -2800($fp)
	li $t0, 1111
	sw $t0, -2804($fp)
	addi $t0, $fp, -200
	sw $t0, -2808($fp)
	li $t0, 4
	sw $t0, -2812($fp)
	lw $t0, -2812($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2816($fp)
	lw $t0, -2808($fp)
	lw $t1, -2816($fp)
	add $t0, $t0, $t1
	sw $t0, -2820($fp)
	lw $t0, -2804($fp)
	lw $t1, -2820($fp)
	sw $t0, 0($t1)
	lw $t0, -2820($fp)
	lw $t1, 0($t0)
	sw $t1, -2824($fp)
	li $t0, 56760
	sw $t0, -2828($fp)
	addi $t0, $fp, -200
	sw $t0, -2832($fp)
	li $t0, 5
	sw $t0, -2836($fp)
	lw $t0, -2836($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2840($fp)
	lw $t0, -2832($fp)
	lw $t1, -2840($fp)
	add $t0, $t0, $t1
	sw $t0, -2844($fp)
	lw $t0, -2828($fp)
	lw $t1, -2844($fp)
	sw $t0, 0($t1)
	lw $t0, -2844($fp)
	lw $t1, 0($t0)
	sw $t1, -2848($fp)
	li $t0, 10471
	sw $t0, -2852($fp)
	addi $t0, $fp, -200
	sw $t0, -2856($fp)
	li $t0, 6
	sw $t0, -2860($fp)
	lw $t0, -2860($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2864($fp)
	lw $t0, -2856($fp)
	lw $t1, -2864($fp)
	add $t0, $t0, $t1
	sw $t0, -2868($fp)
	lw $t0, -2852($fp)
	lw $t1, -2868($fp)
	sw $t0, 0($t1)
	lw $t0, -2868($fp)
	lw $t1, 0($t0)
	sw $t1, -2872($fp)
	li $t0, 15664
	sw $t0, -2876($fp)
	lw $t0, -2876($fp)
	sw $t0, -2880($fp)
	lw $t0, -2880($fp)
	sw $t0, -2884($fp)
	li $t0, 12327
	sw $t0, -2888($fp)
	lw $t0, -2888($fp)
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	sw $t0, -2896($fp)
	li $t0, 54466
	sw $t0, -2900($fp)
	lw $t0, -2900($fp)
	sw $t0, -2904($fp)
	lw $t0, -2904($fp)
	sw $t0, -2908($fp)
	li $t0, 33375
	sw $t0, -2912($fp)
	addi $t0, $fp, -216
	sw $t0, -2916($fp)
	li $t0, 0
	sw $t0, -2920($fp)
	lw $t0, -2920($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2924($fp)
	lw $t0, -2916($fp)
	lw $t1, -2924($fp)
	add $t0, $t0, $t1
	sw $t0, -2928($fp)
	lw $t0, -2912($fp)
	lw $t1, -2928($fp)
	sw $t0, 0($t1)
	lw $t0, -2928($fp)
	lw $t1, 0($t0)
	sw $t1, -2932($fp)
	li $t0, 50195
	sw $t0, -2936($fp)
	addi $t0, $fp, -216
	sw $t0, -2940($fp)
	li $t0, 1
	sw $t0, -2944($fp)
	lw $t0, -2944($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2948($fp)
	lw $t0, -2940($fp)
	lw $t1, -2948($fp)
	add $t0, $t0, $t1
	sw $t0, -2952($fp)
	lw $t0, -2936($fp)
	lw $t1, -2952($fp)
	sw $t0, 0($t1)
	lw $t0, -2952($fp)
	lw $t1, 0($t0)
	sw $t1, -2956($fp)
	li $t0, 25276
	sw $t0, -2960($fp)
	addi $t0, $fp, -216
	sw $t0, -2964($fp)
	li $t0, 2
	sw $t0, -2968($fp)
	lw $t0, -2968($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2972($fp)
	lw $t0, -2964($fp)
	lw $t1, -2972($fp)
	add $t0, $t0, $t1
	sw $t0, -2976($fp)
	lw $t0, -2960($fp)
	lw $t1, -2976($fp)
	sw $t0, 0($t1)
	lw $t0, -2976($fp)
	lw $t1, 0($t0)
	sw $t1, -2980($fp)
	li $t0, 17629
	sw $t0, -2984($fp)
	addi $t0, $fp, -216
	sw $t0, -2988($fp)
	li $t0, 3
	sw $t0, -2992($fp)
	lw $t0, -2992($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2996($fp)
	lw $t0, -2988($fp)
	lw $t1, -2996($fp)
	add $t0, $t0, $t1
	sw $t0, -3000($fp)
	lw $t0, -2984($fp)
	lw $t1, -3000($fp)
	sw $t0, 0($t1)
	lw $t0, -3000($fp)
	lw $t1, 0($t0)
	sw $t1, -3004($fp)
	li $t0, 5466
	sw $t0, -3008($fp)
	lw $t0, -3008($fp)
	sw $t0, -3012($fp)
	lw $t0, -3012($fp)
	sw $t0, -3016($fp)
	li $t0, 21501
	sw $t0, -3020($fp)
	lw $t0, -3020($fp)
	sw $t0, -3024($fp)
	lw $t0, -3024($fp)
	sw $t0, -3028($fp)
	li $t0, 24130
	sw $t0, -3032($fp)
	lw $t0, -3032($fp)
	sw $t0, -3036($fp)
	lw $t0, -3036($fp)
	sw $t0, -3040($fp)
	li $t0, 22786
	sw $t0, -3044($fp)
	lw $t0, -3044($fp)
	sw $t0, -3048($fp)
	lw $t0, -3048($fp)
	sw $t0, -3052($fp)
	li $t0, 16679
	sw $t0, -3056($fp)
	addi $t0, $fp, -240
	sw $t0, -3060($fp)
	li $t0, 0
	sw $t0, -3064($fp)
	lw $t0, -3064($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3068($fp)
	lw $t0, -3060($fp)
	lw $t1, -3068($fp)
	add $t0, $t0, $t1
	sw $t0, -3072($fp)
	lw $t0, -3056($fp)
	lw $t1, -3072($fp)
	sw $t0, 0($t1)
	lw $t0, -3072($fp)
	lw $t1, 0($t0)
	sw $t1, -3076($fp)
	li $t0, 27550
	sw $t0, -3080($fp)
	addi $t0, $fp, -240
	sw $t0, -3084($fp)
	li $t0, 1
	sw $t0, -3088($fp)
	lw $t0, -3088($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3092($fp)
	lw $t0, -3084($fp)
	lw $t1, -3092($fp)
	add $t0, $t0, $t1
	sw $t0, -3096($fp)
	lw $t0, -3080($fp)
	lw $t1, -3096($fp)
	sw $t0, 0($t1)
	lw $t0, -3096($fp)
	lw $t1, 0($t0)
	sw $t1, -3100($fp)
	li $t0, 30793
	sw $t0, -3104($fp)
	addi $t0, $fp, -240
	sw $t0, -3108($fp)
	li $t0, 2
	sw $t0, -3112($fp)
	lw $t0, -3112($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3116($fp)
	lw $t0, -3108($fp)
	lw $t1, -3116($fp)
	add $t0, $t0, $t1
	sw $t0, -3120($fp)
	lw $t0, -3104($fp)
	lw $t1, -3120($fp)
	sw $t0, 0($t1)
	lw $t0, -3120($fp)
	lw $t1, 0($t0)
	sw $t1, -3124($fp)
	li $t0, 29764
	sw $t0, -3128($fp)
	addi $t0, $fp, -240
	sw $t0, -3132($fp)
	li $t0, 3
	sw $t0, -3136($fp)
	lw $t0, -3136($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3140($fp)
	lw $t0, -3132($fp)
	lw $t1, -3140($fp)
	add $t0, $t0, $t1
	sw $t0, -3144($fp)
	lw $t0, -3128($fp)
	lw $t1, -3144($fp)
	sw $t0, 0($t1)
	lw $t0, -3144($fp)
	lw $t1, 0($t0)
	sw $t1, -3148($fp)
	li $t0, 29739
	sw $t0, -3152($fp)
	addi $t0, $fp, -240
	sw $t0, -3156($fp)
	li $t0, 4
	sw $t0, -3160($fp)
	lw $t0, -3160($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3164($fp)
	lw $t0, -3156($fp)
	lw $t1, -3164($fp)
	add $t0, $t0, $t1
	sw $t0, -3168($fp)
	lw $t0, -3152($fp)
	lw $t1, -3168($fp)
	sw $t0, 0($t1)
	lw $t0, -3168($fp)
	lw $t1, 0($t0)
	sw $t1, -3172($fp)
	li $t0, 15427
	sw $t0, -3176($fp)
	addi $t0, $fp, -240
	sw $t0, -3180($fp)
	li $t0, 5
	sw $t0, -3184($fp)
	lw $t0, -3184($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3188($fp)
	lw $t0, -3180($fp)
	lw $t1, -3188($fp)
	add $t0, $t0, $t1
	sw $t0, -3192($fp)
	lw $t0, -3176($fp)
	lw $t1, -3192($fp)
	sw $t0, 0($t1)
	lw $t0, -3192($fp)
	lw $t1, 0($t0)
	sw $t1, -3196($fp)
	li $t0, 33987
	sw $t0, -3200($fp)
	lw $t0, -3200($fp)
	sw $t0, -3204($fp)
	lw $t0, -3204($fp)
	sw $t0, -3208($fp)
	li $t0, 59185
	sw $t0, -3212($fp)
	lw $t0, -3212($fp)
	sw $t0, -3216($fp)
	lw $t0, -3216($fp)
	sw $t0, -3220($fp)
	li $t0, 16934
	sw $t0, -3224($fp)
	lw $t0, -3224($fp)
	sw $t0, -3228($fp)
	lw $t0, -3228($fp)
	sw $t0, -3232($fp)
	li $t0, 40025
	sw $t0, -3236($fp)
	lw $t0, -3236($fp)
	sw $t0, -3240($fp)
	lw $t0, -3240($fp)
	sw $t0, -3244($fp)
	li $t0, 63827
	sw $t0, -3248($fp)
	lw $t0, -3248($fp)
	sw $t0, -3252($fp)
	lw $t0, -3252($fp)
	sw $t0, -3256($fp)
	li $t0, 52696
	sw $t0, -3260($fp)
	lw $t0, -3260($fp)
	sw $t0, -3264($fp)
	lw $t0, -3264($fp)
	sw $t0, -3268($fp)
	li $t0, 2264
	sw $t0, -3272($fp)
	lw $t0, -3272($fp)
	sw $t0, -3276($fp)
	lw $t0, -3276($fp)
	sw $t0, -3280($fp)
	li $t0, 25879
	sw $t0, -3284($fp)
	lw $t0, -3284($fp)
	sw $t0, -3288($fp)
	lw $t0, -3288($fp)
	sw $t0, -3292($fp)
	li $t0, 62842
	sw $t0, -3296($fp)
	lw $t0, -3296($fp)
	sw $t0, -3300($fp)
	lw $t0, -3300($fp)
	sw $t0, -3304($fp)
	li $t0, 51430
	sw $t0, -3308($fp)
	lw $t0, -3308($fp)
	sw $t0, -3312($fp)
	lw $t0, -3312($fp)
	sw $t0, -3316($fp)
	li $t0, 51329
	sw $t0, -3320($fp)
	lw $t0, -3320($fp)
	sw $t0, -3324($fp)
	lw $t0, -3324($fp)
	sw $t0, -3328($fp)
	li $t0, 63953
	sw $t0, -3332($fp)
	lw $t0, -3332($fp)
	sw $t0, -3336($fp)
	lw $t0, -3336($fp)
	sw $t0, -3340($fp)
	li $t0, 42654
	sw $t0, -3344($fp)
	lw $t0, -3344($fp)
	sw $t0, -3348($fp)
	lw $t0, -3348($fp)
	sw $t0, -3352($fp)
	li $t0, 61800
	sw $t0, -3356($fp)
	lw $t0, -3356($fp)
	sw $t0, -3360($fp)
	lw $t0, -3360($fp)
	sw $t0, -3364($fp)
	li $t0, 14082
	sw $t0, -3368($fp)
	lw $t0, -3368($fp)
	sw $t0, -3372($fp)
	lw $t0, -3372($fp)
	sw $t0, -3376($fp)
	li $t0, 54981
	sw $t0, -3380($fp)
	lw $t0, -3380($fp)
	sw $t0, -3384($fp)
	lw $t0, -3384($fp)
	sw $t0, -3388($fp)
	li $t0, 50730
	sw $t0, -3392($fp)
	lw $t0, -3392($fp)
	sw $t0, -3396($fp)
	lw $t0, -3396($fp)
	sw $t0, -3400($fp)
	li $t0, 47457
	sw $t0, -3404($fp)
	lw $t0, -3404($fp)
	sw $t0, -3408($fp)
	lw $t0, -3408($fp)
	sw $t0, -3412($fp)
	li $t0, 39640
	sw $t0, -3416($fp)
	lw $t0, -3416($fp)
	sw $t0, -3420($fp)
	lw $t0, -3420($fp)
	sw $t0, -3424($fp)
	li $t0, 10471
	sw $t0, -3428($fp)
	lw $t0, -3428($fp)
	sw $t0, -3432($fp)
	lw $t0, -3432($fp)
	sw $t0, -3436($fp)
	li $t0, 65087
	sw $t0, -3440($fp)
	lw $t0, -3440($fp)
	sw $t0, -3444($fp)
	lw $t0, -3444($fp)
	sw $t0, -3448($fp)
	li $t0, 45106
	sw $t0, -3452($fp)
	lw $t0, -3452($fp)
	sw $t0, -3456($fp)
	lw $t0, -3456($fp)
	sw $t0, -3460($fp)
	li $t0, 31972
	sw $t0, -3464($fp)
	lw $t0, -3464($fp)
	sw $t0, -3468($fp)
	lw $t0, -3468($fp)
	sw $t0, -3472($fp)
	li $t0, 23681
	sw $t0, -3476($fp)
	lw $t0, -3476($fp)
	sw $t0, -3480($fp)
	lw $t0, -3480($fp)
	sw $t0, -3484($fp)
	li $t0, 2357
	sw $t0, -3488($fp)
	lw $t0, -3488($fp)
	sw $t0, -3492($fp)
	lw $t0, -3492($fp)
	sw $t0, -3496($fp)
	li $t0, 48652
	sw $t0, -3500($fp)
	addi $t0, $fp, -252
	sw $t0, -3504($fp)
	li $t0, 0
	sw $t0, -3508($fp)
	lw $t0, -3508($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3512($fp)
	lw $t0, -3504($fp)
	lw $t1, -3512($fp)
	add $t0, $t0, $t1
	sw $t0, -3516($fp)
	lw $t0, -3500($fp)
	lw $t1, -3516($fp)
	sw $t0, 0($t1)
	lw $t0, -3516($fp)
	lw $t1, 0($t0)
	sw $t1, -3520($fp)
	li $t0, 51231
	sw $t0, -3524($fp)
	addi $t0, $fp, -252
	sw $t0, -3528($fp)
	li $t0, 1
	sw $t0, -3532($fp)
	lw $t0, -3532($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3536($fp)
	lw $t0, -3528($fp)
	lw $t1, -3536($fp)
	add $t0, $t0, $t1
	sw $t0, -3540($fp)
	lw $t0, -3524($fp)
	lw $t1, -3540($fp)
	sw $t0, 0($t1)
	lw $t0, -3540($fp)
	lw $t1, 0($t0)
	sw $t1, -3544($fp)
	li $t0, 33150
	sw $t0, -3548($fp)
	addi $t0, $fp, -252
	sw $t0, -3552($fp)
	li $t0, 2
	sw $t0, -3556($fp)
	lw $t0, -3556($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3560($fp)
	lw $t0, -3552($fp)
	lw $t1, -3560($fp)
	add $t0, $t0, $t1
	sw $t0, -3564($fp)
	lw $t0, -3548($fp)
	lw $t1, -3564($fp)
	sw $t0, 0($t1)
	lw $t0, -3564($fp)
	lw $t1, 0($t0)
	sw $t1, -3568($fp)
	li $t0, 12880
	sw $t0, -3572($fp)
	lw $t0, -3572($fp)
	sw $t0, -3576($fp)
	lw $t0, -3576($fp)
	sw $t0, -3580($fp)
	li $t0, 15434
	sw $t0, -3584($fp)
	lw $t0, -3584($fp)
	sw $t0, -3588($fp)
	lw $t0, -3588($fp)
	sw $t0, -3592($fp)
	li $t0, 48577
	sw $t0, -3596($fp)
	lw $t0, -3596($fp)
	sw $t0, -3600($fp)
	lw $t0, -3600($fp)
	sw $t0, -3604($fp)
	li $t0, 46868
	sw $t0, -3608($fp)
	lw $t0, -3608($fp)
	sw $t0, -3612($fp)
	lw $t0, -3612($fp)
	sw $t0, -3616($fp)
	li $t0, 9083
	sw $t0, -3620($fp)
	lw $t0, -3620($fp)
	sw $t0, -3624($fp)
	lw $t0, -3624($fp)
	sw $t0, -3628($fp)
	li $t0, 65511
	sw $t0, -3632($fp)
	lw $t0, -3632($fp)
	sw $t0, -3636($fp)
	lw $t0, -3636($fp)
	sw $t0, -3640($fp)
	li $t0, 21357
	sw $t0, -3644($fp)
	lw $t0, -3644($fp)
	sw $t0, -3648($fp)
	lw $t0, -3648($fp)
	sw $t0, -3652($fp)
	li $t0, 7375
	sw $t0, -3656($fp)
	lw $t0, -3656($fp)
	sw $t0, -3660($fp)
	lw $t0, -3660($fp)
	sw $t0, -3664($fp)
	li $t0, 52671
	sw $t0, -3668($fp)
	lw $t0, -3668($fp)
	sw $t0, -3672($fp)
	lw $t0, -3672($fp)
	sw $t0, -3676($fp)
	li $t0, 23621
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	sw $t0, -3684($fp)
	lw $t0, -3684($fp)
	sw $t0, -3688($fp)
	li $t0, 33254
	sw $t0, -3692($fp)
	lw $t0, -3692($fp)
	sw $t0, -3696($fp)
	lw $t0, -3696($fp)
	sw $t0, -3700($fp)
	li $t0, 49977
	sw $t0, -3704($fp)
	lw $t0, -3704($fp)
	sw $t0, -3708($fp)
	lw $t0, -3708($fp)
	sw $t0, -3712($fp)
	li $t0, 9515
	sw $t0, -3716($fp)
	lw $t0, -3716($fp)
	sw $t0, -3720($fp)
	lw $t0, -3720($fp)
	sw $t0, -3724($fp)
	li $t0, 19047
	sw $t0, -3728($fp)
	lw $t0, -3728($fp)
	sw $t0, -3732($fp)
	lw $t0, -3732($fp)
	sw $t0, -3736($fp)
	li $t0, 48395
	sw $t0, -3740($fp)
	lw $t0, -3740($fp)
	sw $t0, -3744($fp)
	lw $t0, -3744($fp)
	sw $t0, -3748($fp)
	li $t0, 52169
	sw $t0, -3752($fp)
	lw $t0, -3752($fp)
	sw $t0, -3756($fp)
	lw $t0, -3756($fp)
	sw $t0, -3760($fp)
	li $t0, 15311
	sw $t0, -3764($fp)
	addi $t0, $fp, -272
	sw $t0, -3768($fp)
	li $t0, 0
	sw $t0, -3772($fp)
	lw $t0, -3772($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3776($fp)
	lw $t0, -3768($fp)
	lw $t1, -3776($fp)
	add $t0, $t0, $t1
	sw $t0, -3780($fp)
	lw $t0, -3764($fp)
	lw $t1, -3780($fp)
	sw $t0, 0($t1)
	lw $t0, -3780($fp)
	lw $t1, 0($t0)
	sw $t1, -3784($fp)
	li $t0, 62477
	sw $t0, -3788($fp)
	addi $t0, $fp, -272
	sw $t0, -3792($fp)
	li $t0, 1
	sw $t0, -3796($fp)
	lw $t0, -3796($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3800($fp)
	lw $t0, -3792($fp)
	lw $t1, -3800($fp)
	add $t0, $t0, $t1
	sw $t0, -3804($fp)
	lw $t0, -3788($fp)
	lw $t1, -3804($fp)
	sw $t0, 0($t1)
	lw $t0, -3804($fp)
	lw $t1, 0($t0)
	sw $t1, -3808($fp)
	li $t0, 41615
	sw $t0, -3812($fp)
	addi $t0, $fp, -272
	sw $t0, -3816($fp)
	li $t0, 2
	sw $t0, -3820($fp)
	lw $t0, -3820($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3824($fp)
	lw $t0, -3816($fp)
	lw $t1, -3824($fp)
	add $t0, $t0, $t1
	sw $t0, -3828($fp)
	lw $t0, -3812($fp)
	lw $t1, -3828($fp)
	sw $t0, 0($t1)
	lw $t0, -3828($fp)
	lw $t1, 0($t0)
	sw $t1, -3832($fp)
	li $t0, 506
	sw $t0, -3836($fp)
	addi $t0, $fp, -272
	sw $t0, -3840($fp)
	li $t0, 3
	sw $t0, -3844($fp)
	lw $t0, -3844($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3848($fp)
	lw $t0, -3840($fp)
	lw $t1, -3848($fp)
	add $t0, $t0, $t1
	sw $t0, -3852($fp)
	lw $t0, -3836($fp)
	lw $t1, -3852($fp)
	sw $t0, 0($t1)
	lw $t0, -3852($fp)
	lw $t1, 0($t0)
	sw $t1, -3856($fp)
	li $t0, 44398
	sw $t0, -3860($fp)
	addi $t0, $fp, -272
	sw $t0, -3864($fp)
	li $t0, 4
	sw $t0, -3868($fp)
	lw $t0, -3868($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3872($fp)
	lw $t0, -3864($fp)
	lw $t1, -3872($fp)
	add $t0, $t0, $t1
	sw $t0, -3876($fp)
	lw $t0, -3860($fp)
	lw $t1, -3876($fp)
	sw $t0, 0($t1)
	lw $t0, -3876($fp)
	lw $t1, 0($t0)
	sw $t1, -3880($fp)
	li $t0, 15719
	sw $t0, -3884($fp)
	lw $t0, -3884($fp)
	sw $t0, -3888($fp)
	lw $t0, -3888($fp)
	sw $t0, -3892($fp)
	li $t0, 10977
	sw $t0, -3896($fp)
	lw $t0, -3896($fp)
	sw $t0, -3900($fp)
	lw $t0, -3900($fp)
	sw $t0, -3904($fp)
	li $t0, 43949
	sw $t0, -3908($fp)
	lw $t0, -3908($fp)
	sw $t0, -3912($fp)
	lw $t0, -3912($fp)
	sw $t0, -3916($fp)
	li $t0, 60826
	sw $t0, -3920($fp)
	addi $t0, $fp, -292
	sw $t0, -3924($fp)
	li $t0, 0
	sw $t0, -3928($fp)
	lw $t0, -3928($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3932($fp)
	lw $t0, -3924($fp)
	lw $t1, -3932($fp)
	add $t0, $t0, $t1
	sw $t0, -3936($fp)
	lw $t0, -3920($fp)
	lw $t1, -3936($fp)
	sw $t0, 0($t1)
	lw $t0, -3936($fp)
	lw $t1, 0($t0)
	sw $t1, -3940($fp)
	li $t0, 42949
	sw $t0, -3944($fp)
	addi $t0, $fp, -292
	sw $t0, -3948($fp)
	li $t0, 1
	sw $t0, -3952($fp)
	lw $t0, -3952($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3956($fp)
	lw $t0, -3948($fp)
	lw $t1, -3956($fp)
	add $t0, $t0, $t1
	sw $t0, -3960($fp)
	lw $t0, -3944($fp)
	lw $t1, -3960($fp)
	sw $t0, 0($t1)
	lw $t0, -3960($fp)
	lw $t1, 0($t0)
	sw $t1, -3964($fp)
	li $t0, 2094
	sw $t0, -3968($fp)
	addi $t0, $fp, -292
	sw $t0, -3972($fp)
	li $t0, 2
	sw $t0, -3976($fp)
	lw $t0, -3976($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3980($fp)
	lw $t0, -3972($fp)
	lw $t1, -3980($fp)
	add $t0, $t0, $t1
	sw $t0, -3984($fp)
	lw $t0, -3968($fp)
	lw $t1, -3984($fp)
	sw $t0, 0($t1)
	lw $t0, -3984($fp)
	lw $t1, 0($t0)
	sw $t1, -3988($fp)
	li $t0, 63183
	sw $t0, -3992($fp)
	addi $t0, $fp, -292
	sw $t0, -3996($fp)
	li $t0, 3
	sw $t0, -4000($fp)
	lw $t0, -4000($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4004($fp)
	lw $t0, -3996($fp)
	lw $t1, -4004($fp)
	add $t0, $t0, $t1
	sw $t0, -4008($fp)
	lw $t0, -3992($fp)
	lw $t1, -4008($fp)
	sw $t0, 0($t1)
	lw $t0, -4008($fp)
	lw $t1, 0($t0)
	sw $t1, -4012($fp)
	li $t0, 26065
	sw $t0, -4016($fp)
	addi $t0, $fp, -292
	sw $t0, -4020($fp)
	li $t0, 4
	sw $t0, -4024($fp)
	lw $t0, -4024($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4028($fp)
	lw $t0, -4020($fp)
	lw $t1, -4028($fp)
	add $t0, $t0, $t1
	sw $t0, -4032($fp)
	lw $t0, -4016($fp)
	lw $t1, -4032($fp)
	sw $t0, 0($t1)
	lw $t0, -4032($fp)
	lw $t1, 0($t0)
	sw $t1, -4036($fp)
	li $t0, 53325
	sw $t0, -4040($fp)
	lw $t0, -4040($fp)
	sw $t0, -4044($fp)
	lw $t0, -4044($fp)
	sw $t0, -4048($fp)
	li $t0, 30797
	sw $t0, -4052($fp)
	addi $t0, $fp, -320
	sw $t0, -4056($fp)
	li $t0, 0
	sw $t0, -4060($fp)
	lw $t0, -4060($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4064($fp)
	lw $t0, -4056($fp)
	lw $t1, -4064($fp)
	add $t0, $t0, $t1
	sw $t0, -4068($fp)
	lw $t0, -4052($fp)
	lw $t1, -4068($fp)
	sw $t0, 0($t1)
	lw $t0, -4068($fp)
	lw $t1, 0($t0)
	sw $t1, -4072($fp)
	li $t0, 38946
	sw $t0, -4076($fp)
	addi $t0, $fp, -320
	sw $t0, -4080($fp)
	li $t0, 1
	sw $t0, -4084($fp)
	lw $t0, -4084($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4088($fp)
	lw $t0, -4080($fp)
	lw $t1, -4088($fp)
	add $t0, $t0, $t1
	sw $t0, -4092($fp)
	lw $t0, -4076($fp)
	lw $t1, -4092($fp)
	sw $t0, 0($t1)
	lw $t0, -4092($fp)
	lw $t1, 0($t0)
	sw $t1, -4096($fp)
	li $t0, 3223
	sw $t0, -4100($fp)
	addi $t0, $fp, -320
	sw $t0, -4104($fp)
	li $t0, 2
	sw $t0, -4108($fp)
	lw $t0, -4108($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4112($fp)
	lw $t0, -4104($fp)
	lw $t1, -4112($fp)
	add $t0, $t0, $t1
	sw $t0, -4116($fp)
	lw $t0, -4100($fp)
	lw $t1, -4116($fp)
	sw $t0, 0($t1)
	lw $t0, -4116($fp)
	lw $t1, 0($t0)
	sw $t1, -4120($fp)
	li $t0, 13839
	sw $t0, -4124($fp)
	addi $t0, $fp, -320
	sw $t0, -4128($fp)
	li $t0, 3
	sw $t0, -4132($fp)
	lw $t0, -4132($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4136($fp)
	lw $t0, -4128($fp)
	lw $t1, -4136($fp)
	add $t0, $t0, $t1
	sw $t0, -4140($fp)
	lw $t0, -4124($fp)
	lw $t1, -4140($fp)
	sw $t0, 0($t1)
	lw $t0, -4140($fp)
	lw $t1, 0($t0)
	sw $t1, -4144($fp)
	li $t0, 20278
	sw $t0, -4148($fp)
	addi $t0, $fp, -320
	sw $t0, -4152($fp)
	li $t0, 4
	sw $t0, -4156($fp)
	lw $t0, -4156($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4160($fp)
	lw $t0, -4152($fp)
	lw $t1, -4160($fp)
	add $t0, $t0, $t1
	sw $t0, -4164($fp)
	lw $t0, -4148($fp)
	lw $t1, -4164($fp)
	sw $t0, 0($t1)
	lw $t0, -4164($fp)
	lw $t1, 0($t0)
	sw $t1, -4168($fp)
	li $t0, 12307
	sw $t0, -4172($fp)
	addi $t0, $fp, -320
	sw $t0, -4176($fp)
	li $t0, 5
	sw $t0, -4180($fp)
	lw $t0, -4180($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4184($fp)
	lw $t0, -4176($fp)
	lw $t1, -4184($fp)
	add $t0, $t0, $t1
	sw $t0, -4188($fp)
	lw $t0, -4172($fp)
	lw $t1, -4188($fp)
	sw $t0, 0($t1)
	lw $t0, -4188($fp)
	lw $t1, 0($t0)
	sw $t1, -4192($fp)
	li $t0, 13814
	sw $t0, -4196($fp)
	addi $t0, $fp, -320
	sw $t0, -4200($fp)
	li $t0, 6
	sw $t0, -4204($fp)
	lw $t0, -4204($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4208($fp)
	lw $t0, -4200($fp)
	lw $t1, -4208($fp)
	add $t0, $t0, $t1
	sw $t0, -4212($fp)
	lw $t0, -4196($fp)
	lw $t1, -4212($fp)
	sw $t0, 0($t1)
	lw $t0, -4212($fp)
	lw $t1, 0($t0)
	sw $t1, -4216($fp)
	li $t0, 41635
	sw $t0, -4220($fp)
	addi $t0, $fp, -336
	sw $t0, -4224($fp)
	li $t0, 0
	sw $t0, -4228($fp)
	lw $t0, -4228($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4232($fp)
	lw $t0, -4224($fp)
	lw $t1, -4232($fp)
	add $t0, $t0, $t1
	sw $t0, -4236($fp)
	lw $t0, -4220($fp)
	lw $t1, -4236($fp)
	sw $t0, 0($t1)
	lw $t0, -4236($fp)
	lw $t1, 0($t0)
	sw $t1, -4240($fp)
	li $t0, 19682
	sw $t0, -4244($fp)
	addi $t0, $fp, -336
	sw $t0, -4248($fp)
	li $t0, 1
	sw $t0, -4252($fp)
	lw $t0, -4252($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4256($fp)
	lw $t0, -4248($fp)
	lw $t1, -4256($fp)
	add $t0, $t0, $t1
	sw $t0, -4260($fp)
	lw $t0, -4244($fp)
	lw $t1, -4260($fp)
	sw $t0, 0($t1)
	lw $t0, -4260($fp)
	lw $t1, 0($t0)
	sw $t1, -4264($fp)
	li $t0, 950
	sw $t0, -4268($fp)
	addi $t0, $fp, -336
	sw $t0, -4272($fp)
	li $t0, 2
	sw $t0, -4276($fp)
	lw $t0, -4276($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4280($fp)
	lw $t0, -4272($fp)
	lw $t1, -4280($fp)
	add $t0, $t0, $t1
	sw $t0, -4284($fp)
	lw $t0, -4268($fp)
	lw $t1, -4284($fp)
	sw $t0, 0($t1)
	lw $t0, -4284($fp)
	lw $t1, 0($t0)
	sw $t1, -4288($fp)
	li $t0, 65257
	sw $t0, -4292($fp)
	addi $t0, $fp, -336
	sw $t0, -4296($fp)
	li $t0, 3
	sw $t0, -4300($fp)
	lw $t0, -4300($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4304($fp)
	lw $t0, -4296($fp)
	lw $t1, -4304($fp)
	add $t0, $t0, $t1
	sw $t0, -4308($fp)
	lw $t0, -4292($fp)
	lw $t1, -4308($fp)
	sw $t0, 0($t1)
	lw $t0, -4308($fp)
	lw $t1, 0($t0)
	sw $t1, -4312($fp)
	li $t0, 52936
	sw $t0, -4316($fp)
	lw $t0, -4316($fp)
	sw $t0, -4320($fp)
	lw $t0, -4320($fp)
	sw $t0, -4324($fp)
	li $t0, 50927
	sw $t0, -4328($fp)
	addi $t0, $fp, -360
	sw $t0, -4332($fp)
	li $t0, 0
	sw $t0, -4336($fp)
	lw $t0, -4336($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4340($fp)
	lw $t0, -4332($fp)
	lw $t1, -4340($fp)
	add $t0, $t0, $t1
	sw $t0, -4344($fp)
	lw $t0, -4328($fp)
	lw $t1, -4344($fp)
	sw $t0, 0($t1)
	lw $t0, -4344($fp)
	lw $t1, 0($t0)
	sw $t1, -4348($fp)
	li $t0, 9236
	sw $t0, -4352($fp)
	addi $t0, $fp, -360
	sw $t0, -4356($fp)
	li $t0, 1
	sw $t0, -4360($fp)
	lw $t0, -4360($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4364($fp)
	lw $t0, -4356($fp)
	lw $t1, -4364($fp)
	add $t0, $t0, $t1
	sw $t0, -4368($fp)
	lw $t0, -4352($fp)
	lw $t1, -4368($fp)
	sw $t0, 0($t1)
	lw $t0, -4368($fp)
	lw $t1, 0($t0)
	sw $t1, -4372($fp)
	li $t0, 6448
	sw $t0, -4376($fp)
	addi $t0, $fp, -360
	sw $t0, -4380($fp)
	li $t0, 2
	sw $t0, -4384($fp)
	lw $t0, -4384($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4388($fp)
	lw $t0, -4380($fp)
	lw $t1, -4388($fp)
	add $t0, $t0, $t1
	sw $t0, -4392($fp)
	lw $t0, -4376($fp)
	lw $t1, -4392($fp)
	sw $t0, 0($t1)
	lw $t0, -4392($fp)
	lw $t1, 0($t0)
	sw $t1, -4396($fp)
	li $t0, 33786
	sw $t0, -4400($fp)
	addi $t0, $fp, -360
	sw $t0, -4404($fp)
	li $t0, 3
	sw $t0, -4408($fp)
	lw $t0, -4408($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4412($fp)
	lw $t0, -4404($fp)
	lw $t1, -4412($fp)
	add $t0, $t0, $t1
	sw $t0, -4416($fp)
	lw $t0, -4400($fp)
	lw $t1, -4416($fp)
	sw $t0, 0($t1)
	lw $t0, -4416($fp)
	lw $t1, 0($t0)
	sw $t1, -4420($fp)
	li $t0, 61406
	sw $t0, -4424($fp)
	addi $t0, $fp, -360
	sw $t0, -4428($fp)
	li $t0, 4
	sw $t0, -4432($fp)
	lw $t0, -4432($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4436($fp)
	lw $t0, -4428($fp)
	lw $t1, -4436($fp)
	add $t0, $t0, $t1
	sw $t0, -4440($fp)
	lw $t0, -4424($fp)
	lw $t1, -4440($fp)
	sw $t0, 0($t1)
	lw $t0, -4440($fp)
	lw $t1, 0($t0)
	sw $t1, -4444($fp)
	li $t0, 21759
	sw $t0, -4448($fp)
	addi $t0, $fp, -360
	sw $t0, -4452($fp)
	li $t0, 5
	sw $t0, -4456($fp)
	lw $t0, -4456($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4460($fp)
	lw $t0, -4452($fp)
	lw $t1, -4460($fp)
	add $t0, $t0, $t1
	sw $t0, -4464($fp)
	lw $t0, -4448($fp)
	lw $t1, -4464($fp)
	sw $t0, 0($t1)
	lw $t0, -4464($fp)
	lw $t1, 0($t0)
	sw $t1, -4468($fp)
	li $t0, 30727
	sw $t0, -4472($fp)
	addi $t0, $fp, -372
	sw $t0, -4476($fp)
	li $t0, 0
	sw $t0, -4480($fp)
	lw $t0, -4480($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4484($fp)
	lw $t0, -4476($fp)
	lw $t1, -4484($fp)
	add $t0, $t0, $t1
	sw $t0, -4488($fp)
	lw $t0, -4472($fp)
	lw $t1, -4488($fp)
	sw $t0, 0($t1)
	lw $t0, -4488($fp)
	lw $t1, 0($t0)
	sw $t1, -4492($fp)
	li $t0, 37485
	sw $t0, -4496($fp)
	addi $t0, $fp, -372
	sw $t0, -4500($fp)
	li $t0, 1
	sw $t0, -4504($fp)
	lw $t0, -4504($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4508($fp)
	lw $t0, -4500($fp)
	lw $t1, -4508($fp)
	add $t0, $t0, $t1
	sw $t0, -4512($fp)
	lw $t0, -4496($fp)
	lw $t1, -4512($fp)
	sw $t0, 0($t1)
	lw $t0, -4512($fp)
	lw $t1, 0($t0)
	sw $t1, -4516($fp)
	li $t0, 22265
	sw $t0, -4520($fp)
	addi $t0, $fp, -372
	sw $t0, -4524($fp)
	li $t0, 2
	sw $t0, -4528($fp)
	lw $t0, -4528($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4532($fp)
	lw $t0, -4524($fp)
	lw $t1, -4532($fp)
	add $t0, $t0, $t1
	sw $t0, -4536($fp)
	lw $t0, -4520($fp)
	lw $t1, -4536($fp)
	sw $t0, 0($t1)
	lw $t0, -4536($fp)
	lw $t1, 0($t0)
	sw $t1, -4540($fp)
	li $t0, 9590
	sw $t0, -4544($fp)
	lw $t0, -4544($fp)
	sw $t0, -4548($fp)
	lw $t0, -4548($fp)
	sw $t0, -4552($fp)
	li $t0, 53204
	sw $t0, -4556($fp)
	lw $t0, -4556($fp)
	sw $t0, -4560($fp)
	lw $t0, -4560($fp)
	sw $t0, -4564($fp)
	li $t0, 33242
	sw $t0, -4568($fp)
	lw $t0, -4568($fp)
	sw $t0, -4572($fp)
	lw $t0, -4572($fp)
	sw $t0, -4576($fp)
	li $t0, 53539
	sw $t0, -4580($fp)
	lw $t0, -4580($fp)
	sw $t0, -4584($fp)
	lw $t0, -4584($fp)
	sw $t0, -4588($fp)
	li $t0, 48494
	sw $t0, -4592($fp)
	addi $t0, $fp, -412
	sw $t0, -4596($fp)
	li $t0, 0
	sw $t0, -4600($fp)
	lw $t0, -4600($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4604($fp)
	lw $t0, -4596($fp)
	lw $t1, -4604($fp)
	add $t0, $t0, $t1
	sw $t0, -4608($fp)
	lw $t0, -4592($fp)
	lw $t1, -4608($fp)
	sw $t0, 0($t1)
	lw $t0, -4608($fp)
	lw $t1, 0($t0)
	sw $t1, -4612($fp)
	li $t0, 10656
	sw $t0, -4616($fp)
	addi $t0, $fp, -412
	sw $t0, -4620($fp)
	li $t0, 1
	sw $t0, -4624($fp)
	lw $t0, -4624($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4628($fp)
	lw $t0, -4620($fp)
	lw $t1, -4628($fp)
	add $t0, $t0, $t1
	sw $t0, -4632($fp)
	lw $t0, -4616($fp)
	lw $t1, -4632($fp)
	sw $t0, 0($t1)
	lw $t0, -4632($fp)
	lw $t1, 0($t0)
	sw $t1, -4636($fp)
	li $t0, 55634
	sw $t0, -4640($fp)
	addi $t0, $fp, -412
	sw $t0, -4644($fp)
	li $t0, 2
	sw $t0, -4648($fp)
	lw $t0, -4648($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4652($fp)
	lw $t0, -4644($fp)
	lw $t1, -4652($fp)
	add $t0, $t0, $t1
	sw $t0, -4656($fp)
	lw $t0, -4640($fp)
	lw $t1, -4656($fp)
	sw $t0, 0($t1)
	lw $t0, -4656($fp)
	lw $t1, 0($t0)
	sw $t1, -4660($fp)
	li $t0, 46141
	sw $t0, -4664($fp)
	addi $t0, $fp, -412
	sw $t0, -4668($fp)
	li $t0, 3
	sw $t0, -4672($fp)
	lw $t0, -4672($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4676($fp)
	lw $t0, -4668($fp)
	lw $t1, -4676($fp)
	add $t0, $t0, $t1
	sw $t0, -4680($fp)
	lw $t0, -4664($fp)
	lw $t1, -4680($fp)
	sw $t0, 0($t1)
	lw $t0, -4680($fp)
	lw $t1, 0($t0)
	sw $t1, -4684($fp)
	li $t0, 36721
	sw $t0, -4688($fp)
	addi $t0, $fp, -412
	sw $t0, -4692($fp)
	li $t0, 4
	sw $t0, -4696($fp)
	lw $t0, -4696($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4700($fp)
	lw $t0, -4692($fp)
	lw $t1, -4700($fp)
	add $t0, $t0, $t1
	sw $t0, -4704($fp)
	lw $t0, -4688($fp)
	lw $t1, -4704($fp)
	sw $t0, 0($t1)
	lw $t0, -4704($fp)
	lw $t1, 0($t0)
	sw $t1, -4708($fp)
	li $t0, 43423
	sw $t0, -4712($fp)
	addi $t0, $fp, -412
	sw $t0, -4716($fp)
	li $t0, 5
	sw $t0, -4720($fp)
	lw $t0, -4720($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4724($fp)
	lw $t0, -4716($fp)
	lw $t1, -4724($fp)
	add $t0, $t0, $t1
	sw $t0, -4728($fp)
	lw $t0, -4712($fp)
	lw $t1, -4728($fp)
	sw $t0, 0($t1)
	lw $t0, -4728($fp)
	lw $t1, 0($t0)
	sw $t1, -4732($fp)
	li $t0, 11403
	sw $t0, -4736($fp)
	addi $t0, $fp, -412
	sw $t0, -4740($fp)
	li $t0, 6
	sw $t0, -4744($fp)
	lw $t0, -4744($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4748($fp)
	lw $t0, -4740($fp)
	lw $t1, -4748($fp)
	add $t0, $t0, $t1
	sw $t0, -4752($fp)
	lw $t0, -4736($fp)
	lw $t1, -4752($fp)
	sw $t0, 0($t1)
	lw $t0, -4752($fp)
	lw $t1, 0($t0)
	sw $t1, -4756($fp)
	li $t0, 10131
	sw $t0, -4760($fp)
	addi $t0, $fp, -412
	sw $t0, -4764($fp)
	li $t0, 7
	sw $t0, -4768($fp)
	lw $t0, -4768($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4772($fp)
	lw $t0, -4764($fp)
	lw $t1, -4772($fp)
	add $t0, $t0, $t1
	sw $t0, -4776($fp)
	lw $t0, -4760($fp)
	lw $t1, -4776($fp)
	sw $t0, 0($t1)
	lw $t0, -4776($fp)
	lw $t1, 0($t0)
	sw $t1, -4780($fp)
	li $t0, 46647
	sw $t0, -4784($fp)
	addi $t0, $fp, -412
	sw $t0, -4788($fp)
	li $t0, 8
	sw $t0, -4792($fp)
	lw $t0, -4792($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4796($fp)
	lw $t0, -4788($fp)
	lw $t1, -4796($fp)
	add $t0, $t0, $t1
	sw $t0, -4800($fp)
	lw $t0, -4784($fp)
	lw $t1, -4800($fp)
	sw $t0, 0($t1)
	lw $t0, -4800($fp)
	lw $t1, 0($t0)
	sw $t1, -4804($fp)
	li $t0, 25242
	sw $t0, -4808($fp)
	addi $t0, $fp, -412
	sw $t0, -4812($fp)
	li $t0, 9
	sw $t0, -4816($fp)
	lw $t0, -4816($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4820($fp)
	lw $t0, -4812($fp)
	lw $t1, -4820($fp)
	add $t0, $t0, $t1
	sw $t0, -4824($fp)
	lw $t0, -4808($fp)
	lw $t1, -4824($fp)
	sw $t0, 0($t1)
	lw $t0, -4824($fp)
	lw $t1, 0($t0)
	sw $t1, -4828($fp)
	li $t0, 30409
	sw $t0, -4832($fp)
	lw $t0, -4832($fp)
	sw $t0, -4836($fp)
	lw $t0, -4836($fp)
	sw $t0, -4840($fp)
	li $t0, 58954
	sw $t0, -4844($fp)
	addi $t0, $fp, -440
	sw $t0, -4848($fp)
	li $t0, 0
	sw $t0, -4852($fp)
	lw $t0, -4852($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4856($fp)
	lw $t0, -4848($fp)
	lw $t1, -4856($fp)
	add $t0, $t0, $t1
	sw $t0, -4860($fp)
	lw $t0, -4844($fp)
	lw $t1, -4860($fp)
	sw $t0, 0($t1)
	lw $t0, -4860($fp)
	lw $t1, 0($t0)
	sw $t1, -4864($fp)
	li $t0, 39056
	sw $t0, -4868($fp)
	addi $t0, $fp, -440
	sw $t0, -4872($fp)
	li $t0, 1
	sw $t0, -4876($fp)
	lw $t0, -4876($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4880($fp)
	lw $t0, -4872($fp)
	lw $t1, -4880($fp)
	add $t0, $t0, $t1
	sw $t0, -4884($fp)
	lw $t0, -4868($fp)
	lw $t1, -4884($fp)
	sw $t0, 0($t1)
	lw $t0, -4884($fp)
	lw $t1, 0($t0)
	sw $t1, -4888($fp)
	li $t0, 6509
	sw $t0, -4892($fp)
	addi $t0, $fp, -440
	sw $t0, -4896($fp)
	li $t0, 2
	sw $t0, -4900($fp)
	lw $t0, -4900($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4904($fp)
	lw $t0, -4896($fp)
	lw $t1, -4904($fp)
	add $t0, $t0, $t1
	sw $t0, -4908($fp)
	lw $t0, -4892($fp)
	lw $t1, -4908($fp)
	sw $t0, 0($t1)
	lw $t0, -4908($fp)
	lw $t1, 0($t0)
	sw $t1, -4912($fp)
	li $t0, 13100
	sw $t0, -4916($fp)
	addi $t0, $fp, -440
	sw $t0, -4920($fp)
	li $t0, 3
	sw $t0, -4924($fp)
	lw $t0, -4924($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4928($fp)
	lw $t0, -4920($fp)
	lw $t1, -4928($fp)
	add $t0, $t0, $t1
	sw $t0, -4932($fp)
	lw $t0, -4916($fp)
	lw $t1, -4932($fp)
	sw $t0, 0($t1)
	lw $t0, -4932($fp)
	lw $t1, 0($t0)
	sw $t1, -4936($fp)
	li $t0, 40006
	sw $t0, -4940($fp)
	addi $t0, $fp, -440
	sw $t0, -4944($fp)
	li $t0, 4
	sw $t0, -4948($fp)
	lw $t0, -4948($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4952($fp)
	lw $t0, -4944($fp)
	lw $t1, -4952($fp)
	add $t0, $t0, $t1
	sw $t0, -4956($fp)
	lw $t0, -4940($fp)
	lw $t1, -4956($fp)
	sw $t0, 0($t1)
	lw $t0, -4956($fp)
	lw $t1, 0($t0)
	sw $t1, -4960($fp)
	li $t0, 6230
	sw $t0, -4964($fp)
	addi $t0, $fp, -440
	sw $t0, -4968($fp)
	li $t0, 5
	sw $t0, -4972($fp)
	lw $t0, -4972($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4976($fp)
	lw $t0, -4968($fp)
	lw $t1, -4976($fp)
	add $t0, $t0, $t1
	sw $t0, -4980($fp)
	lw $t0, -4964($fp)
	lw $t1, -4980($fp)
	sw $t0, 0($t1)
	lw $t0, -4980($fp)
	lw $t1, 0($t0)
	sw $t1, -4984($fp)
	li $t0, 500
	sw $t0, -4988($fp)
	addi $t0, $fp, -440
	sw $t0, -4992($fp)
	li $t0, 6
	sw $t0, -4996($fp)
	lw $t0, -4996($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5000($fp)
	lw $t0, -4992($fp)
	lw $t1, -5000($fp)
	add $t0, $t0, $t1
	sw $t0, -5004($fp)
	lw $t0, -4988($fp)
	lw $t1, -5004($fp)
	sw $t0, 0($t1)
	lw $t0, -5004($fp)
	lw $t1, 0($t0)
	sw $t1, -5008($fp)
	li $t0, 25398
	sw $t0, -5012($fp)
	lw $t0, -5012($fp)
	sw $t0, -5016($fp)
	lw $t0, -5016($fp)
	sw $t0, -5020($fp)
	li $t0, 15466
	sw $t0, -5024($fp)
	lw $t0, -5024($fp)
	sw $t0, -5028($fp)
	lw $t0, -5028($fp)
	sw $t0, -5032($fp)
	li $t0, 6948
	sw $t0, -5036($fp)
	lw $t0, -5036($fp)
	sw $t0, -5040($fp)
	lw $t0, -5040($fp)
	sw $t0, -5044($fp)
	li $t0, 59184
	sw $t0, -5048($fp)
	addi $t0, $fp, -452
	sw $t0, -5052($fp)
	li $t0, 0
	sw $t0, -5056($fp)
	lw $t0, -5056($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5060($fp)
	lw $t0, -5052($fp)
	lw $t1, -5060($fp)
	add $t0, $t0, $t1
	sw $t0, -5064($fp)
	lw $t0, -5048($fp)
	lw $t1, -5064($fp)
	sw $t0, 0($t1)
	lw $t0, -5064($fp)
	lw $t1, 0($t0)
	sw $t1, -5068($fp)
	li $t0, 11336
	sw $t0, -5072($fp)
	addi $t0, $fp, -452
	sw $t0, -5076($fp)
	li $t0, 1
	sw $t0, -5080($fp)
	lw $t0, -5080($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5084($fp)
	lw $t0, -5076($fp)
	lw $t1, -5084($fp)
	add $t0, $t0, $t1
	sw $t0, -5088($fp)
	lw $t0, -5072($fp)
	lw $t1, -5088($fp)
	sw $t0, 0($t1)
	lw $t0, -5088($fp)
	lw $t1, 0($t0)
	sw $t1, -5092($fp)
	li $t0, 28708
	sw $t0, -5096($fp)
	addi $t0, $fp, -452
	sw $t0, -5100($fp)
	li $t0, 2
	sw $t0, -5104($fp)
	lw $t0, -5104($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5108($fp)
	lw $t0, -5100($fp)
	lw $t1, -5108($fp)
	add $t0, $t0, $t1
	sw $t0, -5112($fp)
	lw $t0, -5096($fp)
	lw $t1, -5112($fp)
	sw $t0, 0($t1)
	lw $t0, -5112($fp)
	lw $t1, 0($t0)
	sw $t1, -5116($fp)
	li $t0, 24376
	sw $t0, -5120($fp)
	lw $t0, -5120($fp)
	sw $t0, -5124($fp)
	lw $t0, -5124($fp)
	sw $t0, -5128($fp)
	li $t0, 48821
	sw $t0, -5132($fp)
	lw $t0, -5132($fp)
	sw $t0, -5136($fp)
	lw $t0, -5136($fp)
	sw $t0, -5140($fp)
	li $t0, 50973
	sw $t0, -5144($fp)
	lw $t0, -5144($fp)
	sw $t0, -5148($fp)
	lw $t0, -5148($fp)
	sw $t0, -5152($fp)
	li $t0, 33966
	sw $t0, -5156($fp)
	lw $t0, -5156($fp)
	sw $t0, -5160($fp)
	lw $t0, -5160($fp)
	sw $t0, -5164($fp)
	li $t0, 36490
	sw $t0, -5168($fp)
	lw $t0, -5168($fp)
	sw $t0, -5172($fp)
	lw $t0, -5172($fp)
	sw $t0, -5176($fp)
	li $t0, 18680
	sw $t0, -5180($fp)
	lw $t0, -5180($fp)
	sw $t0, -5184($fp)
	lw $t0, -5184($fp)
	sw $t0, -5188($fp)
	li $t0, 21969
	sw $t0, -5192($fp)
	lw $t0, -5192($fp)
	sw $t0, -5196($fp)
	lw $t0, -5196($fp)
	sw $t0, -5200($fp)
	li $t0, 19448
	sw $t0, -5204($fp)
	lw $t0, -5204($fp)
	sw $t0, -5208($fp)
	lw $t0, -5208($fp)
	sw $t0, -5212($fp)
	li $t0, 29336
	sw $t0, -5216($fp)
	lw $t0, -5216($fp)
	sw $t0, -5220($fp)
	lw $t0, -5220($fp)
	sw $t0, -5224($fp)
	li $t0, 12067
	sw $t0, -5228($fp)
	lw $t0, -5228($fp)
	sw $t0, -5232($fp)
	lw $t0, -5232($fp)
	sw $t0, -5236($fp)
	li $t0, 54
	sw $t0, -5240($fp)
	lw $t0, -5240($fp)
	sw $t0, -5244($fp)
	lw $t0, -5244($fp)
	sw $t0, -5248($fp)
	li $t0, 521
	sw $t0, -5252($fp)
	addi $t0, $fp, -480
	sw $t0, -5256($fp)
	li $t0, 0
	sw $t0, -5260($fp)
	lw $t0, -5260($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5264($fp)
	lw $t0, -5256($fp)
	lw $t1, -5264($fp)
	add $t0, $t0, $t1
	sw $t0, -5268($fp)
	lw $t0, -5252($fp)
	lw $t1, -5268($fp)
	sw $t0, 0($t1)
	lw $t0, -5268($fp)
	lw $t1, 0($t0)
	sw $t1, -5272($fp)
	li $t0, 55491
	sw $t0, -5276($fp)
	addi $t0, $fp, -480
	sw $t0, -5280($fp)
	li $t0, 1
	sw $t0, -5284($fp)
	lw $t0, -5284($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5288($fp)
	lw $t0, -5280($fp)
	lw $t1, -5288($fp)
	add $t0, $t0, $t1
	sw $t0, -5292($fp)
	lw $t0, -5276($fp)
	lw $t1, -5292($fp)
	sw $t0, 0($t1)
	lw $t0, -5292($fp)
	lw $t1, 0($t0)
	sw $t1, -5296($fp)
	li $t0, 11457
	sw $t0, -5300($fp)
	addi $t0, $fp, -480
	sw $t0, -5304($fp)
	li $t0, 2
	sw $t0, -5308($fp)
	lw $t0, -5308($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5312($fp)
	lw $t0, -5304($fp)
	lw $t1, -5312($fp)
	add $t0, $t0, $t1
	sw $t0, -5316($fp)
	lw $t0, -5300($fp)
	lw $t1, -5316($fp)
	sw $t0, 0($t1)
	lw $t0, -5316($fp)
	lw $t1, 0($t0)
	sw $t1, -5320($fp)
	li $t0, 10653
	sw $t0, -5324($fp)
	addi $t0, $fp, -480
	sw $t0, -5328($fp)
	li $t0, 3
	sw $t0, -5332($fp)
	lw $t0, -5332($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5336($fp)
	lw $t0, -5328($fp)
	lw $t1, -5336($fp)
	add $t0, $t0, $t1
	sw $t0, -5340($fp)
	lw $t0, -5324($fp)
	lw $t1, -5340($fp)
	sw $t0, 0($t1)
	lw $t0, -5340($fp)
	lw $t1, 0($t0)
	sw $t1, -5344($fp)
	li $t0, 36602
	sw $t0, -5348($fp)
	addi $t0, $fp, -480
	sw $t0, -5352($fp)
	li $t0, 4
	sw $t0, -5356($fp)
	lw $t0, -5356($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5360($fp)
	lw $t0, -5352($fp)
	lw $t1, -5360($fp)
	add $t0, $t0, $t1
	sw $t0, -5364($fp)
	lw $t0, -5348($fp)
	lw $t1, -5364($fp)
	sw $t0, 0($t1)
	lw $t0, -5364($fp)
	lw $t1, 0($t0)
	sw $t1, -5368($fp)
	li $t0, 36699
	sw $t0, -5372($fp)
	addi $t0, $fp, -480
	sw $t0, -5376($fp)
	li $t0, 5
	sw $t0, -5380($fp)
	lw $t0, -5380($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5384($fp)
	lw $t0, -5376($fp)
	lw $t1, -5384($fp)
	add $t0, $t0, $t1
	sw $t0, -5388($fp)
	lw $t0, -5372($fp)
	lw $t1, -5388($fp)
	sw $t0, 0($t1)
	lw $t0, -5388($fp)
	lw $t1, 0($t0)
	sw $t1, -5392($fp)
	li $t0, 41062
	sw $t0, -5396($fp)
	addi $t0, $fp, -480
	sw $t0, -5400($fp)
	li $t0, 6
	sw $t0, -5404($fp)
	lw $t0, -5404($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5408($fp)
	lw $t0, -5400($fp)
	lw $t1, -5408($fp)
	add $t0, $t0, $t1
	sw $t0, -5412($fp)
	lw $t0, -5396($fp)
	lw $t1, -5412($fp)
	sw $t0, 0($t1)
	lw $t0, -5412($fp)
	lw $t1, 0($t0)
	sw $t1, -5416($fp)
	li $t0, 30020
	sw $t0, -5420($fp)
	addi $t0, $fp, -484
	sw $t0, -5424($fp)
	li $t0, 0
	sw $t0, -5428($fp)
	lw $t0, -5428($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5432($fp)
	lw $t0, -5424($fp)
	lw $t1, -5432($fp)
	add $t0, $t0, $t1
	sw $t0, -5436($fp)
	lw $t0, -5420($fp)
	lw $t1, -5436($fp)
	sw $t0, 0($t1)
	lw $t0, -5436($fp)
	lw $t1, 0($t0)
	sw $t1, -5440($fp)
	li $t0, 10219
	sw $t0, -5444($fp)
	lw $t0, -5444($fp)
	sw $t0, -5448($fp)
	lw $t0, -5448($fp)
	sw $t0, -5452($fp)
	li $t0, 47571
	sw $t0, -5456($fp)
	lw $t0, -5456($fp)
	sw $t0, -5460($fp)
	lw $t0, -5460($fp)
	sw $t0, -5464($fp)
	li $t0, 43120
	sw $t0, -5468($fp)
	lw $t0, -5468($fp)
	sw $t0, -5472($fp)
	lw $t0, -5472($fp)
	sw $t0, -5476($fp)
	li $t0, 50226
	sw $t0, -5480($fp)
	lw $t0, -5480($fp)
	sw $t0, -5484($fp)
	lw $t0, -5484($fp)
	sw $t0, -5488($fp)
	li $t0, 53801
	sw $t0, -5492($fp)
	lw $t0, -5492($fp)
	sw $t0, -5496($fp)
	lw $t0, -5496($fp)
	sw $t0, -5500($fp)
	li $t0, 43620
	sw $t0, -5504($fp)
	lw $t0, -5504($fp)
	sw $t0, -5508($fp)
	lw $t0, -5508($fp)
	sw $t0, -5512($fp)
	li $t0, 10088
	sw $t0, -5516($fp)
	lw $t0, -5516($fp)
	sw $t0, -5520($fp)
	lw $t0, -5520($fp)
	sw $t0, -5524($fp)
	li $t0, 3732
	sw $t0, -5528($fp)
	lw $t0, -5528($fp)
	sw $t0, -5532($fp)
	lw $t0, -5532($fp)
	sw $t0, -5536($fp)
	li $t0, 50569
	sw $t0, -5540($fp)
	lw $t0, -5540($fp)
	sw $t0, -5544($fp)
	lw $t0, -5544($fp)
	sw $t0, -5548($fp)
	li $t0, 3736
	sw $t0, -5552($fp)
	lw $t0, -5552($fp)
	sw $t0, -5556($fp)
	lw $t0, -5556($fp)
	sw $t0, -5560($fp)
	li $t0, 15068
	sw $t0, -5564($fp)
	lw $t0, -5564($fp)
	sw $t0, -5568($fp)
	lw $t0, -5568($fp)
	sw $t0, -5572($fp)
	li $t0, 13741
	sw $t0, -5576($fp)
	lw $t0, -5576($fp)
	sw $t0, -5580($fp)
	lw $t0, -5580($fp)
	sw $t0, -5584($fp)
	li $t0, 28112
	sw $t0, -5588($fp)
	lw $t0, -5588($fp)
	sw $t0, -5592($fp)
	lw $t0, -5592($fp)
	sw $t0, -5596($fp)
	li $t0, 63890
	sw $t0, -5600($fp)
	lw $t0, -5600($fp)
	sw $t0, -5604($fp)
	lw $t0, -5604($fp)
	sw $t0, -5608($fp)
	li $t0, 64714
	sw $t0, -5612($fp)
	addi $t0, $fp, -520
	sw $t0, -5616($fp)
	li $t0, 0
	sw $t0, -5620($fp)
	lw $t0, -5620($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5624($fp)
	lw $t0, -5616($fp)
	lw $t1, -5624($fp)
	add $t0, $t0, $t1
	sw $t0, -5628($fp)
	lw $t0, -5612($fp)
	lw $t1, -5628($fp)
	sw $t0, 0($t1)
	lw $t0, -5628($fp)
	lw $t1, 0($t0)
	sw $t1, -5632($fp)
	li $t0, 62078
	sw $t0, -5636($fp)
	addi $t0, $fp, -520
	sw $t0, -5640($fp)
	li $t0, 1
	sw $t0, -5644($fp)
	lw $t0, -5644($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5648($fp)
	lw $t0, -5640($fp)
	lw $t1, -5648($fp)
	add $t0, $t0, $t1
	sw $t0, -5652($fp)
	lw $t0, -5636($fp)
	lw $t1, -5652($fp)
	sw $t0, 0($t1)
	lw $t0, -5652($fp)
	lw $t1, 0($t0)
	sw $t1, -5656($fp)
	li $t0, 34844
	sw $t0, -5660($fp)
	addi $t0, $fp, -520
	sw $t0, -5664($fp)
	li $t0, 2
	sw $t0, -5668($fp)
	lw $t0, -5668($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5672($fp)
	lw $t0, -5664($fp)
	lw $t1, -5672($fp)
	add $t0, $t0, $t1
	sw $t0, -5676($fp)
	lw $t0, -5660($fp)
	lw $t1, -5676($fp)
	sw $t0, 0($t1)
	lw $t0, -5676($fp)
	lw $t1, 0($t0)
	sw $t1, -5680($fp)
	li $t0, 17858
	sw $t0, -5684($fp)
	addi $t0, $fp, -520
	sw $t0, -5688($fp)
	li $t0, 3
	sw $t0, -5692($fp)
	lw $t0, -5692($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5696($fp)
	lw $t0, -5688($fp)
	lw $t1, -5696($fp)
	add $t0, $t0, $t1
	sw $t0, -5700($fp)
	lw $t0, -5684($fp)
	lw $t1, -5700($fp)
	sw $t0, 0($t1)
	lw $t0, -5700($fp)
	lw $t1, 0($t0)
	sw $t1, -5704($fp)
	li $t0, 18512
	sw $t0, -5708($fp)
	addi $t0, $fp, -520
	sw $t0, -5712($fp)
	li $t0, 4
	sw $t0, -5716($fp)
	lw $t0, -5716($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5720($fp)
	lw $t0, -5712($fp)
	lw $t1, -5720($fp)
	add $t0, $t0, $t1
	sw $t0, -5724($fp)
	lw $t0, -5708($fp)
	lw $t1, -5724($fp)
	sw $t0, 0($t1)
	lw $t0, -5724($fp)
	lw $t1, 0($t0)
	sw $t1, -5728($fp)
	li $t0, 54292
	sw $t0, -5732($fp)
	addi $t0, $fp, -520
	sw $t0, -5736($fp)
	li $t0, 5
	sw $t0, -5740($fp)
	lw $t0, -5740($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5744($fp)
	lw $t0, -5736($fp)
	lw $t1, -5744($fp)
	add $t0, $t0, $t1
	sw $t0, -5748($fp)
	lw $t0, -5732($fp)
	lw $t1, -5748($fp)
	sw $t0, 0($t1)
	lw $t0, -5748($fp)
	lw $t1, 0($t0)
	sw $t1, -5752($fp)
	li $t0, 47194
	sw $t0, -5756($fp)
	addi $t0, $fp, -520
	sw $t0, -5760($fp)
	li $t0, 6
	sw $t0, -5764($fp)
	lw $t0, -5764($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5768($fp)
	lw $t0, -5760($fp)
	lw $t1, -5768($fp)
	add $t0, $t0, $t1
	sw $t0, -5772($fp)
	lw $t0, -5756($fp)
	lw $t1, -5772($fp)
	sw $t0, 0($t1)
	lw $t0, -5772($fp)
	lw $t1, 0($t0)
	sw $t1, -5776($fp)
	li $t0, 30579
	sw $t0, -5780($fp)
	addi $t0, $fp, -520
	sw $t0, -5784($fp)
	li $t0, 7
	sw $t0, -5788($fp)
	lw $t0, -5788($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5792($fp)
	lw $t0, -5784($fp)
	lw $t1, -5792($fp)
	add $t0, $t0, $t1
	sw $t0, -5796($fp)
	lw $t0, -5780($fp)
	lw $t1, -5796($fp)
	sw $t0, 0($t1)
	lw $t0, -5796($fp)
	lw $t1, 0($t0)
	sw $t1, -5800($fp)
	li $t0, 54346
	sw $t0, -5804($fp)
	addi $t0, $fp, -520
	sw $t0, -5808($fp)
	li $t0, 8
	sw $t0, -5812($fp)
	lw $t0, -5812($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5816($fp)
	lw $t0, -5808($fp)
	lw $t1, -5816($fp)
	add $t0, $t0, $t1
	sw $t0, -5820($fp)
	lw $t0, -5804($fp)
	lw $t1, -5820($fp)
	sw $t0, 0($t1)
	lw $t0, -5820($fp)
	lw $t1, 0($t0)
	sw $t1, -5824($fp)
	li $t0, 47716
	sw $t0, -5828($fp)
	lw $t0, -5828($fp)
	sw $t0, -5832($fp)
	lw $t0, -5832($fp)
	sw $t0, -5836($fp)
	li $t0, 20534
	sw $t0, -5840($fp)
	lw $t0, -5840($fp)
	sw $t0, -5844($fp)
	lw $t0, -5844($fp)
	sw $t0, -5848($fp)
	li $t0, 267
	sw $t0, -5852($fp)
	lw $t0, -5852($fp)
	sw $t0, -5856($fp)
	lw $t0, -5856($fp)
	sw $t0, -5860($fp)
	li $t0, 58369
	sw $t0, -5864($fp)
	lw $t0, -5864($fp)
	sw $t0, -5868($fp)
	lw $t0, -5868($fp)
	sw $t0, -5872($fp)
	li $t0, 57136
	sw $t0, -5876($fp)
	lw $t0, -5876($fp)
	sw $t0, -5880($fp)
	lw $t0, -5880($fp)
	sw $t0, -5884($fp)
	li $t0, 36966
	sw $t0, -5888($fp)
	lw $t0, -5888($fp)
	sw $t0, -5892($fp)
	lw $t0, -5892($fp)
	sw $t0, -5896($fp)
	li $t0, 33895
	sw $t0, -5900($fp)
	addi $t0, $fp, -536
	sw $t0, -5904($fp)
	li $t0, 0
	sw $t0, -5908($fp)
	lw $t0, -5908($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5912($fp)
	lw $t0, -5904($fp)
	lw $t1, -5912($fp)
	add $t0, $t0, $t1
	sw $t0, -5916($fp)
	lw $t0, -5900($fp)
	lw $t1, -5916($fp)
	sw $t0, 0($t1)
	lw $t0, -5916($fp)
	lw $t1, 0($t0)
	sw $t1, -5920($fp)
	li $t0, 21620
	sw $t0, -5924($fp)
	addi $t0, $fp, -536
	sw $t0, -5928($fp)
	li $t0, 1
	sw $t0, -5932($fp)
	lw $t0, -5932($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5936($fp)
	lw $t0, -5928($fp)
	lw $t1, -5936($fp)
	add $t0, $t0, $t1
	sw $t0, -5940($fp)
	lw $t0, -5924($fp)
	lw $t1, -5940($fp)
	sw $t0, 0($t1)
	lw $t0, -5940($fp)
	lw $t1, 0($t0)
	sw $t1, -5944($fp)
	li $t0, 47186
	sw $t0, -5948($fp)
	addi $t0, $fp, -536
	sw $t0, -5952($fp)
	li $t0, 2
	sw $t0, -5956($fp)
	lw $t0, -5956($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5960($fp)
	lw $t0, -5952($fp)
	lw $t1, -5960($fp)
	add $t0, $t0, $t1
	sw $t0, -5964($fp)
	lw $t0, -5948($fp)
	lw $t1, -5964($fp)
	sw $t0, 0($t1)
	lw $t0, -5964($fp)
	lw $t1, 0($t0)
	sw $t1, -5968($fp)
	li $t0, 15931
	sw $t0, -5972($fp)
	addi $t0, $fp, -536
	sw $t0, -5976($fp)
	li $t0, 3
	sw $t0, -5980($fp)
	lw $t0, -5980($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5984($fp)
	lw $t0, -5976($fp)
	lw $t1, -5984($fp)
	add $t0, $t0, $t1
	sw $t0, -5988($fp)
	lw $t0, -5972($fp)
	lw $t1, -5988($fp)
	sw $t0, 0($t1)
	lw $t0, -5988($fp)
	lw $t1, 0($t0)
	sw $t1, -5992($fp)
	li $t0, 64740
	sw $t0, -5996($fp)
	lw $t0, -5996($fp)
	sw $t0, -6000($fp)
	lw $t0, -6000($fp)
	sw $t0, -6004($fp)
	li $t0, 31876
	sw $t0, -6008($fp)
	addi $t0, $fp, -548
	sw $t0, -6012($fp)
	li $t0, 0
	sw $t0, -6016($fp)
	lw $t0, -6016($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6020($fp)
	lw $t0, -6012($fp)
	lw $t1, -6020($fp)
	add $t0, $t0, $t1
	sw $t0, -6024($fp)
	lw $t0, -6008($fp)
	lw $t1, -6024($fp)
	sw $t0, 0($t1)
	lw $t0, -6024($fp)
	lw $t1, 0($t0)
	sw $t1, -6028($fp)
	li $t0, 4196
	sw $t0, -6032($fp)
	addi $t0, $fp, -548
	sw $t0, -6036($fp)
	li $t0, 1
	sw $t0, -6040($fp)
	lw $t0, -6040($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6044($fp)
	lw $t0, -6036($fp)
	lw $t1, -6044($fp)
	add $t0, $t0, $t1
	sw $t0, -6048($fp)
	lw $t0, -6032($fp)
	lw $t1, -6048($fp)
	sw $t0, 0($t1)
	lw $t0, -6048($fp)
	lw $t1, 0($t0)
	sw $t1, -6052($fp)
	li $t0, 42825
	sw $t0, -6056($fp)
	addi $t0, $fp, -548
	sw $t0, -6060($fp)
	li $t0, 2
	sw $t0, -6064($fp)
	lw $t0, -6064($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6068($fp)
	lw $t0, -6060($fp)
	lw $t1, -6068($fp)
	add $t0, $t0, $t1
	sw $t0, -6072($fp)
	lw $t0, -6056($fp)
	lw $t1, -6072($fp)
	sw $t0, 0($t1)
	lw $t0, -6072($fp)
	lw $t1, 0($t0)
	sw $t1, -6076($fp)
	li $t0, 41964
	sw $t0, -6080($fp)
	lw $t0, -6080($fp)
	sw $t0, -6084($fp)
	lw $t0, -6084($fp)
	sw $t0, -6088($fp)
	li $t0, 7928
	sw $t0, -6092($fp)
	lw $t0, -6092($fp)
	sw $t0, -6096($fp)
	lw $t0, -6096($fp)
	sw $t0, -6100($fp)
	li $t0, 27858
	sw $t0, -6104($fp)
	lw $t0, -6104($fp)
	sw $t0, -6108($fp)
	lw $t0, -6108($fp)
	sw $t0, -6112($fp)
	li $t0, 45700
	sw $t0, -6116($fp)
	lw $t0, -6116($fp)
	sw $t0, -6120($fp)
	lw $t0, -6120($fp)
	sw $t0, -6124($fp)
	li $t0, 22997
	sw $t0, -6128($fp)
	lw $t0, -6128($fp)
	sw $t0, -6132($fp)
	lw $t0, -6132($fp)
	sw $t0, -6136($fp)
	li $t0, 41599
	sw $t0, -6140($fp)
	lw $t0, -6140($fp)
	sw $t0, -6144($fp)
	lw $t0, -6144($fp)
	sw $t0, -6148($fp)
	li $t0, 8277
	sw $t0, -6152($fp)
	addi $t0, $fp, -572
	sw $t0, -6156($fp)
	li $t0, 0
	sw $t0, -6160($fp)
	lw $t0, -6160($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6164($fp)
	lw $t0, -6156($fp)
	lw $t1, -6164($fp)
	add $t0, $t0, $t1
	sw $t0, -6168($fp)
	lw $t0, -6152($fp)
	lw $t1, -6168($fp)
	sw $t0, 0($t1)
	lw $t0, -6168($fp)
	lw $t1, 0($t0)
	sw $t1, -6172($fp)
	li $t0, 21351
	sw $t0, -6176($fp)
	addi $t0, $fp, -572
	sw $t0, -6180($fp)
	li $t0, 1
	sw $t0, -6184($fp)
	lw $t0, -6184($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6188($fp)
	lw $t0, -6180($fp)
	lw $t1, -6188($fp)
	add $t0, $t0, $t1
	sw $t0, -6192($fp)
	lw $t0, -6176($fp)
	lw $t1, -6192($fp)
	sw $t0, 0($t1)
	lw $t0, -6192($fp)
	lw $t1, 0($t0)
	sw $t1, -6196($fp)
	li $t0, 40777
	sw $t0, -6200($fp)
	addi $t0, $fp, -572
	sw $t0, -6204($fp)
	li $t0, 2
	sw $t0, -6208($fp)
	lw $t0, -6208($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6212($fp)
	lw $t0, -6204($fp)
	lw $t1, -6212($fp)
	add $t0, $t0, $t1
	sw $t0, -6216($fp)
	lw $t0, -6200($fp)
	lw $t1, -6216($fp)
	sw $t0, 0($t1)
	lw $t0, -6216($fp)
	lw $t1, 0($t0)
	sw $t1, -6220($fp)
	li $t0, 4819
	sw $t0, -6224($fp)
	addi $t0, $fp, -572
	sw $t0, -6228($fp)
	li $t0, 3
	sw $t0, -6232($fp)
	lw $t0, -6232($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6236($fp)
	lw $t0, -6228($fp)
	lw $t1, -6236($fp)
	add $t0, $t0, $t1
	sw $t0, -6240($fp)
	lw $t0, -6224($fp)
	lw $t1, -6240($fp)
	sw $t0, 0($t1)
	lw $t0, -6240($fp)
	lw $t1, 0($t0)
	sw $t1, -6244($fp)
	li $t0, 56195
	sw $t0, -6248($fp)
	addi $t0, $fp, -572
	sw $t0, -6252($fp)
	li $t0, 4
	sw $t0, -6256($fp)
	lw $t0, -6256($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6260($fp)
	lw $t0, -6252($fp)
	lw $t1, -6260($fp)
	add $t0, $t0, $t1
	sw $t0, -6264($fp)
	lw $t0, -6248($fp)
	lw $t1, -6264($fp)
	sw $t0, 0($t1)
	lw $t0, -6264($fp)
	lw $t1, 0($t0)
	sw $t1, -6268($fp)
	li $t0, 58636
	sw $t0, -6272($fp)
	addi $t0, $fp, -572
	sw $t0, -6276($fp)
	li $t0, 5
	sw $t0, -6280($fp)
	lw $t0, -6280($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6284($fp)
	lw $t0, -6276($fp)
	lw $t1, -6284($fp)
	add $t0, $t0, $t1
	sw $t0, -6288($fp)
	lw $t0, -6272($fp)
	lw $t1, -6288($fp)
	sw $t0, 0($t1)
	lw $t0, -6288($fp)
	lw $t1, 0($t0)
	sw $t1, -6292($fp)
	li $t0, 23331
	sw $t0, -6296($fp)
	lw $t0, -6296($fp)
	sw $t0, -6300($fp)
	lw $t0, -6300($fp)
	sw $t0, -6304($fp)
	li $t0, 44951
	sw $t0, -6308($fp)
	lw $t0, -6308($fp)
	sw $t0, -6312($fp)
	lw $t0, -6312($fp)
	sw $t0, -6316($fp)
	li $t0, 40294
	sw $t0, -6320($fp)
	lw $t0, -6320($fp)
	sw $t0, -6324($fp)
	lw $t0, -6324($fp)
	sw $t0, -6328($fp)
	li $t0, 53911
	sw $t0, -6332($fp)
	lw $t0, -6332($fp)
	sw $t0, -6336($fp)
	lw $t0, -6336($fp)
	sw $t0, -6340($fp)
	li $t0, 33762
	sw $t0, -6344($fp)
	lw $t0, -6344($fp)
	sw $t0, -6348($fp)
	lw $t0, -6348($fp)
	sw $t0, -6352($fp)
	li $t0, 22474
	sw $t0, -6356($fp)
	addi $t0, $fp, -608
	sw $t0, -6360($fp)
	li $t0, 0
	sw $t0, -6364($fp)
	lw $t0, -6364($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6368($fp)
	lw $t0, -6360($fp)
	lw $t1, -6368($fp)
	add $t0, $t0, $t1
	sw $t0, -6372($fp)
	lw $t0, -6356($fp)
	lw $t1, -6372($fp)
	sw $t0, 0($t1)
	lw $t0, -6372($fp)
	lw $t1, 0($t0)
	sw $t1, -6376($fp)
	li $t0, 8909
	sw $t0, -6380($fp)
	addi $t0, $fp, -608
	sw $t0, -6384($fp)
	li $t0, 1
	sw $t0, -6388($fp)
	lw $t0, -6388($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6392($fp)
	lw $t0, -6384($fp)
	lw $t1, -6392($fp)
	add $t0, $t0, $t1
	sw $t0, -6396($fp)
	lw $t0, -6380($fp)
	lw $t1, -6396($fp)
	sw $t0, 0($t1)
	lw $t0, -6396($fp)
	lw $t1, 0($t0)
	sw $t1, -6400($fp)
	li $t0, 34029
	sw $t0, -6404($fp)
	addi $t0, $fp, -608
	sw $t0, -6408($fp)
	li $t0, 2
	sw $t0, -6412($fp)
	lw $t0, -6412($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6416($fp)
	lw $t0, -6408($fp)
	lw $t1, -6416($fp)
	add $t0, $t0, $t1
	sw $t0, -6420($fp)
	lw $t0, -6404($fp)
	lw $t1, -6420($fp)
	sw $t0, 0($t1)
	lw $t0, -6420($fp)
	lw $t1, 0($t0)
	sw $t1, -6424($fp)
	li $t0, 15307
	sw $t0, -6428($fp)
	addi $t0, $fp, -608
	sw $t0, -6432($fp)
	li $t0, 3
	sw $t0, -6436($fp)
	lw $t0, -6436($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6440($fp)
	lw $t0, -6432($fp)
	lw $t1, -6440($fp)
	add $t0, $t0, $t1
	sw $t0, -6444($fp)
	lw $t0, -6428($fp)
	lw $t1, -6444($fp)
	sw $t0, 0($t1)
	lw $t0, -6444($fp)
	lw $t1, 0($t0)
	sw $t1, -6448($fp)
	li $t0, 510
	sw $t0, -6452($fp)
	addi $t0, $fp, -608
	sw $t0, -6456($fp)
	li $t0, 4
	sw $t0, -6460($fp)
	lw $t0, -6460($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6464($fp)
	lw $t0, -6456($fp)
	lw $t1, -6464($fp)
	add $t0, $t0, $t1
	sw $t0, -6468($fp)
	lw $t0, -6452($fp)
	lw $t1, -6468($fp)
	sw $t0, 0($t1)
	lw $t0, -6468($fp)
	lw $t1, 0($t0)
	sw $t1, -6472($fp)
	li $t0, 5460
	sw $t0, -6476($fp)
	addi $t0, $fp, -608
	sw $t0, -6480($fp)
	li $t0, 5
	sw $t0, -6484($fp)
	lw $t0, -6484($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6488($fp)
	lw $t0, -6480($fp)
	lw $t1, -6488($fp)
	add $t0, $t0, $t1
	sw $t0, -6492($fp)
	lw $t0, -6476($fp)
	lw $t1, -6492($fp)
	sw $t0, 0($t1)
	lw $t0, -6492($fp)
	lw $t1, 0($t0)
	sw $t1, -6496($fp)
	li $t0, 49203
	sw $t0, -6500($fp)
	addi $t0, $fp, -608
	sw $t0, -6504($fp)
	li $t0, 6
	sw $t0, -6508($fp)
	lw $t0, -6508($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6512($fp)
	lw $t0, -6504($fp)
	lw $t1, -6512($fp)
	add $t0, $t0, $t1
	sw $t0, -6516($fp)
	lw $t0, -6500($fp)
	lw $t1, -6516($fp)
	sw $t0, 0($t1)
	lw $t0, -6516($fp)
	lw $t1, 0($t0)
	sw $t1, -6520($fp)
	li $t0, 22130
	sw $t0, -6524($fp)
	addi $t0, $fp, -608
	sw $t0, -6528($fp)
	li $t0, 7
	sw $t0, -6532($fp)
	lw $t0, -6532($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6536($fp)
	lw $t0, -6528($fp)
	lw $t1, -6536($fp)
	add $t0, $t0, $t1
	sw $t0, -6540($fp)
	lw $t0, -6524($fp)
	lw $t1, -6540($fp)
	sw $t0, 0($t1)
	lw $t0, -6540($fp)
	lw $t1, 0($t0)
	sw $t1, -6544($fp)
	li $t0, 52646
	sw $t0, -6548($fp)
	addi $t0, $fp, -608
	sw $t0, -6552($fp)
	li $t0, 8
	sw $t0, -6556($fp)
	lw $t0, -6556($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6560($fp)
	lw $t0, -6552($fp)
	lw $t1, -6560($fp)
	add $t0, $t0, $t1
	sw $t0, -6564($fp)
	lw $t0, -6548($fp)
	lw $t1, -6564($fp)
	sw $t0, 0($t1)
	lw $t0, -6564($fp)
	lw $t1, 0($t0)
	sw $t1, -6568($fp)
	li $t0, 65134
	sw $t0, -6572($fp)
	lw $t0, -6572($fp)
	sw $t0, -6576($fp)
	lw $t0, -6576($fp)
	sw $t0, -6580($fp)
	li $t0, 21335
	sw $t0, -6584($fp)
	lw $t0, -6584($fp)
	sw $t0, -6588($fp)
	lw $t0, -6588($fp)
	sw $t0, -6592($fp)
	li $t0, 18986
	sw $t0, -6596($fp)
	lw $t0, -6596($fp)
	sw $t0, -6600($fp)
	lw $t0, -6600($fp)
	sw $t0, -6604($fp)
	li $t0, 3794
	sw $t0, -6608($fp)
	lw $t0, -6608($fp)
	sw $t0, -6612($fp)
	lw $t0, -6612($fp)
	sw $t0, -6616($fp)
	li $t0, 64160
	sw $t0, -6620($fp)
	lw $t0, -6620($fp)
	sw $t0, -6624($fp)
	lw $t0, -6624($fp)
	sw $t0, -6628($fp)
	li $t0, 60950
	sw $t0, -6632($fp)
	lw $t0, -6632($fp)
	sw $t0, -6636($fp)
	lw $t0, -6636($fp)
	sw $t0, -6640($fp)
	li $t0, 11723
	sw $t0, -6644($fp)
	lw $t0, -6644($fp)
	sw $t0, -6648($fp)
	lw $t0, -6648($fp)
	sw $t0, -6652($fp)
	li $t0, 26482
	sw $t0, -6656($fp)
	lw $t0, -6656($fp)
	sw $t0, -6660($fp)
	lw $t0, -6660($fp)
	sw $t0, -6664($fp)
	li $t0, 41114
	sw $t0, -6668($fp)
	lw $t0, -6668($fp)
	sw $t0, -6672($fp)
	lw $t0, -6672($fp)
	sw $t0, -6676($fp)
	li $t0, 34720
	sw $t0, -6680($fp)
	lw $t0, -6680($fp)
	sw $t0, -6684($fp)
	lw $t0, -6684($fp)
	sw $t0, -6688($fp)
	li $t0, 2545
	sw $t0, -6692($fp)
	lw $t0, -6692($fp)
	sw $t0, -6696($fp)
	lw $t0, -6696($fp)
	sw $t0, -6700($fp)
	li $t0, 49391
	sw $t0, -6704($fp)
	addi $t0, $fp, -620
	sw $t0, -6708($fp)
	li $t0, 0
	sw $t0, -6712($fp)
	lw $t0, -6712($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6716($fp)
	lw $t0, -6708($fp)
	lw $t1, -6716($fp)
	add $t0, $t0, $t1
	sw $t0, -6720($fp)
	lw $t0, -6704($fp)
	lw $t1, -6720($fp)
	sw $t0, 0($t1)
	lw $t0, -6720($fp)
	lw $t1, 0($t0)
	sw $t1, -6724($fp)
	li $t0, 56071
	sw $t0, -6728($fp)
	addi $t0, $fp, -620
	sw $t0, -6732($fp)
	li $t0, 1
	sw $t0, -6736($fp)
	lw $t0, -6736($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6740($fp)
	lw $t0, -6732($fp)
	lw $t1, -6740($fp)
	add $t0, $t0, $t1
	sw $t0, -6744($fp)
	lw $t0, -6728($fp)
	lw $t1, -6744($fp)
	sw $t0, 0($t1)
	lw $t0, -6744($fp)
	lw $t1, 0($t0)
	sw $t1, -6748($fp)
	li $t0, 43322
	sw $t0, -6752($fp)
	addi $t0, $fp, -620
	sw $t0, -6756($fp)
	li $t0, 2
	sw $t0, -6760($fp)
	lw $t0, -6760($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6764($fp)
	lw $t0, -6756($fp)
	lw $t1, -6764($fp)
	add $t0, $t0, $t1
	sw $t0, -6768($fp)
	lw $t0, -6752($fp)
	lw $t1, -6768($fp)
	sw $t0, 0($t1)
	lw $t0, -6768($fp)
	lw $t1, 0($t0)
	sw $t1, -6772($fp)
	li $t0, 54211
	sw $t0, -6776($fp)
	lw $t0, -6776($fp)
	sw $t0, -6780($fp)
	lw $t0, -6780($fp)
	sw $t0, -6784($fp)
	li $t0, 46730
	sw $t0, -6788($fp)
	lw $t0, -6788($fp)
	sw $t0, -6792($fp)
	lw $t0, -6792($fp)
	sw $t0, -6796($fp)
	li $t0, 36422
	sw $t0, -6800($fp)
	addi $t0, $fp, -652
	sw $t0, -6804($fp)
	li $t0, 0
	sw $t0, -6808($fp)
	lw $t0, -6808($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6812($fp)
	lw $t0, -6804($fp)
	lw $t1, -6812($fp)
	add $t0, $t0, $t1
	sw $t0, -6816($fp)
	lw $t0, -6800($fp)
	lw $t1, -6816($fp)
	sw $t0, 0($t1)
	lw $t0, -6816($fp)
	lw $t1, 0($t0)
	sw $t1, -6820($fp)
	li $t0, 12006
	sw $t0, -6824($fp)
	addi $t0, $fp, -652
	sw $t0, -6828($fp)
	li $t0, 1
	sw $t0, -6832($fp)
	lw $t0, -6832($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6836($fp)
	lw $t0, -6828($fp)
	lw $t1, -6836($fp)
	add $t0, $t0, $t1
	sw $t0, -6840($fp)
	lw $t0, -6824($fp)
	lw $t1, -6840($fp)
	sw $t0, 0($t1)
	lw $t0, -6840($fp)
	lw $t1, 0($t0)
	sw $t1, -6844($fp)
	li $t0, 26145
	sw $t0, -6848($fp)
	addi $t0, $fp, -652
	sw $t0, -6852($fp)
	li $t0, 2
	sw $t0, -6856($fp)
	lw $t0, -6856($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6860($fp)
	lw $t0, -6852($fp)
	lw $t1, -6860($fp)
	add $t0, $t0, $t1
	sw $t0, -6864($fp)
	lw $t0, -6848($fp)
	lw $t1, -6864($fp)
	sw $t0, 0($t1)
	lw $t0, -6864($fp)
	lw $t1, 0($t0)
	sw $t1, -6868($fp)
	li $t0, 11181
	sw $t0, -6872($fp)
	addi $t0, $fp, -652
	sw $t0, -6876($fp)
	li $t0, 3
	sw $t0, -6880($fp)
	lw $t0, -6880($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6884($fp)
	lw $t0, -6876($fp)
	lw $t1, -6884($fp)
	add $t0, $t0, $t1
	sw $t0, -6888($fp)
	lw $t0, -6872($fp)
	lw $t1, -6888($fp)
	sw $t0, 0($t1)
	lw $t0, -6888($fp)
	lw $t1, 0($t0)
	sw $t1, -6892($fp)
	li $t0, 381
	sw $t0, -6896($fp)
	addi $t0, $fp, -652
	sw $t0, -6900($fp)
	li $t0, 4
	sw $t0, -6904($fp)
	lw $t0, -6904($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6908($fp)
	lw $t0, -6900($fp)
	lw $t1, -6908($fp)
	add $t0, $t0, $t1
	sw $t0, -6912($fp)
	lw $t0, -6896($fp)
	lw $t1, -6912($fp)
	sw $t0, 0($t1)
	lw $t0, -6912($fp)
	lw $t1, 0($t0)
	sw $t1, -6916($fp)
	li $t0, 59907
	sw $t0, -6920($fp)
	addi $t0, $fp, -652
	sw $t0, -6924($fp)
	li $t0, 5
	sw $t0, -6928($fp)
	lw $t0, -6928($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6932($fp)
	lw $t0, -6924($fp)
	lw $t1, -6932($fp)
	add $t0, $t0, $t1
	sw $t0, -6936($fp)
	lw $t0, -6920($fp)
	lw $t1, -6936($fp)
	sw $t0, 0($t1)
	lw $t0, -6936($fp)
	lw $t1, 0($t0)
	sw $t1, -6940($fp)
	li $t0, 33655
	sw $t0, -6944($fp)
	addi $t0, $fp, -652
	sw $t0, -6948($fp)
	li $t0, 6
	sw $t0, -6952($fp)
	lw $t0, -6952($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6956($fp)
	lw $t0, -6948($fp)
	lw $t1, -6956($fp)
	add $t0, $t0, $t1
	sw $t0, -6960($fp)
	lw $t0, -6944($fp)
	lw $t1, -6960($fp)
	sw $t0, 0($t1)
	lw $t0, -6960($fp)
	lw $t1, 0($t0)
	sw $t1, -6964($fp)
	li $t0, 9291
	sw $t0, -6968($fp)
	addi $t0, $fp, -652
	sw $t0, -6972($fp)
	li $t0, 7
	sw $t0, -6976($fp)
	lw $t0, -6976($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6980($fp)
	lw $t0, -6972($fp)
	lw $t1, -6980($fp)
	add $t0, $t0, $t1
	sw $t0, -6984($fp)
	lw $t0, -6968($fp)
	lw $t1, -6984($fp)
	sw $t0, 0($t1)
	lw $t0, -6984($fp)
	lw $t1, 0($t0)
	sw $t1, -6988($fp)
	li $t0, 28401
	sw $t0, -6992($fp)
	addi $t0, $fp, -656
	sw $t0, -6996($fp)
	li $t0, 0
	sw $t0, -7000($fp)
	lw $t0, -7000($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7004($fp)
	lw $t0, -6996($fp)
	lw $t1, -7004($fp)
	add $t0, $t0, $t1
	sw $t0, -7008($fp)
	lw $t0, -6992($fp)
	lw $t1, -7008($fp)
	sw $t0, 0($t1)
	lw $t0, -7008($fp)
	lw $t1, 0($t0)
	sw $t1, -7012($fp)
	li $t0, 48963
	sw $t0, -7016($fp)
	lw $t0, -7016($fp)
	sw $t0, -7020($fp)
	lw $t0, -7020($fp)
	sw $t0, -7024($fp)
	li $t0, 9801
	sw $t0, -7028($fp)
	lw $t0, -7028($fp)
	sw $t0, -7032($fp)
	lw $t0, -7032($fp)
	sw $t0, -7036($fp)
	li $t0, 33861
	sw $t0, -7040($fp)
	lw $t0, -7040($fp)
	sw $t0, -7044($fp)
	lw $t0, -7044($fp)
	sw $t0, -7048($fp)
	li $t0, 32630
	sw $t0, -7052($fp)
	lw $t0, -7052($fp)
	sw $t0, -7056($fp)
	lw $t0, -7056($fp)
	sw $t0, -7060($fp)
	li $t0, 31931
	sw $t0, -7064($fp)
	lw $t0, -7064($fp)
	sw $t0, -7068($fp)
	lw $t0, -7068($fp)
	sw $t0, -7072($fp)
	li $t0, 20971
	sw $t0, -7076($fp)
	lw $t0, -7076($fp)
	sw $t0, -7080($fp)
	lw $t0, -7080($fp)
	sw $t0, -7084($fp)
	li $t0, 32228
	sw $t0, -7088($fp)
	lw $t0, -7088($fp)
	sw $t0, -7092($fp)
	lw $t0, -7092($fp)
	sw $t0, -7096($fp)
	li $t0, 53266
	sw $t0, -7100($fp)
	lw $t0, -7100($fp)
	sw $t0, -7104($fp)
	lw $t0, -7104($fp)
	sw $t0, -7108($fp)
	li $t0, 39957
	sw $t0, -7112($fp)
	lw $t0, -7112($fp)
	sw $t0, -7116($fp)
	lw $t0, -7116($fp)
	sw $t0, -7120($fp)
	li $t0, 36022
	sw $t0, -7124($fp)
	lw $t0, -7124($fp)
	sw $t0, -7128($fp)
	lw $t0, -7128($fp)
	sw $t0, -7132($fp)
	li $t0, 51890
	sw $t0, -7136($fp)
	lw $t0, -7136($fp)
	sw $t0, -7140($fp)
	lw $t0, -7140($fp)
	sw $t0, -7144($fp)
	li $t0, 35371
	sw $t0, -7148($fp)
	lw $t0, -7148($fp)
	sw $t0, -7152($fp)
	lw $t0, -7152($fp)
	sw $t0, -7156($fp)
	li $t0, 47745
	sw $t0, -7160($fp)
	lw $t0, -7160($fp)
	sw $t0, -7164($fp)
	lw $t0, -7164($fp)
	sw $t0, -7168($fp)
	li $t0, 12836
	sw $t0, -7172($fp)
	lw $t0, -7172($fp)
	sw $t0, -7176($fp)
	lw $t0, -7176($fp)
	sw $t0, -7180($fp)
	li $t0, 10949
	sw $t0, -7184($fp)
	lw $t0, -7184($fp)
	sw $t0, -7188($fp)
	lw $t0, -7188($fp)
	sw $t0, -7192($fp)
	li $t0, 16929
	sw $t0, -7196($fp)
	lw $t0, -7196($fp)
	sw $t0, -7200($fp)
	lw $t0, -7200($fp)
	sw $t0, -7204($fp)
	li $t0, 15381
	sw $t0, -7208($fp)
	lw $t0, -7208($fp)
	sw $t0, -7212($fp)
	lw $t0, -7212($fp)
	sw $t0, -7216($fp)
	li $t0, 60341
	sw $t0, -7220($fp)
	lw $t0, -7220($fp)
	sw $t0, -7224($fp)
	lw $t0, -7224($fp)
	sw $t0, -7228($fp)
	li $t0, 7464
	sw $t0, -7232($fp)
	lw $t0, -7232($fp)
	sw $t0, -7236($fp)
	lw $t0, -7236($fp)
	sw $t0, -7240($fp)
	li $t0, 58704
	sw $t0, -7244($fp)
	lw $t0, -7244($fp)
	sw $t0, -7248($fp)
	lw $t0, -7248($fp)
	sw $t0, -7252($fp)
	li $t0, 49016
	sw $t0, -7256($fp)
	lw $t0, -7256($fp)
	sw $t0, -7260($fp)
	lw $t0, -7260($fp)
	sw $t0, -7264($fp)
	li $t0, 54194
	sw $t0, -7268($fp)
	lw $t0, -7268($fp)
	sw $t0, -7272($fp)
	lw $t0, -7272($fp)
	sw $t0, -7276($fp)
	li $t0, 29590
	sw $t0, -7280($fp)
	lw $t0, -7280($fp)
	sw $t0, -7284($fp)
	lw $t0, -7284($fp)
	sw $t0, -7288($fp)
	li $t0, 61022
	sw $t0, -7292($fp)
	lw $t0, -7292($fp)
	sw $t0, -7296($fp)
	lw $t0, -7296($fp)
	sw $t0, -7300($fp)
	li $t0, 14804
	sw $t0, -7304($fp)
	lw $t0, -7304($fp)
	sw $t0, -7308($fp)
	lw $t0, -7308($fp)
	sw $t0, -7312($fp)
	li $t0, 40771
	sw $t0, -7316($fp)
	lw $t0, -7316($fp)
	sw $t0, -7320($fp)
	lw $t0, -7320($fp)
	sw $t0, -7324($fp)
	li $t0, 61404
	sw $t0, -7328($fp)
	addi $t0, $fp, -672
	sw $t0, -7332($fp)
	li $t0, 0
	sw $t0, -7336($fp)
	lw $t0, -7336($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7340($fp)
	lw $t0, -7332($fp)
	lw $t1, -7340($fp)
	add $t0, $t0, $t1
	sw $t0, -7344($fp)
	lw $t0, -7328($fp)
	lw $t1, -7344($fp)
	sw $t0, 0($t1)
	lw $t0, -7344($fp)
	lw $t1, 0($t0)
	sw $t1, -7348($fp)
	li $t0, 9175
	sw $t0, -7352($fp)
	addi $t0, $fp, -672
	sw $t0, -7356($fp)
	li $t0, 1
	sw $t0, -7360($fp)
	lw $t0, -7360($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7364($fp)
	lw $t0, -7356($fp)
	lw $t1, -7364($fp)
	add $t0, $t0, $t1
	sw $t0, -7368($fp)
	lw $t0, -7352($fp)
	lw $t1, -7368($fp)
	sw $t0, 0($t1)
	lw $t0, -7368($fp)
	lw $t1, 0($t0)
	sw $t1, -7372($fp)
	li $t0, 8891
	sw $t0, -7376($fp)
	addi $t0, $fp, -672
	sw $t0, -7380($fp)
	li $t0, 2
	sw $t0, -7384($fp)
	lw $t0, -7384($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7388($fp)
	lw $t0, -7380($fp)
	lw $t1, -7388($fp)
	add $t0, $t0, $t1
	sw $t0, -7392($fp)
	lw $t0, -7376($fp)
	lw $t1, -7392($fp)
	sw $t0, 0($t1)
	lw $t0, -7392($fp)
	lw $t1, 0($t0)
	sw $t1, -7396($fp)
	li $t0, 5159
	sw $t0, -7400($fp)
	addi $t0, $fp, -672
	sw $t0, -7404($fp)
	li $t0, 3
	sw $t0, -7408($fp)
	lw $t0, -7408($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7412($fp)
	lw $t0, -7404($fp)
	lw $t1, -7412($fp)
	add $t0, $t0, $t1
	sw $t0, -7416($fp)
	lw $t0, -7400($fp)
	lw $t1, -7416($fp)
	sw $t0, 0($t1)
	lw $t0, -7416($fp)
	lw $t1, 0($t0)
	sw $t1, -7420($fp)
	li $t0, 37576
	sw $t0, -7424($fp)
	lw $t0, -7424($fp)
	sw $t0, -7428($fp)
	lw $t0, -7428($fp)
	sw $t0, -7432($fp)
	li $t0, 57854
	sw $t0, -7436($fp)
	lw $t0, -7436($fp)
	sw $t0, -7440($fp)
	lw $t0, -7440($fp)
	sw $t0, -7444($fp)
	li $t0, 14960
	sw $t0, -7448($fp)
	lw $t0, -7448($fp)
	sw $t0, -7452($fp)
	lw $t0, -7452($fp)
	sw $t0, -7456($fp)
	li $t0, 5901
	sw $t0, -7460($fp)
	lw $t0, -7460($fp)
	sw $t0, -7464($fp)
	lw $t0, -7464($fp)
	sw $t0, -7468($fp)
	li $t0, 24948
	sw $t0, -7472($fp)
	lw $t0, -7472($fp)
	sw $t0, -7476($fp)
	lw $t0, -7476($fp)
	sw $t0, -7480($fp)
	li $t0, 46891
	sw $t0, -7484($fp)
	lw $t0, -7484($fp)
	sw $t0, -7488($fp)
	lw $t0, -7488($fp)
	sw $t0, -7492($fp)
	li $t0, 26872
	sw $t0, -7496($fp)
	addi $t0, $fp, -712
	sw $t0, -7500($fp)
	li $t0, 0
	sw $t0, -7504($fp)
	lw $t0, -7504($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7508($fp)
	lw $t0, -7500($fp)
	lw $t1, -7508($fp)
	add $t0, $t0, $t1
	sw $t0, -7512($fp)
	lw $t0, -7496($fp)
	lw $t1, -7512($fp)
	sw $t0, 0($t1)
	lw $t0, -7512($fp)
	lw $t1, 0($t0)
	sw $t1, -7516($fp)
	li $t0, 57176
	sw $t0, -7520($fp)
	addi $t0, $fp, -712
	sw $t0, -7524($fp)
	li $t0, 1
	sw $t0, -7528($fp)
	lw $t0, -7528($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7532($fp)
	lw $t0, -7524($fp)
	lw $t1, -7532($fp)
	add $t0, $t0, $t1
	sw $t0, -7536($fp)
	lw $t0, -7520($fp)
	lw $t1, -7536($fp)
	sw $t0, 0($t1)
	lw $t0, -7536($fp)
	lw $t1, 0($t0)
	sw $t1, -7540($fp)
	li $t0, 34622
	sw $t0, -7544($fp)
	addi $t0, $fp, -712
	sw $t0, -7548($fp)
	li $t0, 2
	sw $t0, -7552($fp)
	lw $t0, -7552($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7556($fp)
	lw $t0, -7548($fp)
	lw $t1, -7556($fp)
	add $t0, $t0, $t1
	sw $t0, -7560($fp)
	lw $t0, -7544($fp)
	lw $t1, -7560($fp)
	sw $t0, 0($t1)
	lw $t0, -7560($fp)
	lw $t1, 0($t0)
	sw $t1, -7564($fp)
	li $t0, 1293
	sw $t0, -7568($fp)
	addi $t0, $fp, -712
	sw $t0, -7572($fp)
	li $t0, 3
	sw $t0, -7576($fp)
	lw $t0, -7576($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7580($fp)
	lw $t0, -7572($fp)
	lw $t1, -7580($fp)
	add $t0, $t0, $t1
	sw $t0, -7584($fp)
	lw $t0, -7568($fp)
	lw $t1, -7584($fp)
	sw $t0, 0($t1)
	lw $t0, -7584($fp)
	lw $t1, 0($t0)
	sw $t1, -7588($fp)
	li $t0, 27662
	sw $t0, -7592($fp)
	addi $t0, $fp, -712
	sw $t0, -7596($fp)
	li $t0, 4
	sw $t0, -7600($fp)
	lw $t0, -7600($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7604($fp)
	lw $t0, -7596($fp)
	lw $t1, -7604($fp)
	add $t0, $t0, $t1
	sw $t0, -7608($fp)
	lw $t0, -7592($fp)
	lw $t1, -7608($fp)
	sw $t0, 0($t1)
	lw $t0, -7608($fp)
	lw $t1, 0($t0)
	sw $t1, -7612($fp)
	li $t0, 20976
	sw $t0, -7616($fp)
	addi $t0, $fp, -712
	sw $t0, -7620($fp)
	li $t0, 5
	sw $t0, -7624($fp)
	lw $t0, -7624($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7628($fp)
	lw $t0, -7620($fp)
	lw $t1, -7628($fp)
	add $t0, $t0, $t1
	sw $t0, -7632($fp)
	lw $t0, -7616($fp)
	lw $t1, -7632($fp)
	sw $t0, 0($t1)
	lw $t0, -7632($fp)
	lw $t1, 0($t0)
	sw $t1, -7636($fp)
	li $t0, 36664
	sw $t0, -7640($fp)
	addi $t0, $fp, -712
	sw $t0, -7644($fp)
	li $t0, 6
	sw $t0, -7648($fp)
	lw $t0, -7648($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7652($fp)
	lw $t0, -7644($fp)
	lw $t1, -7652($fp)
	add $t0, $t0, $t1
	sw $t0, -7656($fp)
	lw $t0, -7640($fp)
	lw $t1, -7656($fp)
	sw $t0, 0($t1)
	lw $t0, -7656($fp)
	lw $t1, 0($t0)
	sw $t1, -7660($fp)
	li $t0, 9872
	sw $t0, -7664($fp)
	addi $t0, $fp, -712
	sw $t0, -7668($fp)
	li $t0, 7
	sw $t0, -7672($fp)
	lw $t0, -7672($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7676($fp)
	lw $t0, -7668($fp)
	lw $t1, -7676($fp)
	add $t0, $t0, $t1
	sw $t0, -7680($fp)
	lw $t0, -7664($fp)
	lw $t1, -7680($fp)
	sw $t0, 0($t1)
	lw $t0, -7680($fp)
	lw $t1, 0($t0)
	sw $t1, -7684($fp)
	li $t0, 33813
	sw $t0, -7688($fp)
	addi $t0, $fp, -712
	sw $t0, -7692($fp)
	li $t0, 8
	sw $t0, -7696($fp)
	lw $t0, -7696($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7700($fp)
	lw $t0, -7692($fp)
	lw $t1, -7700($fp)
	add $t0, $t0, $t1
	sw $t0, -7704($fp)
	lw $t0, -7688($fp)
	lw $t1, -7704($fp)
	sw $t0, 0($t1)
	lw $t0, -7704($fp)
	lw $t1, 0($t0)
	sw $t1, -7708($fp)
	li $t0, 47614
	sw $t0, -7712($fp)
	addi $t0, $fp, -712
	sw $t0, -7716($fp)
	li $t0, 9
	sw $t0, -7720($fp)
	lw $t0, -7720($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7724($fp)
	lw $t0, -7716($fp)
	lw $t1, -7724($fp)
	add $t0, $t0, $t1
	sw $t0, -7728($fp)
	lw $t0, -7712($fp)
	lw $t1, -7728($fp)
	sw $t0, 0($t1)
	lw $t0, -7728($fp)
	lw $t1, 0($t0)
	sw $t1, -7732($fp)
	li $t0, 26801
	sw $t0, -7736($fp)
	lw $t0, -7736($fp)
	sw $t0, -7740($fp)
	lw $t0, -7740($fp)
	sw $t0, -7744($fp)
	li $t0, 49194
	sw $t0, -7748($fp)
	lw $t0, -7748($fp)
	sw $t0, -7752($fp)
	lw $t0, -7752($fp)
	sw $t0, -7756($fp)
	li $t0, 42419
	sw $t0, -7760($fp)
	lw $t0, -7760($fp)
	sw $t0, -7764($fp)
	lw $t0, -7764($fp)
	sw $t0, -7768($fp)
	li $t0, 34266
	sw $t0, -7772($fp)
	addi $t0, $fp, -732
	sw $t0, -7776($fp)
	li $t0, 0
	sw $t0, -7780($fp)
	lw $t0, -7780($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7784($fp)
	lw $t0, -7776($fp)
	lw $t1, -7784($fp)
	add $t0, $t0, $t1
	sw $t0, -7788($fp)
	lw $t0, -7772($fp)
	lw $t1, -7788($fp)
	sw $t0, 0($t1)
	lw $t0, -7788($fp)
	lw $t1, 0($t0)
	sw $t1, -7792($fp)
	li $t0, 42362
	sw $t0, -7796($fp)
	addi $t0, $fp, -732
	sw $t0, -7800($fp)
	li $t0, 1
	sw $t0, -7804($fp)
	lw $t0, -7804($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7808($fp)
	lw $t0, -7800($fp)
	lw $t1, -7808($fp)
	add $t0, $t0, $t1
	sw $t0, -7812($fp)
	lw $t0, -7796($fp)
	lw $t1, -7812($fp)
	sw $t0, 0($t1)
	lw $t0, -7812($fp)
	lw $t1, 0($t0)
	sw $t1, -7816($fp)
	li $t0, 25899
	sw $t0, -7820($fp)
	addi $t0, $fp, -732
	sw $t0, -7824($fp)
	li $t0, 2
	sw $t0, -7828($fp)
	lw $t0, -7828($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7832($fp)
	lw $t0, -7824($fp)
	lw $t1, -7832($fp)
	add $t0, $t0, $t1
	sw $t0, -7836($fp)
	lw $t0, -7820($fp)
	lw $t1, -7836($fp)
	sw $t0, 0($t1)
	lw $t0, -7836($fp)
	lw $t1, 0($t0)
	sw $t1, -7840($fp)
	li $t0, 22924
	sw $t0, -7844($fp)
	addi $t0, $fp, -732
	sw $t0, -7848($fp)
	li $t0, 3
	sw $t0, -7852($fp)
	lw $t0, -7852($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7856($fp)
	lw $t0, -7848($fp)
	lw $t1, -7856($fp)
	add $t0, $t0, $t1
	sw $t0, -7860($fp)
	lw $t0, -7844($fp)
	lw $t1, -7860($fp)
	sw $t0, 0($t1)
	lw $t0, -7860($fp)
	lw $t1, 0($t0)
	sw $t1, -7864($fp)
	li $t0, 6417
	sw $t0, -7868($fp)
	addi $t0, $fp, -732
	sw $t0, -7872($fp)
	li $t0, 4
	sw $t0, -7876($fp)
	lw $t0, -7876($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7880($fp)
	lw $t0, -7872($fp)
	lw $t1, -7880($fp)
	add $t0, $t0, $t1
	sw $t0, -7884($fp)
	lw $t0, -7868($fp)
	lw $t1, -7884($fp)
	sw $t0, 0($t1)
	lw $t0, -7884($fp)
	lw $t1, 0($t0)
	sw $t1, -7888($fp)
	li $t0, 21385
	sw $t0, -7892($fp)
	addi $t0, $fp, -772
	sw $t0, -7896($fp)
	li $t0, 0
	sw $t0, -7900($fp)
	lw $t0, -7900($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7904($fp)
	lw $t0, -7896($fp)
	lw $t1, -7904($fp)
	add $t0, $t0, $t1
	sw $t0, -7908($fp)
	lw $t0, -7892($fp)
	lw $t1, -7908($fp)
	sw $t0, 0($t1)
	lw $t0, -7908($fp)
	lw $t1, 0($t0)
	sw $t1, -7912($fp)
	li $t0, 37728
	sw $t0, -7916($fp)
	addi $t0, $fp, -772
	sw $t0, -7920($fp)
	li $t0, 1
	sw $t0, -7924($fp)
	lw $t0, -7924($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7928($fp)
	lw $t0, -7920($fp)
	lw $t1, -7928($fp)
	add $t0, $t0, $t1
	sw $t0, -7932($fp)
	lw $t0, -7916($fp)
	lw $t1, -7932($fp)
	sw $t0, 0($t1)
	lw $t0, -7932($fp)
	lw $t1, 0($t0)
	sw $t1, -7936($fp)
	li $t0, 47188
	sw $t0, -7940($fp)
	addi $t0, $fp, -772
	sw $t0, -7944($fp)
	li $t0, 2
	sw $t0, -7948($fp)
	lw $t0, -7948($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7952($fp)
	lw $t0, -7944($fp)
	lw $t1, -7952($fp)
	add $t0, $t0, $t1
	sw $t0, -7956($fp)
	lw $t0, -7940($fp)
	lw $t1, -7956($fp)
	sw $t0, 0($t1)
	lw $t0, -7956($fp)
	lw $t1, 0($t0)
	sw $t1, -7960($fp)
	li $t0, 17253
	sw $t0, -7964($fp)
	addi $t0, $fp, -772
	sw $t0, -7968($fp)
	li $t0, 3
	sw $t0, -7972($fp)
	lw $t0, -7972($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7976($fp)
	lw $t0, -7968($fp)
	lw $t1, -7976($fp)
	add $t0, $t0, $t1
	sw $t0, -7980($fp)
	lw $t0, -7964($fp)
	lw $t1, -7980($fp)
	sw $t0, 0($t1)
	lw $t0, -7980($fp)
	lw $t1, 0($t0)
	sw $t1, -7984($fp)
	li $t0, 46904
	sw $t0, -7988($fp)
	addi $t0, $fp, -772
	sw $t0, -7992($fp)
	li $t0, 4
	sw $t0, -7996($fp)
	lw $t0, -7996($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8000($fp)
	lw $t0, -7992($fp)
	lw $t1, -8000($fp)
	add $t0, $t0, $t1
	sw $t0, -8004($fp)
	lw $t0, -7988($fp)
	lw $t1, -8004($fp)
	sw $t0, 0($t1)
	lw $t0, -8004($fp)
	lw $t1, 0($t0)
	sw $t1, -8008($fp)
	li $t0, 56079
	sw $t0, -8012($fp)
	addi $t0, $fp, -772
	sw $t0, -8016($fp)
	li $t0, 5
	sw $t0, -8020($fp)
	lw $t0, -8020($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8024($fp)
	lw $t0, -8016($fp)
	lw $t1, -8024($fp)
	add $t0, $t0, $t1
	sw $t0, -8028($fp)
	lw $t0, -8012($fp)
	lw $t1, -8028($fp)
	sw $t0, 0($t1)
	lw $t0, -8028($fp)
	lw $t1, 0($t0)
	sw $t1, -8032($fp)
	li $t0, 22412
	sw $t0, -8036($fp)
	addi $t0, $fp, -772
	sw $t0, -8040($fp)
	li $t0, 6
	sw $t0, -8044($fp)
	lw $t0, -8044($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8048($fp)
	lw $t0, -8040($fp)
	lw $t1, -8048($fp)
	add $t0, $t0, $t1
	sw $t0, -8052($fp)
	lw $t0, -8036($fp)
	lw $t1, -8052($fp)
	sw $t0, 0($t1)
	lw $t0, -8052($fp)
	lw $t1, 0($t0)
	sw $t1, -8056($fp)
	li $t0, 18944
	sw $t0, -8060($fp)
	addi $t0, $fp, -772
	sw $t0, -8064($fp)
	li $t0, 7
	sw $t0, -8068($fp)
	lw $t0, -8068($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8072($fp)
	lw $t0, -8064($fp)
	lw $t1, -8072($fp)
	add $t0, $t0, $t1
	sw $t0, -8076($fp)
	lw $t0, -8060($fp)
	lw $t1, -8076($fp)
	sw $t0, 0($t1)
	lw $t0, -8076($fp)
	lw $t1, 0($t0)
	sw $t1, -8080($fp)
	li $t0, 48397
	sw $t0, -8084($fp)
	addi $t0, $fp, -772
	sw $t0, -8088($fp)
	li $t0, 8
	sw $t0, -8092($fp)
	lw $t0, -8092($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8096($fp)
	lw $t0, -8088($fp)
	lw $t1, -8096($fp)
	add $t0, $t0, $t1
	sw $t0, -8100($fp)
	lw $t0, -8084($fp)
	lw $t1, -8100($fp)
	sw $t0, 0($t1)
	lw $t0, -8100($fp)
	lw $t1, 0($t0)
	sw $t1, -8104($fp)
	li $t0, 37372
	sw $t0, -8108($fp)
	addi $t0, $fp, -772
	sw $t0, -8112($fp)
	li $t0, 9
	sw $t0, -8116($fp)
	lw $t0, -8116($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8120($fp)
	lw $t0, -8112($fp)
	lw $t1, -8120($fp)
	add $t0, $t0, $t1
	sw $t0, -8124($fp)
	lw $t0, -8108($fp)
	lw $t1, -8124($fp)
	sw $t0, 0($t1)
	lw $t0, -8124($fp)
	lw $t1, 0($t0)
	sw $t1, -8128($fp)
	li $t0, 24846
	sw $t0, -8132($fp)
	addi $t0, $fp, -808
	sw $t0, -8136($fp)
	li $t0, 0
	sw $t0, -8140($fp)
	lw $t0, -8140($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8144($fp)
	lw $t0, -8136($fp)
	lw $t1, -8144($fp)
	add $t0, $t0, $t1
	sw $t0, -8148($fp)
	lw $t0, -8132($fp)
	lw $t1, -8148($fp)
	sw $t0, 0($t1)
	lw $t0, -8148($fp)
	lw $t1, 0($t0)
	sw $t1, -8152($fp)
	li $t0, 7809
	sw $t0, -8156($fp)
	addi $t0, $fp, -808
	sw $t0, -8160($fp)
	li $t0, 1
	sw $t0, -8164($fp)
	lw $t0, -8164($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8168($fp)
	lw $t0, -8160($fp)
	lw $t1, -8168($fp)
	add $t0, $t0, $t1
	sw $t0, -8172($fp)
	lw $t0, -8156($fp)
	lw $t1, -8172($fp)
	sw $t0, 0($t1)
	lw $t0, -8172($fp)
	lw $t1, 0($t0)
	sw $t1, -8176($fp)
	li $t0, 18728
	sw $t0, -8180($fp)
	addi $t0, $fp, -808
	sw $t0, -8184($fp)
	li $t0, 2
	sw $t0, -8188($fp)
	lw $t0, -8188($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8192($fp)
	lw $t0, -8184($fp)
	lw $t1, -8192($fp)
	add $t0, $t0, $t1
	sw $t0, -8196($fp)
	lw $t0, -8180($fp)
	lw $t1, -8196($fp)
	sw $t0, 0($t1)
	lw $t0, -8196($fp)
	lw $t1, 0($t0)
	sw $t1, -8200($fp)
	li $t0, 51718
	sw $t0, -8204($fp)
	addi $t0, $fp, -808
	sw $t0, -8208($fp)
	li $t0, 3
	sw $t0, -8212($fp)
	lw $t0, -8212($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8216($fp)
	lw $t0, -8208($fp)
	lw $t1, -8216($fp)
	add $t0, $t0, $t1
	sw $t0, -8220($fp)
	lw $t0, -8204($fp)
	lw $t1, -8220($fp)
	sw $t0, 0($t1)
	lw $t0, -8220($fp)
	lw $t1, 0($t0)
	sw $t1, -8224($fp)
	li $t0, 64985
	sw $t0, -8228($fp)
	addi $t0, $fp, -808
	sw $t0, -8232($fp)
	li $t0, 4
	sw $t0, -8236($fp)
	lw $t0, -8236($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8240($fp)
	lw $t0, -8232($fp)
	lw $t1, -8240($fp)
	add $t0, $t0, $t1
	sw $t0, -8244($fp)
	lw $t0, -8228($fp)
	lw $t1, -8244($fp)
	sw $t0, 0($t1)
	lw $t0, -8244($fp)
	lw $t1, 0($t0)
	sw $t1, -8248($fp)
	li $t0, 53350
	sw $t0, -8252($fp)
	addi $t0, $fp, -808
	sw $t0, -8256($fp)
	li $t0, 5
	sw $t0, -8260($fp)
	lw $t0, -8260($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8264($fp)
	lw $t0, -8256($fp)
	lw $t1, -8264($fp)
	add $t0, $t0, $t1
	sw $t0, -8268($fp)
	lw $t0, -8252($fp)
	lw $t1, -8268($fp)
	sw $t0, 0($t1)
	lw $t0, -8268($fp)
	lw $t1, 0($t0)
	sw $t1, -8272($fp)
	li $t0, 53012
	sw $t0, -8276($fp)
	addi $t0, $fp, -808
	sw $t0, -8280($fp)
	li $t0, 6
	sw $t0, -8284($fp)
	lw $t0, -8284($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8288($fp)
	lw $t0, -8280($fp)
	lw $t1, -8288($fp)
	add $t0, $t0, $t1
	sw $t0, -8292($fp)
	lw $t0, -8276($fp)
	lw $t1, -8292($fp)
	sw $t0, 0($t1)
	lw $t0, -8292($fp)
	lw $t1, 0($t0)
	sw $t1, -8296($fp)
	li $t0, 27112
	sw $t0, -8300($fp)
	addi $t0, $fp, -808
	sw $t0, -8304($fp)
	li $t0, 7
	sw $t0, -8308($fp)
	lw $t0, -8308($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8312($fp)
	lw $t0, -8304($fp)
	lw $t1, -8312($fp)
	add $t0, $t0, $t1
	sw $t0, -8316($fp)
	lw $t0, -8300($fp)
	lw $t1, -8316($fp)
	sw $t0, 0($t1)
	lw $t0, -8316($fp)
	lw $t1, 0($t0)
	sw $t1, -8320($fp)
	li $t0, 8790
	sw $t0, -8324($fp)
	addi $t0, $fp, -808
	sw $t0, -8328($fp)
	li $t0, 8
	sw $t0, -8332($fp)
	lw $t0, -8332($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8336($fp)
	lw $t0, -8328($fp)
	lw $t1, -8336($fp)
	add $t0, $t0, $t1
	sw $t0, -8340($fp)
	lw $t0, -8324($fp)
	lw $t1, -8340($fp)
	sw $t0, 0($t1)
	lw $t0, -8340($fp)
	lw $t1, 0($t0)
	sw $t1, -8344($fp)
	li $t0, 24140
	sw $t0, -8348($fp)
	lw $t0, -8348($fp)
	sw $t0, -8352($fp)
	lw $t0, -8352($fp)
	sw $t0, -8356($fp)
	li $t0, 36984
	sw $t0, -8360($fp)
	lw $t0, -8360($fp)
	sw $t0, -8364($fp)
	lw $t0, -8364($fp)
	sw $t0, -8368($fp)
	li $t0, 42603
	sw $t0, -8372($fp)
	lw $t0, -8372($fp)
	sw $t0, -8376($fp)
	lw $t0, -8376($fp)
	sw $t0, -8380($fp)
	li $t0, 6218
	sw $t0, -8384($fp)
	lw $t0, -8384($fp)
	sw $t0, -8388($fp)
	lw $t0, -8388($fp)
	sw $t0, -8392($fp)
	li $t0, 63785
	sw $t0, -8396($fp)
	lw $t0, -8396($fp)
	sw $t0, -8400($fp)
	lw $t0, -8400($fp)
	sw $t0, -8404($fp)
	li $t0, 26262
	sw $t0, -8408($fp)
	lw $t0, -8408($fp)
	sw $t0, -8412($fp)
	lw $t0, -8412($fp)
	sw $t0, -8416($fp)
	li $t0, 48637
	sw $t0, -8420($fp)
	lw $t0, -8420($fp)
	sw $t0, -8424($fp)
	lw $t0, -8424($fp)
	sw $t0, -8428($fp)
	li $t0, 32515
	sw $t0, -8432($fp)
	lw $t0, -8432($fp)
	sw $t0, -8436($fp)
	lw $t0, -8436($fp)
	sw $t0, -8440($fp)
	li $t0, 3088
	sw $t0, -8444($fp)
	lw $t0, -8444($fp)
	sw $t0, -8448($fp)
	lw $t0, -8448($fp)
	sw $t0, -8452($fp)
	li $t0, 9000
	sw $t0, -8456($fp)
	lw $t0, -8456($fp)
	sw $t0, -8460($fp)
	lw $t0, -8460($fp)
	sw $t0, -8464($fp)
	li $t0, 55440
	sw $t0, -8468($fp)
	lw $t0, -8468($fp)
	sw $t0, -8472($fp)
	lw $t0, -8472($fp)
	sw $t0, -8476($fp)
	li $t0, 9505
	sw $t0, -8480($fp)
	lw $t0, -8480($fp)
	sw $t0, -8484($fp)
	lw $t0, -8484($fp)
	sw $t0, -8488($fp)
	li $t0, 30386
	sw $t0, -8492($fp)
	addi $t0, $fp, -844
	sw $t0, -8496($fp)
	li $t0, 0
	sw $t0, -8500($fp)
	lw $t0, -8500($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8504($fp)
	lw $t0, -8496($fp)
	lw $t1, -8504($fp)
	add $t0, $t0, $t1
	sw $t0, -8508($fp)
	lw $t0, -8492($fp)
	lw $t1, -8508($fp)
	sw $t0, 0($t1)
	lw $t0, -8508($fp)
	lw $t1, 0($t0)
	sw $t1, -8512($fp)
	li $t0, 27632
	sw $t0, -8516($fp)
	addi $t0, $fp, -844
	sw $t0, -8520($fp)
	li $t0, 1
	sw $t0, -8524($fp)
	lw $t0, -8524($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8528($fp)
	lw $t0, -8520($fp)
	lw $t1, -8528($fp)
	add $t0, $t0, $t1
	sw $t0, -8532($fp)
	lw $t0, -8516($fp)
	lw $t1, -8532($fp)
	sw $t0, 0($t1)
	lw $t0, -8532($fp)
	lw $t1, 0($t0)
	sw $t1, -8536($fp)
	li $t0, 56694
	sw $t0, -8540($fp)
	addi $t0, $fp, -844
	sw $t0, -8544($fp)
	li $t0, 2
	sw $t0, -8548($fp)
	lw $t0, -8548($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8552($fp)
	lw $t0, -8544($fp)
	lw $t1, -8552($fp)
	add $t0, $t0, $t1
	sw $t0, -8556($fp)
	lw $t0, -8540($fp)
	lw $t1, -8556($fp)
	sw $t0, 0($t1)
	lw $t0, -8556($fp)
	lw $t1, 0($t0)
	sw $t1, -8560($fp)
	li $t0, 47639
	sw $t0, -8564($fp)
	addi $t0, $fp, -844
	sw $t0, -8568($fp)
	li $t0, 3
	sw $t0, -8572($fp)
	lw $t0, -8572($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8576($fp)
	lw $t0, -8568($fp)
	lw $t1, -8576($fp)
	add $t0, $t0, $t1
	sw $t0, -8580($fp)
	lw $t0, -8564($fp)
	lw $t1, -8580($fp)
	sw $t0, 0($t1)
	lw $t0, -8580($fp)
	lw $t1, 0($t0)
	sw $t1, -8584($fp)
	li $t0, 9000
	sw $t0, -8588($fp)
	addi $t0, $fp, -844
	sw $t0, -8592($fp)
	li $t0, 4
	sw $t0, -8596($fp)
	lw $t0, -8596($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8600($fp)
	lw $t0, -8592($fp)
	lw $t1, -8600($fp)
	add $t0, $t0, $t1
	sw $t0, -8604($fp)
	lw $t0, -8588($fp)
	lw $t1, -8604($fp)
	sw $t0, 0($t1)
	lw $t0, -8604($fp)
	lw $t1, 0($t0)
	sw $t1, -8608($fp)
	li $t0, 47237
	sw $t0, -8612($fp)
	addi $t0, $fp, -844
	sw $t0, -8616($fp)
	li $t0, 5
	sw $t0, -8620($fp)
	lw $t0, -8620($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8624($fp)
	lw $t0, -8616($fp)
	lw $t1, -8624($fp)
	add $t0, $t0, $t1
	sw $t0, -8628($fp)
	lw $t0, -8612($fp)
	lw $t1, -8628($fp)
	sw $t0, 0($t1)
	lw $t0, -8628($fp)
	lw $t1, 0($t0)
	sw $t1, -8632($fp)
	li $t0, 4516
	sw $t0, -8636($fp)
	addi $t0, $fp, -844
	sw $t0, -8640($fp)
	li $t0, 6
	sw $t0, -8644($fp)
	lw $t0, -8644($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8648($fp)
	lw $t0, -8640($fp)
	lw $t1, -8648($fp)
	add $t0, $t0, $t1
	sw $t0, -8652($fp)
	lw $t0, -8636($fp)
	lw $t1, -8652($fp)
	sw $t0, 0($t1)
	lw $t0, -8652($fp)
	lw $t1, 0($t0)
	sw $t1, -8656($fp)
	li $t0, 27945
	sw $t0, -8660($fp)
	addi $t0, $fp, -844
	sw $t0, -8664($fp)
	li $t0, 7
	sw $t0, -8668($fp)
	lw $t0, -8668($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8672($fp)
	lw $t0, -8664($fp)
	lw $t1, -8672($fp)
	add $t0, $t0, $t1
	sw $t0, -8676($fp)
	lw $t0, -8660($fp)
	lw $t1, -8676($fp)
	sw $t0, 0($t1)
	lw $t0, -8676($fp)
	lw $t1, 0($t0)
	sw $t1, -8680($fp)
	li $t0, 30099
	sw $t0, -8684($fp)
	addi $t0, $fp, -844
	sw $t0, -8688($fp)
	li $t0, 8
	sw $t0, -8692($fp)
	lw $t0, -8692($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8696($fp)
	lw $t0, -8688($fp)
	lw $t1, -8696($fp)
	add $t0, $t0, $t1
	sw $t0, -8700($fp)
	lw $t0, -8684($fp)
	lw $t1, -8700($fp)
	sw $t0, 0($t1)
	lw $t0, -8700($fp)
	lw $t1, 0($t0)
	sw $t1, -8704($fp)
	li $t0, 41888
	sw $t0, -8708($fp)
	lw $t0, -8708($fp)
	sw $t0, -8712($fp)
	lw $t0, -8712($fp)
	sw $t0, -8716($fp)
	li $t0, 52791
	sw $t0, -8720($fp)
	lw $t0, -8720($fp)
	sw $t0, -8724($fp)
	lw $t0, -8724($fp)
	sw $t0, -8728($fp)
	li $t0, 37908
	sw $t0, -8732($fp)
	addi $t0, $fp, -884
	sw $t0, -8736($fp)
	li $t0, 0
	sw $t0, -8740($fp)
	lw $t0, -8740($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8744($fp)
	lw $t0, -8736($fp)
	lw $t1, -8744($fp)
	add $t0, $t0, $t1
	sw $t0, -8748($fp)
	lw $t0, -8732($fp)
	lw $t1, -8748($fp)
	sw $t0, 0($t1)
	lw $t0, -8748($fp)
	lw $t1, 0($t0)
	sw $t1, -8752($fp)
	li $t0, 60616
	sw $t0, -8756($fp)
	addi $t0, $fp, -884
	sw $t0, -8760($fp)
	li $t0, 1
	sw $t0, -8764($fp)
	lw $t0, -8764($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8768($fp)
	lw $t0, -8760($fp)
	lw $t1, -8768($fp)
	add $t0, $t0, $t1
	sw $t0, -8772($fp)
	lw $t0, -8756($fp)
	lw $t1, -8772($fp)
	sw $t0, 0($t1)
	lw $t0, -8772($fp)
	lw $t1, 0($t0)
	sw $t1, -8776($fp)
	li $t0, 38973
	sw $t0, -8780($fp)
	addi $t0, $fp, -884
	sw $t0, -8784($fp)
	li $t0, 2
	sw $t0, -8788($fp)
	lw $t0, -8788($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8792($fp)
	lw $t0, -8784($fp)
	lw $t1, -8792($fp)
	add $t0, $t0, $t1
	sw $t0, -8796($fp)
	lw $t0, -8780($fp)
	lw $t1, -8796($fp)
	sw $t0, 0($t1)
	lw $t0, -8796($fp)
	lw $t1, 0($t0)
	sw $t1, -8800($fp)
	li $t0, 37358
	sw $t0, -8804($fp)
	addi $t0, $fp, -884
	sw $t0, -8808($fp)
	li $t0, 3
	sw $t0, -8812($fp)
	lw $t0, -8812($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8816($fp)
	lw $t0, -8808($fp)
	lw $t1, -8816($fp)
	add $t0, $t0, $t1
	sw $t0, -8820($fp)
	lw $t0, -8804($fp)
	lw $t1, -8820($fp)
	sw $t0, 0($t1)
	lw $t0, -8820($fp)
	lw $t1, 0($t0)
	sw $t1, -8824($fp)
	li $t0, 48430
	sw $t0, -8828($fp)
	addi $t0, $fp, -884
	sw $t0, -8832($fp)
	li $t0, 4
	sw $t0, -8836($fp)
	lw $t0, -8836($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8840($fp)
	lw $t0, -8832($fp)
	lw $t1, -8840($fp)
	add $t0, $t0, $t1
	sw $t0, -8844($fp)
	lw $t0, -8828($fp)
	lw $t1, -8844($fp)
	sw $t0, 0($t1)
	lw $t0, -8844($fp)
	lw $t1, 0($t0)
	sw $t1, -8848($fp)
	li $t0, 26449
	sw $t0, -8852($fp)
	addi $t0, $fp, -884
	sw $t0, -8856($fp)
	li $t0, 5
	sw $t0, -8860($fp)
	lw $t0, -8860($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8864($fp)
	lw $t0, -8856($fp)
	lw $t1, -8864($fp)
	add $t0, $t0, $t1
	sw $t0, -8868($fp)
	lw $t0, -8852($fp)
	lw $t1, -8868($fp)
	sw $t0, 0($t1)
	lw $t0, -8868($fp)
	lw $t1, 0($t0)
	sw $t1, -8872($fp)
	li $t0, 64470
	sw $t0, -8876($fp)
	addi $t0, $fp, -884
	sw $t0, -8880($fp)
	li $t0, 6
	sw $t0, -8884($fp)
	lw $t0, -8884($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8888($fp)
	lw $t0, -8880($fp)
	lw $t1, -8888($fp)
	add $t0, $t0, $t1
	sw $t0, -8892($fp)
	lw $t0, -8876($fp)
	lw $t1, -8892($fp)
	sw $t0, 0($t1)
	lw $t0, -8892($fp)
	lw $t1, 0($t0)
	sw $t1, -8896($fp)
	li $t0, 57221
	sw $t0, -8900($fp)
	addi $t0, $fp, -884
	sw $t0, -8904($fp)
	li $t0, 7
	sw $t0, -8908($fp)
	lw $t0, -8908($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8912($fp)
	lw $t0, -8904($fp)
	lw $t1, -8912($fp)
	add $t0, $t0, $t1
	sw $t0, -8916($fp)
	lw $t0, -8900($fp)
	lw $t1, -8916($fp)
	sw $t0, 0($t1)
	lw $t0, -8916($fp)
	lw $t1, 0($t0)
	sw $t1, -8920($fp)
	li $t0, 50590
	sw $t0, -8924($fp)
	addi $t0, $fp, -884
	sw $t0, -8928($fp)
	li $t0, 8
	sw $t0, -8932($fp)
	lw $t0, -8932($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8936($fp)
	lw $t0, -8928($fp)
	lw $t1, -8936($fp)
	add $t0, $t0, $t1
	sw $t0, -8940($fp)
	lw $t0, -8924($fp)
	lw $t1, -8940($fp)
	sw $t0, 0($t1)
	lw $t0, -8940($fp)
	lw $t1, 0($t0)
	sw $t1, -8944($fp)
	li $t0, 35918
	sw $t0, -8948($fp)
	addi $t0, $fp, -884
	sw $t0, -8952($fp)
	li $t0, 9
	sw $t0, -8956($fp)
	lw $t0, -8956($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8960($fp)
	lw $t0, -8952($fp)
	lw $t1, -8960($fp)
	add $t0, $t0, $t1
	sw $t0, -8964($fp)
	lw $t0, -8948($fp)
	lw $t1, -8964($fp)
	sw $t0, 0($t1)
	lw $t0, -8964($fp)
	lw $t1, 0($t0)
	sw $t1, -8968($fp)
	li $t0, 34288
	sw $t0, -8972($fp)
	lw $t0, -8972($fp)
	sw $t0, -8976($fp)
	lw $t0, -8976($fp)
	sw $t0, -8980($fp)
	li $t0, 56808
	sw $t0, -8984($fp)
	lw $t0, -8984($fp)
	sw $t0, -8988($fp)
	lw $t0, -8988($fp)
	sw $t0, -8992($fp)
	li $t0, 34167
	sw $t0, -8996($fp)
	lw $t0, -8996($fp)
	sw $t0, -9000($fp)
	lw $t0, -9000($fp)
	sw $t0, -9004($fp)
	li $t0, 60550
	sw $t0, -9008($fp)
	lw $t0, -9008($fp)
	sw $t0, -9012($fp)
	lw $t0, -9012($fp)
	sw $t0, -9016($fp)
	li $t0, 39910
	sw $t0, -9020($fp)
	addi $t0, $fp, -924
	sw $t0, -9024($fp)
	li $t0, 0
	sw $t0, -9028($fp)
	lw $t0, -9028($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9032($fp)
	lw $t0, -9024($fp)
	lw $t1, -9032($fp)
	add $t0, $t0, $t1
	sw $t0, -9036($fp)
	lw $t0, -9020($fp)
	lw $t1, -9036($fp)
	sw $t0, 0($t1)
	lw $t0, -9036($fp)
	lw $t1, 0($t0)
	sw $t1, -9040($fp)
	li $t0, 1147
	sw $t0, -9044($fp)
	addi $t0, $fp, -924
	sw $t0, -9048($fp)
	li $t0, 1
	sw $t0, -9052($fp)
	lw $t0, -9052($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9056($fp)
	lw $t0, -9048($fp)
	lw $t1, -9056($fp)
	add $t0, $t0, $t1
	sw $t0, -9060($fp)
	lw $t0, -9044($fp)
	lw $t1, -9060($fp)
	sw $t0, 0($t1)
	lw $t0, -9060($fp)
	lw $t1, 0($t0)
	sw $t1, -9064($fp)
	li $t0, 63639
	sw $t0, -9068($fp)
	addi $t0, $fp, -924
	sw $t0, -9072($fp)
	li $t0, 2
	sw $t0, -9076($fp)
	lw $t0, -9076($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9080($fp)
	lw $t0, -9072($fp)
	lw $t1, -9080($fp)
	add $t0, $t0, $t1
	sw $t0, -9084($fp)
	lw $t0, -9068($fp)
	lw $t1, -9084($fp)
	sw $t0, 0($t1)
	lw $t0, -9084($fp)
	lw $t1, 0($t0)
	sw $t1, -9088($fp)
	li $t0, 48910
	sw $t0, -9092($fp)
	addi $t0, $fp, -924
	sw $t0, -9096($fp)
	li $t0, 3
	sw $t0, -9100($fp)
	lw $t0, -9100($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9104($fp)
	lw $t0, -9096($fp)
	lw $t1, -9104($fp)
	add $t0, $t0, $t1
	sw $t0, -9108($fp)
	lw $t0, -9092($fp)
	lw $t1, -9108($fp)
	sw $t0, 0($t1)
	lw $t0, -9108($fp)
	lw $t1, 0($t0)
	sw $t1, -9112($fp)
	li $t0, 56587
	sw $t0, -9116($fp)
	addi $t0, $fp, -924
	sw $t0, -9120($fp)
	li $t0, 4
	sw $t0, -9124($fp)
	lw $t0, -9124($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9128($fp)
	lw $t0, -9120($fp)
	lw $t1, -9128($fp)
	add $t0, $t0, $t1
	sw $t0, -9132($fp)
	lw $t0, -9116($fp)
	lw $t1, -9132($fp)
	sw $t0, 0($t1)
	lw $t0, -9132($fp)
	lw $t1, 0($t0)
	sw $t1, -9136($fp)
	li $t0, 7608
	sw $t0, -9140($fp)
	addi $t0, $fp, -924
	sw $t0, -9144($fp)
	li $t0, 5
	sw $t0, -9148($fp)
	lw $t0, -9148($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9152($fp)
	lw $t0, -9144($fp)
	lw $t1, -9152($fp)
	add $t0, $t0, $t1
	sw $t0, -9156($fp)
	lw $t0, -9140($fp)
	lw $t1, -9156($fp)
	sw $t0, 0($t1)
	lw $t0, -9156($fp)
	lw $t1, 0($t0)
	sw $t1, -9160($fp)
	li $t0, 13760
	sw $t0, -9164($fp)
	addi $t0, $fp, -924
	sw $t0, -9168($fp)
	li $t0, 6
	sw $t0, -9172($fp)
	lw $t0, -9172($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9176($fp)
	lw $t0, -9168($fp)
	lw $t1, -9176($fp)
	add $t0, $t0, $t1
	sw $t0, -9180($fp)
	lw $t0, -9164($fp)
	lw $t1, -9180($fp)
	sw $t0, 0($t1)
	lw $t0, -9180($fp)
	lw $t1, 0($t0)
	sw $t1, -9184($fp)
	li $t0, 18683
	sw $t0, -9188($fp)
	addi $t0, $fp, -924
	sw $t0, -9192($fp)
	li $t0, 7
	sw $t0, -9196($fp)
	lw $t0, -9196($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9200($fp)
	lw $t0, -9192($fp)
	lw $t1, -9200($fp)
	add $t0, $t0, $t1
	sw $t0, -9204($fp)
	lw $t0, -9188($fp)
	lw $t1, -9204($fp)
	sw $t0, 0($t1)
	lw $t0, -9204($fp)
	lw $t1, 0($t0)
	sw $t1, -9208($fp)
	li $t0, 64302
	sw $t0, -9212($fp)
	addi $t0, $fp, -924
	sw $t0, -9216($fp)
	li $t0, 8
	sw $t0, -9220($fp)
	lw $t0, -9220($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9224($fp)
	lw $t0, -9216($fp)
	lw $t1, -9224($fp)
	add $t0, $t0, $t1
	sw $t0, -9228($fp)
	lw $t0, -9212($fp)
	lw $t1, -9228($fp)
	sw $t0, 0($t1)
	lw $t0, -9228($fp)
	lw $t1, 0($t0)
	sw $t1, -9232($fp)
	li $t0, 61400
	sw $t0, -9236($fp)
	addi $t0, $fp, -924
	sw $t0, -9240($fp)
	li $t0, 9
	sw $t0, -9244($fp)
	lw $t0, -9244($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9248($fp)
	lw $t0, -9240($fp)
	lw $t1, -9248($fp)
	add $t0, $t0, $t1
	sw $t0, -9252($fp)
	lw $t0, -9236($fp)
	lw $t1, -9252($fp)
	sw $t0, 0($t1)
	lw $t0, -9252($fp)
	lw $t1, 0($t0)
	sw $t1, -9256($fp)
	li $t0, 27684
	sw $t0, -9260($fp)
	lw $t0, -9260($fp)
	sw $t0, -9264($fp)
	lw $t0, -9264($fp)
	sw $t0, -9268($fp)
	li $t0, 46004
	sw $t0, -9272($fp)
	lw $t0, -9272($fp)
	sw $t0, -9276($fp)
	lw $t0, -9276($fp)
	sw $t0, -9280($fp)
	li $t0, 380
	sw $t0, -9284($fp)
	lw $t0, -9284($fp)
	sw $t0, -9288($fp)
	lw $t0, -9288($fp)
	sw $t0, -9292($fp)
	li $t0, 55629
	sw $t0, -9296($fp)
	lw $t0, -9296($fp)
	sw $t0, -9300($fp)
	lw $t0, -9300($fp)
	sw $t0, -9304($fp)
	li $t0, 10567
	sw $t0, -9308($fp)
	lw $t0, -9308($fp)
	sw $t0, -9312($fp)
	lw $t0, -9312($fp)
	sw $t0, -9316($fp)
	li $t0, 42268
	sw $t0, -9320($fp)
	lw $t0, -9320($fp)
	sw $t0, -9324($fp)
	lw $t0, -9324($fp)
	sw $t0, -9328($fp)
	li $t0, 42884
	sw $t0, -9332($fp)
	lw $t0, -9332($fp)
	sw $t0, -9336($fp)
	lw $t0, -9336($fp)
	sw $t0, -9340($fp)
	li $t0, 48475
	sw $t0, -9344($fp)
	lw $t0, -9344($fp)
	sw $t0, -9348($fp)
	lw $t0, -9348($fp)
	sw $t0, -9352($fp)
	li $t0, 37349
	sw $t0, -9356($fp)
	lw $t0, -9356($fp)
	sw $t0, -9360($fp)
	lw $t0, -9360($fp)
	sw $t0, -9364($fp)
	li $t0, 16321
	sw $t0, -9368($fp)
	addi $t0, $fp, -928
	sw $t0, -9372($fp)
	li $t0, 0
	sw $t0, -9376($fp)
	lw $t0, -9376($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9380($fp)
	lw $t0, -9372($fp)
	lw $t1, -9380($fp)
	add $t0, $t0, $t1
	sw $t0, -9384($fp)
	lw $t0, -9368($fp)
	lw $t1, -9384($fp)
	sw $t0, 0($t1)
	lw $t0, -9384($fp)
	lw $t1, 0($t0)
	sw $t1, -9388($fp)
	li $t0, 20297
	sw $t0, -9392($fp)
	lw $t0, -9392($fp)
	sw $t0, -9396($fp)
	lw $t0, -9396($fp)
	sw $t0, -9400($fp)
	li $t0, 20243
	sw $t0, -9404($fp)
	lw $t0, -9404($fp)
	sw $t0, -9408($fp)
	lw $t0, -9408($fp)
	sw $t0, -9412($fp)
	li $t0, 42771
	sw $t0, -9416($fp)
	lw $t0, -9416($fp)
	sw $t0, -9420($fp)
	lw $t0, -9420($fp)
	sw $t0, -9424($fp)
	li $t0, 19231
	sw $t0, -9428($fp)
	lw $t0, -9428($fp)
	sw $t0, -9432($fp)
	lw $t0, -9432($fp)
	sw $t0, -9436($fp)
	li $t0, 11928
	sw $t0, -9440($fp)
	lw $t0, -9440($fp)
	sw $t0, -9444($fp)
	lw $t0, -9444($fp)
	sw $t0, -9448($fp)
	li $t0, 27825
	sw $t0, -9452($fp)
	lw $t0, -9452($fp)
	sw $t0, -9456($fp)
	lw $t0, -9456($fp)
	sw $t0, -9460($fp)
	li $t0, 55149
	sw $t0, -9464($fp)
	lw $t0, -9464($fp)
	sw $t0, -9468($fp)
	lw $t0, -9468($fp)
	sw $t0, -9472($fp)
	li $t0, 46217
	sw $t0, -9476($fp)
	lw $t0, -9476($fp)
	sw $t0, -9480($fp)
	lw $t0, -9480($fp)
	sw $t0, -9484($fp)
	li $t0, 19097
	sw $t0, -9488($fp)
	lw $t0, -9488($fp)
	sw $t0, -9492($fp)
	lw $t0, -9492($fp)
	sw $t0, -9496($fp)
	li $t0, 23781
	sw $t0, -9500($fp)
	lw $t0, -9500($fp)
	sw $t0, -9504($fp)
	lw $t0, -9504($fp)
	sw $t0, -9508($fp)
	li $t0, 41231
	sw $t0, -9512($fp)
	lw $t0, -9512($fp)
	sw $t0, -9516($fp)
	lw $t0, -9516($fp)
	sw $t0, -9520($fp)
	li $t0, 59007
	sw $t0, -9524($fp)
	lw $t0, -9524($fp)
	sw $t0, -9528($fp)
	lw $t0, -9528($fp)
	sw $t0, -9532($fp)
	li $t0, 24928
	sw $t0, -9536($fp)
	addi $t0, $fp, -944
	sw $t0, -9540($fp)
	li $t0, 0
	sw $t0, -9544($fp)
	lw $t0, -9544($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9548($fp)
	lw $t0, -9540($fp)
	lw $t1, -9548($fp)
	add $t0, $t0, $t1
	sw $t0, -9552($fp)
	lw $t0, -9536($fp)
	lw $t1, -9552($fp)
	sw $t0, 0($t1)
	lw $t0, -9552($fp)
	lw $t1, 0($t0)
	sw $t1, -9556($fp)
	li $t0, 39334
	sw $t0, -9560($fp)
	addi $t0, $fp, -944
	sw $t0, -9564($fp)
	li $t0, 1
	sw $t0, -9568($fp)
	lw $t0, -9568($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9572($fp)
	lw $t0, -9564($fp)
	lw $t1, -9572($fp)
	add $t0, $t0, $t1
	sw $t0, -9576($fp)
	lw $t0, -9560($fp)
	lw $t1, -9576($fp)
	sw $t0, 0($t1)
	lw $t0, -9576($fp)
	lw $t1, 0($t0)
	sw $t1, -9580($fp)
	li $t0, 42382
	sw $t0, -9584($fp)
	addi $t0, $fp, -944
	sw $t0, -9588($fp)
	li $t0, 2
	sw $t0, -9592($fp)
	lw $t0, -9592($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9596($fp)
	lw $t0, -9588($fp)
	lw $t1, -9596($fp)
	add $t0, $t0, $t1
	sw $t0, -9600($fp)
	lw $t0, -9584($fp)
	lw $t1, -9600($fp)
	sw $t0, 0($t1)
	lw $t0, -9600($fp)
	lw $t1, 0($t0)
	sw $t1, -9604($fp)
	li $t0, 15979
	sw $t0, -9608($fp)
	addi $t0, $fp, -944
	sw $t0, -9612($fp)
	li $t0, 3
	sw $t0, -9616($fp)
	lw $t0, -9616($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9620($fp)
	lw $t0, -9612($fp)
	lw $t1, -9620($fp)
	add $t0, $t0, $t1
	sw $t0, -9624($fp)
	lw $t0, -9608($fp)
	lw $t1, -9624($fp)
	sw $t0, 0($t1)
	lw $t0, -9624($fp)
	lw $t1, 0($t0)
	sw $t1, -9628($fp)
	li $t0, 46943
	sw $t0, -9632($fp)
	addi $t0, $fp, -960
	sw $t0, -9636($fp)
	li $t0, 0
	sw $t0, -9640($fp)
	lw $t0, -9640($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9644($fp)
	lw $t0, -9636($fp)
	lw $t1, -9644($fp)
	add $t0, $t0, $t1
	sw $t0, -9648($fp)
	lw $t0, -9632($fp)
	lw $t1, -9648($fp)
	sw $t0, 0($t1)
	lw $t0, -9648($fp)
	lw $t1, 0($t0)
	sw $t1, -9652($fp)
	li $t0, 56142
	sw $t0, -9656($fp)
	addi $t0, $fp, -960
	sw $t0, -9660($fp)
	li $t0, 1
	sw $t0, -9664($fp)
	lw $t0, -9664($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9668($fp)
	lw $t0, -9660($fp)
	lw $t1, -9668($fp)
	add $t0, $t0, $t1
	sw $t0, -9672($fp)
	lw $t0, -9656($fp)
	lw $t1, -9672($fp)
	sw $t0, 0($t1)
	lw $t0, -9672($fp)
	lw $t1, 0($t0)
	sw $t1, -9676($fp)
	li $t0, 34662
	sw $t0, -9680($fp)
	addi $t0, $fp, -960
	sw $t0, -9684($fp)
	li $t0, 2
	sw $t0, -9688($fp)
	lw $t0, -9688($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9692($fp)
	lw $t0, -9684($fp)
	lw $t1, -9692($fp)
	add $t0, $t0, $t1
	sw $t0, -9696($fp)
	lw $t0, -9680($fp)
	lw $t1, -9696($fp)
	sw $t0, 0($t1)
	lw $t0, -9696($fp)
	lw $t1, 0($t0)
	sw $t1, -9700($fp)
	li $t0, 45709
	sw $t0, -9704($fp)
	addi $t0, $fp, -960
	sw $t0, -9708($fp)
	li $t0, 3
	sw $t0, -9712($fp)
	lw $t0, -9712($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9716($fp)
	lw $t0, -9708($fp)
	lw $t1, -9716($fp)
	add $t0, $t0, $t1
	sw $t0, -9720($fp)
	lw $t0, -9704($fp)
	lw $t1, -9720($fp)
	sw $t0, 0($t1)
	lw $t0, -9720($fp)
	lw $t1, 0($t0)
	sw $t1, -9724($fp)
	li $t0, 52006
	sw $t0, -9728($fp)
	lw $t0, -9728($fp)
	sw $t0, -9732($fp)
	lw $t0, -9732($fp)
	sw $t0, -9736($fp)
	li $t0, 62346
	sw $t0, -9740($fp)
	lw $t0, -9740($fp)
	sw $t0, -9744($fp)
	lw $t0, -9744($fp)
	sw $t0, -9748($fp)
	li $t0, 26177
	sw $t0, -9752($fp)
	lw $t0, -9752($fp)
	sw $t0, -9756($fp)
	lw $t0, -9756($fp)
	sw $t0, -9760($fp)
	li $t0, 52386
	sw $t0, -9764($fp)
	lw $t0, -9764($fp)
	sw $t0, -9768($fp)
	lw $t0, -9768($fp)
	sw $t0, -9772($fp)
	li $t0, 52439
	sw $t0, -9776($fp)
	addi $t0, $fp, -976
	sw $t0, -9780($fp)
	li $t0, 0
	sw $t0, -9784($fp)
	lw $t0, -9784($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9788($fp)
	lw $t0, -9780($fp)
	lw $t1, -9788($fp)
	add $t0, $t0, $t1
	sw $t0, -9792($fp)
	lw $t0, -9776($fp)
	lw $t1, -9792($fp)
	sw $t0, 0($t1)
	lw $t0, -9792($fp)
	lw $t1, 0($t0)
	sw $t1, -9796($fp)
	li $t0, 36744
	sw $t0, -9800($fp)
	addi $t0, $fp, -976
	sw $t0, -9804($fp)
	li $t0, 1
	sw $t0, -9808($fp)
	lw $t0, -9808($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9812($fp)
	lw $t0, -9804($fp)
	lw $t1, -9812($fp)
	add $t0, $t0, $t1
	sw $t0, -9816($fp)
	lw $t0, -9800($fp)
	lw $t1, -9816($fp)
	sw $t0, 0($t1)
	lw $t0, -9816($fp)
	lw $t1, 0($t0)
	sw $t1, -9820($fp)
	li $t0, 29119
	sw $t0, -9824($fp)
	addi $t0, $fp, -976
	sw $t0, -9828($fp)
	li $t0, 2
	sw $t0, -9832($fp)
	lw $t0, -9832($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9836($fp)
	lw $t0, -9828($fp)
	lw $t1, -9836($fp)
	add $t0, $t0, $t1
	sw $t0, -9840($fp)
	lw $t0, -9824($fp)
	lw $t1, -9840($fp)
	sw $t0, 0($t1)
	lw $t0, -9840($fp)
	lw $t1, 0($t0)
	sw $t1, -9844($fp)
	li $t0, 29787
	sw $t0, -9848($fp)
	addi $t0, $fp, -976
	sw $t0, -9852($fp)
	li $t0, 3
	sw $t0, -9856($fp)
	lw $t0, -9856($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9860($fp)
	lw $t0, -9852($fp)
	lw $t1, -9860($fp)
	add $t0, $t0, $t1
	sw $t0, -9864($fp)
	lw $t0, -9848($fp)
	lw $t1, -9864($fp)
	sw $t0, 0($t1)
	lw $t0, -9864($fp)
	lw $t1, 0($t0)
	sw $t1, -9868($fp)
	li $t0, 19684
	sw $t0, -9872($fp)
	lw $t0, -9872($fp)
	sw $t0, -9876($fp)
	lw $t0, -9876($fp)
	sw $t0, -9880($fp)
	li $t0, 932
	sw $t0, -9884($fp)
	lw $t0, -9884($fp)
	sw $t0, -9888($fp)
	lw $t0, -9888($fp)
	sw $t0, -9892($fp)
	li $t0, 46109
	sw $t0, -9896($fp)
	lw $t0, -9896($fp)
	sw $t0, -9900($fp)
	lw $t0, -9900($fp)
	sw $t0, -9904($fp)
	li $t0, 39981
	sw $t0, -9908($fp)
	lw $t0, -9908($fp)
	sw $t0, -9912($fp)
	lw $t0, -9912($fp)
	sw $t0, -9916($fp)
	li $t0, 21175
	sw $t0, -9920($fp)
	addi $t0, $fp, -1004
	sw $t0, -9924($fp)
	li $t0, 0
	sw $t0, -9928($fp)
	lw $t0, -9928($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9932($fp)
	lw $t0, -9924($fp)
	lw $t1, -9932($fp)
	add $t0, $t0, $t1
	sw $t0, -9936($fp)
	lw $t0, -9920($fp)
	lw $t1, -9936($fp)
	sw $t0, 0($t1)
	lw $t0, -9936($fp)
	lw $t1, 0($t0)
	sw $t1, -9940($fp)
	li $t0, 23344
	sw $t0, -9944($fp)
	addi $t0, $fp, -1004
	sw $t0, -9948($fp)
	li $t0, 1
	sw $t0, -9952($fp)
	lw $t0, -9952($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9956($fp)
	lw $t0, -9948($fp)
	lw $t1, -9956($fp)
	add $t0, $t0, $t1
	sw $t0, -9960($fp)
	lw $t0, -9944($fp)
	lw $t1, -9960($fp)
	sw $t0, 0($t1)
	lw $t0, -9960($fp)
	lw $t1, 0($t0)
	sw $t1, -9964($fp)
	li $t0, 59213
	sw $t0, -9968($fp)
	addi $t0, $fp, -1004
	sw $t0, -9972($fp)
	li $t0, 2
	sw $t0, -9976($fp)
	lw $t0, -9976($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9980($fp)
	lw $t0, -9972($fp)
	lw $t1, -9980($fp)
	add $t0, $t0, $t1
	sw $t0, -9984($fp)
	lw $t0, -9968($fp)
	lw $t1, -9984($fp)
	sw $t0, 0($t1)
	lw $t0, -9984($fp)
	lw $t1, 0($t0)
	sw $t1, -9988($fp)
	li $t0, 33104
	sw $t0, -9992($fp)
	addi $t0, $fp, -1004
	sw $t0, -9996($fp)
	li $t0, 3
	sw $t0, -10000($fp)
	lw $t0, -10000($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10004($fp)
	lw $t0, -9996($fp)
	lw $t1, -10004($fp)
	add $t0, $t0, $t1
	sw $t0, -10008($fp)
	lw $t0, -9992($fp)
	lw $t1, -10008($fp)
	sw $t0, 0($t1)
	lw $t0, -10008($fp)
	lw $t1, 0($t0)
	sw $t1, -10012($fp)
	li $t0, 51169
	sw $t0, -10016($fp)
	addi $t0, $fp, -1004
	sw $t0, -10020($fp)
	li $t0, 4
	sw $t0, -10024($fp)
	lw $t0, -10024($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10028($fp)
	lw $t0, -10020($fp)
	lw $t1, -10028($fp)
	add $t0, $t0, $t1
	sw $t0, -10032($fp)
	lw $t0, -10016($fp)
	lw $t1, -10032($fp)
	sw $t0, 0($t1)
	lw $t0, -10032($fp)
	lw $t1, 0($t0)
	sw $t1, -10036($fp)
	li $t0, 48826
	sw $t0, -10040($fp)
	addi $t0, $fp, -1004
	sw $t0, -10044($fp)
	li $t0, 5
	sw $t0, -10048($fp)
	lw $t0, -10048($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10052($fp)
	lw $t0, -10044($fp)
	lw $t1, -10052($fp)
	add $t0, $t0, $t1
	sw $t0, -10056($fp)
	lw $t0, -10040($fp)
	lw $t1, -10056($fp)
	sw $t0, 0($t1)
	lw $t0, -10056($fp)
	lw $t1, 0($t0)
	sw $t1, -10060($fp)
	li $t0, 13785
	sw $t0, -10064($fp)
	addi $t0, $fp, -1004
	sw $t0, -10068($fp)
	li $t0, 6
	sw $t0, -10072($fp)
	lw $t0, -10072($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10076($fp)
	lw $t0, -10068($fp)
	lw $t1, -10076($fp)
	add $t0, $t0, $t1
	sw $t0, -10080($fp)
	lw $t0, -10064($fp)
	lw $t1, -10080($fp)
	sw $t0, 0($t1)
	lw $t0, -10080($fp)
	lw $t1, 0($t0)
	sw $t1, -10084($fp)
	li $t0, 4730
	sw $t0, -10088($fp)
	lw $t0, -10088($fp)
	sw $t0, -10092($fp)
	lw $t0, -10092($fp)
	sw $t0, -10096($fp)
	li $t0, 7071
	sw $t0, -10100($fp)
	addi $t0, $fp, -1020
	sw $t0, -10104($fp)
	li $t0, 0
	sw $t0, -10108($fp)
	lw $t0, -10108($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10112($fp)
	lw $t0, -10104($fp)
	lw $t1, -10112($fp)
	add $t0, $t0, $t1
	sw $t0, -10116($fp)
	lw $t0, -10100($fp)
	lw $t1, -10116($fp)
	sw $t0, 0($t1)
	lw $t0, -10116($fp)
	lw $t1, 0($t0)
	sw $t1, -10120($fp)
	li $t0, 55016
	sw $t0, -10124($fp)
	addi $t0, $fp, -1020
	sw $t0, -10128($fp)
	li $t0, 1
	sw $t0, -10132($fp)
	lw $t0, -10132($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10136($fp)
	lw $t0, -10128($fp)
	lw $t1, -10136($fp)
	add $t0, $t0, $t1
	sw $t0, -10140($fp)
	lw $t0, -10124($fp)
	lw $t1, -10140($fp)
	sw $t0, 0($t1)
	lw $t0, -10140($fp)
	lw $t1, 0($t0)
	sw $t1, -10144($fp)
	li $t0, 63738
	sw $t0, -10148($fp)
	addi $t0, $fp, -1020
	sw $t0, -10152($fp)
	li $t0, 2
	sw $t0, -10156($fp)
	lw $t0, -10156($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10160($fp)
	lw $t0, -10152($fp)
	lw $t1, -10160($fp)
	add $t0, $t0, $t1
	sw $t0, -10164($fp)
	lw $t0, -10148($fp)
	lw $t1, -10164($fp)
	sw $t0, 0($t1)
	lw $t0, -10164($fp)
	lw $t1, 0($t0)
	sw $t1, -10168($fp)
	li $t0, 31999
	sw $t0, -10172($fp)
	addi $t0, $fp, -1020
	sw $t0, -10176($fp)
	li $t0, 3
	sw $t0, -10180($fp)
	lw $t0, -10180($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10184($fp)
	lw $t0, -10176($fp)
	lw $t1, -10184($fp)
	add $t0, $t0, $t1
	sw $t0, -10188($fp)
	lw $t0, -10172($fp)
	lw $t1, -10188($fp)
	sw $t0, 0($t1)
	lw $t0, -10188($fp)
	lw $t1, 0($t0)
	sw $t1, -10192($fp)
	li $t0, 28815
	sw $t0, -10196($fp)
	lw $t0, -10196($fp)
	sw $t0, -10200($fp)
	lw $t0, -10200($fp)
	sw $t0, -10204($fp)
	li $t0, 40584
	sw $t0, -10208($fp)
	lw $t0, -10208($fp)
	sw $t0, -10212($fp)
	lw $t0, -10212($fp)
	sw $t0, -10216($fp)
	li $t0, 47978
	sw $t0, -10220($fp)
	lw $t0, -10220($fp)
	sw $t0, -10224($fp)
	lw $t0, -10224($fp)
	sw $t0, -10228($fp)
	li $t0, 10222
	sw $t0, -10232($fp)
	lw $t0, -10232($fp)
	sw $t0, -10236($fp)
	lw $t0, -10236($fp)
	sw $t0, -10240($fp)
	li $t0, 31190
	sw $t0, -10244($fp)
	lw $t0, -10244($fp)
	sw $t0, -10248($fp)
	lw $t0, -10248($fp)
	sw $t0, -10252($fp)
	li $t0, 17105
	sw $t0, -10256($fp)
	lw $t0, -10256($fp)
	sw $t0, -10260($fp)
	lw $t0, -10260($fp)
	sw $t0, -10264($fp)
	li $t0, 55931
	sw $t0, -10268($fp)
	lw $t0, -10268($fp)
	sw $t0, -10272($fp)
	lw $t0, -10272($fp)
	sw $t0, -10276($fp)
	li $t0, 17661
	sw $t0, -10280($fp)
	lw $t0, -10280($fp)
	sw $t0, -10284($fp)
	lw $t0, -10284($fp)
	sw $t0, -10288($fp)
	li $t0, 13915
	sw $t0, -10292($fp)
	lw $t0, -10292($fp)
	sw $t0, -10296($fp)
	lw $t0, -10296($fp)
	sw $t0, -10300($fp)
	li $t0, 16573
	sw $t0, -10304($fp)
	addi $t0, $fp, -1052
	sw $t0, -10308($fp)
	li $t0, 0
	sw $t0, -10312($fp)
	lw $t0, -10312($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10316($fp)
	lw $t0, -10308($fp)
	lw $t1, -10316($fp)
	add $t0, $t0, $t1
	sw $t0, -10320($fp)
	lw $t0, -10304($fp)
	lw $t1, -10320($fp)
	sw $t0, 0($t1)
	lw $t0, -10320($fp)
	lw $t1, 0($t0)
	sw $t1, -10324($fp)
	li $t0, 4511
	sw $t0, -10328($fp)
	addi $t0, $fp, -1052
	sw $t0, -10332($fp)
	li $t0, 1
	sw $t0, -10336($fp)
	lw $t0, -10336($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10340($fp)
	lw $t0, -10332($fp)
	lw $t1, -10340($fp)
	add $t0, $t0, $t1
	sw $t0, -10344($fp)
	lw $t0, -10328($fp)
	lw $t1, -10344($fp)
	sw $t0, 0($t1)
	lw $t0, -10344($fp)
	lw $t1, 0($t0)
	sw $t1, -10348($fp)
	li $t0, 819
	sw $t0, -10352($fp)
	addi $t0, $fp, -1052
	sw $t0, -10356($fp)
	li $t0, 2
	sw $t0, -10360($fp)
	lw $t0, -10360($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10364($fp)
	lw $t0, -10356($fp)
	lw $t1, -10364($fp)
	add $t0, $t0, $t1
	sw $t0, -10368($fp)
	lw $t0, -10352($fp)
	lw $t1, -10368($fp)
	sw $t0, 0($t1)
	lw $t0, -10368($fp)
	lw $t1, 0($t0)
	sw $t1, -10372($fp)
	li $t0, 53317
	sw $t0, -10376($fp)
	addi $t0, $fp, -1052
	sw $t0, -10380($fp)
	li $t0, 3
	sw $t0, -10384($fp)
	lw $t0, -10384($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10388($fp)
	lw $t0, -10380($fp)
	lw $t1, -10388($fp)
	add $t0, $t0, $t1
	sw $t0, -10392($fp)
	lw $t0, -10376($fp)
	lw $t1, -10392($fp)
	sw $t0, 0($t1)
	lw $t0, -10392($fp)
	lw $t1, 0($t0)
	sw $t1, -10396($fp)
	li $t0, 33630
	sw $t0, -10400($fp)
	addi $t0, $fp, -1052
	sw $t0, -10404($fp)
	li $t0, 4
	sw $t0, -10408($fp)
	lw $t0, -10408($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10412($fp)
	lw $t0, -10404($fp)
	lw $t1, -10412($fp)
	add $t0, $t0, $t1
	sw $t0, -10416($fp)
	lw $t0, -10400($fp)
	lw $t1, -10416($fp)
	sw $t0, 0($t1)
	lw $t0, -10416($fp)
	lw $t1, 0($t0)
	sw $t1, -10420($fp)
	li $t0, 30606
	sw $t0, -10424($fp)
	addi $t0, $fp, -1052
	sw $t0, -10428($fp)
	li $t0, 5
	sw $t0, -10432($fp)
	lw $t0, -10432($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10436($fp)
	lw $t0, -10428($fp)
	lw $t1, -10436($fp)
	add $t0, $t0, $t1
	sw $t0, -10440($fp)
	lw $t0, -10424($fp)
	lw $t1, -10440($fp)
	sw $t0, 0($t1)
	lw $t0, -10440($fp)
	lw $t1, 0($t0)
	sw $t1, -10444($fp)
	li $t0, 7465
	sw $t0, -10448($fp)
	addi $t0, $fp, -1052
	sw $t0, -10452($fp)
	li $t0, 6
	sw $t0, -10456($fp)
	lw $t0, -10456($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10460($fp)
	lw $t0, -10452($fp)
	lw $t1, -10460($fp)
	add $t0, $t0, $t1
	sw $t0, -10464($fp)
	lw $t0, -10448($fp)
	lw $t1, -10464($fp)
	sw $t0, 0($t1)
	lw $t0, -10464($fp)
	lw $t1, 0($t0)
	sw $t1, -10468($fp)
	li $t0, 34562
	sw $t0, -10472($fp)
	addi $t0, $fp, -1052
	sw $t0, -10476($fp)
	li $t0, 7
	sw $t0, -10480($fp)
	lw $t0, -10480($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10484($fp)
	lw $t0, -10476($fp)
	lw $t1, -10484($fp)
	add $t0, $t0, $t1
	sw $t0, -10488($fp)
	lw $t0, -10472($fp)
	lw $t1, -10488($fp)
	sw $t0, 0($t1)
	lw $t0, -10488($fp)
	lw $t1, 0($t0)
	sw $t1, -10492($fp)
	li $t0, 11179
	sw $t0, -10496($fp)
	lw $t0, -10496($fp)
	sw $t0, -10500($fp)
	lw $t0, -10500($fp)
	sw $t0, -10504($fp)
	li $t0, 47447
	sw $t0, -10508($fp)
	addi $t0, $fp, -1084
	sw $t0, -10512($fp)
	li $t0, 0
	sw $t0, -10516($fp)
	lw $t0, -10516($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10520($fp)
	lw $t0, -10512($fp)
	lw $t1, -10520($fp)
	add $t0, $t0, $t1
	sw $t0, -10524($fp)
	lw $t0, -10508($fp)
	lw $t1, -10524($fp)
	sw $t0, 0($t1)
	lw $t0, -10524($fp)
	lw $t1, 0($t0)
	sw $t1, -10528($fp)
	li $t0, 55738
	sw $t0, -10532($fp)
	addi $t0, $fp, -1084
	sw $t0, -10536($fp)
	li $t0, 1
	sw $t0, -10540($fp)
	lw $t0, -10540($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10544($fp)
	lw $t0, -10536($fp)
	lw $t1, -10544($fp)
	add $t0, $t0, $t1
	sw $t0, -10548($fp)
	lw $t0, -10532($fp)
	lw $t1, -10548($fp)
	sw $t0, 0($t1)
	lw $t0, -10548($fp)
	lw $t1, 0($t0)
	sw $t1, -10552($fp)
	li $t0, 34523
	sw $t0, -10556($fp)
	addi $t0, $fp, -1084
	sw $t0, -10560($fp)
	li $t0, 2
	sw $t0, -10564($fp)
	lw $t0, -10564($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10568($fp)
	lw $t0, -10560($fp)
	lw $t1, -10568($fp)
	add $t0, $t0, $t1
	sw $t0, -10572($fp)
	lw $t0, -10556($fp)
	lw $t1, -10572($fp)
	sw $t0, 0($t1)
	lw $t0, -10572($fp)
	lw $t1, 0($t0)
	sw $t1, -10576($fp)
	li $t0, 41124
	sw $t0, -10580($fp)
	addi $t0, $fp, -1084
	sw $t0, -10584($fp)
	li $t0, 3
	sw $t0, -10588($fp)
	lw $t0, -10588($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10592($fp)
	lw $t0, -10584($fp)
	lw $t1, -10592($fp)
	add $t0, $t0, $t1
	sw $t0, -10596($fp)
	lw $t0, -10580($fp)
	lw $t1, -10596($fp)
	sw $t0, 0($t1)
	lw $t0, -10596($fp)
	lw $t1, 0($t0)
	sw $t1, -10600($fp)
	li $t0, 23306
	sw $t0, -10604($fp)
	addi $t0, $fp, -1084
	sw $t0, -10608($fp)
	li $t0, 4
	sw $t0, -10612($fp)
	lw $t0, -10612($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10616($fp)
	lw $t0, -10608($fp)
	lw $t1, -10616($fp)
	add $t0, $t0, $t1
	sw $t0, -10620($fp)
	lw $t0, -10604($fp)
	lw $t1, -10620($fp)
	sw $t0, 0($t1)
	lw $t0, -10620($fp)
	lw $t1, 0($t0)
	sw $t1, -10624($fp)
	li $t0, 20156
	sw $t0, -10628($fp)
	addi $t0, $fp, -1084
	sw $t0, -10632($fp)
	li $t0, 5
	sw $t0, -10636($fp)
	lw $t0, -10636($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10640($fp)
	lw $t0, -10632($fp)
	lw $t1, -10640($fp)
	add $t0, $t0, $t1
	sw $t0, -10644($fp)
	lw $t0, -10628($fp)
	lw $t1, -10644($fp)
	sw $t0, 0($t1)
	lw $t0, -10644($fp)
	lw $t1, 0($t0)
	sw $t1, -10648($fp)
	li $t0, 24414
	sw $t0, -10652($fp)
	addi $t0, $fp, -1084
	sw $t0, -10656($fp)
	li $t0, 6
	sw $t0, -10660($fp)
	lw $t0, -10660($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10664($fp)
	lw $t0, -10656($fp)
	lw $t1, -10664($fp)
	add $t0, $t0, $t1
	sw $t0, -10668($fp)
	lw $t0, -10652($fp)
	lw $t1, -10668($fp)
	sw $t0, 0($t1)
	lw $t0, -10668($fp)
	lw $t1, 0($t0)
	sw $t1, -10672($fp)
	li $t0, 37091
	sw $t0, -10676($fp)
	addi $t0, $fp, -1084
	sw $t0, -10680($fp)
	li $t0, 7
	sw $t0, -10684($fp)
	lw $t0, -10684($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10688($fp)
	lw $t0, -10680($fp)
	lw $t1, -10688($fp)
	add $t0, $t0, $t1
	sw $t0, -10692($fp)
	lw $t0, -10676($fp)
	lw $t1, -10692($fp)
	sw $t0, 0($t1)
	lw $t0, -10692($fp)
	lw $t1, 0($t0)
	sw $t1, -10696($fp)
	li $t0, 24887
	sw $t0, -10700($fp)
	lw $t0, -10700($fp)
	sw $t0, -10704($fp)
	lw $t0, -10704($fp)
	sw $t0, -10708($fp)
	li $t0, 31486
	sw $t0, -10712($fp)
	lw $t0, -10712($fp)
	sw $t0, -10716($fp)
	lw $t0, -10716($fp)
	sw $t0, -10720($fp)
	li $t0, 26571
	sw $t0, -10724($fp)
	addi $t0, $fp, -1120
	sw $t0, -10728($fp)
	li $t0, 0
	sw $t0, -10732($fp)
	lw $t0, -10732($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10736($fp)
	lw $t0, -10728($fp)
	lw $t1, -10736($fp)
	add $t0, $t0, $t1
	sw $t0, -10740($fp)
	lw $t0, -10724($fp)
	lw $t1, -10740($fp)
	sw $t0, 0($t1)
	lw $t0, -10740($fp)
	lw $t1, 0($t0)
	sw $t1, -10744($fp)
	li $t0, 23089
	sw $t0, -10748($fp)
	addi $t0, $fp, -1120
	sw $t0, -10752($fp)
	li $t0, 1
	sw $t0, -10756($fp)
	lw $t0, -10756($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10760($fp)
	lw $t0, -10752($fp)
	lw $t1, -10760($fp)
	add $t0, $t0, $t1
	sw $t0, -10764($fp)
	lw $t0, -10748($fp)
	lw $t1, -10764($fp)
	sw $t0, 0($t1)
	lw $t0, -10764($fp)
	lw $t1, 0($t0)
	sw $t1, -10768($fp)
	li $t0, 63485
	sw $t0, -10772($fp)
	addi $t0, $fp, -1120
	sw $t0, -10776($fp)
	li $t0, 2
	sw $t0, -10780($fp)
	lw $t0, -10780($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10784($fp)
	lw $t0, -10776($fp)
	lw $t1, -10784($fp)
	add $t0, $t0, $t1
	sw $t0, -10788($fp)
	lw $t0, -10772($fp)
	lw $t1, -10788($fp)
	sw $t0, 0($t1)
	lw $t0, -10788($fp)
	lw $t1, 0($t0)
	sw $t1, -10792($fp)
	li $t0, 55386
	sw $t0, -10796($fp)
	addi $t0, $fp, -1120
	sw $t0, -10800($fp)
	li $t0, 3
	sw $t0, -10804($fp)
	lw $t0, -10804($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10808($fp)
	lw $t0, -10800($fp)
	lw $t1, -10808($fp)
	add $t0, $t0, $t1
	sw $t0, -10812($fp)
	lw $t0, -10796($fp)
	lw $t1, -10812($fp)
	sw $t0, 0($t1)
	lw $t0, -10812($fp)
	lw $t1, 0($t0)
	sw $t1, -10816($fp)
	li $t0, 63673
	sw $t0, -10820($fp)
	addi $t0, $fp, -1120
	sw $t0, -10824($fp)
	li $t0, 4
	sw $t0, -10828($fp)
	lw $t0, -10828($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10832($fp)
	lw $t0, -10824($fp)
	lw $t1, -10832($fp)
	add $t0, $t0, $t1
	sw $t0, -10836($fp)
	lw $t0, -10820($fp)
	lw $t1, -10836($fp)
	sw $t0, 0($t1)
	lw $t0, -10836($fp)
	lw $t1, 0($t0)
	sw $t1, -10840($fp)
	li $t0, 45928
	sw $t0, -10844($fp)
	addi $t0, $fp, -1120
	sw $t0, -10848($fp)
	li $t0, 5
	sw $t0, -10852($fp)
	lw $t0, -10852($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10856($fp)
	lw $t0, -10848($fp)
	lw $t1, -10856($fp)
	add $t0, $t0, $t1
	sw $t0, -10860($fp)
	lw $t0, -10844($fp)
	lw $t1, -10860($fp)
	sw $t0, 0($t1)
	lw $t0, -10860($fp)
	lw $t1, 0($t0)
	sw $t1, -10864($fp)
	li $t0, 72
	sw $t0, -10868($fp)
	addi $t0, $fp, -1120
	sw $t0, -10872($fp)
	li $t0, 6
	sw $t0, -10876($fp)
	lw $t0, -10876($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10880($fp)
	lw $t0, -10872($fp)
	lw $t1, -10880($fp)
	add $t0, $t0, $t1
	sw $t0, -10884($fp)
	lw $t0, -10868($fp)
	lw $t1, -10884($fp)
	sw $t0, 0($t1)
	lw $t0, -10884($fp)
	lw $t1, 0($t0)
	sw $t1, -10888($fp)
	li $t0, 29327
	sw $t0, -10892($fp)
	addi $t0, $fp, -1120
	sw $t0, -10896($fp)
	li $t0, 7
	sw $t0, -10900($fp)
	lw $t0, -10900($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10904($fp)
	lw $t0, -10896($fp)
	lw $t1, -10904($fp)
	add $t0, $t0, $t1
	sw $t0, -10908($fp)
	lw $t0, -10892($fp)
	lw $t1, -10908($fp)
	sw $t0, 0($t1)
	lw $t0, -10908($fp)
	lw $t1, 0($t0)
	sw $t1, -10912($fp)
	li $t0, 63033
	sw $t0, -10916($fp)
	addi $t0, $fp, -1120
	sw $t0, -10920($fp)
	li $t0, 8
	sw $t0, -10924($fp)
	lw $t0, -10924($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10928($fp)
	lw $t0, -10920($fp)
	lw $t1, -10928($fp)
	add $t0, $t0, $t1
	sw $t0, -10932($fp)
	lw $t0, -10916($fp)
	lw $t1, -10932($fp)
	sw $t0, 0($t1)
	lw $t0, -10932($fp)
	lw $t1, 0($t0)
	sw $t1, -10936($fp)
	li $t0, 56004
	sw $t0, -10940($fp)
	lw $t0, -10940($fp)
	sw $t0, -10944($fp)
	lw $t0, -10944($fp)
	sw $t0, -10948($fp)
	li $t0, 46988
	sw $t0, -10952($fp)
	lw $t0, -10952($fp)
	sw $t0, -10956($fp)
	lw $t0, -10956($fp)
	sw $t0, -10960($fp)
	li $t0, 11412
	sw $t0, -10964($fp)
	lw $t0, -10964($fp)
	sw $t0, -10968($fp)
	lw $t0, -10968($fp)
	sw $t0, -10972($fp)
	li $t0, 7041
	sw $t0, -10976($fp)
	lw $t0, -10976($fp)
	sw $t0, -10980($fp)
	lw $t0, -10980($fp)
	sw $t0, -10984($fp)
	li $t0, 51500
	sw $t0, -10988($fp)
	lw $t0, -10988($fp)
	sw $t0, -10992($fp)
	lw $t0, -10992($fp)
	sw $t0, -10996($fp)
	li $t0, 12231
	sw $t0, -11000($fp)
	lw $t0, -11000($fp)
	sw $t0, -11004($fp)
	lw $t0, -11004($fp)
	sw $t0, -11008($fp)
	li $t0, 60358
	sw $t0, -11012($fp)
	lw $t0, -11012($fp)
	sw $t0, -11016($fp)
	lw $t0, -11016($fp)
	sw $t0, -11020($fp)
	li $t0, 19594
	sw $t0, -11024($fp)
	lw $t0, -11024($fp)
	sw $t0, -11028($fp)
	lw $t0, -11028($fp)
	sw $t0, -11032($fp)
	li $t0, 42838
	sw $t0, -11036($fp)
	lw $t0, -11036($fp)
	sw $t0, -11040($fp)
	lw $t0, -11040($fp)
	sw $t0, -11044($fp)
	li $t0, 2288
	sw $t0, -11048($fp)
	lw $t0, -11048($fp)
	sw $t0, -11052($fp)
	lw $t0, -11052($fp)
	sw $t0, -11056($fp)
	li $t0, 54157
	sw $t0, -11060($fp)
	lw $t0, -11060($fp)
	sw $t0, -11064($fp)
	lw $t0, -11064($fp)
	sw $t0, -11068($fp)
	li $t0, 54017
	sw $t0, -11072($fp)
	addi $t0, $fp, -1152
	sw $t0, -11076($fp)
	li $t0, 0
	sw $t0, -11080($fp)
	lw $t0, -11080($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11084($fp)
	lw $t0, -11076($fp)
	lw $t1, -11084($fp)
	add $t0, $t0, $t1
	sw $t0, -11088($fp)
	lw $t0, -11072($fp)
	lw $t1, -11088($fp)
	sw $t0, 0($t1)
	lw $t0, -11088($fp)
	lw $t1, 0($t0)
	sw $t1, -11092($fp)
	li $t0, 49735
	sw $t0, -11096($fp)
	addi $t0, $fp, -1152
	sw $t0, -11100($fp)
	li $t0, 1
	sw $t0, -11104($fp)
	lw $t0, -11104($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11108($fp)
	lw $t0, -11100($fp)
	lw $t1, -11108($fp)
	add $t0, $t0, $t1
	sw $t0, -11112($fp)
	lw $t0, -11096($fp)
	lw $t1, -11112($fp)
	sw $t0, 0($t1)
	lw $t0, -11112($fp)
	lw $t1, 0($t0)
	sw $t1, -11116($fp)
	li $t0, 44359
	sw $t0, -11120($fp)
	addi $t0, $fp, -1152
	sw $t0, -11124($fp)
	li $t0, 2
	sw $t0, -11128($fp)
	lw $t0, -11128($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11132($fp)
	lw $t0, -11124($fp)
	lw $t1, -11132($fp)
	add $t0, $t0, $t1
	sw $t0, -11136($fp)
	lw $t0, -11120($fp)
	lw $t1, -11136($fp)
	sw $t0, 0($t1)
	lw $t0, -11136($fp)
	lw $t1, 0($t0)
	sw $t1, -11140($fp)
	li $t0, 23005
	sw $t0, -11144($fp)
	addi $t0, $fp, -1152
	sw $t0, -11148($fp)
	li $t0, 3
	sw $t0, -11152($fp)
	lw $t0, -11152($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11156($fp)
	lw $t0, -11148($fp)
	lw $t1, -11156($fp)
	add $t0, $t0, $t1
	sw $t0, -11160($fp)
	lw $t0, -11144($fp)
	lw $t1, -11160($fp)
	sw $t0, 0($t1)
	lw $t0, -11160($fp)
	lw $t1, 0($t0)
	sw $t1, -11164($fp)
	li $t0, 25323
	sw $t0, -11168($fp)
	addi $t0, $fp, -1152
	sw $t0, -11172($fp)
	li $t0, 4
	sw $t0, -11176($fp)
	lw $t0, -11176($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11180($fp)
	lw $t0, -11172($fp)
	lw $t1, -11180($fp)
	add $t0, $t0, $t1
	sw $t0, -11184($fp)
	lw $t0, -11168($fp)
	lw $t1, -11184($fp)
	sw $t0, 0($t1)
	lw $t0, -11184($fp)
	lw $t1, 0($t0)
	sw $t1, -11188($fp)
	li $t0, 2129
	sw $t0, -11192($fp)
	addi $t0, $fp, -1152
	sw $t0, -11196($fp)
	li $t0, 5
	sw $t0, -11200($fp)
	lw $t0, -11200($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11204($fp)
	lw $t0, -11196($fp)
	lw $t1, -11204($fp)
	add $t0, $t0, $t1
	sw $t0, -11208($fp)
	lw $t0, -11192($fp)
	lw $t1, -11208($fp)
	sw $t0, 0($t1)
	lw $t0, -11208($fp)
	lw $t1, 0($t0)
	sw $t1, -11212($fp)
	li $t0, 43161
	sw $t0, -11216($fp)
	addi $t0, $fp, -1152
	sw $t0, -11220($fp)
	li $t0, 6
	sw $t0, -11224($fp)
	lw $t0, -11224($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11228($fp)
	lw $t0, -11220($fp)
	lw $t1, -11228($fp)
	add $t0, $t0, $t1
	sw $t0, -11232($fp)
	lw $t0, -11216($fp)
	lw $t1, -11232($fp)
	sw $t0, 0($t1)
	lw $t0, -11232($fp)
	lw $t1, 0($t0)
	sw $t1, -11236($fp)
	li $t0, 49737
	sw $t0, -11240($fp)
	addi $t0, $fp, -1152
	sw $t0, -11244($fp)
	li $t0, 7
	sw $t0, -11248($fp)
	lw $t0, -11248($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11252($fp)
	lw $t0, -11244($fp)
	lw $t1, -11252($fp)
	add $t0, $t0, $t1
	sw $t0, -11256($fp)
	lw $t0, -11240($fp)
	lw $t1, -11256($fp)
	sw $t0, 0($t1)
	lw $t0, -11256($fp)
	lw $t1, 0($t0)
	sw $t1, -11260($fp)
	li $t0, 39220
	sw $t0, -11264($fp)
	lw $t0, -11264($fp)
	sw $t0, -11268($fp)
	lw $t0, -11268($fp)
	sw $t0, -11272($fp)
	li $t0, 2512
	sw $t0, -11276($fp)
	lw $t0, -11276($fp)
	sw $t0, -11280($fp)
	lw $t0, -11280($fp)
	sw $t0, -11284($fp)
	li $t0, 15687
	sw $t0, -11288($fp)
	lw $t0, -11288($fp)
	sw $t0, -11292($fp)
	lw $t0, -11292($fp)
	sw $t0, -11296($fp)
	li $t0, 255
	sw $t0, -11300($fp)
	addi $t0, $fp, -1168
	sw $t0, -11304($fp)
	li $t0, 0
	sw $t0, -11308($fp)
	lw $t0, -11308($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11312($fp)
	lw $t0, -11304($fp)
	lw $t1, -11312($fp)
	add $t0, $t0, $t1
	sw $t0, -11316($fp)
	lw $t0, -11300($fp)
	lw $t1, -11316($fp)
	sw $t0, 0($t1)
	lw $t0, -11316($fp)
	lw $t1, 0($t0)
	sw $t1, -11320($fp)
	li $t0, 25601
	sw $t0, -11324($fp)
	addi $t0, $fp, -1168
	sw $t0, -11328($fp)
	li $t0, 1
	sw $t0, -11332($fp)
	lw $t0, -11332($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11336($fp)
	lw $t0, -11328($fp)
	lw $t1, -11336($fp)
	add $t0, $t0, $t1
	sw $t0, -11340($fp)
	lw $t0, -11324($fp)
	lw $t1, -11340($fp)
	sw $t0, 0($t1)
	lw $t0, -11340($fp)
	lw $t1, 0($t0)
	sw $t1, -11344($fp)
	li $t0, 13637
	sw $t0, -11348($fp)
	addi $t0, $fp, -1168
	sw $t0, -11352($fp)
	li $t0, 2
	sw $t0, -11356($fp)
	lw $t0, -11356($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11360($fp)
	lw $t0, -11352($fp)
	lw $t1, -11360($fp)
	add $t0, $t0, $t1
	sw $t0, -11364($fp)
	lw $t0, -11348($fp)
	lw $t1, -11364($fp)
	sw $t0, 0($t1)
	lw $t0, -11364($fp)
	lw $t1, 0($t0)
	sw $t1, -11368($fp)
	li $t0, 55642
	sw $t0, -11372($fp)
	addi $t0, $fp, -1168
	sw $t0, -11376($fp)
	li $t0, 3
	sw $t0, -11380($fp)
	lw $t0, -11380($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11384($fp)
	lw $t0, -11376($fp)
	lw $t1, -11384($fp)
	add $t0, $t0, $t1
	sw $t0, -11388($fp)
	lw $t0, -11372($fp)
	lw $t1, -11388($fp)
	sw $t0, 0($t1)
	lw $t0, -11388($fp)
	lw $t1, 0($t0)
	sw $t1, -11392($fp)
	li $t0, 23738
	sw $t0, -11396($fp)
	addi $t0, $fp, -1184
	sw $t0, -11400($fp)
	li $t0, 0
	sw $t0, -11404($fp)
	lw $t0, -11404($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11408($fp)
	lw $t0, -11400($fp)
	lw $t1, -11408($fp)
	add $t0, $t0, $t1
	sw $t0, -11412($fp)
	lw $t0, -11396($fp)
	lw $t1, -11412($fp)
	sw $t0, 0($t1)
	lw $t0, -11412($fp)
	lw $t1, 0($t0)
	sw $t1, -11416($fp)
	li $t0, 59565
	sw $t0, -11420($fp)
	addi $t0, $fp, -1184
	sw $t0, -11424($fp)
	li $t0, 1
	sw $t0, -11428($fp)
	lw $t0, -11428($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11432($fp)
	lw $t0, -11424($fp)
	lw $t1, -11432($fp)
	add $t0, $t0, $t1
	sw $t0, -11436($fp)
	lw $t0, -11420($fp)
	lw $t1, -11436($fp)
	sw $t0, 0($t1)
	lw $t0, -11436($fp)
	lw $t1, 0($t0)
	sw $t1, -11440($fp)
	li $t0, 55714
	sw $t0, -11444($fp)
	addi $t0, $fp, -1184
	sw $t0, -11448($fp)
	li $t0, 2
	sw $t0, -11452($fp)
	lw $t0, -11452($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11456($fp)
	lw $t0, -11448($fp)
	lw $t1, -11456($fp)
	add $t0, $t0, $t1
	sw $t0, -11460($fp)
	lw $t0, -11444($fp)
	lw $t1, -11460($fp)
	sw $t0, 0($t1)
	lw $t0, -11460($fp)
	lw $t1, 0($t0)
	sw $t1, -11464($fp)
	li $t0, 53066
	sw $t0, -11468($fp)
	addi $t0, $fp, -1184
	sw $t0, -11472($fp)
	li $t0, 3
	sw $t0, -11476($fp)
	lw $t0, -11476($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11480($fp)
	lw $t0, -11472($fp)
	lw $t1, -11480($fp)
	add $t0, $t0, $t1
	sw $t0, -11484($fp)
	lw $t0, -11468($fp)
	lw $t1, -11484($fp)
	sw $t0, 0($t1)
	lw $t0, -11484($fp)
	lw $t1, 0($t0)
	sw $t1, -11488($fp)
	li $t0, 57062
	sw $t0, -11492($fp)
	lw $t0, -11492($fp)
	sw $t0, -11496($fp)
	lw $t0, -11496($fp)
	sw $t0, -11500($fp)
	li $t0, 46182
	sw $t0, -11504($fp)
	lw $t0, -11504($fp)
	sw $t0, -11508($fp)
	lw $t0, -11508($fp)
	sw $t0, -11512($fp)
	li $t0, 34518
	sw $t0, -11516($fp)
	addi $t0, $fp, -1188
	sw $t0, -11520($fp)
	li $t0, 0
	sw $t0, -11524($fp)
	lw $t0, -11524($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11528($fp)
	lw $t0, -11520($fp)
	lw $t1, -11528($fp)
	add $t0, $t0, $t1
	sw $t0, -11532($fp)
	lw $t0, -11516($fp)
	lw $t1, -11532($fp)
	sw $t0, 0($t1)
	lw $t0, -11532($fp)
	lw $t1, 0($t0)
	sw $t1, -11536($fp)
	li $t0, 2938
	sw $t0, -11540($fp)
	lw $t0, -11540($fp)
	sw $t0, -11544($fp)
	lw $t0, -11544($fp)
	sw $t0, -11548($fp)
	li $t0, 53223
	sw $t0, -11552($fp)
	lw $t0, -11552($fp)
	sw $t0, -11556($fp)
	lw $t0, -11556($fp)
	sw $t0, -11560($fp)
	li $t0, 20482
	sw $t0, -11564($fp)
	addi $t0, $fp, -1228
	sw $t0, -11568($fp)
	li $t0, 0
	sw $t0, -11572($fp)
	lw $t0, -11572($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11576($fp)
	lw $t0, -11568($fp)
	lw $t1, -11576($fp)
	add $t0, $t0, $t1
	sw $t0, -11580($fp)
	lw $t0, -11564($fp)
	lw $t1, -11580($fp)
	sw $t0, 0($t1)
	lw $t0, -11580($fp)
	lw $t1, 0($t0)
	sw $t1, -11584($fp)
	li $t0, 15170
	sw $t0, -11588($fp)
	addi $t0, $fp, -1228
	sw $t0, -11592($fp)
	li $t0, 1
	sw $t0, -11596($fp)
	lw $t0, -11596($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11600($fp)
	lw $t0, -11592($fp)
	lw $t1, -11600($fp)
	add $t0, $t0, $t1
	sw $t0, -11604($fp)
	lw $t0, -11588($fp)
	lw $t1, -11604($fp)
	sw $t0, 0($t1)
	lw $t0, -11604($fp)
	lw $t1, 0($t0)
	sw $t1, -11608($fp)
	li $t0, 48046
	sw $t0, -11612($fp)
	addi $t0, $fp, -1228
	sw $t0, -11616($fp)
	li $t0, 2
	sw $t0, -11620($fp)
	lw $t0, -11620($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11624($fp)
	lw $t0, -11616($fp)
	lw $t1, -11624($fp)
	add $t0, $t0, $t1
	sw $t0, -11628($fp)
	lw $t0, -11612($fp)
	lw $t1, -11628($fp)
	sw $t0, 0($t1)
	lw $t0, -11628($fp)
	lw $t1, 0($t0)
	sw $t1, -11632($fp)
	li $t0, 40077
	sw $t0, -11636($fp)
	addi $t0, $fp, -1228
	sw $t0, -11640($fp)
	li $t0, 3
	sw $t0, -11644($fp)
	lw $t0, -11644($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11648($fp)
	lw $t0, -11640($fp)
	lw $t1, -11648($fp)
	add $t0, $t0, $t1
	sw $t0, -11652($fp)
	lw $t0, -11636($fp)
	lw $t1, -11652($fp)
	sw $t0, 0($t1)
	lw $t0, -11652($fp)
	lw $t1, 0($t0)
	sw $t1, -11656($fp)
	li $t0, 58008
	sw $t0, -11660($fp)
	addi $t0, $fp, -1228
	sw $t0, -11664($fp)
	li $t0, 4
	sw $t0, -11668($fp)
	lw $t0, -11668($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11672($fp)
	lw $t0, -11664($fp)
	lw $t1, -11672($fp)
	add $t0, $t0, $t1
	sw $t0, -11676($fp)
	lw $t0, -11660($fp)
	lw $t1, -11676($fp)
	sw $t0, 0($t1)
	lw $t0, -11676($fp)
	lw $t1, 0($t0)
	sw $t1, -11680($fp)
	li $t0, 50334
	sw $t0, -11684($fp)
	addi $t0, $fp, -1228
	sw $t0, -11688($fp)
	li $t0, 5
	sw $t0, -11692($fp)
	lw $t0, -11692($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11696($fp)
	lw $t0, -11688($fp)
	lw $t1, -11696($fp)
	add $t0, $t0, $t1
	sw $t0, -11700($fp)
	lw $t0, -11684($fp)
	lw $t1, -11700($fp)
	sw $t0, 0($t1)
	lw $t0, -11700($fp)
	lw $t1, 0($t0)
	sw $t1, -11704($fp)
	li $t0, 28698
	sw $t0, -11708($fp)
	addi $t0, $fp, -1228
	sw $t0, -11712($fp)
	li $t0, 6
	sw $t0, -11716($fp)
	lw $t0, -11716($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11720($fp)
	lw $t0, -11712($fp)
	lw $t1, -11720($fp)
	add $t0, $t0, $t1
	sw $t0, -11724($fp)
	lw $t0, -11708($fp)
	lw $t1, -11724($fp)
	sw $t0, 0($t1)
	lw $t0, -11724($fp)
	lw $t1, 0($t0)
	sw $t1, -11728($fp)
	li $t0, 46489
	sw $t0, -11732($fp)
	addi $t0, $fp, -1228
	sw $t0, -11736($fp)
	li $t0, 7
	sw $t0, -11740($fp)
	lw $t0, -11740($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11744($fp)
	lw $t0, -11736($fp)
	lw $t1, -11744($fp)
	add $t0, $t0, $t1
	sw $t0, -11748($fp)
	lw $t0, -11732($fp)
	lw $t1, -11748($fp)
	sw $t0, 0($t1)
	lw $t0, -11748($fp)
	lw $t1, 0($t0)
	sw $t1, -11752($fp)
	li $t0, 34533
	sw $t0, -11756($fp)
	addi $t0, $fp, -1228
	sw $t0, -11760($fp)
	li $t0, 8
	sw $t0, -11764($fp)
	lw $t0, -11764($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11768($fp)
	lw $t0, -11760($fp)
	lw $t1, -11768($fp)
	add $t0, $t0, $t1
	sw $t0, -11772($fp)
	lw $t0, -11756($fp)
	lw $t1, -11772($fp)
	sw $t0, 0($t1)
	lw $t0, -11772($fp)
	lw $t1, 0($t0)
	sw $t1, -11776($fp)
	li $t0, 7521
	sw $t0, -11780($fp)
	addi $t0, $fp, -1228
	sw $t0, -11784($fp)
	li $t0, 9
	sw $t0, -11788($fp)
	lw $t0, -11788($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11792($fp)
	lw $t0, -11784($fp)
	lw $t1, -11792($fp)
	add $t0, $t0, $t1
	sw $t0, -11796($fp)
	lw $t0, -11780($fp)
	lw $t1, -11796($fp)
	sw $t0, 0($t1)
	lw $t0, -11796($fp)
	lw $t1, 0($t0)
	sw $t1, -11800($fp)
	li $t0, 3958
	sw $t0, -11804($fp)
	lw $t0, -11804($fp)
	sw $t0, -11808($fp)
	lw $t0, -11808($fp)
	sw $t0, -11812($fp)
	li $t0, 59856
	sw $t0, -11816($fp)
	lw $t0, -11816($fp)
	sw $t0, -11820($fp)
	lw $t0, -11820($fp)
	sw $t0, -11824($fp)
	li $t0, 9650
	sw $t0, -11828($fp)
	lw $t0, -11828($fp)
	sw $t0, -11832($fp)
	lw $t0, -11832($fp)
	sw $t0, -11836($fp)
	li $t0, 47120
	sw $t0, -11840($fp)
	lw $t0, -11840($fp)
	sw $t0, -11844($fp)
	lw $t0, -11844($fp)
	sw $t0, -11848($fp)
	li $t0, 44057
	sw $t0, -11852($fp)
	lw $t0, -11852($fp)
	sw $t0, -11856($fp)
	lw $t0, -11856($fp)
	sw $t0, -11860($fp)
	li $t0, 48870
	sw $t0, -11864($fp)
	lw $t0, -11864($fp)
	sw $t0, -11868($fp)
	lw $t0, -11868($fp)
	sw $t0, -11872($fp)
	li $t0, 49632
	sw $t0, -11876($fp)
	lw $t0, -11876($fp)
	sw $t0, -11880($fp)
	lw $t0, -11880($fp)
	sw $t0, -11884($fp)
	li $t0, 59745
	sw $t0, -11888($fp)
	addi $t0, $fp, -1236
	sw $t0, -11892($fp)
	li $t0, 0
	sw $t0, -11896($fp)
	lw $t0, -11896($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11900($fp)
	lw $t0, -11892($fp)
	lw $t1, -11900($fp)
	add $t0, $t0, $t1
	sw $t0, -11904($fp)
	lw $t0, -11888($fp)
	lw $t1, -11904($fp)
	sw $t0, 0($t1)
	lw $t0, -11904($fp)
	lw $t1, 0($t0)
	sw $t1, -11908($fp)
	li $t0, 49125
	sw $t0, -11912($fp)
	addi $t0, $fp, -1236
	sw $t0, -11916($fp)
	li $t0, 1
	sw $t0, -11920($fp)
	lw $t0, -11920($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11924($fp)
	lw $t0, -11916($fp)
	lw $t1, -11924($fp)
	add $t0, $t0, $t1
	sw $t0, -11928($fp)
	lw $t0, -11912($fp)
	lw $t1, -11928($fp)
	sw $t0, 0($t1)
	lw $t0, -11928($fp)
	lw $t1, 0($t0)
	sw $t1, -11932($fp)
	li $t0, 9698
	sw $t0, -11936($fp)
	lw $t0, -11936($fp)
	sw $t0, -11940($fp)
	lw $t0, -11940($fp)
	sw $t0, -11944($fp)
	li $t0, 7846
	sw $t0, -11948($fp)
	lw $t0, -11948($fp)
	sw $t0, -11952($fp)
	lw $t0, -11952($fp)
	sw $t0, -11956($fp)
	li $t0, 39231
	sw $t0, -11960($fp)
	lw $t0, -11960($fp)
	sw $t0, -11964($fp)
	lw $t0, -11964($fp)
	sw $t0, -11968($fp)
	li $t0, 33436
	sw $t0, -11972($fp)
	lw $t0, -11972($fp)
	sw $t0, -11976($fp)
	lw $t0, -11976($fp)
	sw $t0, -11980($fp)
	li $t0, 1875
	sw $t0, -11984($fp)
	lw $t0, -11984($fp)
	sw $t0, -11988($fp)
	lw $t0, -11988($fp)
	sw $t0, -11992($fp)
	li $t0, 29410
	sw $t0, -11996($fp)
	lw $t0, -11996($fp)
	sw $t0, -12000($fp)
	lw $t0, -12000($fp)
	sw $t0, -12004($fp)
	li $t0, 20966
	sw $t0, -12008($fp)
	lw $t0, -12008($fp)
	sw $t0, -12012($fp)
	lw $t0, -12012($fp)
	sw $t0, -12016($fp)
	li $t0, 58937
	sw $t0, -12020($fp)
	lw $t0, -12020($fp)
	sw $t0, -12024($fp)
	lw $t0, -12024($fp)
	sw $t0, -12028($fp)
	li $t0, 10056
	sw $t0, -12032($fp)
	lw $t0, -12032($fp)
	sw $t0, -12036($fp)
	lw $t0, -12036($fp)
	sw $t0, -12040($fp)
	li $t0, 55485
	sw $t0, -12044($fp)
	lw $t0, -12044($fp)
	sw $t0, -12048($fp)
	lw $t0, -12048($fp)
	sw $t0, -12052($fp)
	li $t0, 61875
	sw $t0, -12056($fp)
	lw $t0, -12056($fp)
	sw $t0, -12060($fp)
	lw $t0, -12060($fp)
	sw $t0, -12064($fp)
	li $t0, 63280
	sw $t0, -12068($fp)
	lw $t0, -12068($fp)
	sw $t0, -12072($fp)
	lw $t0, -12072($fp)
	sw $t0, -12076($fp)
	li $t0, 10431
	sw $t0, -12080($fp)
	addi $t0, $fp, -1240
	sw $t0, -12084($fp)
	li $t0, 0
	sw $t0, -12088($fp)
	lw $t0, -12088($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12092($fp)
	lw $t0, -12084($fp)
	lw $t1, -12092($fp)
	add $t0, $t0, $t1
	sw $t0, -12096($fp)
	lw $t0, -12080($fp)
	lw $t1, -12096($fp)
	sw $t0, 0($t1)
	lw $t0, -12096($fp)
	lw $t1, 0($t0)
	sw $t1, -12100($fp)
	li $t0, 11509
	sw $t0, -12104($fp)
	lw $t0, -12104($fp)
	sw $t0, -12108($fp)
	lw $t0, -12108($fp)
	sw $t0, -12112($fp)
	li $t0, 45790
	sw $t0, -12116($fp)
	lw $t0, -12116($fp)
	sw $t0, -12120($fp)
	lw $t0, -12120($fp)
	sw $t0, -12124($fp)
	li $t0, 50508
	sw $t0, -12128($fp)
	lw $t0, -12128($fp)
	sw $t0, -12132($fp)
	lw $t0, -12132($fp)
	sw $t0, -12136($fp)
	li $t0, 3981
	sw $t0, -12140($fp)
	lw $t0, -12140($fp)
	sw $t0, -12144($fp)
	lw $t0, -12144($fp)
	sw $t0, -12148($fp)
	li $t0, 30588
	sw $t0, -12152($fp)
	lw $t0, -12152($fp)
	sw $t0, -12156($fp)
	lw $t0, -12156($fp)
	sw $t0, -12160($fp)
	li $t0, 13670
	sw $t0, -12164($fp)
	lw $t0, -12164($fp)
	sw $t0, -12168($fp)
	lw $t0, -12168($fp)
	sw $t0, -12172($fp)
	li $t0, 50471
	sw $t0, -12176($fp)
	lw $t0, -12176($fp)
	sw $t0, -12180($fp)
	lw $t0, -12180($fp)
	sw $t0, -12184($fp)
	li $t0, 65121
	sw $t0, -12188($fp)
	lw $t0, -12188($fp)
	sw $t0, -12192($fp)
	lw $t0, -12192($fp)
	sw $t0, -12196($fp)
	li $t0, 21191
	sw $t0, -12200($fp)
	lw $t0, -12200($fp)
	sw $t0, -12204($fp)
	lw $t0, -12204($fp)
	sw $t0, -12208($fp)
	li $t0, 54429
	sw $t0, -12212($fp)
	lw $t0, -12212($fp)
	sw $t0, -12216($fp)
	lw $t0, -12216($fp)
	sw $t0, -12220($fp)
	li $t0, 59441
	sw $t0, -12224($fp)
	lw $t0, -12224($fp)
	sw $t0, -12228($fp)
	lw $t0, -12228($fp)
	sw $t0, -12232($fp)
	li $t0, 30841
	sw $t0, -12236($fp)
	lw $t0, -12236($fp)
	sw $t0, -12240($fp)
	lw $t0, -12240($fp)
	sw $t0, -12244($fp)
	li $t0, 36013
	sw $t0, -12248($fp)
	lw $t0, -12248($fp)
	sw $t0, -12252($fp)
	lw $t0, -12252($fp)
	sw $t0, -12256($fp)
	li $t0, 37962
	sw $t0, -12260($fp)
	lw $t0, -12260($fp)
	sw $t0, -12264($fp)
	lw $t0, -12264($fp)
	sw $t0, -12268($fp)
	li $t0, 14175
	sw $t0, -12272($fp)
	lw $t0, -12272($fp)
	sw $t0, -12276($fp)
	lw $t0, -12276($fp)
	sw $t0, -12280($fp)
	li $t0, 20110
	sw $t0, -12284($fp)
	lw $t0, -12284($fp)
	sw $t0, -12288($fp)
	lw $t0, -12288($fp)
	sw $t0, -12292($fp)
	li $t0, 32171
	sw $t0, -12296($fp)
	lw $t0, -12296($fp)
	sw $t0, -12300($fp)
	lw $t0, -12300($fp)
	sw $t0, -12304($fp)
	li $t0, 63301
	sw $t0, -12308($fp)
	addi $t0, $fp, -1264
	sw $t0, -12312($fp)
	li $t0, 0
	sw $t0, -12316($fp)
	lw $t0, -12316($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12320($fp)
	lw $t0, -12312($fp)
	lw $t1, -12320($fp)
	add $t0, $t0, $t1
	sw $t0, -12324($fp)
	lw $t0, -12308($fp)
	lw $t1, -12324($fp)
	sw $t0, 0($t1)
	lw $t0, -12324($fp)
	lw $t1, 0($t0)
	sw $t1, -12328($fp)
	li $t0, 29808
	sw $t0, -12332($fp)
	addi $t0, $fp, -1264
	sw $t0, -12336($fp)
	li $t0, 1
	sw $t0, -12340($fp)
	lw $t0, -12340($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12344($fp)
	lw $t0, -12336($fp)
	lw $t1, -12344($fp)
	add $t0, $t0, $t1
	sw $t0, -12348($fp)
	lw $t0, -12332($fp)
	lw $t1, -12348($fp)
	sw $t0, 0($t1)
	lw $t0, -12348($fp)
	lw $t1, 0($t0)
	sw $t1, -12352($fp)
	li $t0, 40017
	sw $t0, -12356($fp)
	addi $t0, $fp, -1264
	sw $t0, -12360($fp)
	li $t0, 2
	sw $t0, -12364($fp)
	lw $t0, -12364($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12368($fp)
	lw $t0, -12360($fp)
	lw $t1, -12368($fp)
	add $t0, $t0, $t1
	sw $t0, -12372($fp)
	lw $t0, -12356($fp)
	lw $t1, -12372($fp)
	sw $t0, 0($t1)
	lw $t0, -12372($fp)
	lw $t1, 0($t0)
	sw $t1, -12376($fp)
	li $t0, 36996
	sw $t0, -12380($fp)
	addi $t0, $fp, -1264
	sw $t0, -12384($fp)
	li $t0, 3
	sw $t0, -12388($fp)
	lw $t0, -12388($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12392($fp)
	lw $t0, -12384($fp)
	lw $t1, -12392($fp)
	add $t0, $t0, $t1
	sw $t0, -12396($fp)
	lw $t0, -12380($fp)
	lw $t1, -12396($fp)
	sw $t0, 0($t1)
	lw $t0, -12396($fp)
	lw $t1, 0($t0)
	sw $t1, -12400($fp)
	li $t0, 63244
	sw $t0, -12404($fp)
	addi $t0, $fp, -1264
	sw $t0, -12408($fp)
	li $t0, 4
	sw $t0, -12412($fp)
	lw $t0, -12412($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12416($fp)
	lw $t0, -12408($fp)
	lw $t1, -12416($fp)
	add $t0, $t0, $t1
	sw $t0, -12420($fp)
	lw $t0, -12404($fp)
	lw $t1, -12420($fp)
	sw $t0, 0($t1)
	lw $t0, -12420($fp)
	lw $t1, 0($t0)
	sw $t1, -12424($fp)
	li $t0, 41892
	sw $t0, -12428($fp)
	addi $t0, $fp, -1264
	sw $t0, -12432($fp)
	li $t0, 5
	sw $t0, -12436($fp)
	lw $t0, -12436($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12440($fp)
	lw $t0, -12432($fp)
	lw $t1, -12440($fp)
	add $t0, $t0, $t1
	sw $t0, -12444($fp)
	lw $t0, -12428($fp)
	lw $t1, -12444($fp)
	sw $t0, 0($t1)
	lw $t0, -12444($fp)
	lw $t1, 0($t0)
	sw $t1, -12448($fp)
	li $t0, 870
	sw $t0, -12452($fp)
	lw $t0, -12452($fp)
	sw $t0, -12456($fp)
	lw $t0, -12456($fp)
	sw $t0, -12460($fp)
	li $t0, 18675
	sw $t0, -12464($fp)
	addi $t0, $fp, -1288
	sw $t0, -12468($fp)
	li $t0, 0
	sw $t0, -12472($fp)
	lw $t0, -12472($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12476($fp)
	lw $t0, -12468($fp)
	lw $t1, -12476($fp)
	add $t0, $t0, $t1
	sw $t0, -12480($fp)
	lw $t0, -12464($fp)
	lw $t1, -12480($fp)
	sw $t0, 0($t1)
	lw $t0, -12480($fp)
	lw $t1, 0($t0)
	sw $t1, -12484($fp)
	li $t0, 35293
	sw $t0, -12488($fp)
	addi $t0, $fp, -1288
	sw $t0, -12492($fp)
	li $t0, 1
	sw $t0, -12496($fp)
	lw $t0, -12496($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12500($fp)
	lw $t0, -12492($fp)
	lw $t1, -12500($fp)
	add $t0, $t0, $t1
	sw $t0, -12504($fp)
	lw $t0, -12488($fp)
	lw $t1, -12504($fp)
	sw $t0, 0($t1)
	lw $t0, -12504($fp)
	lw $t1, 0($t0)
	sw $t1, -12508($fp)
	li $t0, 10927
	sw $t0, -12512($fp)
	addi $t0, $fp, -1288
	sw $t0, -12516($fp)
	li $t0, 2
	sw $t0, -12520($fp)
	lw $t0, -12520($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12524($fp)
	lw $t0, -12516($fp)
	lw $t1, -12524($fp)
	add $t0, $t0, $t1
	sw $t0, -12528($fp)
	lw $t0, -12512($fp)
	lw $t1, -12528($fp)
	sw $t0, 0($t1)
	lw $t0, -12528($fp)
	lw $t1, 0($t0)
	sw $t1, -12532($fp)
	li $t0, 8624
	sw $t0, -12536($fp)
	addi $t0, $fp, -1288
	sw $t0, -12540($fp)
	li $t0, 3
	sw $t0, -12544($fp)
	lw $t0, -12544($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12548($fp)
	lw $t0, -12540($fp)
	lw $t1, -12548($fp)
	add $t0, $t0, $t1
	sw $t0, -12552($fp)
	lw $t0, -12536($fp)
	lw $t1, -12552($fp)
	sw $t0, 0($t1)
	lw $t0, -12552($fp)
	lw $t1, 0($t0)
	sw $t1, -12556($fp)
	li $t0, 31633
	sw $t0, -12560($fp)
	addi $t0, $fp, -1288
	sw $t0, -12564($fp)
	li $t0, 4
	sw $t0, -12568($fp)
	lw $t0, -12568($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12572($fp)
	lw $t0, -12564($fp)
	lw $t1, -12572($fp)
	add $t0, $t0, $t1
	sw $t0, -12576($fp)
	lw $t0, -12560($fp)
	lw $t1, -12576($fp)
	sw $t0, 0($t1)
	lw $t0, -12576($fp)
	lw $t1, 0($t0)
	sw $t1, -12580($fp)
	li $t0, 8671
	sw $t0, -12584($fp)
	addi $t0, $fp, -1288
	sw $t0, -12588($fp)
	li $t0, 5
	sw $t0, -12592($fp)
	lw $t0, -12592($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12596($fp)
	lw $t0, -12588($fp)
	lw $t1, -12596($fp)
	add $t0, $t0, $t1
	sw $t0, -12600($fp)
	lw $t0, -12584($fp)
	lw $t1, -12600($fp)
	sw $t0, 0($t1)
	lw $t0, -12600($fp)
	lw $t1, 0($t0)
	sw $t1, -12604($fp)
	li $t0, 19055
	sw $t0, -12608($fp)
	lw $t0, -12608($fp)
	sw $t0, -12612($fp)
	lw $t0, -12612($fp)
	sw $t0, -12616($fp)
	li $t0, 43142
	sw $t0, -12620($fp)
	lw $t0, -12620($fp)
	sw $t0, -12624($fp)
	lw $t0, -12624($fp)
	sw $t0, -12628($fp)
	li $t0, 54461
	sw $t0, -12632($fp)
	lw $t0, -12632($fp)
	sw $t0, -12636($fp)
	lw $t0, -12636($fp)
	sw $t0, -12640($fp)
	li $t0, 4028
	sw $t0, -12644($fp)
	lw $t0, -12644($fp)
	sw $t0, -12648($fp)
	lw $t0, -12648($fp)
	sw $t0, -12652($fp)
	li $t0, 47124
	sw $t0, -12656($fp)
	lw $t0, -12656($fp)
	sw $t0, -12660($fp)
	lw $t0, -12660($fp)
	sw $t0, -12664($fp)
	li $t0, 19513
	sw $t0, -12668($fp)
	lw $t0, -12668($fp)
	sw $t0, -12672($fp)
	lw $t0, -12672($fp)
	sw $t0, -12676($fp)
	li $t0, 17698
	sw $t0, -12680($fp)
	addi $t0, $fp, -1296
	sw $t0, -12684($fp)
	li $t0, 0
	sw $t0, -12688($fp)
	lw $t0, -12688($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12692($fp)
	lw $t0, -12684($fp)
	lw $t1, -12692($fp)
	add $t0, $t0, $t1
	sw $t0, -12696($fp)
	lw $t0, -12680($fp)
	lw $t1, -12696($fp)
	sw $t0, 0($t1)
	lw $t0, -12696($fp)
	lw $t1, 0($t0)
	sw $t1, -12700($fp)
	li $t0, 32059
	sw $t0, -12704($fp)
	addi $t0, $fp, -1296
	sw $t0, -12708($fp)
	li $t0, 1
	sw $t0, -12712($fp)
	lw $t0, -12712($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12716($fp)
	lw $t0, -12708($fp)
	lw $t1, -12716($fp)
	add $t0, $t0, $t1
	sw $t0, -12720($fp)
	lw $t0, -12704($fp)
	lw $t1, -12720($fp)
	sw $t0, 0($t1)
	lw $t0, -12720($fp)
	lw $t1, 0($t0)
	sw $t1, -12724($fp)
	li $t0, 19098
	sw $t0, -12728($fp)
	lw $t0, -12728($fp)
	sw $t0, -12732($fp)
	lw $t0, -12732($fp)
	sw $t0, -12736($fp)
	li $t0, 38890
	sw $t0, -12740($fp)
	lw $t0, -12740($fp)
	sw $t0, -12744($fp)
	lw $t0, -12744($fp)
	sw $t0, -12748($fp)
	li $t0, 20952
	sw $t0, -12752($fp)
	lw $t0, -12752($fp)
	sw $t0, -12756($fp)
	lw $t0, -12756($fp)
	sw $t0, -12760($fp)
	li $t0, 13003
	sw $t0, -12764($fp)
	lw $t0, -12764($fp)
	sw $t0, -12768($fp)
	lw $t0, -12768($fp)
	sw $t0, -12772($fp)
	li $t0, 4195
	sw $t0, -12776($fp)
	lw $t0, -12776($fp)
	sw $t0, -12780($fp)
	lw $t0, -12780($fp)
	sw $t0, -12784($fp)
	li $t0, 56966
	sw $t0, -12788($fp)
	lw $t0, -12788($fp)
	sw $t0, -12792($fp)
	lw $t0, -12792($fp)
	sw $t0, -12796($fp)
	li $t0, 50965
	sw $t0, -12800($fp)
	addi $t0, $fp, -1316
	sw $t0, -12804($fp)
	li $t0, 0
	sw $t0, -12808($fp)
	lw $t0, -12808($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12812($fp)
	lw $t0, -12804($fp)
	lw $t1, -12812($fp)
	add $t0, $t0, $t1
	sw $t0, -12816($fp)
	lw $t0, -12800($fp)
	lw $t1, -12816($fp)
	sw $t0, 0($t1)
	lw $t0, -12816($fp)
	lw $t1, 0($t0)
	sw $t1, -12820($fp)
	li $t0, 18371
	sw $t0, -12824($fp)
	addi $t0, $fp, -1316
	sw $t0, -12828($fp)
	li $t0, 1
	sw $t0, -12832($fp)
	lw $t0, -12832($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12836($fp)
	lw $t0, -12828($fp)
	lw $t1, -12836($fp)
	add $t0, $t0, $t1
	sw $t0, -12840($fp)
	lw $t0, -12824($fp)
	lw $t1, -12840($fp)
	sw $t0, 0($t1)
	lw $t0, -12840($fp)
	lw $t1, 0($t0)
	sw $t1, -12844($fp)
	li $t0, 11540
	sw $t0, -12848($fp)
	addi $t0, $fp, -1316
	sw $t0, -12852($fp)
	li $t0, 2
	sw $t0, -12856($fp)
	lw $t0, -12856($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12860($fp)
	lw $t0, -12852($fp)
	lw $t1, -12860($fp)
	add $t0, $t0, $t1
	sw $t0, -12864($fp)
	lw $t0, -12848($fp)
	lw $t1, -12864($fp)
	sw $t0, 0($t1)
	lw $t0, -12864($fp)
	lw $t1, 0($t0)
	sw $t1, -12868($fp)
	li $t0, 17601
	sw $t0, -12872($fp)
	addi $t0, $fp, -1316
	sw $t0, -12876($fp)
	li $t0, 3
	sw $t0, -12880($fp)
	lw $t0, -12880($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12884($fp)
	lw $t0, -12876($fp)
	lw $t1, -12884($fp)
	add $t0, $t0, $t1
	sw $t0, -12888($fp)
	lw $t0, -12872($fp)
	lw $t1, -12888($fp)
	sw $t0, 0($t1)
	lw $t0, -12888($fp)
	lw $t1, 0($t0)
	sw $t1, -12892($fp)
	li $t0, 16136
	sw $t0, -12896($fp)
	addi $t0, $fp, -1316
	sw $t0, -12900($fp)
	li $t0, 4
	sw $t0, -12904($fp)
	lw $t0, -12904($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12908($fp)
	lw $t0, -12900($fp)
	lw $t1, -12908($fp)
	add $t0, $t0, $t1
	sw $t0, -12912($fp)
	lw $t0, -12896($fp)
	lw $t1, -12912($fp)
	sw $t0, 0($t1)
	lw $t0, -12912($fp)
	lw $t1, 0($t0)
	sw $t1, -12916($fp)
	li $t0, 41348
	sw $t0, -12920($fp)
	addi $t0, $fp, -1324
	sw $t0, -12924($fp)
	li $t0, 0
	sw $t0, -12928($fp)
	lw $t0, -12928($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12932($fp)
	lw $t0, -12924($fp)
	lw $t1, -12932($fp)
	add $t0, $t0, $t1
	sw $t0, -12936($fp)
	lw $t0, -12920($fp)
	lw $t1, -12936($fp)
	sw $t0, 0($t1)
	lw $t0, -12936($fp)
	lw $t1, 0($t0)
	sw $t1, -12940($fp)
	li $t0, 57618
	sw $t0, -12944($fp)
	addi $t0, $fp, -1324
	sw $t0, -12948($fp)
	li $t0, 1
	sw $t0, -12952($fp)
	lw $t0, -12952($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12956($fp)
	lw $t0, -12948($fp)
	lw $t1, -12956($fp)
	add $t0, $t0, $t1
	sw $t0, -12960($fp)
	lw $t0, -12944($fp)
	lw $t1, -12960($fp)
	sw $t0, 0($t1)
	lw $t0, -12960($fp)
	lw $t1, 0($t0)
	sw $t1, -12964($fp)
	li $t0, 53132
	sw $t0, -12968($fp)
	lw $t0, -12968($fp)
	sw $t0, -12972($fp)
	lw $t0, -12972($fp)
	sw $t0, -12976($fp)
	li $t0, 39056
	sw $t0, -12980($fp)
	lw $t0, -12980($fp)
	sw $t0, -12984($fp)
	lw $t0, -12984($fp)
	sw $t0, -12988($fp)
	li $t0, 33975
	sw $t0, -12992($fp)
	lw $t0, -12992($fp)
	sw $t0, -12996($fp)
	lw $t0, -12996($fp)
	sw $t0, -13000($fp)
	li $t0, 54003
	sw $t0, -13004($fp)
	lw $t0, -13004($fp)
	sw $t0, -13008($fp)
	lw $t0, -13008($fp)
	sw $t0, -13012($fp)
	li $t0, 57731
	sw $t0, -13016($fp)
	lw $t0, -13016($fp)
	sw $t0, -13020($fp)
	lw $t0, -13020($fp)
	sw $t0, -13024($fp)
	li $t0, 3732
	sw $t0, -13028($fp)
	lw $t0, -13028($fp)
	sw $t0, -13032($fp)
	lw $t0, -13032($fp)
	sw $t0, -13036($fp)
	li $t0, 64930
	sw $t0, -13040($fp)
	lw $t0, -13040($fp)
	sw $t0, -13044($fp)
	lw $t0, -13044($fp)
	sw $t0, -13048($fp)
	li $t0, 819
	sw $t0, -13052($fp)
	lw $t0, -13052($fp)
	sw $t0, -13056($fp)
	lw $t0, -13056($fp)
	sw $t0, -13060($fp)
	li $t0, 35365
	sw $t0, -13064($fp)
	lw $t0, -13064($fp)
	sw $t0, -13068($fp)
	lw $t0, -13068($fp)
	sw $t0, -13072($fp)
	li $t0, 8065
	sw $t0, -13076($fp)
	addi $t0, $fp, -1336
	sw $t0, -13080($fp)
	li $t0, 0
	sw $t0, -13084($fp)
	lw $t0, -13084($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -13088($fp)
	lw $t0, -13080($fp)
	lw $t1, -13088($fp)
	add $t0, $t0, $t1
	sw $t0, -13092($fp)
	lw $t0, -13076($fp)
	lw $t1, -13092($fp)
	sw $t0, 0($t1)
	lw $t0, -13092($fp)
	lw $t1, 0($t0)
	sw $t1, -13096($fp)
	li $t0, 19875
	sw $t0, -13100($fp)
	addi $t0, $fp, -1336
	sw $t0, -13104($fp)
	li $t0, 1
	sw $t0, -13108($fp)
	lw $t0, -13108($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -13112($fp)
	lw $t0, -13104($fp)
	lw $t1, -13112($fp)
	add $t0, $t0, $t1
	sw $t0, -13116($fp)
	lw $t0, -13100($fp)
	lw $t1, -13116($fp)
	sw $t0, 0($t1)
	lw $t0, -13116($fp)
	lw $t1, 0($t0)
	sw $t1, -13120($fp)
	li $t0, 12972
	sw $t0, -13124($fp)
	addi $t0, $fp, -1336
	sw $t0, -13128($fp)
	li $t0, 2
	sw $t0, -13132($fp)
	lw $t0, -13132($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -13136($fp)
	lw $t0, -13128($fp)
	lw $t1, -13136($fp)
	add $t0, $t0, $t1
	sw $t0, -13140($fp)
	lw $t0, -13124($fp)
	lw $t1, -13140($fp)
	sw $t0, 0($t1)
	lw $t0, -13140($fp)
	lw $t1, 0($t0)
	sw $t1, -13144($fp)
	li $t0, 62526
	sw $t0, -13148($fp)
	lw $t0, -13148($fp)
	sw $t0, -13152($fp)
	lw $t0, -13152($fp)
	sw $t0, -13156($fp)
	li $t0, 23903
	sw $t0, -13160($fp)
	lw $t0, -13160($fp)
	sw $t0, -13164($fp)
	lw $t0, -13164($fp)
	sw $t0, -13168($fp)
	li $t0, 60096
	sw $t0, -13172($fp)
	lw $t0, -13172($fp)
	sw $t0, -13176($fp)
	lw $t0, -13176($fp)
	sw $t0, -13180($fp)
	li $t0, 16503
	sw $t0, -13184($fp)
	lw $t0, -13184($fp)
	sw $t0, -13188($fp)
	lw $t0, -13188($fp)
	sw $t0, -13192($fp)
	li $t0, 41601
	sw $t0, -13196($fp)
	lw $t0, -13196($fp)
	sw $t0, -13200($fp)
	lw $t0, -13200($fp)
	sw $t0, -13204($fp)
	li $t0, 26619
	sw $t0, -13208($fp)
	lw $t0, -13208($fp)
	sw $t0, -13212($fp)
	lw $t0, -13212($fp)
	sw $t0, -13216($fp)
	li $t0, 35601
	sw $t0, -13220($fp)
	lw $t0, -13220($fp)
	sw $t0, -13224($fp)
	lw $t0, -13224($fp)
	sw $t0, -13228($fp)
	lw $t0, -7164($fp)
	sw $t0, -13232($fp)
	lw $t0, -5184($fp)
	sw $t0, -13236($fp)
	lw $t0, -13232($fp)
	lw $t1, -13236($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13240($fp)
	lw $t1, -13240($fp)
	li $t2, 0
	bne $t1, $t2, label158
	j label159
label158:
	li $t0, 0
	sw $t0, -13244($fp)
	lw $t0, -11064($fp)
	sw $t0, -13248($fp)
	lw $t0, -12756($fp)
	sw $t0, -13252($fp)
	lw $t1, -13248($fp)
	lw $t2, -13252($fp)
	blt $t1, $t2, label164
	j label165
label164:
	li $t0, 1
	sw $t0, -13244($fp)
label165:
	li $t0, 0
	sw $t0, -13256($fp)
	li $t0, 0
	sw $t0, -13260($fp)
	li $t0, 0
	sw $t0, -13264($fp)
	li $t0, 14955
	sw $t0, -13268($fp)
	li $t0, 47571
	sw $t0, -13272($fp)
	lw $t1, -13268($fp)
	lw $t2, -13272($fp)
	bgt $t1, $t2, label170
	j label171
label170:
	li $t0, 1
	sw $t0, -13264($fp)
label171:
	lw $t0, -7020($fp)
	sw $t0, -13276($fp)
	lw $t1, -13264($fp)
	lw $t2, -13276($fp)
	ble $t1, $t2, label168
	j label169
label168:
	li $t0, 1
	sw $t0, -13260($fp)
label169:
	lw $t0, -7296($fp)
	sw $t0, -13280($fp)
	lw $t1, -13260($fp)
	lw $t2, -13280($fp)
	ble $t1, $t2, label166
	j label167
label166:
	li $t0, 1
	sw $t0, -13256($fp)
label167:
	lw $t1, -13244($fp)
	lw $t2, -13256($fp)
	beq $t1, $t2, label161
	j label162
label161:
	lw $t0, -6576($fp)
	sw $t0, -13284($fp)
	li $t0, 0
	lw $t1, -13284($fp)
	sub $t0, $t0, $t1
	sw $t0, -13288($fp)
	li $t0, 0
	lw $t1, -13288($fp)
	sub $t0, $t0, $t1
	sw $t0, -13292($fp)
	li $t0, 0
	lw $t1, -13292($fp)
	sub $t0, $t0, $t1
	sw $t0, -13296($fp)
	lw $t1, -13296($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label176
label176:
	li $t0, 0
	sw $t0, -13300($fp)
	li $t0, 48604
	sw $t0, -13304($fp)
	lw $t1, -13304($fp)
	li $t2, 0
	bne $t1, $t2, label178
	j label177
label177:
	li $t0, 1
	sw $t0, -13300($fp)
label178:
	li $t0, 19151
	sw $t0, -13308($fp)
	lw $t0, -13300($fp)
	lw $t1, -13308($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13312($fp)
	lw $t1, -13312($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label175
label175:
	lw $t0, 4($fp)
	sw $t0, -13316($fp)
	lw $t1, -13316($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label173
label172:
label179:
	li $t0, 0
	sw $t0, -13320($fp)
	addi $t0, $fp, -1188
	sw $t0, -13324($fp)
	li $t0, 0
	sw $t0, -13328($fp)
	lw $t0, -8424($fp)
	sw $t0, -13332($fp)
	lw $t1, -13332($fp)
	li $t2, 0
	bne $t1, $t2, label186
	j label185
label186:
	lw $t0, -3312($fp)
	sw $t0, -13336($fp)
	lw $t1, -13336($fp)
	li $t2, 0
	bne $t1, $t2, label184
	j label185
label184:
	li $t0, 1
	sw $t0, -13328($fp)
label185:
	li $t0, 4
	lw $t1, -13328($fp)
	mul $t0, $t0, $t1
	sw $t0, -13340($fp)
	lw $t0, -13340($fp)
	lw $t1, -13324($fp)
	add $t0, $t0, $t1
	sw $t0, -13344($fp)
	lw $t0, -13344($fp)
	lw $t1, 0($t0)
	sw $t1, -13348($fp)
	lw $t1, -13348($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label182
label182:
	li $t0, 1
	sw $t0, -13320($fp)
label183:
	addi $t0, $fp, -8
	sw $t0, -13352($fp)
	li $t0, 0
	sw $t0, -13356($fp)
	li $t0, 4
	lw $t1, -13356($fp)
	mul $t0, $t0, $t1
	sw $t0, -13360($fp)
	lw $t0, -13360($fp)
	lw $t1, -13352($fp)
	add $t0, $t0, $t1
	sw $t0, -13364($fp)
	lw $t0, -13364($fp)
	lw $t1, 0($t0)
	sw $t1, -13368($fp)
	lw $t0, -13320($fp)
	lw $t1, -13368($fp)
	sub $t0, $t0, $t1
	sw $t0, -13372($fp)
	lw $t1, -13372($fp)
	li $t2, 0
	bne $t1, $t2, label180
	j label181
label180:
	li $t0, 50541
	sw $t0, -13376($fp)
	lw $t1, -13376($fp)
	li $t2, 0
	bne $t1, $t2, label188
	j label187
label187:
label190:
	li $t0, 41254
	sw $t0, -13380($fp)
	lw $t0, -13380($fp)
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	sw $t0, -13384($fp)
	li $t0, 0
	sw $t0, -13388($fp)
	li $t0, 0
	sw $t0, -13392($fp)
	li $t0, 43717
	sw $t0, -13396($fp)
	lw $t0, -13032($fp)
	sw $t0, -13400($fp)
	lw $t1, -13396($fp)
	lw $t2, -13400($fp)
	bgt $t1, $t2, label195
	j label196
label195:
	li $t0, 1
	sw $t0, -13392($fp)
label196:
	lw $t0, -2004($fp)
	sw $t0, -13404($fp)
	lw $t1, -13392($fp)
	lw $t2, -13404($fp)
	blt $t1, $t2, label193
	j label194
label193:
	li $t0, 1
	sw $t0, -13388($fp)
label194:
	li $t0, 0
	sw $t0, -13408($fp)
	lw $t0, 20($fp)
	sw $t0, -13412($fp)
	li $t0, 26353
	sw $t0, -13416($fp)
	lw $t0, -13412($fp)
	lw $t1, -13416($fp)
	sub $t0, $t0, $t1
	sw $t0, -13420($fp)
	lw $t0, -1368($fp)
	sw $t0, -13424($fp)
	lw $t1, -13420($fp)
	lw $t2, -13424($fp)
	blt $t1, $t2, label197
	j label198
label197:
	li $t0, 1
	sw $t0, -13408($fp)
label198:
	li $t0, 0
	sw $t0, -13428($fp)
	li $t0, 53658
	sw $t0, -13432($fp)
	lw $t1, -13432($fp)
	li $t2, 0
	bne $t1, $t2, label199
	j label201
label201:
	lw $t0, 16($fp)
	sw $t0, -13436($fp)
	lw $t1, -13436($fp)
	li $t2, 0
	bne $t1, $t2, label199
	j label200
label199:
	li $t0, 1
	sw $t0, -13428($fp)
label200:
	li $t0, 0
	sw $t0, -13440($fp)
	lw $t0, 8($fp)
	sw $t0, -13444($fp)
	li $t0, 51634
	sw $t0, -13448($fp)
	lw $t0, -13444($fp)
	lw $t1, -13448($fp)
	sub $t0, $t0, $t1
	sw $t0, -13452($fp)
	lw $t0, 12($fp)
	sw $t0, -13456($fp)
	lw $t1, -13452($fp)
	lw $t2, -13456($fp)
	bge $t1, $t2, label202
	j label203
label202:
	li $t0, 1
	sw $t0, -13440($fp)
label203:
	addi $sp, $sp, -4
	lw $t0, -13384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13440($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -13460($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -200
	sw $t0, -13464($fp)
	lw $t0, -1392($fp)
	sw $t0, -13468($fp)
	li $t0, 65410
	sw $t0, -13472($fp)
	lw $t0, -13468($fp)
	lw $t1, -13472($fp)
	sub $t0, $t0, $t1
	sw $t0, -13476($fp)
	li $t0, 4
	lw $t1, -13476($fp)
	mul $t0, $t0, $t1
	sw $t0, -13480($fp)
	lw $t0, -13480($fp)
	lw $t1, -13464($fp)
	add $t0, $t0, $t1
	sw $t0, -13484($fp)
	lw $t0, -13484($fp)
	lw $t1, 0($t0)
	sw $t1, -13488($fp)
	lw $t0, -13460($fp)
	lw $t1, -13488($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13492($fp)
	lw $t1, -13492($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label192
label191:
label204:
	lw $t0, -1404($fp)
	sw $t0, -13496($fp)
	lw $t1, -13496($fp)
	li $t2, 0
	bne $t1, $t2, label205
	j label206
label205:
label207:
	lw $t0, -11004($fp)
	sw $t0, -13500($fp)
	li $t0, 0
	lw $t1, -13500($fp)
	sub $t0, $t0, $t1
	sw $t0, -13504($fp)
	li $t0, 0
	lw $t1, -13504($fp)
	sub $t0, $t0, $t1
	sw $t0, -13508($fp)
	lw $t1, -13508($fp)
	li $t2, 0
	bne $t1, $t2, label208
	j label209
label208:
label210:
	li $t0, 12156
	sw $t0, -13512($fp)
	li $t0, 0
	lw $t1, -13512($fp)
	sub $t0, $t0, $t1
	sw $t0, -13516($fp)
	lw $t1, -13516($fp)
	li $t2, 0
	bne $t1, $t2, label211
	j label212
label211:
	addi $t0, $fp, -40
	sw $t0, -13520($fp)
	li $t0, 5
	sw $t0, -13524($fp)
	li $t0, 4
	lw $t1, -13524($fp)
	mul $t0, $t0, $t1
	sw $t0, -13528($fp)
	lw $t0, -13528($fp)
	lw $t1, -13520($fp)
	add $t0, $t0, $t1
	sw $t0, -13532($fp)
	lw $t0, -13532($fp)
	lw $t1, 0($t0)
	sw $t1, -13536($fp)
	li $t0, 0
	lw $t1, -13536($fp)
	sub $t0, $t0, $t1
	sw $t0, -13540($fp)
	lw $t1, -13540($fp)
	li $t2, 0
	bne $t1, $t2, label217
	j label214
label217:
	li $t0, 15888
	sw $t0, -13544($fp)
	lw $t1, -13544($fp)
	li $t2, 0
	bne $t1, $t2, label216
	j label214
label216:
	lw $t0, -1368($fp)
	sw $t0, -13548($fp)
	lw $t0, -9444($fp)
	sw $t0, -13552($fp)
	lw $t0, -13548($fp)
	lw $t1, -13552($fp)
	mul $t0, $t0, $t1
	sw $t0, -13556($fp)
	lw $t0, -1608($fp)
	sw $t0, -13560($fp)
	li $t0, 0
	lw $t1, -13560($fp)
	sub $t0, $t0, $t1
	sw $t0, -13564($fp)
	lw $t0, -13556($fp)
	lw $t1, -13564($fp)
	mul $t0, $t0, $t1
	sw $t0, -13568($fp)
	li $t0, 0
	lw $t1, -13568($fp)
	sub $t0, $t0, $t1
	sw $t0, -13572($fp)
	lw $t1, -13572($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label214
label213:
	li $t0, 0
	sw $t0, -13576($fp)
	addi $t0, $fp, -1228
	sw $t0, -13580($fp)
	li $t0, 5
	sw $t0, -13584($fp)
	li $t0, 4
	lw $t1, -13584($fp)
	mul $t0, $t0, $t1
	sw $t0, -13588($fp)
	lw $t0, -13588($fp)
	lw $t1, -13580($fp)
	add $t0, $t0, $t1
	sw $t0, -13592($fp)
	lw $t0, -13592($fp)
	lw $t1, 0($t0)
	sw $t1, -13596($fp)
	li $t0, 51254
	sw $t0, -13600($fp)
	li $t0, 0
	lw $t1, -13600($fp)
	sub $t0, $t0, $t1
	sw $t0, -13604($fp)
	lw $t1, -13596($fp)
	lw $t2, -13604($fp)
	bge $t1, $t2, label218
	j label219
label218:
	li $t0, 1
	sw $t0, -13576($fp)
label219:
	lw $t0, -13576($fp)
	sw $t0, -5592($fp)
	lw $t0, -5592($fp)
	sw $t0, -13608($fp)
	j label215
label214:
	li $t0, 0
	sw $t0, -13612($fp)
	addi $t0, $fp, -60
	sw $t0, -13616($fp)
	lw $t0, -12984($fp)
	sw $t0, -13620($fp)
	li $t0, 4
	lw $t1, -13620($fp)
	mul $t0, $t0, $t1
	sw $t0, -13624($fp)
	lw $t0, -13624($fp)
	lw $t1, -13616($fp)
	add $t0, $t0, $t1
	sw $t0, -13628($fp)
	lw $t0, -13628($fp)
	lw $t1, 0($t0)
	sw $t1, -13632($fp)
	lw $t1, -13632($fp)
	li $t2, 0
	bne $t1, $t2, label221
	j label220
label220:
	li $t0, 1
	sw $t0, -13612($fp)
label221:
	li $t0, 0
	sw $t0, -13636($fp)
	li $t0, 0
	sw $t0, -13640($fp)
	li $t0, 58786
	sw $t0, -13644($fp)
	li $t0, 50673
	sw $t0, -13648($fp)
	lw $t1, -13644($fp)
	lw $t2, -13648($fp)
	blt $t1, $t2, label224
	j label225
label224:
	li $t0, 1
	sw $t0, -13640($fp)
label225:
	lw $t0, -7140($fp)
	sw $t0, -13652($fp)
	lw $t1, -13640($fp)
	lw $t2, -13652($fp)
	blt $t1, $t2, label222
	j label223
label222:
	li $t0, 1
	sw $t0, -13636($fp)
label223:
	li $t0, 0
	sw $t0, -13656($fp)
	li $t0, 34170
	sw $t0, -13660($fp)
	lw $t0, -9732($fp)
	sw $t0, -13664($fp)
	lw $t1, -13660($fp)
	lw $t2, -13664($fp)
	beq $t1, $t2, label228
	j label227
label228:
	li $t0, 36667
	sw $t0, -13668($fp)
	lw $t1, -13668($fp)
	li $t2, 0
	bne $t1, $t2, label226
	j label227
label226:
	li $t0, 1
	sw $t0, -13656($fp)
label227:
	li $t0, 0
	sw $t0, -13672($fp)
	addi $t0, $fp, -548
	sw $t0, -13676($fp)
	lw $t0, -7320($fp)
	sw $t0, -13680($fp)
	li $t0, 4
	lw $t1, -13680($fp)
	mul $t0, $t0, $t1
	sw $t0, -13684($fp)
	lw $t0, -13684($fp)
	lw $t1, -13676($fp)
	add $t0, $t0, $t1
	sw $t0, -13688($fp)
	lw $t0, -13688($fp)
	lw $t1, 0($t0)
	sw $t1, -13692($fp)
	lw $t0, -1752($fp)
	sw $t0, -13696($fp)
	lw $t1, -13692($fp)
	lw $t2, -13696($fp)
	bne $t1, $t2, label229
	j label230
label229:
	li $t0, 1
	sw $t0, -13672($fp)
label230:
	li $t0, 0
	sw $t0, -13700($fp)
	li $t0, 12764
	sw $t0, -13704($fp)
	lw $t0, -1740($fp)
	sw $t0, -13708($fp)
	lw $t0, -13704($fp)
	lw $t1, -13708($fp)
	add $t0, $t0, $t1
	sw $t0, -13712($fp)
	li $t0, 64226
	sw $t0, -13716($fp)
	lw $t1, -13712($fp)
	lw $t2, -13716($fp)
	bne $t1, $t2, label231
	j label232
label231:
	li $t0, 1
	sw $t0, -13700($fp)
label232:
	li $t0, 0
	sw $t0, -13720($fp)
	lw $t0, -12108($fp)
	sw $t0, -13724($fp)
	li $t0, 37180
	sw $t0, -13728($fp)
	lw $t0, -13724($fp)
	lw $t1, -13728($fp)
	sub $t0, $t0, $t1
	sw $t0, -13732($fp)
	lw $t0, -9300($fp)
	sw $t0, -13736($fp)
	lw $t1, -13732($fp)
	lw $t2, -13736($fp)
	bgt $t1, $t2, label233
	j label234
label233:
	li $t0, 1
	sw $t0, -13720($fp)
label234:
	addi $sp, $sp, -4
	lw $t0, -13636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13720($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13740($fp)
	addi $sp, $sp, 24
	lw $t0, -13612($fp)
	lw $t1, -13740($fp)
	mul $t0, $t0, $t1
	sw $t0, -13744($fp)
	lw $ra, -4($fp)
	lw $v0, -13744($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label215:
	j label210
label212:
	j label207
label209:
	j label204
label206:
	j label190
label192:
	j label189
label188:
label235:
	li $t0, 0
	sw $t0, -13748($fp)
	li $t0, 0
	sw $t0, -13752($fp)
	li $t0, 3806
	sw $t0, -13756($fp)
	li $t0, 46839
	sw $t0, -13760($fp)
	lw $t0, -13756($fp)
	lw $t1, -13760($fp)
	mul $t0, $t0, $t1
	sw $t0, -13764($fp)
	li $t0, 40906
	sw $t0, -13768($fp)
	lw $t1, -13764($fp)
	lw $t2, -13768($fp)
	bge $t1, $t2, label240
	j label241
label240:
	li $t0, 1
	sw $t0, -13752($fp)
label241:
	lw $t0, -11040($fp)
	sw $t0, -13772($fp)
	lw $t0, -13772($fp)
	sw $t0, -7056($fp)
	lw $t0, -7056($fp)
	sw $t0, -13776($fp)
	li $t0, 0
	sw $t0, -13780($fp)
	lw $t0, -1764($fp)
	sw $t0, -13784($fp)
	lw $t1, -13784($fp)
	li $t2, 0
	bne $t1, $t2, label244
	j label243
label244:
	li $t0, 1904
	sw $t0, -13788($fp)
	lw $t1, -13788($fp)
	li $t2, 0
	bne $t1, $t2, label242
	j label243
label242:
	li $t0, 1
	sw $t0, -13780($fp)
label243:
	lw $t0, -2364($fp)
	sw $t0, -13792($fp)
	li $t0, 27688
	sw $t0, -13796($fp)
	lw $t0, -13792($fp)
	lw $t1, -13796($fp)
	mul $t0, $t0, $t1
	sw $t0, -13800($fp)
	li $t0, 0
	sw $t0, -13804($fp)
	li $t0, 12732
	sw $t0, -13808($fp)
	lw $t1, -13808($fp)
	li $t2, 0
	bne $t1, $t2, label245
	j label248
label248:
	li $t0, 19869
	sw $t0, -13812($fp)
	lw $t1, -13812($fp)
	li $t2, 0
	bne $t1, $t2, label245
	j label247
label247:
	li $t0, 20738
	sw $t0, -13816($fp)
	lw $t1, -13816($fp)
	li $t2, 0
	bne $t1, $t2, label245
	j label246
label245:
	li $t0, 1
	sw $t0, -13804($fp)
label246:
	addi $sp, $sp, -4
	lw $t0, -13752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13804($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -13820($fp)
	addi $sp, $sp, 24
	li $t0, 2119
	sw $t0, -13824($fp)
	addi $t0, $fp, -484
	sw $t0, -13828($fp)
	li $t0, 0
	sw $t0, -13832($fp)
	li $t0, 4
	lw $t1, -13832($fp)
	mul $t0, $t0, $t1
	sw $t0, -13836($fp)
	lw $t0, -13836($fp)
	lw $t1, -13828($fp)
	add $t0, $t0, $t1
	sw $t0, -13840($fp)
	lw $t0, -13840($fp)
	lw $t1, 0($t0)
	sw $t1, -13844($fp)
	li $t0, 0
	sw $t0, -13848($fp)
	li $t0, 25911
	sw $t0, -13852($fp)
	lw $t1, -13852($fp)
	li $t2, 0
	bne $t1, $t2, label249
	j label252
label252:
	lw $t0, -1776($fp)
	sw $t0, -13856($fp)
	lw $t1, -13856($fp)
	li $t2, 0
	bne $t1, $t2, label249
	j label251
label251:
	li $t0, 23938
	sw $t0, -13860($fp)
	lw $t1, -13860($fp)
	li $t2, 0
	bne $t1, $t2, label249
	j label250
label249:
	li $t0, 1
	sw $t0, -13848($fp)
label250:
	li $t0, 0
	sw $t0, -13864($fp)
	lw $t0, -5448($fp)
	sw $t0, -13868($fp)
	li $t0, 0
	lw $t1, -13868($fp)
	sub $t0, $t0, $t1
	sw $t0, -13872($fp)
	lw $t0, -9000($fp)
	sw $t0, -13876($fp)
	lw $t1, -13872($fp)
	lw $t2, -13876($fp)
	blt $t1, $t2, label253
	j label254
label253:
	li $t0, 1
	sw $t0, -13864($fp)
label254:
	li $t0, 0
	sw $t0, -13880($fp)
	li $t0, 0
	sw $t0, -13884($fp)
	li $t0, 37840
	sw $t0, -13888($fp)
	li $t0, 18825
	sw $t0, -13892($fp)
	lw $t1, -13888($fp)
	lw $t2, -13892($fp)
	ble $t1, $t2, label257
	j label258
label257:
	li $t0, 1
	sw $t0, -13884($fp)
label258:
	lw $t0, -3708($fp)
	sw $t0, -13896($fp)
	lw $t1, -13884($fp)
	lw $t2, -13896($fp)
	bgt $t1, $t2, label255
	j label256
label255:
	li $t0, 1
	sw $t0, -13880($fp)
label256:
	addi $sp, $sp, -4
	lw $t0, -13824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13880($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13900($fp)
	addi $sp, $sp, 24
	lw $t0, -12048($fp)
	sw $t0, -13904($fp)
	lw $t0, -13900($fp)
	lw $t1, -13904($fp)
	mul $t0, $t0, $t1
	sw $t0, -13908($fp)
	lw $t1, -13820($fp)
	lw $t2, -13908($fp)
	blt $t1, $t2, label238
	j label239
label238:
	li $t0, 1
	sw $t0, -13748($fp)
label239:
	lw $t0, -5016($fp)
	sw $t0, -13912($fp)
	lw $t1, -13748($fp)
	lw $t2, -13912($fp)
	blt $t1, $t2, label236
	j label237
label236:
	li $t0, 48201
	sw $t0, -13916($fp)
	lw $t0, -1788($fp)
	sw $t0, -13920($fp)
	li $t0, 0
	lw $t1, -13920($fp)
	sub $t0, $t0, $t1
	sw $t0, -13924($fp)
	lw $t0, -13916($fp)
	lw $t1, -13924($fp)
	add $t0, $t0, $t1
	sw $t0, -13928($fp)
	lw $ra, -4($fp)
	lw $v0, -13928($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label235
label237:
label189:
	j label179
label181:
	j label174
label173:
label259:
	li $t0, 52139
	sw $t0, -13932($fp)
	lw $t0, -13932($fp)
	sw $t0, -7044($fp)
	lw $t0, -7044($fp)
	sw $t0, -13936($fp)
	lw $t1, -13936($fp)
	li $t2, 0
	bne $t1, $t2, label260
	j label261
label260:
	li $t0, 0
	sw $t0, -13940($fp)
	lw $t0, -7140($fp)
	sw $t0, -13944($fp)
	lw $t0, -8436($fp)
	sw $t0, -13948($fp)
	lw $t0, -13944($fp)
	lw $t1, -13948($fp)
	mul $t0, $t0, $t1
	sw $t0, -13952($fp)
	addi $t0, $fp, -360
	sw $t0, -13956($fp)
	li $t0, 5
	sw $t0, -13960($fp)
	li $t0, 4
	lw $t1, -13960($fp)
	mul $t0, $t0, $t1
	sw $t0, -13964($fp)
	lw $t0, -13964($fp)
	lw $t1, -13956($fp)
	add $t0, $t0, $t1
	sw $t0, -13968($fp)
	lw $t0, -13968($fp)
	lw $t1, 0($t0)
	sw $t1, -13972($fp)
	lw $t0, -13952($fp)
	lw $t1, -13972($fp)
	sub $t0, $t0, $t1
	sw $t0, -13976($fp)
	lw $t0, -3048($fp)
	sw $t0, -13980($fp)
	lw $t1, -13976($fp)
	lw $t2, -13980($fp)
	beq $t1, $t2, label262
	j label263
label262:
	li $t0, 1
	sw $t0, -13940($fp)
label263:
	j label259
label261:
label174:
	j label163
label162:
	li $t0, 0
	sw $t0, -13984($fp)
	lw $t0, -9480($fp)
	sw $t0, -13988($fp)
	li $t0, 30877
	sw $t0, -13992($fp)
	lw $t0, -13988($fp)
	lw $t1, -13992($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13996($fp)
	lw $t0, -2676($fp)
	sw $t0, -14000($fp)
	lw $t1, -13996($fp)
	lw $t2, -14000($fp)
	bne $t1, $t2, label264
	j label265
label264:
	li $t0, 1
	sw $t0, -13984($fp)
label265:
	li $t0, 0
	sw $t0, -14004($fp)
	lw $t0, -10272($fp)
	sw $t0, -14008($fp)
	li $t0, 61541
	sw $t0, -14012($fp)
	lw $t0, -14008($fp)
	lw $t1, -14012($fp)
	add $t0, $t0, $t1
	sw $t0, -14016($fp)
	lw $t1, -14016($fp)
	li $t2, 0
	bne $t1, $t2, label268
	j label267
label268:
	lw $t0, -2016($fp)
	sw $t0, -14020($fp)
	lw $t1, -14020($fp)
	li $t2, 0
	bne $t1, $t2, label266
	j label267
label266:
	li $t0, 1
	sw $t0, -14004($fp)
label267:
	lw $t0, -5484($fp)
	sw $t0, -14024($fp)
	li $t0, 0
	sw $t0, -14028($fp)
	li $t0, 0
	sw $t0, -14032($fp)
	lw $t0, -7476($fp)
	sw $t0, -14036($fp)
	lw $t1, -14036($fp)
	li $t2, 0
	bne $t1, $t2, label272
	j label271
label271:
	li $t0, 1
	sw $t0, -14032($fp)
label272:
	lw $t0, -3348($fp)
	sw $t0, -14040($fp)
	lw $t1, -14032($fp)
	lw $t2, -14040($fp)
	beq $t1, $t2, label269
	j label270
label269:
	li $t0, 1
	sw $t0, -14028($fp)
label270:
	li $t0, 0
	sw $t0, -14044($fp)
	lw $t0, -1992($fp)
	sw $t0, -14048($fp)
	lw $t1, -14048($fp)
	li $t2, 0
	bne $t1, $t2, label274
	j label273
label273:
	li $t0, 1
	sw $t0, -14044($fp)
label274:
	li $t0, 0
	sw $t0, -14052($fp)
	addi $t0, $fp, -140
	sw $t0, -14056($fp)
	lw $t0, -5604($fp)
	sw $t0, -14060($fp)
	li $t0, 4
	lw $t1, -14060($fp)
	mul $t0, $t0, $t1
	sw $t0, -14064($fp)
	lw $t0, -14064($fp)
	lw $t1, -14056($fp)
	add $t0, $t0, $t1
	sw $t0, -14068($fp)
	lw $t0, -14068($fp)
	lw $t1, 0($t0)
	sw $t1, -14072($fp)
	li $t0, 29304
	sw $t0, -14076($fp)
	lw $t1, -14072($fp)
	lw $t2, -14076($fp)
	beq $t1, $t2, label275
	j label276
label275:
	li $t0, 1
	sw $t0, -14052($fp)
label276:
	li $t0, 0
	sw $t0, -14080($fp)
	lw $t0, -11976($fp)
	sw $t0, -14084($fp)
	lw $t0, -3048($fp)
	sw $t0, -14088($fp)
	lw $t0, -14084($fp)
	lw $t1, -14088($fp)
	add $t0, $t0, $t1
	sw $t0, -14092($fp)
	lw $t1, -14092($fp)
	li $t2, 0
	bne $t1, $t2, label279
	j label278
label279:
	li $t0, 4965
	sw $t0, -14096($fp)
	lw $t1, -14096($fp)
	li $t2, 0
	bne $t1, $t2, label277
	j label278
label277:
	li $t0, 1
	sw $t0, -14080($fp)
label278:
	addi $sp, $sp, -4
	lw $t0, -14024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14080($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14100($fp)
	addi $sp, $sp, 24
	lw $t0, -2004($fp)
	sw $t0, -14104($fp)
	lw $t0, -14100($fp)
	lw $t1, -14104($fp)
	sub $t0, $t0, $t1
	sw $t0, -14108($fp)
	lw $t0, -5892($fp)
	sw $t0, -14112($fp)
	lw $t0, -14112($fp)
	sw $t0, -7272($fp)
	lw $t0, -7272($fp)
	sw $t0, -14116($fp)
	lw $t0, -9504($fp)
	sw $t0, -14120($fp)
	li $t0, 0
	sw $t0, -14124($fp)
	lw $t0, -13212($fp)
	sw $t0, -14128($fp)
	li $t0, 57000
	sw $t0, -14132($fp)
	lw $t1, -14128($fp)
	lw $t2, -14132($fp)
	ble $t1, $t2, label280
	j label282
label282:
	lw $t0, -3252($fp)
	sw $t0, -14136($fp)
	lw $t1, -14136($fp)
	li $t2, 0
	bne $t1, $t2, label280
	j label281
label280:
	li $t0, 1
	sw $t0, -14124($fp)
label281:
	li $t0, 0
	sw $t0, -14140($fp)
	lw $t0, -1968($fp)
	sw $t0, -14144($fp)
	lw $t1, -14144($fp)
	li $t2, 0
	bne $t1, $t2, label286
	j label285
label286:
	li $t0, 29595
	sw $t0, -14148($fp)
	lw $t1, -14148($fp)
	li $t2, 0
	bne $t1, $t2, label283
	j label285
label285:
	lw $t0, -1980($fp)
	sw $t0, -14152($fp)
	lw $t1, -14152($fp)
	li $t2, 0
	bne $t1, $t2, label283
	j label284
label283:
	li $t0, 1
	sw $t0, -14140($fp)
label284:
	li $t0, 0
	sw $t0, -14156($fp)
	addi $t0, $fp, -88
	sw $t0, -14160($fp)
	li $t0, 2
	sw $t0, -14164($fp)
	li $t0, 4
	lw $t1, -14164($fp)
	mul $t0, $t0, $t1
	sw $t0, -14168($fp)
	lw $t0, -14168($fp)
	lw $t1, -14160($fp)
	add $t0, $t0, $t1
	sw $t0, -14172($fp)
	lw $t0, -14172($fp)
	lw $t1, 0($t0)
	sw $t1, -14176($fp)
	lw $t1, -14176($fp)
	li $t2, 0
	bne $t1, $t2, label288
	j label287
label287:
	li $t0, 1
	sw $t0, -14156($fp)
label288:
	addi $sp, $sp, -4
	lw $t0, -14116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14156($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -14180($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -14184($fp)
	li $t0, 0
	sw $t0, -14188($fp)
	li $t0, 0
	sw $t0, -14192($fp)
	li $t0, 7822
	sw $t0, -14196($fp)
	li $t0, 32455
	sw $t0, -14200($fp)
	lw $t1, -14196($fp)
	lw $t2, -14200($fp)
	bne $t1, $t2, label294
	j label295
label294:
	li $t0, 1
	sw $t0, -14192($fp)
label295:
	li $t0, 33725
	sw $t0, -14204($fp)
	lw $t1, -14192($fp)
	lw $t2, -14204($fp)
	beq $t1, $t2, label292
	j label293
label292:
	li $t0, 1
	sw $t0, -14188($fp)
label293:
	li $t0, 0
	sw $t0, -14208($fp)
	li $t0, 0
	sw $t0, -14212($fp)
	lw $t0, -7044($fp)
	sw $t0, -14216($fp)
	lw $t0, -2676($fp)
	sw $t0, -14220($fp)
	lw $t1, -14216($fp)
	lw $t2, -14220($fp)
	blt $t1, $t2, label298
	j label299
label298:
	li $t0, 1
	sw $t0, -14212($fp)
label299:
	li $t0, 20992
	sw $t0, -14224($fp)
	lw $t1, -14212($fp)
	lw $t2, -14224($fp)
	beq $t1, $t2, label296
	j label297
label296:
	li $t0, 1
	sw $t0, -14208($fp)
label297:
	li $t0, 0
	sw $t0, -14228($fp)
	li $t0, 47317
	sw $t0, -14232($fp)
	lw $t1, -14232($fp)
	li $t2, 0
	bne $t1, $t2, label301
	j label300
label300:
	li $t0, 1
	sw $t0, -14228($fp)
label301:
	li $t0, 0
	sw $t0, -14236($fp)
	lw $t0, -6000($fp)
	sw $t0, -14240($fp)
	li $t0, 49861
	sw $t0, -14244($fp)
	lw $t0, -14240($fp)
	lw $t1, -14244($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -14248($fp)
	li $t0, 14572
	sw $t0, -14252($fp)
	lw $t1, -14248($fp)
	lw $t2, -14252($fp)
	bne $t1, $t2, label302
	j label303
label302:
	li $t0, 1
	sw $t0, -14236($fp)
label303:
	li $t0, 0
	sw $t0, -14256($fp)
	lw $t0, -3744($fp)
	sw $t0, -14260($fp)
	li $t0, 13147
	sw $t0, -14264($fp)
	lw $t1, -14260($fp)
	lw $t2, -14264($fp)
	bne $t1, $t2, label304
	j label305
label304:
	li $t0, 1
	sw $t0, -14256($fp)
label305:
	addi $sp, $sp, -4
	lw $t0, -14188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14256($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14268($fp)
	addi $sp, $sp, 24
	lw $t1, -14268($fp)
	li $t2, 0
	bne $t1, $t2, label289
	j label291
label291:
	li $t0, 27691
	sw $t0, -14272($fp)
	lw $t1, -14272($fp)
	li $t2, 0
	bne $t1, $t2, label289
	j label290
label289:
	li $t0, 1
	sw $t0, -14184($fp)
label290:
	li $t0, 0
	sw $t0, -14276($fp)
	li $t0, 15882
	sw $t0, -14280($fp)
	lw $t1, -14280($fp)
	li $t2, 0
	bne $t1, $t2, label306
	j label307
label306:
	li $t0, 1
	sw $t0, -14276($fp)
label307:
	li $t0, 0
	sw $t0, -14284($fp)
	li $t0, 41502
	sw $t0, -14288($fp)
	li $t0, 37097
	sw $t0, -14292($fp)
	lw $t1, -14288($fp)
	lw $t2, -14292($fp)
	beq $t1, $t2, label308
	j label309
label308:
	li $t0, 1
	sw $t0, -14284($fp)
label309:
	li $t0, 30164
	sw $t0, -14296($fp)
	lw $t0, -14296($fp)
	sw $t0, -13152($fp)
	lw $t0, -13152($fp)
	sw $t0, -14300($fp)
	addi $sp, $sp, -4
	lw $t0, -14180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14300($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -14304($fp)
	addi $sp, $sp, 24
	li $t0, 42716
	sw $t0, -14308($fp)
	lw $t0, -14304($fp)
	lw $t1, -14308($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -14312($fp)
	li $t0, 44208
	sw $t0, -14316($fp)
	addi $sp, $sp, -4
	lw $t0, -13984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14316($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14320($fp)
	addi $sp, $sp, 24
	lw $ra, -4($fp)
	lw $v0, -14320($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label163:
	j label160
label159:
	li $t0, 53242
	sw $t0, -14356($fp)
	lw $t0, -14356($fp)
	sw $t0, -14360($fp)
	lw $t0, -14360($fp)
	sw $t0, -14364($fp)
	li $t0, 2952
	sw $t0, -14368($fp)
	lw $t0, -14368($fp)
	sw $t0, -14372($fp)
	lw $t0, -14372($fp)
	sw $t0, -14376($fp)
	li $t0, 17606
	sw $t0, -14380($fp)
	lw $t0, -14380($fp)
	sw $t0, -14384($fp)
	lw $t0, -14384($fp)
	sw $t0, -14388($fp)
	li $t0, 55362
	sw $t0, -14392($fp)
	addi $t0, $fp, -14352
	sw $t0, -14396($fp)
	li $t0, 0
	sw $t0, -14400($fp)
	lw $t0, -14400($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -14404($fp)
	lw $t0, -14396($fp)
	lw $t1, -14404($fp)
	add $t0, $t0, $t1
	sw $t0, -14408($fp)
	lw $t0, -14392($fp)
	lw $t1, -14408($fp)
	sw $t0, 0($t1)
	lw $t0, -14408($fp)
	lw $t1, 0($t0)
	sw $t1, -14412($fp)
	li $t0, 51153
	sw $t0, -14416($fp)
	addi $t0, $fp, -14352
	sw $t0, -14420($fp)
	li $t0, 1
	sw $t0, -14424($fp)
	lw $t0, -14424($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -14428($fp)
	lw $t0, -14420($fp)
	lw $t1, -14428($fp)
	add $t0, $t0, $t1
	sw $t0, -14432($fp)
	lw $t0, -14416($fp)
	lw $t1, -14432($fp)
	sw $t0, 0($t1)
	lw $t0, -14432($fp)
	lw $t1, 0($t0)
	sw $t1, -14436($fp)
	li $t0, 4209
	sw $t0, -14440($fp)
	addi $t0, $fp, -14352
	sw $t0, -14444($fp)
	li $t0, 2
	sw $t0, -14448($fp)
	lw $t0, -14448($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -14452($fp)
	lw $t0, -14444($fp)
	lw $t1, -14452($fp)
	add $t0, $t0, $t1
	sw $t0, -14456($fp)
	lw $t0, -14440($fp)
	lw $t1, -14456($fp)
	sw $t0, 0($t1)
	lw $t0, -14456($fp)
	lw $t1, 0($t0)
	sw $t1, -14460($fp)
	li $t0, 4101
	sw $t0, -14464($fp)
	addi $t0, $fp, -14352
	sw $t0, -14468($fp)
	li $t0, 3
	sw $t0, -14472($fp)
	lw $t0, -14472($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -14476($fp)
	lw $t0, -14468($fp)
	lw $t1, -14476($fp)
	add $t0, $t0, $t1
	sw $t0, -14480($fp)
	lw $t0, -14464($fp)
	lw $t1, -14480($fp)
	sw $t0, 0($t1)
	lw $t0, -14480($fp)
	lw $t1, 0($t0)
	sw $t1, -14484($fp)
	li $t0, 63540
	sw $t0, -14488($fp)
	addi $t0, $fp, -14352
	sw $t0, -14492($fp)
	li $t0, 4
	sw $t0, -14496($fp)
	lw $t0, -14496($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -14500($fp)
	lw $t0, -14492($fp)
	lw $t1, -14500($fp)
	add $t0, $t0, $t1
	sw $t0, -14504($fp)
	lw $t0, -14488($fp)
	lw $t1, -14504($fp)
	sw $t0, 0($t1)
	lw $t0, -14504($fp)
	lw $t1, 0($t0)
	sw $t1, -14508($fp)
	li $t0, 48417
	sw $t0, -14512($fp)
	addi $t0, $fp, -14352
	sw $t0, -14516($fp)
	li $t0, 5
	sw $t0, -14520($fp)
	lw $t0, -14520($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -14524($fp)
	lw $t0, -14516($fp)
	lw $t1, -14524($fp)
	add $t0, $t0, $t1
	sw $t0, -14528($fp)
	lw $t0, -14512($fp)
	lw $t1, -14528($fp)
	sw $t0, 0($t1)
	lw $t0, -14528($fp)
	lw $t1, 0($t0)
	sw $t1, -14532($fp)
	li $t0, 34265
	sw $t0, -14536($fp)
	addi $t0, $fp, -14352
	sw $t0, -14540($fp)
	li $t0, 6
	sw $t0, -14544($fp)
	lw $t0, -14544($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -14548($fp)
	lw $t0, -14540($fp)
	lw $t1, -14548($fp)
	add $t0, $t0, $t1
	sw $t0, -14552($fp)
	lw $t0, -14536($fp)
	lw $t1, -14552($fp)
	sw $t0, 0($t1)
	lw $t0, -14552($fp)
	lw $t1, 0($t0)
	sw $t1, -14556($fp)
	li $t0, 39507
	sw $t0, -14560($fp)
	addi $t0, $fp, -14352
	sw $t0, -14564($fp)
	li $t0, 7
	sw $t0, -14568($fp)
	lw $t0, -14568($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -14572($fp)
	lw $t0, -14564($fp)
	lw $t1, -14572($fp)
	add $t0, $t0, $t1
	sw $t0, -14576($fp)
	lw $t0, -14560($fp)
	lw $t1, -14576($fp)
	sw $t0, 0($t1)
	lw $t0, -14576($fp)
	lw $t1, 0($t0)
	sw $t1, -14580($fp)
	li $t0, 0
	sw $t0, -14584($fp)
	lw $t0, -9516($fp)
	sw $t0, -14588($fp)
	li $t0, 0
	sw $t0, -14592($fp)
	lw $t0, -14360($fp)
	sw $t0, -14596($fp)
	li $t0, 19979
	sw $t0, -14600($fp)
	lw $t1, -14596($fp)
	lw $t2, -14600($fp)
	bgt $t1, $t2, label316
	j label317
label316:
	li $t0, 1
	sw $t0, -14592($fp)
label317:
	lw $t1, -14588($fp)
	lw $t2, -14592($fp)
	beq $t1, $t2, label314
	j label315
label314:
	li $t0, 1
	sw $t0, -14584($fp)
label315:
	li $t0, 0
	sw $t0, -14604($fp)
	lw $t0, -14372($fp)
	sw $t0, -14608($fp)
	li $t0, 50147
	sw $t0, -14612($fp)
	lw $t0, -14608($fp)
	lw $t1, -14612($fp)
	mul $t0, $t0, $t1
	sw $t0, -14616($fp)
	li $t0, 52654
	sw $t0, -14620($fp)
	lw $t1, -14616($fp)
	lw $t2, -14620($fp)
	ble $t1, $t2, label318
	j label319
label318:
	li $t0, 1
	sw $t0, -14604($fp)
label319:
	lw $t1, -14584($fp)
	lw $t2, -14604($fp)
	bne $t1, $t2, label313
	j label311
label313:
	addi $t0, $fp, -484
	sw $t0, -14624($fp)
	li $t0, 4304
	sw $t0, -14628($fp)
	lw $t0, -13032($fp)
	sw $t0, -14632($fp)
	lw $t0, -14628($fp)
	lw $t1, -14632($fp)
	add $t0, $t0, $t1
	sw $t0, -14636($fp)
	li $t0, 4
	lw $t1, -14636($fp)
	mul $t0, $t0, $t1
	sw $t0, -14640($fp)
	lw $t0, -14640($fp)
	lw $t1, -14624($fp)
	add $t0, $t0, $t1
	sw $t0, -14644($fp)
	lw $t0, -14644($fp)
	lw $t1, 0($t0)
	sw $t1, -14648($fp)
	lw $t1, -14648($fp)
	li $t2, 0
	bne $t1, $t2, label310
	j label311
label310:
	li $t0, 64719
	sw $t0, -14688($fp)
	lw $t0, -14688($fp)
	sw $t0, -14692($fp)
	lw $t0, -14692($fp)
	sw $t0, -14696($fp)
	li $t0, 34435
	sw $t0, -14700($fp)
	lw $t0, -14700($fp)
	sw $t0, -14704($fp)
	lw $t0, -14704($fp)
	sw $t0, -14708($fp)
	li $t0, 25297
	sw $t0, -14712($fp)
	lw $t0, -14712($fp)
	sw $t0, -14716($fp)
	lw $t0, -14716($fp)
	sw $t0, -14720($fp)
	li $t0, 7005
	sw $t0, -14724($fp)
	addi $t0, $fp, -14684
	sw $t0, -14728($fp)
	li $t0, 0
	sw $t0, -14732($fp)
	lw $t0, -14732($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -14736($fp)
	lw $t0, -14728($fp)
	lw $t1, -14736($fp)
	add $t0, $t0, $t1
	sw $t0, -14740($fp)
	lw $t0, -14724($fp)
	lw $t1, -14740($fp)
	sw $t0, 0($t1)
	lw $t0, -14740($fp)
	lw $t1, 0($t0)
	sw $t1, -14744($fp)
	li $t0, 1354
	sw $t0, -14748($fp)
	addi $t0, $fp, -14684
	sw $t0, -14752($fp)
	li $t0, 1
	sw $t0, -14756($fp)
	lw $t0, -14756($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -14760($fp)
	lw $t0, -14752($fp)
	lw $t1, -14760($fp)
	add $t0, $t0, $t1
	sw $t0, -14764($fp)
	lw $t0, -14748($fp)
	lw $t1, -14764($fp)
	sw $t0, 0($t1)
	lw $t0, -14764($fp)
	lw $t1, 0($t0)
	sw $t1, -14768($fp)
	li $t0, 59022
	sw $t0, -14772($fp)
	addi $t0, $fp, -14684
	sw $t0, -14776($fp)
	li $t0, 2
	sw $t0, -14780($fp)
	lw $t0, -14780($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -14784($fp)
	lw $t0, -14776($fp)
	lw $t1, -14784($fp)
	add $t0, $t0, $t1
	sw $t0, -14788($fp)
	lw $t0, -14772($fp)
	lw $t1, -14788($fp)
	sw $t0, 0($t1)
	lw $t0, -14788($fp)
	lw $t1, 0($t0)
	sw $t1, -14792($fp)
	li $t0, 34696
	sw $t0, -14796($fp)
	addi $t0, $fp, -14684
	sw $t0, -14800($fp)
	li $t0, 3
	sw $t0, -14804($fp)
	lw $t0, -14804($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -14808($fp)
	lw $t0, -14800($fp)
	lw $t1, -14808($fp)
	add $t0, $t0, $t1
	sw $t0, -14812($fp)
	lw $t0, -14796($fp)
	lw $t1, -14812($fp)
	sw $t0, 0($t1)
	lw $t0, -14812($fp)
	lw $t1, 0($t0)
	sw $t1, -14816($fp)
	li $t0, 54548
	sw $t0, -14820($fp)
	addi $t0, $fp, -14684
	sw $t0, -14824($fp)
	li $t0, 4
	sw $t0, -14828($fp)
	lw $t0, -14828($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -14832($fp)
	lw $t0, -14824($fp)
	lw $t1, -14832($fp)
	add $t0, $t0, $t1
	sw $t0, -14836($fp)
	lw $t0, -14820($fp)
	lw $t1, -14836($fp)
	sw $t0, 0($t1)
	lw $t0, -14836($fp)
	lw $t1, 0($t0)
	sw $t1, -14840($fp)
	li $t0, 54899
	sw $t0, -14844($fp)
	addi $t0, $fp, -14684
	sw $t0, -14848($fp)
	li $t0, 5
	sw $t0, -14852($fp)
	lw $t0, -14852($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -14856($fp)
	lw $t0, -14848($fp)
	lw $t1, -14856($fp)
	add $t0, $t0, $t1
	sw $t0, -14860($fp)
	lw $t0, -14844($fp)
	lw $t1, -14860($fp)
	sw $t0, 0($t1)
	lw $t0, -14860($fp)
	lw $t1, 0($t0)
	sw $t1, -14864($fp)
	li $t0, 64292
	sw $t0, -14868($fp)
	addi $t0, $fp, -14684
	sw $t0, -14872($fp)
	li $t0, 6
	sw $t0, -14876($fp)
	lw $t0, -14876($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -14880($fp)
	lw $t0, -14872($fp)
	lw $t1, -14880($fp)
	add $t0, $t0, $t1
	sw $t0, -14884($fp)
	lw $t0, -14868($fp)
	lw $t1, -14884($fp)
	sw $t0, 0($t1)
	lw $t0, -14884($fp)
	lw $t1, 0($t0)
	sw $t1, -14888($fp)
	li $t0, 46012
	sw $t0, -14892($fp)
	addi $t0, $fp, -14684
	sw $t0, -14896($fp)
	li $t0, 7
	sw $t0, -14900($fp)
	lw $t0, -14900($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -14904($fp)
	lw $t0, -14896($fp)
	lw $t1, -14904($fp)
	add $t0, $t0, $t1
	sw $t0, -14908($fp)
	lw $t0, -14892($fp)
	lw $t1, -14908($fp)
	sw $t0, 0($t1)
	lw $t0, -14908($fp)
	lw $t1, 0($t0)
	sw $t1, -14912($fp)
	li $t0, 32079
	sw $t0, -14916($fp)
	addi $t0, $fp, -14684
	sw $t0, -14920($fp)
	li $t0, 8
	sw $t0, -14924($fp)
	lw $t0, -14924($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -14928($fp)
	lw $t0, -14920($fp)
	lw $t1, -14928($fp)
	add $t0, $t0, $t1
	sw $t0, -14932($fp)
	lw $t0, -14916($fp)
	lw $t1, -14932($fp)
	sw $t0, 0($t1)
	lw $t0, -14932($fp)
	lw $t1, 0($t0)
	sw $t1, -14936($fp)
	li $t0, 3721
	sw $t0, -14940($fp)
	lw $t0, -14940($fp)
	sw $t0, -14944($fp)
	lw $t0, -14944($fp)
	sw $t0, -14948($fp)
	lw $t0, -14692($fp)
	sw $t0, -14952($fp)
	li $t0, 9780
	sw $t0, -14956($fp)
	lw $t0, -14952($fp)
	lw $t1, -14956($fp)
	add $t0, $t0, $t1
	sw $t0, -14960($fp)
	lw $t1, -14960($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label324
label324:
	li $t0, 0
	sw $t0, -14964($fp)
	lw $t0, -12108($fp)
	sw $t0, -14968($fp)
	li $t0, 28084
	sw $t0, -14972($fp)
	lw $t1, -14968($fp)
	lw $t2, -14972($fp)
	ble $t1, $t2, label325
	j label326
label325:
	li $t0, 1
	sw $t0, -14964($fp)
label326:
	li $t0, 34598
	sw $t0, -14976($fp)
	lw $t1, -14964($fp)
	lw $t2, -14976($fp)
	bgt $t1, $t2, label320
	j label323
label323:
	li $t0, 0
	sw $t0, -14980($fp)
	li $t0, 52204
	sw $t0, -14984($fp)
	li $t0, 52848
	sw $t0, -14988($fp)
	lw $t0, -14984($fp)
	lw $t1, -14988($fp)
	add $t0, $t0, $t1
	sw $t0, -14992($fp)
	lw $t1, -14992($fp)
	li $t2, 0
	bne $t1, $t2, label327
	j label329
label329:
	li $t0, 16653
	sw $t0, -14996($fp)
	lw $t1, -14996($fp)
	li $t2, 0
	bne $t1, $t2, label327
	j label328
label327:
	li $t0, 1
	sw $t0, -14980($fp)
label328:
	li $t0, 0
	sw $t0, -15000($fp)
	lw $t0, -14704($fp)
	sw $t0, -15004($fp)
	li $t0, 31036
	sw $t0, -15008($fp)
	lw $t0, -15004($fp)
	lw $t1, -15008($fp)
	add $t0, $t0, $t1
	sw $t0, -15012($fp)
	lw $t0, -6000($fp)
	sw $t0, -15016($fp)
	lw $t1, -15012($fp)
	lw $t2, -15016($fp)
	bgt $t1, $t2, label330
	j label331
label330:
	li $t0, 1
	sw $t0, -15000($fp)
label331:
	li $t0, 0
	sw $t0, -15020($fp)
	li $t0, 63022
	sw $t0, -15024($fp)
	lw $t1, -15024($fp)
	li $t2, 0
	bne $t1, $t2, label332
	j label334
label334:
	lw $t0, -2028($fp)
	sw $t0, -15028($fp)
	lw $t1, -15028($fp)
	li $t2, 0
	bne $t1, $t2, label332
	j label333
label332:
	li $t0, 1
	sw $t0, -15020($fp)
label333:
	lw $t0, -13020($fp)
	sw $t0, -15032($fp)
	li $t0, 0
	lw $t1, -15032($fp)
	sub $t0, $t0, $t1
	sw $t0, -15036($fp)
	lw $t0, -10272($fp)
	sw $t0, -15040($fp)
	addi $sp, $sp, -4
	lw $t0, -14980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15040($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15044($fp)
	addi $sp, $sp, 24
	lw $t1, -15044($fp)
	li $t2, 0
	bne $t1, $t2, label321
	j label320
label320:
	addi $t0, $fp, -128
	sw $t0, -15048($fp)
	li $t0, 0
	sw $t0, -15052($fp)
	li $t0, 4
	lw $t1, -15052($fp)
	mul $t0, $t0, $t1
	sw $t0, -15056($fp)
	lw $t0, -15056($fp)
	lw $t1, -15048($fp)
	add $t0, $t0, $t1
	sw $t0, -15060($fp)
	lw $t0, -15060($fp)
	lw $t1, 0($t0)
	sw $t1, -15064($fp)
	li $t0, 14658
	sw $t0, -15068($fp)
	lw $t0, -15064($fp)
	lw $t1, -15068($fp)
	mul $t0, $t0, $t1
	sw $t0, -15072($fp)
	li $t0, 0
	sw $t0, -15076($fp)
	lw $t0, -2280($fp)
	sw $t0, -15080($fp)
	lw $t1, -15080($fp)
	li $t2, 0
	bne $t1, $t2, label335
	j label336
label335:
	li $t0, 1
	sw $t0, -15076($fp)
label336:
	lw $t0, -15072($fp)
	lw $t1, -15076($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15084($fp)
	addi $t0, $fp, -320
	sw $t0, -15088($fp)
	lw $t0, -10704($fp)
	sw $t0, -15092($fp)
	li $t0, 4
	lw $t1, -15092($fp)
	mul $t0, $t0, $t1
	sw $t0, -15096($fp)
	lw $t0, -15096($fp)
	lw $t1, -15088($fp)
	add $t0, $t0, $t1
	sw $t0, -15100($fp)
	lw $t0, -15100($fp)
	lw $t1, 0($t0)
	sw $t1, -15104($fp)
	li $t0, 0
	lw $t1, -15104($fp)
	sub $t0, $t0, $t1
	sw $t0, -15108($fp)
	lw $t0, -15084($fp)
	lw $t1, -15108($fp)
	sub $t0, $t0, $t1
	sw $t0, -15112($fp)
	lw $ra, -4($fp)
	lw $v0, -15112($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label322
label321:
	li $t0, 0
	sw $t0, -15116($fp)
	lw $t0, -11004($fp)
	sw $t0, -15120($fp)
	lw $t0, -13164($fp)
	sw $t0, -15124($fp)
	lw $t0, -15120($fp)
	lw $t1, -15124($fp)
	mul $t0, $t0, $t1
	sw $t0, -15128($fp)
	lw $t1, -15128($fp)
	li $t2, 0
	bne $t1, $t2, label337
	j label339
label339:
	li $t0, 23339
	sw $t0, -15132($fp)
	lw $t1, -15132($fp)
	li $t2, 0
	bne $t1, $t2, label337
	j label338
label337:
	li $t0, 1
	sw $t0, -15116($fp)
label338:
	addi $t0, $fp, -14684
	sw $t0, -15136($fp)
	lw $t0, -14944($fp)
	sw $t0, -15140($fp)
	li $t0, 4
	lw $t1, -15140($fp)
	mul $t0, $t0, $t1
	sw $t0, -15144($fp)
	lw $t0, -15144($fp)
	lw $t1, -15136($fp)
	add $t0, $t0, $t1
	sw $t0, -15148($fp)
	lw $t0, -15148($fp)
	lw $t1, 0($t0)
	sw $t1, -15152($fp)
	li $t0, 10182
	sw $t0, -15156($fp)
	lw $t0, -15152($fp)
	lw $t1, -15156($fp)
	sub $t0, $t0, $t1
	sw $t0, -15160($fp)
	lw $t0, -14716($fp)
	sw $t0, -15164($fp)
	li $t0, 0
	sw $t0, -15168($fp)
	li $t0, 41283
	sw $t0, -15172($fp)
	li $t0, 63578
	sw $t0, -15176($fp)
	lw $t0, -15172($fp)
	lw $t1, -15176($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15180($fp)
	li $t0, 9474
	sw $t0, -15184($fp)
	lw $t1, -15180($fp)
	lw $t2, -15184($fp)
	bne $t1, $t2, label340
	j label341
label340:
	li $t0, 1
	sw $t0, -15168($fp)
label341:
	li $t0, 0
	sw $t0, -15188($fp)
	lw $t0, -12012($fp)
	sw $t0, -15192($fp)
	li $t0, 10291
	sw $t0, -15196($fp)
	lw $t0, -15192($fp)
	lw $t1, -15196($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15200($fp)
	lw $t0, -10092($fp)
	sw $t0, -15204($fp)
	lw $t1, -15200($fp)
	lw $t2, -15204($fp)
	beq $t1, $t2, label342
	j label343
label342:
	li $t0, 1
	sw $t0, -15188($fp)
label343:
	li $t0, 0
	sw $t0, -15208($fp)
	lw $t0, -6084($fp)
	sw $t0, -15212($fp)
	li $t0, 0
	lw $t1, -15212($fp)
	sub $t0, $t0, $t1
	sw $t0, -15216($fp)
	lw $t1, -15216($fp)
	li $t2, 0
	bne $t1, $t2, label344
	j label346
label346:
	li $t0, 59274
	sw $t0, -15220($fp)
	lw $t1, -15220($fp)
	li $t2, 0
	bne $t1, $t2, label344
	j label345
label344:
	li $t0, 1
	sw $t0, -15208($fp)
label345:
	li $t0, 0
	sw $t0, -15224($fp)
	addi $t0, $fp, -40
	sw $t0, -15228($fp)
	lw $t0, -13056($fp)
	sw $t0, -15232($fp)
	li $t0, 4
	lw $t1, -15232($fp)
	mul $t0, $t0, $t1
	sw $t0, -15236($fp)
	lw $t0, -15236($fp)
	lw $t1, -15228($fp)
	add $t0, $t0, $t1
	sw $t0, -15240($fp)
	lw $t0, -15240($fp)
	lw $t1, 0($t0)
	sw $t1, -15244($fp)
	lw $t1, -15244($fp)
	li $t2, 0
	bne $t1, $t2, label349
	j label348
label349:
	li $t0, 54165
	sw $t0, -15248($fp)
	lw $t1, -15248($fp)
	li $t2, 0
	bne $t1, $t2, label347
	j label348
label347:
	li $t0, 1
	sw $t0, -15224($fp)
label348:
	lw $t0, -5856($fp)
	sw $t0, -15252($fp)
	lw $t0, -15252($fp)
	sw $t0, -9288($fp)
	lw $t0, -9288($fp)
	sw $t0, -15256($fp)
	addi $sp, $sp, -4
	lw $t0, -15168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15256($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15260($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -15264($fp)
	li $t0, 39295
	sw $t0, -15268($fp)
	li $t0, 25679
	sw $t0, -15272($fp)
	lw $t0, -15268($fp)
	lw $t1, -15272($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15276($fp)
	lw $t0, -2292($fp)
	sw $t0, -15280($fp)
	lw $t1, -15276($fp)
	lw $t2, -15280($fp)
	bge $t1, $t2, label350
	j label351
label350:
	li $t0, 1
	sw $t0, -15264($fp)
label351:
	addi $sp, $sp, -4
	lw $t0, -15116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15264($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -15284($fp)
	addi $sp, $sp, 24
	lw $ra, -4($fp)
	lw $v0, -15284($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label322:
label311:
	li $t0, 0
	sw $t0, -15288($fp)
	addi $t0, $fp, -1336
	sw $t0, -15292($fp)
	lw $t0, -9900($fp)
	sw $t0, -15296($fp)
	li $t0, 4
	lw $t1, -15296($fp)
	mul $t0, $t0, $t1
	sw $t0, -15300($fp)
	lw $t0, -15300($fp)
	lw $t1, -15292($fp)
	add $t0, $t0, $t1
	sw $t0, -15304($fp)
	lw $t0, -15304($fp)
	lw $t1, 0($t0)
	sw $t1, -15308($fp)
	lw $t1, -15308($fp)
	li $t2, 0
	bne $t1, $t2, label353
	j label352
label352:
	li $t0, 1
	sw $t0, -15288($fp)
label353:
	li $t0, 0
	sw $t0, -15312($fp)
	li $t0, 49932
	sw $t0, -15316($fp)
	lw $t1, -15316($fp)
	li $t2, 0
	bne $t1, $t2, label357
	j label355
label357:
	lw $t0, -1380($fp)
	sw $t0, -15320($fp)
	lw $t1, -15320($fp)
	li $t2, 0
	bne $t1, $t2, label356
	j label355
label356:
	li $t0, 46561
	sw $t0, -15324($fp)
	lw $t1, -15324($fp)
	li $t2, 0
	bne $t1, $t2, label354
	j label355
label354:
	li $t0, 1
	sw $t0, -15312($fp)
label355:
	li $t0, 0
	sw $t0, -15328($fp)
	li $t0, 549
	sw $t0, -15332($fp)
	li $t0, 6188
	sw $t0, -15336($fp)
	lw $t0, -15332($fp)
	lw $t1, -15336($fp)
	sub $t0, $t0, $t1
	sw $t0, -15340($fp)
	lw $t1, -15340($fp)
	li $t2, 0
	bne $t1, $t2, label360
	j label359
label360:
	lw $t0, -2316($fp)
	sw $t0, -15344($fp)
	lw $t1, -15344($fp)
	li $t2, 0
	bne $t1, $t2, label358
	j label359
label358:
	li $t0, 1
	sw $t0, -15328($fp)
label359:
	li $t0, 0
	sw $t0, -15348($fp)
	li $t0, 16825
	sw $t0, -15352($fp)
	li $t0, 51176
	sw $t0, -15356($fp)
	lw $t1, -15352($fp)
	lw $t2, -15356($fp)
	bne $t1, $t2, label363
	j label362
label363:
	lw $t0, -9876($fp)
	sw $t0, -15360($fp)
	lw $t1, -15360($fp)
	li $t2, 0
	bne $t1, $t2, label361
	j label362
label361:
	li $t0, 1
	sw $t0, -15348($fp)
label362:
	li $t0, 0
	sw $t0, -15364($fp)
	lw $t0, -13020($fp)
	sw $t0, -15368($fp)
	li $t0, 11537
	sw $t0, -15372($fp)
	lw $t1, -15368($fp)
	lw $t2, -15372($fp)
	bne $t1, $t2, label366
	j label365
label366:
	lw $t0, -9348($fp)
	sw $t0, -15376($fp)
	lw $t1, -15376($fp)
	li $t2, 0
	bne $t1, $t2, label364
	j label365
label364:
	li $t0, 1
	sw $t0, -15364($fp)
label365:
	li $t0, 16480
	sw $t0, -15380($fp)
	lw $t0, -2304($fp)
	sw $t0, -15384($fp)
	lw $t0, -15380($fp)
	lw $t1, -15384($fp)
	mul $t0, $t0, $t1
	sw $t0, -15388($fp)
	lw $t0, -12120($fp)
	sw $t0, -15392($fp)
	lw $t0, -15388($fp)
	lw $t1, -15392($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15396($fp)
	li $t0, 0
	sw $t0, -15400($fp)
	li $t0, 0
	sw $t0, -15404($fp)
	lw $t0, -14384($fp)
	sw $t0, -15408($fp)
	lw $t0, -6348($fp)
	sw $t0, -15412($fp)
	lw $t1, -15408($fp)
	lw $t2, -15412($fp)
	bne $t1, $t2, label369
	j label370
label369:
	li $t0, 1
	sw $t0, -15404($fp)
label370:
	lw $t0, -6660($fp)
	sw $t0, -15416($fp)
	lw $t1, -15404($fp)
	lw $t2, -15416($fp)
	beq $t1, $t2, label367
	j label368
label367:
	li $t0, 1
	sw $t0, -15400($fp)
label368:
	li $t0, 0
	sw $t0, -15420($fp)
	lw $t0, -6792($fp)
	sw $t0, -15424($fp)
	lw $t0, -13176($fp)
	sw $t0, -15428($fp)
	lw $t1, -15424($fp)
	lw $t2, -15428($fp)
	bne $t1, $t2, label371
	j label372
label371:
	li $t0, 1
	sw $t0, -15420($fp)
label372:
	addi $sp, $sp, -4
	lw $t0, -15348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15420($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -15432($fp)
	addi $sp, $sp, 24
	lw $t0, -5448($fp)
	sw $t0, -15436($fp)
	lw $t0, -15436($fp)
	sw $t0, -10260($fp)
	lw $t0, -10260($fp)
	sw $t0, -15440($fp)
	addi $sp, $sp, -4
	lw $t0, -15288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15440($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -15444($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -14352
	sw $t0, -15448($fp)
	lw $t0, -13164($fp)
	sw $t0, -15452($fp)
	li $t0, 4
	lw $t1, -15452($fp)
	mul $t0, $t0, $t1
	sw $t0, -15456($fp)
	lw $t0, -15456($fp)
	lw $t1, -15448($fp)
	add $t0, $t0, $t1
	sw $t0, -15460($fp)
	lw $t0, -15460($fp)
	lw $t1, 0($t0)
	sw $t1, -15464($fp)
	lw $t0, -2328($fp)
	sw $t0, -15468($fp)
	li $t0, 0
	lw $t1, -15468($fp)
	sub $t0, $t0, $t1
	sw $t0, -15472($fp)
	li $t0, 0
	sw $t0, -15476($fp)
	li $t0, 0
	sw $t0, -15480($fp)
	lw $t0, -5184($fp)
	sw $t0, -15484($fp)
	lw $t0, -9348($fp)
	sw $t0, -15488($fp)
	lw $t1, -15484($fp)
	lw $t2, -15488($fp)
	blt $t1, $t2, label375
	j label376
label375:
	li $t0, 1
	sw $t0, -15480($fp)
label376:
	lw $t0, -6684($fp)
	sw $t0, -15492($fp)
	lw $t1, -15480($fp)
	lw $t2, -15492($fp)
	bge $t1, $t2, label373
	j label374
label373:
	li $t0, 1
	sw $t0, -15476($fp)
label374:
	li $t0, 0
	sw $t0, -15496($fp)
	lw $t0, -9912($fp)
	sw $t0, -15500($fp)
	li $t0, 53654
	sw $t0, -15504($fp)
	lw $t0, -15500($fp)
	lw $t1, -15504($fp)
	mul $t0, $t0, $t1
	sw $t0, -15508($fp)
	lw $t1, -15508($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label378
label379:
	lw $t0, -5184($fp)
	sw $t0, -15512($fp)
	lw $t1, -15512($fp)
	li $t2, 0
	bne $t1, $t2, label377
	j label378
label377:
	li $t0, 1
	sw $t0, -15496($fp)
label378:
	li $t0, 0
	sw $t0, -15516($fp)
	li $t0, 38267
	sw $t0, -15520($fp)
	li $t0, 0
	lw $t1, -15520($fp)
	sub $t0, $t0, $t1
	sw $t0, -15524($fp)
	lw $t1, -15524($fp)
	li $t2, 0
	bne $t1, $t2, label380
	j label382
label382:
	lw $t0, -7440($fp)
	sw $t0, -15528($fp)
	lw $t1, -15528($fp)
	li $t2, 0
	bne $t1, $t2, label380
	j label381
label380:
	li $t0, 1
	sw $t0, -15516($fp)
label381:
	addi $sp, $sp, -4
	lw $t0, -15464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15516($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -15532($fp)
	addi $sp, $sp, 24
	lw $t0, -15444($fp)
	lw $t1, -15532($fp)
	add $t0, $t0, $t1
	sw $t0, -15536($fp)
	li $t0, 56341
	sw $t0, -15552($fp)
	addi $t0, $fp, -15548
	sw $t0, -15556($fp)
	li $t0, 0
	sw $t0, -15560($fp)
	lw $t0, -15560($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -15564($fp)
	lw $t0, -15556($fp)
	lw $t1, -15564($fp)
	add $t0, $t0, $t1
	sw $t0, -15568($fp)
	lw $t0, -15552($fp)
	lw $t1, -15568($fp)
	sw $t0, 0($t1)
	lw $t0, -15568($fp)
	lw $t1, 0($t0)
	sw $t1, -15572($fp)
	li $t0, 815
	sw $t0, -15576($fp)
	addi $t0, $fp, -15548
	sw $t0, -15580($fp)
	li $t0, 1
	sw $t0, -15584($fp)
	lw $t0, -15584($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -15588($fp)
	lw $t0, -15580($fp)
	lw $t1, -15588($fp)
	add $t0, $t0, $t1
	sw $t0, -15592($fp)
	lw $t0, -15576($fp)
	lw $t1, -15592($fp)
	sw $t0, 0($t1)
	lw $t0, -15592($fp)
	lw $t1, 0($t0)
	sw $t1, -15596($fp)
	li $t0, 22716
	sw $t0, -15600($fp)
	addi $t0, $fp, -15548
	sw $t0, -15604($fp)
	li $t0, 2
	sw $t0, -15608($fp)
	lw $t0, -15608($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -15612($fp)
	lw $t0, -15604($fp)
	lw $t1, -15612($fp)
	add $t0, $t0, $t1
	sw $t0, -15616($fp)
	lw $t0, -15600($fp)
	lw $t1, -15616($fp)
	sw $t0, 0($t1)
	lw $t0, -15616($fp)
	lw $t1, 0($t0)
	sw $t1, -15620($fp)
label383:
	li $t0, 262
	sw $t0, -15624($fp)
	lw $t0, -2340($fp)
	sw $t0, -15628($fp)
	lw $t0, -15624($fp)
	lw $t1, -15628($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15632($fp)
	li $t0, 0
	lw $t1, -15632($fp)
	sub $t0, $t0, $t1
	sw $t0, -15636($fp)
	li $t0, 0
	sw $t0, -15640($fp)
	addi $t0, $fp, -15548
	sw $t0, -15644($fp)
	li $t0, 1
	sw $t0, -15648($fp)
	li $t0, 4
	lw $t1, -15648($fp)
	mul $t0, $t0, $t1
	sw $t0, -15652($fp)
	lw $t0, -15652($fp)
	lw $t1, -15644($fp)
	add $t0, $t0, $t1
	sw $t0, -15656($fp)
	lw $t0, -15656($fp)
	lw $t1, 0($t0)
	sw $t1, -15660($fp)
	lw $t0, -5040($fp)
	sw $t0, -15664($fp)
	lw $t1, -15660($fp)
	lw $t2, -15664($fp)
	bgt $t1, $t2, label386
	j label387
label386:
	li $t0, 1
	sw $t0, -15640($fp)
label387:
	lw $t0, -8424($fp)
	sw $t0, -15668($fp)
	lw $t0, -6612($fp)
	sw $t0, -15672($fp)
	li $t0, 9385
	sw $t0, -15676($fp)
	lw $t0, -15672($fp)
	lw $t1, -15676($fp)
	mul $t0, $t0, $t1
	sw $t0, -15680($fp)
	li $t0, 0
	sw $t0, -15684($fp)
	li $t0, 53827
	sw $t0, -15688($fp)
	lw $t0, -9504($fp)
	sw $t0, -15692($fp)
	lw $t0, -15688($fp)
	lw $t1, -15692($fp)
	mul $t0, $t0, $t1
	sw $t0, -15696($fp)
	lw $t1, -15696($fp)
	li $t2, 0
	bne $t1, $t2, label390
	j label389
label390:
	li $t0, 31851
	sw $t0, -15700($fp)
	lw $t1, -15700($fp)
	li $t2, 0
	bne $t1, $t2, label388
	j label389
label388:
	li $t0, 1
	sw $t0, -15684($fp)
label389:
	addi $sp, $sp, -4
	lw $t0, -15636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15684($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -15704($fp)
	addi $sp, $sp, 24
	lw $t0, -1608($fp)
	sw $t0, -15708($fp)
	li $t0, 0
	lw $t1, -15708($fp)
	sub $t0, $t0, $t1
	sw $t0, -15712($fp)
	li $t0, 0
	lw $t1, -15712($fp)
	sub $t0, $t0, $t1
	sw $t0, -15716($fp)
	lw $t1, -15704($fp)
	lw $t2, -15716($fp)
	beq $t1, $t2, label384
	j label385
label384:
	lw $t0, -6300($fp)
	sw $t0, -15720($fp)
	j label383
label385:
	li $t0, 32554
	sw $t0, -15728($fp)
	lw $t0, -15728($fp)
	sw $t0, -15732($fp)
	lw $t0, -15732($fp)
	sw $t0, -15736($fp)
	li $t0, 63163
	sw $t0, -15740($fp)
	lw $t0, -15740($fp)
	sw $t0, -15744($fp)
	lw $t0, -15744($fp)
	sw $t0, -15748($fp)
	li $t0, 39557
	sw $t0, -15752($fp)
	lw $t0, -15752($fp)
	sw $t0, -15756($fp)
	lw $t0, -15756($fp)
	sw $t0, -15760($fp)
	li $t0, 58233
	sw $t0, -15764($fp)
	lw $t0, -15764($fp)
	sw $t0, -15768($fp)
	lw $t0, -15768($fp)
	sw $t0, -15772($fp)
	li $t0, 51792
	sw $t0, -15776($fp)
	lw $t0, -15776($fp)
	sw $t0, -15780($fp)
	lw $t0, -15780($fp)
	sw $t0, -15784($fp)
	li $t0, 33295
	sw $t0, -15788($fp)
	addi $t0, $fp, -15724
	sw $t0, -15792($fp)
	li $t0, 0
	sw $t0, -15796($fp)
	lw $t0, -15796($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -15800($fp)
	lw $t0, -15792($fp)
	lw $t1, -15800($fp)
	add $t0, $t0, $t1
	sw $t0, -15804($fp)
	lw $t0, -15788($fp)
	lw $t1, -15804($fp)
	sw $t0, 0($t1)
	lw $t0, -15804($fp)
	lw $t1, 0($t0)
	sw $t1, -15808($fp)
	li $t0, 2988
	sw $t0, -15812($fp)
	lw $t0, -15812($fp)
	sw $t0, -15816($fp)
	lw $t0, -15816($fp)
	sw $t0, -15820($fp)
	li $t0, 27539
	sw $t0, -15824($fp)
	lw $t0, -15824($fp)
	sw $t0, -15828($fp)
	lw $t0, -15828($fp)
	sw $t0, -15832($fp)
	li $t0, 31338
	sw $t0, -15836($fp)
	lw $t0, -15836($fp)
	sw $t0, -15840($fp)
	lw $t0, -15840($fp)
	sw $t0, -15844($fp)
	li $t0, 12463
	sw $t0, -15848($fp)
	lw $t0, -12048($fp)
	sw $t0, -15852($fp)
	lw $t0, -15848($fp)
	lw $t1, -15852($fp)
	add $t0, $t0, $t1
	sw $t0, -15856($fp)
	li $t0, 0
	sw $t0, -15860($fp)
	li $t0, 0
	sw $t0, -15864($fp)
	li $t0, 37721
	sw $t0, -15868($fp)
	addi $t0, $fp, -140
	sw $t0, -15872($fp)
	lw $t0, -10224($fp)
	sw $t0, -15876($fp)
	li $t0, 4
	lw $t1, -15876($fp)
	mul $t0, $t0, $t1
	sw $t0, -15880($fp)
	lw $t0, -15880($fp)
	lw $t1, -15872($fp)
	add $t0, $t0, $t1
	sw $t0, -15884($fp)
	lw $t0, -15884($fp)
	lw $t1, 0($t0)
	sw $t1, -15888($fp)
	li $t0, 21637
	sw $t0, -15892($fp)
	lw $t0, -15888($fp)
	lw $t1, -15892($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15896($fp)
	li $t0, 0
	sw $t0, -15900($fp)
	addi $t0, $fp, -732
	sw $t0, -15904($fp)
	li $t0, 1
	sw $t0, -15908($fp)
	li $t0, 4
	lw $t1, -15908($fp)
	mul $t0, $t0, $t1
	sw $t0, -15912($fp)
	lw $t0, -15912($fp)
	lw $t1, -15904($fp)
	add $t0, $t0, $t1
	sw $t0, -15916($fp)
	lw $t0, -15916($fp)
	lw $t1, 0($t0)
	sw $t1, -15920($fp)
	lw $t0, -15768($fp)
	sw $t0, -15924($fp)
	lw $t0, -15920($fp)
	lw $t1, -15924($fp)
	sub $t0, $t0, $t1
	sw $t0, -15928($fp)
	li $t0, 30832
	sw $t0, -15932($fp)
	lw $t0, -15932($fp)
	sw $t0, -15756($fp)
	lw $t0, -15756($fp)
	sw $t0, -15936($fp)
	lw $t0, -15744($fp)
	sw $t0, -15940($fp)
	lw $t0, -3456($fp)
	sw $t0, -15944($fp)
	lw $t0, -15940($fp)
	lw $t1, -15944($fp)
	sub $t0, $t0, $t1
	sw $t0, -15948($fp)
	lw $t0, -2364($fp)
	sw $t0, -15952($fp)
	lw $t0, -15948($fp)
	lw $t1, -15952($fp)
	add $t0, $t0, $t1
	sw $t0, -15956($fp)
	li $t0, 0
	sw $t0, -15960($fp)
	addi $t0, $fp, -15724
	sw $t0, -15964($fp)
	li $t0, 0
	sw $t0, -15968($fp)
	li $t0, 4
	lw $t1, -15968($fp)
	mul $t0, $t0, $t1
	sw $t0, -15972($fp)
	lw $t0, -15972($fp)
	lw $t1, -15964($fp)
	add $t0, $t0, $t1
	sw $t0, -15976($fp)
	lw $t0, -15976($fp)
	lw $t1, 0($t0)
	sw $t1, -15980($fp)
	lw $t1, -15980($fp)
	li $t2, 0
	bne $t1, $t2, label398
	j label397
label397:
	li $t0, 1
	sw $t0, -15960($fp)
label398:
	li $t0, 0
	sw $t0, -15984($fp)
	li $t0, 49807
	sw $t0, -15988($fp)
	lw $t1, -15988($fp)
	li $t2, 0
	bne $t1, $t2, label399
	j label400
label399:
	li $t0, 1
	sw $t0, -15984($fp)
label400:
	addi $sp, $sp, -4
	lw $t0, -15928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15984($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -15992($fp)
	addi $sp, $sp, 24
	lw $t1, -15992($fp)
	li $t2, 0
	bne $t1, $t2, label396
	j label395
label395:
	li $t0, 1
	sw $t0, -15900($fp)
label396:
	li $t0, 5967
	sw $t0, -15996($fp)
	li $t0, 14583
	sw $t0, -16000($fp)
	lw $t0, -15996($fp)
	lw $t1, -16000($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -16004($fp)
	lw $t0, -12456($fp)
	sw $t0, -16008($fp)
	lw $t0, -16004($fp)
	lw $t1, -16008($fp)
	mul $t0, $t0, $t1
	sw $t0, -16012($fp)
	lw $t0, -15732($fp)
	sw $t0, -16016($fp)
	lw $t0, -16016($fp)
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	sw $t0, -16020($fp)
	addi $t0, $fp, -656
	sw $t0, -16024($fp)
	li $t0, 0
	sw $t0, -16028($fp)
	li $t0, 4
	lw $t1, -16028($fp)
	mul $t0, $t0, $t1
	sw $t0, -16032($fp)
	lw $t0, -16032($fp)
	lw $t1, -16024($fp)
	add $t0, $t0, $t1
	sw $t0, -16036($fp)
	lw $t0, -16036($fp)
	lw $t1, 0($t0)
	sw $t1, -16040($fp)
	li $t0, 49258
	sw $t0, -16044($fp)
	lw $t0, -16040($fp)
	lw $t1, -16044($fp)
	mul $t0, $t0, $t1
	sw $t0, -16048($fp)
	addi $sp, $sp, -4
	lw $t0, -15896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16048($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -16052($fp)
	addi $sp, $sp, 24
	lw $t1, -15868($fp)
	lw $t2, -16052($fp)
	beq $t1, $t2, label393
	j label394
label393:
	li $t0, 1
	sw $t0, -15864($fp)
label394:
	addi $t0, $fp, -172
	sw $t0, -16056($fp)
	li $t0, 6
	sw $t0, -16060($fp)
	li $t0, 4
	lw $t1, -16060($fp)
	mul $t0, $t0, $t1
	sw $t0, -16064($fp)
	lw $t0, -16064($fp)
	lw $t1, -16056($fp)
	add $t0, $t0, $t1
	sw $t0, -16068($fp)
	lw $t0, -16068($fp)
	lw $t1, 0($t0)
	sw $t1, -16072($fp)
	lw $t0, -15780($fp)
	sw $t0, -16076($fp)
	lw $t0, -16072($fp)
	lw $t1, -16076($fp)
	sub $t0, $t0, $t1
	sw $t0, -16080($fp)
	lw $t0, -12000($fp)
	sw $t0, -16084($fp)
	lw $t0, -11976($fp)
	sw $t0, -16088($fp)
	lw $t0, -16084($fp)
	lw $t1, -16088($fp)
	mul $t0, $t0, $t1
	sw $t0, -16092($fp)
	lw $t0, -16080($fp)
	lw $t1, -16092($fp)
	sub $t0, $t0, $t1
	sw $t0, -16096($fp)
	lw $t1, -15864($fp)
	lw $t2, -16096($fp)
	beq $t1, $t2, label391
	j label392
label391:
	li $t0, 1
	sw $t0, -15860($fp)
label392:
	addi $t0, $fp, -15724
	sw $t0, -16100($fp)
	li $t0, 55840
	sw $t0, -16104($fp)
	li $t0, 0
	lw $t1, -16104($fp)
	sub $t0, $t0, $t1
	sw $t0, -16108($fp)
	li $t0, 4594
	sw $t0, -16112($fp)
	lw $t0, -16108($fp)
	lw $t1, -16112($fp)
	sub $t0, $t0, $t1
	sw $t0, -16116($fp)
	li $t0, 3206
	sw $t0, -16120($fp)
	li $t0, 48493
	sw $t0, -16124($fp)
	lw $t0, -16120($fp)
	lw $t1, -16124($fp)
	sub $t0, $t0, $t1
	sw $t0, -16128($fp)
	li $t0, 50268
	sw $t0, -16132($fp)
	lw $t0, -16128($fp)
	lw $t1, -16132($fp)
	sub $t0, $t0, $t1
	sw $t0, -16136($fp)
	li $t0, 0
	sw $t0, -16140($fp)
	li $t0, 65381
	sw $t0, -16144($fp)
	lw $t1, -16144($fp)
	li $t2, 0
	bne $t1, $t2, label403
	j label401
label403:
	lw $t0, -2904($fp)
	sw $t0, -16148($fp)
	lw $t1, -16148($fp)
	li $t2, 0
	bne $t1, $t2, label401
	j label402
label401:
	li $t0, 1
	sw $t0, -16140($fp)
label402:
	lw $t0, -15840($fp)
	sw $t0, -16152($fp)
	li $t0, 17660
	sw $t0, -16156($fp)
	lw $t0, -16152($fp)
	lw $t1, -16156($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -16160($fp)
	li $t0, 0
	lw $t1, -16160($fp)
	sub $t0, $t0, $t1
	sw $t0, -16164($fp)
	li $t0, 0
	sw $t0, -16168($fp)
	lw $t0, -2892($fp)
	sw $t0, -16172($fp)
	li $t0, 0
	lw $t1, -16172($fp)
	sub $t0, $t0, $t1
	sw $t0, -16176($fp)
	li $t0, 4226
	sw $t0, -16180($fp)
	lw $t1, -16176($fp)
	lw $t2, -16180($fp)
	bgt $t1, $t2, label404
	j label405
label404:
	li $t0, 1
	sw $t0, -16168($fp)
label405:
	li $t0, 0
	sw $t0, -16184($fp)
	addi $t0, $fp, -1324
	sw $t0, -16188($fp)
	lw $t0, -13152($fp)
	sw $t0, -16192($fp)
	li $t0, 4
	lw $t1, -16192($fp)
	mul $t0, $t0, $t1
	sw $t0, -16196($fp)
	lw $t0, -16196($fp)
	lw $t1, -16188($fp)
	add $t0, $t0, $t1
	sw $t0, -16200($fp)
	lw $t0, -16200($fp)
	lw $t1, 0($t0)
	sw $t1, -16204($fp)
	lw $t0, -6336($fp)
	sw $t0, -16208($fp)
	lw $t1, -16204($fp)
	lw $t2, -16208($fp)
	beq $t1, $t2, label406
	j label407
label406:
	li $t0, 1
	sw $t0, -16184($fp)
label407:
	li $t0, 0
	sw $t0, -16212($fp)
	li $t0, 0
	sw $t0, -16216($fp)
	li $t0, 53225
	sw $t0, -16220($fp)
	li $t0, 0
	lw $t1, -16220($fp)
	sub $t0, $t0, $t1
	sw $t0, -16224($fp)
	lw $t0, -7248($fp)
	sw $t0, -16228($fp)
	lw $t1, -16224($fp)
	lw $t2, -16228($fp)
	blt $t1, $t2, label410
	j label411
label410:
	li $t0, 1
	sw $t0, -16216($fp)
label411:
	li $t0, 0
	sw $t0, -16232($fp)
	li $t0, 55179
	sw $t0, -16236($fp)
	lw $t1, -16236($fp)
	li $t2, 0
	bne $t1, $t2, label415
	j label414
label415:
	li $t0, 33389
	sw $t0, -16240($fp)
	lw $t1, -16240($fp)
	li $t2, 0
	bne $t1, $t2, label412
	j label414
label414:
	lw $t0, -10704($fp)
	sw $t0, -16244($fp)
	lw $t1, -16244($fp)
	li $t2, 0
	bne $t1, $t2, label412
	j label413
label412:
	li $t0, 1
	sw $t0, -16232($fp)
label413:
	lw $t0, -4572($fp)
	sw $t0, -16248($fp)
	li $t0, 0
	lw $t1, -16248($fp)
	sub $t0, $t0, $t1
	sw $t0, -16252($fp)
	li $t0, 0
	lw $t1, -16252($fp)
	sub $t0, $t0, $t1
	sw $t0, -16256($fp)
	li $t0, 0
	sw $t0, -16260($fp)
	li $t0, 47258
	sw $t0, -16264($fp)
	lw $t1, -16264($fp)
	li $t2, 0
	bne $t1, $t2, label417
	j label416
label416:
	li $t0, 1
	sw $t0, -16260($fp)
label417:
	li $t0, 0
	sw $t0, -16268($fp)
	addi $t0, $fp, -200
	sw $t0, -16272($fp)
	li $t0, 4
	sw $t0, -16276($fp)
	li $t0, 4
	lw $t1, -16276($fp)
	mul $t0, $t0, $t1
	sw $t0, -16280($fp)
	lw $t0, -16280($fp)
	lw $t1, -16272($fp)
	add $t0, $t0, $t1
	sw $t0, -16284($fp)
	lw $t0, -16284($fp)
	lw $t1, 0($t0)
	sw $t1, -16288($fp)
	lw $t0, -2880($fp)
	sw $t0, -16292($fp)
	lw $t1, -16288($fp)
	lw $t2, -16292($fp)
	bge $t1, $t2, label418
	j label419
label418:
	li $t0, 1
	sw $t0, -16268($fp)
label419:
	li $t0, 0
	sw $t0, -16296($fp)
	li $t0, 0
	sw $t0, -16300($fp)
	li $t0, 13773
	sw $t0, -16304($fp)
	li $t0, 11945
	sw $t0, -16308($fp)
	lw $t1, -16304($fp)
	lw $t2, -16308($fp)
	bgt $t1, $t2, label422
	j label423
label422:
	li $t0, 1
	sw $t0, -16300($fp)
label423:
	li $t0, 58117
	sw $t0, -16312($fp)
	lw $t1, -16300($fp)
	lw $t2, -16312($fp)
	ble $t1, $t2, label420
	j label421
label420:
	li $t0, 1
	sw $t0, -16296($fp)
label421:
	li $t0, 0
	sw $t0, -16316($fp)
	lw $t0, -8388($fp)
	sw $t0, -16320($fp)
	li $t0, 0
	lw $t1, -16320($fp)
	sub $t0, $t0, $t1
	sw $t0, -16324($fp)
	lw $t1, -16324($fp)
	li $t2, 0
	bne $t1, $t2, label425
	j label424
label424:
	li $t0, 1
	sw $t0, -16316($fp)
label425:
	li $t0, 0
	sw $t0, -16328($fp)
	lw $t0, -2700($fp)
	sw $t0, -16332($fp)
	lw $t0, -10968($fp)
	sw $t0, -16336($fp)
	lw $t0, -16332($fp)
	lw $t1, -16336($fp)
	sub $t0, $t0, $t1
	sw $t0, -16340($fp)
	lw $t1, -16340($fp)
	li $t2, 0
	bne $t1, $t2, label426
	j label428
label428:
	li $t0, 26779
	sw $t0, -16344($fp)
	lw $t1, -16344($fp)
	li $t2, 0
	bne $t1, $t2, label426
	j label427
label426:
	li $t0, 1
	sw $t0, -16328($fp)
label427:
	li $t0, 0
	sw $t0, -16348($fp)
	li $t0, 49942
	sw $t0, -16352($fp)
	lw $t1, -16352($fp)
	li $t2, 0
	bne $t1, $t2, label430
	j label429
label429:
	li $t0, 1
	sw $t0, -16348($fp)
label430:
	li $t0, 0
	sw $t0, -16356($fp)
	li $t0, 0
	sw $t0, -16360($fp)
	lw $t0, -5556($fp)
	sw $t0, -16364($fp)
	li $t0, 59019
	sw $t0, -16368($fp)
	lw $t1, -16364($fp)
	lw $t2, -16368($fp)
	bge $t1, $t2, label433
	j label434
label433:
	li $t0, 1
	sw $t0, -16360($fp)
label434:
	li $t0, 10784
	sw $t0, -16372($fp)
	lw $t1, -16360($fp)
	lw $t2, -16372($fp)
	bne $t1, $t2, label431
	j label432
label431:
	li $t0, 1
	sw $t0, -16356($fp)
label432:
	addi $sp, $sp, -4
	lw $t0, -16296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16356($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -16376($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -16232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16376($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -16380($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -16384($fp)
	li $t0, 63686
	sw $t0, -16388($fp)
	lw $t0, -15828($fp)
	sw $t0, -16392($fp)
	lw $t0, -16388($fp)
	lw $t1, -16392($fp)
	mul $t0, $t0, $t1
	sw $t0, -16396($fp)
	lw $t1, -16396($fp)
	li $t2, 0
	bne $t1, $t2, label435
	j label437
label437:
	lw $t0, -9528($fp)
	sw $t0, -16400($fp)
	lw $t1, -16400($fp)
	li $t2, 0
	bne $t1, $t2, label435
	j label436
label435:
	li $t0, 1
	sw $t0, -16384($fp)
label436:
	lw $t0, -2676($fp)
	sw $t0, -16404($fp)
	lw $t0, -2688($fp)
	sw $t0, -16408($fp)
	lw $t0, -16404($fp)
	lw $t1, -16408($fp)
	mul $t0, $t0, $t1
	sw $t0, -16412($fp)
	lw $t0, -12252($fp)
	sw $t0, -16416($fp)
	lw $t0, -2664($fp)
	sw $t0, -16420($fp)
	lw $t0, -16416($fp)
	lw $t1, -16420($fp)
	mul $t0, $t0, $t1
	sw $t0, -16424($fp)
	lw $t0, -8364($fp)
	sw $t0, -16428($fp)
	lw $t0, -16424($fp)
	lw $t1, -16428($fp)
	mul $t0, $t0, $t1
	sw $t0, -16432($fp)
	addi $sp, $sp, -4
	lw $t0, -16216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16432($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -16436($fp)
	addi $sp, $sp, 24
	lw $t1, -16436($fp)
	li $t2, 0
	bne $t1, $t2, label409
	j label408
label408:
	li $t0, 1
	sw $t0, -16212($fp)
label409:
	addi $sp, $sp, -4
	lw $t0, -16140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16212($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -16440($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -16444($fp)
	li $t0, 18087
	sw $t0, -16448($fp)
	lw $t0, -15816($fp)
	sw $t0, -16452($fp)
	lw $t0, -16448($fp)
	lw $t1, -16452($fp)
	add $t0, $t0, $t1
	sw $t0, -16456($fp)
	lw $t0, -7308($fp)
	sw $t0, -16460($fp)
	lw $t1, -16456($fp)
	lw $t2, -16460($fp)
	bne $t1, $t2, label438
	j label439
label438:
	li $t0, 1
	sw $t0, -16444($fp)
label439:
	li $t0, 19462
	sw $t0, -16464($fp)
	lw $t0, -16464($fp)
	sw $t0, -3324($fp)
	lw $t0, -3324($fp)
	sw $t0, -16468($fp)
	li $t0, 0
	sw $t0, -16472($fp)
	li $t0, 51069
	sw $t0, -16476($fp)
	lw $t1, -16476($fp)
	li $t2, 0
	bne $t1, $t2, label440
	j label443
label443:
	li $t0, 523
	sw $t0, -16480($fp)
	lw $t1, -16480($fp)
	li $t2, 0
	bne $t1, $t2, label440
	j label442
label442:
	lw $t0, -3588($fp)
	sw $t0, -16484($fp)
	lw $t1, -16484($fp)
	li $t2, 0
	bne $t1, $t2, label440
	j label441
label440:
	li $t0, 1
	sw $t0, -16472($fp)
label441:
	addi $sp, $sp, -4
	lw $t0, -16136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16472($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -16488($fp)
	addi $sp, $sp, 24
	lw $t0, -3432($fp)
	sw $t0, -16492($fp)
	lw $t0, -16488($fp)
	lw $t1, -16492($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -16496($fp)
	li $t0, 0
	sw $t0, -16500($fp)
	lw $t0, -2652($fp)
	sw $t0, -16504($fp)
	lw $t1, -16504($fp)
	li $t2, 0
	bne $t1, $t2, label444
	j label447
label447:
	li $t0, 19199
	sw $t0, -16508($fp)
	lw $t1, -16508($fp)
	li $t2, 0
	bne $t1, $t2, label444
	j label446
label446:
	lw $t0, -3216($fp)
	sw $t0, -16512($fp)
	lw $t1, -16512($fp)
	li $t2, 0
	bne $t1, $t2, label444
	j label445
label444:
	li $t0, 1
	sw $t0, -16500($fp)
label445:
	li $t0, 0
	sw $t0, -16516($fp)
	addi $t0, $fp, -652
	sw $t0, -16520($fp)
	li $t0, 2
	sw $t0, -16524($fp)
	li $t0, 4
	lw $t1, -16524($fp)
	mul $t0, $t0, $t1
	sw $t0, -16528($fp)
	lw $t0, -16528($fp)
	lw $t1, -16520($fp)
	add $t0, $t0, $t1
	sw $t0, -16532($fp)
	lw $t0, -16532($fp)
	lw $t1, 0($t0)
	sw $t1, -16536($fp)
	lw $t1, -16536($fp)
	li $t2, 0
	bne $t1, $t2, label448
	j label450
label450:
	lw $t0, -2640($fp)
	sw $t0, -16540($fp)
	lw $t1, -16540($fp)
	li $t2, 0
	bne $t1, $t2, label448
	j label449
label448:
	li $t0, 1
	sw $t0, -16516($fp)
label449:
	lw $t0, -9348($fp)
	sw $t0, -16544($fp)
	li $t0, 0
	lw $t1, -16544($fp)
	sub $t0, $t0, $t1
	sw $t0, -16548($fp)
	addi $sp, $sp, -4
	lw $t0, -16116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16548($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -16552($fp)
	addi $sp, $sp, 24
	li $t0, 4
	lw $t1, -16552($fp)
	mul $t0, $t0, $t1
	sw $t0, -16556($fp)
	lw $t0, -16556($fp)
	lw $t1, -16100($fp)
	add $t0, $t0, $t1
	sw $t0, -16560($fp)
	lw $t0, -16560($fp)
	lw $t1, 0($t0)
	sw $t1, -16564($fp)
	li $t0, 35970
	sw $t0, -16568($fp)
	lw $t0, -7044($fp)
	sw $t0, -16572($fp)
	lw $t0, -16568($fp)
	lw $t1, -16572($fp)
	sub $t0, $t0, $t1
	sw $t0, -16576($fp)
label451:
	li $t0, 119
	sw $t0, -16580($fp)
	li $t0, 14523
	sw $t0, -16584($fp)
	lw $t0, -16580($fp)
	lw $t1, -16584($fp)
	mul $t0, $t0, $t1
	sw $t0, -16588($fp)
	lw $t1, -16588($fp)
	li $t2, 0
	bne $t1, $t2, label452
	j label453
label452:
	li $t0, 53524
	sw $t0, -16592($fp)
	lw $t0, -16592($fp)
	sw $t0, -16596($fp)
	lw $t0, -16596($fp)
	sw $t0, -16600($fp)
	li $t0, 0
	sw $t0, -16604($fp)
	li $t0, 19318
	sw $t0, -16608($fp)
	addi $t0, $fp, -480
	sw $t0, -16612($fp)
	li $t0, 0
	sw $t0, -16616($fp)
	li $t0, 56
	sw $t0, -16620($fp)
	li $t0, 54047
	sw $t0, -16624($fp)
	lw $t1, -16620($fp)
	lw $t2, -16624($fp)
	bne $t1, $t2, label456
	j label457
label456:
	li $t0, 1
	sw $t0, -16616($fp)
label457:
	li $t0, 4
	lw $t1, -16616($fp)
	mul $t0, $t0, $t1
	sw $t0, -16628($fp)
	lw $t0, -16628($fp)
	lw $t1, -16612($fp)
	add $t0, $t0, $t1
	sw $t0, -16632($fp)
	lw $t0, -16632($fp)
	lw $t1, 0($t0)
	sw $t1, -16636($fp)
	lw $t1, -16608($fp)
	lw $t2, -16636($fp)
	ble $t1, $t2, label454
	j label455
label454:
	li $t0, 1
	sw $t0, -16604($fp)
label455:
	addi $t0, $fp, -924
	sw $t0, -16640($fp)
	li $t0, 0
	sw $t0, -16644($fp)
	li $t0, 0
	sw $t0, -16648($fp)
	li $t0, 38780
	sw $t0, -16652($fp)
	li $t0, 18143
	sw $t0, -16656($fp)
	lw $t1, -16652($fp)
	lw $t2, -16656($fp)
	ble $t1, $t2, label460
	j label461
label460:
	li $t0, 1
	sw $t0, -16648($fp)
label461:
	li $t0, 52197
	sw $t0, -16660($fp)
	li $t0, 32264
	sw $t0, -16664($fp)
	lw $t0, -16660($fp)
	lw $t1, -16664($fp)
	sub $t0, $t0, $t1
	sw $t0, -16668($fp)
	lw $t1, -16648($fp)
	lw $t2, -16668($fp)
	bne $t1, $t2, label458
	j label459
label458:
	li $t0, 1
	sw $t0, -16644($fp)
label459:
	li $t0, 4
	lw $t1, -16644($fp)
	mul $t0, $t0, $t1
	sw $t0, -16672($fp)
	lw $t0, -16672($fp)
	lw $t1, -16640($fp)
	add $t0, $t0, $t1
	sw $t0, -16676($fp)
	lw $t0, -16676($fp)
	lw $t1, 0($t0)
	sw $t1, -16680($fp)
	li $t0, 0
	sw $t0, -16684($fp)
	li $t0, 28928
	sw $t0, -16688($fp)
	li $t0, 36603
	sw $t0, -16692($fp)
	lw $t1, -16688($fp)
	lw $t2, -16692($fp)
	beq $t1, $t2, label462
	j label463
label462:
	li $t0, 1
	sw $t0, -16684($fp)
label463:
	li $t0, 0
	sw $t0, -16696($fp)
	lw $t0, -12036($fp)
	sw $t0, -16700($fp)
	li $t0, 0
	lw $t1, -16700($fp)
	sub $t0, $t0, $t1
	sw $t0, -16704($fp)
	lw $t0, -9732($fp)
	sw $t0, -16708($fp)
	lw $t0, -16708($fp)
	sw $t0, -3024($fp)
	lw $t0, -3024($fp)
	sw $t0, -16712($fp)
	li $t0, 0
	sw $t0, -16716($fp)
	lw $t0, -3372($fp)
	sw $t0, -16720($fp)
	lw $t0, -3012($fp)
	sw $t0, -16724($fp)
	lw $t1, -16720($fp)
	lw $t2, -16724($fp)
	beq $t1, $t2, label466
	j label467
label466:
	li $t0, 1
	sw $t0, -16716($fp)
label467:
	addi $t0, $fp, -216
	sw $t0, -16728($fp)
	li $t0, 1
	sw $t0, -16732($fp)
	li $t0, 4
	lw $t1, -16732($fp)
	mul $t0, $t0, $t1
	sw $t0, -16736($fp)
	lw $t0, -16736($fp)
	lw $t1, -16728($fp)
	add $t0, $t0, $t1
	sw $t0, -16740($fp)
	lw $t0, -16740($fp)
	lw $t1, 0($t0)
	sw $t1, -16744($fp)
	li $t0, 0
	sw $t0, -16748($fp)
	lw $t0, -16596($fp)
	sw $t0, -16752($fp)
	lw $t1, -16752($fp)
	li $t2, 0
	bne $t1, $t2, label469
	j label468
label468:
	li $t0, 1
	sw $t0, -16748($fp)
label469:
	addi $sp, $sp, -4
	lw $t0, -16704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16748($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -16756($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -16756($fp)
	sub $t0, $t0, $t1
	sw $t0, -16760($fp)
	lw $t1, -16760($fp)
	li $t2, 0
	bne $t1, $t2, label465
	j label464
label464:
	li $t0, 1
	sw $t0, -16696($fp)
label465:
	li $t0, 0
	lw $t1, -16696($fp)
	sub $t0, $t0, $t1
	sw $t0, -16764($fp)
	j label451
label453:
	li $t0, 48548
	sw $t0, -16768($fp)
	lw $t0, -16768($fp)
	sw $t0, -16772($fp)
	lw $t0, -16772($fp)
	sw $t0, -16776($fp)
	li $t0, 51624
	sw $t0, -16780($fp)
	lw $t0, -16780($fp)
	sw $t0, -16784($fp)
	lw $t0, -16784($fp)
	sw $t0, -16788($fp)
	li $t0, 3401
	sw $t0, -16792($fp)
	lw $t0, -16792($fp)
	sw $t0, -16796($fp)
	lw $t0, -16796($fp)
	sw $t0, -16800($fp)
	li $t0, 32679
	sw $t0, -16804($fp)
	lw $t0, -16804($fp)
	sw $t0, -16808($fp)
	lw $t0, -16808($fp)
	sw $t0, -16812($fp)
	li $t0, 33346
	sw $t0, -16816($fp)
	lw $t0, -16816($fp)
	sw $t0, -16820($fp)
	lw $t0, -16820($fp)
	sw $t0, -16824($fp)
	li $t0, 58580
	sw $t0, -16828($fp)
	lw $t0, -16828($fp)
	sw $t0, -16832($fp)
	lw $t0, -16832($fp)
	sw $t0, -16836($fp)
	li $t0, 532
	sw $t0, -16840($fp)
	lw $t0, -16840($fp)
	sw $t0, -16844($fp)
	lw $t0, -16844($fp)
	sw $t0, -16848($fp)
	li $t0, 21036
	sw $t0, -16852($fp)
	lw $t0, -16852($fp)
	sw $t0, -16856($fp)
	lw $t0, -16856($fp)
	sw $t0, -16860($fp)
	li $t0, 0
	sw $t0, -16864($fp)
	li $t0, 62806
	sw $t0, -16868($fp)
	lw $t0, -5460($fp)
	sw $t0, -16872($fp)
	lw $t0, -16872($fp)
	sw $t0, -3300($fp)
	lw $t0, -3300($fp)
	sw $t0, -16876($fp)
	li $t0, 0
	sw $t0, -16880($fp)
	li $t0, 11529
	sw $t0, -16884($fp)
	lw $t0, -6348($fp)
	sw $t0, -16888($fp)
	lw $t1, -16884($fp)
	lw $t2, -16888($fp)
	bne $t1, $t2, label472
	j label473
label472:
	li $t0, 1
	sw $t0, -16880($fp)
label473:
	lw $t0, -3288($fp)
	sw $t0, -16892($fp)
	lw $t0, -16892($fp)
	sw $t0, -9516($fp)
	lw $t0, -9516($fp)
	sw $t0, -16896($fp)
	li $t0, 39079
	sw $t0, -16900($fp)
	li $t0, 0
	lw $t1, -16900($fp)
	sub $t0, $t0, $t1
	sw $t0, -16904($fp)
	li $t0, 0
	lw $t1, -16904($fp)
	sub $t0, $t0, $t1
	sw $t0, -16908($fp)
	lw $t0, -3276($fp)
	sw $t0, -16912($fp)
	lw $t0, -16912($fp)
	sw $t0, -5184($fp)
	lw $t0, -5184($fp)
	sw $t0, -16916($fp)
	li $t0, 32504
	sw $t0, -16920($fp)
	li $t0, 14923
	sw $t0, -16924($fp)
	lw $t0, -16920($fp)
	lw $t1, -16924($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -16928($fp)
	lw $t0, -8976($fp)
	sw $t0, -16932($fp)
	lw $t0, -16928($fp)
	lw $t1, -16932($fp)
	add $t0, $t0, $t1
	sw $t0, -16936($fp)
	li $t0, 0
	sw $t0, -16940($fp)
	addi $t0, $fp, -1184
	sw $t0, -16944($fp)
	lw $t0, -6348($fp)
	sw $t0, -16948($fp)
	li $t0, 4
	lw $t1, -16948($fp)
	mul $t0, $t0, $t1
	sw $t0, -16952($fp)
	lw $t0, -16952($fp)
	lw $t1, -16944($fp)
	add $t0, $t0, $t1
	sw $t0, -16956($fp)
	lw $t0, -16956($fp)
	lw $t1, 0($t0)
	sw $t1, -16960($fp)
	lw $t1, -16960($fp)
	li $t2, 0
	bne $t1, $t2, label476
	j label475
label476:
	lw $t0, -8400($fp)
	sw $t0, -16964($fp)
	lw $t1, -16964($fp)
	li $t2, 0
	bne $t1, $t2, label474
	j label475
label474:
	li $t0, 1
	sw $t0, -16940($fp)
label475:
	li $t0, 29845
	sw $t0, -16968($fp)
	li $t0, 0
	sw $t0, -16972($fp)
	li $t0, 30645
	sw $t0, -16976($fp)
	li $t0, 39111
	sw $t0, -16980($fp)
	lw $t0, -16976($fp)
	lw $t1, -16980($fp)
	mul $t0, $t0, $t1
	sw $t0, -16984($fp)
	lw $t0, -12120($fp)
	sw $t0, -16988($fp)
	lw $t1, -16984($fp)
	lw $t2, -16988($fp)
	blt $t1, $t2, label477
	j label478
label477:
	li $t0, 1
	sw $t0, -16972($fp)
label478:
	addi $sp, $sp, -4
	lw $t0, -16916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16972($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -16992($fp)
	addi $sp, $sp, 24
	lw $t0, -7044($fp)
	sw $t0, -16996($fp)
	lw $t0, -16992($fp)
	lw $t1, -16996($fp)
	add $t0, $t0, $t1
	sw $t0, -17000($fp)
	addi $sp, $sp, -4
	lw $t0, -16876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17000($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -17004($fp)
	addi $sp, $sp, 24
	li $t0, 39284
	sw $t0, -17008($fp)
	lw $t0, -17004($fp)
	lw $t1, -17008($fp)
	add $t0, $t0, $t1
	sw $t0, -17012($fp)
	li $t0, 0
	sw $t0, -17016($fp)
	li $t0, 0
	sw $t0, -17020($fp)
	li $t0, 14117
	sw $t0, -17024($fp)
	lw $t1, -17024($fp)
	li $t2, 0
	bne $t1, $t2, label482
	j label481
label481:
	li $t0, 1
	sw $t0, -17020($fp)
label482:
	lw $t0, -7212($fp)
	sw $t0, -17028($fp)
	lw $t1, -17020($fp)
	lw $t2, -17028($fp)
	blt $t1, $t2, label479
	j label480
label479:
	li $t0, 1
	sw $t0, -17016($fp)
label480:
	li $t0, 0
	sw $t0, -17032($fp)
	li $t0, 34366
	sw $t0, -17036($fp)
	lw $t0, -8976($fp)
	sw $t0, -17040($fp)
	lw $t1, -17036($fp)
	lw $t2, -17040($fp)
	bgt $t1, $t2, label483
	j label484
label483:
	li $t0, 1
	sw $t0, -17032($fp)
label484:
	li $t0, 0
	sw $t0, -17044($fp)
	li $t0, 0
	sw $t0, -17048($fp)
	li $t0, 57713
	sw $t0, -17052($fp)
	lw $t0, -9528($fp)
	sw $t0, -17056($fp)
	lw $t1, -17052($fp)
	lw $t2, -17056($fp)
	bgt $t1, $t2, label487
	j label488
label487:
	li $t0, 1
	sw $t0, -17048($fp)
label488:
	lw $t0, -11868($fp)
	sw $t0, -17060($fp)
	lw $t1, -17048($fp)
	lw $t2, -17060($fp)
	ble $t1, $t2, label485
	j label486
label485:
	li $t0, 1
	sw $t0, -17044($fp)
label486:
	li $t0, 0
	sw $t0, -17064($fp)
	addi $t0, $fp, -1240
	sw $t0, -17068($fp)
	lw $t0, -16856($fp)
	sw $t0, -17072($fp)
	li $t0, 4
	lw $t1, -17072($fp)
	mul $t0, $t0, $t1
	sw $t0, -17076($fp)
	lw $t0, -17076($fp)
	lw $t1, -17068($fp)
	add $t0, $t0, $t1
	sw $t0, -17080($fp)
	lw $t0, -17080($fp)
	lw $t1, 0($t0)
	sw $t1, -17084($fp)
	lw $t1, -17084($fp)
	li $t2, 0
	bne $t1, $t2, label490
	j label489
label489:
	li $t0, 1
	sw $t0, -17064($fp)
label490:
	li $t0, 30654
	sw $t0, -17088($fp)
	lw $t0, -17088($fp)
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	sw $t0, -17092($fp)
	lw $t0, -5832($fp)
	sw $t0, -17096($fp)
	lw $t0, -6612($fp)
	sw $t0, -17100($fp)
	lw $t0, -17096($fp)
	lw $t1, -17100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -17104($fp)
	addi $sp, $sp, -4
	lw $t0, -17032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17104($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -17108($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -672
	sw $t0, -17112($fp)
	li $t0, 2
	sw $t0, -17116($fp)
	li $t0, 4
	lw $t1, -17116($fp)
	mul $t0, $t0, $t1
	sw $t0, -17120($fp)
	lw $t0, -17120($fp)
	lw $t1, -17112($fp)
	add $t0, $t0, $t1
	sw $t0, -17124($fp)
	lw $t0, -17124($fp)
	lw $t1, 0($t0)
	sw $t1, -17128($fp)
	li $t0, 0
	sw $t0, -17132($fp)
	li $t0, 0
	sw $t0, -17136($fp)
	li $t0, 52246
	sw $t0, -17140($fp)
	lw $t1, -17140($fp)
	li $t2, 0
	bne $t1, $t2, label496
	j label495
label496:
	li $t0, 20435
	sw $t0, -17144($fp)
	lw $t1, -17144($fp)
	li $t2, 0
	bne $t1, $t2, label494
	j label495
label494:
	li $t0, 1
	sw $t0, -17136($fp)
label495:
	li $t0, 0
	sw $t0, -17148($fp)
	li $t0, 0
	sw $t0, -17152($fp)
	li $t0, 10663
	sw $t0, -17156($fp)
	li $t0, 29534
	sw $t0, -17160($fp)
	lw $t1, -17156($fp)
	lw $t2, -17160($fp)
	bgt $t1, $t2, label499
	j label500
label499:
	li $t0, 1
	sw $t0, -17152($fp)
label500:
	li $t0, 17122
	sw $t0, -17164($fp)
	lw $t1, -17152($fp)
	lw $t2, -17164($fp)
	bge $t1, $t2, label497
	j label498
label497:
	li $t0, 1
	sw $t0, -17148($fp)
label498:
	li $t0, 38753
	sw $t0, -17168($fp)
	lw $t0, -12768($fp)
	sw $t0, -17172($fp)
	lw $t0, -17168($fp)
	lw $t1, -17172($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -17176($fp)
	li $t0, 11378
	sw $t0, -17180($fp)
	lw $t0, -17176($fp)
	lw $t1, -17180($fp)
	mul $t0, $t0, $t1
	sw $t0, -17184($fp)
	li $t0, 0
	sw $t0, -17188($fp)
	addi $t0, $fp, -1228
	sw $t0, -17192($fp)
	li $t0, 6
	sw $t0, -17196($fp)
	li $t0, 4
	lw $t1, -17196($fp)
	mul $t0, $t0, $t1
	sw $t0, -17200($fp)
	lw $t0, -17200($fp)
	lw $t1, -17192($fp)
	add $t0, $t0, $t1
	sw $t0, -17204($fp)
	lw $t0, -17204($fp)
	lw $t1, 0($t0)
	sw $t1, -17208($fp)
	li $t0, 5050
	sw $t0, -17212($fp)
	lw $t1, -17208($fp)
	lw $t2, -17212($fp)
	bne $t1, $t2, label501
	j label502
label501:
	li $t0, 1
	sw $t0, -17188($fp)
label502:
	li $t0, 0
	sw $t0, -17216($fp)
	li $t0, 57572
	sw $t0, -17220($fp)
	li $t0, 49705
	sw $t0, -17224($fp)
	lw $t1, -17220($fp)
	lw $t2, -17224($fp)
	bne $t1, $t2, label503
	j label504
label503:
	li $t0, 1
	sw $t0, -17216($fp)
label504:
	li $t0, 41005
	sw $t0, -17228($fp)
	lw $t0, -12768($fp)
	sw $t0, -17232($fp)
	lw $t0, -3252($fp)
	sw $t0, -17236($fp)
	lw $t0, -17232($fp)
	lw $t1, -17236($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -17240($fp)
	addi $sp, $sp, -4
	lw $t0, -17184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17240($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -17244($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -17244($fp)
	sub $t0, $t0, $t1
	sw $t0, -17248($fp)
	li $t0, 0
	sw $t0, -17252($fp)
	lw $t0, -16832($fp)
	sw $t0, -17256($fp)
	lw $t0, -9528($fp)
	sw $t0, -17260($fp)
	lw $t0, -17256($fp)
	lw $t1, -17260($fp)
	mul $t0, $t0, $t1
	sw $t0, -17264($fp)
	lw $t0, -7164($fp)
	sw $t0, -17268($fp)
	lw $t1, -17264($fp)
	lw $t2, -17268($fp)
	bne $t1, $t2, label505
	j label506
label505:
	li $t0, 1
	sw $t0, -17252($fp)
label506:
	lw $t0, -5496($fp)
	sw $t0, -17272($fp)
	lw $t0, -17272($fp)
	sw $t0, -2364($fp)
	lw $t0, -2364($fp)
	sw $t0, -17276($fp)
	li $t0, 0
	sw $t0, -17280($fp)
	li $t0, 57040
	sw $t0, -17284($fp)
	lw $t1, -17284($fp)
	li $t2, 0
	bne $t1, $t2, label509
	j label507
label509:
	lw $t0, -16820($fp)
	sw $t0, -17288($fp)
	lw $t1, -17288($fp)
	li $t2, 0
	bne $t1, $t2, label507
	j label508
label507:
	li $t0, 1
	sw $t0, -17280($fp)
label508:
	li $t0, 24361
	sw $t0, -17292($fp)
	li $t0, 60858
	sw $t0, -17296($fp)
	lw $t0, -17292($fp)
	lw $t1, -17296($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -17300($fp)
	li $t0, 47961
	sw $t0, -17304($fp)
	lw $t0, -17300($fp)
	lw $t1, -17304($fp)
	sub $t0, $t0, $t1
	sw $t0, -17308($fp)
	li $t0, 9234
	sw $t0, -17312($fp)
	li $t0, 44560
	sw $t0, -17316($fp)
	lw $t0, -17312($fp)
	lw $t1, -17316($fp)
	mul $t0, $t0, $t1
	sw $t0, -17320($fp)
	lw $t0, -6336($fp)
	sw $t0, -17324($fp)
	lw $t0, -17320($fp)
	lw $t1, -17324($fp)
	mul $t0, $t0, $t1
	sw $t0, -17328($fp)
	addi $sp, $sp, -4
	lw $t0, -17252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17328($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -17332($fp)
	addi $sp, $sp, 24
	li $t0, 28669
	sw $t0, -17336($fp)
	lw $t0, -17332($fp)
	lw $t1, -17336($fp)
	mul $t0, $t0, $t1
	sw $t0, -17340($fp)
	li $t0, 0
	sw $t0, -17344($fp)
	li $t0, 0
	sw $t0, -17348($fp)
	li $t0, 1859
	sw $t0, -17352($fp)
	lw $t0, -12168($fp)
	sw $t0, -17356($fp)
	lw $t1, -17352($fp)
	lw $t2, -17356($fp)
	beq $t1, $t2, label512
	j label513
label512:
	li $t0, 1
	sw $t0, -17348($fp)
label513:
	li $t0, 41348
	sw $t0, -17360($fp)
	lw $t1, -17348($fp)
	lw $t2, -17360($fp)
	beq $t1, $t2, label510
	j label511
label510:
	li $t0, 1
	sw $t0, -17344($fp)
label511:
	li $t0, 0
	sw $t0, -17364($fp)
	li $t0, 0
	sw $t0, -17368($fp)
	li $t0, 15727
	sw $t0, -17372($fp)
	lw $t1, -17372($fp)
	li $t2, 0
	bne $t1, $t2, label517
	j label516
label516:
	li $t0, 1
	sw $t0, -17368($fp)
label517:
	lw $t0, -3360($fp)
	sw $t0, -17376($fp)
	lw $t1, -17368($fp)
	lw $t2, -17376($fp)
	bge $t1, $t2, label514
	j label515
label514:
	li $t0, 1
	sw $t0, -17364($fp)
label515:
	lw $t0, -13224($fp)
	sw $t0, -17380($fp)
	lw $t0, -3228($fp)
	sw $t0, -17384($fp)
	lw $t0, -17380($fp)
	lw $t1, -17384($fp)
	sub $t0, $t0, $t1
	sw $t0, -17388($fp)
	li $t0, 0
	sw $t0, -17392($fp)
	lw $t0, -10092($fp)
	sw $t0, -17396($fp)
	lw $t0, -12300($fp)
	sw $t0, -17400($fp)
	lw $t0, -17396($fp)
	lw $t1, -17400($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -17404($fp)
	lw $t1, -17404($fp)
	li $t2, 0
	bne $t1, $t2, label518
	j label520
label520:
	lw $t0, -9900($fp)
	sw $t0, -17408($fp)
	lw $t1, -17408($fp)
	li $t2, 0
	bne $t1, $t2, label518
	j label519
label518:
	li $t0, 1
	sw $t0, -17392($fp)
label519:
	li $t0, 0
	sw $t0, -17412($fp)
	li $t0, 38467
	sw $t0, -17416($fp)
	li $t0, 0
	lw $t1, -17416($fp)
	sub $t0, $t0, $t1
	sw $t0, -17420($fp)
	li $t0, 4745
	sw $t0, -17424($fp)
	lw $t1, -17420($fp)
	lw $t2, -17424($fp)
	beq $t1, $t2, label521
	j label522
label521:
	li $t0, 1
	sw $t0, -17412($fp)
label522:
	addi $sp, $sp, -4
	lw $t0, -17344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17412($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -17428($fp)
	addi $sp, $sp, 24
	lw $t0, -5832($fp)
	sw $t0, -17432($fp)
	lw $t0, -17432($fp)
	sw $t0, -16808($fp)
	lw $t0, -16808($fp)
	sw $t0, -17436($fp)
	lw $t0, -3216($fp)
	sw $t0, -17440($fp)
	lw $t0, -17440($fp)
	sw $t0, -7092($fp)
	lw $t0, -7092($fp)
	sw $t0, -17444($fp)
	li $t0, 0
	sw $t0, -17448($fp)
	lw $t0, -7140($fp)
	sw $t0, -17452($fp)
	li $t0, 48999
	sw $t0, -17456($fp)
	lw $t1, -17452($fp)
	lw $t2, -17456($fp)
	bge $t1, $t2, label523
	j label524
label523:
	li $t0, 1
	sw $t0, -17448($fp)
label524:
	li $t0, 0
	sw $t0, -17460($fp)
	addi $t0, $fp, -536
	sw $t0, -17464($fp)
	lw $t0, -12612($fp)
	sw $t0, -17468($fp)
	li $t0, 4
	lw $t1, -17468($fp)
	mul $t0, $t0, $t1
	sw $t0, -17472($fp)
	lw $t0, -17472($fp)
	lw $t1, -17464($fp)
	add $t0, $t0, $t1
	sw $t0, -17476($fp)
	lw $t0, -17476($fp)
	lw $t1, 0($t0)
	sw $t1, -17480($fp)
	lw $t0, -3204($fp)
	sw $t0, -17484($fp)
	lw $t1, -17480($fp)
	lw $t2, -17484($fp)
	ble $t1, $t2, label525
	j label526
label525:
	li $t0, 1
	sw $t0, -17460($fp)
label526:
	li $t0, 0
	sw $t0, -17488($fp)
	li $t0, 20324
	sw $t0, -17492($fp)
	li $t0, 0
	lw $t1, -17492($fp)
	sub $t0, $t0, $t1
	sw $t0, -17496($fp)
	li $t0, 18083
	sw $t0, -17500($fp)
	lw $t1, -17496($fp)
	lw $t2, -17500($fp)
	bge $t1, $t2, label527
	j label528
label527:
	li $t0, 1
	sw $t0, -17488($fp)
label528:
	addi $sp, $sp, -4
	lw $t0, -17436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17488($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -17504($fp)
	addi $sp, $sp, 24
	li $t0, 10219
	sw $t0, -17508($fp)
	li $t0, 0
	sw $t0, -17512($fp)
	li $t0, 29572
	sw $t0, -17516($fp)
	lw $t1, -17516($fp)
	li $t2, 0
	bne $t1, $t2, label529
	j label532
label532:
	lw $t0, -12732($fp)
	sw $t0, -17520($fp)
	lw $t1, -17520($fp)
	li $t2, 0
	bne $t1, $t2, label529
	j label531
label531:
	lw $t0, -12120($fp)
	sw $t0, -17524($fp)
	lw $t1, -17524($fp)
	li $t2, 0
	bne $t1, $t2, label529
	j label530
label529:
	li $t0, 1
	sw $t0, -17512($fp)
label530:
	addi $sp, $sp, -4
	lw $t0, -17340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17512($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -17528($fp)
	addi $sp, $sp, 24
	lw $t0, -3240($fp)
	sw $t0, -17532($fp)
	lw $t0, -17528($fp)
	lw $t1, -17532($fp)
	sub $t0, $t0, $t1
	sw $t0, -17536($fp)
	li $t0, 0
	sw $t0, -17540($fp)
	lw $t0, -16796($fp)
	sw $t0, -17544($fp)
	lw $t0, -5556($fp)
	sw $t0, -17548($fp)
	lw $t1, -17544($fp)
	lw $t2, -17548($fp)
	blt $t1, $t2, label533
	j label535
label535:
	lw $t0, -8388($fp)
	sw $t0, -17552($fp)
	lw $t1, -17552($fp)
	li $t2, 0
	bne $t1, $t2, label533
	j label534
label533:
	li $t0, 1
	sw $t0, -17540($fp)
label534:
	addi $sp, $sp, -4
	lw $t0, -17136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17540($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -17556($fp)
	addi $sp, $sp, 24
	lw $t1, -17556($fp)
	li $t2, 0
	bne $t1, $t2, label491
	j label493
label493:
	lw $t0, -3264($fp)
	sw $t0, -17560($fp)
	lw $t1, -17560($fp)
	li $t2, 0
	bne $t1, $t2, label491
	j label492
label491:
	li $t0, 1
	sw $t0, -17132($fp)
label492:
	li $t0, 0
	sw $t0, -17564($fp)
	lw $t0, -12648($fp)
	sw $t0, -17568($fp)
	lw $t1, -17568($fp)
	li $t2, 0
	bne $t1, $t2, label537
	j label536
label536:
	li $t0, 1
	sw $t0, -17564($fp)
label537:
	li $t0, 20267
	sw $t0, -17572($fp)
	lw $t0, -17564($fp)
	lw $t1, -17572($fp)
	sub $t0, $t0, $t1
	sw $t0, -17576($fp)
	addi $t0, $fp, -200
	sw $t0, -17580($fp)
	li $t0, 2
	sw $t0, -17584($fp)
	li $t0, 4
	lw $t1, -17584($fp)
	mul $t0, $t0, $t1
	sw $t0, -17588($fp)
	lw $t0, -17588($fp)
	lw $t1, -17580($fp)
	add $t0, $t0, $t1
	sw $t0, -17592($fp)
	lw $t0, -17592($fp)
	lw $t1, 0($t0)
	sw $t1, -17596($fp)
	lw $t0, -16784($fp)
	sw $t0, -17600($fp)
	lw $t0, -17596($fp)
	lw $t1, -17600($fp)
	mul $t0, $t0, $t1
	sw $t0, -17604($fp)
	lw $t0, -12048($fp)
	sw $t0, -17608($fp)
	lw $t0, -12732($fp)
	sw $t0, -17612($fp)
	lw $t0, -17608($fp)
	lw $t1, -17612($fp)
	mul $t0, $t0, $t1
	sw $t0, -17616($fp)
	li $t0, 5744
	sw $t0, -17620($fp)
	lw $t0, -17616($fp)
	lw $t1, -17620($fp)
	mul $t0, $t0, $t1
	sw $t0, -17624($fp)
	addi $t0, $fp, -240
	sw $t0, -17628($fp)
	lw $t0, -7128($fp)
	sw $t0, -17632($fp)
	li $t0, 4
	lw $t1, -17632($fp)
	mul $t0, $t0, $t1
	sw $t0, -17636($fp)
	lw $t0, -17636($fp)
	lw $t1, -17628($fp)
	add $t0, $t0, $t1
	sw $t0, -17640($fp)
	lw $t0, -17640($fp)
	lw $t1, 0($t0)
	sw $t1, -17644($fp)
	addi $sp, $sp, -4
	lw $t0, -17132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17644($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -17648($fp)
	addi $sp, $sp, 24
	lw $t0, -16844($fp)
	sw $t0, -17652($fp)
	lw $t0, -17648($fp)
	lw $t1, -17652($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -17656($fp)
	lw $t0, -11820($fp)
	sw $t0, -17660($fp)
	lw $t0, -17660($fp)
	sw $t0, -16772($fp)
	lw $t0, -16772($fp)
	sw $t0, -17664($fp)
	li $t0, 0
	sw $t0, -17668($fp)
	li $t0, 1149
	sw $t0, -17672($fp)
	li $t0, 5613
	sw $t0, -17676($fp)
	lw $t1, -17672($fp)
	lw $t2, -17676($fp)
	blt $t1, $t2, label540
	j label539
label540:
	li $t0, 56317
	sw $t0, -17680($fp)
	lw $t1, -17680($fp)
	li $t2, 0
	bne $t1, $t2, label538
	j label539
label538:
	li $t0, 1
	sw $t0, -17668($fp)
label539:
	lw $t0, -3048($fp)
	sw $t0, -17684($fp)
	lw $t0, -17684($fp)
	sw $t0, -3036($fp)
	lw $t0, -3036($fp)
	sw $t0, -17688($fp)
	li $t0, 0
	sw $t0, -17692($fp)
	li $t0, 0
	sw $t0, -17696($fp)
	li $t0, 18192
	sw $t0, -17700($fp)
	li $t0, 20881
	sw $t0, -17704($fp)
	lw $t1, -17700($fp)
	lw $t2, -17704($fp)
	bne $t1, $t2, label543
	j label544
label543:
	li $t0, 1
	sw $t0, -17696($fp)
label544:
	li $t0, 477
	sw $t0, -17708($fp)
	lw $t1, -17696($fp)
	lw $t2, -17708($fp)
	beq $t1, $t2, label541
	j label542
label541:
	li $t0, 1
	sw $t0, -17692($fp)
label542:
	addi $sp, $sp, -4
	lw $t0, -17656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17692($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -17712($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -17012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17712($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -17716($fp)
	addi $sp, $sp, 24
	li $t0, 59491
	sw $t0, -17720($fp)
	lw $t0, -17716($fp)
	lw $t1, -17720($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -17724($fp)
	li $t0, 0
	lw $t1, -17724($fp)
	sub $t0, $t0, $t1
	sw $t0, -17728($fp)
	lw $t1, -16868($fp)
	lw $t2, -17728($fp)
	bne $t1, $t2, label470
	j label471
label470:
	li $t0, 1
	sw $t0, -16864($fp)
label471:
label160:
	addi $t0, $fp, -976
	sw $t0, -17732($fp)
	li $t0, 0
	sw $t0, -17736($fp)
	li $t0, 0
	sw $t0, -17740($fp)
	li $t0, 30788
	sw $t0, -17744($fp)
	lw $t0, -3312($fp)
	sw $t0, -17748($fp)
	lw $t1, -17744($fp)
	lw $t2, -17748($fp)
	ble $t1, $t2, label550
	j label551
label550:
	li $t0, 1
	sw $t0, -17740($fp)
label551:
	lw $t0, -3324($fp)
	sw $t0, -17752($fp)
	lw $t1, -17740($fp)
	lw $t2, -17752($fp)
	bge $t1, $t2, label548
	j label549
label548:
	li $t0, 1
	sw $t0, -17736($fp)
label549:
	li $t0, 4
	lw $t1, -17736($fp)
	mul $t0, $t0, $t1
	sw $t0, -17756($fp)
	lw $t0, -17756($fp)
	lw $t1, -17732($fp)
	add $t0, $t0, $t1
	sw $t0, -17760($fp)
	lw $t0, -17760($fp)
	lw $t1, 0($t0)
	sw $t1, -17764($fp)
	li $t0, 63071
	sw $t0, -17768($fp)
	lw $t1, -17764($fp)
	lw $t2, -17768($fp)
	beq $t1, $t2, label545
	j label546
label545:
	li $t0, 0
	sw $t0, -17772($fp)
	li $t0, 0
	sw $t0, -17776($fp)
	li $t0, 30886
	sw $t0, -17780($fp)
	lw $t0, -17780($fp)
	sw $t0, -6336($fp)
	lw $t0, -6336($fp)
	sw $t0, -17784($fp)
	lw $t0, -5856($fp)
	sw $t0, -17788($fp)
	lw $t0, -17788($fp)
	sw $t0, -5196($fp)
	lw $t0, -5196($fp)
	sw $t0, -17792($fp)
	li $t0, 0
	sw $t0, -17796($fp)
	lw $t0, -3420($fp)
	sw $t0, -17800($fp)
	li $t0, 49663
	sw $t0, -17804($fp)
	lw $t1, -17800($fp)
	lw $t2, -17804($fp)
	ble $t1, $t2, label557
	j label558
label557:
	li $t0, 1
	sw $t0, -17796($fp)
label558:
	li $t0, 0
	sw $t0, -17808($fp)
	li $t0, 10451
	sw $t0, -17812($fp)
	li $t0, 61553
	sw $t0, -17816($fp)
	lw $t0, -17812($fp)
	lw $t1, -17816($fp)
	add $t0, $t0, $t1
	sw $t0, -17820($fp)
	lw $t0, -9432($fp)
	sw $t0, -17824($fp)
	lw $t1, -17820($fp)
	lw $t2, -17824($fp)
	bne $t1, $t2, label559
	j label560
label559:
	li $t0, 1
	sw $t0, -17808($fp)
label560:
	lw $t0, -7032($fp)
	sw $t0, -17828($fp)
	lw $t0, -17828($fp)
	sw $t0, -3324($fp)
	lw $t0, -3324($fp)
	sw $t0, -17832($fp)
	addi $sp, $sp, -4
	lw $t0, -17784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17832($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -17836($fp)
	addi $sp, $sp, 24
	li $t0, 62953
	sw $t0, -17840($fp)
	lw $t0, -17840($fp)
	sw $t0, -3408($fp)
	lw $t0, -3408($fp)
	sw $t0, -17844($fp)
	lw $t0, -3396($fp)
	sw $t0, -17848($fp)
	li $t0, 0
	sw $t0, -17852($fp)
	lw $t0, -3372($fp)
	sw $t0, -17856($fp)
	li $t0, 0
	sw $t0, -17860($fp)
	li $t0, 46453
	sw $t0, -17864($fp)
	li $t0, 44431
	sw $t0, -17868($fp)
	lw $t1, -17864($fp)
	lw $t2, -17868($fp)
	bge $t1, $t2, label563
	j label564
label563:
	li $t0, 1
	sw $t0, -17860($fp)
label564:
	li $t0, 0
	sw $t0, -17872($fp)
	lw $t0, -3348($fp)
	sw $t0, -17876($fp)
	lw $t0, -3360($fp)
	sw $t0, -17880($fp)
	lw $t0, -17876($fp)
	lw $t1, -17880($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -17884($fp)
	lw $t1, -17884($fp)
	li $t2, 0
	bne $t1, $t2, label567
	j label566
label567:
	li $t0, 52290
	sw $t0, -17888($fp)
	lw $t1, -17888($fp)
	li $t2, 0
	bne $t1, $t2, label565
	j label566
label565:
	li $t0, 1
	sw $t0, -17872($fp)
label566:
	li $t0, 33053
	sw $t0, -17892($fp)
	lw $t0, -17892($fp)
	sw $t0, -3336($fp)
	lw $t0, -3336($fp)
	sw $t0, -17896($fp)
	li $t0, 47240
	sw $t0, -17900($fp)
	li $t0, 7700
	sw $t0, -17904($fp)
	lw $t0, -17900($fp)
	lw $t1, -17904($fp)
	mul $t0, $t0, $t1
	sw $t0, -17908($fp)
	li $t0, 0
	lw $t1, -17908($fp)
	sub $t0, $t0, $t1
	sw $t0, -17912($fp)
	addi $sp, $sp, -4
	lw $t0, -17856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17912($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -17916($fp)
	addi $sp, $sp, 24
	lw $t0, -3384($fp)
	sw $t0, -17920($fp)
	lw $t1, -17916($fp)
	lw $t2, -17920($fp)
	bne $t1, $t2, label561
	j label562
label561:
	li $t0, 1
	sw $t0, -17852($fp)
label562:
	li $t0, 0
	sw $t0, -17924($fp)
	li $t0, 34960
	sw $t0, -17928($fp)
	li $t0, 22824
	sw $t0, -17932($fp)
	lw $t1, -17928($fp)
	lw $t2, -17932($fp)
	bge $t1, $t2, label568
	j label570
label570:
	lw $t0, -7176($fp)
	sw $t0, -17936($fp)
	lw $t1, -17936($fp)
	li $t2, 0
	bne $t1, $t2, label568
	j label569
label568:
	li $t0, 1
	sw $t0, -17924($fp)
label569:
	addi $sp, $sp, -4
	lw $t0, -17836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17924($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -17940($fp)
	addi $sp, $sp, 24
	lw $t0, -5892($fp)
	sw $t0, -17944($fp)
	lw $t0, -3576($fp)
	sw $t0, -17948($fp)
	lw $t0, -17944($fp)
	lw $t1, -17948($fp)
	sub $t0, $t0, $t1
	sw $t0, -17952($fp)
	addi $t0, $fp, -1228
	sw $t0, -17956($fp)
	li $t0, 5
	sw $t0, -17960($fp)
	li $t0, 4
	lw $t1, -17960($fp)
	mul $t0, $t0, $t1
	sw $t0, -17964($fp)
	lw $t0, -17964($fp)
	lw $t1, -17956($fp)
	add $t0, $t0, $t1
	sw $t0, -17968($fp)
	lw $t0, -17968($fp)
	lw $t1, 0($t0)
	sw $t1, -17972($fp)
	lw $t0, -12228($fp)
	sw $t0, -17976($fp)
	lw $t0, -17976($fp)
	sw $t0, -4548($fp)
	lw $t0, -4548($fp)
	sw $t0, -17980($fp)
	addi $t0, $fp, -252
	sw $t0, -17984($fp)
	li $t0, 2
	sw $t0, -17988($fp)
	li $t0, 4
	lw $t1, -17988($fp)
	mul $t0, $t0, $t1
	sw $t0, -17992($fp)
	lw $t0, -17992($fp)
	lw $t1, -17984($fp)
	add $t0, $t0, $t1
	sw $t0, -17996($fp)
	lw $t0, -17996($fp)
	lw $t1, 0($t0)
	sw $t1, -18000($fp)
	li $t0, 0
	lw $t1, -18000($fp)
	sub $t0, $t0, $t1
	sw $t0, -18004($fp)
	li $t0, 0
	sw $t0, -18008($fp)
	addi $t0, $fp, -1336
	sw $t0, -18012($fp)
	li $t0, 2
	sw $t0, -18016($fp)
	li $t0, 4
	lw $t1, -18016($fp)
	mul $t0, $t0, $t1
	sw $t0, -18020($fp)
	lw $t0, -18020($fp)
	lw $t1, -18012($fp)
	add $t0, $t0, $t1
	sw $t0, -18024($fp)
	lw $t0, -18024($fp)
	lw $t1, 0($t0)
	sw $t1, -18028($fp)
	li $t0, 0
	sw $t0, -18032($fp)
	lw $t0, -3480($fp)
	sw $t0, -18036($fp)
	li $t0, 28681
	sw $t0, -18040($fp)
	lw $t0, -18036($fp)
	lw $t1, -18040($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -18044($fp)
	lw $t1, -18044($fp)
	li $t2, 0
	bne $t1, $t2, label573
	j label575
label575:
	li $t0, 27811
	sw $t0, -18048($fp)
	lw $t1, -18048($fp)
	li $t2, 0
	bne $t1, $t2, label573
	j label574
label573:
	li $t0, 1
	sw $t0, -18032($fp)
label574:
	li $t0, 47912
	sw $t0, -18052($fp)
	lw $t0, -18052($fp)
	sw $t0, -3216($fp)
	lw $t0, -3216($fp)
	sw $t0, -18056($fp)
	li $t0, 0
	sw $t0, -18060($fp)
	li $t0, 13510
	sw $t0, -18064($fp)
	lw $t1, -18064($fp)
	li $t2, 0
	bne $t1, $t2, label579
	j label577
label579:
	li $t0, 34726
	sw $t0, -18068($fp)
	lw $t1, -18068($fp)
	li $t2, 0
	bne $t1, $t2, label578
	j label577
label578:
	li $t0, 62559
	sw $t0, -18072($fp)
	lw $t1, -18072($fp)
	li $t2, 0
	bne $t1, $t2, label576
	j label577
label576:
	li $t0, 1
	sw $t0, -18060($fp)
label577:
	li $t0, 0
	sw $t0, -18076($fp)
	li $t0, 23197
	sw $t0, -18080($fp)
	lw $t1, -18080($fp)
	li $t2, 0
	bne $t1, $t2, label581
	j label580
label580:
	li $t0, 1
	sw $t0, -18076($fp)
label581:
	li $t0, 23274
	sw $t0, -18084($fp)
	lw $t0, -18076($fp)
	lw $t1, -18084($fp)
	mul $t0, $t0, $t1
	sw $t0, -18088($fp)
	lw $t0, -3204($fp)
	sw $t0, -18092($fp)
	lw $t0, -3468($fp)
	sw $t0, -18096($fp)
	lw $t0, -18092($fp)
	lw $t1, -18096($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -18100($fp)
	li $t0, 39967
	sw $t0, -18104($fp)
	lw $t0, -18100($fp)
	lw $t1, -18104($fp)
	mul $t0, $t0, $t1
	sw $t0, -18108($fp)
	li $t0, 0
	sw $t0, -18112($fp)
	lw $t0, -8364($fp)
	sw $t0, -18116($fp)
	lw $t1, -18116($fp)
	li $t2, 0
	bne $t1, $t2, label583
	j label582
label582:
	li $t0, 1
	sw $t0, -18112($fp)
label583:
	lw $t0, -3456($fp)
	sw $t0, -18120($fp)
	lw $t0, -18120($fp)
	sw $t0, -3444($fp)
	lw $t0, -3444($fp)
	sw $t0, -18124($fp)
	li $t0, 0
	sw $t0, -18128($fp)
	li $t0, 10122
	sw $t0, -18132($fp)
	li $t0, 56229
	sw $t0, -18136($fp)
	lw $t0, -18132($fp)
	lw $t1, -18136($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -18140($fp)
	li $t0, 8351
	sw $t0, -18144($fp)
	lw $t1, -18140($fp)
	lw $t2, -18144($fp)
	bne $t1, $t2, label584
	j label585
label584:
	li $t0, 1
	sw $t0, -18128($fp)
label585:
	li $t0, 0
	sw $t0, -18148($fp)
	lw $t0, -6588($fp)
	sw $t0, -18152($fp)
	lw $t1, -18152($fp)
	li $t2, 0
	bne $t1, $t2, label586
	j label588
label588:
	li $t0, 34776
	sw $t0, -18156($fp)
	lw $t1, -18156($fp)
	li $t2, 0
	bne $t1, $t2, label586
	j label587
label586:
	li $t0, 1
	sw $t0, -18148($fp)
label587:
	addi $sp, $sp, -4
	lw $t0, -18108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18148($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -18160($fp)
	addi $sp, $sp, 24
	lw $t0, -12072($fp)
	sw $t0, -18164($fp)
	lw $t0, -18160($fp)
	lw $t1, -18164($fp)
	sub $t0, $t0, $t1
	sw $t0, -18168($fp)
	li $t0, 0
	sw $t0, -18172($fp)
	lw $t0, -5604($fp)
	sw $t0, -18176($fp)
	lw $t0, -12036($fp)
	sw $t0, -18180($fp)
	lw $t1, -18176($fp)
	lw $t2, -18180($fp)
	bge $t1, $t2, label589
	j label590
label589:
	li $t0, 1
	sw $t0, -18172($fp)
label590:
	li $t0, 25584
	sw $t0, -18184($fp)
	lw $t0, -12300($fp)
	sw $t0, -18188($fp)
	lw $t0, -18184($fp)
	lw $t1, -18188($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -18192($fp)
	addi $sp, $sp, -4
	lw $t0, -18060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18192($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -18196($fp)
	addi $sp, $sp, 24
	li $t0, 61540
	sw $t0, -18200($fp)
	lw $t0, -7032($fp)
	sw $t0, -18204($fp)
	lw $t0, -18200($fp)
	lw $t1, -18204($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -18208($fp)
	addi $sp, $sp, -4
	lw $t0, -18028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18208($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -18212($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -18216($fp)
	li $t0, 410
	sw $t0, -18220($fp)
	lw $t1, -18220($fp)
	li $t2, 0
	bne $t1, $t2, label592
	j label591
label591:
	li $t0, 1
	sw $t0, -18216($fp)
label592:
	li $t0, 0
	sw $t0, -18224($fp)
	lw $t0, -1980($fp)
	sw $t0, -18228($fp)
	lw $t0, -6780($fp)
	sw $t0, -18232($fp)
	lw $t0, -18228($fp)
	lw $t1, -18232($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -18236($fp)
	lw $t0, -11940($fp)
	sw $t0, -18240($fp)
	lw $t1, -18236($fp)
	lw $t2, -18240($fp)
	blt $t1, $t2, label593
	j label594
label593:
	li $t0, 1
	sw $t0, -18224($fp)
label594:
	li $t0, 0
	sw $t0, -18244($fp)
	lw $t0, -8364($fp)
	sw $t0, -18248($fp)
	lw $t0, -3048($fp)
	sw $t0, -18252($fp)
	lw $t1, -18248($fp)
	lw $t2, -18252($fp)
	beq $t1, $t2, label597
	j label596
label597:
	li $t0, 33406
	sw $t0, -18256($fp)
	lw $t1, -18256($fp)
	li $t2, 0
	bne $t1, $t2, label595
	j label596
label595:
	li $t0, 1
	sw $t0, -18244($fp)
label596:
	lw $t0, -3432($fp)
	sw $t0, -18260($fp)
	lw $t0, -18260($fp)
	sw $t0, -4584($fp)
	lw $t0, -4584($fp)
	sw $t0, -18264($fp)
	addi $sp, $sp, -4
	lw $t0, -18212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18264($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -18268($fp)
	addi $sp, $sp, 24
	lw $t0, -3492($fp)
	sw $t0, -18272($fp)
	lw $t1, -18268($fp)
	lw $t2, -18272($fp)
	ble $t1, $t2, label571
	j label572
label571:
	li $t0, 1
	sw $t0, -18008($fp)
label572:
	addi $sp, $sp, -4
	lw $t0, -17952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18008($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -18276($fp)
	addi $sp, $sp, 24
	lw $t1, -17940($fp)
	lw $t2, -18276($fp)
	bge $t1, $t2, label555
	j label556
label555:
	li $t0, 1
	sw $t0, -17776($fp)
label556:
	li $t0, 13905
	sw $t0, -18280($fp)
	lw $t1, -17776($fp)
	lw $t2, -18280($fp)
	bge $t1, $t2, label554
	j label553
label554:
	li $t0, 52258
	sw $t0, -18284($fp)
	lw $t1, -18284($fp)
	li $t2, 0
	bne $t1, $t2, label552
	j label553
label552:
	li $t0, 1
	sw $t0, -17772($fp)
label553:
	lw $ra, -4($fp)
	lw $v0, -17772($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label547
label546:
	li $t0, 0
	sw $t0, -18288($fp)
	lw $t0, -5184($fp)
	sw $t0, -18292($fp)
	li $t0, 26471
	sw $t0, -18296($fp)
	lw $t0, -18292($fp)
	lw $t1, -18296($fp)
	mul $t0, $t0, $t1
	sw $t0, -18300($fp)
	li $t0, 0
	sw $t0, -18304($fp)
	addi $t0, $fp, -1324
	sw $t0, -18308($fp)
	lw $t0, -3636($fp)
	sw $t0, -18312($fp)
	li $t0, 4
	lw $t1, -18312($fp)
	mul $t0, $t0, $t1
	sw $t0, -18316($fp)
	lw $t0, -18316($fp)
	lw $t1, -18308($fp)
	add $t0, $t0, $t1
	sw $t0, -18320($fp)
	lw $t0, -18320($fp)
	lw $t1, 0($t0)
	sw $t1, -18324($fp)
	li $t0, 28060
	sw $t0, -18328($fp)
	lw $t1, -18324($fp)
	lw $t2, -18328($fp)
	beq $t1, $t2, label603
	j label604
label603:
	li $t0, 1
	sw $t0, -18304($fp)
label604:
	li $t0, 60986
	sw $t0, -18332($fp)
	lw $t0, -18332($fp)
	sw $t0, -3624($fp)
	lw $t0, -3624($fp)
	sw $t0, -18336($fp)
	lw $t0, -5448($fp)
	sw $t0, -18340($fp)
	lw $t0, -18340($fp)
	sw $t0, -5040($fp)
	lw $t0, -5040($fp)
	sw $t0, -18344($fp)
	li $t0, 62709
	sw $t0, -18348($fp)
	lw $t0, -8448($fp)
	sw $t0, -18352($fp)
	lw $t0, -18348($fp)
	lw $t1, -18352($fp)
	add $t0, $t0, $t1
	sw $t0, -18356($fp)
	li $t0, 58601
	sw $t0, -18360($fp)
	lw $t0, -18356($fp)
	lw $t1, -18360($fp)
	sub $t0, $t0, $t1
	sw $t0, -18364($fp)
	li $t0, 0
	sw $t0, -18368($fp)
	lw $t0, -4572($fp)
	sw $t0, -18372($fp)
	lw $t0, -3204($fp)
	sw $t0, -18376($fp)
	lw $t0, -18372($fp)
	lw $t1, -18376($fp)
	add $t0, $t0, $t1
	sw $t0, -18380($fp)
	lw $t0, -3612($fp)
	sw $t0, -18384($fp)
	lw $t1, -18380($fp)
	lw $t2, -18384($fp)
	ble $t1, $t2, label605
	j label606
label605:
	li $t0, 1
	sw $t0, -18368($fp)
label606:
	lw $t0, -12996($fp)
	sw $t0, -18388($fp)
	li $t0, 11322
	sw $t0, -18392($fp)
	lw $t0, -18392($fp)
	sw $t0, -3600($fp)
	lw $t0, -3600($fp)
	sw $t0, -18396($fp)
	li $t0, 0
	sw $t0, -18400($fp)
	li $t0, 0
	sw $t0, -18404($fp)
	lw $t0, -10212($fp)
	sw $t0, -18408($fp)
	lw $t0, -3588($fp)
	sw $t0, -18412($fp)
	lw $t1, -18408($fp)
	lw $t2, -18412($fp)
	blt $t1, $t2, label609
	j label610
label609:
	li $t0, 1
	sw $t0, -18404($fp)
label610:
	li $t0, 62584
	sw $t0, -18416($fp)
	lw $t1, -18404($fp)
	lw $t2, -18416($fp)
	blt $t1, $t2, label607
	j label608
label607:
	li $t0, 1
	sw $t0, -18400($fp)
label608:
	addi $sp, $sp, -4
	lw $t0, -18364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18400($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -18420($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -18420($fp)
	sub $t0, $t0, $t1
	sw $t0, -18424($fp)
	addi $sp, $sp, -4
	lw $t0, -18300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18424($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -18428($fp)
	addi $sp, $sp, 24
	lw $t1, -18428($fp)
	li $t2, 0
	bne $t1, $t2, label602
	j label601
label601:
	li $t0, 1
	sw $t0, -18288($fp)
label602:
	lw $t0, -5508($fp)
	sw $t0, -18432($fp)
	lw $t0, -18288($fp)
	lw $t1, -18432($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -18436($fp)
	lw $t1, -18436($fp)
	li $t2, 0
	bne $t1, $t2, label598
	j label599
label598:
	li $t0, 61396
	sw $t0, -18440($fp)
	lw $t0, -18440($fp)
	sw $t0, -18444($fp)
	lw $t0, -18444($fp)
	sw $t0, -18448($fp)
	li $t0, 24064
	sw $t0, -18452($fp)
	lw $t0, -18452($fp)
	sw $t0, -18456($fp)
	lw $t0, -18456($fp)
	sw $t0, -18460($fp)
	li $t0, 52055
	sw $t0, -18464($fp)
	lw $t0, -18464($fp)
	sw $t0, -18468($fp)
	lw $t0, -18468($fp)
	sw $t0, -18472($fp)
	li $t0, 30636
	sw $t0, -18476($fp)
	lw $t0, -18476($fp)
	sw $t0, -18480($fp)
	lw $t0, -18480($fp)
	sw $t0, -18484($fp)
label611:
	li $t0, 34186
	sw $t0, -18488($fp)
	li $t0, 0
	sw $t0, -18492($fp)
	li $t0, 410
	sw $t0, -18496($fp)
	lw $t0, -3672($fp)
	sw $t0, -18500($fp)
	lw $t1, -18496($fp)
	lw $t2, -18500($fp)
	beq $t1, $t2, label616
	j label615
label616:
	lw $t0, -12120($fp)
	sw $t0, -18504($fp)
	lw $t1, -18504($fp)
	li $t2, 0
	bne $t1, $t2, label614
	j label615
label614:
	li $t0, 1
	sw $t0, -18492($fp)
label615:
	li $t0, 0
	sw $t0, -18508($fp)
	li $t0, 42748
	sw $t0, -18512($fp)
	li $t0, 38987
	sw $t0, -18516($fp)
	lw $t0, -18512($fp)
	lw $t1, -18516($fp)
	sub $t0, $t0, $t1
	sw $t0, -18520($fp)
	lw $t1, -18520($fp)
	li $t2, 0
	bne $t1, $t2, label617
	j label619
label619:
	li $t0, 8617
	sw $t0, -18524($fp)
	lw $t1, -18524($fp)
	li $t2, 0
	bne $t1, $t2, label617
	j label618
label617:
	li $t0, 1
	sw $t0, -18508($fp)
label618:
	li $t0, 0
	sw $t0, -18528($fp)
	lw $t0, -3648($fp)
	sw $t0, -18532($fp)
	lw $t0, -3660($fp)
	sw $t0, -18536($fp)
	lw $t0, -18532($fp)
	lw $t1, -18536($fp)
	sub $t0, $t0, $t1
	sw $t0, -18540($fp)
	lw $t1, -18540($fp)
	li $t2, 0
	bne $t1, $t2, label622
	j label621
label622:
	lw $t0, -18456($fp)
	sw $t0, -18544($fp)
	lw $t1, -18544($fp)
	li $t2, 0
	bne $t1, $t2, label620
	j label621
label620:
	li $t0, 1
	sw $t0, -18528($fp)
label621:
	li $t0, 0
	sw $t0, -18548($fp)
	addi $t0, $fp, -1296
	sw $t0, -18552($fp)
	lw $t0, -7152($fp)
	sw $t0, -18556($fp)
	li $t0, 4
	lw $t1, -18556($fp)
	mul $t0, $t0, $t1
	sw $t0, -18560($fp)
	lw $t0, -18560($fp)
	lw $t1, -18552($fp)
	add $t0, $t0, $t1
	sw $t0, -18564($fp)
	lw $t0, -18564($fp)
	lw $t1, 0($t0)
	sw $t1, -18568($fp)
	lw $t1, -18568($fp)
	li $t2, 0
	bne $t1, $t2, label624
	j label623
label623:
	li $t0, 1
	sw $t0, -18548($fp)
label624:
	li $t0, 0
	sw $t0, -18572($fp)
	lw $t0, -18444($fp)
	sw $t0, -18576($fp)
	lw $t1, -18576($fp)
	li $t2, 0
	bne $t1, $t2, label625
	j label628
label628:
	lw $t0, -3888($fp)
	sw $t0, -18580($fp)
	lw $t1, -18580($fp)
	li $t2, 0
	bne $t1, $t2, label625
	j label627
label627:
	lw $t0, -7044($fp)
	sw $t0, -18584($fp)
	lw $t1, -18584($fp)
	li $t2, 0
	bne $t1, $t2, label625
	j label626
label625:
	li $t0, 1
	sw $t0, -18572($fp)
label626:
	addi $sp, $sp, -4
	lw $t0, -18492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18572($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -18588($fp)
	addi $sp, $sp, 24
	lw $t1, -18488($fp)
	lw $t2, -18588($fp)
	bne $t1, $t2, label612
	j label613
label612:
	li $t0, 62261
	sw $t0, -18592($fp)
	lw $t0, -18592($fp)
	sw $t0, -18596($fp)
	lw $t0, -18596($fp)
	sw $t0, -18600($fp)
	li $t0, 22128
	sw $t0, -18604($fp)
	lw $t0, -18604($fp)
	sw $t0, -18608($fp)
	lw $t0, -18608($fp)
	sw $t0, -18612($fp)
	li $t0, 35136
	sw $t0, -18616($fp)
	lw $t0, -18616($fp)
	sw $t0, -18620($fp)
	lw $t0, -18620($fp)
	sw $t0, -18624($fp)
	li $t0, 59284
	sw $t0, -18628($fp)
	lw $t0, -18628($fp)
	sw $t0, -18632($fp)
	lw $t0, -18632($fp)
	sw $t0, -18636($fp)
	li $t0, 0
	sw $t0, -18640($fp)
	lw $t0, -3696($fp)
	sw $t0, -18644($fp)
	lw $t1, -18644($fp)
	li $t2, 0
	bne $t1, $t2, label632
	j label631
label632:
	lw $t0, -18608($fp)
	sw $t0, -18648($fp)
	lw $t1, -18648($fp)
	li $t2, 0
	bne $t1, $t2, label629
	j label631
label631:
	li $t0, 41397
	sw $t0, -18652($fp)
	lw $t1, -18652($fp)
	li $t2, 0
	bne $t1, $t2, label629
	j label630
label629:
	li $t0, 1
	sw $t0, -18640($fp)
label630:
	li $t0, 0
	sw $t0, -18656($fp)
	li $t0, 14147
	sw $t0, -18660($fp)
	lw $t0, -5232($fp)
	sw $t0, -18664($fp)
	lw $t1, -18660($fp)
	lw $t2, -18664($fp)
	bne $t1, $t2, label633
	j label635
label635:
	lw $t0, -9348($fp)
	sw $t0, -18668($fp)
	lw $t1, -18668($fp)
	li $t2, 0
	bne $t1, $t2, label633
	j label634
label633:
	li $t0, 1
	sw $t0, -18656($fp)
label634:
	addi $t0, $fp, -1020
	sw $t0, -18672($fp)
	lw $t0, -6780($fp)
	sw $t0, -18676($fp)
	li $t0, 4
	lw $t1, -18676($fp)
	mul $t0, $t0, $t1
	sw $t0, -18680($fp)
	lw $t0, -18680($fp)
	lw $t1, -18672($fp)
	add $t0, $t0, $t1
	sw $t0, -18684($fp)
	lw $t0, -18684($fp)
	lw $t1, 0($t0)
	sw $t1, -18688($fp)
	li $t0, 0
	lw $t1, -18688($fp)
	sub $t0, $t0, $t1
	sw $t0, -18692($fp)
	li $t0, 0
	sw $t0, -18696($fp)
	lw $t0, -9492($fp)
	sw $t0, -18700($fp)
	li $t0, 32245
	sw $t0, -18704($fp)
	lw $t1, -18700($fp)
	lw $t2, -18704($fp)
	bne $t1, $t2, label638
	j label637
label638:
	lw $t0, -11040($fp)
	sw $t0, -18708($fp)
	lw $t1, -18708($fp)
	li $t2, 0
	bne $t1, $t2, label636
	j label637
label636:
	li $t0, 1
	sw $t0, -18696($fp)
label637:
	li $t0, 14926
	sw $t0, -18712($fp)
	li $t0, 0
	sw $t0, -18716($fp)
	lw $t0, -3372($fp)
	sw $t0, -18720($fp)
	lw $t1, -18720($fp)
	li $t2, 0
	bne $t1, $t2, label642
	j label641
label642:
	li $t0, 51623
	sw $t0, -18724($fp)
	lw $t1, -18724($fp)
	li $t2, 0
	bne $t1, $t2, label639
	j label641
label641:
	lw $t0, -7056($fp)
	sw $t0, -18728($fp)
	lw $t1, -18728($fp)
	li $t2, 0
	bne $t1, $t2, label639
	j label640
label639:
	li $t0, 1
	sw $t0, -18716($fp)
label640:
	addi $t0, $fp, -452
	sw $t0, -18732($fp)
	li $t0, 1
	sw $t0, -18736($fp)
	li $t0, 4
	lw $t1, -18736($fp)
	mul $t0, $t0, $t1
	sw $t0, -18740($fp)
	lw $t0, -18740($fp)
	lw $t1, -18732($fp)
	add $t0, $t0, $t1
	sw $t0, -18744($fp)
	lw $t0, -18744($fp)
	lw $t1, 0($t0)
	sw $t1, -18748($fp)
	li $t0, 36795
	sw $t0, -18752($fp)
	lw $t0, -18748($fp)
	lw $t1, -18752($fp)
	sub $t0, $t0, $t1
	sw $t0, -18756($fp)
	li $t0, 0
	sw $t0, -18760($fp)
	li $t0, 24813
	sw $t0, -18764($fp)
	lw $t0, -5868($fp)
	sw $t0, -18768($fp)
	lw $t0, -18764($fp)
	lw $t1, -18768($fp)
	sub $t0, $t0, $t1
	sw $t0, -18772($fp)
	li $t0, 25473
	sw $t0, -18776($fp)
	lw $t1, -18772($fp)
	lw $t2, -18776($fp)
	blt $t1, $t2, label643
	j label644
label643:
	li $t0, 1
	sw $t0, -18760($fp)
label644:
	addi $sp, $sp, -4
	lw $t0, -18696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18760($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -18780($fp)
	addi $sp, $sp, 24
	li $t0, 2191
	sw $t0, -18784($fp)
	li $t0, 0
	sw $t0, -18788($fp)
	li $t0, 11567
	sw $t0, -18792($fp)
	lw $t0, -10272($fp)
	sw $t0, -18796($fp)
	lw $t1, -18792($fp)
	lw $t2, -18796($fp)
	beq $t1, $t2, label647
	j label646
label647:
	lw $t0, -3684($fp)
	sw $t0, -18800($fp)
	lw $t1, -18800($fp)
	li $t2, 0
	bne $t1, $t2, label645
	j label646
label645:
	li $t0, 1
	sw $t0, -18788($fp)
label646:
	li $t0, 0
	sw $t0, -18804($fp)
	lw $t0, -1608($fp)
	sw $t0, -18808($fp)
	li $t0, 61922
	sw $t0, -18812($fp)
	lw $t0, -18808($fp)
	lw $t1, -18812($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -18816($fp)
	li $t0, 6660
	sw $t0, -18820($fp)
	lw $t1, -18816($fp)
	lw $t2, -18820($fp)
	bne $t1, $t2, label648
	j label649
label648:
	li $t0, 1
	sw $t0, -18804($fp)
label649:
	li $t0, 0
	sw $t0, -18824($fp)
	addi $t0, $fp, -1188
	sw $t0, -18828($fp)
	li $t0, 0
	sw $t0, -18832($fp)
	li $t0, 4
	lw $t1, -18832($fp)
	mul $t0, $t0, $t1
	sw $t0, -18836($fp)
	lw $t0, -18836($fp)
	lw $t1, -18828($fp)
	add $t0, $t0, $t1
	sw $t0, -18840($fp)
	lw $t0, -18840($fp)
	lw $t1, 0($t0)
	sw $t1, -18844($fp)
	lw $t1, -18844($fp)
	li $t2, 0
	bne $t1, $t2, label650
	j label652
label652:
	li $t0, 49952
	sw $t0, -18848($fp)
	lw $t1, -18848($fp)
	li $t2, 0
	bne $t1, $t2, label650
	j label651
label650:
	li $t0, 1
	sw $t0, -18824($fp)
label651:
	addi $sp, $sp, -4
	lw $t0, -18780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18824($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -18852($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -18856($fp)
	lw $t0, -18596($fp)
	sw $t0, -18860($fp)
	lw $t1, -18860($fp)
	li $t2, 0
	bne $t1, $t2, label654
	j label653
label653:
	li $t0, 1
	sw $t0, -18856($fp)
label654:
	li $t0, 4504
	sw $t0, -18864($fp)
	lw $t0, -18856($fp)
	lw $t1, -18864($fp)
	mul $t0, $t0, $t1
	sw $t0, -18868($fp)
	addi $sp, $sp, -4
	lw $t0, -18640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18868($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -18872($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -18876($fp)
	lw $t0, -9912($fp)
	sw $t0, -18880($fp)
	lw $t1, -18880($fp)
	li $t2, 0
	bne $t1, $t2, label656
	j label655
label655:
	li $t0, 1
	sw $t0, -18876($fp)
label656:
	addi $t0, $fp, -1264
	sw $t0, -18884($fp)
	lw $t0, -9516($fp)
	sw $t0, -18888($fp)
	lw $t0, -3708($fp)
	sw $t0, -18892($fp)
	lw $t0, -18888($fp)
	lw $t1, -18892($fp)
	add $t0, $t0, $t1
	sw $t0, -18896($fp)
	li $t0, 4
	lw $t1, -18896($fp)
	mul $t0, $t0, $t1
	sw $t0, -18900($fp)
	lw $t0, -18900($fp)
	lw $t1, -18884($fp)
	add $t0, $t0, $t1
	sw $t0, -18904($fp)
	lw $t0, -18904($fp)
	lw $t1, 0($t0)
	sw $t1, -18908($fp)
	lw $t0, -18876($fp)
	lw $t1, -18908($fp)
	add $t0, $t0, $t1
	sw $t0, -18912($fp)
	li $t0, 0
	sw $t0, -18916($fp)
	li $t0, 0
	sw $t0, -18920($fp)
	li $t0, 28105
	sw $t0, -18924($fp)
	lw $t1, -18924($fp)
	li $t2, 0
	bne $t1, $t2, label660
	j label659
label659:
	li $t0, 1
	sw $t0, -18920($fp)
label660:
	lw $t0, -2664($fp)
	sw $t0, -18928($fp)
	lw $t0, -18920($fp)
	lw $t1, -18928($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -18932($fp)
	lw $t0, -3420($fp)
	sw $t0, -18936($fp)
	li $t0, 0
	lw $t1, -18936($fp)
	sub $t0, $t0, $t1
	sw $t0, -18940($fp)
	lw $t1, -18932($fp)
	lw $t2, -18940($fp)
	bne $t1, $t2, label657
	j label658
label657:
	li $t0, 1
	sw $t0, -18916($fp)
label658:
	li $t0, 0
	sw $t0, -18944($fp)
	lw $t0, -13224($fp)
	sw $t0, -18948($fp)
	lw $t0, -18948($fp)
	sw $t0, -3336($fp)
	lw $t0, -3336($fp)
	sw $t0, -18952($fp)
	li $t0, 0
	sw $t0, -18956($fp)
	li $t0, 32192
	sw $t0, -18960($fp)
	lw $t1, -18960($fp)
	li $t2, 0
	bne $t1, $t2, label664
	j label666
label666:
	li $t0, 15479
	sw $t0, -18964($fp)
	lw $t1, -18964($fp)
	li $t2, 0
	bne $t1, $t2, label664
	j label665
label664:
	li $t0, 1
	sw $t0, -18956($fp)
label665:
	lw $t0, -7164($fp)
	sw $t0, -18968($fp)
	li $t0, 0
	sw $t0, -18972($fp)
	li $t0, 5129
	sw $t0, -18976($fp)
	lw $t0, -3732($fp)
	sw $t0, -18980($fp)
	lw $t0, -18976($fp)
	lw $t1, -18980($fp)
	sub $t0, $t0, $t1
	sw $t0, -18984($fp)
	lw $t1, -18984($fp)
	li $t2, 0
	bne $t1, $t2, label667
	j label669
label669:
	lw $t0, -3744($fp)
	sw $t0, -18988($fp)
	lw $t1, -18988($fp)
	li $t2, 0
	bne $t1, $t2, label667
	j label668
label667:
	li $t0, 1
	sw $t0, -18972($fp)
label668:
	li $t0, 6862
	sw $t0, -18992($fp)
	li $t0, 0
	lw $t1, -18992($fp)
	sub $t0, $t0, $t1
	sw $t0, -18996($fp)
	li $t0, 0
	lw $t1, -18996($fp)
	sub $t0, $t0, $t1
	sw $t0, -19000($fp)
	lw $t0, -3720($fp)
	sw $t0, -19004($fp)
	li $t0, 0
	lw $t1, -19004($fp)
	sub $t0, $t0, $t1
	sw $t0, -19008($fp)
	li $t0, 58741
	sw $t0, -19012($fp)
	lw $t0, -7128($fp)
	sw $t0, -19016($fp)
	lw $t0, -19012($fp)
	lw $t1, -19016($fp)
	mul $t0, $t0, $t1
	sw $t0, -19020($fp)
	lw $t0, -2016($fp)
	sw $t0, -19024($fp)
	lw $t0, -19020($fp)
	lw $t1, -19024($fp)
	mul $t0, $t0, $t1
	sw $t0, -19028($fp)
	addi $sp, $sp, -4
	lw $t0, -18968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19028($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -19032($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -19036($fp)
	lw $t0, -12996($fp)
	sw $t0, -19040($fp)
	li $t0, 27917
	sw $t0, -19044($fp)
	lw $t0, -19040($fp)
	lw $t1, -19044($fp)
	add $t0, $t0, $t1
	sw $t0, -19048($fp)
	lw $t0, -10284($fp)
	sw $t0, -19052($fp)
	lw $t1, -19048($fp)
	lw $t2, -19052($fp)
	beq $t1, $t2, label670
	j label671
label670:
	li $t0, 1
	sw $t0, -19036($fp)
label671:
	lw $t0, -2304($fp)
	sw $t0, -19056($fp)
	lw $t0, -3036($fp)
	sw $t0, -19060($fp)
	lw $t0, -19056($fp)
	lw $t1, -19060($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -19064($fp)
	li $t0, 38211
	sw $t0, -19068($fp)
	lw $t0, -19064($fp)
	lw $t1, -19068($fp)
	add $t0, $t0, $t1
	sw $t0, -19072($fp)
	addi $sp, $sp, -4
	lw $t0, -18952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -18956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19072($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -19076($fp)
	addi $sp, $sp, 24
	li $t0, 5539
	sw $t0, -19080($fp)
	lw $t0, -19076($fp)
	lw $t1, -19080($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -19084($fp)
	li $t0, 28918
	sw $t0, -19088($fp)
	lw $t0, -6660($fp)
	sw $t0, -19092($fp)
	lw $t0, -19088($fp)
	lw $t1, -19092($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -19096($fp)
	lw $t0, -3756($fp)
	sw $t0, -19100($fp)
	lw $t0, -19096($fp)
	lw $t1, -19100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -19104($fp)
	lw $t1, -19084($fp)
	lw $t2, -19104($fp)
	bgt $t1, $t2, label661
	j label663
label663:
	li $t0, 37607
	sw $t0, -19108($fp)
	li $t0, 0
	sw $t0, -19112($fp)
	li $t0, 40676
	sw $t0, -19116($fp)
	lw $t1, -19116($fp)
	li $t2, 0
	bne $t1, $t2, label673
	j label672
label672:
	li $t0, 1
	sw $t0, -19112($fp)
label673:
	lw $t0, -19108($fp)
	lw $t1, -19112($fp)
	sub $t0, $t0, $t1
	sw $t0, -19120($fp)
	lw $t1, -19120($fp)
	li $t2, 0
	bne $t1, $t2, label661
	j label662
label661:
	li $t0, 1
	sw $t0, -18944($fp)
label662:
	li $t0, 0
	sw $t0, -19124($fp)
	li $t0, 0
	sw $t0, -19128($fp)
	addi $t0, $fp, -292
	sw $t0, -19132($fp)
	lw $t0, -8988($fp)
	sw $t0, -19136($fp)
	li $t0, 4
	lw $t1, -19136($fp)
	mul $t0, $t0, $t1
	sw $t0, -19140($fp)
	lw $t0, -19140($fp)
	lw $t1, -19132($fp)
	add $t0, $t0, $t1
	sw $t0, -19144($fp)
	lw $t0, -19144($fp)
	lw $t1, 0($t0)
	sw $t1, -19148($fp)
	li $t0, 0
	sw $t0, -19152($fp)
	lw $t0, -5184($fp)
	sw $t0, -19156($fp)
	lw $t1, -19156($fp)
	li $t2, 0
	bne $t1, $t2, label681
	j label680
label681:
	lw $t0, -3912($fp)
	sw $t0, -19160($fp)
	lw $t1, -19160($fp)
	li $t2, 0
	bne $t1, $t2, label679
	j label680
label679:
	li $t0, 1
	sw $t0, -19152($fp)
label680:
	li $t0, 0
	sw $t0, -19164($fp)
	li $t0, 0
	sw $t0, -19168($fp)
	li $t0, 35344
	sw $t0, -19172($fp)
	lw $t1, -19172($fp)
	li $t2, 0
	bne $t1, $t2, label686
	j label685
label685:
	li $t0, 1
	sw $t0, -19168($fp)
label686:
	addi $t0, $fp, -548
	sw $t0, -19176($fp)
	lw $t0, -3300($fp)
	sw $t0, -19180($fp)
	li $t0, 4
	lw $t1, -19180($fp)
	mul $t0, $t0, $t1
	sw $t0, -19184($fp)
	lw $t0, -19184($fp)
	lw $t1, -19176($fp)
	add $t0, $t0, $t1
	sw $t0, -19188($fp)
	lw $t0, -19188($fp)
	lw $t1, 0($t0)
	sw $t1, -19192($fp)
	lw $t0, -3900($fp)
	sw $t0, -19196($fp)
	li $t0, 0
	lw $t1, -19196($fp)
	sub $t0, $t0, $t1
	sw $t0, -19200($fp)
	li $t0, 0
	sw $t0, -19204($fp)
	lw $t0, -3888($fp)
	sw $t0, -19208($fp)
	li $t0, 44226
	sw $t0, -19212($fp)
	lw $t1, -19208($fp)
	lw $t2, -19212($fp)
	beq $t1, $t2, label687
	j label689
label689:
	li $t0, 26528
	sw $t0, -19216($fp)
	lw $t1, -19216($fp)
	li $t2, 0
	bne $t1, $t2, label687
	j label688
label687:
	li $t0, 1
	sw $t0, -19204($fp)
label688:
	lw $t0, -1764($fp)
	sw $t0, -19220($fp)
	li $t0, 0
	lw $t1, -19220($fp)
	sub $t0, $t0, $t1
	sw $t0, -19224($fp)
	li $t0, 0
	lw $t1, -19224($fp)
	sub $t0, $t0, $t1
	sw $t0, -19228($fp)
	addi $sp, $sp, -4
	lw $t0, -19168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19228($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -19232($fp)
	addi $sp, $sp, 24
	lw $t1, -19232($fp)
	li $t2, 0
	bne $t1, $t2, label682
	j label684
label684:
	li $t0, 50886
	sw $t0, -19236($fp)
	lw $t1, -19236($fp)
	li $t2, 0
	bne $t1, $t2, label682
	j label683
label682:
	li $t0, 1
	sw $t0, -19164($fp)
label683:
	li $t0, 38957
	sw $t0, -19240($fp)
	li $t0, 42112
	sw $t0, -19244($fp)
	lw $t0, -2880($fp)
	sw $t0, -19248($fp)
	addi $sp, $sp, -4
	lw $t0, -19152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19248($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -19252($fp)
	addi $sp, $sp, 24
	li $t0, 22666
	sw $t0, -19256($fp)
	lw $t0, -13068($fp)
	sw $t0, -19260($fp)
	addi $t0, $fp, -272
	sw $t0, -19264($fp)
	lw $t0, -18620($fp)
	sw $t0, -19268($fp)
	li $t0, 4
	lw $t1, -19268($fp)
	mul $t0, $t0, $t1
	sw $t0, -19272($fp)
	lw $t0, -19272($fp)
	lw $t1, -19264($fp)
	add $t0, $t0, $t1
	sw $t0, -19276($fp)
	lw $t0, -19276($fp)
	lw $t1, 0($t0)
	sw $t1, -19280($fp)
	addi $sp, $sp, -4
	lw $t0, -19148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19280($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -19284($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -19284($fp)
	sub $t0, $t0, $t1
	sw $t0, -19288($fp)
	lw $t1, -19288($fp)
	li $t2, 0
	bne $t1, $t2, label678
	j label677
label677:
	li $t0, 1
	sw $t0, -19128($fp)
label678:
	addi $t0, $fp, -360
	sw $t0, -19292($fp)
	lw $t0, -18632($fp)
	sw $t0, -19296($fp)
	li $t0, 4
	lw $t1, -19296($fp)
	mul $t0, $t0, $t1
	sw $t0, -19300($fp)
	lw $t0, -19300($fp)
	lw $t1, -19292($fp)
	add $t0, $t0, $t1
	sw $t0, -19304($fp)
	lw $t0, -19304($fp)
	lw $t1, 0($t0)
	sw $t1, -19308($fp)
	lw $t0, -19128($fp)
	lw $t1, -19308($fp)
	sub $t0, $t0, $t1
	sw $t0, -19312($fp)
	lw $t1, -19312($fp)
	li $t2, 0
	bne $t1, $t2, label674
	j label676
label676:
	lw $t0, -12120($fp)
	sw $t0, -19316($fp)
	lw $t1, -19316($fp)
	li $t2, 0
	bne $t1, $t2, label674
	j label675
label674:
	li $t0, 1
	sw $t0, -19124($fp)
label675:
	j label611
label613:
	li $t0, 0
	sw $t0, -19320($fp)
	lw $t0, -18468($fp)
	sw $t0, -19324($fp)
	li $t0, 0
	sw $t0, -19328($fp)
	li $t0, 38095
	sw $t0, -19332($fp)
	lw $t1, -19332($fp)
	li $t2, 0
	bne $t1, $t2, label694
	j label693
label693:
	li $t0, 1
	sw $t0, -19328($fp)
label694:
	lw $t0, -19324($fp)
	lw $t1, -19328($fp)
	mul $t0, $t0, $t1
	sw $t0, -19336($fp)
	li $t0, 0
	lw $t1, -19336($fp)
	sub $t0, $t0, $t1
	sw $t0, -19340($fp)
	li $t0, 0
	sw $t0, -19344($fp)
	li $t0, 37535
	sw $t0, -19348($fp)
	lw $t1, -19348($fp)
	li $t2, 0
	bne $t1, $t2, label696
	j label695
label695:
	li $t0, 1
	sw $t0, -19344($fp)
label696:
	li $t0, 0
	lw $t1, -19344($fp)
	sub $t0, $t0, $t1
	sw $t0, -19352($fp)
	lw $t1, -19340($fp)
	lw $t2, -19352($fp)
	bgt $t1, $t2, label690
	j label692
label692:
	li $t0, 10163
	sw $t0, -19356($fp)
	lw $t0, -4044($fp)
	sw $t0, -19360($fp)
	lw $t1, -19356($fp)
	lw $t2, -19360($fp)
	ble $t1, $t2, label698
	j label691
label698:
	li $t0, 63568
	sw $t0, -19364($fp)
	lw $t1, -19364($fp)
	li $t2, 0
	bne $t1, $t2, label697
	j label691
label697:
	li $t0, 26449
	sw $t0, -19368($fp)
	li $t0, 32024
	sw $t0, -19372($fp)
	lw $t1, -19368($fp)
	lw $t2, -19372($fp)
	bge $t1, $t2, label690
	j label691
label690:
	li $t0, 1
	sw $t0, -19320($fp)
label691:
	li $t0, 0
	sw $t0, -19376($fp)
	li $t0, 0
	sw $t0, -19380($fp)
	addi $t0, $fp, -336
	sw $t0, -19384($fp)
	li $t0, 1
	sw $t0, -19388($fp)
	li $t0, 4
	lw $t1, -19388($fp)
	mul $t0, $t0, $t1
	sw $t0, -19392($fp)
	lw $t0, -19392($fp)
	lw $t1, -19384($fp)
	add $t0, $t0, $t1
	sw $t0, -19396($fp)
	lw $t0, -19396($fp)
	lw $t1, 0($t0)
	sw $t1, -19400($fp)
	lw $t1, -19400($fp)
	li $t2, 0
	bne $t1, $t2, label702
	j label701
label701:
	li $t0, 1
	sw $t0, -19380($fp)
label702:
	li $t0, 0
	sw $t0, -19404($fp)
	li $t0, 26683
	sw $t0, -19408($fp)
	li $t0, 22812
	sw $t0, -19412($fp)
	lw $t0, -19408($fp)
	lw $t1, -19412($fp)
	add $t0, $t0, $t1
	sw $t0, -19416($fp)
	li $t0, 29643
	sw $t0, -19420($fp)
	lw $t1, -19416($fp)
	lw $t2, -19420($fp)
	beq $t1, $t2, label703
	j label704
label703:
	li $t0, 1
	sw $t0, -19404($fp)
label704:
	li $t0, 0
	sw $t0, -19424($fp)
	li $t0, 0
	sw $t0, -19428($fp)
	lw $t0, -3444($fp)
	sw $t0, -19432($fp)
	lw $t0, -6660($fp)
	sw $t0, -19436($fp)
	lw $t1, -19432($fp)
	lw $t2, -19436($fp)
	ble $t1, $t2, label707
	j label708
label707:
	li $t0, 1
	sw $t0, -19428($fp)
label708:
	lw $t0, -18480($fp)
	sw $t0, -19440($fp)
	lw $t1, -19428($fp)
	lw $t2, -19440($fp)
	bgt $t1, $t2, label705
	j label706
label705:
	li $t0, 1
	sw $t0, -19424($fp)
label706:
	li $t0, 0
	sw $t0, -19444($fp)
	addi $t0, $fp, -320
	sw $t0, -19448($fp)
	li $t0, 2
	sw $t0, -19452($fp)
	li $t0, 4
	lw $t1, -19452($fp)
	mul $t0, $t0, $t1
	sw $t0, -19456($fp)
	lw $t0, -19456($fp)
	lw $t1, -19448($fp)
	add $t0, $t0, $t1
	sw $t0, -19460($fp)
	lw $t0, -19460($fp)
	lw $t1, 0($t0)
	sw $t1, -19464($fp)
	li $t0, 1537
	sw $t0, -19468($fp)
	lw $t1, -19464($fp)
	lw $t2, -19468($fp)
	bne $t1, $t2, label709
	j label710
label709:
	li $t0, 1
	sw $t0, -19444($fp)
label710:
	li $t0, 34828
	sw $t0, -19472($fp)
	lw $t0, -19472($fp)
	sw $t0, -6576($fp)
	lw $t0, -6576($fp)
	sw $t0, -19476($fp)
	addi $sp, $sp, -4
	lw $t0, -19380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19476($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -19480($fp)
	addi $sp, $sp, 24
	lw $t1, -19480($fp)
	li $t2, 0
	bne $t1, $t2, label700
	j label699
label699:
	li $t0, 1
	sw $t0, -19376($fp)
label700:
	lw $t0, -4320($fp)
	sw $t0, -19484($fp)
	lw $t0, -19376($fp)
	lw $t1, -19484($fp)
	mul $t0, $t0, $t1
	sw $t0, -19488($fp)
	li $t0, 0
	lw $t1, -19488($fp)
	sub $t0, $t0, $t1
	sw $t0, -19492($fp)
	li $t0, 22848
	sw $t0, -19496($fp)
	lw $t0, -19492($fp)
	lw $t1, -19496($fp)
	add $t0, $t0, $t1
	sw $t0, -19500($fp)
label711:
	addi $t0, $fp, -360
	sw $t0, -19504($fp)
	li $t0, 0
	sw $t0, -19508($fp)
	li $t0, 6220
	sw $t0, -19512($fp)
	li $t0, 0
	sw $t0, -19516($fp)
	lw $t0, -5184($fp)
	sw $t0, -19520($fp)
	lw $t1, -19520($fp)
	li $t2, 0
	bne $t1, $t2, label717
	j label716
label716:
	li $t0, 1
	sw $t0, -19516($fp)
label717:
	lw $t1, -19512($fp)
	lw $t2, -19516($fp)
	ble $t1, $t2, label714
	j label715
label714:
	li $t0, 1
	sw $t0, -19508($fp)
label715:
	li $t0, 4
	lw $t1, -19508($fp)
	mul $t0, $t0, $t1
	sw $t0, -19524($fp)
	lw $t0, -19524($fp)
	lw $t1, -19504($fp)
	add $t0, $t0, $t1
	sw $t0, -19528($fp)
	lw $t0, -19528($fp)
	lw $t1, 0($t0)
	sw $t1, -19532($fp)
	lw $t1, -19532($fp)
	li $t2, 0
	bne $t1, $t2, label712
	j label713
label712:
	lw $t0, -6780($fp)
	sw $t0, -19536($fp)
	li $t0, 0
	lw $t1, -19536($fp)
	sub $t0, $t0, $t1
	sw $t0, -19540($fp)
	j label711
label713:
label718:
	li $t0, 55858
	sw $t0, -19544($fp)
	li $t0, 0
	sw $t0, -19548($fp)
	addi $t0, $fp, -944
	sw $t0, -19552($fp)
	lw $t0, -1992($fp)
	sw $t0, -19556($fp)
	li $t0, 4
	lw $t1, -19556($fp)
	mul $t0, $t0, $t1
	sw $t0, -19560($fp)
	lw $t0, -19560($fp)
	lw $t1, -19552($fp)
	add $t0, $t0, $t1
	sw $t0, -19564($fp)
	lw $t0, -19564($fp)
	lw $t1, 0($t0)
	sw $t1, -19568($fp)
	lw $t1, -19568($fp)
	li $t2, 0
	bne $t1, $t2, label723
	j label722
label722:
	li $t0, 1
	sw $t0, -19548($fp)
label723:
	lw $t1, -19544($fp)
	lw $t2, -19548($fp)
	bge $t1, $t2, label721
	j label720
label721:
	addi $t0, $fp, -808
	sw $t0, -19572($fp)
	li $t0, 1
	sw $t0, -19576($fp)
	li $t0, 4
	lw $t1, -19576($fp)
	mul $t0, $t0, $t1
	sw $t0, -19580($fp)
	lw $t0, -19580($fp)
	lw $t1, -19572($fp)
	add $t0, $t0, $t1
	sw $t0, -19584($fp)
	lw $t0, -19584($fp)
	lw $t1, 0($t0)
	sw $t1, -19588($fp)
	lw $t0, -11004($fp)
	sw $t0, -19592($fp)
	lw $t0, -19588($fp)
	lw $t1, -19592($fp)
	mul $t0, $t0, $t1
	sw $t0, -19596($fp)
	li $t0, 61398
	sw $t0, -19600($fp)
	lw $t0, -19596($fp)
	lw $t1, -19600($fp)
	mul $t0, $t0, $t1
	sw $t0, -19604($fp)
	lw $t1, -19604($fp)
	li $t2, 0
	bne $t1, $t2, label719
	j label720
label719:
	lw $t0, -6792($fp)
	sw $t0, -19608($fp)
	li $t0, 0
	sw $t0, -19612($fp)
	li $t0, 18423
	sw $t0, -19616($fp)
	lw $t1, -19616($fp)
	li $t2, 0
	bne $t1, $t2, label724
	j label725
label724:
	li $t0, 1
	sw $t0, -19612($fp)
label725:
	lw $t0, -19608($fp)
	lw $t1, -19612($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -19620($fp)
	li $t0, 0
	sw $t0, -19624($fp)
	addi $t0, $fp, -372
	sw $t0, -19628($fp)
	lw $t0, -3360($fp)
	sw $t0, -19632($fp)
	li $t0, 4
	lw $t1, -19632($fp)
	mul $t0, $t0, $t1
	sw $t0, -19636($fp)
	lw $t0, -19636($fp)
	lw $t1, -19628($fp)
	add $t0, $t0, $t1
	sw $t0, -19640($fp)
	lw $t0, -19640($fp)
	lw $t1, 0($t0)
	sw $t1, -19644($fp)
	lw $t1, -19644($fp)
	li $t2, 0
	bne $t1, $t2, label727
	j label726
label726:
	li $t0, 1
	sw $t0, -19624($fp)
label727:
	lw $t0, -19620($fp)
	lw $t1, -19624($fp)
	add $t0, $t0, $t1
	sw $t0, -19648($fp)
	lw $ra, -4($fp)
	lw $v0, -19648($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label718
label720:
	li $t0, 59307
	sw $t0, -19652($fp)
	li $t0, 0
	lw $t1, -19652($fp)
	sub $t0, $t0, $t1
	sw $t0, -19656($fp)
	lw $ra, -4($fp)
	lw $v0, -19656($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label599:
label547:
	li $t0, 36538
	sw $t0, -19660($fp)
	lw $t1, -19660($fp)
	li $t2, 0
	bne $t1, $t2, label728
	j label729
label728:
	lw $t0, -12732($fp)
	sw $t0, -19664($fp)
	li $t0, 0
	sw $t0, -19668($fp)
	addi $t0, $fp, -412
	sw $t0, -19672($fp)
	li $t0, 7
	sw $t0, -19676($fp)
	li $t0, 4
	lw $t1, -19676($fp)
	mul $t0, $t0, $t1
	sw $t0, -19680($fp)
	lw $t0, -19680($fp)
	lw $t1, -19672($fp)
	add $t0, $t0, $t1
	sw $t0, -19684($fp)
	lw $t0, -19684($fp)
	lw $t1, 0($t0)
	sw $t1, -19688($fp)
	lw $t0, -8436($fp)
	sw $t0, -19692($fp)
	lw $t1, -19688($fp)
	lw $t2, -19692($fp)
	bne $t1, $t2, label734
	j label735
label734:
	li $t0, 1
	sw $t0, -19668($fp)
label735:
	li $t0, 0
	sw $t0, -19696($fp)
	li $t0, 0
	sw $t0, -19700($fp)
	li $t0, 0
	sw $t0, -19704($fp)
	lw $t0, -2652($fp)
	sw $t0, -19708($fp)
	lw $t0, -4560($fp)
	sw $t0, -19712($fp)
	lw $t1, -19708($fp)
	lw $t2, -19712($fp)
	bgt $t1, $t2, label740
	j label741
label740:
	li $t0, 1
	sw $t0, -19704($fp)
label741:
	li $t0, 5130
	sw $t0, -19716($fp)
	lw $t1, -19704($fp)
	lw $t2, -19716($fp)
	blt $t1, $t2, label738
	j label739
label738:
	li $t0, 1
	sw $t0, -19700($fp)
label739:
	li $t0, 45303
	sw $t0, -19720($fp)
	lw $t0, -19720($fp)
	sw $t0, -4548($fp)
	lw $t0, -4548($fp)
	sw $t0, -19724($fp)
	addi $t0, $fp, -652
	sw $t0, -19728($fp)
	lw $t0, -7284($fp)
	sw $t0, -19732($fp)
	li $t0, 4
	lw $t1, -19732($fp)
	mul $t0, $t0, $t1
	sw $t0, -19736($fp)
	lw $t0, -19736($fp)
	lw $t1, -19728($fp)
	add $t0, $t0, $t1
	sw $t0, -19740($fp)
	lw $t0, -19740($fp)
	lw $t1, 0($t0)
	sw $t1, -19744($fp)
	li $t0, 0
	sw $t0, -19748($fp)
	li $t0, 0
	sw $t0, -19752($fp)
	li $t0, 62411
	sw $t0, -19756($fp)
	lw $t0, -6336($fp)
	sw $t0, -19760($fp)
	lw $t1, -19756($fp)
	lw $t2, -19760($fp)
	beq $t1, $t2, label744
	j label745
label744:
	li $t0, 1
	sw $t0, -19752($fp)
label745:
	lw $t0, -6780($fp)
	sw $t0, -19764($fp)
	lw $t1, -19752($fp)
	lw $t2, -19764($fp)
	bne $t1, $t2, label742
	j label743
label742:
	li $t0, 1
	sw $t0, -19748($fp)
label743:
	li $t0, 19780
	sw $t0, -19768($fp)
	addi $sp, $sp, -4
	lw $t0, -19700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19768($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -19772($fp)
	addi $sp, $sp, 24
	lw $t1, -19772($fp)
	li $t2, 0
	bne $t1, $t2, label737
	j label736
label736:
	li $t0, 1
	sw $t0, -19696($fp)
label737:
	li $t0, 0
	sw $t0, -19776($fp)
	li $t0, 0
	sw $t0, -19780($fp)
	lw $t0, -12744($fp)
	sw $t0, -19784($fp)
	lw $t0, -13212($fp)
	sw $t0, -19788($fp)
	lw $t1, -19784($fp)
	lw $t2, -19788($fp)
	bge $t1, $t2, label748
	j label749
label748:
	li $t0, 1
	sw $t0, -19780($fp)
label749:
	li $t0, 9959
	sw $t0, -19792($fp)
	lw $t1, -19780($fp)
	lw $t2, -19792($fp)
	blt $t1, $t2, label746
	j label747
label746:
	li $t0, 1
	sw $t0, -19776($fp)
label747:
	li $t0, 0
	sw $t0, -19796($fp)
	li $t0, 41089
	sw $t0, -19800($fp)
	lw $t0, -5568($fp)
	sw $t0, -19804($fp)
	lw $t0, -19800($fp)
	lw $t1, -19804($fp)
	sub $t0, $t0, $t1
	sw $t0, -19808($fp)
	li $t0, 35883
	sw $t0, -19812($fp)
	lw $t1, -19808($fp)
	lw $t2, -19812($fp)
	bne $t1, $t2, label750
	j label751
label750:
	li $t0, 1
	sw $t0, -19796($fp)
label751:
	lw $t0, -7212($fp)
	sw $t0, -19816($fp)
	lw $t0, -19816($fp)
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	sw $t0, -19820($fp)
	addi $sp, $sp, -4
	lw $t0, -19668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19820($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -19824($fp)
	addi $sp, $sp, 24
	lw $t0, -19664($fp)
	lw $t1, -19824($fp)
	mul $t0, $t0, $t1
	sw $t0, -19828($fp)
	li $t0, 0
	lw $t1, -19828($fp)
	sub $t0, $t0, $t1
	sw $t0, -19832($fp)
	lw $t1, -19832($fp)
	li $t2, 0
	bne $t1, $t2, label731
	j label732
label731:
	addi $t0, $fp, -272
	sw $t0, -19836($fp)
	li $t0, 0
	sw $t0, -19840($fp)
	li $t0, 28733
	sw $t0, -19844($fp)
	lw $t1, -19844($fp)
	li $t2, 0
	bne $t1, $t2, label752
	j label754
label754:
	lw $t0, -4572($fp)
	sw $t0, -19848($fp)
	lw $t1, -19848($fp)
	li $t2, 0
	bne $t1, $t2, label752
	j label753
label752:
	li $t0, 1
	sw $t0, -19840($fp)
label753:
	li $t0, 2295
	sw $t0, -19852($fp)
	li $t0, 56288
	sw $t0, -19856($fp)
	lw $t0, -19852($fp)
	lw $t1, -19856($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -19860($fp)
	li $t0, 43752
	sw $t0, -19864($fp)
	lw $t0, -5880($fp)
	sw $t0, -19868($fp)
	lw $t0, -19864($fp)
	lw $t1, -19868($fp)
	add $t0, $t0, $t1
	sw $t0, -19872($fp)
	li $t0, 47318
	sw $t0, -19876($fp)
	lw $t0, -19872($fp)
	lw $t1, -19876($fp)
	add $t0, $t0, $t1
	sw $t0, -19880($fp)
	li $t0, 33003
	sw $t0, -19884($fp)
	lw $t0, -19884($fp)
	sw $t0, -9900($fp)
	lw $t0, -9900($fp)
	sw $t0, -19888($fp)
	li $t0, 0
	sw $t0, -19892($fp)
	lw $t0, -11808($fp)
	sw $t0, -19896($fp)
	li $t0, 15294
	sw $t0, -19900($fp)
	lw $t0, -19896($fp)
	lw $t1, -19900($fp)
	mul $t0, $t0, $t1
	sw $t0, -19904($fp)
	lw $t0, -11040($fp)
	sw $t0, -19908($fp)
	lw $t1, -19904($fp)
	lw $t2, -19908($fp)
	bne $t1, $t2, label755
	j label756
label755:
	li $t0, 1
	sw $t0, -19892($fp)
label756:
	addi $sp, $sp, -4
	lw $t0, -19840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19892($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -19912($fp)
	addi $sp, $sp, 24
	lw $t0, -19912($fp)
	sw $t0, -8424($fp)
	lw $t0, -8424($fp)
	sw $t0, -19916($fp)
	li $t0, 4
	lw $t1, -19916($fp)
	mul $t0, $t0, $t1
	sw $t0, -19920($fp)
	lw $t0, -19920($fp)
	lw $t1, -19836($fp)
	add $t0, $t0, $t1
	sw $t0, -19924($fp)
	lw $t0, -19924($fp)
	lw $t1, 0($t0)
	sw $t1, -19928($fp)
	lw $ra, -4($fp)
	lw $v0, -19928($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label733
label732:
	lw $t0, -9888($fp)
	sw $t0, -19932($fp)
	li $t0, 45829
	sw $t0, -19936($fp)
	lw $t0, -3696($fp)
	sw $t0, -19940($fp)
	lw $t0, -19936($fp)
	lw $t1, -19940($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -19944($fp)
	lw $t0, -12300($fp)
	sw $t0, -19948($fp)
	li $t0, 0
	sw $t0, -19952($fp)
	lw $t0, -6612($fp)
	sw $t0, -19956($fp)
	lw $t1, -19956($fp)
	li $t2, 0
	bne $t1, $t2, label762
	j label761
label762:
	lw $t0, -7068($fp)
	sw $t0, -19960($fp)
	lw $t1, -19960($fp)
	li $t2, 0
	bne $t1, $t2, label760
	j label761
label760:
	li $t0, 1
	sw $t0, -19952($fp)
label761:
	lw $t0, -5136($fp)
	sw $t0, -19964($fp)
	li $t0, 0
	sw $t0, -19968($fp)
	lw $t0, -8472($fp)
	sw $t0, -19972($fp)
	lw $t0, -12792($fp)
	sw $t0, -19976($fp)
	lw $t0, -19972($fp)
	lw $t1, -19976($fp)
	mul $t0, $t0, $t1
	sw $t0, -19980($fp)
	li $t0, 0
	lw $t1, -19980($fp)
	sub $t0, $t0, $t1
	sw $t0, -19984($fp)
	li $t0, 0
	sw $t0, -19988($fp)
	li $t0, 36738
	sw $t0, -19992($fp)
	li $t0, 56324
	sw $t0, -19996($fp)
	lw $t0, -19992($fp)
	lw $t1, -19996($fp)
	sub $t0, $t0, $t1
	sw $t0, -20000($fp)
	li $t0, 23014
	sw $t0, -20004($fp)
	lw $t1, -20000($fp)
	lw $t2, -20004($fp)
	blt $t1, $t2, label766
	j label767
label766:
	li $t0, 1
	sw $t0, -19988($fp)
label767:
	li $t0, 0
	sw $t0, -20008($fp)
	lw $t0, -5124($fp)
	sw $t0, -20012($fp)
	li $t0, 33476
	sw $t0, -20016($fp)
	lw $t0, -20012($fp)
	lw $t1, -20016($fp)
	mul $t0, $t0, $t1
	sw $t0, -20020($fp)
	lw $t1, -20020($fp)
	li $t2, 0
	bne $t1, $t2, label768
	j label770
label770:
	li $t0, 16793
	sw $t0, -20024($fp)
	lw $t1, -20024($fp)
	li $t2, 0
	bne $t1, $t2, label768
	j label769
label768:
	li $t0, 1
	sw $t0, -20008($fp)
label769:
	addi $t0, $fp, -452
	sw $t0, -20028($fp)
	lw $t0, -1764($fp)
	sw $t0, -20032($fp)
	li $t0, 4
	lw $t1, -20032($fp)
	mul $t0, $t0, $t1
	sw $t0, -20036($fp)
	lw $t0, -20036($fp)
	lw $t1, -20028($fp)
	add $t0, $t0, $t1
	sw $t0, -20040($fp)
	lw $t0, -20040($fp)
	lw $t1, 0($t0)
	sw $t1, -20044($fp)
	li $t0, 51545
	sw $t0, -20048($fp)
	lw $t0, -20044($fp)
	lw $t1, -20048($fp)
	add $t0, $t0, $t1
	sw $t0, -20052($fp)
	li $t0, 0
	sw $t0, -20056($fp)
	lw $t0, -5028($fp)
	sw $t0, -20060($fp)
	lw $t0, -7104($fp)
	sw $t0, -20064($fp)
	lw $t0, -20060($fp)
	lw $t1, -20064($fp)
	sub $t0, $t0, $t1
	sw $t0, -20068($fp)
	lw $t1, -20068($fp)
	li $t2, 0
	bne $t1, $t2, label771
	j label773
label773:
	lw $t0, -5040($fp)
	sw $t0, -20072($fp)
	lw $t1, -20072($fp)
	li $t2, 0
	bne $t1, $t2, label771
	j label772
label771:
	li $t0, 1
	sw $t0, -20056($fp)
label772:
	addi $sp, $sp, -4
	lw $t0, -19984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20056($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -20076($fp)
	addi $sp, $sp, 24
	lw $t1, -20076($fp)
	li $t2, 0
	bne $t1, $t2, label763
	j label765
label765:
	li $t0, 27060
	sw $t0, -20080($fp)
	lw $t1, -20080($fp)
	li $t2, 0
	bne $t1, $t2, label763
	j label764
label763:
	li $t0, 1
	sw $t0, -19968($fp)
label764:
	li $t0, 0
	sw $t0, -20084($fp)
	lw $t0, -11808($fp)
	sw $t0, -20088($fp)
	lw $t1, -20088($fp)
	li $t2, 0
	bne $t1, $t2, label775
	j label774
label774:
	li $t0, 1
	sw $t0, -20084($fp)
label775:
	addi $t0, $fp, -440
	sw $t0, -20092($fp)
	lw $t0, -5016($fp)
	sw $t0, -20096($fp)
	li $t0, 4
	lw $t1, -20096($fp)
	mul $t0, $t0, $t1
	sw $t0, -20100($fp)
	lw $t0, -20100($fp)
	lw $t1, -20092($fp)
	add $t0, $t0, $t1
	sw $t0, -20104($fp)
	lw $t0, -20104($fp)
	lw $t1, 0($t0)
	sw $t1, -20108($fp)
	li $t0, 0
	sw $t0, -20112($fp)
	lw $t0, -4836($fp)
	sw $t0, -20116($fp)
	lw $t1, -20116($fp)
	li $t2, 0
	bne $t1, $t2, label778
	j label777
label778:
	lw $t0, -10248($fp)
	sw $t0, -20120($fp)
	lw $t1, -20120($fp)
	li $t2, 0
	bne $t1, $t2, label776
	j label777
label776:
	li $t0, 1
	sw $t0, -20112($fp)
label777:
	addi $sp, $sp, -4
	lw $t0, -19964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20112($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -20124($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -412
	sw $t0, -20128($fp)
	lw $t0, -7176($fp)
	sw $t0, -20132($fp)
	li $t0, 4
	lw $t1, -20132($fp)
	mul $t0, $t0, $t1
	sw $t0, -20136($fp)
	lw $t0, -20136($fp)
	lw $t1, -20128($fp)
	add $t0, $t0, $t1
	sw $t0, -20140($fp)
	lw $t0, -20140($fp)
	lw $t1, 0($t0)
	sw $t1, -20144($fp)
	lw $t0, -13020($fp)
	sw $t0, -20148($fp)
	lw $t0, -8472($fp)
	sw $t0, -20152($fp)
	li $t0, 0
	sw $t0, -20156($fp)
	li $t0, 3833
	sw $t0, -20160($fp)
	lw $t0, -4584($fp)
	sw $t0, -20164($fp)
	lw $t1, -20160($fp)
	lw $t2, -20164($fp)
	ble $t1, $t2, label779
	j label781
label781:
	li $t0, 17435
	sw $t0, -20168($fp)
	lw $t1, -20168($fp)
	li $t2, 0
	bne $t1, $t2, label779
	j label780
label779:
	li $t0, 1
	sw $t0, -20156($fp)
label780:
	addi $sp, $sp, -4
	lw $t0, -20124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20156($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -20172($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -19932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20172($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -20176($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -20180($fp)
	li $t0, 44714
	sw $t0, -20184($fp)
	lw $t1, -20184($fp)
	li $t2, 0
	bne $t1, $t2, label783
	j label782
label782:
	li $t0, 1
	sw $t0, -20180($fp)
label783:
	lw $t0, -20176($fp)
	lw $t1, -20180($fp)
	mul $t0, $t0, $t1
	sw $t0, -20188($fp)
	li $t0, 0
	lw $t1, -20188($fp)
	sub $t0, $t0, $t1
	sw $t0, -20192($fp)
	li $t0, 0
	sw $t0, -20196($fp)
	li $t0, 22922
	sw $t0, -20200($fp)
	li $t0, 0
	lw $t1, -20200($fp)
	sub $t0, $t0, $t1
	sw $t0, -20204($fp)
	lw $t1, -20204($fp)
	li $t2, 0
	bne $t1, $t2, label785
	j label784
label784:
	li $t0, 1
	sw $t0, -20196($fp)
label785:
	li $t0, 0
	lw $t1, -20196($fp)
	sub $t0, $t0, $t1
	sw $t0, -20208($fp)
	lw $t1, -20192($fp)
	lw $t2, -20208($fp)
	ble $t1, $t2, label757
	j label758
label757:
	addi $t0, $fp, -1324
	sw $t0, -20212($fp)
	li $t0, 0
	sw $t0, -20216($fp)
	lw $t0, -5148($fp)
	sw $t0, -20220($fp)
	lw $t1, -20220($fp)
	li $t2, 0
	bne $t1, $t2, label787
	j label786
label786:
	li $t0, 1
	sw $t0, -20216($fp)
label787:
	li $t0, 0
	sw $t0, -20224($fp)
	li $t0, 954
	sw $t0, -20228($fp)
	li $t0, 14474
	sw $t0, -20232($fp)
	lw $t1, -20228($fp)
	lw $t2, -20232($fp)
	bne $t1, $t2, label788
	j label790
label790:
	lw $t0, -5220($fp)
	sw $t0, -20236($fp)
	lw $t1, -20236($fp)
	li $t2, 0
	bne $t1, $t2, label788
	j label789
label788:
	li $t0, 1
	sw $t0, -20224($fp)
label789:
	li $t0, 0
	sw $t0, -20240($fp)
	li $t0, 64716
	sw $t0, -20244($fp)
	lw $t1, -20244($fp)
	li $t2, 0
	bne $t1, $t2, label791
	j label794
label794:
	li $t0, 40679
	sw $t0, -20248($fp)
	lw $t1, -20248($fp)
	li $t2, 0
	bne $t1, $t2, label791
	j label793
label793:
	lw $t0, -5208($fp)
	sw $t0, -20252($fp)
	lw $t1, -20252($fp)
	li $t2, 0
	bne $t1, $t2, label791
	j label792
label791:
	li $t0, 1
	sw $t0, -20240($fp)
label792:
	li $t0, 49187
	sw $t0, -20256($fp)
	lw $t0, -20256($fp)
	sw $t0, -9300($fp)
	lw $t0, -9300($fp)
	sw $t0, -20260($fp)
	li $t0, 0
	sw $t0, -20264($fp)
	li $t0, 5708
	sw $t0, -20268($fp)
	lw $t1, -20268($fp)
	li $t2, 0
	bne $t1, $t2, label796
	j label795
label795:
	li $t0, 1
	sw $t0, -20264($fp)
label796:
	li $t0, 59586
	sw $t0, -20272($fp)
	li $t0, 0
	sw $t0, -20276($fp)
	li $t0, 0
	sw $t0, -20280($fp)
	lw $t0, -12744($fp)
	sw $t0, -20284($fp)
	lw $t1, -20284($fp)
	li $t2, 0
	bne $t1, $t2, label800
	j label799
label799:
	li $t0, 1
	sw $t0, -20280($fp)
label800:
	li $t0, 3884
	sw $t0, -20288($fp)
	lw $t1, -20280($fp)
	lw $t2, -20288($fp)
	bgt $t1, $t2, label797
	j label798
label797:
	li $t0, 1
	sw $t0, -20276($fp)
label798:
	li $t0, 0
	sw $t0, -20292($fp)
	lw $t0, -12108($fp)
	sw $t0, -20296($fp)
	lw $t0, -11988($fp)
	sw $t0, -20300($fp)
	lw $t0, -20296($fp)
	lw $t1, -20300($fp)
	add $t0, $t0, $t1
	sw $t0, -20304($fp)
	li $t0, 8833
	sw $t0, -20308($fp)
	lw $t1, -20304($fp)
	lw $t2, -20308($fp)
	bge $t1, $t2, label801
	j label802
label801:
	li $t0, 1
	sw $t0, -20292($fp)
label802:
	li $t0, 0
	sw $t0, -20312($fp)
	li $t0, 39806
	sw $t0, -20316($fp)
	lw $t1, -20316($fp)
	li $t2, 0
	bne $t1, $t2, label805
	j label804
label805:
	lw $t0, -7212($fp)
	sw $t0, -20320($fp)
	lw $t1, -20320($fp)
	li $t2, 0
	bne $t1, $t2, label803
	j label804
label803:
	li $t0, 1
	sw $t0, -20312($fp)
label804:
	addi $sp, $sp, -4
	lw $t0, -20264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20312($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -20324($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -20328($fp)
	lw $t0, -3360($fp)
	sw $t0, -20332($fp)
	lw $t0, -5868($fp)
	sw $t0, -20336($fp)
	lw $t1, -20332($fp)
	lw $t2, -20336($fp)
	ble $t1, $t2, label806
	j label807
label806:
	li $t0, 1
	sw $t0, -20328($fp)
label807:
	addi $sp, $sp, -4
	lw $t0, -20224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20328($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -20340($fp)
	addi $sp, $sp, 24
	lw $t0, -5184($fp)
	sw $t0, -20344($fp)
	lw $t0, -5196($fp)
	sw $t0, -20348($fp)
	lw $t0, -20344($fp)
	lw $t1, -20348($fp)
	add $t0, $t0, $t1
	sw $t0, -20352($fp)
	lw $t0, -7152($fp)
	sw $t0, -20356($fp)
	lw $t0, -20352($fp)
	lw $t1, -20356($fp)
	sub $t0, $t0, $t1
	sw $t0, -20360($fp)
	li $t0, 0
	sw $t0, -20364($fp)
	li $t0, 38485
	sw $t0, -20368($fp)
	lw $t1, -20368($fp)
	li $t2, 0
	bne $t1, $t2, label808
	j label811
label811:
	lw $t0, -5544($fp)
	sw $t0, -20372($fp)
	lw $t1, -20372($fp)
	li $t2, 0
	bne $t1, $t2, label808
	j label810
label810:
	li $t0, 59460
	sw $t0, -20376($fp)
	lw $t1, -20376($fp)
	li $t2, 0
	bne $t1, $t2, label808
	j label809
label808:
	li $t0, 1
	sw $t0, -20364($fp)
label809:
	li $t0, 64252
	sw $t0, -20380($fp)
	li $t0, 0
	sw $t0, -20384($fp)
	li $t0, 0
	sw $t0, -20388($fp)
	lw $t0, -11880($fp)
	sw $t0, -20392($fp)
	lw $t0, -5160($fp)
	sw $t0, -20396($fp)
	lw $t1, -20392($fp)
	lw $t2, -20396($fp)
	beq $t1, $t2, label814
	j label815
label814:
	li $t0, 1
	sw $t0, -20388($fp)
label815:
	lw $t0, -5172($fp)
	sw $t0, -20400($fp)
	lw $t1, -20388($fp)
	lw $t2, -20400($fp)
	beq $t1, $t2, label812
	j label813
label812:
	li $t0, 1
	sw $t0, -20384($fp)
label813:
	addi $sp, $sp, -4
	lw $t0, -20340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20384($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -20404($fp)
	addi $sp, $sp, 24
	lw $t0, -20216($fp)
	lw $t1, -20404($fp)
	mul $t0, $t0, $t1
	sw $t0, -20408($fp)
	li $t0, 4
	lw $t1, -20408($fp)
	mul $t0, $t0, $t1
	sw $t0, -20412($fp)
	lw $t0, -20412($fp)
	lw $t1, -20212($fp)
	add $t0, $t0, $t1
	sw $t0, -20416($fp)
	lw $t0, -20416($fp)
	lw $t1, 0($t0)
	sw $t1, -20420($fp)
	lw $ra, -4($fp)
	lw $v0, -20420($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label759
label758:
label816:
	li $t0, 8147
	sw $t0, -20424($fp)
	lw $t1, -20424($fp)
	li $t2, 0
	bne $t1, $t2, label817
	j label818
label817:
	li $t0, 44706
	sw $t0, -20472($fp)
	lw $t0, -20472($fp)
	sw $t0, -20476($fp)
	lw $t0, -20476($fp)
	sw $t0, -20480($fp)
	li $t0, 61793
	sw $t0, -20484($fp)
	addi $t0, $fp, -20464
	sw $t0, -20488($fp)
	li $t0, 0
	sw $t0, -20492($fp)
	lw $t0, -20492($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -20496($fp)
	lw $t0, -20488($fp)
	lw $t1, -20496($fp)
	add $t0, $t0, $t1
	sw $t0, -20500($fp)
	lw $t0, -20484($fp)
	lw $t1, -20500($fp)
	sw $t0, 0($t1)
	lw $t0, -20500($fp)
	lw $t1, 0($t0)
	sw $t1, -20504($fp)
	li $t0, 10442
	sw $t0, -20508($fp)
	addi $t0, $fp, -20464
	sw $t0, -20512($fp)
	li $t0, 1
	sw $t0, -20516($fp)
	lw $t0, -20516($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -20520($fp)
	lw $t0, -20512($fp)
	lw $t1, -20520($fp)
	add $t0, $t0, $t1
	sw $t0, -20524($fp)
	lw $t0, -20508($fp)
	lw $t1, -20524($fp)
	sw $t0, 0($t1)
	lw $t0, -20524($fp)
	lw $t1, 0($t0)
	sw $t1, -20528($fp)
	li $t0, 35458
	sw $t0, -20532($fp)
	addi $t0, $fp, -20464
	sw $t0, -20536($fp)
	li $t0, 2
	sw $t0, -20540($fp)
	lw $t0, -20540($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -20544($fp)
	lw $t0, -20536($fp)
	lw $t1, -20544($fp)
	add $t0, $t0, $t1
	sw $t0, -20548($fp)
	lw $t0, -20532($fp)
	lw $t1, -20548($fp)
	sw $t0, 0($t1)
	lw $t0, -20548($fp)
	lw $t1, 0($t0)
	sw $t1, -20552($fp)
	li $t0, 24990
	sw $t0, -20556($fp)
	addi $t0, $fp, -20464
	sw $t0, -20560($fp)
	li $t0, 3
	sw $t0, -20564($fp)
	lw $t0, -20564($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -20568($fp)
	lw $t0, -20560($fp)
	lw $t1, -20568($fp)
	add $t0, $t0, $t1
	sw $t0, -20572($fp)
	lw $t0, -20556($fp)
	lw $t1, -20572($fp)
	sw $t0, 0($t1)
	lw $t0, -20572($fp)
	lw $t1, 0($t0)
	sw $t1, -20576($fp)
	li $t0, 14275
	sw $t0, -20580($fp)
	addi $t0, $fp, -20464
	sw $t0, -20584($fp)
	li $t0, 4
	sw $t0, -20588($fp)
	lw $t0, -20588($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -20592($fp)
	lw $t0, -20584($fp)
	lw $t1, -20592($fp)
	add $t0, $t0, $t1
	sw $t0, -20596($fp)
	lw $t0, -20580($fp)
	lw $t1, -20596($fp)
	sw $t0, 0($t1)
	lw $t0, -20596($fp)
	lw $t1, 0($t0)
	sw $t1, -20600($fp)
	li $t0, 52893
	sw $t0, -20604($fp)
	addi $t0, $fp, -20464
	sw $t0, -20608($fp)
	li $t0, 5
	sw $t0, -20612($fp)
	lw $t0, -20612($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -20616($fp)
	lw $t0, -20608($fp)
	lw $t1, -20616($fp)
	add $t0, $t0, $t1
	sw $t0, -20620($fp)
	lw $t0, -20604($fp)
	lw $t1, -20620($fp)
	sw $t0, 0($t1)
	lw $t0, -20620($fp)
	lw $t1, 0($t0)
	sw $t1, -20624($fp)
	li $t0, 10999
	sw $t0, -20628($fp)
	addi $t0, $fp, -20464
	sw $t0, -20632($fp)
	li $t0, 6
	sw $t0, -20636($fp)
	lw $t0, -20636($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -20640($fp)
	lw $t0, -20632($fp)
	lw $t1, -20640($fp)
	add $t0, $t0, $t1
	sw $t0, -20644($fp)
	lw $t0, -20628($fp)
	lw $t1, -20644($fp)
	sw $t0, 0($t1)
	lw $t0, -20644($fp)
	lw $t1, 0($t0)
	sw $t1, -20648($fp)
	li $t0, 47751
	sw $t0, -20652($fp)
	addi $t0, $fp, -20464
	sw $t0, -20656($fp)
	li $t0, 7
	sw $t0, -20660($fp)
	lw $t0, -20660($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -20664($fp)
	lw $t0, -20656($fp)
	lw $t1, -20664($fp)
	add $t0, $t0, $t1
	sw $t0, -20668($fp)
	lw $t0, -20652($fp)
	lw $t1, -20668($fp)
	sw $t0, 0($t1)
	lw $t0, -20668($fp)
	lw $t1, 0($t0)
	sw $t1, -20672($fp)
	li $t0, 4151
	sw $t0, -20676($fp)
	addi $t0, $fp, -20464
	sw $t0, -20680($fp)
	li $t0, 8
	sw $t0, -20684($fp)
	lw $t0, -20684($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -20688($fp)
	lw $t0, -20680($fp)
	lw $t1, -20688($fp)
	add $t0, $t0, $t1
	sw $t0, -20692($fp)
	lw $t0, -20676($fp)
	lw $t1, -20692($fp)
	sw $t0, 0($t1)
	lw $t0, -20692($fp)
	lw $t1, 0($t0)
	sw $t1, -20696($fp)
	li $t0, 47737
	sw $t0, -20700($fp)
	addi $t0, $fp, -20464
	sw $t0, -20704($fp)
	li $t0, 9
	sw $t0, -20708($fp)
	lw $t0, -20708($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -20712($fp)
	lw $t0, -20704($fp)
	lw $t1, -20712($fp)
	add $t0, $t0, $t1
	sw $t0, -20716($fp)
	lw $t0, -20700($fp)
	lw $t1, -20716($fp)
	sw $t0, 0($t1)
	lw $t0, -20716($fp)
	lw $t1, 0($t0)
	sw $t1, -20720($fp)
	li $t0, 38540
	sw $t0, -20724($fp)
	lw $t0, -20724($fp)
	sw $t0, -20728($fp)
	lw $t0, -20728($fp)
	sw $t0, -20732($fp)
	li $t0, 27165
	sw $t0, -20736($fp)
	lw $t0, -20736($fp)
	sw $t0, -20740($fp)
	lw $t0, -20740($fp)
	sw $t0, -20744($fp)
	li $t0, 9261
	sw $t0, -20748($fp)
	addi $t0, $fp, -20468
	sw $t0, -20752($fp)
	li $t0, 0
	sw $t0, -20756($fp)
	lw $t0, -20756($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -20760($fp)
	lw $t0, -20752($fp)
	lw $t1, -20760($fp)
	add $t0, $t0, $t1
	sw $t0, -20764($fp)
	lw $t0, -20748($fp)
	lw $t1, -20764($fp)
	sw $t0, 0($t1)
	lw $t0, -20764($fp)
	lw $t1, 0($t0)
	sw $t1, -20768($fp)
	li $t0, 18833
	sw $t0, -20772($fp)
	lw $t0, -20772($fp)
	sw $t0, -20776($fp)
	lw $t0, -20776($fp)
	sw $t0, -20780($fp)
	li $t0, 6343
	sw $t0, -20784($fp)
	lw $t0, -20784($fp)
	sw $t0, -20788($fp)
	lw $t0, -20788($fp)
	sw $t0, -20792($fp)
	li $t0, 32184
	sw $t0, -20796($fp)
	lw $t0, -20796($fp)
	sw $t0, -20800($fp)
	lw $t0, -20800($fp)
	sw $t0, -20804($fp)
	li $t0, 17550
	sw $t0, -20808($fp)
	lw $t0, -20808($fp)
	sw $t0, -20812($fp)
	lw $t0, -20812($fp)
	sw $t0, -20816($fp)
	li $t0, 44828
	sw $t0, -20820($fp)
	lw $t0, -20820($fp)
	sw $t0, -20824($fp)
	lw $t0, -20824($fp)
	sw $t0, -20828($fp)
	li $t0, 26108
	sw $t0, -20832($fp)
	lw $t0, -20832($fp)
	sw $t0, -20836($fp)
	lw $t0, -20836($fp)
	sw $t0, -20840($fp)
	li $t0, 57356
	sw $t0, -20844($fp)
	lw $t0, -20844($fp)
	sw $t0, -20848($fp)
	lw $t0, -20848($fp)
	sw $t0, -20852($fp)
	li $t0, 53661
	sw $t0, -20856($fp)
	lw $t0, -20856($fp)
	sw $t0, -20860($fp)
	lw $t0, -20860($fp)
	sw $t0, -20864($fp)
	li $t0, 29992
	sw $t0, -20868($fp)
	lw $t0, -20868($fp)
	sw $t0, -20872($fp)
	lw $t0, -20872($fp)
	sw $t0, -20876($fp)
	li $t0, 0
	sw $t0, -20880($fp)
	lw $t0, -9912($fp)
	sw $t0, -20884($fp)
	li $t0, 14598
	sw $t0, -20888($fp)
	lw $t0, -20884($fp)
	lw $t1, -20888($fp)
	sub $t0, $t0, $t1
	sw $t0, -20892($fp)
	lw $t1, -20892($fp)
	li $t2, 0
	bne $t1, $t2, label819
	j label821
label821:
	li $t0, 65061
	sw $t0, -20896($fp)
	lw $t1, -20896($fp)
	li $t2, 0
	bne $t1, $t2, label819
	j label820
label819:
	li $t0, 1
	sw $t0, -20880($fp)
label820:
	li $t0, 0
	sw $t0, -20900($fp)
	li $t0, 34513
	sw $t0, -20904($fp)
	lw $t0, -12108($fp)
	sw $t0, -20908($fp)
	lw $t0, -20904($fp)
	lw $t1, -20908($fp)
	mul $t0, $t0, $t1
	sw $t0, -20912($fp)
	lw $t0, -5232($fp)
	sw $t0, -20916($fp)
	lw $t1, -20912($fp)
	lw $t2, -20916($fp)
	ble $t1, $t2, label822
	j label823
label822:
	li $t0, 1
	sw $t0, -20900($fp)
label823:
	lw $t0, -11964($fp)
	sw $t0, -20920($fp)
	li $t0, 13644
	sw $t0, -20924($fp)
	li $t0, 50586
	sw $t0, -20928($fp)
	lw $t0, -20924($fp)
	lw $t1, -20928($fp)
	sub $t0, $t0, $t1
	sw $t0, -20932($fp)
	lw $t0, -1380($fp)
	sw $t0, -20936($fp)
	li $t0, 51406
	sw $t0, -20940($fp)
	lw $t0, -20936($fp)
	lw $t1, -20940($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -20944($fp)
	li $t0, 59370
	sw $t0, -20948($fp)
	lw $t0, -20944($fp)
	lw $t1, -20948($fp)
	sub $t0, $t0, $t1
	sw $t0, -20952($fp)
	addi $sp, $sp, -4
	lw $t0, -20880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20952($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -20956($fp)
	addi $sp, $sp, 24
	lw $t0, -5244($fp)
	sw $t0, -20960($fp)
	lw $t0, -20956($fp)
	lw $t1, -20960($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -20964($fp)
	li $t0, 0
	lw $t1, -20964($fp)
	sub $t0, $t0, $t1
	sw $t0, -20968($fp)
	addi $t0, $fp, -480
	sw $t0, -20972($fp)
	li $t0, 4
	sw $t0, -20976($fp)
	li $t0, 4
	lw $t1, -20976($fp)
	mul $t0, $t0, $t1
	sw $t0, -20980($fp)
	lw $t0, -20980($fp)
	lw $t1, -20972($fp)
	add $t0, $t0, $t1
	sw $t0, -20984($fp)
	lw $t0, -20984($fp)
	lw $t1, 0($t0)
	sw $t1, -20988($fp)
	addi $t0, $fp, -484
	sw $t0, -20992($fp)
	lw $t0, -5448($fp)
	sw $t0, -20996($fp)
	li $t0, 4
	lw $t1, -20996($fp)
	mul $t0, $t0, $t1
	sw $t0, -21000($fp)
	lw $t0, -21000($fp)
	lw $t1, -20992($fp)
	add $t0, $t0, $t1
	sw $t0, -21004($fp)
	lw $t0, -21004($fp)
	lw $t1, 0($t0)
	sw $t1, -21008($fp)
	lw $t0, -20988($fp)
	lw $t1, -21008($fp)
	mul $t0, $t0, $t1
	sw $t0, -21012($fp)
	lw $t0, -20968($fp)
	lw $t1, -21012($fp)
	add $t0, $t0, $t1
	sw $t0, -21016($fp)
	lw $t0, -20476($fp)
	sw $t0, -21020($fp)
	lw $t0, -21020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20464
	sw $t0, -21024($fp)
	li $t0, 0
	sw $t0, -21028($fp)
	li $t0, 4
	lw $t1, -21028($fp)
	mul $t0, $t0, $t1
	sw $t0, -21032($fp)
	lw $t0, -21032($fp)
	lw $t1, -21024($fp)
	add $t0, $t0, $t1
	sw $t0, -21036($fp)
	lw $t0, -21036($fp)
	lw $t1, 0($t0)
	sw $t1, -21040($fp)
	lw $t0, -21040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20464
	sw $t0, -21044($fp)
	li $t0, 1
	sw $t0, -21048($fp)
	li $t0, 4
	lw $t1, -21048($fp)
	mul $t0, $t0, $t1
	sw $t0, -21052($fp)
	lw $t0, -21052($fp)
	lw $t1, -21044($fp)
	add $t0, $t0, $t1
	sw $t0, -21056($fp)
	lw $t0, -21056($fp)
	lw $t1, 0($t0)
	sw $t1, -21060($fp)
	lw $t0, -21060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20464
	sw $t0, -21064($fp)
	li $t0, 2
	sw $t0, -21068($fp)
	li $t0, 4
	lw $t1, -21068($fp)
	mul $t0, $t0, $t1
	sw $t0, -21072($fp)
	lw $t0, -21072($fp)
	lw $t1, -21064($fp)
	add $t0, $t0, $t1
	sw $t0, -21076($fp)
	lw $t0, -21076($fp)
	lw $t1, 0($t0)
	sw $t1, -21080($fp)
	lw $t0, -21080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20464
	sw $t0, -21084($fp)
	li $t0, 3
	sw $t0, -21088($fp)
	li $t0, 4
	lw $t1, -21088($fp)
	mul $t0, $t0, $t1
	sw $t0, -21092($fp)
	lw $t0, -21092($fp)
	lw $t1, -21084($fp)
	add $t0, $t0, $t1
	sw $t0, -21096($fp)
	lw $t0, -21096($fp)
	lw $t1, 0($t0)
	sw $t1, -21100($fp)
	lw $t0, -21100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20464
	sw $t0, -21104($fp)
	li $t0, 4
	sw $t0, -21108($fp)
	li $t0, 4
	lw $t1, -21108($fp)
	mul $t0, $t0, $t1
	sw $t0, -21112($fp)
	lw $t0, -21112($fp)
	lw $t1, -21104($fp)
	add $t0, $t0, $t1
	sw $t0, -21116($fp)
	lw $t0, -21116($fp)
	lw $t1, 0($t0)
	sw $t1, -21120($fp)
	lw $t0, -21120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20464
	sw $t0, -21124($fp)
	li $t0, 5
	sw $t0, -21128($fp)
	li $t0, 4
	lw $t1, -21128($fp)
	mul $t0, $t0, $t1
	sw $t0, -21132($fp)
	lw $t0, -21132($fp)
	lw $t1, -21124($fp)
	add $t0, $t0, $t1
	sw $t0, -21136($fp)
	lw $t0, -21136($fp)
	lw $t1, 0($t0)
	sw $t1, -21140($fp)
	lw $t0, -21140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20464
	sw $t0, -21144($fp)
	li $t0, 6
	sw $t0, -21148($fp)
	li $t0, 4
	lw $t1, -21148($fp)
	mul $t0, $t0, $t1
	sw $t0, -21152($fp)
	lw $t0, -21152($fp)
	lw $t1, -21144($fp)
	add $t0, $t0, $t1
	sw $t0, -21156($fp)
	lw $t0, -21156($fp)
	lw $t1, 0($t0)
	sw $t1, -21160($fp)
	lw $t0, -21160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20464
	sw $t0, -21164($fp)
	li $t0, 7
	sw $t0, -21168($fp)
	li $t0, 4
	lw $t1, -21168($fp)
	mul $t0, $t0, $t1
	sw $t0, -21172($fp)
	lw $t0, -21172($fp)
	lw $t1, -21164($fp)
	add $t0, $t0, $t1
	sw $t0, -21176($fp)
	lw $t0, -21176($fp)
	lw $t1, 0($t0)
	sw $t1, -21180($fp)
	lw $t0, -21180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20464
	sw $t0, -21184($fp)
	li $t0, 8
	sw $t0, -21188($fp)
	li $t0, 4
	lw $t1, -21188($fp)
	mul $t0, $t0, $t1
	sw $t0, -21192($fp)
	lw $t0, -21192($fp)
	lw $t1, -21184($fp)
	add $t0, $t0, $t1
	sw $t0, -21196($fp)
	lw $t0, -21196($fp)
	lw $t1, 0($t0)
	sw $t1, -21200($fp)
	lw $t0, -21200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20464
	sw $t0, -21204($fp)
	li $t0, 9
	sw $t0, -21208($fp)
	li $t0, 4
	lw $t1, -21208($fp)
	mul $t0, $t0, $t1
	sw $t0, -21212($fp)
	lw $t0, -21212($fp)
	lw $t1, -21204($fp)
	add $t0, $t0, $t1
	sw $t0, -21216($fp)
	lw $t0, -21216($fp)
	lw $t1, 0($t0)
	sw $t1, -21220($fp)
	lw $t0, -21220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -20728($fp)
	sw $t0, -21224($fp)
	lw $t0, -21224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -20740($fp)
	sw $t0, -21228($fp)
	lw $t0, -21228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20468
	sw $t0, -21232($fp)
	li $t0, 0
	sw $t0, -21236($fp)
	li $t0, 4
	lw $t1, -21236($fp)
	mul $t0, $t0, $t1
	sw $t0, -21240($fp)
	lw $t0, -21240($fp)
	lw $t1, -21232($fp)
	add $t0, $t0, $t1
	sw $t0, -21244($fp)
	lw $t0, -21244($fp)
	lw $t1, 0($t0)
	sw $t1, -21248($fp)
	lw $t0, -21248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -20776($fp)
	sw $t0, -21252($fp)
	lw $t0, -21252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -20788($fp)
	sw $t0, -21256($fp)
	lw $t0, -21256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -20800($fp)
	sw $t0, -21260($fp)
	lw $t0, -21260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -20812($fp)
	sw $t0, -21264($fp)
	lw $t0, -21264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -20824($fp)
	sw $t0, -21268($fp)
	lw $t0, -21268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -20836($fp)
	sw $t0, -21272($fp)
	lw $t0, -21272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -20848($fp)
	sw $t0, -21276($fp)
	lw $t0, -21276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -20860($fp)
	sw $t0, -21280($fp)
	lw $t0, -21280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -20872($fp)
	sw $t0, -21284($fp)
	lw $t0, -21284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -21288($fp)
	li $t0, 62064
	sw $t0, -21292($fp)
	lw $t1, -21292($fp)
	li $t2, 0
	bne $t1, $t2, label825
	j label824
label824:
	li $t0, 1
	sw $t0, -21288($fp)
label825:
	li $t0, 0
	sw $t0, -21296($fp)
	lw $t0, -6336($fp)
	sw $t0, -21300($fp)
	lw $t1, -21300($fp)
	li $t2, 0
	bne $t1, $t2, label827
	j label826
label826:
	li $t0, 1
	sw $t0, -21296($fp)
label827:
	lw $t0, -6348($fp)
	sw $t0, -21304($fp)
	lw $t0, -21296($fp)
	lw $t1, -21304($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -21308($fp)
	li $t0, 0
	sw $t0, -21312($fp)
	li $t0, 0
	sw $t0, -21316($fp)
	li $t0, 15971
	sw $t0, -21320($fp)
	lw $t0, -6348($fp)
	sw $t0, -21324($fp)
	lw $t1, -21320($fp)
	lw $t2, -21324($fp)
	blt $t1, $t2, label830
	j label831
label830:
	li $t0, 1
	sw $t0, -21316($fp)
label831:
	lw $t0, -13068($fp)
	sw $t0, -21328($fp)
	lw $t1, -21316($fp)
	lw $t2, -21328($fp)
	bge $t1, $t2, label828
	j label829
label828:
	li $t0, 1
	sw $t0, -21312($fp)
label829:
	li $t0, 0
	sw $t0, -21332($fp)
	li $t0, 16614
	sw $t0, -21336($fp)
	lw $t0, -6144($fp)
	sw $t0, -21340($fp)
	lw $t0, -21336($fp)
	lw $t1, -21340($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -21344($fp)
	li $t0, 40765
	sw $t0, -21348($fp)
	lw $t1, -21344($fp)
	lw $t2, -21348($fp)
	blt $t1, $t2, label832
	j label833
label832:
	li $t0, 1
	sw $t0, -21332($fp)
label833:
	li $t0, 37017
	sw $t0, -21352($fp)
	li $t0, 0
	sw $t0, -21356($fp)
	li $t0, 35795
	sw $t0, -21360($fp)
	lw $t1, -21360($fp)
	li $t2, 0
	bne $t1, $t2, label836
	j label835
label836:
	li $t0, 4242
	sw $t0, -21364($fp)
	lw $t1, -21364($fp)
	li $t2, 0
	bne $t1, $t2, label834
	j label835
label834:
	li $t0, 1
	sw $t0, -21356($fp)
label835:
	li $t0, 33768
	sw $t0, -21368($fp)
	li $t0, 0
	sw $t0, -21372($fp)
	lw $t0, -6324($fp)
	sw $t0, -21376($fp)
	lw $t1, -21376($fp)
	li $t2, 0
	bne $t1, $t2, label838
	j label837
label837:
	li $t0, 1
	sw $t0, -21372($fp)
label838:
	li $t0, 0
	lw $t1, -21372($fp)
	sub $t0, $t0, $t1
	sw $t0, -21380($fp)
	lw $t0, -6312($fp)
	sw $t0, -21384($fp)
	li $t0, 48528
	sw $t0, -21388($fp)
	lw $t0, -21384($fp)
	lw $t1, -21388($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -21392($fp)
	li $t0, 12640
	sw $t0, -21396($fp)
	lw $t0, -21392($fp)
	lw $t1, -21396($fp)
	add $t0, $t0, $t1
	sw $t0, -21400($fp)
	li $t0, 1787
	sw $t0, -21404($fp)
	li $t0, 55622
	sw $t0, -21408($fp)
	lw $t0, -21404($fp)
	lw $t1, -21408($fp)
	add $t0, $t0, $t1
	sw $t0, -21412($fp)
	li $t0, 37410
	sw $t0, -21416($fp)
	lw $t0, -21412($fp)
	lw $t1, -21416($fp)
	sub $t0, $t0, $t1
	sw $t0, -21420($fp)
	addi $t0, $fp, -572
	sw $t0, -21424($fp)
	lw $t0, -4044($fp)
	sw $t0, -21428($fp)
	li $t0, 4
	lw $t1, -21428($fp)
	mul $t0, $t0, $t1
	sw $t0, -21432($fp)
	lw $t0, -21432($fp)
	lw $t1, -21424($fp)
	add $t0, $t0, $t1
	sw $t0, -21436($fp)
	lw $t0, -21436($fp)
	lw $t1, 0($t0)
	sw $t1, -21440($fp)
	li $t0, 0
	sw $t0, -21444($fp)
	lw $t0, -6144($fp)
	sw $t0, -21448($fp)
	li $t0, 49611
	sw $t0, -21452($fp)
	lw $t0, -21448($fp)
	lw $t1, -21452($fp)
	mul $t0, $t0, $t1
	sw $t0, -21456($fp)
	lw $t1, -21456($fp)
	li $t2, 0
	bne $t1, $t2, label839
	j label841
label841:
	li $t0, 38463
	sw $t0, -21460($fp)
	lw $t1, -21460($fp)
	li $t2, 0
	bne $t1, $t2, label839
	j label840
label839:
	li $t0, 1
	sw $t0, -21444($fp)
label840:
	li $t0, 0
	sw $t0, -21464($fp)
	lw $t0, -1776($fp)
	sw $t0, -21468($fp)
	li $t0, 58384
	sw $t0, -21472($fp)
	lw $t1, -21468($fp)
	lw $t2, -21472($fp)
	bne $t1, $t2, label842
	j label843
label842:
	li $t0, 1
	sw $t0, -21464($fp)
label843:
	addi $t0, $fp, -480
	sw $t0, -21476($fp)
	lw $t0, -6132($fp)
	sw $t0, -21480($fp)
	li $t0, 4
	lw $t1, -21480($fp)
	mul $t0, $t0, $t1
	sw $t0, -21484($fp)
	lw $t0, -21484($fp)
	lw $t1, -21476($fp)
	add $t0, $t0, $t1
	sw $t0, -21488($fp)
	lw $t0, -21488($fp)
	lw $t1, 0($t0)
	sw $t1, -21492($fp)
	li $t0, 0
	sw $t0, -21496($fp)
	li $t0, 0
	sw $t0, -21500($fp)
	lw $t0, -13224($fp)
	sw $t0, -21504($fp)
	lw $t0, -6120($fp)
	sw $t0, -21508($fp)
	lw $t1, -21504($fp)
	lw $t2, -21508($fp)
	bne $t1, $t2, label846
	j label847
label846:
	li $t0, 1
	sw $t0, -21500($fp)
label847:
	li $t0, 5666
	sw $t0, -21512($fp)
	lw $t1, -21500($fp)
	lw $t2, -21512($fp)
	bne $t1, $t2, label844
	j label845
label844:
	li $t0, 1
	sw $t0, -21496($fp)
label845:
	addi $sp, $sp, -4
	lw $t0, -21440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21496($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -21516($fp)
	addi $sp, $sp, 24
	lw $t0, -6300($fp)
	sw $t0, -21520($fp)
	lw $t0, -21516($fp)
	lw $t1, -21520($fp)
	add $t0, $t0, $t1
	sw $t0, -21524($fp)
	li $t0, 0
	sw $t0, -21528($fp)
	lw $t0, -7488($fp)
	sw $t0, -21532($fp)
	lw $t1, -21532($fp)
	li $t2, 0
	bne $t1, $t2, label849
	j label848
label848:
	li $t0, 1
	sw $t0, -21528($fp)
label849:
	li $t0, 0
	lw $t1, -21528($fp)
	sub $t0, $t0, $t1
	sw $t0, -21536($fp)
	li $t0, 0
	sw $t0, -21540($fp)
	lw $t0, -20872($fp)
	sw $t0, -21544($fp)
	lw $t1, -21544($fp)
	li $t2, 0
	bne $t1, $t2, label850
	j label852
label852:
	li $t0, 58302
	sw $t0, -21548($fp)
	lw $t1, -21548($fp)
	li $t2, 0
	bne $t1, $t2, label850
	j label851
label850:
	li $t0, 1
	sw $t0, -21540($fp)
label851:
	li $t0, 0
	sw $t0, -21552($fp)
	li $t0, 0
	sw $t0, -21556($fp)
	li $t0, 937
	sw $t0, -21560($fp)
	lw $t0, -4044($fp)
	sw $t0, -21564($fp)
	lw $t0, -21560($fp)
	lw $t1, -21564($fp)
	add $t0, $t0, $t1
	sw $t0, -21568($fp)
	lw $t0, -7128($fp)
	sw $t0, -21572($fp)
	lw $t1, -21568($fp)
	lw $t2, -21572($fp)
	blt $t1, $t2, label855
	j label856
label855:
	li $t0, 1
	sw $t0, -21556($fp)
label856:
	li $t0, 40863
	sw $t0, -21576($fp)
	lw $t0, -6108($fp)
	sw $t0, -21580($fp)
	lw $t0, -21576($fp)
	lw $t1, -21580($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -21584($fp)
	lw $t0, -5184($fp)
	sw $t0, -21588($fp)
	lw $t0, -6096($fp)
	sw $t0, -21592($fp)
	lw $t0, -21588($fp)
	lw $t1, -21592($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -21596($fp)
	lw $t0, -12228($fp)
	sw $t0, -21600($fp)
	lw $t0, -21596($fp)
	lw $t1, -21600($fp)
	add $t0, $t0, $t1
	sw $t0, -21604($fp)
	li $t0, 0
	sw $t0, -21608($fp)
	lw $t0, -8448($fp)
	sw $t0, -21612($fp)
	li $t0, 28590
	sw $t0, -21616($fp)
	lw $t0, -21612($fp)
	lw $t1, -21616($fp)
	add $t0, $t0, $t1
	sw $t0, -21620($fp)
	lw $t0, -20860($fp)
	sw $t0, -21624($fp)
	lw $t1, -21620($fp)
	lw $t2, -21624($fp)
	ble $t1, $t2, label857
	j label858
label857:
	li $t0, 1
	sw $t0, -21608($fp)
label858:
	addi $t0, $fp, -548
	sw $t0, -21628($fp)
	lw $t0, -6084($fp)
	sw $t0, -21632($fp)
	li $t0, 4
	lw $t1, -21632($fp)
	mul $t0, $t0, $t1
	sw $t0, -21636($fp)
	lw $t0, -21636($fp)
	lw $t1, -21628($fp)
	add $t0, $t0, $t1
	sw $t0, -21640($fp)
	lw $t0, -21640($fp)
	lw $t1, 0($t0)
	sw $t1, -21644($fp)
	addi $sp, $sp, -4
	lw $t0, -21556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21644($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -21648($fp)
	addi $sp, $sp, 24
	lw $t1, -21648($fp)
	li $t2, 0
	bne $t1, $t2, label854
	j label853
label853:
	li $t0, 1
	sw $t0, -21552($fp)
label854:
	addi $sp, $sp, -4
	lw $t0, -21420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21552($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -21652($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -21652($fp)
	sub $t0, $t0, $t1
	sw $t0, -21656($fp)
	li $t0, 30274
	sw $t0, -21660($fp)
	lw $t0, -10284($fp)
	sw $t0, -21664($fp)
	lw $t0, -21660($fp)
	lw $t1, -21664($fp)
	mul $t0, $t0, $t1
	sw $t0, -21668($fp)
	lw $t0, -6000($fp)
	sw $t0, -21672($fp)
	lw $t0, -21668($fp)
	lw $t1, -21672($fp)
	mul $t0, $t0, $t1
	sw $t0, -21676($fp)
	addi $t0, $fp, -536
	sw $t0, -21680($fp)
	lw $t0, -13008($fp)
	sw $t0, -21684($fp)
	li $t0, 4
	lw $t1, -21684($fp)
	mul $t0, $t0, $t1
	sw $t0, -21688($fp)
	lw $t0, -21688($fp)
	lw $t1, -21680($fp)
	add $t0, $t0, $t1
	sw $t0, -21692($fp)
	lw $t0, -21692($fp)
	lw $t1, 0($t0)
	sw $t1, -21696($fp)
	addi $sp, $sp, -4
	lw $t0, -21380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21696($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -21700($fp)
	addi $sp, $sp, 24
	li $t0, 19091
	sw $t0, -21704($fp)
	lw $t0, -21700($fp)
	lw $t1, -21704($fp)
	add $t0, $t0, $t1
	sw $t0, -21708($fp)
	li $t0, 19213
	sw $t0, -21712($fp)
	lw $t0, -7248($fp)
	sw $t0, -21716($fp)
	lw $t0, -21712($fp)
	lw $t1, -21716($fp)
	mul $t0, $t0, $t1
	sw $t0, -21720($fp)
	li $t0, 0
	sw $t0, -21724($fp)
	li $t0, 0
	sw $t0, -21728($fp)
	li $t0, 0
	sw $t0, -21732($fp)
	lw $t0, -11988($fp)
	sw $t0, -21736($fp)
	lw $t1, -21736($fp)
	li $t2, 0
	bne $t1, $t2, label864
	j label863
label863:
	li $t0, 1
	sw $t0, -21732($fp)
label864:
	li $t0, 15796
	sw $t0, -21740($fp)
	lw $t1, -21732($fp)
	lw $t2, -21740($fp)
	beq $t1, $t2, label861
	j label862
label861:
	li $t0, 1
	sw $t0, -21728($fp)
label862:
	li $t0, 57190
	sw $t0, -21744($fp)
	lw $t0, -21744($fp)
	sw $t0, -5880($fp)
	lw $t0, -5880($fp)
	sw $t0, -21748($fp)
	li $t0, 19146
	sw $t0, -21752($fp)
	lw $t0, -5868($fp)
	sw $t0, -21756($fp)
	lw $t0, -21752($fp)
	lw $t1, -21756($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -21760($fp)
	lw $t0, -20848($fp)
	sw $t0, -21764($fp)
	lw $t0, -21760($fp)
	lw $t1, -21764($fp)
	mul $t0, $t0, $t1
	sw $t0, -21768($fp)
	li $t0, 0
	sw $t0, -21772($fp)
	lw $t0, -12204($fp)
	sw $t0, -21776($fp)
	lw $t1, -21776($fp)
	li $t2, 0
	bne $t1, $t2, label868
	j label866
label868:
	lw $t0, -3732($fp)
	sw $t0, -21780($fp)
	lw $t1, -21780($fp)
	li $t2, 0
	bne $t1, $t2, label867
	j label866
label867:
	li $t0, 37990
	sw $t0, -21784($fp)
	lw $t1, -21784($fp)
	li $t2, 0
	bne $t1, $t2, label865
	j label866
label865:
	li $t0, 1
	sw $t0, -21772($fp)
label866:
	lw $t0, -10968($fp)
	sw $t0, -21788($fp)
	li $t0, 10077
	sw $t0, -21792($fp)
	lw $t0, -21788($fp)
	lw $t1, -21792($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -21796($fp)
	addi $sp, $sp, -4
	lw $t0, -21728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21796($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -21800($fp)
	addi $sp, $sp, 24
	lw $t0, -5892($fp)
	sw $t0, -21804($fp)
	lw $t0, -21800($fp)
	lw $t1, -21804($fp)
	mul $t0, $t0, $t1
	sw $t0, -21808($fp)
	li $t0, 0
	sw $t0, -21812($fp)
	li $t0, 11066
	sw $t0, -21816($fp)
	lw $t1, -21816($fp)
	li $t2, 0
	bne $t1, $t2, label869
	j label872
label872:
	lw $t0, -12156($fp)
	sw $t0, -21820($fp)
	lw $t1, -21820($fp)
	li $t2, 0
	bne $t1, $t2, label869
	j label871
label871:
	lw $t0, -5856($fp)
	sw $t0, -21824($fp)
	lw $t1, -21824($fp)
	li $t2, 0
	bne $t1, $t2, label869
	j label870
label869:
	li $t0, 1
	sw $t0, -21812($fp)
label870:
	lw $t0, -12780($fp)
	sw $t0, -21828($fp)
	lw $t0, -21828($fp)
	sw $t0, -20836($fp)
	lw $t0, -20836($fp)
	sw $t0, -21832($fp)
	li $t0, 44490
	sw $t0, -21836($fp)
	li $t0, 0
	lw $t1, -21836($fp)
	sub $t0, $t0, $t1
	sw $t0, -21840($fp)
	li $t0, 45450
	sw $t0, -21844($fp)
	lw $t0, -21840($fp)
	lw $t1, -21844($fp)
	add $t0, $t0, $t1
	sw $t0, -21848($fp)
	lw $t0, -5460($fp)
	sw $t0, -21852($fp)
	lw $t0, -1764($fp)
	sw $t0, -21856($fp)
	lw $t0, -21852($fp)
	lw $t1, -21856($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -21860($fp)
	addi $sp, $sp, -4
	lw $t0, -21808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21860($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -21864($fp)
	addi $sp, $sp, 24
	li $t0, 48888
	sw $t0, -21868($fp)
	lw $t1, -21864($fp)
	lw $t2, -21868($fp)
	bge $t1, $t2, label859
	j label860
label859:
	li $t0, 1
	sw $t0, -21724($fp)
label860:
	lw $t0, -13188($fp)
	sw $t0, -21872($fp)
	lw $t0, -21872($fp)
	sw $t0, -10260($fp)
	lw $t0, -10260($fp)
	sw $t0, -21876($fp)
	addi $sp, $sp, -4
	lw $t0, -21368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21876($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -21880($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -21312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21880($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -21884($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -1152
	sw $t0, -21888($fp)
	li $t0, 3
	sw $t0, -21892($fp)
	li $t0, 4
	lw $t1, -21892($fp)
	mul $t0, $t0, $t1
	sw $t0, -21896($fp)
	lw $t0, -21896($fp)
	lw $t1, -21888($fp)
	add $t0, $t0, $t1
	sw $t0, -21900($fp)
	lw $t0, -21900($fp)
	lw $t1, 0($t0)
	sw $t1, -21904($fp)
	li $t0, 0
	lw $t1, -21904($fp)
	sub $t0, $t0, $t1
	sw $t0, -21908($fp)
	li $t0, 0
	sw $t0, -21912($fp)
	li $t0, 50687
	sw $t0, -21916($fp)
	addi $t0, $fp, -772
	sw $t0, -21920($fp)
	li $t0, 4
	sw $t0, -21924($fp)
	li $t0, 4
	lw $t1, -21924($fp)
	mul $t0, $t0, $t1
	sw $t0, -21928($fp)
	lw $t0, -21928($fp)
	lw $t1, -21920($fp)
	add $t0, $t0, $t1
	sw $t0, -21932($fp)
	lw $t0, -21932($fp)
	lw $t1, 0($t0)
	sw $t1, -21936($fp)
	lw $t0, -5832($fp)
	sw $t0, -21940($fp)
	lw $t0, -21936($fp)
	lw $t1, -21940($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -21944($fp)
	li $t0, 0
	sw $t0, -21948($fp)
	lw $t0, -10212($fp)
	sw $t0, -21952($fp)
	lw $t1, -21952($fp)
	li $t2, 0
	bne $t1, $t2, label879
	j label877
label879:
	lw $t0, -9528($fp)
	sw $t0, -21956($fp)
	lw $t1, -21956($fp)
	li $t2, 0
	bne $t1, $t2, label878
	j label877
label878:
	li $t0, 22554
	sw $t0, -21960($fp)
	lw $t1, -21960($fp)
	li $t2, 0
	bne $t1, $t2, label876
	j label877
label876:
	li $t0, 1
	sw $t0, -21948($fp)
label877:
	li $t0, 0
	sw $t0, -21964($fp)
	lw $t0, -20812($fp)
	sw $t0, -21968($fp)
	li $t0, 0
	lw $t1, -21968($fp)
	sub $t0, $t0, $t1
	sw $t0, -21972($fp)
	lw $t0, -20824($fp)
	sw $t0, -21976($fp)
	lw $t1, -21972($fp)
	lw $t2, -21976($fp)
	blt $t1, $t2, label880
	j label881
label880:
	li $t0, 1
	sw $t0, -21964($fp)
label881:
	li $t0, 0
	sw $t0, -21980($fp)
	li $t0, 64482
	sw $t0, -21984($fp)
	li $t0, 0
	lw $t1, -21984($fp)
	sub $t0, $t0, $t1
	sw $t0, -21988($fp)
	lw $t1, -21988($fp)
	li $t2, 0
	bne $t1, $t2, label884
	j label883
label884:
	li $t0, 46740
	sw $t0, -21992($fp)
	lw $t1, -21992($fp)
	li $t2, 0
	bne $t1, $t2, label882
	j label883
label882:
	li $t0, 1
	sw $t0, -21980($fp)
label883:
	li $t0, 0
	sw $t0, -21996($fp)
	lw $t0, -3012($fp)
	sw $t0, -22000($fp)
	li $t0, 8939
	sw $t0, -22004($fp)
	lw $t0, -22000($fp)
	lw $t1, -22004($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -22008($fp)
	li $t0, 6010
	sw $t0, -22012($fp)
	lw $t1, -22008($fp)
	lw $t2, -22012($fp)
	blt $t1, $t2, label885
	j label886
label885:
	li $t0, 1
	sw $t0, -21996($fp)
label886:
	li $t0, 0
	sw $t0, -22016($fp)
	lw $t0, -8376($fp)
	sw $t0, -22020($fp)
	li $t0, 0
	lw $t1, -22020($fp)
	sub $t0, $t0, $t1
	sw $t0, -22024($fp)
	lw $t1, -22024($fp)
	li $t2, 0
	bne $t1, $t2, label887
	j label889
label889:
	li $t0, 32797
	sw $t0, -22028($fp)
	lw $t1, -22028($fp)
	li $t2, 0
	bne $t1, $t2, label887
	j label888
label887:
	li $t0, 1
	sw $t0, -22016($fp)
label888:
	addi $sp, $sp, -4
	lw $t0, -21948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22016($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -22032($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -22036($fp)
	li $t0, 30339
	sw $t0, -22040($fp)
	li $t0, 57446
	sw $t0, -22044($fp)
	lw $t0, -22040($fp)
	lw $t1, -22044($fp)
	mul $t0, $t0, $t1
	sw $t0, -22048($fp)
	lw $t1, -22048($fp)
	li $t2, 0
	bne $t1, $t2, label890
	j label892
label892:
	li $t0, 56845
	sw $t0, -22052($fp)
	lw $t1, -22052($fp)
	li $t2, 0
	bne $t1, $t2, label890
	j label891
label890:
	li $t0, 1
	sw $t0, -22036($fp)
label891:
	li $t0, 0
	sw $t0, -22056($fp)
	li $t0, 0
	sw $t0, -22060($fp)
	li $t0, 21650
	sw $t0, -22064($fp)
	li $t0, 36199
	sw $t0, -22068($fp)
	lw $t1, -22064($fp)
	lw $t2, -22068($fp)
	ble $t1, $t2, label895
	j label896
label895:
	li $t0, 1
	sw $t0, -22060($fp)
label896:
	li $t0, 29711
	sw $t0, -22072($fp)
	lw $t1, -22060($fp)
	lw $t2, -22072($fp)
	blt $t1, $t2, label893
	j label894
label893:
	li $t0, 1
	sw $t0, -22056($fp)
label894:
	addi $t0, $fp, -520
	sw $t0, -22076($fp)
	li $t0, 4
	sw $t0, -22080($fp)
	li $t0, 4
	lw $t1, -22080($fp)
	mul $t0, $t0, $t1
	sw $t0, -22084($fp)
	lw $t0, -22084($fp)
	lw $t1, -22076($fp)
	add $t0, $t0, $t1
	sw $t0, -22088($fp)
	lw $t0, -22088($fp)
	lw $t1, 0($t0)
	sw $t1, -22092($fp)
	lw $t0, -7440($fp)
	sw $t0, -22096($fp)
	lw $t0, -22092($fp)
	lw $t1, -22096($fp)
	mul $t0, $t0, $t1
	sw $t0, -22100($fp)
	li $t0, 0
	sw $t0, -22104($fp)
	li $t0, 29742
	sw $t0, -22108($fp)
	lw $t0, -12060($fp)
	sw $t0, -22112($fp)
	lw $t0, -22108($fp)
	lw $t1, -22112($fp)
	mul $t0, $t0, $t1
	sw $t0, -22116($fp)
	lw $t1, -22116($fp)
	li $t2, 0
	bne $t1, $t2, label897
	j label899
label899:
	li $t0, 27559
	sw $t0, -22120($fp)
	lw $t1, -22120($fp)
	li $t2, 0
	bne $t1, $t2, label897
	j label898
label897:
	li $t0, 1
	sw $t0, -22104($fp)
label898:
	li $t0, 0
	sw $t0, -22124($fp)
	li $t0, 0
	sw $t0, -22128($fp)
	lw $t0, -10980($fp)
	sw $t0, -22132($fp)
	li $t0, 47113
	sw $t0, -22136($fp)
	lw $t1, -22132($fp)
	lw $t2, -22136($fp)
	bgt $t1, $t2, label902
	j label903
label902:
	li $t0, 1
	sw $t0, -22128($fp)
label903:
	li $t0, 43342
	sw $t0, -22140($fp)
	lw $t1, -22128($fp)
	lw $t2, -22140($fp)
	beq $t1, $t2, label900
	j label901
label900:
	li $t0, 1
	sw $t0, -22124($fp)
label901:
	li $t0, 0
	sw $t0, -22144($fp)
	addi $t0, $fp, -1240
	sw $t0, -22148($fp)
	li $t0, 0
	sw $t0, -22152($fp)
	li $t0, 4
	lw $t1, -22152($fp)
	mul $t0, $t0, $t1
	sw $t0, -22156($fp)
	lw $t0, -22156($fp)
	lw $t1, -22148($fp)
	add $t0, $t0, $t1
	sw $t0, -22160($fp)
	lw $t0, -22160($fp)
	lw $t1, 0($t0)
	sw $t1, -22164($fp)
	lw $t0, -7488($fp)
	sw $t0, -22168($fp)
	lw $t1, -22164($fp)
	lw $t2, -22168($fp)
	bgt $t1, $t2, label904
	j label905
label904:
	li $t0, 1
	sw $t0, -22144($fp)
label905:
	li $t0, 0
	sw $t0, -22172($fp)
	li $t0, 0
	sw $t0, -22176($fp)
	li $t0, 64631
	sw $t0, -22180($fp)
	li $t0, 40079
	sw $t0, -22184($fp)
	lw $t1, -22180($fp)
	lw $t2, -22184($fp)
	bgt $t1, $t2, label908
	j label909
label908:
	li $t0, 1
	sw $t0, -22176($fp)
label909:
	li $t0, 31123
	sw $t0, -22188($fp)
	lw $t1, -22176($fp)
	lw $t2, -22188($fp)
	blt $t1, $t2, label906
	j label907
label906:
	li $t0, 1
	sw $t0, -22172($fp)
label907:
	lw $t0, -7176($fp)
	sw $t0, -22192($fp)
	li $t0, 41241
	sw $t0, -22196($fp)
	lw $t0, -22192($fp)
	lw $t1, -22196($fp)
	sub $t0, $t0, $t1
	sw $t0, -22200($fp)
	li $t0, 0
	sw $t0, -22204($fp)
	li $t0, 23199
	sw $t0, -22208($fp)
	lw $t1, -22208($fp)
	li $t2, 0
	bne $t1, $t2, label911
	j label910
label910:
	li $t0, 1
	sw $t0, -22204($fp)
label911:
	li $t0, 51371
	sw $t0, -22212($fp)
	lw $t0, -22204($fp)
	lw $t1, -22212($fp)
	sub $t0, $t0, $t1
	sw $t0, -22216($fp)
	lw $t0, -7140($fp)
	sw $t0, -22220($fp)
	lw $t0, -22220($fp)
	sw $t0, -20800($fp)
	lw $t0, -20800($fp)
	sw $t0, -22224($fp)
	addi $sp, $sp, -4
	lw $t0, -22144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22224($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -22228($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -22056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22228($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -22232($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -22236($fp)
	lw $t0, -6348($fp)
	sw $t0, -22240($fp)
	li $t0, 0
	lw $t1, -22240($fp)
	sub $t0, $t0, $t1
	sw $t0, -22244($fp)
	lw $t1, -22244($fp)
	li $t2, 0
	bne $t1, $t2, label913
	j label912
label912:
	li $t0, 1
	sw $t0, -22236($fp)
label913:
	addi $sp, $sp, -4
	lw $t0, -21944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22236($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -22248($fp)
	addi $sp, $sp, 24
	li $t0, 23155
	sw $t0, -22252($fp)
	lw $t0, -22248($fp)
	lw $t1, -22252($fp)
	mul $t0, $t0, $t1
	sw $t0, -22256($fp)
	li $t0, 0
	sw $t0, -22260($fp)
	lw $t0, -7752($fp)
	sw $t0, -22264($fp)
	lw $t0, -22264($fp)
	sw $t0, -7200($fp)
	lw $t0, -7200($fp)
	sw $t0, -22268($fp)
	li $t0, 0
	sw $t0, -22272($fp)
	li $t0, 601
	sw $t0, -22276($fp)
	lw $t0, -7224($fp)
	sw $t0, -22280($fp)
	lw $t1, -22276($fp)
	lw $t2, -22280($fp)
	bne $t1, $t2, label916
	j label918
label918:
	li $t0, 3470
	sw $t0, -22284($fp)
	lw $t1, -22284($fp)
	li $t2, 0
	bne $t1, $t2, label916
	j label917
label916:
	li $t0, 1
	sw $t0, -22272($fp)
label917:
	li $t0, 0
	sw $t0, -22288($fp)
	li $t0, 4036
	sw $t0, -22292($fp)
	lw $t1, -22292($fp)
	li $t2, 0
	bne $t1, $t2, label920
	j label919
label919:
	li $t0, 1
	sw $t0, -22288($fp)
label920:
	lw $t0, -7140($fp)
	sw $t0, -22296($fp)
	lw $t0, -22288($fp)
	lw $t1, -22296($fp)
	add $t0, $t0, $t1
	sw $t0, -22300($fp)
	li $t0, 37801
	sw $t0, -22304($fp)
	li $t0, 16543
	sw $t0, -22308($fp)
	lw $t0, -22304($fp)
	lw $t1, -22308($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -22312($fp)
	li $t0, 48270
	sw $t0, -22316($fp)
	lw $t0, -22312($fp)
	lw $t1, -22316($fp)
	mul $t0, $t0, $t1
	sw $t0, -22320($fp)
	li $t0, 0
	sw $t0, -22324($fp)
	li $t0, 31685
	sw $t0, -22328($fp)
	lw $t1, -22328($fp)
	li $t2, 0
	bne $t1, $t2, label922
	j label921
label921:
	li $t0, 1
	sw $t0, -22324($fp)
label922:
	li $t0, 0
	lw $t1, -22324($fp)
	sub $t0, $t0, $t1
	sw $t0, -22332($fp)
	li $t0, 0
	sw $t0, -22336($fp)
	lw $t0, -3912($fp)
	sw $t0, -22340($fp)
	lw $t1, -22340($fp)
	li $t2, 0
	bne $t1, $t2, label926
	j label925
label926:
	lw $t0, -13212($fp)
	sw $t0, -22344($fp)
	lw $t1, -22344($fp)
	li $t2, 0
	bne $t1, $t2, label923
	j label925
label925:
	lw $t0, -20788($fp)
	sw $t0, -22348($fp)
	lw $t1, -22348($fp)
	li $t2, 0
	bne $t1, $t2, label923
	j label924
label923:
	li $t0, 1
	sw $t0, -22336($fp)
label924:
	li $t0, 0
	sw $t0, -22352($fp)
	lw $t0, -5604($fp)
	sw $t0, -22356($fp)
	lw $t0, -3348($fp)
	sw $t0, -22360($fp)
	lw $t0, -22356($fp)
	lw $t1, -22360($fp)
	mul $t0, $t0, $t1
	sw $t0, -22364($fp)
	li $t0, 0
	sw $t0, -22368($fp)
	lw $t0, -5592($fp)
	sw $t0, -22372($fp)
	lw $t1, -22372($fp)
	li $t2, 0
	bne $t1, $t2, label930
	j label929
label929:
	li $t0, 1
	sw $t0, -22368($fp)
label930:
	li $t0, 0
	sw $t0, -22376($fp)
	li $t0, 0
	sw $t0, -22380($fp)
	li $t0, 14701
	sw $t0, -22384($fp)
	lw $t1, -22384($fp)
	li $t2, 0
	bne $t1, $t2, label934
	j label933
label933:
	li $t0, 1
	sw $t0, -22380($fp)
label934:
	lw $t0, -5532($fp)
	sw $t0, -22388($fp)
	lw $t1, -22380($fp)
	lw $t2, -22388($fp)
	bgt $t1, $t2, label931
	j label932
label931:
	li $t0, 1
	sw $t0, -22376($fp)
label932:
	li $t0, 0
	sw $t0, -22392($fp)
	li $t0, 17029
	sw $t0, -22396($fp)
	li $t0, 0
	lw $t1, -22396($fp)
	sub $t0, $t0, $t1
	sw $t0, -22400($fp)
	lw $t1, -22400($fp)
	li $t2, 0
	bne $t1, $t2, label936
	j label935
label935:
	li $t0, 1
	sw $t0, -22392($fp)
label936:
	li $t0, 2458
	sw $t0, -22404($fp)
	lw $t0, -22404($fp)
	sw $t0, -5580($fp)
	lw $t0, -5580($fp)
	sw $t0, -22408($fp)
	addi $sp, $sp, -4
	lw $t0, -22364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22408($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -22412($fp)
	addi $sp, $sp, 24
	lw $t1, -22412($fp)
	li $t2, 0
	bne $t1, $t2, label928
	j label927
label927:
	li $t0, 1
	sw $t0, -22352($fp)
label928:
	addi $sp, $sp, -4
	lw $t0, -22300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22352($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -22416($fp)
	addi $sp, $sp, 24
	li $t0, 27134
	sw $t0, -22420($fp)
	lw $t0, -5568($fp)
	sw $t0, -22424($fp)
	lw $t0, -22420($fp)
	lw $t1, -22424($fp)
	mul $t0, $t0, $t1
	sw $t0, -22428($fp)
	li $t0, 0
	lw $t1, -22428($fp)
	sub $t0, $t0, $t1
	sw $t0, -22432($fp)
	li $t0, 0
	sw $t0, -22436($fp)
	lw $t0, -12108($fp)
	sw $t0, -22440($fp)
	lw $t0, -8724($fp)
	sw $t0, -22444($fp)
	lw $t0, -22440($fp)
	lw $t1, -22444($fp)
	mul $t0, $t0, $t1
	sw $t0, -22448($fp)
	lw $t0, -3672($fp)
	sw $t0, -22452($fp)
	lw $t1, -22448($fp)
	lw $t2, -22452($fp)
	ble $t1, $t2, label937
	j label938
label937:
	li $t0, 1
	sw $t0, -22436($fp)
label938:
	addi $sp, $sp, -4
	lw $t0, -22268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22436($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -22456($fp)
	addi $sp, $sp, 24
	li $t0, 18008
	sw $t0, -22460($fp)
	lw $t1, -22456($fp)
	lw $t2, -22460($fp)
	beq $t1, $t2, label914
	j label915
label914:
	li $t0, 1
	sw $t0, -22260($fp)
label915:
	lw $t0, -7044($fp)
	sw $t0, -22464($fp)
	lw $t0, -7104($fp)
	sw $t0, -22468($fp)
	lw $t0, -22464($fp)
	lw $t1, -22468($fp)
	add $t0, $t0, $t1
	sw $t0, -22472($fp)
	li $t0, 0
	sw $t0, -22476($fp)
	li $t0, 0
	sw $t0, -22480($fp)
	lw $t0, -6312($fp)
	sw $t0, -22484($fp)
	lw $t1, -22484($fp)
	li $t2, 0
	bne $t1, $t2, label942
	j label941
label941:
	li $t0, 1
	sw $t0, -22480($fp)
label942:
	li $t0, 0
	lw $t1, -22480($fp)
	sub $t0, $t0, $t1
	sw $t0, -22488($fp)
	lw $t0, -20776($fp)
	sw $t0, -22492($fp)
	addi $t0, $fp, -20468
	sw $t0, -22496($fp)
	li $t0, 0
	sw $t0, -22500($fp)
	li $t0, 4
	lw $t1, -22500($fp)
	mul $t0, $t0, $t1
	sw $t0, -22504($fp)
	lw $t0, -22504($fp)
	lw $t1, -22496($fp)
	add $t0, $t0, $t1
	sw $t0, -22508($fp)
	lw $t0, -22508($fp)
	lw $t1, 0($t0)
	sw $t1, -22512($fp)
	li $t0, 0
	sw $t0, -22516($fp)
	li $t0, 59626
	sw $t0, -22520($fp)
	li $t0, 21722
	sw $t0, -22524($fp)
	lw $t1, -22520($fp)
	lw $t2, -22524($fp)
	beq $t1, $t2, label945
	j label944
label945:
	li $t0, 50009
	sw $t0, -22528($fp)
	lw $t1, -22528($fp)
	li $t2, 0
	bne $t1, $t2, label943
	j label944
label943:
	li $t0, 1
	sw $t0, -22516($fp)
label944:
	lw $t0, -5556($fp)
	sw $t0, -22532($fp)
	lw $t0, -22532($fp)
	sw $t0, -20740($fp)
	lw $t0, -20740($fp)
	sw $t0, -22536($fp)
	li $t0, 0
	sw $t0, -22540($fp)
	li $t0, 15496
	sw $t0, -22544($fp)
	lw $t0, -5544($fp)
	sw $t0, -22548($fp)
	lw $t1, -22544($fp)
	lw $t2, -22548($fp)
	bgt $t1, $t2, label946
	j label947
label946:
	li $t0, 1
	sw $t0, -22540($fp)
label947:
	addi $t0, $fp, -1336
	sw $t0, -22552($fp)
	lw $t0, -12300($fp)
	sw $t0, -22556($fp)
	li $t0, 4
	lw $t1, -22556($fp)
	mul $t0, $t0, $t1
	sw $t0, -22560($fp)
	lw $t0, -22560($fp)
	lw $t1, -22552($fp)
	add $t0, $t0, $t1
	sw $t0, -22564($fp)
	lw $t0, -22564($fp)
	lw $t1, 0($t0)
	sw $t1, -22568($fp)
	lw $t0, -5532($fp)
	sw $t0, -22572($fp)
	addi $sp, $sp, -4
	lw $t0, -22516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22572($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -22576($fp)
	addi $sp, $sp, 24
	lw $t0, -5520($fp)
	sw $t0, -22580($fp)
	lw $t0, -22580($fp)
	sw $t0, -11040($fp)
	lw $t0, -11040($fp)
	sw $t0, -22584($fp)
	addi $sp, $sp, -4
	lw $t0, -22488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22584($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -22588($fp)
	addi $sp, $sp, 24
	lw $t0, -7296($fp)
	sw $t0, -22592($fp)
	lw $t0, -22588($fp)
	lw $t1, -22592($fp)
	sub $t0, $t0, $t1
	sw $t0, -22596($fp)
	li $t0, 0
	sw $t0, -22600($fp)
	li $t0, 45982
	sw $t0, -22604($fp)
	lw $t0, -5556($fp)
	sw $t0, -22608($fp)
	lw $t0, -22604($fp)
	lw $t1, -22608($fp)
	mul $t0, $t0, $t1
	sw $t0, -22612($fp)
	li $t0, 36671
	sw $t0, -22616($fp)
	lw $t1, -22612($fp)
	lw $t2, -22616($fp)
	blt $t1, $t2, label948
	j label949
label948:
	li $t0, 1
	sw $t0, -22600($fp)
label949:
	li $t0, 0
	sw $t0, -22620($fp)
	li $t0, 50801
	sw $t0, -22624($fp)
	lw $t1, -22624($fp)
	li $t2, 0
	bne $t1, $t2, label952
	j label951
label952:
	li $t0, 21662
	sw $t0, -22628($fp)
	lw $t1, -22628($fp)
	li $t2, 0
	bne $t1, $t2, label950
	j label951
label950:
	li $t0, 1
	sw $t0, -22620($fp)
label951:
	li $t0, 0
	sw $t0, -22632($fp)
	lw $t0, -2364($fp)
	sw $t0, -22636($fp)
	lw $t1, -22636($fp)
	li $t2, 0
	bne $t1, $t2, label953
	j label956
label956:
	lw $t0, -20728($fp)
	sw $t0, -22640($fp)
	lw $t1, -22640($fp)
	li $t2, 0
	bne $t1, $t2, label953
	j label955
label955:
	lw $t0, -11880($fp)
	sw $t0, -22644($fp)
	lw $t1, -22644($fp)
	li $t2, 0
	bne $t1, $t2, label953
	j label954
label953:
	li $t0, 1
	sw $t0, -22632($fp)
label954:
	li $t0, 0
	sw $t0, -22648($fp)
	lw $t0, -5508($fp)
	sw $t0, -22652($fp)
	lw $t1, -22652($fp)
	li $t2, 0
	bne $t1, $t2, label958
	j label957
label957:
	li $t0, 1
	sw $t0, -22648($fp)
label958:
	addi $t0, $fp, -60
	sw $t0, -22656($fp)
	li $t0, 4
	sw $t0, -22660($fp)
	li $t0, 4
	lw $t1, -22660($fp)
	mul $t0, $t0, $t1
	sw $t0, -22664($fp)
	lw $t0, -22664($fp)
	lw $t1, -22656($fp)
	add $t0, $t0, $t1
	sw $t0, -22668($fp)
	lw $t0, -22668($fp)
	lw $t1, 0($t0)
	sw $t1, -22672($fp)
	li $t0, 58981
	sw $t0, -22676($fp)
	li $t0, 0
	sw $t0, -22680($fp)
	li $t0, 0
	sw $t0, -22684($fp)
	lw $t0, -3048($fp)
	sw $t0, -22688($fp)
	li $t0, 54244
	sw $t0, -22692($fp)
	lw $t1, -22688($fp)
	lw $t2, -22692($fp)
	bge $t1, $t2, label961
	j label962
label961:
	li $t0, 1
	sw $t0, -22684($fp)
label962:
	li $t0, 55417
	sw $t0, -22696($fp)
	lw $t1, -22684($fp)
	lw $t2, -22696($fp)
	bge $t1, $t2, label959
	j label960
label959:
	li $t0, 1
	sw $t0, -22680($fp)
label960:
	addi $sp, $sp, -4
	lw $t0, -22632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22680($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -22700($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -22704($fp)
	lw $t0, -6624($fp)
	sw $t0, -22708($fp)
	lw $t1, -22708($fp)
	li $t2, 0
	bne $t1, $t2, label964
	j label963
label963:
	li $t0, 1
	sw $t0, -22704($fp)
label964:
	li $t0, 23233
	sw $t0, -22712($fp)
	li $t0, 41431
	sw $t0, -22716($fp)
	lw $t0, -22712($fp)
	lw $t1, -22716($fp)
	mul $t0, $t0, $t1
	sw $t0, -22720($fp)
	li $t0, 0
	lw $t1, -22720($fp)
	sub $t0, $t0, $t1
	sw $t0, -22724($fp)
	li $t0, 0
	sw $t0, -22728($fp)
	lw $t0, -3024($fp)
	sw $t0, -22732($fp)
	li $t0, 0
	lw $t1, -22732($fp)
	sub $t0, $t0, $t1
	sw $t0, -22736($fp)
	lw $t1, -22736($fp)
	li $t2, 0
	bne $t1, $t2, label965
	j label967
label967:
	li $t0, 47901
	sw $t0, -22740($fp)
	lw $t1, -22740($fp)
	li $t2, 0
	bne $t1, $t2, label965
	j label966
label965:
	li $t0, 1
	sw $t0, -22728($fp)
label966:
	addi $t0, $fp, -20464
	sw $t0, -22744($fp)
	lw $t0, -12168($fp)
	sw $t0, -22748($fp)
	li $t0, 4
	lw $t1, -22748($fp)
	mul $t0, $t0, $t1
	sw $t0, -22752($fp)
	lw $t0, -22752($fp)
	lw $t1, -22744($fp)
	add $t0, $t0, $t1
	sw $t0, -22756($fp)
	lw $t0, -22756($fp)
	lw $t1, 0($t0)
	sw $t1, -22760($fp)
	li $t0, 0
	lw $t1, -22760($fp)
	sub $t0, $t0, $t1
	sw $t0, -22764($fp)
	li $t0, 0
	sw $t0, -22768($fp)
	li $t0, 22598
	sw $t0, -22772($fp)
	lw $t1, -22772($fp)
	li $t2, 0
	bne $t1, $t2, label969
	j label968
label968:
	li $t0, 1
	sw $t0, -22768($fp)
label969:
	lw $t0, -20476($fp)
	sw $t0, -22776($fp)
	lw $t0, -22768($fp)
	lw $t1, -22776($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -22780($fp)
	li $t0, 20736
	sw $t0, -22784($fp)
	li $t0, 13972
	sw $t0, -22788($fp)
	lw $t0, -22784($fp)
	lw $t1, -22788($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -22792($fp)
	lw $t0, -10212($fp)
	sw $t0, -22796($fp)
	addi $sp, $sp, -4
	lw $t0, -22728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22796($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -22800($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -22620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22800($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -22804($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -22808($fp)
	lw $t0, -6348($fp)
	sw $t0, -22812($fp)
	li $t0, 49594
	sw $t0, -22816($fp)
	lw $t1, -22812($fp)
	lw $t2, -22816($fp)
	bgt $t1, $t2, label970
	j label972
label972:
	lw $t0, -5496($fp)
	sw $t0, -22820($fp)
	lw $t1, -22820($fp)
	li $t2, 0
	bne $t1, $t2, label970
	j label971
label970:
	li $t0, 1
	sw $t0, -22808($fp)
label971:
	addi $t0, $fp, -1004
	sw $t0, -22824($fp)
	lw $t0, -11808($fp)
	sw $t0, -22828($fp)
	li $t0, 4
	lw $t1, -22828($fp)
	mul $t0, $t0, $t1
	sw $t0, -22832($fp)
	lw $t0, -22832($fp)
	lw $t1, -22824($fp)
	add $t0, $t0, $t1
	sw $t0, -22836($fp)
	lw $t0, -22836($fp)
	lw $t1, 0($t0)
	sw $t1, -22840($fp)
	lw $t0, -5484($fp)
	sw $t0, -22844($fp)
	lw $t0, -22840($fp)
	lw $t1, -22844($fp)
	mul $t0, $t0, $t1
	sw $t0, -22848($fp)
	addi $sp, $sp, -4
	lw $t0, -22596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22848($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -22852($fp)
	addi $sp, $sp, 24
	lw $t1, -22852($fp)
	li $t2, 0
	bne $t1, $t2, label940
	j label939
label939:
	li $t0, 1
	sw $t0, -22476($fp)
label940:
	li $t0, 0
	sw $t0, -22856($fp)
	addi $t0, $fp, -944
	sw $t0, -22860($fp)
	li $t0, 3
	sw $t0, -22864($fp)
	li $t0, 4
	lw $t1, -22864($fp)
	mul $t0, $t0, $t1
	sw $t0, -22868($fp)
	lw $t0, -22868($fp)
	lw $t1, -22860($fp)
	add $t0, $t0, $t1
	sw $t0, -22872($fp)
	lw $t0, -22872($fp)
	lw $t1, 0($t0)
	sw $t1, -22876($fp)
	lw $t0, -5892($fp)
	sw $t0, -22880($fp)
	lw $t1, -22876($fp)
	lw $t2, -22880($fp)
	beq $t1, $t2, label973
	j label974
label973:
	li $t0, 1
	sw $t0, -22856($fp)
label974:
	addi $sp, $sp, -4
	lw $t0, -22256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22856($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -22884($fp)
	addi $sp, $sp, 24
	lw $t0, -5844($fp)
	sw $t0, -22888($fp)
	lw $t0, -22884($fp)
	lw $t1, -22888($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -22892($fp)
	li $t0, 1842
	sw $t0, -22896($fp)
	lw $t0, -22896($fp)
	sw $t0, -5472($fp)
	lw $t0, -5472($fp)
	sw $t0, -22900($fp)
	li $t0, 0
	sw $t0, -22904($fp)
	li $t0, 0
	sw $t0, -22908($fp)
	li $t0, 29227
	sw $t0, -22912($fp)
	lw $t0, -7164($fp)
	sw $t0, -22916($fp)
	lw $t1, -22912($fp)
	lw $t2, -22916($fp)
	bne $t1, $t2, label977
	j label978
label977:
	li $t0, 1
	sw $t0, -22908($fp)
label978:
	li $t0, 20772
	sw $t0, -22920($fp)
	lw $t1, -22908($fp)
	lw $t2, -22920($fp)
	beq $t1, $t2, label975
	j label976
label975:
	li $t0, 1
	sw $t0, -22904($fp)
label976:
	li $t0, 0
	sw $t0, -22924($fp)
	li $t0, 61318
	sw $t0, -22928($fp)
	li $t0, 53103
	sw $t0, -22932($fp)
	lw $t1, -22928($fp)
	lw $t2, -22932($fp)
	bge $t1, $t2, label979
	j label981
label981:
	lw $t0, -5460($fp)
	sw $t0, -22936($fp)
	lw $t1, -22936($fp)
	li $t2, 0
	bne $t1, $t2, label979
	j label980
label979:
	li $t0, 1
	sw $t0, -22924($fp)
label980:
	addi $sp, $sp, -4
	lw $t0, -21916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -22924($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -22940($fp)
	addi $sp, $sp, 24
	lw $t1, -22940($fp)
	li $t2, 0
	bne $t1, $t2, label873
	j label875
label875:
	li $t0, 3248
	sw $t0, -22944($fp)
	lw $t1, -22944($fp)
	li $t2, 0
	bne $t1, $t2, label873
	j label874
label873:
	li $t0, 1
	sw $t0, -21912($fp)
label874:
	addi $sp, $sp, -4
	lw $t0, -21288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -21912($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -22948($fp)
	addi $sp, $sp, 24
	li $t0, 51832
	sw $t0, -22952($fp)
	lw $t0, -22948($fp)
	lw $t1, -22952($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -22956($fp)
	lw $ra, -4($fp)
	lw $v0, -22956($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 26048
	sw $t0, -22996($fp)
	lw $t0, -22996($fp)
	sw $t0, -23000($fp)
	lw $t0, -23000($fp)
	sw $t0, -23004($fp)
	li $t0, 34519
	sw $t0, -23008($fp)
	lw $t0, -23008($fp)
	sw $t0, -23012($fp)
	lw $t0, -23012($fp)
	sw $t0, -23016($fp)
	li $t0, 5442
	sw $t0, -23020($fp)
	lw $t0, -23020($fp)
	sw $t0, -23024($fp)
	lw $t0, -23024($fp)
	sw $t0, -23028($fp)
	li $t0, 17702
	sw $t0, -23032($fp)
	lw $t0, -23032($fp)
	sw $t0, -23036($fp)
	lw $t0, -23036($fp)
	sw $t0, -23040($fp)
	li $t0, 50315
	sw $t0, -23044($fp)
	addi $t0, $fp, -22992
	sw $t0, -23048($fp)
	li $t0, 0
	sw $t0, -23052($fp)
	lw $t0, -23052($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -23056($fp)
	lw $t0, -23048($fp)
	lw $t1, -23056($fp)
	add $t0, $t0, $t1
	sw $t0, -23060($fp)
	lw $t0, -23044($fp)
	lw $t1, -23060($fp)
	sw $t0, 0($t1)
	lw $t0, -23060($fp)
	lw $t1, 0($t0)
	sw $t1, -23064($fp)
	li $t0, 54331
	sw $t0, -23068($fp)
	addi $t0, $fp, -22992
	sw $t0, -23072($fp)
	li $t0, 1
	sw $t0, -23076($fp)
	lw $t0, -23076($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -23080($fp)
	lw $t0, -23072($fp)
	lw $t1, -23080($fp)
	add $t0, $t0, $t1
	sw $t0, -23084($fp)
	lw $t0, -23068($fp)
	lw $t1, -23084($fp)
	sw $t0, 0($t1)
	lw $t0, -23084($fp)
	lw $t1, 0($t0)
	sw $t1, -23088($fp)
	li $t0, 36915
	sw $t0, -23092($fp)
	addi $t0, $fp, -22992
	sw $t0, -23096($fp)
	li $t0, 2
	sw $t0, -23100($fp)
	lw $t0, -23100($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -23104($fp)
	lw $t0, -23096($fp)
	lw $t1, -23104($fp)
	add $t0, $t0, $t1
	sw $t0, -23108($fp)
	lw $t0, -23092($fp)
	lw $t1, -23108($fp)
	sw $t0, 0($t1)
	lw $t0, -23108($fp)
	lw $t1, 0($t0)
	sw $t1, -23112($fp)
	li $t0, 15053
	sw $t0, -23116($fp)
	addi $t0, $fp, -22992
	sw $t0, -23120($fp)
	li $t0, 3
	sw $t0, -23124($fp)
	lw $t0, -23124($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -23128($fp)
	lw $t0, -23120($fp)
	lw $t1, -23128($fp)
	add $t0, $t0, $t1
	sw $t0, -23132($fp)
	lw $t0, -23116($fp)
	lw $t1, -23132($fp)
	sw $t0, 0($t1)
	lw $t0, -23132($fp)
	lw $t1, 0($t0)
	sw $t1, -23136($fp)
	li $t0, 17385
	sw $t0, -23140($fp)
	addi $t0, $fp, -22992
	sw $t0, -23144($fp)
	li $t0, 4
	sw $t0, -23148($fp)
	lw $t0, -23148($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -23152($fp)
	lw $t0, -23144($fp)
	lw $t1, -23152($fp)
	add $t0, $t0, $t1
	sw $t0, -23156($fp)
	lw $t0, -23140($fp)
	lw $t1, -23156($fp)
	sw $t0, 0($t1)
	lw $t0, -23156($fp)
	lw $t1, 0($t0)
	sw $t1, -23160($fp)
	li $t0, 12243
	sw $t0, -23164($fp)
	addi $t0, $fp, -22992
	sw $t0, -23168($fp)
	li $t0, 5
	sw $t0, -23172($fp)
	lw $t0, -23172($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -23176($fp)
	lw $t0, -23168($fp)
	lw $t1, -23176($fp)
	add $t0, $t0, $t1
	sw $t0, -23180($fp)
	lw $t0, -23164($fp)
	lw $t1, -23180($fp)
	sw $t0, 0($t1)
	lw $t0, -23180($fp)
	lw $t1, 0($t0)
	sw $t1, -23184($fp)
	li $t0, 15991
	sw $t0, -23188($fp)
	addi $t0, $fp, -22992
	sw $t0, -23192($fp)
	li $t0, 6
	sw $t0, -23196($fp)
	lw $t0, -23196($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -23200($fp)
	lw $t0, -23192($fp)
	lw $t1, -23200($fp)
	add $t0, $t0, $t1
	sw $t0, -23204($fp)
	lw $t0, -23188($fp)
	lw $t1, -23204($fp)
	sw $t0, 0($t1)
	lw $t0, -23204($fp)
	lw $t1, 0($t0)
	sw $t1, -23208($fp)
	li $t0, 10151
	sw $t0, -23212($fp)
	addi $t0, $fp, -22992
	sw $t0, -23216($fp)
	li $t0, 7
	sw $t0, -23220($fp)
	lw $t0, -23220($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -23224($fp)
	lw $t0, -23216($fp)
	lw $t1, -23224($fp)
	add $t0, $t0, $t1
	sw $t0, -23228($fp)
	lw $t0, -23212($fp)
	lw $t1, -23228($fp)
	sw $t0, 0($t1)
	lw $t0, -23228($fp)
	lw $t1, 0($t0)
	sw $t1, -23232($fp)
	li $t0, 17909
	sw $t0, -23236($fp)
	addi $t0, $fp, -22992
	sw $t0, -23240($fp)
	li $t0, 8
	sw $t0, -23244($fp)
	lw $t0, -23244($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -23248($fp)
	lw $t0, -23240($fp)
	lw $t1, -23248($fp)
	add $t0, $t0, $t1
	sw $t0, -23252($fp)
	lw $t0, -23236($fp)
	lw $t1, -23252($fp)
	sw $t0, 0($t1)
	lw $t0, -23252($fp)
	lw $t1, 0($t0)
	sw $t1, -23256($fp)
	li $t0, 8839
	sw $t0, -23260($fp)
	lw $t0, -23260($fp)
	sw $t0, -23264($fp)
	lw $t0, -23264($fp)
	sw $t0, -23268($fp)
	li $t0, 59763
	sw $t0, -23272($fp)
	lw $t0, -23272($fp)
	sw $t0, -23276($fp)
	lw $t0, -23276($fp)
	sw $t0, -23280($fp)
	addi $t0, $fp, -548
	sw $t0, -23284($fp)
	li $t0, 0
	sw $t0, -23288($fp)
	lw $t0, -5604($fp)
	sw $t0, -23292($fp)
	lw $t1, -23292($fp)
	li $t2, 0
	bne $t1, $t2, label983
	j label982
label982:
	li $t0, 1
	sw $t0, -23288($fp)
label983:
	li $t0, 4
	lw $t1, -23288($fp)
	mul $t0, $t0, $t1
	sw $t0, -23296($fp)
	lw $t0, -23296($fp)
	lw $t1, -23284($fp)
	add $t0, $t0, $t1
	sw $t0, -23300($fp)
	lw $t0, -23300($fp)
	lw $t1, 0($t0)
	sw $t1, -23304($fp)
	li $t0, 0
	sw $t0, -23308($fp)
	li $t0, 0
	sw $t0, -23312($fp)
	lw $t0, -7176($fp)
	sw $t0, -23316($fp)
	lw $t1, -23316($fp)
	li $t2, 0
	bne $t1, $t2, label986
	j label988
label988:
	li $t0, 51580
	sw $t0, -23320($fp)
	lw $t1, -23320($fp)
	li $t2, 0
	bne $t1, $t2, label986
	j label987
label986:
	li $t0, 1
	sw $t0, -23312($fp)
label987:
	addi $t0, $fp, -608
	sw $t0, -23324($fp)
	li $t0, 8
	sw $t0, -23328($fp)
	li $t0, 4
	lw $t1, -23328($fp)
	mul $t0, $t0, $t1
	sw $t0, -23332($fp)
	lw $t0, -23332($fp)
	lw $t1, -23324($fp)
	add $t0, $t0, $t1
	sw $t0, -23336($fp)
	lw $t0, -23336($fp)
	lw $t1, 0($t0)
	sw $t1, -23340($fp)
	li $t0, 0
	sw $t0, -23344($fp)
	li $t0, 62489
	sw $t0, -23348($fp)
	lw $t1, -23348($fp)
	li $t2, 0
	bne $t1, $t2, label990
	j label989
label989:
	li $t0, 1
	sw $t0, -23344($fp)
label990:
	li $t0, 47338
	sw $t0, -23352($fp)
	lw $t0, -23344($fp)
	lw $t1, -23352($fp)
	mul $t0, $t0, $t1
	sw $t0, -23356($fp)
	lw $t0, -3216($fp)
	sw $t0, -23360($fp)
	li $t0, 0
	lw $t1, -23360($fp)
	sub $t0, $t0, $t1
	sw $t0, -23364($fp)
	li $t0, 0
	lw $t1, -23364($fp)
	sub $t0, $t0, $t1
	sw $t0, -23368($fp)
	lw $t0, -11004($fp)
	sw $t0, -23372($fp)
	lw $t0, -3312($fp)
	sw $t0, -23376($fp)
	lw $t0, -23372($fp)
	lw $t1, -23376($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -23380($fp)
	li $t0, 59154
	sw $t0, -23384($fp)
	li $t0, 49849
	sw $t0, -23388($fp)
	li $t0, 0
	lw $t1, -23388($fp)
	sub $t0, $t0, $t1
	sw $t0, -23392($fp)
	li $t0, 28247
	sw $t0, -23396($fp)
	lw $t0, -23392($fp)
	lw $t1, -23396($fp)
	sub $t0, $t0, $t1
	sw $t0, -23400($fp)
	li $t0, 0
	sw $t0, -23404($fp)
	lw $t0, -9744($fp)
	sw $t0, -23408($fp)
	lw $t1, -23408($fp)
	li $t2, 0
	bne $t1, $t2, label994
	j label993
label994:
	lw $t0, -9912($fp)
	sw $t0, -23412($fp)
	lw $t1, -23412($fp)
	li $t2, 0
	bne $t1, $t2, label991
	j label993
label993:
	lw $t0, -7296($fp)
	sw $t0, -23416($fp)
	lw $t1, -23416($fp)
	li $t2, 0
	bne $t1, $t2, label991
	j label992
label991:
	li $t0, 1
	sw $t0, -23404($fp)
label992:
	li $t0, 0
	sw $t0, -23420($fp)
	lw $t0, -23000($fp)
	sw $t0, -23424($fp)
	li $t0, 56373
	sw $t0, -23428($fp)
	lw $t0, -23424($fp)
	lw $t1, -23428($fp)
	sub $t0, $t0, $t1
	sw $t0, -23432($fp)
	li $t0, 10626
	sw $t0, -23436($fp)
	lw $t1, -23432($fp)
	lw $t2, -23436($fp)
	blt $t1, $t2, label995
	j label996
label995:
	li $t0, 1
	sw $t0, -23420($fp)
label996:
	addi $sp, $sp, -4
	lw $t0, -23380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -23384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -23400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -23404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -23420($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -23440($fp)
	addi $sp, $sp, 24
	lw $t0, -3252($fp)
	sw $t0, -23444($fp)
	lw $t0, -23440($fp)
	lw $t1, -23444($fp)
	add $t0, $t0, $t1
	sw $t0, -23448($fp)
	addi $sp, $sp, -4
	lw $t0, -23312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -23340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -23356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -23368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -23448($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -23452($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -360
	sw $t0, -23456($fp)
	li $t0, 5
	sw $t0, -23460($fp)
	li $t0, 4
	lw $t1, -23460($fp)
	mul $t0, $t0, $t1
	sw $t0, -23464($fp)
	lw $t0, -23464($fp)
	lw $t1, -23456($fp)
	add $t0, $t0, $t1
	sw $t0, -23468($fp)
	lw $t0, -23468($fp)
	lw $t1, 0($t0)
	sw $t1, -23472($fp)
	lw $t1, -23452($fp)
	lw $t2, -23472($fp)
	beq $t1, $t2, label984
	j label985
label984:
	li $t0, 1
	sw $t0, -23308($fp)
label985:
	lw $t0, -23308($fp)
	sw $t0, -4044($fp)
	lw $t0, -4044($fp)
	sw $t0, -23476($fp)
	li $t0, 0
	sw $t0, -23480($fp)
	li $t0, 0
	sw $t0, -23484($fp)
	li $t0, 0
	sw $t0, -23488($fp)
	li $t0, 0
	sw $t0, -23492($fp)
	lw $t0, -7488($fp)
	sw $t0, -23496($fp)
	lw $t1, -23496($fp)
	li $t2, 0
	bne $t1, $t2, label1006
	j label1004
label1006:
	lw $t0, -12972($fp)
	sw $t0, -23500($fp)
	lw $t1, -23500($fp)
	li $t2, 0
	bne $t1, $t2, label1005
	j label1004
label1005:
	li $t0, 30698
	sw $t0, -23504($fp)
	lw $t1, -23504($fp)
	li $t2, 0
	bne $t1, $t2, label1003
	j label1004
label1003:
	li $t0, 1
	sw $t0, -23492($fp)
label1004:
	li $t0, 0
	sw $t0, -23508($fp)
	lw $t0, -7260($fp)
	sw $t0, -23512($fp)
	lw $t1, -23512($fp)
	li $t2, 0
	bne $t1, $t2, label1008
	j label1009
label1009:
	lw $t0, -7140($fp)
	sw $t0, -23516($fp)
	lw $t1, -23516($fp)
	li $t2, 0
	bne $t1, $t2, label1007
	j label1008
label1007:
	li $t0, 1
	sw $t0, -23508($fp)
label1008:
	li $t0, 42211
	sw $t0, -23520($fp)
	lw $t0, -23520($fp)
	sw $t0, -7296($fp)
	lw $t0, -7296($fp)
	sw $t0, -23524($fp)
	li $t0, 0
	sw $t0, -23528($fp)
	lw $t0, -9348($fp)
	sw $t0, -23532($fp)
	lw $t1, -23532($fp)
	li $t2, 0
	bne $t1, $t2, label1010
	j label1013
label1013:
	lw $t0, -6612($fp)
	sw $t0, -23536($fp)
	lw $t1, -23536($fp)
	li $t2, 0
	bne $t1, $t2, label1010
	j label1012
label1012:
	li $t0, 24729
	sw $t0, -23540($fp)
	lw $t1, -23540($fp)
	li $t2, 0
	bne $t1, $t2, label1010
	j label1011
label1010:
	li $t0, 1
	sw $t0, -23528($fp)
label1011:
	li $t0, 0
	sw $t0, -23544($fp)
	li $t0, 0
	sw $t0, -23548($fp)
	lw $t0, -10224($fp)
	sw $t0, -23552($fp)
	li $t0, 29968
	sw $t0, -23556($fp)
	lw $t0, -23552($fp)
	lw $t1, -23556($fp)
	mul $t0, $t0, $t1
	sw $t0, -23560($fp)
	lw $t1, -23560($fp)
	li $t2, 0
	bne $t1, $t2, label1017
	j label1019
label1019:
	lw $t0, -23012($fp)
	sw $t0, -23564($fp)
	lw $t1, -23564($fp)
	li $t2, 0
	bne $t1, $t2, label1017
	j label1018
label1017:
	li $t0, 1
	sw $t0, -23548($fp)
label1018:
	li $t0, 65190
	sw $t0, -23568($fp)
	li $t0, 7343
	sw $t0, -23572($fp)
	lw $t0, -23568($fp)
	lw $t1, -23572($fp)
	mul $t0, $t0, $t1
	sw $t0, -23576($fp)
	li $t0, 0
	lw $t1, -23576($fp)
	sub $t0, $t0, $t1
	sw $t0, -23580($fp)
	li $t0, 0
	sw $t0, -23584($fp)
	lw $t0, -6600($fp)
	sw $t0, -23588($fp)
	li $t0, 0
	lw $t1, -23588($fp)
	sub $t0, $t0, $t1
	sw $t0, -23592($fp)
	lw $t1, -23592($fp)
	li $t2, 0
	bne $t1, $t2, label1022
	j label1021
label1022:
	li $t0, 58589
	sw $t0, -23596($fp)
	lw $t1, -23596($fp)
	li $t2, 0
	bne $t1, $t2, label1020
	j label1021
label1020:
	li $t0, 1
	sw $t0, -23584($fp)
label1021:
	addi $t0, $fp, -40
	sw $t0, -23600($fp)
	lw $t0, -6588($fp)
	sw $t0, -23604($fp)
	li $t0, 4
	lw $t1, -23604($fp)
	mul $t0, $t0, $t1
	sw $t0, -23608($fp)
	lw $t0, -23608($fp)
	lw $t1, -23600($fp)
	add $t0, $t0, $t1
	sw $t0, -23612($fp)
	lw $t0, -23612($fp)
	lw $t1, 0($t0)
	sw $t1, -23616($fp)
	li $t0, 0
	sw $t0, -23620($fp)
	li $t0, 14874
	sw $t0, -23624($fp)
	lw $t0, -2352($fp)
	sw $t0, -23628($fp)
	lw $t0, -23624($fp)
	lw $t1, -23628($fp)
	add $t0, $t0, $t1
	sw $t0, -23632($fp)
	li $t0, 18548
	sw $t0, -23636($fp)
	lw $t1, -23632($fp)
	lw $t2, -23636($fp)
	bne $t1, $t2, label1023
	j label1024
label1023:
	li $t0, 1
	sw $t0, -23620($fp)
label1024:
	addi $sp, $sp, -4
	lw $t0, -23548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -23580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -23584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -23616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -23620($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -23640($fp)
	addi $sp, $sp, 24
	lw $t1, -23640($fp)
	li $t2, 0
	bne $t1, $t2, label1014
	j label1016
label1016:
	li $t0, 14707
	sw $t0, -23644($fp)
	lw $t1, -23644($fp)
	li $t2, 0
	bne $t1, $t2, label1014
	j label1015
label1014:
	li $t0, 1
	sw $t0, -23544($fp)
label1015:
	addi $sp, $sp, -4
	lw $t0, -23492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -23508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -23524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -23528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -23544($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -23648($fp)
	addi $sp, $sp, 24
	lw $t1, -23648($fp)
	li $t2, 0
	bne $t1, $t2, label1002
	j label1001
label1001:
	li $t0, 1
	sw $t0, -23488($fp)
label1002:
	addi $t0, $fp, -808
	sw $t0, -23652($fp)
	li $t0, 3
	sw $t0, -23656($fp)
	li $t0, 4
	lw $t1, -23656($fp)
	mul $t0, $t0, $t1
	sw $t0, -23660($fp)
	lw $t0, -23660($fp)
	lw $t1, -23652($fp)
	add $t0, $t0, $t1
	sw $t0, -23664($fp)
	lw $t0, -23664($fp)
	lw $t1, 0($t0)
	sw $t1, -23668($fp)
	lw $t0, -5556($fp)
	sw $t0, -23672($fp)
	lw $t0, -11004($fp)
	sw $t0, -23676($fp)
	lw $t0, -23672($fp)
	lw $t1, -23676($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -23680($fp)
	li $t0, 45891
	sw $t0, -23684($fp)
	lw $t0, -23680($fp)
	lw $t1, -23684($fp)
	add $t0, $t0, $t1
	sw $t0, -23688($fp)
	li $t0, 14839
	sw $t0, -23692($fp)
	li $t0, 0
	lw $t1, -23692($fp)
	sub $t0, $t0, $t1
	sw $t0, -23696($fp)
	lw $t0, -6576($fp)
	sw $t0, -23700($fp)
	lw $t0, -23696($fp)
	lw $t1, -23700($fp)
	add $t0, $t0, $t1
	sw $t0, -23704($fp)
	li $t0, 26810
	sw $t0, -23708($fp)
	addi $sp, $sp, -4
	lw $t0, -23488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -23668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -23688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -23704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -23708($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -23712($fp)
	addi $sp, $sp, 24
	lw $t1, -23712($fp)
	li $t2, 0
	bne $t1, $t2, label1000
	j label999
label999:
	li $t0, 1
	sw $t0, -23484($fp)
label1000:
	lw $t0, -6624($fp)
	sw $t0, -23716($fp)
	li $t0, 0
	sw $t0, -23720($fp)
	addi $t0, $fp, -452
	sw $t0, -23724($fp)
	lw $t0, -6084($fp)
	sw $t0, -23728($fp)
	li $t0, 4
	lw $t1, -23728($fp)
	mul $t0, $t0, $t1
	sw $t0, -23732($fp)
	lw $t0, -23732($fp)
	lw $t1, -23724($fp)
	add $t0, $t0, $t1
	sw $t0, -23736($fp)
	lw $t0, -23736($fp)
	lw $t1, 0($t0)
	sw $t1, -23740($fp)
	li $t0, 0
	sw $t0, -23744($fp)
	lw $t0, -7236($fp)
	sw $t0, -23748($fp)
	lw $t1, -23748($fp)
	li $t2, 0
	bne $t1, $t2, label1027
	j label1029
label1029:
	lw $t0, -6684($fp)
	sw $t0, -23752($fp)
	lw $t1, -23752($fp)
	li $t2, 0
	bne $t1, $t2, label1027
	j label1028
label1027:
	li $t0, 1
	sw $t0, -23744($fp)
label1028:
	li $t0, 7304
	sw $t0, -23756($fp)
	lw $t0, -23276($fp)
	sw $t0, -23760($fp)
	lw $t0, -23756($fp)
	lw $t1, -23760($fp)
	add $t0, $t0, $t1
	sw $t0, -23764($fp)
	lw $t0, -6780($fp)
	sw $t0, -23768($fp)
	lw $t0, -23764($fp)
	lw $t1, -23768($fp)
	sub $t0, $t0, $t1
	sw $t0, -23772($fp)
	li $t0, 0
	sw $t0, -23776($fp)
	addi $t0, $fp, -924
	sw $t0, -23780($fp)
	li $t0, 7
	sw $t0, -23784($fp)
	li $t0, 4
	lw $t1, -23784($fp)
	mul $t0, $t0, $t1
	sw $t0, -23788($fp)
	lw $t0, -23788($fp)
	lw $t1, -23780($fp)
	add $t0, $t0, $t1
	sw $t0, -23792($fp)
	lw $t0, -23792($fp)
	lw $t1, 0($t0)
	sw $t1, -23796($fp)
	li $t0, 19340
	sw $t0, -23800($fp)
	lw $t1, -23796($fp)
	lw $t2, -23800($fp)
	bgt $t1, $t2, label1030
	j label1031
label1030:
	li $t0, 1
	sw $t0, -23776($fp)
label1031:
	li $t0, 0
	sw $t0, -23804($fp)
	addi $t0, $fp, -656
	sw $t0, -23808($fp)
	li $t0, 0
	sw $t0, -23812($fp)
	li $t0, 4
	lw $t1, -23812($fp)
	mul $t0, $t0, $t1
	sw $t0, -23816($fp)
	lw $t0, -23816($fp)
	lw $t1, -23808($fp)
	add $t0, $t0, $t1
	sw $t0, -23820($fp)
	lw $t0, -23820($fp)
	lw $t1, 0($t0)
	sw $t1, -23824($fp)
	lw $t1, -23824($fp)
	li $t2, 0
	bne $t1, $t2, label1034
	j label1033
label1034:
	lw $t0, -12264($fp)
	sw $t0, -23828($fp)
	lw $t1, -23828($fp)
	li $t2, 0
	bne $t1, $t2, label1032
	j label1033
label1032:
	li $t0, 1
	sw $t0, -23804($fp)
label1033:
	li $t0, 5633
	sw $t0, -23832($fp)
	lw $t0, -8436($fp)
	sw $t0, -23836($fp)
	lw $t0, -23832($fp)
	lw $t1, -23836($fp)
	mul $t0, $t0, $t1
	sw $t0, -23840($fp)
	li $t0, 43122
	sw $t0, -23844($fp)
	lw $t0, -23840($fp)
	lw $t1, -23844($fp)
	sub $t0, $t0, $t1
	sw $t0, -23848($fp)
	li $t0, 0
	sw $t0, -23852($fp)
	addi $t0, $fp, -620
	sw $t0, -23856($fp)
	lw $t0, -11052($fp)
	sw $t0, -23860($fp)
	li $t0, 4
	lw $t1, -23860($fp)
	mul $t0, $t0, $t1
	sw $t0, -23864($fp)
	lw $t0, -23864($fp)
	lw $t1, -23856($fp)
	add $t0, $t0, $t1
	sw $t0, -23868($fp)
	lw $t0, -23868($fp)
	lw $t1, 0($t0)
	sw $t1, -23872($fp)
	lw $t0, -23264($fp)
	sw $t0, -23876($fp)
	lw $t1, -23872($fp)
	lw $t2, -23876($fp)
	bne $t1, $t2, label1035
	j label1036
label1035:
	li $t0, 1
	sw $t0, -23852($fp)
label1036:
	addi $sp, $sp, -4
	lw $t0, -23772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -23776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -23804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -23848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -23852($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -23880($fp)
	addi $sp, $sp, 24
	lw $t0, -6792($fp)
	sw $t0, -23884($fp)
	lw $t0, -23880($fp)
	lw $t1, -23884($fp)
	add $t0, $t0, $t1
	sw $t0, -23888($fp)
	li $t0, 0
	sw $t0, -23892($fp)
	lw $t0, -3696($fp)
	sw $t0, -23896($fp)
	li $t0, 61007
	sw $t0, -23900($fp)
	lw $t1, -23896($fp)
	lw $t2, -23900($fp)
	ble $t1, $t2, label1039
	j label1038
label1039:
	lw $t0, -12168($fp)
	sw $t0, -23904($fp)
	lw $t1, -23904($fp)
	li $t2, 0
	bne $t1, $t2, label1037
	j label1038
label1037:
	li $t0, 1
	sw $t0, -23892($fp)
label1038:
	li $t0, 0
	sw $t0, -23908($fp)
	addi $t0, $fp, -22992
	sw $t0, -23912($fp)
	lw $t0, -3360($fp)
	sw $t0, -23916($fp)
	li $t0, 4
	lw $t1, -23916($fp)
	mul $t0, $t0, $t1
	sw $t0, -23920($fp)
	lw $t0, -23920($fp)
	lw $t1, -23912($fp)
	add $t0, $t0, $t1
	sw $t0, -23924($fp)
	lw $t0, -23924($fp)
	lw $t1, 0($t0)
	sw $t1, -23928($fp)
	lw $t1, -23928($fp)
	li $t2, 0
	bne $t1, $t2, label1042
	j label1041
label1042:
	li $t0, 10373
	sw $t0, -23932($fp)
	lw $t1, -23932($fp)
	li $t2, 0
	bne $t1, $t2, label1040
	j label1041
label1040:
	li $t0, 1
	sw $t0, -23908($fp)
label1041:
	lw $t0, -9732($fp)
	sw $t0, -23936($fp)
	li $t0, 0
	sw $t0, -23940($fp)
	lw $t0, -7212($fp)
	sw $t0, -23944($fp)
	lw $t0, -9288($fp)
	sw $t0, -23948($fp)
	lw $t0, -23944($fp)
	lw $t1, -23948($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -23952($fp)
	lw $t1, -23952($fp)
	li $t2, 0
	bne $t1, $t2, label1045
	j label1044
label1045:
	lw $t0, -6696($fp)
	sw $t0, -23956($fp)
	lw $t1, -23956($fp)
	li $t2, 0
	bne $t1, $t2, label1043
	j label1044
label1043:
	li $t0, 1
	sw $t0, -23940($fp)
label1044:
	li $t0, 0
	sw $t0, -23960($fp)
	lw $t0, -6672($fp)
	sw $t0, -23964($fp)
	li $t0, 0
	lw $t1, -23964($fp)
	sub $t0, $t0, $t1
	sw $t0, -23968($fp)
	lw $t0, -6684($fp)
	sw $t0, -23972($fp)
	lw $t1, -23968($fp)
	lw $t2, -23972($fp)
	bne $t1, $t2, label1046
	j label1047
label1046:
	li $t0, 1
	sw $t0, -23960($fp)
label1047:
	li $t0, 0
	sw $t0, -23976($fp)
	li $t0, 0
	sw $t0, -23980($fp)
	lw $t0, -6660($fp)
	sw $t0, -23984($fp)
	li $t0, 13669
	sw $t0, -23988($fp)
	lw $t1, -23984($fp)
	lw $t2, -23988($fp)
	bne $t1, $t2, label1050
	j label1051
label1050:
	li $t0, 1
	sw $t0, -23980($fp)
label1051:
	li $t0, 43782
	sw $t0, -23992($fp)
	lw $t1, -23980($fp)
	lw $t2, -23992($fp)
	bne $t1, $t2, label1048
	j label1049
label1048:
	li $t0, 1
	sw $t0, -23976($fp)
label1049:
	addi $sp, $sp, -4
	lw $t0, -23908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -23936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -23940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -23960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -23976($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -23996($fp)
	addi $sp, $sp, 24
	lw $t0, -7056($fp)
	sw $t0, -24000($fp)
	lw $t0, -23996($fp)
	lw $t1, -24000($fp)
	sub $t0, $t0, $t1
	sw $t0, -24004($fp)
	addi $sp, $sp, -4
	lw $t0, -23740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -23744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -23888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -23892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -24004($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -24008($fp)
	addi $sp, $sp, 24
	lw $t0, -11844($fp)
	sw $t0, -24012($fp)
	li $t0, 0
	sw $t0, -24016($fp)
	lw $t0, -6636($fp)
	sw $t0, -24020($fp)
	li $t0, 13420
	sw $t0, -24024($fp)
	lw $t0, -24020($fp)
	lw $t1, -24024($fp)
	sub $t0, $t0, $t1
	sw $t0, -24028($fp)
	lw $t1, -24028($fp)
	li $t2, 0
	bne $t1, $t2, label1052
	j label1054
label1054:
	lw $t0, -6648($fp)
	sw $t0, -24032($fp)
	lw $t1, -24032($fp)
	li $t2, 0
	bne $t1, $t2, label1052
	j label1053
label1052:
	li $t0, 1
	sw $t0, -24016($fp)
label1053:
	li $t0, 50164
	sw $t0, -24036($fp)
	li $t0, 0
	lw $t1, -24036($fp)
	sub $t0, $t0, $t1
	sw $t0, -24040($fp)
	li $t0, 0
	lw $t1, -24040($fp)
	sub $t0, $t0, $t1
	sw $t0, -24044($fp)
	li $t0, 0
	sw $t0, -24048($fp)
	li $t0, 29107
	sw $t0, -24052($fp)
	li $t0, 50958
	sw $t0, -24056($fp)
	lw $t1, -24052($fp)
	lw $t2, -24056($fp)
	bgt $t1, $t2, label1055
	j label1056
label1055:
	li $t0, 1
	sw $t0, -24048($fp)
label1056:
	li $t0, 39537
	sw $t0, -24060($fp)
	lw $t0, -24060($fp)
	sw $t0, -8448($fp)
	lw $t0, -8448($fp)
	sw $t0, -24064($fp)
	li $t0, 60121
	sw $t0, -24068($fp)
	li $t0, 34880
	sw $t0, -24072($fp)
	lw $t0, -24072($fp)
	sw $t0, -23036($fp)
	lw $t0, -23036($fp)
	sw $t0, -24076($fp)
	addi $sp, $sp, -4
	lw $t0, -24044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -24048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -24064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -24068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -24076($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -24080($fp)
	addi $sp, $sp, 24
	lw $t0, -23024($fp)
	sw $t0, -24084($fp)
	li $t0, 0
	lw $t1, -24084($fp)
	sub $t0, $t0, $t1
	sw $t0, -24088($fp)
	addi $sp, $sp, -4
	lw $t0, -24008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -24012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -24016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -24080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -24088($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -24092($fp)
	addi $sp, $sp, 24
	lw $t1, -24092($fp)
	li $t2, 0
	bne $t1, $t2, label1026
	j label1025
label1025:
	li $t0, 1
	sw $t0, -23720($fp)
label1026:
	lw $t0, -23716($fp)
	lw $t1, -23720($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -24096($fp)
	li $t0, 0
	lw $t1, -24096($fp)
	sub $t0, $t0, $t1
	sw $t0, -24100($fp)
	lw $t0, -23484($fp)
	lw $t1, -24100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -24104($fp)
	li $t0, 21431
	sw $t0, -24108($fp)
	lw $t1, -24104($fp)
	lw $t2, -24108($fp)
	bne $t1, $t2, label997
	j label998
label997:
	li $t0, 1
	sw $t0, -23480($fp)
label998:
	li $t0, 0
	sw $t0, -24112($fp)
	addi $t0, $fp, -652
	sw $t0, -24116($fp)
	lw $t0, -11976($fp)
	sw $t0, -24120($fp)
	li $t0, 4
	lw $t1, -24120($fp)
	mul $t0, $t0, $t1
	sw $t0, -24124($fp)
	lw $t0, -24124($fp)
	lw $t1, -24116($fp)
	add $t0, $t0, $t1
	sw $t0, -24128($fp)
	lw $t0, -24128($fp)
	lw $t1, 0($t0)
	sw $t1, -24132($fp)
	li $t0, 0
	sw $t0, -24136($fp)
	li $t0, 60227
	sw $t0, -24140($fp)
	lw $t1, -24140($fp)
	li $t2, 0
	bne $t1, $t2, label1060
	j label1059
label1059:
	li $t0, 1
	sw $t0, -24136($fp)
label1060:
	lw $t0, -24132($fp)
	lw $t1, -24136($fp)
	mul $t0, $t0, $t1
	sw $t0, -24144($fp)
	li $t0, 0
	lw $t1, -24144($fp)
	sub $t0, $t0, $t1
	sw $t0, -24148($fp)
	lw $t1, -24148($fp)
	li $t2, 0
	bne $t1, $t2, label1058
	j label1057
label1057:
	li $t0, 1
	sw $t0, -24112($fp)
label1058:
	j label816
label818:
label759:
label733:
	j label730
label729:
	addi $t0, $fp, -272
	sw $t0, -24152($fp)
	li $t0, 0
	sw $t0, -24156($fp)
	li $t0, 22179
	sw $t0, -24160($fp)
	li $t0, 39980
	sw $t0, -24164($fp)
	lw $t1, -24160($fp)
	lw $t2, -24164($fp)
	bne $t1, $t2, label1064
	j label1065
label1064:
	li $t0, 1
	sw $t0, -24156($fp)
label1065:
	li $t0, 4
	lw $t1, -24156($fp)
	mul $t0, $t0, $t1
	sw $t0, -24168($fp)
	lw $t0, -24168($fp)
	lw $t1, -24152($fp)
	add $t0, $t0, $t1
	sw $t0, -24172($fp)
	lw $t0, -24172($fp)
	lw $t1, 0($t0)
	sw $t1, -24176($fp)
	li $t0, 0
	lw $t1, -24176($fp)
	sub $t0, $t0, $t1
	sw $t0, -24180($fp)
	li $t0, 0
	sw $t0, -24184($fp)
	li $t0, 0
	sw $t0, -24188($fp)
	li $t0, 17713
	sw $t0, -24192($fp)
	lw $t0, -7020($fp)
	sw $t0, -24196($fp)
	lw $t1, -24192($fp)
	lw $t2, -24196($fp)
	bgt $t1, $t2, label1070
	j label1069
label1070:
	li $t0, 36540
	sw $t0, -24200($fp)
	lw $t1, -24200($fp)
	li $t2, 0
	bne $t1, $t2, label1068
	j label1069
label1068:
	li $t0, 1
	sw $t0, -24188($fp)
label1069:
	lw $t0, -2004($fp)
	sw $t0, -24204($fp)
	lw $t0, -24204($fp)
	sw $t0, -12048($fp)
	lw $t0, -12048($fp)
	sw $t0, -24208($fp)
	li $t0, 0
	sw $t0, -24212($fp)
	addi $t0, $fp, -656
	sw $t0, -24216($fp)
	li $t0, 0
	sw $t0, -24220($fp)
	li $t0, 4
	lw $t1, -24220($fp)
	mul $t0, $t0, $t1
	sw $t0, -24224($fp)
	lw $t0, -24224($fp)
	lw $t1, -24216($fp)
	add $t0, $t0, $t1
	sw $t0, -24228($fp)
	lw $t0, -24228($fp)
	lw $t1, 0($t0)
	sw $t1, -24232($fp)
	lw $t1, -24232($fp)
	li $t2, 0
	bne $t1, $t2, label1073
	j label1072
label1073:
	lw $t0, -9276($fp)
	sw $t0, -24236($fp)
	lw $t1, -24236($fp)
	li $t2, 0
	bne $t1, $t2, label1071
	j label1072
label1071:
	li $t0, 1
	sw $t0, -24212($fp)
label1072:
	lw $t0, -11040($fp)
	sw $t0, -24240($fp)
	li $t0, 0
	sw $t0, -24244($fp)
	li $t0, 0
	sw $t0, -24248($fp)
	li $t0, 53280
	sw $t0, -24252($fp)
	lw $t1, -24252($fp)
	li $t2, 0
	bne $t1, $t2, label1077
	j label1076
label1076:
	li $t0, 1
	sw $t0, -24248($fp)
label1077:
	lw $t0, -6144($fp)
	sw $t0, -24256($fp)
	lw $t1, -24248($fp)
	lw $t2, -24256($fp)
	beq $t1, $t2, label1074
	j label1075
label1074:
	li $t0, 1
	sw $t0, -24244($fp)
label1075:
	addi $sp, $sp, -4
	lw $t0, -24188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -24208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -24212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -24240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -24244($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -24260($fp)
	addi $sp, $sp, 24
	lw $t1, -24260($fp)
	li $t2, 0
	bne $t1, $t2, label1067
	j label1066
label1066:
	li $t0, 1
	sw $t0, -24184($fp)
label1067:
	lw $t0, -24180($fp)
	lw $t1, -24184($fp)
	add $t0, $t0, $t1
	sw $t0, -24264($fp)
	lw $t1, -24264($fp)
	li $t2, 0
	bne $t1, $t2, label1061
	j label1062
label1061:
	li $t0, 6516
	sw $t0, -24340($fp)
	addi $t0, $fp, -24300
	sw $t0, -24344($fp)
	li $t0, 0
	sw $t0, -24348($fp)
	lw $t0, -24348($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -24352($fp)
	lw $t0, -24344($fp)
	lw $t1, -24352($fp)
	add $t0, $t0, $t1
	sw $t0, -24356($fp)
	lw $t0, -24340($fp)
	lw $t1, -24356($fp)
	sw $t0, 0($t1)
	lw $t0, -24356($fp)
	lw $t1, 0($t0)
	sw $t1, -24360($fp)
	li $t0, 59924
	sw $t0, -24364($fp)
	addi $t0, $fp, -24300
	sw $t0, -24368($fp)
	li $t0, 1
	sw $t0, -24372($fp)
	lw $t0, -24372($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -24376($fp)
	lw $t0, -24368($fp)
	lw $t1, -24376($fp)
	add $t0, $t0, $t1
	sw $t0, -24380($fp)
	lw $t0, -24364($fp)
	lw $t1, -24380($fp)
	sw $t0, 0($t1)
	lw $t0, -24380($fp)
	lw $t1, 0($t0)
	sw $t1, -24384($fp)
	li $t0, 1703
	sw $t0, -24388($fp)
	addi $t0, $fp, -24300
	sw $t0, -24392($fp)
	li $t0, 2
	sw $t0, -24396($fp)
	lw $t0, -24396($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -24400($fp)
	lw $t0, -24392($fp)
	lw $t1, -24400($fp)
	add $t0, $t0, $t1
	sw $t0, -24404($fp)
	lw $t0, -24388($fp)
	lw $t1, -24404($fp)
	sw $t0, 0($t1)
	lw $t0, -24404($fp)
	lw $t1, 0($t0)
	sw $t1, -24408($fp)
	li $t0, 41397
	sw $t0, -24412($fp)
	addi $t0, $fp, -24300
	sw $t0, -24416($fp)
	li $t0, 3
	sw $t0, -24420($fp)
	lw $t0, -24420($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -24424($fp)
	lw $t0, -24416($fp)
	lw $t1, -24424($fp)
	add $t0, $t0, $t1
	sw $t0, -24428($fp)
	lw $t0, -24412($fp)
	lw $t1, -24428($fp)
	sw $t0, 0($t1)
	lw $t0, -24428($fp)
	lw $t1, 0($t0)
	sw $t1, -24432($fp)
	li $t0, 54509
	sw $t0, -24436($fp)
	addi $t0, $fp, -24300
	sw $t0, -24440($fp)
	li $t0, 4
	sw $t0, -24444($fp)
	lw $t0, -24444($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -24448($fp)
	lw $t0, -24440($fp)
	lw $t1, -24448($fp)
	add $t0, $t0, $t1
	sw $t0, -24452($fp)
	lw $t0, -24436($fp)
	lw $t1, -24452($fp)
	sw $t0, 0($t1)
	lw $t0, -24452($fp)
	lw $t1, 0($t0)
	sw $t1, -24456($fp)
	li $t0, 41240
	sw $t0, -24460($fp)
	addi $t0, $fp, -24300
	sw $t0, -24464($fp)
	li $t0, 5
	sw $t0, -24468($fp)
	lw $t0, -24468($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -24472($fp)
	lw $t0, -24464($fp)
	lw $t1, -24472($fp)
	add $t0, $t0, $t1
	sw $t0, -24476($fp)
	lw $t0, -24460($fp)
	lw $t1, -24476($fp)
	sw $t0, 0($t1)
	lw $t0, -24476($fp)
	lw $t1, 0($t0)
	sw $t1, -24480($fp)
	li $t0, 4968
	sw $t0, -24484($fp)
	addi $t0, $fp, -24300
	sw $t0, -24488($fp)
	li $t0, 6
	sw $t0, -24492($fp)
	lw $t0, -24492($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -24496($fp)
	lw $t0, -24488($fp)
	lw $t1, -24496($fp)
	add $t0, $t0, $t1
	sw $t0, -24500($fp)
	lw $t0, -24484($fp)
	lw $t1, -24500($fp)
	sw $t0, 0($t1)
	lw $t0, -24500($fp)
	lw $t1, 0($t0)
	sw $t1, -24504($fp)
	li $t0, 39931
	sw $t0, -24508($fp)
	addi $t0, $fp, -24300
	sw $t0, -24512($fp)
	li $t0, 7
	sw $t0, -24516($fp)
	lw $t0, -24516($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -24520($fp)
	lw $t0, -24512($fp)
	lw $t1, -24520($fp)
	add $t0, $t0, $t1
	sw $t0, -24524($fp)
	lw $t0, -24508($fp)
	lw $t1, -24524($fp)
	sw $t0, 0($t1)
	lw $t0, -24524($fp)
	lw $t1, 0($t0)
	sw $t1, -24528($fp)
	li $t0, 25868
	sw $t0, -24532($fp)
	addi $t0, $fp, -24300
	sw $t0, -24536($fp)
	li $t0, 8
	sw $t0, -24540($fp)
	lw $t0, -24540($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -24544($fp)
	lw $t0, -24536($fp)
	lw $t1, -24544($fp)
	add $t0, $t0, $t1
	sw $t0, -24548($fp)
	lw $t0, -24532($fp)
	lw $t1, -24548($fp)
	sw $t0, 0($t1)
	lw $t0, -24548($fp)
	lw $t1, 0($t0)
	sw $t1, -24552($fp)
	li $t0, 18389
	sw $t0, -24556($fp)
	lw $t0, -24556($fp)
	sw $t0, -24560($fp)
	lw $t0, -24560($fp)
	sw $t0, -24564($fp)
	li $t0, 53600
	sw $t0, -24568($fp)
	addi $t0, $fp, -24308
	sw $t0, -24572($fp)
	li $t0, 0
	sw $t0, -24576($fp)
	lw $t0, -24576($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -24580($fp)
	lw $t0, -24572($fp)
	lw $t1, -24580($fp)
	add $t0, $t0, $t1
	sw $t0, -24584($fp)
	lw $t0, -24568($fp)
	lw $t1, -24584($fp)
	sw $t0, 0($t1)
	lw $t0, -24584($fp)
	lw $t1, 0($t0)
	sw $t1, -24588($fp)
	li $t0, 4115
	sw $t0, -24592($fp)
	addi $t0, $fp, -24308
	sw $t0, -24596($fp)
	li $t0, 1
	sw $t0, -24600($fp)
	lw $t0, -24600($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -24604($fp)
	lw $t0, -24596($fp)
	lw $t1, -24604($fp)
	add $t0, $t0, $t1
	sw $t0, -24608($fp)
	lw $t0, -24592($fp)
	lw $t1, -24608($fp)
	sw $t0, 0($t1)
	lw $t0, -24608($fp)
	lw $t1, 0($t0)
	sw $t1, -24612($fp)
	li $t0, 28762
	sw $t0, -24616($fp)
	lw $t0, -24616($fp)
	sw $t0, -24620($fp)
	lw $t0, -24620($fp)
	sw $t0, -24624($fp)
	li $t0, 49071
	sw $t0, -24628($fp)
	lw $t0, -24628($fp)
	sw $t0, -24632($fp)
	lw $t0, -24632($fp)
	sw $t0, -24636($fp)
	li $t0, 9748
	sw $t0, -24640($fp)
	addi $t0, $fp, -24336
	sw $t0, -24644($fp)
	li $t0, 0
	sw $t0, -24648($fp)
	lw $t0, -24648($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -24652($fp)
	lw $t0, -24644($fp)
	lw $t1, -24652($fp)
	add $t0, $t0, $t1
	sw $t0, -24656($fp)
	lw $t0, -24640($fp)
	lw $t1, -24656($fp)
	sw $t0, 0($t1)
	lw $t0, -24656($fp)
	lw $t1, 0($t0)
	sw $t1, -24660($fp)
	li $t0, 6348
	sw $t0, -24664($fp)
	addi $t0, $fp, -24336
	sw $t0, -24668($fp)
	li $t0, 1
	sw $t0, -24672($fp)
	lw $t0, -24672($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -24676($fp)
	lw $t0, -24668($fp)
	lw $t1, -24676($fp)
	add $t0, $t0, $t1
	sw $t0, -24680($fp)
	lw $t0, -24664($fp)
	lw $t1, -24680($fp)
	sw $t0, 0($t1)
	lw $t0, -24680($fp)
	lw $t1, 0($t0)
	sw $t1, -24684($fp)
	li $t0, 30587
	sw $t0, -24688($fp)
	addi $t0, $fp, -24336
	sw $t0, -24692($fp)
	li $t0, 2
	sw $t0, -24696($fp)
	lw $t0, -24696($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -24700($fp)
	lw $t0, -24692($fp)
	lw $t1, -24700($fp)
	add $t0, $t0, $t1
	sw $t0, -24704($fp)
	lw $t0, -24688($fp)
	lw $t1, -24704($fp)
	sw $t0, 0($t1)
	lw $t0, -24704($fp)
	lw $t1, 0($t0)
	sw $t1, -24708($fp)
	li $t0, 14250
	sw $t0, -24712($fp)
	addi $t0, $fp, -24336
	sw $t0, -24716($fp)
	li $t0, 3
	sw $t0, -24720($fp)
	lw $t0, -24720($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -24724($fp)
	lw $t0, -24716($fp)
	lw $t1, -24724($fp)
	add $t0, $t0, $t1
	sw $t0, -24728($fp)
	lw $t0, -24712($fp)
	lw $t1, -24728($fp)
	sw $t0, 0($t1)
	lw $t0, -24728($fp)
	lw $t1, 0($t0)
	sw $t1, -24732($fp)
	li $t0, 33297
	sw $t0, -24736($fp)
	addi $t0, $fp, -24336
	sw $t0, -24740($fp)
	li $t0, 4
	sw $t0, -24744($fp)
	lw $t0, -24744($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -24748($fp)
	lw $t0, -24740($fp)
	lw $t1, -24748($fp)
	add $t0, $t0, $t1
	sw $t0, -24752($fp)
	lw $t0, -24736($fp)
	lw $t1, -24752($fp)
	sw $t0, 0($t1)
	lw $t0, -24752($fp)
	lw $t1, 0($t0)
	sw $t1, -24756($fp)
	li $t0, 38912
	sw $t0, -24760($fp)
	addi $t0, $fp, -24336
	sw $t0, -24764($fp)
	li $t0, 5
	sw $t0, -24768($fp)
	lw $t0, -24768($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -24772($fp)
	lw $t0, -24764($fp)
	lw $t1, -24772($fp)
	add $t0, $t0, $t1
	sw $t0, -24776($fp)
	lw $t0, -24760($fp)
	lw $t1, -24776($fp)
	sw $t0, 0($t1)
	lw $t0, -24776($fp)
	lw $t1, 0($t0)
	sw $t1, -24780($fp)
	li $t0, 33590
	sw $t0, -24784($fp)
	addi $t0, $fp, -24336
	sw $t0, -24788($fp)
	li $t0, 6
	sw $t0, -24792($fp)
	lw $t0, -24792($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -24796($fp)
	lw $t0, -24788($fp)
	lw $t1, -24796($fp)
	add $t0, $t0, $t1
	sw $t0, -24800($fp)
	lw $t0, -24784($fp)
	lw $t1, -24800($fp)
	sw $t0, 0($t1)
	lw $t0, -24800($fp)
	lw $t1, 0($t0)
	sw $t1, -24804($fp)
	li $t0, 40602
	sw $t0, -24808($fp)
	lw $t0, -24808($fp)
	sw $t0, -24812($fp)
	lw $t0, -24812($fp)
	sw $t0, -24816($fp)
	lw $t0, -12624($fp)
	sw $t0, -24820($fp)
	addi $t0, $fp, -24300
	sw $t0, -24824($fp)
	lw $t0, -5040($fp)
	sw $t0, -24828($fp)
	li $t0, 4
	lw $t1, -24828($fp)
	mul $t0, $t0, $t1
	sw $t0, -24832($fp)
	lw $t0, -24832($fp)
	lw $t1, -24824($fp)
	add $t0, $t0, $t1
	sw $t0, -24836($fp)
	lw $t0, -24836($fp)
	lw $t1, 0($t0)
	sw $t1, -24840($fp)
	lw $t0, -24820($fp)
	lw $t1, -24840($fp)
	sub $t0, $t0, $t1
	sw $t0, -24844($fp)
	li $t0, 0
	sw $t0, -24848($fp)
	li $t0, 60344
	sw $t0, -24852($fp)
	lw $t1, -24852($fp)
	li $t2, 0
	bne $t1, $t2, label1081
	j label1082
label1081:
	li $t0, 1
	sw $t0, -24848($fp)
label1082:
	lw $t0, -24844($fp)
	lw $t1, -24848($fp)
	sub $t0, $t0, $t1
	sw $t0, -24856($fp)
	li $t0, 0
	sw $t0, -24860($fp)
	li $t0, 28282
	sw $t0, -24864($fp)
	lw $t1, -24864($fp)
	li $t2, 0
	bne $t1, $t2, label1084
	j label1083
label1083:
	li $t0, 1
	sw $t0, -24860($fp)
label1084:
	lw $t1, -24856($fp)
	lw $t2, -24860($fp)
	ble $t1, $t2, label1078
	j label1079
label1078:
label1085:
	lw $t0, -7044($fp)
	sw $t0, -24868($fp)
	li $t0, 0
	lw $t1, -24868($fp)
	sub $t0, $t0, $t1
	sw $t0, -24872($fp)
	lw $t0, -11292($fp)
	sw $t0, -24876($fp)
	lw $t0, -24872($fp)
	lw $t1, -24876($fp)
	sub $t0, $t0, $t1
	sw $t0, -24880($fp)
	li $t0, 0
	sw $t0, -24884($fp)
	li $t0, 19078
	sw $t0, -24888($fp)
	li $t0, 0
	lw $t1, -24888($fp)
	sub $t0, $t0, $t1
	sw $t0, -24892($fp)
	li $t0, 16575
	sw $t0, -24896($fp)
	lw $t1, -24892($fp)
	lw $t2, -24896($fp)
	beq $t1, $t2, label1088
	j label1089
label1088:
	li $t0, 1
	sw $t0, -24884($fp)
label1089:
	li $t0, 0
	sw $t0, -24900($fp)
	li $t0, 0
	sw $t0, -24904($fp)
	li $t0, 34788
	sw $t0, -24908($fp)
	lw $t1, -24908($fp)
	li $t2, 0
	bne $t1, $t2, label1093
	j label1092
label1092:
	li $t0, 1
	sw $t0, -24904($fp)
label1093:
	li $t0, 16026
	sw $t0, -24912($fp)
	lw $t1, -24904($fp)
	lw $t2, -24912($fp)
	bne $t1, $t2, label1090
	j label1091
label1090:
	li $t0, 1
	sw $t0, -24900($fp)
label1091:
	lw $t0, -7032($fp)
	sw $t0, -24916($fp)
	lw $t0, -24916($fp)
	sw $t0, -24560($fp)
	lw $t0, -24560($fp)
	sw $t0, -24920($fp)
	li $t0, 0
	sw $t0, -24924($fp)
	lw $t0, -8472($fp)
	sw $t0, -24928($fp)
	lw $t1, -24928($fp)
	li $t2, 0
	bne $t1, $t2, label1097
	j label1095
label1097:
	lw $t0, -3384($fp)
	sw $t0, -24932($fp)
	lw $t1, -24932($fp)
	li $t2, 0
	bne $t1, $t2, label1096
	j label1095
label1096:
	li $t0, 62781
	sw $t0, -24936($fp)
	lw $t1, -24936($fp)
	li $t2, 0
	bne $t1, $t2, label1094
	j label1095
label1094:
	li $t0, 1
	sw $t0, -24924($fp)
label1095:
	addi $sp, $sp, -4
	lw $t0, -24880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -24884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -24900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -24920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -24924($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -24940($fp)
	addi $sp, $sp, 24
	lw $t1, -24940($fp)
	li $t2, 0
	bne $t1, $t2, label1086
	j label1087
label1086:
	lw $t0, -3360($fp)
	sw $t0, -24944($fp)
	lw $ra, -4($fp)
	lw $v0, -24944($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1085
label1087:
label1079:
label1098:
	li $t0, 33739
	sw $t0, -24948($fp)
	addi $t0, $fp, -336
	sw $t0, -24952($fp)
	li $t0, 1
	sw $t0, -24956($fp)
	li $t0, 4
	lw $t1, -24956($fp)
	mul $t0, $t0, $t1
	sw $t0, -24960($fp)
	lw $t0, -24960($fp)
	lw $t1, -24952($fp)
	add $t0, $t0, $t1
	sw $t0, -24964($fp)
	lw $t0, -24964($fp)
	lw $t1, 0($t0)
	sw $t1, -24968($fp)
	li $t0, 0
	sw $t0, -24972($fp)
	li $t0, 23092
	sw $t0, -24976($fp)
	lw $t1, -24976($fp)
	li $t2, 0
	bne $t1, $t2, label1101
	j label1104
label1104:
	li $t0, 28128
	sw $t0, -24980($fp)
	lw $t1, -24980($fp)
	li $t2, 0
	bne $t1, $t2, label1101
	j label1103
label1103:
	lw $t0, -3024($fp)
	sw $t0, -24984($fp)
	lw $t1, -24984($fp)
	li $t2, 0
	bne $t1, $t2, label1101
	j label1102
label1101:
	li $t0, 1
	sw $t0, -24972($fp)
label1102:
	li $t0, 55618
	sw $t0, -24988($fp)
	li $t0, 0
	lw $t1, -24988($fp)
	sub $t0, $t0, $t1
	sw $t0, -24992($fp)
	lw $t0, -9516($fp)
	sw $t0, -24996($fp)
	lw $t0, -24996($fp)
	sw $t0, -6336($fp)
	lw $t0, -6336($fp)
	sw $t0, -25000($fp)
	lw $t0, -13032($fp)
	sw $t0, -25004($fp)
	li $t0, 0
	lw $t1, -25004($fp)
	sub $t0, $t0, $t1
	sw $t0, -25008($fp)
	addi $sp, $sp, -4
	lw $t0, -24968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -24972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -24992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -25000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -25008($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -25012($fp)
	addi $sp, $sp, 24
	lw $t0, -24948($fp)
	lw $t1, -25012($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -25016($fp)
	addi $t0, $fp, -24308
	sw $t0, -25020($fp)
	li $t0, 0
	sw $t0, -25024($fp)
	li $t0, 4
	lw $t1, -25024($fp)
	mul $t0, $t0, $t1
	sw $t0, -25028($fp)
	lw $t0, -25028($fp)
	lw $t1, -25020($fp)
	add $t0, $t0, $t1
	sw $t0, -25032($fp)
	lw $t0, -25032($fp)
	lw $t1, 0($t0)
	sw $t1, -25036($fp)
	lw $t0, -25016($fp)
	lw $t1, -25036($fp)
	mul $t0, $t0, $t1
	sw $t0, -25040($fp)
	li $t0, 0
	lw $t1, -25040($fp)
	sub $t0, $t0, $t1
	sw $t0, -25044($fp)
	li $t0, 3921
	sw $t0, -25048($fp)
	li $t0, 57033
	sw $t0, -25052($fp)
	li $t0, 0
	lw $t1, -25052($fp)
	sub $t0, $t0, $t1
	sw $t0, -25056($fp)
	lw $t0, -25048($fp)
	lw $t1, -25056($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -25060($fp)
	lw $t1, -25044($fp)
	lw $t2, -25060($fp)
	blt $t1, $t2, label1099
	j label1100
label1099:
	li $t0, 58894
	sw $t0, -25104($fp)
	lw $t0, -25104($fp)
	sw $t0, -25108($fp)
	lw $t0, -25108($fp)
	sw $t0, -25112($fp)
	li $t0, 22310
	sw $t0, -25116($fp)
	lw $t0, -25116($fp)
	sw $t0, -25120($fp)
	lw $t0, -25120($fp)
	sw $t0, -25124($fp)
	li $t0, 45097
	sw $t0, -25128($fp)
	addi $t0, $fp, -25100
	sw $t0, -25132($fp)
	li $t0, 0
	sw $t0, -25136($fp)
	lw $t0, -25136($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -25140($fp)
	lw $t0, -25132($fp)
	lw $t1, -25140($fp)
	add $t0, $t0, $t1
	sw $t0, -25144($fp)
	lw $t0, -25128($fp)
	lw $t1, -25144($fp)
	sw $t0, 0($t1)
	lw $t0, -25144($fp)
	lw $t1, 0($t0)
	sw $t1, -25148($fp)
	li $t0, 63009
	sw $t0, -25152($fp)
	addi $t0, $fp, -25100
	sw $t0, -25156($fp)
	li $t0, 1
	sw $t0, -25160($fp)
	lw $t0, -25160($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -25164($fp)
	lw $t0, -25156($fp)
	lw $t1, -25164($fp)
	add $t0, $t0, $t1
	sw $t0, -25168($fp)
	lw $t0, -25152($fp)
	lw $t1, -25168($fp)
	sw $t0, 0($t1)
	lw $t0, -25168($fp)
	lw $t1, 0($t0)
	sw $t1, -25172($fp)
	li $t0, 51073
	sw $t0, -25176($fp)
	addi $t0, $fp, -25100
	sw $t0, -25180($fp)
	li $t0, 2
	sw $t0, -25184($fp)
	lw $t0, -25184($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -25188($fp)
	lw $t0, -25180($fp)
	lw $t1, -25188($fp)
	add $t0, $t0, $t1
	sw $t0, -25192($fp)
	lw $t0, -25176($fp)
	lw $t1, -25192($fp)
	sw $t0, 0($t1)
	lw $t0, -25192($fp)
	lw $t1, 0($t0)
	sw $t1, -25196($fp)
	li $t0, 28633
	sw $t0, -25200($fp)
	addi $t0, $fp, -25100
	sw $t0, -25204($fp)
	li $t0, 3
	sw $t0, -25208($fp)
	lw $t0, -25208($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -25212($fp)
	lw $t0, -25204($fp)
	lw $t1, -25212($fp)
	add $t0, $t0, $t1
	sw $t0, -25216($fp)
	lw $t0, -25200($fp)
	lw $t1, -25216($fp)
	sw $t0, 0($t1)
	lw $t0, -25216($fp)
	lw $t1, 0($t0)
	sw $t1, -25220($fp)
	li $t0, 7222
	sw $t0, -25224($fp)
	addi $t0, $fp, -25100
	sw $t0, -25228($fp)
	li $t0, 4
	sw $t0, -25232($fp)
	lw $t0, -25232($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -25236($fp)
	lw $t0, -25228($fp)
	lw $t1, -25236($fp)
	add $t0, $t0, $t1
	sw $t0, -25240($fp)
	lw $t0, -25224($fp)
	lw $t1, -25240($fp)
	sw $t0, 0($t1)
	lw $t0, -25240($fp)
	lw $t1, 0($t0)
	sw $t1, -25244($fp)
	li $t0, 57421
	sw $t0, -25248($fp)
	addi $t0, $fp, -25100
	sw $t0, -25252($fp)
	li $t0, 5
	sw $t0, -25256($fp)
	lw $t0, -25256($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -25260($fp)
	lw $t0, -25252($fp)
	lw $t1, -25260($fp)
	add $t0, $t0, $t1
	sw $t0, -25264($fp)
	lw $t0, -25248($fp)
	lw $t1, -25264($fp)
	sw $t0, 0($t1)
	lw $t0, -25264($fp)
	lw $t1, 0($t0)
	sw $t1, -25268($fp)
	li $t0, 59220
	sw $t0, -25272($fp)
	addi $t0, $fp, -25100
	sw $t0, -25276($fp)
	li $t0, 6
	sw $t0, -25280($fp)
	lw $t0, -25280($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -25284($fp)
	lw $t0, -25276($fp)
	lw $t1, -25284($fp)
	add $t0, $t0, $t1
	sw $t0, -25288($fp)
	lw $t0, -25272($fp)
	lw $t1, -25288($fp)
	sw $t0, 0($t1)
	lw $t0, -25288($fp)
	lw $t1, 0($t0)
	sw $t1, -25292($fp)
	li $t0, 21472
	sw $t0, -25296($fp)
	addi $t0, $fp, -25100
	sw $t0, -25300($fp)
	li $t0, 7
	sw $t0, -25304($fp)
	lw $t0, -25304($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -25308($fp)
	lw $t0, -25300($fp)
	lw $t1, -25308($fp)
	add $t0, $t0, $t1
	sw $t0, -25312($fp)
	lw $t0, -25296($fp)
	lw $t1, -25312($fp)
	sw $t0, 0($t1)
	lw $t0, -25312($fp)
	lw $t1, 0($t0)
	sw $t1, -25316($fp)
	li $t0, 25183
	sw $t0, -25320($fp)
	addi $t0, $fp, -25100
	sw $t0, -25324($fp)
	li $t0, 8
	sw $t0, -25328($fp)
	lw $t0, -25328($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -25332($fp)
	lw $t0, -25324($fp)
	lw $t1, -25332($fp)
	add $t0, $t0, $t1
	sw $t0, -25336($fp)
	lw $t0, -25320($fp)
	lw $t1, -25336($fp)
	sw $t0, 0($t1)
	lw $t0, -25336($fp)
	lw $t1, 0($t0)
	sw $t1, -25340($fp)
	li $t0, 32596
	sw $t0, -25344($fp)
	addi $t0, $fp, -25100
	sw $t0, -25348($fp)
	li $t0, 9
	sw $t0, -25352($fp)
	lw $t0, -25352($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -25356($fp)
	lw $t0, -25348($fp)
	lw $t1, -25356($fp)
	add $t0, $t0, $t1
	sw $t0, -25360($fp)
	lw $t0, -25344($fp)
	lw $t1, -25360($fp)
	sw $t0, 0($t1)
	lw $t0, -25360($fp)
	lw $t1, 0($t0)
	sw $t1, -25364($fp)
	li $t0, 55062
	sw $t0, -25368($fp)
	lw $t0, -25368($fp)
	sw $t0, -25372($fp)
	lw $t0, -25372($fp)
	sw $t0, -25376($fp)
	li $t0, 249
	sw $t0, -25380($fp)
	lw $t0, -25380($fp)
	sw $t0, -25384($fp)
	lw $t0, -25384($fp)
	sw $t0, -25388($fp)
	li $t0, 0
	sw $t0, -25392($fp)
	li $t0, 0
	sw $t0, -25396($fp)
	addi $t0, $fp, -240
	sw $t0, -25400($fp)
	lw $t0, -7056($fp)
	sw $t0, -25404($fp)
	li $t0, 4
	lw $t1, -25404($fp)
	mul $t0, $t0, $t1
	sw $t0, -25408($fp)
	lw $t0, -25408($fp)
	lw $t1, -25400($fp)
	add $t0, $t0, $t1
	sw $t0, -25412($fp)
	lw $t0, -25412($fp)
	lw $t1, 0($t0)
	sw $t1, -25416($fp)
	li $t0, 0
	lw $t1, -25416($fp)
	sub $t0, $t0, $t1
	sw $t0, -25420($fp)
	li $t0, 27404
	sw $t0, -25424($fp)
	lw $t0, -9912($fp)
	sw $t0, -25428($fp)
	lw $t0, -25424($fp)
	lw $t1, -25428($fp)
	mul $t0, $t0, $t1
	sw $t0, -25432($fp)
	lw $t0, -25420($fp)
	lw $t1, -25432($fp)
	add $t0, $t0, $t1
	sw $t0, -25436($fp)
	li $t0, 17808
	sw $t0, -25440($fp)
	lw $t1, -25436($fp)
	lw $t2, -25440($fp)
	beq $t1, $t2, label1107
	j label1108
label1107:
	li $t0, 1
	sw $t0, -25396($fp)
label1108:
	li $t0, 18326
	sw $t0, -25444($fp)
	lw $t0, -25444($fp)
	sw $t0, -7140($fp)
	lw $t0, -7140($fp)
	sw $t0, -25448($fp)
	li $t0, 38765
	sw $t0, -25452($fp)
	lw $t0, -6648($fp)
	sw $t0, -25456($fp)
	lw $t0, -25452($fp)
	lw $t1, -25456($fp)
	mul $t0, $t0, $t1
	sw $t0, -25460($fp)
	li $t0, 24824
	sw $t0, -25464($fp)
	lw $t0, -25460($fp)
	lw $t1, -25464($fp)
	add $t0, $t0, $t1
	sw $t0, -25468($fp)
	li $t0, 0
	sw $t0, -25472($fp)
	li $t0, 0
	sw $t0, -25476($fp)
	lw $t0, -25108($fp)
	sw $t0, -25480($fp)
	li $t0, 39198
	sw $t0, -25484($fp)
	lw $t1, -25480($fp)
	lw $t2, -25484($fp)
	bgt $t1, $t2, label1111
	j label1112
label1111:
	li $t0, 1
	sw $t0, -25476($fp)
label1112:
	lw $t0, -2652($fp)
	sw $t0, -25488($fp)
	lw $t1, -25476($fp)
	lw $t2, -25488($fp)
	bne $t1, $t2, label1109
	j label1110
label1109:
	li $t0, 1
	sw $t0, -25472($fp)
label1110:
	li $t0, 31466
	sw $t0, -25492($fp)
	li $t0, 0
	lw $t1, -25492($fp)
	sub $t0, $t0, $t1
	sw $t0, -25496($fp)
	li $t0, 0
	lw $t1, -25496($fp)
	sub $t0, $t0, $t1
	sw $t0, -25500($fp)
	li $t0, 0
	sw $t0, -25504($fp)
	li $t0, 63976
	sw $t0, -25508($fp)
	li $t0, 35277
	sw $t0, -25512($fp)
	lw $t0, -25508($fp)
	lw $t1, -25512($fp)
	add $t0, $t0, $t1
	sw $t0, -25516($fp)
	li $t0, 47268
	sw $t0, -25520($fp)
	lw $t1, -25516($fp)
	lw $t2, -25520($fp)
	bgt $t1, $t2, label1113
	j label1114
label1113:
	li $t0, 1
	sw $t0, -25504($fp)
label1114:
	lw $t0, -9348($fp)
	sw $t0, -25524($fp)
	lw $t0, -25524($fp)
	sw $t0, -7128($fp)
	lw $t0, -7128($fp)
	sw $t0, -25528($fp)
	addi $sp, $sp, -4
	lw $t0, -25468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -25472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -25500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -25504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -25528($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -25532($fp)
	addi $sp, $sp, 24
	li $t0, 61509
	sw $t0, -25536($fp)
	lw $t0, -25532($fp)
	lw $t1, -25536($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -25540($fp)
	li $t0, 0
	sw $t0, -25544($fp)
	lw $t0, -12072($fp)
	sw $t0, -25548($fp)
	li $t0, 0
	lw $t1, -25548($fp)
	sub $t0, $t0, $t1
	sw $t0, -25552($fp)
	li $t0, 30166
	sw $t0, -25556($fp)
	lw $t1, -25552($fp)
	lw $t2, -25556($fp)
	bgt $t1, $t2, label1115
	j label1116
label1115:
	li $t0, 1
	sw $t0, -25544($fp)
label1116:
	li $t0, 0
	sw $t0, -25560($fp)
	lw $t0, -3600($fp)
	sw $t0, -25564($fp)
	li $t0, 36324
	sw $t0, -25568($fp)
	lw $t1, -25564($fp)
	lw $t2, -25568($fp)
	blt $t1, $t2, label1119
	j label1118
label1119:
	lw $t0, -2688($fp)
	sw $t0, -25572($fp)
	lw $t1, -25572($fp)
	li $t2, 0
	bne $t1, $t2, label1117
	j label1118
label1117:
	li $t0, 1
	sw $t0, -25560($fp)
label1118:
	li $t0, 0
	sw $t0, -25576($fp)
	li $t0, 13232
	sw $t0, -25580($fp)
	li $t0, 2038
	sw $t0, -25584($fp)
	lw $t0, -25580($fp)
	lw $t1, -25584($fp)
	sub $t0, $t0, $t1
	sw $t0, -25588($fp)
	li $t0, 6654
	sw $t0, -25592($fp)
	lw $t1, -25588($fp)
	lw $t2, -25592($fp)
	bge $t1, $t2, label1120
	j label1121
label1120:
	li $t0, 1
	sw $t0, -25576($fp)
label1121:
	li $t0, 16572
	sw $t0, -25596($fp)
	lw $t0, -12204($fp)
	sw $t0, -25600($fp)
	lw $t0, -25596($fp)
	lw $t1, -25600($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -25604($fp)
	lw $t0, -7104($fp)
	sw $t0, -25608($fp)
	li $t0, 0
	sw $t0, -25612($fp)
	li $t0, 62192
	sw $t0, -25616($fp)
	li $t0, 33835
	sw $t0, -25620($fp)
	lw $t0, -25616($fp)
	lw $t1, -25620($fp)
	add $t0, $t0, $t1
	sw $t0, -25624($fp)
	lw $t0, -7092($fp)
	sw $t0, -25628($fp)
	lw $t1, -25624($fp)
	lw $t2, -25628($fp)
	bne $t1, $t2, label1122
	j label1123
label1122:
	li $t0, 1
	sw $t0, -25612($fp)
label1123:
	addi $sp, $sp, -4
	lw $t0, -25560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -25576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -25604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -25608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -25612($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -25632($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -25632($fp)
	sub $t0, $t0, $t1
	sw $t0, -25636($fp)
	lw $t0, -10212($fp)
	sw $t0, -25640($fp)
	lw $t0, -7080($fp)
	sw $t0, -25644($fp)
	lw $t0, -25644($fp)
	sw $t0, -24620($fp)
	lw $t0, -24620($fp)
	sw $t0, -25648($fp)
	li $t0, 63030
	sw $t0, -25652($fp)
	lw $t0, -10704($fp)
	sw $t0, -25656($fp)
	addi $sp, $sp, -4
	lw $t0, -25636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -25640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -25648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -25652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -25656($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -25660($fp)
	addi $sp, $sp, 24
	lw $t0, -7116($fp)
	sw $t0, -25664($fp)
	lw $t0, -25660($fp)
	lw $t1, -25664($fp)
	mul $t0, $t0, $t1
	sw $t0, -25668($fp)
	addi $t0, $fp, -1240
	sw $t0, -25672($fp)
	lw $t0, -7068($fp)
	sw $t0, -25676($fp)
	li $t0, 4
	lw $t1, -25676($fp)
	mul $t0, $t0, $t1
	sw $t0, -25680($fp)
	lw $t0, -25680($fp)
	lw $t1, -25672($fp)
	add $t0, $t0, $t1
	sw $t0, -25684($fp)
	lw $t0, -25684($fp)
	lw $t1, 0($t0)
	sw $t1, -25688($fp)
	li $t0, 0
	lw $t1, -25688($fp)
	sub $t0, $t0, $t1
	sw $t0, -25692($fp)
	addi $sp, $sp, -4
	lw $t0, -25448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -25540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -25544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -25668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -25692($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -25696($fp)
	addi $sp, $sp, 24
	lw $t0, -13056($fp)
	sw $t0, -25700($fp)
	li $t0, 22298
	sw $t0, -25704($fp)
	lw $t0, -25700($fp)
	lw $t1, -25704($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -25708($fp)
	lw $t0, -25696($fp)
	lw $t1, -25708($fp)
	sub $t0, $t0, $t1
	sw $t0, -25712($fp)
	lw $t1, -25396($fp)
	lw $t2, -25712($fp)
	beq $t1, $t2, label1105
	j label1106
label1105:
	li $t0, 1
	sw $t0, -25392($fp)
label1106:
	li $t0, 50992
	sw $t0, -25716($fp)
	li $t0, 0
	sw $t0, -25720($fp)
	li $t0, 38931
	sw $t0, -25724($fp)
	lw $t0, -25120($fp)
	sw $t0, -25728($fp)
	lw $t0, -25724($fp)
	lw $t1, -25728($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -25732($fp)
	li $t0, 40643
	sw $t0, -25736($fp)
	lw $t1, -25732($fp)
	lw $t2, -25736($fp)
	ble $t1, $t2, label1124
	j label1125
label1124:
	li $t0, 1
	sw $t0, -25720($fp)
label1125:
	addi $t0, $fp, -172
	sw $t0, -25740($fp)
	lw $t0, -7152($fp)
	sw $t0, -25744($fp)
	li $t0, 4
	lw $t1, -25744($fp)
	mul $t0, $t0, $t1
	sw $t0, -25748($fp)
	lw $t0, -25748($fp)
	lw $t1, -25740($fp)
	add $t0, $t0, $t1
	sw $t0, -25752($fp)
	lw $t0, -25752($fp)
	lw $t1, 0($t0)
	sw $t1, -25756($fp)
	lw $t0, -3012($fp)
	sw $t0, -25760($fp)
	li $t0, 46959
	sw $t0, -25764($fp)
	lw $t0, -25760($fp)
	lw $t1, -25764($fp)
	sub $t0, $t0, $t1
	sw $t0, -25768($fp)
	li $t0, 29520
	sw $t0, -25772($fp)
	lw $t0, -25768($fp)
	lw $t1, -25772($fp)
	sub $t0, $t0, $t1
	sw $t0, -25776($fp)
	li $t0, 0
	sw $t0, -25780($fp)
	li $t0, 47046
	sw $t0, -25784($fp)
	lw $t0, -9528($fp)
	sw $t0, -25788($fp)
	lw $t0, -25784($fp)
	lw $t1, -25788($fp)
	add $t0, $t0, $t1
	sw $t0, -25792($fp)
	lw $t1, -25792($fp)
	li $t2, 0
	bne $t1, $t2, label1128
	j label1127
label1128:
	lw $t0, -9504($fp)
	sw $t0, -25796($fp)
	lw $t1, -25796($fp)
	li $t2, 0
	bne $t1, $t2, label1126
	j label1127
label1126:
	li $t0, 1
	sw $t0, -25780($fp)
label1127:
	addi $sp, $sp, -4
	lw $t0, -25716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -25720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -25756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -25776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -25780($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -25800($fp)
	addi $sp, $sp, 24
	li $t0, 64114
	sw $t0, -25804($fp)
	li $t0, 0
	sw $t0, -25808($fp)
	li $t0, 20697
	sw $t0, -25812($fp)
	lw $t1, -25812($fp)
	li $t2, 0
	bne $t1, $t2, label1130
	j label1129
label1129:
	li $t0, 1
	sw $t0, -25808($fp)
label1130:
	li $t0, 8742
	sw $t0, -25816($fp)
	lw $t0, -25816($fp)
	sw $t0, -7260($fp)
	lw $t0, -7260($fp)
	sw $t0, -25820($fp)
	li $t0, 0
	sw $t0, -25824($fp)
	li $t0, 13792
	sw $t0, -25828($fp)
	lw $t1, -25828($fp)
	li $t2, 0
	bne $t1, $t2, label1133
	j label1131
label1133:
	lw $t0, -7248($fp)
	sw $t0, -25832($fp)
	lw $t1, -25832($fp)
	li $t2, 0
	bne $t1, $t2, label1131
	j label1132
label1131:
	li $t0, 1
	sw $t0, -25824($fp)
label1132:
	addi $t0, $fp, -672
	sw $t0, -25836($fp)
	lw $t0, -6792($fp)
	sw $t0, -25840($fp)
	li $t0, 4
	lw $t1, -25840($fp)
	mul $t0, $t0, $t1
	sw $t0, -25844($fp)
	lw $t0, -25844($fp)
	lw $t1, -25836($fp)
	add $t0, $t0, $t1
	sw $t0, -25848($fp)
	lw $t0, -25848($fp)
	lw $t1, 0($t0)
	sw $t1, -25852($fp)
	li $t0, 0
	lw $t1, -25852($fp)
	sub $t0, $t0, $t1
	sw $t0, -25856($fp)
	li $t0, 24724
	sw $t0, -25860($fp)
	addi $sp, $sp, -4
	lw $t0, -25808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -25820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -25824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -25856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -25860($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -25864($fp)
	addi $sp, $sp, 24
	li $t0, 49454
	sw $t0, -25868($fp)
	lw $t0, -25868($fp)
	sw $t0, -12204($fp)
	lw $t0, -12204($fp)
	sw $t0, -25872($fp)
	li $t0, 40563
	sw $t0, -25876($fp)
	lw $t0, -6144($fp)
	sw $t0, -25880($fp)
	lw $t0, -25876($fp)
	lw $t1, -25880($fp)
	mul $t0, $t0, $t1
	sw $t0, -25884($fp)
	li $t0, 0
	sw $t0, -25888($fp)
	lw $t0, -25372($fp)
	sw $t0, -25892($fp)
	lw $t0, -25384($fp)
	sw $t0, -25896($fp)
	lw $t1, -25892($fp)
	lw $t2, -25896($fp)
	bgt $t1, $t2, label1134
	j label1135
label1134:
	li $t0, 1
	sw $t0, -25888($fp)
label1135:
	li $t0, 0
	sw $t0, -25900($fp)
	lw $t0, -7236($fp)
	sw $t0, -25904($fp)
	lw $t1, -25904($fp)
	li $t2, 0
	bne $t1, $t2, label1136
	j label1137
label1136:
	li $t0, 1
	sw $t0, -25900($fp)
label1137:
	addi $sp, $sp, -4
	lw $t0, -25864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -25872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -25884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -25888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -25900($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -25908($fp)
	addi $sp, $sp, 24
	lw $t0, -7224($fp)
	sw $t0, -25912($fp)
	lw $t0, -25912($fp)
	sw $t0, -12120($fp)
	lw $t0, -12120($fp)
	sw $t0, -25916($fp)
	addi $t0, $fp, -572
	sw $t0, -25920($fp)
	lw $t0, -9264($fp)
	sw $t0, -25924($fp)
	li $t0, 4
	lw $t1, -25924($fp)
	mul $t0, $t0, $t1
	sw $t0, -25928($fp)
	lw $t0, -25928($fp)
	lw $t1, -25920($fp)
	add $t0, $t0, $t1
	sw $t0, -25932($fp)
	lw $t0, -25932($fp)
	lw $t1, 0($t0)
	sw $t1, -25936($fp)
	li $t0, 0
	sw $t0, -25940($fp)
	li $t0, 0
	sw $t0, -25944($fp)
	li $t0, 15785
	sw $t0, -25948($fp)
	li $t0, 58831
	sw $t0, -25952($fp)
	lw $t0, -25948($fp)
	lw $t1, -25952($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -25956($fp)
	lw $t1, -25956($fp)
	li $t2, 0
	bne $t1, $t2, label1141
	j label1143
label1143:
	li $t0, 17988
	sw $t0, -25960($fp)
	lw $t1, -25960($fp)
	li $t2, 0
	bne $t1, $t2, label1141
	j label1142
label1141:
	li $t0, 1
	sw $t0, -25944($fp)
label1142:
	lw $t0, -7200($fp)
	sw $t0, -25964($fp)
	lw $t0, -7212($fp)
	sw $t0, -25968($fp)
	lw $t0, -25964($fp)
	lw $t1, -25968($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -25972($fp)
	li $t0, 0
	sw $t0, -25976($fp)
	li $t0, 0
	sw $t0, -25980($fp)
	li $t0, 28664
	sw $t0, -25984($fp)
	lw $t0, -6336($fp)
	sw $t0, -25988($fp)
	lw $t1, -25984($fp)
	lw $t2, -25988($fp)
	bgt $t1, $t2, label1146
	j label1147
label1146:
	li $t0, 1
	sw $t0, -25980($fp)
label1147:
	li $t0, 19548
	sw $t0, -25992($fp)
	lw $t1, -25980($fp)
	lw $t2, -25992($fp)
	bne $t1, $t2, label1144
	j label1145
label1144:
	li $t0, 1
	sw $t0, -25976($fp)
label1145:
	li $t0, 44997
	sw $t0, -25996($fp)
	lw $t0, -25996($fp)
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	sw $t0, -26000($fp)
	li $t0, 0
	sw $t0, -26004($fp)
	li $t0, 12893
	sw $t0, -26008($fp)
	lw $t0, -11952($fp)
	sw $t0, -26012($fp)
	lw $t1, -26008($fp)
	lw $t2, -26012($fp)
	blt $t1, $t2, label1148
	j label1150
label1150:
	lw $t0, -3360($fp)
	sw $t0, -26016($fp)
	lw $t1, -26016($fp)
	li $t2, 0
	bne $t1, $t2, label1148
	j label1149
label1148:
	li $t0, 1
	sw $t0, -26004($fp)
label1149:
	addi $sp, $sp, -4
	lw $t0, -25944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -25972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -25976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -26000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -26004($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -26020($fp)
	addi $sp, $sp, 24
	lw $t1, -26020($fp)
	li $t2, 0
	bne $t1, $t2, label1138
	j label1140
label1140:
	lw $t0, -8460($fp)
	sw $t0, -26024($fp)
	lw $t1, -26024($fp)
	li $t2, 0
	bne $t1, $t2, label1138
	j label1139
label1138:
	li $t0, 1
	sw $t0, -25940($fp)
label1139:
	lw $t0, -12108($fp)
	sw $t0, -26028($fp)
	lw $t0, -26028($fp)
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	sw $t0, -26032($fp)
	li $t0, 0
	sw $t0, -26036($fp)
	li $t0, 61857
	sw $t0, -26040($fp)
	li $t0, 31765
	sw $t0, -26044($fp)
	lw $t1, -26040($fp)
	lw $t2, -26044($fp)
	beq $t1, $t2, label1153
	j label1152
label1153:
	li $t0, 26626
	sw $t0, -26048($fp)
	lw $t1, -26048($fp)
	li $t2, 0
	bne $t1, $t2, label1151
	j label1152
label1151:
	li $t0, 1
	sw $t0, -26036($fp)
label1152:
	li $t0, 0
	sw $t0, -26052($fp)
	lw $t0, -9900($fp)
	sw $t0, -26056($fp)
	li $t0, 0
	lw $t1, -26056($fp)
	sub $t0, $t0, $t1
	sw $t0, -26060($fp)
	li $t0, 58327
	sw $t0, -26064($fp)
	lw $t1, -26060($fp)
	lw $t2, -26064($fp)
	bgt $t1, $t2, label1154
	j label1155
label1154:
	li $t0, 1
	sw $t0, -26052($fp)
label1155:
	li $t0, 0
	sw $t0, -26068($fp)
	lw $t0, -2016($fp)
	sw $t0, -26072($fp)
	lw $t1, -26072($fp)
	li $t2, 0
	bne $t1, $t2, label1159
	j label1158
label1159:
	lw $t0, -12132($fp)
	sw $t0, -26076($fp)
	lw $t1, -26076($fp)
	li $t2, 0
	bne $t1, $t2, label1156
	j label1158
label1158:
	li $t0, 35108
	sw $t0, -26080($fp)
	lw $t1, -26080($fp)
	li $t2, 0
	bne $t1, $t2, label1156
	j label1157
label1156:
	li $t0, 1
	sw $t0, -26068($fp)
label1157:
	addi $sp, $sp, -4
	lw $t0, -25940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -26032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -26036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -26052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -26068($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -26084($fp)
	addi $sp, $sp, 24
	li $t0, 51062
	sw $t0, -26088($fp)
	lw $t0, -26084($fp)
	lw $t1, -26088($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -26092($fp)
	li $t0, 0
	sw $t0, -26096($fp)
	lw $t0, -5136($fp)
	sw $t0, -26100($fp)
	lw $t1, -26100($fp)
	li $t2, 0
	bne $t1, $t2, label1161
	j label1162
label1162:
	lw $t0, -7188($fp)
	sw $t0, -26104($fp)
	lw $t1, -26104($fp)
	li $t2, 0
	bne $t1, $t2, label1160
	j label1161
label1160:
	li $t0, 1
	sw $t0, -26096($fp)
label1161:
	addi $t0, $fp, -25100
	sw $t0, -26108($fp)
	lw $t0, -7176($fp)
	sw $t0, -26112($fp)
	li $t0, 4
	lw $t1, -26112($fp)
	mul $t0, $t0, $t1
	sw $t0, -26116($fp)
	lw $t0, -26116($fp)
	lw $t1, -26108($fp)
	add $t0, $t0, $t1
	sw $t0, -26120($fp)
	lw $t0, -26120($fp)
	lw $t1, 0($t0)
	sw $t1, -26124($fp)
	lw $t0, -6312($fp)
	sw $t0, -26128($fp)
	lw $t0, -26128($fp)
	sw $t0, -9300($fp)
	lw $t0, -9300($fp)
	sw $t0, -26132($fp)
	lw $t0, -13056($fp)
	sw $t0, -26136($fp)
	li $t0, 40518
	sw $t0, -26140($fp)
	lw $t0, -26136($fp)
	lw $t1, -26140($fp)
	mul $t0, $t0, $t1
	sw $t0, -26144($fp)
	lw $t0, -7164($fp)
	sw $t0, -26148($fp)
	lw $t0, -26144($fp)
	lw $t1, -26148($fp)
	mul $t0, $t0, $t1
	sw $t0, -26152($fp)
	li $t0, 7704
	sw $t0, -26156($fp)
	addi $sp, $sp, -4
	lw $t0, -26096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -26124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -26132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -26152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -26156($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -26160($fp)
	addi $sp, $sp, 24
	li $t0, 64363
	sw $t0, -26164($fp)
	lw $t0, -26160($fp)
	lw $t1, -26164($fp)
	add $t0, $t0, $t1
	sw $t0, -26168($fp)
	addi $sp, $sp, -4
	lw $t0, -25908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -25916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -25936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -26092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -26168($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -26172($fp)
	addi $sp, $sp, 24
	lw $t0, -25804($fp)
	lw $t1, -26172($fp)
	sub $t0, $t0, $t1
	sw $t0, -26176($fp)
	j label1098
label1100:
	li $t0, 32118
	sw $t0, -26180($fp)
	li $t0, 0
	lw $t1, -26180($fp)
	sub $t0, $t0, $t1
	sw $t0, -26184($fp)
	li $t0, 0
	sw $t0, -26188($fp)
	lw $t0, -12036($fp)
	sw $t0, -26192($fp)
	lw $t1, -26192($fp)
	li $t2, 0
	bne $t1, $t2, label1164
	j label1163
label1163:
	li $t0, 1
	sw $t0, -26188($fp)
label1164:
	lw $t0, -26184($fp)
	lw $t1, -26188($fp)
	add $t0, $t0, $t1
	sw $t0, -26196($fp)
	li $t0, 31040
	sw $t0, -26200($fp)
	li $t0, 2207
	sw $t0, -26204($fp)
	lw $t0, -26200($fp)
	lw $t1, -26204($fp)
	mul $t0, $t0, $t1
	sw $t0, -26208($fp)
	lw $t0, -26196($fp)
	lw $t1, -26208($fp)
	sub $t0, $t0, $t1
	sw $t0, -26212($fp)
	li $t0, 0
	sw $t0, -26216($fp)
	lw $t0, -7272($fp)
	sw $t0, -26220($fp)
	lw $t0, -6576($fp)
	sw $t0, -26224($fp)
	lw $t0, -26220($fp)
	lw $t1, -26224($fp)
	mul $t0, $t0, $t1
	sw $t0, -26228($fp)
	li $t0, 13542
	sw $t0, -26232($fp)
	addi $t0, $fp, -200
	sw $t0, -26236($fp)
	li $t0, 0
	sw $t0, -26240($fp)
	li $t0, 4
	lw $t1, -26240($fp)
	mul $t0, $t0, $t1
	sw $t0, -26244($fp)
	lw $t0, -26244($fp)
	lw $t1, -26236($fp)
	add $t0, $t0, $t1
	sw $t0, -26248($fp)
	lw $t0, -26248($fp)
	lw $t1, 0($t0)
	sw $t1, -26252($fp)
	lw $t0, -26232($fp)
	lw $t1, -26252($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -26256($fp)
	li $t0, 0
	lw $t1, -26256($fp)
	sub $t0, $t0, $t1
	sw $t0, -26260($fp)
	lw $t0, -26228($fp)
	lw $t1, -26260($fp)
	mul $t0, $t0, $t1
	sw $t0, -26264($fp)
	li $t0, 0
	sw $t0, -26268($fp)
	li $t0, 0
	sw $t0, -26272($fp)
	lw $t0, -2880($fp)
	sw $t0, -26276($fp)
	lw $t1, -26276($fp)
	li $t2, 0
	bne $t1, $t2, label1172
	j label1171
label1172:
	lw $t0, -12048($fp)
	sw $t0, -26280($fp)
	lw $t1, -26280($fp)
	li $t2, 0
	bne $t1, $t2, label1169
	j label1171
label1171:
	lw $t0, -7320($fp)
	sw $t0, -26284($fp)
	lw $t1, -26284($fp)
	li $t2, 0
	bne $t1, $t2, label1169
	j label1170
label1169:
	li $t0, 1
	sw $t0, -26272($fp)
label1170:
	li $t0, 0
	sw $t0, -26288($fp)
	li $t0, 46016
	sw $t0, -26292($fp)
	li $t0, 39717
	sw $t0, -26296($fp)
	lw $t0, -26292($fp)
	lw $t1, -26296($fp)
	add $t0, $t0, $t1
	sw $t0, -26300($fp)
	lw $t0, -24632($fp)
	sw $t0, -26304($fp)
	lw $t1, -26300($fp)
	lw $t2, -26304($fp)
	beq $t1, $t2, label1173
	j label1174
label1173:
	li $t0, 1
	sw $t0, -26288($fp)
label1174:
	li $t0, 0
	sw $t0, -26308($fp)
	lw $t0, -7020($fp)
	sw $t0, -26312($fp)
	lw $t0, -6792($fp)
	sw $t0, -26316($fp)
	lw $t0, -26312($fp)
	lw $t1, -26316($fp)
	mul $t0, $t0, $t1
	sw $t0, -26320($fp)
	lw $t0, -9912($fp)
	sw $t0, -26324($fp)
	lw $t1, -26320($fp)
	lw $t2, -26324($fp)
	ble $t1, $t2, label1175
	j label1176
label1175:
	li $t0, 1
	sw $t0, -26308($fp)
label1176:
	lw $t0, -7308($fp)
	sw $t0, -26328($fp)
	lw $t0, -26328($fp)
	sw $t0, -7296($fp)
	lw $t0, -7296($fp)
	sw $t0, -26332($fp)
	li $t0, 54185
	sw $t0, -26336($fp)
	lw $t0, -26336($fp)
	sw $t0, -7284($fp)
	lw $t0, -7284($fp)
	sw $t0, -26340($fp)
	addi $sp, $sp, -4
	lw $t0, -26272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -26288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -26308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -26332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -26340($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -26344($fp)
	addi $sp, $sp, 24
	lw $t1, -26344($fp)
	li $t2, 0
	bne $t1, $t2, label1168
	j label1167
label1167:
	li $t0, 1
	sw $t0, -26268($fp)
label1168:
	lw $t1, -26264($fp)
	lw $t2, -26268($fp)
	bgt $t1, $t2, label1165
	j label1166
label1165:
	li $t0, 1
	sw $t0, -26216($fp)
label1166:
	addi $t0, $fp, -24300
	sw $t0, -26348($fp)
	li $t0, 0
	sw $t0, -26352($fp)
	li $t0, 4
	lw $t1, -26352($fp)
	mul $t0, $t0, $t1
	sw $t0, -26356($fp)
	lw $t0, -26356($fp)
	lw $t1, -26348($fp)
	add $t0, $t0, $t1
	sw $t0, -26360($fp)
	lw $t0, -26360($fp)
	lw $t1, 0($t0)
	sw $t1, -26364($fp)
	lw $t0, -26364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24300
	sw $t0, -26368($fp)
	li $t0, 1
	sw $t0, -26372($fp)
	li $t0, 4
	lw $t1, -26372($fp)
	mul $t0, $t0, $t1
	sw $t0, -26376($fp)
	lw $t0, -26376($fp)
	lw $t1, -26368($fp)
	add $t0, $t0, $t1
	sw $t0, -26380($fp)
	lw $t0, -26380($fp)
	lw $t1, 0($t0)
	sw $t1, -26384($fp)
	lw $t0, -26384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24300
	sw $t0, -26388($fp)
	li $t0, 2
	sw $t0, -26392($fp)
	li $t0, 4
	lw $t1, -26392($fp)
	mul $t0, $t0, $t1
	sw $t0, -26396($fp)
	lw $t0, -26396($fp)
	lw $t1, -26388($fp)
	add $t0, $t0, $t1
	sw $t0, -26400($fp)
	lw $t0, -26400($fp)
	lw $t1, 0($t0)
	sw $t1, -26404($fp)
	lw $t0, -26404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24300
	sw $t0, -26408($fp)
	li $t0, 3
	sw $t0, -26412($fp)
	li $t0, 4
	lw $t1, -26412($fp)
	mul $t0, $t0, $t1
	sw $t0, -26416($fp)
	lw $t0, -26416($fp)
	lw $t1, -26408($fp)
	add $t0, $t0, $t1
	sw $t0, -26420($fp)
	lw $t0, -26420($fp)
	lw $t1, 0($t0)
	sw $t1, -26424($fp)
	lw $t0, -26424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24300
	sw $t0, -26428($fp)
	li $t0, 4
	sw $t0, -26432($fp)
	li $t0, 4
	lw $t1, -26432($fp)
	mul $t0, $t0, $t1
	sw $t0, -26436($fp)
	lw $t0, -26436($fp)
	lw $t1, -26428($fp)
	add $t0, $t0, $t1
	sw $t0, -26440($fp)
	lw $t0, -26440($fp)
	lw $t1, 0($t0)
	sw $t1, -26444($fp)
	lw $t0, -26444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24300
	sw $t0, -26448($fp)
	li $t0, 5
	sw $t0, -26452($fp)
	li $t0, 4
	lw $t1, -26452($fp)
	mul $t0, $t0, $t1
	sw $t0, -26456($fp)
	lw $t0, -26456($fp)
	lw $t1, -26448($fp)
	add $t0, $t0, $t1
	sw $t0, -26460($fp)
	lw $t0, -26460($fp)
	lw $t1, 0($t0)
	sw $t1, -26464($fp)
	lw $t0, -26464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24300
	sw $t0, -26468($fp)
	li $t0, 6
	sw $t0, -26472($fp)
	li $t0, 4
	lw $t1, -26472($fp)
	mul $t0, $t0, $t1
	sw $t0, -26476($fp)
	lw $t0, -26476($fp)
	lw $t1, -26468($fp)
	add $t0, $t0, $t1
	sw $t0, -26480($fp)
	lw $t0, -26480($fp)
	lw $t1, 0($t0)
	sw $t1, -26484($fp)
	lw $t0, -26484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24300
	sw $t0, -26488($fp)
	li $t0, 7
	sw $t0, -26492($fp)
	li $t0, 4
	lw $t1, -26492($fp)
	mul $t0, $t0, $t1
	sw $t0, -26496($fp)
	lw $t0, -26496($fp)
	lw $t1, -26488($fp)
	add $t0, $t0, $t1
	sw $t0, -26500($fp)
	lw $t0, -26500($fp)
	lw $t1, 0($t0)
	sw $t1, -26504($fp)
	lw $t0, -26504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24300
	sw $t0, -26508($fp)
	li $t0, 8
	sw $t0, -26512($fp)
	li $t0, 4
	lw $t1, -26512($fp)
	mul $t0, $t0, $t1
	sw $t0, -26516($fp)
	lw $t0, -26516($fp)
	lw $t1, -26508($fp)
	add $t0, $t0, $t1
	sw $t0, -26520($fp)
	lw $t0, -26520($fp)
	lw $t1, 0($t0)
	sw $t1, -26524($fp)
	lw $t0, -26524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24560($fp)
	sw $t0, -26528($fp)
	lw $t0, -26528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24308
	sw $t0, -26532($fp)
	li $t0, 0
	sw $t0, -26536($fp)
	li $t0, 4
	lw $t1, -26536($fp)
	mul $t0, $t0, $t1
	sw $t0, -26540($fp)
	lw $t0, -26540($fp)
	lw $t1, -26532($fp)
	add $t0, $t0, $t1
	sw $t0, -26544($fp)
	lw $t0, -26544($fp)
	lw $t1, 0($t0)
	sw $t1, -26548($fp)
	lw $t0, -26548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24308
	sw $t0, -26552($fp)
	li $t0, 1
	sw $t0, -26556($fp)
	li $t0, 4
	lw $t1, -26556($fp)
	mul $t0, $t0, $t1
	sw $t0, -26560($fp)
	lw $t0, -26560($fp)
	lw $t1, -26552($fp)
	add $t0, $t0, $t1
	sw $t0, -26564($fp)
	lw $t0, -26564($fp)
	lw $t1, 0($t0)
	sw $t1, -26568($fp)
	lw $t0, -26568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24620($fp)
	sw $t0, -26572($fp)
	lw $t0, -26572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24632($fp)
	sw $t0, -26576($fp)
	lw $t0, -26576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24336
	sw $t0, -26580($fp)
	li $t0, 0
	sw $t0, -26584($fp)
	li $t0, 4
	lw $t1, -26584($fp)
	mul $t0, $t0, $t1
	sw $t0, -26588($fp)
	lw $t0, -26588($fp)
	lw $t1, -26580($fp)
	add $t0, $t0, $t1
	sw $t0, -26592($fp)
	lw $t0, -26592($fp)
	lw $t1, 0($t0)
	sw $t1, -26596($fp)
	lw $t0, -26596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24336
	sw $t0, -26600($fp)
	li $t0, 1
	sw $t0, -26604($fp)
	li $t0, 4
	lw $t1, -26604($fp)
	mul $t0, $t0, $t1
	sw $t0, -26608($fp)
	lw $t0, -26608($fp)
	lw $t1, -26600($fp)
	add $t0, $t0, $t1
	sw $t0, -26612($fp)
	lw $t0, -26612($fp)
	lw $t1, 0($t0)
	sw $t1, -26616($fp)
	lw $t0, -26616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24336
	sw $t0, -26620($fp)
	li $t0, 2
	sw $t0, -26624($fp)
	li $t0, 4
	lw $t1, -26624($fp)
	mul $t0, $t0, $t1
	sw $t0, -26628($fp)
	lw $t0, -26628($fp)
	lw $t1, -26620($fp)
	add $t0, $t0, $t1
	sw $t0, -26632($fp)
	lw $t0, -26632($fp)
	lw $t1, 0($t0)
	sw $t1, -26636($fp)
	lw $t0, -26636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24336
	sw $t0, -26640($fp)
	li $t0, 3
	sw $t0, -26644($fp)
	li $t0, 4
	lw $t1, -26644($fp)
	mul $t0, $t0, $t1
	sw $t0, -26648($fp)
	lw $t0, -26648($fp)
	lw $t1, -26640($fp)
	add $t0, $t0, $t1
	sw $t0, -26652($fp)
	lw $t0, -26652($fp)
	lw $t1, 0($t0)
	sw $t1, -26656($fp)
	lw $t0, -26656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24336
	sw $t0, -26660($fp)
	li $t0, 4
	sw $t0, -26664($fp)
	li $t0, 4
	lw $t1, -26664($fp)
	mul $t0, $t0, $t1
	sw $t0, -26668($fp)
	lw $t0, -26668($fp)
	lw $t1, -26660($fp)
	add $t0, $t0, $t1
	sw $t0, -26672($fp)
	lw $t0, -26672($fp)
	lw $t1, 0($t0)
	sw $t1, -26676($fp)
	lw $t0, -26676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24336
	sw $t0, -26680($fp)
	li $t0, 5
	sw $t0, -26684($fp)
	li $t0, 4
	lw $t1, -26684($fp)
	mul $t0, $t0, $t1
	sw $t0, -26688($fp)
	lw $t0, -26688($fp)
	lw $t1, -26680($fp)
	add $t0, $t0, $t1
	sw $t0, -26692($fp)
	lw $t0, -26692($fp)
	lw $t1, 0($t0)
	sw $t1, -26696($fp)
	lw $t0, -26696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24336
	sw $t0, -26700($fp)
	li $t0, 6
	sw $t0, -26704($fp)
	li $t0, 4
	lw $t1, -26704($fp)
	mul $t0, $t0, $t1
	sw $t0, -26708($fp)
	lw $t0, -26708($fp)
	lw $t1, -26700($fp)
	add $t0, $t0, $t1
	sw $t0, -26712($fp)
	lw $t0, -26712($fp)
	lw $t1, 0($t0)
	sw $t1, -26716($fp)
	lw $t0, -26716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24812($fp)
	sw $t0, -26720($fp)
	lw $t0, -26720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -26724($fp)
	li $t0, 0
	sw $t0, -26728($fp)
	lw $t0, -7320($fp)
	sw $t0, -26732($fp)
	lw $t0, -6336($fp)
	sw $t0, -26736($fp)
	lw $t0, -26732($fp)
	lw $t1, -26736($fp)
	add $t0, $t0, $t1
	sw $t0, -26740($fp)
	lw $t1, -26740($fp)
	li $t2, 0
	bne $t1, $t2, label1179
	j label1181
label1181:
	li $t0, 20999
	sw $t0, -26744($fp)
	lw $t1, -26744($fp)
	li $t2, 0
	bne $t1, $t2, label1179
	j label1180
label1179:
	li $t0, 1
	sw $t0, -26728($fp)
label1180:
	li $t0, 0
	sw $t0, -26748($fp)
	addi $t0, $fp, -24336
	sw $t0, -26752($fp)
	lw $t0, -7236($fp)
	sw $t0, -26756($fp)
	li $t0, 4
	lw $t1, -26756($fp)
	mul $t0, $t0, $t1
	sw $t0, -26760($fp)
	lw $t0, -26760($fp)
	lw $t1, -26752($fp)
	add $t0, $t0, $t1
	sw $t0, -26764($fp)
	lw $t0, -26764($fp)
	lw $t1, 0($t0)
	sw $t1, -26768($fp)
	lw $t1, -26768($fp)
	li $t2, 0
	bne $t1, $t2, label1184
	j label1183
label1184:
	li $t0, 61889
	sw $t0, -26772($fp)
	lw $t1, -26772($fp)
	li $t2, 0
	bne $t1, $t2, label1182
	j label1183
label1182:
	li $t0, 1
	sw $t0, -26748($fp)
label1183:
	lw $t0, -12276($fp)
	sw $t0, -26776($fp)
	lw $t0, -26776($fp)
	sw $t0, -9360($fp)
	lw $t0, -9360($fp)
	sw $t0, -26780($fp)
	li $t0, 0
	sw $t0, -26784($fp)
	lw $t0, -9336($fp)
	sw $t0, -26788($fp)
	lw $t1, -26788($fp)
	li $t2, 0
	bne $t1, $t2, label1186
	j label1185
label1185:
	li $t0, 1
	sw $t0, -26784($fp)
label1186:
	lw $t0, -13032($fp)
	sw $t0, -26792($fp)
	lw $t0, -26784($fp)
	lw $t1, -26792($fp)
	sub $t0, $t0, $t1
	sw $t0, -26796($fp)
	addi $t0, $fp, -960
	sw $t0, -26800($fp)
	lw $t0, -3912($fp)
	sw $t0, -26804($fp)
	li $t0, 4
	lw $t1, -26804($fp)
	mul $t0, $t0, $t1
	sw $t0, -26808($fp)
	lw $t0, -26808($fp)
	lw $t1, -26800($fp)
	add $t0, $t0, $t1
	sw $t0, -26812($fp)
	lw $t0, -26812($fp)
	lw $t1, 0($t0)
	sw $t1, -26816($fp)
	addi $sp, $sp, -4
	lw $t0, -26728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -26748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -26780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -26796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -26816($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -26820($fp)
	addi $sp, $sp, 24
	lw $t1, -26820($fp)
	li $t2, 0
	bne $t1, $t2, label1178
	j label1177
label1177:
	li $t0, 1
	sw $t0, -26724($fp)
label1178:
	lw $ra, -4($fp)
	lw $v0, -26724($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -672
	sw $t0, -26824($fp)
	li $t0, 0
	sw $t0, -26828($fp)
	li $t0, 38545
	sw $t0, -26832($fp)
	lw $t0, -7428($fp)
	sw $t0, -26836($fp)
	lw $t0, -26832($fp)
	lw $t1, -26836($fp)
	add $t0, $t0, $t1
	sw $t0, -26840($fp)
	li $t0, 31462
	sw $t0, -26844($fp)
	lw $t0, -26840($fp)
	lw $t1, -26844($fp)
	sub $t0, $t0, $t1
	sw $t0, -26848($fp)
	lw $t1, -26848($fp)
	li $t2, 0
	bne $t1, $t2, label1192
	j label1191
label1192:
	li $t0, 13790
	sw $t0, -26852($fp)
	lw $t0, -24812($fp)
	sw $t0, -26856($fp)
	lw $t0, -26852($fp)
	lw $t1, -26856($fp)
	sub $t0, $t0, $t1
	sw $t0, -26860($fp)
	lw $t1, -26860($fp)
	li $t2, 0
	bne $t1, $t2, label1190
	j label1191
label1190:
	li $t0, 1
	sw $t0, -26828($fp)
label1191:
	li $t0, 4
	lw $t1, -26828($fp)
	mul $t0, $t0, $t1
	sw $t0, -26864($fp)
	lw $t0, -26864($fp)
	lw $t1, -26824($fp)
	add $t0, $t0, $t1
	sw $t0, -26868($fp)
	lw $t0, -26868($fp)
	lw $t1, 0($t0)
	sw $t1, -26872($fp)
	lw $t1, -26872($fp)
	li $t2, 0
	bne $t1, $t2, label1187
	j label1188
label1187:
	li $t0, 0
	sw $t0, -26876($fp)
	li $t0, 34866
	sw $t0, -26880($fp)
	addi $t0, $fp, -1228
	sw $t0, -26884($fp)
	lw $t0, -12132($fp)
	sw $t0, -26888($fp)
	li $t0, 4
	lw $t1, -26888($fp)
	mul $t0, $t0, $t1
	sw $t0, -26892($fp)
	lw $t0, -26892($fp)
	lw $t1, -26884($fp)
	add $t0, $t0, $t1
	sw $t0, -26896($fp)
	lw $t0, -26896($fp)
	lw $t1, 0($t0)
	sw $t1, -26900($fp)
	lw $t0, -8388($fp)
	sw $t0, -26904($fp)
	lw $t0, -26904($fp)
	sw $t0, -7140($fp)
	lw $t0, -7140($fp)
	sw $t0, -26908($fp)
	lw $t0, -2652($fp)
	sw $t0, -26912($fp)
	lw $t0, -26912($fp)
	sw $t0, -12300($fp)
	lw $t0, -12300($fp)
	sw $t0, -26916($fp)
	li $t0, 0
	sw $t0, -26920($fp)
	li $t0, 47760
	sw $t0, -26924($fp)
	lw $t0, -10980($fp)
	sw $t0, -26928($fp)
	lw $t0, -26924($fp)
	lw $t1, -26928($fp)
	mul $t0, $t0, $t1
	sw $t0, -26932($fp)
	lw $t0, -24620($fp)
	sw $t0, -26936($fp)
	lw $t1, -26932($fp)
	lw $t2, -26936($fp)
	bne $t1, $t2, label1195
	j label1196
label1195:
	li $t0, 1
	sw $t0, -26920($fp)
label1196:
	li $t0, 0
	sw $t0, -26940($fp)
	li $t0, 0
	sw $t0, -26944($fp)
	li $t0, 63227
	sw $t0, -26948($fp)
	lw $t1, -26948($fp)
	li $t2, 0
	bne $t1, $t2, label1200
	j label1199
label1199:
	li $t0, 1
	sw $t0, -26944($fp)
label1200:
	li $t0, 40416
	sw $t0, -26952($fp)
	lw $t1, -26944($fp)
	lw $t2, -26952($fp)
	bge $t1, $t2, label1197
	j label1198
label1197:
	li $t0, 1
	sw $t0, -26940($fp)
label1198:
	addi $sp, $sp, -4
	lw $t0, -26900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -26908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -26916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -26920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -26940($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -26956($fp)
	addi $sp, $sp, 24
	lw $t0, -26880($fp)
	lw $t1, -26956($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -26960($fp)
	li $t0, 0
	sw $t0, -26964($fp)
	li $t0, 62375
	sw $t0, -26968($fp)
	lw $t1, -26968($fp)
	li $t2, 0
	bne $t1, $t2, label1204
	j label1203
label1204:
	li $t0, 19760
	sw $t0, -26972($fp)
	lw $t1, -26972($fp)
	li $t2, 0
	bne $t1, $t2, label1201
	j label1203
label1203:
	lw $t0, -6648($fp)
	sw $t0, -26976($fp)
	lw $t1, -26976($fp)
	li $t2, 0
	bne $t1, $t2, label1201
	j label1202
label1201:
	li $t0, 1
	sw $t0, -26964($fp)
label1202:
	li $t0, 58473
	sw $t0, -26980($fp)
	li $t0, 0
	sw $t0, -26984($fp)
	li $t0, 0
	sw $t0, -26988($fp)
	lw $t0, -1776($fp)
	sw $t0, -26992($fp)
	li $t0, 3544
	sw $t0, -26996($fp)
	lw $t1, -26992($fp)
	lw $t2, -26996($fp)
	beq $t1, $t2, label1207
	j label1208
label1207:
	li $t0, 1
	sw $t0, -26988($fp)
label1208:
	li $t0, 1772
	sw $t0, -27000($fp)
	lw $t1, -26988($fp)
	lw $t2, -27000($fp)
	beq $t1, $t2, label1205
	j label1206
label1205:
	li $t0, 1
	sw $t0, -26984($fp)
label1206:
	lw $t0, -7452($fp)
	sw $t0, -27004($fp)
	lw $t0, -27004($fp)
	sw $t0, -7032($fp)
	lw $t0, -7032($fp)
	sw $t0, -27008($fp)
	li $t0, 42688
	sw $t0, -27012($fp)
	lw $t0, -7440($fp)
	sw $t0, -27016($fp)
	lw $t0, -27012($fp)
	lw $t1, -27016($fp)
	sub $t0, $t0, $t1
	sw $t0, -27020($fp)
	lw $t0, -12768($fp)
	sw $t0, -27024($fp)
	lw $t0, -27020($fp)
	lw $t1, -27024($fp)
	sub $t0, $t0, $t1
	sw $t0, -27028($fp)
	addi $sp, $sp, -4
	lw $t0, -26964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -26980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -26984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27028($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -27032($fp)
	addi $sp, $sp, 24
	lw $t1, -26960($fp)
	lw $t2, -27032($fp)
	ble $t1, $t2, label1193
	j label1194
label1193:
	li $t0, 1
	sw $t0, -26876($fp)
label1194:
	j label1189
label1188:
label1209:
	li $t0, 0
	sw $t0, -27036($fp)
	lw $t0, -6780($fp)
	sw $t0, -27040($fp)
	lw $t1, -27040($fp)
	li $t2, 0
	bne $t1, $t2, label1212
	j label1215
label1215:
	lw $t0, -7464($fp)
	sw $t0, -27044($fp)
	lw $t1, -27044($fp)
	li $t2, 0
	bne $t1, $t2, label1212
	j label1214
label1214:
	lw $t0, -10092($fp)
	sw $t0, -27048($fp)
	lw $t0, -7476($fp)
	sw $t0, -27052($fp)
	lw $t1, -27048($fp)
	lw $t2, -27052($fp)
	bne $t1, $t2, label1212
	j label1213
label1212:
	li $t0, 1
	sw $t0, -27036($fp)
label1213:
	lw $t0, -27036($fp)
	sw $t0, -3264($fp)
	lw $t0, -3264($fp)
	sw $t0, -27056($fp)
	lw $t1, -27056($fp)
	li $t2, 0
	bne $t1, $t2, label1210
	j label1211
label1210:
	addi $t0, $fp, -1228
	sw $t0, -27060($fp)
	lw $t0, -24812($fp)
	sw $t0, -27064($fp)
	lw $t0, -27064($fp)
	sw $t0, -7488($fp)
	lw $t0, -7488($fp)
	sw $t0, -27068($fp)
	li $t0, 4
	lw $t1, -27068($fp)
	mul $t0, $t0, $t1
	sw $t0, -27072($fp)
	lw $t0, -27072($fp)
	lw $t1, -27060($fp)
	add $t0, $t0, $t1
	sw $t0, -27076($fp)
	lw $t0, -27076($fp)
	lw $t1, 0($t0)
	sw $t1, -27080($fp)
	li $t0, 0
	sw $t0, -27084($fp)
	addi $t0, $fp, -712
	sw $t0, -27088($fp)
	li $t0, 4
	sw $t0, -27092($fp)
	li $t0, 4
	lw $t1, -27092($fp)
	mul $t0, $t0, $t1
	sw $t0, -27096($fp)
	lw $t0, -27096($fp)
	lw $t1, -27088($fp)
	add $t0, $t0, $t1
	sw $t0, -27100($fp)
	lw $t0, -27100($fp)
	lw $t1, 0($t0)
	sw $t1, -27104($fp)
	lw $t1, -27104($fp)
	li $t2, 0
	bne $t1, $t2, label1217
	j label1216
label1216:
	li $t0, 1
	sw $t0, -27084($fp)
label1217:
	lw $t0, -27080($fp)
	lw $t1, -27084($fp)
	add $t0, $t0, $t1
	sw $t0, -27108($fp)
	j label1209
label1211:
label1189:
	j label1063
label1062:
	li $t0, 12420
	sw $t0, -27112($fp)
	lw $t0, -9492($fp)
	sw $t0, -27116($fp)
	lw $t0, -27112($fp)
	lw $t1, -27116($fp)
	sub $t0, $t0, $t1
	sw $t0, -27120($fp)
	lw $t0, -7740($fp)
	sw $t0, -27124($fp)
	lw $t0, -27120($fp)
	lw $t1, -27124($fp)
	sub $t0, $t0, $t1
	sw $t0, -27128($fp)
	li $t0, 51194
	sw $t0, -27132($fp)
	lw $t0, -13152($fp)
	sw $t0, -27136($fp)
	lw $t0, -27132($fp)
	lw $t1, -27136($fp)
	mul $t0, $t0, $t1
	sw $t0, -27140($fp)
	lw $t0, -2292($fp)
	sw $t0, -27144($fp)
	lw $t0, -12036($fp)
	sw $t0, -27148($fp)
	lw $t0, -27144($fp)
	lw $t1, -27148($fp)
	mul $t0, $t0, $t1
	sw $t0, -27152($fp)
	lw $t0, -7440($fp)
	sw $t0, -27156($fp)
	lw $t0, -27152($fp)
	lw $t1, -27156($fp)
	sub $t0, $t0, $t1
	sw $t0, -27160($fp)
	li $t0, 3187
	sw $t0, -27164($fp)
	lw $t0, -9348($fp)
	sw $t0, -27168($fp)
	lw $t0, -27164($fp)
	lw $t1, -27168($fp)
	add $t0, $t0, $t1
	sw $t0, -27172($fp)
	lw $t0, -12732($fp)
	sw $t0, -27176($fp)
	lw $t0, -27172($fp)
	lw $t1, -27176($fp)
	add $t0, $t0, $t1
	sw $t0, -27180($fp)
	li $t0, 0
	sw $t0, -27184($fp)
	li $t0, 3678
	sw $t0, -27188($fp)
	lw $t1, -27188($fp)
	li $t2, 0
	bne $t1, $t2, label1219
	j label1218
label1218:
	li $t0, 1
	sw $t0, -27184($fp)
label1219:
	lw $t0, -10224($fp)
	sw $t0, -27192($fp)
	lw $t0, -27184($fp)
	lw $t1, -27192($fp)
	sub $t0, $t0, $t1
	sw $t0, -27196($fp)
	addi $sp, $sp, -4
	lw $t0, -27128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27196($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -27200($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -27204($fp)
	li $t0, 0
	sw $t0, -27208($fp)
	lw $t0, -9504($fp)
	sw $t0, -27212($fp)
	li $t0, 27748
	sw $t0, -27216($fp)
	lw $t1, -27212($fp)
	lw $t2, -27216($fp)
	bne $t1, $t2, label1222
	j label1223
label1222:
	li $t0, 1
	sw $t0, -27208($fp)
label1223:
	li $t0, 23781
	sw $t0, -27220($fp)
	lw $t1, -27208($fp)
	lw $t2, -27220($fp)
	beq $t1, $t2, label1220
	j label1221
label1220:
	li $t0, 1
	sw $t0, -27204($fp)
label1221:
	li $t0, 0
	sw $t0, -27224($fp)
	lw $t0, -1608($fp)
	sw $t0, -27228($fp)
	lw $t0, -6660($fp)
	sw $t0, -27232($fp)
	lw $t0, -27228($fp)
	lw $t1, -27232($fp)
	add $t0, $t0, $t1
	sw $t0, -27236($fp)
	lw $t1, -27236($fp)
	li $t2, 0
	bne $t1, $t2, label1224
	j label1226
label1226:
	lw $t0, -1992($fp)
	sw $t0, -27240($fp)
	lw $t1, -27240($fp)
	li $t2, 0
	bne $t1, $t2, label1224
	j label1225
label1224:
	li $t0, 1
	sw $t0, -27224($fp)
label1225:
	addi $t0, $fp, -372
	sw $t0, -27244($fp)
	lw $t0, -1764($fp)
	sw $t0, -27248($fp)
	li $t0, 4
	lw $t1, -27248($fp)
	mul $t0, $t0, $t1
	sw $t0, -27252($fp)
	lw $t0, -27252($fp)
	lw $t1, -27244($fp)
	add $t0, $t0, $t1
	sw $t0, -27256($fp)
	lw $t0, -27256($fp)
	lw $t1, 0($t0)
	sw $t1, -27260($fp)
	li $t0, 0
	lw $t1, -27260($fp)
	sub $t0, $t0, $t1
	sw $t0, -27264($fp)
	addi $t0, $fp, -292
	sw $t0, -27268($fp)
	li $t0, 2
	sw $t0, -27272($fp)
	li $t0, 4
	lw $t1, -27272($fp)
	mul $t0, $t0, $t1
	sw $t0, -27276($fp)
	lw $t0, -27276($fp)
	lw $t1, -27268($fp)
	add $t0, $t0, $t1
	sw $t0, -27280($fp)
	lw $t0, -27280($fp)
	lw $t1, 0($t0)
	sw $t1, -27284($fp)
	li $t0, 39965
	sw $t0, -27288($fp)
	lw $t0, -9492($fp)
	sw $t0, -27292($fp)
	lw $t0, -27288($fp)
	lw $t1, -27292($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -27296($fp)
	addi $t0, $fp, -1152
	sw $t0, -27300($fp)
	lw $t0, -10092($fp)
	sw $t0, -27304($fp)
	li $t0, 4
	lw $t1, -27304($fp)
	mul $t0, $t0, $t1
	sw $t0, -27308($fp)
	lw $t0, -27308($fp)
	lw $t1, -27300($fp)
	add $t0, $t0, $t1
	sw $t0, -27312($fp)
	lw $t0, -27312($fp)
	lw $t1, 0($t0)
	sw $t1, -27316($fp)
	li $t0, 0
	sw $t0, -27320($fp)
	lw $t0, -11004($fp)
	sw $t0, -27324($fp)
	li $t0, 22918
	sw $t0, -27328($fp)
	lw $t0, -27324($fp)
	lw $t1, -27328($fp)
	add $t0, $t0, $t1
	sw $t0, -27332($fp)
	lw $t0, -3360($fp)
	sw $t0, -27336($fp)
	lw $t1, -27332($fp)
	lw $t2, -27336($fp)
	ble $t1, $t2, label1227
	j label1228
label1227:
	li $t0, 1
	sw $t0, -27320($fp)
label1228:
	li $t0, 0
	sw $t0, -27340($fp)
	lw $t0, -2028($fp)
	sw $t0, -27344($fp)
	lw $t0, -9480($fp)
	sw $t0, -27348($fp)
	lw $t1, -27344($fp)
	lw $t2, -27348($fp)
	bge $t1, $t2, label1229
	j label1230
label1229:
	li $t0, 1
	sw $t0, -27340($fp)
label1230:
	li $t0, 0
	sw $t0, -27352($fp)
	li $t0, 0
	sw $t0, -27356($fp)
	li $t0, 22285
	sw $t0, -27360($fp)
	lw $t0, -9468($fp)
	sw $t0, -27364($fp)
	lw $t1, -27360($fp)
	lw $t2, -27364($fp)
	blt $t1, $t2, label1233
	j label1234
label1233:
	li $t0, 1
	sw $t0, -27356($fp)
label1234:
	li $t0, 31696
	sw $t0, -27368($fp)
	lw $t1, -27356($fp)
	lw $t2, -27368($fp)
	bgt $t1, $t2, label1231
	j label1232
label1231:
	li $t0, 1
	sw $t0, -27352($fp)
label1232:
	addi $sp, $sp, -4
	lw $t0, -27296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27352($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -27372($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -27376($fp)
	li $t0, 3805
	sw $t0, -27380($fp)
	li $t0, 0
	lw $t1, -27380($fp)
	sub $t0, $t0, $t1
	sw $t0, -27384($fp)
	lw $t1, -27384($fp)
	li $t2, 0
	bne $t1, $t2, label1237
	j label1236
label1237:
	lw $t0, -11964($fp)
	sw $t0, -27388($fp)
	lw $t1, -27388($fp)
	li $t2, 0
	bne $t1, $t2, label1235
	j label1236
label1235:
	li $t0, 1
	sw $t0, -27376($fp)
label1236:
	lw $t0, -9456($fp)
	sw $t0, -27392($fp)
	li $t0, 0
	sw $t0, -27396($fp)
	li $t0, 0
	sw $t0, -27400($fp)
	li $t0, 27194
	sw $t0, -27404($fp)
	lw $t1, -27404($fp)
	li $t2, 0
	bne $t1, $t2, label1241
	j label1240
label1240:
	li $t0, 1
	sw $t0, -27400($fp)
label1241:
	lw $t0, -5460($fp)
	sw $t0, -27408($fp)
	lw $t1, -27400($fp)
	lw $t2, -27408($fp)
	ble $t1, $t2, label1238
	j label1239
label1238:
	li $t0, 1
	sw $t0, -27396($fp)
label1239:
	lw $t0, -9444($fp)
	sw $t0, -27412($fp)
	li $t0, 0
	sw $t0, -27416($fp)
	addi $t0, $fp, -1240
	sw $t0, -27420($fp)
	li $t0, 0
	sw $t0, -27424($fp)
	li $t0, 4
	lw $t1, -27424($fp)
	mul $t0, $t0, $t1
	sw $t0, -27428($fp)
	lw $t0, -27428($fp)
	lw $t1, -27420($fp)
	add $t0, $t0, $t1
	sw $t0, -27432($fp)
	lw $t0, -27432($fp)
	lw $t1, 0($t0)
	sw $t1, -27436($fp)
	lw $t1, -27436($fp)
	li $t2, 0
	bne $t1, $t2, label1243
	j label1242
label1242:
	li $t0, 1
	sw $t0, -27416($fp)
label1243:
	addi $t0, $fp, -960
	sw $t0, -27440($fp)
	lw $t0, -9432($fp)
	sw $t0, -27444($fp)
	li $t0, 4
	lw $t1, -27444($fp)
	mul $t0, $t0, $t1
	sw $t0, -27448($fp)
	lw $t0, -27448($fp)
	lw $t1, -27440($fp)
	add $t0, $t0, $t1
	sw $t0, -27452($fp)
	lw $t0, -27452($fp)
	lw $t1, 0($t0)
	sw $t1, -27456($fp)
	li $t0, 0
	lw $t1, -27456($fp)
	sub $t0, $t0, $t1
	sw $t0, -27460($fp)
	li $t0, 0
	sw $t0, -27464($fp)
	li $t0, 16590
	sw $t0, -27468($fp)
	li $t0, 4991
	sw $t0, -27472($fp)
	lw $t1, -27468($fp)
	lw $t2, -27472($fp)
	bne $t1, $t2, label1244
	j label1246
label1246:
	li $t0, 47648
	sw $t0, -27476($fp)
	lw $t1, -27476($fp)
	li $t2, 0
	bne $t1, $t2, label1244
	j label1245
label1244:
	li $t0, 1
	sw $t0, -27464($fp)
label1245:
	li $t0, 21719
	sw $t0, -27480($fp)
	li $t0, 0
	lw $t1, -27480($fp)
	sub $t0, $t0, $t1
	sw $t0, -27484($fp)
	li $t0, 0
	lw $t1, -27484($fp)
	sub $t0, $t0, $t1
	sw $t0, -27488($fp)
	lw $t0, -9420($fp)
	sw $t0, -27492($fp)
	lw $t0, -13176($fp)
	sw $t0, -27496($fp)
	lw $t0, -27492($fp)
	lw $t1, -27496($fp)
	mul $t0, $t0, $t1
	sw $t0, -27500($fp)
	lw $t0, -11004($fp)
	sw $t0, -27504($fp)
	lw $t0, -27500($fp)
	lw $t1, -27504($fp)
	add $t0, $t0, $t1
	sw $t0, -27508($fp)
	li $t0, 63755
	sw $t0, -27512($fp)
	lw $t0, -27512($fp)
	sw $t0, -3708($fp)
	lw $t0, -3708($fp)
	sw $t0, -27516($fp)
	lw $t0, -2004($fp)
	sw $t0, -27520($fp)
	lw $t0, -27520($fp)
	sw $t0, -9408($fp)
	lw $t0, -9408($fp)
	sw $t0, -27524($fp)
	addi $sp, $sp, -4
	lw $t0, -27464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27524($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -27528($fp)
	addi $sp, $sp, 24
	li $t0, 26299
	sw $t0, -27532($fp)
	lw $t0, -27528($fp)
	lw $t1, -27532($fp)
	sub $t0, $t0, $t1
	sw $t0, -27536($fp)
	li $t0, 0
	sw $t0, -27540($fp)
	li $t0, 0
	sw $t0, -27544($fp)
	li $t0, 7010
	sw $t0, -27548($fp)
	li $t0, 24809
	sw $t0, -27552($fp)
	lw $t1, -27548($fp)
	lw $t2, -27552($fp)
	bge $t1, $t2, label1249
	j label1250
label1249:
	li $t0, 1
	sw $t0, -27544($fp)
label1250:
	li $t0, 59926
	sw $t0, -27556($fp)
	lw $t1, -27544($fp)
	lw $t2, -27556($fp)
	bge $t1, $t2, label1247
	j label1248
label1247:
	li $t0, 1
	sw $t0, -27540($fp)
label1248:
	li $t0, 0
	sw $t0, -27560($fp)
	li $t0, 0
	sw $t0, -27564($fp)
	addi $t0, $fp, -928
	sw $t0, -27568($fp)
	lw $t0, -9396($fp)
	sw $t0, -27572($fp)
	li $t0, 4
	lw $t1, -27572($fp)
	mul $t0, $t0, $t1
	sw $t0, -27576($fp)
	lw $t0, -27576($fp)
	lw $t1, -27568($fp)
	add $t0, $t0, $t1
	sw $t0, -27580($fp)
	lw $t0, -27580($fp)
	lw $t1, 0($t0)
	sw $t1, -27584($fp)
	lw $t1, -27584($fp)
	li $t2, 0
	bne $t1, $t2, label1255
	j label1254
label1255:
	li $t0, 5475
	sw $t0, -27588($fp)
	lw $t1, -27588($fp)
	li $t2, 0
	bne $t1, $t2, label1253
	j label1254
label1253:
	li $t0, 1
	sw $t0, -27564($fp)
label1254:
	lw $t0, -9360($fp)
	sw $t0, -27592($fp)
	lw $t0, -27592($fp)
	sw $t0, -9528($fp)
	lw $t0, -9528($fp)
	sw $t0, -27596($fp)
	li $t0, 0
	sw $t0, -27600($fp)
	li $t0, 0
	sw $t0, -27604($fp)
	lw $t0, -9264($fp)
	sw $t0, -27608($fp)
	lw $t0, -10260($fp)
	sw $t0, -27612($fp)
	lw $t1, -27608($fp)
	lw $t2, -27612($fp)
	bgt $t1, $t2, label1258
	j label1259
label1258:
	li $t0, 1
	sw $t0, -27604($fp)
label1259:
	li $t0, 60079
	sw $t0, -27616($fp)
	lw $t1, -27604($fp)
	lw $t2, -27616($fp)
	beq $t1, $t2, label1256
	j label1257
label1256:
	li $t0, 1
	sw $t0, -27600($fp)
label1257:
	li $t0, 58447
	sw $t0, -27620($fp)
	li $t0, 48072
	sw $t0, -27624($fp)
	lw $t0, -27620($fp)
	lw $t1, -27624($fp)
	sub $t0, $t0, $t1
	sw $t0, -27628($fp)
	li $t0, 38429
	sw $t0, -27632($fp)
	lw $t0, -27628($fp)
	lw $t1, -27632($fp)
	sub $t0, $t0, $t1
	sw $t0, -27636($fp)
	lw $t0, -9348($fp)
	sw $t0, -27640($fp)
	lw $t0, -7440($fp)
	sw $t0, -27644($fp)
	li $t0, 0
	sw $t0, -27648($fp)
	lw $t0, -10092($fp)
	sw $t0, -27652($fp)
	li $t0, 49786
	sw $t0, -27656($fp)
	lw $t0, -27652($fp)
	lw $t1, -27656($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -27660($fp)
	lw $t1, -27660($fp)
	li $t2, 0
	bne $t1, $t2, label1260
	j label1262
label1262:
	lw $t0, -8448($fp)
	sw $t0, -27664($fp)
	lw $t1, -27664($fp)
	li $t2, 0
	bne $t1, $t2, label1260
	j label1261
label1260:
	li $t0, 1
	sw $t0, -27648($fp)
label1261:
	li $t0, 0
	sw $t0, -27668($fp)
	lw $t0, -9336($fp)
	sw $t0, -27672($fp)
	lw $t0, -9876($fp)
	sw $t0, -27676($fp)
	lw $t0, -27672($fp)
	lw $t1, -27676($fp)
	sub $t0, $t0, $t1
	sw $t0, -27680($fp)
	lw $t1, -27680($fp)
	li $t2, 0
	bne $t1, $t2, label1265
	j label1264
label1265:
	lw $t0, -6600($fp)
	sw $t0, -27684($fp)
	lw $t1, -27684($fp)
	li $t2, 0
	bne $t1, $t2, label1263
	j label1264
label1263:
	li $t0, 1
	sw $t0, -27668($fp)
label1264:
	addi $sp, $sp, -4
	lw $t0, -27636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27668($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -27688($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -27688($fp)
	sub $t0, $t0, $t1
	sw $t0, -27692($fp)
	lw $t0, -9324($fp)
	sw $t0, -27696($fp)
	li $t0, 8885
	sw $t0, -27700($fp)
	lw $t0, -27696($fp)
	lw $t1, -27700($fp)
	add $t0, $t0, $t1
	sw $t0, -27704($fp)
	li $t0, 0
	sw $t0, -27708($fp)
	li $t0, 45035
	sw $t0, -27712($fp)
	li $t0, 0
	lw $t1, -27712($fp)
	sub $t0, $t0, $t1
	sw $t0, -27716($fp)
	lw $t1, -27716($fp)
	li $t2, 0
	bne $t1, $t2, label1268
	j label1267
label1268:
	lw $t0, -12456($fp)
	sw $t0, -27720($fp)
	lw $t1, -27720($fp)
	li $t2, 0
	bne $t1, $t2, label1266
	j label1267
label1266:
	li $t0, 1
	sw $t0, -27708($fp)
label1267:
	addi $sp, $sp, -4
	lw $t0, -27596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27708($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -27724($fp)
	addi $sp, $sp, 24
	li $t0, 43392
	sw $t0, -27728($fp)
	lw $t0, -3384($fp)
	sw $t0, -27732($fp)
	lw $t0, -12300($fp)
	sw $t0, -27736($fp)
	lw $t0, -27732($fp)
	lw $t1, -27736($fp)
	mul $t0, $t0, $t1
	sw $t0, -27740($fp)
	li $t0, 49657
	sw $t0, -27744($fp)
	lw $t0, -27740($fp)
	lw $t1, -27744($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -27748($fp)
	li $t0, 0
	sw $t0, -27752($fp)
	addi $t0, $fp, -1316
	sw $t0, -27756($fp)
	li $t0, 0
	sw $t0, -27760($fp)
	li $t0, 4
	lw $t1, -27760($fp)
	mul $t0, $t0, $t1
	sw $t0, -27764($fp)
	lw $t0, -27764($fp)
	lw $t1, -27756($fp)
	add $t0, $t0, $t1
	sw $t0, -27768($fp)
	lw $t0, -27768($fp)
	lw $t1, 0($t0)
	sw $t1, -27772($fp)
	lw $t0, -3252($fp)
	sw $t0, -27776($fp)
	lw $t1, -27772($fp)
	lw $t2, -27776($fp)
	blt $t1, $t2, label1269
	j label1270
label1269:
	li $t0, 1
	sw $t0, -27752($fp)
label1270:
	addi $sp, $sp, -4
	lw $t0, -27564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27752($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -27780($fp)
	addi $sp, $sp, 24
	lw $t1, -27780($fp)
	li $t2, 0
	bne $t1, $t2, label1252
	j label1251
label1251:
	li $t0, 1
	sw $t0, -27560($fp)
label1252:
	addi $t0, $fp, -1296
	sw $t0, -27784($fp)
	lw $t0, -9312($fp)
	sw $t0, -27788($fp)
	li $t0, 4
	lw $t1, -27788($fp)
	mul $t0, $t0, $t1
	sw $t0, -27792($fp)
	lw $t0, -27792($fp)
	lw $t1, -27784($fp)
	add $t0, $t0, $t1
	sw $t0, -27796($fp)
	lw $t0, -27796($fp)
	lw $t1, 0($t0)
	sw $t1, -27800($fp)
	li $t0, 51570
	sw $t0, -27804($fp)
	li $t0, 769
	sw $t0, -27808($fp)
	lw $t0, -27804($fp)
	lw $t1, -27808($fp)
	add $t0, $t0, $t1
	sw $t0, -27812($fp)
	lw $t0, -7308($fp)
	sw $t0, -27816($fp)
	lw $t0, -27812($fp)
	lw $t1, -27816($fp)
	sub $t0, $t0, $t1
	sw $t0, -27820($fp)
	lw $t0, -9288($fp)
	sw $t0, -27824($fp)
	lw $t0, -9300($fp)
	sw $t0, -27828($fp)
	lw $t0, -27824($fp)
	lw $t1, -27828($fp)
	mul $t0, $t0, $t1
	sw $t0, -27832($fp)
	lw $t0, -3648($fp)
	sw $t0, -27836($fp)
	lw $t0, -27832($fp)
	lw $t1, -27836($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -27840($fp)
	addi $sp, $sp, -4
	lw $t0, -27540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27840($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -27844($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -27844($fp)
	sub $t0, $t0, $t1
	sw $t0, -27848($fp)
	li $t0, 17679
	sw $t0, -27852($fp)
	lw $t0, -27852($fp)
	sw $t0, -11040($fp)
	lw $t0, -11040($fp)
	sw $t0, -27856($fp)
	li $t0, 0
	sw $t0, -27860($fp)
	li $t0, 4502
	sw $t0, -27864($fp)
	lw $t0, -27864($fp)
	sw $t0, -9276($fp)
	lw $t0, -9276($fp)
	sw $t0, -27868($fp)
	li $t0, 0
	sw $t0, -27872($fp)
	li $t0, 13358
	sw $t0, -27876($fp)
	lw $t0, -5880($fp)
	sw $t0, -27880($fp)
	lw $t0, -27876($fp)
	lw $t1, -27880($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -27884($fp)
	lw $t0, -6672($fp)
	sw $t0, -27888($fp)
	lw $t1, -27884($fp)
	lw $t2, -27888($fp)
	bgt $t1, $t2, label1273
	j label1274
label1273:
	li $t0, 1
	sw $t0, -27872($fp)
label1274:
	addi $t0, $fp, -924
	sw $t0, -27892($fp)
	lw $t0, -9264($fp)
	sw $t0, -27896($fp)
	li $t0, 4
	lw $t1, -27896($fp)
	mul $t0, $t0, $t1
	sw $t0, -27900($fp)
	lw $t0, -27900($fp)
	lw $t1, -27892($fp)
	add $t0, $t0, $t1
	sw $t0, -27904($fp)
	lw $t0, -27904($fp)
	lw $t1, 0($t0)
	sw $t1, -27908($fp)
	li $t0, 63550
	sw $t0, -27912($fp)
	lw $t0, -27908($fp)
	lw $t1, -27912($fp)
	sub $t0, $t0, $t1
	sw $t0, -27916($fp)
	li $t0, 895
	sw $t0, -27920($fp)
	lw $t0, -27920($fp)
	sw $t0, -9732($fp)
	lw $t0, -9732($fp)
	sw $t0, -27924($fp)
	li $t0, 0
	sw $t0, -27928($fp)
	lw $t0, -11832($fp)
	sw $t0, -27932($fp)
	lw $t0, -9012($fp)
	sw $t0, -27936($fp)
	lw $t0, -27936($fp)
	sw $t0, -9000($fp)
	lw $t0, -9000($fp)
	sw $t0, -27940($fp)
	addi $t0, $fp, -884
	sw $t0, -27944($fp)
	lw $t0, -8976($fp)
	sw $t0, -27948($fp)
	li $t0, 4
	lw $t1, -27948($fp)
	mul $t0, $t0, $t1
	sw $t0, -27952($fp)
	lw $t0, -27952($fp)
	lw $t1, -27944($fp)
	add $t0, $t0, $t1
	sw $t0, -27956($fp)
	lw $t0, -27956($fp)
	lw $t1, 0($t0)
	sw $t1, -27960($fp)
	lw $t0, -8988($fp)
	sw $t0, -27964($fp)
	lw $t0, -27960($fp)
	lw $t1, -27964($fp)
	sub $t0, $t0, $t1
	sw $t0, -27968($fp)
	li $t0, 799
	sw $t0, -27972($fp)
	lw $t0, -7140($fp)
	sw $t0, -27976($fp)
	lw $t0, -27972($fp)
	lw $t1, -27976($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -27980($fp)
	li $t0, 0
	lw $t1, -27980($fp)
	sub $t0, $t0, $t1
	sw $t0, -27984($fp)
	lw $t0, -8724($fp)
	sw $t0, -27988($fp)
	lw $t0, -27988($fp)
	sw $t0, -3204($fp)
	lw $t0, -3204($fp)
	sw $t0, -27992($fp)
	addi $sp, $sp, -4
	lw $t0, -27932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27992($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -27996($fp)
	addi $sp, $sp, 24
	lw $t1, -27996($fp)
	li $t2, 0
	bne $t1, $t2, label1277
	j label1276
label1277:
	li $t0, 26814
	sw $t0, -28000($fp)
	lw $t1, -28000($fp)
	li $t2, 0
	bne $t1, $t2, label1275
	j label1276
label1275:
	li $t0, 1
	sw $t0, -27928($fp)
label1276:
	li $t0, 0
	sw $t0, -28004($fp)
	lw $t0, -8712($fp)
	sw $t0, -28008($fp)
	li $t0, 25929
	sw $t0, -28012($fp)
	lw $t0, -28008($fp)
	lw $t1, -28012($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -28016($fp)
	lw $t1, -28016($fp)
	li $t2, 0
	bne $t1, $t2, label1278
	j label1280
label1280:
	li $t0, 9708
	sw $t0, -28020($fp)
	lw $t1, -28020($fp)
	li $t2, 0
	bne $t1, $t2, label1278
	j label1279
label1278:
	li $t0, 1
	sw $t0, -28004($fp)
label1279:
	li $t0, 0
	sw $t0, -28024($fp)
	lw $t0, -12732($fp)
	sw $t0, -28028($fp)
	lw $t1, -28028($fp)
	li $t2, 0
	bne $t1, $t2, label1281
	j label1283
label1283:
	li $t0, 6772
	sw $t0, -28032($fp)
	lw $t1, -28032($fp)
	li $t2, 0
	bne $t1, $t2, label1281
	j label1282
label1281:
	li $t0, 1
	sw $t0, -28024($fp)
label1282:
	li $t0, 0
	sw $t0, -28036($fp)
	li $t0, 22200
	sw $t0, -28040($fp)
	lw $t0, -6000($fp)
	sw $t0, -28044($fp)
	lw $t0, -28040($fp)
	lw $t1, -28044($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -28048($fp)
	lw $t0, -6660($fp)
	sw $t0, -28052($fp)
	lw $t1, -28048($fp)
	lw $t2, -28052($fp)
	ble $t1, $t2, label1284
	j label1285
label1284:
	li $t0, 1
	sw $t0, -28036($fp)
label1285:
	addi $t0, $fp, -452
	sw $t0, -28056($fp)
	lw $t0, -6780($fp)
	sw $t0, -28060($fp)
	li $t0, 4
	lw $t1, -28060($fp)
	mul $t0, $t0, $t1
	sw $t0, -28064($fp)
	lw $t0, -28064($fp)
	lw $t1, -28056($fp)
	add $t0, $t0, $t1
	sw $t0, -28068($fp)
	lw $t0, -28068($fp)
	lw $t1, 0($t0)
	sw $t1, -28072($fp)
	addi $sp, $sp, -4
	lw $t0, -27928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28072($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -28076($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -27868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28076($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -28080($fp)
	addi $sp, $sp, 24
	li $t0, 19113
	sw $t0, -28084($fp)
	lw $t1, -28080($fp)
	lw $t2, -28084($fp)
	blt $t1, $t2, label1271
	j label1272
label1271:
	li $t0, 1
	sw $t0, -27860($fp)
label1272:
	li $t0, 0
	sw $t0, -28088($fp)
	addi $t0, $fp, -844
	sw $t0, -28092($fp)
	lw $t0, -6636($fp)
	sw $t0, -28096($fp)
	li $t0, 4
	lw $t1, -28096($fp)
	mul $t0, $t0, $t1
	sw $t0, -28100($fp)
	lw $t0, -28100($fp)
	lw $t1, -28092($fp)
	add $t0, $t0, $t1
	sw $t0, -28104($fp)
	lw $t0, -28104($fp)
	lw $t1, 0($t0)
	sw $t1, -28108($fp)
	lw $t1, -28108($fp)
	li $t2, 0
	bne $t1, $t2, label1287
	j label1286
label1286:
	li $t0, 1
	sw $t0, -28088($fp)
label1287:
	li $t0, 0
	sw $t0, -28112($fp)
	li $t0, 0
	sw $t0, -28116($fp)
	lw $t0, -12168($fp)
	sw $t0, -28120($fp)
	li $t0, 56744
	sw $t0, -28124($fp)
	lw $t1, -28120($fp)
	lw $t2, -28124($fp)
	beq $t1, $t2, label1290
	j label1291
label1290:
	li $t0, 1
	sw $t0, -28116($fp)
label1291:
	li $t0, 62446
	sw $t0, -28128($fp)
	lw $t1, -28116($fp)
	lw $t2, -28128($fp)
	bne $t1, $t2, label1288
	j label1289
label1288:
	li $t0, 1
	sw $t0, -28112($fp)
label1289:
	addi $sp, $sp, -4
	lw $t0, -27848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28112($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -28132($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -27412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28132($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -28136($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -28140($fp)
	li $t0, 0
	sw $t0, -28144($fp)
	li $t0, 54451
	sw $t0, -28148($fp)
	lw $t1, -28148($fp)
	li $t2, 0
	bne $t1, $t2, label1295
	j label1294
label1294:
	li $t0, 1
	sw $t0, -28144($fp)
label1295:
	lw $t0, -8484($fp)
	sw $t0, -28152($fp)
	lw $t1, -28144($fp)
	lw $t2, -28152($fp)
	ble $t1, $t2, label1292
	j label1293
label1292:
	li $t0, 1
	sw $t0, -28140($fp)
label1293:
	lw $t0, -5868($fp)
	sw $t0, -28156($fp)
	lw $t0, -3912($fp)
	sw $t0, -28160($fp)
	lw $t0, -28156($fp)
	lw $t1, -28160($fp)
	mul $t0, $t0, $t1
	sw $t0, -28164($fp)
	addi $sp, $sp, -4
	lw $t0, -27392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28164($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -28168($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -28172($fp)
	addi $t0, $fp, -480
	sw $t0, -28176($fp)
	lw $t0, -13200($fp)
	sw $t0, -28180($fp)
	li $t0, 4
	lw $t1, -28180($fp)
	mul $t0, $t0, $t1
	sw $t0, -28184($fp)
	lw $t0, -28184($fp)
	lw $t1, -28176($fp)
	add $t0, $t0, $t1
	sw $t0, -28188($fp)
	lw $t0, -28188($fp)
	lw $t1, 0($t0)
	sw $t1, -28192($fp)
	lw $t1, -28192($fp)
	li $t2, 0
	bne $t1, $t2, label1297
	j label1296
label1296:
	li $t0, 1
	sw $t0, -28172($fp)
label1297:
	addi $sp, $sp, -4
	lw $t0, -27284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28172($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -28196($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -28200($fp)
	li $t0, 34117
	sw $t0, -28204($fp)
	lw $t0, -8472($fp)
	sw $t0, -28208($fp)
	lw $t0, -28204($fp)
	lw $t1, -28208($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -28212($fp)
	li $t0, 30266
	sw $t0, -28216($fp)
	lw $t1, -28212($fp)
	lw $t2, -28216($fp)
	ble $t1, $t2, label1298
	j label1299
label1298:
	li $t0, 1
	sw $t0, -28200($fp)
label1299:
	lw $t0, -8460($fp)
	sw $t0, -28220($fp)
	li $t0, 0
	sw $t0, -28224($fp)
	li $t0, 39186
	sw $t0, -28228($fp)
	li $t0, 54178
	sw $t0, -28232($fp)
	lw $t0, -28228($fp)
	lw $t1, -28232($fp)
	add $t0, $t0, $t1
	sw $t0, -28236($fp)
	lw $t1, -28236($fp)
	li $t2, 0
	bne $t1, $t2, label1300
	j label1302
label1302:
	li $t0, 1631
	sw $t0, -28240($fp)
	lw $t1, -28240($fp)
	li $t2, 0
	bne $t1, $t2, label1300
	j label1301
label1300:
	li $t0, 1
	sw $t0, -28224($fp)
label1301:
	li $t0, 0
	sw $t0, -28244($fp)
	lw $t0, -8472($fp)
	sw $t0, -28248($fp)
	lw $t1, -28248($fp)
	li $t2, 0
	bne $t1, $t2, label1306
	j label1305
label1306:
	li $t0, 13412
	sw $t0, -28252($fp)
	lw $t1, -28252($fp)
	li $t2, 0
	bne $t1, $t2, label1303
	j label1305
label1305:
	lw $t0, -8448($fp)
	sw $t0, -28256($fp)
	lw $t1, -28256($fp)
	li $t2, 0
	bne $t1, $t2, label1303
	j label1304
label1303:
	li $t0, 1
	sw $t0, -28244($fp)
label1304:
	li $t0, 0
	sw $t0, -28260($fp)
	li $t0, 24764
	sw $t0, -28264($fp)
	li $t0, 6394
	sw $t0, -28268($fp)
	lw $t1, -28264($fp)
	lw $t2, -28268($fp)
	ble $t1, $t2, label1309
	j label1308
label1309:
	lw $t0, -12108($fp)
	sw $t0, -28272($fp)
	lw $t1, -28272($fp)
	li $t2, 0
	bne $t1, $t2, label1307
	j label1308
label1307:
	li $t0, 1
	sw $t0, -28260($fp)
label1308:
	li $t0, 38983
	sw $t0, -28276($fp)
	lw $t0, -28276($fp)
	sw $t0, -6576($fp)
	lw $t0, -6576($fp)
	sw $t0, -28280($fp)
	addi $t0, $fp, -1228
	sw $t0, -28284($fp)
	li $t0, 6
	sw $t0, -28288($fp)
	li $t0, 4
	lw $t1, -28288($fp)
	mul $t0, $t0, $t1
	sw $t0, -28292($fp)
	lw $t0, -28292($fp)
	lw $t1, -28284($fp)
	add $t0, $t0, $t1
	sw $t0, -28296($fp)
	lw $t0, -28296($fp)
	lw $t1, 0($t0)
	sw $t1, -28300($fp)
	li $t0, 0
	sw $t0, -28304($fp)
	lw $t0, -7440($fp)
	sw $t0, -28308($fp)
	li $t0, 20017
	sw $t0, -28312($fp)
	lw $t1, -28308($fp)
	lw $t2, -28312($fp)
	blt $t1, $t2, label1310
	j label1312
label1312:
	lw $t0, -9756($fp)
	sw $t0, -28316($fp)
	lw $t1, -28316($fp)
	li $t2, 0
	bne $t1, $t2, label1310
	j label1311
label1310:
	li $t0, 1
	sw $t0, -28304($fp)
label1311:
	li $t0, 0
	sw $t0, -28320($fp)
	lw $t0, -8436($fp)
	sw $t0, -28324($fp)
	lw $t0, -12000($fp)
	sw $t0, -28328($fp)
	lw $t0, -28324($fp)
	lw $t1, -28328($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -28332($fp)
	li $t0, 35640
	sw $t0, -28336($fp)
	lw $t1, -28332($fp)
	lw $t2, -28336($fp)
	beq $t1, $t2, label1313
	j label1314
label1313:
	li $t0, 1
	sw $t0, -28320($fp)
label1314:
	li $t0, 0
	sw $t0, -28340($fp)
	lw $t0, -8424($fp)
	sw $t0, -28344($fp)
	lw $t0, -11820($fp)
	sw $t0, -28348($fp)
	lw $t0, -28344($fp)
	lw $t1, -28348($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -28352($fp)
	lw $t1, -28352($fp)
	li $t2, 0
	bne $t1, $t2, label1315
	j label1317
label1317:
	lw $t0, -9900($fp)
	sw $t0, -28356($fp)
	lw $t1, -28356($fp)
	li $t2, 0
	bne $t1, $t2, label1315
	j label1316
label1315:
	li $t0, 1
	sw $t0, -28340($fp)
label1316:
	addi $sp, $sp, -4
	lw $t0, -28280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28340($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -28360($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -28220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28360($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -28364($fp)
	addi $sp, $sp, 24
	li $t0, 22939
	sw $t0, -28368($fp)
	lw $t0, -28364($fp)
	lw $t1, -28368($fp)
	sub $t0, $t0, $t1
	sw $t0, -28372($fp)
	li $t0, 0
	sw $t0, -28376($fp)
	lw $t0, -7164($fp)
	sw $t0, -28380($fp)
	li $t0, 47192
	sw $t0, -28384($fp)
	lw $t1, -28380($fp)
	lw $t2, -28384($fp)
	bge $t1, $t2, label1318
	j label1320
label1320:
	lw $t0, -3888($fp)
	sw $t0, -28388($fp)
	lw $t1, -28388($fp)
	li $t2, 0
	bne $t1, $t2, label1318
	j label1319
label1318:
	li $t0, 1
	sw $t0, -28376($fp)
label1319:
	li $t0, 47068
	sw $t0, -28392($fp)
	lw $t0, -8412($fp)
	sw $t0, -28396($fp)
	lw $t0, -28392($fp)
	lw $t1, -28396($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -28400($fp)
	li $t0, 0
	lw $t1, -28400($fp)
	sub $t0, $t0, $t1
	sw $t0, -28404($fp)
	addi $t0, $fp, -620
	sw $t0, -28408($fp)
	li $t0, 1
	sw $t0, -28412($fp)
	li $t0, 4
	lw $t1, -28412($fp)
	mul $t0, $t0, $t1
	sw $t0, -28416($fp)
	lw $t0, -28416($fp)
	lw $t1, -28408($fp)
	add $t0, $t0, $t1
	sw $t0, -28420($fp)
	lw $t0, -28420($fp)
	lw $t1, 0($t0)
	sw $t1, -28424($fp)
	addi $sp, $sp, -4
	lw $t0, -28200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28424($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -28428($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -28432($fp)
	li $t0, 52080
	sw $t0, -28436($fp)
	lw $t1, -28436($fp)
	li $t2, 0
	bne $t1, $t2, label1321
	j label1323
label1323:
	li $t0, 3607
	sw $t0, -28440($fp)
	lw $t1, -28440($fp)
	li $t2, 0
	bne $t1, $t2, label1321
	j label1322
label1321:
	li $t0, 1
	sw $t0, -28432($fp)
label1322:
	li $t0, 0
	sw $t0, -28444($fp)
	lw $t0, -7308($fp)
	sw $t0, -28448($fp)
	li $t0, 62750
	sw $t0, -28452($fp)
	lw $t0, -28448($fp)
	lw $t1, -28452($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -28456($fp)
	lw $t0, -7176($fp)
	sw $t0, -28460($fp)
	lw $t1, -28456($fp)
	lw $t2, -28460($fp)
	ble $t1, $t2, label1324
	j label1325
label1324:
	li $t0, 1
	sw $t0, -28444($fp)
label1325:
	li $t0, 0
	sw $t0, -28464($fp)
	li $t0, 0
	sw $t0, -28468($fp)
	lw $t0, -3744($fp)
	sw $t0, -28472($fp)
	lw $t0, -3444($fp)
	sw $t0, -28476($fp)
	lw $t1, -28472($fp)
	lw $t2, -28476($fp)
	blt $t1, $t2, label1328
	j label1329
label1328:
	li $t0, 1
	sw $t0, -28468($fp)
label1329:
	li $t0, 56722
	sw $t0, -28480($fp)
	lw $t1, -28468($fp)
	lw $t2, -28480($fp)
	blt $t1, $t2, label1326
	j label1327
label1326:
	li $t0, 1
	sw $t0, -28464($fp)
label1327:
	li $t0, 0
	sw $t0, -28484($fp)
	li $t0, 885
	sw $t0, -28488($fp)
	li $t0, 0
	lw $t1, -28488($fp)
	sub $t0, $t0, $t1
	sw $t0, -28492($fp)
	lw $t0, -12612($fp)
	sw $t0, -28496($fp)
	lw $t1, -28492($fp)
	lw $t2, -28496($fp)
	beq $t1, $t2, label1330
	j label1331
label1330:
	li $t0, 1
	sw $t0, -28484($fp)
label1331:
	li $t0, 59563
	sw $t0, -28500($fp)
	lw $t0, -28500($fp)
	sw $t0, -6684($fp)
	lw $t0, -6684($fp)
	sw $t0, -28504($fp)
	addi $t0, $fp, -1184
	sw $t0, -28508($fp)
	lw $t0, -3228($fp)
	sw $t0, -28512($fp)
	li $t0, 4
	lw $t1, -28512($fp)
	mul $t0, $t0, $t1
	sw $t0, -28516($fp)
	lw $t0, -28516($fp)
	lw $t1, -28508($fp)
	add $t0, $t0, $t1
	sw $t0, -28520($fp)
	lw $t0, -28520($fp)
	lw $t1, 0($t0)
	sw $t1, -28524($fp)
	addi $sp, $sp, -4
	lw $t0, -28444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28524($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -28528($fp)
	addi $sp, $sp, 24
	lw $t0, -7428($fp)
	sw $t0, -28532($fp)
	lw $t0, -28528($fp)
	lw $t1, -28532($fp)
	mul $t0, $t0, $t1
	sw $t0, -28536($fp)
	li $t0, 53044
	sw $t0, -28540($fp)
	addi $sp, $sp, -4
	lw $t0, -28196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28540($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -28544($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -28548($fp)
	li $t0, 0
	sw $t0, -28552($fp)
	li $t0, 33284
	sw $t0, -28556($fp)
	lw $t0, -8400($fp)
	sw $t0, -28560($fp)
	lw $t1, -28556($fp)
	lw $t2, -28560($fp)
	bne $t1, $t2, label1334
	j label1335
label1334:
	li $t0, 1
	sw $t0, -28552($fp)
label1335:
	li $t0, 15564
	sw $t0, -28564($fp)
	lw $t1, -28552($fp)
	lw $t2, -28564($fp)
	bne $t1, $t2, label1332
	j label1333
label1332:
	li $t0, 1
	sw $t0, -28548($fp)
label1333:
	li $t0, 0
	sw $t0, -28568($fp)
	lw $t0, -5472($fp)
	sw $t0, -28572($fp)
	li $t0, 0
	lw $t1, -28572($fp)
	sub $t0, $t0, $t1
	sw $t0, -28576($fp)
	lw $t0, -7296($fp)
	sw $t0, -28580($fp)
	lw $t1, -28576($fp)
	lw $t2, -28580($fp)
	beq $t1, $t2, label1336
	j label1337
label1336:
	li $t0, 1
	sw $t0, -28568($fp)
label1337:
	li $t0, 0
	sw $t0, -28584($fp)
	lw $t0, -1980($fp)
	sw $t0, -28588($fp)
	li $t0, 22627
	sw $t0, -28592($fp)
	lw $t0, -28588($fp)
	lw $t1, -28592($fp)
	mul $t0, $t0, $t1
	sw $t0, -28596($fp)
	li $t0, 32179
	sw $t0, -28600($fp)
	lw $t1, -28596($fp)
	lw $t2, -28600($fp)
	bge $t1, $t2, label1338
	j label1339
label1338:
	li $t0, 1
	sw $t0, -28584($fp)
label1339:
	li $t0, 0
	sw $t0, -28604($fp)
	lw $t0, -8376($fp)
	sw $t0, -28608($fp)
	lw $t0, -8388($fp)
	sw $t0, -28612($fp)
	lw $t0, -28608($fp)
	lw $t1, -28612($fp)
	sub $t0, $t0, $t1
	sw $t0, -28616($fp)
	lw $t0, -13044($fp)
	sw $t0, -28620($fp)
	lw $t1, -28616($fp)
	lw $t2, -28620($fp)
	bne $t1, $t2, label1340
	j label1341
label1340:
	li $t0, 1
	sw $t0, -28604($fp)
label1341:
	li $t0, 0
	sw $t0, -28624($fp)
	li $t0, 0
	sw $t0, -28628($fp)
	li $t0, 28635
	sw $t0, -28632($fp)
	lw $t0, -8364($fp)
	sw $t0, -28636($fp)
	lw $t1, -28632($fp)
	lw $t2, -28636($fp)
	bne $t1, $t2, label1344
	j label1345
label1344:
	li $t0, 1
	sw $t0, -28628($fp)
label1345:
	li $t0, 31512
	sw $t0, -28640($fp)
	lw $t1, -28628($fp)
	lw $t2, -28640($fp)
	beq $t1, $t2, label1342
	j label1343
label1342:
	li $t0, 1
	sw $t0, -28624($fp)
label1343:
	addi $sp, $sp, -4
	lw $t0, -28548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28624($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -28644($fp)
	addi $sp, $sp, 24
	li $t0, 29019
	sw $t0, -28648($fp)
	lw $t0, -28644($fp)
	lw $t1, -28648($fp)
	mul $t0, $t0, $t1
	sw $t0, -28652($fp)
	li $t0, 45475
	sw $t0, -28656($fp)
	li $t0, 0
	lw $t1, -28656($fp)
	sub $t0, $t0, $t1
	sw $t0, -28660($fp)
	addi $sp, $sp, -4
	lw $t0, -27224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -27264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28660($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -28664($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -28668($fp)
	lw $t0, -3324($fp)
	sw $t0, -28672($fp)
	lw $t1, -28672($fp)
	li $t2, 0
	bne $t1, $t2, label1347
	j label1346
label1346:
	li $t0, 1
	sw $t0, -28668($fp)
label1347:
	li $t0, 0
	sw $t0, -28676($fp)
	li $t0, 0
	sw $t0, -28680($fp)
	lw $t0, -3360($fp)
	sw $t0, -28684($fp)
	li $t0, 53755
	sw $t0, -28688($fp)
	lw $t1, -28684($fp)
	lw $t2, -28688($fp)
	beq $t1, $t2, label1350
	j label1351
label1350:
	li $t0, 1
	sw $t0, -28680($fp)
label1351:
	lw $t0, -7236($fp)
	sw $t0, -28692($fp)
	lw $t1, -28680($fp)
	lw $t2, -28692($fp)
	beq $t1, $t2, label1348
	j label1349
label1348:
	li $t0, 1
	sw $t0, -28676($fp)
label1349:
	li $t0, 47784
	sw $t0, -28696($fp)
	li $t0, 0
	sw $t0, -28700($fp)
	lw $t0, -5568($fp)
	sw $t0, -28704($fp)
	lw $t0, -28704($fp)
	sw $t0, -8352($fp)
	lw $t0, -8352($fp)
	sw $t0, -28708($fp)
	li $t0, 14422
	sw $t0, -28712($fp)
	addi $t0, $fp, -808
	sw $t0, -28716($fp)
	lw $t0, -7068($fp)
	sw $t0, -28720($fp)
	li $t0, 4
	lw $t1, -28720($fp)
	mul $t0, $t0, $t1
	sw $t0, -28724($fp)
	lw $t0, -28724($fp)
	lw $t1, -28716($fp)
	add $t0, $t0, $t1
	sw $t0, -28728($fp)
	lw $t0, -28728($fp)
	lw $t1, 0($t0)
	sw $t1, -28732($fp)
	li $t0, 39965
	sw $t0, -28736($fp)
	lw $t0, -28732($fp)
	lw $t1, -28736($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -28740($fp)
	addi $t0, $fp, -40
	sw $t0, -28744($fp)
	lw $t0, -6324($fp)
	sw $t0, -28748($fp)
	li $t0, 4
	lw $t1, -28748($fp)
	mul $t0, $t0, $t1
	sw $t0, -28752($fp)
	lw $t0, -28752($fp)
	lw $t1, -28744($fp)
	add $t0, $t0, $t1
	sw $t0, -28756($fp)
	lw $t0, -28756($fp)
	lw $t1, 0($t0)
	sw $t1, -28760($fp)
	li $t0, 0
	lw $t1, -28760($fp)
	sub $t0, $t0, $t1
	sw $t0, -28764($fp)
	li $t0, 0
	sw $t0, -28768($fp)
	li $t0, 41413
	sw $t0, -28772($fp)
	li $t0, 16322
	sw $t0, -28776($fp)
	lw $t0, -28772($fp)
	lw $t1, -28776($fp)
	add $t0, $t0, $t1
	sw $t0, -28780($fp)
	lw $t1, -28780($fp)
	li $t2, 0
	bne $t1, $t2, label1354
	j label1356
label1356:
	lw $t0, -11940($fp)
	sw $t0, -28784($fp)
	lw $t1, -28784($fp)
	li $t2, 0
	bne $t1, $t2, label1354
	j label1355
label1354:
	li $t0, 1
	sw $t0, -28768($fp)
label1355:
	addi $sp, $sp, -4
	lw $t0, -28708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28768($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -28788($fp)
	addi $sp, $sp, 24
	lw $t1, -28788($fp)
	li $t2, 0
	bne $t1, $t2, label1353
	j label1352
label1352:
	li $t0, 1
	sw $t0, -28700($fp)
label1353:
	lw $t0, -9900($fp)
	sw $t0, -28792($fp)
	li $t0, 18966
	sw $t0, -28796($fp)
	lw $t0, -28792($fp)
	lw $t1, -28796($fp)
	mul $t0, $t0, $t1
	sw $t0, -28800($fp)
	addi $t0, $fp, -772
	sw $t0, -28804($fp)
	lw $t0, -5496($fp)
	sw $t0, -28808($fp)
	li $t0, 4
	lw $t1, -28808($fp)
	mul $t0, $t0, $t1
	sw $t0, -28812($fp)
	lw $t0, -28812($fp)
	lw $t1, -28804($fp)
	add $t0, $t0, $t1
	sw $t0, -28816($fp)
	lw $t0, -28816($fp)
	lw $t1, 0($t0)
	sw $t1, -28820($fp)
	li $t0, 1695
	sw $t0, -28824($fp)
	li $t0, 19968
	sw $t0, -28828($fp)
	lw $t0, -28824($fp)
	lw $t1, -28828($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -28832($fp)
	addi $t0, $fp, -732
	sw $t0, -28836($fp)
	li $t0, 4
	sw $t0, -28840($fp)
	li $t0, 4
	lw $t1, -28840($fp)
	mul $t0, $t0, $t1
	sw $t0, -28844($fp)
	lw $t0, -28844($fp)
	lw $t1, -28836($fp)
	add $t0, $t0, $t1
	sw $t0, -28848($fp)
	lw $t0, -28848($fp)
	lw $t1, 0($t0)
	sw $t1, -28852($fp)
	li $t0, 0
	sw $t0, -28856($fp)
	li $t0, 43461
	sw $t0, -28860($fp)
	lw $t1, -28860($fp)
	li $t2, 0
	bne $t1, $t2, label1358
	j label1357
label1357:
	li $t0, 1
	sw $t0, -28856($fp)
label1358:
	li $t0, 26092
	sw $t0, -28864($fp)
	lw $t0, -28856($fp)
	lw $t1, -28864($fp)
	add $t0, $t0, $t1
	sw $t0, -28868($fp)
	addi $sp, $sp, -4
	lw $t0, -28800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28868($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -28872($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -28668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28872($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -28876($fp)
	addi $sp, $sp, 24
	li $t0, 49288
	sw $t0, -28880($fp)
	lw $t0, -28876($fp)
	lw $t1, -28880($fp)
	add $t0, $t0, $t1
	sw $t0, -28884($fp)
	lw $t0, -7752($fp)
	sw $t0, -28888($fp)
	lw $t0, -7764($fp)
	sw $t0, -28892($fp)
	lw $t0, -28888($fp)
	lw $t1, -28892($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -28896($fp)
	li $t0, 17777
	sw $t0, -28900($fp)
	lw $t0, -28896($fp)
	lw $t1, -28900($fp)
	sub $t0, $t0, $t1
	sw $t0, -28904($fp)
	li $t0, 23885
	sw $t0, -28908($fp)
	lw $t0, -28908($fp)
	sw $t0, -2652($fp)
	lw $t0, -2652($fp)
	sw $t0, -28912($fp)
	addi $sp, $sp, -4
	lw $t0, -27204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28912($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -28916($fp)
	addi $sp, $sp, 24
	lw $t0, -27200($fp)
	lw $t1, -28916($fp)
	mul $t0, $t0, $t1
	sw $t0, -28920($fp)
	lw $ra, -4($fp)
	lw $v0, -28920($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label1063:
label730:
	li $t0, 0
	sw $t0, -28924($fp)
	lw $t0, -9516($fp)
	sw $t0, -28928($fp)
	li $t0, 7809
	sw $t0, -28932($fp)
	lw $t0, -28928($fp)
	lw $t1, -28932($fp)
	mul $t0, $t0, $t1
	sw $t0, -28936($fp)
	li $t0, 5604
	sw $t0, -28940($fp)
	lw $t0, -28936($fp)
	lw $t1, -28940($fp)
	mul $t0, $t0, $t1
	sw $t0, -28944($fp)
	li $t0, 3280
	sw $t0, -28948($fp)
	li $t0, 16694
	sw $t0, -28952($fp)
	lw $t0, -28948($fp)
	lw $t1, -28952($fp)
	add $t0, $t0, $t1
	sw $t0, -28956($fp)
	lw $t1, -28944($fp)
	lw $t2, -28956($fp)
	bne $t1, $t2, label1362
	j label1363
label1362:
	li $t0, 1
	sw $t0, -28924($fp)
label1363:
	lw $t0, -28924($fp)
	sw $t0, -3696($fp)
	lw $t0, -3696($fp)
	sw $t0, -28960($fp)
	lw $t1, -28960($fp)
	li $t2, 0
	bne $t1, $t2, label1359
	j label1360
label1359:
label1364:
	li $t0, 55391
	sw $t0, -28964($fp)
	lw $t0, -28964($fp)
	sw $t0, -6096($fp)
	lw $t0, -6096($fp)
	sw $t0, -28968($fp)
	lw $t0, -28968($fp)
	sw $t0, -9528($fp)
	lw $t0, -9528($fp)
	sw $t0, -28972($fp)
	lw $t1, -28972($fp)
	li $t2, 0
	bne $t1, $t2, label1365
	j label1366
label1365:
	li $t0, 61728
	sw $t0, -28988($fp)
	addi $t0, $fp, -28984
	sw $t0, -28992($fp)
	li $t0, 0
	sw $t0, -28996($fp)
	lw $t0, -28996($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -29000($fp)
	lw $t0, -28992($fp)
	lw $t1, -29000($fp)
	add $t0, $t0, $t1
	sw $t0, -29004($fp)
	lw $t0, -28988($fp)
	lw $t1, -29004($fp)
	sw $t0, 0($t1)
	lw $t0, -29004($fp)
	lw $t1, 0($t0)
	sw $t1, -29008($fp)
	li $t0, 64766
	sw $t0, -29012($fp)
	addi $t0, $fp, -28984
	sw $t0, -29016($fp)
	li $t0, 1
	sw $t0, -29020($fp)
	lw $t0, -29020($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -29024($fp)
	lw $t0, -29016($fp)
	lw $t1, -29024($fp)
	add $t0, $t0, $t1
	sw $t0, -29028($fp)
	lw $t0, -29012($fp)
	lw $t1, -29028($fp)
	sw $t0, 0($t1)
	lw $t0, -29028($fp)
	lw $t1, 0($t0)
	sw $t1, -29032($fp)
	li $t0, 28284
	sw $t0, -29036($fp)
	addi $t0, $fp, -28984
	sw $t0, -29040($fp)
	li $t0, 2
	sw $t0, -29044($fp)
	lw $t0, -29044($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -29048($fp)
	lw $t0, -29040($fp)
	lw $t1, -29048($fp)
	add $t0, $t0, $t1
	sw $t0, -29052($fp)
	lw $t0, -29036($fp)
	lw $t1, -29052($fp)
	sw $t0, 0($t1)
	lw $t0, -29052($fp)
	lw $t1, 0($t0)
	sw $t1, -29056($fp)
	li $t0, 56271
	sw $t0, -29060($fp)
	lw $t0, -29060($fp)
	sw $t0, -29064($fp)
	lw $t0, -29064($fp)
	sw $t0, -29068($fp)
	li $t0, 4705
	sw $t0, -29072($fp)
	lw $t0, -29072($fp)
	sw $t0, -29076($fp)
	lw $t0, -29076($fp)
	sw $t0, -29080($fp)
	li $t0, 35294
	sw $t0, -29084($fp)
	lw $t0, -29084($fp)
	sw $t0, -29088($fp)
	lw $t0, -29088($fp)
	sw $t0, -29092($fp)
	li $t0, 15544
	sw $t0, -29096($fp)
	lw $t0, -29096($fp)
	sw $t0, -29100($fp)
	lw $t0, -29100($fp)
	sw $t0, -29104($fp)
	li $t0, 64632
	sw $t0, -29108($fp)
	lw $t0, -29108($fp)
	sw $t0, -29112($fp)
	lw $t0, -29112($fp)
	sw $t0, -29116($fp)
	li $t0, 33513
	sw $t0, -29120($fp)
	lw $t0, -29120($fp)
	sw $t0, -29124($fp)
	lw $t0, -29124($fp)
	sw $t0, -29128($fp)
	li $t0, 37264
	sw $t0, -29132($fp)
	lw $t0, -29132($fp)
	sw $t0, -29136($fp)
	lw $t0, -29136($fp)
	sw $t0, -29140($fp)
	lw $t0, -2892($fp)
	sw $t0, -29144($fp)
	lw $t1, -29144($fp)
	li $t2, 0
	bne $t1, $t2, label1368
	j label1367
label1367:
	li $t0, 0
	sw $t0, -29148($fp)
	li $t0, 0
	sw $t0, -29152($fp)
	li $t0, 0
	sw $t0, -29156($fp)
	li $t0, 15686
	sw $t0, -29160($fp)
	lw $t1, -29160($fp)
	li $t2, 0
	bne $t1, $t2, label1375
	j label1374
label1374:
	li $t0, 1
	sw $t0, -29156($fp)
label1375:
	li $t0, 38505
	sw $t0, -29164($fp)
	lw $t0, -29156($fp)
	lw $t1, -29164($fp)
	mul $t0, $t0, $t1
	sw $t0, -29168($fp)
	li $t0, 35339
	sw $t0, -29172($fp)
	lw $t0, -5508($fp)
	sw $t0, -29176($fp)
	lw $t0, -29172($fp)
	lw $t1, -29176($fp)
	mul $t0, $t0, $t1
	sw $t0, -29180($fp)
	li $t0, 5483
	sw $t0, -29184($fp)
	lw $t0, -29180($fp)
	lw $t1, -29184($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -29188($fp)
	li $t0, 48101
	sw $t0, -29192($fp)
	li $t0, 50589
	sw $t0, -29196($fp)
	lw $t0, -29192($fp)
	lw $t1, -29196($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -29200($fp)
	lw $t0, -10944($fp)
	sw $t0, -29204($fp)
	lw $t0, -29200($fp)
	lw $t1, -29204($fp)
	add $t0, $t0, $t1
	sw $t0, -29208($fp)
	li $t0, 0
	sw $t0, -29212($fp)
	li $t0, 0
	sw $t0, -29216($fp)
	li $t0, 28303
	sw $t0, -29220($fp)
	li $t0, 3643
	sw $t0, -29224($fp)
	lw $t0, -29220($fp)
	lw $t1, -29224($fp)
	sub $t0, $t0, $t1
	sw $t0, -29228($fp)
	lw $t0, -12300($fp)
	sw $t0, -29232($fp)
	lw $t1, -29228($fp)
	lw $t2, -29232($fp)
	beq $t1, $t2, label1378
	j label1379
label1378:
	li $t0, 1
	sw $t0, -29216($fp)
label1379:
	li $t0, 0
	sw $t0, -29236($fp)
	lw $t0, -2328($fp)
	sw $t0, -29240($fp)
	lw $t1, -29240($fp)
	li $t2, 0
	bne $t1, $t2, label1383
	j label1381
label1383:
	lw $t0, -29064($fp)
	sw $t0, -29244($fp)
	lw $t1, -29244($fp)
	li $t2, 0
	bne $t1, $t2, label1382
	j label1381
label1382:
	lw $t0, -7212($fp)
	sw $t0, -29248($fp)
	lw $t1, -29248($fp)
	li $t2, 0
	bne $t1, $t2, label1380
	j label1381
label1380:
	li $t0, 1
	sw $t0, -29236($fp)
label1381:
	li $t0, 0
	sw $t0, -29252($fp)
	lw $t0, -2316($fp)
	sw $t0, -29256($fp)
	lw $t1, -29256($fp)
	li $t2, 0
	bne $t1, $t2, label1386
	j label1385
label1386:
	li $t0, 44296
	sw $t0, -29260($fp)
	lw $t1, -29260($fp)
	li $t2, 0
	bne $t1, $t2, label1384
	j label1385
label1384:
	li $t0, 1
	sw $t0, -29252($fp)
label1385:
	li $t0, 0
	sw $t0, -29264($fp)
	li $t0, 41985
	sw $t0, -29268($fp)
	lw $t1, -29268($fp)
	li $t2, 0
	bne $t1, $t2, label1387
	j label1389
label1389:
	lw $t0, -12072($fp)
	sw $t0, -29272($fp)
	lw $t1, -29272($fp)
	li $t2, 0
	bne $t1, $t2, label1387
	j label1388
label1387:
	li $t0, 1
	sw $t0, -29264($fp)
label1388:
	addi $t0, $fp, -28984
	sw $t0, -29276($fp)
	lw $t0, -1776($fp)
	sw $t0, -29280($fp)
	li $t0, 4
	lw $t1, -29280($fp)
	mul $t0, $t0, $t1
	sw $t0, -29284($fp)
	lw $t0, -29284($fp)
	lw $t1, -29276($fp)
	add $t0, $t0, $t1
	sw $t0, -29288($fp)
	lw $t0, -29288($fp)
	lw $t1, 0($t0)
	sw $t1, -29292($fp)
	addi $sp, $sp, -4
	lw $t0, -29216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -29236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -29252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -29264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -29292($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -29296($fp)
	addi $sp, $sp, 24
	lw $t0, -29076($fp)
	sw $t0, -29300($fp)
	lw $t1, -29296($fp)
	lw $t2, -29300($fp)
	bne $t1, $t2, label1376
	j label1377
label1376:
	li $t0, 1
	sw $t0, -29212($fp)
label1377:
	li $t0, 0
	sw $t0, -29304($fp)
	addi $t0, $fp, -944
	sw $t0, -29308($fp)
	lw $t0, -2004($fp)
	sw $t0, -29312($fp)
	li $t0, 4
	lw $t1, -29312($fp)
	mul $t0, $t0, $t1
	sw $t0, -29316($fp)
	lw $t0, -29316($fp)
	lw $t1, -29308($fp)
	add $t0, $t0, $t1
	sw $t0, -29320($fp)
	lw $t0, -29320($fp)
	lw $t1, 0($t0)
	sw $t1, -29324($fp)
	lw $t1, -29324($fp)
	li $t2, 0
	bne $t1, $t2, label1391
	j label1390
label1390:
	li $t0, 1
	sw $t0, -29304($fp)
label1391:
	li $t0, 0
	sw $t0, -29328($fp)
	li $t0, 19376
	sw $t0, -29332($fp)
	lw $t1, -29332($fp)
	li $t2, 0
	bne $t1, $t2, label1394
	j label1393
label1394:
	lw $t0, -2904($fp)
	sw $t0, -29336($fp)
	lw $t1, -29336($fp)
	li $t2, 0
	bne $t1, $t2, label1392
	j label1393
label1392:
	li $t0, 1
	sw $t0, -29328($fp)
label1393:
	addi $sp, $sp, -4
	lw $t0, -29188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -29208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -29212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -29304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -29328($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -29340($fp)
	addi $sp, $sp, 24
	lw $t0, -29168($fp)
	lw $t1, -29340($fp)
	sub $t0, $t0, $t1
	sw $t0, -29344($fp)
	lw $t0, -9768($fp)
	sw $t0, -29348($fp)
	lw $t1, -29344($fp)
	lw $t2, -29348($fp)
	bgt $t1, $t2, label1372
	j label1373
label1372:
	li $t0, 1
	sw $t0, -29152($fp)
label1373:
	li $t0, 0
	sw $t0, -29352($fp)
	li $t0, 0
	sw $t0, -29356($fp)
	li $t0, 53675
	sw $t0, -29360($fp)
	li $t0, 48226
	sw $t0, -29364($fp)
	lw $t1, -29360($fp)
	lw $t2, -29364($fp)
	bne $t1, $t2, label1397
	j label1398
label1397:
	li $t0, 1
	sw $t0, -29356($fp)
label1398:
	lw $t0, -29088($fp)
	sw $t0, -29368($fp)
	lw $t1, -29356($fp)
	lw $t2, -29368($fp)
	beq $t1, $t2, label1395
	j label1396
label1395:
	li $t0, 1
	sw $t0, -29352($fp)
label1396:
	li $t0, 0
	sw $t0, -29372($fp)
	li $t0, 58371
	sw $t0, -29376($fp)
	li $t0, 0
	lw $t1, -29376($fp)
	sub $t0, $t0, $t1
	sw $t0, -29380($fp)
	lw $t1, -29380($fp)
	li $t2, 0
	bne $t1, $t2, label1401
	j label1400
label1401:
	li $t0, 14595
	sw $t0, -29384($fp)
	lw $t1, -29384($fp)
	li $t2, 0
	bne $t1, $t2, label1399
	j label1400
label1399:
	li $t0, 1
	sw $t0, -29372($fp)
label1400:
	li $t0, 0
	sw $t0, -29388($fp)
	li $t0, 11315
	sw $t0, -29392($fp)
	lw $t0, -9732($fp)
	sw $t0, -29396($fp)
	lw $t0, -29392($fp)
	lw $t1, -29396($fp)
	sub $t0, $t0, $t1
	sw $t0, -29400($fp)
	li $t0, 36980
	sw $t0, -29404($fp)
	lw $t1, -29400($fp)
	lw $t2, -29404($fp)
	bgt $t1, $t2, label1402
	j label1403
label1402:
	li $t0, 1
	sw $t0, -29388($fp)
label1403:
	li $t0, 52766
	sw $t0, -29408($fp)
	li $t0, 0
	sw $t0, -29412($fp)
	addi $t0, $fp, -960
	sw $t0, -29416($fp)
	li $t0, 1
	sw $t0, -29420($fp)
	li $t0, 4
	lw $t1, -29420($fp)
	mul $t0, $t0, $t1
	sw $t0, -29424($fp)
	lw $t0, -29424($fp)
	lw $t1, -29416($fp)
	add $t0, $t0, $t1
	sw $t0, -29428($fp)
	lw $t0, -29428($fp)
	lw $t1, 0($t0)
	sw $t1, -29432($fp)
	li $t0, 29171
	sw $t0, -29436($fp)
	lw $t1, -29432($fp)
	lw $t2, -29436($fp)
	bgt $t1, $t2, label1404
	j label1405
label1404:
	li $t0, 1
	sw $t0, -29412($fp)
label1405:
	addi $sp, $sp, -4
	lw $t0, -29352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -29372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -29388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -29408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -29412($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -29440($fp)
	addi $sp, $sp, 24
	lw $t1, -29152($fp)
	lw $t2, -29440($fp)
	bne $t1, $t2, label1370
	j label1371
label1370:
	li $t0, 1
	sw $t0, -29148($fp)
label1371:
	j label1369
label1368:
	addi $t0, $fp, -1004
	sw $t0, -29444($fp)
	li $t0, 0
	sw $t0, -29448($fp)
	lw $t0, -9744($fp)
	sw $t0, -29452($fp)
	lw $t1, -29452($fp)
	li $t2, 0
	bne $t1, $t2, label1407
	j label1406
label1406:
	li $t0, 1
	sw $t0, -29448($fp)
label1407:
	li $t0, 4
	lw $t1, -29448($fp)
	mul $t0, $t0, $t1
	sw $t0, -29456($fp)
	lw $t0, -29456($fp)
	lw $t1, -29444($fp)
	add $t0, $t0, $t1
	sw $t0, -29460($fp)
	lw $t0, -29460($fp)
	lw $t1, 0($t0)
	sw $t1, -29464($fp)
	lw $t0, -29464($fp)
	sw $t0, -9480($fp)
	lw $t0, -9480($fp)
	sw $t0, -29468($fp)
	lw $ra, -4($fp)
	lw $v0, -29468($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label1369:
	li $t0, 0
	sw $t0, -29472($fp)
	lw $t0, -9756($fp)
	sw $t0, -29476($fp)
	li $t0, 10787
	sw $t0, -29480($fp)
	li $t0, 0
	sw $t0, -29484($fp)
	li $t0, 52905
	sw $t0, -29488($fp)
	lw $t1, -29488($fp)
	li $t2, 0
	bne $t1, $t2, label1411
	j label1410
label1410:
	li $t0, 1
	sw $t0, -29484($fp)
label1411:
	lw $t0, -29480($fp)
	lw $t1, -29484($fp)
	sub $t0, $t0, $t1
	sw $t0, -29492($fp)
	lw $t1, -29476($fp)
	lw $t2, -29492($fp)
	bgt $t1, $t2, label1408
	j label1409
label1408:
	li $t0, 1
	sw $t0, -29472($fp)
label1409:
label1412:
	li $t0, 0
	sw $t0, -29496($fp)
	li $t0, 0
	sw $t0, -29500($fp)
	li $t0, 46268
	sw $t0, -29504($fp)
	lw $t1, -29504($fp)
	li $t2, 0
	bne $t1, $t2, label1421
	j label1419
label1421:
	lw $t0, -12036($fp)
	sw $t0, -29508($fp)
	lw $t1, -29508($fp)
	li $t2, 0
	bne $t1, $t2, label1420
	j label1419
label1420:
	li $t0, 17067
	sw $t0, -29512($fp)
	lw $t1, -29512($fp)
	li $t2, 0
	bne $t1, $t2, label1418
	j label1419
label1418:
	li $t0, 1
	sw $t0, -29500($fp)
label1419:
	li $t0, 0
	sw $t0, -29516($fp)
	li $t0, 57611
	sw $t0, -29520($fp)
	lw $t0, -1776($fp)
	sw $t0, -29524($fp)
	lw $t0, -29520($fp)
	lw $t1, -29524($fp)
	add $t0, $t0, $t1
	sw $t0, -29528($fp)
	lw $t1, -29528($fp)
	li $t2, 0
	bne $t1, $t2, label1424
	j label1423
label1424:
	lw $t0, -13044($fp)
	sw $t0, -29532($fp)
	lw $t1, -29532($fp)
	li $t2, 0
	bne $t1, $t2, label1422
	j label1423
label1422:
	li $t0, 1
	sw $t0, -29516($fp)
label1423:
	li $t0, 0
	sw $t0, -29536($fp)
	lw $t0, -6660($fp)
	sw $t0, -29540($fp)
	lw $t0, -5880($fp)
	sw $t0, -29544($fp)
	lw $t0, -29540($fp)
	lw $t1, -29544($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -29548($fp)
	li $t0, 1522
	sw $t0, -29552($fp)
	lw $t1, -29548($fp)
	lw $t2, -29552($fp)
	bge $t1, $t2, label1425
	j label1426
label1425:
	li $t0, 1
	sw $t0, -29536($fp)
label1426:
	li $t0, 0
	sw $t0, -29556($fp)
	lw $t0, -29100($fp)
	sw $t0, -29560($fp)
	li $t0, 0
	lw $t1, -29560($fp)
	sub $t0, $t0, $t1
	sw $t0, -29564($fp)
	lw $t1, -29564($fp)
	li $t2, 0
	bne $t1, $t2, label1427
	j label1429
label1429:
	li $t0, 10974
	sw $t0, -29568($fp)
	lw $t1, -29568($fp)
	li $t2, 0
	bne $t1, $t2, label1427
	j label1428
label1427:
	li $t0, 1
	sw $t0, -29556($fp)
label1428:
	lw $t0, -9732($fp)
	sw $t0, -29572($fp)
	addi $sp, $sp, -4
	lw $t0, -29500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -29516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -29536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -29556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -29572($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -29576($fp)
	addi $sp, $sp, 24
	lw $t0, -11820($fp)
	sw $t0, -29580($fp)
	lw $t1, -29576($fp)
	lw $t2, -29580($fp)
	bge $t1, $t2, label1416
	j label1417
label1416:
	li $t0, 1
	sw $t0, -29496($fp)
label1417:
	li $t0, 0
	sw $t0, -29584($fp)
	li $t0, 0
	sw $t0, -29588($fp)
	li $t0, 31511
	sw $t0, -29592($fp)
	li $t0, 36475
	sw $t0, -29596($fp)
	lw $t1, -29592($fp)
	lw $t2, -29596($fp)
	bne $t1, $t2, label1432
	j label1433
label1432:
	li $t0, 1
	sw $t0, -29588($fp)
label1433:
	lw $t0, -7248($fp)
	sw $t0, -29600($fp)
	lw $t1, -29588($fp)
	lw $t2, -29600($fp)
	beq $t1, $t2, label1430
	j label1431
label1430:
	li $t0, 1
	sw $t0, -29584($fp)
label1431:
	li $t0, 0
	sw $t0, -29604($fp)
	lw $t0, -7056($fp)
	sw $t0, -29608($fp)
	li $t0, 0
	lw $t1, -29608($fp)
	sub $t0, $t0, $t1
	sw $t0, -29612($fp)
	lw $t1, -29612($fp)
	li $t2, 0
	bne $t1, $t2, label1436
	j label1435
label1436:
	lw $t0, -13044($fp)
	sw $t0, -29616($fp)
	lw $t1, -29616($fp)
	li $t2, 0
	bne $t1, $t2, label1434
	j label1435
label1434:
	li $t0, 1
	sw $t0, -29604($fp)
label1435:
	li $t0, 0
	sw $t0, -29620($fp)
	lw $t0, -7080($fp)
	sw $t0, -29624($fp)
	li $t0, 8171
	sw $t0, -29628($fp)
	lw $t1, -29624($fp)
	lw $t2, -29628($fp)
	blt $t1, $t2, label1437
	j label1439
label1439:
	li $t0, 48843
	sw $t0, -29632($fp)
	lw $t1, -29632($fp)
	li $t2, 0
	bne $t1, $t2, label1437
	j label1438
label1437:
	li $t0, 1
	sw $t0, -29620($fp)
label1438:
	li $t0, 0
	sw $t0, -29636($fp)
	li $t0, 52751
	sw $t0, -29640($fp)
	li $t0, 0
	lw $t1, -29640($fp)
	sub $t0, $t0, $t1
	sw $t0, -29644($fp)
	lw $t0, -7236($fp)
	sw $t0, -29648($fp)
	lw $t1, -29644($fp)
	lw $t2, -29648($fp)
	beq $t1, $t2, label1440
	j label1441
label1440:
	li $t0, 1
	sw $t0, -29636($fp)
label1441:
	li $t0, 0
	sw $t0, -29652($fp)
	lw $t0, -6096($fp)
	sw $t0, -29656($fp)
	lw $t0, -9768($fp)
	sw $t0, -29660($fp)
	lw $t0, -29656($fp)
	lw $t1, -29660($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -29664($fp)
	lw $t1, -29664($fp)
	li $t2, 0
	bne $t1, $t2, label1444
	j label1443
label1444:
	lw $t0, -5856($fp)
	sw $t0, -29668($fp)
	lw $t1, -29668($fp)
	li $t2, 0
	bne $t1, $t2, label1442
	j label1443
label1442:
	li $t0, 1
	sw $t0, -29652($fp)
label1443:
	li $t0, 0
	sw $t0, -29672($fp)
	lw $t0, -7128($fp)
	sw $t0, -29676($fp)
	lw $t1, -29676($fp)
	li $t2, 0
	bne $t1, $t2, label1448
	j label1447
label1448:
	lw $t0, -5556($fp)
	sw $t0, -29680($fp)
	lw $t1, -29680($fp)
	li $t2, 0
	bne $t1, $t2, label1445
	j label1447
label1447:
	li $t0, 6857
	sw $t0, -29684($fp)
	lw $t1, -29684($fp)
	li $t2, 0
	bne $t1, $t2, label1445
	j label1446
label1445:
	li $t0, 1
	sw $t0, -29672($fp)
label1446:
	li $t0, 0
	sw $t0, -29688($fp)
	li $t0, 14246
	sw $t0, -29692($fp)
	li $t0, 54331
	sw $t0, -29696($fp)
	lw $t1, -29692($fp)
	lw $t2, -29696($fp)
	bgt $t1, $t2, label1449
	j label1450
label1449:
	li $t0, 1
	sw $t0, -29688($fp)
label1450:
	lw $t0, -29112($fp)
	sw $t0, -29700($fp)
	li $t0, 0
	sw $t0, -29704($fp)
	lw $t0, -9912($fp)
	sw $t0, -29708($fp)
	li $t0, 56707
	sw $t0, -29712($fp)
	lw $t0, -29708($fp)
	lw $t1, -29712($fp)
	add $t0, $t0, $t1
	sw $t0, -29716($fp)
	lw $t0, -3720($fp)
	sw $t0, -29720($fp)
	lw $t1, -29716($fp)
	lw $t2, -29720($fp)
	bgt $t1, $t2, label1451
	j label1452
label1451:
	li $t0, 1
	sw $t0, -29704($fp)
label1452:
	addi $sp, $sp, -4
	lw $t0, -29652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -29672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -29688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -29700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -29704($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -29724($fp)
	addi $sp, $sp, 24
	lw $t0, 12($fp)
	sw $t0, -29728($fp)
	lw $t0, -29724($fp)
	lw $t1, -29728($fp)
	mul $t0, $t0, $t1
	sw $t0, -29732($fp)
	addi $sp, $sp, -4
	lw $t0, -29584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -29604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -29620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -29636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -29732($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -29736($fp)
	addi $sp, $sp, 24
	lw $t1, -29496($fp)
	lw $t2, -29736($fp)
	blt $t1, $t2, label1415
	j label1414
label1415:
	li $t0, 0
	sw $t0, -29740($fp)
	li $t0, 52486
	sw $t0, -29744($fp)
	lw $t1, -29744($fp)
	li $t2, 0
	bne $t1, $t2, label1454
	j label1453
label1453:
	li $t0, 1
	sw $t0, -29740($fp)
label1454:
	lw $t0, -2352($fp)
	sw $t0, -29748($fp)
	lw $t0, -29740($fp)
	lw $t1, -29748($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -29752($fp)
	li $t0, 0
	sw $t0, -29756($fp)
	lw $t0, -7164($fp)
	sw $t0, -29760($fp)
	lw $t0, -6000($fp)
	sw $t0, -29764($fp)
	lw $t1, -29760($fp)
	lw $t2, -29764($fp)
	bge $t1, $t2, label1455
	j label1456
label1455:
	li $t0, 1
	sw $t0, -29756($fp)
label1456:
	lw $t1, -29752($fp)
	lw $t2, -29756($fp)
	bne $t1, $t2, label1413
	j label1414
label1413:
	addi $t0, $fp, -976
	sw $t0, -29768($fp)
	li $t0, 14076
	sw $t0, -29772($fp)
	lw $t0, -29124($fp)
	sw $t0, -29776($fp)
	lw $t0, -29776($fp)
	sw $t0, -3276($fp)
	lw $t0, -3276($fp)
	sw $t0, -29780($fp)
	lw $t0, -6624($fp)
	sw $t0, -29784($fp)
	lw $t0, -7296($fp)
	sw $t0, -29788($fp)
	lw $t0, -29788($fp)
	sw $t0, -12036($fp)
	lw $t0, -12036($fp)
	sw $t0, -29792($fp)
	addi $t0, $fp, -1004
	sw $t0, -29796($fp)
	lw $t0, -9876($fp)
	sw $t0, -29800($fp)
	li $t0, 4
	lw $t1, -29800($fp)
	mul $t0, $t0, $t1
	sw $t0, -29804($fp)
	lw $t0, -29804($fp)
	lw $t1, -29796($fp)
	add $t0, $t0, $t1
	sw $t0, -29808($fp)
	lw $t0, -29808($fp)
	lw $t1, 0($t0)
	sw $t1, -29812($fp)
	addi $sp, $sp, -4
	lw $t0, -29772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -29780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -29784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -29792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -29812($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -29816($fp)
	addi $sp, $sp, 24
	li $t0, 4
	lw $t1, -29816($fp)
	mul $t0, $t0, $t1
	sw $t0, -29820($fp)
	lw $t0, -29820($fp)
	lw $t1, -29768($fp)
	add $t0, $t0, $t1
	sw $t0, -29824($fp)
	lw $t0, -29824($fp)
	lw $t1, 0($t0)
	sw $t1, -29828($fp)
	li $t0, 0
	lw $t1, -29828($fp)
	sub $t0, $t0, $t1
	sw $t0, -29832($fp)
	j label1412
label1414:
label1457:
	li $t0, 21528
	sw $t0, -29836($fp)
	lw $t1, -29836($fp)
	li $t2, 0
	bne $t1, $t2, label1458
	j label1459
label1458:
	li $t0, 0
	sw $t0, -29840($fp)
	addi $t0, $fp, -128
	sw $t0, -29844($fp)
	lw $t0, -12732($fp)
	sw $t0, -29848($fp)
	lw $t0, -29848($fp)
	sw $t0, -9888($fp)
	lw $t0, -9888($fp)
	sw $t0, -29852($fp)
	li $t0, 4
	lw $t1, -29852($fp)
	mul $t0, $t0, $t1
	sw $t0, -29856($fp)
	lw $t0, -29856($fp)
	lw $t1, -29844($fp)
	add $t0, $t0, $t1
	sw $t0, -29860($fp)
	lw $t0, -29860($fp)
	lw $t1, 0($t0)
	sw $t1, -29864($fp)
	li $t0, 46546
	sw $t0, -29868($fp)
	lw $t0, -11040($fp)
	sw $t0, -29872($fp)
	li $t0, 0
	sw $t0, -29876($fp)
	li $t0, 0
	sw $t0, -29880($fp)
	lw $t0, -8988($fp)
	sw $t0, -29884($fp)
	lw $t0, -6696($fp)
	sw $t0, -29888($fp)
	lw $t1, -29884($fp)
	lw $t2, -29888($fp)
	bne $t1, $t2, label1465
	j label1466
label1465:
	li $t0, 1
	sw $t0, -29880($fp)
label1466:
	li $t0, 19559
	sw $t0, -29892($fp)
	lw $t1, -29880($fp)
	lw $t2, -29892($fp)
	beq $t1, $t2, label1463
	j label1464
label1463:
	li $t0, 1
	sw $t0, -29876($fp)
label1464:
	lw $t0, -3912($fp)
	sw $t0, -29896($fp)
	li $t0, 0
	lw $t1, -29896($fp)
	sub $t0, $t0, $t1
	sw $t0, -29900($fp)
	li $t0, 22290
	sw $t0, -29904($fp)
	lw $t0, -29904($fp)
	sw $t0, -12972($fp)
	lw $t0, -12972($fp)
	sw $t0, -29908($fp)
	addi $sp, $sp, -4
	lw $t0, -29868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -29872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -29876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -29900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -29908($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -29912($fp)
	addi $sp, $sp, 24
	li $t0, 9823
	sw $t0, -29916($fp)
	lw $t0, -29912($fp)
	lw $t1, -29916($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -29920($fp)
	lw $t0, -29864($fp)
	lw $t1, -29920($fp)
	add $t0, $t0, $t1
	sw $t0, -29924($fp)
	lw $t1, -29924($fp)
	li $t2, 0
	bne $t1, $t2, label1462
	j label1461
label1462:
	li $t0, 48731
	sw $t0, -29928($fp)
	lw $t0, -5844($fp)
	sw $t0, -29932($fp)
	li $t0, 33776
	sw $t0, -29936($fp)
	lw $t0, -29932($fp)
	lw $t1, -29936($fp)
	sub $t0, $t0, $t1
	sw $t0, -29940($fp)
	lw $t1, -29928($fp)
	lw $t2, -29940($fp)
	beq $t1, $t2, label1460
	j label1461
label1460:
	li $t0, 1
	sw $t0, -29840($fp)
label1461:
	lw $ra, -4($fp)
	lw $v0, -29840($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -29944($fp)
	li $t0, 0
	sw $t0, -29948($fp)
	lw $t0, -7488($fp)
	sw $t0, -29952($fp)
	lw $t1, -29952($fp)
	li $t2, 0
	bne $t1, $t2, label1473
	j label1472
label1473:
	li $t0, 9301
	sw $t0, -29956($fp)
	lw $t1, -29956($fp)
	li $t2, 0
	bne $t1, $t2, label1470
	j label1472
label1472:
	li $t0, 46521
	sw $t0, -29960($fp)
	lw $t1, -29960($fp)
	li $t2, 0
	bne $t1, $t2, label1470
	j label1471
label1470:
	li $t0, 1
	sw $t0, -29948($fp)
label1471:
	li $t0, 0
	sw $t0, -29964($fp)
	lw $t0, -10248($fp)
	sw $t0, -29968($fp)
	li $t0, 0
	lw $t1, -29968($fp)
	sub $t0, $t0, $t1
	sw $t0, -29972($fp)
	lw $t1, -29972($fp)
	li $t2, 0
	bne $t1, $t2, label1476
	j label1475
label1476:
	li $t0, 8314
	sw $t0, -29976($fp)
	lw $t1, -29976($fp)
	li $t2, 0
	bne $t1, $t2, label1474
	j label1475
label1474:
	li $t0, 1
	sw $t0, -29964($fp)
label1475:
	li $t0, 0
	sw $t0, -29980($fp)
	addi $t0, $fp, -1004
	sw $t0, -29984($fp)
	li $t0, 0
	sw $t0, -29988($fp)
	li $t0, 4
	lw $t1, -29988($fp)
	mul $t0, $t0, $t1
	sw $t0, -29992($fp)
	lw $t0, -29992($fp)
	lw $t1, -29984($fp)
	add $t0, $t0, $t1
	sw $t0, -29996($fp)
	lw $t0, -29996($fp)
	lw $t1, 0($t0)
	sw $t1, -30000($fp)
	lw $t0, -10092($fp)
	sw $t0, -30004($fp)
	lw $t1, -30000($fp)
	lw $t2, -30004($fp)
	blt $t1, $t2, label1477
	j label1478
label1477:
	li $t0, 1
	sw $t0, -29980($fp)
label1478:
	li $t0, 0
	sw $t0, -30008($fp)
	li $t0, 0
	sw $t0, -30012($fp)
	lw $t0, -13044($fp)
	sw $t0, -30016($fp)
	lw $t0, -5556($fp)
	sw $t0, -30020($fp)
	lw $t1, -30016($fp)
	lw $t2, -30020($fp)
	blt $t1, $t2, label1481
	j label1482
label1481:
	li $t0, 1
	sw $t0, -30012($fp)
label1482:
	li $t0, 20175
	sw $t0, -30024($fp)
	lw $t1, -30012($fp)
	lw $t2, -30024($fp)
	ble $t1, $t2, label1479
	j label1480
label1479:
	li $t0, 1
	sw $t0, -30008($fp)
label1480:
	li $t0, 0
	sw $t0, -30028($fp)
	lw $t0, -9900($fp)
	sw $t0, -30032($fp)
	li $t0, 21138
	sw $t0, -30036($fp)
	lw $t0, -30032($fp)
	lw $t1, -30036($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -30040($fp)
	lw $t0, -9912($fp)
	sw $t0, -30044($fp)
	lw $t1, -30040($fp)
	lw $t2, -30044($fp)
	bge $t1, $t2, label1483
	j label1484
label1483:
	li $t0, 1
	sw $t0, -30028($fp)
label1484:
	addi $sp, $sp, -4
	lw $t0, -29948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -29964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -29980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -30008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -30028($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -30048($fp)
	addi $sp, $sp, 24
	lw $t0, -2340($fp)
	sw $t0, -30052($fp)
	lw $t0, -30048($fp)
	lw $t1, -30052($fp)
	add $t0, $t0, $t1
	sw $t0, -30056($fp)
	lw $t1, -30056($fp)
	li $t2, 0
	bne $t1, $t2, label1467
	j label1469
label1469:
	addi $t0, $fp, -1020
	sw $t0, -30060($fp)
	li $t0, 3
	sw $t0, -30064($fp)
	li $t0, 4
	lw $t1, -30064($fp)
	mul $t0, $t0, $t1
	sw $t0, -30068($fp)
	lw $t0, -30068($fp)
	lw $t1, -30060($fp)
	add $t0, $t0, $t1
	sw $t0, -30072($fp)
	lw $t0, -30072($fp)
	lw $t1, 0($t0)
	sw $t1, -30076($fp)
	li $t0, 0
	lw $t1, -30076($fp)
	sub $t0, $t0, $t1
	sw $t0, -30080($fp)
	lw $t0, -11976($fp)
	sw $t0, -30084($fp)
	li $t0, 0
	lw $t1, -30084($fp)
	sub $t0, $t0, $t1
	sw $t0, -30088($fp)
	lw $t0, -30080($fp)
	lw $t1, -30088($fp)
	add $t0, $t0, $t1
	sw $t0, -30092($fp)
	lw $t1, -30092($fp)
	li $t2, 0
	bne $t1, $t2, label1467
	j label1468
label1467:
	li $t0, 1
	sw $t0, -29944($fp)
label1468:
	j label1457
label1459:
	addi $t0, $fp, -28984
	sw $t0, -30096($fp)
	li $t0, 0
	sw $t0, -30100($fp)
	li $t0, 4
	lw $t1, -30100($fp)
	mul $t0, $t0, $t1
	sw $t0, -30104($fp)
	lw $t0, -30104($fp)
	lw $t1, -30096($fp)
	add $t0, $t0, $t1
	sw $t0, -30108($fp)
	lw $t0, -30108($fp)
	lw $t1, 0($t0)
	sw $t1, -30112($fp)
	lw $t0, -30112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28984
	sw $t0, -30116($fp)
	li $t0, 1
	sw $t0, -30120($fp)
	li $t0, 4
	lw $t1, -30120($fp)
	mul $t0, $t0, $t1
	sw $t0, -30124($fp)
	lw $t0, -30124($fp)
	lw $t1, -30116($fp)
	add $t0, $t0, $t1
	sw $t0, -30128($fp)
	lw $t0, -30128($fp)
	lw $t1, 0($t0)
	sw $t1, -30132($fp)
	lw $t0, -30132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28984
	sw $t0, -30136($fp)
	li $t0, 2
	sw $t0, -30140($fp)
	li $t0, 4
	lw $t1, -30140($fp)
	mul $t0, $t0, $t1
	sw $t0, -30144($fp)
	lw $t0, -30144($fp)
	lw $t1, -30136($fp)
	add $t0, $t0, $t1
	sw $t0, -30148($fp)
	lw $t0, -30148($fp)
	lw $t1, 0($t0)
	sw $t1, -30152($fp)
	lw $t0, -30152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -29064($fp)
	sw $t0, -30156($fp)
	lw $t0, -30156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -29076($fp)
	sw $t0, -30160($fp)
	lw $t0, -30160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -29088($fp)
	sw $t0, -30164($fp)
	lw $t0, -30164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -29100($fp)
	sw $t0, -30168($fp)
	lw $t0, -30168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -29112($fp)
	sw $t0, -30172($fp)
	lw $t0, -30172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -29124($fp)
	sw $t0, -30176($fp)
	lw $t0, -30176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -29136($fp)
	sw $t0, -30180($fp)
	lw $t0, -30180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -29136($fp)
	sw $t0, -30184($fp)
	lw $ra, -4($fp)
	lw $v0, -30184($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1364
label1366:
	j label1361
label1360:
	li $t0, 48044
	sw $t0, -30188($fp)
	li $t0, 0
	sw $t0, -30192($fp)
	addi $t0, $fp, -1228
	sw $t0, -30196($fp)
	lw $t0, -3588($fp)
	sw $t0, -30200($fp)
	li $t0, 4
	lw $t1, -30200($fp)
	mul $t0, $t0, $t1
	sw $t0, -30204($fp)
	lw $t0, -30204($fp)
	lw $t1, -30196($fp)
	add $t0, $t0, $t1
	sw $t0, -30208($fp)
	lw $t0, -30208($fp)
	lw $t1, 0($t0)
	sw $t1, -30212($fp)
	lw $t1, -30212($fp)
	li $t2, 0
	bne $t1, $t2, label1489
	j label1488
label1488:
	li $t0, 1
	sw $t0, -30192($fp)
label1489:
	lw $t0, -30188($fp)
	lw $t1, -30192($fp)
	sub $t0, $t0, $t1
	sw $t0, -30216($fp)
	lw $t1, -30216($fp)
	li $t2, 0
	bne $t1, $t2, label1485
	j label1486
label1485:
label1490:
	li $t0, 0
	sw $t0, -30220($fp)
	li $t0, 53295
	sw $t0, -30224($fp)
	lw $t1, -30224($fp)
	li $t2, 0
	bne $t1, $t2, label1493
	j label1494
label1493:
	li $t0, 1
	sw $t0, -30220($fp)
label1494:
	lw $t0, -11856($fp)
	sw $t0, -30228($fp)
	lw $t0, -30220($fp)
	lw $t1, -30228($fp)
	mul $t0, $t0, $t1
	sw $t0, -30232($fp)
	li $t0, 0
	lw $t1, -30232($fp)
	sub $t0, $t0, $t1
	sw $t0, -30236($fp)
	li $t0, 0
	sw $t0, -30240($fp)
	lw $t0, -10200($fp)
	sw $t0, -30244($fp)
	lw $t1, -30244($fp)
	li $t2, 0
	bne $t1, $t2, label1496
	j label1495
label1495:
	li $t0, 1
	sw $t0, -30240($fp)
label1496:
	lw $t1, -30236($fp)
	lw $t2, -30240($fp)
	bgt $t1, $t2, label1491
	j label1492
label1491:
	li $t0, 0
	sw $t0, -30248($fp)
	li $t0, 1008
	sw $t0, -30252($fp)
	lw $t0, -10212($fp)
	sw $t0, -30256($fp)
	lw $t0, -30252($fp)
	lw $t1, -30256($fp)
	add $t0, $t0, $t1
	sw $t0, -30260($fp)
	lw $t0, -10224($fp)
	sw $t0, -30264($fp)
	lw $t1, -30260($fp)
	lw $t2, -30264($fp)
	bne $t1, $t2, label1499
	j label1498
label1499:
	lw $t0, -10236($fp)
	sw $t0, -30268($fp)
	li $t0, 65111
	sw $t0, -30272($fp)
	lw $t1, -30268($fp)
	lw $t2, -30272($fp)
	beq $t1, $t2, label1497
	j label1498
label1497:
	li $t0, 1
	sw $t0, -30248($fp)
label1498:
	lw $t0, -30248($fp)
	sw $t0, -7128($fp)
	lw $t0, -7128($fp)
	sw $t0, -30276($fp)
	lw $ra, -4($fp)
	lw $v0, -30276($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1490
label1492:
	j label1487
label1486:
	li $t0, 44466
	sw $t0, -30280($fp)
	li $t0, 0
	lw $t1, -30280($fp)
	sub $t0, $t0, $t1
	sw $t0, -30284($fp)
	li $t0, 0
	sw $t0, -30288($fp)
	li $t0, 0
	sw $t0, -30292($fp)
	lw $t0, -9348($fp)
	sw $t0, -30296($fp)
	li $t0, 13764
	sw $t0, -30300($fp)
	lw $t1, -30296($fp)
	lw $t2, -30300($fp)
	ble $t1, $t2, label1505
	j label1506
label1505:
	li $t0, 1
	sw $t0, -30292($fp)
label1506:
	addi $t0, $fp, -484
	sw $t0, -30304($fp)
	lw $t0, -13008($fp)
	sw $t0, -30308($fp)
	li $t0, 4
	lw $t1, -30308($fp)
	mul $t0, $t0, $t1
	sw $t0, -30312($fp)
	lw $t0, -30312($fp)
	lw $t1, -30304($fp)
	add $t0, $t0, $t1
	sw $t0, -30316($fp)
	lw $t0, -30316($fp)
	lw $t1, 0($t0)
	sw $t1, -30320($fp)
	li $t0, 45031
	sw $t0, -30324($fp)
	lw $t0, -30320($fp)
	lw $t1, -30324($fp)
	mul $t0, $t0, $t1
	sw $t0, -30328($fp)
	addi $t0, $fp, -1052
	sw $t0, -30332($fp)
	lw $t0, -3576($fp)
	sw $t0, -30336($fp)
	li $t0, 4
	lw $t1, -30336($fp)
	mul $t0, $t0, $t1
	sw $t0, -30340($fp)
	lw $t0, -30340($fp)
	lw $t1, -30332($fp)
	add $t0, $t0, $t1
	sw $t0, -30344($fp)
	lw $t0, -30344($fp)
	lw $t1, 0($t0)
	sw $t1, -30348($fp)
	li $t0, 30406
	sw $t0, -30352($fp)
	lw $t0, -30348($fp)
	lw $t1, -30352($fp)
	mul $t0, $t0, $t1
	sw $t0, -30356($fp)
	li $t0, 9297
	sw $t0, -30360($fp)
	li $t0, 50810
	sw $t0, -30364($fp)
	li $t0, 3795
	sw $t0, -30368($fp)
	lw $t0, -30364($fp)
	lw $t1, -30368($fp)
	mul $t0, $t0, $t1
	sw $t0, -30372($fp)
	lw $t0, -10296($fp)
	sw $t0, -30376($fp)
	lw $t0, -30372($fp)
	lw $t1, -30376($fp)
	sub $t0, $t0, $t1
	sw $t0, -30380($fp)
	addi $t0, $fp, -412
	sw $t0, -30384($fp)
	lw $t0, -7128($fp)
	sw $t0, -30388($fp)
	li $t0, 4
	lw $t1, -30388($fp)
	mul $t0, $t0, $t1
	sw $t0, -30392($fp)
	lw $t0, -30392($fp)
	lw $t1, -30384($fp)
	add $t0, $t0, $t1
	sw $t0, -30396($fp)
	lw $t0, -30396($fp)
	lw $t1, 0($t0)
	sw $t1, -30400($fp)
	lw $t0, -6096($fp)
	sw $t0, -30404($fp)
	lw $t0, -30400($fp)
	lw $t1, -30404($fp)
	add $t0, $t0, $t1
	sw $t0, -30408($fp)
	lw $t0, -9324($fp)
	sw $t0, -30412($fp)
	li $t0, 0
	sw $t0, -30416($fp)
	li $t0, 0
	sw $t0, -30420($fp)
	li $t0, 35554
	sw $t0, -30424($fp)
	lw $t0, -7068($fp)
	sw $t0, -30428($fp)
	lw $t1, -30424($fp)
	lw $t2, -30428($fp)
	bne $t1, $t2, label1509
	j label1510
label1509:
	li $t0, 1
	sw $t0, -30420($fp)
label1510:
	li $t0, 53694
	sw $t0, -30432($fp)
	lw $t1, -30420($fp)
	lw $t2, -30432($fp)
	beq $t1, $t2, label1507
	j label1508
label1507:
	li $t0, 1
	sw $t0, -30416($fp)
label1508:
	li $t0, 2079
	sw $t0, -30436($fp)
	lw $t0, -10272($fp)
	sw $t0, -30440($fp)
	lw $t0, -30436($fp)
	lw $t1, -30440($fp)
	mul $t0, $t0, $t1
	sw $t0, -30444($fp)
	lw $t0, -3036($fp)
	sw $t0, -30448($fp)
	lw $t0, -30444($fp)
	lw $t1, -30448($fp)
	sub $t0, $t0, $t1
	sw $t0, -30452($fp)
	li $t0, 0
	sw $t0, -30456($fp)
	lw $t0, -10092($fp)
	sw $t0, -30460($fp)
	li $t0, 43871
	sw $t0, -30464($fp)
	lw $t1, -30460($fp)
	lw $t2, -30464($fp)
	ble $t1, $t2, label1511
	j label1512
label1511:
	li $t0, 1
	sw $t0, -30456($fp)
label1512:
	addi $sp, $sp, -4
	lw $t0, -30408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -30412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -30416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -30452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -30456($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -30468($fp)
	addi $sp, $sp, 24
	lw $t0, -10284($fp)
	sw $t0, -30472($fp)
	lw $t0, -30468($fp)
	lw $t1, -30472($fp)
	mul $t0, $t0, $t1
	sw $t0, -30476($fp)
	li $t0, 0
	sw $t0, -30480($fp)
	li $t0, 21581
	sw $t0, -30484($fp)
	li $t0, 48056
	sw $t0, -30488($fp)
	lw $t1, -30484($fp)
	lw $t2, -30488($fp)
	bne $t1, $t2, label1515
	j label1514
label1515:
	li $t0, 54544
	sw $t0, -30492($fp)
	lw $t1, -30492($fp)
	li $t2, 0
	bne $t1, $t2, label1513
	j label1514
label1513:
	li $t0, 1
	sw $t0, -30480($fp)
label1514:
	lw $t0, -1404($fp)
	sw $t0, -30496($fp)
	li $t0, 33016
	sw $t0, -30500($fp)
	lw $t0, -30496($fp)
	lw $t1, -30500($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -30504($fp)
	addi $sp, $sp, -4
	lw $t0, -30360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -30380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -30476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -30480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -30504($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -30508($fp)
	addi $sp, $sp, 24
	lw $t0, -5880($fp)
	sw $t0, -30512($fp)
	lw $t0, -30508($fp)
	lw $t1, -30512($fp)
	sub $t0, $t0, $t1
	sw $t0, -30516($fp)
	li $t0, 33980
	sw $t0, -30520($fp)
	li $t0, 0
	sw $t0, -30524($fp)
	li $t0, 34630
	sw $t0, -30528($fp)
	li $t0, 0
	lw $t1, -30528($fp)
	sub $t0, $t0, $t1
	sw $t0, -30532($fp)
	lw $t1, -30532($fp)
	li $t2, 0
	bne $t1, $t2, label1516
	j label1518
label1518:
	lw $t0, -10260($fp)
	sw $t0, -30536($fp)
	lw $t1, -30536($fp)
	li $t2, 0
	bne $t1, $t2, label1516
	j label1517
label1516:
	li $t0, 1
	sw $t0, -30524($fp)
label1517:
	li $t0, 0
	sw $t0, -30540($fp)
	li $t0, 2469
	sw $t0, -30544($fp)
	lw $t1, -30544($fp)
	li $t2, 0
	bne $t1, $t2, label1519
	j label1521
label1521:
	li $t0, 62077
	sw $t0, -30548($fp)
	lw $t1, -30548($fp)
	li $t2, 0
	bne $t1, $t2, label1519
	j label1520
label1519:
	li $t0, 1
	sw $t0, -30540($fp)
label1520:
	li $t0, 0
	sw $t0, -30552($fp)
	li $t0, 0
	sw $t0, -30556($fp)
	li $t0, 53906
	sw $t0, -30560($fp)
	lw $t1, -30560($fp)
	li $t2, 0
	bne $t1, $t2, label1525
	j label1524
label1524:
	li $t0, 1
	sw $t0, -30556($fp)
label1525:
	li $t0, 51323
	sw $t0, -30564($fp)
	lw $t1, -30556($fp)
	lw $t2, -30564($fp)
	bge $t1, $t2, label1522
	j label1523
label1522:
	li $t0, 1
	sw $t0, -30552($fp)
label1523:
	addi $sp, $sp, -4
	lw $t0, -30516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -30520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -30524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -30540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -30552($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -30568($fp)
	addi $sp, $sp, 24
	li $t0, 5450
	sw $t0, -30572($fp)
	lw $t0, -30568($fp)
	lw $t1, -30572($fp)
	sub $t0, $t0, $t1
	sw $t0, -30576($fp)
	li $t0, 0
	sw $t0, -30580($fp)
	lw $t0, -10248($fp)
	sw $t0, -30584($fp)
	lw $t1, -30584($fp)
	li $t2, 0
	bne $t1, $t2, label1527
	j label1526
label1526:
	li $t0, 1
	sw $t0, -30580($fp)
label1527:
	li $t0, 15254
	sw $t0, -30588($fp)
	lw $t0, -30580($fp)
	lw $t1, -30588($fp)
	mul $t0, $t0, $t1
	sw $t0, -30592($fp)
	addi $sp, $sp, -4
	lw $t0, -30292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -30328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -30356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -30576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -30592($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -30596($fp)
	addi $sp, $sp, 24
	lw $t1, -30596($fp)
	li $t2, 0
	bne $t1, $t2, label1504
	j label1503
label1503:
	li $t0, 1
	sw $t0, -30288($fp)
label1504:
	lw $t0, -30284($fp)
	lw $t1, -30288($fp)
	add $t0, $t0, $t1
	sw $t0, -30600($fp)
	lw $t1, -30600($fp)
	li $t2, 0
	bne $t1, $t2, label1500
	j label1501
label1500:
	li $t0, 0
	sw $t0, -30604($fp)
	lw $t0, -10500($fp)
	sw $t0, -30608($fp)
	li $t0, 39708
	sw $t0, -30612($fp)
	lw $t0, -30608($fp)
	lw $t1, -30612($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -30616($fp)
	li $t0, 0
	sw $t0, -30620($fp)
	li $t0, 26016
	sw $t0, -30624($fp)
	lw $t1, -30624($fp)
	li $t2, 0
	bne $t1, $t2, label1534
	j label1533
label1533:
	li $t0, 1
	sw $t0, -30620($fp)
label1534:
	lw $t0, -30616($fp)
	lw $t1, -30620($fp)
	mul $t0, $t0, $t1
	sw $t0, -30628($fp)
	li $t0, 0
	lw $t1, -30628($fp)
	sub $t0, $t0, $t1
	sw $t0, -30632($fp)
	lw $t0, -11040($fp)
	sw $t0, -30636($fp)
	li $t0, 0
	lw $t1, -30636($fp)
	sub $t0, $t0, $t1
	sw $t0, -30640($fp)
	li $t0, 0
	lw $t1, -30640($fp)
	sub $t0, $t0, $t1
	sw $t0, -30644($fp)
	lw $t1, -30632($fp)
	lw $t2, -30644($fp)
	bge $t1, $t2, label1531
	j label1532
label1531:
	li $t0, 1
	sw $t0, -30604($fp)
label1532:
	lw $t0, -7224($fp)
	sw $t0, -30648($fp)
	lw $t0, -7152($fp)
	sw $t0, -30652($fp)
	lw $t0, -30648($fp)
	lw $t1, -30652($fp)
	sub $t0, $t0, $t1
	sw $t0, -30656($fp)
	lw $t1, -30604($fp)
	lw $t2, -30656($fp)
	ble $t1, $t2, label1528
	j label1529
label1528:
	li $t0, 9448
	sw $t0, -30660($fp)
	lw $t1, -30660($fp)
	li $t2, 0
	bne $t1, $t2, label1535
	j label1536
label1535:
	li $t0, 59983
	sw $t0, -30664($fp)
	j label1537
label1536:
	addi $t0, $fp, -1084
	sw $t0, -30668($fp)
	li $t0, 0
	sw $t0, -30672($fp)
	li $t0, 8524
	sw $t0, -30676($fp)
	lw $t0, -3312($fp)
	sw $t0, -30680($fp)
	lw $t0, -30676($fp)
	lw $t1, -30680($fp)
	add $t0, $t0, $t1
	sw $t0, -30684($fp)
	lw $t0, -2028($fp)
	sw $t0, -30688($fp)
	lw $t1, -30684($fp)
	lw $t2, -30688($fp)
	bge $t1, $t2, label1538
	j label1539
label1538:
	li $t0, 1
	sw $t0, -30672($fp)
label1539:
	li $t0, 4
	lw $t1, -30672($fp)
	mul $t0, $t0, $t1
	sw $t0, -30692($fp)
	lw $t0, -30692($fp)
	lw $t1, -30668($fp)
	add $t0, $t0, $t1
	sw $t0, -30696($fp)
	lw $t0, -30696($fp)
	lw $t1, 0($t0)
	sw $t1, -30700($fp)
	li $t0, 62743
	sw $t0, -30704($fp)
	li $t0, 0
	lw $t1, -30704($fp)
	sub $t0, $t0, $t1
	sw $t0, -30708($fp)
	lw $t0, -30700($fp)
	lw $t1, -30708($fp)
	mul $t0, $t0, $t1
	sw $t0, -30712($fp)
label1537:
	j label1530
label1529:
label1540:
	li $t0, 13178
	sw $t0, -30716($fp)
	li $t0, 0
	sw $t0, -30720($fp)
	li $t0, 62005
	sw $t0, -30724($fp)
	lw $t0, -9012($fp)
	sw $t0, -30728($fp)
	lw $t0, -30724($fp)
	lw $t1, -30728($fp)
	add $t0, $t0, $t1
	sw $t0, -30732($fp)
	li $t0, 27461
	sw $t0, -30736($fp)
	lw $t1, -30732($fp)
	lw $t2, -30736($fp)
	beq $t1, $t2, label1543
	j label1544
label1543:
	li $t0, 1
	sw $t0, -30720($fp)
label1544:
	addi $t0, $fp, -1120
	sw $t0, -30740($fp)
	li $t0, 8
	sw $t0, -30744($fp)
	li $t0, 4
	lw $t1, -30744($fp)
	mul $t0, $t0, $t1
	sw $t0, -30748($fp)
	lw $t0, -30748($fp)
	lw $t1, -30740($fp)
	add $t0, $t0, $t1
	sw $t0, -30752($fp)
	lw $t0, -30752($fp)
	lw $t1, 0($t0)
	sw $t1, -30756($fp)
	li $t0, 0
	sw $t0, -30760($fp)
	li $t0, 8099
	sw $t0, -30764($fp)
	lw $t0, -10716($fp)
	sw $t0, -30768($fp)
	lw $t1, -30764($fp)
	lw $t2, -30768($fp)
	bne $t1, $t2, label1545
	j label1546
label1545:
	li $t0, 1
	sw $t0, -30760($fp)
label1546:
	li $t0, 0
	sw $t0, -30772($fp)
	li $t0, 0
	sw $t0, -30776($fp)
	lw $t0, -10704($fp)
	sw $t0, -30780($fp)
	li $t0, 60991
	sw $t0, -30784($fp)
	lw $t1, -30780($fp)
	lw $t2, -30784($fp)
	bgt $t1, $t2, label1549
	j label1550
label1549:
	li $t0, 1
	sw $t0, -30776($fp)
label1550:
	lw $t0, -9900($fp)
	sw $t0, -30788($fp)
	lw $t1, -30776($fp)
	lw $t2, -30788($fp)
	ble $t1, $t2, label1547
	j label1548
label1547:
	li $t0, 1
	sw $t0, -30772($fp)
label1548:
	addi $sp, $sp, -4
	lw $t0, -30716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -30720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -30756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -30760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -30772($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -30792($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -30796($fp)
	lw $t0, -6108($fp)
	sw $t0, -30800($fp)
	lw $t1, -30800($fp)
	li $t2, 0
	bne $t1, $t2, label1551
	j label1552
label1551:
	li $t0, 1
	sw $t0, -30796($fp)
label1552:
	lw $t0, -30792($fp)
	lw $t1, -30796($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -30804($fp)
	lw $t1, -30804($fp)
	li $t2, 0
	bne $t1, $t2, label1541
	j label1542
label1541:
	li $t0, 58547
	sw $t0, -30808($fp)
	lw $t1, -30808($fp)
	li $t2, 0
	bne $t1, $t2, label1553
	j label1554
label1553:
	lw $t0, -6348($fp)
	sw $t0, -30812($fp)
	lw $ra, -4($fp)
	lw $v0, -30812($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1555
label1554:
	li $t0, 0
	sw $t0, -30816($fp)
	lw $t0, -10944($fp)
	sw $t0, -30820($fp)
	lw $t0, -10956($fp)
	sw $t0, -30824($fp)
	lw $t0, -30820($fp)
	lw $t1, -30824($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -30828($fp)
	li $t0, 0
	lw $t1, -30828($fp)
	sub $t0, $t0, $t1
	sw $t0, -30832($fp)
	lw $t0, -12768($fp)
	sw $t0, -30836($fp)
	lw $t1, -30832($fp)
	lw $t2, -30836($fp)
	blt $t1, $t2, label1556
	j label1557
label1556:
	li $t0, 1
	sw $t0, -30816($fp)
label1557:
label1555:
	j label1540
label1542:
label1530:
label1501:
label1487:
label1361:
	li $t0, 0
	sw $t0, -30840($fp)
	lw $t0, -13020($fp)
	sw $t0, -30844($fp)
	lw $t1, -30844($fp)
	li $t2, 0
	bne $t1, $t2, label1562
	j label1561
label1561:
	li $t0, 1
	sw $t0, -30840($fp)
label1562:
	addi $t0, $fp, -732
	sw $t0, -30848($fp)
	li $t0, 0
	sw $t0, -30852($fp)
	li $t0, 62091
	sw $t0, -30856($fp)
	lw $t1, -30856($fp)
	li $t2, 0
	bne $t1, $t2, label1565
	j label1564
label1565:
	lw $t0, -2676($fp)
	sw $t0, -30860($fp)
	lw $t1, -30860($fp)
	li $t2, 0
	bne $t1, $t2, label1563
	j label1564
label1563:
	li $t0, 1
	sw $t0, -30852($fp)
label1564:
	li $t0, 4
	lw $t1, -30852($fp)
	mul $t0, $t0, $t1
	sw $t0, -30864($fp)
	lw $t0, -30864($fp)
	lw $t1, -30848($fp)
	add $t0, $t0, $t1
	sw $t0, -30868($fp)
	lw $t0, -30868($fp)
	lw $t1, 0($t0)
	sw $t1, -30872($fp)
	lw $t0, -30840($fp)
	lw $t1, -30872($fp)
	mul $t0, $t0, $t1
	sw $t0, -30876($fp)
	lw $t1, -30876($fp)
	li $t2, 0
	bne $t1, $t2, label1558
	j label1559
label1558:
	li $t0, 0
	sw $t0, -30880($fp)
	lw $t0, -10968($fp)
	sw $t0, -30884($fp)
	lw $t1, -30884($fp)
	li $t2, 0
	bne $t1, $t2, label1569
	j label1570
label1569:
	li $t0, 1
	sw $t0, -30880($fp)
label1570:
	li $t0, 0
	sw $t0, -30888($fp)
	li $t0, 0
	sw $t0, -30892($fp)
	li $t0, 0
	sw $t0, -30896($fp)
	lw $t0, -3048($fp)
	sw $t0, -30900($fp)
	lw $t0, -11268($fp)
	sw $t0, -30904($fp)
	lw $t1, -30900($fp)
	lw $t2, -30904($fp)
	bne $t1, $t2, label1575
	j label1576
label1575:
	li $t0, 1
	sw $t0, -30896($fp)
label1576:
	lw $t0, -11280($fp)
	sw $t0, -30908($fp)
	lw $t1, -30896($fp)
	lw $t2, -30908($fp)
	bne $t1, $t2, label1573
	j label1574
label1573:
	li $t0, 1
	sw $t0, -30892($fp)
label1574:
	li $t0, 0
	sw $t0, -30912($fp)
	li $t0, 0
	sw $t0, -30916($fp)
	li $t0, 48867
	sw $t0, -30920($fp)
	lw $t0, -12168($fp)
	sw $t0, -30924($fp)
	lw $t1, -30920($fp)
	lw $t2, -30924($fp)
	blt $t1, $t2, label1579
	j label1580
label1579:
	li $t0, 1
	sw $t0, -30916($fp)
label1580:
	li $t0, 16062
	sw $t0, -30928($fp)
	lw $t1, -30916($fp)
	lw $t2, -30928($fp)
	blt $t1, $t2, label1577
	j label1578
label1577:
	li $t0, 1
	sw $t0, -30912($fp)
label1578:
	li $t0, 0
	sw $t0, -30932($fp)
	li $t0, 0
	sw $t0, -30936($fp)
	li $t0, 7963
	sw $t0, -30940($fp)
	li $t0, 42903
	sw $t0, -30944($fp)
	lw $t1, -30940($fp)
	lw $t2, -30944($fp)
	ble $t1, $t2, label1583
	j label1584
label1583:
	li $t0, 1
	sw $t0, -30936($fp)
label1584:
	lw $t0, -10992($fp)
	sw $t0, -30948($fp)
	lw $t1, -30936($fp)
	lw $t2, -30948($fp)
	bne $t1, $t2, label1581
	j label1582
label1581:
	li $t0, 1
	sw $t0, -30932($fp)
label1582:
	li $t0, 53411
	sw $t0, -30952($fp)
	lw $t0, -30952($fp)
	sw $t0, -12276($fp)
	lw $t0, -12276($fp)
	sw $t0, -30956($fp)
	li $t0, 0
	sw $t0, -30960($fp)
	addi $t0, $fp, -1152
	sw $t0, -30964($fp)
	li $t0, 6
	sw $t0, -30968($fp)
	li $t0, 4
	lw $t1, -30968($fp)
	mul $t0, $t0, $t1
	sw $t0, -30972($fp)
	lw $t0, -30972($fp)
	lw $t1, -30964($fp)
	add $t0, $t0, $t1
	sw $t0, -30976($fp)
	lw $t0, -30976($fp)
	lw $t1, 0($t0)
	sw $t1, -30980($fp)
	li $t0, 45695
	sw $t0, -30984($fp)
	lw $t1, -30980($fp)
	lw $t2, -30984($fp)
	ble $t1, $t2, label1585
	j label1586
label1585:
	li $t0, 1
	sw $t0, -30960($fp)
label1586:
	lw $t0, -3228($fp)
	sw $t0, -30988($fp)
	li $t0, 38958
	sw $t0, -30992($fp)
	lw $t0, -30988($fp)
	lw $t1, -30992($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -30996($fp)
	li $t0, 36247
	sw $t0, -31000($fp)
	lw $t0, -30996($fp)
	lw $t1, -31000($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -31004($fp)
	li $t0, 0
	sw $t0, -31008($fp)
	li $t0, 22482
	sw $t0, -31012($fp)
	li $t0, 0
	lw $t1, -31012($fp)
	sub $t0, $t0, $t1
	sw $t0, -31016($fp)
	lw $t1, -31016($fp)
	li $t2, 0
	bne $t1, $t2, label1589
	j label1588
label1589:
	li $t0, 19256
	sw $t0, -31020($fp)
	lw $t1, -31020($fp)
	li $t2, 0
	bne $t1, $t2, label1587
	j label1588
label1587:
	li $t0, 1
	sw $t0, -31008($fp)
label1588:
	li $t0, 0
	sw $t0, -31024($fp)
	lw $t0, -7164($fp)
	sw $t0, -31028($fp)
	li $t0, 0
	lw $t1, -31028($fp)
	sub $t0, $t0, $t1
	sw $t0, -31032($fp)
	lw $t1, -31032($fp)
	li $t2, 0
	bne $t1, $t2, label1592
	j label1591
label1592:
	li $t0, 59463
	sw $t0, -31036($fp)
	lw $t1, -31036($fp)
	li $t2, 0
	bne $t1, $t2, label1590
	j label1591
label1590:
	li $t0, 1
	sw $t0, -31024($fp)
label1591:
	lw $t0, -11052($fp)
	sw $t0, -31040($fp)
	lw $t0, -11064($fp)
	sw $t0, -31044($fp)
	lw $t0, -31040($fp)
	lw $t1, -31044($fp)
	add $t0, $t0, $t1
	sw $t0, -31048($fp)
	li $t0, 54385
	sw $t0, -31052($fp)
	lw $t0, -31048($fp)
	lw $t1, -31052($fp)
	sub $t0, $t0, $t1
	sw $t0, -31056($fp)
	li $t0, 0
	sw $t0, -31060($fp)
	li $t0, 50166
	sw $t0, -31064($fp)
	li $t0, 0
	sw $t0, -31068($fp)
	li $t0, 0
	sw $t0, -31072($fp)
	li $t0, 31758
	sw $t0, -31076($fp)
	lw $t1, -31076($fp)
	li $t2, 0
	bne $t1, $t2, label1600
	j label1599
label1600:
	lw $t0, -12024($fp)
	sw $t0, -31080($fp)
	lw $t1, -31080($fp)
	li $t2, 0
	bne $t1, $t2, label1598
	j label1599
label1598:
	li $t0, 1
	sw $t0, -31072($fp)
label1599:
	li $t0, 62007
	sw $t0, -31084($fp)
	lw $t0, -1788($fp)
	sw $t0, -31088($fp)
	lw $t0, -31084($fp)
	lw $t1, -31088($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -31092($fp)
	li $t0, 15036
	sw $t0, -31096($fp)
	lw $t0, -31096($fp)
	sw $t0, -5184($fp)
	lw $t0, -5184($fp)
	sw $t0, -31100($fp)
	lw $t0, -11040($fp)
	sw $t0, -31104($fp)
	lw $t0, -31104($fp)
	sw $t0, -2004($fp)
	lw $t0, -2004($fp)
	sw $t0, -31108($fp)
	li $t0, 0
	sw $t0, -31112($fp)
	lw $t0, -3420($fp)
	sw $t0, -31116($fp)
	li $t0, 18136
	sw $t0, -31120($fp)
	lw $t0, -31116($fp)
	lw $t1, -31120($fp)
	mul $t0, $t0, $t1
	sw $t0, -31124($fp)
	li $t0, 29678
	sw $t0, -31128($fp)
	lw $t1, -31124($fp)
	lw $t2, -31128($fp)
	bge $t1, $t2, label1601
	j label1602
label1601:
	li $t0, 1
	sw $t0, -31112($fp)
label1602:
	addi $sp, $sp, -4
	lw $t0, -31072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31112($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -31132($fp)
	addi $sp, $sp, 24
	lw $t1, -31132($fp)
	li $t2, 0
	bne $t1, $t2, label1597
	j label1596
label1597:
	li $t0, 50590
	sw $t0, -31136($fp)
	lw $t1, -31136($fp)
	li $t2, 0
	bne $t1, $t2, label1595
	j label1596
label1595:
	li $t0, 1
	sw $t0, -31068($fp)
label1596:
	li $t0, 0
	sw $t0, -31140($fp)
	li $t0, 47158
	sw $t0, -31144($fp)
	lw $t1, -31144($fp)
	li $t2, 0
	bne $t1, $t2, label1606
	j label1604
label1606:
	li $t0, 26027
	sw $t0, -31148($fp)
	lw $t1, -31148($fp)
	li $t2, 0
	bne $t1, $t2, label1605
	j label1604
label1605:
	lw $t0, -11028($fp)
	sw $t0, -31152($fp)
	lw $t1, -31152($fp)
	li $t2, 0
	bne $t1, $t2, label1603
	j label1604
label1603:
	li $t0, 1
	sw $t0, -31140($fp)
label1604:
	li $t0, 0
	sw $t0, -31156($fp)
	lw $t0, -9528($fp)
	sw $t0, -31160($fp)
	li $t0, 0
	lw $t1, -31160($fp)
	sub $t0, $t0, $t1
	sw $t0, -31164($fp)
	lw $t1, -31164($fp)
	li $t2, 0
	bne $t1, $t2, label1608
	j label1607
label1607:
	li $t0, 1
	sw $t0, -31156($fp)
label1608:
	li $t0, 0
	sw $t0, -31168($fp)
	addi $t0, $fp, -360
	sw $t0, -31172($fp)
	lw $t0, -11004($fp)
	sw $t0, -31176($fp)
	li $t0, 4
	lw $t1, -31176($fp)
	mul $t0, $t0, $t1
	sw $t0, -31180($fp)
	lw $t0, -31180($fp)
	lw $t1, -31172($fp)
	add $t0, $t0, $t1
	sw $t0, -31184($fp)
	lw $t0, -31184($fp)
	lw $t1, 0($t0)
	sw $t1, -31188($fp)
	lw $t0, -11016($fp)
	sw $t0, -31192($fp)
	lw $t1, -31188($fp)
	lw $t2, -31192($fp)
	ble $t1, $t2, label1609
	j label1610
label1609:
	li $t0, 1
	sw $t0, -31168($fp)
label1610:
	addi $sp, $sp, -4
	lw $t0, -31064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31168($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -31196($fp)
	addi $sp, $sp, 24
	li $t0, 17032
	sw $t0, -31200($fp)
	lw $t1, -31196($fp)
	lw $t2, -31200($fp)
	blt $t1, $t2, label1593
	j label1594
label1593:
	li $t0, 1
	sw $t0, -31060($fp)
label1594:
	addi $sp, $sp, -4
	lw $t0, -31004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31060($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -31204($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -31208($fp)
	addi $t0, $fp, -1296
	sw $t0, -31212($fp)
	lw $t0, -4320($fp)
	sw $t0, -31216($fp)
	li $t0, 4
	lw $t1, -31216($fp)
	mul $t0, $t0, $t1
	sw $t0, -31220($fp)
	lw $t0, -31220($fp)
	lw $t1, -31212($fp)
	add $t0, $t0, $t1
	sw $t0, -31224($fp)
	lw $t0, -31224($fp)
	lw $t1, 0($t0)
	sw $t1, -31228($fp)
	lw $t1, -31228($fp)
	li $t2, 0
	bne $t1, $t2, label1611
	j label1613
label1613:
	lw $t0, -3348($fp)
	sw $t0, -31232($fp)
	lw $t1, -31232($fp)
	li $t2, 0
	bne $t1, $t2, label1611
	j label1612
label1611:
	li $t0, 1
	sw $t0, -31208($fp)
label1612:
	addi $sp, $sp, -4
	lw $t0, -30932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -30956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -30960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31208($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -31236($fp)
	addi $sp, $sp, 24
	lw $t0, -7068($fp)
	sw $t0, -31240($fp)
	lw $t0, -31236($fp)
	lw $t1, -31240($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -31244($fp)
	lw $t0, -7128($fp)
	sw $t0, -31248($fp)
	lw $t0, -10980($fp)
	sw $t0, -31252($fp)
	lw $t0, -31248($fp)
	lw $t1, -31252($fp)
	add $t0, $t0, $t1
	sw $t0, -31256($fp)
	lw $t0, -10992($fp)
	sw $t0, -31260($fp)
	lw $t0, -31256($fp)
	lw $t1, -31260($fp)
	sub $t0, $t0, $t1
	sw $t0, -31264($fp)
	lw $t0, -12168($fp)
	sw $t0, -31268($fp)
	addi $sp, $sp, -4
	lw $t0, -30892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -30912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31268($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -31272($fp)
	addi $sp, $sp, 24
	lw $t1, -31272($fp)
	li $t2, 0
	bne $t1, $t2, label1572
	j label1571
label1571:
	li $t0, 1
	sw $t0, -30888($fp)
label1572:
	lw $t0, -30880($fp)
	lw $t1, -30888($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -31276($fp)
	li $t0, 0
	lw $t1, -31276($fp)
	sub $t0, $t0, $t1
	sw $t0, -31280($fp)
	lw $t1, -31280($fp)
	li $t2, 0
	bne $t1, $t2, label1567
	j label1566
label1566:
	li $t0, 19040
	sw $t0, -31284($fp)
	lw $t0, -11292($fp)
	sw $t0, -31288($fp)
	li $t0, 0
	sw $t0, -31292($fp)
	li $t0, 59576
	sw $t0, -31296($fp)
	lw $t1, -31296($fp)
	li $t2, 0
	bne $t1, $t2, label1615
	j label1614
label1614:
	li $t0, 1
	sw $t0, -31292($fp)
label1615:
	lw $t0, -31288($fp)
	lw $t1, -31292($fp)
	mul $t0, $t0, $t1
	sw $t0, -31300($fp)
	lw $t0, -31284($fp)
	lw $t1, -31300($fp)
	sub $t0, $t0, $t1
	sw $t0, -31304($fp)
	lw $ra, -4($fp)
	lw $v0, -31304($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label1567:
label1559:
	lw $t0, -5604($fp)
	sw $t0, -31308($fp)
	addi $t0, $fp, -1168
	sw $t0, -31312($fp)
	li $t0, 1
	sw $t0, -31316($fp)
	li $t0, 4
	lw $t1, -31316($fp)
	mul $t0, $t0, $t1
	sw $t0, -31320($fp)
	lw $t0, -31320($fp)
	lw $t1, -31312($fp)
	add $t0, $t0, $t1
	sw $t0, -31324($fp)
	lw $t0, -31324($fp)
	lw $t1, 0($t0)
	sw $t1, -31328($fp)
	li $t0, 0
	lw $t1, -31328($fp)
	sub $t0, $t0, $t1
	sw $t0, -31332($fp)
	lw $t0, -31308($fp)
	lw $t1, -31332($fp)
	add $t0, $t0, $t1
	sw $t0, -31336($fp)
	li $t0, 7219
	sw $t0, -31340($fp)
	li $t0, 5543
	sw $t0, -31344($fp)
	lw $t0, -3360($fp)
	sw $t0, -31348($fp)
	lw $t0, -31344($fp)
	lw $t1, -31348($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -31352($fp)
	lw $t0, -31340($fp)
	lw $t1, -31352($fp)
	add $t0, $t0, $t1
	sw $t0, -31356($fp)
	lw $t1, -31336($fp)
	lw $t2, -31356($fp)
	blt $t1, $t2, label1616
	j label1617
label1616:
	li $t0, 0
	sw $t0, -31360($fp)
	addi $t0, $fp, -1336
	sw $t0, -31364($fp)
	lw $t0, -13164($fp)
	sw $t0, -31368($fp)
	li $t0, 4
	lw $t1, -31368($fp)
	mul $t0, $t0, $t1
	sw $t0, -31372($fp)
	lw $t0, -31372($fp)
	lw $t1, -31364($fp)
	add $t0, $t0, $t1
	sw $t0, -31376($fp)
	lw $t0, -31376($fp)
	lw $t1, 0($t0)
	sw $t1, -31380($fp)
	addi $t0, $fp, -1184
	sw $t0, -31384($fp)
	li $t0, 0
	sw $t0, -31388($fp)
	li $t0, 4
	lw $t1, -31388($fp)
	mul $t0, $t0, $t1
	sw $t0, -31392($fp)
	lw $t0, -31392($fp)
	lw $t1, -31384($fp)
	add $t0, $t0, $t1
	sw $t0, -31396($fp)
	lw $t0, -31396($fp)
	lw $t1, 0($t0)
	sw $t1, -31400($fp)
	li $t0, 31570
	sw $t0, -31404($fp)
	lw $t0, -11940($fp)
	sw $t0, -31408($fp)
	lw $t0, -11280($fp)
	sw $t0, -31412($fp)
	lw $t0, -31408($fp)
	lw $t1, -31412($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -31416($fp)
	li $t0, 54377
	sw $t0, -31420($fp)
	lw $t0, -31416($fp)
	lw $t1, -31420($fp)
	mul $t0, $t0, $t1
	sw $t0, -31424($fp)
	li $t0, 43057
	sw $t0, -31428($fp)
	addi $sp, $sp, -4
	lw $t0, -31380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31428($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -31432($fp)
	addi $sp, $sp, 24
	lw $t1, -31432($fp)
	li $t2, 0
	bne $t1, $t2, label1623
	j label1622
label1622:
	li $t0, 1
	sw $t0, -31360($fp)
label1623:
	li $t0, 0
	sw $t0, -31436($fp)
	li $t0, 46606
	sw $t0, -31440($fp)
	lw $t1, -31440($fp)
	li $t2, 0
	bne $t1, $t2, label1625
	j label1624
label1624:
	li $t0, 1
	sw $t0, -31436($fp)
label1625:
	lw $t1, -31360($fp)
	lw $t2, -31436($fp)
	blt $t1, $t2, label1619
	j label1620
label1619:
	li $t0, 0
	sw $t0, -31444($fp)
	li $t0, 0
	sw $t0, -31448($fp)
	li $t0, 63977
	sw $t0, -31452($fp)
	li $t0, 45640
	sw $t0, -31456($fp)
	lw $t0, -31452($fp)
	lw $t1, -31456($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -31460($fp)
	lw $t1, -31460($fp)
	li $t2, 0
	bne $t1, $t2, label1628
	j label1630
label1630:
	li $t0, 18036
	sw $t0, -31464($fp)
	lw $t1, -31464($fp)
	li $t2, 0
	bne $t1, $t2, label1628
	j label1629
label1628:
	li $t0, 1
	sw $t0, -31448($fp)
label1629:
	li $t0, 0
	sw $t0, -31468($fp)
	li $t0, 4401
	sw $t0, -31472($fp)
	li $t0, 33108
	sw $t0, -31476($fp)
	lw $t1, -31472($fp)
	lw $t2, -31476($fp)
	bge $t1, $t2, label1633
	j label1632
label1633:
	li $t0, 37071
	sw $t0, -31480($fp)
	lw $t1, -31480($fp)
	li $t2, 0
	bne $t1, $t2, label1631
	j label1632
label1631:
	li $t0, 1
	sw $t0, -31468($fp)
label1632:
	addi $t0, $fp, -452
	sw $t0, -31484($fp)
	lw $t0, -7224($fp)
	sw $t0, -31488($fp)
	li $t0, 4
	lw $t1, -31488($fp)
	mul $t0, $t0, $t1
	sw $t0, -31492($fp)
	lw $t0, -31492($fp)
	lw $t1, -31484($fp)
	add $t0, $t0, $t1
	sw $t0, -31496($fp)
	lw $t0, -31496($fp)
	lw $t1, 0($t0)
	sw $t1, -31500($fp)
	addi $t0, $fp, -1336
	sw $t0, -31504($fp)
	li $t0, 0
	sw $t0, -31508($fp)
	li $t0, 4
	lw $t1, -31508($fp)
	mul $t0, $t0, $t1
	sw $t0, -31512($fp)
	lw $t0, -31512($fp)
	lw $t1, -31504($fp)
	add $t0, $t0, $t1
	sw $t0, -31516($fp)
	lw $t0, -31516($fp)
	lw $t1, 0($t0)
	sw $t1, -31520($fp)
	li $t0, 0
	sw $t0, -31524($fp)
	li $t0, 0
	sw $t0, -31528($fp)
	li $t0, 40663
	sw $t0, -31532($fp)
	li $t0, 21070
	sw $t0, -31536($fp)
	lw $t1, -31532($fp)
	lw $t2, -31536($fp)
	bge $t1, $t2, label1636
	j label1638
label1638:
	lw $t0, -11556($fp)
	sw $t0, -31540($fp)
	lw $t1, -31540($fp)
	li $t2, 0
	bne $t1, $t2, label1636
	j label1637
label1636:
	li $t0, 1
	sw $t0, -31528($fp)
label1637:
	li $t0, 0
	sw $t0, -31544($fp)
	li $t0, 0
	sw $t0, -31548($fp)
	li $t0, 33194
	sw $t0, -31552($fp)
	lw $t0, -11544($fp)
	sw $t0, -31556($fp)
	lw $t1, -31552($fp)
	lw $t2, -31556($fp)
	ble $t1, $t2, label1641
	j label1642
label1641:
	li $t0, 1
	sw $t0, -31548($fp)
label1642:
	li $t0, 9082
	sw $t0, -31560($fp)
	lw $t1, -31548($fp)
	lw $t2, -31560($fp)
	bge $t1, $t2, label1639
	j label1640
label1639:
	li $t0, 1
	sw $t0, -31544($fp)
label1640:
	lw $t0, -4320($fp)
	sw $t0, -31564($fp)
	lw $t0, -3660($fp)
	sw $t0, -31568($fp)
	lw $t0, -31564($fp)
	lw $t1, -31568($fp)
	sub $t0, $t0, $t1
	sw $t0, -31572($fp)
	li $t0, 60504
	sw $t0, -31576($fp)
	lw $t0, -31572($fp)
	lw $t1, -31576($fp)
	sub $t0, $t0, $t1
	sw $t0, -31580($fp)
	lw $t0, -3288($fp)
	sw $t0, -31584($fp)
	lw $t0, -3228($fp)
	sw $t0, -31588($fp)
	lw $t0, -31584($fp)
	lw $t1, -31588($fp)
	mul $t0, $t0, $t1
	sw $t0, -31592($fp)
	li $t0, 9644
	sw $t0, -31596($fp)
	lw $t0, -31592($fp)
	lw $t1, -31596($fp)
	sub $t0, $t0, $t1
	sw $t0, -31600($fp)
	li $t0, 0
	sw $t0, -31604($fp)
	addi $t0, $fp, -652
	sw $t0, -31608($fp)
	lw $t0, -7020($fp)
	sw $t0, -31612($fp)
	li $t0, 4
	lw $t1, -31612($fp)
	mul $t0, $t0, $t1
	sw $t0, -31616($fp)
	lw $t0, -31616($fp)
	lw $t1, -31608($fp)
	add $t0, $t0, $t1
	sw $t0, -31620($fp)
	lw $t0, -31620($fp)
	lw $t1, 0($t0)
	sw $t1, -31624($fp)
	li $t0, 39766
	sw $t0, -31628($fp)
	lw $t1, -31624($fp)
	lw $t2, -31628($fp)
	bne $t1, $t2, label1643
	j label1644
label1643:
	li $t0, 1
	sw $t0, -31604($fp)
label1644:
	addi $t0, $fp, -1188
	sw $t0, -31632($fp)
	li $t0, 0
	sw $t0, -31636($fp)
	li $t0, 4
	lw $t1, -31636($fp)
	mul $t0, $t0, $t1
	sw $t0, -31640($fp)
	lw $t0, -31640($fp)
	lw $t1, -31632($fp)
	add $t0, $t0, $t1
	sw $t0, -31644($fp)
	lw $t0, -31644($fp)
	lw $t1, 0($t0)
	sw $t1, -31648($fp)
	addi $sp, $sp, -4
	lw $t0, -31544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31648($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -31652($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -31656($fp)
	li $t0, 1774
	sw $t0, -31660($fp)
	lw $t1, -31660($fp)
	li $t2, 0
	bne $t1, $t2, label1646
	j label1645
label1645:
	li $t0, 1
	sw $t0, -31656($fp)
label1646:
	li $t0, 20510
	sw $t0, -31664($fp)
	lw $t0, -31656($fp)
	lw $t1, -31664($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -31668($fp)
	lw $t0, -6780($fp)
	sw $t0, -31672($fp)
	lw $t0, -31672($fp)
	sw $t0, -7176($fp)
	lw $t0, -7176($fp)
	sw $t0, -31676($fp)
	li $t0, 0
	sw $t0, -31680($fp)
	li $t0, 0
	sw $t0, -31684($fp)
	lw $t0, -11508($fp)
	sw $t0, -31688($fp)
	lw $t0, -5568($fp)
	sw $t0, -31692($fp)
	lw $t1, -31688($fp)
	lw $t2, -31692($fp)
	ble $t1, $t2, label1649
	j label1650
label1649:
	li $t0, 1
	sw $t0, -31684($fp)
label1650:
	li $t0, 42295
	sw $t0, -31696($fp)
	lw $t1, -31684($fp)
	lw $t2, -31696($fp)
	bne $t1, $t2, label1647
	j label1648
label1647:
	li $t0, 1
	sw $t0, -31680($fp)
label1648:
	li $t0, 31661
	sw $t0, -31700($fp)
	lw $t0, -31700($fp)
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	sw $t0, -31704($fp)
	addi $sp, $sp, -4
	lw $t0, -31652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31704($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -31708($fp)
	addi $sp, $sp, 24
	li $t0, 50278
	sw $t0, -31712($fp)
	li $t0, 0
	sw $t0, -31716($fp)
	li $t0, 57665
	sw $t0, -31720($fp)
	lw $t1, -31720($fp)
	li $t2, 0
	bne $t1, $t2, label1651
	j label1652
label1651:
	li $t0, 1
	sw $t0, -31716($fp)
label1652:
	lw $t0, -11496($fp)
	sw $t0, -31724($fp)
	lw $t0, -12456($fp)
	sw $t0, -31728($fp)
	lw $t0, -31724($fp)
	lw $t1, -31728($fp)
	mul $t0, $t0, $t1
	sw $t0, -31732($fp)
	addi $sp, $sp, -4
	lw $t0, -31528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31732($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -31736($fp)
	addi $sp, $sp, 24
	lw $t1, -31736($fp)
	li $t2, 0
	bne $t1, $t2, label1635
	j label1634
label1634:
	li $t0, 1
	sw $t0, -31524($fp)
label1635:
	addi $sp, $sp, -4
	lw $t0, -31448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31524($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -31740($fp)
	addi $sp, $sp, 24
	lw $t1, -31740($fp)
	li $t2, 0
	bne $t1, $t2, label1627
	j label1626
label1626:
	li $t0, 1
	sw $t0, -31444($fp)
label1627:
	j label1621
label1620:
	li $t0, 5660
	sw $t0, -31748($fp)
	addi $t0, $fp, -31744
	sw $t0, -31752($fp)
	li $t0, 0
	sw $t0, -31756($fp)
	lw $t0, -31756($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -31760($fp)
	lw $t0, -31752($fp)
	lw $t1, -31760($fp)
	add $t0, $t0, $t1
	sw $t0, -31764($fp)
	lw $t0, -31748($fp)
	lw $t1, -31764($fp)
	sw $t0, 0($t1)
	lw $t0, -31764($fp)
	lw $t1, 0($t0)
	sw $t1, -31768($fp)
	li $t0, 51183
	sw $t0, -31772($fp)
	lw $t0, -31772($fp)
	sw $t0, -31776($fp)
	lw $t0, -31776($fp)
	sw $t0, -31780($fp)
label1653:
	addi $t0, $fp, -1228
	sw $t0, -31784($fp)
	li $t0, 0
	sw $t0, -31788($fp)
	li $t0, 56751
	sw $t0, -31792($fp)
	lw $t1, -31792($fp)
	li $t2, 0
	bne $t1, $t2, label1659
	j label1657
label1659:
	li $t0, 13022
	sw $t0, -31796($fp)
	lw $t1, -31796($fp)
	li $t2, 0
	bne $t1, $t2, label1658
	j label1657
label1658:
	li $t0, 63824
	sw $t0, -31800($fp)
	lw $t1, -31800($fp)
	li $t2, 0
	bne $t1, $t2, label1656
	j label1657
label1656:
	li $t0, 1
	sw $t0, -31788($fp)
label1657:
	li $t0, 0
	sw $t0, -31804($fp)
	li $t0, 17217
	sw $t0, -31808($fp)
	lw $t1, -31808($fp)
	li $t2, 0
	bne $t1, $t2, label1660
	j label1663
label1663:
	lw $t0, -11832($fp)
	sw $t0, -31812($fp)
	lw $t1, -31812($fp)
	li $t2, 0
	bne $t1, $t2, label1660
	j label1662
label1662:
	lw $t0, -11844($fp)
	sw $t0, -31816($fp)
	lw $t1, -31816($fp)
	li $t2, 0
	bne $t1, $t2, label1660
	j label1661
label1660:
	li $t0, 1
	sw $t0, -31804($fp)
label1661:
	li $t0, 0
	sw $t0, -31820($fp)
	li $t0, 61093
	sw $t0, -31824($fp)
	lw $t0, -11820($fp)
	sw $t0, -31828($fp)
	lw $t1, -31824($fp)
	lw $t2, -31828($fp)
	beq $t1, $t2, label1664
	j label1666
label1666:
	li $t0, 60038
	sw $t0, -31832($fp)
	lw $t1, -31832($fp)
	li $t2, 0
	bne $t1, $t2, label1664
	j label1665
label1664:
	li $t0, 1
	sw $t0, -31820($fp)
label1665:
	addi $t0, $fp, -240
	sw $t0, -31836($fp)
	lw $t0, -2364($fp)
	sw $t0, -31840($fp)
	li $t0, 4
	lw $t1, -31840($fp)
	mul $t0, $t0, $t1
	sw $t0, -31844($fp)
	lw $t0, -31844($fp)
	lw $t1, -31836($fp)
	add $t0, $t0, $t1
	sw $t0, -31848($fp)
	lw $t0, -31848($fp)
	lw $t1, 0($t0)
	sw $t1, -31852($fp)
	lw $t0, -11808($fp)
	sw $t0, -31856($fp)
	lw $t0, -31856($fp)
	sw $t0, -6132($fp)
	lw $t0, -6132($fp)
	sw $t0, -31860($fp)
	addi $sp, $sp, -4
	lw $t0, -31788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31860($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -31864($fp)
	addi $sp, $sp, 24
	li $t0, 4
	lw $t1, -31864($fp)
	mul $t0, $t0, $t1
	sw $t0, -31868($fp)
	lw $t0, -31868($fp)
	lw $t1, -31784($fp)
	add $t0, $t0, $t1
	sw $t0, -31872($fp)
	lw $t0, -31872($fp)
	lw $t1, 0($t0)
	sw $t1, -31876($fp)
	lw $t1, -31876($fp)
	li $t2, 0
	bne $t1, $t2, label1655
	j label1654
label1654:
	addi $t0, $fp, -1004
	sw $t0, -31880($fp)
	li $t0, 0
	sw $t0, -31884($fp)
	lw $t0, -5568($fp)
	sw $t0, -31888($fp)
	lw $t0, -31888($fp)
	sw $t0, -31776($fp)
	lw $t0, -31776($fp)
	sw $t0, -31892($fp)
	lw $t0, -11556($fp)
	sw $t0, -31896($fp)
	li $t0, 0
	sw $t0, -31900($fp)
	lw $t0, -9000($fp)
	sw $t0, -31904($fp)
	lw $t1, -31904($fp)
	li $t2, 0
	bne $t1, $t2, label1676
	j label1674
label1676:
	lw $t0, -11868($fp)
	sw $t0, -31908($fp)
	lw $t1, -31908($fp)
	li $t2, 0
	bne $t1, $t2, label1675
	j label1674
label1675:
	lw $t0, -7128($fp)
	sw $t0, -31912($fp)
	lw $t1, -31912($fp)
	li $t2, 0
	bne $t1, $t2, label1673
	j label1674
label1673:
	li $t0, 1
	sw $t0, -31900($fp)
label1674:
	li $t0, 0
	sw $t0, -31916($fp)
	addi $t0, $fp, -31744
	sw $t0, -31920($fp)
	li $t0, 0
	sw $t0, -31924($fp)
	li $t0, 4
	lw $t1, -31924($fp)
	mul $t0, $t0, $t1
	sw $t0, -31928($fp)
	lw $t0, -31928($fp)
	lw $t1, -31920($fp)
	add $t0, $t0, $t1
	sw $t0, -31932($fp)
	lw $t0, -31932($fp)
	lw $t1, 0($t0)
	sw $t1, -31936($fp)
	lw $t0, -11856($fp)
	sw $t0, -31940($fp)
	lw $t1, -31936($fp)
	lw $t2, -31940($fp)
	bge $t1, $t2, label1677
	j label1678
label1677:
	li $t0, 1
	sw $t0, -31916($fp)
label1678:
	li $t0, 0
	sw $t0, -31944($fp)
	li $t0, 0
	sw $t0, -31948($fp)
	lw $t0, -12168($fp)
	sw $t0, -31952($fp)
	li $t0, 48880
	sw $t0, -31956($fp)
	lw $t1, -31952($fp)
	lw $t2, -31956($fp)
	ble $t1, $t2, label1681
	j label1682
label1681:
	li $t0, 1
	sw $t0, -31948($fp)
label1682:
	li $t0, 63300
	sw $t0, -31960($fp)
	lw $t1, -31948($fp)
	lw $t2, -31960($fp)
	beq $t1, $t2, label1679
	j label1680
label1679:
	li $t0, 1
	sw $t0, -31944($fp)
label1680:
	addi $sp, $sp, -4
	lw $t0, -31892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -31944($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -31964($fp)
	addi $sp, $sp, 24
	lw $t1, -31964($fp)
	li $t2, 0
	bne $t1, $t2, label1670
	j label1672
label1672:
	li $t0, 65074
	sw $t0, -31968($fp)
	lw $t1, -31968($fp)
	li $t2, 0
	bne $t1, $t2, label1670
	j label1671
label1670:
	li $t0, 1
	sw $t0, -31884($fp)
label1671:
	li $t0, 4
	lw $t1, -31884($fp)
	mul $t0, $t0, $t1
	sw $t0, -31972($fp)
	lw $t0, -31972($fp)
	lw $t1, -31880($fp)
	add $t0, $t0, $t1
	sw $t0, -31976($fp)
	lw $t0, -31976($fp)
	lw $t1, 0($t0)
	sw $t1, -31980($fp)
	addi $t0, $fp, -1184
	sw $t0, -31984($fp)
	li $t0, 1
	sw $t0, -31988($fp)
	li $t0, 4
	lw $t1, -31988($fp)
	mul $t0, $t0, $t1
	sw $t0, -31992($fp)
	lw $t0, -31992($fp)
	lw $t1, -31984($fp)
	add $t0, $t0, $t1
	sw $t0, -31996($fp)
	lw $t0, -31996($fp)
	lw $t1, 0($t0)
	sw $t1, -32000($fp)
	lw $t1, -31980($fp)
	lw $t2, -32000($fp)
	bne $t1, $t2, label1667
	j label1668
label1667:
	lw $t0, -12072($fp)
	sw $t0, -32004($fp)
	j label1669
label1668:
	li $t0, 0
	sw $t0, -32008($fp)
	lw $t0, -2280($fp)
	sw $t0, -32012($fp)
	li $t0, 0
	lw $t1, -32012($fp)
	sub $t0, $t0, $t1
	sw $t0, -32016($fp)
	lw $t1, -32016($fp)
	li $t2, 0
	bne $t1, $t2, label1685
	j label1684
label1685:
	li $t0, 23795
	sw $t0, -32020($fp)
	lw $t0, -11880($fp)
	sw $t0, -32024($fp)
	lw $t0, -32020($fp)
	lw $t1, -32024($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -32028($fp)
	lw $t0, -3684($fp)
	sw $t0, -32032($fp)
	lw $t0, -32028($fp)
	lw $t1, -32032($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -32036($fp)
	lw $t0, -9912($fp)
	sw $t0, -32040($fp)
	lw $t1, -32036($fp)
	lw $t2, -32040($fp)
	ble $t1, $t2, label1683
	j label1684
label1683:
	li $t0, 1
	sw $t0, -32008($fp)
label1684:
label1669:
	j label1653
label1655:
	addi $t0, $fp, -60
	sw $t0, -32044($fp)
	li $t0, 0
	sw $t0, -32048($fp)
	li $t0, 0
	sw $t0, -32052($fp)
	lw $t0, -4584($fp)
	sw $t0, -32056($fp)
	lw $t1, -32056($fp)
	li $t2, 0
	bne $t1, $t2, label1689
	j label1688
label1688:
	li $t0, 1
	sw $t0, -32052($fp)
label1689:
	li $t0, 0
	lw $t1, -32052($fp)
	sub $t0, $t0, $t1
	sw $t0, -32060($fp)
	lw $t1, -32060($fp)
	li $t2, 0
	bne $t1, $t2, label1687
	j label1686
label1686:
	li $t0, 1
	sw $t0, -32048($fp)
label1687:
	li $t0, 4
	lw $t1, -32048($fp)
	mul $t0, $t0, $t1
	sw $t0, -32064($fp)
	lw $t0, -32064($fp)
	lw $t1, -32044($fp)
	add $t0, $t0, $t1
	sw $t0, -32068($fp)
	lw $t0, -32068($fp)
	lw $t1, 0($t0)
	sw $t1, -32072($fp)
	addi $t0, $fp, -652
	sw $t0, -32076($fp)
	addi $t0, $fp, -548
	sw $t0, -32080($fp)
	li $t0, 2
	sw $t0, -32084($fp)
	li $t0, 4
	lw $t1, -32084($fp)
	mul $t0, $t0, $t1
	sw $t0, -32088($fp)
	lw $t0, -32088($fp)
	lw $t1, -32080($fp)
	add $t0, $t0, $t1
	sw $t0, -32092($fp)
	lw $t0, -32092($fp)
	lw $t1, 0($t0)
	sw $t1, -32096($fp)
	li $t0, 4
	lw $t1, -32096($fp)
	mul $t0, $t0, $t1
	sw $t0, -32100($fp)
	lw $t0, -32100($fp)
	lw $t1, -32076($fp)
	add $t0, $t0, $t1
	sw $t0, -32104($fp)
	lw $t0, -32104($fp)
	lw $t1, 0($t0)
	sw $t1, -32108($fp)
	li $t0, 0
	sw $t0, -32112($fp)
	li $t0, 18763
	sw $t0, -32116($fp)
	li $t0, 0
	lw $t1, -32116($fp)
	sub $t0, $t0, $t1
	sw $t0, -32120($fp)
	lw $t1, -32120($fp)
	li $t2, 0
	bne $t1, $t2, label1693
	j label1694
label1693:
	li $t0, 1
	sw $t0, -32112($fp)
label1694:
	lw $t0, -32108($fp)
	lw $t1, -32112($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -32124($fp)
	lw $t1, -32124($fp)
	li $t2, 0
	bne $t1, $t2, label1690
	j label1691
label1690:
	li $t0, 57884
	sw $t0, -32140($fp)
	lw $t0, -32140($fp)
	sw $t0, -32144($fp)
	lw $t0, -32144($fp)
	sw $t0, -32148($fp)
	li $t0, 15051
	sw $t0, -32152($fp)
	addi $t0, $fp, -32136
	sw $t0, -32156($fp)
	li $t0, 0
	sw $t0, -32160($fp)
	lw $t0, -32160($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -32164($fp)
	lw $t0, -32156($fp)
	lw $t1, -32164($fp)
	add $t0, $t0, $t1
	sw $t0, -32168($fp)
	lw $t0, -32152($fp)
	lw $t1, -32168($fp)
	sw $t0, 0($t1)
	lw $t0, -32168($fp)
	lw $t1, 0($t0)
	sw $t1, -32172($fp)
	li $t0, 59427
	sw $t0, -32176($fp)
	addi $t0, $fp, -32136
	sw $t0, -32180($fp)
	li $t0, 1
	sw $t0, -32184($fp)
	lw $t0, -32184($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -32188($fp)
	lw $t0, -32180($fp)
	lw $t1, -32188($fp)
	add $t0, $t0, $t1
	sw $t0, -32192($fp)
	lw $t0, -32176($fp)
	lw $t1, -32192($fp)
	sw $t0, 0($t1)
	lw $t0, -32192($fp)
	lw $t1, 0($t0)
	sw $t1, -32196($fp)
	li $t0, 13418
	sw $t0, -32200($fp)
	addi $t0, $fp, -32136
	sw $t0, -32204($fp)
	li $t0, 2
	sw $t0, -32208($fp)
	lw $t0, -32208($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -32212($fp)
	lw $t0, -32204($fp)
	lw $t1, -32212($fp)
	add $t0, $t0, $t1
	sw $t0, -32216($fp)
	lw $t0, -32200($fp)
	lw $t1, -32216($fp)
	sw $t0, 0($t1)
	lw $t0, -32216($fp)
	lw $t1, 0($t0)
	sw $t1, -32220($fp)
	li $t0, 32097
	sw $t0, -32224($fp)
	lw $t0, -32224($fp)
	sw $t0, -32228($fp)
	lw $t0, -32228($fp)
	sw $t0, -32232($fp)
	li $t0, 11921
	sw $t0, -32236($fp)
	lw $t0, -32236($fp)
	sw $t0, -32240($fp)
	lw $t0, -32240($fp)
	sw $t0, -32244($fp)
	li $t0, 17819
	sw $t0, -32248($fp)
	lw $t0, -32248($fp)
	sw $t0, -32252($fp)
	lw $t0, -32252($fp)
	sw $t0, -32256($fp)
	li $t0, 65205
	sw $t0, -32260($fp)
	lw $t0, -32260($fp)
	sw $t0, -32264($fp)
	lw $t0, -32264($fp)
	sw $t0, -32268($fp)
	li $t0, 48992
	sw $t0, -32272($fp)
	lw $t0, -32272($fp)
	sw $t0, -32276($fp)
	lw $t0, -32276($fp)
	sw $t0, -32280($fp)
	li $t0, 16261
	sw $t0, -32284($fp)
	lw $t0, -32284($fp)
	sw $t0, -32288($fp)
	lw $t0, -32288($fp)
	sw $t0, -32292($fp)
	li $t0, 45309
	sw $t0, -32296($fp)
	lw $t0, -32296($fp)
	sw $t0, -32300($fp)
	lw $t0, -32300($fp)
	sw $t0, -32304($fp)
	li $t0, 1493
	sw $t0, -32308($fp)
	lw $t0, -32308($fp)
	sw $t0, -32312($fp)
	lw $t0, -32312($fp)
	sw $t0, -32316($fp)
	lw $t0, -3288($fp)
	sw $t0, -32320($fp)
	li $t0, 0
	lw $t1, -32320($fp)
	sub $t0, $t0, $t1
	sw $t0, -32324($fp)
	li $t0, 21921
	sw $t0, -32328($fp)
	li $t0, 0
	sw $t0, -32332($fp)
	li $t0, 30956
	sw $t0, -32336($fp)
	lw $t0, -7044($fp)
	sw $t0, -32340($fp)
	lw $t0, -32336($fp)
	lw $t1, -32340($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -32344($fp)
	li $t0, 0
	lw $t1, -32344($fp)
	sub $t0, $t0, $t1
	sw $t0, -32348($fp)
	lw $t1, -32348($fp)
	li $t2, 0
	bne $t1, $t2, label1695
	j label1697
label1697:
	addi $t0, $fp, -1120
	sw $t0, -32352($fp)
	li $t0, 4
	sw $t0, -32356($fp)
	li $t0, 4
	lw $t1, -32356($fp)
	mul $t0, $t0, $t1
	sw $t0, -32360($fp)
	lw $t0, -32360($fp)
	lw $t1, -32352($fp)
	add $t0, $t0, $t1
	sw $t0, -32364($fp)
	lw $t0, -32364($fp)
	lw $t1, 0($t0)
	sw $t1, -32368($fp)
	li $t0, 29445
	sw $t0, -32372($fp)
	lw $t0, -32372($fp)
	sw $t0, -3024($fp)
	lw $t0, -3024($fp)
	sw $t0, -32376($fp)
	li $t0, 0
	sw $t0, -32380($fp)
	lw $t0, -8376($fp)
	sw $t0, -32384($fp)
	lw $t0, -2004($fp)
	sw $t0, -32388($fp)
	lw $t1, -32384($fp)
	lw $t2, -32388($fp)
	beq $t1, $t2, label1698
	j label1699
label1698:
	li $t0, 1
	sw $t0, -32380($fp)
label1699:
	lw $t0, -11940($fp)
	sw $t0, -32392($fp)
	lw $t0, -2664($fp)
	sw $t0, -32396($fp)
	lw $t0, -32392($fp)
	lw $t1, -32396($fp)
	mul $t0, $t0, $t1
	sw $t0, -32400($fp)
	li $t0, 53801
	sw $t0, -32404($fp)
	lw $t0, -32400($fp)
	lw $t1, -32404($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -32408($fp)
	lw $t0, -2364($fp)
	sw $t0, -32412($fp)
	li $t0, 0
	sw $t0, -32416($fp)
	addi $t0, $fp, -1236
	sw $t0, -32420($fp)
	lw $t0, -2700($fp)
	sw $t0, -32424($fp)
	li $t0, 4
	lw $t1, -32424($fp)
	mul $t0, $t0, $t1
	sw $t0, -32428($fp)
	lw $t0, -32428($fp)
	lw $t1, -32420($fp)
	add $t0, $t0, $t1
	sw $t0, -32432($fp)
	lw $t0, -32432($fp)
	lw $t1, 0($t0)
	sw $t1, -32436($fp)
	li $t0, 48173
	sw $t0, -32440($fp)
	lw $t1, -32436($fp)
	lw $t2, -32440($fp)
	bgt $t1, $t2, label1700
	j label1701
label1700:
	li $t0, 1
	sw $t0, -32416($fp)
label1701:
	addi $sp, $sp, -4
	lw $t0, -32376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32416($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -32444($fp)
	addi $sp, $sp, 24
	lw $t0, -32368($fp)
	lw $t1, -32444($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -32448($fp)
	li $t0, 0
	lw $t1, -32448($fp)
	sub $t0, $t0, $t1
	sw $t0, -32452($fp)
	lw $t1, -32452($fp)
	li $t2, 0
	bne $t1, $t2, label1695
	j label1696
label1695:
	li $t0, 1
	sw $t0, -32332($fp)
label1696:
	li $t0, 0
	sw $t0, -32456($fp)
	li $t0, 0
	sw $t0, -32460($fp)
	li $t0, 46461
	sw $t0, -32464($fp)
	lw $t1, -32464($fp)
	li $t2, 0
	bne $t1, $t2, label1706
	j label1705
label1705:
	li $t0, 1
	sw $t0, -32460($fp)
label1706:
	li $t0, 37145
	sw $t0, -32468($fp)
	lw $t0, -32460($fp)
	lw $t1, -32468($fp)
	add $t0, $t0, $t1
	sw $t0, -32472($fp)
	li $t0, 1618
	sw $t0, -32476($fp)
	li $t0, 26192
	sw $t0, -32480($fp)
	lw $t0, -32476($fp)
	lw $t1, -32480($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -32484($fp)
	lw $t0, -32300($fp)
	sw $t0, -32488($fp)
	lw $t0, -32484($fp)
	lw $t1, -32488($fp)
	sub $t0, $t0, $t1
	sw $t0, -32492($fp)
	lw $t0, -5556($fp)
	sw $t0, -32496($fp)
	li $t0, 0
	lw $t1, -32496($fp)
	sub $t0, $t0, $t1
	sw $t0, -32500($fp)
	li $t0, 0
	sw $t0, -32504($fp)
	lw $t0, -12072($fp)
	sw $t0, -32508($fp)
	lw $t0, -9732($fp)
	sw $t0, -32512($fp)
	lw $t0, -32508($fp)
	lw $t1, -32512($fp)
	mul $t0, $t0, $t1
	sw $t0, -32516($fp)
	addi $t0, $fp, -216
	sw $t0, -32520($fp)
	li $t0, 3
	sw $t0, -32524($fp)
	li $t0, 4
	lw $t1, -32524($fp)
	mul $t0, $t0, $t1
	sw $t0, -32528($fp)
	lw $t0, -32528($fp)
	lw $t1, -32520($fp)
	add $t0, $t0, $t1
	sw $t0, -32532($fp)
	lw $t0, -32532($fp)
	lw $t1, 0($t0)
	sw $t1, -32536($fp)
	addi $t0, $fp, -652
	sw $t0, -32540($fp)
	li $t0, 1
	sw $t0, -32544($fp)
	li $t0, 4
	lw $t1, -32544($fp)
	mul $t0, $t0, $t1
	sw $t0, -32548($fp)
	lw $t0, -32548($fp)
	lw $t1, -32540($fp)
	add $t0, $t0, $t1
	sw $t0, -32552($fp)
	lw $t0, -32552($fp)
	lw $t1, 0($t0)
	sw $t1, -32556($fp)
	li $t0, 0
	sw $t0, -32560($fp)
	li $t0, 0
	sw $t0, -32564($fp)
	addi $t0, $fp, -1288
	sw $t0, -32568($fp)
	li $t0, 2
	sw $t0, -32572($fp)
	li $t0, 4
	lw $t1, -32572($fp)
	mul $t0, $t0, $t1
	sw $t0, -32576($fp)
	lw $t0, -32576($fp)
	lw $t1, -32568($fp)
	add $t0, $t0, $t1
	sw $t0, -32580($fp)
	lw $t0, -32580($fp)
	lw $t1, 0($t0)
	sw $t1, -32584($fp)
	li $t0, 40075
	sw $t0, -32588($fp)
	lw $t1, -32584($fp)
	lw $t2, -32588($fp)
	beq $t1, $t2, label1711
	j label1712
label1711:
	li $t0, 1
	sw $t0, -32564($fp)
label1712:
	lw $t0, -3288($fp)
	sw $t0, -32592($fp)
	lw $t0, -32592($fp)
	sw $t0, -12228($fp)
	lw $t0, -12228($fp)
	sw $t0, -32596($fp)
	li $t0, 0
	sw $t0, -32600($fp)
	lw $t0, -3696($fp)
	sw $t0, -32604($fp)
	lw $t0, -13008($fp)
	sw $t0, -32608($fp)
	lw $t1, -32604($fp)
	lw $t2, -32608($fp)
	beq $t1, $t2, label1713
	j label1715
label1715:
	li $t0, 47035
	sw $t0, -32612($fp)
	lw $t1, -32612($fp)
	li $t2, 0
	bne $t1, $t2, label1713
	j label1714
label1713:
	li $t0, 1
	sw $t0, -32600($fp)
label1714:
	li $t0, 0
	sw $t0, -32616($fp)
	lw $t0, -12060($fp)
	sw $t0, -32620($fp)
	li $t0, 0
	lw $t1, -32620($fp)
	sub $t0, $t0, $t1
	sw $t0, -32624($fp)
	lw $t0, -12048($fp)
	sw $t0, -32628($fp)
	li $t0, 21368
	sw $t0, -32632($fp)
	lw $t0, -32628($fp)
	lw $t1, -32632($fp)
	mul $t0, $t0, $t1
	sw $t0, -32636($fp)
	li $t0, 0
	lw $t1, -32636($fp)
	sub $t0, $t0, $t1
	sw $t0, -32640($fp)
	li $t0, 0
	sw $t0, -32644($fp)
	li $t0, 0
	sw $t0, -32648($fp)
	li $t0, 0
	sw $t0, -32652($fp)
	lw $t0, -5556($fp)
	sw $t0, -32656($fp)
	lw $t1, -32656($fp)
	li $t2, 0
	bne $t1, $t2, label1724
	j label1723
label1723:
	li $t0, 1
	sw $t0, -32652($fp)
label1724:
	li $t0, 21953
	sw $t0, -32660($fp)
	lw $t1, -32652($fp)
	lw $t2, -32660($fp)
	blt $t1, $t2, label1721
	j label1722
label1721:
	li $t0, 1
	sw $t0, -32648($fp)
label1722:
	lw $t0, -5520($fp)
	sw $t0, -32664($fp)
	li $t0, 60649
	sw $t0, -32668($fp)
	lw $t0, -32664($fp)
	lw $t1, -32668($fp)
	sub $t0, $t0, $t1
	sw $t0, -32672($fp)
	lw $t0, -11808($fp)
	sw $t0, -32676($fp)
	lw $t0, -32672($fp)
	lw $t1, -32676($fp)
	add $t0, $t0, $t1
	sw $t0, -32680($fp)
	lw $t0, -12972($fp)
	sw $t0, -32684($fp)
	li $t0, 39790
	sw $t0, -32688($fp)
	lw $t0, -32684($fp)
	lw $t1, -32688($fp)
	mul $t0, $t0, $t1
	sw $t0, -32692($fp)
	lw $t0, -3432($fp)
	sw $t0, -32696($fp)
	lw $t0, -32696($fp)
	sw $t0, -32288($fp)
	lw $t0, -32288($fp)
	sw $t0, -32700($fp)
	lw $t0, -12036($fp)
	sw $t0, -32704($fp)
	lw $t0, -5184($fp)
	sw $t0, -32708($fp)
	li $t0, 0
	lw $t1, -32708($fp)
	sub $t0, $t0, $t1
	sw $t0, -32712($fp)
	addi $sp, $sp, -4
	lw $t0, -32680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32712($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -32716($fp)
	addi $sp, $sp, 24
	lw $t0, -8400($fp)
	sw $t0, -32720($fp)
	lw $t0, -11952($fp)
	sw $t0, -32724($fp)
	lw $t0, -32724($fp)
	sw $t0, -9000($fp)
	lw $t0, -9000($fp)
	sw $t0, -32728($fp)
	addi $t0, $fp, -1004
	sw $t0, -32732($fp)
	lw $t0, -7176($fp)
	sw $t0, -32736($fp)
	li $t0, 4
	lw $t1, -32736($fp)
	mul $t0, $t0, $t1
	sw $t0, -32740($fp)
	lw $t0, -32740($fp)
	lw $t1, -32732($fp)
	add $t0, $t0, $t1
	sw $t0, -32744($fp)
	lw $t0, -32744($fp)
	lw $t1, 0($t0)
	sw $t1, -32748($fp)
	addi $sp, $sp, -4
	lw $t0, -32648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32748($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -32752($fp)
	addi $sp, $sp, 24
	li $t0, 37452
	sw $t0, -32756($fp)
	lw $t1, -32752($fp)
	lw $t2, -32756($fp)
	ble $t1, $t2, label1719
	j label1720
label1719:
	li $t0, 1
	sw $t0, -32644($fp)
label1720:
	li $t0, 0
	sw $t0, -32760($fp)
	lw $t0, -11940($fp)
	sw $t0, -32764($fp)
	lw $t0, -12024($fp)
	sw $t0, -32768($fp)
	lw $t0, -32764($fp)
	lw $t1, -32768($fp)
	mul $t0, $t0, $t1
	sw $t0, -32772($fp)
	li $t0, 7359
	sw $t0, -32776($fp)
	lw $t1, -32772($fp)
	lw $t2, -32776($fp)
	ble $t1, $t2, label1725
	j label1726
label1725:
	li $t0, 1
	sw $t0, -32760($fp)
label1726:
	lw $t0, -5016($fp)
	sw $t0, -32780($fp)
	addi $t0, $fp, -1316
	sw $t0, -32784($fp)
	li $t0, 3
	sw $t0, -32788($fp)
	li $t0, 4
	lw $t1, -32788($fp)
	mul $t0, $t0, $t1
	sw $t0, -32792($fp)
	lw $t0, -32792($fp)
	lw $t1, -32784($fp)
	add $t0, $t0, $t1
	sw $t0, -32796($fp)
	lw $t0, -32796($fp)
	lw $t1, 0($t0)
	sw $t1, -32800($fp)
	li $t0, 0
	sw $t0, -32804($fp)
	lw $t0, 12($fp)
	sw $t0, -32808($fp)
	lw $t1, -32808($fp)
	li $t2, 0
	bne $t1, $t2, label1728
	j label1727
label1727:
	li $t0, 1
	sw $t0, -32804($fp)
label1728:
	li $t0, 7816
	sw $t0, -32812($fp)
	lw $t0, -32804($fp)
	lw $t1, -32812($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -32816($fp)
	addi $sp, $sp, -4
	lw $t0, -32644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32816($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -32820($fp)
	addi $sp, $sp, 24
	lw $t0, -12648($fp)
	sw $t0, -32824($fp)
	lw $t0, 12($fp)
	sw $t0, -32828($fp)
	lw $t0, -32824($fp)
	lw $t1, -32828($fp)
	add $t0, $t0, $t1
	sw $t0, -32832($fp)
	lw $t0, -7044($fp)
	sw $t0, -32836($fp)
	lw $t0, -32832($fp)
	lw $t1, -32836($fp)
	sub $t0, $t0, $t1
	sw $t0, -32840($fp)
	li $t0, 0
	sw $t0, -32844($fp)
	li $t0, 0
	sw $t0, -32848($fp)
	lw $t0, -9768($fp)
	sw $t0, -32852($fp)
	li $t0, 27324
	sw $t0, -32856($fp)
	lw $t1, -32852($fp)
	lw $t2, -32856($fp)
	bgt $t1, $t2, label1731
	j label1732
label1731:
	li $t0, 1
	sw $t0, -32848($fp)
label1732:
	lw $t0, -4044($fp)
	sw $t0, -32860($fp)
	lw $t1, -32848($fp)
	lw $t2, -32860($fp)
	beq $t1, $t2, label1729
	j label1730
label1729:
	li $t0, 1
	sw $t0, -32844($fp)
label1730:
	li $t0, 0
	sw $t0, -32864($fp)
	lw $t0, -7032($fp)
	sw $t0, -32868($fp)
	li $t0, 51011
	sw $t0, -32872($fp)
	lw $t1, -32868($fp)
	lw $t2, -32872($fp)
	beq $t1, $t2, label1733
	j label1734
label1733:
	li $t0, 1
	sw $t0, -32864($fp)
label1734:
	addi $t0, $fp, -40
	sw $t0, -32876($fp)
	lw $t0, -12012($fp)
	sw $t0, -32880($fp)
	li $t0, 4
	lw $t1, -32880($fp)
	mul $t0, $t0, $t1
	sw $t0, -32884($fp)
	lw $t0, -32884($fp)
	lw $t1, -32876($fp)
	add $t0, $t0, $t1
	sw $t0, -32888($fp)
	lw $t0, -32888($fp)
	lw $t1, 0($t0)
	sw $t1, -32892($fp)
	li $t0, 0
	sw $t0, -32896($fp)
	li $t0, 14243
	sw $t0, -32900($fp)
	lw $t1, -32900($fp)
	li $t2, 0
	bne $t1, $t2, label1735
	j label1737
label1737:
	lw $t0, -32276($fp)
	sw $t0, -32904($fp)
	lw $t1, -32904($fp)
	li $t2, 0
	bne $t1, $t2, label1735
	j label1736
label1735:
	li $t0, 1
	sw $t0, -32896($fp)
label1736:
	addi $sp, $sp, -4
	lw $t0, -32840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32896($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -32908($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -32912($fp)
	li $t0, 31526
	sw $t0, -32916($fp)
	lw $t1, -32916($fp)
	li $t2, 0
	bne $t1, $t2, label1739
	j label1738
label1738:
	li $t0, 1
	sw $t0, -32912($fp)
label1739:
	li $t0, 0
	lw $t1, -32912($fp)
	sub $t0, $t0, $t1
	sw $t0, -32920($fp)
	li $t0, 0
	sw $t0, -32924($fp)
	li $t0, 24263
	sw $t0, -32928($fp)
	li $t0, 0
	lw $t1, -32928($fp)
	sub $t0, $t0, $t1
	sw $t0, -32932($fp)
	lw $t1, -32932($fp)
	li $t2, 0
	bne $t1, $t2, label1741
	j label1740
label1740:
	li $t0, 1
	sw $t0, -32924($fp)
label1741:
	addi $sp, $sp, -4
	lw $t0, -32640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32924($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -32936($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -140
	sw $t0, -32940($fp)
	li $t0, 1
	sw $t0, -32944($fp)
	li $t0, 4
	lw $t1, -32944($fp)
	mul $t0, $t0, $t1
	sw $t0, -32948($fp)
	lw $t0, -32948($fp)
	lw $t1, -32940($fp)
	add $t0, $t0, $t1
	sw $t0, -32952($fp)
	lw $t0, -32952($fp)
	lw $t1, 0($t0)
	sw $t1, -32956($fp)
	li $t0, 0
	sw $t0, -32960($fp)
	lw $t0, -12000($fp)
	sw $t0, -32964($fp)
	lw $t1, -32964($fp)
	li $t2, 0
	bne $t1, $t2, label1743
	j label1742
label1742:
	li $t0, 1
	sw $t0, -32960($fp)
label1743:
	li $t0, 62590
	sw $t0, -32968($fp)
	lw $t0, -32960($fp)
	lw $t1, -32968($fp)
	sub $t0, $t0, $t1
	sw $t0, -32972($fp)
	lw $t0, -12612($fp)
	sw $t0, -32976($fp)
	lw $t0, -32976($fp)
	sw $t0, -12660($fp)
	lw $t0, -12660($fp)
	sw $t0, -32980($fp)
	li $t0, 0
	sw $t0, -32984($fp)
	li $t0, 0
	sw $t0, -32988($fp)
	li $t0, 33144
	sw $t0, -32992($fp)
	li $t0, 39726
	sw $t0, -32996($fp)
	lw $t1, -32992($fp)
	lw $t2, -32996($fp)
	beq $t1, $t2, label1746
	j label1747
label1746:
	li $t0, 1
	sw $t0, -32988($fp)
label1747:
	li $t0, 45385
	sw $t0, -33000($fp)
	lw $t1, -32988($fp)
	lw $t2, -33000($fp)
	beq $t1, $t2, label1744
	j label1745
label1744:
	li $t0, 1
	sw $t0, -32984($fp)
label1745:
	addi $t0, $fp, -520
	sw $t0, -33004($fp)
	lw $t0, -11976($fp)
	sw $t0, -33008($fp)
	li $t0, 4
	lw $t1, -33008($fp)
	mul $t0, $t0, $t1
	sw $t0, -33012($fp)
	lw $t0, -33012($fp)
	lw $t1, -33004($fp)
	add $t0, $t0, $t1
	sw $t0, -33016($fp)
	lw $t0, -33016($fp)
	lw $t1, 0($t0)
	sw $t1, -33020($fp)
	lw $t0, -3720($fp)
	sw $t0, -33024($fp)
	lw $t0, -32264($fp)
	sw $t0, -33028($fp)
	lw $t0, -33024($fp)
	lw $t1, -33028($fp)
	mul $t0, $t0, $t1
	sw $t0, -33032($fp)
	li $t0, 57119
	sw $t0, -33036($fp)
	lw $t0, -33032($fp)
	lw $t1, -33036($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -33040($fp)
	li $t0, 0
	sw $t0, -33044($fp)
	lw $t0, -11964($fp)
	sw $t0, -33048($fp)
	lw $t1, -33048($fp)
	li $t2, 0
	bne $t1, $t2, label1748
	j label1749
label1748:
	li $t0, 1
	sw $t0, -33044($fp)
label1749:
	addi $sp, $sp, -4
	lw $t0, -32980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33044($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -33052($fp)
	addi $sp, $sp, 24
	lw $t0, -11988($fp)
	sw $t0, -33056($fp)
	lw $t0, -33052($fp)
	lw $t1, -33056($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -33060($fp)
	addi $sp, $sp, -4
	lw $t0, -32624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33060($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -33064($fp)
	addi $sp, $sp, 24
	lw $t1, -33064($fp)
	li $t2, 0
	bne $t1, $t2, label1716
	j label1718
label1718:
	li $t0, 3108
	sw $t0, -33068($fp)
	lw $t1, -33068($fp)
	li $t2, 0
	bne $t1, $t2, label1716
	j label1717
label1716:
	li $t0, 1
	sw $t0, -32616($fp)
label1717:
	li $t0, 57089
	sw $t0, -33072($fp)
	lw $t0, -33072($fp)
	sw $t0, -5532($fp)
	lw $t0, -5532($fp)
	sw $t0, -33076($fp)
	addi $sp, $sp, -4
	lw $t0, -32564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33076($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -33080($fp)
	addi $sp, $sp, 24
	lw $t0, -10092($fp)
	sw $t0, -33084($fp)
	lw $t1, -33080($fp)
	lw $t2, -33084($fp)
	bgt $t1, $t2, label1709
	j label1710
label1709:
	li $t0, 1
	sw $t0, -32560($fp)
label1710:
	li $t0, 0
	sw $t0, -33088($fp)
	li $t0, 0
	sw $t0, -33092($fp)
	li $t0, 60069
	sw $t0, -33096($fp)
	li $t0, 16721
	sw $t0, -33100($fp)
	lw $t1, -33096($fp)
	lw $t2, -33100($fp)
	ble $t1, $t2, label1752
	j label1753
label1752:
	li $t0, 1
	sw $t0, -33092($fp)
label1753:
	lw $t0, -32252($fp)
	sw $t0, -33104($fp)
	lw $t1, -33092($fp)
	lw $t2, -33104($fp)
	bne $t1, $t2, label1750
	j label1751
label1750:
	li $t0, 1
	sw $t0, -33088($fp)
label1751:
	addi $sp, $sp, -4
	lw $t0, -32516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33088($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -33108($fp)
	addi $sp, $sp, 24
	lw $t1, -33108($fp)
	li $t2, 0
	bne $t1, $t2, label1708
	j label1707
label1707:
	li $t0, 1
	sw $t0, -32504($fp)
label1708:
	li $t0, 60335
	sw $t0, -33112($fp)
	li $t0, 26133
	sw $t0, -33116($fp)
	lw $t0, -33112($fp)
	lw $t1, -33116($fp)
	add $t0, $t0, $t1
	sw $t0, -33120($fp)
	lw $t0, -32240($fp)
	sw $t0, -33124($fp)
	li $t0, 0
	sw $t0, -33128($fp)
	lw $t0, -7440($fp)
	sw $t0, -33132($fp)
	li $t0, 46360
	sw $t0, -33136($fp)
	lw $t0, -33132($fp)
	lw $t1, -33136($fp)
	sub $t0, $t0, $t1
	sw $t0, -33140($fp)
	li $t0, 58576
	sw $t0, -33144($fp)
	lw $t1, -33140($fp)
	lw $t2, -33144($fp)
	ble $t1, $t2, label1754
	j label1755
label1754:
	li $t0, 1
	sw $t0, -33128($fp)
label1755:
	addi $t0, $fp, -60
	sw $t0, -33148($fp)
	li $t0, 4
	sw $t0, -33152($fp)
	li $t0, 4
	lw $t1, -33152($fp)
	mul $t0, $t0, $t1
	sw $t0, -33156($fp)
	lw $t0, -33156($fp)
	lw $t1, -33148($fp)
	add $t0, $t0, $t1
	sw $t0, -33160($fp)
	lw $t0, -33160($fp)
	lw $t1, 0($t0)
	sw $t1, -33164($fp)
	li $t0, 44074
	sw $t0, -33168($fp)
	lw $t0, -33164($fp)
	lw $t1, -33168($fp)
	sub $t0, $t0, $t1
	sw $t0, -33172($fp)
	li $t0, 0
	sw $t0, -33176($fp)
	li $t0, 63198
	sw $t0, -33180($fp)
	li $t0, 26255
	sw $t0, -33184($fp)
	lw $t0, -33180($fp)
	lw $t1, -33184($fp)
	add $t0, $t0, $t1
	sw $t0, -33188($fp)
	lw $t0, -32228($fp)
	sw $t0, -33192($fp)
	lw $t1, -33188($fp)
	lw $t2, -33192($fp)
	beq $t1, $t2, label1756
	j label1757
label1756:
	li $t0, 1
	sw $t0, -33176($fp)
label1757:
	li $t0, 12836
	sw $t0, -33196($fp)
	li $t0, 14594
	sw $t0, -33200($fp)
	lw $t0, -33196($fp)
	lw $t1, -33200($fp)
	mul $t0, $t0, $t1
	sw $t0, -33204($fp)
	li $t0, 0
	sw $t0, -33208($fp)
	li $t0, 3771
	sw $t0, -33212($fp)
	lw $t1, -33212($fp)
	li $t2, 0
	bne $t1, $t2, label1759
	j label1758
label1758:
	li $t0, 1
	sw $t0, -33208($fp)
label1759:
	lw $t0, -11952($fp)
	sw $t0, -33216($fp)
	lw $t0, -33208($fp)
	lw $t1, -33216($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -33220($fp)
	li $t0, 65078
	sw $t0, -33224($fp)
	addi $sp, $sp, -4
	lw $t0, -33172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33224($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -33228($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -32136
	sw $t0, -33232($fp)
	lw $t0, -9492($fp)
	sw $t0, -33236($fp)
	li $t0, 4
	lw $t1, -33236($fp)
	mul $t0, $t0, $t1
	sw $t0, -33240($fp)
	lw $t0, -33240($fp)
	lw $t1, -33232($fp)
	add $t0, $t0, $t1
	sw $t0, -33244($fp)
	lw $t0, -33244($fp)
	lw $t1, 0($t0)
	sw $t1, -33248($fp)
	li $t0, 20488
	sw $t0, -33252($fp)
	lw $t0, -33248($fp)
	lw $t1, -33252($fp)
	sub $t0, $t0, $t1
	sw $t0, -33256($fp)
	addi $sp, $sp, -4
	lw $t0, -33120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33256($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -33260($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -33264($fp)
	li $t0, 59109
	sw $t0, -33268($fp)
	li $t0, 50543
	sw $t0, -33272($fp)
	lw $t1, -33268($fp)
	lw $t2, -33272($fp)
	bgt $t1, $t2, label1760
	j label1761
label1760:
	li $t0, 1
	sw $t0, -33264($fp)
label1761:
	li $t0, 0
	sw $t0, -33276($fp)
	addi $t0, $fp, -608
	sw $t0, -33280($fp)
	li $t0, 6
	sw $t0, -33284($fp)
	li $t0, 4
	lw $t1, -33284($fp)
	mul $t0, $t0, $t1
	sw $t0, -33288($fp)
	lw $t0, -33288($fp)
	lw $t1, -33280($fp)
	add $t0, $t0, $t1
	sw $t0, -33292($fp)
	lw $t0, -33292($fp)
	lw $t1, 0($t0)
	sw $t1, -33296($fp)
	lw $t1, -33296($fp)
	li $t2, 0
	bne $t1, $t2, label1763
	j label1762
label1762:
	li $t0, 1
	sw $t0, -33276($fp)
label1763:
	li $t0, 0
	sw $t0, -33300($fp)
	li $t0, 0
	sw $t0, -33304($fp)
	lw $t0, -8436($fp)
	sw $t0, -33308($fp)
	lw $t1, -33308($fp)
	li $t2, 0
	bne $t1, $t2, label1767
	j label1766
label1766:
	li $t0, 1
	sw $t0, -33304($fp)
label1767:
	lw $t0, -32144($fp)
	sw $t0, -33312($fp)
	lw $t1, -33304($fp)
	lw $t2, -33312($fp)
	ble $t1, $t2, label1764
	j label1765
label1764:
	li $t0, 1
	sw $t0, -33300($fp)
label1765:
	li $t0, 0
	sw $t0, -33316($fp)
	li $t0, 0
	sw $t0, -33320($fp)
	li $t0, 62784
	sw $t0, -33324($fp)
	lw $t1, -33324($fp)
	li $t2, 0
	bne $t1, $t2, label1771
	j label1770
label1770:
	li $t0, 1
	sw $t0, -33320($fp)
label1771:
	lw $t0, -10212($fp)
	sw $t0, -33328($fp)
	lw $t1, -33320($fp)
	lw $t2, -33328($fp)
	bne $t1, $t2, label1768
	j label1769
label1768:
	li $t0, 1
	sw $t0, -33316($fp)
label1769:
	addi $sp, $sp, -4
	lw $t0, -33260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33316($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -33332($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -548
	sw $t0, -33336($fp)
	li $t0, 0
	sw $t0, -33340($fp)
	li $t0, 4
	lw $t1, -33340($fp)
	mul $t0, $t0, $t1
	sw $t0, -33344($fp)
	lw $t0, -33344($fp)
	lw $t1, -33336($fp)
	add $t0, $t0, $t1
	sw $t0, -33348($fp)
	lw $t0, -33348($fp)
	lw $t1, 0($t0)
	sw $t1, -33352($fp)
	addi $sp, $sp, -4
	lw $t0, -32492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33352($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -33356($fp)
	addi $sp, $sp, 24
	lw $t0, -32472($fp)
	lw $t1, -33356($fp)
	sub $t0, $t0, $t1
	sw $t0, -33360($fp)
	li $t0, 0
	sw $t0, -33364($fp)
	li $t0, 44571
	sw $t0, -33368($fp)
	li $t0, 41344
	sw $t0, -33372($fp)
	lw $t1, -33368($fp)
	lw $t2, -33372($fp)
	blt $t1, $t2, label1772
	j label1773
label1772:
	li $t0, 1
	sw $t0, -33364($fp)
label1773:
	lw $t1, -33360($fp)
	lw $t2, -33364($fp)
	bne $t1, $t2, label1704
	j label1703
label1704:
	addi $t0, $fp, -1240
	sw $t0, -33376($fp)
	li $t0, 0
	sw $t0, -33380($fp)
	li $t0, 4
	lw $t1, -33380($fp)
	mul $t0, $t0, $t1
	sw $t0, -33384($fp)
	lw $t0, -33384($fp)
	lw $t1, -33376($fp)
	add $t0, $t0, $t1
	sw $t0, -33388($fp)
	lw $t0, -33388($fp)
	lw $t1, 0($t0)
	sw $t1, -33392($fp)
	lw $t1, -33392($fp)
	li $t2, 0
	bne $t1, $t2, label1702
	j label1703
label1702:
	li $t0, 1
	sw $t0, -32456($fp)
label1703:
	li $t0, 0
	sw $t0, -33396($fp)
	li $t0, 0
	sw $t0, -33400($fp)
	li $t0, 0
	sw $t0, -33404($fp)
	lw $t0, -3024($fp)
	sw $t0, -33408($fp)
	li $t0, 0
	lw $t1, -33408($fp)
	sub $t0, $t0, $t1
	sw $t0, -33412($fp)
	li $t0, 23035
	sw $t0, -33416($fp)
	lw $t1, -33412($fp)
	lw $t2, -33416($fp)
	ble $t1, $t2, label1778
	j label1779
label1778:
	li $t0, 1
	sw $t0, -33404($fp)
label1779:
	li $t0, 0
	sw $t0, -33420($fp)
	li $t0, 37278
	sw $t0, -33424($fp)
	li $t0, 51364
	sw $t0, -33428($fp)
	lw $t0, -33424($fp)
	lw $t1, -33428($fp)
	sub $t0, $t0, $t1
	sw $t0, -33432($fp)
	lw $t0, -7056($fp)
	sw $t0, -33436($fp)
	lw $t1, -33432($fp)
	lw $t2, -33436($fp)
	blt $t1, $t2, label1780
	j label1781
label1780:
	li $t0, 1
	sw $t0, -33420($fp)
label1781:
	li $t0, 27987
	sw $t0, -33440($fp)
	li $t0, 0
	sw $t0, -33444($fp)
	li $t0, 0
	sw $t0, -33448($fp)
	lw $t0, -12000($fp)
	sw $t0, -33452($fp)
	lw $t0, -6336($fp)
	sw $t0, -33456($fp)
	lw $t1, -33452($fp)
	lw $t2, -33456($fp)
	bne $t1, $t2, label1784
	j label1785
label1784:
	li $t0, 1
	sw $t0, -33448($fp)
label1785:
	lw $t0, -13044($fp)
	sw $t0, -33460($fp)
	lw $t1, -33448($fp)
	lw $t2, -33460($fp)
	bne $t1, $t2, label1782
	j label1783
label1782:
	li $t0, 1
	sw $t0, -33444($fp)
label1783:
	lw $t0, -10944($fp)
	sw $t0, -33464($fp)
	lw $t0, -33464($fp)
	sw $t0, -12984($fp)
	lw $t0, -12984($fp)
	sw $t0, -33468($fp)
	li $t0, 353
	sw $t0, -33472($fp)
	lw $t0, -3660($fp)
	sw $t0, -33476($fp)
	lw $t0, -33472($fp)
	lw $t1, -33476($fp)
	mul $t0, $t0, $t1
	sw $t0, -33480($fp)
	addi $sp, $sp, -4
	lw $t0, -33420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33480($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -33484($fp)
	addi $sp, $sp, 24
	lw $t1, -33404($fp)
	lw $t2, -33484($fp)
	ble $t1, $t2, label1776
	j label1777
label1776:
	li $t0, 1
	sw $t0, -33400($fp)
label1777:
	li $t0, 55311
	sw $t0, -33488($fp)
	lw $t1, -33400($fp)
	lw $t2, -33488($fp)
	bne $t1, $t2, label1774
	j label1775
label1774:
	li $t0, 1
	sw $t0, -33396($fp)
label1775:
	li $t0, 0
	sw $t0, -33492($fp)
	lw $t0, -32312($fp)
	sw $t0, -33496($fp)
	li $t0, 0
	sw $t0, -33500($fp)
	li $t0, 45095
	sw $t0, -33504($fp)
	lw $t1, -33504($fp)
	li $t2, 0
	bne $t1, $t2, label1790
	j label1789
label1789:
	li $t0, 1
	sw $t0, -33500($fp)
label1790:
	li $t0, 0
	lw $t1, -33500($fp)
	sub $t0, $t0, $t1
	sw $t0, -33508($fp)
	lw $t0, -33496($fp)
	lw $t1, -33508($fp)
	sub $t0, $t0, $t1
	sw $t0, -33512($fp)
	lw $t1, -33512($fp)
	li $t2, 0
	bne $t1, $t2, label1788
	j label1787
label1788:
	lw $t0, -13188($fp)
	sw $t0, -33516($fp)
	li $t0, 0
	lw $t1, -33516($fp)
	sub $t0, $t0, $t1
	sw $t0, -33520($fp)
	lw $t1, -33520($fp)
	li $t2, 0
	bne $t1, $t2, label1787
	j label1786
label1786:
	li $t0, 1
	sw $t0, -33492($fp)
label1787:
label1691:
label1621:
	j label1618
label1617:
label1791:
	li $t0, 0
	sw $t0, -33524($fp)
	lw $t0, -1404($fp)
	sw $t0, -33528($fp)
	lw $t0, -3216($fp)
	sw $t0, -33532($fp)
	lw $t1, -33528($fp)
	lw $t2, -33532($fp)
	beq $t1, $t2, label1794
	j label1795
label1794:
	li $t0, 1
	sw $t0, -33524($fp)
label1795:
	li $t0, 0
	sw $t0, -33536($fp)
	li $t0, 37588
	sw $t0, -33540($fp)
	lw $t0, -3912($fp)
	sw $t0, -33544($fp)
	lw $t0, -33540($fp)
	lw $t1, -33544($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -33548($fp)
	lw $t1, -33548($fp)
	li $t2, 0
	bne $t1, $t2, label1798
	j label1797
label1798:
	li $t0, 52454
	sw $t0, -33552($fp)
	lw $t1, -33552($fp)
	li $t2, 0
	bne $t1, $t2, label1796
	j label1797
label1796:
	li $t0, 1
	sw $t0, -33536($fp)
label1797:
	lw $t0, -12132($fp)
	sw $t0, -33556($fp)
	lw $t0, -33556($fp)
	sw $t0, -9528($fp)
	lw $t0, -9528($fp)
	sw $t0, -33560($fp)
	li $t0, 0
	sw $t0, -33564($fp)
	lw $t0, -12120($fp)
	sw $t0, -33568($fp)
	li $t0, 21847
	sw $t0, -33572($fp)
	lw $t0, -33568($fp)
	lw $t1, -33572($fp)
	mul $t0, $t0, $t1
	sw $t0, -33576($fp)
	lw $t1, -33576($fp)
	li $t2, 0
	bne $t1, $t2, label1799
	j label1801
label1801:
	lw $t0, -7044($fp)
	sw $t0, -33580($fp)
	lw $t1, -33580($fp)
	li $t2, 0
	bne $t1, $t2, label1799
	j label1800
label1799:
	li $t0, 1
	sw $t0, -33564($fp)
label1800:
	lw $t0, -12108($fp)
	sw $t0, -33584($fp)
	li $t0, 0
	lw $t1, -33584($fp)
	sub $t0, $t0, $t1
	sw $t0, -33588($fp)
	addi $sp, $sp, -4
	lw $t0, -33524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33588($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -33592($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -33596($fp)
	addi $t0, $fp, -1264
	sw $t0, -33600($fp)
	lw $t0, -13152($fp)
	sw $t0, -33604($fp)
	li $t0, 4
	lw $t1, -33604($fp)
	mul $t0, $t0, $t1
	sw $t0, -33608($fp)
	lw $t0, -33608($fp)
	lw $t1, -33600($fp)
	add $t0, $t0, $t1
	sw $t0, -33612($fp)
	lw $t0, -33612($fp)
	lw $t1, 0($t0)
	sw $t1, -33616($fp)
	lw $t0, -12456($fp)
	sw $t0, -33620($fp)
	lw $t1, -33616($fp)
	lw $t2, -33620($fp)
	beq $t1, $t2, label1802
	j label1803
label1802:
	li $t0, 1
	sw $t0, -33596($fp)
label1803:
	li $t0, 0
	sw $t0, -33624($fp)
	li $t0, 0
	sw $t0, -33628($fp)
	lw $t0, -12276($fp)
	sw $t0, -33632($fp)
	li $t0, 51212
	sw $t0, -33636($fp)
	lw $t1, -33632($fp)
	lw $t2, -33636($fp)
	ble $t1, $t2, label1806
	j label1807
label1806:
	li $t0, 1
	sw $t0, -33628($fp)
label1807:
	lw $t0, -12288($fp)
	sw $t0, -33640($fp)
	lw $t1, -33628($fp)
	lw $t2, -33640($fp)
	bne $t1, $t2, label1804
	j label1805
label1804:
	li $t0, 1
	sw $t0, -33624($fp)
label1805:
	li $t0, 0
	sw $t0, -33644($fp)
	lw $t0, -9012($fp)
	sw $t0, -33648($fp)
	li $t0, 0
	lw $t1, -33648($fp)
	sub $t0, $t0, $t1
	sw $t0, -33652($fp)
	lw $t0, -12264($fp)
	sw $t0, -33656($fp)
	lw $t1, -33652($fp)
	lw $t2, -33656($fp)
	beq $t1, $t2, label1808
	j label1809
label1808:
	li $t0, 1
	sw $t0, -33644($fp)
label1809:
	li $t0, 0
	sw $t0, -33660($fp)
	lw $t0, -11280($fp)
	sw $t0, -33664($fp)
	lw $t1, -33664($fp)
	li $t2, 0
	bne $t1, $t2, label1813
	j label1811
label1813:
	lw $t0, -3912($fp)
	sw $t0, -33668($fp)
	lw $t1, -33668($fp)
	li $t2, 0
	bne $t1, $t2, label1812
	j label1811
label1812:
	li $t0, 7850
	sw $t0, -33672($fp)
	lw $t1, -33672($fp)
	li $t2, 0
	bne $t1, $t2, label1810
	j label1811
label1810:
	li $t0, 1
	sw $t0, -33660($fp)
label1811:
	li $t0, 0
	sw $t0, -33676($fp)
	lw $t0, -12984($fp)
	sw $t0, -33680($fp)
	lw $t1, -33680($fp)
	li $t2, 0
	bne $t1, $t2, label1817
	j label1815
label1817:
	lw $t0, -12072($fp)
	sw $t0, -33684($fp)
	lw $t1, -33684($fp)
	li $t2, 0
	bne $t1, $t2, label1816
	j label1815
label1816:
	lw $t0, -1404($fp)
	sw $t0, -33688($fp)
	lw $t1, -33688($fp)
	li $t2, 0
	bne $t1, $t2, label1814
	j label1815
label1814:
	li $t0, 1
	sw $t0, -33676($fp)
label1815:
	li $t0, 0
	sw $t0, -33692($fp)
	li $t0, 0
	sw $t0, -33696($fp)
	li $t0, 13933
	sw $t0, -33700($fp)
	lw $t0, -4320($fp)
	sw $t0, -33704($fp)
	lw $t1, -33700($fp)
	lw $t2, -33704($fp)
	bge $t1, $t2, label1820
	j label1821
label1820:
	li $t0, 1
	sw $t0, -33696($fp)
label1821:
	li $t0, 15586
	sw $t0, -33708($fp)
	lw $t1, -33696($fp)
	lw $t2, -33708($fp)
	bne $t1, $t2, label1818
	j label1819
label1818:
	li $t0, 1
	sw $t0, -33692($fp)
label1819:
	addi $sp, $sp, -4
	lw $t0, -33624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33692($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -33712($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -33716($fp)
	lw $t0, -1764($fp)
	sw $t0, -33720($fp)
	li $t0, 15233
	sw $t0, -33724($fp)
	lw $t0, -33720($fp)
	lw $t1, -33724($fp)
	sub $t0, $t0, $t1
	sw $t0, -33728($fp)
	li $t0, 45399
	sw $t0, -33732($fp)
	lw $t1, -33728($fp)
	lw $t2, -33732($fp)
	bne $t1, $t2, label1822
	j label1823
label1822:
	li $t0, 1
	sw $t0, -33716($fp)
label1823:
	lw $t0, -12252($fp)
	sw $t0, -33736($fp)
	lw $t0, -33736($fp)
	sw $t0, -12048($fp)
	lw $t0, -12048($fp)
	sw $t0, -33740($fp)
	li $t0, 0
	sw $t0, -33744($fp)
	lw $t0, -2640($fp)
	sw $t0, -33748($fp)
	lw $t0, -11988($fp)
	sw $t0, -33752($fp)
	lw $t1, -33748($fp)
	lw $t2, -33752($fp)
	blt $t1, $t2, label1824
	j label1826
label1826:
	lw $t0, -12240($fp)
	sw $t0, -33756($fp)
	lw $t1, -33756($fp)
	li $t2, 0
	bne $t1, $t2, label1824
	j label1825
label1824:
	li $t0, 1
	sw $t0, -33744($fp)
label1825:
	li $t0, 0
	sw $t0, -33760($fp)
	li $t0, 56434
	sw $t0, -33764($fp)
	lw $t1, -33764($fp)
	li $t2, 0
	bne $t1, $t2, label1828
	j label1829
label1829:
	lw $t0, -12228($fp)
	sw $t0, -33768($fp)
	lw $t1, -33768($fp)
	li $t2, 0
	bne $t1, $t2, label1827
	j label1828
label1827:
	li $t0, 1
	sw $t0, -33760($fp)
label1828:
	addi $sp, $sp, -4
	lw $t0, -33712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33760($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -33772($fp)
	addi $sp, $sp, 24
	lw $t0, -12300($fp)
	sw $t0, -33776($fp)
	lw $t0, -33772($fp)
	lw $t1, -33776($fp)
	mul $t0, $t0, $t1
	sw $t0, -33780($fp)
	addi $t0, $fp, -372
	sw $t0, -33784($fp)
	li $t0, 2
	sw $t0, -33788($fp)
	li $t0, 4
	lw $t1, -33788($fp)
	mul $t0, $t0, $t1
	sw $t0, -33792($fp)
	lw $t0, -33792($fp)
	lw $t1, -33784($fp)
	add $t0, $t0, $t1
	sw $t0, -33796($fp)
	lw $t0, -33796($fp)
	lw $t1, 0($t0)
	sw $t1, -33800($fp)
	li $t0, 0
	sw $t0, -33804($fp)
	lw $t0, -12216($fp)
	sw $t0, -33808($fp)
	lw $t0, -2652($fp)
	sw $t0, -33812($fp)
	lw $t0, -33808($fp)
	lw $t1, -33812($fp)
	add $t0, $t0, $t1
	sw $t0, -33816($fp)
	lw $t1, -33816($fp)
	li $t2, 0
	bne $t1, $t2, label1832
	j label1831
label1832:
	lw $t0, -3228($fp)
	sw $t0, -33820($fp)
	lw $t1, -33820($fp)
	li $t2, 0
	bne $t1, $t2, label1830
	j label1831
label1830:
	li $t0, 1
	sw $t0, -33804($fp)
label1831:
	lw $t0, -3240($fp)
	sw $t0, -33824($fp)
	li $t0, 0
	lw $t1, -33824($fp)
	sub $t0, $t0, $t1
	sw $t0, -33828($fp)
	lw $t0, -12204($fp)
	sw $t0, -33832($fp)
	li $t0, 24201
	sw $t0, -33836($fp)
	li $t0, 60108
	sw $t0, -33840($fp)
	lw $t0, -33836($fp)
	lw $t1, -33840($fp)
	mul $t0, $t0, $t1
	sw $t0, -33844($fp)
	li $t0, 7594
	sw $t0, -33848($fp)
	lw $t0, -33844($fp)
	lw $t1, -33848($fp)
	sub $t0, $t0, $t1
	sw $t0, -33852($fp)
	li $t0, 0
	sw $t0, -33856($fp)
	addi $t0, $fp, -712
	sw $t0, -33860($fp)
	lw $t0, -7464($fp)
	sw $t0, -33864($fp)
	li $t0, 4
	lw $t1, -33864($fp)
	mul $t0, $t0, $t1
	sw $t0, -33868($fp)
	lw $t0, -33868($fp)
	lw $t1, -33860($fp)
	add $t0, $t0, $t1
	sw $t0, -33872($fp)
	lw $t0, -33872($fp)
	lw $t1, 0($t0)
	sw $t1, -33876($fp)
	lw $t1, -33876($fp)
	li $t2, 0
	bne $t1, $t2, label1833
	j label1835
label1835:
	lw $t0, -3360($fp)
	sw $t0, -33880($fp)
	lw $t1, -33880($fp)
	li $t2, 0
	bne $t1, $t2, label1833
	j label1834
label1833:
	li $t0, 1
	sw $t0, -33856($fp)
label1834:
	lw $t0, -3348($fp)
	sw $t0, -33884($fp)
	lw $t0, -12192($fp)
	sw $t0, -33888($fp)
	lw $t0, -33884($fp)
	lw $t1, -33888($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -33892($fp)
	li $t0, 0
	lw $t1, -33892($fp)
	sub $t0, $t0, $t1
	sw $t0, -33896($fp)
	li $t0, 0
	sw $t0, -33900($fp)
	addi $t0, $fp, -1336
	sw $t0, -33904($fp)
	lw $t0, -10092($fp)
	sw $t0, -33908($fp)
	li $t0, 4
	lw $t1, -33908($fp)
	mul $t0, $t0, $t1
	sw $t0, -33912($fp)
	lw $t0, -33912($fp)
	lw $t1, -33904($fp)
	add $t0, $t0, $t1
	sw $t0, -33916($fp)
	lw $t0, -33916($fp)
	lw $t1, 0($t0)
	sw $t1, -33920($fp)
	lw $t1, -33920($fp)
	li $t2, 0
	bne $t1, $t2, label1838
	j label1837
label1838:
	li $t0, 5976
	sw $t0, -33924($fp)
	lw $t1, -33924($fp)
	li $t2, 0
	bne $t1, $t2, label1836
	j label1837
label1836:
	li $t0, 1
	sw $t0, -33900($fp)
label1837:
	addi $sp, $sp, -4
	lw $t0, -33832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33900($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -33928($fp)
	addi $sp, $sp, 24
	li $t0, 50393
	sw $t0, -33932($fp)
	lw $t0, -33928($fp)
	lw $t1, -33932($fp)
	add $t0, $t0, $t1
	sw $t0, -33936($fp)
	li $t0, 0
	sw $t0, -33940($fp)
	lw $t0, -11040($fp)
	sw $t0, -33944($fp)
	li $t0, 48681
	sw $t0, -33948($fp)
	lw $t0, -33944($fp)
	lw $t1, -33948($fp)
	sub $t0, $t0, $t1
	sw $t0, -33952($fp)
	lw $t0, -12180($fp)
	sw $t0, -33956($fp)
	lw $t1, -33952($fp)
	lw $t2, -33956($fp)
	beq $t1, $t2, label1839
	j label1840
label1839:
	li $t0, 1
	sw $t0, -33940($fp)
label1840:
	lw $t0, -12168($fp)
	sw $t0, -33960($fp)
	lw $t0, -10992($fp)
	sw $t0, -33964($fp)
	lw $t0, -33960($fp)
	lw $t1, -33964($fp)
	sub $t0, $t0, $t1
	sw $t0, -33968($fp)
	li $t0, 55128
	sw $t0, -33972($fp)
	lw $t0, -33972($fp)
	sw $t0, -6780($fp)
	lw $t0, -6780($fp)
	sw $t0, -33976($fp)
	li $t0, 0
	sw $t0, -33980($fp)
	li $t0, 53975
	sw $t0, -33984($fp)
	lw $t0, -12156($fp)
	sw $t0, -33988($fp)
	lw $t0, -33984($fp)
	lw $t1, -33988($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -33992($fp)
	li $t0, 61447
	sw $t0, -33996($fp)
	lw $t1, -33992($fp)
	lw $t2, -33996($fp)
	bge $t1, $t2, label1841
	j label1842
label1841:
	li $t0, 1
	sw $t0, -33980($fp)
label1842:
	addi $sp, $sp, -4
	lw $t0, -33936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33980($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -34000($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -33780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -33828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34000($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -34004($fp)
	addi $sp, $sp, 24
	lw $t0, -7176($fp)
	sw $t0, -34008($fp)
	lw $t0, -34004($fp)
	lw $t1, -34008($fp)
	sub $t0, $t0, $t1
	sw $t0, -34012($fp)
	li $t0, 15053
	sw $t0, -34016($fp)
	lw $t0, -34016($fp)
	sw $t0, -8364($fp)
	lw $t0, -8364($fp)
	sw $t0, -34020($fp)
	li $t0, 0
	sw $t0, -34024($fp)
	lw $t0, -7248($fp)
	sw $t0, -34028($fp)
	lw $t1, -34028($fp)
	li $t2, 0
	bne $t1, $t2, label1846
	j label1844
label1846:
	lw $t0, -13044($fp)
	sw $t0, -34032($fp)
	lw $t1, -34032($fp)
	li $t2, 0
	bne $t1, $t2, label1845
	j label1844
label1845:
	li $t0, 11979
	sw $t0, -34036($fp)
	lw $t1, -34036($fp)
	li $t2, 0
	bne $t1, $t2, label1843
	j label1844
label1843:
	li $t0, 1
	sw $t0, -34024($fp)
label1844:
	li $t0, 33553
	sw $t0, -34040($fp)
	lw $t0, -5532($fp)
	sw $t0, -34044($fp)
	lw $t0, -34044($fp)
	sw $t0, -5580($fp)
	lw $t0, -5580($fp)
	sw $t0, -34048($fp)
	li $t0, 0
	sw $t0, -34052($fp)
	lw $t0, -6348($fp)
	sw $t0, -34056($fp)
	lw $t0, -3648($fp)
	sw $t0, -34060($fp)
	lw $t0, -34056($fp)
	lw $t1, -34060($fp)
	add $t0, $t0, $t1
	sw $t0, -34064($fp)
	lw $t0, -9444($fp)
	sw $t0, -34068($fp)
	lw $t1, -34064($fp)
	lw $t2, -34068($fp)
	bgt $t1, $t2, label1847
	j label1848
label1847:
	li $t0, 1
	sw $t0, -34052($fp)
label1848:
	lw $t0, -7296($fp)
	sw $t0, -34072($fp)
	lw $t0, -8388($fp)
	sw $t0, -34076($fp)
	lw $t0, -34072($fp)
	lw $t1, -34076($fp)
	add $t0, $t0, $t1
	sw $t0, -34080($fp)
	li $t0, 8871
	sw $t0, -34084($fp)
	lw $t0, -3912($fp)
	sw $t0, -34088($fp)
	lw $t0, -34084($fp)
	lw $t1, -34088($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -34092($fp)
	addi $sp, $sp, -4
	lw $t0, -34040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34092($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -34096($fp)
	addi $sp, $sp, 24
	li $t0, 54069
	sw $t0, -34100($fp)
	lw $t0, -34096($fp)
	lw $t1, -34100($fp)
	add $t0, $t0, $t1
	sw $t0, -34104($fp)
	li $t0, 0
	sw $t0, -34108($fp)
	lw $t0, -6120($fp)
	sw $t0, -34112($fp)
	lw $t1, -34112($fp)
	li $t2, 0
	bne $t1, $t2, label1851
	j label1850
label1851:
	lw $t0, -13200($fp)
	sw $t0, -34116($fp)
	lw $t1, -34116($fp)
	li $t2, 0
	bne $t1, $t2, label1849
	j label1850
label1849:
	li $t0, 1
	sw $t0, -34108($fp)
label1850:
	lw $t0, -7248($fp)
	sw $t0, -34120($fp)
	addi $sp, $sp, -4
	lw $t0, -34020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34120($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -34124($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -34124($fp)
	sub $t0, $t0, $t1
	sw $t0, -34128($fp)
	li $t0, 0
	sw $t0, -34132($fp)
	li $t0, 32701
	sw $t0, -34136($fp)
	lw $t1, -34136($fp)
	li $t2, 0
	bne $t1, $t2, label1852
	j label1855
label1855:
	lw $t0, -12144($fp)
	sw $t0, -34140($fp)
	lw $t1, -34140($fp)
	li $t2, 0
	bne $t1, $t2, label1852
	j label1854
label1854:
	lw $t0, -7212($fp)
	sw $t0, -34144($fp)
	lw $t1, -34144($fp)
	li $t2, 0
	bne $t1, $t2, label1852
	j label1853
label1852:
	li $t0, 1
	sw $t0, -34132($fp)
label1853:
	li $t0, 0
	sw $t0, -34148($fp)
	li $t0, 61637
	sw $t0, -34152($fp)
	lw $t0, -3912($fp)
	sw $t0, -34156($fp)
	lw $t0, -34152($fp)
	lw $t1, -34156($fp)
	mul $t0, $t0, $t1
	sw $t0, -34160($fp)
	lw $t1, -34160($fp)
	li $t2, 0
	bne $t1, $t2, label1858
	j label1857
label1858:
	lw $t0, -3912($fp)
	sw $t0, -34164($fp)
	lw $t1, -34164($fp)
	li $t2, 0
	bne $t1, $t2, label1856
	j label1857
label1856:
	li $t0, 1
	sw $t0, -34148($fp)
label1857:
	addi $sp, $sp, -4
	lw $t0, -33596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34148($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -34168($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -240
	sw $t0, -34172($fp)
	li $t0, 2
	sw $t0, -34176($fp)
	li $t0, 4
	lw $t1, -34176($fp)
	mul $t0, $t0, $t1
	sw $t0, -34180($fp)
	lw $t0, -34180($fp)
	lw $t1, -34172($fp)
	add $t0, $t0, $t1
	sw $t0, -34184($fp)
	lw $t0, -34184($fp)
	lw $t1, 0($t0)
	sw $t1, -34188($fp)
	li $t0, 9717
	sw $t0, -34192($fp)
	lw $t0, -5448($fp)
	sw $t0, -34196($fp)
	lw $t0, -34192($fp)
	lw $t1, -34196($fp)
	add $t0, $t0, $t1
	sw $t0, -34200($fp)
	li $t0, 31439
	sw $t0, -34204($fp)
	lw $t0, -34200($fp)
	lw $t1, -34204($fp)
	sub $t0, $t0, $t1
	sw $t0, -34208($fp)
	addi $t0, $fp, -1324
	sw $t0, -34212($fp)
	lw $t0, -1764($fp)
	sw $t0, -34216($fp)
	li $t0, 4
	lw $t1, -34216($fp)
	mul $t0, $t0, $t1
	sw $t0, -34220($fp)
	lw $t0, -34220($fp)
	lw $t1, -34212($fp)
	add $t0, $t0, $t1
	sw $t0, -34224($fp)
	lw $t0, -34224($fp)
	lw $t1, 0($t0)
	sw $t1, -34228($fp)
	li $t0, 3609
	sw $t0, -34232($fp)
	lw $t0, -34228($fp)
	lw $t1, -34232($fp)
	sub $t0, $t0, $t1
	sw $t0, -34236($fp)
	li $t0, 0
	sw $t0, -34240($fp)
	li $t0, 52648
	sw $t0, -34244($fp)
	lw $t0, -11040($fp)
	sw $t0, -34248($fp)
	lw $t0, -34244($fp)
	lw $t1, -34248($fp)
	mul $t0, $t0, $t1
	sw $t0, -34252($fp)
	lw $t0, -7044($fp)
	sw $t0, -34256($fp)
	lw $t1, -34252($fp)
	lw $t2, -34256($fp)
	bge $t1, $t2, label1859
	j label1860
label1859:
	li $t0, 1
	sw $t0, -34240($fp)
label1860:
	li $t0, 24615
	sw $t0, -34260($fp)
	li $t0, 8529
	sw $t0, -34264($fp)
	lw $t0, -34260($fp)
	lw $t1, -34264($fp)
	mul $t0, $t0, $t1
	sw $t0, -34268($fp)
	li $t0, 52917
	sw $t0, -34272($fp)
	lw $t0, -34268($fp)
	lw $t1, -34272($fp)
	sub $t0, $t0, $t1
	sw $t0, -34276($fp)
	addi $t0, $fp, -1084
	sw $t0, -34280($fp)
	lw $t0, -3888($fp)
	sw $t0, -34284($fp)
	li $t0, 4
	lw $t1, -34284($fp)
	mul $t0, $t0, $t1
	sw $t0, -34288($fp)
	lw $t0, -34288($fp)
	lw $t1, -34280($fp)
	add $t0, $t0, $t1
	sw $t0, -34292($fp)
	lw $t0, -34292($fp)
	lw $t1, 0($t0)
	sw $t1, -34296($fp)
	li $t0, 0
	sw $t0, -34300($fp)
	lw $t0, 16($fp)
	sw $t0, -34304($fp)
	li $t0, 39615
	sw $t0, -34308($fp)
	lw $t0, -34304($fp)
	lw $t1, -34308($fp)
	add $t0, $t0, $t1
	sw $t0, -34312($fp)
	li $t0, 60890
	sw $t0, -34316($fp)
	lw $t1, -34312($fp)
	lw $t2, -34316($fp)
	bgt $t1, $t2, label1861
	j label1862
label1861:
	li $t0, 1
	sw $t0, -34300($fp)
label1862:
	li $t0, 0
	sw $t0, -34320($fp)
	addi $t0, $fp, -1316
	sw $t0, -34324($fp)
	li $t0, 3
	sw $t0, -34328($fp)
	li $t0, 4
	lw $t1, -34328($fp)
	mul $t0, $t0, $t1
	sw $t0, -34332($fp)
	lw $t0, -34332($fp)
	lw $t1, -34324($fp)
	add $t0, $t0, $t1
	sw $t0, -34336($fp)
	lw $t0, -34336($fp)
	lw $t1, 0($t0)
	sw $t1, -34340($fp)
	li $t0, 45264
	sw $t0, -34344($fp)
	lw $t1, -34340($fp)
	lw $t2, -34344($fp)
	bgt $t1, $t2, label1863
	j label1864
label1863:
	li $t0, 1
	sw $t0, -34320($fp)
label1864:
	addi $t0, $fp, -672
	sw $t0, -34348($fp)
	lw $t0, -12792($fp)
	sw $t0, -34352($fp)
	li $t0, 4
	lw $t1, -34352($fp)
	mul $t0, $t0, $t1
	sw $t0, -34356($fp)
	lw $t0, -34356($fp)
	lw $t1, -34348($fp)
	add $t0, $t0, $t1
	sw $t0, -34360($fp)
	lw $t0, -34360($fp)
	lw $t1, 0($t0)
	sw $t1, -34364($fp)
	lw $t0, -12780($fp)
	sw $t0, -34368($fp)
	li $t0, 0
	sw $t0, -34372($fp)
	lw $t0, -9300($fp)
	sw $t0, -34376($fp)
	li $t0, 5538
	sw $t0, -34380($fp)
	lw $t1, -34376($fp)
	lw $t2, -34380($fp)
	bne $t1, $t2, label1865
	j label1867
label1867:
	li $t0, 54353
	sw $t0, -34384($fp)
	lw $t1, -34384($fp)
	li $t2, 0
	bne $t1, $t2, label1865
	j label1866
label1865:
	li $t0, 1
	sw $t0, -34372($fp)
label1866:
	li $t0, 40052
	sw $t0, -34388($fp)
	li $t0, 0
	lw $t1, -34388($fp)
	sub $t0, $t0, $t1
	sw $t0, -34392($fp)
	li $t0, 0
	lw $t1, -34392($fp)
	sub $t0, $t0, $t1
	sw $t0, -34396($fp)
	li $t0, 0
	sw $t0, -34400($fp)
	li $t0, 22363
	sw $t0, -34404($fp)
	li $t0, 51710
	sw $t0, -34408($fp)
	lw $t0, -34404($fp)
	lw $t1, -34408($fp)
	add $t0, $t0, $t1
	sw $t0, -34412($fp)
	lw $t0, -12732($fp)
	sw $t0, -34416($fp)
	lw $t0, -34412($fp)
	lw $t1, -34416($fp)
	sub $t0, $t0, $t1
	sw $t0, -34420($fp)
	li $t0, 0
	sw $t0, -34424($fp)
	li $t0, 16761
	sw $t0, -34428($fp)
	li $t0, 0
	lw $t1, -34428($fp)
	sub $t0, $t0, $t1
	sw $t0, -34432($fp)
	lw $t0, -2364($fp)
	sw $t0, -34436($fp)
	lw $t1, -34432($fp)
	lw $t2, -34436($fp)
	beq $t1, $t2, label1870
	j label1871
label1870:
	li $t0, 1
	sw $t0, -34424($fp)
label1871:
	li $t0, 0
	sw $t0, -34440($fp)
	li $t0, 57128
	sw $t0, -34444($fp)
	lw $t1, -34444($fp)
	li $t2, 0
	bne $t1, $t2, label1873
	j label1872
label1872:
	li $t0, 1
	sw $t0, -34440($fp)
label1873:
	li $t0, 28448
	sw $t0, -34448($fp)
	lw $t0, -34440($fp)
	lw $t1, -34448($fp)
	mul $t0, $t0, $t1
	sw $t0, -34452($fp)
	li $t0, 0
	sw $t0, -34456($fp)
	lw $t0, -12012($fp)
	sw $t0, -34460($fp)
	lw $t0, -12768($fp)
	sw $t0, -34464($fp)
	lw $t0, -34460($fp)
	lw $t1, -34464($fp)
	add $t0, $t0, $t1
	sw $t0, -34468($fp)
	li $t0, 19135
	sw $t0, -34472($fp)
	lw $t1, -34468($fp)
	lw $t2, -34472($fp)
	bne $t1, $t2, label1874
	j label1875
label1874:
	li $t0, 1
	sw $t0, -34456($fp)
label1875:
	li $t0, 0
	sw $t0, -34476($fp)
	lw $t0, -12756($fp)
	sw $t0, -34480($fp)
	li $t0, 27033
	sw $t0, -34484($fp)
	lw $t1, -34480($fp)
	lw $t2, -34484($fp)
	beq $t1, $t2, label1876
	j label1877
label1876:
	li $t0, 1
	sw $t0, -34476($fp)
label1877:
	li $t0, 5916
	sw $t0, -34488($fp)
	addi $sp, $sp, -4
	lw $t0, -34424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34488($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -34492($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -34496($fp)
	li $t0, 11285
	sw $t0, -34500($fp)
	lw $t0, -34500($fp)
	sw $t0, -12744($fp)
	lw $t0, -12744($fp)
	sw $t0, -34504($fp)
	lw $t0, -12732($fp)
	sw $t0, -34508($fp)
	li $t0, 0
	sw $t0, -34512($fp)
	li $t0, 0
	sw $t0, -34516($fp)
	li $t0, 31422
	sw $t0, -34520($fp)
	li $t0, 57519
	sw $t0, -34524($fp)
	lw $t1, -34520($fp)
	lw $t2, -34524($fp)
	bgt $t1, $t2, label1882
	j label1883
label1882:
	li $t0, 1
	sw $t0, -34516($fp)
label1883:
	li $t0, 11446
	sw $t0, -34528($fp)
	lw $t1, -34516($fp)
	lw $t2, -34528($fp)
	bge $t1, $t2, label1880
	j label1881
label1880:
	li $t0, 1
	sw $t0, -34512($fp)
label1881:
	li $t0, 0
	sw $t0, -34532($fp)
	addi $t0, $fp, -1296
	sw $t0, -34536($fp)
	li $t0, 1
	sw $t0, -34540($fp)
	li $t0, 4
	lw $t1, -34540($fp)
	mul $t0, $t0, $t1
	sw $t0, -34544($fp)
	lw $t0, -34544($fp)
	lw $t1, -34536($fp)
	add $t0, $t0, $t1
	sw $t0, -34548($fp)
	lw $t0, -34548($fp)
	lw $t1, 0($t0)
	sw $t1, -34552($fp)
	lw $t0, -3696($fp)
	sw $t0, -34556($fp)
	lw $t1, -34552($fp)
	lw $t2, -34556($fp)
	bge $t1, $t2, label1884
	j label1885
label1884:
	li $t0, 1
	sw $t0, -34532($fp)
label1885:
	li $t0, 48020
	sw $t0, -34560($fp)
	addi $sp, $sp, -4
	lw $t0, -34504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34560($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -34564($fp)
	addi $sp, $sp, 24
	lw $t1, -34564($fp)
	li $t2, 0
	bne $t1, $t2, label1879
	j label1878
label1878:
	li $t0, 1
	sw $t0, -34496($fp)
label1879:
	li $t0, 22605
	sw $t0, -34568($fp)
	li $t0, 0
	sw $t0, -34572($fp)
	li $t0, 40426
	sw $t0, -34576($fp)
	li $t0, 16228
	sw $t0, -34580($fp)
	lw $t0, -34576($fp)
	lw $t1, -34580($fp)
	add $t0, $t0, $t1
	sw $t0, -34584($fp)
	lw $t0, -13068($fp)
	sw $t0, -34588($fp)
	lw $t1, -34584($fp)
	lw $t2, -34588($fp)
	ble $t1, $t2, label1886
	j label1887
label1886:
	li $t0, 1
	sw $t0, -34572($fp)
label1887:
	li $t0, 57563
	sw $t0, -34592($fp)
	li $t0, 28032
	sw $t0, -34596($fp)
	lw $t0, -34592($fp)
	lw $t1, -34596($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -34600($fp)
	addi $sp, $sp, -4
	lw $t0, -34492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34600($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -34604($fp)
	addi $sp, $sp, 24
	lw $t0, -5532($fp)
	sw $t0, -34608($fp)
	lw $t0, -34608($fp)
	sw $t0, -12672($fp)
	lw $t0, -12672($fp)
	sw $t0, -34612($fp)
	li $t0, 0
	sw $t0, -34616($fp)
	lw $t0, -12660($fp)
	sw $t0, -34620($fp)
	li $t0, 44887
	sw $t0, -34624($fp)
	lw $t0, -34620($fp)
	lw $t1, -34624($fp)
	mul $t0, $t0, $t1
	sw $t0, -34628($fp)
	li $t0, 34450
	sw $t0, -34632($fp)
	lw $t0, -34628($fp)
	lw $t1, -34632($fp)
	add $t0, $t0, $t1
	sw $t0, -34636($fp)
	li $t0, 2434
	sw $t0, -34640($fp)
	li $t0, 0
	sw $t0, -34644($fp)
	lw $t0, -9900($fp)
	sw $t0, -34648($fp)
	lw $t0, -7188($fp)
	sw $t0, -34652($fp)
	lw $t1, -34648($fp)
	lw $t2, -34652($fp)
	beq $t1, $t2, label1890
	j label1892
label1892:
	lw $t0, -6348($fp)
	sw $t0, -34656($fp)
	lw $t1, -34656($fp)
	li $t2, 0
	bne $t1, $t2, label1890
	j label1891
label1890:
	li $t0, 1
	sw $t0, -34644($fp)
label1891:
	li $t0, 0
	sw $t0, -34660($fp)
	li $t0, 0
	sw $t0, -34664($fp)
	lw $t0, -5544($fp)
	sw $t0, -34668($fp)
	lw $t0, -7164($fp)
	sw $t0, -34672($fp)
	lw $t1, -34668($fp)
	lw $t2, -34672($fp)
	ble $t1, $t2, label1895
	j label1896
label1895:
	li $t0, 1
	sw $t0, -34664($fp)
label1896:
	li $t0, 38539
	sw $t0, -34676($fp)
	lw $t1, -34664($fp)
	lw $t2, -34676($fp)
	ble $t1, $t2, label1893
	j label1894
label1893:
	li $t0, 1
	sw $t0, -34660($fp)
label1894:
	li $t0, 0
	sw $t0, -34680($fp)
	lw $t0, -3600($fp)
	sw $t0, -34684($fp)
	lw $t1, -34684($fp)
	li $t2, 0
	bne $t1, $t2, label1899
	j label1897
label1899:
	lw $t0, -12648($fp)
	sw $t0, -34688($fp)
	lw $t1, -34688($fp)
	li $t2, 0
	bne $t1, $t2, label1897
	j label1898
label1897:
	li $t0, 1
	sw $t0, -34680($fp)
label1898:
	addi $sp, $sp, -4
	lw $t0, -34636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34680($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -34692($fp)
	addi $sp, $sp, 24
	lw $t1, -34692($fp)
	li $t2, 0
	bne $t1, $t2, label1889
	j label1888
label1888:
	li $t0, 1
	sw $t0, -34616($fp)
label1889:
	li $t0, 0
	sw $t0, -34696($fp)
	li $t0, 52917
	sw $t0, -34700($fp)
	li $t0, 56447
	sw $t0, -34704($fp)
	lw $t0, -34700($fp)
	lw $t1, -34704($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -34708($fp)
	lw $t0, -12732($fp)
	sw $t0, -34712($fp)
	lw $t1, -34708($fp)
	lw $t2, -34712($fp)
	beq $t1, $t2, label1900
	j label1901
label1900:
	li $t0, 1
	sw $t0, -34696($fp)
label1901:
	addi $sp, $sp, -4
	lw $t0, -34420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34696($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -34716($fp)
	addi $sp, $sp, 24
	li $t0, 51974
	sw $t0, -34720($fp)
	lw $t1, -34716($fp)
	lw $t2, -34720($fp)
	ble $t1, $t2, label1868
	j label1869
label1868:
	li $t0, 1
	sw $t0, -34400($fp)
label1869:
	li $t0, 0
	sw $t0, -34724($fp)
	li $t0, 26560
	sw $t0, -34728($fp)
	li $t0, 0
	lw $t1, -34728($fp)
	sub $t0, $t0, $t1
	sw $t0, -34732($fp)
	lw $t1, -34732($fp)
	li $t2, 0
	bne $t1, $t2, label1902
	j label1904
label1904:
	lw $t0, -12636($fp)
	sw $t0, -34736($fp)
	lw $t1, -34736($fp)
	li $t2, 0
	bne $t1, $t2, label1902
	j label1903
label1902:
	li $t0, 1
	sw $t0, -34724($fp)
label1903:
	addi $sp, $sp, -4
	lw $t0, -34368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34724($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -34740($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -34296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34740($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -34744($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -34744($fp)
	sub $t0, $t0, $t1
	sw $t0, -34748($fp)
	li $t0, 0
	sw $t0, -34752($fp)
	addi $t0, $fp, -200
	sw $t0, -34756($fp)
	li $t0, 2
	sw $t0, -34760($fp)
	li $t0, 4
	lw $t1, -34760($fp)
	mul $t0, $t0, $t1
	sw $t0, -34764($fp)
	lw $t0, -34764($fp)
	lw $t1, -34756($fp)
	add $t0, $t0, $t1
	sw $t0, -34768($fp)
	lw $t0, -34768($fp)
	lw $t1, 0($t0)
	sw $t1, -34772($fp)
	lw $t1, -34772($fp)
	li $t2, 0
	bne $t1, $t2, label1906
	j label1905
label1905:
	li $t0, 1
	sw $t0, -34752($fp)
label1906:
	li $t0, 35213
	sw $t0, -34776($fp)
	li $t0, 17689
	sw $t0, -34780($fp)
	lw $t0, -34776($fp)
	lw $t1, -34780($fp)
	mul $t0, $t0, $t1
	sw $t0, -34784($fp)
	li $t0, 0
	lw $t1, -34784($fp)
	sub $t0, $t0, $t1
	sw $t0, -34788($fp)
	lw $t0, -12624($fp)
	sw $t0, -34792($fp)
	lw $t0, -34792($fp)
	sw $t0, -7236($fp)
	lw $t0, -7236($fp)
	sw $t0, -34796($fp)
	li $t0, 23262
	sw $t0, -34800($fp)
	lw $t0, -12612($fp)
	sw $t0, -34804($fp)
	lw $t0, -34800($fp)
	lw $t1, -34804($fp)
	mul $t0, $t0, $t1
	sw $t0, -34808($fp)
	lw $t0, -9336($fp)
	sw $t0, -34812($fp)
	lw $t0, -34808($fp)
	lw $t1, -34812($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -34816($fp)
	li $t0, 0
	sw $t0, -34820($fp)
	lw $t0, -3360($fp)
	sw $t0, -34824($fp)
	lw $t1, -34824($fp)
	li $t2, 0
	bne $t1, $t2, label1907
	j label1909
label1909:
	lw $t0, -3756($fp)
	sw $t0, -34828($fp)
	lw $t1, -34828($fp)
	li $t2, 0
	bne $t1, $t2, label1907
	j label1908
label1907:
	li $t0, 1
	sw $t0, -34820($fp)
label1908:
	addi $t0, $fp, -808
	sw $t0, -34832($fp)
	lw $t0, -1764($fp)
	sw $t0, -34836($fp)
	li $t0, 4
	lw $t1, -34836($fp)
	mul $t0, $t0, $t1
	sw $t0, -34840($fp)
	lw $t0, -34840($fp)
	lw $t1, -34832($fp)
	add $t0, $t0, $t1
	sw $t0, -34844($fp)
	lw $t0, -34844($fp)
	lw $t1, 0($t0)
	sw $t1, -34848($fp)
	li $t0, 30771
	sw $t0, -34852($fp)
	lw $t0, -34848($fp)
	lw $t1, -34852($fp)
	mul $t0, $t0, $t1
	sw $t0, -34856($fp)
	addi $sp, $sp, -4
	lw $t0, -34788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34856($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -34860($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -34240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34860($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -34864($fp)
	addi $sp, $sp, 24
	li $t0, 48955
	sw $t0, -34868($fp)
	lw $t0, -34864($fp)
	lw $t1, -34868($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -34872($fp)
	li $t0, 0
	sw $t0, -34876($fp)
	addi $t0, $fp, -1288
	sw $t0, -34880($fp)
	li $t0, 3
	sw $t0, -34884($fp)
	li $t0, 4
	lw $t1, -34884($fp)
	mul $t0, $t0, $t1
	sw $t0, -34888($fp)
	lw $t0, -34888($fp)
	lw $t1, -34880($fp)
	add $t0, $t0, $t1
	sw $t0, -34892($fp)
	lw $t0, -34892($fp)
	lw $t1, 0($t0)
	sw $t1, -34896($fp)
	lw $t0, -8976($fp)
	sw $t0, -34900($fp)
	lw $t1, -34896($fp)
	lw $t2, -34900($fp)
	bne $t1, $t2, label1910
	j label1911
label1910:
	li $t0, 1
	sw $t0, -34876($fp)
label1911:
	addi $sp, $sp, -4
	lw $t0, -34188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -34876($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -34904($fp)
	addi $sp, $sp, 24
	lw $t0, -34168($fp)
	lw $t1, -34904($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -34908($fp)
	lw $t0, -33592($fp)
	lw $t1, -34908($fp)
	sub $t0, $t0, $t1
	sw $t0, -34912($fp)
	lw $t1, -34912($fp)
	li $t2, 0
	bne $t1, $t2, label1792
	j label1793
label1792:
	li $t0, 62862
	sw $t0, -34916($fp)
	lw $t0, -2328($fp)
	sw $t0, -34920($fp)
	li $t0, 0
	lw $t1, -34920($fp)
	sub $t0, $t0, $t1
	sw $t0, -34924($fp)
	lw $t0, -34916($fp)
	lw $t1, -34924($fp)
	mul $t0, $t0, $t1
	sw $t0, -34928($fp)
	lw $ra, -4($fp)
	lw $v0, -34928($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 62213
	sw $t0, -34932($fp)
	lw $ra, -4($fp)
	lw $v0, -34932($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -34936($fp)
	li $t0, 17376
	sw $t0, -34940($fp)
	lw $t0, -3900($fp)
	sw $t0, -34944($fp)
	lw $t0, -34940($fp)
	lw $t1, -34944($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -34948($fp)
	lw $t0, -2652($fp)
	sw $t0, -34952($fp)
	lw $t0, -7164($fp)
	sw $t0, -34956($fp)
	lw $t0, -34952($fp)
	lw $t1, -34956($fp)
	sub $t0, $t0, $t1
	sw $t0, -34960($fp)
	lw $t1, -34948($fp)
	lw $t2, -34960($fp)
	blt $t1, $t2, label1914
	j label1913
label1914:
	li $t0, 8611
	sw $t0, -34964($fp)
	lw $t1, -34964($fp)
	li $t2, 0
	bne $t1, $t2, label1912
	j label1913
label1912:
	li $t0, 1
	sw $t0, -34936($fp)
label1913:
	li $t0, 2594
	sw $t0, -34984($fp)
	lw $t0, -34984($fp)
	sw $t0, -34988($fp)
	lw $t0, -34988($fp)
	sw $t0, -34992($fp)
	li $t0, 44409
	sw $t0, -34996($fp)
	lw $t0, -34996($fp)
	sw $t0, -35000($fp)
	lw $t0, -35000($fp)
	sw $t0, -35004($fp)
	li $t0, 27747
	sw $t0, -35008($fp)
	lw $t0, -35008($fp)
	sw $t0, -35012($fp)
	lw $t0, -35012($fp)
	sw $t0, -35016($fp)
	li $t0, 59722
	sw $t0, -35020($fp)
	lw $t0, -35020($fp)
	sw $t0, -35024($fp)
	lw $t0, -35024($fp)
	sw $t0, -35028($fp)
	li $t0, 7321
	sw $t0, -35032($fp)
	addi $t0, $fp, -34980
	sw $t0, -35036($fp)
	li $t0, 0
	sw $t0, -35040($fp)
	lw $t0, -35040($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -35044($fp)
	lw $t0, -35036($fp)
	lw $t1, -35044($fp)
	add $t0, $t0, $t1
	sw $t0, -35048($fp)
	lw $t0, -35032($fp)
	lw $t1, -35048($fp)
	sw $t0, 0($t1)
	lw $t0, -35048($fp)
	lw $t1, 0($t0)
	sw $t1, -35052($fp)
	li $t0, 44508
	sw $t0, -35056($fp)
	addi $t0, $fp, -34980
	sw $t0, -35060($fp)
	li $t0, 1
	sw $t0, -35064($fp)
	lw $t0, -35064($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -35068($fp)
	lw $t0, -35060($fp)
	lw $t1, -35068($fp)
	add $t0, $t0, $t1
	sw $t0, -35072($fp)
	lw $t0, -35056($fp)
	lw $t1, -35072($fp)
	sw $t0, 0($t1)
	lw $t0, -35072($fp)
	lw $t1, 0($t0)
	sw $t1, -35076($fp)
	li $t0, 16550
	sw $t0, -35080($fp)
	addi $t0, $fp, -34980
	sw $t0, -35084($fp)
	li $t0, 2
	sw $t0, -35088($fp)
	lw $t0, -35088($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -35092($fp)
	lw $t0, -35084($fp)
	lw $t1, -35092($fp)
	add $t0, $t0, $t1
	sw $t0, -35096($fp)
	lw $t0, -35080($fp)
	lw $t1, -35096($fp)
	sw $t0, 0($t1)
	lw $t0, -35096($fp)
	lw $t1, 0($t0)
	sw $t1, -35100($fp)
	li $t0, 59032
	sw $t0, -35104($fp)
	addi $t0, $fp, -34980
	sw $t0, -35108($fp)
	li $t0, 3
	sw $t0, -35112($fp)
	lw $t0, -35112($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -35116($fp)
	lw $t0, -35108($fp)
	lw $t1, -35116($fp)
	add $t0, $t0, $t1
	sw $t0, -35120($fp)
	lw $t0, -35104($fp)
	lw $t1, -35120($fp)
	sw $t0, 0($t1)
	lw $t0, -35120($fp)
	lw $t1, 0($t0)
	sw $t1, -35124($fp)
	li $t0, 30946
	sw $t0, -35128($fp)
	lw $t0, -35128($fp)
	sw $t0, -35132($fp)
	lw $t0, -35132($fp)
	sw $t0, -35136($fp)
	li $t0, 0
	sw $t0, -35140($fp)
	li $t0, 0
	sw $t0, -35144($fp)
	li $t0, 55147
	sw $t0, -35148($fp)
	li $t0, 0
	sw $t0, -35152($fp)
	li $t0, 0
	sw $t0, -35156($fp)
	li $t0, 0
	sw $t0, -35160($fp)
	li $t0, 20936
	sw $t0, -35164($fp)
	lw $t0, -35132($fp)
	sw $t0, -35168($fp)
	lw $t1, -35164($fp)
	lw $t2, -35168($fp)
	bge $t1, $t2, label1924
	j label1926
label1926:
	lw $t0, -12996($fp)
	sw $t0, -35172($fp)
	lw $t1, -35172($fp)
	li $t2, 0
	bne $t1, $t2, label1924
	j label1925
label1924:
	li $t0, 1
	sw $t0, -35160($fp)
label1925:
	li $t0, 0
	sw $t0, -35176($fp)
	li $t0, 43836
	sw $t0, -35180($fp)
	lw $t0, -12984($fp)
	sw $t0, -35184($fp)
	lw $t1, -35180($fp)
	lw $t2, -35184($fp)
	bne $t1, $t2, label1927
	j label1929
label1929:
	lw $t0, -3240($fp)
	sw $t0, -35188($fp)
	lw $t1, -35188($fp)
	li $t2, 0
	bne $t1, $t2, label1927
	j label1928
label1927:
	li $t0, 1
	sw $t0, -35176($fp)
label1928:
	li $t0, 0
	sw $t0, -35192($fp)
	li $t0, 11219
	sw $t0, -35196($fp)
	li $t0, 0
	lw $t1, -35196($fp)
	sub $t0, $t0, $t1
	sw $t0, -35200($fp)
	lw $t1, -35200($fp)
	li $t2, 0
	bne $t1, $t2, label1930
	j label1932
label1932:
	li $t0, 23707
	sw $t0, -35204($fp)
	lw $t1, -35204($fp)
	li $t2, 0
	bne $t1, $t2, label1930
	j label1931
label1930:
	li $t0, 1
	sw $t0, -35192($fp)
label1931:
	li $t0, 40226
	sw $t0, -35208($fp)
	li $t0, 0
	sw $t0, -35212($fp)
	li $t0, 52845
	sw $t0, -35216($fp)
	li $t0, 24107
	sw $t0, -35220($fp)
	lw $t0, -35216($fp)
	lw $t1, -35220($fp)
	add $t0, $t0, $t1
	sw $t0, -35224($fp)
	lw $t1, -35224($fp)
	li $t2, 0
	bne $t1, $t2, label1935
	j label1934
label1935:
	li $t0, 40288
	sw $t0, -35228($fp)
	lw $t1, -35228($fp)
	li $t2, 0
	bne $t1, $t2, label1933
	j label1934
label1933:
	li $t0, 1
	sw $t0, -35212($fp)
label1934:
	addi $sp, $sp, -4
	lw $t0, -35160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35212($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -35232($fp)
	addi $sp, $sp, 24
	lw $t0, -2352($fp)
	sw $t0, -35236($fp)
	lw $t1, -35232($fp)
	lw $t2, -35236($fp)
	blt $t1, $t2, label1922
	j label1923
label1922:
	li $t0, 1
	sw $t0, -35156($fp)
label1923:
	addi $t0, $fp, -240
	sw $t0, -35240($fp)
	li $t0, 2
	sw $t0, -35244($fp)
	li $t0, 4
	lw $t1, -35244($fp)
	mul $t0, $t0, $t1
	sw $t0, -35248($fp)
	lw $t0, -35248($fp)
	lw $t1, -35240($fp)
	add $t0, $t0, $t1
	sw $t0, -35252($fp)
	lw $t0, -35252($fp)
	lw $t1, 0($t0)
	sw $t1, -35256($fp)
	li $t0, 57490
	sw $t0, -35260($fp)
	li $t0, 0
	lw $t1, -35260($fp)
	sub $t0, $t0, $t1
	sw $t0, -35264($fp)
	li $t0, 57679
	sw $t0, -35268($fp)
	li $t0, 0
	sw $t0, -35272($fp)
	li $t0, 19763
	sw $t0, -35276($fp)
	lw $t1, -35276($fp)
	li $t2, 0
	bne $t1, $t2, label1936
	j label1938
label1938:
	lw $t0, -12972($fp)
	sw $t0, -35280($fp)
	lw $t1, -35280($fp)
	li $t2, 0
	bne $t1, $t2, label1936
	j label1937
label1936:
	li $t0, 1
	sw $t0, -35272($fp)
label1937:
	addi $sp, $sp, -4
	lw $t0, -35156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35272($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -35284($fp)
	addi $sp, $sp, 24
	lw $t0, -13008($fp)
	sw $t0, -35288($fp)
	lw $t1, -35284($fp)
	lw $t2, -35288($fp)
	blt $t1, $t2, label1920
	j label1921
label1920:
	li $t0, 1
	sw $t0, -35152($fp)
label1921:
	li $t0, 0
	sw $t0, -35292($fp)
	li $t0, 64570
	sw $t0, -35296($fp)
	li $t0, 0
	lw $t1, -35296($fp)
	sub $t0, $t0, $t1
	sw $t0, -35300($fp)
	lw $t1, -35300($fp)
	li $t2, 0
	bne $t1, $t2, label1940
	j label1939
label1939:
	li $t0, 1
	sw $t0, -35292($fp)
label1940:
	lw $t0, -6576($fp)
	sw $t0, -35304($fp)
	lw $t0, -12048($fp)
	sw $t0, -35308($fp)
	lw $t0, -35304($fp)
	lw $t1, -35308($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -35312($fp)
	li $t0, 0
	sw $t0, -35316($fp)
	li $t0, 56602
	sw $t0, -35320($fp)
	lw $t0, -1980($fp)
	sw $t0, -35324($fp)
	lw $t0, -35320($fp)
	lw $t1, -35324($fp)
	mul $t0, $t0, $t1
	sw $t0, -35328($fp)
	lw $t0, -6348($fp)
	sw $t0, -35332($fp)
	lw $t1, -35328($fp)
	lw $t2, -35332($fp)
	bgt $t1, $t2, label1941
	j label1942
label1941:
	li $t0, 1
	sw $t0, -35316($fp)
label1942:
	addi $sp, $sp, -4
	lw $t0, -35148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35316($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -35336($fp)
	addi $sp, $sp, 24
	lw $t1, -35336($fp)
	li $t2, 0
	bne $t1, $t2, label1919
	j label1918
label1918:
	li $t0, 1
	sw $t0, -35144($fp)
label1919:
	li $t0, 0
	lw $t1, -35144($fp)
	sub $t0, $t0, $t1
	sw $t0, -35340($fp)
	addi $t0, $fp, -1004
	sw $t0, -35344($fp)
	lw $t0, -10224($fp)
	sw $t0, -35348($fp)
	li $t0, 4
	lw $t1, -35348($fp)
	mul $t0, $t0, $t1
	sw $t0, -35352($fp)
	lw $t0, -35352($fp)
	lw $t1, -35344($fp)
	add $t0, $t0, $t1
	sw $t0, -35356($fp)
	lw $t0, -35356($fp)
	lw $t1, 0($t0)
	sw $t1, -35360($fp)
	li $t0, 0
	lw $t1, -35360($fp)
	sub $t0, $t0, $t1
	sw $t0, -35364($fp)
	lw $t0, -35340($fp)
	lw $t1, -35364($fp)
	sub $t0, $t0, $t1
	sw $t0, -35368($fp)
	lw $t1, -35368($fp)
	li $t2, 0
	bne $t1, $t2, label1917
	j label1916
label1917:
	li $t0, 48530
	sw $t0, -35372($fp)
	li $t0, 26866
	sw $t0, -35376($fp)
	li $t0, 0
	lw $t1, -35376($fp)
	sub $t0, $t0, $t1
	sw $t0, -35380($fp)
	lw $t0, -35372($fp)
	lw $t1, -35380($fp)
	mul $t0, $t0, $t1
	sw $t0, -35384($fp)
	lw $t1, -35384($fp)
	li $t2, 0
	bne $t1, $t2, label1915
	j label1916
label1915:
	li $t0, 1
	sw $t0, -35140($fp)
label1916:
	lw $t0, -34988($fp)
	sw $t0, -35388($fp)
	lw $t0, -35388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -35000($fp)
	sw $t0, -35392($fp)
	lw $t0, -35392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -35012($fp)
	sw $t0, -35396($fp)
	lw $t0, -35396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -35024($fp)
	sw $t0, -35400($fp)
	lw $t0, -35400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -34980
	sw $t0, -35404($fp)
	li $t0, 0
	sw $t0, -35408($fp)
	li $t0, 4
	lw $t1, -35408($fp)
	mul $t0, $t0, $t1
	sw $t0, -35412($fp)
	lw $t0, -35412($fp)
	lw $t1, -35404($fp)
	add $t0, $t0, $t1
	sw $t0, -35416($fp)
	lw $t0, -35416($fp)
	lw $t1, 0($t0)
	sw $t1, -35420($fp)
	lw $t0, -35420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -34980
	sw $t0, -35424($fp)
	li $t0, 1
	sw $t0, -35428($fp)
	li $t0, 4
	lw $t1, -35428($fp)
	mul $t0, $t0, $t1
	sw $t0, -35432($fp)
	lw $t0, -35432($fp)
	lw $t1, -35424($fp)
	add $t0, $t0, $t1
	sw $t0, -35436($fp)
	lw $t0, -35436($fp)
	lw $t1, 0($t0)
	sw $t1, -35440($fp)
	lw $t0, -35440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -34980
	sw $t0, -35444($fp)
	li $t0, 2
	sw $t0, -35448($fp)
	li $t0, 4
	lw $t1, -35448($fp)
	mul $t0, $t0, $t1
	sw $t0, -35452($fp)
	lw $t0, -35452($fp)
	lw $t1, -35444($fp)
	add $t0, $t0, $t1
	sw $t0, -35456($fp)
	lw $t0, -35456($fp)
	lw $t1, 0($t0)
	sw $t1, -35460($fp)
	lw $t0, -35460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -34980
	sw $t0, -35464($fp)
	li $t0, 3
	sw $t0, -35468($fp)
	li $t0, 4
	lw $t1, -35468($fp)
	mul $t0, $t0, $t1
	sw $t0, -35472($fp)
	lw $t0, -35472($fp)
	lw $t1, -35464($fp)
	add $t0, $t0, $t1
	sw $t0, -35476($fp)
	lw $t0, -35476($fp)
	lw $t1, 0($t0)
	sw $t1, -35480($fp)
	lw $t0, -35480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -35484($fp)
	li $t0, 3753
	sw $t0, -35488($fp)
	lw $t1, -35488($fp)
	li $t2, 0
	bne $t1, $t2, label1944
	j label1943
label1943:
	li $t0, 1
	sw $t0, -35484($fp)
label1944:
	lw $t0, -7452($fp)
	sw $t0, -35492($fp)
	lw $t0, -35484($fp)
	lw $t1, -35492($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -35496($fp)
	li $t0, 0
	sw $t0, -35500($fp)
	addi $t0, $fp, -1336
	sw $t0, -35504($fp)
	li $t0, 1
	sw $t0, -35508($fp)
	li $t0, 4
	lw $t1, -35508($fp)
	mul $t0, $t0, $t1
	sw $t0, -35512($fp)
	lw $t0, -35512($fp)
	lw $t1, -35504($fp)
	add $t0, $t0, $t1
	sw $t0, -35516($fp)
	lw $t0, -35516($fp)
	lw $t1, 0($t0)
	sw $t1, -35520($fp)
	lw $t0, -7224($fp)
	sw $t0, -35524($fp)
	lw $t0, -35524($fp)
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	sw $t0, -35528($fp)
	li $t0, 0
	sw $t0, -35532($fp)
	lw $t0, -7152($fp)
	sw $t0, -35536($fp)
	lw $t1, -35536($fp)
	li $t2, 0
	bne $t1, $t2, label1950
	j label1949
label1950:
	lw $t0, -4560($fp)
	sw $t0, -35540($fp)
	lw $t1, -35540($fp)
	li $t2, 0
	bne $t1, $t2, label1947
	j label1949
label1949:
	li $t0, 6430
	sw $t0, -35544($fp)
	lw $t1, -35544($fp)
	li $t2, 0
	bne $t1, $t2, label1947
	j label1948
label1947:
	li $t0, 1
	sw $t0, -35532($fp)
label1948:
	addi $t0, $fp, -34980
	sw $t0, -35548($fp)
	lw $t0, -7212($fp)
	sw $t0, -35552($fp)
	li $t0, 4
	lw $t1, -35552($fp)
	mul $t0, $t0, $t1
	sw $t0, -35556($fp)
	lw $t0, -35556($fp)
	lw $t1, -35548($fp)
	add $t0, $t0, $t1
	sw $t0, -35560($fp)
	lw $t0, -35560($fp)
	lw $t1, 0($t0)
	sw $t1, -35564($fp)
	li $t0, 0
	lw $t1, -35564($fp)
	sub $t0, $t0, $t1
	sw $t0, -35568($fp)
	li $t0, 48258
	sw $t0, -35572($fp)
	li $t0, 42458
	sw $t0, -35576($fp)
	lw $t0, -35572($fp)
	lw $t1, -35576($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -35580($fp)
	li $t0, 22260
	sw $t0, -35584($fp)
	lw $t0, -35580($fp)
	lw $t1, -35584($fp)
	mul $t0, $t0, $t1
	sw $t0, -35588($fp)
	li $t0, 11041
	sw $t0, -35592($fp)
	lw $t0, -35592($fp)
	sw $t0, -13008($fp)
	lw $t0, -13008($fp)
	sw $t0, -35596($fp)
	lw $t0, -2004($fp)
	sw $t0, -35600($fp)
	li $t0, 2232
	sw $t0, -35604($fp)
	lw $t0, -35600($fp)
	lw $t1, -35604($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -35608($fp)
	lw $t0, -7296($fp)
	sw $t0, -35612($fp)
	lw $t0, -35608($fp)
	lw $t1, -35612($fp)
	add $t0, $t0, $t1
	sw $t0, -35616($fp)
	addi $sp, $sp, -4
	lw $t0, -35532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35616($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -35620($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -35624($fp)
	li $t0, 7970
	sw $t0, -35628($fp)
	lw $t0, -35628($fp)
	sw $t0, -35024($fp)
	lw $t0, -35024($fp)
	sw $t0, -35632($fp)
	li $t0, 0
	sw $t0, -35636($fp)
	lw $t0, -35012($fp)
	sw $t0, -35640($fp)
	li $t0, 0
	lw $t1, -35640($fp)
	sub $t0, $t0, $t1
	sw $t0, -35644($fp)
	lw $t1, -35644($fp)
	li $t2, 0
	bne $t1, $t2, label1955
	j label1954
label1955:
	li $t0, 52469
	sw $t0, -35648($fp)
	lw $t1, -35648($fp)
	li $t2, 0
	bne $t1, $t2, label1953
	j label1954
label1953:
	li $t0, 1
	sw $t0, -35636($fp)
label1954:
	li $t0, 0
	sw $t0, -35652($fp)
	lw $t0, -13068($fp)
	sw $t0, -35656($fp)
	lw $t1, -35656($fp)
	li $t2, 0
	bne $t1, $t2, label1956
	j label1959
label1959:
	li $t0, 14923
	sw $t0, -35660($fp)
	lw $t1, -35660($fp)
	li $t2, 0
	bne $t1, $t2, label1956
	j label1958
label1958:
	lw $t0, -6324($fp)
	sw $t0, -35664($fp)
	lw $t1, -35664($fp)
	li $t2, 0
	bne $t1, $t2, label1956
	j label1957
label1956:
	li $t0, 1
	sw $t0, -35652($fp)
label1957:
	li $t0, 0
	sw $t0, -35668($fp)
	lw $t0, -7056($fp)
	sw $t0, -35672($fp)
	li $t0, 41748
	sw $t0, -35676($fp)
	lw $t0, -35672($fp)
	lw $t1, -35676($fp)
	add $t0, $t0, $t1
	sw $t0, -35680($fp)
	lw $t0, -12120($fp)
	sw $t0, -35684($fp)
	lw $t1, -35680($fp)
	lw $t2, -35684($fp)
	blt $t1, $t2, label1960
	j label1961
label1960:
	li $t0, 1
	sw $t0, -35668($fp)
label1961:
	li $t0, 52977
	sw $t0, -35688($fp)
	lw $t0, -35000($fp)
	sw $t0, -35692($fp)
	lw $t0, -35688($fp)
	lw $t1, -35692($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -35696($fp)
	addi $sp, $sp, -4
	lw $t0, -35632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35696($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -35700($fp)
	addi $sp, $sp, 24
	lw $t1, -35700($fp)
	li $t2, 0
	bne $t1, $t2, label1952
	j label1951
label1951:
	li $t0, 1
	sw $t0, -35624($fp)
label1952:
	li $t0, 49605
	sw $t0, -35704($fp)
	lw $t0, -34988($fp)
	sw $t0, -35708($fp)
	lw $t0, -35704($fp)
	lw $t1, -35708($fp)
	sub $t0, $t0, $t1
	sw $t0, -35712($fp)
	li $t0, 22968
	sw $t0, -35716($fp)
	lw $t0, -35712($fp)
	lw $t1, -35716($fp)
	add $t0, $t0, $t1
	sw $t0, -35720($fp)
	addi $sp, $sp, -4
	lw $t0, -35520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35720($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -35724($fp)
	addi $sp, $sp, 24
	li $t0, 61577
	sw $t0, -35728($fp)
	lw $t1, -35724($fp)
	lw $t2, -35728($fp)
	bge $t1, $t2, label1945
	j label1946
label1945:
	li $t0, 1
	sw $t0, -35500($fp)
label1946:
	li $t0, 33214
	sw $t0, -35732($fp)
	li $t0, 0
	sw $t0, -35736($fp)
	li $t0, 23934
	sw $t0, -35740($fp)
	lw $t0, -13056($fp)
	sw $t0, -35744($fp)
	lw $t0, -35740($fp)
	lw $t1, -35744($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -35748($fp)
	lw $t1, -35748($fp)
	li $t2, 0
	bne $t1, $t2, label1962
	j label1964
label1964:
	lw $t0, -8412($fp)
	sw $t0, -35752($fp)
	lw $t1, -35752($fp)
	li $t2, 0
	bne $t1, $t2, label1962
	j label1963
label1962:
	li $t0, 1
	sw $t0, -35736($fp)
label1963:
	addi $t0, $fp, -1236
	sw $t0, -35756($fp)
	li $t0, 0
	sw $t0, -35760($fp)
	li $t0, 4
	lw $t1, -35760($fp)
	mul $t0, $t0, $t1
	sw $t0, -35764($fp)
	lw $t0, -35764($fp)
	lw $t1, -35756($fp)
	add $t0, $t0, $t1
	sw $t0, -35768($fp)
	lw $t0, -35768($fp)
	lw $t1, 0($t0)
	sw $t1, -35772($fp)
	li $t0, 0
	sw $t0, -35776($fp)
	lw $t0, -8388($fp)
	sw $t0, -35780($fp)
	li $t0, 30438
	sw $t0, -35784($fp)
	lw $t1, -35780($fp)
	lw $t2, -35784($fp)
	ble $t1, $t2, label1965
	j label1967
label1967:
	lw $t0, -1776($fp)
	sw $t0, -35788($fp)
	lw $t1, -35788($fp)
	li $t2, 0
	bne $t1, $t2, label1965
	j label1966
label1965:
	li $t0, 1
	sw $t0, -35776($fp)
label1966:
	li $t0, 0
	sw $t0, -35792($fp)
	lw $t0, -9300($fp)
	sw $t0, -35796($fp)
	li $t0, 23295
	sw $t0, -35800($fp)
	lw $t0, -35796($fp)
	lw $t1, -35800($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -35804($fp)
	lw $t1, -35804($fp)
	li $t2, 0
	bne $t1, $t2, label1968
	j label1970
label1970:
	li $t0, 41988
	sw $t0, -35808($fp)
	lw $t1, -35808($fp)
	li $t2, 0
	bne $t1, $t2, label1968
	j label1969
label1968:
	li $t0, 1
	sw $t0, -35792($fp)
label1969:
	lw $t0, -7248($fp)
	sw $t0, -35812($fp)
	li $t0, 47802
	sw $t0, -35816($fp)
	li $t0, 23116
	sw $t0, -35820($fp)
	lw $t0, -35816($fp)
	lw $t1, -35820($fp)
	mul $t0, $t0, $t1
	sw $t0, -35824($fp)
	li $t0, 0
	lw $t1, -35824($fp)
	sub $t0, $t0, $t1
	sw $t0, -35828($fp)
	lw $t0, -6612($fp)
	sw $t0, -35832($fp)
	lw $t0, -13044($fp)
	sw $t0, -35836($fp)
	li $t0, 61084
	sw $t0, -35840($fp)
	lw $t0, -35836($fp)
	lw $t1, -35840($fp)
	sub $t0, $t0, $t1
	sw $t0, -35844($fp)
	lw $t0, -10296($fp)
	sw $t0, -35848($fp)
	lw $t0, -35844($fp)
	lw $t1, -35848($fp)
	add $t0, $t0, $t1
	sw $t0, -35852($fp)
	addi $sp, $sp, -4
	lw $t0, -35792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35852($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -35856($fp)
	addi $sp, $sp, 24
	li $t0, 44243
	sw $t0, -35860($fp)
	addi $sp, $sp, -4
	lw $t0, -35736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35860($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -35864($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -35868($fp)
	lw $t0, -7176($fp)
	sw $t0, -35872($fp)
	li $t0, 0
	lw $t1, -35872($fp)
	sub $t0, $t0, $t1
	sw $t0, -35876($fp)
	lw $t1, -35876($fp)
	li $t2, 0
	bne $t1, $t2, label1972
	j label1971
label1971:
	li $t0, 1
	sw $t0, -35868($fp)
label1972:
	addi $sp, $sp, -4
	lw $t0, -35496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35868($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -35880($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -35884($fp)
	lw $t0, -13032($fp)
	sw $t0, -35888($fp)
	li $t0, 0
	lw $t1, -35888($fp)
	sub $t0, $t0, $t1
	sw $t0, -35892($fp)
	lw $t0, -5040($fp)
	sw $t0, -35896($fp)
	lw $t1, -35892($fp)
	lw $t2, -35896($fp)
	bne $t1, $t2, label1973
	j label1974
label1973:
	li $t0, 1
	sw $t0, -35884($fp)
label1974:
	li $t0, 0
	sw $t0, -35900($fp)
	li $t0, 45208
	sw $t0, -35904($fp)
	lw $t1, -35904($fp)
	li $t2, 0
	bne $t1, $t2, label1975
	j label1978
label1978:
	lw $t0, -13152($fp)
	sw $t0, -35908($fp)
	lw $t1, -35908($fp)
	li $t2, 0
	bne $t1, $t2, label1975
	j label1977
label1977:
	lw $t0, -2352($fp)
	sw $t0, -35912($fp)
	lw $t1, -35912($fp)
	li $t2, 0
	bne $t1, $t2, label1975
	j label1976
label1975:
	li $t0, 1
	sw $t0, -35900($fp)
label1976:
	li $t0, 0
	sw $t0, -35916($fp)
	lw $t0, -12732($fp)
	sw $t0, -35920($fp)
	lw $t1, -35920($fp)
	li $t2, 0
	bne $t1, $t2, label1979
	j label1981
label1981:
	lw $t0, -13020($fp)
	sw $t0, -35924($fp)
	lw $t1, -35924($fp)
	li $t2, 0
	bne $t1, $t2, label1979
	j label1980
label1979:
	li $t0, 1
	sw $t0, -35916($fp)
label1980:
	li $t0, 52473
	sw $t0, -35928($fp)
	addi $sp, $sp, -4
	lw $t0, -35880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -35928($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -35932($fp)
	addi $sp, $sp, 24
	lw $ra, -4($fp)
	lw $v0, -35932($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 4527
	sw $t0, -35936($fp)
	lw $t0, -35936($fp)
	sw $t0, -35940($fp)
	lw $t0, -35940($fp)
	sw $t0, -35944($fp)
	li $t0, 0
	sw $t0, -35948($fp)
	addi $t0, $fp, -480
	sw $t0, -35952($fp)
	li $t0, 5
	sw $t0, -35956($fp)
	li $t0, 4
	lw $t1, -35956($fp)
	mul $t0, $t0, $t1
	sw $t0, -35960($fp)
	lw $t0, -35960($fp)
	lw $t1, -35952($fp)
	add $t0, $t0, $t1
	sw $t0, -35964($fp)
	lw $t0, -35964($fp)
	lw $t1, 0($t0)
	sw $t1, -35968($fp)
	lw $t1, -35968($fp)
	li $t2, 0
	bne $t1, $t2, label1986
	j label1985
label1985:
	li $t0, 1
	sw $t0, -35948($fp)
label1986:
	li $t0, 0
	lw $t1, -35948($fp)
	sub $t0, $t0, $t1
	sw $t0, -35972($fp)
	lw $t0, -35972($fp)
	sw $t0, -9528($fp)
	lw $t0, -9528($fp)
	sw $t0, -35976($fp)
	lw $t1, -35976($fp)
	li $t2, 0
	bne $t1, $t2, label1982
	j label1983
label1982:
label1987:
	lw $t0, -3216($fp)
	sw $t0, -35980($fp)
	lw $t1, -35980($fp)
	li $t2, 0
	bne $t1, $t2, label1988
	j label1989
label1988:
	li $t0, 0
	sw $t0, -35984($fp)
	lw $t0, -13152($fp)
	sw $t0, -35988($fp)
	li $t0, 0
	sw $t0, -35992($fp)
	lw $t0, -12264($fp)
	sw $t0, -35996($fp)
	li $t0, 48770
	sw $t0, -36000($fp)
	lw $t0, -1776($fp)
	sw $t0, -36004($fp)
	lw $t0, -36000($fp)
	lw $t1, -36004($fp)
	sub $t0, $t0, $t1
	sw $t0, -36008($fp)
	lw $t1, -35996($fp)
	lw $t2, -36008($fp)
	ble $t1, $t2, label1992
	j label1993
label1992:
	li $t0, 1
	sw $t0, -35992($fp)
label1993:
	lw $t1, -35988($fp)
	lw $t2, -35992($fp)
	beq $t1, $t2, label1990
	j label1991
label1990:
	li $t0, 1
	sw $t0, -35984($fp)
label1991:
	lw $ra, -4($fp)
	lw $v0, -35984($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1987
label1989:
label1983:
label1994:
	li $t0, 44062
	sw $t0, -36012($fp)
	lw $t0, -36012($fp)
	sw $t0, -35940($fp)
	lw $t0, -35940($fp)
	sw $t0, -36016($fp)
	lw $t1, -36016($fp)
	li $t2, 0
	bne $t1, $t2, label1995
	j label1996
label1995:
	li $t0, 0
	sw $t0, -36020($fp)
	li $t0, 0
	sw $t0, -36024($fp)
	li $t0, 0
	sw $t0, -36028($fp)
	li $t0, 1822
	sw $t0, -36032($fp)
	lw $t1, -36032($fp)
	li $t2, 0
	bne $t1, $t2, label2003
	j label2002
label2002:
	li $t0, 1
	sw $t0, -36028($fp)
label2003:
	lw $t0, -5556($fp)
	sw $t0, -36036($fp)
	lw $t1, -36028($fp)
	lw $t2, -36036($fp)
	ble $t1, $t2, label2000
	j label2001
label2000:
	li $t0, 1
	sw $t0, -36024($fp)
label2001:
	addi $t0, $fp, -484
	sw $t0, -36040($fp)
	lw $t0, -7176($fp)
	sw $t0, -36044($fp)
	li $t0, 4
	lw $t1, -36044($fp)
	mul $t0, $t0, $t1
	sw $t0, -36048($fp)
	lw $t0, -36048($fp)
	lw $t1, -36040($fp)
	add $t0, $t0, $t1
	sw $t0, -36052($fp)
	lw $t0, -36052($fp)
	lw $t1, 0($t0)
	sw $t1, -36056($fp)
	li $t0, 0
	lw $t1, -36056($fp)
	sub $t0, $t0, $t1
	sw $t0, -36060($fp)
	li $t0, 0
	sw $t0, -36064($fp)
	lw $t0, -9768($fp)
	sw $t0, -36068($fp)
	li $t0, 6351
	sw $t0, -36072($fp)
	lw $t1, -36068($fp)
	lw $t2, -36072($fp)
	ble $t1, $t2, label2004
	j label2006
label2006:
	lw $t0, -8448($fp)
	sw $t0, -36076($fp)
	lw $t1, -36076($fp)
	li $t2, 0
	bne $t1, $t2, label2004
	j label2005
label2004:
	li $t0, 1
	sw $t0, -36064($fp)
label2005:
	addi $t0, $fp, -480
	sw $t0, -36080($fp)
	lw $t0, -13164($fp)
	sw $t0, -36084($fp)
	li $t0, 4
	lw $t1, -36084($fp)
	mul $t0, $t0, $t1
	sw $t0, -36088($fp)
	lw $t0, -36088($fp)
	lw $t1, -36080($fp)
	add $t0, $t0, $t1
	sw $t0, -36092($fp)
	lw $t0, -36092($fp)
	lw $t1, 0($t0)
	sw $t1, -36096($fp)
	li $t0, 31227
	sw $t0, -36100($fp)
	addi $sp, $sp, -4
	lw $t0, -36024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -36060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -36064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -36096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -36100($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -36104($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -36108($fp)
	li $t0, 0
	sw $t0, -36112($fp)
	li $t0, 37303
	sw $t0, -36116($fp)
	lw $t1, -36116($fp)
	li $t2, 0
	bne $t1, $t2, label2010
	j label2009
label2009:
	li $t0, 1
	sw $t0, -36112($fp)
label2010:
	lw $t0, -7164($fp)
	sw $t0, -36120($fp)
	lw $t1, -36112($fp)
	lw $t2, -36120($fp)
	bge $t1, $t2, label2007
	j label2008
label2007:
	li $t0, 1
	sw $t0, -36108($fp)
label2008:
	lw $t0, -13200($fp)
	sw $t0, -36124($fp)
	lw $t0, -36124($fp)
	sw $t0, -13188($fp)
	lw $t0, -13188($fp)
	sw $t0, -36128($fp)
	li $t0, 0
	sw $t0, -36132($fp)
	li $t0, 0
	sw $t0, -36136($fp)
	lw $t0, -5244($fp)
	sw $t0, -36140($fp)
	li $t0, 682
	sw $t0, -36144($fp)
	lw $t1, -36140($fp)
	lw $t2, -36144($fp)
	ble $t1, $t2, label2013
	j label2014
label2013:
	li $t0, 1
	sw $t0, -36136($fp)
label2014:
	li $t0, 60723
	sw $t0, -36148($fp)
	lw $t1, -36136($fp)
	lw $t2, -36148($fp)
	blt $t1, $t2, label2011
	j label2012
label2011:
	li $t0, 1
	sw $t0, -36132($fp)
label2012:
	addi $t0, $fp, -372
	sw $t0, -36152($fp)
	li $t0, 0
	sw $t0, -36156($fp)
	li $t0, 4
	lw $t1, -36156($fp)
	mul $t0, $t0, $t1
	sw $t0, -36160($fp)
	lw $t0, -36160($fp)
	lw $t1, -36152($fp)
	add $t0, $t0, $t1
	sw $t0, -36164($fp)
	lw $t0, -36164($fp)
	lw $t1, 0($t0)
	sw $t1, -36168($fp)
	lw $t0, -13176($fp)
	sw $t0, -36172($fp)
	lw $t0, -36168($fp)
	lw $t1, -36172($fp)
	mul $t0, $t0, $t1
	sw $t0, -36176($fp)
	li $t0, 0
	sw $t0, -36180($fp)
	lw $t0, -6612($fp)
	sw $t0, -36184($fp)
	lw $t1, -36184($fp)
	li $t2, 0
	bne $t1, $t2, label2016
	j label2015
label2015:
	li $t0, 1
	sw $t0, -36180($fp)
label2016:
	li $t0, 7679
	sw $t0, -36188($fp)
	lw $t0, -36180($fp)
	lw $t1, -36188($fp)
	sub $t0, $t0, $t1
	sw $t0, -36192($fp)
	addi $sp, $sp, -4
	lw $t0, -36108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -36128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -36132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -36176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -36192($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -36196($fp)
	addi $sp, $sp, 24
	lw $t0, -36104($fp)
	lw $t1, -36196($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -36200($fp)
	lw $t1, -36200($fp)
	li $t2, 0
	bne $t1, $t2, label1999
	j label1998
label1999:
	li $t0, 0
	sw $t0, -36204($fp)
	lw $t0, -6348($fp)
	sw $t0, -36208($fp)
	lw $t1, -36208($fp)
	li $t2, 0
	bne $t1, $t2, label2017
	j label2018
label2017:
	li $t0, 1
	sw $t0, -36204($fp)
label2018:
	li $t0, 0
	lw $t1, -36204($fp)
	sub $t0, $t0, $t1
	sw $t0, -36212($fp)
	lw $t1, -36212($fp)
	li $t2, 0
	bne $t1, $t2, label1997
	j label1998
label1997:
	li $t0, 1
	sw $t0, -36020($fp)
label1998:
	j label1994
label1996:
	li $t0, 0
	sw $t0, -36216($fp)
	addi $t0, $fp, -1228
	sw $t0, -36220($fp)
	li $t0, 1
	sw $t0, -36224($fp)
	li $t0, 4
	lw $t1, -36224($fp)
	mul $t0, $t0, $t1
	sw $t0, -36228($fp)
	lw $t0, -36228($fp)
	lw $t1, -36220($fp)
	add $t0, $t0, $t1
	sw $t0, -36232($fp)
	lw $t0, -36232($fp)
	lw $t1, 0($t0)
	sw $t1, -36236($fp)
	lw $t0, -13212($fp)
	sw $t0, -36240($fp)
	li $t0, 0
	lw $t1, -36240($fp)
	sub $t0, $t0, $t1
	sw $t0, -36244($fp)
	lw $t0, -36236($fp)
	lw $t1, -36244($fp)
	mul $t0, $t0, $t1
	sw $t0, -36248($fp)
	lw $t1, -36248($fp)
	li $t2, 0
	bne $t1, $t2, label2019
	j label2021
label2021:
	addi $t0, $fp, -672
	sw $t0, -36252($fp)
	lw $t0, -2652($fp)
	sw $t0, -36256($fp)
	li $t0, 4
	lw $t1, -36256($fp)
	mul $t0, $t0, $t1
	sw $t0, -36260($fp)
	lw $t0, -36260($fp)
	lw $t1, -36252($fp)
	add $t0, $t0, $t1
	sw $t0, -36264($fp)
	lw $t0, -36264($fp)
	lw $t1, 0($t0)
	sw $t1, -36268($fp)
	li $t0, 24745
	sw $t0, -36272($fp)
	li $t0, 0
	lw $t1, -36272($fp)
	sub $t0, $t0, $t1
	sw $t0, -36276($fp)
	lw $t1, -36268($fp)
	lw $t2, -36276($fp)
	blt $t1, $t2, label2019
	j label2020
label2019:
	li $t0, 1
	sw $t0, -36216($fp)
label2020:
	j label1791
label1793:
label1618:
	addi $t0, $fp, -8
	sw $t0, -36280($fp)
	li $t0, 0
	sw $t0, -36284($fp)
	li $t0, 4
	lw $t1, -36284($fp)
	mul $t0, $t0, $t1
	sw $t0, -36288($fp)
	lw $t0, -36288($fp)
	lw $t1, -36280($fp)
	add $t0, $t0, $t1
	sw $t0, -36292($fp)
	lw $t0, -36292($fp)
	lw $t1, 0($t0)
	sw $t1, -36296($fp)
	lw $t0, -36296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1368($fp)
	sw $t0, -36300($fp)
	lw $t0, -36300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1380($fp)
	sw $t0, -36304($fp)
	lw $t0, -36304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1392($fp)
	sw $t0, -36308($fp)
	lw $t0, -36308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1404($fp)
	sw $t0, -36312($fp)
	lw $t0, -36312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -36316($fp)
	li $t0, 0
	sw $t0, -36320($fp)
	li $t0, 4
	lw $t1, -36320($fp)
	mul $t0, $t0, $t1
	sw $t0, -36324($fp)
	lw $t0, -36324($fp)
	lw $t1, -36316($fp)
	add $t0, $t0, $t1
	sw $t0, -36328($fp)
	lw $t0, -36328($fp)
	lw $t1, 0($t0)
	sw $t1, -36332($fp)
	lw $t0, -36332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -36336($fp)
	li $t0, 1
	sw $t0, -36340($fp)
	li $t0, 4
	lw $t1, -36340($fp)
	mul $t0, $t0, $t1
	sw $t0, -36344($fp)
	lw $t0, -36344($fp)
	lw $t1, -36336($fp)
	add $t0, $t0, $t1
	sw $t0, -36348($fp)
	lw $t0, -36348($fp)
	lw $t1, 0($t0)
	sw $t1, -36352($fp)
	lw $t0, -36352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -36356($fp)
	li $t0, 2
	sw $t0, -36360($fp)
	li $t0, 4
	lw $t1, -36360($fp)
	mul $t0, $t0, $t1
	sw $t0, -36364($fp)
	lw $t0, -36364($fp)
	lw $t1, -36356($fp)
	add $t0, $t0, $t1
	sw $t0, -36368($fp)
	lw $t0, -36368($fp)
	lw $t1, 0($t0)
	sw $t1, -36372($fp)
	lw $t0, -36372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -36376($fp)
	li $t0, 3
	sw $t0, -36380($fp)
	li $t0, 4
	lw $t1, -36380($fp)
	mul $t0, $t0, $t1
	sw $t0, -36384($fp)
	lw $t0, -36384($fp)
	lw $t1, -36376($fp)
	add $t0, $t0, $t1
	sw $t0, -36388($fp)
	lw $t0, -36388($fp)
	lw $t1, 0($t0)
	sw $t1, -36392($fp)
	lw $t0, -36392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -36396($fp)
	li $t0, 4
	sw $t0, -36400($fp)
	li $t0, 4
	lw $t1, -36400($fp)
	mul $t0, $t0, $t1
	sw $t0, -36404($fp)
	lw $t0, -36404($fp)
	lw $t1, -36396($fp)
	add $t0, $t0, $t1
	sw $t0, -36408($fp)
	lw $t0, -36408($fp)
	lw $t1, 0($t0)
	sw $t1, -36412($fp)
	lw $t0, -36412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -36416($fp)
	li $t0, 5
	sw $t0, -36420($fp)
	li $t0, 4
	lw $t1, -36420($fp)
	mul $t0, $t0, $t1
	sw $t0, -36424($fp)
	lw $t0, -36424($fp)
	lw $t1, -36416($fp)
	add $t0, $t0, $t1
	sw $t0, -36428($fp)
	lw $t0, -36428($fp)
	lw $t1, 0($t0)
	sw $t1, -36432($fp)
	lw $t0, -36432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -36436($fp)
	li $t0, 6
	sw $t0, -36440($fp)
	li $t0, 4
	lw $t1, -36440($fp)
	mul $t0, $t0, $t1
	sw $t0, -36444($fp)
	lw $t0, -36444($fp)
	lw $t1, -36436($fp)
	add $t0, $t0, $t1
	sw $t0, -36448($fp)
	lw $t0, -36448($fp)
	lw $t1, 0($t0)
	sw $t1, -36452($fp)
	lw $t0, -36452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -36456($fp)
	li $t0, 7
	sw $t0, -36460($fp)
	li $t0, 4
	lw $t1, -36460($fp)
	mul $t0, $t0, $t1
	sw $t0, -36464($fp)
	lw $t0, -36464($fp)
	lw $t1, -36456($fp)
	add $t0, $t0, $t1
	sw $t0, -36468($fp)
	lw $t0, -36468($fp)
	lw $t1, 0($t0)
	sw $t1, -36472($fp)
	lw $t0, -36472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1608($fp)
	sw $t0, -36476($fp)
	lw $t0, -36476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -36480($fp)
	li $t0, 0
	sw $t0, -36484($fp)
	li $t0, 4
	lw $t1, -36484($fp)
	mul $t0, $t0, $t1
	sw $t0, -36488($fp)
	lw $t0, -36488($fp)
	lw $t1, -36480($fp)
	add $t0, $t0, $t1
	sw $t0, -36492($fp)
	lw $t0, -36492($fp)
	lw $t1, 0($t0)
	sw $t1, -36496($fp)
	lw $t0, -36496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -36500($fp)
	li $t0, 1
	sw $t0, -36504($fp)
	li $t0, 4
	lw $t1, -36504($fp)
	mul $t0, $t0, $t1
	sw $t0, -36508($fp)
	lw $t0, -36508($fp)
	lw $t1, -36500($fp)
	add $t0, $t0, $t1
	sw $t0, -36512($fp)
	lw $t0, -36512($fp)
	lw $t1, 0($t0)
	sw $t1, -36516($fp)
	lw $t0, -36516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -36520($fp)
	li $t0, 2
	sw $t0, -36524($fp)
	li $t0, 4
	lw $t1, -36524($fp)
	mul $t0, $t0, $t1
	sw $t0, -36528($fp)
	lw $t0, -36528($fp)
	lw $t1, -36520($fp)
	add $t0, $t0, $t1
	sw $t0, -36532($fp)
	lw $t0, -36532($fp)
	lw $t1, 0($t0)
	sw $t1, -36536($fp)
	lw $t0, -36536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -36540($fp)
	li $t0, 3
	sw $t0, -36544($fp)
	li $t0, 4
	lw $t1, -36544($fp)
	mul $t0, $t0, $t1
	sw $t0, -36548($fp)
	lw $t0, -36548($fp)
	lw $t1, -36540($fp)
	add $t0, $t0, $t1
	sw $t0, -36552($fp)
	lw $t0, -36552($fp)
	lw $t1, 0($t0)
	sw $t1, -36556($fp)
	lw $t0, -36556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -36560($fp)
	li $t0, 4
	sw $t0, -36564($fp)
	li $t0, 4
	lw $t1, -36564($fp)
	mul $t0, $t0, $t1
	sw $t0, -36568($fp)
	lw $t0, -36568($fp)
	lw $t1, -36560($fp)
	add $t0, $t0, $t1
	sw $t0, -36572($fp)
	lw $t0, -36572($fp)
	lw $t1, 0($t0)
	sw $t1, -36576($fp)
	lw $t0, -36576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1740($fp)
	sw $t0, -36580($fp)
	lw $t0, -36580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1752($fp)
	sw $t0, -36584($fp)
	lw $t0, -36584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1764($fp)
	sw $t0, -36588($fp)
	lw $t0, -36588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1776($fp)
	sw $t0, -36592($fp)
	lw $t0, -36592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1788($fp)
	sw $t0, -36596($fp)
	lw $t0, -36596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -36600($fp)
	li $t0, 0
	sw $t0, -36604($fp)
	li $t0, 4
	lw $t1, -36604($fp)
	mul $t0, $t0, $t1
	sw $t0, -36608($fp)
	lw $t0, -36608($fp)
	lw $t1, -36600($fp)
	add $t0, $t0, $t1
	sw $t0, -36612($fp)
	lw $t0, -36612($fp)
	lw $t1, 0($t0)
	sw $t1, -36616($fp)
	lw $t0, -36616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -36620($fp)
	li $t0, 1
	sw $t0, -36624($fp)
	li $t0, 4
	lw $t1, -36624($fp)
	mul $t0, $t0, $t1
	sw $t0, -36628($fp)
	lw $t0, -36628($fp)
	lw $t1, -36620($fp)
	add $t0, $t0, $t1
	sw $t0, -36632($fp)
	lw $t0, -36632($fp)
	lw $t1, 0($t0)
	sw $t1, -36636($fp)
	lw $t0, -36636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -36640($fp)
	li $t0, 2
	sw $t0, -36644($fp)
	li $t0, 4
	lw $t1, -36644($fp)
	mul $t0, $t0, $t1
	sw $t0, -36648($fp)
	lw $t0, -36648($fp)
	lw $t1, -36640($fp)
	add $t0, $t0, $t1
	sw $t0, -36652($fp)
	lw $t0, -36652($fp)
	lw $t1, 0($t0)
	sw $t1, -36656($fp)
	lw $t0, -36656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -36660($fp)
	li $t0, 3
	sw $t0, -36664($fp)
	li $t0, 4
	lw $t1, -36664($fp)
	mul $t0, $t0, $t1
	sw $t0, -36668($fp)
	lw $t0, -36668($fp)
	lw $t1, -36660($fp)
	add $t0, $t0, $t1
	sw $t0, -36672($fp)
	lw $t0, -36672($fp)
	lw $t1, 0($t0)
	sw $t1, -36676($fp)
	lw $t0, -36676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -36680($fp)
	li $t0, 4
	sw $t0, -36684($fp)
	li $t0, 4
	lw $t1, -36684($fp)
	mul $t0, $t0, $t1
	sw $t0, -36688($fp)
	lw $t0, -36688($fp)
	lw $t1, -36680($fp)
	add $t0, $t0, $t1
	sw $t0, -36692($fp)
	lw $t0, -36692($fp)
	lw $t1, 0($t0)
	sw $t1, -36696($fp)
	lw $t0, -36696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -36700($fp)
	li $t0, 5
	sw $t0, -36704($fp)
	li $t0, 4
	lw $t1, -36704($fp)
	mul $t0, $t0, $t1
	sw $t0, -36708($fp)
	lw $t0, -36708($fp)
	lw $t1, -36700($fp)
	add $t0, $t0, $t1
	sw $t0, -36712($fp)
	lw $t0, -36712($fp)
	lw $t1, 0($t0)
	sw $t1, -36716($fp)
	lw $t0, -36716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -36720($fp)
	li $t0, 6
	sw $t0, -36724($fp)
	li $t0, 4
	lw $t1, -36724($fp)
	mul $t0, $t0, $t1
	sw $t0, -36728($fp)
	lw $t0, -36728($fp)
	lw $t1, -36720($fp)
	add $t0, $t0, $t1
	sw $t0, -36732($fp)
	lw $t0, -36732($fp)
	lw $t1, 0($t0)
	sw $t1, -36736($fp)
	lw $t0, -36736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1968($fp)
	sw $t0, -36740($fp)
	lw $t0, -36740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1980($fp)
	sw $t0, -36744($fp)
	lw $t0, -36744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1992($fp)
	sw $t0, -36748($fp)
	lw $t0, -36748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2004($fp)
	sw $t0, -36752($fp)
	lw $t0, -36752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2016($fp)
	sw $t0, -36756($fp)
	lw $t0, -36756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2028($fp)
	sw $t0, -36760($fp)
	lw $t0, -36760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -36764($fp)
	li $t0, 0
	sw $t0, -36768($fp)
	li $t0, 4
	lw $t1, -36768($fp)
	mul $t0, $t0, $t1
	sw $t0, -36772($fp)
	lw $t0, -36772($fp)
	lw $t1, -36764($fp)
	add $t0, $t0, $t1
	sw $t0, -36776($fp)
	lw $t0, -36776($fp)
	lw $t1, 0($t0)
	sw $t1, -36780($fp)
	lw $t0, -36780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -36784($fp)
	li $t0, 1
	sw $t0, -36788($fp)
	li $t0, 4
	lw $t1, -36788($fp)
	mul $t0, $t0, $t1
	sw $t0, -36792($fp)
	lw $t0, -36792($fp)
	lw $t1, -36784($fp)
	add $t0, $t0, $t1
	sw $t0, -36796($fp)
	lw $t0, -36796($fp)
	lw $t1, 0($t0)
	sw $t1, -36800($fp)
	lw $t0, -36800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -36804($fp)
	li $t0, 2
	sw $t0, -36808($fp)
	li $t0, 4
	lw $t1, -36808($fp)
	mul $t0, $t0, $t1
	sw $t0, -36812($fp)
	lw $t0, -36812($fp)
	lw $t1, -36804($fp)
	add $t0, $t0, $t1
	sw $t0, -36816($fp)
	lw $t0, -36816($fp)
	lw $t1, 0($t0)
	sw $t1, -36820($fp)
	lw $t0, -36820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -36824($fp)
	li $t0, 3
	sw $t0, -36828($fp)
	li $t0, 4
	lw $t1, -36828($fp)
	mul $t0, $t0, $t1
	sw $t0, -36832($fp)
	lw $t0, -36832($fp)
	lw $t1, -36824($fp)
	add $t0, $t0, $t1
	sw $t0, -36836($fp)
	lw $t0, -36836($fp)
	lw $t1, 0($t0)
	sw $t1, -36840($fp)
	lw $t0, -36840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -36844($fp)
	li $t0, 4
	sw $t0, -36848($fp)
	li $t0, 4
	lw $t1, -36848($fp)
	mul $t0, $t0, $t1
	sw $t0, -36852($fp)
	lw $t0, -36852($fp)
	lw $t1, -36844($fp)
	add $t0, $t0, $t1
	sw $t0, -36856($fp)
	lw $t0, -36856($fp)
	lw $t1, 0($t0)
	sw $t1, -36860($fp)
	lw $t0, -36860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -36864($fp)
	li $t0, 5
	sw $t0, -36868($fp)
	li $t0, 4
	lw $t1, -36868($fp)
	mul $t0, $t0, $t1
	sw $t0, -36872($fp)
	lw $t0, -36872($fp)
	lw $t1, -36864($fp)
	add $t0, $t0, $t1
	sw $t0, -36876($fp)
	lw $t0, -36876($fp)
	lw $t1, 0($t0)
	sw $t1, -36880($fp)
	lw $t0, -36880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -36884($fp)
	li $t0, 6
	sw $t0, -36888($fp)
	li $t0, 4
	lw $t1, -36888($fp)
	mul $t0, $t0, $t1
	sw $t0, -36892($fp)
	lw $t0, -36892($fp)
	lw $t1, -36884($fp)
	add $t0, $t0, $t1
	sw $t0, -36896($fp)
	lw $t0, -36896($fp)
	lw $t1, 0($t0)
	sw $t1, -36900($fp)
	lw $t0, -36900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -36904($fp)
	li $t0, 7
	sw $t0, -36908($fp)
	li $t0, 4
	lw $t1, -36908($fp)
	mul $t0, $t0, $t1
	sw $t0, -36912($fp)
	lw $t0, -36912($fp)
	lw $t1, -36904($fp)
	add $t0, $t0, $t1
	sw $t0, -36916($fp)
	lw $t0, -36916($fp)
	lw $t1, 0($t0)
	sw $t1, -36920($fp)
	lw $t0, -36920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -36924($fp)
	li $t0, 8
	sw $t0, -36928($fp)
	li $t0, 4
	lw $t1, -36928($fp)
	mul $t0, $t0, $t1
	sw $t0, -36932($fp)
	lw $t0, -36932($fp)
	lw $t1, -36924($fp)
	add $t0, $t0, $t1
	sw $t0, -36936($fp)
	lw $t0, -36936($fp)
	lw $t1, 0($t0)
	sw $t1, -36940($fp)
	lw $t0, -36940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -36944($fp)
	li $t0, 9
	sw $t0, -36948($fp)
	li $t0, 4
	lw $t1, -36948($fp)
	mul $t0, $t0, $t1
	sw $t0, -36952($fp)
	lw $t0, -36952($fp)
	lw $t1, -36944($fp)
	add $t0, $t0, $t1
	sw $t0, -36956($fp)
	lw $t0, -36956($fp)
	lw $t1, 0($t0)
	sw $t1, -36960($fp)
	lw $t0, -36960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2280($fp)
	sw $t0, -36964($fp)
	lw $t0, -36964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2292($fp)
	sw $t0, -36968($fp)
	lw $t0, -36968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2304($fp)
	sw $t0, -36972($fp)
	lw $t0, -36972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2316($fp)
	sw $t0, -36976($fp)
	lw $t0, -36976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2328($fp)
	sw $t0, -36980($fp)
	lw $t0, -36980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2340($fp)
	sw $t0, -36984($fp)
	lw $t0, -36984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2352($fp)
	sw $t0, -36988($fp)
	lw $t0, -36988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2364($fp)
	sw $t0, -36992($fp)
	lw $t0, -36992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -36996($fp)
	li $t0, 0
	sw $t0, -37000($fp)
	li $t0, 4
	lw $t1, -37000($fp)
	mul $t0, $t0, $t1
	sw $t0, -37004($fp)
	lw $t0, -37004($fp)
	lw $t1, -36996($fp)
	add $t0, $t0, $t1
	sw $t0, -37008($fp)
	lw $t0, -37008($fp)
	lw $t1, 0($t0)
	sw $t1, -37012($fp)
	lw $t0, -37012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -37016($fp)
	li $t0, 1
	sw $t0, -37020($fp)
	li $t0, 4
	lw $t1, -37020($fp)
	mul $t0, $t0, $t1
	sw $t0, -37024($fp)
	lw $t0, -37024($fp)
	lw $t1, -37016($fp)
	add $t0, $t0, $t1
	sw $t0, -37028($fp)
	lw $t0, -37028($fp)
	lw $t1, 0($t0)
	sw $t1, -37032($fp)
	lw $t0, -37032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -37036($fp)
	li $t0, 2
	sw $t0, -37040($fp)
	li $t0, 4
	lw $t1, -37040($fp)
	mul $t0, $t0, $t1
	sw $t0, -37044($fp)
	lw $t0, -37044($fp)
	lw $t1, -37036($fp)
	add $t0, $t0, $t1
	sw $t0, -37048($fp)
	lw $t0, -37048($fp)
	lw $t1, 0($t0)
	sw $t1, -37052($fp)
	lw $t0, -37052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -37056($fp)
	li $t0, 0
	sw $t0, -37060($fp)
	li $t0, 4
	lw $t1, -37060($fp)
	mul $t0, $t0, $t1
	sw $t0, -37064($fp)
	lw $t0, -37064($fp)
	lw $t1, -37056($fp)
	add $t0, $t0, $t1
	sw $t0, -37068($fp)
	lw $t0, -37068($fp)
	lw $t1, 0($t0)
	sw $t1, -37072($fp)
	lw $t0, -37072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -37076($fp)
	li $t0, 1
	sw $t0, -37080($fp)
	li $t0, 4
	lw $t1, -37080($fp)
	mul $t0, $t0, $t1
	sw $t0, -37084($fp)
	lw $t0, -37084($fp)
	lw $t1, -37076($fp)
	add $t0, $t0, $t1
	sw $t0, -37088($fp)
	lw $t0, -37088($fp)
	lw $t1, 0($t0)
	sw $t1, -37092($fp)
	lw $t0, -37092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -37096($fp)
	li $t0, 2
	sw $t0, -37100($fp)
	li $t0, 4
	lw $t1, -37100($fp)
	mul $t0, $t0, $t1
	sw $t0, -37104($fp)
	lw $t0, -37104($fp)
	lw $t1, -37096($fp)
	add $t0, $t0, $t1
	sw $t0, -37108($fp)
	lw $t0, -37108($fp)
	lw $t1, 0($t0)
	sw $t1, -37112($fp)
	lw $t0, -37112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -37116($fp)
	li $t0, 3
	sw $t0, -37120($fp)
	li $t0, 4
	lw $t1, -37120($fp)
	mul $t0, $t0, $t1
	sw $t0, -37124($fp)
	lw $t0, -37124($fp)
	lw $t1, -37116($fp)
	add $t0, $t0, $t1
	sw $t0, -37128($fp)
	lw $t0, -37128($fp)
	lw $t1, 0($t0)
	sw $t1, -37132($fp)
	lw $t0, -37132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -37136($fp)
	li $t0, 4
	sw $t0, -37140($fp)
	li $t0, 4
	lw $t1, -37140($fp)
	mul $t0, $t0, $t1
	sw $t0, -37144($fp)
	lw $t0, -37144($fp)
	lw $t1, -37136($fp)
	add $t0, $t0, $t1
	sw $t0, -37148($fp)
	lw $t0, -37148($fp)
	lw $t1, 0($t0)
	sw $t1, -37152($fp)
	lw $t0, -37152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -37156($fp)
	li $t0, 5
	sw $t0, -37160($fp)
	li $t0, 4
	lw $t1, -37160($fp)
	mul $t0, $t0, $t1
	sw $t0, -37164($fp)
	lw $t0, -37164($fp)
	lw $t1, -37156($fp)
	add $t0, $t0, $t1
	sw $t0, -37168($fp)
	lw $t0, -37168($fp)
	lw $t1, 0($t0)
	sw $t1, -37172($fp)
	lw $t0, -37172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -37176($fp)
	li $t0, 6
	sw $t0, -37180($fp)
	li $t0, 4
	lw $t1, -37180($fp)
	mul $t0, $t0, $t1
	sw $t0, -37184($fp)
	lw $t0, -37184($fp)
	lw $t1, -37176($fp)
	add $t0, $t0, $t1
	sw $t0, -37188($fp)
	lw $t0, -37188($fp)
	lw $t1, 0($t0)
	sw $t1, -37192($fp)
	lw $t0, -37192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -37196($fp)
	li $t0, 7
	sw $t0, -37200($fp)
	li $t0, 4
	lw $t1, -37200($fp)
	mul $t0, $t0, $t1
	sw $t0, -37204($fp)
	lw $t0, -37204($fp)
	lw $t1, -37196($fp)
	add $t0, $t0, $t1
	sw $t0, -37208($fp)
	lw $t0, -37208($fp)
	lw $t1, 0($t0)
	sw $t1, -37212($fp)
	lw $t0, -37212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2640($fp)
	sw $t0, -37216($fp)
	lw $t0, -37216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2652($fp)
	sw $t0, -37220($fp)
	lw $t0, -37220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2664($fp)
	sw $t0, -37224($fp)
	lw $t0, -37224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2676($fp)
	sw $t0, -37228($fp)
	lw $t0, -37228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2688($fp)
	sw $t0, -37232($fp)
	lw $t0, -37232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2700($fp)
	sw $t0, -37236($fp)
	lw $t0, -37236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -37240($fp)
	li $t0, 0
	sw $t0, -37244($fp)
	li $t0, 4
	lw $t1, -37244($fp)
	mul $t0, $t0, $t1
	sw $t0, -37248($fp)
	lw $t0, -37248($fp)
	lw $t1, -37240($fp)
	add $t0, $t0, $t1
	sw $t0, -37252($fp)
	lw $t0, -37252($fp)
	lw $t1, 0($t0)
	sw $t1, -37256($fp)
	lw $t0, -37256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -37260($fp)
	li $t0, 1
	sw $t0, -37264($fp)
	li $t0, 4
	lw $t1, -37264($fp)
	mul $t0, $t0, $t1
	sw $t0, -37268($fp)
	lw $t0, -37268($fp)
	lw $t1, -37260($fp)
	add $t0, $t0, $t1
	sw $t0, -37272($fp)
	lw $t0, -37272($fp)
	lw $t1, 0($t0)
	sw $t1, -37276($fp)
	lw $t0, -37276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -37280($fp)
	li $t0, 2
	sw $t0, -37284($fp)
	li $t0, 4
	lw $t1, -37284($fp)
	mul $t0, $t0, $t1
	sw $t0, -37288($fp)
	lw $t0, -37288($fp)
	lw $t1, -37280($fp)
	add $t0, $t0, $t1
	sw $t0, -37292($fp)
	lw $t0, -37292($fp)
	lw $t1, 0($t0)
	sw $t1, -37296($fp)
	lw $t0, -37296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -37300($fp)
	li $t0, 3
	sw $t0, -37304($fp)
	li $t0, 4
	lw $t1, -37304($fp)
	mul $t0, $t0, $t1
	sw $t0, -37308($fp)
	lw $t0, -37308($fp)
	lw $t1, -37300($fp)
	add $t0, $t0, $t1
	sw $t0, -37312($fp)
	lw $t0, -37312($fp)
	lw $t1, 0($t0)
	sw $t1, -37316($fp)
	lw $t0, -37316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -37320($fp)
	li $t0, 4
	sw $t0, -37324($fp)
	li $t0, 4
	lw $t1, -37324($fp)
	mul $t0, $t0, $t1
	sw $t0, -37328($fp)
	lw $t0, -37328($fp)
	lw $t1, -37320($fp)
	add $t0, $t0, $t1
	sw $t0, -37332($fp)
	lw $t0, -37332($fp)
	lw $t1, 0($t0)
	sw $t1, -37336($fp)
	lw $t0, -37336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -37340($fp)
	li $t0, 5
	sw $t0, -37344($fp)
	li $t0, 4
	lw $t1, -37344($fp)
	mul $t0, $t0, $t1
	sw $t0, -37348($fp)
	lw $t0, -37348($fp)
	lw $t1, -37340($fp)
	add $t0, $t0, $t1
	sw $t0, -37352($fp)
	lw $t0, -37352($fp)
	lw $t1, 0($t0)
	sw $t1, -37356($fp)
	lw $t0, -37356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -37360($fp)
	li $t0, 6
	sw $t0, -37364($fp)
	li $t0, 4
	lw $t1, -37364($fp)
	mul $t0, $t0, $t1
	sw $t0, -37368($fp)
	lw $t0, -37368($fp)
	lw $t1, -37360($fp)
	add $t0, $t0, $t1
	sw $t0, -37372($fp)
	lw $t0, -37372($fp)
	lw $t1, 0($t0)
	sw $t1, -37376($fp)
	lw $t0, -37376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2880($fp)
	sw $t0, -37380($fp)
	lw $t0, -37380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2892($fp)
	sw $t0, -37384($fp)
	lw $t0, -37384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2904($fp)
	sw $t0, -37388($fp)
	lw $t0, -37388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -37392($fp)
	li $t0, 0
	sw $t0, -37396($fp)
	li $t0, 4
	lw $t1, -37396($fp)
	mul $t0, $t0, $t1
	sw $t0, -37400($fp)
	lw $t0, -37400($fp)
	lw $t1, -37392($fp)
	add $t0, $t0, $t1
	sw $t0, -37404($fp)
	lw $t0, -37404($fp)
	lw $t1, 0($t0)
	sw $t1, -37408($fp)
	lw $t0, -37408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -37412($fp)
	li $t0, 1
	sw $t0, -37416($fp)
	li $t0, 4
	lw $t1, -37416($fp)
	mul $t0, $t0, $t1
	sw $t0, -37420($fp)
	lw $t0, -37420($fp)
	lw $t1, -37412($fp)
	add $t0, $t0, $t1
	sw $t0, -37424($fp)
	lw $t0, -37424($fp)
	lw $t1, 0($t0)
	sw $t1, -37428($fp)
	lw $t0, -37428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -37432($fp)
	li $t0, 2
	sw $t0, -37436($fp)
	li $t0, 4
	lw $t1, -37436($fp)
	mul $t0, $t0, $t1
	sw $t0, -37440($fp)
	lw $t0, -37440($fp)
	lw $t1, -37432($fp)
	add $t0, $t0, $t1
	sw $t0, -37444($fp)
	lw $t0, -37444($fp)
	lw $t1, 0($t0)
	sw $t1, -37448($fp)
	lw $t0, -37448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -37452($fp)
	li $t0, 3
	sw $t0, -37456($fp)
	li $t0, 4
	lw $t1, -37456($fp)
	mul $t0, $t0, $t1
	sw $t0, -37460($fp)
	lw $t0, -37460($fp)
	lw $t1, -37452($fp)
	add $t0, $t0, $t1
	sw $t0, -37464($fp)
	lw $t0, -37464($fp)
	lw $t1, 0($t0)
	sw $t1, -37468($fp)
	lw $t0, -37468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3012($fp)
	sw $t0, -37472($fp)
	lw $t0, -37472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3024($fp)
	sw $t0, -37476($fp)
	lw $t0, -37476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3036($fp)
	sw $t0, -37480($fp)
	lw $t0, -37480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3048($fp)
	sw $t0, -37484($fp)
	lw $t0, -37484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -37488($fp)
	li $t0, 0
	sw $t0, -37492($fp)
	li $t0, 4
	lw $t1, -37492($fp)
	mul $t0, $t0, $t1
	sw $t0, -37496($fp)
	lw $t0, -37496($fp)
	lw $t1, -37488($fp)
	add $t0, $t0, $t1
	sw $t0, -37500($fp)
	lw $t0, -37500($fp)
	lw $t1, 0($t0)
	sw $t1, -37504($fp)
	lw $t0, -37504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -37508($fp)
	li $t0, 1
	sw $t0, -37512($fp)
	li $t0, 4
	lw $t1, -37512($fp)
	mul $t0, $t0, $t1
	sw $t0, -37516($fp)
	lw $t0, -37516($fp)
	lw $t1, -37508($fp)
	add $t0, $t0, $t1
	sw $t0, -37520($fp)
	lw $t0, -37520($fp)
	lw $t1, 0($t0)
	sw $t1, -37524($fp)
	lw $t0, -37524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -37528($fp)
	li $t0, 2
	sw $t0, -37532($fp)
	li $t0, 4
	lw $t1, -37532($fp)
	mul $t0, $t0, $t1
	sw $t0, -37536($fp)
	lw $t0, -37536($fp)
	lw $t1, -37528($fp)
	add $t0, $t0, $t1
	sw $t0, -37540($fp)
	lw $t0, -37540($fp)
	lw $t1, 0($t0)
	sw $t1, -37544($fp)
	lw $t0, -37544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -37548($fp)
	li $t0, 3
	sw $t0, -37552($fp)
	li $t0, 4
	lw $t1, -37552($fp)
	mul $t0, $t0, $t1
	sw $t0, -37556($fp)
	lw $t0, -37556($fp)
	lw $t1, -37548($fp)
	add $t0, $t0, $t1
	sw $t0, -37560($fp)
	lw $t0, -37560($fp)
	lw $t1, 0($t0)
	sw $t1, -37564($fp)
	lw $t0, -37564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -37568($fp)
	li $t0, 4
	sw $t0, -37572($fp)
	li $t0, 4
	lw $t1, -37572($fp)
	mul $t0, $t0, $t1
	sw $t0, -37576($fp)
	lw $t0, -37576($fp)
	lw $t1, -37568($fp)
	add $t0, $t0, $t1
	sw $t0, -37580($fp)
	lw $t0, -37580($fp)
	lw $t1, 0($t0)
	sw $t1, -37584($fp)
	lw $t0, -37584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -37588($fp)
	li $t0, 5
	sw $t0, -37592($fp)
	li $t0, 4
	lw $t1, -37592($fp)
	mul $t0, $t0, $t1
	sw $t0, -37596($fp)
	lw $t0, -37596($fp)
	lw $t1, -37588($fp)
	add $t0, $t0, $t1
	sw $t0, -37600($fp)
	lw $t0, -37600($fp)
	lw $t1, 0($t0)
	sw $t1, -37604($fp)
	lw $t0, -37604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3204($fp)
	sw $t0, -37608($fp)
	lw $t0, -37608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3216($fp)
	sw $t0, -37612($fp)
	lw $t0, -37612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3228($fp)
	sw $t0, -37616($fp)
	lw $t0, -37616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3240($fp)
	sw $t0, -37620($fp)
	lw $t0, -37620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3252($fp)
	sw $t0, -37624($fp)
	lw $t0, -37624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3264($fp)
	sw $t0, -37628($fp)
	lw $t0, -37628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3276($fp)
	sw $t0, -37632($fp)
	lw $t0, -37632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3288($fp)
	sw $t0, -37636($fp)
	lw $t0, -37636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3300($fp)
	sw $t0, -37640($fp)
	lw $t0, -37640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3312($fp)
	sw $t0, -37644($fp)
	lw $t0, -37644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3324($fp)
	sw $t0, -37648($fp)
	lw $t0, -37648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3336($fp)
	sw $t0, -37652($fp)
	lw $t0, -37652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3348($fp)
	sw $t0, -37656($fp)
	lw $t0, -37656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3360($fp)
	sw $t0, -37660($fp)
	lw $t0, -37660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3372($fp)
	sw $t0, -37664($fp)
	lw $t0, -37664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3384($fp)
	sw $t0, -37668($fp)
	lw $t0, -37668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3396($fp)
	sw $t0, -37672($fp)
	lw $t0, -37672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3408($fp)
	sw $t0, -37676($fp)
	lw $t0, -37676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3420($fp)
	sw $t0, -37680($fp)
	lw $t0, -37680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3432($fp)
	sw $t0, -37684($fp)
	lw $t0, -37684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3444($fp)
	sw $t0, -37688($fp)
	lw $t0, -37688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3456($fp)
	sw $t0, -37692($fp)
	lw $t0, -37692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3468($fp)
	sw $t0, -37696($fp)
	lw $t0, -37696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3480($fp)
	sw $t0, -37700($fp)
	lw $t0, -37700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3492($fp)
	sw $t0, -37704($fp)
	lw $t0, -37704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -37708($fp)
	li $t0, 0
	sw $t0, -37712($fp)
	li $t0, 4
	lw $t1, -37712($fp)
	mul $t0, $t0, $t1
	sw $t0, -37716($fp)
	lw $t0, -37716($fp)
	lw $t1, -37708($fp)
	add $t0, $t0, $t1
	sw $t0, -37720($fp)
	lw $t0, -37720($fp)
	lw $t1, 0($t0)
	sw $t1, -37724($fp)
	lw $t0, -37724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -37728($fp)
	li $t0, 1
	sw $t0, -37732($fp)
	li $t0, 4
	lw $t1, -37732($fp)
	mul $t0, $t0, $t1
	sw $t0, -37736($fp)
	lw $t0, -37736($fp)
	lw $t1, -37728($fp)
	add $t0, $t0, $t1
	sw $t0, -37740($fp)
	lw $t0, -37740($fp)
	lw $t1, 0($t0)
	sw $t1, -37744($fp)
	lw $t0, -37744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -37748($fp)
	li $t0, 2
	sw $t0, -37752($fp)
	li $t0, 4
	lw $t1, -37752($fp)
	mul $t0, $t0, $t1
	sw $t0, -37756($fp)
	lw $t0, -37756($fp)
	lw $t1, -37748($fp)
	add $t0, $t0, $t1
	sw $t0, -37760($fp)
	lw $t0, -37760($fp)
	lw $t1, 0($t0)
	sw $t1, -37764($fp)
	lw $t0, -37764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3576($fp)
	sw $t0, -37768($fp)
	lw $t0, -37768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3588($fp)
	sw $t0, -37772($fp)
	lw $t0, -37772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3600($fp)
	sw $t0, -37776($fp)
	lw $t0, -37776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3612($fp)
	sw $t0, -37780($fp)
	lw $t0, -37780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3624($fp)
	sw $t0, -37784($fp)
	lw $t0, -37784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3636($fp)
	sw $t0, -37788($fp)
	lw $t0, -37788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3648($fp)
	sw $t0, -37792($fp)
	lw $t0, -37792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3660($fp)
	sw $t0, -37796($fp)
	lw $t0, -37796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3672($fp)
	sw $t0, -37800($fp)
	lw $t0, -37800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3684($fp)
	sw $t0, -37804($fp)
	lw $t0, -37804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3696($fp)
	sw $t0, -37808($fp)
	lw $t0, -37808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3708($fp)
	sw $t0, -37812($fp)
	lw $t0, -37812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3720($fp)
	sw $t0, -37816($fp)
	lw $t0, -37816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3732($fp)
	sw $t0, -37820($fp)
	lw $t0, -37820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3744($fp)
	sw $t0, -37824($fp)
	lw $t0, -37824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3756($fp)
	sw $t0, -37828($fp)
	lw $t0, -37828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -272
	sw $t0, -37832($fp)
	li $t0, 0
	sw $t0, -37836($fp)
	li $t0, 4
	lw $t1, -37836($fp)
	mul $t0, $t0, $t1
	sw $t0, -37840($fp)
	lw $t0, -37840($fp)
	lw $t1, -37832($fp)
	add $t0, $t0, $t1
	sw $t0, -37844($fp)
	lw $t0, -37844($fp)
	lw $t1, 0($t0)
	sw $t1, -37848($fp)
	lw $t0, -37848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -272
	sw $t0, -37852($fp)
	li $t0, 1
	sw $t0, -37856($fp)
	li $t0, 4
	lw $t1, -37856($fp)
	mul $t0, $t0, $t1
	sw $t0, -37860($fp)
	lw $t0, -37860($fp)
	lw $t1, -37852($fp)
	add $t0, $t0, $t1
	sw $t0, -37864($fp)
	lw $t0, -37864($fp)
	lw $t1, 0($t0)
	sw $t1, -37868($fp)
	lw $t0, -37868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -272
	sw $t0, -37872($fp)
	li $t0, 2
	sw $t0, -37876($fp)
	li $t0, 4
	lw $t1, -37876($fp)
	mul $t0, $t0, $t1
	sw $t0, -37880($fp)
	lw $t0, -37880($fp)
	lw $t1, -37872($fp)
	add $t0, $t0, $t1
	sw $t0, -37884($fp)
	lw $t0, -37884($fp)
	lw $t1, 0($t0)
	sw $t1, -37888($fp)
	lw $t0, -37888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -272
	sw $t0, -37892($fp)
	li $t0, 3
	sw $t0, -37896($fp)
	li $t0, 4
	lw $t1, -37896($fp)
	mul $t0, $t0, $t1
	sw $t0, -37900($fp)
	lw $t0, -37900($fp)
	lw $t1, -37892($fp)
	add $t0, $t0, $t1
	sw $t0, -37904($fp)
	lw $t0, -37904($fp)
	lw $t1, 0($t0)
	sw $t1, -37908($fp)
	lw $t0, -37908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -272
	sw $t0, -37912($fp)
	li $t0, 4
	sw $t0, -37916($fp)
	li $t0, 4
	lw $t1, -37916($fp)
	mul $t0, $t0, $t1
	sw $t0, -37920($fp)
	lw $t0, -37920($fp)
	lw $t1, -37912($fp)
	add $t0, $t0, $t1
	sw $t0, -37924($fp)
	lw $t0, -37924($fp)
	lw $t1, 0($t0)
	sw $t1, -37928($fp)
	lw $t0, -37928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3888($fp)
	sw $t0, -37932($fp)
	lw $t0, -37932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3900($fp)
	sw $t0, -37936($fp)
	lw $t0, -37936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3912($fp)
	sw $t0, -37940($fp)
	lw $t0, -37940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -292
	sw $t0, -37944($fp)
	li $t0, 0
	sw $t0, -37948($fp)
	li $t0, 4
	lw $t1, -37948($fp)
	mul $t0, $t0, $t1
	sw $t0, -37952($fp)
	lw $t0, -37952($fp)
	lw $t1, -37944($fp)
	add $t0, $t0, $t1
	sw $t0, -37956($fp)
	lw $t0, -37956($fp)
	lw $t1, 0($t0)
	sw $t1, -37960($fp)
	lw $t0, -37960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -292
	sw $t0, -37964($fp)
	li $t0, 1
	sw $t0, -37968($fp)
	li $t0, 4
	lw $t1, -37968($fp)
	mul $t0, $t0, $t1
	sw $t0, -37972($fp)
	lw $t0, -37972($fp)
	lw $t1, -37964($fp)
	add $t0, $t0, $t1
	sw $t0, -37976($fp)
	lw $t0, -37976($fp)
	lw $t1, 0($t0)
	sw $t1, -37980($fp)
	lw $t0, -37980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -292
	sw $t0, -37984($fp)
	li $t0, 2
	sw $t0, -37988($fp)
	li $t0, 4
	lw $t1, -37988($fp)
	mul $t0, $t0, $t1
	sw $t0, -37992($fp)
	lw $t0, -37992($fp)
	lw $t1, -37984($fp)
	add $t0, $t0, $t1
	sw $t0, -37996($fp)
	lw $t0, -37996($fp)
	lw $t1, 0($t0)
	sw $t1, -38000($fp)
	lw $t0, -38000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -292
	sw $t0, -38004($fp)
	li $t0, 3
	sw $t0, -38008($fp)
	li $t0, 4
	lw $t1, -38008($fp)
	mul $t0, $t0, $t1
	sw $t0, -38012($fp)
	lw $t0, -38012($fp)
	lw $t1, -38004($fp)
	add $t0, $t0, $t1
	sw $t0, -38016($fp)
	lw $t0, -38016($fp)
	lw $t1, 0($t0)
	sw $t1, -38020($fp)
	lw $t0, -38020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -292
	sw $t0, -38024($fp)
	li $t0, 4
	sw $t0, -38028($fp)
	li $t0, 4
	lw $t1, -38028($fp)
	mul $t0, $t0, $t1
	sw $t0, -38032($fp)
	lw $t0, -38032($fp)
	lw $t1, -38024($fp)
	add $t0, $t0, $t1
	sw $t0, -38036($fp)
	lw $t0, -38036($fp)
	lw $t1, 0($t0)
	sw $t1, -38040($fp)
	lw $t0, -38040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4044($fp)
	sw $t0, -38044($fp)
	lw $t0, -38044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -320
	sw $t0, -38048($fp)
	li $t0, 0
	sw $t0, -38052($fp)
	li $t0, 4
	lw $t1, -38052($fp)
	mul $t0, $t0, $t1
	sw $t0, -38056($fp)
	lw $t0, -38056($fp)
	lw $t1, -38048($fp)
	add $t0, $t0, $t1
	sw $t0, -38060($fp)
	lw $t0, -38060($fp)
	lw $t1, 0($t0)
	sw $t1, -38064($fp)
	lw $t0, -38064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -320
	sw $t0, -38068($fp)
	li $t0, 1
	sw $t0, -38072($fp)
	li $t0, 4
	lw $t1, -38072($fp)
	mul $t0, $t0, $t1
	sw $t0, -38076($fp)
	lw $t0, -38076($fp)
	lw $t1, -38068($fp)
	add $t0, $t0, $t1
	sw $t0, -38080($fp)
	lw $t0, -38080($fp)
	lw $t1, 0($t0)
	sw $t1, -38084($fp)
	lw $t0, -38084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -320
	sw $t0, -38088($fp)
	li $t0, 2
	sw $t0, -38092($fp)
	li $t0, 4
	lw $t1, -38092($fp)
	mul $t0, $t0, $t1
	sw $t0, -38096($fp)
	lw $t0, -38096($fp)
	lw $t1, -38088($fp)
	add $t0, $t0, $t1
	sw $t0, -38100($fp)
	lw $t0, -38100($fp)
	lw $t1, 0($t0)
	sw $t1, -38104($fp)
	lw $t0, -38104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -320
	sw $t0, -38108($fp)
	li $t0, 3
	sw $t0, -38112($fp)
	li $t0, 4
	lw $t1, -38112($fp)
	mul $t0, $t0, $t1
	sw $t0, -38116($fp)
	lw $t0, -38116($fp)
	lw $t1, -38108($fp)
	add $t0, $t0, $t1
	sw $t0, -38120($fp)
	lw $t0, -38120($fp)
	lw $t1, 0($t0)
	sw $t1, -38124($fp)
	lw $t0, -38124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -320
	sw $t0, -38128($fp)
	li $t0, 4
	sw $t0, -38132($fp)
	li $t0, 4
	lw $t1, -38132($fp)
	mul $t0, $t0, $t1
	sw $t0, -38136($fp)
	lw $t0, -38136($fp)
	lw $t1, -38128($fp)
	add $t0, $t0, $t1
	sw $t0, -38140($fp)
	lw $t0, -38140($fp)
	lw $t1, 0($t0)
	sw $t1, -38144($fp)
	lw $t0, -38144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -320
	sw $t0, -38148($fp)
	li $t0, 5
	sw $t0, -38152($fp)
	li $t0, 4
	lw $t1, -38152($fp)
	mul $t0, $t0, $t1
	sw $t0, -38156($fp)
	lw $t0, -38156($fp)
	lw $t1, -38148($fp)
	add $t0, $t0, $t1
	sw $t0, -38160($fp)
	lw $t0, -38160($fp)
	lw $t1, 0($t0)
	sw $t1, -38164($fp)
	lw $t0, -38164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -320
	sw $t0, -38168($fp)
	li $t0, 6
	sw $t0, -38172($fp)
	li $t0, 4
	lw $t1, -38172($fp)
	mul $t0, $t0, $t1
	sw $t0, -38176($fp)
	lw $t0, -38176($fp)
	lw $t1, -38168($fp)
	add $t0, $t0, $t1
	sw $t0, -38180($fp)
	lw $t0, -38180($fp)
	lw $t1, 0($t0)
	sw $t1, -38184($fp)
	lw $t0, -38184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -336
	sw $t0, -38188($fp)
	li $t0, 0
	sw $t0, -38192($fp)
	li $t0, 4
	lw $t1, -38192($fp)
	mul $t0, $t0, $t1
	sw $t0, -38196($fp)
	lw $t0, -38196($fp)
	lw $t1, -38188($fp)
	add $t0, $t0, $t1
	sw $t0, -38200($fp)
	lw $t0, -38200($fp)
	lw $t1, 0($t0)
	sw $t1, -38204($fp)
	lw $t0, -38204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -336
	sw $t0, -38208($fp)
	li $t0, 1
	sw $t0, -38212($fp)
	li $t0, 4
	lw $t1, -38212($fp)
	mul $t0, $t0, $t1
	sw $t0, -38216($fp)
	lw $t0, -38216($fp)
	lw $t1, -38208($fp)
	add $t0, $t0, $t1
	sw $t0, -38220($fp)
	lw $t0, -38220($fp)
	lw $t1, 0($t0)
	sw $t1, -38224($fp)
	lw $t0, -38224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -336
	sw $t0, -38228($fp)
	li $t0, 2
	sw $t0, -38232($fp)
	li $t0, 4
	lw $t1, -38232($fp)
	mul $t0, $t0, $t1
	sw $t0, -38236($fp)
	lw $t0, -38236($fp)
	lw $t1, -38228($fp)
	add $t0, $t0, $t1
	sw $t0, -38240($fp)
	lw $t0, -38240($fp)
	lw $t1, 0($t0)
	sw $t1, -38244($fp)
	lw $t0, -38244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -336
	sw $t0, -38248($fp)
	li $t0, 3
	sw $t0, -38252($fp)
	li $t0, 4
	lw $t1, -38252($fp)
	mul $t0, $t0, $t1
	sw $t0, -38256($fp)
	lw $t0, -38256($fp)
	lw $t1, -38248($fp)
	add $t0, $t0, $t1
	sw $t0, -38260($fp)
	lw $t0, -38260($fp)
	lw $t1, 0($t0)
	sw $t1, -38264($fp)
	lw $t0, -38264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4320($fp)
	sw $t0, -38268($fp)
	lw $t0, -38268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -360
	sw $t0, -38272($fp)
	li $t0, 0
	sw $t0, -38276($fp)
	li $t0, 4
	lw $t1, -38276($fp)
	mul $t0, $t0, $t1
	sw $t0, -38280($fp)
	lw $t0, -38280($fp)
	lw $t1, -38272($fp)
	add $t0, $t0, $t1
	sw $t0, -38284($fp)
	lw $t0, -38284($fp)
	lw $t1, 0($t0)
	sw $t1, -38288($fp)
	lw $t0, -38288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -360
	sw $t0, -38292($fp)
	li $t0, 1
	sw $t0, -38296($fp)
	li $t0, 4
	lw $t1, -38296($fp)
	mul $t0, $t0, $t1
	sw $t0, -38300($fp)
	lw $t0, -38300($fp)
	lw $t1, -38292($fp)
	add $t0, $t0, $t1
	sw $t0, -38304($fp)
	lw $t0, -38304($fp)
	lw $t1, 0($t0)
	sw $t1, -38308($fp)
	lw $t0, -38308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -360
	sw $t0, -38312($fp)
	li $t0, 2
	sw $t0, -38316($fp)
	li $t0, 4
	lw $t1, -38316($fp)
	mul $t0, $t0, $t1
	sw $t0, -38320($fp)
	lw $t0, -38320($fp)
	lw $t1, -38312($fp)
	add $t0, $t0, $t1
	sw $t0, -38324($fp)
	lw $t0, -38324($fp)
	lw $t1, 0($t0)
	sw $t1, -38328($fp)
	lw $t0, -38328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -360
	sw $t0, -38332($fp)
	li $t0, 3
	sw $t0, -38336($fp)
	li $t0, 4
	lw $t1, -38336($fp)
	mul $t0, $t0, $t1
	sw $t0, -38340($fp)
	lw $t0, -38340($fp)
	lw $t1, -38332($fp)
	add $t0, $t0, $t1
	sw $t0, -38344($fp)
	lw $t0, -38344($fp)
	lw $t1, 0($t0)
	sw $t1, -38348($fp)
	lw $t0, -38348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -360
	sw $t0, -38352($fp)
	li $t0, 4
	sw $t0, -38356($fp)
	li $t0, 4
	lw $t1, -38356($fp)
	mul $t0, $t0, $t1
	sw $t0, -38360($fp)
	lw $t0, -38360($fp)
	lw $t1, -38352($fp)
	add $t0, $t0, $t1
	sw $t0, -38364($fp)
	lw $t0, -38364($fp)
	lw $t1, 0($t0)
	sw $t1, -38368($fp)
	lw $t0, -38368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -360
	sw $t0, -38372($fp)
	li $t0, 5
	sw $t0, -38376($fp)
	li $t0, 4
	lw $t1, -38376($fp)
	mul $t0, $t0, $t1
	sw $t0, -38380($fp)
	lw $t0, -38380($fp)
	lw $t1, -38372($fp)
	add $t0, $t0, $t1
	sw $t0, -38384($fp)
	lw $t0, -38384($fp)
	lw $t1, 0($t0)
	sw $t1, -38388($fp)
	lw $t0, -38388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -372
	sw $t0, -38392($fp)
	li $t0, 0
	sw $t0, -38396($fp)
	li $t0, 4
	lw $t1, -38396($fp)
	mul $t0, $t0, $t1
	sw $t0, -38400($fp)
	lw $t0, -38400($fp)
	lw $t1, -38392($fp)
	add $t0, $t0, $t1
	sw $t0, -38404($fp)
	lw $t0, -38404($fp)
	lw $t1, 0($t0)
	sw $t1, -38408($fp)
	lw $t0, -38408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -372
	sw $t0, -38412($fp)
	li $t0, 1
	sw $t0, -38416($fp)
	li $t0, 4
	lw $t1, -38416($fp)
	mul $t0, $t0, $t1
	sw $t0, -38420($fp)
	lw $t0, -38420($fp)
	lw $t1, -38412($fp)
	add $t0, $t0, $t1
	sw $t0, -38424($fp)
	lw $t0, -38424($fp)
	lw $t1, 0($t0)
	sw $t1, -38428($fp)
	lw $t0, -38428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -372
	sw $t0, -38432($fp)
	li $t0, 2
	sw $t0, -38436($fp)
	li $t0, 4
	lw $t1, -38436($fp)
	mul $t0, $t0, $t1
	sw $t0, -38440($fp)
	lw $t0, -38440($fp)
	lw $t1, -38432($fp)
	add $t0, $t0, $t1
	sw $t0, -38444($fp)
	lw $t0, -38444($fp)
	lw $t1, 0($t0)
	sw $t1, -38448($fp)
	lw $t0, -38448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4548($fp)
	sw $t0, -38452($fp)
	lw $t0, -38452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4560($fp)
	sw $t0, -38456($fp)
	lw $t0, -38456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4572($fp)
	sw $t0, -38460($fp)
	lw $t0, -38460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4584($fp)
	sw $t0, -38464($fp)
	lw $t0, -38464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -412
	sw $t0, -38468($fp)
	li $t0, 0
	sw $t0, -38472($fp)
	li $t0, 4
	lw $t1, -38472($fp)
	mul $t0, $t0, $t1
	sw $t0, -38476($fp)
	lw $t0, -38476($fp)
	lw $t1, -38468($fp)
	add $t0, $t0, $t1
	sw $t0, -38480($fp)
	lw $t0, -38480($fp)
	lw $t1, 0($t0)
	sw $t1, -38484($fp)
	lw $t0, -38484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -412
	sw $t0, -38488($fp)
	li $t0, 1
	sw $t0, -38492($fp)
	li $t0, 4
	lw $t1, -38492($fp)
	mul $t0, $t0, $t1
	sw $t0, -38496($fp)
	lw $t0, -38496($fp)
	lw $t1, -38488($fp)
	add $t0, $t0, $t1
	sw $t0, -38500($fp)
	lw $t0, -38500($fp)
	lw $t1, 0($t0)
	sw $t1, -38504($fp)
	lw $t0, -38504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -412
	sw $t0, -38508($fp)
	li $t0, 2
	sw $t0, -38512($fp)
	li $t0, 4
	lw $t1, -38512($fp)
	mul $t0, $t0, $t1
	sw $t0, -38516($fp)
	lw $t0, -38516($fp)
	lw $t1, -38508($fp)
	add $t0, $t0, $t1
	sw $t0, -38520($fp)
	lw $t0, -38520($fp)
	lw $t1, 0($t0)
	sw $t1, -38524($fp)
	lw $t0, -38524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -412
	sw $t0, -38528($fp)
	li $t0, 3
	sw $t0, -38532($fp)
	li $t0, 4
	lw $t1, -38532($fp)
	mul $t0, $t0, $t1
	sw $t0, -38536($fp)
	lw $t0, -38536($fp)
	lw $t1, -38528($fp)
	add $t0, $t0, $t1
	sw $t0, -38540($fp)
	lw $t0, -38540($fp)
	lw $t1, 0($t0)
	sw $t1, -38544($fp)
	lw $t0, -38544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -412
	sw $t0, -38548($fp)
	li $t0, 4
	sw $t0, -38552($fp)
	li $t0, 4
	lw $t1, -38552($fp)
	mul $t0, $t0, $t1
	sw $t0, -38556($fp)
	lw $t0, -38556($fp)
	lw $t1, -38548($fp)
	add $t0, $t0, $t1
	sw $t0, -38560($fp)
	lw $t0, -38560($fp)
	lw $t1, 0($t0)
	sw $t1, -38564($fp)
	lw $t0, -38564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -412
	sw $t0, -38568($fp)
	li $t0, 5
	sw $t0, -38572($fp)
	li $t0, 4
	lw $t1, -38572($fp)
	mul $t0, $t0, $t1
	sw $t0, -38576($fp)
	lw $t0, -38576($fp)
	lw $t1, -38568($fp)
	add $t0, $t0, $t1
	sw $t0, -38580($fp)
	lw $t0, -38580($fp)
	lw $t1, 0($t0)
	sw $t1, -38584($fp)
	lw $t0, -38584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -412
	sw $t0, -38588($fp)
	li $t0, 6
	sw $t0, -38592($fp)
	li $t0, 4
	lw $t1, -38592($fp)
	mul $t0, $t0, $t1
	sw $t0, -38596($fp)
	lw $t0, -38596($fp)
	lw $t1, -38588($fp)
	add $t0, $t0, $t1
	sw $t0, -38600($fp)
	lw $t0, -38600($fp)
	lw $t1, 0($t0)
	sw $t1, -38604($fp)
	lw $t0, -38604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -412
	sw $t0, -38608($fp)
	li $t0, 7
	sw $t0, -38612($fp)
	li $t0, 4
	lw $t1, -38612($fp)
	mul $t0, $t0, $t1
	sw $t0, -38616($fp)
	lw $t0, -38616($fp)
	lw $t1, -38608($fp)
	add $t0, $t0, $t1
	sw $t0, -38620($fp)
	lw $t0, -38620($fp)
	lw $t1, 0($t0)
	sw $t1, -38624($fp)
	lw $t0, -38624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -412
	sw $t0, -38628($fp)
	li $t0, 8
	sw $t0, -38632($fp)
	li $t0, 4
	lw $t1, -38632($fp)
	mul $t0, $t0, $t1
	sw $t0, -38636($fp)
	lw $t0, -38636($fp)
	lw $t1, -38628($fp)
	add $t0, $t0, $t1
	sw $t0, -38640($fp)
	lw $t0, -38640($fp)
	lw $t1, 0($t0)
	sw $t1, -38644($fp)
	lw $t0, -38644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -412
	sw $t0, -38648($fp)
	li $t0, 9
	sw $t0, -38652($fp)
	li $t0, 4
	lw $t1, -38652($fp)
	mul $t0, $t0, $t1
	sw $t0, -38656($fp)
	lw $t0, -38656($fp)
	lw $t1, -38648($fp)
	add $t0, $t0, $t1
	sw $t0, -38660($fp)
	lw $t0, -38660($fp)
	lw $t1, 0($t0)
	sw $t1, -38664($fp)
	lw $t0, -38664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4836($fp)
	sw $t0, -38668($fp)
	lw $t0, -38668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -440
	sw $t0, -38672($fp)
	li $t0, 0
	sw $t0, -38676($fp)
	li $t0, 4
	lw $t1, -38676($fp)
	mul $t0, $t0, $t1
	sw $t0, -38680($fp)
	lw $t0, -38680($fp)
	lw $t1, -38672($fp)
	add $t0, $t0, $t1
	sw $t0, -38684($fp)
	lw $t0, -38684($fp)
	lw $t1, 0($t0)
	sw $t1, -38688($fp)
	lw $t0, -38688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -440
	sw $t0, -38692($fp)
	li $t0, 1
	sw $t0, -38696($fp)
	li $t0, 4
	lw $t1, -38696($fp)
	mul $t0, $t0, $t1
	sw $t0, -38700($fp)
	lw $t0, -38700($fp)
	lw $t1, -38692($fp)
	add $t0, $t0, $t1
	sw $t0, -38704($fp)
	lw $t0, -38704($fp)
	lw $t1, 0($t0)
	sw $t1, -38708($fp)
	lw $t0, -38708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -440
	sw $t0, -38712($fp)
	li $t0, 2
	sw $t0, -38716($fp)
	li $t0, 4
	lw $t1, -38716($fp)
	mul $t0, $t0, $t1
	sw $t0, -38720($fp)
	lw $t0, -38720($fp)
	lw $t1, -38712($fp)
	add $t0, $t0, $t1
	sw $t0, -38724($fp)
	lw $t0, -38724($fp)
	lw $t1, 0($t0)
	sw $t1, -38728($fp)
	lw $t0, -38728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -440
	sw $t0, -38732($fp)
	li $t0, 3
	sw $t0, -38736($fp)
	li $t0, 4
	lw $t1, -38736($fp)
	mul $t0, $t0, $t1
	sw $t0, -38740($fp)
	lw $t0, -38740($fp)
	lw $t1, -38732($fp)
	add $t0, $t0, $t1
	sw $t0, -38744($fp)
	lw $t0, -38744($fp)
	lw $t1, 0($t0)
	sw $t1, -38748($fp)
	lw $t0, -38748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -440
	sw $t0, -38752($fp)
	li $t0, 4
	sw $t0, -38756($fp)
	li $t0, 4
	lw $t1, -38756($fp)
	mul $t0, $t0, $t1
	sw $t0, -38760($fp)
	lw $t0, -38760($fp)
	lw $t1, -38752($fp)
	add $t0, $t0, $t1
	sw $t0, -38764($fp)
	lw $t0, -38764($fp)
	lw $t1, 0($t0)
	sw $t1, -38768($fp)
	lw $t0, -38768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -440
	sw $t0, -38772($fp)
	li $t0, 5
	sw $t0, -38776($fp)
	li $t0, 4
	lw $t1, -38776($fp)
	mul $t0, $t0, $t1
	sw $t0, -38780($fp)
	lw $t0, -38780($fp)
	lw $t1, -38772($fp)
	add $t0, $t0, $t1
	sw $t0, -38784($fp)
	lw $t0, -38784($fp)
	lw $t1, 0($t0)
	sw $t1, -38788($fp)
	lw $t0, -38788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -440
	sw $t0, -38792($fp)
	li $t0, 6
	sw $t0, -38796($fp)
	li $t0, 4
	lw $t1, -38796($fp)
	mul $t0, $t0, $t1
	sw $t0, -38800($fp)
	lw $t0, -38800($fp)
	lw $t1, -38792($fp)
	add $t0, $t0, $t1
	sw $t0, -38804($fp)
	lw $t0, -38804($fp)
	lw $t1, 0($t0)
	sw $t1, -38808($fp)
	lw $t0, -38808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5016($fp)
	sw $t0, -38812($fp)
	lw $t0, -38812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5028($fp)
	sw $t0, -38816($fp)
	lw $t0, -38816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5040($fp)
	sw $t0, -38820($fp)
	lw $t0, -38820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -452
	sw $t0, -38824($fp)
	li $t0, 0
	sw $t0, -38828($fp)
	li $t0, 4
	lw $t1, -38828($fp)
	mul $t0, $t0, $t1
	sw $t0, -38832($fp)
	lw $t0, -38832($fp)
	lw $t1, -38824($fp)
	add $t0, $t0, $t1
	sw $t0, -38836($fp)
	lw $t0, -38836($fp)
	lw $t1, 0($t0)
	sw $t1, -38840($fp)
	lw $t0, -38840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -452
	sw $t0, -38844($fp)
	li $t0, 1
	sw $t0, -38848($fp)
	li $t0, 4
	lw $t1, -38848($fp)
	mul $t0, $t0, $t1
	sw $t0, -38852($fp)
	lw $t0, -38852($fp)
	lw $t1, -38844($fp)
	add $t0, $t0, $t1
	sw $t0, -38856($fp)
	lw $t0, -38856($fp)
	lw $t1, 0($t0)
	sw $t1, -38860($fp)
	lw $t0, -38860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -452
	sw $t0, -38864($fp)
	li $t0, 2
	sw $t0, -38868($fp)
	li $t0, 4
	lw $t1, -38868($fp)
	mul $t0, $t0, $t1
	sw $t0, -38872($fp)
	lw $t0, -38872($fp)
	lw $t1, -38864($fp)
	add $t0, $t0, $t1
	sw $t0, -38876($fp)
	lw $t0, -38876($fp)
	lw $t1, 0($t0)
	sw $t1, -38880($fp)
	lw $t0, -38880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5124($fp)
	sw $t0, -38884($fp)
	lw $t0, -38884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5136($fp)
	sw $t0, -38888($fp)
	lw $t0, -38888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5148($fp)
	sw $t0, -38892($fp)
	lw $t0, -38892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5160($fp)
	sw $t0, -38896($fp)
	lw $t0, -38896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5172($fp)
	sw $t0, -38900($fp)
	lw $t0, -38900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5184($fp)
	sw $t0, -38904($fp)
	lw $t0, -38904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5196($fp)
	sw $t0, -38908($fp)
	lw $t0, -38908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5208($fp)
	sw $t0, -38912($fp)
	lw $t0, -38912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5220($fp)
	sw $t0, -38916($fp)
	lw $t0, -38916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5232($fp)
	sw $t0, -38920($fp)
	lw $t0, -38920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5244($fp)
	sw $t0, -38924($fp)
	lw $t0, -38924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -480
	sw $t0, -38928($fp)
	li $t0, 0
	sw $t0, -38932($fp)
	li $t0, 4
	lw $t1, -38932($fp)
	mul $t0, $t0, $t1
	sw $t0, -38936($fp)
	lw $t0, -38936($fp)
	lw $t1, -38928($fp)
	add $t0, $t0, $t1
	sw $t0, -38940($fp)
	lw $t0, -38940($fp)
	lw $t1, 0($t0)
	sw $t1, -38944($fp)
	lw $t0, -38944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -480
	sw $t0, -38948($fp)
	li $t0, 1
	sw $t0, -38952($fp)
	li $t0, 4
	lw $t1, -38952($fp)
	mul $t0, $t0, $t1
	sw $t0, -38956($fp)
	lw $t0, -38956($fp)
	lw $t1, -38948($fp)
	add $t0, $t0, $t1
	sw $t0, -38960($fp)
	lw $t0, -38960($fp)
	lw $t1, 0($t0)
	sw $t1, -38964($fp)
	lw $t0, -38964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -480
	sw $t0, -38968($fp)
	li $t0, 2
	sw $t0, -38972($fp)
	li $t0, 4
	lw $t1, -38972($fp)
	mul $t0, $t0, $t1
	sw $t0, -38976($fp)
	lw $t0, -38976($fp)
	lw $t1, -38968($fp)
	add $t0, $t0, $t1
	sw $t0, -38980($fp)
	lw $t0, -38980($fp)
	lw $t1, 0($t0)
	sw $t1, -38984($fp)
	lw $t0, -38984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -480
	sw $t0, -38988($fp)
	li $t0, 3
	sw $t0, -38992($fp)
	li $t0, 4
	lw $t1, -38992($fp)
	mul $t0, $t0, $t1
	sw $t0, -38996($fp)
	lw $t0, -38996($fp)
	lw $t1, -38988($fp)
	add $t0, $t0, $t1
	sw $t0, -39000($fp)
	lw $t0, -39000($fp)
	lw $t1, 0($t0)
	sw $t1, -39004($fp)
	lw $t0, -39004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -480
	sw $t0, -39008($fp)
	li $t0, 4
	sw $t0, -39012($fp)
	li $t0, 4
	lw $t1, -39012($fp)
	mul $t0, $t0, $t1
	sw $t0, -39016($fp)
	lw $t0, -39016($fp)
	lw $t1, -39008($fp)
	add $t0, $t0, $t1
	sw $t0, -39020($fp)
	lw $t0, -39020($fp)
	lw $t1, 0($t0)
	sw $t1, -39024($fp)
	lw $t0, -39024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -480
	sw $t0, -39028($fp)
	li $t0, 5
	sw $t0, -39032($fp)
	li $t0, 4
	lw $t1, -39032($fp)
	mul $t0, $t0, $t1
	sw $t0, -39036($fp)
	lw $t0, -39036($fp)
	lw $t1, -39028($fp)
	add $t0, $t0, $t1
	sw $t0, -39040($fp)
	lw $t0, -39040($fp)
	lw $t1, 0($t0)
	sw $t1, -39044($fp)
	lw $t0, -39044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -480
	sw $t0, -39048($fp)
	li $t0, 6
	sw $t0, -39052($fp)
	li $t0, 4
	lw $t1, -39052($fp)
	mul $t0, $t0, $t1
	sw $t0, -39056($fp)
	lw $t0, -39056($fp)
	lw $t1, -39048($fp)
	add $t0, $t0, $t1
	sw $t0, -39060($fp)
	lw $t0, -39060($fp)
	lw $t1, 0($t0)
	sw $t1, -39064($fp)
	lw $t0, -39064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -484
	sw $t0, -39068($fp)
	li $t0, 0
	sw $t0, -39072($fp)
	li $t0, 4
	lw $t1, -39072($fp)
	mul $t0, $t0, $t1
	sw $t0, -39076($fp)
	lw $t0, -39076($fp)
	lw $t1, -39068($fp)
	add $t0, $t0, $t1
	sw $t0, -39080($fp)
	lw $t0, -39080($fp)
	lw $t1, 0($t0)
	sw $t1, -39084($fp)
	lw $t0, -39084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5448($fp)
	sw $t0, -39088($fp)
	lw $t0, -39088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5460($fp)
	sw $t0, -39092($fp)
	lw $t0, -39092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5472($fp)
	sw $t0, -39096($fp)
	lw $t0, -39096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5484($fp)
	sw $t0, -39100($fp)
	lw $t0, -39100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5496($fp)
	sw $t0, -39104($fp)
	lw $t0, -39104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5508($fp)
	sw $t0, -39108($fp)
	lw $t0, -39108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5520($fp)
	sw $t0, -39112($fp)
	lw $t0, -39112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5532($fp)
	sw $t0, -39116($fp)
	lw $t0, -39116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5544($fp)
	sw $t0, -39120($fp)
	lw $t0, -39120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5556($fp)
	sw $t0, -39124($fp)
	lw $t0, -39124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5568($fp)
	sw $t0, -39128($fp)
	lw $t0, -39128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5580($fp)
	sw $t0, -39132($fp)
	lw $t0, -39132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5592($fp)
	sw $t0, -39136($fp)
	lw $t0, -39136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5604($fp)
	sw $t0, -39140($fp)
	lw $t0, -39140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -520
	sw $t0, -39144($fp)
	li $t0, 0
	sw $t0, -39148($fp)
	li $t0, 4
	lw $t1, -39148($fp)
	mul $t0, $t0, $t1
	sw $t0, -39152($fp)
	lw $t0, -39152($fp)
	lw $t1, -39144($fp)
	add $t0, $t0, $t1
	sw $t0, -39156($fp)
	lw $t0, -39156($fp)
	lw $t1, 0($t0)
	sw $t1, -39160($fp)
	lw $t0, -39160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -520
	sw $t0, -39164($fp)
	li $t0, 1
	sw $t0, -39168($fp)
	li $t0, 4
	lw $t1, -39168($fp)
	mul $t0, $t0, $t1
	sw $t0, -39172($fp)
	lw $t0, -39172($fp)
	lw $t1, -39164($fp)
	add $t0, $t0, $t1
	sw $t0, -39176($fp)
	lw $t0, -39176($fp)
	lw $t1, 0($t0)
	sw $t1, -39180($fp)
	lw $t0, -39180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -520
	sw $t0, -39184($fp)
	li $t0, 2
	sw $t0, -39188($fp)
	li $t0, 4
	lw $t1, -39188($fp)
	mul $t0, $t0, $t1
	sw $t0, -39192($fp)
	lw $t0, -39192($fp)
	lw $t1, -39184($fp)
	add $t0, $t0, $t1
	sw $t0, -39196($fp)
	lw $t0, -39196($fp)
	lw $t1, 0($t0)
	sw $t1, -39200($fp)
	lw $t0, -39200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -520
	sw $t0, -39204($fp)
	li $t0, 3
	sw $t0, -39208($fp)
	li $t0, 4
	lw $t1, -39208($fp)
	mul $t0, $t0, $t1
	sw $t0, -39212($fp)
	lw $t0, -39212($fp)
	lw $t1, -39204($fp)
	add $t0, $t0, $t1
	sw $t0, -39216($fp)
	lw $t0, -39216($fp)
	lw $t1, 0($t0)
	sw $t1, -39220($fp)
	lw $t0, -39220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -520
	sw $t0, -39224($fp)
	li $t0, 4
	sw $t0, -39228($fp)
	li $t0, 4
	lw $t1, -39228($fp)
	mul $t0, $t0, $t1
	sw $t0, -39232($fp)
	lw $t0, -39232($fp)
	lw $t1, -39224($fp)
	add $t0, $t0, $t1
	sw $t0, -39236($fp)
	lw $t0, -39236($fp)
	lw $t1, 0($t0)
	sw $t1, -39240($fp)
	lw $t0, -39240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -520
	sw $t0, -39244($fp)
	li $t0, 5
	sw $t0, -39248($fp)
	li $t0, 4
	lw $t1, -39248($fp)
	mul $t0, $t0, $t1
	sw $t0, -39252($fp)
	lw $t0, -39252($fp)
	lw $t1, -39244($fp)
	add $t0, $t0, $t1
	sw $t0, -39256($fp)
	lw $t0, -39256($fp)
	lw $t1, 0($t0)
	sw $t1, -39260($fp)
	lw $t0, -39260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -520
	sw $t0, -39264($fp)
	li $t0, 6
	sw $t0, -39268($fp)
	li $t0, 4
	lw $t1, -39268($fp)
	mul $t0, $t0, $t1
	sw $t0, -39272($fp)
	lw $t0, -39272($fp)
	lw $t1, -39264($fp)
	add $t0, $t0, $t1
	sw $t0, -39276($fp)
	lw $t0, -39276($fp)
	lw $t1, 0($t0)
	sw $t1, -39280($fp)
	lw $t0, -39280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -520
	sw $t0, -39284($fp)
	li $t0, 7
	sw $t0, -39288($fp)
	li $t0, 4
	lw $t1, -39288($fp)
	mul $t0, $t0, $t1
	sw $t0, -39292($fp)
	lw $t0, -39292($fp)
	lw $t1, -39284($fp)
	add $t0, $t0, $t1
	sw $t0, -39296($fp)
	lw $t0, -39296($fp)
	lw $t1, 0($t0)
	sw $t1, -39300($fp)
	lw $t0, -39300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -520
	sw $t0, -39304($fp)
	li $t0, 8
	sw $t0, -39308($fp)
	li $t0, 4
	lw $t1, -39308($fp)
	mul $t0, $t0, $t1
	sw $t0, -39312($fp)
	lw $t0, -39312($fp)
	lw $t1, -39304($fp)
	add $t0, $t0, $t1
	sw $t0, -39316($fp)
	lw $t0, -39316($fp)
	lw $t1, 0($t0)
	sw $t1, -39320($fp)
	lw $t0, -39320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5832($fp)
	sw $t0, -39324($fp)
	lw $t0, -39324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5844($fp)
	sw $t0, -39328($fp)
	lw $t0, -39328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5856($fp)
	sw $t0, -39332($fp)
	lw $t0, -39332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5868($fp)
	sw $t0, -39336($fp)
	lw $t0, -39336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5880($fp)
	sw $t0, -39340($fp)
	lw $t0, -39340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5892($fp)
	sw $t0, -39344($fp)
	lw $t0, -39344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -536
	sw $t0, -39348($fp)
	li $t0, 0
	sw $t0, -39352($fp)
	li $t0, 4
	lw $t1, -39352($fp)
	mul $t0, $t0, $t1
	sw $t0, -39356($fp)
	lw $t0, -39356($fp)
	lw $t1, -39348($fp)
	add $t0, $t0, $t1
	sw $t0, -39360($fp)
	lw $t0, -39360($fp)
	lw $t1, 0($t0)
	sw $t1, -39364($fp)
	lw $t0, -39364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -536
	sw $t0, -39368($fp)
	li $t0, 1
	sw $t0, -39372($fp)
	li $t0, 4
	lw $t1, -39372($fp)
	mul $t0, $t0, $t1
	sw $t0, -39376($fp)
	lw $t0, -39376($fp)
	lw $t1, -39368($fp)
	add $t0, $t0, $t1
	sw $t0, -39380($fp)
	lw $t0, -39380($fp)
	lw $t1, 0($t0)
	sw $t1, -39384($fp)
	lw $t0, -39384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -536
	sw $t0, -39388($fp)
	li $t0, 2
	sw $t0, -39392($fp)
	li $t0, 4
	lw $t1, -39392($fp)
	mul $t0, $t0, $t1
	sw $t0, -39396($fp)
	lw $t0, -39396($fp)
	lw $t1, -39388($fp)
	add $t0, $t0, $t1
	sw $t0, -39400($fp)
	lw $t0, -39400($fp)
	lw $t1, 0($t0)
	sw $t1, -39404($fp)
	lw $t0, -39404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -536
	sw $t0, -39408($fp)
	li $t0, 3
	sw $t0, -39412($fp)
	li $t0, 4
	lw $t1, -39412($fp)
	mul $t0, $t0, $t1
	sw $t0, -39416($fp)
	lw $t0, -39416($fp)
	lw $t1, -39408($fp)
	add $t0, $t0, $t1
	sw $t0, -39420($fp)
	lw $t0, -39420($fp)
	lw $t1, 0($t0)
	sw $t1, -39424($fp)
	lw $t0, -39424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6000($fp)
	sw $t0, -39428($fp)
	lw $t0, -39428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -548
	sw $t0, -39432($fp)
	li $t0, 0
	sw $t0, -39436($fp)
	li $t0, 4
	lw $t1, -39436($fp)
	mul $t0, $t0, $t1
	sw $t0, -39440($fp)
	lw $t0, -39440($fp)
	lw $t1, -39432($fp)
	add $t0, $t0, $t1
	sw $t0, -39444($fp)
	lw $t0, -39444($fp)
	lw $t1, 0($t0)
	sw $t1, -39448($fp)
	lw $t0, -39448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -548
	sw $t0, -39452($fp)
	li $t0, 1
	sw $t0, -39456($fp)
	li $t0, 4
	lw $t1, -39456($fp)
	mul $t0, $t0, $t1
	sw $t0, -39460($fp)
	lw $t0, -39460($fp)
	lw $t1, -39452($fp)
	add $t0, $t0, $t1
	sw $t0, -39464($fp)
	lw $t0, -39464($fp)
	lw $t1, 0($t0)
	sw $t1, -39468($fp)
	lw $t0, -39468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -548
	sw $t0, -39472($fp)
	li $t0, 2
	sw $t0, -39476($fp)
	li $t0, 4
	lw $t1, -39476($fp)
	mul $t0, $t0, $t1
	sw $t0, -39480($fp)
	lw $t0, -39480($fp)
	lw $t1, -39472($fp)
	add $t0, $t0, $t1
	sw $t0, -39484($fp)
	lw $t0, -39484($fp)
	lw $t1, 0($t0)
	sw $t1, -39488($fp)
	lw $t0, -39488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6084($fp)
	sw $t0, -39492($fp)
	lw $t0, -39492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6096($fp)
	sw $t0, -39496($fp)
	lw $t0, -39496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6108($fp)
	sw $t0, -39500($fp)
	lw $t0, -39500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6120($fp)
	sw $t0, -39504($fp)
	lw $t0, -39504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6132($fp)
	sw $t0, -39508($fp)
	lw $t0, -39508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6144($fp)
	sw $t0, -39512($fp)
	lw $t0, -39512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -572
	sw $t0, -39516($fp)
	li $t0, 0
	sw $t0, -39520($fp)
	li $t0, 4
	lw $t1, -39520($fp)
	mul $t0, $t0, $t1
	sw $t0, -39524($fp)
	lw $t0, -39524($fp)
	lw $t1, -39516($fp)
	add $t0, $t0, $t1
	sw $t0, -39528($fp)
	lw $t0, -39528($fp)
	lw $t1, 0($t0)
	sw $t1, -39532($fp)
	lw $t0, -39532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -572
	sw $t0, -39536($fp)
	li $t0, 1
	sw $t0, -39540($fp)
	li $t0, 4
	lw $t1, -39540($fp)
	mul $t0, $t0, $t1
	sw $t0, -39544($fp)
	lw $t0, -39544($fp)
	lw $t1, -39536($fp)
	add $t0, $t0, $t1
	sw $t0, -39548($fp)
	lw $t0, -39548($fp)
	lw $t1, 0($t0)
	sw $t1, -39552($fp)
	lw $t0, -39552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -572
	sw $t0, -39556($fp)
	li $t0, 2
	sw $t0, -39560($fp)
	li $t0, 4
	lw $t1, -39560($fp)
	mul $t0, $t0, $t1
	sw $t0, -39564($fp)
	lw $t0, -39564($fp)
	lw $t1, -39556($fp)
	add $t0, $t0, $t1
	sw $t0, -39568($fp)
	lw $t0, -39568($fp)
	lw $t1, 0($t0)
	sw $t1, -39572($fp)
	lw $t0, -39572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -572
	sw $t0, -39576($fp)
	li $t0, 3
	sw $t0, -39580($fp)
	li $t0, 4
	lw $t1, -39580($fp)
	mul $t0, $t0, $t1
	sw $t0, -39584($fp)
	lw $t0, -39584($fp)
	lw $t1, -39576($fp)
	add $t0, $t0, $t1
	sw $t0, -39588($fp)
	lw $t0, -39588($fp)
	lw $t1, 0($t0)
	sw $t1, -39592($fp)
	lw $t0, -39592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -572
	sw $t0, -39596($fp)
	li $t0, 4
	sw $t0, -39600($fp)
	li $t0, 4
	lw $t1, -39600($fp)
	mul $t0, $t0, $t1
	sw $t0, -39604($fp)
	lw $t0, -39604($fp)
	lw $t1, -39596($fp)
	add $t0, $t0, $t1
	sw $t0, -39608($fp)
	lw $t0, -39608($fp)
	lw $t1, 0($t0)
	sw $t1, -39612($fp)
	lw $t0, -39612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -572
	sw $t0, -39616($fp)
	li $t0, 5
	sw $t0, -39620($fp)
	li $t0, 4
	lw $t1, -39620($fp)
	mul $t0, $t0, $t1
	sw $t0, -39624($fp)
	lw $t0, -39624($fp)
	lw $t1, -39616($fp)
	add $t0, $t0, $t1
	sw $t0, -39628($fp)
	lw $t0, -39628($fp)
	lw $t1, 0($t0)
	sw $t1, -39632($fp)
	lw $t0, -39632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6300($fp)
	sw $t0, -39636($fp)
	lw $t0, -39636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6312($fp)
	sw $t0, -39640($fp)
	lw $t0, -39640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6324($fp)
	sw $t0, -39644($fp)
	lw $t0, -39644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6336($fp)
	sw $t0, -39648($fp)
	lw $t0, -39648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6348($fp)
	sw $t0, -39652($fp)
	lw $t0, -39652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -608
	sw $t0, -39656($fp)
	li $t0, 0
	sw $t0, -39660($fp)
	li $t0, 4
	lw $t1, -39660($fp)
	mul $t0, $t0, $t1
	sw $t0, -39664($fp)
	lw $t0, -39664($fp)
	lw $t1, -39656($fp)
	add $t0, $t0, $t1
	sw $t0, -39668($fp)
	lw $t0, -39668($fp)
	lw $t1, 0($t0)
	sw $t1, -39672($fp)
	lw $t0, -39672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -608
	sw $t0, -39676($fp)
	li $t0, 1
	sw $t0, -39680($fp)
	li $t0, 4
	lw $t1, -39680($fp)
	mul $t0, $t0, $t1
	sw $t0, -39684($fp)
	lw $t0, -39684($fp)
	lw $t1, -39676($fp)
	add $t0, $t0, $t1
	sw $t0, -39688($fp)
	lw $t0, -39688($fp)
	lw $t1, 0($t0)
	sw $t1, -39692($fp)
	lw $t0, -39692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -608
	sw $t0, -39696($fp)
	li $t0, 2
	sw $t0, -39700($fp)
	li $t0, 4
	lw $t1, -39700($fp)
	mul $t0, $t0, $t1
	sw $t0, -39704($fp)
	lw $t0, -39704($fp)
	lw $t1, -39696($fp)
	add $t0, $t0, $t1
	sw $t0, -39708($fp)
	lw $t0, -39708($fp)
	lw $t1, 0($t0)
	sw $t1, -39712($fp)
	lw $t0, -39712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -608
	sw $t0, -39716($fp)
	li $t0, 3
	sw $t0, -39720($fp)
	li $t0, 4
	lw $t1, -39720($fp)
	mul $t0, $t0, $t1
	sw $t0, -39724($fp)
	lw $t0, -39724($fp)
	lw $t1, -39716($fp)
	add $t0, $t0, $t1
	sw $t0, -39728($fp)
	lw $t0, -39728($fp)
	lw $t1, 0($t0)
	sw $t1, -39732($fp)
	lw $t0, -39732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -608
	sw $t0, -39736($fp)
	li $t0, 4
	sw $t0, -39740($fp)
	li $t0, 4
	lw $t1, -39740($fp)
	mul $t0, $t0, $t1
	sw $t0, -39744($fp)
	lw $t0, -39744($fp)
	lw $t1, -39736($fp)
	add $t0, $t0, $t1
	sw $t0, -39748($fp)
	lw $t0, -39748($fp)
	lw $t1, 0($t0)
	sw $t1, -39752($fp)
	lw $t0, -39752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -608
	sw $t0, -39756($fp)
	li $t0, 5
	sw $t0, -39760($fp)
	li $t0, 4
	lw $t1, -39760($fp)
	mul $t0, $t0, $t1
	sw $t0, -39764($fp)
	lw $t0, -39764($fp)
	lw $t1, -39756($fp)
	add $t0, $t0, $t1
	sw $t0, -39768($fp)
	lw $t0, -39768($fp)
	lw $t1, 0($t0)
	sw $t1, -39772($fp)
	lw $t0, -39772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -608
	sw $t0, -39776($fp)
	li $t0, 6
	sw $t0, -39780($fp)
	li $t0, 4
	lw $t1, -39780($fp)
	mul $t0, $t0, $t1
	sw $t0, -39784($fp)
	lw $t0, -39784($fp)
	lw $t1, -39776($fp)
	add $t0, $t0, $t1
	sw $t0, -39788($fp)
	lw $t0, -39788($fp)
	lw $t1, 0($t0)
	sw $t1, -39792($fp)
	lw $t0, -39792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -608
	sw $t0, -39796($fp)
	li $t0, 7
	sw $t0, -39800($fp)
	li $t0, 4
	lw $t1, -39800($fp)
	mul $t0, $t0, $t1
	sw $t0, -39804($fp)
	lw $t0, -39804($fp)
	lw $t1, -39796($fp)
	add $t0, $t0, $t1
	sw $t0, -39808($fp)
	lw $t0, -39808($fp)
	lw $t1, 0($t0)
	sw $t1, -39812($fp)
	lw $t0, -39812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -608
	sw $t0, -39816($fp)
	li $t0, 8
	sw $t0, -39820($fp)
	li $t0, 4
	lw $t1, -39820($fp)
	mul $t0, $t0, $t1
	sw $t0, -39824($fp)
	lw $t0, -39824($fp)
	lw $t1, -39816($fp)
	add $t0, $t0, $t1
	sw $t0, -39828($fp)
	lw $t0, -39828($fp)
	lw $t1, 0($t0)
	sw $t1, -39832($fp)
	lw $t0, -39832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6576($fp)
	sw $t0, -39836($fp)
	lw $t0, -39836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6588($fp)
	sw $t0, -39840($fp)
	lw $t0, -39840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6600($fp)
	sw $t0, -39844($fp)
	lw $t0, -39844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6612($fp)
	sw $t0, -39848($fp)
	lw $t0, -39848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6624($fp)
	sw $t0, -39852($fp)
	lw $t0, -39852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6636($fp)
	sw $t0, -39856($fp)
	lw $t0, -39856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6648($fp)
	sw $t0, -39860($fp)
	lw $t0, -39860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6660($fp)
	sw $t0, -39864($fp)
	lw $t0, -39864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6672($fp)
	sw $t0, -39868($fp)
	lw $t0, -39868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6684($fp)
	sw $t0, -39872($fp)
	lw $t0, -39872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6696($fp)
	sw $t0, -39876($fp)
	lw $t0, -39876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -620
	sw $t0, -39880($fp)
	li $t0, 0
	sw $t0, -39884($fp)
	li $t0, 4
	lw $t1, -39884($fp)
	mul $t0, $t0, $t1
	sw $t0, -39888($fp)
	lw $t0, -39888($fp)
	lw $t1, -39880($fp)
	add $t0, $t0, $t1
	sw $t0, -39892($fp)
	lw $t0, -39892($fp)
	lw $t1, 0($t0)
	sw $t1, -39896($fp)
	lw $t0, -39896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -620
	sw $t0, -39900($fp)
	li $t0, 1
	sw $t0, -39904($fp)
	li $t0, 4
	lw $t1, -39904($fp)
	mul $t0, $t0, $t1
	sw $t0, -39908($fp)
	lw $t0, -39908($fp)
	lw $t1, -39900($fp)
	add $t0, $t0, $t1
	sw $t0, -39912($fp)
	lw $t0, -39912($fp)
	lw $t1, 0($t0)
	sw $t1, -39916($fp)
	lw $t0, -39916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -620
	sw $t0, -39920($fp)
	li $t0, 2
	sw $t0, -39924($fp)
	li $t0, 4
	lw $t1, -39924($fp)
	mul $t0, $t0, $t1
	sw $t0, -39928($fp)
	lw $t0, -39928($fp)
	lw $t1, -39920($fp)
	add $t0, $t0, $t1
	sw $t0, -39932($fp)
	lw $t0, -39932($fp)
	lw $t1, 0($t0)
	sw $t1, -39936($fp)
	lw $t0, -39936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6780($fp)
	sw $t0, -39940($fp)
	lw $t0, -39940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6792($fp)
	sw $t0, -39944($fp)
	lw $t0, -39944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -652
	sw $t0, -39948($fp)
	li $t0, 0
	sw $t0, -39952($fp)
	li $t0, 4
	lw $t1, -39952($fp)
	mul $t0, $t0, $t1
	sw $t0, -39956($fp)
	lw $t0, -39956($fp)
	lw $t1, -39948($fp)
	add $t0, $t0, $t1
	sw $t0, -39960($fp)
	lw $t0, -39960($fp)
	lw $t1, 0($t0)
	sw $t1, -39964($fp)
	lw $t0, -39964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -652
	sw $t0, -39968($fp)
	li $t0, 1
	sw $t0, -39972($fp)
	li $t0, 4
	lw $t1, -39972($fp)
	mul $t0, $t0, $t1
	sw $t0, -39976($fp)
	lw $t0, -39976($fp)
	lw $t1, -39968($fp)
	add $t0, $t0, $t1
	sw $t0, -39980($fp)
	lw $t0, -39980($fp)
	lw $t1, 0($t0)
	sw $t1, -39984($fp)
	lw $t0, -39984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -652
	sw $t0, -39988($fp)
	li $t0, 2
	sw $t0, -39992($fp)
	li $t0, 4
	lw $t1, -39992($fp)
	mul $t0, $t0, $t1
	sw $t0, -39996($fp)
	lw $t0, -39996($fp)
	lw $t1, -39988($fp)
	add $t0, $t0, $t1
	sw $t0, -40000($fp)
	lw $t0, -40000($fp)
	lw $t1, 0($t0)
	sw $t1, -40004($fp)
	lw $t0, -40004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -652
	sw $t0, -40008($fp)
	li $t0, 3
	sw $t0, -40012($fp)
	li $t0, 4
	lw $t1, -40012($fp)
	mul $t0, $t0, $t1
	sw $t0, -40016($fp)
	lw $t0, -40016($fp)
	lw $t1, -40008($fp)
	add $t0, $t0, $t1
	sw $t0, -40020($fp)
	lw $t0, -40020($fp)
	lw $t1, 0($t0)
	sw $t1, -40024($fp)
	lw $t0, -40024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -652
	sw $t0, -40028($fp)
	li $t0, 4
	sw $t0, -40032($fp)
	li $t0, 4
	lw $t1, -40032($fp)
	mul $t0, $t0, $t1
	sw $t0, -40036($fp)
	lw $t0, -40036($fp)
	lw $t1, -40028($fp)
	add $t0, $t0, $t1
	sw $t0, -40040($fp)
	lw $t0, -40040($fp)
	lw $t1, 0($t0)
	sw $t1, -40044($fp)
	lw $t0, -40044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -652
	sw $t0, -40048($fp)
	li $t0, 5
	sw $t0, -40052($fp)
	li $t0, 4
	lw $t1, -40052($fp)
	mul $t0, $t0, $t1
	sw $t0, -40056($fp)
	lw $t0, -40056($fp)
	lw $t1, -40048($fp)
	add $t0, $t0, $t1
	sw $t0, -40060($fp)
	lw $t0, -40060($fp)
	lw $t1, 0($t0)
	sw $t1, -40064($fp)
	lw $t0, -40064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -652
	sw $t0, -40068($fp)
	li $t0, 6
	sw $t0, -40072($fp)
	li $t0, 4
	lw $t1, -40072($fp)
	mul $t0, $t0, $t1
	sw $t0, -40076($fp)
	lw $t0, -40076($fp)
	lw $t1, -40068($fp)
	add $t0, $t0, $t1
	sw $t0, -40080($fp)
	lw $t0, -40080($fp)
	lw $t1, 0($t0)
	sw $t1, -40084($fp)
	lw $t0, -40084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -652
	sw $t0, -40088($fp)
	li $t0, 7
	sw $t0, -40092($fp)
	li $t0, 4
	lw $t1, -40092($fp)
	mul $t0, $t0, $t1
	sw $t0, -40096($fp)
	lw $t0, -40096($fp)
	lw $t1, -40088($fp)
	add $t0, $t0, $t1
	sw $t0, -40100($fp)
	lw $t0, -40100($fp)
	lw $t1, 0($t0)
	sw $t1, -40104($fp)
	lw $t0, -40104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -656
	sw $t0, -40108($fp)
	li $t0, 0
	sw $t0, -40112($fp)
	li $t0, 4
	lw $t1, -40112($fp)
	mul $t0, $t0, $t1
	sw $t0, -40116($fp)
	lw $t0, -40116($fp)
	lw $t1, -40108($fp)
	add $t0, $t0, $t1
	sw $t0, -40120($fp)
	lw $t0, -40120($fp)
	lw $t1, 0($t0)
	sw $t1, -40124($fp)
	lw $t0, -40124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7020($fp)
	sw $t0, -40128($fp)
	lw $t0, -40128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7032($fp)
	sw $t0, -40132($fp)
	lw $t0, -40132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7044($fp)
	sw $t0, -40136($fp)
	lw $t0, -40136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7056($fp)
	sw $t0, -40140($fp)
	lw $t0, -40140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7068($fp)
	sw $t0, -40144($fp)
	lw $t0, -40144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7080($fp)
	sw $t0, -40148($fp)
	lw $t0, -40148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7092($fp)
	sw $t0, -40152($fp)
	lw $t0, -40152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7104($fp)
	sw $t0, -40156($fp)
	lw $t0, -40156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7116($fp)
	sw $t0, -40160($fp)
	lw $t0, -40160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7128($fp)
	sw $t0, -40164($fp)
	lw $t0, -40164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7140($fp)
	sw $t0, -40168($fp)
	lw $t0, -40168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7152($fp)
	sw $t0, -40172($fp)
	lw $t0, -40172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7164($fp)
	sw $t0, -40176($fp)
	lw $t0, -40176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7176($fp)
	sw $t0, -40180($fp)
	lw $t0, -40180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7188($fp)
	sw $t0, -40184($fp)
	lw $t0, -40184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7200($fp)
	sw $t0, -40188($fp)
	lw $t0, -40188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7212($fp)
	sw $t0, -40192($fp)
	lw $t0, -40192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7224($fp)
	sw $t0, -40196($fp)
	lw $t0, -40196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7236($fp)
	sw $t0, -40200($fp)
	lw $t0, -40200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7248($fp)
	sw $t0, -40204($fp)
	lw $t0, -40204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7260($fp)
	sw $t0, -40208($fp)
	lw $t0, -40208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7272($fp)
	sw $t0, -40212($fp)
	lw $t0, -40212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7284($fp)
	sw $t0, -40216($fp)
	lw $t0, -40216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7296($fp)
	sw $t0, -40220($fp)
	lw $t0, -40220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7308($fp)
	sw $t0, -40224($fp)
	lw $t0, -40224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7320($fp)
	sw $t0, -40228($fp)
	lw $t0, -40228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -672
	sw $t0, -40232($fp)
	li $t0, 0
	sw $t0, -40236($fp)
	li $t0, 4
	lw $t1, -40236($fp)
	mul $t0, $t0, $t1
	sw $t0, -40240($fp)
	lw $t0, -40240($fp)
	lw $t1, -40232($fp)
	add $t0, $t0, $t1
	sw $t0, -40244($fp)
	lw $t0, -40244($fp)
	lw $t1, 0($t0)
	sw $t1, -40248($fp)
	lw $t0, -40248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -672
	sw $t0, -40252($fp)
	li $t0, 1
	sw $t0, -40256($fp)
	li $t0, 4
	lw $t1, -40256($fp)
	mul $t0, $t0, $t1
	sw $t0, -40260($fp)
	lw $t0, -40260($fp)
	lw $t1, -40252($fp)
	add $t0, $t0, $t1
	sw $t0, -40264($fp)
	lw $t0, -40264($fp)
	lw $t1, 0($t0)
	sw $t1, -40268($fp)
	lw $t0, -40268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -672
	sw $t0, -40272($fp)
	li $t0, 2
	sw $t0, -40276($fp)
	li $t0, 4
	lw $t1, -40276($fp)
	mul $t0, $t0, $t1
	sw $t0, -40280($fp)
	lw $t0, -40280($fp)
	lw $t1, -40272($fp)
	add $t0, $t0, $t1
	sw $t0, -40284($fp)
	lw $t0, -40284($fp)
	lw $t1, 0($t0)
	sw $t1, -40288($fp)
	lw $t0, -40288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -672
	sw $t0, -40292($fp)
	li $t0, 3
	sw $t0, -40296($fp)
	li $t0, 4
	lw $t1, -40296($fp)
	mul $t0, $t0, $t1
	sw $t0, -40300($fp)
	lw $t0, -40300($fp)
	lw $t1, -40292($fp)
	add $t0, $t0, $t1
	sw $t0, -40304($fp)
	lw $t0, -40304($fp)
	lw $t1, 0($t0)
	sw $t1, -40308($fp)
	lw $t0, -40308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7428($fp)
	sw $t0, -40312($fp)
	lw $t0, -40312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7440($fp)
	sw $t0, -40316($fp)
	lw $t0, -40316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7452($fp)
	sw $t0, -40320($fp)
	lw $t0, -40320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7464($fp)
	sw $t0, -40324($fp)
	lw $t0, -40324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7476($fp)
	sw $t0, -40328($fp)
	lw $t0, -40328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7488($fp)
	sw $t0, -40332($fp)
	lw $t0, -40332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -712
	sw $t0, -40336($fp)
	li $t0, 0
	sw $t0, -40340($fp)
	li $t0, 4
	lw $t1, -40340($fp)
	mul $t0, $t0, $t1
	sw $t0, -40344($fp)
	lw $t0, -40344($fp)
	lw $t1, -40336($fp)
	add $t0, $t0, $t1
	sw $t0, -40348($fp)
	lw $t0, -40348($fp)
	lw $t1, 0($t0)
	sw $t1, -40352($fp)
	lw $t0, -40352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -712
	sw $t0, -40356($fp)
	li $t0, 1
	sw $t0, -40360($fp)
	li $t0, 4
	lw $t1, -40360($fp)
	mul $t0, $t0, $t1
	sw $t0, -40364($fp)
	lw $t0, -40364($fp)
	lw $t1, -40356($fp)
	add $t0, $t0, $t1
	sw $t0, -40368($fp)
	lw $t0, -40368($fp)
	lw $t1, 0($t0)
	sw $t1, -40372($fp)
	lw $t0, -40372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -712
	sw $t0, -40376($fp)
	li $t0, 2
	sw $t0, -40380($fp)
	li $t0, 4
	lw $t1, -40380($fp)
	mul $t0, $t0, $t1
	sw $t0, -40384($fp)
	lw $t0, -40384($fp)
	lw $t1, -40376($fp)
	add $t0, $t0, $t1
	sw $t0, -40388($fp)
	lw $t0, -40388($fp)
	lw $t1, 0($t0)
	sw $t1, -40392($fp)
	lw $t0, -40392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -712
	sw $t0, -40396($fp)
	li $t0, 3
	sw $t0, -40400($fp)
	li $t0, 4
	lw $t1, -40400($fp)
	mul $t0, $t0, $t1
	sw $t0, -40404($fp)
	lw $t0, -40404($fp)
	lw $t1, -40396($fp)
	add $t0, $t0, $t1
	sw $t0, -40408($fp)
	lw $t0, -40408($fp)
	lw $t1, 0($t0)
	sw $t1, -40412($fp)
	lw $t0, -40412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -712
	sw $t0, -40416($fp)
	li $t0, 4
	sw $t0, -40420($fp)
	li $t0, 4
	lw $t1, -40420($fp)
	mul $t0, $t0, $t1
	sw $t0, -40424($fp)
	lw $t0, -40424($fp)
	lw $t1, -40416($fp)
	add $t0, $t0, $t1
	sw $t0, -40428($fp)
	lw $t0, -40428($fp)
	lw $t1, 0($t0)
	sw $t1, -40432($fp)
	lw $t0, -40432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -712
	sw $t0, -40436($fp)
	li $t0, 5
	sw $t0, -40440($fp)
	li $t0, 4
	lw $t1, -40440($fp)
	mul $t0, $t0, $t1
	sw $t0, -40444($fp)
	lw $t0, -40444($fp)
	lw $t1, -40436($fp)
	add $t0, $t0, $t1
	sw $t0, -40448($fp)
	lw $t0, -40448($fp)
	lw $t1, 0($t0)
	sw $t1, -40452($fp)
	lw $t0, -40452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -712
	sw $t0, -40456($fp)
	li $t0, 6
	sw $t0, -40460($fp)
	li $t0, 4
	lw $t1, -40460($fp)
	mul $t0, $t0, $t1
	sw $t0, -40464($fp)
	lw $t0, -40464($fp)
	lw $t1, -40456($fp)
	add $t0, $t0, $t1
	sw $t0, -40468($fp)
	lw $t0, -40468($fp)
	lw $t1, 0($t0)
	sw $t1, -40472($fp)
	lw $t0, -40472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -712
	sw $t0, -40476($fp)
	li $t0, 7
	sw $t0, -40480($fp)
	li $t0, 4
	lw $t1, -40480($fp)
	mul $t0, $t0, $t1
	sw $t0, -40484($fp)
	lw $t0, -40484($fp)
	lw $t1, -40476($fp)
	add $t0, $t0, $t1
	sw $t0, -40488($fp)
	lw $t0, -40488($fp)
	lw $t1, 0($t0)
	sw $t1, -40492($fp)
	lw $t0, -40492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -712
	sw $t0, -40496($fp)
	li $t0, 8
	sw $t0, -40500($fp)
	li $t0, 4
	lw $t1, -40500($fp)
	mul $t0, $t0, $t1
	sw $t0, -40504($fp)
	lw $t0, -40504($fp)
	lw $t1, -40496($fp)
	add $t0, $t0, $t1
	sw $t0, -40508($fp)
	lw $t0, -40508($fp)
	lw $t1, 0($t0)
	sw $t1, -40512($fp)
	lw $t0, -40512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -712
	sw $t0, -40516($fp)
	li $t0, 9
	sw $t0, -40520($fp)
	li $t0, 4
	lw $t1, -40520($fp)
	mul $t0, $t0, $t1
	sw $t0, -40524($fp)
	lw $t0, -40524($fp)
	lw $t1, -40516($fp)
	add $t0, $t0, $t1
	sw $t0, -40528($fp)
	lw $t0, -40528($fp)
	lw $t1, 0($t0)
	sw $t1, -40532($fp)
	lw $t0, -40532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7740($fp)
	sw $t0, -40536($fp)
	lw $t0, -40536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7752($fp)
	sw $t0, -40540($fp)
	lw $t0, -40540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7764($fp)
	sw $t0, -40544($fp)
	lw $t0, -40544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -732
	sw $t0, -40548($fp)
	li $t0, 0
	sw $t0, -40552($fp)
	li $t0, 4
	lw $t1, -40552($fp)
	mul $t0, $t0, $t1
	sw $t0, -40556($fp)
	lw $t0, -40556($fp)
	lw $t1, -40548($fp)
	add $t0, $t0, $t1
	sw $t0, -40560($fp)
	lw $t0, -40560($fp)
	lw $t1, 0($t0)
	sw $t1, -40564($fp)
	lw $t0, -40564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -732
	sw $t0, -40568($fp)
	li $t0, 1
	sw $t0, -40572($fp)
	li $t0, 4
	lw $t1, -40572($fp)
	mul $t0, $t0, $t1
	sw $t0, -40576($fp)
	lw $t0, -40576($fp)
	lw $t1, -40568($fp)
	add $t0, $t0, $t1
	sw $t0, -40580($fp)
	lw $t0, -40580($fp)
	lw $t1, 0($t0)
	sw $t1, -40584($fp)
	lw $t0, -40584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -732
	sw $t0, -40588($fp)
	li $t0, 2
	sw $t0, -40592($fp)
	li $t0, 4
	lw $t1, -40592($fp)
	mul $t0, $t0, $t1
	sw $t0, -40596($fp)
	lw $t0, -40596($fp)
	lw $t1, -40588($fp)
	add $t0, $t0, $t1
	sw $t0, -40600($fp)
	lw $t0, -40600($fp)
	lw $t1, 0($t0)
	sw $t1, -40604($fp)
	lw $t0, -40604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -732
	sw $t0, -40608($fp)
	li $t0, 3
	sw $t0, -40612($fp)
	li $t0, 4
	lw $t1, -40612($fp)
	mul $t0, $t0, $t1
	sw $t0, -40616($fp)
	lw $t0, -40616($fp)
	lw $t1, -40608($fp)
	add $t0, $t0, $t1
	sw $t0, -40620($fp)
	lw $t0, -40620($fp)
	lw $t1, 0($t0)
	sw $t1, -40624($fp)
	lw $t0, -40624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -732
	sw $t0, -40628($fp)
	li $t0, 4
	sw $t0, -40632($fp)
	li $t0, 4
	lw $t1, -40632($fp)
	mul $t0, $t0, $t1
	sw $t0, -40636($fp)
	lw $t0, -40636($fp)
	lw $t1, -40628($fp)
	add $t0, $t0, $t1
	sw $t0, -40640($fp)
	lw $t0, -40640($fp)
	lw $t1, 0($t0)
	sw $t1, -40644($fp)
	lw $t0, -40644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -772
	sw $t0, -40648($fp)
	li $t0, 0
	sw $t0, -40652($fp)
	li $t0, 4
	lw $t1, -40652($fp)
	mul $t0, $t0, $t1
	sw $t0, -40656($fp)
	lw $t0, -40656($fp)
	lw $t1, -40648($fp)
	add $t0, $t0, $t1
	sw $t0, -40660($fp)
	lw $t0, -40660($fp)
	lw $t1, 0($t0)
	sw $t1, -40664($fp)
	lw $t0, -40664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -772
	sw $t0, -40668($fp)
	li $t0, 1
	sw $t0, -40672($fp)
	li $t0, 4
	lw $t1, -40672($fp)
	mul $t0, $t0, $t1
	sw $t0, -40676($fp)
	lw $t0, -40676($fp)
	lw $t1, -40668($fp)
	add $t0, $t0, $t1
	sw $t0, -40680($fp)
	lw $t0, -40680($fp)
	lw $t1, 0($t0)
	sw $t1, -40684($fp)
	lw $t0, -40684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -772
	sw $t0, -40688($fp)
	li $t0, 2
	sw $t0, -40692($fp)
	li $t0, 4
	lw $t1, -40692($fp)
	mul $t0, $t0, $t1
	sw $t0, -40696($fp)
	lw $t0, -40696($fp)
	lw $t1, -40688($fp)
	add $t0, $t0, $t1
	sw $t0, -40700($fp)
	lw $t0, -40700($fp)
	lw $t1, 0($t0)
	sw $t1, -40704($fp)
	lw $t0, -40704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -772
	sw $t0, -40708($fp)
	li $t0, 3
	sw $t0, -40712($fp)
	li $t0, 4
	lw $t1, -40712($fp)
	mul $t0, $t0, $t1
	sw $t0, -40716($fp)
	lw $t0, -40716($fp)
	lw $t1, -40708($fp)
	add $t0, $t0, $t1
	sw $t0, -40720($fp)
	lw $t0, -40720($fp)
	lw $t1, 0($t0)
	sw $t1, -40724($fp)
	lw $t0, -40724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -772
	sw $t0, -40728($fp)
	li $t0, 4
	sw $t0, -40732($fp)
	li $t0, 4
	lw $t1, -40732($fp)
	mul $t0, $t0, $t1
	sw $t0, -40736($fp)
	lw $t0, -40736($fp)
	lw $t1, -40728($fp)
	add $t0, $t0, $t1
	sw $t0, -40740($fp)
	lw $t0, -40740($fp)
	lw $t1, 0($t0)
	sw $t1, -40744($fp)
	lw $t0, -40744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -772
	sw $t0, -40748($fp)
	li $t0, 5
	sw $t0, -40752($fp)
	li $t0, 4
	lw $t1, -40752($fp)
	mul $t0, $t0, $t1
	sw $t0, -40756($fp)
	lw $t0, -40756($fp)
	lw $t1, -40748($fp)
	add $t0, $t0, $t1
	sw $t0, -40760($fp)
	lw $t0, -40760($fp)
	lw $t1, 0($t0)
	sw $t1, -40764($fp)
	lw $t0, -40764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -772
	sw $t0, -40768($fp)
	li $t0, 6
	sw $t0, -40772($fp)
	li $t0, 4
	lw $t1, -40772($fp)
	mul $t0, $t0, $t1
	sw $t0, -40776($fp)
	lw $t0, -40776($fp)
	lw $t1, -40768($fp)
	add $t0, $t0, $t1
	sw $t0, -40780($fp)
	lw $t0, -40780($fp)
	lw $t1, 0($t0)
	sw $t1, -40784($fp)
	lw $t0, -40784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -772
	sw $t0, -40788($fp)
	li $t0, 7
	sw $t0, -40792($fp)
	li $t0, 4
	lw $t1, -40792($fp)
	mul $t0, $t0, $t1
	sw $t0, -40796($fp)
	lw $t0, -40796($fp)
	lw $t1, -40788($fp)
	add $t0, $t0, $t1
	sw $t0, -40800($fp)
	lw $t0, -40800($fp)
	lw $t1, 0($t0)
	sw $t1, -40804($fp)
	lw $t0, -40804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -772
	sw $t0, -40808($fp)
	li $t0, 8
	sw $t0, -40812($fp)
	li $t0, 4
	lw $t1, -40812($fp)
	mul $t0, $t0, $t1
	sw $t0, -40816($fp)
	lw $t0, -40816($fp)
	lw $t1, -40808($fp)
	add $t0, $t0, $t1
	sw $t0, -40820($fp)
	lw $t0, -40820($fp)
	lw $t1, 0($t0)
	sw $t1, -40824($fp)
	lw $t0, -40824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -772
	sw $t0, -40828($fp)
	li $t0, 9
	sw $t0, -40832($fp)
	li $t0, 4
	lw $t1, -40832($fp)
	mul $t0, $t0, $t1
	sw $t0, -40836($fp)
	lw $t0, -40836($fp)
	lw $t1, -40828($fp)
	add $t0, $t0, $t1
	sw $t0, -40840($fp)
	lw $t0, -40840($fp)
	lw $t1, 0($t0)
	sw $t1, -40844($fp)
	lw $t0, -40844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -808
	sw $t0, -40848($fp)
	li $t0, 0
	sw $t0, -40852($fp)
	li $t0, 4
	lw $t1, -40852($fp)
	mul $t0, $t0, $t1
	sw $t0, -40856($fp)
	lw $t0, -40856($fp)
	lw $t1, -40848($fp)
	add $t0, $t0, $t1
	sw $t0, -40860($fp)
	lw $t0, -40860($fp)
	lw $t1, 0($t0)
	sw $t1, -40864($fp)
	lw $t0, -40864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -808
	sw $t0, -40868($fp)
	li $t0, 1
	sw $t0, -40872($fp)
	li $t0, 4
	lw $t1, -40872($fp)
	mul $t0, $t0, $t1
	sw $t0, -40876($fp)
	lw $t0, -40876($fp)
	lw $t1, -40868($fp)
	add $t0, $t0, $t1
	sw $t0, -40880($fp)
	lw $t0, -40880($fp)
	lw $t1, 0($t0)
	sw $t1, -40884($fp)
	lw $t0, -40884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -808
	sw $t0, -40888($fp)
	li $t0, 2
	sw $t0, -40892($fp)
	li $t0, 4
	lw $t1, -40892($fp)
	mul $t0, $t0, $t1
	sw $t0, -40896($fp)
	lw $t0, -40896($fp)
	lw $t1, -40888($fp)
	add $t0, $t0, $t1
	sw $t0, -40900($fp)
	lw $t0, -40900($fp)
	lw $t1, 0($t0)
	sw $t1, -40904($fp)
	lw $t0, -40904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -808
	sw $t0, -40908($fp)
	li $t0, 3
	sw $t0, -40912($fp)
	li $t0, 4
	lw $t1, -40912($fp)
	mul $t0, $t0, $t1
	sw $t0, -40916($fp)
	lw $t0, -40916($fp)
	lw $t1, -40908($fp)
	add $t0, $t0, $t1
	sw $t0, -40920($fp)
	lw $t0, -40920($fp)
	lw $t1, 0($t0)
	sw $t1, -40924($fp)
	lw $t0, -40924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -808
	sw $t0, -40928($fp)
	li $t0, 4
	sw $t0, -40932($fp)
	li $t0, 4
	lw $t1, -40932($fp)
	mul $t0, $t0, $t1
	sw $t0, -40936($fp)
	lw $t0, -40936($fp)
	lw $t1, -40928($fp)
	add $t0, $t0, $t1
	sw $t0, -40940($fp)
	lw $t0, -40940($fp)
	lw $t1, 0($t0)
	sw $t1, -40944($fp)
	lw $t0, -40944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -808
	sw $t0, -40948($fp)
	li $t0, 5
	sw $t0, -40952($fp)
	li $t0, 4
	lw $t1, -40952($fp)
	mul $t0, $t0, $t1
	sw $t0, -40956($fp)
	lw $t0, -40956($fp)
	lw $t1, -40948($fp)
	add $t0, $t0, $t1
	sw $t0, -40960($fp)
	lw $t0, -40960($fp)
	lw $t1, 0($t0)
	sw $t1, -40964($fp)
	lw $t0, -40964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -808
	sw $t0, -40968($fp)
	li $t0, 6
	sw $t0, -40972($fp)
	li $t0, 4
	lw $t1, -40972($fp)
	mul $t0, $t0, $t1
	sw $t0, -40976($fp)
	lw $t0, -40976($fp)
	lw $t1, -40968($fp)
	add $t0, $t0, $t1
	sw $t0, -40980($fp)
	lw $t0, -40980($fp)
	lw $t1, 0($t0)
	sw $t1, -40984($fp)
	lw $t0, -40984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -808
	sw $t0, -40988($fp)
	li $t0, 7
	sw $t0, -40992($fp)
	li $t0, 4
	lw $t1, -40992($fp)
	mul $t0, $t0, $t1
	sw $t0, -40996($fp)
	lw $t0, -40996($fp)
	lw $t1, -40988($fp)
	add $t0, $t0, $t1
	sw $t0, -41000($fp)
	lw $t0, -41000($fp)
	lw $t1, 0($t0)
	sw $t1, -41004($fp)
	lw $t0, -41004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -808
	sw $t0, -41008($fp)
	li $t0, 8
	sw $t0, -41012($fp)
	li $t0, 4
	lw $t1, -41012($fp)
	mul $t0, $t0, $t1
	sw $t0, -41016($fp)
	lw $t0, -41016($fp)
	lw $t1, -41008($fp)
	add $t0, $t0, $t1
	sw $t0, -41020($fp)
	lw $t0, -41020($fp)
	lw $t1, 0($t0)
	sw $t1, -41024($fp)
	lw $t0, -41024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8352($fp)
	sw $t0, -41028($fp)
	lw $t0, -41028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8364($fp)
	sw $t0, -41032($fp)
	lw $t0, -41032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8376($fp)
	sw $t0, -41036($fp)
	lw $t0, -41036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8388($fp)
	sw $t0, -41040($fp)
	lw $t0, -41040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8400($fp)
	sw $t0, -41044($fp)
	lw $t0, -41044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8412($fp)
	sw $t0, -41048($fp)
	lw $t0, -41048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8424($fp)
	sw $t0, -41052($fp)
	lw $t0, -41052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8436($fp)
	sw $t0, -41056($fp)
	lw $t0, -41056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8448($fp)
	sw $t0, -41060($fp)
	lw $t0, -41060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8460($fp)
	sw $t0, -41064($fp)
	lw $t0, -41064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8472($fp)
	sw $t0, -41068($fp)
	lw $t0, -41068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8484($fp)
	sw $t0, -41072($fp)
	lw $t0, -41072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -844
	sw $t0, -41076($fp)
	li $t0, 0
	sw $t0, -41080($fp)
	li $t0, 4
	lw $t1, -41080($fp)
	mul $t0, $t0, $t1
	sw $t0, -41084($fp)
	lw $t0, -41084($fp)
	lw $t1, -41076($fp)
	add $t0, $t0, $t1
	sw $t0, -41088($fp)
	lw $t0, -41088($fp)
	lw $t1, 0($t0)
	sw $t1, -41092($fp)
	lw $t0, -41092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -844
	sw $t0, -41096($fp)
	li $t0, 1
	sw $t0, -41100($fp)
	li $t0, 4
	lw $t1, -41100($fp)
	mul $t0, $t0, $t1
	sw $t0, -41104($fp)
	lw $t0, -41104($fp)
	lw $t1, -41096($fp)
	add $t0, $t0, $t1
	sw $t0, -41108($fp)
	lw $t0, -41108($fp)
	lw $t1, 0($t0)
	sw $t1, -41112($fp)
	lw $t0, -41112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -844
	sw $t0, -41116($fp)
	li $t0, 2
	sw $t0, -41120($fp)
	li $t0, 4
	lw $t1, -41120($fp)
	mul $t0, $t0, $t1
	sw $t0, -41124($fp)
	lw $t0, -41124($fp)
	lw $t1, -41116($fp)
	add $t0, $t0, $t1
	sw $t0, -41128($fp)
	lw $t0, -41128($fp)
	lw $t1, 0($t0)
	sw $t1, -41132($fp)
	lw $t0, -41132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -844
	sw $t0, -41136($fp)
	li $t0, 3
	sw $t0, -41140($fp)
	li $t0, 4
	lw $t1, -41140($fp)
	mul $t0, $t0, $t1
	sw $t0, -41144($fp)
	lw $t0, -41144($fp)
	lw $t1, -41136($fp)
	add $t0, $t0, $t1
	sw $t0, -41148($fp)
	lw $t0, -41148($fp)
	lw $t1, 0($t0)
	sw $t1, -41152($fp)
	lw $t0, -41152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -844
	sw $t0, -41156($fp)
	li $t0, 4
	sw $t0, -41160($fp)
	li $t0, 4
	lw $t1, -41160($fp)
	mul $t0, $t0, $t1
	sw $t0, -41164($fp)
	lw $t0, -41164($fp)
	lw $t1, -41156($fp)
	add $t0, $t0, $t1
	sw $t0, -41168($fp)
	lw $t0, -41168($fp)
	lw $t1, 0($t0)
	sw $t1, -41172($fp)
	lw $t0, -41172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -844
	sw $t0, -41176($fp)
	li $t0, 5
	sw $t0, -41180($fp)
	li $t0, 4
	lw $t1, -41180($fp)
	mul $t0, $t0, $t1
	sw $t0, -41184($fp)
	lw $t0, -41184($fp)
	lw $t1, -41176($fp)
	add $t0, $t0, $t1
	sw $t0, -41188($fp)
	lw $t0, -41188($fp)
	lw $t1, 0($t0)
	sw $t1, -41192($fp)
	lw $t0, -41192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -844
	sw $t0, -41196($fp)
	li $t0, 6
	sw $t0, -41200($fp)
	li $t0, 4
	lw $t1, -41200($fp)
	mul $t0, $t0, $t1
	sw $t0, -41204($fp)
	lw $t0, -41204($fp)
	lw $t1, -41196($fp)
	add $t0, $t0, $t1
	sw $t0, -41208($fp)
	lw $t0, -41208($fp)
	lw $t1, 0($t0)
	sw $t1, -41212($fp)
	lw $t0, -41212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -844
	sw $t0, -41216($fp)
	li $t0, 7
	sw $t0, -41220($fp)
	li $t0, 4
	lw $t1, -41220($fp)
	mul $t0, $t0, $t1
	sw $t0, -41224($fp)
	lw $t0, -41224($fp)
	lw $t1, -41216($fp)
	add $t0, $t0, $t1
	sw $t0, -41228($fp)
	lw $t0, -41228($fp)
	lw $t1, 0($t0)
	sw $t1, -41232($fp)
	lw $t0, -41232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -844
	sw $t0, -41236($fp)
	li $t0, 8
	sw $t0, -41240($fp)
	li $t0, 4
	lw $t1, -41240($fp)
	mul $t0, $t0, $t1
	sw $t0, -41244($fp)
	lw $t0, -41244($fp)
	lw $t1, -41236($fp)
	add $t0, $t0, $t1
	sw $t0, -41248($fp)
	lw $t0, -41248($fp)
	lw $t1, 0($t0)
	sw $t1, -41252($fp)
	lw $t0, -41252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8712($fp)
	sw $t0, -41256($fp)
	lw $t0, -41256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8724($fp)
	sw $t0, -41260($fp)
	lw $t0, -41260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -884
	sw $t0, -41264($fp)
	li $t0, 0
	sw $t0, -41268($fp)
	li $t0, 4
	lw $t1, -41268($fp)
	mul $t0, $t0, $t1
	sw $t0, -41272($fp)
	lw $t0, -41272($fp)
	lw $t1, -41264($fp)
	add $t0, $t0, $t1
	sw $t0, -41276($fp)
	lw $t0, -41276($fp)
	lw $t1, 0($t0)
	sw $t1, -41280($fp)
	lw $t0, -41280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -884
	sw $t0, -41284($fp)
	li $t0, 1
	sw $t0, -41288($fp)
	li $t0, 4
	lw $t1, -41288($fp)
	mul $t0, $t0, $t1
	sw $t0, -41292($fp)
	lw $t0, -41292($fp)
	lw $t1, -41284($fp)
	add $t0, $t0, $t1
	sw $t0, -41296($fp)
	lw $t0, -41296($fp)
	lw $t1, 0($t0)
	sw $t1, -41300($fp)
	lw $t0, -41300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -884
	sw $t0, -41304($fp)
	li $t0, 2
	sw $t0, -41308($fp)
	li $t0, 4
	lw $t1, -41308($fp)
	mul $t0, $t0, $t1
	sw $t0, -41312($fp)
	lw $t0, -41312($fp)
	lw $t1, -41304($fp)
	add $t0, $t0, $t1
	sw $t0, -41316($fp)
	lw $t0, -41316($fp)
	lw $t1, 0($t0)
	sw $t1, -41320($fp)
	lw $t0, -41320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -884
	sw $t0, -41324($fp)
	li $t0, 3
	sw $t0, -41328($fp)
	li $t0, 4
	lw $t1, -41328($fp)
	mul $t0, $t0, $t1
	sw $t0, -41332($fp)
	lw $t0, -41332($fp)
	lw $t1, -41324($fp)
	add $t0, $t0, $t1
	sw $t0, -41336($fp)
	lw $t0, -41336($fp)
	lw $t1, 0($t0)
	sw $t1, -41340($fp)
	lw $t0, -41340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -884
	sw $t0, -41344($fp)
	li $t0, 4
	sw $t0, -41348($fp)
	li $t0, 4
	lw $t1, -41348($fp)
	mul $t0, $t0, $t1
	sw $t0, -41352($fp)
	lw $t0, -41352($fp)
	lw $t1, -41344($fp)
	add $t0, $t0, $t1
	sw $t0, -41356($fp)
	lw $t0, -41356($fp)
	lw $t1, 0($t0)
	sw $t1, -41360($fp)
	lw $t0, -41360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -884
	sw $t0, -41364($fp)
	li $t0, 5
	sw $t0, -41368($fp)
	li $t0, 4
	lw $t1, -41368($fp)
	mul $t0, $t0, $t1
	sw $t0, -41372($fp)
	lw $t0, -41372($fp)
	lw $t1, -41364($fp)
	add $t0, $t0, $t1
	sw $t0, -41376($fp)
	lw $t0, -41376($fp)
	lw $t1, 0($t0)
	sw $t1, -41380($fp)
	lw $t0, -41380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -884
	sw $t0, -41384($fp)
	li $t0, 6
	sw $t0, -41388($fp)
	li $t0, 4
	lw $t1, -41388($fp)
	mul $t0, $t0, $t1
	sw $t0, -41392($fp)
	lw $t0, -41392($fp)
	lw $t1, -41384($fp)
	add $t0, $t0, $t1
	sw $t0, -41396($fp)
	lw $t0, -41396($fp)
	lw $t1, 0($t0)
	sw $t1, -41400($fp)
	lw $t0, -41400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -884
	sw $t0, -41404($fp)
	li $t0, 7
	sw $t0, -41408($fp)
	li $t0, 4
	lw $t1, -41408($fp)
	mul $t0, $t0, $t1
	sw $t0, -41412($fp)
	lw $t0, -41412($fp)
	lw $t1, -41404($fp)
	add $t0, $t0, $t1
	sw $t0, -41416($fp)
	lw $t0, -41416($fp)
	lw $t1, 0($t0)
	sw $t1, -41420($fp)
	lw $t0, -41420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -884
	sw $t0, -41424($fp)
	li $t0, 8
	sw $t0, -41428($fp)
	li $t0, 4
	lw $t1, -41428($fp)
	mul $t0, $t0, $t1
	sw $t0, -41432($fp)
	lw $t0, -41432($fp)
	lw $t1, -41424($fp)
	add $t0, $t0, $t1
	sw $t0, -41436($fp)
	lw $t0, -41436($fp)
	lw $t1, 0($t0)
	sw $t1, -41440($fp)
	lw $t0, -41440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -884
	sw $t0, -41444($fp)
	li $t0, 9
	sw $t0, -41448($fp)
	li $t0, 4
	lw $t1, -41448($fp)
	mul $t0, $t0, $t1
	sw $t0, -41452($fp)
	lw $t0, -41452($fp)
	lw $t1, -41444($fp)
	add $t0, $t0, $t1
	sw $t0, -41456($fp)
	lw $t0, -41456($fp)
	lw $t1, 0($t0)
	sw $t1, -41460($fp)
	lw $t0, -41460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8976($fp)
	sw $t0, -41464($fp)
	lw $t0, -41464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8988($fp)
	sw $t0, -41468($fp)
	lw $t0, -41468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9000($fp)
	sw $t0, -41472($fp)
	lw $t0, -41472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9012($fp)
	sw $t0, -41476($fp)
	lw $t0, -41476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -924
	sw $t0, -41480($fp)
	li $t0, 0
	sw $t0, -41484($fp)
	li $t0, 4
	lw $t1, -41484($fp)
	mul $t0, $t0, $t1
	sw $t0, -41488($fp)
	lw $t0, -41488($fp)
	lw $t1, -41480($fp)
	add $t0, $t0, $t1
	sw $t0, -41492($fp)
	lw $t0, -41492($fp)
	lw $t1, 0($t0)
	sw $t1, -41496($fp)
	lw $t0, -41496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -924
	sw $t0, -41500($fp)
	li $t0, 1
	sw $t0, -41504($fp)
	li $t0, 4
	lw $t1, -41504($fp)
	mul $t0, $t0, $t1
	sw $t0, -41508($fp)
	lw $t0, -41508($fp)
	lw $t1, -41500($fp)
	add $t0, $t0, $t1
	sw $t0, -41512($fp)
	lw $t0, -41512($fp)
	lw $t1, 0($t0)
	sw $t1, -41516($fp)
	lw $t0, -41516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -924
	sw $t0, -41520($fp)
	li $t0, 2
	sw $t0, -41524($fp)
	li $t0, 4
	lw $t1, -41524($fp)
	mul $t0, $t0, $t1
	sw $t0, -41528($fp)
	lw $t0, -41528($fp)
	lw $t1, -41520($fp)
	add $t0, $t0, $t1
	sw $t0, -41532($fp)
	lw $t0, -41532($fp)
	lw $t1, 0($t0)
	sw $t1, -41536($fp)
	lw $t0, -41536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -924
	sw $t0, -41540($fp)
	li $t0, 3
	sw $t0, -41544($fp)
	li $t0, 4
	lw $t1, -41544($fp)
	mul $t0, $t0, $t1
	sw $t0, -41548($fp)
	lw $t0, -41548($fp)
	lw $t1, -41540($fp)
	add $t0, $t0, $t1
	sw $t0, -41552($fp)
	lw $t0, -41552($fp)
	lw $t1, 0($t0)
	sw $t1, -41556($fp)
	lw $t0, -41556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -924
	sw $t0, -41560($fp)
	li $t0, 4
	sw $t0, -41564($fp)
	li $t0, 4
	lw $t1, -41564($fp)
	mul $t0, $t0, $t1
	sw $t0, -41568($fp)
	lw $t0, -41568($fp)
	lw $t1, -41560($fp)
	add $t0, $t0, $t1
	sw $t0, -41572($fp)
	lw $t0, -41572($fp)
	lw $t1, 0($t0)
	sw $t1, -41576($fp)
	lw $t0, -41576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -924
	sw $t0, -41580($fp)
	li $t0, 5
	sw $t0, -41584($fp)
	li $t0, 4
	lw $t1, -41584($fp)
	mul $t0, $t0, $t1
	sw $t0, -41588($fp)
	lw $t0, -41588($fp)
	lw $t1, -41580($fp)
	add $t0, $t0, $t1
	sw $t0, -41592($fp)
	lw $t0, -41592($fp)
	lw $t1, 0($t0)
	sw $t1, -41596($fp)
	lw $t0, -41596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -924
	sw $t0, -41600($fp)
	li $t0, 6
	sw $t0, -41604($fp)
	li $t0, 4
	lw $t1, -41604($fp)
	mul $t0, $t0, $t1
	sw $t0, -41608($fp)
	lw $t0, -41608($fp)
	lw $t1, -41600($fp)
	add $t0, $t0, $t1
	sw $t0, -41612($fp)
	lw $t0, -41612($fp)
	lw $t1, 0($t0)
	sw $t1, -41616($fp)
	lw $t0, -41616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -924
	sw $t0, -41620($fp)
	li $t0, 7
	sw $t0, -41624($fp)
	li $t0, 4
	lw $t1, -41624($fp)
	mul $t0, $t0, $t1
	sw $t0, -41628($fp)
	lw $t0, -41628($fp)
	lw $t1, -41620($fp)
	add $t0, $t0, $t1
	sw $t0, -41632($fp)
	lw $t0, -41632($fp)
	lw $t1, 0($t0)
	sw $t1, -41636($fp)
	lw $t0, -41636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -924
	sw $t0, -41640($fp)
	li $t0, 8
	sw $t0, -41644($fp)
	li $t0, 4
	lw $t1, -41644($fp)
	mul $t0, $t0, $t1
	sw $t0, -41648($fp)
	lw $t0, -41648($fp)
	lw $t1, -41640($fp)
	add $t0, $t0, $t1
	sw $t0, -41652($fp)
	lw $t0, -41652($fp)
	lw $t1, 0($t0)
	sw $t1, -41656($fp)
	lw $t0, -41656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -924
	sw $t0, -41660($fp)
	li $t0, 9
	sw $t0, -41664($fp)
	li $t0, 4
	lw $t1, -41664($fp)
	mul $t0, $t0, $t1
	sw $t0, -41668($fp)
	lw $t0, -41668($fp)
	lw $t1, -41660($fp)
	add $t0, $t0, $t1
	sw $t0, -41672($fp)
	lw $t0, -41672($fp)
	lw $t1, 0($t0)
	sw $t1, -41676($fp)
	lw $t0, -41676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9264($fp)
	sw $t0, -41680($fp)
	lw $t0, -41680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9276($fp)
	sw $t0, -41684($fp)
	lw $t0, -41684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9288($fp)
	sw $t0, -41688($fp)
	lw $t0, -41688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9300($fp)
	sw $t0, -41692($fp)
	lw $t0, -41692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9312($fp)
	sw $t0, -41696($fp)
	lw $t0, -41696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9324($fp)
	sw $t0, -41700($fp)
	lw $t0, -41700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9336($fp)
	sw $t0, -41704($fp)
	lw $t0, -41704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9348($fp)
	sw $t0, -41708($fp)
	lw $t0, -41708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9360($fp)
	sw $t0, -41712($fp)
	lw $t0, -41712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -928
	sw $t0, -41716($fp)
	li $t0, 0
	sw $t0, -41720($fp)
	li $t0, 4
	lw $t1, -41720($fp)
	mul $t0, $t0, $t1
	sw $t0, -41724($fp)
	lw $t0, -41724($fp)
	lw $t1, -41716($fp)
	add $t0, $t0, $t1
	sw $t0, -41728($fp)
	lw $t0, -41728($fp)
	lw $t1, 0($t0)
	sw $t1, -41732($fp)
	lw $t0, -41732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9396($fp)
	sw $t0, -41736($fp)
	lw $t0, -41736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9408($fp)
	sw $t0, -41740($fp)
	lw $t0, -41740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9420($fp)
	sw $t0, -41744($fp)
	lw $t0, -41744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9432($fp)
	sw $t0, -41748($fp)
	lw $t0, -41748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9444($fp)
	sw $t0, -41752($fp)
	lw $t0, -41752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9456($fp)
	sw $t0, -41756($fp)
	lw $t0, -41756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9468($fp)
	sw $t0, -41760($fp)
	lw $t0, -41760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9480($fp)
	sw $t0, -41764($fp)
	lw $t0, -41764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9492($fp)
	sw $t0, -41768($fp)
	lw $t0, -41768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9504($fp)
	sw $t0, -41772($fp)
	lw $t0, -41772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9516($fp)
	sw $t0, -41776($fp)
	lw $t0, -41776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9528($fp)
	sw $t0, -41780($fp)
	lw $t0, -41780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -944
	sw $t0, -41784($fp)
	li $t0, 0
	sw $t0, -41788($fp)
	li $t0, 4
	lw $t1, -41788($fp)
	mul $t0, $t0, $t1
	sw $t0, -41792($fp)
	lw $t0, -41792($fp)
	lw $t1, -41784($fp)
	add $t0, $t0, $t1
	sw $t0, -41796($fp)
	lw $t0, -41796($fp)
	lw $t1, 0($t0)
	sw $t1, -41800($fp)
	lw $t0, -41800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -944
	sw $t0, -41804($fp)
	li $t0, 1
	sw $t0, -41808($fp)
	li $t0, 4
	lw $t1, -41808($fp)
	mul $t0, $t0, $t1
	sw $t0, -41812($fp)
	lw $t0, -41812($fp)
	lw $t1, -41804($fp)
	add $t0, $t0, $t1
	sw $t0, -41816($fp)
	lw $t0, -41816($fp)
	lw $t1, 0($t0)
	sw $t1, -41820($fp)
	lw $t0, -41820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -944
	sw $t0, -41824($fp)
	li $t0, 2
	sw $t0, -41828($fp)
	li $t0, 4
	lw $t1, -41828($fp)
	mul $t0, $t0, $t1
	sw $t0, -41832($fp)
	lw $t0, -41832($fp)
	lw $t1, -41824($fp)
	add $t0, $t0, $t1
	sw $t0, -41836($fp)
	lw $t0, -41836($fp)
	lw $t1, 0($t0)
	sw $t1, -41840($fp)
	lw $t0, -41840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -944
	sw $t0, -41844($fp)
	li $t0, 3
	sw $t0, -41848($fp)
	li $t0, 4
	lw $t1, -41848($fp)
	mul $t0, $t0, $t1
	sw $t0, -41852($fp)
	lw $t0, -41852($fp)
	lw $t1, -41844($fp)
	add $t0, $t0, $t1
	sw $t0, -41856($fp)
	lw $t0, -41856($fp)
	lw $t1, 0($t0)
	sw $t1, -41860($fp)
	lw $t0, -41860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -960
	sw $t0, -41864($fp)
	li $t0, 0
	sw $t0, -41868($fp)
	li $t0, 4
	lw $t1, -41868($fp)
	mul $t0, $t0, $t1
	sw $t0, -41872($fp)
	lw $t0, -41872($fp)
	lw $t1, -41864($fp)
	add $t0, $t0, $t1
	sw $t0, -41876($fp)
	lw $t0, -41876($fp)
	lw $t1, 0($t0)
	sw $t1, -41880($fp)
	lw $t0, -41880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -960
	sw $t0, -41884($fp)
	li $t0, 1
	sw $t0, -41888($fp)
	li $t0, 4
	lw $t1, -41888($fp)
	mul $t0, $t0, $t1
	sw $t0, -41892($fp)
	lw $t0, -41892($fp)
	lw $t1, -41884($fp)
	add $t0, $t0, $t1
	sw $t0, -41896($fp)
	lw $t0, -41896($fp)
	lw $t1, 0($t0)
	sw $t1, -41900($fp)
	lw $t0, -41900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -960
	sw $t0, -41904($fp)
	li $t0, 2
	sw $t0, -41908($fp)
	li $t0, 4
	lw $t1, -41908($fp)
	mul $t0, $t0, $t1
	sw $t0, -41912($fp)
	lw $t0, -41912($fp)
	lw $t1, -41904($fp)
	add $t0, $t0, $t1
	sw $t0, -41916($fp)
	lw $t0, -41916($fp)
	lw $t1, 0($t0)
	sw $t1, -41920($fp)
	lw $t0, -41920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -960
	sw $t0, -41924($fp)
	li $t0, 3
	sw $t0, -41928($fp)
	li $t0, 4
	lw $t1, -41928($fp)
	mul $t0, $t0, $t1
	sw $t0, -41932($fp)
	lw $t0, -41932($fp)
	lw $t1, -41924($fp)
	add $t0, $t0, $t1
	sw $t0, -41936($fp)
	lw $t0, -41936($fp)
	lw $t1, 0($t0)
	sw $t1, -41940($fp)
	lw $t0, -41940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9732($fp)
	sw $t0, -41944($fp)
	lw $t0, -41944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9744($fp)
	sw $t0, -41948($fp)
	lw $t0, -41948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9756($fp)
	sw $t0, -41952($fp)
	lw $t0, -41952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9768($fp)
	sw $t0, -41956($fp)
	lw $t0, -41956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -976
	sw $t0, -41960($fp)
	li $t0, 0
	sw $t0, -41964($fp)
	li $t0, 4
	lw $t1, -41964($fp)
	mul $t0, $t0, $t1
	sw $t0, -41968($fp)
	lw $t0, -41968($fp)
	lw $t1, -41960($fp)
	add $t0, $t0, $t1
	sw $t0, -41972($fp)
	lw $t0, -41972($fp)
	lw $t1, 0($t0)
	sw $t1, -41976($fp)
	lw $t0, -41976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -976
	sw $t0, -41980($fp)
	li $t0, 1
	sw $t0, -41984($fp)
	li $t0, 4
	lw $t1, -41984($fp)
	mul $t0, $t0, $t1
	sw $t0, -41988($fp)
	lw $t0, -41988($fp)
	lw $t1, -41980($fp)
	add $t0, $t0, $t1
	sw $t0, -41992($fp)
	lw $t0, -41992($fp)
	lw $t1, 0($t0)
	sw $t1, -41996($fp)
	lw $t0, -41996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -976
	sw $t0, -42000($fp)
	li $t0, 2
	sw $t0, -42004($fp)
	li $t0, 4
	lw $t1, -42004($fp)
	mul $t0, $t0, $t1
	sw $t0, -42008($fp)
	lw $t0, -42008($fp)
	lw $t1, -42000($fp)
	add $t0, $t0, $t1
	sw $t0, -42012($fp)
	lw $t0, -42012($fp)
	lw $t1, 0($t0)
	sw $t1, -42016($fp)
	lw $t0, -42016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -976
	sw $t0, -42020($fp)
	li $t0, 3
	sw $t0, -42024($fp)
	li $t0, 4
	lw $t1, -42024($fp)
	mul $t0, $t0, $t1
	sw $t0, -42028($fp)
	lw $t0, -42028($fp)
	lw $t1, -42020($fp)
	add $t0, $t0, $t1
	sw $t0, -42032($fp)
	lw $t0, -42032($fp)
	lw $t1, 0($t0)
	sw $t1, -42036($fp)
	lw $t0, -42036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9876($fp)
	sw $t0, -42040($fp)
	lw $t0, -42040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9888($fp)
	sw $t0, -42044($fp)
	lw $t0, -42044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9900($fp)
	sw $t0, -42048($fp)
	lw $t0, -42048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9912($fp)
	sw $t0, -42052($fp)
	lw $t0, -42052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1004
	sw $t0, -42056($fp)
	li $t0, 0
	sw $t0, -42060($fp)
	li $t0, 4
	lw $t1, -42060($fp)
	mul $t0, $t0, $t1
	sw $t0, -42064($fp)
	lw $t0, -42064($fp)
	lw $t1, -42056($fp)
	add $t0, $t0, $t1
	sw $t0, -42068($fp)
	lw $t0, -42068($fp)
	lw $t1, 0($t0)
	sw $t1, -42072($fp)
	lw $t0, -42072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1004
	sw $t0, -42076($fp)
	li $t0, 1
	sw $t0, -42080($fp)
	li $t0, 4
	lw $t1, -42080($fp)
	mul $t0, $t0, $t1
	sw $t0, -42084($fp)
	lw $t0, -42084($fp)
	lw $t1, -42076($fp)
	add $t0, $t0, $t1
	sw $t0, -42088($fp)
	lw $t0, -42088($fp)
	lw $t1, 0($t0)
	sw $t1, -42092($fp)
	lw $t0, -42092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1004
	sw $t0, -42096($fp)
	li $t0, 2
	sw $t0, -42100($fp)
	li $t0, 4
	lw $t1, -42100($fp)
	mul $t0, $t0, $t1
	sw $t0, -42104($fp)
	lw $t0, -42104($fp)
	lw $t1, -42096($fp)
	add $t0, $t0, $t1
	sw $t0, -42108($fp)
	lw $t0, -42108($fp)
	lw $t1, 0($t0)
	sw $t1, -42112($fp)
	lw $t0, -42112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1004
	sw $t0, -42116($fp)
	li $t0, 3
	sw $t0, -42120($fp)
	li $t0, 4
	lw $t1, -42120($fp)
	mul $t0, $t0, $t1
	sw $t0, -42124($fp)
	lw $t0, -42124($fp)
	lw $t1, -42116($fp)
	add $t0, $t0, $t1
	sw $t0, -42128($fp)
	lw $t0, -42128($fp)
	lw $t1, 0($t0)
	sw $t1, -42132($fp)
	lw $t0, -42132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1004
	sw $t0, -42136($fp)
	li $t0, 4
	sw $t0, -42140($fp)
	li $t0, 4
	lw $t1, -42140($fp)
	mul $t0, $t0, $t1
	sw $t0, -42144($fp)
	lw $t0, -42144($fp)
	lw $t1, -42136($fp)
	add $t0, $t0, $t1
	sw $t0, -42148($fp)
	lw $t0, -42148($fp)
	lw $t1, 0($t0)
	sw $t1, -42152($fp)
	lw $t0, -42152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1004
	sw $t0, -42156($fp)
	li $t0, 5
	sw $t0, -42160($fp)
	li $t0, 4
	lw $t1, -42160($fp)
	mul $t0, $t0, $t1
	sw $t0, -42164($fp)
	lw $t0, -42164($fp)
	lw $t1, -42156($fp)
	add $t0, $t0, $t1
	sw $t0, -42168($fp)
	lw $t0, -42168($fp)
	lw $t1, 0($t0)
	sw $t1, -42172($fp)
	lw $t0, -42172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1004
	sw $t0, -42176($fp)
	li $t0, 6
	sw $t0, -42180($fp)
	li $t0, 4
	lw $t1, -42180($fp)
	mul $t0, $t0, $t1
	sw $t0, -42184($fp)
	lw $t0, -42184($fp)
	lw $t1, -42176($fp)
	add $t0, $t0, $t1
	sw $t0, -42188($fp)
	lw $t0, -42188($fp)
	lw $t1, 0($t0)
	sw $t1, -42192($fp)
	lw $t0, -42192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10092($fp)
	sw $t0, -42196($fp)
	lw $t0, -42196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1020
	sw $t0, -42200($fp)
	li $t0, 0
	sw $t0, -42204($fp)
	li $t0, 4
	lw $t1, -42204($fp)
	mul $t0, $t0, $t1
	sw $t0, -42208($fp)
	lw $t0, -42208($fp)
	lw $t1, -42200($fp)
	add $t0, $t0, $t1
	sw $t0, -42212($fp)
	lw $t0, -42212($fp)
	lw $t1, 0($t0)
	sw $t1, -42216($fp)
	lw $t0, -42216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1020
	sw $t0, -42220($fp)
	li $t0, 1
	sw $t0, -42224($fp)
	li $t0, 4
	lw $t1, -42224($fp)
	mul $t0, $t0, $t1
	sw $t0, -42228($fp)
	lw $t0, -42228($fp)
	lw $t1, -42220($fp)
	add $t0, $t0, $t1
	sw $t0, -42232($fp)
	lw $t0, -42232($fp)
	lw $t1, 0($t0)
	sw $t1, -42236($fp)
	lw $t0, -42236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1020
	sw $t0, -42240($fp)
	li $t0, 2
	sw $t0, -42244($fp)
	li $t0, 4
	lw $t1, -42244($fp)
	mul $t0, $t0, $t1
	sw $t0, -42248($fp)
	lw $t0, -42248($fp)
	lw $t1, -42240($fp)
	add $t0, $t0, $t1
	sw $t0, -42252($fp)
	lw $t0, -42252($fp)
	lw $t1, 0($t0)
	sw $t1, -42256($fp)
	lw $t0, -42256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1020
	sw $t0, -42260($fp)
	li $t0, 3
	sw $t0, -42264($fp)
	li $t0, 4
	lw $t1, -42264($fp)
	mul $t0, $t0, $t1
	sw $t0, -42268($fp)
	lw $t0, -42268($fp)
	lw $t1, -42260($fp)
	add $t0, $t0, $t1
	sw $t0, -42272($fp)
	lw $t0, -42272($fp)
	lw $t1, 0($t0)
	sw $t1, -42276($fp)
	lw $t0, -42276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10200($fp)
	sw $t0, -42280($fp)
	lw $t0, -42280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10212($fp)
	sw $t0, -42284($fp)
	lw $t0, -42284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10224($fp)
	sw $t0, -42288($fp)
	lw $t0, -42288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10236($fp)
	sw $t0, -42292($fp)
	lw $t0, -42292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10248($fp)
	sw $t0, -42296($fp)
	lw $t0, -42296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10260($fp)
	sw $t0, -42300($fp)
	lw $t0, -42300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10272($fp)
	sw $t0, -42304($fp)
	lw $t0, -42304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10284($fp)
	sw $t0, -42308($fp)
	lw $t0, -42308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10296($fp)
	sw $t0, -42312($fp)
	lw $t0, -42312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1052
	sw $t0, -42316($fp)
	li $t0, 0
	sw $t0, -42320($fp)
	li $t0, 4
	lw $t1, -42320($fp)
	mul $t0, $t0, $t1
	sw $t0, -42324($fp)
	lw $t0, -42324($fp)
	lw $t1, -42316($fp)
	add $t0, $t0, $t1
	sw $t0, -42328($fp)
	lw $t0, -42328($fp)
	lw $t1, 0($t0)
	sw $t1, -42332($fp)
	lw $t0, -42332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1052
	sw $t0, -42336($fp)
	li $t0, 1
	sw $t0, -42340($fp)
	li $t0, 4
	lw $t1, -42340($fp)
	mul $t0, $t0, $t1
	sw $t0, -42344($fp)
	lw $t0, -42344($fp)
	lw $t1, -42336($fp)
	add $t0, $t0, $t1
	sw $t0, -42348($fp)
	lw $t0, -42348($fp)
	lw $t1, 0($t0)
	sw $t1, -42352($fp)
	lw $t0, -42352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1052
	sw $t0, -42356($fp)
	li $t0, 2
	sw $t0, -42360($fp)
	li $t0, 4
	lw $t1, -42360($fp)
	mul $t0, $t0, $t1
	sw $t0, -42364($fp)
	lw $t0, -42364($fp)
	lw $t1, -42356($fp)
	add $t0, $t0, $t1
	sw $t0, -42368($fp)
	lw $t0, -42368($fp)
	lw $t1, 0($t0)
	sw $t1, -42372($fp)
	lw $t0, -42372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1052
	sw $t0, -42376($fp)
	li $t0, 3
	sw $t0, -42380($fp)
	li $t0, 4
	lw $t1, -42380($fp)
	mul $t0, $t0, $t1
	sw $t0, -42384($fp)
	lw $t0, -42384($fp)
	lw $t1, -42376($fp)
	add $t0, $t0, $t1
	sw $t0, -42388($fp)
	lw $t0, -42388($fp)
	lw $t1, 0($t0)
	sw $t1, -42392($fp)
	lw $t0, -42392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1052
	sw $t0, -42396($fp)
	li $t0, 4
	sw $t0, -42400($fp)
	li $t0, 4
	lw $t1, -42400($fp)
	mul $t0, $t0, $t1
	sw $t0, -42404($fp)
	lw $t0, -42404($fp)
	lw $t1, -42396($fp)
	add $t0, $t0, $t1
	sw $t0, -42408($fp)
	lw $t0, -42408($fp)
	lw $t1, 0($t0)
	sw $t1, -42412($fp)
	lw $t0, -42412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1052
	sw $t0, -42416($fp)
	li $t0, 5
	sw $t0, -42420($fp)
	li $t0, 4
	lw $t1, -42420($fp)
	mul $t0, $t0, $t1
	sw $t0, -42424($fp)
	lw $t0, -42424($fp)
	lw $t1, -42416($fp)
	add $t0, $t0, $t1
	sw $t0, -42428($fp)
	lw $t0, -42428($fp)
	lw $t1, 0($t0)
	sw $t1, -42432($fp)
	lw $t0, -42432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1052
	sw $t0, -42436($fp)
	li $t0, 6
	sw $t0, -42440($fp)
	li $t0, 4
	lw $t1, -42440($fp)
	mul $t0, $t0, $t1
	sw $t0, -42444($fp)
	lw $t0, -42444($fp)
	lw $t1, -42436($fp)
	add $t0, $t0, $t1
	sw $t0, -42448($fp)
	lw $t0, -42448($fp)
	lw $t1, 0($t0)
	sw $t1, -42452($fp)
	lw $t0, -42452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1052
	sw $t0, -42456($fp)
	li $t0, 7
	sw $t0, -42460($fp)
	li $t0, 4
	lw $t1, -42460($fp)
	mul $t0, $t0, $t1
	sw $t0, -42464($fp)
	lw $t0, -42464($fp)
	lw $t1, -42456($fp)
	add $t0, $t0, $t1
	sw $t0, -42468($fp)
	lw $t0, -42468($fp)
	lw $t1, 0($t0)
	sw $t1, -42472($fp)
	lw $t0, -42472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10500($fp)
	sw $t0, -42476($fp)
	lw $t0, -42476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1084
	sw $t0, -42480($fp)
	li $t0, 0
	sw $t0, -42484($fp)
	li $t0, 4
	lw $t1, -42484($fp)
	mul $t0, $t0, $t1
	sw $t0, -42488($fp)
	lw $t0, -42488($fp)
	lw $t1, -42480($fp)
	add $t0, $t0, $t1
	sw $t0, -42492($fp)
	lw $t0, -42492($fp)
	lw $t1, 0($t0)
	sw $t1, -42496($fp)
	lw $t0, -42496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1084
	sw $t0, -42500($fp)
	li $t0, 1
	sw $t0, -42504($fp)
	li $t0, 4
	lw $t1, -42504($fp)
	mul $t0, $t0, $t1
	sw $t0, -42508($fp)
	lw $t0, -42508($fp)
	lw $t1, -42500($fp)
	add $t0, $t0, $t1
	sw $t0, -42512($fp)
	lw $t0, -42512($fp)
	lw $t1, 0($t0)
	sw $t1, -42516($fp)
	lw $t0, -42516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1084
	sw $t0, -42520($fp)
	li $t0, 2
	sw $t0, -42524($fp)
	li $t0, 4
	lw $t1, -42524($fp)
	mul $t0, $t0, $t1
	sw $t0, -42528($fp)
	lw $t0, -42528($fp)
	lw $t1, -42520($fp)
	add $t0, $t0, $t1
	sw $t0, -42532($fp)
	lw $t0, -42532($fp)
	lw $t1, 0($t0)
	sw $t1, -42536($fp)
	lw $t0, -42536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1084
	sw $t0, -42540($fp)
	li $t0, 3
	sw $t0, -42544($fp)
	li $t0, 4
	lw $t1, -42544($fp)
	mul $t0, $t0, $t1
	sw $t0, -42548($fp)
	lw $t0, -42548($fp)
	lw $t1, -42540($fp)
	add $t0, $t0, $t1
	sw $t0, -42552($fp)
	lw $t0, -42552($fp)
	lw $t1, 0($t0)
	sw $t1, -42556($fp)
	lw $t0, -42556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1084
	sw $t0, -42560($fp)
	li $t0, 4
	sw $t0, -42564($fp)
	li $t0, 4
	lw $t1, -42564($fp)
	mul $t0, $t0, $t1
	sw $t0, -42568($fp)
	lw $t0, -42568($fp)
	lw $t1, -42560($fp)
	add $t0, $t0, $t1
	sw $t0, -42572($fp)
	lw $t0, -42572($fp)
	lw $t1, 0($t0)
	sw $t1, -42576($fp)
	lw $t0, -42576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1084
	sw $t0, -42580($fp)
	li $t0, 5
	sw $t0, -42584($fp)
	li $t0, 4
	lw $t1, -42584($fp)
	mul $t0, $t0, $t1
	sw $t0, -42588($fp)
	lw $t0, -42588($fp)
	lw $t1, -42580($fp)
	add $t0, $t0, $t1
	sw $t0, -42592($fp)
	lw $t0, -42592($fp)
	lw $t1, 0($t0)
	sw $t1, -42596($fp)
	lw $t0, -42596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1084
	sw $t0, -42600($fp)
	li $t0, 6
	sw $t0, -42604($fp)
	li $t0, 4
	lw $t1, -42604($fp)
	mul $t0, $t0, $t1
	sw $t0, -42608($fp)
	lw $t0, -42608($fp)
	lw $t1, -42600($fp)
	add $t0, $t0, $t1
	sw $t0, -42612($fp)
	lw $t0, -42612($fp)
	lw $t1, 0($t0)
	sw $t1, -42616($fp)
	lw $t0, -42616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1084
	sw $t0, -42620($fp)
	li $t0, 7
	sw $t0, -42624($fp)
	li $t0, 4
	lw $t1, -42624($fp)
	mul $t0, $t0, $t1
	sw $t0, -42628($fp)
	lw $t0, -42628($fp)
	lw $t1, -42620($fp)
	add $t0, $t0, $t1
	sw $t0, -42632($fp)
	lw $t0, -42632($fp)
	lw $t1, 0($t0)
	sw $t1, -42636($fp)
	lw $t0, -42636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10704($fp)
	sw $t0, -42640($fp)
	lw $t0, -42640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10716($fp)
	sw $t0, -42644($fp)
	lw $t0, -42644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1120
	sw $t0, -42648($fp)
	li $t0, 0
	sw $t0, -42652($fp)
	li $t0, 4
	lw $t1, -42652($fp)
	mul $t0, $t0, $t1
	sw $t0, -42656($fp)
	lw $t0, -42656($fp)
	lw $t1, -42648($fp)
	add $t0, $t0, $t1
	sw $t0, -42660($fp)
	lw $t0, -42660($fp)
	lw $t1, 0($t0)
	sw $t1, -42664($fp)
	lw $t0, -42664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1120
	sw $t0, -42668($fp)
	li $t0, 1
	sw $t0, -42672($fp)
	li $t0, 4
	lw $t1, -42672($fp)
	mul $t0, $t0, $t1
	sw $t0, -42676($fp)
	lw $t0, -42676($fp)
	lw $t1, -42668($fp)
	add $t0, $t0, $t1
	sw $t0, -42680($fp)
	lw $t0, -42680($fp)
	lw $t1, 0($t0)
	sw $t1, -42684($fp)
	lw $t0, -42684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1120
	sw $t0, -42688($fp)
	li $t0, 2
	sw $t0, -42692($fp)
	li $t0, 4
	lw $t1, -42692($fp)
	mul $t0, $t0, $t1
	sw $t0, -42696($fp)
	lw $t0, -42696($fp)
	lw $t1, -42688($fp)
	add $t0, $t0, $t1
	sw $t0, -42700($fp)
	lw $t0, -42700($fp)
	lw $t1, 0($t0)
	sw $t1, -42704($fp)
	lw $t0, -42704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1120
	sw $t0, -42708($fp)
	li $t0, 3
	sw $t0, -42712($fp)
	li $t0, 4
	lw $t1, -42712($fp)
	mul $t0, $t0, $t1
	sw $t0, -42716($fp)
	lw $t0, -42716($fp)
	lw $t1, -42708($fp)
	add $t0, $t0, $t1
	sw $t0, -42720($fp)
	lw $t0, -42720($fp)
	lw $t1, 0($t0)
	sw $t1, -42724($fp)
	lw $t0, -42724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1120
	sw $t0, -42728($fp)
	li $t0, 4
	sw $t0, -42732($fp)
	li $t0, 4
	lw $t1, -42732($fp)
	mul $t0, $t0, $t1
	sw $t0, -42736($fp)
	lw $t0, -42736($fp)
	lw $t1, -42728($fp)
	add $t0, $t0, $t1
	sw $t0, -42740($fp)
	lw $t0, -42740($fp)
	lw $t1, 0($t0)
	sw $t1, -42744($fp)
	lw $t0, -42744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1120
	sw $t0, -42748($fp)
	li $t0, 5
	sw $t0, -42752($fp)
	li $t0, 4
	lw $t1, -42752($fp)
	mul $t0, $t0, $t1
	sw $t0, -42756($fp)
	lw $t0, -42756($fp)
	lw $t1, -42748($fp)
	add $t0, $t0, $t1
	sw $t0, -42760($fp)
	lw $t0, -42760($fp)
	lw $t1, 0($t0)
	sw $t1, -42764($fp)
	lw $t0, -42764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1120
	sw $t0, -42768($fp)
	li $t0, 6
	sw $t0, -42772($fp)
	li $t0, 4
	lw $t1, -42772($fp)
	mul $t0, $t0, $t1
	sw $t0, -42776($fp)
	lw $t0, -42776($fp)
	lw $t1, -42768($fp)
	add $t0, $t0, $t1
	sw $t0, -42780($fp)
	lw $t0, -42780($fp)
	lw $t1, 0($t0)
	sw $t1, -42784($fp)
	lw $t0, -42784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1120
	sw $t0, -42788($fp)
	li $t0, 7
	sw $t0, -42792($fp)
	li $t0, 4
	lw $t1, -42792($fp)
	mul $t0, $t0, $t1
	sw $t0, -42796($fp)
	lw $t0, -42796($fp)
	lw $t1, -42788($fp)
	add $t0, $t0, $t1
	sw $t0, -42800($fp)
	lw $t0, -42800($fp)
	lw $t1, 0($t0)
	sw $t1, -42804($fp)
	lw $t0, -42804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1120
	sw $t0, -42808($fp)
	li $t0, 8
	sw $t0, -42812($fp)
	li $t0, 4
	lw $t1, -42812($fp)
	mul $t0, $t0, $t1
	sw $t0, -42816($fp)
	lw $t0, -42816($fp)
	lw $t1, -42808($fp)
	add $t0, $t0, $t1
	sw $t0, -42820($fp)
	lw $t0, -42820($fp)
	lw $t1, 0($t0)
	sw $t1, -42824($fp)
	lw $t0, -42824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10944($fp)
	sw $t0, -42828($fp)
	lw $t0, -42828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10956($fp)
	sw $t0, -42832($fp)
	lw $t0, -42832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10968($fp)
	sw $t0, -42836($fp)
	lw $t0, -42836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10980($fp)
	sw $t0, -42840($fp)
	lw $t0, -42840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10992($fp)
	sw $t0, -42844($fp)
	lw $t0, -42844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11004($fp)
	sw $t0, -42848($fp)
	lw $t0, -42848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11016($fp)
	sw $t0, -42852($fp)
	lw $t0, -42852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11028($fp)
	sw $t0, -42856($fp)
	lw $t0, -42856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11040($fp)
	sw $t0, -42860($fp)
	lw $t0, -42860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11052($fp)
	sw $t0, -42864($fp)
	lw $t0, -42864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11064($fp)
	sw $t0, -42868($fp)
	lw $t0, -42868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1152
	sw $t0, -42872($fp)
	li $t0, 0
	sw $t0, -42876($fp)
	li $t0, 4
	lw $t1, -42876($fp)
	mul $t0, $t0, $t1
	sw $t0, -42880($fp)
	lw $t0, -42880($fp)
	lw $t1, -42872($fp)
	add $t0, $t0, $t1
	sw $t0, -42884($fp)
	lw $t0, -42884($fp)
	lw $t1, 0($t0)
	sw $t1, -42888($fp)
	lw $t0, -42888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1152
	sw $t0, -42892($fp)
	li $t0, 1
	sw $t0, -42896($fp)
	li $t0, 4
	lw $t1, -42896($fp)
	mul $t0, $t0, $t1
	sw $t0, -42900($fp)
	lw $t0, -42900($fp)
	lw $t1, -42892($fp)
	add $t0, $t0, $t1
	sw $t0, -42904($fp)
	lw $t0, -42904($fp)
	lw $t1, 0($t0)
	sw $t1, -42908($fp)
	lw $t0, -42908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1152
	sw $t0, -42912($fp)
	li $t0, 2
	sw $t0, -42916($fp)
	li $t0, 4
	lw $t1, -42916($fp)
	mul $t0, $t0, $t1
	sw $t0, -42920($fp)
	lw $t0, -42920($fp)
	lw $t1, -42912($fp)
	add $t0, $t0, $t1
	sw $t0, -42924($fp)
	lw $t0, -42924($fp)
	lw $t1, 0($t0)
	sw $t1, -42928($fp)
	lw $t0, -42928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1152
	sw $t0, -42932($fp)
	li $t0, 3
	sw $t0, -42936($fp)
	li $t0, 4
	lw $t1, -42936($fp)
	mul $t0, $t0, $t1
	sw $t0, -42940($fp)
	lw $t0, -42940($fp)
	lw $t1, -42932($fp)
	add $t0, $t0, $t1
	sw $t0, -42944($fp)
	lw $t0, -42944($fp)
	lw $t1, 0($t0)
	sw $t1, -42948($fp)
	lw $t0, -42948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1152
	sw $t0, -42952($fp)
	li $t0, 4
	sw $t0, -42956($fp)
	li $t0, 4
	lw $t1, -42956($fp)
	mul $t0, $t0, $t1
	sw $t0, -42960($fp)
	lw $t0, -42960($fp)
	lw $t1, -42952($fp)
	add $t0, $t0, $t1
	sw $t0, -42964($fp)
	lw $t0, -42964($fp)
	lw $t1, 0($t0)
	sw $t1, -42968($fp)
	lw $t0, -42968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1152
	sw $t0, -42972($fp)
	li $t0, 5
	sw $t0, -42976($fp)
	li $t0, 4
	lw $t1, -42976($fp)
	mul $t0, $t0, $t1
	sw $t0, -42980($fp)
	lw $t0, -42980($fp)
	lw $t1, -42972($fp)
	add $t0, $t0, $t1
	sw $t0, -42984($fp)
	lw $t0, -42984($fp)
	lw $t1, 0($t0)
	sw $t1, -42988($fp)
	lw $t0, -42988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1152
	sw $t0, -42992($fp)
	li $t0, 6
	sw $t0, -42996($fp)
	li $t0, 4
	lw $t1, -42996($fp)
	mul $t0, $t0, $t1
	sw $t0, -43000($fp)
	lw $t0, -43000($fp)
	lw $t1, -42992($fp)
	add $t0, $t0, $t1
	sw $t0, -43004($fp)
	lw $t0, -43004($fp)
	lw $t1, 0($t0)
	sw $t1, -43008($fp)
	lw $t0, -43008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1152
	sw $t0, -43012($fp)
	li $t0, 7
	sw $t0, -43016($fp)
	li $t0, 4
	lw $t1, -43016($fp)
	mul $t0, $t0, $t1
	sw $t0, -43020($fp)
	lw $t0, -43020($fp)
	lw $t1, -43012($fp)
	add $t0, $t0, $t1
	sw $t0, -43024($fp)
	lw $t0, -43024($fp)
	lw $t1, 0($t0)
	sw $t1, -43028($fp)
	lw $t0, -43028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11268($fp)
	sw $t0, -43032($fp)
	lw $t0, -43032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11280($fp)
	sw $t0, -43036($fp)
	lw $t0, -43036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11292($fp)
	sw $t0, -43040($fp)
	lw $t0, -43040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1168
	sw $t0, -43044($fp)
	li $t0, 0
	sw $t0, -43048($fp)
	li $t0, 4
	lw $t1, -43048($fp)
	mul $t0, $t0, $t1
	sw $t0, -43052($fp)
	lw $t0, -43052($fp)
	lw $t1, -43044($fp)
	add $t0, $t0, $t1
	sw $t0, -43056($fp)
	lw $t0, -43056($fp)
	lw $t1, 0($t0)
	sw $t1, -43060($fp)
	lw $t0, -43060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1168
	sw $t0, -43064($fp)
	li $t0, 1
	sw $t0, -43068($fp)
	li $t0, 4
	lw $t1, -43068($fp)
	mul $t0, $t0, $t1
	sw $t0, -43072($fp)
	lw $t0, -43072($fp)
	lw $t1, -43064($fp)
	add $t0, $t0, $t1
	sw $t0, -43076($fp)
	lw $t0, -43076($fp)
	lw $t1, 0($t0)
	sw $t1, -43080($fp)
	lw $t0, -43080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1168
	sw $t0, -43084($fp)
	li $t0, 2
	sw $t0, -43088($fp)
	li $t0, 4
	lw $t1, -43088($fp)
	mul $t0, $t0, $t1
	sw $t0, -43092($fp)
	lw $t0, -43092($fp)
	lw $t1, -43084($fp)
	add $t0, $t0, $t1
	sw $t0, -43096($fp)
	lw $t0, -43096($fp)
	lw $t1, 0($t0)
	sw $t1, -43100($fp)
	lw $t0, -43100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1168
	sw $t0, -43104($fp)
	li $t0, 3
	sw $t0, -43108($fp)
	li $t0, 4
	lw $t1, -43108($fp)
	mul $t0, $t0, $t1
	sw $t0, -43112($fp)
	lw $t0, -43112($fp)
	lw $t1, -43104($fp)
	add $t0, $t0, $t1
	sw $t0, -43116($fp)
	lw $t0, -43116($fp)
	lw $t1, 0($t0)
	sw $t1, -43120($fp)
	lw $t0, -43120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1184
	sw $t0, -43124($fp)
	li $t0, 0
	sw $t0, -43128($fp)
	li $t0, 4
	lw $t1, -43128($fp)
	mul $t0, $t0, $t1
	sw $t0, -43132($fp)
	lw $t0, -43132($fp)
	lw $t1, -43124($fp)
	add $t0, $t0, $t1
	sw $t0, -43136($fp)
	lw $t0, -43136($fp)
	lw $t1, 0($t0)
	sw $t1, -43140($fp)
	lw $t0, -43140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1184
	sw $t0, -43144($fp)
	li $t0, 1
	sw $t0, -43148($fp)
	li $t0, 4
	lw $t1, -43148($fp)
	mul $t0, $t0, $t1
	sw $t0, -43152($fp)
	lw $t0, -43152($fp)
	lw $t1, -43144($fp)
	add $t0, $t0, $t1
	sw $t0, -43156($fp)
	lw $t0, -43156($fp)
	lw $t1, 0($t0)
	sw $t1, -43160($fp)
	lw $t0, -43160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1184
	sw $t0, -43164($fp)
	li $t0, 2
	sw $t0, -43168($fp)
	li $t0, 4
	lw $t1, -43168($fp)
	mul $t0, $t0, $t1
	sw $t0, -43172($fp)
	lw $t0, -43172($fp)
	lw $t1, -43164($fp)
	add $t0, $t0, $t1
	sw $t0, -43176($fp)
	lw $t0, -43176($fp)
	lw $t1, 0($t0)
	sw $t1, -43180($fp)
	lw $t0, -43180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1184
	sw $t0, -43184($fp)
	li $t0, 3
	sw $t0, -43188($fp)
	li $t0, 4
	lw $t1, -43188($fp)
	mul $t0, $t0, $t1
	sw $t0, -43192($fp)
	lw $t0, -43192($fp)
	lw $t1, -43184($fp)
	add $t0, $t0, $t1
	sw $t0, -43196($fp)
	lw $t0, -43196($fp)
	lw $t1, 0($t0)
	sw $t1, -43200($fp)
	lw $t0, -43200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11496($fp)
	sw $t0, -43204($fp)
	lw $t0, -43204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11508($fp)
	sw $t0, -43208($fp)
	lw $t0, -43208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1188
	sw $t0, -43212($fp)
	li $t0, 0
	sw $t0, -43216($fp)
	li $t0, 4
	lw $t1, -43216($fp)
	mul $t0, $t0, $t1
	sw $t0, -43220($fp)
	lw $t0, -43220($fp)
	lw $t1, -43212($fp)
	add $t0, $t0, $t1
	sw $t0, -43224($fp)
	lw $t0, -43224($fp)
	lw $t1, 0($t0)
	sw $t1, -43228($fp)
	lw $t0, -43228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11544($fp)
	sw $t0, -43232($fp)
	lw $t0, -43232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11556($fp)
	sw $t0, -43236($fp)
	lw $t0, -43236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1228
	sw $t0, -43240($fp)
	li $t0, 0
	sw $t0, -43244($fp)
	li $t0, 4
	lw $t1, -43244($fp)
	mul $t0, $t0, $t1
	sw $t0, -43248($fp)
	lw $t0, -43248($fp)
	lw $t1, -43240($fp)
	add $t0, $t0, $t1
	sw $t0, -43252($fp)
	lw $t0, -43252($fp)
	lw $t1, 0($t0)
	sw $t1, -43256($fp)
	lw $t0, -43256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1228
	sw $t0, -43260($fp)
	li $t0, 1
	sw $t0, -43264($fp)
	li $t0, 4
	lw $t1, -43264($fp)
	mul $t0, $t0, $t1
	sw $t0, -43268($fp)
	lw $t0, -43268($fp)
	lw $t1, -43260($fp)
	add $t0, $t0, $t1
	sw $t0, -43272($fp)
	lw $t0, -43272($fp)
	lw $t1, 0($t0)
	sw $t1, -43276($fp)
	lw $t0, -43276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1228
	sw $t0, -43280($fp)
	li $t0, 2
	sw $t0, -43284($fp)
	li $t0, 4
	lw $t1, -43284($fp)
	mul $t0, $t0, $t1
	sw $t0, -43288($fp)
	lw $t0, -43288($fp)
	lw $t1, -43280($fp)
	add $t0, $t0, $t1
	sw $t0, -43292($fp)
	lw $t0, -43292($fp)
	lw $t1, 0($t0)
	sw $t1, -43296($fp)
	lw $t0, -43296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1228
	sw $t0, -43300($fp)
	li $t0, 3
	sw $t0, -43304($fp)
	li $t0, 4
	lw $t1, -43304($fp)
	mul $t0, $t0, $t1
	sw $t0, -43308($fp)
	lw $t0, -43308($fp)
	lw $t1, -43300($fp)
	add $t0, $t0, $t1
	sw $t0, -43312($fp)
	lw $t0, -43312($fp)
	lw $t1, 0($t0)
	sw $t1, -43316($fp)
	lw $t0, -43316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1228
	sw $t0, -43320($fp)
	li $t0, 4
	sw $t0, -43324($fp)
	li $t0, 4
	lw $t1, -43324($fp)
	mul $t0, $t0, $t1
	sw $t0, -43328($fp)
	lw $t0, -43328($fp)
	lw $t1, -43320($fp)
	add $t0, $t0, $t1
	sw $t0, -43332($fp)
	lw $t0, -43332($fp)
	lw $t1, 0($t0)
	sw $t1, -43336($fp)
	lw $t0, -43336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1228
	sw $t0, -43340($fp)
	li $t0, 5
	sw $t0, -43344($fp)
	li $t0, 4
	lw $t1, -43344($fp)
	mul $t0, $t0, $t1
	sw $t0, -43348($fp)
	lw $t0, -43348($fp)
	lw $t1, -43340($fp)
	add $t0, $t0, $t1
	sw $t0, -43352($fp)
	lw $t0, -43352($fp)
	lw $t1, 0($t0)
	sw $t1, -43356($fp)
	lw $t0, -43356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1228
	sw $t0, -43360($fp)
	li $t0, 6
	sw $t0, -43364($fp)
	li $t0, 4
	lw $t1, -43364($fp)
	mul $t0, $t0, $t1
	sw $t0, -43368($fp)
	lw $t0, -43368($fp)
	lw $t1, -43360($fp)
	add $t0, $t0, $t1
	sw $t0, -43372($fp)
	lw $t0, -43372($fp)
	lw $t1, 0($t0)
	sw $t1, -43376($fp)
	lw $t0, -43376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1228
	sw $t0, -43380($fp)
	li $t0, 7
	sw $t0, -43384($fp)
	li $t0, 4
	lw $t1, -43384($fp)
	mul $t0, $t0, $t1
	sw $t0, -43388($fp)
	lw $t0, -43388($fp)
	lw $t1, -43380($fp)
	add $t0, $t0, $t1
	sw $t0, -43392($fp)
	lw $t0, -43392($fp)
	lw $t1, 0($t0)
	sw $t1, -43396($fp)
	lw $t0, -43396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1228
	sw $t0, -43400($fp)
	li $t0, 8
	sw $t0, -43404($fp)
	li $t0, 4
	lw $t1, -43404($fp)
	mul $t0, $t0, $t1
	sw $t0, -43408($fp)
	lw $t0, -43408($fp)
	lw $t1, -43400($fp)
	add $t0, $t0, $t1
	sw $t0, -43412($fp)
	lw $t0, -43412($fp)
	lw $t1, 0($t0)
	sw $t1, -43416($fp)
	lw $t0, -43416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1228
	sw $t0, -43420($fp)
	li $t0, 9
	sw $t0, -43424($fp)
	li $t0, 4
	lw $t1, -43424($fp)
	mul $t0, $t0, $t1
	sw $t0, -43428($fp)
	lw $t0, -43428($fp)
	lw $t1, -43420($fp)
	add $t0, $t0, $t1
	sw $t0, -43432($fp)
	lw $t0, -43432($fp)
	lw $t1, 0($t0)
	sw $t1, -43436($fp)
	lw $t0, -43436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11808($fp)
	sw $t0, -43440($fp)
	lw $t0, -43440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11820($fp)
	sw $t0, -43444($fp)
	lw $t0, -43444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11832($fp)
	sw $t0, -43448($fp)
	lw $t0, -43448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11844($fp)
	sw $t0, -43452($fp)
	lw $t0, -43452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11856($fp)
	sw $t0, -43456($fp)
	lw $t0, -43456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11868($fp)
	sw $t0, -43460($fp)
	lw $t0, -43460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11880($fp)
	sw $t0, -43464($fp)
	lw $t0, -43464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1236
	sw $t0, -43468($fp)
	li $t0, 0
	sw $t0, -43472($fp)
	li $t0, 4
	lw $t1, -43472($fp)
	mul $t0, $t0, $t1
	sw $t0, -43476($fp)
	lw $t0, -43476($fp)
	lw $t1, -43468($fp)
	add $t0, $t0, $t1
	sw $t0, -43480($fp)
	lw $t0, -43480($fp)
	lw $t1, 0($t0)
	sw $t1, -43484($fp)
	lw $t0, -43484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1236
	sw $t0, -43488($fp)
	li $t0, 1
	sw $t0, -43492($fp)
	li $t0, 4
	lw $t1, -43492($fp)
	mul $t0, $t0, $t1
	sw $t0, -43496($fp)
	lw $t0, -43496($fp)
	lw $t1, -43488($fp)
	add $t0, $t0, $t1
	sw $t0, -43500($fp)
	lw $t0, -43500($fp)
	lw $t1, 0($t0)
	sw $t1, -43504($fp)
	lw $t0, -43504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11940($fp)
	sw $t0, -43508($fp)
	lw $t0, -43508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11952($fp)
	sw $t0, -43512($fp)
	lw $t0, -43512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11964($fp)
	sw $t0, -43516($fp)
	lw $t0, -43516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11976($fp)
	sw $t0, -43520($fp)
	lw $t0, -43520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11988($fp)
	sw $t0, -43524($fp)
	lw $t0, -43524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12000($fp)
	sw $t0, -43528($fp)
	lw $t0, -43528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12012($fp)
	sw $t0, -43532($fp)
	lw $t0, -43532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12024($fp)
	sw $t0, -43536($fp)
	lw $t0, -43536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12036($fp)
	sw $t0, -43540($fp)
	lw $t0, -43540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12048($fp)
	sw $t0, -43544($fp)
	lw $t0, -43544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12060($fp)
	sw $t0, -43548($fp)
	lw $t0, -43548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12072($fp)
	sw $t0, -43552($fp)
	lw $t0, -43552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1240
	sw $t0, -43556($fp)
	li $t0, 0
	sw $t0, -43560($fp)
	li $t0, 4
	lw $t1, -43560($fp)
	mul $t0, $t0, $t1
	sw $t0, -43564($fp)
	lw $t0, -43564($fp)
	lw $t1, -43556($fp)
	add $t0, $t0, $t1
	sw $t0, -43568($fp)
	lw $t0, -43568($fp)
	lw $t1, 0($t0)
	sw $t1, -43572($fp)
	lw $t0, -43572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12108($fp)
	sw $t0, -43576($fp)
	lw $t0, -43576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12120($fp)
	sw $t0, -43580($fp)
	lw $t0, -43580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12132($fp)
	sw $t0, -43584($fp)
	lw $t0, -43584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12144($fp)
	sw $t0, -43588($fp)
	lw $t0, -43588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12156($fp)
	sw $t0, -43592($fp)
	lw $t0, -43592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12168($fp)
	sw $t0, -43596($fp)
	lw $t0, -43596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12180($fp)
	sw $t0, -43600($fp)
	lw $t0, -43600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12192($fp)
	sw $t0, -43604($fp)
	lw $t0, -43604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12204($fp)
	sw $t0, -43608($fp)
	lw $t0, -43608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12216($fp)
	sw $t0, -43612($fp)
	lw $t0, -43612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12228($fp)
	sw $t0, -43616($fp)
	lw $t0, -43616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12240($fp)
	sw $t0, -43620($fp)
	lw $t0, -43620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12252($fp)
	sw $t0, -43624($fp)
	lw $t0, -43624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12264($fp)
	sw $t0, -43628($fp)
	lw $t0, -43628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12276($fp)
	sw $t0, -43632($fp)
	lw $t0, -43632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12288($fp)
	sw $t0, -43636($fp)
	lw $t0, -43636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12300($fp)
	sw $t0, -43640($fp)
	lw $t0, -43640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1264
	sw $t0, -43644($fp)
	li $t0, 0
	sw $t0, -43648($fp)
	li $t0, 4
	lw $t1, -43648($fp)
	mul $t0, $t0, $t1
	sw $t0, -43652($fp)
	lw $t0, -43652($fp)
	lw $t1, -43644($fp)
	add $t0, $t0, $t1
	sw $t0, -43656($fp)
	lw $t0, -43656($fp)
	lw $t1, 0($t0)
	sw $t1, -43660($fp)
	lw $t0, -43660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1264
	sw $t0, -43664($fp)
	li $t0, 1
	sw $t0, -43668($fp)
	li $t0, 4
	lw $t1, -43668($fp)
	mul $t0, $t0, $t1
	sw $t0, -43672($fp)
	lw $t0, -43672($fp)
	lw $t1, -43664($fp)
	add $t0, $t0, $t1
	sw $t0, -43676($fp)
	lw $t0, -43676($fp)
	lw $t1, 0($t0)
	sw $t1, -43680($fp)
	lw $t0, -43680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1264
	sw $t0, -43684($fp)
	li $t0, 2
	sw $t0, -43688($fp)
	li $t0, 4
	lw $t1, -43688($fp)
	mul $t0, $t0, $t1
	sw $t0, -43692($fp)
	lw $t0, -43692($fp)
	lw $t1, -43684($fp)
	add $t0, $t0, $t1
	sw $t0, -43696($fp)
	lw $t0, -43696($fp)
	lw $t1, 0($t0)
	sw $t1, -43700($fp)
	lw $t0, -43700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1264
	sw $t0, -43704($fp)
	li $t0, 3
	sw $t0, -43708($fp)
	li $t0, 4
	lw $t1, -43708($fp)
	mul $t0, $t0, $t1
	sw $t0, -43712($fp)
	lw $t0, -43712($fp)
	lw $t1, -43704($fp)
	add $t0, $t0, $t1
	sw $t0, -43716($fp)
	lw $t0, -43716($fp)
	lw $t1, 0($t0)
	sw $t1, -43720($fp)
	lw $t0, -43720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1264
	sw $t0, -43724($fp)
	li $t0, 4
	sw $t0, -43728($fp)
	li $t0, 4
	lw $t1, -43728($fp)
	mul $t0, $t0, $t1
	sw $t0, -43732($fp)
	lw $t0, -43732($fp)
	lw $t1, -43724($fp)
	add $t0, $t0, $t1
	sw $t0, -43736($fp)
	lw $t0, -43736($fp)
	lw $t1, 0($t0)
	sw $t1, -43740($fp)
	lw $t0, -43740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1264
	sw $t0, -43744($fp)
	li $t0, 5
	sw $t0, -43748($fp)
	li $t0, 4
	lw $t1, -43748($fp)
	mul $t0, $t0, $t1
	sw $t0, -43752($fp)
	lw $t0, -43752($fp)
	lw $t1, -43744($fp)
	add $t0, $t0, $t1
	sw $t0, -43756($fp)
	lw $t0, -43756($fp)
	lw $t1, 0($t0)
	sw $t1, -43760($fp)
	lw $t0, -43760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12456($fp)
	sw $t0, -43764($fp)
	lw $t0, -43764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1288
	sw $t0, -43768($fp)
	li $t0, 0
	sw $t0, -43772($fp)
	li $t0, 4
	lw $t1, -43772($fp)
	mul $t0, $t0, $t1
	sw $t0, -43776($fp)
	lw $t0, -43776($fp)
	lw $t1, -43768($fp)
	add $t0, $t0, $t1
	sw $t0, -43780($fp)
	lw $t0, -43780($fp)
	lw $t1, 0($t0)
	sw $t1, -43784($fp)
	lw $t0, -43784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1288
	sw $t0, -43788($fp)
	li $t0, 1
	sw $t0, -43792($fp)
	li $t0, 4
	lw $t1, -43792($fp)
	mul $t0, $t0, $t1
	sw $t0, -43796($fp)
	lw $t0, -43796($fp)
	lw $t1, -43788($fp)
	add $t0, $t0, $t1
	sw $t0, -43800($fp)
	lw $t0, -43800($fp)
	lw $t1, 0($t0)
	sw $t1, -43804($fp)
	lw $t0, -43804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1288
	sw $t0, -43808($fp)
	li $t0, 2
	sw $t0, -43812($fp)
	li $t0, 4
	lw $t1, -43812($fp)
	mul $t0, $t0, $t1
	sw $t0, -43816($fp)
	lw $t0, -43816($fp)
	lw $t1, -43808($fp)
	add $t0, $t0, $t1
	sw $t0, -43820($fp)
	lw $t0, -43820($fp)
	lw $t1, 0($t0)
	sw $t1, -43824($fp)
	lw $t0, -43824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1288
	sw $t0, -43828($fp)
	li $t0, 3
	sw $t0, -43832($fp)
	li $t0, 4
	lw $t1, -43832($fp)
	mul $t0, $t0, $t1
	sw $t0, -43836($fp)
	lw $t0, -43836($fp)
	lw $t1, -43828($fp)
	add $t0, $t0, $t1
	sw $t0, -43840($fp)
	lw $t0, -43840($fp)
	lw $t1, 0($t0)
	sw $t1, -43844($fp)
	lw $t0, -43844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1288
	sw $t0, -43848($fp)
	li $t0, 4
	sw $t0, -43852($fp)
	li $t0, 4
	lw $t1, -43852($fp)
	mul $t0, $t0, $t1
	sw $t0, -43856($fp)
	lw $t0, -43856($fp)
	lw $t1, -43848($fp)
	add $t0, $t0, $t1
	sw $t0, -43860($fp)
	lw $t0, -43860($fp)
	lw $t1, 0($t0)
	sw $t1, -43864($fp)
	lw $t0, -43864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1288
	sw $t0, -43868($fp)
	li $t0, 5
	sw $t0, -43872($fp)
	li $t0, 4
	lw $t1, -43872($fp)
	mul $t0, $t0, $t1
	sw $t0, -43876($fp)
	lw $t0, -43876($fp)
	lw $t1, -43868($fp)
	add $t0, $t0, $t1
	sw $t0, -43880($fp)
	lw $t0, -43880($fp)
	lw $t1, 0($t0)
	sw $t1, -43884($fp)
	lw $t0, -43884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12612($fp)
	sw $t0, -43888($fp)
	lw $t0, -43888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12624($fp)
	sw $t0, -43892($fp)
	lw $t0, -43892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12636($fp)
	sw $t0, -43896($fp)
	lw $t0, -43896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12648($fp)
	sw $t0, -43900($fp)
	lw $t0, -43900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12660($fp)
	sw $t0, -43904($fp)
	lw $t0, -43904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12672($fp)
	sw $t0, -43908($fp)
	lw $t0, -43908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1296
	sw $t0, -43912($fp)
	li $t0, 0
	sw $t0, -43916($fp)
	li $t0, 4
	lw $t1, -43916($fp)
	mul $t0, $t0, $t1
	sw $t0, -43920($fp)
	lw $t0, -43920($fp)
	lw $t1, -43912($fp)
	add $t0, $t0, $t1
	sw $t0, -43924($fp)
	lw $t0, -43924($fp)
	lw $t1, 0($t0)
	sw $t1, -43928($fp)
	lw $t0, -43928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1296
	sw $t0, -43932($fp)
	li $t0, 1
	sw $t0, -43936($fp)
	li $t0, 4
	lw $t1, -43936($fp)
	mul $t0, $t0, $t1
	sw $t0, -43940($fp)
	lw $t0, -43940($fp)
	lw $t1, -43932($fp)
	add $t0, $t0, $t1
	sw $t0, -43944($fp)
	lw $t0, -43944($fp)
	lw $t1, 0($t0)
	sw $t1, -43948($fp)
	lw $t0, -43948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12732($fp)
	sw $t0, -43952($fp)
	lw $t0, -43952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12744($fp)
	sw $t0, -43956($fp)
	lw $t0, -43956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12756($fp)
	sw $t0, -43960($fp)
	lw $t0, -43960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12768($fp)
	sw $t0, -43964($fp)
	lw $t0, -43964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12780($fp)
	sw $t0, -43968($fp)
	lw $t0, -43968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12792($fp)
	sw $t0, -43972($fp)
	lw $t0, -43972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1316
	sw $t0, -43976($fp)
	li $t0, 0
	sw $t0, -43980($fp)
	li $t0, 4
	lw $t1, -43980($fp)
	mul $t0, $t0, $t1
	sw $t0, -43984($fp)
	lw $t0, -43984($fp)
	lw $t1, -43976($fp)
	add $t0, $t0, $t1
	sw $t0, -43988($fp)
	lw $t0, -43988($fp)
	lw $t1, 0($t0)
	sw $t1, -43992($fp)
	lw $t0, -43992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1316
	sw $t0, -43996($fp)
	li $t0, 1
	sw $t0, -44000($fp)
	li $t0, 4
	lw $t1, -44000($fp)
	mul $t0, $t0, $t1
	sw $t0, -44004($fp)
	lw $t0, -44004($fp)
	lw $t1, -43996($fp)
	add $t0, $t0, $t1
	sw $t0, -44008($fp)
	lw $t0, -44008($fp)
	lw $t1, 0($t0)
	sw $t1, -44012($fp)
	lw $t0, -44012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1316
	sw $t0, -44016($fp)
	li $t0, 2
	sw $t0, -44020($fp)
	li $t0, 4
	lw $t1, -44020($fp)
	mul $t0, $t0, $t1
	sw $t0, -44024($fp)
	lw $t0, -44024($fp)
	lw $t1, -44016($fp)
	add $t0, $t0, $t1
	sw $t0, -44028($fp)
	lw $t0, -44028($fp)
	lw $t1, 0($t0)
	sw $t1, -44032($fp)
	lw $t0, -44032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1316
	sw $t0, -44036($fp)
	li $t0, 3
	sw $t0, -44040($fp)
	li $t0, 4
	lw $t1, -44040($fp)
	mul $t0, $t0, $t1
	sw $t0, -44044($fp)
	lw $t0, -44044($fp)
	lw $t1, -44036($fp)
	add $t0, $t0, $t1
	sw $t0, -44048($fp)
	lw $t0, -44048($fp)
	lw $t1, 0($t0)
	sw $t1, -44052($fp)
	lw $t0, -44052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1316
	sw $t0, -44056($fp)
	li $t0, 4
	sw $t0, -44060($fp)
	li $t0, 4
	lw $t1, -44060($fp)
	mul $t0, $t0, $t1
	sw $t0, -44064($fp)
	lw $t0, -44064($fp)
	lw $t1, -44056($fp)
	add $t0, $t0, $t1
	sw $t0, -44068($fp)
	lw $t0, -44068($fp)
	lw $t1, 0($t0)
	sw $t1, -44072($fp)
	lw $t0, -44072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1324
	sw $t0, -44076($fp)
	li $t0, 0
	sw $t0, -44080($fp)
	li $t0, 4
	lw $t1, -44080($fp)
	mul $t0, $t0, $t1
	sw $t0, -44084($fp)
	lw $t0, -44084($fp)
	lw $t1, -44076($fp)
	add $t0, $t0, $t1
	sw $t0, -44088($fp)
	lw $t0, -44088($fp)
	lw $t1, 0($t0)
	sw $t1, -44092($fp)
	lw $t0, -44092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1324
	sw $t0, -44096($fp)
	li $t0, 1
	sw $t0, -44100($fp)
	li $t0, 4
	lw $t1, -44100($fp)
	mul $t0, $t0, $t1
	sw $t0, -44104($fp)
	lw $t0, -44104($fp)
	lw $t1, -44096($fp)
	add $t0, $t0, $t1
	sw $t0, -44108($fp)
	lw $t0, -44108($fp)
	lw $t1, 0($t0)
	sw $t1, -44112($fp)
	lw $t0, -44112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12972($fp)
	sw $t0, -44116($fp)
	lw $t0, -44116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12984($fp)
	sw $t0, -44120($fp)
	lw $t0, -44120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12996($fp)
	sw $t0, -44124($fp)
	lw $t0, -44124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -13008($fp)
	sw $t0, -44128($fp)
	lw $t0, -44128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -13020($fp)
	sw $t0, -44132($fp)
	lw $t0, -44132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -13032($fp)
	sw $t0, -44136($fp)
	lw $t0, -44136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -13044($fp)
	sw $t0, -44140($fp)
	lw $t0, -44140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -13056($fp)
	sw $t0, -44144($fp)
	lw $t0, -44144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -13068($fp)
	sw $t0, -44148($fp)
	lw $t0, -44148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1336
	sw $t0, -44152($fp)
	li $t0, 0
	sw $t0, -44156($fp)
	li $t0, 4
	lw $t1, -44156($fp)
	mul $t0, $t0, $t1
	sw $t0, -44160($fp)
	lw $t0, -44160($fp)
	lw $t1, -44152($fp)
	add $t0, $t0, $t1
	sw $t0, -44164($fp)
	lw $t0, -44164($fp)
	lw $t1, 0($t0)
	sw $t1, -44168($fp)
	lw $t0, -44168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1336
	sw $t0, -44172($fp)
	li $t0, 1
	sw $t0, -44176($fp)
	li $t0, 4
	lw $t1, -44176($fp)
	mul $t0, $t0, $t1
	sw $t0, -44180($fp)
	lw $t0, -44180($fp)
	lw $t1, -44172($fp)
	add $t0, $t0, $t1
	sw $t0, -44184($fp)
	lw $t0, -44184($fp)
	lw $t1, 0($t0)
	sw $t1, -44188($fp)
	lw $t0, -44188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1336
	sw $t0, -44192($fp)
	li $t0, 2
	sw $t0, -44196($fp)
	li $t0, 4
	lw $t1, -44196($fp)
	mul $t0, $t0, $t1
	sw $t0, -44200($fp)
	lw $t0, -44200($fp)
	lw $t1, -44192($fp)
	add $t0, $t0, $t1
	sw $t0, -44204($fp)
	lw $t0, -44204($fp)
	lw $t1, 0($t0)
	sw $t1, -44208($fp)
	lw $t0, -44208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -13152($fp)
	sw $t0, -44212($fp)
	lw $t0, -44212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -13164($fp)
	sw $t0, -44216($fp)
	lw $t0, -44216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -13176($fp)
	sw $t0, -44220($fp)
	lw $t0, -44220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -13188($fp)
	sw $t0, -44224($fp)
	lw $t0, -44224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -13200($fp)
	sw $t0, -44228($fp)
	lw $t0, -44228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -13212($fp)
	sw $t0, -44232($fp)
	lw $t0, -44232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -13224($fp)
	sw $t0, -44236($fp)
	lw $t0, -44236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -44240($fp)
	lw $t0, -7116($fp)
	sw $t0, -44244($fp)
	lw $t1, -44244($fp)
	li $t2, 0
	bne $t1, $t2, label2023
	j label2022
label2022:
	li $t0, 1
	sw $t0, -44240($fp)
label2023:
	lw $t0, -44240($fp)
	sw $t0, -13224($fp)
	lw $t0, -13224($fp)
	sw $t0, -44248($fp)
	lw $ra, -4($fp)
	lw $v0, -44248($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2744
	li $t0, 26499
	sw $t0, -76($fp)
	addi $t0, $fp, -8
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
	li $t0, 33078
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	li $t0, 11678
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	li $t0, 34469
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	li $t0, 35310
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -144($fp)
	li $t0, 22719
	sw $t0, -148($fp)
	addi $t0, $fp, -24
	sw $t0, -152($fp)
	li $t0, 0
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
	li $t0, 17192
	sw $t0, -172($fp)
	addi $t0, $fp, -24
	sw $t0, -176($fp)
	li $t0, 1
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
	li $t0, 12233
	sw $t0, -196($fp)
	addi $t0, $fp, -24
	sw $t0, -200($fp)
	li $t0, 2
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
	li $t0, 44980
	sw $t0, -220($fp)
	addi $t0, $fp, -24
	sw $t0, -224($fp)
	li $t0, 3
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
	li $t0, 23622
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	li $t0, 32991
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	li $t0, 22641
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	li $t0, 19663
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	li $t0, 36744
	sw $t0, -292($fp)
	addi $t0, $fp, -40
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
	li $t0, 27168
	sw $t0, -316($fp)
	addi $t0, $fp, -40
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
	li $t0, 2641
	sw $t0, -340($fp)
	addi $t0, $fp, -40
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
	li $t0, 20169
	sw $t0, -364($fp)
	addi $t0, $fp, -40
	sw $t0, -368($fp)
	li $t0, 3
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
	li $t0, 10403
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	li $t0, 46703
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	li $t0, 51396
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	li $t0, 16754
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	li $t0, 48525
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	li $t0, 59076
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	li $t0, 53543
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	li $t0, 52615
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	li $t0, 59758
	sw $t0, -484($fp)
	addi $t0, $fp, -56
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
	li $t0, 48730
	sw $t0, -508($fp)
	addi $t0, $fp, -56
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
	li $t0, 24382
	sw $t0, -532($fp)
	addi $t0, $fp, -56
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
	li $t0, 44509
	sw $t0, -556($fp)
	addi $t0, $fp, -56
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
	li $t0, 1349
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	li $t0, 49127
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	li $t0, 5472
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	li $t0, 34428
	sw $t0, -616($fp)
	addi $t0, $fp, -60
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
	li $t0, 60806
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	li $t0, 39941
	sw $t0, -652($fp)
	addi $t0, $fp, -72
	sw $t0, -656($fp)
	li $t0, 0
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
	li $t0, 4202
	sw $t0, -676($fp)
	addi $t0, $fp, -72
	sw $t0, -680($fp)
	li $t0, 1
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
	li $t0, 17989
	sw $t0, -700($fp)
	addi $t0, $fp, -72
	sw $t0, -704($fp)
	li $t0, 2
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
	li $t0, 57133
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	sw $t0, -732($fp)
	li $t0, 16435
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	sw $t0, -744($fp)
	li $t0, 62969
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	sw $t0, -756($fp)
	li $t0, 15219
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -768($fp)
	li $t0, 49427
	sw $t0, -772($fp)
	lw $t1, -772($fp)
	li $t2, 0
	bne $t1, $t2, label2024
	j label2025
label2024:
	lw $t0, 8($fp)
	sw $t0, -776($fp)
	lw $t1, -776($fp)
	li $t2, 0
	bne $t1, $t2, label2030
	j label2028
label2030:
	li $t0, 20074
	sw $t0, -780($fp)
	lw $t0, -116($fp)
	sw $t0, -784($fp)
	lw $t0, -780($fp)
	lw $t1, -784($fp)
	add $t0, $t0, $t1
	sw $t0, -788($fp)
	addi $t0, $fp, -8
	sw $t0, -792($fp)
	lw $t0, -272($fp)
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
	lw $t0, -788($fp)
	lw $t1, -808($fp)
	sub $t0, $t0, $t1
	sw $t0, -812($fp)
	lw $t1, -812($fp)
	li $t2, 0
	bne $t1, $t2, label2027
	j label2028
label2027:
label2031:
	addi $t0, $fp, -56
	sw $t0, -816($fp)
	lw $t0, -128($fp)
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
	lw $t0, -584($fp)
	sw $t0, -836($fp)
	lw $t0, -464($fp)
	sw $t0, -840($fp)
	lw $t0, -836($fp)
	lw $t1, -840($fp)
	add $t0, $t0, $t1
	sw $t0, -844($fp)
	addi $sp, $sp, -4
	lw $t0, -832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -844($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -848($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -852($fp)
	li $t0, 37523
	sw $t0, -856($fp)
	lw $t1, -856($fp)
	li $t2, 0
	bne $t1, $t2, label2034
	j label2035
label2034:
	li $t0, 1
	sw $t0, -852($fp)
label2035:
	li $t0, 0
	sw $t0, -860($fp)
	lw $t0, -740($fp)
	sw $t0, -864($fp)
	li $t0, 47243
	sw $t0, -868($fp)
	lw $t1, -864($fp)
	lw $t2, -868($fp)
	blt $t1, $t2, label2036
	j label2037
label2036:
	li $t0, 1
	sw $t0, -860($fp)
label2037:
	li $t0, 34882
	sw $t0, -872($fp)
	li $t0, 20635
	sw $t0, -876($fp)
	lw $t0, -872($fp)
	lw $t1, -876($fp)
	add $t0, $t0, $t1
	sw $t0, -880($fp)
	lw $t0, -740($fp)
	sw $t0, -884($fp)
	lw $t0, -880($fp)
	lw $t1, -884($fp)
	sub $t0, $t0, $t1
	sw $t0, -888($fp)
	lw $t0, -104($fp)
	sw $t0, -892($fp)
	addi $sp, $sp, -4
	lw $t0, -848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -892($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -896($fp)
	addi $sp, $sp, 24
	lw $t1, -896($fp)
	li $t2, 0
	bne $t1, $t2, label2032
	j label2033
label2032:
	li $t0, 0
	sw $t0, -900($fp)
	addi $t0, $fp, -8
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
	li $t0, 20205
	sw $t0, -924($fp)
	li $t0, 62407
	sw $t0, -928($fp)
	lw $t0, -924($fp)
	lw $t1, -928($fp)
	mul $t0, $t0, $t1
	sw $t0, -932($fp)
	li $t0, 0
	sw $t0, -936($fp)
	li $t0, 1680
	sw $t0, -940($fp)
	lw $t1, -940($fp)
	li $t2, 0
	bne $t1, $t2, label2044
	j label2043
label2043:
	li $t0, 1
	sw $t0, -936($fp)
label2044:
	li $t0, 0
	lw $t1, -936($fp)
	sub $t0, $t0, $t1
	sw $t0, -944($fp)
	li $t0, 0
	sw $t0, -948($fp)
	addi $t0, $fp, -40
	sw $t0, -952($fp)
	lw $t0, -644($fp)
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
	li $t0, 8864
	sw $t0, -972($fp)
	lw $t1, -968($fp)
	lw $t2, -972($fp)
	bne $t1, $t2, label2045
	j label2046
label2045:
	li $t0, 1
	sw $t0, -948($fp)
label2046:
	li $t0, 0
	sw $t0, -976($fp)
	li $t0, 26665
	sw $t0, -980($fp)
	li $t0, 0
	lw $t1, -980($fp)
	sub $t0, $t0, $t1
	sw $t0, -984($fp)
	lw $t1, -984($fp)
	li $t2, 0
	bne $t1, $t2, label2049
	j label2048
label2049:
	lw $t0, -596($fp)
	sw $t0, -988($fp)
	lw $t1, -988($fp)
	li $t2, 0
	bne $t1, $t2, label2047
	j label2048
label2047:
	li $t0, 1
	sw $t0, -976($fp)
label2048:
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
	addi $sp, $sp, -4
	lw $t0, -976($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -992($fp)
	addi $sp, $sp, 24
	lw $t0, -392($fp)
	sw $t0, -996($fp)
	lw $t1, -992($fp)
	lw $t2, -996($fp)
	blt $t1, $t2, label2041
	j label2042
label2041:
	li $t0, 1
	sw $t0, -900($fp)
label2042:
	li $t0, 18691
	sw $t0, -1000($fp)
	lw $t0, -116($fp)
	sw $t0, -1004($fp)
	li $t0, 0
	lw $t1, -1004($fp)
	sub $t0, $t0, $t1
	sw $t0, -1008($fp)
	li $t0, 0
	lw $t1, -1008($fp)
	sub $t0, $t0, $t1
	sw $t0, -1012($fp)
	li $t0, 0
	sw $t0, -1016($fp)
	addi $t0, $fp, -72
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
	lw $t1, -1036($fp)
	li $t2, 0
	bne $t1, $t2, label2050
	j label2052
label2052:
	lw $t0, -764($fp)
	sw $t0, -1040($fp)
	lw $t1, -1040($fp)
	li $t2, 0
	bne $t1, $t2, label2050
	j label2051
label2050:
	li $t0, 1
	sw $t0, -1016($fp)
label2051:
	lw $t0, -644($fp)
	sw $t0, -1044($fp)
	li $t0, 0
	lw $t1, -1044($fp)
	sub $t0, $t0, $t1
	sw $t0, -1048($fp)
	addi $sp, $sp, -4
	lw $t0, -900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1048($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1052($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -1052($fp)
	sub $t0, $t0, $t1
	sw $t0, -1056($fp)
	lw $t0, -260($fp)
	sw $t0, -1060($fp)
	lw $t0, -1056($fp)
	lw $t1, -1060($fp)
	sub $t0, $t0, $t1
	sw $t0, -1064($fp)
	lw $t1, -1064($fp)
	li $t2, 0
	bne $t1, $t2, label2038
	j label2039
label2038:
	li $t0, 45601
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, -1088($fp)
	li $t0, 13142
	sw $t0, -1092($fp)
	addi $t0, $fp, -1076
	sw $t0, -1096($fp)
	li $t0, 0
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1104($fp)
	lw $t0, -1096($fp)
	lw $t1, -1104($fp)
	add $t0, $t0, $t1
	sw $t0, -1108($fp)
	lw $t0, -1092($fp)
	lw $t1, -1108($fp)
	sw $t0, 0($t1)
	lw $t0, -1108($fp)
	lw $t1, 0($t0)
	sw $t1, -1112($fp)
	li $t0, 58936
	sw $t0, -1116($fp)
	addi $t0, $fp, -1076
	sw $t0, -1120($fp)
	li $t0, 1
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1128($fp)
	lw $t0, -1120($fp)
	lw $t1, -1128($fp)
	add $t0, $t0, $t1
	sw $t0, -1132($fp)
	lw $t0, -1116($fp)
	lw $t1, -1132($fp)
	sw $t0, 0($t1)
	lw $t0, -1132($fp)
	lw $t1, 0($t0)
	sw $t1, -1136($fp)
	li $t0, 46950
	sw $t0, -1140($fp)
	addi $t0, $fp, -1076
	sw $t0, -1144($fp)
	li $t0, 2
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1152($fp)
	lw $t0, -1144($fp)
	lw $t1, -1152($fp)
	add $t0, $t0, $t1
	sw $t0, -1156($fp)
	lw $t0, -1140($fp)
	lw $t1, -1156($fp)
	sw $t0, 0($t1)
	lw $t0, -1156($fp)
	lw $t1, 0($t0)
	sw $t1, -1160($fp)
	li $t0, 62269
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	sw $t0, -1172($fp)
	li $t0, 64408
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	sw $t0, -1184($fp)
	li $t0, 15842
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	sw $t0, -1196($fp)
	li $t0, 57539
	sw $t0, -1200($fp)
	li $t0, 38814
	sw $t0, -1204($fp)
	li $t0, 0
	sw $t0, -1208($fp)
	addi $t0, $fp, -40
	sw $t0, -1212($fp)
	lw $t0, -476($fp)
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
	li $t0, 0
	sw $t0, -1232($fp)
	lw $t0, -608($fp)
	sw $t0, -1236($fp)
	li $t0, 0
	lw $t1, -1236($fp)
	sub $t0, $t0, $t1
	sw $t0, -1240($fp)
	li $t0, 9208
	sw $t0, -1244($fp)
	lw $t0, -1192($fp)
	sw $t0, -1248($fp)
	lw $t0, -1244($fp)
	lw $t1, -1248($fp)
	add $t0, $t0, $t1
	sw $t0, -1252($fp)
	li $t0, 0
	sw $t0, -1256($fp)
	lw $t0, -440($fp)
	sw $t0, -1260($fp)
	li $t0, 41007
	sw $t0, -1264($fp)
	lw $t0, -1260($fp)
	lw $t1, -1264($fp)
	sub $t0, $t0, $t1
	sw $t0, -1268($fp)
	lw $t0, -644($fp)
	sw $t0, -1272($fp)
	lw $t1, -1268($fp)
	lw $t2, -1272($fp)
	beq $t1, $t2, label2057
	j label2058
label2057:
	li $t0, 1
	sw $t0, -1256($fp)
label2058:
	li $t0, 0
	sw $t0, -1276($fp)
	li $t0, 0
	sw $t0, -1280($fp)
	lw $t0, -728($fp)
	sw $t0, -1284($fp)
	li $t0, 14977
	sw $t0, -1288($fp)
	lw $t1, -1284($fp)
	lw $t2, -1288($fp)
	bge $t1, $t2, label2061
	j label2062
label2061:
	li $t0, 1
	sw $t0, -1280($fp)
label2062:
	lw $t0, -644($fp)
	sw $t0, -1292($fp)
	lw $t1, -1280($fp)
	lw $t2, -1292($fp)
	blt $t1, $t2, label2059
	j label2060
label2059:
	li $t0, 1
	sw $t0, -1276($fp)
label2060:
	li $t0, 0
	sw $t0, -1296($fp)
	li $t0, 20371
	sw $t0, -1300($fp)
	lw $t1, -1300($fp)
	li $t2, 0
	bne $t1, $t2, label2064
	j label2063
label2063:
	li $t0, 1
	sw $t0, -1296($fp)
label2064:
	li $t0, 27501
	sw $t0, -1304($fp)
	lw $t0, -1296($fp)
	lw $t1, -1304($fp)
	mul $t0, $t0, $t1
	sw $t0, -1308($fp)
	li $t0, 0
	sw $t0, -1312($fp)
	li $t0, 45631
	sw $t0, -1316($fp)
	lw $t0, -608($fp)
	sw $t0, -1320($fp)
	lw $t1, -1316($fp)
	lw $t2, -1320($fp)
	beq $t1, $t2, label2065
	j label2067
label2067:
	lw $t0, -584($fp)
	sw $t0, -1324($fp)
	lw $t1, -1324($fp)
	li $t2, 0
	bne $t1, $t2, label2065
	j label2066
label2065:
	li $t0, 1
	sw $t0, -1312($fp)
label2066:
	li $t0, 0
	sw $t0, -1328($fp)
	li $t0, 36480
	sw $t0, -1332($fp)
	lw $t0, -248($fp)
	sw $t0, -1336($fp)
	lw $t0, -1332($fp)
	lw $t1, -1336($fp)
	sub $t0, $t0, $t1
	sw $t0, -1340($fp)
	li $t0, 7426
	sw $t0, -1344($fp)
	lw $t1, -1340($fp)
	lw $t2, -1344($fp)
	beq $t1, $t2, label2068
	j label2069
label2068:
	li $t0, 1
	sw $t0, -1328($fp)
label2069:
	li $t0, 9993
	sw $t0, -1348($fp)
	lw $t0, -596($fp)
	sw $t0, -1352($fp)
	lw $t0, -1348($fp)
	lw $t1, -1352($fp)
	sub $t0, $t0, $t1
	sw $t0, -1356($fp)
	li $t0, 30411
	sw $t0, -1360($fp)
	lw $t0, -1356($fp)
	lw $t1, -1360($fp)
	add $t0, $t0, $t1
	sw $t0, -1364($fp)
	addi $sp, $sp, -4
	lw $t0, -1276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1364($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1368($fp)
	addi $sp, $sp, 24
	lw $t0, -416($fp)
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, -1376($fp)
	addi $sp, $sp, -4
	lw $t0, -1240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1376($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1380($fp)
	addi $sp, $sp, 24
	lw $t1, -1380($fp)
	li $t2, 0
	bne $t1, $t2, label2056
	j label2055
label2055:
	li $t0, 1
	sw $t0, -1232($fp)
label2056:
	addi $t0, $fp, -40
	sw $t0, -1384($fp)
	lw $t0, -272($fp)
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
	lw $t0, -272($fp)
	sw $t0, -1404($fp)
	lw $t0, -1400($fp)
	lw $t1, -1404($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1408($fp)
	li $t0, 20045
	sw $t0, -1412($fp)
	lw $t0, -740($fp)
	sw $t0, -1416($fp)
	lw $t0, -1412($fp)
	lw $t1, -1416($fp)
	mul $t0, $t0, $t1
	sw $t0, -1420($fp)
	lw $t0, -452($fp)
	sw $t0, -1424($fp)
	lw $t0, -1420($fp)
	lw $t1, -1424($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1428($fp)
	li $t0, 0
	sw $t0, -1432($fp)
	lw $t0, -740($fp)
	sw $t0, -1436($fp)
	li $t0, 0
	lw $t1, -1436($fp)
	sub $t0, $t0, $t1
	sw $t0, -1440($fp)
	lw $t1, -1440($fp)
	li $t2, 0
	bne $t1, $t2, label2071
	j label2070
label2070:
	li $t0, 1
	sw $t0, -1432($fp)
label2071:
	addi $sp, $sp, -4
	lw $t0, -1228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1432($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1444($fp)
	addi $sp, $sp, 24
	lw $t1, -1444($fp)
	li $t2, 0
	bne $t1, $t2, label2054
	j label2053
label2053:
	li $t0, 1
	sw $t0, -1208($fp)
label2054:
	lw $t0, -1204($fp)
	lw $t1, -1208($fp)
	mul $t0, $t0, $t1
	sw $t0, -1448($fp)
	addi $t0, $fp, -56
	sw $t0, -1452($fp)
	li $t0, 0
	sw $t0, -1456($fp)
	li $t0, 52501
	sw $t0, -1460($fp)
	lw $t1, -1460($fp)
	li $t2, 0
	bne $t1, $t2, label2074
	j label2073
label2074:
	li $t0, 16276
	sw $t0, -1464($fp)
	lw $t1, -1464($fp)
	li $t2, 0
	bne $t1, $t2, label2072
	j label2073
label2072:
	li $t0, 1
	sw $t0, -1456($fp)
label2073:
	li $t0, 4
	lw $t1, -1456($fp)
	mul $t0, $t0, $t1
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	lw $t1, -1452($fp)
	add $t0, $t0, $t1
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	lw $t1, 0($t0)
	sw $t1, -1476($fp)
	lw $t0, -1448($fp)
	lw $t1, -1476($fp)
	mul $t0, $t0, $t1
	sw $t0, -1480($fp)
	li $t0, 0
	sw $t0, -1484($fp)
	addi $t0, $fp, -1076
	sw $t0, -1488($fp)
	addi $t0, $fp, -24
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
	li $t0, 42941
	sw $t0, -1512($fp)
	lw $t0, -1508($fp)
	lw $t1, -1512($fp)
	sub $t0, $t0, $t1
	sw $t0, -1516($fp)
	li $t0, 4
	lw $t1, -1516($fp)
	mul $t0, $t0, $t1
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	lw $t1, -1488($fp)
	add $t0, $t0, $t1
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	lw $t1, 0($t0)
	sw $t1, -1528($fp)
	addi $t0, $fp, -56
	sw $t0, -1532($fp)
	addi $t0, $fp, -24
	sw $t0, -1536($fp)
	lw $t0, -116($fp)
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
	li $t0, 4
	lw $t1, -1552($fp)
	mul $t0, $t0, $t1
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	lw $t1, -1532($fp)
	add $t0, $t0, $t1
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	lw $t1, 0($t0)
	sw $t1, -1564($fp)
	lw $t1, -1528($fp)
	lw $t2, -1564($fp)
	bne $t1, $t2, label2075
	j label2076
label2075:
	li $t0, 1
	sw $t0, -1484($fp)
label2076:
	addi $t0, $fp, -8
	sw $t0, -1568($fp)
	li $t0, 0
	sw $t0, -1572($fp)
	lw $t0, -140($fp)
	sw $t0, -1576($fp)
	li $t0, 0
	lw $t1, -1576($fp)
	sub $t0, $t0, $t1
	sw $t0, -1580($fp)
	li $t0, 0
	lw $t1, -1580($fp)
	sub $t0, $t0, $t1
	sw $t0, -1584($fp)
	li $t0, 0
	sw $t0, -1588($fp)
	lw $t0, -1192($fp)
	sw $t0, -1592($fp)
	lw $t1, -1592($fp)
	li $t2, 0
	bne $t1, $t2, label2081
	j label2080
label2081:
	lw $t0, -608($fp)
	sw $t0, -1596($fp)
	lw $t1, -1596($fp)
	li $t2, 0
	bne $t1, $t2, label2079
	j label2080
label2079:
	li $t0, 1
	sw $t0, -1588($fp)
label2080:
	li $t0, 0
	sw $t0, -1600($fp)
	lw $t0, -752($fp)
	sw $t0, -1604($fp)
	li $t0, 52654
	sw $t0, -1608($fp)
	lw $t0, -1604($fp)
	lw $t1, -1608($fp)
	mul $t0, $t0, $t1
	sw $t0, -1612($fp)
	lw $t1, -1612($fp)
	li $t2, 0
	bne $t1, $t2, label2084
	j label2083
label2084:
	li $t0, 9238
	sw $t0, -1616($fp)
	lw $t1, -1616($fp)
	li $t2, 0
	bne $t1, $t2, label2082
	j label2083
label2082:
	li $t0, 1
	sw $t0, -1600($fp)
label2083:
	li $t0, 12038
	sw $t0, -1620($fp)
	lw $t0, -260($fp)
	sw $t0, -1624($fp)
	lw $t0, -1624($fp)
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -1628($fp)
	lw $t0, -248($fp)
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -1636($fp)
	addi $t0, $fp, -40
	sw $t0, -1640($fp)
	lw $t0, -392($fp)
	sw $t0, -1644($fp)
	li $t0, 4
	lw $t1, -1644($fp)
	mul $t0, $t0, $t1
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	lw $t1, -1640($fp)
	add $t0, $t0, $t1
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	lw $t1, 0($t0)
	sw $t1, -1656($fp)
	lw $t0, -1192($fp)
	sw $t0, -1660($fp)
	li $t0, 7053
	sw $t0, -1664($fp)
	lw $t0, -1660($fp)
	lw $t1, -1664($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1668($fp)
	lw $t0, -1180($fp)
	sw $t0, -1672($fp)
	lw $t0, -1668($fp)
	lw $t1, -1672($fp)
	mul $t0, $t0, $t1
	sw $t0, -1676($fp)
	li $t0, 0
	sw $t0, -1680($fp)
	li $t0, 63147
	sw $t0, -1684($fp)
	lw $t0, -428($fp)
	sw $t0, -1688($fp)
	lw $t0, -1684($fp)
	lw $t1, -1688($fp)
	sub $t0, $t0, $t1
	sw $t0, -1692($fp)
	lw $t1, -1692($fp)
	li $t2, 0
	bne $t1, $t2, label2087
	j label2086
label2087:
	lw $t0, -272($fp)
	sw $t0, -1696($fp)
	lw $t1, -1696($fp)
	li $t2, 0
	bne $t1, $t2, label2085
	j label2086
label2085:
	li $t0, 1
	sw $t0, -1680($fp)
label2086:
	addi $sp, $sp, -4
	lw $t0, -1676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1680($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1700($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -1704($fp)
	lw $t0, -272($fp)
	sw $t0, -1708($fp)
	lw $t0, -1168($fp)
	sw $t0, -1712($fp)
	lw $t0, -1708($fp)
	lw $t1, -1712($fp)
	mul $t0, $t0, $t1
	sw $t0, -1716($fp)
	li $t0, 7336
	sw $t0, -1720($fp)
	lw $t1, -1716($fp)
	lw $t2, -1720($fp)
	bgt $t1, $t2, label2088
	j label2089
label2088:
	li $t0, 1
	sw $t0, -1704($fp)
label2089:
	addi $sp, $sp, -4
	lw $t0, -1628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1704($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1724($fp)
	addi $sp, $sp, 24
	li $t0, 61632
	sw $t0, -1728($fp)
	lw $t0, -1724($fp)
	lw $t1, -1728($fp)
	mul $t0, $t0, $t1
	sw $t0, -1732($fp)
	li $t0, 0
	sw $t0, -1736($fp)
	lw $t0, -644($fp)
	sw $t0, -1740($fp)
	lw $t0, -248($fp)
	sw $t0, -1744($fp)
	lw $t0, -1740($fp)
	lw $t1, -1744($fp)
	add $t0, $t0, $t1
	sw $t0, -1748($fp)
	lw $t1, -1748($fp)
	li $t2, 0
	bne $t1, $t2, label2090
	j label2092
label2092:
	li $t0, 10182
	sw $t0, -1752($fp)
	lw $t1, -1752($fp)
	li $t2, 0
	bne $t1, $t2, label2090
	j label2091
label2090:
	li $t0, 1
	sw $t0, -1736($fp)
label2091:
	addi $sp, $sp, -4
	lw $t0, -1588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1736($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1756($fp)
	addi $sp, $sp, 24
	lw $t1, -1584($fp)
	lw $t2, -1756($fp)
	ble $t1, $t2, label2077
	j label2078
label2077:
	li $t0, 1
	sw $t0, -1572($fp)
label2078:
	li $t0, 4
	lw $t1, -1572($fp)
	mul $t0, $t0, $t1
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	lw $t1, -1568($fp)
	add $t0, $t0, $t1
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	lw $t1, 0($t0)
	sw $t1, -1768($fp)
	j label2040
label2039:
	li $t0, 0
	sw $t0, -1772($fp)
	li $t0, 0
	sw $t0, -1776($fp)
	lw $t0, 4($fp)
	sw $t0, -1780($fp)
	lw $t0, -440($fp)
	sw $t0, -1784($fp)
	lw $t0, -1780($fp)
	lw $t1, -1784($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1788($fp)
	lw $t0, -464($fp)
	sw $t0, -1792($fp)
	lw $t1, -1788($fp)
	lw $t2, -1792($fp)
	bne $t1, $t2, label2095
	j label2096
label2095:
	li $t0, 1
	sw $t0, -1776($fp)
label2096:
	lw $t0, -392($fp)
	sw $t0, -1796($fp)
	li $t0, 5971
	sw $t0, -1800($fp)
	lw $t0, -1796($fp)
	lw $t1, -1800($fp)
	mul $t0, $t0, $t1
	sw $t0, -1804($fp)
	lw $t0, -116($fp)
	sw $t0, -1808($fp)
	lw $t0, -1804($fp)
	lw $t1, -1808($fp)
	add $t0, $t0, $t1
	sw $t0, -1812($fp)
	li $t0, 0
	sw $t0, -1816($fp)
	li $t0, 0
	sw $t0, -1820($fp)
	lw $t0, -104($fp)
	sw $t0, -1824($fp)
	li $t0, 5439
	sw $t0, -1828($fp)
	lw $t1, -1824($fp)
	lw $t2, -1828($fp)
	blt $t1, $t2, label2099
	j label2100
label2099:
	li $t0, 1
	sw $t0, -1820($fp)
label2100:
	li $t0, 34068
	sw $t0, -1832($fp)
	lw $t1, -1820($fp)
	lw $t2, -1832($fp)
	bne $t1, $t2, label2097
	j label2098
label2097:
	li $t0, 1
	sw $t0, -1816($fp)
label2098:
	lw $t0, -740($fp)
	sw $t0, -1836($fp)
	addi $t0, $fp, -56
	sw $t0, -1840($fp)
	lw $t0, -428($fp)
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
	addi $sp, $sp, -4
	lw $t0, -1776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1856($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1860($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -24
	sw $t0, -1864($fp)
	li $t0, 3
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
	lw $t0, -1860($fp)
	lw $t1, -1880($fp)
	sub $t0, $t0, $t1
	sw $t0, -1884($fp)
	li $t0, 0
	sw $t0, -1888($fp)
	lw $t0, -272($fp)
	sw $t0, -1892($fp)
	lw $t0, -404($fp)
	sw $t0, -1896($fp)
	lw $t0, -1892($fp)
	lw $t1, -1896($fp)
	mul $t0, $t0, $t1
	sw $t0, -1900($fp)
	li $t0, 63511
	sw $t0, -1904($fp)
	lw $t1, -1900($fp)
	lw $t2, -1904($fp)
	blt $t1, $t2, label2101
	j label2102
label2101:
	li $t0, 1
	sw $t0, -1888($fp)
label2102:
	lw $t0, -248($fp)
	sw $t0, -1908($fp)
	addi $sp, $sp, -4
	lw $t0, -1888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1908($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1912($fp)
	addi $sp, $sp, 12
	lw $t1, -1884($fp)
	lw $t2, -1912($fp)
	bgt $t1, $t2, label2093
	j label2094
label2093:
	li $t0, 1
	sw $t0, -1772($fp)
label2094:
label2040:
	j label2031
label2033:
	j label2029
label2028:
label2103:
	li $t0, 0
	sw $t0, -1916($fp)
	lw $t0, -140($fp)
	sw $t0, -1920($fp)
	lw $t1, -1920($fp)
	li $t2, 0
	bne $t1, $t2, label2106
	j label2109
label2109:
	li $t0, 8001
	sw $t0, -1924($fp)
	lw $t1, -1924($fp)
	li $t2, 0
	bne $t1, $t2, label2106
	j label2108
label2108:
	lw $t0, -644($fp)
	sw $t0, -1928($fp)
	lw $t1, -1928($fp)
	li $t2, 0
	bne $t1, $t2, label2106
	j label2107
label2106:
	li $t0, 1
	sw $t0, -1916($fp)
label2107:
	li $t0, 7968
	sw $t0, -1932($fp)
	lw $t0, -1932($fp)
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	sw $t0, -1936($fp)
	lw $t0, 8($fp)
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -1944($fp)
	li $t0, 0
	sw $t0, -1948($fp)
	li $t0, 43125
	sw $t0, -1952($fp)
	li $t0, 4420
	sw $t0, -1956($fp)
	lw $t1, -1952($fp)
	lw $t2, -1956($fp)
	bgt $t1, $t2, label2110
	j label2111
label2110:
	li $t0, 1
	sw $t0, -1948($fp)
label2111:
	lw $t0, -104($fp)
	sw $t0, -1960($fp)
	lw $t0, -1960($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -1964($fp)
	addi $sp, $sp, -4
	lw $t0, -1916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1964($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1968($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -1968($fp)
	sub $t0, $t0, $t1
	sw $t0, -1972($fp)
	lw $t1, -1972($fp)
	li $t2, 0
	bne $t1, $t2, label2104
	j label2105
label2104:
label2112:
	addi $t0, $fp, -60
	sw $t0, -1976($fp)
	lw $t0, -128($fp)
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
	addi $t0, $fp, -8
	sw $t0, -1996($fp)
	lw $t0, -464($fp)
	sw $t0, -2000($fp)
	lw $t0, -752($fp)
	sw $t0, -2004($fp)
	lw $t0, -2000($fp)
	lw $t1, -2004($fp)
	mul $t0, $t0, $t1
	sw $t0, -2008($fp)
	li $t0, 4
	lw $t1, -2008($fp)
	mul $t0, $t0, $t1
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	lw $t1, -1996($fp)
	add $t0, $t0, $t1
	sw $t0, -2016($fp)
	lw $t0, -2016($fp)
	lw $t1, 0($t0)
	sw $t1, -2020($fp)
	lw $t0, -1992($fp)
	lw $t1, -2020($fp)
	add $t0, $t0, $t1
	sw $t0, -2024($fp)
	lw $t1, -2024($fp)
	li $t2, 0
	bne $t1, $t2, label2113
	j label2114
label2113:
	li $t0, 40900
	sw $t0, -2028($fp)
	addi $t0, $fp, -40
	sw $t0, -2032($fp)
	li $t0, 0
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
	lw $t0, -2028($fp)
	lw $t1, -2048($fp)
	add $t0, $t0, $t1
	sw $t0, -2052($fp)
	lw $ra, -4($fp)
	lw $v0, -2052($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label2112
label2114:
	j label2103
label2105:
label2029:
label2025:
	addi $t0, $fp, -8
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
	lw $t0, -104($fp)
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -116($fp)
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -128($fp)
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -140($fp)
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -2092($fp)
	li $t0, 0
	sw $t0, -2096($fp)
	li $t0, 4
	lw $t1, -2096($fp)
	mul $t0, $t0, $t1
	sw $t0, -2100($fp)
	lw $t0, -2100($fp)
	lw $t1, -2092($fp)
	add $t0, $t0, $t1
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	lw $t1, 0($t0)
	sw $t1, -2108($fp)
	lw $t0, -2108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
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
	lw $t0, -2128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -2132($fp)
	li $t0, 2
	sw $t0, -2136($fp)
	li $t0, 4
	lw $t1, -2136($fp)
	mul $t0, $t0, $t1
	sw $t0, -2140($fp)
	lw $t0, -2140($fp)
	lw $t1, -2132($fp)
	add $t0, $t0, $t1
	sw $t0, -2144($fp)
	lw $t0, -2144($fp)
	lw $t1, 0($t0)
	sw $t1, -2148($fp)
	lw $t0, -2148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -2152($fp)
	li $t0, 3
	sw $t0, -2156($fp)
	li $t0, 4
	lw $t1, -2156($fp)
	mul $t0, $t0, $t1
	sw $t0, -2160($fp)
	lw $t0, -2160($fp)
	lw $t1, -2152($fp)
	add $t0, $t0, $t1
	sw $t0, -2164($fp)
	lw $t0, -2164($fp)
	lw $t1, 0($t0)
	sw $t1, -2168($fp)
	lw $t0, -2168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -248($fp)
	sw $t0, -2172($fp)
	lw $t0, -2172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -260($fp)
	sw $t0, -2176($fp)
	lw $t0, -2176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -272($fp)
	sw $t0, -2180($fp)
	lw $t0, -2180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -284($fp)
	sw $t0, -2184($fp)
	lw $t0, -2184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2188($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
	sw $t0, -2208($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -2228($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -2248($fp)
	li $t0, 3
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
	lw $t0, -392($fp)
	sw $t0, -2268($fp)
	lw $t0, -2268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -404($fp)
	sw $t0, -2272($fp)
	lw $t0, -2272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -416($fp)
	sw $t0, -2276($fp)
	lw $t0, -2276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -428($fp)
	sw $t0, -2280($fp)
	lw $t0, -2280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -440($fp)
	sw $t0, -2284($fp)
	lw $t0, -2284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -452($fp)
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -464($fp)
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -476($fp)
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -2300($fp)
	li $t0, 0
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
	addi $t0, $fp, -56
	sw $t0, -2320($fp)
	li $t0, 1
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
	addi $t0, $fp, -56
	sw $t0, -2340($fp)
	li $t0, 2
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
	addi $t0, $fp, -56
	sw $t0, -2360($fp)
	li $t0, 3
	sw $t0, -2364($fp)
	li $t0, 4
	lw $t1, -2364($fp)
	mul $t0, $t0, $t1
	sw $t0, -2368($fp)
	lw $t0, -2368($fp)
	lw $t1, -2360($fp)
	add $t0, $t0, $t1
	sw $t0, -2372($fp)
	lw $t0, -2372($fp)
	lw $t1, 0($t0)
	sw $t1, -2376($fp)
	lw $t0, -2376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -584($fp)
	sw $t0, -2380($fp)
	lw $t0, -2380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -596($fp)
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -608($fp)
	sw $t0, -2388($fp)
	lw $t0, -2388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -2392($fp)
	li $t0, 0
	sw $t0, -2396($fp)
	li $t0, 4
	lw $t1, -2396($fp)
	mul $t0, $t0, $t1
	sw $t0, -2400($fp)
	lw $t0, -2400($fp)
	lw $t1, -2392($fp)
	add $t0, $t0, $t1
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	lw $t1, 0($t0)
	sw $t1, -2408($fp)
	lw $t0, -2408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -644($fp)
	sw $t0, -2412($fp)
	lw $t0, -2412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
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
	addi $t0, $fp, -72
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
	addi $t0, $fp, -72
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
	lw $t0, -728($fp)
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -740($fp)
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -752($fp)
	sw $t0, -2484($fp)
	lw $t0, -2484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -764($fp)
	sw $t0, -2488($fp)
	lw $t0, -2488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2492($fp)
	addi $t0, $fp, -56
	sw $t0, -2496($fp)
	li $t0, 3
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
	lw $t1, -2512($fp)
	li $t2, 0
	bne $t1, $t2, label2117
	j label2116
label2117:
	lw $t0, -116($fp)
	sw $t0, -2516($fp)
	li $t0, 45513
	sw $t0, -2520($fp)
	lw $t0, -2516($fp)
	lw $t1, -2520($fp)
	mul $t0, $t0, $t1
	sw $t0, -2524($fp)
	li $t0, 26307
	sw $t0, -2528($fp)
	lw $t0, -2524($fp)
	lw $t1, -2528($fp)
	mul $t0, $t0, $t1
	sw $t0, -2532($fp)
	li $t0, 0
	sw $t0, -2536($fp)
	lw $t0, -248($fp)
	sw $t0, -2540($fp)
	lw $t1, -2540($fp)
	li $t2, 0
	bne $t1, $t2, label2118
	j label2120
label2120:
	li $t0, 8365
	sw $t0, -2544($fp)
	lw $t1, -2544($fp)
	li $t2, 0
	bne $t1, $t2, label2118
	j label2119
label2118:
	li $t0, 1
	sw $t0, -2536($fp)
label2119:
	lw $t0, -284($fp)
	sw $t0, -2548($fp)
	li $t0, 0
	sw $t0, -2552($fp)
	addi $t0, $fp, -56
	sw $t0, -2556($fp)
	lw $t0, -248($fp)
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
	lw $t1, -2572($fp)
	li $t2, 0
	bne $t1, $t2, label2121
	j label2123
label2123:
	li $t0, 57774
	sw $t0, -2576($fp)
	lw $t1, -2576($fp)
	li $t2, 0
	bne $t1, $t2, label2121
	j label2122
label2121:
	li $t0, 1
	sw $t0, -2552($fp)
label2122:
	addi $t0, $fp, -8
	sw $t0, -2580($fp)
	li $t0, 0
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
	li $t0, 0
	sw $t0, -2600($fp)
	li $t0, 28035
	sw $t0, -2604($fp)
	li $t0, 5120
	sw $t0, -2608($fp)
	lw $t0, -2604($fp)
	lw $t1, -2608($fp)
	add $t0, $t0, $t1
	sw $t0, -2612($fp)
	lw $t1, -2612($fp)
	li $t2, 0
	bne $t1, $t2, label2124
	j label2126
label2126:
	lw $t0, -140($fp)
	sw $t0, -2616($fp)
	lw $t1, -2616($fp)
	li $t2, 0
	bne $t1, $t2, label2124
	j label2125
label2124:
	li $t0, 1
	sw $t0, -2600($fp)
label2125:
	li $t0, 0
	sw $t0, -2620($fp)
	li $t0, 63603
	sw $t0, -2624($fp)
	li $t0, 3031
	sw $t0, -2628($fp)
	lw $t1, -2624($fp)
	lw $t2, -2628($fp)
	beq $t1, $t2, label2127
	j label2129
label2129:
	lw $t0, -416($fp)
	sw $t0, -2632($fp)
	lw $t1, -2632($fp)
	li $t2, 0
	bne $t1, $t2, label2127
	j label2128
label2127:
	li $t0, 1
	sw $t0, -2620($fp)
label2128:
	li $t0, 30424
	sw $t0, -2636($fp)
	li $t0, 61230
	sw $t0, -2640($fp)
	lw $t0, -260($fp)
	sw $t0, -2644($fp)
	lw $t0, -2640($fp)
	lw $t1, -2644($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2648($fp)
	li $t0, 0
	sw $t0, -2652($fp)
	lw $t0, -248($fp)
	sw $t0, -2656($fp)
	lw $t1, -2656($fp)
	li $t2, 0
	bne $t1, $t2, label2130
	j label2133
label2133:
	lw $t0, -248($fp)
	sw $t0, -2660($fp)
	lw $t1, -2660($fp)
	li $t2, 0
	bne $t1, $t2, label2130
	j label2132
label2132:
	li $t0, 53421
	sw $t0, -2664($fp)
	lw $t1, -2664($fp)
	li $t2, 0
	bne $t1, $t2, label2130
	j label2131
label2130:
	li $t0, 1
	sw $t0, -2652($fp)
label2131:
	li $t0, 0
	sw $t0, -2668($fp)
	lw $t0, -728($fp)
	sw $t0, -2672($fp)
	lw $t1, -2672($fp)
	li $t2, 0
	bne $t1, $t2, label2136
	j label2135
label2136:
	li $t0, 53019
	sw $t0, -2676($fp)
	lw $t1, -2676($fp)
	li $t2, 0
	bne $t1, $t2, label2134
	j label2135
label2134:
	li $t0, 1
	sw $t0, -2668($fp)
label2135:
	addi $sp, $sp, -4
	lw $t0, -2652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2668($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2680($fp)
	addi $sp, $sp, 12
	li $t0, 52103
	sw $t0, -2684($fp)
	li $t0, 1
	sw $t0, -2688($fp)
	lw $t0, -2684($fp)
	lw $t1, -2688($fp)
	mul $t0, $t0, $t1
	sw $t0, -2692($fp)
	li $t0, 0
	lw $t1, -2692($fp)
	sub $t0, $t0, $t1
	sw $t0, -2696($fp)
	lw $t0, -476($fp)
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -2704($fp)
	addi $sp, $sp, -4
	lw $t0, -2636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2704($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2708($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -2708($fp)
	sub $t0, $t0, $t1
	sw $t0, -2712($fp)
	li $t0, 0
	sw $t0, -2716($fp)
	li $t0, 3073
	sw $t0, -2720($fp)
	lw $t1, -2720($fp)
	li $t2, 0
	bne $t1, $t2, label2140
	j label2139
label2140:
	lw $t0, -608($fp)
	sw $t0, -2724($fp)
	lw $t1, -2724($fp)
	li $t2, 0
	bne $t1, $t2, label2137
	j label2139
label2139:
	li $t0, 36743
	sw $t0, -2728($fp)
	lw $t1, -2728($fp)
	li $t2, 0
	bne $t1, $t2, label2137
	j label2138
label2137:
	li $t0, 1
	sw $t0, -2716($fp)
label2138:
	addi $sp, $sp, -4
	lw $t0, -2596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2716($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2732($fp)
	addi $sp, $sp, 24
	lw $t0, -248($fp)
	sw $t0, -2736($fp)
	lw $t0, -2732($fp)
	lw $t1, -2736($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2740($fp)
	addi $sp, $sp, -4
	lw $t0, -2532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2740($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2744($fp)
	addi $sp, $sp, 24
	lw $t1, -2744($fp)
	li $t2, 0
	bne $t1, $t2, label2115
	j label2116
label2115:
	li $t0, 1
	sw $t0, -2492($fp)
label2116:
	lw $t0, -2492($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -2748($fp)
	lw $ra, -4($fp)
	lw $v0, -2748($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1304
	li $t0, 14336
	sw $t0, -48($fp)
	addi $t0, $fp, -12
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
	li $t0, 49824
	sw $t0, -72($fp)
	addi $t0, $fp, -12
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
	li $t0, 10682
	sw $t0, -96($fp)
	addi $t0, $fp, -44
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
	li $t0, 12311
	sw $t0, -120($fp)
	addi $t0, $fp, -44
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
	li $t0, 27414
	sw $t0, -144($fp)
	addi $t0, $fp, -44
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
	li $t0, 15102
	sw $t0, -168($fp)
	addi $t0, $fp, -44
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
	li $t0, 20279
	sw $t0, -192($fp)
	addi $t0, $fp, -44
	sw $t0, -196($fp)
	li $t0, 4
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
	li $t0, 35415
	sw $t0, -216($fp)
	addi $t0, $fp, -44
	sw $t0, -220($fp)
	li $t0, 5
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
	li $t0, 56002
	sw $t0, -240($fp)
	addi $t0, $fp, -44
	sw $t0, -244($fp)
	li $t0, 6
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
	li $t0, 35674
	sw $t0, -264($fp)
	addi $t0, $fp, -44
	sw $t0, -268($fp)
	li $t0, 7
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
	li $t0, 23511
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	li $t0, 51738
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	li $t0, 13033
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	li $t0, 26584
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	li $t0, 22945
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -344($fp)
	li $t0, 65137
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	li $t0, 0
	sw $t0, -360($fp)
	addi $t0, $fp, -44
	sw $t0, -364($fp)
	li $t0, 4
	sw $t0, -368($fp)
	li $t0, 4
	lw $t1, -368($fp)
	mul $t0, $t0, $t1
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	lw $t1, -364($fp)
	add $t0, $t0, $t1
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	lw $t1, 0($t0)
	sw $t1, -380($fp)
	li $t0, 53022
	sw $t0, -384($fp)
	li $t0, 12317
	sw $t0, -388($fp)
	lw $t0, -384($fp)
	lw $t1, -388($fp)
	mul $t0, $t0, $t1
	sw $t0, -392($fp)
	addi $t0, $fp, -44
	sw $t0, -396($fp)
	li $t0, 2
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
	lw $t0, -392($fp)
	lw $t1, -412($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -416($fp)
	lw $t1, -380($fp)
	lw $t2, -416($fp)
	bne $t1, $t2, label2141
	j label2142
label2141:
	li $t0, 1
	sw $t0, -360($fp)
label2142:
	addi $t0, $fp, -12
	sw $t0, -420($fp)
	li $t0, 0
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
	addi $t0, $fp, -12
	sw $t0, -440($fp)
	li $t0, 1
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
	li $t0, 0
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
	li $t0, 1
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
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -520($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -540($fp)
	li $t0, 4
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
	lw $t0, -556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -560($fp)
	li $t0, 5
	sw $t0, -564($fp)
	li $t0, 4
	lw $t1, -564($fp)
	mul $t0, $t0, $t1
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	lw $t1, -560($fp)
	add $t0, $t0, $t1
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	lw $t1, 0($t0)
	sw $t1, -576($fp)
	lw $t0, -576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -580($fp)
	li $t0, 6
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
	li $t0, 7
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
	lw $t0, -292($fp)
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -304($fp)
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -316($fp)
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -328($fp)
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -340($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -352($fp)
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -644($fp)
	lw $t0, -352($fp)
	sw $t0, -648($fp)
	lw $t1, -648($fp)
	li $t2, 0
	bne $t1, $t2, label2143
	j label2145
label2145:
	lw $t0, -304($fp)
	sw $t0, -652($fp)
	lw $t0, -304($fp)
	sw $t0, -656($fp)
	lw $t0, -652($fp)
	lw $t1, -656($fp)
	mul $t0, $t0, $t1
	sw $t0, -660($fp)
	li $t0, 15348
	sw $t0, -664($fp)
	li $t0, 3352
	sw $t0, -668($fp)
	lw $t0, -664($fp)
	lw $t1, -668($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -672($fp)
	lw $t0, -660($fp)
	lw $t1, -672($fp)
	sub $t0, $t0, $t1
	sw $t0, -676($fp)
	lw $t1, -676($fp)
	li $t2, 0
	bne $t1, $t2, label2143
	j label2144
label2143:
	li $t0, 1
	sw $t0, -644($fp)
label2144:
	lw $ra, -4($fp)
	lw $v0, -644($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label2146:
	li $t0, 56210
	sw $t0, -680($fp)
	lw $t0, 20($fp)
	sw $t0, -684($fp)
	lw $t0, -680($fp)
	lw $t1, -684($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -688($fp)
	lw $t0, -328($fp)
	sw $t0, -692($fp)
	lw $t0, -688($fp)
	lw $t1, -692($fp)
	add $t0, $t0, $t1
	sw $t0, -696($fp)
	li $t0, 14475
	sw $t0, -700($fp)
	lw $t0, -316($fp)
	sw $t0, -704($fp)
	lw $t0, -700($fp)
	lw $t1, -704($fp)
	mul $t0, $t0, $t1
	sw $t0, -708($fp)
	lw $t0, -696($fp)
	lw $t1, -708($fp)
	add $t0, $t0, $t1
	sw $t0, -712($fp)
	lw $t0, 20($fp)
	sw $t0, -716($fp)
	lw $t0, 4($fp)
	sw $t0, -720($fp)
	lw $t0, -716($fp)
	lw $t1, -720($fp)
	add $t0, $t0, $t1
	sw $t0, -724($fp)
	li $t0, 43426
	sw $t0, -728($fp)
	lw $t0, -724($fp)
	lw $t1, -728($fp)
	add $t0, $t0, $t1
	sw $t0, -732($fp)
	lw $t1, -712($fp)
	lw $t2, -732($fp)
	bge $t1, $t2, label2147
	j label2149
label2149:
	li $t0, 48449
	sw $t0, -736($fp)
	lw $t1, -736($fp)
	li $t2, 0
	bne $t1, $t2, label2147
	j label2148
label2147:
	li $t0, 0
	sw $t0, -740($fp)
	lw $t0, -292($fp)
	sw $t0, -744($fp)
	li $t0, 0
	lw $t1, -744($fp)
	sub $t0, $t0, $t1
	sw $t0, -748($fp)
	lw $t1, -748($fp)
	li $t2, 0
	bne $t1, $t2, label2152
	j label2151
label2152:
	li $t0, 0
	sw $t0, -752($fp)
	li $t0, 37177
	sw $t0, -756($fp)
	lw $t1, -756($fp)
	li $t2, 0
	bne $t1, $t2, label2154
	j label2153
label2153:
	li $t0, 1
	sw $t0, -752($fp)
label2154:
	lw $t0, 12($fp)
	sw $t0, -760($fp)
	lw $t0, -752($fp)
	lw $t1, -760($fp)
	mul $t0, $t0, $t1
	sw $t0, -764($fp)
	li $t0, 0
	sw $t0, -768($fp)
	lw $t0, -304($fp)
	sw $t0, -772($fp)
	li $t0, 0
	lw $t1, -772($fp)
	sub $t0, $t0, $t1
	sw $t0, -776($fp)
	lw $t1, -776($fp)
	li $t2, 0
	bne $t1, $t2, label2155
	j label2157
label2157:
	li $t0, 9220
	sw $t0, -780($fp)
	lw $t1, -780($fp)
	li $t2, 0
	bne $t1, $t2, label2155
	j label2156
label2155:
	li $t0, 1
	sw $t0, -768($fp)
label2156:
	addi $t0, $fp, -44
	sw $t0, -784($fp)
	lw $t0, 12($fp)
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
	li $t0, 0
	sw $t0, -804($fp)
	li $t0, 22840
	sw $t0, -808($fp)
	lw $t1, -808($fp)
	li $t2, 0
	bne $t1, $t2, label2161
	j label2160
label2161:
	lw $t0, -316($fp)
	sw $t0, -812($fp)
	lw $t1, -812($fp)
	li $t2, 0
	bne $t1, $t2, label2158
	j label2160
label2160:
	li $t0, 23403
	sw $t0, -816($fp)
	lw $t1, -816($fp)
	li $t2, 0
	bne $t1, $t2, label2158
	j label2159
label2158:
	li $t0, 1
	sw $t0, -804($fp)
label2159:
	li $t0, 0
	sw $t0, -820($fp)
	lw $t0, 12($fp)
	sw $t0, -824($fp)
	lw $t0, -304($fp)
	sw $t0, -828($fp)
	lw $t1, -824($fp)
	lw $t2, -828($fp)
	bne $t1, $t2, label2162
	j label2163
label2162:
	li $t0, 1
	sw $t0, -820($fp)
label2163:
	addi $sp, $sp, -4
	lw $t0, -764($fp)
	sw $t0, 0($sp)
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
	lw $t0, -820($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -832($fp)
	addi $sp, $sp, 24
	lw $t1, -832($fp)
	li $t2, 0
	bne $t1, $t2, label2150
	j label2151
label2150:
	li $t0, 1
	sw $t0, -740($fp)
label2151:
	lw $ra, -4($fp)
	lw $v0, -740($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label2146
label2148:
	lw $t0, 4($fp)
	sw $t0, -836($fp)
	lw $t1, -836($fp)
	li $t2, 0
	bne $t1, $t2, label2164
	j label2165
label2164:
	li $t0, 55080
	sw $t0, -840($fp)
	lw $t0, -328($fp)
	sw $t0, -844($fp)
	lw $t0, -840($fp)
	lw $t1, -844($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -848($fp)
	li $t0, 52939
	sw $t0, -852($fp)
	lw $t0, 4($fp)
	sw $t0, -856($fp)
	lw $t0, -852($fp)
	lw $t1, -856($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -860($fp)
	li $t0, 0
	lw $t1, -860($fp)
	sub $t0, $t0, $t1
	sw $t0, -864($fp)
	li $t0, 11673
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -872($fp)
	li $t0, 28496
	sw $t0, -876($fp)
	li $t0, 0
	lw $t1, -876($fp)
	sub $t0, $t0, $t1
	sw $t0, -880($fp)
	lw $t0, 8($fp)
	sw $t0, -884($fp)
	lw $t0, -880($fp)
	lw $t1, -884($fp)
	sub $t0, $t0, $t1
	sw $t0, -888($fp)
	addi $t0, $fp, -12
	sw $t0, -892($fp)
	li $t0, 0
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
	li $t0, 39906
	sw $t0, -912($fp)
	lw $t0, -908($fp)
	lw $t1, -912($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -916($fp)
	li $t0, 0
	sw $t0, -920($fp)
	lw $t0, -328($fp)
	sw $t0, -924($fp)
	lw $t0, -316($fp)
	sw $t0, -928($fp)
	lw $t0, -924($fp)
	lw $t1, -928($fp)
	add $t0, $t0, $t1
	sw $t0, -932($fp)
	lw $t1, -932($fp)
	li $t2, 0
	bne $t1, $t2, label2167
	j label2169
label2169:
	lw $t0, -316($fp)
	sw $t0, -936($fp)
	lw $t1, -936($fp)
	li $t2, 0
	bne $t1, $t2, label2167
	j label2168
label2167:
	li $t0, 1
	sw $t0, -920($fp)
label2168:
	li $t0, 0
	sw $t0, -940($fp)
	li $t0, 0
	sw $t0, -944($fp)
	addi $t0, $fp, -12
	sw $t0, -948($fp)
	li $t0, 0
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
	lw $t1, -964($fp)
	li $t2, 0
	bne $t1, $t2, label2173
	j label2172
label2172:
	li $t0, 1
	sw $t0, -944($fp)
label2173:
	lw $t0, 16($fp)
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -972($fp)
	addi $sp, $sp, -4
	lw $t0, -944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -972($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -976($fp)
	addi $sp, $sp, 12
	lw $t0, -328($fp)
	sw $t0, -980($fp)
	lw $t1, -976($fp)
	lw $t2, -980($fp)
	blt $t1, $t2, label2170
	j label2171
label2170:
	li $t0, 1
	sw $t0, -940($fp)
label2171:
	li $t0, 0
	sw $t0, -984($fp)
	li $t0, 0
	sw $t0, -988($fp)
	li $t0, 19902
	sw $t0, -992($fp)
	li $t0, 49488
	sw $t0, -996($fp)
	lw $t1, -992($fp)
	lw $t2, -996($fp)
	bgt $t1, $t2, label2176
	j label2177
label2176:
	li $t0, 1
	sw $t0, -988($fp)
label2177:
	li $t0, 35106
	sw $t0, -1000($fp)
	lw $t1, -988($fp)
	lw $t2, -1000($fp)
	bgt $t1, $t2, label2174
	j label2175
label2174:
	li $t0, 1
	sw $t0, -984($fp)
label2175:
	addi $sp, $sp, -4
	lw $t0, -940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -984($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1004($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -1004($fp)
	sub $t0, $t0, $t1
	sw $t0, -1008($fp)
	lw $t0, 4($fp)
	sw $t0, -1012($fp)
	li $t0, 7692
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -1020($fp)
	addi $sp, $sp, -4
	lw $t0, -916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1020($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1024($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1024($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1028($fp)
	addi $sp, $sp, 24
	lw $t0, -1028($fp)
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -1032($fp)
label2165:
	addi $t0, $fp, -12
	sw $t0, -1036($fp)
	li $t0, 0
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
	addi $t0, $fp, -12
	sw $t0, -1056($fp)
	li $t0, 1
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
	li $t0, 0
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
	li $t0, 1
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
	li $t0, 2
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
	lw $t0, -1152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1156($fp)
	li $t0, 4
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
	li $t0, 5
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
	li $t0, 6
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
	addi $t0, $fp, -44
	sw $t0, -1216($fp)
	li $t0, 7
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
	lw $t0, -292($fp)
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -304($fp)
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -316($fp)
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -328($fp)
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -340($fp)
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -352($fp)
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 45047
	sw $t0, -1260($fp)
	li $t0, 0
	sw $t0, -1264($fp)
	lw $t0, -304($fp)
	sw $t0, -1268($fp)
	li $t0, 0
	lw $t1, -1268($fp)
	sub $t0, $t0, $t1
	sw $t0, -1272($fp)
	lw $t1, -1272($fp)
	li $t2, 0
	bne $t1, $t2, label2179
	j label2178
label2178:
	li $t0, 1
	sw $t0, -1264($fp)
label2179:
	li $t0, 0
	sw $t0, -1276($fp)
	lw $t0, 12($fp)
	sw $t0, -1280($fp)
	lw $t0, -340($fp)
	sw $t0, -1284($fp)
	lw $t0, -1280($fp)
	lw $t1, -1284($fp)
	sub $t0, $t0, $t1
	sw $t0, -1288($fp)
	lw $t1, -1288($fp)
	li $t2, 0
	bne $t1, $t2, label2180
	j label2182
label2182:
	li $t0, 6167
	sw $t0, -1292($fp)
	lw $t1, -1292($fp)
	li $t2, 0
	bne $t1, $t2, label2180
	j label2181
label2180:
	li $t0, 1
	sw $t0, -1276($fp)
label2181:
	li $t0, 52540
	sw $t0, -1296($fp)
	li $t0, 0
	sw $t0, -1300($fp)
	li $t0, 34618
	sw $t0, -1304($fp)
	lw $t1, -1304($fp)
	li $t2, 0
	bne $t1, $t2, label2184
	j label2183
label2183:
	li $t0, 1
	sw $t0, -1300($fp)
label2184:
	addi $sp, $sp, -4
	lw $t0, -1260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1300($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1308($fp)
	addi $sp, $sp, 24
	lw $ra, -4($fp)
	lw $v0, -1308($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -276
	li $t0, 40027
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, -20($fp)
	li $t0, 18485
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, -32($fp)
	li $t0, 20364
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
	li $t0, 25581
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	addi $t0, $fp, -8
	sw $t0, -72($fp)
	li $t0, 0
	sw $t0, -76($fp)
	li $t0, 33833
	sw $t0, -80($fp)
	li $t0, 23716
	sw $t0, -84($fp)
	lw $t0, -80($fp)
	lw $t1, -84($fp)
	add $t0, $t0, $t1
	sw $t0, -88($fp)
	lw $t0, -16($fp)
	sw $t0, -92($fp)
	lw $t1, -88($fp)
	lw $t2, -92($fp)
	bne $t1, $t2, label2185
	j label2186
label2185:
	li $t0, 1
	sw $t0, -76($fp)
label2186:
	li $t0, 4
	lw $t1, -76($fp)
	mul $t0, $t0, $t1
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	lw $t1, -72($fp)
	add $t0, $t0, $t1
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	lw $t1, 0($t0)
	sw $t1, -104($fp)
	lw $t0, -16($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -28($fp)
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -116($fp)
	li $t0, 0
	sw $t0, -120($fp)
	li $t0, 4
	lw $t1, -120($fp)
	mul $t0, $t0, $t1
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	lw $t1, -116($fp)
	add $t0, $t0, $t1
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	lw $t1, 0($t0)
	sw $t1, -132($fp)
	lw $t0, -132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -64($fp)
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -140($fp)
	li $t0, 0
	sw $t0, -144($fp)
	li $t0, 42790
	sw $t0, -148($fp)
	lw $t0, -64($fp)
	sw $t0, -152($fp)
	lw $t1, -148($fp)
	lw $t2, -152($fp)
	blt $t1, $t2, label2189
	j label2190
label2189:
	li $t0, 1
	sw $t0, -144($fp)
label2190:
	lw $t0, -28($fp)
	sw $t0, -156($fp)
	lw $t1, -144($fp)
	lw $t2, -156($fp)
	blt $t1, $t2, label2187
	j label2188
label2187:
	li $t0, 1
	sw $t0, -140($fp)
label2188:
	li $t0, 0
	sw $t0, -160($fp)
	li $t0, 25010
	sw $t0, -164($fp)
	lw $t0, -64($fp)
	sw $t0, -168($fp)
	lw $t0, -164($fp)
	lw $t1, -168($fp)
	sub $t0, $t0, $t1
	sw $t0, -172($fp)
	lw $t1, -172($fp)
	li $t2, 0
	bne $t1, $t2, label2191
	j label2193
label2193:
	li $t0, 8388
	sw $t0, -176($fp)
	lw $t1, -176($fp)
	li $t2, 0
	bne $t1, $t2, label2191
	j label2192
label2191:
	li $t0, 1
	sw $t0, -160($fp)
label2192:
	li $t0, 0
	sw $t0, -180($fp)
	lw $t0, -64($fp)
	sw $t0, -184($fp)
	lw $t1, -184($fp)
	li $t2, 0
	bne $t1, $t2, label2194
	j label2196
label2196:
	li $t0, 5613
	sw $t0, -188($fp)
	lw $t1, -188($fp)
	li $t2, 0
	bne $t1, $t2, label2194
	j label2195
label2194:
	li $t0, 1
	sw $t0, -180($fp)
label2195:
	li $t0, 0
	sw $t0, -192($fp)
	li $t0, 64704
	sw $t0, -196($fp)
	lw $t1, -196($fp)
	li $t2, 0
	bne $t1, $t2, label2198
	j label2197
label2197:
	li $t0, 1
	sw $t0, -192($fp)
label2198:
	li $t0, 0
	sw $t0, -200($fp)
	li $t0, 16255
	sw $t0, -204($fp)
	lw $t1, -204($fp)
	li $t2, 0
	bne $t1, $t2, label2202
	j label2201
label2202:
	li $t0, 48309
	sw $t0, -208($fp)
	lw $t1, -208($fp)
	li $t2, 0
	bne $t1, $t2, label2199
	j label2201
label2201:
	li $t0, 1607
	sw $t0, -212($fp)
	lw $t1, -212($fp)
	li $t2, 0
	bne $t1, $t2, label2199
	j label2200
label2199:
	li $t0, 1
	sw $t0, -200($fp)
label2200:
	addi $sp, $sp, -4
	lw $t0, -140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -200($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -216($fp)
	addi $sp, $sp, 24
	lw $t0, -216($fp)
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, -220($fp)
	lw $ra, -4($fp)
	lw $v0, -220($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -28($fp)
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -228($fp)
	li $t0, 0
	sw $t0, -232($fp)
	lw $t0, -64($fp)
	sw $t0, -236($fp)
	li $t0, 32702
	sw $t0, -240($fp)
	lw $t1, -236($fp)
	lw $t2, -240($fp)
	bne $t1, $t2, label2203
	j label2204
label2203:
	li $t0, 1
	sw $t0, -232($fp)
label2204:
	lw $ra, -4($fp)
	lw $v0, -232($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -16($fp)
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -28($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
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
	lw $t0, -268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -64($fp)
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 28290
	sw $t0, -276($fp)
	li $t0, 0
	lw $t1, -276($fp)
	sub $t0, $t0, $t1
	sw $t0, -280($fp)
	lw $ra, -4($fp)
	lw $v0, -280($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -248
	li $t0, 26743
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
	li $t0, 2272
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
	li $t0, 63294
	sw $t0, -64($fp)
	li $t0, 0
	sw $t0, -68($fp)
	li $t0, 0
	sw $t0, -72($fp)
	li $t0, 30975
	sw $t0, -76($fp)
	lw $t1, -76($fp)
	li $t2, 0
	bne $t1, $t2, label2208
	j label2207
label2207:
	li $t0, 1
	sw $t0, -72($fp)
label2208:
	li $t0, 0
	sw $t0, -80($fp)
	addi $t0, $fp, -12
	sw $t0, -84($fp)
	lw $t0, 8($fp)
	sw $t0, -88($fp)
	li $t0, 4
	lw $t1, -88($fp)
	mul $t0, $t0, $t1
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	lw $t1, -84($fp)
	add $t0, $t0, $t1
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	lw $t1, 0($t0)
	sw $t1, -100($fp)
	lw $t1, -100($fp)
	li $t2, 0
	bne $t1, $t2, label2209
	j label2210
label2209:
	li $t0, 1
	sw $t0, -80($fp)
label2210:
	lw $t1, -72($fp)
	lw $t2, -80($fp)
	ble $t1, $t2, label2205
	j label2206
label2205:
	li $t0, 1
	sw $t0, -68($fp)
label2206:
	li $t0, 0
	sw $t0, -104($fp)
	li $t0, 0
	sw $t0, -108($fp)
	li $t0, 7257
	sw $t0, -112($fp)
	lw $t1, -112($fp)
	li $t2, 0
	bne $t1, $t2, label2214
	j label2213
label2213:
	li $t0, 1
	sw $t0, -108($fp)
label2214:
	addi $t0, $fp, -12
	sw $t0, -116($fp)
	li $t0, 0
	sw $t0, -120($fp)
	lw $t0, 4($fp)
	sw $t0, -124($fp)
	lw $t1, -124($fp)
	li $t2, 0
	bne $t1, $t2, label2216
	j label2215
label2215:
	li $t0, 1
	sw $t0, -120($fp)
label2216:
	li $t0, 4
	lw $t1, -120($fp)
	mul $t0, $t0, $t1
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	lw $t1, -116($fp)
	add $t0, $t0, $t1
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	lw $t1, 0($t0)
	sw $t1, -136($fp)
	lw $t0, -108($fp)
	lw $t1, -136($fp)
	mul $t0, $t0, $t1
	sw $t0, -140($fp)
	li $t0, 0
	lw $t1, -140($fp)
	sub $t0, $t0, $t1
	sw $t0, -144($fp)
	li $t0, 0
	lw $t1, -144($fp)
	sub $t0, $t0, $t1
	sw $t0, -148($fp)
	lw $t1, -148($fp)
	li $t2, 0
	bne $t1, $t2, label2212
	j label2211
label2211:
	li $t0, 1
	sw $t0, -104($fp)
label2212:
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
	lw $t0, 8($fp)
	sw $t0, -196($fp)
	li $t0, 0
	lw $t1, -196($fp)
	sub $t0, $t0, $t1
	sw $t0, -200($fp)
	li $t0, 0
	lw $t1, -200($fp)
	sub $t0, $t0, $t1
	sw $t0, -204($fp)
	li $t0, 0
	sw $t0, -208($fp)
	li $t0, 23229
	sw $t0, -212($fp)
	lw $t1, -212($fp)
	li $t2, 0
	bne $t1, $t2, label2220
	j label2219
label2219:
	li $t0, 1
	sw $t0, -208($fp)
label2220:
	li $t0, 5345
	sw $t0, -216($fp)
	lw $t0, -208($fp)
	lw $t1, -216($fp)
	add $t0, $t0, $t1
	sw $t0, -220($fp)
	addi $sp, $sp, -4
	lw $t0, -204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -220($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -224($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -228($fp)
	li $t0, 0
	sw $t0, -232($fp)
	lw $t0, 8($fp)
	sw $t0, -236($fp)
	lw $t1, -236($fp)
	li $t2, 0
	bne $t1, $t2, label2224
	j label2223
label2223:
	li $t0, 1
	sw $t0, -232($fp)
label2224:
	li $t0, 0
	lw $t1, -232($fp)
	sub $t0, $t0, $t1
	sw $t0, -240($fp)
	lw $t1, -240($fp)
	li $t2, 0
	bne $t1, $t2, label2222
	j label2221
label2221:
	li $t0, 1
	sw $t0, -228($fp)
label2222:
	lw $t0, -224($fp)
	lw $t1, -228($fp)
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
	lw $t1, -252($fp)
	li $t2, 0
	bne $t1, $t2, label2218
	j label2217
label2217:
	li $t0, 1
	sw $t0, -192($fp)
label2218:
	lw $ra, -4($fp)
	lw $v0, -192($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2736
	li $t0, 35753
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	li $t0, 34902
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	li $t0, 58284
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	li $t0, 25298
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	li $t0, 3984
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	li $t0, 45289
	sw $t0, -92($fp)
	addi $t0, $fp, -20
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
	li $t0, 31465
	sw $t0, -116($fp)
	addi $t0, $fp, -20
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
	li $t0, 49031
	sw $t0, -140($fp)
	addi $t0, $fp, -20
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
	li $t0, 19780
	sw $t0, -164($fp)
	addi $t0, $fp, -20
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
	li $t0, 49950
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	li $t0, 3859
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	li $t0, 45361
	sw $t0, -212($fp)
	addi $t0, $fp, -28
	sw $t0, -216($fp)
	li $t0, 0
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
	li $t0, 18248
	sw $t0, -236($fp)
	addi $t0, $fp, -28
	sw $t0, -240($fp)
	li $t0, 1
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
	li $t0, 27576
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	li $t0, 61616
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	li $t0, 1021
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	li $t0, 29183
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	lw $t0, -300($fp)
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -276($fp)
	sw $t0, -312($fp)
	lw $ra, -4($fp)
	lw $v0, -312($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 60785
	sw $t0, -316($fp)
	lw $t1, -316($fp)
	li $t2, 0
	bne $t1, $t2, label2225
	j label2226
label2225:
	li $t0, 0
	sw $t0, -320($fp)
	lw $t0, -204($fp)
	sw $t0, -324($fp)
	li $t0, 21360
	sw $t0, -328($fp)
	lw $t0, -324($fp)
	lw $t1, -328($fp)
	add $t0, $t0, $t1
	sw $t0, -332($fp)
	lw $t0, -72($fp)
	sw $t0, -336($fp)
	lw $t1, -332($fp)
	lw $t2, -336($fp)
	beq $t1, $t2, label2228
	j label2229
label2228:
	li $t0, 1
	sw $t0, -320($fp)
label2229:
	li $t0, 0
	sw $t0, -340($fp)
	lw $t0, -36($fp)
	sw $t0, -344($fp)
	li $t0, 49425
	sw $t0, -348($fp)
	lw $t0, -344($fp)
	lw $t1, -348($fp)
	mul $t0, $t0, $t1
	sw $t0, -352($fp)
	lw $t0, -192($fp)
	sw $t0, -356($fp)
	lw $t1, -352($fp)
	lw $t2, -356($fp)
	blt $t1, $t2, label2230
	j label2231
label2230:
	li $t0, 1
	sw $t0, -340($fp)
label2231:
	addi $t0, $fp, -20
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
	addi $t0, $fp, -28
	sw $t0, -380($fp)
	lw $t0, -48($fp)
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
	lw $t0, -300($fp)
	sw $t0, -400($fp)
	lw $t0, -288($fp)
	sw $t0, -404($fp)
	lw $t0, -400($fp)
	lw $t1, -404($fp)
	mul $t0, $t0, $t1
	sw $t0, -408($fp)
	li $t0, 6634
	sw $t0, -412($fp)
	lw $t0, -408($fp)
	lw $t1, -412($fp)
	mul $t0, $t0, $t1
	sw $t0, -416($fp)
	addi $sp, $sp, -4
	lw $t0, -320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -416($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -420($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -28
	sw $t0, -424($fp)
	lw $t0, -84($fp)
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
	mul $t0, $t0, $t1
	sw $t0, -444($fp)
	lw $t0, -84($fp)
	sw $t0, -448($fp)
	lw $t0, -444($fp)
	lw $t1, -448($fp)
	mul $t0, $t0, $t1
	sw $t0, -452($fp)
label2226:
	li $t0, 31928
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	li $t0, 10632
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	li $t0, 23632
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	li $t0, 29686
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -556($fp)
	li $t0, 41607
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -568($fp)
	li $t0, 30890
	sw $t0, -572($fp)
	addi $t0, $fp, -492
	sw $t0, -576($fp)
	li $t0, 0
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
	li $t0, 52915
	sw $t0, -596($fp)
	addi $t0, $fp, -492
	sw $t0, -600($fp)
	li $t0, 1
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
	li $t0, 46952
	sw $t0, -620($fp)
	addi $t0, $fp, -492
	sw $t0, -624($fp)
	li $t0, 2
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -632($fp)
	lw $t0, -624($fp)
	lw $t1, -632($fp)
	add $t0, $t0, $t1
	sw $t0, -636($fp)
	lw $t0, -620($fp)
	lw $t1, -636($fp)
	sw $t0, 0($t1)
	lw $t0, -636($fp)
	lw $t1, 0($t0)
	sw $t1, -640($fp)
	li $t0, 1107
	sw $t0, -644($fp)
	addi $t0, $fp, -492
	sw $t0, -648($fp)
	li $t0, 3
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
	li $t0, 22281
	sw $t0, -668($fp)
	addi $t0, $fp, -492
	sw $t0, -672($fp)
	li $t0, 4
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
	li $t0, 39700
	sw $t0, -692($fp)
	addi $t0, $fp, -492
	sw $t0, -696($fp)
	li $t0, 5
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
	li $t0, 26405
	sw $t0, -716($fp)
	addi $t0, $fp, -492
	sw $t0, -720($fp)
	li $t0, 6
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
	li $t0, 26266
	sw $t0, -740($fp)
	addi $t0, $fp, -492
	sw $t0, -744($fp)
	li $t0, 7
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
	li $t0, 19453
	sw $t0, -764($fp)
	addi $t0, $fp, -492
	sw $t0, -768($fp)
	li $t0, 8
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
	li $t0, 57871
	sw $t0, -788($fp)
	addi $t0, $fp, -492
	sw $t0, -792($fp)
	li $t0, 9
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
	li $t0, 9761
	sw $t0, -812($fp)
	addi $t0, $fp, -496
	sw $t0, -816($fp)
	li $t0, 0
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -824($fp)
	lw $t0, -816($fp)
	lw $t1, -824($fp)
	add $t0, $t0, $t1
	sw $t0, -828($fp)
	lw $t0, -812($fp)
	lw $t1, -828($fp)
	sw $t0, 0($t1)
	lw $t0, -828($fp)
	lw $t1, 0($t0)
	sw $t1, -832($fp)
	li $t0, 39233
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	sw $t0, -844($fp)
	li $t0, 42285
	sw $t0, -848($fp)
	addi $t0, $fp, -508
	sw $t0, -852($fp)
	li $t0, 0
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
	li $t0, 13621
	sw $t0, -872($fp)
	addi $t0, $fp, -508
	sw $t0, -876($fp)
	li $t0, 1
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
	li $t0, 19058
	sw $t0, -896($fp)
	addi $t0, $fp, -508
	sw $t0, -900($fp)
	li $t0, 2
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
label2232:
	li $t0, 60533
	sw $t0, -920($fp)
	li $t0, 0
	sw $t0, -924($fp)
	li $t0, 15139
	sw $t0, -928($fp)
	li $t0, 61554
	sw $t0, -932($fp)
	lw $t0, -928($fp)
	lw $t1, -932($fp)
	sub $t0, $t0, $t1
	sw $t0, -936($fp)
	li $t0, 4844
	sw $t0, -940($fp)
	lw $t1, -936($fp)
	lw $t2, -940($fp)
	ble $t1, $t2, label2235
	j label2236
label2235:
	li $t0, 1
	sw $t0, -924($fp)
label2236:
	li $t0, 0
	sw $t0, -944($fp)
	li $t0, 0
	sw $t0, -948($fp)
	lw $t0, -528($fp)
	sw $t0, -952($fp)
	lw $t1, -952($fp)
	li $t2, 0
	bne $t1, $t2, label2240
	j label2239
label2239:
	li $t0, 1
	sw $t0, -948($fp)
label2240:
	lw $t0, -276($fp)
	sw $t0, -956($fp)
	lw $t1, -948($fp)
	lw $t2, -956($fp)
	bge $t1, $t2, label2237
	j label2238
label2237:
	li $t0, 1
	sw $t0, -944($fp)
label2238:
	lw $t0, -72($fp)
	sw $t0, -960($fp)
	lw $t0, -48($fp)
	sw $t0, -964($fp)
	lw $t0, -540($fp)
	sw $t0, -968($fp)
	lw $t0, -964($fp)
	lw $t1, -968($fp)
	mul $t0, $t0, $t1
	sw $t0, -972($fp)
	li $t0, 0
	sw $t0, -976($fp)
	li $t0, 0
	sw $t0, -980($fp)
	lw $t0, -60($fp)
	sw $t0, -984($fp)
	li $t0, 41197
	sw $t0, -988($fp)
	lw $t1, -984($fp)
	lw $t2, -988($fp)
	bne $t1, $t2, label2243
	j label2244
label2243:
	li $t0, 1
	sw $t0, -980($fp)
label2244:
	lw $t0, -72($fp)
	sw $t0, -992($fp)
	lw $t1, -980($fp)
	lw $t2, -992($fp)
	bne $t1, $t2, label2241
	j label2242
label2241:
	li $t0, 1
	sw $t0, -976($fp)
label2242:
	addi $sp, $sp, -4
	lw $t0, -924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -976($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -996($fp)
	addi $sp, $sp, 24
	lw $t1, -920($fp)
	lw $t2, -996($fp)
	bgt $t1, $t2, label2233
	j label2234
label2233:
label2245:
	lw $t0, -204($fp)
	sw $t0, -1000($fp)
	li $t0, 10388
	sw $t0, -1004($fp)
	li $t0, 0
	sw $t0, -1008($fp)
	li $t0, 52078
	sw $t0, -1012($fp)
	lw $t1, -1012($fp)
	li $t2, 0
	bne $t1, $t2, label2251
	j label2250
label2251:
	lw $t0, -540($fp)
	sw $t0, -1016($fp)
	lw $t1, -1016($fp)
	li $t2, 0
	bne $t1, $t2, label2248
	j label2250
label2250:
	li $t0, 14861
	sw $t0, -1020($fp)
	lw $t1, -1020($fp)
	li $t2, 0
	bne $t1, $t2, label2248
	j label2249
label2248:
	li $t0, 1
	sw $t0, -1008($fp)
label2249:
	lw $t0, -528($fp)
	sw $t0, -1024($fp)
	lw $t0, -516($fp)
	sw $t0, -1028($fp)
	lw $t0, -1024($fp)
	lw $t1, -1028($fp)
	sub $t0, $t0, $t1
	sw $t0, -1032($fp)
	li $t0, 0
	sw $t0, -1036($fp)
	li $t0, 14025
	sw $t0, -1040($fp)
	lw $t1, -1040($fp)
	li $t2, 0
	bne $t1, $t2, label2254
	j label2253
label2254:
	lw $t0, -528($fp)
	sw $t0, -1044($fp)
	lw $t1, -1044($fp)
	li $t2, 0
	bne $t1, $t2, label2252
	j label2253
label2252:
	li $t0, 1
	sw $t0, -1036($fp)
label2253:
	li $t0, 0
	sw $t0, -1048($fp)
	li $t0, 59037
	sw $t0, -1052($fp)
	lw $t1, -1052($fp)
	li $t2, 0
	bne $t1, $t2, label2256
	j label2255
label2255:
	li $t0, 1
	sw $t0, -1048($fp)
label2256:
	li $t0, 0
	sw $t0, -1056($fp)
	lw $t0, -204($fp)
	sw $t0, -1060($fp)
	li $t0, 0
	lw $t1, -1060($fp)
	sub $t0, $t0, $t1
	sw $t0, -1064($fp)
	lw $t1, -1064($fp)
	li $t2, 0
	bne $t1, $t2, label2259
	j label2258
label2259:
	li $t0, 2653
	sw $t0, -1068($fp)
	lw $t1, -1068($fp)
	li $t2, 0
	bne $t1, $t2, label2257
	j label2258
label2257:
	li $t0, 1
	sw $t0, -1056($fp)
label2258:
	addi $sp, $sp, -4
	lw $t0, -1008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1056($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1072($fp)
	addi $sp, $sp, 24
	lw $t0, -1004($fp)
	lw $t1, -1072($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1076($fp)
	li $t0, 0
	lw $t1, -1076($fp)
	sub $t0, $t0, $t1
	sw $t0, -1080($fp)
	lw $t0, -1000($fp)
	lw $t1, -1080($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1084($fp)
	li $t0, 45953
	sw $t0, -1088($fp)
	lw $t1, -1084($fp)
	lw $t2, -1088($fp)
	bge $t1, $t2, label2246
	j label2247
label2246:
	li $t0, 0
	sw $t0, -1092($fp)
	li $t0, 62710
	sw $t0, -1096($fp)
	lw $t1, -1096($fp)
	li $t2, 0
	bne $t1, $t2, label2261
	j label2260
label2260:
	li $t0, 1
	sw $t0, -1092($fp)
label2261:
	lw $ra, -4($fp)
	lw $v0, -1092($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label2245
label2247:
	j label2232
label2234:
	li $t0, 0
	sw $t0, -1100($fp)
	li $t0, 0
	sw $t0, -1104($fp)
	lw $t0, -48($fp)
	sw $t0, -1108($fp)
	lw $t0, -528($fp)
	sw $t0, -1112($fp)
	lw $t1, -1108($fp)
	lw $t2, -1112($fp)
	bge $t1, $t2, label2267
	j label2269
label2269:
	lw $t0, -552($fp)
	sw $t0, -1116($fp)
	lw $t1, -1116($fp)
	li $t2, 0
	bne $t1, $t2, label2267
	j label2268
label2267:
	li $t0, 1
	sw $t0, -1104($fp)
label2268:
	li $t0, 63019
	sw $t0, -1120($fp)
	li $t0, 20197
	sw $t0, -1124($fp)
	lw $t0, -1120($fp)
	lw $t1, -1124($fp)
	sub $t0, $t0, $t1
	sw $t0, -1128($fp)
	addi $t0, $fp, -28
	sw $t0, -1132($fp)
	lw $t0, -540($fp)
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
	li $t0, 38781
	sw $t0, -1152($fp)
	li $t0, 3848
	sw $t0, -1156($fp)
	lw $t0, -1152($fp)
	lw $t1, -1156($fp)
	mul $t0, $t0, $t1
	sw $t0, -1160($fp)
	lw $t0, -264($fp)
	sw $t0, -1164($fp)
	lw $t0, -1160($fp)
	lw $t1, -1164($fp)
	sub $t0, $t0, $t1
	sw $t0, -1168($fp)
	lw $t0, -276($fp)
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -1176($fp)
	addi $sp, $sp, -4
	lw $t0, -1104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1176($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1180($fp)
	addi $sp, $sp, 24
	li $t0, 4955
	sw $t0, -1184($fp)
	lw $t0, -1180($fp)
	lw $t1, -1184($fp)
	add $t0, $t0, $t1
	sw $t0, -1188($fp)
	li $t0, 0
	sw $t0, -1192($fp)
	li $t0, 38494
	sw $t0, -1196($fp)
	lw $t1, -1196($fp)
	li $t2, 0
	bne $t1, $t2, label2271
	j label2270
label2270:
	li $t0, 1
	sw $t0, -1192($fp)
label2271:
	li $t0, 10104
	sw $t0, -1200($fp)
	lw $t0, -1192($fp)
	lw $t1, -1200($fp)
	sub $t0, $t0, $t1
	sw $t0, -1204($fp)
	addi $sp, $sp, -4
	lw $t0, -1188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1204($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1208($fp)
	addi $sp, $sp, 12
	li $t0, 19765
	sw $t0, -1212($fp)
	li $t0, 59897
	sw $t0, -1216($fp)
	lw $t0, -1212($fp)
	lw $t1, -1216($fp)
	mul $t0, $t0, $t1
	sw $t0, -1220($fp)
	li $t0, 31361
	sw $t0, -1224($fp)
	lw $t0, -1220($fp)
	lw $t1, -1224($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1228($fp)
	lw $t1, -1208($fp)
	lw $t2, -1228($fp)
	ble $t1, $t2, label2265
	j label2266
label2265:
	li $t0, 1
	sw $t0, -1100($fp)
label2266:
	li $t0, 46031
	sw $t0, -1232($fp)
	lw $t1, -1100($fp)
	lw $t2, -1232($fp)
	beq $t1, $t2, label2262
	j label2263
label2262:
	li $t0, 0
	sw $t0, -1236($fp)
	lw $t0, -276($fp)
	sw $t0, -1240($fp)
	lw $t1, -1240($fp)
	li $t2, 0
	bne $t1, $t2, label2273
	j label2272
label2272:
	li $t0, 1
	sw $t0, -1236($fp)
label2273:
	lw $ra, -4($fp)
	lw $v0, -1236($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label2264
label2263:
	li $t0, 13815
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	sw $t0, -1272($fp)
	li $t0, 23696
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -1284($fp)
	li $t0, 55792
	sw $t0, -1288($fp)
	addi $t0, $fp, -1260
	sw $t0, -1292($fp)
	li $t0, 0
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
	li $t0, 53048
	sw $t0, -1312($fp)
	addi $t0, $fp, -1260
	sw $t0, -1316($fp)
	li $t0, 1
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
	li $t0, 445
	sw $t0, -1336($fp)
	addi $t0, $fp, -1260
	sw $t0, -1340($fp)
	li $t0, 2
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
	li $t0, 3877
	sw $t0, -1360($fp)
	addi $t0, $fp, -1260
	sw $t0, -1364($fp)
	li $t0, 3
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
	li $t0, 6571
	sw $t0, -1384($fp)
	addi $t0, $fp, -1260
	sw $t0, -1388($fp)
	li $t0, 4
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
	li $t0, 60979
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	sw $t0, -1416($fp)
	lw $t0, -1268($fp)
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1280($fp)
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1260
	sw $t0, -1428($fp)
	li $t0, 0
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
	addi $t0, $fp, -1260
	sw $t0, -1448($fp)
	li $t0, 1
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
	addi $t0, $fp, -1260
	sw $t0, -1468($fp)
	li $t0, 2
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
	addi $t0, $fp, -1260
	sw $t0, -1488($fp)
	li $t0, 3
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
	addi $t0, $fp, -1260
	sw $t0, -1508($fp)
	li $t0, 4
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
	lw $t0, -1412($fp)
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1532($fp)
	li $t0, 0
	sw $t0, -1536($fp)
	addi $t0, $fp, -496
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
	lw $t0, -192($fp)
	sw $t0, -1560($fp)
	lw $t0, -1556($fp)
	lw $t1, -1560($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1564($fp)
	li $t0, 56997
	sw $t0, -1568($fp)
	lw $t0, -1564($fp)
	lw $t1, -1568($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1572($fp)
	li $t0, 49918
	sw $t0, -1576($fp)
	li $t0, 0
	lw $t1, -1576($fp)
	sub $t0, $t0, $t1
	sw $t0, -1580($fp)
	li $t0, 0
	lw $t1, -1580($fp)
	sub $t0, $t0, $t1
	sw $t0, -1584($fp)
	lw $t1, -1572($fp)
	lw $t2, -1584($fp)
	ble $t1, $t2, label2276
	j label2277
label2276:
	li $t0, 1
	sw $t0, -1536($fp)
label2277:
	li $t0, 0
	sw $t0, -1588($fp)
	li $t0, 32098
	sw $t0, -1592($fp)
	li $t0, 59650
	sw $t0, -1596($fp)
	lw $t0, -1592($fp)
	lw $t1, -1596($fp)
	sub $t0, $t0, $t1
	sw $t0, -1600($fp)
	li $t0, 43420
	sw $t0, -1604($fp)
	lw $t0, -1600($fp)
	lw $t1, -1604($fp)
	add $t0, $t0, $t1
	sw $t0, -1608($fp)
	lw $t0, -528($fp)
	sw $t0, -1612($fp)
	lw $t1, -1608($fp)
	lw $t2, -1612($fp)
	bgt $t1, $t2, label2278
	j label2279
label2278:
	li $t0, 1
	sw $t0, -1588($fp)
label2279:
	lw $t1, -1536($fp)
	lw $t2, -1588($fp)
	beq $t1, $t2, label2274
	j label2275
label2274:
	li $t0, 1
	sw $t0, -1532($fp)
label2275:
	lw $ra, -4($fp)
	lw $v0, -1532($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -20
	sw $t0, -1616($fp)
	lw $t0, -276($fp)
	sw $t0, -1620($fp)
	li $t0, 4
	lw $t1, -1620($fp)
	mul $t0, $t0, $t1
	sw $t0, -1624($fp)
	lw $t0, -1624($fp)
	lw $t1, -1616($fp)
	add $t0, $t0, $t1
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	lw $t1, 0($t0)
	sw $t1, -1632($fp)
	li $t0, 0
	sw $t0, -1636($fp)
	li $t0, 0
	sw $t0, -1640($fp)
	li $t0, 16611
	sw $t0, -1644($fp)
	lw $t1, -1644($fp)
	li $t2, 0
	bne $t1, $t2, label2286
	j label2284
label2286:
	lw $t0, -36($fp)
	sw $t0, -1648($fp)
	lw $t1, -1648($fp)
	li $t2, 0
	bne $t1, $t2, label2285
	j label2284
label2285:
	li $t0, 35087
	sw $t0, -1652($fp)
	lw $t1, -1652($fp)
	li $t2, 0
	bne $t1, $t2, label2283
	j label2284
label2283:
	li $t0, 1
	sw $t0, -1640($fp)
label2284:
	lw $t0, -1280($fp)
	sw $t0, -1656($fp)
	li $t0, 36645
	sw $t0, -1660($fp)
	li $t0, 31239
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -1668($fp)
	addi $t0, $fp, -492
	sw $t0, -1672($fp)
	lw $t0, -60($fp)
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
	addi $sp, $sp, -4
	lw $t0, -1640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1688($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1692($fp)
	addi $sp, $sp, 24
	lw $t1, -1692($fp)
	li $t2, 0
	bne $t1, $t2, label2280
	j label2282
label2282:
	lw $t0, 4($fp)
	sw $t0, -1696($fp)
	lw $t1, -1696($fp)
	li $t2, 0
	bne $t1, $t2, label2280
	j label2281
label2280:
	li $t0, 1
	sw $t0, -1636($fp)
label2281:
	lw $t0, -1412($fp)
	sw $t0, -1700($fp)
	lw $t0, 4($fp)
	sw $t0, -1704($fp)
	lw $t0, -1700($fp)
	lw $t1, -1704($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1708($fp)
	li $t0, 43366
	sw $t0, -1712($fp)
	lw $t0, -1708($fp)
	lw $t1, -1712($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1716($fp)
	li $t0, 26541
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -1724($fp)
	addi $t0, $fp, -1260
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
	li $t0, 0
	lw $t1, -1744($fp)
	sub $t0, $t0, $t1
	sw $t0, -1748($fp)
	li $t0, 0
	sw $t0, -1752($fp)
	lw $t0, -72($fp)
	sw $t0, -1756($fp)
	lw $t1, -1756($fp)
	li $t2, 0
	bne $t1, $t2, label2290
	j label2289
label2290:
	lw $t0, -72($fp)
	sw $t0, -1760($fp)
	lw $t1, -1760($fp)
	li $t2, 0
	bne $t1, $t2, label2287
	j label2289
label2289:
	li $t0, 46123
	sw $t0, -1764($fp)
	lw $t1, -1764($fp)
	li $t2, 0
	bne $t1, $t2, label2287
	j label2288
label2287:
	li $t0, 1
	sw $t0, -1752($fp)
label2288:
	addi $sp, $sp, -4
	lw $t0, -1636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1752($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1768($fp)
	addi $sp, $sp, 24
	lw $t0, -1632($fp)
	lw $t1, -1768($fp)
	sub $t0, $t0, $t1
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	sw $t0, -1776($fp)
label2264:
	lw $t0, -516($fp)
	sw $t0, -1780($fp)
	lw $t0, -1780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -540($fp)
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -552($fp)
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -564($fp)
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -492
	sw $t0, -1800($fp)
	li $t0, 0
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
	addi $t0, $fp, -492
	sw $t0, -1820($fp)
	li $t0, 1
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
	addi $t0, $fp, -492
	sw $t0, -1840($fp)
	li $t0, 2
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
	addi $t0, $fp, -492
	sw $t0, -1860($fp)
	li $t0, 3
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
	addi $t0, $fp, -492
	sw $t0, -1880($fp)
	li $t0, 4
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
	addi $t0, $fp, -492
	sw $t0, -1900($fp)
	li $t0, 5
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
	addi $t0, $fp, -492
	sw $t0, -1920($fp)
	li $t0, 6
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
	addi $t0, $fp, -492
	sw $t0, -1940($fp)
	li $t0, 7
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
	addi $t0, $fp, -492
	sw $t0, -1960($fp)
	li $t0, 8
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
	addi $t0, $fp, -492
	sw $t0, -1980($fp)
	li $t0, 9
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
	addi $t0, $fp, -496
	sw $t0, -2000($fp)
	li $t0, 0
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
	lw $t0, -840($fp)
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -508
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
	lw $t0, -2040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -508
	sw $t0, -2044($fp)
	li $t0, 1
	sw $t0, -2048($fp)
	li $t0, 4
	lw $t1, -2048($fp)
	mul $t0, $t0, $t1
	sw $t0, -2052($fp)
	lw $t0, -2052($fp)
	lw $t1, -2044($fp)
	add $t0, $t0, $t1
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	lw $t1, 0($t0)
	sw $t1, -2060($fp)
	lw $t0, -2060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -508
	sw $t0, -2064($fp)
	li $t0, 2
	sw $t0, -2068($fp)
	li $t0, 4
	lw $t1, -2068($fp)
	mul $t0, $t0, $t1
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	lw $t1, -2064($fp)
	add $t0, $t0, $t1
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	lw $t1, 0($t0)
	sw $t1, -2080($fp)
	lw $t0, -2080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2084($fp)
	lw $t0, -72($fp)
	sw $t0, -2088($fp)
	li $t0, 34128
	sw $t0, -2092($fp)
	lw $t0, -2088($fp)
	lw $t1, -2092($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2096($fp)
	li $t0, 36808
	sw $t0, -2100($fp)
	li $t0, 0
	lw $t1, -2100($fp)
	sub $t0, $t0, $t1
	sw $t0, -2104($fp)
	lw $t0, -2096($fp)
	lw $t1, -2104($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2108($fp)
	lw $t0, -528($fp)
	sw $t0, -2112($fp)
	li $t0, 40043
	sw $t0, -2116($fp)
	lw $t0, -2112($fp)
	lw $t1, -2116($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2120($fp)
	lw $t0, -516($fp)
	sw $t0, -2124($fp)
	lw $t0, -2120($fp)
	lw $t1, -2124($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2128($fp)
	lw $t0, -2108($fp)
	lw $t1, -2128($fp)
	add $t0, $t0, $t1
	sw $t0, -2132($fp)
	li $t0, 0
	sw $t0, -2136($fp)
	li $t0, 53893
	sw $t0, -2140($fp)
	lw $t1, -2140($fp)
	li $t2, 0
	bne $t1, $t2, label2294
	j label2293
label2293:
	li $t0, 1
	sw $t0, -2136($fp)
label2294:
	li $t0, 0
	sw $t0, -2144($fp)
	lw $t0, -204($fp)
	sw $t0, -2148($fp)
	lw $t1, -2148($fp)
	li $t2, 0
	bne $t1, $t2, label2296
	j label2295
label2295:
	li $t0, 1
	sw $t0, -2144($fp)
label2296:
	lw $t0, -2136($fp)
	lw $t1, -2144($fp)
	add $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $t1, -2132($fp)
	lw $t2, -2152($fp)
	blt $t1, $t2, label2291
	j label2292
label2291:
	li $t0, 1
	sw $t0, -2084($fp)
label2292:
	lw $ra, -4($fp)
	lw $v0, -2084($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -2156($fp)
	addi $t0, $fp, -492
	sw $t0, -2160($fp)
	addi $t0, $fp, -28
	sw $t0, -2164($fp)
	li $t0, 0
	sw $t0, -2168($fp)
	li $t0, 4
	lw $t1, -2168($fp)
	mul $t0, $t0, $t1
	sw $t0, -2172($fp)
	lw $t0, -2172($fp)
	lw $t1, -2164($fp)
	add $t0, $t0, $t1
	sw $t0, -2176($fp)
	lw $t0, -2176($fp)
	lw $t1, 0($t0)
	sw $t1, -2180($fp)
	li $t0, 4
	lw $t1, -2180($fp)
	mul $t0, $t0, $t1
	sw $t0, -2184($fp)
	lw $t0, -2184($fp)
	lw $t1, -2160($fp)
	add $t0, $t0, $t1
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	lw $t1, 0($t0)
	sw $t1, -2192($fp)
	lw $t1, -2192($fp)
	li $t2, 0
	bne $t1, $t2, label2298
	j label2297
label2297:
	li $t0, 1
	sw $t0, -2156($fp)
label2298:
	li $t0, 0
	lw $t1, -2156($fp)
	sub $t0, $t0, $t1
	sw $t0, -2196($fp)
	addi $t0, $fp, -508
	sw $t0, -2200($fp)
	li $t0, 0
	sw $t0, -2204($fp)
	li $t0, 34388
	sw $t0, -2208($fp)
	lw $t1, -2208($fp)
	li $t2, 0
	bne $t1, $t2, label2301
	j label2300
label2301:
	lw $t0, -564($fp)
	sw $t0, -2212($fp)
	lw $t1, -2212($fp)
	li $t2, 0
	bne $t1, $t2, label2299
	j label2300
label2299:
	li $t0, 1
	sw $t0, -2204($fp)
label2300:
	li $t0, 4
	lw $t1, -2204($fp)
	mul $t0, $t0, $t1
	sw $t0, -2216($fp)
	lw $t0, -2216($fp)
	lw $t1, -2200($fp)
	add $t0, $t0, $t1
	sw $t0, -2220($fp)
	lw $t0, -2220($fp)
	lw $t1, 0($t0)
	sw $t1, -2224($fp)
	li $t0, 44985
	sw $t0, -2228($fp)
	lw $t0, -2224($fp)
	lw $t1, -2228($fp)
	mul $t0, $t0, $t1
	sw $t0, -2232($fp)
	li $t0, 0
	lw $t1, -2232($fp)
	sub $t0, $t0, $t1
	sw $t0, -2236($fp)
	addi $t0, $fp, -28
	sw $t0, -2240($fp)
	li $t0, 0
	sw $t0, -2244($fp)
	lw $t0, 8($fp)
	sw $t0, -2248($fp)
	li $t0, 29564
	sw $t0, -2252($fp)
	lw $t0, -2248($fp)
	lw $t1, -2252($fp)
	add $t0, $t0, $t1
	sw $t0, -2256($fp)
	li $t0, 24645
	sw $t0, -2260($fp)
	lw $t1, -2256($fp)
	lw $t2, -2260($fp)
	bgt $t1, $t2, label2305
	j label2306
label2305:
	li $t0, 1
	sw $t0, -2244($fp)
label2306:
	li $t0, 4
	lw $t1, -2244($fp)
	mul $t0, $t0, $t1
	sw $t0, -2264($fp)
	lw $t0, -2264($fp)
	lw $t1, -2240($fp)
	add $t0, $t0, $t1
	sw $t0, -2268($fp)
	lw $t0, -2268($fp)
	lw $t1, 0($t0)
	sw $t1, -2272($fp)
	li $t0, 32497
	sw $t0, -2276($fp)
	lw $t1, -2272($fp)
	lw $t2, -2276($fp)
	ble $t1, $t2, label2302
	j label2303
label2302:
	lw $t0, -840($fp)
	sw $t0, -2280($fp)
	lw $ra, -4($fp)
	lw $v0, -2280($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label2304
label2303:
	li $t0, 30009
	sw $t0, -2284($fp)
	li $t0, 0
	sw $t0, -2288($fp)
	li $t0, 0
	sw $t0, -2292($fp)
	li $t0, 0
	sw $t0, -2296($fp)
	li $t0, 39068
	sw $t0, -2300($fp)
	lw $t1, -2300($fp)
	li $t2, 0
	bne $t1, $t2, label2312
	j label2311
label2311:
	li $t0, 1
	sw $t0, -2296($fp)
label2312:
	lw $t0, -84($fp)
	sw $t0, -2304($fp)
	lw $t1, -2296($fp)
	lw $t2, -2304($fp)
	bne $t1, $t2, label2309
	j label2310
label2309:
	li $t0, 1
	sw $t0, -2292($fp)
label2310:
	li $t0, 28522
	sw $t0, -2308($fp)
	li $t0, 0
	lw $t1, -2308($fp)
	sub $t0, $t0, $t1
	sw $t0, -2312($fp)
	lw $t0, -840($fp)
	sw $t0, -2316($fp)
	lw $t0, -2312($fp)
	lw $t1, -2316($fp)
	add $t0, $t0, $t1
	sw $t0, -2320($fp)
	addi $sp, $sp, -4
	lw $t0, -2292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2320($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -2324($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -2324($fp)
	sub $t0, $t0, $t1
	sw $t0, -2328($fp)
	li $t0, 0
	lw $t1, -2328($fp)
	sub $t0, $t0, $t1
	sw $t0, -2332($fp)
	li $t0, 0
	sw $t0, -2336($fp)
	li $t0, 25452
	sw $t0, -2340($fp)
	lw $t1, -2340($fp)
	li $t2, 0
	bne $t1, $t2, label2314
	j label2313
label2313:
	li $t0, 1
	sw $t0, -2336($fp)
label2314:
	lw $t0, -2332($fp)
	lw $t1, -2336($fp)
	sub $t0, $t0, $t1
	sw $t0, -2344($fp)
	lw $t0, -552($fp)
	sw $t0, -2348($fp)
	li $t0, 8061
	sw $t0, -2352($fp)
	lw $t0, -2348($fp)
	lw $t1, -2352($fp)
	mul $t0, $t0, $t1
	sw $t0, -2356($fp)
	lw $t0, -288($fp)
	sw $t0, -2360($fp)
	lw $t0, -2356($fp)
	lw $t1, -2360($fp)
	add $t0, $t0, $t1
	sw $t0, -2364($fp)
	lw $t1, -2344($fp)
	lw $t2, -2364($fp)
	bne $t1, $t2, label2307
	j label2308
label2307:
	li $t0, 1
	sw $t0, -2288($fp)
label2308:
label2315:
	lw $t0, -276($fp)
	sw $t0, -2368($fp)
	lw $t1, -2368($fp)
	li $t2, 0
	bne $t1, $t2, label2316
	j label2317
label2316:
	li $t0, 0
	sw $t0, -2372($fp)
	li $t0, 60778
	sw $t0, -2376($fp)
	li $t0, 0
	lw $t1, -2376($fp)
	sub $t0, $t0, $t1
	sw $t0, -2380($fp)
	lw $t1, -2380($fp)
	li $t2, 0
	bne $t1, $t2, label2319
	j label2318
label2318:
	li $t0, 1
	sw $t0, -2372($fp)
label2319:
	j label2315
label2317:
	lw $t0, 4($fp)
	sw $t0, -2384($fp)
	lw $t1, -2384($fp)
	li $t2, 0
	bne $t1, $t2, label2321
	j label2320
label2320:
	lw $t0, -552($fp)
	sw $t0, -2388($fp)
	lw $t1, -2388($fp)
	li $t2, 0
	bne $t1, $t2, label2323
	j label2324
label2323:
	li $t0, 0
	sw $t0, -2392($fp)
	li $t0, 16914
	sw $t0, -2396($fp)
	lw $t1, -2396($fp)
	li $t2, 0
	bne $t1, $t2, label2329
	j label2328
label2329:
	lw $t0, -540($fp)
	sw $t0, -2400($fp)
	lw $t1, -2400($fp)
	li $t2, 0
	bne $t1, $t2, label2326
	j label2328
label2328:
	li $t0, 57979
	sw $t0, -2404($fp)
	lw $t1, -2404($fp)
	li $t2, 0
	bne $t1, $t2, label2326
	j label2327
label2326:
	li $t0, 1
	sw $t0, -2392($fp)
label2327:
	j label2325
label2324:
	lw $t0, -288($fp)
	sw $t0, -2408($fp)
label2325:
label2321:
	addi $t0, $fp, -496
	sw $t0, -2412($fp)
	li $t0, 0
	sw $t0, -2416($fp)
	li $t0, 4
	lw $t1, -2416($fp)
	mul $t0, $t0, $t1
	sw $t0, -2420($fp)
	lw $t0, -2420($fp)
	lw $t1, -2412($fp)
	add $t0, $t0, $t1
	sw $t0, -2424($fp)
	lw $t0, -2424($fp)
	lw $t1, 0($t0)
	sw $t1, -2428($fp)
label2304:
	li $t0, 0
	sw $t0, -2432($fp)
	addi $t0, $fp, -28
	sw $t0, -2436($fp)
	li $t0, 0
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
	li $t0, 0
	sw $t0, -2456($fp)
	li $t0, 57221
	sw $t0, -2460($fp)
	li $t0, 28609
	sw $t0, -2464($fp)
	lw $t1, -2460($fp)
	lw $t2, -2464($fp)
	bge $t1, $t2, label2332
	j label2333
label2332:
	li $t0, 1
	sw $t0, -2456($fp)
label2333:
	lw $t1, -2452($fp)
	lw $t2, -2456($fp)
	beq $t1, $t2, label2330
	j label2331
label2330:
	li $t0, 1
	sw $t0, -2432($fp)
label2331:
	lw $t0, -2432($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -2468($fp)
	li $t0, 0
	sw $t0, -2472($fp)
	li $t0, 0
	sw $t0, -2476($fp)
	li $t0, 34469
	sw $t0, -2480($fp)
	lw $t1, -2480($fp)
	li $t2, 0
	bne $t1, $t2, label2337
	j label2338
label2337:
	li $t0, 1
	sw $t0, -2476($fp)
label2338:
	jal f10
	sw $v0, -2484($fp)
	addi $sp, $sp, 4
	lw $t1, -2476($fp)
	lw $t2, -2484($fp)
	beq $t1, $t2, label2334
	j label2336
label2336:
	lw $t0, -204($fp)
	sw $t0, -2488($fp)
	lw $t1, -2488($fp)
	li $t2, 0
	bne $t1, $t2, label2334
	j label2335
label2334:
	li $t0, 1
	sw $t0, -2472($fp)
label2335:
	lw $t0, -36($fp)
	sw $t0, -2492($fp)
	lw $t0, -2492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -48($fp)
	sw $t0, -2496($fp)
	lw $t0, -2496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -60($fp)
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -72($fp)
	sw $t0, -2504($fp)
	lw $t0, -2504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -2508($fp)
	lw $t0, -2508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -2512($fp)
	li $t0, 0
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
	addi $t0, $fp, -20
	sw $t0, -2532($fp)
	li $t0, 1
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
	addi $t0, $fp, -20
	sw $t0, -2552($fp)
	li $t0, 2
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
	addi $t0, $fp, -20
	sw $t0, -2572($fp)
	li $t0, 3
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
	lw $t0, -192($fp)
	sw $t0, -2592($fp)
	lw $t0, -2592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -204($fp)
	sw $t0, -2596($fp)
	lw $t0, -2596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -2600($fp)
	li $t0, 0
	sw $t0, -2604($fp)
	li $t0, 4
	lw $t1, -2604($fp)
	mul $t0, $t0, $t1
	sw $t0, -2608($fp)
	lw $t0, -2608($fp)
	lw $t1, -2600($fp)
	add $t0, $t0, $t1
	sw $t0, -2612($fp)
	lw $t0, -2612($fp)
	lw $t1, 0($t0)
	sw $t1, -2616($fp)
	lw $t0, -2616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -2620($fp)
	li $t0, 1
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
	lw $t0, -2636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -264($fp)
	sw $t0, -2640($fp)
	lw $t0, -2640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -276($fp)
	sw $t0, -2644($fp)
	lw $t0, -2644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -288($fp)
	sw $t0, -2648($fp)
	lw $t0, -2648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -288($fp)
	sw $t0, -2652($fp)
	li $t0, 0
	sw $t0, -2656($fp)
	lw $t0, -276($fp)
	sw $t0, -2660($fp)
	li $t0, 0
	lw $t1, -2660($fp)
	sub $t0, $t0, $t1
	sw $t0, -2664($fp)
	lw $t0, -264($fp)
	sw $t0, -2668($fp)
	lw $t1, -2664($fp)
	lw $t2, -2668($fp)
	ble $t1, $t2, label2339
	j label2340
label2339:
	li $t0, 1
	sw $t0, -2656($fp)
label2340:
	li $t0, 0
	sw $t0, -2672($fp)
	li $t0, 29400
	sw $t0, -2676($fp)
	lw $t0, 8($fp)
	sw $t0, -2680($fp)
	lw $t0, -2676($fp)
	lw $t1, -2680($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2684($fp)
	li $t0, 39706
	sw $t0, -2688($fp)
	lw $t1, -2684($fp)
	lw $t2, -2688($fp)
	bne $t1, $t2, label2341
	j label2342
label2341:
	li $t0, 1
	sw $t0, -2672($fp)
label2342:
	li $t0, 0
	sw $t0, -2692($fp)
	li $t0, 51663
	sw $t0, -2696($fp)
	lw $t1, -2696($fp)
	li $t2, 0
	bne $t1, $t2, label2344
	j label2343
label2343:
	li $t0, 1
	sw $t0, -2692($fp)
label2344:
	li $t0, 0
	lw $t1, -2692($fp)
	sub $t0, $t0, $t1
	sw $t0, -2700($fp)
	li $t0, 5578
	sw $t0, -2704($fp)
	addi $t0, $fp, -28
	sw $t0, -2708($fp)
	li $t0, 0
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
	li $t0, 0
	lw $t1, -2724($fp)
	sub $t0, $t0, $t1
	sw $t0, -2728($fp)
	addi $sp, $sp, -4
	lw $t0, -2656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2728($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -2732($fp)
	addi $sp, $sp, 24
	lw $t0, -2652($fp)
	lw $t1, -2732($fp)
	mul $t0, $t0, $t1
	sw $t0, -2736($fp)
	lw $t0, -2736($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -2740($fp)
	lw $ra, -4($fp)
	lw $v0, -2740($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -80
	li $t0, 22935
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 3907
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	lw $t0, -24($fp)
	sw $t0, -32($fp)
	lw $t0, -24($fp)
	sw $t0, -36($fp)
	lw $t0, -32($fp)
	lw $t1, -36($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -40($fp)
	li $t0, 0
	sw $t0, -44($fp)
	lw $t0, -24($fp)
	sw $t0, -48($fp)
	lw $t1, -48($fp)
	li $t2, 0
	bne $t1, $t2, label2346
	j label2345
label2345:
	li $t0, 1
	sw $t0, -44($fp)
label2346:
	li $t0, 9775
	sw $t0, -52($fp)
	lw $t0, -44($fp)
	lw $t1, -52($fp)
	add $t0, $t0, $t1
	sw $t0, -56($fp)
	li $t0, 54105
	sw $t0, -60($fp)
	li $t0, 28064
	sw $t0, -64($fp)
	lw $t0, -12($fp)
	sw $t0, -68($fp)
	addi $sp, $sp, -4
	lw $t0, -40($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -56($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -60($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -64($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -68($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -72($fp)
	addi $sp, $sp, 24
	lw $t0, -12($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 62452
	sw $t0, -84($fp)
	lw $ra, -4($fp)
	lw $v0, -84($fp)
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
