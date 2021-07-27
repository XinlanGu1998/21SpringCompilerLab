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
	addi $sp, $sp, -772
	li $t0, 50256
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
	li $t0, 21176
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
	li $t0, 16014
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
	li $t0, 57660
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
	li $t0, 65166
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
	li $t0, 45171
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
	li $t0, 1661
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
	li $t0, 9710
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	li $t0, 28017
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	li $t0, 13879
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	li $t0, 9902
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	li $t0, 32259
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	li $t0, 22224
	sw $t0, -264($fp)
	addi $t0, $fp, -32
	sw $t0, -268($fp)
	li $t0, 0
	sw $t0, -272($fp)
	lw $t0, 16($fp)
	sw $t0, -276($fp)
	lw $t0, 20($fp)
	sw $t0, -280($fp)
	lw $t1, -276($fp)
	lw $t2, -280($fp)
	ble $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -272($fp)
label122:
	li $t0, 4
	lw $t1, -272($fp)
	mul $t0, $t0, $t1
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	lw $t1, -268($fp)
	add $t0, $t0, $t1
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	lw $t1, 0($t0)
	sw $t1, -292($fp)
	lw $t0, -264($fp)
	lw $t1, -292($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -296($fp)
	li $t0, 0
	sw $t0, -300($fp)
	li $t0, 0
	sw $t0, -304($fp)
	addi $t0, $fp, -32
	sw $t0, -308($fp)
	lw $t0, -208($fp)
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
	lw $t0, -208($fp)
	sw $t0, -328($fp)
	lw $t1, -324($fp)
	lw $t2, -328($fp)
	bgt $t1, $t2, label126
	j label127
label126:
	li $t0, 1
	sw $t0, -304($fp)
label127:
	li $t0, 0
	sw $t0, -332($fp)
	lw $t0, -208($fp)
	sw $t0, -336($fp)
	li $t0, 33418
	sw $t0, -340($fp)
	lw $t1, -336($fp)
	lw $t2, -340($fp)
	beq $t1, $t2, label130
	j label129
label130:
	li $t0, 862
	sw $t0, -344($fp)
	lw $t1, -344($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label129
label128:
	li $t0, 1
	sw $t0, -332($fp)
label129:
	li $t0, 0
	sw $t0, -348($fp)
	addi $t0, $fp, -32
	sw $t0, -352($fp)
	lw $t0, 8($fp)
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
	lw $t0, 12($fp)
	sw $t0, -372($fp)
	lw $t1, -368($fp)
	lw $t2, -372($fp)
	bgt $t1, $t2, label131
	j label132
label131:
	li $t0, 1
	sw $t0, -348($fp)
label132:
	li $t0, 0
	sw $t0, -376($fp)
	lw $t0, 20($fp)
	sw $t0, -380($fp)
	lw $t0, 4($fp)
	sw $t0, -384($fp)
	lw $t0, -380($fp)
	lw $t1, -384($fp)
	mul $t0, $t0, $t1
	sw $t0, -388($fp)
	lw $t0, -232($fp)
	sw $t0, -392($fp)
	lw $t1, -388($fp)
	lw $t2, -392($fp)
	ble $t1, $t2, label133
	j label134
label133:
	li $t0, 1
	sw $t0, -376($fp)
label134:
	li $t0, 27877
	sw $t0, -396($fp)
	li $t0, 0
	lw $t1, -396($fp)
	sub $t0, $t0, $t1
	sw $t0, -400($fp)
	li $t0, 0
	lw $t1, -400($fp)
	sub $t0, $t0, $t1
	sw $t0, -404($fp)
	addi $sp, $sp, -4
	lw $t0, -304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -404($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -408($fp)
	addi $sp, $sp, 24
	lw $t1, -408($fp)
	li $t2, 0
	bne $t1, $t2, label124
	j label125
label125:
	addi $t0, $fp, -32
	sw $t0, -412($fp)
	lw $t0, -208($fp)
	sw $t0, -416($fp)
	lw $t0, -208($fp)
	sw $t0, -420($fp)
	lw $t0, -416($fp)
	lw $t1, -420($fp)
	mul $t0, $t0, $t1
	sw $t0, -424($fp)
	li $t0, 4
	lw $t1, -424($fp)
	mul $t0, $t0, $t1
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	lw $t1, -412($fp)
	add $t0, $t0, $t1
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	lw $t1, 0($t0)
	sw $t1, -436($fp)
	lw $t1, -436($fp)
	li $t2, 0
	bne $t1, $t2, label123
	j label124
label123:
	li $t0, 1
	sw $t0, -300($fp)
label124:
	li $t0, 0
	sw $t0, -440($fp)
	li $t0, 17872
	sw $t0, -444($fp)
	lw $t1, -444($fp)
	li $t2, 0
	bne $t1, $t2, label136
	j label135
label135:
	li $t0, 1
	sw $t0, -440($fp)
label136:
	li $t0, 53471
	sw $t0, -448($fp)
	lw $t0, -440($fp)
	lw $t1, -448($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -452($fp)
	li $t0, 21205
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -460($fp)
	li $t0, 0
	sw $t0, -464($fp)
	li $t0, 52220
	sw $t0, -468($fp)
	lw $t0, -208($fp)
	sw $t0, -472($fp)
	lw $t1, -468($fp)
	lw $t2, -472($fp)
	beq $t1, $t2, label137
	j label139
label139:
	lw $t0, 8($fp)
	sw $t0, -476($fp)
	lw $t1, -476($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label138
label137:
	li $t0, 1
	sw $t0, -464($fp)
label138:
	li $t0, 0
	sw $t0, -480($fp)
	lw $t0, -244($fp)
	sw $t0, -484($fp)
	lw $t1, -484($fp)
	li $t2, 0
	bne $t1, $t2, label141
	j label140
label140:
	li $t0, 1
	sw $t0, -480($fp)
label141:
	li $t0, 0
	lw $t1, -480($fp)
	sub $t0, $t0, $t1
	sw $t0, -488($fp)
	lw $t0, -244($fp)
	sw $t0, -492($fp)
	li $t0, 0
	sw $t0, -496($fp)
	li $t0, 53414
	sw $t0, -500($fp)
	li $t0, 1
	sw $t0, -504($fp)
	lw $t0, -500($fp)
	lw $t1, -504($fp)
	mul $t0, $t0, $t1
	sw $t0, -508($fp)
	li $t0, 53530
	sw $t0, -512($fp)
	lw $t0, -508($fp)
	lw $t1, -512($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -516($fp)
	lw $t0, -220($fp)
	sw $t0, -520($fp)
	li $t0, 63711
	sw $t0, -524($fp)
	lw $t0, -520($fp)
	lw $t1, -524($fp)
	add $t0, $t0, $t1
	sw $t0, -528($fp)
	lw $t0, -232($fp)
	sw $t0, -532($fp)
	lw $t0, -528($fp)
	lw $t1, -532($fp)
	add $t0, $t0, $t1
	sw $t0, -536($fp)
	addi $t0, $fp, -32
	sw $t0, -540($fp)
	lw $t0, 8($fp)
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
	li $t0, 0
	sw $t0, -560($fp)
	lw $t0, 16($fp)
	sw $t0, -564($fp)
	lw $t0, -208($fp)
	sw $t0, -568($fp)
	lw $t0, -564($fp)
	lw $t1, -568($fp)
	add $t0, $t0, $t1
	sw $t0, -572($fp)
	lw $t1, -572($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label146
label146:
	lw $t0, -208($fp)
	sw $t0, -576($fp)
	lw $t1, -576($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label145
label144:
	li $t0, 1
	sw $t0, -560($fp)
label145:
	li $t0, 0
	sw $t0, -580($fp)
	li $t0, 0
	sw $t0, -584($fp)
	li $t0, 33223
	sw $t0, -588($fp)
	li $t0, 38084
	sw $t0, -592($fp)
	lw $t1, -588($fp)
	lw $t2, -592($fp)
	bne $t1, $t2, label149
	j label150
label149:
	li $t0, 1
	sw $t0, -584($fp)
label150:
	li $t0, 18516
	sw $t0, -596($fp)
	lw $t1, -584($fp)
	lw $t2, -596($fp)
	beq $t1, $t2, label147
	j label148
label147:
	li $t0, 1
	sw $t0, -580($fp)
label148:
	addi $sp, $sp, -4
	lw $t0, -516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -580($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -600($fp)
	addi $sp, $sp, 24
	lw $t0, -220($fp)
	sw $t0, -604($fp)
	lw $t1, -600($fp)
	lw $t2, -604($fp)
	bne $t1, $t2, label142
	j label143
label142:
	li $t0, 1
	sw $t0, -496($fp)
label143:
	addi $sp, $sp, -4
	lw $t0, -460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -496($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -608($fp)
	addi $sp, $sp, 24
	lw $t0, -452($fp)
	lw $t1, -608($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -612($fp)
	addi $t0, $fp, -32
	sw $t0, -616($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -636($fp)
	li $t0, 1
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
	addi $t0, $fp, -32
	sw $t0, -656($fp)
	li $t0, 2
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
	addi $t0, $fp, -32
	sw $t0, -676($fp)
	li $t0, 3
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
	addi $t0, $fp, -32
	sw $t0, -696($fp)
	li $t0, 4
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
	addi $t0, $fp, -32
	sw $t0, -716($fp)
	li $t0, 5
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
	addi $t0, $fp, -32
	sw $t0, -736($fp)
	li $t0, 6
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
	lw $t0, -208($fp)
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -220($fp)
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -232($fp)
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -244($fp)
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -256($fp)
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -208($fp)
	sw $t0, -776($fp)
	lw $ra, -4($fp)
	lw $v0, -776($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	li $t0, 50947
	sw $t0, -8($fp)
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
	addi $sp, $sp, -7988
	li $t0, 55304
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	li $t0, 38312
	sw $t0, -244($fp)
	addi $t0, $fp, -12
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
	li $t0, 47442
	sw $t0, -268($fp)
	addi $t0, $fp, -12
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
	li $t0, 40024
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
	li $t0, 59489
	sw $t0, -304($fp)
	addi $t0, $fp, -44
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
	li $t0, 63457
	sw $t0, -328($fp)
	addi $t0, $fp, -44
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
	li $t0, 32149
	sw $t0, -352($fp)
	addi $t0, $fp, -44
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
	li $t0, 59119
	sw $t0, -376($fp)
	addi $t0, $fp, -44
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
	li $t0, 43092
	sw $t0, -400($fp)
	addi $t0, $fp, -44
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
	li $t0, 33810
	sw $t0, -424($fp)
	addi $t0, $fp, -44
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
	li $t0, 3294
	sw $t0, -448($fp)
	addi $t0, $fp, -44
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
	li $t0, 5573
	sw $t0, -472($fp)
	addi $t0, $fp, -44
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
	li $t0, 47689
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	li $t0, 13196
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	li $t0, 37833
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	li $t0, 4377
	sw $t0, -532($fp)
	addi $t0, $fp, -64
	sw $t0, -536($fp)
	li $t0, 0
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
	li $t0, 41073
	sw $t0, -556($fp)
	addi $t0, $fp, -64
	sw $t0, -560($fp)
	li $t0, 1
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
	li $t0, 5715
	sw $t0, -580($fp)
	addi $t0, $fp, -64
	sw $t0, -584($fp)
	li $t0, 2
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
	li $t0, 5240
	sw $t0, -604($fp)
	addi $t0, $fp, -64
	sw $t0, -608($fp)
	li $t0, 3
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
	li $t0, 58945
	sw $t0, -628($fp)
	addi $t0, $fp, -64
	sw $t0, -632($fp)
	li $t0, 4
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
	li $t0, 59186
	sw $t0, -652($fp)
	addi $t0, $fp, -104
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
	li $t0, 38463
	sw $t0, -676($fp)
	addi $t0, $fp, -104
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
	li $t0, 31493
	sw $t0, -700($fp)
	addi $t0, $fp, -104
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
	li $t0, 12167
	sw $t0, -724($fp)
	addi $t0, $fp, -104
	sw $t0, -728($fp)
	li $t0, 3
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
	li $t0, 36638
	sw $t0, -748($fp)
	addi $t0, $fp, -104
	sw $t0, -752($fp)
	li $t0, 4
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
	li $t0, 19371
	sw $t0, -772($fp)
	addi $t0, $fp, -104
	sw $t0, -776($fp)
	li $t0, 5
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
	li $t0, 3927
	sw $t0, -796($fp)
	addi $t0, $fp, -104
	sw $t0, -800($fp)
	li $t0, 6
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
	li $t0, 24632
	sw $t0, -820($fp)
	addi $t0, $fp, -104
	sw $t0, -824($fp)
	li $t0, 7
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
	li $t0, 6055
	sw $t0, -844($fp)
	addi $t0, $fp, -104
	sw $t0, -848($fp)
	li $t0, 8
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
	li $t0, 25132
	sw $t0, -868($fp)
	addi $t0, $fp, -104
	sw $t0, -872($fp)
	li $t0, 9
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
	li $t0, 10043
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -900($fp)
	li $t0, 61359
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -912($fp)
	li $t0, 63444
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -924($fp)
	li $t0, 57486
	sw $t0, -928($fp)
	addi $t0, $fp, -120
	sw $t0, -932($fp)
	li $t0, 0
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -940($fp)
	lw $t0, -932($fp)
	lw $t1, -940($fp)
	add $t0, $t0, $t1
	sw $t0, -944($fp)
	lw $t0, -928($fp)
	lw $t1, -944($fp)
	sw $t0, 0($t1)
	lw $t0, -944($fp)
	lw $t1, 0($t0)
	sw $t1, -948($fp)
	li $t0, 35848
	sw $t0, -952($fp)
	addi $t0, $fp, -120
	sw $t0, -956($fp)
	li $t0, 1
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
	li $t0, 57397
	sw $t0, -976($fp)
	addi $t0, $fp, -120
	sw $t0, -980($fp)
	li $t0, 2
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
	li $t0, 55407
	sw $t0, -1000($fp)
	addi $t0, $fp, -120
	sw $t0, -1004($fp)
	li $t0, 3
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
	li $t0, 2461
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	sw $t0, -1032($fp)
	li $t0, 50981
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	sw $t0, -1044($fp)
	li $t0, 32963
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	sw $t0, -1056($fp)
	li $t0, 36271
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	sw $t0, -1068($fp)
	li $t0, 54275
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	sw $t0, -1080($fp)
	li $t0, 38536
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	sw $t0, -1092($fp)
	li $t0, 18425
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	sw $t0, -1104($fp)
	li $t0, 1935
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	sw $t0, -1116($fp)
	li $t0, 10833
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	sw $t0, -1128($fp)
	li $t0, 22802
	sw $t0, -1132($fp)
	addi $t0, $fp, -148
	sw $t0, -1136($fp)
	li $t0, 0
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1144($fp)
	lw $t0, -1136($fp)
	lw $t1, -1144($fp)
	add $t0, $t0, $t1
	sw $t0, -1148($fp)
	lw $t0, -1132($fp)
	lw $t1, -1148($fp)
	sw $t0, 0($t1)
	lw $t0, -1148($fp)
	lw $t1, 0($t0)
	sw $t1, -1152($fp)
	li $t0, 43008
	sw $t0, -1156($fp)
	addi $t0, $fp, -148
	sw $t0, -1160($fp)
	li $t0, 1
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1168($fp)
	lw $t0, -1160($fp)
	lw $t1, -1168($fp)
	add $t0, $t0, $t1
	sw $t0, -1172($fp)
	lw $t0, -1156($fp)
	lw $t1, -1172($fp)
	sw $t0, 0($t1)
	lw $t0, -1172($fp)
	lw $t1, 0($t0)
	sw $t1, -1176($fp)
	li $t0, 16548
	sw $t0, -1180($fp)
	addi $t0, $fp, -148
	sw $t0, -1184($fp)
	li $t0, 2
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1192($fp)
	lw $t0, -1184($fp)
	lw $t1, -1192($fp)
	add $t0, $t0, $t1
	sw $t0, -1196($fp)
	lw $t0, -1180($fp)
	lw $t1, -1196($fp)
	sw $t0, 0($t1)
	lw $t0, -1196($fp)
	lw $t1, 0($t0)
	sw $t1, -1200($fp)
	li $t0, 28042
	sw $t0, -1204($fp)
	addi $t0, $fp, -148
	sw $t0, -1208($fp)
	li $t0, 3
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1216($fp)
	lw $t0, -1208($fp)
	lw $t1, -1216($fp)
	add $t0, $t0, $t1
	sw $t0, -1220($fp)
	lw $t0, -1204($fp)
	lw $t1, -1220($fp)
	sw $t0, 0($t1)
	lw $t0, -1220($fp)
	lw $t1, 0($t0)
	sw $t1, -1224($fp)
	li $t0, 36417
	sw $t0, -1228($fp)
	addi $t0, $fp, -148
	sw $t0, -1232($fp)
	li $t0, 4
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1240($fp)
	lw $t0, -1232($fp)
	lw $t1, -1240($fp)
	add $t0, $t0, $t1
	sw $t0, -1244($fp)
	lw $t0, -1228($fp)
	lw $t1, -1244($fp)
	sw $t0, 0($t1)
	lw $t0, -1244($fp)
	lw $t1, 0($t0)
	sw $t1, -1248($fp)
	li $t0, 10199
	sw $t0, -1252($fp)
	addi $t0, $fp, -148
	sw $t0, -1256($fp)
	li $t0, 5
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1264($fp)
	lw $t0, -1256($fp)
	lw $t1, -1264($fp)
	add $t0, $t0, $t1
	sw $t0, -1268($fp)
	lw $t0, -1252($fp)
	lw $t1, -1268($fp)
	sw $t0, 0($t1)
	lw $t0, -1268($fp)
	lw $t1, 0($t0)
	sw $t1, -1272($fp)
	li $t0, 969
	sw $t0, -1276($fp)
	addi $t0, $fp, -148
	sw $t0, -1280($fp)
	li $t0, 6
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1288($fp)
	lw $t0, -1280($fp)
	lw $t1, -1288($fp)
	add $t0, $t0, $t1
	sw $t0, -1292($fp)
	lw $t0, -1276($fp)
	lw $t1, -1292($fp)
	sw $t0, 0($t1)
	lw $t0, -1292($fp)
	lw $t1, 0($t0)
	sw $t1, -1296($fp)
	li $t0, 2374
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	sw $t0, -1308($fp)
	li $t0, 22366
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	sw $t0, -1320($fp)
	li $t0, 37607
	sw $t0, -1324($fp)
	addi $t0, $fp, -156
	sw $t0, -1328($fp)
	li $t0, 0
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
	li $t0, 21745
	sw $t0, -1348($fp)
	addi $t0, $fp, -156
	sw $t0, -1352($fp)
	li $t0, 1
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
	li $t0, 26293
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	sw $t0, -1380($fp)
	li $t0, 62239
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	sw $t0, -1392($fp)
	li $t0, 27800
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	sw $t0, -1404($fp)
	li $t0, 51425
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	sw $t0, -1416($fp)
	li $t0, 6747
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	sw $t0, -1428($fp)
	li $t0, 23623
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	sw $t0, -1440($fp)
	li $t0, 49333
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	sw $t0, -1452($fp)
	li $t0, 64233
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	sw $t0, -1464($fp)
	li $t0, 59471
	sw $t0, -1468($fp)
	addi $t0, $fp, -192
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
	li $t0, 41195
	sw $t0, -1492($fp)
	addi $t0, $fp, -192
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
	li $t0, 54104
	sw $t0, -1516($fp)
	addi $t0, $fp, -192
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
	li $t0, 61932
	sw $t0, -1540($fp)
	addi $t0, $fp, -192
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
	li $t0, 26640
	sw $t0, -1564($fp)
	addi $t0, $fp, -192
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
	li $t0, 21531
	sw $t0, -1588($fp)
	addi $t0, $fp, -192
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
	li $t0, 32668
	sw $t0, -1612($fp)
	addi $t0, $fp, -192
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
	li $t0, 15379
	sw $t0, -1636($fp)
	addi $t0, $fp, -192
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
	li $t0, 60067
	sw $t0, -1660($fp)
	addi $t0, $fp, -192
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
	li $t0, 51093
	sw $t0, -1684($fp)
	addi $t0, $fp, -228
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
	li $t0, 17314
	sw $t0, -1708($fp)
	addi $t0, $fp, -228
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
	li $t0, 5365
	sw $t0, -1732($fp)
	addi $t0, $fp, -228
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
	li $t0, 8359
	sw $t0, -1756($fp)
	addi $t0, $fp, -228
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
	li $t0, 60322
	sw $t0, -1780($fp)
	addi $t0, $fp, -228
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
	li $t0, 21913
	sw $t0, -1804($fp)
	addi $t0, $fp, -228
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
	li $t0, 36402
	sw $t0, -1828($fp)
	addi $t0, $fp, -228
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
	li $t0, 31203
	sw $t0, -1852($fp)
	addi $t0, $fp, -228
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
	li $t0, 32112
	sw $t0, -1876($fp)
	addi $t0, $fp, -228
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
	li $t0, 37371
	sw $t0, -1900($fp)
	lw $t0, -1900($fp)
	sw $t0, -1904($fp)
	lw $t0, -1904($fp)
	sw $t0, -1908($fp)
	li $t0, 33577
	sw $t0, -1912($fp)
	lw $t0, -1912($fp)
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	sw $t0, -1920($fp)
	li $t0, 54478
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	sw $t0, -1932($fp)
	li $t0, 9443
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	sw $t0, -1944($fp)
	li $t0, 55322
	sw $t0, -1948($fp)
	lw $t0, -1948($fp)
	sw $t0, -1952($fp)
	lw $t0, -1952($fp)
	sw $t0, -1956($fp)
	li $t0, 15235
	sw $t0, -1960($fp)
	lw $t0, -1960($fp)
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	sw $t0, -1968($fp)
	li $t0, 6146
	sw $t0, -1972($fp)
	lw $t0, -1972($fp)
	sw $t0, -1976($fp)
	lw $t0, -1976($fp)
	sw $t0, -1980($fp)
	li $t0, 17586
	sw $t0, -1984($fp)
	lw $t0, -1984($fp)
	sw $t0, -1988($fp)
	lw $t0, -1988($fp)
	sw $t0, -1992($fp)
	li $t0, 1124
	sw $t0, -1996($fp)
	lw $t0, -1996($fp)
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	sw $t0, -2004($fp)
	li $t0, 12893
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	sw $t0, -2016($fp)
	li $t0, 41209
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	sw $t0, -2024($fp)
	lw $t0, -2024($fp)
	sw $t0, -2028($fp)
	li $t0, 50458
	sw $t0, -2032($fp)
	lw $t0, -2032($fp)
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	sw $t0, -2040($fp)
	li $t0, 11590
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	sw $t0, -2048($fp)
	lw $t0, -2048($fp)
	sw $t0, -2052($fp)
	li $t0, 35145
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	sw $t0, -2064($fp)
	li $t0, 26117
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	sw $t0, -2076($fp)
	li $t0, 158
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	sw $t0, -2088($fp)
	li $t0, 31541
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	sw $t0, -2100($fp)
	li $t0, 52757
	sw $t0, -2104($fp)
	lw $t1, -2104($fp)
	li $t2, 0
	bne $t1, $t2, label151
	j label152
label151:
	li $t0, 0
	sw $t0, -2108($fp)
	lw $t0, -1100($fp)
	sw $t0, -2112($fp)
	lw $t1, -2112($fp)
	li $t2, 0
	bne $t1, $t2, label157
	j label156
label157:
	lw $t0, -1388($fp)
	sw $t0, -2116($fp)
	lw $t1, -2116($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label156
label156:
	lw $t0, -896($fp)
	sw $t0, -2120($fp)
	lw $t1, -2120($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label155
label154:
	li $t0, 1
	sw $t0, -2108($fp)
label155:
	li $t0, 21689
	sw $t0, -2124($fp)
	lw $t0, -908($fp)
	sw $t0, -2128($fp)
	lw $t0, -2124($fp)
	lw $t1, -2128($fp)
	mul $t0, $t0, $t1
	sw $t0, -2132($fp)
	lw $t0, -2012($fp)
	sw $t0, -2136($fp)
	lw $t0, -2132($fp)
	lw $t1, -2136($fp)
	mul $t0, $t0, $t1
	sw $t0, -2140($fp)
	addi $t0, $fp, -120
	sw $t0, -2144($fp)
	lw $t0, -524($fp)
	sw $t0, -2148($fp)
	li $t0, 4
	lw $t1, -2148($fp)
	mul $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	lw $t1, -2144($fp)
	add $t0, $t0, $t1
	sw $t0, -2156($fp)
	lw $t0, -2156($fp)
	lw $t1, 0($t0)
	sw $t1, -2160($fp)
	addi $sp, $sp, -4
	lw $t0, -2108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2160($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2164($fp)
	addi $sp, $sp, 16
	lw $t0, -2012($fp)
	sw $t0, -2168($fp)
	li $t0, 0
	sw $t0, -2172($fp)
	li $t0, 2600
	sw $t0, -2176($fp)
	lw $t1, -2176($fp)
	li $t2, 0
	bne $t1, $t2, label159
	j label158
label158:
	li $t0, 1
	sw $t0, -2172($fp)
label159:
	lw $t0, -2096($fp)
	sw $t0, -2180($fp)
	lw $t0, -2172($fp)
	lw $t1, -2180($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2184($fp)
	li $t0, 0
	sw $t0, -2188($fp)
	lw $t0, -2072($fp)
	sw $t0, -2192($fp)
	li $t0, 0
	lw $t1, -2192($fp)
	sub $t0, $t0, $t1
	sw $t0, -2196($fp)
	lw $t0, -2084($fp)
	sw $t0, -2200($fp)
	lw $t1, -2196($fp)
	lw $t2, -2200($fp)
	bgt $t1, $t2, label160
	j label161
label160:
	li $t0, 1
	sw $t0, -2188($fp)
label161:
	addi $t0, $fp, -44
	sw $t0, -2204($fp)
	lw $t0, -1964($fp)
	sw $t0, -2208($fp)
	li $t0, 4
	lw $t1, -2208($fp)
	mul $t0, $t0, $t1
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	lw $t1, -2204($fp)
	add $t0, $t0, $t1
	sw $t0, -2216($fp)
	lw $t0, -2216($fp)
	lw $t1, 0($t0)
	sw $t1, -2220($fp)
	li $t0, 64209
	sw $t0, -2224($fp)
	lw $t0, -1916($fp)
	sw $t0, -2228($fp)
	addi $sp, $sp, -4
	lw $t0, -2184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2228($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2232($fp)
	addi $sp, $sp, 24
	lw $t0, -2168($fp)
	lw $t1, -2232($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2236($fp)
	li $t0, 16221
	sw $t0, -2240($fp)
	li $t0, 0
	lw $t1, -2240($fp)
	sub $t0, $t0, $t1
	sw $t0, -2244($fp)
	lw $t0, -2236($fp)
	lw $t1, -2244($fp)
	mul $t0, $t0, $t1
	sw $t0, -2248($fp)
	li $t0, 0
	lw $t1, -2248($fp)
	sub $t0, $t0, $t1
	sw $t0, -2252($fp)
	lw $t0, -2164($fp)
	lw $t1, -2252($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2256($fp)
label152:
	lw $t0, -236($fp)
	sw $t0, -2260($fp)
	lw $t0, -2260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
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
	addi $t0, $fp, -12
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
	lw $t0, -296($fp)
	sw $t0, -2304($fp)
	lw $t0, -2304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -2308($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -2328($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -2348($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -2368($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -2388($fp)
	li $t0, 4
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
	addi $t0, $fp, -44
	sw $t0, -2408($fp)
	li $t0, 5
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
	addi $t0, $fp, -44
	sw $t0, -2428($fp)
	li $t0, 6
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
	lw $t0, -2444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -2448($fp)
	li $t0, 7
	sw $t0, -2452($fp)
	li $t0, 4
	lw $t1, -2452($fp)
	mul $t0, $t0, $t1
	sw $t0, -2456($fp)
	lw $t0, -2456($fp)
	lw $t1, -2448($fp)
	add $t0, $t0, $t1
	sw $t0, -2460($fp)
	lw $t0, -2460($fp)
	lw $t1, 0($t0)
	sw $t1, -2464($fp)
	lw $t0, -2464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -500($fp)
	sw $t0, -2468($fp)
	lw $t0, -2468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -512($fp)
	sw $t0, -2472($fp)
	lw $t0, -2472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -524($fp)
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -2480($fp)
	li $t0, 0
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
	addi $t0, $fp, -64
	sw $t0, -2500($fp)
	li $t0, 1
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
	addi $t0, $fp, -64
	sw $t0, -2520($fp)
	li $t0, 2
	sw $t0, -2524($fp)
	li $t0, 4
	lw $t1, -2524($fp)
	mul $t0, $t0, $t1
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	lw $t1, -2520($fp)
	add $t0, $t0, $t1
	sw $t0, -2532($fp)
	lw $t0, -2532($fp)
	lw $t1, 0($t0)
	sw $t1, -2536($fp)
	lw $t0, -2536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -2540($fp)
	li $t0, 3
	sw $t0, -2544($fp)
	li $t0, 4
	lw $t1, -2544($fp)
	mul $t0, $t0, $t1
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	lw $t1, -2540($fp)
	add $t0, $t0, $t1
	sw $t0, -2552($fp)
	lw $t0, -2552($fp)
	lw $t1, 0($t0)
	sw $t1, -2556($fp)
	lw $t0, -2556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -2560($fp)
	li $t0, 4
	sw $t0, -2564($fp)
	li $t0, 4
	lw $t1, -2564($fp)
	mul $t0, $t0, $t1
	sw $t0, -2568($fp)
	lw $t0, -2568($fp)
	lw $t1, -2560($fp)
	add $t0, $t0, $t1
	sw $t0, -2572($fp)
	lw $t0, -2572($fp)
	lw $t1, 0($t0)
	sw $t1, -2576($fp)
	lw $t0, -2576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
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
	lw $t0, -2596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -2600($fp)
	li $t0, 1
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
	addi $t0, $fp, -104
	sw $t0, -2620($fp)
	li $t0, 2
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
	addi $t0, $fp, -104
	sw $t0, -2640($fp)
	li $t0, 3
	sw $t0, -2644($fp)
	li $t0, 4
	lw $t1, -2644($fp)
	mul $t0, $t0, $t1
	sw $t0, -2648($fp)
	lw $t0, -2648($fp)
	lw $t1, -2640($fp)
	add $t0, $t0, $t1
	sw $t0, -2652($fp)
	lw $t0, -2652($fp)
	lw $t1, 0($t0)
	sw $t1, -2656($fp)
	lw $t0, -2656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -2660($fp)
	li $t0, 4
	sw $t0, -2664($fp)
	li $t0, 4
	lw $t1, -2664($fp)
	mul $t0, $t0, $t1
	sw $t0, -2668($fp)
	lw $t0, -2668($fp)
	lw $t1, -2660($fp)
	add $t0, $t0, $t1
	sw $t0, -2672($fp)
	lw $t0, -2672($fp)
	lw $t1, 0($t0)
	sw $t1, -2676($fp)
	lw $t0, -2676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -2680($fp)
	li $t0, 5
	sw $t0, -2684($fp)
	li $t0, 4
	lw $t1, -2684($fp)
	mul $t0, $t0, $t1
	sw $t0, -2688($fp)
	lw $t0, -2688($fp)
	lw $t1, -2680($fp)
	add $t0, $t0, $t1
	sw $t0, -2692($fp)
	lw $t0, -2692($fp)
	lw $t1, 0($t0)
	sw $t1, -2696($fp)
	lw $t0, -2696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -2700($fp)
	li $t0, 6
	sw $t0, -2704($fp)
	li $t0, 4
	lw $t1, -2704($fp)
	mul $t0, $t0, $t1
	sw $t0, -2708($fp)
	lw $t0, -2708($fp)
	lw $t1, -2700($fp)
	add $t0, $t0, $t1
	sw $t0, -2712($fp)
	lw $t0, -2712($fp)
	lw $t1, 0($t0)
	sw $t1, -2716($fp)
	lw $t0, -2716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -2720($fp)
	li $t0, 7
	sw $t0, -2724($fp)
	li $t0, 4
	lw $t1, -2724($fp)
	mul $t0, $t0, $t1
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	lw $t1, -2720($fp)
	add $t0, $t0, $t1
	sw $t0, -2732($fp)
	lw $t0, -2732($fp)
	lw $t1, 0($t0)
	sw $t1, -2736($fp)
	lw $t0, -2736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -2740($fp)
	li $t0, 8
	sw $t0, -2744($fp)
	li $t0, 4
	lw $t1, -2744($fp)
	mul $t0, $t0, $t1
	sw $t0, -2748($fp)
	lw $t0, -2748($fp)
	lw $t1, -2740($fp)
	add $t0, $t0, $t1
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	lw $t1, 0($t0)
	sw $t1, -2756($fp)
	lw $t0, -2756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -2760($fp)
	li $t0, 9
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
	lw $t0, -896($fp)
	sw $t0, -2780($fp)
	lw $t0, -2780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -908($fp)
	sw $t0, -2784($fp)
	lw $t0, -2784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -920($fp)
	sw $t0, -2788($fp)
	lw $t0, -2788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -2792($fp)
	li $t0, 0
	sw $t0, -2796($fp)
	li $t0, 4
	lw $t1, -2796($fp)
	mul $t0, $t0, $t1
	sw $t0, -2800($fp)
	lw $t0, -2800($fp)
	lw $t1, -2792($fp)
	add $t0, $t0, $t1
	sw $t0, -2804($fp)
	lw $t0, -2804($fp)
	lw $t1, 0($t0)
	sw $t1, -2808($fp)
	lw $t0, -2808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -2812($fp)
	li $t0, 1
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
	lw $t0, -2828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -2832($fp)
	li $t0, 2
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
	addi $t0, $fp, -120
	sw $t0, -2852($fp)
	li $t0, 3
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
	lw $t0, -1028($fp)
	sw $t0, -2872($fp)
	lw $t0, -2872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1040($fp)
	sw $t0, -2876($fp)
	lw $t0, -2876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1052($fp)
	sw $t0, -2880($fp)
	lw $t0, -2880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1064($fp)
	sw $t0, -2884($fp)
	lw $t0, -2884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1076($fp)
	sw $t0, -2888($fp)
	lw $t0, -2888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1088($fp)
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1100($fp)
	sw $t0, -2896($fp)
	lw $t0, -2896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1112($fp)
	sw $t0, -2900($fp)
	lw $t0, -2900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1124($fp)
	sw $t0, -2904($fp)
	lw $t0, -2904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -2908($fp)
	li $t0, 0
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
	addi $t0, $fp, -148
	sw $t0, -2928($fp)
	li $t0, 1
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
	addi $t0, $fp, -148
	sw $t0, -2948($fp)
	li $t0, 2
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
	addi $t0, $fp, -148
	sw $t0, -2968($fp)
	li $t0, 3
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
	addi $t0, $fp, -148
	sw $t0, -2988($fp)
	li $t0, 4
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
	addi $t0, $fp, -148
	sw $t0, -3008($fp)
	li $t0, 5
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
	addi $t0, $fp, -148
	sw $t0, -3028($fp)
	li $t0, 6
	sw $t0, -3032($fp)
	li $t0, 4
	lw $t1, -3032($fp)
	mul $t0, $t0, $t1
	sw $t0, -3036($fp)
	lw $t0, -3036($fp)
	lw $t1, -3028($fp)
	add $t0, $t0, $t1
	sw $t0, -3040($fp)
	lw $t0, -3040($fp)
	lw $t1, 0($t0)
	sw $t1, -3044($fp)
	lw $t0, -3044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1304($fp)
	sw $t0, -3048($fp)
	lw $t0, -3048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1316($fp)
	sw $t0, -3052($fp)
	lw $t0, -3052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -156
	sw $t0, -3056($fp)
	li $t0, 0
	sw $t0, -3060($fp)
	li $t0, 4
	lw $t1, -3060($fp)
	mul $t0, $t0, $t1
	sw $t0, -3064($fp)
	lw $t0, -3064($fp)
	lw $t1, -3056($fp)
	add $t0, $t0, $t1
	sw $t0, -3068($fp)
	lw $t0, -3068($fp)
	lw $t1, 0($t0)
	sw $t1, -3072($fp)
	lw $t0, -3072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -156
	sw $t0, -3076($fp)
	li $t0, 1
	sw $t0, -3080($fp)
	li $t0, 4
	lw $t1, -3080($fp)
	mul $t0, $t0, $t1
	sw $t0, -3084($fp)
	lw $t0, -3084($fp)
	lw $t1, -3076($fp)
	add $t0, $t0, $t1
	sw $t0, -3088($fp)
	lw $t0, -3088($fp)
	lw $t1, 0($t0)
	sw $t1, -3092($fp)
	lw $t0, -3092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1376($fp)
	sw $t0, -3096($fp)
	lw $t0, -3096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1388($fp)
	sw $t0, -3100($fp)
	lw $t0, -3100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1400($fp)
	sw $t0, -3104($fp)
	lw $t0, -3104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1412($fp)
	sw $t0, -3108($fp)
	lw $t0, -3108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1424($fp)
	sw $t0, -3112($fp)
	lw $t0, -3112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1436($fp)
	sw $t0, -3116($fp)
	lw $t0, -3116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1448($fp)
	sw $t0, -3120($fp)
	lw $t0, -3120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1460($fp)
	sw $t0, -3124($fp)
	lw $t0, -3124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
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
	lw $t0, -3144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -3148($fp)
	li $t0, 1
	sw $t0, -3152($fp)
	li $t0, 4
	lw $t1, -3152($fp)
	mul $t0, $t0, $t1
	sw $t0, -3156($fp)
	lw $t0, -3156($fp)
	lw $t1, -3148($fp)
	add $t0, $t0, $t1
	sw $t0, -3160($fp)
	lw $t0, -3160($fp)
	lw $t1, 0($t0)
	sw $t1, -3164($fp)
	lw $t0, -3164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -3168($fp)
	li $t0, 2
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
	addi $t0, $fp, -192
	sw $t0, -3188($fp)
	li $t0, 3
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
	addi $t0, $fp, -192
	sw $t0, -3208($fp)
	li $t0, 4
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
	addi $t0, $fp, -192
	sw $t0, -3228($fp)
	li $t0, 5
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
	addi $t0, $fp, -192
	sw $t0, -3248($fp)
	li $t0, 6
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
	lw $t0, -3264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -3268($fp)
	li $t0, 7
	sw $t0, -3272($fp)
	li $t0, 4
	lw $t1, -3272($fp)
	mul $t0, $t0, $t1
	sw $t0, -3276($fp)
	lw $t0, -3276($fp)
	lw $t1, -3268($fp)
	add $t0, $t0, $t1
	sw $t0, -3280($fp)
	lw $t0, -3280($fp)
	lw $t1, 0($t0)
	sw $t1, -3284($fp)
	lw $t0, -3284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -3288($fp)
	li $t0, 8
	sw $t0, -3292($fp)
	li $t0, 4
	lw $t1, -3292($fp)
	mul $t0, $t0, $t1
	sw $t0, -3296($fp)
	lw $t0, -3296($fp)
	lw $t1, -3288($fp)
	add $t0, $t0, $t1
	sw $t0, -3300($fp)
	lw $t0, -3300($fp)
	lw $t1, 0($t0)
	sw $t1, -3304($fp)
	lw $t0, -3304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -3308($fp)
	li $t0, 0
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
	lw $t0, -3324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -3328($fp)
	li $t0, 1
	sw $t0, -3332($fp)
	li $t0, 4
	lw $t1, -3332($fp)
	mul $t0, $t0, $t1
	sw $t0, -3336($fp)
	lw $t0, -3336($fp)
	lw $t1, -3328($fp)
	add $t0, $t0, $t1
	sw $t0, -3340($fp)
	lw $t0, -3340($fp)
	lw $t1, 0($t0)
	sw $t1, -3344($fp)
	lw $t0, -3344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -3348($fp)
	li $t0, 2
	sw $t0, -3352($fp)
	li $t0, 4
	lw $t1, -3352($fp)
	mul $t0, $t0, $t1
	sw $t0, -3356($fp)
	lw $t0, -3356($fp)
	lw $t1, -3348($fp)
	add $t0, $t0, $t1
	sw $t0, -3360($fp)
	lw $t0, -3360($fp)
	lw $t1, 0($t0)
	sw $t1, -3364($fp)
	lw $t0, -3364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -3368($fp)
	li $t0, 3
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
	lw $t0, -3384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -3388($fp)
	li $t0, 4
	sw $t0, -3392($fp)
	li $t0, 4
	lw $t1, -3392($fp)
	mul $t0, $t0, $t1
	sw $t0, -3396($fp)
	lw $t0, -3396($fp)
	lw $t1, -3388($fp)
	add $t0, $t0, $t1
	sw $t0, -3400($fp)
	lw $t0, -3400($fp)
	lw $t1, 0($t0)
	sw $t1, -3404($fp)
	lw $t0, -3404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -3408($fp)
	li $t0, 5
	sw $t0, -3412($fp)
	li $t0, 4
	lw $t1, -3412($fp)
	mul $t0, $t0, $t1
	sw $t0, -3416($fp)
	lw $t0, -3416($fp)
	lw $t1, -3408($fp)
	add $t0, $t0, $t1
	sw $t0, -3420($fp)
	lw $t0, -3420($fp)
	lw $t1, 0($t0)
	sw $t1, -3424($fp)
	lw $t0, -3424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -3428($fp)
	li $t0, 6
	sw $t0, -3432($fp)
	li $t0, 4
	lw $t1, -3432($fp)
	mul $t0, $t0, $t1
	sw $t0, -3436($fp)
	lw $t0, -3436($fp)
	lw $t1, -3428($fp)
	add $t0, $t0, $t1
	sw $t0, -3440($fp)
	lw $t0, -3440($fp)
	lw $t1, 0($t0)
	sw $t1, -3444($fp)
	lw $t0, -3444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -3448($fp)
	li $t0, 7
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
	lw $t0, -3464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -3468($fp)
	li $t0, 8
	sw $t0, -3472($fp)
	li $t0, 4
	lw $t1, -3472($fp)
	mul $t0, $t0, $t1
	sw $t0, -3476($fp)
	lw $t0, -3476($fp)
	lw $t1, -3468($fp)
	add $t0, $t0, $t1
	sw $t0, -3480($fp)
	lw $t0, -3480($fp)
	lw $t1, 0($t0)
	sw $t1, -3484($fp)
	lw $t0, -3484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1904($fp)
	sw $t0, -3488($fp)
	lw $t0, -3488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1916($fp)
	sw $t0, -3492($fp)
	lw $t0, -3492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1928($fp)
	sw $t0, -3496($fp)
	lw $t0, -3496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1940($fp)
	sw $t0, -3500($fp)
	lw $t0, -3500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1952($fp)
	sw $t0, -3504($fp)
	lw $t0, -3504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1964($fp)
	sw $t0, -3508($fp)
	lw $t0, -3508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1976($fp)
	sw $t0, -3512($fp)
	lw $t0, -3512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1988($fp)
	sw $t0, -3516($fp)
	lw $t0, -3516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2000($fp)
	sw $t0, -3520($fp)
	lw $t0, -3520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2012($fp)
	sw $t0, -3524($fp)
	lw $t0, -3524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2024($fp)
	sw $t0, -3528($fp)
	lw $t0, -3528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2036($fp)
	sw $t0, -3532($fp)
	lw $t0, -3532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2048($fp)
	sw $t0, -3536($fp)
	lw $t0, -3536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2060($fp)
	sw $t0, -3540($fp)
	lw $t0, -3540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2072($fp)
	sw $t0, -3544($fp)
	lw $t0, -3544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2084($fp)
	sw $t0, -3548($fp)
	lw $t0, -3548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2096($fp)
	sw $t0, -3552($fp)
	lw $t0, -3552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 49766
	sw $t0, -3556($fp)
	lw $ra, -4($fp)
	lw $v0, -3556($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 19914
	sw $t0, -3596($fp)
	addi $t0, $fp, -3592
	sw $t0, -3600($fp)
	li $t0, 0
	sw $t0, -3604($fp)
	lw $t0, -3604($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3608($fp)
	lw $t0, -3600($fp)
	lw $t1, -3608($fp)
	add $t0, $t0, $t1
	sw $t0, -3612($fp)
	lw $t0, -3596($fp)
	lw $t1, -3612($fp)
	sw $t0, 0($t1)
	lw $t0, -3612($fp)
	lw $t1, 0($t0)
	sw $t1, -3616($fp)
	li $t0, 21586
	sw $t0, -3620($fp)
	addi $t0, $fp, -3592
	sw $t0, -3624($fp)
	li $t0, 1
	sw $t0, -3628($fp)
	lw $t0, -3628($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3632($fp)
	lw $t0, -3624($fp)
	lw $t1, -3632($fp)
	add $t0, $t0, $t1
	sw $t0, -3636($fp)
	lw $t0, -3620($fp)
	lw $t1, -3636($fp)
	sw $t0, 0($t1)
	lw $t0, -3636($fp)
	lw $t1, 0($t0)
	sw $t1, -3640($fp)
	li $t0, 58126
	sw $t0, -3644($fp)
	addi $t0, $fp, -3592
	sw $t0, -3648($fp)
	li $t0, 2
	sw $t0, -3652($fp)
	lw $t0, -3652($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3656($fp)
	lw $t0, -3648($fp)
	lw $t1, -3656($fp)
	add $t0, $t0, $t1
	sw $t0, -3660($fp)
	lw $t0, -3644($fp)
	lw $t1, -3660($fp)
	sw $t0, 0($t1)
	lw $t0, -3660($fp)
	lw $t1, 0($t0)
	sw $t1, -3664($fp)
	li $t0, 14700
	sw $t0, -3668($fp)
	addi $t0, $fp, -3592
	sw $t0, -3672($fp)
	li $t0, 3
	sw $t0, -3676($fp)
	lw $t0, -3676($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3680($fp)
	lw $t0, -3672($fp)
	lw $t1, -3680($fp)
	add $t0, $t0, $t1
	sw $t0, -3684($fp)
	lw $t0, -3668($fp)
	lw $t1, -3684($fp)
	sw $t0, 0($t1)
	lw $t0, -3684($fp)
	lw $t1, 0($t0)
	sw $t1, -3688($fp)
	li $t0, 43499
	sw $t0, -3692($fp)
	addi $t0, $fp, -3592
	sw $t0, -3696($fp)
	li $t0, 4
	sw $t0, -3700($fp)
	lw $t0, -3700($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3704($fp)
	lw $t0, -3696($fp)
	lw $t1, -3704($fp)
	add $t0, $t0, $t1
	sw $t0, -3708($fp)
	lw $t0, -3692($fp)
	lw $t1, -3708($fp)
	sw $t0, 0($t1)
	lw $t0, -3708($fp)
	lw $t1, 0($t0)
	sw $t1, -3712($fp)
	li $t0, 28992
	sw $t0, -3716($fp)
	addi $t0, $fp, -3592
	sw $t0, -3720($fp)
	li $t0, 5
	sw $t0, -3724($fp)
	lw $t0, -3724($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3728($fp)
	lw $t0, -3720($fp)
	lw $t1, -3728($fp)
	add $t0, $t0, $t1
	sw $t0, -3732($fp)
	lw $t0, -3716($fp)
	lw $t1, -3732($fp)
	sw $t0, 0($t1)
	lw $t0, -3732($fp)
	lw $t1, 0($t0)
	sw $t1, -3736($fp)
	li $t0, 45903
	sw $t0, -3740($fp)
	addi $t0, $fp, -3592
	sw $t0, -3744($fp)
	li $t0, 6
	sw $t0, -3748($fp)
	lw $t0, -3748($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3752($fp)
	lw $t0, -3744($fp)
	lw $t1, -3752($fp)
	add $t0, $t0, $t1
	sw $t0, -3756($fp)
	lw $t0, -3740($fp)
	lw $t1, -3756($fp)
	sw $t0, 0($t1)
	lw $t0, -3756($fp)
	lw $t1, 0($t0)
	sw $t1, -3760($fp)
	li $t0, 10076
	sw $t0, -3764($fp)
	addi $t0, $fp, -3592
	sw $t0, -3768($fp)
	li $t0, 7
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
	li $t0, 827
	sw $t0, -3788($fp)
	addi $t0, $fp, -3592
	sw $t0, -3792($fp)
	li $t0, 8
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
	li $t0, 13944
	sw $t0, -3812($fp)
	lw $t0, -3812($fp)
	sw $t0, -3816($fp)
	lw $t0, -3816($fp)
	sw $t0, -3820($fp)
	li $t0, 64554
	sw $t0, -3824($fp)
	lw $t0, -3824($fp)
	sw $t0, -3828($fp)
	lw $t0, -3828($fp)
	sw $t0, -3832($fp)
	li $t0, 0
	sw $t0, -3836($fp)
	li $t0, 10270
	sw $t0, -3840($fp)
	lw $t1, -3840($fp)
	li $t2, 0
	bne $t1, $t2, label164
	j label163
label164:
	li $t0, 3730
	sw $t0, -3844($fp)
	lw $t1, -3844($fp)
	li $t2, 0
	bne $t1, $t2, label163
	j label162
label162:
	li $t0, 1
	sw $t0, -3836($fp)
label163:
label165:
	li $t0, 0
	sw $t0, -3848($fp)
	lw $t0, -2036($fp)
	sw $t0, -3852($fp)
	li $t0, 29310
	sw $t0, -3856($fp)
	lw $t0, -3852($fp)
	lw $t1, -3856($fp)
	add $t0, $t0, $t1
	sw $t0, -3860($fp)
	lw $t1, -3860($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label170
label170:
	li $t0, 62525
	sw $t0, -3864($fp)
	lw $t1, -3864($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label169
label168:
	li $t0, 1
	sw $t0, -3848($fp)
label169:
	li $t0, 0
	sw $t0, -3868($fp)
	li $t0, 0
	sw $t0, -3872($fp)
	li $t0, 21316
	sw $t0, -3876($fp)
	lw $t0, -1940($fp)
	sw $t0, -3880($fp)
	lw $t1, -3876($fp)
	lw $t2, -3880($fp)
	ble $t1, $t2, label173
	j label174
label173:
	li $t0, 1
	sw $t0, -3872($fp)
label174:
	li $t0, 15378
	sw $t0, -3884($fp)
	lw $t1, -3872($fp)
	lw $t2, -3884($fp)
	bgt $t1, $t2, label171
	j label172
label171:
	li $t0, 1
	sw $t0, -3868($fp)
label172:
	li $t0, 0
	sw $t0, -3888($fp)
	li $t0, 14254
	sw $t0, -3892($fp)
	li $t0, 16417
	sw $t0, -3896($fp)
	lw $t0, -3892($fp)
	lw $t1, -3896($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3900($fp)
	lw $t1, -3900($fp)
	li $t2, 0
	bne $t1, $t2, label175
	j label177
label177:
	lw $t0, -2036($fp)
	sw $t0, -3904($fp)
	lw $t1, -3904($fp)
	li $t2, 0
	bne $t1, $t2, label175
	j label176
label175:
	li $t0, 1
	sw $t0, -3888($fp)
label176:
	addi $t0, $fp, -3592
	sw $t0, -3908($fp)
	lw $t0, -1304($fp)
	sw $t0, -3912($fp)
	li $t0, 4
	lw $t1, -3912($fp)
	mul $t0, $t0, $t1
	sw $t0, -3916($fp)
	lw $t0, -3916($fp)
	lw $t1, -3908($fp)
	add $t0, $t0, $t1
	sw $t0, -3920($fp)
	lw $t0, -3920($fp)
	lw $t1, 0($t0)
	sw $t1, -3924($fp)
	li $t0, 0
	lw $t1, -3924($fp)
	sub $t0, $t0, $t1
	sw $t0, -3928($fp)
	lw $t0, -1064($fp)
	sw $t0, -3932($fp)
	lw $t0, -3932($fp)
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	sw $t0, -3936($fp)
	addi $sp, $sp, -4
	lw $t0, -3848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3936($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3940($fp)
	addi $sp, $sp, 24
	lw $t0, -908($fp)
	sw $t0, -3944($fp)
	lw $t0, -3940($fp)
	lw $t1, -3944($fp)
	sub $t0, $t0, $t1
	sw $t0, -3948($fp)
	lw $t1, -3948($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label167
label166:
label178:
	li $t0, 300
	sw $t0, -3952($fp)
	li $t0, 40901
	sw $t0, -3956($fp)
	lw $t0, -3952($fp)
	lw $t1, -3956($fp)
	mul $t0, $t0, $t1
	sw $t0, -3960($fp)
	li $t0, 0
	lw $t1, -3960($fp)
	sub $t0, $t0, $t1
	sw $t0, -3964($fp)
	li $t0, 0
	lw $t1, -3964($fp)
	sub $t0, $t0, $t1
	sw $t0, -3968($fp)
	li $t0, 0
	lw $t1, -3968($fp)
	sub $t0, $t0, $t1
	sw $t0, -3972($fp)
	addi $t0, $fp, -64
	sw $t0, -3976($fp)
	li $t0, 3
	sw $t0, -3980($fp)
	li $t0, 4
	lw $t1, -3980($fp)
	mul $t0, $t0, $t1
	sw $t0, -3984($fp)
	lw $t0, -3984($fp)
	lw $t1, -3976($fp)
	add $t0, $t0, $t1
	sw $t0, -3988($fp)
	lw $t0, -3988($fp)
	lw $t1, 0($t0)
	sw $t1, -3992($fp)
	li $t0, 0
	sw $t0, -3996($fp)
	li $t0, 26417
	sw $t0, -4000($fp)
	lw $t1, -4000($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label181
label183:
	lw $t0, -1448($fp)
	sw $t0, -4004($fp)
	lw $t1, -4004($fp)
	li $t2, 0
	bne $t1, $t2, label181
	j label182
label181:
	li $t0, 1
	sw $t0, -3996($fp)
label182:
	li $t0, 0
	sw $t0, -4008($fp)
	li $t0, 32134
	sw $t0, -4012($fp)
	lw $t0, -1964($fp)
	sw $t0, -4016($fp)
	lw $t0, -4012($fp)
	lw $t1, -4016($fp)
	mul $t0, $t0, $t1
	sw $t0, -4020($fp)
	lw $t0, -2012($fp)
	sw $t0, -4024($fp)
	lw $t1, -4020($fp)
	lw $t2, -4024($fp)
	bge $t1, $t2, label184
	j label185
label184:
	li $t0, 1
	sw $t0, -4008($fp)
label185:
	lw $t0, -1928($fp)
	sw $t0, -4028($fp)
	lw $t0, -896($fp)
	sw $t0, -4032($fp)
	li $t0, 0
	lw $t1, -4032($fp)
	sub $t0, $t0, $t1
	sw $t0, -4036($fp)
	addi $sp, $sp, -4
	lw $t0, -3992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4036($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4040($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -104
	sw $t0, -4044($fp)
	lw $t0, -896($fp)
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
	lw $t0, -4040($fp)
	lw $t1, -4060($fp)
	sub $t0, $t0, $t1
	sw $t0, -4064($fp)
	lw $t1, -3972($fp)
	lw $t2, -4064($fp)
	blt $t1, $t2, label179
	j label180
label179:
label186:
	addi $t0, $fp, -44
	sw $t0, -4068($fp)
	lw $t0, -524($fp)
	sw $t0, -4072($fp)
	li $t0, 13638
	sw $t0, -4076($fp)
	lw $t0, -4072($fp)
	lw $t1, -4076($fp)
	mul $t0, $t0, $t1
	sw $t0, -4080($fp)
	li $t0, 62749
	sw $t0, -4084($fp)
	lw $t0, -3816($fp)
	sw $t0, -4088($fp)
	lw $t0, -4084($fp)
	lw $t1, -4088($fp)
	mul $t0, $t0, $t1
	sw $t0, -4092($fp)
	lw $t0, -4080($fp)
	lw $t1, -4092($fp)
	sub $t0, $t0, $t1
	sw $t0, -4096($fp)
	li $t0, 4
	lw $t1, -4096($fp)
	mul $t0, $t0, $t1
	sw $t0, -4100($fp)
	lw $t0, -4100($fp)
	lw $t1, -4068($fp)
	add $t0, $t0, $t1
	sw $t0, -4104($fp)
	lw $t0, -4104($fp)
	lw $t1, 0($t0)
	sw $t1, -4108($fp)
	lw $t1, -4108($fp)
	li $t2, 0
	bne $t1, $t2, label187
	j label188
label187:
label189:
	lw $t0, -3828($fp)
	sw $t0, -4112($fp)
	li $t0, 0
	lw $t1, -4112($fp)
	sub $t0, $t0, $t1
	sw $t0, -4116($fp)
	addi $t0, $fp, -104
	sw $t0, -4120($fp)
	jal f8
	sw $v0, -4124($fp)
	addi $sp, $sp, 4
	lw $t0, -1316($fp)
	sw $t0, -4128($fp)
	lw $t0, -4124($fp)
	lw $t1, -4128($fp)
	mul $t0, $t0, $t1
	sw $t0, -4132($fp)
	addi $t0, $fp, -156
	sw $t0, -4136($fp)
	lw $t0, -2012($fp)
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
	li $t0, 0
	sw $t0, -4156($fp)
	lw $t0, -1940($fp)
	sw $t0, -4160($fp)
	lw $t0, -1928($fp)
	sw $t0, -4164($fp)
	lw $t1, -4160($fp)
	lw $t2, -4164($fp)
	beq $t1, $t2, label194
	j label193
label194:
	lw $t0, -2096($fp)
	sw $t0, -4168($fp)
	lw $t1, -4168($fp)
	li $t2, 0
	bne $t1, $t2, label192
	j label193
label192:
	li $t0, 1
	sw $t0, -4156($fp)
label193:
	li $t0, 0
	sw $t0, -4172($fp)
	li $t0, 35020
	sw $t0, -4176($fp)
	lw $t1, -4176($fp)
	li $t2, 0
	bne $t1, $t2, label196
	j label195
label195:
	li $t0, 1
	sw $t0, -4172($fp)
label196:
	li $t0, 0
	lw $t1, -4172($fp)
	sub $t0, $t0, $t1
	sw $t0, -4180($fp)
	li $t0, 0
	sw $t0, -4184($fp)
	li $t0, 36152
	sw $t0, -4188($fp)
	li $t0, 0
	lw $t1, -4188($fp)
	sub $t0, $t0, $t1
	sw $t0, -4192($fp)
	lw $t0, -896($fp)
	sw $t0, -4196($fp)
	lw $t1, -4192($fp)
	lw $t2, -4196($fp)
	beq $t1, $t2, label197
	j label198
label197:
	li $t0, 1
	sw $t0, -4184($fp)
label198:
	li $t0, 0
	sw $t0, -4200($fp)
	lw $t0, -1316($fp)
	sw $t0, -4204($fp)
	li $t0, 46580
	sw $t0, -4208($fp)
	lw $t0, -4204($fp)
	lw $t1, -4208($fp)
	add $t0, $t0, $t1
	sw $t0, -4212($fp)
	lw $t0, -1376($fp)
	sw $t0, -4216($fp)
	lw $t1, -4212($fp)
	lw $t2, -4216($fp)
	bgt $t1, $t2, label199
	j label200
label199:
	li $t0, 1
	sw $t0, -4200($fp)
label200:
	li $t0, 13434
	sw $t0, -4220($fp)
	addi $sp, $sp, -4
	lw $t0, -4156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4220($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4224($fp)
	addi $sp, $sp, 24
	lw $t0, -1964($fp)
	sw $t0, -4228($fp)
	lw $t0, -4224($fp)
	lw $t1, -4228($fp)
	add $t0, $t0, $t1
	sw $t0, -4232($fp)
	jal f8
	sw $v0, -4236($fp)
	addi $sp, $sp, 4
	li $t0, 62349
	sw $t0, -4240($fp)
	li $t0, 0
	lw $t1, -4240($fp)
	sub $t0, $t0, $t1
	sw $t0, -4244($fp)
	li $t0, 16238
	sw $t0, -4248($fp)
	lw $t0, -4244($fp)
	lw $t1, -4248($fp)
	sub $t0, $t0, $t1
	sw $t0, -4252($fp)
	addi $sp, $sp, -4
	lw $t0, -4132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4252($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4256($fp)
	addi $sp, $sp, 24
	li $t0, 4
	lw $t1, -4256($fp)
	mul $t0, $t0, $t1
	sw $t0, -4260($fp)
	lw $t0, -4260($fp)
	lw $t1, -4120($fp)
	add $t0, $t0, $t1
	sw $t0, -4264($fp)
	lw $t0, -4264($fp)
	lw $t1, 0($t0)
	sw $t1, -4268($fp)
	lw $t1, -4116($fp)
	lw $t2, -4268($fp)
	bgt $t1, $t2, label190
	j label191
label190:
	li $t0, 0
	sw $t0, -4272($fp)
	li $t0, 39170
	sw $t0, -4276($fp)
	li $t0, 0
	lw $t1, -4276($fp)
	sub $t0, $t0, $t1
	sw $t0, -4280($fp)
	lw $t0, -2048($fp)
	sw $t0, -4284($fp)
	lw $t0, -2060($fp)
	sw $t0, -4288($fp)
	lw $t0, -4284($fp)
	lw $t1, -4288($fp)
	mul $t0, $t0, $t1
	sw $t0, -4292($fp)
	lw $t1, -4280($fp)
	lw $t2, -4292($fp)
	blt $t1, $t2, label201
	j label202
label201:
	li $t0, 1
	sw $t0, -4272($fp)
label202:
	lw $t0, -4272($fp)
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	sw $t0, -4296($fp)
	lw $ra, -4($fp)
	lw $v0, -4296($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label189
label191:
	j label186
label188:
	j label178
label180:
	j label165
label167:
	li $t0, 50852
	sw $t0, -4300($fp)
	lw $t0, -4300($fp)
	sw $t0, -4304($fp)
	lw $t0, -4304($fp)
	sw $t0, -4308($fp)
	li $t0, 0
	sw $t0, -4312($fp)
	jal f8
	sw $v0, -4316($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -192
	sw $t0, -4320($fp)
	li $t0, 7
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
	lw $t0, -4316($fp)
	lw $t1, -4336($fp)
	add $t0, $t0, $t1
	sw $t0, -4340($fp)
	li $t0, 0
	sw $t0, -4344($fp)
	addi $t0, $fp, -192
	sw $t0, -4348($fp)
	li $t0, 6
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
	lw $t1, -4364($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label205
label205:
	li $t0, 1
	sw $t0, -4344($fp)
label206:
	lw $t1, -4340($fp)
	lw $t2, -4344($fp)
	bne $t1, $t2, label203
	j label204
label203:
	li $t0, 1
	sw $t0, -4312($fp)
label204:
	li $t0, 0
	sw $t0, -4368($fp)
	li $t0, 3453
	sw $t0, -4372($fp)
	li $t0, 45163
	sw $t0, -4376($fp)
	lw $t1, -4372($fp)
	lw $t2, -4376($fp)
	beq $t1, $t2, label207
	j label208
label207:
	li $t0, 1
	sw $t0, -4368($fp)
label208:
	lw $t0, -4368($fp)
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	sw $t0, -4380($fp)
	lw $t0, -4380($fp)
	sw $t0, -4304($fp)
	lw $t0, -4304($fp)
	sw $t0, -4384($fp)
	li $t0, 22078
	sw $t0, -4388($fp)
	lw $t0, -4388($fp)
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	sw $t0, -4392($fp)
	li $t0, 0
	sw $t0, -4396($fp)
	addi $t0, $fp, -148
	sw $t0, -4400($fp)
	li $t0, 13724
	sw $t0, -4404($fp)
	li $t0, 48893
	sw $t0, -4408($fp)
	lw $t0, -4404($fp)
	lw $t1, -4408($fp)
	add $t0, $t0, $t1
	sw $t0, -4412($fp)
	lw $t0, -1940($fp)
	sw $t0, -4416($fp)
	lw $t0, -4412($fp)
	lw $t1, -4416($fp)
	sub $t0, $t0, $t1
	sw $t0, -4420($fp)
	li $t0, 4
	lw $t1, -4420($fp)
	mul $t0, $t0, $t1
	sw $t0, -4424($fp)
	lw $t0, -4424($fp)
	lw $t1, -4400($fp)
	add $t0, $t0, $t1
	sw $t0, -4428($fp)
	lw $t0, -4428($fp)
	lw $t1, 0($t0)
	sw $t1, -4432($fp)
	lw $t1, -4432($fp)
	li $t2, 0
	bne $t1, $t2, label209
	j label211
label211:
	li $t0, 0
	sw $t0, -4436($fp)
	lw $t0, -1076($fp)
	sw $t0, -4440($fp)
	lw $t1, -4440($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label212
label212:
	li $t0, 1
	sw $t0, -4436($fp)
label213:
	li $t0, 0
	sw $t0, -4444($fp)
	lw $t0, -908($fp)
	sw $t0, -4448($fp)
	lw $t1, -4448($fp)
	li $t2, 0
	bne $t1, $t2, label215
	j label214
label214:
	li $t0, 1
	sw $t0, -4444($fp)
label215:
	lw $t0, -4436($fp)
	lw $t1, -4444($fp)
	add $t0, $t0, $t1
	sw $t0, -4452($fp)
	lw $t1, -4452($fp)
	li $t2, 0
	bne $t1, $t2, label209
	j label210
label209:
	li $t0, 1
	sw $t0, -4396($fp)
label210:
	addi $t0, $fp, -44
	sw $t0, -4456($fp)
	li $t0, 36332
	sw $t0, -4460($fp)
	li $t0, 30141
	sw $t0, -4464($fp)
	lw $t0, -4460($fp)
	lw $t1, -4464($fp)
	sub $t0, $t0, $t1
	sw $t0, -4468($fp)
	lw $t0, -1964($fp)
	sw $t0, -4472($fp)
	lw $t0, -4468($fp)
	lw $t1, -4472($fp)
	sub $t0, $t0, $t1
	sw $t0, -4476($fp)
	li $t0, 4
	lw $t1, -4476($fp)
	mul $t0, $t0, $t1
	sw $t0, -4480($fp)
	lw $t0, -4480($fp)
	lw $t1, -4456($fp)
	add $t0, $t0, $t1
	sw $t0, -4484($fp)
	lw $t0, -4484($fp)
	lw $t1, 0($t0)
	sw $t1, -4488($fp)
	li $t0, 4673
	sw $t0, -4492($fp)
	lw $t0, -4488($fp)
	lw $t1, -4492($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4496($fp)
	li $t0, 51710
	sw $t0, -4500($fp)
	lw $t0, -4500($fp)
	sw $t0, -4504($fp)
	lw $t0, -4504($fp)
	sw $t0, -4508($fp)
	li $t0, 59451
	sw $t0, -4512($fp)
	lw $t0, -4512($fp)
	sw $t0, -4516($fp)
	lw $t0, -4516($fp)
	sw $t0, -4520($fp)
	li $t0, 1663
	sw $t0, -4524($fp)
	lw $t0, -4524($fp)
	sw $t0, -4528($fp)
	lw $t0, -4528($fp)
	sw $t0, -4532($fp)
	li $t0, 52011
	sw $t0, -4536($fp)
	lw $t0, -4536($fp)
	sw $t0, -4540($fp)
	lw $t0, -4540($fp)
	sw $t0, -4544($fp)
	li $t0, 34816
	sw $t0, -4548($fp)
	lw $t0, -4548($fp)
	sw $t0, -4552($fp)
	lw $t0, -4552($fp)
	sw $t0, -4556($fp)
	lw $t0, -1304($fp)
	sw $t0, -4560($fp)
	li $t0, 33797
	sw $t0, -4564($fp)
	lw $t0, -4560($fp)
	lw $t1, -4564($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4568($fp)
	lw $t0, -1376($fp)
	sw $t0, -4572($fp)
	li $t0, 0
	sw $t0, -4576($fp)
	lw $t0, -4516($fp)
	sw $t0, -4580($fp)
	lw $t1, -4580($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label219
label219:
	li $t0, 1
	sw $t0, -4576($fp)
label220:
	lw $t0, -4572($fp)
	lw $t1, -4576($fp)
	mul $t0, $t0, $t1
	sw $t0, -4584($fp)
	lw $t0, -4540($fp)
	sw $t0, -4588($fp)
	lw $t0, -4588($fp)
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	sw $t0, -4592($fp)
	addi $t0, $fp, -104
	sw $t0, -4596($fp)
	lw $t0, -4528($fp)
	sw $t0, -4600($fp)
	li $t0, 4
	lw $t1, -4600($fp)
	mul $t0, $t0, $t1
	sw $t0, -4604($fp)
	lw $t0, -4604($fp)
	lw $t1, -4596($fp)
	add $t0, $t0, $t1
	sw $t0, -4608($fp)
	lw $t0, -4608($fp)
	lw $t1, 0($t0)
	sw $t1, -4612($fp)
	li $t0, 12892
	sw $t0, -4616($fp)
	lw $t0, -512($fp)
	sw $t0, -4620($fp)
	lw $t0, -4616($fp)
	lw $t1, -4620($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4624($fp)
	li $t0, 10340
	sw $t0, -4628($fp)
	lw $t0, -4624($fp)
	lw $t1, -4628($fp)
	mul $t0, $t0, $t1
	sw $t0, -4632($fp)
	addi $sp, $sp, -4
	lw $t0, -4592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4632($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4636($fp)
	addi $sp, $sp, 16
	lw $t0, -4584($fp)
	lw $t1, -4636($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4640($fp)
	li $t0, 0
	lw $t1, -4640($fp)
	sub $t0, $t0, $t1
	sw $t0, -4644($fp)
	lw $t0, -4568($fp)
	lw $t1, -4644($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4648($fp)
	lw $t1, -4648($fp)
	li $t2, 0
	bne $t1, $t2, label216
	j label217
label216:
	li $t0, 31937
	sw $t0, -4652($fp)
	lw $t0, -4652($fp)
	sw $t0, -4656($fp)
	lw $t0, -4656($fp)
	sw $t0, -4660($fp)
	li $t0, 26531
	sw $t0, -4664($fp)
	lw $t0, -4664($fp)
	sw $t0, -4668($fp)
	lw $t0, -4668($fp)
	sw $t0, -4672($fp)
	li $t0, 0
	sw $t0, -4676($fp)
	li $t0, 0
	sw $t0, -4680($fp)
	lw $t0, -1964($fp)
	sw $t0, -4684($fp)
	lw $t1, -4684($fp)
	li $t2, 0
	bne $t1, $t2, label227
	j label226
label227:
	li $t0, 56007
	sw $t0, -4688($fp)
	lw $t1, -4688($fp)
	li $t2, 0
	bne $t1, $t2, label224
	j label226
label226:
	li $t0, 48965
	sw $t0, -4692($fp)
	lw $t1, -4692($fp)
	li $t2, 0
	bne $t1, $t2, label224
	j label225
label224:
	li $t0, 1
	sw $t0, -4680($fp)
label225:
	li $t0, 0
	sw $t0, -4696($fp)
	li $t0, 20987
	sw $t0, -4700($fp)
	li $t0, 9795
	sw $t0, -4704($fp)
	lw $t0, -4700($fp)
	lw $t1, -4704($fp)
	add $t0, $t0, $t1
	sw $t0, -4708($fp)
	li $t0, 13386
	sw $t0, -4712($fp)
	lw $t1, -4708($fp)
	lw $t2, -4712($fp)
	ble $t1, $t2, label228
	j label229
label228:
	li $t0, 1
	sw $t0, -4696($fp)
label229:
	li $t0, 42769
	sw $t0, -4716($fp)
	lw $t0, -4716($fp)
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -4720($fp)
	lw $t0, -2012($fp)
	sw $t0, -4724($fp)
	lw $t0, -4724($fp)
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	sw $t0, -4728($fp)
	addi $sp, $sp, -4
	lw $t0, -4696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4728($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4732($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -4736($fp)
	li $t0, 7553
	sw $t0, -4740($fp)
	lw $t0, -1040($fp)
	sw $t0, -4744($fp)
	lw $t1, -4740($fp)
	lw $t2, -4744($fp)
	bne $t1, $t2, label232
	j label231
label232:
	li $t0, 28751
	sw $t0, -4748($fp)
	lw $t1, -4748($fp)
	li $t2, 0
	bne $t1, $t2, label230
	j label231
label230:
	li $t0, 1
	sw $t0, -4736($fp)
label231:
	addi $sp, $sp, -4
	lw $t0, -4680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4736($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4752($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -4752($fp)
	sub $t0, $t0, $t1
	sw $t0, -4756($fp)
	lw $t1, -4756($fp)
	li $t2, 0
	bne $t1, $t2, label223
	j label221
label223:
	addi $t0, $fp, -192
	sw $t0, -4760($fp)
	addi $t0, $fp, -156
	sw $t0, -4764($fp)
	li $t0, 0
	sw $t0, -4768($fp)
	li $t0, 4
	lw $t1, -4768($fp)
	mul $t0, $t0, $t1
	sw $t0, -4772($fp)
	lw $t0, -4772($fp)
	lw $t1, -4764($fp)
	add $t0, $t0, $t1
	sw $t0, -4776($fp)
	lw $t0, -4776($fp)
	lw $t1, 0($t0)
	sw $t1, -4780($fp)
	li $t0, 4
	lw $t1, -4780($fp)
	mul $t0, $t0, $t1
	sw $t0, -4784($fp)
	lw $t0, -4784($fp)
	lw $t1, -4760($fp)
	add $t0, $t0, $t1
	sw $t0, -4788($fp)
	lw $t0, -4788($fp)
	lw $t1, 0($t0)
	sw $t1, -4792($fp)
	lw $t1, -4792($fp)
	li $t2, 0
	bne $t1, $t2, label221
	j label222
label221:
	li $t0, 1
	sw $t0, -4676($fp)
label222:
	li $t0, 0
	sw $t0, -4796($fp)
	li $t0, 0
	sw $t0, -4800($fp)
	li $t0, 0
	sw $t0, -4804($fp)
	li $t0, 51591
	sw $t0, -4808($fp)
	lw $t1, -4808($fp)
	li $t2, 0
	bne $t1, $t2, label237
	j label238
label237:
	li $t0, 1
	sw $t0, -4804($fp)
label238:
	li $t0, 0
	sw $t0, -4812($fp)
	li $t0, 29922
	sw $t0, -4816($fp)
	lw $t1, -4816($fp)
	li $t2, 0
	bne $t1, $t2, label240
	j label239
label239:
	li $t0, 1
	sw $t0, -4812($fp)
label240:
	lw $t0, -4804($fp)
	lw $t1, -4812($fp)
	mul $t0, $t0, $t1
	sw $t0, -4820($fp)
	li $t0, 26514
	sw $t0, -4824($fp)
	li $t0, 55044
	sw $t0, -4828($fp)
	lw $t0, -4824($fp)
	lw $t1, -4828($fp)
	mul $t0, $t0, $t1
	sw $t0, -4832($fp)
	lw $t0, -236($fp)
	sw $t0, -4836($fp)
	lw $t0, -4832($fp)
	lw $t1, -4836($fp)
	mul $t0, $t0, $t1
	sw $t0, -4840($fp)
	lw $t1, -4820($fp)
	lw $t2, -4840($fp)
	blt $t1, $t2, label235
	j label236
label235:
	li $t0, 1
	sw $t0, -4800($fp)
label236:
	lw $t0, -1040($fp)
	sw $t0, -4844($fp)
	li $t0, 33373
	sw $t0, -4848($fp)
	lw $t0, -4844($fp)
	lw $t1, -4848($fp)
	mul $t0, $t0, $t1
	sw $t0, -4852($fp)
	li $t0, 0
	lw $t1, -4852($fp)
	sub $t0, $t0, $t1
	sw $t0, -4856($fp)
	lw $t0, -4656($fp)
	sw $t0, -4860($fp)
	lw $t0, -4860($fp)
	sw $t0, -1952($fp)
	lw $t0, -1952($fp)
	sw $t0, -4864($fp)
	li $t0, 0
	sw $t0, -4868($fp)
	li $t0, 58443
	sw $t0, -4872($fp)
	lw $t1, -4872($fp)
	li $t2, 0
	bne $t1, $t2, label242
	j label241
label241:
	li $t0, 1
	sw $t0, -4868($fp)
label242:
	li $t0, 0
	lw $t1, -4868($fp)
	sub $t0, $t0, $t1
	sw $t0, -4876($fp)
	li $t0, 3232
	sw $t0, -4880($fp)
	lw $t0, -4880($fp)
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	sw $t0, -4884($fp)
	li $t0, 0
	sw $t0, -4888($fp)
	li $t0, 0
	sw $t0, -4892($fp)
	li $t0, 9549
	sw $t0, -4896($fp)
	lw $t0, -4552($fp)
	sw $t0, -4900($fp)
	lw $t1, -4896($fp)
	lw $t2, -4900($fp)
	beq $t1, $t2, label245
	j label246
label245:
	li $t0, 1
	sw $t0, -4892($fp)
label246:
	li $t0, 48592
	sw $t0, -4904($fp)
	lw $t1, -4892($fp)
	lw $t2, -4904($fp)
	bne $t1, $t2, label243
	j label244
label243:
	li $t0, 1
	sw $t0, -4888($fp)
label244:
	addi $sp, $sp, -4
	lw $t0, -4876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4888($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4908($fp)
	addi $sp, $sp, 16
	li $t0, 19388
	sw $t0, -4912($fp)
	lw $t0, -4908($fp)
	lw $t1, -4912($fp)
	sub $t0, $t0, $t1
	sw $t0, -4916($fp)
	addi $sp, $sp, -4
	lw $t0, -4856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4916($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4920($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -4920($fp)
	sub $t0, $t0, $t1
	sw $t0, -4924($fp)
	lw $t1, -4800($fp)
	lw $t2, -4924($fp)
	bge $t1, $t2, label233
	j label234
label233:
	li $t0, 1
	sw $t0, -4796($fp)
label234:
	li $t0, 0
	sw $t0, -4928($fp)
	li $t0, 63116
	sw $t0, -4932($fp)
	addi $t0, $fp, -192
	sw $t0, -4936($fp)
	lw $t0, -2072($fp)
	sw $t0, -4940($fp)
	li $t0, 4
	lw $t1, -4940($fp)
	mul $t0, $t0, $t1
	sw $t0, -4944($fp)
	lw $t0, -4944($fp)
	lw $t1, -4936($fp)
	add $t0, $t0, $t1
	sw $t0, -4948($fp)
	lw $t0, -4948($fp)
	lw $t1, 0($t0)
	sw $t1, -4952($fp)
	lw $t1, -4932($fp)
	lw $t2, -4952($fp)
	ble $t1, $t2, label247
	j label248
label247:
	li $t0, 1
	sw $t0, -4928($fp)
label248:
	lw $t0, -4928($fp)
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	sw $t0, -4956($fp)
	lw $t0, -4668($fp)
	sw $t0, -4960($fp)
	li $t0, 0
	lw $t1, -4960($fp)
	sub $t0, $t0, $t1
	sw $t0, -4964($fp)
	j label218
label217:
	li $t0, 0
	sw $t0, -4968($fp)
	jal f8
	sw $v0, -4972($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -4972($fp)
	sub $t0, $t0, $t1
	sw $t0, -4976($fp)
	li $t0, 0
	sw $t0, -4980($fp)
	lw $t0, -1964($fp)
	sw $t0, -4984($fp)
	li $t0, 0
	lw $t1, -4984($fp)
	sub $t0, $t0, $t1
	sw $t0, -4988($fp)
	lw $t1, -4988($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label251
label251:
	li $t0, 1
	sw $t0, -4980($fp)
label252:
	lw $t1, -4976($fp)
	lw $t2, -4980($fp)
	bgt $t1, $t2, label249
	j label250
label249:
	li $t0, 1
	sw $t0, -4968($fp)
label250:
	jal f8
	sw $v0, -4992($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -4996($fp)
	li $t0, 0
	sw $t0, -5000($fp)
	li $t0, 5562
	sw $t0, -5004($fp)
	lw $t1, -5004($fp)
	li $t2, 0
	bne $t1, $t2, label257
	j label256
label256:
	li $t0, 1
	sw $t0, -5000($fp)
label257:
	lw $t0, -4552($fp)
	sw $t0, -5008($fp)
	lw $t0, -5000($fp)
	lw $t1, -5008($fp)
	add $t0, $t0, $t1
	sw $t0, -5012($fp)
	lw $t1, -5012($fp)
	li $t2, 0
	bne $t1, $t2, label253
	j label255
label255:
	addi $t0, $fp, -192
	sw $t0, -5016($fp)
	lw $t0, -1316($fp)
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
	li $t0, 0
	lw $t1, -5032($fp)
	sub $t0, $t0, $t1
	sw $t0, -5036($fp)
	addi $t0, $fp, -156
	sw $t0, -5040($fp)
	lw $t0, -1376($fp)
	sw $t0, -5044($fp)
	li $t0, 4
	lw $t1, -5044($fp)
	mul $t0, $t0, $t1
	sw $t0, -5048($fp)
	lw $t0, -5048($fp)
	lw $t1, -5040($fp)
	add $t0, $t0, $t1
	sw $t0, -5052($fp)
	lw $t0, -5052($fp)
	lw $t1, 0($t0)
	sw $t1, -5056($fp)
	lw $t1, -5036($fp)
	lw $t2, -5056($fp)
	bge $t1, $t2, label253
	j label254
label253:
	li $t0, 1
	sw $t0, -4996($fp)
label254:
label218:
label258:
	li $t0, 0
	sw $t0, -5060($fp)
	addi $t0, $fp, -156
	sw $t0, -5064($fp)
	li $t0, 27289
	sw $t0, -5068($fp)
	lw $t0, -1388($fp)
	sw $t0, -5072($fp)
	lw $t0, -5068($fp)
	lw $t1, -5072($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5076($fp)
	li $t0, 4
	lw $t1, -5076($fp)
	mul $t0, $t0, $t1
	sw $t0, -5080($fp)
	lw $t0, -5080($fp)
	lw $t1, -5064($fp)
	add $t0, $t0, $t1
	sw $t0, -5084($fp)
	lw $t0, -5084($fp)
	lw $t1, 0($t0)
	sw $t1, -5088($fp)
	lw $t1, -5088($fp)
	li $t2, 0
	bne $t1, $t2, label262
	j label261
label261:
	li $t0, 1
	sw $t0, -5060($fp)
label262:
	lw $t0, -1448($fp)
	sw $t0, -5092($fp)
	li $t0, 0
	lw $t1, -5092($fp)
	sub $t0, $t0, $t1
	sw $t0, -5096($fp)
	lw $t0, -5060($fp)
	lw $t1, -5096($fp)
	add $t0, $t0, $t1
	sw $t0, -5100($fp)
	lw $t1, -5100($fp)
	li $t2, 0
	bne $t1, $t2, label259
	j label260
label259:
	li $t0, 0
	sw $t0, -5104($fp)
	addi $t0, $fp, -12
	sw $t0, -5108($fp)
	lw $t0, -908($fp)
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
	li $t0, 0
	sw $t0, -5128($fp)
	lw $t0, -4504($fp)
	sw $t0, -5132($fp)
	lw $t1, -5132($fp)
	li $t2, 0
	bne $t1, $t2, label267
	j label266
label266:
	li $t0, 1
	sw $t0, -5128($fp)
label267:
	lw $t0, -5124($fp)
	lw $t1, -5128($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5136($fp)
	li $t0, 0
	sw $t0, -5140($fp)
	lw $t0, -1964($fp)
	sw $t0, -5144($fp)
	lw $t1, -5144($fp)
	li $t2, 0
	bne $t1, $t2, label269
	j label268
label268:
	li $t0, 1
	sw $t0, -5140($fp)
label269:
	li $t0, 0
	lw $t1, -5140($fp)
	sub $t0, $t0, $t1
	sw $t0, -5148($fp)
	lw $t0, -5136($fp)
	lw $t1, -5148($fp)
	mul $t0, $t0, $t1
	sw $t0, -5152($fp)
	li $t0, 0
	lw $t1, -5152($fp)
	sub $t0, $t0, $t1
	sw $t0, -5156($fp)
	lw $t1, -5156($fp)
	li $t2, 0
	bne $t1, $t2, label263
	j label265
label265:
	li $t0, 33041
	sw $t0, -5160($fp)
	li $t0, 0
	lw $t1, -5160($fp)
	sub $t0, $t0, $t1
	sw $t0, -5164($fp)
	li $t0, 0
	lw $t1, -5164($fp)
	sub $t0, $t0, $t1
	sw $t0, -5168($fp)
	li $t0, 0
	sw $t0, -5172($fp)
	lw $t0, -1316($fp)
	sw $t0, -5176($fp)
	li $t0, 0
	lw $t1, -5176($fp)
	sub $t0, $t0, $t1
	sw $t0, -5180($fp)
	lw $t1, -5180($fp)
	li $t2, 0
	bne $t1, $t2, label271
	j label270
label270:
	li $t0, 1
	sw $t0, -5172($fp)
label271:
	li $t0, 0
	sw $t0, -5184($fp)
	addi $t0, $fp, -156
	sw $t0, -5188($fp)
	li $t0, 1
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
	li $t0, 62105
	sw $t0, -5208($fp)
	lw $t1, -5204($fp)
	lw $t2, -5208($fp)
	ble $t1, $t2, label272
	j label273
label272:
	li $t0, 1
	sw $t0, -5184($fp)
label273:
	addi $sp, $sp, -4
	lw $t0, -5168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5184($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5212($fp)
	addi $sp, $sp, 16
	lw $t1, -5212($fp)
	li $t2, 0
	bne $t1, $t2, label263
	j label264
label263:
	li $t0, 1
	sw $t0, -5104($fp)
label264:
	lw $ra, -4($fp)
	lw $v0, -5104($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label258
label260:
label274:
	addi $t0, $fp, -104
	sw $t0, -5216($fp)
	li $t0, 0
	sw $t0, -5220($fp)
	lw $t0, -1448($fp)
	sw $t0, -5224($fp)
	lw $t1, -5224($fp)
	li $t2, 0
	bne $t1, $t2, label280
	j label279
label280:
	li $t0, 4930
	sw $t0, -5228($fp)
	lw $t1, -5228($fp)
	li $t2, 0
	bne $t1, $t2, label278
	j label279
label278:
	li $t0, 1
	sw $t0, -5220($fp)
label279:
	li $t0, 4
	lw $t1, -5220($fp)
	mul $t0, $t0, $t1
	sw $t0, -5232($fp)
	lw $t0, -5232($fp)
	lw $t1, -5216($fp)
	add $t0, $t0, $t1
	sw $t0, -5236($fp)
	lw $t0, -5236($fp)
	lw $t1, 0($t0)
	sw $t1, -5240($fp)
	lw $t1, -5240($fp)
	li $t2, 0
	bne $t1, $t2, label275
	j label277
label277:
	li $t0, 6909
	sw $t0, -5244($fp)
	lw $t0, -5244($fp)
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	sw $t0, -5248($fp)
	lw $t0, -2024($fp)
	sw $t0, -5252($fp)
	lw $t0, -5252($fp)
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -5256($fp)
	lw $t0, -1076($fp)
	sw $t0, -5260($fp)
	addi $sp, $sp, -4
	lw $t0, -5248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5260($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5264($fp)
	addi $sp, $sp, 16
	lw $t0, -1088($fp)
	sw $t0, -5268($fp)
	lw $t0, -5264($fp)
	lw $t1, -5268($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5272($fp)
	lw $t1, -5272($fp)
	li $t2, 0
	bne $t1, $t2, label275
	j label276
label275:
	li $t0, 0
	sw $t0, -5276($fp)
	addi $t0, $fp, -104
	sw $t0, -5280($fp)
	li $t0, 5
	sw $t0, -5284($fp)
	li $t0, 4
	lw $t1, -5284($fp)
	mul $t0, $t0, $t1
	sw $t0, -5288($fp)
	lw $t0, -5288($fp)
	lw $t1, -5280($fp)
	add $t0, $t0, $t1
	sw $t0, -5292($fp)
	lw $t0, -5292($fp)
	lw $t1, 0($t0)
	sw $t1, -5296($fp)
	lw $t1, -5296($fp)
	li $t2, 0
	bne $t1, $t2, label286
	j label285
label285:
	li $t0, 1
	sw $t0, -5276($fp)
label286:
	li $t0, 0
	sw $t0, -5300($fp)
	lw $t0, -2012($fp)
	sw $t0, -5304($fp)
	lw $t1, -5304($fp)
	li $t2, 0
	bne $t1, $t2, label287
	j label290
label290:
	li $t0, 37988
	sw $t0, -5308($fp)
	lw $t1, -5308($fp)
	li $t2, 0
	bne $t1, $t2, label287
	j label289
label289:
	li $t0, 22080
	sw $t0, -5312($fp)
	lw $t1, -5312($fp)
	li $t2, 0
	bne $t1, $t2, label287
	j label288
label287:
	li $t0, 1
	sw $t0, -5300($fp)
label288:
	li $t0, 0
	sw $t0, -5316($fp)
	lw $t0, -1100($fp)
	sw $t0, -5320($fp)
	lw $t1, -5320($fp)
	li $t2, 0
	bne $t1, $t2, label294
	j label293
label294:
	lw $t0, -2024($fp)
	sw $t0, -5324($fp)
	lw $t1, -5324($fp)
	li $t2, 0
	bne $t1, $t2, label291
	j label293
label293:
	lw $t0, -524($fp)
	sw $t0, -5328($fp)
	lw $t1, -5328($fp)
	li $t2, 0
	bne $t1, $t2, label291
	j label292
label291:
	li $t0, 1
	sw $t0, -5316($fp)
label292:
	li $t0, 0
	sw $t0, -5332($fp)
	lw $t0, -1316($fp)
	sw $t0, -5336($fp)
	lw $t0, -1964($fp)
	sw $t0, -5340($fp)
	lw $t1, -5336($fp)
	lw $t2, -5340($fp)
	blt $t1, $t2, label297
	j label296
label297:
	lw $t0, -2012($fp)
	sw $t0, -5344($fp)
	lw $t1, -5344($fp)
	li $t2, 0
	bne $t1, $t2, label295
	j label296
label295:
	li $t0, 1
	sw $t0, -5332($fp)
label296:
	li $t0, 0
	sw $t0, -5348($fp)
	li $t0, 0
	sw $t0, -5352($fp)
	lw $t0, -2000($fp)
	sw $t0, -5356($fp)
	lw $t0, -2012($fp)
	sw $t0, -5360($fp)
	lw $t1, -5356($fp)
	lw $t2, -5360($fp)
	beq $t1, $t2, label303
	j label302
label303:
	li $t0, 8694
	sw $t0, -5364($fp)
	lw $t1, -5364($fp)
	li $t2, 0
	bne $t1, $t2, label301
	j label302
label301:
	li $t0, 1
	sw $t0, -5352($fp)
label302:
	lw $t0, -1376($fp)
	sw $t0, -5368($fp)
	lw $t0, -1988($fp)
	sw $t0, -5372($fp)
	lw $t0, -5368($fp)
	lw $t1, -5372($fp)
	add $t0, $t0, $t1
	sw $t0, -5376($fp)
	lw $t0, -1976($fp)
	sw $t0, -5380($fp)
	lw $t0, -5380($fp)
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	sw $t0, -5384($fp)
	addi $sp, $sp, -4
	lw $t0, -5352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5384($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5388($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -5392($fp)
	addi $t0, $fp, -228
	sw $t0, -5396($fp)
	lw $t0, -1904($fp)
	sw $t0, -5400($fp)
	li $t0, 4
	lw $t1, -5400($fp)
	mul $t0, $t0, $t1
	sw $t0, -5404($fp)
	lw $t0, -5404($fp)
	lw $t1, -5396($fp)
	add $t0, $t0, $t1
	sw $t0, -5408($fp)
	lw $t0, -5408($fp)
	lw $t1, 0($t0)
	sw $t1, -5412($fp)
	lw $t1, -5412($fp)
	li $t2, 0
	bne $t1, $t2, label305
	j label304
label304:
	li $t0, 1
	sw $t0, -5392($fp)
label305:
	li $t0, 0
	sw $t0, -5416($fp)
	li $t0, 14462
	sw $t0, -5420($fp)
	li $t0, 28193
	sw $t0, -5424($fp)
	lw $t1, -5420($fp)
	lw $t2, -5424($fp)
	blt $t1, $t2, label306
	j label307
label306:
	li $t0, 1
	sw $t0, -5416($fp)
label307:
	addi $sp, $sp, -4
	lw $t0, -5388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5416($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5428($fp)
	addi $sp, $sp, 16
	lw $t1, -5428($fp)
	li $t2, 0
	bne $t1, $t2, label298
	j label300
label300:
	li $t0, 35449
	sw $t0, -5432($fp)
	lw $t1, -5432($fp)
	li $t2, 0
	bne $t1, $t2, label298
	j label299
label298:
	li $t0, 1
	sw $t0, -5348($fp)
label299:
	li $t0, 0
	sw $t0, -5436($fp)
	lw $t0, -1088($fp)
	sw $t0, -5440($fp)
	lw $t0, -1904($fp)
	sw $t0, -5444($fp)
	lw $t0, -5440($fp)
	lw $t1, -5444($fp)
	mul $t0, $t0, $t1
	sw $t0, -5448($fp)
	lw $t0, -2000($fp)
	sw $t0, -5452($fp)
	lw $t1, -5448($fp)
	lw $t2, -5452($fp)
	bgt $t1, $t2, label308
	j label309
label308:
	li $t0, 1
	sw $t0, -5436($fp)
label309:
	addi $sp, $sp, -4
	lw $t0, -5300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5436($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5456($fp)
	addi $sp, $sp, 24
	lw $t0, -5276($fp)
	lw $t1, -5456($fp)
	sub $t0, $t0, $t1
	sw $t0, -5460($fp)
	lw $t1, -5460($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label282
label284:
	lw $t0, -1964($fp)
	sw $t0, -5464($fp)
	li $t0, 0
	lw $t1, -5464($fp)
	sub $t0, $t0, $t1
	sw $t0, -5468($fp)
	lw $t0, -296($fp)
	sw $t0, -5472($fp)
	li $t0, 25920
	sw $t0, -5476($fp)
	lw $t0, -5472($fp)
	lw $t1, -5476($fp)
	sub $t0, $t0, $t1
	sw $t0, -5480($fp)
	lw $t1, -5468($fp)
	lw $t2, -5480($fp)
	blt $t1, $t2, label281
	j label282
label281:
	li $t0, 0
	sw $t0, -5484($fp)
	li $t0, 21417
	sw $t0, -5488($fp)
	li $t0, 0
	lw $t1, -5488($fp)
	sub $t0, $t0, $t1
	sw $t0, -5492($fp)
	li $t0, 0
	lw $t1, -5492($fp)
	sub $t0, $t0, $t1
	sw $t0, -5496($fp)
	lw $t1, -5496($fp)
	li $t2, 0
	bne $t1, $t2, label311
	j label310
label310:
	li $t0, 1
	sw $t0, -5484($fp)
label311:
	li $t0, 0
	sw $t0, -5500($fp)
	li $t0, 0
	sw $t0, -5504($fp)
	li $t0, 55889
	sw $t0, -5508($fp)
	li $t0, 62517
	sw $t0, -5512($fp)
	lw $t0, -5508($fp)
	lw $t1, -5512($fp)
	sub $t0, $t0, $t1
	sw $t0, -5516($fp)
	lw $t1, -5516($fp)
	li $t2, 0
	bne $t1, $t2, label314
	j label316
label316:
	li $t0, 60254
	sw $t0, -5520($fp)
	lw $t1, -5520($fp)
	li $t2, 0
	bne $t1, $t2, label314
	j label315
label314:
	li $t0, 1
	sw $t0, -5504($fp)
label315:
	lw $t0, -1916($fp)
	sw $t0, -5524($fp)
	li $t0, 0
	lw $t1, -5524($fp)
	sub $t0, $t0, $t1
	sw $t0, -5528($fp)
	li $t0, 50705
	sw $t0, -5532($fp)
	lw $t0, -5528($fp)
	lw $t1, -5532($fp)
	sub $t0, $t0, $t1
	sw $t0, -5536($fp)
	li $t0, 0
	sw $t0, -5540($fp)
	lw $t0, -1964($fp)
	sw $t0, -5544($fp)
	li $t0, 7472
	sw $t0, -5548($fp)
	lw $t1, -5544($fp)
	lw $t2, -5548($fp)
	beq $t1, $t2, label317
	j label318
label317:
	li $t0, 1
	sw $t0, -5540($fp)
label318:
	lw $t0, -1076($fp)
	sw $t0, -5552($fp)
	lw $t0, -5552($fp)
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	sw $t0, -5556($fp)
	li $t0, 0
	sw $t0, -5560($fp)
	li $t0, 20783
	sw $t0, -5564($fp)
	li $t0, 29375
	sw $t0, -5568($fp)
	lw $t1, -5564($fp)
	lw $t2, -5568($fp)
	beq $t1, $t2, label319
	j label321
label321:
	lw $t0, -1376($fp)
	sw $t0, -5572($fp)
	lw $t1, -5572($fp)
	li $t2, 0
	bne $t1, $t2, label319
	j label320
label319:
	li $t0, 1
	sw $t0, -5560($fp)
label320:
	addi $sp, $sp, -4
	lw $t0, -5504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5560($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5576($fp)
	addi $sp, $sp, 24
	lw $t1, -5576($fp)
	li $t2, 0
	bne $t1, $t2, label313
	j label312
label312:
	li $t0, 1
	sw $t0, -5500($fp)
label313:
	lw $t0, -5484($fp)
	lw $t1, -5500($fp)
	sub $t0, $t0, $t1
	sw $t0, -5580($fp)
	j label283
label282:
	li $t0, 38945
	sw $t0, -5584($fp)
	lw $t0, -5584($fp)
	sw $t0, -5588($fp)
	lw $t0, -5588($fp)
	sw $t0, -5592($fp)
	li $t0, 213
	sw $t0, -5596($fp)
	lw $t0, -5596($fp)
	sw $t0, -5600($fp)
	lw $t0, -5600($fp)
	sw $t0, -5604($fp)
label322:
	addi $t0, $fp, -104
	sw $t0, -5608($fp)
	li $t0, 9
	sw $t0, -5612($fp)
	li $t0, 4
	lw $t1, -5612($fp)
	mul $t0, $t0, $t1
	sw $t0, -5616($fp)
	lw $t0, -5616($fp)
	lw $t1, -5608($fp)
	add $t0, $t0, $t1
	sw $t0, -5620($fp)
	lw $t0, -5620($fp)
	lw $t1, 0($t0)
	sw $t1, -5624($fp)
	lw $t0, -1928($fp)
	sw $t0, -5628($fp)
	lw $t0, -5624($fp)
	lw $t1, -5628($fp)
	sub $t0, $t0, $t1
	sw $t0, -5632($fp)
	li $t0, 0
	sw $t0, -5636($fp)
	lw $t0, -1940($fp)
	sw $t0, -5640($fp)
	lw $t1, -5640($fp)
	li $t2, 0
	bne $t1, $t2, label326
	j label325
label325:
	li $t0, 1
	sw $t0, -5636($fp)
label326:
	lw $t1, -5632($fp)
	lw $t2, -5636($fp)
	bgt $t1, $t2, label323
	j label324
label323:
	lw $t0, -2000($fp)
	sw $t0, -5644($fp)
	j label322
label324:
	li $t0, 33587
	sw $t0, -5648($fp)
	li $t0, 0
	lw $t1, -5648($fp)
	sub $t0, $t0, $t1
	sw $t0, -5652($fp)
	lw $t1, -5652($fp)
	li $t2, 0
	bne $t1, $t2, label331
	j label330
label331:
	lw $t0, -5600($fp)
	sw $t0, -5656($fp)
	li $t0, 50742
	sw $t0, -5660($fp)
	lw $t0, -5656($fp)
	lw $t1, -5660($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5664($fp)
	lw $t0, -1952($fp)
	sw $t0, -5668($fp)
	lw $t1, -5664($fp)
	lw $t2, -5668($fp)
	blt $t1, $t2, label327
	j label330
label330:
	lw $t0, -1964($fp)
	sw $t0, -5672($fp)
	lw $t1, -5672($fp)
	li $t2, 0
	bne $t1, $t2, label327
	j label328
label327:
	li $t0, 63895
	sw $t0, -5676($fp)
	li $t0, 1
	sw $t0, -5680($fp)
	lw $t0, -5676($fp)
	lw $t1, -5680($fp)
	mul $t0, $t0, $t1
	sw $t0, -5684($fp)
	lw $t1, -5684($fp)
	li $t2, 0
	bne $t1, $t2, label335
	j label333
label335:
	lw $t0, -896($fp)
	sw $t0, -5688($fp)
	lw $t1, -5688($fp)
	li $t2, 0
	bne $t1, $t2, label332
	j label333
label332:
	li $t0, 49985
	sw $t0, -5692($fp)
	li $t0, 55933
	sw $t0, -5696($fp)
	lw $t0, -5692($fp)
	lw $t1, -5696($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5700($fp)
	lw $t0, -5700($fp)
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -5704($fp)
	lw $t0, -5704($fp)
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	sw $t0, -5708($fp)
label333:
label328:
	li $t0, 0
	sw $t0, -5712($fp)
	li $t0, 0
	sw $t0, -5716($fp)
	lw $t0, -896($fp)
	sw $t0, -5720($fp)
	lw $t1, -5720($fp)
	li $t2, 0
	bne $t1, $t2, label342
	j label341
label341:
	li $t0, 1
	sw $t0, -5716($fp)
label342:
	li $t0, 57445
	sw $t0, -5724($fp)
	lw $t0, -5716($fp)
	lw $t1, -5724($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5728($fp)
	addi $t0, $fp, -12
	sw $t0, -5732($fp)
	lw $t0, -1112($fp)
	sw $t0, -5736($fp)
	li $t0, 4
	lw $t1, -5736($fp)
	mul $t0, $t0, $t1
	sw $t0, -5740($fp)
	lw $t0, -5740($fp)
	lw $t1, -5732($fp)
	add $t0, $t0, $t1
	sw $t0, -5744($fp)
	lw $t0, -5744($fp)
	lw $t1, 0($t0)
	sw $t1, -5748($fp)
	lw $t0, -5728($fp)
	lw $t1, -5748($fp)
	sub $t0, $t0, $t1
	sw $t0, -5752($fp)
	jal f8
	sw $v0, -5756($fp)
	addi $sp, $sp, 4
	lw $t0, -1064($fp)
	sw $t0, -5760($fp)
	lw $t0, -5756($fp)
	lw $t1, -5760($fp)
	mul $t0, $t0, $t1
	sw $t0, -5764($fp)
	lw $t1, -5752($fp)
	lw $t2, -5764($fp)
	bgt $t1, $t2, label339
	j label340
label339:
	li $t0, 1
	sw $t0, -5712($fp)
label340:
	li $t0, 17490
	sw $t0, -5768($fp)
	lw $t1, -5712($fp)
	lw $t2, -5768($fp)
	ble $t1, $t2, label336
	j label337
label336:
label343:
	li $t0, 0
	sw $t0, -5772($fp)
	lw $t0, -1940($fp)
	sw $t0, -5776($fp)
	lw $t1, -5776($fp)
	li $t2, 0
	bne $t1, $t2, label347
	j label346
label346:
	li $t0, 1
	sw $t0, -5772($fp)
label347:
	li $t0, 60863
	sw $t0, -5780($fp)
	lw $t0, -5772($fp)
	lw $t1, -5780($fp)
	mul $t0, $t0, $t1
	sw $t0, -5784($fp)
	lw $t0, -1076($fp)
	sw $t0, -5788($fp)
	lw $t0, -236($fp)
	sw $t0, -5792($fp)
	lw $t0, -5788($fp)
	lw $t1, -5792($fp)
	mul $t0, $t0, $t1
	sw $t0, -5796($fp)
	lw $t0, -5784($fp)
	lw $t1, -5796($fp)
	sub $t0, $t0, $t1
	sw $t0, -5800($fp)
	li $t0, 64355
	sw $t0, -5804($fp)
	lw $t0, -1040($fp)
	sw $t0, -5808($fp)
	lw $t0, -5804($fp)
	lw $t1, -5808($fp)
	mul $t0, $t0, $t1
	sw $t0, -5812($fp)
	li $t0, 16933
	sw $t0, -5816($fp)
	lw $t0, -5812($fp)
	lw $t1, -5816($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5820($fp)
	lw $t0, -5800($fp)
	lw $t1, -5820($fp)
	add $t0, $t0, $t1
	sw $t0, -5824($fp)
	li $t0, 26788
	sw $t0, -5828($fp)
	lw $t1, -5824($fp)
	lw $t2, -5828($fp)
	beq $t1, $t2, label344
	j label345
label344:
	addi $t0, $fp, -104
	sw $t0, -5832($fp)
	addi $t0, $fp, -148
	sw $t0, -5836($fp)
	lw $t0, -1100($fp)
	sw $t0, -5840($fp)
	li $t0, 4
	lw $t1, -5840($fp)
	mul $t0, $t0, $t1
	sw $t0, -5844($fp)
	lw $t0, -5844($fp)
	lw $t1, -5836($fp)
	add $t0, $t0, $t1
	sw $t0, -5848($fp)
	lw $t0, -5848($fp)
	lw $t1, 0($t0)
	sw $t1, -5852($fp)
	li $t0, 13281
	sw $t0, -5856($fp)
	lw $t0, -5852($fp)
	lw $t1, -5856($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5860($fp)
	li $t0, 4
	lw $t1, -5860($fp)
	mul $t0, $t0, $t1
	sw $t0, -5864($fp)
	lw $t0, -5864($fp)
	lw $t1, -5832($fp)
	add $t0, $t0, $t1
	sw $t0, -5868($fp)
	lw $t0, -5868($fp)
	lw $t1, 0($t0)
	sw $t1, -5872($fp)
	jal f8
	sw $v0, -5876($fp)
	addi $sp, $sp, 4
	lw $t0, -5872($fp)
	lw $t1, -5876($fp)
	mul $t0, $t0, $t1
	sw $t0, -5880($fp)
	j label343
label345:
	j label338
label337:
	li $t0, 45126
	sw $t0, -5884($fp)
	lw $t0, -5588($fp)
	sw $t0, -5888($fp)
	lw $t0, -5884($fp)
	lw $t1, -5888($fp)
	add $t0, $t0, $t1
	sw $t0, -5892($fp)
label338:
label283:
	j label274
label276:
label348:
	li $t0, 0
	sw $t0, -5896($fp)
	addi $t0, $fp, -44
	sw $t0, -5900($fp)
	li $t0, 3
	sw $t0, -5904($fp)
	li $t0, 4
	lw $t1, -5904($fp)
	mul $t0, $t0, $t1
	sw $t0, -5908($fp)
	lw $t0, -5908($fp)
	lw $t1, -5900($fp)
	add $t0, $t0, $t1
	sw $t0, -5912($fp)
	lw $t0, -5912($fp)
	lw $t1, 0($t0)
	sw $t1, -5916($fp)
	li $t0, 0
	lw $t1, -5916($fp)
	sub $t0, $t0, $t1
	sw $t0, -5920($fp)
	lw $t1, -5920($fp)
	li $t2, 0
	bne $t1, $t2, label353
	j label352
label353:
	li $t0, 17579
	sw $t0, -5924($fp)
	lw $t0, -1112($fp)
	sw $t0, -5928($fp)
	lw $t0, -5924($fp)
	lw $t1, -5928($fp)
	sub $t0, $t0, $t1
	sw $t0, -5932($fp)
	lw $t1, -5932($fp)
	li $t2, 0
	bne $t1, $t2, label351
	j label352
label351:
	li $t0, 1
	sw $t0, -5896($fp)
label352:
	lw $t0, -5896($fp)
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	sw $t0, -5936($fp)
	lw $t1, -5936($fp)
	li $t2, 0
	bne $t1, $t2, label349
	j label350
label349:
	lw $t0, -512($fp)
	sw $t0, -5940($fp)
	li $t0, 57563
	sw $t0, -5944($fp)
	lw $t0, -5940($fp)
	lw $t1, -5944($fp)
	sub $t0, $t0, $t1
	sw $t0, -5948($fp)
	lw $t0, -5948($fp)
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	sw $t0, -5952($fp)
	lw $t0, -5952($fp)
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	sw $t0, -5956($fp)
	lw $t1, -5956($fp)
	li $t2, 0
	bne $t1, $t2, label354
	j label355
label354:
	addi $t0, $fp, -228
	sw $t0, -5960($fp)
	lw $t0, -2000($fp)
	sw $t0, -5964($fp)
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
	lw $ra, -4($fp)
	lw $v0, -5976($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label356
label355:
	addi $t0, $fp, -44
	sw $t0, -5980($fp)
	li $t0, 4
	sw $t0, -5984($fp)
	li $t0, 4
	lw $t1, -5984($fp)
	mul $t0, $t0, $t1
	sw $t0, -5988($fp)
	lw $t0, -5988($fp)
	lw $t1, -5980($fp)
	add $t0, $t0, $t1
	sw $t0, -5992($fp)
	lw $t0, -5992($fp)
	lw $t1, 0($t0)
	sw $t1, -5996($fp)
	lw $t0, -1100($fp)
	sw $t0, -6000($fp)
	li $t0, 12810
	sw $t0, -6004($fp)
	lw $t0, -6000($fp)
	lw $t1, -6004($fp)
	add $t0, $t0, $t1
	sw $t0, -6008($fp)
	lw $t1, -5996($fp)
	lw $t2, -6008($fp)
	beq $t1, $t2, label360
	j label358
label360:
	li $t0, 0
	sw $t0, -6012($fp)
	lw $t0, -2060($fp)
	sw $t0, -6016($fp)
	li $t0, 38490
	sw $t0, -6020($fp)
	lw $t1, -6016($fp)
	lw $t2, -6020($fp)
	bge $t1, $t2, label361
	j label362
label361:
	li $t0, 1
	sw $t0, -6012($fp)
label362:
	li $t0, 0
	sw $t0, -6024($fp)
	li $t0, 46469
	sw $t0, -6028($fp)
	lw $t1, -6028($fp)
	li $t2, 0
	bne $t1, $t2, label364
	j label363
label363:
	li $t0, 1
	sw $t0, -6024($fp)
label364:
	lw $t1, -6012($fp)
	lw $t2, -6024($fp)
	blt $t1, $t2, label357
	j label358
label357:
	lw $t0, -1904($fp)
	sw $t0, -6032($fp)
	addi $t0, $fp, -64
	sw $t0, -6036($fp)
	li $t0, 2
	sw $t0, -6040($fp)
	li $t0, 4
	lw $t1, -6040($fp)
	mul $t0, $t0, $t1
	sw $t0, -6044($fp)
	lw $t0, -6044($fp)
	lw $t1, -6036($fp)
	add $t0, $t0, $t1
	sw $t0, -6048($fp)
	lw $t0, -6048($fp)
	lw $t1, 0($t0)
	sw $t1, -6052($fp)
	lw $t0, -6032($fp)
	lw $t1, -6052($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6056($fp)
	addi $t0, $fp, -156
	sw $t0, -6060($fp)
	lw $t0, -920($fp)
	sw $t0, -6064($fp)
	li $t0, 4
	lw $t1, -6064($fp)
	mul $t0, $t0, $t1
	sw $t0, -6068($fp)
	lw $t0, -6068($fp)
	lw $t1, -6060($fp)
	add $t0, $t0, $t1
	sw $t0, -6072($fp)
	lw $t0, -6072($fp)
	lw $t1, 0($t0)
	sw $t1, -6076($fp)
	jal f8
	sw $v0, -6080($fp)
	addi $sp, $sp, 4
	lw $t0, -6076($fp)
	lw $t1, -6080($fp)
	add $t0, $t0, $t1
	sw $t0, -6084($fp)
	lw $t1, -6056($fp)
	lw $t2, -6084($fp)
	bgt $t1, $t2, label365
	j label366
label365:
	li $t0, 0
	sw $t0, -6088($fp)
	lw $t0, -2048($fp)
	sw $t0, -6092($fp)
	li $t0, 11714
	sw $t0, -6096($fp)
	lw $t0, -6092($fp)
	lw $t1, -6096($fp)
	sub $t0, $t0, $t1
	sw $t0, -6100($fp)
	li $t0, 31065
	sw $t0, -6104($fp)
	lw $t1, -6100($fp)
	lw $t2, -6104($fp)
	bne $t1, $t2, label368
	j label369
label368:
	li $t0, 1
	sw $t0, -6088($fp)
label369:
	li $t0, 0
	sw $t0, -6108($fp)
	li $t0, 0
	sw $t0, -6112($fp)
	li $t0, 60585
	sw $t0, -6116($fp)
	lw $t0, -1400($fp)
	sw $t0, -6120($fp)
	lw $t1, -6116($fp)
	lw $t2, -6120($fp)
	bge $t1, $t2, label372
	j label373
label372:
	li $t0, 1
	sw $t0, -6112($fp)
label373:
	lw $t0, -1412($fp)
	sw $t0, -6124($fp)
	lw $t1, -6112($fp)
	lw $t2, -6124($fp)
	bgt $t1, $t2, label370
	j label371
label370:
	li $t0, 1
	sw $t0, -6108($fp)
label371:
	li $t0, 0
	sw $t0, -6128($fp)
	lw $t0, -1064($fp)
	sw $t0, -6132($fp)
	li $t0, 45859
	sw $t0, -6136($fp)
	lw $t0, -6132($fp)
	lw $t1, -6136($fp)
	mul $t0, $t0, $t1
	sw $t0, -6140($fp)
	lw $t1, -6140($fp)
	li $t2, 0
	bne $t1, $t2, label376
	j label375
label376:
	lw $t0, -500($fp)
	sw $t0, -6144($fp)
	lw $t1, -6144($fp)
	li $t2, 0
	bne $t1, $t2, label374
	j label375
label374:
	li $t0, 1
	sw $t0, -6128($fp)
label375:
	jal f8
	sw $v0, -6148($fp)
	addi $sp, $sp, 4
	jal f8
	sw $v0, -6152($fp)
	addi $sp, $sp, 4
	addi $sp, $sp, -4
	lw $t0, -6088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6152($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6156($fp)
	addi $sp, $sp, 24
	li $t0, 58945
	sw $t0, -6160($fp)
	lw $t0, -6156($fp)
	lw $t1, -6160($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6164($fp)
	li $t0, 0
	sw $t0, -6168($fp)
	lw $t0, -1028($fp)
	sw $t0, -6172($fp)
	lw $t0, -1040($fp)
	sw $t0, -6176($fp)
	lw $t0, -6172($fp)
	lw $t1, -6176($fp)
	sub $t0, $t0, $t1
	sw $t0, -6180($fp)
	lw $t1, -6180($fp)
	li $t2, 0
	bne $t1, $t2, label377
	j label379
label379:
	lw $t0, -1052($fp)
	sw $t0, -6184($fp)
	lw $t1, -6184($fp)
	li $t2, 0
	bne $t1, $t2, label377
	j label378
label377:
	li $t0, 1
	sw $t0, -6168($fp)
label378:
	lw $t0, -500($fp)
	sw $t0, -6188($fp)
	li $t0, 0
	lw $t1, -6188($fp)
	sub $t0, $t0, $t1
	sw $t0, -6192($fp)
	li $t0, 43663
	sw $t0, -6196($fp)
	lw $t0, -6192($fp)
	lw $t1, -6196($fp)
	add $t0, $t0, $t1
	sw $t0, -6200($fp)
	li $t0, 0
	sw $t0, -6204($fp)
	li $t0, 58233
	sw $t0, -6208($fp)
	lw $t1, -6208($fp)
	li $t2, 0
	bne $t1, $t2, label380
	j label382
label382:
	li $t0, 2252
	sw $t0, -6212($fp)
	lw $t1, -6212($fp)
	li $t2, 0
	bne $t1, $t2, label380
	j label381
label380:
	li $t0, 1
	sw $t0, -6204($fp)
label381:
	addi $t0, $fp, -120
	sw $t0, -6216($fp)
	lw $t0, -1952($fp)
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
	li $t0, 43450
	sw $t0, -6236($fp)
	lw $t0, -6232($fp)
	lw $t1, -6236($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6240($fp)
	addi $sp, $sp, -4
	lw $t0, -6164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6240($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6244($fp)
	addi $sp, $sp, 24
	lw $t0, -1928($fp)
	sw $t0, -6248($fp)
	lw $t0, -6244($fp)
	lw $t1, -6248($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6252($fp)
	li $t0, 0
	sw $t0, -6256($fp)
	lw $t0, -1424($fp)
	sw $t0, -6260($fp)
	lw $t1, -6260($fp)
	li $t2, 0
	bne $t1, $t2, label384
	j label383
label383:
	li $t0, 1
	sw $t0, -6256($fp)
label384:
	lw $t0, -6252($fp)
	lw $t1, -6256($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6264($fp)
	j label367
label366:
	li $t0, 0
	sw $t0, -6268($fp)
	li $t0, 7054
	sw $t0, -6272($fp)
	li $t0, 15514
	sw $t0, -6276($fp)
	lw $t0, -6272($fp)
	lw $t1, -6276($fp)
	sub $t0, $t0, $t1
	sw $t0, -6280($fp)
	lw $t1, -6280($fp)
	li $t2, 0
	bne $t1, $t2, label389
	j label386
label389:
	li $t0, 49342
	sw $t0, -6284($fp)
	li $t0, 64500
	sw $t0, -6288($fp)
	lw $t1, -6284($fp)
	lw $t2, -6288($fp)
	beq $t1, $t2, label388
	j label386
label388:
	li $t0, 33005
	sw $t0, -6292($fp)
	li $t0, 44669
	sw $t0, -6296($fp)
	lw $t0, -6292($fp)
	lw $t1, -6296($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6300($fp)
	lw $t1, -6300($fp)
	li $t2, 0
	bne $t1, $t2, label387
	j label386
label387:
	li $t0, 63319
	sw $t0, -6304($fp)
	lw $t1, -6304($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label386
label385:
	li $t0, 1
	sw $t0, -6268($fp)
label386:
	lw $ra, -4($fp)
	lw $v0, -6268($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label367:
	j label359
label358:
label390:
	jal f8
	sw $v0, -6308($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -6312($fp)
	li $t0, 47107
	sw $t0, -6316($fp)
	lw $t1, -6316($fp)
	li $t2, 0
	bne $t1, $t2, label394
	j label393
label393:
	li $t0, 1
	sw $t0, -6312($fp)
label394:
	li $t0, 33430
	sw $t0, -6320($fp)
	lw $t0, -6312($fp)
	lw $t1, -6320($fp)
	mul $t0, $t0, $t1
	sw $t0, -6324($fp)
	li $t0, 0
	sw $t0, -6328($fp)
	addi $t0, $fp, -12
	sw $t0, -6332($fp)
	li $t0, 1
	sw $t0, -6336($fp)
	li $t0, 4
	lw $t1, -6336($fp)
	mul $t0, $t0, $t1
	sw $t0, -6340($fp)
	lw $t0, -6340($fp)
	lw $t1, -6332($fp)
	add $t0, $t0, $t1
	sw $t0, -6344($fp)
	lw $t0, -6344($fp)
	lw $t1, 0($t0)
	sw $t1, -6348($fp)
	lw $t1, -6348($fp)
	li $t2, 0
	bne $t1, $t2, label397
	j label396
label397:
	lw $t0, -920($fp)
	sw $t0, -6352($fp)
	lw $t1, -6352($fp)
	li $t2, 0
	bne $t1, $t2, label395
	j label396
label395:
	li $t0, 1
	sw $t0, -6328($fp)
label396:
	li $t0, 0
	sw $t0, -6356($fp)
	li $t0, 0
	sw $t0, -6360($fp)
	li $t0, 11064
	sw $t0, -6364($fp)
	lw $t0, -1460($fp)
	sw $t0, -6368($fp)
	lw $t1, -6364($fp)
	lw $t2, -6368($fp)
	bne $t1, $t2, label400
	j label401
label400:
	li $t0, 1
	sw $t0, -6360($fp)
label401:
	li $t0, 29528
	sw $t0, -6372($fp)
	lw $t1, -6360($fp)
	lw $t2, -6372($fp)
	bne $t1, $t2, label398
	j label399
label398:
	li $t0, 1
	sw $t0, -6356($fp)
label399:
	li $t0, 0
	sw $t0, -6376($fp)
	li $t0, 0
	sw $t0, -6380($fp)
	li $t0, 5921
	sw $t0, -6384($fp)
	lw $t0, -1448($fp)
	sw $t0, -6388($fp)
	lw $t1, -6384($fp)
	lw $t2, -6388($fp)
	bge $t1, $t2, label404
	j label405
label404:
	li $t0, 1
	sw $t0, -6380($fp)
label405:
	lw $t0, -1964($fp)
	sw $t0, -6392($fp)
	lw $t1, -6380($fp)
	lw $t2, -6392($fp)
	bge $t1, $t2, label402
	j label403
label402:
	li $t0, 1
	sw $t0, -6376($fp)
label403:
	lw $t0, -1436($fp)
	sw $t0, -6396($fp)
	li $t0, 49938
	sw $t0, -6400($fp)
	lw $t0, -6396($fp)
	lw $t1, -6400($fp)
	add $t0, $t0, $t1
	sw $t0, -6404($fp)
	addi $sp, $sp, -4
	lw $t0, -6324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6404($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6408($fp)
	addi $sp, $sp, 24
	lw $t0, -6308($fp)
	lw $t1, -6408($fp)
	mul $t0, $t0, $t1
	sw $t0, -6412($fp)
	lw $t1, -6412($fp)
	li $t2, 0
	bne $t1, $t2, label391
	j label392
label391:
	li $t0, 3375
	sw $t0, -6416($fp)
	lw $t0, -6416($fp)
	sw $t0, -6420($fp)
	lw $t0, -6420($fp)
	sw $t0, -6424($fp)
	li $t0, 20568
	sw $t0, -6428($fp)
	lw $t0, -6428($fp)
	sw $t0, -6432($fp)
	lw $t0, -6432($fp)
	sw $t0, -6436($fp)
	li $t0, 0
	sw $t0, -6440($fp)
	lw $t0, -1964($fp)
	sw $t0, -6444($fp)
	li $t0, 0
	sw $t0, -6448($fp)
	li $t0, 41865
	sw $t0, -6452($fp)
	lw $t0, -296($fp)
	sw $t0, -6456($fp)
	lw $t1, -6452($fp)
	lw $t2, -6456($fp)
	ble $t1, $t2, label408
	j label409
label408:
	li $t0, 1
	sw $t0, -6448($fp)
label409:
	li $t0, 46240
	sw $t0, -6460($fp)
	lw $t0, -6460($fp)
	sw $t0, -2024($fp)
	lw $t0, -2024($fp)
	sw $t0, -6464($fp)
	li $t0, 0
	sw $t0, -6468($fp)
	lw $t0, -6420($fp)
	sw $t0, -6472($fp)
	lw $t1, -6472($fp)
	li $t2, 0
	bne $t1, $t2, label411
	j label410
label410:
	li $t0, 1
	sw $t0, -6468($fp)
label411:
	li $t0, 0
	lw $t1, -6468($fp)
	sub $t0, $t0, $t1
	sw $t0, -6476($fp)
	addi $sp, $sp, -4
	lw $t0, -6448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6476($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6480($fp)
	addi $sp, $sp, 16
	li $t0, 1501
	sw $t0, -6484($fp)
	lw $t0, -6480($fp)
	lw $t1, -6484($fp)
	mul $t0, $t0, $t1
	sw $t0, -6488($fp)
	jal f8
	sw $v0, -6492($fp)
	addi $sp, $sp, 4
	lw $t0, -6488($fp)
	lw $t1, -6492($fp)
	mul $t0, $t0, $t1
	sw $t0, -6496($fp)
	lw $t1, -6444($fp)
	lw $t2, -6496($fp)
	ble $t1, $t2, label406
	j label407
label406:
	li $t0, 1
	sw $t0, -6440($fp)
label407:
	lw $t0, -1112($fp)
	sw $t0, -6500($fp)
	li $t0, 44219
	sw $t0, -6504($fp)
	li $t0, 0
	lw $t1, -6504($fp)
	sub $t0, $t0, $t1
	sw $t0, -6508($fp)
	lw $t0, -6500($fp)
	lw $t1, -6508($fp)
	mul $t0, $t0, $t1
	sw $t0, -6512($fp)
	lw $t0, -6512($fp)
	sw $t0, -6432($fp)
	lw $t0, -6432($fp)
	sw $t0, -6516($fp)
	j label390
label392:
label359:
label356:
	j label348
label350:
	lw $t0, -236($fp)
	sw $t0, -6520($fp)
	lw $t0, -6520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -6524($fp)
	li $t0, 0
	sw $t0, -6528($fp)
	li $t0, 4
	lw $t1, -6528($fp)
	mul $t0, $t0, $t1
	sw $t0, -6532($fp)
	lw $t0, -6532($fp)
	lw $t1, -6524($fp)
	add $t0, $t0, $t1
	sw $t0, -6536($fp)
	lw $t0, -6536($fp)
	lw $t1, 0($t0)
	sw $t1, -6540($fp)
	lw $t0, -6540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -6544($fp)
	li $t0, 1
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
	lw $t0, -296($fp)
	sw $t0, -6564($fp)
	lw $t0, -6564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -6568($fp)
	li $t0, 0
	sw $t0, -6572($fp)
	li $t0, 4
	lw $t1, -6572($fp)
	mul $t0, $t0, $t1
	sw $t0, -6576($fp)
	lw $t0, -6576($fp)
	lw $t1, -6568($fp)
	add $t0, $t0, $t1
	sw $t0, -6580($fp)
	lw $t0, -6580($fp)
	lw $t1, 0($t0)
	sw $t1, -6584($fp)
	lw $t0, -6584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -6588($fp)
	li $t0, 1
	sw $t0, -6592($fp)
	li $t0, 4
	lw $t1, -6592($fp)
	mul $t0, $t0, $t1
	sw $t0, -6596($fp)
	lw $t0, -6596($fp)
	lw $t1, -6588($fp)
	add $t0, $t0, $t1
	sw $t0, -6600($fp)
	lw $t0, -6600($fp)
	lw $t1, 0($t0)
	sw $t1, -6604($fp)
	lw $t0, -6604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -6608($fp)
	li $t0, 2
	sw $t0, -6612($fp)
	li $t0, 4
	lw $t1, -6612($fp)
	mul $t0, $t0, $t1
	sw $t0, -6616($fp)
	lw $t0, -6616($fp)
	lw $t1, -6608($fp)
	add $t0, $t0, $t1
	sw $t0, -6620($fp)
	lw $t0, -6620($fp)
	lw $t1, 0($t0)
	sw $t1, -6624($fp)
	lw $t0, -6624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -6628($fp)
	li $t0, 3
	sw $t0, -6632($fp)
	li $t0, 4
	lw $t1, -6632($fp)
	mul $t0, $t0, $t1
	sw $t0, -6636($fp)
	lw $t0, -6636($fp)
	lw $t1, -6628($fp)
	add $t0, $t0, $t1
	sw $t0, -6640($fp)
	lw $t0, -6640($fp)
	lw $t1, 0($t0)
	sw $t1, -6644($fp)
	lw $t0, -6644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -6648($fp)
	li $t0, 4
	sw $t0, -6652($fp)
	li $t0, 4
	lw $t1, -6652($fp)
	mul $t0, $t0, $t1
	sw $t0, -6656($fp)
	lw $t0, -6656($fp)
	lw $t1, -6648($fp)
	add $t0, $t0, $t1
	sw $t0, -6660($fp)
	lw $t0, -6660($fp)
	lw $t1, 0($t0)
	sw $t1, -6664($fp)
	lw $t0, -6664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -6668($fp)
	li $t0, 5
	sw $t0, -6672($fp)
	li $t0, 4
	lw $t1, -6672($fp)
	mul $t0, $t0, $t1
	sw $t0, -6676($fp)
	lw $t0, -6676($fp)
	lw $t1, -6668($fp)
	add $t0, $t0, $t1
	sw $t0, -6680($fp)
	lw $t0, -6680($fp)
	lw $t1, 0($t0)
	sw $t1, -6684($fp)
	lw $t0, -6684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -6688($fp)
	li $t0, 6
	sw $t0, -6692($fp)
	li $t0, 4
	lw $t1, -6692($fp)
	mul $t0, $t0, $t1
	sw $t0, -6696($fp)
	lw $t0, -6696($fp)
	lw $t1, -6688($fp)
	add $t0, $t0, $t1
	sw $t0, -6700($fp)
	lw $t0, -6700($fp)
	lw $t1, 0($t0)
	sw $t1, -6704($fp)
	lw $t0, -6704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -6708($fp)
	li $t0, 7
	sw $t0, -6712($fp)
	li $t0, 4
	lw $t1, -6712($fp)
	mul $t0, $t0, $t1
	sw $t0, -6716($fp)
	lw $t0, -6716($fp)
	lw $t1, -6708($fp)
	add $t0, $t0, $t1
	sw $t0, -6720($fp)
	lw $t0, -6720($fp)
	lw $t1, 0($t0)
	sw $t1, -6724($fp)
	lw $t0, -6724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -500($fp)
	sw $t0, -6728($fp)
	lw $t0, -6728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -512($fp)
	sw $t0, -6732($fp)
	lw $t0, -6732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -524($fp)
	sw $t0, -6736($fp)
	lw $t0, -6736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -6740($fp)
	li $t0, 0
	sw $t0, -6744($fp)
	li $t0, 4
	lw $t1, -6744($fp)
	mul $t0, $t0, $t1
	sw $t0, -6748($fp)
	lw $t0, -6748($fp)
	lw $t1, -6740($fp)
	add $t0, $t0, $t1
	sw $t0, -6752($fp)
	lw $t0, -6752($fp)
	lw $t1, 0($t0)
	sw $t1, -6756($fp)
	lw $t0, -6756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -6760($fp)
	li $t0, 1
	sw $t0, -6764($fp)
	li $t0, 4
	lw $t1, -6764($fp)
	mul $t0, $t0, $t1
	sw $t0, -6768($fp)
	lw $t0, -6768($fp)
	lw $t1, -6760($fp)
	add $t0, $t0, $t1
	sw $t0, -6772($fp)
	lw $t0, -6772($fp)
	lw $t1, 0($t0)
	sw $t1, -6776($fp)
	lw $t0, -6776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -6780($fp)
	li $t0, 2
	sw $t0, -6784($fp)
	li $t0, 4
	lw $t1, -6784($fp)
	mul $t0, $t0, $t1
	sw $t0, -6788($fp)
	lw $t0, -6788($fp)
	lw $t1, -6780($fp)
	add $t0, $t0, $t1
	sw $t0, -6792($fp)
	lw $t0, -6792($fp)
	lw $t1, 0($t0)
	sw $t1, -6796($fp)
	lw $t0, -6796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -6800($fp)
	li $t0, 3
	sw $t0, -6804($fp)
	li $t0, 4
	lw $t1, -6804($fp)
	mul $t0, $t0, $t1
	sw $t0, -6808($fp)
	lw $t0, -6808($fp)
	lw $t1, -6800($fp)
	add $t0, $t0, $t1
	sw $t0, -6812($fp)
	lw $t0, -6812($fp)
	lw $t1, 0($t0)
	sw $t1, -6816($fp)
	lw $t0, -6816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -6820($fp)
	li $t0, 4
	sw $t0, -6824($fp)
	li $t0, 4
	lw $t1, -6824($fp)
	mul $t0, $t0, $t1
	sw $t0, -6828($fp)
	lw $t0, -6828($fp)
	lw $t1, -6820($fp)
	add $t0, $t0, $t1
	sw $t0, -6832($fp)
	lw $t0, -6832($fp)
	lw $t1, 0($t0)
	sw $t1, -6836($fp)
	lw $t0, -6836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -6840($fp)
	li $t0, 0
	sw $t0, -6844($fp)
	li $t0, 4
	lw $t1, -6844($fp)
	mul $t0, $t0, $t1
	sw $t0, -6848($fp)
	lw $t0, -6848($fp)
	lw $t1, -6840($fp)
	add $t0, $t0, $t1
	sw $t0, -6852($fp)
	lw $t0, -6852($fp)
	lw $t1, 0($t0)
	sw $t1, -6856($fp)
	lw $t0, -6856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -6860($fp)
	li $t0, 1
	sw $t0, -6864($fp)
	li $t0, 4
	lw $t1, -6864($fp)
	mul $t0, $t0, $t1
	sw $t0, -6868($fp)
	lw $t0, -6868($fp)
	lw $t1, -6860($fp)
	add $t0, $t0, $t1
	sw $t0, -6872($fp)
	lw $t0, -6872($fp)
	lw $t1, 0($t0)
	sw $t1, -6876($fp)
	lw $t0, -6876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -6880($fp)
	li $t0, 2
	sw $t0, -6884($fp)
	li $t0, 4
	lw $t1, -6884($fp)
	mul $t0, $t0, $t1
	sw $t0, -6888($fp)
	lw $t0, -6888($fp)
	lw $t1, -6880($fp)
	add $t0, $t0, $t1
	sw $t0, -6892($fp)
	lw $t0, -6892($fp)
	lw $t1, 0($t0)
	sw $t1, -6896($fp)
	lw $t0, -6896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -6900($fp)
	li $t0, 3
	sw $t0, -6904($fp)
	li $t0, 4
	lw $t1, -6904($fp)
	mul $t0, $t0, $t1
	sw $t0, -6908($fp)
	lw $t0, -6908($fp)
	lw $t1, -6900($fp)
	add $t0, $t0, $t1
	sw $t0, -6912($fp)
	lw $t0, -6912($fp)
	lw $t1, 0($t0)
	sw $t1, -6916($fp)
	lw $t0, -6916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -6920($fp)
	li $t0, 4
	sw $t0, -6924($fp)
	li $t0, 4
	lw $t1, -6924($fp)
	mul $t0, $t0, $t1
	sw $t0, -6928($fp)
	lw $t0, -6928($fp)
	lw $t1, -6920($fp)
	add $t0, $t0, $t1
	sw $t0, -6932($fp)
	lw $t0, -6932($fp)
	lw $t1, 0($t0)
	sw $t1, -6936($fp)
	lw $t0, -6936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -6940($fp)
	li $t0, 5
	sw $t0, -6944($fp)
	li $t0, 4
	lw $t1, -6944($fp)
	mul $t0, $t0, $t1
	sw $t0, -6948($fp)
	lw $t0, -6948($fp)
	lw $t1, -6940($fp)
	add $t0, $t0, $t1
	sw $t0, -6952($fp)
	lw $t0, -6952($fp)
	lw $t1, 0($t0)
	sw $t1, -6956($fp)
	lw $t0, -6956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -6960($fp)
	li $t0, 6
	sw $t0, -6964($fp)
	li $t0, 4
	lw $t1, -6964($fp)
	mul $t0, $t0, $t1
	sw $t0, -6968($fp)
	lw $t0, -6968($fp)
	lw $t1, -6960($fp)
	add $t0, $t0, $t1
	sw $t0, -6972($fp)
	lw $t0, -6972($fp)
	lw $t1, 0($t0)
	sw $t1, -6976($fp)
	lw $t0, -6976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -6980($fp)
	li $t0, 7
	sw $t0, -6984($fp)
	li $t0, 4
	lw $t1, -6984($fp)
	mul $t0, $t0, $t1
	sw $t0, -6988($fp)
	lw $t0, -6988($fp)
	lw $t1, -6980($fp)
	add $t0, $t0, $t1
	sw $t0, -6992($fp)
	lw $t0, -6992($fp)
	lw $t1, 0($t0)
	sw $t1, -6996($fp)
	lw $t0, -6996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -7000($fp)
	li $t0, 8
	sw $t0, -7004($fp)
	li $t0, 4
	lw $t1, -7004($fp)
	mul $t0, $t0, $t1
	sw $t0, -7008($fp)
	lw $t0, -7008($fp)
	lw $t1, -7000($fp)
	add $t0, $t0, $t1
	sw $t0, -7012($fp)
	lw $t0, -7012($fp)
	lw $t1, 0($t0)
	sw $t1, -7016($fp)
	lw $t0, -7016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -7020($fp)
	li $t0, 9
	sw $t0, -7024($fp)
	li $t0, 4
	lw $t1, -7024($fp)
	mul $t0, $t0, $t1
	sw $t0, -7028($fp)
	lw $t0, -7028($fp)
	lw $t1, -7020($fp)
	add $t0, $t0, $t1
	sw $t0, -7032($fp)
	lw $t0, -7032($fp)
	lw $t1, 0($t0)
	sw $t1, -7036($fp)
	lw $t0, -7036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -896($fp)
	sw $t0, -7040($fp)
	lw $t0, -7040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -908($fp)
	sw $t0, -7044($fp)
	lw $t0, -7044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -920($fp)
	sw $t0, -7048($fp)
	lw $t0, -7048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -7052($fp)
	li $t0, 0
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
	addi $t0, $fp, -120
	sw $t0, -7072($fp)
	li $t0, 1
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
	addi $t0, $fp, -120
	sw $t0, -7092($fp)
	li $t0, 2
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
	addi $t0, $fp, -120
	sw $t0, -7112($fp)
	li $t0, 3
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
	lw $t0, -1028($fp)
	sw $t0, -7132($fp)
	lw $t0, -7132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1040($fp)
	sw $t0, -7136($fp)
	lw $t0, -7136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1052($fp)
	sw $t0, -7140($fp)
	lw $t0, -7140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1064($fp)
	sw $t0, -7144($fp)
	lw $t0, -7144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1076($fp)
	sw $t0, -7148($fp)
	lw $t0, -7148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1088($fp)
	sw $t0, -7152($fp)
	lw $t0, -7152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1100($fp)
	sw $t0, -7156($fp)
	lw $t0, -7156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1112($fp)
	sw $t0, -7160($fp)
	lw $t0, -7160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1124($fp)
	sw $t0, -7164($fp)
	lw $t0, -7164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -7168($fp)
	li $t0, 0
	sw $t0, -7172($fp)
	li $t0, 4
	lw $t1, -7172($fp)
	mul $t0, $t0, $t1
	sw $t0, -7176($fp)
	lw $t0, -7176($fp)
	lw $t1, -7168($fp)
	add $t0, $t0, $t1
	sw $t0, -7180($fp)
	lw $t0, -7180($fp)
	lw $t1, 0($t0)
	sw $t1, -7184($fp)
	lw $t0, -7184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -7188($fp)
	li $t0, 1
	sw $t0, -7192($fp)
	li $t0, 4
	lw $t1, -7192($fp)
	mul $t0, $t0, $t1
	sw $t0, -7196($fp)
	lw $t0, -7196($fp)
	lw $t1, -7188($fp)
	add $t0, $t0, $t1
	sw $t0, -7200($fp)
	lw $t0, -7200($fp)
	lw $t1, 0($t0)
	sw $t1, -7204($fp)
	lw $t0, -7204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -7208($fp)
	li $t0, 2
	sw $t0, -7212($fp)
	li $t0, 4
	lw $t1, -7212($fp)
	mul $t0, $t0, $t1
	sw $t0, -7216($fp)
	lw $t0, -7216($fp)
	lw $t1, -7208($fp)
	add $t0, $t0, $t1
	sw $t0, -7220($fp)
	lw $t0, -7220($fp)
	lw $t1, 0($t0)
	sw $t1, -7224($fp)
	lw $t0, -7224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -7228($fp)
	li $t0, 3
	sw $t0, -7232($fp)
	li $t0, 4
	lw $t1, -7232($fp)
	mul $t0, $t0, $t1
	sw $t0, -7236($fp)
	lw $t0, -7236($fp)
	lw $t1, -7228($fp)
	add $t0, $t0, $t1
	sw $t0, -7240($fp)
	lw $t0, -7240($fp)
	lw $t1, 0($t0)
	sw $t1, -7244($fp)
	lw $t0, -7244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -7248($fp)
	li $t0, 4
	sw $t0, -7252($fp)
	li $t0, 4
	lw $t1, -7252($fp)
	mul $t0, $t0, $t1
	sw $t0, -7256($fp)
	lw $t0, -7256($fp)
	lw $t1, -7248($fp)
	add $t0, $t0, $t1
	sw $t0, -7260($fp)
	lw $t0, -7260($fp)
	lw $t1, 0($t0)
	sw $t1, -7264($fp)
	lw $t0, -7264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -7268($fp)
	li $t0, 5
	sw $t0, -7272($fp)
	li $t0, 4
	lw $t1, -7272($fp)
	mul $t0, $t0, $t1
	sw $t0, -7276($fp)
	lw $t0, -7276($fp)
	lw $t1, -7268($fp)
	add $t0, $t0, $t1
	sw $t0, -7280($fp)
	lw $t0, -7280($fp)
	lw $t1, 0($t0)
	sw $t1, -7284($fp)
	lw $t0, -7284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -7288($fp)
	li $t0, 6
	sw $t0, -7292($fp)
	li $t0, 4
	lw $t1, -7292($fp)
	mul $t0, $t0, $t1
	sw $t0, -7296($fp)
	lw $t0, -7296($fp)
	lw $t1, -7288($fp)
	add $t0, $t0, $t1
	sw $t0, -7300($fp)
	lw $t0, -7300($fp)
	lw $t1, 0($t0)
	sw $t1, -7304($fp)
	lw $t0, -7304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1304($fp)
	sw $t0, -7308($fp)
	lw $t0, -7308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1316($fp)
	sw $t0, -7312($fp)
	lw $t0, -7312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -156
	sw $t0, -7316($fp)
	li $t0, 0
	sw $t0, -7320($fp)
	li $t0, 4
	lw $t1, -7320($fp)
	mul $t0, $t0, $t1
	sw $t0, -7324($fp)
	lw $t0, -7324($fp)
	lw $t1, -7316($fp)
	add $t0, $t0, $t1
	sw $t0, -7328($fp)
	lw $t0, -7328($fp)
	lw $t1, 0($t0)
	sw $t1, -7332($fp)
	lw $t0, -7332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -156
	sw $t0, -7336($fp)
	li $t0, 1
	sw $t0, -7340($fp)
	li $t0, 4
	lw $t1, -7340($fp)
	mul $t0, $t0, $t1
	sw $t0, -7344($fp)
	lw $t0, -7344($fp)
	lw $t1, -7336($fp)
	add $t0, $t0, $t1
	sw $t0, -7348($fp)
	lw $t0, -7348($fp)
	lw $t1, 0($t0)
	sw $t1, -7352($fp)
	lw $t0, -7352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1376($fp)
	sw $t0, -7356($fp)
	lw $t0, -7356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1388($fp)
	sw $t0, -7360($fp)
	lw $t0, -7360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1400($fp)
	sw $t0, -7364($fp)
	lw $t0, -7364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1412($fp)
	sw $t0, -7368($fp)
	lw $t0, -7368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1424($fp)
	sw $t0, -7372($fp)
	lw $t0, -7372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1436($fp)
	sw $t0, -7376($fp)
	lw $t0, -7376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1448($fp)
	sw $t0, -7380($fp)
	lw $t0, -7380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1460($fp)
	sw $t0, -7384($fp)
	lw $t0, -7384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -7388($fp)
	li $t0, 0
	sw $t0, -7392($fp)
	li $t0, 4
	lw $t1, -7392($fp)
	mul $t0, $t0, $t1
	sw $t0, -7396($fp)
	lw $t0, -7396($fp)
	lw $t1, -7388($fp)
	add $t0, $t0, $t1
	sw $t0, -7400($fp)
	lw $t0, -7400($fp)
	lw $t1, 0($t0)
	sw $t1, -7404($fp)
	lw $t0, -7404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -7408($fp)
	li $t0, 1
	sw $t0, -7412($fp)
	li $t0, 4
	lw $t1, -7412($fp)
	mul $t0, $t0, $t1
	sw $t0, -7416($fp)
	lw $t0, -7416($fp)
	lw $t1, -7408($fp)
	add $t0, $t0, $t1
	sw $t0, -7420($fp)
	lw $t0, -7420($fp)
	lw $t1, 0($t0)
	sw $t1, -7424($fp)
	lw $t0, -7424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -7428($fp)
	li $t0, 2
	sw $t0, -7432($fp)
	li $t0, 4
	lw $t1, -7432($fp)
	mul $t0, $t0, $t1
	sw $t0, -7436($fp)
	lw $t0, -7436($fp)
	lw $t1, -7428($fp)
	add $t0, $t0, $t1
	sw $t0, -7440($fp)
	lw $t0, -7440($fp)
	lw $t1, 0($t0)
	sw $t1, -7444($fp)
	lw $t0, -7444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -7448($fp)
	li $t0, 3
	sw $t0, -7452($fp)
	li $t0, 4
	lw $t1, -7452($fp)
	mul $t0, $t0, $t1
	sw $t0, -7456($fp)
	lw $t0, -7456($fp)
	lw $t1, -7448($fp)
	add $t0, $t0, $t1
	sw $t0, -7460($fp)
	lw $t0, -7460($fp)
	lw $t1, 0($t0)
	sw $t1, -7464($fp)
	lw $t0, -7464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -7468($fp)
	li $t0, 4
	sw $t0, -7472($fp)
	li $t0, 4
	lw $t1, -7472($fp)
	mul $t0, $t0, $t1
	sw $t0, -7476($fp)
	lw $t0, -7476($fp)
	lw $t1, -7468($fp)
	add $t0, $t0, $t1
	sw $t0, -7480($fp)
	lw $t0, -7480($fp)
	lw $t1, 0($t0)
	sw $t1, -7484($fp)
	lw $t0, -7484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -7488($fp)
	li $t0, 5
	sw $t0, -7492($fp)
	li $t0, 4
	lw $t1, -7492($fp)
	mul $t0, $t0, $t1
	sw $t0, -7496($fp)
	lw $t0, -7496($fp)
	lw $t1, -7488($fp)
	add $t0, $t0, $t1
	sw $t0, -7500($fp)
	lw $t0, -7500($fp)
	lw $t1, 0($t0)
	sw $t1, -7504($fp)
	lw $t0, -7504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -7508($fp)
	li $t0, 6
	sw $t0, -7512($fp)
	li $t0, 4
	lw $t1, -7512($fp)
	mul $t0, $t0, $t1
	sw $t0, -7516($fp)
	lw $t0, -7516($fp)
	lw $t1, -7508($fp)
	add $t0, $t0, $t1
	sw $t0, -7520($fp)
	lw $t0, -7520($fp)
	lw $t1, 0($t0)
	sw $t1, -7524($fp)
	lw $t0, -7524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -7528($fp)
	li $t0, 7
	sw $t0, -7532($fp)
	li $t0, 4
	lw $t1, -7532($fp)
	mul $t0, $t0, $t1
	sw $t0, -7536($fp)
	lw $t0, -7536($fp)
	lw $t1, -7528($fp)
	add $t0, $t0, $t1
	sw $t0, -7540($fp)
	lw $t0, -7540($fp)
	lw $t1, 0($t0)
	sw $t1, -7544($fp)
	lw $t0, -7544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -7548($fp)
	li $t0, 8
	sw $t0, -7552($fp)
	li $t0, 4
	lw $t1, -7552($fp)
	mul $t0, $t0, $t1
	sw $t0, -7556($fp)
	lw $t0, -7556($fp)
	lw $t1, -7548($fp)
	add $t0, $t0, $t1
	sw $t0, -7560($fp)
	lw $t0, -7560($fp)
	lw $t1, 0($t0)
	sw $t1, -7564($fp)
	lw $t0, -7564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -7568($fp)
	li $t0, 0
	sw $t0, -7572($fp)
	li $t0, 4
	lw $t1, -7572($fp)
	mul $t0, $t0, $t1
	sw $t0, -7576($fp)
	lw $t0, -7576($fp)
	lw $t1, -7568($fp)
	add $t0, $t0, $t1
	sw $t0, -7580($fp)
	lw $t0, -7580($fp)
	lw $t1, 0($t0)
	sw $t1, -7584($fp)
	lw $t0, -7584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -7588($fp)
	li $t0, 1
	sw $t0, -7592($fp)
	li $t0, 4
	lw $t1, -7592($fp)
	mul $t0, $t0, $t1
	sw $t0, -7596($fp)
	lw $t0, -7596($fp)
	lw $t1, -7588($fp)
	add $t0, $t0, $t1
	sw $t0, -7600($fp)
	lw $t0, -7600($fp)
	lw $t1, 0($t0)
	sw $t1, -7604($fp)
	lw $t0, -7604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -7608($fp)
	li $t0, 2
	sw $t0, -7612($fp)
	li $t0, 4
	lw $t1, -7612($fp)
	mul $t0, $t0, $t1
	sw $t0, -7616($fp)
	lw $t0, -7616($fp)
	lw $t1, -7608($fp)
	add $t0, $t0, $t1
	sw $t0, -7620($fp)
	lw $t0, -7620($fp)
	lw $t1, 0($t0)
	sw $t1, -7624($fp)
	lw $t0, -7624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -7628($fp)
	li $t0, 3
	sw $t0, -7632($fp)
	li $t0, 4
	lw $t1, -7632($fp)
	mul $t0, $t0, $t1
	sw $t0, -7636($fp)
	lw $t0, -7636($fp)
	lw $t1, -7628($fp)
	add $t0, $t0, $t1
	sw $t0, -7640($fp)
	lw $t0, -7640($fp)
	lw $t1, 0($t0)
	sw $t1, -7644($fp)
	lw $t0, -7644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -7648($fp)
	li $t0, 4
	sw $t0, -7652($fp)
	li $t0, 4
	lw $t1, -7652($fp)
	mul $t0, $t0, $t1
	sw $t0, -7656($fp)
	lw $t0, -7656($fp)
	lw $t1, -7648($fp)
	add $t0, $t0, $t1
	sw $t0, -7660($fp)
	lw $t0, -7660($fp)
	lw $t1, 0($t0)
	sw $t1, -7664($fp)
	lw $t0, -7664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -7668($fp)
	li $t0, 5
	sw $t0, -7672($fp)
	li $t0, 4
	lw $t1, -7672($fp)
	mul $t0, $t0, $t1
	sw $t0, -7676($fp)
	lw $t0, -7676($fp)
	lw $t1, -7668($fp)
	add $t0, $t0, $t1
	sw $t0, -7680($fp)
	lw $t0, -7680($fp)
	lw $t1, 0($t0)
	sw $t1, -7684($fp)
	lw $t0, -7684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -7688($fp)
	li $t0, 6
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
	lw $t0, -7704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -7708($fp)
	li $t0, 7
	sw $t0, -7712($fp)
	li $t0, 4
	lw $t1, -7712($fp)
	mul $t0, $t0, $t1
	sw $t0, -7716($fp)
	lw $t0, -7716($fp)
	lw $t1, -7708($fp)
	add $t0, $t0, $t1
	sw $t0, -7720($fp)
	lw $t0, -7720($fp)
	lw $t1, 0($t0)
	sw $t1, -7724($fp)
	lw $t0, -7724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -7728($fp)
	li $t0, 8
	sw $t0, -7732($fp)
	li $t0, 4
	lw $t1, -7732($fp)
	mul $t0, $t0, $t1
	sw $t0, -7736($fp)
	lw $t0, -7736($fp)
	lw $t1, -7728($fp)
	add $t0, $t0, $t1
	sw $t0, -7740($fp)
	lw $t0, -7740($fp)
	lw $t1, 0($t0)
	sw $t1, -7744($fp)
	lw $t0, -7744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1904($fp)
	sw $t0, -7748($fp)
	lw $t0, -7748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1916($fp)
	sw $t0, -7752($fp)
	lw $t0, -7752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1928($fp)
	sw $t0, -7756($fp)
	lw $t0, -7756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1940($fp)
	sw $t0, -7760($fp)
	lw $t0, -7760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1952($fp)
	sw $t0, -7764($fp)
	lw $t0, -7764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1964($fp)
	sw $t0, -7768($fp)
	lw $t0, -7768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1976($fp)
	sw $t0, -7772($fp)
	lw $t0, -7772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1988($fp)
	sw $t0, -7776($fp)
	lw $t0, -7776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2000($fp)
	sw $t0, -7780($fp)
	lw $t0, -7780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2012($fp)
	sw $t0, -7784($fp)
	lw $t0, -7784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2024($fp)
	sw $t0, -7788($fp)
	lw $t0, -7788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2036($fp)
	sw $t0, -7792($fp)
	lw $t0, -7792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2048($fp)
	sw $t0, -7796($fp)
	lw $t0, -7796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2060($fp)
	sw $t0, -7800($fp)
	lw $t0, -7800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2072($fp)
	sw $t0, -7804($fp)
	lw $t0, -7804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2084($fp)
	sw $t0, -7808($fp)
	lw $t0, -7808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2096($fp)
	sw $t0, -7812($fp)
	lw $t0, -7812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -7816($fp)
	li $t0, 0
	sw $t0, -7820($fp)
	li $t0, 0
	sw $t0, -7824($fp)
	li $t0, 34793
	sw $t0, -7828($fp)
	li $t0, 48305
	sw $t0, -7832($fp)
	lw $t1, -7828($fp)
	lw $t2, -7832($fp)
	blt $t1, $t2, label419
	j label418
label419:
	li $t0, 61420
	sw $t0, -7836($fp)
	lw $t1, -7836($fp)
	li $t2, 0
	bne $t1, $t2, label417
	j label418
label417:
	li $t0, 1
	sw $t0, -7824($fp)
label418:
	lw $t0, -2012($fp)
	sw $t0, -7840($fp)
	li $t0, 0
	sw $t0, -7844($fp)
	addi $t0, $fp, -44
	sw $t0, -7848($fp)
	li $t0, 0
	sw $t0, -7852($fp)
	li $t0, 4
	lw $t1, -7852($fp)
	mul $t0, $t0, $t1
	sw $t0, -7856($fp)
	lw $t0, -7856($fp)
	lw $t1, -7848($fp)
	add $t0, $t0, $t1
	sw $t0, -7860($fp)
	lw $t0, -7860($fp)
	lw $t1, 0($t0)
	sw $t1, -7864($fp)
	li $t0, 2475
	sw $t0, -7868($fp)
	lw $t1, -7864($fp)
	lw $t2, -7868($fp)
	bne $t1, $t2, label420
	j label421
label420:
	li $t0, 1
	sw $t0, -7844($fp)
label421:
	li $t0, 0
	sw $t0, -7872($fp)
	li $t0, 44951
	sw $t0, -7876($fp)
	li $t0, 36917
	sw $t0, -7880($fp)
	lw $t1, -7876($fp)
	lw $t2, -7880($fp)
	ble $t1, $t2, label422
	j label424
label424:
	li $t0, 7425
	sw $t0, -7884($fp)
	lw $t1, -7884($fp)
	li $t2, 0
	bne $t1, $t2, label422
	j label423
label422:
	li $t0, 1
	sw $t0, -7872($fp)
label423:
	addi $sp, $sp, -4
	lw $t0, -7840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7872($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7888($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -7892($fp)
	li $t0, 5173
	sw $t0, -7896($fp)
	lw $t1, -7896($fp)
	li $t2, 0
	bne $t1, $t2, label426
	j label425
label425:
	li $t0, 1
	sw $t0, -7892($fp)
label426:
	addi $sp, $sp, -4
	lw $t0, -7824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7892($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7900($fp)
	addi $sp, $sp, 16
	lw $t1, -7900($fp)
	li $t2, 0
	bne $t1, $t2, label416
	j label415
label415:
	li $t0, 1
	sw $t0, -7820($fp)
label416:
	li $t0, 0
	sw $t0, -7904($fp)
	li $t0, 0
	sw $t0, -7908($fp)
	li $t0, 15690
	sw $t0, -7912($fp)
	lw $t1, -7912($fp)
	li $t2, 0
	bne $t1, $t2, label431
	j label429
label431:
	lw $t0, -1964($fp)
	sw $t0, -7916($fp)
	lw $t1, -7916($fp)
	li $t2, 0
	bne $t1, $t2, label429
	j label430
label429:
	li $t0, 1
	sw $t0, -7908($fp)
label430:
	li $t0, 0
	sw $t0, -7920($fp)
	li $t0, 31288
	sw $t0, -7924($fp)
	lw $t1, -7924($fp)
	li $t2, 0
	bne $t1, $t2, label435
	j label433
label435:
	li $t0, 24359
	sw $t0, -7928($fp)
	lw $t1, -7928($fp)
	li $t2, 0
	bne $t1, $t2, label434
	j label433
label434:
	li $t0, 38594
	sw $t0, -7932($fp)
	lw $t1, -7932($fp)
	li $t2, 0
	bne $t1, $t2, label432
	j label433
label432:
	li $t0, 1
	sw $t0, -7920($fp)
label433:
	li $t0, 0
	sw $t0, -7936($fp)
	li $t0, 40811
	sw $t0, -7940($fp)
	lw $t1, -7940($fp)
	li $t2, 0
	bne $t1, $t2, label437
	j label436
label436:
	li $t0, 1
	sw $t0, -7936($fp)
label437:
	li $t0, 0
	lw $t1, -7936($fp)
	sub $t0, $t0, $t1
	sw $t0, -7944($fp)
	li $t0, 0
	sw $t0, -7948($fp)
	lw $t0, -500($fp)
	sw $t0, -7952($fp)
	li $t0, 63819
	sw $t0, -7956($fp)
	lw $t0, -7952($fp)
	lw $t1, -7956($fp)
	mul $t0, $t0, $t1
	sw $t0, -7960($fp)
	li $t0, 45226
	sw $t0, -7964($fp)
	lw $t1, -7960($fp)
	lw $t2, -7964($fp)
	bge $t1, $t2, label438
	j label439
label438:
	li $t0, 1
	sw $t0, -7948($fp)
label439:
	li $t0, 41847
	sw $t0, -7968($fp)
	addi $sp, $sp, -4
	lw $t0, -7908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7968($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7972($fp)
	addi $sp, $sp, 24
	lw $t1, -7972($fp)
	li $t2, 0
	bne $t1, $t2, label428
	j label427
label427:
	li $t0, 1
	sw $t0, -7904($fp)
label428:
	lw $t0, -7820($fp)
	lw $t1, -7904($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7976($fp)
	lw $t1, -7976($fp)
	li $t2, 0
	bne $t1, $t2, label414
	j label413
label414:
	li $t0, 30280
	sw $t0, -7980($fp)
	lw $t0, -2012($fp)
	sw $t0, -7984($fp)
	lw $t0, -1316($fp)
	sw $t0, -7988($fp)
	lw $t0, -7984($fp)
	lw $t1, -7988($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7992($fp)
	lw $t1, -7980($fp)
	lw $t2, -7992($fp)
	beq $t1, $t2, label412
	j label413
label412:
	li $t0, 1
	sw $t0, -7816($fp)
label413:
	lw $ra, -4($fp)
	lw $v0, -7816($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2396
	li $t0, 49659
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 45219
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 6147
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	li $t0, 43918
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
	li $t0, 0
	sw $t0, -72($fp)
	lw $t0, -24($fp)
	sw $t0, -76($fp)
	lw $t1, -76($fp)
	li $t2, 0
	bne $t1, $t2, label442
	j label441
label442:
	li $t0, 26790
	sw $t0, -80($fp)
	li $t0, 39578
	sw $t0, -84($fp)
	lw $t1, -80($fp)
	lw $t2, -84($fp)
	blt $t1, $t2, label440
	j label441
label440:
	li $t0, 1
	sw $t0, -72($fp)
label441:
	lw $t0, -72($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -88($fp)
	lw $ra, -4($fp)
	lw $v0, -88($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -92($fp)
	lw $t0, -24($fp)
	sw $t0, -96($fp)
	li $t0, 0
	lw $t1, -96($fp)
	sub $t0, $t0, $t1
	sw $t0, -100($fp)
	lw $t1, -100($fp)
	li $t2, 0
	bne $t1, $t2, label444
	j label445
label445:
	li $t0, 47293
	sw $t0, -104($fp)
	li $t0, 47358
	sw $t0, -108($fp)
	lw $t0, -104($fp)
	lw $t1, -108($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -112($fp)
	lw $t1, -112($fp)
	li $t2, 0
	bne $t1, $t2, label443
	j label444
label443:
	li $t0, 1
	sw $t0, -92($fp)
label444:
	lw $t0, -92($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -116($fp)
	li $t0, 20282
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	li $t0, 23623
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	li $t0, 48859
	sw $t0, -164($fp)
	addi $t0, $fp, -136
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
	li $t0, 64502
	sw $t0, -188($fp)
	addi $t0, $fp, -136
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
	li $t0, 28796
	sw $t0, -212($fp)
	addi $t0, $fp, -136
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
	li $t0, 28274
	sw $t0, -236($fp)
	addi $t0, $fp, -136
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
	li $t0, 35883
	sw $t0, -260($fp)
	addi $t0, $fp, -136
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
	li $t0, 36221
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	li $t0, 51353
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	li $t0, 53123
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	li $t0, 38696
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	li $t0, 0
	sw $t0, -332($fp)
	lw $t0, -24($fp)
	sw $t0, -336($fp)
	lw $t1, -336($fp)
	li $t2, 0
	bne $t1, $t2, label447
	j label446
label446:
	li $t0, 1
	sw $t0, -332($fp)
label447:
	li $t0, 20610
	sw $t0, -340($fp)
	lw $t0, -332($fp)
	lw $t1, -340($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -344($fp)
	addi $sp, $sp, -4
	lw $t0, -344($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -348($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -352($fp)
	li $t0, 1
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
	lw $t0, -348($fp)
	lw $t1, -368($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -372($fp)
	li $t0, 62457
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	li $t0, 34175
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	li $t0, 14270
	sw $t0, -456($fp)
	addi $t0, $fp, -388
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
	li $t0, 37733
	sw $t0, -480($fp)
	addi $t0, $fp, -388
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
	li $t0, 65464
	sw $t0, -504($fp)
	addi $t0, $fp, -388
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
	li $t0, 38629
	sw $t0, -528($fp)
	addi $t0, $fp, -388
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
	li $t0, 10791
	sw $t0, -552($fp)
	addi $t0, $fp, -428
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
	li $t0, 15618
	sw $t0, -576($fp)
	addi $t0, $fp, -428
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
	li $t0, 3373
	sw $t0, -600($fp)
	addi $t0, $fp, -428
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
	li $t0, 60450
	sw $t0, -624($fp)
	addi $t0, $fp, -428
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
	li $t0, 60837
	sw $t0, -648($fp)
	addi $t0, $fp, -428
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
	li $t0, 9521
	sw $t0, -672($fp)
	addi $t0, $fp, -428
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
	li $t0, 38833
	sw $t0, -696($fp)
	addi $t0, $fp, -428
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
	li $t0, 22092
	sw $t0, -720($fp)
	addi $t0, $fp, -428
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
	li $t0, 49099
	sw $t0, -744($fp)
	addi $t0, $fp, -428
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
	li $t0, 20590
	sw $t0, -768($fp)
	addi $t0, $fp, -428
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
	li $t0, 0
	sw $t0, -792($fp)
	jal f8
	sw $v0, -796($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -428
	sw $t0, -800($fp)
	li $t0, 3914
	sw $t0, -804($fp)
	li $t0, 3845
	sw $t0, -808($fp)
	lw $t0, -804($fp)
	lw $t1, -808($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -812($fp)
	li $t0, 4
	lw $t1, -812($fp)
	mul $t0, $t0, $t1
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	lw $t1, -800($fp)
	add $t0, $t0, $t1
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	lw $t1, 0($t0)
	sw $t1, -824($fp)
	lw $t1, -796($fp)
	lw $t2, -824($fp)
	ble $t1, $t2, label448
	j label449
label448:
	li $t0, 1
	sw $t0, -792($fp)
label449:
	li $t0, 0
	sw $t0, -828($fp)
	li $t0, 44213
	sw $t0, -832($fp)
	lw $t1, -832($fp)
	li $t2, 0
	bne $t1, $t2, label454
	j label453
label453:
	li $t0, 1
	sw $t0, -828($fp)
label454:
	li $t0, 0
	sw $t0, -836($fp)
	lw $t0, -312($fp)
	sw $t0, -840($fp)
	li $t0, 0
	lw $t1, -840($fp)
	sub $t0, $t0, $t1
	sw $t0, -844($fp)
	lw $t1, -844($fp)
	li $t2, 0
	bne $t1, $t2, label456
	j label455
label455:
	li $t0, 1
	sw $t0, -836($fp)
label456:
	lw $t0, -156($fp)
	sw $t0, -848($fp)
	lw $t0, -836($fp)
	lw $t1, -848($fp)
	add $t0, $t0, $t1
	sw $t0, -852($fp)
	lw $t1, -828($fp)
	lw $t2, -852($fp)
	beq $t1, $t2, label450
	j label451
label450:
label457:
	addi $t0, $fp, -388
	sw $t0, -856($fp)
	jal f8
	sw $v0, -860($fp)
	addi $sp, $sp, 4
	li $t0, 52774
	sw $t0, -864($fp)
	li $t0, 0
	lw $t1, -864($fp)
	sub $t0, $t0, $t1
	sw $t0, -868($fp)
	lw $t0, -860($fp)
	lw $t1, -868($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -872($fp)
	li $t0, 4
	lw $t1, -872($fp)
	mul $t0, $t0, $t1
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	lw $t1, -856($fp)
	add $t0, $t0, $t1
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	lw $t1, 0($t0)
	sw $t1, -884($fp)
	lw $t1, -884($fp)
	li $t2, 0
	bne $t1, $t2, label458
	j label459
label458:
	addi $t0, $fp, -388
	sw $t0, -888($fp)
	lw $t0, -144($fp)
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
	j label457
label459:
	j label452
label451:
	li $t0, 2811
	sw $t0, -908($fp)
	lw $ra, -4($fp)
	lw $v0, -908($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label452:
	li $t0, 0
	sw $t0, -912($fp)
	addi $t0, $fp, -428
	sw $t0, -916($fp)
	lw $t0, -156($fp)
	sw $t0, -920($fp)
	li $t0, 7473
	sw $t0, -924($fp)
	lw $t0, -920($fp)
	lw $t1, -924($fp)
	add $t0, $t0, $t1
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
	lw $t0, -144($fp)
	sw $t0, -944($fp)
	li $t0, 0
	lw $t1, -944($fp)
	sub $t0, $t0, $t1
	sw $t0, -948($fp)
	li $t0, 0
	lw $t1, -948($fp)
	sub $t0, $t0, $t1
	sw $t0, -952($fp)
	lw $t0, -940($fp)
	lw $t1, -952($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -956($fp)
	li $t0, 0
	sw $t0, -960($fp)
	addi $t0, $fp, -136
	sw $t0, -964($fp)
	lw $t0, -436($fp)
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
	lw $t0, -156($fp)
	sw $t0, -984($fp)
	lw $t1, -980($fp)
	lw $t2, -984($fp)
	bne $t1, $t2, label462
	j label463
label462:
	li $t0, 1
	sw $t0, -960($fp)
label463:
	addi $sp, $sp, -4
	lw $t0, -960($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -988($fp)
	addi $sp, $sp, 8
	lw $t0, -312($fp)
	sw $t0, -992($fp)
	li $t0, 0
	lw $t1, -992($fp)
	sub $t0, $t0, $t1
	sw $t0, -996($fp)
	lw $t0, -988($fp)
	lw $t1, -996($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1000($fp)
	li $t0, 0
	lw $t1, -1000($fp)
	sub $t0, $t0, $t1
	sw $t0, -1004($fp)
	lw $t1, -956($fp)
	lw $t2, -1004($fp)
	ble $t1, $t2, label460
	j label461
label460:
	li $t0, 1
	sw $t0, -912($fp)
label461:
label464:
	li $t0, 15512
	sw $t0, -1008($fp)
	li $t0, 1329
	sw $t0, -1012($fp)
	lw $t0, -24($fp)
	sw $t0, -1016($fp)
	lw $t0, -1012($fp)
	lw $t1, -1016($fp)
	add $t0, $t0, $t1
	sw $t0, -1020($fp)
	li $t0, 26281
	sw $t0, -1024($fp)
	lw $t0, -1020($fp)
	lw $t1, -1024($fp)
	sub $t0, $t0, $t1
	sw $t0, -1028($fp)
	li $t0, 0
	sw $t0, -1032($fp)
	li $t0, 0
	sw $t0, -1036($fp)
	lw $t0, -24($fp)
	sw $t0, -1040($fp)
	lw $t1, -1040($fp)
	li $t2, 0
	bne $t1, $t2, label470
	j label469
label469:
	li $t0, 1
	sw $t0, -1036($fp)
label470:
	lw $t0, -448($fp)
	sw $t0, -1044($fp)
	lw $t1, -1036($fp)
	lw $t2, -1044($fp)
	beq $t1, $t2, label467
	j label468
label467:
	li $t0, 1
	sw $t0, -1032($fp)
label468:
	addi $sp, $sp, -4
	lw $t0, -1032($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1048($fp)
	addi $sp, $sp, 8
	li $t0, 43695
	sw $t0, -1052($fp)
	lw $t0, -1048($fp)
	lw $t1, -1052($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1056($fp)
	li $t0, 0
	sw $t0, -1060($fp)
	li $t0, 0
	sw $t0, -1064($fp)
	lw $t0, -300($fp)
	sw $t0, -1068($fp)
	li $t0, 38694
	sw $t0, -1072($fp)
	lw $t1, -1068($fp)
	lw $t2, -1072($fp)
	bgt $t1, $t2, label473
	j label474
label473:
	li $t0, 1
	sw $t0, -1064($fp)
label474:
	lw $t0, -288($fp)
	sw $t0, -1076($fp)
	lw $t1, -1064($fp)
	lw $t2, -1076($fp)
	bne $t1, $t2, label471
	j label472
label471:
	li $t0, 1
	sw $t0, -1060($fp)
label472:
	addi $sp, $sp, -4
	lw $t0, -1028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1060($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1080($fp)
	addi $sp, $sp, 16
	lw $t1, -1008($fp)
	lw $t2, -1080($fp)
	bge $t1, $t2, label465
	j label466
label465:
	li $t0, 0
	sw $t0, -1084($fp)
	lw $t0, -12($fp)
	sw $t0, -1088($fp)
	lw $t1, -1088($fp)
	li $t2, 0
	bne $t1, $t2, label476
	j label475
label475:
	li $t0, 1
	sw $t0, -1084($fp)
label476:
	li $t0, 16855
	sw $t0, -1092($fp)
	lw $t0, -1084($fp)
	lw $t1, -1092($fp)
	sub $t0, $t0, $t1
	sw $t0, -1096($fp)
	lw $ra, -4($fp)
	lw $v0, -1096($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label464
label466:
	li $t0, 21939
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	sw $t0, -1176($fp)
	li $t0, 62173
	sw $t0, -1180($fp)
	addi $t0, $fp, -1112
	sw $t0, -1184($fp)
	li $t0, 0
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1192($fp)
	lw $t0, -1184($fp)
	lw $t1, -1192($fp)
	add $t0, $t0, $t1
	sw $t0, -1196($fp)
	lw $t0, -1180($fp)
	lw $t1, -1196($fp)
	sw $t0, 0($t1)
	lw $t0, -1196($fp)
	lw $t1, 0($t0)
	sw $t1, -1200($fp)
	li $t0, 51436
	sw $t0, -1204($fp)
	addi $t0, $fp, -1112
	sw $t0, -1208($fp)
	li $t0, 1
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1216($fp)
	lw $t0, -1208($fp)
	lw $t1, -1216($fp)
	add $t0, $t0, $t1
	sw $t0, -1220($fp)
	lw $t0, -1204($fp)
	lw $t1, -1220($fp)
	sw $t0, 0($t1)
	lw $t0, -1220($fp)
	lw $t1, 0($t0)
	sw $t1, -1224($fp)
	li $t0, 18861
	sw $t0, -1228($fp)
	addi $t0, $fp, -1112
	sw $t0, -1232($fp)
	li $t0, 2
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1240($fp)
	lw $t0, -1232($fp)
	lw $t1, -1240($fp)
	add $t0, $t0, $t1
	sw $t0, -1244($fp)
	lw $t0, -1228($fp)
	lw $t1, -1244($fp)
	sw $t0, 0($t1)
	lw $t0, -1244($fp)
	lw $t1, 0($t0)
	sw $t1, -1248($fp)
	li $t0, 30813
	sw $t0, -1252($fp)
	addi $t0, $fp, -1112
	sw $t0, -1256($fp)
	li $t0, 3
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1264($fp)
	lw $t0, -1256($fp)
	lw $t1, -1264($fp)
	add $t0, $t0, $t1
	sw $t0, -1268($fp)
	lw $t0, -1252($fp)
	lw $t1, -1268($fp)
	sw $t0, 0($t1)
	lw $t0, -1268($fp)
	lw $t1, 0($t0)
	sw $t1, -1272($fp)
	li $t0, 170
	sw $t0, -1276($fp)
	addi $t0, $fp, -1152
	sw $t0, -1280($fp)
	li $t0, 0
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1288($fp)
	lw $t0, -1280($fp)
	lw $t1, -1288($fp)
	add $t0, $t0, $t1
	sw $t0, -1292($fp)
	lw $t0, -1276($fp)
	lw $t1, -1292($fp)
	sw $t0, 0($t1)
	lw $t0, -1292($fp)
	lw $t1, 0($t0)
	sw $t1, -1296($fp)
	li $t0, 56594
	sw $t0, -1300($fp)
	addi $t0, $fp, -1152
	sw $t0, -1304($fp)
	li $t0, 1
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
	li $t0, 30741
	sw $t0, -1324($fp)
	addi $t0, $fp, -1152
	sw $t0, -1328($fp)
	li $t0, 2
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
	li $t0, 38800
	sw $t0, -1348($fp)
	addi $t0, $fp, -1152
	sw $t0, -1352($fp)
	li $t0, 3
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
	li $t0, 1849
	sw $t0, -1372($fp)
	addi $t0, $fp, -1152
	sw $t0, -1376($fp)
	li $t0, 4
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
	li $t0, 46359
	sw $t0, -1396($fp)
	addi $t0, $fp, -1152
	sw $t0, -1400($fp)
	li $t0, 5
	sw $t0, -1404($fp)
	lw $t0, -1404($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1408($fp)
	lw $t0, -1400($fp)
	lw $t1, -1408($fp)
	add $t0, $t0, $t1
	sw $t0, -1412($fp)
	lw $t0, -1396($fp)
	lw $t1, -1412($fp)
	sw $t0, 0($t1)
	lw $t0, -1412($fp)
	lw $t1, 0($t0)
	sw $t1, -1416($fp)
	li $t0, 42173
	sw $t0, -1420($fp)
	addi $t0, $fp, -1152
	sw $t0, -1424($fp)
	li $t0, 6
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1432($fp)
	lw $t0, -1424($fp)
	lw $t1, -1432($fp)
	add $t0, $t0, $t1
	sw $t0, -1436($fp)
	lw $t0, -1420($fp)
	lw $t1, -1436($fp)
	sw $t0, 0($t1)
	lw $t0, -1436($fp)
	lw $t1, 0($t0)
	sw $t1, -1440($fp)
	li $t0, 62300
	sw $t0, -1444($fp)
	addi $t0, $fp, -1152
	sw $t0, -1448($fp)
	li $t0, 7
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1456($fp)
	lw $t0, -1448($fp)
	lw $t1, -1456($fp)
	add $t0, $t0, $t1
	sw $t0, -1460($fp)
	lw $t0, -1444($fp)
	lw $t1, -1460($fp)
	sw $t0, 0($t1)
	lw $t0, -1460($fp)
	lw $t1, 0($t0)
	sw $t1, -1464($fp)
	li $t0, 41661
	sw $t0, -1468($fp)
	addi $t0, $fp, -1152
	sw $t0, -1472($fp)
	li $t0, 8
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
	li $t0, 51694
	sw $t0, -1492($fp)
	addi $t0, $fp, -1152
	sw $t0, -1496($fp)
	li $t0, 9
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
	li $t0, 35597
	sw $t0, -1516($fp)
	addi $t0, $fp, -1164
	sw $t0, -1520($fp)
	li $t0, 0
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
	li $t0, 63753
	sw $t0, -1540($fp)
	addi $t0, $fp, -1164
	sw $t0, -1544($fp)
	li $t0, 1
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
	li $t0, 35257
	sw $t0, -1564($fp)
	addi $t0, $fp, -1164
	sw $t0, -1568($fp)
	li $t0, 2
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
	li $t0, 56187
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	sw $t0, -1596($fp)
	li $t0, 2131
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	sw $t0, -1608($fp)
	li $t0, 39103
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	sw $t0, -1620($fp)
	li $t0, 34865
	sw $t0, -1624($fp)
	lw $t0, -1624($fp)
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	sw $t0, -1632($fp)
	addi $t0, $fp, -136
	sw $t0, -1636($fp)
	li $t0, 3
	sw $t0, -1640($fp)
	li $t0, 4
	lw $t1, -1640($fp)
	mul $t0, $t0, $t1
	sw $t0, -1644($fp)
	lw $t0, -1644($fp)
	lw $t1, -1636($fp)
	add $t0, $t0, $t1
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	lw $t1, 0($t0)
	sw $t1, -1652($fp)
	li $t0, 42338
	sw $t0, -1656($fp)
	lw $t0, -1652($fp)
	lw $t1, -1656($fp)
	mul $t0, $t0, $t1
	sw $t0, -1660($fp)
	addi $t0, $fp, -1164
	sw $t0, -1664($fp)
	lw $t0, -1592($fp)
	sw $t0, -1668($fp)
	li $t0, 4
	lw $t1, -1668($fp)
	mul $t0, $t0, $t1
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	lw $t1, -1664($fp)
	add $t0, $t0, $t1
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	lw $t1, 0($t0)
	sw $t1, -1680($fp)
	lw $t0, -1660($fp)
	lw $t1, -1680($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1684($fp)
	li $t0, 0
	sw $t0, -1688($fp)
	lw $t0, -24($fp)
	sw $t0, -1692($fp)
	lw $t0, -36($fp)
	sw $t0, -1696($fp)
	lw $t1, -1692($fp)
	lw $t2, -1696($fp)
	ble $t1, $t2, label480
	j label481
label480:
	li $t0, 1
	sw $t0, -1688($fp)
label481:
	addi $sp, $sp, -4
	lw $t0, -1688($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1700($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -1700($fp)
	sub $t0, $t0, $t1
	sw $t0, -1704($fp)
	lw $t0, -1684($fp)
	lw $t1, -1704($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1708($fp)
	li $t0, 0
	sw $t0, -1712($fp)
	li $t0, 4882
	sw $t0, -1716($fp)
	li $t0, 15073
	sw $t0, -1720($fp)
	lw $t0, -1716($fp)
	lw $t1, -1720($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1724($fp)
	lw $t0, -144($fp)
	sw $t0, -1728($fp)
	lw $t0, -1724($fp)
	lw $t1, -1728($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1732($fp)
	jal f8
	sw $v0, -1736($fp)
	addi $sp, $sp, 4
	lw $t1, -1732($fp)
	lw $t2, -1736($fp)
	bgt $t1, $t2, label482
	j label483
label482:
	li $t0, 1
	sw $t0, -1712($fp)
label483:
	lw $t1, -1708($fp)
	lw $t2, -1712($fp)
	beq $t1, $t2, label477
	j label478
label477:
	li $t0, 20497
	sw $t0, -1740($fp)
	li $t0, 6211
	sw $t0, -1744($fp)
	li $t0, 41354
	sw $t0, -1748($fp)
	lw $t0, -1744($fp)
	lw $t1, -1748($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1752($fp)
	lw $t0, -1628($fp)
	sw $t0, -1756($fp)
	lw $t0, -1752($fp)
	lw $t1, -1756($fp)
	mul $t0, $t0, $t1
	sw $t0, -1760($fp)
	li $t0, 37353
	sw $t0, -1764($fp)
	lw $t0, -1760($fp)
	lw $t1, -1764($fp)
	sub $t0, $t0, $t1
	sw $t0, -1768($fp)
	lw $t1, -1740($fp)
	lw $t2, -1768($fp)
	bne $t1, $t2, label484
	j label485
label484:
label487:
	addi $t0, $fp, -1112
	sw $t0, -1772($fp)
	li $t0, 0
	sw $t0, -1776($fp)
	lw $t0, -24($fp)
	sw $t0, -1780($fp)
	li $t0, 28151
	sw $t0, -1784($fp)
	lw $t1, -1780($fp)
	lw $t2, -1784($fp)
	beq $t1, $t2, label490
	j label491
label490:
	li $t0, 1
	sw $t0, -1776($fp)
label491:
	li $t0, 4
	lw $t1, -1776($fp)
	mul $t0, $t0, $t1
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	lw $t1, -1772($fp)
	add $t0, $t0, $t1
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	lw $t1, 0($t0)
	sw $t1, -1796($fp)
	lw $t1, -1796($fp)
	li $t2, 0
	bne $t1, $t2, label488
	j label489
label488:
	li $t0, 0
	sw $t0, -1800($fp)
	addi $t0, $fp, -428
	sw $t0, -1804($fp)
	lw $t0, -24($fp)
	sw $t0, -1808($fp)
	li $t0, 37992
	sw $t0, -1812($fp)
	lw $t0, -1808($fp)
	lw $t1, -1812($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1816($fp)
	li $t0, 4
	lw $t1, -1816($fp)
	mul $t0, $t0, $t1
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	lw $t1, -1804($fp)
	add $t0, $t0, $t1
	sw $t0, -1824($fp)
	lw $t0, -1824($fp)
	lw $t1, 0($t0)
	sw $t1, -1828($fp)
	li $t0, 0
	sw $t0, -1832($fp)
	lw $t0, -1616($fp)
	sw $t0, -1836($fp)
	lw $t1, -1836($fp)
	li $t2, 0
	bne $t1, $t2, label496
	j label495
label495:
	li $t0, 1
	sw $t0, -1832($fp)
label496:
	li $t0, 0
	lw $t1, -1832($fp)
	sub $t0, $t0, $t1
	sw $t0, -1840($fp)
	lw $t0, -1828($fp)
	lw $t1, -1840($fp)
	add $t0, $t0, $t1
	sw $t0, -1844($fp)
	lw $t1, -1844($fp)
	li $t2, 0
	bne $t1, $t2, label492
	j label494
label494:
	lw $t0, -1604($fp)
	sw $t0, -1848($fp)
	lw $t0, -288($fp)
	sw $t0, -1852($fp)
	lw $t0, -1848($fp)
	lw $t1, -1852($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1856($fp)
	lw $t1, -1856($fp)
	li $t2, 0
	bne $t1, $t2, label492
	j label493
label492:
	li $t0, 1
	sw $t0, -1800($fp)
label493:
	j label487
label489:
	j label486
label485:
	li $t0, 0
	sw $t0, -1860($fp)
	li $t0, 0
	sw $t0, -1864($fp)
	li $t0, 0
	sw $t0, -1868($fp)
	li $t0, 23423
	sw $t0, -1872($fp)
	lw $t1, -1872($fp)
	li $t2, 0
	bne $t1, $t2, label503
	j label502
label502:
	li $t0, 1
	sw $t0, -1868($fp)
label503:
	li $t0, 38070
	sw $t0, -1876($fp)
	lw $t1, -1868($fp)
	lw $t2, -1876($fp)
	blt $t1, $t2, label500
	j label501
label500:
	li $t0, 1
	sw $t0, -1864($fp)
label501:
	li $t0, 0
	sw $t0, -1880($fp)
	lw $t0, -300($fp)
	sw $t0, -1884($fp)
	li $t0, 3269
	sw $t0, -1888($fp)
	lw $t1, -1884($fp)
	lw $t2, -1888($fp)
	ble $t1, $t2, label506
	j label505
label506:
	lw $t0, -1172($fp)
	sw $t0, -1892($fp)
	lw $t1, -1892($fp)
	li $t2, 0
	bne $t1, $t2, label504
	j label505
label504:
	li $t0, 1
	sw $t0, -1880($fp)
label505:
	lw $t0, -24($fp)
	sw $t0, -1896($fp)
	addi $t0, $fp, -1152
	sw $t0, -1900($fp)
	li $t0, 2
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
	li $t0, 0
	sw $t0, -1920($fp)
	lw $t0, -288($fp)
	sw $t0, -1924($fp)
	li $t0, 0
	lw $t1, -1924($fp)
	sub $t0, $t0, $t1
	sw $t0, -1928($fp)
	lw $t1, -1928($fp)
	li $t2, 0
	bne $t1, $t2, label508
	j label507
label507:
	li $t0, 1
	sw $t0, -1920($fp)
label508:
	addi $sp, $sp, -4
	lw $t0, -1864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1920($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1932($fp)
	addi $sp, $sp, 24
	lw $t1, -1932($fp)
	li $t2, 0
	bne $t1, $t2, label499
	j label498
label499:
	li $t0, 34010
	sw $t0, -1936($fp)
	li $t0, 62223
	sw $t0, -1940($fp)
	lw $t1, -1936($fp)
	lw $t2, -1940($fp)
	bgt $t1, $t2, label497
	j label498
label497:
	li $t0, 1
	sw $t0, -1860($fp)
label498:
	lw $t0, -1860($fp)
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	sw $t0, -1944($fp)
	lw $ra, -4($fp)
	lw $v0, -1944($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label486:
label478:
	li $t0, 0
	sw $t0, -1948($fp)
	li $t0, 0
	sw $t0, -1952($fp)
	li $t0, 39919
	sw $t0, -1956($fp)
	li $t0, 14833
	sw $t0, -1960($fp)
	lw $t1, -1956($fp)
	lw $t2, -1960($fp)
	blt $t1, $t2, label514
	j label515
label514:
	li $t0, 1
	sw $t0, -1952($fp)
label515:
	li $t0, 38861
	sw $t0, -1964($fp)
	lw $t1, -1952($fp)
	lw $t2, -1964($fp)
	blt $t1, $t2, label512
	j label513
label512:
	li $t0, 1
	sw $t0, -1948($fp)
label513:
	addi $sp, $sp, -4
	lw $t0, -1948($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1968($fp)
	addi $sp, $sp, 8
	lw $t1, -1968($fp)
	li $t2, 0
	bne $t1, $t2, label509
	j label510
label509:
label516:
	li $t0, 0
	sw $t0, -1972($fp)
	addi $t0, $fp, -1164
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
	lw $t1, -1992($fp)
	li $t2, 0
	bne $t1, $t2, label520
	j label519
label519:
	li $t0, 1
	sw $t0, -1972($fp)
label520:
	lw $t0, -1972($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -1996($fp)
	lw $t1, -1996($fp)
	li $t2, 0
	bne $t1, $t2, label517
	j label518
label517:
	li $t0, 0
	sw $t0, -2000($fp)
	li $t0, 25019
	sw $t0, -2004($fp)
	lw $t1, -2004($fp)
	li $t2, 0
	bne $t1, $t2, label523
	j label522
label523:
	li $t0, 0
	sw $t0, -2008($fp)
	addi $t0, $fp, -388
	sw $t0, -2012($fp)
	li $t0, 0
	sw $t0, -2016($fp)
	li $t0, 4
	lw $t1, -2016($fp)
	mul $t0, $t0, $t1
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	lw $t1, -2012($fp)
	add $t0, $t0, $t1
	sw $t0, -2024($fp)
	lw $t0, -2024($fp)
	lw $t1, 0($t0)
	sw $t1, -2028($fp)
	lw $t1, -2028($fp)
	li $t2, 0
	bne $t1, $t2, label525
	j label524
label524:
	li $t0, 1
	sw $t0, -2008($fp)
label525:
	li $t0, 0
	sw $t0, -2032($fp)
	lw $t0, -24($fp)
	sw $t0, -2036($fp)
	lw $t0, -312($fp)
	sw $t0, -2040($fp)
	lw $t1, -2036($fp)
	lw $t2, -2040($fp)
	ble $t1, $t2, label526
	j label528
label528:
	li $t0, 54711
	sw $t0, -2044($fp)
	lw $t1, -2044($fp)
	li $t2, 0
	bne $t1, $t2, label526
	j label527
label526:
	li $t0, 1
	sw $t0, -2032($fp)
label527:
	li $t0, 0
	sw $t0, -2048($fp)
	li $t0, 6744
	sw $t0, -2052($fp)
	lw $t1, -2052($fp)
	li $t2, 0
	bne $t1, $t2, label530
	j label529
label529:
	li $t0, 1
	sw $t0, -2048($fp)
label530:
	addi $sp, $sp, -4
	lw $t0, -2008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2048($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2056($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -2056($fp)
	sub $t0, $t0, $t1
	sw $t0, -2060($fp)
	lw $t1, -2060($fp)
	li $t2, 0
	bne $t1, $t2, label521
	j label522
label521:
	li $t0, 1
	sw $t0, -2000($fp)
label522:
	lw $ra, -4($fp)
	lw $v0, -2000($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label516
label518:
	j label511
label510:
label531:
	lw $t0, -144($fp)
	sw $t0, -2064($fp)
	lw $t1, -2064($fp)
	li $t2, 0
	bne $t1, $t2, label532
	j label533
label532:
	li $t0, 56843
	sw $t0, -2068($fp)
	j label531
label533:
label511:
	li $t0, 33844
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	sw $t0, -2080($fp)
	addi $t0, $fp, -1112
	sw $t0, -2084($fp)
	li $t0, 0
	sw $t0, -2088($fp)
	lw $t0, -324($fp)
	sw $t0, -2092($fp)
	lw $t1, -2092($fp)
	li $t2, 0
	bne $t1, $t2, label536
	j label535
label536:
	lw $t0, -1628($fp)
	sw $t0, -2096($fp)
	lw $t1, -2096($fp)
	li $t2, 0
	bne $t1, $t2, label534
	j label535
label534:
	li $t0, 1
	sw $t0, -2088($fp)
label535:
	lw $t0, -2088($fp)
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -2100($fp)
	li $t0, 4
	lw $t1, -2100($fp)
	mul $t0, $t0, $t1
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	lw $t1, -2084($fp)
	add $t0, $t0, $t1
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	lw $t1, 0($t0)
	sw $t1, -2112($fp)
	li $t0, 0
	sw $t0, -2116($fp)
	li $t0, 32261
	sw $t0, -2120($fp)
	lw $t1, -2120($fp)
	li $t2, 0
	bne $t1, $t2, label538
	j label537
label537:
	li $t0, 1
	sw $t0, -2116($fp)
label538:
	li $t0, 0
	sw $t0, -2124($fp)
	lw $t0, -36($fp)
	sw $t0, -2128($fp)
	li $t0, 51094
	sw $t0, -2132($fp)
	lw $t1, -2128($fp)
	lw $t2, -2132($fp)
	bge $t1, $t2, label539
	j label540
label539:
	li $t0, 1
	sw $t0, -2124($fp)
label540:
	li $t0, 0
	sw $t0, -2136($fp)
	lw $t0, -1628($fp)
	sw $t0, -2140($fp)
	lw $t1, -2140($fp)
	li $t2, 0
	bne $t1, $t2, label542
	j label541
label541:
	li $t0, 1
	sw $t0, -2136($fp)
label542:
	li $t0, 9063
	sw $t0, -2144($fp)
	lw $t0, -2136($fp)
	lw $t1, -2144($fp)
	add $t0, $t0, $t1
	sw $t0, -2148($fp)
	li $t0, 0
	sw $t0, -2152($fp)
	lw $t0, -312($fp)
	sw $t0, -2156($fp)
	lw $t0, -24($fp)
	sw $t0, -2160($fp)
	lw $t0, -2156($fp)
	lw $t1, -2160($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2164($fp)
	lw $t0, -1604($fp)
	sw $t0, -2168($fp)
	lw $t1, -2164($fp)
	lw $t2, -2168($fp)
	beq $t1, $t2, label543
	j label544
label543:
	li $t0, 1
	sw $t0, -2152($fp)
label544:
	lw $t0, 4($fp)
	sw $t0, -2172($fp)
	lw $t0, -312($fp)
	sw $t0, -2176($fp)
	lw $t0, -2172($fp)
	lw $t1, -2176($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2180($fp)
	li $t0, 0
	lw $t1, -2180($fp)
	sub $t0, $t0, $t1
	sw $t0, -2184($fp)
	li $t0, 46212
	sw $t0, -2188($fp)
	lw $t0, -24($fp)
	sw $t0, -2192($fp)
	lw $t0, -2188($fp)
	lw $t1, -2192($fp)
	mul $t0, $t0, $t1
	sw $t0, -2196($fp)
	li $t0, 10222
	sw $t0, -2200($fp)
	lw $t0, -2196($fp)
	lw $t1, -2200($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2204($fp)
	addi $sp, $sp, -4
	lw $t0, -2124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2204($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2208($fp)
	addi $sp, $sp, 24
	lw $t0, -2116($fp)
	lw $t1, -2208($fp)
	mul $t0, $t0, $t1
	sw $t0, -2212($fp)
	li $t0, 0
	sw $t0, -2216($fp)
	li $t0, 25295
	sw $t0, -2220($fp)
	lw $t1, -2220($fp)
	li $t2, 0
	bne $t1, $t2, label546
	j label545
label545:
	li $t0, 1
	sw $t0, -2216($fp)
label546:
	lw $t0, -2212($fp)
	lw $t1, -2216($fp)
	mul $t0, $t0, $t1
	sw $t0, -2224($fp)
	lw $t0, -2076($fp)
	sw $t0, -2228($fp)
	li $t0, 0
	sw $t0, -2232($fp)
	li $t0, 29561
	sw $t0, -2236($fp)
	li $t0, 0
	lw $t1, -2236($fp)
	sub $t0, $t0, $t1
	sw $t0, -2240($fp)
	addi $sp, $sp, -4
	lw $t0, -2240($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2244($fp)
	addi $sp, $sp, 8
	lw $t1, -2244($fp)
	li $t2, 0
	bne $t1, $t2, label548
	j label547
label547:
	li $t0, 1
	sw $t0, -2232($fp)
label548:
	lw $t0, -2228($fp)
	lw $t1, -2232($fp)
	mul $t0, $t0, $t1
	sw $t0, -2248($fp)
	li $t0, 0
	sw $t0, -2252($fp)
	addi $t0, $fp, -1112
	sw $t0, -2256($fp)
	li $t0, 2
	sw $t0, -2260($fp)
	li $t0, 4
	lw $t1, -2260($fp)
	mul $t0, $t0, $t1
	sw $t0, -2264($fp)
	lw $t0, -2264($fp)
	lw $t1, -2256($fp)
	add $t0, $t0, $t1
	sw $t0, -2268($fp)
	lw $t0, -2268($fp)
	lw $t1, 0($t0)
	sw $t1, -2272($fp)
	lw $t1, -2272($fp)
	li $t2, 0
	bne $t1, $t2, label551
	j label549
label551:
	lw $t0, -1628($fp)
	sw $t0, -2276($fp)
	li $t0, 19921
	sw $t0, -2280($fp)
	lw $t0, -2276($fp)
	lw $t1, -2280($fp)
	sub $t0, $t0, $t1
	sw $t0, -2284($fp)
	li $t0, 39106
	sw $t0, -2288($fp)
	li $t0, 24631
	sw $t0, -2292($fp)
	lw $t0, -2288($fp)
	lw $t1, -2292($fp)
	mul $t0, $t0, $t1
	sw $t0, -2296($fp)
	lw $t0, -2284($fp)
	lw $t1, -2296($fp)
	sub $t0, $t0, $t1
	sw $t0, -2300($fp)
	lw $t1, -2300($fp)
	li $t2, 0
	bne $t1, $t2, label549
	j label550
label549:
	li $t0, 1
	sw $t0, -2252($fp)
label550:
	lw $t0, -288($fp)
	sw $t0, -2304($fp)
	lw $t1, -2304($fp)
	li $t2, 0
	bne $t1, $t2, label552
	j label553
label552:
	li $t0, 0
	sw $t0, -2308($fp)
	li $t0, 1397
	sw $t0, -2312($fp)
	lw $t0, -144($fp)
	sw $t0, -2316($fp)
	lw $t1, -2312($fp)
	lw $t2, -2316($fp)
	blt $t1, $t2, label555
	j label556
label555:
	li $t0, 1
	sw $t0, -2308($fp)
label556:
	lw $ra, -4($fp)
	lw $v0, -2308($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label554
label553:
	li $t0, 0
	sw $t0, -2320($fp)
	li $t0, 42375
	sw $t0, -2324($fp)
	lw $t0, -2324($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -2328($fp)
	addi $sp, $sp, -4
	lw $t0, -2328($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2332($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2336($fp)
	li $t0, 48054
	sw $t0, -2340($fp)
	lw $t0, -312($fp)
	sw $t0, -2344($fp)
	lw $t0, -2340($fp)
	lw $t1, -2344($fp)
	add $t0, $t0, $t1
	sw $t0, -2348($fp)
	lw $t1, -2348($fp)
	li $t2, 0
	bne $t1, $t2, label561
	j label560
label561:
	lw $t0, -324($fp)
	sw $t0, -2352($fp)
	lw $t1, -2352($fp)
	li $t2, 0
	bne $t1, $t2, label559
	j label560
label559:
	li $t0, 1
	sw $t0, -2336($fp)
label560:
	addi $sp, $sp, -4
	lw $t0, -2336($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2356($fp)
	addi $sp, $sp, 8
	lw $t0, -2332($fp)
	lw $t1, -2356($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2360($fp)
	lw $t0, -156($fp)
	sw $t0, -2364($fp)
	lw $t0, -2360($fp)
	lw $t1, -2364($fp)
	add $t0, $t0, $t1
	sw $t0, -2368($fp)
	lw $t0, -300($fp)
	sw $t0, -2372($fp)
	li $t0, 0
	lw $t1, -2372($fp)
	sub $t0, $t0, $t1
	sw $t0, -2376($fp)
	addi $sp, $sp, -4
	lw $t0, -2376($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2380($fp)
	addi $sp, $sp, 8
	lw $t1, -2368($fp)
	lw $t2, -2380($fp)
	bgt $t1, $t2, label557
	j label558
label557:
	li $t0, 1
	sw $t0, -2320($fp)
label558:
label554:
	lw $t0, -12($fp)
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -2388($fp)
	lw $t0, -2388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -36($fp)
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -48($fp)
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -48($fp)
	sw $t0, -2400($fp)
	lw $ra, -4($fp)
	lw $v0, -2400($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1260
	li $t0, 39467
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	li $t0, 10849
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	li $t0, 44742
	sw $t0, -84($fp)
	addi $t0, $fp, -24
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
	li $t0, 13850
	sw $t0, -108($fp)
	addi $t0, $fp, -24
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
	li $t0, 25682
	sw $t0, -132($fp)
	addi $t0, $fp, -24
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
	li $t0, 18067
	sw $t0, -156($fp)
	addi $t0, $fp, -24
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
	li $t0, 50534
	sw $t0, -180($fp)
	addi $t0, $fp, -24
	sw $t0, -184($fp)
	li $t0, 4
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
	li $t0, 16641
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	li $t0, 43086
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	li $t0, 57278
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	li $t0, 5816
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	li $t0, 37827
	sw $t0, -252($fp)
	addi $t0, $fp, -40
	sw $t0, -256($fp)
	li $t0, 0
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
	li $t0, 54674
	sw $t0, -276($fp)
	addi $t0, $fp, -40
	sw $t0, -280($fp)
	li $t0, 1
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
	li $t0, 62659
	sw $t0, -300($fp)
	addi $t0, $fp, -40
	sw $t0, -304($fp)
	li $t0, 2
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
	li $t0, 6135
	sw $t0, -324($fp)
	addi $t0, $fp, -40
	sw $t0, -328($fp)
	li $t0, 3
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
	li $t0, 21399
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	li $t0, 43336
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -368($fp)
	li $t0, 16358
	sw $t0, -372($fp)
	addi $t0, $fp, -56
	sw $t0, -376($fp)
	li $t0, 0
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
	li $t0, 30463
	sw $t0, -396($fp)
	addi $t0, $fp, -56
	sw $t0, -400($fp)
	li $t0, 1
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
	li $t0, 28894
	sw $t0, -420($fp)
	addi $t0, $fp, -56
	sw $t0, -424($fp)
	li $t0, 2
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
	li $t0, 41653
	sw $t0, -444($fp)
	addi $t0, $fp, -56
	sw $t0, -448($fp)
	li $t0, 3
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -456($fp)
	lw $t0, -448($fp)
	lw $t1, -456($fp)
	add $t0, $t0, $t1
	sw $t0, -460($fp)
	lw $t0, -444($fp)
	lw $t1, -460($fp)
	sw $t0, 0($t1)
	lw $t0, -460($fp)
	lw $t1, 0($t0)
	sw $t1, -464($fp)
	li $t0, 0
	sw $t0, -468($fp)
	addi $t0, $fp, -24
	sw $t0, -472($fp)
	lw $t0, 8($fp)
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
	lw $t1, -488($fp)
	li $t2, 0
	bne $t1, $t2, label565
	j label566
label565:
	li $t0, 1
	sw $t0, -468($fp)
label566:
	lw $t0, -468($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -492($fp)
	lw $t1, -492($fp)
	li $t2, 0
	bne $t1, $t2, label562
	j label563
label562:
	addi $t0, $fp, -56
	sw $t0, -496($fp)
	li $t0, 0
	sw $t0, -500($fp)
	lw $t0, 8($fp)
	sw $t0, -504($fp)
	li $t0, 0
	lw $t1, -504($fp)
	sub $t0, $t0, $t1
	sw $t0, -508($fp)
	lw $t1, -508($fp)
	li $t2, 0
	bne $t1, $t2, label571
	j label570
label570:
	li $t0, 1
	sw $t0, -500($fp)
label571:
	li $t0, 4
	lw $t1, -500($fp)
	mul $t0, $t0, $t1
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	lw $t1, -496($fp)
	add $t0, $t0, $t1
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	lw $t1, 0($t0)
	sw $t1, -520($fp)
	li $t0, 60024
	sw $t0, -524($fp)
	lw $t0, -64($fp)
	sw $t0, -528($fp)
	lw $t0, -524($fp)
	lw $t1, -528($fp)
	mul $t0, $t0, $t1
	sw $t0, -532($fp)
	li $t0, 0
	lw $t1, -532($fp)
	sub $t0, $t0, $t1
	sw $t0, -536($fp)
	lw $t0, -76($fp)
	sw $t0, -540($fp)
	lw $t0, -76($fp)
	sw $t0, -544($fp)
	lw $t0, -540($fp)
	lw $t1, -544($fp)
	mul $t0, $t0, $t1
	sw $t0, -548($fp)
	lw $t0, -536($fp)
	lw $t1, -548($fp)
	sub $t0, $t0, $t1
	sw $t0, -552($fp)
	lw $t1, -520($fp)
	lw $t2, -552($fp)
	bge $t1, $t2, label567
	j label568
label567:
label572:
	addi $t0, $fp, -24
	sw $t0, -556($fp)
	lw $t0, 4($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -564($fp)
	li $t0, 4
	lw $t1, -564($fp)
	mul $t0, $t0, $t1
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	lw $t1, -556($fp)
	add $t0, $t0, $t1
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	lw $t1, 0($t0)
	sw $t1, -576($fp)
	li $t0, 0
	sw $t0, -580($fp)
	li $t0, 0
	sw $t0, -584($fp)
	li $t0, 16337
	sw $t0, -588($fp)
	lw $t0, 4($fp)
	sw $t0, -592($fp)
	lw $t1, -588($fp)
	lw $t2, -592($fp)
	blt $t1, $t2, label577
	j label578
label577:
	li $t0, 1
	sw $t0, -584($fp)
label578:
	lw $t0, 16($fp)
	sw $t0, -596($fp)
	lw $t1, -584($fp)
	lw $t2, -596($fp)
	beq $t1, $t2, label575
	j label576
label575:
	li $t0, 1
	sw $t0, -580($fp)
label576:
	li $t0, 0
	sw $t0, -600($fp)
	li $t0, 40585
	sw $t0, -604($fp)
	lw $t0, -232($fp)
	sw $t0, -608($fp)
	lw $t1, -604($fp)
	lw $t2, -608($fp)
	beq $t1, $t2, label581
	j label580
label581:
	lw $t0, -244($fp)
	sw $t0, -612($fp)
	lw $t1, -612($fp)
	li $t2, 0
	bne $t1, $t2, label579
	j label580
label579:
	li $t0, 1
	sw $t0, -600($fp)
label580:
	li $t0, 0
	sw $t0, -616($fp)
	lw $t0, -232($fp)
	sw $t0, -620($fp)
	lw $t0, -208($fp)
	sw $t0, -624($fp)
	lw $t0, -620($fp)
	lw $t1, -624($fp)
	sub $t0, $t0, $t1
	sw $t0, -628($fp)
	lw $t0, -244($fp)
	sw $t0, -632($fp)
	lw $t1, -628($fp)
	lw $t2, -632($fp)
	bge $t1, $t2, label582
	j label583
label582:
	li $t0, 1
	sw $t0, -616($fp)
label583:
	li $t0, 0
	sw $t0, -636($fp)
	lw $t0, -232($fp)
	sw $t0, -640($fp)
	lw $t0, 12($fp)
	sw $t0, -644($fp)
	lw $t0, -640($fp)
	lw $t1, -644($fp)
	sub $t0, $t0, $t1
	sw $t0, -648($fp)
	lw $t0, 16($fp)
	sw $t0, -652($fp)
	lw $t0, -648($fp)
	lw $t1, -652($fp)
	sub $t0, $t0, $t1
	sw $t0, -656($fp)
	addi $sp, $sp, -4
	lw $t0, -656($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -660($fp)
	addi $sp, $sp, 8
	lw $t1, -660($fp)
	li $t2, 0
	bne $t1, $t2, label586
	j label585
label586:
	lw $t0, -232($fp)
	sw $t0, -664($fp)
	lw $t1, -664($fp)
	li $t2, 0
	bne $t1, $t2, label584
	j label585
label584:
	li $t0, 1
	sw $t0, -636($fp)
label585:
	li $t0, 0
	sw $t0, -668($fp)
	li $t0, 0
	sw $t0, -672($fp)
	li $t0, 20664
	sw $t0, -676($fp)
	li $t0, 42767
	sw $t0, -680($fp)
	lw $t1, -676($fp)
	lw $t2, -680($fp)
	ble $t1, $t2, label589
	j label590
label589:
	li $t0, 1
	sw $t0, -672($fp)
label590:
	li $t0, 61402
	sw $t0, -684($fp)
	lw $t1, -672($fp)
	lw $t2, -684($fp)
	blt $t1, $t2, label587
	j label588
label587:
	li $t0, 1
	sw $t0, -668($fp)
label588:
	addi $sp, $sp, -4
	lw $t0, -580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -668($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -688($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -688($fp)
	sub $t0, $t0, $t1
	sw $t0, -692($fp)
	lw $t0, -576($fp)
	lw $t1, -692($fp)
	mul $t0, $t0, $t1
	sw $t0, -696($fp)
	li $t0, 20497
	sw $t0, -700($fp)
	li $t0, 0
	lw $t1, -700($fp)
	sub $t0, $t0, $t1
	sw $t0, -704($fp)
	lw $t1, -696($fp)
	lw $t2, -704($fp)
	ble $t1, $t2, label573
	j label574
label573:
label591:
	lw $t0, -76($fp)
	sw $t0, -708($fp)
	addi $t0, $fp, -56
	sw $t0, -712($fp)
	li $t0, 0
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
	lw $t0, -708($fp)
	lw $t1, -728($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -732($fp)
	addi $t0, $fp, -24
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
	lw $t0, -732($fp)
	lw $t1, -752($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -756($fp)
	lw $t1, -756($fp)
	li $t2, 0
	bne $t1, $t2, label592
	j label593
label592:
	li $t0, 0
	sw $t0, -760($fp)
	lw $t0, -76($fp)
	sw $t0, -764($fp)
	addi $t0, $fp, -24
	sw $t0, -768($fp)
	lw $t0, -76($fp)
	sw $t0, -772($fp)
	li $t0, 4
	lw $t1, -772($fp)
	mul $t0, $t0, $t1
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	lw $t1, -768($fp)
	add $t0, $t0, $t1
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	lw $t1, 0($t0)
	sw $t1, -784($fp)
	lw $t0, -764($fp)
	lw $t1, -784($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -788($fp)
	addi $t0, $fp, -24
	sw $t0, -792($fp)
	li $t0, 0
	sw $t0, -796($fp)
	li $t0, 4025
	sw $t0, -800($fp)
	lw $t1, -800($fp)
	li $t2, 0
	bne $t1, $t2, label598
	j label597
label598:
	lw $t0, 16($fp)
	sw $t0, -804($fp)
	lw $t1, -804($fp)
	li $t2, 0
	bne $t1, $t2, label596
	j label597
label596:
	li $t0, 1
	sw $t0, -796($fp)
label597:
	li $t0, 4
	lw $t1, -796($fp)
	mul $t0, $t0, $t1
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	lw $t1, -792($fp)
	add $t0, $t0, $t1
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	lw $t1, 0($t0)
	sw $t1, -816($fp)
	lw $t1, -788($fp)
	lw $t2, -816($fp)
	blt $t1, $t2, label594
	j label595
label594:
	li $t0, 1
	sw $t0, -760($fp)
label595:
	j label591
label593:
	j label572
label574:
	j label569
label568:
	li $t0, 0
	sw $t0, -820($fp)
	jal f8
	sw $v0, -824($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -828($fp)
	lw $t0, -244($fp)
	sw $t0, -832($fp)
	lw $t1, -832($fp)
	li $t2, 0
	bne $t1, $t2, label603
	j label602
label602:
	li $t0, 1
	sw $t0, -828($fp)
label603:
	li $t0, 0
	lw $t1, -828($fp)
	sub $t0, $t0, $t1
	sw $t0, -836($fp)
	lw $t0, -824($fp)
	lw $t1, -836($fp)
	sub $t0, $t0, $t1
	sw $t0, -840($fp)
	lw $t1, -840($fp)
	li $t2, 0
	bne $t1, $t2, label601
	j label600
label601:
	li $t0, 0
	sw $t0, -844($fp)
	lw $t0, -76($fp)
	sw $t0, -848($fp)
	lw $t1, -848($fp)
	li $t2, 0
	bne $t1, $t2, label604
	j label605
label604:
	li $t0, 1
	sw $t0, -844($fp)
label605:
	li $t0, 0
	lw $t1, -844($fp)
	sub $t0, $t0, $t1
	sw $t0, -852($fp)
	lw $t1, -852($fp)
	li $t2, 0
	bne $t1, $t2, label599
	j label600
label599:
	li $t0, 1
	sw $t0, -820($fp)
label600:
label569:
	j label564
label563:
	addi $t0, $fp, -40
	sw $t0, -856($fp)
	lw $t0, 16($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -864($fp)
	li $t0, 4
	lw $t1, -864($fp)
	mul $t0, $t0, $t1
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	lw $t1, -856($fp)
	add $t0, $t0, $t1
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	lw $t1, 0($t0)
	sw $t1, -876($fp)
	li $t0, 0
	sw $t0, -880($fp)
	lw $t0, -352($fp)
	sw $t0, -884($fp)
	lw $t1, -884($fp)
	li $t2, 0
	bne $t1, $t2, label607
	j label606
label606:
	li $t0, 1
	sw $t0, -880($fp)
label607:
	lw $t0, -876($fp)
	lw $t1, -880($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -888($fp)
	li $t0, 0
	lw $t1, -888($fp)
	sub $t0, $t0, $t1
	sw $t0, -892($fp)
	lw $ra, -4($fp)
	lw $v0, -892($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label564:
	lw $t0, -64($fp)
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -76($fp)
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
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
	lw $t0, -208($fp)
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -220($fp)
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -232($fp)
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -244($fp)
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1020($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
	sw $t0, -1040($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -1060($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -1080($fp)
	li $t0, 3
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
	lw $t0, -352($fp)
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -364($fp)
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1108($fp)
	li $t0, 0
	sw $t0, -1112($fp)
	li $t0, 4
	lw $t1, -1112($fp)
	mul $t0, $t0, $t1
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	lw $t1, -1108($fp)
	add $t0, $t0, $t1
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	lw $t1, 0($t0)
	sw $t1, -1124($fp)
	lw $t0, -1124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1128($fp)
	li $t0, 1
	sw $t0, -1132($fp)
	li $t0, 4
	lw $t1, -1132($fp)
	mul $t0, $t0, $t1
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	lw $t1, -1128($fp)
	add $t0, $t0, $t1
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	lw $t1, 0($t0)
	sw $t1, -1144($fp)
	lw $t0, -1144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1148($fp)
	li $t0, 2
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
	addi $t0, $fp, -56
	sw $t0, -1168($fp)
	li $t0, 3
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
	addi $t0, $fp, -56
	sw $t0, -1188($fp)
	lw $t0, -76($fp)
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
	li $t0, 0
	sw $t0, -1208($fp)
	li $t0, 0
	sw $t0, -1212($fp)
	lw $t0, -76($fp)
	sw $t0, -1216($fp)
	lw $t0, -76($fp)
	sw $t0, -1220($fp)
	lw $t1, -1216($fp)
	lw $t2, -1220($fp)
	blt $t1, $t2, label610
	j label611
label610:
	li $t0, 1
	sw $t0, -1212($fp)
label611:
	li $t0, 29708
	sw $t0, -1224($fp)
	lw $t1, -1212($fp)
	lw $t2, -1224($fp)
	bne $t1, $t2, label608
	j label609
label608:
	li $t0, 1
	sw $t0, -1208($fp)
label609:
	li $t0, 0
	sw $t0, -1228($fp)
	li $t0, 29764
	sw $t0, -1232($fp)
	lw $t1, -1232($fp)
	li $t2, 0
	bne $t1, $t2, label615
	j label614
label615:
	lw $t0, -220($fp)
	sw $t0, -1236($fp)
	lw $t1, -1236($fp)
	li $t2, 0
	bne $t1, $t2, label612
	j label614
label614:
	lw $t0, -364($fp)
	sw $t0, -1240($fp)
	lw $t1, -1240($fp)
	li $t2, 0
	bne $t1, $t2, label612
	j label613
label612:
	li $t0, 1
	sw $t0, -1228($fp)
label613:
	lw $t0, -364($fp)
	sw $t0, -1244($fp)
	li $t0, 0
	lw $t1, -1244($fp)
	sub $t0, $t0, $t1
	sw $t0, -1248($fp)
	li $t0, 47757
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -1256($fp)
	addi $sp, $sp, -4
	lw $t0, -1204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1256($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1260($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -1260($fp)
	sub $t0, $t0, $t1
	sw $t0, -1264($fp)
	lw $ra, -4($fp)
	lw $v0, -1264($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -44
	li $t0, 288
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 0
	sw $t0, -20($fp)
	lw $t0, -12($fp)
	sw $t0, -24($fp)
	li $t0, 14762
	sw $t0, -28($fp)
	lw $t0, -24($fp)
	lw $t1, -28($fp)
	mul $t0, $t0, $t1
	sw $t0, -32($fp)
	lw $t0, -12($fp)
	sw $t0, -36($fp)
	lw $t1, -32($fp)
	lw $t2, -36($fp)
	beq $t1, $t2, label616
	j label617
label616:
	li $t0, 1
	sw $t0, -20($fp)
label617:
	addi $sp, $sp, -4
	lw $t0, -20($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -40($fp)
	addi $sp, $sp, 8
	lw $t0, -12($fp)
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 46349
	sw $t0, -48($fp)
	lw $ra, -4($fp)
	lw $v0, -48($fp)
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
